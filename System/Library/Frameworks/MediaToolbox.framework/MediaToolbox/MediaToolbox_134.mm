void CreatePropertyStore_cold_2(uint64_t a1, const void *a2, _DWORD *a3)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v6, v7, v8);
  *a3 = v5;

  CFRelease(a2);
}

void CreatePropertyStore_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void PerformMultiplePropertyRequest_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void PerformMultiplePropertyRequest_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void PerformDefineMacroProperty_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void PerformDefineMacroProperty_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void CreateValidationStore_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void AccessPropertyInfo_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void AccessValidationInfo_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void AccessValidationInfo_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

uint64_t FigSampleBufferProcessorRestoreBufferedAirPlayStates(uint64_t a1, __int128 *a2, CMTime *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*DerivedStorage)
  {
    return 4294954511;
  }

  if ((a3->flags & 0x1D) != 1)
  {
    return 4294954516;
  }

  v6 = DerivedStorage;
  if (*(a2 + 12))
  {
    v8 = *a2;
    *(DerivedStorage + 60) = *(a2 + 2);
    *(DerivedStorage + 44) = v8;
    FigSimpleMutexLock();
    lhs = *a3;
    v14 = *a2;
    CMTimeSubtract(&v16, &lhs, &v14);
    *(v6 + 192) = v16;
    FigSimpleMutexUnlock();
  }

  else
  {
    v7 = *&a3->value;
    *(DerivedStorage + 60) = a3->epoch;
    *(DerivedStorage + 44) = v7;
  }

  *(v6 + 40) = 1;
  *(v6 + 92) = 0;
  FigSimpleMutexLock();
  v9 = MEMORY[0x1E6960C70];
  *(v6 + 144) = *MEMORY[0x1E6960C70];
  *(v6 + 160) = *(v9 + 16);
  FigSimpleMutexUnlock();
  v10 = *(v6 + 104);
  if (v10)
  {
    CFRelease(v10);
    *(v6 + 104) = 0;
  }

  v11 = *(v6 + 96);
  if (v11)
  {
    CFRelease(v11);
    *(v6 + 96) = 0;
  }

  FigSimpleMutexLock();
  v12 = *(v6 + 112);
  if (v12)
  {
    CFRelease(v12);
    *(v6 + 112) = 0;
  }

  FigSimpleMutexUnlock();
  return 0;
}

void FigSampleBufferProcessorForBufferedAirPlayCreate(const void *a1, const void *a2, const __CFDictionary *a3, void *a4)
{
  value = 0;
  v25 = 0;
  if (a4)
  {
    FigSampleBufferProcessorGetClassID();
    if (!CMDerivedObjectCreate())
    {
      DerivedStorage = CMBaseObjectGetDerivedStorage();
      v10 = dispatch_queue_create("com.apple.coremedia.FigSampleBufferProcessor_BufferedAirPlay.notificationqueue", 0);
      *(DerivedStorage + 336) = v10;
      if (v10)
      {
        v11 = a2 ? CFRetain(a2) : 0;
        *(DerivedStorage + 24) = v11;
        v13 = a1 ? CFRetain(a1) : 0;
        *(DerivedStorage + 32) = v13;
        CMNotificationCenterGetDefaultLocalCenter();
        FigNotificationCenterAddWeakListener();
        CMNotificationCenterGetDefaultLocalCenter();
        FigNotificationCenterAddWeakListener();
        *(DerivedStorage + 40) = 1;
        v14 = MEMORY[0x1E6960CC0];
        v15 = *MEMORY[0x1E6960CC0];
        *(DerivedStorage + 44) = *MEMORY[0x1E6960CC0];
        v16 = *(v14 + 16);
        *(DerivedStorage + 60) = v16;
        *(DerivedStorage + 92) = 0;
        *(DerivedStorage + 68) = v15;
        *(DerivedStorage + 84) = v16;
        v23 = v15;
        *(DerivedStorage + 168) = v15;
        *(DerivedStorage + 184) = v16;
        v17 = FigSimpleMutexCreate();
        *(DerivedStorage + 120) = v17;
        if (v17)
        {
          v18 = FigSimpleMutexCreate();
          *(DerivedStorage + 136) = v18;
          if (v18)
          {
            v19 = MEMORY[0x1E6960C70];
            v20 = *MEMORY[0x1E6960C70];
            *(DerivedStorage + 216) = *MEMORY[0x1E6960C70];
            v21 = *(v19 + 16);
            *(DerivedStorage + 232) = v21;
            *(DerivedStorage + 240) = v20;
            *(DerivedStorage + 256) = v21;
            *(DerivedStorage + 264) = v20;
            *(DerivedStorage + 280) = v21;
            *(DerivedStorage + 288) = v20;
            *(DerivedStorage + 304) = v21;
            *(DerivedStorage + 312) = v23;
            *(DerivedStorage + 328) = v16;
            *(DerivedStorage + 208) = v16;
            *(DerivedStorage + 192) = v23;
            *(DerivedStorage + 344) = 0;
            if (a3 && CFDictionaryGetValueIfPresent(a3, @"LoggingID", &value))
            {
              v22 = value;
              if (value)
              {
                v22 = CFRetain(value);
              }

              *(DerivedStorage + 344) = v22;
            }

            *a4 = v25;
          }
        }
      }
    }
  }

  else
  {
    emitter = fig_log_get_emitter();

    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 4294954516, "<<<< fbarprocessor >>>>", 1040, v4);
  }
}

double fbarpCopyProperty(uint64_t a1, const void *a2, const __CFAllocator *a3, CFDictionaryRef *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v9 = *MEMORY[0x1E6960CC0];
  v18 = **&MEMORY[0x1E6960CC0];
  if (a2 && a4)
  {
    if (!*DerivedStorage)
    {
      if (CFEqual(a2, @"CurrentOutputTime"))
      {
        lhs = *(DerivedStorage + 44);
        v16 = *(DerivedStorage + 192);
        CMTimeAdd(&v18, &lhs, &v16);
        lhs = v18;
        v10 = CMTimeCopyAsDictionary(&lhs, a3);
        goto LABEL_6;
      }

      if (CFEqual(a2, @"CumulativeEndTime"))
      {
        FigSimpleMutexLock();
        *&lhs.value = *(DerivedStorage + 192);
        v12 = *(DerivedStorage + 208);
      }

      else
      {
        if (CFEqual(a2, @"TransitionIDContext"))
        {
          v13 = *(DerivedStorage + 104);
          if (!v13)
          {
            v11 = 0;
            goto LABEL_7;
          }

          v10 = CFRetain(v13);
LABEL_6:
          v11 = v10;
LABEL_7:
          *a4 = v11;
          return *&v9;
        }

        if (CFEqual(a2, @"Last\x10InputSbufPresentationEndTime"))
        {
          FigSimpleMutexLock();
          *&lhs.value = *(DerivedStorage + 144);
          v12 = *(DerivedStorage + 160);
        }

        else
        {
          if (!CFEqual(a2, @"ProcessedSingleSessionAudioDuration"))
          {
            return *&v9;
          }

          FigSimpleMutexLock();
          *&lhs.value = *(DerivedStorage + 168);
          v12 = *(DerivedStorage + 184);
        }
      }

      lhs.epoch = v12;
      *a4 = CMTimeCopyAsDictionary(&lhs, a3);
      FigSimpleMutexUnlock();
      return *&v9;
    }

    emitter = fig_log_get_emitter();

    *&v9 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 4294954511, "<<<< fbarprocessor >>>>", 906, v4);
  }

  return *&v9;
}

void FigSampleBufferProcessorForBufferedAirPlayCopyPerformanceDictionary_cold_1(uint64_t a1, void *a2, const void *a3, _DWORD *a4)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v7, v8, v9);
  *a4 = v6;
  FigSimpleMutexUnlock();
  CFRelease(a3);
}

void FigSampleBufferProcessorForBufferedAirPlayCopyPerformanceDictionary_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void fbarp_processSampleBuffer_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void fbarp_processSampleBuffer_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void fbarp_processSampleBuffer_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void fbarp_processSampleBuffer_cold_4(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

uint64_t FigCaptionRendererActionCreate(void *a1)
{
  *a1 = 0;
  MEMORY[0x19A8D3660](&FigCaptionRendererActionGetClassID_sRegisterFigCaptionRendererActionBaseTypeOnce, RegisterFigCaptionRendererActionBaseType);
  v2 = CMDerivedObjectCreate();
  if (!v2)
  {
    *CMBaseObjectGetDerivedStorage() = 0;
    *a1 = 0;
  }

  return v2;
}

uint64_t FigCaptionRendererMoveToActionCreate(void *a1)
{
  *a1 = 0;
  MEMORY[0x19A8D3660](&FigCaptionRendererMoveToActionGetClassID_sRegisterFigCaptionRendererMoveToActionBaseTypeOnce, RegisterFigCaptionRendererMoveToActionBaseType);
  v2 = CMDerivedObjectCreate();
  if (v2)
  {
    return v2;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  *(DerivedStorage + 8) = *MEMORY[0x1E695EFF8];
  v4 = FigCaptionRendererActionCreate(DerivedStorage);
  if (v4)
  {
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v6, 0, v7);
  }

  else
  {
    *a1 = 0;
  }

  return v4;
}

double FigCaptionClientCreate(uint64_t a1, uint64_t *a2)
{
  if (a2)
  {
    MEMORY[0x19A8D3660](&sRegisterFigCaptionClientTypeOnce, RegisterFigCaptionClientType);
    Instance = _CFRuntimeCreateInstance();
    if (Instance)
    {
      v4 = Instance;
      if (!FigCaptionRendererSessionCreate(0, 0, 0, (Instance + 16)))
      {
        *a2 = v4;
      }
    }

    else
    {
      return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v6, v7, v8);
    }
  }

  else
  {

    return FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
  }

  return result;
}

uint64_t FigCaptionClientSetCGContextDevice(uint64_t result)
{
  if (result)
  {
    return FigCaptionRendererSessionSetCGContextDevice(*(result + 16));
  }

  return result;
}

uint64_t FigCaptionClientSetMasterClock(uint64_t result)
{
  if (result)
  {
    v1 = *(result + 16);
    CMClockGetHostTimeClock();

    return FigCaptionRendererSessionSetMasterClock(v1);
  }

  return result;
}

uint64_t FigCaptionClientSynchronizeDefaults(uint64_t result)
{
  if (result)
  {
    return FigCaptionRendererSessionSynchronizeDefaults(*(result + 16));
  }

  return result;
}

uint64_t FigCaptionClientSetBounds(uint64_t result)
{
  if (result)
  {
    return FigCaptionRendererSessionSetBounds(*(result + 16));
  }

  return result;
}

uint64_t FigCaptionClientSetCaptionCacheRange(uint64_t result)
{
  if (result)
  {
    return FigCaptionRendererSessionSetCaptionCacheRange(*(result + 16));
  }

  return result;
}

uint64_t FigCaptionClientStart(uint64_t result)
{
  if (result)
  {
    return FigCaptionRendererSessionStart(*(result + 16));
  }

  return result;
}

uint64_t FigCaptionClientStop(uint64_t result)
{
  if (result)
  {
    return FigCaptionRendererSessionStop(*(result + 16));
  }

  return result;
}

double FigCaptionClientSetTime(uint64_t a1)
{
  if (a1)
  {
    return FigCaptionRendererSessionSetTime(*(a1 + 16));
  }

  return result;
}

uint64_t FigCaptionClientUpdateCGContext(uint64_t result, uint64_t a2)
{
  if (result)
  {
    return FigCaptionRendererSessionUpdateCGContext(*(result + 16), a2);
  }

  return result;
}

uint64_t FigCaptionClientSetCaptionArray(uint64_t result)
{
  if (result)
  {
    return FigCaptionRendererSessionSetCaptionArray(*(result + 16));
  }

  return result;
}

uint64_t FigCaptionClientSetDefaultTextStyle(uint64_t a1, const void *a2)
{
  if (a1)
  {
    FigCaptionRendererSessionSetDefaultTextStyle(*(a1 + 16), a2);
  }

  return 0;
}

void fcc_Finalize(uint64_t a1)
{
  if (a1)
  {
    FigCaptionRendererSessionStop(*(a1 + 16));
  }

  v2 = *(a1 + 16);
  if (v2)
  {
    CFRelease(v2);
    *(a1 + 16) = 0;
  }
}

uint64_t FigAssetCreateWithBlockBuffer(const __CFAllocator *a1, CMBlockBufferRef theBuffer, int a3, const __CFString *a4, uint64_t a5, const __CFDictionary *a6, CFTypeRef *a7)
{
  cf = 0;
  v34 = 0;
  if (!theBuffer || a3 == -1)
  {
    goto LABEL_31;
  }

  v8 = a4;
  if (!a4)
  {
    goto LABEL_45;
  }

  if (!a7 || !CMBlockBufferGetDataLength(theBuffer))
  {
    goto LABEL_31;
  }

  v13 = CMByteStreamCreateForBlockBuffer();
  if (v13)
  {
LABEL_32:
    v27 = v13;
    v8 = 0;
LABEL_33:
    v22 = 0;
    goto LABEL_34;
  }

  if (a3 != 2)
  {
    if (a3 != 1)
    {
      if (!a3)
      {
        v14 = CFGetTypeID(v8);
        if (v14 == CFStringGetTypeID())
        {
          CMBaseObject = CMByteStreamGetCMBaseObject();
          v16 = *(*(CMBaseObjectGetVTable() + 8) + 56);
          if (v16)
          {
            v17 = MEMORY[0x1E6960E38];
            goto LABEL_21;
          }

          goto LABEL_28;
        }
      }

LABEL_31:
      fig_log_get_emitter();
      OUTLINED_FUNCTION_20_0();
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
      goto LABEL_32;
    }

    v18 = CFGetTypeID(v8);
    if (v18 != CFStringGetTypeID())
    {
      goto LABEL_31;
    }

    v8 = CFURLCreateWithFileSystemPath(a1, v8, kCFURLPOSIXPathStyle, 0);
    if (v8)
    {
      v19 = CMByteStreamGetCMBaseObject();
      v20 = *(*(CMBaseObjectGetVTable() + 8) + 56);
      if (v20)
      {
        v21 = v20(v19, *MEMORY[0x1E695FFA0], v8);
        v22 = 0;
        if (!v21)
        {
          goto LABEL_26;
        }

LABEL_54:
        v27 = v21;
        goto LABEL_34;
      }

      goto LABEL_29;
    }

LABEL_45:
    fig_log_get_emitter();
    OUTLINED_FUNCTION_20_0();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
    v27 = v29;
    goto LABEL_33;
  }

  v23 = CFGetTypeID(v8);
  if (v23 != CFStringGetTypeID())
  {
    goto LABEL_31;
  }

  CMBaseObject = CMByteStreamGetCMBaseObject();
  v16 = *(*(CMBaseObjectGetVTable() + 8) + 56);
  if (!v16)
  {
LABEL_28:
    v8 = 0;
LABEL_29:
    v22 = 0;
    goto LABEL_30;
  }

  v17 = MEMORY[0x1E6960DE0];
LABEL_21:
  v13 = v16(CMBaseObject, *v17, v8);
  if (v13)
  {
    goto LABEL_32;
  }

  v24 = FigAtomicIncrement32();
  v22 = CFStringCreateWithFormat(a1, 0, @"DataAsset_%d", v24);
  if (!v22)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_20_0();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v31, v32, 0);
    v27 = v30;
    v8 = 0;
    goto LABEL_34;
  }

  v8 = CFURLCreateWithFileSystemPath(a1, v22, kCFURLPOSIXPathStyle, 0);
  if (!v8)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_20_0();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v31, v32, 0);
    goto LABEL_54;
  }

  v25 = CMByteStreamGetCMBaseObject();
  v26 = *(*(CMBaseObjectGetVTable() + 8) + 56);
  if (!v26)
  {
LABEL_30:
    v27 = 4294954514;
    goto LABEL_34;
  }

  v21 = v26(v25, *MEMORY[0x1E695FFA0], v8);
  if (v21)
  {
    goto LABEL_54;
  }

LABEL_26:
  v27 = FigAssetCreateWithByteStream(a1, 0, a5, a6, &v34);
  if (!v27)
  {
    *a7 = v34;
    v34 = 0;
  }

LABEL_34:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v34)
  {
    CFRelease(v34);
  }

  if (v8)
  {
    CFRelease(v8);
  }

  if (v22)
  {
    CFRelease(v22);
  }

  return v27;
}

void URLAssetTrackLoadValueAsyncForProperty(uint64_t a1, uint64_t a2, BOOL *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v9[0] = 0;
  if (a2)
  {
    if (!RequestPropertyAsync(*(DerivedStorage + 8), a2, v9))
    {
      v6 = (v9[0] & 0xFFFFFFFE) == 2;
      if (!a3)
      {
        return;
      }

      goto LABEL_4;
    }
  }

  else
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_20_0();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v7, v8, v9[1]);
  }

  v6 = 0;
  if (!a3)
  {
    return;
  }

LABEL_4:
  *a3 = v6;
}

void URLAssetCopyPropertyAndBlockageWarning(uint64_t a1, const void *a2, uint64_t a3, void *a4, CFStringRef *a5)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!a2)
  {
    emitter = fig_log_get_emitter();
    v21 = v5;
    v22 = 1877;
LABEL_38:

    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 4294955126, "<<< URLAsset >>>", v22, v21);
    return;
  }

  if (!a4)
  {
    emitter = fig_log_get_emitter();
    v21 = v5;
    v22 = 1878;
    goto LABEL_38;
  }

  v10 = DerivedStorage;
  *a4 = 0;
  if (CFEqual(a2, @"assetProperty_CreationURL"))
  {
    if (*(*v10 + 64) != 1431456810)
    {
      return;
    }

    v11 = *(*v10 + 72);
    if (!v11)
    {
      goto LABEL_31;
    }

    goto LABEL_19;
  }

  if (CFEqual(a2, @"assetProperty_CreationFlags"))
  {
    v12 = *MEMORY[0x1E695E480];
    v13 = (*v10 + 80);
LABEL_9:
    v14 = CFNumberCreate(v12, kCFNumberSInt64Type, v13);
LABEL_20:
    v18 = v14;
LABEL_32:
    *a4 = v18;
    return;
  }

  if (CFEqual(a2, @"assetProperty_CreationOptionsDictionary"))
  {
    v11 = *(*v10 + 88);
    if (!v11)
    {
      goto LABEL_31;
    }

    goto LABEL_19;
  }

  if (CFEqual(a2, @"assetProperty_MakeReadAheadAssertionWhenCreatingByteStream"))
  {
    v15 = MEMORY[0x1E695E4D0];
    v16 = *(*v10 + 216);
    goto LABEL_15;
  }

  if (CFEqual(a2, @"assetProperty_OriginalReadAheadAssertion"))
  {
    v19 = *v10;

    CopyOutReadAheadAssertion(v19, a4);
  }

  else
  {
    if (CFEqual(a2, @"assetProperty_DownloadToken"))
    {
      InternalURLAssetEnsureDownloadTokenEstablished(*v10);
      v13 = (*v10 + 24);
      if (!*v13)
      {
        return;
      }

      v12 = *MEMORY[0x1E695E480];
      goto LABEL_9;
    }

    if (CFEqual(a2, @"assetProperty_InstanceUUID"))
    {
      v11 = *(*v10 + 336);
      if (!v11)
      {
LABEL_31:
        v18 = 0;
        goto LABEL_32;
      }

LABEL_19:
      v14 = CFRetain(v11);
      goto LABEL_20;
    }

    if (CFEqual(a2, @"assetProperty_ABRHistoryRecordingEnabled"))
    {
      v15 = MEMORY[0x1E695E4D0];
      v16 = *(*v10 + 469);
LABEL_15:
      if (v16)
      {
        v17 = v15;
      }

      else
      {
        v17 = MEMORY[0x1E695E4C0];
      }

      v11 = *v17;
      if (!*v17)
      {
        goto LABEL_31;
      }

      goto LABEL_19;
    }

    if (CFEqual(a2, @"assetProperty_DefaultContentKeySession"))
    {
      if (!InternalURLAssetEnsureContentKeySessionCreated(*v10))
      {
        v11 = *(*v10 + 520);
        goto LABEL_19;
      }
    }

    else if (CFEqual(a2, @"assetProperty_ContentKeyBoss"))
    {
      if (!InternalURLAssetEnsureContentKeyBossIsCreatedAndUpToDate(*v10))
      {
        v11 = *(*v10 + 528);
        goto LABEL_19;
      }
    }

    else if (CFEqual(a2, @"assetProperty_CustomURLLoader"))
    {
      if (!InternalURLAssetEnsureCustomURLLoaderCreated(*v10))
      {
        v11 = *(*v10 + 496);
        goto LABEL_19;
      }
    }

    else if (CFEqual(a2, @"assetProperty_DiskBackedStreamingCache"))
    {
      if (!InternalURLAssetEnsurePersistentStreamingCacheCreated(*v10))
      {
        v11 = *(*v10 + 408);
        goto LABEL_19;
      }
    }

    else
    {
      if (CFEqual(a2, @"LoggingIdentifier"))
      {
        v14 = CFStringCreateWithCString(*MEMORY[0x1E695E480], (*v10 + 592), 0x600u);
        goto LABEL_20;
      }

      v23 = v10[1];
      if (*(*v10 + 616))
      {
        v24 = a5;
      }

      else
      {
        v24 = 0;
      }

      ObtainPropertySync(v23, a2, a4, v24);
    }
  }
}

BOOL URLAssetCreateAssetTrack_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v4, v5, vars0);
  *a1 = v2;
  return v2 == 0;
}

void URLAssetCreateAssetTrack_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void URLAssetCreateAssetTrack_cold_4(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void URLAssetCreateAssetTrack_cold_5(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FigAssetCreateWithURL_cold_2()
{
  OUTLINED_FUNCTION_180_1();
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, v3, v4);
  *v0 = v1;
}

void CreateInternalURLAsset_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FigAssetCreateWithByteStream_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FigAssetCreateWithByteStream_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

BOOL FigAssetCreateWithByteStream_cold_4()
{
  OUTLINED_FUNCTION_180_1();
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v4, v5, v6);
  *v0 = v2;
  return v1 == 0;
}

void FigAssetCreateWithMovieProxyData_cold_2()
{
  OUTLINED_FUNCTION_180_1();
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, v5);
  *v0 = v2;
  CFRelease(v1);
}

void FigAssetCreateWithMovieProxyData_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FigAssetCreateWithMovieProxyData_cold_4(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FigAssetCreateWithMovieProxyData_cold_5(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FigAssetCreateWithMovieProxyData_cold_6(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FigAssetCreateWithMovieProxyData_cold_7(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FigAssetCreatePListFromOptionsDict_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FigAssetCreatePListFromOptionsDict_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FigAssetCreateOptionsDictFromPList_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FigAssetCreateOptionsDictFromPList_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FigAssetCreateOptionsDictFromPList_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void URLAssetTrackCopyPropertyAndBlockageWarning_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void URLAssetTrackCopyPropertyAndBlockageWarning_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void URLAssetTrackGetStatusOfValueForProperty_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void URLAssetTrackGetStatusOfValueForProperty_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void URLAssetTrackLoadValuesAsyncForProperties_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void URLAssetTrackLoadValuesAsyncForProperties_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void URLAssetTrackValidateAsync_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void URLAssetTrackValidateAsync_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void URLAssetTrackValidateAsync_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void URLAssetSetProperty_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void URLAssetSetProperty_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void URLAssetSetProperty_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void URLAssetGetStatusOfValueForProperty_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void URLAssetGetStatusOfValueForProperty_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void URLAssetLoadValuesAsyncForProperties_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void URLAssetLoadValuesAsyncForProperties_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void URLAssetLoadValueAsyncForProperty_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void URLAssetValidateAsync_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void URLAssetValidateAsync_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void URLAssetValidateAsync_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void URLAssetCopyTrackByID_cold_1(uint64_t a1, _DWORD *a2)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v4, v5, vars0);
  *a2 = v3;
}

void URLAssetCopyTrackByID_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void URLAssetCopyTrackByID_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void URLAssetCopyTracksWithMediaType_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void URLAssetCopyTracksWithMediaType_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void URLAssetCopyTracksWithMediaType_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void URLAssetCopyChapterData_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void URLAssetCopyChapterData_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void URLAssetCopyChapterData_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void URLAssetFetchChapterDataAsync_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void URLAssetFetchChapterDataAsync_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void URLAssetLoadValuesAsyncForTrackProperties_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void URLAssetLoadValuesAsyncForTrackProperties_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void URLAssetLoadValuesAsyncForTrackProperties_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void URLAssetLoadValuesAsyncForTrackProperties_cold_4(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void URLAssetDefineMacroProperty_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void URLAssetDefineMacroProperty_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void URLAssetDefineMacroProperty_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void URLAssetDefineTrackMacroProperty_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void URLAssetDefineTrackMacroProperty_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void URLAssetDefineTrackMacroProperty_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void URLAssetDefineCrossTrackMacroProperty_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void URLAssetDefineCrossTrackMacroProperty_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void URLAssetDefineCrossTrackMacroProperty_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

uint64_t DefineCrossTrackMacroProperty(const __CFDictionary **a1, uint64_t a2, const void *a3, const void *a4)
{
  FigSimpleMutexLock();
  Mutable = a1[5];
  v9 = MEMORY[0x1E695E480];
  if (!Mutable && (Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]), (a1[5] = Mutable) == 0) || CFDictionaryContainsKey(Mutable, a3) || (v10 = a1[4]) != 0 && CFDictionaryContainsKey(v10, a3))
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_2_10();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
    goto LABEL_16;
  }

  v11 = DefineTrackMacroProperty(a1, a3, a4);
  if (v11)
  {
LABEL_16:
    v15 = v11;
    goto LABEL_14;
  }

  v12 = *v9;
  v13 = CFSetCreateMutable(*v9, 0, MEMORY[0x1E695E9F8]);
  CFDictionarySetValue(a1[5], a3, v13);
  v14 = CFArrayCreate(v12, 0, 0, MEMORY[0x1E695E9C0]);
  v15 = DefineMacroProperty(a2, a3, v14);
  if (!v15)
  {
    v16 = a1[6];
    if (v16)
    {
      ConnectCrossTrackMacroProperties(a1, v16);
    }
  }

  if (v13)
  {
    CFRelease(v13);
  }

  if (v14)
  {
    CFRelease(v14);
  }

LABEL_14:
  FigSimpleMutexUnlock();
  return v15;
}

void CreateTrackMacroPropertyState_cold_2(uint64_t a1, const void *a2, _DWORD *a3)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v6, v7, v8);
  *a3 = v5;

  CFRelease(a2);
}

void CreateTrackMacroPropertyState_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void DefineTrackMacroProperty_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void DefineTrackMacroProperty_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

CFStringRef figStorageManagementCreateURLString(const __CFURL *a1)
{
  if (!a1)
  {
    return 0;
  }

  v1 = CFURLCopyAbsoluteURL(a1);
  if (!v1)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_0_4();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v5, v6, v7);
    return 0;
  }

  v2 = v1;
  v3 = CFURLCopyFileSystemPath(v1, kCFURLPOSIXPathStyle);
  if (!v3)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_0_4();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v5, v6, v7);
  }

  CFRelease(v2);
  return v3;
}

CFDataRef MTCopyImageDataForAssetAtURL(const __CFURL *a1)
{
  v8 = 0;
  v9 = 0;
  ExtendedAttributeData = figGetExtendedAttributeData(a1, "com.apple.coremedia.asset.image", &v9, &v8);
  v2 = v9;
  if (ExtendedAttributeData)
  {
    v6 = 0;
  }

  else
  {
    v3 = *MEMORY[0x1E695E480];
    v4 = v8;
    GlobalCFAllocatorFigMalloc = FigGetGlobalCFAllocatorFigMalloc();
    v6 = CFDataCreateWithBytesNoCopy(v3, v2, v4, GlobalCFAllocatorFigMalloc);
    if (v6)
    {
      v2 = 0;
      v9 = 0;
    }

    else
    {
      v2 = v9;
    }
  }

  free(v2);
  return v6;
}

