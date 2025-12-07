uint64_t InvalidateCryptorSetApplier(uint64_t a1, uint64_t a2)
{
  result = CMBaseObjectGetDerivedStorage();
  if (*(result + 96))
  {
    if (!a1)
    {
      return result;
    }
  }

  else
  {
    CMNotificationCenterGetDefaultLocalCenter();
    result = FigNotificationCenterRemoveWeakListener();
    if (!a1)
    {
      return result;
    }
  }

  VTable = CMBaseObjectGetVTable();
  v5 = *(VTable + 8);
  result = VTable + 8;
  v6 = *(v5 + 24);
  if (v6)
  {

    return v6(a1);
  }

  return result;
}

uint64_t InitKeyManagerForPastis(uint64_t a1)
{
  result = PKDKeyManagerCreateForPastis(*MEMORY[0x1E695E480], *(a1 + 8));
  **a1 = result;
  return result;
}

void *InitMovieIDForPastis(uint64_t a1)
{
  result = PKDMovieIDCreateForPastis(*MEMORY[0x1E695E480]);
  *(a1 + 48) = result;
  return result;
}

uint64_t InitKeyManagerForMSE(uint64_t a1)
{
  result = PKDKeyManagerCreateForMSE(*MEMORY[0x1E695E480], *(a1 + 8));
  **a1 = result;
  return result;
}

uint64_t RegisterFigPKDCPEProtectorType()
{
  FigCPEProtectorGetClassID();

  return FigBaseClassRegisterClass();
}

void FigInstallVirtualDisplay(uint64_t result, uint64_t a2)
{
  if (FigInstallVirtualDisplay_once != -1)
  {
    FigInstallVirtualDisplay_cold_1();
  }
}

uint64_t FigVirtualFramebuffer_GetSupportedDigitalOutModes(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(*(CMBaseObjectGetVTable() + 16) + 8);
  if (!v6)
  {
    return 4294954514;
  }

  return v6(a1, a2, a3);
}

uint64_t FigVirtualFramebuffer_SetDigitalOutMode(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(*(CMBaseObjectGetVTable() + 16) + 16);
  if (!v6)
  {
    return 4294954514;
  }

  return v6(a1, a2, a3);
}

uint64_t FigVirtualFramebuffer_SubmitSurface(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, double a7, double a8, double a9, double a10, double a11, double a12, double a13, double a14)
{
  v28 = *(*(CMBaseObjectGetVTable() + 16) + 24);
  if (!v28)
  {
    return 4294954514;
  }

  v29.n128_f64[0] = a7;
  v30.n128_f64[0] = a8;
  v31.n128_f64[0] = a9;
  v32.n128_f64[0] = a10;
  v33.n128_f64[0] = a11;
  v34.n128_f64[0] = a12;
  v35.n128_f64[0] = a13;
  v36.n128_f64[0] = a14;

  return v28(a1, a2, a3, a4, a5, a6, v29, v30, v31, v32, v33, v34, v35, v36);
}

uint64_t FigVirtualFramebuffer_SwapWaitWithTimeout(uint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  v8 = *(*(CMBaseObjectGetVTable() + 16) + 32);
  if (!v8)
  {
    return 4294954514;
  }

  v9.n128_f64[0] = a4;

  return v8(a1, a2, a3, v9);
}

uint64_t FigVirtualFramebuffer_SwapWaitSurfaceTimeout(uint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  v8 = *(*(CMBaseObjectGetVTable() + 16) + 40);
  if (!v8)
  {
    return 4294954514;
  }

  v9.n128_f64[0] = a4;

  return v8(a1, a2, a3, v9);
}

uint64_t FigVirtualFramebuffer_GetVSyncRunLoopSource(uint64_t a1)
{
  v2 = *(*(CMBaseObjectGetVTable() + 16) + 48);
  if (!v2)
  {
    return 0;
  }

  return v2(a1);
}

uint64_t FigVirtualFramebuffer_EnableVSyncNotifications(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(*(CMBaseObjectGetVTable() + 16) + 56);
  if (!v6)
  {
    return 4294954514;
  }

  return v6(a1, a2, a3);
}

uint64_t FigVirtualFramebuffer_DisableVSyncNotifications(uint64_t a1)
{
  v2 = *(*(CMBaseObjectGetVTable() + 16) + 64);
  if (!v2)
  {
    return 4294954514;
  }

  return v2(a1);
}

uint64_t FigVirtualFramebuffer_GetHotPlugRunLoopSource(uint64_t a1)
{
  v2 = *(*(CMBaseObjectGetVTable() + 16) + 72);
  if (!v2)
  {
    return 0;
  }

  return v2(a1);
}

uint64_t FigVirtualFramebuffer_EnableHotPlugDetectNotifications(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(*(CMBaseObjectGetVTable() + 16) + 80);
  if (!v6)
  {
    return 4294954514;
  }

  return v6(a1, a2, a3);
}

uint64_t FigVirtualFramebuffer_DisableHotPlugDetectNotifications(uint64_t a1)
{
  v2 = *(*(CMBaseObjectGetVTable() + 16) + 88);
  if (!v2)
  {
    return 4294954514;
  }

  return v2(a1);
}

uint64_t FigVirtualFramebuffer_GetHDCPDownstreamState(uint64_t a1, uint64_t a2)
{
  v4 = *(*(CMBaseObjectGetVTable() + 16) + 96);
  if (!v4)
  {
    return 4294954514;
  }

  return v4(a1, a2);
}

uint64_t FigVirtualFramebuffer_GetDisplayCapabilities(uint64_t a1, uint64_t a2)
{
  cf = 0;
  FigBytePumpGetFigBaseObject();
  v4 = v3;
  v5 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v5)
  {
    v5(v4, @"SupportsRotation", *MEMORY[0x1E695E480], &cf);
    if (cf)
    {
      v6 = CFGetTypeID(cf);
      if (v6 == CFBooleanGetTypeID())
      {
        if (CFBooleanGetValue(cf))
        {
          v7 = 0x5A0000010ELL;
          if (!a2)
          {
            return 0;
          }

          goto LABEL_8;
        }
      }
    }
  }

  v7 = 0;
  if (a2)
  {
LABEL_8:
    *a2 = 0;
    *(a2 + 4) = v7;
    *(a2 + 12) = 1;
    *(a2 + 13) = 0;
    *(a2 + 15) = 0;
  }

  return 0;
}

uint64_t FigVirtualFramebuffer_EnableMirroring(uint64_t a1, uint64_t a2)
{
  v4 = *(*(CMBaseObjectGetVTable() + 16) + 104);
  if (!v4)
  {
    return 4294954514;
  }

  return v4(a1, a2);
}

uint64_t FigVirtualFramebuffer_AcquireWritebackSurface(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, double a7, double a8)
{
  v16 = *(*(CMBaseObjectGetVTable() + 16) + 112);
  if (!v16)
  {
    return 4294954514;
  }

  v17.n128_f64[0] = a7;
  v18.n128_f64[0] = a8;

  return v16(a1, a2, a3, a4, a5, a6, v17, v18);
}

uint64_t FigVirtualFramebuffer_RelinquishWritebackSurface(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  VTable = CMBaseObjectGetVTable();
  v10 = *(VTable + 16);
  result = VTable + 16;
  v11 = *(v10 + 120);
  if (v11)
  {

    return v11(a1, a2, a3, a4);
  }

  return result;
}

uint64_t FigVirtualFramebuffer_CopyProperty(uint64_t a1, uint64_t a2)
{
  v7 = 0;
  FigBytePumpGetFigBaseObject();
  v4 = v3;
  v5 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v5)
  {
    return 0;
  }

  v5(v4, a2, *MEMORY[0x1E695E480], &v7);
  return v7;
}

uint64_t FigVirtualFramebuffer_GetHDCPRunLoopSource(uint64_t a1)
{
  v2 = *(*(CMBaseObjectGetVTable() + 16) + 128);
  if (!v2)
  {
    return 0;
  }

  return v2(a1);
}

uint64_t FigVirtualFramebuffer_HDCPSendRequest(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = *(*(CMBaseObjectGetVTable() + 16) + 136);
  if (!v10)
  {
    return 4294954514;
  }

  return v10(a1, a2, a3, a4, a5);
}

uint64_t FigVirtualFramebuffer_HDCPGetReply(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(*(CMBaseObjectGetVTable() + 16) + 144);
  if (!v6)
  {
    return 4294954514;
  }

  return v6(a1, a2, a3);
}

uint64_t FigVirtualFramebuffer_GetProtectionOptions(uint64_t a1, uint64_t a2)
{
  v4 = *(*(CMBaseObjectGetVTable() + 16) + 152);
  if (!v4)
  {
    return 4294954514;
  }

  return v4(a1, a2);
}

uint64_t OUTLINED_FUNCTION_1_175(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, __int16 a11, char a12, char a13, int a14)
{

  return fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
}

uint64_t FigMetricItemPlaybackSummaryEventCreate(const __CFAllocator *a1, __int128 *a2, const void *a3, const void *a4, const void *a5, uint64_t a6, uint64_t a7, uint64_t a8, double a9, double a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15)
{
  ensureMetricEventTrace();
  if (!a15)
  {
    FigMetricItemPlaybackSummaryEventCreate_cold_1(&v39);
    return v39;
  }

  FigMetricEventGetClassID();
  v26 = CMDerivedObjectCreate();
  v27 = 0;
  if (!v26)
  {
    v37 = a8;
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    v29 = FigSimpleMutexCreate();
    *(DerivedStorage + 136) = v29;
    if (v29)
    {
      *DerivedStorage = 1;
      *(DerivedStorage + 8) = 15;
      if (a3)
      {
        v30 = CFRetain(a3);
      }

      else
      {
        Current = CFAbsoluteTimeGetCurrent();
        v30 = CFDateCreate(a1, Current);
      }

      *(DerivedStorage + 16) = v30;
      v32 = *a2;
      *(DerivedStorage + 48) = *(a2 + 2);
      *(DerivedStorage + 32) = v32;
      if (a4)
      {
        v33 = CFRetain(a4);
      }

      else
      {
        v33 = 0;
      }

      *(DerivedStorage + 24) = v33;
      if (a5)
      {
        v34 = CFRetain(a5);
      }

      else
      {
        v34 = 0;
      }

      v26 = 0;
      *(DerivedStorage + 56) = v34;
      *(DerivedStorage + 64) = a6;
      *(DerivedStorage + 72) = a7;
      *(DerivedStorage + 80) = v37;
      *(DerivedStorage + 88) = a11;
      *(DerivedStorage + 96) = a12;
      *(DerivedStorage + 104) = a9;
      *(DerivedStorage + 112) = a10;
      *(DerivedStorage + 120) = a13;
      *(DerivedStorage + 128) = a14;
      *a15 = 0;
      return v26;
    }

    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v15, v37, 0);
    v26 = v36;
    v27 = cf;
  }

  if (v27)
  {
    CFRelease(v27);
  }

  return v26;
}

uint64_t mes_finalize(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v2 = DerivedStorage[7];
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = DerivedStorage[2];
  if (v3)
  {
    CFRelease(v3);
  }

  v4 = DerivedStorage[3];
  if (v4)
  {
    CFRelease(v4);
  }

  return FigSimpleMutexDestroy();
}

uint64_t mes_setImmutable(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  *DerivedStorage = 0;

  return FigSimpleMutexUnlock();
}

uint64_t mes_isMutable(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  v2 = *DerivedStorage;
  FigSimpleMutexUnlock();
  return v2;
}

CFTypeRef mes_copySessionID(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  v2 = *(DerivedStorage + 24);
  if (v2)
  {
    v3 = CFRetain(v2);
  }

  else
  {
    v3 = 0;
  }

  FigSimpleMutexUnlock();
  return v3;
}

uint64_t mes_setSessionID(uint64_t a1, const void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  if (*DerivedStorage)
  {
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

    v5 = 0;
  }

  else
  {
    mes_setSessionID_cold_1(&v7);
    v5 = v7;
  }

  FigSimpleMutexUnlock();
  return v5;
}

uint64_t mes_getMediaTime@<X0>(uint64_t a2@<X8>)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  *a2 = *(DerivedStorage + 32);
  *(a2 + 16) = *(DerivedStorage + 48);

  return FigSimpleMutexUnlock();
}

uint64_t mes_setMediaTime(uint64_t a1, __int128 *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  if (*DerivedStorage)
  {
    v4 = 0;
    v5 = *a2;
    *(DerivedStorage + 48) = *(a2 + 2);
    *(DerivedStorage + 32) = v5;
  }

  else
  {
    mes_setMediaTime_cold_1(&v7);
    v4 = v7;
  }

  FigSimpleMutexUnlock();
  return v4;
}

double FigMetadataReaderCreateWithSampleBufferForIcy(uint64_t a1, void *a2, CFTypeRef *a3)
{
  if (a2)
  {
    if (a3)
    {
      FigMetadataReaderGetClassID();
      if (!CMDerivedObjectCreate())
      {
        DerivedStorage = CMBaseObjectGetDerivedStorage();
        FigIcyMetadataParseSampleBuffer(a2, DerivedStorage, DerivedStorage + 1);
        *a3 = 0;
      }

      return result;
    }

    emitter = fig_log_get_emitter();
    v9 = v3;
    v10 = 414;
  }

  else
  {
    emitter = fig_log_get_emitter();
    v9 = v3;
    v10 = 411;
  }

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 4294954696, "<<<< FMDR_ICY >>>>", v10, v9);
}

void FigIcyMetadataFinalize(uint64_t a1)
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
    CFRelease(v2);
    *(DerivedStorage + 8) = 0;
  }
}

__CFString *FigIcyMetadataCopyDebugDescription(uint64_t a1)
{
  v2 = *MEMORY[0x1E695E480];
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  CFStringAppendFormat(Mutable, 0, @" FigIcyMetadataReader %p\n", DerivedStorage);
  v5 = *(*(CMBaseObjectGetVTable() + 16) + 40);
  if (v5)
  {
    v6 = v5(a1, 0, 0);
    if (v6 >= 1)
    {
      v7 = v6;
      CFStringAppendFormat(Mutable, 0, @"  Item Count = %d\n", v6);
      for (i = 0; i != v7; ++i)
      {
        theDict = 0;
        cf = 0;
        v9 = *(*(CMBaseObjectGetVTable() + 16) + 48);
        if (!v9 || v9(a1, 0, 0, i, v2, &cf, &theDict))
        {
          break;
        }

        CFStringAppendFormat(Mutable, 0, @"   [%d]:\n", i);
        if (cf)
        {
          v10 = CFCopyDescription(cf);
          if (v10)
          {
            v11 = v10;
            CFStringAppendFormat(Mutable, 0, @"    Value = %@\n", v10);
            CFRelease(v11);
          }

          CFRelease(cf);
        }

        if (theDict)
        {
          CFStringAppendFormat(Mutable, 0, @"    Properties:\n");
          Value = CFDictionaryGetValue(theDict, @"key");
          if (Value)
          {
            CFStringAppendFormat(Mutable, 0, @"     Key = %@\n", Value);
          }

          CFRelease(theDict);
        }
      }
    }
  }

  return Mutable;
}

uint64_t FigIcyMetadataCopyProperty(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (FigCFEqual())
  {
    v5 = *MEMORY[0x1E695E4D0];
LABEL_5:
    v6 = CFRetain(v5);
    result = 0;
    *a4 = v6;
    return result;
  }

  if (FigCFEqual())
  {
    v5 = @"com.nullsoft.icy";
    goto LABEL_5;
  }

  return 4294954512;
}

uint64_t FigIcyMetadataCopyValue(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, CFTypeRef *a6, CFTypeRef *a7)
{
  v20 = 0;
  cf = 0;
  if (!a1)
  {
    v19 = 176;
LABEL_22:
    FigIcyMetadataCopyValue_cold_1(v19, &v22);
    v17 = v22;
    goto LABEL_14;
  }

  if (!a3)
  {
    v19 = 177;
    goto LABEL_22;
  }

  if (!a6)
  {
    v19 = 178;
    goto LABEL_22;
  }

  if (a7)
  {
    v14 = &v20;
  }

  else
  {
    v14 = 0;
  }

  v15 = *(*(CMBaseObjectGetVTable() + 16) + 48);
  if (!v15)
  {
    v17 = 4294954514;
    goto LABEL_14;
  }

  v16 = v15(a1, a2, a3, 0, a5, &cf, v14);
  if (v16)
  {
    v17 = v16;
LABEL_14:
    if (cf)
    {
      CFRelease(cf);
    }

    goto LABEL_16;
  }

  if (a4 && CFGetTypeID(cf) != a4)
  {
    v17 = 4294954688;
    goto LABEL_14;
  }

  *a6 = cf;
  cf = 0;
  v17 = 0;
  if (a7)
  {
    *a7 = v20;
    return v17;
  }

LABEL_16:
  if (v20)
  {
    CFRelease(v20);
  }

  return v17;
}

uint64_t FigIcyMetadataGetKeyCount(uint64_t a1, const void *a2)
{
  if (!CMBaseObjectGetDerivedStorage())
  {
    FigIcyMetadataGetKeyCount_cold_2();
    return 0;
  }

  if (a2 && !CFEqual(a2, @"icy"))
  {
    FigIcyMetadataGetKeyCount_cold_1();
    return 0;
  }

  return FigCFDictionaryGetCount();
}

uint64_t FigIcyMetadataCopyKeyAtIndex(uint64_t a1, const void *a2, CFIndex a3, uint64_t a4, void *a5)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (DerivedStorage)
  {
    if (a5)
    {
      v9 = DerivedStorage;
      if (a2 && !CFEqual(a2, @"icy"))
      {
        FigIcyMetadataCopyKeyAtIndex_cold_1(&v14);
        return v14;
      }

      else
      {
        Count = *v9;
        if (*v9)
        {
          Count = CFArrayGetCount(Count);
        }

        if (Count > a3 && (ValueAtIndex = CFArrayGetValueAtIndex(*v9, a3)) != 0)
        {
          v12 = CFRetain(ValueAtIndex);
          result = 0;
          *a5 = v12;
        }

        else
        {
          return 4294954692;
        }
      }
    }

    else
    {
      FigIcyMetadataCopyKeyAtIndex_cold_2(&v15);
      return v15;
    }
  }

  else
  {
    FigIcyMetadataCopyKeyAtIndex_cold_3(&v16);
    return v16;
  }

  return result;
}

uint64_t FigIcyMetadataGetItemCount(uint64_t a1, const void *a2, __CFString *a3)
{
  if (a3)
  {
    return FigIcyMetadataHasKey(a1, a2, a3);
  }

  return FigIcyMetadataGetKeyCount(a1, a2);
}

uint64_t FigIcyMetadataMapKeyToIcyKeyspace(uint64_t result, __CFString *a2, __CFString **a3)
{
  if (result)
  {
    v5 = result;
    if (CFEqual(result, @"icy"))
    {
      result = 0;
    }

    else if (CFEqual(v5, @"comn"))
    {
      v6 = FigCFEqual();
      if (v6)
      {
        a2 = @"StreamTitle";
      }

      else
      {
        a2 = 0;
      }

      if (v6)
      {
        result = 0;
      }

      else
      {
        result = 4294954691;
      }
    }

    else
    {
      a2 = 0;
      result = 4294954690;
    }
  }

  *a3 = a2;
  return result;
}

void FigImageQueueCreateForCacheAndFanOutWithOptions(uint64_t a1, const __CFArray *a2, const __CFArray *a3, uint64_t a4, CFTypeRef *a5)
{
  v52 = *MEMORY[0x1E69E9840];
  fig_note_initialize_category_with_default_work_cf();
  fig_note_initialize_category_with_default_work_cf();
  if (!a5)
  {
    v32 = qword_1EAF170D8;
    v33 = v5;
    v34 = 398;
LABEL_32:

    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v32, 4294954486, "<<<< IQ-CACHEFANOUT >>>>", v34, v33);
    return;
  }

  if (!a2)
  {
    v32 = qword_1EAF170D8;
    v33 = v5;
    v34 = 401;
    goto LABEL_32;
  }

  if (!a3)
  {
    v32 = qword_1EAF170D8;
    v33 = v5;
    v34 = 404;
    goto LABEL_32;
  }

  Count = CFArrayGetCount(a2);
  if (Count == CFArrayGetCount(a3))
  {
    if (Count <= 0)
    {
      FigImageQueueCreateForCacheAndFanOutWithOptions_cold_11(value);
    }

    else
    {
      FigImageQueueGetClassID();
      if (!CMDerivedObjectCreate())
      {
        DerivedStorage = CMBaseObjectGetDerivedStorage();
        *(DerivedStorage + 1040) = 0;
        if (FigCFDictionaryGetStringIfPresent())
        {
          CFStringGetCString(0, (DerivedStorage + 1040), 32, 0x600u);
        }

        theArray = a2;
        v12 = FigSimpleMutexCreate();
        *(DerivedStorage + 24) = v12;
        if (v12)
        {
          v13 = *MEMORY[0x1E695E480];
          v14 = MEMORY[0x1E695E9C0];
          Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], Count, MEMORY[0x1E695E9C0]);
          v16 = CFArrayCreateMutable(v13, Count, v14);
          v17 = v16;
          if (Mutable)
          {
            allocator = v13;
            v46 = a5;
            if (v16)
            {
              v18 = 0;
              v19 = *MEMORY[0x1E695E4D0];
              v20 = *MEMORY[0x1E695E4C0];
              while (1)
              {
                ValueAtIndex = CFArrayGetValueAtIndex(a3, v18);
                value[0] = 0;
                LOBYTE(v49) = 0;
                if (fiqcfo_createPixelBufferConformerForOptions(a1, ValueAtIndex, &v49, value))
                {
                  break;
                }

                v22 = value[0];
                CFArrayAppendValue(v17, value[0]);
                if (v49)
                {
                  v23 = v19;
                }

                else
                {
                  v23 = v20;
                }

                CFArrayAppendValue(Mutable, v23);
                if (v22)
                {
                  CFRelease(v22);
                }

                if (Count == ++v18)
                {
                  *(DerivedStorage + 8) = Mutable;
                  *(DerivedStorage + 16) = v17;
                  Copy = CFArrayCreateCopy(allocator, theArray);
                  *DerivedStorage = Copy;
                  if (Copy)
                  {
                    v25 = dispatch_queue_create("com.apple.coremedia.imagequeue.cache", 0);
                    *(DerivedStorage + 40) = v25;
                    if (v25)
                    {
                      v26 = CFArrayCreateMutable(allocator, 0, MEMORY[0x1E695E9C0]);
                      *(DerivedStorage + 48) = v26;
                      if (v26)
                      {
                        *(DerivedStorage + 88) = 0;
                        v27 = MEMORY[0x1E6960C70];
                        *(DerivedStorage + 56) = *MEMORY[0x1E6960C70];
                        *(DerivedStorage + 72) = *(v27 + 16);
                        *(DerivedStorage + 37) = 0;
                        *(DerivedStorage + 1036) = 3;
                        *(DerivedStorage + 112) = 1;
                        v28 = FigCFWeakReferenceHolderCreateWithReferencedObject();
                        *(DerivedStorage + 96) = v28;
                        if (v28)
                        {
                          memset(__str, 0, sizeof(__str));
                          snprintf(__str, 0x50uLL, "com.apple.coremedia.imagequeue.memorypressure.%p", theArray);
                          if (fiqcfo_createSharedMemoryPressureDispatchQueue_sCreateSharedMemoryPressureDispatchQueueOnce != -1)
                          {
                            FigImageQueueCreateForCacheAndFanOutWithOptions_cold_2();
                          }

                          v29 = dispatch_queue_create_with_target_V2(__str, 0, fiqcfo_createSharedMemoryPressureDispatchQueue_sFIQCFOSharedMemoryPressureDispatchQueue);
                          *(DerivedStorage + 120) = v29;
                          v30 = dispatch_source_create(MEMORY[0x1E69E96E8], 0, 7uLL, v29);
                          *(DerivedStorage + 104) = v30;
                          if (v30)
                          {
                            dispatch_source_set_event_handler_f(v30, fiqcfo_MemoryPressureHandler);
                            dispatch_set_context(*(DerivedStorage + 104), *(DerivedStorage + 96));
                            CFRetain(*(DerivedStorage + 96));
                            dispatch_set_finalizer_f(*(DerivedStorage + 104), fiqcfo_FinalizeMemoryPressureSource);
                            dispatch_resume(*(DerivedStorage + 104));
                            theArraya = CMBaseObjectGetDerivedStorage();
                            value[0] = 0;
                            CMNotificationCenterGetDefaultLocalCenter();
                            fiqcfo_CopyImageQueueArray(0, value, 0, 0);
                            if (value[0])
                            {
                              v31 = CFArrayGetCount(value[0]);
                            }

                            else
                            {
                              v31 = 0;
                            }

                            v35 = 0;
                            while (1)
                            {
                              v36 = *(&fiqcfo_notifications + 3 * v35 + 2);
                              if (v31 >= 1)
                              {
                                break;
                              }

LABEL_41:
                              *(theArraya + v36) = 1;
                              if (++v35 == 5)
                              {
                                v39 = 0;
                                goto LABEL_49;
                              }
                            }

                            v37 = 0;
                            while (1)
                            {
                              CFArrayGetValueAtIndex(value[0], v37);
                              v38 = FigNotificationCenterAddWeakListener();
                              if (v38)
                              {
                                break;
                              }

                              if (v31 == ++v37)
                              {
                                goto LABEL_41;
                              }
                            }

                            v39 = v38;
                            v35 = v35;
                            do
                            {
                              v40 = *(&fiqcfo_notifications + 3 * v35 + 2);
                              if (v37 >= 1)
                              {
                                v41 = v37 + 1;
                                do
                                {
                                  CFArrayGetValueAtIndex(value[0], v41 - 2);
                                  FigNotificationCenterRemoveWeakListener();
                                  --v41;
                                }

                                while (v41 > 1);
                              }

                              *(theArraya + v40) = 0;
                              v37 = v31;
                            }

                            while (v35-- > 0);
LABEL_49:
                            v43 = v46;
                            if (value[0])
                            {
                              CFRelease(value[0]);
                            }

                            if (!v39)
                            {
                              if (dword_1EAF170E0)
                              {
                                os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
                                os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
                                fig_log_call_emit_and_clean_up_after_send_and_compose();
                                v43 = v46;
                              }

                              *v43 = 0;
                            }
                          }

                          else
                          {
                            FigImageQueueCreateForCacheAndFanOutWithOptions_cold_3(value);
                          }
                        }

                        else
                        {
                          FigImageQueueCreateForCacheAndFanOutWithOptions_cold_4(value);
                        }
                      }

                      else
                      {
                        FigImageQueueCreateForCacheAndFanOutWithOptions_cold_5(value);
                      }
                    }

                    else
                    {
                      FigImageQueueCreateForCacheAndFanOutWithOptions_cold_6(value);
                    }
                  }

                  else
                  {
                    FigImageQueueCreateForCacheAndFanOutWithOptions_cold_7(value);
                  }

                  return;
                }
              }
            }

            else
            {
              FigImageQueueCreateForCacheAndFanOutWithOptions_cold_8(value);
            }

            CFRelease(Mutable);
            if (v17)
            {
              goto LABEL_56;
            }
          }

          else
          {
            FigImageQueueCreateForCacheAndFanOutWithOptions_cold_9(value);
            if (v17)
            {
LABEL_56:
              CFRelease(v17);
            }
          }
        }

        else
        {
          FigImageQueueCreateForCacheAndFanOutWithOptions_cold_10(value);
        }
      }
    }
  }

  else
  {
    FigImageQueueCreateForCacheAndFanOutWithOptions_cold_1(value);
  }
}

uint64_t fiqcfo_createPixelBufferConformerForOptions(uint64_t a1, const __CFDictionary *cf, _BYTE *a3, CFTypeRef *a4)
{
  v6 = cf;
  if (cf)
  {
    v7 = CFGetTypeID(cf);
    if (v7 == CFDictionaryGetTypeID())
    {
      CFDictionaryGetValue(v6, @"DestinationPixelBufferAttributes");
      LOBYTE(v6) = CFDictionaryGetValue(v6, @"EnsureModifiableImageBuffers") == *MEMORY[0x1E695E4D0];
    }

    else
    {
      LOBYTE(v6) = 0;
    }
  }

  v8 = VTPixelBufferConformerCreateWithAttributes();
  if (!v8)
  {
    *a3 = v6;
    *a4 = 0;
  }

  return v8;
}

