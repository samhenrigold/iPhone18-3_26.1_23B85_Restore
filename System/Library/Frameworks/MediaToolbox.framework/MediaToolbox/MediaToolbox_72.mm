uint64_t FigVCPOutputEnqueueImage(uint64_t a1, uint64_t a2, __int128 *a3, int a4)
{
  Count = CFArrayGetCount(*(a1 + 72));
  if (Count < 1)
  {
    return 0;
  }

  v9 = Count;
  v10 = 0;
  if (a4)
  {
    v11 = 3;
  }

  else
  {
    v11 = 0;
  }

  while (1)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 72), v10);
    v15 = *a3;
    v16 = *(a3 + 2);
    v13 = *(*(CMBaseObjectGetVTable() + 16) + 32);
    if (!v13)
    {
      break;
    }

    v17 = v15;
    v18 = v16;
    result = v13(ValueAtIndex, a2, 0, &v17, v11);
    if (result)
    {
      return result;
    }

    if (v9 == ++v10)
    {
      return 0;
    }
  }

  return 4294954514;
}

uint64_t FigVCPOutputEnqueueTaggedBufferGroup(uint64_t a1, OpaqueCMTaggedBufferGroup *a2, __int128 *a3, int a4)
{
  v8 = *(a1 + 72);
  if (v8)
  {
    Count = CFArrayGetCount(v8);
  }

  else
  {
    Count = 0;
  }

  v10 = *(a1 + 80);
  if (v10)
  {
    v10 = CFArrayGetCount(v10);
  }

  if (Count == v10)
  {
    if (Count < 1)
    {
      return 0;
    }

    else
    {
      v11 = 0;
      if (a4)
      {
        v12 = 3;
      }

      else
      {
        v12 = 0;
      }

      v19 = *MEMORY[0x1E6960698];
      while (1)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 72), v11);
        v14 = CFArrayGetValueAtIndex(*(a1 + 80), v11);
        tagBuffer = v19;
        CMTagCollectionGetTagsWithCategory(v14, kCMTagCategory_StereoView, &tagBuffer, 1, 0);
        CVPixelBufferForTag = CMTaggedBufferGroupGetCVPixelBufferForTag(a2, tagBuffer, 0);
        if (!CVPixelBufferForTag)
        {
          break;
        }

        v16 = CVPixelBufferForTag;
        v20 = *a3;
        v21 = *(a3 + 2);
        v17 = *(*(CMBaseObjectGetVTable() + 16) + 32);
        if (!v17)
        {
          return 4294954514;
        }

        v23 = v20;
        v24 = v21;
        result = v17(ValueAtIndex, v16, 0, &v23, v12);
        if (result)
        {
          return result;
        }

        if (Count == ++v11)
        {
          return 0;
        }
      }

      return 4294954987;
    }
  }

  else
  {
    FigVCPOutputEnqueueTaggedBufferGroup_cold_1(&v23);
    return v23;
  }
}

uint64_t fvcp_sourceArray_Register()
{
  result = _CFRuntimeRegisterClass();
  sFigVCPSourceArrayID = result;
  return result;
}

const __CFArray *FigVCPSourceArrayGetCount(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return CFArrayGetCount(result);
  }

  return result;
}

uint64_t FigVCPSourceArrayNoMoreImagesOnAnySource(uint64_t a1)
{
  context = 1;
  v1 = *(a1 + 32);
  v4.length = CFArrayGetCount(v1);
  v4.location = 0;
  CFArrayApplyFunction(v1, v4, fvcp_sourceArray_noMoreImagesOnAnySource, &context);
  return context;
}

uint64_t fvcp_sourceArray_noMoreImagesOnAnySource(uint64_t result, _BYTE *a2)
{
  if (*a2)
  {
    result = FigVCPSourceHasNoMoreSamples(result);
    if (!result)
    {
      *a2 = 0;
    }
  }

  return result;
}

CFIndex FigVCPSourceArrayApplyFunction(uint64_t a1, uint64_t (*a2)(const void *, uint64_t), uint64_t a3)
{
  result = *(a1 + 32);
  if (result)
  {
    result = CFArrayGetCount(result);
    if (result >= 1)
    {
      v7 = result;
      for (i = 0; i != v7; ++i)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 32), i);
        result = a2(ValueAtIndex, a3);
      }
    }
  }

  return result;
}

uint64_t FigVCPSourceArrayCopyPerformanceDictionary(uint64_t a1, CFMutableDictionaryRef *a2)
{
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  FigVCPSourceArrayApplyFunction(a1, fvcp_sourceArray_appendToPerformanceDictionary, Mutable);
  if (a2)
  {
    *a2 = Mutable;
  }

  else if (Mutable)
  {
    CFRelease(Mutable);
  }

  return 0;
}

void fvcp_sourceArray_appendToPerformanceDictionary(uint64_t a1, void *a2)
{
  theDict = 0;
  FigVCPSourceCopyPerformanceDictionary(a1, &theDict);
  if (theDict)
  {
    CFDictionaryApplyFunction(theDict, fvcp_addEntriesToDictionaryAux, a2);
    if (theDict)
    {
      CFRelease(theDict);
    }
  }
}

void fvcp_sourceArray_appendEachSourceToArrayExceptTrackID(const __CFArray *a1, __CFArray *a2, int a3)
{
  if (a1)
  {
    Count = CFArrayGetCount(a1);
    if (Count >= 1)
    {
      v7 = Count;
      for (i = 0; i != v7; ++i)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(a1, i);
        if (*CMBaseObjectGetDerivedStorage() == a3)
        {
          FigVCPSourceInvalidate(ValueAtIndex);
        }

        else
        {
          CFArrayAppendValue(a2, ValueAtIndex);
        }
      }
    }
  }
}

uint64_t FigVCPSourceArrayCreateEmpty(const __CFAllocator *a1, uint64_t a2, uint64_t *a3)
{
  if (a3)
  {
    MEMORY[0x19A8D3660](&FigVCPSourceArrayGetTypeID_sRegisterFigVCPSourceArrayOnce, fvcp_sourceArray_Register);
    Instance = _CFRuntimeCreateInstance();
    if (Instance)
    {
      v7 = Instance;
      *(Instance + 32) = CFArrayCreate(a1, 0, 0, MEMORY[0x1E695E9C0]);
      v8 = CFSetCreate(a1, 0, 0, MEMORY[0x1E695E9F8]);
      result = 0;
      *(v7 + 40) = v8;
      *(v7 + 24) = a2;
      *a3 = v7;
    }

    else
    {
      FigVCPSourceArrayCreateEmpty_cold_1(&v10);
      return v10;
    }
  }

  else
  {
    FigVCPSourceArrayCreateEmpty_cold_2(&v11);
    return v11;
  }

  return result;
}

uint64_t fvcp_coreAnimationPostProcessor_Register()
{
  result = _CFRuntimeRegisterClass();
  sFigVCPCoreAnimationPostProcessorID = result;
  return result;
}

void FigVCPCoreAnimationPostProcessorThrottleForBackground(uint64_t a1)
{
  if (!FigAtomicCompareAndSwapPtr())
  {
    v2 = *(a1 + 48);

    FigCoreAnimationRendererSetProperty(v2);
  }
}

uint64_t FigVCPCoreAnimationPostProcessorCopyPixelBufferAtTime(uint64_t a1, uint64_t a2, __CVBuffer *a3, uint64_t a4, CFTypeRef *a5)
{
  FigSimpleMutexLock();
  *&v29.value = *a2;
  v29.epoch = *(a2 + 16);
  v31 = 0;
  v9 = FigAtomicCompareAndSwapPtr();
  v10 = *MEMORY[0x1E695E480];
  if (v9)
  {
    cf.value = 0;
    MutableCopy = FigCFDictionaryCreateMutableCopy();
    FigCFDictionarySetInt32();
    CVPixelBufferGetWidth(a3);
    FigCFDictionarySetInt32();
    CVPixelBufferGetHeight(a3);
    FigCFDictionarySetInt32();
    v12 = FigCFDictionaryCreateMutableCopy();
    v13 = CVBufferCopyAttachments(a3, kCVAttachmentMode_ShouldPropagate);
    v14 = v13;
    if (v13)
    {
      v15 = *MEMORY[0x1E6965F98];
      if (CFDictionaryGetValue(v13, *MEMORY[0x1E6965F98]))
      {
        Value = CFDictionaryGetValue(v14, v15);
        CFDictionarySetValue(v12, v15, Value);
      }

      v17 = *MEMORY[0x1E6965F30];
      if (CFDictionaryGetValue(v14, *MEMORY[0x1E6965F30]))
      {
        v18 = CFDictionaryGetValue(v14, v17);
        CFDictionarySetValue(v12, v17, v18);
      }

      v19 = *MEMORY[0x1E6965D88];
      if (CFDictionaryGetValue(v14, *MEMORY[0x1E6965D88]))
      {
        v20 = CFDictionaryGetValue(v14, v19);
        CFDictionarySetValue(v12, v19, v20);
      }
    }

    value_low = FigCoreAnimationRendererCreate(v10, MutableCopy, *(a1 + 24), *(a1 + 32), v12, &cf.value);
    Mutable = cf.value;
    if (value_low)
    {
      if (cf.value)
      {
        CFRelease(cf.value);
        Mutable = 0;
      }
    }

    else
    {
      cf.value = 0;
    }

    if (MutableCopy)
    {
      CFRelease(MutableCopy);
    }

    if (v12)
    {
      CFRelease(v12);
    }

    if (v14)
    {
      CFRelease(v14);
    }

    if (value_low)
    {
      goto LABEL_31;
    }

    if (!FigAtomicCompareAndSwapPtr())
    {
      FigVCPCoreAnimationPostProcessorCopyPixelBufferAtTime_cold_1(&cf);
      value_low = LODWORD(cf.value);
      if (!Mutable)
      {
        goto LABEL_33;
      }

      goto LABEL_32;
    }
  }

  Mutable = CFArrayCreateMutable(v10, 0, MEMORY[0x1E695E9C0]);
  CFArrayAppendValue(Mutable, a3);
  UpTimeNanoseconds = FigGetUpTimeNanoseconds();
  v24 = *(a1 + 48);
  cf = v29;
  value_low = FigCoreAnimationRendererCopyPixelBufferAtTime(v24, &cf, Mutable, &v31, 0);
  v25 = FigGetUpTimeNanoseconds();
  v26 = (v25 - UpTimeNanoseconds) / 1000;
  ++*(a1 + 80);
  *(a1 + 72) += v26;
  v27 = *(a1 + 64);
  if (v27 >= v26)
  {
    v27 = (v25 - UpTimeNanoseconds) / 1000;
  }

  if (*(a1 + 56) > v26)
  {
    v26 = *(a1 + 56);
  }

  *(a1 + 56) = v26;
  *(a1 + 64) = v27;
  if (a5 && !value_low)
  {
    *a5 = v31;
    v31 = 0;
    if (!Mutable)
    {
      goto LABEL_33;
    }

    goto LABEL_32;
  }

  if (v31)
  {
    CFRelease(v31);
  }

LABEL_31:
  if (Mutable)
  {
LABEL_32:
    CFRelease(Mutable);
  }

LABEL_33:
  FigSimpleMutexUnlock();
  return value_low;
}

uint64_t FigVCPCoreAnimationPostProcessorCreate(uint64_t a1, const void *a2, CFArrayRef theArray, const void *a4, void *a5)
{
  if (!a5)
  {
    FigVCPCoreAnimationPostProcessorCreate_cold_5(&v13);
    return v13;
  }

  if (!a2)
  {
    FigVCPCoreAnimationPostProcessorCreate_cold_4(&v13);
    return v13;
  }

  if (!theArray)
  {
    FigVCPCoreAnimationPostProcessorCreate_cold_3(&v13);
    return v13;
  }

  if (CFArrayGetCount(theArray) <= 0)
  {
    FigVCPCoreAnimationPostProcessorCreate_cold_2(&v13);
    return v13;
  }

  MEMORY[0x19A8D3660](&FigVCPCoreAnimationPostProcessorGetTypeID_sRegisterFigVCPCoreAnimationPostProcessorOnce, fvcp_coreAnimationPostProcessor_Register);
  Instance = _CFRuntimeCreateInstance();
  if (!Instance)
  {
    FigVCPCoreAnimationPostProcessorCreate_cold_1(&v13);
    return v13;
  }

  v10 = Instance;
  *(Instance + 16) = FigSimpleMutexCreate();
  v10[3] = CFRetain(a2);
  v10[4] = CFRetain(theArray);
  if (a4)
  {
    v11 = CFRetain(a4);
  }

  else
  {
    v11 = 0;
  }

  result = 0;
  v10[5] = v11;
  v10[8] = 0x7FFFFFFFLL;
  *a5 = v10;
  return result;
}

uint64_t FigVCPCoreAnimationPostProcessorCopyPerformanceDictionary(uint64_t a1, CFMutableDictionaryRef *a2)
{
  v4 = *(a1 + 48);
  FigMemoryBarrier();
  *a2 = fvcp_createCoreAnimationPerformanceDictionary(a1 + 56, v4);
  return 0;
}

CFMutableDictionaryRef fvcp_createCoreAnimationPerformanceDictionary(uint64_t a1, uint64_t a2)
{
  v4 = *MEMORY[0x1E695E480];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  FigCFDictionarySetInt32();
  if (*(a1 + 24) >= 1)
  {
    FigCFDictionarySetDouble();
    FigCFDictionarySetDouble();
    FigCFDictionarySetDouble();
  }

  if (a2)
  {
    theDict = 0;
    FigCoreAnimationRendererCopyProperty(a2, @"FCARPerformanceDictionary", v4, &theDict);
    if (theDict)
    {
      CFDictionaryApplyFunction(theDict, fvcp_addEntriesToDictionaryAux, Mutable);
      if (theDict)
      {
        CFRelease(theDict);
      }
    }
  }

  return Mutable;
}

uint64_t fvcp_outputDurationWaterLevel_Register()
{
  result = _CFRuntimeRegisterClass();
  sFigVCPOutputDurationWaterLevelID = result;
  return result;
}

uint64_t fvcp_instructionGetter_Register()
{
  result = _CFRuntimeRegisterClass();
  sFigVCPInstructionSourceID = result;
  return result;
}

uint64_t FigVCPInstructionSourceCreate(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  if (a2)
  {
    if (a5)
    {
      MEMORY[0x19A8D3660](&FigVCPInstructionSourceGetTypeID_sRegisterFigVCPInstructionSourceOnce, fvcp_instructionGetter_Register);
      Instance = _CFRuntimeCreateInstance();
      if (Instance)
      {
        v10 = Instance;
        *(Instance + 24) = a2;
        *(Instance + 32) = a3;
        v11 = FigSimpleMutexCreate();
        result = 0;
        *(v10 + 48) = v11;
        *(v10 + 16) = a4;
        *a5 = v10;
      }

      else
      {
        FigVCPInstructionSourceCreate_cold_1(&v13);
        return v13;
      }
    }

    else
    {
      FigVCPInstructionSourceCreate_cold_2(&v14);
      return v14;
    }
  }

  else
  {
    FigVCPInstructionSourceCreate_cold_3(&v15);
    return v15;
  }

  return result;
}

uint64_t fvcp_outputConformer_Register()
{
  result = _CFRuntimeRegisterClass();
  sFigVCPOutputConformerID = result;
  return result;
}

uint64_t FigVCPTallyUpdateTimingInfo(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = (a3 - a2) / 1000;
  ++*(result + 24);
  *(result + 16) += v3;
  v4 = *(result + 8);
  if (v4 >= v3)
  {
    v4 = (a3 - a2) / 1000;
  }

  if (*result > v3)
  {
    v3 = *result;
  }

  *result = v3;
  *(result + 8) = v4;
  return result;
}

uint64_t FigVCPOutputConformerCreate(uint64_t a1, uint64_t a2, void *a3)
{
  if (a3)
  {
    MEMORY[0x19A8D3660](&FigVCPOutputConformerGetTypeID_sRegisterFigVCPOutputConformerOnce, fvcp_outputConformer_Register);
    Instance = _CFRuntimeCreateInstance();
    if (Instance)
    {
      v6 = Instance;
      v7 = FigSimpleMutexCreate();
      result = 0;
      v6[2] = a2;
      v6[3] = v7;
      v6[16] = 0x7FFFFFFFLL;
      *a3 = v6;
    }

    else
    {
      FigVCPOutputConformerCreate_cold_1(&v9);
      return v9;
    }
  }

  else
  {
    FigVCPOutputConformerCreate_cold_2(&v10);
    return v10;
  }

  return result;
}

uint64_t FigVCPOutputConformerCopyPerformanceDictionary(uint64_t a1, CFMutableDictionaryRef *a2)
{
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  FigCFDictionarySetInt32();
  if (*(a1 + 144) >= 1)
  {
    FigCFDictionarySetDouble();
    FigCFDictionarySetDouble();
    FigCFDictionarySetDouble();
  }

  *a2 = Mutable;
  return 0;
}

uint64_t fvcp_compositorHost_Register()
{
  result = _CFRuntimeRegisterClass();
  sFigVCPCompositorHostID = result;
  return result;
}

void FigVCPCompositorHostStopAcceptingRequest(uint64_t a1)
{
  FigSimpleMutexLock();
  if (*(a1 + 32) == 1)
  {

    FigSimpleMutexUnlock();
  }

  else
  {
    *(a1 + 32) = 1;
    FigSimpleMutexUnlock();
    FigAtomicCompareAndSwap32();
    if (FigAtomicCompareAndSwap32())
    {
      FigAtomicCompareAndSwap32();
      if (*(a1 + 112))
      {
        v2 = FigCFWeakReferenceHolderCopyReferencedObject();
        if (v2)
        {
          v3 = v2;
          (*(a1 + 112))();

          CFRelease(v3);
        }
      }
    }
  }
}

void FigVCPCompositorHostCancelPendingFrames(void *a1)
{
  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  v3 = a1[5];
  v4 = *(*(CMBaseObjectGetVTable() + 16) + 24);
  if (v4)
  {
    v4(v3);
  }

  FigSimpleMutexLock();
  v5 = a1[7];
  v11.length = FigAtomicAdd32();
  v11.location = 0;
  CFArrayApplyFunction(v5, v11, fvcp_compositorHost_markPendingFrameAsCancelled, Mutable);
  FigSimpleMutexUnlock();
  if (Mutable)
  {
    Count = CFArrayGetCount(Mutable);
    if (Count >= 1)
    {
      v7 = Count;
      for (i = 0; i != v7; ++i)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(Mutable, i);
        fvcp_compositorHost_FrameCompletion(a1, ValueAtIndex[4], -12508, 0, 0);
      }
    }

    CFRelease(Mutable);
  }
}

BOOL FigVCPCompositorHostWaitForAllPendingFramesToComplete(uint64_t a1, int64_t a2)
{
  if (a2 < 0)
  {
    v3 = -1;
  }

  else
  {
    v3 = dispatch_time(0, a2);
  }

  return dispatch_group_wait(*(a1 + 64), v3) == 0;
}

void FigVCPCompositorHostPurgePendingFrames(uint64_t a1)
{
  v2 = *MEMORY[0x1E695E480];
  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  FigSimpleMutexLock();
  v4 = *(a1 + 56);
  v16.length = FigAtomicAdd32();
  v16.location = 0;
  CFArrayApplyFunction(v4, v16, fvcp_compositorHost_collectCancellingFrames, Mutable);
  FigSimpleMutexUnlock();
  if (Mutable)
  {
    Count = CFArrayGetCount(Mutable);
    if (Count >= 1)
    {
      v6 = Count;
      for (i = 0; i != v6; ++i)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(Mutable, i);
        fvcp_compositorHost_FrameCompletion(a1, ValueAtIndex[4], -12508, 0, 0);
      }
    }

    CFRelease(Mutable);
  }

  MutableCopy = CFArrayCreateMutableCopy(v2, 0, *(a1 + 56));
  if (MutableCopy)
  {
    v10 = MutableCopy;
    v11 = CFArrayGetCount(MutableCopy);
    if (v11 >= 1)
    {
      v12 = v11;
      for (j = 0; j != v12; ++j)
      {
        v14 = CFArrayGetValueAtIndex(v10, j);
        FigVCPCompositorHostRemovePendingFrame(a1, v14);
      }
    }

    CFRelease(v10);
  }
}

uint64_t FigVCPCompositorHostSetOutputCallback(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = FigCFWeakReferenceHolderCreateWithReferencedObject();
  v6 = v5;
  if (*(a1 + 80) == 0)
  {
    v7 = 0;
    *(a1 + 80) = a2;
    *(a1 + 88) = v5;
  }

  else
  {
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v10, v11, v12);
    v7 = v9;
    if (v6)
    {
      CFRelease(v6);
    }
  }

  return v7;
}

uint64_t FigVCPCompositorHostSetCompletePrerollCallback(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = FigCFWeakReferenceHolderCreateWithReferencedObject();
  v6 = v5;
  if (*(a1 + 96) == 0)
  {
    v7 = 0;
    *(a1 + 96) = a2;
    *(a1 + 104) = v5;
  }

  else
  {
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v10, v11, v12);
    v7 = v9;
    if (v6)
    {
      CFRelease(v6);
    }
  }

  return v7;
}

uint64_t FigVCPCompositorHostSetDidReachEndOfOutputCallback(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = FigCFWeakReferenceHolderCreateWithReferencedObject();
  v6 = v5;
  if (*(a1 + 112) == 0)
  {
    v7 = 0;
    *(a1 + 112) = a2;
    *(a1 + 120) = v5;
  }

  else
  {
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v10, v11, v12);
    v7 = v9;
    if (v6)
    {
      CFRelease(v6);
    }
  }

  return v7;
}

uint64_t FigVCPCompositorHostGetCompositorInstanceID()
{
  v4 = 0;
  number = 0;
  FigVideoCompositorGetFigBaseObject();
  v1 = v0;
  v2 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v2)
  {
    v2(v1, @"CompositorInstanceID", *MEMORY[0x1E695E480], &number);
    if (number)
    {
      CFNumberGetValue(number, kCFNumberSInt64Type, &v4);
      if (number)
      {
        CFRelease(number);
      }
    }
  }

  return v4;
}

uint64_t FigVCPCompositorHostComposeFrameAsync(void *a1)
{
  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  FigSimpleMutexLock();
  v3 = a1[7];
  v43.length = FigAtomicAdd32();
  v43.location = 0;
  CFArrayApplyFunction(v3, v43, fvcp_compositorHost_appendPendingFrameIfPreparing, Mutable);
  FigSimpleMutexUnlock();
  if (Mutable)
  {
    Count = CFArrayGetCount(Mutable);
    if (Count < 1)
    {
      v4 = 0;
      goto LABEL_37;
    }

    v4 = 0;
    v5 = 0;
    v35 = Mutable;
    while (1)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(Mutable, v5);
      v7 = ValueAtIndex;
      if (*(ValueAtIndex + 88))
      {
        v8 = a1[5];
        v9 = *(ValueAtIndex + 12);
        v10 = *(ValueAtIndex + 13);
        v11 = *(ValueAtIndex + 3);
        v12 = ValueAtIndex[4];
        v13 = ValueAtIndex[21];
        v37 = *(ValueAtIndex + 14);
        v39 = *(ValueAtIndex + 9);
        v14 = *(*(CMBaseObjectGetVTable() + 16) + 104);
        if (v14)
        {
          v41 = v37;
          v42 = v39;
          v14(v8, v9, v10, v11, &v41, v12, v13);
        }

        goto LABEL_31;
      }

      if (*(ValueAtIndex + 24))
      {
        goto LABEL_27;
      }

      v15 = *(ValueAtIndex + 14);
      if (v15 < 1)
      {
        goto LABEL_27;
      }

      v16 = 0;
      v17 = 0;
      for (i = 0; i < v15; ++i)
      {
        while (1)
        {
          v19 = *(*(v7 + 128) + 8 * i);
          if (!v19)
          {
            goto LABEL_13;
          }

          v20 = CVBufferCopyAttachment(v19, @"SceneIllumination", 0);
          if (!v20)
          {
            break;
          }

          v21 = v20;
          if (!v16)
          {
            v16 = CFRetain(v20);
          }

          CFRelease(v21);
          if (v17)
          {
            goto LABEL_25;
          }

          ++i;
          v15 = *(v7 + 112);
          v17 = 1;
          if (i >= v15)
          {
            goto LABEL_21;
          }
        }

        v15 = *(v7 + 112);
LABEL_13:
        ;
      }

      if ((v17 & 1) == 0)
      {
        goto LABEL_25;
      }

LABEL_21:
      v22 = *(v7 + 192);
      *(v7 + 192) = v16;
      if (v16)
      {
        CFRetain(v16);
      }

      if (v22)
      {
        CFRelease(v22);
      }

LABEL_25:
      if (v16)
      {
        CFRelease(v16);
      }

LABEL_27:
      v23 = a1;
      v24 = a1[5];
      v25 = *(v7 + 112);
      v26 = *(v7 + 120);
      v27 = *(v7 + 128);
      v28 = *(v7 + 136);
      v33 = *(v7 + 152);
      v34 = *(v7 + 144);
      v29 = *(v7 + 24);
      v30 = *(v7 + 16);
      v38 = *(v7 + 56);
      v40 = *(v7 + 72);
      v31 = *(*(CMBaseObjectGetVTable() + 16) + 8);
      if (v31)
      {
        v41 = v38;
        v42 = v40;
        v4 = v31(v24, v25, v26, v27, v28, v34, v33, v29, &v41, v30);
      }

      else
      {
        v4 = 4294954514;
      }

      a1 = v23;
LABEL_31:
      Mutable = v35;
      if (v4)
      {
        fvcp_compositorHost_FrameCompletion(a1, *(v7 + 16), v4, 0, 0);
      }

      FigVCPPendingFrameReleaseAndClearSourceFrames(v7);
      if (++v5 == Count)
      {
LABEL_37:
        CFRelease(Mutable);
        return v4;
      }
    }
  }

  return 0;
}

void fvcp_compositorHost_appendPendingFrameIfPreparing(char *a1, __CFArray *a2)
{
  if (FigAtomicCompareAndSwap32())
  {

    CFArrayAppendValue(a2, a1);
  }
}

void fvcp_compositorHost_FrameCompletion(uint64_t a1, uint64_t a2, int a3, CFTypeRef cf, CFTypeRef a5)
{
  if (!a3)
  {
    if (cf)
    {
      v10 = CFGetTypeID(cf);
      if (v10 != CVPixelBufferGetTypeID())
      {
        v11 = 8658;
        goto LABEL_32;
      }

      if (a5)
      {
        v11 = 8659;
LABEL_32:
        fvcp_compositorHost_FrameCompletion_cold_1(v11, a1);
        return;
      }
    }

    else
    {
      if (!a5)
      {
        v11 = 8665;
        goto LABEL_32;
      }

      v12 = CFGetTypeID(a5);
      if (v12 != CMTaggedBufferGroupGetTypeID())
      {
        v11 = 8662;
        goto LABEL_32;
      }
    }
  }

  v13 = *(a1 + 132);
  v14 = fvcp_compositorHost_copyPendingFrameFromArray(a1, a2);
  v15 = v14;
  if (v13)
  {
    if (!v14)
    {
LABEL_30:
      v11 = 8682;
      goto LABEL_32;
    }

    v14[52] = *(a1 + 132);
  }

  else if (!v14)
  {
    goto LABEL_30;
  }

  if (!*(a1 + 88) || !*(a1 + 80))
  {
    goto LABEL_26;
  }

  v16 = cf ? CFRetain(cf) : 0;
  *(v15 + 160) = v16;
  v17 = a5 ? CFRetain(a5) : 0;
  *(v15 + 168) = v17;
  *(v15 + 200) = a3;
  if (FigAtomicCompareAndSwap32())
  {
    *(v15 + 200) = -12508;
  }

  else
  {
    FigAtomicCompareAndSwap32();
  }

  v18 = FigCFWeakReferenceHolderCopyReferencedObject();
  if (v18)
  {
    v19 = v18;
    (*(a1 + 80))(v15, v18);
    FigVCPCompositorHostRemovePendingFrameIfNotPendingOrCompleted(a1, v15);
    CFRelease(v19);
  }

  else
  {
LABEL_26:
    FigVCPCompositorHostRemovePendingFrameIfNotPendingOrCompleted(a1, v15);
  }

  CFRelease(v15);
}

uint64_t FigVCPCompositorHostGetUpcomingImageInfo(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v14 = *MEMORY[0x1E6960C70];
  v15 = *(MEMORY[0x1E6960C70] + 16);
  v16 = v14;
  v17 = v15;
  if (!a2)
  {
    FigVCPCompositorHostGetUpcomingImageInfo_cold_2(a1, 0, a3, a4, a5, a6, a7, a8, v14, SDWORD2(v14), SHIDWORD(v14), v15);
    return 0;
  }

  if (!a3)
  {
    FigVCPCompositorHostGetUpcomingImageInfo_cold_1(a1, a2, 0, a4, a5, a6, a7, a8, v14, SDWORD2(v14), SHIDWORD(v14), v15);
    return 0;
  }

  FigSimpleMutexLock();
  v11 = *(a1 + 32);
  v12 = *(a1 + 56);
  v18.length = FigAtomicAdd32();
  v18.location = 0;
  CFArrayApplyFunction(v12, v18, fvcp_compositorHost_upcomingImageInfoApplierFunction, &v14);
  FigSimpleMutexUnlock();
  if (!FigAtomicAdd32() && v11 == 1)
  {
    return 3;
  }

  if ((BYTE12(v14) & 1) == 0 || (BYTE12(v16) & 1) == 0)
  {
    return 0;
  }

  *a2 = v14;
  *(a2 + 16) = v15;
  *a3 = v16;
  *(a3 + 16) = v17;
  return 2;
}

