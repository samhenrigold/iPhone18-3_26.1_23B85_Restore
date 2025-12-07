uint64_t videoprocessor_AvailableTimeRangeChanged(uint64_t a1, uint64_t a2)
{
  result = FigVCPSourceShouldTriggerWhenAvailabilityChanges(a1);
  if (result)
  {
    if (*(a2 + 160))
    {
      v4 = *(a2 + 128);
      VTable = CMBaseObjectGetVTable();
      v6 = *(VTable + 16);
      result = VTable + 16;
      v7 = *(v6 + 16);
      if (v7)
      {

        return v7(v4);
      }
    }
  }

  return result;
}

uint64_t videoprocessor_releaseAssignAndRetainAtomically(uint64_t a1, const void **a2, const void *a3)
{
  FigSimpleMutexLock();
  v5 = *a2;
  *a2 = a3;
  if (a3)
  {
    CFRetain(a3);
  }

  if (v5)
  {
    CFRelease(v5);
  }

  return FigSimpleMutexUnlock();
}

uint64_t videoprocessor_triggerProcessingByBufferQueue(uint64_t result)
{
  if (*(result + 160))
  {
    v1 = *(result + 128);
    VTable = CMBaseObjectGetVTable();
    v3 = *(VTable + 16);
    result = VTable + 16;
    v4 = *(v3 + 16);
    if (v4)
    {

      return v4(v1);
    }
  }

  return result;
}

uint64_t FigVideoCompositionProcessorSetHDRDisplayMetadataPolicy(uint64_t a1, const void *a2)
{
  if (FigVCPIsValid(a1 + 16))
  {
    FigVCPOutputSetHDRDisplayMetadataPolicy(*(a1 + 120), a2);
    FigVCPCompositorHostSetHDRDisplayMetadataPolicy(*(a1 + 104), a2);
    if (*(a1 + 160))
    {
      v4 = *(a1 + 128);
      v5 = *(*(CMBaseObjectGetVTable() + 16) + 16);
      if (v5)
      {
        v5(v4);
      }
    }

    return 0;
  }

  else
  {
    FigVideoCompositionProcessorSetHDRDisplayMetadataPolicy_cold_1(&v7);
    return v7;
  }
}

uint64_t FigVideoCompositionProcessorResetCompositionInstruction(uint64_t a1, int a2, int a3)
{
  if (!FigVCPIsValid(a1 + 16))
  {
    FigVideoCompositionProcessorResetCompositionInstruction_cold_1(&v13);
    return v13;
  }

  v6 = videoprocessor_loadAndRetainAtomically(a1, (a1 + 88));
  v7 = v6;
  if (v6)
  {
    FigVCPInstructionSourceInvalidateCache(v6);
  }

  if (a3)
  {
    videoprocessor_flushOutput(a1);
  }

  if (a2)
  {
    FrameTimeToCurrentTimebaseTime = FigVCPTimingResetNextFrameTimeToCurrentTimebaseTime(*(a1 + 96));
    if (FrameTimeToCurrentTimebaseTime)
    {
      v11 = FrameTimeToCurrentTimebaseTime;
      if (!v7)
      {
        return v11;
      }

      goto LABEL_12;
    }
  }

  *(a1 + 160) = 1;
  if (*(a1 + 160))
  {
    v9 = *(a1 + 128);
    v10 = *(*(CMBaseObjectGetVTable() + 16) + 16);
    if (v10)
    {
      v10(v9);
    }
  }

  v11 = 0;
  if (v7)
  {
LABEL_12:
    CFRelease(v7);
  }

  return v11;
}

void videoprocessor_flushOutput(uint64_t a1)
{
  FigVCPCompositorHostCancelPendingFrames(*(a1 + 104));
  v2 = videoprocessor_loadAndRetainAtomically(a1, (a1 + 120));
  FigVCPOutputFlush(v2);
  if (v2)
  {

    CFRelease(v2);
  }
}

uint64_t FigVideoCompositionProcessorCopyProperty(uint64_t a1, const void *a2, uint64_t a3, CFTypeRef *a4)
{
  cf = 0;
  if (!FigVCPIsValid(a1 + 16))
  {
    FigVideoCompositionProcessorCopyProperty_cold_3(&valuePtr);
LABEL_28:
    v9 = LODWORD(valuePtr);
    goto LABEL_29;
  }

  if (!a4)
  {
    FigVideoCompositionProcessorCopyProperty_cold_2(&valuePtr);
    goto LABEL_28;
  }

  if (CFEqual(a2, @"VideoCompositionProcessor_SourcePixelBufferAttributes"))
  {
    PixelBufferAttributes = FigVCPPreprocessParametersGetPixelBufferAttributes(*(a1 + 24));
    if (!PixelBufferAttributes)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

  if (CFEqual(a2, @"VideoCompositionProcessor_CompositionYCbCrMatrix"))
  {
    PixelBufferAttributes = FigVCPPreprocessParametersGetYCbCrMatrix(*(a1 + 24));
    if (!PixelBufferAttributes)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

  if (CFEqual(a2, @"VideoCompositionProcessor_CompositionColorPrimaries"))
  {
    PixelBufferAttributes = FigVCPPreprocessParametersGetColorPrimaries(*(a1 + 24));
    if (!PixelBufferAttributes)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

  if (CFEqual(a2, @"VideoCompositionProcessor_CompositionTransferFunction"))
  {
    PixelBufferAttributes = FigVCPPreprocessParametersGetTransferFunction(*(a1 + 24));
    if (!PixelBufferAttributes)
    {
LABEL_15:
      cf = PixelBufferAttributes;
LABEL_16:
      v9 = 0;
      *a4 = cf;
      return v9;
    }

LABEL_14:
    PixelBufferAttributes = CFRetain(PixelBufferAttributes);
    goto LABEL_15;
  }

  if (CFEqual(a2, @"VideoCompositionProcessor_DestinationPixelBufferDesiredAttributes") || CFEqual(a2, @"VideoCompositionProcessor_DestinationPixelTransferProperties") || CFEqual(a2, @"VideoCompositionProcessor_DestinationPixelBufferDesiredYCbCrMatrix") || CFEqual(a2, @"VideoCompositionProcessor_DestinationPixelBufferDesiredColorPrimaries") || CFEqual(a2, @"VideoCompositionProcessor_PixelBufferPoolSharingID") || CFEqual(a2, @"VideoCompositionProcessor_DestinationPixelBufferDesiredTransferFunction"))
  {
    v11 = FigVCPOutputConformerCopyProperty(*(a1 + 112), a2, a3, &cf);
    if (!v11)
    {
      goto LABEL_16;
    }

LABEL_25:
    v9 = v11;
    goto LABEL_29;
  }

  if (CFEqual(a2, @"VideoCompositionProcessorProperty_Timebase"))
  {
    if (FigVCPTimingUsesTimebase(*(a1 + 96)))
    {
      PixelBufferAttributes = FigVCPTimingCopyTimebase(*(a1 + 96));
      goto LABEL_15;
    }

    FigVideoCompositionProcessorCopyProperty_cold_1(&valuePtr);
    goto LABEL_28;
  }

  if (CFEqual(a2, @"VideoCompositionProcessor_RenderScale"))
  {
    if (!FigVCPCompositorHostSupportsRenderScale())
    {
      valuePtr = FigVCPPreprocessParametersGetRenderScale(*(a1 + 24));
      PixelBufferAttributes = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberFloatType, &valuePtr);
      goto LABEL_15;
    }

    v11 = FigVCPCompositorHostCopyProperty(*(a1 + 104), @"VideoCompositionProcessor_RenderScale", a3, &cf);
    if (!v11)
    {
      goto LABEL_16;
    }

    goto LABEL_25;
  }

  if (CFEqual(a2, @"VideoCompositionProcessor_ThrottleForBackground"))
  {
    v12 = MEMORY[0x1E695E4C0];
    if (*(a1 + 20))
    {
      v12 = MEMORY[0x1E695E4D0];
    }

    PixelBufferAttributes = *v12;
    goto LABEL_14;
  }

  if (CFEqual(a2, @"VideoCompositionProcessor_PerformanceDictionary"))
  {
    v13 = videoprocessor_loadAndRetainAtomically(a1, (a1 + 32));
    v14 = videoprocessor_loadAndRetainAtomically(a1, (a1 + 144));
    v9 = FigVCPTallyCopyPerformanceDictionary((a1 + 208), v13, *(a1 + 104), *(a1 + 112), v14, &cf);
    if (v14)
    {
      CFRelease(v14);
    }

    if (v13)
    {
      CFRelease(v13);
    }

    if (!v9)
    {
      goto LABEL_16;
    }
  }

  else
  {
    v9 = 4294954512;
  }

LABEL_29:
  if (cf)
  {
    CFRelease(cf);
  }

  return v9;
}

void FigVideoCompositionProcessorSetProperty(uint64_t a1, const void *a2, OpaqueCMTimebase *a3)
{
  if (!FigVCPIsValid(a1 + 16))
  {
    FigVideoCompositionProcessorSetProperty_cold_10(&v13);
    return;
  }

  MEMORY[0x19A8D3660](&videoprocessor_getReadOnlyPropertyKeys_sReadOnlyPropertyKeysOnce, videoprocessor_initReadOnlyPropertyKeys);
  if (CFSetContainsValue(videoprocessor_readOnlyPropertyKeys, a2))
  {
    FigVideoCompositionProcessorSetProperty_cold_1(&v13);
    return;
  }

  MEMORY[0x19A8D3660](&videoprocessor_getStaticPropertyKeys_sStaticPropertyKeysOnce, videoprocessor_initStaticPropertyKeys);
  if (CFSetContainsValue(videoprocessor_staticPropertyKeys, a2))
  {
    if (*(a1 + 160))
    {
      FigCFStringGetCStringPtrAndBufferToFree();
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF175A8, 4294954990, "<<<< VideoCompositionProcessor >>>>", 3245, v3);
      return;
    }

    if (FigVCPCompositorHostGetPendingFramesCount(*(a1 + 104)))
    {
      FigCFStringGetCStringPtrAndBufferToFree();
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF175A8, 4294954990, "<<<< VideoCompositionProcessor >>>>", 3252, v3);
      return;
    }
  }

  if (CFEqual(a2, @"VideoCompositionProcessorProperty_Timebase"))
  {
    if (FigVCPTimingUsesTimebase(*(a1 + 96)))
    {
      if (a3 && (v7 = CFGetTypeID(a3), v7 == CMTimebaseGetTypeID()))
      {
        FigSimpleMutexLock();
        FigVCPTimingSetTimebase(*(a1 + 96), a3);
        FigSimpleMutexUnlock();
      }

      else
      {
        FigVideoCompositionProcessorSetProperty_cold_2(&v13);
      }
    }

    else
    {
      FigVideoCompositionProcessorSetProperty_cold_3(&v13);
    }
  }

  else
  {
    if (CFEqual(a2, @"VideoCompositionProcessorProperty_LoopTimeRange"))
    {
      v8 = *(MEMORY[0x1E6960C98] + 16);
      *&v13.start.value = *MEMORY[0x1E6960C98];
      *&v13.start.epoch = v8;
      *&v13.duration.timescale = *(MEMORY[0x1E6960C98] + 32);
      if (!FigVCPTimingUsesTimebase(*(a1 + 96)))
      {
        FigVideoCompositionProcessorSetProperty_cold_5(&valuePtr);
        return;
      }

      if (a3)
      {
        v9 = CFGetTypeID(a3);
        if (v9 != CFDictionaryGetTypeID())
        {
          FigVideoCompositionProcessorSetProperty_cold_4(&valuePtr);
          return;
        }

        CMTimeRangeMakeFromDictionary(&v13, a3);
      }

      v10 = *(a1 + 96);
      valuePtr = v13;
      FigVCPTimingSetLoopTimeRange(v10, &valuePtr);
      return;
    }

    if (CFEqual(a2, @"VideoCompositionProcessor_RenderScale"))
    {
      if (a3 && (v11 = CFGetTypeID(a3), v11 == CFNumberGetTypeID()))
      {
        LODWORD(valuePtr.start.value) = 1065353216;
        CFNumberGetValue(a3, kCFNumberFloatType, &valuePtr);
        if (*&valuePtr.start.value <= 0.0)
        {
          FigVideoCompositionProcessorSetProperty_cold_7(&v13);
        }

        else if (FigVCPTimingUsesTimebase(*(a1 + 96)) || *&valuePtr.start.value == 1.0)
        {
          if (FigVCPCompositorHostSupportsRenderScale())
          {
            FigVCPCompositorHostSetProperty(*(a1 + 104), @"VideoCompositionProcessor_RenderScale", a3);
          }

          else
          {
            FigVCPPreprocessParametersSetProperty();
          }
        }

        else
        {
          FigVideoCompositionProcessorSetProperty_cold_6(&v13);
        }
      }

      else
      {
        FigVideoCompositionProcessorSetProperty_cold_8(&v13);
      }
    }

    else if (CFEqual(a2, @"VideoCompositionProcessor_ClientPID"))
    {

      videoprocessor_setClientPIDProperty(a1, a3);
    }

    else if (CFEqual(a2, @"VideoCompositionProcessor_ThrottleForBackground"))
    {

      videoprocessor_setThrottleForBackgroundProperty(a1, a3);
    }

    else if (CFEqual(a2, @"VideoCompositionProcessorProperty_FigImageQueueArray"))
    {

      videoprocessor_updateOutputImageQueueArray(a1, a3);
    }

    else if (CFEqual(a2, @"VideoCompositionProcessor_HDRDisplayMetadataPolicy"))
    {
      if (FigIsDeviceCapableOfGeneratingStatisticsForHDR())
      {
        goto LABEL_45;
      }

      if (overrideHDRMetadataGenerationByDefaultsWrite_onceToken != -1)
      {
        FigVideoCompositionProcessorSetProperty_cold_9();
      }

      if (overrideHDRMetadataGenerationByDefaultsWrite_sOverrideHDRMetadataGeneration == 1)
      {
LABEL_45:

        FigVideoCompositionProcessorSetHDRDisplayMetadataPolicy(a1, a3);
      }
    }

    else
    {

      videoprocessor_propagatePropertyToSubcomponents(a1, a2, a3);
    }
  }
}

uint64_t videoprocessor_setClientPIDProperty(uint64_t a1, uint64_t a2)
{
  FigActivitySchedulerGetFigBaseObject();
  v5 = v4;
  v6 = *(*(CMBaseObjectGetVTable() + 8) + 56);
  if (v6)
  {
    v7 = v6(v5, @"ClientPID", a2);
  }

  else
  {
    v7 = 4294954514;
  }

  FigVCPCompositorHostSetProperty(*(a1 + 104), @"VideoCompositionProcessor_ClientPID", a2);
  return v7;
}

uint64_t videoprocessor_setThrottleForBackgroundProperty(uint64_t a1, const __CFBoolean *cf)
{
  if (cf && (v4 = CFGetTypeID(cf), v4 == CFBooleanGetTypeID()))
  {
    Value = CFBooleanGetValue(cf);
    if (*(a1 + 20) != Value)
    {
      *(a1 + 20) = Value;
      videoprocessor_updateCoreAnimationThrottling(a1, Value);
      if (*(a1 + 136) == 3)
      {
        FigVCPCompositorHostSetProperty(*(a1 + 104), @"VideoCompositionProcessor_ThrottleForBackground", cf);
      }
    }

    return 0;
  }

  else
  {
    videoprocessor_setThrottleForBackgroundProperty_cold_1(&v7);
    return v7;
  }
}

uint64_t videoprocessor_updateOutputImageQueueArray(CFTypeRef *a1, const __CFArray *a2)
{
  v21 = 0;
  v4 = videoprocessor_loadAndRetainAtomically(a1, a1 + 15);
  v19 = *MEMORY[0x1E6960C70];
  v20 = *(MEMORY[0x1E6960C70] + 16);
  v17 = v19;
  v18 = v20;
  cf = 0;
  OutputDurationWaterLevels = FigVCPOutputGetOutputDurationWaterLevels(v4, &v19, &v17);
  if (!OutputDurationWaterLevels)
  {
    OutputDurationWaterLevels = FigVCPOutputCopyOutputTagCollectionArray(v4, &cf);
    if (!OutputDurationWaterLevels)
    {
      v6 = CFGetAllocator(a1);
      v14 = v19;
      v15 = v20;
      v12 = v17;
      v13 = v18;
      OutputDurationWaterLevels = FigVCPOutputCreate(v6, a2, cf, &v14, &v12, a1, &v21);
      if (!OutputDurationWaterLevels)
      {
        CMNotificationCenterGetDefaultLocalCenter();
        FigNotificationCenterRemoveWeakListener();
        CMNotificationCenterGetDefaultLocalCenter();
        FigNotificationCenterAddWeakListener();
        if (v4 && (v7 = v21, HDRDisplayMetadataPolicy = FigVCPOutputGetHDRDisplayMetadataPolicy(v4), v9 = FigVCPOutputSetHDRDisplayMetadataPolicy(v7, HDRDisplayMetadataPolicy), v9))
        {
          v10 = v9;
        }

        else
        {
          FigVCPOutputInvalidate(v4);
          videoprocessor_releaseAssignAndRetainAtomically(a1, a1 + 15, v21);
          v10 = 0;
          if (!v4)
          {
            goto LABEL_8;
          }
        }

        goto LABEL_7;
      }
    }
  }

  v10 = OutputDurationWaterLevels;
  if (v4)
  {
LABEL_7:
    CFRelease(v4);
  }

LABEL_8:
  if (v21)
  {
    CFRelease(v21);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  return v10;
}

uint64_t videoprocessor_propagatePropertyToSubcomponents(void *a1, const void *a2, uint64_t a3)
{
  v6 = FigVCPPreprocessParametersSetProperty();
  v7 = v6;
  if (v6)
  {
    v8 = v6 == -12784;
  }

  else
  {
    v8 = 1;
  }

  if (v8)
  {
    v9 = FigVCPCompositorHostSetProperty(a1[13], a2, a3);
    v10 = v9;
    if (v9)
    {
      v11 = v9 == -12784;
    }

    else
    {
      v11 = 1;
    }

    if (v11)
    {
      v12 = FigVCPOutputConformerSetProperty();
      if (v12 && v12 != -12784)
      {
        return v12;
      }

      else
      {
        if (v12)
        {
          v13 = v10 == 0;
        }

        else
        {
          v13 = 1;
        }

        if (v13 || v7 == 0)
        {
          return 0;
        }

        else
        {
          return 4294954512;
        }
      }
    }

    else
    {
      return v9;
    }
  }

  return v7;
}

uint64_t FigVideoCompositionProcessorGetVideoCompositor(uint64_t a1)
{
  v2 = FigVCPIsValid(a1 + 16);
  if (v2)
  {
    v10 = *(a1 + 104);

    return FigVCPCompositorHostGetCompositor(v10);
  }

  else
  {
    FigVideoCompositionProcessorGetVideoCompositor_cold_1(v2, v3, v4, v5, v6, v7, v8, v9, v12, v13, SHIDWORD(v13), vars0);
    return 0;
  }
}

uint64_t FigVideoCompositionProcessorGo(uint64_t a1)
{
  if (FigVCPIsValid(a1 + 16))
  {
    *(a1 + 160) = 1;
    FigMemoryBarrier();
    if (*(a1 + 160))
    {
      v2 = *(a1 + 128);
      v3 = *(*(CMBaseObjectGetVTable() + 16) + 16);
      if (v3)
      {
        v3(v2);
      }
    }

    return 0;
  }

  else
  {
    FigVideoCompositionProcessorGo_cold_1(&v5);
    return v5;
  }
}

uint64_t FigVideoCompositionProcessorRequestPreroll(uint64_t a1, __int128 *a2, __int128 *a3, int a4, int a5)
{
  v10 = malloc_type_malloc(0x70uLL, 0x1020040FDFAB857uLL);
  if (a1)
  {
    v11 = CFRetain(a1);
  }

  else
  {
    v11 = 0;
  }

  *v10 = v11;
  v12 = *a2;
  *(v10 + 3) = *(a2 + 2);
  *(v10 + 8) = v12;
  v13 = *a3;
  *(v10 + 6) = *(a3 + 2);
  *(v10 + 2) = v13;
  if (a5 < 1)
  {
    v14 = -1;
  }

  else
  {
    v14 = 1;
  }

  if (!a5)
  {
    v14 = 0;
  }

  *(v10 + 14) = v14;
  FigVCPTimingGetLoopTimeRange(*(a1 + 96), v17);
  v15 = v17[1];
  *(v10 + 60) = v17[0];
  *(v10 + 76) = v15;
  *(v10 + 92) = v17[2];
  *(v10 + 27) = a4;
  dispatch_async_f(*(a1 + 192), v10, videoprocessor_requestPreroll);
  return 0;
}

void videoprocessor_requestPreroll(CFTypeRef *a1)
{
  v2 = *(*a1 + 13);
  v3 = *(a1 + 14);
  v4 = *(a1 + 27);
  v10 = *(a1 + 1);
  v11 = a1[3];
  v5 = *(a1 + 2);
  v9 = a1[6];
  v6 = *(a1 + 76);
  v7[0] = *(a1 + 60);
  v7[1] = v6;
  v7[2] = *(a1 + 92);
  v8 = v5;
  FigVCPCompositorHostPrerollForRendering(v2, &v10, &v8, v3, v7, v4);
  if (*a1)
  {
    CFRelease(*a1);
  }

  free(a1);
}

uint64_t FigVideoCompositionProcessorWaitUntilCompletelyStopped(uint64_t a1)
{
  FigSimpleMutexLock();
  FigSimpleMutexUnlock();
  return 0;
}

BOOL FigVideoCompositionProcessorIsAtEndOfOutputData(uint64_t a1)
{
  v2 = FigVCPIsValid(a1 + 16);
  if (!v2)
  {
    FigVideoCompositionProcessorIsAtEndOfOutputData_cold_2(v2, v3, v4, v5, v6, v7, v8, v9, v19, v20, SHIDWORD(v20), vars0);
    return 0;
  }

  v10 = FigVCPTimingUsesTimebase(*(a1 + 96));
  if (v10)
  {
    FigVideoCompositionProcessorIsAtEndOfOutputData_cold_1(v10, v11, v12, v13, v14, v15, v16, v17, v19, v20, SHIDWORD(v20), vars0);
    return 0;
  }

  if (FigVCPCompositorHostIsAcceptingRequest(*(a1 + 104)))
  {
    return 0;
  }

  return FigVCPCompositorHostGetPendingFramesCount(*(a1 + 104)) == 0;
}

dispatch_queue_t videoprocessor_Init(void *a1)
{
  bzero(a1 + 2, 0x8C8uLL);
  a1[21] = FigSimpleMutexCreate();
  a1[22] = FigSimpleMutexCreate();
  a1[19] = FigSimpleMutexCreate();
  a1[23] = dispatch_queue_create("com.apple.coremedia.videocompositionprocessor.notification", 0);
  result = dispatch_queue_create("com.apple.coremedia.videocompositionprocessor.preroll", 0);
  a1[24] = result;
  return result;
}

CFStringRef videoprocessor_CopyFormattingDesc(uint64_t a1)
{
  v2 = *MEMORY[0x1E695E480];
  v3 = FigVCPIsValid(a1 + 16);
  v4 = "";
  if (!v3)
  {
    v4 = " (invalidated)";
  }

  return CFStringCreateWithFormat(v2, 0, @"[FigVideoCompositionProcessor %p%s]", a1, v4);
}

__CFString *videoprocessor_CopyDebugDesc(uint64_t a1)
{
  v2 = CFGetAllocator(a1);
  Mutable = CFStringCreateMutable(v2, 0);
  v4 = videoprocessor_loadAndRetainAtomically(a1, (a1 + 120));
  v5 = videoprocessor_loadAndRetainAtomically(a1, (a1 + 32));
  v6 = videoprocessor_loadAndRetainAtomically(a1, (a1 + 144));
  v7 = CFGetRetainCount(a1);
  if (FigVCPIsValid(a1 + 16))
  {
    v8 = "";
  }

  else
  {
    v8 = " (invalidated)";
  }

  v9 = CFGetAllocator(a1);
  if (FigVCPTimingUsesTimebase(*(a1 + 96)))
  {
    v10 = "realtime";
  }

  else
  {
    v10 = "non-realtime";
  }

  if (FigVCPTimingRepeatIdenticalFrames(*(a1 + 96)))
  {
    v11 = "repeat-identical-frames";
  }

  else
  {
    v11 = "do-not-repeat-identical-frames";
  }

  IsAcceptingRequest = FigVCPCompositorHostIsAcceptingRequest(*(a1 + 104));
  v13 = "is";
  if (!IsAcceptingRequest)
  {
    v13 = "is not";
  }

  CFStringAppendFormat(Mutable, 0, @"FigVideoCompositionProcessor %p retainCount: %d%s allocator: %p, %s, %s, compositor %s accepting input, ", a1, v7, v8, v9, v10, v11, v13);
  CFStringAppendFormat(Mutable, 0, @"sourceArray=%p, ", v5);
  CFStringAppendFormat(Mutable, 0, @"videoCompositor=%p, ", *(a1 + 104));
  CFStringAppendFormat(Mutable, 0, @"output=%p, ", v4);
  CFStringAppendFormat(Mutable, 0, @"instructionSource=%p, ", *(a1 + 88));
  CFStringAppendFormat(Mutable, 0, @"activityScheduler=%p, ", *(a1 + 128));
  CFStringAppendFormat(Mutable, 0, @"outputConformer=%p, ", *(a1 + 112));
  cf = 0;
  FigVCPTallyCopyPerformanceDictionary((a1 + 208), v5, *(a1 + 104), *(a1 + 112), v6, &cf);
  if (cf)
  {
    v14 = FigCFCopyCompactDescription();
    CFStringAppendFormat(Mutable, 0, @"performanceDictionary=%@", v14);
    if (cf)
    {
      CFRelease(cf);
    }

    if (v6)
    {
      goto LABEL_16;
    }
  }

  else
  {
    v14 = 0;
    if (v6)
    {
LABEL_16:
      CFRelease(v6);
    }
  }

  if (v5)
  {
    CFRelease(v5);
  }

  if (v4)
  {
    CFRelease(v4);
  }

  if (v14)
  {
    CFRelease(v14);
  }

  return Mutable;
}

void videoprocessor_reportProcessingError(uint64_t a1, uint64_t a2)
{
  *(a1 + 160) = 0;
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  FigCFDictionarySetInt32();
  CMNotificationCenterGetDefaultLocalCenter();
  FigDispatchAsyncPostNotification();
  if (Mutable)
  {

    CFRelease(Mutable);
  }
}

uint64_t videoprocessor_setUpcomingImageInfo(uint64_t a1)
{
  v17 = *MEMORY[0x1E6960C70];
  v18 = *(MEMORY[0x1E6960C70] + 16);
  v15 = v17;
  v16 = v18;
  v2 = videoprocessor_loadAndRetainAtomically(a1, (a1 + 120));
  FigSimpleMutexLock();
  UpcomingImageInfo = FigVCPCompositorHostGetUpcomingImageInfo(*(a1 + 104), &v17, &v15, v3, v4, v5, v6, v7);
  if (UpcomingImageInfo)
  {
    v13 = v17;
    v14 = v18;
    v11 = v15;
    v12 = v16;
    v9 = FigVCPOutputSetUpcomingImageInfo(v2, UpcomingImageInfo, &v13, &v11);
  }

  else
  {
    v9 = 0;
  }

  FigSimpleMutexUnlock();
  if (v2)
  {
    CFRelease(v2);
  }

  return v9;
}

void videoprocessor_sendSeekCompleteNotification(uint64_t a1, uint64_t a2)
{
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  FigCFDictionarySetInt32();
  CMNotificationCenterGetDefaultLocalCenter();
  FigDispatchAsyncPostNotification();
  if (Mutable)
  {

    CFRelease(Mutable);
  }
}

uint64_t videoprocessor_isTrackRequired(const __CFArray *a1, int a2)
{
  valuePtr = a2;
  if (!a1)
  {
    return 1;
  }

  v3 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt32Type, &valuePtr);
  v7.length = CFArrayGetCount(a1);
  v7.location = 0;
  v4 = CFArrayContainsValue(a1, v7, v3);
  if (v3)
  {
    CFRelease(v3);
  }

  return v4;
}

uint64_t videoprocessor_willCompositionInstructionContinueForever(const __CFDictionary *a1, uint64_t a2)
{
  if (FigVCPDirectionIsForwardOrPaused(a2))
  {
    Value = CFDictionaryGetValue(a1, @"EndTime");
    CMTimeMakeFromDictionary(&v9, Value);
    if (v9.flags)
    {
      CMTimeMakeFromDictionary(&v8, Value);
      return (LOBYTE(v8.flags) >> 2) & 1;
    }

    return 0;
  }

  v5 = CFDictionaryGetValue(a1, @"StartTime");
  CMTimeMakeFromDictionary(&v7, v5);
  if ((v7.flags & 1) == 0)
  {
    return 0;
  }

  CMTimeMakeFromDictionary(&v6, v5);
  return (LOBYTE(v6.flags) >> 3) & 1;
}

void videoprocessor_initReadOnlyPropertyKeys()
{
  Mutable = CFSetCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9F8]);
  CFSetAddValue(Mutable, @"VideoCompositionProcessor_SourcePixelBufferAttributes");
  videoprocessor_readOnlyPropertyKeys = Mutable;
}

void videoprocessor_initStaticPropertyKeys()
{
  Mutable = CFSetCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9F8]);
  CFSetAddValue(Mutable, @"VideoCompositionProcessor_ClientPID");
  CFSetAddValue(Mutable, @"VideoCompositionProcessor_PixelBufferPoolSharingID");
  videoprocessor_staticPropertyKeys = Mutable;
}

void __overrideHDRMetadataGenerationByDefaultsWrite_block_invoke()
{
  v0 = CFPreferencesCopyValue(@"videoCompositionHDRDisplayMetadata", @"com.apple.avfoundation", *MEMORY[0x1E695E8B8], *MEMORY[0x1E695E898]);
  if (v0)
  {
    v1 = v0;
    v2 = CFGetTypeID(v0);
    if (v2 == CFStringGetTypeID() && FigCFEqual())
    {
      overrideHDRMetadataGenerationByDefaultsWrite_sOverrideHDRMetadataGeneration = 1;
    }

    CFRelease(v1);
  }
}

uint64_t OUTLINED_FUNCTION_11_52(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, CMTime *time2, uint64_t a8, CMTime *time1, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t time2a, uint64_t time2_8, uint64_t time2_16, uint64_t a18, uint64_t time1a)
{
  time2_16 = v19;

  return CMTimeCompare(&time1a, &time2a);
}

void FigVisualContextXPCRemoteGetObjectID(const void *a1, void *a2)
{
  if (a1 && (v5 = CFGetTypeID(a1), v5 == FigVisualContextGetTypeID(v5, v6)))
  {
    if (CMBaseObjectGetVTable() == &kRemoteXPCVisualContext_VTable)
    {
      if (a2)
      {

        remoteXPCVisualContext_GetObjectID(a1, a2);
      }

      else
      {
        FigVisualContextXPCRemoteGetObjectID_cold_1(&v8);
      }
    }

    else
    {
      emitter = fig_log_get_emitter();

      FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 4294954481, "<< FigVisualContextRemoteXPC >>", 989, v2);
    }
  }

  else
  {
    FigVisualContextXPCRemoteGetObjectID_cold_2(&v9);
  }
}

uint64_t remoteXPCVisualContext_GetObjectID(uint64_t a1, void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 8))
  {
    remoteXPCVisualContext_GetObjectID_cold_1(&v6);
    return v6;
  }

  else
  {
    v4 = DerivedStorage;
    result = 0;
    *a2 = *v4;
  }

  return result;
}

uint64_t remoteXPCVisualContextClient_DeadConnectionCallback(uint64_t a1)
{
  result = CMBaseObjectGetDerivedStorage();
  *(result + 8) = 1;
  return result;
}

uint64_t rvcInvalidate(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v7[0] = 0;
  v7[1] = 0;
  if (*(DerivedStorage + 9))
  {
    return 0;
  }

  v4 = DerivedStorage;
  ObjectID = remoteXPCVisualContext_GetObjectID(a1, v7);
  if (ObjectID || v7[0] && ((ObjectID = FigXPCCreateBasicMessage(), ObjectID) || (ObjectID = FigXPCRemoteClientSendSyncMessage(), ObjectID)))
  {
    v3 = ObjectID;
  }

  else
  {
    v3 = 0;
    *(v4 + 9) = 1;
  }

  FigXPCRelease();
  FigXPCRemoteClientKillServerOnTimeout();
  return v3;
}

__CFString *rvcCopyDebugDesc(const void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v3 = CFGetAllocator(a1);
  Mutable = CFStringCreateMutable(v3, 0);
  v5 = CFGetAllocator(a1);
  CFStringAppendFormat(Mutable, 0, @"<FigVisualContext %p [%p] [%016llx]>{imageAvailableImmediate:%p, imageAvailableSequential:%p, noMoreImages:%p, }", a1, v5, *DerivedStorage, DerivedStorage[3], DerivedStorage[5], DerivedStorage[7]);
  return Mutable;
}

BOOL rvcIsNewImageAvailable(uint64_t a1, __int128 *a2)
{
  xdict = 0;
  v10 = 0;
  v8 = 0;
  if ((*(a2 + 3) & 0x1D) == 1)
  {
    v2 = !remoteXPCVisualContext_GetObjectID(a1, &v8) && !FigXPCCreateBasicMessage() && !FigXPCMessageSetCMTime() && !FigXPCRemoteClientSendSyncMessageCreatingReply() && xpc_dictionary_get_BOOL(xdict, "NewImageAvailable");
    FigXPCRelease();
    FigXPCRelease();
    FigXPCRemoteClientKillServerOnTimeout();
  }

  else
  {
    fig_log_get_emitter();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v5, v6, v7);
    return v3;
  }

  return v2;
}