CFStringRef MTCopyNameForAssetAtURL(const __CFURL *a1)
{
  v8 = 0;
  v9 = 0;
  ExtendedAttributeData = figGetExtendedAttributeData(a1, "com.apple.coremedia.asset.name", &v9, &v8);
  v2 = v9;
  if (ExtendedAttributeData)
  {
    v6 = 0;
  }

  else
  {
    v3 = *MEMORY[0x1E695E480];
    v4 = v8;
    GlobalCFAllocatorFigMalloc = FigGetGlobalCFAllocatorFigMalloc();
    v6 = CFStringCreateWithBytesNoCopy(v3, v2, v4, 0x8000100u, 0, GlobalCFAllocatorFigMalloc);
    if (v6)
    {
      v2 = 0;
      v9 = 0;
    }

    else
    {
      v2 = v9;
    }
  }

  free(v2);
  return v6;
}

void *__figStorageManagerEnsureCacheDeleteIsLoaded_block_invoke()
{
  result = dlopen("/System/Library/PrivateFrameworks/CacheDelete.framework/CacheDelete", 1);
  if (result)
  {
    result = dlsym(result, "OBJC_CLASS_$_CacheManagementAsset");
    _MergedGlobals_117 = result;
  }

  return result;
}

void FigSetImageDataForAssetAtURL_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FigSetImageDataForAssetAtURL_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void figSetExtendedAttributeData_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void figSetExtendedAttributeData_cold_2(const void *a1, _DWORD *a2)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v5, v6, v7);
  *a2 = v4;

  CFRelease(a1);
}