__n128 fvcp_compositorHost_upcomingImageInfoApplierFunction(uint64_t a1, uint64_t a2)
{
  if ((*(a2 + 12) & 1) == 0 || (time1 = *(a1 + 32), v6 = *a2, CMTimeCompare(&time1, &v6) < 0))
  {
    v4 = *(a1 + 32);
    *(a2 + 16) = *(a1 + 48);
    *a2 = v4;
  }

  if ((*(a2 + 36) & 1) == 0 || (time1 = *(a1 + 32), v6 = *(a2 + 24), CMTimeCompare(&time1, &v6) >= 1))
  {
    result = *(a1 + 32);
    *(a2 + 40) = *(a1 + 48);
    *(a2 + 24) = result;
  }

  return result;
}

BOOL FigVCPCompositorHostIsAcceptingRequest(uint64_t a1)
{
  FigSimpleMutexLock();
  v2 = *(a1 + 32) == 0;
  FigSimpleMutexUnlock();
  return v2;
}

uint64_t FigVCPCompositorHostStartAcceptingRequest(uint64_t a1)
{
  if (FigAtomicCompareAndSwap32())
  {
    FigSimpleMutexLock();
    *(a1 + 32) = 0;
    FigSimpleMutexUnlock();
    return 0;
  }

  else
  {
    FigVCPCompositorHostStartAcceptingRequest_cold_1(&v3);
    return v3;
  }
}

void fvcp_compositorHost_markPendingFrameAsCancelled(char *a1, __CFArray *a2)
{
  if (FigAtomicCompareAndSwap32())
  {

    CFArrayAppendValue(a2, a1);
  }

  else
  {

    FigAtomicCompareAndSwap32();
  }
}

void FigVCPCompositorHostRemovePendingFrame(uint64_t result, uint64_t a2)
{
  if (a2 && !FigAtomicCompareAndSwap32())
  {
    v4 = fvcp_compositorHost_removeRetainedPendingFrameFromArray(result, *(a2 + 16));
    if (v4)
    {
      CFRelease(v4);
    }

    FigVCPCompositorHostFinishOutputFrame(result);
  }
}

uint64_t FigVCPCompositorHostCopyPerformanceDictionary(uint64_t a1, uint64_t a2)
{
  FigVideoCompositorGetFigBaseObject();
  v4 = v3;
  v5 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v5)
  {
    return 4294954514;
  }

  v6 = *MEMORY[0x1E695E480];

  return v5(v4, @"PerformanceDictionary", v6, a2);
}

uint64_t FigVCPCompositorHostSupportsRenderScale()
{
  v4 = 0;
  FigVideoCompositorGetFigBaseObject();
  v1 = v0;
  v2 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v2)
  {
    v2(v1, @"CanApplyRenderScale", *MEMORY[0x1E695E480], &v4);
  }

  return FigCFEqual();
}

uint64_t FigVCPCompositorHostDropEarlierPendingFrames(uint64_t a1, uint64_t a2)
{
  FigSimpleMutexLock();
  while (FigAtomicAdd32())
  {
    v4 = *(CFArrayGetValueAtIndex(*(a1 + 56), 0) + 4);
    v5 = *(a2 + 16);
    if (v5 == v4 || FigAtomicAdd32() <= (v5 - v4))
    {
      break;
    }

    FigAtomicDecrement32();
    CFArrayRemoveValueAtIndex(*(a1 + 56), 0);
    dispatch_group_leave(*(a1 + 64));
  }

  return FigSimpleMutexUnlock();
}

CFTypeRef FigVCPCompositorHostRemoveRetainedPendingFrameForOutput(uint64_t a1)
{
  FigSimpleMutexLock();
  if (FigAtomicAdd32() && (ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 56), 0)) != 0 && (!ValueAtIndex[204] || ValueAtIndex[212]))
  {
    v3 = CFRetain(ValueAtIndex);
    FigAtomicDecrement32();
    CFArrayRemoveValueAtIndex(*(a1 + 56), 0);
    dispatch_group_leave(*(a1 + 64));
    FigVCPPendingFrameSetRenderComplete(v3);
  }

  else
  {
    v3 = 0;
  }

  FigSimpleMutexUnlock();
  return v3;
}

uint64_t FigVCPCompositorHostDoesRequireDifferentSourcePixelBufferAttributesForMultiSource(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(CMBaseObjectGetVTable() + 16);
  if (*v2 < 2uLL)
  {
    return 0;
  }

  v3 = v2[11];
  if (!v3)
  {
    return 0;
  }

  return v3(v1);
}

uint64_t FigVCPCompositorHostCopySourcePixelBufferAttributesForMultiSource(uint64_t a1, void *a2)
{
  v3 = *(a1 + 40);
  v4 = *(CMBaseObjectGetVTable() + 16);
  if (*v4 >= 2uLL && (v5 = v4[12]) != 0)
  {

    return v5(v3, a2);
  }

  else
  {
    if (a2)
    {
      *a2 = 0;
    }

    return 0;
  }
}

uint64_t FigVCPCompositorHostSetHDRDisplayMetadataPolicy(uint64_t a1, uint64_t a2)
{
  result = FigCFEqual();
  if (result)
  {
    v4 = *(a1 + 132) | 1;
  }

  else
  {
    v4 = 0;
  }

  *(a1 + 132) = v4;
  return result;
}

void FigVCPCompositorHostRemovePendingFrameIfNotPendingOrCompleted(uint64_t result, uint64_t a2)
{
  if (a2 && !FigAtomicCompareAndSwap32() && !FigAtomicCompareAndSwap32())
  {
    v4 = fvcp_compositorHost_removeRetainedPendingFrameFromArray(result, *(a2 + 16));
    if (v4)
    {
      CFRelease(v4);
    }

    FigVCPCompositorHostFinishOutputFrame(result);
  }
}

_DWORD *fvcp_compositorHost_removeRetainedPendingFrameFromArray(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  FigSimpleMutexLock();
  idx = 0;
  PendingFrameFromArray = fvcp_compositorHost_getPendingFrameFromArray(a1, v2, &idx);
  v5 = PendingFrameFromArray;
  if (PendingFrameFromArray)
  {
    CFRetain(PendingFrameFromArray);
    FigAtomicDecrement32();
    CFArrayRemoveValueAtIndex(*(a1 + 56), idx);
    dispatch_group_leave(*(a1 + 64));
  }

  FigSimpleMutexUnlock();
  return v5;
}

void FigVCPCompositorHostFinishOutputFrame(uint64_t a1)
{
  if (!FigAtomicAdd32())
  {
    if (FigAtomicCompareAndSwap32())
    {
      if (*(a1 + 112))
      {
        v2 = FigCFWeakReferenceHolderCopyReferencedObject();
        if (v2)
        {
          v3 = v2;
          (*(a1 + 112))();

          CFRelease(v3);
        }
      }
    }
  }
}

uint64_t FigVCPCompositorHostCreate(const __CFAllocator *a1, const void *a2, uint64_t a3, void *a4)
{
  if (!a2)
  {
    FigVCPCompositorHostCreate_cold_3(&v18);
    return v18;
  }

  if (!a4)
  {
    FigVCPCompositorHostCreate_cold_2(&v17);
    return v17;
  }

  MEMORY[0x19A8D3660](&FigVCPCompositorHostGetTypeID_sRegisterFigVCPCompositorHostOnce, fvcp_compositorHost_Register);
  Instance = _CFRuntimeCreateInstance();
  if (!Instance)
  {
    FigVCPCompositorHostCreate_cold_1(&v16);
    return v16;
  }

  v9 = Instance;
  *(Instance + 40) = CFRetain(a2);
  v9[6] = FigSimpleMutexCreate();
  v9[7] = CFArrayCreateMutable(a1, 0, MEMORY[0x1E695E9C0]);
  v9[8] = dispatch_group_create();
  v9[3] = a3;
  v10 = *(*(CMBaseObjectGetVTable() + 16) + 32);
  if (!v10)
  {
    v14 = 4294954514;
LABEL_11:
    CFRelease(v9);
    return v14;
  }

  v11 = v10(a2, fvcp_compositorHost_FrameCompletion, v9);
  if (v11)
  {
    v14 = v11;
    goto LABEL_11;
  }

  v12 = *(*(CMBaseObjectGetVTable() + 16) + 80);
  if (v12)
  {
    v13 = v12(a2, fvcp_compositorHost_CompletePreroll, v9);
    if (v13)
    {
      v14 = v13;
      if (v13 != -12782)
      {
        goto LABEL_11;
      }
    }
  }

  v14 = 0;
  *a4 = v9;
  return v14;
}

_DWORD *FigVCPTallyUpdateSkips(_DWORD *result, double a2, double a3, double a4)
{
  v4 = (a3 / a4 + 0.5);
  v5 = result[1];
  if (v4 >= 1 && v5 <= 499)
  {
    v6 = 0;
    v7 = v5;
    v8 = 499 - v5;
    if (v8 >= (v4 - 1))
    {
      v8 = (v4 - 1);
    }

    v9 = vdupq_n_s64(0x408F400000000000uLL);
    v10 = vdupq_n_s64(v8);
    v11 = vdupq_lane_s64(*&a4, 0);
    v12 = (v8 + 4) & 0x1FFFFFFFCLL;
    v13 = vdupq_lane_s64(*&a2, 0);
    v14 = &result[v7 + 6];
    __asm { FMOV            V7.2D, #0.5 }

    do
    {
      v20 = vdupq_n_s64(v6);
      v21 = vmovn_s64(vcgeq_u64(v10, vorrq_s8(v20, xmmword_196E73090)));
      v22.f64[0] = v6;
      v22.f64[1] = (v6 + 1);
      v23 = vmlaq_f64(_Q7, v9, vmlaq_f64(v13, v22, v11));
      if (vuzp1_s16(v21, *&v13.f64[0]).u8[0])
      {
        *(v14 - 3) = v23.f64[0];
      }

      if (vuzp1_s16(v21, *&v13).i8[2])
      {
        *(v14 - 2) = v23.f64[1];
      }

      v24 = vorrq_s8(v20, xmmword_196E73080);
      v25 = vorr_s8(vdup_n_s32(v6), 0x300000002);
      v26.i64[0] = v25.u32[0];
      v26.i64[1] = v25.u32[1];
      v27 = vmlaq_f64(_Q7, v9, vmlaq_f64(v13, vcvtq_f64_u64(v26), v11));
      if (vuzp1_s16(*&v13, vmovn_s64(vcgeq_u64(v10, v24))).i32[1])
      {
        *(v14 - 1) = v27.f64[0];
        *v14 = v27.f64[1];
      }

      v6 += 4;
      v14 += 4;
    }

    while (v12 != v6);
    v5 = result[1];
  }

  ++*result;
  result[1] = v5 + v4;
  if (result[2] > v4)
  {
    v4 = result[2];
  }

  result[2] = v4;
  return result;
}

uint64_t FigVCPTallyCopyPerformanceDictionary(unsigned int *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, __CFDictionary **a6)
{
  v12 = *MEMORY[0x1E695E480];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v14 = Mutable;
  if (a6)
  {
    FigCFDictionarySetInt32();
    FigCFDictionarySetInt32();
    if (a1[6] >= 1)
    {
      FigCFDictionarySetDouble();
      FigCFDictionarySetDouble();
      FigCFDictionarySetDouble();
    }

    FigCFDictionarySetInt32();
    FigCFDictionarySetInt32();
    FigCFDictionarySetInt32();
    FigCFDictionarySetInt32();
    v15 = a1[9];
    if (v15 >= 1)
    {
      v16 = v15 >= 0x1F4 ? 500 : v15;
      v17 = a1 + 11;
      v18 = CFArrayCreateMutable(v12, v16, MEMORY[0x1E695E9C0]);
      do
      {
        ++v17;
        FigCFArrayAppendDouble();
        --v16;
      }

      while (v16);
      CFDictionarySetValue(v14, @"DisplayTimesOfSkippedFrames", v18);
      if (v18)
      {
        CFRelease(v18);
      }
    }

    if (a3)
    {
      theDict = 0;
      FigVCPCompositorHostCopyPerformanceDictionary(a3, &theDict);
      if (theDict)
      {
        CFDictionaryApplyFunction(theDict, fvcp_addEntriesToDictionaryAux, v14);
        if (theDict)
        {
          CFRelease(theDict);
        }
      }
    }

    if (a2)
    {
      v19 = CFDictionaryCreateMutable(v12, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      FigVCPSourceArrayApplyFunction(a2, fvcp_sourceArray_appendToPerformanceDictionary, v19);
      if (v19)
      {
        CFDictionaryApplyFunction(v19, fvcp_addEntriesToDictionaryAux, v14);
        CFRelease(v19);
      }
    }

    if (a5)
    {
      v20 = *(a5 + 48);
      FigMemoryBarrier();
      CoreAnimationPerformanceDictionary = fvcp_createCoreAnimationPerformanceDictionary(a5 + 56, v20);
      if (CoreAnimationPerformanceDictionary)
      {
        v22 = CoreAnimationPerformanceDictionary;
        CFDictionaryApplyFunction(CoreAnimationPerformanceDictionary, fvcp_addEntriesToDictionaryAux, v14);
        CFRelease(v22);
      }
    }

    if (a4)
    {
      theDict = 0;
      FigVCPOutputConformerCopyPerformanceDictionary(a4, &theDict);
      v23 = theDict;
      if (theDict)
      {
        CFDictionaryApplyFunction(theDict, fvcp_addEntriesToDictionaryAux, v14);
        CFRelease(v23);
      }
    }

    *a6 = v14;
  }

  else if (Mutable)
  {
    CFRelease(Mutable);
  }

  return 0;
}

double fvcp_preprocessParameters_Init(uint64_t a1)
{
  *(a1 + 64) = 0;
  result = 0.0;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  return result;
}

void fvcp_preprocessParameters_Finalize(void *a1)
{
  v2 = a1[3];
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = a1[4];
  if (v3)
  {
    CFRelease(v3);
  }

  v4 = a1[5];
  if (v4)
  {
    CFRelease(v4);
  }

  v5 = a1[6];
  if (v5)
  {
    CFRelease(v5);
  }

  v6 = a1[7];
  if (v6)
  {

    CFRelease(v6);
  }
}

void fvcp_preprocessParameters_initSetPropertyDispatchDictionary()
{
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], 0);
  CFDictionaryAddValue(Mutable, @"VideoCompositionProcessor_RenderScale", fvcp_preprocessParameters_setRenderScaleProperty);
  CFDictionaryAddValue(Mutable, @"VideoCompositionProcessor_SourcePixelBufferAttributes", fvcp_preprocessParameters_setPixelBufferAttributes);
  CFDictionaryAddValue(Mutable, @"VideoCompositionProcessor_CompositionYCbCrMatrix", fvcp_preprocessParameters_setYCbCrMatrix);
  CFDictionaryAddValue(Mutable, @"VideoCompositionProcessor_CompositionColorPrimaries", fvcp_preprocessParameters_setColorPrimaries);
  CFDictionaryAddValue(Mutable, @"VideoCompositionProcessor_CompositionTransferFunction", fvcp_preprocessParameters_setTransferFunction);
  CFDictionaryAddValue(Mutable, @"VideoCompositionProcessor_PixelBufferPoolSharingID", fvcp_preprocessParameters_setPoolSharingID);
  CFDictionaryAddValue(Mutable, @"FigVCPPreprocessParametersProperty_ColorConformanceLevel", fvcp_preprocessParameters_setColorConformanceLevel);
  CFDictionaryAddValue(Mutable, @"VideoCompositionProcessor_DestinationPixelBufferDesiredAttributes", fvcp_preprocessParameters_setDestinationPixelBufferDesiredAttributes);
  fvcp_preprocessParameters_setPropertyDispatchDictionary = Mutable;
}

uint64_t fvcp_preprocessParameters_setRenderScaleProperty(CFTypeID a1, const __CFNumber *cf, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (cf && (v9 = a1, v10 = CFGetTypeID(cf), a1 = CFNumberGetTypeID(), v10 == a1))
  {
    valuePtr[0] = 1065353216;
    CFNumberGetValue(cf, kCFNumberFloatType, valuePtr);
    *(v9 + 16) = valuePtr[0];
  }

  else
  {
    fvcp_preprocessParameters_setRenderScaleProperty_cold_1(a1, cf, a3, a4, a5, a6, a7, a8, v12, v13, valuePtr[0], valuePtr[1]);
  }

  return 0;
}

uint64_t fvcp_preprocessParameters_setPixelBufferAttributes(uint64_t a1, CFTypeRef cf)
{
  if (cf && (v4 = CFGetTypeID(cf), v4 == CFDictionaryGetTypeID()))
  {
    v5 = *(a1 + 24);
    *(a1 + 24) = cf;
    CFRetain(cf);
    if (v5)
    {
      CFRelease(v5);
    }

    return 0;
  }

  else
  {
    fvcp_preprocessParameters_setPixelBufferAttributes_cold_1(&v7);
    return v7;
  }
}

uint64_t fvcp_preprocessParameters_setYCbCrMatrix(uint64_t a1, CFTypeRef cf)
{
  if (cf && (v4 = CFGetTypeID(cf), v4 == CFStringGetTypeID()))
  {
    v5 = *(a1 + 32);
    *(a1 + 32) = cf;
    CFRetain(cf);
    if (v5)
    {
      CFRelease(v5);
    }

    return 0;
  }

  else
  {
    fvcp_preprocessParameters_setYCbCrMatrix_cold_1(&v7);
    return v7;
  }
}

uint64_t fvcp_preprocessParameters_setColorPrimaries(uint64_t a1, CFTypeRef cf)
{
  if (cf && (v4 = CFGetTypeID(cf), v4 == CFStringGetTypeID()))
  {
    v5 = *(a1 + 40);
    *(a1 + 40) = cf;
    CFRetain(cf);
    if (v5)
    {
      CFRelease(v5);
    }

    return 0;
  }

  else
  {
    fvcp_preprocessParameters_setColorPrimaries_cold_1(&v7);
    return v7;
  }
}

uint64_t fvcp_preprocessParameters_setTransferFunction(uint64_t a1, CFTypeRef cf)
{
  if (cf && (v4 = CFGetTypeID(cf), v4 == CFStringGetTypeID()))
  {
    v5 = *(a1 + 48);
    *(a1 + 48) = cf;
    CFRetain(cf);
    if (v5)
    {
      CFRelease(v5);
    }

    return 0;
  }

  else
  {
    fvcp_preprocessParameters_setTransferFunction_cold_1(&v7);
    return v7;
  }
}

uint64_t fvcp_preprocessParameters_setPoolSharingID(uint64_t a1, CFTypeRef cf)
{
  if (cf && ((v4 = CFGetTypeID(cf), v4 == CFNumberGetTypeID()) || (v5 = CFGetTypeID(cf), v5 == CFBooleanGetTypeID())))
  {
    v6 = *(a1 + 56);
    *(a1 + 56) = cf;
    CFRetain(cf);
    if (v6)
    {
      CFRelease(v6);
    }

    return 0;
  }

  else
  {
    fvcp_preprocessParameters_setPoolSharingID_cold_1(&v8);
    return v8;
  }
}

uint64_t fvcp_source_RegisterFigVCPSourceBaseType(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  CMBaseGetClassID();

  return FigBaseClassRegisterClass();
}

uint64_t fvcp_vc_source_Invalidate(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v2 = *(DerivedStorage + 216);
  v3 = *(*(CMBaseObjectGetVTable() + 16) + 16);
  if (v3)
  {
    v3(v2, 0, 0);
  }

  v4 = *(DerivedStorage + 216);
  v5 = *(*(CMBaseObjectGetVTable() + 16) + 24);
  if (v5)
  {
    v5(v4, 0, 0);
  }

  CMNotificationCenterGetDefaultLocalCenter();
  FigNotificationCenterRemoveWeakListener();
  CMNotificationCenterGetDefaultLocalCenter();
  FigNotificationCenterRemoveWeakListener();
  return 0;
}

CFStringRef fvcp_vc_source_CopyDebugDesc(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v3 = *MEMORY[0x1E695E480];
  v4 = CMBaseObjectGetDerivedStorage();
  return CFStringCreateWithFormat(v3, 0, @"[FigVCPVisualContextSource(%p)] trackID=%d VC=%p", a1, *v4, *(DerivedStorage + 216));
}

void fvcp_source_finalize(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexDestroy();
  v2 = DerivedStorage[4];
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = DerivedStorage[5];
  if (v3)
  {
    CFRelease(v3);
  }

  v4 = DerivedStorage[7];
  if (v4)
  {
    CFRelease(v4);
  }

  v5 = DerivedStorage[11];
  if (v5)
  {
    CFRelease(v5);
  }

  v6 = DerivedStorage[12];
  if (v6)
  {

    CFRelease(v6);
  }
}

uint64_t fvcp_vc_source_StartOver(uint64_t a1)
{
  CMBaseObjectGetDerivedStorage();
  FigAtomicCompareAndSwap32();
  CMBaseObjectGetDerivedStorage();
  FigAtomicCompareAndSwap32();
  return 0;
}

uint64_t fvcp_vc_source_HasNoMoreSamples(uint64_t a1)
{
  CMBaseObjectGetDerivedStorage();

  return FigAtomicCompareAndSwap32();
}

uint64_t fvcp_vc_source_getEarliestSequentialSampleTimeAfterTime(uint64_t a1, __int128 *a2, uint64_t a3, _BYTE *a4)
{
  v14 = 0;
  v12 = *MEMORY[0x1E6960C70];
  v13 = *(MEMORY[0x1E6960C70] + 16);
  v7 = *(CMBaseObjectGetDerivedStorage() + 216);
  v10 = *a2;
  v11 = *(a2 + 2);
  v8 = *(*(CMBaseObjectGetVTable() + 16) + 64);
  if (v8)
  {
    v15 = v10;
    v16 = v11;
    v8(v7, 0, &v15, &v12, &v14);
  }

  if (a3)
  {
    *a3 = v12;
    *(a3 + 16) = v13;
  }

  if (a4)
  {
    *a4 = v14;
  }

  return 0;
}

uint64_t CMTimeCompareWithToleranceIfRounded(CMTime *a1, CMTime *a2)
{
  if ((a1->flags & 0x1F) == 3 || (a2->flags & 0x1F) == 3)
  {
    memset(&time1, 0, sizeof(time1));
    lhs = *a1;
    v5 = *a2;
    CMTimeSubtract(&time, &lhs, &v5);
    CMTimeAbsoluteValue(&time1, &time);
    CMTimeMake(&time, 5, 1000000000);
    lhs = time1;
    if (CMTimeCompare(&lhs, &time) < 1)
    {
      return 0;
    }
  }

  time1 = *a1;
  time = *a2;
  return CMTimeCompare(&time1, &time);
}

BOOL fvcp_timeIsEarlierOrEqualInPlayback(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v22 = *MEMORY[0x1E69E9840];
  if (a3 > 1)
  {
    v20 = *a1;
    v9 = *(a1 + 12);
    v21 = *(a1 + 8);
    v10 = *(a1 + 16);
    v18 = *a2;
    v11 = *(a2 + 12);
    v19 = *(a2 + 8);
    v12 = *(a2 + 16);
    if ((v9 & 0x1F) != 3 && (v11 & 0x1F) != 3 || (memset(&time1, 0, sizeof(time1)), v13 = *a1, rhs.epoch = v12, lhs.value = v13, lhs.timescale = *(a1 + 8), lhs.flags = v9, lhs.epoch = v10, rhs.value = *a2, rhs.timescale = *(a2 + 8), rhs.flags = v11, CMTimeSubtract(&time, &lhs, &rhs), CMTimeAbsoluteValue(&time1, &time), CMTimeMake(&time, 5, 1000000000), lhs = time1, CMTimeCompare(&lhs, &time) >= 1))
    {
      time.epoch = v12;
      time1.value = v20;
      time1.timescale = v21;
      time1.flags = v9;
      time1.epoch = v10;
      time.value = v18;
      time.timescale = v19;
      time.flags = v11;
      return CMTimeCompare(&time1, &time) >= 0;
    }
  }

  else
  {
    v20 = *a1;
    v3 = *(a1 + 12);
    v21 = *(a1 + 8);
    v4 = *(a1 + 16);
    v18 = *a2;
    v5 = *(a2 + 12);
    v19 = *(a2 + 8);
    v6 = *(a2 + 16);
    if ((v3 & 0x1F) != 3 && (v5 & 0x1F) != 3 || (memset(&time1, 0, sizeof(time1)), v7 = *a1, rhs.epoch = v6, lhs.value = v7, lhs.timescale = *(a1 + 8), lhs.flags = v3, lhs.epoch = v4, rhs.value = *a2, rhs.timescale = *(a2 + 8), rhs.flags = v5, CMTimeSubtract(&time, &lhs, &rhs), CMTimeAbsoluteValue(&time1, &time), CMTimeMake(&time, 5, 1000000000), lhs = time1, CMTimeCompare(&lhs, &time) >= 1))
    {
      time.epoch = v6;
      time1.value = v20;
      time1.timescale = v21;
      time1.flags = v3;
      time1.epoch = v4;
      time.value = v18;
      time.timescale = v19;
      time.flags = v5;
      return CMTimeCompare(&time1, &time) < 1;
    }
  }

  return 1;
}

uint64_t figVCPTimedImagePair_register()
{
  result = _CFRuntimeRegisterClass();
  sFigVCPTimedImagePairClassID = result;
  return result;
}

double figVCPTimedImagePair_Init(_OWORD *a1)
{
  result = 0.0;
  a1[2] = 0u;
  a1[3] = 0u;
  a1[1] = 0u;
  return result;
}

void figVCPTimedImagePair_Finalize(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = *(a1 + 56);
  if (v3)
  {

    CFRelease(v3);
  }
}

CFStringRef figVCPTimedImagePair_CopyDebugDesc(uint64_t a1)
{
  v2 = *MEMORY[0x1E695E480];
  v3 = *(a1 + 48);
  v4 = *(a1 + 56);
  time = *(a1 + 16);
  Seconds = CMTimeGetSeconds(&time);
  if (*(a1 + 40))
  {
    v6 = "conformed";
  }

  else
  {
    v6 = "not conformed";
  }

  return CFStringCreateWithFormat(v2, 0, @"<%p, %p @ %1.3f %s>", v3, v4, *&Seconds, v6);
}

void fvcp_source_copyPreprocessParametersAndPixelTransferSession(uint64_t a1, void *a2, void *a3, _DWORD *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  v8 = *(DerivedStorage + 32);
  if (v8)
  {
    v9 = CFRetain(v8);
  }

  else
  {
    v9 = 0;
  }

  v10 = *(DerivedStorage + 40);
  if (v10)
  {
    v11 = CFRetain(v10);
  }

  else
  {
    v11 = 0;
  }

  v12 = *(DerivedStorage + 48);
  FigSimpleMutexUnlock();
  if (a2)
  {
    *a2 = v9;
    v9 = 0;
  }

  if (a3)
  {
    *a3 = v11;
    v11 = 0;
  }

  if (a4)
  {
    *a4 = v12;
  }

  if (v9)
  {
    CFRelease(v9);
  }

  if (v11)
  {

    CFRelease(v11);
  }
}

BOOL fvcp_doesPixelBufferHaveRequestedColorParameters(__CVBuffer *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = CVBufferCopyAttachment(a1, *MEMORY[0x1E6965CE8], 0);
  CGColorSpaceGetName(v8);
  CVPixelBufferGetWidth(a1);
  CVPixelBufferGetHeight(a1);
  VTGetDefaultColorAttributesWithHints();
  if (a2)
  {
    v9 = CVBufferCopyAttachment(a1, *MEMORY[0x1E6965F98], 0);
    if (!v9)
    {
      v9 = 0;
    }

    if (!FigCFEqual())
    {
      v10 = 0;
      goto LABEL_15;
    }
  }

  else
  {
    v9 = 0;
  }

  if (a3)
  {
    v10 = CVBufferCopyAttachment(a1, *MEMORY[0x1E6965F30], 0);
    if (!v10)
    {
      v10 = 0;
    }

    if (FigCFEqual())
    {
      goto LABEL_12;
    }

LABEL_15:
    v12 = 0;
    v11 = 0;
    goto LABEL_18;
  }

  v10 = 0;
LABEL_12:
  if (a4)
  {
    v11 = CVBufferCopyAttachment(a1, *MEMORY[0x1E6965D88], 0);
    if (!v11)
    {
      v11 = 0;
    }

    v12 = FigCFEqual() != 0;
  }

  else
  {
    v11 = 0;
    v12 = 1;
  }

LABEL_18:
  if (v8)
  {
    CFRelease(v8);
  }

  if (v9)
  {
    CFRelease(v9);
  }

  if (v10)
  {
    CFRelease(v10);
  }

  if (v11)
  {
    CFRelease(v11);
  }

  return v12;
}

uint64_t fvcp_vcg_source_Invalidate(uint64_t a1)
{
  v1 = (CMBaseObjectGetDerivedStorage() + 216);
  if (*v1)
  {
    Count = CFArrayGetCount(*v1);
    if (Count >= 1)
    {
      fvcp_vcg_source_Invalidate_cold_1(v1, Count);
    }
  }

  return 0;
}