uint64_t fiqcfo_finalize(uint64_t a1)
{
  theArray[16] = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (dword_1EAF170E0)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v4 = CMBaseObjectGetDerivedStorage();
  theArray[0] = 0;
  CMNotificationCenterGetDefaultLocalCenter();
  fiqcfo_CopyImageQueueArray(a1, theArray, 0, 0);
  if (theArray[0])
  {
    Count = CFArrayGetCount(theArray[0]);
  }

  else
  {
    Count = 0;
  }

  for (i = 0; i != 5; ++i)
  {
    v7 = *(&fiqcfo_notifications + 3 * i + 2);
    if (*(v7 + v4))
    {
      if (Count >= 1)
      {
        for (j = 0; j != Count; ++j)
        {
          CFArrayGetValueAtIndex(theArray[0], j);
          FigNotificationCenterRemoveWeakListener();
        }
      }

      *(v4 + v7) = 0;
    }
  }

  if (theArray[0])
  {
    CFRelease(theArray[0]);
  }

  v9 = *(DerivedStorage + 96);
  if (v9)
  {
    CFRelease(v9);
  }

  v10 = *(DerivedStorage + 104);
  if (v10)
  {
    dispatch_release(v10);
  }

  v11 = *(DerivedStorage + 120);
  if (v11)
  {
    dispatch_release(v11);
  }

  CFArrayRemoveAllValues(*(DerivedStorage + 48));
  v12 = *(DerivedStorage + 48);
  if (v12)
  {
    CFRelease(v12);
    *(DerivedStorage + 48) = 0;
  }

  v13 = *(DerivedStorage + 40);
  if (v13)
  {
    dispatch_release(v13);
  }

  v14 = *(DerivedStorage + 80);
  if (v14)
  {
    CFRelease(v14);
  }

  if (*DerivedStorage)
  {
    CFRelease(*DerivedStorage);
  }

  v15 = *(DerivedStorage + 8);
  if (v15)
  {
    CFRelease(v15);
  }

  v16 = *(DerivedStorage + 16);
  if (v16)
  {
    CFRelease(v16);
  }

  return FigSimpleMutexDestroy();
}

CFStringRef fiqcfo_CopyDebugDescription(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  cf = 0;
  fiqcfo_CopyImageQueueArray(a1, &cf, 0, 0);
  v3 = FigCFCopyCompactDescription();
  v4 = CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"%p %s fanOut : %@", a1, DerivedStorage + 1040, v3);
  if (cf)
  {
    CFRelease(cf);
  }

  if (v3)
  {
    CFRelease(v3);
  }

  return v4;
}

uint64_t fiqcfo_copyProperty(const void *a1, const void *a2, uint64_t a3, const __CFNumber **a4)
{
  theArray = 0;
  fiqcfo_CopyImageQueueArray(a1, &theArray, 0, 0);
  if (!theArray)
  {
    if (CFEqual(@"FigImageQueueProperty_CurrentFrameRate", a2))
    {
      goto LABEL_91;
    }

    v9 = 0;
    Count = 0;
LABEL_30:
    if (CFEqual(@"FigImageQueueProperty_EnqueueResetsSystemSleepTimer", a2))
    {
      if (v9)
      {
        FigImageQueueGetFigBaseObject();
        v19 = v18;
        v20 = *(*(CMBaseObjectGetVTable() + 8) + 48);
        if (v20)
        {
          v16 = v20(v19, @"FigImageQueueProperty_EnqueueResetsSystemSleepTimer", a3, a4);
        }

        else
        {
          v16 = 4294954514;
        }

        goto LABEL_92;
      }

LABEL_91:
      v16 = 4294954512;
      goto LABEL_92;
    }

    if (CFEqual(@"FigImageQueueProperty_NextNonJerkyStopTime", a2))
    {
      if (!Count)
      {
        goto LABEL_91;
      }

      if (Count >= 1)
      {
        v21 = 0;
        while (1)
        {
          CFArrayGetValueAtIndex(theArray, v21);
          FigImageQueueGetFigBaseObject();
          v23 = v22;
          v24 = *(*(CMBaseObjectGetVTable() + 8) + 48);
          if (v24)
          {
            v25 = v24(v23, @"FigImageQueueProperty_NextNonJerkyStopTime", a3, a4);
            v16 = v25;
            if (v25 == -12783 || v25 == 0)
            {
              goto LABEL_92;
            }
          }

          else
          {
            v16 = 4294954514;
          }

          if (Count == ++v21)
          {
            goto LABEL_92;
          }
        }
      }

LABEL_70:
      v16 = 0;
      goto LABEL_92;
    }

    if (CFEqual(@"FigImageQueueProperty_FirstImageEnqueued", a2))
    {
      if (!Count)
      {
        goto LABEL_91;
      }

      if (Count < 1)
      {
        v34 = *MEMORY[0x1E695E4C0];
      }

      else
      {
        v27 = 0;
        v28 = *MEMORY[0x1E695E4D0];
        v29 = 1;
        do
        {
          CFArrayGetValueAtIndex(theArray, v27);
          cf = 0;
          FigImageQueueGetFigBaseObject();
          v31 = v30;
          v32 = *(*(CMBaseObjectGetVTable() + 8) + 48);
          if (v32)
          {
            v32(v31, a2, a3, &cf);
          }

          v33 = cf;
          if (cf)
          {
            CFRelease(cf);
          }

          if (v33 == v28)
          {
            break;
          }

          v29 = ++v27 < Count;
        }

        while (Count != v27);
        if (v29)
        {
          v34 = v28;
        }

        else
        {
          v34 = *MEMORY[0x1E695E4C0];
        }
      }

      DictionaryRepresentation = CFRetain(v34);
    }

    else
    {
      if (CFEqual(@"FigImageQueueProperty_CachedVideoFrames", a2))
      {
        fiqcfo_CopyCachedVideoFrames(a1, a4);
        goto LABEL_70;
      }

      if (CFEqual(@"FigImageQueueProperty_CachedTimeRange", a2))
      {
        fiqcfo_CopyCachedTimeRange(a1, a4);
        goto LABEL_70;
      }

      if (CFEqual(@"FigImageQueueProperty_DisplaySize", a2))
      {
        v45.width = fiqcfo_GetMaximumDisplaySize(a1);
        DictionaryRepresentation = CGSizeCreateDictionaryRepresentation(v45);
      }

      else
      {
        if (!CFEqual(@"FigImageQueueProperty_GPURegistryID", a2))
        {
          if (!CFEqual(@"CanSupportAV1FilmGrainDeferMode", a2))
          {
            goto LABEL_91;
          }

          if (Count)
          {
            v36 = *MEMORY[0x1E695E4D0];
            if (Count < 1)
            {
              v16 = 0;
            }

            else
            {
              v37 = 0;
              v38 = 1;
              while (1)
              {
                ValueAtIndex = CFArrayGetValueAtIndex(theArray, v37);
                cf = 0;
                v16 = FigImageQueueCopyProperty(ValueAtIndex, @"CanSupportAV1FilmGrainDeferMode", a3, &cf);
                if (v36 != cf)
                {
                  v38 = 0;
                }

                if (cf)
                {
                  CFRelease(cf);
                }

                if (v38)
                {
                  v40 = 0;
                }

                else
                {
                  v40 = 13;
                }

                if (v16)
                {
                  v40 = 18;
                }

                if (v40)
                {
                  break;
                }

                if (Count == ++v37)
                {
                  goto LABEL_99;
                }
              }

              if (v40 != 13)
              {
                goto LABEL_92;
              }

LABEL_99:
              if (!v38)
              {
                v36 = *MEMORY[0x1E695E4C0];
              }
            }
          }

          else
          {
            v16 = 0;
            v36 = *MEMORY[0x1E695E4D0];
          }

          DictionaryRepresentation = CFRetain(v36);
LABEL_67:
          *a4 = DictionaryRepresentation;
          goto LABEL_92;
        }

        DictionaryRepresentation = fiqcfo_CopyGPURegistryIDIfSingular(a1);
      }
    }

    v16 = 0;
    goto LABEL_67;
  }

  Count = CFArrayGetCount(theArray);
  if (Count < 1)
  {
    if (CFEqual(@"FigImageQueueProperty_CurrentFrameRate", a2))
    {
      goto LABEL_91;
    }

    v9 = 0;
    goto LABEL_30;
  }

  v9 = CFArrayGetValueAtIndex(theArray, 0);
  if (!CFEqual(@"FigImageQueueProperty_CurrentFrameRate", a2))
  {
    goto LABEL_30;
  }

  v10 = 0;
  v11 = 0;
  do
  {
    cf = 0;
    CFArrayGetValueAtIndex(theArray, v10);
    FigImageQueueGetFigBaseObject();
    v13 = v12;
    v14 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v14)
    {
      v15 = v14(v13, @"FigImageQueueProperty_CurrentFrameRate", a3, &cf);
      if (v15)
      {
        v16 = v15;
      }

      else
      {
        valuePtr = 0;
        if (cf)
        {
          CFNumberGetValue(cf, kCFNumberFloat32Type, &valuePtr + 4);
        }

        if (v11)
        {
          CFNumberGetValue(v11, kCFNumberFloat32Type, &valuePtr);
        }

        if (*(&valuePtr + 1) <= *&valuePtr)
        {
          v17 = v11;
        }

        else
        {
          v17 = cf;
          if (cf)
          {
            CFRetain(cf);
          }

          if (v11)
          {
            CFRelease(v11);
          }
        }

        v16 = 0;
        v11 = v17;
      }
    }

    else
    {
      v16 = 4294954514;
    }

    if (cf)
    {
      CFRelease(cf);
    }

    ++v10;
  }

  while (Count != v10);
  if (v11)
  {
    v16 = 0;
    *a4 = v11;
  }

LABEL_92:
  if (theArray)
  {
    CFRelease(theArray);
  }

  return v16;
}

uint64_t fiqcfo_setProperty(const void *a1, const void *a2, const void *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v62 = 0;
  v63 = 0;
  v61 = 0;
  if (!CFEqual(@"PreventDisplaySleepDuringVideoPlayback", a2))
  {
    goto LABEL_5;
  }

  if (a3)
  {
    v8 = CFGetTypeID(a3);
    if (v8 == CFBooleanGetTypeID())
    {
      fiqcfo_CopyImageQueueArray(a1, &v63, 0, 0);
      FigImageQueueArraySetProperty(v63, @"PreventDisplaySleepDuringVideoPlayback", a3);
LABEL_5:
      value_low = 0;
      goto LABEL_7;
    }
  }

  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v51, v52, v54);
  value_low = v10;
LABEL_7:
  if (CFEqual(@"Duration", a2))
  {
    if (a3 && (TypeID = CFDictionaryGetTypeID(), TypeID == CFGetTypeID(a3)))
    {
      fiqcfo_CopyImageQueueArray(a1, &v63, 0, 0);
      FigImageQueueArraySetProperty(v63, @"Duration", a3);
    }

    else
    {
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v51, v52, v54);
      value_low = v12;
    }
  }

  v13 = @"EnableImageQueueTiming";
  if (CFEqual(@"EnableImageQueueTiming", a2))
  {
    if (!a3 || (v14 = CFGetTypeID(a3), v14 != CFBooleanGetTypeID()))
    {
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF170D8, 4294954486, "<<<< IQ-CACHEFANOUT >>>>", 860, v3);
LABEL_22:
      value_low = v15;
      goto LABEL_23;
    }

    goto LABEL_19;
  }

  v13 = @"FigImageQueueProperty_EnqueueResetsSystemSleepTimer";
  if (CFEqual(@"FigImageQueueProperty_EnqueueResetsSystemSleepTimer", a2))
  {
    if (!a3 || (v16 = CFGetTypeID(a3), v16 != CFBooleanGetTypeID()))
    {
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF170D8, 4294954486, "<<<< IQ-CACHEFANOUT >>>>", 867, v3);
      goto LABEL_22;
    }

    goto LABEL_19;
  }

  if (CFEqual(@"FigImageQueueProperty_Timebase", a2))
  {
    if (!a3 || (v23 = CFGetTypeID(a3), v23 == CMTimebaseGetTypeID()))
    {
      v24 = CMBaseObjectGetDerivedStorage();
      context.value = CFRetain(a1);
      if (a3)
      {
        v25 = CFRetain(a3);
      }

      else
      {
        v25 = 0;
      }

      *&context.timescale = v25;
      dispatch_sync_f(*(v24 + 40), &context, fiqcfo_SetTimebaseNoLock);
      if (*&context.timescale)
      {
        CFRelease(*&context.timescale);
      }

      goto LABEL_23;
    }

    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF170D8, 4294954486, "<<<< IQ-CACHEFANOUT >>>>", 876, v3);
    goto LABEL_22;
  }

  v13 = @"FigImageQueueProperty_CAImageQueueCaptionsMayAppearHint";
  if (CFEqual(@"FigImageQueueProperty_CAImageQueueCaptionsMayAppearHint", a2))
  {
    if (!a3 || (v26 = CFGetTypeID(a3), v26 != CFBooleanGetTypeID()))
    {
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF170D8, 4294954486, "<<<< IQ-CACHEFANOUT >>>>", 883, v3);
      goto LABEL_22;
    }

    goto LABEL_19;
  }

  if (CFEqual(@"FigImageQueueProperty_DurationAllowedForCachedVideoFrames", a2))
  {
    context = **&MEMORY[0x1E6960C70];
    CMTimeMakeFromDictionary(&context, a3);
    v59 = context;
    fiqcfo_SetDurationAllowedForCachedVideoFrames(a1, &v59.value);
    goto LABEL_23;
  }

  v13 = @"FigImageQueueProperty_DisableColorMatching";
  if (CFEqual(@"FigImageQueueProperty_DisableColorMatching", a2))
  {
    if (a3)
    {
      v27 = CFGetTypeID(a3);
      if (v27 != CFBooleanGetTypeID())
      {
        FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF170D8, 4294954486, "<<<< IQ-CACHEFANOUT >>>>", 895, v3);
        goto LABEL_22;
      }
    }

    goto LABEL_19;
  }

  v13 = @"VideoEnhancementMode";
  if (CFEqual(@"VideoEnhancementMode", a2))
  {
    if (!a3 || (v28 = CFGetTypeID(a3), v28 != CFStringGetTypeID()))
    {
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF170D8, 4294954486, "<<<< IQ-CACHEFANOUT >>>>", 902, v3);
      goto LABEL_22;
    }

LABEL_19:
    fiqcfo_CopyImageQueueArray(a1, &v63, 0, 0);
    v17 = v63;
    v18 = v13;
    goto LABEL_20;
  }

  if (CFEqual(@"FigImageQueueProperty_ImageQueueConfigurationArrayForFanout", a2))
  {
    if (a3)
    {
      v29 = CFArrayGetTypeID();
      if (v29 != CFGetTypeID(a3))
      {
        FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF170D8, 4294954486, "<<<< IQ-CACHEFANOUT >>>>", 974, v3);
        goto LABEL_22;
      }
    }

    fiqcfo_CopyImageQueueArray(a1, &v63, &v62, &v61);
    v30 = *MEMORY[0x1E695E480];
    Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
    if (!Mutable)
    {
      fiqcfo_setProperty_cold_4(&context);
      v20 = 0;
      v21 = 0;
      value_low = LODWORD(context.value);
      goto LABEL_24;
    }

    MutableCopy = FigCFArrayCreateMutableCopy();
    v32 = MEMORY[0x1E695E9C0];
    v21 = CFArrayCreateMutable(v30, 0, MEMORY[0x1E695E9C0]);
    v20 = CFArrayCreateMutable(v30, 0, v32);
    if (v20)
    {
      if (v21)
      {
        if (a3 && (v57 = v30, v56 = CFArrayGetCount(a3), v56 >= 1))
        {
          v33 = 0;
          v55 = *MEMORY[0x1E695E4D0];
          v53 = *MEMORY[0x1E695E4C0];
          while (1)
          {
            context.value = 0;
            v58 = 0;
            ValueAtIndex = CFArrayGetValueAtIndex(a3, v33);
            Value = CFDictionaryGetValue(ValueAtIndex, @"FigImageQueueConfigurationKey_ImageQueue");
            v36 = CFDictionaryGetValue(ValueAtIndex, @"FigImageQueueConfigurationKey_Options");
            if (!Value)
            {
              fiqcfo_setProperty_cold_1(&v59);
              value_low = LODWORD(v59.value);
              goto LABEL_95;
            }

            v37 = v36;
            v38.length = MutableCopy ? CFArrayGetCount(MutableCopy) : 0;
            v38.location = 0;
            FirstIndexOfValue = CFArrayGetFirstIndexOfValue(MutableCopy, v38, Value);
            if (FirstIndexOfValue == -1)
            {
              fiqcfo_AddListenersOnFanoutImageQueue(a1);
            }

            else
            {
              CFArrayRemoveValueAtIndex(MutableCopy, FirstIndexOfValue);
            }

            v40 = fiqcfo_createPixelBufferConformerForOptions(v57, v37, &v58, &context);
            if (v40)
            {
              break;
            }

            if (v58)
            {
              v41 = v55;
            }

            else
            {
              v41 = v53;
            }

            CFArrayAppendValue(v20, v41);
            v42 = context.value;
            CFArrayAppendValue(v21, context.value);
            if (v42)
            {
              CFRelease(v42);
            }

            CFArrayAppendValue(Mutable, Value);
            if (v56 == ++v33)
            {
              value_low = 0;
              goto LABEL_84;
            }
          }

          value_low = v40;
        }

        else
        {
LABEL_84:
          if (MutableCopy)
          {
            Count = CFArrayGetCount(MutableCopy);
            if (Count >= 1)
            {
              v44 = Count;
              for (i = 0; i != v44; ++i)
              {
                v46 = CFArrayGetValueAtIndex(MutableCopy, i);
                fiqcfo_RemoveListenersOnFanoutImageQueue(a1, v46);
              }
            }
          }

          FigSimpleMutexLock();
          v47 = *DerivedStorage;
          *DerivedStorage = Mutable;
          CFRetain(Mutable);
          if (v47)
          {
            CFRelease(v47);
          }

          v48 = *(DerivedStorage + 8);
          *(DerivedStorage + 8) = v20;
          CFRetain(v20);
          if (v48)
          {
            CFRelease(v48);
          }

          v49 = *(DerivedStorage + 16);
          *(DerivedStorage + 16) = v21;
          CFRetain(v21);
          if (v49)
          {
            CFRelease(v49);
          }

          FigSimpleMutexUnlock();
        }

        goto LABEL_95;
      }

      fiqcfo_setProperty_cold_2(&context);
    }

    else
    {
      fiqcfo_setProperty_cold_3(&context);
    }

    value_low = LODWORD(context.value);
LABEL_95:
    if (MutableCopy)
    {
      CFRelease(MutableCopy);
    }

    goto LABEL_24;
  }

  if (CFEqual(@"ResponsibleProcessID", a2))
  {
    if (!a3 || (v50 = CFGetTypeID(a3), v50 != CFNumberGetTypeID()))
    {
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF170D8, 4294954486, "<<<< IQ-CACHEFANOUT >>>>", 982, v3);
      goto LABEL_22;
    }

    fiqcfo_CopyImageQueueArray(a1, &v63, 0, 0);
    v17 = v63;
    v18 = @"ResponsibleProcessID";
LABEL_20:
    FigImageQueueArraySetProperty(v17, v18, a3);
LABEL_23:
    Mutable = 0;
    v20 = 0;
    v21 = 0;
    goto LABEL_24;
  }

  Mutable = 0;
  v20 = 0;
  v21 = 0;
  value_low = 4294954512;
LABEL_24:
  if (v63)
  {
    CFRelease(v63);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  if (v20)
  {
    CFRelease(v20);
  }

  if (v21)
  {
    CFRelease(v21);
  }

  if (v61)
  {
    CFRelease(v61);
  }

  if (v62)
  {
    CFRelease(v62);
  }

  return value_low;
}

uint64_t fiqcfo_CopyImageQueueArray(uint64_t a1, void *a2, void *a3, void *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  if (a2)
  {
    v8 = *DerivedStorage;
    if (*DerivedStorage)
    {
      v8 = CFRetain(v8);
    }

    *a2 = v8;
  }

  if (a3)
  {
    v9 = *(DerivedStorage + 8);
    if (v9)
    {
      v9 = CFRetain(v9);
    }

    *a3 = v9;
  }

  if (a4)
  {
    v10 = *(DerivedStorage + 16);
    if (v10)
    {
      v10 = CFRetain(v10);
    }

    *a4 = v10;
  }

  return FigSimpleMutexUnlock();
}

void fiqcfo_OccupancyChangedNotification(uint64_t a1, const void *a2)
{
  CMBaseObjectGetDerivedStorage();
  CMNotificationCenterPostNotification();
  FigMemoryBarrier();
  if (FigAtomicAdd32() >= 1)
  {

    fiqcfo_UpdateCachedVideoFrames(a2, 1);
  }
}

void fiqcfo_DisplaySizeChangedNotification(uint64_t a1, uint64_t a2)
{
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  fiqcfo_GetMaximumDisplaySize(a2);
  FigCFDictionarySetCGSize();
  CMNotificationCenterPostNotification();
  if (Mutable)
  {

    CFRelease(Mutable);
  }
}

void fiqcfo_UpdateCachedVideoFrames(const void *a1, int a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v7[0] = 0;
  v7[1] = 0;
  if (a2)
  {
    v5 = malloc_type_calloc(1uLL, 0x10uLL, 0x1020040FFEA222EuLL);
    if (!v5)
    {
      return;
    }
  }

  else
  {
    v5 = v7;
  }

  *v5 = CFRetain(a1);
  *(v5 + 8) = 0;
  *(v5 + 9) = a2;
  v6 = *(DerivedStorage + 40);
  if (a2)
  {
    dispatch_async_f(v6, v5, fiqcfo_UpdateCachedVideoFramesNoLock);
  }

  else
  {
    dispatch_sync_f(v6, v5, fiqcfo_UpdateCachedVideoFramesNoLock);
  }
}

void fiqcfo_UpdateCachedVideoFramesNoLock(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v3 = DerivedStorage;
  if (*(DerivedStorage + 37))
  {
    memset(&v16, 0, sizeof(v16));
    CMTimebaseGetTime(&v16, *(DerivedStorage + 80));
    memset(&v15, 0, sizeof(v15));
    lhs = v16;
    rhs = *(v3 + 56);
    CMTimeSubtract(&v15, &lhs, &rhs);
    memset(&lhs, 0, sizeof(lhs));
    rhs = v16;
    time1 = *(v3 + 56);
    CMTimeAdd(&lhs, &rhs, &time1);
    if (!*(a1 + 8))
    {
      v4 = *(v3 + 32);
      if (v4 < 1)
      {
        if (v4 < 0)
        {
          v15 = **&MEMORY[0x1E6960C80];
        }
      }

      else
      {
        lhs = **&MEMORY[0x1E6960C88];
      }
    }

    Count = CFArrayGetCount(*(v3 + 48));
    if (Count >= 1)
    {
      v6 = Count;
      v7 = 0;
      v10 = *MEMORY[0x1E6960C70];
      v8 = *(MEMORY[0x1E6960C70] + 16);
      do
      {
        ValueAtIndex = CFArrayGetValueAtIndex(*(v3 + 48), v7);
        *&rhs.value = v10;
        rhs.epoch = v8;
        if (ValueAtIndex)
        {
          CMSampleBufferGetOutputPresentationTimeStamp(&rhs, ValueAtIndex);
        }

        time1 = rhs;
        time2 = v15;
        if (CMTimeCompare(&time1, &time2) < 0 || (time1 = rhs, time2 = lhs, CMTimeCompare(&time1, &time2) >= 1))
        {
          CFArrayRemoveValueAtIndex(*(v3 + 48), v7);
          --v6;
          FigAtomicDecrement32();
        }

        else
        {
          ++v7;
        }
      }

      while (v7 < v6);
    }
  }

  else
  {
    CFArrayRemoveAllValues(*(DerivedStorage + 48));
    FigAtomicBitAnd32();
  }

  if (*a1)
  {
    CFRelease(*a1);
  }

  if (*(a1 + 9))
  {
    free(a1);
  }
}

double fiqcfo_GetMaximumDisplaySize(uint64_t a1)
{
  theArray = 0;
  v1 = MEMORY[0x1E695F060];
  width = *MEMORY[0x1E695F060];
  height = *(MEMORY[0x1E695F060] + 8);
  fiqcfo_CopyImageQueueArray(a1, &theArray, 0, 0);
  if (theArray)
  {
    Count = CFArrayGetCount(theArray);
    if (Count >= 1)
    {
      v5 = Count;
      v6 = 0;
      v7 = *MEMORY[0x1E695E480];
      do
      {
        CFArrayGetValueAtIndex(theArray, v6);
        dict = 0;
        FigImageQueueGetFigBaseObject();
        v9 = v8;
        v10 = *(*(CMBaseObjectGetVTable() + 8) + 48);
        if (v10)
        {
          v10(v9, @"FigImageQueueProperty_DisplaySize", v7, &dict);
        }

        if (dict)
        {
          v12 = *v1;
          CGSizeMakeWithDictionaryRepresentation(dict, &v12);
          if (v12.height * v12.width > height * width)
          {
            height = v12.height;
            width = v12.width;
          }

          if (dict)
          {
            CFRelease(dict);
          }
        }

        ++v6;
      }

      while (v5 != v6);
    }

    if (theArray)
    {
      CFRelease(theArray);
    }
  }

  return width;
}

void fiqcfo_CopyCachedVideoFrames(const void *a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v5[0] = CFRetain(a1);
  v5[1] = a2;
  dispatch_sync_f(*(DerivedStorage + 40), v5, fiqcfo_CopyCachedVideoFramesNoLock);
}

CFDictionaryRef fiqcfo_CopyCachedTimeRange(const void *a1, CFDictionaryRef *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v20 = 0;
  *&v19.value = *MEMORY[0x1E6960C70];
  v5 = *(MEMORY[0x1E6960C70] + 16);
  v19.epoch = v5;
  v13 = *&v19.value;
  *&v18.value = *&v19.value;
  v18.epoch = v5;
  v6 = *(MEMORY[0x1E6960C98] + 16);
  *&v17.start.value = *MEMORY[0x1E6960C98];
  *&v17.start.epoch = v6;
  *&v17.duration.timescale = *(MEMORY[0x1E6960C98] + 32);
  *a2 = 0;
  fiqcfo_UpdateCachedVideoFrames(a1, 0);
  context[0] = CFRetain(a1);
  context[1] = &v20;
  dispatch_sync_f(*(DerivedStorage + 40), context, fiqcfo_CopyCachedVideoFramesNoLock);
  if (v20)
  {
    Count = CFArrayGetCount(v20);
    if (Count >= 1)
    {
      v8 = Count;
      for (i = 0; v8 != i; ++i)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v20, i);
        *&start.start.value = v13;
        start.start.epoch = v5;
        if (ValueAtIndex)
        {
          CMSampleBufferGetOutputPresentationTimeStamp(&start.start, ValueAtIndex);
        }

        if (i)
        {
          time1 = start.start;
          time2 = v19;
          if (CMTimeCompare(&time1, &time2) < 0)
          {
            v19 = start.start;
          }

          time1 = start.start;
          time2 = v18;
          if (CMTimeCompare(&time1, &time2) < 1)
          {
            continue;
          }
        }

        else
        {
          v19 = start.start;
        }

        v18 = start.start;
      }
    }

    if (v20)
    {
      CFRelease(v20);
    }
  }

  start.start = v19;
  time1 = v18;
  CMTimeRangeFromTimeToTime(&v17, &start.start, &time1);
  v11 = *MEMORY[0x1E695E480];
  start = v17;
  result = CMTimeRangeCopyAsDictionary(&start, v11);
  *a2 = result;
  return result;
}

const void *fiqcfo_CopyGPURegistryIDIfSingular(uint64_t a1)
{
  cf = 0;
  theArray = 0;
  fiqcfo_CopyImageQueueArray(a1, &theArray, 0, 0);
  if (theArray)
  {
    Count = CFArrayGetCount(theArray);
    if (Count >= 1)
    {
      v2 = Count;
      v3 = 0;
      v4 = 0;
      v5 = *MEMORY[0x1E695E480];
      while (1)
      {
        CFArrayGetValueAtIndex(theArray, v3);
        FigImageQueueGetFigBaseObject();
        v7 = v6;
        v8 = *(*(CMBaseObjectGetVTable() + 8) + 48);
        if (v8)
        {
          v8(v7, @"FigImageQueueProperty_GPURegistryID", v5, &cf);
        }

        if (!cf)
        {
          goto LABEL_16;
        }

        TypeID = CFNumberGetTypeID();
        v10 = CFGetTypeID(cf);
        v11 = cf;
        if (TypeID == v10)
        {
          break;
        }

LABEL_14:
        if (v11)
        {
          CFRelease(v11);
          cf = 0;
        }

LABEL_16:
        if (v2 == ++v3)
        {
          goto LABEL_21;
        }
      }

      valuePtr = 0;
      CFNumberGetValue(cf, kCFNumberSInt64Type, &valuePtr);
      if (valuePtr)
      {
        v12 = cf;
        if (!v4)
        {
          cf = 0;
          goto LABEL_13;
        }

        if (!FigCFEqual())
        {
          CFRelease(v4);
          goto LABEL_20;
        }
      }

      v12 = v4;
LABEL_13:
      v11 = cf;
      v4 = v12;
      goto LABEL_14;
    }

LABEL_20:
    v4 = 0;
LABEL_21:
    if (theArray)
    {
      CFRelease(theArray);
    }
  }

  else
  {
    v4 = 0;
  }

  if (cf)
  {
    CFRelease(cf);
  }

  return v4;
}