void figSetExtendedAttributeData_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void figSetExtendedAttributeData_cold_4(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void figSetExtendedAttributeData_cold_5(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void figSetExtendedAttributeData_cold_6(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void figSetExtendedAttributeData_cold_7(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FigSetNameForAssetAtURL_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FigSetNameForAssetAtURL_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FigSetNameForAssetAtURL_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void figGetExtendedAttributeData_cold_1(const void *a1, _DWORD *a2)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v5, v6, v7);
  *a2 = v4;

  CFRelease(a1);
}

void figGetExtendedAttributeData_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void figGetExtendedAttributeData_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void figGetExtendedAttributeData_cold_4(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void figGetExtendedAttributeData_cold_5(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void figGetExtendedAttributeData_cold_6(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void URLAssetReadErrorCallback(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const __CFDictionary *a5)
{
  number = 0;
  valuePtr = 0;
  values = 0;
  if (!*(a2 + 112) && *(a2 + 160) == a4)
  {
    if (a5)
    {
      CFDictionaryGetTypeID();
      if (v5 == OUTLINED_FUNCTION_68_6())
      {
        Value = CFDictionaryGetValue(a5, @"CRABS_ReadCFError");
        values = Value;
        v9 = CFDictionaryGetValue(a5, @"CRABS_ReadErrorCode");
        number = v9;
        if (Value)
        {
          TypeID = CFErrorGetTypeID();
          if (TypeID == CFGetTypeID(Value))
          {
            v11 = CFDictionaryCreate(*MEMORY[0x1E695E480], kFigAssetPayloadKey_CFError, &values, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
            Code = CFErrorGetCode(values);
            valuePtr = Code;
            goto LABEL_12;
          }
        }

        if (v9)
        {
          CFNumberGetTypeID();
          if (Value == OUTLINED_FUNCTION_68_6())
          {
            v11 = CFDictionaryCreate(*MEMORY[0x1E695E480], kFigAssetPayloadKey_Result, &number, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
            CFNumberGetValue(number, kCFNumberIntType, &valuePtr);
            Code = valuePtr;
          }

          else
          {
            Code = 0;
            v11 = 0;
          }

          goto LABEL_12;
        }
      }
    }

    Code = 0;
    v11 = 0;
LABEL_12:
    ReviseDownloadToDestinationResultProperty(a2, Code);
    CFRetain(a2);
    CMNotificationCenterGetDefaultLocalCenter();
    OUTLINED_FUNCTION_0_176();
    FigDeferNotificationToDispatchQueue();
    if (v11)
    {
      CFRelease(v11);
    }
  }
}

void URLAssetDoneBufferingCallback(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = 0;
  cf = 0;
  if (!*(a2 + 112) && *(a2 + 160) == a4)
  {
    CMBaseObject = CMByteStreamGetCMBaseObject();
    v6 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v6)
    {
      if (!v6(CMBaseObject, *MEMORY[0x1E695FF78], 0, &v9))
      {
        CMByteStreamGetCMBaseObject();
        if (*(*(CMBaseObjectGetVTable() + 8) + 48))
        {
          v7 = OUTLINED_FUNCTION_26_23();
          if (!v8(v7) && !*(a2 + 194) && CFEqual(cf, v9))
          {
            ReviseDownloadToDestinationResultProperty(a2, 0);
            CFRetain(a2);
            CMNotificationCenterGetDefaultLocalCenter();
            OUTLINED_FUNCTION_0_176();
            FigDeferNotificationToDispatchQueue();
          }
        }
      }
    }
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (v9)
  {
    CFRelease(v9);
  }
}

uint64_t EnsureStreamingCache(uint64_t a1, int a2)
{
  cf = 0;
  v26 = 0;
  cf2 = 0;
  HIBYTE(v23) = 0;
  if (*(a1 + 408))
  {
    Mutable = 0;
    v17 = 0;
LABEL_36:
    v19 = 0;
    goto LABEL_40;
  }

  v4 = *MEMORY[0x1E695E480];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (!Mutable)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_3_5();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
    goto LABEL_53;
  }

  if (!*(a1 + 88))
  {
    v11 = 0;
    v10 = 0;
    goto LABEL_24;
  }

  v6 = FigAssetDownloadCoordinatorCopyDestinationURLForDownloadToken(*(a1 + 24), &cf2);
  if (v6)
  {
LABEL_53:
    v19 = v6;
    v17 = 0;
    goto LABEL_40;
  }

  Value = CFDictionaryGetValue(*(a1 + 88), @"assetOption_DownloadDestinationURL");
  v8 = Value;
  v9 = cf2;
  if (!Value || !cf2)
  {
    goto LABEL_9;
  }

  if (!CFEqual(Value, cf2))
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_3_5();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
    goto LABEL_53;
  }

  v9 = cf2;
LABEL_9:
  v10 = 0;
  v11 = 0;
  if (v9)
  {
    v8 = v9;
  }

  if (a2 && v8)
  {
    FigAssetDownloadCoordinatorRequestImmediateAccessToURL(v8, &v23 + 7, (a1 + 40));
    v11 = HIBYTE(v23) != 0;
    if (HIBYTE(v23))
    {
      v10 = v8;
    }

    else
    {
      v10 = 0;
    }
  }

  URLValue = FigCFDictionaryGetURLValue();
  BooleanIfPresent = FigCFDictionaryGetBooleanIfPresent();
  if (v26 && URLValue)
  {
    OUTLINED_FUNCTION_43_19(BooleanIfPresent, @"FSC_DiskCacheRepositoryURL");
    v14 = CFDictionaryGetValue(*(a1 + 88), @"assetOption_NetworkCacheUsePathAsKey");
    v15 = *MEMORY[0x1E695E4D0];
    if (v14 == *MEMORY[0x1E695E4D0])
    {
      OUTLINED_FUNCTION_43_19(v14, @"FSC_UseURLPathAsCacheKey");
    }

    v16 = CFDictionaryGetValue(*(a1 + 88), @"assetOption_NetworkCacheUseURLWithoutQueryStringAsKey");
    if (v16 == v15)
    {
      OUTLINED_FUNCTION_43_19(v16, @"FSC_UseURLWithoutQueryStringAsCacheKey");
    }

    v11 = 1;
  }

LABEL_24:
  if (FigCFURLIsLocalResource() && !v10)
  {
    v10 = *(a1 + 176);
    v11 = 1;
  }

  if (v10)
  {
    CFDictionarySetValue(Mutable, @"FSC_DownloadDestinationURL", v10);
  }

  if (v11)
  {
    CFDictionarySetValue(Mutable, @"FSC_Backing", @"FSC_DiskBacking");
  }

  v17 = CFURLCopyAbsoluteURL(*(a1 + 440));
  if (v17)
  {
    if (CFDictionaryGetCount(Mutable))
    {
      v18 = 0;
    }

    else
    {
      CFDictionarySetValue(Mutable, @"FSC_Backing", @"FSC_MemoryBacking");
      v18 = 1;
    }

    if (FigStreamingCacheCreate(v4, v17, Mutable, &cf))
    {
      goto LABEL_36;
    }

    v20 = cf;
    if (cf)
    {
      v20 = CFRetain(cf);
    }

    v19 = 0;
    *(a1 + 408) = v20;
    *(a1 + 416) = v18;
  }

  else
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_3_5();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v23, cf2, v25);
    v19 = v22;
  }

LABEL_40:
  if (cf2)
  {
    CFRelease(cf2);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (v17)
  {
    CFRelease(v17);
  }

  return v19;
}

void PerformTransferBytePumpAsync(void *a1)
{
  v3 = *(a1 + 2);
  cf = 0;
  if (*(v3 + 112))
  {
    *a1 = -12785;
    goto LABEL_20;
  }

  OUTLINED_FUNCTION_104_0();
  v4 = EnsureBytePump();
  *a1 = v4;
  v5 = MEMORY[0x1E695E480];
  if (v4)
  {
    goto LABEL_14;
  }

  OUTLINED_FUNCTION_33_26();
  if (v6)
  {
    v63 = 0;
    v29 = OUTLINED_FUNCTION_104_0();
    Options = CreateBytePumpCreateOptions(v29, v30, 0, v31);
    *a1 = Options;
    if (!Options)
    {
      v40 = OUTLINED_FUNCTION_30_26(Options, v33, v34, v35, v36, v37, v38, v39);
      *a1 = v40;
      if (!v40)
      {
        FigBytePumpCreateForICY(v1, *(v3 + 176), v63, cf, 0, 0, 0, a1 + 4);
        *a1 = v41;
        if (v63)
        {
          CFRelease(v63);
        }
      }
    }
  }

  else if (*(v3 + 376))
  {
    v63 = 0;
    v42 = OUTLINED_FUNCTION_104_0();
    v45 = CreateBytePumpCreateOptions(v42, v43, 0, v44);
    *a1 = v45;
    if (!v45)
    {
      v53 = OUTLINED_FUNCTION_30_26(v45, v46, v47, v48, v49, v50, v51, v52);
      *a1 = v53;
      if (!v53)
      {
        v54 = OUTLINED_FUNCTION_104_0();
        CreateSegmentBytePump(v54, v55, v56, v57, v58);
        *a1 = v59;
        if (v63)
        {
          CFRelease(v63);
        }

        if (*(a1 + 4))
        {
          FigBytePumpGetFigBaseObject();
          if (*(*(CMBaseObjectGetVTable() + 8) + 48))
          {
            v60 = OUTLINED_FUNCTION_188();
            v61(v60);
          }
        }
      }
    }
  }

  else
  {
    v7 = *(v3 + 384);
    if (v7)
    {
      v7 = CFRetain(v7);
    }

    *(a1 + 4) = v7;
  }

  FigSimpleMutexLock();
  if (*(a1 + 4))
  {
    if (*(v3 + 408))
    {
      if (*(v3 + 416))
      {
        FigBytePumpGetFigBaseObject();
        if (*(*(CMBaseObjectGetVTable() + 8) + 56))
        {
          v8 = OUTLINED_FUNCTION_188();
          v9(v8);
        }
      }
    }
  }

  FigSimpleMutexUnlock();
  if (*a1)
  {
LABEL_14:
    v10 = *(v3 + 400);
    if (v10)
    {
      v10 = CFRetain(v10);
    }

    *(a1 + 1) = v10;
  }

  if (!*(v3 + 376))
  {
    v63 = 0;
    if (*(v3 + 384))
    {
      FigBytePumpGetFigBaseObject();
      v16 = v15;
      v17 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      if (v17)
      {
        v17(v16, 0x1F0B1F518, *v5, &v63);
      }

      if (FigIsItOKToLogURLs())
      {
        v18 = (*(v3 + 81) >> 1) & 1;
      }

      else
      {
        LOBYTE(v18) = 0;
      }

      v19 = (v3 + 424);
      v62 = v18;
      OUTLINED_FUNCTION_16_46();
      if (!FigReportingAgentCreate(v20, v21, v22, v23, 0, 0, 1, 0, v62, (v3 + 424)))
      {
        v25 = *v19;
        v26 = *(*(CMBaseObjectGetVTable() + 8) + 56);
        if (v26)
        {
          v26(v25, 0x1F0B644D8, *MEMORY[0x1E695E4C0]);
        }

        v27 = *v19;
        v24 = v63;
        if (!v27 || !v63)
        {
          goto LABEL_35;
        }

        v28 = *(*(CMBaseObjectGetVTable() + 16) + 24);
        if (v28)
        {
          v28(v27, v24, 0x1F0B64678);
        }
      }

      v24 = v63;
LABEL_35:
      if (v24)
      {
        CFRelease(v24);
      }
    }
  }

  *(v3 + 376) = 1;
  if (cf)
  {
    CFRelease(cf);
  }

LABEL_20:
  if (*(a1 + 4))
  {
    FigBytePumpGetFigBaseObject();
    v12 = v11;
    v13 = *(*(CMBaseObjectGetVTable() + 8) + 56);
    if (v13)
    {
      v13(v12, 0x1F0B1F098, 0);
    }
  }

  v14 = *(v3 + 40);
  if (v14 && !FigAssetDownloadCoordinatorRelinquishAccessToURL(v14))
  {
    *(v3 + 40) = 0;
  }

  dispatch_async_f(*(v3 + 480), a1, PerformCompleteTransferBytePump);
}

uint64_t RemoveBytePumpListenersAndDoBarrier(uint64_t result)
{
  if (*(result + 377))
  {
    v1 = result;
    if (*(result + 384))
    {
      CMNotificationCenterGetDefaultLocalCenter();
      OUTLINED_FUNCTION_2_160();
      FigNotificationCenterRemoveWeakListener();
      CMNotificationCenterGetDefaultLocalCenter();
      FigNotificationCenterRemoveWeakListener();
      CMNotificationCenterGetDefaultLocalCenter();
      FigNotificationCenterRemoveWeakListener();
      FigBytePumpGetFigBaseObject();
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

      result = FigStopForwardingMediaServicesProcessDeathNotification();
      *(v1 + 377) = 0;
    }
  }

  return result;
}

void PerformSetShouldPrefetchCryptKeys(uint64_t a1)
{
  v2 = *a1;
  v3 = *(a1 + 16);
  v4 = OUTLINED_FUNCTION_171();
  if (!EnsureAssetTypeEstablished(v4, v5))
  {
    if (*(v2 + 192))
    {
      if (v3)
      {
        if (*(v2 + 379) != v3)
        {
          OUTLINED_FUNCTION_171();
          if (!EnsureBytePump())
          {
            if (v2[48])
            {
              FigBytePumpGetFigBaseObject();
              v7 = v6;
              v8 = *(*(CMBaseObjectGetVTable() + 8) + 56);
              if (v8)
              {
                v8(v7, 0x1F0B1F398, *MEMORY[0x1E695E4D0]);
              }
            }
          }
        }
      }
    }
  }

  *(v2 + 379) = v3;
  CFRelease(*a1);
  CFRelease(*(a1 + 8));

  free(a1);
}

double ProduceAssetValidationResult(void *a1, uint64_t a2, const void *a3, const void *a4)
{
  cf = 0;
  if (*(a2 + 112) || EnsureAssetTypeEstablished(a1, a2))
  {
    goto LABEL_5;
  }

  if (*(a2 + 192))
  {
    CFEqual(a3, @"validationCriteria_CameraRoll");
LABEL_5:
    OUTLINED_FUNCTION_652();
    return result;
  }

  if (CFEqual(a3, @"validationCriteria_Custom"))
  {
    if (a4)
    {
      v8 = CFRetain(a4);
    }

    else
    {
      v8 = 0;
    }

    cf = v8;
LABEL_20:
    if (!v8)
    {
      goto LABEL_5;
    }

    v11 = OUTLINED_FUNCTION_177();
    v13 = EnsureFormatReaderCreated(v11, v12);
    v8 = cf;
    if (!v13)
    {
      FigMediaValidatorValidateByteStream(*(a2 + 160), *(a2 + 240));
      v8 = cf;
      if (!cf)
      {
        goto LABEL_5;
      }

LABEL_23:
      CFRelease(v8);
      goto LABEL_5;
    }

LABEL_30:
    if (!v8)
    {
      goto LABEL_5;
    }

    goto LABEL_23;
  }

  if (CFEqual(a3, @"validationCriteria_CameraRoll"))
  {
    v9 = @"CameraRollValidator.plist";
    goto LABEL_19;
  }

  if (CFEqual(a3, @"validationCriteria_MediaPlayback"))
  {
    v9 = @"MediaValidator.plist";
    goto LABEL_19;
  }

  if (CFEqual(a3, @"validationCriteria_AirPlayVideo"))
  {
    v9 = @"AirPlayVideoMediaValidator.plist";
    goto LABEL_19;
  }

  if (CFEqual(a3, @"validationCriteria_PhotosTranscodingService"))
  {
    v9 = @"CloudTranscodeValidator.plist";
LABEL_19:
    MediaValidatorPropertyList = FigMediaValidatorCreateMediaValidatorPropertyList(v9, &cf);
    v8 = cf;
    if (MediaValidatorPropertyList)
    {
      goto LABEL_30;
    }

    goto LABEL_20;
  }

  fig_log_get_emitter();
  OUTLINED_FUNCTION_3_5();
  OUTLINED_FUNCTION_652();

  return FigSignalErrorAtGM(v14);
}

void PerformCopyChapterData(uint64_t a1)
{
  values = 0;
  valuePtr = 0;
  v2 = *(a1 + 8);
  if (!v2)
  {
    goto LABEL_43;
  }

  v3 = *(a1 + 16);
  if (!v3 || (*(a1 + 24) & 0x80000000) != 0 || (*(a1 + 28) & 0x80000000) != 0 || *(a1 + 32) <= 0)
  {
    goto LABEL_43;
  }

  if (!*(v2 + 112))
  {
    v4 = EnsureChapterGroupInfoCreated(v3, v2);
    if (v4)
    {
      goto LABEL_50;
    }

    v5 = *(v2 + 328);
    if (!v5)
    {
      Mutable = 0;
      v31 = -12175;
LABEL_34:
      *(a1 + 40) = Mutable;
LABEL_35:
      Mutable = 0;
      goto LABEL_36;
    }

    Count = CFArrayGetCount(v5);
    v7 = *(a1 + 24);
    if (Count > v7)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(*(v2 + 328), v7);
      Value = CFDictionaryGetValue(ValueAtIndex, @"chapterGroupKey_Type");
      v10 = CFEqual(Value, @"artwork");
      v11 = CFDictionaryGetValue(ValueAtIndex, @"chapterGroupKey_TrackID");
      CFNumberGetValue(v11, kCFNumberSInt32Type, &valuePtr);
      v12 = CFDictionaryGetValue(ValueAtIndex, @"chapterGroupKey_PerChapterInfo");
      if (!v12)
      {
        Mutable = 0;
LABEL_33:
        v31 = 0;
        goto LABEL_34;
      }

      v13 = v12;
      if (CFArrayGetCount(v12) >= *(a1 + 32) + *(a1 + 28))
      {
        v14 = *MEMORY[0x1E695E480];
        Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
        if (*(a1 + 32) >= 1)
        {
          v16 = *(a1 + 28);
          v17 = MEMORY[0x1E695E9E8];
          while (1)
          {
            v18 = CFArrayGetValueAtIndex(v13, v16);
            if (*(v2 + 112))
            {
              goto LABEL_47;
            }

            v19 = v18;
            if (v10)
            {
              v20 = FCSupport_CopyChapterImageData(*(v2 + 240), *(v2 + 488), valuePtr, v18, &values, 0);
              if (v20)
              {
                goto LABEL_42;
              }

              v21 = CFDictionaryCreate(v14, kFigChapterArtworkDataKey_ImageData, &values, 1, MEMORY[0x1E695E9D8], v17);
              if (!v21)
              {
LABEL_41:
                fig_log_get_emitter();
                OUTLINED_FUNCTION_6_3();
                FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
LABEL_42:
                v31 = v20;
                goto LABEL_36;
              }

              v22 = v21;
              v23 = OUTLINED_FUNCTION_171();
              CFArrayAppendValue(v23, v24);
              CFRelease(v22);
              if (values)
              {
                CFRelease(values);
                values = 0;
              }
            }

            else
            {
              if (!FCSupport_HasChapterDetails(v18))
              {
                v20 = FCSupport_PopulateChapterTitleDetail(*(v2 + 240), valuePtr, *(v2 + 488), v19);
                if (v20)
                {
                  goto LABEL_42;
                }
              }

              v25 = CFDictionaryCreateMutable(v14, 0, MEMORY[0x1E695E9D8], v17);
              if (!v25)
              {
                goto LABEL_41;
              }

              v26 = v25;
              v27 = CFDictionaryGetValue(v19, @"ChapterName");
              if (v27 || (v27 = CFDictionaryGetValue(v19, @"ChapterHREFText")) != 0)
              {
                CFDictionaryAddValue(v26, @"ChapterTitleText", v27);
              }

              v28 = CFDictionaryGetValue(v19, @"ChapterHREFURL");
              if (v28)
              {
                CFDictionaryAddValue(v26, @"ChapterTitleHREF", v28);
              }

              v29 = OUTLINED_FUNCTION_171();
              CFArrayAppendValue(v29, v30);
              CFRelease(v26);
            }

            if (++v16 >= *(a1 + 32) + *(a1 + 28))
            {
              goto LABEL_33;
            }
          }
        }

        goto LABEL_33;
      }

      fig_log_get_emitter();
      OUTLINED_FUNCTION_19_2();
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
LABEL_50:
      v31 = v4;
      goto LABEL_35;
    }

LABEL_43:
    fig_log_get_emitter();
    OUTLINED_FUNCTION_19_2();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
    goto LABEL_50;
  }

  Mutable = 0;
LABEL_47:
  v31 = -12785;
LABEL_36:
  if (values)
  {
    CFRelease(values);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  *a1 = v31;
}

void PerformFetchChapterData(void *a1)
{
  PerformCopyChapterData(a1);
  v2 = *(a1[1] + 480);

  dispatch_async_f(v2, a1, PerformCompleteChapterJob);
}

const __CFArray *InternalURLAssetLoadValuesAsyncForTrackProperties(const void *a1, dispatch_queue_t *a2, const __CFArray *a3, const __CFArray *a4, _BYTE *a5, _DWORD *a6)
{
  v12 = malloc_type_calloc(1uLL, 0x40uLL, 0x1060040E9991D62uLL);
  if (v12)
  {
    *v12 = CFRetain(a2);
    *(v12 + 1) = CFRetain(a1);
    v13 = *MEMORY[0x1E695E480];
    *(v12 + 3) = CFArrayCreateCopy(*MEMORY[0x1E695E480], a4);
    if (a6)
    {
      v14 = NewPropertyStoreBatchID(a1);
      *(v12 + 9) = v14;
      *a6 = v14;
      *(v12 + 33) = 1;
    }

    if (!a3)
    {
      *(v12 + 34) = 1;
      dispatch_async_f(a2[12], v12, PerformMultiTrackBatchLoad);
      goto LABEL_9;
    }

    *(v12 + 2) = CFArrayCreateCopy(v13, a3);
    v15 = RequestMultiTrackBatches(v12);
    if (!v15)
    {
      v16 = *(v12 + 32);
      if (*(v12 + 33))
      {
        v17 = *(v12 + 5);
        dispatch_retain(v17);
        dispatch_group_enter(v17);
        dispatch_group_notify_f(v17, a2[60], v12, FinalizeMultiTrackBatchLoadJob);
        dispatch_group_leave(v17);
        dispatch_release(v17);
      }

      else
      {
        FinalizeMultiTrackBatchLoadJob(v12);
      }

      a3 = 0;
      if (!a5)
      {
        goto LABEL_14;
      }

      goto LABEL_13;
    }
  }

  else
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_19_2();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v19, v20, v21);
  }

  a3 = v15;
LABEL_9:
  v16 = 0;
  if (a5)
  {
LABEL_13:
    *a5 = v16;
  }

LABEL_14:
  if (a3)
  {
    FinalizeMultiTrackBatchLoadJob(v12);
  }

  return a3;
}

uint64_t ProduceStreamingAssetProperty(void *a1, uint64_t a2, const void *a3, CFMutableArrayRef *a4)
{
  v89 = 0;
  v8 = _os_feature_enabled_impl();
  v9 = MEMORY[0x1E695E480];
  v10 = MEMORY[0x1E695E4D0];
  if (v8)
  {
    time.value = 0;
    v92 = 0;
    cf.value = 0;
    LOBYTE(v91) = 0;
    v90 = 0;
    v11 = *(a2 + 512);
    v87 = a4;
    if (v11)
    {
      v12 = 0;
      v13 = 0;
      goto LABEL_4;
    }

    HTTPRequestOptions = EnsureStorageSessionCreated(a1, a2);
    if (HTTPRequestOptions)
    {
      goto LABEL_141;
    }

    HTTPRequestOptions = CreateHTTPRequestOptions(a2, &time);
    if (HTTPRequestOptions)
    {
      goto LABEL_141;
    }

    if (*(a2 + 16) != -1)
    {
      OUTLINED_FUNCTION_5_112();
      dispatch_once_f(v70, a2, v71);
    }

    CustomMediaSelectionSchemeFromJSON = *(a2 + 504);
    if (CustomMediaSelectionSchemeFromJSON)
    {
      goto LABEL_142;
    }

    HTTPRequestOptions = InternalURLAssetEnsureContentKeyBossIsCreatedAndUpToDate(a2);
    if (HTTPRequestOptions || (HTTPRequestOptions = EnsureStreamingNetworkURL(a1, a2), HTTPRequestOptions))
    {
LABEL_141:
      CustomMediaSelectionSchemeFromJSON = HTTPRequestOptions;
    }

    else
    {
      FigSimpleMutexLock();
      v26 = EnsureStreamingCache(a2, 1);
      if (!v26)
      {
        v27 = *(a2 + 408);
        if (v27)
        {
          v13 = CFRetain(v27);
        }

        else
        {
          v13 = 0;
        }

        FigSimpleMutexUnlock();
        v28 = *(a2 + 88);
        if (v28)
        {
          v29 = FigCFHTTPCreateCommonHTTPHeadersFromAssetCreationOptions(*v9, v28, *(a2 + 336), &cf);
          if (v29)
          {
            CustomMediaSelectionSchemeFromJSON = v29;
            v14 = 0;
            goto LABEL_61;
          }

          FigCFDictionaryGetBooleanIfPresent();
          if ((*(a2 + 81) & 2) != 0)
          {
            v31 = 1;
          }

          else
          {
            IsItOKToLogURLs = FigIsItOKToLogURLs();
            v31 = 9;
            if (!IsItOKToLogURLs)
            {
              v31 = 1;
            }
          }

          v38 = v31;
          ArrayValue = FigCFDictionaryGetArrayValue();
          if (ArrayValue && (v40 = ArrayValue, CFArrayGetCount(ArrayValue) >= 1))
          {
            v41 = CreateSanitizedOutOfBandAlternateTracksArray(v40, &v92);
            v12 = v92;
            if (v41)
            {
              CustomMediaSelectionSchemeFromJSON = v41;
              v14 = 0;
              if (!v92)
              {
                goto LABEL_61;
              }

              goto LABEL_60;
            }

            v37 = v38;
          }

          else
          {
            v37 = v38;
            v12 = 0;
          }

          BooleanValue = FigCFDictionaryGetBooleanValue();
          Value = FigCFDictionaryGetValue();
          StringValue = FigCFDictionaryGetStringValue();
          v36 = *v10;
          v42 = v36 == FigCFDictionaryGetValue();
          if (v36 == FigCFDictionaryGetValue())
          {
            v43 = ((v42 & 1) << 7) | 0x800;
          }

          else
          {
            v43 = v42 << 7;
          }

          if (v36 == FigCFDictionaryGetValue())
          {
            v43 |= 0x1000u;
          }

          v35 = time.value;
          FigCFDictionaryGetBooleanIfPresent();
          v33 = v43 | 0x10000;
        }

        else
        {
          v12 = 0;
          Value = 0;
          StringValue = 0;
          v33 = 0;
          BooleanValue = *MEMORY[0x1E695E4C0];
          v34 = v10;
          v35 = time.value;
          v36 = *v34;
          v37 = 1;
        }

        v44 = (a2 + 512);
        AllocatorForMedia = FigGetAllocatorForMedia();
        v46 = FigStreamingAssetPropertyLoaderCreate(AllocatorForMedia, *(a2 + 440), *(a2 + 536), v35, cf.value, v33, v37, *(a2 + 496), v13, *(a2 + 416), v12, Value, StringValue, BooleanValue == v36, (a2 + 512));
        if (v46)
        {
          CustomMediaSelectionSchemeFromJSON = v46;
          v14 = 0;
          v9 = MEMORY[0x1E695E480];
          v10 = MEMORY[0x1E695E4D0];
          if (!v12)
          {
            goto LABEL_61;
          }
        }

        else
        {
          v11 = *v44;
          v10 = MEMORY[0x1E695E4D0];
          if (*v44)
          {
            v9 = MEMORY[0x1E695E480];
LABEL_4:
            v14 = CFRetain(v11);
            CustomMediaSelectionSchemeFromJSON = 0;
            if (!v12)
            {
              goto LABEL_61;
            }

            goto LABEL_60;
          }

          v14 = 0;
          CustomMediaSelectionSchemeFromJSON = 0;
          v9 = MEMORY[0x1E695E480];
          if (!v12)
          {
LABEL_61:
            if (time.value)
            {
              CFRelease(time.value);
            }

            if (cf.value)
            {
              CFRelease(cf.value);
            }

            if (v13)
            {
              CFRelease(v13);
            }

            if (CustomMediaSelectionSchemeFromJSON)
            {
              goto LABEL_111;
            }

            if (CFEqual(a3, @"assetProperty_CompatibleWithAirPlayVideo"))
            {
              DictionaryRepresentation = CFRetain(*v10);
LABEL_110:
              CustomMediaSelectionSchemeFromJSON = 0;
              *v87 = DictionaryRepresentation;
              goto LABEL_111;
            }

            OUTLINED_FUNCTION_33_26();
            if (!v48)
            {
              v49 = FigGetAllocatorForMedia();
              v50 = FigStreamingAssetLoaderCopyProperty(v14, a3, v49, v87);
              if (*(a2 + 112))
              {
                CustomMediaSelectionSchemeFromJSON = 4294954511;
LABEL_111:
                if (v14)
                {
                  CFRelease(v14);
                }

                goto LABEL_113;
              }

              CustomMediaSelectionSchemeFromJSON = v50;
              if (v50 == -12783)
              {
                v51 = 0;
              }

              else
              {
                v51 = v50;
              }

              if (v51 == -12646)
              {
                *(a2 + 380) = 1;
              }

              else if (v51)
              {
                goto LABEL_111;
              }

              if (CFEqual(a3, @"CustomMediaSelectionScheme"))
              {
                v52 = *v87;
                if (*v87)
                {
                  if (CFArrayGetCount(*v87) <= 0)
                  {
                    CFRelease(v52);
                  }

                  else
                  {
                    CustomMediaSelectionSchemeFromJSON = FigAssetCreateCustomMediaSelectionSchemeFromJSON(v52, v87);
                    CFRelease(v52);
                    if (CustomMediaSelectionSchemeFromJSON)
                    {
                      goto LABEL_111;
                    }
                  }
                }
              }

              OUTLINED_FUNCTION_33_26();
              if (!v48)
              {
LABEL_118:
                CustomMediaSelectionSchemeFromJSON = 0;
                goto LABEL_111;
              }
            }

            if (CFEqual(a3, @"Duration"))
            {
              OUTLINED_FUNCTION_9_47(MEMORY[0x1E6960C68]);
            }

            else
            {
              if (CFEqual(a3, @"assetProperty_MaximumVideoResolution"))
              {
                DictionaryRepresentation = CGSizeCreateDictionaryRepresentation(*MEMORY[0x1E695F060]);
                goto LABEL_110;
              }

              if (!CFEqual(a3, @"MinimumTimeOffsetFromLive"))
              {
                goto LABEL_118;
              }

              CMTimeMake(&time, 5, 1);
              v62 = *v9;
            }

            DictionaryRepresentation = CMTimeCopyAsDictionary(&time, v62);
            goto LABEL_110;
          }
        }

LABEL_60:
        CFRelease(v12);
        goto LABEL_61;
      }

      CustomMediaSelectionSchemeFromJSON = v26;
      FigSimpleMutexUnlock();
    }

LABEL_142:
    v14 = 0;
    v13 = 0;
    goto LABEL_61;
  }

  v76 = a1;
  v16 = CFEqual(a3, @"MediaSelectionArray");
  v85 = CFEqual(a3, @"Duration");
  v81 = CFEqual(a3, @"assetProperty_HLSAlternates");
  v83 = CFEqual(a3, @"Chapters");
  v80 = CFEqual(a3, @"LocalizedMSODisplayNames");
  v79 = CFEqual(a3, @"CustomMediaSelectionScheme");
  v82 = CFEqual(a3, @"assetProperty_HLSMetadata");
  v77 = CFEqual(a3, @"assetProperty_HLSSessionKeys");
  v78 = CFEqual(a3, @"assetProperty_AvailableMetadataFormats");
  v17 = CFEqual(a3, @"assetProperty_OriginalNetworkContentURL");
  v18 = CFEqual(a3, @"assetProperty_ProtectedStatus");
  v19 = CFEqual(a3, @"assetProperty_MaximumVideoResolution");
  v20 = CFEqual(a3, @"assetProperty_AvailableVideoDynamicRanges");
  v21 = CFEqual(a3, @"assetProperty_NominalVideoFrameRate");
  v22 = CFEqual(a3, @"MinimumTimeOffsetFromLive");
  v23 = v22;
  *a4 = 0;
  if (!v16 && !v85 && !v83 && !v80 && !v79 && !v82 && !v78 && !v17 && !v18 && !v19 && !v20 && !v21 && !v22 && !v81 && !v77)
  {
    v24 = a4;
    CustomMediaSelectionSchemeFromJSON = 0;
    if (CFEqual(a3, @"assetProperty_CompatibleWithAirPlayVideo"))
    {
      *v24 = CFRetain(*MEMORY[0x1E695E4D0]);
    }

    else
    {
      *v24 = 0;
    }

    goto LABEL_113;
  }

  v88 = a4;
  v53 = EnsureBytePump();
  if (v53)
  {
    goto LABEL_148;
  }

  if (!v85 && !v81 && !v83 && !v82 && !v18 && !v23)
  {
    goto LABEL_99;
  }

  v92 = 0;
  if (*(a2 + 380) != 2)
  {
    goto LABEL_99;
  }

  v91 = 0;
  *(a2 + 380) = 3;
  if (!*(*(CMBaseObjectGetVTable() + 16) + 32))
  {
    CustomMediaSelectionSchemeFromJSON = 4294954514;
    goto LABEL_113;
  }

  time = **&MEMORY[0x1E6960C70];
  cf = time;
  OUTLINED_FUNCTION_16_46();
  CustomMediaSelectionSchemeFromJSON = v58(v54, v55, v56, v57);
  if (!CustomMediaSelectionSchemeFromJSON)
  {
    OUTLINED_FUNCTION_12_58();
    v59 = FigThreadRegisterAbortAction();
    CustomMediaSelectionSchemeFromJSON = v59;
    if (!v59 || v59 == -17561)
    {
      dispatch_semaphore_wait(*(a2 + 368), 0xFFFFFFFFFFFFFFFFLL);
    }

    FigThreadUnregisterAbortAction();
    RemoveBytePumpListenersAndDoBarrier(a2);
    v60 = *(a2 + 368);
    if (v60)
    {
      dispatch_release(v60);
      *(a2 + 368) = 0;
    }

    if (!CustomMediaSelectionSchemeFromJSON)
    {
LABEL_99:
      OUTLINED_FUNCTION_33_26();
      if (!v48)
      {
        if (v61 == 5)
        {
          CustomMediaSelectionSchemeFromJSON = *(a2 + 392);
          goto LABEL_113;
        }

        v66 = *(a2 + 384);
        if (!v66)
        {
          CustomMediaSelectionSchemeFromJSON = 4294954513;
          goto LABEL_113;
        }

        if (v16)
        {
          FigBytePumpGetFigBaseObject();
          v68 = v67;
          v69 = *(*(CMBaseObjectGetVTable() + 8) + 48);
          if (v69 && !v69(v68, 0x1F0B1EE98, *MEMORY[0x1E695E480], &v89) && v89)
          {
            v65 = CFDictionaryGetValue(v89, @"FBPAIK_MediaSelectionArray");
            if (!*v88)
            {
              if (v65)
              {
                v65 = CFRetain(v65);
              }

              goto LABEL_133;
            }

LABEL_179:
            CustomMediaSelectionSchemeFromJSON = 0;
            goto LABEL_113;
          }

LABEL_174:
          OUTLINED_FUNCTION_24_29();
          if (v48)
          {
            CustomMediaSelectionSchemeFromJSON = 0;
          }

          else
          {
            CustomMediaSelectionSchemeFromJSON = v75;
          }

          goto LABEL_113;
        }

        if (v81)
        {
          v53 = StreamingAssetCopyHLSAlternates(v66, v88);
          goto LABEL_148;
        }

        if (v19)
        {
          v53 = StreamingAssetCopyMaximumVideoResolution(v66, v88);
          goto LABEL_148;
        }

        if (v20)
        {
          v53 = StreamingAssetCopyAvailableVideoDynamicRanges(v66, v88);
          goto LABEL_148;
        }

        if (v21)
        {
          v53 = FigBytePumpCopyProperty(v66, 0x1F0B1F858, *MEMORY[0x1E695E480], v88);
          goto LABEL_148;
        }

        if (v17)
        {
          v53 = EnsureStreamingNetworkURL(v76, a2);
          goto LABEL_148;
        }

        if (v85)
        {
          v72 = kFigBytePumpProperty_Duration;
LABEL_171:
          if (!*v72)
          {
            goto LABEL_179;
          }

          FigBytePumpGetFigBaseObject();
          if (*(*(CMBaseObjectGetVTable() + 8) + 48))
          {
            v73 = OUTLINED_FUNCTION_177();
            v74(v73);
          }

          goto LABEL_174;
        }

        if (v83)
        {
          v72 = kFigBytePumpSyncProperty_Chapters;
          goto LABEL_171;
        }

        if (v80)
        {
          v72 = kFigBytePumpSyncProperty_LocalizedMediaSelectionOptionDisplayNames;
          goto LABEL_171;
        }

        if (v79)
        {
          v53 = StreamingAssetProduceCustomMediaSelectionScheme();
          goto LABEL_148;
        }

        if (v82)
        {
          v72 = kFigBytePumpSyncProperty_Metadata;
          goto LABEL_171;
        }

        if (v78)
        {
          v72 = kFigBytePumpSyncProperty_AvailableMetadataFormats;
          goto LABEL_171;
        }

        if (v18)
        {
          v72 = kFigBytePumpProperty_HasEncryptedContent;
          goto LABEL_171;
        }

        if (v23)
        {
          v72 = kFigBytePumpProperty_PrebufferReservation;
          goto LABEL_171;
        }

        if (!v77)
        {
          goto LABEL_179;
        }

        v53 = StreamingAssetCopySessionKeys(v66, v88);
LABEL_148:
        CustomMediaSelectionSchemeFromJSON = v53;
        goto LABEL_113;
      }

      if (v85)
      {
        OUTLINED_FUNCTION_9_47(MEMORY[0x1E6960C68]);
      }

      else
      {
        if (v19)
        {
          v65 = CGSizeCreateDictionaryRepresentation(*MEMORY[0x1E695F060]);
          goto LABEL_133;
        }

        if (!v23)
        {
          goto LABEL_179;
        }

        CMTimeMake(&time, 5, 1);
        v64 = *MEMORY[0x1E695E480];
      }

      v65 = CMTimeCopyAsDictionary(&time, v64);
LABEL_133:
      CustomMediaSelectionSchemeFromJSON = 0;
      *v88 = v65;
    }
  }

LABEL_113:
  if (v89)
  {
    CFRelease(v89);
  }

  return CustomMediaSelectionSchemeFromJSON;
}

uint64_t ProduceFormatReaderAssetProperty(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  OUTLINED_FUNCTION_471();
  v8 = CFEqual(v7, @"assetProperty_Tracks");
  v9 = MEMORY[0x1E695E480];
  if (v8)
  {
    v10 = OUTLINED_FUNCTION_104_0();
    v12 = EnsureTracksArrayCreated(v10, v11);
    if (!v12 && *(v5 + 464))
    {
      DefaultLocalCenter = CMNotificationCenterGetDefaultLocalCenter();
      OUTLINED_FUNCTION_10_61(DefaultLocalCenter);
      *(v5 + 468) = 1;
    }

    v14 = *(v5 + 272);
    if (v14)
    {
      v14 = CFRetain(v14);
    }

    goto LABEL_15;
  }

  if (CFEqual(v4, @"assetProperty_FormatReader"))
  {
    v15 = OUTLINED_FUNCTION_104_0();
    IsSelfContainedProperty = EnsureFormatReaderCreated(v15, v16);
    if (!IsSelfContainedProperty)
    {
      v14 = *(v5 + 240);
      if (!v14)
      {
LABEL_11:
        v12 = 0;
LABEL_15:
        *a4 = v14;
        goto LABEL_16;
      }

LABEL_10:
      v14 = CFRetain(v14);
      goto LABEL_11;
    }

    goto LABEL_70;
  }

  if (CFEqual(v4, @"assetProperty_MatchingContainerLabelType"))
  {
    v18 = OUTLINED_FUNCTION_104_0();
    v12 = EnsureFormatReaderCreated(v18, v19);
    if (v12)
    {
      goto LABEL_16;
    }

    v14 = CFNumberCreate(*v9, kCFNumberSInt32Type, (v5 + 256));
    goto LABEL_15;
  }

  if (CFEqual(v4, @"assetProperty_MatchingContainerLabel"))
  {
    v25 = OUTLINED_FUNCTION_104_0();
    IsSelfContainedProperty = EnsureFormatReaderCreated(v25, v26);
    if (!IsSelfContainedProperty)
    {
      v14 = *(v5 + 248);
      if (!v14)
      {
        goto LABEL_11;
      }

      goto LABEL_10;
    }

    goto LABEL_70;
  }

  if (CFEqual(v4, @"Duration"))
  {
    OUTLINED_FUNCTION_14_40();
    IsSelfContainedProperty = ProduceDurationProperty();
LABEL_70:
    v12 = IsSelfContainedProperty;
    goto LABEL_16;
  }

  if (CFEqual(v4, @"Lyrics"))
  {
    OUTLINED_FUNCTION_14_40();
    IsSelfContainedProperty = ProduceLyricsProperty();
    goto LABEL_70;
  }

  if (CFEqual(v4, @"PreferredRate"))
  {
    OUTLINED_FUNCTION_14_40();
    IsSelfContainedProperty = ProducePreferredRateProperty();
    goto LABEL_70;
  }

  if (CFEqual(v4, @"PreferredVolume"))
  {
    OUTLINED_FUNCTION_14_40();
    IsSelfContainedProperty = ProducePreferredVolumeProperty();
    goto LABEL_70;
  }

  if (CFEqual(v4, @"PreferredTransform"))
  {
    OUTLINED_FUNCTION_14_40();
    IsSelfContainedProperty = ProducePreferredTransformProperty();
    goto LABEL_70;
  }

  if (CFEqual(v4, @"assetProperty_TrackReferences"))
  {
    OUTLINED_FUNCTION_14_40();
    IsSelfContainedProperty = ProduceTrackReferencesProperty();
    goto LABEL_70;
  }

  if (CFEqual(v4, @"assetProperty_AlternateTrackGroups"))
  {
    OUTLINED_FUNCTION_14_40();
    IsSelfContainedProperty = ProduceAlternateTrackGroupsProperty();
    goto LABEL_70;
  }

  if (CFEqual(v4, @"assetProperty_ProvidesPreciseDurationAndTiming"))
  {
    OUTLINED_FUNCTION_14_40();
    IsSelfContainedProperty = ProducePreciseDurationAndTimingProperty();
    goto LABEL_70;
  }

  if (CFEqual(v4, @"assetProperty_AvailableMetadataFormats"))
  {
    OUTLINED_FUNCTION_14_40();
    IsSelfContainedProperty = ProduceAvailableMetadataFormatsProperty();
    goto LABEL_70;
  }

  if (CFEqual(v4, @"assetProperty_FormatSpecificMetadataFormat"))
  {
    OUTLINED_FUNCTION_14_40();
    IsSelfContainedProperty = ProduceFormatSpecificMetadataFormatProperty();
    goto LABEL_70;
  }

  if (CFEqual(v4, @"assetProperty_CommonMetadata"))
  {
    OUTLINED_FUNCTION_14_40();
    IsSelfContainedProperty = ProduceCommonMetadataProperty();
    goto LABEL_70;
  }

  if (CFEqual(v4, @"assetProperty_QuickTimeUserData") || CFEqual(v4, @"assetProperty_ISOUserData") || CFEqual(v4, @"assetProperty_QuickTimeMetadata") || CFEqual(v4, @"assetProperty_iTunesMetadata") || CFEqual(v4, @"assetProperty_ID3Metadata") || CFEqual(v4, @"assetProperty_ID3MetadataBC") || CFEqual(v4, @"assetProperty_VorbisCommentMetadata"))
  {
    goto LABEL_69;
  }

  if (CFEqual(v4, @"assetProperty_HLSMetadata") || CFEqual(v4, @"assetProperty_HLSAlternates") || CFEqual(v4, @"assetProperty_HLSSessionKeys") || CFEqual(v4, @"assetProperty_AVCHDMetadata"))
  {
    goto LABEL_57;
  }

  if (CFEqual(v4, @"assetProperty_FormatSpecificMetadata"))
  {
LABEL_69:
    v27 = OUTLINED_FUNCTION_104_0();
    ProduceMetadataPropertyFromMetadataReader(v27, v28, v29);
    goto LABEL_70;
  }

  if (CFEqual(v4, @"assetProperty_ChapterGroupInfo"))
  {
    OUTLINED_FUNCTION_14_40();
    IsSelfContainedProperty = ProduceChapterGroupInfoProperty();
    goto LABEL_70;
  }

  if (CFEqual(v4, @"CreationDate"))
  {
    OUTLINED_FUNCTION_14_40();
    IsSelfContainedProperty = ProduceCreationDateProperty();
    goto LABEL_70;
  }

  if (CFEqual(v4, @"assetProperty_InitialSamples"))
  {
    OUTLINED_FUNCTION_14_40();
    IsSelfContainedProperty = ProduceInitialSamplesProperty();
    goto LABEL_70;
  }

  if (CFEqual(v4, @"assetProperty_CPEProtector"))
  {
    OUTLINED_FUNCTION_14_40();
    IsSelfContainedProperty = ProduceCPEProtectorProperty();
    goto LABEL_70;
  }

  if (CFEqual(v4, @"assetProperty_ProtectedStatus"))
  {
    v30 = OUTLINED_FUNCTION_14_40();
    IsSelfContainedProperty = ProduceProtectedStatusProperty(v30, v31, v32);
    goto LABEL_70;
  }

  if (CFEqual(v4, @"assetProperty_SHA1Digest"))
  {
    v33 = OUTLINED_FUNCTION_14_40();
    IsSelfContainedProperty = ProduceSHA1DigestProperty(v33, v34, v35);
    goto LABEL_70;
  }

  if (CFEqual(v4, @"MediaSelectionArray"))
  {
    OUTLINED_FUNCTION_14_40();
    IsSelfContainedProperty = ProduceMediaSelectionArrayProperty();
    goto LABEL_70;
  }

  if (CFEqual(v4, @"iTunesGaplessInfo"))
  {
    OUTLINED_FUNCTION_14_40();
    IsSelfContainedProperty = ProduceiTunesGaplessInfoProperty();
    goto LABEL_70;
  }

  if (CFEqual(v4, @"iTunesSoundCheckVolumeNormalization"))
  {
    OUTLINED_FUNCTION_14_40();
    IsSelfContainedProperty = ProduceiTunesSoundCheckVolumeNormalizationProperty();
    goto LABEL_70;
  }

  if (CFEqual(v4, @"assetProperty_CouldContainFragments"))
  {
    OUTLINED_FUNCTION_14_40();
    IsSelfContainedProperty = ProduceCouldContainFragmentsProperty();
    goto LABEL_70;
  }

  if (CFEqual(v4, @"assetProperty_ContainsFragments"))
  {
    OUTLINED_FUNCTION_14_40();
    IsSelfContainedProperty = ProduceContainsFragmentsProperty();
    goto LABEL_70;
  }

  if (CFEqual(v4, @"assetProperty_MovieExtendsDuration"))
  {
    OUTLINED_FUNCTION_14_40();
    IsSelfContainedProperty = ProduceMovieExtendsDurationProperty();
    goto LABEL_70;
  }

  if (CFEqual(v4, @"assetProperty_CameraRollValidation"))
  {
    v47 = OUTLINED_FUNCTION_14_40();
    ProduceAssetCameraRollValidationProperty(v47, v48, v49);
    goto LABEL_97;
  }

  if (CFEqual(v4, @"assetProperty_MediaPlaybackValidation"))
  {
    v50 = OUTLINED_FUNCTION_14_40();
    ProduceAssetMediaPlaybackValidationProperty(v50, v51, v52);
    goto LABEL_97;
  }

  if (CFEqual(v4, @"assetProperty_CompatibleWithPhotosTranscodingService"))
  {
    v53 = OUTLINED_FUNCTION_14_40();
    ProduceAssetCompatibleWithPhotosTranscodingServiceProperty(v53, v54, v55);
    goto LABEL_97;
  }

  if (CFEqual(v4, @"Chapters"))
  {
    OUTLINED_FUNCTION_14_40();
    IsSelfContainedProperty = ProduceChaptersProperty();
    goto LABEL_70;
  }

  if (CFEqual(v4, @"LocalizedMSODisplayNames") || CFEqual(v4, @"CustomMediaSelectionScheme"))
  {
    v42 = OUTLINED_FUNCTION_104_0();
    IsSelfContainedProperty = ProduceFigStdAssetOptionalProperty(v42, v43, v4, a4);
    goto LABEL_70;
  }

  if (CFEqual(v4, @"assetProperty_MovieProxy"))
  {
    v56 = OUTLINED_FUNCTION_14_40();
    ProduceMovieProxyProperty(v56, v57, v58);
    goto LABEL_70;
  }

  if (CFEqual(v4, @"AssetIsSelfContained"))
  {
    OUTLINED_FUNCTION_14_40();
    IsSelfContainedProperty = ProduceAssetIsSelfContainedProperty();
    goto LABEL_70;
  }

  if (CFEqual(v4, @"NaturalTimeScale"))
  {
    v59 = OUTLINED_FUNCTION_14_40();
    IsSelfContainedProperty = ProduceAssetNaturalTimeScaleProperty(v59, v60, v61);
    goto LABEL_70;
  }

  if (CFEqual(v4, @"assetProperty_CompatibleWithAirPlayVideo"))
  {
    v36 = OUTLINED_FUNCTION_14_40();
    ProduceAssetCompatibleWithAirPlayVideoProperty(v36, v37, v38);
LABEL_97:
    v12 = 0;
    goto LABEL_16;
  }

  if (CFEqual(v4, @"AssetAnalysisMessages"))
  {
    OUTLINED_FUNCTION_14_40();
    IsSelfContainedProperty = ProduceAssetAnalysisMessagesProperty();
    goto LABEL_70;
  }

  if (CFEqual(v4, @"IsAssetAnalysisActive"))
  {
    OUTLINED_FUNCTION_14_40();
    IsSelfContainedProperty = ProduceIsAssetAnalysisActiveProperty();
    goto LABEL_70;
  }

  if (CFEqual(v4, @"assetProperty_MaximumVideoResolution"))
  {
    OUTLINED_FUNCTION_14_40();
    IsSelfContainedProperty = ProduceMaximumVideoResolutionProperty();
    goto LABEL_70;
  }

  if (CFEqual(v4, @"assetProperty_AvailableVideoDynamicRanges"))
  {
    v39 = OUTLINED_FUNCTION_14_40();
    IsSelfContainedProperty = ProduceAvailableVideoDynamicRangesProperty(v39, v40, v41);
    goto LABEL_70;
  }

  if (CFEqual(v4, @"assetProperty_NominalVideoFrameRate"))
  {
    v44 = OUTLINED_FUNCTION_14_40();
    IsSelfContainedProperty = ProduceNominalVideoFrameRateProperty(v44, v45, v46);
    goto LABEL_70;
  }

  if (CFEqual(v4, @"assetProperty_moovAtomSize"))
  {
    OUTLINED_FUNCTION_14_40();
    IsSelfContainedProperty = ProducemoovAtomSizeProperty();
    goto LABEL_70;
  }

  if (CFEqual(v4, @"assetProperty_OriginalNetworkContentURL"))
  {
    goto LABEL_57;
  }

  if (CFEqual(v4, @"assetProperty_FirstFragmentSequenceNumber"))
  {
    OUTLINED_FUNCTION_14_40();
    IsSelfContainedProperty = ProduceFirstFragmentSequenceNumberProperty();
    goto LABEL_70;
  }

  if (CFEqual(v4, @"assetProperty_FragmentCount"))
  {
    OUTLINED_FUNCTION_14_40();
    IsSelfContainedProperty = ProduceFragmentCountProperty();
    goto LABEL_70;
  }

  if (CFEqual(v4, @"MinimumTimeOffsetFromLive"))
  {
LABEL_57:
    v12 = 0;
    *a4 = 0;
    goto LABEL_16;
  }

  v12 = -12172;
LABEL_16:
  if (v12 >> 1 == 2147477256 || v12 == -12787)
  {
    v21 = 0;
  }

  else
  {
    v21 = v12;
  }

  if (!v21 && *(v5 + 464))
  {
    if (!*(v5 + 456))
    {
      if (_MergedGlobals_118 != -1)
      {
        OUTLINED_FUNCTION_14_53(&_MergedGlobals_118);
      }

      *(v5 + 456) = CFDictionaryCreateMutable(*v9, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      v23 = CMNotificationCenterGetDefaultLocalCenter();
      OUTLINED_FUNCTION_10_61(v23);
    }

    Value = CFDictionaryGetValue(qword_1ED4CB8B0, v4);
    if (Value)
    {
      CFDictionaryAddValue(*(v5 + 456), v4, Value);
    }
  }

  return v21;
}

void URLAssetDoneDownloadingGuts(uint64_t a1, uint64_t a2, const __CFDictionary *a3)
{
  valuePtr = 0;
  v17 = 0;
  cf = 0;
  if (!*(a1 + 112) && *(a1 + 160) == a2 && FigAtomicCompareAndSwap32())
  {
    CMByteStreamGetCMBaseObject();
    if (!*(*(CMBaseObjectGetVTable() + 8) + 48))
    {
      goto LABEL_11;
    }

    v5 = OUTLINED_FUNCTION_17_41();
    valuePtr = v6(v5);
    if (valuePtr)
    {
      goto LABEL_12;
    }

    CMBaseObject = CMByteStreamGetCMBaseObject();
    v8 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (!v8)
    {
LABEL_11:
      valuePtr = -12782;
      goto LABEL_12;
    }

    valuePtr = v8(CMBaseObject, *MEMORY[0x1E695FF70], 0, &cf);
    if (valuePtr)
    {
      goto LABEL_12;
    }

    if (CFEqual(cf, v17))
    {
      v16 = 0;
      GetContentProtectionOptions(a1, &v16, 0, 0);
      if (v16)
      {
        CFRetain(a1);
        dispatch_group_async_f(*(a1 + 296), *(a1 + 304), a1, PerformMD5Check);
      }

      else
      {
        v14 = CMByteStreamGetCMBaseObject();
        v15 = *(*(CMBaseObjectGetVTable() + 8) + 56);
        if (v15)
        {
          v15(v14, *MEMORY[0x1E6960DD0], *MEMORY[0x1E695E4D0]);
        }

        ReviseDownloadToDestinationResultProperty(a1, 0);
        CFRetain(a1);
        CMNotificationCenterGetDefaultLocalCenter();
        OUTLINED_FUNCTION_0_176();
        FigDeferNotificationToDispatchQueue();
      }
    }

    else
    {
      v9 = -16091;
      valuePtr = -16091;
      if (a3)
      {
        CFDictionaryGetTypeID();
        if (CMBaseObject != OUTLINED_FUNCTION_68_6())
        {
          goto LABEL_23;
        }

        Value = CFDictionaryGetValue(a3, @"CRABS_StatusCode");
        if (!Value)
        {
          goto LABEL_23;
        }

        v11 = Value;
        CFNumberGetTypeID();
        if (CMBaseObject != OUTLINED_FUNCTION_68_6())
        {
          goto LABEL_23;
        }

        LODWORD(v16) = 0;
        CFNumberGetValue(v11, kCFNumberIntType, &v16);
        v9 = v16;
        if (v16 == -12542)
        {
          goto LABEL_12;
        }

        if (v16)
        {
          valuePtr = v16;
        }

        else
        {
LABEL_23:
          v9 = -16091;
        }
      }

      ReviseDownloadToDestinationResultProperty(a1, v9);
      v12 = *MEMORY[0x1E695E480];
      v16 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberIntType, &valuePtr);
      v13 = CFDictionaryCreate(v12, kFigAssetPayloadKey_Result, &v16, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      CFRetain(a1);
      CMNotificationCenterGetDefaultLocalCenter();
      OUTLINED_FUNCTION_0_176();
      FigDeferNotificationToDispatchQueue();
      if (v13)
      {
        CFRelease(v13);
      }

      if (v16)
      {
        CFRelease(v16);
      }
    }
  }

LABEL_12:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v17)
  {
    CFRelease(v17);
  }
}

void PerformMD5Check(void *cf)
{
  valuePtr = 0;
  theDict = 0;
  v9 = 0;
  values[1] = 0;
  if (!*(cf + 112) && !*(cf + 195))
  {
    GetContentProtectionOptions(cf, &v9, 0, 0);
    valuePtr = SetupBytestreamFactoryParameters();
    if (!valuePtr)
    {
      v2 = EncryptedFileMD5Check(v9, cf[20], 0, 0);
      valuePtr = v2;
      *(cf + 195) = 1;
      ReviseDownloadToDestinationResultProperty(cf, v2);
      if (v2)
      {
        v3 = *MEMORY[0x1E695E480];
        values[0] = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberIntType, &valuePtr);
        v4 = CFDictionaryCreate(v3, kFigAssetPayloadKey_Result, values, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
        CFRetain(cf);
        CMNotificationCenterGetDefaultLocalCenter();
        OUTLINED_FUNCTION_0_176();
        FigDeferNotificationToDispatchQueue();
        if (v4)
        {
          CFRelease(v4);
        }

        if (values[0])
        {
          CFRelease(values[0]);
        }
      }

      else
      {
        CMBaseObject = CMByteStreamGetCMBaseObject();
        v6 = *(*(CMBaseObjectGetVTable() + 8) + 56);
        if (v6)
        {
          v6(CMBaseObject, *MEMORY[0x1E6960DD0], *MEMORY[0x1E695E4D0]);
        }

        CFRetain(cf);
        CMNotificationCenterGetDefaultLocalCenter();
        OUTLINED_FUNCTION_0_176();
        FigDeferNotificationToDispatchQueue();
      }
    }

    if (theDict)
    {
      CFRelease(theDict);
      theDict = 0;
    }
  }

  CFRelease(cf);
}

uint64_t SetupBytestreamFactoryParameters()
{
  OUTLINED_FUNCTION_38_19();
  HIBYTE(v35) = 0;
  *v2 = 0;
  v2[1] = 0;
  if (*(v3 + 16) != -1)
  {
    OUTLINED_FUNCTION_5_112();
    dispatch_once_f(v32, v1, v33);
  }

  v4 = *(v1 + 504);
  if (!v4)
  {
    v5 = *MEMORY[0x1E695E480];
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    if (!Mutable)
    {
      fig_log_get_emitter();
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v35, v36, value);
      v4 = v34;
      goto LABEL_71;
    }

    v7 = Mutable;
    v8 = *(v1 + 80);
    if (v8)
    {
      *v0 |= 2u;
    }

    if ((v8 & 0x200) != 0)
    {
      *v0 |= 0x1000u;
    }

    v9 = *(v1 + 88);
    if (!v9)
    {
      v15 = 0;
      goto LABEL_51;
    }

    if (CFDictionaryGetValue(v9, @"assetOption_PrepareForIncrementalFragments"))
    {
      *v0 |= 0x800u;
    }

    v10 = *MEMORY[0x1E695E4D0];
    if (v10 == CFDictionaryGetValue(*(v1 + 88), @"assetOption_UseAWDL"))
    {
      CFDictionarySetValue(v7, @"factoryOption_UseAWDL", v10);
    }

    URLValue = FigCFDictionaryGetURLValue();
    if (URLValue)
    {
      CFDictionarySetValue(v7, @"factoryOption_DownloadDestinationURL", URLValue);
    }

    FigCFDictionaryGetURLValue();
    FigCFDictionaryGetBooleanIfPresent();
    if (CFDictionaryGetValueIfPresent(*(v1 + 88), @"assetOption_NetworkCacheUsePathAsKey", &value) && value == v10)
    {
      *v0 |= 8u;
    }

    if (CFDictionaryGetValueIfPresent(*(v1 + 88), @"assetOption_NetworkCacheUseURLWithoutQueryStringAsKey", &value) && value == v10)
    {
      *v0 |= 0x20u;
    }

    v12 = CFDictionaryGetValue(*(v1 + 88), @"assetOption_NetworkCacheBacking");
    if (v12)
    {
      v13 = v12;
      if (CFEqual(v12, @"assetOption_DiskBacking"))
      {
        v14 = kFigByteStreamFactoryBackingOption_Disk;
LABEL_30:
        CFDictionarySetValue(v7, @"factoryOption_Backing", *v14);
        goto LABEL_31;
      }

      if (CFEqual(v13, @"assetOption_NonPurgeableMemoryBacking"))
      {
        v16 = CFDictionaryGetValue(*(v1 + 88), @"assetOption_NetworkCacheNonPurgeableMemoryLimit");
        if (v16)
        {
          CFDictionarySetValue(v7, @"factoryOption_NonPurgeableMemoryLimit", v16);
        }

        v14 = &kFigByteStreamFactoryBackingOption_NonPurgeableMemory;
        goto LABEL_30;
      }
    }

LABEL_31:
    BooleanValue = FigCFDictionaryGetBooleanValue();
    if (BooleanValue)
    {
      CFDictionarySetValue(v7, @"factoryOption_NoPersistentCache", BooleanValue);
    }

    NumberValue = FigCFDictionaryGetNumberValue();
    if (NumberValue)
    {
      CFDictionarySetValue(v7, @"factoryOption_MaxSizeAllowedForCellularAccess", NumberValue);
    }

    v19 = CFDictionaryGetValue(*(v1 + 88), @"assetOption_ParentNetworkActivityToken");
    v15 = FigNWActivityCreateFromToken(v19);
    if (v15)
    {
      CFDictionarySetValue(v7, @"factoryOption_ParentNetworkActivity", v15);
    }

    FigCFDictionarySetValueFromKeyInDict();
    FigCFDictionarySetValueFromKeyInDict();
    DictionaryValue = FigCFDictionaryGetDictionaryValue();
    if (DictionaryValue)
    {
      CFDictionarySetValue(v7, @"factoryOption_AlternativeConfigurationOptions", DictionaryValue);
    }

    v21 = FigCFDictionaryGetDictionaryValue();
    if (v21)
    {
      CFDictionarySetValue(v7, @"factoryOption_ByteRangeInFile", v21);
    }

    v22 = FigCFDictionaryGetBooleanValue();
    value = v22;
    if (v22 && v22 == v10)
    {
      *v0 |= 0x400u;
    }

    v23 = FigCFDictionaryGetBooleanValue();
    value = v23;
    if (v23)
    {
      CFDictionarySetValue(v7, @"factoryOption_DisableNetworkLargeDownload", v23);
    }

    v24 = FigCFDictionaryGetBooleanValue();
    value = v24;
    if (v24)
    {
      CFDictionarySetValue(v7, @"factoryOption_DisableNetworkProbeRequest", v24);
    }

    v25 = FigCFDictionaryGetBooleanValue();
    if (v25)
    {
      CFDictionarySetValue(v7, @"factoryOption_RequiresCustomURLLoading", v25);
    }

    FigCFDictionarySetValueFromKeyInDict();
    FigCFDictionarySetValueFromKeyInDict();
    FigCFDictionarySetValueFromKeyInDict();
LABEL_51:
    if (*(v1 + 584))
    {
      FigCFDictionarySetValue();
    }

    v26 = *(v1 + 496);
    if (v26)
    {
      CFDictionarySetValue(v7, @"factoryOption_CustomURLLoader", v26);
    }

    HTTPRequestOptions = CreateHTTPRequestOptions(v1, &v36);
    if (HTTPRequestOptions)
    {
      v4 = HTTPRequestOptions;
    }

    else
    {
      if (v36)
      {
        CFDictionarySetValue(v7, @"factoryOption_HTTPRequestOptions", v36);
      }

      v28 = *(v1 + 80);
      if ((v28 & 0x38) != 0)
      {
        v29 = 30;
      }

      else
      {
        v29 = 2;
      }

      *v0 |= FigByteStreamFactoryTranslateReferenceSecurityOptions(v29 & (v28 >> 1));
      v30 = FigCFHTTPCreateCommonHTTPHeadersFromAssetCreationOptions(v5, *(v1 + 88), *(v1 + 336), &cf);
      v4 = v30;
      if (v30 || !cf)
      {
        if (v30)
        {
          goto LABEL_69;
        }
      }

      else
      {
        CFDictionarySetValue(v7, @"factoryOption_HTTPHeaders", cf);
      }

      if (CFDictionaryGetCount(v7) >= 1)
      {
        v4 = 0;
        *(v0 + 8) = v7;
        if (!v15)
        {
          goto LABEL_71;
        }

LABEL_70:
        CFRelease(v15);
        goto LABEL_71;
      }

      v4 = 0;
    }

LABEL_69:
    CFRelease(v7);
    if (!v15)
    {
      goto LABEL_71;
    }

    goto LABEL_70;
  }

LABEL_71:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v36)
  {
    CFRelease(v36);
  }

  return v4;
}