CFStringRef fvcp_vcg_source_CopyDebugDesc(uint64_t a1)
{
  v2 = *(CMBaseObjectGetDerivedStorage() + 216);
  if (v2 && (Count = CFArrayGetCount(v2), Count >= 1))
  {
    v4 = Count;
    ValueAtIndex = FigCFArrayGetValueAtIndex();
    v6 = "";
    if (v4 == 1)
    {
      v7 = 0;
    }

    else
    {
      v7 = FigCFArrayGetValueAtIndex();
      if (v4 > 2)
      {
        v6 = "...";
      }
    }
  }

  else
  {
    ValueAtIndex = 0;
    v7 = 0;
    v6 = "";
  }

  v8 = *MEMORY[0x1E695E480];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  return CFStringCreateWithFormat(v8, 0, @"[FigVCPVisualContextSource(%p)] trackID=%d VC0=%p VC1=%p %s", a1, *DerivedStorage, ValueAtIndex, v7, v6);
}

const __CFArray *fvcp_vcg_source_StartOver(uint64_t a1)
{
  result = *(CMBaseObjectGetDerivedStorage() + 216);
  if (result)
  {
    Count = CFArrayGetCount(result);
    if (Count < 1)
    {
      return 0;
    }

    else
    {
      v3 = Count;
      v4 = 0;
      while (1)
      {
        ValueAtIndex = FigCFArrayGetValueAtIndex();
        result = FigVCPSourceStartOver(ValueAtIndex);
        if (result)
        {
          break;
        }

        if (v3 == ++v4)
        {
          return 0;
        }
      }
    }
  }

  return result;
}

uint64_t fvcp_vcg_source_CheckSampleAvailability(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, _BYTE *a5, _BYTE *a6)
{
  v11 = *(CMBaseObjectGetDerivedStorage() + 216);
  if (v11 && (Count = CFArrayGetCount(v11), Count >= 1))
  {
    v13 = Count;
    v14 = 0;
    v15 = 0;
    LOBYTE(v16) = 1;
    while (1)
    {
      v22 = 0;
      ValueAtIndex = FigCFArrayGetValueAtIndex();
      v20 = *a4;
      v21 = *(a4 + 16);
      result = FigVCPSourceCheckSampleAvailability(ValueAtIndex, a2, a3, &v20, &v22 + 1, &v22);
      if (result)
      {
        break;
      }

      v16 = (v22 & v16);
      v14 |= HIBYTE(v22);
      if (v13 == ++v15)
      {
        v19 = v16 == 0;
        if (a5)
        {
          goto LABEL_9;
        }

        goto LABEL_10;
      }
    }
  }

  else
  {
    v14 = 0;
    v19 = 0;
    if (a5)
    {
LABEL_9:
      *a5 = v14;
    }

LABEL_10:
    result = 0;
    if (!v19)
    {
      *a6 = 1;
    }
  }

  return result;
}

const __CFArray *fvcp_vcg_source_SetCurrentTime(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = *(CMBaseObjectGetDerivedStorage() + 216);
  if (result)
  {
    Count = CFArrayGetCount(result);
    if (Count < 1)
    {
      return 0;
    }

    else
    {
      v7 = Count;
      v8 = 0;
      while (1)
      {
        ValueAtIndex = FigCFArrayGetValueAtIndex();
        v10 = *a3;
        v11 = *(a3 + 16);
        result = FigVCPSourceSetCurrentTime(ValueAtIndex, a2, &v10);
        if (result)
        {
          break;
        }

        if (v7 == ++v8)
        {
          return 0;
        }
      }
    }
  }

  return result;
}

BOOL fvcp_vcg_source_HasNoMoreSamples(uint64_t a1)
{
  v1 = *(CMBaseObjectGetDerivedStorage() + 216);
  if (!v1)
  {
    return 1;
  }

  Count = CFArrayGetCount(v1);
  if (Count < 1)
  {
    return 1;
  }

  v3 = Count;
  v4 = 0;
  LOBYTE(v5) = 1;
  do
  {
    ValueAtIndex = FigCFArrayGetValueAtIndex();
    v5 = v5 && FigVCPSourceHasNoMoreSamples(ValueAtIndex) != 0;
    ++v4;
  }

  while (v3 != v4);
  return v5;
}

uint64_t fvcp_vcg_source_getEarliestSequentialSampleTimeAfterTime(uint64_t a1, CMTime *a2, uint64_t a3, char *a4)
{
  v35 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v8 = MEMORY[0x1E6960C70];
  v33 = *MEMORY[0x1E6960C70];
  v9 = *(MEMORY[0x1E6960C70] + 12);
  v34 = *(MEMORY[0x1E6960C70] + 8);
  v24 = *(MEMORY[0x1E6960C70] + 16);
  v10 = *(DerivedStorage + 216);
  if (!v10 || (Count = CFArrayGetCount(v10), Count < 1))
  {
    EarliestSequentialSampleTimeAfterTime = 0;
    v14 = 1;
    if (!a3)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

  v12 = Count;
  v21 = a3;
  v22 = a4;
  v13 = 0;
  v14 = 1;
  v23 = *v8;
  v15 = v24;
  do
  {
    ValueAtIndex = FigCFArrayGetValueAtIndex();
    *&v26.value = v23;
    v26.epoch = v24;
    v25 = 0;
    time1 = *a2;
    EarliestSequentialSampleTimeAfterTime = FigVCPSourceGetEarliestSequentialSampleTimeAfterTime(ValueAtIndex, &time1.value, &v26, &v25);
    value = v26.value;
    flags = v26.flags;
    timescale = v26.timescale;
    epoch = v26.epoch;
    if ((v26.flags & 0x1F) != 3 && (v9 & 0x1F) != 3 || (memset(&time1, 0, sizeof(time1)), rhs.epoch = v15, lhs = v26, rhs.value = v33, rhs.timescale = v34, rhs.flags = v9, CMTimeSubtract(&time, &lhs, &rhs), CMTimeAbsoluteValue(&time1, &time), CMTimeMake(&time, 5, 1000000000), lhs = time1, CMTimeCompare(&lhs, &time) > 0))
    {
      time.epoch = v15;
      time1.value = value;
      time1.timescale = timescale;
      time1.flags = flags;
      time1.epoch = epoch;
      time.value = v33;
      time.timescale = v34;
      time.flags = v9;
      if (CMTimeCompare(&time1, &time) < 0)
      {
        v33 = v26.value;
        v9 = v26.flags;
        v34 = v26.timescale;
        v15 = v26.epoch;
      }
    }

    v14 &= v25 != 0;
    ++v13;
  }

  while (v12 != v13);
  v24 = v15;
  a3 = v21;
  a4 = v22;
  if (v21)
  {
LABEL_13:
    *a3 = v33;
    *(a3 + 8) = v34;
    *(a3 + 12) = v9;
    *(a3 + 16) = v24;
  }

LABEL_14:
  if (a4)
  {
    *a4 = v14;
  }

  return EarliestSequentialSampleTimeAfterTime;
}

uint64_t fvcp_vcg_source_CopyConformedTimedImages(uint64_t a1, uint64_t a2, _BYTE *a3, __CFArray **a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v43 = 0;
  v44 = 0;
  v42 = 0;
  v41 = **&MEMORY[0x1E6960C70];
  v40 = v41;
  v8 = *(DerivedStorage + 216);
  if (v8)
  {
    Count = CFArrayGetCount(v8);
  }

  else
  {
    Count = 0;
  }

  allocator = *MEMORY[0x1E695E480];
  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], Count, MEMORY[0x1E695E9C0]);
  if (Mutable)
  {
    v11 = Mutable;
    if (Count >= 1)
    {
      v12 = 0;
      v13 = 0;
      v14 = 0;
      while (1)
      {
        ValueAtIndex = FigCFArrayGetValueAtIndex();
        LOBYTE(time2.value) = 0;
        v16 = FigVCPSourceCopyConformedTimedImages(ValueAtIndex, a2, &time2, &v44);
        if (v16)
        {
          value_low = v16;
          goto LABEL_69;
        }

        CFArrayAppendValue(v11, v44);
        v17 = time2.value;
        v18 = v44;
        if (v12)
        {
          break;
        }

        if (v44)
        {
          v13 = CFArrayGetCount(v44);
LABEL_15:
          if (v44)
          {
            CFRelease(v44);
            v44 = 0;
          }

          goto LABEL_18;
        }

        v13 = 0;
LABEL_18:
        v14 |= v17;
        if (Count == ++v12)
        {
          if (v13 >= 1)
          {
            v34 = a4;
            v35 = DerivedStorage;
            v33 = a3;
            v19 = 0;
            v20 = 0;
            v21 = allocator;
            while (1)
            {
              v22 = CFArrayCreateMutable(v21, Count, MEMORY[0x1E695E9C0]);
              if (!v22)
              {
                break;
              }

              v23 = 0;
              for (i = 0; i != Count; ++i)
              {
                FigCFArrayGetValueAtIndex();
                v25 = FigCFArrayGetValueAtIndex();
                v28 = v25;
                value = 0;
                if (i)
                {
                  FigVCPTimedSampleGetPTS(v25, v26, &v41, v27);
                  time1 = v41;
                  time2 = v40;
                  if (CMTimeCompare(&time1, &time2))
                  {
                    fvcp_vcg_source_CopyConformedTimedImages_cold_2(&time1);
                    goto LABEL_67;
                  }
                }

                else
                {
                  FigVCPTimedSampleGetPTS(v25, v26, &v40, v27);
                }

                PixelBuffer = FigVCPTimedSampleGetPixelBuffer(v28, &value);
                if (PixelBuffer)
                {
                  goto LABEL_66;
                }

                if (value)
                {
                  CFArrayAppendValue(v22, value);
                }

                else
                {
                  ++v23;
                }
              }

              if (Count == v23)
              {
                if (v43)
                {
                  CFRelease(v43);
                  v30 = 0;
                  v43 = 0;
                }

                else
                {
                  v30 = 0;
                }

                v21 = allocator;
              }

              else
              {
                v21 = allocator;
                if (v23)
                {
                  fvcp_vcg_source_CopyConformedTimedImages_cold_3(&time1);
                  goto LABEL_67;
                }

                PixelBuffer = MEMORY[0x19A8CF050](allocator, *(v35 + 224), v22, &v43);
                if (PixelBuffer)
                {
                  goto LABEL_66;
                }

                v30 = v43;
              }

              time1 = v40;
              FigVCPTimedSampleCreateWithTaggedBufferGroup(&time1, v30, &v42);
              if (PixelBuffer)
              {
LABEL_66:
                value_low = PixelBuffer;
                goto LABEL_55;
              }

              if (!v19)
              {
                v19 = CFArrayCreateMutable(v21, v13, MEMORY[0x1E695E9C0]);
                if (!v19)
                {
                  fvcp_vcg_source_CopyConformedTimedImages_cold_4(&time1);
                  goto LABEL_67;
                }
              }

              CFArrayAppendValue(v19, v42);
              if (v42)
              {
                CFRelease(v42);
                v42 = 0;
              }

              if (v43)
              {
                CFRelease(v43);
                v43 = 0;
              }

              CFRelease(v22);
              if (++v20 == v13)
              {
                a3 = v33;
                a4 = v34;
                if (v33)
                {
                  goto LABEL_52;
                }

                goto LABEL_53;
              }
            }

            fvcp_vcg_source_CopyConformedTimedImages_cold_5(&time1);
LABEL_67:
            value_low = LODWORD(time1.value);
            goto LABEL_55;
          }

          goto LABEL_51;
        }
      }

      if (v44)
      {
        v18 = CFArrayGetCount(v44);
      }

      if (v18 != v13)
      {
        fvcp_vcg_source_CopyConformedTimedImages_cold_1(&time1);
        value_low = LODWORD(time1.value);
LABEL_69:
        v19 = 0;
        v22 = 0;
        goto LABEL_55;
      }

      goto LABEL_15;
    }

    v14 = 0;
LABEL_51:
    v19 = 0;
    if (a3)
    {
LABEL_52:
      *a3 = v14;
    }

LABEL_53:
    v22 = 0;
    value_low = 0;
    if (a4)
    {
      *a4 = v19;
      v19 = 0;
    }

LABEL_55:
    CFRelease(v11);
    if (v44)
    {
      CFRelease(v44);
    }
  }

  else
  {
    fvcp_vcg_source_CopyConformedTimedImages_cold_6(&time1);
    v19 = 0;
    v22 = 0;
    value_low = LODWORD(time1.value);
  }

  if (v43)
  {
    CFRelease(v43);
  }

  if (v42)
  {
    CFRelease(v42);
  }

  if (v19)
  {
    CFRelease(v19);
  }

  if (v22)
  {
    CFRelease(v22);
  }

  return value_low;
}

CFStringRef fvcp_ca_source_CopyDebugDesc(uint64_t a1)
{
  v2 = *MEMORY[0x1E695E480];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  return CFStringCreateWithFormat(v2, 0, @"[FigVCPCoreAnimationSource(%p)] trackID=%d", a1, *DerivedStorage);
}

uint64_t fvcp_ca_source_StartOver(uint64_t a1)
{
  CMBaseObjectGetDerivedStorage();
  FigAtomicCompareAndSwap32();
  return 0;
}

uint64_t fvcp_ca_source_CheckImageAvailability(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, _BYTE *a5, _BYTE *a6)
{
  if ((*(a4 + 12) & 0x1D) == 1)
  {
    if (a5)
    {
      *a5 = 1;
    }

    result = 0;
    if (a6)
    {
      *a6 = 1;
    }
  }

  else
  {
    v10 = v6;
    v11 = v7;
    fvcp_ca_source_CheckImageAvailability_cold_1(&v9);
    return v9;
  }

  return result;
}

void fvcp_ca_source_throttleForBackground(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!FigAtomicCompareAndSwapPtr())
  {
    v2 = *(DerivedStorage + 272);

    FigCoreAnimationRendererSetProperty(v2);
  }
}

uint64_t fvcp_ca_source_copyPerformanceDictionary(uint64_t a1, CFMutableDictionaryRef *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v4 = *(DerivedStorage + 272);
  FigMemoryBarrier();
  *a2 = fvcp_createCoreAnimationPerformanceDictionary(DerivedStorage + 280, v4);
  return 0;
}

uint64_t fvcp_bq_source_Invalidate(uint64_t a1)
{
  CMBaseObjectGetDerivedStorage();
  CMNotificationCenterGetDefaultLocalCenter();
  FigNotificationCenterRemoveWeakListener();
  return 0;
}

CFStringRef fvcp_bq_source_CopyDebugDesc(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v3 = *MEMORY[0x1E695E480];
  v4 = CMBaseObjectGetDerivedStorage();
  return CFStringCreateWithFormat(v3, 0, @"[FigVCPBufferQueueSource(%p)] trackID=%d BQ=%p", a1, *v4, *(DerivedStorage + 216));
}

uint64_t fvcp_bq_source_StartOver(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigAtomicCompareAndSwap32();
  FigSimpleMutexLock();
  v2 = *(DerivedStorage + 240);
  if (v2)
  {
    CFRelease(v2);
    *(DerivedStorage + 240) = 0;
  }

  FigSimpleMutexUnlock();
  *(DerivedStorage + 264) = 0;
  CMBaseObjectGetDerivedStorage();
  FigAtomicCompareAndSwap32();
  return 0;
}

uint64_t fvcp_bq_source_CopySampleBuffer(uint64_t a1, void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a2)
  {
    v4 = DerivedStorage;
    FigSimpleMutexLock();
    v5 = *(v4 + 240);
    if (v5)
    {
      v5 = CFRetain(v5);
    }

    *a2 = v5;
    FigSimpleMutexUnlock();
  }

  return 0;
}

uint64_t fvcp_bq_source_HasNoMoreSamples(uint64_t a1)
{
  CMBaseObjectGetDerivedStorage();

  return FigAtomicCompareAndSwap32();
}

BOOL fvcp_bq_source_isLastSample(opaqueCMSampleBuffer *a1, CMTime *a2)
{
  memset(&v9, 0, sizeof(v9));
  CMSampleBufferGetOutputPresentationTimeStamp(&v9, a1);
  memset(&v8, 0, sizeof(v8));
  CMSampleBufferGetOutputDuration(&v8, a1);
  memset(&v7, 0, sizeof(v7));
  lhs = v9;
  v5 = v8;
  CMTimeAdd(&v7, &lhs, &v5);
  lhs = v7;
  v5 = *a2;
  return CMTimeCompare(&lhs, &v5) == 0;
}

double fvcp_pendingFrame_Init(_OWORD *a1)
{
  result = 0.0;
  a1[14] = 0u;
  a1[15] = 0u;
  a1[12] = 0u;
  a1[13] = 0u;
  a1[10] = 0u;
  a1[11] = 0u;
  a1[8] = 0u;
  a1[9] = 0u;
  a1[6] = 0u;
  a1[7] = 0u;
  a1[4] = 0u;
  a1[5] = 0u;
  a1[2] = 0u;
  a1[3] = 0u;
  a1[1] = 0u;
  return result;
}

void fvcp_pendingFrame_Finalize(void *a1)
{
  v2 = a1[3];
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = a1[20];
  if (v3)
  {
    CFRelease(v3);
  }

  v4 = a1[22];
  if (v4)
  {
    CFRelease(v4);
  }

  v5 = a1[21];
  if (v5)
  {
    CFRelease(v5);
  }

  v6 = a1[23];
  if (v6)
  {
    CFRelease(v6);
  }

  v7 = a1[27];
  if (v7)
  {
    CFRelease(v7);
  }

  FigVCPPendingFrameReleaseAndClearSourceFrames(a1);
  v8 = a1[24];
  if (v8)
  {

    CFRelease(v8);
  }
}

double fvcp_timing_Init(uint64_t a1)
{
  *(a1 + 208) = 0;
  result = 0.0;
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

uint64_t fvcp_timing_timebaseTimeJumpedOrRateChanged(uint64_t a1, uint64_t a2)
{
  FigSimpleMutexLock();
  *(a2 + 168) = 1;

  return FigSimpleMutexUnlock();
}

double fvcp_output_Init(_OWORD *a1)
{
  result = 0.0;
  a1[5] = 0u;
  a1[6] = 0u;
  a1[3] = 0u;
  a1[4] = 0u;
  a1[1] = 0u;
  a1[2] = 0u;
  return result;
}

CFStringRef fvcp_output_CopyFormattingDesc(uint64_t a1, CFDictionaryRef formatOptions)
{
  v4 = *MEMORY[0x1E695E480];
  Count = *(a1 + 72);
  if (Count)
  {
    Count = CFArrayGetCount(Count);
  }

  return CFStringCreateWithFormat(v4, formatOptions, @"[FigVCPOutput(%p)] %ld outputs", a1, Count);
}

__CFString *fvcp_output_CopyDebugDesc(uint64_t a1)
{
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  v3 = fvcp_output_copyOutputDurationWaterLevel(a1);
  time = *(v3 + 16);
  Seconds = CMTimeGetSeconds(&time);
  time = *(v3 + 40);
  v5 = CMTimeGetSeconds(&time);
  CFStringAppendFormat(Mutable, 0, @"[FigVCPOutput(%p)] high water = %1.3f seconds / low water = %1.3f seconds\n", a1, *&Seconds, *&v5);
  v6 = *(a1 + 72);
  if (!v6)
  {
    goto LABEL_6;
  }

  Count = CFArrayGetCount(v6);
  if (Count < 1)
  {
    goto LABEL_6;
  }

  v8 = Count;
  for (i = 0; i != v8; ++i)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 72), i);
    CFStringAppendFormat(Mutable, 0, @"  %@", ValueAtIndex);
  }

  if (v3)
  {
LABEL_6:
    CFRelease(v3);
  }

  return Mutable;
}

double fvcp_sourceArray_Init(uint64_t a1)
{
  result = 0.0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  return result;
}

void fvcp_sourceArray_Finalize(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = *(a1 + 40);
  if (v3)
  {

    CFRelease(v3);
  }
}

__CFString *fvcp_sourceArray_CopyFormattingDesc(uint64_t a1, const __CFDictionary *a2)
{
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  CFStringAppendFormat(Mutable, a2, @"[FigVCPSourceArray(%p)] ", a1);
  v5 = *(a1 + 32);
  if (v5)
  {
    Count = CFArrayGetCount(v5);
    if (Count >= 1)
    {
      v7 = Count;
      for (i = 0; i != v7; ++i)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 32), i);
        DerivedStorage = CMBaseObjectGetDerivedStorage();
        CFStringAppendFormat(Mutable, a2, @"(%d,%p) ", *DerivedStorage, ValueAtIndex);
      }
    }
  }

  return Mutable;
}

__CFString *fvcp_sourceArray_CopyDebugDesc(uint64_t a1)
{
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  CFStringAppendFormat(Mutable, 0, @"[FigVCPSourceArray(%p)]\n", a1);
  v3 = *(a1 + 32);
  if (v3)
  {
    Count = CFArrayGetCount(v3);
    if (Count >= 1)
    {
      v5 = Count;
      for (i = 0; i != v5; ++i)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 32), i);
        CFStringAppendFormat(Mutable, 0, @"  %@\n", ValueAtIndex);
      }
    }
  }

  return Mutable;
}

double fvcp_coreAnimationPostProcessor_Init(uint64_t a1)
{
  *(a1 + 80) = 0;
  result = 0.0;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  return result;
}

void fvcp_coreAnimationPostProcessor_Finalize(void *a1)
{
  FigSimpleMutexDestroy();
  v2 = a1[3];
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = a1[4];
  if (v3)
  {
    CFRelease(v3);
  }

  v4 = a1[5];
  if (v4)
  {
    CFRelease(v4);
  }

  v5 = a1[6];
  if (v5)
  {

    CFRelease(v5);
  }
}

double fvcp_outputDurationWaterLevel_Init(_OWORD *a1)
{
  result = 0.0;
  a1[2] = 0u;
  a1[3] = 0u;
  a1[1] = 0u;
  return result;
}

double fvcp_instructionGetter_Init(_OWORD *a1)
{
  result = 0.0;
  a1[2] = 0u;
  a1[3] = 0u;
  a1[1] = 0u;
  return result;
}

uint64_t fvcp_instructionGetter_Finalize(uint64_t a1)
{
  v1 = *(a1 + 56);
  if (v1)
  {
    CFRelease(v1);
  }

  return FigSimpleMutexDestroy();
}

CFStringRef fvcp_instructionGetter_CopyFormattingDesc(void *a1, const __CFDictionary *a2)
{
  FigSimpleMutexLock();
  v4 = a1[7];
  if (v4)
  {
    v5 = CFRetain(v4);
  }

  else
  {
    v5 = 0;
  }

  FigSimpleMutexUnlock();
  v6 = CFStringCreateWithFormat(*MEMORY[0x1E695E480], a2, @"[FigVCPInstructionSource(%p)] currentInstruction %@, callback %p(refcon %p)", a1, v5, a1[3], a1[4]);
  if (v5)
  {
    CFRelease(v5);
  }

  return v6;
}

double fvcp_outputConformer_Init(uint64_t a1)
{
  *(a1 + 144) = 0;
  result = 0.0;
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

void fvcp_outputConformer_Finalize(void *a1)
{
  FigSimpleMutexDestroy();
  v2 = a1[5];
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = a1[6];
  if (v3)
  {
    CFRelease(v3);
  }

  v4 = a1[7];
  if (v4)
  {
    CFRelease(v4);
  }

  v5 = a1[8];
  if (v5)
  {
    CFRelease(v5);
  }

  v6 = a1[9];
  if (v6)
  {
    CFRelease(v6);
  }

  v7 = a1[10];
  if (v7)
  {
    CFRelease(v7);
  }

  v8 = a1[11];
  if (v8)
  {
    CFRelease(v8);
  }

  v9 = a1[12];
  if (v9)
  {

    CFRelease(v9);
  }
}

void fvcp_outputConformer_initCopyPropertyDispatchDictionary()
{
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], 0);
  CFDictionaryAddValue(Mutable, @"VideoCompositionProcessor_DestinationPixelBufferDesiredAttributes", fvcp_outputConformer_copyDestinationPixelBufferDesiredAttributes);
  CFDictionaryAddValue(Mutable, @"VideoCompositionProcessor_DestinationPixelTransferProperties", fvcp_outputConformer_copyDestinationPixelTransferProperties);
  CFDictionaryAddValue(Mutable, @"VideoCompositionProcessor_DestinationPixelBufferDesiredYCbCrMatrix", fvcp_outputConformer_copyDestinationYCbCrMatrix);
  CFDictionaryAddValue(Mutable, @"VideoCompositionProcessor_DestinationPixelBufferDesiredColorPrimaries", fvcp_outputConformer_copyDestinationColorPrimaries);
  CFDictionaryAddValue(Mutable, @"VideoCompositionProcessor_DestinationPixelBufferDesiredTransferFunction", fvcp_outputConformer_copyDestinationTransferFunction);
  CFDictionaryAddValue(Mutable, @"VideoCompositionProcessor_PixelBufferPoolSharingID", fvcp_outputConformer_copyPixelBufferPoolSharingID);
  fvcp_outputConformer_copyPropertyDispatchDictionary = Mutable;
}

