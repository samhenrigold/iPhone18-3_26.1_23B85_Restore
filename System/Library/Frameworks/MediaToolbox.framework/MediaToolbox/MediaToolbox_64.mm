__CFString *AssetPropertyStore_CopyDebugDesc(void *a1)
{
  Mutable = CFStringCreateMutable(0, 0);
  v3 = CFGetRetainCount(a1);
  CFStringAppendFormat(Mutable, 0, @"<AssetPropertyStore %p> RC %d WRC %p WG %p WQ %p", a1, v3, a1[14], a1[12], a1[11]);
  return Mutable;
}

void PerPropertyInfoDisposalApplierFunction(int a1, void *a2)
{
  if (a2)
  {
    v3 = a2[1];
    if (v3)
    {
      CFRelease(v3);
      a2[1] = 0;
    }

    v4 = a2[2];
    if (v4)
    {
      CFRelease(v4);
    }

    free(a2);
  }
}

uint64_t AccessPropertyInfo(const __CFArray **a1, const void *a2, const void **a3)
{
  if (CFDictionaryGetValueIfPresent(a1[8], a2, a3))
  {
    return 0;
  }

  v7 = a1[7];
  v12.length = CFArrayGetCount(v7);
  v12.location = 0;
  if (CFArrayContainsValue(v7, v12, a2) || (v10 = a1[15]) != 0 && CFDictionaryContainsKey(v10, a2))
  {
    v8 = malloc_type_calloc(1uLL, 0x28uLL, 0x10E00406F9AF8A3uLL);
    if (v8)
    {
      v9 = v8;
      CFDictionarySetValue(a1[8], a2, v8);
      result = 0;
      *a3 = v9;
    }

    else
    {
      AccessPropertyInfo_cold_1(&v11);
      return v11;
    }
  }

  else
  {
    *a3 = 0;
    return 4294955124;
  }

  return result;
}

uint64_t RegisterAssetValidationStoreType(uint64_t *a1)
{
  result = _CFRuntimeRegisterClass();
  *a1 = result;
  return result;
}

double AssetValidationStore_Init(_OWORD *a1)
{
  result = 0.0;
  a1[3] = 0u;
  a1[4] = 0u;
  a1[1] = 0u;
  a1[2] = 0u;
  return result;
}

void AssetValidationStore_Finalize(void *a1)
{
  v2 = a1[6];
  if (v2)
  {
    dispatch_release(v2);
    a1[6] = 0;
  }

  v3 = a1[7];
  if (v3)
  {
    dispatch_release(v3);
    a1[7] = 0;
  }

  v4 = a1[2];
  if (v4)
  {
    dispatch_release(v4);
    a1[2] = 0;
  }

  v5 = a1[4];
  if (v5)
  {
    CFDictionaryApplyFunction(v5, PerValidationInfoDisposalApplierFunction, 0);
    v6 = a1[4];
    if (v6)
    {
      CFRelease(v6);
      a1[4] = 0;
    }
  }

  v7 = a1[5];
  if (v7)
  {
    CFDictionaryApplyFunction(v7, PerValidationInfoDisposalApplierFunction, 0);
    v8 = a1[5];
    if (v8)
    {
      CFRelease(v8);
      a1[5] = 0;
    }
  }

  v9 = a1[3];
  if (v9)
  {
    CFRelease(v9);
    a1[3] = 0;
  }

  v10 = a1[9];
  if (v10)
  {
    CFRelease(v10);
    a1[9] = 0;
  }
}

__CFString *AssetValidationStore_CopyDebugDesc(void *a1)
{
  Mutable = CFStringCreateMutable(0, 0);
  v3 = CFGetRetainCount(a1);
  CFStringAppendFormat(Mutable, 0, @"<AssetValidationStore %p> RC %d WRC %p WG %p WQ %p", a1, v3, a1[9], a1[7], a1[6]);
  return Mutable;
}

void PerValidationInfoDisposalApplierFunction(int a1, void *a2)
{
  if (a2)
  {
    free(a2);
  }
}

uint64_t AccessValidationInfo(uint64_t a1, CFTypeRef cf1, const void *a3, const void **a4)
{
  if (CFEqual(cf1, @"validationCriteria_Custom"))
  {
    if (!CFDictionaryGetValueIfPresent(*(a1 + 40), a3, a4))
    {
      v8 = malloc_type_calloc(1uLL, 0x10uLL, 0x1000040D9A13B51uLL);
      if (v8)
      {
        v9 = v8;
        CFDictionarySetValue(*(a1 + 40), a3, v8);
        result = 0;
        *a4 = v9;
      }

      else
      {
        AccessValidationInfo_cold_1(&v13);
        return v13;
      }

      return result;
    }

    return 0;
  }

  if (CFDictionaryGetValueIfPresent(*(a1 + 32), cf1, a4))
  {
    return 0;
  }

  v11 = malloc_type_calloc(1uLL, 0x10uLL, 0x1000040D9A13B51uLL);
  if (v11)
  {
    v12 = v11;
    CFDictionarySetValue(*(a1 + 32), cf1, v11);
    result = 0;
    *a4 = v12;
  }

  else
  {
    AccessValidationInfo_cold_2(&v14);
    return v14;
  }

  return result;
}

_BYTE *fbarp_inhibitOutputUntil(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const __CFDictionary *a5)
{
  result = CMBaseObjectGetDerivedStorage();
  if (a5)
  {
    v7 = result;
    if (!*result)
    {
      Value = CFDictionaryGetValue(a5, *MEMORY[0x1E6960580]);
      FigSimpleMutexLock();
      v9 = *(v7 + 14);
      *(v7 + 14) = Value;
      if (Value)
      {
        CFRetain(Value);
      }

      if (v9)
      {
        CFRelease(v9);
      }

      return FigSimpleMutexUnlock();
    }
  }

  return result;
}

_BYTE *fbarp_resetOutput(uint64_t a1, const void *a2)
{
  result = CMBaseObjectGetDerivedStorage();
  if (!*result)
  {
    v4 = result;
    fbarp_postNotificationSync(a2, @"ResetOutput");
    FigSimpleMutexLock();
    v5 = MEMORY[0x1E6960CC0];
    *(v4 + 168) = *MEMORY[0x1E6960CC0];
    *(v4 + 23) = *(v5 + 16);

    return FigSimpleMutexUnlock();
  }

  return result;
}

uint64_t FigSampleBufferProcessorForBufferedAirPlayCopyPerformanceDictionary(uint64_t a1, __CFDictionary **a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  v4 = *MEMORY[0x1E695E480];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (Mutable)
  {
    v6 = Mutable;
    v20 = *(DerivedStorage + 216);
    v7 = CMTimeCopyAsDictionary(&v20, v4);
    if (v7)
    {
      v8 = v7;
      CFDictionarySetValue(v6, @"FirstMediaSamplePts", v7);
      CFRelease(v8);
      v20 = *(DerivedStorage + 240);
      v9 = CMTimeCopyAsDictionary(&v20, v4);
      if (v9)
      {
        v10 = v9;
        CFDictionarySetValue(v6, @"LastMediaSamplePts", v9);
        CFRelease(v10);
        v20 = *(DerivedStorage + 264);
        v11 = CMTimeCopyAsDictionary(&v20, v4);
        if (v11)
        {
          v12 = v11;
          CFDictionarySetValue(v6, @"FirstContinuousSamplePts", v11);
          CFRelease(v12);
          v20 = *(DerivedStorage + 288);
          v13 = CMTimeCopyAsDictionary(&v20, v4);
          if (v13)
          {
            v14 = v13;
            CFDictionarySetValue(v6, @"LastContinuousSamplePts", v13);
            CFRelease(v14);
            v20 = *(DerivedStorage + 312);
            v15 = CMTimeCopyAsDictionary(&v20, v4);
            if (v15)
            {
              v16 = v15;
              CFDictionarySetValue(v6, @"DurationProcessed", v15);
              CFRelease(v16);
              value_low = 0;
              if (a2)
              {
                *a2 = v6;
              }

              goto LABEL_9;
            }

            v19 = 1195;
          }

          else
          {
            v19 = 1190;
          }
        }

        else
        {
          v19 = 1185;
        }
      }

      else
      {
        v19 = 1180;
      }
    }

    else
    {
      v19 = 1175;
    }

    FigSampleBufferProcessorForBufferedAirPlayCopyPerformanceDictionary_cold_1(v19, (DerivedStorage + 136), v6, &v20);
    return LODWORD(v20.value);
  }

  FigSampleBufferProcessorForBufferedAirPlayCopyPerformanceDictionary_cold_2(&v20);
  value_low = LODWORD(v20.value);
LABEL_9:
  FigSimpleMutexUnlock();
  return value_low;
}

uint64_t fbarpInvalidate(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (DerivedStorage)
  {
    v2 = DerivedStorage;
    if (!*DerivedStorage)
    {
      CMNotificationCenterGetDefaultLocalCenter();
      FigNotificationCenterRemoveWeakListener();
      CMNotificationCenterGetDefaultLocalCenter();
      FigNotificationCenterRemoveWeakListener();
      if (*(v2 + 15))
      {
        FigSimpleMutexLock();
      }

      v3 = *(v2 + 14);
      if (v3)
      {
        CFRelease(v3);
        *(v2 + 14) = 0;
      }

      if (*(v2 + 15))
      {
        FigSimpleMutexUnlock();
      }

      v4 = *(v2 + 3);
      if (v4)
      {
        CFRelease(v4);
        *(v2 + 3) = 0;
      }

      v5 = *(v2 + 4);
      if (v5)
      {
        CFRelease(v5);
        *(v2 + 4) = 0;
      }

      v6 = *(v2 + 12);
      if (v6)
      {
        CFRelease(v6);
        *(v2 + 12) = 0;
      }

      v7 = *(v2 + 13);
      if (v7)
      {
        CFRelease(v7);
        *(v2 + 13) = 0;
      }

      v8 = *(v2 + 43);
      if (v8)
      {
        CFRelease(v8);
        *(v2 + 43) = 0;
      }

      v2[128] = 0;
      *(v2 + 1) = 0;
      *(v2 + 2) = 0;
      FigSimpleMutexLock();
      v9 = MEMORY[0x1E6960C70];
      *(v2 + 9) = *MEMORY[0x1E6960C70];
      *(v2 + 20) = *(v9 + 16);
      FigSimpleMutexUnlock();
      *v2 = 1;
    }
  }

  return 0;
}

void fbarpFinalize(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  fbarpInvalidate(a1);
  if (*(DerivedStorage + 120))
  {
    FigSimpleMutexDestroy();
    *(DerivedStorage + 120) = 0;
  }

  FigSimpleMutexDestroy();
  v3 = *(DerivedStorage + 336);
  if (v3)
  {
    dispatch_sync(v3, &__block_literal_global_92);
    dispatch_release(*(DerivedStorage + 336));
    *(DerivedStorage + 336) = 0;
  }
}

__CFString *fbarpCopyDebugDesc(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v3 = CFGetAllocator(DerivedStorage);
  Mutable = CFStringCreateMutable(v3, 0);
  v5 = CFGetRetainCount(DerivedStorage);
  if (*DerivedStorage)
  {
    v6 = " (invalidated)";
  }

  else
  {
    v6 = "";
  }

  v7 = CFGetAllocator(DerivedStorage);
  CFStringAppendFormat(Mutable, 0, @"<FigSampleBufferProcessor_BufferedAirPlay %p> retainCount: %d%s allocator: %p\n", a1, v5, v6, v7);
  return Mutable;
}

uint64_t fbarp_setOutputCallback(uint64_t a1, uint64_t a2, uint64_t a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  *(DerivedStorage + 8) = a2;
  *(DerivedStorage + 16) = a3;
  return 0;
}

uint64_t fbarp_processSampleBuffer(const void *a1, opaqueCMSampleBuffer *a2)
{
  v66 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v60 = *MEMORY[0x1E6960C70];
  v61 = *(MEMORY[0x1E6960C70] + 8);
  v5 = *MEMORY[0x1E6960C70];
  *&v53.value = *MEMORY[0x1E6960C70];
  v6 = *(MEMORY[0x1E6960C70] + 16);
  v53.epoch = v6;
  v58 = v60;
  timescale = v61;
  if (!a2)
  {
    fbarp_processSampleBuffer_cold_4(&sampleBufferOut);
    return LODWORD(sampleBufferOut.value);
  }

  v7 = DerivedStorage;
  v51 = v5;
  v8 = CMBaseObjectGetDerivedStorage();
  sampleBufferOut.value = 0;
  Copy = CMSampleBufferCreateCopy(*(v8 + 24), a2, &sampleBufferOut);
  if (!sampleBufferOut.value)
  {
    fbarp_processSampleBuffer_cold_1(&lhs);
    v12 = 0;
    value = lhs.value;
    goto LABEL_10;
  }

  value = Copy;
  v11 = CMCopyDictionaryOfAttachments(*(v8 + 24), a2, 0);
  if (v11)
  {
    CMSetAttachments(sampleBufferOut.value, v11, 0);
  }

  if (!sampleBufferOut.value)
  {
    v12 = 0;
    if (!v11)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  v12 = CFRetain(sampleBufferOut.value);
  if (v11)
  {
LABEL_9:
    CFRelease(v11);
  }

LABEL_10:
  if (sampleBufferOut.value)
  {
    CFRelease(sampleBufferOut.value);
  }

  if (!v12)
  {
    fbarp_processSampleBuffer_cold_3(&sampleBufferOut);
    return LODWORD(sampleBufferOut.value);
  }

  v52 = value;
  CMSampleBufferGetOutputDuration(&sampleBufferOut, v12);
  v58 = sampleBufferOut.value;
  flags = sampleBufferOut.flags;
  timescale = sampleBufferOut.timescale;
  epoch = sampleBufferOut.epoch;
  CMSampleBufferGetOutputPresentationTimeStamp(&sampleBufferOut, v12);
  v60 = sampleBufferOut.value;
  v15 = sampleBufferOut.flags;
  v61 = sampleBufferOut.timescale;
  v16 = sampleBufferOut.epoch;
  if (sampleBufferOut.flags)
  {
    FigSimpleMutexLock();
    lhs.value = v60;
    lhs.timescale = v61;
    lhs.flags = v15;
    lhs.epoch = v16;
    rhs.value = v58;
    rhs.timescale = timescale;
    rhs.flags = flags;
    rhs.epoch = epoch;
    CMTimeAdd(&sampleBufferOut, &lhs, &rhs);
    *(v7 + 144) = sampleBufferOut;
    FigSimpleMutexUnlock();
  }

  v50 = epoch;
  v17 = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  if (*(v17 + 112))
  {
    v18 = CMGetAttachment(v12, *MEMORY[0x1E6960518], 0);
    if (!FigCFEqual())
    {
      FigSimpleMutexUnlock();
      value_low = v52;
      goto LABEL_28;
    }

    v19 = v15;
    v20 = a1;
    v21 = flags;
    v22 = v16;
    v23 = v6;
    v24 = *(v17 + 112);
    if (v24)
    {
      CFRelease(v24);
      *(v17 + 112) = 0;
    }

    FigSimpleMutexLock();
    v25 = MEMORY[0x1E6960CC0];
    v49 = *MEMORY[0x1E6960CC0];
    *(v17 + 192) = *MEMORY[0x1E6960CC0];
    v26 = *(v25 + 16);
    *(v17 + 208) = v26;
    FigSimpleMutexUnlock();
    *(v17 + 44) = v49;
    *(v17 + 60) = v26;
    v6 = v23;
    v16 = v22;
    flags = v21;
    a1 = v20;
    v15 = v19;
  }

  else
  {
    v18 = 0;
  }

  FigSimpleMutexUnlock();
  value_low = v52;
  if (!CMGetAttachment(v12, *MEMORY[0x1E6962E38], 0) || *(v7 + 128))
  {
    if ((v15 & 1) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_30;
  }

  fbarp_postNotificationSync(a1, @"IsGapTrack");
  *(v7 + 128) = 1;
  if (v15)
  {
LABEL_30:
    v30 = *MEMORY[0x1E695E4D0];
    CMSetAttachment(v12, @"BufferedAirPlayIsOriginalContent", *MEMORY[0x1E695E4D0], 0);
    if (v18 || *(v7 + 40))
    {
      MutableCopy = FigCFDictionaryCreateMutableCopy();
      sampleBufferOut.value = v60;
      sampleBufferOut.timescale = v61;
      sampleBufferOut.flags = v15;
      sampleBufferOut.epoch = v16;
      FigCFDictionarySetCMTime();
      *(v7 + 40) = 0;
      fbarp_postNotification(a1, @"ResumeOutputSbufFound", MutableCopy);
      if (MutableCopy)
      {
        CFRelease(MutableCopy);
      }
    }

    if (*(v7 + 92))
    {
      v32 = FigCFDictionaryCreateMutableCopy();
      sampleBufferOut.value = v60;
      sampleBufferOut.timescale = v61;
      sampleBufferOut.flags = v15;
      sampleBufferOut.epoch = v16;
      lhs = *(v7 + 44);
      if (CMTimeCompare(&sampleBufferOut, &lhs))
      {
        FigSimpleMutexLock();
        lhs = *(v7 + 192);
        rhs = *(v7 + 44);
        CMTimeAdd(&sampleBufferOut, &lhs, &rhs);
        *(v7 + 192) = sampleBufferOut;
        FigSimpleMutexUnlock();
      }

      CFDictionarySetValue(v32, @"TransitionID", *(v7 + 96));
      sampleBufferOut = *(v7 + 44);
      FigCFDictionarySetCMTime();
      sampleBufferOut.value = v60;
      sampleBufferOut.timescale = v61;
      sampleBufferOut.flags = v15;
      sampleBufferOut.epoch = v16;
      FigCFDictionarySetCMTime();
      lhs.value = v60;
      lhs.timescale = v61;
      lhs.flags = v15;
      lhs.epoch = v16;
      rhs = *(v7 + 192);
      CMTimeAdd(&sampleBufferOut, &lhs, &rhs);
      FigCFDictionarySetCMTime();
      v33 = *(v7 + 104);
      *(v7 + 104) = v32;
      if (v32)
      {
        CFRetain(v32);
      }

      if (v33)
      {
        CFRelease(v33);
      }

      CMNotificationCenterGetDefaultLocalCenter();
      CMNotificationCenterPostNotification();
      if (v32)
      {
        CFRelease(v32);
      }

      v34 = *(v7 + 96);
      if (v34)
      {
        CFRelease(v34);
        *(v7 + 96) = 0;
      }

      *(v7 + 92) = 0;
    }

    sampleBufferOut.value = v60;
    sampleBufferOut.timescale = v61;
    sampleBufferOut.flags = v15;
    sampleBufferOut.epoch = v16;
    lhs = *(v7 + 192);
    CMTimeAdd(&v53, &sampleBufferOut, &lhs);
    sampleBufferOut = v53;
    v35 = CMSampleBufferSetOutputPresentationTimeStamp(v12, &sampleBufferOut);
    if (!v35)
    {
      v28 = 0;
      if (CMGetAttachment(v12, *MEMORY[0x1E69604C0], 0) != v30)
      {
        goto LABEL_54;
      }

      v36 = FigCFDictionaryCreateMutableCopy();
      memset(&sampleBufferOut, 0, sizeof(sampleBufferOut));
      lhs = v53;
      rhs.value = v58;
      rhs.timescale = timescale;
      rhs.flags = flags;
      rhs.epoch = v50;
      CMTimeAdd(&sampleBufferOut, &lhs, &rhs);
      if (v36)
      {
        lhs = sampleBufferOut;
        FigCFDictionarySetCMTime();
        fbarp_postNotification(a1, @"EndOfSiriTTSUtteranceFound", v36);
        CFRelease(v36);
        value_low = 0;
      }

      else
      {
        fbarp_processSampleBuffer_cold_2(&lhs);
        value_low = LODWORD(lhs.value);
      }

      goto LABEL_50;
    }

    value_low = v35;
LABEL_28:
    v29 = v12;
LABEL_72:
    CFRelease(v29);
    return value_low;
  }

LABEL_24:
  if (!v18)
  {
    v38 = CMGetAttachment(v12, *MEMORY[0x1E6960550], 0);
    if (v38)
    {
      *(v7 + 92) = 1;
      *(v7 + 96) = v38;
      CFRetain(v38);
      lhs = *(v7 + 192);
      rhs = *(v7 + 44);
      CMTimeAdd(&sampleBufferOut, &lhs, &rhs);
      v28 = CMTimeCopyAsDictionary(&sampleBufferOut, *MEMORY[0x1E695E480]);
      CMSetAttachment(v12, @"TransitionIDOutputPresentationTimeStamp", v28, 0);
      if (!v52)
      {
        goto LABEL_54;
      }

LABEL_51:
      v37 = 0;
      goto LABEL_68;
    }

    if (!CMGetAttachment(v12, *MEMORY[0x1E6960490], 0) && !CMGetAttachment(v12, *MEMORY[0x1E6962E00], 0))
    {
      CMGetAttachment(v12, *MEMORY[0x1E6960510], 0);
    }

LABEL_50:
    v28 = 0;
    if (!value_low)
    {
      goto LABEL_54;
    }

    goto LABEL_51;
  }

  v28 = 0;
  *(v7 + 40) = 1;
  if (v52)
  {
    goto LABEL_51;
  }

LABEL_54:
  CMSampleBufferGetOutputDuration(&sampleBufferOut, v12);
  v37 = 0;
  v58 = sampleBufferOut.value;
  timescale = sampleBufferOut.timescale;
  if (v15)
  {
    v39 = sampleBufferOut.flags;
    if (sampleBufferOut.flags)
    {
      v40 = sampleBufferOut.epoch;
      sampleBufferOut.value = v58;
      sampleBufferOut.timescale = timescale;
      lhs = **&MEMORY[0x1E6960CC0];
      if (CMTimeCompare(&sampleBufferOut, &lhs) < 1)
      {
        v37 = 0;
      }

      else
      {
        lhs.value = v60;
        lhs.timescale = v61;
        lhs.flags = v15;
        lhs.epoch = v16;
        rhs.value = v58;
        rhs.timescale = timescale;
        rhs.flags = v39;
        rhs.epoch = v40;
        CMTimeAdd(&sampleBufferOut, &lhs, &rhs);
        *(v7 + 44) = sampleBufferOut;
        v41 = *MEMORY[0x1E695E480];
        sampleBufferOut.value = v60;
        sampleBufferOut.timescale = v61;
        sampleBufferOut.flags = v15;
        sampleBufferOut.epoch = v16;
        v37 = CMTimeCopyAsDictionary(&sampleBufferOut, v41);
        CMSetAttachment(v12, @"MediaPresentationTimeStamp", v37, 0);
      }
    }
  }

  v42 = CMBaseObjectGetDerivedStorage();
  *&sampleBufferOut.value = v51;
  sampleBufferOut.epoch = v6;
  CMSampleBufferGetPresentationTimeStamp(&lhs, v12);
  v64 = lhs.value;
  v43 = lhs.flags;
  v65 = lhs.timescale;
  v44 = lhs.epoch;
  CMSampleBufferGetDuration(&lhs, v12);
  v62 = lhs.value;
  v63 = lhs.timescale;
  if (v43)
  {
    v45 = lhs.flags;
    v46 = lhs.epoch;
    FigSimpleMutexLock();
    lhs = *(v42 + 192);
    rhs.value = v64;
    rhs.timescale = v65;
    rhs.flags = v43;
    rhs.epoch = v44;
    CMTimeAdd(&sampleBufferOut, &lhs, &rhs);
    if ((*(v42 + 228) & 1) == 0)
    {
      *(v42 + 216) = v64;
      *(v42 + 224) = v65;
      *(v42 + 228) = v43;
      *(v42 + 232) = v44;
    }

    v54.epoch = v46;
    rhs.value = v64;
    rhs.timescale = v65;
    rhs.flags = v43;
    rhs.epoch = v44;
    v54.value = v62;
    v54.timescale = v63;
    v54.flags = v45;
    CMTimeAdd(&lhs, &rhs, &v54);
    *(v42 + 240) = lhs;
    if ((*(v42 + 276) & 1) == 0)
    {
      *(v42 + 264) = sampleBufferOut;
    }

    rhs = sampleBufferOut;
    v54.value = v62;
    v54.timescale = v63;
    v54.flags = v45;
    v54.epoch = v46;
    CMTimeAdd(&lhs, &rhs, &v54);
    *(v42 + 288) = lhs;
    rhs = *(v42 + 312);
    v54.value = v62;
    v54.timescale = v63;
    v54.flags = v45;
    v54.epoch = v46;
    CMTimeAdd(&lhs, &rhs, &v54);
    *(v42 + 312) = lhs;
    FigSimpleMutexUnlock();
  }

  v47 = *(v7 + 8);
  if (v47)
  {
    v47(*(v7 + 16), 0, v12);
  }

  FigSimpleMutexLock();
  CMSampleBufferGetOutputDuration(&lhs, v12);
  rhs = *(v7 + 168);
  CMTimeAdd(&sampleBufferOut, &rhs, &lhs);
  *(v7 + 168) = sampleBufferOut;
  FigSimpleMutexUnlock();
  value_low = 0;
LABEL_68:
  CFRelease(v12);
  if (v28)
  {
    CFRelease(v28);
  }

  if (v37)
  {
    v29 = v37;
    goto LABEL_72;
  }

  return value_low;
}

void fbarp_postNotificationSync(const void *a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  CFRetain(a1);
  v5 = *(DerivedStorage + 336);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = __fbarp_postNotificationSync_block_invoke;
  block[3] = &__block_descriptor_tmp_77_2;
  block[4] = a2;
  block[5] = a1;
  block[6] = 0;
  dispatch_sync(v5, block);
}

void fbarp_postNotification(const void *a1, uint64_t a2, const void *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a3)
  {
    CFRetain(a3);
  }

  CFRetain(a1);
  v7 = *(DerivedStorage + 336);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = __fbarp_postNotification_block_invoke;
  block[3] = &__block_descriptor_tmp_79_0;
  block[4] = a2;
  block[5] = a1;
  block[6] = a3;
  dispatch_async(v7, block);
}

void __fbarp_postNotificationSync_block_invoke(void *a1)
{
  CMNotificationCenterGetDefaultLocalCenter();
  CMNotificationCenterPostNotification();
  v2 = a1[5];

  fbarp_releaseAsync(v2);
}

void fbarp_releaseAsync(uint64_t a1)
{
  global_queue = dispatch_get_global_queue(0, 0);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = __fbarp_releaseAsync_block_invoke;
  block[3] = &__block_descriptor_tmp_78_1;
  block[4] = a1;
  dispatch_async(global_queue, block);
}

void __fbarp_postNotification_block_invoke(void *a1)
{
  CMNotificationCenterGetDefaultLocalCenter();
  CMNotificationCenterPostNotification();
  v2 = a1[6];
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = a1[5];

  fbarp_releaseAsync(v3);
}

__CFString *FigCaptionRendererActionCopyDebugDescription(uint64_t a1)
{
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  CFStringAppendFormat(Mutable, 0, @"\tFigCaptionRendererAction: <%p>", a1);
  return Mutable;
}

__CFString *FigCaptionRendererAction_FigCaptionRendererActionProtocol_CopyDebugDescription(uint64_t a1)
{
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  CFStringAppendFormat(Mutable, 0, @"\tFigCaptionRendererAction <FigCaptionRendererActionProtocol> on <%p>", a1);
  return Mutable;
}

uint64_t RegisterFigCaptionRendererActionBaseType(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  CMBaseGetClassID();

  return FigBaseClassRegisterClass();
}

void FigCaptionRendererMoveToActionFinalize(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*DerivedStorage)
  {
    CFRelease(*DerivedStorage);
    *DerivedStorage = 0;
  }
}

__CFString *FigCaptionRendererMoveToActionCopyDebugDescription(uint64_t a1)
{
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  CFStringAppendFormat(Mutable, 0, @"\tFigCaptionRendererMoveToAction: <%p>", a1);
  return Mutable;
}

__CFString *FigCaptionRendererMoveToAction_FigCaptionRendererBaseProtocol_CopyDebugDescription(uint64_t a1)
{
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  CFStringAppendFormat(Mutable, 0, @"\tFigCaptionRendererMoveToAction <FigCaptionRendererBaseProtocol> on <%p>", a1);
  return Mutable;
}

__CFString *FigCaptionRendererMoveToAction_FigCaptionRendererActionProtocol_CopyDebugDescription(uint64_t a1)
{
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  CFStringAppendFormat(Mutable, 0, @"\tFigCaptionRendererMoveToAction <FigCaptionRendererActionProtocol> on <%p>", a1);
  return Mutable;
}