void rvcCopyImageForTime(uint64_t a1, uint64_t a2, __int128 *a3, unsigned int a4, CFTypeRef *a5, CFTypeRef *a6, uint64_t a7)
{
  v27 = 0;
  v25 = 0;
  xdict = 0;
  v23 = 0;
  cf = 0;
  v22 = 0;
  v8 = *MEMORY[0x1E6960C70];
  v20 = *MEMORY[0x1E6960C70];
  v9 = *(MEMORY[0x1E6960C70] + 16);
  v21 = v9;
  if ((*(a3 + 3) & 0x1D) == 1)
  {
    if (a5)
    {
      *a5 = 0;
    }

    if (a6)
    {
      *a6 = 0;
    }

    if (a7)
    {
      *a7 = v8;
      *(a7 + 16) = v9;
    }

    if (remoteXPCVisualContext_GetObjectID(a1, &v25) || FigXPCCreateBasicMessage() || (v18 = *a3, v19 = *(a3 + 2), FigXPCMessageSetCMTime()) || (xpc_dictionary_set_uint64(v27, "Flags", a4), xpc_dictionary_set_BOOL(v27, "WantsImage", a5 != 0), xpc_dictionary_set_BOOL(v27, "WantsImageBaggage", a6 != 0), xpc_dictionary_set_BOOL(v27, "WantsImageOriginalTime", a7 != 0), FigXPCRemoteClientSendSyncMessageCreatingReply()))
    {
      v15 = 0;
    }

    else
    {
      if (!a5 || xpc_dictionary_get_BOOL(xdict, "IsNullImage"))
      {
        v15 = 0;
LABEL_22:
        if ((!a6 || !FigXPCMessageCopyCFDictionary()) && (!a7 || !FigXPCMessageGetCMTime()))
        {
          if (a5)
          {
            *a5 = cf;
            cf = 0;
          }

          if (a6)
          {
            *a6 = v22;
            v22 = 0;
          }

          if (a7)
          {
            *a7 = v20;
            *(a7 + 16) = v21;
          }
        }

        goto LABEL_32;
      }

      value = xpc_dictionary_get_value(xdict, "IOSurface");
      if (value)
      {
        v15 = IOSurfaceLookupFromXPCObject(value);
        if (v15)
        {
          if (!FigXPCMessageCreateBlockBufferData() && !FigRemote_CreatePixelBufferFromSerializedAtomDataAndSurface())
          {
            goto LABEL_22;
          }
        }

        else
        {
          rvcCopyImageForTime_cold_1(&v18);
        }
      }

      else
      {
        rvcCopyImageForTime_cold_2(&v18);
        v15 = 0;
      }
    }

LABEL_32:
    if (cf)
    {
      CFRelease(cf);
    }

    if (v23)
    {
      CFRelease(v23);
    }

    if (v15)
    {
      CFRelease(v15);
    }

    if (v22)
    {
      CFRelease(v22);
    }

    FigXPCRelease();
    FigXPCRelease();
    FigXPCRemoteClientKillServerOnTimeout();
    return;
  }

  emitter = fig_log_get_emitter();

  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 4294954481, "<< FigVisualContextRemoteXPC >>", 607, v7);
}

double rvcConvertHostTimeToImageTime(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9[1] = 0;
  xdict = 0;
  v9[0] = 0;
  if (!a3)
  {
    emitter = fig_log_get_emitter();
    v6 = v3;
    v7 = 708;
    goto LABEL_13;
  }

  if (a2 && (*(a2 + 64) & 2) == 0)
  {
    emitter = fig_log_get_emitter();
    v6 = v3;
    v7 = 710;
LABEL_13:

    return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 4294954481, "<< FigVisualContextRemoteXPC >>", v7, v6);
  }

  if (!remoteXPCVisualContext_GetObjectID(a1, v9) && !FigXPCCreateBasicMessage())
  {
    if (a2)
    {
      xpc_dictionary_set_uint64(xdict, "HostTime", *(a2 + 16));
    }

    if (!FigXPCRemoteClientSendSyncMessageCreatingReply())
    {
      FigXPCMessageGetCMTime();
    }
  }

  FigXPCRelease();
  FigXPCRelease();
  FigXPCRemoteClientKillServerOnTimeout();
  return result;
}

uint64_t OUTLINED_FUNCTION_3_111(uint64_t a1)
{

  return FigReadWriteLockLockForWrite();
}

uint64_t OUTLINED_FUNCTION_4_106(uint64_t a1)
{

  return CMBaseObjectGetDerivedStorage();
}

uint64_t OUTLINED_FUNCTION_9_50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{

  return remoteXPCVisualContext_GetObjectID(v9, &a9);
}

uint64_t OUTLINED_FUNCTION_10_50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{

  return FigXPCRemoteClientSendSyncMessage();
}

uint64_t RegisterFigVideoCompositorBaseType()
{
  CMBaseGetClassID();

  return FigBaseClassRegisterClass();
}

uint64_t FigVideoCompositorGetTypeID()
{
  MEMORY[0x19A8D3660](&FigVideoCompositorGetClassID_sRegisterFigVideoCompositorBaseTypeOnce, RegisterFigVideoCompositorBaseType);

  return CMBaseClassGetCFTypeID();
}

CFTypeID FigVideoCompositorUtilityGetPixelAspectRatio(CFTypeID result, _DWORD *a2, _DWORD *a3)
{
  if (result)
  {
    v5 = result;
    Value = CFDictionaryGetValue(result, *MEMORY[0x1E6965EF0]);
    result = CFDictionaryGetValue(v5, *MEMORY[0x1E6965F00]);
    v7 = result;
    if (a2)
    {
      *a2 = 1;
      if (Value)
      {
        TypeID = CFNumberGetTypeID();
        result = CFGetTypeID(Value);
        if (TypeID == result)
        {
          result = CFNumberGetValue(Value, kCFNumberIntType, a2);
        }
      }
    }

    if (a3)
    {
      *a3 = 1;
      if (v7)
      {
        v9 = CFNumberGetTypeID();
        result = CFGetTypeID(v7);
        if (v9 == result)
        {

          return CFNumberGetValue(v7, kCFNumberIntType, a3);
        }
      }
    }
  }

  else
  {
    *a3 = 1;
    *a2 = 1;
  }

  return result;
}

uint64_t FigVideoCompositorUtilityGetEdgeProcessingPixels(uint64_t theArray, void *a2)
{
  if (a2)
  {
    v2 = a2;
    v3 = theArray;
    if (theArray && (theArray = CFArrayGetCount(theArray), theArray == 4))
    {
      for (i = 0; i != 4; ++i)
      {
        theArray = CFArrayGetValueAtIndex(v3, i);
        if (theArray)
        {
          v5 = theArray;
          TypeID = CFNumberGetTypeID();
          theArray = CFGetTypeID(v5);
          if (TypeID == theArray)
          {
            theArray = CFNumberGetValue(v5, kCFNumberIntType, v2);
          }
        }

        v2 = (v2 + 4);
      }
    }

    else
    {
      *v2 = 0;
      v2[1] = 0;
    }
  }

  return theArray;
}

unint64_t vcu_simplifyRational(uint64_t a1)
{
  if (a1 >= 0)
  {
    v1 = a1;
  }

  else
  {
    v1 = -a1;
  }

  if (a1 >= 0)
  {
    v2 = HIDWORD(a1);
  }

  else
  {
    v2 = -HIDWORD(a1);
  }

  if (v1 <= v2)
  {
    v3 = v2;
  }

  else
  {
    v3 = v1;
  }

  if (v1 >= v2)
  {
    v1 = v2;
  }

  if (v1)
  {
    if (v1 < 1)
    {
      v4 = v3;
    }

    else
    {
      do
      {
        v4 = v1;
        v1 = v3 % v1;
        v3 = v4;
      }

      while (v1);
    }
  }

  else if (v3 <= 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  return (a1 / v4) | ((SHIDWORD(a1) / v4) << 32);
}

BOOL FigVideoCompositorUtilityArePixelAspectRatiosEqual(CFTypeID a1, CFTypeID a2)
{
  v7 = 0;
  v8 = 0;
  FigVideoCompositorUtilityGetPixelAspectRatio(a1, &v8 + 1, &v8);
  FigVideoCompositorUtilityGetPixelAspectRatio(a2, &v7 + 1, &v7);
  v4 = v7;
  v3 = HIDWORD(v7);
  v5 = vcu_simplifyRational(HIDWORD(v8) | (v8 << 32));
  return v5 == vcu_simplifyRational(v3 | (v4 << 32));
}

void vcu_addRationalToDictionary(unint64_t a1, __CFDictionary *a2, const void *a3, const void *a4)
{
  v7 = HIDWORD(a1);
  valuePtr = a1;
  v13 = a1 / SHIDWORD(a1);
  v8 = *MEMORY[0x1E695E480];
  v9 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberDoubleType, &v13);
  CFDictionaryAddValue(a2, a3, v9);
  CFRelease(v9);
  if (v7 != 1)
  {
    Mutable = CFArrayCreateMutable(v8, 2, MEMORY[0x1E695E9C0]);
    v11 = CFNumberCreate(v8, kCFNumberIntType, &valuePtr);
    CFArrayAppendValue(Mutable, v11);
    CFRelease(v11);
    v12 = CFNumberCreate(v8, kCFNumberIntType, &valuePtr + 4);
    CFArrayAppendValue(Mutable, v12);
    CFRelease(v12);
    CFDictionaryAddValue(a2, a4, Mutable);
    CFRelease(Mutable);
  }
}

uint64_t FigVideoCompositorUtilityCopyRenderPixelBufferDimensionsAndCleanAperture(CFTypeID a1, uint64_t theArray, void *a3, void *a4, uint64_t a5, __CFDictionary **a6, double a7, double a8, float a9)
{
  v34 = *MEMORY[0x1E69E9840];
  v31 = 1;
  v32 = 1;
  v33 = 0uLL;
  v30 = a9;
  if (a1)
  {
    FigVideoCompositorUtilityGetPixelAspectRatio(a1, &v32, &v31);
    a9 = v30;
  }

  if (theArray)
  {
    FigVideoCompositorUtilityGetEdgeProcessingPixels(theArray, &v33);
    a9 = v30;
  }

  v33 = vcvtq_s32_f32(vmulq_n_f32(vcvtq_f32_s32(v33), a9));
  v16 = v31;
  if (a9 == 1.0)
  {
    v17 = v32;
    v18 = vcu_simplifyRational((a7 * v16 + 0.5) | (v32 << 32));
    v19 = v18;
    v20 = HIDWORD(v18);
    v21 = v33.i32[0];
    v22 = v33.i32[0] + v33.i32[2] + (v18 + SHIDWORD(v18) / 2) / SHIDWORD(v18);
    if ((v18 / SHIDWORD(v18)) > v22)
    {
      v20 = 1;
      v19 = v33.i32[0] + v33.i32[2] + (v18 + SHIDWORD(v18) / 2) / SHIDWORD(v18);
    }

    a9 = v30;
    if (a3)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v17 = v32;
    v21 = v33.i32[0];
    v22 = (v33.i32[2] + v33.i32[0] + (a7 * v16 * a9 / v32 + 1.0)) & 0xFFFFFFFE;
    v19 = v22 - (v33.i32[2] + v33.i32[0]);
    v20 = 1;
    if (a3)
    {
LABEL_9:
      *a3 = v22;
    }
  }

  if (a9 == 1.0)
  {
    v23 = (a8 + 0.5);
    v24 = v33.i32[1];
    v25 = v33.i32[1] + v33.i32[3] + v23;
    if (!a4)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  v24 = v33.i32[1];
  v25 = (v33.i32[3] + v33.i32[1] + (a8 * a9 + 1.0)) & 0xFFFFFFFE;
  v23 = v25 - (v33.i32[3] + v33.i32[1]);
  if (a4)
  {
LABEL_12:
    *a4 = v25;
  }

LABEL_13:
  if (a5)
  {
    *a5 = v16 / v17;
    *(a5 + 8) = 0;
    *(a5 + 16) = 0;
    *(a5 + 24) = 0x3FF0000000000000;
    *(a5 + 32) = v21;
    *(a5 + 40) = v24;
  }

  if (a6)
  {
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    vcu_addRationalToDictionary(v19 | (v20 << 32), Mutable, *MEMORY[0x1E6965D80], *MEMORY[0x1E6960110]);
    vcu_addRationalToDictionary(v23 | 0x100000000, Mutable, *MEMORY[0x1E6965D60], *MEMORY[0x1E69600F8]);
    v27 = vcu_simplifyRational((v33.i32[0] - v33.i32[2]) | 0x200000000);
    vcu_addRationalToDictionary(v27, Mutable, *MEMORY[0x1E6965D68], *MEMORY[0x1E6960100]);
    v28 = vcu_simplifyRational((v33.i32[1] - v33.i32[3]) | 0x200000000);
    vcu_addRationalToDictionary(v28, Mutable, *MEMORY[0x1E6965D78], *MEMORY[0x1E6960108]);
    *a6 = Mutable;
  }

  return 0;
}

double vcu_getRationalFromDictionary(const __CFDictionary *a1, const void *a2, void *key, uint64_t a4)
{
  Value = CFDictionaryGetValue(a1, key);
  if (Value && (v9 = Value, TypeID = CFArrayGetTypeID(), TypeID == CFGetTypeID(v9)) && CFArrayGetCount(v9) == 2)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(v9, 0);
    CFNumberGetValue(ValueAtIndex, kCFNumberIntType, a4);
    v12 = CFArrayGetValueAtIndex(v9, 1);
    CFNumberGetValue(v12, kCFNumberIntType, (a4 + 4));
  }

  else
  {
    v14 = CFDictionaryGetValue(a1, a2);
    if (v14)
    {
      CFNumberGetValue(v14, kCFNumberIntType, a4);
      *(a4 + 4) = 1;
    }

    else
    {
      v15 = qword_1EAF175C8;

      return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v15, 4294954792, "<<<< FigVideoCompositor-Common >>>>", 449, v4);
    }
  }

  return result;
}

void FigVideoCompositorCopyDeviceSpecificCompositorName(int a1, void *a2)
{
  if (!a2)
  {
    FigVideoCompositorCopyDeviceSpecificCompositorName_cold_8(&v17);
    return;
  }

  if (!a1)
  {
    v4 = @"Playback";
LABEL_6:
    ModelSpecificPropertyList = FigCreateModelSpecificPropertyList();
    if (ModelSpecificPropertyList)
    {
      v6 = ModelSpecificPropertyList;
      TypeID = CFDictionaryGetTypeID();
      if (TypeID == CFGetTypeID(v6))
      {
        Value = CFDictionaryGetValue(v6, @"VideoCompositor");
        if (Value)
        {
          v9 = Value;
          v10 = CFDictionaryGetTypeID();
          if (v10 == CFGetTypeID(v9))
          {
            v11 = CFDictionaryGetValue(v9, v4);
            if (v11)
            {
              v12 = v11;
              v13 = CFStringGetTypeID();
              if (v13 == CFGetTypeID(v12))
              {
                if (CFEqual(v12, @"vImage"))
                {
                  v14 = @"VideoCompositorvImage";
                }

                else if (CFEqual(v12, @"Metal"))
                {
                  v14 = @"VideoCompositorMetal";
                }

                else if (CFEqual(v12, @"OpenGL"))
                {
                  v14 = @"VideoCompositorOpenGL";
                }

                else if (CFEqual(v12, @"Custom"))
                {
                  v14 = @"VideoCompositorCustom";
                }

                else
                {
                  v14 = @"VideoCompositorBasic";
                }

                v16 = CFRetain(v14);
                if (FigCFEqual() && !VTPixelTransferSessionCanUseMetalInTheBackground())
                {
                  CFRetain(@"VideoCompositorvImage");
                  if (v16)
                  {
                    CFRelease(v16);
                  }

                  *a2 = @"VideoCompositorvImage";
                }

                else
                {
                  *a2 = v16;
                  if (!v16)
                  {
                    FigVideoCompositorCopyDeviceSpecificCompositorName_cold_4(&v17);
                  }
                }
              }

              else
              {
                FigVideoCompositorCopyDeviceSpecificCompositorName_cold_3(&v17);
              }
            }

            else
            {
              FigVideoCompositorCopyDeviceSpecificCompositorName_cold_5(&v17);
            }
          }

          else
          {
            FigVideoCompositorCopyDeviceSpecificCompositorName_cold_2(&v17);
          }
        }

        else
        {
          FigVideoCompositorCopyDeviceSpecificCompositorName_cold_6(&v17);
        }
      }

      else
      {
        FigVideoCompositorCopyDeviceSpecificCompositorName_cold_1(&v17);
      }

      CFRelease(v6);
    }

    else
    {
      FigVideoCompositorCopyDeviceSpecificCompositorName_cold_7(&v17);
    }

    return;
  }

  if (a1 == 1)
  {
    v4 = @"Remake";
    goto LABEL_6;
  }

  v15 = qword_1EAF175C8;

  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v15, 4294954516, "<<<< FigVideoCompositor-Common >>>>", 1015, v2);
}

BOOL FigVideoCompositorIsPixelBufferOpaque(__CVBuffer *a1)
{
  v2 = CVBufferCopyAttachment(a1, *MEMORY[0x1E6965CB8], 0);
  v3 = v2;
  v4 = *MEMORY[0x1E695E4D0];
  if (v2 == *MEMORY[0x1E695E4D0])
  {
    v6 = 1;
    if (!v2)
    {
      return v6;
    }

    goto LABEL_3;
  }

  CVPixelBufferGetPixelFormatType(a1);
  DescriptionWithPixelFormatType = CVPixelFormatDescriptionGetDescriptionWithPixelFormatType();
  v6 = CFDictionaryGetValue(DescriptionWithPixelFormatType, *MEMORY[0x1E6966290]) != v4;
  if (v3)
  {
LABEL_3:
    CFRelease(v3);
  }

  return v6;
}

BOOL FigVideoCompositorSupportsSpatialVideoSources(uint64_t a1)
{
  v4 = 0;
  v2 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v2)
  {
    v2(a1, @"SupportsSpatialSourceBuffers", *MEMORY[0x1E695E498], &v4);
    v2 = v4;
  }

  return v2 == *MEMORY[0x1E695E4D0];
}

double OUTLINED_FUNCTION_1_140(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, int a11, char a12, int a13, char a14)
{

  return vcu_getCleanApertureRational();
}

uint64_t FigDataQueueServer_AssociateObjectByPID(uint64_t a1, const void *a2, void *a3)
{
  if (FigDataQueueServerStateGetTypeID_sRegisterDataQueueServerStateTypeOnce != -1)
  {
    FigDataQueueServer_AssociateObjectByPID_cold_1();
  }

  Instance = _CFRuntimeCreateInstance();
  if (Instance)
  {
    v6 = Instance;
    if (a2)
    {
      v7 = CFRetain(a2);
    }

    else
    {
      v7 = 0;
    }

    v6[3] = v7;
    v8 = FigXPCServerAssociateObjectWithNeighborProcessByPID();
    if (v8)
    {
      CFRelease(v6);
    }

    else
    {
      v6[4] = 0;
      *a3 = 0;
    }
  }

  else
  {
    FigDataQueueServer_AssociateObjectByPID_cold_2(&v10);
    return v10;
  }

  return v8;
}

uint64_t FigDataQueueServer_CopyDataQueueForID(uint64_t a1, uint64_t a2, CFTypeRef *a3)
{
  v4 = FigXPCServerRetainNeighborObjectFromIDWithConnection();
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    if (*a3)
    {
      v5 = CFGetTypeID(*a3);
      if (v5 == FigDataQueueGetTypeID())
      {
        return 0;
      }
    }

    FigDataQueueServer_CopyDataQueueForID_cold_1(&v8);
    v6 = v8;
  }

  if (a3 && v6 && *a3)
  {
    CFRelease(*a3);
    *a3 = 0;
  }

  return v6;
}

uint64_t dqs_SetWaterLevelInMessage(uint64_t a1, uint64_t a2)
{
  v3 = *(*(CMBaseObjectGetVTable() + 16) + 16);
  if (v3)
  {
    v3(a1);
  }

  return FigXPCMessageSetInt32();
}

void dqs_SendLowWaterMarkCallback(uint64_t a1)
{
  v2 = 0;
  v1 = FigCFWeakReferenceHolderCopyReferencedObject();
  if (v1)
  {
    dqs_SendLowWaterMarkCallback_cold_1(v1, &v2);
  }

  else
  {
    dqs_SendLowWaterMarkCallback_cold_2();
  }
}

uint64_t __FigDataQueueServerStateGetTypeID_block_invoke()
{
  result = _CFRuntimeRegisterClass();
  FigDataQueueServerStateGetTypeID_sDataQueueServerStateTypeID = result;
  return result;
}

double DataQueueServerState_init(_OWORD *a1)
{
  result = 0.0;
  a1[3] = 0u;
  a1[4] = 0u;
  a1[1] = 0u;
  a1[2] = 0u;
  return result;
}

void DataQueueServerState_finalize(uint64_t a1)
{
  if (a1)
  {
    if (*(a1 + 48))
    {
      v2 = *(a1 + 24);
      v3 = *(*(CMBaseObjectGetVTable() + 16) + 32);
      if (v3)
      {
        v3(v2);
      }
    }

    v4 = *(a1 + 56);
    if (v4)
    {
      CFRelease(v4);
      *(a1 + 56) = 0;
    }

    v5 = *(a1 + 40);
    if (v5)
    {
      CFRelease(v5);
      *(a1 + 40) = 0;
    }

    v6 = *(a1 + 24);
    if (v6)
    {
      CFRelease(v6);
      *(a1 + 24) = 0;
    }

    v7 = *(a1 + 64);
    if (v7)
    {
      CFRelease(v7);
      *(a1 + 64) = 0;
    }

    v8 = *(a1 + 72);
    if (v8)
    {
      CFRelease(v8);
      *(a1 + 72) = 0;
    }
  }
}

CFStringRef DataQueueServerState_copyDebugDesc(uint64_t a1)
{
  v2 = *MEMORY[0x1E695E480];
  if (a1)
  {
    return CFStringCreateWithFormat(v2, 0, @"[DataQueueServerState %p] dataQueue:%p dataQueueObjectID:%llu", a1, *(a1 + 24), *(a1 + 32));
  }

  else
  {
    return CFStringCreateWithFormat(v2, 0, @"[DataQueueServerState %p]", 0);
  }
}

uint64_t sci_invalidate(uint64_t a1)
{
  v4 = 0;
  context[0] = CMBaseObjectGetDerivedStorage();
  context[1] = a1;
  dispatch_sync_f(*context[0], context, sci_invalidateDispatch);
  return v4;
}

void sci_finalize(uint64_t a1)
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

  if (*DerivedStorage)
  {
    dispatch_release(*DerivedStorage);
    *DerivedStorage = 0;
  }
}

uint64_t sci_copyProperty(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a4)
  {
    context[0] = DerivedStorage;
    context[1] = a2;
    context[2] = a4;
    dispatch_sync_f(*DerivedStorage, context, sci_copyPropertyDispatch);
    return v9;
  }

  else
  {
    sci_copyProperty_cold_1(&v10);
    return v10;
  }
}

uint64_t sci_createAndOpenHLSPersistentStore(uint64_t a1, CFTypeRef *a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a1 + 40);
  if (v7)
  {
    v8 = *(a1 + 16);

    return FigHLSPersistentStoreCreateAtURL(v8, v7, 0, 0, a2);
  }

  else
  {
    v11 = v4;
    v12 = v5;
    sci_createAndOpenHLSPersistentStore_cold_1(&v10);
    return v10;
  }
}

uint64_t sci_copyCompletelyCachedMediaSelectionOptionsInGroup(uint64_t a1, const void *a2, uint64_t a3, uint64_t a4)
{
  v12 = 0u;
  v11 = 0u;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!a2 || (v7 = DerivedStorage, v8 = CFGetTypeID(a2), v8 != CFDictionaryGetTypeID()))
  {
    sci_copyCompletelyCachedMediaSelectionOptionsInGroup_cold_2(&v13);
    return v13;
  }

  if (!a4)
  {
    sci_copyCompletelyCachedMediaSelectionOptionsInGroup_cold_1(&v13);
    return v13;
  }

  v10 = v7;
  *(&v11 + 1) = a2;
  *&v12 = a4;
  dispatch_sync_f(*v7, &v10, sci_copyCompletelyCachedMediaSelectionOptionsInGroupDispatch);
  return DWORD2(v12);
}

void sci_copyCompletelyCachedMediaSelectionOptionsInGroupDispatch(uint64_t *a1)
{
  if (!a1)
  {
    return;
  }

  v2 = a1;
  v4 = *a1;
  v3 = a1[1];
  if (v3)
  {
    v5 = CFRetain(v3);
  }

  else
  {
    v5 = 0;
  }

  cf = v5;
  if (!v4)
  {
    sci_copyCompletelyCachedMediaSelectionOptionsInGroupDispatch_cold_10(&v51);
LABEL_81:
    Mutable = 0;
LABEL_83:
    v9 = v51;
    goto LABEL_84;
  }

  if (*(v4 + 8))
  {
    sci_copyCompletelyCachedMediaSelectionOptionsInGroupDispatch_cold_1(&v51);
    goto LABEL_81;
  }

  Mutable = CFArrayCreateMutable(*(v4 + 16), 0, MEMORY[0x1E695E9C0]);
  if (!Mutable)
  {
    sci_copyCompletelyCachedMediaSelectionOptionsInGroupDispatch_cold_9(&v51);
    goto LABEL_83;
  }

  if (!*(v4 + 40))
  {
LABEL_74:
    *v2[3] = CFArrayCreateCopy(*(v4 + 16), Mutable);
    if (*v2[3])
    {
      v9 = 0;
    }

    else
    {
      fig_log_get_emitter();
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v39, v1, v40);
      v9 = v38;
    }

    goto LABEL_85;
  }

  if (!v5)
  {
    v9 = sci_createAndOpenHLSPersistentStore(v4, &cf, v6, v7);
    if (v9 || !cf)
    {
LABEL_84:
      if (v9)
      {
        goto LABEL_85;
      }

      goto LABEL_74;
    }
  }

  theArray = Mutable;
  v40 = v2;
  v10 = CFDictionaryGetValue(v2[2], @"MediaSelectionGroupOptions");
  v11 = 0;
  v12 = *MEMORY[0x1E6962BB0];
  v13 = *MEMORY[0x1E6962BA8];
  v41 = v10;
  if (!v10)
  {
    goto LABEL_14;
  }

LABEL_13:
  for (i = CFArrayGetCount(v10); ; i = 0)
  {
    if (v11 >= i)
    {
      v2 = v40;
      Mutable = theArray;
      goto LABEL_74;
    }

    ValueAtIndex = CFArrayGetValueAtIndex(v10, v11);
    v49 = 0;
    v48 = 0;
    v45 = cf;
    isVideoPlayableOffline = sci_isVideoPlayableOffline(v4, cf, &v49, &v48);
    if (isVideoPlayableOffline)
    {
      break;
    }

    if (!v49 && v48)
    {
      goto LABEL_62;
    }

    isVideoPlayableOffline = sci_ensureAlternateArrayAndMediaSelectionArray(v4, v45);
    if (isVideoPlayableOffline)
    {
      break;
    }

    v50 = 0;
    v43 = v11;
    value = ValueAtIndex;
    if (!*(v4 + 56))
    {
      sci_copyCompletelyCachedMediaSelectionOptionsInGroupDispatch_cold_8(&v51);
      goto LABEL_69;
    }

    CFDictionaryGetValue(ValueAtIndex, @"MediaSelectionOptionsMediaType");
    if (!FigCFStringGetOSTypeValue())
    {
      sci_copyCompletelyCachedMediaSelectionOptionsInGroupDispatch_cold_7(&v51);
      goto LABEL_69;
    }

    v17 = CFDictionaryGetValue(ValueAtIndex, @"MediaSelectionOptionsPersistentID");
    if (!v17)
    {
      sci_copyCompletelyCachedMediaSelectionOptionsInGroupDispatch_cold_6(&v51);
LABEL_69:
      v20 = 0;
LABEL_71:
      v21 = 0;
      goto LABEL_43;
    }

    v18 = v17;
    v19 = MEMORY[0x1E695E9C0];
    v20 = CFArrayCreateMutable(*(v4 + 16), 0, MEMORY[0x1E695E9C0]);
    if (!v20)
    {
      sci_copyCompletelyCachedMediaSelectionOptionsInGroupDispatch_cold_5(&v51);
      goto LABEL_71;
    }

    v21 = CFArrayCreateMutable(*(v4 + 16), 0, v19);
    if (v21)
    {
      if (v50 == 1935832172 || v50 == 1986618469 || v50 == 1936684398)
      {
        for (j = 0; ; ++j)
        {
          Count = *(v4 + 56);
          if (Count)
          {
            Count = CFArrayGetCount(Count);
          }

          if (j >= Count)
          {
            break;
          }

          v24 = CFArrayGetValueAtIndex(*(v4 + 56), j);
          if (!v24)
          {
            sci_copyCompletelyCachedMediaSelectionOptionsInGroupDispatch_cold_3(&v51);
            goto LABEL_43;
          }

          v25 = v24;
          MediaGroupLocatorMap = FigAlternateGetMediaGroupLocatorMap(v24, v50);
          if (!MediaGroupLocatorMap || (v27 = CFDictionaryGetValue(MediaGroupLocatorMap, v18)) == 0 || (v28 = v27, PlaylistAlternateURL = CFDictionaryGetValue(v27, v12), StableStreamIdentifier = CFDictionaryGetValue(v28, v13), !PlaylistAlternateURL))
          {
            PlaylistAlternateURL = FigAlternateGetPlaylistAlternateURL(v25);
            StableStreamIdentifier = FigAlternateGetStableStreamIdentifier(v25);
            if (!PlaylistAlternateURL)
            {
              continue;
            }
          }

          v31 = StableStreamIdentifier;
          v32 = FigCFHTTPCreateURLString(PlaylistAlternateURL);
          if (!v32)
          {
            sci_copyCompletelyCachedMediaSelectionOptionsInGroupDispatch_cold_2(&v51);
            goto LABEL_43;
          }

          v33 = v32;
          CFArrayAppendValue(v20, v32);
          CFRelease(v33);
          if (v31)
          {
            CFArrayAppendValue(v21, v31);
          }
        }
      }

LABEL_45:
      v34 = CFRetain(v20);
      v35 = CFRetain(v21);
      v9 = 0;
      goto LABEL_46;
    }

    sci_copyCompletelyCachedMediaSelectionOptionsInGroupDispatch_cold_4(&v51);
LABEL_43:
    v9 = v51;
    if (!v51)
    {
      goto LABEL_45;
    }

    v34 = 0;
    v35 = 0;
LABEL_46:
    if (v20)
    {
      CFRelease(v20);
    }

    if (v21)
    {
      CFRelease(v21);
    }

    if (v9)
    {
      v37 = 0;
      v11 = v43;
    }

    else
    {
      v36 = sci_areAnyNetworkURLsOrStreamIDsCompletelyCached(v45, v34, v35, &v49 + 1);
      v11 = v43;
      if (v36)
      {
        v9 = v36;
        v37 = 0;
      }

      else
      {
        v47 = 0;
        FigCFDictionaryGetBooleanIfPresent();
        v9 = 0;
        if (v47)
        {
          v37 = v49;
        }

        else
        {
          v37 = HIBYTE(v49);
        }
      }
    }

    if (v34)
    {
      CFRelease(v34);
    }

    if (v35)
    {
      CFRelease(v35);
    }

    if (v9)
    {
      goto LABEL_78;
    }

    v10 = v41;
    if (v37)
    {
      CFArrayAppendValue(theArray, value);
    }

LABEL_62:
    ++v11;
    if (v10)
    {
      goto LABEL_13;
    }

LABEL_14:
    ;
  }

  v9 = isVideoPlayableOffline;
LABEL_78:
  v2 = v40;
  Mutable = theArray;
LABEL_85:
  if (Mutable)
  {
    CFRelease(Mutable);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  *(v2 + 8) = v9;
}

uint64_t FigCSSParserUtilitiesParseColor(const __CFAllocator *a1, const __CFString *a2, __CFArray **a3)
{
  valuePtr = 0;
  v15 = 0;
  v14 = 0;
  *a3 = 0;
  v5 = FigCSSParseColor(a2, &valuePtr, &v15 + 1, &v15, &v14);
  v6 = 0;
  v7 = 0;
  v8 = 0;
  v9 = 0;
  v10 = 0;
  if (v5)
  {
LABEL_4:
    *a3 = v6;
    if (!v10)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v11 = *MEMORY[0x1E695E480];
  v7 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberFloatType, &valuePtr);
  v8 = CFNumberCreate(v11, kCFNumberFloatType, &v15 + 4);
  v9 = CFNumberCreate(v11, kCFNumberFloatType, &v15);
  v10 = CFNumberCreate(v11, kCFNumberFloatType, &v14);
  Mutable = CFArrayCreateMutable(a1, 0, MEMORY[0x1E695E9C0]);
  if (Mutable)
  {
    v6 = Mutable;
    CFArrayAppendValue(Mutable, v10);
    CFArrayAppendValue(v6, v7);
    CFArrayAppendValue(v6, v8);
    CFArrayAppendValue(v6, v9);
    goto LABEL_4;
  }

  FigCSSParserUtilitiesParseColor_cold_1(&v17);
  v5 = v17;
  if (v10)
  {
LABEL_5:
    CFRelease(v10);
  }

LABEL_6:
  if (v7)
  {
    CFRelease(v7);
  }

  if (v8)
  {
    CFRelease(v8);
  }

  if (v9)
  {
    CFRelease(v9);
  }

  return v5;
}

void initMapFromCSSToCMTextMarkupFontFamily()
{
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  CFDictionaryAddValue(Mutable, @"default", *MEMORY[0x1E6960A38]);
  CFDictionaryAddValue(Mutable, @"serif", *MEMORY[0x1E6960A78]);
  CFDictionaryAddValue(Mutable, @"sans-serif", *MEMORY[0x1E6960A70]);
  CFDictionaryAddValue(Mutable, @"monospace", *MEMORY[0x1E6960A48]);
  CFDictionaryAddValue(Mutable, @"cursive", *MEMORY[0x1E6960A30]);
  CFDictionaryAddValue(Mutable, @"fantasy", *MEMORY[0x1E6960A40]);
  sMapFromCSSToCMTextMarkupFontFamily = Mutable;
}