CFTypeRef fvcp_outputConformer_copyDestinationPixelBufferDesiredAttributes(uint64_t a1)
{
  FigSimpleMutexLock();
  v2 = *(a1 + 40);
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

CFTypeRef fvcp_outputConformer_copyDestinationPixelTransferProperties(uint64_t a1)
{
  FigSimpleMutexLock();
  v2 = *(a1 + 48);
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

CFTypeRef fvcp_outputConformer_copyDestinationYCbCrMatrix(uint64_t a1)
{
  FigSimpleMutexLock();
  v2 = *(a1 + 56);
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

CFTypeRef fvcp_outputConformer_copyDestinationColorPrimaries(uint64_t a1)
{
  FigSimpleMutexLock();
  v2 = *(a1 + 64);
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

CFTypeRef fvcp_outputConformer_copyDestinationTransferFunction(uint64_t a1)
{
  FigSimpleMutexLock();
  v2 = *(a1 + 72);
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

CFTypeRef fvcp_outputConformer_copyPixelBufferPoolSharingID(uint64_t a1)
{
  FigSimpleMutexLock();
  v2 = *(a1 + 80);
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

void fvcp_outputConformer_initSetPropertyDispatchDictionary()
{
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], 0);
  CFDictionaryAddValue(Mutable, @"VideoCompositionProcessor_DestinationPixelBufferDesiredAttributes", fvcp_outputConformer_setDestinationPixelBufferDesiredAttributes);
  CFDictionaryAddValue(Mutable, @"VideoCompositionProcessor_DestinationPixelTransferProperties", fvcp_outputConformer_setDestinationPixelTransferProperties);
  CFDictionaryAddValue(Mutable, @"VideoCompositionProcessor_DestinationPixelBufferDesiredYCbCrMatrix", fvcp_outputConformer_setDestinationPixelBufferDesiredYCbCrMatrix);
  CFDictionaryAddValue(Mutable, @"VideoCompositionProcessor_DestinationPixelBufferDesiredColorPrimaries", fvcp_outputConformer_setDestinationPixelBufferDesiredColorPrimaries);
  CFDictionaryAddValue(Mutable, @"VideoCompositionProcessor_DestinationPixelBufferDesiredTransferFunction", fvcp_outputConformer_setDestinationPixelBufferDesiredTransferFunction);
  CFDictionaryAddValue(Mutable, @"VideoCompositionProcessor_PixelBufferPoolSharingID", fvcp_outputConformer_setPixelBufferPoolSharingID);
  fvcp_outputConformer_setPropertyDispatchDictionary = Mutable;
}

uint64_t fvcp_outputConformer_setDestinationPixelBufferDesiredAttributes(uint64_t a1, CFTypeRef cf)
{
  if (cf && (v4 = CFGetTypeID(cf), v4 != CFDictionaryGetTypeID()))
  {
    fvcp_outputConformer_setDestinationPixelBufferDesiredAttributes_cold_1(&v9);
    return v9;
  }

  else
  {
    FigSimpleMutexLock();
    v5 = *(a1 + 40);
    *(a1 + 40) = cf;
    if (cf)
    {
      CFRetain(cf);
    }

    if (v5)
    {
      CFRelease(v5);
    }

    v6 = *(a1 + 88);
    if (v6)
    {
      CFRelease(v6);
      *(a1 + 88) = 0;
    }

    v7 = *(a1 + 96);
    if (v7)
    {
      CFRelease(v7);
      *(a1 + 96) = 0;
    }

    ++*(a1 + 32);
    FigSimpleMutexUnlock();
    return 0;
  }
}

uint64_t fvcp_outputConformer_setDestinationPixelTransferProperties(uint64_t a1, CFTypeRef cf)
{
  if (cf && (v4 = CFGetTypeID(cf), v4 != CFDictionaryGetTypeID()))
  {
    fvcp_outputConformer_setDestinationPixelTransferProperties_cold_1(&v9);
    return v9;
  }

  else
  {
    FigSimpleMutexLock();
    v5 = *(a1 + 48);
    *(a1 + 48) = cf;
    if (cf)
    {
      CFRetain(cf);
    }

    if (v5)
    {
      CFRelease(v5);
    }

    v6 = *(a1 + 88);
    if (v6)
    {
      CFRelease(v6);
      *(a1 + 88) = 0;
    }

    v7 = *(a1 + 96);
    if (v7)
    {
      CFRelease(v7);
      *(a1 + 96) = 0;
    }

    ++*(a1 + 32);
    FigSimpleMutexUnlock();
    return 0;
  }
}

uint64_t fvcp_outputConformer_setDestinationPixelBufferDesiredYCbCrMatrix(uint64_t a1, CFTypeRef cf)
{
  if (cf && (v4 = CFGetTypeID(cf), v4 != CFStringGetTypeID()))
  {
    fvcp_outputConformer_setDestinationPixelBufferDesiredYCbCrMatrix_cold_1(&v9);
    return v9;
  }

  else
  {
    FigSimpleMutexLock();
    v5 = *(a1 + 56);
    *(a1 + 56) = cf;
    if (cf)
    {
      CFRetain(cf);
    }

    if (v5)
    {
      CFRelease(v5);
    }

    v6 = *(a1 + 88);
    if (v6)
    {
      CFRelease(v6);
      *(a1 + 88) = 0;
    }

    v7 = *(a1 + 96);
    if (v7)
    {
      CFRelease(v7);
      *(a1 + 96) = 0;
    }

    ++*(a1 + 32);
    FigSimpleMutexUnlock();
    return 0;
  }
}

uint64_t fvcp_outputConformer_setDestinationPixelBufferDesiredColorPrimaries(uint64_t a1, CFTypeRef cf)
{
  if (cf && (v4 = CFGetTypeID(cf), v4 != CFStringGetTypeID()))
  {
    fvcp_outputConformer_setDestinationPixelBufferDesiredColorPrimaries_cold_1(&v9);
    return v9;
  }

  else
  {
    FigSimpleMutexLock();
    v5 = *(a1 + 64);
    *(a1 + 64) = cf;
    if (cf)
    {
      CFRetain(cf);
    }

    if (v5)
    {
      CFRelease(v5);
    }

    v6 = *(a1 + 88);
    if (v6)
    {
      CFRelease(v6);
      *(a1 + 88) = 0;
    }

    v7 = *(a1 + 96);
    if (v7)
    {
      CFRelease(v7);
      *(a1 + 96) = 0;
    }

    ++*(a1 + 32);
    FigSimpleMutexUnlock();
    return 0;
  }
}

uint64_t fvcp_outputConformer_setDestinationPixelBufferDesiredTransferFunction(uint64_t a1, CFTypeRef cf)
{
  if (cf && (v4 = CFGetTypeID(cf), v4 != CFStringGetTypeID()))
  {
    fvcp_outputConformer_setDestinationPixelBufferDesiredTransferFunction_cold_1(&v9);
    return v9;
  }

  else
  {
    FigSimpleMutexLock();
    v5 = *(a1 + 72);
    *(a1 + 72) = cf;
    if (cf)
    {
      CFRetain(cf);
    }

    if (v5)
    {
      CFRelease(v5);
    }

    v6 = *(a1 + 88);
    if (v6)
    {
      CFRelease(v6);
      *(a1 + 88) = 0;
    }

    v7 = *(a1 + 96);
    if (v7)
    {
      CFRelease(v7);
      *(a1 + 96) = 0;
    }

    ++*(a1 + 32);
    FigSimpleMutexUnlock();
    return 0;
  }
}

uint64_t fvcp_outputConformer_setPixelBufferPoolSharingID(uint64_t a1, const void *a2)
{
  FigSimpleMutexLock();
  v4 = *(a1 + 80);
  *(a1 + 80) = a2;
  if (a2)
  {
    CFRetain(a2);
  }

  if (v4)
  {
    CFRelease(v4);
  }

  v5 = *(a1 + 88);
  if (v5)
  {
    CFRelease(v5);
    *(a1 + 88) = 0;
  }

  v6 = *(a1 + 96);
  if (v6)
  {
    CFRelease(v6);
    *(a1 + 96) = 0;
  }

  ++*(a1 + 32);
  FigSimpleMutexUnlock();
  return 0;
}

double fvcp_compositorHost_Init(uint64_t a1)
{
  *(a1 + 128) = 0;
  result = 0.0;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  return result;
}

CFTypeRef fvcp_compositorHost_copyPendingFrameFromArray(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  FigSimpleMutexLock();
  PendingFrameFromArray = fvcp_compositorHost_getPendingFrameFromArray(a1, v2, 0);
  if (PendingFrameFromArray)
  {
    v5 = CFRetain(PendingFrameFromArray);
  }

  else
  {
    v5 = 0;
  }

  FigSimpleMutexUnlock();
  return v5;
}

void fvcp_compositorHost_collectCancellingFrames(void *value, CFMutableArrayRef theArray)
{
  if (*(value + 5) == 2)
  {
    CFArrayAppendValue(theArray, value);
  }
}

void fvcp_compositorHost_initProcessorToCompositorPropertyKeyMapping()
{
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  CFDictionarySetValue(Mutable, @"VideoCompositionProcessor_RenderScale", @"RenderScale");
  CFDictionarySetValue(Mutable, @"VideoCompositionProcessor_ClientPID", @"ClientPID");
  CFDictionarySetValue(Mutable, @"VideoCompositionProcessor_ThrottleForBackground", @"ThrottleForBackground");
  CFDictionarySetValue(Mutable, @"VideoCompositionProcessor_SourcePixelBufferAttributes", @"SourcePixelBufferAttributes");
  CFDictionarySetValue(Mutable, @"VideoCompositionProcessor_DestinationPixelBufferDesiredAttributes", @"DestinationPixelBufferDesiredAttributes");
  CFDictionarySetValue(Mutable, @"VideoCompositionProcessor_CompositionYCbCrMatrix", @"DestinationPixelBufferDesiredYCbCrMatrix");
  CFDictionarySetValue(Mutable, @"VideoCompositionProcessor_CompositionColorPrimaries", @"DestinationPixelBufferDesiredColorPrimaries");
  CFDictionarySetValue(Mutable, @"VideoCompositionProcessor_CompositionTransferFunction", @"DestinationPixelBufferDesiredTransferFunction");
  CFDictionarySetValue(Mutable, @"VideoCompositionProcessor_PixelBufferPoolSharingID", @"PixelBufferPoolSharingID");
  CFDictionarySetValue(Mutable, @"VideoCompositionProcessorProperty_LoopTimeRange", @"LoopTimeRange");
  CFDictionarySetValue(Mutable, @"SourceColorConformanceCapabilityLevel", @"SourceColorConformanceCapabilityLevel");
  fvcp_compositorHost_processorToCompositorPropertyKeyMapping = Mutable;
}

uint64_t OUTLINED_FUNCTION_0_198(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, __int128 a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, __int128 a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, CMTime *time1, uint64_t a36, CMTime *time2, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, __int128 time1a, uint64_t time1_16, uint64_t a45, uint64_t time2a)
{
  time1a = a26;
  time1_16 = a27;

  return CMTimeCompare(&time1a, &time2a);
}

uint64_t OUTLINED_FUNCTION_1_180(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, __int128 a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, CMTime *time1, uint64_t a23, CMTime *time2, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, __int128 time1a, uint64_t time1_16, uint64_t a31, uint64_t time2a)
{
  time1a = a15;
  time1_16 = a16;

  return CMTimeCompare(&time1a, &time2a);
}

void OUTLINED_FUNCTION_2_176()
{

  JUMPOUT(0x19A8D3660);
}

uint64_t OUTLINED_FUNCTION_3_148(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, CMTime *time1, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t time1a, uint64_t time1_8, uint64_t time1_16, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, CMTime *time2, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t time2a, int time2_8, int time2_12, uint64_t time2_16)
{
  time2a = *(v54 - 192);
  time2_8 = *(v54 - 184);
  time2_12 = v52;
  time2_16 = v53;

  return CMTimeCompare(&time1a, &time2a);
}

CMTime *OUTLINED_FUNCTION_6_114(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, CMTime *a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49)
{

  return CMTimeMake(&a49, 5, 1000000000);
}

CMTime *OUTLINED_FUNCTION_7_97(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, CMTime *rhs, CMTime *lhs, uint64_t a36, CMTime *a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t rhsa, int rhs_8, int rhs_12, uint64_t rhs_16, uint64_t lhsa, uint64_t lhs_8, uint64_t lhs_16, uint64_t a49, uint64_t a50)
{
  rhsa = *(v51 - 192);
  rhs_8 = *(v51 - 184);
  rhs_12 = v50;

  return CMTimeSubtract(&a50, &lhsa, &rhsa);
}

CMTime *OUTLINED_FUNCTION_8_84@<X0>(int a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, CMTime *rhs, CMTime *lhs, uint64_t a29, CMTime *a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t rhsa, int rhs_8, int rhs_12, uint64_t rhs_16, uint64_t lhsa, uint64_t lhs_8, uint64_t lhs_16, uint64_t a42, uint64_t a43)
{
  rhs_8 = a1;
  rhs_12 = v43;

  return CMTimeSubtract(&a43, &lhsa, &rhsa);
}

CMTime *OUTLINED_FUNCTION_12_67(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, CMTime *a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35)
{

  return CMTimeMake(&a35, 5, 1000000000);
}

CMTime *OUTLINED_FUNCTION_13_53@<X0>(CMTime *a1@<X8>)
{

  return CMTimeMake(a1, 5, 1000000000);
}

uint64_t OUTLINED_FUNCTION_14_63(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, CMTime *time1, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t time1a)
{
  *(v57 + 128) = *(v57 + 240);
  *(v57 + 144) = *(v57 + 256);

  return CMTimeCompare(&time1a, (v58 - 128));
}

__n128 OUTLINED_FUNCTION_17_45(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __n128 a21, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, __n128 a22, unint64_t a23)
{
  result = a22;
  v23[15] = a22;
  v23[16].n128_u64[0] = a23;
  return result;
}

CMTime *OUTLINED_FUNCTION_19_43(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, CMTime *rhs, CMTime *lhs, uint64_t a36, CMTime *a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t rhsa, uint64_t rhs_8, uint64_t rhs_16, uint64_t lhsa, uint64_t lhs_8, uint64_t lhs_16, uint64_t a48, uint64_t a49)
{

  return CMTimeSubtract(&a49, &lhsa, &rhsa);
}

__n128 OUTLINED_FUNCTION_20_37(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __n128 a9, __n128 a10, __int128 a12, __int128 a13, __int128 a15, __int128 a16, uint64_t arg50)
{
  *(v15 - 80) = a16;
  *(v15 - 64) = arg50;
  *(v15 - 112) = a13;
  *(v15 - 96) = a15;
  result = a10;
  *(v15 - 144) = a10;
  *(v15 - 128) = a12;
  return result;
}

__n128 OUTLINED_FUNCTION_21_38@<Q0>(uint64_t a1@<X2>, __n128 *a2@<X8>)
{
  result = *a2;
  *(v2 - 176) = *a2;
  v4 = a2[1].n128_u64[0];
  *(v2 - 160) = v4;
  *(v2 - 208) = result;
  *(v2 - 192) = v4;
  *(v2 - 56) = *a1;
  *(v2 - 48) = *(a1 + 8);
  return result;
}

uint64_t OUTLINED_FUNCTION_25_35@<X0>(uint64_t a1@<X1>, __int128 *a2@<X4>, int a3@<W8>, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, __int128 a20, __int128 a21, __int128 a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27)
{
  *(v28 - 80) = *a1;
  *(v28 - 64) = *(a1 + 16);
  *(v28 - 112) = *(v28 - 56);
  *(v28 - 104) = *(v28 - 48);
  *(v28 - 100) = a3;
  *(v28 - 96) = v27;
  v30 = a2[1];
  a20 = *a2;
  a21 = v30;
  a22 = a2[2];

  return FigVCPGetFoldedTimeRanges((v28 - 80), (v28 - 112), &a20, (v28 - 176), (v28 - 208), &a27, &a23);
}

__n128 OUTLINED_FUNCTION_29_30()
{
  result = v0[12];
  v1[15] = result;
  v1[16].n128_u64[0] = v0[13].n128_u64[0];
  return result;
}

CMTime *OUTLINED_FUNCTION_33_29(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, __int128 a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, __int128 a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, CMTime *a47)
{

  return CMSampleBufferGetOutputDuration(&a47, v47);
}

CMTime *OUTLINED_FUNCTION_34_27(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, CMTime *rhs, CMTime *lhs, uint64_t a22, CMTime *a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t rhsa, uint64_t rhs_8, uint64_t rhs_16, uint64_t lhsa, uint64_t lhs_8, uint64_t lhs_16, uint64_t a34, uint64_t a35)
{

  return CMTimeSubtract(&a35, &lhsa, &rhsa);
}

uint64_t OUTLINED_FUNCTION_35_24(uint64_t a1)
{

  return FigAtomicCompareAndSwap32();
}

uint64_t OUTLINED_FUNCTION_40_23(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, CMTime *time1, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t time1a, uint64_t time1_8, uint64_t time1_16, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, CMTime *time2, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t time2a, int time2_8, int time2_12, uint64_t time2_16)
{
  time1a = *(v42 - 128);
  LODWORD(time1_8) = *(v42 - 120);
  HIDWORD(time1_8) = v38;
  time1_16 = v40;
  time2a = *(v42 - 192);
  time2_8 = *(v42 - 184);
  time2_12 = v39;
  time2_16 = v41;

  return CMTimeCompare(&time1a, &time2a);
}

void OUTLINED_FUNCTION_41_26()
{

  JUMPOUT(0x19A8D3660);
}

__n128 OUTLINED_FUNCTION_46_17(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __n128 a21, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, __n128 a22, unint64_t a23)
{
  result = a22;
  v23[12] = a22;
  v23[13].n128_u64[0] = a23;
  return result;
}

__n128 OUTLINED_FUNCTION_47_19()
{
  result = v1[15];
  v0[12] = result;
  v0[13].n128_u64[0] = v1[16].n128_u64[0];
  return result;
}

uint64_t OUTLINED_FUNCTION_48_18@<X0>(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, CMTime *time2, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t time2a)
{
  *(v50 + 144) = a1;

  return CMTimeCompare((v51 - 128), &time2a);
}

__n128 OUTLINED_FUNCTION_51_21(__n128 *a1)
{
  result = a1[1];
  v1[15] = result;
  v1[16].n128_u64[0] = a1[2].n128_u64[0];
  return result;
}

void OUTLINED_FUNCTION_55_19()
{

  JUMPOUT(0x19A8D3660);
}

void OUTLINED_FUNCTION_60_16()
{
  *(v2 + 240) = 0;
  *(v2 + 248) = 0;
  *(v2 + 256) = 0;
  *(v2 + 128) = *(v2 + 192);
  *(v2 + 136) = *(v2 + 200);
  *(v2 + 140) = v0;
  *(v2 + 144) = v1;
}

uint64_t OUTLINED_FUNCTION_64_12(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return FigAtomicCompareAndSwap32();
}

void OUTLINED_FUNCTION_65_13()
{
  *v0 = 0;
  v0[1] = 0;
  v0[2] = 0;
  *(v2 + 128) = *(v2 + 160);
  *(v2 + 136) = *(v2 + 168);
  *(v2 + 140) = v1;
}

uint64_t OUTLINED_FUNCTION_66_12@<X0>(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, CMTime *time1)
{
  a4 = a1;

  return CMTimeCompare(&time1, &a2);
}

uint64_t OUTLINED_FUNCTION_73_10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, CMTime *time1, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t time1a)
{
  *(v58 + 128) = *v57;
  *(v58 + 144) = *(v57 + 16);

  return CMTimeCompare(&time1a, (v59 - 128));
}

void OUTLINED_FUNCTION_74_12()
{
  *(v2 + 240) = *(v2 + 192);
  *(v2 + 248) = *(v2 + 200);
  *(v2 + 252) = v0;
  *(v2 + 256) = v1;
}

void OUTLINED_FUNCTION_76_13()
{
  v1[30] = 0;
  v1[31] = 0;
  v1[32] = 0;
  v1[16] = *(v0 + 96);
}

uint64_t OUTLINED_FUNCTION_84_7(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, CMTime *time1, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t time1a, uint64_t time1_8, uint64_t time1_16, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, CMTime *time2, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t time2a)
{

  return CMTimeCompare(&time1a, &time2a);
}

CMTime *OUTLINED_FUNCTION_85_7(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, CMTime *a63)
{

  return CMTimeAbsoluteValue(&a65, (v65 - 128));
}

uint64_t OUTLINED_FUNCTION_86_8(uint64_t a1, uint64_t a2)
{

  return _CFRuntimeCreateInstance();
}

void OUTLINED_FUNCTION_89_6()
{
  *v0 = *(v2 + 160);
  *(v0 + 8) = *(v2 + 168);
  *(v0 + 12) = v1;
}

__n128 OUTLINED_FUNCTION_92_8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __n128 a33, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, __n128 a34, unint64_t a35)
{
  result = a34;
  v35[12] = a34;
  v35[13].n128_u64[0] = a35;
  return result;
}

void OUTLINED_FUNCTION_96_7()
{
  *(v1 + 240) = *(v1 + 176);
  *(v1 + 248) = *(v1 + 184);
  *(v1 + 252) = v0;
}

__n128 OUTLINED_FUNCTION_97_10(__n128 *a1)
{
  result = a1[1];
  v1[12] = result;
  v1[13].n128_u64[0] = a1[2].n128_u64[0];
  return result;
}

uint64_t OUTLINED_FUNCTION_101_4()
{

  return FigAtomicCompareAndSwap32();
}

CMTime *OUTLINED_FUNCTION_102_4(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, CMTime *a49)
{

  return CMSampleBufferGetOutputDuration(&a49, v49);
}

uint64_t FigMetricItemPlaybackEndEventCreateInternal(const __CFAllocator *a1, __int128 *a2, const void *a3, const void *a4, uint64_t a5, CFTypeRef *a6)
{
  ensureMetricEventTrace();
  if (!a6)
  {
    FigMetricItemPlaybackEndEventCreateInternal_cold_1(v24);
    return v24[0];
  }

  FigMetricEventGetClassID();
  v12 = CMDerivedObjectCreate();
  v13 = 0;
  if (!v12)
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    v15 = FigSimpleMutexCreate();
    *(DerivedStorage + 64) = v15;
    if (v15)
    {
      *DerivedStorage = 1;
      *(DerivedStorage + 8) = 14;
      if (a3)
      {
        v16 = CFRetain(a3);
      }

      else
      {
        Current = CFAbsoluteTimeGetCurrent();
        v16 = CFDateCreate(a1, Current);
      }

      *(DerivedStorage + 16) = v16;
      v18 = *a2;
      *(DerivedStorage + 48) = *(a2 + 2);
      *(DerivedStorage + 32) = v18;
      if (a4)
      {
        v19 = CFRetain(a4);
      }

      else
      {
        v19 = 0;
      }

      v12 = 0;
      *(DerivedStorage + 24) = v19;
      *(DerivedStorage + 56) = a5;
      *a6 = 0;
      return v12;
    }

    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", 0, v23, v24[1]);
    v12 = v21;
    v13 = cf;
  }

  if (v13)
  {
    CFRelease(v13);
  }

  return v12;
}

uint64_t mepe_finalize(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v2 = *(DerivedStorage + 16);
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = *(DerivedStorage + 24);
  if (v3)
  {
    CFRelease(v3);
  }

  return FigSimpleMutexDestroy();
}

uint64_t mepe_setImmutable(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  *DerivedStorage = 0;

  return FigSimpleMutexUnlock();
}

uint64_t mepe_isMutable(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  v2 = *DerivedStorage;
  FigSimpleMutexUnlock();
  return v2;
}

CFTypeRef mepe_copySessionID(uint64_t a1)
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

uint64_t mepe_setSessionID(uint64_t a1, const void *a2)
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
    mepe_setSessionID_cold_1(&v7);
    v5 = v7;
  }

  FigSimpleMutexUnlock();
  return v5;
}

uint64_t mepe_getMediaTime@<X0>(uint64_t a2@<X8>)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  *a2 = *(DerivedStorage + 32);
  *(a2 + 16) = *(DerivedStorage + 48);

  return FigSimpleMutexUnlock();
}

uint64_t mepe_setMediaTime(uint64_t a1, __int128 *a2)
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
    mepe_setMediaTime_cold_1(&v7);
    v4 = v7;
  }

  FigSimpleMutexUnlock();
  return v4;
}

void FigHTTPRequestCommonMandatoryRequestStart(uint64_t a1)
{
  v2 = 0;
  v3 = &v2;
  v4 = 0x2020000000;
  v5 = 0;
  MEMORY[0x19A8D3660](&gHTTPRequestTrackMandatoryInit, figHTTPRequestTrackMandatoryRunOnce);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __FigHTTPRequestCommonMandatoryRequestStart_block_invoke;
  block[3] = &unk_1E7486A28;
  block[4] = &v2;
  dispatch_sync(gMandatoryLevelQueue, block);
  if (*(v3 + 24))
  {
    CMNotificationCenterGetDefaultLocalCenter();
    CMNotificationCenterPostNotification();
  }

  _Block_object_dispose(&v2, 8);
}

void sub_19680CA7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void figHTTPRequestTrackMandatoryRunOnce()
{
  gMandatoryLevelQueue = dispatch_queue_create("com.apple.coremedia.networkmandatoryactivity", 0);
  v0 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, gMandatoryLevelQueue);
  gMandatoryActivityIdleTimer = v0;
  v1 = dispatch_time(0, 0x7FFFFFFFFFFFFFFFLL);
  dispatch_source_set_timer(v0, v1, 0xFFFFFFFFFFFFFFFFLL, 0);
  dispatch_source_set_event_handler_f(gMandatoryActivityIdleTimer, figHTTPRequestMandatoryIdleTimer);
  v2 = gMandatoryActivityIdleTimer;

  dispatch_resume(v2);
}

void __FigHTTPRequestCommonMandatoryRequestStart_block_invoke(uint64_t a1)
{
  v2 = ++gActiveMandatoryConnectionCount;
  ++gMandatoryConnectionCount;
  if (gMandatoryConnectionCountAtIdle)
  {
    v3 = gMandatoryActivityIdleTimer;
    v4 = dispatch_time(0, 0x7FFFFFFFFFFFFFFFLL);
    dispatch_source_set_timer(v3, v4, 0xFFFFFFFFFFFFFFFFLL, 0);
    gMandatoryConnectionCountAtIdle = 0;
    v2 = gActiveMandatoryConnectionCount;
  }

  if (v2 == 1)
  {
    *(*(*(a1 + 32) + 8) + 24) = 1;
  }
}

void FigHTTPRequestCommonMandatoryRequestFinish()
{
  MEMORY[0x19A8D3660](&gHTTPRequestTrackMandatoryInit, figHTTPRequestTrackMandatoryRunOnce);
  v0 = gMandatoryLevelQueue;

  dispatch_async(v0, &__block_literal_global_118);
}

void __FigHTTPRequestCommonMandatoryRequestFinish_block_invoke()
{
  if (!--gActiveMandatoryConnectionCount)
  {
    gMandatoryConnectionCountAtIdle = gMandatoryConnectionCount;
    v1 = gMandatoryActivityIdleTimer;
    v2 = dispatch_time(0, 100000000);

    dispatch_source_set_timer(v1, v2, 0xFFFFFFFFFFFFFFFFLL, 0);
  }
}

uint64_t FigHTTPRequestPerformingMandatoryActivity()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v6 = 0;
  MEMORY[0x19A8D3660](&gHTTPRequestTrackMandatoryInit, figHTTPRequestTrackMandatoryRunOnce);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __FigHTTPRequestPerformingMandatoryActivity_block_invoke;
  block[3] = &unk_1E7486A28;
  block[4] = &v3;
  dispatch_sync(gMandatoryLevelQueue, block);
  v0 = *(v4 + 24);
  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_19680CD68(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t FigHTTPRequestGetClassID(uint64_t a1, uint64_t a2)
{
  if (_MergedGlobals_133 != -1)
  {
    FigHTTPRequestGetClassID_cold_1();
  }

  return qword_1ED4CBAB8;
}

uint64_t FigHTTPRequestGetClassIDDispatchOnce(uint64_t *a1, uint64_t a2)
{
  result = FigHTTPRequestNSURLSessionGetClassID(a1, a2);
  *a1 = result;
  return result;
}

uint64_t figHTTPRequestMandatoryIdleTimer(uint64_t result)
{
  if (!gActiveMandatoryConnectionCount && gMandatoryConnectionCountAtIdle == gMandatoryConnectionCount)
  {
    gMandatoryConnectionCountAtIdle = 0;
    CMNotificationCenterGetDefaultLocalCenter();

    return CMNotificationCenterPostNotification();
  }

  return v2;
}

uint64_t RegisterFigReportingModeratorBaseType(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  CMBaseGetClassID();

  return FigBaseClassRegisterClass();
}

uint64_t FigTTMLSerializerCreateForByteStream(uint64_t a1, const void *a2, CFTypeRef *a3)
{
  v5 = FigTTMLGetLibXMLAccess();
  if (!a2)
  {
    FigTTMLSerializerCreateForByteStream_cold_4(&v12);
LABEL_13:
    v10 = v12;
    goto LABEL_7;
  }

  if (!a3)
  {
    FigTTMLSerializerCreateForByteStream_cold_3(&v12);
    a2 = 0;
    goto LABEL_13;
  }

  FigTTMLSerializerGetClassID();
  v6 = CMDerivedObjectCreate();
  if (v6)
  {
    v10 = v6;
    a2 = 0;
    goto LABEL_7;
  }

  FigBytePumpGetFigBaseObject();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  *DerivedStorage = CFRetain(a2);
  v8 = (*(v5 + 136))(figTTMLSerializerForByteStream_WriteToByteStream, figTTMLSerializerForByteStream_CloseByteStream, 0, 0);
  a2 = v8;
  if (!v8)
  {
    FigTTMLSerializerCreateForByteStream_cold_2(&v12);
    goto LABEL_13;
  }

  v9 = (*(v5 + 144))(v8);
  if (!v9)
  {
    FigTTMLSerializerCreateForByteStream_cold_1(&v12);
    goto LABEL_13;
  }

  v10 = 0;
  a2 = 0;
  DerivedStorage[1] = v9;
  *a3 = 0;
LABEL_7:
  (*(v5 + 152))(a2);
  (*(v5 + 160))(0);
  return v10;
}

uint64_t figTTMLSerializerForByteStream_WriteToByteStream(uint64_t a1, uint64_t a2, int a3)
{
  FigBytePumpGetFigBaseObject();
  CMBaseObjectGetDerivedStorage();
  if (CMByteStreamAppend())
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return 0;
  }
}

uint64_t figTTMLSerializerForByteStream_Invalidate()
{
  FigBytePumpGetFigBaseObject();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v1 = FigTTMLGetLibXMLAccess();
  if (FigAtomicCompareAndSwap32())
  {
    (*(v1 + 176))(*(DerivedStorage + 8));
    (*(v1 + 160))(*(DerivedStorage + 8));
    CMBaseObject = CMByteStreamGetCMBaseObject();
    if (CMBaseObject)
    {
      v3 = CMBaseObject;
      v4 = *(*(CMBaseObjectGetVTable() + 8) + 24);
      if (v4)
      {
        v4(v3);
      }
    }
  }

  return 0;
}

void figTTMLSerializerForByteStream_Finalize()
{
  FigBytePumpGetFigBaseObject();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  figTTMLSerializerForByteStream_Invalidate();
  if (*DerivedStorage)
  {
    CFRelease(*DerivedStorage);
    *DerivedStorage = 0;
  }

  v1 = 0;
  v2 = DerivedStorage + 3;
  do
  {
    free(v2[v1]);
    v1 += 2;
  }

  while (v1 != 32);
}

CFStringRef figTTMLSerializerForByteStream_CopyDebugDesc()
{
  FigBytePumpGetFigBaseObject();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  return CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"FigTTMLSerializerForByteStream: %@", *DerivedStorage);
}

uint64_t figTTMLSerializerForByteStream_CopyProperty(uint64_t a1, const void *a2, uint64_t a3, void *a4)
{
  if (a1)
  {
    if (a2)
    {
      if (a4)
      {
        FigBytePumpGetFigBaseObject();
        DerivedStorage = CMBaseObjectGetDerivedStorage();
        if (CFEqual(a2, @"UseSingleQuote"))
        {
          result = 0;
          v8 = MEMORY[0x1E695E4D0];
          if (!*(DerivedStorage + 16))
          {
            v8 = MEMORY[0x1E695E4C0];
          }

          v9 = *v8;
        }

        else
        {
          v9 = 0;
          result = 4294954512;
        }

        *a4 = v9;
      }

      else
      {
        figTTMLSerializerForByteStream_CopyProperty_cold_1(&v10);
        return v10;
      }
    }

    else
    {
      figTTMLSerializerForByteStream_CopyProperty_cold_2(&v11);
      return v11;
    }
  }

  else
  {
    figTTMLSerializerForByteStream_CopyProperty_cold_3(&v12);
    return v12;
  }

  return result;
}