uint64_t FigCaptionRendererMoveToAction_FigCaptionRendererActionProtocol_GetDuration(uint64_t a1, uint64_t a2)
{
  v3 = *CMBaseObjectGetDerivedStorage();
  FigCaptionRendererActionProtocolGetProtocolID();
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

uint64_t FigCaptionRendererMoveToAction_FigCaptionRendererActionProtocol_SetDuration(uint64_t a1, uint64_t a2)
{
  v3 = *CMBaseObjectGetDerivedStorage();
  FigCaptionRendererActionProtocolGetProtocolID();
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

__CFString *FigCaptionRendererMoveToAction_FigCaptionRendererMoveToActionProtocol_CopyDebugDescription(uint64_t a1)
{
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  CFStringAppendFormat(Mutable, 0, @"\tFigCaptionRendererMoveToAction <FigCaptionRendererMoveToActionProtocol> on <%p>", a1);
  return Mutable;
}

uint64_t FigCaptionRendererMoveToAction_FigCaptionRendererMoveToActionProtocol_SetTargetPosition(uint64_t a1, double a2, double a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  *(DerivedStorage + 8) = a2;
  *(DerivedStorage + 16) = a3;
  return 0;
}

uint64_t RegisterFigCaptionRendererMoveToActionBaseType(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  CMBaseGetClassID();

  return FigBaseClassRegisterClass();
}

uint64_t RegisterFigCaptionClientType()
{
  result = _CFRuntimeRegisterClass();
  sFigCaptionClientID = result;
  return result;
}

uint64_t FVDUtilsCanMirrorDisplayWithID(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  if (FVDUtilsCanMirrorDisplayWithID_once != -1)
  {
    FVDUtilsCanMirrorDisplayWithID_cold_1();
  }

  v2 = 1;
  if (a1 >= 2 && FVDUtilsCanMirrorDisplayWithID_allowFVDMirrorIDChecks)
  {
    v3 = objc_autoreleasePoolPush();
    v4 = [objc_msgSend(MEMORY[0x1E6979550] "serverIfRunning")];
    if (!v4 || (v5 = v4, !FVDUtilsCanMirrorDisplayWithID_allowFVDSource) && [v4 displayType] == 2 || ((objc_msgSend(v5, "bounds"), v7 == *MEMORY[0x1E695F060]) ? (v8 = v6 == *(MEMORY[0x1E695F060] + 8)) : (v8 = 0), v8 || objc_msgSend(v5, "cloneMaster")))
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
      v2 = 0;
    }

    else
    {
      v2 = 1;
    }

    objc_autoreleasePoolPop(v3);
  }

  return v2;
}

uint64_t __FVDUtilsCanMirrorDisplayWithID_block_invoke()
{
  FVDUtilsCanMirrorDisplayWithID_allowFVDSource = FigVirtualDisplayPrefsGetBooleanWithDefault(@"allow_fvd_as_mirroring_source", FVDUtilsCanMirrorDisplayWithID_allowFVDSource);
  result = FigVirtualDisplayPrefsGetBooleanWithDefault(@"check_for_valid_mirror_id", FVDUtilsCanMirrorDisplayWithID_allowFVDMirrorIDChecks);
  FVDUtilsCanMirrorDisplayWithID_allowFVDMirrorIDChecks = result;
  return result;
}

uint64_t FVDUtilsH264EncoderSupports444(uint64_t a1, uint64_t a2)
{
  if (FVDUtilsH264EncoderSupports444_once != -1)
  {
    FVDUtilsH264EncoderSupports444_cold_1();
  }

  return FVDUtilsH264EncoderSupports444_result;
}

void __FVDUtilsH264EncoderSupports444_block_invoke()
{
  v11 = *MEMORY[0x1E69E9840];
  v9 = 16;
  if (isAppleVirtualDevice_once != -1)
  {
    __FVDUtilsH264EncoderSupports444_block_invoke_cold_1();
  }

  if (isAppleVirtualDevice_result)
  {
    FVDUtilsH264EncoderSupports444_result = 1;
  }

  else
  {
    v0 = 0;
    v1 = *MEMORY[0x1E696CD60];
    for (i = 1; ; i = 0)
    {
      v3 = i;
      v4 = IOServiceMatching(FVDUtilsH264EncoderSupports444_drivers[v0]);
      MatchingService = IOServiceGetMatchingService(v1, v4);
      if (MatchingService)
      {
        break;
      }

      v0 = 1;
      if ((v3 & 1) == 0)
      {
        return;
      }
    }

    v6 = MatchingService;
    if (MEMORY[0x19A8D4570](MatchingService, "H264EncoderCanDo444", v10, &v9))
    {
      v7 = 1;
    }

    else
    {
      v7 = v9 == 0;
    }

    v8 = !v7 && strncasecmp(v10, "Yes", v9) == 0;
    FVDUtilsH264EncoderSupports444_result = v8;
    IOObjectRelease(v6);
  }
}

uint64_t FVDUtilsH264DecoderSupports444(uint64_t a1, uint64_t a2)
{
  if (FVDUtilsH264DecoderSupports444_once != -1)
  {
    FVDUtilsH264DecoderSupports444_cold_1();
  }

  return FVDUtilsH264DecoderSupports444_result;
}

void __FVDUtilsH264DecoderSupports444_block_invoke()
{
  v9 = *MEMORY[0x1E69E9840];
  v7 = 16;
  if (isAppleVirtualDevice_once != -1)
  {
    __FVDUtilsH264EncoderSupports444_block_invoke_cold_1();
  }

  if (isAppleVirtualDevice_result)
  {
    FVDUtilsH264DecoderSupports444_result = 1;
  }

  else
  {
    v0 = 0;
    v1 = *MEMORY[0x1E696CD60];
    while (1)
    {
      v2 = IOServiceMatching(FVDUtilsH264DecoderSupports444_drivers[v0]);
      MatchingService = IOServiceGetMatchingService(v1, v2);
      if (MatchingService)
      {
        break;
      }

      if (++v0 == 3)
      {
        return;
      }
    }

    v4 = MatchingService;
    if (MEMORY[0x19A8D4570](MatchingService, "H264DecoderCanDo444", v8, &v7))
    {
      v5 = 1;
    }

    else
    {
      v5 = v7 == 0;
    }

    v6 = !v5 && strncasecmp(v8, "Yes", v7) == 0;
    FVDUtilsH264DecoderSupports444_result = v6;
    IOObjectRelease(v4);
  }
}

uint64_t FVDUtilsH264EncoderSupports4K30(uint64_t a1, uint64_t a2)
{
  if (FVDUtilsH264EncoderSupports4K30_once != -1)
  {
    FVDUtilsH264EncoderSupports4K30_cold_1();
  }

  return FVDUtilsH264EncoderSupports4K30_result;
}

void __FVDUtilsH264EncoderSupports4K30_block_invoke()
{
  v8 = *MEMORY[0x1E69E9840];
  v6 = 16;
  if (isAppleVirtualDevice_once != -1)
  {
    __FVDUtilsH264EncoderSupports444_block_invoke_cold_1();
  }

  if (isAppleVirtualDevice_result)
  {
    FVDUtilsH264EncoderSupports4K30_result = 1;
  }

  else
  {
    v0 = *MEMORY[0x1E696CD60];
    v1 = IOServiceMatching("AppleAVE2Driver");
    MatchingService = IOServiceGetMatchingService(v0, v1);
    if (MatchingService)
    {
      v3 = MatchingService;
      if (MEMORY[0x19A8D4570](MatchingService, "H264EncoderCanDo4k30", v7, &v6))
      {
        v4 = 1;
      }

      else
      {
        v4 = v6 == 0;
      }

      v5 = !v4 && strncasecmp(v7, "Yes", v6) == 0;
      FVDUtilsH264EncoderSupports4K30_result = v5;
      IOObjectRelease(v3);
    }
  }
}

uint64_t FVDUtilsHEVCEncoderSupports4K60(uint64_t a1, uint64_t a2)
{
  if (FVDUtilsHEVCEncoderSupports4K60_once != -1)
  {
    FVDUtilsHEVCEncoderSupports4K60_cold_1();
  }

  return FVDUtilsHEVCEncoderSupports4K60_result;
}

void __FVDUtilsHEVCEncoderSupports4K60_block_invoke()
{
  v8 = *MEMORY[0x1E69E9840];
  v6 = 16;
  if (isAppleVirtualDevice_once != -1)
  {
    __FVDUtilsH264EncoderSupports444_block_invoke_cold_1();
  }

  if (isAppleVirtualDevice_result)
  {
    FVDUtilsHEVCEncoderSupports4K60_result = 1;
  }

  else
  {
    v0 = *MEMORY[0x1E696CD60];
    v1 = IOServiceMatching("AppleAVE2Driver");
    MatchingService = IOServiceGetMatchingService(v0, v1);
    if (MatchingService)
    {
      v3 = MatchingService;
      if (MEMORY[0x19A8D4570](MatchingService, "HEVCEncoderCanDo4k60", v7, &v6))
      {
        v4 = 1;
      }

      else
      {
        v4 = v6 == 0;
      }

      v5 = !v4 && strncasecmp(v7, "Yes", v6) == 0;
      FVDUtilsHEVCEncoderSupports4K60_result = v5;
      IOObjectRelease(v3);
    }
  }
}

uint64_t FVDUtilsHEVCEncoderSupports42010(uint64_t a1, uint64_t a2)
{
  if (FVDUtilsHEVCEncoderSupports4K60_once != -1)
  {
    FVDUtilsHEVCEncoderSupports4K60_cold_1();
  }

  return FVDUtilsHEVCEncoderSupports4K60_result;
}

uint64_t FVDUtilsHEVCEncoderSupports44410(uint64_t a1, uint64_t a2)
{
  if (FVDUtilsHEVCEncoderSupports4K60_once != -1)
  {
    FVDUtilsHEVCEncoderSupports4K60_cold_1();
  }

  return FVDUtilsHEVCEncoderSupports4K60_result;
}

uint64_t FVDUtilsHEVCDecodeSupported(uint64_t a1, uint64_t a2)
{
  if (FVDUtilsHEVCDecodeSupported_once != -1)
  {
    FVDUtilsHEVCDecodeSupported_cold_1();
  }

  return FVDUtilsHEVCDecodeSupported_result;
}

void __FVDUtilsHEVCDecodeSupported_block_invoke()
{
  v11 = *MEMORY[0x1E69E9840];
  if (isAppleVirtualDevice_once != -1)
  {
    __FVDUtilsH264EncoderSupports444_block_invoke_cold_1();
  }

  if (isAppleVirtualDevice_result)
  {
    FVDUtilsHEVCDecodeSupported_result = 1;
  }

  else
  {
    v0 = 0;
    v1 = 1;
    v2 = *MEMORY[0x1E696CD60];
    do
    {
      v3 = v1;
      v9 = 16;
      v4 = IOServiceMatching(FVDUtilsHEVCDecodeSupported_drivers[v0]);
      MatchingService = IOServiceGetMatchingService(v2, v4);
      if (MatchingService)
      {
        v6 = MatchingService;
        v7 = MEMORY[0x19A8D4570](MatchingService, "HEVCSupported", v10, &v9) || v9 == 0;
        v8 = !v7 && strncasecmp(v10, "Yes", v9) == 0;
        FVDUtilsHEVCDecodeSupported_result = v8;
        IOObjectRelease(v6);
        if (FVDUtilsHEVCDecodeSupported_result)
        {
          break;
        }
      }

      v1 = 0;
      v0 = 1;
    }

    while ((v3 & 1) != 0);
  }
}

uint64_t FVDUtilsAGXPixelFormatsSupported(uint64_t a1, uint64_t a2)
{
  if (FVDUtilsAGXPixelFormatsSupported_once != -1)
  {
    FVDUtilsAGXPixelFormatsSupported_cold_1();
  }

  return FVDUtilsAGXPixelFormatsSupported_result;
}

uint64_t FVDUtilsMainDisplaySupportsExtendedColor(uint64_t a1, uint64_t a2)
{
  if (FVDUtilsMainDisplaySupportsExtendedColor_once != -1)
  {
    FVDUtilsMainDisplaySupportsExtendedColor_cold_1();
  }

  return FVDUtilsMainDisplaySupportsExtendedColor_result;
}

uint64_t __FVDUtilsMainDisplaySupportsExtendedColor_block_invoke()
{
  result = CelestialIsAppleTV();
  if (!result)
  {
    result = MGGetBoolAnswer();
    FVDUtilsMainDisplaySupportsExtendedColor_result = result;
  }

  return result;
}

uint64_t FVDUtilsEncoderCodecSupported(int a1)
{
  listOfVideoEncodersOut = 0;
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  CFDictionarySetValue(Mutable, *MEMORY[0x1E6984230], *MEMORY[0x1E695E4D0]);
  if (VTCopyVideoEncoderList(Mutable, &listOfVideoEncodersOut))
  {
    v3 = 1;
  }

  else
  {
    v3 = listOfVideoEncodersOut == 0;
  }

  if (v3 || (Count = CFArrayGetCount(listOfVideoEncodersOut), Count < 1))
  {
LABEL_9:
    v7 = 0;
    if (!Mutable)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  v5 = Count;
  v6 = 0;
  while (1)
  {
    CFArrayGetValueAtIndex(listOfVideoEncodersOut, v6);
    FigCFDictionaryGetInt32IfPresent();
    if (!a1)
    {
      break;
    }

    if (v5 == ++v6)
    {
      goto LABEL_9;
    }
  }

  v7 = 1;
  if (Mutable)
  {
LABEL_10:
    CFRelease(Mutable);
  }

LABEL_11:
  if (listOfVideoEncodersOut)
  {
    CFRelease(listOfVideoEncodersOut);
  }

  return v7;
}

uint64_t FVDUtilsSupportedProtectionFlags(char a1)
{
  v3 = *MEMORY[0x1E69E9840];
  if ((0x8Bu >> (a1 & 7)))
  {
    return qword_196E79058[a1 & 7];
  }

  os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
  os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
  fig_log_call_emit_and_clean_up_after_send_and_compose();
  return 0;
}

uint64_t FVDUtilsEncryptedEncodeSupported(uint64_t a1, uint64_t a2)
{
  if (FVDUtilsEncryptedEncodeSupported_once != -1)
  {
    FVDUtilsEncryptedEncodeSupported_cold_1();
  }

  return FVDUtilsEncryptedEncodeSupported_result;
}

uint64_t __FVDUtilsEncryptedEncodeSupported_block_invoke()
{
  result = FVDUtilsEncoderCodecSupported(1869117027);
  FVDUtilsEncryptedEncodeSupported_result = result;
  return result;
}

uint64_t FVDUtilsEncryptedDecodeSupported(uint64_t a1, uint64_t a2)
{
  if (FVDUtilsEncryptedDecodeSupported_once != -1)
  {
    FVDUtilsEncryptedDecodeSupported_cold_1();
  }

  return FVDUtilsEncryptedDecodeSupported_result;
}

void __FVDUtilsEncryptedDecodeSupported_block_invoke(uint64_t result, uint64_t a2)
{
  if (FVDUtilsHEVCDecodeSupported_once != -1)
  {
    FVDUtilsHEVCDecodeSupported_cold_1();
  }

  FVDUtilsEncryptedDecodeSupported_result = FVDUtilsHEVCDecodeSupported_result;
}

CFStringRef FVDUtilsCreateDisplayUUID()
{
  v3 = *MEMORY[0x1E69E9840];
  memset(out, 0, sizeof(out));
  memset(v1, 0, sizeof(v1));
  uuid_generate_random(out);
  uuid_unparse(out, v1);
  return CFStringCreateWithCString(*MEMORY[0x1E695E480], v1, 0x8000100u);
}

uint64_t FVDUtilsLoadVCPEncoder()
{
  v2 = *MEMORY[0x1E69E9840];
  if (FVDUtilsLoadVCPEncoder_once != -1)
  {
    FVDUtilsLoadVCPEncoder_cold_1();
  }

  result = FVDUtilsLoadVCPEncoder_success;
  if (!FVDUtilsLoadVCPEncoder_success)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    return FVDUtilsLoadVCPEncoder_success;
  }

  return result;
}

void __FVDUtilsLoadVCPEncoder_block_invoke()
{
  if (!FigServer_IsServerProcess())
  {
    v0 = dlopen("/System/Library/PrivateFrameworks/VideoProcessing.framework/VideoProcessing", 4);
    if (v0)
    {
      v1 = dlsym(v0, "VPModuleInitialize");
      if (v1)
      {
        v1();
        v2 = 1;
LABEL_8:
        FVDUtilsLoadVCPEncoder_success = v2;
        return;
      }

      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    }

    else
    {
      v3 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);
    }

    fig_log_call_emit_and_clean_up_after_send_and_compose();
    v2 = 0;
    goto LABEL_8;
  }
}

CFStringRef FVDUtilsCreateLogPrefix(const __CFString *a1, unint64_t a2)
{
  if (!a1)
  {
    v4 = "";
    goto LABEL_7;
  }

  v3 = a1;
  v4 = "";
  if (CFStringGetLength(a1) < 1)
  {
LABEL_7:
    v3 = &stru_1F0B1AFB8;
    return CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"%s%@ [%04x]", v4, v3, (bswap64(0x8A970BE7488FDA55 * (a2 ^ (a2 >> 4))) ^ (-9643 * (a2 ^ (a2 >> 4)))));
  }

  if (CFStringGetCharacterAtIndex(v3, 0) != 32)
  {
    v4 = " ";
  }

  return CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"%s%@ [%04x]", v4, v3, (bswap64(0x8A970BE7488FDA55 * (a2 ^ (a2 >> 4))) ^ (-9643 * (a2 ^ (a2 >> 4)))));
}

uint64_t FVDUtilsGetTempDirectory(uint64_t a1, uint64_t a2)
{
  if (FVDUtilsGetTempDirectory_once != -1)
  {
    FVDUtilsGetTempDirectory_cold_1();
  }

  return FVDUtilsGetTempDirectory_tmpDir;
}

double __FVDUtilsGetTempDirectory_block_invoke(__n128 a1)
{
  v5 = *MEMORY[0x1E69E9840];
  v1 = FigVirtualDisplayPrefsCopyValue(@"fvd_tempdir_path");
  if (!v1)
  {
    v2 = NSTemporaryDirectory();
    if (v2)
    {
      v1 = v2;
    }

    else
    {
      v1 = @"/tmp";
    }

    CFRetain(v1);
  }

  FVDUtilsGetTempDirectory_tmpDir = CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"%@/", v1);
  CFRelease(v1);
  os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
  os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
  fig_log_call_emit_and_clean_up_after_send_and_compose();
  return result;
}

uint64_t __isAppleVirtualDevice_block_invoke()
{
  result = MGGetBoolAnswer();
  isAppleVirtualDevice_result = result;
  return result;
}

uint64_t FigAssetWatchdogMonitorCommonQueues()
{
  if (PerformURLAssetOneTimeInitialization_static_init != -1)
  {
    FigAssetWatchdogMonitorCommonQueues_cold_1();
  }

  FigWatchdogMonitorDispatchQueue();

  return FigWatchdogMonitorDispatchQueue();
}

uint64_t URLAssetCreateAssetTrack(uint64_t a1, const void *a2, const void *a3, const void *a4, const char *a5, NSObject *a6, char a7, char a8, const __CFDictionary *a9, char a10, char a11, CFTypeRef *a12)
{
  IsItOKToLogURLs = FigIsItOKToLogURLs();
  if (a11)
  {
    v20 = 1;
  }

  else
  {
    v20 = IsItOKToLogURLs == 0;
  }

  v21 = !v20;
  if (!a2)
  {
    URLAssetCreateAssetTrack_cold_5(&v37);
    return v37;
  }

  if (!a3)
  {
    URLAssetCreateAssetTrack_cold_4(&v37);
    return v37;
  }

  if (!a12)
  {
    URLAssetCreateAssetTrack_cold_3(&v37);
    return v37;
  }

  v36 = v21;
  FigAssetTrackGetClassID();
  v22 = CMDerivedObjectCreate();
  if (v22)
  {
    return v22;
  }

  v23 = a5;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v25 = CMBaseObjectGetDerivedStorage();
  CFGetAllocator(0);
  if (_MergedGlobals_115 != -1)
  {
    URLAssetCreateAssetTrack_cold_1();
  }

  Instance = _CFRuntimeCreateInstance();
  if (!Instance)
  {
    if (URLAssetCreateAssetTrack_cold_2(&v37))
    {
      goto LABEL_22;
    }

    return v37;
  }

  v27 = Instance;
  *(Instance + 16) = CFRetain(a2);
  *(v27 + 24) = CFRetain(a3);
  if (a4)
  {
    v28 = CFRetain(a4);
  }

  else
  {
    v28 = 0;
  }

  *(v27 + 32) = v28;
  *(v27 + 48) = a6;
  dispatch_retain(a6);
  *(v27 + 64) = a7;
  *(v27 + 65) = a8;
  strncpy((v27 + 80), v23, 0xAuLL);
  *(v27 + 90) = v36;
  v29 = dispatch_group_create();
  *(v25 + 24) = v29;
  *(v27 + 56) = v29;
  dispatch_retain(v29);
  AllPropertyKeys = FigAssetTrackGetAllPropertyKeys(v30, v31);
  PropertyStore = CreatePropertyStore(AllPropertyKeys, @"assetTrackNotice_PropertyFailedToLoad", @"assetTrackNotice_PropertyLoaded", @"assetTrackNotice_PropertyRevised", @"assetTrackNotice_BatchPropertyLoadComplete", a6, *(v25 + 24), URLAssetTrackPropertyWorkFunction, v27, (v25 + 8));
  if (PropertyStore)
  {
    goto LABEL_24;
  }

  FigCFWeakReferenceStore();
  if (a9)
  {
    CFDictionaryApplyFunction(a9, TrackMacroPropertyDefinitionApplierFunction, *(v25 + 8));
  }

  PropertyStore = CreateValidationStore(@"assetTrackNotice_ValidationComplete", a6, *(v25 + 24), URLAssetTrackValidationWorkFunction, v27, (v25 + 16));
  if (PropertyStore)
  {
LABEL_24:
    v34 = PropertyStore;
    CFRelease(v27);
    return v34;
  }

  *(v25 + 32) = a10;
  *DerivedStorage = v27;
LABEL_22:
  CMNotificationCenterGetDefaultLocalCenter();
  FigNotificationCenterAddWeakListener();
  CMNotificationCenterGetDefaultLocalCenter();
  FigNotificationCenterAddWeakListener();
  v34 = 0;
  *a12 = 0;
  return v34;
}

uint64_t URLAssetTrackSetComplainForSyncQueries(uint64_t a1, char a2)
{
  v3 = *(CMBaseObjectGetDerivedStorage() + 8);

  return PropertyStoreSetComplainForSyncQueries(v3, a2);
}

uint64_t FigAssetCreateWithURL(uint64_t a1, uint64_t a2, uint64_t a3, const __CFDictionary *a4, CFTypeRef *a5)
{
  v22 = *MEMORY[0x1E69E9840];
  IsItOKToLogURLs = FigIsItOKToLogURLs();
  v11 = (a3 & 0x200) == 0 && IsItOKToLogURLs != 0;
  if (PerformURLAssetOneTimeInitialization_static_init != -1)
  {
    FigAssetWatchdogMonitorCommonQueues_cold_1();
    if (a2)
    {
      goto LABEL_9;
    }

LABEL_28:
    FigAssetCreateWithURL_cold_2();
    v19 = v21;
LABEL_29:
    if (!a5)
    {
      return v19;
    }

    goto LABEL_24;
  }

  if (!a2)
  {
    goto LABEL_28;
  }

LABEL_9:
  if (!a5 || (a3 & 0xFFFFFFFFFFFFFCC2) != 0)
  {
    goto LABEL_28;
  }

  FigAssetGetClassID();
  InternalURLAsset = CMDerivedObjectCreate();
  if (InternalURLAsset)
  {
    goto LABEL_26;
  }

  if (!a4 || (DataValue = FigCFDictionaryGetDataValue()) == 0 || (v14 = FigCFHTTPCopyClientProcessName(DataValue)) == 0)
  {
    v14 = CFRetain(@"[]");
  }

  v15 = FigCopyRedactedURLFromURL();
  os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
  os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
  fig_log_call_emit_and_clean_up_after_send_and_compose();
  if (v15)
  {
    CFRelease(v15);
  }

  if (v14)
  {
    CFRelease(v14);
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  InternalURLAsset = CreateInternalURLAsset(0, a2, 0, 0, a3, a4, v11, DerivedStorage);
  if (InternalURLAsset)
  {
LABEL_26:
    v19 = InternalURLAsset;
    goto LABEL_29;
  }

  FigGetUpTimeNanoseconds();
  SInt64 = FigCFNumberCreateSInt64();
  InitializeProperty(DerivedStorage[1], @"assetProperty_CreationTime", 2, 0, SInt64);
  CMNotificationCenterGetDefaultLocalCenter();
  FigNotificationCenterAddWeakListener();
  CMNotificationCenterGetDefaultLocalCenter();
  FigNotificationCenterAddWeakListener();
  CMNotificationCenterGetDefaultLocalCenter();
  FigNotificationCenterAddWeakListener();
  if (SInt64)
  {
    CFRelease(SInt64);
  }

  v19 = 0;
LABEL_24:
  *a5 = 0;
  return v19;
}

uint64_t CreateInternalURLAsset(const void *a1, uint64_t a2, const void *a3, const void *a4, uint64_t a5, const __CFDictionary *a6, char a7, uint64_t *a8)
{
  v94 = *MEMORY[0x1E69E9840];
  valuePtr = a5;
  v92 = 0u;
  v93 = 0u;
  v90 = 0u;
  v91 = 0u;
  v88 = 0u;
  v89 = 0u;
  v86 = 0u;
  v87 = 0u;
  v84 = 0u;
  v85 = 0u;
  v83 = 0u;
  v81 = 0u;
  v82 = 0u;
  v79 = 0u;
  v80 = 0u;
  *__str = 0u;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  getpid();
  v74 = 0;
  v73 = 0;
  FigCFDictionaryGetBooleanIfPresent();
  if (!a4)
  {
    FigMediaparserdUtilities_EnsureProcessLaunched();
  }

  FigCFDictionaryGetInt32IfPresent();
  CFGetAllocator(a1);
  if (qword_1ED4CB868 != -1)
  {
    CreateInternalURLAsset_cold_1();
  }

  Instance = _CFRuntimeCreateInstance();
  if (!Instance)
  {
    CreateInternalURLAsset_cold_2(&bytes);
    return bytes;
  }

  v15 = Instance;
  v67 = a4;
  *(Instance + 80) = valuePtr;
  v16 = MEMORY[0x1E695E480];
  v66 = a8;
  theDict = a6;
  if (a6)
  {
    v17 = CFRetain(a6);
    *(v15 + 88) = v17;
    v18 = (v15 + 88);
    *(v15 + 618) = a7;
    v19 = (v15 + 592);
    *(v15 + 592) = 0;
    if (v17)
    {
      StringValue = FigCFDictionaryGetStringValue();
      if (StringValue)
      {
        v21 = StringValue;
        CFRetain(StringValue);
        v22 = CFGetTypeID(v21);
        if (v22 == CFStringGetTypeID())
        {
          v23 = *v16;
          goto LABEL_14;
        }
      }
    }
  }

  else
  {
    *(Instance + 88) = 0;
    v18 = (Instance + 88);
    *(Instance + 618) = a7;
    v19 = (Instance + 592);
    *(Instance + 592) = 0;
  }

  v23 = *v16;
  LoggingIdentifierOfLength = FigCFStringCreateLoggingIdentifierOfLength();
  v21 = CFStringCreateWithFormat(v23, 0, @"I/%@", LoggingIdentifierOfLength);
  if (LoggingIdentifierOfLength)
  {
    CFRelease(LoggingIdentifierOfLength);
  }

LABEL_14:
  v68 = v21;
  CFStringGetCString(v21, v19, 10, 0x600u);
  Mutable = CFDictionaryCreateMutable(v23, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (Mutable)
  {
    v26 = Mutable;
    v27 = CFStringCreateWithCString(v23, v19, 0x600u);
    FigCFDictionarySetValue();
    FigCFDictionarySetInt32();
    FigLogPowerEvent();
    CFRelease(v26);
    if (v27)
    {
      CFRelease(v27);
    }
  }

  *(v15 + 544) = FigOSTransactionCreate();
  snprintf(__str, 0x100uLL, "URLAssetWorkQueue.%s", v19);
  *(v15 + 96) = FigDispatchQueueCreateWithPriority();
  FigThreadMakeDispatchQueueAbortable();
  v28 = dispatch_group_create();
  *(DerivedStorage + 24) = v28;
  *(v15 + 104) = v28;
  dispatch_retain(v28);
  snprintf(__str, 0x100uLL, "URLAssetMiscQueue.%s", v19);
  *(v15 + 480) = FigDispatchQueueCreateWithPriority();
  v29 = CFUUIDCreate(v23);
  if (v29)
  {
    v30 = v29;
    *(v15 + 336) = CFUUIDCreateString(v23, v29);
    CFRelease(v30);
  }

  cf = 0;
  v31 = a1;
  if (*v18)
  {
    DataValue = FigCFDictionaryGetDataValue();
    v33 = FigCFHTTPCopyClientProcessName(DataValue);
    DictionaryValue = FigCFDictionaryGetDictionaryValue();
    FigRCLCreateConfiguration(v33, @"kFigRemoteConfigurationLoaderStoreBagType_Pump", DictionaryValue, &cf);
    v35 = v67;
    if (!v36 && (v37 = cf, _os_feature_enabled_impl()) && [objc_msgSend(MEMORY[0x1E69B7C10] "sharedInstance")] && ((FigRCLGetDoubleWithDefault(v37, @"ABRHistorySampleRate", 0.05), FigGetCFPreferenceDoubleWithDefault(), v39 = v38, FigDebugIsInternalBuild()) || v39 > 0.0 && (bytes = 0, SecRandomCopyBytes(*MEMORY[0x1E697B308], 8uLL, &bytes), (bytes & 0x7FFFFFFFFFFFFFFFLL) <= vcvtd_n_u64_f64(v39, 0x3FuLL))))
    {
      FigGetCFPreferenceDoubleWithDefault();
      v41 = CFAbsoluteTimeGetCurrent() - v40;
      FigRCLGetNumberWithDefault(v37, @"ABRSubmissionMinGapInHrs", 24);
      v42 = v41 >= FigGetCFPreferenceNumberWithDefault() * 3600.0;
    }

    else
    {
      v42 = 0;
    }

    v43 = a2;
    if (cf)
    {
      CFRelease(cf);
    }

    if (v33)
    {
      CFRelease(v33);
    }
  }

  else
  {
    v42 = 0;
    v35 = v67;
    v43 = a2;
  }

  *(v15 + 469) = v42;
  *(v15 + 136) = FigSimpleMutexCreate();
  Value = *(v15 + 88);
  v46 = MEMORY[0x1E695E4D0];
  if (Value)
  {
    v47 = FigCFDictionaryGetDictionaryValue();
    if (!v47 || (Value = CMTimeMakeFromDictionary(&v72, v47), (v72.flags & 0x1D) != 1))
    {
      Value = CFDictionaryGetValue(*(v15 + 88), @"assetOption_MakeReadAheadAssertionWhenCreatingByteStream");
      *(v15 + 216) = Value == *v46;
    }
  }

  AllPropertyKeys = FigAssetGetAllPropertyKeys(Value, v44);
  v49 = (DerivedStorage + 8);
  PropertyStore = CreatePropertyStore(AllPropertyKeys, @"assetNotice_PropertyFailedToLoad", @"assetNotice_PropertyLoaded", @"assetNotice_PropertyRevised", @"assetNotice_BatchPropertyLoadComplete", *(v15 + 96), *(DerivedStorage + 24), URLAssetPropertyWorkFunction, v15, (DerivedStorage + 8));
  if (PropertyStore)
  {
    goto LABEL_79;
  }

  FigCFWeakReferenceStore();
  PropertyStore = CreateTrackMacroPropertyState(v31, *v49, URLAssetCopyStoreForTrack, (v15 + 608));
  if (PropertyStore)
  {
    goto LABEL_79;
  }

  InitializeProperty(*v49, @"assetProperty_CreationOptionsDictionary", 2, 0, theDict);
  v51 = CFNumberCreate(v23, kCFNumberSInt64Type, &valuePtr);
  InitializeProperty(*v49, @"assetProperty_CreationFlags", 2, 0, v51);
  if (v51)
  {
    CFRelease(v51);
  }

  InitializeProperty(*v49, @"assetProperty_CreationURL", 2, 0, v43);
  InitializeProperty(*v49, @"assetProperty_InstanceUUID", 2, 0, *(v15 + 336));
  if (!v35)
  {
    if (*v18)
    {
      v53 = FigCFDictionaryGetStringValue();
      if (v53)
      {
        InternalURLAssetSetDeclaredAssetType(*v49, v15, v53);
      }
    }
  }

  if (!FigCFDictionaryGetBooleanIfPresent())
  {
    *(v15 + 617) = 0;
  }

  InternalURLAssetSetStorageSession(*(DerivedStorage + 8), v15);
  PropertyStore = CreateValidationStore(@"assetNotice_ValidationComplete", *(v15 + 96), *(v15 + 104), URLAssetValidationWorkFunction, v15, (DerivedStorage + 16));
  if (PropertyStore)
  {
    goto LABEL_79;
  }

  if (v43)
  {
    *(v15 + 64) = 1431456810;
    v52 = v43;
LABEL_51:
    *(v15 + 72) = CFRetain(v52);
    goto LABEL_52;
  }

  v52 = a3;
  if (a3)
  {
    *(v15 + 64) = 708989738;
    goto LABEL_51;
  }

  *(v15 + 64) = 709251626;
  if (v35)
  {
    v65 = CFRetain(v35);
  }

  else
  {
    v65 = 0;
  }

  *(v15 + 72) = v65;
  InitializeProperty(*v49, @"assetProperty_FormatReader", 2, 0, v35);
LABEL_52:
  bytes = 0;
  v54 = *(v15 + 64);
  if (v54 != 708989738)
  {
    v55 = v66;
    if (v54 == 1431456810)
    {
      v56 = *(v15 + 72);
      if (v56)
      {
        v56 = CFRetain(v56);
      }

      bytes = v56;
      if (v56)
      {
        goto LABEL_57;
      }
    }

LABEL_61:
    v57 = 0;
    goto LABEL_63;
  }

  CMBaseObject = CMByteStreamGetCMBaseObject();
  v59 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v59)
  {
    v57 = 0;
    v55 = v66;
    goto LABEL_63;
  }

  v59(CMBaseObject, *MEMORY[0x1E695FFA0], v23, &bytes);
  v56 = bytes;
  v55 = v66;
  if (!bytes)
  {
    goto LABEL_61;
  }

LABEL_57:
  v57 = FigCFHTTPIsHTTPBasedURL(v56);
  if (bytes)
  {
    CFRelease(bytes);
  }

LABEL_63:
  *(v15 + 616) = v57;
  PropertyStore = InternalURLAssetCreateByteStreamProvider(v15);
  if (!PropertyStore)
  {
    InitializeProperty(*v49, @"assetProperty_ByteStreamProvider", 2, 0, *(v15 + 488));
    *(v15 + 56) = FigSimpleMutexCreate();
    InitializeProperty(*v49, @"assetProperty_DownloadToken", 2, 0, *v46);
    FigCFWeakReferenceInit();
    FigDispatchOnceInitWithinObject();
    if (*(v15 + 88))
    {
      v60 = CFDictionaryGetValue(theDict, @"assetOption_CustomURLLoader");
      if (v60)
      {
        v61 = CFRetain(v60);
      }

      else
      {
        v61 = 0;
      }

      v62 = v68;
      *(v15 + 496) = v61;
    }

    else
    {
      v61 = *(v15 + 496);
      v62 = v68;
    }

    InitializeProperty(*v49, @"assetProperty_CustomURLLoader", 2, 0, v61);
    InitializeProperty(*v49, @"assetProperty_DownloadToDestinationResult", 2, 0, 0);
    v63 = 0;
    *v55 = v15;
    v15 = 0;
    if (!v62)
    {
      goto LABEL_72;
    }

    goto LABEL_71;
  }

LABEL_79:
  v63 = PropertyStore;
  v62 = v68;
  if (v68)
  {
LABEL_71:
    CFRelease(v62);
  }

LABEL_72:
  if (v15)
  {
    CFRelease(v15);
  }

  return v63;
}

uint64_t FigAssetCreateWithByteStream(uint64_t a1, const void *a2, uint64_t a3, const __CFDictionary *a4, void *a5)
{
  IsItOKToLogURLs = FigIsItOKToLogURLs();
  v11 = (a3 & 0x200) == 0 && IsItOKToLogURLs != 0;
  if (PerformURLAssetOneTimeInitialization_static_init != -1)
  {
    FigAssetWatchdogMonitorCommonQueues_cold_1();
    if (a2)
    {
      goto LABEL_9;
    }

LABEL_17:
    v12 = v16;
    if (FigAssetCreateWithByteStream_cold_4())
    {
      return v12;
    }

    goto LABEL_14;
  }

  if (!a2)
  {
    goto LABEL_17;
  }

LABEL_9:
  if (!a5)
  {
    FigAssetCreateWithByteStream_cold_3(&v16);
    return v16;
  }

  if ((a3 & 0xFFFFFFFFFFFFFCC2) != 0)
  {
    FigAssetCreateWithByteStream_cold_2(&v16);
    v12 = v16;
  }

  else
  {
    FigAssetGetClassID();
    v12 = CMDerivedObjectCreate();
    if (!v12)
    {
      DerivedStorage = CMBaseObjectGetDerivedStorage();
      InternalURLAsset = CreateInternalURLAsset(0, 0, a2, 0, a3, a4, v11, DerivedStorage);
      if (InternalURLAsset)
      {
        v12 = InternalURLAsset;
      }

      else
      {
        CMNotificationCenterGetDefaultLocalCenter();
        FigNotificationCenterAddWeakListener();
        CMNotificationCenterGetDefaultLocalCenter();
        FigNotificationCenterAddWeakListener();
        CMNotificationCenterGetDefaultLocalCenter();
        FigNotificationCenterAddWeakListener();
        v12 = 0;
      }
    }
  }

LABEL_14:
  *a5 = 0;
  return v12;
}

uint64_t FigAssetCreateWithFormatReader(uint64_t a1, const void *a2, uint64_t a3, const __CFDictionary *a4, void *a5)
{
  cf = 0;
  v21 = 0;
  IsItOKToLogURLs = FigIsItOKToLogURLs();
  v11 = (a3 & 0x200) == 0 && IsItOKToLogURLs != 0;
  if (PerformURLAssetOneTimeInitialization_static_init != -1)
  {
    FigAssetWatchdogMonitorCommonQueues_cold_1();
    if (a2)
    {
      goto LABEL_9;
    }

LABEL_24:
    FigAssetCreateWithURL_cold_2();
    v17 = v22;
LABEL_25:
    v18 = v21;
    if (!a5)
    {
      return v17;
    }

    goto LABEL_20;
  }

  if (!a2)
  {
    goto LABEL_24;
  }

LABEL_9:
  if (!a5 || (a3 & 0xFFFFFFFFFFFFFCC2) != 0)
  {
    goto LABEL_24;
  }

  FigAssetGetClassID();
  InternalURLAsset = CMDerivedObjectCreate();
  if (InternalURLAsset || (DerivedStorage = CMBaseObjectGetDerivedStorage(), InternalURLAsset = CreateInternalURLAsset(v21, 0, 0, a2, a3, a4, v11, DerivedStorage), InternalURLAsset))
  {
    v17 = InternalURLAsset;
    goto LABEL_25;
  }

  FigFormatReaderGetFigBaseObject();
  v15 = v14;
  v16 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v16)
  {
    v16(v15, @"CanMutate", *MEMORY[0x1E695E480], &cf);
    v16 = cf;
  }

  if (v16 == *MEMORY[0x1E695E4D0])
  {
    *(*DerivedStorage + 464) = 1;
  }

  CMNotificationCenterGetDefaultLocalCenter();
  FigNotificationCenterAddWeakListener();
  CMNotificationCenterGetDefaultLocalCenter();
  FigNotificationCenterAddWeakListener();
  CMNotificationCenterGetDefaultLocalCenter();
  FigNotificationCenterAddWeakListener();
  if (cf)
  {
    CFRelease(cf);
  }

  v17 = 0;
  v18 = v21;
LABEL_20:
  *a5 = v18;
  return v17;
}