CFComparisonResult OUTLINED_FUNCTION_1_142(const __CFString *a1)
{

  return CFStringCompare(a1, v1, 1uLL);
}

CFComparisonResult OUTLINED_FUNCTION_2_135(const __CFString *a1)
{

  return CFStringCompare(a1, v1, 1uLL);
}

CFNumberRef OUTLINED_FUNCTION_4_108@<X0>(int a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, CFAllocatorRef allocator)
{
  *(v17 - 116) = a1;

  return CFNumberCreate(allocator, kCFNumberSInt32Type, (v17 - 116));
}

__CFString *bapspTranscode_copyDebugDescription(uint64_t a1)
{
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  CFStringAppendFormat(Mutable, 0, @"<FigBufferedAirPlayAudioChainSubPipet %p>", a1);
  return Mutable;
}

uint64_t FigRenderPipelineCopyProperty(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  FigRenderPipelineGetFigBaseObject();
  v8 = v7;
  v9 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v9)
  {
    return 4294954514;
  }

  return v9(v8, a2, a3, a4);
}

uint64_t bapspTranscode_setLoudnessInfo(uint64_t a1, const void *a2, __int128 *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  target = 0;
  FigSimpleMutexLock();
  StreamBasicDescription = CMAudioFormatDescriptionGetStreamBasicDescription(*(DerivedStorage + 136));
  v7 = *(DerivedStorage + 120);
  *(DerivedStorage + 120) = a2;
  if (a2)
  {
    CFRetain(a2);
  }

  if (v7)
  {
    CFRelease(v7);
  }

  v8 = *(DerivedStorage + 120);
  if (!*(DerivedStorage + 128))
  {
    if (v8)
    {
      FigRenderPipelineGetFigBaseObject();
      v17 = v16;
      v18 = *(*(CMBaseObjectGetVTable() + 8) + 56);
      if (v18)
      {
        v18(v17, @"LoudnessInfo", v8);
      }
    }

    goto LABEL_14;
  }

  v9 = *MEMORY[0x1E698DA60];
  v10 = CFDictionaryContainsKey(*(DerivedStorage + 120), *MEMORY[0x1E698DA60]);
  v11 = MEMORY[0x1E695E480];
  v12 = 0;
  if (v10)
  {
    mFormatID = StreamBasicDescription->mFormatID;
    if (mFormatID > 1885547314)
    {
      if (mFormatID > 1902469938)
      {
        if (mFormatID > 2053319474)
        {
          v14 = mFormatID == 2053464883;
          v15 = 2053319475;
        }

        else
        {
          v14 = mFormatID == 1902469939;
          v15 = 2053202739;
        }
      }

      else if (mFormatID > 1902207794)
      {
        v14 = mFormatID == 1902207795;
        v15 = 1902324531;
      }

      else
      {
        v14 = mFormatID == 1885547315;
        v15 = 1885692723;
      }
    }

    else if (mFormatID > 1667575090)
    {
      if (mFormatID > 1700998450)
      {
        v14 = mFormatID == 1700998451;
        v15 = 1885430579;
      }

      else
      {
        v14 = mFormatID == 1667575091;
        v15 = 1700997939;
      }
    }

    else if (mFormatID > 1667326770)
    {
      v14 = mFormatID == 1667326771;
      v15 = 1667574579;
    }

    else
    {
      v14 = mFormatID == 1633889587;
      v15 = 1667312947;
    }

    if (v14 || mFormatID == v15)
    {
      values = CFDictionaryGetValue(*(DerivedStorage + 120), v9);
      v21 = CFDictionaryCreate(*v11, MEMORY[0x1E698DA60], &values, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      if (v21)
      {
        v12 = v21;
        bapspTranscode_setLoudnessInfo_cold_1();
        goto LABEL_33;
      }

LABEL_14:
      FigSimpleMutexUnlock();
      v19 = 0;
      goto LABEL_40;
    }
  }

LABEL_33:
  v22 = *v11;
  v23 = *MEMORY[0x1E6962DF0];
  v24 = *(DerivedStorage + 120);
  v30 = *a3;
  v31 = *(a3 + 2);
  v25 = FigBufferedAirPlayAudioChainSubPipeSampleBufferCreateWithTimeStampAndMarker(v22, v23, v24, &v30, &target);
  if (v25)
  {
LABEL_36:
    v19 = v25;
    goto LABEL_38;
  }

  CMSetAttachment(target, v23, *(DerivedStorage + 120), 0);
  CMSetAttachment(target, @"SBUFForAutoOrder", *MEMORY[0x1E695E4D0], 0);
  v26 = *(DerivedStorage + 80);
  v27 = target;
  v28 = *(*(CMBaseObjectGetVTable() + 16) + 8);
  if (v28)
  {
    v25 = v28(v26, v27);
    goto LABEL_36;
  }

  v19 = 4294954514;
LABEL_38:
  FigSimpleMutexUnlock();
  if (v12)
  {
    CFRelease(v12);
  }

LABEL_40:
  if (target)
  {
    CFRelease(target);
  }

  return v19;
}

uint64_t bapspTranscode_startAudioChain(uint64_t a1, CMTime *a2, CMTime *a3, opaqueCMSampleBuffer *a4, int a5, int a6, float a7)
{
  v30 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  if (*(DerivedStorage + 41))
  {
    goto LABEL_21;
  }

  if ((a2->flags & 0x1D) != 1)
  {
    bapspTranscode_startAudioChain_cold_1(&time);
    value_low = LODWORD(time.value);
    goto LABEL_23;
  }

  if (dword_1EAF175F0)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  Float32 = FigCFNumberCreateFloat32();
  if (!Float32)
  {
LABEL_21:
    value_low = 0;
LABEL_23:
    FigSimpleMutexUnlock();
    return value_low;
  }

  v15 = Float32;
  FigRenderPipelineGetFigBaseObject();
  v17 = v16;
  v18 = *(*(CMBaseObjectGetVTable() + 8) + 56);
  if (v18)
  {
    started = v18(v17, @"OfflineAudioQueueRate", v15);
    if (started)
    {
      goto LABEL_24;
    }

    if (a5)
    {
      started = FigAudioQueueOfflineMixerReset(*(DerivedStorage + 104), 0, 1);
      if (started)
      {
        goto LABEL_24;
      }
    }

    if (a6)
    {
      *&v27.value = *&a2->value;
      v27.epoch = a2->epoch;
      v20 = *(CMBaseObjectGetDerivedStorage() + 104);
      time = v27;
      v28 = **&MEMORY[0x1E6960C68];
      started = FigAudioQueueOfflineMixerStartRenderingForTimeRange(v20, &time, &v28);
      if (started)
      {
        goto LABEL_24;
      }
    }

    if (!a4)
    {
      goto LABEL_15;
    }

    bapspTranscode_updateLastSbufInfo(a1, a4);
    v21 = *(DerivedStorage + 64);
    v22 = *(*(CMBaseObjectGetVTable() + 16) + 8);
    if (v22)
    {
      started = v22(v21, a4);
      if (!started)
      {
LABEL_15:
        v23 = *(DerivedStorage + 112);
        v28 = *a2;
        v24 = *(*(CMBaseObjectGetVTable() + 16) + 24);
        if (v24)
        {
          time = v28;
          value_low = v24(v23, &time);
          if (!value_low)
          {
            *(DerivedStorage + 41) = 1;
          }

          goto LABEL_19;
        }

        goto LABEL_18;
      }

LABEL_24:
      value_low = started;
      goto LABEL_19;
    }
  }

LABEL_18:
  value_low = 4294954514;
LABEL_19:
  FigSimpleMutexUnlock();
  CFRelease(v15);
  return value_low;
}

uint64_t bapspTranscode_prepareToFinish(uint64_t a1, opaqueCMSampleBuffer *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!a2)
  {
    return 0;
  }

  v5 = DerivedStorage;
  bapspTranscode_updateLastSbufInfo(a1, a2);
  v6 = *(v5 + 64);
  v7 = *(*(CMBaseObjectGetVTable() + 16) + 8);
  if (!v7)
  {
    return 4294954514;
  }

  return v7(v6, a2);
}

CMTime *bapspTranscode_updateLastSbufInfo(uint64_t a1, opaqueCMSampleBuffer *a2)
{
  v20 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  CMSampleBufferGetOutputDuration(&time1, a2);
  value = time1.value;
  flags = time1.flags;
  timescale = time1.timescale;
  epoch = time1.epoch;
  result = CMSampleBufferGetOutputPresentationTimeStamp(&time1, a2);
  v18 = time1.value;
  v7 = time1.flags;
  v19 = time1.timescale;
  if (time1.flags)
  {
    v8 = time1.epoch;
    time1.value = value;
    time1.timescale = timescale;
    time1.flags = flags;
    time1.epoch = epoch;
    time2 = **&MEMORY[0x1E6960CC0];
    result = CMTimeCompare(&time1, &time2);
    if (result >= 1)
    {
      if (*(DerivedStorage + 156))
      {
        time1 = *(DerivedStorage + 144);
        time2.value = v18;
        time2.timescale = v19;
        time2.flags = v7;
        time2.epoch = v8;
        if (CMTimeCompare(&time1, &time2))
        {
          if (dword_1EAF175F0)
          {
            v13 = 0;
            type = OS_LOG_TYPE_DEFAULT;
            os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
            fig_log_call_emit_and_clean_up_after_send_and_compose();
          }

          v9 = MEMORY[0x1E6960C70];
          *(DerivedStorage + 144) = *MEMORY[0x1E6960C70];
          *(DerivedStorage + 160) = *(v9 + 16);
        }
      }

      if ((*(DerivedStorage + 156) & 1) == 0)
      {
        *(DerivedStorage + 144) = v18;
        *(DerivedStorage + 152) = v19;
        *(DerivedStorage + 156) = v7;
        *(DerivedStorage + 160) = v8;
      }

      time2 = *(DerivedStorage + 144);
      rhs.value = value;
      rhs.timescale = timescale;
      rhs.flags = flags;
      rhs.epoch = epoch;
      result = CMTimeAdd(&time1, &time2, &rhs);
      *(DerivedStorage + 144) = time1;
    }
  }

  return result;
}

void bapspTranscode_postNotification(const void *a1, uint64_t a2, const void *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a3)
  {
    CFRetain(a3);
  }

  if (a1)
  {
    CFRetain(a1);
  }

  v7 = *(DerivedStorage + 32);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = __bapspTranscode_postNotification_block_invoke;
  block[3] = &__block_descriptor_tmp_93;
  block[4] = a2;
  block[5] = a1;
  block[6] = a3;
  dispatch_async(v7, block);
}

void __bapspTranscode_postNotification_block_invoke(void *a1)
{
  CMNotificationCenterGetDefaultLocalCenter();
  CMNotificationCenterPostNotification();
  v2 = a1[6];
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = a1[5];
  if (v3)
  {

    CFRelease(v3);
  }
}

uint64_t bapspTranscode_terminateQueueWithEndMarker(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  target = 0;
  if (dword_1EAF175F0)
  {
    LODWORD(end.value) = 0;
    type = OS_LOG_TYPE_DEFAULT;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (CMSampleBufferCreate(*(DerivedStorage + 56), 0, 1u, 0, 0, 0, 0, 0, 0, 0, 0, &target))
  {
    bapspTranscode_terminateQueueWithEndMarker_cold_1(&range);
    value_low = LODWORD(range.start.value);
  }

  else
  {
    CMSetAttachment(target, *MEMORY[0x1E6960490], *MEMORY[0x1E695E4D0], 1u);
    start = **&MEMORY[0x1E6960CC0];
    end = start;
    CMTimeRangeFromTimeToTime(&range, &start, &end);
    v3 = CMTimeRangeCopyAsDictionary(&range, *MEMORY[0x1E695E480]);
    CMSetAttachment(target, *MEMORY[0x1E6962E10], v3, 1u);
    v4 = *(DerivedStorage + 64);
    v5 = target;
    v6 = *(*(CMBaseObjectGetVTable() + 16) + 8);
    if (v6)
    {
      v6(v4, v5);
    }

    *(DerivedStorage + 43) = 1;
    if (v3)
    {
      CFRelease(v3);
    }

    value_low = 0;
  }

  if (target)
  {
    CFRelease(target);
  }

  return value_low;
}

uint64_t __FigBufferedAirPlayAudioChainSubPipeIsSenderSideMixingArchitectureEnabled_block_invoke_1()
{
  result = FigGetCFPreferenceNumberWithDefault();
  _MergedGlobals_99 = result;
  return result;
}

CMTime *OUTLINED_FUNCTION_7_69@<X0>(int a1@<W8>, CMTime *lhs, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, CMTime *rhsa, int rhs_8, int rhs_12, uint64_t rhs_16, uint64_t a12, uint64_t lhsa, uint64_t lhs_8, uint64_t lhs_16, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  rhsa = *v22;
  rhs_8 = *(v22 + 8);
  rhs_12 = a1;
  rhs_16 = v21;

  return CMTimeAdd(&a21, &lhsa, &rhsa);
}

uint64_t OUTLINED_FUNCTION_12_49(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, __int16 a11, char a12, char a13, int a14)
{

  return fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
}

uint64_t OUTLINED_FUNCTION_13_40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, char a52, int a53)
{

  return fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
}

uint64_t OUTLINED_FUNCTION_20_29(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, __int16 a12, char a13, char a14, int a15)
{

  return fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
}

void OUTLINED_FUNCTION_21_27(void *value)
{

  CFDictionarySetValue(v2, v1, value);
}

uint64_t OUTLINED_FUNCTION_22_28(uint64_t result)
{
  *(v3 - 228) = 2048;
  *(v1 + 206) = v2;
  *(v3 - 218) = 2082;
  *(v3 - 216) = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_23_36(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, int a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, char a45)
{

  return fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
}

uint64_t OUTLINED_FUNCTION_24_23(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, int a18)
{

  return fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
}

uint64_t OUTLINED_FUNCTION_29_22(uint64_t a1)
{

  return FigSimpleMutexLock();
}

CFNumberRef OUTLINED_FUNCTION_30_21(uint64_t a1, uint64_t a2, const void *a3)
{

  return CFNumberCreate(v3, kCFNumberIntType, a3);
}

BOOL OUTLINED_FUNCTION_39_18(NSObject *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, int a14, __int16 a15, char a16, os_log_type_t type, int a18)
{

  return os_log_type_enabled(a1, type);
}

BOOL OUTLINED_FUNCTION_40_19(NSObject *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, __int16 a11, char a12, os_log_type_t type, int a14)
{

  return os_log_type_enabled(a1, type);
}

void OUTLINED_FUNCTION_41_20(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, CMAttachmentBearerRef target)
{
  v22 = *v19;
  v23 = *v20;

  CMSetAttachment(target, v22, v23, 0);
}

uint64_t OUTLINED_FUNCTION_42_20(const __CFAllocator *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, ...)
{
  va_start(va, a26);

  return FigBufferedAirPlayAudioChainSubPipeSampleBufferCreateWithTimeStampAndMarker(a1, v26, v27, va, &a18);
}

const void *OUTLINED_FUNCTION_45_16()
{

  return CFDictionaryGetValue(v1, v0);
}

uint64_t FigTTMLSetCreate(uint64_t a1, uint64_t a2, CFTypeRef *a3, CFTypeRef *a4)
{
  if (a4)
  {
    FigTTMLNodeGetClassID();
    v7 = CMDerivedObjectCreate();
    if (!v7)
    {
      FigBytePumpGetFigBaseObject();
      DerivedStorage = CMBaseObjectGetDerivedStorage();
      v9 = FigTTMLInitializeNodeBaseStorage(DerivedStorage, a3);
      if (v9)
      {
        return v9;
      }

      else
      {
        v7 = FigTTMLAddCurrentElementAttributesToDictionary(a2, *(DerivedStorage + 24));
        if (!v7)
        {
          *a3 = 0;
          a3[1] = 0;
          FigTTMLParseNode(a2, figTTMLSetConsumeChildNode, a3);
          v7 = v10;
          if (!v10)
          {
            *a4 = 0;
          }
        }
      }
    }
  }

  else
  {
    FigTTMLSetCreate_cold_1(&v12);
    return v12;
  }

  return v7;
}

uint64_t figTTMLSetConsumeChildNode(uint64_t a1, uint64_t *a2, void *a3)
{
  FigBytePumpGetFigBaseObject();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  result = FigTTMLSkipNode(a1, a2, *(DerivedStorage + 128));
  if (a3)
  {
    if (!result)
    {
      *a3 = 0;
    }
  }

  return result;
}

void figTTMLSet_Finalize()
{
  FigBytePumpGetFigBaseObject();
  DerivedStorage = CMBaseObjectGetDerivedStorage();

  FigTTMLReleaseNodeBaseStorage(DerivedStorage);
}

CFStringRef figTTMLSet_CopyDebugDesc()
{
  FigBytePumpGetFigBaseObject();
  CMBaseObjectGetDerivedStorage();
  v0 = FigCFCopyCompactDescription();
  v1 = CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"set: %@", v0);
  if (v0)
  {
    CFRelease(v0);
  }

  return v1;
}

uint64_t figTTMLSet_CopyChildNodeArray(const void *a1, CFMutableArrayRef *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a2)
  {
    v9 = CFGetAllocator(a1);
    *a2 = CFArrayCreateMutable(v9, 0, MEMORY[0x1E695E9C0]);
  }

  else
  {
    figTTMLSet_CopyChildNodeArray_cold_1(a1, 0, a3, a4, a5, a6, a7, a8, v11, v12, SHIDWORD(v12), vars0);
  }

  return 0;
}

uint64_t figTTMLSet_GetNodeType(uint64_t a1, _DWORD *a2)
{
  if (a2)
  {
    result = 0;
    *a2 = 1;
  }

  else
  {
    v6 = v2;
    v7 = v3;
    figTTMLSet_GetNodeType_cold_1(&v5);
    return v5;
  }

  return result;
}

uint64_t FigVideoCompositorCreateBasic(uint64_t a1, uint64_t a2, CFTypeRef *a3)
{
  FigVideoCompositorGetClassID();
  v4 = CMDerivedObjectCreate();
  if (!v4)
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    *(DerivedStorage + 80) = 1065353216;
    *(DerivedStorage + 384) = 0x7FFFFFFFLL;
    *(DerivedStorage + 416) = 0x7FFFFFFFLL;
    *(DerivedStorage + 96) = 1;
    *(DerivedStorage + 248) = 0;
    *(DerivedStorage + 256) = FigDispatchQueueCreateWithPriority();
    *(DerivedStorage + 264) = FigDispatchQueueCreateWithPriority();
    *(DerivedStorage + 272) = FigDispatchQueueCreateWithPriority();
    *(DerivedStorage + 280) = FigDispatchQueueCreateWithPriority();
    *(DerivedStorage + 288) = dispatch_group_create();
    *a3 = 0;
  }

  return v4;
}

void basicVideoCompositor_Finalize(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v3 = *(DerivedStorage + 256);
  if (v3)
  {
    dispatch_sync(v3, &__block_literal_global_77);
    dispatch_release(*(DerivedStorage + 256));
    *(DerivedStorage + 256) = 0;
  }

  v4 = *(DerivedStorage + 264);
  if (v4)
  {
    dispatch_sync(v4, &__block_literal_global_7_1);
    dispatch_release(*(DerivedStorage + 264));
    *(DerivedStorage + 264) = 0;
  }

  v5 = *(DerivedStorage + 272);
  if (v5)
  {
    dispatch_sync(v5, &__block_literal_global_10);
    dispatch_release(*(DerivedStorage + 272));
    *(DerivedStorage + 272) = 0;
  }

  v6 = *(DerivedStorage + 280);
  if (v6)
  {
    dispatch_sync(v6, &__block_literal_global_13);
    dispatch_release(*(DerivedStorage + 280));
    *(DerivedStorage + 280) = 0;
  }

  v7 = *(DerivedStorage + 288);
  if (v7)
  {
    dispatch_release(v7);
    *(DerivedStorage + 288) = 0;
  }

  v8 = *(DerivedStorage + 32);
  if (v8)
  {
    CFRelease(v8);
    *(DerivedStorage + 32) = 0;
  }

  v9 = *(DerivedStorage + 40);
  if (v9)
  {
    CFRelease(v9);
    *(DerivedStorage + 40) = 0;
  }

  v10 = *(DerivedStorage + 48);
  if (v10)
  {
    CFRelease(v10);
    *(DerivedStorage + 48) = 0;
  }

  v11 = *(DerivedStorage + 56);
  if (v11)
  {
    CFRelease(v11);
    *(DerivedStorage + 56) = 0;
  }

  v12 = *(DerivedStorage + 64);
  if (v12)
  {
    CFRelease(v12);
    *(DerivedStorage + 64) = 0;
  }

  v13 = *(DerivedStorage + 72);
  if (v13)
  {
    CFRelease(v13);
    *(DerivedStorage + 72) = 0;
  }

  v14 = *(DerivedStorage + 104);
  if (v14)
  {
    CFRelease(v14);
    *(DerivedStorage + 104) = 0;
  }

  v15 = *(DerivedStorage + 160);
  if (v15)
  {
    CFRelease(v15);
    *(DerivedStorage + 160) = 0;
  }

  v16 = *(DerivedStorage + 88);
  if (v16)
  {
    CFRelease(v16);
    *(DerivedStorage + 88) = 0;
  }

  bvc_releaseLayerArrays(a1);
}

__CFString *basicVideoCompositor_CopyDebugDescription(const void *a1)
{
  v2 = CFGetAllocator(a1);
  Mutable = CFStringCreateMutable(v2, 0);
  cf = 0;
  v4 = CFGetRetainCount(a1);
  v5 = CFGetAllocator(a1);
  CFStringAppendFormat(Mutable, 0, @"<FigVideoCompositor_Basic %p retainCount: %ld allocator: %p ", a1, v4, v5);
  bvc_copyPerformanceDictionary(a1, &cf);
  if (cf)
  {
    CFStringAppendFormat(Mutable, 0, @", performanceDictionary %@", cf);
    if (cf)
    {
      CFRelease(cf);
    }
  }

  CFStringAppendFormat(Mutable, 0, @">");
  return Mutable;
}

double basicVideoCompositor_CopyProperty(uint64_t a1, const void *a2, const __CFAllocator *a3, CFTypeRef *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (CFEqual(a2, @"RenderDimensions"))
  {
    DictionaryRepresentation = CGSizeCreateDictionaryRepresentation(*DerivedStorage);
LABEL_3:
    *a4 = DictionaryRepresentation;
    return result;
  }

  if (CFEqual(a2, @"RenderPixelAspectRatio"))
  {
    v12 = *(DerivedStorage + 32);
    goto LABEL_16;
  }

  if (CFEqual(a2, @"RenderEdgeProcessingPixels"))
  {
    v12 = *(DerivedStorage + 40);
    goto LABEL_16;
  }

  if (CFEqual(a2, @"DestinationPixelBufferDesiredAttributes"))
  {
    v12 = *(DerivedStorage + 48);
    goto LABEL_16;
  }

  if (CFEqual(a2, @"DestinationPixelBufferDesiredYCbCrMatrix"))
  {
    v12 = *(DerivedStorage + 56);
    goto LABEL_16;
  }

  if (CFEqual(a2, @"DestinationPixelBufferDesiredColorPrimaries"))
  {
    v12 = *(DerivedStorage + 64);
    goto LABEL_16;
  }

  if (CFEqual(a2, @"DestinationPixelBufferDesiredTransferFunction"))
  {
    v12 = *(DerivedStorage + 72);
LABEL_16:
    *a4 = v12;
    if (v12)
    {
      CFRetain(v12);
    }

    return result;
  }

  if (CFEqual(a2, @"SourcePixelBufferAttributes"))
  {

    bvc_createPixelBufferAttributesDictionary(a3, a4);
    return result;
  }

  if (CFEqual(a2, @"RenderScale"))
  {
    DictionaryRepresentation = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberFloatType, (DerivedStorage + 80));
    goto LABEL_3;
  }

  if (CFEqual(a2, @"CanApplyRenderScale"))
  {
    DictionaryRepresentation = *MEMORY[0x1E695E4D0];
    if (!*MEMORY[0x1E695E4D0])
    {
      goto LABEL_3;
    }

    goto LABEL_30;
  }

  if (CFEqual(a2, @"PixelBufferPoolSharingID"))
  {
    DictionaryRepresentation = *(DerivedStorage + 88);
    if (!DictionaryRepresentation)
    {
      goto LABEL_3;
    }

LABEL_30:
    DictionaryRepresentation = CFRetain(DictionaryRepresentation);
    goto LABEL_3;
  }

  if (CFEqual(a2, @"LoopTimeRange"))
  {
    v13 = *MEMORY[0x1E695E480];
    v14 = *(DerivedStorage + 328);
    *&v16.start.value = *(DerivedStorage + 312);
    *&v16.start.epoch = v14;
    *&v16.duration.timescale = *(DerivedStorage + 344);
    DictionaryRepresentation = CMTimeRangeCopyAsDictionary(&v16, v13);
    goto LABEL_3;
  }

  if (CFEqual(a2, @"PerformanceDictionary"))
  {
    bvc_copyPerformanceDictionary(a1, a4);
  }

  else
  {
    if (CFEqual(a2, @"SourceColorConformanceCapabilityLevel"))
    {
      DictionaryRepresentation = FigCFNumberCreateUInt32();
      goto LABEL_3;
    }

    if (CFEqual(a2, @"SupportsSpatialSourceBuffers"))
    {
      *a4 = *MEMORY[0x1E695E4C0];
    }

    else
    {
      emitter = fig_log_get_emitter();

      return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 4294954512, "<<<< VideoCompositor >>>>", 1746, v4);
    }
  }

  return result;
}

void basicVideoCompositor_SetProperty(uint64_t a1, const void *a2, const void *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (CFEqual(@"RenderDimensions", a2))
  {
    size.start.value = 0;
    *&size.start.timescale = 0;
    if (!a3 || (TypeID = CFDictionaryGetTypeID(), TypeID != CFGetTypeID(a3)) || !CGSizeMakeWithDictionaryRepresentation(a3, &size) || *&size.start.value <= 0.0 || *&size.start.timescale <= 0.0)
    {
      emitter = fig_log_get_emitter();
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 4294954516, "<<<< VideoCompositor >>>>", 1894, v3);
      return;
    }

    *DerivedStorage = *&size.start.value;
    goto LABEL_48;
  }

  if (CFEqual(@"RenderPixelAspectRatio", a2))
  {
    if (!a3)
    {
      v16 = *(DerivedStorage + 32);
      *(DerivedStorage + 32) = 0;
      if (!v16)
      {
        goto LABEL_48;
      }

      goto LABEL_47;
    }

    v10 = CFDictionaryGetTypeID();
    if (v10 != CFGetTypeID(a3) || (Value = CFDictionaryGetValue(a3, *MEMORY[0x1E6965EF0]), v12 = CFDictionaryGetValue(a3, *MEMORY[0x1E6965F00]), LODWORD(size.start.value) = 0, valuePtr = 0, !Value) || (v13 = v12, v14 = CFNumberGetTypeID(), v14 != CFGetTypeID(Value)) || (CFNumberGetValue(Value, kCFNumberIntType, &size), SLODWORD(size.start.value) < 1) || !v13 || (v15 = CFNumberGetTypeID(), v15 != CFGetTypeID(v13)) || (CFNumberGetValue(v13, kCFNumberIntType, &valuePtr), valuePtr < 1))
    {
      v17 = fig_log_get_emitter();
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v17, 4294954516, "<<<< VideoCompositor >>>>", 1903, v3);
      return;
    }

    v16 = *(DerivedStorage + 32);
    *(DerivedStorage + 32) = a3;
    goto LABEL_34;
  }

  if (CFEqual(@"RenderEdgeProcessingPixels", a2))
  {
    if (a3)
    {
      v18 = CFArrayGetTypeID();
      if (v18 == CFGetTypeID(a3) && CFArrayGetCount(a3) == 4)
      {
        v19 = 0;
        while (1)
        {
          v20 = CFNumberGetTypeID();
          ValueAtIndex = CFArrayGetValueAtIndex(a3, v19);
          if (v20 != CFGetTypeID(ValueAtIndex))
          {
            break;
          }

          if (++v19 == 4)
          {
            v16 = *(DerivedStorage + 40);
            *(DerivedStorage + 40) = a3;
            goto LABEL_34;
          }
        }
      }

      v23 = fig_log_get_emitter();
      v24 = v3;
      v25 = 4294954516;
      v26 = 1912;
      goto LABEL_37;
    }

    v16 = *(DerivedStorage + 40);
    *(DerivedStorage + 40) = 0;
    if (!v16)
    {
      goto LABEL_48;
    }

LABEL_47:
    CFRelease(v16);
    goto LABEL_48;
  }

  if (CFEqual(@"DestinationPixelBufferDesiredAttributes", a2))
  {
    if (a3)
    {
      v22 = CFDictionaryGetTypeID();
      if (v22 == CFGetTypeID(a3))
      {
        v16 = *(DerivedStorage + 48);
        *(DerivedStorage + 48) = a3;
LABEL_34:
        CFRetain(a3);
        if (!v16)
        {
          goto LABEL_48;
        }

        goto LABEL_47;
      }

      v23 = fig_log_get_emitter();
      v24 = v3;
      v25 = 4294954516;
      v26 = 1922;
      goto LABEL_37;
    }

    v16 = *(DerivedStorage + 48);
    *(DerivedStorage + 48) = 0;
    if (!v16)
    {
LABEL_48:
      v29 = *(DerivedStorage + 104);
      if (v29)
      {
        CFRelease(v29);
        *(DerivedStorage + 104) = 0;
      }

      *(DerivedStorage + 96) = 1;
      return;
    }

    goto LABEL_47;
  }

  if (CFEqual(@"DestinationPixelBufferDesiredYCbCrMatrix", a2))
  {
    if (!a3)
    {
      v28 = *(DerivedStorage + 56);
      *(DerivedStorage + 56) = 0;
      goto LABEL_72;
    }

    v27 = CFStringGetTypeID();
    if (v27 == CFGetTypeID(a3))
    {
      v28 = *(DerivedStorage + 56);
      *(DerivedStorage + 56) = a3;
LABEL_63:
      CFRetain(a3);
      goto LABEL_72;
    }

    v23 = fig_log_get_emitter();
    v24 = v3;
    v25 = 4294954516;
    v26 = 1929;
    goto LABEL_37;
  }

  if (CFEqual(@"DestinationPixelBufferDesiredColorPrimaries", a2))
  {
    if (a3)
    {
      v30 = CFStringGetTypeID();
      if (v30 == CFGetTypeID(a3))
      {
        v28 = *(DerivedStorage + 64);
        *(DerivedStorage + 64) = a3;
        goto LABEL_63;
      }

      v23 = fig_log_get_emitter();
      v24 = v3;
      v25 = 4294954516;
      v26 = 1936;
LABEL_37:

      FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v23, v25, "<<<< VideoCompositor >>>>", v26, v24);
      return;
    }

    v28 = *(DerivedStorage + 64);
    *(DerivedStorage + 64) = 0;
LABEL_72:
    if (v28)
    {
      CFRelease(v28);
    }

    return;
  }

  if (CFEqual(@"DestinationPixelBufferDesiredTransferFunction", a2))
  {
    if (a3)
    {
      v31 = CFStringGetTypeID();
      if (v31 == CFGetTypeID(a3))
      {
        v28 = *(DerivedStorage + 72);
        *(DerivedStorage + 72) = a3;
        goto LABEL_63;
      }

      v23 = fig_log_get_emitter();
      v24 = v3;
      v25 = 4294954516;
      v26 = 1943;
      goto LABEL_37;
    }

    v28 = *(DerivedStorage + 72);
    *(DerivedStorage + 72) = 0;
    goto LABEL_72;
  }

  if (CFEqual(@"RenderScale", a2))
  {
    LODWORD(size.start.value) = 1065353216;
    if (a3)
    {
      v32 = CFGetTypeID(a3);
      if (v32 != CFNumberGetTypeID())
      {
        v38 = fig_log_get_emitter();
        FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v38, 4294954516, "<<<< VideoCompositor >>>>", 1959, v3);
        goto LABEL_82;
      }

      CFNumberGetValue(a3, kCFNumberFloatType, &size);
      v33 = *&size.start.value;
      if (*&size.start.value <= 0.0)
      {
        v34 = fig_log_get_emitter();
        FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v34, 4294954516, "<<<< VideoCompositor >>>>", 1955, v3);
LABEL_82:
        if (v35)
        {
          return;
        }

        v33 = *&size.start.value;
      }
    }

    else
    {
      v33 = 1.0;
    }

    *(DerivedStorage + 80) = v33;
    goto LABEL_48;
  }

  if (CFEqual(@"ClientPID", a2))
  {
    if (!a3)
    {
      *(DerivedStorage + 252) = 0;
      goto LABEL_96;
    }

    v36 = CFGetTypeID(a3);
    if (v36 != CFNumberGetTypeID())
    {
      return;
    }

    v37 = (DerivedStorage + 252);
LABEL_89:
    CFNumberGetValue(a3, kCFNumberSInt32Type, v37);
LABEL_96:
    basicVideoCompositor_updateDispatchQueuesClientPidAndWorkerThreadPriority(a1);
    return;
  }

  if (CFEqual(@"WorkerThreadPriority", a2))
  {
    if (!a3)
    {
      *(DerivedStorage + 248) = 0;
      goto LABEL_96;
    }

    v39 = CFGetTypeID(a3);
    if (v39 != CFNumberGetTypeID())
    {
      return;
    }

    v37 = (DerivedStorage + 248);
    goto LABEL_89;
  }

  if (!CFEqual(@"HighQualityRendering", a2))
  {
    if (!CFEqual(@"PixelBufferPoolSharingID", a2))
    {
      if (CFEqual(@"LoopTimeRange", a2))
      {
        if (!a3)
        {
          v44 = MEMORY[0x1E6960C98];
          v45 = *(MEMORY[0x1E6960C98] + 16);
          *(DerivedStorage + 312) = *MEMORY[0x1E6960C98];
          *(DerivedStorage + 328) = v45;
          *(DerivedStorage + 344) = *(v44 + 32);
          return;
        }

        v41 = CFGetTypeID(a3);
        if (v41 == CFDictionaryGetTypeID())
        {
          v42 = (DerivedStorage + 312);
          CMTimeRangeMakeFromDictionary(&size, a3);
          v43 = *&size.start.epoch;
          *v42 = *&size.start.value;
          v42[1] = v43;
          v42[2] = *&size.duration.timescale;
          return;
        }

        v23 = fig_log_get_emitter();
        v24 = v3;
        v25 = 4294954516;
        v26 = 2020;
      }

      else
      {
        v23 = fig_log_get_emitter();
        v24 = v3;
        v25 = 4294954512;
        v26 = 2024;
      }

      goto LABEL_37;
    }

    v28 = *(DerivedStorage + 88);
    *(DerivedStorage + 88) = a3;
    if (!a3)
    {
      goto LABEL_72;
    }

    goto LABEL_63;
  }

  if (!a3)
  {
    goto LABEL_104;
  }

  v40 = CFGetTypeID(a3);
  if (v40 != CFBooleanGetTypeID())
  {
    fig_log_get_emitter();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v46, LODWORD(size.start.value), size.start.timescale);
  }

  if (CFEqual(a3, *MEMORY[0x1E695E4D0]))
  {
    *(DerivedStorage + 172) = 1;
  }

  else
  {
LABEL_104:
    *(DerivedStorage + 172) = 0;
  }
}