uint64_t figTTMLSerializerForByteStream_SetProperty(int a1, CFTypeRef cf1, const void *a3)
{
  if (!cf1)
  {
    figTTMLSerializerForByteStream_SetProperty_cold_4(&v10);
    return v10;
  }

  if (!a3)
  {
    figTTMLSerializerForByteStream_SetProperty_cold_3(&v10);
    return v10;
  }

  if (CFEqual(cf1, @"UseSingleQuote"))
  {
    FigBytePumpGetFigBaseObject();
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    v5 = FigTTMLGetLibXMLAccess();
    v6 = CFGetTypeID(a3);
    if (v6 == CFBooleanGetTypeID())
    {
      Value = CFBooleanGetValue(a3);
      if (Value)
      {
        v8 = 39;
      }

      else
      {
        v8 = 34;
      }

      if ((*(v5 + 224))(*(DerivedStorage + 8), v8) != -1)
      {
        result = 0;
        *(DerivedStorage + 16) = Value;
        return result;
      }

      figTTMLSerializerForByteStream_SetProperty_cold_2(&v10);
    }

    else
    {
      figTTMLSerializerForByteStream_SetProperty_cold_1(&v10);
    }

    return v10;
  }

  return 4294954512;
}

uint64_t figTTMLSerializerForByteStream_StartElement(uint64_t a1, const __CFString *a2)
{
  FigBytePumpGetFigBaseObject();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v5 = FigTTMLGetLibXMLAccess();
  if (CFEqual(a2, @"tt") && (*(v5 + 168))(*(DerivedStorage + 8), "1.0", 0, 0) == -1)
  {
    v10 = 286;
    goto LABEL_8;
  }

  v6 = *(v5 + 192);
  v7 = *(DerivedStorage + 8);
  XMLStringFromCFString = getXMLStringFromCFString(a1, a2);
  if (v6(v7, XMLStringFromCFString) == -1)
  {
    v10 = 290;
LABEL_8:
    figTTMLSerializerForByteStream_StartElement_cold_1(v10, &v11);
    return v11;
  }

  return 0;
}

uint64_t figTTMLSerializerForByteStream_SetAttribute(uint64_t a1, const __CFString *a2, const __CFString *a3)
{
  FigBytePumpGetFigBaseObject();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v7 = *(FigTTMLGetLibXMLAccess() + 232);
  v8 = *(DerivedStorage + 8);
  XMLStringFromCFString = getXMLStringFromCFString(a1, a2);
  v10 = getXMLStringFromCFString(a1, a3);
  if (v7(v8, XMLStringFromCFString, v10) != -1)
  {
    return 0;
  }

  figTTMLSerializerForByteStream_SetAttribute_cold_1(&v12);
  return v12;
}

uint64_t figTTMLSerializerForByteStream_EndElement()
{
  FigBytePumpGetFigBaseObject();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v1 = FigTTMLGetLibXMLAccess();
  if ((*(v1 + 200))(*(DerivedStorage + 8)) != -1)
  {
    return 0;
  }

  figTTMLSerializerForByteStream_EndElement_cold_1(&v3);
  return v3;
}

uint64_t figTTMLSerializerForByteStream_AddText(uint64_t a1, const __CFString *a2)
{
  FigBytePumpGetFigBaseObject();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v5 = *(FigTTMLGetLibXMLAccess() + 208);
  v6 = *(DerivedStorage + 8);
  XMLStringFromCFString = getXMLStringFromCFString(a1, a2);
  if (v5(v6, XMLStringFromCFString) != -1)
  {
    return 0;
  }

  figTTMLSerializerForByteStream_AddText_cold_1(&v9);
  return v9;
}

uint64_t figTTMLSerializerForByteStream_Flush()
{
  FigBytePumpGetFigBaseObject();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v1 = FigTTMLGetLibXMLAccess();
  if ((*(v1 + 216))(*(DerivedStorage + 8)) != -1)
  {
    return 0;
  }

  figTTMLSerializerForByteStream_Flush_cold_1(&v3);
  return v3;
}

const char *getXMLStringFromCFString(uint64_t a1, const __CFString *a2)
{
  FigBytePumpGetFigBaseObject();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v4 = *(DerivedStorage + 20);
  *(DerivedStorage + 20) = v4 + 1;
  v5 = v4 & 0xF;
  Length = CFStringGetLength(a2);
  v7 = Length + 1;
  v8 = DerivedStorage + 16 * v5;
  while (1)
  {
    FigBytePumpGetFigBaseObject();
    v9 = CMBaseObjectGetDerivedStorage() + 16 * v5;
    if (*(v9 + 32) < v7)
    {
      v10 = malloc_type_malloc(v7, 0x5CB30633uLL);
      if (v10)
      {
        v18 = v10;
        free(*(v9 + 24));
        *(v9 + 24) = v18;
        *(v9 + 32) = v7;
      }

      else
      {
        getXMLStringFromCFString_cold_1(0, v11, v12, v13, v14, v15, v16, v17, v21, v22, SHIDWORD(v22), v23);
      }
    }

    if (CFStringGetCString(a2, *(v8 + 24), *(v8 + 32), 0x8000100u))
    {
      break;
    }

    v7 += Length;
    if (v7 > 16 * Length)
    {
      v19 = 0;
      goto LABEL_10;
    }
  }

  v19 = *(v8 + 24);
LABEL_10:
  if (v19)
  {
    return v19;
  }

  else
  {
    return "";
  }
}

uint64_t AudioSampleBufferSplitterSetSplitMethod(_DWORD *a1, int a2)
{
  if (a1)
  {
    result = 0;
    *a1 = a2;
  }

  else
  {
    v7 = v2;
    v8 = v3;
    AudioSampleBufferSplitterSetSplitMethod_cold_1(&v6);
    return v6;
  }

  return result;
}

uint64_t AudioSampleBufferSplitterSetMaxNumberOfSplitSampleBuffers(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    if (a2 < 0)
    {
      AudioSampleBufferSplitterSetMaxNumberOfSplitSampleBuffers_cold_1(&v4);
      return v4;
    }

    else
    {
      result = 0;
      *(a1 + 80) = a2;
    }
  }

  else
  {
    AudioSampleBufferSplitterSetMaxNumberOfSplitSampleBuffers_cold_2(&v5);
    return v5;
  }

  return result;
}

uint64_t AudioSampleBufferSplitterSetInitialSegmentStartTimeAndSegmentInterval(uint64_t a1, __int128 *a2, CMTime *a3)
{
  if (!a1)
  {
    AudioSampleBufferSplitterSetInitialSegmentStartTimeAndSegmentInterval_cold_3(&time1);
    return LODWORD(time1.value);
  }

  if ((*(a2 + 3) & 0x1D) != 1)
  {
    AudioSampleBufferSplitterSetInitialSegmentStartTimeAndSegmentInterval_cold_1(&time1);
    return LODWORD(time1.value);
  }

  if ((a3->flags & 0x1D) != 1 || (time1 = **&MEMORY[0x1E6960CC0], v9 = *a3, (CMTimeCompare(&time1, &v9) & 0x80000000) == 0))
  {
    AudioSampleBufferSplitterSetInitialSegmentStartTimeAndSegmentInterval_cold_2(&time1);
    return LODWORD(time1.value);
  }

  result = 0;
  v7 = *a2;
  *(a1 + 20) = *(a2 + 2);
  *(a1 + 4) = v7;
  v8 = *&a3->value;
  *(a1 + 44) = a3->epoch;
  *(a1 + 28) = v8;
  return result;
}

uint64_t AudioSampleBufferSplitterGetInitialSegmentStartTimeAndSegmentInterval(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {
    if (a2)
    {
      v5 = *(a1 + 4);
      *(a2 + 16) = *(a1 + 20);
      *a2 = v5;
    }

    v6 = 0;
    if (a3)
    {
      v7 = *(a1 + 28);
      *(a3 + 16) = *(a1 + 44);
      *a3 = v7;
    }
  }

  else
  {
    v10 = v3;
    v11 = v4;
    AudioSampleBufferSplitterGetInitialSegmentStartTimeAndSegmentInterval_cold_1(&v9);
    return v9;
  }

  return v6;
}

CMTime *asbs_calculateNextCumulatedSegmentInterval@<X0>(uint64_t a1@<X0>, CMTime *a2@<X1>, uint64_t a3@<X8>)
{
  memset(&v9, 0, sizeof(v9));
  lhs = *a2;
  v7 = *(a1 + 4);
  CMTimeSubtract(&v9, &lhs, &v7);
  lhs = **&MEMORY[0x1E6960CC0];
  v7 = v9;
  if (CMTimeCompare(&lhs, &v7) < 0)
  {
    lhs = v9;
    v7 = *(a1 + 28);
    v5 = CMTimeDivide() + 1;
  }

  else
  {
    v5 = 1;
  }

  *a3 = 0;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  lhs = *(a1 + 28);
  return CMTimeMultiply(a3, &lhs, v5);
}

BOOL asbs_SampleDurationIsCuriouslyShortOfItsExpectedDuration(CMTime *a1, __int128 *a2)
{
  memset(&v6, 0, sizeof(v6));
  v3 = *(a2 + 2);
  time = *a1;
  CMTimeConvertScale(&v6, &time, v3, kCMTimeRoundingMethod_RoundTowardZero);
  memset(&time, 0, sizeof(time));
  return !CMTimeDivide() && (time.flags & 0x1D) == 1 && time.value / *a2 >= 0.96;
}

uint64_t OUTLINED_FUNCTION_0_200()
{
  *(v0 - 256) = *(v0 - 144);
  *(v0 - 240) = *(v0 - 128);
  return v0 - 224;
}

__n128 OUTLINED_FUNCTION_1_181()
{
  result = *v0;
  *(v1 - 208) = v0[1].n128_u64[0];
  *(v1 - 224) = result;
  return result;
}

__n128 OUTLINED_FUNCTION_5_126()
{
  result = *(v0 - 224);
  *(v0 - 256) = result;
  *(v0 - 240) = *(v0 - 208);
  return result;
}

__n128 OUTLINED_FUNCTION_10_74()
{
  result = *(v0 - 144);
  *(v0 - 224) = result;
  *(v0 - 208) = *(v0 - 128);
  return result;
}

__n128 OUTLINED_FUNCTION_11_71(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __n128 a39, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, __n128 a40, uint64_t a41)
{
  result = a40;
  *(v41 - 224) = a40;
  *(v41 - 208) = a41;
  return result;
}

__n128 OUTLINED_FUNCTION_13_54()
{
  result = *(v0 + 52);
  *(v1 - 224) = result;
  *(v1 - 208) = *(v0 + 68);
  return result;
}

__n128 OUTLINED_FUNCTION_15_55()
{
  result = *(v1 - 144);
  *(v0 + 52) = result;
  *(v0 + 68) = *(v1 - 128);
  return result;
}

__n128 OUTLINED_FUNCTION_16_52()
{
  result = *(v0 - 224);
  *(v0 - 144) = result;
  *(v0 - 128) = *(v0 - 208);
  return result;
}

void OUTLINED_FUNCTION_17_46()
{

  CFArrayAppendValue(v0, v1);
}

uint64_t __FigBufferedAirPlayOutputProxyCreateFactory_block_invoke(uint64_t a1)
{
  qword_1ED4CBAC8 = CFDictionaryCreateMutable(*(a1 + 32), 0, 0, MEMORY[0x1E695E9E8]);
  result = FigSimpleMutexCreate();
  qword_1ED4CBAD0 = result;
  return result;
}

uint64_t RegisterFigStaticMetadataSupplierType(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  CMBaseGetClassID();

  return FigBaseClassRegisterClass();
}

uint64_t FigStaticMetadataSupplierGetTypeID()
{
  MEMORY[0x19A8D3660](&FigStaticMetadataSupplierGetClassID_sRegisterFigStaticMetadataSupplierTypeOnce, RegisterFigStaticMetadataSupplierType);

  return CMBaseClassGetCFTypeID();
}

uint64_t FigStartMonitoringNetworkActivity()
{
  v0 = +[CMNetworkActivityMonitor sharedActivityMonitor];

  return [v0 beginMonitoring];
}

uint64_t RegisterFigVirtualDisplaySinkType(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  CMBaseGetClassID();

  return FigBaseClassRegisterClass();
}

uint64_t FigVirtualDisplaySinkGetTypeID()
{
  MEMORY[0x19A8D3660](&FigVirtualDisplaySinkGetClassID_sRegisterFigVirtualDisplaySinkTypeOnce, RegisterFigVirtualDisplaySinkType);

  return CMBaseClassGetCFTypeID();
}

uint64_t FigVirtualDisplaySinkFileWriterCreate(uint64_t a1, CFTypeRef *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  FigVirtualDisplaySinkGetClassID();
  v3 = CMDerivedObjectCreate();
  if (v3)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  else
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    v5 = MEMORY[0x1E6960C70];
    *(DerivedStorage + 28) = *MEMORY[0x1E6960C70];
    *(DerivedStorage + 44) = *(v5 + 16);
    v6 = *MEMORY[0x1E695F060];
    *(DerivedStorage + 80) = *MEMORY[0x1E695F060];
    *(DerivedStorage + 96) = v6;
    *(DerivedStorage + 112) = FVDUtilsCreateDisplayUUID();
    *a2 = 0;
  }

  return v3;
}

uint64_t fileWriterSink_Invalidate(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!*DerivedStorage)
  {
    *DerivedStorage = 1;
  }

  return 0;
}

void fileWriterSink_Finalize(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v2 = CMBaseObjectGetDerivedStorage();
  if (!*v2)
  {
    *v2 = 1;
  }

  v3 = DerivedStorage[7];
  if (v3)
  {
    CFRelease(v3);
    DerivedStorage[7] = 0;
  }

  v4 = DerivedStorage[2];
  if (v4)
  {
    CFRelease(v4);
    DerivedStorage[2] = 0;
  }

  v5 = DerivedStorage[14];
  if (v5)
  {
    CFRelease(v5);
    DerivedStorage[14] = 0;
  }

  v6 = DerivedStorage[8];
  if (v6)
  {
    dispatch_release(v6);
    DerivedStorage[8] = 0;
  }

  v7 = DerivedStorage[9];
  if (v7)
  {
    _Block_release(v7);
    DerivedStorage[9] = 0;
  }

  v8 = DerivedStorage[1];
  if (v8)
  {
    CFRelease(v8);
    DerivedStorage[1] = 0;
  }
}

__CFString *fileWriterSink_CopyDebugDesc(const void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v3 = CFGetAllocator(a1);
  Mutable = CFStringCreateMutable(v3, 0);
  v5 = CFGetRetainCount(a1);
  if (*DerivedStorage)
  {
    v6 = " (invalidated)";
  }

  else
  {
    v6 = "";
  }

  v7 = CFGetAllocator(a1);
  CFStringAppendFormat(Mutable, 0, @"<FigVirtualDisplaySink %p retainCount: %ld%s allocator: %p, ", a1, v5, v6, v7);
  CFStringAppendFormat(Mutable, 0, @">");
  return Mutable;
}

uint64_t fileWriterSink_CopyProperty(uint64_t a1, const void *a2, uint64_t a3, __CFDictionary **a4)
{
  value[16] = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*DerivedStorage)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    return 4294954511;
  }

  else if (CFEqual(@"Type", a2))
  {
    v7 = CFRetain(@"FileWriter");
    result = 0;
    *a4 = v7;
  }

  else
  {
    v10 = *MEMORY[0x1E695F060];
    v9 = *(MEMORY[0x1E695F060] + 8);
    v11 = *MEMORY[0x1E695F060] == *(DerivedStorage + 80);
    v12 = v9 == *(DerivedStorage + 88);
    if (v11 && v12)
    {
      v13 = 720.0;
    }

    else
    {
      v13 = *(DerivedStorage + 88);
    }

    if (v11 && v12)
    {
      v14 = 1280.0;
    }

    else
    {
      v14 = *(DerivedStorage + 80);
    }

    if (fileWriterSink_getPreferredVirtualDisplaySize_sCheckPrefsOnce != -1)
    {
      fileWriterSink_CopyProperty_cold_1();
    }

    if (v10 != *&fileWriterSink_getPreferredVirtualDisplaySize_prefScreenSize_0 || v9 != *&fileWriterSink_getPreferredVirtualDisplaySize_prefScreenSize_1)
    {
      v13 = *&fileWriterSink_getPreferredVirtualDisplaySize_prefScreenSize_1;
      v14 = *&fileWriterSink_getPreferredVirtualDisplaySize_prefScreenSize_0;
    }

    if (CFEqual(a2, @"deviceInfo"))
    {
      Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      v28.width = v14;
      v28.height = v13;
      DictionaryRepresentation = CGSizeCreateDictionaryRepresentation(v28);
      CFDictionarySetValue(Mutable, @"displaySizeInPixels", DictionaryRepresentation);
      CFDictionarySetValue(Mutable, @"overscanned", *MEMORY[0x1E695E4C0]);
      if (DictionaryRepresentation)
      {
        CFRelease(DictionaryRepresentation);
      }

      result = 0;
      *a4 = Mutable;
    }

    else if (CFEqual(a2, @"displayInfo"))
    {
      value[0] = 0;
      cf = 0;
      *v26 = 0;
      v24 = 0;
      v17 = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      BooleanWithDefault = FigVirtualDisplayPrefsGetBooleanWithDefault(@"file_mirroring_supports_rotation", 0);
      v19 = *(DerivedStorage + 120);
      if (v19)
      {
        v20 = CFDictionaryGetValue(v19, @"HDRMode");
        FigDisplayModes_BuildColorAndTimingModes(v14, v13, 0, *(DerivedStorage + 128), 0x64u, 0, 0, 0, &v24);
        FigDisplayModes_BuildColorModesFromHDRMode(v20, *(DerivedStorage + 120), 0, 0x64u, &cf);
      }

      else
      {
        FigDisplayModes_BuildColorAndTimingModes(v14, v13, 0, *(DerivedStorage + 128), 0x64u, 0, 0, &cf, &v24);
      }

      if (cf)
      {
        if (v24)
        {
          FigDisplayModes_CreateColorAndTimingModesArraysWithPreferredMode(cf, v24, value, v26);
          if (value[0])
          {
            if (*v26)
            {
              CFDictionarySetValue(v17, @"colorModes", value[0]);
              CFDictionarySetValue(v17, @"timingModes", *v26);
            }
          }
        }
      }

      v21 = MEMORY[0x1E695E4C0];
      if (BooleanWithDefault)
      {
        v21 = MEMORY[0x1E695E4D0];
      }

      CFDictionarySetValue(v17, @"rotationSupport", *v21);
      v22 = *(DerivedStorage + 112);
      if (v22)
      {
        CFDictionarySetValue(v17, @"displayUUID", v22);
      }

      if (v10 != *(DerivedStorage + 96) || v9 != *(DerivedStorage + 104))
      {
        FigCFDictionarySetCGSize();
      }

      if (cf)
      {
        CFRelease(cf);
      }

      if (v24)
      {
        CFRelease(v24);
      }

      if (value[0])
      {
        CFRelease(value[0]);
      }

      if (*v26)
      {
        CFRelease(*v26);
      }

      result = 0;
      *a4 = v17;
    }

    else
    {
      return 4294954512;
    }
  }

  return result;
}

void fileWriterSink_SetProperty(unint64_t a1, const void *a2, const __CFString *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*DerivedStorage)
  {
    emitter = fig_log_get_emitter();

    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 4294954511, "<<<< FigVirtualDisplaySinkFileWriter >>>>", 423, v3);
  }

  else
  {
    v9 = DerivedStorage;
    if (CFEqual(@"Destination", a2))
    {
      if (a3)
      {
        v10 = CFGetTypeID(a3);
        if (v10 == CFStringGetTypeID())
        {
          v11 = *(v9 + 7);
          *(v9 + 7) = a3;
          CFRetain(a3);
          if (v11)
          {
            CFRelease(v11);
          }
        }
      }
    }

    else if (CFEqual(@"deviceInfo", a2))
    {
      if (a3)
      {
        v12 = CFGetTypeID(a3);
        if (v12 == CFDictionaryGetTypeID())
        {
          Value = CFDictionaryGetValue(a3, @"displaySizeInPixels");
          if (Value)
          {
            v14 = MEMORY[0x1E695F060];
            v17 = *MEMORY[0x1E695F060];
            CGSizeMakeWithDictionaryRepresentation(Value, &v17);
            if (v17.width != *v14 || v17.height != v14[1])
            {
              *(v9 + 5) = v17;
            }
          }

          FigCFDictionaryGetCGSizeIfPresent();
        }
      }
    }

    else if (CFEqual(@"LogPrefix", a2))
    {
      if (a3)
      {
        v16 = CFGetTypeID(a3);
        if (v16 == CFStringGetTypeID() && !*(v9 + 1))
        {
          *(v9 + 1) = FVDUtilsCreateLogPrefix(a3, a1);
        }
      }
    }

    else if (!CFEqual(@"fps", a2) && !CFEqual(@"fpsInfo", a2) && !CFEqual(@"timestamps", a2) && !CFEqual(@"timestampInfo", a2) && !CFEqual(@"useEncryption", a2) && !CFEqual(@"submitSurfaceTimestamp", a2))
    {
      CFEqual(@"extraInfo", a2);
    }
  }
}

void __fileWriterSink_getPreferredVirtualDisplaySize_block_invoke(__n128 a1)
{
  v1 = FigVirtualDisplayPrefsCopyValue(@"file_mirroring_resolution");
  if (v1)
  {
    v2 = v1;
    v3 = CFGetTypeID(v1);
    IntValue = 0.0;
    if (v3 == CFArrayGetTypeID())
    {
      v5 = 0.0;
      if (CFArrayGetCount(v2) >= 2)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v2, 0);
        if (ValueAtIndex)
        {
          v7 = ValueAtIndex;
          v8 = CFGetTypeID(ValueAtIndex);
          if (v8 == CFStringGetTypeID())
          {
            IntValue = CFStringGetIntValue(v7);
          }
        }

        v9 = CFArrayGetValueAtIndex(v2, 1);
        if (v9)
        {
          v10 = v9;
          v11 = CFGetTypeID(v9);
          if (v11 == CFStringGetTypeID())
          {
            v5 = CFStringGetIntValue(v10);
          }
        }
      }
    }

    else
    {
      v5 = 0.0;
    }

    CFRelease(v2);
    if (IntValue > 0.0 && v5 > 0.0)
    {
      if (IntValue <= v5)
      {
        *&v12 = v5;
      }

      else
      {
        *&v12 = IntValue;
      }

      fileWriterSink_getPreferredVirtualDisplaySize_prefScreenSize_0 = v12;
      if (IntValue >= v5)
      {
        *&v13 = v5;
      }

      else
      {
        *&v13 = IntValue;
      }

      fileWriterSink_getPreferredVirtualDisplaySize_prefScreenSize_1 = v13;
    }
  }
}

uint64_t fileWriterSink_Start(uint64_t a1, const __CFDictionary *a2, uint64_t a3)
{
  v47 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigCFDictionaryGetDoubleIfPresent();
  FigVirtualDisplayPrefsGetDoubleWithDefault(@"file_mirroring_moof_interval");
  v40 = v6;
  v7 = *MEMORY[0x1E695E480];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (!Mutable)
  {
    v44 = 0;
    type[0] = OS_LOG_TYPE_DEFAULT;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    v24 = 4294954510;
    if (a3)
    {
      goto LABEL_33;
    }

    return v24;
  }

  v9 = Mutable;
  CFDictionaryAddValue(Mutable, @"AssetWriter_RealTime", *MEMORY[0x1E695E4D0]);
  HasPrefix = CFStringHasPrefix(*(DerivedStorage + 56), @"file://");
  v11 = *(DerivedStorage + 56);
  if (HasPrefix)
  {
    v12 = CFURLCreateWithString(v7, v11, 0);
  }

  else
  {
    v12 = CFURLCreateWithFileSystemPath(v7, v11, kCFURLPOSIXPathStyle, 0);
  }

  v13 = v12;
  if (!v12)
  {
    v44 = 0;
    type[0] = OS_LOG_TYPE_DEFAULT;
    v29 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    v24 = 4294954510;
    goto LABEL_32;
  }

  memset(&v45, 0, sizeof(v45));
  if (!CFURLGetFileSystemRepresentation(v12, 1u, buffer, 1024))
  {
    v42 = 0;
    v41 = OS_LOG_TYPE_DEFAULT;
    v30 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT);
    v37 = a3;
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    v24 = 4294954516;
LABEL_38:
    v44 = 0;
    type[0] = OS_LOG_TYPE_DEFAULT;
    v35 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    a3 = v37;
    goto LABEL_31;
  }

  if (!stat(buffer, &v45))
  {
    if (removefile(buffer, 0, 0))
    {
      v37 = a3;
      v42 = 0;
      v41 = OS_LOG_TYPE_DEFAULT;
      v34 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
      v24 = *__error();
      if (v24)
      {
        goto LABEL_38;
      }
    }
  }

  v14 = MEMORY[0x1E6960C70];
  *(DerivedStorage + 28) = *MEMORY[0x1E6960C70];
  *(DerivedStorage + 44) = *(v14 + 16);
  Current = CFRunLoopGetCurrent();
  v16 = FigAssetWriterCreateWithURL(v7, v13, Current, v9, 0, (DerivedStorage + 16));
  if (!v16)
  {
    if (v40 <= 0.49)
    {
      goto LABEL_15;
    }

    CMTimeMakeWithSeconds(buffer, v40, 1000);
    v17 = CMTimeCopyAsDictionary(buffer, v7);
    v18 = *(DerivedStorage + 16);
    v19 = *(*(CMBaseObjectGetVTable() + 16) + 56);
    if (v19)
    {
      if (!v19(v18, @"MovieFragmentCheckpointInterval", v17))
      {
        if (v17)
        {
LABEL_14:
          CFRelease(v17);
        }

LABEL_15:
        v20 = *(DerivedStorage + 16);
        v21 = *(*(CMBaseObjectGetVTable() + 16) + 8);
        if (v21)
        {
          v22 = v21(v20, 1986618469, DerivedStorage + 24);
          if (!v22)
          {
            *(DerivedStorage + 128) = 60;
            FigCFDictionaryGetInt32IfPresent();
            if (a2)
            {
              Value = CFDictionaryGetValue(a2, @"HDRInfo");
              *(DerivedStorage + 120) = Value;
              if (Value)
              {
                CFRetain(Value);
              }
            }

            v24 = 0;
            goto LABEL_31;
          }

          v24 = v22;
          v25 = a3;
        }

        else
        {
          v25 = a3;
          v24 = 4294954514;
        }

        v44 = 0;
        type[0] = OS_LOG_TYPE_DEFAULT;
        v26 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT);
        goto LABEL_30;
      }

      v36 = a3;
    }

    else
    {
      v36 = a3;
    }

    v44 = 0;
    type[0] = OS_LOG_TYPE_DEFAULT;
    v27 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    a3 = v36;
    if (!v17)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

  v24 = v16;
  v25 = a3;
  v44 = 0;
  type[0] = OS_LOG_TYPE_DEFAULT;
  v31 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
  os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT);
LABEL_30:
  fig_log_call_emit_and_clean_up_after_send_and_compose();
  a3 = v25;
LABEL_31:
  CFRelease(v13);
LABEL_32:
  CFRelease(v9);
  if (a3)
  {
LABEL_33:
    v32 = *(DerivedStorage + 64);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 0x40000000;
    block[2] = __fileWriterSink_Start_block_invoke;
    block[3] = &unk_1E7496120;
    block[4] = a3;
    v39 = v24;
    dispatch_async(v32, block);
  }

  return v24;
}

uint64_t fileWriterSink_Stop(uint64_t a1, uint64_t a2)
{
  v19 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v4 = DerivedStorage;
  v5 = *(DerivedStorage + 16);
  if (!v5)
  {
    goto LABEL_12;
  }

  v6 = *(DerivedStorage + 24);
  v7 = *(*(CMBaseObjectGetVTable() + 16) + 104);
  if (!v7 || v7(v5, v6))
  {
    v18 = 0;
    type = OS_LOG_TYPE_DEFAULT;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v9 = v4[2];
  v10 = *(*(CMBaseObjectGetVTable() + 16) + 120);
  if (v10)
  {
    v5 = v10(v9);
    if (!v5)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v5 = 4294954514;
  }

  v18 = 0;
  type = OS_LOG_TYPE_DEFAULT;
  v11 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
  os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);
  fig_log_call_emit_and_clean_up_after_send_and_compose();
LABEL_10:
  v12 = v4[2];
  if (v12)
  {
    CFRelease(v12);
    v4[2] = 0;
  }

LABEL_12:
  v13 = v4[15];
  if (v13)
  {
    CFRelease(v13);
    v4[15] = 0;
  }

  if (a2)
  {
    v14 = v4[8];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 0x40000000;
    block[2] = __fileWriterSink_Stop_block_invoke;
    block[3] = &unk_1E7496148;
    block[4] = a2;
    dispatch_async(v14, block);
  }

  return v5;
}