void ReviseTracksArrayProperty(uint64_t a1)
{
  cf = 0;
  count = 0;
  v2 = MEMORY[0x19A8D0E00](a1 + 472);
  if (v2)
  {
    v43 = v2;
    LockTrackMacroPropertyState(*(a1 + 608));
    v3 = *(a1 + 240);
    v4 = *(*(CMBaseObjectGetVTable() + 16) + 8);
    if (!v4 || v4(v3, &count))
    {
      v15 = 0;
      Mutable = 0;
      v22 = 0;
      v9 = 0;
      v23 = v43;
      goto LABEL_48;
    }

    if (!count)
    {
      v9 = 0;
      theArray = 0;
      Mutable = 0;
      v23 = v43;
      goto LABEL_45;
    }

    v5 = *MEMORY[0x1E695E480];
    v6 = MEMORY[0x1E695E9C0];
    theArray = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
    Mutable = CFArrayCreateMutable(v5, 0, v6);
    v8 = malloc_type_calloc(count, 4uLL, 0x100004052888210uLL);
    v9 = v8;
    if (v8)
    {
      if (count >= 1)
      {
        v10 = 0;
        v11 = v8;
        do
        {
          v12 = *(a1 + 240);
          v13 = *(*(CMBaseObjectGetVTable() + 16) + 48);
          if (!v13)
          {
            break;
          }

          if (v13(v12, v10, 0, 0, v11))
          {
            break;
          }

          ++v10;
          v11 += 4;
        }

        while (count > v10);
      }

      MutableCopy = FigCFArrayCreateMutableCopy();
      v15 = MutableCopy;
      if (MutableCopy)
      {
        v16 = CFArrayGetCount(MutableCopy);
        if (v16 >= 1)
        {
          v17 = 0;
          do
          {
            LODWORD(value) = 0;
            ValueAtIndex = CFArrayGetValueAtIndex(v15, v17);
            v19 = *(*(CMBaseObjectGetVTable() + 16) + 32);
            if (!v19 || v19(ValueAtIndex, &value, 0) || (v20 = count, count < 1))
            {
LABEL_16:
              CFArrayAppendValue(Mutable, ValueAtIndex);
              CFArrayRemoveValueAtIndex(v15, v17);
              --v16;
            }

            else
            {
              v21 = v9;
              while (*v21 != value)
              {
                ++v21;
                if (!--v20)
                {
                  goto LABEL_16;
                }
              }

              *v21 = 0;
              ++v17;
            }
          }

          while (v17 < v16);
        }

        v41 = Mutable;
        v24 = count;
        if (count >= 1)
        {
          v25 = 0;
          v44 = v9;
          do
          {
            v26 = v9[v25];
            if (v26)
            {
              value = 0;
              v27 = *(a1 + 240);
              v28 = *(*(CMBaseObjectGetVTable() + 16) + 56);
              if (v28)
              {
                v28(v27, v26, &cf, 0);
              }

              if (cf)
              {
                if (EnsureTrackWorkQueueCreated(a1))
                {
                  v22 = theArray;
                  v23 = v43;
                  Mutable = v41;
                  goto LABEL_48;
                }

                v29 = CFGetAllocator(a1);
                v30 = *(a1 + 240);
                v31 = cf;
                v32 = *(a1 + 160);
                v33 = *(a1 + 280);
                v34 = *(a1 + 80);
                v35 = *(a1 + 464);
                TrackMacroPropertyDefinitions = GetTrackMacroPropertyDefinitions(*(a1 + 608));
                URLAssetCreateAssetTrack(v29, v30, v31, v32, (a1 + 592), v33, BYTE1(v34) & 1, v35, TrackMacroPropertyDefinitions, *(a1 + 616), (*(a1 + 80) & 0x200) != 0, &value);
                if (value)
                {
                  CFArrayAppendValue(theArray, value);
                  CFArrayAppendValue(v15, value);
                  if (value)
                  {
                    CFRelease(value);
                    value = 0;
                  }
                }

                v9 = v44;
                if (cf)
                {
                  CFRelease(cf);
                  cf = 0;
                }
              }

              v24 = count;
            }

            ++v25;
          }

          while (v24 > v25);
        }

        if (CFArrayGetCount(v15))
        {
          v37 = *(a1 + 272);
          *(a1 + 272) = v15;
          CFRetain(v15);
          v23 = v43;
          Mutable = v41;
          if (!v37)
          {
            goto LABEL_47;
          }

          goto LABEL_46;
        }

        CFRelease(v15);
        v23 = v43;
        Mutable = v41;
LABEL_45:
        v15 = 0;
        v37 = *(a1 + 272);
        *(a1 + 272) = 0;
        if (!v37)
        {
LABEL_47:
          v22 = theArray;
          ReviseTrackMacroPropertyStateTracks(*(a1 + 608), v15, theArray, Mutable);
          ReviseProperty(v23, @"assetProperty_Tracks", v15);
          goto LABEL_48;
        }

LABEL_46:
        CFRelease(v37);
        goto LABEL_47;
      }

      fig_log_get_emitter();
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v38, v39, v40);
    }

    else
    {
      fig_log_get_emitter();
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v38, v39, v40);
      v15 = 0;
    }

    v22 = theArray;
    v23 = v43;
LABEL_48:
    UnlockTrackMacroPropertyState(*(a1 + 608));
    if (cf)
    {
      CFRelease(cf);
    }

    if (v15)
    {
      CFRelease(v15);
    }

    if (v22)
    {
      CFRelease(v22);
    }

    if (Mutable)
    {
      CFRelease(Mutable);
    }

    CFRelease(v23);
  }

  else
  {
    v9 = 0;
  }

  free(v9);
  CFRelease(a1);
}

uint64_t EnsureBytePump()
{
  OUTLINED_FUNCTION_38_19();
  Options = EnsureContentStreamCreated(v2, v3);
  if (Options)
  {
    goto LABEL_48;
  }

  if (!*(v0 + 192))
  {
    fig_log_get_emitter();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v27, v28, cf);
    v5 = v26;
    if (!v26)
    {
      goto LABEL_6;
    }

    goto LABEL_42;
  }

  Options = EnsureStorageSessionCreated(v1, v0);
  if (Options)
  {
    goto LABEL_48;
  }

  if (*(v0 + 380))
  {
    v5 = 0;
    goto LABEL_6;
  }

  *(v0 + 368) = dispatch_semaphore_create(0);
  *(v0 + 432) = FigReentrantMutexCreate();
  Options = CreateBytePumpCreateOptions(v1, v0, 1, &cf);
  if (Options)
  {
    goto LABEL_48;
  }

  Options = FigCFHTTPCreateCommonHTTPHeadersFromAssetCreationOptions(*MEMORY[0x1E695E480], *(v0 + 88), *(v0 + 336), &v30);
  if (Options)
  {
    goto LABEL_48;
  }

  CreateSegmentBytePump(v1, v0, v30, cf, (v0 + 384));
  if (Options)
  {
    goto LABEL_48;
  }

  CMNotificationCenterGetDefaultLocalCenter();
  OUTLINED_FUNCTION_2_160();
  Options = OUTLINED_FUNCTION_3_17(v13);
  if (Options)
  {
    goto LABEL_48;
  }

  CMNotificationCenterGetDefaultLocalCenter();
  OUTLINED_FUNCTION_2_160();
  Options = OUTLINED_FUNCTION_3_17(v14);
  if (Options)
  {
    goto LABEL_48;
  }

  CMNotificationCenterGetDefaultLocalCenter();
  OUTLINED_FUNCTION_2_160();
  Options = OUTLINED_FUNCTION_3_17(v15);
  if (Options)
  {
    goto LABEL_48;
  }

  Options = FigStartForwardingMediaServicesProcessDeathNotification();
  if (Options)
  {
    goto LABEL_48;
  }

  *(v0 + 377) = 1;
  if (*(v0 + 379))
  {
    FigBytePumpGetFigBaseObject();
    v17 = v16;
    v18 = *(*(CMBaseObjectGetVTable() + 8) + 56);
    if (v18)
    {
      v18(v17, 0x1F0B1F398, *MEMORY[0x1E695E4D0]);
    }
  }

  v19 = *(v0 + 384);
  v20 = *(*(CMBaseObjectGetVTable() + 16) + 64);
  if (!v20)
  {
    v5 = 4294954514;
    goto LABEL_42;
  }

  Options = v20(v19);
  if (Options)
  {
LABEL_48:
    v5 = Options;
LABEL_42:
    *(v0 + 392) = v5;
    *(v0 + 380) = 5;
    if (*(v0 + 384))
    {
      FigBytePumpGetFigBaseObject();
      v23 = v22;
      v24 = *(*(CMBaseObjectGetVTable() + 8) + 56);
      if (v24)
      {
        v24(v23, 0x1F0B1F098, 0);
      }
    }

    v25 = *(v0 + 40);
    if (v25 && !FigAssetDownloadCoordinatorRelinquishAccessToURL(v25))
    {
      *(v0 + 40) = 0;
    }

    goto LABEL_6;
  }

  OUTLINED_FUNCTION_12_58();
  v21 = FigThreadRegisterAbortAction();
  v5 = v21;
  if (!v21 || v21 == -17561)
  {
    dispatch_semaphore_wait(*(v0 + 368), 0xFFFFFFFFFFFFFFFFLL);
  }

  FigThreadUnregisterAbortAction();
  if (*(v0 + 380) == 5)
  {
    v5 = *(v0 + 392);
  }

  if (v5)
  {
    goto LABEL_42;
  }

LABEL_6:
  if (*(v0 + 378))
  {
    RemoveBytePumpListenersAndDoBarrier(v0);
    v7 = *(v0 + 380);
    if (v7 == 1)
    {
      FigBytePumpGetFigBaseObject();
      if (v8)
      {
        v9 = v8;
        v10 = *(*(CMBaseObjectGetVTable() + 8) + 24);
        if (v10)
        {
          v10(v9);
        }
      }

      v11 = *(v0 + 384);
      if (v11)
      {
        CFRelease(v11);
        *(v0 + 384) = 0;
      }

      v7 = *(v0 + 380);
    }

    if (v7 == 4)
    {
      v12 = *(v0 + 368);
      if (v12)
      {
        dispatch_release(v12);
        *(v0 + 368) = 0;
      }
    }
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (v30)
  {
    CFRelease(v30);
  }

  return v5;
}

uint64_t CreateBytePumpCreateOptions(void *a1, uint64_t a2, int a3, __CFDictionary **a4)
{
  value = 0;
  v48 = 0;
  theArray = 0;
  v8 = *MEMORY[0x1E695E480];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (!Mutable)
  {
    fig_log_get_emitter();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v43, v44, cf);
    v36 = v40;
    goto LABEL_65;
  }

  v10 = Mutable;
  v11 = MEMORY[0x1E695E4D0];
  if (*(a2 + 88))
  {
    cf = 0;
    BooleanValue = FigCFDictionaryGetBooleanValue();
    if (BooleanValue)
    {
      CFDictionarySetValue(v10, @"FBPCreateOption_InheritURIQueryComponentFromReferencingURI", BooleanValue);
    }

    DictionaryValue = FigCFDictionaryGetDictionaryValue();
    if (DictionaryValue)
    {
      CFDictionarySetValue(v10, @"FBPCreateOption_AlternativeConfigurationOptions", DictionaryValue);
    }

    ArrayValue = FigCFDictionaryGetArrayValue();
    if (ArrayValue)
    {
      v15 = ArrayValue;
      if (CFArrayGetCount(ArrayValue) >= 1)
      {
        SanitizedOutOfBandAlternateTracksArray = CreateSanitizedOutOfBandAlternateTracksArray(v15, &value);
        if (SanitizedOutOfBandAlternateTracksArray)
        {
          v36 = SanitizedOutOfBandAlternateTracksArray;
          v22 = 0;
          goto LABEL_61;
        }

        CFDictionarySetValue(v10, @"FBPCreateOption_OutOfBandAlternateTracks", value);
      }
    }

    v17 = FigCFDictionaryGetDictionaryValue();
    if (v17)
    {
      v18 = v17;
      v19 = CFDictionaryGetValue(v17, @"assetOption_iTunesStoreContentRentalID");
      if (v19)
      {
        CFDictionarySetValue(v10, @"FBPCreateOption_iTunesRentalID", v19);
      }

      v20 = CFDictionaryGetValue(v18, @"assetOption_iTunesStoreContentDSID");
      if (v20)
      {
        CFDictionarySetValue(v10, @"FBPCreateOption_iTunesAccountID", v20);
      }
    }

    if (FigCFDictionaryGetInt64IfPresent())
    {
      CFDictionarySetValue(v10, @"FBPCreateOption_DisallowCellularAccess", *v11);
    }

    v21 = CFDictionaryGetValue(*(a2 + 88), @"assetOption_ParentNetworkActivityToken");
    v22 = FigNWActivityCreateFromToken(v21);
    if (v22)
    {
      CFDictionarySetValue(v10, @"FBPCreateOption_ParentNetworkActivity", v22);
    }

    FigCFDictionarySetValueFromKeyInDict();
    FigCFDictionarySetValueFromKeyInDict();
    FigCFDictionarySetValueFromKeyInDict();
    FigCFDictionarySetValueFromKeyInDict();
    FigCFDictionarySetValueFromKeyInDict();
    FigCFDictionarySetValueFromKeyInDict();
    FigCFDictionarySetValueFromKeyInDict();
    FigCFDictionarySetValueFromKeyInDict();
    HTTPRequestOptions = InternalURLAssetEnsureDownloadTokenEstablished(a2);
    if (HTTPRequestOptions)
    {
      goto LABEL_76;
    }

    FigCFDictionarySetValue();
  }

  else
  {
    v22 = 0;
  }

  HTTPRequestOptions = EnsureStreamingNetworkURL(a1, a2);
  if (!HTTPRequestOptions)
  {
    FigSimpleMutexLock();
    v24 = EnsureStreamingCache(a2, a3);
    if (v24)
    {
      v36 = v24;
      FigSimpleMutexUnlock();
      goto LABEL_61;
    }

    v25 = *(a2 + 408);
    if (v25)
    {
      v26 = &kFigBytePumpCreateOption_StreamingCache;
      if (*(a2 + 416))
      {
        v26 = &kFigBytePumpCreateOption_PlaylistCache;
      }

      CFDictionarySetValue(v10, *v26, v25);
    }

    FigSimpleMutexUnlock();
    HTTPRequestOptions = CreateHTTPRequestOptions(a2, &v48);
    if (!HTTPRequestOptions)
    {
      if (v48)
      {
        CFDictionarySetValue(v10, @"FBPCreateOption_HTTPRequestOptions", v48);
      }

      v27 = *(a2 + 512);
      if (!v27)
      {
LABEL_37:
        if (*(a2 + 384))
        {
          v44 = 0;
          cf = 0;
          FigBytePumpGetFigBaseObject();
          v29 = v28;
          v30 = *(*(CMBaseObjectGetVTable() + 8) + 48);
          if (v30 && !v30(v29, 0x1F0B1F478, v8, &cf))
          {
            CFDictionarySetValue(v10, @"FBPCreateOption_CPECryptors", cf);
          }

          if (cf)
          {
            CFRelease(cf);
          }

          FigBytePumpGetFigBaseObject();
          v32 = v31;
          v33 = *(*(CMBaseObjectGetVTable() + 8) + 48);
          if (v33)
          {
            v34 = v33(v32, 0x1F0B1F2D8, v8, &v44);
            v35 = v44;
            if (!v34)
            {
              CFDictionarySetValue(v10, @"FBPCreateOption_StoreBagSessionConfiguration", v44);
              v35 = v44;
            }

            if (v35)
            {
              CFRelease(v35);
            }
          }
        }

        HTTPRequestOptions = InternalURLAssetEnsureContentKeySessionCreated(a2);
        if (!HTTPRequestOptions)
        {
          CFDictionarySetValue(v10, @"FBPCreateOption_DefaultContentKeySession", *(a2 + 520));
          HTTPRequestOptions = InternalURLAssetEnsureContentKeyBossIsCreatedAndUpToDate(a2);
          if (!HTTPRequestOptions)
          {
            CFDictionarySetValue(v10, @"FBPCreateOption_ContentKeyBoss", *(a2 + 528));
            if ((*(a2 + 81) & 2) != 0)
            {
              CFDictionarySetValue(v10, @"FBPCreateOption_DoNotLogURLs", *v11);
            }

            if (*(a2 + 16) != -1)
            {
              OUTLINED_FUNCTION_5_112();
              dispatch_once_f(v41, a2, v42);
            }

            v36 = *(a2 + 504);
            if (!v36)
            {
              CFDictionarySetValue(v10, @"FBPCreateOption_CustomURLLoader", *(a2 + 496));
              if (!CFDictionaryGetCount(v10))
              {
                CFRelease(v10);
                v10 = 0;
              }

              if (*(a2 + 469))
              {
                v37 = v11;
              }

              else
              {
                v37 = MEMORY[0x1E695E4C0];
              }

              CFDictionarySetValue(v10, @"FBPCreateOption_ABRHistoryRecordingEnabled", *v37);
              v36 = 0;
              *a4 = v10;
              v10 = 0;
            }

            goto LABEL_61;
          }
        }

        goto LABEL_76;
      }

      HTTPRequestOptions = FigStreamingAssetPropertyLoaderCopyAndClearMetricEvents(v27, &theArray);
      if (!HTTPRequestOptions)
      {
        if (theArray && CFArrayGetCount(theArray))
        {
          CFDictionarySetValue(v10, @"FBPCreateOption_MetricEvents", theArray);
        }

        goto LABEL_37;
      }
    }
  }

LABEL_76:
  v36 = HTTPRequestOptions;
LABEL_61:
  if (v22)
  {
    CFRelease(v22);
  }

  if (v10)
  {
    CFRelease(v10);
  }