uint64_t FigAssetCreateWithMovieProxyData(const __CFAllocator *a1, CFDataRef theData, uint64_t a3, uint64_t a4, void *a5)
{
  if (PerformURLAssetOneTimeInitialization_static_init == -1)
  {
    if (theData)
    {
      goto LABEL_3;
    }

LABEL_26:
    FigAssetCreateWithMovieProxyData_cold_7(&v22);
    return v22;
  }

  FigAssetWatchdogMonitorCommonQueues_cold_1();
  if (!theData)
  {
    goto LABEL_26;
  }

LABEL_3:
  if (!CFDataGetLength(theData))
  {
    FigAssetCreateWithMovieProxyData_cold_6(&v22);
    return v22;
  }

  if (!a5)
  {
    FigAssetCreateWithMovieProxyData_cold_5(&v22);
    return v22;
  }

  MutableCopy = FigCFDictionaryCreateMutableCopy();
  if (!MutableCopy)
  {
    FigAssetCreateWithMovieProxyData_cold_4(&v22);
    return v22;
  }

  v10 = MutableCopy;
  StringValue = FigCFDictionaryGetStringValue();
  if (StringValue)
  {
    v12 = CFRetain(StringValue);
  }

  else
  {
    v12 = 0;
  }

  CFDictionarySetValue(v10, @"assetOption_IsMovieProxy", *MEMORY[0x1E695E4D0]);
  BlockBufferWithCFDataNoCopy = FigCreateBlockBufferWithCFDataNoCopy();
  if (!BlockBufferWithCFDataNoCopy)
  {
    BlockBufferWithCFDataNoCopy = CMByteStreamCreateForBlockBuffer();
    if (!BlockBufferWithCFDataNoCopy)
    {
      if (v12 || (v12 = CFStringCreateWithFormat(a1, 0, @"MovieProxy_%p-%p.mov", theData, 0)) != 0)
      {
        v14 = CFURLCreateWithFileSystemPath(a1, v12, kCFURLPOSIXPathStyle, 0);
        if (v14)
        {
          v15 = v14;
          CMBaseObject = CMByteStreamGetCMBaseObject();
          v17 = *(*(CMBaseObjectGetVTable() + 8) + 56);
          if (v17)
          {
            v18 = v17(CMBaseObject, *MEMORY[0x1E695FFA0], v15);
            if (!v18)
            {
              v18 = FigAssetCreateWithByteStream(a1, 0, a3, v10, a5);
            }

            v19 = v18;
          }

          else
          {
            v19 = 4294954514;
          }

          CFRelease(v12);
          v20 = v15;
          goto LABEL_20;
        }

        FigAssetCreateWithMovieProxyData_cold_2();
      }

      else
      {
        FigAssetCreateWithMovieProxyData_cold_3(&v22);
      }

      v19 = v22;
      goto LABEL_21;
    }
  }

  v19 = BlockBufferWithCFDataNoCopy;
  if (!v12)
  {
    goto LABEL_21;
  }

  v20 = v12;
LABEL_20:
  CFRelease(v20);
LABEL_21:
  CFRelease(v10);
  return v19;
}

uint64_t FigAssetCreatePListFromOptionsDict(void *a1, void *a2)
{
  if (!a2)
  {
    FigAssetCreatePListFromOptionsDict_cold_2(&v20);
    MutableCopy = 0;
    v13 = v20;
    goto LABEL_23;
  }

  MutableCopy = a1;
  if (!a1)
  {
    goto LABEL_22;
  }

  URLValue = FigCFDictionaryGetURLValue();
  v5 = FigCFDictionaryGetURLValue();
  DictionaryValue = FigCFDictionaryGetDictionaryValue();
  v7 = FigCFDictionaryGetURLValue();
  if (URLValue)
  {
    v8 = 0;
  }

  else
  {
    v8 = v5 == 0;
  }

  if (v8 && v7 == 0)
  {
    MutableCopy = CFRetain(MutableCopy);
    goto LABEL_22;
  }

  v10 = v7;
  allocator = *MEMORY[0x1E695E480];
  MutableCopy = CFDictionaryCreateMutableCopy(*MEMORY[0x1E695E480], 0, MutableCopy);
  if (!MutableCopy)
  {
    FigAssetCreatePListFromOptionsDict_cold_1(&v19);
    v13 = v19;
    goto LABEL_23;
  }

  if (URLValue)
  {
    FigReplaceURLWithString();
  }

  if (v5)
  {
    FigReplaceURLWithString();
  }

  if (v10)
  {
    v11 = CFDictionaryCreateMutableCopy(allocator, 0, DictionaryValue);
    if (!v11)
    {
      fig_log_get_emitter();
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v16, allocator, v18);
      v13 = v15;
      if (!v15)
      {
        goto LABEL_23;
      }

      CFRelease(MutableCopy);
      goto LABEL_20;
    }

    v12 = v11;
    FigReplaceURLWithString();
    CFDictionarySetValue(MutableCopy, @"assetOption_ContentProtectionOptions", v12);
    CFRelease(v12);
  }

  if (CFDictionaryGetCount(MutableCopy))
  {
LABEL_22:
    v13 = 0;
    goto LABEL_23;
  }

  CFRelease(MutableCopy);
  v13 = 0;
LABEL_20:
  MutableCopy = 0;
LABEL_23:
  *a2 = MutableCopy;
  return v13;
}

uint64_t FigAssetCreateOptionsDictFromPList(const void *a1, __CFDictionary **a2)
{
  if (!a1 || (v4 = CFGetTypeID(a1), v4 != CFDictionaryGetTypeID()))
  {
    FigAssetCreateOptionsDictFromPList_cold_3(v19);
    MutableCopy = 0;
    v14 = v19[0];
    goto LABEL_17;
  }

  if (!a2)
  {
    FigAssetCreateOptionsDictFromPList_cold_2(&v18);
    MutableCopy = 0;
    v14 = v18;
    goto LABEL_17;
  }

  StringValue = FigCFDictionaryGetStringValue();
  v6 = FigCFDictionaryGetStringValue();
  DictionaryValue = FigCFDictionaryGetDictionaryValue();
  v8 = FigCFDictionaryGetStringValue();
  v9 = v8;
  if (!StringValue && !v6 && !v8)
  {
    MutableCopy = CFRetain(a1);
LABEL_16:
    v14 = 0;
    goto LABEL_17;
  }

  v11 = *MEMORY[0x1E695E480];
  MutableCopy = CFDictionaryCreateMutableCopy(*MEMORY[0x1E695E480], 0, a1);
  if (!MutableCopy)
  {
    FigAssetCreateOptionsDictFromPList_cold_1(&v17 + 1);
    v14 = HIDWORD(v17);
    goto LABEL_17;
  }

  if (StringValue)
  {
    FigReplaceStringWithURL();
  }

  if (v6)
  {
    FigReplaceStringWithURL();
  }

  if (!v9)
  {
    goto LABEL_16;
  }

  v12 = CFDictionaryCreateMutableCopy(v11, 0, DictionaryValue);
  if (v12)
  {
    v13 = v12;
    FigReplaceStringWithURL();
    CFDictionarySetValue(MutableCopy, @"assetOption_ContentProtectionOptions", v13);
    CFRelease(v13);
    goto LABEL_16;
  }

  fig_log_get_emitter();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v17, v18, v19[1]);
  v14 = v16;
  if (v16)
  {
    CFRelease(MutableCopy);
    MutableCopy = 0;
  }

LABEL_17:
  *a2 = MutableCopy;
  return v14;
}

uint64_t InitializeURLAsset()
{
  gCommonAssetNotificationQueue = FigDispatchQueueCreateWithPriority();
  result = FigDispatchQueueCreateWithPriority();
  gCommonAssetTrackNotificationQueue = result;
  return result;
}

void URLAssetTrackFinalize(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  CMNotificationCenterGetDefaultLocalCenter();
  FigNotificationCenterRemoveWeakListener();
  CMNotificationCenterGetDefaultLocalCenter();
  FigNotificationCenterRemoveWeakListener();
  v2 = *(DerivedStorage + 8);
  if (v2)
  {
    CFRelease(v2);
    *(DerivedStorage + 8) = 0;
  }

  v3 = *(DerivedStorage + 16);
  if (v3)
  {
    CFRelease(v3);
    *(DerivedStorage + 16) = 0;
  }

  if (*DerivedStorage)
  {
    CFRelease(*DerivedStorage);
    *DerivedStorage = 0;
  }

  v4 = *(DerivedStorage + 24);
  if (v4)
  {
    dispatch_group_wait(v4, 0xFFFFFFFFFFFFFFFFLL);
    v5 = *(DerivedStorage + 24);
    if (v5)
    {
      dispatch_release(v5);
      *(DerivedStorage + 24) = 0;
    }
  }
}

__CFString *URLAssetTrackCopyDebugDescription(const void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  v4 = CFCopyDescription(*DerivedStorage);
  v5 = CFCopyDescription(DerivedStorage[1]);
  v6 = CFCopyDescription(DerivedStorage[2]);
  v7 = CFGetRetainCount(a1);
  CFStringAppendFormat(Mutable, 0, @"<FigURLAssetTrack %p> RC %d {%@} {%@} {%@}", a1, v7, v4, v5, v6);
  if (v4)
  {
    CFRelease(v4);
  }

  if (v5)
  {
    CFRelease(v5);
  }

  if (v6)
  {
    CFRelease(v6);
  }

  return Mutable;
}

uint64_t URLAssetTrackCopyPropertyAndBlockageWarning(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, CFStringRef *a5)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a2)
  {
    if (a4)
    {
      *a4 = 0;
      if (*(DerivedStorage + 32))
      {
        v9 = a5;
      }

      else
      {
        v9 = 0;
      }

      v10 = *(DerivedStorage + 8);

      return ObtainPropertySync(v10, a2, a4, v9);
    }

    else
    {
      URLAssetTrackCopyPropertyAndBlockageWarning_cold_1(&v12);
      return v12;
    }
  }

  else
  {
    URLAssetTrackCopyPropertyAndBlockageWarning_cold_2(&v13);
    return v13;
  }
}

uint64_t URLAssetTrackGetStatusOfValueForProperty(uint64_t a1, uint64_t a2, _DWORD *a3, _DWORD *a4, void *a5)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a2)
  {
    if (a3)
    {
      *a3 = 0;
      v10 = *(DerivedStorage + 8);

      return QueryProperty(v10, a2, a3, a4, a5, 0);
    }

    else
    {
      URLAssetTrackGetStatusOfValueForProperty_cold_1(&v12);
      return v12;
    }
  }

  else
  {
    URLAssetTrackGetStatusOfValueForProperty_cold_2(&v13);
    return v13;
  }
}

uint64_t URLAssetTrackLoadValuesAsyncForProperties(uint64_t a1, const __CFArray *a2, _BYTE *a3, uint64_t a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a2)
  {
    v8 = DerivedStorage;
    if (CFArrayGetCount(a2))
    {
      v9 = *(v8 + 8);

      return RequestPropertiesAsync(v9, a2, a3, a4);
    }

    else
    {
      URLAssetTrackLoadValuesAsyncForProperties_cold_1(&v11);
      return v11;
    }
  }

  else
  {
    URLAssetTrackLoadValuesAsyncForProperties_cold_2(&v12);
    return v12;
  }
}

uint64_t URLAssetTrackGetTrackInfo(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*CMBaseObjectGetDerivedStorage() + 24);
  v6 = *(*(CMBaseObjectGetVTable() + 16) + 8);
  if (!v6)
  {
    return 4294954514;
  }

  return v6(v5, a2, a3);
}

void URLAssetTrackValidateAsync(uint64_t a1, const void *a2, uint64_t a3, void *a4, _DWORD *a5)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!a2)
  {
    URLAssetTrackValidateAsync_cold_3(&v16);
    return;
  }

  if (!a4)
  {
    URLAssetTrackValidateAsync_cold_2(&v15);
    return;
  }

  v11 = DerivedStorage;
  if (CFEqual(a2, @"validationCriteria_Custom"))
  {
    if (!a3)
    {
      URLAssetTrackValidateAsync_cold_1(&v14);
      return;
    }

    goto LABEL_9;
  }

  if (CFEqual(a2, @"validationCriteria_CameraRoll") || CFEqual(a2, @"validationCriteria_MediaPlayback") || CFEqual(a2, @"validationCriteria_MediaDecoding"))
  {
LABEL_9:
    v12 = *(v11 + 16);

    RequestValidationAsync(v12, a2, a3, a4, a5);
    return;
  }

  emitter = fig_log_get_emitter();

  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 4294955111, "<<< URLAsset >>>", 1629, v5);
}

uint64_t RegisterInternalURLTrackType(uint64_t *a1)
{
  result = _CFRuntimeRegisterClass();
  *a1 = result;
  return result;
}

double InternalURLTrack_Init(_OWORD *a1)
{
  result = 0.0;
  a1[4] = 0u;
  a1[5] = 0u;
  a1[2] = 0u;
  a1[3] = 0u;
  a1[1] = 0u;
  return result;
}

void InternalURLTrack_Finalize(uint64_t a1)
{
  InternalURLAssetTrackStopMonitoringChanges(a1);
  objc_destroyWeak((a1 + 40));
  v2 = *(a1 + 24);
  if (v2)
  {
    CFRelease(v2);
    *(a1 + 24) = 0;
  }

  v3 = *(a1 + 16);
  if (v3)
  {
    CFRelease(v3);
    *(a1 + 16) = 0;
  }

  v4 = *(a1 + 32);
  if (v4)
  {
    CFRelease(v4);
    *(a1 + 32) = 0;
  }

  v5 = *(a1 + 48);
  if (v5)
  {
    dispatch_release(v5);
  }

  v6 = *(a1 + 56);
  if (v6)
  {
    dispatch_release(v6);
    *(a1 + 56) = 0;
  }
}

__CFString *InternalURLTrack_CopyDebugDesc(void *a1)
{
  Mutable = CFStringCreateMutable(0, 0);
  v13 = 1061109567;
  v12 = 0;
  v3 = a1[3];
  v4 = *(*(CMBaseObjectGetVTable() + 16) + 8);
  if (v4)
  {
    v4(v3, &v13 + 4, &v13);
  }

  v5 = CFGetRetainCount(a1);
  CFStringAppendFormat(Mutable, 0, @"<InternalURLTrack %p %s> RC %d TrackID %d '%c%c%c%c'", a1, a1 + 10, v5, HIDWORD(v13), BYTE3(v13), BYTE2(v13), BYTE1(v13), v13);
  if (a1[4])
  {
    CMBaseObject = CMByteStreamGetCMBaseObject();
    v7 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v7)
    {
      v7(CMBaseObject, *MEMORY[0x1E695FFA0], *MEMORY[0x1E695E480], &v12);
      if (v12)
      {
        v8 = CFCopyDescription(v12);
        v9 = FigCopyRedactedURLFromString();
        v10 = v9;
        if (v8 && v9)
        {
          CFStringAppendFormat(Mutable, 0, @" AssetURL: %@", v9);
        }

        else if (!v9)
        {
LABEL_11:
          if (v8)
          {
            CFRelease(v8);
          }

          CFRelease(v12);
          return Mutable;
        }

        CFRelease(v10);
        goto LABEL_11;
      }
    }
  }

  return Mutable;
}

void URLAssetFinalize(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
  os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
  fig_log_call_emit_and_clean_up_after_send_and_compose();
  CMNotificationCenterGetDefaultLocalCenter();
  FigNotificationCenterRemoveWeakListener();
  CMNotificationCenterGetDefaultLocalCenter();
  FigNotificationCenterRemoveWeakListener();
  CMNotificationCenterGetDefaultLocalCenter();
  FigNotificationCenterRemoveWeakListener();
  if (*DerivedStorage)
  {
    InternalURLAssetShutdownWorkQueue(*DerivedStorage);
    InternalURLAssetCleanupChangeMonitoring(*DerivedStorage);
    InternalURLAssetCleanupIncrementalFragmentProcessing(*DerivedStorage);
    InternalURLAssetCleanupStreamingProcessing(*DerivedStorage);
    InternalURLAssetCleanupPostPurchaseProcessing(*DerivedStorage);
    if (*DerivedStorage)
    {
      CFRelease(*DerivedStorage);
      *DerivedStorage = 0;
    }
  }

  v3 = DerivedStorage[1];
  if (v3)
  {
    CFRelease(v3);
    DerivedStorage[1] = 0;
  }

  v4 = DerivedStorage[2];
  if (v4)
  {
    CFRelease(v4);
    DerivedStorage[2] = 0;
  }

  v5 = DerivedStorage[3];
  if (v5)
  {
    dispatch_group_wait(v5, 0xFFFFFFFFFFFFFFFFLL);
    v6 = DerivedStorage[3];
    if (v6)
    {
      dispatch_release(v6);
      DerivedStorage[3] = 0;
    }
  }
}

__CFString *URLAssetCopyDebugDescription(const void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  v4 = CFCopyDescription(*DerivedStorage);
  v5 = CFCopyDescription(DerivedStorage[1]);
  v6 = CFCopyDescription(DerivedStorage[2]);
  if (a1 && (v7 = *CMBaseObjectGetDerivedStorage()) != 0)
  {
    v8 = (v7 + 592);
  }

  else
  {
    v8 = "";
  }

  v9 = CFGetRetainCount(a1);
  CFStringAppendFormat(Mutable, 0, @"<FigURLAsset %p %s> RC %d {%@} {%@} {%@}", a1, v8, v9, v4, v5, v6);
  if (v4)
  {
    CFRelease(v4);
  }

  if (v5)
  {
    CFRelease(v5);
  }

  if (v6)
  {
    CFRelease(v6);
  }

  return Mutable;
}

double URLAssetSetProperty(uint64_t a1, const void *a2, const void *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a2)
  {
    v7 = DerivedStorage;
    if (CFEqual(a2, @"assetProperty_MakeReadAheadAssertionWhenCreatingByteStream"))
    {
      if (a3)
      {
        v8 = *v7;
        v9 = CFGetTypeID(a3);
        if (v9 == CFBooleanGetTypeID())
        {
          FigSimpleMutexLock();
          if (!v8[20])
          {
            *(v8 + 216) = *MEMORY[0x1E695E4D0] == a3;
          }

          FigSimpleMutexUnlock();
        }

        else
        {
          URLAssetSetProperty_cold_1(&valuePtr);
        }
      }

      else
      {
        URLAssetSetProperty_cold_2(&valuePtr);
      }
    }

    else if (CFEqual(a2, @"assetProperty_IncrementalFragmentParseInterval"))
    {
      if (a3)
      {
        v11 = CFGetTypeID(a3);
        if (v11 == CFNumberGetTypeID())
        {
          valuePtr = 0;
          CFNumberGetValue(a3, kCFNumberSInt64Type, &valuePtr);
          InternalURLAssetSetIncrementalFragmentParsingInterval(*v7, valuePtr);
        }
      }
    }

    else if (CFEqual(a2, @"assetProperty_ShouldPrefetchCryptKeys"))
    {
      v13 = *v7;
      v12 = v7[1];

      InternalURLAssetSetShouldPrefetchCryptKeys(v12, v13, a3);
    }

    else
    {
      emitter = fig_log_get_emitter();

      return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 4294955126, "<<< URLAsset >>>", 2020, v3);
    }
  }

  else
  {
    URLAssetSetProperty_cold_3(&valuePtr);
  }

  return result;
}

uint64_t CopyOutReadAheadAssertion(uint64_t a1, void *a2)
{
  FigSimpleMutexLock();
  v4 = *(a1 + 224);
  if (v4)
  {
    FigAssertionSetProperty(v4, @"Assertion_HolderName", @"Client-of-FigAsset");
    v5 = 0;
    *a2 = *(a1 + 224);
    *(a1 + 224) = 0;
    *(a1 + 217) = 1;
  }

  else
  {
    *a2 = 0;
    if (*(a1 + 217))
    {
      v5 = 4294955126;
    }

    else
    {
      v5 = 0;
    }
  }

  FigSimpleMutexUnlock();
  return v5;
}

uint64_t URLAssetGetStatusOfValueForProperty(uint64_t a1, uint64_t a2, _DWORD *a3, _DWORD *a4, void *a5)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a2)
  {
    if (a3)
    {
      *a3 = 0;
      v10 = *(DerivedStorage + 8);

      return QueryProperty(v10, a2, a3, a4, a5, 0);
    }

    else
    {
      URLAssetGetStatusOfValueForProperty_cold_1(&v12);
      return v12;
    }
  }

  else
  {
    URLAssetGetStatusOfValueForProperty_cold_2(&v13);
    return v13;
  }
}

uint64_t URLAssetLoadValuesAsyncForProperties(uint64_t a1, const __CFArray *a2, _BYTE *a3, uint64_t a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a2)
  {
    v8 = DerivedStorage;
    if (CFArrayGetCount(a2))
    {
      v9 = *(v8 + 8);

      return RequestPropertiesAsync(v9, a2, a3, a4);
    }

    else
    {
      URLAssetLoadValuesAsyncForProperties_cold_1(&v11);
      return v11;
    }
  }

  else
  {
    URLAssetLoadValuesAsyncForProperties_cold_2(&v12);
    return v12;
  }
}

uint64_t URLAssetLoadValueAsyncForProperty(uint64_t a1, uint64_t a2, BOOL *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v7 = 0;
  if (a2)
  {
    result = RequestPropertyAsync(*(DerivedStorage + 8), a2, &v7);
    if (a3)
    {
      if (!result)
      {
        *a3 = (v7 & 0xFFFFFFFE) == 2;
      }
    }
  }

  else
  {
    URLAssetLoadValueAsyncForProperty_cold_1(&v8);
    return v8;
  }

  return result;
}

void URLAssetValidateAsync(uint64_t a1, const void *a2, uint64_t a3, void *a4, _DWORD *a5)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!a2)
  {
    URLAssetValidateAsync_cold_3(&v16);
    return;
  }

  if (!a4)
  {
    URLAssetValidateAsync_cold_2(&v15);
    return;
  }

  v11 = DerivedStorage;
  if (CFEqual(a2, @"validationCriteria_Custom"))
  {
    if (!a3)
    {
      URLAssetValidateAsync_cold_1(&v14);
      return;
    }

    goto LABEL_9;
  }

  if (CFEqual(a2, @"validationCriteria_CameraRoll") || CFEqual(a2, @"validationCriteria_MediaPlayback") || CFEqual(a2, @"validationCriteria_PhotosTranscodingService"))
  {
LABEL_9:
    v12 = *(v11 + 16);

    RequestValidationAsync(v12, a2, a3, a4, a5);
    return;
  }

  emitter = fig_log_get_emitter();

  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 4294955123, "<<< URLAsset >>>", 2157, v5);
}

uint64_t URLAssetCopyTrackByID(uint64_t a1, int a2, void *a3)
{
  theArray = 0;
  if (a2)
  {
    if (!a3)
    {
      URLAssetCopyTrackByID_cold_2(&v25);
      v18 = v25;
      goto LABEL_21;
    }

    FigAssetGetCMBaseObject();
    v6 = v5;
    v7 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (!v7 || (!v7(v6, @"assetProperty_Tracks", *MEMORY[0x1E695E480], &theArray) ? (v8 = theArray == 0) : (v8 = 1), v8 || (v23 = 0, Count = CFArrayGetCount(theArray), Count < 1)))
    {
LABEL_18:
      fig_log_get_emitter();
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v21, v22, theArray);
      v18 = v17;
      v19 = 0;
    }

    else
    {
      v10 = Count;
      v11 = 0;
      while (1)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(theArray, v11);
        if (!ValueAtIndex || (v13 = ValueAtIndex, v14 = CFGetTypeID(ValueAtIndex), v14 != FigAssetTrackGetTypeID()))
        {
          URLAssetCopyTrackByID_cold_1(&v23, &v25);
          goto LABEL_27;
        }

        v15 = *(*(CMBaseObjectGetVTable() + 16) + 32);
        if (v15)
        {
          if (!v15(v13, &v23, 0) && v23 == a2)
          {
            break;
          }
        }

        if (v10 == ++v11)
        {
          goto LABEL_18;
        }
      }

      v19 = CFRetain(v13);
      if (!v19)
      {
        goto LABEL_18;
      }

      v18 = 0;
    }
  }

  else
  {
    URLAssetCopyTrackByID_cold_3(&v25);
LABEL_27:
    v19 = 0;
    v18 = v25;
  }

  if (a3)
  {
    *a3 = v19;
  }