void fiqcfo_CopyCachedVideoFramesNoLock(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  **(a1 + 8) = CFArrayCreateCopy(*MEMORY[0x1E695E480], *(DerivedStorage + 48));
  v3 = *a1;
  if (*a1)
  {

    CFRelease(v3);
  }
}

void fiqcfo_SetDurationAllowedForCachedVideoFrames(const void *a1, __int128 *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v5 = CFRetain(a1);
  v6 = *a2;
  v7 = *(a2 + 2);
  dispatch_sync_f(*(DerivedStorage + 40), &v5, fiqcfo_SetDurationAllowedForCachedVideoFramesNoLock);
}

uint64_t fiqcfo_AddListenersOnFanoutImageQueue(uint64_t a1)
{
  v1 = &off_1EE59EED0;
  v2 = 4;
  CMNotificationCenterGetDefaultLocalCenter();
  v3 = &off_1EE59EED0;
  do
  {
    result = FigNotificationCenterAddWeakListener();
    if (result)
    {
      v5 = 1;
    }

    else
    {
      v5 = v2 == 0;
    }

    --v2;
    v3 += 3;
    v1 += 3;
  }

  while (!v5);
  return result;
}

uint64_t fiqcfo_RemoveListenersOnFanoutImageQueue(uint64_t a1, uint64_t a2)
{
  v2 = &off_1EE59EED0;
  v3 = 5;
  CMNotificationCenterGetDefaultLocalCenter();
  v4 = &off_1EE59EED0;
  do
  {
    result = FigNotificationCenterRemoveWeakListener();
    v4 += 3;
    v2 += 3;
    --v3;
  }

  while (v3);
  return result;
}

void fiqcfo_SetTimebaseNoLock(uint64_t *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v3 = *(DerivedStorage + 80);
  v4 = *a1;
  *(DerivedStorage + 80) = a1[1];
  fiqcfo_UpdateCacheIsEnabledNoLock(v4);
  a1[1] = v3;
  v5 = *a1;
  if (*a1)
  {

    CFRelease(v5);
  }
}

uint64_t fiqcfo_UpdateCacheIsEnabledNoLock(uint64_t a1)
{
  result = CMBaseObjectGetDerivedStorage();
  v3 = (*(result + 68) & 0x1D) == 1 && *(result + 80) != 0;
  v4 = *(result + 112);
  if (v4 == 4 || v4 == 2)
  {
    v3 = 0;
  }

  *(result + 37) = v3;
  return result;
}

void fiqcfo_SetDurationAllowedForCachedVideoFramesNoLock(uint64_t *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v3 = *(a1 + 1);
  *(DerivedStorage + 72) = a1[3];
  *(DerivedStorage + 56) = v3;
  fiqcfo_UpdateCacheIsEnabledNoLock(*a1);
  v4 = *a1;
  if (*a1)
  {

    CFRelease(v4);
  }
}

uint64_t fiqcfo_flush(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  theArray = 0;
  fiqcfo_CopyImageQueueArray(a1, &theArray, 0, 0);
  if (theArray)
  {
    Count = CFArrayGetCount(theArray);
    *(DerivedStorage + 36) = 1;
    if (Count < 1)
    {
      v5 = 0;
    }

    else
    {
      v4 = Count;
      LODWORD(v5) = 0;
      for (i = 0; i != v4; ++i)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(theArray, i);
        v8 = *(*(CMBaseObjectGetVTable() + 16) + 16);
        if (v8)
        {
          v9 = v8(ValueAtIndex);
        }

        else
        {
          v9 = -12782;
        }

        if (v5)
        {
          v10 = 1;
        }

        else
        {
          v10 = v9 == 0;
        }

        if (v10)
        {
          v5 = v5;
        }

        else
        {
          v5 = v9;
        }
      }
    }

    if (theArray)
    {
      CFRelease(theArray);
    }
  }

  else
  {
    v5 = 0;
    *(DerivedStorage + 36) = 1;
  }

  return v5;
}

uint64_t fiqcfo_canEnqueueImage(uint64_t a1)
{
  theArray = 0;
  fiqcfo_CopyImageQueueArray(a1, &theArray, 0, 0);
  if (!theArray)
  {
    return 100;
  }

  Count = CFArrayGetCount(theArray);
  if (Count < 1)
  {
    v4 = 100;
  }

  else
  {
    v2 = Count;
    v3 = 0;
    LODWORD(v4) = 100;
    do
    {
      ValueAtIndex = CFArrayGetValueAtIndex(theArray, v3);
      v6 = *(*(CMBaseObjectGetVTable() + 16) + 24);
      if (v6)
      {
        v7 = v6(ValueAtIndex);
      }

      else
      {
        v7 = 0;
      }

      if (v7 >= v4)
      {
        v4 = v4;
      }

      else
      {
        v4 = v7;
      }

      ++v3;
    }

    while (v2 != v3);
  }

  if (theArray)
  {
    CFRelease(theArray);
  }

  return v4;
}

uint64_t fiqcfo_enqueueImage(const void *a1, __CVBuffer *a2, uint64_t a3, uint64_t a4, int a5)
{
  v48 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v42 = 0;
  theArray = 0;
  v41 = 0;
  fiqcfo_CopyImageQueueArray(a1, &theArray, &v42, &v41);
  if (theArray)
  {
    Count = CFArrayGetCount(theArray);
  }

  else
  {
    Count = 0;
  }

  if (*(DerivedStorage + 36))
  {
    *(DerivedStorage + 36) = 0;
    *&context.duration.timescale = 1;
    v10 = CMBaseObjectGetDerivedStorage();
    context.duration.value = CFRetain(a1);
    dispatch_sync_f(*(v10 + 40), &context, fiqcfo_UpdateCachedVideoFramesNoLock);
  }

  if (*(DerivedStorage + 37))
  {
    v11 = Count;
    v46 = *a4;
    v12 = *(a4 + 12);
    v47 = *(a4 + 8);
    v13 = *(a4 + 16);
    v14 = CMBaseObjectGetDerivedStorage();
    sampleBufferOut[0] = 0;
    formatDescriptionOut = 0;
    memset(&context, 0, sizeof(context));
    if (a2 && (v12 & 0x1D) == 1)
    {
      v15 = *MEMORY[0x1E695E480];
      v16 = CMVideoFormatDescriptionCreateForImageBuffer(*MEMORY[0x1E695E480], a2, &formatDescriptionOut);
      v17 = formatDescriptionOut;
      if (!v16)
      {
        context.presentationTimeStamp.timescale = v47;
        context.presentationTimeStamp.flags = v12;
        context.presentationTimeStamp.epoch = v13;
        context.decodeTimeStamp = **&MEMORY[0x1E6960C70];
        context.duration = context.decodeTimeStamp;
        context.presentationTimeStamp.value = v46;
        CMSampleBufferCreateReadyWithImageBuffer(v15, a2, formatDescriptionOut, &context, sampleBufferOut);
        v17 = formatDescriptionOut;
      }

      if (v17)
      {
        CFRelease(v17);
      }
    }

    v18 = sampleBufferOut[0];
    if (sampleBufferOut[0])
    {
      context.duration.epoch = 0;
      context.duration.value = CFRetain(a1);
      *&context.duration.timescale = v18;
      context.presentationTimeStamp.value = v46;
      context.presentationTimeStamp.timescale = v47;
      context.presentationTimeStamp.flags = v12;
      context.presentationTimeStamp.epoch = v13;
      dispatch_sync_f(*(v14 + 40), &context, fiqcfo_AddFrameToCachedVideoFramesNoLock);
    }

    fiqcfo_UpdateCachedVideoFrames(a1, 0);
    v38 = 1;
    Count = v11;
  }

  else
  {
    v38 = (a5 & 0x10000) == 0;
  }

  if (Count < 1)
  {
    v19 = 0;
  }

  else
  {
    LODWORD(v19) = 0;
    v20 = 0;
    v21 = 0;
    v22 = Count - 1;
    v35 = a5 & 0xFFFEFFFF;
    v23 = a2;
    do
    {
      v24 = Count;
      ValueAtIndex = CFArrayGetValueAtIndex(theArray, v21);
      formatDescriptionOut = 0;
      CFArrayGetValueAtIndex(v41, v21);
      CFArrayGetValueAtIndex(v42, v21);
      if (v38 | v20)
      {
        v26 = 1;
      }

      else
      {
        v26 = v21 < v22;
      }

      v27 = v26;
      v28 = VTPixelBufferConformerCopyConformedPixelBuffer();
      if (v28)
      {
        if (v19)
        {
          v19 = v19;
        }

        else
        {
          v19 = v28;
        }
      }

      else
      {
        v29 = formatDescriptionOut;
        if (formatDescriptionOut == v23)
        {
          v20 = 1;
        }

        if ((v27 & (formatDescriptionOut == v23)) != 0)
        {
          v30 = 0;
        }

        else
        {
          v30 = 0x10000;
        }

        *sampleBufferOut = *a4;
        v40 = *(a4 + 16);
        v31 = *(*(CMBaseObjectGetVTable() + 16) + 32);
        if (v31)
        {
          *&context.duration.value = *sampleBufferOut;
          context.duration.epoch = v40;
          v32 = v31(ValueAtIndex, v29, a3, &context, v30 | v35);
        }

        else
        {
          v32 = -12782;
        }

        if (v19)
        {
          v33 = 1;
        }

        else
        {
          v33 = v32 == 0;
        }

        if (v33)
        {
          v19 = v19;
        }

        else
        {
          v19 = v32;
        }

        CVBufferRelease(formatDescriptionOut);
      }

      Count = v24;
      ++v21;
    }

    while (v24 != v21);
  }

  if (theArray)
  {
    CFRelease(theArray);
  }

  if (v42)
  {
    CFRelease(v42);
  }

  if (v41)
  {
    CFRelease(v41);
  }

  return v19;
}

uint64_t fiqcfo_setAsync(uint64_t a1, uint64_t a2)
{
  theArray = 0;
  fiqcfo_CopyImageQueueArray(a1, &theArray, 0, 0);
  if (!theArray)
  {
    return 0;
  }

  Count = CFArrayGetCount(theArray);
  if (Count < 1)
  {
    v5 = 0;
  }

  else
  {
    v4 = Count;
    LODWORD(v5) = 0;
    for (i = 0; i != v4; ++i)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(theArray, i);
      v8 = *(*(CMBaseObjectGetVTable() + 16) + 40);
      if (v8)
      {
        v9 = v8(ValueAtIndex, a2);
      }

      else
      {
        v9 = -12782;
      }

      if (v5)
      {
        v10 = 1;
      }

      else
      {
        v10 = v9 == 0;
      }

      if (v10)
      {
        v5 = v5;
      }

      else
      {
        v5 = v9;
      }
    }
  }

  if (theArray)
  {
    CFRelease(theArray);
  }

  return v5;
}

uint64_t fiqcfo_setDirection(const void *a1, float a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  theArray = 0;
  fiqcfo_CopyImageQueueArray(a1, &theArray, 0, 0);
  if (theArray)
  {
    Count = CFArrayGetCount(theArray);
  }

  else
  {
    Count = 0;
  }

  if (a2 >= 0.0)
  {
    v6 = 0;
  }

  else
  {
    v6 = -1;
  }

  if (a2 > 0.0)
  {
    v6 = 1;
  }

  *(DerivedStorage + 32) = v6;
  fiqcfo_UpdateCachedVideoFrames(a1, 0);
  if (Count < 1)
  {
    v7 = 0;
  }

  else
  {
    LODWORD(v7) = 0;
    for (i = 0; i != Count; ++i)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(theArray, i);
      v10 = *(*(CMBaseObjectGetVTable() + 16) + 48);
      if (v10)
      {
        v11 = v10(ValueAtIndex, a2);
      }

      else
      {
        v11 = -12782;
      }

      if (v7)
      {
        v12 = 1;
      }

      else
      {
        v12 = v11 == 0;
      }

      if (v12)
      {
        v7 = v7;
      }

      else
      {
        v7 = v11;
      }
    }
  }

  if (theArray)
  {
    CFRelease(theArray);
  }

  return v7;
}

uint64_t fiqcfo_setUpcomingImageInfo(uint64_t a1, uint64_t a2, __int128 *a3, __int128 *a4)
{
  theArray = 0;
  fiqcfo_CopyImageQueueArray(a1, &theArray, 0, 0);
  if (!theArray)
  {
    return 0;
  }

  Count = CFArrayGetCount(theArray);
  if (Count < 1)
  {
    v9 = 0;
  }

  else
  {
    v8 = Count;
    LODWORD(v9) = 0;
    for (i = 0; i != v8; ++i)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(theArray, i);
      v18 = *a3;
      v19 = *(a3 + 2);
      v16 = *a4;
      v17 = *(a4 + 2);
      v12 = *(*(CMBaseObjectGetVTable() + 16) + 56);
      if (v12)
      {
        v23 = v18;
        v24 = v19;
        v21 = v16;
        v22 = v17;
        v13 = v12(ValueAtIndex, a2, &v23, &v21);
      }

      else
      {
        v13 = -12782;
      }

      if (v9)
      {
        v14 = 1;
      }

      else
      {
        v14 = v13 == 0;
      }

      if (v14)
      {
        v9 = v9;
      }

      else
      {
        v9 = v13;
      }
    }
  }

  if (theArray)
  {
    CFRelease(theArray);
  }

  return v9;
}

uint64_t fiqcfo_getOccupancyInfo(uint64_t a1, _DWORD *a2, CMTime *a3, CMTime *a4)
{
  v27[0] = 0;
  v19 = *MEMORY[0x1E6960C88];
  *&v26.value = *MEMORY[0x1E6960C88];
  v7 = *(MEMORY[0x1E6960C88] + 16);
  v26.epoch = v7;
  v18 = *MEMORY[0x1E6960C80];
  *&v25.value = *MEMORY[0x1E6960C80];
  v8 = *(MEMORY[0x1E6960C80] + 16);
  v25.epoch = v8;
  fiqcfo_CopyImageQueueArray(a1, v27, 0, 0);
  if (v27[0])
  {
    Count = CFArrayGetCount(v27[0]);
    if (Count >= 1)
    {
      v10 = Count;
      v11 = 0;
      v12 = 0;
      v13 = 0;
      while (1)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v27[0], v12);
        v24 = 0;
        *&v23.value = v19;
        v23.epoch = v7;
        *&v22.value = v18;
        v22.epoch = v8;
        v15 = *(*(CMBaseObjectGetVTable() + 16) + 64);
        if (!v15)
        {
          break;
        }

        v16 = v15(ValueAtIndex, &v24, &v23, &v22);
        if (v16)
        {
          goto LABEL_8;
        }

        v13 += v24;
        time1 = v26;
        time2 = v23;
        CMTimeMinimum(&v26, &time1, &time2);
        time1 = v25;
        time2 = v22;
        CMTimeMaximum(&v25, &time1, &time2);
LABEL_11:
        if (v10 == ++v12)
        {
          if (a2)
          {
            goto LABEL_13;
          }

          goto LABEL_14;
        }
      }

      v16 = -12782;
LABEL_8:
      if (v11)
      {
        v11 = v11;
      }

      else
      {
        v11 = v16;
      }

      goto LABEL_11;
    }
  }

  v13 = 0;
  v11 = 0;
  if (a2)
  {
LABEL_13:
    *a2 = v13;
  }

LABEL_14:
  if (a3)
  {
    *a3 = v26;
  }

  if (a4)
  {
    *a4 = v25;
  }

  if (v27[0])
  {
    CFRelease(v27[0]);
  }

  return v11;
}

uint64_t fiqcfo_copyPerformanceDictionary(uint64_t a1, __CFDictionary **a2)
{
  v3 = (CMBaseObjectGetDerivedStorage() + 136);
  v4 = *MEMORY[0x1E695E480];

  return PIQCopyPerformanceDictionaryForInstanceStatistics(v4, v3, a2);
}

void fiqcfo_getSafeDisplayDuration(uint64_t a1@<X0>, CMTime *a2@<X8>)
{
  v3 = MEMORY[0x1E6960C70];
  v10 = *MEMORY[0x1E6960C70];
  *&a2->value = *MEMORY[0x1E6960C70];
  v4 = *(v3 + 16);
  a2->epoch = v4;
  v14 = 0;
  fiqcfo_CopyImageQueueArray(a1, &v14, 0, 0);
  if (v14)
  {
    Count = CFArrayGetCount(v14);
    if (Count >= 1)
    {
      v6 = Count;
      for (i = 0; i != v6; ++i)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v14, i);
        memset(&v13, 0, sizeof(v13));
        v9 = *(*(CMBaseObjectGetVTable() + 16) + 80);
        if (v9)
        {
          v9(&v13, ValueAtIndex);
        }

        else
        {
          *&v13.value = v10;
          v13.epoch = v4;
        }

        time1 = *a2;
        time2 = v13;
        CMTimeMinimum(a2, &time1, &time2);
      }
    }

    if (v14)
    {
      CFRelease(v14);
    }
  }
}

uint64_t fiqcfo_postNotification(uint64_t a1, uint64_t a2, uint64_t a3)
{
  theArray = 0;
  fiqcfo_CopyImageQueueArray(a1, &theArray, 0, 0);
  if (!theArray)
  {
    return 0;
  }

  Count = CFArrayGetCount(theArray);
  if (Count < 1)
  {
    v7 = 0;
  }

  else
  {
    v6 = Count;
    LODWORD(v7) = 0;
    for (i = 0; i != v6; ++i)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(theArray, i);
      v10 = *(*(CMBaseObjectGetVTable() + 16) + 88);
      if (v10)
      {
        v11 = v10(ValueAtIndex, a2, a3);
      }

      else
      {
        v11 = -12782;
      }

      if (v7)
      {
        v12 = 1;
      }

      else
      {
        v12 = v11 == 0;
      }

      if (v12)
      {
        v7 = v7;
      }

      else
      {
        v7 = v11;
      }
    }
  }

  if (theArray)
  {
    CFRelease(theArray);
  }

  return v7;
}

void fiqcfo_AddFrameToCachedVideoFramesNoLock(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v11 = *MEMORY[0x1E6960C70];
  *&v14.value = *MEMORY[0x1E6960C70];
  v3 = *(MEMORY[0x1E6960C70] + 16);
  v14.epoch = v3;
  Count = CFArrayGetCount(*(DerivedStorage + 48));
  if (Count < 1)
  {
    v6 = 0;
  }

  else
  {
    v5 = Count;
    v6 = 0;
    while (1)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(*(DerivedStorage + 48), v6);
      *&time1.value = v11;
      time1.epoch = v3;
      if (ValueAtIndex)
      {
        CMSampleBufferGetOutputPresentationTimeStamp(&time1, ValueAtIndex);
      }

      v14 = time1;
      time2 = *(a1 + 24);
      if ((CMTimeCompare(&time1, &time2) & 0x80000000) == 0)
      {
        break;
      }

      if (v5 == ++v6)
      {
        v6 = v5;
        break;
      }
    }
  }

  time1 = v14;
  time2 = *(a1 + 24);
  if (CMTimeCompare(&time1, &time2))
  {
    CFArrayInsertValueAtIndex(*(DerivedStorage + 48), v6, *(a1 + 8));
    FigAtomicIncrement32();
    v8 = CFArrayGetCount(*(DerivedStorage + 48));
    if (v8 <= 2147483646 && v8 > *(DerivedStorage + 1032))
    {
      *(DerivedStorage + 1032) = v8;
    }
  }

  if (*a1)
  {
    CFRelease(*a1);
  }

  v10 = *(a1 + 8);
  if (v10)
  {
    CFRelease(v10);
  }
}

uint64_t __fiqcfo_createSharedMemoryPressureDispatchQueue_block_invoke()
{
  result = FigDispatchQueueCreateWithPriority();
  fiqcfo_createSharedMemoryPressureDispatchQueue_sFIQCFOSharedMemoryPressureDispatchQueue = result;
  return result;
}

void __FigCaptionRendererCALayerOutputNodeCreate_block_invoke(uint64_t a1)
{
  [MEMORY[0x1E6979518] begin];
  if (!pthread_main_np())
  {
    [MEMORY[0x1E6979518] activateBackground:1];
  }

  [MEMORY[0x1E6979518] setDisableActions:1];
  *(*(a1 + 32) + 8) = objc_alloc_init(FigFCRCALayerOutputNodeLayer);
  [MEMORY[0x1E6979518] commit];
  v2 = *(a1 + 40);

  CFRelease(v2);
}

uint64_t FigCaptionRendererCALayerOutputNodeAttachToCALayer(uint64_t a1, void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  [MEMORY[0x1E6979518] begin];
  if (!pthread_main_np())
  {
    [MEMORY[0x1E6979518] activateBackground:1];
  }

  [MEMORY[0x1E6979518] setDisableActions:1];
  v4 = *(DerivedStorage + 8);
  [a2 bounds];
  [v4 setBounds:?];
  v5 = *(DerivedStorage + 8);
  [a2 bounds];
  v7 = v6 * 0.5;
  [a2 bounds];
  [v5 setPosition:{v7, v8 * 0.5}];
  [a2 addSublayer:*(DerivedStorage + 8)];
  [MEMORY[0x1E6979518] commit];
  return 0;
}

void FigCaptionRendererCALayerOutputNodeFinalize(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v2 = *(DerivedStorage + 8);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __FigCaptionRendererCALayerOutputNodeFinalize_block_invoke;
  block[3] = &unk_1E7482608;
  block[4] = v2;
  dispatch_async(MEMORY[0x1E69E96A0], block);
  if (*DerivedStorage)
  {
    CFRelease(*DerivedStorage);
    *DerivedStorage = 0;
  }
}

__CFString *FigCaptionRendererCALayerOutputNodeCopyDebugDescription(uint64_t a1)
{
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  CFStringAppendFormat(Mutable, 0, @"FigCaptionRendererCALayerOutputNode: <%p>", a1);
  return Mutable;
}

uint64_t __FigCaptionRendererCALayerOutputNodeFinalize_block_invoke(uint64_t a1)
{
  [MEMORY[0x1E6979518] begin];
  [MEMORY[0x1E6979518] setDisableActions:1];
  [*(a1 + 32) removeFromSuperlayer];

  v2 = MEMORY[0x1E6979518];

  return [v2 commit];
}

__CFString *FigCaptionRendererCALayerOutputNode_FigCaptionRendererOutputNodeProtocol_CopyDebugDescription(uint64_t a1)
{
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  CFStringAppendFormat(Mutable, 0, @"\tFigCaptionRendererCALayerOutputNode <FigCaptionRendererOutputNodeProtocol> on <%p>", a1);
  return Mutable;
}

uint64_t FigCaptionRendererCALayerOutputNode_FigCaptionRendererOutputNodeProtocol_GetParentNode(uint64_t a1, uint64_t a2)
{
  v3 = *CMBaseObjectGetDerivedStorage();
  FigCaptionRendererOutputNodeProtocolGetProtocolID();
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

uint64_t FigCaptionRendererCALayerOutputNode_FigCaptionRendererOutputNodeProtocol_SetParentNode(uint64_t a1, uint64_t a2)
{
  v3 = *CMBaseObjectGetDerivedStorage();
  FigCaptionRendererOutputNodeProtocolGetProtocolID();
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

uint64_t FigCaptionRendererCALayerOutputNode_FigCaptionRendererOutputNodeProtocol_AddChildNode(const void *a1, const void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a1)
  {
    CFRetain(a1);
  }

  if (a2)
  {
    CFRetain(a2);
  }

  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __FigCaptionRendererCALayerOutputNode_FigCaptionRendererOutputNodeProtocol_AddChildNode_block_invoke;
  v10[3] = &__block_descriptor_48_e5_v8__0l;
  v10[4] = a1;
  v10[5] = a2;
  dispatch_async(MEMORY[0x1E69E96A0], v10);
  v5 = *DerivedStorage;
  FigCaptionRendererOutputNodeProtocolGetProtocolID();
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

  v8 = *(v7 + 24);
  if (v8)
  {
    return v8(v5, a2);
  }

  else
  {
    return 4294954514;
  }
}

uint64_t FigCaptionRendererCALayerOutputNode_FigCaptionRendererOutputNodeProtocol_RemoveChildNode(uint64_t a1, const void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a2)
  {
    CFRetain(a2);
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __FigCaptionRendererCALayerOutputNode_FigCaptionRendererOutputNodeProtocol_RemoveChildNode_block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a2;
  dispatch_async(MEMORY[0x1E69E96A0], block);
  v4 = *DerivedStorage;
  FigCaptionRendererOutputNodeProtocolGetProtocolID();
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

  v7 = *(v6 + 32);
  if (v7)
  {
    return v7(v4, a2);
  }

  else
  {
    return 4294954514;
  }
}

uint64_t FigCaptionRendererCALayerOutputNode_FigCaptionRendererOutputNodeProtocol_GetChildNodes(uint64_t a1, uint64_t a2)
{
  v3 = *CMBaseObjectGetDerivedStorage();
  FigCaptionRendererOutputNodeProtocolGetProtocolID();
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

  v6 = *(v5 + 40);
  if (!v6)
  {
    return 4294954514;
  }

  return v6(v3, a2);
}

uint64_t FigCaptionRendererCALayerOutputNode_FigCaptionRendererOutputNodeProtocol_HasChildNode(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *CMBaseObjectGetDerivedStorage();
  FigCaptionRendererOutputNodeProtocolGetProtocolID();
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

  v8 = *(v7 + 48);
  if (!v8)
  {
    return 4294954514;
  }

  return v8(v5, a2, a3);
}

uint64_t FigCaptionRendererCALayerOutputNode_FigCaptionRendererOutputNodeProtocol_RemoveAllChildNodes(const void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a1)
  {
    CFRetain(a1);
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __FigCaptionRendererCALayerOutputNode_FigCaptionRendererOutputNodeProtocol_RemoveAllChildNodes_block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  dispatch_async(MEMORY[0x1E69E96A0], block);
  v3 = *DerivedStorage;
  FigCaptionRendererOutputNodeProtocolGetProtocolID();
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

  v6 = *(v5 + 56);
  if (v6)
  {
    return v6(v3);
  }

  else
  {
    return 4294954514;
  }
}

uint64_t FigCaptionRendererCALayerOutputNode_FigCaptionRendererOutputNodeProtocol_GetPosition(uint64_t a1, uint64_t a2)
{
  v3 = *CMBaseObjectGetDerivedStorage();
  FigCaptionRendererOutputNodeProtocolGetProtocolID();
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

  v6 = *(v5 + 64);
  if (!v6)
  {
    return 4294954514;
  }

  return v6(v3, a2);
}

uint64_t FigCaptionRendererCALayerOutputNode_FigCaptionRendererOutputNodeProtocol_SetPosition(const void *a1, double a2, double a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a1)
  {
    CFRetain(a1);
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __FigCaptionRendererCALayerOutputNode_FigCaptionRendererOutputNodeProtocol_SetPosition_block_invoke;
  block[3] = &__block_descriptor_56_e5_v8__0l;
  block[4] = a1;
  *&block[5] = a2;
  *&block[6] = a3;
  dispatch_async(MEMORY[0x1E69E96A0], block);
  v7 = *DerivedStorage;
  FigCaptionRendererOutputNodeProtocolGetProtocolID();
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

  v10 = *(v9 + 72);
  if (v10)
  {
    return v10(v7, a2, a3);
  }

  else
  {
    return 4294954514;
  }
}

uint64_t FigCaptionRendererCALayerOutputNode_FigCaptionRendererOutputNodeProtocol_GetSize(uint64_t a1, uint64_t a2)
{
  v3 = *CMBaseObjectGetDerivedStorage();
  FigCaptionRendererOutputNodeProtocolGetProtocolID();
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

  return v6(v3, a2);
}

uint64_t FigCaptionRendererCALayerOutputNode_FigCaptionRendererOutputNodeProtocol_SetSize(const void *a1, double a2, double a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a1)
  {
    CFRetain(a1);
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __FigCaptionRendererCALayerOutputNode_FigCaptionRendererOutputNodeProtocol_SetSize_block_invoke;
  block[3] = &__block_descriptor_56_e5_v8__0l;
  block[4] = a1;
  *&block[5] = a2;
  *&block[6] = a3;
  dispatch_async(MEMORY[0x1E69E96A0], block);
  v7 = *DerivedStorage;
  FigCaptionRendererOutputNodeProtocolGetProtocolID();
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

  v10 = *(v9 + 88);
  if (v10)
  {
    return v10(v7, a2, a3);
  }

  else
  {
    return 4294954514;
  }
}

uint64_t FigCaptionRendererCALayerOutputNode_FigCaptionRendererOutputNodeProtocol_GetClipToBounds(uint64_t a1, uint64_t a2)
{
  v3 = *CMBaseObjectGetDerivedStorage();
  FigCaptionRendererOutputNodeProtocolGetProtocolID();
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

  v6 = *(v5 + 96);
  if (!v6)
  {
    return 4294954514;
  }

  return v6(v3, a2);
}

uint64_t FigCaptionRendererCALayerOutputNode_FigCaptionRendererOutputNodeProtocol_SetClipToBounds(const void *a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a1)
  {
    CFRetain(a1);
  }

  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __FigCaptionRendererCALayerOutputNode_FigCaptionRendererOutputNodeProtocol_SetClipToBounds_block_invoke;
  v10[3] = &__block_descriptor_41_e5_v8__0l;
  v10[4] = a1;
  v11 = a2;
  dispatch_async(MEMORY[0x1E69E96A0], v10);
  v5 = *DerivedStorage;
  FigCaptionRendererOutputNodeProtocolGetProtocolID();
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

  v8 = *(v7 + 104);
  if (v8)
  {
    return v8(v5, a2);
  }

  else
  {
    return 4294954514;
  }
}