LABEL_65:
  if (value)
  {
    CFRelease(value);
  }

  if (v48)
  {
    CFRelease(v48);
  }

  if (theArray)
  {
    CFRelease(theArray);
  }

  if (v36)
  {
    v38 = *(a2 + 40);
    if (v38)
    {
      if (!FigAssetDownloadCoordinatorRelinquishAccessToURL(v38))
      {
        *(a2 + 40) = 0;
      }
    }
  }

  return v36;
}

void CreateSegmentBytePump(void *a1, uint64_t a2, const void *a3, const __CFDictionary *a4, CFTypeRef *a5)
{
  v13 = 0;
  cf = 0;
  if (a5 && !EnsureStreamingNetworkURL(a1, a2))
  {
    if (FigBytePumpCreateForHTTPChunk(*MEMORY[0x1E695E480], *(a2 + 440), a3, a4, 0, BytePumpCallback, 0, &cf))
    {
      if (cf)
      {
        CFRelease(cf);
      }
    }

    else if (cf)
    {
      FigCFDictionaryGetBooleanIfPresent();
      if (v13)
      {
        FigBytePumpGetFigBaseObject();
        v10 = v9;
        v11 = *(*(CMBaseObjectGetVTable() + 8) + 56);
        if (v11)
        {
          v11(v10, 0x1F0B1F758, *MEMORY[0x1E695E4D0]);
        }
      }

      *a5 = cf;
    }
  }

  OUTLINED_FUNCTION_652();
}

uint64_t BytePumpNotificationHandler(uint64_t a1, uint64_t a2, const void *a3, uint64_t a4, const __CFDictionary *a5)
{
  FigSimpleMutexLock();
  if (*(a2 + 380) == 5 || *(a2 + 378))
  {
    return FigSimpleMutexUnlock();
  }

  if (CFEqual(a3, @"FBPAL_AlternateListChanged"))
  {
    v8 = *(a2 + 380);
    if (!v8)
    {
      *(a2 + 380) = 2;
      FigSimpleMutexLock();
      if (!*(a2 + 408))
      {
        FigBytePumpGetFigBaseObject();
        v17 = v16;
        v18 = *(*(CMBaseObjectGetVTable() + 8) + 48);
        if (v18)
        {
          v18(v17, 0x1F0B1F0B8, *MEMORY[0x1E695E480], a2 + 408);
        }

        *(a2 + 416) = *(a2 + 408) != 0;
      }

      FigSimpleMutexUnlock();
      goto LABEL_32;
    }

    if (v8 != 3 || *(a2 + 376))
    {
      return FigSimpleMutexUnlock();
    }

    if (*(*(CMBaseObjectGetVTable() + 16) + 32))
    {
      OUTLINED_FUNCTION_16_46();
      Code = v13(v9, v10, v11, v12);
    }

    else
    {
      Code = -12782;
    }

    v20 = 0;
  }

  else
  {
    if (CFEqual(a3, @"FBP_DurationChanged"))
    {
      v15 = 4;
LABEL_31:
      *(a2 + 380) = v15;
      *(a2 + 378) = 1;
LABEL_32:
      dispatch_semaphore_signal(*(a2 + 368));
      return FigSimpleMutexUnlock();
    }

    if (!CFEqual(a3, @"FBP_FatalErrorOccurred"))
    {
      return FigSimpleMutexUnlock();
    }

    if (!a5 || (Value = CFDictionaryGetValue(a5, @"FBPFEN_Error")) == 0)
    {
      *(a2 + 392) = -12645;
      v21 = *(a2 + 400);
      *(a2 + 400) = 0;
LABEL_27:
      if (v21)
      {
        CFRelease(v21);
      }

      v15 = 5;
      goto LABEL_31;
    }

    v20 = Value;
    Code = CFErrorGetCode(Value);
  }

  if (Code == -12646)
  {
    v15 = 1;
    goto LABEL_31;
  }

  if (Code)
  {
    *(a2 + 392) = Code;
    v21 = *(a2 + 400);
    *(a2 + 400) = v20;
    if (v20)
    {
      CFRetain(v20);
    }

    goto LABEL_27;
  }

  return FigSimpleMutexUnlock();
}

void BytePumpAbortAction(uint64_t a1)
{
  values = 0;
  FigCreateErrorForOSStatus(-12785, &values);
  v4 = 0;
  if (values)
  {
    v4 = CFDictionaryCreate(*MEMORY[0x1E695E480], &kFigBytePumpFatalErrorNotificationValue_Error, &values, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    v2 = values;
    if (values)
    {
      CFRelease(values);
    }
  }

  BytePumpNotificationHandler(v2, a1, @"FBP_FatalErrorOccurred", v3, v4);
  if (v4)
  {
    CFRelease(v4);
  }
}

void URLAssetDoneDownloadingDispatchFunc(uint64_t *a1)
{
  URLAssetDoneDownloadingGuts(a1, a1[20], 0);

  CFRelease(a1);
}

uint64_t ProduceTimeRangeAssetTrackProperty(uint64_t a1, CFDictionaryRef *a2)
{
  v7 = *MEMORY[0x1E6960CC0];
  *&v11.value = *MEMORY[0x1E6960CC0];
  v3 = *(MEMORY[0x1E6960CC0] + 16);
  v11.epoch = v3;
  TrackDuration = FigGaplessInfoGetTrackDuration(*(a1 + 16), *(a1 + 24), *(a1 + 64) == 0, &v11);
  if (!TrackDuration)
  {
    memset(&v10, 0, sizeof(v10));
    *&start.start.value = v7;
    start.start.epoch = v3;
    duration = v11;
    CMTimeRangeMake(&v10, &start.start, &duration);
    v5 = *MEMORY[0x1E695E480];
    start = v10;
    *a2 = CMTimeRangeCopyAsDictionary(&start, v5);
  }

  return TrackDuration;
}

uint64_t ProduceMediaPresentationTimeRangeAssetTrackProperty(uint64_t a1)
{
  v3 = *(*(OUTLINED_FUNCTION_18_41(a1) + 16) + 32);
  if (!v3)
  {
    goto LABEL_17;
  }

  v4 = v3(v2, &v41);
  if (v4)
  {
    goto LABEL_25;
  }

  if (!*(*(OUTLINED_FUNCTION_42_22() + 16) + 8))
  {
LABEL_17:
    v28 = 4294954514;
    goto LABEL_18;
  }

  OUTLINED_FUNCTION_25_31();
  OUTLINED_FUNCTION_197();
  v4 = v5();
  if (v4)
  {
LABEL_25:
    v28 = v4;
    goto LABEL_18;
  }

  v6 = v40;
  v7 = *(*(CMBaseObjectGetVTable() + 16) + 40);
  if (!v7)
  {
    goto LABEL_17;
  }

  v4 = v7(v40, &v37);
  if (v4)
  {
    goto LABEL_25;
  }

  if (!*(*(OUTLINED_FUNCTION_42_22() + 16) + 8))
  {
    goto LABEL_17;
  }

  OUTLINED_FUNCTION_25_31();
  OUTLINED_FUNCTION_197();
  v4 = v8();
  if (v4)
  {
    goto LABEL_25;
  }

  v9 = *(*(OUTLINED_FUNCTION_41_23() + 16) + 40);
  if (!v9)
  {
    goto LABEL_17;
  }

  v4 = v9(v6, &v35);
  if (v4)
  {
    goto LABEL_25;
  }

  v10 = *(*(OUTLINED_FUNCTION_41_23() + 16) + 56);
  if (!v10)
  {
    goto LABEL_17;
  }

  v4 = v10(v6, &v34);
  if (v4)
  {
    goto LABEL_25;
  }

  OUTLINED_FUNCTION_31_27();
  if (v11)
  {
    v32 = v35;
    v33 = v36;
    v31 = v34;
    OUTLINED_FUNCTION_8_70();
    v15 = CMTimeAdd(v14, v12, v13);
    OUTLINED_FUNCTION_803(v15, v16, v17, v18, v19, v20, v21, v22, v23, v24, v30.start.value);
  }

  v32 = v37;
  v33 = v38;
  v31 = v35;
  OUTLINED_FUNCTION_8_70();
  CMTimeRangeFromTimeToTime(v27, v25, v26);
  v28 = 0;
  *v1 = CMTimeRangeCopyAsDictionary(&v30, *MEMORY[0x1E695E480]);
LABEL_18:
  if (v40)
  {
    CFRelease(v40);
  }

  if (v39)
  {
    CFRelease(v39);
  }

  if (v41)
  {
    CFRelease(v41);
  }

  return v28;
}

uint64_t ProduceMediaDecodeTimeRangeAssetTrackProperty(uint64_t a1)
{
  v3 = *(*(OUTLINED_FUNCTION_18_41(a1) + 16) + 32);
  if (!v3)
  {
    goto LABEL_17;
  }

  v4 = v3(v2, &v41);
  if (v4)
  {
    goto LABEL_25;
  }

  v5 = *(*(OUTLINED_FUNCTION_42_22() + 16) + 24);
  if (!v5)
  {
LABEL_17:
    v28 = 4294954514;
    goto LABEL_18;
  }

  v4 = v5(v2, &v40);
  if (v4)
  {
LABEL_25:
    v28 = v4;
    goto LABEL_18;
  }

  v6 = v40;
  v7 = *(*(CMBaseObjectGetVTable() + 16) + 48);
  if (!v7)
  {
    goto LABEL_17;
  }

  v4 = v7(v6, &v37);
  if (v4)
  {
    goto LABEL_25;
  }

  v8 = *(*(OUTLINED_FUNCTION_42_22() + 16) + 32);
  if (!v8)
  {
    goto LABEL_17;
  }

  v4 = v8(v6, &v39);
  if (v4)
  {
    goto LABEL_25;
  }

  v9 = *(*(OUTLINED_FUNCTION_41_23() + 16) + 48);
  if (!v9)
  {
    goto LABEL_17;
  }

  v4 = v9(v6, &v35);
  if (v4)
  {
    goto LABEL_25;
  }

  v10 = *(*(OUTLINED_FUNCTION_41_23() + 16) + 56);
  if (!v10)
  {
    goto LABEL_17;
  }

  v4 = v10(v6, &v34);
  if (v4)
  {
    goto LABEL_25;
  }

  OUTLINED_FUNCTION_31_27();
  if (v11)
  {
    v32 = v35;
    v33 = v36;
    v31 = v34;
    OUTLINED_FUNCTION_8_70();
    v15 = CMTimeAdd(v14, v12, v13);
    OUTLINED_FUNCTION_803(v15, v16, v17, v18, v19, v20, v21, v22, v23, v24, v30.start.value);
  }

  v32 = v37;
  v33 = v38;
  v31 = v35;
  OUTLINED_FUNCTION_8_70();
  CMTimeRangeFromTimeToTime(v27, v25, v26);
  v28 = 0;
  *v1 = CMTimeRangeCopyAsDictionary(&v30, *MEMORY[0x1E695E480]);
LABEL_18:
  if (v40)
  {
    CFRelease(v40);
  }

  if (v39)
  {
    CFRelease(v39);
  }

  if (v41)
  {
    CFRelease(v41);
  }

  return v28;
}

uint64_t ProduceAssetTrackNonDroppableFrameRateProperty(uint64_t a1, CFNumberRef *a2)
{
  OUTLINED_FUNCTION_9_47(MEMORY[0x1E6960CC0]);
  v37 = 0;
  v38 = 0;
  memset(&v36, 0, sizeof(v36));
  CMTimeMake(&v36, 2, 1);
  valuePtr = 0.0;
  if (!a2 || !*(a1 + 16) || !*(a1 + 24))
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_3_5();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
    goto LABEL_36;
  }

  cf.value = 0;
  v4 = *MEMORY[0x1E695E480];
  FigFormatReaderGetFigBaseObject();
  v6 = v5;
  v7 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v7)
  {
    v7(v6, @"Identifier", v4, &cf);
  }

  v8 = FigCFEqual();
  if (cf.value)
  {
    CFRelease(cf.value);
  }

  if (!v8)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_3_5();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
    goto LABEL_36;
  }

  v9 = *(a1 + 24);
  v10 = *(*(CMBaseObjectGetVTable() + 16) + 32);
  if (!v10)
  {
    goto LABEL_28;
  }

  v11 = v10(v9, &v38);
  if (v11)
  {
    goto LABEL_36;
  }

  v12 = v38;
  v13 = *(*(CMBaseObjectGetVTable() + 16) + 24);
  if (!v13)
  {
LABEL_28:
    v28 = 4294954514;
    goto LABEL_29;
  }

  v11 = v13(v12, &v37);
  if (!v11)
  {
    v14 = 0;
    v15 = 1;
    while (1)
    {
      v16 = v14;
      v17 = v15;
      memset(&cf, 0, sizeof(cf));
      v33 = 0;
      v32 = 0;
      if (!*(*(CMBaseObjectGetVTable() + 16) + 64))
      {
        goto LABEL_28;
      }

      OUTLINED_FUNCTION_16_46();
      v11 = v18();
      if (v11)
      {
        break;
      }

      v19 = v33;
      if (v33)
      {
        ++v14;
      }

      v20 = v37;
      v21 = *(*(CMBaseObjectGetVTable() + 16) + 56);
      if (!v21)
      {
        goto LABEL_28;
      }

      v11 = v21(v20, &cf);
      if (v11)
      {
        break;
      }

      lhs = v39;
      v30 = cf;
      CMTimeAdd(&v39, &lhs, &v30);
      v22 = v37;
      v23 = *(*(CMBaseObjectGetVTable() + 16) + 168);
      if (!v23)
      {
        goto LABEL_28;
      }

      v11 = v23(v22, 1, &v32);
      if (v11)
      {
        break;
      }

      if (v32 == 1)
      {
        OUTLINED_FUNCTION_35_22();
        lhs = v36;
        v24 = CMTimeCompare(&cf, &lhs);
        v15 = v17 + 1;
        if (v24 < 0)
        {
          continue;
        }
      }

      if (v19)
      {
        v25 = v16 + 1;
      }

      else
      {
        v25 = v16;
      }

      v26 = (v17 - v25);
      OUTLINED_FUNCTION_35_22();
      v27 = v26 / CMTimeGetSeconds(&cf);
      valuePtr = v27;
      v28 = 0;
      *a2 = CFNumberCreate(v4, kCFNumberFloat32Type, &valuePtr);
      goto LABEL_29;
    }
  }

LABEL_36:
  v28 = v11;
LABEL_29:
  if (v38)
  {
    CFRelease(v38);
  }

  if (v37)
  {
    CFRelease(v37);
  }

  return v28;
}

uint64_t ProduceFormatSpecificMetadataAssetTrackProperty()
{
  OUTLINED_FUNCTION_39_20();
  FigTrackReaderGetFigBaseObject();
  if (!*(*(CMBaseObjectGetVTable() + 8) + 48))
  {
    return 0;
  }

  v1 = *MEMORY[0x1E695E480];
  v2 = OUTLINED_FUNCTION_26_23();
  v3(v2);
  if (!cf)
  {
    return 0;
  }

  v4 = FigMetadataCopyAllMetadataItems(v1, cf, v0);
  CFRelease(cf);
  return v4;
}

uint64_t ProduceFormatSpecificMetadataFormatAssetTrackProperty()
{
  OUTLINED_FUNCTION_39_20();
  FigTrackReaderGetFigBaseObject();
  if (!*(*(CMBaseObjectGetVTable() + 8) + 48))
  {
    return 0;
  }

  v1 = *MEMORY[0x1E695E480];
  v2 = OUTLINED_FUNCTION_17_41();
  v3(v2);
  if (!cf)
  {
    return 0;
  }

  FigMetadataReaderGetFigBaseObject();
  v5 = v4;
  v6 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v6)
  {
    v7 = v6(v5, @"format", v1, v0);
  }

  else
  {
    v7 = 4294954514;
  }

  CFRelease(cf);
  return v7;
}

CFIndex ProduceAvailableMetadataFormatsAssetTrackProperty()
{
  OUTLINED_FUNCTION_39_20();
  FigTrackReaderGetFigBaseObject();
  if (*(*(CMBaseObjectGetVTable() + 8) + 48))
  {
    v1 = *MEMORY[0x1E695E480];
    v2 = OUTLINED_FUNCTION_26_23();
    v4 = v3(v2);
    if (v4)
    {
      Count = v4;
    }

    else
    {
      if (!theArray)
      {
        Mutable = 0;
        Count = 0;
        goto LABEL_18;
      }

      Count = CFArrayGetCount(theArray);
      if (Count)
      {
        Mutable = CFArrayCreateMutable(v1, 0, MEMORY[0x1E695E9C0]);
        if (Count >= 1)
        {
          for (i = 0; i != Count; ++i)
          {
            CFArrayGetValueAtIndex(theArray, i);
            value = 0;
            FigMetadataReaderGetFigBaseObject();
            v9 = v8;
            v10 = *(*(CMBaseObjectGetVTable() + 8) + 48);
            if (v10 && !v10(v9, @"format", v1, &value))
            {
              CFArrayAppendValue(Mutable, value);
              CFRelease(value);
            }
          }
        }

        Count = 0;
        if (CFArrayGetCount(Mutable) || !Mutable)
        {
          goto LABEL_16;
        }

        CFRelease(Mutable);
        Count = 0;
      }
    }

    Mutable = 0;
  }

  else
  {
    Mutable = 0;
    Count = 4294954514;
  }

LABEL_16:
  if (theArray)
  {
    CFRelease(theArray);
  }

LABEL_18:
  *v0 = Mutable;
  return Count;
}

uint64_t ProduceLoudnessInfoTrackProperty(uint64_t a1, CFDictionaryRef *a2)
{
  v22 = 0;
  value = 0;
  theDict = 0;
  number = 0;
  v3 = *(a1 + 24);
  v4 = *(*(CMBaseObjectGetVTable() + 16) + 8);
  if (!v4)
  {
    v15 = 4294954514;
    goto LABEL_20;
  }

  v5 = v4(v3, 0, &v22);
  if (v5)
  {
    goto LABEL_28;
  }

  if (v22 != 1936684398)
  {
    v15 = 0;
    *a2 = 0;
    goto LABEL_20;
  }

  v6 = *MEMORY[0x1E695E480];
  FigTrackReaderGetFigBaseObject();
  v8 = v7;
  v9 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v9)
  {
    v9(v8, @"LoudnessInfo", v6, &theDict);
  }

  if (!theDict || !CFDictionaryGetValue(theDict, @"sound check info"))
  {
    FigFormatReaderGetFigBaseObject();
    v11 = v10;
    v12 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v12)
    {
      v12(v11, @"SoundCheckInfo", v6, &value);
    }
  }

  FigFormatReaderGetFigBaseObject();
  if (*(*(CMBaseObjectGetVTable() + 8) + 48))
  {
    v13 = OUTLINED_FUNCTION_188();
    v14(v13);
  }

  if (FigCFDictionaryGetCount() <= 0)
  {
    v15 = 0;
    *a2 = theDict;
    theDict = 0;
    goto LABEL_20;
  }

  MutableCopy = FigCFDictionaryCreateMutableCopy();
  if (!MutableCopy)
  {
    fig_log_get_emitter();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", 0, value, theDict);
LABEL_28:
    v15 = v5;
    goto LABEL_20;
  }

  v17 = MutableCopy;
  if (FigCFDictionaryGetCount() >= 1)
  {
    CFDictionarySetValue(v17, @"sound check info", value);
  }

  v15 = 0;
  *a2 = v17;
LABEL_20:
  if (value)
  {
    CFRelease(value);
  }

  if (number)
  {
    CFRelease(number);
  }

  if (theDict)
  {
    CFRelease(theDict);
  }

  return v15;
}

uint64_t AddChapterTrackInfoToArray(uint64_t a1, uint64_t a2, const void *a3, uint64_t a4)
{
  value = 0;
  cf = 0;
  v29 = 0;
  v30 = 0;
  valuePtr = a2;
  if (a2 <= 0 || !a3 || !a4)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_3_5();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
    v21 = v25;
    v19 = 0;
    v9 = 0;
    goto LABEL_17;
  }

  v7 = *MEMORY[0x1E695E480];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 4, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v9 = Mutable;
  if (!Mutable)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_3_5();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v26, v27, v29);
    goto LABEL_39;
  }

  OUTLINED_FUNCTION_43_19(Mutable, @"chapterGroupKey_Type");
  v10 = *(a1 + 240);
  v11 = *(*(CMBaseObjectGetVTable() + 16) + 56);
  if (!v11)
  {
    goto LABEL_16;
  }

  v12 = v11(v10, a2, &cf, 0);
  if (v12)
  {
LABEL_39:
    v21 = v12;
    v19 = 0;
    goto LABEL_17;
  }

  FigTrackReaderGetFigBaseObject();
  v14 = v13;
  v15 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v15)
  {
LABEL_16:
    v19 = 0;
    v21 = 4294954514;
    goto LABEL_17;
  }

  v12 = v15(v14, @"TrackLanguageCode", v7, &value);
  if (v12)
  {
    goto LABEL_39;
  }

  CFDictionarySetValue(v9, @"chapterGroupKey_Language", value);
  FigTrackReaderGetFigBaseObject();
  v17 = v16;
  v18 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v18)
  {
    v18(v17, @"ExtendedLanguageTagString", v7, &v30);
    if (v30)
    {
      CFDictionarySetValue(v9, @"chapterGroupKey_ExtendedLanguage", v30);
    }
  }

  v19 = CFNumberCreate(v7, kCFNumberSInt32Type, &valuePtr);
  if (v19)
  {
    CFDictionarySetValue(v9, @"chapterGroupKey_TrackID", v19);
  }

  if (CFEqual(a3, @"title"))
  {
    MutableChapterTitleTimesArrayForTrack = FCSupport_CreateMutableChapterTitleTimesArrayForTrack(*(a1 + 240), a2, 0, &v29);
  }

  else if (CFEqual(a3, @"artwork"))
  {
    MutableChapterTitleTimesArrayForTrack = FCSupport_CreateMutableChapterImageTimesArrayForTrack(*(a1 + 240), a2, &v29);
  }

  else
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_3_5();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v26, v27, v29);
  }

  v21 = MutableChapterTitleTimesArrayForTrack;
  if (!MutableChapterTitleTimesArrayForTrack)
  {
    if (v29)
    {
      CFDictionarySetValue(v9, @"chapterGroupKey_PerChapterInfo", v29);
    }

    v23 = OUTLINED_FUNCTION_177();
    CFArrayAppendValue(v23, v24);
    v21 = 0;
  }

LABEL_17:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v19)
  {
    CFRelease(v19);
  }

  if (v30)
  {
    CFRelease(v30);
  }

  if (value)
  {
    CFRelease(value);
  }

  if (v29)
  {
    CFRelease(v29);
  }

  if (v9)
  {
    CFRelease(v9);
  }

  return v21;
}

uint64_t StreamingAssetCopyHLSAlternates(uint64_t a1, void *a2)
{
  theDict = 0;
  v18 = 0;
  cf = 0;
  FigBytePumpGetFigBaseObject();
  v4 = v3;
  v5 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v5 && (v6 = *MEMORY[0x1E695E480], !v5(v4, 0x1F0B1EE98, *MEMORY[0x1E695E480], &theDict)) && theDict)
  {
    Value = CFDictionaryGetValue(theDict, @"FBPAIK_FigAlternateArray");
    v8 = FigAlternateContinuousFramesOnlyFilterCreate(v6, &cf);
    if (v8)
    {
      goto LABEL_23;
    }

    v9 = cf;
    v10 = *(*(CMBaseObjectGetVTable() + 16) + 24);
    if (!v10)
    {
      v11 = 4294954514;
      goto LABEL_12;
    }

    v8 = v10(v9, Value, &v18);
    if (v8)
    {
LABEL_23:
      v11 = v8;
    }

    else if (*a2)
    {
      v11 = 0;
    }

    else
    {
      v15 = v18;
      if (v18)
      {
        v15 = CFRetain(v18);
      }

      v11 = 0;
      *a2 = v15;
    }
  }

  else
  {
    OUTLINED_FUNCTION_24_29();
    if (v13)
    {
      v11 = 0;
    }

    else
    {
      v11 = v12;
    }
  }

LABEL_12:
  if (theDict)
  {
    CFRelease(theDict);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (v18)
  {
    CFRelease(v18);
  }

  return v11;
}

uint64_t StreamingAssetProduceCustomMediaSelectionScheme()
{
  OUTLINED_FUNCTION_39_20();
  FigBytePumpGetFigBaseObject();
  if (*(*(CMBaseObjectGetVTable() + 8) + 48))
  {
    v1 = OUTLINED_FUNCTION_26_23();
    v2(v1);
    OUTLINED_FUNCTION_24_29();
    if (v4)
    {
      CustomMediaSelectionSchemeFromJSON = 0;
    }

    else
    {
      CustomMediaSelectionSchemeFromJSON = v3;
      if (!v3)
      {
        CustomMediaSelectionSchemeFromJSON = FigAssetCreateCustomMediaSelectionSchemeFromJSON(cf, v0);
      }
    }
  }

  else
  {
    CustomMediaSelectionSchemeFromJSON = 4294954514;
  }

  if (cf)
  {
    CFRelease(cf);
  }

  return CustomMediaSelectionSchemeFromJSON;
}

uint64_t ProduceDurationProperty()
{
  OUTLINED_FUNCTION_471();
  result = EnsureFormatReaderCreated(v1, v2);
  if (!result)
  {
    if (*(v0 + 464))
    {
      DefaultLocalCenter = CMNotificationCenterGetDefaultLocalCenter();
      OUTLINED_FUNCTION_10_61(DefaultLocalCenter);
      *(v0 + 465) = 1;
    }

    v5 = OUTLINED_FUNCTION_177();

    return ObtainDurationPropertyValue(v5, v6);
  }

  return result;
}

uint64_t ProduceLyricsProperty()
{
  OUTLINED_FUNCTION_375_0();
  v2 = EnsureFormatReaderCreated(v0, v1);
  if (!v2)
  {
    FigFormatReaderGetFigBaseObject();
    if (*(*(CMBaseObjectGetVTable() + 8) + 48))
    {
      v3 = OUTLINED_FUNCTION_21_34();
      v4(v3);
    }
  }

  return v2;
}

uint64_t ProducePreferredRateProperty()
{
  OUTLINED_FUNCTION_471();
  result = EnsureFormatReaderCreated(v1, v2);
  if (!result)
  {
    FigFormatReaderGetFigBaseObject();
    v5 = v4;
    v6 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v6)
    {
      v7 = *MEMORY[0x1E695E480];

      return v6(v5, @"PreferredRate", v7, v0);
    }

    else
    {
      return 4294954514;
    }
  }

  return result;
}

uint64_t ProducePreferredVolumeProperty()
{
  OUTLINED_FUNCTION_471();
  result = EnsureFormatReaderCreated(v1, v2);
  if (!result)
  {
    FigFormatReaderGetFigBaseObject();
    v5 = v4;
    v6 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v6)
    {
      v7 = *MEMORY[0x1E695E480];

      return v6(v5, @"PreferredVolume", v7, v0);
    }

    else
    {
      return 4294954514;
    }
  }

  return result;
}

uint64_t ProducePreferredTransformProperty()
{
  OUTLINED_FUNCTION_471();
  result = EnsureFormatReaderCreated(v1, v2);
  if (!result)
  {
    FigFormatReaderGetFigBaseObject();
    v5 = v4;
    v6 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v6)
    {
      v7 = *MEMORY[0x1E695E480];

      return v6(v5, @"MovieMatrix", v7, v0);
    }

    else
    {
      return 4294954514;
    }
  }

  return result;
}

uint64_t ProduceTrackReferencesProperty()
{
  OUTLINED_FUNCTION_471();
  result = EnsureFormatReaderCreated(v1, v2);
  if (result)
  {
    v4 = 0;
  }

  else
  {
    FigFormatReaderGetFigBaseObject();
    v4 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v4)
    {
      v5 = OUTLINED_FUNCTION_26_23();
      result = v6(v5);
      v4 = 0;
    }

    else
    {
      result = 4294954514;
    }
  }

  *v0 = v4;
  return result;
}

uint64_t ProduceAlternateTrackGroupsProperty()
{
  OUTLINED_FUNCTION_471();
  result = EnsureFormatReaderCreated(v1, v2);
  if (result)
  {
    v4 = 0;
  }

  else
  {
    FigFormatReaderGetFigBaseObject();
    v4 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v4)
    {
      v5 = OUTLINED_FUNCTION_26_23();
      result = v6(v5);
      v4 = 0;
    }

    else
    {
      result = 4294954514;
    }
  }

  *v0 = v4;
  return result;
}