void fileWriterSink_PushFrame(uint64_t a1, opaqueCMSampleBuffer *a2)
{
  values[3] = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!*DerivedStorage)
  {
    v6 = DerivedStorage;
    v8 = *(DerivedStorage + 8);
    v7 = *(DerivedStorage + 16);
    if (!v7)
    {
      LODWORD(values[0]) = 0;
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
      return;
    }

    if (*(DerivedStorage + 40))
    {
      goto LABEL_20;
    }

    v54 = *(DerivedStorage + 8);
    v50 = a2;
    CMSampleBufferGetPresentationTimeStamp(&time, a2);
    *(v6 + 28) = time;
    *&type.value = *(v6 + 28);
    type.epoch = *(v6 + 44);
    v9 = *MEMORY[0x1E695E480];
    v10 = MEMORY[0x1E695E9D8];
    v11 = MEMORY[0x1E695E9E8];
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    v13 = CFDictionaryCreateMutable(v9, 0, v10, v11);
    v14 = CFDictionaryCreateMutable(v9, 0, v10, v11);
    values[0] = Mutable;
    values[1] = v13;
    values[2] = v14;
    v15 = CFArrayCreate(v9, values, 3, MEMORY[0x1E695E9C0]);
    v16 = getprogname();
    if (v16)
    {
      v17 = CFStringCreateWithCString(v9, v16, 0x8000100u);
    }

    else
    {
      v17 = CFRetain(@"???");
    }

    v56 = v17;
    value = CFLocaleCopyCurrent();
    v18 = CFTimeZoneCopySystem();
    Current = CFAbsoluteTimeGetCurrent();
    v20 = Current + FigGetUpTimeNanoseconds() / -1000000000.0;
    time = type;
    v21 = v20 + CMTimeGetSeconds(&time);
    v53 = v15;
    if (v18)
    {
      SecondsFromGMT = CFTimeZoneGetSecondsFromGMT(v18, Current);
      v49 = MEMORY[0x19A8CD7D0](v18);
      v23 = CFStringCreateWithFormat(v9, 0, @"%f %d %@", *&v21, SecondsFromGMT, v49);
    }

    else
    {
      v23 = CFStringCreateWithFormat(v9, 0, @"%f", *&v21);
    }

    v24 = v23;
    theDict = CFDictionaryCreateMutable(v9, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    v51 = CFArrayCreate(v9, &theDict, 1, MEMORY[0x1E695E9C0]);
    CFDictionarySetValue(Mutable, @"keyspace", @"mdta");
    CFDictionarySetValue(Mutable, @"key", @"com.apple.quicktime.information");
    CFDictionarySetValue(Mutable, @"value", @"Created by FVDFileWriter");
    v52 = Mutable;
    CFDictionarySetValue(Mutable, @"locale", value);
    CFDictionarySetValue(v13, @"keyspace", @"mdta");
    CFDictionarySetValue(v13, @"key", @"com.apple.quicktime.software");
    CFDictionarySetValue(v13, @"value", v56);
    CFDictionarySetValue(v13, @"locale", value);
    CFDictionarySetValue(v14, @"keyspace", @"mdta");
    CFDictionarySetValue(v14, @"key", @"com.apple.quicktime.comment");
    CFDictionarySetValue(v14, @"value", v24);
    CFDictionarySetValue(v14, @"locale", value);
    CFDictionarySetValue(theDict, @"items", v53);
    CFDictionarySetValue(theDict, @"format", @"com.apple.quicktime.mdta");
    FigAssetWriterGetFigBaseObject();
    v26 = v25;
    v27 = *(*(CMBaseObjectGetVTable() + 8) + 56);
    if (v27)
    {
      v28 = v26;
      v29 = v51;
      v30 = v18;
      if (!v27(v28, @"AssetWriter_Metadata", v51))
      {
        if (!v18)
        {
          goto LABEL_17;
        }

        goto LABEL_16;
      }
    }

    else
    {
      v30 = v18;
    }

    v41 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    v29 = v51;
    if (!v30)
    {
LABEL_17:
      CFRelease(v52);
      CFRelease(v13);
      CFRelease(v14);
      CFRelease(v53);
      CFRelease(v56);
      CFRelease(v24);
      CFRelease(value);
      CFRelease(theDict);
      CFRelease(v29);
      v31 = *(v6 + 16);
      v59 = *(v6 + 28);
      v32 = *(*(CMBaseObjectGetVTable() + 16) + 72);
      if (v32)
      {
        time = v59;
        v33 = v32(v31, &time);
        v8 = v54;
        if (!v33)
        {
          v7 = *(v6 + 16);
          a2 = v50;
LABEL_20:
          v34 = *(v6 + 24);
          v35 = *(*(CMBaseObjectGetVTable() + 16) + 80);
          if (v35)
          {
            v36 = v35(v7, v34, a2);
            if (!v36)
            {
              return;
            }
          }

          else
          {
            v36 = -12782;
          }

          LODWORD(values[0]) = 0;
          v37 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          v38 = values[0];
          if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
          {
            v39 = v38;
          }

          else
          {
            v39 = v38 & 0xFFFFFFFE;
          }

          if (v39)
          {
            v40 = &stru_1F0B1AFB8;
            LODWORD(v59.value) = 138413058;
            if (v8)
            {
              v40 = v8;
            }

            *(&v59.value + 4) = v40;
            LOWORD(v59.flags) = 2080;
            *(&v59.flags + 2) = "fileWriterSink_PushFrame";
            HIWORD(v59.epoch) = 1024;
            v60 = 597;
            v61 = 1024;
            v62 = v36;
            LODWORD(v48) = 34;
            _os_log_send_and_compose_impl(v39, 0, &time, 128, &dword_1962D5000, v37, 0, "<<<< FigVirtualDisplaySinkFileWriter >>>>%@ %s: %d: got error %d", &v59, v48);
          }

          goto LABEL_41;
        }

        v42 = v33;
      }

      else
      {
        v42 = -12782;
        v8 = v54;
      }

      LODWORD(values[0]) = 0;
      v43 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v44 = values[0];
      if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
      {
        v45 = v44;
      }

      else
      {
        v45 = v44 & 0xFFFFFFFE;
      }

      if (v45)
      {
        v46 = &stru_1F0B1AFB8;
        LODWORD(v59.value) = 138413058;
        if (v8)
        {
          v46 = v8;
        }

        *(&v59.value + 4) = v46;
        LOWORD(v59.flags) = 2080;
        *(&v59.flags + 2) = "fileWriterSink_PushFrame";
        HIWORD(v59.epoch) = 1024;
        v60 = 590;
        v61 = 1024;
        v62 = v42;
        LODWORD(v48) = 34;
        _os_log_send_and_compose_impl(v45, 0, &time, 128, &dword_1962D5000, v43, 0, "<<<< FigVirtualDisplaySinkFileWriter >>>>%@ %s: %d: got error %d", &v59, v48);
      }

LABEL_41:
      fig_log_call_emit_and_clean_up_after_send_and_compose();
      return;
    }

LABEL_16:
    CFRelease(v30);
    goto LABEL_17;
  }

  emitter = fig_log_get_emitter();

  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 4294954511, "<<<< FigVirtualDisplaySinkFileWriter >>>>", 580, v2);
}

uint64_t fileWriterSink_GetPropertyAsync(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigVirtualDisplaySinkGetCMBaseObject();
  v8 = v7;
  v9 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v9)
  {
    v10 = v9(v8, a2, *MEMORY[0x1E695E480], &v15);
    v9 = v15;
  }

  else
  {
    v10 = 4294954514;
  }

  v11 = *(DerivedStorage + 64);
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 0x40000000;
  v13[2] = __fileWriterSink_GetPropertyAsync_block_invoke;
  v13[3] = &unk_1E7496170;
  v14 = v10;
  v13[4] = a4;
  v13[5] = v9;
  dispatch_async(v11, v13);
  return v10;
}

uint64_t fileWriterSink_SetDispatchQueue(uint64_t a1, NSObject *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!a2)
  {
    a2 = MEMORY[0x1E69E96A0];
  }

  dispatch_retain(a2);
  v4 = *(DerivedStorage + 64);
  if (v4)
  {
    dispatch_release(v4);
  }

  *(DerivedStorage + 64) = a2;
  return 0;
}

uint64_t fileWriterSink_SetEventHandler(uint64_t a1, const void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v4 = _Block_copy(a2);
  v5 = *(DerivedStorage + 72);
  if (v5)
  {
    _Block_release(v5);
  }

  *(DerivedStorage + 72) = v4;
  return 0;
}

uint64_t WebVTTGetSamplePTS(uint64_t a1, CMTime *a2)
{
  if (a1)
  {
    CMTimeMakeWithSeconds(&v4, *(a1 + 32) + dbl_196E7B810[*(a1 + 32) < 0.0], 90000);
    result = 0;
    *a2 = v4;
  }

  else
  {
    WebVTTGetSamplePTS_cold_1(&v4);
    return LODWORD(v4.value);
  }

  return result;
}

BOOL WebVTTBufferLooksLikeWebVTTFile(char *__s1, unint64_t a2)
{
  if (a2 < 3)
  {
    return 0;
  }

  v3 = __s1;
  if (*__s1 == 239 && __s1[1] == 187 && __s1[2] == 191)
  {
    v3 = __s1 + 3;
    a2 -= 3;
  }

  if (a2 < 7 || strncmp(v3, "WEBVTT", 6uLL))
  {
    return 0;
  }

  v4 = v3[6];
  if ((v4 & 0x80000000) == 0)
  {
    return (*(MEMORY[0x1E69E9830] + 4 * v4 + 60) & 0x4000) != 0;
  }

  return __maskrune(v4, 0x4000uLL) != 0;
}

double FigWebVTTReadTime(unsigned __int8 **a1, unint64_t *a2, double *a3, int a4, char *a5)
{
  v6 = *a2;
  if (*a2 <= 4)
  {
    FigWebVTTReadTime_cold_5(&v35);
    return result;
  }

  v10 = 0;
  v11 = *a1;
  *a3 = 0.0;
  v12 = 0.0;
  while ((*(v11 + v10) - 48) <= 9)
  {
    v13 = v12 * 10.0;
    *a3 = v13;
    v12 = v13 + (*(v11 + v10) - 48);
    *a3 = v12;
    if (v6 == ++v10)
    {
      goto LABEL_5;
    }
  }

  v15 = v6 - v10 - 3;
  if ((v6 - v10) < 3 || *(v11 + v10) != 58)
  {
    goto LABEL_5;
  }

  v16 = *(v11 + v10 + 1);
  if ((v16 & 0x80000000) != 0)
  {
    if (!__maskrune(v16, 0x400uLL))
    {
      goto LABEL_5;
    }
  }

  else if ((*(MEMORY[0x1E69E9830] + 4 * v16 + 60) & 0x400) == 0)
  {
    goto LABEL_5;
  }

  v17 = *(v11 + v10 + 2);
  if ((v17 & 0x80000000) != 0)
  {
    if (__maskrune(v17, 0x400uLL))
    {
      goto LABEL_16;
    }

LABEL_5:
    FigWebVTTReadTime_cold_4(&v35);
    return result;
  }

  if ((*(MEMORY[0x1E69E9830] + 4 * v17 + 60) & 0x400) == 0)
  {
    goto LABEL_5;
  }

LABEL_16:
  v18 = *a3 * 60.0;
  *a3 = v18;
  result = v18 + (*(v11 + v10 + 2) + 10 * *(v11 + v10 + 1) - 528);
  *a3 = result;
  v19 = (v11 + v10 + 3);
  if (v6 - 3 == v10)
  {
    v15 = 0;
LABEL_61:
    *a1 = v19;
    *a2 = v15;
    return result;
  }

  if (*v19 == 58)
  {
    if (v15 >= 3)
    {
      v20 = *(v11 + v10 + 4);
      if ((v20 & 0x80000000) != 0)
      {
        if (!__maskrune(v20, 0x400uLL))
        {
          goto LABEL_34;
        }
      }

      else if ((*(MEMORY[0x1E69E9830] + 4 * v20 + 60) & 0x400) == 0)
      {
        goto LABEL_34;
      }

      v21 = *(v11 + v10 + 5);
      if ((v21 & 0x80000000) != 0)
      {
        if (__maskrune(v21, 0x400uLL))
        {
          goto LABEL_27;
        }
      }

      else if ((*(MEMORY[0x1E69E9830] + 4 * v21 + 60) & 0x400) != 0)
      {
LABEL_27:
        v22 = *a3 * 60.0;
        *a3 = v22;
        result = v22 + (*(v11 + v10 + 5) + 10 * *(v11 + v10 + 4) - 528);
        *a3 = result;
        v19 = (v11 + v10 + 6);
        v15 = v6 - v10 - 6;
        goto LABEL_28;
      }
    }

LABEL_34:
    FigWebVTTReadTime_cold_3(&v35);
    return result;
  }

  if (v10 != 2)
  {
    FigWebVTTReadTime_cold_1(&v35);
    return result;
  }

LABEL_28:
  if (v15 >= 4 && *v19 == 46)
  {
    v23 = v19[1];
    if ((v23 & 0x80000000) != 0)
    {
      if (!__maskrune(v23, 0x400uLL))
      {
        goto LABEL_66;
      }
    }

    else if ((*(MEMORY[0x1E69E9830] + 4 * v23 + 60) & 0x400) == 0)
    {
      goto LABEL_66;
    }

    v24 = v19[2];
    if ((v24 & 0x80000000) != 0)
    {
      if (!__maskrune(v24, 0x400uLL))
      {
        goto LABEL_66;
      }
    }

    else if ((*(MEMORY[0x1E69E9830] + 4 * v24 + 60) & 0x400) == 0)
    {
      goto LABEL_66;
    }

    v25 = v19[3];
    if ((v25 & 0x80000000) != 0)
    {
      if (__maskrune(v25, 0x400uLL))
      {
        goto LABEL_42;
      }
    }

    else if ((*(MEMORY[0x1E69E9830] + 4 * v25 + 60) & 0x400) != 0)
    {
LABEL_42:
      result = *a3 + (10 * v19[2] + 100 * v19[1] + v19[3] - 5328) / 1000.0;
      *a3 = result;
      v19 += 4;
      v15 -= 4;
      goto LABEL_43;
    }

LABEL_66:
    FigWebVTTReadTime_cold_2(&v35);
    return result;
  }

LABEL_43:
  if (!a4 || !v15)
  {
    if (!v15)
    {
      v27 = 0;
      v28 = a5;
LABEL_59:
      if (v28)
      {
        *v28 = v27;
      }

      goto LABEL_61;
    }

    goto LABEL_51;
  }

  v26 = *v19;
  if ((v26 & 0x80000000) == 0)
  {
    if ((*(MEMORY[0x1E69E9830] + 4 * v26 + 60) & 0x4000) == 0)
    {
      goto LABEL_62;
    }

    goto LABEL_51;
  }

  if (__maskrune(v26, 0x4000uLL))
  {
LABEL_51:
    v27 = 0;
    v29 = &v19[v15];
    v28 = a5;
    while (1)
    {
      v30 = *v19;
      if (v30 != 32 && v30 != 9)
      {
        goto LABEL_59;
      }

      ++v19;
      v27 = 1;
      if (!--v15)
      {
        v19 = v29;
        goto LABEL_59;
      }
    }
  }

LABEL_62:
  emitter = fig_log_get_emitter();

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 4294951286, "<WebVTTSamples>", 740, v5);
}

uint64_t webVTTDumpSample(uint64_t result)
{
  for (i = *(result + 16); i; i = *i)
  {
    dataPointerOut = 0;
    result = CMBlockBufferGetDataPointer(i[2], i[9], 0, 0, &dataPointerOut);
  }

  return result;
}

uint64_t WebVTTParserDestroy(void *a1)
{
  v2 = a1[5];
  if (v2)
  {
    CFRelease(v2);
    a1[5] = 0;
  }

  v3 = a1[7];
  if (v3)
  {
    CFRelease(v3);
    a1[7] = 0;
  }

  v4 = a1[4];
  if (v4)
  {
    CFRelease(v4);
    a1[4] = 0;
  }

  v5 = a1[8];
  if (v5)
  {
    CFRelease(v5);
    a1[8] = 0;
  }

  v6 = a1[17];
  if (v6)
  {
    CFRelease(v6);
    a1[17] = 0;
  }

  for (i = a1[9]; i; i = a1[9])
  {
    v8 = *i;
    v9 = i[1];
    v10 = (*i + 8);
    if (!*i)
    {
      v10 = a1 + 10;
    }

    *v10 = v9;
    *v9 = v8;
    webVTTFreeSample(i);
  }

  free(a1);
  return 0;
}

void webVTTFreeSample(void *a1)
{
  if (a1)
  {
    for (i = a1[2]; i; i = a1[2])
    {
      v3 = *i;
      v4 = i[1];
      v5 = (*i + 8);
      if (!*i)
      {
        v5 = a1 + 3;
      }

      *v5 = v4;
      *v4 = v3;
      webVTTFreeCue(i);
    }

    free(a1);
  }
}

double WebVTTParserSetSampleBufferMediaType(uint64_t a1, int a2)
{
  if (a2 == 1935832172 || a2 == 1952807028)
  {
    *(a1 + 124) = a2;
  }

  else
  {
    emitter = fig_log_get_emitter();

    return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 4294954516, "<WebVTTSamples>", 1600, v2);
  }

  return result;
}

uint64_t WebVTTParserSetSourceLabel(uint64_t a1, const char *a2, int a3, const char *a4)
{
  theBuffer = 0;
  blockBufferOut = 0;
  if (!a2 && !a3 && !a4)
  {
    v8 = *(a1 + 136);
    if (v8)
    {
      CFRelease(v8);
      v9 = 0;
      v10 = 0;
      v11 = 0;
      v12 = 0;
      *(a1 + 136) = 0;
    }

    else
    {
      v9 = 0;
      v10 = 0;
      v11 = 0;
      v12 = 0;
    }

    goto LABEL_23;
  }

  totalLengthOut = 0;
  dataPointerOut = 0;
  v26 = 0;
  v13 = *MEMORY[0x1E695E480];
  v14 = CMBlockBufferCreateEmpty(*MEMORY[0x1E695E480], 0, 0, &blockBufferOut);
  if (v14 || a2 && (v20 = strlen(a2), v14 = webVTTAppendTextToBlockBuffer(a2, v20, blockBufferOut), v14))
  {
    v12 = v14;
    v11 = 0;
    v10 = 0;
    v9 = 0;
    goto LABEL_21;
  }

  if (!a3)
  {
    v11 = 0;
    v10 = 0;
    v9 = 0;
    goto LABEL_10;
  }

  v11 = CFUUIDCreate(v13);
  if (!v11)
  {
    WebVTTParserSetSourceLabel_cold_4(&v31);
    v10 = 0;
LABEL_44:
    v9 = 0;
    goto LABEL_41;
  }

  v21 = CFUUIDCreateString(v13, v11);
  v10 = v21;
  if (!v21)
  {
    WebVTTParserSetSourceLabel_cold_3(&v31);
    goto LABEL_44;
  }

  Length = CFStringGetLength(v21);
  v9 = malloc_type_calloc(1uLL, Length + 1, 0x8B2A4551uLL);
  if (v9)
  {
    if (CFStringGetCString(v10, v9, Length + 1, 0x600u))
    {
      v23 = strlen(v9);
      v24 = webVTTAppendTextToBlockBuffer(v9, v23, blockBufferOut);
      if (v24)
      {
        v12 = v24;
        goto LABEL_23;
      }

LABEL_10:
      if (a4)
      {
        v25 = strlen(a4);
        DataPointer = webVTTAppendTextToBlockBuffer(a4, v25, blockBufferOut);
        if (DataPointer)
        {
          goto LABEL_39;
        }
      }

      if (CMBlockBufferIsRangeContiguous(blockBufferOut, 0, 0))
      {
        v15 = CFRetain(blockBufferOut);
        theBuffer = v15;
      }

      else
      {
        DataPointer = CMBlockBufferCreateContiguous(v13, blockBufferOut, v13, 0, 0, 0, 0, &theBuffer);
        if (DataPointer)
        {
          goto LABEL_39;
        }

        v15 = theBuffer;
      }

      DataPointer = CMBlockBufferGetDataPointer(v15, 0, &v26, &totalLengthOut, &dataPointerOut);
      if (!DataPointer)
      {
        v17 = totalLengthOut;
        if (totalLengthOut <= v26)
        {
          v18 = *(a1 + 136);
          if (v18)
          {
            CFRelease(v18);
            *(a1 + 136) = 0;
            v17 = totalLengthOut;
          }

          v12 = 0;
          *(a1 + 136) = CFDataCreate(v13, dataPointerOut, v17);
          goto LABEL_21;
        }

        WebVTTParserSetSourceLabel_cold_5(&v31);
        goto LABEL_41;
      }

LABEL_39:
      v12 = DataPointer;
      goto LABEL_21;
    }

    WebVTTParserSetSourceLabel_cold_1(&v31);
  }

  else
  {
    WebVTTParserSetSourceLabel_cold_2(&v31);
  }

LABEL_41:
  v12 = v31;
LABEL_21:
  if (theBuffer)
  {
    CFRelease(theBuffer);
  }

LABEL_23:
  if (blockBufferOut)
  {
    CFRelease(blockBufferOut);
  }

  if (v11)
  {
    CFRelease(v11);
  }

  if (v10)
  {
    CFRelease(v10);
  }

  free(v9);
  return v12;
}

uint64_t WebVTTParserCopyFormatDescription(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  if (v3)
  {
    v3 = CFRetain(v3);
  }

  *a2 = v3;
  return 0;
}

uint64_t WebVTTParserCreate(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  v10 = malloc_type_calloc(1uLL, 0x90uLL, 0x10E00407F763D59uLL);
  if (v10)
  {
    v11 = v10;
    result = 0;
    v11[9] = 0;
    v11[10] = v11 + 9;
    *(v11 + 120) = a4;
    *v11 = a1;
    v11[1] = a2;
    v11[2] = a3;
    *(v11 + 12) = 0;
    *(v11 + 124) = 0x777674747362746CLL;
    *a5 = v11;
  }

  else
  {
    WebVTTParserCreate_cold_1(&v13);
    return v13;
  }

  return result;
}

void webVTTStyleQueueFree(uint64_t a1)
{
  for (i = *a1; *a1; i = *a1)
  {
    v3 = *i;
    *a1 = *i;
    if (!v3)
    {
      *(a1 + 8) = a1;
    }

    webVTTSelectorClean((i + 1));
    v4 = i[5];
    if (v4)
    {
      CFRelease(v4);
    }

    free(i);
  }
}

uint64_t webVTTAddStyle(uint64_t a1, const __CFString *a2, const void *a3)
{
  v6 = malloc_type_calloc(1uLL, 0x38uLL, 0x1060040BA70D472uLL);
  if (v6)
  {
    v7 = v6;
    v8 = *MEMORY[0x1E6960C08];
    if (CFEqual(a2, *MEMORY[0x1E6960C08]))
    {
      v7[1] = CFRetain(v8);
      v7[2] = CFRetain(v8);
    }

    else
    {
      v9 = webVTTCreateSelectorFromString(a2, 0, v7 + 1);
      if (v9)
      {
        v11 = v9;
        free(v7);
        return v11;
      }
    }

    if (v7[4])
    {
      *(v7 + 12) = 1000;
    }

    v10 = v7[3];
    if (v10)
    {
      *(v7 + 12) += CFArrayGetCount(v10) + 10;
    }

    if (v7[2])
    {
      ++*(v7 + 12);
    }

    v11 = 0;
    v7[5] = CFRetain(a3);
    *v7 = 0;
    **(a1 + 8) = v7;
    *(a1 + 8) = v7;
  }

  else
  {
    webVTTAddStyle_cold_1(&v13);
    return v13;
  }

  return v11;
}

uint64_t webVTTAddGenericStylesToStyleList(void *a1)
{
  v2 = 0;
  values[4] = *MEMORY[0x1E69E9840];
  v3 = *MEMORY[0x1E69607D0];
  v37[0] = @"b";
  v37[1] = v3;
  v38 = *MEMORY[0x1E695E4D0];
  v39 = @"i";
  v40 = *MEMORY[0x1E69608A8];
  v41 = v38;
  v4 = *MEMORY[0x1E6960990];
  v42 = @"u";
  v43 = v4;
  v44 = v38;
  cf = 0;
  v5 = *MEMORY[0x1E695E480];
  v6 = MEMORY[0x1E695E9D8];
  v7 = MEMORY[0x1E695E9E8];
  while (1)
  {
    v8 = *a1;
    if (!*a1)
    {
      break;
    }

    while (v8[4] || v8[3] || !FigCFEqual())
    {
      v8 = *v8;
      if (!v8)
      {
        goto LABEL_7;
      }
    }

LABEL_9:
    if (++v2 == 3)
    {
      v13 = 0;
      v14 = *MEMORY[0x1E6960878];
      v36[0] = @".white";
      v36[1] = v14;
      v15 = 0xFF00FF00FF00FFLL;
      v36[2] = 0xFF00FF00FF00FFLL;
      v36[3] = @".lime";
      v36[4] = v14;
      v16 = 0xFF000000FF0000;
      v36[5] = 0xFF000000FF0000;
      v36[6] = @".cyan";
      v36[7] = v14;
      v17 = 0xFF00FF00FF0000;
      v36[8] = 0xFF00FF00FF0000;
      v36[9] = @".red";
      v36[10] = v14;
      v18 = 0xFF0000000000FFLL;
      v36[11] = 0xFF0000000000FFLL;
      v36[12] = @".yellow";
      v36[13] = v14;
      v36[14] = 0xFF000000FF00FFLL;
      v36[15] = @".magenta";
      v36[16] = v14;
      v36[17] = 0xFF00FF000000FFLL;
      v36[18] = @".blue";
      v36[19] = v14;
      v36[20] = 0xFF00FF00000000;
      v36[21] = @".black";
      v36[22] = v14;
      v36[23] = 0xFF000000000000;
      v19 = *MEMORY[0x1E6960810];
      v36[24] = @".bg_white";
      v36[25] = v19;
      v36[26] = 0xFF00FF00FF00FFLL;
      v36[27] = @".bg_lime";
      v36[28] = v19;
      v36[29] = 0xFF000000FF0000;
      v36[30] = @".bg_cyan";
      v36[31] = v19;
      v36[32] = 0xFF00FF00FF0000;
      v36[33] = @".bg_red";
      v36[34] = v19;
      v36[35] = 0xFF0000000000FFLL;
      v36[36] = @".bg_yellow";
      v36[37] = v19;
      v36[38] = 0xFF000000FF00FFLL;
      v36[39] = @".bg_magenta";
      v36[40] = v19;
      v36[41] = 0xFF00FF000000FFLL;
      v36[42] = @".bg_blue";
      v36[43] = v19;
      v36[44] = 0xFF00FF00000000;
      v36[45] = @".bg_black";
      v36[46] = v19;
      v36[47] = 0xFF000000000000;
      while (1)
      {
        v20 = *a1;
        if (*a1)
        {
          while (v20[4] || v20[2] || !FigCFEqual())
          {
            v20 = *v20;
            if (!v20)
            {
              goto LABEL_16;
            }
          }
        }

        else
        {
LABEL_16:
          v21 = &v36[3 * v13];
          LOWORD(v15) = *(v21 + 11);
          LOWORD(v16) = *(v21 + 8);
          LOWORD(v17) = *(v21 + 9);
          LOWORD(v18) = *(v21 + 10);
          v34 = v16 / *"";
          valuePtr = v15 / *"";
          v32 = v18 / *"";
          v33 = v17 / *"";
          v22 = CFNumberCreate(v5, kCFNumberCGFloatType, &valuePtr);
          v23 = CFNumberCreate(v5, kCFNumberCGFloatType, &v34);
          v24 = CFNumberCreate(v5, kCFNumberCGFloatType, &v33);
          v25 = CFNumberCreate(v5, kCFNumberCGFloatType, &v32);
          values[0] = v22;
          values[1] = v23;
          values[2] = v24;
          values[3] = v25;
          v26 = CFArrayCreate(v5, values, 4, MEMORY[0x1E695E9C0]);
          CFRelease(v22);
          CFRelease(v23);
          CFRelease(v24);
          CFRelease(v25);
          cf = v26;
          if (!v26 || (v27 = CFDictionaryCreate(v5, v21 + 1, &cf, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8])) == 0)
          {
            webVTTAddGenericStylesToStyleList_cold_1();
            v28 = 0;
            v12 = LODWORD(values[0]);
            goto LABEL_24;
          }

          v28 = v27;
          v29 = webVTTAddStyle(a1, *v21, v27);
          if (v29)
          {
            v12 = v29;
LABEL_24:
            if (cf)
            {
              CFRelease(cf);
            }

            if (v28)
            {
              CFRelease(v28);
            }

            return v12;
          }

          if (cf)
          {
            CFRelease(cf);
            cf = 0;
          }

          CFRelease(v28);
        }

        if (++v13 == 16)
        {
          v12 = 0;
          v28 = 0;
          goto LABEL_24;
        }
      }
    }
  }

LABEL_7:
  v9 = &v37[3 * v2];
  v10 = CFDictionaryCreate(v5, v9 + 1, v9 + 2, 1, v6, v7);
  if (!v10)
  {
    webVTTAddGenericStylesToStyleList_cold_2(v36);
    return LODWORD(v36[0]);
  }

  v11 = v10;
  v12 = webVTTAddStyle(a1, *v9, v10);
  CFRelease(v11);
  if (!v12)
  {
    goto LABEL_9;
  }

  return v12;
}

uint64_t webVTTFindNextCueSetting(uint64_t a1, uint64_t a2, unint64_t a3, unint64_t *a4, void *a5)
{
  if (a2 - 1 <= a3 || a2 == a3)
  {
    return 0;
  }

  while (1)
  {
    v6 = *(a1 + a3);
    if (v6 != 32 && v6 != 9)
    {
      break;
    }

    if (a2 == ++a3)
    {
      return 0;
    }
  }

  v8 = 0;
  v9 = a1 + a2;
  while (1)
  {
    v10 = *(a1 + v8 + a3);
    if (v10 == 9 || v10 == 32)
    {
      break;
    }

    if (a2 - a3 == ++v8)
    {
      goto LABEL_17;
    }
  }

  v9 = a1 + a3 + v8;
LABEL_17:
  if (a1 + a3 >= v9)
  {
    return 0;
  }

  *a4 = a3;
  *a5 = v9 - a1 - a3;
  return 1;
}