void bvc_releaseLayerArrays(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v2 = DerivedStorage;
  v3 = *(DerivedStorage + 176);
  if (v3)
  {
    v4 = *(DerivedStorage + 184);
    do
    {
      if (*v4)
      {
        CFRelease(*v4);
        *v4 = 0;
      }

      ++v4;
      --v3;
    }

    while (v3);
    v5 = *(v2 + 176);
    if (v5)
    {
      v6 = *(v2 + 192);
      do
      {
        if (*v6)
        {
          CFRelease(*v6);
          *v6 = 0;
        }

        ++v6;
        --v5;
      }

      while (v5);
      v7 = *(v2 + 176);
      if (v7)
      {
        v8 = *(v2 + 200);
        do
        {
          if (*v8)
          {
            CFRelease(*v8);
            *v8 = 0;
          }

          ++v8;
          --v7;
        }

        while (v7);
        v9 = *(v2 + 176);
        if (v9)
        {
          v10 = *(v2 + 208);
          do
          {
            if (*v10)
            {
              CFRelease(*v10);
              *v10 = 0;
            }

            ++v10;
            --v9;
          }

          while (v9);
          v11 = *(v2 + 176);
          if (v11)
          {
            v12 = *(v2 + 232);
            do
            {
              if (*v12)
              {
                CFRelease(*v12);
                *v12 = 0;
              }

              ++v12;
              --v11;
            }

            while (v11);
            v13 = *(v2 + 176);
            if (v13)
            {
              v14 = *(v2 + 240);
              do
              {
                if (*v14)
                {
                  CFRelease(*v14);
                  *v14 = 0;
                }

                ++v14;
                --v13;
              }

              while (v13);
            }
          }
        }
      }
    }
  }

  free(*(v2 + 184));
  *(v2 + 184) = 0;
  free(*(v2 + 192));
  *(v2 + 192) = 0;
  free(*(v2 + 200));
  *(v2 + 200) = 0;
  free(*(v2 + 208));
  *(v2 + 208) = 0;
  free(*(v2 + 216));
  *(v2 + 216) = 0;
  free(*(v2 + 224));
  *(v2 + 224) = 0;
  free(*(v2 + 232));
  *(v2 + 232) = 0;
  free(*(v2 + 240));
  *(v2 + 240) = 0;
}

void bvc_copyPerformanceDictionary(uint64_t a1, CFDictionaryRef *a2)
{
  v26 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v25 = 0;
    v24 = 0u;
    v23 = 0u;
    v22 = 0u;
    v21 = 0u;
    v20 = 0u;
    v19 = 0u;
    v11 = 0u;
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v17 = 0;
    v9 = 0.0;
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    keys[0] = @"NumberOfSourceFramesPassedThrough";
    v4 = *MEMORY[0x1E695E480];
    values[0] = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberIntType, (DerivedStorage + 360));
    keys[1] = @"NumberOfSinglePassCompositions";
    values[1] = CFNumberCreate(v4, kCFNumberIntType, (DerivedStorage + 364));
    keys[2] = @"NumberOfMultiPassCompositions";
    values[2] = CFNumberCreate(v4, kCFNumberIntType, (DerivedStorage + 368));
    valuePtr = *(DerivedStorage + 376) + *(DerivedStorage + 372) + *(DerivedStorage + 380);
    keys[3] = @"TotalNumberOfLayers";
    values[3] = CFNumberCreate(v4, kCFNumberIntType, &valuePtr);
    keys[4] = @"TotalNumberOfLayersSkipped";
    values[4] = CFNumberCreate(v4, kCFNumberIntType, (DerivedStorage + 372));
    keys[5] = @"TotalNumberOfLayersComposedUsingFastPath";
    values[5] = CFNumberCreate(v4, kCFNumberIntType, (DerivedStorage + 376));
    keys[6] = @"TotalNumberOfLayersComposedUsingSlowPath";
    values[6] = CFNumberCreate(v4, kCFNumberIntType, (DerivedStorage + 380));
    if (*(DerivedStorage + 408) < 1)
    {
      v5 = 7;
    }

    else
    {
      v9 = (*(DerivedStorage + 384) / 1000000.0);
      *&v19 = @"MinPreprocessingTime";
      *&v11 = CFNumberCreate(v4, kCFNumberDoubleType, &v9);
      v9 = (*(DerivedStorage + 392) / 1000000.0);
      *(&v19 + 1) = @"MaxPreprocessingTime";
      *(&v11 + 1) = CFNumberCreate(v4, kCFNumberDoubleType, &v9);
      v9 = (*(DerivedStorage + 400) / (*(DerivedStorage + 408) * 1000000.0));
      *&v20 = @"AveragePreprocessingTime";
      *&v12 = CFNumberCreate(v4, kCFNumberDoubleType, &v9);
      v5 = 10;
    }

    if (*(DerivedStorage + 440) >= 1)
    {
      v9 = (*(DerivedStorage + 416) / 1000000.0);
      keys[v5] = @"MinProcessingTime";
      values[v5] = CFNumberCreate(v4, kCFNumberDoubleType, &v9);
      v9 = (*(DerivedStorage + 424) / 1000000.0);
      keys[v5 + 1] = @"MaxProcessingTime";
      values[v5 + 1] = CFNumberCreate(v4, kCFNumberDoubleType, &v9);
      v9 = (*(DerivedStorage + 432) / (*(DerivedStorage + 440) * 1000000.0));
      keys[v5 + 2] = @"AverageProcessingTime";
      values[v5 + 2] = CFNumberCreate(v4, kCFNumberDoubleType, &v9);
      v5 += 3;
    }

    v6 = v5;
    v7 = values;
    *a2 = CFDictionaryCreate(v4, keys, values, v6, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    do
    {
      if (*v7)
      {
        CFRelease(*v7);
      }

      ++v7;
      --v6;
    }

    while (v6);
  }
}

uint64_t bvc_createPixelBufferAttributesDictionary(const __CFAllocator *a1, CFTypeRef *a2)
{
  v17 = *MEMORY[0x1E69E9840];
  valuePtr = *"v024f024ARGB ";
  Mutable = CFDictionaryCreateMutable(a1, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (Mutable)
  {
    v5 = Mutable;
    v6 = CFArrayCreateMutable(a1, 0, MEMORY[0x1E695E9C0]);
    if (v6)
    {
      v7 = v6;
      v8 = *MEMORY[0x1E695E480];
      p_valuePtr = &valuePtr;
      v10 = 4;
      do
      {
        v11 = CFNumberCreate(v8, kCFNumberSInt32Type, p_valuePtr);
        if (!v11)
        {
          bvc_createPixelBufferAttributesDictionary_cold_1(v5, v7, &v15);
          return v15;
        }

        v12 = v11;
        CFArrayAppendValue(v7, v11);
        CFRelease(v12);
        p_valuePtr = (p_valuePtr + 4);
        --v10;
      }

      while (v10);
      CFDictionaryAddValue(v5, *MEMORY[0x1E6966130], v7);
      CFRelease(v7);
      FigGetAlignmentForIOSurfaceOutput();
      PixelBufferAttributesWithIOSurfaceSupport = FigCreatePixelBufferAttributesWithIOSurfaceSupport();
      if (!PixelBufferAttributesWithIOSurfaceSupport)
      {
        *a2 = 0;
      }
    }

    else
    {
      bvc_createPixelBufferAttributesDictionary_cold_2(&v15);
      PixelBufferAttributesWithIOSurfaceSupport = v15;
    }

    CFRelease(v5);
  }

  else
  {
    bvc_createPixelBufferAttributesDictionary_cold_3(&v15);
    return v15;
  }

  return PixelBufferAttributesWithIOSurfaceSupport;
}

uint64_t bvc_CFDictionarySetInt(__CFDictionary *a1, const void *a2, int a3)
{
  valuePtr = a3;
  v5 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberIntType, &valuePtr);
  if (v5)
  {
    CFDictionarySetValue(a1, a2, v5);
    v6 = 0;
  }

  else
  {
    bvc_CFDictionarySetInt_cold_1(&v9);
    v6 = v9;
  }

  CFRelease(v5);
  return v6;
}

uint64_t basicVideoCompositor_updateDispatchQueuesClientPidAndWorkerThreadPriority(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (DerivedStorage[32])
  {
    FigDispatchQueueSetPriorityAndClientPID();
  }

  if (DerivedStorage[33])
  {
    FigDispatchQueueSetPriorityAndClientPID();
  }

  if (DerivedStorage[34])
  {
    FigDispatchQueueSetPriorityAndClientPID();
  }

  result = DerivedStorage[35];
  if (result)
  {

    return FigDispatchQueueSetPriorityAndClientPID();
  }

  return result;
}

uint64_t basicVideoCompositor_RenderFrame(const void *a1, int a2, uint64_t a3, CVBufferRef *a4, uint64_t a5, uint64_t a6, uint64_t a7, const __CFDictionary *a8, uint64_t a9, uint64_t a10)
{
  v352 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v14 = DerivedStorage;
  v15 = *MEMORY[0x1E695EFD0];
  v16 = *(MEMORY[0x1E695EFD0] + 16);
  *&v340.a = *MEMORY[0x1E695EFD0];
  *&v340.c = v16;
  v17 = *(MEMORY[0x1E695EFD0] + 32);
  *&v340.tx = v17;
  v336 = 0;
  v337 = &v336;
  v338 = 0x2000000000;
  v339 = 0;
  v332 = 0;
  v333 = &v332;
  v334 = 0x2000000000;
  v335 = 0;
  if (!DerivedStorage)
  {
    basicVideoCompositor_RenderFrame_cold_11(&v349);
LABEL_372:
    v240 = 0;
    v257 = 0;
    v241 = 0;
    v258 = 0;
    v259 = 0;
    v30 = 0;
LABEL_379:
    a_low = LODWORD(v349.a);
    goto LABEL_348;
  }

  if (!*(DerivedStorage + 296))
  {
    basicVideoCompositor_RenderFrame_cold_10(&v349);
    goto LABEL_372;
  }

  if (*DerivedStorage == 0.0 || *(DerivedStorage + 8) == 0.0)
  {
    fig_log_get_emitter();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v285, v286, v287);
    a_low = v102;
    goto LABEL_361;
  }

  *v299 = v17;
  v303 = v16;
  v306 = v15;
  if (*(DerivedStorage + 96))
  {
    v18 = CMBaseObjectGetDerivedStorage();
    v20 = (v18 + 160);
    v19 = *(v18 + 160);
    if (v19)
    {
      CFRelease(v19);
      *v20 = 0;
    }

    v349.a = 0.0;
    t1.a = 0.0;
    v21 = FigVideoCompositorUtilityCopyRenderPixelBufferDimensionsAndCleanAperture(*(v18 + 32), *(v18 + 40), &v349, &t1, v18 + 112, v20, *v18, *(v18 + 8), *(v18 + 80));
    if (v21)
    {
      a_low = v21;
      v240 = 0;
      v257 = 0;
      v241 = 0;
      v258 = 0;
      v259 = 0;
      v30 = 0;
      goto LABEL_348;
    }

    a = t1.a;
    *(v18 + 16) = v349.a;
    *(v18 + 24) = a;
    *(v18 + 168) = 875704438;
    *(v14 + 96) = 0;
  }

  v23 = 0.0;
  cf = *MEMORY[0x1E695E4D0];
  Value = CFDictionaryGetValue(a8, @"ContainsTweening");
  if (cf == Value)
  {
    *&v349.a = *a9;
    v349.c = *(a9 + 16);
    FigVideoCompositionInstructionGetNormalizedTime(a8, &v349);
    v23 = v24;
  }

  v25 = CFDictionaryGetValue(a8, @"LayerStack");
  v313 = a1;
  v292 = a8;
  if (v25 && (v26 = v25, v27 = CFArrayGetTypeID(), v27 == CFGetTypeID(v26)))
  {
    v28 = CFArrayGetCount(v26);
    v29 = malloc_type_calloc(v28, 0x160uLL, 0x1020040E645271BuLL);
    v30 = v29;
    if (!v29)
    {
      v240 = 0;
      v257 = 0;
      v241 = 0;
      v258 = 0;
      v259 = 0;
      a_low = 4294954510;
      goto LABEL_348;
    }

    if (v28 >= 1)
    {
      v295 = v28;
      v31 = 0;
      count = 0;
      v32 = v29;
      v325 = v29;
      while (1)
      {
        LODWORD(valuePtr.a) = 0;
        ValueAtIndex = CFArrayGetValueAtIndex(v26, v31);
        if (!ValueAtIndex || (v34 = ValueAtIndex, TypeID = CFDictionaryGetTypeID(), TypeID != CFGetTypeID(v34)))
        {
          basicVideoCompositor_RenderFrame_cold_1(&v349);
          goto LABEL_345;
        }

        v36 = CFDictionaryGetValue(v34, @"SourceVideoTrackID");
        if (!v36 || (v37 = v36, v38 = CFNumberGetTypeID(), v38 != CFGetTypeID(v37)))
        {
          basicVideoCompositor_RenderFrame_cold_2(&v349);
          goto LABEL_345;
        }

        CFNumberGetValue(v37, kCFNumberSInt32Type, &valuePtr);
        if (a2 < 1)
        {
LABEL_344:
          basicVideoCompositor_RenderFrame_cold_3(&v349);
          goto LABEL_345;
        }

        v39 = 0;
        while (*(a3 + 4 * v39) != LODWORD(valuePtr.a))
        {
          if (a2 == ++v39)
          {
            goto LABEL_344;
          }
        }

        v40 = a4[v39];
        *v32 = v40;
        *(v32 + 8) = v39;
        if (!v40)
        {
          v30 = v325;
          goto LABEL_63;
        }

        *(v32 + 32) = v306;
        *(v32 + 48) = v303;
        *(v32 + 64) = *v299;
        *(v32 + 24) = 1065353216;
        v41 = *(MEMORY[0x1E695F040] + 16);
        *(v32 + 128) = *MEMORY[0x1E695F040];
        *(v32 + 144) = v41;
        *(v32 + 16) = v31;
        if (cf != Value || (v42 = CFDictionaryGetValue(v34, @"TweenedAffineMatrix")) == 0)
        {
LABEL_73:
          v101 = 0;
          goto LABEL_74;
        }

        v43 = v42;
        v44 = CFArrayGetCount(v42);
        if (v44 < 4 || (v45 = v44, (v44 & 1) != 0))
        {
          fig_log_get_emitter();
          FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v285, v286, v287);
          if (!v46)
          {
            goto LABEL_32;
          }

          a_low = v46;
          goto LABEL_346;
        }

        v97 = 0.0;
        v98 = 1;
        v99 = 0.0;
        while (1)
        {
          t2.a = 0.0;
          v346.a = 0.0;
          memset(&v349, 0, sizeof(v349));
          v100 = CFArrayGetValueAtIndex(v43, v98);
          FigGetCGAffineTransformFrom3x2MatrixArray(v100, &v349.a);
          t1 = v349;
          FigVideoCompositionInstructionCGAffineTransformDecompose(&t1, 1, 0, 0, &t2.a, &v346.a, 0);
          if (v99 == 0.0)
          {
            v99 = t2.a;
          }

          else if (vabdd_f64(v99, t2.a) > 0.001)
          {
            goto LABEL_75;
          }

          if (v97 != 0.0)
          {
            break;
          }

          v97 = v346.a;
LABEL_72:
          v98 += 2;
          if (v98 >= v45)
          {
            goto LABEL_73;
          }
        }

        if (vabdd_f64(v97, v346.a) <= 0.001)
        {
          goto LABEL_72;
        }

LABEL_75:
        v101 = 1;
LABEL_74:
        *(v32 + 329) = v101;
LABEL_32:
        v47 = CFDictionaryGetValue(v34, @"ConstantAffineMatrix");
        if (v47)
        {
          v48 = v47;
          v49 = CFArrayGetTypeID();
          if (v49 == CFGetTypeID(v48))
          {
            FigGetCGAffineTransformFrom3x2MatrixArray(v48, &v349.a);
            v51 = *&v349.c;
            v50 = *&v349.tx;
            *(v32 + 32) = *&v349.a;
            *(v32 + 48) = v51;
            *(v32 + 64) = v50;
            goto LABEL_35;
          }

          basicVideoCompositor_RenderFrame_cold_4(&v349);
LABEL_345:
          a_low = LODWORD(v349.a);
LABEL_346:
          v30 = v325;
LABEL_347:
          v240 = 0;
          v257 = 0;
          v241 = 0;
          v258 = 0;
          v259 = 0;
          goto LABEL_348;
        }

LABEL_35:
        v52 = CFDictionaryGetValue(v34, @"ConstantOpacity");
        if (v52)
        {
          v53 = v52;
          v54 = CFNumberGetTypeID();
          if (v54 == CFGetTypeID(v53))
          {
            LODWORD(v349.a) = 0;
            CFNumberGetValue(v53, kCFNumberFloat32Type, &v349);
            *(v32 + 24) = LODWORD(v349.a);
          }
        }

        v55 = CFDictionaryGetValue(v34, @"ConstantCropRectangle");
        if (v55)
        {
          v56 = v55;
          v57 = CFDictionaryGetTypeID();
          if (v57 == CFGetTypeID(v56) && !CGRectMakeWithDictionaryRepresentation(v56, (v32 + 128)))
          {
            basicVideoCompositor_RenderFrame_cold_5(&v349);
            goto LABEL_345;
          }
        }

        if (cf == Value)
        {
          v58 = CFDictionaryGetValue(v34, @"TweenedAffineMatrix");
          if (v58 && (v59 = v58, v60 = CFArrayGetTypeID(), v60 == CFGetTypeID(v59)))
          {
            FigVideoCompositionInstructionEvaluateTweenedAffineMatrix(v59, &v349, v23);
            v62 = *&v349.c;
            v61 = *&v349.tx;
            *(v32 + 32) = *&v349.a;
            *(v32 + 48) = v62;
            *(v32 + 64) = v61;
            v63 = 1;
          }

          else
          {
            v63 = 0;
          }

          v65 = CFDictionaryGetValue(v34, @"TweenedOpacity");
          if (v65)
          {
            v66 = v65;
            v67 = CFArrayGetTypeID();
            if (v67 == CFGetTypeID(v66))
            {
              *(v32 + 24) = FigVideoCompositionInstructionEvaluateTweenedOpacity(v66, v23);
            }
          }

          v68 = CFDictionaryGetValue(v34, @"TweenedCropRectangle");
          if (v68)
          {
            v70 = v68;
            v71 = CFArrayGetTypeID();
            v30 = v325;
            if (v71 == CFGetTypeID(v70))
            {
              FigVideoCompositionInstructionEvaluateTweenedCropRectangle(v70, v23);
              *(v32 + 128) = v72;
              *(v32 + 136) = v73;
              *(v32 + 144) = v74;
              *(v32 + 152) = v75;
              v69 = 1;
            }

            else
            {
              v69 = 0;
            }
          }

          else
          {
            v69 = 0;
            v30 = v325;
          }

          v64 = v63 | v69;
        }

        else
        {
          v64 = 0;
          v30 = v325;
        }

        *(v32 + 328) = v64;
        updated = bvc_updateSourcebufferCharacteristics(v32);
        if (updated)
        {
          goto LABEL_373;
        }

        v77 = *(v32 + 184);
        v78 = *(v32 + 192);
        v79 = *(v32 + 48);
        *&t1.a = *(v32 + 32);
        *&t1.c = v79;
        *&t1.tx = *(v32 + 64);
        CGAffineTransformScale(&v349, &t1, v77 / v78, 1.0);
        v81 = *&v349.c;
        v80 = *&v349.tx;
        *(v32 + 32) = *&v349.a;
        *(v32 + 48) = v81;
        *(v32 + 64) = v80;
        *&v80 = -*(v32 + 232);
        v82 = -*(v32 + 240);
        v83 = *(v32 + 48);
        *&t1.a = *(v32 + 32);
        *&t1.c = v83;
        *&t1.tx = *(v32 + 64);
        CGAffineTransformTranslate(&v349, &t1, *&v80, v82);
        v85 = *&v349.c;
        v84 = *&v349.tx;
        *(v32 + 32) = *&v349.a;
        *(v32 + 48) = v85;
        *(v32 + 64) = v84;
        CGAffineTransformMakeScale(&v340, *(v14 + 80), *(v14 + 80));
        v86 = *(v32 + 32);
        v87 = *(v32 + 64);
        *&t1.c = *(v32 + 48);
        *&t1.tx = v87;
        t2 = v340;
        *&t1.a = v86;
        CGAffineTransformConcat(&v349, &t1, &t2);
        v89 = *&v349.c;
        v88 = *&v349.tx;
        *(v32 + 32) = *&v349.a;
        *(v32 + 48) = v89;
        *(v32 + 64) = v88;
        v90 = *(v32 + 32);
        v91 = *(v32 + 64);
        *&t1.c = *(v32 + 48);
        *&t1.tx = v91;
        v92 = *(v14 + 128);
        *&t2.a = *(v14 + 112);
        *&t2.c = v92;
        *&t2.tx = *(v14 + 144);
        *&t1.a = v90;
        CGAffineTransformConcat(&v349, &t1, &t2);
        v94 = *&v349.c;
        v93 = *&v349.tx;
        *(v32 + 32) = *&v349.a;
        *(v32 + 48) = v94;
        *(v32 + 64) = v93;
        v95 = *(v32 + 24);
        v96 = 0.0;
        if (v95 <= 0.0 || (v96 = 1.0, v95 >= 1.0))
        {
          *(v32 + 24) = v96;
        }

        updated = bvc_computeScaledTransformAndTransformedRect(*(v14 + 16), *(v14 + 24), *(v14 + 160), v32);
        if (updated)
        {
LABEL_373:
          a_low = updated;
          goto LABEL_347;
        }

        ++count;
        v32 += 352;
LABEL_63:
        if (++v31 == v295)
        {
          v284 = count;
          v28 = v295;
          goto LABEL_78;
        }
      }
    }

    v284 = 0;
  }

  else
  {
    v28 = 0;
    v284 = 0;
    v30 = 0;
  }

LABEL_78:
  if (*(v14 + 176) != v28)
  {
    bvc_releaseLayerArrays(v313);
    v104 = CMBaseObjectGetDerivedStorage();
    v104[22] = v28;
    v105 = malloc_type_calloc(v28, 8uLL, 0x2004093837F09uLL);
    v104[23] = v105;
    if (!v105 || (v106 = malloc_type_calloc(v28, 8uLL, 0x2004093837F09uLL), (v104[24] = v106) == 0) || (v107 = malloc_type_calloc(v28, 8uLL, 0x2004093837F09uLL), (v104[25] = v107) == 0) || (v108 = malloc_type_calloc(v28, 8uLL, 0x2004093837F09uLL), (v104[26] = v108) == 0) || (v109 = malloc_type_calloc(v28, 4uLL, 0x100004052888210uLL), (v104[27] = v109) == 0) || (v110 = malloc_type_calloc(v28, 0x20uLL, 0x1000040E0EAB150uLL), (v104[28] = v110) == 0) || (v111 = malloc_type_calloc(v28, 8uLL, 0x2004093837F09uLL), (v104[29] = v111) == 0) || (v112 = malloc_type_calloc(v28, 8uLL, 0x2004093837F09uLL), (v104[30] = v112) == 0))
    {
      if (!basicVideoCompositor_RenderFrame_cold_6())
      {
        goto LABEL_378;
      }
    }
  }

  counta = v284;
  v326 = v30;
  if (v284 >= 1)
  {
    v113 = 0;
    v294 = *MEMORY[0x1E6965EF8];
    v290 = *(MEMORY[0x1E695F058] + 8);
    v291 = *MEMORY[0x1E695F058];
    v288 = *(MEMORY[0x1E695F058] + 24);
    v289 = *(MEMORY[0x1E695F058] + 16);
    v114 = v284;
    while (1)
    {
      v115 = &v30[v113];
      v116 = *&v30[v113];
      if (!v116)
      {
        goto LABEL_90;
      }

      theArray = *(v115 + 329);
      v117 = *(v115 + 328);
      v293 = *(v14 + 80);
      v311 = *(v14 + 160);
      valuePtr = *(v115 + 32);
      v119 = *(v115 + 264);
      v118 = *(v115 + 272);
      v121 = *(v115 + 280);
      v120 = *(v115 + 288);
      v122 = *(v115 + 200);
      v123 = *(v115 + 208);
      v124 = *(v115 + 216);
      v125 = *(v115 + 224);
      v307 = *(v14 + 16);
      v304 = *(v14 + 24);
      v349 = valuePtr;
      v345 = 0;
      memset(&r2, 0, sizeof(r2));
      v343 = 0.0;
      v342 = 0.0;
      v341 = 0.0;
      Width = CVPixelBufferGetWidth(v116);
      Height = CVPixelBufferGetHeight(v116);
      cfa = CVBufferCopyAttachment(v116, v294, 0);
      FigVideoCompositorUtilityGetPixelAspectRatio(cfa, &v345 + 1, &v345);
      v128 = SHIDWORD(v345);
      v300 = v345;
      if (v117)
      {
        v136 = Width;
        v137 = Height;
        v296 = 0.0;
        key = 0.0;
        v141 = v345;
        v140 = SHIDWORD(v345);
      }

      else
      {
        t2 = v349;
        CGAffineTransformInvert(&t1, &t2);
        v353.origin.x = v122;
        v353.origin.y = v123;
        v353.size.width = v124;
        v353.size.height = v125;
        v354 = CGRectApplyAffineTransform(v353, &t1);
        v367.origin.x = v119;
        v367.origin.y = v118;
        v367.size.width = v121;
        v367.size.height = v120;
        v355 = CGRectIntersection(v354, v367);
        v356 = CGRectStandardize(v355);
        x = v356.origin.x;
        y = v356.origin.y;
        v131 = v356.size.width;
        v132 = v356.size.height;
        v133 = (CVPixelBufferGetPixelFormatType(v116) - 875704422) & 0xFFFFFFEF;
        v357.origin.x = x;
        v357.origin.y = y;
        v357.size.width = v131;
        v357.size.height = v132;
        v358 = CGRectIntegral(v357);
        v134 = v358.origin.x;
        v135 = v358.origin.y;
        v136 = v358.size.width;
        v137 = v358.size.height;
        if (!v133)
        {
          if (v358.origin.x)
          {
            v134 = v358.origin.x + -1.0;
            v138 = v358.size.width + 1.0;
          }

          else
          {
            v138 = v358.size.width;
          }

          if (v358.origin.y)
          {
            v135 = v358.origin.y + -1.0;
            v139 = v358.size.height + 1.0;
          }

          else
          {
            v139 = v358.size.height;
          }

          if (v138)
          {
            v136 = v138 + 1.0;
          }

          else
          {
            v136 = v138;
          }

          if (v139)
          {
            v137 = v139 + 1.0;
          }

          else
          {
            v137 = v139;
          }
        }

        v140 = v128;
        v359.origin.x = v119;
        v359.origin.y = v118;
        v359.size.width = v121;
        v359.size.height = v120;
        v368.origin.x = v134;
        v368.origin.y = v135;
        v368.size.width = v136;
        v368.size.height = v137;
        v360 = CGRectIntersection(v359, v368);
        v121 = v360.size.width;
        v120 = v360.size.height;
        v119 = v360.origin.x - v134;
        v118 = v360.origin.y - v135;
        t2 = v349;
        v296 = v134;
        key = v135;
        CGAffineTransformTranslate(&t1, &t2, v134, v135);
        v349 = t1;
        Width = v136;
        Height = v137;
        v141 = v300;
      }

      if (theArray)
      {
        t2 = v349;
        CGAffineTransformScale(&t1, &t2, (1.0 / v293), (1.0 / v293));
        v349 = t1;
        v147 = v293;
        v343 = v293;
        v342 = v293;
        v146 = v293;
      }

      else
      {
        t1 = v349;
        FigVideoCompositionInstructionCGAffineTransformDecompose(&t1, 0, 0, &v349, &v343, &v342, 0);
        b = 0.0;
        v143 = 0.0;
        if (fabs(v349.a) >= 0.000001)
        {
          v143 = 1.0;
          if (fabs(v349.a + -1.0) >= 0.000001)
          {
            v143 = v349.a;
            if (fabs(v349.a + 1.0) < 0.000001)
            {
              v143 = -1.0;
            }
          }
        }

        v349.a = v143;
        if (fabs(v349.b) >= 0.000001)
        {
          b = 1.0;
          if (fabs(v349.b + -1.0) >= 0.000001)
          {
            b = v349.b;
            if (fabs(v349.b + 1.0) < 0.000001)
            {
              b = -1.0;
            }
          }
        }

        v349.b = b;
        d = 0.0;
        c = 0.0;
        if (fabs(v349.c) >= 0.000001)
        {
          c = 1.0;
          if (fabs(v349.c + -1.0) >= 0.000001)
          {
            c = v349.c;
            if (fabs(v349.c + 1.0) < 0.000001)
            {
              c = -1.0;
            }
          }
        }

        v349.c = c;
        if (fabs(v349.d) >= 0.000001)
        {
          d = 1.0;
          if (fabs(v349.d + -1.0) >= 0.000001)
          {
            d = v349.d;
            if (fabs(v349.d + 1.0) < 0.000001)
            {
              d = -1.0;
            }
          }
        }

        v349.d = d;
        v146 = v343;
        v147 = v342;
      }

      if (fabs(v146 + -1.0) > 0.00001 || fabs(v147 + -1.0) > 0.00001)
      {
        v148 = v146;
        Width = (v148 * v136 + 1.0) & 0xFFFFFFFFFFFFFFFELL;
        v149 = v147;
        Height = (v149 * v137 + 1.0) & 0xFFFFFFFFFFFFFFFELL;
        CGAffineTransformMakeScale(&t1, Width / v136, Height / v137);
        t2 = t1;
        v361.origin.x = v119;
        v361.origin.y = v118;
        v361.size.width = v121;
        v361.size.height = v120;
        v362 = CGRectApplyAffineTransform(v361, &t2);
        v119 = v362.origin.x;
        v118 = v362.origin.y;
        v121 = v362.size.width;
        v120 = v362.size.height;
        v140 = (v136 * Height * v140);
        v141 = (v137 * Width * v141);
      }

      if (!theArray)
      {
        break;
      }

      v156 = v141;
LABEL_180:
      bvc_getCleanApertureRect(v311, v307, v304, &r2.origin.x);
      v166 = v165;
      if (!v165)
      {
        t1 = v349;
        v363.origin.x = v119;
        v363.origin.y = v118;
        v363.size.width = v121;
        v363.size.height = v120;
        v364 = CGRectApplyAffineTransform(v363, &t1);
        v365 = CGRectIntersection(v364, r2);
        v366 = CGRectStandardize(v365);
        v168 = *&v349.c;
        v167 = *&v349.tx;
        *(v115 + 80) = *&v349.a;
        *(v115 + 96) = v168;
        *(v115 + 160) = Width;
        v169 = &v326[v113];
        *(v169 + 21) = Height;
        *(v115 + 296) = v296;
        *(v169 + 38) = key;
        *(v169 + 39) = v136;
        *(v169 + 40) = v137;
        v170 = v341;
        *(v115 + 112) = v167;
        *(v115 + 176) = v170;
        *(v115 + 184) = v140;
        *(v169 + 24) = v156;
        *(v115 + 264) = v119;
        *(v115 + 272) = v118;
        *(v115 + 280) = v121;
        *(v115 + 288) = v120;
        *(v115 + 200) = v366;
      }

      if (cfa)
      {
        CFRelease(cfa);
      }

      v30 = v326;
      if (v166)
      {
        v171 = *(v14 + 160);
        v172 = *(v14 + 16);
        v173 = *(v14 + 24);
        v174 = bvc_updateSourcebufferCharacteristics(v115);
        if (v174)
        {
          a_low = v174;
          v240 = 0;
          v257 = 0;
          v241 = 0;
          v258 = 0;
          v259 = 0;
          v30 = v326;
          goto LABEL_348;
        }

        updated = bvc_computeScaledTransformAndTransformedRect(v172, v173, v171, v115);
        v30 = v326;
        if (updated)
        {
          goto LABEL_373;
        }
      }

LABEL_90:
      v113 += 352;
      if (!--v114)
      {
        goto LABEL_190;
      }
    }

    t2 = v349;
    memset(&t1, 0, sizeof(t1));
    FigVideoCompositionInstructionCGAffineTransformDecompose(&t2, 0, 1, &t1, 0, 0, &v341);
    v150 = fmod(v341 * 57.2957795 + 360.0, 360.0);
    v151 = 0.0;
    if (fabs(v150) < 0.001)
    {
LABEL_132:
      v341 = v151;
      v152 = v151 == 90.0;
      v153 = v151 == 270.0;
      if (v151 != 270.0 && v151 != 90.0 && v151 != 180.0)
      {
        v341 = 0.0;
        v154 = v120;
        v120 = v121;
        v155 = v118;
        v118 = v119;
        v156 = v141;
        v157 = Height;
        Height = Width;
LABEL_179:
        Width = Height;
        v119 = v118;
        v121 = v120;
        v120 = v154;
        v118 = v155;
        Height = v157;
        goto LABEL_180;
      }

LABEL_143:
      v158 = 0.0;
      v159 = 0.0;
      if (fabs(t1.a) >= 0.000001)
      {
        v159 = 1.0;
        if (fabs(t1.a + -1.0) >= 0.000001)
        {
          v159 = t1.a;
          if (fabs(t1.a + 1.0) < 0.000001)
          {
            v159 = -1.0;
          }
        }
      }

      v349.a = v159;
      if (fabs(t1.b) >= 0.000001)
      {
        v158 = 1.0;
        if (fabs(t1.b + -1.0) >= 0.000001)
        {
          v158 = t1.b;
          if (fabs(t1.b + 1.0) < 0.000001)
          {
            v158 = -1.0;
          }
        }
      }

      v349.b = v158;
      v160 = 0.0;
      v161 = 0.0;
      if (fabs(t1.c) >= 0.000001)
      {
        v161 = 1.0;
        if (fabs(t1.c + -1.0) >= 0.000001)
        {
          v161 = t1.c;
          if (fabs(t1.c + 1.0) < 0.000001)
          {
            v161 = -1.0;
          }
        }
      }

      v349.c = v161;
      if (fabs(t1.d) >= 0.000001)
      {
        v160 = 1.0;
        if (fabs(t1.d + -1.0) >= 0.000001)
        {
          v160 = t1.d;
          if (fabs(t1.d + 1.0) < 0.000001)
          {
            v160 = -1.0;
          }
        }
      }

      v349.d = v160;
      v162 = v151;
      if (v151 > 179)
      {
        if (v162 != 180)
        {
          if (v162 == 270)
          {
            v155 = Width - v121 - v119;
            v154 = v121;
            goto LABEL_169;
          }

          goto LABEL_166;
        }

        v155 = Height - v120 - v118;
        v118 = Width - v121 - v119;
        v154 = v120;
        v120 = v121;
      }

      else
      {
        if (v162)
        {
          if (v162 == 90)
          {
            v118 = Height - v120 - v118;
            v154 = v121;
            v155 = v119;
            goto LABEL_169;
          }

LABEL_166:
          v154 = *&v288;
          v120 = v289;
          v155 = *&v290;
          v118 = *&v291;
          goto LABEL_169;
        }

        v154 = v120;
        v120 = v121;
        v155 = v118;
        v118 = v119;
      }

LABEL_169:
      if (v153 || v152)
      {
        v156 = v140;
        v140 = v141;
        v157 = Width;
      }

      else
      {
        v156 = v141;
        v157 = Height;
        Height = Width;
      }

      switch(v162)
      {
        case 270:
          v164 = -v157;
          v346 = v349;
          v163 = 0.0;
          break;
        case 180:
          v163 = -Height;
          v164 = -v157;
          v346 = v349;
          break;
        case 90:
          v163 = -Height;
          v346 = v349;
          v164 = 0.0;
          break;
        default:
          goto LABEL_179;
      }

      CGAffineTransformTranslate(&t2, &v346, v163, v164);
      v349 = t2;
      goto LABEL_179;
    }

    v151 = 90.0;
    if (fabs(v150 + -90.0) >= 0.001)
    {
      if (fabs(v150 + -180.0) >= 0.001)
      {
        if (fabs(v150 + -270.0) >= 0.001)
        {
          v151 = v150;
          if (fabs(v150 + -360.0) < 0.001)
          {
            v151 = 0.0;
          }

          goto LABEL_132;
        }

        v151 = 270.0;
      }

      else
      {
        v151 = 180.0;
      }
    }

    v341 = v151;
    v152 = v151 == 90.0;
    v153 = v151 == 270.0;
    goto LABEL_143;
  }