uint64_t ProducePreciseDurationAndTimingProperty()
{
  OUTLINED_FUNCTION_471();
  result = EnsureFormatReaderCreated(v1, v2);
  if (result)
  {
    v4 = 0;
  }

  else
  {
    FigFormatReaderGetFigBaseObject();
    v4 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v4)
    {
      v5 = OUTLINED_FUNCTION_26_23();
      result = v6(v5);
      v4 = 0;
      if (!result)
      {
        v4 = CFRetain(*MEMORY[0x1E695E4C0]);
        result = 0;
      }
    }

    else
    {
      result = 4294954514;
    }
  }

  *v0 = v4;
  return result;
}

uint64_t ProduceAvailableMetadataFormatsProperty()
{
  OUTLINED_FUNCTION_375_0();
  theArray = 0;
  v3 = EnsureFormatReaderCreated(v1, v2);
  if (!v3)
  {
    FigFormatReaderGetFigBaseObject();
    if (*(*(CMBaseObjectGetVTable() + 8) + 48))
    {
      v4 = OUTLINED_FUNCTION_17_41();
      v5(v4);
    }
  }

  *v0 = 0;
  return v3;
}

uint64_t ProduceFormatSpecificMetadataFormatProperty()
{
  OUTLINED_FUNCTION_375_0();
  v2 = EnsureFormatReaderCreated(v0, v1);
  if (v2)
  {
    return v2;
  }

  FigFormatReaderGetFigBaseObject();
  if (*(*(CMBaseObjectGetVTable() + 8) + 48))
  {
    v3 = OUTLINED_FUNCTION_17_41();
    v4(v3);
  }

  return 0;
}

uint64_t ProduceCommonMetadataProperty()
{
  OUTLINED_FUNCTION_471();
  result = EnsureFormatReaderCreated(v2, v3);
  if (!result)
  {
    v5 = *(v1 + 240);
    v6 = *MEMORY[0x1E695E480];

    return FigMetadataCopyMovieCommonMetadata(v5, v6, v0);
  }

  return result;
}

void ProduceMetadataPropertyFromMetadataReader(void *a1, uint64_t a2, uint64_t a3)
{
  if (!EnsureFormatReaderCreated(a1, a2))
  {
    FigFormatReaderGetFigBaseObject();
    if (*(*(CMBaseObjectGetVTable() + 8) + 48))
    {
      v4 = *MEMORY[0x1E695E480];
      v5 = OUTLINED_FUNCTION_26_23();
      v6(v5, a3, v4);
    }
  }

  OUTLINED_FUNCTION_652();
}

uint64_t ProduceChapterGroupInfoProperty()
{
  OUTLINED_FUNCTION_375_0();
  v4 = EnsureChapterGroupInfoCreated(v2, v3);
  if (!v4)
  {
    v5 = *(v1 + 328);
    if (v5)
    {
      Copy = CFArrayCreateCopy(*MEMORY[0x1E695E480], v5);
    }

    else
    {
      Copy = 0;
    }

    *v0 = Copy;
  }

  return v4;
}

uint64_t ProduceCreationDateProperty()
{
  OUTLINED_FUNCTION_471();
  result = EnsureFormatReaderCreated(v1, v2);
  if (result)
  {
    v4 = 0;
  }

  else
  {
    FigFormatReaderGetFigBaseObject();
    v4 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v4)
    {
      v5 = OUTLINED_FUNCTION_26_23();
      result = v6(v5);
      v4 = 0;
    }

    else
    {
      result = 4294954514;
    }
  }

  *v0 = v4;
  return result;
}

uint64_t ProduceInitialSamplesProperty()
{
  OUTLINED_FUNCTION_471();
  v131 = *MEMORY[0x1E69E9840];
  v110 = 0;
  v2 = MEMORY[0x1E6960CC0];
  value = *MEMORY[0x1E6960CC0];
  timescale = *(MEMORY[0x1E6960CC0] + 8);
  v5 = EnsureFormatReaderCreated(v3, v4);
  if (v5)
  {
    goto LABEL_70;
  }

  v6 = *(v1 + 240);
  v7 = *(*(CMBaseObjectGetVTable() + 16) + 8);
  if (!v7)
  {
    v102 = MEMORY[0x1E695E4C0];
    v11 = 4294954514;
    goto LABEL_67;
  }

  v5 = v7(v6, &v110);
  if (v5)
  {
LABEL_70:
    v11 = v5;
LABEL_65:
    v102 = MEMORY[0x1E695E4C0];
    goto LABEL_67;
  }

  v8 = *(v2 + 12);
  v9 = *(v2 + 16);
  if (*(v1 + 88))
  {
    DictionaryValue = FigCFDictionaryGetDictionaryValue();
    if (DictionaryValue)
    {
      CMTimeMakeFromDictionary(v118, DictionaryValue);
      fromRange.start.value = *v118;
      fromRange.start.timescale = *&v118[8];
      if ((v118[12] & 0x1D) == 1)
      {
        v9 = *&v118[16];
        value = fromRange.start.value;
        timescale = fromRange.start.timescale;
        v8 = *&v118[12];
      }
    }
  }

  if (v110 < 1)
  {
    goto LABEL_66;
  }

  LODWORD(v11) = 0;
  v12 = 0;
  v13 = *MEMORY[0x1E695E480];
  v105 = @"EditCursorService";
  do
  {
    v126 = 0;
    v127.value = value;
    v127.timescale = timescale;
    v127.flags = v8;
    v127.epoch = v9;
    v124 = 0;
    v125 = 0;
    v123 = 0;
    v121 = 0u;
    v122 = 0u;
    v119 = 0u;
    v120 = 0u;
    memset(v118, 0, sizeof(v118));
    v116 = 0;
    v117 = 0;
    cf = 0;
    if (!*(*(CMBaseObjectGetVTable() + 16) + 48))
    {
LABEL_39:
      v24 = -12782;
      goto LABEL_40;
    }

    OUTLINED_FUNCTION_197();
    LODWORD(v15) = v14();
    if (v15)
    {
      goto LABEL_62;
    }

    v16 = v126;
    v17 = *(*(CMBaseObjectGetVTable() + 16) + 32);
    if (!v17)
    {
      goto LABEL_39;
    }

    LODWORD(v15) = v17(v16, &v125);
    if (v15)
    {
LABEL_62:
      v24 = v15;
      goto LABEL_40;
    }

    FigTrackReaderGetFigBaseObject();
    v19 = v18;
    v20 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v20)
    {
      v20(v19, @"SecondaryEditCursorService", v13, &v124);
    }

    v21 = v124;
    if (v124)
    {
      v22 = *(*(CMBaseObjectGetVTable() + 16) + 8);
      if (!v22)
      {
        goto LABEL_39;
      }

      fromRange.start = v127;
      v23 = v22(v21, &fromRange, &v123);
      if (v23 == -12521)
      {
        goto LABEL_35;
      }

      v24 = v23;
      if (v23)
      {
        goto LABEL_40;
      }

      v25 = WalkEditCursorToNonEmptyEdit(v123);
      if (v25 == -12520)
      {
        goto LABEL_35;
      }

      v24 = v25;
      if (v25)
      {
        goto LABEL_40;
      }

      v26 = v123;
      v27 = *(*(CMBaseObjectGetVTable() + 16) + 24);
      if (!v27)
      {
        goto LABEL_39;
      }

      v15 = v27(v26, v118);
      if (v15)
      {
        goto LABEL_62;
      }

      *&toRange.duration.timescale = OUTLINED_FUNCTION_19_39(v15, v28, v29, v30, v31, v32, v33, v34, v105, v110, v111.value, *&v111.timescale, v111.epoch, v112, toRange.start.value, *&toRange.start.timescale, toRange.start.epoch, toRange.duration.value, *&toRange.duration.timescale, toRange.duration.epoch, v114.value, *&v114.timescale, v127.epoch, cf, v116, v117, *v118, *&v118[8], *&v118[16], *&v118[24], v119, *(&v119 + 1), v120, v121, v122);
      *&v114.value = v35;
      CMTimeMapTimeFromRangeToRange(&v127, &v114, &fromRange, &toRange);
      v36 = OUTLINED_FUNCTION_22_33(v127.epoch, v106, v110, v111.value, *&v111.timescale, v111.epoch, v112, toRange.start.value, *&toRange.start.timescale, toRange.start.epoch, toRange.duration.value, *&toRange.duration.timescale, toRange.duration.epoch, v127.value, *&v127.timescale, v114.epoch);
      OUTLINED_FUNCTION_37_25(v36, v37, v38, v39, v40, v41, v42, v43, v44, v107, v110, v111.value, *&v111.timescale, v111.epoch, v112, v45, toRange.start.value);
    }

    FigTrackReaderGetFigBaseObject();
    v47 = v46;
    v48 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v48)
    {
      v48(v47, v105, v13, &v117);
      v49 = v117;
      if (v117)
      {
        v50 = OUTLINED_FUNCTION_29_27();
        v61 = *(v50 + 16);
        v60 = v50 + 16;
        if (!*(v61 + 8))
        {
          goto LABEL_39;
        }

        v62 = OUTLINED_FUNCTION_27_28(v60, v51, v52, v53, v54, v55, v56, v57, v58, v105, v110, v111.value, *&v111.timescale, v111.epoch, v112, v59, toRange.start.value);
        v64 = v63(v49, v62);
        if (v64 != -12521)
        {
          v24 = v64;
          if (v64)
          {
            goto LABEL_40;
          }

          v65 = WalkEditCursorToNonEmptyEdit(v116);
          if (v65 != -12520)
          {
            v24 = v65;
            if (v65)
            {
              goto LABEL_40;
            }

            v66 = v116;
            v67 = *(*(CMBaseObjectGetVTable() + 16) + 24);
            if (!v67)
            {
              goto LABEL_39;
            }

            v15 = v67(v66, v118);
            if (v15)
            {
              goto LABEL_62;
            }

            *&toRange.duration.timescale = OUTLINED_FUNCTION_19_39(v15, v68, v69, v70, v71, v72, v73, v74, v105, v110, v127.value, *&v127.timescale, v127.epoch, v112, toRange.start.value, *&toRange.start.timescale, toRange.start.epoch, toRange.duration.value, *&toRange.duration.timescale, toRange.duration.epoch, v114.value, *&v114.timescale, v114.epoch, cf, v116, v117, *v118, *&v118[8], *&v118[16], *&v118[24], v119, *(&v119 + 1), v120, v121, v122);
            CMTimeMapTimeFromRangeToRange(&v114, &v111, &fromRange, &toRange);
            v127 = v114;
            v75 = OUTLINED_FUNCTION_22_33(v114.epoch, v108, v110, v111.value, *&v111.timescale, v111.epoch, v112, toRange.start.value, *&toRange.start.timescale, toRange.start.epoch, toRange.duration.value, *&toRange.duration.timescale, toRange.duration.epoch, v114.value, *&v114.timescale, v114.epoch);
            OUTLINED_FUNCTION_37_25(v75, v76, v77, v78, v79, v80, v81, v82, v83, v109, v110, v111.value, *&v111.timescale, v111.epoch, v112, v84, toRange.start.value);
          }
        }
      }
    }

LABEL_35:
    v85 = v125;
    v86 = OUTLINED_FUNCTION_29_27();
    v97 = *(v86 + 16);
    v96 = v86 + 16;
    if (!*(v97 + 16))
    {
      goto LABEL_39;
    }

    v98 = OUTLINED_FUNCTION_27_28(v96, v87, v88, v89, v90, v91, v92, v93, v94, v105, v110, v111.value, *&v111.timescale, v111.epoch, v112, v95, toRange.start.value);
    v100 = v99(v85, v98);
    if (v100 == -12842)
    {
      v24 = 0;
    }

    else
    {
      v24 = v100;
    }

LABEL_40:
    if (v126)
    {
      CFRelease(v126);
    }

    if (cf)
    {
      CFRelease(cf);
    }

    if (v125)
    {
      CFRelease(v125);
    }

    if (v116)
    {
      CFRelease(v116);
    }

    if (v117)
    {
      CFRelease(v117);
    }

    if (v123)
    {
      CFRelease(v123);
    }

    if (v124)
    {
      CFRelease(v124);
    }

    if (v24)
    {
      v101 = v11 == 0;
    }

    else
    {
      v101 = 0;
    }

    if (v101)
    {
      v11 = v24;
    }

    else
    {
      v11 = v11;
    }

    ++v12;
  }

  while (v12 < v110);
  if (v11)
  {
    goto LABEL_65;
  }

LABEL_66:
  v11 = 0;
  v102 = MEMORY[0x1E695E4D0];
LABEL_67:
  v103 = *v102;
  if (*v102)
  {
    v103 = CFRetain(v103);
  }

  *v0 = v103;
  return v11;
}

uint64_t ProduceCPEProtectorProperty()
{
  OUTLINED_FUNCTION_471();
  v26[2] = *MEMORY[0x1E69E9840];
  v21 = 0;
  v22 = 0;
  v20 = 0;
  v4 = EnsureFormatReaderCreated(v2, v3);
  if (v4)
  {
    v17 = v4;
    v7 = 0;
    goto LABEL_19;
  }

  GetContentProtectionOptions(v1, &v22, &v21, &v20);
  v5 = v21;
  v6 = v22;
  if (v20 || v22 || v21)
  {
    keys = 0;
    v26[0] = 0;
    v26[1] = 0;
    values = 0;
    v24[0] = 0;
    v24[1] = 0;
    if (v20)
    {
      p_values = v24;
      p_keys = v26;
      keys = @"StorageURL";
      values = v20;
      v10 = 1;
      if (!v22)
      {
LABEL_9:
        if (v5)
        {
          v26[v10 - 1] = 0x1F0B52958;
          v24[v10++ - 1] = v5;
        }

        v7 = CFDictionaryCreate(*MEMORY[0x1E695E480], &keys, &values, v10, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
        goto LABEL_12;
      }
    }

    else
    {
      v10 = 0;
      p_keys = &keys;
      p_values = &values;
      if (!v22)
      {
        goto LABEL_9;
      }
    }

    *p_keys = @"AE50A074-4909-4EBC-8ADF-C8DDD5F591AA";
    *p_values = v6;
    ++v10;
    goto LABEL_9;
  }

  v7 = 0;
LABEL_12:
  v11 = OUTLINED_FUNCTION_188();
  v15 = FigCPEProtectorCreateForFormatReader(v11, v12, v13, v14);
  if (v15)
  {
    v16 = v15 == -12165;
  }

  else
  {
    v16 = 1;
  }

  if (v16)
  {
    v17 = 0;
    if (*(v1 + 344))
    {
      *(v1 + 352) = 257;
    }
  }

  else
  {
    v17 = v15;
  }

LABEL_19:
  v18 = *(v1 + 344);
  if (v18)
  {
    v18 = CFRetain(v18);
  }

  *v0 = v18;
  if (v7)
  {
    CFRelease(v7);
  }

  return v17;
}

uint64_t ProduceMediaSelectionArrayProperty()
{
  OUTLINED_FUNCTION_471();
  v10 = 0;
  cf = 0;
  v4 = EnsureFormatReaderCreated(v2, v3);
  if (v4)
  {
    v8 = v4;
    goto LABEL_10;
  }

  if (!*(v1 + 88) || (ArrayValue = FigCFDictionaryGetArrayValue()) == 0)
  {
    v7 = 0;
    goto LABEL_7;
  }

  SanitizedOutOfBandAlternateTracksArray = CreateSanitizedOutOfBandAlternateTracksArray(ArrayValue, &cf);
  v7 = cf;
  if (!SanitizedOutOfBandAlternateTracksArray)
  {
LABEL_7:
    SanitizedOutOfBandAlternateTracksArray = FigCreateMediaSelectionArrayFromFormatReaderProperties(*(v1 + 240), 1, v7, &v10);
  }

  v8 = SanitizedOutOfBandAlternateTracksArray;
  if (v7)
  {
    CFRelease(v7);
  }

LABEL_10:
  *v0 = v10;
  return v8;
}

uint64_t ProduceiTunesGaplessInfoProperty()
{
  OUTLINED_FUNCTION_375_0();
  v2 = EnsureFormatReaderCreated(v0, v1);
  if (!v2)
  {
    FigFormatReaderGetFigBaseObject();
    if (*(*(CMBaseObjectGetVTable() + 8) + 48))
    {
      v3 = OUTLINED_FUNCTION_21_34();
      v4(v3);
    }
  }

  return v2;
}

uint64_t ProduceiTunesSoundCheckVolumeNormalizationProperty()
{
  OUTLINED_FUNCTION_375_0();
  v2 = EnsureFormatReaderCreated(v0, v1);
  if (!v2)
  {
    FigFormatReaderGetFigBaseObject();
    if (*(*(CMBaseObjectGetVTable() + 8) + 48))
    {
      v3 = OUTLINED_FUNCTION_21_34();
      v4(v3);
    }
  }

  return v2;
}

uint64_t ProduceCouldContainFragmentsProperty()
{
  OUTLINED_FUNCTION_471();
  v3 = EnsureFormatReaderCreated(v1, v2);
  if (!v3)
  {
    if (*(v0 + 464))
    {
      DefaultLocalCenter = CMNotificationCenterGetDefaultLocalCenter();
      OUTLINED_FUNCTION_10_61(DefaultLocalCenter);
      *(v0 + 466) = 1;
    }

    v5 = OUTLINED_FUNCTION_177();
    ObtainCouldContainFragmentsPropertyValue(v5, v6);
  }

  return v3;
}

uint64_t ProduceContainsFragmentsProperty()
{
  OUTLINED_FUNCTION_471();
  v3 = EnsureFormatReaderCreated(v1, v2);
  if (!v3)
  {
    if (*(v0 + 464))
    {
      DefaultLocalCenter = CMNotificationCenterGetDefaultLocalCenter();
      OUTLINED_FUNCTION_10_61(DefaultLocalCenter);
      *(v0 + 467) = 1;
    }

    v5 = OUTLINED_FUNCTION_177();
    ObtainContainsFragmentsPropertyValue(v5, v6);
  }

  return v3;
}

uint64_t ProduceMovieExtendsDurationProperty()
{
  OUTLINED_FUNCTION_375_0();
  v2 = EnsureFormatReaderCreated(v0, v1);
  if (!v2)
  {
    FigFormatReaderGetFigBaseObject();
    if (*(*(CMBaseObjectGetVTable() + 8) + 48))
    {
      v3 = OUTLINED_FUNCTION_21_34();
      v4(v3);
    }
  }

  return v2;
}

CFNumberRef ProduceAssetCameraRollValidationProperty(void *a1, uint64_t a2, CFNumberRef *a3)
{
  ProduceAssetValidationResult(a1, a2, @"validationCriteria_CameraRoll", 0);
  valuePtr = v4;
  result = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt32Type, &valuePtr);
  *a3 = result;
  return result;
}

CFNumberRef ProduceAssetMediaPlaybackValidationProperty(void *a1, uint64_t a2, CFNumberRef *a3)
{
  ProduceAssetValidationResult(a1, a2, @"validationCriteria_MediaPlayback", 0);
  valuePtr = v4;
  result = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt32Type, &valuePtr);
  *a3 = result;
  return result;
}

void ProduceAssetCompatibleWithPhotosTranscodingServiceProperty(void *a1, uint64_t a2, CFTypeRef *a3)
{
  ProduceAssetIsSelfContainedProperty();
  v6 = *MEMORY[0x1E695E4D0];
  OUTLINED_FUNCTION_171();
  if (FigCFEqual() == 1)
  {
    ProduceAssetValidationResult(a1, a2, @"validationCriteria_PhotosTranscodingService", 0);
    v8 = v7 != 0;
  }

  else
  {
    v8 = 1;
  }

  if (v8)
  {
    v9 = *MEMORY[0x1E695E4C0];
  }

  else
  {
    v9 = v6;
  }

  *a3 = CFRetain(v9);
  OUTLINED_FUNCTION_652();
}

uint64_t ProduceChaptersProperty()
{
  OUTLINED_FUNCTION_375_0();
  v2 = EnsureFormatReaderCreated(v0, v1);
  if (!v2)
  {
    FigFormatReaderGetFigBaseObject();
    if (*(*(CMBaseObjectGetVTable() + 8) + 48))
    {
      v3 = OUTLINED_FUNCTION_21_34();
      v4(v3);
    }
  }

  return v2;
}

uint64_t ProduceFigStdAssetOptionalProperty(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = EnsureFormatReaderCreated(a1, a2);
  if (!v5)
  {
    *a4 = 0;
    FigFormatReaderGetFigBaseObject();
    if (*(*(CMBaseObjectGetVTable() + 8) + 48))
    {
      v6 = OUTLINED_FUNCTION_104_0();
      v7(v6);
    }
  }

  return v5;
}

void ProduceMovieProxyProperty(void *a1, uint64_t a2, CFTypeRef *a3)
{
  cf = 0;
  if (!EnsureFormatReaderCreated(a1, a2))
  {
    if (*(a2 + 160))
    {
      v5 = *MEMORY[0x1E695E480];
      FigFormatReaderGetFigBaseObject();
      v7 = v6;
      v8 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      if (v8)
      {
        v8(v7, @"Identifier", v5, &cf);
      }

      if (FigCFEqual())
      {
        MovieProxyDataCreateForByteStream(v5, *(a2 + 160), a3);
      }

      else
      {
        fig_log_get_emitter();
        OUTLINED_FUNCTION_0_4();
        FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
      }
    }

    else
    {
      fig_log_get_emitter();
      OUTLINED_FUNCTION_0_4();
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
    }

    if (cf)
    {
      CFRelease(cf);
    }
  }

  OUTLINED_FUNCTION_652();
}

uint64_t ProduceAssetIsSelfContainedProperty()
{
  OUTLINED_FUNCTION_375_0();
  v3 = EnsureFormatReaderCreated(v1, v2);
  if (!v3)
  {
    FigFormatReaderGetFigBaseObject();
    if (*(*(CMBaseObjectGetVTable() + 8) + 48))
    {
      v4 = OUTLINED_FUNCTION_17_41();
      v5(v4);
    }

    v6 = *MEMORY[0x1E695E4C0];
    if (*MEMORY[0x1E695E4C0])
    {
      v6 = *MEMORY[0x1E695E4D0];
    }

    if (v6)
    {
      v6 = CFRetain(v6);
    }

    *v0 = v6;
  }

  return v3;
}

uint64_t ProduceAssetNaturalTimeScaleProperty(void *a1, uint64_t a2, void *a3)
{
  v4 = EnsureFormatReaderCreated(a1, a2);
  if (!v4)
  {
    FigFormatReaderGetFigBaseObject();
    if (*(*(CMBaseObjectGetVTable() + 8) + 48))
    {
      v5 = OUTLINED_FUNCTION_17_41();
      v6(v5);
    }

    *a3 = 0;
  }

  return v4;
}

uint64_t ProduceAssetAnalysisMessagesProperty()
{
  OUTLINED_FUNCTION_375_0();
  v2 = EnsureFormatReaderCreated(v0, v1);
  if (!v2)
  {
    FigFormatReaderGetFigBaseObject();
    if (*(*(CMBaseObjectGetVTable() + 8) + 48))
    {
      v3 = OUTLINED_FUNCTION_21_34();
      v4(v3);
    }
  }

  return v2;
}

uint64_t ProduceIsAssetAnalysisActiveProperty()
{
  OUTLINED_FUNCTION_375_0();
  v2 = EnsureFormatReaderCreated(v0, v1);
  if (!v2)
  {
    FigFormatReaderGetFigBaseObject();
    if (*(*(CMBaseObjectGetVTable() + 8) + 48))
    {
      v3 = OUTLINED_FUNCTION_21_34();
      v4(v3);
    }
  }

  return v2;
}

uint64_t ProduceMaximumVideoResolutionProperty()
{
  OUTLINED_FUNCTION_471();
  v25 = 0;
  result = EnsureFormatReaderCreated(v2, v3);
  if (!result)
  {
    v5 = *(v1 + 240);
    v6 = *(*(CMBaseObjectGetVTable() + 16) + 8);
    if (v6)
    {
      result = v6(v5, &v25);
      if (result)
      {
        return result;
      }

      if (v25 >= 1)
      {
        v7 = 0;
        v8 = 0;
        v9 = 0;
        v10 = *MEMORY[0x1E695E480];
        v11 = 0.0;
        v12 = MEMORY[0x1E695F060];
        do
        {
          cf = 0;
          if (*(*(CMBaseObjectGetVTable() + 16) + 48))
          {
            OUTLINED_FUNCTION_197();
            if (!v13())
            {
              dict = 0;
              v22 = *v12;
              FigTrackReaderGetFigBaseObject();
              v15 = v14;
              v16 = *(*(CMBaseObjectGetVTable() + 8) + 48);
              if (v16 && !v16(v15, @"CleanApertureDimensions", v10, &dict) || (FigTrackReaderGetFigBaseObject(), v18 = v17, (v19 = *(*(CMBaseObjectGetVTable() + 8) + 48)) != 0) && !v19(v18, @"TrackDimensions", v10, &dict))
              {
                if (CGSizeMakeWithDictionaryRepresentation(dict, &v22))
                {
                  v20 = v22.width * v22.height;
                  if (v22.width * v22.height > v11)
                  {
                    v21 = dict;
                    if (dict)
                    {
                      CFRetain(dict);
                    }

                    if (v8)
                    {
                      CFRelease(v8);
                    }

                    v9 = 1;
                    v11 = v20;
                    v8 = v21;
                  }
                }
              }

              if (dict)
              {
                CFRelease(dict);
              }
            }
          }

          if (cf)
          {
            CFRelease(cf);
          }

          ++v7;
        }

        while (v7 < v25);
        if (v9)
        {
          result = 0;
          *v0 = v8;
          return result;
        }

        if (v8)
        {
          CFRelease(v8);
        }
      }

      return 4294954513;
    }

    else
    {
      return 4294954514;
    }
  }

  return result;
}

uint64_t ProducemoovAtomSizeProperty()
{
  OUTLINED_FUNCTION_375_0();
  v3 = EnsureFormatReaderCreated(v1, v2);
  if (!v3)
  {
    FigFormatReaderGetFigBaseObject();
    if (*(*(CMBaseObjectGetVTable() + 8) + 48))
    {
      v4 = OUTLINED_FUNCTION_17_41();
      v5(v4);
    }

    *v0 = 0;
  }

  return v3;
}

uint64_t ProduceFirstFragmentSequenceNumberProperty()
{
  OUTLINED_FUNCTION_375_0();
  v3 = EnsureFormatReaderCreated(v1, v2);
  if (!v3)
  {
    FigFormatReaderGetFigBaseObject();
    v4 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v4)
    {
      v5 = OUTLINED_FUNCTION_17_41();
      v6(v5);
      v4 = 0;
    }

    *v0 = v4;
  }

  return v3;
}

uint64_t ProduceFragmentCountProperty()
{
  OUTLINED_FUNCTION_375_0();
  v3 = EnsureFormatReaderCreated(v1, v2);
  if (!v3)
  {
    FigFormatReaderGetFigBaseObject();
    v4 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v4)
    {
      v5 = OUTLINED_FUNCTION_17_41();
      v6(v5);
      v4 = 0;
    }

    *v0 = v4;
  }

  return v3;
}

uint64_t WalkEditCursorToNonEmptyEdit(uint64_t a1)
{
  memset(v5, 0, sizeof(v5));
  while (1)
  {
    v2 = *(*(CMBaseObjectGetVTable() + 16) + 24);
    if (!v2)
    {
      return 4294954514;
    }

    result = v2(a1, v5);
    if (result)
    {
      return result;
    }

    if (BYTE12(v5[0]))
    {
      break;
    }

    v4 = *(*(CMBaseObjectGetVTable() + 16) + 16);
    if (!v4)
    {
      return 4294954514;
    }

    result = v4(a1, 1);
    if (result)
    {
      return result;
    }
  }

  return 0;
}

BOOL EnsureStorageSessionCreated_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v4, v5, vars0);
  *a1 = v2;
  return v2 == 0;
}