BOOL matchStringInBufferWithSpace(const char *a1, const char *a2, size_t a3, int a4, int a5)
{
  v10 = strlen(a1);
  if (v10 > a3)
  {
    return 0;
  }

  v12 = v10;
  if (a4)
  {
    v13 = strncmp(a1, a2, v10);
  }

  else
  {
    v13 = strncasecmp(a1, a2, v10);
  }

  v14 = v13;
  result = v13 == 0;
  if (v12 < a3 && a5 && !v14)
  {
    v15 = a2[v12];
    if ((v15 & 0x80000000) != 0)
    {
      v16 = __maskrune(v15, 0x4000uLL);
    }

    else
    {
      v16 = *(MEMORY[0x1E69E9830] + 4 * v15 + 60) & 0x4000;
    }

    return v16 != 0;
  }

  return result;
}

uint64_t webVTTAddToCueSettingsDictionary(__CFDictionary **a1, void *key, void *value)
{
  Mutable = *a1;
  if (!Mutable)
  {
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    if (!Mutable)
    {
      webVTTAddToCueSettingsDictionary_cold_1(&v8);
      return v8;
    }

    *a1 = Mutable;
  }

  CFDictionaryAddValue(Mutable, key, value);
  return 0;
}

double webVTTReadFloatingPointNumberOrPercent(unsigned __int8 *a1, uint64_t a2, _BYTE *a3, double *a4)
{
  *a4 = 0.0;
  v5 = *a1;
  v6 = v5 == 45;
  if (v5 == 45)
  {
    v7 = -1;
  }

  else
  {
    v7 = 1;
  }

  v8 = a2 - v6;
  if (a2 == v6)
  {
    v11 = 0;
LABEL_28:
    result = (v11 * v7);
    goto LABEL_29;
  }

  v9 = 0;
  v10 = 0;
  v11 = 0;
  if (v5 == 45)
  {
    v12 = a1 + 1;
  }

  else
  {
    v12 = a1;
  }

  v13 = 1;
  while (1)
  {
    v14 = *v12 - 48;
    if (v14 <= 9 && v10 == 0)
    {
      v10 = 0;
      v11 = v14 + 10 * v11;
      goto LABEL_18;
    }

    v16 = *v12;
    if (v16 != 46)
    {
      break;
    }

    v10 = 1;
LABEL_18:
    ++v12;
    if (!--v8)
    {
      v17 = 0;
      goto LABEL_20;
    }
  }

  if (v14 <= 9)
  {
    v9 = v14 + 10 * v9;
    v13 *= 10;
    goto LABEL_18;
  }

  if (v16 != 37)
  {
    goto LABEL_32;
  }

  v17 = v8 != 1;
  LODWORD(v8) = 1;
LABEL_20:
  v18 = v5 == 45 ? v8 : 0;
  if (v17 || v18)
  {
LABEL_32:
    emitter = fig_log_get_emitter();

    return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 4294951286, "<WebVTTSamples>", 3475, v4);
  }

  if (!v10)
  {
    goto LABEL_28;
  }

  result = (v9 / v13 + v11) * v7;
LABEL_29:
  *a4 = result;
  *a3 = v8;
  return result;
}

uint64_t webVTTParseCueAndCreateAttributedString(uint64_t **a1, const UInt8 *a2, size_t a3, const __CFDictionary *a4, const void *a5, const void *a6, const void *a7, __CFAttributedString **a8, double a9)
{
  v14 = a3;
  v179[0] = 0;
  v179[1] = v179;
  v17 = malloc_type_malloc(a3 + 1, 0x100004077774924uLL);
  if (!v17)
  {
    webVTTParseCueAndCreateAttributedString_cold_14(&v185);
LABEL_327:
    theString = 0;
    v123 = 0;
    goto LABEL_330;
  }

  allocator = *MEMORY[0x1E695E480];
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  if (!Mutable)
  {
    webVTTParseCueAndCreateAttributedString_cold_13(&v185);
    goto LABEL_327;
  }

  v178 = a1;
  v167 = a8;
  theString = Mutable;
  if (!a7)
  {
    active = webVTTPushTag(v179, *MEMORY[0x1E6960C08], 0);
    if (active)
    {
      goto LABEL_324;
    }

    active = webVTTPushTag(v179, @"::cue", 0);
    if (active)
    {
      goto LABEL_324;
    }

    if (a5)
    {
      active = webVTTPushTag(v179, a5, 0);
      if (active)
      {
        goto LABEL_324;
      }
    }

    if (a6)
    {
      active = webVTTPushTag(v179, @"::cue-region", 0);
      if (active)
      {
        goto LABEL_324;
      }

      active = webVTTPushTag(v179, a6, 0);
      if (active)
      {
        goto LABEL_324;
      }
    }

    goto LABEL_13;
  }

  active = webVTTAddActiveAttribute(v179, *MEMORY[0x1E6960850], a7, 0);
  if (!active)
  {
LABEL_13:
    if (a9 >= 0.0)
    {
      v20 = webVTTPushTag(v179, @":past", 0);
    }

    else
    {
      v20 = 0;
    }

    v170 = v17;
    if (!v14)
    {
      v120 = allocator;
      v121 = theString;
      goto LABEL_242;
    }

    v176 = 0;
    v21 = 0;
    v173 = v17 - 1;
    range = *MEMORY[0x1E6960850];
    attrName = *MEMORY[0x1E6960958];
    cf = *MEMORY[0x1E6960930];
    while (1)
    {
      v22 = *a2;
      if (v22 == 38)
      {
        break;
      }

      if (v22 != 60)
      {
        v26 = *a2;
        if (v22 < 0)
        {
          if (!__maskrune(v22, 0x4000uLL))
          {
            goto LABEL_37;
          }
        }

        else if ((*(MEMORY[0x1E69E9830] + 4 * v22 + 60) & 0x4000) == 0)
        {
          goto LABEL_37;
        }

        if (v22 == 13 || v22 == 10)
        {
          if (!v21 || v173[v21] != 10)
          {
            v26 = 10;
            goto LABEL_37;
          }

          goto LABEL_38;
        }

        if (!v21)
        {
          if (!v176)
          {
            v21 = 0;
            goto LABEL_37;
          }

LABEL_38:
          v25 = (a2 + 1);
          --v14;
          goto LABEL_112;
        }

        v48 = v173[v21];
        if (v48 < 0)
        {
          if (!__maskrune(v173[v21], 0x4000uLL))
          {
            goto LABEL_37;
          }
        }

        else if ((*(MEMORY[0x1E69E9830] + 4 * v48 + 60) & 0x4000) == 0)
        {
LABEL_37:
          v176 = 0;
          v17[v21++] = v26;
          goto LABEL_38;
        }

        if (v48 != 10 && v48 != 13)
        {
          goto LABEL_38;
        }

        goto LABEL_37;
      }

      if (v21)
      {
        v23 = v17[v21 - 1];
        if (v23 < 0)
        {
          v24 = __maskrune(v17[v21 - 1], 0x4000uLL);
        }

        else
        {
          v24 = *(MEMORY[0x1E69E9830] + 4 * v23 + 60) & 0x4000;
        }

        v176 = v24 != 0;
        v17[v21] = 0;
        CFStringAppendCString(theString, v17, 0x8000100u);
      }

      Length = CFStringGetLength(theString);
      v183 = 0;
      v29 = (a2 + 1);
      *&v185 = a2 + 1;
      v30 = memchr((a2 + 1), 62, v14 - 1);
      if (!v30)
      {
        v14 = 0;
        goto LABEL_201;
      }

      v31 = v30 - v29;
      v183 = (v30 - v29);
      v14 = v14 - 1 + ~(v30 - v29);
      v25 = v30 + 1;
      v32 = *v29;
      if ((v32 - 48) < 0xA)
      {
        v182 = -1.0;
        FigWebVTTReadTime(&v185, &v183, &v182, 0, 0);
        v20 = v33;
        if (v33)
        {
          goto LABEL_110;
        }

        if (v182 == a9)
        {
          if (webVTTFindStyle(v179, @":past"))
          {
            v34 = webVTTFindActiveAttribute(v179, range);
            if (v34)
            {
              v35 = v34;
              MutableCopy = CFArrayCreateMutableCopy(allocator, 0, *(v34 + 40));
              Count = CFArrayGetCount(MutableCopy);
              while (1)
              {
                v38 = Count-- < 1;
                if (v38)
                {
                  break;
                }

                ValueAtIndex = CFArrayGetValueAtIndex(MutableCopy, Count);
                if (CFEqual(@":past", ValueAtIndex))
                {
                  CFArrayRemoveValueAtIndex(MutableCopy, Count);
                  break;
                }
              }

              if (*(v35 + 24) == Length)
              {
                v40 = *(v35 + 40);
                if (v40)
                {
                  CFRelease(v40);
                }

                v20 = 0;
                *(v35 + 40) = CFRetain(MutableCopy);
              }

              else
              {
                v20 = webVTTAddActiveAttribute(v179, range, MutableCopy, Length);
              }

              *(v35 + 24) = Length;
              goto LABEL_109;
            }
          }
        }

        else if (v182 > a9 && !webVTTFindStyle(v179, @":future"))
        {
          v49 = webVTTPushTag(v179, @":future", Length);
          goto LABEL_131;
        }

        v20 = 0;
        goto LABEL_110;
      }

      if ((v32 - 98) > 0x14)
      {
        goto LABEL_75;
      }

      if (((1 << (v32 - 98)) & 0x180083) != 0)
      {
        v41 = CFStringCreateWithBytes(allocator, a2 + 1, v31, 0x8000100u, 0);
        if (!v41)
        {
          webVTTParseCueAndCreateAttributedString_cold_8(&v182);
          goto LABEL_231;
        }

        MutableCopy = v41;
        v20 = webVTTPushTag(v179, v41, Length);
        v42 = *v185 - 98;
        if (v42 > 0x14)
        {
          goto LABEL_109;
        }

        if (((1 << v42) & 0x180081) != 0)
        {
          v43 = CFStringCreateWithBytes(allocator, v185, 1, 0x8000100u, 0);
          if (v43)
          {
            v44 = v43;
            v45 = CFStringCreateMutableCopy(allocator, 0, @"::cue(");
            if (v45)
            {
LABEL_62:
              v46 = v45;
              CFStringAppend(v45, v44);
              CFRelease(v44);
              CFStringAppend(v46, @""));
              v20 = webVTTPushTag(v179, v46, Length);
              v47 = v46;
              goto LABEL_63;
            }

            v58 = 2902;
LABEL_230:
            webVTTParseCueAndCreateAttributedString_cold_6(v58, MutableCopy, v44, &v182);
            goto LABEL_231;
          }

          webVTTParseCueAndCreateAttributedString_cold_7(&v182);
        }

        else
        {
          if (*v185 != 99)
          {
            goto LABEL_109;
          }

          v57 = CFStringCreateWithBytes(allocator, (v185 + 1), v183 - 1, 0x8000100u, 0);
          if (v57)
          {
            v44 = v57;
            v45 = CFStringCreateMutableCopy(allocator, 0, @"::cue(");
            if (v45)
            {
              goto LABEL_62;
            }

            v58 = 2919;
            goto LABEL_230;
          }

          webVTTParseCueAndCreateAttributedString_cold_5(&v182);
        }

        v20 = LODWORD(v182);
        goto LABEL_109;
      }

      if (v32 == 108)
      {
        if (!matchStringInBufferWithSpace("lang", a2 + 1, v31, 0, 0))
        {
          goto LABEL_200;
        }

        matched = matchStringInBufferWithSpace("lang", a2 + 1, v31, 0, 0);
        v62 = v31 - 4;
        if (v31 < 4 || !matched)
        {
          goto LABEL_200;
        }

        v65 = *(a2 + 5);
        v64 = a2 + 5;
        v63 = v65;
        if ((v65 & 0x80000000) != 0)
        {
          v66 = __maskrune(v63, 0x4000uLL);
          if (v31 == 4)
          {
            goto LABEL_200;
          }
        }

        else
        {
          v66 = *(MEMORY[0x1E69E9830] + 4 * v63 + 60) & 0x4000;
          if (v31 == 4)
          {
            goto LABEL_200;
          }
        }

        if (!v66)
        {
          goto LABEL_200;
        }

        do
        {
          v85 = v64;
          v86 = v62;
          v87 = *v64;
          if ((v87 & 0x80000000) != 0)
          {
            v88 = __maskrune(v87, 0x4000uLL);
          }

          else
          {
            v88 = *(MEMORY[0x1E69E9830] + 4 * v87 + 60) & 0x4000;
          }

          v89 = v88 != 0;
          if (v88)
          {
            ++v64;
          }

          v62 -= v89;
          if (v88)
          {
            v90 = v86 == v89;
          }

          else
          {
            v90 = 1;
          }
        }

        while (!v90);
        if (v88)
        {
          v91 = 1;
        }

        else
        {
          v91 = v86 == v89;
        }

        if (!v91)
        {
          v92 = 0;
          if (v88)
          {
            v93 = -1;
          }

          else
          {
            v93 = 0;
          }

          if (v88)
          {
            v94 = v85 + 1;
          }

          else
          {
            v94 = v85;
          }

          v95 = -v86 - v93;
          v164 = Length;
          while (1)
          {
            v96 = v94[v92];
            if ((v96 & 0x80000000) != 0)
            {
              v97 = v95;
              v98 = __maskrune(v96, 0x4000uLL);
              v95 = v97;
              Length = v164;
              if (v98)
              {
LABEL_180:
                if (v88)
                {
                  v99 = v85 + 1;
                }

                else
                {
                  v99 = v85;
                }

                v100 = v86 - (v88 != 0) - v92;
                v101 = &v99[v92];
                v17 = v170;
                do
                {
                  v102 = *v101;
                  if ((v102 & 0x80000000) != 0)
                  {
                    v103 = __maskrune(v102, 0x4000uLL);
                  }

                  else
                  {
                    v103 = *(MEMORY[0x1E69E9830] + 4 * v102 + 60) & 0x4000;
                  }

                  if (v103)
                  {
                    ++v101;
                  }

                  v100 -= v103 != 0;
                  if (v103)
                  {
                    v104 = v100 == 0;
                  }

                  else
                  {
                    v104 = 1;
                  }
                }

                while (!v104);
LABEL_194:
                if (v92)
                {
                  v105 = CFStringCreateWithBytes(allocator, v64, v92, 0x8000100u, 0);
                  if (v105)
                  {
                    v106 = v105;
                    v107 = CFStringCreateWithFormat(allocator, 0, @":lang(%@)", v105);
                    if (v107)
                    {
                      MutableCopy = v107;
                      webVTTPushTag(v179, v107, Length);
                      v108 = CFStringCreateMutableCopy(allocator, 0, @"::cue(");
                      if (v108)
                      {
                        v109 = v108;
                        CFStringAppend(v108, MutableCopy);
                        CFStringAppend(v109, @""));
                        v20 = webVTTPushTag(v179, v109, Length);
                        CFRelease(v109);
                      }

                      else
                      {
                        webVTTParseCueAndCreateAttributedString_cold_2(&v182);
                        v20 = LODWORD(v182);
                      }

                      v47 = v106;
LABEL_63:
                      CFRelease(v47);
LABEL_109:
                      CFRelease(MutableCopy);
LABEL_110:
                      if (v20)
                      {
                        goto LABEL_304;
                      }

                      v21 = 0;
                      goto LABEL_112;
                    }

                    webVTTParseCueAndCreateAttributedString_cold_3();
                  }

                  else
                  {
                    webVTTParseCueAndCreateAttributedString_cold_4(&v182);
                  }

LABEL_231:
                  v20 = LODWORD(v182);
                  goto LABEL_110;
                }

                goto LABEL_200;
              }
            }

            else if ((*(MEMORY[0x1E69E9830] + 4 * v96 + 60) & 0x4000) != 0)
            {
              goto LABEL_180;
            }

            ++v92;
            if (!(v95 + v92))
            {
              v92 = v62;
              v17 = v170;
              goto LABEL_194;
            }
          }
        }

LABEL_179:
        a2 = v25;
        v17 = v170;
        goto LABEL_201;
      }

      if (v32 != 114)
      {
LABEL_75:
        if (v32 != 47)
        {
          goto LABEL_200;
        }

        if (v31 < 2)
        {
          goto LABEL_200;
        }

        v52 = a2[2];
        v51 = (a2 + 2);
        v50 = v52;
        v53 = v52 - 98;
        if ((v52 - 98) > 0x14)
        {
          goto LABEL_200;
        }

        if (v53 == 10)
        {
          if (!matchStringInBufferWithSpace("lang", v51, v31 - 1, 0, 0))
          {
            goto LABEL_200;
          }

          webVTTPopTag(v179, *v51, @"::cue("), Length;
          v72 = *v51;
          v73 = @":lang";
        }

        else
        {
          if (v53 == 16)
          {
            if (matchStringInBufferWithSpace("ruby", v51, v31 - 1, 0, 0))
            {
              v54 = webVTTFindActiveAttribute(v179, cf);
              if (v54)
              {
                *(v54 + 24) = Length;
                v55 = *(v54 + 48);
                if (v55)
                {
                  v56 = (v54 + 16);
                  do
                  {
                    v55[2] = *v56;
                    v56 = v55 + 3;
                    v55 = *v55;
                  }

                  while (v55);
                }
              }
            }

            goto LABEL_200;
          }

          if (((1 << v53) & 0x180083) == 0)
          {
LABEL_200:
            a2 = v25;
            goto LABEL_201;
          }

          webVTTPopTag(v179, v50, @"::cue("), Length;
          v72 = *v51;
          v73 = 0;
        }

        v49 = webVTTPopTag(v179, v72, v73, Length);
LABEL_131:
        v20 = v49;
        goto LABEL_110;
      }

      if (matchStringInBufferWithSpace("ruby", a2 + 1, v31, 0, 0))
      {
        v49 = webVTTAddActiveAttribute(v179, cf, 0, Length);
        goto LABEL_131;
      }

      if (!matchStringInBufferWithSpace("rt", a2 + 1, v31, 0, 0))
      {
        goto LABEL_200;
      }

      if (v14 < 4)
      {
        v67 = 0;
        goto LABEL_140;
      }

      v67 = 0;
      v68 = v14;
      v69 = v25;
      while (1)
      {
        if (*v69 != 60)
        {
          ++v69;
          --v68;
          goto LABEL_128;
        }

        v70 = memchr(v69, 62, v68);
        if (!v70)
        {
          v74 = v69 - v25;
          v67 = v14 - (v69 - v25);
          goto LABEL_223;
        }

        v71 = v70;
        v67 = v70 - v69;
        if (v69[1] == 47 && matchStringInBufferWithSpace("rt", v69 + 2, v67 - 2, 0, 0))
        {
          break;
        }

        if (matchStringInBufferWithSpace("ruby", v69 + 1, v67 - 1, 0, 0) || matchStringInBufferWithSpace("rt", v69 + 1, v67 - 1, 0, 0))
        {
          v14 = 0;
          goto LABEL_179;
        }

        v69 += v67 + 1;
        v68 -= v67 + 1;
LABEL_128:
        if (v68 <= 3)
        {
          goto LABEL_140;
        }
      }

      if (*v71)
      {
        v74 = v69 - v25;
      }

      else
      {
        v74 = v14;
      }

LABEL_223:
      if (!v74)
      {
LABEL_140:
        v74 = v14;
      }

      v75 = webVTTFindActiveAttribute(v179, cf);
      if (!v75)
      {
        goto LABEL_179;
      }

      v76 = v75;
      aStr = 0;
      v182 = 0.0;
      v77 = webVTTFindActiveAttribute(v179, range);
      v78 = WebVTTSampleBufferParserCreate(&v182);
      if (v78 || ((v79 = v178[3]) != 0 || (v79 = v178[2]) != 0) && (v78 = webVTTSampleBufferParserSetStyleQueueFromTextMarkup(*&v182, v79), v78))
      {
LABEL_331:
        v20 = v78;
        v17 = v170;
        goto LABEL_304;
      }

      v80 = CFArrayCreateMutableCopy(allocator, 0, *(v77 + 40));
      if (v80)
      {
        v81 = v80;
        v82 = v182;
        v83 = webVTTParseCueAndCreateAttributedString(*&v182, v25, v74, a4, 0, 0, v80, &aStr, a9);
        CFRelease(v81);
        if (v83)
        {
          Copy = aStr;
        }

        else
        {
          v163 = v74;
          valuePtr = v14;
          v110 = CFNumberCreate(allocator, kCFNumberLongType, &valuePtr);
          v111 = aStr;
          v112 = CFAttributedStringCreateMutableCopy(allocator, 0, aStr);
          if (v111)
          {
            CFRelease(v111);
          }

          v187.length = CFAttributedStringGetLength(v112);
          v187.location = 0;
          CFAttributedStringSetAttribute(v112, v187, attrName, v110);
          if (v110)
          {
            CFRelease(v110);
          }

          Copy = CFAttributedStringCreateCopy(allocator, v112);
          aStr = Copy;
          v74 = v163;
          if (v112)
          {
            CFRelease(v112);
          }

          *(v76 + 40) = Copy;
        }
      }

      else
      {
        fig_log_get_emitter();
        FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v162, v163, v164);
        Copy = 0;
        v82 = v182;
      }

      WebVTTSampleBufferParserDestroy(*&v82);
      v113 = malloc_type_calloc(1uLL, 0x30uLL, 0x10E0040ADB29C33uLL);
      if (v113)
      {
        v114 = v113;
        v113[3] = Length;
        v113[4] = CFRetain(cf);
        if (Copy)
        {
          v115 = CFRetain(Copy);
        }

        else
        {
          v115 = 0;
        }

        v114[5] = v115;
        *v114 = 0;
        v116 = *(v76 + 56);
        v114[1] = v116;
        *v116 = v114;
        *(v76 + 56) = v114;
      }

      else
      {
        fig_log_get_emitter();
        FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v162, v163, v164);
        if (v78)
        {
          goto LABEL_331;
        }
      }

      v117 = v67 + v74 + 1;
      v25 += v117;
      v118 = v14 >= v117;
      v119 = v14 - v117;
      v17 = v170;
      if (v119 == 0 || !v118)
      {
        webVTTParseCueAndCreateAttributedString_cold_1(&v182);
        goto LABEL_231;
      }

      a2 = v25;
      v14 = v119;
LABEL_201:
      v20 = 0;
      v21 = 0;
      v25 = a2;
LABEL_112:
      a2 = v25;
      if (!v14)
      {
        v120 = allocator;
        if (v21)
        {
          v17[v21] = 0;
          v121 = theString;
          CFStringAppendCString(theString, v17, 0x8000100u);
        }

        else
        {
          v121 = theString;
        }

LABEL_242:
        rangea = CFStringGetLength(v121);
        if (!rangea)
        {
          v123 = 0;
          goto LABEL_297;
        }

        v122 = CFAttributedStringCreateMutable(v120, 0);
        v123 = v122;
        if (v122)
        {
          CFAttributedStringBeginEditing(v122);
          v188.location = 0;
          v188.length = 0;
          CFAttributedStringReplaceString(v123, v188, theString);
          if (a4)
          {
            v189.location = 0;
            v189.length = rangea;
            CFAttributedStringSetAttributes(v123, v189, a4, 1u);
          }

          v124 = v179[0];
          if (v179[0])
          {
            v125 = *MEMORY[0x1E6960850];
            replacementa = *MEMORY[0x1E6960850];
            do
            {
              v126 = *(v124 + 3);
              if (!v126)
              {
                v126 = rangea;
                *(v124 + 3) = rangea;
              }

              v127 = *(v124 + 2);
              v128 = v126 - v127;
              if (v126 - v127 >= 1)
              {
                v129 = *(v124 + 6);
                if (v129)
                {
                  do
                  {
                    v130.location = v129[2];
                    v130.length = v129[3] - v130.location;
                    if (v130.length >= 1)
                    {
                      v131 = v129[5];
                      if (v131)
                      {
                        CFAttributedStringSetAttribute(v123, v130, v129[4], v131);
                      }
                    }

                    v129 = *v129;
                  }

                  while (v129);
                }

                else
                {
                  v132 = *(v124 + 5);
                  if (v132)
                  {
                    v190.location = *(v124 + 2);
                    v190.length = v126 - v127;
                    CFAttributedStringSetAttribute(v123, v190, *(v124 + 4), v132);
                  }
                }

                if (CFEqual(*(v124 + 4), v125))
                {
                  v133 = *(v124 + 5);
                  v185 = 0u;
                  v186 = 0u;
                  v183 = 0;
                  v184 = &v183;
                  v134 = CFDictionaryCreateMutable(v120, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
                  if (v134)
                  {
                    v177 = v128;
                    v135 = CFArrayGetCount(v133);
                    if (v135 < 1)
                    {
                      v20 = 0;
                    }

                    else
                    {
                      v136 = v135;
                      while (1)
                      {
                        v137 = CFArrayGetValueAtIndex(v133, v136 - 1);
                        v138 = webVTTCreateSelectorFromString(v137, 1, &v185);
                        if (v138)
                        {
                          break;
                        }

                        for (i = *v178; i; i = *i)
                        {
                          if (*(i + 16) && !FigCFEqual() || *(i + 32) && !FigCFEqual())
                          {
                            continue;
                          }

                          v140 = *(i + 24);
                          if (v140)
                          {
                            if (!v186)
                            {
                              continue;
                            }

                            v141 = CFArrayGetCount(v140);
                            v142 = CFArrayGetCount(v186);
                            if (v141 > v142)
                            {
                              continue;
                            }

                            if (v141 >= 1)
                            {
                              v143 = v142;
                              v144 = 0;
                              while (1)
                              {
                                v145 = CFArrayGetValueAtIndex(*(i + 24), v144);
                                v191.location = 0;
                                v191.length = v143;
                                if (!CFArrayContainsValue(v186, v191, v145))
                                {
                                  break;
                                }

                                if (v141 == ++v144)
                                {
                                  goto LABEL_276;
                                }
                              }

                              continue;
                            }
                          }

LABEL_276:
                          v146 = malloc_type_malloc(0x18uLL, 0xA0040A8488062uLL);
                          if (v146)
                          {
                            webVTTParseCueAndCreateAttributedString_cold_10(v146, i, &v183, &v184);
                          }

                          else if (!webVTTParseCueAndCreateAttributedString_cold_9(&v182))
                          {
                            v20 = LODWORD(v182);
                            goto LABEL_287;
                          }
                        }

                        for (j = v183; j; j = *j)
                        {
                          CFDictionaryApplyFunction(*(j[2] + 40), webVTTApplyStyleDictionaryValue, v134);
                        }

                        webVTTCleanStyleMatchQueue(&v183);
                        webVTTSelectorClean(&v185);
                        v38 = v136-- <= 1;
                        if (v38)
                        {
                          v20 = 0;
                          goto LABEL_287;
                        }
                      }

                      v20 = v138;
LABEL_287:
                      v120 = allocator;
                      v125 = replacementa;
                    }

                    v128 = v177;
                  }

                  else
                  {
                    webVTTParseCueAndCreateAttributedString_cold_11(&v182);
                    v20 = LODWORD(v182);
                  }

                  webVTTSelectorClean(&v185);
                  webVTTCleanStyleMatchQueue(&v183);
                  if (v20)
                  {
                    if (v134)
                    {
                      CFRelease(v134);
                    }

                    v17 = v170;
                    if (v123)
                    {
                      goto LABEL_303;
                    }

                    goto LABEL_304;
                  }

                  v192.location = v127;
                  v192.length = v128;
                  CFAttributedStringSetAttributes(v123, v192, v134, 0);
                  CFRelease(v134);
                  v17 = v170;
                }
              }

              v124 = *v124;
            }

            while (v124);
          }

          *v167 = v123;
LABEL_297:
          if (v20 && v123)
          {
LABEL_303:
            CFRelease(v123);
          }

LABEL_304:
          free(v17);
          v148 = theString;
          if (!theString)
          {
            goto LABEL_306;
          }

          goto LABEL_305;
        }

        webVTTParseCueAndCreateAttributedString_cold_12(&v185);
LABEL_330:
        v20 = v185;
        goto LABEL_297;
      }
    }

    if (matchStringInBufferWithSpace("&amp;", a2, v14, 0, 0))
    {
      v17[v21++] = 38;
      goto LABEL_25;
    }

    if (matchStringInBufferWithSpace("&lt;", a2, v14, 0, 0))
    {
      v27 = 60;
    }

    else
    {
      if (!matchStringInBufferWithSpace("&gt;", a2, v14, 0, 0))
      {
        if (matchStringInBufferWithSpace("&lrm;", a2, v14, 0, 0))
        {
          v59 = &v17[v21];
          *&v17[v21] = -32542;
          v60 = -114;
        }

        else
        {
          if (!matchStringInBufferWithSpace("&rlm;", a2, v14, 0, 0))
          {
            if (matchStringInBufferWithSpace("&nbsp;", a2, v14, 0, 0))
            {
              *&v17[v21] = -24382;
              v21 += 2;
              v25 = (a2 + 6);
              v14 -= 6;
              goto LABEL_112;
            }

            goto LABEL_38;
          }

          v59 = &v17[v21];
          *&v17[v21] = -32542;
          v60 = -113;
        }

        v59[2] = v60;
        v21 += 3;
LABEL_25:
        v25 = (a2 + 5);
        v14 -= 5;
        goto LABEL_112;
      }

      v27 = 62;
    }

    v17[v21++] = v27;
    v25 = (a2 + 4);
    v14 -= 4;
    goto LABEL_112;
  }