LABEL_190:
  v175 = v337;
  v176 = CMBaseObjectGetDerivedStorage();
  v177 = counta;
  v178 = malloc_type_calloc(counta, 8uLL, 0x100004000313F17uLL);
  v312 = v178;
  if (!v178)
  {
    if (basicVideoCompositor_RenderFrame_cold_7())
    {
      v183 = 0;
      v305 = 1;
      goto LABEL_254;
    }

LABEL_378:
    v240 = 0;
    v257 = 0;
    v241 = 0;
    v258 = 0;
    v259 = 0;
    goto LABEL_379;
  }

  if (counta < 1)
  {
    v183 = 0;
    v184 = 3;
    v305 = 1;
    goto LABEL_253;
  }

  v179 = v178;
  v308 = counta - 1;
  v180 = 0;
  v181 = v30 + 160;
  while (1)
  {
    v182 = *(v181 - 34);
    if (v182 != 0.0)
    {
      break;
    }

    ++v180;
    v181 += 352;
    if (counta == v180)
    {
      goto LABEL_207;
    }
  }

  if (v182 == 1.0)
  {
    PixelFormatType = CVPixelBufferGetPixelFormatType(*(v181 - 20));
    v186 = PixelFormatType == 846624121 || PixelFormatType == 875704438;
    if (v186 || PixelFormatType == 875704422)
    {
      v188 = *(v181 - 5);
      v189 = *(v181 - 3);
      *&v349.c = *(v181 - 4);
      *&v349.tx = v189;
      *&v349.a = v188;
      if (CGAffineTransformIsIdentity(&v349) && bvc_doesPixelBufferFillCanvasExactly(*v181, *(v181 + 1), *(v176 + 16), *(v176 + 24), *(v176 + 160), *(v181 + 13), *(v181 + 14), *(v181 + 15), *(v181 + 16)))
      {
        v305 = 0;
        *v179 = v180;
        v183 = 1;
        v184 = 1;
        goto LABEL_253;
      }
    }
  }

LABEL_207:
  v301 = v175;
  v190 = 0;
  v191 = 0;
  v192 = 0;
  v193 = v30;
  while (1)
  {
    v194 = *(v193 + 6);
    if (v194 != 0.0)
    {
      break;
    }

    v195 = v192;
    v196 = v191;
LABEL_211:
    ++v190;
    v193 += 352;
    v191 = v196;
    v192 = v195;
    if (counta == v190)
    {
      goto LABEL_212;
    }
  }

  v195 = v190;
  v196 = v193;
  if (!v191)
  {
    goto LABEL_211;
  }

  if (v194 == 1.0)
  {
    v274 = CVPixelBufferGetPixelFormatType(*v193);
    v275 = v274 == 846624121 || v274 == 875704438;
    if (v275 || v274 == 875704422)
    {
      v277 = *(v191 + 6);
      *&v349.a = *(v191 + 5);
      *&v349.c = v277;
      *&v349.tx = *(v191 + 7);
      if (CGAffineTransformIsIdentity(&v349))
      {
        v278 = *(v193 + 6);
        *&v349.a = *(v193 + 5);
        *&v349.c = v278;
        *&v349.tx = *(v193 + 7);
        if (CGAffineTransformIsIdentity(&v349))
        {
          v279 = CVPixelBufferGetWidth(*v191);
          v369.size.height = CVPixelBufferGetHeight(*v191);
          v369.origin.x = 0.0;
          v369.origin.y = 0.0;
          v369.size.width = v279;
          if (CGRectContainsRect(*(v191 + 296), v369))
          {
            v280 = CVPixelBufferGetWidth(*v193);
            v370.size.height = CVPixelBufferGetHeight(*v193);
            v370.origin.x = 0.0;
            v370.origin.y = 0.0;
            v370.size.width = v280;
            if (CGRectContainsRect(*(v193 + 296), v370) && bvc_doesPixelBufferFillCanvasExactly(*(v191 + 20), *(v191 + 21), *(v176 + 16), *(v176 + 24), *(v176 + 160), *(v191 + 33), *(v191 + 34), *(v191 + 35), *(v191 + 36)) && bvc_doesPixelBufferFillCanvasExactly(*(v193 + 20), *(v193 + 21), *(v176 + 16), *(v176 + 24), *(v176 + 160), *(v193 + 33), *(v193 + 34), *(v193 + 35), *(v193 + 36)))
            {
              v305 = 0;
              *v179 = v192;
              v179[1] = v190;
              v183 = 2;
              v184 = 2;
              goto LABEL_252;
            }
          }
        }
      }
    }
  }

LABEL_212:
  v197 = &v30[352 * counta];
  v305 = 1;
  cfb = vdupq_n_s64(0xFFFFFFFFFFFFFFFELL);
  v198 = counta - 1;
  do
  {
    v199 = v197;
    v197 -= 44;
    if (((CVPixelBufferGetPixelFormatType(*v197) - 875704422) & 0xFFFFFFEF) == 0)
    {
      *(v199 - 12) = vandq_s8(*(v199 - 12), cfb);
    }

    if (*(v199 - 82) == 1.0)
    {
      v200 = CVPixelBufferGetPixelFormatType(*v197);
      v201 = v200 == 846624121 || v200 == 875704438;
      if (v201 || v200 == 875704422)
      {
        v203 = *(v176 + 160);
        v204 = *(v199 - 11);
        v205 = *(v199 - 10);
        v206 = *(v199 - 9);
        v207 = *(v199 - 8);
        v208 = *(v176 + 16);
        v209 = *(v176 + 24);
        v210 = *(v199 - 17);
        v211 = *(v199 - 15);
        *&v346.c = *(v199 - 16);
        *&v346.tx = v211;
        *&v346.a = v210;
        memset(&valuePtr, 0, 32);
        v212 = *(v199 - 17);
        v213 = *(v199 - 15);
        *&t1.c = *(v199 - 16);
        *&t1.tx = v213;
        *&t1.a = v212;
        if (BVCUtilityIsAffineTransformInvertible(&t1.a))
        {
          bvc_getCleanApertureRect(v203, v208, v209, &valuePtr.a);
          if (!v214)
          {
            t1 = v346;
            if (BVCUtilityIsAffineTransformInvertible(&t1.a))
            {
              t2 = v346;
              CGAffineTransformInvert(&t1, &t2);
              v215 = 0;
              v349.a = t1.tx + t1.c * valuePtr.b + t1.a * valuePtr.a;
              v349.b = t1.ty + t1.d * valuePtr.b + t1.b * valuePtr.a;
              v216 = t1.c * (valuePtr.b + valuePtr.d);
              v217 = t1.d * (valuePtr.b + valuePtr.d);
              v349.c = t1.tx + v216 + t1.a * valuePtr.a;
              v349.d = t1.ty + v217 + t1.b * valuePtr.a;
              v349.tx = t1.tx + v216 + t1.a * (valuePtr.a + valuePtr.c);
              v349.ty = t1.ty + v217 + t1.b * (valuePtr.a + valuePtr.c);
              v350 = t1.tx + t1.c * valuePtr.b + t1.a * (valuePtr.a + valuePtr.c);
              v351 = t1.ty + t1.d * valuePtr.b + t1.b * (valuePtr.a + valuePtr.c);
              while (1)
              {
                v218 = *(&v349.a + v215);
                v219 = v218 >= v204 && v218 <= v204 + v206;
                if (!v219)
                {
                  break;
                }

                v220 = *(&v349.b + v215);
                if (v220 < v205 || v220 > v205 + v207)
                {
                  break;
                }

                v215 += 16;
                if (v215 == 64)
                {
                  v305 = 0;
                  ++*(v176 + 372);
                  v308 = v198;
                  break;
                }
              }
            }
          }
        }
      }
    }

    v219 = v198-- <= 0;
  }

  while (!v219);
  if (v308 < 0)
  {
    v183 = 0;
    v184 = 3;
    v30 = v326;
    v177 = counta;
  }

  else
  {
    v183 = 0;
    v222 = 0;
    v30 = v326;
    v223 = v326 + 224;
    v177 = counta;
    do
    {
      if (*(v223 - 50) != 0.0)
      {
        v224 = *(v223 - 9);
        v225 = *(v223 - 7);
        *&v349.c = *(v223 - 8);
        *&v349.tx = v225;
        *&v349.a = v224;
        if (BVCUtilityIsAffineTransformInvertible(&v349.a) && !CGRectIsEmpty(*(v223 - 24)))
        {
          v312[v183++] = v222;
        }
      }

      ++v222;
      v223 += 352;
    }

    while (v308 + 1 != v222);
    v184 = 3;
  }

LABEL_252:
  v175 = v301;
LABEL_253:
  *(v175 + 6) = v184;
LABEL_254:
  if (v177 >= 1)
  {
    v226 = &v30[352 * v177 - 352];
    goto LABEL_257;
  }

  v226 = a4;
  if (a2 < 1)
  {
LABEL_261:
    v229 = 0;
    v227 = 0;
    v228 = *(v14 + 56);
    goto LABEL_262;
  }

LABEL_257:
  if (!*v226)
  {
    goto LABEL_261;
  }

  v227 = CVBufferCopyAttachments(*v226, kCVAttachmentMode_ShouldPropagate);
  v228 = *(v14 + 56);
  v229 = v227 != 0;
  if (!v228 && v227)
  {
    v228 = CFDictionaryGetValue(v227, *MEMORY[0x1E6965F98]);
    v229 = 1;
  }

LABEL_262:
  if (v228)
  {
    v230 = v228;
  }

  else
  {
    v230 = *MEMORY[0x1E6965FD0];
  }

  if (v230)
  {
    CFRetain(v230);
  }

  v231 = *(v14 + 64);
  if (v231 == 0 && v229)
  {
    v231 = CFDictionaryGetValue(v227, *MEMORY[0x1E6965D88]);
  }

  if (v231)
  {
    v232 = v231;
  }

  else
  {
    v232 = *MEMORY[0x1E6965DB8];
  }

  if (v232)
  {
    CFRetain(v232);
  }

  v233 = *(v14 + 72);
  if (v233 == 0 && v229)
  {
    v233 = CFDictionaryGetValue(v227, *MEMORY[0x1E6965F30]);
  }

  v317 = v232;
  countb = v230;
  cfc = v183;
  v309 = v227;
  if (v233)
  {
    v234 = v233;
  }

  else
  {
    v234 = *MEMORY[0x1E6965F50];
  }

  if (v234)
  {
    CFRetain(v234);
  }

  if (v183)
  {
    v235 = MEMORY[0x1E69E9820];
    v236 = v312;
    do
    {
      v237 = *v236++;
      v239 = *(v14 + 280);
      v238 = *(v14 + 288);
      block[0] = v235;
      block[1] = 0x40000000;
      block[2] = __basicVideoCompositor_RenderFrame_block_invoke;
      block[3] = &unk_1E7490E40;
      block[6] = &v326[352 * v237];
      block[7] = v313;
      block[8] = v14;
      block[9] = countb;
      block[10] = v317;
      block[11] = v234;
      block[4] = &v336;
      block[5] = &v332;
      dispatch_group_async(v238, v239, block);
      --v183;
    }

    while (v183);
  }

  v315 = v234;
  dispatch_group_wait(*(v14 + 288), 0xFFFFFFFFFFFFFFFFLL);
  if (*(v333 + 24))
  {
    *(v337 + 6) = 3;
  }

  v30 = v326;
  v240 = v312;
  v241 = countb;
  v242 = cfc;
  if (!cfc)
  {
    if (*(v337 + 6) != 1)
    {
      goto LABEL_305;
    }

    goto LABEL_300;
  }

  v244 = *(v14 + 392);
  v243 = *(v14 + 400);
  v245 = v312;
  v246 = cfc;
  v247 = *(v14 + 384);
  do
  {
    v248 = *v245++;
    v249 = (*&v326[352 * v248 + 344] - *&v326[352 * v248 + 336]) / 1000;
    v243 += v249;
    if (v247 >= v249)
    {
      v247 = v249;
    }

    if (v244 <= v249)
    {
      v244 = v249;
    }

    --v246;
  }

  while (v246);
  *(v14 + 408) += cfc;
  *(v14 + 392) = v244;
  *(v14 + 400) = v243;
  *(v14 + 384) = v247;
  if (*(v337 + 6) == 1)
  {
LABEL_300:
    ++*(v14 + 360);
    v254 = CFRetain(*&v326[352 * *v312]);
    if (*(v14 + 172))
    {
      v255 = *(v14 + 104);
      if (v255)
      {
        CFRelease(v255);
        *(v14 + 104) = 0;
      }
    }

    dispatch_sync(*(v14 + 272), &__block_literal_global_28);
    v256 = *(v14 + 272);
    v329[0] = MEMORY[0x1E69E9820];
    v329[1] = 0x40000000;
    v329[2] = __basicVideoCompositor_RenderFrame_block_invoke_3;
    v329[3] = &__block_descriptor_tmp_29_0;
    v329[4] = v14;
    v329[5] = a10;
    v329[6] = v254;
    dispatch_async(v256, v329);
    a_low = 0;
    v257 = v227;
LABEL_304:
    v259 = v315;
    v258 = v317;
    goto LABEL_348;
  }

  v250 = v312;
  v251 = cfc;
  do
  {
    v252 = *v250++;
    v253 = *&v326[352 * v252];
    if (v253)
    {
      CFRetain(v253);
    }

    --v251;
  }

  while (v251);
LABEL_305:
  v260 = *(v14 + 104);
  v257 = v227;
  if (v260)
  {
LABEL_325:
    v272 = CFRetain(v260);
    goto LABEL_326;
  }

  v261 = CMBaseObjectGetDerivedStorage();
  v349.a = 0.0;
  t1.a = 0.0;
  LODWORD(v343) = 0;
  LODWORD(v342) = 0;
  LOBYTE(v341) = 0;
  v262 = CFGetAllocator(v313);
  Mutable = CFDictionaryCreateMutable(v262, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  LODWORD(valuePtr.a) = *(v261 + 16);
  v264 = *MEMORY[0x1E695E480];
  v265 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt32Type, &valuePtr);
  CFDictionarySetValue(Mutable, *MEMORY[0x1E6966208], v265);
  CFRelease(v265);
  LODWORD(r2.origin.x) = *(v261 + 24);
  v266 = CFNumberCreate(v264, kCFNumberSInt32Type, &r2);
  CFDictionarySetValue(Mutable, *MEMORY[0x1E69660B8], v266);
  CFRelease(v266);
  v267 = CFArrayCreateMutable(v264, 0, MEMORY[0x1E695E9C0]);
  v302 = v267;
  if (!v267)
  {
    basicVideoCompositor_RenderFrame_cold_9(&t2);
LABEL_383:
    a_low = LODWORD(t2.a);
    goto LABEL_315;
  }

  v268 = v267;
  LODWORD(v346.a) = *(v261 + 168);
  v269 = CFNumberCreate(v264, kCFNumberSInt32Type, &v346);
  if (!v269)
  {
    if (basicVideoCompositor_RenderFrame_cold_8())
    {
      goto LABEL_309;
    }

    goto LABEL_383;
  }

  v270 = v269;
  CFArrayAppendValue(v268, v269);
  CFRelease(v270);
LABEL_309:
  CFDictionarySetValue(Mutable, *MEMORY[0x1E6966130], v268);
  FigGetAlignmentForIOSurfaceOutput();
  PixelBufferAttributesWithIOSurfaceSupport = bvc_CFDictionarySetInt(Mutable, *MEMORY[0x1E6966140], SLODWORD(v343));
  if (!PixelBufferAttributesWithIOSurfaceSupport)
  {
    PixelBufferAttributesWithIOSurfaceSupport = bvc_CFDictionarySetInt(Mutable, *MEMORY[0x1E6966020], SLODWORD(v342));
    if (!PixelBufferAttributesWithIOSurfaceSupport)
    {
      PixelBufferAttributesWithIOSurfaceSupport = FigCreatePixelBufferAttributesWithIOSurfaceSupport();
      if (!PixelBufferAttributesWithIOSurfaceSupport)
      {
        PixelBufferAttributesWithIOSurfaceSupport = VTCreatePixelBufferPoolAttributesWithName();
        if (!PixelBufferAttributesWithIOSurfaceSupport)
        {
          CFGetAllocator(v313);
          PixelBufferAttributesWithIOSurfaceSupport = VTBuildPixelBufferPools2();
        }
      }
    }
  }

  a_low = PixelBufferAttributesWithIOSurfaceSupport;
LABEL_315:
  v30 = v326;
  v240 = v312;
  v242 = cfc;
  if (*&v349.a)
  {
    CFRelease(*&v349.a);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  if (*&t1.a)
  {
    CFRelease(*&t1.a);
  }

  if (v302)
  {
    CFRelease(v302);
  }

  if (a_low)
  {
    goto LABEL_304;
  }

  v260 = *(v14 + 104);
  if (v260)
  {
    goto LABEL_325;
  }

  v272 = 0;
LABEL_326:
  dispatch_sync(*(v14 + 264), &__block_literal_global_32);
  v273 = *(v14 + 264);
  v327[0] = MEMORY[0x1E69E9820];
  v327[1] = 0x40000000;
  v327[2] = __basicVideoCompositor_RenderFrame_block_invoke_5;
  v327[3] = &unk_1E7490F08;
  v327[6] = v272;
  v327[7] = v309;
  v327[8] = v14;
  v327[9] = countb;
  v327[10] = v317;
  v327[11] = v315;
  v327[4] = &v336;
  v327[5] = v313;
  v327[12] = v240;
  v327[13] = v30;
  v328 = v305;
  v327[14] = v242;
  v327[15] = v292;
  v327[16] = a10;
  dispatch_async(v273, v327);
  v240 = 0;
  v257 = 0;
  v241 = 0;
  v258 = 0;
  v259 = 0;
  v30 = 0;
  a_low = 0;
LABEL_348:
  if (*(v14 + 176))
  {
    v281 = 0;
    do
    {
      CVPixelBufferPoolFlush(*(*(v14 + 184) + 8 * v281), 0);
      CVPixelBufferPoolFlush(*(*(v14 + 192) + 8 * v281++), 0);
    }

    while (v281 < *(v14 + 176));
  }

  v282 = *(v14 + 104);
  if (v282)
  {
    CVPixelBufferPoolFlush(v282, 0);
  }

  free(v30);
  free(v240);
  if (v257)
  {
    CFRelease(v257);
  }

  if (v241)
  {
    CFRelease(v241);
  }

  if (v258)
  {
    CFRelease(v258);
  }

  if (v259)
  {
    CFRelease(v259);
  }

LABEL_361:
  _Block_object_dispose(&v332, 8);
  _Block_object_dispose(&v336, 8);
  return a_low;
}

uint64_t basicVideoCompositor_SetOutputCallback(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x2000000000;
  v13 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v6 = *(DerivedStorage + 272);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 0x40000000;
  v9[2] = __basicVideoCompositor_SetOutputCallback_block_invoke;
  v9[3] = &unk_1E7490F80;
  v9[6] = a2;
  v9[7] = a3;
  v9[4] = &v10;
  v9[5] = DerivedStorage;
  dispatch_sync(v6, v9);
  v7 = *(v11 + 6);
  _Block_object_dispose(&v10, 8);
  return v7;
}

uint64_t bvc_mixBuffers(NSObject *a1, CVPixelBufferRef pixelBuffer, __CVBuffer *a3, __CVBuffer *a4, int a5, int a6, int a7, int a8, float a9, CGFloat a10, CGFloat a11, CGFloat a12, CGFloat a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  v101 = *MEMORY[0x1E69E9840];
  v91 = 0;
  v92 = &v91;
  v93 = 0x2000000000;
  v94 = 0;
  PixelFormatType = CVPixelBufferGetPixelFormatType(pixelBuffer);
  v82 = CVPixelBufferGetPixelFormatType(a3);
  v84 = CVPixelBufferGetPixelFormatType(a4);
  v28 = CVBufferCopyAttachment(a4, *MEMORY[0x1E6965F98], 0);
  Width = CVPixelBufferGetWidth(pixelBuffer);
  Height = CVPixelBufferGetHeight(pixelBuffer);
  v31 = CVPixelBufferGetWidth(a3);
  v32 = CVPixelBufferGetHeight(a3);
  v33 = CVPixelBufferGetWidth(a4);
  v34 = CVPixelBufferGetHeight(a4);
  memset(v100, 0, sizeof(v100));
  memset(v99, 0, sizeof(v99));
  memset(v98, 0, sizeof(v98));
  memset(v97, 0, sizeof(v97));
  memset(v96, 0, sizeof(v96));
  memset(v95, 0, sizeof(v95));
  v89 = 0;
  v90 = 0;
  v88 = 0;
  v108.size.width = Width;
  v35 = v28;
  v108.size.height = Height;
  v108.origin.x = 0.0;
  v108.origin.y = 0.0;
  v102.origin.x = a10;
  v102.origin.y = a11;
  v102.size.width = a12;
  v102.size.height = a13;
  v103 = CGRectIntersection(v102, v108);
  PixelRectangle = bvc_getPixelRectangle(v103.origin.x, v103.origin.y, v103.size.width, v103.size.height);
  v79 = v37;
  v80 = PixelRectangle;
  v39 = v38;
  v41 = v40;
  v109.size.width = v31;
  v109.size.height = v32;
  v109.origin.x = 0.0;
  v109.origin.y = 0.0;
  *&v104.origin.x = a14;
  *&v104.origin.y = a15;
  *&v104.size.width = a16;
  *&v104.size.height = a17;
  v105 = CGRectIntersection(v104, v109);
  v42 = bvc_getPixelRectangle(v105.origin.x, v105.origin.y, v105.size.width, v105.size.height);
  v44 = v43;
  v46 = v45;
  v48 = v47;
  v110.size.width = v33;
  v110.size.height = v34;
  v110.origin.x = 0.0;
  v110.origin.y = 0.0;
  *&v106.origin.y = a19;
  *&v106.origin.x = a18;
  *&v106.size.height = a21;
  *&v106.size.width = a20;
  v107 = CGRectIntersection(v106, v110);
  v52 = bvc_getPixelRectangle(v107.origin.x, v107.origin.y, v107.size.width, v107.size.height);
  if (v39 < 1.0 || v41 < 1.0 || v46 < 1.0 || v48 < 1.0 || v50 < 1.0 || v51 < 1.0)
  {
    goto LABEL_37;
  }

  if (v39 >= v46)
  {
    v53 = v46;
  }

  else
  {
    v53 = v39;
  }

  if (v50 >= v53)
  {
    v54 = v53;
  }

  else
  {
    v54 = v50;
  }

  if (v41 >= v48)
  {
    v55 = v48;
  }

  else
  {
    v55 = v41;
  }

  if (v51 >= v55)
  {
    v56 = v55;
  }

  else
  {
    v56 = v51;
  }

  if (v84 != 875704438)
  {
    v61 = v92;
    v62 = -12503;
LABEL_36:
    *(v61 + 6) = v62;
    goto LABEL_37;
  }

  v57 = v49;
  if (PixelFormatType == 32)
  {
    if (v82 == 875704438)
    {
      if (v28 && CFEqual(v28, *MEMORY[0x1E6965FD0]))
      {
        v58 = a9 == 1.0;
        v59 = bvc_SimpleMixing_32ARGB_420v709_420v709;
        v60 = bvc_SimpleMixingOpaque_32ARGB_420v709_420v709;
      }

      else
      {
        v58 = a9 == 1.0;
        v59 = bvc_SimpleMixing_32ARGB_420v601_420v601;
        v60 = bvc_SimpleMixingOpaque_32ARGB_420v601_420v601;
      }

      goto LABEL_41;
    }

    goto LABEL_35;
  }

  if (PixelFormatType == 1111970369)
  {
    if (v82 == 875704438)
    {
      if (!v28 || (v63 = CFEqual(v28, *MEMORY[0x1E6965FD0]), v64 = bvc_SimpleMixing_32BGRA_420v709_420v709_vec, !v63))
      {
        v64 = bvc_SimpleMixing_32BGRA_420v601_420v601_vec;
      }

      v65 = v64;
      goto LABEL_44;
    }

    goto LABEL_35;
  }

  if (PixelFormatType != 875704438 || v82 != 875704438)
  {
LABEL_35:
    v61 = v92;
    v62 = -12502;
    goto LABEL_36;
  }

  v58 = a9 == 1.0;
  v59 = bvc_SimpleMixing_420v_420v_420v_vec;
  v60 = bvc_SimpleMixingOpaque_420v_420v_420v_vec;
LABEL_41:
  if (v58)
  {
    v65 = v60;
  }

  else
  {
    v65 = v59;
  }

LABEL_44:
  CVPixelBufferLockBaseAddress(a4, 0);
  if (pixelBuffer != a4)
  {
    CVPixelBufferLockBaseAddress(pixelBuffer, 1uLL);
  }

  if (a3 != a4)
  {
    CVPixelBufferLockBaseAddress(a3, 1uLL);
  }

  BufferCharacteristics = bvc_getBufferCharacteristics(pixelBuffer, &v90, v100, v97, v80, v79);
  *(v92 + 6) = BufferCharacteristics;
  if (!BufferCharacteristics)
  {
    v69 = bvc_getBufferCharacteristics(a3, &v89, v99, v96, v42, v44);
    *(v92 + 6) = v69;
    if (!v69)
    {
      v70 = bvc_getBufferCharacteristics(a4, &v88, v98, v95, v52, v57);
      *(v92 + 6) = v70;
      if (!v70)
      {
        v71 = v54;
        v72 = v56;
        if (FigThreadGetMaxLogicalCoreCount() < 2)
        {
          v77 = v65(v54, v56, v100, v97, v99, v96, v98, v95, a9);
          *(v92 + 6) = v77;
        }

        else
        {
          if ((v71 * v72) >> 9 <= 0x4A)
          {
            v73 = 1;
          }

          else
          {
            v73 = v71 * v72 / 0x4B00;
          }

          v74 = v72 / v73;
          if (v74 <= 1)
          {
            v74 = 1;
          }

          v75 = (v74 & 1) + v74;
          block[0] = MEMORY[0x1E69E9820];
          block[1] = 0x40000000;
          block[2] = __bvc_mixBuffers_block_invoke;
          block[3] = &unk_1E7490F30;
          if (v72 / v75 <= 1)
          {
            v76 = 1;
          }

          else
          {
            v76 = v72 / v75;
          }

          block[6] = v76;
          block[7] = v56;
          block[8] = v90;
          block[9] = v97;
          v86 = PixelFormatType;
          qmemcpy(v87, "v024v024", 8);
          block[10] = v100;
          block[11] = v89;
          block[12] = v96;
          block[13] = v99;
          block[14] = v88;
          block[15] = v95;
          block[16] = v98;
          block[17] = v65;
          block[18] = v54;
          *&v87[2] = a9;
          block[4] = &v91;
          block[5] = v75;
          dispatch_apply(v76, a1, block);
        }
      }
    }
  }

  CVPixelBufferUnlockBaseAddress(a4, 0);
  if (pixelBuffer != a4)
  {
    CVPixelBufferUnlockBaseAddress(pixelBuffer, 1uLL);
  }

  if (a3 != a4)
  {
    CVPixelBufferUnlockBaseAddress(a3, 1uLL);
  }

LABEL_37:
  if (v35)
  {
    CFRelease(v35);
  }

  v66 = *(v92 + 6);
  _Block_object_dispose(&v91, 8);
  return v66;
}

__CVBuffer *bvc_copyCVBufferProperties(__CVBuffer *pixelBuffer, __CVBuffer **a2, __CVBuffer **a3, __CVBuffer **a4, __CVBuffer **a5)
{
  v8 = pixelBuffer;
  if (a2)
  {
    pixelBuffer = CVPixelBufferGetWidth(pixelBuffer);
    *a2 = pixelBuffer;
  }

  if (a3)
  {
    pixelBuffer = CVPixelBufferGetHeight(v8);
    *a3 = pixelBuffer;
  }

  if (a4)
  {
    pixelBuffer = CVBufferCopyAttachment(v8, *MEMORY[0x1E6965EF8], 0);
    *a4 = pixelBuffer;
  }

  if (a5)
  {
    pixelBuffer = CVBufferCopyAttachment(v8, *MEMORY[0x1E6965D70], 0);
    *a5 = pixelBuffer;
  }

  return pixelBuffer;
}

__CVPixelBufferPool *bvc_isPixelBufferPoolCompatibleWithDimensionsAndPixelFormat(__CVPixelBufferPool *result, uint64_t a2, uint64_t a3, int a4)
{
  if (result)
  {
    PixelBufferAttributes = CVPixelBufferPoolGetPixelBufferAttributes(result);
    if (PixelBufferAttributes)
    {
      v8 = PixelBufferAttributes;
      Value = CFDictionaryGetValue(PixelBufferAttributes, *MEMORY[0x1E6966208]);
      if (Value)
      {
        valuePtr = 0;
        v12 = 0;
        CFNumberGetValue(Value, kCFNumberSInt32Type, &valuePtr + 4);
        v10 = CFDictionaryGetValue(v8, *MEMORY[0x1E69660B8]);
        if (v10)
        {
          CFNumberGetValue(v10, kCFNumberSInt32Type, &valuePtr);
          v11 = CFDictionaryGetValue(v8, *MEMORY[0x1E6966130]);
          if (v11)
          {
            CFNumberGetValue(v11, kCFNumberSInt32Type, &v12);
            if (SHIDWORD(valuePtr) == a2 && valuePtr == a3 && v12 == a4)
            {
              return 1;
            }
          }

          else
          {
            bvc_isPixelBufferPoolCompatibleWithDimensionsAndPixelFormat_cold_1();
          }
        }

        else
        {
          bvc_isPixelBufferPoolCompatibleWithDimensionsAndPixelFormat_cold_2();
        }
      }

      else
      {
        bvc_isPixelBufferPoolCompatibleWithDimensionsAndPixelFormat_cold_3();
      }
    }

    else
    {
      bvc_isPixelBufferPoolCompatibleWithDimensionsAndPixelFormat_cold_4();
    }

    return 0;
  }

  return result;
}