LABEL_21:
  if (theArray)
  {
    CFRelease(theArray);
  }

  return v18;
}

uint64_t URLAssetCopyTracksWithMediaType(uint64_t a1, int a2, __CFArray **a3)
{
  theArray = 0;
  if (!a3)
  {
    URLAssetCopyTracksWithMediaType_cold_3(&v24);
    return v24;
  }

  FigAssetGetCMBaseObject();
  v6 = v5;
  v7 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v7)
  {
    Mutable = 0;
    v9 = -12782;
    goto LABEL_29;
  }

  v8 = *MEMORY[0x1E695E480];
  v9 = v7(v6, @"assetProperty_Tracks", *MEMORY[0x1E695E480], &theArray);
  if (v9)
  {
    v10 = 1;
  }

  else
  {
    v10 = theArray == 0;
  }

  if (v10)
  {
    goto LABEL_28;
  }

  v22 = 0;
  Count = CFArrayGetCount(theArray);
  if (!Count)
  {
    v9 = 0;
LABEL_28:
    Mutable = 0;
    goto LABEL_29;
  }

  v12 = Count;
  Mutable = CFArrayCreateMutable(v8, Count, MEMORY[0x1E695E9C0]);
  if (!Mutable)
  {
    URLAssetCopyTracksWithMediaType_cold_2(&v24);
LABEL_36:
    v20 = v24;
    goto LABEL_32;
  }

  if (v12 >= 1)
  {
    v14 = 0;
    while (1)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(theArray, v14);
      if (!ValueAtIndex)
      {
        break;
      }

      v16 = ValueAtIndex;
      v17 = CFGetTypeID(ValueAtIndex);
      if (v17 != FigAssetTrackGetTypeID())
      {
        break;
      }

      v18 = *(*(CMBaseObjectGetVTable() + 16) + 32);
      if (v18)
      {
        v9 = v18(v16, 0, &v22);
        if (v9)
        {
          v19 = 0;
        }

        else
        {
          v19 = v22 == a2;
        }

        if (v19)
        {
          CFArrayAppendValue(Mutable, v16);
          v9 = 0;
        }
      }

      else
      {
        v9 = -12782;
      }

      if (v12 == ++v14)
      {
        goto LABEL_26;
      }
    }

    URLAssetCopyTracksWithMediaType_cold_1(&v24);
    goto LABEL_36;
  }

  v9 = 0;
LABEL_26:
  if (!CFArrayGetCount(Mutable))
  {
    CFRelease(Mutable);
    goto LABEL_28;
  }

LABEL_29:
  if (Mutable)
  {
    v20 = v9;
  }

  else
  {
    v20 = 4294955122;
  }

LABEL_32:
  *a3 = Mutable;
  if (theArray)
  {
    CFRelease(theArray);
  }

  return v20;
}

uint64_t URLAssetCopyChapterData(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v7 = a3;
  v8 = a2;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a4)
  {
    if (a5)
    {
      v10 = *DerivedStorage;
      if (*(*DerivedStorage + 16) == 709251626)
      {
        URLAssetCopyChapterData_cold_1(&v13);
        return v13;
      }

      else
      {
        v11 = DerivedStorage[1];

        return InternalURLAssetCopyChapterData(v11, v10, v8, v7, a4, a5);
      }
    }

    else
    {
      URLAssetCopyChapterData_cold_2(&v14);
      return v14;
    }
  }

  else
  {
    URLAssetCopyChapterData_cold_3(&v15);
    return v15;
  }
}

uint64_t URLAssetFetchChapterDataAsync(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a3;
  v6 = a2;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a4)
  {
    v8 = *DerivedStorage;
    if (*(*DerivedStorage + 16) == 709251626)
    {
      URLAssetFetchChapterDataAsync_cold_1(&v11);
      return v11;
    }

    else
    {
      v9 = DerivedStorage[1];

      return InternalURLAssetFetchChapterDataAsync(v9, v8, v6, v5, a4);
    }
  }

  else
  {
    URLAssetFetchChapterDataAsync_cold_2(&v12);
    return v12;
  }
}

uint64_t URLAssetTransferBytePumpAsync(uint64_t a1, uint64_t a2, uint64_t a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v6 = *DerivedStorage;
  v7 = *(DerivedStorage + 8);

  return InternalURLAssetTransferBytePumpAsync(v7, v6, a2, a3);
}

uint64_t URLAssetLoadValuesAsyncForTrackProperties(uint64_t a1, CFTypeRef a2, const __CFArray *a3, _BYTE *a4, _DWORD *a5)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  cf = 0;
  v21 = 0;
  if (a3)
  {
    v11 = DerivedStorage;
    if (CFArrayGetCount(a3))
    {
      if (a2)
      {
        if (CFArrayGetCount(a2))
        {
          cf = a2;
          CFRetain(a2);
          goto LABEL_11;
        }

        URLAssetLoadValuesAsyncForTrackProperties_cold_1(&v23);
        goto LABEL_26;
      }

      v19 = 0;
      v20 = 0;
      v12 = *(*(CMBaseObjectGetVTable() + 16) + 8);
      if (!v12)
      {
LABEL_10:
        a2 = 0;
        goto LABEL_11;
      }

      v12(a1, @"assetProperty_Tracks", &v20, &v19, 0);
      if (v20 != 2)
      {
        if (v20 == 3)
        {
          v13 = v19;
          goto LABEL_13;
        }

        goto LABEL_10;
      }

      FigAssetGetCMBaseObject();
      v17 = v16;
      v18 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      if (!v18)
      {
        v13 = 4294954514;
        goto LABEL_13;
      }

      v14 = v18(v17, @"assetProperty_Tracks", *MEMORY[0x1E695E480], &cf);
      if (v14)
      {
        goto LABEL_12;
      }

      a2 = cf;
      if (cf)
      {
LABEL_11:
        v14 = InternalURLAssetLoadValuesAsyncForTrackProperties(*(v11 + 8), *v11, a2, a3, &v21, a5);
LABEL_12:
        v13 = v14;
        goto LABEL_13;
      }

      URLAssetLoadValuesAsyncForTrackProperties_cold_2(&v23);
    }

    else
    {
      URLAssetLoadValuesAsyncForTrackProperties_cold_3(&v23);
    }
  }

  else
  {
    URLAssetLoadValuesAsyncForTrackProperties_cold_4(&v23);
  }

LABEL_26:
  v13 = v23;
LABEL_13:
  if (a4)
  {
    *a4 = v21;
  }

  if (cf)
  {
    CFRelease(cf);
  }

  return v13;
}

uint64_t URLAssetDefineMacroProperty(uint64_t a1, uint64_t a2, const __CFArray *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a2)
  {
    if (a3)
    {
      v6 = DerivedStorage;
      if (CFArrayGetCount(a3))
      {
        v7 = *(v6 + 8);

        return DefineMacroProperty(v7, a2, a3);
      }

      else
      {
        URLAssetDefineMacroProperty_cold_1(&v9);
        return v9;
      }
    }

    else
    {
      URLAssetDefineMacroProperty_cold_2(&v10);
      return v10;
    }
  }

  else
  {
    URLAssetDefineMacroProperty_cold_3(&v11);
    return v11;
  }
}

uint64_t URLAssetDefineTrackMacroProperty(uint64_t a1, const void *a2, const __CFArray *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a2)
  {
    if (a3)
    {
      v6 = DerivedStorage;
      if (CFArrayGetCount(a3))
      {
        v7 = *(*v6 + 608);

        return DefineTrackMacroProperty(v7, a2, a3);
      }

      else
      {
        URLAssetDefineTrackMacroProperty_cold_1(&v9);
        return v9;
      }
    }

    else
    {
      URLAssetDefineTrackMacroProperty_cold_2(&v10);
      return v10;
    }
  }

  else
  {
    URLAssetDefineTrackMacroProperty_cold_3(&v11);
    return v11;
  }
}

uint64_t URLAssetDefineCrossTrackMacroProperty(uint64_t a1, const void *a2, const __CFArray *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a2)
  {
    if (a3)
    {
      v6 = DerivedStorage;
      if (CFArrayGetCount(a3))
      {
        v7 = v6[1];
        v8 = *(*v6 + 608);

        return DefineCrossTrackMacroProperty(v8, v7, a2, a3);
      }

      else
      {
        URLAssetDefineCrossTrackMacroProperty_cold_1(&v10);
        return v10;
      }
    }

    else
    {
      URLAssetDefineCrossTrackMacroProperty_cold_2(&v11);
      return v11;
    }
  }

  else
  {
    URLAssetDefineCrossTrackMacroProperty_cold_3(&v12);
    return v12;
  }
}

CFTypeRef URLAssetCopyStoreForTrack(uint64_t a1)
{
  v1 = *(CMBaseObjectGetDerivedStorage() + 8);

  return CFRetain(v1);
}

uint64_t RegisterInternalURLAssetType(uint64_t *a1)
{
  result = _CFRuntimeRegisterClass();
  *a1 = result;
  return result;
}

void *InternalURLAsset_Finalize(uint64_t a1)
{
  objc_destroyWeak((a1 + 472));
  v2 = *(a1 + 608);
  if (v2)
  {
    CFRelease(v2);
    *(a1 + 608) = 0;
  }

  v3 = *(a1 + 480);
  if (v3)
  {
    dispatch_release(v3);
    *(a1 + 480) = 0;
  }

  if (*(a1 + 136))
  {
    FigSimpleMutexDestroy();
    *(a1 + 136) = 0;
  }

  if (*(a1 + 432))
  {
    FigSimpleMutexDestroy();
    *(a1 + 432) = 0;
  }

  v4 = *(a1 + 368);
  if (v4)
  {
    dispatch_release(v4);
    *(a1 + 368) = 0;
  }

  if (*(a1 + 240))
  {
    FigStopForwardingMediaServicesProcessDeathNotification();
  }

  v5 = *(a1 + 496);
  if (v5)
  {
    CFRelease(v5);
    *(a1 + 496) = 0;
  }

  v6 = *(a1 + 536);
  if (v6)
  {
    CFRelease(v6);
    *(a1 + 536) = 0;
  }

  v7 = *(a1 + 72);
  if (v7)
  {
    CFRelease(v7);
    *(a1 + 72) = 0;
  }

  v8 = *(a1 + 88);
  if (v8)
  {
    CFRelease(v8);
    *(a1 + 88) = 0;
  }

  v9 = *(a1 + 176);
  if (v9)
  {
    CFRelease(v9);
    *(a1 + 176) = 0;
  }

  v10 = *(a1 + 184);
  if (v10)
  {
    CFRelease(v10);
    *(a1 + 184) = 0;
  }

  v11 = *(a1 + 160);
  if (v11)
  {
    CFRelease(v11);
    *(a1 + 160) = 0;
  }

  v12 = *(a1 + 152);
  if (v12)
  {
    CFRelease(v12);
    *(a1 + 152) = 0;
  }

  v13 = *(a1 + 240);
  if (v13)
  {
    CFRelease(v13);
    *(a1 + 240) = 0;
  }

  v14 = *(a1 + 248);
  if (v14)
  {
    CFRelease(v14);
    *(a1 + 248) = 0;
  }

  v15 = *(a1 + 272);
  if (v15)
  {
    CFRelease(v15);
    *(a1 + 272) = 0;
  }

  v16 = *(a1 + 344);
  if (v16)
  {
    CFRelease(v16);
    *(a1 + 344) = 0;
  }

  v17 = *(a1 + 360);
  if (v17)
  {
    CFRelease(v17);
    *(a1 + 360) = 0;
  }

  v18 = *(a1 + 120);
  if (v18)
  {
    CFRelease(v18);
    *(a1 + 120) = 0;
  }

  v19 = *(a1 + 328);
  if (v19)
  {
    CFRelease(v19);
    *(a1 + 328) = 0;
  }

  v20 = *(a1 + 336);
  if (v20)
  {
    CFRelease(v20);
    *(a1 + 336) = 0;
  }

  v21 = *(a1 + 224);
  if (v21)
  {
    CFRelease(v21);
    *(a1 + 224) = 0;
  }

  v22 = *(a1 + 208);
  if (v22)
  {
    CFRelease(v22);
    *(a1 + 208) = 0;
  }

  v23 = *(a1 + 440);
  if (v23)
  {
    CFRelease(v23);
    *(a1 + 440) = 0;
  }

  v24 = *(a1 + 384);
  if (v24)
  {
    CFRelease(v24);
    *(a1 + 384) = 0;
  }

  v25 = *(a1 + 400);
  if (v25)
  {
    CFRelease(v25);
    *(a1 + 400) = 0;
  }

  v26 = *(a1 + 408);
  if (v26)
  {
    CFRelease(v26);
    *(a1 + 408) = 0;
  }

  v27 = *(a1 + 424);
  if (v27)
  {
    CFRelease(v27);
    *(a1 + 424) = 0;
  }

  v28 = *(a1 + 488);
  if (v28)
  {
    CFRelease(v28);
    *(a1 + 488) = 0;
  }

  v29 = *(a1 + 520);
  if (v29)
  {
    CFRelease(v29);
    *(a1 + 520) = 0;
  }

  v30 = *(a1 + 528);
  if (v30)
  {
    CFRelease(v30);
    *(a1 + 528) = 0;
  }

  objc_destroyWeak((a1 + 48));
  v31 = *(a1 + 512);
  if (v31)
  {
    CFRelease(v31);
    *(a1 + 512) = 0;
  }

  FigSimpleMutexDestroy();
  v32 = *(a1 + 24);
  if (v32)
  {
    FigAssetDownloadCoordinatorUnregisterAssetWithDownloadTokenForAllDownloaders(v32);
    FigAssetTableRemoveAsset(*(a1 + 24));
  }

  v33 = *(a1 + 584);
  if (v33)
  {
    CFRelease(v33);
    *(a1 + 584) = 0;
  }

  v34 = *(a1 + 280);
  if (v34)
  {
    dispatch_release(v34);
  }

  v35 = *(a1 + 104);
  if (v35)
  {
    dispatch_release(v35);
    *(a1 + 104) = 0;
  }

  v36 = *(a1 + 96);
  if (v36)
  {
    dispatch_release(v36);
    *(a1 + 96) = 0;
  }

  v37 = *(a1 + 544);
  if (v37)
  {

    *(a1 + 544) = 0;
  }

  result = *(a1 + 40);
  if (result)
  {

    return FigAssetDownloadCoordinatorRelinquishAccessToURL(result);
  }

  return result;
}

__CFString *InternalURLAsset_CopyDebugDesc(uint64_t a1)
{
  Mutable = CFStringCreateMutable(0, 0);
  v3 = CFCopyDescription(*(a1 + 72));
  v4 = CFGetRetainCount(a1);
  v5 = *(a1 + 64);
  v6 = "FormatReader";
  if (v5 == 708989738)
  {
    v6 = "ByteStream";
  }

  if (v5 == 1431456810)
  {
    v7 = "URL";
  }

  else
  {
    v7 = v6;
  }

  if (*(a1 + 618))
  {
    v8 = v3;
  }

  else
  {
    v8 = @"<redacted>";
  }

  CFStringAppendFormat(Mutable, 0, @"<InternalURLAssetRef %p %s> RC %d Created with %s {%@}", a1, a1 + 592, v4, v7, v8);
  if (v3)
  {
    CFRelease(v3);
  }

  CFStringAppendFormat(Mutable, 0, @" createFlags = 0x%0llx", *(a1 + 80));
  if (*(a1 + 88))
  {
    v9 = FigCFCopyCompactDescription();
    CFStringAppendFormat(Mutable, 0, @"\noptionsDict = {%@}", v9);
    if (v9)
    {
      CFRelease(v9);
    }
  }

  return Mutable;
}

uint64_t FigAssetGetAllPropertyKeys(uint64_t a1, uint64_t a2)
{
  if (FigAssetGetAllPropertyKeys_static_init != -1)
  {
    FigAssetGetAllPropertyKeys_cold_1();
  }

  return gAllAssetProperties;
}

CFArrayRef InitializeAssetPropertyKeys()
{
  __dst[80] = *MEMORY[0x1E69E9840];
  memcpy(__dst, off_1E7493EF8, 0x280uLL);
  result = CFArrayCreate(*MEMORY[0x1E695E480], __dst, 80, MEMORY[0x1E695E9C0]);
  gAllAssetProperties = result;
  return result;
}

uint64_t FigAssetTrackGetAllPropertyKeys(uint64_t a1, uint64_t a2)
{
  if (FigAssetTrackGetAllPropertyKeys_static_init != -1)
  {
    FigAssetTrackGetAllPropertyKeys_cold_1();
  }

  return gAllAssetTrackProperties;
}

CFArrayRef InitializeAssetTrackPropertyKeys()
{
  v1[55] = *MEMORY[0x1E69E9840];
  v1[0] = @"FormatDescriptionArray";
  v1[1] = @"IsEnabled";
  v1[2] = @"IsSelfContained";
  v1[3] = @"TotalSampleDataLength";
  v1[4] = @"TimeRange";
  v1[5] = @"MediaPresentationTimeRange";
  v1[6] = @"MediaDecodeTimeRange";
  v1[7] = @"NaturalTimeScale";
  v1[8] = @"EstimatedDataRate";
  v1[9] = @"PeakDataRate";
  v1[10] = @"UneditedSampleCount";
  v1[11] = @"HasRollInformation";
  v1[12] = @"LanguageCode";
  v1[13] = @"MediaCharacteristicArray";
  v1[14] = @"ExtendedLanguageTag";
  v1[15] = @"NaturalSize";
  v1[16] = @"TrackDimensions";
  v1[17] = @"CleanApertureDimensions";
  v1[18] = @"ProductionApertureDimensions";
  v1[19] = @"EncodedPixelsDimensions";
  v1[20] = @"PreferredTransform";
  v1[21] = @"NominalFrameRate";
  v1[22] = @"NonDroppableFrameRate";
  v1[23] = @"CommonMetadata";
  v1[24] = @"AvailableMetadataFormats";
  v1[25] = @"IsExcludedFromAutoselection";
  v1[26] = @"Volume";
  v1[27] = @"LoudnessInfo";
  v1[28] = @"Layer";
  v1[29] = @"MinSampleDuration";
  v1[30] = @"AlternateGroupID";
  v1[31] = @"DefaultAlternateGroupID";
  v1[32] = @"ProvisionalAlternateGroupID";
  v1[33] = @"LoadSettings";
  v1[34] = @"SampleGroupDescriptions";
  v1[35] = @"HEVCTemporalLevelInfoCombinations";
  v1[36] = @"HEVCSyncSampleNALUnitTypes";
  v1[37] = @"assetTrackProperty_QuickTimeUserData";
  v1[38] = @"assetTrackProperty_ISOUserData";
  v1[39] = @"assetTrackProperty_QuickTimeMetadata";
  v1[40] = @"assetTrackProperty_FormatSpecificMetadata";
  v1[41] = @"assetTrackProperty_FormatSpecificMetadataFormat";
  v1[42] = @"assetTrackProperty_EditSegmentData";
  v1[43] = @"assetTrackProperty_PresentationSegmentData";
  v1[44] = @"assetTrackProperty_EditsExcludeAudioPrimingAndRemainderDuration";
  v1[45] = @"assetTrackProperty_GaplessSourceTimeRange";
  v1[46] = @"assetTrackProperty_TrackReferences";
  v1[47] = @"assetTrackProperty_ProtectedStatus";
  v1[48] = @"assetTrackProperty_UsesAudibleDRM";
  v1[49] = @"assetTrackProperty_AudibleContentIsAuthorized";
  v1[50] = @"assetTrackProperty_CameraRollValidation";
  v1[51] = @"assetTrackProperty_MediaPlaybackValidation";
  v1[52] = @"assetTrackProperty_MediaDecodingValidation";
  v1[53] = @"assetTrackProperty_ContainsWideColor";
  v1[54] = @"assetTrackProperty_LatentBaseDecodeTimeStampOfFirstTrackFragment";
  result = CFArrayCreate(*MEMORY[0x1E695E480], v1, 55, MEMORY[0x1E695E9C0]);
  gAllAssetTrackProperties = result;
  return result;
}

uint64_t RegisterFigAssetBaseType(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  CMBaseGetClassID();

  return FigBaseClassRegisterClass();
}

uint64_t FigAssetGetTypeID()
{
  MEMORY[0x19A8D3660](&FigAssetGetClassID_sRegisterFigAssetBaseTypeOnce, RegisterFigAssetBaseType);

  return CMBaseClassGetCFTypeID();
}

uint64_t RegisterFigAssetTrackBaseType(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  CMBaseGetClassID();

  return FigBaseClassRegisterClass();
}

uint64_t FigAssetTrackGetTypeID()
{
  MEMORY[0x19A8D3660](&FigAssetTrackGetClassID_sRegisterFigAssetTrackBaseTypeOnce, RegisterFigAssetTrackBaseType);

  return CMBaseClassGetCFTypeID();
}

uint64_t CreateTrackMacroPropertyState(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (_MergedGlobals_116 != -1)
  {
    CreateTrackMacroPropertyState_cold_1();
  }

  Instance = _CFRuntimeCreateInstance();
  if (Instance)
  {
    v7 = Instance;
    v8 = FigReentrantMutexCreate();
    v7[2] = v8;
    if (v8)
    {
      v9 = FigCFWeakReferenceHolderCreateWithReferencedObject();
      v7[3] = v9;
      if (v9)
      {
        FigCFWeakReferenceStore();
        result = 0;
        v7[8] = a3;
        *a4 = v7;
        return result;
      }

      v11 = 1541;
    }

    else
    {
      v11 = 1538;
    }

    CreateTrackMacroPropertyState_cold_2(v11, v7, &v12);
    return v12;
  }

  else
  {
    CreateTrackMacroPropertyState_cold_3(&v13);
    return v13;
  }
}

void DisconnectCrossTrackMacroProperties(uint64_t a1, CFArrayRef theArray)
{
  if (theArray && *(a1 + 40))
  {
    if (CFArrayGetCount(theArray))
    {
      v4[0] = a1;
      v4[1] = theArray;
      CFDictionaryApplyFunction(*(a1 + 40), CrossTrackDisconnectApplierFunction, v4);
    }
  }
}

uint64_t CrossTrackDisconnectApplierFunction(void *key, uint64_t a2, CFArrayRef *a3)
{
  result = CFDictionaryGetValue(*(*a3 + 5), key);
  if (result)
  {
    v5 = result;
    result = CFSetGetCount(result);
    if (result)
    {
      result = CFArrayGetCount(a3[1]);
      if (result >= 1)
      {
        v6 = result;
        for (i = 0; i != v6; ++i)
        {
          ValueAtIndex = CFArrayGetValueAtIndex(a3[1], i);
          CFSetRemoveValue(v5, ValueAtIndex);
          CMNotificationCenterGetDefaultLocalCenter();
          result = FigNotificationCenterRemoveWeakListeners();
        }
      }
    }
  }

  return result;
}

void ConnectCrossTrackMacroProperties(uint64_t a1, CFArrayRef theArray)
{
  if (theArray && *(a1 + 40))
  {
    if (CFArrayGetCount(theArray))
    {
      v5[0] = a1;
      v5[1] = theArray;
      MutableCopy = CFDictionaryCreateMutableCopy(*MEMORY[0x1E695E480], 0, *(a1 + 40));
      CFDictionaryApplyFunction(MutableCopy, CrossTrackConnectApplierFunction, v5);
      CFRelease(MutableCopy);
    }
  }
}

void CrossTrackConnectApplierFunction(const void *a1, uint64_t a2, CFArrayRef *a3)
{
  Count = CFArrayGetCount(a3[1]);
  Value = CFDictionaryGetValue(*(*a3 + 5), a1);
  if (!Value)
  {
    Value = CFSetCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9F8]);
    CFDictionarySetValue(*(*a3 + 5), a1, Value);
    CFRelease(Value);
  }

  if (Count < 1)
  {
LABEL_16:
    v14 = 0;
    v15 = 0;
    goto LABEL_17;
  }

  for (i = 0; i != Count; ++i)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(a3[1], i);
    CFSetAddValue(Value, ValueAtIndex);
  }

  v9 = 0;
  while (1)
  {
    cf = 0;
    v17 = 0;
    v10 = CFArrayGetValueAtIndex(a3[1], v9);
    v11 = *(*(CMBaseObjectGetVTable() + 16) + 8);
    if (v11)
    {
      v11(v10, a1, &v17 + 4, &v17, &cf);
    }

    if ((HIDWORD(v17) & 0xFFFFFFFE) != 2)
    {
      CMNotificationCenterGetDefaultLocalCenter();
      FigNotificationCenterAddWeakListeners();
      goto LABEL_13;
    }

    CFSetRemoveValue(Value, v10);
    if (HIDWORD(v17) == 3)
    {
      break;
    }

LABEL_13:
    if (cf)
    {
      CFRelease(cf);
    }

    if (Count == ++v9)
    {
      goto LABEL_16;
    }
  }

  v14 = v17;
  v15 = cf;
  cf = 0;
  CFSetApplyFunction(Value, RemoveCrossTrackListenersFromTracksInSet, *a3);
  CFSetRemoveAllValues(Value);
LABEL_17:
  if (!CFSetGetCount(Value))
  {
    v12 = MEMORY[0x19A8D0E00](*a3 + 56);
    if (v12)
    {
      v13 = v12;
      StoreByProduct(v12, a1, v14, v15, 0);
      CFRelease(v13);
    }
  }

  if (v15)
  {
    CFRelease(v15);
  }
}

uint64_t DefineTrackMacroProperty(uint64_t a1, const void *a2, const void *a3)
{
  FigSimpleMutexLock();
  Mutable = *(a1 + 32);
  if (Mutable || (Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]), (*(a1 + 32) = Mutable) != 0))
  {
    if (CFDictionaryContainsKey(Mutable, a2))
    {
      DefineTrackMacroProperty_cold_1(&v15);
      v13 = v15;
    }

    else
    {
      CFDictionarySetValue(*(a1 + 32), a2, a3);
      v7 = *(a1 + 48);
      if (v7 && (Count = CFArrayGetCount(v7), Count >= 1))
      {
        v9 = Count;
        v10 = 0;
        while (1)
        {
          ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 48), v10);
          v12 = (*(a1 + 64))(ValueAtIndex);
          v13 = DefineMacroProperty(v12, a2, a3);
          CFRelease(v12);
          if (v13)
          {
            break;
          }

          if (v9 == ++v10)
          {
            goto LABEL_9;
          }
        }
      }

      else
      {
LABEL_9:
        v13 = 0;
      }
    }
  }

  else
  {
    DefineTrackMacroProperty_cold_2(&v16);
    v13 = v16;
  }

  FigSimpleMutexUnlock();
  return v13;
}

void SetTrackMacroPropertyStateTracks(uint64_t a1, CFTypeRef cf)
{
  if (cf)
  {
    v4 = CFRetain(cf);
  }

  else
  {
    v4 = 0;
  }

  *(a1 + 48) = v4;

  ConnectCrossTrackMacroProperties(a1, cf);
}

void ReviseTrackMacroPropertyStateTracks(uint64_t a1, CFTypeRef cf, CFArrayRef theArray, CFArrayRef a4)
{
  v6 = *(a1 + 48);
  if (cf)
  {
    if (v6)
    {
      if (a4 && CFArrayGetCount(a4))
      {
        DisconnectCrossTrackMacroProperties(a1, a4);
      }

      if (theArray && CFArrayGetCount(theArray))
      {
        ConnectCrossTrackMacroProperties(a1, theArray);
      }

      v9 = *(a1 + 48);
      *(a1 + 48) = cf;
      CFRetain(cf);
      if (v9)
      {

        CFRelease(v9);
      }
    }

    else
    {
      *(a1 + 48) = CFRetain(cf);

      ConnectCrossTrackMacroProperties(a1, cf);
    }
  }

  else
  {
    DisconnectCrossTrackMacroProperties(a1, v6);
    v10 = *(a1 + 48);
    if (v10)
    {
      CFRelease(v10);
      *(a1 + 48) = 0;
    }
  }
}

uint64_t RegisterTrackMacroPropertyStateType(uint64_t *a1)
{
  result = _CFRuntimeRegisterClass();
  *a1 = result;
  return result;
}

double trackMacroPropertyState_Init(uint64_t a1)
{
  *(a1 + 64) = 0;
  result = 0.0;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  return result;
}

uint64_t trackMacroPropertyState_Finalize(uint64_t a1)
{
  if (*(a1 + 16) && *(a1 + 48))
  {
    FigSimpleMutexLock();
    DisconnectCrossTrackMacroProperties(a1, *(a1 + 48));
    FigSimpleMutexUnlock();
  }

  FigSimpleMutexDestroy();
  v2 = *(a1 + 40);
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = *(a1 + 32);
  if (v3)
  {
    CFRelease(v3);
  }

  v4 = *(a1 + 48);
  if (v4)
  {
    CFRelease(v4);
  }

  v5 = *(a1 + 24);
  if (v5)
  {
    CFRelease(v5);
  }

  objc_destroyWeak((a1 + 56));
  CMNotificationCenterGetDefaultLocalCenter();

  return FigNotificationCenterCheckWeakListenersWereRemovedBeforeFinalization();
}

__CFString *trackMacroPropertyState_CopyDebugDesc(uint64_t a1)
{
  Mutable = CFStringCreateMutable(0, 0);
  CFStringAppendFormat(Mutable, 0, @"TrackMacroPropertyState %p", a1);
  return Mutable;
}