uint64_t FigCaptionRendererCALayerOutputNode_FigCaptionRendererOutputNodeProtocol_GetContent(uint64_t a1, uint64_t a2)
{
  v3 = *CMBaseObjectGetDerivedStorage();
  FigCaptionRendererOutputNodeProtocolGetProtocolID();
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

  v6 = *(v5 + 112);
  if (!v6)
  {
    return 4294954514;
  }

  return v6(v3, a2);
}

uint64_t FigCaptionRendererCALayerOutputNode_FigCaptionRendererOutputNodeProtocol_SetContent(const void *a1, const void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a1)
  {
    CFRetain(a1);
  }

  if (a2)
  {
    CFRetain(a2);
  }

  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __FigCaptionRendererCALayerOutputNode_FigCaptionRendererOutputNodeProtocol_SetContent_block_invoke;
  v10[3] = &__block_descriptor_48_e5_v8__0l;
  v10[4] = a1;
  v10[5] = a2;
  dispatch_async(MEMORY[0x1E69E96A0], v10);
  v5 = *DerivedStorage;
  FigCaptionRendererOutputNodeProtocolGetProtocolID();
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

  v8 = *(v7 + 120);
  if (v8)
  {
    return v8(v5, a2);
  }

  else
  {
    return 4294954514;
  }
}

uint64_t FigCaptionRendererCALayerOutputNode_FigCaptionRendererOutputNodeProtocol_GetCornerRadius(uint64_t a1, uint64_t a2)
{
  v3 = *CMBaseObjectGetDerivedStorage();
  FigCaptionRendererOutputNodeProtocolGetProtocolID();
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

  v6 = *(v5 + 144);
  if (!v6)
  {
    return 4294954514;
  }

  return v6(v3, a2);
}

uint64_t FigCaptionRendererCALayerOutputNode_FigCaptionRendererOutputNodeProtocol_SetCornerRadius(const void *a1, double a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a1)
  {
    CFRetain(a1);
  }

  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __FigCaptionRendererCALayerOutputNode_FigCaptionRendererOutputNodeProtocol_SetCornerRadius_block_invoke;
  v10[3] = &__block_descriptor_48_e5_v8__0l;
  v10[4] = a1;
  *&v10[5] = a2;
  dispatch_async(MEMORY[0x1E69E96A0], v10);
  v5 = *DerivedStorage;
  FigCaptionRendererOutputNodeProtocolGetProtocolID();
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

  v8 = *(v7 + 152);
  if (v8)
  {
    return v8(v5, a2);
  }

  else
  {
    return 4294954514;
  }
}

uint64_t FigCaptionRendererCALayerOutputNode_FigCaptionRendererOutputNodeProtocol_GetWindowOpacity(uint64_t a1, uint64_t a2)
{
  v3 = *CMBaseObjectGetDerivedStorage();
  FigCaptionRendererOutputNodeProtocolGetProtocolID();
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

  v6 = *(v5 + 160);
  if (!v6)
  {
    return 4294954514;
  }

  return v6(v3, a2);
}

uint64_t FigCaptionRendererCALayerOutputNode_FigCaptionRendererOutputNodeProtocol_SetWindowOpacity(const void *a1, double a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a1)
  {
    CFRetain(a1);
  }

  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __FigCaptionRendererCALayerOutputNode_FigCaptionRendererOutputNodeProtocol_SetWindowOpacity_block_invoke;
  v10[3] = &__block_descriptor_48_e5_v8__0l;
  v10[4] = a1;
  *&v10[5] = a2;
  dispatch_async(MEMORY[0x1E69E96A0], v10);
  v5 = *DerivedStorage;
  FigCaptionRendererOutputNodeProtocolGetProtocolID();
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

  v8 = *(v7 + 168);
  if (v8)
  {
    return v8(v5, a2);
  }

  else
  {
    return 4294954514;
  }
}

uint64_t FigCaptionRendererCALayerOutputNode_FigCaptionRendererOutputNodeProtocol_AddAnimation(uint64_t a1, uint64_t a2, uint64_t a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  [MEMORY[0x1E6979518] begin];
  if (!pthread_main_np())
  {
    [MEMORY[0x1E6979518] activateBackground:1];
  }

  [MEMORY[0x1E6979518] setDisableActions:1];
  [*(DerivedStorage + 8) addAnimation:a2 forKey:a3];
  [MEMORY[0x1E6979518] commit];
  v6 = *DerivedStorage;
  FigCaptionRendererOutputNodeProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (!ProtocolVTable)
  {
    return 4294954508;
  }

  v8 = *(ProtocolVTable + 16);
  if (!v8)
  {
    return 4294954508;
  }

  v9 = *(v8 + 176);
  if (!v9)
  {
    return 4294954514;
  }

  return v9(v6, a2, a3);
}

uint64_t FigCaptionRendererCALayerOutputNode_FigCaptionRendererOutputNodeProtocol_SetOptions(const void *a1, const void *a2, const void *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a1)
  {
    CFRetain(a1);
  }

  if (a2)
  {
    CFRetain(a2);
  }

  if (a3)
  {
    CFRetain(a3);
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __FigCaptionRendererCALayerOutputNode_FigCaptionRendererOutputNodeProtocol_SetOptions_block_invoke;
  block[3] = &__block_descriptor_56_e5_v8__0l;
  block[4] = a1;
  block[5] = a3;
  block[6] = a2;
  dispatch_async(MEMORY[0x1E69E96A0], block);
  v7 = *DerivedStorage;
  FigCaptionRendererOutputNodeProtocolGetProtocolID();
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

  v10 = *(v9 + 184);
  if (v10)
  {
    return v10(v7, a2, a3);
  }

  else
  {
    return 4294954514;
  }
}

uint64_t FigCaptionRendererCALayerOutputNode_FigCaptionRendererOutputNodeProtocol_SetSeparated(const void *a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a1)
  {
    CFRetain(a1);
  }

  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __FigCaptionRendererCALayerOutputNode_FigCaptionRendererOutputNodeProtocol_SetSeparated_block_invoke;
  v10[3] = &__block_descriptor_41_e5_v8__0l;
  v10[4] = a1;
  v11 = a2;
  dispatch_async(MEMORY[0x1E69E96A0], v10);
  v5 = *DerivedStorage;
  FigCaptionRendererOutputNodeProtocolGetProtocolID();
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

  v8 = *(v7 + 192);
  if (v8)
  {
    return v8(v5, a2);
  }

  else
  {
    return 4294954514;
  }
}

uint64_t FigCaptionRendererCALayerOutputNode_FigCaptionRendererOutputNodeProtocol_SetPCTContextData(const void *a1, const void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a1)
  {
    CFRetain(a1);
  }

  if (a2)
  {
    CFRetain(a2);
  }

  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __FigCaptionRendererCALayerOutputNode_FigCaptionRendererOutputNodeProtocol_SetPCTContextData_block_invoke;
  v10[3] = &__block_descriptor_48_e5_v8__0l;
  v10[4] = a1;
  v10[5] = a2;
  dispatch_async(MEMORY[0x1E69E96A0], v10);
  v5 = *DerivedStorage;
  FigCaptionRendererOutputNodeProtocolGetProtocolID();
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

  v8 = *(v7 + 200);
  if (v8)
  {
    return v8(v5, a2);
  }

  else
  {
    return 4294954514;
  }
}

uint64_t FigCaptionRendererCALayerOutputNode_FigCaptionRendererOutputNodeProtocol_GetPCTContextData(uint64_t a1, uint64_t a2)
{
  v3 = *CMBaseObjectGetDerivedStorage();
  FigCaptionRendererOutputNodeProtocolGetProtocolID();
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

uint64_t FigCaptionRendererCALayerOutputNode_FigCaptionRendererOutputNodeProtocol_DumpInfo(uint64_t a1)
{
  v1 = *CMBaseObjectGetDerivedStorage();
  FigCaptionRendererOutputNodeProtocolGetProtocolID();
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

  v4 = *(v3 + 216);
  if (!v4)
  {
    return 4294954514;
  }

  return v4(v1);
}

uint64_t RegisterFigCaptionRendererCALayerOutputNodeBaseType(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  CMBaseGetClassID();

  return FigBaseClassRegisterClass();
}

uint64_t sbcdq_finalize(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v2 = DerivedStorage;
  if (*(DerivedStorage + 40))
  {
    v3 = *DerivedStorage;
    v4 = *(*(CMBaseObjectGetVTable() + 16) + 32);
    if (v4)
    {
      v4(v3);
    }
  }

  v5 = *(v2 + 32);
  if (v5)
  {
    CFRelease(v5);
    *(v2 + 32) = 0;
  }

  v6 = *(v2 + 48);
  if (v6)
  {
    dispatch_release(v6);
    *(v2 + 48) = 0;
  }

  if (*v2)
  {
    CFRelease(*v2);
    *v2 = 0;
  }

  return FigSimpleMutexDestroy();
}

__CFString *sbcdq_copyDebugDescription(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  CFStringAppendFormat(Mutable, 0, @"FigSampleBufferConsumerForDataQueue (%p) dataQueue(%p) LWM:<Callback:(%p), RefCon:(%p)>", a1, *DerivedStorage, DerivedStorage[2], DerivedStorage[3]);
  return Mutable;
}

uint64_t sbcdq_SendSampleBuffer(uint64_t a1, uint64_t a2)
{
  v3 = *CMBaseObjectGetDerivedStorage();
  v4 = *(*(CMBaseObjectGetVTable() + 16) + 8);
  if (!v4)
  {
    return 4294954514;
  }

  return v4(v3, a2);
}

BOOL sbcdq_IsQueueAtOrAboveHighWater(uint64_t a1)
{
  v1 = *CMBaseObjectGetDerivedStorage();
  v2 = *(*(CMBaseObjectGetVTable() + 16) + 16);
  return v2 && v2(v1) == 3;
}

BOOL sbcdq_IsQueueBelowLowWater(uint64_t a1)
{
  v1 = *CMBaseObjectGetDerivedStorage();
  v2 = *(*(CMBaseObjectGetVTable() + 16) + 16);
  return v2 && v2(v1) == 2;
}

uint64_t sbcdq_Flush(uint64_t a1)
{
  v1 = *CMBaseObjectGetDerivedStorage();
  v2 = *(*(CMBaseObjectGetVTable() + 16) + 40);
  if (!v2)
  {
    return 4294954514;
  }

  return v2(v1);
}

void sbcdq_LowWaterTriggerCallbackAsync(uint64_t a1)
{
  v1 = FigCFWeakReferenceHolderCopyReferencedObject();
  if (v1)
  {
    v2 = v1;
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    FigSimpleMutexLock();
    v4 = *(DerivedStorage + 16);
    if (v4)
    {
      v4(*(DerivedStorage + 24));
    }

    FigSimpleMutexUnlock();

    CFRelease(v2);
  }
}

uint64_t FigBufferedAirPlayGlobalRoutingRegistryRemoteGetShared()
{
  v3[0] = 0;
  v3[1] = v3;
  v3[2] = 0x2000000000;
  v4 = 0;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = __FigBufferedAirPlayGlobalRoutingRegistryRemoteGetShared_block_invoke;
  block[3] = &unk_1E7495458;
  block[4] = v3;
  if (FigBufferedAirPlayGlobalRoutingRegistryRemoteGetShared_onceToken != -1)
  {
    dispatch_once(&FigBufferedAirPlayGlobalRoutingRegistryRemoteGetShared_onceToken, block);
  }

  v0 = FigBufferedAirPlayGlobalRoutingRegistryRemoteGetShared_sGlobalRoutingRegistry;
  _Block_object_dispose(v3, 8);
  return v0;
}

void __FigBufferedAirPlayGlobalRoutingRegistryRemoteGetShared_block_invoke(uint64_t a1, uint64_t a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = *MEMORY[0x1E695E480];
  FigBufferedAirPlayGlobalRoutingRegistryGetClassID(a1, a2);
  *(*(*(a1 + 32) + 8) + 24) = CMDerivedObjectCreate();
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    return;
  }

  v5 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
  os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
  fig_log_call_emit_and_clean_up_after_send_and_compose();
  Mutable = CFDictionaryCreateMutable(v3, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  CFDictionarySetValue(Mutable, *MEMORY[0x1E69633B0], @"FigBufferedAirPlayGlobalRoutingRegistryServerDied");
  *(*(*(a1 + 32) + 8) + 24) = FigXPCRemoteClientCreate();
  if (Mutable)
  {
    CFRelease(Mutable);
  }

  if (*(*(*(a1 + 32) + 8) + 24))
  {
    v7 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
LABEL_9:
    FigBufferedAirPlayGlobalRoutingRegistryRemoteGetShared_sGlobalRoutingRegistry = 0;
    return;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  *DerivedStorage = FigBufferedAirPlayGlobalRoutingRegistryRemoteGetShared_xpcClient;
  DerivedStorage[1] = FigBufferedAirPlayClientRoutingRegistryGetSharedInstance();
  v9 = dispatch_queue_create("com.apple.coremedia.globalroutingregistryremote.notification", 0);
  DerivedStorage[2] = v9;
  if (v9)
  {
    CMNotificationCenterGetDefaultLocalCenter();
    FigNotificationCenterAddWeakListener();
    goto LABEL_9;
  }

  *(*(*(a1 + 32) + 8) + 24) = -17721;
}

uint64_t remoteGlobalRoutingRegistry_bufferedClientUpdateNotificationCallback(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = *MEMORY[0x1E69E9840];
  CMBaseObjectGetDerivedStorage();
  os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
  os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
  fig_log_call_emit_and_clean_up_after_send_and_compose();
  CMNotificationCenterGetDefaultLocalCenter();
  return FigDispatchAsyncPostNotification();
}

void remoteGlobalRoutingRegistry_Finalize(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  CMNotificationCenterGetDefaultLocalCenter();
  FigNotificationCenterRemoveWeakListener();
  v2 = *(DerivedStorage + 16);
  if (v2)
  {
    dispatch_release(v2);
    *(DerivedStorage + 16) = 0;
  }

  FigBytePumpRelease(*(DerivedStorage + 8));
  __break(1u);
}

CFStringRef remoteGlobalRoutingRegistry_CopyDebugDesc(const void *a1)
{
  v2 = *MEMORY[0x1E695E480];
  v3 = CFGetRetainCount(a1);
  return CFStringCreateWithFormat(v2, 0, @"<remoteGlobalRoutingRegistry: %p retainCount: %ld>", a1, v3);
}

uint64_t remoteGlobalRoutingRegistry_registerClient(uint64_t a1, uint64_t a2, const __CFString *a3)
{
  v12 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v7 = 4294949576;
  if (!a1 || !a2 || !a3)
  {
    goto LABEL_7;
  }

  if (!*DerivedStorage)
  {
    v7 = 4294951137;
    goto LABEL_7;
  }

  v8 = FigXPCCreateBasicMessage();
  if (v8)
  {
    v7 = v8;
    goto LABEL_7;
  }

  CFStringGetCString(a3, buffer, 64, 0x600u);
  xpc_dictionary_set_string(0, "RoutingContextUUID", buffer);
  xpc_dictionary_set_uint64(0, "ClientID", a2);
  xpc_dictionary_set_uint64(0, "RemoteClientID", a1);
  v7 = FigXPCRemoteClientSendSyncMessageCreatingReply();
  if (v7)
  {
LABEL_7:
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  FigXPCRelease();
  FigXPCRelease();
  FigXPCRemoteClientKillServerOnTimeout();
  return v7;
}

uint64_t remoteGlobalRoutingRegistry_getCountOfRunningClientsForRoutingContext(uint64_t a1, const __CFString *a2, uint64_t *a3)
{
  v13 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v7 = 4294949576;
  if (!a1 || !a2)
  {
    goto LABEL_11;
  }

  if (!*DerivedStorage)
  {
    v7 = 4294951137;
    goto LABEL_11;
  }

  v8 = FigXPCCreateBasicMessage();
  if (v8 || (CFStringGetCString(a2, buffer, 64, 0x600u), xpc_dictionary_set_string(0, "RoutingContextUUID", buffer), xpc_dictionary_set_uint64(0, "RemoteClientID", a1), v8 = FigXPCRemoteClientSendSyncMessageCreatingReply(), v8))
  {
    v7 = v8;
LABEL_11:
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    goto LABEL_8;
  }

  uint64 = xpc_dictionary_get_uint64(0, "ClientCount");
  v7 = 0;
  if (a3)
  {
    *a3 = uint64;
  }

LABEL_8:
  FigXPCRelease();
  FigXPCRelease();
  FigXPCRemoteClientKillServerOnTimeout();
  return v7;
}

uint64_t FigCaptionRendererNotificationInputCreate(NSObject *a1, NSObject *a2, NSObject *a3, NSObject *a4, uint64_t a5, void *a6)
{
  v16 = *MEMORY[0x1E69E9840];
  if (!a1 || !a2 || !a4)
  {
    FigCaptionRendererNotificationInputCreate_cold_2(__str);
    return *__str;
  }

  if (!a6)
  {
    FigCaptionRendererNotificationInputCreate_cold_1(__str);
    return *__str;
  }

  *a6 = 0;
  FigCaptionRendererInputGetClassID();
  v11 = CMDerivedObjectCreate();
  if (!v11)
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    DerivedStorage[2] = a1;
    DerivedStorage[3] = a2;
    DerivedStorage[4] = a3;
    DerivedStorage[5] = a4;
    DerivedStorage[6] = 0;
    v11 = FigCaptionSerializerCreate();
    if (!v11)
    {
      snprintf(__str, 0x100uLL, "com.apple.coremedia.ckmediainput.messagequeue<%p>", 0);
      v13 = dispatch_queue_create(__str, 0);
      *DerivedStorage = v13;
      v11 = 0;
      if (v13)
      {
        *a6 = 0;
      }
    }
  }

  return v11;
}

uint64_t FigCaptionRendererNotificationInputSetPlayer(uint64_t a1, uint64_t a2)
{
  v4[0] = CMBaseObjectGetDerivedStorage();
  v4[1] = a2;
  if (*v4[0])
  {
    dispatch_sync_f(*v4[0], v4, setPlayerDo);
  }

  return 0;
}

void setPlayerDo(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  theDict = 0;
  cf = 0;
  v8 = 0;
  if (*(v1 + 8))
  {
    CMNotificationCenterGetDefaultLocalCenter();
    CMNotificationCenterRemoveListener();
    v3 = *(v1 + 8);
  }

  else
  {
    v3 = 0;
  }

  *(v1 + 8) = v2;
  if (v2)
  {
    CFRetain(v2);
  }

  if (v3)
  {
    CFRelease(v3);
  }

  if (*(v1 + 8))
  {
    CMNotificationCenterGetDefaultLocalCenter();
    CMNotificationCenterAddListener();
    FigPlayerGetFigBaseObject();
    v5 = v4;
    v6 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v6)
    {
      v6(v5, @"LastSentSubtitleSample", *MEMORY[0x1E695E480], &cf);
      if (!cf)
      {
        goto LABEL_18;
      }

      if (!FigSubtitleSampleCreateFromPropertyListAndInsertInfoForRenderer(cf, &theDict, &v8, *MEMORY[0x1E695F050], *(MEMORY[0x1E695F050] + 8), *(MEMORY[0x1E695F050] + 16), *(MEMORY[0x1E695F050] + 24)))
      {
        if (theDict)
        {
          Value = CFDictionaryGetValue(theDict, @"SubtitleContent");
          if (Value)
          {
            if (CFArrayGetCount(Value) >= 1)
            {
              digestSubtitleSample_0(1, v1, cf);
            }
          }
        }
      }
    }
  }

  if (cf)
  {
    CFRelease(cf);
  }

LABEL_18:
  if (theDict)
  {
    CFRelease(theDict);
  }
}

uint64_t FigCaptionRendererNotificationInputAddSample(uint64_t a1, const void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  digestSubtitleSample_0(0, DerivedStorage, a2);
  return 0;
}

void digestSubtitleSample_0(int a1, dispatch_queue_t *a2, CFTypeRef cf)
{
  if (cf)
  {
    CFRetain(cf);
  }

  v6[0] = a2;
  v6[1] = cf;
  if (a1)
  {
    digestSubtitleSampleDo_1(v6);
  }

  else if (*a2)
  {
    dispatch_sync_f(*a2, v6, digestSubtitleSampleDo_1);
  }
}

void figFCRNotificationInput_Finalize(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 8))
  {
    CMNotificationCenterGetDefaultLocalCenter();
    CMNotificationCenterRemoveListener();
    v2 = *(DerivedStorage + 8);
    if (v2)
    {
      CFRelease(v2);
      *(DerivedStorage + 8) = 0;
    }
  }

  if (*DerivedStorage)
  {
    dispatch_release(*DerivedStorage);
    *DerivedStorage = 0;
  }

  v3 = *(DerivedStorage + 48);
  if (v3)
  {
    CFRelease(v3);
    *(DerivedStorage + 48) = 0;
  }

  *(DerivedStorage + 40) = 0;
}

__CFString *figFCRNotificationInput_CopyDebugDescription(uint64_t a1)
{
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  CFStringAppendFormat(Mutable, 0, @"<FigCaptionRendererNotificationInput %p>", a1);
  return Mutable;
}

void subtitleChangedCallback_0(int a1, dispatch_queue_t *a2, int a3, int a4, CFTypeRef cf)
{
  if (cf)
  {
    digestSubtitleSample_0(0, a2, cf);
  }
}

uint64_t OUTLINED_FUNCTION_7_93()
{

  return FigGeometryDimensionMake();
}

uint64_t FigSpeedRampTimer_initOnce()
{
  result = _CFRuntimeRegisterClass();
  sFigSpeedRampTimerID = result;
  return result;
}

uint64_t FigSpeedRampTimerScheduleForL2Time(uint64_t a1, __int128 *a2, uint32_t a3)
{
  FigSimpleMutexLock();
  v13 = *a2;
  v14 = *(a2 + 2);
  FPSTimelineConverterL2TimeToL3(&v13, &fireTime);
  *(a1 + 112) = fireTime;
  *(a1 + 160) = a3;
  if (*(a1 + 64))
  {
    fig_log_get_emitter();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v13.n128_u64[0], v13.n128_u32[2], v14);
    if (!v12)
    {
      goto LABEL_3;
    }

    v9 = v12;
LABEL_8:
    fig_log_get_emitter();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v13.n128_u64[0], v13.n128_u32[2], v14);
    goto LABEL_4;
  }

  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  fireTime = *(a1 + 112);
  v8 = CMTimebaseSetTimerDispatchSourceNextFireTime(v6, v7, &fireTime, a3);
  if (v8)
  {
    v9 = v8;
    FigSpeedRampTimerScheduleForL2Time_cold_1(v8, &fireTime);
    goto LABEL_8;
  }

LABEL_3:
  v9 = 0;
  v10 = *a2;
  *(a1 + 104) = *(a2 + 2);
  *(a1 + 88) = v10;
  *(a1 + 160) = a3;
LABEL_4:
  FigSimpleMutexUnlock();
  return v9;
}

uint64_t FigSpeedRampTimerScheduleToFireImmediately(uint64_t a1)
{
  FigSimpleMutexLock();
  if (*(a1 + 64))
  {
    FigSpeedRampTimerScheduleToFireImmediately_cold_1(&v7);
    value_low = LODWORD(v7.value);
  }

  else
  {
    CMTimebaseGetTime(&v7, *(a1 + 32));
    *(a1 + 112) = *&v7.value;
    epoch = v7.epoch;
    *(a1 + 128) = v7.epoch;
    v5 = *(a1 + 112);
    v6 = epoch;
    FPSTimelineConverterL3TimeToL2(&v5, &v7);
    *(a1 + 88) = v7;
    value_low = CMTimebaseSetTimerDispatchSourceToFireImmediately(*(a1 + 32), *(a1 + 40));
    if (value_low)
    {
      FigSpeedRampTimerScheduleToFireImmediately_cold_2();
    }
  }

  FigSimpleMutexUnlock();
  return value_low;
}

uint64_t FigSpeedRampTimerCancel(uint64_t a1)
{
  FigSimpleMutexLock();
  if (*(a1 + 64))
  {
    fig_log_get_emitter();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v5, v6, vars0);
    v3 = v2;
  }

  else
  {
    *(a1 + 64) = 1;
    dispatch_source_cancel(*(a1 + 40));
    v3 = 0;
  }

  FigSimpleMutexUnlock();
  return v3;
}

uint64_t FigSpeedRampTimerCreate(uint64_t a1, const void *a2, void *a3, uintptr_t a4, NSObject *a5, const void *a6, uint64_t a7, uint64_t a8, uint64_t *a9)
{
  if (!a2)
  {
    FigSpeedRampTimerCreate_cold_8(&v28);
    return v28;
  }

  if (!a3)
  {
    FigSpeedRampTimerCreate_cold_7(&v28);
    return v28;
  }

  if (!a5)
  {
    FigSpeedRampTimerCreate_cold_6(&v28);
    return v28;
  }

  if (!a7)
  {
    FigSpeedRampTimerCreate_cold_5(&v28);
    return v28;
  }

  if (!a9)
  {
    FigSpeedRampTimerCreate_cold_4(&v28);
    return v28;
  }

  MEMORY[0x19A8D3660](&FigSpeedRampTimerGetTypeID_sFigSpeedRampTimerRegisterOnce, FigSpeedRampTimer_initOnce);
  Instance = _CFRuntimeCreateInstance();
  if (!Instance)
  {
    FigSpeedRampTimerCreate_cold_3(&v28);
    return v28;
  }

  v17 = Instance;
  *(Instance + 56) = FigSimpleMutexCreate();
  v18 = MEMORY[0x1E6960C70];
  v19 = *MEMORY[0x1E6960C70];
  *(v17 + 88) = *MEMORY[0x1E6960C70];
  v20 = *(v18 + 16);
  *(v17 + 104) = v20;
  *(v17 + 112) = v19;
  *(v17 + 128) = v20;
  *(v17 + 136) = v19;
  *(v17 + 152) = v20;
  *(v17 + 64) = 0;
  *(v17 + 16) = CFRetain(a2);
  *(v17 + 32) = CFRetain(a3);
  CMNotificationCenterGetDefaultLocalCenter();
  v21 = FigNotificationCenterAddWeakListener();
  if (v21)
  {
    v26 = v21;
LABEL_27:
    CFRelease(v17);
    return v26;
  }

  v22 = dispatch_source_create(MEMORY[0x1E69E9710], 0, a4, a5);
  *(v17 + 40) = v22;
  if (!v22)
  {
    FigSpeedRampTimerCreate_cold_2(&v28);
    v26 = v28;
    goto LABEL_27;
  }

  dispatch_retain(a5);
  *(v17 + 48) = a5;
  if (a6)
  {
    v23 = CFRetain(a6);
  }

  else
  {
    v23 = 0;
  }

  *(v17 + 24) = v23;
  v24 = *(v17 + 40);
  v25 = FigCFWeakReferenceHolderCreateWithReferencedObject();
  dispatch_set_context(v24, v25);
  dispatch_set_finalizer_f(*(v17 + 40), speedramptimer_finalizerHandler);
  *(v17 + 72) = a7;
  dispatch_source_set_event_handler_f(*(v17 + 40), speedramptimer_eventHandler);
  if (a8)
  {
    *(v17 + 80) = a8;
    dispatch_source_set_cancel_handler_f(*(v17 + 40), speedramptimer_cancelHandler);
  }

  v26 = CMTimebaseAddTimerDispatchSource(a3, *(v17 + 40));
  if (v26)
  {
    FigSpeedRampTimerCreate_cold_1();
    goto LABEL_27;
  }

  dispatch_resume(*(v17 + 40));
  *a9 = v17;
  return v26;
}