uint64_t bvc_SimpleMixingOpaque_32ARGB_420v709_420v709(unint64_t a1, unint64_t a2, uint64_t *a3, void *a4, void *a5, uint64_t *a6, void *a7, uint64_t *a8)
{
  if (a2 >= 2)
  {
    v8 = 0;
    v47 = a1 >> 1;
    v53 = a2 >> 1;
    v9 = *a3;
    v52 = a5[1];
    v11 = *a8;
    v10 = a8[1];
    v13 = *a6;
    v12 = a6[1];
    v57 = v9;
    v50 = 2 * v9;
    v51 = a7[1];
    v49 = 2 * *a5;
    v48 = 2 * *a7;
    v14 = *a7 + *a8 + 1;
    v15 = *a5 + *a6 + 1;
    v56 = *a4 + 3;
    do
    {
      v55 = v8;
      if (a1 >= 2)
      {
        v16 = 0;
        v17 = v56;
        v18 = v47;
        do
        {
          v19 = *(v17 - 3);
          v20 = *(v17 - 2);
          v21 = *(v17 - 1);
          v22 = *v17;
          if (*(v17 - 3))
          {
            v23 = (((16776959 * v19 + 0x10000) * *(v13 + v16)) >> 16) + ((2120 * v19 + 5983 * v20 + 20127 * v21 + 2032 * v22) >> 15);
          }

          else
          {
            LOBYTE(v23) = *(v13 + v16);
          }

          v24 = v17[1];
          v25 = v17[v57 - 3];
          v26 = v17[v57 + 1];
          v27 = v17[2];
          v28 = v17[v57 - 2];
          v29 = v17[v57 + 2];
          v30 = v17[3];
          v31 = v17[v57 - 1];
          v32 = v17[v57 + 3];
          v33 = v17[4];
          v34 = v17[v57];
          v35 = v17[v57 + 4];
          *(v11 + v16) = v23;
          if (v24)
          {
            v36 = (((16776959 * v24 + 0x10000) * *(v13 + v16 + 1)) >> 16) + ((2120 * v24 + 5983 * v27 + 20127 * v30 + 2032 * v33) >> 15);
          }

          else
          {
            LOBYTE(v36) = *(v13 + v16 + 1);
          }

          v37 = v15 + v16;
          *(v11 + v16 + 1) = v36;
          if (v25)
          {
            LODWORD(v37) = (((16776959 * v25 + 0x10000) * *(v37 - 1)) >> 16) + ((2120 * v25 + 5983 * v28 + 20127 * v31 + 2032 * v34) >> 15);
          }

          else
          {
            LOBYTE(v37) = *(v37 - 1);
          }

          *(v14 + v16 - 1) = v37;
          if (v26)
          {
            v38 = (((16776959 * v26 + 0x10000) * *(v15 + v16)) >> 16) + ((2120 * v26 + 5983 * v29 + 20127 * v32 + 2032 * v35) >> 15);
          }

          else
          {
            LOBYTE(v38) = *(v15 + v16);
          }

          *(v14 + v16) = v38;
          v39 = v24 + v19 + v25 + v26;
          if (v39 > 3)
          {
            v41 = 257 * (v39 >> 2);
            v42 = (v27 + v20 + v28 + v29) >> 2;
            v43 = (v30 + v21 + v31 + v32) >> 2;
            v44 = (v33 + v22 + v34 + v35) >> 2;
            v45 = 129 * (v39 >> 2);
            *(v10 + v16) = (((0x10000 - v41) * *(v12 + v16)) >> 16) + ((2147480350 * v42 + (v45 << 7) + 8377515 * v43 + 14392 * v44) >> 15);
            v40 = (((0x10000 - v41) * *(v12 + v16 + 1)) >> 16) + ((14392 * v42 + (v45 << 7) + 8375535 * v43 + 8387291 * v44) >> 15);
          }

          else
          {
            *(v10 + v16) = *(v12 + v16);
            LOBYTE(v40) = *(v12 + v16 + 1);
          }

          v17 += 8;
          *(v10 + v16 + 1) = v40;
          v16 += 2;
          --v18;
        }

        while (v18);
      }

      v13 += v49;
      v11 += v48;
      v12 += v52;
      v10 += v51;
      v8 = v55 + 1;
      v14 += v48;
      v15 += v49;
      v56 += v50;
    }

    while (v55 + 1 != v53);
  }

  return 0;
}

uint64_t bvc_SimpleMixing_32ARGB_420v709_420v709(unint64_t a1, unint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, uint64_t *a6, void *a7, uint64_t *a8, float a9)
{
  if (a2 >= 2)
  {
    v9 = 0;
    v10 = vcvts_n_s32_f32(a9, 8uLL);
    v49 = a1 >> 1;
    v11 = *a5;
    v54 = a5[1];
    v55 = a2 >> 1;
    v53 = a7[1];
    v12 = a8[1];
    v13 = *a6;
    v61 = a6[1];
    v14 = (0x10101020000 * (v10 << 8)) >> 48;
    v52 = 2 * *a3;
    v51 = 2 * *a5;
    v50 = 2 * *a7;
    v15 = *a8;
    v16 = *a7 + *a8 + 1;
    v17 = *a4;
    v18 = v11 + v13 + 1;
    v58 = (v17 + 3);
    v59 = *a3;
    do
    {
      v57 = v9;
      if (a1 >= 2)
      {
        v19 = 0;
        v20 = v58;
        v21 = v49;
        v60 = v13;
        do
        {
          v22 = *(v20 - 3);
          v23 = *(v20 - 2);
          v24 = *(v20 - 1);
          v25 = *v20;
          if (v14 * v22)
          {
            v26 = (((2120 * v22 + 5983 * v23 + 20127 * v24 + 2032 * v25) >> 15) * v10 + (((0x10000 - v14 * v22) * *(v13 + v19)) >> 8)) >> 8;
          }

          else
          {
            LOBYTE(v26) = *(v13 + v19);
          }

          v27 = v20[1];
          v28 = v20[v59 - 3];
          v29 = v20[v59 + 1];
          v30 = v20[2];
          v31 = v20[v59 - 2];
          v32 = v20[v59 + 2];
          v33 = v20[3];
          v34 = v20[v59 - 1];
          v35 = v20[v59 + 3];
          v36 = v20[4];
          v37 = v20[v59];
          v38 = v20[v59 + 4];
          *(v15 + v19) = v26;
          if (v14 * v27)
          {
            v39 = (((2120 * v27 + 5983 * v30 + 20127 * v33 + 2032 * v36) >> 15) * v10 + (((0x10000 - v14 * v27) * *(v13 + v19 + 1)) >> 8)) >> 8;
          }

          else
          {
            LOBYTE(v39) = *(v13 + v19 + 1);
          }

          v40 = v18 + v19;
          *(v15 + v19 + 1) = v39;
          if (v14 * v28)
          {
            LODWORD(v40) = (((2120 * v28 + 5983 * v31 + 20127 * v34 + 2032 * v37) >> 15) * v10 + (((0x10000 - v14 * v28) * *(v40 - 1)) >> 8)) >> 8;
          }

          else
          {
            LOBYTE(v40) = *(v40 - 1);
          }

          *(v16 + v19 - 1) = v40;
          if (v14 * v29)
          {
            v41 = (((2120 * v29 + 5983 * v32 + 20127 * v35 + 2032 * v38) >> 15) * v10 + (((0x10000 - v14 * v29) * *(v18 + v19)) >> 8)) >> 8;
          }

          else
          {
            LOBYTE(v41) = *(v18 + v19);
          }

          v13 = v60;
          *(v16 + v19) = v41;
          v42 = (v27 + v22 + v28 + v29) >> 2;
          v43 = v42 * v14;
          if (v42 * v14)
          {
            v44 = (v30 + v23 + v31 + v32) >> 2;
            v45 = (v33 + v24 + v34 + v35) >> 2;
            v46 = (v36 + v25 + v37 + v38) >> 2;
            *(v12 + v19) = (((2147480350 * v44 + 16512 * v42 + 2147472555 * v45 + 14392 * v46) >> 15) * v10 + (((0x10000 - v43) * *(v61 + v19)) >> 8)) >> 8;
            v47 = (((14392 * v44 + 16512 * v42 + 2147470575 * v45 + 2147482331 * v46) >> 15) * v10 + (((0x10000 - v43) * *(v61 + v19 + 1)) >> 8)) >> 8;
          }

          else
          {
            *(v12 + v19) = *(v61 + v19);
            LOBYTE(v47) = *(v61 + v19 + 1);
          }

          v20 += 8;
          *(v12 + v19 + 1) = v47;
          v19 += 2;
          --v21;
        }

        while (v21);
      }

      v13 += v51;
      v15 += v50;
      v61 += v54;
      v12 += v53;
      v9 = v57 + 1;
      v16 += v50;
      v18 += v51;
      v58 += v52;
    }

    while (v57 + 1 != v55);
  }

  return 0;
}

uint64_t bvc_SimpleMixingOpaque_32ARGB_420v601_420v601(unint64_t a1, unint64_t a2, uint64_t *a3, void *a4, void *a5, uint64_t *a6, void *a7, uint64_t *a8)
{
  if (a2 >= 2)
  {
    v8 = 0;
    v47 = a1 >> 1;
    v53 = a2 >> 1;
    v9 = *a3;
    v52 = a5[1];
    v11 = *a8;
    v10 = a8[1];
    v13 = *a6;
    v12 = a6[1];
    v57 = v9;
    v50 = 2 * v9;
    v51 = a7[1];
    v49 = 2 * *a5;
    v48 = 2 * *a7;
    v14 = *a7 + *a8 + 1;
    v15 = *a5 + *a6 + 1;
    v56 = *a4 + 3;
    do
    {
      v55 = v8;
      if (a1 >= 2)
      {
        v16 = 0;
        v17 = v56;
        v18 = v47;
        do
        {
          v19 = *(v17 - 3);
          v20 = *(v17 - 2);
          v21 = *(v17 - 1);
          v22 = *v17;
          if (*(v17 - 3))
          {
            v23 = (((16776959 * v19 + 0x10000) * *(v13 + v16)) >> 16) + ((2120 * v19 + 8412 * v20 + 16508 * v21 + 3219 * v22) >> 15);
          }

          else
          {
            LOBYTE(v23) = *(v13 + v16);
          }

          v24 = v17[1];
          v25 = v17[v57 - 3];
          v26 = v17[v57 + 1];
          v27 = v17[2];
          v28 = v17[v57 - 2];
          v29 = v17[v57 + 2];
          v30 = v17[3];
          v31 = v17[v57 - 1];
          v32 = v17[v57 + 3];
          v33 = v17[4];
          v34 = v17[v57];
          v35 = v17[v57 + 4];
          *(v11 + v16) = v23;
          if (v24)
          {
            v36 = (((16776959 * v24 + 0x10000) * *(v13 + v16 + 1)) >> 16) + ((2120 * v24 + 8412 * v27 + 16508 * v30 + 3219 * v33) >> 15);
          }

          else
          {
            LOBYTE(v36) = *(v13 + v16 + 1);
          }

          v37 = v15 + v16;
          *(v11 + v16 + 1) = v36;
          if (v25)
          {
            LODWORD(v37) = (((16776959 * v25 + 0x10000) * *(v37 - 1)) >> 16) + ((2120 * v25 + 8412 * v28 + 16508 * v31 + 3219 * v34) >> 15);
          }

          else
          {
            LOBYTE(v37) = *(v37 - 1);
          }

          *(v14 + v16 - 1) = v37;
          if (v26)
          {
            v38 = (((16776959 * v26 + 0x10000) * *(v15 + v16)) >> 16) + ((2120 * v26 + 8412 * v29 + 16508 * v32 + 3219 * v35) >> 15);
          }

          else
          {
            LOBYTE(v38) = *(v15 + v16);
          }

          *(v14 + v16) = v38;
          v39 = v24 + v19 + v25 + v26;
          if (v39 > 3)
          {
            v41 = 257 * (v39 >> 2);
            v42 = (v27 + v20 + v28 + v29) >> 2;
            v43 = (v30 + v21 + v31 + v32) >> 2;
            v44 = (v33 + v22 + v34 + v35) >> 2;
            v45 = 129 * (v39 >> 2);
            *(v10 + v16) = (((0x10000 - v41) * *(v12 + v16)) >> 16) + ((2147478790 * v42 + (v45 << 7) + 8379076 * v43 + 14392 * v44) >> 15);
            v40 = (((0x10000 - v41) * *(v12 + v16 + 1)) >> 16) + ((14392 * v42 + (v45 << 7) + 8376568 * v43 + 8386260 * v44) >> 15);
          }

          else
          {
            *(v10 + v16) = *(v12 + v16);
            LOBYTE(v40) = *(v12 + v16 + 1);
          }

          v17 += 8;
          *(v10 + v16 + 1) = v40;
          v16 += 2;
          --v18;
        }

        while (v18);
      }

      v13 += v49;
      v11 += v48;
      v12 += v52;
      v10 += v51;
      v8 = v55 + 1;
      v14 += v48;
      v15 += v49;
      v56 += v50;
    }

    while (v55 + 1 != v53);
  }

  return 0;
}

uint64_t bvc_SimpleMixing_32ARGB_420v601_420v601(unint64_t a1, unint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, uint64_t *a6, void *a7, uint64_t *a8, float a9)
{
  if (a2 >= 2)
  {
    v9 = 0;
    v10 = vcvts_n_s32_f32(a9, 8uLL);
    v49 = a1 >> 1;
    v11 = *a5;
    v54 = a5[1];
    v55 = a2 >> 1;
    v53 = a7[1];
    v12 = a8[1];
    v13 = *a6;
    v61 = a6[1];
    v14 = (0x10101020000 * (v10 << 8)) >> 48;
    v52 = 2 * *a3;
    v51 = 2 * *a5;
    v50 = 2 * *a7;
    v15 = *a8;
    v16 = *a7 + *a8 + 1;
    v17 = *a4;
    v18 = v11 + v13 + 1;
    v58 = (v17 + 3);
    v59 = *a3;
    do
    {
      v57 = v9;
      if (a1 >= 2)
      {
        v19 = 0;
        v20 = v58;
        v21 = v49;
        v60 = v13;
        do
        {
          v22 = *(v20 - 3);
          v23 = *(v20 - 2);
          v24 = *(v20 - 1);
          v25 = *v20;
          if (v14 * v22)
          {
            v26 = (((2120 * v22 + 8412 * v23 + 16508 * v24 + 3219 * v25) >> 15) * v10 + (((0x10000 - v14 * v22) * *(v13 + v19)) >> 8)) >> 8;
          }

          else
          {
            LOBYTE(v26) = *(v13 + v19);
          }

          v27 = v20[1];
          v28 = v20[v59 - 3];
          v29 = v20[v59 + 1];
          v30 = v20[2];
          v31 = v20[v59 - 2];
          v32 = v20[v59 + 2];
          v33 = v20[3];
          v34 = v20[v59 - 1];
          v35 = v20[v59 + 3];
          v36 = v20[4];
          v37 = v20[v59];
          v38 = v20[v59 + 4];
          *(v15 + v19) = v26;
          if (v14 * v27)
          {
            v39 = (((2120 * v27 + 8412 * v30 + 16508 * v33 + 3219 * v36) >> 15) * v10 + (((0x10000 - v14 * v27) * *(v13 + v19 + 1)) >> 8)) >> 8;
          }

          else
          {
            LOBYTE(v39) = *(v13 + v19 + 1);
          }

          v40 = v18 + v19;
          *(v15 + v19 + 1) = v39;
          if (v14 * v28)
          {
            LODWORD(v40) = (((2120 * v28 + 8412 * v31 + 16508 * v34 + 3219 * v37) >> 15) * v10 + (((0x10000 - v14 * v28) * *(v40 - 1)) >> 8)) >> 8;
          }

          else
          {
            LOBYTE(v40) = *(v40 - 1);
          }

          *(v16 + v19 - 1) = v40;
          if (v14 * v29)
          {
            v41 = (((2120 * v29 + 8412 * v32 + 16508 * v35 + 3219 * v38) >> 15) * v10 + (((0x10000 - v14 * v29) * *(v18 + v19)) >> 8)) >> 8;
          }

          else
          {
            LOBYTE(v41) = *(v18 + v19);
          }

          v13 = v60;
          *(v16 + v19) = v41;
          v42 = (v27 + v22 + v28 + v29) >> 2;
          v43 = v42 * v14;
          if (v42 * v14)
          {
            v44 = (v30 + v23 + v31 + v32) >> 2;
            v45 = (v33 + v24 + v34 + v35) >> 2;
            v46 = (v36 + v25 + v37 + v38) >> 2;
            *(v12 + v19) = (((2147478790 * v44 + 16512 * v42 + 2147474116 * v45 + 14392 * v46) >> 15) * v10 + (((0x10000 - v43) * *(v61 + v19)) >> 8)) >> 8;
            v47 = (((14392 * v44 + 16512 * v42 + 2147471608 * v45 + 2147481300 * v46) >> 15) * v10 + (((0x10000 - v43) * *(v61 + v19 + 1)) >> 8)) >> 8;
          }

          else
          {
            *(v12 + v19) = *(v61 + v19);
            LOBYTE(v47) = *(v61 + v19 + 1);
          }

          v20 += 8;
          *(v12 + v19 + 1) = v47;
          v19 += 2;
          --v21;
        }

        while (v21);
      }

      v13 += v51;
      v15 += v50;
      v61 += v54;
      v12 += v53;
      v9 = v57 + 1;
      v16 += v50;
      v18 += v51;
      v58 += v52;
    }

    while (v57 + 1 != v55);
  }

  return 0;
}

uint64_t bvc_getBufferCharacteristics(__CVBuffer *a1, uint64_t *a2, size_t *a3, void *a4, double a5, double a6)
{
  if (a2)
  {
    if (a3)
    {
      if (a4)
      {
        PixelFormatType = CVPixelBufferGetPixelFormatType(a1);
        if (!CVPixelBufferIsPlanar(a1))
        {
          v14 = 1;
          if (CVPixelBufferIsPlanar(a1))
          {
LABEL_10:
            v15 = 0;
            while (1)
            {
              a3[v15] = CVPixelBufferGetBytesPerRowOfPlane(a1, v15);
              BaseAddressOfPlane = CVPixelBufferGetBaseAddressOfPlane(a1, v15);
              if (PixelFormatType <= 875704421)
              {
                v17 = 1.0;
                if (PixelFormatType != 32 && PixelFormatType != 846624121)
                {
                  goto LABEL_23;
                }
              }

              else
              {
                if (PixelFormatType != 875704422)
                {
                  v17 = 1.0;
                  if (PixelFormatType == 1111970369)
                  {
                    goto LABEL_24;
                  }

                  if (PixelFormatType != 875704438)
                  {
LABEL_23:
                    v17 = -1.0;
                    goto LABEL_24;
                  }
                }

                if (v15 == 1)
                {
                  v17 = 0.5;
                }

                else
                {
                  v17 = -1.0;
                }

                if (!v15)
                {
                  v17 = 1.0;
                }
              }

LABEL_24:
              v18 = 1.0;
              if (PixelFormatType <= 875704421)
              {
                if (PixelFormatType == 32)
                {
                  goto LABEL_38;
                }

                if (PixelFormatType == 846624121)
                {
                  v19 = a5 * 0.5 + 0.5;
                  goto LABEL_48;
                }

LABEL_37:
                v18 = -1.0;
                goto LABEL_38;
              }

              if (PixelFormatType != 875704422)
              {
                if (PixelFormatType == 1111970369)
                {
                  goto LABEL_38;
                }

                if (PixelFormatType != 875704438)
                {
                  goto LABEL_37;
                }
              }

              if (v15 == 1)
              {
                v18 = 0.5;
              }

              else
              {
                v18 = -1.0;
              }

              if (!v15)
              {
                v18 = 1.0;
              }

LABEL_38:
              v19 = a5 * v18 + 0.5;
              if (PixelFormatType <= 875704421)
              {
                if (PixelFormatType != 32)
                {
                  goto LABEL_51;
                }
              }

              else
              {
                if (PixelFormatType == 875704422)
                {
                  goto LABEL_42;
                }

                if (PixelFormatType != 1111970369)
                {
                  if (PixelFormatType == 875704438)
                  {
LABEL_42:
                    v20 = 2;
                    if (v15 != 1)
                    {
                      v20 = -1;
                    }

                    if (!v15)
                    {
                      v20 = 1;
                    }

                    goto LABEL_49;
                  }

LABEL_51:
                  v20 = -1;
                  goto LABEL_49;
                }
              }

LABEL_48:
              v20 = 4;
LABEL_49:
              a4[v15] = &BaseAddressOfPlane[a3[v15] * (a6 * v17 + 0.5) + v20 * v19];
              if (v14 == ++v15)
              {
                goto LABEL_77;
              }
            }
          }

LABEL_52:
          *a3 = CVPixelBufferGetBytesPerRow(a1);
          BaseAddress = CVPixelBufferGetBaseAddress(a1);
          v22 = 1.0;
          if (PixelFormatType <= 875704421)
          {
            if (PixelFormatType == 32)
            {
              goto LABEL_60;
            }

            v23 = 846624121;
          }

          else
          {
            if (PixelFormatType == 875704422 || PixelFormatType == 875704438)
            {
              goto LABEL_60;
            }

            v23 = 1111970369;
          }

          if (PixelFormatType != v23)
          {
            v22 = -1.0;
          }

LABEL_60:
          v24 = BaseAddress + *a3 * (a6 * v22 + 0.5);
          v25 = 1.0;
          if (PixelFormatType <= 875704421)
          {
            if (PixelFormatType == 32)
            {
LABEL_69:
              v26 = a5 * v25 + 0.5;
              v27 = 4;
              if (PixelFormatType <= 875704421)
              {
                if (PixelFormatType == 32)
                {
                  goto LABEL_76;
                }

                goto LABEL_75;
              }

              if (PixelFormatType == 875704422)
              {
LABEL_73:
                v27 = 1;
                goto LABEL_76;
              }

              if (PixelFormatType != 1111970369)
              {
                if (PixelFormatType == 875704438)
                {
                  goto LABEL_73;
                }

LABEL_75:
                v27 = -1;
              }

LABEL_76:
              *a4 = v24 + v27 * v26;
LABEL_77:
              result = 0;
              *a2 = v14;
              return result;
            }

            if (PixelFormatType == 846624121)
            {
              v26 = a5 * 0.5 + 0.5;
              v27 = 4;
              goto LABEL_76;
            }
          }

          else if (PixelFormatType == 875704422 || PixelFormatType == 875704438 || PixelFormatType == 1111970369)
          {
            goto LABEL_69;
          }

          v25 = -1.0;
          goto LABEL_69;
        }

        PlaneCount = CVPixelBufferGetPlaneCount(a1);
        if (PlaneCount < 5)
        {
          v14 = PlaneCount;
          if (CVPixelBufferIsPlanar(a1))
          {
            if (!v14)
            {
              goto LABEL_77;
            }

            goto LABEL_10;
          }

          goto LABEL_52;
        }

        bvc_getBufferCharacteristics_cold_1(&v29);
      }

      else
      {
        bvc_getBufferCharacteristics_cold_2(&v29);
      }
    }

    else
    {
      bvc_getBufferCharacteristics_cold_3(&v29);
    }
  }

  else
  {
    bvc_getBufferCharacteristics_cold_4(&v29);
  }

  return v29;
}

uint64_t __bvc_mixBuffers_block_invoke(uint64_t a1, uint64_t a2)
{
  v28 = *MEMORY[0x1E69E9840];
  memset(v27, 0, sizeof(v27));
  memset(v26, 0, sizeof(v26));
  memset(v25, 0, sizeof(v25));
  v4 = *(a1 + 40);
  v5 = v4 * a2;
  if (*(a1 + 48) - 1 == a2)
  {
    v4 = *(a1 + 56) - v5;
  }

  v6 = *(a1 + 64);
  v7 = *(a1 + 80);
  if (v6)
  {
    v8 = 0;
    v9 = *(a1 + 152);
    v10 = *(a1 + 72);
    while (v9 > 875704421)
    {
      if (v9 == 875704422)
      {
        goto LABEL_9;
      }

      v11 = 1.0;
      if (v9 != 1111970369)
      {
        if (v9 == 875704438)
        {
LABEL_9:
          if (v8 == 1)
          {
            v11 = 0.5;
          }

          else
          {
            v11 = -1.0;
          }

          if (!v8)
          {
            v11 = 1.0;
          }

          goto LABEL_18;
        }

LABEL_17:
        v11 = -1.0;
      }

LABEL_18:
      *(v27 + v8) = *(v10 + 8 * v8) + *(v7 + 8 * v8) * (v11 * v5);
      if (v6 == ++v8)
      {
        goto LABEL_19;
      }
    }

    v11 = 1.0;
    if (v9 == 32 || v9 == 846624121)
    {
      goto LABEL_18;
    }

    goto LABEL_17;
  }

LABEL_19:
  v12 = *(a1 + 88);
  v13 = *(a1 + 104);
  if (v12)
  {
    v14 = 0;
    v15 = *(a1 + 156);
    v16 = *(a1 + 96);
    while (v15 > 875704421)
    {
      if (v15 == 875704422)
      {
        goto LABEL_25;
      }

      v17 = 1.0;
      if (v15 != 1111970369)
      {
        if (v15 == 875704438)
        {
LABEL_25:
          if (v14 == 1)
          {
            v17 = 0.5;
          }

          else
          {
            v17 = -1.0;
          }

          if (!v14)
          {
            v17 = 1.0;
          }

          goto LABEL_34;
        }

LABEL_33:
        v17 = -1.0;
      }

LABEL_34:
      *(v26 + v14) = *(v16 + 8 * v14) + *(v13 + 8 * v14) * (v17 * v5);
      if (v12 == ++v14)
      {
        goto LABEL_35;
      }
    }

    v17 = 1.0;
    if (v15 == 32 || v15 == 846624121)
    {
      goto LABEL_34;
    }

    goto LABEL_33;
  }

LABEL_35:
  v18 = *(a1 + 112);
  v19 = *(a1 + 128);
  if (v18)
  {
    v20 = 0;
    v21 = *(a1 + 160);
    v22 = *(a1 + 120);
    while (v21 > 875704421)
    {
      if (v21 == 875704422)
      {
        goto LABEL_41;
      }

      v23 = 1.0;
      if (v21 != 1111970369)
      {
        if (v21 == 875704438)
        {
LABEL_41:
          if (v20 == 1)
          {
            v23 = 0.5;
          }

          else
          {
            v23 = -1.0;
          }

          if (!v20)
          {
            v23 = 1.0;
          }

          goto LABEL_50;
        }

LABEL_49:
        v23 = -1.0;
      }

LABEL_50:
      *(v25 + v20) = *(v22 + 8 * v20) + *(v19 + 8 * v20) * (v23 * v5);
      if (v18 == ++v20)
      {
        goto LABEL_51;
      }
    }

    v23 = 1.0;
    if (v21 == 32 || v21 == 846624121)
    {
      goto LABEL_50;
    }

    goto LABEL_49;
  }

LABEL_51:
  result = (*(a1 + 136))(*(a1 + 144), v4, v7, v27, v13, v26, v19, v25, *(a1 + 164));
  if (result)
  {
    *(*(*(a1 + 32) + 8) + 24) = -12506;
  }

  return result;
}

uint64_t bvc_Fill_32ARGB_420v709(size_t __len, unint64_t a2, unsigned __int8 *a3, uint64_t *a4, char **a5)
{
  v8 = *a4;
  v7 = a4[1];
  v10 = *a5;
  v9 = a5[1];
  v11 = a3[2];
  v12 = a3[3];
  v22 = a3[1];
  v13 = 20127 * v11 + 5983 * v22 + 2032 * v12 + 540672;
  if (*a4 == __len)
  {
    memset(v10, v13 >> 15, __len * a2);
  }

  else
  {
    if (!a2)
    {
      return 0;
    }

    v16 = v13 >> 15;
    v17 = a2;
    do
    {
      memset(v10, v16, __len);
      v10 += v8;
      --v17;
    }

    while (v17);
  }

  if (a2 >= 2)
  {
    v18 = a2 >> 1;
    v14.i32[0] = v22;
    v15.i32[0] = v12;
    v19 = __len + 1;
    v20 = vshrn_n_s32(vaddq_s32(vmlaq_lane_s32(vmlaq_lane_s32(vmulq_n_s32(xmmword_196E78BA0, v11), xmmword_196E78B90, v14, 0), xmmword_196E78BB0, v15, 0), vdupq_n_s32(0x404000u)), 0xFuLL);
    v23 = vuzp1_s8(v20, v20).u32[0];
    do
    {
      __pattern4 = v23;
      memset_pattern4(v9, &__pattern4, v19 & 0xFFFFFFFFFFFFFFFELL);
      v9 += v7;
      --v18;
    }

    while (v18);
  }

  return 0;
}

uint64_t bvc_Fill_32ARGB_420v601(size_t __len, unint64_t a2, unsigned __int8 *a3, uint64_t *a4, char **a5)
{
  v8 = *a4;
  v7 = a4[1];
  v10 = *a5;
  v9 = a5[1];
  v11 = a3[2];
  v12 = a3[3];
  v22 = a3[1];
  v13 = 16508 * v11 + 8412 * v22 + 3219 * v12 + 540672;
  if (*a4 == __len)
  {
    memset(v10, v13 >> 15, __len * a2);
  }

  else
  {
    if (!a2)
    {
      return 0;
    }

    v16 = v13 >> 15;
    v17 = a2;
    do
    {
      memset(v10, v16, __len);
      v10 += v8;
      --v17;
    }

    while (v17);
  }

  if (a2 >= 2)
  {
    v18 = a2 >> 1;
    v14.i32[0] = v22;
    v15.i32[0] = v12;
    v19 = __len + 1;
    v20 = vshrn_n_s32(vaddq_s32(vmlaq_lane_s32(vmlaq_lane_s32(vmulq_n_s32(xmmword_196E78BD0, v11), xmmword_196E78BC0, v14, 0), xmmword_196E78BE0, v15, 0), vdupq_n_s32(0x404000u)), 0xFuLL);
    v23 = vuzp1_s8(v20, v20).u32[0];
    do
    {
      __pattern4 = v23;
      memset_pattern4(v9, &__pattern4, v19 & 0xFFFFFFFFFFFFFFFELL);
      v9 += v7;
      --v18;
    }

    while (v18);
  }

  return 0;
}