uint64_t EnsureStorageSessionCreated_cold_2(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 88))
  {
    FigCFDictionarySetValueFromKeyInDict();
    FigCFDictionarySetValueFromKeyInDict();
    FigCFDictionarySetValueFromKeyInDict();
    FigCFDictionarySetValueFromKeyInDict();
    FigCFDictionarySetValueFromKeyInDict();
    FigCFDictionarySetValueFromKeyInDict();
    FigCFDictionarySetValueFromKeyInDict();
    FigCFDictionarySetValueFromKeyInDict();
    FigCFDictionarySetValueFromKeyInDict();
  }

  return FigCFDictionarySetValue();
}

void InternalURLAssetEnsureContentKeySessionCreated_cold_1()
{
  OUTLINED_FUNCTION_180_1();
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, v3, v4);
  *v0 = v1;
}

void InternalURLAssetEnsureContentKeySessionCreated_cold_2()
{
  OUTLINED_FUNCTION_180_1();
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, v3, v4);
  *v0 = v1;
}

void InternalURLAssetEnsureContentKeyBossIsCreatedAndUpToDate_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void InternalURLAssetTransferBytePumpAsync_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FigAssetCreateCustomMediaSelectionSchemeFromJSON_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FigAssetCreateCustomMediaSelectionSchemeFromJSON_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

double convertCustomMediaSelectionSchemeMetadata_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
}

double convertCustomMediaSelectionSchemeMetadata_cold_2()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
}

void ProduceAssetTrackValidationResult_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void InternalURLAssetCopyChapterData_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void InternalURLAssetFetchChapterDataAsync_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

BOOL PerformMultiTrackBatchLoad_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, v3, vars0);
  return v0 == 0;
}

void RequestMultiTrackBatches_cold_1(uint64_t a1, _DWORD *a2)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v4, v5, v6);
  *a2 = v3;
}

void AssessMonitoredAssetPropertyChange_cold_1(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v4 = *a2;
  if (FigCFEqual())
  {
    v5 = *(v4 + 328);
    if (v5)
    {
      CFRelease(v5);
      *(v4 + 328) = 0;
    }

    *(v4 + 316) = 0;
  }

  v6 = OUTLINED_FUNCTION_26_23();
  if (!ProduceFormatReaderAssetProperty(v6, v4, a3, v7))
  {
    v8 = OUTLINED_FUNCTION_177();
    ReviseProperty(v8, v9, v10);
  }
}

void EnsureTrackWorkQueueCreated_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void EnsureContentStreamCreated_cold_1()
{
  OUTLINED_FUNCTION_180_1();
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, v3, v4);
  *v0 = v1;
}

void EnsureContentStreamCreated_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void EnsureContentStreamCreated_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void EnsureContentStreamCreated_cold_4(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

uint64_t EnsureContentStreamCreated_cold_5()
{
  OUTLINED_FUNCTION_471();
  *v1 = CFRetain(*(v2 + 72));
  v3 = v1 + 3;
  CMBaseObject = CMByteStreamGetCMBaseObject();
  VTable = CMBaseObjectGetVTable();
  v7 = *(VTable + 8);
  result = VTable + 8;
  v8 = *(v7 + 48);
  if (v8)
  {
    result = v8(CMBaseObject, *MEMORY[0x1E695FFA0], *MEMORY[0x1E695E480], v3);
  }

  *v0 = 0;
  return result;
}

void EnsureContentStreamCreated_cold_6()
{
  OUTLINED_FUNCTION_471();
  v3 = v2;
  theSet = 0;
  FigCopySetOfStreamingSupportedMIMETypes(*MEMORY[0x1E695E480], &theSet);
  if (theSet)
  {
    if (CFSetContainsValue(theSet, v3))
    {
      IsShoutcastAudio = FigMediaValidatorMIMETypeIsShoutcastAudio(v3);
      v5 = 1;
    }

    else
    {
      v5 = 0;
      IsShoutcastAudio = 0;
    }

    if (theSet)
    {
      CFRelease(theSet);
    }
  }

  else
  {
    IsShoutcastAudio = 0;
    v5 = 0;
  }

  *v1 = IsShoutcastAudio;
  *v0 = v5;
}

void CreateSanitizedOutOfBandAlternateTracksArray_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void EnsureStreamingNetworkURL_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

double convertCustomMediaSelectionSchemeGroupMetadata_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
}

double convertCustomMediaSelectionSchemeGroupMetadata_cold_2()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
}

double convertCustomMediaSelectionSchemeSelectorsMetadata_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
}

double convertCustomMediaSelectionSchemeSelectorsMetadata_cold_2()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
}

double convertCustomMediaSelectionSchemeSelectorMetadata_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
}

double convertCustomMediaSelectionSchemeSelectorMetadata_cold_2()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
}

double convertCustomMediaSelectionSchemeSelectorMetadata_cold_3()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
}

double createDictionaryWithDictionaryStringKeysAndStringValues_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
}

double createDictionaryWithDictionaryStringKeysAndStringValues_cold_2()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
}

double convertCustomMediaSelectionSchemeSettingsMetadata_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
}

double convertCustomMediaSelectionSchemeSettingsMetadata_cold_2()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
}

double convertCustomMediaSelectionSchemeSettingMetadata_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
}

void EnsureTracksArrayCreated_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void EnsureFormatReaderCreated_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void EnsureChapterGroupInfoCreated_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void StreamingAssetCopyMaximumVideoResolution_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void StreamingAssetCopyMaximumVideoResolution_cold_2()
{
  OUTLINED_FUNCTION_180_1();
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, v3, v4);
  *v0 = v1;
}

void StreamingAssetCopyAvailableVideoDynamicRanges_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void StreamingAssetCopyAvailableVideoDynamicRanges_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void StreamingAssetCopyAvailableVideoDynamicRanges_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

uint64_t ProduceAssetCompatibleWithAirPlayVideoProperty_cold_1()
{
  ProduceAssetIsSelfContainedProperty();
  if (FigCFEqual())
  {
    v0 = 1;
  }

  else
  {
    v2 = OUTLINED_FUNCTION_177();
    ProduceAssetValidationResult(v2, v3, v4, 0);
    if (v5)
    {
      v0 = -1;
    }

    else
    {
      v0 = 0;
    }
  }

  return v0 & 1;
}

uint64_t ProduceAvailableVideoDynamicRangesProperty_cold_1()
{
  OUTLINED_FUNCTION_471();
  result = CFArrayGetCount(v1);
  if (result >= 1)
  {
    v3 = result + 1;
    do
    {
      result = CFArrayGetValueAtIndex(*v0, v3 - 2);
      if (result)
      {
        CMVideoFormatDescriptionGetVideoDynamicRange();
        result = FigCFArrayAppendInt32();
      }

      --v3;
    }

    while (v3 > 1);
  }

  return result;
}

void ProduceAvailableVideoDynamicRangesProperty_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void ProduceAvailableVideoDynamicRangesProperty_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void ProduceAvailableVideoDynamicRangesProperty_cold_4(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void ProduceNominalVideoFrameRateProperty_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void ProduceNominalVideoFrameRateProperty_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void ProduceNominalVideoFrameRateProperty_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

uint64_t FigSampleBufferAudioRendererCreateRemoteWithOptions(uint64_t a1, uint64_t a2, void *a3)
{
  v22 = *MEMORY[0x1E69E9840];
  if (!a3)
  {
    v4 = 4294950916;
    goto LABEL_13;
  }

  valueCallBacks.version = 0;
  valueCallBacks.retain = &valueCallBacks;
  valueCallBacks.release = 0x2000000000;
  LODWORD(valueCallBacks.copyDescription) = 0;
  *__str = MEMORY[0x1E69E9820];
  v18 = 0x40000000;
  v19 = __audioRendererRemote_ensureClientEstablished_block_invoke;
  v20 = &unk_1E7494208;
  p_valueCallBacks = &valueCallBacks;
  if (qword_1ED4CB8E0 != -1)
  {
    dispatch_once(&qword_1ED4CB8E0, __str);
  }

  v4 = *(valueCallBacks.retain + 6);
  _Block_object_dispose(&valueCallBacks, 8);
  if (!v4)
  {
    cf = 0;
    memset(&valueCallBacks, 0, sizeof(valueCallBacks));
    FigSampleBufferAudioRendererGetClassID();
    v5 = CMDerivedObjectCreate();
    if (v5)
    {
      v4 = v5;
    }

    else
    {
      DerivedStorage = CMBaseObjectGetDerivedStorage();
      DerivedStorage[4] = 1;
      valueCallBacks.version = 0;
      valueCallBacks.retain = audioRendererRemote_cloneCompletionCallbackEntry;
      valueCallBacks.release = audioRendererRemote_freeCompletionCallbackEntry;
      valueCallBacks.copyDescription = 0;
      valueCallBacks.equal = 0;
      v7 = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, 0, &valueCallBacks);
      DerivedStorage[3] = v7;
      if (v7)
      {
        snprintf(__str, 0x80uLL, "com.apple.coremedia.audiorendererremote.completioncallbacks[%p]", cf);
        v8 = dispatch_queue_create(__str, 0);
        DerivedStorage[2] = v8;
        if (v8)
        {
          v9 = FigSimpleMutexCreate();
          DerivedStorage[5] = v9;
          if (v9)
          {
            v10 = cf;
            v11 = FigXPCCreateBasicMessage();
            if (v11 || (v11 = FigXPCMessageSetCFDictionary(), v11))
            {
              v4 = v11;
            }

            else
            {
              v4 = FigXPCRemoteClientSendSyncMessageCreatingReply();
              if (!v4)
              {
                uint64 = xpc_dictionary_get_uint64(0, *MEMORY[0x1E69615A0]);
                *(CMBaseObjectGetDerivedStorage() + 8) = uint64;
                FigXPCRemoteClientAssociateObject();
                *a3 = v10;
                goto LABEL_13;
              }
            }

            if (!v10)
            {
              goto LABEL_13;
            }

            v14 = v10;
LABEL_21:
            CFRelease(v14);
            goto LABEL_13;
          }
        }
      }

      v4 = 4294950914;
    }

    v14 = cf;
    if (!cf)
    {
      goto LABEL_13;
    }

    goto LABEL_21;
  }

LABEL_13:
  FigXPCRelease();
  FigXPCRelease();
  FigXPCRemoteClientKillServerOnTimeout();
  return v4;
}

uint64_t audioRendererRemote_handleClientMessage(uint64_t a1, void *a2)
{
  OpCode = FigXPCMessageGetOpCode();
  if (OpCode)
  {
    return OpCode;
  }

  else
  {
    return 4294951138;
  }
}

uint64_t audioRendererRemote_Finalize(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v2 = *(DerivedStorage + 8);
  FigSimpleMutexDestroy();
  v3 = *(DerivedStorage + 56);
  if (v3)
  {
    CFRelease(v3);
    *(DerivedStorage + 56) = 0;
  }

  v4 = *(DerivedStorage + 64);
  if (v4)
  {
    CFRelease(v4);
    *(DerivedStorage + 64) = 0;
  }

  v5 = *(DerivedStorage + 16);
  if (v5)
  {
    dispatch_release(v5);
    *(DerivedStorage + 16) = 0;
  }

  v6 = *(DerivedStorage + 24);
  if (v6)
  {
    CFRelease(v6);
    *(DerivedStorage + 24) = 0;
  }

  if (v2)
  {
    FigXPCRemoteClientDisassociateObject();
    if (!*DerivedStorage && !FigXPCCreateBasicMessage())
    {
      FigXPCRemoteClientSendSyncMessage();
    }
  }

  FigXPCRelease();
  return FigXPCRemoteClientKillServerOnTimeout();
}

uint64_t audioRendererRemote_CopyProperty(uint64_t a1, uint64_t a2, uint64_t a3, CFTypeRef *a4)
{
  v8 = 0;
  ObjectID = audioRendererRemote_getObjectID(a1, &v8);
  if (!ObjectID)
  {
    ObjectID = FigXPCSendStdCopyPropertyMessage();
  }

  v6 = ObjectID;
  if (a4)
  {
    *a4 = 0;
  }

  FigXPCRemoteClientKillServerOnTimeout();
  return v6;
}

uint64_t audioRendererRemote_SetProperty(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = 0;
  if (FigCFEqual())
  {
    value = 0;
    v12 = 0;
    xdict = 0;
    ObjectID = audioRendererRemote_getObjectID(a1, &v12);
    if (ObjectID || a3 && (MTAudioProcessingTapXPCRemoteGetObjectID(a3, &value), ObjectID))
    {
      v6 = ObjectID;
    }

    else
    {
      v6 = FigXPCCreateBasicMessage();
      if (!v6)
      {
        xpc_dictionary_set_uint64(xdict, "audioProcessingTapID", value);
        v6 = FigXPCRemoteClientSendSyncMessage();
      }
    }

    FigXPCRelease();
    FigXPCRemoteClientKillServerOnTimeout();
  }

  else
  {
    v7 = audioRendererRemote_getObjectID(a1, &v9);
    if (!v7)
    {
      v7 = FigXPCSendStdSetPropertyMessage();
    }

    v6 = v7;
  }

  FigXPCRemoteClientKillServerOnTimeout();
  return v6;
}

BOOL audioRendererRemote_QueueIsAboveHighWaterLevel(uint64_t a1)
{
  CMBaseObjectGetDerivedStorage();
  v4 = 0;
  v2 = audioRendererRemote_getObjectID(a1, &v4) || FigXPCCreateBasicMessage() || FigXPCRemoteClientSendSyncMessageCreatingReply() || xpc_dictionary_get_BOOL(0, "isAboveHighWaterResponse");
  FigXPCRelease();
  FigXPCRelease();
  FigXPCRemoteClientKillServerOnTimeout();
  return v2;
}