void CrossTrackMacroPropertyNotificationCallback(uint64_t a1, CFDictionaryRef *a2, const void *a3, const void *a4, const __CFDictionary *a5)
{
  v9 = FigCFWeakReferenceHolderCopyReferencedObject();
  if (v9)
  {
    v10 = v9;
    v11 = CFDictionaryGetValue(a5, @"assetPayload_Property");
    value = 0;
    FigSimpleMutexLock();
    if (CFDictionaryGetValueIfPresent(a2[5], v11, &value) && CFSetGetCount(value))
    {
      if (CFEqual(a3, @"assetTrackNotice_PropertyFailedToLoad"))
      {
        FigCFDictionaryGetIntIfPresent();
        v12 = CFDictionaryGetValue(a5, @"assetPayload_CFError");
        v13 = value;
        CFSetApplyFunction(value, RemoveCrossTrackListenersFromTracksInSet, a2);
        CFSetRemoveAllValues(v13);
      }

      else
      {
        CFSetRemoveValue(value, a4);
        context[0] = 0;
        context[1] = a4;
        FigSimpleMutexLock();
        CFDictionaryApplyFunction(a2[5], trackIsInAnyPendingSetsApplier, context);
        if (!LOBYTE(context[0]))
        {
          CMNotificationCenterGetDefaultLocalCenter();
          FigNotificationCenterRemoveWeakListeners();
        }

        FigSimpleMutexUnlock();
        v12 = 0;
      }

      if (!CFSetGetCount(value))
      {
        v14 = MEMORY[0x19A8D0E00](a2 + 7);
        if (v14)
        {
          v15 = v14;
          StoreByProduct(v14, v11, 0, v12, 0);
          CFRelease(v15);
        }
      }
    }

    FigSimpleMutexUnlock();
    if (GetAssetDeferredReleaseQueue_createQueueOnce != -1)
    {
      CrossTrackMacroPropertyNotificationCallback_cold_1();
    }

    dispatch_async_f(gCommonAssetDeferredReleaseQueue, v10, DeferredReleaseCFType);
  }
}

uint64_t RemoveCrossTrackListenersFromTracksInSet(uint64_t a1, uint64_t a2)
{
  CMNotificationCenterGetDefaultLocalCenter();

  return FigNotificationCenterRemoveWeakListeners();
}

uint64_t trackIsInAnyPendingSetsApplier(int a1, CFSetRef theSet, uint64_t a3)
{
  result = CFSetContainsValue(theSet, *(a3 + 8));
  *a3 |= result;
  return result;
}

uint64_t CreateAssetDeferredReleaseQueue()
{
  result = FigDispatchQueueCreateWithPriority();
  gCommonAssetDeferredReleaseQueue = result;
  return result;
}

void FigAssetDownloadStorageManagementExcludeURLFromBackup(const __CFURL *a1)
{
  error = 0;
  CFURLSetResourcePropertyForKey(a1, *MEMORY[0x1E695EB30], *MEMORY[0x1E695E4D0], &error);
  if (error)
  {
    CFRelease(error);
  }
}

uint64_t FigSetImageDataForAssetAtURL(const __CFURL *a1, CFDataRef theData)
{
  if (a1)
  {
    if (theData)
    {
      BytePtr = CFDataGetBytePtr(theData);
      Length = CFDataGetLength(theData);

      return figSetExtendedAttributeData(a1, "com.apple.coremedia.asset.image", BytePtr, Length);
    }

    else
    {
      FigSetImageDataForAssetAtURL_cold_1(&v7);
      return v7;
    }
  }

  else
  {
    FigSetImageDataForAssetAtURL_cold_2(&v8);
    return v8;
  }
}

uint64_t figSetExtendedAttributeData(const __CFURL *a1, const char *a2, const void *a3, size_t a4)
{
  v18 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    figSetExtendedAttributeData_cold_7(buffer);
    return *buffer;
  }

  if (!FigCFURLIsLocalResource())
  {
    figSetExtendedAttributeData_cold_6(buffer);
    return *buffer;
  }

  if (!a2)
  {
    figSetExtendedAttributeData_cold_5(buffer);
    return *buffer;
  }

  if (!a3)
  {
    figSetExtendedAttributeData_cold_4(buffer);
    return *buffer;
  }

  v8 = CFURLCopyAbsoluteURL(a1);
  if (!v8)
  {
    figSetExtendedAttributeData_cold_3(buffer);
    return *buffer;
  }

  v9 = v8;
  v10 = CFURLCopyFileSystemPath(v8, kCFURLPOSIXPathStyle);
  if (!v10)
  {
    figSetExtendedAttributeData_cold_2(v9, buffer);
    return *buffer;
  }

  v11 = v10;
  if (CFStringGetCString(v10, buffer, 1024, 0x8000100u))
  {
    v12 = setxattr(buffer, a2, a3, a4, 0, 0);
    v13 = __error();
    v14 = 0;
    if (v12)
    {
      v14 = *v13;
    }
  }

  else
  {
    figSetExtendedAttributeData_cold_1(&v16);
    v14 = v16;
  }

  CFRelease(v9);
  CFRelease(v11);
  return v14;
}

uint64_t FigSetNameForAssetAtURL(const __CFURL *a1, uint64_t a2)
{
  if (!a1)
  {
    FigSetNameForAssetAtURL_cold_3(&v8);
LABEL_9:
    v6 = v8;
    goto LABEL_5;
  }

  if (!a2)
  {
    FigSetNameForAssetAtURL_cold_2(&v8);
    goto LABEL_9;
  }

  CStringPtrAndBufferToFree = FigCFStringGetCStringPtrAndBufferToFree();
  if (!CStringPtrAndBufferToFree)
  {
    FigSetNameForAssetAtURL_cold_1(&v8);
    goto LABEL_9;
  }

  v4 = CStringPtrAndBufferToFree;
  v5 = strlen(CStringPtrAndBufferToFree);
  v6 = figSetExtendedAttributeData(a1, "com.apple.coremedia.asset.name", v4, v5 + 1);
LABEL_5:
  free(0);
  return v6;
}

uint64_t figGetExtendedAttributeData(const __CFURL *a1, const char *a2, void *a3, ssize_t *a4)
{
  v19 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    figGetExtendedAttributeData_cold_6(buffer);
LABEL_20:
    v14 = 0;
    v16 = *buffer;
    goto LABEL_13;
  }

  if (!FigCFURLIsLocalResource())
  {
    figGetExtendedAttributeData_cold_5(buffer);
    goto LABEL_20;
  }

  if (!a3)
  {
    figGetExtendedAttributeData_cold_4(buffer);
    goto LABEL_20;
  }

  if (!a4)
  {
    figGetExtendedAttributeData_cold_3(buffer);
    goto LABEL_20;
  }

  v8 = CFURLCopyAbsoluteURL(a1);
  if (!v8)
  {
    figGetExtendedAttributeData_cold_2(buffer);
    goto LABEL_20;
  }

  v9 = v8;
  v10 = CFURLCopyFileSystemPath(v8, kCFURLPOSIXPathStyle);
  if (!v10)
  {
    figGetExtendedAttributeData_cold_1(v9, buffer);
    goto LABEL_20;
  }

  v11 = v10;
  if (!CFStringGetCString(v10, buffer, 1024, 0x8000100u))
  {
    v14 = 0;
    v16 = 4294954516;
    goto LABEL_12;
  }

  v12 = getxattr(buffer, a2, 0, 0, 0, 0);
  v13 = __error();
  if (v12 <= 0)
  {
    v14 = 0;
LABEL_23:
    v16 = *v13;
    goto LABEL_12;
  }

  v14 = malloc_type_calloc(1uLL, v12, 0xEB68A7FBuLL);
  if (!v14)
  {
    v16 = 4294954510;
    goto LABEL_12;
  }

  v15 = getxattr(buffer, a2, v14, v12, 0, 0);
  v13 = __error();
  if (v15 <= 0)
  {
    goto LABEL_23;
  }

  v16 = 0;
  *a3 = v14;
  *a4 = v15;
  v14 = 0;
LABEL_12:
  CFRelease(v9);
  CFRelease(v11);
LABEL_13:
  free(v14);
  return v16;
}

void *OUTLINED_FUNCTION_2_159()
{

  return objc_autoreleasePoolPush();
}

uint64_t OUTLINED_FUNCTION_4_127(uint64_t a1)
{
  v5 = *(v2 + 2200);

  return [v5 assetFromFile:a1 withIdentifier:v1];
}

uint64_t OUTLINED_FUNCTION_5_111()
{
  v4 = *(v2 + 2200);

  return [v4 assetFromFile:v1 withIdentifier:v0];
}

uint64_t FigValeriaGetClassID(uint64_t a1, uint64_t a2)
{
  if (FigValeriaGetClassID_sRegisterFigValeriaTypeOnce != -1)
  {
    FigValeriaGetClassID_cold_1();
  }

  return FigValeriaGetClassID_sFigValeriaClassID;
}

uint64_t __FigValeriaGetClassID_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  CMBaseGetClassID();

  return FigBaseClassRegisterClass();
}

uint64_t FigValeriaGetTypeID(uint64_t a1, uint64_t a2)
{
  if (FigValeriaGetClassID_sRegisterFigValeriaTypeOnce != -1)
  {
    FigValeriaGetClassID_cold_1();
  }

  return CMBaseClassGetCFTypeID();
}

void InternalURLAssetCleanupPostPurchaseProcessing(uint64_t a1)
{
  if (!*(a1 + 192) && *(a1 + 193))
  {
    v2 = *(a1 + 296);
    CMNotificationCenterGetDefaultLocalCenter();
    if (v2)
    {
      FigNotificationCenterRemoveWeakListener();
      CMNotificationCenterGetDefaultLocalCenter();
      FigNotificationCenterRemoveWeakListener();
      CMBaseObject = CMByteStreamGetCMBaseObject();
      v4 = *(CMBaseObjectGetVTable() + 8);
      if (*v4 >= 2uLL)
      {
        v5 = v4[8];
        if (v5)
        {
          v5(CMBaseObject);
        }
      }

      FigThreadAbortQueueForTeardown();
      dispatch_group_wait(*(a1 + 296), 0xFFFFFFFFFFFFFFFFLL);
      dispatch_release(*(a1 + 296));
      *(a1 + 296) = 0;
      dispatch_release(*(a1 + 304));
      *(a1 + 304) = 0;
    }

    else
    {

      FigNotificationCenterRemoveWeakListener();
    }
  }
}

uint64_t InternalURLAssetEnsureCustomURLLoaderCreated(dispatch_once_t *context)
{
  v3 = context[2];
  v2 = context + 2;
  if (v3 != -1)
  {
    dispatch_once_f(v2, context, CreateCustomURLLoaderOnceFunc);
  }

  return *(context + 126);
}

void CreateCustomURLLoaderOnceFunc(uint64_t a1)
{
  keys[1] = *MEMORY[0x1E69E9840];
  if (*(a1 + 496))
  {
    *(a1 + 504) = 0;
  }

  else
  {
    v2 = MEMORY[0x1E695E4D0];
    if (!*(a1 + 618))
    {
      v2 = MEMORY[0x1E695E4C0];
    }

    v3 = *MEMORY[0x1E695E480];
    v4 = *MEMORY[0x1E69615F8];
    values = *v2;
    keys[0] = v4;
    v5 = CFDictionaryCreate(v3, keys, &values, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    if (v5)
    {
      v6 = v5;
      *(a1 + 504) = FigCustomURLLoaderCreate();
      CFRelease(v6);
    }

    else
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
      *(a1 + 504) = FigCustomURLLoaderCreate();
    }
  }
}

uint64_t InternalURLAssetSetStorageSession(void *a1, uint64_t a2)
{
  if (!*(a2 + 88) || !FigCFDictionaryGetArrayValue())
  {
    return 0;
  }

  return EnsureStorageSessionCreated(a1, a2);
}

uint64_t EnsureStorageSessionCreated(void *a1, uint64_t a2)
{
  if (*(a2 + 288))
  {
    return *(a2 + 292);
  }

  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (Mutable)
  {
    EnsureStorageSessionCreated_cold_2(a2, Mutable);
LABEL_6:
    v3 = FigURLStorageSessionCreate(Mutable, (a2 + 536));
    *(a2 + 292) = v3;
    goto LABEL_7;
  }

  if (EnsureStorageSessionCreated_cold_1(&v7))
  {
    goto LABEL_6;
  }

  v3 = v7;
LABEL_7:
  *(a2 + 288) = 1;
  StoreByProduct(a1, @"assetProperty_StorageSession", v3, 0, *(a2 + 536));
  if (Mutable)
  {
    CFRelease(Mutable);
  }

  return v3;
}

void InternalURLAssetSetIncrementalFragmentParsingInterval(void *a1, uint64_t a2)
{
  v4 = malloc_type_malloc(0x10uLL, 0x1020040EDED9539uLL);
  if (v4)
  {
    v5 = v4;
    *v4 = CFRetain(a1);
    v5[1] = a2;
    v7 = a1[12];
    v6 = a1[13];

    dispatch_group_async_f(v6, v7, v5, PerformSetIncrementalFragmentParsingInterval);
  }
}

void PerformSetIncrementalFragmentParsingInterval(uint64_t a1)
{
  v3 = *a1;
  v2 = *(a1 + 8);
  v4 = v2 & ~(v2 >> 63);
  *(v3 + 70) = v4;
  if (*(v3 + 552))
  {
    v5 = *(v3 + 71);
    if (v5)
    {
      if (v2 < 1)
      {
        v8 = -1;
        v6 = 0;
        v7 = 0;
      }

      else
      {
        v6 = 1000000 * v4;
        v7 = 1000000 * (v4 / 0x64);
        v8 = 0;
      }

      dispatch_source_set_timer(v5, v8, v6, v7);
    }
  }

  CFRelease(*a1);

  free(a1);
}

uint64_t InternalURLAssetShutdownWorkQueue(uint64_t a1)
{
  result = *(a1 + 96);
  if (result)
  {
    *(a1 + 112) = 1;
    return FigThreadAbortQueueForTeardown();
  }

  return result;
}

void InternalURLAssetCleanupChangeMonitoring(uint64_t a1)
{
  if (*(a1 + 464))
  {
    if (*(a1 + 465))
    {
      CMNotificationCenterGetDefaultLocalCenter();
      FigNotificationCenterRemoveWeakListener();
    }

    if (*(a1 + 466))
    {
      CMNotificationCenterGetDefaultLocalCenter();
      FigNotificationCenterRemoveWeakListener();
    }

    if (*(a1 + 467))
    {
      CMNotificationCenterGetDefaultLocalCenter();
      FigNotificationCenterRemoveWeakListener();
    }

    if (*(a1 + 468))
    {
      CMNotificationCenterGetDefaultLocalCenter();
      FigNotificationCenterRemoveWeakListener();
    }

    if (*(a1 + 456))
    {
      CMNotificationCenterGetDefaultLocalCenter();
      FigNotificationCenterRemoveWeakListener();
      v2 = *(a1 + 456);
      if (v2)
      {
        CFRelease(v2);
        *(a1 + 456) = 0;
      }
    }
  }
}

void DurationPropertyNotificationCallback(int a1, NSObject **cf)
{
  CFRetain(cf);
  v4 = cf[12];
  v3 = cf[13];

  dispatch_group_async_f(v3, v4, cf, ReviseDurationProperty);
}

void CouldContainFragmentsPropertyNotificationCallback(int a1, NSObject **cf)
{
  CFRetain(cf);
  v4 = cf[12];
  v3 = cf[13];

  dispatch_group_async_f(v3, v4, cf, ReviseCouldContainFragmentsProperty);
}

void ContainsFragmentsPropertyNotificationCallback(int a1, NSObject **cf)
{
  CFRetain(cf);
  v4 = cf[12];
  v3 = cf[13];

  dispatch_group_async_f(v3, v4, cf, ReviseContainsFragmentsProperty);
}

void TracksArrayPropertyNotificationCallback(int a1, NSObject **cf)
{
  CFRetain(cf);
  v4 = cf[12];
  v3 = cf[13];

  dispatch_group_async_f(v3, v4, cf, ReviseTracksArrayProperty);
}

void AssetMutationMonitoringNotificationCallback(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const void *a5)
{
  if (a5 && *(a2 + 456))
  {
    v7 = MEMORY[0x19A8D0E00](a2 + 472);
    if (v7)
    {
      v8 = v7;
      v9 = CFRetain(*(a2 + 456));
      CFRetain(a5);
      CFRetain(a2);
      CFRetain(v8);
      v11 = *(a2 + 96);
      v10 = *(a2 + 104);
      v12[0] = MEMORY[0x1E69E9820];
      v12[1] = 0x40000000;
      v12[2] = __AssetMutationMonitoringNotificationCallback_block_invoke;
      v12[3] = &__block_descriptor_tmp_108;
      v12[4] = a5;
      v12[5] = a2;
      v12[6] = v8;
      v12[7] = v9;
      dispatch_group_async(v10, v11, v12);
      CFRelease(v8);
    }
  }
}

void InternalURLAssetCleanupIncrementalFragmentProcessing(void *a1)
{
  CFRetain(a1);
  v3 = a1[12];
  v2 = a1[13];

  dispatch_group_async_f(v2, v3, a1, TearDownIncrementalFragmentParsingTimer);
}

void TearDownIncrementalFragmentParsingTimer(CFTypeRef cf)
{
  v2 = *(cf + 71);
  if (v2)
  {
    dispatch_source_cancel(v2);
    dispatch_release(*(cf + 71));
    *(cf + 71) = 0;
    *(cf + 552) = 0;
    v3 = *(cf + 72);
    if (v3)
    {
      os_release(v3);
      *(cf + 72) = 0;
    }
  }

  CFRelease(cf);
}

uint64_t InternalURLAssetEnsureDownloadTokenEstablished(uint64_t a1)
{
  FigSimpleMutexLock();
  if (*(a1 + 32))
  {
    v2 = 0;
  }

  else
  {
    v3 = MEMORY[0x19A8D0E00](a1 + 48);
    if (v3)
    {
      v4 = v3;
      FigAssetTableAddAsset(v3, a1 + 24);
      *(a1 + 32) = 1;
      FigSimpleMutexUnlock();
      CFRelease(v4);
      return 0;
    }

    v2 = 4294954511;
  }

  FigSimpleMutexUnlock();
  return v2;
}

uint64_t InternalURLAssetCreateByteStreamProvider(uint64_t a1)
{
  v2 = *(a1 + 80);
  if ((v2 & 0x38) != 0)
  {
    v3 = 30;
  }

  else
  {
    v3 = 2;
  }

  v4 = v3 & (v2 >> 1);
  if ((v3 & (v2 >> 1)) != 0 && *(a1 + 64) == 1431456810)
  {
    v5 = *MEMORY[0x1E695E480];
    BaseByteStreamProvider = FigGetBaseByteStreamProvider();
    v7 = *(a1 + 72);

    return MEMORY[0x1EEDBC2D0](v5, BaseByteStreamProvider, v7, v4, a1 + 488);
  }

  else
  {
    v8 = FigGetBaseByteStreamProvider();
    *(a1 + 488) = v8;
    if (v8)
    {
      CFRetain(v8);
    }

    return 0;
  }
}

uint64_t InternalURLAssetEnsurePersistentStreamingCacheCreated(uint64_t a1)
{
  cf = *MEMORY[0x1E695E4C0];
  FigSimpleMutexLock();
  LODWORD(v2) = EnsureStreamingCache(a1, 1);
  v3 = *(a1 + 408);
  AllocatorForMedia = FigGetAllocatorForMedia();
  FigStreamingCacheCopyProperty(v3, @"FSC_IsDiskBacked", AllocatorForMedia, &cf);
  if (cf == *MEMORY[0x1E695E4D0])
  {
    v2 = v2;
  }

  else
  {
    v2 = 4294955124;
  }

  FigSimpleMutexUnlock();
  if (cf)
  {
    CFRelease(cf);
  }

  return v2;
}

uint64_t InternalURLAssetEnsureContentKeySessionCreated(CFTypeRef *a1)
{
  FigSimpleMutexLock();
  if (!a1[65])
  {
    if (FigContentKeySessionCreate(*MEMORY[0x1E695E480], a1 + 65))
    {
      InternalURLAssetEnsureContentKeySessionCreated_cold_1();
      DataValue = v6;
      goto LABEL_3;
    }

    if (a1[11])
    {
      DataValue = FigCFDictionaryGetDataValue();
      if (!DataValue)
      {
        goto LABEL_3;
      }

      v4 = a1[65];
      v5 = *(*(CMBaseObjectGetVTable() + 8) + 56);
      if (!v5 || v5(v4, *MEMORY[0x1E6960F80], DataValue))
      {
        InternalURLAssetEnsureContentKeySessionCreated_cold_2();
        DataValue = v7;
        goto LABEL_3;
      }
    }
  }

  DataValue = 0;
LABEL_3:
  FigSimpleMutexUnlock();
  return DataValue;
}

uint64_t InternalURLAssetEnsureContentKeyBossIsCreatedAndUpToDate(void *a1)
{
  FigSimpleMutexLock();
  if (a1[66])
  {
    v2 = 0;
  }

  else
  {
    v3 = *MEMORY[0x1E695E480];
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    if (!Mutable)
    {
      InternalURLAssetEnsureContentKeyBossIsCreatedAndUpToDate_cold_1(&v11);
      active = v11;
      goto LABEL_15;
    }

    v2 = Mutable;
    FigCFDictionarySetValueFromKeyInDict();
    v5 = MEMORY[0x1E695E4C0];
    if ((a1[10] & 0x200) == 0)
    {
      v5 = MEMORY[0x1E695E4D0];
    }

    CFDictionarySetValue(v2, @"kCKBCO_OkToLogURLs", *v5);
    FigCFDictionaryGetBooleanIfPresent();
    FigCFDictionarySetBoolean();
    v6 = _os_feature_enabled_impl();
    v7 = (a1 + 66);
    if (v6)
    {
      v8 = FigContentKeyBossCreate(v3, v2, v7);
    }

    else
    {
      v8 = FigContentKeyCompoundBossCreate(v3, v2, v7);
    }

    active = v8;
    if (v8)
    {
      goto LABEL_14;
    }
  }

  if (_os_feature_enabled_impl())
  {
    active = URLAssetUpdateToActiveContentKeyBoss(a1);
    if (!v2)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

  active = 0;
  if (v2)
  {
LABEL_14:
    CFRelease(v2);
  }

LABEL_15:
  FigSimpleMutexUnlock();
  return active;
}

uint64_t URLAssetUpdateToActiveContentKeyBoss(uint64_t a1)
{
  v15 = 0;
  cf = 0;
  v14 = 0;
  v2 = *(a1 + 528);
  v3 = *(*(CMBaseObjectGetVTable() + 16) + 152);
  if (!v3)
  {
    goto LABEL_13;
  }

  v4 = v3(v2, &cf);
  v5 = cf;
  if (v4)
  {
    v6 = 1;
  }

  else
  {
    v6 = cf == 0;
  }

  if (!v6)
  {
    v7 = *(a1 + 528);
    v8 = *(*(CMBaseObjectGetVTable() + 16) + 136);
    if (v8)
    {
      v8(v7, &v15);
    }

    v9 = cf;
    v10 = *(*(CMBaseObjectGetVTable() + 16) + 136);
    if (v10)
    {
      v11 = v10(v9, &v14);
      if (!v11)
      {
        v12 = *(a1 + 528);
        if (v12)
        {
          CFRelease(v12);
        }

        v4 = 0;
        *(a1 + 528) = cf;
        return v4;
      }

      v4 = v11;
      goto LABEL_14;
    }

LABEL_13:
    v4 = 4294954514;
LABEL_14:
    v5 = cf;
  }

  if (v5)
  {
    CFRelease(v5);
  }

  return v4;
}

uint64_t InternalURLAssetTransferBytePumpAsync(const void *a1, dispatch_queue_t *a2, uint64_t a3, uint64_t a4)
{
  v8 = malloc_type_calloc(1uLL, 0x38uLL, 0x10A0040CEEF0025uLL);
  if (v8)
  {
    v9 = v8;
    v8[2] = CFRetain(a2);
    v9[3] = CFRetain(a1);
    v9[5] = a3;
    v9[6] = a4;
    dispatch_group_async_f(a2[13], a2[12], v9, PerformTransferBytePumpAsync);
    return 0;
  }

  else
  {
    InternalURLAssetTransferBytePumpAsync_cold_1(&v11);
    return v11;
  }
}

void InternalURLAssetCleanupStreamingProcessing(uint64_t a1)
{
  if (*(a1 + 384))
  {
    RemoveBytePumpListenersAndDoBarrier(a1);
    FigBytePumpGetFigBaseObject();
    if (v1)
    {
      v2 = v1;
      v3 = *(*(CMBaseObjectGetVTable() + 8) + 24);
      if (v3)
      {

        v3(v2);
      }
    }
  }
}

uint64_t FigAssetCreateCustomMediaSelectionSchemeFromJSON(const void *a1, CFMutableArrayRef *a2)
{
  if (a1 && (v3 = CFGetTypeID(a1), v3 == CFArrayGetTypeID()))
  {
    Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
    if (Mutable)
    {
      v5 = Mutable;
      FigCFArrayApplyFunction();
      if (!CFArrayGetCount(v5))
      {
        CFRelease(v5);
        v5 = 0;
      }

      result = 0;
      *a2 = v5;
    }

    else
    {
      FigAssetCreateCustomMediaSelectionSchemeFromJSON_cold_1(&v7);
      return v7;
    }
  }

  else
  {
    FigAssetCreateCustomMediaSelectionSchemeFromJSON_cold_2(&v8);
    return v8;
  }

  return result;
}

void convertCustomMediaSelectionSchemeMetadata(const __CFDictionary *a1, __CFArray *a2)
{
  value = 0;
  if (a1 && (v4 = CFGetTypeID(a1), v4 == CFDictionaryGetTypeID()))
  {
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    if (Mutable)
    {
      v6 = Mutable;
      CFDictionaryApplyFunction(a1, convertCustomMediaSelectionSchemeGroupMetadata, Mutable);
      if (FigCFDictionaryGetCount() && CFDictionaryGetValueIfPresent(v6, @"CustomMediaSelectionSchemeGroupMediaType", &value))
      {
        if (CFDictionaryGetValueIfPresent(v6, @"CustomMediaSelectionSchemeGroupSelectors", &value))
        {
          CFArrayAppendValue(a2, v6);
        }
      }

      CFRelease(v6);
    }

    else
    {
      convertCustomMediaSelectionSchemeMetadata_cold_1();
    }
  }

  else
  {
    convertCustomMediaSelectionSchemeMetadata_cold_2();
  }
}

void URLAssetPropertyWorkFunction(char *a1)
{
  v2 = *(a1 + 5);
  if (*(v2 + 112))
  {
    v16 = -12785;
    *(a1 + 4) = -12785;
    goto LABEL_60;
  }

  v3 = *a1;
  v4 = MEMORY[0x1E695FF58];
  if (*MEMORY[0x1E695FF58] == 1)
  {
    strncpy(__dst, (v2 + 592), 8uLL);
    v5 = *(a1 + 1);
    if (v5)
    {
      CFHash(v5);
    }

    kdebug_trace();
  }

  v6 = *(a1 + 1);
  if (a1[48])
  {
    *__dst = 0;
    LockTrackMacroPropertyState(*(v2 + 608));
    v7 = *(*(v2 + 608) + 40);
    if (v7 && CFDictionaryGetValueIfPresent(v7, v6, __dst))
    {
      v26 = 0;
      v25 = 0;
      cf = 0;
      if (!*(*(v2 + 608) + 48) && ((v8 = EnsureAssetTypeEstablished(v3, v2)) != 0 || !*(v2 + 192) && (v8 = EnsureTracksArrayCreated(v3, v2)) != 0))
      {
        v16 = v8;
      }

      else
      {
        v9 = *(*(v2 + 608) + 48);
        if (v9)
        {
          Count = CFArrayGetCount(v9);
          if (Count >= 1)
          {
            v11 = Count;
            for (i = 0; v11 != i; ++i)
            {
              ValueAtIndex = CFArrayGetValueAtIndex(*(*(v2 + 608) + 48), i);
              if (CFSetContainsValue(*__dst, ValueAtIndex))
              {
                v23 = 0;
                v14 = *(*(CMBaseObjectGetVTable() + 16) + 8);
                if (v14)
                {
                  v14(ValueAtIndex, v6, &v23, &v25, &cf);
                }

                if (v23 == 2)
                {
                  goto LABEL_24;
                }

                if (v23 == 3)
                {
                  CFSetRemoveAllValues(*__dst);
                  break;
                }

                v15 = *(*(CMBaseObjectGetVTable() + 16) + 24);
                if (v15)
                {
                  v15(ValueAtIndex, v6, &v26);
                }

                if (v26)
                {
LABEL_24:
                  CFSetRemoveValue(*__dst, ValueAtIndex);
                }
              }
            }
          }
        }

        if (!CFSetGetCount(*__dst))
        {
          StoreByProduct(v3, v6, v25, cf, 0);
        }

        if (cf)
        {
          CFRelease(cf);
        }

        v16 = 0;
        a1[49] = 1;
      }
    }

    else
    {
      a1[49] = 0;
      v16 = -12172;
    }

    UnlockTrackMacroPropertyState(*(v2 + 608));
    goto LABEL_56;
  }

  if (CFEqual(*(a1 + 1), @"assetProperty_ResolvedURL"))
  {
    if (!*(v2 + 168))
    {
      v17 = *(v2 + 64);
      if (v17 == 1431456810 || v17 == 708989738)
      {
        EnsureContentStreamCreated(v3, v2);
      }

      *(v2 + 168) = 1;
    }

    v19 = *(v2 + 184);
    if (v19 || (v19 = *(v2 + 176)) != 0)
    {
      v19 = CFRetain(v19);
    }

    *(a1 + 3) = v19;
    v16 = *(v2 + 172);
    goto LABEL_56;
  }

  if (CFEqual(*(a1 + 1), @"assetProperty_AssetType"))
  {
    v16 = EnsureAssetTypeEstablished(v3, v2);
    if (v16)
    {
LABEL_56:
      *(a1 + 4) = v16;
      goto LABEL_57;
    }

    v20 = *(v2 + 120);
    if (!v20)
    {
LABEL_45:
      *(a1 + 3) = v20;
      goto LABEL_56;
    }

LABEL_44:
    v20 = CFRetain(v20);
    goto LABEL_45;
  }

  if (CFEqual(*(a1 + 1), @"assetProperty_ContentByteStream"))
  {
    v16 = EnsureContentStreamCreated(v3, v2);
    v20 = *(v2 + 160);
    if (!v20)
    {
      goto LABEL_45;
    }

    goto LABEL_44;
  }

  if (!CFEqual(*(a1 + 1), @"assetProperty_StorageSession"))
  {
    v22 = EnsureAssetTypeEstablished(v3, v2);
    *(a1 + 4) = v22;
    if (!v22)
    {
      v21 = (*(v2 + 128))(v3, v2, *(a1 + 1), a1 + 24);
      goto LABEL_66;
    }

    v16 = v22;
LABEL_60:
    *(a1 + 4) = AssetCopyLoadError(v2, v16);
    goto LABEL_61;
  }

  v21 = ProduceStorageSessionProperty(v3, v2, a1 + 3);
LABEL_66:
  v16 = v21;
  *(a1 + 4) = v21;
LABEL_57:
  if (*v4 == 1)
  {
    kdebug_trace();
    v16 = *(a1 + 4);
  }

  if (v16)
  {
    goto LABEL_60;
  }

LABEL_61:
  ReportCompletedPropertyJob(a1);
}

uint64_t ProduceStorageSessionProperty(void *a1, uint64_t a2, void *a3)
{
  v5 = EnsureStorageSessionCreated(a1, a2);
  v6 = *(a2 + 536);
  if (v6)
  {
    v6 = CFRetain(v6);
  }

  *a3 = v6;
  return v5;
}

uint64_t EnsureAssetTypeEstablished(void *a1, uint64_t a2)
{
  if (*(a2 + 112))
  {
    v11 = -12785;
  }

  else
  {
    if (*(a2 + 113))
    {
      v4 = (a2 + 116);
      return *v4;
    }

    if (*(a2 + 64) == 709251626)
    {
      v5 = kFigAssetType_FormatReader;
      goto LABEL_10;
    }

    v6 = EnsureContentStreamCreated(a1, a2);
    if (!v6)
    {
      if (*(a2 + 192))
      {
        v7 = CFRetain(@"com.apple.coremedia.assettype.streaming");
        *(a2 + 120) = v7;
        v8 = ProduceStreamingAssetProperty;
LABEL_11:
        *(a2 + 128) = v8;
        *(a2 + 116) = 0;
        v9 = (a2 + 116);
        *(v9 - 3) = 1;
        StoreByProduct(a1, @"assetProperty_AssetType", 0, 0, v7);
        v4 = v9;
        return *v4;
      }

      v5 = kFigAssetType_File;
LABEL_10:
      v7 = CFRetain(*v5);
      *(a2 + 120) = v7;
      v8 = ProduceFormatReaderAssetProperty;
      goto LABEL_11;
    }

    v11 = v6;
  }

  *(a2 + 113) = 1;
  *(a2 + 116) = v11;
  v4 = (a2 + 116);
  Error = AssetCopyLoadError(a2, v11);
  StoreByProduct(a1, @"assetProperty_AssetType", *(a2 + 116), Error, *(a2 + 120));
  if (Error)
  {
    CFRelease(Error);
  }

  return *v4;
}

const __CFArray *AssetCopyLoadError(uint64_t a1, int a2)
{
  v15 = 0;
  if (*(a1 + 192))
  {
    v3 = *(a1 + 512);
    if (v3)
    {
      cf = 0;
      AllocatorForMedia = FigGetAllocatorForMedia();
      FigStreamingAssetLoaderCopyProperty(v3, @"SAP_ErrorLog", AllocatorForMedia, &cf);
    }

    else
    {
      if (!*(a1 + 384))
      {
        return 0;
      }

      cf = 0;
      FigBytePumpGetFigBaseObject();
      v10 = v9;
      v11 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      if (!v11)
      {
        return 0;
      }

      v11(v10, 0x1F0B1EFD8, *MEMORY[0x1E695E480], &cf);
    }

    if (cf)
    {
      FigCreateCFErrorFromFigErrorLog(cf, a2);
      v6 = v5;
      CFRelease(cf);
      return v6;
    }

    return 0;
  }

  if (*(a1 + 160))
  {
    CMBaseObject = CMByteStreamGetCMBaseObject();
    v8 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v8)
    {
      v8(CMBaseObject, *MEMORY[0x1E6960DD8], 0, &v15);
      return v15;
    }

    return 0;
  }

  v12 = *(a1 + 152);
  if (!v12)
  {
    return 0;
  }

  return CFRetain(v12);
}