void bvc_FullCompositionOpaque_420v_420v(double *a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, void *a5, double a6, double a7, double a8, double a9, double a10, double a11, double a12, double a13, float a14)
{
  v68 = *a3;
  v69 = *a2;
  v70 = a3[1];
  v71 = a2[1];
  v85 = 0;
  v86 = 0;
  v18 = *a4;
  v72 = a4[1];
  v83 = 0;
  v84 = 0;
  if (a6 + a8 >= 32767.0 || a7 + a9 >= 32767.0 || a10 + a12 >= 32767.0 || a11 + a13 >= 32767.0)
  {
    emitter = fig_log_get_emitter();

    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 4294954792, "<<<< VideoCompositor >>>>", 367, v14);
  }

  else
  {
    v81 = 0;
    v82 = 0;
    v79 = 0;
    v80 = 0;
    v77 = 0;
    v78 = 0;
    v26 = *(a1 + 1);
    *&v74.a = *a1;
    *&v74.c = v26;
    *&v74.tx = *(a1 + 2);
    if (BVCUtilityIsAffineTransformInvertible(&v74.a))
    {
      memset(&v73, 0, sizeof(v73));
      v27 = *(a1 + 1);
      *&v74.a = *a1;
      *&v74.c = v27;
      *&v74.tx = *(a1 + 2);
      CGAffineTransformInvert(&v73, &v74);
      v61 = a1[3];
      v62 = *a1;
      v59 = a1[4];
      v60 = a1[2];
      v63 = a1[5];
      v65 = a1[1];
      v28 = *(a1 + 1);
      *&v74.a = *a1;
      *&v74.c = v28;
      *&v74.tx = *(a1 + 2);
      if (BVCUtilityGetVectorsFromTransform(&v74.a, &v82, &v81))
      {
        v34 = 0;
      }

      else
      {
        v29 = v82.i32[0];
        if (v82.i32[0] < 0)
        {
          v29 = -v82.i32[0];
        }

        v30 = v81.i32[0];
        if (v81.i32[0] < 0)
        {
          v30 = -v81.i32[0];
        }

        if (v29 <= v30)
        {
          v31 = v30;
        }

        else
        {
          v31 = v29;
        }

        v74 = v73;
        BVCUtilityGetVectorsFromTransform(&v74.a, &v80, &v79);
        v32 = *(a1 + 1);
        *&v74.a = *a1;
        *&v74.c = v32;
        *&v74.tx = *(a1 + 2);
        v33 = BVCUtilityCreateEdgeLists(&v74, &v84, &v83, a6, a7, a8, a9, a10, a11, a12, a13);
        v34 = v84;
        if (!v33)
        {
          if (v84)
          {
            v35 = v83;
            if (v83)
            {
              v36 = vcvts_n_s32_f32(a14, 8uLL);
              v37 = vcvtd_n_s64_f64(v59 + v60 * 0.0 + v62 * 0.0, 0x10uLL);
              v38 = vcvtd_n_s64_f64(v63 + v61 * 0.0 + v65 * 0.0, 0x10uLL);
              LODWORD(v74.a) = 0;
              v76 = 0;
              v75 = 0;
              v39 = *v84;
              if (*v84 <= *v83)
              {
                v39 = *v83;
              }

              v40 = v39 + 0x8000;
              v41 = (v39 + 0x8000) >> 16;
              v64 = v38;
              v42 = ((v39 + 0x8000) & 0xFFFF0000) - v38 + 0x8000;
              v66 = v37;
              LODWORD(v78) = ((v79.i32[0] * v42) >> 16) + ((v80.i32[0] * (0x8000 - v37)) >> 16) - (v79.i32[0] > 0);
              HIDWORD(v78) = ((v80.i32[1] * (0x8000 - v37)) >> 16) + ((v79.i32[1] * v42) >> 16) - (v79.i32[1] > 0);
              bvc_extractEdgeParameters(v84, 0, v41, v31, 1, &v77 + 1, &v74, &v76);
              bvc_extractEdgeParameters(v35, 1, v40 >> 16, v31, 1, &v77, &v76 + 1, &v75);
              v67 = a5;
              v86 = *a5 + v18 * (v40 >> 16);
              do
              {
                v44 = v75;
                v45 = v76;
                if (v76 >= v75)
                {
                  v46 = v75;
                }

                else
                {
                  v46 = v76;
                }

                if (v46 > v41)
                {
                  bvc_FullCompositionOpaqueYInner_420v_420v_arm((v46 - v41), v36, &v86, v18, v68, v69, &v77 + 1, &v77, v43, SLODWORD(v74.a), SHIDWORD(v76), &v78, &v78 + 1, v80.u32[0], v80.u32[1], v79.i32[0], v79.i32[1]);
                  v41 = v46;
                }

                if (v41 >= v45)
                {
                  v34 = *(v34 + 5);
                  if (v34)
                  {
                    bvc_extractEdgeParameters(v34, 0, v41, v31, 1, &v77 + 1, &v74, &v76);
                  }
                }

                if (v41 >= v44)
                {
                  v35 = *(v35 + 5);
                  if (!v35)
                  {
                    break;
                  }

                  bvc_extractEdgeParameters(v35, 1, v41, v31, 1, &v77, &v76 + 1, &v75);
                }
              }

              while (v34);
              v47 = v83;
              v48 = v84;
              v49 = *v84 / 2;
              if (v49 <= *v83 / 2)
              {
                v49 = *v83 / 2;
              }

              v50 = v49 + 0x8000;
              v51 = (v49 + 0x8000) >> 16;
              v52 = ((v49 + 0x8000) & 0xFFFF0000) - v64 / 2 + 0x8000;
              v53 = 0x8000 - v66 / 2;
              LODWORD(v78) = ((v79.i32[0] * v52) >> 16) + ((v80.i32[0] * v53) >> 16) - (v79.i32[0] > 0);
              HIDWORD(v78) = ((v80.i32[1] * v53) >> 16) + ((v79.i32[1] * v52) >> 16) - (v79.i32[1] > 0);
              bvc_extractEdgeParameters(v84, 0, v51, v31, 2, &v77 + 1, &v74, &v76);
              bvc_extractEdgeParameters(v47, 1, v50 >> 16, v31, 2, &v77, &v76 + 1, &v75);
              v85 = v67[1] + v72 * (v50 >> 16);
              do
              {
                v55 = v75;
                v56 = v76;
                if (v76 >= v75)
                {
                  v57 = v75;
                }

                else
                {
                  v57 = v76;
                }

                if (v57 > v51)
                {
                  bvc_FullCompositionOpaqueCbCrInner_420v_420v_arm((v57 - v51), v36, &v85, v72, v70, v71, &v77 + 1, &v77, v54, SLODWORD(v74.a), SHIDWORD(v76), &v78, &v78 + 1, v80.u32[0], v80.u32[1], v79.i32[0], v79.i32[1]);
                  v51 = v57;
                }

                if (v51 >= v56)
                {
                  v48 = *(v48 + 5);
                  if (v48)
                  {
                    bvc_extractEdgeParameters(v48, 0, v51, v31, 2, &v77 + 1, &v74, &v76);
                  }
                }

                if (v51 >= v55)
                {
                  v47 = *(v47 + 5);
                  if (!v47)
                  {
                    break;
                  }

                  bvc_extractEdgeParameters(v47, 1, v51, v31, 2, &v77, &v76 + 1, &v75);
                }
              }

              while (v48);
              v34 = v84;
            }
          }
        }
      }
    }

    else
    {
      v34 = 0;
    }

    BVCUtilityDestroyEdgeList(v34);
    BVCUtilityDestroyEdgeList(v83);
  }
}

void bvc_FullComposition_420v_420v(double *a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, void *a5, double a6, double a7, double a8, double a9, double a10, double a11, double a12, double a13, float a14)
{
  v68 = *a3;
  v69 = *a2;
  v70 = a3[1];
  v71 = a2[1];
  v85 = 0;
  v86 = 0;
  v18 = *a4;
  v72 = a4[1];
  v83 = 0;
  v84 = 0;
  if (a6 + a8 >= 32767.0 || a7 + a9 >= 32767.0 || a10 + a12 >= 32767.0 || a11 + a13 >= 32767.0)
  {
    emitter = fig_log_get_emitter();

    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 4294954792, "<<<< VideoCompositor >>>>", 367, v14);
  }

  else
  {
    v81 = 0;
    v82 = 0;
    v79 = 0;
    v80 = 0;
    v77 = 0;
    v78 = 0;
    v26 = *(a1 + 1);
    *&v74.a = *a1;
    *&v74.c = v26;
    *&v74.tx = *(a1 + 2);
    if (BVCUtilityIsAffineTransformInvertible(&v74.a))
    {
      memset(&v73, 0, sizeof(v73));
      v27 = *(a1 + 1);
      *&v74.a = *a1;
      *&v74.c = v27;
      *&v74.tx = *(a1 + 2);
      CGAffineTransformInvert(&v73, &v74);
      v61 = a1[3];
      v62 = *a1;
      v59 = a1[4];
      v60 = a1[2];
      v63 = a1[5];
      v65 = a1[1];
      v28 = *(a1 + 1);
      *&v74.a = *a1;
      *&v74.c = v28;
      *&v74.tx = *(a1 + 2);
      if (BVCUtilityGetVectorsFromTransform(&v74.a, &v82, &v81))
      {
        v34 = 0;
      }

      else
      {
        v29 = v82.i32[0];
        if (v82.i32[0] < 0)
        {
          v29 = -v82.i32[0];
        }

        v30 = v81.i32[0];
        if (v81.i32[0] < 0)
        {
          v30 = -v81.i32[0];
        }

        if (v29 <= v30)
        {
          v31 = v30;
        }

        else
        {
          v31 = v29;
        }

        v74 = v73;
        BVCUtilityGetVectorsFromTransform(&v74.a, &v80, &v79);
        v32 = *(a1 + 1);
        *&v74.a = *a1;
        *&v74.c = v32;
        *&v74.tx = *(a1 + 2);
        v33 = BVCUtilityCreateEdgeLists(&v74, &v84, &v83, a6, a7, a8, a9, a10, a11, a12, a13);
        v34 = v84;
        if (!v33)
        {
          if (v84)
          {
            v35 = v83;
            if (v83)
            {
              v36 = vcvts_n_s32_f32(a14, 8uLL);
              v37 = vcvtd_n_s64_f64(v59 + v60 * 0.0 + v62 * 0.0, 0x10uLL);
              v38 = vcvtd_n_s64_f64(v63 + v61 * 0.0 + v65 * 0.0, 0x10uLL);
              LODWORD(v74.a) = 0;
              v76 = 0;
              v75 = 0;
              v39 = *v84;
              if (*v84 <= *v83)
              {
                v39 = *v83;
              }

              v40 = v39 + 0x8000;
              v41 = (v39 + 0x8000) >> 16;
              v64 = v38;
              v42 = ((v39 + 0x8000) & 0xFFFF0000) - v38 + 0x8000;
              v66 = v37;
              LODWORD(v78) = ((v79.i32[0] * v42) >> 16) + ((v80.i32[0] * (0x8000 - v37)) >> 16) - (v79.i32[0] > 0);
              HIDWORD(v78) = ((v80.i32[1] * (0x8000 - v37)) >> 16) + ((v79.i32[1] * v42) >> 16) - (v79.i32[1] > 0);
              bvc_extractEdgeParameters(v84, 0, v41, v31, 1, &v77 + 1, &v74, &v76);
              bvc_extractEdgeParameters(v35, 1, v40 >> 16, v31, 1, &v77, &v76 + 1, &v75);
              v67 = a5;
              v86 = *a5 + v18 * (v40 >> 16);
              do
              {
                v44 = v75;
                v45 = v76;
                if (v76 >= v75)
                {
                  v46 = v75;
                }

                else
                {
                  v46 = v76;
                }

                if (v46 > v41)
                {
                  bvc_FullCompositionYInner_420v_420v_arm((v46 - v41), v36, &v86, v18, v68, v69, &v77 + 1, &v77, v43, SLODWORD(v74.a), SHIDWORD(v76), &v78, &v78 + 1, v80.u32[0], v80.u32[1], v79.i32[0], v79.i32[1]);
                  v41 = v46;
                }

                if (v41 >= v45)
                {
                  v34 = *(v34 + 5);
                  if (v34)
                  {
                    bvc_extractEdgeParameters(v34, 0, v41, v31, 1, &v77 + 1, &v74, &v76);
                  }
                }

                if (v41 >= v44)
                {
                  v35 = *(v35 + 5);
                  if (!v35)
                  {
                    break;
                  }

                  bvc_extractEdgeParameters(v35, 1, v41, v31, 1, &v77, &v76 + 1, &v75);
                }
              }

              while (v34);
              v47 = v83;
              v48 = v84;
              v49 = *v84 / 2;
              if (v49 <= *v83 / 2)
              {
                v49 = *v83 / 2;
              }

              v50 = v49 + 0x8000;
              v51 = (v49 + 0x8000) >> 16;
              v52 = ((v49 + 0x8000) & 0xFFFF0000) - v64 / 2 + 0x8000;
              v53 = 0x8000 - v66 / 2;
              LODWORD(v78) = ((v79.i32[0] * v52) >> 16) + ((v80.i32[0] * v53) >> 16) - (v79.i32[0] > 0);
              HIDWORD(v78) = ((v80.i32[1] * v53) >> 16) + ((v79.i32[1] * v52) >> 16) - (v79.i32[1] > 0);
              bvc_extractEdgeParameters(v84, 0, v51, v31, 2, &v77 + 1, &v74, &v76);
              bvc_extractEdgeParameters(v47, 1, v50 >> 16, v31, 2, &v77, &v76 + 1, &v75);
              v85 = v67[1] + v72 * (v50 >> 16);
              do
              {
                v55 = v75;
                v56 = v76;
                if (v76 >= v75)
                {
                  v57 = v75;
                }

                else
                {
                  v57 = v76;
                }

                if (v57 > v51)
                {
                  bvc_FullCompositionCbCrInner_420v_420v_arm((v57 - v51), v36, &v85, v72, v70, v71, &v77 + 1, &v77, v54, SLODWORD(v74.a), SHIDWORD(v76), &v78, &v78 + 1, v80.u32[0], v80.u32[1], v79.i32[0], v79.i32[1]);
                  v51 = v57;
                }

                if (v51 >= v56)
                {
                  v48 = *(v48 + 5);
                  if (v48)
                  {
                    bvc_extractEdgeParameters(v48, 0, v51, v31, 2, &v77 + 1, &v74, &v76);
                  }
                }

                if (v51 >= v55)
                {
                  v47 = *(v47 + 5);
                  if (!v47)
                  {
                    break;
                  }

                  bvc_extractEdgeParameters(v47, 1, v51, v31, 2, &v77, &v76 + 1, &v75);
                }
              }

              while (v48);
              v34 = v84;
            }
          }
        }
      }
    }

    else
    {
      v34 = 0;
    }

    BVCUtilityDestroyEdgeList(v34);
    BVCUtilityDestroyEdgeList(v83);
  }
}

double bvc_FullCompositionOpaque_ARGB_420v709(double *a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, void *a5, double a6, double a7, double a8, double a9, double a10, double a11, double a12, double a13)
{
  v16 = *a2;
  v17 = *a3;
  v19 = *a4;
  v18 = a4[1];
  v153 = 0;
  v154 = 0;
  if (a6 + a8 >= 32767.0 || a7 + a9 >= 32767.0 || a10 + a12 >= 32767.0 || a11 + a13 >= 32767.0)
  {
    emitter = fig_log_get_emitter();

    return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 4294954792, "<<<< VideoCompositor >>>>", 367, v13);
  }

  else
  {
    v151 = 0;
    v152 = 0;
    v150 = 0;
    v149 = 0;
    v28 = *(a1 + 1);
    *&v145.a = *a1;
    *&v145.c = v28;
    *&v145.tx = *(a1 + 2);
    if (BVCUtilityIsAffineTransformInvertible(&v145.a))
    {
      memset(&v144, 0, sizeof(v144));
      v29 = *(a1 + 1);
      *&v145.a = *a1;
      *&v145.c = v29;
      *&v145.tx = *(a1 + 2);
      CGAffineTransformInvert(&v144, &v145);
      v134 = *a1;
      v139 = a1[1];
      v129 = a1[3];
      v116 = a1[4];
      v120 = a1[2];
      v123 = a1[5];
      v30 = *(a1 + 1);
      *&v145.a = *a1;
      *&v145.c = v30;
      *&v145.tx = *(a1 + 2);
      if (!BVCUtilityGetVectorsFromTransform(&v145.a, &v152, &v151))
      {
        v31 = v152.i32[0];
        if (v152.i32[0] < 0)
        {
          v31 = -v152.i32[0];
        }

        v32 = v151.i32[0];
        if (v151.i32[0] < 0)
        {
          v32 = -v151.i32[0];
        }

        if (v31 <= v32)
        {
          v31 = v32;
        }

        v119 = v31;
        v145 = v144;
        BVCUtilityGetVectorsFromTransform(&v145.a, &v150, &v149);
        v33 = *(a1 + 1);
        *&v145.a = *a1;
        *&v145.c = v33;
        *&v145.tx = *(a1 + 2);
        if (!BVCUtilityCreateEdgeLists(&v145, &v154, &v153, a6, a7, a8, a9, a10, a11, a12, a13))
        {
          v34 = v154;
          if (v154)
          {
            v35 = v153;
            if (v153)
            {
              v114 = v18;
              v36 = vcvtd_n_s64_f64(v116 + v120 * 0.0 + v134 * 0.0, 0x10uLL);
              v37 = vcvtd_n_s64_f64(v123 + v129 * 0.0 + v139 * 0.0, 0x10uLL);
              LODWORD(v145.a) = 0;
              v147 = 0;
              v148 = 0;
              v146 = 0;
              v38 = *v154;
              if (*v154 <= *v153)
              {
                v38 = *v153;
              }

              v112 = v36;
              v113 = v37;
              v39 = 0x8000 - v36;
              v140 = v38 + 0x8000;
              v40 = ((v38 + 0x8000) & 0xFFFF0000) - v37 + 0x8000;
              v41 = ((v150.i32[0] * v39) >> 16) - (v149.i32[0] > 0) + ((v149.i32[0] * v40) >> 16);
              v42 = a5;
              v43 = (v38 + 0x8000) >> 16;
              v44 = ((v150.i32[1] * v39) >> 16) - (v149.i32[1] > 0) + ((v149.i32[1] * v40) >> 16);
              bvc_extractEdgeParameters(v154, 0, v43, v119, 1, &v145, &v148, &v147);
              bvc_extractEdgeParameters(v35, 1, v43, v119, 1, &v148 + 1, &v147 + 1, &v146);
              v45 = v43;
              v46 = v35;
              v47 = v34;
              v117 = v42;
              v48 = *v42 + v19 * (v140 >> 16);
              do
              {
                v49 = v146;
                v50 = v147;
                if (v147 < v146)
                {
                  v49 = v147;
                }

                v51 = v49 - v45;
                if (v49 > v45)
                {
                  v130 = v47;
                  v135 = v46;
                  v52 = 0;
                  v53 = HIDWORD(v147);
                  v54 = v148;
                  v55 = v150.i32[0];
                  v56 = v150.i32[1];
                  v57 = v149.i32[0];
                  v58 = v149.i32[1];
                  a_low = LODWORD(v145.a);
                  v121 = HIDWORD(v148);
                  v60 = HIDWORD(v148);
                  do
                  {
                    LODWORD(v61) = a_low >> 16;
                    if (a_low >> 16 < (v60 >> 16))
                    {
                      v61 = v61;
                      v62 = v44 + ((v56 * (a_low & 0xFFFF0000)) >> 16);
                      v63 = v41 + ((v55 * (a_low & 0xFFFF0000)) >> 16);
                      do
                      {
                        v64 = (v17 + ((v63 >> 14) & 0xFFFFFFFFFFFFFFFCLL) + ((v62 >> 16) * v16));
                        v65 = *v64;
                        if (*v64)
                        {
                          v66 = (2120 * v65 + 2032 * v64[3] + 20127 * v64[2] + 5983 * v64[1]) >> 15;
                          if (v65 != 255)
                          {
                            v66 += ((16776959 * v65 + 0x10000) * *(v48 + v61)) >> 16;
                          }

                          *(v48 + v61) = v66;
                        }

                        v63 += v55;
                        v62 += v56;
                        ++v61;
                      }

                      while (v61 < v60 >> 16);
                    }

                    a_low += v54;
                    v60 += v53;
                    v41 += v57;
                    v44 += v58;
                    v48 += v19;
                    ++v52;
                  }

                  while (v52 != v51);
                  LODWORD(v145.a) = a_low;
                  HIDWORD(v148) = v121 + v53 * v51;
                  v50 = v147;
                  v45 = v49;
                  v47 = v130;
                  v46 = v135;
                }

                if (v45 >= v50)
                {
                  v47 = *(v47 + 5);
                  if (v47)
                  {
                    v131 = v47;
                    v136 = v46;
                    v124 = v45;
                    bvc_extractEdgeParameters(v47, 0, v45, v119, 1, &v145, &v148, &v147);
                    v45 = v124;
                    v47 = v131;
                    v46 = v136;
                  }
                }

                if (v45 >= v146)
                {
                  v67 = *(v46 + 5);
                  if (!v67)
                  {
                    break;
                  }

                  v132 = v47;
                  v137 = v67;
                  v125 = v45;
                  bvc_extractEdgeParameters(v67, 1, v45, v119, 1, &v148 + 1, &v147 + 1, &v146);
                  v45 = v125;
                  v47 = v132;
                  v46 = v137;
                }
              }

              while (v47 && v46);
              v68 = v149.i32[0] > 0;
              v69 = 2 * v149.i32[0];
              v70 = vadd_s32(v150, v150);
              v150 = v70;
              v71 = v149.i32[1] > 0;
              v72 = 2 * v149.i32[1];
              v149.i32[0] *= 2;
              v149.i32[1] *= 2;
              v73 = v153;
              v74 = v154;
              v75 = *v154 / 2;
              if (v75 <= *v153 / 2)
              {
                v75 = *v153 / 2;
              }

              v76 = v75 + 0x8000;
              v77 = (((v75 + 0x8000) & 0xFFFF0000) - v113 / 2 + 0x8000);
              v78 = 0x8000 - v112 / 2;
              v79 = ((v70.i32[0] * v78) >> 16) - v68 + ((v77 * v69) >> 16);
              v80 = ((v70.i32[1] * v78) >> 16) - v71 + ((v77 * v72) >> 16);
              bvc_extractEdgeParameters(v154, 0, (v75 + 0x8000) >> 16, v119, 2, &v145, &v148, &v147);
              v122 = v73;
              bvc_extractEdgeParameters(v73, 1, v76 >> 16, v119, 2, &v148 + 1, &v147 + 1, &v146);
              v81 = v76 >> 16;
              v82 = v74;
              v83 = v117[1] + v114 * (v76 >> 16);
              v133 = v114;
              do
              {
                v84 = v146;
                v85 = v147;
                if (v147 < v146)
                {
                  v84 = v147;
                }

                v86 = v84 - v81;
                if (v84 > v81)
                {
                  v118 = v84;
                  v126 = v82;
                  v87 = 0;
                  v88 = HIDWORD(v147);
                  v141 = v148;
                  v89 = v150.i32[0];
                  v90 = v150.i32[1];
                  v91 = v149.i32[1];
                  v138 = v149.i32[0];
                  v92 = LODWORD(v145.a);
                  v115 = HIDWORD(v148);
                  v93 = HIDWORD(v148);
                  do
                  {
                    v94 = v92 >> 16;
                    if (v92 >> 16 < (v93 >> 16))
                    {
                      v95 = v94;
                      v96 = 2 * v94;
                      v97 = v80 + ((v90 * (v92 & 0xFFFF0000)) >> 16);
                      v98 = v79 + ((v89 * (v92 & 0xFFFF0000)) >> 16);
                      do
                      {
                        v99 = (v17 + ((v98 >> 14) & 0xFFFFFFFFFFFFFFFCLL) + ((v97 >> 16) * v16));
                        v100 = *v99;
                        if (*v99)
                        {
                          v101 = v99[3];
                          v102 = v99[2];
                          v103 = v99[1];
                          v104 = (14392 * v101 + 16512 * v100 - 11093 * v102 - 3298 * v103) >> 15;
                          v105 = (-1317 * v101 + 16512 * v100 - 13073 * v102 + 14392 * v103) >> 15;
                          if (v100 == 255)
                          {
                            v106 = (v83 + v96);
                            *v106 = v104;
                            v106[1] = v105;
                          }

                          else
                          {
                            v107 = (v83 + v96);
                            v108 = 0x10000 - (v100 | (v100 << 8));
                            *v107 = v104 + ((v108 * *(v83 + v96)) >> 16);
                            v107[1] = v105 + ((v108 * *(v83 + v96 + 1)) >> 16);
                          }
                        }

                        v98 += v89;
                        v97 += v90;
                        ++v95;
                        v96 += 2;
                      }

                      while (v95 < v93 >> 16);
                    }

                    v92 += v141;
                    v93 += v88;
                    v79 += v138;
                    v80 += v91;
                    v83 += v133;
                    ++v87;
                  }

                  while (v87 != v86);
                  LODWORD(v145.a) = v92;
                  HIDWORD(v148) = v115 + v88 * v86;
                  v85 = v147;
                  v81 = v118;
                  v82 = v126;
                }

                if (v81 >= v85)
                {
                  v82 = *(v82 + 5);
                  if (v82)
                  {
                    v142 = v81;
                    v127 = v82;
                    bvc_extractEdgeParameters(v82, 0, v81, v119, 2, &v145, &v148, &v147);
                    v81 = v142;
                    v82 = v127;
                  }
                }

                if (v81 >= v146)
                {
                  v109 = *(v122 + 5);
                  if (!v109)
                  {
                    break;
                  }

                  v122 = *(v122 + 5);
                  v128 = v82;
                  v143 = v81;
                  bvc_extractEdgeParameters(v109, 1, v81, v119, 2, &v148 + 1, &v147 + 1, &v146);
                  v81 = v143;
                  v82 = v128;
                }
              }

              while (v82 && v122);
            }
          }
        }
      }
    }

    BVCUtilityDestroyEdgeList(v154);
    BVCUtilityDestroyEdgeList(v153);
  }

  return result;
}

double bvc_FullComposition_ARGB_420v709(double *a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, void *a5, double a6, double a7, double a8, double a9, double a10, double a11, double a12, double a13, float a14)
{
  v18 = *a2;
  v19 = *a3;
  v21 = *a4;
  v20 = a4[1];
  v153 = 0;
  v154 = 0;
  if (a6 + a8 >= 32767.0 || a7 + a9 >= 32767.0 || a10 + a12 >= 32767.0 || a11 + a13 >= 32767.0)
  {
    emitter = fig_log_get_emitter();

    return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 4294954792, "<<<< VideoCompositor >>>>", 367, v14);
  }

  else
  {
    v151 = 0;
    v152 = 0;
    v149 = 0;
    v150 = 0;
    v29 = *(a1 + 1);
    *&v144.a = *a1;
    *&v144.c = v29;
    *&v144.tx = *(a1 + 2);
    if (BVCUtilityIsAffineTransformInvertible(&v144.a))
    {
      memset(&v143, 0, sizeof(v143));
      v30 = *(a1 + 1);
      *&v144.a = *a1;
      *&v144.c = v30;
      *&v144.tx = *(a1 + 2);
      CGAffineTransformInvert(&v143, &v144);
      v130 = *a1;
      v134 = a1[1];
      v125 = a1[3];
      v115 = a1[4];
      v118 = a1[2];
      v121 = a1[5];
      v31 = *(a1 + 1);
      *&v144.a = *a1;
      *&v144.c = v31;
      *&v144.tx = *(a1 + 2);
      if (!BVCUtilityGetVectorsFromTransform(&v144.a, &v152, &v151))
      {
        v32 = v152.i32[0];
        if (v152.i32[0] < 0)
        {
          v32 = -v152.i32[0];
        }

        v33 = v151.i32[0];
        if (v151.i32[0] < 0)
        {
          v33 = -v151.i32[0];
        }

        if (v32 <= v33)
        {
          v32 = v33;
        }

        v117 = v32;
        v144 = v143;
        BVCUtilityGetVectorsFromTransform(&v144.a, &v150, &v149);
        v34 = *(a1 + 1);
        *&v144.a = *a1;
        *&v144.c = v34;
        *&v144.tx = *(a1 + 2);
        if (!BVCUtilityCreateEdgeLists(&v144, &v154, &v153, a6, a7, a8, a9, a10, a11, a12, a13))
        {
          v35 = v154;
          if (v154)
          {
            v36 = v153;
            if (v153)
            {
              v113 = v20;
              v110 = v21;
              v37 = vcvts_n_s32_f32(a14, 8uLL);
              v38 = vcvtd_n_s64_f64(v115 + v118 * 0.0 + v130 * 0.0, 0x10uLL);
              v39 = vcvtd_n_s64_f64(v121 + v125 * 0.0 + v134 * 0.0, 0x10uLL);
              LODWORD(v144.a) = 0;
              v148 = 0;
              v147 = 0;
              v146 = 0;
              v145 = 0;
              v40 = *v154;
              if (*v154 <= *v153)
              {
                v40 = *v153;
              }

              v111 = v38;
              v112 = v39;
              v41 = 0x8000 - v38;
              v136 = v40 + 0x8000;
              v42 = ((v40 + 0x8000) & 0xFFFF0000) - v39 + 0x8000;
              v43 = ((v150.i32[0] * v41) >> 16) - (v149.i32[0] > 0) + ((v149.i32[0] * v42) >> 16);
              v44 = ((v150.i32[1] * v41) >> 16) - (v149.i32[1] > 0) + ((v149.i32[1] * v42) >> 16);
              bvc_extractEdgeParameters(v154, 0, (v40 + 0x8000) >> 16, v117, 1, &v144, &v147, &v146);
              bvc_extractEdgeParameters(v36, 1, v136 >> 16, v117, 1, &v148, &v146 + 1, &v145);
              v45 = v136 >> 16;
              v46 = v36;
              v47 = v35;
              v48 = *a5 + v110 * (v136 >> 16);
              v49 = (0x10101020000 * (v37 << 8)) >> 48;
              do
              {
                v50 = v145;
                v51 = v146;
                if (v146 < v145)
                {
                  v50 = v146;
                }

                v52 = v50 - v45;
                if (v50 > v45)
                {
                  v126 = v47;
                  v53 = 0;
                  v54 = HIDWORD(v146);
                  v137 = v147;
                  v55 = v150.i32[0];
                  v56 = v150.i32[1];
                  v57 = v149.i32[0];
                  v58 = v149.i32[1];
                  a_low = LODWORD(v144.a);
                  v119 = v148;
                  v60 = v148;
                  do
                  {
                    LODWORD(v61) = a_low >> 16;
                    if (a_low >> 16 < (v60 >> 16))
                    {
                      v61 = v61;
                      v62 = v44 + ((v56 * (a_low & 0xFFFF0000)) >> 16);
                      v63 = v43 + ((v55 * (a_low & 0xFFFF0000)) >> 16);
                      do
                      {
                        v64 = (v19 + ((v63 >> 14) & 0xFFFFFFFFFFFFFFFCLL) + ((v62 >> 16) * v18));
                        v65 = *v64;
                        if (v49 * v65)
                        {
                          *(v48 + v61) = (((2120 * v65 + 2032 * v64[3] + 20127 * v64[2] + 5983 * v64[1]) >> 15) * v37 + (((0x10000 - v49 * v65) * *(v48 + v61)) >> 8)) >> 8;
                        }

                        v63 += v55;
                        v62 += v56;
                        ++v61;
                      }

                      while (v61 < v60 >> 16);
                    }

                    a_low += v137;
                    v60 += v54;
                    v43 += v57;
                    v44 += v58;
                    v48 += v110;
                    ++v53;
                  }

                  while (v53 != v52);
                  LODWORD(v144.a) = a_low;
                  v148 = v119 + v54 * v52;
                  v51 = v146;
                  v45 = v50;
                  v47 = v126;
                }

                if (v45 >= v51)
                {
                  v47 = *(v47 + 5);
                  if (v47)
                  {
                    v127 = v47;
                    v131 = v46;
                    v138 = v45;
                    bvc_extractEdgeParameters(v47, 0, v45, v117, 1, &v144, &v147, &v146);
                    v45 = v138;
                    v47 = v127;
                    v46 = v131;
                  }
                }

                if (v45 >= v145)
                {
                  v66 = *(v46 + 5);
                  if (!v66)
                  {
                    break;
                  }

                  v128 = v47;
                  v132 = v66;
                  v139 = v45;
                  bvc_extractEdgeParameters(v66, 1, v45, v117, 1, &v148, &v146 + 1, &v145);
                  v45 = v139;
                  v47 = v128;
                  v46 = v132;
                }
              }

              while (v47 && v46);
              v67 = v149.i32[0] > 0;
              v68 = 2 * v149.i32[0];
              v69 = vadd_s32(v150, v150);
              v150 = v69;
              v70 = v149.i32[1] > 0;
              v71 = 2 * v149.i32[1];
              v149.i32[0] *= 2;
              v149.i32[1] *= 2;
              v72 = v154;
              v120 = v153;
              v73 = *v154 / 2;
              if (v73 <= *v153 / 2)
              {
                v73 = *v153 / 2;
              }

              v74 = v73 + 0x8000;
              v75 = (((v73 + 0x8000) & 0xFFFF0000) - v112 / 2 + 0x8000);
              v76 = 0x8000 - v111 / 2;
              v77 = ((v69.i32[0] * v76) >> 16) - v67 + ((v75 * v68) >> 16);
              v78 = ((v69.i32[1] * v76) >> 16) - v70 + ((v75 * v71) >> 16);
              bvc_extractEdgeParameters(v154, 0, (v73 + 0x8000) >> 16, v117, 2, &v144, &v147, &v146);
              bvc_extractEdgeParameters(v120, 1, v74 >> 16, v117, 2, &v148, &v146 + 1, &v145);
              v79 = v74 >> 16;
              v80 = v72;
              v81 = a5[1] + v113 * (v74 >> 16);
              v129 = v113;
              do
              {
                v82 = v145;
                v83 = v146;
                if (v146 < v145)
                {
                  v82 = v146;
                }

                v140 = v82 - v79;
                if (v82 > v79)
                {
                  v116 = v82;
                  v122 = v80;
                  v84 = 0;
                  v85 = HIDWORD(v146);
                  v135 = v147;
                  v86 = v150.i32[0];
                  v87 = v150.i32[1];
                  v88 = v149.i32[1];
                  v133 = v149.i32[0];
                  v89 = LODWORD(v144.a);
                  v114 = v148;
                  v90 = v148;
                  do
                  {
                    v91 = v89 >> 16;
                    if (v89 >> 16 < (v90 >> 16))
                    {
                      v92 = v91;
                      v93 = 2 * v91;
                      v94 = v78 + ((v87 * (v89 & 0xFFFF0000)) >> 16);
                      v95 = v77 + ((v86 * (v89 & 0xFFFF0000)) >> 16);
                      do
                      {
                        v96 = (v19 + ((v95 >> 14) & 0xFFFFFFFFFFFFFFFCLL) + ((v94 >> 16) * v18));
                        v97 = *v96;
                        v98 = v49 * v97;
                        if (v49 * v97)
                        {
                          v99 = v96[3];
                          v100 = v96[2];
                          v101 = v96[1];
                          v102 = 129 * v97;
                          v103 = (14392 * v99 + (v102 << 7) - 11093 * v100 - 3298 * v101) >> 15;
                          v104 = (-1317 * v99 + (v102 << 7) - 13073 * v100 + 14392 * v101) >> 15;
                          v105 = (v81 + v93);
                          v106 = 0x10000 - v98;
                          *v105 = (v103 * v37 + ((v106 * *(v81 + v93)) >> 8)) >> 8;
                          v105[1] = (v104 * v37 + ((v106 * *(v81 + v93 + 1)) >> 8)) >> 8;
                        }

                        v95 += v86;
                        v94 += v87;
                        ++v92;
                        v93 += 2;
                      }

                      while (v92 < v90 >> 16);
                    }

                    v89 += v135;
                    v90 += v85;
                    v77 += v133;
                    v78 += v88;
                    v81 += v129;
                    ++v84;
                  }

                  while (v84 != v140);
                  LODWORD(v144.a) = v89;
                  v148 = v114 + v85 * v140;
                  v83 = v146;
                  v79 = v116;
                  v80 = v122;
                }

                if (v79 >= v83)
                {
                  v80 = *(v80 + 5);
                  if (v80)
                  {
                    v141 = v79;
                    v123 = v80;
                    bvc_extractEdgeParameters(v80, 0, v79, v117, 2, &v144, &v147, &v146);
                    v79 = v141;
                    v80 = v123;
                  }
                }

                if (v79 >= v145)
                {
                  v107 = *(v120 + 5);
                  if (!v107)
                  {
                    break;
                  }

                  v120 = *(v120 + 5);
                  v124 = v80;
                  v142 = v79;
                  bvc_extractEdgeParameters(v107, 1, v79, v117, 2, &v148, &v146 + 1, &v145);
                  v79 = v142;
                  v80 = v124;
                }
              }

              while (v80 && v120);
            }
          }
        }
      }
    }

    BVCUtilityDestroyEdgeList(v154);
    BVCUtilityDestroyEdgeList(v153);
  }

  return result;
}