const void *audioRendererRemote_EnqueueSampleBuffer(uint64_t a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v16 = 0;
  v14 = 0;
  cf = 0;
  ObjectID = audioRendererRemote_getObjectID(a1, &v16);
  if (ObjectID || (ObjectID = FigXPCCreateBasicMessage(), ObjectID))
  {
    v8 = ObjectID;
  }

  else
  {
    FigSimpleMutexLock();
    v5 = DerivedStorage[7];
    v15 = DerivedStorage[6];
    if (v5)
    {
      v5 = CFRetain(v5);
    }

    v14 = v5;
    v6 = DerivedStorage[8];
    if (v6)
    {
      v6 = CFRetain(v6);
    }

    cf = v6;
    SerializedAtomDataForSampleBuffer = FigRemote_CreateSerializedAtomDataForSampleBuffer();
    if (SerializedAtomDataForSampleBuffer || (SerializedAtomDataForSampleBuffer = FigXPCMessageSetAndConsumeVMData(), SerializedAtomDataForSampleBuffer) || (SerializedAtomDataForSampleBuffer = FigXPCRemoteClientSendSyncMessage(), SerializedAtomDataForSampleBuffer))
    {
      v8 = SerializedAtomDataForSampleBuffer;
      DerivedStorage[6] = 0;
      v9 = DerivedStorage[7];
      if (v9)
      {
        CFRelease(v9);
        DerivedStorage[7] = 0;
      }

      v10 = DerivedStorage[8];
      if (v10)
      {
        CFRelease(v10);
        DerivedStorage[8] = 0;
      }
    }

    else
    {
      v11 = DerivedStorage[7];
      DerivedStorage[6] = (v15 + *MEMORY[0x1E69E9AC8] - 1) & -*MEMORY[0x1E69E9AC8];
      DerivedStorage[7] = v14;
      if (v14)
      {
        CFRetain(v14);
      }

      if (v11)
      {
        CFRelease(v11);
      }

      v8 = DerivedStorage[8];
      DerivedStorage[8] = cf;
      if (cf)
      {
        CFRetain(cf);
      }

      if (v8)
      {
        CFRelease(v8);
        v8 = 0;
      }
    }

    FigSimpleMutexUnlock();
  }

  FigXPCRelease();
  if (v14)
  {
    CFRelease(v14);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  FigXPCRemoteClientKillServerOnTimeout();
  return v8;
}

uint64_t audioRendererRemote_Flush(uint64_t a1)
{
  CMBaseObjectGetDerivedStorage();
  v6 = 0;
  ObjectID = audioRendererRemote_getObjectID(a1, &v6);
  if (ObjectID)
  {
    v4 = ObjectID;
  }

  else
  {
    v3 = FigXPCCreateBasicMessage();
    if (v3)
    {
      v4 = v3;
    }

    else
    {
      v4 = FigXPCRemoteClientSendSyncMessage();
    }
  }

  FigXPCRelease();
  FigXPCRemoteClientKillServerOnTimeout();
  return v4;
}

uint64_t audioRendererRemote_FlushFromMediaTime(const void *a1, __int128 *a2, void (*a3)(void, void), uint64_t a4)
{
  CMBaseObjectGetDerivedStorage();
  v18 = 0;
  ObjectID = audioRendererRemote_getObjectID(a1, &v18);
  if (ObjectID)
  {
    v15 = ObjectID;
  }

  else
  {
    v9 = FigXPCCreateBasicMessage();
    if (v9 || (block = *a2, v21 = *(a2 + 2), v9 = FigXPCMessageSetCMTime(), v9))
    {
      v15 = v9;
    }

    else
    {
      DerivedStorage = CMBaseObjectGetDerivedStorage();
      v11 = DerivedStorage;
      v33 = 0;
      v34 = &v33;
      v35 = 0x2000000000;
      v36 = 0;
      v29 = 0;
      v30 = &v29;
      v31 = 0x2000000000;
      v32 = 0;
      if (a3)
      {
        v12 = *(DerivedStorage + 16);
        *&block = MEMORY[0x1E69E9820];
        *(&block + 1) = 0x40000000;
        v21 = __audioRendererRemote_sendMessageSynchronouslyExpectingCompletionCallback_block_invoke;
        v22 = &unk_1E7494258;
        v23 = &v33;
        v24 = a1;
        v25 = v11;
        v26 = a1;
        v27 = a3;
        v28 = a4;
        dispatch_sync(v12, &block);
        xpc_dictionary_set_uint64(0, "completionID", v34[3]);
        v13 = a4;
      }

      else
      {
        a1 = 0;
        v13 = 0;
      }

      v14 = FigXPCRemoteClientSendSyncMessage();
      v15 = v14;
      if (a3 && v14)
      {
        v16 = *(v11 + 16);
        v19[0] = MEMORY[0x1E69E9820];
        v19[1] = 0x40000000;
        v19[2] = __audioRendererRemote_sendMessageSynchronouslyExpectingCompletionCallback_block_invoke_2;
        v19[3] = &unk_1E7494280;
        v19[6] = v11;
        v19[7] = a1;
        v19[8] = a3;
        v19[9] = v13;
        v19[4] = &v33;
        v19[5] = &v29;
        dispatch_sync(v16, v19);
      }

      if (*(v30 + 24))
      {
        if (a3)
        {
          a3(v15, a4);
        }

        if (a1)
        {
          CFRelease(a1);
        }
      }

      FigXPCRemoteClientKillServerOnTimeout();
      _Block_object_dispose(&v29, 8);
      _Block_object_dispose(&v33, 8);
    }
  }

  FigXPCRelease();
  FigXPCRemoteClientKillServerOnTimeout();
  return v15;
}

void audioRendererRemote_getObjectID_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void audioRendererRemote_getObjectID_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FigSampleBufferAudioRendererCreateRemoteWithOptionsAndRetry_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void vq_Finalize(const void *a1)
{
  cf[16] = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
  v4 = os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
  if (OUTLINED_FUNCTION_109_0(v4))
  {
    v5 = *(DerivedStorage + 640);
    v37 = 136315906;
    v38 = "vq_Finalize";
    v39 = 2048;
    v40 = a1;
    v41 = 2082;
    v42 = DerivedStorage + 856;
    v43 = 1024;
    v44 = v5;
    v36 = 38;
    OUTLINED_FUNCTION_38();
    _os_log_send_and_compose_impl(v6, v7, v8, v9, v10, v11, 0, v12, &v37, v36);
  }

  OUTLINED_FUNCTION_0_9();
  fig_log_call_emit_and_clean_up_after_send_and_compose();
  vq_Invalidate(a1);
  cf[0] = 0;
  v13 = CMBaseObjectGetDerivedStorage();
  if (!FigDeferredTransactionCreate(*MEMORY[0x1E695E480], cf))
  {
    FPSupport_AppendDeferredTransactionChangeToRelease(cf[0], v13[5]);
    v13[5] = 0;
    FPSupport_AppendDeferredTransactionChangeToClearContentsAndRemoveFromSuperLayer(cf[0], v13[3]);

    v13[3] = 0;
    FPSupport_AppendDeferredTransactionChangeToClearContentsAndRemoveFromSuperLayer(cf[0], v13[2]);

    v13[2] = 0;
    FPSupport_AppendDeferredTransactionChangeToRelease(cf[0], v13[8]);
    v13[8] = 0;
    FPSupport_AppendDeferredTransactionChangeToRelease(cf[0], v13[6]);
    v13[6] = 0;
    v14 = FigOSTransactionCreate();
    FPSupport_AppendDeferredTransactionChangeToReleaseOSTransaction(cf[0], v14);
    FigDeferredTransactionCommit(cf[0], 0);
  }

  if (cf[0])
  {
    CFRelease(cf[0]);
  }

  FigSimpleMutexDestroy();
  *(DerivedStorage + 424) = 0;
  if (*(DerivedStorage + 240))
  {
    FigSimpleMutexDestroy();
    *(DerivedStorage + 240) = 0;
  }

  if (*(DerivedStorage + 632))
  {
    FigSimpleMutexDestroy();
    *(DerivedStorage + 632) = 0;
  }

  v15 = *(DerivedStorage + 536);
  if (v15)
  {
    dispatch_release(v15);
    *(DerivedStorage + 536) = 0;
  }

  v16 = *(DerivedStorage + 392);
  if (v16)
  {
    CFRelease(v16);
    *(DerivedStorage + 392) = 0;
  }

  v17 = *(DerivedStorage + 656);
  if (v17)
  {
    CFRelease(v17);
    *(DerivedStorage + 656) = 0;
  }

  v18 = *(DerivedStorage + 544);
  if (v18)
  {
    dispatch_release(v18);
    *(DerivedStorage + 544) = 0;
  }

  v19 = *(DerivedStorage + 360);
  if (v19)
  {
    CFRelease(v19);
    *(DerivedStorage + 360) = 0;
  }

  v20 = *(DerivedStorage + 368);
  if (v20)
  {
    CFRelease(v20);
    *(DerivedStorage + 368) = 0;
  }

  v21 = *(DerivedStorage + 376);
  if (v21)
  {
    CFRelease(v21);
    *(DerivedStorage + 376) = 0;
  }

  v22 = *(DerivedStorage + 384);
  if (v22)
  {
    CFRelease(v22);
    *(DerivedStorage + 384) = 0;
  }

  v23 = *(DerivedStorage + 408);
  if (v23)
  {
    CFRelease(v23);
    *(DerivedStorage + 408) = 0;
  }

  v24 = *(DerivedStorage + 568);
  if (v24)
  {
    CFRelease(v24);
    *(DerivedStorage + 568) = 0;
  }

  v25 = *(DerivedStorage + 8);
  if (v25)
  {
    CFRelease(v25);
    *(DerivedStorage + 8) = 0;
  }

  v26 = *(DerivedStorage + 56);
  if (v26)
  {
    CFRelease(v26);
    *(DerivedStorage + 56) = 0;
  }

  v27 = *(DerivedStorage + 264);
  if (v27)
  {
    CFRelease(v27);
    *(DerivedStorage + 264) = 0;
  }

  v28 = *(DerivedStorage + 272);
  if (v28)
  {
    CFRelease(v28);
    *(DerivedStorage + 272) = 0;
  }

  v29 = *(DerivedStorage + 280);
  if (v29)
  {
    CFRelease(v29);
    *(DerivedStorage + 280) = 0;
  }

  v30 = *(DerivedStorage + 288);
  if (v30)
  {
    CFRelease(v30);
    *(DerivedStorage + 288) = 0;
  }

  v31 = *(DerivedStorage + 296);
  if (v31)
  {
    CFRelease(v31);
    *(DerivedStorage + 296) = 0;
  }

  FigSimpleMutexDestroy();
  v32 = *(DerivedStorage + 312);
  if (v32)
  {
    CFRelease(v32);
    *(DerivedStorage + 312) = 0;
  }

  *(DerivedStorage + 304) = 0;
  v33 = *(DerivedStorage + 336);
  if (v33)
  {
    CFRelease(v33);
    *(DerivedStorage + 336) = 0;
  }

  v34 = *(DerivedStorage + 592);
  if (v34)
  {
    dispatch_release(v34);
    *(DerivedStorage + 592) = 0;
  }

  v35 = *(DerivedStorage + 608);
  if (v35)
  {
    CFRelease(v35);
    *(DerivedStorage + 608) = 0;
  }
}

void vq_SetProperty(const void *a1, CFTypeID TypeID, void *a3)
{
  v190 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*DerivedStorage)
  {
LABEL_2:
    OUTLINED_FUNCTION_0_177();
    OUTLINED_FUNCTION_2_161();

    FigSignalErrorAtGM(v7);
    return;
  }

  v9 = DerivedStorage;
  if (CFEqual(TypeID, @"VideoQueue_DisplayLayer"))
  {
    if (!*(v9 + 24))
    {
      vq_setupVideoLayer(a1);
    }

    *(v9 + 354) = 0;
    v10 = CMBaseObjectGetDerivedStorage();
    v11 = objc_autoreleasePoolPush();
    [MEMORY[0x1E6979518] begin];
    if (!pthread_main_np())
    {
      [MEMORY[0x1E6979518] activateBackground:1];
    }

    [MEMORY[0x1E6979518] setDisableActions:1];
    v12 = *(v10 + 24);
    if (v12)
    {
      [v12 removeFromSuperlayer];
    }

    v13 = *(v10 + 40);
    if (v13)
    {

      *(v10 + 40) = 0;
    }

    if (a3)
    {
      *(v10 + 40) = a3;
      v14 = a3;
      [*(v10 + 40) setMasksToBounds:1];
      [*(v10 + 40) addSublayer:*(v10 + 24)];
    }

    [MEMORY[0x1E6979518] commit];
    objc_autoreleasePoolPop(v11);
    if (dword_1EAF17790)
    {
      v23 = OUTLINED_FUNCTION_6_100(v15, v16, v17, v18, v19, v20, v21, v22, v141, v145, v149, v153, v156, v159, v162, block, v166, v167, v168, v169, v170, v171, v172, type, v174);
      v31 = OUTLINED_FUNCTION_12_59(v23, v24, v25, v26, v27, v28, v29, v30, v142, v146, v150, v154, v157, v160, v163, block, v166, v167, v168, v169, v170, v171, v172, type, v174);
      if (OUTLINED_FUNCTION_109_0(v31))
      {
        v32 = *(v10 + 40);
        v34 = *(v10 + 16);
        v33 = *(v10 + 24);
        v35 = *(v10 + 640);
        v175 = 136316674;
        v176 = "vq_updateClientVideoLayer";
        v177 = 2048;
        v178 = a1;
        v179 = 2082;
        v180 = v10 + 856;
        v181 = 2114;
        v182 = v32;
        v183 = 2048;
        v184 = v33;
        v185 = 2048;
        v186 = v34;
        v187 = 1024;
        v188 = v35;
        OUTLINED_FUNCTION_66();
        OUTLINED_FUNCTION_38();
        _os_log_send_and_compose_impl(v36, v37, v38, v39, v40, v41, v11, v42);
      }

      OUTLINED_FUNCTION_0_9();
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    vq_setSynchronizedLayers(a1);
    goto LABEL_28;
  }

  if (CFEqual(TypeID, @"VideoQueue_DisplayBounds"))
  {
    memset(&rect, 0, sizeof(rect));
    if (CGRectMakeWithDictionaryRepresentation(a3, &rect))
    {
      x = rect.origin.x;
      y = rect.origin.y;
      width = rect.size.width;
      height = rect.size.height;
      v47 = CMBaseObjectGetDerivedStorage();
      v191.origin.x = OUTLINED_FUNCTION_5_35();
      if (!CGRectEqualToRect(v191, v194))
      {
        v48 = objc_autoreleasePoolPush();
        *(v47 + 200) = x;
        *(v47 + 208) = y;
        *(v47 + 216) = width;
        *(v47 + 224) = height;
        [MEMORY[0x1E6979518] begin];
        if (!pthread_main_np())
        {
          [OUTLINED_FUNCTION_9_63() activateBackground:?];
        }

        [OUTLINED_FUNCTION_9_63() setDisableActions:?];
        v49 = *(v47 + 40);
        v50 = *(v47 + 24);
        if (v49)
        {
          [v49 bounds];
        }

        v192.origin.x = OUTLINED_FUNCTION_5_35();
        MidX = CGRectGetMidX(v192);
        v193.origin.x = OUTLINED_FUNCTION_5_35();
        [v50 setPosition:{MidX, CGRectGetMidY(v193)}];
        [*(v47 + 24) setBounds:{*(v47 + 200), *(v47 + 208), *(v47 + 216), *(v47 + 224)}];
        [*(v47 + 24) setMasksToBounds:1];
        [*(v47 + 16) setBounds:{*(v47 + 200), *(v47 + 208), *(v47 + 216), *(v47 + 224)}];
        [MEMORY[0x1E6979518] commit];
        objc_autoreleasePoolPop(v48);
      }
    }

    else
    {
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v141, v145, v149);
    }

    goto LABEL_28;
  }

  if (CFEqual(TypeID, @"VideoQueue_MakeCAContextForRemoteHost"))
  {
    if (!*(v9 + 24))
    {
      vq_setupVideoLayer(a1);
    }

    *(v9 + 354) = 0;
    v51 = CMBaseObjectGetDerivedStorage();
    v52 = objc_autoreleasePoolPush();
    if (!*(v51 + 64))
    {
      if (*(v51 + 680))
      {
        v53 = *MEMORY[0x1E695E4D0];
      }

      else
      {
        v53 = *MEMORY[0x1E695E4C0];
      }

      v54 = [MEMORY[0x1E695DF20] dictionaryWithObjectsAndKeys:{@"FigVideoQueue_CAContext", *MEMORY[0x1E69796A0], *MEMORY[0x1E695E4D0], *MEMORY[0x1E69796C0], v53, *MEMORY[0x1E69796D0], 0}];
      v55 = [MEMORY[0x1E6979550] contextWithOptions:v54];
      *(v51 + 64) = v55;
      if (!v55)
      {
        FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v143, v147, v151);
LABEL_41:
        objc_autoreleasePoolPop(v52);
        if (dword_1EAF17790)
        {
          v174 = 0;
          type = OS_LOG_TYPE_DEFAULT;
          os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
          OUTLINED_FUNCTION_0_9();
          fig_log_call_emit_and_clean_up_after_send_and_compose();
        }

        goto LABEL_28;
      }

      CFRetain(v55);
    }

    [MEMORY[0x1E6979518] begin];
    if (!pthread_main_np())
    {
      [OUTLINED_FUNCTION_9_63() activateBackground:?];
    }

    [OUTLINED_FUNCTION_9_63() setDisableActions:?];
    [*(v51 + 64) setLayer:*(v51 + 24)];
    [MEMORY[0x1E6979518] commit];
    goto LABEL_41;
  }

  if (CFEqual(TypeID, @"ClientPID"))
  {
    v57 = *(v9 + 664);
    *(v9 + 664) = a3;
    if (!a3)
    {
LABEL_52:
      if (v57 != 0.0)
      {
        v59 = v57;
LABEL_205:
        CFRelease(*&v59);
      }

LABEL_28:
      OUTLINED_FUNCTION_2_161();
      return;
    }

    goto LABEL_51;
  }

  if (CFEqual(TypeID, @"ClientBundleIdentifier"))
  {
    v57 = *(v9 + 672);
    *(v9 + 672) = a3;
    if (!a3)
    {
      goto LABEL_52;
    }

    goto LABEL_51;
  }

  if (CFEqual(TypeID, @"VideoQueue_EnablePerFrameStats"))
  {
    if (a3)
    {
      CFGetTypeID(a3);
      CFBooleanGetTypeID();
    }

    goto LABEL_28;
  }

  if (CFEqual(TypeID, @"PreventsCapture"))
  {
    if (!a3)
    {
      goto LABEL_2;
    }

    v60 = CFGetTypeID(a3);
    if (v60 != CFBooleanGetTypeID())
    {
      goto LABEL_2;
    }

    *(v9 + 353) = CFBooleanGetValue(a3);
    *(v9 + 354) = 0;
    vq_updateImageQueueProtection(a1);
    goto LABEL_28;
  }

  if (CFEqual(TypeID, @"VideoQueue_DecoderUsage"))
  {
    v61 = *(v9 + 408);
    *(v9 + 408) = a3;
    if (a3)
    {
      CFRetain(a3);
    }

    if (v61)
    {
      CFRelease(v61);
    }

    if (*(v9 + 376))
    {
      v62 = *(v9 + 408);
      FigRenderPipelineGetFigBaseObject();
      CMBaseObjectSetProperty(v63, @"VideoDecoderUsage", v62);
    }

    goto LABEL_28;
  }

  if (CFEqual(TypeID, @"VideoQueue_ControlTimebase"))
  {
    if (*(v9 + 560))
    {
      goto LABEL_2;
    }

    if (a3)
    {
      v65 = CMTimebaseGetTypeID();
      if (v65 != CFGetTypeID(a3))
      {
        goto LABEL_2;
      }

      vq_removeTimebaseListeners(a1);
      v66 = *(v9 + 568);
      *(v9 + 568) = a3;
      v67 = CFRetain(a3);
    }

    else
    {
      v67 = vq_removeTimebaseListeners(a1);
      v66 = *(v9 + 568);
      *(v9 + 568) = 0;
    }

    if (v66)
    {
      CFRelease(v66);
    }

    if (dword_1EAF17790)
    {
      v80 = OUTLINED_FUNCTION_6_100(v67, v68, v69, v70, v71, v72, v73, v74, v141, v145, v149, v153, v156, v159, v162, block, v166, v167, v168, v169, v170, v171, v172, type, v174);
      v88 = OUTLINED_FUNCTION_12_59(v80, v81, v82, v83, v84, v85, v86, v87, v144, v148, v152, v155, v158, v161, v164, block, v166, v167, v168, v169, v170, v171, v172, type, v174);
      if (OUTLINED_FUNCTION_109_0(v88))
      {
        v89 = *(v9 + 568);
        v90 = *(v9 + 640);
        v175 = 136315906;
        v176 = "vq_SetProperty";
        v177 = 2048;
        v178 = a1;
        v179 = 2048;
        v180 = v89;
        v181 = 1024;
        LODWORD(v182) = v90;
        OUTLINED_FUNCTION_66();
        OUTLINED_FUNCTION_38();
        _os_log_send_and_compose_impl(v91, v92, v93, v94, v95, v96, v66, v97);
      }

      OUTLINED_FUNCTION_0_9();
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    vq_addTimebaseListeners(a1);
    vq_updateForCurrentTimebaseRate(a1);
    goto LABEL_28;
  }

  if (CFEqual(TypeID, @"ForceFullPowerDecode"))
  {
    if (a3)
    {
      v64 = CFGetTypeID(a3);
      if (v64 == CFBooleanGetTypeID())
      {
        *(v9 + 416) = CFBooleanGetValue(a3);
      }

      else
      {
        FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v141, v145, v149);
      }
    }

    else
    {
      *(v9 + 416) = 0;
    }

    if (*(v9 + 376))
    {
      v98 = MEMORY[0x1E695E4D0];
      if (!*(v9 + 416))
      {
        v98 = MEMORY[0x1E695E4C0];
      }

      v99 = *v98;
      FigRenderPipelineGetFigBaseObject();
      CMBaseObjectSetProperty(v100, @"ForceFullPowerDecode", v99);
    }

    goto LABEL_28;
  }

  if (!CFEqual(TypeID, @"PreventDisplaySleepDuringVideoPlayback"))
  {
    if (CFEqual(TypeID, @"PreventAutomaticBackgroundingDuringVideoPlayback"))
    {
      if (!a3)
      {
        goto LABEL_2;
      }

      v101 = CFGetTypeID(a3);
      if (v101 != CFBooleanGetTypeID())
      {
        goto LABEL_2;
      }

      Value = CFBooleanGetValue(a3);
      if (*(v9 + 600) != Value)
      {
        *(v9 + 600) = Value;
        vq_updateVideoPlaybackAssertion(a1);
      }

      goto LABEL_28;
    }

    if (CFEqual(TypeID, @"UpcomingOutputPTSRangeChanged"))
    {
      if (!a3)
      {
        goto LABEL_2;
      }

      v103 = CFGetTypeID(a3);
      if (v103 != CFDictionaryGetTypeID())
      {
        goto LABEL_2;
      }

      if (*(v9 + 384))
      {
        CMNotificationCenterGetDefaultLocalCenter();
        OUTLINED_FUNCTION_2_161();

        CMNotificationCenterPostNotification();
        return;
      }

      FigSimpleMutexLock();
      v106 = *(v9 + 624);
      *(v9 + 624) = a3;
      CFRetain(a3);
      if (v106)
      {
        CFRelease(v106);
      }

LABEL_128:
      FigSimpleMutexUnlock();
      goto LABEL_28;
    }

    if (CFEqual(TypeID, @"InhibitCATransactionCommitTime"))
    {
      if (a3)
      {
        v105 = CFGetTypeID(a3);
        if (v105 != CFBooleanGetTypeID())
        {
          goto LABEL_2;
        }

        *(v9 + 237) = CFBooleanGetValue(a3);
      }

      else
      {
        *(v9 + 237) = 0;
      }

      goto LABEL_28;
    }

    if (CFEqual(TypeID, @"VisualContextArray"))
    {
      if (*(v9 + 560))
      {
        goto LABEL_2;
      }

      if (!a3)
      {
        v57 = *(v9 + 264);
        *(v9 + 264) = 0;
        goto LABEL_52;
      }

      v107 = CFArrayGetTypeID();
      if (v107 != CFGetTypeID(a3))
      {
        goto LABEL_2;
      }

      v57 = *(v9 + 264);
      *(v9 + 264) = a3;
      goto LABEL_51;
    }

    if (CFEqual(TypeID, @"VisualContextArrayOptions"))
    {
      if (*(v9 + 560))
      {
        goto LABEL_2;
      }

      if (!a3)
      {
        v57 = *(v9 + 272);
        *(v9 + 272) = 0;
        goto LABEL_52;
      }

      v108 = CFArrayGetTypeID();
      if (v108 != CFGetTypeID(a3))
      {
        goto LABEL_2;
      }

      v57 = *(v9 + 272);
      *(v9 + 272) = a3;
LABEL_51:
      CFRetain(a3);
      goto LABEL_52;
    }

    if (CFEqual(TypeID, @"VideoTargetArray"))
    {
      if (*(v9 + 560))
      {
        goto LABEL_2;
      }

      if (a3)
      {
        v115 = CFArrayGetTypeID();
        if (v115 != CFGetTypeID(a3))
        {
          goto LABEL_2;
        }
      }

      FigSimpleMutexLock();
      v116 = *(v9 + 288);
      if (v116)
      {
        Count = CFArrayGetCount(v116);
        v118 = *(v9 + 288);
      }

      else
      {
        v118 = 0;
        Count = 0;
      }

      *(v9 + 288) = a3;
      if (a3)
      {
        CFRetain(a3);
      }

      if (v118)
      {
        CFRelease(v118);
      }

      *(v9 + 354) = 0;
      v119 = *(v9 + 288);
      if (v119)
      {
        v120 = CFArrayGetCount(v119);
      }

      else
      {
        v120 = 0;
      }

      CFArrayRemoveAllValues(*(v9 + 296));
      v127 = 0;
      v128 = *MEMORY[0x1E695E480];
      while (1)
      {
        v129 = *(v9 + 288);
        if (v129)
        {
          v129 = CFArrayGetCount(v129);
        }

        if (v127 >= v129)
        {
          break;
        }

        rect.origin.x = 0.0;
        VideoTargetInfoCreate(v128, &rect, v121, v122, v123, v124, v125, v126);
        CFArrayAppendValue(*(v9 + 296), *&rect.origin.x);
        CFRelease(*&rect.origin.x);
        ++v127;
      }

      FigSimpleMutexUnlock();
      if (v120 == Count)
      {
        goto LABEL_28;
      }

      v112 = a1;
      v113 = 2;
      v111 = 0;
      v114 = v120;
    }

    else
    {
      if (!CFEqual(TypeID, @"ShouldWaitForVideoTarget"))
      {
        if (CFEqual(TypeID, @"AllowAlternateVideoDecoderSelection"))
        {
          *(v9 + 648) = *MEMORY[0x1E695E4D0] == a3;
          goto LABEL_28;
        }

        if (CFEqual(TypeID, @"ToneMapToStandardDynamicRange"))
        {
          if (!a3)
          {
            goto LABEL_2;
          }

          v130 = CFGetTypeID(a3);
          if (v130 != CFBooleanGetTypeID())
          {
            goto LABEL_2;
          }

          v131 = CFBooleanGetValue(a3);
          *(v9 + 236) = v131;
          [*(v9 + 16) setToneMapToStandardDynamicRange:v131 != 0];
          goto LABEL_28;
        }

        if (CFEqual(TypeID, @"EnableFlushCAToRemoveImage"))
        {
          *(v9 + 649) = *MEMORY[0x1E695E4C0] != a3;
          goto LABEL_28;
        }

        if (CFEqual(TypeID, @"DisplayList"))
        {
          v132 = *(v9 + 544);
          block = MEMORY[0x1E69E9820];
          v166 = 3221225472;
          v167 = __vq_SetProperty_block_invoke;
          v168 = &__block_descriptor_48_e5_v8__0l;
          v169 = v9;
          v170 = a3;
          dispatch_sync(v132, &block);
          goto LABEL_28;
        }

        if (CFEqual(TypeID, @"DisallowVideoLayerDisplayCompositing"))
        {
          v133 = *MEMORY[0x1E695E4D0] == a3;
          if (*(v9 + 238) == v133)
          {
            goto LABEL_28;
          }

          *(v9 + 238) = v133;
          if (!*(v9 + 16))
          {
            goto LABEL_28;
          }

          rect.origin.x = 0.0;
          if (FigDeferredTransactionCreate(*MEMORY[0x1E695E480], &rect))
          {
            goto LABEL_28;
          }

          FBLSupportAppendDeferredTransactionChangeToSetAllowsDisplayCompositing(*&rect.origin.x, *(v9 + 16), *(v9 + 238) == 0, "vq_SetProperty");
        }

        else
        {
          if (CFEqual(TypeID, @"CompensateForDisplayLatency"))
          {
            v134 = *MEMORY[0x1E695E4C0] != a3;
            *(v9 + 239) = v134;
            FigSimpleMutexLock();
            v135 = *(v9 + 248);
            if (v135)
            {
              FigLayerSynchronizerSetCompensateForDisplayLatency(v135, v134);
            }

            goto LABEL_128;
          }

          if (CFEqual(TypeID, @"PreferredCADynamicRange"))
          {
            if (!a3)
            {
              goto LABEL_2;
            }

            v136 = CFGetTypeID(a3);
            if (v136 != CFStringGetTypeID())
            {
              goto LABEL_2;
            }

            if (*(v9 + 16))
            {
              rect.origin.x = 0.0;
              if (!FigDeferredTransactionCreate(*MEMORY[0x1E695E480], &rect))
              {
                FBLSupportAppendDeferredTransactionChangeToSetPreferredCADynamicRange(*&rect.origin.x, *(v9 + 16), a3, "vq_SetProperty");
                FigDeferredTransactionCommit(*&rect.origin.x, 1);
                v59 = rect.origin.x;
                if (*&rect.origin.x)
                {
                  goto LABEL_205;
                }
              }
            }

            goto LABEL_28;
          }

          if (!CFEqual(TypeID, @"VideoLayerGeometryFlipped"))
          {
            if (CFEqual(TypeID, @"ClientIsSecureCaptureExtension"))
            {
              *(v9 + 680) = *MEMORY[0x1E695E4D0] == a3;
            }

            else if (CFEqual(TypeID, @"ResponsibleProcessID"))
            {
              if (!a3)
              {
                goto LABEL_2;
              }

              v138 = CFGetTypeID(a3);
              if (v138 != CFNumberGetTypeID())
              {
                goto LABEL_2;
              }

              SInt32 = FigCFNumberGetSInt32();
              if (SInt32 <= 0)
              {
                goto LABEL_2;
              }

              v140 = *(v9 + 644);
              *(v9 + 644) = SInt32;
              if (*(v9 + 376) && v140 != SInt32)
              {
                vq_setAllImageQueuesResponsibleProcessID(a1);
              }
            }

            goto LABEL_28;
          }

          if (!a3)
          {
            goto LABEL_2;
          }

          v137 = CFGetTypeID(a3);
          if (v137 != CFBooleanGetTypeID())
          {
            goto LABEL_2;
          }

          if (!*(v9 + 16))
          {
            goto LABEL_28;
          }

          rect.origin.x = 0.0;
          if (FigDeferredTransactionCreate(*MEMORY[0x1E695E480], &rect))
          {
            goto LABEL_28;
          }

          FBLSupportAppendDeferredTransactionChangeToSetGeometryFlipped(*&rect.origin.x, *(v9 + 16), *MEMORY[0x1E695E4D0] == a3, "vq_SetProperty");
        }

        FigDeferredTransactionCommit(*&rect.origin.x, 0);
        v59 = rect.origin.x;
        if (!*&rect.origin.x)
        {
          goto LABEL_28;
        }

        goto LABEL_205;
      }

      if (!a3)
      {
        goto LABEL_2;
      }

      v109 = CFGetTypeID(a3);
      if (v109 != CFBooleanGetTypeID())
      {
        goto LABEL_2;
      }

      v110 = CFBooleanGetValue(a3);
      if (*(v9 + 328) == v110)
      {
        goto LABEL_28;
      }

      v111 = v110;
      v112 = a1;
      v113 = 1;
      v114 = 0;
    }

    vq_handleWaitForVideoTargetConditionChange(v112, v113, v111, v114);
    goto LABEL_28;
  }

  if (!a3)
  {
    goto LABEL_2;
  }

  v75 = CFGetTypeID(a3);
  if (v75 != CFBooleanGetTypeID())
  {
    goto LABEL_2;
  }

  *(v9 + 417) = 1;
  *(v9 + 418) = CFBooleanGetValue(a3);
  if (!*(v9 + 376))
  {
    goto LABEL_28;
  }

  FigRenderPipelineGetFigBaseObject();
  OUTLINED_FUNCTION_2_161();

  CMBaseObjectSetProperty(v76, v77, v78);
}

void vq_reportResourceUsageStatsToGlobalResourceArbiter(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  cf = 0;
  v3 = 0;
  if (!FigPlayerResourceArbiterGetGlobalSingleton(&v3) && !FigPlayerResourceArbiterPlayerSpecifierCreate(&cf) && !FigPlayerResourceArbiterPlayerSpecifierSetResolutionFloor(cf, *(DerivedStorage + 728), *(DerivedStorage + 736)) && !FigPlayerResourceArbiterPlayerSpecifierSetResolutionCeiling(cf, *(DerivedStorage + 728), *(DerivedStorage + 736)) && !FigPlayerResourceArbiterPlayerSpecifierSetIsFullyActive(cf, *(DerivedStorage + 844)) && !FigPlayerResourceArbiterPlayerSpecifierSetIsMVStereo(cf, *(DerivedStorage + 705)) && !FigPlayerResourceArbiterPlayerSpecifierSetDesiredRate(cf, *(DerivedStorage + 848)) && ((*(DerivedStorage + 760) & 1) == 0 || !FigPlayerResourceArbiterPlayerSpecifierSetFrameRateCeiling(cf, *(DerivedStorage + 744)) && !FigPlayerResourceArbiterPlayerSpecifierSetFrameRateFloor(cf, *(DerivedStorage + 744))))
  {
    FigPlayerResourceArbiterSetSpecifierForConsumer(v3, cf, *(DerivedStorage + 720));
  }

  if (cf)
  {
    CFRelease(cf);
  }
}

uint64_t FigVideoQueue_CopyCurrentlyDisplayedPixelBufferFromCAImageQueue(uint64_t a1, const __CFAllocator *a2, CVPixelBufferRef *a3)
{
  pixelBufferOut = 0;
  if (!a3)
  {
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v9, pixelBufferOut, v11);
    return 0;
  }

  *a3 = 0;
  v5 = CAImageQueueCopyDisplayedIOSurface();
  if (!v5)
  {
    return 0;
  }

  v6 = v5;
  if (IOSurfaceGetProtectionOptions())
  {
    v7 = 0;
  }

  else
  {
    v7 = CVPixelBufferCreateWithIOSurface(a2, v6, 0, &pixelBufferOut);
    if (v7)
    {
      if (pixelBufferOut)
      {
        CFRelease(pixelBufferOut);
      }
    }

    else
    {
      *a3 = pixelBufferOut;
      pixelBufferOut = 0;
    }
  }

  CFRelease(v6);
  return v7;
}

uint64_t vq_setAllImageQueuesResponsibleProcessID(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v10 = 0;
  FigSimpleMutexLock();
  v3 = vq_setImageQueueResponsibleProcessID(a1, *(DerivedStorage + 56));
  if (!v3)
  {
    for (i = 0; ; ++i)
    {
      Count = *(DerivedStorage + 288);
      if (Count)
      {
        Count = CFArrayGetCount(Count);
      }

      if (i >= Count)
      {
        break;
      }

      ValueAtIndex = CFArrayGetValueAtIndex(*(DerivedStorage + 296), i);
      if (CFArrayGetCount(ValueAtIndex[3]) >= 1)
      {
        v7 = 0;
        do
        {
          VideoTargetInfoCopyFigImageQueueAtIndex(ValueAtIndex, v7, &v10);
          v8 = v10;
          vq_setImageQueueResponsibleProcessID(a1, v10);
          if (v8)
          {
            CFRelease(v8);
            v10 = 0;
          }

          ++v7;
        }

        while (v7 < CFArrayGetCount(ValueAtIndex[3]));
      }
    }
  }

  FigSimpleMutexUnlock();
  return v3;
}

uint64_t vq_createFigImageQueueAndTagsForVideoTargetAndAppendToArraysAndTargetInfo(uint64_t a1, uint64_t a2, uint64_t a3, CMTagValue a4, int64_t a5, __CFArray *a6, __CFArray *a7, uint64_t a8, uint64_t a9, CMTagValue a10, uint64_t a11, CMTagValue a12)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  cf = 0;
  value = 0;
  if (!a2 || !a6 || !a7 || !a8)
  {
    OUTLINED_FUNCTION_723();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
    goto LABEL_26;
  }

  v20 = DerivedStorage;
  v21 = *(*(CMBaseObjectGetVTable() + 16) + 8);
  if (!v21)
  {
    goto LABEL_12;
  }

  v22 = v21(a2, 0, &value);
  if (v22)
  {
    goto LABEL_26;
  }

  v23 = *(v20 + 568);
  if (v23)
  {
    FigImageQueueGetFigBaseObject();
    v25 = v24;
    v26 = *(*(CMBaseObjectGetVTable() + 8) + 56);
    if (v26)
    {
      v22 = v26(v25, @"FigImageQueueProperty_Timebase", v23);
      if (!v22)
      {
        goto LABEL_10;
      }

LABEL_26:
      v29 = v22;
      goto LABEL_13;
    }

LABEL_12:
    v29 = 4294954514;
    goto LABEL_13;
  }

LABEL_10:
  CFArrayAppendValue(a6, value);
  if (a5 < 0)
  {
    CFArrayAppendValue(a7, *MEMORY[0x1E695E738]);
    Mutable = 0;
    v27 = *MEMORY[0x1E695E480];
  }

  else
  {
    v27 = *MEMORY[0x1E695E480];
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    FigCFDictionarySetInt32();
    CFArrayAppendValue(a7, Mutable);
  }

  v29 = CMTagCollectionCreateMutable(v27, 0, &cf);
  if (!v29)
  {
    CMTagCollectionAddTag(cf, *MEMORY[0x1E6960640]);
    *&v35.category = a3;
    v35.value = a4;
    CMTagCollectionAddTag(cf, v35);
    if ((a5 & 0x8000000000000000) == 0)
    {
      v31 = cf;
      v36 = CMTagMakeWithSInt64Value(kCMTagCategory_VideoLayerID, a5);
      CMTagCollectionAddTag(v31, v36);
    }

    *&v37.category = a9;
    v37.value = a10;
    CMTagCollectionAddTag(cf, v37);
    *&v38.category = a11;
    v38.value = a12;
    CMTagCollectionAddTag(cf, v38);
    FPSupport_AddDefaultVideoTagsToChannelDescriptionForMissingCategories(cf);
    v32 = cf;
    CFArrayAppendValue(*(a8 + 24), value);
    CFArrayAppendValue(*(a8 + 32), v32);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

LABEL_13:
  if (value)
  {
    CFRelease(value);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  return v29;
}

CFStringRef FigVideoQueueCreateLocalWithOptions_cold_3(const void *a1, CFStringRef *a2)
{
  v4 = getpid();
  v5 = FigAtomicIncrement32();
  v6 = CFGetAllocator(a1);
  result = CFStringCreateWithFormat(v6, 0, @"com.apple.coremedia.videoqueue.resourcearbiter.consumername.%s.%d-%d", "", v4, v5);
  *a2 = result;
  return result;
}

void VideoTargetInfoCreate_cold_2(uint64_t a1, const void *a2)
{
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);

  CFRelease(a2);
}

void vq_Flush_cold_1(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v3 = OUTLINED_FUNCTION_10_62(DerivedStorage);
  OUTLINED_FUNCTION_5_113(v3);
  *v4 = *MEMORY[0x1E695F060];
  vq_reportResourceUsageStatsToGlobalResourceArbiter(a1);
}

__n128 vq_sourceSampleBufferQueue_becameEmpty_cold_1(uint64_t a1, __n128 *a2, __n128 *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v7 = OUTLINED_FUNCTION_10_62(DerivedStorage);
  OUTLINED_FUNCTION_5_113(v7);
  *v8 = *MEMORY[0x1E695F060];
  vq_reportResourceUsageStatsToGlobalResourceArbiter(a1);
  result = *a3;
  a2[1].n128_u64[0] = a3[1].n128_u64[0];
  *a2 = result;
  return result;
}

void vq_containsStereoVideoTaggedBufferGroup_cold_1(__CFArray *a1)
{
  if (!FigTagCollectionCreateMutable())
  {
    CMTagCollectionAddTag(0, *MEMORY[0x1E6960640]);
    CMTagCollectionAddTag(0, *MEMORY[0x1E6960688]);
    FPSupport_AddDefaultVideoTagsToChannelDescriptionForMissingCategories(0);
    CFArrayAppendValue(a1, 0);
  }
}

void sr_checkTokenLevelAndHandleIfNecessary()
{
  context = 0;
  state64 = 0;
  v4 = 0;
  v3 = 0;
  if (_MergedGlobals_8 != -1)
  {
    notify_get_state(_MergedGlobals_8, &state64);
    v0 = state64 / 0xA;
    state64 = v0;
    if (qword_1ED4CA2B0 != v0)
    {
      qword_1ED4CA2B0 = v0;
      if (qword_1EAF1A268)
      {
        CFDictionaryApplyFunction(qword_1EAF1A268, sr_findPolicyForLevel, &context);
        if (!context)
        {
          return;
        }

        CFDictionaryGetValue(qword_1EAF1A268, context);
        FigCFDictionaryGetInt32IfPresent();
        FigCFDictionaryGetInt32IfPresent();
        FigCFDictionaryGetInt32IfPresent();
        FigSimpleMutexLock();
        if (!memcmp(&qword_1EAF1A270, &v3, 0xCuLL))
        {
          FigSimpleMutexUnlock();
        }

        else
        {
          qword_1EAF1A270 = v3;
          dword_1EAF1A278 = v4;
          FigSimpleMutexUnlock();
          Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 3, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
          FigCFDictionarySetInt32();
          FigCFDictionarySetInt32();
          FigCFDictionarySetInt32();
          LocalCenter = CFNotificationCenterGetLocalCenter();
          CFNotificationCenterPostNotification(LocalCenter, @"StreamingRestrictions_RestrictionsChanged", 0, Mutable, 1u);
          if (Mutable)
          {
            CFRelease(Mutable);
          }
        }
      }
    }

    if (context)
    {
      CFRelease(context);
    }
  }
}