void speedramptimer_handleL2L3TimelineMappingChangedNotification(uint64_t a1, uint64_t a2)
{
  v21 = *MEMORY[0x1E69E9840];
  FigSimpleMutexLock();
  v14 = 0uLL;
  v15 = 0;
  time1 = *(a2 + 88);
  FPSTimelineConverterL2TimeToL3(&time1, &v14);
  *v10 = v14;
  *&v10[16] = v15;
  v3 = *(a2 + 124);
  if ((v3 & 0x1D) != 1)
  {
    goto LABEL_9;
  }

  if (*(a2 + 148))
  {
    v16 = *(a2 + 136);
    v19 = *(a2 + 112);
    v20 = *(a2 + 120);
    v4 = *(a2 + 128);
    Rate = CMTimebaseGetRate(*(a2 + 32));
    if (Rate >= 0.0)
    {
      time1.value = v19;
      time1.timescale = v20;
      time1.flags = v3;
      time1.epoch = v4;
      time2 = v16;
      if (CMTimeCompare(&time1, &time2) <= 0)
      {
        goto LABEL_9;
      }
    }

    if (Rate < 0.0)
    {
      time1 = v16;
      time2.value = v19;
      time2.timescale = v20;
      time2.flags = v3;
      time2.epoch = v4;
      if (CMTimeCompare(&time1, &time2) < 1)
      {
        goto LABEL_9;
      }
    }
  }

  *(a2 + 112) = *v10;
  *(a2 + 128) = *&v10[16];
  if (*(a2 + 64))
  {
    fig_log_get_emitter();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", *v10, *&v10[8], *&v10[16]);
    if (!v9)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v6 = *(a2 + 32);
    v7 = *(a2 + 40);
    time1 = *v10;
    v8 = CMTimebaseSetTimerDispatchSourceNextFireTime(v6, v7, &time1, *(a2 + 160));
    if (!v8)
    {
LABEL_9:
      FigSimpleMutexUnlock();
      return;
    }

    FigSpeedRampTimerScheduleForL2Time_cold_1(v8, &time1);
  }

  fig_log_get_emitter();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", *v10, *&v10[8], *&v10[16]);
  FigSimpleMutexUnlock();
  fig_log_get_emitter();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v11, v12, v13);
}

double speedramptimer_init(uint64_t a1)
{
  *(a1 + 160) = 0;
  result = 0.0;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  return result;
}

uint64_t speedramptimer_finalize(uint64_t a1)
{
  CMNotificationCenterGetDefaultLocalCenter();
  FigNotificationCenterRemoveWeakListener();
  v2 = *(a1 + 40);
  if (v2)
  {
    *(a1 + 72) = 0;
    if (!*(a1 + 65))
    {
      *(a1 + 64) = 257;
      v3 = *(a1 + 80);
      if (v3)
      {
        *(a1 + 80) = 0;
        v4 = *(a1 + 24);
        *(a1 + 24) = 0;
        v5 = malloc_type_malloc(0x10uLL, 0xC00406BCC2924uLL);
        if (v5)
        {
          *v5 = v3;
          v5[1] = v4;
          dispatch_async_f(*(a1 + 48), v5, speedramptimer_finalize_func);
        }
      }

      dispatch_source_cancel(*(a1 + 40));
      v2 = *(a1 + 40);
    }

    CMTimebaseRemoveTimerDispatchSource(*(a1 + 32), v2);
    dispatch_release(*(a1 + 40));
    *(a1 + 40) = 0;
  }

  dispatch_release(*(a1 + 48));
  *(a1 + 48) = 0;
  v6 = *(a1 + 32);
  if (v6)
  {
    CFRelease(v6);
    *(a1 + 32) = 0;
  }

  v7 = *(a1 + 24);
  if (v7)
  {
    CFRelease(v7);
    *(a1 + 24) = 0;
  }

  v8 = *(a1 + 16);
  if (v8)
  {
    CFRelease(v8);
    *(a1 + 16) = 0;
  }

  result = FigSimpleMutexDestroy();
  *(a1 + 56) = 0;
  return result;
}

__CFString *speedramptimer_copyFormattingDesc(uint64_t a1)
{
  v2 = CFGetAllocator(a1);
  Mutable = CFStringCreateMutable(v2, 0);
  FigSimpleMutexLock();
  v4 = CFCopyDescription(*(a1 + 32));
  CFStringAppendFormat(Mutable, 0, @"<FigSpeedRampTimer %p timebase: %@, dispatch_source: %p, context: %p", a1, v4, *(a1 + 40), *(a1 + 24));
  if (v4)
  {
    CFRelease(v4);
  }

  time = *(a1 + 88);
  v5 = CMTimeCopyDescription(v2, &time);
  CFStringAppendFormat(Mutable, 0, @", scheduledL2Time: %@", v5);
  if (v5)
  {
    CFRelease(v5);
  }

  time = *(a1 + 112);
  v6 = CMTimeCopyDescription(v2, &time);
  CFStringAppendFormat(Mutable, 0, @", scheduledL3Time: %@", v6);
  if (v6)
  {
    CFRelease(v6);
  }

  time = *(a1 + 136);
  v7 = CMTimeCopyDescription(v2, &time);
  v8 = v7;
  v9 = "true";
  if (!*(a1 + 64) && !*(a1 + 65))
  {
    v9 = "false";
  }

  CFStringAppendFormat(Mutable, 0, @", lastFiredTimeL3: %@, cancelled: %s>", v7, v9);
  if (v8)
  {
    CFRelease(v8);
  }

  FigSimpleMutexUnlock();
  return Mutable;
}

void speedramptimer_finalize_func(void *a1)
{
  (*a1)(a1[1]);
  v2 = a1[1];
  if (v2)
  {
    CFRelease(v2);
  }

  free(a1);
}

uint64_t ccu_getUnitTypesForCodecType(int a1)
{
  result = 807937827;
  v3 = 403047945;
  if (a1 > 1751479856)
  {
    if (a1 <= 1902405680)
    {
      if (a1 <= 1869117026)
      {
        if (a1 == 1751479857 || a1 == 1752589105)
        {
          return result;
        }

        v5 = 1836415073;
        goto LABEL_34;
      }

      if (a1 == 1869117027)
      {
        return result;
      }

      if (a1 == 1902212707)
      {
        return v3;
      }

      v4 = 1902212709;
    }

    else
    {
      if (a1 <= 1902667125)
      {
        if (a1 == 1902405681 || a1 == 1902405733)
        {
          return result;
        }

        v5 = 1902407032;
        goto LABEL_34;
      }

      if (a1 <= 1902998903)
      {
        if (a1 == 1902667126)
        {
          return result;
        }

        v5 = 1902671459;
        goto LABEL_34;
      }

      if (a1 == 1902998904)
      {
        return result;
      }

      v4 = 2053207651;
    }

LABEL_38:
    if (a1 == v4)
    {
      return v3;
    }

    return 0;
  }

  if (a1 <= 1685220712)
  {
    if (a1 > 1667524656)
    {
      if (a1 == 1667524657 || a1 == 1667790435)
      {
        return result;
      }

      v5 = 1684895096;
      goto LABEL_34;
    }

    if (a1 == 1635148593 || a1 == 1635148595)
    {
      return v3;
    }

    v4 = 1667331683;
    goto LABEL_38;
  }

  if (a1 <= 1700886114)
  {
    if (a1 == 1685220713)
    {
      return v3;
    }

    if (a1 != 1685481521)
    {
      v5 = 1685481573;
      goto LABEL_34;
    }
  }

  else
  {
    if (a1 <= 1718908519)
    {
      if (a1 != 1700886115)
      {
        v4 = 1718908515;
        goto LABEL_38;
      }

      return v3;
    }

    if (a1 != 1718908520)
    {
      v5 = 1718908528;
LABEL_34:
      if (a1 != v5)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t ccu_appendCaptionBuffer(int a1, void *a2, CMBlockBufferRef theBuffer, __int16 a4)
{
  DataLength = CMBlockBufferGetDataLength(theBuffer);
  if (DataLength >= 9)
  {
    v10 = DataLength;
    v25 = v4;
    v11 = 0;
    if (a2)
    {
      v12 = theBuffer == 0;
    }

    else
    {
      v12 = 1;
    }

    v13 = v12;
    v29 = v13;
    v28 = HIBYTE(a4);
    v27 = a4 & 1 | 0x4E;
    v14 = *MEMORY[0x1E695E498];
    while (1)
    {
      memset(destination, 0, 7);
      result = CMBlockBufferCopyDataBytes(theBuffer, v11, 7uLL, destination);
      if (result)
      {
        return result;
      }

      if (destination[0] == 876167495 && LOBYTE(destination[1]) == 3)
      {
        break;
      }

      v17 = 1;
LABEL_67:
      v11 += v17;
      if (v11 + 8 >= v10)
      {
        return 0;
      }
    }

    v18 = 3 * (BYTE1(destination[1]) & 0x1F);
    v17 = v18 + 8;
    if (v10 - v11 < v18 + 8)
    {
      return result;
    }

    destinationBuffer = 0;
    sourceBytes = 0;
    v31 = 0;
    if (v29)
    {
      goto LABEL_65;
    }

    if (a1 > 1751479856)
    {
      if (a1 > 1902405680)
      {
        if (a1 <= 1902667125)
        {
          if (a1 != 1902405681 && a1 != 1902405733)
          {
            v20 = 1902407032;
            goto LABEL_54;
          }
        }

        else
        {
          if (a1 > 1902998903)
          {
            if (a1 == 2053207651)
            {
              goto LABEL_56;
            }

            v20 = 1902998904;
            goto LABEL_54;
          }

          if (a1 != 1902667126)
          {
            v20 = 1902671459;
            goto LABEL_54;
          }
        }

        goto LABEL_55;
      }

      if (a1 <= 1869117026)
      {
        if (a1 != 1751479857 && a1 != 1752589105)
        {
          v20 = 1836415073;
          goto LABEL_54;
        }

        goto LABEL_55;
      }

      if (a1 == 1869117027)
      {
        goto LABEL_55;
      }

      if (a1 == 1902212707)
      {
        goto LABEL_56;
      }

      v19 = 1902212709;
    }

    else
    {
      if (a1 > 1685220712)
      {
        if (a1 <= 1700886114)
        {
          if (a1 == 1685220713)
          {
            goto LABEL_56;
          }

          if (a1 != 1685481521)
          {
            v20 = 1685481573;
            goto LABEL_54;
          }
        }

        else
        {
          if (a1 <= 1718908519)
          {
            if (a1 != 1700886115)
            {
              v19 = 1718908515;
              goto LABEL_48;
            }

LABEL_56:
            v32[0] = 6;
            v21 = 1;
            goto LABEL_57;
          }

          if (a1 != 1718908520)
          {
            v20 = 1718908528;
LABEL_54:
            if (a1 != v20)
            {
              goto LABEL_69;
            }

            goto LABEL_55;
          }
        }

        goto LABEL_55;
      }

      if (a1 > 1667524656)
      {
        if (a1 != 1667524657 && a1 != 1667790435)
        {
          v20 = 1684895096;
          goto LABEL_54;
        }

LABEL_55:
        v32[0] = v27;
        v32[1] = v28;
        v21 = 2;
LABEL_57:
        v22 = CFGetAllocator(a2);
        if (!CMBlockBufferCreateWithMemoryBlock(v22, 0, v21 + 9, 0, 0, 0, v21 + 9, 1u, &destinationBuffer))
        {
          sourceBytes = bswap32(v21 + 5 + v17 + 1);
          if (!CMBlockBufferReplaceDataBytes(&sourceBytes, destinationBuffer, 0, 4uLL) && !CMBlockBufferReplaceDataBytes(v32, destinationBuffer, 4uLL, v21) && !CMBlockBufferReplaceDataBytes(&ccu_appendSEIUnitWithCCData_kSEI_ITUt35_ATSC_Header, destinationBuffer, v21 | 4, 5uLL))
          {
            v31 = v18 + 11;
            if (!CMBlockBufferReplaceDataBytes(&v31, destinationBuffer, v21 + 5, 1uLL) && !CMBlockBufferAppendBufferReference(a2, destinationBuffer, 0, 0, 0) && !CMBlockBufferAppendBufferReference(a2, theBuffer, v11, v18 + 8, 0))
            {
              CMBlockBufferAppendMemoryBlock(a2, &ccu_appendSEIUnitWithCCData_kRBSPTrailingBits, 1uLL, v14, 0, 0, 1uLL, 0);
            }
          }
        }

        goto LABEL_65;
      }

      if (a1 == 1635148593 || a1 == 1635148595)
      {
        goto LABEL_56;
      }

      v19 = 1667331683;
    }

LABEL_48:
    if (a1 != v19)
    {
LABEL_69:
      fig_log_get_emitter();
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d", blockBufferOut, v25, v26);
      if (!v23)
      {
        v21 = 0;
        goto LABEL_57;
      }

LABEL_65:
      if (destinationBuffer)
      {
        CFRelease(destinationBuffer);
      }

      goto LABEL_67;
    }

    goto LABEL_56;
  }

  return 0;
}

uint64_t OUTLINED_FUNCTION_3_139(int a1, int a2, int a3, uint64_t a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);

  return ccu_createOrAppendFromBuffer(va, v16, v17, a4);
}

uint64_t OUTLINED_FUNCTION_4_136(uint64_t a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, ...)
{
  va_start(va, a9);
  v11 = *(a1 + 48);

  return CMBlockBufferCopyDataBytes(v11, v9, 4uLL, va);
}

uint64_t OUTLINED_FUNCTION_6_109(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, int a11, __int16 a12, char a13, char destination)
{
  v17 = *(v14 + 32);

  return CMBlockBufferCopyDataBytes(v17, v15, 1uLL, &destination);
}

double figVideoReceiverConnectionHelperInit(uint64_t a1)
{
  result = 0.0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  return result;
}

void figVideoReceiverConnectionHelperFinalize(void *a1)
{
  v2 = a1[2];
  if (v2)
  {
    CFRelease(v2);
    a1[2] = 0;
  }

  v3 = a1[3];
  if (v3)
  {
    a1[3] = 0;
    xpc_release(v3);
  }

  v4 = a1[4];
  if (v4)
  {
    a1[4] = 0;
    xpc_release(v4);
  }

  v5 = a1[5];
  if (v5)
  {
    a1[5] = 0;

    xpc_release(v5);
  }
}

CFMutableStringRef figVideoReceiverConnectionHelperCopyDebugDesc(const void *a1)
{
  v1 = CFGetAllocator(a1);

  return CFStringCreateMutable(v1, 0);
}

uint64_t __FigVideoReceiverConnectionHelperGetTypeID_block_invoke()
{
  result = _CFRuntimeRegisterClass();
  sFigVideoReceiverConnectionHelperID = result;
  return result;
}

uint64_t FigVideoReceiverConnectionHelperCopyBootstrapEndpoint(uint64_t a1, void *a2)
{
  if (a2)
  {
    v3 = *(a1 + 24);
    if (v3)
    {
      if (*(a1 + 40))
      {
        FigVideoReceiverConnectionHelperCopyBootstrapEndpoint_cold_1(&v8);
        return v8;
      }

      else
      {
        v5 = xpc_endpoint_create(v3);
        *(a1 + 40) = v5;
        v6 = xpc_retain(v5);
        result = 0;
        *a2 = v6;
      }
    }

    else
    {
      FigVideoReceiverConnectionHelperCopyBootstrapEndpoint_cold_2(&v9);
      return v9;
    }
  }

  else
  {
    FigVideoReceiverConnectionHelperCopyBootstrapEndpoint_cold_3(&v10);
    return v10;
  }

  return result;
}

uint64_t FigVideoReceiverConnectionHelperCreate(uint64_t cold_1, uint64_t a2, uint64_t *a3)
{
  if (FigVideoReceiverConnectionHelperCreate_onceToken != -1)
  {
    FigVideoReceiverConnectionHelperCreate_cold_1();
  }

  if (FigVideoReceiverConnectionHelperGetTypeID_onceToken != -1)
  {
    FigVideoReceiverConnectionHelperCreate_cold_2();
  }

  Instance = _CFRuntimeCreateInstance();
  if (Instance)
  {
    v5 = Instance;
    *(Instance + 16) = FigCFWeakReferenceHolderCreateWithReferencedObject();
    v6 = xpc_connection_create(0, FigVideoReceiverConnectionHelperCreate_sharedBootstrapQueue);
    v7 = FigCFWeakReferenceHolderCreateWithReferencedObject();
    xpc_connection_set_context(v6, v7);
    xpc_connection_set_finalizer_f(v6, sharedConnectionFinalize);
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 0x40000000;
    v10[2] = __FigVideoReceiverConnectionHelperCreate_block_invoke_2;
    v10[3] = &__block_descriptor_tmp_31_1;
    v10[4] = v6;
    xpc_connection_set_event_handler(v6, v10);
    xpc_connection_activate(v6);
    v8 = 0;
    *(v5 + 24) = v6;
    *a3 = v5;
  }

  else
  {
    FigVideoReceiverConnectionHelperCreate_cold_3(&v11);
    v8 = v11;
  }

  FigXPCRelease();
  return v8;
}

dispatch_queue_t __FigVideoReceiverConnectionHelperCreate_block_invoke()
{
  result = dispatch_queue_create("com.apple.coremedia.videoreceiver.bootstrap", 0);
  FigVideoReceiverConnectionHelperCreate_sharedBootstrapQueue = result;
  return result;
}

void sharedConnectionFinalize(CFTypeRef cf)
{
  if (cf)
  {
    CFRelease(cf);
  }
}

void __FigVideoReceiverConnectionHelperCreate_block_invoke_2(uint64_t a1, _xpc_connection_s *a2)
{
  if (MEMORY[0x19A8D7060](a2) == MEMORY[0x1E69E9E68])
  {
    context = xpc_connection_get_context(*(a1 + 32));
    v5 = FigCFWeakReferenceHolderCopyReferencedObject();
    xpc_connection_set_context(a2, context);
    CFRetain(context);
    xpc_connection_set_finalizer_f(a2, sharedConnectionFinalize);
    handler[0] = MEMORY[0x1E69E9820];
    handler[1] = 0x40000000;
    handler[2] = __connectionHelper_handleNewBootstrapConnection_block_invoke;
    handler[3] = &__block_descriptor_tmp_32_2;
    handler[4] = a2;
    xpc_connection_set_event_handler(a2, handler);
    if (v5)
    {
      v6 = v5[4];
      if (v6)
      {
        v5[4] = 0;
        xpc_release(v6);
      }

      v5[4] = FigXPCRetain();
    }

    if (a2)
    {
      xpc_connection_activate(a2);
    }

    if (v5)
    {
      CFRelease(v5);
    }
  }
}

uint64_t __connectionHelper_handleNewBootstrapConnection_block_invoke(uint64_t a1, void *a2)
{
  result = MEMORY[0x19A8D7060](a2);
  if (result != MEMORY[0x1E69E9E80])
  {
    return result;
  }

  v5 = *(a1 + 32);
  v51 = 0;
  xpc_connection_get_context(v5);
  v6 = FigCFWeakReferenceHolderCopyReferencedObject();
  reply = xpc_dictionary_create_reply(a2);
  v50 = 0;
  cf = 0;
  v49 = 0;
  v46 = 0;
  v47 = 0;
  v44 = 0;
  v45 = 0;
  v42 = 0;
  v43 = 0;
  if (!v6)
  {
    __connectionHelper_handleNewBootstrapConnection_block_invoke_cold_7(&value);
    v35 = 0;
    v8 = 0;
LABEL_60:
    v36 = value;
    goto LABEL_23;
  }

  v8 = FigCFWeakReferenceHolderCopyReferencedObject();
  if (!v8)
  {
    __connectionHelper_handleNewBootstrapConnection_block_invoke_cold_6(&value);
LABEL_59:
    v35 = 0;
    goto LABEL_60;
  }

  v9 = *(*(CMBaseObjectGetVTable() + 24) + 136);
  if (v9)
  {
    v10 = v9(v8, &v50);
    if (v10)
    {
      goto LABEL_61;
    }

    v11 = CFGetAllocator(v8);
    FigVideoReceiverGetCMBaseObject();
    v13 = v12;
    v14 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v14)
    {
      v10 = v14(v13, @"LoggingIdentifier", v11, &cf);
      if (v10)
      {
        goto LABEL_61;
      }

      v15 = CFGetAllocator(v8);
      FigVideoReceiverGetCMBaseObject();
      v17 = v16;
      v18 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      if (v18)
      {
        v10 = v18(v17, 0x1F0B32AB8, v15, &v47);
        if (v10)
        {
          goto LABEL_61;
        }

        v19 = CFGetAllocator(v8);
        FigVideoReceiverGetCMBaseObject();
        v21 = v20;
        v22 = *(*(CMBaseObjectGetVTable() + 8) + 48);
        if (v22)
        {
          v10 = v22(v21, 0x1F0B51EF8, v19, &v46);
          if (v10)
          {
            goto LABEL_61;
          }

          v23 = v46;
          v24 = CFGetAllocator(v8);
          v10 = FigDataChannelGroupsArrayCopyAsDictionary(v23, v24, &v45);
          if (v10)
          {
            goto LABEL_61;
          }

          v25 = CFGetAllocator(v8);
          FigVideoReceiverGetCMBaseObject();
          v27 = v26;
          v28 = *(*(CMBaseObjectGetVTable() + 8) + 48);
          if (v28)
          {
            v10 = v28(v27, 0x1F0B51F18, v25, &v44);
            if (!v10)
            {
              v10 = FigVideoReceiverDataChannelSettingsCopySerializable(v44, &v43);
              if (!v10)
              {
                v29 = CFGetAllocator(v8);
                FigVideoReceiverGetCMBaseObject();
                v31 = v30;
                v32 = *(*(CMBaseObjectGetVTable() + 8) + 48);
                if (v32)
                {
                  v32(v31, 0x1F0B51E18, v29, &v42);
                }

                pid = xpc_connection_get_pid(v5);
                if (figVideoReceiverGetXPCServerForRemoteClient_onceToken == -1)
                {
                  if (pid)
                  {
LABEL_20:
                    FigSimpleMutexLock();
                    value = CFDictionaryGetValue(figVideoReceiverGetXPCServerForRemoteClient_serverDictionary, pid);
                    if (value)
                    {
                      v34 = 0;
LABEL_48:
                      value = 0;
                      FigSimpleMutexUnlock();
                      if (v34)
                      {
                        v36 = 0;
                        goto LABEL_50;
                      }

LABEL_51:
                      v10 = FigXPCServerCopyXPCEndpoint();
                      if (!v10)
                      {
                        xpc_dictionary_set_value(reply, kFigVideoReceiverEndpoint, v49);
                        v39 = kFigVideoReceiverServerPID;
                        v40 = getpid();
                        xpc_dictionary_set_uint64(reply, v39, v40);
                        v35 = malloc_type_calloc(1uLL, 8uLL, 0x2004093837F09uLL);
                        if (v35 || __connectionHelper_handleNewBootstrapConnection_block_invoke_cold_5(&value))
                        {
                          v41 = FigXPCServerAssociateObjectWithNeighborProcess();
                          if (v41)
                          {
                            v36 = v41;
                          }

                          else
                          {
                            *v35 = CFRetain(v8);
                            xpc_dictionary_set_uint64(reply, *MEMORY[0x1E69615A0], v51);
                            FigXPCMessageSetUInt32();
                            FigXPCMessageSetCFString();
                            FigXPCMessageSetCFBoolean();
                            FigXPCMessageSetCFDictionary();
                            FigXPCMessageSetCFArray();
                            if (v42)
                            {
                              FigXPCMessageSetCFDictionary();
                            }

                            v35 = 0;
                            v36 = 0;
                          }

                          goto LABEL_23;
                        }

                        goto LABEL_59;
                      }

                      goto LABEL_61;
                    }

                    Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 2, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
                    if (Mutable)
                    {
                      v34 = Mutable;
                      FigCFDictionarySetInt32();
                      CFDictionarySetValue(v34, *MEMORY[0x1E6963408], *MEMORY[0x1E695E4D0]);
                      v38 = FigXPCServerStartWithNewXPCEndpoint();
                      if (v38)
                      {
                        v36 = v38;
                        __connectionHelper_handleNewBootstrapConnection_block_invoke_cold_2();
LABEL_50:
                        CFRelease(v34);
                        if (v36)
                        {
LABEL_62:
                          v35 = 0;
                          goto LABEL_23;
                        }

                        goto LABEL_51;
                      }

                      CFDictionarySetValue(figVideoReceiverGetXPCServerForRemoteClient_serverDictionary, pid, value);
                      goto LABEL_48;
                    }

                    __connectionHelper_handleNewBootstrapConnection_block_invoke_cold_3(&v53);
LABEL_69:
                    v36 = v53;
                    if (v53)
                    {
                      goto LABEL_62;
                    }

                    goto LABEL_51;
                  }
                }

                else
                {
                  __connectionHelper_handleNewBootstrapConnection_block_invoke_cold_1();
                  if (pid)
                  {
                    goto LABEL_20;
                  }
                }

                __connectionHelper_handleNewBootstrapConnection_block_invoke_cold_4(&v53);
                goto LABEL_69;
              }
            }

LABEL_61:
            v36 = v10;
            goto LABEL_62;
          }
        }
      }
    }
  }

  v35 = 0;
  v36 = -12782;
LABEL_23:
  if (reply)
  {
    xpc_dictionary_set_int64(reply, *MEMORY[0x1E6961590], v36);
    xpc_connection_send_message(v5, reply);
  }

  DisposeServedVideoReceiverState(v35);
  if (v8)
  {
    CFRelease(v8);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (v47)
  {
    CFRelease(v47);
  }

  if (v45)
  {
    CFRelease(v45);
  }

  if (v46)
  {
    CFRelease(v46);
  }

  if (v43)
  {
    CFRelease(v43);
  }

  if (v44)
  {
    CFRelease(v44);
  }

  if (v42)
  {
    CFRelease(v42);
  }

  if (v6)
  {
    CFRelease(v6);
  }

  FigXPCRelease();
  return FigXPCRelease();
}

void DisposeServedVideoReceiverState(CFTypeRef *a1)
{
  if (a1)
  {
    if (*a1)
    {
      cf = 0;
      FigDataChannelConfigurationCreate(*MEMORY[0x1E695E480], 0, &cf);
      v2 = cf;
      if (cf)
      {
        v3 = *a1;
        v4 = *(*(CMBaseObjectGetVTable() + 24) + 8);
        if (v4)
        {
          v6 = *MEMORY[0x1E6960C70];
          v7 = *(MEMORY[0x1E6960C70] + 16);
          v4(v3, v2, 1, &v6);
        }

        if (cf)
        {
          CFRelease(cf);
        }
      }

      if (*a1)
      {
        CFRelease(*a1);
      }
    }

    free(a1);
  }
}

CFMutableDictionaryRef __figVideoReceiverGetXPCServerForRemoteClient_block_invoke(uint64_t a1)
{
  figVideoReceiverGetXPCServerForRemoteClient_serverMutex = FigSimpleMutexCreate();
  result = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, 0, 0);
  figVideoReceiverGetXPCServerForRemoteClient_serverDictionary = result;
  return result;
}

uint64_t videoReceiverServer_releaseImageQueue(uint64_t a1, xpc_object_t xdict)
{
  uint64 = xpc_dictionary_get_uint64(xdict, "ImageQueueID");
  if (uint64)
  {
    v4 = uint64;
    v5 = *(*(CMBaseObjectGetVTable() + 24) + 24);
    if (v5)
    {

      return v5(a1, v4);
    }

    else
    {
      return 4294954514;
    }
  }

  else
  {
    videoReceiverServer_releaseImageQueue_cold_1(&v7);
    return v7;
  }
}

uint64_t videoReceiverServer_setImageQueueMessage(uint64_t a1, xpc_object_t xdict)
{
  uint64 = xpc_dictionary_get_uint64(xdict, "ImageQueueID");
  if (uint64)
  {
    v5 = uint64;
    value = xpc_dictionary_get_value(xdict, "ImageQueueMessage");
    if (value)
    {
      v7 = value;
      v8 = *(*(CMBaseObjectGetVTable() + 24) + 32);
      if (v8)
      {

        return v8(a1, v5, v7);
      }

      else
      {
        return 4294954514;
      }
    }

    else
    {
      videoReceiverServer_setImageQueueMessage_cold_1(&v10);
      return v10;
    }
  }

  else
  {
    videoReceiverServer_setImageQueueMessage_cold_2(&v11);
    return v11;
  }
}

uint64_t FigVideoReceiverRemoteGetCAImageQueueSlotForImageQueueForTesting(uint64_t a1, uint64_t a2)
{
  v6 = 0;
  videoReceiverRemote_copyImageQueueSlotForImageQueueFromConfigurations(a1, a2, &v6);
  v3 = v6;
  if (!v6)
  {
    return 0;
  }

  SlotID = FigImageQueueSlotGetSlotID(v6, v2);
  CFRelease(v3);
  return SlotID;
}

BOOL videoReceiverRemote_copyImageQueueSlotForImageQueueFromConfigurations(uint64_t a1, uint64_t a2, void *a3)
{
  CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  v6 = videoReceiverRemote_copyImageQueueSlotForImageQueueFromConfigurationsWhileHoldingConfigurationLock(a1, a2, a3);
  FigSimpleMutexUnlock();
  return v6;
}

uint64_t FigVideoReceiverCreateRemote(const __CFAllocator *a1, void *a2, uint64_t a3, void *a4)
{
  v37 = 0;
  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  fig_note_initialize_category_with_default_work_cf();
  fig_note_initialize_category_with_default_work_cf();
  if (!a4)
  {
    v29 = 2941;
LABEL_35:
    FigVideoReceiverCreateRemote_cold_3(v29, v39);
    v26 = LODWORD(v39[0]);
    goto LABEL_29;
  }

  if (!a2)
  {
    v29 = 2942;
    goto LABEL_35;
  }

  value = xpc_dictionary_get_value(a2, kFigVideoReceiverEndpoint);
  if (!value)
  {
    v29 = 2945;
    goto LABEL_35;
  }

  v10 = value;
  if (MEMORY[0x19A8D7060]() != MEMORY[0x1E69E9E90])
  {
    v29 = 2946;
    goto LABEL_35;
  }

  v11 = xpc_connection_create_from_endpoint(v10);
  xpc_connection_set_event_handler(v11, &__block_literal_global_109);
  xpc_connection_activate(v11);
  v12 = xpc_dictionary_create(0, 0, 0);
  v13 = xpc_connection_send_message_with_reply_sync(v11, v12);
  v14 = vr_handleConnectionEstablishedResponseCommon(v13, &v31);
  if (v14)
  {
LABEL_25:
    v26 = v14;
    goto LABEL_26;
  }

  v30 = a4;
  v15 = a1;
  v16 = a3;
  v17 = *(&v32 + 1);
  v18 = *(&v31 + 1);
  v38 = 0;
  if (*(&v31 + 1))
  {
    v19 = remoteVideoReceiver_createXPCRemoteClientOptions(0, &v38);
    v20 = v38;
    if (v19)
    {
      v26 = v19;
      a3 = v16;
      a1 = v15;
      a4 = v30;
    }

    else
    {
      v21 = dispatch_time(0, 10000000000);
      v48 = 0;
      v49 = &v48;
      v50 = 0x2000000000;
      v51 = 0;
      v44 = 0;
      v45 = &v44;
      v46 = 0x2000000000;
      v47 = 0;
      v40 = 0;
      v41 = &v40;
      v42 = 0x2000000000;
      v43 = 0;
      if (remoteConnectionEstablisher_establishConnectionSync_timeoutMutexCreateOnceToken != -1)
      {
        FigVideoReceiverCreateRemote_cold_1();
      }

      v22 = dispatch_group_create();
      dispatch_retain(v22);
      dispatch_group_enter(v22);
      v39[0] = MEMORY[0x1E69E9820];
      v39[1] = 0x40000000;
      v39[2] = __remoteConnectionEstablisher_establishConnectionSync_block_invoke_2;
      v39[3] = &unk_1E7495628;
      v39[4] = &v48;
      v39[5] = &v40;
      v39[6] = &v44;
      v39[7] = v22;
      remoteConnectionEstablisher_establishConnectionAsync(v18, v17, v20, v39);
      if (dispatch_group_wait(v22, v21))
      {
        FigSimpleMutexLock();
        *(v41 + 24) = 1;
        FigSimpleMutexUnlock();
        FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v4, v30, v31);
        *(v49 + 6) = v23;
      }

      else
      {
        v23 = *(v49 + 6);
      }

      a3 = v16;
      a1 = v15;
      if (v23)
      {
        v24 = 0;
      }

      else
      {
        v24 = v45[3];
        v45[3] = 0;
      }

      a4 = v30;
      if (v22)
      {
        dispatch_release(v22);
      }

      v25 = v45[3];
      if (v25)
      {
        CFRelease(v25);
      }

      v26 = *(v49 + 6);
      _Block_object_dispose(&v40, 8);
      _Block_object_dispose(&v44, 8);
      _Block_object_dispose(&v48, 8);
      if (v26)
      {
        if (v24)
        {
          CFRelease(v24);
        }
      }

      else
      {
        *&v32 = v24;
      }
    }

    if (v20)
    {
      CFRelease(v20);
    }

    if (!v26)
    {
      goto LABEL_24;
    }
  }

  else
  {
    FigVideoReceiverCreateRemote_cold_2(v39);
    v26 = LODWORD(v39[0]);
    a3 = v16;
    a1 = v15;
    a4 = v30;
    if (!LODWORD(v39[0]))
    {
LABEL_24:
      v14 = FigXPCRemoteClientCopyMemoryOrigin();
      goto LABEL_25;
    }
  }

LABEL_26:
  FigXPCRelease();
  FigXPCRelease();
  FigXPCRelease();
  if (v26)
  {
LABEL_29:
    BootstrapConnectionResponseDeinit(&v31);
    return v26;
  }

  v26 = videoReceiverCreateRemoteCommon(a1, a3, &v31, &v37);
  v27 = v37;
  if (!v26)
  {
    *a4 = v37;
    goto LABEL_29;
  }

  BootstrapConnectionResponseDeinit(&v31);
  if (v27)
  {
    CFRelease(v27);
  }

  return v26;
}