uint64_t InternalURLAssetSetShouldPrefetchCryptKeys(const void *a1, dispatch_queue_t *a2, uint64_t a3)
{
  v6 = malloc_type_calloc(1uLL, 0x18uLL, 0x1020040A95220FAuLL);
  *v6 = CFRetain(a2);
  v6[1] = CFRetain(a1);
  *(v6 + 16) = *MEMORY[0x1E695E4D0] == a3;
  dispatch_group_async_f(a2[13], a2[12], v6, PerformSetShouldPrefetchCryptKeys);
  return 0;
}

void URLAssetTrackPropertyWorkFunction(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = MEMORY[0x1E695FF58];
  if (*MEMORY[0x1E695FF58] == 1)
  {
    strncpy(__dst, (v2 + 80), 8uLL);
    v4 = *(a1 + 8);
    if (v4)
    {
      CFHash(v4);
    }

    kdebug_trace();
  }

  v5 = ProduceAssetTrackProperty(v2, *(a1 + 8), (a1 + 24));
  if (*v3 == 1)
  {
    kdebug_trace();
  }

  *(a1 + 16) = v5;
  if (v5)
  {
    if (*(v2 + 32))
    {
      CMBaseObject = CMByteStreamGetCMBaseObject();
      v7 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      if (v7)
      {
        v7(CMBaseObject, *MEMORY[0x1E6960DD8], *MEMORY[0x1E695E480], a1 + 32);
      }
    }
  }

  ReportCompletedPropertyJob(a1);
}

uint64_t ProduceAssetTrackProperty(uint64_t a1, CFTypeRef cf1, void *a3)
{
  v32 = 0;
  if (CFEqual(cf1, @"FormatDescriptionArray"))
  {
    FigTrackReaderGetFigBaseObject();
    v7 = v6;
    v8 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v8)
    {
      v9 = kFigTrackProperty_FormatDescriptionArray;
LABEL_7:
      v11 = v8(v7, *v9, *MEMORY[0x1E695E480], &v32);
      goto LABEL_17;
    }

    goto LABEL_16;
  }

  if (CFEqual(cf1, @"IsEnabled"))
  {
    FigTrackReaderGetFigBaseObject();
    v7 = v10;
    v8 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v8)
    {
      v9 = kFigTrackProperty_Enabled;
      goto LABEL_7;
    }

    goto LABEL_16;
  }

  if (!CFEqual(cf1, @"IsSelfContained"))
  {
    if (CFEqual(cf1, @"TotalSampleDataLength"))
    {
      FigTrackReaderGetFigBaseObject();
      v7 = v16;
      v8 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      if (v8)
      {
        v9 = kFigTrackProperty_UneditedNumDataBytes;
        goto LABEL_7;
      }

LABEL_16:
      v11 = -12782;
      goto LABEL_17;
    }

    if (CFEqual(cf1, @"TimeRange"))
    {
      v11 = ProduceTimeRangeAssetTrackProperty(a1, &v32);
      goto LABEL_17;
    }

    if (CFEqual(cf1, @"MediaPresentationTimeRange"))
    {
      v11 = ProduceMediaPresentationTimeRangeAssetTrackProperty(a1);
      goto LABEL_17;
    }

    if (CFEqual(cf1, @"MediaDecodeTimeRange"))
    {
      v11 = ProduceMediaDecodeTimeRangeAssetTrackProperty(a1);
      goto LABEL_17;
    }

    if (CFEqual(cf1, @"NaturalTimeScale"))
    {
      v21 = kFigTrackProperty_Timescale;
LABEL_52:
      v22 = *v21;
      v23 = *MEMORY[0x1E695E480];
      FigTrackReaderGetFigBaseObject();
      v25 = v22;
      v26 = v23;
LABEL_53:
      v11 = CMBaseObjectCopyProperty(v24, v25, v26, &v32);
      goto LABEL_17;
    }

    if (CFEqual(cf1, @"EstimatedDataRate"))
    {
      v21 = kFigTrackProperty_EstimatedDataRate;
      goto LABEL_52;
    }

    if (CFEqual(cf1, @"PeakDataRate"))
    {
      v21 = kFigTrackProperty_PeakDataRate;
      goto LABEL_52;
    }

    if (CFEqual(cf1, @"UneditedSampleCount"))
    {
      v21 = kFigTrackProperty_UneditedSampleCount;
      goto LABEL_52;
    }

    if (CFEqual(cf1, @"HasRollInformation"))
    {
      v21 = kFigTrackProperty_HasRollInformation;
      goto LABEL_52;
    }

    if (CFEqual(cf1, @"LanguageCode"))
    {
      v21 = kFigTrackProperty_LanguageCode;
      goto LABEL_52;
    }

    if (CFEqual(cf1, @"MediaCharacteristicArray"))
    {
      v11 = FigMediaCharacteristicsCopyMediaCharacteristicsForTrackReader(*MEMORY[0x1E695E480], *(a1 + 24), &v32);
      goto LABEL_17;
    }

    if (CFEqual(cf1, @"ExtendedLanguageTag"))
    {
      v21 = kFigTrackProperty_ExtendedLanguageTagString;
      goto LABEL_52;
    }

    if (CFEqual(cf1, @"NaturalSize"))
    {
      v27 = *MEMORY[0x1E695E480];
      FigTrackReaderGetFigBaseObject();
      if (CMBaseObjectCopyProperty(v28, @"CleanApertureDimensions", v27, &v32) || !v32)
      {
        FigTrackReaderGetFigBaseObject();
        v25 = @"TrackDimensions";
        v26 = v27;
        goto LABEL_53;
      }

      goto LABEL_61;
    }

    if (CFEqual(cf1, @"TrackDimensions"))
    {
      v21 = kFigTrackProperty_Dimensions;
      goto LABEL_52;
    }

    if (CFEqual(cf1, @"CleanApertureDimensions"))
    {
      v21 = kFigTrackProperty_CleanApertureDimensions;
      goto LABEL_52;
    }

    if (CFEqual(cf1, @"ProductionApertureDimensions"))
    {
      v21 = kFigTrackProperty_ProductionApertureDimensions;
      goto LABEL_52;
    }

    if (CFEqual(cf1, @"EncodedPixelsDimensions"))
    {
      v21 = kFigTrackProperty_EncodedPixelsDimensions;
      goto LABEL_52;
    }

    if (CFEqual(cf1, @"PreferredTransform"))
    {
      v21 = kFigTrackProperty_Matrix;
      goto LABEL_52;
    }

    if (CFEqual(cf1, @"NominalFrameRate"))
    {
      v21 = kFigTrackProperty_NominalFrameRate;
      goto LABEL_52;
    }

    if (CFEqual(cf1, @"NonDroppableFrameRate"))
    {
      v11 = ProduceAssetTrackNonDroppableFrameRateProperty(a1, &v32);
      goto LABEL_17;
    }

    if (CFEqual(cf1, @"assetTrackProperty_QuickTimeMetadata"))
    {
      v11 = FigMetadataCopyTrackQuickTimeMetadata(*(a1 + 24), *MEMORY[0x1E695E480], &v32);
      goto LABEL_17;
    }

    if (CFEqual(cf1, @"assetTrackProperty_QuickTimeUserData"))
    {
      v11 = FigMetadataCopyTrackQuickTimeUserdata(*(a1 + 24), *MEMORY[0x1E695E480], &v32);
      goto LABEL_17;
    }

    if (CFEqual(cf1, @"assetTrackProperty_ISOUserData"))
    {
      v11 = FigMetadataCopyTrackISOUserdata(*(a1 + 24), *MEMORY[0x1E695E480], &v32);
      goto LABEL_17;
    }

    if (CFEqual(cf1, @"CommonMetadata"))
    {
      v11 = FigMetadataCopyTrackCommonMetadata(*(a1 + 24), *MEMORY[0x1E695E480], &v32);
      goto LABEL_17;
    }

    if (CFEqual(cf1, @"assetTrackProperty_FormatSpecificMetadata"))
    {
      v11 = ProduceFormatSpecificMetadataAssetTrackProperty();
      goto LABEL_17;
    }

    if (CFEqual(cf1, @"assetTrackProperty_FormatSpecificMetadataFormat"))
    {
      v11 = ProduceFormatSpecificMetadataFormatAssetTrackProperty();
      goto LABEL_17;
    }

    if (CFEqual(cf1, @"AvailableMetadataFormats"))
    {
      v11 = ProduceAvailableMetadataFormatsAssetTrackProperty();
      goto LABEL_17;
    }

    if (CFEqual(cf1, @"IsExcludedFromAutoselection"))
    {
      v21 = kFigTrackProperty_ExcludeFromAutoSelection;
      goto LABEL_52;
    }

    if (CFEqual(cf1, @"Volume"))
    {
      v21 = kFigTrackProperty_Volume;
      goto LABEL_52;
    }

    if (CFEqual(cf1, @"Layer"))
    {
      v21 = kFigTrackProperty_Layer;
      goto LABEL_52;
    }

    if (CFEqual(cf1, @"assetTrackProperty_EditSegmentData"))
    {
      v29 = a1;
      v30 = 0;
    }

    else
    {
      if (!CFEqual(cf1, @"assetTrackProperty_PresentationSegmentData"))
      {
        if (CFEqual(cf1, @"assetTrackProperty_EditsExcludeAudioPrimingAndRemainderDuration"))
        {
          v21 = kFigTrackProperty_EditsExcludeAudioPrimingAndRemainderDuration;
          goto LABEL_52;
        }

        if (CFEqual(cf1, @"assetTrackProperty_GaplessSourceTimeRange"))
        {
          ProduceGaplessSourceTimeRangeAssetTrackProperty(a1, &v32);
          goto LABEL_61;
        }

        if (CFEqual(cf1, @"assetTrackProperty_TrackReferences"))
        {
          v11 = ProduceTrackReferencesTrackProperty(a1, &v32);
          goto LABEL_17;
        }

        if (CFEqual(cf1, @"LoudnessInfo"))
        {
          v11 = ProduceLoudnessInfoTrackProperty(a1, &v32);
          goto LABEL_17;
        }

        if (CFEqual(cf1, @"assetTrackProperty_ProtectedStatus"))
        {
          v11 = ProduceProtectedStatusTrackProperty(a1, &v32);
          goto LABEL_17;
        }

        if (CFEqual(cf1, @"assetTrackProperty_UsesAudibleDRM"))
        {
          ProduceUsesAudibleDRMTrackProperty(a1, &v32);
          goto LABEL_61;
        }

        if (CFEqual(cf1, @"assetTrackProperty_AudibleContentIsAuthorized"))
        {
          ProduceAudibleContentIsAuthorizedTrackProperty(a1, &v32);
          goto LABEL_61;
        }

        if (CFEqual(cf1, @"MinSampleDuration"))
        {
          ProduceMinSampleDurationTrackProperty(a1, &v32);
          goto LABEL_61;
        }

        if (CFEqual(cf1, @"AlternateGroupID"))
        {
          v31 = kFigTrackProperty_AlternateGroupID;
        }

        else
        {
          if (!CFEqual(cf1, @"DefaultAlternateGroupID"))
          {
            if (CFEqual(cf1, @"ProvisionalAlternateGroupID"))
            {
              v21 = kFigTrackProperty_ProvisionalAlternateGroupID;
              goto LABEL_52;
            }

            if (CFEqual(cf1, @"LoadSettings"))
            {
              v21 = kFigTrackProperty_QTLoadSettings;
              goto LABEL_52;
            }

            if (CFEqual(cf1, @"SampleGroupDescriptions"))
            {
              v21 = kFigTrackProperty_SampleGroupDescriptions;
              goto LABEL_52;
            }

            if (CFEqual(cf1, @"HEVCTemporalLevelInfoCombinations"))
            {
              v21 = kFigTrackProperty_HEVCTemporalLevelInfoCombinations;
              goto LABEL_52;
            }

            if (CFEqual(cf1, @"HEVCSyncSampleNALUnitTypes"))
            {
              v21 = kFigTrackProperty_HEVCSyncSampleNALUnitTypes;
              goto LABEL_52;
            }

            if (CFEqual(cf1, @"assetTrackProperty_CameraRollValidation"))
            {
              ProduceAssetTrackCameraRollValidationProperty(a1, &v32);
            }

            else if (CFEqual(cf1, @"assetTrackProperty_MediaPlaybackValidation"))
            {
              ProduceAssetTrack_MediaPlaybackValidationProperty(a1, &v32);
            }

            else
            {
              if (!CFEqual(cf1, @"assetTrackProperty_MediaDecodingValidation"))
              {
                if (CFEqual(cf1, @"assetTrackProperty_ContainsWideColor"))
                {
                  v11 = ProduceAssetTrack_ContainsWideColor(a1, &v32);
                }

                else if (CFEqual(cf1, @"assetTrackProperty_LatentBaseDecodeTimeStampOfFirstTrackFragment"))
                {
                  v11 = ProduceAssetTrackLatentBaseDecodeTimeStampOfFirstTrackFragment(a1, &v32);
                }

                else
                {
                  v11 = -12182;
                }

                goto LABEL_17;
              }

              ProduceAssetTrack_MediaDecodingValidationProperty(a1, &v32);
            }

LABEL_61:
            v11 = 0;
            goto LABEL_17;
          }

          v31 = kFigTrackProperty_DefaultAlternateGroupID;
        }

        ProduceAlternateGroupIDTrackPropertyByKey(a1, *v31, &v32);
        goto LABEL_61;
      }

      v29 = a1;
      v30 = 1;
    }

    v11 = ProduceSegmentDataAssetTrackProperty(v29, v30, &v32);
    goto LABEL_17;
  }

  FigTrackReaderGetFigBaseObject();
  v13 = v12;
  v14 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v14 || (v11 = v14(v13, @"TrackIsSelfContained", *MEMORY[0x1E695E480], &v32), !v32))
  {
    if (*MEMORY[0x1E695E4D0])
    {
      v15 = CFRetain(*MEMORY[0x1E695E4D0]);
    }

    else
    {
      v15 = 0;
    }

    v11 = 0;
    v32 = v15;
  }

LABEL_17:
  if (v11 >> 1 == 2147477256 || v11 == -12787)
  {
    v18 = 0;
  }

  else
  {
    v18 = v11;
  }

  *a3 = v32;
  if (!v18 && *(a1 + 65))
  {
    if (!*(a1 + 72))
    {
      if (_MergedGlobals_118 != -1)
      {
        ProduceAssetTrackProperty_cold_1();
      }

      *(a1 + 72) = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      CMNotificationCenterGetDefaultLocalCenter();
      FigNotificationCenterAddWeakListener();
    }

    Value = CFDictionaryGetValue(sAssetTrackPropertyDependencies, cf1);
    if (Value)
    {
      CFDictionaryAddValue(*(a1 + 72), cf1, Value);
    }
  }

  return v18;
}

void InternalURLAssetTrackStopMonitoringChanges(uint64_t a1)
{
  if (*(a1 + 65))
  {
    if (*(a1 + 66))
    {
      CMNotificationCenterGetDefaultLocalCenter();
      FigNotificationCenterRemoveWeakListener();
      *(a1 + 66) = 0;
    }

    if (*(a1 + 72))
    {
      CMNotificationCenterGetDefaultLocalCenter();
      FigNotificationCenterRemoveWeakListener();
      v2 = *(a1 + 72);
      if (v2)
      {
        CFRelease(v2);
        *(a1 + 72) = 0;
      }
    }
  }
}

void SegmentDataAssetTrackPropertiesNotificationCallback(int a1, NSObject **cf)
{
  CFRetain(cf);
  v3 = cf[6];

  dispatch_async_f(v3, cf, ReviseSegmentDataAssetTrackProperties);
}

void AssetTrackMutationMonitoringNotificationCallback(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, const void *a5)
{
  if (a5)
  {
    v7 = MEMORY[0x19A8D0E00](a2 + 5);
    if (v7)
    {
      v8 = v7;
      CFRetain(a5);
      CFRetain(a2);
      CFRetain(v8);
      v10 = a2[6];
      v9 = a2[7];
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 0x40000000;
      block[2] = __AssetTrackMutationMonitoringNotificationCallback_block_invoke;
      block[3] = &__block_descriptor_tmp_34_1;
      block[4] = a5;
      block[5] = a2;
      block[6] = v8;
      dispatch_group_async(v9, v10, block);
      CFRelease(v8);
    }
  }
}

void URLAssetValidationWorkFunction(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = MEMORY[0x19A8D0E00](v2 + 472);
  v4 = v3;
  if (*(v2 + 112))
  {
    v5 = 1;
  }

  else
  {
    v5 = v3 == 0;
  }

  if (v5)
  {
    *(a1 + 24) = -12785;
    ReportCompletedValidationJob(a1);
    if (!v4)
    {
      return;
    }
  }

  else
  {
    ProduceAssetValidationResult(v3, v2, *(a1 + 8), *(a1 + 16));
    *(a1 + 24) = v6;
    ReportCompletedValidationJob(a1);
  }

  CFRelease(v4);
}

void URLAssetTrackValidationWorkFunction(uint64_t a1)
{
  *(a1 + 24) = ProduceAssetTrackValidationResult(*(a1 + 32), *(a1 + 8), *(a1 + 16));

  ReportCompletedValidationJob(a1);
}

uint64_t ProduceAssetTrackValidationResult(uint64_t a1, CFTypeRef cf1, const void *a3)
{
  cf = 0;
  if (CFEqual(cf1, @"validationCriteria_Custom"))
  {
    if (!a3)
    {
      return 0;
    }

    v6 = CFRetain(a3);
    cf = v6;
    if (!v6)
    {
      return 0;
    }

    goto LABEL_13;
  }

  if (CFEqual(cf1, @"validationCriteria_CameraRoll"))
  {
    v7 = @"CameraRollValidator.plist";
LABEL_9:
    v8 = 1;
LABEL_10:
    MediaValidatorPropertyList = FigMediaValidatorCreateMediaValidatorPropertyList(v7, &cf);
    if (MediaValidatorPropertyList)
    {
LABEL_16:
      v10 = MediaValidatorPropertyList;
      goto LABEL_17;
    }

    v6 = cf;
    if (!cf)
    {
      return 0;
    }

    if ((v8 & 1) == 0)
    {
      MediaValidatorPropertyList = FigMediaValidatorValidateIndividualTrackForDecoding(*(a1 + 16), *(a1 + 24), cf);
      goto LABEL_16;
    }

LABEL_13:
    MediaValidatorPropertyList = FigMediaValidatorValidateIndividualTrack(*(a1 + 16), *(a1 + 24), v6);
    goto LABEL_16;
  }

  if (CFEqual(cf1, @"validationCriteria_MediaPlayback"))
  {
    v7 = @"MediaValidator.plist";
    goto LABEL_9;
  }

  if (CFEqual(cf1, @"validationCriteria_MediaDecoding"))
  {
    v8 = 0;
    v7 = @"MediaValidator.plist";
    goto LABEL_10;
  }

  if (CFEqual(cf1, @"validationCriteria_PhotosTranscodingService"))
  {
    v7 = @"CloudTranscodeValidator.plist";
    goto LABEL_9;
  }

  ProduceAssetTrackValidationResult_cold_1(&v13);
  v10 = v13;
LABEL_17:
  if (cf)
  {
    CFRelease(cf);
  }

  return v10;
}

uint64_t InternalURLAssetCopyChapterData(const void *a1, dispatch_queue_t *a2, unsigned int a3, unsigned int a4, unsigned int a5, void *a6)
{
  v12 = malloc_type_calloc(1uLL, 0x30uLL, 0x106004070AE3097uLL);
  if (v12)
  {
    *(v12 + 1) = CFRetain(a2);
    *(v12 + 2) = CFRetain(a1);
    v12[6] = a3;
    v12[7] = a4;
    v12[8] = a5;
    dispatch_sync_f(a2[12], v12, PerformCopyChapterData);
    CFRelease(*(v12 + 1));
    CFRelease(*(v12 + 2));
    *a6 = *(v12 + 5);
    v13 = *v12;
  }

  else
  {
    InternalURLAssetCopyChapterData_cold_1(&v15);
    v13 = v15;
  }

  free(v12);
  return v13;
}

uint64_t InternalURLAssetFetchChapterDataAsync(const void *a1, dispatch_queue_t *a2, int a3, int a4, int a5)
{
  v10 = malloc_type_calloc(1uLL, 0x30uLL, 0x106004070AE3097uLL);
  if (v10)
  {
    v11 = v10;
    v10[1] = CFRetain(a2);
    v11[2] = CFRetain(a1);
    *(v11 + 6) = a3;
    *(v11 + 7) = a4;
    *(v11 + 8) = a5;
    dispatch_group_async_f(a2[13], a2[12], v11, PerformFetchChapterData);
    return 0;
  }

  else
  {
    InternalURLAssetFetchChapterDataAsync_cold_1(&v13);
    return v13;
  }
}

void PerformMultiTrackBatchLoad(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  if (!EnsureAssetTypeEstablished(v3, *a1) && !*(v2 + 192) && !EnsureTracksArrayCreated(v3, v2))
  {
    v4 = *(v2 + 272);
    if (v4)
    {
      a1[2] = v4;
      CFRetain(v4);
      if (!RequestMultiTrackBatches(a1) && *(a1 + 33))
      {
        v5 = a1[5];
        dispatch_retain(v5);
        dispatch_group_enter(v5);
        dispatch_group_notify_f(v5, *(v2 + 480), a1, FinalizeMultiTrackBatchLoadJob);
        dispatch_group_leave(v5);

        dispatch_release(v5);
        return;
      }
    }

    else if (PerformMultiTrackBatchLoad_cold_1())
    {
      return;
    }
  }

  FinalizeMultiTrackBatchLoadJob(a1);
}

uint64_t RequestMultiTrackBatches(uint64_t a1)
{
  v27 = 0;
  Count = CFArrayGetCount(*(a1 + 16));
  v3 = Count;
  *(a1 + 32) = 1;
  if (!*(a1 + 33))
  {
    if (Count >= 1)
    {
      v19 = 0;
      do
      {
        ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 16), v19);
        v27 = 0;
        v21 = *(a1 + 24);
        v22 = *(*(CMBaseObjectGetVTable() + 16) + 16);
        if (v22)
        {
          v22(ValueAtIndex, v21, &v27, 0);
        }

        if (v27)
        {
          v23 = *(a1 + 32) == 0;
        }

        else
        {
          v23 = 1;
        }

        v24 = !v23;
        *(a1 + 32) = v24;
        ++v19;
      }

      while (v3 != v19);
    }

    return 0;
  }

  v4 = malloc_type_calloc(Count, 4uLL, 0x100004052888210uLL);
  *(a1 + 48) = v4;
  if (v4)
  {
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], v3, MEMORY[0x1E695E9D8], 0);
    *(a1 + 56) = Mutable;
    if (Mutable)
    {
      *(a1 + 40) = dispatch_group_create();
      if (v3 >= 1)
      {
        v6 = 0;
        for (i = 0; i != v3; ++i)
        {
          v8 = CFArrayGetValueAtIndex(*(a1 + 16), i);
          CFDictionaryAddValue(*(a1 + 56), v8, (*(a1 + 48) + v6));
          v6 += 4;
        }

        v9 = 0;
        for (j = 0; j != v3; ++j)
        {
          v11 = CFArrayGetValueAtIndex(*(a1 + 16), j);
          v27 = 0;
          CMNotificationCenterGetDefaultLocalCenter();
          CMNotificationCenterAddListener();
          dispatch_group_enter(*(a1 + 40));
          v12 = *(a1 + 24);
          v13 = *(a1 + 48);
          v14 = *(*(CMBaseObjectGetVTable() + 16) + 16);
          if (v14)
          {
            v15 = v14(v11, v12, &v27, v13 + v9) != 0;
          }

          else
          {
            v15 = 1;
          }

          v16 = v27;
          if (*(a1 + 32))
          {
            v17 = v27 == 0;
          }

          else
          {
            v17 = 1;
          }

          v18 = !v17;
          *(a1 + 32) = v18;
          if (v16 || v15)
          {
            dispatch_group_leave(*(a1 + 40));
          }

          v9 += 4;
        }
      }

      return 0;
    }

    v26 = 9227;
  }

  else
  {
    v26 = 9225;
  }

  RequestMultiTrackBatches_cold_1(v26, &v28);
  return v28;
}

void FinalizeMultiTrackBatchLoadJob(uint64_t a1)
{
  if (a1)
  {
    if (*(a1 + 33))
    {
      if (*(a1 + 34) || !*(a1 + 32))
      {
        NotifyCompletedBatch(*(a1 + 8), *(a1 + 36));
      }

      v2 = *(a1 + 16);
      if (v2)
      {
        Count = CFArrayGetCount(v2);
        if (Count >= 1)
        {
          v4 = Count;
          for (i = 0; i != v4; ++i)
          {
            CFArrayGetValueAtIndex(*(a1 + 16), i);
            CMNotificationCenterGetDefaultLocalCenter();
            CMNotificationCenterRemoveListener();
            FigAssetTrackGetCMBaseObject();
            v7 = v6;
            v8 = *(CMBaseObjectGetVTable() + 8);
            if (*v8 >= 2uLL)
            {
              v9 = v8[8];
              if (v9)
              {
                v9(v7);
              }
            }
          }
        }
      }
    }

    v10 = *(a1 + 40);
    if (v10)
    {
      dispatch_release(v10);
    }

    v11 = *(a1 + 16);
    if (v11)
    {
      CFRelease(v11);
    }

    v12 = *(a1 + 24);
    if (v12)
    {
      CFRelease(v12);
    }

    v13 = *(a1 + 56);
    if (v13)
    {
      CFRelease(v13);
    }

    free(*(a1 + 48));
    if (*a1)
    {
      CFRelease(*a1);
    }

    v14 = *(a1 + 8);
    if (v14)
    {
      CFRelease(v14);
    }

    free(a1);
  }
}

double InternalURLAssetSetDeclaredAssetType(uint64_t a1, uint64_t a2, CFTypeRef cf1)
{
  v7 = @"com.apple.coremedia.assettype.streaming";
  if (CFEqual(cf1, @"com.apple.coremedia.assettype.streaming"))
  {
    *(a2 + 192) = 1;
    v8 = ProduceStreamingAssetProperty;
LABEL_4:
    v10 = v8;
    v11 = CFRetain(v7);
    *(a2 + 120) = v11;
    *(a2 + 128) = v10;
    *(a2 + 113) = 1;
    *(a2 + 116) = 0;
    InitializeProperty(a1, @"assetProperty_AssetType", 2, 0, v11);
    return result;
  }

  v7 = @"com.apple.coremedia.assettype.file";
  v9 = CFEqual(cf1, @"com.apple.coremedia.assettype.file");
  v8 = ProduceFormatReaderAssetProperty;
  if (v9)
  {
    goto LABEL_4;
  }

  emitter = fig_log_get_emitter();

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 4294955126, "<<< URLAsset >>>", 9375, v3);
}

const __CFDictionary *GetContentProtectionOptions(uint64_t a1, const __CFDictionary **a2, const __CFDictionary **a3, const __CFDictionary **a4)
{
  if (a2)
  {
    *a2 = 0;
  }

  if (a3)
  {
    *a3 = 0;
  }

  if (a4)
  {
    *a4 = 0;
  }

  result = *(a1 + 88);
  if (result)
  {
    result = FigCFDictionaryGetDictionaryValue();
    if (result)
    {
      v8 = result;
      if (a2)
      {
        result = CFDictionaryGetValue(result, @"assetOption_PurchaseBundle");
        *a2 = result;
      }

      if (a3)
      {
        result = CFDictionaryGetValue(v8, @"assetOption_AuthorizationInfo");
        *a3 = result;
      }

      if (a4)
      {
        result = CFDictionaryGetValue(v8, @"assetOption_ProtectedContentSupportStorageURL");
        *a4 = result;
      }
    }
  }

  return result;
}