double bvc_FullCompositionOpaque_ARGB_420v601(double *a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, void *a5, double a6, double a7, double a8, double a9, double a10, double a11, double a12, double a13)
{
  v16 = *a2;
  v17 = *a3;
  v19 = *a4;
  v18 = a4[1];
  v153 = 0;
  v154 = 0;
  if (a6 + a8 >= 32767.0 || a7 + a9 >= 32767.0 || a10 + a12 >= 32767.0 || a11 + a13 >= 32767.0)
  {
    emitter = fig_log_get_emitter();

    return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 4294954792, "<<<< VideoCompositor >>>>", 367, v13);
  }

  else
  {
    v151 = 0;
    v152 = 0;
    v150 = 0;
    v149 = 0;
    v28 = *(a1 + 1);
    *&v145.a = *a1;
    *&v145.c = v28;
    *&v145.tx = *(a1 + 2);
    if (BVCUtilityIsAffineTransformInvertible(&v145.a))
    {
      memset(&v144, 0, sizeof(v144));
      v29 = *(a1 + 1);
      *&v145.a = *a1;
      *&v145.c = v29;
      *&v145.tx = *(a1 + 2);
      CGAffineTransformInvert(&v144, &v145);
      v134 = *a1;
      v139 = a1[1];
      v129 = a1[3];
      v116 = a1[4];
      v120 = a1[2];
      v123 = a1[5];
      v30 = *(a1 + 1);
      *&v145.a = *a1;
      *&v145.c = v30;
      *&v145.tx = *(a1 + 2);
      if (!BVCUtilityGetVectorsFromTransform(&v145.a, &v152, &v151))
      {
        v31 = v152.i32[0];
        if (v152.i32[0] < 0)
        {
          v31 = -v152.i32[0];
        }

        v32 = v151.i32[0];
        if (v151.i32[0] < 0)
        {
          v32 = -v151.i32[0];
        }

        if (v31 <= v32)
        {
          v31 = v32;
        }

        v119 = v31;
        v145 = v144;
        BVCUtilityGetVectorsFromTransform(&v145.a, &v150, &v149);
        v33 = *(a1 + 1);
        *&v145.a = *a1;
        *&v145.c = v33;
        *&v145.tx = *(a1 + 2);
        if (!BVCUtilityCreateEdgeLists(&v145, &v154, &v153, a6, a7, a8, a9, a10, a11, a12, a13))
        {
          v34 = v154;
          if (v154)
          {
            v35 = v153;
            if (v153)
            {
              v114 = v18;
              v36 = vcvtd_n_s64_f64(v116 + v120 * 0.0 + v134 * 0.0, 0x10uLL);
              v37 = vcvtd_n_s64_f64(v123 + v129 * 0.0 + v139 * 0.0, 0x10uLL);
              LODWORD(v145.a) = 0;
              v147 = 0;
              v148 = 0;
              v146 = 0;
              v38 = *v154;
              if (*v154 <= *v153)
              {
                v38 = *v153;
              }

              v112 = v36;
              v113 = v37;
              v39 = 0x8000 - v36;
              v140 = v38 + 0x8000;
              v40 = ((v38 + 0x8000) & 0xFFFF0000) - v37 + 0x8000;
              v41 = ((v150.i32[0] * v39) >> 16) - (v149.i32[0] > 0) + ((v149.i32[0] * v40) >> 16);
              v42 = a5;
              v43 = (v38 + 0x8000) >> 16;
              v44 = ((v150.i32[1] * v39) >> 16) - (v149.i32[1] > 0) + ((v149.i32[1] * v40) >> 16);
              bvc_extractEdgeParameters(v154, 0, v43, v119, 1, &v145, &v148, &v147);
              bvc_extractEdgeParameters(v35, 1, v43, v119, 1, &v148 + 1, &v147 + 1, &v146);
              v45 = v43;
              v46 = v35;
              v47 = v34;
              v117 = v42;
              v48 = *v42 + v19 * (v140 >> 16);
              do
              {
                v49 = v146;
                v50 = v147;
                if (v147 < v146)
                {
                  v49 = v147;
                }

                v51 = v49 - v45;
                if (v49 > v45)
                {
                  v130 = v47;
                  v135 = v46;
                  v52 = 0;
                  v53 = HIDWORD(v147);
                  v54 = v148;
                  v55 = v150.i32[0];
                  v56 = v150.i32[1];
                  v57 = v149.i32[0];
                  v58 = v149.i32[1];
                  a_low = LODWORD(v145.a);
                  v121 = HIDWORD(v148);
                  v60 = HIDWORD(v148);
                  do
                  {
                    LODWORD(v61) = a_low >> 16;
                    if (a_low >> 16 < (v60 >> 16))
                    {
                      v61 = v61;
                      v62 = v44 + ((v56 * (a_low & 0xFFFF0000)) >> 16);
                      v63 = v41 + ((v55 * (a_low & 0xFFFF0000)) >> 16);
                      do
                      {
                        v64 = (v17 + ((v63 >> 14) & 0xFFFFFFFFFFFFFFFCLL) + ((v62 >> 16) * v16));
                        v65 = *v64;
                        if (*v64)
                        {
                          v66 = (2120 * v65 + 3219 * v64[3] + 16508 * v64[2] + 8412 * v64[1]) >> 15;
                          if (v65 != 255)
                          {
                            v66 += ((16776959 * v65 + 0x10000) * *(v48 + v61)) >> 16;
                          }

                          *(v48 + v61) = v66;
                        }

                        v63 += v55;
                        v62 += v56;
                        ++v61;
                      }

                      while (v61 < v60 >> 16);
                    }

                    a_low += v54;
                    v60 += v53;
                    v41 += v57;
                    v44 += v58;
                    v48 += v19;
                    ++v52;
                  }

                  while (v52 != v51);
                  LODWORD(v145.a) = a_low;
                  HIDWORD(v148) = v121 + v53 * v51;
                  v50 = v147;
                  v45 = v49;
                  v47 = v130;
                  v46 = v135;
                }

                if (v45 >= v50)
                {
                  v47 = *(v47 + 5);
                  if (v47)
                  {
                    v131 = v47;
                    v136 = v46;
                    v124 = v45;
                    bvc_extractEdgeParameters(v47, 0, v45, v119, 1, &v145, &v148, &v147);
                    v45 = v124;
                    v47 = v131;
                    v46 = v136;
                  }
                }

                if (v45 >= v146)
                {
                  v67 = *(v46 + 5);
                  if (!v67)
                  {
                    break;
                  }

                  v132 = v47;
                  v137 = v67;
                  v125 = v45;
                  bvc_extractEdgeParameters(v67, 1, v45, v119, 1, &v148 + 1, &v147 + 1, &v146);
                  v45 = v125;
                  v47 = v132;
                  v46 = v137;
                }
              }

              while (v47 && v46);
              v68 = v149.i32[0] > 0;
              v69 = 2 * v149.i32[0];
              v70 = vadd_s32(v150, v150);
              v150 = v70;
              v71 = v149.i32[1] > 0;
              v72 = 2 * v149.i32[1];
              v149.i32[0] *= 2;
              v149.i32[1] *= 2;
              v73 = v153;
              v74 = v154;
              v75 = *v154 / 2;
              if (v75 <= *v153 / 2)
              {
                v75 = *v153 / 2;
              }

              v76 = v75 + 0x8000;
              v77 = (((v75 + 0x8000) & 0xFFFF0000) - v113 / 2 + 0x8000);
              v78 = 0x8000 - v112 / 2;
              v79 = ((v70.i32[0] * v78) >> 16) - v68 + ((v77 * v69) >> 16);
              v80 = ((v70.i32[1] * v78) >> 16) - v71 + ((v77 * v72) >> 16);
              bvc_extractEdgeParameters(v154, 0, (v75 + 0x8000) >> 16, v119, 2, &v145, &v148, &v147);
              v122 = v73;
              bvc_extractEdgeParameters(v73, 1, v76 >> 16, v119, 2, &v148 + 1, &v147 + 1, &v146);
              v81 = v76 >> 16;
              v82 = v74;
              v83 = v117[1] + v114 * (v76 >> 16);
              v133 = v114;
              do
              {
                v84 = v146;
                v85 = v147;
                if (v147 < v146)
                {
                  v84 = v147;
                }

                v86 = v84 - v81;
                if (v84 > v81)
                {
                  v118 = v84;
                  v126 = v82;
                  v87 = 0;
                  v88 = HIDWORD(v147);
                  v141 = v148;
                  v89 = v150.i32[0];
                  v90 = v150.i32[1];
                  v91 = v149.i32[1];
                  v138 = v149.i32[0];
                  v92 = LODWORD(v145.a);
                  v115 = HIDWORD(v148);
                  v93 = HIDWORD(v148);
                  do
                  {
                    v94 = v92 >> 16;
                    if (v92 >> 16 < (v93 >> 16))
                    {
                      v95 = v94;
                      v96 = 2 * v94;
                      v97 = v80 + ((v90 * (v92 & 0xFFFF0000)) >> 16);
                      v98 = v79 + ((v89 * (v92 & 0xFFFF0000)) >> 16);
                      do
                      {
                        v99 = (v17 + ((v98 >> 14) & 0xFFFFFFFFFFFFFFFCLL) + ((v97 >> 16) * v16));
                        v100 = *v99;
                        if (*v99)
                        {
                          v101 = v99[3];
                          v102 = v99[2];
                          v103 = v99[1];
                          v104 = (14392 * v101 + 16512 * v100 - 9532 * v102 - 4858 * v103) >> 15;
                          v105 = (-2348 * v101 + 16512 * v100 - 12040 * v102 + 14392 * v103) >> 15;
                          if (v100 == 255)
                          {
                            v106 = (v83 + v96);
                            *v106 = v104;
                            v106[1] = v105;
                          }

                          else
                          {
                            v107 = (v83 + v96);
                            v108 = 0x10000 - (v100 | (v100 << 8));
                            *v107 = v104 + ((v108 * *(v83 + v96)) >> 16);
                            v107[1] = v105 + ((v108 * *(v83 + v96 + 1)) >> 16);
                          }
                        }

                        v98 += v89;
                        v97 += v90;
                        ++v95;
                        v96 += 2;
                      }

                      while (v95 < v93 >> 16);
                    }

                    v92 += v141;
                    v93 += v88;
                    v79 += v138;
                    v80 += v91;
                    v83 += v133;
                    ++v87;
                  }

                  while (v87 != v86);
                  LODWORD(v145.a) = v92;
                  HIDWORD(v148) = v115 + v88 * v86;
                  v85 = v147;
                  v81 = v118;
                  v82 = v126;
                }

                if (v81 >= v85)
                {
                  v82 = *(v82 + 5);
                  if (v82)
                  {
                    v142 = v81;
                    v127 = v82;
                    bvc_extractEdgeParameters(v82, 0, v81, v119, 2, &v145, &v148, &v147);
                    v81 = v142;
                    v82 = v127;
                  }
                }

                if (v81 >= v146)
                {
                  v109 = *(v122 + 5);
                  if (!v109)
                  {
                    break;
                  }

                  v122 = *(v122 + 5);
                  v128 = v82;
                  v143 = v81;
                  bvc_extractEdgeParameters(v109, 1, v81, v119, 2, &v148 + 1, &v147 + 1, &v146);
                  v81 = v143;
                  v82 = v128;
                }
              }

              while (v82 && v122);
            }
          }
        }
      }
    }

    BVCUtilityDestroyEdgeList(v154);
    BVCUtilityDestroyEdgeList(v153);
  }

  return result;
}

double bvc_FullComposition_ARGB_420v601(double *a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, void *a5, double a6, double a7, double a8, double a9, double a10, double a11, double a12, double a13, float a14)
{
  v18 = *a2;
  v19 = *a3;
  v21 = *a4;
  v20 = a4[1];
  v153 = 0;
  v154 = 0;
  if (a6 + a8 >= 32767.0 || a7 + a9 >= 32767.0 || a10 + a12 >= 32767.0 || a11 + a13 >= 32767.0)
  {
    emitter = fig_log_get_emitter();

    return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 4294954792, "<<<< VideoCompositor >>>>", 367, v14);
  }

  else
  {
    v151 = 0;
    v152 = 0;
    v149 = 0;
    v150 = 0;
    v29 = *(a1 + 1);
    *&v144.a = *a1;
    *&v144.c = v29;
    *&v144.tx = *(a1 + 2);
    if (BVCUtilityIsAffineTransformInvertible(&v144.a))
    {
      memset(&v143, 0, sizeof(v143));
      v30 = *(a1 + 1);
      *&v144.a = *a1;
      *&v144.c = v30;
      *&v144.tx = *(a1 + 2);
      CGAffineTransformInvert(&v143, &v144);
      v130 = *a1;
      v134 = a1[1];
      v125 = a1[3];
      v115 = a1[4];
      v118 = a1[2];
      v121 = a1[5];
      v31 = *(a1 + 1);
      *&v144.a = *a1;
      *&v144.c = v31;
      *&v144.tx = *(a1 + 2);
      if (!BVCUtilityGetVectorsFromTransform(&v144.a, &v152, &v151))
      {
        v32 = v152.i32[0];
        if (v152.i32[0] < 0)
        {
          v32 = -v152.i32[0];
        }

        v33 = v151.i32[0];
        if (v151.i32[0] < 0)
        {
          v33 = -v151.i32[0];
        }

        if (v32 <= v33)
        {
          v32 = v33;
        }

        v117 = v32;
        v144 = v143;
        BVCUtilityGetVectorsFromTransform(&v144.a, &v150, &v149);
        v34 = *(a1 + 1);
        *&v144.a = *a1;
        *&v144.c = v34;
        *&v144.tx = *(a1 + 2);
        if (!BVCUtilityCreateEdgeLists(&v144, &v154, &v153, a6, a7, a8, a9, a10, a11, a12, a13))
        {
          v35 = v154;
          if (v154)
          {
            v36 = v153;
            if (v153)
            {
              v113 = v20;
              v110 = v21;
              v37 = vcvts_n_s32_f32(a14, 8uLL);
              v38 = vcvtd_n_s64_f64(v115 + v118 * 0.0 + v130 * 0.0, 0x10uLL);
              v39 = vcvtd_n_s64_f64(v121 + v125 * 0.0 + v134 * 0.0, 0x10uLL);
              LODWORD(v144.a) = 0;
              v148 = 0;
              v147 = 0;
              v146 = 0;
              v145 = 0;
              v40 = *v154;
              if (*v154 <= *v153)
              {
                v40 = *v153;
              }

              v111 = v38;
              v112 = v39;
              v41 = 0x8000 - v38;
              v136 = v40 + 0x8000;
              v42 = ((v40 + 0x8000) & 0xFFFF0000) - v39 + 0x8000;
              v43 = ((v150.i32[0] * v41) >> 16) - (v149.i32[0] > 0) + ((v149.i32[0] * v42) >> 16);
              v44 = ((v150.i32[1] * v41) >> 16) - (v149.i32[1] > 0) + ((v149.i32[1] * v42) >> 16);
              bvc_extractEdgeParameters(v154, 0, (v40 + 0x8000) >> 16, v117, 1, &v144, &v147, &v146);
              bvc_extractEdgeParameters(v36, 1, v136 >> 16, v117, 1, &v148, &v146 + 1, &v145);
              v45 = v136 >> 16;
              v46 = v36;
              v47 = v35;
              v48 = *a5 + v110 * (v136 >> 16);
              v49 = (0x10101020000 * (v37 << 8)) >> 48;
              do
              {
                v50 = v145;
                v51 = v146;
                if (v146 < v145)
                {
                  v50 = v146;
                }

                v52 = v50 - v45;
                if (v50 > v45)
                {
                  v126 = v47;
                  v53 = 0;
                  v54 = HIDWORD(v146);
                  v137 = v147;
                  v55 = v150.i32[0];
                  v56 = v150.i32[1];
                  v57 = v149.i32[0];
                  v58 = v149.i32[1];
                  a_low = LODWORD(v144.a);
                  v119 = v148;
                  v60 = v148;
                  do
                  {
                    LODWORD(v61) = a_low >> 16;
                    if (a_low >> 16 < (v60 >> 16))
                    {
                      v61 = v61;
                      v62 = v44 + ((v56 * (a_low & 0xFFFF0000)) >> 16);
                      v63 = v43 + ((v55 * (a_low & 0xFFFF0000)) >> 16);
                      do
                      {
                        v64 = (v19 + ((v63 >> 14) & 0xFFFFFFFFFFFFFFFCLL) + ((v62 >> 16) * v18));
                        v65 = *v64;
                        if (v49 * v65)
                        {
                          *(v48 + v61) = (((2120 * v65 + 3219 * v64[3] + 16508 * v64[2] + 8412 * v64[1]) >> 15) * v37 + (((0x10000 - v49 * v65) * *(v48 + v61)) >> 8)) >> 8;
                        }

                        v63 += v55;
                        v62 += v56;
                        ++v61;
                      }

                      while (v61 < v60 >> 16);
                    }

                    a_low += v137;
                    v60 += v54;
                    v43 += v57;
                    v44 += v58;
                    v48 += v110;
                    ++v53;
                  }

                  while (v53 != v52);
                  LODWORD(v144.a) = a_low;
                  v148 = v119 + v54 * v52;
                  v51 = v146;
                  v45 = v50;
                  v47 = v126;
                }

                if (v45 >= v51)
                {
                  v47 = *(v47 + 5);
                  if (v47)
                  {
                    v127 = v47;
                    v131 = v46;
                    v138 = v45;
                    bvc_extractEdgeParameters(v47, 0, v45, v117, 1, &v144, &v147, &v146);
                    v45 = v138;
                    v47 = v127;
                    v46 = v131;
                  }
                }

                if (v45 >= v145)
                {
                  v66 = *(v46 + 5);
                  if (!v66)
                  {
                    break;
                  }

                  v128 = v47;
                  v132 = v66;
                  v139 = v45;
                  bvc_extractEdgeParameters(v66, 1, v45, v117, 1, &v148, &v146 + 1, &v145);
                  v45 = v139;
                  v47 = v128;
                  v46 = v132;
                }
              }

              while (v47 && v46);
              v67 = v149.i32[0] > 0;
              v68 = 2 * v149.i32[0];
              v69 = vadd_s32(v150, v150);
              v150 = v69;
              v70 = v149.i32[1] > 0;
              v71 = 2 * v149.i32[1];
              v149.i32[0] *= 2;
              v149.i32[1] *= 2;
              v72 = v154;
              v120 = v153;
              v73 = *v154 / 2;
              if (v73 <= *v153 / 2)
              {
                v73 = *v153 / 2;
              }

              v74 = v73 + 0x8000;
              v75 = (((v73 + 0x8000) & 0xFFFF0000) - v112 / 2 + 0x8000);
              v76 = 0x8000 - v111 / 2;
              v77 = ((v69.i32[0] * v76) >> 16) - v67 + ((v75 * v68) >> 16);
              v78 = ((v69.i32[1] * v76) >> 16) - v70 + ((v75 * v71) >> 16);
              bvc_extractEdgeParameters(v154, 0, (v73 + 0x8000) >> 16, v117, 2, &v144, &v147, &v146);
              bvc_extractEdgeParameters(v120, 1, v74 >> 16, v117, 2, &v148, &v146 + 1, &v145);
              v79 = v74 >> 16;
              v80 = v72;
              v81 = a5[1] + v113 * (v74 >> 16);
              v129 = v113;
              do
              {
                v82 = v145;
                v83 = v146;
                if (v146 < v145)
                {
                  v82 = v146;
                }

                v140 = v82 - v79;
                if (v82 > v79)
                {
                  v116 = v82;
                  v122 = v80;
                  v84 = 0;
                  v85 = HIDWORD(v146);
                  v135 = v147;
                  v86 = v150.i32[0];
                  v87 = v150.i32[1];
                  v88 = v149.i32[1];
                  v133 = v149.i32[0];
                  v89 = LODWORD(v144.a);
                  v114 = v148;
                  v90 = v148;
                  do
                  {
                    v91 = v89 >> 16;
                    if (v89 >> 16 < (v90 >> 16))
                    {
                      v92 = v91;
                      v93 = 2 * v91;
                      v94 = v78 + ((v87 * (v89 & 0xFFFF0000)) >> 16);
                      v95 = v77 + ((v86 * (v89 & 0xFFFF0000)) >> 16);
                      do
                      {
                        v96 = (v19 + ((v95 >> 14) & 0xFFFFFFFFFFFFFFFCLL) + ((v94 >> 16) * v18));
                        v97 = *v96;
                        v98 = v49 * v97;
                        if (v49 * v97)
                        {
                          v99 = v96[3];
                          v100 = v96[2];
                          v101 = v96[1];
                          v102 = 129 * v97;
                          v103 = (14392 * v99 + (v102 << 7) - 9532 * v100 - 4858 * v101) >> 15;
                          v104 = (-2348 * v99 + (v102 << 7) - 12040 * v100 + 14392 * v101) >> 15;
                          v105 = (v81 + v93);
                          v106 = 0x10000 - v98;
                          *v105 = (v103 * v37 + ((v106 * *(v81 + v93)) >> 8)) >> 8;
                          v105[1] = (v104 * v37 + ((v106 * *(v81 + v93 + 1)) >> 8)) >> 8;
                        }

                        v95 += v86;
                        v94 += v87;
                        ++v92;
                        v93 += 2;
                      }

                      while (v92 < v90 >> 16);
                    }

                    v89 += v135;
                    v90 += v85;
                    v77 += v133;
                    v78 += v88;
                    v81 += v129;
                    ++v84;
                  }

                  while (v84 != v140);
                  LODWORD(v144.a) = v89;
                  v148 = v114 + v85 * v140;
                  v83 = v146;
                  v79 = v116;
                  v80 = v122;
                }

                if (v79 >= v83)
                {
                  v80 = *(v80 + 5);
                  if (v80)
                  {
                    v141 = v79;
                    v123 = v80;
                    bvc_extractEdgeParameters(v80, 0, v79, v117, 2, &v144, &v147, &v146);
                    v79 = v141;
                    v80 = v123;
                  }
                }

                if (v79 >= v145)
                {
                  v107 = *(v120 + 5);
                  if (!v107)
                  {
                    break;
                  }

                  v120 = *(v120 + 5);
                  v124 = v80;
                  v142 = v79;
                  bvc_extractEdgeParameters(v107, 1, v79, v117, 2, &v148, &v146 + 1, &v145);
                  v79 = v142;
                  v80 = v124;
                }
              }

              while (v80 && v120);
            }
          }
        }
      }
    }

    BVCUtilityDestroyEdgeList(v154);
    BVCUtilityDestroyEdgeList(v153);
  }

  return result;
}

double bvc_FullCompositionOpaque_BGRA_420v709(double *a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, void *a5, double a6, double a7, double a8, double a9, double a10, double a11, double a12, double a13)
{
  v16 = *a2;
  v17 = *a3;
  v19 = *a4;
  v18 = a4[1];
  v153 = 0;
  v154 = 0;
  if (a6 + a8 >= 32767.0 || a7 + a9 >= 32767.0 || a10 + a12 >= 32767.0 || a11 + a13 >= 32767.0)
  {
    emitter = fig_log_get_emitter();

    return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 4294954792, "<<<< VideoCompositor >>>>", 367, v13);
  }

  else
  {
    v151 = 0;
    v152 = 0;
    v150 = 0;
    v149 = 0;
    v28 = *(a1 + 1);
    *&v145.a = *a1;
    *&v145.c = v28;
    *&v145.tx = *(a1 + 2);
    if (BVCUtilityIsAffineTransformInvertible(&v145.a))
    {
      memset(&v144, 0, sizeof(v144));
      v29 = *(a1 + 1);
      *&v145.a = *a1;
      *&v145.c = v29;
      *&v145.tx = *(a1 + 2);
      CGAffineTransformInvert(&v144, &v145);
      v134 = *a1;
      v139 = a1[1];
      v129 = a1[3];
      v116 = a1[4];
      v120 = a1[2];
      v123 = a1[5];
      v30 = *(a1 + 1);
      *&v145.a = *a1;
      *&v145.c = v30;
      *&v145.tx = *(a1 + 2);
      if (!BVCUtilityGetVectorsFromTransform(&v145.a, &v152, &v151))
      {
        v31 = v152.i32[0];
        if (v152.i32[0] < 0)
        {
          v31 = -v152.i32[0];
        }

        v32 = v151.i32[0];
        if (v151.i32[0] < 0)
        {
          v32 = -v151.i32[0];
        }

        if (v31 <= v32)
        {
          v31 = v32;
        }

        v119 = v31;
        v145 = v144;
        BVCUtilityGetVectorsFromTransform(&v145.a, &v150, &v149);
        v33 = *(a1 + 1);
        *&v145.a = *a1;
        *&v145.c = v33;
        *&v145.tx = *(a1 + 2);
        if (!BVCUtilityCreateEdgeLists(&v145, &v154, &v153, a6, a7, a8, a9, a10, a11, a12, a13))
        {
          v34 = v154;
          if (v154)
          {
            v35 = v153;
            if (v153)
            {
              v114 = v18;
              v36 = vcvtd_n_s64_f64(v116 + v120 * 0.0 + v134 * 0.0, 0x10uLL);
              v37 = vcvtd_n_s64_f64(v123 + v129 * 0.0 + v139 * 0.0, 0x10uLL);
              LODWORD(v145.a) = 0;
              v147 = 0;
              v148 = 0;
              v146 = 0;
              v38 = *v154;
              if (*v154 <= *v153)
              {
                v38 = *v153;
              }

              v112 = v36;
              v113 = v37;
              v39 = 0x8000 - v36;
              v140 = v38 + 0x8000;
              v40 = ((v38 + 0x8000) & 0xFFFF0000) - v37 + 0x8000;
              v41 = ((v150.i32[0] * v39) >> 16) - (v149.i32[0] > 0) + ((v149.i32[0] * v40) >> 16);
              v42 = a5;
              v43 = (v38 + 0x8000) >> 16;
              v44 = ((v150.i32[1] * v39) >> 16) - (v149.i32[1] > 0) + ((v149.i32[1] * v40) >> 16);
              bvc_extractEdgeParameters(v154, 0, v43, v119, 1, &v145, &v148, &v147);
              bvc_extractEdgeParameters(v35, 1, v43, v119, 1, &v148 + 1, &v147 + 1, &v146);
              v45 = v43;
              v46 = v35;
              v47 = v34;
              v117 = v42;
              v48 = *v42 + v19 * (v140 >> 16);
              do
              {
                v49 = v146;
                v50 = v147;
                if (v147 < v146)
                {
                  v49 = v147;
                }

                v51 = v49 - v45;
                if (v49 > v45)
                {
                  v130 = v47;
                  v135 = v46;
                  v52 = 0;
                  v53 = HIDWORD(v147);
                  v54 = v148;
                  v55 = v150.i32[0];
                  v56 = v150.i32[1];
                  v57 = v149.i32[0];
                  v58 = v149.i32[1];
                  a_low = LODWORD(v145.a);
                  v121 = HIDWORD(v148);
                  v60 = HIDWORD(v148);
                  do
                  {
                    LODWORD(v61) = a_low >> 16;
                    if (a_low >> 16 < (v60 >> 16))
                    {
                      v61 = v61;
                      v62 = v44 + ((v56 * (a_low & 0xFFFF0000)) >> 16);
                      v63 = v41 + ((v55 * (a_low & 0xFFFF0000)) >> 16);
                      do
                      {
                        v64 = (v17 + ((v62 >> 16) * v16) + ((v63 >> 14) & 0xFFFFFFFC));
                        v65 = v64[3];
                        if (v64[3])
                        {
                          v66 = (2120 * v65 + 2032 * *v64 + 20127 * v64[1] + 5983 * v64[2]) >> 15;
                          if (v65 != 255)
                          {
                            v66 += ((16776959 * v65 + 0x10000) * *(v48 + v61)) >> 16;
                          }

                          *(v48 + v61) = v66;
                        }

                        v63 += v55;
                        v62 += v56;
                        ++v61;
                      }

                      while (v61 < v60 >> 16);
                    }

                    a_low += v54;
                    v60 += v53;
                    v41 += v57;
                    v44 += v58;
                    v48 += v19;
                    ++v52;
                  }

                  while (v52 != v51);
                  LODWORD(v145.a) = a_low;
                  HIDWORD(v148) = v121 + v53 * v51;
                  v50 = v147;
                  v45 = v49;
                  v47 = v130;
                  v46 = v135;
                }

                if (v45 >= v50)
                {
                  v47 = *(v47 + 5);
                  if (v47)
                  {
                    v131 = v47;
                    v136 = v46;
                    v124 = v45;
                    bvc_extractEdgeParameters(v47, 0, v45, v119, 1, &v145, &v148, &v147);
                    v45 = v124;
                    v47 = v131;
                    v46 = v136;
                  }
                }

                if (v45 >= v146)
                {
                  v67 = *(v46 + 5);
                  if (!v67)
                  {
                    break;
                  }

                  v132 = v47;
                  v137 = v67;
                  v125 = v45;
                  bvc_extractEdgeParameters(v67, 1, v45, v119, 1, &v148 + 1, &v147 + 1, &v146);
                  v45 = v125;
                  v47 = v132;
                  v46 = v137;
                }
              }

              while (v47 && v46);
              v68 = v149.i32[0] > 0;
              v69 = 2 * v149.i32[0];
              v70 = vadd_s32(v150, v150);
              v150 = v70;
              v71 = v149.i32[1] > 0;
              v72 = 2 * v149.i32[1];
              v149.i32[0] *= 2;
              v149.i32[1] *= 2;
              v73 = v153;
              v74 = v154;
              v75 = *v154 / 2;
              if (v75 <= *v153 / 2)
              {
                v75 = *v153 / 2;
              }

              v76 = v75 + 0x8000;
              v77 = (((v75 + 0x8000) & 0xFFFF0000) - v113 / 2 + 0x8000);
              v78 = 0x8000 - v112 / 2;
              v79 = ((v70.i32[0] * v78) >> 16) - v68 + ((v77 * v69) >> 16);
              v80 = ((v70.i32[1] * v78) >> 16) - v71 + ((v77 * v72) >> 16);
              bvc_extractEdgeParameters(v154, 0, (v75 + 0x8000) >> 16, v119, 2, &v145, &v148, &v147);
              v122 = v73;
              bvc_extractEdgeParameters(v73, 1, v76 >> 16, v119, 2, &v148 + 1, &v147 + 1, &v146);
              v81 = v76 >> 16;
              v82 = v74;
              v83 = v117[1] + v114 * (v76 >> 16);
              v133 = v114;
              do
              {
                v84 = v146;
                v85 = v147;
                if (v147 < v146)
                {
                  v84 = v147;
                }

                v86 = v84 - v81;
                if (v84 > v81)
                {
                  v118 = v84;
                  v126 = v82;
                  v87 = 0;
                  v88 = HIDWORD(v147);
                  v141 = v148;
                  v89 = v150.i32[0];
                  v90 = v150.i32[1];
                  v91 = v149.i32[1];
                  v138 = v149.i32[0];
                  v92 = LODWORD(v145.a);
                  v115 = HIDWORD(v148);
                  v93 = HIDWORD(v148);
                  do
                  {
                    v94 = v92 >> 16;
                    if (v92 >> 16 < (v93 >> 16))
                    {
                      v95 = v94;
                      v96 = 2 * v94;
                      v97 = v80 + ((v90 * (v92 & 0xFFFF0000)) >> 16);
                      v98 = v79 + ((v89 * (v92 & 0xFFFF0000)) >> 16);
                      do
                      {
                        v99 = (v17 + ((v97 >> 16) * v16) + ((v98 >> 14) & 0xFFFFFFFC));
                        v100 = v99[3];
                        if (v99[3])
                        {
                          v101 = *v99;
                          v102 = v99[1];
                          v103 = v99[2];
                          v104 = (14392 * v101 + 16512 * v100 - 11093 * v102 - 3298 * v103) >> 15;
                          v105 = (-1317 * v101 + 16512 * v100 - 13073 * v102 + 14392 * v103) >> 15;
                          if (v100 == 255)
                          {
                            v106 = (v83 + v96);
                            *v106 = v104;
                            v106[1] = v105;
                          }

                          else
                          {
                            v107 = (v83 + v96);
                            v108 = 0x10000 - (v100 | (v100 << 8));
                            *v107 = v104 + ((v108 * *(v83 + v96)) >> 16);
                            v107[1] = v105 + ((v108 * *(v83 + v96 + 1)) >> 16);
                          }
                        }

                        v98 += v89;
                        v97 += v90;
                        ++v95;
                        v96 += 2;
                      }

                      while (v95 < v93 >> 16);
                    }

                    v92 += v141;
                    v93 += v88;
                    v79 += v138;
                    v80 += v91;
                    v83 += v133;
                    ++v87;
                  }

                  while (v87 != v86);
                  LODWORD(v145.a) = v92;
                  HIDWORD(v148) = v115 + v88 * v86;
                  v85 = v147;
                  v81 = v118;
                  v82 = v126;
                }

                if (v81 >= v85)
                {
                  v82 = *(v82 + 5);
                  if (v82)
                  {
                    v142 = v81;
                    v127 = v82;
                    bvc_extractEdgeParameters(v82, 0, v81, v119, 2, &v145, &v148, &v147);
                    v81 = v142;
                    v82 = v127;
                  }
                }

                if (v81 >= v146)
                {
                  v109 = *(v122 + 5);
                  if (!v109)
                  {
                    break;
                  }

                  v122 = *(v122 + 5);
                  v128 = v82;
                  v143 = v81;
                  bvc_extractEdgeParameters(v109, 1, v81, v119, 2, &v148 + 1, &v147 + 1, &v146);
                  v81 = v143;
                  v82 = v128;
                }
              }

              while (v82 && v122);
            }
          }
        }
      }
    }

    BVCUtilityDestroyEdgeList(v154);
    BVCUtilityDestroyEdgeList(v153);
  }

  return result;
}