uint64_t videoReceiverCreateRemoteCommon(const __CFAllocator *a1, uint64_t a2, uint64_t a3, CFTypeRef *a4)
{
  v26 = *MEMORY[0x1E69E9840];
  v7 = *(a3 + 40);
  if ((v7 & 4) == 0 && (v7 & 2) == 0)
  {
    videoReceiverCreateRemoteCommon_cold_8(v25);
    return v25[0];
  }

  FigVideoReceiverGetClassID(a1);
  v8 = CMDerivedObjectCreate();
  if (v8)
  {
    return v8;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v8 = FigXPCRemoteClientAssociateObject();
  if (v8)
  {
    return v8;
  }

  v10 = *(a3 + 16);
  if (v10)
  {
    v10 = CFRetain(v10);
  }

  *(DerivedStorage + 8) = v10;
  *(DerivedStorage + 16) = *(a3 + 24);
  *DerivedStorage = *(a3 + 32);
  CFStringGetCString(*(a3 + 64), (DerivedStorage + 160), 16, 0x600u);
  v11 = *(a3 + 48);
  if (v11)
  {
    v11 = CFRetain(v11);
  }

  *(DerivedStorage + 96) = v11;
  v12 = *(a3 + 56);
  if (v12)
  {
    v12 = CFRetain(v12);
  }

  *(DerivedStorage + 104) = v12;
  *(DerivedStorage + 26) = *(a3 + 80);
  FigCFDictionaryGetBooleanIfPresent();
  Value = FigCFDictionaryGetValue();
  if (Value)
  {
    Value = CFRetain(Value);
  }

  *(DerivedStorage + 128) = Value;
  v14 = FigSimpleMutexCreate();
  *(DerivedStorage + 136) = v14;
  if (!v14)
  {
    videoReceiverCreateRemoteCommon_cold_7(v25);
    return v25[0];
  }

  v15 = FigSimpleMutexCreate();
  *(DerivedStorage + 112) = v15;
  if (!v15)
  {
    videoReceiverCreateRemoteCommon_cold_6(v25);
    return v25[0];
  }

  v16 = FigSimpleMutexCreate();
  *(DerivedStorage + 32) = v16;
  if (!v16)
  {
    videoReceiverCreateRemoteCommon_cold_5(v25);
    return v25[0];
  }

  Mutable = CFArrayCreateMutable(a1, 0, MEMORY[0x1E695E9C0]);
  *(DerivedStorage + 56) = Mutable;
  if (!Mutable)
  {
    videoReceiverCreateRemoteCommon_cold_4(v25);
    return v25[0];
  }

  v18 = CFArrayCreateMutable(a1, 0, MEMORY[0x1E695E9C0]);
  *(DerivedStorage + 64) = v18;
  if (!v18)
  {
    videoReceiverCreateRemoteCommon_cold_3(v25);
    return v25[0];
  }

  v19 = CFArrayCreateMutable(a1, 0, MEMORY[0x1E695E9C0]);
  *(DerivedStorage + 72) = v19;
  if (!v19)
  {
    videoReceiverCreateRemoteCommon_cold_2(v25);
    return v25[0];
  }

  FigCFDictionaryGetBooleanIfPresent();
  if (*(DerivedStorage + 25) && dword_1ED4CBE90)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  CMNotificationCenterGetDefaultLocalCenter();
  FigNotificationCenterAddWeakListener();
  v21 = *(a3 + 88);
  if (v21)
  {
    v21 = CFRetain(v21);
  }

  *(DerivedStorage + 144) = v21;
  *(DerivedStorage + 176) = -1;
  v22 = CFArrayCreateMutable(a1, 0, MEMORY[0x1E695E9C0]);
  *(DerivedStorage + 184) = v22;
  if (!v22)
  {
    videoReceiverCreateRemoteCommon_cold_1(v25);
    return v25[0];
  }

  v23 = 0;
  *a4 = 0;
  return v23;
}

void BootstrapConnectionResponseDeinit(void *a1)
{
  v2 = a1[1];
  if (v2)
  {
    a1[1] = 0;
    xpc_release(v2);
  }

  v3 = a1[2];
  if (v3)
  {
    CFRelease(v3);
    a1[2] = 0;
  }

  v4 = a1[6];
  if (v4)
  {
    CFRelease(v4);
    a1[6] = 0;
  }

  v5 = a1[7];
  if (v5)
  {
    CFRelease(v5);
    a1[7] = 0;
  }

  v6 = a1[8];
  if (v6)
  {
    CFRelease(v6);
    a1[8] = 0;
  }

  v7 = a1[9];
  if (v7)
  {
    CFRelease(v7);
    a1[9] = 0;
  }

  v8 = a1[11];
  if (v8)
  {
    CFRelease(v8);
    a1[11] = 0;
  }
}

uint64_t FigVideoReceiverCreateRemoteAsync(uint64_t a1, void *a2, const void *a3, uint64_t a4)
{
  fig_note_initialize_category_with_default_work_cf();
  fig_note_initialize_category_with_default_work_cf();
  if (!a4)
  {
    FigVideoReceiverCreateRemoteAsync_cold_4(handler);
    return LODWORD(handler[0]);
  }

  if (!a2)
  {
    FigVideoReceiverCreateRemoteAsync_cold_3(handler);
    return LODWORD(handler[0]);
  }

  value = xpc_dictionary_get_value(a2, kFigVideoReceiverEndpoint);
  if (!value)
  {
    FigVideoReceiverCreateRemoteAsync_cold_2(handler);
    return LODWORD(handler[0]);
  }

  v9 = value;
  if (MEMORY[0x19A8D7060]() != MEMORY[0x1E69E9E90])
  {
    FigVideoReceiverCreateRemoteAsync_cold_1(handler);
    return LODWORD(handler[0]);
  }

  if (a3)
  {
    CFRetain(a3);
  }

  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 0x40000000;
  v13[2] = __FigVideoReceiverCreateRemoteAsync_block_invoke;
  v13[3] = &unk_1E74955C0;
  v13[5] = a1;
  v13[6] = a3;
  v13[4] = a4;
  v10 = xpc_connection_create_from_endpoint(v9);
  xpc_connection_set_event_handler(v10, &__block_literal_global_33_1);
  xpc_connection_activate(v10);
  v11 = xpc_dictionary_create(0, 0, 0);
  handler[0] = MEMORY[0x1E69E9820];
  handler[1] = 0x40000000;
  handler[2] = __vr_establishFigXPCConnectionForBootstrapEndpointAsync_block_invoke_2;
  handler[3] = &unk_1E7495690;
  handler[4] = v13;
  handler[5] = v10;
  xpc_connection_send_message_with_reply(v10, v11, 0, handler);
  FigXPCRelease();
  FigXPCRelease();
  return 0;
}

BOOL videoReceiverRemote_copyImageQueueSlotForImageQueueFromConfigurationsWhileHoldingConfigurationLock(uint64_t a1, uint64_t a2, void *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (FigCFEqual() || (Value = FigCFDictionaryGetValue()) == 0)
  {
    for (i = 0; ; ++i)
    {
      Count = *(DerivedStorage + 64);
      if (Count)
      {
        Count = CFArrayGetCount(Count);
      }

      if (i >= Count)
      {
        break;
      }

      CFArrayGetValueAtIndex(*(DerivedStorage + 64), i);
      if (!FigCFEqual())
      {
        Value = FigCFDictionaryGetValue();
        if (Value)
        {
          goto LABEL_11;
        }
      }
    }

    v8 = 0;
  }

  else
  {
LABEL_11:
    v8 = CFRetain(Value);
  }

  *a3 = v8;
  return v8 != 0;
}

uint64_t remoteVideoReceiver_createXPCRemoteClientOptions(int a1, CFMutableDictionaryRef *a2)
{
  keyExistsAndHasValidFormat = 0;
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 2, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (Mutable)
  {
    v5 = Mutable;
    FigCFDictionarySetInt32();
    CFPreferencesGetAppBooleanValue(@"fvr_enforce_disallow_snyc_messages", @"com.apple.coremedia", &keyExistsAndHasValidFormat);
    if (a1)
    {
      if (keyExistsAndHasValidFormat)
      {
        FigCFDictionarySetBoolean();
      }
    }

    result = 0;
    *a2 = v5;
  }

  else
  {
    remoteVideoReceiver_createXPCRemoteClientOptions_cold_1(&v8);
    return v8;
  }

  return result;
}

uint64_t __remoteConnectionEstablisher_establishConnectionSync_block_invoke(uint64_t a1)
{
  result = FigSimpleMutexCreate();
  remoteConnectionEstablisher_establishConnectionSync_sTimeoutMutex = result;
  return result;
}

void remoteConnectionEstablisher_establishConnectionAsync(uint64_t a1, void *a2, uint64_t a3, void (**a4)(void, void, void))
{
  if (_MergedGlobals_126 != -1)
  {
    remoteConnectionEstablisher_establishConnectionAsync_cold_1();
    if (a1)
    {
      goto LABEL_3;
    }

LABEL_17:
    remoteConnectionEstablisher_establishConnectionAsync_cold_3(&v11);
    goto LABEL_19;
  }

  if (!a1)
  {
    goto LABEL_17;
  }

LABEL_3:
  if (qword_1ED4CB9F8)
  {
    FigSimpleMutexLock();
    if (CFDictionaryContainsKey(*(qword_1ED4CB9F8 + 8), a2))
    {
      Value = CFDictionaryGetValue(*(qword_1ED4CB9F8 + 8), a2);
      if (Value)
      {
        v8 = CFRetain(Value);
        v9 = 0;
        goto LABEL_11;
      }
    }

    else
    {
      v10 = CFDictionaryContainsKey(*(qword_1ED4CB9F8 + 16), a2);
      remoteConnectionEstablisher_addPendingClientHanlderForServerPID(qword_1ED4CB9F8, a4, a2);
      if (!v10)
      {
        v9 = FigXPCRemoteClientCreateWithXPCEndpointAsync();
        goto LABEL_10;
      }
    }

    v9 = 0;
LABEL_10:
    v8 = 0;
LABEL_11:
    FigSimpleMutexUnlock();
    if (!v9)
    {
      goto LABEL_12;
    }

    goto LABEL_13;
  }

  remoteConnectionEstablisher_establishConnectionAsync_cold_2(&v11);
LABEL_19:
  v8 = 0;
  v9 = v11;
  if (!v11)
  {
LABEL_12:
    if (!v8)
    {
      return;
    }
  }

LABEL_13:
  (a4)[2](a4, v9, v8);
  if (v8)
  {
    CFRelease(v8);
  }
}

void __remoteConnectionEstablisher_establishConnectionSync_block_invoke_2(uint64_t a1, int a2, const void *a3)
{
  *(*(*(a1 + 32) + 8) + 24) = a2;
  FigSimpleMutexLock();
  if (!*(*(*(a1 + 40) + 8) + 24))
  {
    if (a3)
    {
      v5 = CFRetain(a3);
    }

    else
    {
      v5 = 0;
    }

    *(*(*(a1 + 48) + 8) + 24) = v5;
  }

  FigSimpleMutexUnlock();
  dispatch_group_leave(*(a1 + 56));
  v6 = *(a1 + 56);

  dispatch_release(v6);
}

void remoteConnectionEstablisherCreateOnce(uint64_t **a1)
{
  v22 = *MEMORY[0x1E69E9840];
  v2 = malloc_type_calloc(1uLL, 0x18uLL, 0x20040960023A9uLL);
  if (v2)
  {
    v10 = v2;
    v11 = FigSimpleMutexCreate();
    *v10 = v11;
    if (v11 && (v12 = *MEMORY[0x1E695E480], Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, 0, MEMORY[0x1E695E9E8]), (v10[1] = Mutable) != 0) && (v14 = CFDictionaryCreateMutable(v12, 0, 0, MEMORY[0x1E695E9E8]), (v10[2] = v14) != 0))
    {
      *a1 = v10;
    }

    else
    {
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v19, v20, v21);
      if (v15)
      {
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
        if (*v10)
        {
          FigSimpleMutexDestroy();
          *v10 = 0;
        }

        v17 = v10[2];
        if (v17)
        {
          CFRelease(v17);
          v10[2] = 0;
        }

        v18 = v10[1];
        if (v18)
        {
          CFRelease(v18);
        }

        free(v10);
      }
    }
  }

  else
  {
    remoteConnectionEstablisherCreateOnce_cold_1(0, v3, v4, v5, v6, v7, v8, v9, v19, v20, SHIDWORD(v20), v21);
  }
}

void remoteConnectionEstablisher_addPendingClientHanlderForServerPID(uint64_t a1, const void *a2, void *key)
{
  Value = CFDictionaryGetValue(*(a1 + 16), key);
  if (!Value)
  {
    Value = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
    CFDictionarySetValue(*(a1 + 16), key, Value);
    CFRelease(Value);
  }

  v7 = _Block_copy(a2);
  CFArrayAppendValue(Value, v7);

  _Block_release(v7);
}

void __remoteConnectionEstablisher_establishConnectionAsync_block_invoke(uint64_t a1, uint64_t a2, const void *a3)
{
  v12 = *MEMORY[0x1E69E9840];
  v5 = qword_1ED4CB9F8;
  v6 = *(a1 + 32);
  FigSimpleMutexLock();
  Value = CFDictionaryGetValue(*(v5 + 16), v6);
  if (Value)
  {
    v8 = CFRetain(Value);
  }

  else
  {
    v8 = 0;
  }

  CFDictionaryRemoveValue(*(v5 + 16), v6);
  if (!a2)
  {
    if (dword_1ED4CBE90)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    CFDictionarySetValue(*(v5 + 8), v6, a3);
  }

  FigSimpleMutexUnlock();
  if (v8)
  {
    if (CFArrayGetCount(v8) >= 1)
    {
      v10 = 0;
      do
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v8, v10);
        ValueAtIndex[2](ValueAtIndex, a2, a3);
        ++v10;
      }

      while (v10 < CFArrayGetCount(v8));
    }

    CFRelease(v8);
  }
}

uint64_t remoteVideoReceiver_DeadConnectionCallback(const void *a1)
{
  v2 = CFGetTypeID(a1);
  if (v2 == FigVideoReceiverGetTypeID(v2))
  {
    result = CMBaseObjectGetDerivedStorage();
    *(result + 24) = 1;
  }

  else
  {
    v4 = CFGetTypeID(a1);
    result = FigDataChannelResourceGetTypeID();
    if (v4 == result)
    {

      return FigDataChannelResourceRemoteHandleDeadConnection(a1);
    }
  }

  return result;
}

uint64_t remoteVideoReceiver_NotificationFilter(const void *a1, const void *a2, uint64_t a3, uint64_t a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (CFEqual(a2, @"DataChannelConfigurationBecameActive"))
  {
    if (!FigCFDictionaryGetInt32IfPresent())
    {
      return 0;
    }

    v7 = CMBaseObjectGetDerivedStorage();
    idx = -1;
    FigSimpleMutexLock();
    videoReceiverRemote_findIndexOfPendingConfigurationWithActivationID(a1, 0, &idx);
    v8 = idx;
    if (idx != -1)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(*(v7 + 56), idx);
      v10 = CFArrayGetValueAtIndex(*(v7 + 64), v8);
      v11 = CFArrayGetValueAtIndex(*(v7 + 72), v8);
      CMTimeMakeFromDictionary(&v43, v11);
      v12 = *(v7 + 40);
      if (ValueAtIndex)
      {
        v13 = CFRetain(ValueAtIndex);
      }

      else
      {
        v13 = 0;
      }

      v16 = *(v7 + 48);
      *(v7 + 40) = v13;
      *(v7 + 48) = v10;
      if (v10)
      {
        CFRetain(v10);
      }

      if (v16)
      {
        CFRelease(v16);
      }

      if (v12)
      {
        videoReceiverRemote_removeWeakListenersFromConfigurationImageQueuesUnlessRequiredByAnotherConfiguration(a1, v12);
      }

      if (v10 && (v17 = CFGetTypeID(v10), v17 == CFDictionaryGetTypeID()) && CFDictionaryGetCount(v10) >= 1 && *(v7 + 176) >= 1)
      {
        SInt32 = FigCFNumberCreateSInt32();
        if (SInt32)
        {
          CFDictionaryApplyFunction(v10, videoReceiverRemote_setImageQueueResponsibleProcessID, SInt32);
        }

        else
        {
          remoteVideoReceiver_NotificationFilter_cold_1();
        }
      }

      else
      {
        SInt32 = 0;
      }

      FigSimpleMutexUnlock();
      if (v12)
      {
        CFRelease(v12);
      }

      if (SInt32)
      {
        CFRelease(SInt32);
      }

      return 0;
    }

LABEL_35:
    FigSimpleMutexUnlock();
    return 0;
  }

  if (CFEqual(a2, @"DataChannelConfigurationWasRemoved"))
  {
    LODWORD(idx) = 0;
    if (!FigCFDictionaryGetInt32IfPresent())
    {
      return 0;
    }

    CMBaseObjectGetDerivedStorage();
    v43.value = -1;
    FigSimpleMutexLock();
    videoReceiverRemote_findIndexOfPendingConfigurationWithActivationID(a1, idx, &v43.value);
    if (v43.value == -1)
    {
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v41, v42, -1);
    }

    else
    {
      videoReceiverRemote_removePendingConfigurationAtIndex(a1, v43.value);
    }

    goto LABEL_35;
  }

  if (CFEqual(a2, @"RefreshRateChanged"))
  {
    Value = FigCFDictionaryGetValue();
    FigSimpleMutexLock();
    v15 = *(DerivedStorage + 80);
    *(DerivedStorage + 80) = Value;
    if (!Value)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  if (CFEqual(a2, @"DesiredPixelCountChanged"))
  {
    Value = FigCFDictionaryGetValue();
    FigSimpleMutexLock();
    v15 = *(DerivedStorage + 88);
    *(DerivedStorage + 88) = Value;
    if (!Value)
    {
LABEL_13:
      if (v15)
      {
        CFRelease(v15);
      }

      goto LABEL_35;
    }

LABEL_12:
    CFRetain(Value);
    goto LABEL_13;
  }

  if (CFEqual(a2, @"PreferredDataChannelGroupsChanged"))
  {
    v43.value = 0;
    v20 = FigCFDictionaryGetValue();
    if (v20)
    {
      v28 = v20;
      v29 = CFGetAllocator(a1);
      if (!FigDataChannelGroupsArrayCreateFromDictionary(v29, v28, &v43))
      {
        remoteVideoReceiver_NotificationFilter_cold_3(DerivedStorage, &v43);
      }
    }

    else
    {
      remoteVideoReceiver_NotificationFilter_cold_2(0, v21, v22, v23, v24, v25, v26, v27, v41, v42, SHIDWORD(v42), v43.value);
    }
  }

  else
  {
    if (!CFEqual(a2, @"DataChannelSettingsChanged"))
    {
      if (CFEqual(a2, @"PlaybackStartupPreventionAssertionAcquired"))
      {
        v38 = FigCFDictionaryGetValue();
        FigSimpleMutexLock();
        *(DerivedStorage + 120) = 1;
        v39 = *(DerivedStorage + 128);
        *(DerivedStorage + 128) = v38;
        if (v38)
        {
          CFRetain(v38);
        }

        if (v39)
        {
          CFRelease(v39);
        }
      }

      else
      {
        if (!CFEqual(a2, @"PlaybackStartupPreventionAssertionReleased"))
        {
          return 0;
        }

        FigSimpleMutexLock();
        *(DerivedStorage + 120) = 0;
        v40 = *(DerivedStorage + 128);
        if (v40)
        {
          CFRelease(v40);
          *(DerivedStorage + 128) = 0;
        }
      }

      goto LABEL_35;
    }

    v43.value = 0;
    v30 = FigCFDictionaryGetValue();
    if (v30)
    {
      if (!FigVideoReceiverDataChannelSettingsCopyDeserialized(v30, &v43))
      {
        remoteVideoReceiver_NotificationFilter_cold_5(DerivedStorage, &v43);
      }
    }

    else
    {
      remoteVideoReceiver_NotificationFilter_cold_4(0, v31, v32, v33, v34, v35, v36, v37, v41, v42, SHIDWORD(v42), v43.value);
    }
  }

  return 0;
}

CFIndex videoReceiverRemote_findIndexOfPendingConfigurationWithActivationID(uint64_t a1, int a2, CFIndex *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  result = CFArrayGetCount(*(DerivedStorage + 56));
  if (result < 1)
  {
LABEL_5:
    v7 = -1;
  }

  else
  {
    v7 = 0;
    while (1)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(*(DerivedStorage + 56), v7);
      result = FigDataChannelConfigurationGetActivationID(ValueAtIndex);
      if (result == a2)
      {
        break;
      }

      ++v7;
      result = CFArrayGetCount(*(DerivedStorage + 56));
      if (v7 >= result)
      {
        goto LABEL_5;
      }
    }
  }

  *a3 = v7;
  return result;
}

void videoReceiverRemote_removeWeakListenersFromConfigurationImageQueuesUnlessRequiredByAnotherConfiguration(const void *a1, uint64_t a2)
{
  CMBaseObjectGetDerivedStorage();
  theArray = 0;
  cf = 0;
  if (!FigVideoReceiverCommonCopyImageQueuesFromConfiguration(a2, &theArray))
  {
    if (!theArray)
    {
      return;
    }

    if (CFArrayGetCount(theArray) >= 1)
    {
      v4 = videoReceiverRemote_copyAllActiveAndPendingConfigurationImageQueues(a1, &cf);
      v5 = cf;
      if (!v4)
      {
        for (i = 0; ; ++i)
        {
          Count = theArray;
          if (theArray)
          {
            Count = CFArrayGetCount(theArray);
          }

          if (i >= Count)
          {
            break;
          }

          CFArrayGetValueAtIndex(theArray, i);
          if (!FigCFArrayContainsValue())
          {
            CMNotificationCenterGetDefaultLocalCenter();
            FigNotificationCenterRemoveWeakListeners();
          }
        }
      }

      if (v5)
      {
        CFRelease(v5);
      }
    }
  }

  if (theArray)
  {
    CFRelease(theArray);
  }
}