void ReviseDownloadToDestinationResultProperty(uint64_t a1, int a2)
{
  valuePtr = a2;
  v3 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberIntType, &valuePtr);
  v4 = MEMORY[0x19A8D0E00](a1 + 472);
  v5 = v4;
  if (v4)
  {
    ReviseProperty(v4, @"assetProperty_DownloadToDestinationResult", v3);
  }

  if (v3)
  {
    CFRelease(v3);
  }

  if (v5)
  {
    CFRelease(v5);
  }
}

void PostDeferredPostPurchaseNotification(uint64_t a1, uint64_t a2, uint64_t a3, const void *a4, uint64_t a5)
{
  CMNotificationCenterPostNotification();

  CFRelease(a4);
}

uint64_t CreateHTTPRequestOptions(uint64_t a1, CFMutableDictionaryRef *a2)
{
  theDict = 0;
  v4 = FigCFHTTPCreateHTTPRequestOptionsFromAssetCreationOptions(*MEMORY[0x1E695E480], *(a1 + 88), &theDict);
  if (v4)
  {
    v5 = v4;
  }

  else
  {
    if (*(a1 + 16) != -1)
    {
      dispatch_once_f((a1 + 16), a1, CreateCustomURLLoaderOnceFunc);
    }

    v5 = *(a1 + 504);
    if (!v5)
    {
      FigCFDictionarySetValue();
      v6 = *(a1 + 536);
      if (v6)
      {
        CFDictionarySetValue(theDict, @"FHRP_StorageSession", v6);
      }

      Count = CFDictionaryGetCount(theDict);
      v8 = theDict;
      if (!Count && theDict)
      {
        CFRelease(theDict);
        v8 = 0;
      }

      v5 = 0;
      *a2 = v8;
      return v5;
    }
  }

  if (theDict)
  {
    CFRelease(theDict);
  }

  return v5;
}

void __AssetMutationMonitoringNotificationCallback_block_invoke(CFTypeRef *a1)
{
  v4 = *(a1 + 2);
  v3 = a1[6];
  v2 = a1[7];
  v5 = v3;
  CFDictionaryApplyFunction(v2, AssessMonitoredAssetPropertyChange, &v4);
  CFRelease(a1[4]);
  CFRelease(a1[7]);
  CFRelease(a1[5]);
  CFRelease(a1[6]);
}

void AssessMonitoredAssetPropertyChange(uint64_t a1, CFArrayRef theArray, uint64_t a3)
{
  Count = CFArrayGetCount(theArray);
  if (Count >= 1)
  {
    v7 = Count;
    for (i = 0; v7 != i; ++i)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(theArray, i);
      if (*(*(a3 + 8) + 112))
      {
        break;
      }

      if (CFDictionaryContainsKey(*a3, ValueAtIndex))
      {
        AssessMonitoredAssetPropertyChange_cold_1(a3, (a3 + 8), a1);
        return;
      }
    }
  }
}

void ReviseDurationProperty(char *a1)
{
  v2 = MEMORY[0x19A8D0E00](a1 + 472);
  v5 = 0;
  if (v2)
  {
    v3 = v2;
    if (!ObtainDurationPropertyValue(a1, &v5))
    {
      v4 = v5;
      ReviseProperty(v3, @"Duration", v5);
      if (v4)
      {
        CFRelease(v4);
      }
    }

    CFRelease(v3);
  }

  CFRelease(a1);
}

uint64_t ObtainDurationPropertyValue(uint64_t a1, void *a2)
{
  v18 = 0;
  cf = 0;
  v4 = *MEMORY[0x1E695E480];
  FigFormatReaderGetFigBaseObject();
  v6 = v5;
  v7 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v7)
  {
    v7(v6, @"SampleCursorTimeAccuracyIsExact", v4, &cf);
    v7 = cf;
  }

  if (v7 == *MEMORY[0x1E695E4D0])
  {
    v11 = 0;
  }

  else
  {
    FigFormatReaderGetFigBaseObject();
    v9 = v8;
    v10 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v10)
    {
      v11 = v10(v9, @"EstimatedDuration", v4, &v18);
    }

    else
    {
      v11 = 4294954514;
    }
  }

  if (!v18)
  {
    if (*(a1 + 81))
    {
      FigFormatReaderGetFigBaseObject();
      v13 = v16;
      v14 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      if (v14)
      {
        v15 = kFigFormatReaderProperty_NominalDuration;
        goto LABEL_14;
      }
    }

    else
    {
      FigFormatReaderGetFigBaseObject();
      v13 = v12;
      v14 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      if (v14)
      {
        v15 = kFigFormatReaderProperty_Duration;
LABEL_14:
        v11 = v14(v13, *v15, v4, &v18);
        goto LABEL_16;
      }
    }

    v11 = 4294954514;
  }

LABEL_16:
  if (cf)
  {
    CFRelease(cf);
  }

  *a2 = v18;
  return v11;
}

uint64_t EnsureTrackWorkQueueCreated(uint64_t a1)
{
  if (*(a1 + 280))
  {
    return 0;
  }

  v7 = v1;
  v8 = v2;
  v5 = FigDispatchQueueCreateWithPriority();
  *(a1 + 280) = v5;
  if (v5)
  {
    return 0;
  }

  EnsureTrackWorkQueueCreated_cold_1(&v6);
  return v6;
}

void ReviseCouldContainFragmentsProperty(char *a1)
{
  v2 = MEMORY[0x19A8D0E00](a1 + 472);
  v5 = 0;
  if (v2)
  {
    v3 = v2;
    ObtainCouldContainFragmentsPropertyValue(a1, &v5);
    v4 = v5;
    ReviseProperty(v3, @"assetProperty_CouldContainFragments", v5);
    if (v4)
    {
      CFRelease(v4);
    }

    CFRelease(v3);
  }

  CFRelease(a1);
}

CFTypeRef ObtainCouldContainFragmentsPropertyValue(uint64_t a1, void *a2)
{
  v7 = 0;
  FigFormatReaderGetFigBaseObject();
  v4 = v3;
  v5 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v5 || (v5(v4, @"CouldContainFragments", *MEMORY[0x1E695E480], &v7), (result = v7) == 0))
  {
    result = CFRetain(*MEMORY[0x1E695E4C0]);
  }

  *a2 = result;
  return result;
}

void ReviseContainsFragmentsProperty(char *a1)
{
  v2 = MEMORY[0x19A8D0E00](a1 + 472);
  v5 = 0;
  if (v2)
  {
    v3 = v2;
    ObtainContainsFragmentsPropertyValue(a1, &v5);
    v4 = v5;
    ReviseProperty(v3, @"assetProperty_ContainsFragments", v5);
    if (v4)
    {
      CFRelease(v4);
    }

    CFRelease(v3);
  }

  CFRelease(a1);
}

CFTypeRef ObtainContainsFragmentsPropertyValue(uint64_t a1, void *a2)
{
  v7 = 0;
  FigFormatReaderGetFigBaseObject();
  v4 = v3;
  v5 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v5 || (v5(v4, @"ContainsFragments", *MEMORY[0x1E695E480], &v7), (result = v7) == 0))
  {
    result = CFRetain(*MEMORY[0x1E695E4C0]);
  }

  *a2 = result;
  return result;
}

uint64_t FigBytePumpCopyProperty(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  FigBytePumpGetFigBaseObject();
  v8 = v7;
  v9 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v9)
  {
    return 4294954514;
  }

  return v9(v8, a2, a3, a4);
}

void PerformCompleteTransferBytePump(uint64_t a1)
{
  (*(a1 + 40))(*(a1 + 48), *(a1 + 32), *(a1 + 8));
  FigStopForwardingMediaServicesProcessDeathNotification();
  v2 = *(a1 + 8);
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = *(a1 + 32);
  if (v3)
  {
    CFRelease(v3);
  }

  v4 = *(a1 + 16);
  if (v4)
  {
    CFRelease(v4);
  }

  v5 = *(a1 + 24);
  if (v5)
  {
    CFRelease(v5);
  }

  free(a1);
}

uint64_t EnsureContentStreamCreated(void *a1, uint64_t a2)
{
  v88 = 0;
  v86 = 0;
  theDict = 0;
  v85 = 0;
  *cf = 0u;
  *v84 = 0u;
  *v82 = 0u;
  v81 = 0;
  if (*(a2 + 112))
  {
    v4 = 4294954511;
    goto LABEL_157;
  }

  if (*(a2 + 144))
  {
    return *(a2 + 148);
  }

  v5 = *(a2 + 64);
  if (v5 == 1431456810)
  {
    cf[1] = CFRetain(*(a2 + 72));
    v6 = *(a2 + 88);
    if (v6)
    {
      Value = CFDictionaryGetValue(v6, @"assetOption_OutOfBandMIMEType");
      if (Value)
      {
        v8 = CFGetTypeID(Value);
        if (v8 == CFStringGetTypeID())
        {
          EnsureContentStreamCreated_cold_6();
          v16 = 0;
          v13 = 0;
          LODWORD(v10) = 0;
          v15 = v95;
          v14 = v96[0];
          goto LABEL_18;
        }
      }

      v9 = CFDictionaryGetValue(*(a2 + 88), @"assetOption_OutOfBandFileType");
      v10 = v9;
      if (!v9)
      {
        v14 = 0;
        v13 = 0;
        v15 = 0;
        goto LABEL_17;
      }

      v11 = CFGetTypeID(v9);
      if (v11 == CFStringGetTypeID())
      {
        v96[0] = 0;
        FigCopySetOfStreamingSupportedUTIs(*MEMORY[0x1E695E480], v96);
        if (v96[0])
        {
          v12 = CFSetContainsValue(v96[0], v10);
          v13 = v12 != 0;
          if (v12)
          {
            LODWORD(v10) = FigMediaValidatorUTIIsShoutcastAudio(v10);
          }

          else
          {
            LODWORD(v10) = 0;
          }

          if (v96[0])
          {
            CFRelease(v96[0]);
          }
        }

        else
        {
          LODWORD(v10) = 0;
          v13 = 0;
        }

        v14 = 0;
        v17 = 0;
        v15 = 0;
        v16 = 1;
LABEL_19:
        if (v15)
        {
          v18 = 0;
        }

        else
        {
          v18 = v14;
        }

        if (v10)
        {
          v19 = 0;
        }

        else
        {
          v19 = v13;
        }

        if ((v18 & 1) != 0 || v19 || (v16 & v17) == 1 && FigMediaValidatorIsNonRefMovieURLStreaming(*(a2 + 72), 0, 0))
        {
          v20 = 0;
          LOBYTE(v85) = 1;
          goto LABEL_30;
        }

        Param = SetupBytestreamFactoryParameters();
        if (!Param)
        {
          v20 = 0;
          StringValue = FigCFDictionaryGetStringValue();
          v60 = *(a2 + 72);
          if (!StringValue)
          {
            if (v60)
            {
              v60 = CFRetain(v60);
            }

            v81 = v60;
            goto LABEL_198;
          }

          Param = FigCFHTTPCreateURLWithQueryParam(v60, @"_HLS_primary_id=", StringValue, &v81);
          if (!Param)
          {
            v60 = v81;
LABEL_198:
            if (*(a2 + 216))
            {
              v61 = &v84[1];
            }

            else
            {
              v61 = 0;
            }

            v62 = FigByteStreamFactoryCreateStreamFromURLWithOptions(v60, v86, 0, v82, &v82[1], cf, v61, &v88);
            v4 = v62;
            if (!v62)
            {
              goto LABEL_211;
            }

            LOBYTE(v96[0]) = 0;
            if (v15 | v10)
            {
              goto LABEL_205;
            }

            if (!FigMediaValidatorIsNonByteStreamURLStreaming(v62, *(a2 + 72), v82[1], cf[0], v96))
            {
LABEL_207:
              if (v82[1])
              {
                CFRelease(v82[1]);
                v82[1] = 0;
              }

              if (cf[0])
              {
                CFRelease(cf[0]);
                cf[0] = 0;
              }

LABEL_211:
              if (v4)
              {
                goto LABEL_157;
              }

LABEL_30:
              if (!v85)
              {
                if (*(a2 + 216))
                {
                  v21 = v84[1];
                  if (v84[1] || (CMBaseObject = CMByteStreamGetCMBaseObject(), CMBaseObjectCopyProperty(CMBaseObject, @"CRABS_ReadAheadAssertion", 0, &v84[1]), (v21 = v84[1]) != 0))
                  {
                    FigAssertionSetProperty(v21, @"Assertion_HolderName", @"FigAsset");
                  }
                }

                v23 = *(a2 + 88);
                if (!v23 || CFDictionaryGetValue(v23, @"assetOption_InhibitReferenceMovieResolution") != *MEMORY[0x1E695E4D0])
                {
                  if (v88)
                  {
                    CFRelease(v88);
                    v88 = 0;
                  }

                  v95 = 0;
                  v96[0] = 0;
                  v93 = 0;
                  v94 = 0;
                  v91 = 0;
                  v92 = 0;
                  if (v82[0])
                  {
                    v24 = *(a2 + 80);
                    v25 = (v24 & 0x38) != 0 ? 30 : 2;
                    v80 = v25 & (v24 >> 1);
                    v78 = v20;
                    if (theDict)
                    {
                      v26 = CFDictionaryGetCount(theDict) <= 0 ? 0 : theDict;
                    }

                    else
                    {
                      v26 = 0;
                    }

                    v27 = 0;
                    v79 = *MEMORY[0x1E695FFA0];
                    v28 = *MEMORY[0x1E695E480];
                    v29 = (a2 + 536);
                    v75 = @"assetProperty_StorageSession";
                    v76 = @"factoryOption_HTTPRequestOptions";
                    v30 = 5;
                    v77 = *MEMORY[0x1E6960E28];
                    while (1)
                    {
                      v90 = 0;
                      IsReferenceMovie(v82[0], &v90);
                      if (!v90)
                      {
LABEL_114:
                        v4 = 0;
                        goto LABEL_121;
                      }

                      v31 = CMByteStreamGetCMBaseObject();
                      v32 = *(*(CMBaseObjectGetVTable() + 8) + 48);
                      if (!v32 || (!v32(v31, v79, v28, v96) ? (v33 = v96[0] == 0) : (v33 = 1), v33))
                      {
                        EnsureContentStreamCreated_cold_3(&v89);
                        goto LABEL_237;
                      }

                      v34 = v29;
                      v35 = ResolveReferenceMovieWithOptions(v82[0], v96[0], v80, &v94);
                      v36 = cf[1];
                      cf[1] = v94;
                      if (v94)
                      {
                        CFRetain(v94);
                      }

                      if (v36)
                      {
                        CFRelease(v36);
                      }

                      if (v35)
                      {
                        v29 = v34;
                      }

                      else
                      {
                        v29 = v34;
                        if (!v94)
                        {
                          fig_log_get_emitter();
                          FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v74, v75, v76);
                          v35 = v37;
                        }
                      }

                      LODWORD(v84[0]) = v35;
                      if (v35)
                      {
                        EnsureContentStreamCreated_cold_1();
                        goto LABEL_237;
                      }

                      if (FigMediaValidatorIsNonRefMovieURLStreaming(cf[1], 0, 0))
                      {
                        v4 = 0;
                        LOBYTE(v85) = 1;
                        goto LABEL_121;
                      }

                      if (v26)
                      {
                        v27 = CFDictionaryGetValue(v26, @"factoryOption_DownloadDestinationURL");
                      }

                      if (!*(a2 + 288))
                      {
                        CMByteStreamGetCMBaseObject();
                        FigCRABSGetClassID();
                        if (CMBaseObjectIsMemberOfClass())
                        {
                          v39 = CMByteStreamGetCMBaseObject();
                          v40 = *(*(CMBaseObjectGetVTable() + 8) + 48);
                          if (v40)
                          {
                            if (!v40(v39, @"CRABS_StorageSession", 0, v29) && *v29)
                            {
                              v89 = 0;
                              *(a2 + 292) = 0;
                              *(a2 + 288) = 1;
                              if (!theDict)
                              {
                                theDict = CFDictionaryCreateMutable(v28, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
                              }

                              CreateHTTPRequestOptions(a2, &v89);
                              v41 = v89;
                              CFDictionarySetValue(theDict, v76, v89);
                              if (v41)
                              {
                                CFRelease(v41);
                              }

                              v26 = theDict;
                              StoreByProduct(a1, v75, 0, 0, *v29);
                            }
                          }
                        }
                      }

                      if (*(a2 + 216))
                      {
                        v38 = &v84[1];
                        if (v84[1])
                        {
                          CFRelease(v84[1]);
                          v84[1] = 0;
                          if (*(a2 + 216))
                          {
                            v38 = &v84[1];
                          }

                          else
                          {
                            v38 = 0;
                          }
                        }
                      }

                      else
                      {
                        v38 = 0;
                      }

                      v4 = FigByteStreamFactoryCreateStreamFromURLWithOptions(v94, v86, v26, &v95, &v93, &v92, v38, &v91);
                      if (v84[1])
                      {
                        FigAssertionSetProperty(v84[1], @"Assertion_HolderName", @"FigAsset");
                      }

                      if (v4)
                      {
                        if (v27 || !FigMediaValidatorIsNonByteStreamURLStreaming(v4, v94, v93, v92, &v90 + 1))
                        {
                          fig_log_get_emitter();
                          FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v74, v75, v76);
                          goto LABEL_121;
                        }

                        if (HIBYTE(v90))
                        {
                          *(a2 + 380) = 1;
                        }

                        LOBYTE(v85) = 1;
                      }

                      else if (!*(a2 + 584))
                      {
                        v89 = 0;
                        v43 = CMByteStreamGetCMBaseObject();
                        v44 = *(*(CMBaseObjectGetVTable() + 8) + 48);
                        if (v44)
                        {
                          if (!v44(v43, v77, v28, &v89))
                          {
                            *(a2 + 584) = v89;
                          }
                        }
                      }

                      if (!v85 && !v95)
                      {
                        break;
                      }

                      if (v82[0])
                      {
                        CFRelease(v82[0]);
                        v82[0] = 0;
                      }

                      if (v82[1])
                      {
                        CFRelease(v82[1]);
                        v82[1] = 0;
                      }

                      if (cf[0])
                      {
                        CFRelease(cf[0]);
                      }

                      v42 = v95;
                      v95 = 0;
                      v82[0] = v42;
                      v82[1] = v93;
                      cf[0] = v92;
                      v92 = 0;
                      v93 = 0;
                      LOBYTE(v90) = 0;
                      if (v94)
                      {
                        CFRelease(v94);
                        v94 = 0;
                      }

                      if (v96[0])
                      {
                        CFRelease(v96[0]);
                        v96[0] = 0;
                      }

                      if (v93)
                      {
                        CFRelease(v93);
                        v93 = 0;
                      }

                      if (v92)
                      {
                        CFRelease(v92);
                        v92 = 0;
                      }

                      if (!v85)
                      {
                        if (--v30)
                        {
                          continue;
                        }
                      }

                      goto LABEL_114;
                    }

                    EnsureContentStreamCreated_cold_2(&v89);
LABEL_237:
                    v4 = v89;
LABEL_121:
                    v20 = v78;
                    if (v95)
                    {
                      v46 = CMByteStreamGetCMBaseObject();
                      if (v46)
                      {
                        v47 = v46;
                        v48 = *(*(CMBaseObjectGetVTable() + 8) + 24);
                        if (v48)
                        {
                          v48(v47);
                        }
                      }

                      CFRelease(v95);
                    }
                  }

                  else
                  {
                    EnsureContentStreamCreated_cold_4(&v89);
                    v4 = v89;
                  }

                  if (v4)
                  {
                    v88 = v91;
                  }

                  else if (v91)
                  {
                    CFRelease(v91);
                  }

                  if (v94)
                  {
                    CFRelease(v94);
                  }

                  if (v96[0])
                  {
                    CFRelease(v96[0]);
                  }

                  if (v93)
                  {
                    CFRelease(v93);
                  }

                  if (v92)
                  {
                    CFRelease(v92);
                  }

                  if (v4)
                  {
                    goto LABEL_157;
                  }
                }

                v49 = v85;
                if (!v85 && v82[0])
                {
                  if (FigCFHTTPIsDataURL(cf[1]))
                  {
                    v96[0] = 0;
                    v50 = v82[0];
                    v51 = FigStreamPlaylistParserMinBytesRequiredToVerifyM3UPlaylist();
                    if (!CMByteStreamReadAndCreateBlockBuffer_1(v50, v51, v96))
                    {
                      LOBYTE(v85) = FigStreamingPlaylistVerifyM3UPlaylist(v96[0], 0);
                    }

                    if (v96[0])
                    {
                      CFRelease(v96[0]);
                    }
                  }

                  v49 = v85;
                }

                if (!v49)
                {
                  if (FigMediaValidatorIsNonRefMovieURLStreaming(cf[1], v82[1], cf[0]))
                  {
                    LOBYTE(v85) = 1;
                  }

                  else if (!v85)
                  {
                    FigSimpleMutexLock();
                    v63 = v82[0];
                    if (v82[0])
                    {
                      v63 = CFRetain(v82[0]);
                    }

                    *(a2 + 160) = v63;
                    v64 = v84[1];
                    if (v84[1])
                    {
                      v64 = CFRetain(v84[1]);
                      v63 = *(a2 + 160);
                    }

                    *(a2 + 224) = v64;
                    if (v63)
                    {
                      CMByteStreamGetCMBaseObject();
                      FigCRABSGetClassID();
                      if (CMBaseObjectIsMemberOfClass())
                      {
                        v96[0] = 0;
                        *(a2 + 193) = 1;
                        PropertyStoreSetComplainForSyncQueries(a1, 1);
                        v65 = CMByteStreamGetCMBaseObject();
                        v66 = CMBaseObjectCopyProperty(v65, @"CRABS_CacheIsVolatile", 0, v96);
                        v67 = v96[0];
                        if (!v66)
                        {
                          *(a2 + 194) = v96[0] == *MEMORY[0x1E695E4D0];
                        }

                        if (v67)
                        {
                          CFRelease(v67);
                        }
                      }
                    }

                    FigSimpleMutexUnlock();
                    if (!*(a2 + 288))
                    {
                      if (*(a2 + 193))
                      {
                        v71 = (a2 + 536);
                        v72 = CMByteStreamGetCMBaseObject();
                        if (!CMBaseObjectCopyProperty(v72, @"CRABS_StorageSession", 0, a2 + 536))
                        {
                          v73 = *v71;
                          if (*v71)
                          {
                            *(a2 + 292) = 0;
                            *(a2 + 288) = 1;
                            StoreByProduct(a1, @"assetProperty_StorageSession", 0, 0, v73);
                          }
                        }
                      }
                    }

                    if (!v85 && *(a2 + 193))
                    {
                      if (v20)
                      {
                        v96[0] = 0;
                        *(a2 + 304) = dispatch_queue_create("URLAssetPostPurchaseQueue", 0);
                        FigThreadMakeDispatchQueueAbortable();
                        *(a2 + 296) = dispatch_group_create();
                        CMNotificationCenterGetDefaultLocalCenter();
                        FigNotificationCenterAddWeakListener();
                        CMNotificationCenterGetDefaultLocalCenter();
                        FigNotificationCenterAddWeakListener();
                        v68 = *MEMORY[0x1E695FF80];
                        v69 = CMByteStreamGetCMBaseObject();
                        if (!CMBaseObjectCopyProperty(v69, v68, 0, v96))
                        {
                          v70 = v96[0];
                          if (v96[0] == *MEMORY[0x1E695E4D0])
                          {
                            CFRetain(a2);
                            dispatch_group_async_f(*(a2 + 104), *(a2 + 96), a2, URLAssetDoneDownloadingDispatchFunc);
                            v70 = v96[0];
                          }

                          if (v70)
                          {
                            CFRelease(v70);
                          }
                        }
                      }

                      else
                      {
                        CMNotificationCenterGetDefaultLocalCenter();
                        FigNotificationCenterAddWeakListener();
                      }
                    }

                    goto LABEL_156;
                  }
                }
              }

              if (v82[0])
              {
                CFRelease(v82[0]);
                v82[0] = 0;
              }

              if (v84[1])
              {
                CFRelease(v84[1]);
                v84[1] = 0;
              }

              PropertyStoreSetComplainForSyncQueries(a1, 1);
LABEL_156:
              v4 = 0;
              goto LABEL_157;
            }

            if (LOBYTE(v96[0]))
            {
LABEL_205:
              *(a2 + 380) = 1;
            }

            v4 = 0;
            LOBYTE(v85) = 1;
            goto LABEL_207;
          }
        }

        v4 = Param;
        goto LABEL_157;
      }
    }

    v14 = 0;
    v13 = 0;
    v15 = 0;
    LODWORD(v10) = 0;
LABEL_17:
    v16 = 1;
LABEL_18:
    v17 = 1;
    goto LABEL_19;
  }

  if (v5 == 708989738)
  {
    EnsureContentStreamCreated_cold_5();
    v20 = v96[0];
    goto LABEL_30;
  }

  v4 = 0;
  v82[0] = 0;
LABEL_157:
  *(a2 + 192) = v85;
  v52 = cf[1];
  if (cf[1])
  {
    v52 = CFRetain(cf[1]);
  }

  *(a2 + 176) = v52;
  v53 = v82[1];
  if (v82[1])
  {
    v53 = CFRetain(v82[1]);
  }

  *(a2 + 184) = v53;
  *(a2 + 172) = v84[0];
  *(a2 + 168) = 1;
  *(a2 + 144) = 1;
  *(a2 + 148) = v4;
  if (v4)
  {
    v54 = v88;
    if (v88)
    {
      v54 = CFRetain(v88);
    }

    *(a2 + 152) = v54;
  }

  if (theDict)
  {
    CFRelease(theDict);
    theDict = 0;
  }

  if (v82[0])
  {
    CFRelease(v82[0]);
  }

  if (v84[1])
  {
    CFRelease(v84[1]);
  }

  if (v82[1])
  {
    CFRelease(v82[1]);
  }

  if (cf[0])
  {
    CFRelease(cf[0]);
  }

  if (cf[1])
  {
    CFRelease(cf[1]);
  }

  v55 = *(a2 + 184);
  if (!v55)
  {
    v55 = *(a2 + 176);
  }

  StoreByProduct(a1, @"assetProperty_ResolvedURL", *(a2 + 172), 0, v55);
  v56 = *(a2 + 148);
  v57 = v88;
  if (!v56 && v88)
  {
    CFRelease(v88);
    v57 = 0;
    v88 = 0;
    v56 = *(a2 + 148);
  }

  StoreByProduct(a1, @"assetProperty_ContentByteStream", v56, v57, *(a2 + 160));
  if (v88)
  {
    CFRelease(v88);
  }

  if (v81)
  {
    CFRelease(v81);
  }

  return v4;
}

uint64_t CMByteStreamReadAndCreateBlockBuffer_1(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(*(CMBaseObjectGetVTable() + 16) + 32);
  if (!v6)
  {
    return 4294954514;
  }

  return v6(a1, a2, 0, a3, 0);
}

uint64_t CreateSanitizedOutOfBandAlternateTracksArray(const __CFArray *a1, __CFArray **a2)
{
  theArray = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  if (theArray)
  {
    Count = CFArrayGetCount(a1);
    if (Count < 1)
    {
      v19 = 0;
    }

    else
    {
      v23 = a2;
      v5 = 0;
      v6 = *MEMORY[0x1E695E4D0];
      v7 = *MEMORY[0x1E695E4C0];
      while (1)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(a1, v5);
        Value = CFDictionaryGetValue(ValueAtIndex, @"MediaSelectionOptionsMediaType");
        v10 = CFDictionaryGetValue(ValueAtIndex, @"MediaSelectionOptionsTaggedMediaCharacteristics");
        MutableCopy = FigCFDictionaryCreateMutableCopy();
        if (!MutableCopy)
        {
          break;
        }

        v12 = MutableCopy;
        if (!Value)
        {
          CFStringForOSTypeValue = FigGetCFStringForOSTypeValue();
          CFDictionarySetValue(v12, @"MediaSelectionOptionsMediaType", CFStringForOSTypeValue);
        }

        ++v5;
        FigCFDictionarySetInt32();
        v14 = v6;
        if (v10)
        {
          v15 = CFArrayGetCount(v10);
          v28.location = 0;
          v28.length = v15;
          v16 = CFArrayContainsValue(v10, v28, @"public.auxiliary-content");
          v29.location = 0;
          v29.length = v15;
          v17 = CFArrayContainsValue(v10, v29, @"public.subtitles.forced-only");
          if (v16)
          {
            v18 = v6;
          }

          else
          {
            v18 = v7;
          }

          CFDictionarySetValue(v12, @"MediaSelectionOptionsIsAuxiliaryContent", v18);
          if (v17)
          {
            v14 = v7;
          }

          else
          {
            v14 = v6;
          }
        }

        CFDictionarySetValue(v12, @"MediaSelectionOptionsDisplaysNonForcedSubtitles", v14);
        CFArrayAppendValue(theArray, v12);
        CFRelease(v12);
        if (Count == v5)
        {
          v19 = 0;
          a2 = v23;
          goto LABEL_17;
        }
      }

      fig_log_get_emitter();
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v22, v2, v23);
      v19 = v21;
      a2 = v24;
      if (v21)
      {
        CFRelease(theArray);
        theArray = 0;
      }
    }
  }

  else
  {
    CreateSanitizedOutOfBandAlternateTracksArray_cold_1(&v27);
    theArray = 0;
    v19 = v27;
  }

LABEL_17:
  *a2 = theArray;
  return v19;
}

uint64_t EnsureStreamingNetworkURL(void *a1, uint64_t a2)
{
  URLString = 0;
  cf = 0;
  if (*(a2 + 448))
  {
    return *(a2 + 452);
  }

  v5 = EnsureContentStreamCreated(a1, a2);
  if (v5)
  {
    goto LABEL_23;
  }

  if (!FigCFURLIsLocalResource())
  {
    v11 = *(a2 + 176);
    if (!v11)
    {
      v10 = 0;
      goto LABEL_15;
    }

    v11 = CFRetain(v11);
    v10 = v11;
    if (!v11)
    {
LABEL_15:
      v3 = 0;
      *(a2 + 440) = v11;
      goto LABEL_16;
    }

LABEL_13:
    v11 = CFRetain(v10);
    goto LABEL_15;
  }

  v6 = *MEMORY[0x1E695E480];
  v5 = FigHLSPersistentStoreCreateAtURL(*MEMORY[0x1E695E480], *(a2 + 176), 0, 0, &cf);
  if (v5)
  {
    goto LABEL_23;
  }

  FigHLSPersistentStoreGetFigBaseObject();
  v8 = v7;
  v9 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v9)
  {
    v10 = 0;
    v3 = 4294954514;
    goto LABEL_16;
  }

  v5 = v9(v8, @"MasterPlaylistNetworkURL", v6, &URLString);
  if (v5)
  {
LABEL_23:
    v3 = v5;
    v10 = 0;
    goto LABEL_16;
  }

  v10 = CFURLCreateWithString(v6, URLString, 0);
  if (v10)
  {
    goto LABEL_13;
  }

  EnsureStreamingNetworkURL_cold_1(&v15);
  v3 = v15;