LABEL_324:
  v20 = active;
  free(v17);
  v148 = theString;
LABEL_305:
  CFRelease(v148);
LABEL_306:
  for (k = v179[0]; v179[0]; k = v179[0])
  {
    v150 = *k;
    v151 = k[1];
    if (*k)
    {
      v152 = *k;
    }

    else
    {
      v152 = v179;
    }

    v152[1] = v151;
    *v151 = v150;
    v153 = k[4];
    if (v153)
    {
      CFRelease(v153);
    }

    v154 = k[5];
    if (v154)
    {
      CFRelease(v154);
    }

    for (m = k[6]; m; m = k[6])
    {
      v156 = *m;
      v157 = m[1];
      v158 = (*m + 8);
      if (!*m)
      {
        v158 = k + 7;
      }

      *v158 = v157;
      *v157 = v156;
      v159 = m[4];
      if (v159)
      {
        CFRelease(v159);
      }

      v160 = m[5];
      if (v160)
      {
        CFRelease(v160);
      }

      free(m);
    }

    free(k);
  }

  return v20;
}

void WebVTTCreateMetadataDictionaryFromFormatDescripton(const opaqueCMFormatDescription *a1, uint64_t a2, CFDictionaryRef *a3)
{
  if (!a3)
  {
    WebVTTCreateMetadataDictionaryFromFormatDescripton_cold_5(&valuePtr);
    return;
  }

  v4 = a3;
  MediaType = CMFormatDescriptionGetMediaType(a1);
  MediaSubType = CMFormatDescriptionGetMediaSubType(a1);
  if (MediaType != 1935832172 && MediaType != 1952807028)
  {
    emitter = fig_log_get_emitter();
    v23 = v3;
    v24 = 5169;
LABEL_32:

    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 4294954516, "<WebVTTSamples>", v24, v23);
    return;
  }

  if (MediaSubType != 1937142900 && MediaSubType != 2004251764 && MediaSubType != 2021028980)
  {
    emitter = fig_log_get_emitter();
    v23 = v3;
    v24 = 5171;
    goto LABEL_32;
  }

  Extensions = CMFormatDescriptionGetExtensions(a1);
  if (!Extensions)
  {
    return;
  }

  v10 = CFDictionaryGetValue(Extensions, *MEMORY[0x1E69600A0]);
  if (!v10)
  {
    return;
  }

  v11 = CFDictionaryGetValue(v10, @"vttC");
  if (!v11)
  {
    return;
  }

  v12 = v11;
  v73 = v4;
  theDict = 0;
  BytePtr = CFDataGetBytePtr(v11);
  Length = CFDataGetLength(v12);
  if (Length)
  {
    v15 = Length;
    while (1)
    {
      v16 = 0;
      while (1)
      {
        v17 = BytePtr[v16];
        if (v17 == 10 || v17 == 13)
        {
          break;
        }

        if (v15 == ++v16)
        {
          goto LABEL_35;
        }
      }

      if (v15 == v16)
      {
        break;
      }

      v19 = BytePtr[v16];
      if (v19 == 10)
      {
        goto LABEL_25;
      }

      if (v19 != 13)
      {
        break;
      }

      if (v15 - 1 == v16 || BytePtr[v16 + 1] != 10)
      {
LABEL_25:
        v20 = 1;
      }

      else
      {
        v20 = 2;
      }

      v21 = webVTTProcessHeaderLineForMetadata(a2, &theDict, BytePtr, v20 + v16, v20);
      if (v21)
      {
        goto LABEL_133;
      }

      BytePtr += v20 + v16;
      v15 = v15 - v20 - v16;
      if (!v15)
      {
        goto LABEL_36;
      }
    }

LABEL_35:
    v21 = webVTTProcessHeaderLineForMetadata(a2, &theDict, BytePtr, v15, 0);
    if (v21)
    {
LABEL_133:
      LODWORD(v29) = v21;
      goto LABEL_128;
    }
  }

LABEL_36:
  v25 = CFDataGetBytePtr(v12);
  v26 = CFDataGetLength(v12);
  Mutable = 0;
  v28 = 0;
  v29 = 0;
  allocator = *MEMORY[0x1E695E480];
  v74 = *MEMORY[0x1E6960B10];
  key = *MEMORY[0x1E6960AF8];
  v72 = *MEMORY[0x1E6960B20];
  v71 = *MEMORY[0x1E6960B00];
  v70 = *MEMORY[0x1E6960B08];
  v69 = *MEMORY[0x1E6960B18];
  value = *MEMORY[0x1E6960B28];
  v75 = *MEMORY[0x1E6960A90];
  v30 = MEMORY[0x1E69E9830];
  while (1)
  {
    v31 = v26;
    if (v26)
    {
      v32 = 0;
      v33 = v25;
      while (1)
      {
        v34 = *v33;
        if (v34 == 10 || v34 == 13)
        {
          break;
        }

        ++v33;
        --v32;
        if (!(v26 + v32))
        {
          v36 = 0;
          v37 = v26;
          goto LABEL_54;
        }
      }

      v38 = *v33;
      v37 = -v32;
      if (v38 == 10)
      {
        goto LABEL_51;
      }

      if (v38 == 13)
      {
        if (v26 + v32 == 1 || v33[1] != 10)
        {
LABEL_51:
          v36 = 1;
        }

        else
        {
          v36 = 2;
        }

        v39 = v36 - v32;
        goto LABEL_55;
      }

      v36 = 0;
LABEL_54:
      v39 = v26;
    }

    else
    {
      v37 = 0;
      v36 = 0;
      v39 = 0;
    }

LABEL_55:
    if (v28 != 2)
    {
      if (v28 != 1)
      {
        v28 = v39 == v36;
        goto LABEL_109;
      }

      if (v39 < 6 || strncmp(v25, "REGION", 6uLL))
      {
        goto LABEL_78;
      }

      v40 = v29;
      v41 = v39 - 6;
      if (v41)
      {
        v42 = (v25 + 6);
        do
        {
          v43 = *v42;
          if ((v43 & 0x80000000) != 0)
          {
            if (!__maskrune(v43, 0x4000uLL))
            {
LABEL_92:
              v28 = 1;
              v29 = v40;
              goto LABEL_109;
            }
          }

          else if ((*(v30 + 4 * v43 + 60) & 0x4000) == 0)
          {
            goto LABEL_92;
          }

          ++v42;
          --v41;
        }

        while (v41);
      }

      v29 = v40;
      if (Mutable)
      {
        CFRelease(Mutable);
      }

      Mutable = CFDictionaryCreateMutable(allocator, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      goto LABEL_108;
    }

    if (v39 == v36)
    {
      break;
    }

    if (v39 <= v36)
    {
      v52 = 0;
    }

    else
    {
      v52 = v36;
    }

    v79 = 0;
    v80 = 0;
    if (webVTTFindNextCueSetting(v25, v39 - v52, 0, &v79, &v80))
    {
      v53 = v80;
      v54 = v80 - 3;
      if (v80 < 3)
      {
        goto LABEL_90;
      }

      v55 = &v25[v79];
      if (matchStringInBufferWithSpace("id:", &v25[v79], v80, 0, 0))
      {
        v56 = CFStringCreateWithBytes(allocator, v55 + 3, v54, 0x8000100u, 0);
        if (v56)
        {
          v57 = v56;
          if (!CFDictionaryGetValue(Mutable, v74))
          {
            CFDictionaryAddValue(Mutable, key, v57);
          }

          CFRelease(v57);
LABEL_90:
          v29 = 0;
          v28 = 2;
          v30 = MEMORY[0x1E69E9830];
          goto LABEL_109;
        }

        WebVTTCreateMetadataDictionaryFromFormatDescripton_cold_1(&valuePtr);
        v29 = valuePtr;
        v30 = MEMORY[0x1E69E9830];
        goto LABEL_107;
      }

      v82 = 0;
      if (matchStringInBufferWithSpace("width:", v55, v53, 0, 0))
      {
        valuePtr = 0;
        webVTTReadFloatingPointNumberOrPercent(v55 + 6, v53 - 6, &v82, &valuePtr);
        v58 = v72;
        v30 = MEMORY[0x1E69E9830];
        v60 = v59;
        if (!v59 && v82)
        {
          v61 = CFNumberCreate(allocator, kCFNumberDoubleType, &valuePtr);
          if (!v61)
          {
            WebVTTCreateMetadataDictionaryFromFormatDescripton_cold_2(&v83);
            v29 = v83;
            goto LABEL_107;
          }

LABEL_102:
          if (CFDictionaryGetValue(Mutable, v58))
          {
            v29 = 0;
            v63 = v61;
            goto LABEL_104;
          }

          CFDictionaryAddValue(Mutable, v58, v61);
          CFRelease(v61);
        }

LABEL_106:
        v29 = v60;
      }

      else if (matchStringInBufferWithSpace("lines:", v55, v53, 0, 0))
      {
        v83 = 0;
        webVTTReadNumberOrPercent(v55 + 6, v53 - 6, &v82, &v83);
        v58 = v71;
        v30 = MEMORY[0x1E69E9830];
        v60 = v62;
        if (v62 || v82)
        {
          goto LABEL_106;
        }

        v61 = CFNumberCreate(allocator, kCFNumberIntType, &v83);
        if (v61)
        {
          goto LABEL_102;
        }

        WebVTTCreateMetadataDictionaryFromFormatDescripton_cold_3(&valuePtr);
        v29 = valuePtr;
      }

      else
      {
        if (matchStringInBufferWithSpace("regionanchor:", v55, v53, 0, 0))
        {
          valuePtr = 0;
          v29 = webVTTReadPercentageXandY(v55 + 13, v53 - 13, &valuePtr);
          v30 = MEMORY[0x1E69E9830];
          if (v29)
          {
            goto LABEL_107;
          }

          if (CFDictionaryGetValue(Mutable, v70))
          {
            goto LABEL_90;
          }

          v64 = valuePtr;
          v65 = Mutable;
          v66 = v70;
        }

        else
        {
          if (!matchStringInBufferWithSpace("viewportanchor:", v55, v53, 0, 0))
          {
            if (matchStringInBufferWithSpace("scroll:", v55, v53, 0, 0) && !CFDictionaryGetValue(Mutable, v74) && matchStringInBufferWithSpace("up", v55 + 7, v53 - 7, 0, 0))
            {
              CFDictionaryAddValue(Mutable, v74, value);
            }

            goto LABEL_90;
          }

          valuePtr = 0;
          v29 = webVTTReadPercentageXandY(v55 + 15, v53 - 15, &valuePtr);
          v30 = MEMORY[0x1E69E9830];
          if (v29)
          {
            goto LABEL_107;
          }

          if (CFDictionaryGetValue(Mutable, v69))
          {
            goto LABEL_90;
          }

          v64 = valuePtr;
          v65 = Mutable;
          v66 = v69;
        }

        CFDictionaryAddValue(v65, v66, v64);
        v63 = valuePtr;
LABEL_104:
        CFRelease(v63);
      }

LABEL_107:
      if (v29)
      {
        goto LABEL_126;
      }

      goto LABEL_108;
    }

    v29 = 0;
LABEL_108:
    v28 = 2;
LABEL_109:
    v25 += v36 + v37;
    v26 = v31 - (v36 + v37);
    if (!v31)
    {
LABEL_126:
      v4 = v73;
      if (Mutable)
      {
        goto LABEL_127;
      }

      goto LABEL_128;
    }
  }

  if (!Mutable)
  {
    goto LABEL_78;
  }

  v44 = CFDictionaryGetValue(Mutable, key);
  if (!v44)
  {
    goto LABEL_77;
  }

  v45 = v44;
  v46 = webVTTInitMetadataDictionaryIfNecessary(a2, &theDict);
  v47 = theDict;
  if (theDict)
  {
    v48 = v46;
    v49 = a2;
    v50 = CFDictionaryGetValue(theDict, v75);
    if (v50)
    {
      goto LABEL_76;
    }

    v51 = CFDictionaryCreateMutable(allocator, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    if (v51)
    {
      v50 = v51;
      CFDictionaryAddValue(v47, v75, v51);
      CFRelease(v50);
LABEL_76:
      CFDictionaryAddValue(v50, v45, Mutable);
      a2 = v49;
      v30 = MEMORY[0x1E69E9830];
      v29 = v48;
LABEL_77:
      CFRelease(Mutable);
      Mutable = 0;
LABEL_78:
      v28 = 1;
      goto LABEL_109;
    }
  }

  webVTTAddGenericStylesToStyleList_cold_1();
  LODWORD(v29) = valuePtr;
  v4 = v73;
LABEL_127:
  CFRelease(Mutable);
LABEL_128:
  v67 = theDict;
  if (v29)
  {
    if (theDict)
    {
      CFRelease(theDict);
      v67 = 0;
    }
  }

  *v4 = v67;
}

void WebVTTSampleBufferParserDestroy(void *a1)
{
  if (a1)
  {
    v2 = a1[2];
    if (v2)
    {
      CFRelease(v2);
      a1[2] = 0;
    }

    webVTTStyleQueueFree(a1);
    v3 = a1[3];
    if (v3)
    {
      CFRelease(v3);
    }

    free(a1);
  }
}

const opaqueCMFormatDescription *WebVTTIsFormatDescriptionForWebVTT(const opaqueCMFormatDescription *result)
{
  if (result)
  {
    MediaSubType = CMFormatDescriptionGetMediaSubType(result);
    return (MediaSubType == 1937142900 || MediaSubType == 2021028980 || MediaSubType == 2004251764);
  }

  return result;
}

uint64_t WebVTTSampleBufferParserCreate(void *a1)
{
  v2 = malloc_type_calloc(1uLL, 0x28uLL, 0xE00403FBB9EB1uLL);
  v3 = v2;
  if (!v2)
  {
    v4 = 4294954510;
    goto LABEL_6;
  }

  *v2 = 0;
  v2[1] = v2;
  v4 = webVTTAddGenericStylesToStyleList(v2);
  if (v4)
  {
LABEL_6:
    WebVTTSampleBufferParserDestroy(v3);
    return v4;
  }

  *a1 = v3;
  return v4;
}

void webVTTDuplicateCue(__int128 *a1, void *a2)
{
  v4 = malloc_type_malloc(0x70uLL, 0x10A004090FB26ECuLL);
  v5 = v4;
  if (v4)
  {
    v6 = a1[2];
    v7 = *a1;
    v4[1] = a1[1];
    v4[2] = v6;
    *v4 = v7;
    v8 = a1[3];
    v9 = a1[4];
    v10 = a1[6];
    v4[5] = a1[5];
    v4[6] = v10;
    v4[3] = v8;
    v4[4] = v9;
    v11 = *(v4 + 2);
    if (v11)
    {
      CFRetain(v11);
    }
  }

  else
  {
    fig_log_get_emitter();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v12, v13, v14);
  }

  *a2 = v5;
}

uint64_t webVTTAddCueToSampleQueue(void *a1, uint64_t a2)
{
  v30 = 0;
  v4 = a1[9];
  ++a1[14];
  v5 = a2 != 0;
  v6 = a2;
  if (!a2 || !v4)
  {
    goto LABEL_32;
  }

  v6 = a2;
  while (1)
  {
    v7 = *(v4 + 32);
    v8 = *(v6 + 24);
    if (v7 > v8)
    {
      webVTTAddCueToSampleQueue_cold_1(&v29);
      v21 = v29;
      goto LABEL_36;
    }

    v9 = *(v4 + 40);
    if (v9 <= v8)
    {
      goto LABEL_30;
    }

    if (v7 < v8)
    {
      v10 = webVTTDuplicateSample(v4, &v30);
      if (v10)
      {
        goto LABEL_51;
      }

      v11 = *v4;
      v12 = v30;
      *v30 = *v4;
      if (v11)
      {
        v13 = (v11 + 8);
      }

      else
      {
        v13 = a1 + 10;
      }

      *v13 = v12;
      *v4 = v12;
      v12[1] = v4;
      v14 = *(v6 + 24);
      *(v4 + 40) = v14;
      v12[4] = v14;
      goto LABEL_30;
    }

    v15 = *(v6 + 32);
    if (v9 == v15)
    {
      v16 = *(v4 + 16);
      if (v16)
      {
        break;
      }
    }

LABEL_25:
    if (v15 <= v9)
    {
      if (v15 >= v9)
      {
LABEL_44:
        if (!*(v4 + 16))
        {
          *(v4 + 32) = *(v6 + 24);
          *(v4 + 40) = v15;
        }

        v21 = 0;
        *v6 = 0;
        v27 = *(v4 + 24);
        *(v6 + 8) = v27;
        *v27 = v6;
        *(v4 + 24) = v6;
        return v21;
      }

      v10 = webVTTDuplicateSample(v4, &v30);
      if (!v10)
      {
        v24 = *v4;
        v25 = v30;
        *v30 = *v4;
        if (v24)
        {
          v26 = (v24 + 8);
        }

        else
        {
          v26 = (a1 + 10);
        }

        *v26 = v25;
        *v4 = v25;
        *(v25 + 1) = v4;
        v15 = *(v6 + 32);
        *(v4 + 40) = v15;
        v25[4] = v15;
        goto LABEL_44;
      }

LABEL_51:
      v21 = v10;
LABEL_36:
      if (v6 != a2)
      {
        webVTTFreeCue(v6);
      }

      return v21;
    }

    v29 = 0;
    if (!*(v4 + 16))
    {
      *(v4 + 32) = *(v6 + 24);
      *(v4 + 40) = v15;
    }

    *v6 = 0;
    v19 = *(v4 + 24);
    *(v6 + 8) = v19;
    *v19 = v6;
    *(v4 + 24) = v6;
    webVTTDuplicateCue(v6, &v29);
    if (v10)
    {
      goto LABEL_51;
    }

    v6 = v29;
    *(v29 + 24) = *(v4 + 40);
LABEL_30:
    v4 = *v4;
    if (!v4)
    {
      v5 = 1;
LABEL_32:
      if (!v5)
      {
        return 0;
      }

      v20 = malloc_type_calloc(1uLL, 0x30uLL, 0x10A0040D182BB51uLL);
      v30 = v20;
      if (v20)
      {
        v21 = 0;
        *(v20 + 2) = *(v6 + 24);
        *v6 = 0;
        *(v6 + 8) = v20 + 2;
        v20[2] = v6;
        v20[3] = v6;
        v22 = v30;
        *v30 = 0;
        v23 = a1[10];
        v22[1] = v23;
        *v23 = v22;
        a1[10] = v22;
        return v21;
      }

      v21 = 4294954510;
      goto LABEL_36;
    }
  }

  while (1)
  {
    if (v16[10] == *(v6 + 80))
    {
      v17 = v16[8];
      if (v17 == *(v6 + 64))
      {
        v18 = v16[6];
        if (v18 == *(v6 + 48))
        {
          if (!v18)
          {
            goto LABEL_20;
          }

          if (compareCueBB(v16[2], v16[5], *(v6 + 16), *(v6 + 40), v16[6]))
          {
            break;
          }
        }
      }
    }

LABEL_23:
    v16 = *v16;
    if (!v16)
    {
      v15 = *(v6 + 32);
      v9 = *(v4 + 40);
      goto LABEL_25;
    }
  }

  v17 = v16[8];
LABEL_20:
  if (v17 && !compareCueBB(v16[2], v16[7], *(v6 + 16), *(v6 + 56), v17) || !compareCueBB(v16[2], v16[9], *(v6 + 16), *(v6 + 72), *(v6 + 80)))
  {
    goto LABEL_23;
  }

  webVTTFreeCue(v6);
  return 0;
}

void webVTTFreeCue(void *a1)
{
  v2 = a1[2];
  if (v2)
  {
    CFRelease(v2);
  }

  free(a1);
}

uint64_t webVTTDuplicateSample(uint64_t a1, void *a2)
{
  v4 = malloc_type_calloc(1uLL, 0x30uLL, 0x10A0040D182BB51uLL);
  v5 = v4;
  if (!v4)
  {
    v10 = 4294954510;
LABEL_7:
    webVTTFreeSample(v5);
    v5 = 0;
    goto LABEL_8;
  }

  v4[2] = 0;
  v4[3] = v4 + 2;
  *(v4 + 2) = *(a1 + 32);
  v6 = *(a1 + 16);
  if (v6)
  {
    while (1)
    {
      v12 = 0;
      webVTTDuplicateCue(v6, &v12);
      if (v7)
      {
        break;
      }

      v8 = v12;
      v9 = v5[3];
      *v12 = 0;
      v8[1] = v9;
      *v9 = v8;
      v5[3] = v8;
      v6 = *v6;
      if (!v6)
      {
        goto LABEL_5;
      }
    }

    v10 = v7;
    goto LABEL_7;
  }

LABEL_5:
  v10 = 0;
LABEL_8:
  *a2 = v5;
  return v10;
}

BOOL compareCueBB(OpaqueCMBlockBuffer *a1, size_t a2, OpaqueCMBlockBuffer *a3, size_t a4, size_t a5)
{
  if (a1 == a3 && a2 == a4)
  {
    return 1;
  }

  dataPointerOut = 0;
  lengthAtOffsetOut = 0;
  v11 = 0;
  DataPointer = CMBlockBufferGetDataPointer(a1, a2, &lengthAtOffsetOut, 0, &dataPointerOut);
  result = 0;
  if (!DataPointer && lengthAtOffsetOut >= a5)
  {
    v10 = CMBlockBufferGetDataPointer(a3, a4, &lengthAtOffsetOut, 0, &v11);
    result = 0;
    if (!v10 && lengthAtOffsetOut >= a5)
    {
      return memcmp(dataPointerOut, v11, a5) == 0;
    }
  }

  return result;
}

void webVTTSelectorClean(uint64_t a1)
{
  if (a1)
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
  }
}

uint64_t webVTTCreateSelectorFromString(const __CFString *a1, int a2, CFTypeRef *a3)
{
  Length = CFStringGetLength(a1);
  MaximumSizeForEncoding = CFStringGetMaximumSizeForEncoding(Length, 0x8000100u);
  v8 = malloc_type_malloc(MaximumSizeForEncoding + 1, 0xFEC990ECuLL);
  if (!v8)
  {
    webVTTCreateSelectorFromString_cold_6(v39);
    goto LABEL_61;
  }

  if (!CFStringGetCString(a1, v8, MaximumSizeForEncoding + 1, 0x8000100u))
  {
    webVTTCreateSelectorFromString_cold_5(v39);
    goto LABEL_61;
  }

  *a3 = CFRetain(a1);
  v9 = *v8;
  if (*v8)
  {
    v10 = MEMORY[0x1E69E9830];
    v11 = v8;
    do
    {
      if (a2)
      {
        if (v9 < 0)
        {
          v12 = __maskrune(v9, 0x4000uLL);
        }

        else
        {
          v12 = *(v10 + 4 * v9 + 60) & 0x4000;
        }

        v13 = v12 == 0;
      }

      else
      {
        v13 = v9 != 91;
      }

      v11 += v13;
      v9 = *v11;
    }

    while (*v11 && v13);
    if (*v11)
    {
      if (a2)
      {
        *v11 = 0;
        while (1)
        {
          v15 = *++v11;
          v14 = v15;
          if ((v15 & 0x80000000) != 0)
          {
            if (!__maskrune(v14, 0x4000uLL))
            {
LABEL_20:
              for (i = strlen(v11) - 1; ; --i)
              {
                v17 = v11[i];
                if ((v17 & 0x80000000) != 0)
                {
                  if (!__maskrune(v17, 0x4000uLL))
                  {
                    goto LABEL_29;
                  }
                }

                else if ((*(v10 + 4 * v17 + 60) & 0x4000) == 0)
                {
                  goto LABEL_29;
                }

                v11[i] = 0;
              }
            }
          }

          else if ((*(v10 + 4 * v14 + 60) & 0x4000) == 0)
          {
            goto LABEL_20;
          }
        }
      }

      v18 = strlen(v11);
      v19 = CFStringCreateWithBytes(*MEMORY[0x1E695E480], v11, v18, 0x8000100u, 0);
      a3[3] = v19;
      if (!v19)
      {
        webVTTCreateSelectorFromString_cold_1(v39);
        goto LABEL_61;
      }

      *v11 = 0;
    }
  }

  v11 = 0;
LABEL_29:
  v20 = strchr(v8, 46);
  if (!v20)
  {
    if (!*v8 || (v31 = strlen(v8), v32 = CFStringCreateWithBytes(*MEMORY[0x1E695E480], v8, v31, 0x8000100u, 0), (a3[1] = v32) != 0))
    {
      v25 = 0;
LABEL_43:
      v33 = 0;
      if (a2 && v11)
      {
        if (FigCFEqual())
        {
          v34 = CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"[voice=%s]", v11);
          a3[3] = v34;
          if (!v34)
          {
            goto LABEL_57;
          }
        }

        v33 = 0;
      }

      if (!v25)
      {
        goto LABEL_50;
      }

      goto LABEL_49;
    }

    webVTTCreateSelectorFromString_cold_4(v39);
LABEL_61:
    v33 = v39[0];
    goto LABEL_50;
  }

  v21 = v20;
  v22 = *MEMORY[0x1E695E480];
  if (v20 != v8)
  {
    v23 = CFStringCreateWithBytes(*MEMORY[0x1E695E480], v8, v20 - v8, 0x8000100u, 0);
    a3[1] = v23;
    if (!v23)
    {
      webVTTCreateSelectorFromString_cold_2(v39);
      goto LABEL_61;
    }
  }

  Mutable = CFArrayCreateMutable(v22, 0, MEMORY[0x1E695E9C0]);
  if (!Mutable)
  {
    webVTTCreateSelectorFromString_cold_3(v39);
    goto LABEL_61;
  }

  v25 = Mutable;
  while (1)
  {
    v26 = strchr(v21 + 1, 46);
    v27 = v26;
    v28 = v26 ? v26 - v21 : strlen(v21);
    v29 = CFStringCreateWithBytes(v22, v21, v28, 0x8000100u, 0);
    if (!v29)
    {
      break;
    }

    v30 = v29;
    CFArrayAppendValue(v25, v29);
    CFRelease(v30);
    v21 = v27;
    if (!v27)
    {
      a3[2] = CFRetain(v25);
      goto LABEL_43;
    }
  }

LABEL_57:
  fig_log_get_emitter();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v37, v38, v39[1]);
  v33 = v36;
  if (v25)
  {
LABEL_49:
    CFRelease(v25);
  }

LABEL_50:
  free(v8);
  if (v33)
  {
    webVTTSelectorClean(a3);
  }

  return v33;
}

uint64_t webVTTPushTag(uint64_t a1, const void *a2, uint64_t a3)
{
  v6 = *MEMORY[0x1E6960850];
  active = webVTTFindActiveAttribute(a1, *MEMORY[0x1E6960850]);
  if (active)
  {
    if (*(active + 16) == a3)
    {
      CFArrayAppendValue(*(active + 40), a2);
      return 0;
    }

    *(active + 24) = a3;
    MutableCopy = CFArrayCreateMutableCopy(*MEMORY[0x1E695E480], 0, *(active + 40));
  }

  else
  {
    MutableCopy = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  }

  v10 = MutableCopy;
  if (MutableCopy)
  {
    CFArrayAppendValue(MutableCopy, a2);
    v11 = webVTTAddActiveAttribute(a1, v6, v10, a3);
    CFRelease(v10);
    return v11;
  }

  else
  {
    webVTTPushTag_cold_1(&v12);
    return v12;
  }
}

uint64_t webVTTAddActiveAttribute(uint64_t a1, const void *a2, const void *a3, uint64_t a4)
{
  v8 = malloc_type_calloc(1uLL, 0x40uLL, 0x10E0040CC652593uLL);
  if (v8)
  {
    v9 = v8;
    v8[2] = a4;
    v8[4] = CFRetain(a2);
    if (a3)
    {
      v10 = CFRetain(a3);
    }

    else
    {
      v10 = 0;
    }

    result = 0;
    v9[5] = v10;
    v12 = *(a1 + 8);
    *v9 = 0;
    v9[1] = v12;
    *v12 = v9;
    *(a1 + 8) = v9;
    v9[6] = 0;
    v9[7] = v9 + 6;
  }

  else
  {
    webVTTAddActiveAttribute_cold_1(&v13);
    return v13;
  }

  return result;
}

uint64_t webVTTFindActiveAttribute(uint64_t a1, CFTypeRef cf1)
{
  for (i = **(*(a1 + 8) + 8); i; i = **(*(i + 8) + 8))
  {
    if (CFEqual(cf1, *(i + 32)) && !*(i + 24))
    {
      break;
    }
  }

  return i;
}

uint64_t webVTTFindStyle(uint64_t a1, const void *a2)
{
  result = webVTTFindActiveAttribute(a1, *MEMORY[0x1E6960850]);
  if (result)
  {
    v4 = result;
    Count = CFArrayGetCount(*(result + 40));
    while (Count-- >= 1)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(*(v4 + 40), Count);
      if (CFEqual(a2, ValueAtIndex))
      {
        return 1;
      }
    }

    return 0;
  }

  return result;
}

void webVTTApplyStyleDictionaryValue(const void *a1, const void *a2, __CFDictionary *a3)
{
  v6 = CFEqual(a1, *MEMORY[0x1E6960A88]);
  if (a1 && !v6 && !CFDictionaryContainsKey(a3, a1))
  {

    CFDictionaryAddValue(a3, a1, a2);
  }
}