uint64_t videoReceiverRemote_setImageQueueResponsibleProcessID(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (result)
  {
    if (a3)
    {
      FigImageQueueGetFigBaseObject();
      v5 = v4;
      VTable = CMBaseObjectGetVTable();
      v7 = *(VTable + 8);
      result = VTable + 8;
      v8 = *(v7 + 56);
      if (v8)
      {

        return v8(v5, @"ResponsibleProcessID", a3);
      }
    }
  }

  return result;
}

uint64_t videoReceiverRemote_copyAllActiveAndPendingConfigurationImageQueues(const void *a1, CFMutableArrayRef *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v5 = CFGetAllocator(a1);
  Mutable = CFArrayCreateMutable(v5, 0, MEMORY[0x1E695E9C0]);
  if (Mutable)
  {
    v7 = Mutable;
    v8 = *(DerivedStorage + 40);
    if (v8)
    {
      cf = 0;
      FigVideoReceiverCommonCopyImageQueuesFromConfiguration(v8, &cf);
      FigCFArrayAppendArray();
      if (cf)
      {
        CFRelease(cf);
      }
    }

    for (i = 0; ; ++i)
    {
      Count = *(DerivedStorage + 56);
      if (Count)
      {
        Count = CFArrayGetCount(Count);
      }

      if (i >= Count)
      {
        break;
      }

      ValueAtIndex = CFArrayGetValueAtIndex(*(DerivedStorage + 56), i);
      cf = 0;
      FigVideoReceiverCommonCopyImageQueuesFromConfiguration(ValueAtIndex, &cf);
      FigCFArrayAppendArray();
      if (cf)
      {
        CFRelease(cf);
      }
    }

    result = 0;
    *a2 = v7;
  }

  else
  {
    videoReceiverRemote_copyAllActiveAndPendingConfigurationImageQueues_cold_1(&cf);
    return cf;
  }

  return result;
}

void videoReceiverRemote_informServerAboutImageQueueSlotEventForImageQueue(uint64_t a1, uint64_t a2, uint64_t a3)
{
  cf = 0;
  v4 = videoReceiverRemote_copyImageQueueSlotForImageQueueFromConfigurations(a1, a2, &cf);
  v6 = cf;
  if (v4)
  {
    SlotID = FigImageQueueSlotGetSlotID(cf, v5);
    videoReceiverRemote_handleImageQueueSlotEvent(a1, SlotID);
    if (!v6)
    {
      return;
    }
  }

  else if (!cf)
  {
    return;
  }

  CFRelease(v6);
}

uint64_t videoReceiverRemote_GetClientAndObjectID(uint64_t a1, void *a2, void *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a2)
  {
    if (a3)
    {
      v6 = DerivedStorage;
      if (*(DerivedStorage + 24))
      {
        videoReceiverRemote_GetClientAndObjectID_cold_1(&v10);
        return v10;
      }

      else
      {
        result = 0;
        v9 = v6;
        v8 = *v6;
        *a2 = v9[1];
        *a3 = v8;
      }
    }

    else
    {
      videoReceiverRemote_GetClientAndObjectID_cold_2(&v11);
      return v11;
    }
  }

  else
  {
    videoReceiverRemote_GetClientAndObjectID_cold_3(&v12);
    return v12;
  }

  return result;
}

void videoReceiverRemote_removePendingConfigurationAtIndex(const void *a1, CFIndex a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a2 < 0 || (v12 = DerivedStorage, DerivedStorage = CFArrayGetCount(*(DerivedStorage + 56)), DerivedStorage <= a2))
  {
    videoReceiverRemote_removePendingConfigurationAtIndex_cold_1(DerivedStorage, v5, v6, v7, v8, v9, v10, v11, v15, v16, SHIDWORD(v16), v17);
  }

  else
  {
    ValueAtIndex = CFArrayGetValueAtIndex(v12[7], a2);
    v14 = CFRetain(ValueAtIndex);
    CFArrayRemoveValueAtIndex(v12[7], a2);
    CFArrayRemoveValueAtIndex(v12[9], a2);
    CFArrayRemoveValueAtIndex(v12[8], a2);
    CMBaseObjectGetDerivedStorage();
    videoReceiverRemote_removeWeakListenersFromConfigurationImageQueuesUnlessRequiredByAnotherConfiguration(a1, v14);
    if (v14)
    {

      CFRelease(v14);
    }
  }
}

uint64_t remoteVideoReceiver_HandleDeadServerConnection(uint64_t a1, uint64_t a2)
{
  result = CMBaseObjectGetDerivedStorage();
  *(result + 24) = 1;
  v3 = *(result + 16);
  if (v3)
  {
    v4 = result;
    v5 = qword_1ED4CB9F8;
    if (qword_1ED4CB9F8)
    {
      FigSimpleMutexLock();
      CFDictionaryRemoveValue(*(v5 + 8), v3);
      result = FigSimpleMutexUnlock();
    }

    *(v4 + 16) = 0;
  }

  return result;
}

void videoReceiverRemote_Finalize(const void *a1)
{
  theArray[16] = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  theArray[0] = 0;
  videoReceiverRemote_copyAllActiveAndPendingConfigurationImageQueues(a1, theArray);
  v3 = theArray[0];
  if (theArray[0])
  {
    Count = CFArrayGetCount(theArray[0]);
    if (Count >= 1)
    {
      v5 = Count;
      for (i = 0; i != v5; ++i)
      {
        CFArrayGetValueAtIndex(v3, i);
        CMNotificationCenterGetDefaultLocalCenter();
        FigNotificationCenterRemoveWeakListeners();
      }
    }

    CFRelease(v3);
  }

  if (DerivedStorage[4])
  {
    FigSimpleMutexDestroy();
    DerivedStorage[4] = 0;
  }

  v7 = DerivedStorage[9];
  if (v7)
  {
    CFRelease(v7);
    DerivedStorage[9] = 0;
  }

  v8 = DerivedStorage[7];
  if (v8)
  {
    CFRelease(v8);
    DerivedStorage[7] = 0;
  }

  v9 = DerivedStorage[8];
  if (v9)
  {
    CFRelease(v9);
    DerivedStorage[8] = 0;
  }

  v10 = DerivedStorage[5];
  if (v10)
  {
    CFRelease(v10);
    DerivedStorage[5] = 0;
  }

  v11 = DerivedStorage[6];
  if (v11)
  {
    CFRelease(v11);
    DerivedStorage[6] = 0;
  }

  v12 = DerivedStorage[18];
  if (v12)
  {
    CFRelease(v12);
    DerivedStorage[18] = 0;
  }

  v13 = DerivedStorage[19];
  if (v13)
  {
    CFRelease(v13);
    DerivedStorage[19] = 0;
  }

  v14 = DerivedStorage[11];
  if (v14)
  {
    CFRelease(v14);
    DerivedStorage[11] = 0;
  }

  v15 = DerivedStorage[10];
  if (v15)
  {
    CFRelease(v15);
    DerivedStorage[10] = 0;
  }

  v16 = DerivedStorage[12];
  if (v16)
  {
    CFRelease(v16);
    DerivedStorage[12] = 0;
  }

  v17 = DerivedStorage[13];
  if (v17)
  {
    CFRelease(v17);
    DerivedStorage[13] = 0;
  }

  if (DerivedStorage[14])
  {
    FigSimpleMutexDestroy();
    DerivedStorage[14] = 0;
  }

  v18 = DerivedStorage[16];
  if (v18)
  {
    CFRelease(v18);
    DerivedStorage[16] = 0;
  }

  if (DerivedStorage[17])
  {
    FigSimpleMutexDestroy();
    DerivedStorage[17] = 0;
  }

  if (DerivedStorage[1])
  {
    for (j = 0; ; ++j)
    {
      v21 = DerivedStorage[23];
      if (v21)
      {
        v21 = CFArrayGetCount(v21);
      }

      if (j >= v21)
      {
        break;
      }

      FigCFArrayGetInt64AtIndex();
    }

    FigVideoReceiverRemoteDisassociateAndDisposeObjectID(a1, *DerivedStorage);
    CMNotificationCenterGetDefaultLocalCenter();
    FigNotificationCenterRemoveWeakListener();
    v22 = DerivedStorage[1];
    if (v22)
    {
      CFRelease(v22);
      DerivedStorage[1] = 0;
    }
  }

  v19 = DerivedStorage[23];
  if (v19)
  {
    CFRelease(v19);
    DerivedStorage[23] = 0;
  }
}

__CFString *videoReceiverRemote_CopyDebugDesc(const void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v3 = CFGetAllocator(a1);
  Mutable = CFStringCreateMutable(v3, 0);
  v11 = 0;
  v5 = *(*(CMBaseObjectGetVTable() + 24) + 136);
  if (v5)
  {
    v5(a1, &v11);
    LOBYTE(v5) = v11;
  }

  v6 = "CALayer";
  if ((v5 & 4) == 0)
  {
    v6 = "Unknown";
  }

  if ((v5 & 2) != 0)
  {
    v7 = "BufferDelivery";
  }

  else
  {
    v7 = v6;
  }

  v8 = CFGetRetainCount(a1);
  if (*(DerivedStorage + 24))
  {
    v9 = " SERVER DIED";
  }

  else
  {
    v9 = "";
  }

  CFStringAppendFormat(Mutable, 0, @"<FigVideoReceiverRemoteFor%s(XPC) %p retainCount: %ld objectID: %016llx%s>", v7, a1, v8, *DerivedStorage, v9);
  return Mutable;
}

void videoReceiverRemote_SetProperty(uint64_t a1, const void *a2, const void *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v28 = 0;
  v29 = 0;
  if (a2)
  {
    if (a3)
    {
      v8 = DerivedStorage;
      if (CFEqual(a2, @"ResponsibleProcessID"))
      {
        v9 = CFGetTypeID(a3);
        if (v9 == CFNumberGetTypeID())
        {
          SInt32 = FigCFNumberGetSInt32();
          if (SInt32 <= 0)
          {
            videoReceiverRemote_SetProperty_cold_3(&v30);
          }

          else
          {
            v11 = *(v8 + 176);
            *(v8 + 176) = SInt32;
            if (v11 == SInt32)
            {
              return;
            }

            v12 = CMBaseObjectGetDerivedStorage();
            FigSimpleMutexLock();
            v13 = *(v12 + 48);
            if (v13)
            {
              v14 = CFGetTypeID(v13);
              if (v14 == CFDictionaryGetTypeID() && CFDictionaryGetCount(*(v12 + 48)) >= 1 && *(v12 + 176) >= 1)
              {
                v15 = FigCFNumberCreateSInt32();
                if (v15)
                {
                  v23 = v15;
                  CFDictionaryApplyFunction(*(v12 + 48), videoReceiverRemote_setImageQueueResponsibleProcessID, v15);
                  FigSimpleMutexUnlock();
                  CFRelease(v23);
                  return;
                }

                videoReceiverRemote_SetProperty_cold_2(0, v16, v17, v18, v19, v20, v21, v22, v27, v28, SHIDWORD(v28), v29);
              }
            }

            FigSimpleMutexUnlock();
          }
        }

        else
        {
          videoReceiverRemote_SetProperty_cold_1(&v30);
        }
      }

      else if (*(v8 + 25))
      {
        v24 = qword_1ED4CBE88;

        FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v24, 4294954514, "<< FigVideoReceiverRemoteXPC >>", 794, v3);
      }

      else
      {
        ClientAndObjectID = videoReceiverRemote_GetClientAndObjectID(a1, &v28, &v29);
        v26 = v28;
        if (!ClientAndObjectID)
        {
          FigXPCSendStdSetPropertyMessage();
          v26 = v28;
        }

        if (v26)
        {
          FigXPCRemoteClientKillServerOnTimeout();
        }
      }
    }

    else
    {
      videoReceiverRemote_SetProperty_cold_4(&v30);
    }
  }

  else
  {
    videoReceiverRemote_SetProperty_cold_5(&v30);
  }
}

uint64_t videoReceiverRemote_AddDataChannelConfiguration(const void *a1, uint64_t a2, int a3, CMTime *a4)
{
  CMBaseObjectGetDerivedStorage();
  v65 = 0;
  xdict = 0;
  v64 = 0;
  if (!a2)
  {
    videoReceiverRemote_AddDataChannelConfiguration_cold_7(&cf);
    value_low = LODWORD(cf.value);
    goto LABEL_99;
  }

  v62 = a3;
  FigSimpleMutexLock();
  CMBaseObjectGetDerivedStorage();
  cf.value = 0;
  theArray.value = 0;
  v8 = FigVideoReceiverCommonCopyImageQueuesFromConfiguration(a2, &theArray);
  if (v8)
  {
    value_low = v8;
  }

  else
  {
    if (!theArray.value)
    {
      goto LABEL_16;
    }

    if (CFArrayGetCount(theArray.value) < 1)
    {
      value_low = 0;
    }

    else
    {
      v9 = videoReceiverRemote_copyAllActiveAndPendingConfigurationImageQueues(a1, &cf);
      if (v9)
      {
        value_low = v9;
        v11 = cf.value;
        if (cf.value)
        {
LABEL_12:
          CFRelease(v11);
        }
      }

      else
      {
        Count = CFArrayGetCount(theArray.value);
        v11 = cf.value;
        if (Count >= 1)
        {
          v12 = 0;
          do
          {
            CFArrayGetValueAtIndex(theArray.value, v12);
            if (!FigCFArrayContainsValue())
            {
              CMNotificationCenterGetDefaultLocalCenter();
              FigNotificationCenterAddWeakListeners();
            }

            ++v12;
          }

          while (v12 < CFArrayGetCount(theArray.value));
        }

        value_low = 0;
        if (v11)
        {
          goto LABEL_12;
        }
      }
    }
  }

  if (theArray.value)
  {
    CFRelease(theArray.value);
  }

  if (!value_low)
  {
LABEL_16:
    value = 0;
    v68 = 0;
    v14 = CFGetAllocator(a1);
    Copy = FigDataChannelConfigurationCreateCopy(v14, a2, &v68);
    if (Copy)
    {
      value_low = Copy;
      v50 = 0;
      Mutable = 0;
    }

    else
    {
      ChannelCount = FigDataChannelConfigurationGetChannelCount(v68);
      if (ChannelCount >= 1)
      {
        v17 = ChannelCount;
        Mutable = 0;
        v19 = 0;
        allocator = *MEMORY[0x1E695E480];
        while (1)
        {
          OutputQueueTypeAtIndex = FigDataChannelConfigurationGetOutputQueueTypeAtIndex(v68, v19);
          if (OutputQueueTypeAtIndex == 1)
          {
            break;
          }

          if (OutputQueueTypeAtIndex == 2)
          {
            cf.value = 0;
            FigDataQueueAtIndex = FigDataChannelConfigurationGetFigDataQueueAtIndex(v68, v19);
            if (!FigDataQueueAtIndex)
            {
              videoReceiverRemote_AddDataChannelConfiguration_cold_5(&theArray);
              goto LABEL_109;
            }

            ObjectID = FigDataQueueRemoteGetObjectID(FigDataQueueAtIndex, &cf);
            if (ObjectID || (FigDataChannelConfigurationSetFigDataQueueObjectIDAtIndex(v68, v19), ObjectID))
            {
LABEL_102:
              value_low = ObjectID;
              goto LABEL_103;
            }
          }

LABEL_56:
          if (v17 == ++v19)
          {
            goto LABEL_63;
          }
        }

        FigImageQueueAtIndex = FigDataChannelConfigurationGetFigImageQueueAtIndex(v68, v19);
        if (!FigImageQueueAtIndex)
        {
          videoReceiverRemote_AddDataChannelConfiguration_cold_4(&cf);
          value_low = LODWORD(cf.value);
          goto LABEL_103;
        }

        v24 = FigImageQueueAtIndex;
        LODWORD(cf.value) = 0;
        v25 = *(*(CMBaseObjectGetVTable() + 24) + 136);
        if (!v25 || (v25(a1, &cf), (cf.value & 4) == 0))
        {
LABEL_52:
          cf.value = 0;
          v40 = CFGetAllocator(a1);
          FigImageQueueGetFigBaseObject();
          v42 = v41;
          v43 = *(*(CMBaseObjectGetVTable() + 8) + 48);
          if (v43)
          {
            v43(v42, @"FigImageQueueProperty_FirstImageEnqueued", v40, &cf);
          }

          if (cf.value)
          {
            v44 = v68;
            v45 = CFBooleanGetValue(cf.value);
            FigDataChannelConfigurationSetFirstFrameWasEnqueuedAtIndex(v44, v19, v45);
            CFRelease(cf.value);
          }

          goto LABEL_56;
        }

        if (videoReceiverRemote_copyImageQueueSlotForImageQueueFromConfigurationsWhileHoldingConfigurationLock(a1, v24, &value))
        {
LABEL_47:
          if (!Mutable)
          {
            Mutable = CFDictionaryCreateMutable(allocator, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
            if (!Mutable)
            {
              videoReceiverRemote_AddDataChannelConfiguration_cold_3(&cf);
              v50 = 0;
              value_low = LODWORD(cf.value);
              goto LABEL_70;
            }
          }

          CFDictionarySetValue(Mutable, v24, value);
          v35 = value;
          v36 = v68;
          SlotID = FigImageQueueSlotGetSlotID(value, v37);
          v39 = FigDataChannelConfigurationSetCAImageQueueSlotIDAtIndex(v36, v19, SlotID);
          if (v39)
          {
            value_low = v39;
            goto LABEL_104;
          }

          if (v35)
          {
            CFRelease(v35);
            value = 0;
          }

          goto LABEL_52;
        }

        cf.value = 0;
        theArray.value = 0;
        v26 = FigCFWeakReferenceHolderCreateWithReferencedObject();
        if (v26)
        {
          v27 = *(*(CMBaseObjectGetVTable() + 16) + 120);
          if (!v27)
          {
            value_low = 4294954514;
            goto LABEL_40;
          }

          v28 = v27(v24, videoReceiverRemote_slotWasDestroyedCallback, v26, &cf);
          if (v28)
          {
            value_low = v28;
            goto LABEL_40;
          }

          v29 = CFGetAllocator(a1);
          v26 = CFDictionaryCreateMutable(v29, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
          if (v26)
          {
            v60 = CFGetAllocator(a1);
            FigImageQueueGetFigBaseObject();
            v31 = v30;
            v32 = *(*(CMBaseObjectGetVTable() + 8) + 48);
            if (v32)
            {
              v32(v31, @"FigImageQueueProperty_FirstImageEnqueued", v60, &theArray);
            }

            FigCFDictionarySetValue();
            v34 = FigImageQueueSlotGetSlotID(cf.value, v33);
            value_low = videoReceiverRemote_handleImageQueueSlotEvent(a1, v34);
            if (!value_low)
            {
              value = cf.value;
              cf.value = 0;
            }

            CFRelease(v26);
            v26 = 0;
LABEL_40:
            if (cf.value)
            {
              CFRelease(cf.value);
            }

            if (theArray.value)
            {
              CFRelease(theArray.value);
            }

            if (v26)
            {
              CFRelease(v26);
            }

            if (value_low)
            {
              goto LABEL_103;
            }

            goto LABEL_47;
          }

          videoReceiverRemote_AddDataChannelConfiguration_cold_1(&v70);
        }

        else
        {
          videoReceiverRemote_AddDataChannelConfiguration_cold_2(&v70);
        }

        value_low = v70;
        goto LABEL_40;
      }

      Mutable = 0;
LABEL_63:
      ResourceCount = FigDataChannelConfigurationGetResourceCount(v68);
      if (ResourceCount < 1)
      {
LABEL_69:
        value_low = 0;
        v50 = v68;
        v68 = 0;
      }

      else
      {
        v47 = ResourceCount;
        v48 = 0;
        while (1)
        {
          cf.value = 0;
          FigDataChannelResourceAtIndex = FigDataChannelConfigurationGetFigDataChannelResourceAtIndex(v68, v48);
          if (!FigDataChannelResourceAtIndex)
          {
            break;
          }

          ObjectID = FigDataChannelResourceRemoteGetObjectID(FigDataChannelResourceAtIndex, &cf);
          if (ObjectID)
          {
            goto LABEL_102;
          }

          FigDataChannelConfigurationSetFigDataChannelResourceObjectIDAtIndex(v68, v48, cf.value);
          if (ObjectID)
          {
            goto LABEL_102;
          }

          if (v47 == ++v48)
          {
            goto LABEL_69;
          }
        }

        videoReceiverRemote_AddDataChannelConfiguration_cold_6(&theArray);
LABEL_109:
        value_low = LODWORD(theArray.value);
LABEL_103:
        if (Mutable)
        {
LABEL_104:
          CFRelease(Mutable);
          v50 = 0;
          Mutable = 0;
        }

        else
        {
          v50 = 0;
        }
      }

LABEL_70:
      if (value)
      {
        CFRelease(value);
      }
    }

    if (v68)
    {
      CFRelease(v68);
    }

    if (value_low)
    {
      goto LABEL_94;
    }

    theArray = *a4;
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    v52 = CFGetAllocator(a1);
    cf = theArray;
    v53 = CMTimeCopyAsDictionary(&cf, v52);
    CFArrayAppendValue(DerivedStorage[7], v50);
    CFArrayAppendValue(DerivedStorage[9], v53);
    if (Mutable)
    {
      v54 = Mutable;
    }

    else
    {
      v54 = *MEMORY[0x1E695E738];
    }

    CFArrayAppendValue(DerivedStorage[8], v54);
    CMBaseObjectGetDerivedStorage();
    if (v53)
    {
      CFRelease(v53);
    }

    FigSimpleMutexUnlock();
    ClientAndObjectID = videoReceiverRemote_GetClientAndObjectID(a1, &v64, &v65);
    if (!ClientAndObjectID)
    {
      ClientAndObjectID = FigXPCCreateBasicMessage();
      if (!ClientAndObjectID)
      {
        cf.value = 0;
        FigDataChannelConfigurationCopyAsDictionaryWithoutOutputQueues(v50, *MEMORY[0x1E695E480], &cf);
        value_low = v56;
        if (!v56)
        {
          FigXPCMessageSetCFDictionary();
        }

        if (cf.value)
        {
          CFRelease(cf.value);
        }

        if (value_low)
        {
          goto LABEL_92;
        }

        xpc_dictionary_set_BOOL(xdict, "Immediate", v62 != 0);
        cf = *a4;
        ClientAndObjectID = FigXPCMessageSetCMTime();
        if (!ClientAndObjectID)
        {
          if (*(CMBaseObjectGetDerivedStorage() + 25))
          {
            v57 = FigXPCRemoteClientSendAsyncMessage();
          }

          else
          {
            v57 = FigXPCRemoteClientSendSyncMessage();
          }

          value_low = v57;
          if (!v57)
          {
            goto LABEL_95;
          }

          goto LABEL_92;
        }
      }
    }

    value_low = ClientAndObjectID;
LABEL_92:
    FigSimpleMutexLock();
    LastIndexOfValue = FigCFArrayGetLastIndexOfValue();
    if (LastIndexOfValue != -1)
    {
      videoReceiverRemote_removePendingConfigurationAtIndex(a1, LastIndexOfValue);
    }

    goto LABEL_94;
  }

  v50 = 0;
  Mutable = 0;
LABEL_94:
  FigSimpleMutexUnlock();
LABEL_95:
  if (v50)
  {
    CFRelease(v50);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

LABEL_99:
  FigXPCRelease();
  if (v64)
  {
    FigXPCRemoteClientKillServerOnTimeout();
  }

  return value_low;
}

uint64_t videoReceiverForCALayerRemote_GetInstanceType(uint64_t a1, _DWORD *a2)
{
  if (a1)
  {
    if (a2)
    {
      result = 0;
      *a2 = 5;
    }

    else
    {
      videoReceiverForCALayerRemote_GetInstanceType_cold_1(&v3);
      return v3;
    }
  }

  else
  {
    videoReceiverForCALayerRemote_GetInstanceType_cold_2(&v4);
    return v4;
  }

  return result;
}

void videoReceiverRemote_slotWasDestroyedCallback(uint64_t a1, const void *a2)
{
  v4 = FigCFWeakReferenceHolderCopyReferencedObject();
  v5 = v4;
  if (a1 && v4)
  {
    videoReceiverRemote_handleImageQueueSlotEvent(v4, a1);
  }

  else if (!v4)
  {
    goto LABEL_6;
  }

  CFRelease(v5);
LABEL_6:
  if (a2)
  {

    CFRelease(a2);
  }
}

uint64_t videoReceiverForBufferDeliveryRemote_GetInstanceType(uint64_t a1, _DWORD *a2)
{
  if (a1)
  {
    if (a2)
    {
      result = 0;
      *a2 = 3;
    }

    else
    {
      videoReceiverForBufferDeliveryRemote_GetInstanceType_cold_1(&v3);
      return v3;
    }
  }

  else
  {
    videoReceiverForBufferDeliveryRemote_GetInstanceType_cold_2(&v4);
    return v4;
  }

  return result;
}

void __vr_establishFigXPCConnectionForBootstrapEndpointAsync_block_invoke_2(uint64_t a1, void *a2)
{
  v35[5] = *MEMORY[0x1E69E9840];
  if (MEMORY[0x19A8D7060](a2) == MEMORY[0x1E69E9E98])
  {
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    if (a2 == MEMORY[0x1E69E9E18])
    {
      v13 = 4294951363;
      v14 = 2672;
    }

    else
    {
      v13 = 4294951725;
      v14 = 2675;
    }

    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1ED4CBE88, v13, "<< FigVideoReceiverRemoteXPC >>", v14, v2);
    LODWORD(v22) = v15;
    LODWORD(cf) = 0;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    v17 = *(*(a1 + 32) + 16);
    goto LABEL_13;
  }

  v5 = *(a1 + 32);
  v6 = malloc_type_calloc(1uLL, 0x60uLL, 0x106004091ADB532uLL);
  if (!v6)
  {
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v20, v21, v22);
    v19 = v18;
    if (!v18)
    {
      return;
    }

    goto LABEL_18;
  }

  v7 = v6;
  v8 = vr_handleConnectionEstablishedResponseCommon(a2, v6);
  if (v8)
  {
    v19 = v8;
    free(v7);
LABEL_18:
    v29 = 0u;
    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    v30 = 0u;
    LODWORD(v29) = v19;
    v17 = *(*(a1 + 32) + 16);
LABEL_13:
    v17();
    return;
  }

  v9 = v7[3];
  v10 = v7[1];
  *&v29 = MEMORY[0x1E69E9820];
  *(&v29 + 1) = 0x40000000;
  *&v30 = __vr_handleConnectionEstablishedResponseAsync_block_invoke;
  *(&v30 + 1) = &unk_1E74956B8;
  *&v31 = v5;
  *(&v31 + 1) = v7;
  v35[0] = MEMORY[0x1E69E9820];
  v35[1] = 0x40000000;
  v35[2] = __vr_establishRemoteXPCClientAndMemoryOriginAsync_block_invoke;
  v35[3] = &unk_1E7495708;
  v35[4] = &v29;
  cf = 0;
  if (v10)
  {
    XPCRemoteClientOptions = remoteVideoReceiver_createXPCRemoteClientOptions(1, &cf);
    v12 = cf;
    if (!XPCRemoteClientOptions)
    {
      *&v22 = MEMORY[0x1E69E9820];
      *(&v22 + 1) = 0x40000000;
      *&v23 = __remoteVideoReceiver_establishFigXPCConnectionWithEndpointAsync_block_invoke;
      *(&v23 + 1) = &unk_1E7495730;
      DWORD2(v24) = 0;
      *&v24 = v35;
      remoteConnectionEstablisher_establishConnectionAsync(v10, v9, cf, &v22);
    }

    if (v12)
    {
      CFRelease(v12);
    }
  }

  else
  {
    __vr_establishFigXPCConnectionForBootstrapEndpointAsync_block_invoke_2_cold_1();
  }
}

void __vr_handleConnectionEstablishedResponseAsync_block_invoke(uint64_t a1, int a2, CFTypeRef cf, const void *a4)
{
  if (a2)
  {
    **(a1 + 40) = a2;
  }

  else
  {
    if (cf)
    {
      v6 = CFRetain(cf);
    }

    else
    {
      v6 = 0;
    }

    *(*(a1 + 40) + 16) = v6;
    if (a4)
    {
      v7 = CFRetain(a4);
    }

    else
    {
      v7 = 0;
    }

    *(*(a1 + 40) + 88) = v7;
  }

  (*(*(a1 + 32) + 16))();
  BootstrapConnectionResponseDeinit(*(a1 + 40));
  v8 = *(a1 + 40);

  free(v8);
}

uint64_t __vr_establishRemoteXPCClientAndMemoryOriginAsync_block_invoke(uint64_t a1, int a2, CFTypeRef cf)
{
  if (a2)
  {
    v3 = *(*(a1 + 32) + 16);

    return v3();
  }

  else
  {
    if (cf)
    {
      CFRetain(cf);
    }

    return FigXPCRemoteClientCopyMemoryOriginAsync();
  }
}

void __vr_establishRemoteXPCClientAndMemoryOriginAsync_block_invoke_2(uint64_t a1)
{
  (*(*(a1 + 32) + 16))();
  v2 = *(a1 + 40);
  if (v2)
  {

    CFRelease(v2);
  }
}

uint64_t __remoteVideoReceiver_establishFigXPCConnectionWithEndpointAsync_block_invoke(uint64_t a1, int a2)
{
  v5 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  return (*(*(a1 + 32) + 16))();
}

uint64_t OUTLINED_FUNCTION_4_137()
{

  return CMBaseObjectGetDerivedStorage();
}

uint64_t OUTLINED_FUNCTION_8_79(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  a11 = 0;
  a12 = 0;
  a9 = 0;
  a10 = 0;

  return videoReceiverRemote_GetClientAndObjectID(a1, &a10, &a9);
}

uint64_t FigTTMLDocumentWriterCreateForIMSC(uint64_t a1, const void *a2, void *a3)
{
  cf = 0;
  v12 = 0;
  if (!a2)
  {
    FigTTMLDocumentWriterCreateForIMSC_cold_2(&v13);
LABEL_9:
    v7 = v13;
    goto LABEL_13;
  }

  if (!a3)
  {
    FigTTMLDocumentWriterCreateForIMSC_cold_1(&v13);
    goto LABEL_9;
  }

  FigTTMLDocumentWriterGetClassID();
  v6 = CMDerivedObjectCreate();
  if (v6)
  {
    v7 = v6;
  }

  else
  {
    v7 = FigTTMLDocumentWriterStateCreate(a1, &cf);
    if (!v7)
    {
      FigTTMLDocumentWriterGetCMBaseObject();
      DerivedStorage = CMBaseObjectGetDerivedStorage();
      *DerivedStorage = CFRetain(a2);
      v9 = v12;
      DerivedStorage[1] = cf;
      *a3 = v9;
      return v7;
    }

    if (cf)
    {
      CFRelease(cf);
    }
  }

LABEL_13:
  if (v12)
  {
    CFRelease(v12);
  }

  return v7;
}

void figTTMLDocumentWriterForIMSC_Finalize()
{
  FigTTMLDocumentWriterGetCMBaseObject();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v1 = *(DerivedStorage + 8);
  if (v1)
  {
    CFRelease(v1);
    *(DerivedStorage + 8) = 0;
  }

  if (*DerivedStorage)
  {
    CFRelease(*DerivedStorage);
    *DerivedStorage = 0;
  }
}

uint64_t figTTMLDocumentWriterForIMSC_Flush()
{
  FigTTMLDocumentWriterGetCMBaseObject();
  v0 = *CMBaseObjectGetDerivedStorage();

  return FigTTMLDocumentWriterFlush(v0);
}

void initAttributeValidatorDict_0()
{
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], 0);
  CFDictionaryAddValue(Mutable, @"begin", 0);
  CFDictionaryAddValue(Mutable, @"dur", 0);
  CFDictionaryAddValue(Mutable, @"end", 0);
  CFDictionaryAddValue(Mutable, @"region", 0);
  CFDictionaryAddValue(Mutable, @"timeContainer", 0);
  CFDictionaryAddValue(Mutable, @"style", 0);
  CFDictionaryAddValue(Mutable, @"use", prohibited_0);
  CFDictionaryAddValue(Mutable, @"value", prohibited_0);
  CFDictionaryAddValue(Mutable, @"http://www.w3.org/XML/1998/namespace id", 0);
  CFDictionaryAddValue(Mutable, @"http://www.w3.org/XML/1998/namespace space", 0);
  CFDictionaryAddValue(Mutable, @"http://www.w3.org/XML/1998/namespace lang", 0);
  CFDictionaryAddValue(Mutable, @"http://www.w3.org/XML/1998/namespace base", 0);
  CFDictionaryAddValue(Mutable, @"http://www.w3.org/ns/ttml#parameter clockMode", prohibited_0);
  CFDictionaryAddValue(Mutable, @"http://www.w3.org/ns/ttml#parameter dropMode", prohibited_0);
  CFDictionaryAddValue(Mutable, @"http://www.w3.org/ns/ttml#parameter frameRate", prohibited_0);
  CFDictionaryAddValue(Mutable, @"http://www.w3.org/ns/ttml#parameter frameRateMultiplier", prohibited_0);
  CFDictionaryAddValue(Mutable, @"http://www.w3.org/ns/ttml#parameter markerMode", prohibited_0);
  CFDictionaryAddValue(Mutable, @"http://www.w3.org/ns/ttml#parameter pixelAspectRatio", prohibited_0);
  CFDictionaryAddValue(Mutable, @"http://www.w3.org/ns/ttml#parameter profile", 0);
  CFDictionaryAddValue(Mutable, @"http://www.w3.org/ns/ttml#parameter subFrameRate", prohibited_0);
  CFDictionaryAddValue(Mutable, @"http://www.w3.org/ns/ttml#parameter tickRate", prohibited_0);
  CFDictionaryAddValue(Mutable, @"http://www.w3.org/ns/ttml#parameter timeBase", validateTimeBase_0);
  CFDictionaryAddValue(Mutable, @"http://www.w3.org/ns/ttml#parameter cellResolution", 0);
  CFDictionaryAddValue(Mutable, @"http://www.w3.org/ns/ttml/profile/imsc1#parameter aspectRatio", 0);
  CFDictionaryAddValue(Mutable, @"http://www.w3.org/ns/ttml/profile/imsc1#parameter activeArea", 0);
  CFDictionaryAddValue(Mutable, @"http://www.w3.org/ns/ttml#styling backgroundColor", 0);
  CFDictionaryAddValue(Mutable, @"http://www.w3.org/ns/ttml#styling color", 0);
  CFDictionaryAddValue(Mutable, @"http://www.w3.org/ns/ttml#styling direction", 0);
  CFDictionaryAddValue(Mutable, @"http://www.w3.org/ns/ttml#styling display", 0);
  CFDictionaryAddValue(Mutable, @"http://www.w3.org/ns/ttml#styling displayAlign", 0);
  CFDictionaryAddValue(Mutable, @"http://www.w3.org/ns/ttml#styling extent", 0);
  CFDictionaryAddValue(Mutable, @"http://www.w3.org/ns/ttml#styling fontFamily", 0);
  CFDictionaryAddValue(Mutable, @"http://www.w3.org/ns/ttml#styling fontSize", 0);
  CFDictionaryAddValue(Mutable, @"http://www.w3.org/ns/ttml#styling fontStyle", 0);
  CFDictionaryAddValue(Mutable, @"http://www.w3.org/ns/ttml#styling fontWeight", 0);
  CFDictionaryAddValue(Mutable, @"http://www.w3.org/ns/ttml#styling lineHeight", validateLineHeight);
  CFDictionaryAddValue(Mutable, @"http://www.w3.org/ns/ttml#styling opacity", 0);
  CFDictionaryAddValue(Mutable, @"http://www.w3.org/ns/ttml#styling origin", 0);
  CFDictionaryAddValue(Mutable, @"http://www.w3.org/ns/ttml#styling overflow", 0);
  CFDictionaryAddValue(Mutable, @"http://www.w3.org/ns/ttml#styling padding", 0);
  CFDictionaryAddValue(Mutable, @"http://www.w3.org/ns/ttml#styling showBackground", 0);
  CFDictionaryAddValue(Mutable, @"http://www.w3.org/ns/ttml#styling textAlign", 0);
  CFDictionaryAddValue(Mutable, @"http://www.w3.org/ns/ttml#styling textDecoration", 0);
  CFDictionaryAddValue(Mutable, @"http://www.w3.org/ns/ttml#styling textOutline", 0);
  CFDictionaryAddValue(Mutable, @"http://www.w3.org/ns/ttml#styling unicodeBidi", validateUnicodeBidi_0);
  CFDictionaryAddValue(Mutable, @"http://www.w3.org/ns/ttml#styling visibility", 0);
  CFDictionaryAddValue(Mutable, @"http://www.w3.org/ns/ttml#styling wrapOption", 0);
  CFDictionaryAddValue(Mutable, @"http://www.w3.org/ns/ttml#styling writingMode", 0);
  CFDictionaryAddValue(Mutable, @"http://www.w3.org/ns/ttml#styling zIndex", 0);
  CFDictionaryAddValue(Mutable, @"http://namespace.itunes.apple.com/itt/ttml-extension#ruby kind", 0);
  CFDictionaryAddValue(Mutable, @"http://namespace.itunes.apple.com/itt/ttml-extension#ruby position", 0);
  CFDictionaryAddValue(Mutable, @"http://namespace.itunes.apple.com/itt/ttml-extension#ruby align", 0);
  CFDictionaryAddValue(Mutable, @"http://namespace.itunes.apple.com/itt/ttml-extension#vertical combine", 0);
  CFDictionaryAddValue(Mutable, @"http://www.w3.org/ns/ttml/profile/imsc1#styling forcedDisplay", 0);
  CFDictionaryAddValue(Mutable, @"http://www.w3.org/ns/ttml/profile/imsc1#styling fillLineGap", 0);
  CFDictionaryAddValue(Mutable, @"urn:ebu:tt:style linePadding", 0);
  CFDictionaryAddValue(Mutable, @"urn:ebu:tt:style multiRowAlign", 0);
  sAttributeValidatorDict_0 = Mutable;
}