LABEL_16:
  *(a2 + 448) = 1;
  *(a2 + 452) = v3;
  StoreByProduct(a1, @"assetProperty_OriginalNetworkContentURL", v3, 0, *(a2 + 440));
  if (v10)
  {
    CFRelease(v10);
  }

  if (URLString)
  {
    CFRelease(URLString);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  return v3;
}

void convertCustomMediaSelectionSchemeGroupMetadata(uint64_t a1, const void *a2, __CFDictionary *a3)
{
  if (FigCFEqual())
  {
    if (!FigCFEqual() && !FigCFEqual() && !FigCFEqual() && !FigCFEqual())
    {
      return;
    }

    CFStringForOSTypeValue = FigGetCFStringForOSTypeValue();
    v10 = a3;
    v9 = @"CustomMediaSelectionSchemeGroupMediaType";
    goto LABEL_11;
  }

  if (FigCFEqual())
  {
    v5 = MEMORY[0x1E695E4D0];
    v6 = FigCFEqual();
    v7 = MEMORY[0x1E695E4C0];
    if (!v6)
    {
      v7 = v5;
    }

    CFStringForOSTypeValue = *v7;
    v9 = @"CustomMediaSelectionSchemeGroupShouldDisplayLanguages";
    v10 = a3;
LABEL_11:

    CFDictionarySetValue(v10, v9, CFStringForOSTypeValue);
    return;
  }

  if (FigCFEqual())
  {
    if (a2 && (v11 = CFGetTypeID(a2), v11 == CFArrayGetTypeID()))
    {
      Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
      if (Mutable)
      {
        v13 = Mutable;
        FigCFArrayApplyFunction();
        if (CFArrayGetCount(v13))
        {
          CFDictionarySetValue(a3, @"CustomMediaSelectionSchemeGroupSelectors", v13);
        }

        CFRelease(v13);
      }

      else
      {
        convertCustomMediaSelectionSchemeGroupMetadata_cold_1();
      }
    }

    else
    {
      convertCustomMediaSelectionSchemeGroupMetadata_cold_2();
    }
  }
}

void convertCustomMediaSelectionSchemeSelectorsMetadata(const __CFDictionary *a1, __CFArray *a2)
{
  value = 0;
  if (a1 && (v4 = CFGetTypeID(a1), v4 == CFDictionaryGetTypeID()))
  {
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    if (Mutable)
    {
      v6 = Mutable;
      CFDictionaryApplyFunction(a1, convertCustomMediaSelectionSchemeSelectorMetadata, Mutable);
      if (FigCFDictionaryGetCount() && CFDictionaryGetValueIfPresent(v6, @"CustomMediaSelectionSchemeSelector", &value))
      {
        if (CFDictionaryGetValueIfPresent(v6, @"CustomMediaSelectionSchemeSelectorSettings", &value))
        {
          CFArrayAppendValue(a2, v6);
        }
      }

      CFRelease(v6);
    }

    else
    {
      convertCustomMediaSelectionSchemeSelectorsMetadata_cold_1();
    }
  }

  else
  {
    convertCustomMediaSelectionSchemeSelectorsMetadata_cold_2();
  }
}

void convertCustomMediaSelectionSchemeSelectorMetadata(uint64_t a1, const void *a2, __CFDictionary *a3)
{
  value = 0;
  if (FigCFEqual())
  {
    if (a2 && (v5 = CFGetTypeID(a2), v5 == CFStringGetTypeID()))
    {

      CFDictionarySetValue(a3, @"CustomMediaSelectionSchemeSelector", a2);
    }

    else
    {
      convertCustomMediaSelectionSchemeSelectorMetadata_cold_1();
    }
  }

  else
  {
    if (FigCFEqual())
    {
      createDictionaryWithDictionaryStringKeysAndStringValues(a2, &value);
      v6 = value;
      CFDictionarySetValue(a3, @"CustomMediaSelectionSchemeSelectorDisplayNames", value);
      if (!v6)
      {
        return;
      }

      v7 = v6;
    }

    else
    {
      if (!FigCFEqual())
      {
        return;
      }

      if (!a2 || (v8 = CFGetTypeID(a2), v8 != CFArrayGetTypeID()))
      {
        convertCustomMediaSelectionSchemeSelectorMetadata_cold_3();
        return;
      }

      Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
      if (!Mutable)
      {
        convertCustomMediaSelectionSchemeSelectorMetadata_cold_2();
        return;
      }

      v10 = Mutable;
      FigCFArrayApplyFunction();
      if (CFArrayGetCount(v10))
      {
        CFDictionarySetValue(a3, @"CustomMediaSelectionSchemeSelectorSettings", v10);
      }

      v7 = v10;
    }

    CFRelease(v7);
  }
}

void createDictionaryWithDictionaryStringKeysAndStringValues(const __CFDictionary *a1, CFMutableDictionaryRef *a2)
{
  if (a1 && (v4 = CFGetTypeID(a1), v4 == CFDictionaryGetTypeID()))
  {
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    if (Mutable)
    {
      v6 = Mutable;
      CFDictionaryApplyFunction(a1, transferStringKeyAndStringValue, Mutable);
      *a2 = v6;
    }

    else
    {
      createDictionaryWithDictionaryStringKeysAndStringValues_cold_1();
    }
  }

  else
  {
    createDictionaryWithDictionaryStringKeysAndStringValues_cold_2();
  }
}

void convertCustomMediaSelectionSchemeSettingsMetadata(const void *a1, __CFArray *a2)
{
  value = 0;
  if (!a1 || (v4 = CFGetTypeID(a1), v4 != CFDictionaryGetTypeID()))
  {
    convertCustomMediaSelectionSchemeSettingsMetadata_cold_2();
    return;
  }

  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (!Mutable)
  {
    convertCustomMediaSelectionSchemeSettingsMetadata_cold_1();
    return;
  }

  v6 = Mutable;
  CFDictionaryApplyFunction(a1, convertCustomMediaSelectionSchemeSettingMetadata, Mutable);
  if (FigCFDictionaryGetCount())
  {
    if (!FigCFDictionaryGetCount())
    {
      goto LABEL_12;
    }
  }

  else
  {
    CFRelease(v6);
    v6 = 0;
    if (!FigCFDictionaryGetCount())
    {
      return;
    }
  }

  ValueIfPresent = CFDictionaryGetValueIfPresent(v6, @"CustomMediaSelectionSchemeSettingMediaCharacteristic", &value);
  if (!v6 || ValueIfPresent)
  {
    if (!v6)
    {
      return;
    }

    CFArrayAppendValue(a2, v6);
  }

LABEL_12:
  CFRelease(v6);
}

void transferStringKeyAndStringValue(const void *a1, const void *a2, __CFDictionary *a3)
{
  if (a1 && (v7 = CFGetTypeID(a1), TypeID = CFStringGetTypeID(), a2) && v7 == TypeID && (v9 = CFGetTypeID(a2), v9 == CFStringGetTypeID()))
  {

    CFDictionarySetValue(a3, a1, a2);
  }

  else
  {
    emitter = fig_log_get_emitter();

    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 4294954516, "<<< URLAsset >>>", 6717, v3);
  }
}

void convertCustomMediaSelectionSchemeSettingMetadata(uint64_t a1, const void *a2, __CFDictionary *a3)
{
  value = 0;
  if (FigCFEqual())
  {
    if (a2 && (v5 = CFGetTypeID(a2), v5 == CFStringGetTypeID()))
    {

      CFDictionarySetValue(a3, @"CustomMediaSelectionSchemeSettingMediaCharacteristic", a2);
    }

    else
    {
      convertCustomMediaSelectionSchemeSettingMetadata_cold_1();
    }
  }

  else if (FigCFEqual())
  {
    createDictionaryWithDictionaryStringKeysAndStringValues(a2, &value);
    v6 = value;
    CFDictionarySetValue(a3, @"CustomMediaSelectionSchemeSettingDisplayNames", value);
    if (v6)
    {

      CFRelease(v6);
    }
  }
}

uint64_t EnsureTracksArrayCreated(void *a1, uint64_t a2)
{
  v3 = a1;
  cf = 0;
  capacity = 0;
  if (*(a2 + 112))
  {
    *(a2 + 272) = 0;
    v4 = 4294954511;
    goto LABEL_33;
  }

  if (*(a2 + 260))
  {
    return *(a2 + 264);
  }

  v5 = EnsureFormatReaderCreated(a1, a2);
  if (v5)
  {
LABEL_41:
    v4 = v5;
    Mutable = 0;
    goto LABEL_28;
  }

  v6 = *(a2 + 240);
  v7 = *(*(CMBaseObjectGetVTable() + 16) + 8);
  if (v7)
  {
    v5 = v7(v6, &capacity);
    if (v5)
    {
      v8 = 1;
    }

    else
    {
      v8 = capacity == 0;
    }

    if (!v8)
    {
      Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], capacity, MEMORY[0x1E695E9C0]);
      if (Mutable)
      {
        v10 = EnsureTrackWorkQueueCreated(a2);
        if (v10)
        {
          v4 = v10;
        }

        else
        {
          LockTrackMacroPropertyState(*(a2 + 608));
          if (capacity < 1)
          {
LABEL_24:
            SetTrackMacroPropertyStateTracks(*(a2 + 608), Mutable);
            UnlockTrackMacroPropertyState(*(a2 + 608));
            v4 = 0;
          }

          else
          {
            v11 = 0;
            while (1)
            {
              value = 0;
              v12 = *(a2 + 240);
              v13 = *(*(CMBaseObjectGetVTable() + 16) + 48);
              if (!v13)
              {
                v4 = 4294954514;
                goto LABEL_27;
              }

              v14 = v3;
              AssetTrack = v13(v12, v11, &cf, 0, 0);
              if (AssetTrack)
              {
                break;
              }

              v16 = CFGetAllocator(a2);
              v25 = *(a2 + 240);
              v17 = cf;
              v18 = *(a2 + 160);
              v19 = *(a2 + 280);
              v20 = *(a2 + 80);
              v21 = *(a2 + 464);
              TrackMacroPropertyDefinitions = GetTrackMacroPropertyDefinitions(*(a2 + 608));
              AssetTrack = URLAssetCreateAssetTrack(v16, v25, v17, v18, (a2 + 592), v19, BYTE1(v20) & 1, v21, TrackMacroPropertyDefinitions, *(a2 + 616), (*(a2 + 80) & 0x200) != 0, &value);
              if (AssetTrack)
              {
                break;
              }

              v3 = v14;
              if (PropertyStoreGetComplainForSyncQueries(v14))
              {
                URLAssetTrackSetComplainForSyncQueries(value, 1);
              }

              CFArrayAppendValue(Mutable, value);
              if (value)
              {
                CFRelease(value);
                value = 0;
              }

              if (cf)
              {
                CFRelease(cf);
                cf = 0;
              }

              if (++v11 >= capacity)
              {
                goto LABEL_24;
              }
            }

            v4 = AssetTrack;
            v3 = v14;
LABEL_27:
            UnlockTrackMacroPropertyState(*(a2 + 608));
          }
        }
      }

      else
      {
        EnsureTracksArrayCreated_cold_1(&value);
        v4 = value;
      }

      goto LABEL_28;
    }

    goto LABEL_41;
  }

  Mutable = 0;
  v4 = 4294954514;
LABEL_28:
  if (cf)
  {
    CFRelease(cf);
  }

  if (!Mutable || !v4)
  {
    *(a2 + 272) = Mutable;
    *(a2 + 260) = 1;
    *(a2 + 264) = v4;
    if (!v4)
    {
      StoreByProduct(v3, @"assetProperty_Tracks", 0, 0, Mutable);
      return v4;
    }

    goto LABEL_35;
  }

  CFRelease(Mutable);
  *(a2 + 272) = 0;
LABEL_33:
  *(a2 + 260) = 1;
  *(a2 + 264) = v4;
LABEL_35:
  Error = AssetCopyLoadError(a2, v4);
  StoreByProduct(v3, @"assetProperty_Tracks", *(a2 + 264), Error, *(a2 + 272));
  if (Error)
  {
    CFRelease(Error);
  }

  return v4;
}

uint64_t EnsureFormatReaderCreated(void *a1, uint64_t a2)
{
  cf[2] = *MEMORY[0x1E69E9840];
  v91 = 0;
  v90 = 0;
  v89 = 0;
  if (*(a2 + 112))
  {
    v5 = 4294954511;
LABEL_159:
    *(a2 + 232) = 1;
    *(a2 + 236) = v5;
    goto LABEL_150;
  }

  if (*(a2 + 232))
  {
    return *(a2 + 236);
  }

  if (*(a2 + 88))
  {
    FigCFDictionaryGetBooleanIfPresent();
  }

  FigCFDictionaryGetBooleanIfPresent();
  if (FigAssetAllowsSandboxedParsingOptIn())
  {
    FigCFDictionaryGetBooleanIfPresent();
  }

  v6 = MEMORY[0x1E695E480];
  if (*(a2 + 64) == 709251626)
  {
    v7 = *(a2 + 72);
    if (v7)
    {
      v7 = CFRetain(v7);
    }

    v8 = 0;
    Mutable = 0;
    *(a2 + 240) = v7;
    goto LABEL_133;
  }

  v10 = EnsureContentStreamCreated(a1, a2);
  if (v10)
  {
    v5 = v10;
    goto LABEL_159;
  }

  if (*(a2 + 192))
  {
    EnsureFormatReaderCreated_cold_1(cf);
    v5 = LODWORD(cf[0]);
    goto LABEL_149;
  }

  v11 = MEMORY[0x1E695E4D0];
  if (*(a2 + 88))
  {
    v82 = v2;
    v83 = a1;
    BooleanValue = FigCFDictionaryGetBooleanValue();
    v13 = FigCFDictionaryGetBooleanValue();
    v14 = FigCFDictionaryGetBooleanValue();
    v15 = CFDictionaryGetValue(*(a2 + 88), @"assetOption_IsMovieProxy");
    v16 = *v11;
    if (v15 == *v11)
    {
      v17 = v15;
    }

    else
    {
      v17 = 0;
    }

    v18 = CFDictionaryGetValue(*(a2 + 88), @"assetOption_SupportAliasDataReferences");
    if (v18 == v16)
    {
      v19 = v18;
    }

    else
    {
      v19 = 0;
    }

    v20 = FigCFDictionaryGetBooleanValue();
    value = FigCFDictionaryGetBooleanValue();
    v86 = FigCFDictionaryGetBooleanValue();
    v85 = FigCFDictionaryGetBooleanValue();
    v84 = FigCFDictionaryGetBooleanValue();
    v21 = CFDictionaryGetValue(*(a2 + 88), @"assetOption_PrepareForIncrementalFragments");
    *(a2 + 552) = v21 == v16;
    if (v21 == v16)
    {
      NumberValue = FigCFDictionaryGetNumberValue();
      v23 = (a2 + 560);
      if (!NumberValue || (CFNumberGetValue(NumberValue, kCFNumberSInt64Type, (a2 + 560)), (*v23 & 0x8000000000000000) != 0))
      {
        *v23 = 0;
      }
    }

    DictionaryValue = FigCFDictionaryGetDictionaryValue();
    v25 = FigCFDictionaryGetBooleanValue();
    v26 = v25;
    if (BooleanValue || v13 || v14 || v17 || v19 || v20 || value || *(a2 + 552) || v86 || v85 || v84 || v25)
    {
      MutableCopy = FigCFDictionaryCreateMutableCopy();
      DictionaryValue = MutableCopy;
      if (BooleanValue)
      {
        CFDictionarySetValue(MutableCopy, @"Instantiation_PreferPreciseDurationAndTiming", BooleanValue);
      }

      if (v13)
      {
        CFDictionarySetValue(DictionaryValue, @"ReadEntireMoovAtom", v13);
      }

      if (v14)
      {
        CFDictionarySetValue(DictionaryValue, @"Instantiation_PrepareForCopying", v14);
      }

      if (v17)
      {
        CFDictionarySetValue(DictionaryValue, @"Instantiation_MovieProxy", v17);
      }

      if (v19)
      {
        CFDictionarySetValue(DictionaryValue, @"QTMovie_SupportAliasRecords", v19);
      }

      if (v20)
      {
        CFDictionarySetValue(DictionaryValue, @"Instantiation_EnableAssetAnalysis", v20);
      }

      if (*(a2 + 552))
      {
        CFDictionarySetValue(DictionaryValue, @"Instantiation_AllowIncrementalFragmentParsing", v16);
      }

      v6 = MEMORY[0x1E695E480];
      if (value)
      {
        CFDictionarySetValue(DictionaryValue, @"Instantiation_SkipReadingMP3MetadataDuringFormatReaderCreation", value);
      }

      if (v86)
      {
        CFDictionarySetValue(DictionaryValue, @"Instantiation_ProhibitProFormatReaders", v86);
      }

      if (v85)
      {
        CFDictionarySetValue(DictionaryValue, @"Instantiation_DoNotUseAudioFileAllowList", v85);
      }

      if (v84)
      {
        CFDictionarySetValue(DictionaryValue, @"Instantiation_IgnoreDisabledAPACAudioTracks", v84);
      }

      if (v26)
      {
        CFDictionarySetValue(DictionaryValue, @"Instantiation_ParseExternalSphericalTags", v26);
      }

      v8 = DictionaryValue;
      a1 = v83;
    }

    else
    {
      v8 = 0;
      a1 = v83;
      v6 = MEMORY[0x1E695E480];
    }

    v28 = CFDictionaryGetValue(*(a2 + 88), @"assetOption_OutOfBandMIMEType");
    if (v28 && (v29 = v28, v30 = CFGetTypeID(v28), v30 == CFStringGetTypeID()))
    {
      Mutable = CFDictionaryCreateMutable(*v6, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      CFDictionarySetValue(Mutable, @"Selection_OutOfBandMIMEType", v29);
    }

    else
    {
      Mutable = 0;
    }

    v31 = CFDictionaryGetValue(*(a2 + 88), @"assetOption_OutOfBandFileType");
    if (v31)
    {
      v32 = v31;
      v33 = CFGetTypeID(v31);
      if (v33 == CFStringGetTypeID())
      {
        if (!Mutable)
        {
          Mutable = CFDictionaryCreateMutable(*v6, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
        }

        CFDictionarySetValue(Mutable, @"Selection_OutOfBandFileType", v32);
      }
    }

    v34 = CFDictionaryGetValue(*(a2 + 88), @"assetOption_AllowableTypes");
    if (v34)
    {
      v35 = v34;
      v36 = CFGetTypeID(v34);
      if (v36 == CFArrayGetTypeID())
      {
        if (!Mutable)
        {
          Mutable = CFDictionaryCreateMutable(*v6, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
        }

        CFDictionarySetValue(Mutable, @"Selection_AllowableTypes", v35);
      }
    }
  }

  else
  {
    DictionaryValue = 0;
    v8 = 0;
    Mutable = 0;
  }

  theData = 0;
  v37 = PKDIsContentKeyBossEnabled();
  if (v37 && *(a2 + 528))
  {
    cf[0] = 0;
    if (_os_feature_enabled_impl())
    {
      active = URLAssetUpdateToActiveContentKeyBoss(a2);
      if (active)
      {
LABEL_162:
        v5 = active;
        if (!Mutable)
        {
          goto LABEL_147;
        }

LABEL_146:
        CFRelease(Mutable);
        goto LABEL_147;
      }
    }

    v5 = FigContentKeySpecifierCreate(3, @"AudibleGroupID", 0, 0, cf);
    if (!v5)
    {
      v46 = *(a2 + 528);
      v47 = cf[0];
      v48 = *(CMBaseObjectGetVTable() + 16);
      if (v48)
      {
        v49 = v48;
      }

      else
      {
        v49 = 0;
      }

      v52 = v49[13];
      if (v52 && *v49 >= 2uLL)
      {
        v5 = v52(v46, v47, &theData);
      }

      else
      {
        v5 = 4294954514;
      }
    }

    v37 = cf[0];
    if (cf[0])
    {
      CFRelease(cf[0]);
    }
  }

  else
  {
    v50 = *(a2 + 520);
    if (v50)
    {
      v51 = *(*(CMBaseObjectGetVTable() + 16) + 80);
      if (!v51)
      {
        v5 = 4294954514;
        if (!Mutable)
        {
          goto LABEL_147;
        }

        goto LABEL_146;
      }

      v37 = v51(v50, @"AudibleGroupID", &theData);
      v5 = v37;
    }

    else
    {
      v5 = 0;
    }
  }

  if (v5 || (v37 = theData) == 0)
  {
    if (v5)
    {
      goto LABEL_145;
    }
  }

  else
  {
    if (CFDataGetLength(theData) >= 4)
    {
      CFDataGetBytePtr(theData);
      UInt32 = FigCFNumberCreateUInt32();
      if (!v8)
      {
        DictionaryValue = FigCFDictionaryCreateMutableCopy();
        v8 = DictionaryValue;
      }

      CFDictionarySetValue(v8, @"Instantiation_AudibleGroupID", UInt32);
      if (UInt32)
      {
        CFRelease(UInt32);
      }
    }

    CFRelease(theData);
  }

  v54 = FigAssetUsesRemoteFormatReader(v37, v38, v39, v40, v41, v42, v43, v44);
  v55 = (v54 | v90);
  v56 = v91;
  v57 = *(a2 + 160);
  AllocatorForMedia = FigGetAllocatorForMedia();
  if (!v55 || v56)
  {
    started = FigFormatReaderCreateForStreamReturningResults(v57, Mutable, AllocatorForMedia, DictionaryValue, (a2 + 240), (a2 + 248), (a2 + 256), &v89);
    goto LABEL_112;
  }

  active = FigFormatReaderRemoteCreateForStreamReturningResults(v57, Mutable, AllocatorForMedia, DictionaryValue, (a2 + 240), (a2 + 248), (a2 + 256), &v89);
  if (active)
  {
    goto LABEL_162;
  }

  started = FigStartForwardingMediaServicesProcessDeathNotification();
LABEL_112:
  v5 = started;
  if (started)
  {
    goto LABEL_145;
  }

  if (*(a2 + 193))
  {
    theDict = 0;
    FigFormatReaderGetFigBaseObject();
    v61 = v60;
    v62 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v62)
    {
      if (!v62(v61, @"ImportantResourceLocation", *v6, &theDict) && theDict)
      {
        valuePtr = 0;
        v93 = 0;
        v63 = CFDictionaryGetValue(theDict, @"LocationSize");
        if (v63)
        {
          CFNumberGetValue(v63, kCFNumberSInt64Type, &valuePtr);
        }

        v64 = CFDictionaryGetValue(theDict, @"LocationOffset");
        if (v64)
        {
          CFNumberGetValue(v64, kCFNumberSInt64Type, &v93);
          if (valuePtr)
          {
            cf[0] = v93;
            cf[1] = valuePtr;
            v65 = *(a2 + 160);
            v66 = *(*(CMBaseObjectGetVTable() + 24) + 8);
            if (v66)
            {
              v66(v65, 1, 1, cf);
            }
          }
        }

        CFRelease(theDict);
      }
    }
  }

  if (*(a2 + 552))
  {
    cf[0] = 0;
    FigFormatReaderGetFigBaseObject();
    v68 = v67;
    v69 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v69)
    {
      v69(v68, @"CouldContainFragments", *v6, cf);
      v69 = cf[0];
    }

    v70 = v69 == *MEMORY[0x1E695E4D0];
    *(a2 + 552) = v70;
    if (v70)
    {
      v71 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, *(a2 + 96));
      *(a2 + 568) = v71;
      if (v71)
      {
        dispatch_source_set_timer(v71, 0xFFFFFFFFFFFFFFFFLL, 0, 0);
        dispatch_set_context(*(a2 + 568), a2);
        dispatch_source_set_event_handler_f(*(a2 + 568), IncrementalFragmentParsingTimerFunction);
        *(a2 + 576) = voucher_copy();
        dispatch_resume(*(a2 + 568));
        v72 = *(a2 + 560);
        if (v72)
        {
          dispatch_source_set_timer(*(a2 + 568), 0, 1000000 * v72, 1000000 * (v72 / 100));
        }
      }

      *(a2 + 464) = 1;
    }
  }

LABEL_133:
  if (HIBYTE(v91))
  {
    cf[0] = 0;
    FigFormatReaderGetFigBaseObject();
    v74 = v73;
    v75 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v75)
    {
      v75(v74, @"Identifier", *v6, cf);
    }

    if (FigCFEqual())
    {
      v5 = 0;
    }

    else
    {
      FigStopForwardingMediaServicesProcessDeathNotification();
      v76 = *(a2 + 240);
      if (v76)
      {
        CFRelease(v76);
        *(a2 + 240) = 0;
      }

      fig_log_get_emitter();
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v81, v82, v83);
      v5 = v77;
    }

    if (cf[0])
    {
      CFRelease(cf[0]);
    }

LABEL_145:
    if (!Mutable)
    {
      goto LABEL_147;
    }

    goto LABEL_146;
  }

  v5 = 0;
  if (Mutable)
  {
    goto LABEL_146;
  }

LABEL_147:
  if (v8)
  {
    CFRelease(v8);
  }

LABEL_149:
  *(a2 + 232) = 1;
  *(a2 + 236) = v5;
  if (v5)
  {
LABEL_150:
    Error = AssetCopyLoadError(a2, v5);
    v79 = *(a2 + 236);
    goto LABEL_152;
  }

  v79 = 0;
  Error = 0;
LABEL_152:
  StoreByProduct(a1, @"assetProperty_FormatReader", v79, Error, *(a2 + 240));
  if (v89)
  {
    StoreByProduct(a1, @"AssetAnalysisMessages", 0, 0, v89);
    if (v89)
    {
      CFRelease(v89);
    }
  }

  if (Error)
  {
    CFRelease(Error);
  }

  return v5;
}

void IncrementalFragmentParsingTimerFunction(uint64_t a1)
{
  if (a1)
  {
    os_retain(*(a1 + 576));
    voucher_adopt();
    if (*(a1 + 112) || !*(a1 + 552) || (v3 = *(a1 + 240)) != 0 && ((v5 = 0, (v4 = *(*(CMBaseObjectGetVTable() + 16) + 40)) == 0) || v4(v3, 0, &v5) || (v5 & 4) != 0))
    {
      dispatch_source_set_timer(*(a1 + 568), 0xFFFFFFFFFFFFFFFFLL, 0, 0);
      *(a1 + 552) = 0;
    }

    v2 = voucher_adopt();
    os_release(v2);
  }
}

uint64_t ProduceSegmentDataAssetTrackProperty(uint64_t a1, int a2, __CFData **a3)
{
  if (*(a1 + 65))
  {
    CMNotificationCenterGetDefaultLocalCenter();
    FigNotificationCenterAddWeakListener();
    *(a1 + 66) = 1;
  }

  v6 = *(a1 + 16);
  v7 = *(a1 + 24);

  return FigTrackReaderCreateSegmentData(v6, v7, a2, a3);
}

CFDictionaryRef ProduceGaplessSourceTimeRangeAssetTrackProperty(uint64_t a1, CFDictionaryRef *a2)
{
  v3 = *(MEMORY[0x1E6960C98] + 16);
  *&v7.start.value = *MEMORY[0x1E6960C98];
  *&v7.start.epoch = v3;
  *&v7.duration.timescale = *(MEMORY[0x1E6960C98] + 32);
  FigGaplessInfoGetTrackGaplessSourceTimeRange(*(a1 + 16), *(a1 + 24), &v7);
  v4 = *MEMORY[0x1E695E480];
  v6 = v7;
  result = CMTimeRangeCopyAsDictionary(&v6, v4);
  *a2 = result;
  return result;
}

uint64_t ProduceTrackReferencesTrackProperty(uint64_t a1, void *a2)
{
  v17 = 0;
  theDict = 0;
  context = 0;
  FigFormatReaderGetFigBaseObject();
  v5 = v4;
  v6 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v6)
  {
    v13 = 0;
    v8 = 4294954514;
    goto LABEL_11;
  }

  v7 = *MEMORY[0x1E695E480];
  v8 = v6(v5, @"TrackReferenceDictionary", *MEMORY[0x1E695E480], &theDict);
  v9 = theDict;
  if (v8)
  {
    v10 = 1;
  }

  else
  {
    v10 = theDict == 0;
  }

  if (v10)
  {
    v13 = 0;
    if (!theDict)
    {
      goto LABEL_11;
    }

    goto LABEL_9;
  }

  valuePtr = 0;
  v11 = *(a1 + 24);
  v12 = *(*(CMBaseObjectGetVTable() + 16) + 8);
  if (v12)
  {
    v12(v11, &valuePtr, 0);
  }

  context = CFNumberCreate(v7, kCFNumberSInt32Type, &valuePtr);
  CFDictionaryApplyFunction(theDict, SpecificTrackReferenceApplierFunction, &context);
  CFRelease(context);
  v13 = v17;
  v9 = theDict;
  if (theDict)
  {
LABEL_9:
    CFRelease(v9);
  }

LABEL_11:
  *a2 = v13;
  return v8;
}

uint64_t ProduceProtectedStatusTrackProperty(uint64_t a1, CFTypeRef *a2)
{
  theArray = 0;
  v3 = *MEMORY[0x1E695E480];
  FigTrackReaderGetFigBaseObject();
  v5 = v4;
  v6 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v6)
  {
    v7 = 4294954514;
LABEL_13:
    v22 = 0;
    FigTrackReaderGetFigBaseObject();
    v15 = v14;
    v16 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v16)
    {
      v17 = MEMORY[0x1E695E4C0];
      v18 = v16(v15, @"IndicatesContentProtection", v3, &v22);
      if (v22 == *MEMORY[0x1E695E4D0] && v18 == 0)
      {
        v17 = MEMORY[0x1E695E4D0];
      }
    }

    else
    {
      v17 = MEMORY[0x1E695E4C0];
    }

    v20 = theArray;
    if (!theArray)
    {
      goto LABEL_23;
    }

LABEL_22:
    CFRelease(v20);
    goto LABEL_23;
  }

  v7 = v6(v5, @"TrackFormatDescriptionArray", v3, &theArray);
  if (v7)
  {
    v8 = 1;
  }

  else
  {
    v8 = theArray == 0;
  }

  if (v8)
  {
    goto LABEL_13;
  }

  Count = CFArrayGetCount(theArray);
  if (Count < 1)
  {
LABEL_11:
    v7 = 0;
    goto LABEL_13;
  }

  v10 = Count;
  v11 = 0;
  while (1)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(theArray, v11);
    if (FigCPEIsSupportedFormatDescription(ValueAtIndex))
    {
      break;
    }

    MediaSubType = CMFormatDescriptionGetMediaSubType(ValueAtIndex);
    if (FigCodecTypeIsProtected(MediaSubType))
    {
      break;
    }

    if (v10 == ++v11)
    {
      goto LABEL_11;
    }
  }

  v7 = 0;
  v20 = theArray;
  v17 = MEMORY[0x1E695E4D0];
  if (theArray)
  {
    goto LABEL_22;
  }

LABEL_23:
  *a2 = CFRetain(*v17);
  return v7;
}