uint64_t EC_GetCurrentRangeIndex(uint64_t result)
{
  if (result)
  {
    if (*(result + 32))
    {
      return *(result + 40);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t EncryptionConfigGetTypeID(uint64_t a1, uint64_t a2)
{
  if (sRegisterEncryptionConfigTypeOnce != -1)
  {
    EncryptionConfigGetTypeID_cold_1();
  }

  return sEncryptionConfigID;
}

uint64_t RegisterEncryptionConfigType()
{
  result = _CFRuntimeRegisterClass();
  sEncryptionConfigID = result;
  return result;
}

uint64_t EncryptionConfigCreate(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v4 = a2;
  v5 = *MEMORY[0x1E695E480];
  if (sRegisterEncryptionConfigTypeOnce != -1)
  {
    EncryptionConfigGetTypeID_cold_1();
  }

  Instance = _CFRuntimeCreateInstance();
  if (Instance)
  {
    v7 = Instance;
    *(Instance + 16) = v4;
    *(Instance + 24) = 0;
    Mutable = CFArrayCreateMutable(v5, 0, MEMORY[0x1E695E9C0]);
    result = 0;
    *(v7 + 32) = Mutable;
    *(v7 + 40) = 0;
    *a3 = v7;
  }

  else
  {
    EncryptionConfigCreate_cold_2(&v10);
    return v10;
  }

  return result;
}

uint64_t ec_CFDictionaryGetStringIfPresent(const void *a1, uint64_t a2, CFTypeRef *a3)
{
  if (a1 && (v3 = CFGetTypeID(a1), v3 == CFDictionaryGetTypeID()))
  {
    FigCFDictionaryGetValueIfPresent();
    return 0;
  }

  else
  {
    ec_CFDictionaryGetStringIfPresent_cold_1();
    return 0;
  }
}

uint64_t RegisterEncryptionRangeType()
{
  result = _CFRuntimeRegisterClass();
  qword_1ED4CBA08 = result;
  return result;
}

double er_EncryptionRangeInit(uint64_t a1)
{
  *(a1 + 80) = 0;
  result = 0.0;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  return result;
}

void er_EncryptionRangeFinalize(void *a1)
{
  v2 = a1[3];
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = a1[5];
  if (v3)
  {
    CFRelease(v3);
  }

  v4 = a1[7];
  if (v4)
  {
    if (*v4)
    {
      CFRelease(*v4);
      v4 = a1[7];
    }

    free(v4);
  }

  v5 = a1[8];
  if (v5)
  {
    if (*v5)
    {
      CFRelease(*v5);
      v5 = a1[8];
    }

    if (v5[1])
    {
      CFRelease(v5[1]);
      v5 = a1[8];
    }

    free(v5);
  }

  v6 = a1[9];
  if (v6)
  {
    if (*v6)
    {
      CFRelease(*v6);
      v6 = a1[9];
    }

    if (v6[1])
    {
      CFRelease(v6[1]);
      v6 = a1[9];
    }

    free(v6);
  }

  v7 = a1[6];
  if (v7)
  {
    if (*v7)
    {
      CFRelease(*v7);
      v7 = a1[6];
    }

    free(v7);
  }
}

__CFString *er_EncryptionRangeCopyDebugDesc(uint64_t a1)
{
  v2 = CFGetAllocator(a1);
  Mutable = CFStringCreateMutable(v2, 0);
  v4 = Mutable;
  v5 = "true";
  if (*(a1 + 16))
  {
    v6 = "true";
  }

  else
  {
    v6 = "false";
  }

  if (!*(a1 + 32))
  {
    v5 = "false";
  }

  CFStringAppendFormat(Mutable, 0, @"<EncryptionRange %p> encrypted: %s segmentCount: %lld key: %p IV: %p keepIVConstant: %s legacyConfigInfo: %p fairPlayInfo: %p playReadyInfo: %p widevineInfo: %p", a1, v6, *(a1 + 80), *(a1 + 40), *(a1 + 24), v5, *(a1 + 48), *(a1 + 56), *(a1 + 64), *(a1 + 72));
  return v4;
}

double ec_EncryptionConfigInit(uint64_t a1)
{
  *(a1 + 48) = 0;
  result = 0.0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  return result;
}

void ec_EncryptionConfigFinalize(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = *(a1 + 32);
  if (v3)
  {

    CFRelease(v3);
  }
}

__CFString *ec_CopyDesc(uint64_t a1)
{
  v2 = CFGetAllocator(a1);
  Mutable = CFStringCreateMutable(v2, 0);
  v4 = (a1 + 32);
  CFStringAppendFormat(Mutable, 0, @"<EncryptionConfig %p> scheme %d encryptionRangeList %p", a1, *(a1 + 16), a1 + 32);
  CFStringAppendFormat(Mutable, 0, @" allowed-cpc %@", *(a1 + 24));
  if (CFArrayGetCount(*(a1 + 32)) >= 1)
  {
    v5 = 0;
    do
    {
      ValueAtIndex = CFArrayGetValueAtIndex(*v4, v5);
      v7 = er_EncryptionRangeCopyDebugDesc(ValueAtIndex);
      CFStringAppendFormat(Mutable, 0, @"\n\t%@", v7);
      if (v7)
      {
        CFRelease(v7);
      }

      ++v5;
    }

    while (v5 < CFArrayGetCount(*v4));
  }

  return Mutable;
}

void *OUTLINED_FUNCTION_2_169()
{

  return malloc_type_calloc(1uLL, 8uLL, 0x6004044C4A2DFuLL);
}

const void *OUTLINED_FUNCTION_7_94()
{
  v2 = *(v0 + 40);

  return ec_GetEncryptionRange(v0, v2);
}

void manifoldFactory_createManifold(const __CFAllocator *a1, OpaqueCMBlockBuffer *a2, uint64_t a3, CMTime *a4, char a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10)
{
  v19 = 0;
  if (_os_feature_enabled_impl())
  {
    if (a8 > 3)
    {
      switch(a8)
      {
        case 4:
          FigManifoldCreateRemoteForMPEG2(a1, a2, a6, a7, 0, a9, &v19);
          break;
        case 8:
          FigManifoldCreateRemoteForMovieFragmentStream(a1, a2, a6, 0, a9, a3, &v19);
          break;
        case 16:
          FigManifoldCreateRemoteForICY();
          break;
      }

      goto LABEL_23;
    }

    if (a8 != 1)
    {
      if (a8 == 2)
      {
        FigManifoldCreateRemoteForWebVTT();
      }

      goto LABEL_23;
    }

LABEL_18:
    v18 = *a4;
    FigManifoldCreateForGap(a1, a2, &v18, a5, a6, 0, a9, &v19);
    goto LABEL_23;
  }

  if (a8 <= 3)
  {
    if (a8 == 1)
    {
      goto LABEL_18;
    }

    if (a8 == 2)
    {
      FigManifoldCreateForWebVTT(a1, a2, a6, 0, a9, &v19);
    }
  }

  else
  {
    switch(a8)
    {
      case 4:
        FigManifoldCreateForMPEG2(a1, a2, a6, a7, 0, a9, &v19);
        break;
      case 8:
        FigManifoldCreateForMovieFragmentStream(a1, a2, a6, 0, a9, a3, &v19);
        break;
      case 16:
        FigManifoldCreateForICY(a1, a2, a6, 0, a9, &v19);
        break;
    }
  }

LABEL_23:
  *a10 = v19;
}

uint64_t RegisterFigVirtualFramebufferType(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  CMBaseGetClassID();

  return FigBaseClassRegisterClass();
}

uint64_t FigVirtualFramebufferGetTypeID()
{
  MEMORY[0x19A8D3660](&FigVirtualFramebufferGetClassID_sRegisterFigVirtualFramebufferTypeOnce, RegisterFigVirtualFramebufferType);

  return CMBaseClassGetCFTypeID();
}

uint64_t activityOnDispatchQueue_sharedCreate(CFTypeRef *a1)
{
  if (a1)
  {
    FigActivitySchedulerGetClassID();
    v2 = CMDerivedObjectCreate();
    if (!v2)
    {
      *a1 = 0;
    }
  }

  else
  {
    activityOnDispatchQueue_sharedCreate_cold_1(&v4);
    return v4;
  }

  return v2;
}

uint64_t FigActivitySchedulerCreateForExistingDispatchQueue(uint64_t a1, NSObject *a2, CFTypeRef *a3)
{
  cf = 0;
  if (a2)
  {
    v5 = activityOnDispatchQueue_sharedCreate(&cf);
    if (v5)
    {
      if (cf)
      {
        CFRelease(cf);
      }
    }

    else
    {
      *(CMBaseObjectGetDerivedStorage() + 8) = a2;
      dispatch_retain(a2);
      *a3 = cf;
    }
  }

  else
  {
    FigActivitySchedulerCreateForExistingDispatchQueue_cold_1(&v8);
    return v8;
  }

  return v5;
}

uint64_t activityOnDispatchQueue_invalidate(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  *DerivedStorage = 1;
  v2 = *(DerivedStorage + 8);
  if (v2)
  {
    dispatch_sync_f(v2, 0, activityOnDispatchQueue_NoOp);
    dispatch_release(*(DerivedStorage + 8));
    *(DerivedStorage + 8) = 0;
  }

  return 0;
}

uint64_t activityOnDispatchQueue_finalize(uint64_t result)
{
  if (result)
  {
    v1 = result;
    VTable = CMBaseObjectGetVTable();
    v3 = *(VTable + 8);
    result = VTable + 8;
    v4 = *(v3 + 24);
    if (v4)
    {

      return v4(v1);
    }
  }

  return result;
}

__CFString *activityOnDispatchQueue_copyDebugDescription(uint64_t a1)
{
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  CFStringAppendFormat(Mutable, 0, @"<FigActivityScheduler_OnNewDispatchQueue %p>", a1);
  return Mutable;
}

void activityOnDispatchQueue_setProcessingCallback(uint64_t a1, uint64_t a2, uint64_t a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  context[0] = a1;
  context[1] = a3;
  context[2] = a2;
  if (*DerivedStorage)
  {

    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", 0, 4294954511, "(Fig)", 146, v3);
  }

  else
  {
    dispatch_sync_f(*(DerivedStorage + 8), context, activityOnDispatchQueue_setProcessingCallbackInternal);
  }
}

void activityOnDispatchQueue_triggerScheduling(void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*DerivedStorage)
  {

    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", 0, 4294954511, "(Fig)", 167, v1);
  }

  else
  {
    dispatch_async_f(*(DerivedStorage + 8), a1, activityOnDispatchQueue_triggerSchedulingInternal);
  }
}

__n128 activityOnDispatchQueue_setProcessingCallbackInternal(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  result = *(a1 + 8);
  DerivedStorage[1] = result;
  return result;
}

uint64_t activityOnDispatchQueue_triggerSchedulingInternal(uint64_t a1)
{
  result = CMBaseObjectGetDerivedStorage();
  v2 = *(result + 24);
  if (v2)
  {
    v3 = *(result + 16);

    return v2(v3);
  }

  return result;
}

uint64_t FigStreamingNetworkErrorCreateErrorFromHTTPRequestIfAvailable(uint64_t a1, int a2, __CFString *a3, CFTypeRef cf, uint64_t *a5)
{
  cfa = 0;
  v21 = 0;
  if (!a1)
  {
    goto LABEL_12;
  }

  AllocatorForMedia = FigGetAllocatorForMedia();
  v11 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v11)
  {
    v11(a1, @"FHRP_ErrorReturned", AllocatorForMedia, &v21);
    CFError = v21;
    if (v21)
    {
      goto LABEL_18;
    }
  }

  v13 = FigGetAllocatorForMedia();
  v14 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v14)
  {
    v19 = 4294954514;
    goto LABEL_19;
  }

  v15 = v14(a1, @"FHRP_ErrorComment", v13, &cfa);
  if (v15)
  {
    v16 = v15 == -12783;
  }

  else
  {
    v16 = 1;
  }

  if (!v16)
  {
    v19 = v15;
    goto LABEL_19;
  }

  CFError = v21;
  if (v21)
  {
    goto LABEL_18;
  }

  a3 = @"CoreMediaErrorDomain";
  v17 = cfa;
  if (!cfa)
  {
LABEL_12:
    if (cf)
    {
      v17 = CFRetain(cf);
    }

    else
    {
      v17 = 0;
    }

    cfa = v17;
  }

  CFError = FigCreateCFError(a3, a2, v17, 0, 0, 0, 0);
  v21 = CFError;
  if (CFError)
  {
LABEL_18:
    v19 = 0;
    *a5 = CFError;
    goto LABEL_19;
  }

  FigStreamingNetworkErrorCreateErrorFromHTTPRequestIfAvailable_cold_1(&v22);
  v19 = v22;
LABEL_19:
  if (cfa)
  {
    CFRelease(cfa);
  }

  return v19;
}

uint64_t FigStreamingNetworkErrorGetRecommendedAction(__CFError *a1, uint64_t *a2, uint64_t *a3)
{
  v15 = *MEMORY[0x1E69E9840];
  Code = CFErrorGetCode(a1);
  CFErrorGetDomain(a1);
  v7 = CFErrorCopyUserInfo(a1);
  if (!Code)
  {
    FigStreamingNetworkErrorGetRecommendedAction_cold_1(v14);
    Int32IfPresent = v14[0];
    if (!v7)
    {
      return Int32IfPresent;
    }

    goto LABEL_34;
  }

  if (!FigCFEqual())
  {
    if (FigCFEqual() || FigCFEqual())
    {
      v8 = 4;
      v9 = 2;
      if (Code <= -1010)
      {
        if ((Code + 1206) >= 7)
        {
          goto LABEL_29;
        }

        goto LABEL_13;
      }

      if (Code != -1009 && Code != -1005)
      {
        if (Code != 2)
        {
          goto LABEL_29;
        }

        v14[0] = 0;
        Int32IfPresent = FigCFDictionaryGetInt32IfPresent();
        v9 = 2;
        if (Int32IfPresent)
        {
          goto LABEL_33;
        }

        v8 = 4;
        if (!a2)
        {
          goto LABEL_31;
        }

LABEL_30:
        *a2 = v9;
        goto LABEL_31;
      }

      v8 = 2;
    }

    else
    {
      if (FigCFEqual())
      {
        if ((Code + 9829) <= 0x16 && ((1 << (Code + 101)) & 0x410011) != 0)
        {
LABEL_13:
          v8 = 5;
LABEL_28:
          v9 = 2;
LABEL_29:
          if (!a2)
          {
            goto LABEL_31;
          }

          goto LABEL_30;
        }
      }

      else
      {
        if (!FigCFEqual())
        {
          v8 = 0;
          goto LABEL_28;
        }

        if (Code == 61)
        {
          os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
          fig_log_call_emit_and_clean_up_after_send_and_compose();
          v8 = 4;
          goto LABEL_28;
        }
      }

      v8 = 4;
    }

    v9 = 3;
    if (!a2)
    {
      goto LABEL_31;
    }

    goto LABEL_30;
  }

  v8 = 3;
  v9 = 2;
  if (Code > -12939)
  {
    if (Code <= -12669)
    {
      if (Code == -12938)
      {
        goto LABEL_29;
      }

      goto LABEL_27;
    }

    if (Code != -12660)
    {
      if (Code == -12661)
      {
        goto LABEL_29;
      }

      goto LABEL_27;
    }
  }

  else
  {
    v10 = Code - 44;
    if ((Code + 16852) > 0xC)
    {
      goto LABEL_27;
    }

    if (((1 << v10) & 0x3D) != 0)
    {
      goto LABEL_29;
    }

    if (((1 << v10) & 0xB00) != 0 || ((1 << v10) & 0x1400) == 0)
    {
LABEL_27:
      v8 = 1;
      goto LABEL_28;
    }
  }

  v9 = 1;
  v8 = 1;
  if (a2)
  {
    goto LABEL_30;
  }

LABEL_31:
  Int32IfPresent = 0;
  if (a3)
  {
    *a3 = v8;
  }

LABEL_33:
  if (v7)
  {
LABEL_34:
    CFRelease(v7);
  }

  return Int32IfPresent;
}

__CFString *FigStreamingNetworkErrorGetStringForErrorAction(unint64_t a1)
{
  if (a1 > 3)
  {
    return @"unknown action";
  }

  else
  {
    return off_1E7495770[a1];
  }
}

uint64_t OVCGLObjectCacheGetObjectForSurfaceAndPlane(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, _DWORD *a5, BOOL *a6)
{
  if (a2)
  {
    return ovcgloc_getObjectForSurfaceOrAttributes(a1, a2, 0, 0, 0, a3, a4, a5, a6);
  }

  OVCGLObjectCacheGetObjectForSurfaceAndPlane_cold_1(&v7);
  return v7;
}

uint64_t ovcgloc_getObjectForSurfaceOrAttributes(unint64_t *a1, int a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, _DWORD *a8, BOOL *a9)
{
  if (a1)
  {
    v9 = a8;
    if (a8)
    {
      FigSimpleMutexLock();
      if (*a1)
      {
        v16 = v9;
        v17 = 0;
        v18 = 0;
        v19 = 0;
        v20 = a1[2];
        v21 = 0x7FFFFFFFFFFFFFFFLL;
        v22 = 1;
        v23 = *a1;
        while (1)
        {
          if (*(v20 + 56))
          {
            if (*v20 == a2 && *(v20 + 32) == a6 && *(v20 + 24) == a3 && *(v20 + 8) == a4 && *(v20 + 16) == a5 && *(v20 + 40) == a7)
            {
              *v16 = *(v20 + 44);
              *(v20 + 48) = mach_absolute_time();
              v25 = a9;
              if (a9)
              {
                goto LABEL_28;
              }

              goto LABEL_29;
            }

            if (*(v20 + 48) < v21)
            {
              v21 = *(v20 + 48);
              v19 = v20;
            }
          }

          else if (!v18)
          {
            v18 = v20;
          }

          v17 = v22++ >= *a1;
          v20 += 64;
          if (!--v23)
          {
            v9 = v16;
            if (v18)
            {
              goto LABEL_22;
            }

            goto LABEL_21;
          }
        }
      }

      v19 = 0;
LABEL_21:
      ots_destroyCacheEntry(v19);
      --a1[1];
      v18 = v19;
LABEL_22:
      *(v18 + 48) = mach_absolute_time();
      *(v18 + 56) = 1;
      *v18 = a2;
      *(v18 + 24) = a3;
      *(v18 + 8) = a4;
      *(v18 + 16) = a5;
      *(v18 + 32) = a6;
      *(v18 + 40) = a7;
      if (a7 == 36160)
      {
        glGenFramebuffers(1, (v18 + 44));
      }

      else
      {
        v24 = (v18 + 44);
        if (a7 == 36161)
        {
          glGenRenderbuffers(1, v24);
        }

        else
        {
          glGenTextures(1, v24);
        }
      }

      v25 = a9;
      ++a1[1];
      *v9 = *(v18 + 44);
      v17 = 1;
      if (a9)
      {
LABEL_28:
        *v25 = v17;
      }

LABEL_29:
      FigSimpleMutexUnlock();
      return 0;
    }

    else
    {
      ovcgloc_getObjectForSurfaceOrAttributes_cold_1(&v28);
      return v28;
    }
  }

  else
  {
    ovcgloc_getObjectForSurfaceOrAttributes_cold_2(&v29);
    return v29;
  }
}