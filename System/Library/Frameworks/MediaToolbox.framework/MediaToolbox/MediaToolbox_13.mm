void itemfig_setTrackEnabled(uint64_t a1, uint64_t a2, char a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  *(a2 + 8) = a3;
  v6 = *(DerivedStorage + 352);
  if (v6)
  {
    v7 = *a2;

    FigPlaybackBossSetTrackEnableForStepping(v6, v7, a3);
  }
}

void itemfig_bumpBossControlTokenAndMarkBossAsNonIdle(uint64_t a1, int a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  *(DerivedStorage + 496) = 0;
  *(DerivedStorage + 1034) = 0;
  v4 = *(DerivedStorage + 512);
  if (v4)
  {
    CFRelease(v4);
  }

  ++*(DerivedStorage + 520);
  *(DerivedStorage + 512) = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt32Type, (DerivedStorage + 520));
  v5 = *(DerivedStorage + 540);
  *(DerivedStorage + 540) = a2;
  FigSimpleMutexUnlock();
  v6 = FigCFWeakReferenceHolderCopyReferencedObject();
  v7 = v6;
  if (v6 && v5)
  {
    playerfig_postDeferredPrerollWasCancelledNotification(v6, v5);
  }

  else if (!v6)
  {
    return;
  }

  CFRelease(v7);
}

void playerfig_dispatchAsyncAutoSelectionCriteriaChangedForItem(uint64_t a1, void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a2)
  {
    CFRetain(a2);
  }

  v4 = *(DerivedStorage + 104);

  dispatch_async_f(v4, a2, itemfig_autoSelectionCriteriaChangedForItemAsync);
}

uint64_t itemfig_createUpdatedExtractionTable(uint64_t a1, int a2, uint64_t a3, uint64_t a4, const __CFArray **a5)
{
  v6 = *MEMORY[0x1E695E480];
  MutableCopy = FigCFArrayCreateMutableCopy();
  v8 = FigCFArrayCreateMutableCopy();
  v9 = v8;
  if (v8)
  {
    Count = CFArrayGetCount(v8);
    if (Count >= 1)
    {
      v11 = Count;
      v12 = 0;
      do
      {
        CFArrayGetValueAtIndex(v9, v12);
        SInt32 = FigCFNumberCreateSInt32();
        if (MutableCopy)
        {
          v14.length = CFArrayGetCount(MutableCopy);
        }

        else
        {
          v14.length = 0;
        }

        v14.location = 0;
        CountOfValue = CFArrayGetCountOfValue(MutableCopy, v14, SInt32);
        if (CountOfValue == 1)
        {
          v33.length = CFArrayGetCount(MutableCopy);
          v33.location = 0;
          FirstIndexOfValue = CFArrayGetFirstIndexOfValue(MutableCopy, v33, SInt32);
          if (FirstIndexOfValue == -1)
          {
            itemfig_createUpdatedExtractionTable_cold_1(&time);
            value_low = LODWORD(time.value);
            goto LABEL_31;
          }

          CFArrayRemoveValueAtIndex(MutableCopy, FirstIndexOfValue);
          ++v12;
          if (!SInt32)
          {
            continue;
          }
        }

        else
        {
          if (CountOfValue)
          {
            FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v29, a2, LODWORD(time.value));
            value_low = v28;
            goto LABEL_31;
          }

          CFArrayRemoveValueAtIndex(v9, v12);
          --v11;
          if (!SInt32)
          {
            continue;
          }
        }

        CFRelease(SInt32);
      }

      while (v12 < v11);
    }
  }

  v30 = a5;
  if (!MutableCopy || (v17 = CFArrayGetCount(MutableCopy), v17 < 1))
  {
LABEL_30:
    SInt32 = 0;
    value_low = 0;
    *v30 = v9;
    v9 = 0;
    goto LABEL_31;
  }

  v18 = v17;
  v19 = 0;
  v20 = MEMORY[0x1E6960C70];
  while (1)
  {
    FigCFArrayGetInt32AtIndex();
    if (_MergedGlobals_226 != -1)
    {
      itemfig_createUpdatedExtractionTable_cold_2();
    }

    Instance = _CFRuntimeCreateInstance();
    if (Instance)
    {
      break;
    }

    if (itemfig_createUpdatedExtractionTable_cold_3())
    {
      value_low = LODWORD(time.value);
      goto LABEL_40;
    }

LABEL_26:
    if (v18 == ++v19)
    {
      goto LABEL_30;
    }
  }

  v22 = Instance;
  *(Instance + 16) = FigCFWeakReferenceHolderCreateWithReferencedObject();
  *(v22 + 24) = a2;
  *(v22 + 28) = 0;
  CallbacksForUnsortedSampleBuffers = CMBufferQueueGetCallbacksForUnsortedSampleBuffers();
  v24 = CMBufferQueueCreate(v6, 0, CallbacksForUnsortedSampleBuffers, (v22 + 32));
  if (!v24)
  {
    CMNotificationCenterGetDefaultLocalCenter();
    v24 = FigNotificationCenterAddWeakListener();
    if (!v24)
    {
      v25 = *(v22 + 32);
      time = *v20;
      v24 = CMBufferQueueInstallTrigger(v25, trackExtraction_dataBecameReady, v22, 7, &time, (v22 + 40));
      if (!v24)
      {
        CFArrayAppendValue(v9, v22);
        CFRelease(v22);
        goto LABEL_26;
      }
    }
  }

  value_low = v24;
  CFRelease(v22);
LABEL_40:
  SInt32 = 0;
LABEL_31:
  if (MutableCopy)
  {
    CFRelease(MutableCopy);
  }

  if (v9)
  {
    CFRelease(v9);
  }

  if (SInt32)
  {
    CFRelease(SInt32);
  }

  return value_low;
}

void playerfig_postDeferredPrerollWasCancelledNotification(uint64_t a1, int a2)
{
  valuePtr = a2;
  CMBaseObjectGetDerivedStorage();
  v2 = *MEMORY[0x1E695E480];
  cf = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberIntType, &valuePtr);
  v3 = CFDictionaryCreate(v2, &kFigPlayerParameter_PrerollID, &cf, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  CMNotificationCenterGetDefaultLocalCenter();
  FigDispatchAsyncPostNotification();
  if (cf)
  {
    CFRelease(cf);
  }

  if (v3)
  {
    CFRelease(v3);
  }
}

uint64_t itemfig_copyCombinedLoudnessInfoDictionary(uint64_t a1, uint64_t a2, __CFDictionary **a3)
{
  v23 = 0;
  v24 = 0;
  if (a2)
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    TrackStorage = itemfig_getTrackStorage(a1, a2, &v23);
    v8 = v23;
    v9 = *MEMORY[0x1E695E480];
    MutableCopy = FigCFDictionaryCreateMutableCopy();
    if (MutableCopy)
    {
      v11 = MutableCopy;
      if (!CFDictionaryContainsKey(MutableCopy, @"precalculated sc adjustment"))
      {
        v12 = *(DerivedStorage + 1488);
        if (v12 != 0.0)
        {
          __exp10((v12 / 20.0));
          FigCFDictionarySetFloat32();
        }
      }

      if (!CFDictionaryContainsKey(v11, @"media kind"))
      {
        v13 = *(DerivedStorage + 1496);
        if (v13)
        {
          CFDictionarySetValue(v11, @"media kind", v13);
        }
      }

      if (v8)
      {
        cf = 0;
        v14 = *(DerivedStorage + 1256);
        v15 = *(*(CMBaseObjectGetVTable() + 16) + 40);
        if (v15)
        {
          v15(v14, a2, &cf);
          if (cf)
          {
            FigAssetTrackGetCMBaseObject();
            v17 = v16;
            v18 = *(*(CMBaseObjectGetVTable() + 8) + 48);
            if (v18)
            {
              v18(v17, @"LoudnessInfo", v9, &v24);
            }

            CFRelease(cf);
          }
        }
      }

      if (FigCFDictionaryGetCount() >= 1)
      {
        FigCFDictionaryAddEntriesToDictionaryWithRecursion();
      }

      if (CFDictionaryGetCount(v11) < 1)
      {
        CFRelease(v11);
      }

      else
      {
        *a3 = v11;
      }
    }

    else
    {
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v21, cf, v23);
      TrackStorage = v20;
    }
  }

  else
  {
    itemfig_copyCombinedLoudnessInfoDictionary_cold_1(&cf);
    TrackStorage = cf;
  }

  if (v24)
  {
    CFRelease(v24);
  }

  return TrackStorage;
}

void trackExtraction_ResetOutput(uint64_t a1, uint64_t a2)
{
  v2 = FigCFWeakReferenceHolderCopyReferencedObject();
  if (v2)
  {
    v3 = v2;
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 2, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    FigCFDictionarySetInt32();
    FigCFDictionarySetInt32();
    CMNotificationCenterGetDefaultLocalCenter();
    CMNotificationCenterPostNotification();
    if (Mutable)
    {
      CFRelease(Mutable);
    }

    CFRelease(v3);
  }
}

void trackExtraction_dataBecameReady(uint64_t a1)
{
  v1 = FigCFWeakReferenceHolderCopyReferencedObject();
  if (v1)
  {
    v2 = v1;
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 2, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    FigCFDictionarySetInt32();
    FigCFDictionarySetInt32();
    CMNotificationCenterGetDefaultLocalCenter();
    CMNotificationCenterPostNotification();
    if (Mutable)
    {
      CFRelease(Mutable);
    }

    CFRelease(v2);
  }
}

uint64_t trackExtraction_RegisterCFType(uint64_t *a1)
{
  result = _CFRuntimeRegisterClass();
  *a1 = result;
  return result;
}

double trackExtraction_Init(uint64_t a1)
{
  *(a1 + 48) = 0;
  result = 0.0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  return result;
}

void trackExtraction_Finalize(uint64_t a1)
{
  if (*(a1 + 32))
  {
    CMNotificationCenterGetDefaultLocalCenter();
    FigNotificationCenterRemoveWeakListener();
    v2 = *(a1 + 40);
    if (v2)
    {
      CMBufferQueueRemoveTrigger(*(a1 + 32), v2);
    }

    v3 = *(a1 + 32);
    if (v3)
    {
      CFRelease(v3);
      *(a1 + 32) = 0;
    }
  }

  v4 = *(a1 + 48);
  if (v4)
  {
    CFRelease(v4);
    *(a1 + 48) = 0;
  }

  v5 = *(a1 + 16);
  if (v5)
  {
    CFRelease(v5);
    *(a1 + 16) = 0;
  }
}

__CFString *trackExtraction_CopyDebugDesc(uint64_t a1)
{
  Mutable = CFStringCreateMutable(0, 0);
  CFStringAppendFormat(Mutable, 0, @"FigFigPlaybackItemTrackExtraction %p trackID %d extractionID %d bufferQueue %@ renderPipeline %@", a1, *(a1 + 24), *(a1 + 28), *(a1 + 32), *(a1 + 48));
  return Mutable;
}

Float64 itemfig_getPlayableDurationAtCurrentTime(uint64_t a1)
{
  v2 = *MEMORY[0x1E6960CC0];
  v9.epoch = *(MEMORY[0x1E6960CC0] + 16);
  v3 = *(MEMORY[0x1E6960CA8] + 16);
  *&v8.start.value = *MEMORY[0x1E6960CA8];
  *&v8.start.epoch = v3;
  *&v8.duration.timescale = *(MEMORY[0x1E6960CA8] + 32);
  *&v9.value = v2;
  itemfig_getNonNegativeCurrentTime(a1, &v9);
  range.start = v9;
  itemfig_getPlayableRangeAtTime(a1, &range.start, &v8);
  range = v8;
  time = v9;
  if (!CMTimeRangeContainsTime(&range, &time))
  {
    return 0.0;
  }

  memset(&time, 0, sizeof(time));
  range = v8;
  CMTimeRangeGetEnd(&lhs, &range);
  range.start = v9;
  CMTimeSubtract(&time, &lhs, &range.start);
  range.start = time;
  return CMTimeGetSeconds(&range.start);
}

uint64_t itemfig_getCombinedPreferredMaximumBufferDuration(uint64_t a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v3 = CMBaseObjectGetDerivedStorage();
  v4 = *(DerivedStorage + 1192);
  v5 = *(v3 + 1424);
  if (v4 >= v5)
  {
    v6 = *(v3 + 1424);
  }

  else
  {
    v6 = *(DerivedStorage + 1192);
  }

  if (!v5)
  {
    v6 = *(DerivedStorage + 1192);
  }

  if (v4)
  {
    return v6;
  }

  else
  {
    return v5;
  }
}

double itemfig_getNonNegativeCurrentTime(uint64_t a1, CMTime *a2)
{
  v8 = **&MEMORY[0x1E6960C70];
  itemfig_GetCurrentTime(a1, &v8);
  v3 = MEMORY[0x1E6960CC0];
  if ((v8.flags & 0x1D) != 1 || (time1 = v8, v6 = **&MEMORY[0x1E6960CC0], CMTimeCompare(&time1, &v6) < 0))
  {
    v4 = *v3;
    v8 = *v3;
  }

  if (a2)
  {
    *&v4 = v8.value;
    *a2 = v8;
  }

  return *&v4;
}

double itemfig_getPlayableRangeAtTime(uint64_t a1, CMTime *a2, _OWORD *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  *&v16.value = *MEMORY[0x1E6960CC0];
  v7 = *(MEMORY[0x1E6960CC0] + 16);
  v16.epoch = v7;
  v11 = *&v16.value;
  *&v15.value = *&v16.value;
  v15.epoch = v7;
  FigSimpleMutexLock();
  v8 = *(DerivedStorage + 600);
  if (v8)
  {
    FigPlayabilityMonitorGetPlayableRange(v8, &v16, &v15);
  }

  else if (*(DerivedStorage + 352))
  {
    itemfig_getDurationIfReady(a1, &v15);
  }

  FigSimpleMutexUnlock();
  time1.start = v15;
  *&time2.value = v11;
  time2.epoch = v7;
  if (!CMTimeCompare(&time1.start, &time2) || (time1.start = v16, time2 = *a2, CMTimeCompare(&time1.start, &time2) > 0) || (time2 = v16, rhs = v15, CMTimeAdd(&time1.start, &time2, &rhs), time2 = *a2, CMTimeCompare(&time2, &time1.start) >= 1))
  {
    v16 = *a2;
    result = *&v11;
    *&v15.value = v11;
    v15.epoch = v7;
  }

  if (a3)
  {
    time2 = v16;
    rhs = v15;
    CMTimeRangeMake(&time1, &time2, &rhs);
    v10 = *&time1.start.epoch;
    *a3 = *&time1.start.value;
    a3[1] = v10;
    result = *&time1.duration.timescale;
    a3[2] = *&time1.duration.timescale;
  }

  return result;
}

uint64_t itemfig_HintStreamForTimeRange(uint64_t a1, __int128 *a2)
{
  v38 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v33 = xmmword_196E72730;
  v12 = MEMORY[0x1E6960C70];
  v32 = 0;
  value = *MEMORY[0x1E6960C70];
  timescale = *(MEMORY[0x1E6960C70] + 8);
  if ((*(a2 + 12) & 1) == 0 || (*(a2 + 36) & 1) == 0 || *(a2 + 5) || (*(a2 + 3) & 0x8000000000000000) != 0)
  {
    itemfig_HintStreamForTimeRange_cold_1(DerivedStorage, v5, v6, v7, v8, v9, v10, v11, v26, v27, SHIDWORD(v27), v28);
    return 0;
  }

  v13 = DerivedStorage;
  v30 = *a2;
  v31 = *(a2 + 2);
  *&time1[0].start.value = *(a2 + 24);
  time1[0].start.epoch = *(a2 + 5);
  time2 = **&MEMORY[0x1E6960CC0];
  if (CMTimeCompare(&time1[0].start, &time2))
  {
    v14 = a2[1];
    *&time1[0].start.value = *a2;
    *&time1[0].start.epoch = v14;
    *&time1[0].duration.timescale = a2[2];
    CMTimeRangeGetEnd(&time2, time1);
    v15 = 0;
    v16 = 0;
    value = time2.value;
    flags = time2.flags;
    timescale = time2.timescale;
    epoch = time2.epoch;
  }

  else
  {
    flags = *(v12 + 12);
    epoch = *(v12 + 16);
    v15 = 1;
    *(&v33 + 1) = 1;
    v16 = 2;
  }

  result = *(v13 + 128);
  if (result)
  {
    CMByteStreamGetCMBaseObject();
    FigCRABSGetClassID();
    result = CMBaseObjectIsMemberOfClass();
    if (result)
    {
      v20 = *(v13 + 1036);
      if (v20)
      {
        *&time1[0].start.value = v30;
        time1[0].start.epoch = v31;
        if (itemfig_getTrackHintLocationForTime(a1, v20, time1, &v32))
        {
          v21 = v32;
          *&v33 = v32;
        }

        else
        {
          v21 = 0x7FFFFFFFFFFFFFFFLL;
        }

        if ((flags & 0x1D) == 1)
        {
          v25 = *(v13 + 1036);
          time1[0].start.value = value;
          time1[0].start.timescale = timescale;
          time1[0].start.flags = flags;
          time1[0].start.epoch = epoch;
          if (itemfig_getTrackHintLocationForTime(a1, v25, time1, &v32))
          {
            if (v32 > v21)
            {
              *(&v33 + 1) = v32 - v21;
              v15 = v32 - v21;
            }
          }
        }
      }

      else
      {
        v21 = 0x7FFFFFFFFFFFFFFFLL;
      }

      v22 = *(v13 + 1040);
      if (v22)
      {
        *&time1[0].start.value = v30;
        time1[0].start.epoch = v31;
        if (itemfig_getTrackHintLocationForTime(a1, v22, time1, &v32) && v21 > v32)
        {
          *&v33 = v32;
          v21 = v32;
        }

        if ((flags & 0x1D) == 1)
        {
          v24 = *(v13 + 1040);
          time1[0].start.value = value;
          time1[0].start.timescale = timescale;
          time1[0].start.flags = flags;
          time1[0].start.epoch = epoch;
          if (itemfig_getTrackHintLocationForTime(a1, v24, time1, &v32))
          {
            if (v15 + v21 < v32)
            {
              v15 = v32 - v21;
              *(&v33 + 1) = v32 - v21;
            }
          }
        }
      }

      result = 0;
      if (v21 != 0x7FFFFFFFFFFFFFFFLL)
      {
        if (v15)
        {
          if (dword_1EAF16A10)
          {
            os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
            fig_log_call_emit_and_clean_up_after_send_and_compose();
          }

          if (!FigCRABSHintActiveRanges(*(v13 + 128), v16, &v33))
          {
            return 1;
          }

          v23 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT);
          fig_log_call_emit_and_clean_up_after_send_and_compose();
          return 0;
        }
      }
    }
  }

  return result;
}

void playerfig_resetSubtitleRenderPipeline(uint64_t a1)
{
  valuePtr = 0x7FFFFFFF;
  target = 0;
  if (*(CMBaseObjectGetDerivedStorage() + 608))
  {
    values = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
    if (values)
    {
      v1 = *MEMORY[0x1E695E480];
      v2 = CFDictionaryCreate(*MEMORY[0x1E695E480], MEMORY[0x1E6960580], &values, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      if (v2)
      {
        v3 = CMSampleBufferCreate(v1, 0, 1u, 0, 0, 0, 0, 0, 0, 0, 0, &target);
        v4 = target;
        if (!v3)
        {
          CMSetAttachment(target, *MEMORY[0x1E6960518], values, 1u);
          cf = 0;
          FigRenderPipelineGetFigBaseObject();
          v6 = v5;
          v7 = *(*(CMBaseObjectGetVTable() + 8) + 48);
          if (v7)
          {
            if (!v7(v6, @"SourceSampleBufferQueue", v1, &cf) && cf != 0)
            {
              CMNotificationCenterGetDefaultLocalCenter();
              CMNotificationCenterPostNotification();
              CMNotificationCenterGetDefaultLocalCenter();
              CMNotificationCenterPostNotification();
              CMBufferQueueEnqueue(cf, target);
              CFRelease(cf);
            }
          }

          v4 = target;
        }

        if (v4)
        {
          CFRelease(v4);
          target = 0;
        }
      }

      else
      {
        FigSignalErrorAtGM("%s signalled err=%d at <>:%d", sampleTimingArray, v10, sampleSizeArray);
      }
    }

    else
    {
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d", sampleTimingArray, v10, sampleSizeArray);
      v2 = 0;
    }

    if (values)
    {
      CFRelease(values);
      values = 0;
    }

    if (v2)
    {
      CFRelease(v2);
    }
  }
}

void itemfig_isEC3PassthroughSupported(uint64_t a1)
{
  CMBaseObjectGetDerivedStorage();
  v1 = FigCFWeakReferenceHolderCopyReferencedObject();
  CMBaseObjectGetDerivedStorage();
  if (v1)
  {

    CFRelease(v1);
  }
}

uint64_t itemfig_isTrackAC3(uint64_t a1, uint64_t a2)
{
  cf = 0;
  v13 = 0;
  v3 = *(CMBaseObjectGetDerivedStorage() + 1008);
  v4 = *(*(CMBaseObjectGetVTable() + 16) + 56);
  if (!v4)
  {
    return 0;
  }

  v5 = v4(v3, a2, &cf, &v13);
  v6 = cf;
  if (v5)
  {
    v7 = 0;
  }

  else
  {
    v7 = v13 == 1936684398;
  }

  if (!v7)
  {
    v8 = 0;
    if (!cf)
    {
      return v8;
    }

    goto LABEL_20;
  }

  desc = 0;
  if (itemfig_copyFormatDescription(cf, &desc))
  {
LABEL_18:
    v8 = 0;
    goto LABEL_19;
  }

  v8 = desc;
  if (!desc)
  {
    goto LABEL_19;
  }

  MediaSubType = CMFormatDescriptionGetMediaSubType(desc);
  CFRelease(v8);
  v8 = 1;
  if (MediaSubType > 1885430578)
  {
    if (MediaSubType != 1885430579 && MediaSubType != 1902207795)
    {
      v10 = 2053202739;
LABEL_17:
      if (MediaSubType == v10)
      {
        goto LABEL_19;
      }

      goto LABEL_18;
    }
  }

  else if (MediaSubType != 1633889587 && MediaSubType != 1667312947)
  {
    v10 = 1667326771;
    goto LABEL_17;
  }

LABEL_19:
  v6 = cf;
  if (cf)
  {
LABEL_20:
    CFRelease(v6);
  }

  return v8;
}

uint64_t itemfig_isTrackEnhancedAC3(uint64_t a1, uint64_t a2)
{
  cf = 0;
  v13 = 0;
  v3 = *(CMBaseObjectGetDerivedStorage() + 1008);
  v4 = *(*(CMBaseObjectGetVTable() + 16) + 56);
  if (!v4)
  {
    return 0;
  }

  v5 = v4(v3, a2, &cf, &v13);
  v6 = cf;
  if (v5)
  {
    v7 = 0;
  }

  else
  {
    v7 = v13 == 1936684398;
  }

  if (!v7)
  {
    v8 = 0;
    if (!cf)
    {
      return v8;
    }

    goto LABEL_19;
  }

  desc = 0;
  if (itemfig_copyFormatDescription(cf, &desc))
  {
LABEL_17:
    v8 = 0;
    goto LABEL_18;
  }

  v8 = desc;
  if (!desc)
  {
    goto LABEL_18;
  }

  MediaSubType = CMFormatDescriptionGetMediaSubType(desc);
  CFRelease(v8);
  v8 = 1;
  if (MediaSubType <= 1885692722)
  {
    if (MediaSubType == 1667575091)
    {
      goto LABEL_18;
    }

    v10 = 1700998451;
LABEL_16:
    if (MediaSubType == v10)
    {
      goto LABEL_18;
    }

    goto LABEL_17;
  }

  if (MediaSubType != 1885692723 && MediaSubType != 1902469939)
  {
    v10 = 2053464883;
    goto LABEL_16;
  }

LABEL_18:
  v6 = cf;
  if (cf)
  {
LABEL_19:
    CFRelease(v6);
  }

  return v8;
}

uint64_t itemfig_isTrackAtmos(uint64_t a1, uint64_t a2)
{
  cf = 0;
  v18 = 0;
  v3 = *(CMBaseObjectGetDerivedStorage() + 1008);
  v4 = *(*(CMBaseObjectGetVTable() + 16) + 56);
  if (!v4)
  {
    return 0;
  }

  v5 = v4(v3, a2, &cf, &v18);
  v6 = cf;
  if (v5)
  {
    v7 = 0;
  }

  else
  {
    v7 = v18 == 1936684398;
  }

  if (!v7)
  {
    v10 = 0;
    if (!cf)
    {
      return v10;
    }

    goto LABEL_39;
  }

  desc = 0;
  if (itemfig_copyFormatDescription(cf, &desc))
  {
    v10 = 0;
    goto LABEL_38;
  }

  v8 = desc;
  MediaSubType = CMFormatDescriptionGetMediaSubType(desc);
  v10 = 1;
  if (MediaSubType <= 1885692722)
  {
    if (MediaSubType > 1700997938)
    {
      if (MediaSubType == 1700997939)
      {
        goto LABEL_36;
      }

      if (MediaSubType != 1700998451)
      {
        v11 = 1885547315;
        goto LABEL_24;
      }

      goto LABEL_26;
    }

    if (MediaSubType == 1667574579)
    {
      goto LABEL_36;
    }

    v12 = 1667575091;
LABEL_20:
    if (MediaSubType != v12)
    {
LABEL_35:
      v10 = 0;
      goto LABEL_36;
    }

    goto LABEL_26;
  }

  if (MediaSubType > 1902469938)
  {
    if (MediaSubType == 2053464883)
    {
      goto LABEL_26;
    }

    if (MediaSubType == 2053319475)
    {
      goto LABEL_36;
    }

    v12 = 1902469939;
    goto LABEL_20;
  }

  if (MediaSubType != 1885692723)
  {
    v11 = 1902324531;
LABEL_24:
    if (MediaSubType == v11)
    {
      goto LABEL_36;
    }

    goto LABEL_35;
  }

LABEL_26:
  sizeOut = 0;
  FormatList = CMAudioFormatDescriptionGetFormatList(v8, &sizeOut);
  v10 = 0;
  if (FormatList && sizeOut >= 0x30)
  {
    mFormatID = FormatList->mASBD.mFormatID;
    v10 = 1;
    if (mFormatID <= 1885547314)
    {
      if (mFormatID == 1667574579)
      {
        goto LABEL_36;
      }

      v15 = 1700997939;
LABEL_34:
      if (mFormatID == v15)
      {
        goto LABEL_36;
      }

      goto LABEL_35;
    }

    if (mFormatID != 1885547315 && mFormatID != 1902324531)
    {
      v15 = 2053319475;
      goto LABEL_34;
    }
  }

LABEL_36:
  if (v8)
  {
    CFRelease(v8);
  }

LABEL_38:
  v6 = cf;
  if (cf)
  {
LABEL_39:
    CFRelease(v6);
  }

  return v10;
}

uint64_t itemfig_getMaximumNumberOfSpatializedOutputChannels(uint64_t a1, uint64_t a2)
{
  v9 = 0;
  v10 = 2;
  CMBaseObjectGetDerivedStorage();
  v4 = FigCFWeakReferenceHolderCopyReferencedObject();
  if (v4)
  {
    v5 = v4;
    playerfig_getDeviceMaximumNumberOfPhysicalOutputChannels();
    v7 = v6;
    if (!v6)
    {
      itemfig_getMaximumNumberOfSpatializedOutputChannels_cold_1(a1, &v9, a2, &v10);
    }

    CFRelease(v5);
  }

  else
  {
    itemfig_getMaximumNumberOfSpatializedOutputChannels_cold_2(&v11);
    return v11;
  }

  return v7;
}

uint64_t FigAudioSessionCopyMXSessionProperty(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(CMBaseObjectGetVTable() + 16);
  if (!v8)
  {
    return 4294948075;
  }

  v9 = *(v8 + 48);
  if (!v9)
  {
    return 4294948071;
  }

  return v9(a1, a2, a3, a4);
}

uint64_t itemfig_canTrackPassthrough(uint64_t a1, uint64_t a2)
{
  cf = 0;
  v12 = 0;
  v3 = *(CMBaseObjectGetDerivedStorage() + 1008);
  v4 = *(*(CMBaseObjectGetVTable() + 16) + 56);
  if (!v4)
  {
    return 0;
  }

  v5 = v4(v3, a2, &cf, &v12);
  v6 = cf;
  if (v5)
  {
    v7 = 0;
  }

  else
  {
    v7 = v12 == 1936684398;
  }

  if (!v7)
  {
    IsPassthroughSupported = 0;
    if (!cf)
    {
      return IsPassthroughSupported;
    }

    goto LABEL_13;
  }

  v11 = 0;
  if (itemfig_copyFormatDescription(cf, &v11) || (v8 = v11) == 0)
  {
    IsPassthroughSupported = 0;
  }

  else
  {
    IsPassthroughSupported = FigAudioQueueRenderPipelineIsPassthroughSupported();
    CFRelease(v8);
  }

  v6 = cf;
  if (cf)
  {
LABEL_13:
    CFRelease(v6);
  }

  return IsPassthroughSupported;
}

uint64_t playerfig_isMATAtmosEnabled(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  v2 = *(DerivedStorage + 472);
  if (!v2)
  {
    FigSimpleMutexUnlock();
    return 0;
  }

  v3 = CFRetain(v2);
  FigSimpleMutexUnlock();
  if (!v3)
  {
    return 0;
  }

  cf = 0;
  v4 = *(CMBaseObjectGetVTable() + 16);
  if (v4 && (v5 = *(v4 + 48)) != 0)
  {
    if (v5(v3, *MEMORY[0x1E69B0108], *MEMORY[0x1E695E480], &cf))
    {
      v6 = 0;
    }

    else
    {
      v6 = cf == *MEMORY[0x1E695E4D0];
    }

    v7 = v6;
    if (cf)
    {
      CFRelease(cf);
    }
  }

  else
  {
    v7 = 0;
  }

  CFRelease(v3);
  return v7;
}

uint64_t fp_bufferedAirPlayActiveAndSupportsAtmos(uint64_t a1, _BYTE *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a2)
  {
    *a2 = 0;
  }

  FigSimpleMutexLock();
  v4 = *(DerivedStorage + 176);
  if (v4)
  {
    CFRetain(*(DerivedStorage + 176));
    FigSimpleMutexUnlock();
    v10 = 0;
    if (a2)
    {
      FigBufferedAirPlayOutputGetCMBaseObject();
      v6 = v5;
      v7 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      if (v7)
      {
        v7(v6, @"AtmosIsSupported", *MEMORY[0x1E695E480], &v10);
        v8 = v10;
      }

      else
      {
        v8 = 0;
      }

      if (v8 == *MEMORY[0x1E695E4D0])
      {
        *a2 = 1;
      }

      if (v8)
      {
        CFRelease(v8);
      }
    }

    CFRelease(v4);
    return 1;
  }

  else
  {
    FigSimpleMutexUnlock();
    return 0;
  }
}

uint64_t itemfig_getTrackAudioChannelCount(uint64_t a1, uint64_t a2, int a3)
{
  cf = 0;
  v14 = 0;
  v5 = *(CMBaseObjectGetDerivedStorage() + 1008);
  v6 = *(*(CMBaseObjectGetVTable() + 16) + 56);
  if (!v6)
  {
    return 2;
  }

  v7 = v6(v5, a2, &cf, &v14);
  v8 = cf;
  if (v7)
  {
    v9 = 0;
  }

  else
  {
    v9 = v14 == 1936684398;
  }

  if (!v9)
  {
    CodecOutputChannelCount = 2;
    if (!cf)
    {
      return CodecOutputChannelCount;
    }

    goto LABEL_17;
  }

  v13 = 0;
  if (itemfig_copyFormatDescription(cf, &v13) || (v10 = v13) == 0)
  {
    CodecOutputChannelCount = 2;
  }

  else
  {
    if (a3 && FigAudioFormatDescriptionRequiresImmersiveRendering())
    {
      CodecOutputChannelCount = 0x7FFFFFFFLL;
    }

    else
    {
      CodecOutputChannelCount = FigAudioFormatDescriptionGetCodecOutputChannelCount();
    }

    CFRelease(v10);
  }

  v8 = cf;
  if (cf)
  {
LABEL_17:
    CFRelease(v8);
  }

  return CodecOutputChannelCount;
}

uint64_t itemfig_applyAudioSceneCompositionPresetToTrack(uint64_t a1)
{
  v1 = *(a1 + 144);
  if (!v1)
  {
    return 0;
  }

  result = *(a1 + 16);
  if (result)
  {
    FigRenderPipelineGetFigBaseObject();
    v4 = v3;
    v5 = *(*(CMBaseObjectGetVTable() + 8) + 56);
    if (v5)
    {

      return v5(v4, @"SceneCompositionPreset", v1);
    }

    else
    {
      return 4294954514;
    }
  }

  return result;
}

double itemfig_accumulateFrameDropCountFromAllVideoPipelines(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  itemfig_getFrameDropCountFromAllVideoPipelines(a1, DerivedStorage + 216);
  DerivedStorage[214] += DerivedStorage[216] - DerivedStorage[215];
  result = 0.0;
  *(DerivedStorage + 215) = 0u;
  return result;
}

void itemfig_updateAccessLogEntry(uint64_t a1, uint64_t a2, float a3)
{
  CMBaseObjectGetDerivedStorage();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v5 = *(DerivedStorage + 352);
  if (v5)
  {
    if (a3 != 0.0 && *(DerivedStorage + 1737) == 0)
    {
      memset(&v9, 0, sizeof(v9));
      FigPlaybackBossGetTime(v5, &v9);
      Seconds = 0.0;
      if (v9.flags)
      {
        v8 = v9;
        Seconds = CMTimeGetSeconds(&v8);
      }

      *(DerivedStorage + 1576) = Seconds;
      *(DerivedStorage + 1737) = 1;
    }

    if (a3 == 0.0)
    {
      if (!*(DerivedStorage + 1736))
      {
        return;
      }
    }

    else
    {
      *(DerivedStorage + 1736) = 1;
    }

    if (*(DerivedStorage + 1592) != 0.0)
    {
      *(DerivedStorage + 1584) = *(DerivedStorage + 1584) + (CFAbsoluteTimeGetCurrent() - *(DerivedStorage + 1592)) * fabsf(*(DerivedStorage + 1648));
      *(DerivedStorage + 1592) = 0;
    }

    if (a3 != 0.0)
    {
      *(DerivedStorage + 1592) = CFAbsoluteTimeGetCurrent();
    }

    *(DerivedStorage + 1648) = a3;
    CMNotificationCenterGetDefaultLocalCenter();
    FigDispatchAsyncPostNotification();
  }
}

CMTime *itemfig_reportingAgentReportPlayStartMovieTime(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  memset(&v3, 0, sizeof(v3));
  result = CMTimebaseGetTime(&v3, *(DerivedStorage + 328));
  if (v3.flags)
  {
    return itemfig_reportingAgentReportPlayStartMovieTime_cold_1(DerivedStorage);
  }

  return result;
}

uint64_t itemfig_setEndTimeOnBoss(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v4 = *(DerivedStorage + 140);
  result = *(DerivedStorage + 352);
  if (result)
  {
    if (*(DerivedStorage + 2128))
    {
      CFDataGetLength(*(DerivedStorage + 2128));
      CFDataGetBytePtr(*(DerivedStorage + 2128));
      v3 = v4;
      CMSpeedRampMapTimeFromTargetToSource();
      result = *(DerivedStorage + 352);
    }

    v3 = v4;
    return FigPlaybackBossSetEndTime(result, &v3);
  }

  return result;
}

uint64_t itemfig_unregisterAndDestroyPlayabilityMonitorNotification(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  itemfig_unregisterPlayabilityMonitorNotification(a1);
  FigSimpleMutexLock();
  v3 = *(DerivedStorage + 600);
  if (v3)
  {
    FigPlayabilityMonitorDestroy(v3);
    *(DerivedStorage + 600) = 0;
  }

  return FigSimpleMutexUnlock();
}

void itemfig_registerPlayabilityMonitorNotification(const void *a1)
{
  v15 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  if (!*(DerivedStorage + 600) || *(DerivedStorage + 608))
  {

    FigSimpleMutexUnlock();
    return;
  }

  DefaultLocalCenter = CMNotificationCenterGetDefaultLocalCenter();
  v14 = 0;
  v13 = 0;
  FigNotificationCenterAddWeakListener();
  FigNotificationCenterAddWeakListener();
  FigNotificationCenterAddWeakListener();
  FigNotificationCenterAddWeakListener();
  FigNotificationCenterAddWeakListener();
  *(DerivedStorage + 608) = 1;
  PlaythroughInfo = FigPlayabilityMonitorGetPlaythroughInfo(*(DerivedStorage + 600), &v14, &v13, 0);
  FigSimpleMutexUnlock();
  if (PlaythroughInfo)
  {
    return;
  }

  if (v14 > 1)
  {
    if (v14 == 2)
    {
      if (dword_1EAF16A10)
      {
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      itemfig_UnlikelyToKeepUp(DefaultLocalCenter, a1);
      goto LABEL_24;
    }

    if (v14 == 3)
    {
      if (dword_1EAF16A10)
      {
        v8 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      itemfig_StallWarning(DefaultLocalCenter, a1);
      goto LABEL_24;
    }
  }

  else
  {
    if (!v14)
    {
      goto LABEL_24;
    }

    if (v14 == 1)
    {
      PlayableDurationAtCurrentTime = itemfig_getPlayableDurationAtCurrentTime(a1);
      DurationDictionary = itemfig_createDurationDictionary(PlayableDurationAtCurrentTime);
      if (dword_1EAF16A10)
      {
        v7 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      itemfig_LikelyToKeepUp(DefaultLocalCenter, a1);
      if (DurationDictionary)
      {
        CFRelease(DurationDictionary);
      }

      goto LABEL_24;
    }
  }

  v9 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
  os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
  fig_log_call_emit_and_clean_up_after_send_and_compose();
LABEL_24:
  if (v13)
  {
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    FigCFDictionarySetValue();
    itemfig_PlayableRangeChanged(DefaultLocalCenter, a1, 0x1F0B21338, 0, Mutable);
    if (Mutable)
    {
      CFRelease(Mutable);
    }
  }

  else
  {
    if (dword_1EAF16A10)
    {
      v12 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    itemfig_BufferFull(DefaultLocalCenter, a1);
  }
}

double itemfig_handleOutOfBandTrackPlaybackFailed(uint64_t a1, uint64_t a2)
{
  v4 = *MEMORY[0x1E69E9840];
  os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
  os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
  fig_log_call_emit_and_clean_up_after_send_and_compose();
  return result;
}

void itemfig_handleOutOfBandTrackSubtitleChanged(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const __CFDictionary *a5)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  cf = 0;
  v12 = 0;
  if (a5)
  {
    if (!*DerivedStorage)
    {
      v7 = CMBaseObjectGetDerivedStorage();
      if (!*v7)
      {
        v8 = v7;
        FigSubtitleSampleCreateFromPropertyList(a5, &cf, &v12, 0, 0);
        v9 = cf;
        if (v8[720])
        {
          v10 = 0;
        }

        else
        {
          v10 = v12 == 0;
        }

        v11 = !v10 || cf == 0;
        if (!v11 || (CMNotificationCenterGetDefaultLocalCenter(), CMNotificationCenterPostNotification(), (v9 = cf) != 0))
        {
          CFRelease(v9);
        }
      }
    }
  }
}

uint64_t itemfig_buildOutOfBandTrackControllerOptions(uint64_t a1, __CFDictionary **a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!DerivedStorage)
  {
    itemfig_buildOutOfBandTrackControllerOptions_cold_2(&number);
    return number;
  }

  v4 = DerivedStorage;
  v5 = *MEMORY[0x1E695E480];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 3, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (!Mutable)
  {
    itemfig_buildOutOfBandTrackControllerOptions_cold_1(&number);
    return number;
  }

  v7 = Mutable;
  v8 = *(v4 + 112);
  if (v8)
  {
    CFDictionarySetValue(Mutable, @"ReferenceSecurityPolicyFlagBaseURL", v8);
  }

  CMBaseObjectGetDerivedStorage();
  number = 0;
  FigAssetGetCMBaseObject();
  v10 = v9;
  v11 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v11)
  {
    goto LABEL_17;
  }

  v12 = v11(v10, @"assetProperty_CreationFlags", v5, &number);
  v13 = number;
  if (v12)
  {
    v14 = 1;
  }

  else
  {
    v14 = number == 0;
  }

  if (v14)
  {
    v15 = 0;
    if (number)
    {
LABEL_14:
      CFRelease(v13);
    }
  }

  else
  {
    v17 = 0;
    CFNumberGetValue(number, kCFNumberSInt64Type, &v17);
    v15 = (v17 >> 1) & 0x1E;
    v13 = number;
    if (number)
    {
      goto LABEL_14;
    }
  }

  if (v15)
  {
    FigCFDictionarySetInt32();
  }

LABEL_17:
  if (a2)
  {
    result = 0;
    *a2 = v7;
  }

  else
  {
    CFRelease(v7);
    return 0;
  }

  return result;
}

uint64_t itemfig_synchronizeOOBSController(uint64_t a1, uint64_t a2)
{
  result = CMBaseObjectGetDerivedStorage();
  if (!*result)
  {
    if (a2)
    {
      result = *(result + 1904);
      if (result)
      {
        if ((*(a2 + 4) & 3) != 0)
        {
          v4 = *(a2 + 8);
          v7 = *(a2 + 16);
          v8 = *(a2 + 32);
          v5 = *(a2 + 40);
          v6 = *(a2 + 56);
          return FigOutOfBandTrackControllerSetRateAndAnchorTime(result, &v7, &v5, v4);
        }
      }
    }
  }

  return result;
}

uint64_t itemfig_setMuted(const void *a1, uint64_t a2)
{
  v2 = a2;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v5 = FigCFWeakReferenceHolderCopyReferencedObject();
  v6 = *(DerivedStorage + 352);
  if (!v6)
  {
    v7 = 0;
    if (!v5)
    {
      return v7;
    }

LABEL_5:
    playerfig_updateResourceUsageOnGlobalResourceArbiter(v5, a1);
    CFRelease(v5);
    return v7;
  }

  v7 = FigPlaybackBossSetMuted(v6, v2);
  if (v5)
  {
    goto LABEL_5;
  }

  return v7;
}

uint64_t playerfig_removeAudioRenderPipelineListeners(uint64_t result, uint64_t a2)
{
  if (a2)
  {
    CMNotificationCenterGetDefaultLocalCenter();
    FigNotificationCenterRemoveWeakListener();
    CMNotificationCenterGetDefaultLocalCenter();
    FigNotificationCenterRemoveWeakListener();
    CMNotificationCenterGetDefaultLocalCenter();
    FigNotificationCenterRemoveWeakListener();
    CMNotificationCenterGetDefaultLocalCenter();
    FigNotificationCenterRemoveWeakListener();
    CMNotificationCenterGetDefaultLocalCenter();
    FigNotificationCenterRemoveWeakListener();
    CMNotificationCenterGetDefaultLocalCenter();
    FigNotificationCenterRemoveWeakListener();
    CMNotificationCenterGetDefaultLocalCenter();

    return FigNotificationCenterRemoveWeakListener();
  }

  return v2;
}

void itemfig_updateVolumeOffset(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (DerivedStorage && *(DerivedStorage + 1240))
  {
    v3 = *(DerivedStorage + 1036);
    if (v3)
    {
      itemfig_updateVolumeOffset_cold_1(a1, v3, DerivedStorage);
    }
  }
}

uint64_t itemfig_applyAdjustTargetLevel(uint64_t a1)
{
  result = CMBaseObjectGetDerivedStorage();
  if (result)
  {
    return itemfig_applyAdjustTargetLevel_cold_1();
  }

  return result;
}

uint64_t itemfig_applyAdjustCompressionProfile(uint64_t a1)
{
  result = CMBaseObjectGetDerivedStorage();
  if (result)
  {
    return itemfig_applyAdjustCompressionProfile_cold_1();
  }

  return result;
}

uint64_t playerfig_determineAudioProcessingTapRoles(uint64_t result, uint64_t a2, void *a3, void *a4)
{
  *a3 = 0;
  *a4 = 0;
  v5 = *(result + 88);
  if (v5)
  {
    goto LABEL_2;
  }

  v7 = *(a2 + 1480);
  if (v7)
  {
    v9 = *(*(CMBaseObjectGetVTable() + 16) + 40);
    if (v9)
    {
      result = v9(v7);
      if (result)
      {
        v5 = *(a2 + 1480);
LABEL_2:
        *a3 = v5;
        return result;
      }
    }

    result = _os_feature_enabled_impl();
    if (result)
    {
      *a4 = *(a2 + 1480);
    }
  }

  return result;
}

void itemfig_resetRenderTriple(uint64_t a1)
{
  *a1 = 0;
  v2 = *(a1 + 8);
  if (v2)
  {
    CFRelease(v2);
    *(a1 + 8) = 0;
  }

  v3 = *(a1 + 24);
  if (v3)
  {
    CFRelease(v3);
    *(a1 + 24) = 0;
  }

  v4 = *(a1 + 32);
  if (v4)
  {
    CFRelease(v4);
    *(a1 + 32) = 0;
  }
}

uint64_t itemfig_reuseExistingRenderPipeline(uint64_t result, uint64_t a2)
{
  if (result)
  {
    v3 = result;
    result = CFArrayGetCount(result);
    if (result >= 1)
    {
      v4 = result;
      v5 = 0;
      while (1)
      {
        result = CFArrayGetValueAtIndex(v3, v5);
        if (*result == *a2)
        {
          v6 = result;
          if (*(result + 16) == *(a2 + 16))
          {
            result = FigCFEqual();
            if (result)
            {
              v7 = *(v6 + 24);
              if (v7)
              {
                break;
              }
            }
          }
        }

        if (v4 == ++v5)
        {
          return result;
        }
      }

      v8 = *(v6 + 32);
      *(a2 + 24) = v7;
      *(a2 + 32) = v8;
      *(v6 + 24) = 0;
      *(v6 + 32) = 0;
    }
  }

  return result;
}

BOOL playerfig_UpdateAudioSessionPreferredDeviceFormat(uint64_t a1)
{
  v38 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  cf = 0;
  FigSimpleMutexLock();
  v3 = *(DerivedStorage + 472);
  if (!v3)
  {
    FigSimpleMutexUnlock();
    return 0;
  }

  v4 = CFRetain(v3);
  FigSimpleMutexUnlock();
  if (!v4)
  {
    return 0;
  }

  v5 = *(CMBaseObjectGetVTable() + 16);
  if (!v5)
  {
    goto LABEL_9;
  }

  v6 = *(v5 + 48);
  if (!v6)
  {
    goto LABEL_9;
  }

  v7 = *MEMORY[0x1E69B01E8];
  if (v6(v4, *MEMORY[0x1E69B01E8], *MEMORY[0x1E695E480], &cf))
  {
    goto LABEL_9;
  }

  if (CFArrayGetCount(*(DerivedStorage + 528)) >= 1 && *(DerivedStorage + 60) == 2)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(*(DerivedStorage + 528), 0);
    v16 = CMBaseObjectGetDerivedStorage();
    if (!itemfig_assureBasicsReadyForInspection(ValueAtIndex))
    {
      v17 = *(v16 + 1036);
      if (v17)
      {
        isTrackAC3 = itemfig_isTrackAC3(ValueAtIndex, v17);
        isTrackAtmos = itemfig_isTrackAtmos(ValueAtIndex, *(v16 + 1036));
        isTrackDecodable = itemfig_isTrackDecodable(ValueAtIndex, *(v16 + 1036));
        isAC3PassthroughSupported = itemfig_isAC3PassthroughSupported(ValueAtIndex);
        v37[0] = 0;
        MaximumNumberOfSpatializedOutputChannels = itemfig_getMaximumNumberOfSpatializedOutputChannels(ValueAtIndex, v37);
        v22 = v37[0];
        isMATAtmosEnabled = playerfig_isMATAtmosEnabled(a1);
        canTrackPassthrough = itemfig_canTrackPassthrough(ValueAtIndex, *(v16 + 1036));
        v25 = !isTrackDecodable;
        if (MaximumNumberOfSpatializedOutputChannels)
        {
          v26 = 1;
        }

        else
        {
          v26 = v22 < 3;
        }

        if (v26)
        {
          v25 = 1;
        }

        if (!isTrackAC3)
        {
          v25 = 0;
        }

        if (!canTrackPassthrough)
        {
          v25 = 0;
        }

        v28 = !v25 || isAC3PassthroughSupported == 0;
        v27 = MEMORY[0x1E69AF7F8];
        if (!v28)
        {
          v27 = MEMORY[0x1E69AF7F0];
        }

        if (isMATAtmosEnabled)
        {
          v28 = isTrackAtmos == 0;
        }

        else
        {
          v28 = 1;
        }

        if (!v28 && isTrackDecodable)
        {
          v27 = MEMORY[0x1E69AF800];
        }

        v35 = *v27;
        if (dword_1EAF16A10 >= 2)
        {
          os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
          fig_log_call_emit_and_clean_up_after_send_and_compose();
        }

        v31 = *(CMBaseObjectGetVTable() + 16);
        if (v31)
        {
          v32 = *(v31 + 56);
          if (v32)
          {
            if (!v32(v4, v7, v35))
            {
              v14 = FigCFEqual();
              goto LABEL_20;
            }
          }
        }

        v33 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }
    }

LABEL_9:
    v9 = 0;
    goto LABEL_10;
  }

  v8 = *MEMORY[0x1E69AF7F8];
  if (FigCFEqual())
  {
    goto LABEL_9;
  }

  if (dword_1EAF16A10 >= 2)
  {
    v11 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v12 = *(CMBaseObjectGetVTable() + 16);
  if (!v12)
  {
    goto LABEL_9;
  }

  v13 = *(v12 + 56);
  if (!v13)
  {
    goto LABEL_9;
  }

  v14 = v13(v4, v7, v8);
LABEL_20:
  v9 = v14 == 0;
LABEL_10:
  CFRelease(v4);
  if (cf)
  {
    CFRelease(cf);
  }

  return v9;
}

uint64_t playerfig_UpdateAudioSessionPreferredDeviceSampleRate(uint64_t a1)
{
  sizeOut[16] = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  cf = 0;
  v20 = 0;
  FigSimpleMutexLock();
  v2 = *(DerivedStorage + 472);
  if (!v2)
  {
    FigSimpleMutexUnlock();
    goto LABEL_11;
  }

  v3 = CFRetain(v2);
  FigSimpleMutexUnlock();
  if (!v3)
  {
LABEL_11:
    v4 = 0;
    goto LABEL_12;
  }

  if (CFArrayGetCount(*(DerivedStorage + 528)) < 1)
  {
    goto LABEL_4;
  }

  ValueAtIndex = CFArrayGetValueAtIndex(*(DerivedStorage + 528), 0);
  v8 = CMBaseObjectGetDerivedStorage();
  if (itemfig_assureBasicsReadyForInspection(ValueAtIndex))
  {
    goto LABEL_4;
  }

  v4 = *(v8 + 1036);
  if (!v4)
  {
    goto LABEL_5;
  }

  v9 = *(v8 + 1008);
  v10 = *(*(CMBaseObjectGetVTable() + 16) + 56);
  if (!v10 || v10(v9, v4, &cf, 0) || itemfig_copyFormatDescription(cf, &v20))
  {
LABEL_4:
    v4 = 0;
LABEL_5:
    v5 = 0;
    goto LABEL_6;
  }

  v11 = v20;
  RichestDecodableFormat = CMAudioFormatDescriptionGetRichestDecodableFormat(v20);
  if (!RichestDecodableFormat)
  {
    if (itemfig_isTrackAC3(ValueAtIndex, *(v8 + 1036)))
    {
      sizeOut[0] = 0;
      FormatList = CMAudioFormatDescriptionGetFormatList(v11, sizeOut);
      if (FormatList && sizeOut[0])
      {
        RichestDecodableFormat = FormatList;
        goto LABEL_25;
      }

      playerfig_UpdateAudioSessionPreferredDeviceSampleRate_cold_1(sizeOut);
    }

    else
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    goto LABEL_4;
  }

LABEL_25:
  v5 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberFloat64Type, RichestDecodableFormat);
  if (*(DerivedStorage + 1136))
  {
    if (dword_1EAF16A10 < 2)
    {
LABEL_36:
      v4 = 0;
      goto LABEL_6;
    }

LABEL_35:
    v18 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    goto LABEL_36;
  }

  if (dword_1EAF16A10 >= 2)
  {
    v14 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v16 = *(CMBaseObjectGetVTable() + 16);
  if (!v16)
  {
    goto LABEL_35;
  }

  v17 = *(v16 + 56);
  if (!v17 || v17(v3, *MEMORY[0x1E69B0210], v5))
  {
    goto LABEL_35;
  }

  v4 = 1;
LABEL_6:
  CFRelease(v3);
  if (cf)
  {
    CFRelease(cf);
  }

  if (v5)
  {
    CFRelease(v5);
  }

LABEL_12:
  if (v20)
  {
    CFRelease(v20);
  }

  return v4;
}

uint64_t playerfig_UpdateAudioSessionPreferredNumberOfAudioOutputChannels(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  v2 = *(DerivedStorage + 472);
  if (v2)
  {
    v3 = CFRetain(v2);
    FigSimpleMutexUnlock();
    if (v3)
    {
      if (CFArrayGetCount(*(DerivedStorage + 528)) >= 1)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(*(DerivedStorage + 528), 0);
        v6 = CMBaseObjectGetDerivedStorage();
        if (!itemfig_assureBasicsReadyForInspection(ValueAtIndex))
        {
          v7 = *(v6 + 1036);
          if (v7)
          {
            itemfig_getTrackAudioChannelCount(ValueAtIndex, v7, 1);
            playerfig_getDeviceMaximumNumberOfPhysicalOutputChannels();
            if (!v8 && dword_1EAF16A10 >= 2)
            {
              os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
              os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
              fig_log_call_emit_and_clean_up_after_send_and_compose();
            }
          }
        }
      }

      CFRelease(v3);
    }
  }

  else
  {
    FigSimpleMutexUnlock();
  }

  return 0;
}

uint64_t itemfig_renderTripleCopy(uint64_t a1, uint64_t a2)
{
  v3 = MEMORY[0x19A8CC720](a1, 40, 0x1060040B0787B42, 0);
  *v3 = *a2;
  v4 = *(a2 + 8);
  if (v4)
  {
    v4 = CFRetain(v4);
  }

  *(v3 + 8) = v4;
  *(v3 + 16) = *(a2 + 16);
  v5 = *(a2 + 24);
  if (v5)
  {
    v5 = CFRetain(v5);
  }

  *(v3 + 24) = v5;
  v6 = *(a2 + 32);
  if (v6)
  {
    v6 = CFRetain(v6);
  }

  *(v3 + 32) = v6;
  return v3;
}

void itemfig_renderTripleRelease(CFAllocatorRef allocator, void *ptr)
{
  v4 = ptr[1];
  if (v4)
  {
    CFRelease(v4);
  }

  v5 = ptr[3];
  if (v5)
  {
    CFRelease(v5);
  }

  v6 = ptr[4];
  if (v6)
  {
    CFRelease(v6);
  }

  CFAllocatorDeallocate(allocator, ptr);
}

__CFString *itemfig_renderTripleCopyDescription(unsigned int *a1)
{
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  v3 = FigCFCopyCompactDescription();
  v4 = FigCFCopyCompactDescription();
  CFStringAppendFormat(Mutable, 0, @"<RenderTriple: %p trackID: %d extractionID: %d renderPipeline: %@ options: %@>", a1, *a1, a1[4], v3, v4);
  if (v3)
  {
    CFRelease(v3);
  }

  if (v4)
  {
    CFRelease(v4);
  }

  return Mutable;
}

uint64_t itemfig_renderTripleEqual(_DWORD *a1, _DWORD *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  if (a1[4] != a2[4])
  {
    return 0;
  }

  result = FigCFEqual();
  if (result)
  {
    result = FigCFEqual();
    if (result)
    {
      return FigCFEqual() != 0;
    }
  }

  return result;
}

void playerfig_AudioDecoderError(uint64_t a1, const void *a2, uint64_t a3, uint64_t a4, const void *a5)
{
  if (a2)
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    if (!*DerivedStorage)
    {
      if (*(DerivedStorage + 536))
      {
        if (!*(DerivedStorage + 592) || a5 && (v8 = CFGetTypeID(a5), v8 == CFDictionaryGetTypeID()) && (v9 = CFDictionaryGetValue(a5, @"OSStatus")) != 0 && (v10 = v9, v11 = CFGetTypeID(v9), v11 == CFNumberGetTypeID()) && (valuePtr = 0, CFNumberGetValue(v10, kCFNumberSInt32Type, &valuePtr), (valuePtr + 41999) >= 0xFFFFFC18))
        {
          Value = FigCFDictionaryGetValue();
          playerfig_TryFailingCurrentItemForRenderPipelineError(a2, Value);
        }
      }
    }
  }
}

uint64_t playerfig_latencyChanged(uint64_t a1, uint64_t a2)
{
  CMBaseObjectGetDerivedStorage();

  return FigDeferNotificationToDispatchQueue();
}

uint64_t playerfig_renderPipelineWantsRebuildToIncreaseFidelity(uint64_t a1, const void *a2)
{
  CMBaseObjectGetDerivedStorage();
  if (a2)
  {
    CFRetain(a2);
  }

  return FigDeferNotificationToDispatchQueue();
}

uint64_t playerfig_renderPipelineDeviceHasDisconnected(uint64_t a1, const void *a2)
{
  CMBaseObjectGetDerivedStorage();
  if (a2)
  {
    CFRetain(a2);
  }

  return FigDeferNotificationToDispatchQueue();
}

uint64_t playerfig_TryFailingCurrentItemForRenderPipelineError(const void *a1, const __CFNumber *a2)
{
  FailedNotificationPayloadWithContentStream = a2;
  v15 = *MEMORY[0x1E69E9840];
  values = a2;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  result = FigSimpleMutexTryLock();
  if (!result)
  {
    return result;
  }

  if (CFArrayGetCount(*(DerivedStorage + 528)) <= 0)
  {
    FigSimpleMutexUnlock();
    return 0;
  }

  ValueAtIndex = CFArrayGetValueAtIndex(*(DerivedStorage + 528), 0);
  CFRetain(ValueAtIndex);
  FigSimpleMutexUnlock();
  if (!ValueAtIndex)
  {
    return 0;
  }

  v7 = MEMORY[0x1E695E480];
  if (FailedNotificationPayloadWithContentStream)
  {
    TypeID = CFNumberGetTypeID();
    if (TypeID == CFGetTypeID(FailedNotificationPayloadWithContentStream))
    {
      v9 = CMBaseObjectGetDerivedStorage();
      if (*v9)
      {
        FailedNotificationPayloadWithContentStream = CFDictionaryCreate(*v7, &kFigPlaybackItemParameter_Result, &values, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      }

      else
      {
        v11 = v9;
        valuePtr[0] = 0;
        CFNumberGetValue(FailedNotificationPayloadWithContentStream, kCFNumberSInt32Type, valuePtr);
        FailedNotificationPayloadWithContentStream = itemfig_createFailedNotificationPayloadWithContentStream(v11[16], FailedNotificationPayloadWithContentStream);
        Value = CFDictionaryGetValue(FailedNotificationPayloadWithContentStream, @"CFError");
        itemfig_reportingAgentReportError(ValueAtIndex, Value, @"CoreMediaErrorDomain", @"Failed to play to end due to render pipeline error", valuePtr[0]);
      }
    }

    else
    {
      FailedNotificationPayloadWithContentStream = 0;
    }
  }

  os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
  os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
  fig_log_call_emit_and_clean_up_after_send_and_compose();
  if (a1)
  {
    CFRetain(a1);
  }

  CMNotificationCenterGetDefaultLocalCenter();
  dispatch_get_global_queue(0, 0);
  FigDeferNotificationToDispatchQueue();
  if (FailedNotificationPayloadWithContentStream)
  {
    CFRelease(FailedNotificationPayloadWithContentStream);
  }

  return 1;
}

void itemfig_reportingAgentReportError(uint64_t a1, __CFError *a2, CFErrorDomain a3, CFStringRef a4, int a5)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (DerivedStorage)
  {
    v11 = DerivedStorage;
    if (a2)
    {
      v12 = CFErrorCopyDescription(a2);
      Domain = CFErrorGetDomain(a2);
    }

    else
    {
      v12 = 0;
      Domain = 0;
    }

    v22 = 0;
    if (a1)
    {
      itemfig_reportingAgentReportError_cold_1(a1, &v22, a2);
    }

    FigSimpleMutexLock();
    v14 = *(v11 + 1952);
    if (Domain)
    {
      a3 = Domain;
    }

    if (v14)
    {
      v15 = *(*(CMBaseObjectGetVTable() + 16) + 48);
      if (v15)
      {
        v15(v14, @"playerStats", 0x1F0B65A98, a3, 0);
      }
    }

    v16 = *(v11 + 1952);
    if (v12)
    {
      a4 = v12;
    }

    if (v16)
    {
      v17 = *(*(CMBaseObjectGetVTable() + 16) + 48);
      if (v17)
      {
        v17(v16, @"playerStats", 0x1F0B65A78, a4, 0);
      }

      v18 = *(v11 + 1952);
      if (v18)
      {
        v19 = *(*(CMBaseObjectGetVTable() + 16) + 56);
        if (v19)
        {
          v19(v18, @"playerStats", 0x1F0B65A58, a5, 0);
        }

        v20 = *(v11 + 1952);
        if (v20)
        {
          v21 = *(*(CMBaseObjectGetVTable() + 16) + 8);
          if (v21)
          {
            v21(v20, @"playerStats", 307, 0, 0);
          }
        }
      }
    }

    FigSimpleMutexUnlock();
    if (v12)
    {
      CFRelease(v12);
    }
  }
}

void itemfig_playbackFailed(uint64_t a1, const void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v7 = *(DerivedStorage + 8);
  if (!*DerivedStorage)
  {
    v8 = CMBaseObjectGetDerivedStorage();
    if (!*v8)
    {
      v9 = v8;
      CMNotificationCenterGetDefaultLocalCenter();
      CMNotificationCenterPostNotification();
      v10 = *(v9 + 204);
      Count = CFArrayGetCount(v9[66]);
      if (FigPlaybackGetEffectiveActionAtEnd(v10, Count))
      {
        v12 = *(v9 + 204);
        v13 = CFArrayGetCount(v9[66]);
        if (FigPlaybackGetEffectiveActionAtEnd(v12, v13) == 1)
        {
          playerfig_pauseForInternalReason(v7, 3);
        }
      }

      else
      {
        itemfig_removeFromPlayQueueIfAdvanceAtEnd(a2);
      }
    }
  }

  if (v7)
  {
    CFRelease(v7);
  }

  if (a2)
  {

    CFRelease(a2);
  }
}

void itemfig_removeFromPlayQueueIfAdvanceAtEnd(const void *a1)
{
  v13 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v3 = FigCFWeakReferenceHolderCopyReferencedObject();
  v4 = CMBaseObjectGetDerivedStorage();
  if (dword_1EAF16A10)
  {
    v8 = 0;
    v7[1] = 0;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (v3)
  {
    v6 = *DerivedStorage == 0;
  }

  else
  {
    v6 = 0;
  }

  if (v6)
  {
    v7[0] = 0;
    FigSimpleMutexLock();
    if (DerivedStorage[1] && !*(v4 + 816))
    {
      playerfig_gracefullyRemoveItemFromPlayQueue(v3, a1, 0, 0, 1, v7);
    }

    FigSimpleMutexUnlock();
    if (v7[0])
    {
      v11 = *MEMORY[0x1E6960C70];
      v12 = *(MEMORY[0x1E6960C70] + 16);
      v9 = v11;
      v10 = v12;
      playerfig_stopResetDisturbReprepareAndResumeWithTransaction();
      playerfig_postDeferredCurrentItemDidChangeNotificationWithReason();
    }

    playerfig_updatePlaybackStateAndBossRate(v3, 7, 0);
    goto LABEL_14;
  }

  if (v3)
  {
LABEL_14:
    CFRelease(v3);
  }
}

uint64_t playerfig_pauseForInternalReason(uint64_t a1, uint64_t a2)
{
  valuePtr = 0.0;
  v4 = *MEMORY[0x1E695E480];
  cf = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberFloat32Type, &valuePtr);
  if (cf)
  {
    v5 = CFDictionaryCreate(v4, &kFigPlayerParameter_Remote_NewRate, &cf, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    if (v5)
    {
      v6 = v5;
      CMNotificationCenterGetDefaultLocalCenter();
      CMNotificationCenterPostNotification();
      CFRelease(v6);
    }

    CFRelease(cf);
  }

  return playerfig_setRateForReason(a1, a2, 0, valuePtr);
}

void playerfig_updatePlaybackStateAndBossRate(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v14 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v13 = 0;
  v12 = 0;
  v11 = 0.0;
  FigSimpleMutexLock();
  if (!*(DerivedStorage + 57))
  {
    a3 |= 2u;
  }

  v7 = 0.0;
  if (*(DerivedStorage + 52) == 4)
  {
    v7 = *(DerivedStorage + 48);
  }

  PlaythroughPrediction = itemfig_getPlaythroughPrediction(*(DerivedStorage + 536));
  if (playerfig_getNextPlaybackState(a1, a2, *(DerivedStorage + 52), 0, *(DerivedStorage + 536) != 0, *(DerivedStorage + 56), a3, PlaythroughPrediction, *(DerivedStorage + 48), &v13, (DerivedStorage + 56), &v12, &v11))
  {
    FigSimpleMutexUnlock();
  }

  else
  {
    if (playerfig_enterPlaybackState(a1, v13))
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    FigSimpleMutexUnlock();
    if (v12)
    {
      if (playerfig_setBossRateWithFade(a1, a2, MEMORY[0x1E6960C70], MEMORY[0x1E6960C70], MEMORY[0x1E6960C70], v11, v7))
      {
        v10 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }
    }
  }
}

void itemfig_postSeekWasCanceledNotification(uint64_t a1, uint64_t a2, int a3, int a4)
{
  v22 = *MEMORY[0x1E69E9840];
  valuePtr = a3;
  values = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*DerivedStorage)
  {
    itemfig_postSeekWasCanceledNotification_cold_1(DerivedStorage, v6, v7, v8, v9, v10, v11, v12, v17, v18, SHIDWORD(v18), v19);
  }

  else
  {
    v13 = *MEMORY[0x1E695E480];
    values = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt32Type, &valuePtr);
    if (values)
    {
      v14 = CFDictionaryCreate(v13, &kFigPlaybackItemParameter_SeekID, &values, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      if (v14)
      {
        v15 = v14;
        CMNotificationCenterGetDefaultLocalCenter();
        if (a4)
        {
          FigDispatchAsyncPostNotification();
        }

        else
        {
          CMNotificationCenterPostNotification();
        }

        if (dword_1EAF16A10)
        {
          os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
          fig_log_call_emit_and_clean_up_after_send_and_compose();
        }

        CFRelease(v15);
      }

      else
      {
        itemfig_postSeekWasCanceledNotification_cold_2();
      }
    }

    else
    {
      itemfig_postSeekWasCanceledNotification_cold_3();
    }
  }

  if (values)
  {
    CFRelease(values);
  }
}

void itemfig_removeAllImageQueues(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v3 = FigCFWeakReferenceHolderCopyReferencedObject();
  if (v3)
  {
    v4 = v3;
    v5 = *(DerivedStorage + 1144);
    if (*(CMBaseObjectGetDerivedStorage() + 224) < 1)
    {
      FigSimpleMutexLock();
      v6 = *(DerivedStorage + 1152);
      if (v6)
      {
        *(DerivedStorage + 1152) = 0;
      }

      v7 = *(DerivedStorage + 1144);
      if (v7)
      {
        CFRelease(v7);
        *(DerivedStorage + 1144) = 0;
      }

      FigSimpleMutexUnlock();
      if (v6)
      {
        FPSupport_DeleteCASlotsInArray(v6);
        CFRelease(v6);
      }
    }

    else
    {
      itemfig_stashTransitionImageQueuesAndSlots(a1);
    }

    itemfig_clearAllImageQueueTables(a1);
    itemfig_handleReadyToDisplayVideoLatch(a1, 1, 0);
    if (v5)
    {
      CMNotificationCenterGetDefaultLocalCenter();
      FigDispatchAsyncPostNotification();
    }

    CFRelease(v4);
  }
}

uint64_t playerfig_freeTransitionImageQueueAndSlot(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  v2 = *(DerivedStorage + 872);
  if (v2)
  {
    FPSupport_DeleteCASlotsInArray(v2);
    v3 = *(DerivedStorage + 872);
    if (v3)
    {
      CFRelease(v3);
      *(DerivedStorage + 872) = 0;
    }
  }

  v4 = *(DerivedStorage + 864);
  if (v4)
  {
    CFRelease(v4);
    *(DerivedStorage + 864) = 0;
  }

  return FigSimpleMutexUnlock();
}

void itemfig_clearAllImageQueueTables(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (DerivedStorage)
  {
    v3 = DerivedStorage;
    v4 = *(DerivedStorage + 648);
    if (v4)
    {
      Count = CFArrayGetCount(v4);
      if (Count >= 1)
      {
        v6 = Count;
        for (i = 0; i != v6; ++i)
        {
          ValueAtIndex = CFArrayGetValueAtIndex(*(v3 + 648), i);
          itemfig_clearTrackImageQueueTable(a1, ValueAtIndex);
        }
      }
    }
  }
}

uint64_t playerfig_clearVideoLayers(const __CFArray *a1, uint64_t a2, uint64_t a3)
{
  v4 = a2;
  cf = 0;
  if (!FigUseVideoReceiverForCALayer())
  {
    v6 = objc_autoreleasePoolPush();
    if (a1 && CFArrayGetCount(a1) >= 1)
    {
      if (!a3)
      {
        v7 = FigDeferredTransactionCreate(*MEMORY[0x1E695E480], &cf);
        if (v7)
        {
          v8 = v7;
          goto LABEL_9;
        }

        LODWORD(a3) = cf;
      }

      FPSupport_AppendDeferredTransactionChangeForClearingFigVideoLayers(a3, a1, v4);
    }

    v8 = 0;
LABEL_9:
    objc_autoreleasePoolPop(v6);
    v9 = cf;
    goto LABEL_10;
  }

  playerfig_clearVideoLayers_cold_1(&v12);
  v9 = 0;
  v8 = v12;
LABEL_10:
  FigDeferredTransactionCommit(v9, 0);
  if (cf)
  {
    CFRelease(cf);
  }

  return v8;
}

void playeritemfig_releaseVideoCompositionObjects(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v2 = *(DerivedStorage + 832);
  if (v2)
  {
    Count = CFArrayGetCount(v2);
  }

  else
  {
    Count = 0;
  }

  v4 = *(DerivedStorage + 352);
  if (v4)
  {
    FigPlaybackBossSetVideoCompositionProcessor(v4, 0);
  }

  itemfig_removeImageQueueListenersForObsoleteImageQueues();
  if (Count >= 1)
  {
    for (i = 0; i != Count; ++i)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(*(DerivedStorage + 832), i);
      v7 = *(*(CMBaseObjectGetVTable() + 16) + 8);
      if (v7)
      {
        v7(ValueAtIndex, 0, 0);
      }
    }
  }

  if (*(DerivedStorage + 824))
  {
    CMNotificationCenterGetDefaultLocalCenter();
    FigNotificationCenterRemoveWeakListener();
    FigVideoCompositionProcessorInvalidate(*(DerivedStorage + 824));
    v8 = *(DerivedStorage + 824);
    if (v8)
    {
      CFRelease(v8);
      *(DerivedStorage + 824) = 0;
    }
  }

  v9 = *(DerivedStorage + 832);
  if (v9)
  {
    CFRelease(v9);
    *(DerivedStorage + 832) = 0;
  }

  v10 = *(DerivedStorage + 840);
  if (v10)
  {
    CFRelease(v10);
    *(DerivedStorage + 840) = 0;
  }

  v11 = *(DerivedStorage + 864);
  if (v11)
  {
    CFRelease(v11);
    *(DerivedStorage + 864) = 0;
  }

  v12 = *(DerivedStorage + 856);
  if (v12)
  {
    CFRelease(v12);
    *(DerivedStorage + 856) = 0;
  }

  v13 = *(DerivedStorage + 872);
  if (v13)
  {
    CFRelease(v13);
    *(DerivedStorage + 872) = 0;
  }

  FigImageQueueTableRemoveAllValues(*(DerivedStorage + 848));
  v14 = *(DerivedStorage + 848);
  if (v14)
  {
    CFRelease(v14);
    *(DerivedStorage + 848) = 0;
  }
}

void itemfig_ExternalProtectionStatusChangedGuts(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v3 = FigCFWeakReferenceHolderCopyReferencedObject();
  v10 = v3;
  if (*DerivedStorage)
  {
    v11 = 1;
  }

  else
  {
    v11 = v3 == 0;
  }

  if (v11)
  {
    if (!v3)
    {
      return;
    }
  }

  else
  {
    itemfig_ExternalProtectionStatusChangedGuts_cold_1(v3, a1, v4, v5, v6, v7, v8, v9);
  }

  CFRelease(v10);
}

void itemfig_clearCoordinatedPlaybackSynchronizationTimebase(uint64_t a1)
{
  v6 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 344))
  {
    v2 = DerivedStorage;
    v3 = FigCFWeakReferenceHolderCopyReferencedObject();
    if (dword_1EAF16A10)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    if (v3)
    {
      CFRelease(v3);
    }

    v5 = *(v2 + 344);
    if (v5)
    {
      CFRelease(v5);
      *(v2 + 344) = 0;
    }
  }
}

void itemfig_releaseAIMEDataAndAllAIMEDataChannelResources(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (FigCFDictionaryGetCount())
  {
    v2 = FigCFDictionaryCopyArrayOfValues();
    if (v2)
    {
      v3 = v2;
      if (CFArrayGetCount(v2) >= 1)
      {
        v4 = 0;
        do
        {
          CFArrayGetValueAtIndex(v3, v4);
          CMNotificationCenterGetDefaultLocalCenter();
          FigNotificationCenterRemoveWeakListener();
          ++v4;
        }

        while (v4 < CFArrayGetCount(v3));
      }

      CFRelease(v3);
    }
  }

  FigCFDictionaryRemoveAllValues();
  v5 = *(DerivedStorage + 1120);
  if (v5)
  {
    CFRelease(v5);
    *(DerivedStorage + 1120) = 0;
  }
}

__CFString *fp_copyPlayQueueDescription(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v2 = *MEMORY[0x1E695E480];
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  Count = CFArrayGetCount(*(DerivedStorage + 528));
  if (Count >= 1)
  {
    v5 = Count;
    v6 = 0;
    do
    {
      ValueAtIndex = CFArrayGetValueAtIndex(*(DerivedStorage + 528), v6);
      v8 = CMBaseObjectGetDerivedStorage();
      v9 = v8;
      if (*(v8 + 488))
      {
        v10 = CFStringCreateWithFormat(v2, 0, @", gapless transition %@", *(v8 + 488));
      }

      else
      {
        if (ValueAtIndex == *(DerivedStorage + 536) || !*(v8 + 480))
        {
          v11 = &stru_1F0B1AFB8;
        }

        else
        {
          v11 = @", no gapless transition";
        }

        v10 = CFRetain(v11);
      }

      v12 = v10;
      if (ValueAtIndex)
      {
        v13 = (CMBaseObjectGetDerivedStorage() + 2096);
      }

      else
      {
        v13 = "";
      }

      ++v6;
      v14 = " ";
      if (v6 >= v5)
      {
        v14 = "";
      }

      CFStringAppendFormat(Mutable, 0, @"item %p %s (boss %p%@)%s", ValueAtIndex, v13, *(v9 + 352), v12, v14);
      if (v12)
      {
        CFRelease(v12);
      }
    }

    while (v5 != v6);
  }

  return Mutable;
}

uint64_t itemfig_unregisterPlayabilityMonitor(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  itemfig_unregisterPlayabilityMonitorNotification(a1);
  FigSimpleMutexLock();
  v3 = *(DerivedStorage + 600);
  if (v3)
  {
    FigPlayabilityMonitorSetRenderPipelines(v3, 0, 0);
    FigPlayabilityMonitorSetPlaybackTimebase(*(DerivedStorage + 600), 0);
  }

  return FigSimpleMutexUnlock();
}

void itemfig_storeItemPerformanceDataIfGathering(const void *a1)
{
  CMBaseObjectGetDerivedStorage();
  v2 = FigCFWeakReferenceHolderCopyReferencedObject();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  value = 0;
  IsPlayerPerformanceTraceEnabled = FPSupport_IsPlayerPerformanceTraceEnabled();
  if (v2)
  {
    if (*DerivedStorage)
    {
      itemfig_storeItemPerformanceDataIfGathering_cold_1(IsPlayerPerformanceTraceEnabled, v5, v6, v7, v8, v9, v10, v11, v17, value, SHIDWORD(value), v19);
    }

    else
    {
      v12 = IsPlayerPerformanceTraceEnabled;
      if (*(DerivedStorage + 852) | IsPlayerPerformanceTraceEnabled)
      {
        if (!*(DerivedStorage + 852) || *(DerivedStorage + 856) || (v13 = CFGetAllocator(v2), Mutable = CFArrayCreateMutable(v13, 0, MEMORY[0x1E695E9C0]), (*(DerivedStorage + 856) = Mutable) != 0))
        {
          itemfig_gatherItemPerformanceData(a1, 1, &value);
          v15 = value;
          if (!v16 && value)
          {
            if (*(DerivedStorage + 852))
            {
              CFArrayAppendValue(*(DerivedStorage + 856), value);
              v15 = value;
            }

            if (v12)
            {
              FPSupport_TracePlayerPerformanceDictionary("File", v15);
              v15 = value;
            }
          }

          if (v15)
          {
            CFRelease(v15);
          }
        }

        else
        {
          FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v17, value, v19);
        }
      }
    }

    CFRelease(v2);
  }

  else
  {
    itemfig_storeItemPerformanceDataIfGathering_cold_2(IsPlayerPerformanceTraceEnabled, v5, v6, v7, v8, v9, v10, v11, v17, value, SHIDWORD(value), v19);
  }
}

uint64_t itemfig_updateStartHostTimeEstimate(const void *a1, const void *a2)
{
  v61 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v5 = FigCFWeakReferenceHolderCopyReferencedObject();
  v6 = CMBaseObjectGetDerivedStorage();
  if (!v5)
  {
    itemfig_updateStartHostTimeEstimate_cold_2(&time1);
    return LODWORD(time1.value);
  }

  v7 = v6;
  v8 = MEMORY[0x1E6960C70];
  v9 = *MEMORY[0x1E6960C70];
  v57 = *MEMORY[0x1E6960C70];
  v10 = *(MEMORY[0x1E6960C70] + 8);
  v58 = v10;
  v11 = *(v6 + 528);
  if (v11 && CFArrayGetCount(v11) >= 1 && CFArrayGetValueAtIndex(*(v7 + 528), 0) == a1)
  {
    if (*(v7 + 52) || *(v7 + 59))
    {
      v57 = v9;
      v58 = v10;
      v15 = *(v8 + 3);
      v16 = *(v8 + 2);
      goto LABEL_43;
    }

LABEL_42:
    v57 = *MEMORY[0x1E6960C88];
    v15 = *(MEMORY[0x1E6960C88] + 12);
    v58 = *(MEMORY[0x1E6960C88] + 8);
    v16 = *(MEMORY[0x1E6960C88] + 16);
LABEL_43:
    time1.value = v57;
    time1.timescale = v58;
    time1.flags = v15;
    time1.epoch = v16;
    time2 = *(DerivedStorage + 212);
    if (CMTimeCompare(&time1, &time2))
    {
      if ((v15 & 0x1D) != 1 || (*(DerivedStorage + 224) & 0x1D) != 1 || (time1.value = v57, time1.timescale = v58, time1.flags = v15, time1.epoch = v16, v52 = *(DerivedStorage + 212), CMTimeSubtract(&time2, &time1, &v52), CMTimeAbsoluteValue(&time1, &time2), CMTimeMake(&time2, 1, 2), (CMTimeCompare(&time1, &time2) & 0x80000000) == 0))
      {
        *(DerivedStorage + 212) = v57;
        *(DerivedStorage + 220) = v58;
        *(DerivedStorage + 224) = v15;
        *(DerivedStorage + 228) = v16;
        v39 = *(DerivedStorage + 632);
        if (v39)
        {
          time1.value = v57;
          time1.timescale = v58;
          time1.flags = v15;
          time1.epoch = v16;
          FigNetworkUrgencyMonitorSetEstimatedStartTime(v39);
        }
      }
    }

    value_low = 0;
    goto LABEL_50;
  }

  if (!*(DerivedStorage + 1))
  {
    goto LABEL_42;
  }

  if (a2)
  {
    v12 = CMBaseObjectGetDerivedStorage();
    v13 = FigCFWeakReferenceHolderCopyReferencedObject();
    v14 = CMBaseObjectGetDerivedStorage();
    v55 = *MEMORY[0x1E6960C88];
    v15 = *(MEMORY[0x1E6960C88] + 12);
    v56 = *(MEMORY[0x1E6960C88] + 8);
    v16 = *(MEMORY[0x1E6960C88] + 16);
    v17 = *v8;
    *&v49.value = *v8;
    v18 = *(v8 + 2);
    v49.epoch = v18;
    if (!v13)
    {
LABEL_38:
      v57 = v55;
      v58 = v56;
      goto LABEL_43;
    }

    v19 = v14;
    v45 = v17;
    cf = v13;
    v20 = *(v14 + 816);
    Count = CFArrayGetCount(*(v14 + 528));
    if (FigPlaybackGetEffectiveActionAtEnd(v20, Count) || (v22 = *(v19 + 48), v22 == 0.0))
    {
LABEL_37:
      CFRelease(cf);
      goto LABEL_38;
    }

    value = *(v12 + 188);
    v23 = *(v12 + 200);
    timescale = *(v12 + 196);
    epoch = *(v12 + 204);
    if (v22 <= 0.0)
    {
      if (v22 < 0.0)
      {
        v25 = *(v12 + 176);
        if ((v25 & 0x1D) == 1)
        {
          if ((v23 & 0x1D) != 1 || (time1 = *(v12 + 164), time2.value = *(v12 + 188), time2.timescale = *(v12 + 196), time2.flags = v23, time2.epoch = epoch, v26 = CMTimeCompare(&time1, &time2), v25 = *(v12 + 176), v26 >= 1))
          {
            value = *(v12 + 164);
            timescale = *(v12 + 172);
            epoch = *(v12 + 180);
            v23 = v25;
          }
        }

        if ((v25 & 0x1D) != 1)
        {
          v27 = MEMORY[0x1E6960CC0];
          if ((v23 & 0x1D) != 1 || (time1 = **&MEMORY[0x1E6960CC0], time2.value = value, time2.timescale = timescale, time2.flags = v23, time2.epoch = epoch, CMTimeCompare(&time1, &time2) >= 1))
          {
            value = *v27;
            v23 = *(v27 + 12);
            timescale = *(v27 + 8);
            epoch = *(v27 + 16);
          }
        }
      }

      goto LABEL_20;
    }

    itemfig_getDurationIfReady(a2, &v49);
    v42 = *(v12 + 152);
    if ((v42 & 0x1D) == 1)
    {
      if ((v23 & 0x1D) != 1 || (time1 = *(v12 + 140), time2.value = value, time2.timescale = timescale, time2.flags = v23, time2.epoch = epoch, v43 = CMTimeCompare(&time1, &time2), v42 = *(v12 + 152), v43 < 0))
      {
        value = *(v12 + 140);
        timescale = *(v12 + 148);
        epoch = *(v12 + 156);
        v23 = v42;
      }
    }

    if ((v42 & 0x1D) == 1)
    {
      goto LABEL_20;
    }

    flags = v49.flags;
    if ((v49.flags & 0x1D) != 1)
    {
      goto LABEL_20;
    }

    if ((v23 & 0x1D) == 1)
    {
      time1 = v49;
      time2.value = value;
      time2.timescale = timescale;
      time2.flags = v23;
      time2.epoch = epoch;
      if ((CMTimeCompare(&time1, &time2) & 0x80000000) == 0)
      {
        goto LABEL_20;
      }

      flags = v49.flags;
    }

    value = v49.value;
    timescale = v49.timescale;
    epoch = v49.epoch;
    v23 = flags;
LABEL_20:
    if ((v23 & 0x1D) == 1)
    {
      v28 = epoch;
      v29 = CMBaseObjectGetDerivedStorage();
      v30 = FigCFWeakReferenceHolderCopyReferencedObject();
      v31 = CMBaseObjectGetDerivedStorage();
      *&v48.value = *MEMORY[0x1E6960C88];
      v48.epoch = v16;
      if (v30)
      {
        v32 = v31;
        time1 = *(v29 + 212);
        *&time2.value = v45;
        time2.epoch = v18;
        *&v52.value = v45;
        v52.epoch = v18;
        v33 = *(v31 + 48);
        if (v33 != 0.0 && *(v31 + 52) == 4)
        {
          v34 = *(*(CMBaseObjectGetVTable() + 16) + 32);
          if (v34)
          {
            v34(a2, &time2);
          }

          lhs.value = value;
          lhs.timescale = timescale;
          lhs.flags = v23;
          lhs.epoch = v28;
          rhs = time2;
          CMTimeSubtract(&v52, &lhs, &rhs);
          v35 = *(v29 + 352);
          if (v35)
          {
            Rate = FigPlaybackBossGetRate(v35);
            if (Rate != 0.0)
            {
              v33 = Rate;
            }
          }

          rhs = v52;
          CMTimeMultiplyByFloat64(&lhs, &rhs, 1.0 / v33);
          v52 = lhs;
          v46 = *MEMORY[0x1E6960CC0];
          *&rhs.value = *MEMORY[0x1E6960CC0];
          v37 = *(MEMORY[0x1E6960CC0] + 16);
          rhs.epoch = v37;
          if (CMTimeCompare(&lhs, &rhs) < 0)
          {
            *&v52.value = v46;
            v52.epoch = v37;
          }

          if (CFArrayGetCount(*(v32 + 528)) >= 1 && CFArrayGetValueAtIndex(*(v32 + 528), 0) == a2)
          {
            HostTimeClock = CMClockGetHostTimeClock();
            CMClockGetTime(&time1, HostTimeClock);
          }

          lhs = time1;
          rhs = v52;
          CMTimeAdd(&v48, &lhs, &rhs);
        }

        CFRelease(v30);
      }

      v55 = v48.value;
      v15 = v48.flags;
      v56 = v48.timescale;
      v16 = v48.epoch;
    }

    goto LABEL_37;
  }

  itemfig_updateStartHostTimeEstimate_cold_1(&time1);
  value_low = LODWORD(time1.value);
LABEL_50:
  CFRelease(v5);
  return value_low;
}

uint64_t itemfig_unregisterPlayabilityMonitorNotification(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  if (*(DerivedStorage + 600) && *(DerivedStorage + 608))
  {
    CMNotificationCenterGetDefaultLocalCenter();
    FigNotificationCenterRemoveWeakListener();
    CMNotificationCenterGetDefaultLocalCenter();
    FigNotificationCenterRemoveWeakListener();
    CMNotificationCenterGetDefaultLocalCenter();
    FigNotificationCenterRemoveWeakListener();
    CMNotificationCenterGetDefaultLocalCenter();
    FigNotificationCenterRemoveWeakListener();
    CMNotificationCenterGetDefaultLocalCenter();
    FigNotificationCenterRemoveWeakListener();
    *(DerivedStorage + 608) = 0;
  }

  return FigSimpleMutexUnlock();
}

uint64_t itemfig_UnlikelyToKeepUp(uint64_t a1, const void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  *(DerivedStorage + 1472) = 1;
  FigSimpleMutexUnlock();
  CFRetain(a2);

  return FigDeferNotificationToDispatchQueue();
}

uint64_t itemfig_BufferFull(uint64_t a1, const void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  *(DerivedStorage + 1456) = 1;
  FigSimpleMutexUnlock();
  CFRetain(a2);

  return FigDeferNotificationToDispatchQueue();
}

uint64_t itemfig_StallWarning(uint64_t a1, const void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  *(DerivedStorage + 1456) = 0;
  *(DerivedStorage + 1472) = 1;
  FigSimpleMutexUnlock();
  CFRetain(a2);

  return FigDeferNotificationToDispatchQueue();
}

void itemfig_DeferredBufferFull(uint64_t a1, const void *a2, uint64_t a3, uint64_t a4, const void *a5)
{
  v8 = *(CMBaseObjectGetDerivedStorage() + 8);
  playerfig_updatePlaybackStateAndBossRate(v8, 5, 2u);
  playerfig_configureDownloadInPlayQueueAndItemsToPrebuffer(v8);

  itemfig_DeferredPostNotificationOnDispatchQueue(v9, a2, a3, v10, a5);
}

void itemfig_DeferredStallWarning(uint64_t a1, const void *a2)
{
  v25 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*DerivedStorage)
  {

    CFRelease(a2);
  }

  else
  {
    v4 = DerivedStorage;
    v5 = *(DerivedStorage + 8);
    CMBaseObjectGetDerivedStorage();
    if (dword_1EAF16A10)
    {
      LODWORD(cf) = 0;
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    *(v4 + 2224) = CFAbsoluteTimeGetCurrent();
    CMTimebaseGetRate(*(v4 + 328));
    time.value = 0;
    if (a2)
    {
      itemfig_DeferredStallWarning_cold_1(a2, &time);
    }

    v7 = CMBaseObjectGetDerivedStorage();
    FigSimpleMutexLock();
    v8 = *(v7 + 1952);
    if (v8)
    {
      v9 = *(*(CMBaseObjectGetVTable() + 16) + 32);
      if (v9)
      {
        v9(v8, @"playerStats", 0x1F0B650D8, 1);
      }

      v10 = *(v7 + 1952);
      if (v10)
      {
        v11 = *(*(CMBaseObjectGetVTable() + 16) + 8);
        if (v11)
        {
          v11(v10, @"playerStats", 303, 0, 0);
        }
      }
    }

    FigSimpleMutexUnlock();
    v12 = CMBaseObjectGetDerivedStorage();
    time.value = 0;
    cf = 0;
    *value = 0x1F0B3D678;
    v13 = MEMORY[0x1E695E480];
    if (*(v12 + 128))
    {
      CMBaseObject = CMByteStreamGetCMBaseObject();
      v15 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      if (v15)
      {
        v15(CMBaseObject, *MEMORY[0x1E6960DF0], *v13, &time);
        if (time.value)
        {
          v16 = CFGetTypeID(time.value);
          if (v16 == CFDictionaryGetTypeID())
          {
            CFDictionaryGetValueIfPresent(time.value, @"cs-iftype", value);
          }
        }
      }

      CMByteStreamGetCMBaseObject();
      FigCRABSGetClassID();
      if (CMBaseObjectIsMemberOfClass())
      {
        v17 = 2;
      }

      else
      {
        v17 = 1;
      }
    }

    else
    {
      v17 = 1;
    }

    if (*(v12 + 1256) && (FigAssetGetCMBaseObject(), v19 = v18, (v20 = *(*(CMBaseObjectGetVTable() + 8) + 48)) != 0))
    {
      v20(v19, @"assetProperty_CreationOptionsDictionary", *v13, &cf);
      v21 = cf;
    }

    else
    {
      v21 = 0;
    }

    FPSupport_ReportStallToSymptomLog(v17, *value, v21);
    if (cf)
    {
      CFRelease(cf);
    }

    if (time.value)
    {
      CFRelease(time.value);
    }

    CMNotificationCenterGetDefaultLocalCenter();
    CMNotificationCenterPostNotification();
    CMNotificationCenterGetDefaultLocalCenter();
    CMNotificationCenterPostNotification();
    if (*(CMBaseObjectGetDerivedStorage() + 57))
    {
      playerfig_updatePlaybackStateAndBossRate(v5, 4, 1u);
    }

    else
    {
      playerfig_pauseForInternalReason(v5, 4);
    }

    CMNotificationCenterGetDefaultLocalCenter();
    CMNotificationCenterPostNotification();
    ++*(v4 + 1656);
    CFRelease(a2);
  }
}

void itemfig_gatherItemPerformanceData(const void *a1, int a2, void *a3)
{
  v80 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v79 = 0;
  memset(v78, 0, sizeof(v78));
  v77 = 0;
  if (a3)
  {
    v8 = DerivedStorage;
    if (!*DerivedStorage)
    {
      v69 = a3;
      *a3 = 0;
      v9 = *(DerivedStorage + 352);
      if (!v9)
      {
        goto LABEL_11;
      }

      v10 = (DerivedStorage + 1752);
      v11 = *(DerivedStorage + 1752);
      if (v11)
      {
        CFRelease(v11);
        *(v8 + 1752) = 0;
        v9 = *(v8 + 352);
      }

      v12 = CFGetAllocator(a1);
      FigPlaybackBossCopyPerformanceDictionary(v9, v12, (v8 + 1752));
      if (*v10)
      {
        v13 = v78 + 1;
        *&v78[0] = CFRetain(*v10);
        v14 = 1;
      }

      else
      {
LABEL_11:
        v14 = 0;
        v13 = v78;
      }

      v16 = *(v8 + 824);
      if (v16)
      {
        v17 = (v8 + 1760);
        v18 = *(v8 + 1760);
        if (v18)
        {
          CFRelease(v18);
          *(v8 + 1760) = 0;
          v16 = *(v8 + 824);
        }

        v19 = CFGetAllocator(a1);
        FigVideoCompositionProcessorCopyProperty(v16, @"VideoCompositionProcessor_PerformanceDictionary", v19, (v8 + 1760));
        if (*v17)
        {
          *v13 = CFRetain(*v17);
          ++v14;
        }
      }

      FigSimpleMutexLock();
      v20 = *(v8 + 648);
      FigSimpleMutexUnlock();
      v21 = MEMORY[0x1E695E480];
      if (v20)
      {
        theArray = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, 0);
        Count = CFArrayGetCount(*(v8 + 648));
        if (Count >= 1)
        {
          v23 = Count;
          v24 = 0;
          if (a2)
          {
            v25 = 1;
          }

          else
          {
            v25 = theArray == 0;
          }

          v26 = v25;
          v71 = v26;
          do
          {
            ValueAtIndex = CFArrayGetValueAtIndex(*(v8 + 648), v24);
            v28 = ValueAtIndex;
            v29 = *(v8 + 352);
            if (v29)
            {
              if (!*(ValueAtIndex + 37))
              {
                if (*(ValueAtIndex + 8))
                {
                  v44 = *ValueAtIndex;
                  v45 = CFGetAllocator(a1);
                  FigPlaybackBossCopyTrackPerformanceDictionary(v29, v44, v45, (v28 + 74));
                  if ((v71 & 1) == 0)
                  {
                    CFArrayAppendValue(theArray, v28);
                  }
                }
              }
            }

            if (*(v28 + 2))
            {
              v30 = *(v28 + 38);
              if (v30)
              {
                CFRelease(v30);
                *(v28 + 38) = 0;
              }

              v31 = CFGetAllocator(a1);
              FigRenderPipelineGetFigBaseObject();
              v33 = v32;
              v34 = *(*(CMBaseObjectGetVTable() + 8) + 48);
              if (v34)
              {
                v34(v33, @"PerformanceDictionary", v31, v28 + 76);
              }
            }

            if (*(v28 + 31))
            {
              *&v75 = 0;
              value = 0;
              v35 = *(v28 + 36);
              if (v35)
              {
                CFRelease(v35);
                *(v28 + 36) = 0;
              }

              v36 = CFGetAllocator(a1);
              FigRenderPipelineGetFigBaseObject();
              v38 = v37;
              v39 = *(*(CMBaseObjectGetVTable() + 8) + 48);
              if (v39)
              {
                v39(v38, @"PerformanceDictionary", v36, v28 + 72);
              }

              if (*(v28 + 38))
              {
                v40 = CFGetAllocator(a1);
                MutableCopy = CFDictionaryCreateMutableCopy(v40, 0, *(v28 + 38));
                if (FigCFDictionaryGetValueIfPresent() && FigCFDictionaryGetValueIfPresent())
                {
                  ConcatenationOfTwoArrays = FigCFArrayCreateConcatenationOfTwoArrays();
                  CFDictionarySetValue(MutableCopy, @"ImageQueuePerformanceArray", ConcatenationOfTwoArrays);
                  v43 = *(v28 + 38);
                  *(v28 + 38) = MutableCopy;
                  if (MutableCopy)
                  {
                    CFRetain(MutableCopy);
                  }

                  if (v43)
                  {
                    CFRelease(v43);
                  }

                  if (ConcatenationOfTwoArrays)
                  {
                    CFRelease(ConcatenationOfTwoArrays);
                  }
                }

                if (MutableCopy)
                {
                  CFRelease(MutableCopy);
                }
              }
            }

            ++v24;
          }

          while (v23 != v24);
        }

        v46 = CMBaseObjectGetDerivedStorage();
        value = 0;
        v47 = MEMORY[0x1E695F060];
        v73 = *MEMORY[0x1E695F060];
        v75 = *MEMORY[0x1E695F060];
        v48 = CFGetAllocator(a1);
        Mutable = CFDictionaryCreateMutable(v48, 20, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
        if (!Mutable)
        {
          FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v69, v70);
          v57 = theArray;
          if (!theArray)
          {
LABEL_87:
            if (v14 >= 1)
            {
              v66 = v78;
              do
              {
                v67 = *v66++;
                CFRelease(v67);
                --v14;
              }

              while (v14);
            }

            return;
          }

LABEL_81:
          v61 = CFArrayGetCount(v57);
          if (v61 >= 1)
          {
            v62 = v61;
            for (i = 0; i != v62; ++i)
            {
              v64 = CFArrayGetValueAtIndex(v57, i);
              v65 = v64[37];
              if (v65)
              {
                CFRelease(v65);
                v64[37] = 0;
              }
            }
          }

          CFArrayRemoveAllValues(v57);
          CFRelease(v57);
          goto LABEL_87;
        }

        v50 = Mutable;
        v51 = CFGetAllocator(a1);
        playerfig_copyTrackPerformanceArray(a1, v51, 1986618469, &value);
        if (!v52)
        {
          v53 = value;
          if (value)
          {
            CFDictionarySetValue(v50, @"VideoTracks", value);
            CFRelease(v53);
            value = 0;
          }
        }

        v54 = CFGetAllocator(a1);
        playerfig_copyTrackPerformanceArray(a1, v54, 1936684398, &value);
        if (!v55)
        {
          v56 = value;
          if (value)
          {
            CFDictionarySetValue(v50, @"AudioTracks", value);
            CFRelease(v56);
          }
        }

        if (*(v46 + 131) || *(v46 + 130))
        {
          v75 = *(v46 + 136);
        }

        else
        {
          v68 = *(v46 + 616);
          if (v68)
          {
            cf = 0;
            FigImageQueueTableCopyFigImageQueueArray(v68, &cf);
            if (FPSupport_GetMaxDisplaySizeFromImageQueues(cf, &v75))
            {
              v75 = v73;
            }

            if (cf)
            {
              CFRelease(cf);
            }
          }
        }

        if (*&v75 != *v47 || *(&v75 + 1) != v47[1])
        {
          FigCFDictionarySetCGSize();
        }

        *(v78 + v14++) = v50;
        v57 = theArray;
        v21 = MEMORY[0x1E695E480];
      }

      else
      {
        v57 = 0;
      }

      if (v14 > 0 || *(v8 + 1768) > 0 || *(v8 + 1772))
      {
        v58 = CFDictionaryCreateMutable(*v21, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
        FigCFDictionarySetInt32();
        FigCFDictionarySetBoolean();
        *(v78 + v14++) = v58;
      }

      if (v14 <= 0)
      {
        goto LABEL_80;
      }

      v59 = 0;
        ;
      }

      if (v59 < 1 || (CFGetAllocator(a1), FigCFCreateCombinedDictionary()))
      {
LABEL_80:
        if (!v57)
        {
          goto LABEL_87;
        }
      }

      else
      {
        *v69 = v77;
        v77 = 0;
        if (!v57)
        {
          goto LABEL_87;
        }
      }

      goto LABEL_81;
    }
  }

  v15 = qword_1EAF16A08;

  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v15, 4294954436, "<<<< FigFilePlayer >>>>", 48724, v3);
}

double playerfig_copyTrackPerformanceArray(uint64_t a1, const __CFAllocator *a2, int a3, char *a4)
{
  v33 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  *a4 = 0;
  v9 = *(DerivedStorage + 648);
  if (!v9)
  {
    v26 = qword_1EAF16A08;
    v27 = v4;
    v28 = 4294954516;
    v29 = 48628;
LABEL_34:

    return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v26, v28, "<<<< FigFilePlayer >>>>", v29, v27);
  }

  Count = CFArrayGetCount(v9);
  if (Count < 1)
  {
    v15 = malloc_type_calloc(0, 8uLL, 0x6004044C4A2DFuLL);
    if (v15)
    {
      goto LABEL_32;
    }

    goto LABEL_33;
  }

  v11 = Count;
  v12 = 0;
  LODWORD(v13) = 0;
  do
  {
    if (*(CFArrayGetValueAtIndex(*(DerivedStorage + 648), v12) + 1) == a3)
    {
      v13 = (v13 + 1);
    }

    else
    {
      v13 = v13;
    }

    ++v12;
  }

  while (v11 != v12);
  v14 = malloc_type_calloc(v13, 8uLL, 0x6004044C4A2DFuLL);
  if (!v14)
  {
LABEL_33:
    v26 = qword_1EAF16A08;
    v27 = v4;
    v28 = 4294954434;
    v29 = 48639;
    goto LABEL_34;
  }

  v15 = v14;
  v31 = a4;
  v16 = 0;
  for (i = 0; i != v11; ++i)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(*(DerivedStorage + 648), i);
    if (ValueAtIndex[1] != a3)
    {
      continue;
    }

    memset(v32, 0, sizeof(v32));
    if (*(ValueAtIndex + 37))
    {
      *&v32[0] = *(ValueAtIndex + 37);
      v19 = v32 + 1;
      v20 = 1;
    }

    else
    {
      v20 = 0;
      v19 = v32;
    }

    v21 = *(ValueAtIndex + 38);
    if (v21)
    {
      *v19 = v21;
      ++v20;
    }

    v22 = *(ValueAtIndex + 36);
    if (v22)
    {
      *(v32 + v20) = v22;
    }

    else if (!v20)
    {
      continue;
    }

    if (FigCFCreateCombinedDictionary())
    {
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v31, 0, LODWORD(v32[0]));
    }

    else if (v16 < v13)
    {
      v15[v16++] = 0;
    }
  }

  if (v16 >= 1)
  {
    v23 = 0;
    *v31 = CFArrayCreate(a2, v15, v16, MEMORY[0x1E695E9C0]);
    v24 = 8 * v16;
    do
    {
      v25 = v15[v23 / 8];
      if (v25)
      {
        CFRelease(v25);
      }

      v23 += 8;
    }

    while (v24 != v23);
  }

LABEL_32:
  free(v15);
  return result;
}

uint64_t itemfig_removeBossListeners(uint64_t a1)
{
  CMBaseObjectGetDerivedStorage();
  CMNotificationCenterGetDefaultLocalCenter();

  return FigNotificationCenterRemoveWeakListeners();
}

void itemfig_cancelPreroll(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  v2 = *(DerivedStorage + 540);
  *(DerivedStorage + 540) = 0;
  FigSimpleMutexUnlock();
  v3 = FigCFWeakReferenceHolderCopyReferencedObject();
  v4 = v3;
  if (v3)
  {
    v5 = v2 == 0;
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
    if (!v3)
    {
      return;
    }
  }

  else
  {
    playerfig_postDeferredPrerollWasCancelledNotification(v3, v2);
  }

  CFRelease(v4);
}

void itemfig_BossRateChangeFailed(uint64_t a1, uint64_t a2)
{
  v7 = *MEMORY[0x1E69E9840];
  if (!*CMBaseObjectGetDerivedStorage())
  {
    v2 = FigCFWeakReferenceHolderCopyReferencedObject();
    if (v2)
    {
      v3 = v2;
      DerivedStorage = CMBaseObjectGetDerivedStorage();
      if (*DerivedStorage)
      {

        CFRelease(v3);
      }

      else
      {
        v5 = DerivedStorage;
        if (dword_1EAF16A10 >= 2)
        {
          os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
          fig_log_call_emit_and_clean_up_after_send_and_compose();
        }

        dispatch_async_f(v5[13], v3, playerfig_BossRateChangeFailed_setRateForInternalReason_0_f);
      }
    }
  }
}

void itemfig_BossSeekDidComplete(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const void *a5)
{
  v12[16] = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!*DerivedStorage)
  {
    v8 = DerivedStorage;
    if (a5)
    {
      if (*(DerivedStorage + 544))
      {
        v9 = CFGetTypeID(a5);
        if (v9 == CFDictionaryGetTypeID() && (!FigCFDictionaryGetInt32IfPresent() || dword_1EAF16A10))
        {
          os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
          fig_log_call_emit_and_clean_up_after_send_and_compose();
        }
      }
    }

    v11 = v8[412];
    v12[0] = 0;
    if (a2)
    {
      itemfig_BossSeekDidComplete_cold_1(a2, v12, v11);
    }
  }
}

void itemfig_ReachedEnd_ReachedEndGuts_f(const void **a1)
{
  if (a1)
  {
    v2 = *a1;
    v3 = a1[1];
    v4 = a1[2];
    itemfig_ReachedEndGuts(v3);
    if (v4)
    {
      CFRelease(v4);
    }

    if (v3)
    {
      CFRelease(v3);
    }

    if (v2)
    {
      CFRelease(v2);
    }
  }

  free(a1);
}

uint64_t FigPlaybackItemGetCurrentTime(uint64_t a1, uint64_t a2)
{
  VTable = CMBaseObjectGetVTable();
  v6 = *(VTable + 16);
  result = VTable + 16;
  v7 = *(v6 + 32);
  if (v7)
  {

    return v7(a1, a2);
  }

  return result;
}

uint64_t itemfig_handleReadyToDisplayVideoLatch(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = a2;
  v93 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v7 = FigCFWeakReferenceHolderCopyReferencedObject();
  v8 = CMBaseObjectGetDerivedStorage();
  if (!v7)
  {
    itemfig_handleReadyToDisplayVideoLatch_cold_2(v77);
    return LODWORD(v77[0]);
  }

  v9 = v8;
  v61 = a3;
  v10 = &unk_1EAF16000;
  if (dword_1EAF16A10 >= 2)
  {
    LODWORD(v64[0]) = 0;
    type[0] = OS_LOG_TYPE_DEFAULT;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    v10 = &unk_1EAF16000;
  }

  VideoFrame = itemfig_hasEnqueuedFirstVideoFrame(a1);
  v13 = FPSupport_ItemReadyToDisplayVideoLatch(v4, VideoFrame, (DerivedStorage + 912), (DerivedStorage + 913));
  v14 = v13;
  if (*(DerivedStorage + 912))
  {
    v15 = *(DerivedStorage + 2066) != 0;
  }

  else
  {
    v15 = 1;
  }

  if (v4 == 1)
  {
    *(DerivedStorage + 914) = 0;
LABEL_12:
    if (!v13)
    {
      goto LABEL_24;
    }

LABEL_13:
    if (*(DerivedStorage + 912))
    {
      if (!*(DerivedStorage + 913))
      {
        if (dword_1EAF16A10 >= 2)
        {
          LODWORD(v64[0]) = 0;
          v17 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT);
          fig_log_call_emit_and_clean_up_after_send_and_compose();
        }

        v25 = CMBaseObjectGetDerivedStorage();
        v26 = CMBaseObjectGetDerivedStorage();
        *type = 0;
        HIDWORD(v60) = VideoFrame;
        if (FigUseVideoReceiverForCALayer())
        {
          itemfig_handleReadyToDisplayVideoLatch_cold_1(v77);
          v50 = 0;
          VideoFrame = LODWORD(v77[0]);
LABEL_57:
          FigDeferredTransactionCommit(v50, 0);
          if (*type)
          {
            CFRelease(*type);
          }

          if (VideoFrame)
          {
            goto LABEL_75;
          }

          *(DerivedStorage + 913) = 1;
          VideoFrame = HIDWORD(v60);
          if (!HIDWORD(v60))
          {
            goto LABEL_75;
          }

LABEL_61:
          if (!*(DerivedStorage + 914))
          {
            if (v10[644])
            {
              LODWORD(v64[0]) = 0;
              type[0] = OS_LOG_TYPE_DEFAULT;
              v51 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
              v52 = v64[0];
              v53 = type[0];
              if (os_log_type_enabled(v51, type[0]))
              {
                v54 = v52;
              }

              else
              {
                v54 = v52 & 0xFFFFFFFE;
              }

              if (v54)
              {
                if (a1)
                {
                  v55 = (CMBaseObjectGetDerivedStorage() + 2096);
                }

                else
                {
                  v55 = "";
                }

                *v67 = 136315650;
                *v68 = "itemfig_handleReadyToDisplayVideoLatch";
                *&v68[8] = 2048;
                *&v68[10] = a1;
                v69 = 2082;
                v70 = v55;
                LODWORD(v58) = 32;
                _os_log_send_and_compose_impl(v54, 0, v77, 128, &dword_1962D5000, v51, v53, "<<<< FigFilePlayer >>>> %s: <%p|%{public}s> Posting kFigPlaybackItemNotification_FirstVideoFrameEnqueued", v67, v58);
              }

              fig_log_call_emit_and_clean_up_after_send_and_compose();
            }

            CMNotificationCenterGetDefaultLocalCenter();
            CMNotificationCenterPostNotification();
            VideoFrame = 0;
            *(DerivedStorage + 914) = 1;
            goto LABEL_75;
          }

          goto LABEL_62;
        }

        v27 = objc_autoreleasePoolPush();
        FigSimpleMutexLock();
        v28 = *(v26 + 216);
        if (v28 && CFArrayGetCount(v28) > 0 || *(v25 + 904))
        {
          *v64 = *MEMORY[0x1E6960CC0];
          *v65 = *(MEMORY[0x1E6960CC0] + 16);
          v29 = v61;
          if (v61)
          {
LABEL_38:
            v62 = v29;
            itemfig_GetDuration(a1, v64);
            v31 = FigCFCopyCompactDescription();
            v32 = FigCFCopyCompactDescription();
            if (dword_1EAF16A10)
            {
              v59 = v27;
              HIDWORD(v63) = 0;
              BYTE3(v63) = 0;
              v33 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
              HIDWORD(v58) = 0;
              os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT);
              fig_log_call_emit_and_clean_up_after_send_and_compose();
            }

            if (v31)
            {
              CFRelease(v31);
            }

            if (v32)
            {
              CFRelease(v32);
            }

            FigSimpleMutexLock();
            v41 = *(v25 + 1144);
            v42 = *(v26 + 216);
            *v77 = *MEMORY[0x1E6960C88];
            v78 = *(MEMORY[0x1E6960C88] + 16);
            FPSupport_AppendDeferredTransactionChangeForSettingCAImageQueuesOnVideoLayers(v62, v41, v42, v77);
            FigSimpleMutexUnlock();
            playerfig_updateVideoLayerSize(v7, v62);
            v48 = *(v25 + 904);
            v10 = &unk_1EAF16000;
            if (v48 && CFArrayGetCount(v48) >= 1)
            {
              v49 = *(v25 + 904);
              *v77 = *v64;
              v78 = *v65;
              FPSupport_AppendDeferredTransactionChangeForSettingDurationOnLayers(v62, v77, v49);
            }

            VideoFrame = playerfig_connectLayerSynchronizerToVideoOutputs(v7, a1, v62, v43, v44, v45, v46, v47, v57, v58, v59, v60, v62, SBYTE2(v62), BYTE3(v62), SHIDWORD(v62), v63, v64[0], v64[1], v65[0], *type, v67[0], *&v68[4], *&v68[12], v70, v71, v72, v73, v74, v75, v76, v77[0], v77[1], v78, v79, v80, v81, v82, v83, v84, v85, v86, v87, v88, v89, v90, v91, v92, v93, v94, v95, v96, v97, v98, v99, v100, v101, v102);
            goto LABEL_56;
          }

          v30 = FigDeferredTransactionCreate(*MEMORY[0x1E695E480], type);
          if (!v30)
          {
            v29 = *type;
            goto LABEL_38;
          }

          VideoFrame = v30;
          v10 = &unk_1EAF16000;
        }

        else
        {
          VideoFrame = 0;
        }

LABEL_56:
        FigSimpleMutexUnlock();
        objc_autoreleasePoolPop(v27);
        v50 = *type;
        goto LABEL_57;
      }
    }

    else if (!*(DerivedStorage + 913))
    {
LABEL_19:
      if (dword_1EAF16A10 >= 2)
      {
        LODWORD(v64[0]) = 0;
        type[0] = OS_LOG_TYPE_DEFAULT;
        v18 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      if (!VideoFrame)
      {
        goto LABEL_75;
      }

      goto LABEL_61;
    }

    if (!*(DerivedStorage + 896))
    {
      if (dword_1EAF16A10 >= 2)
      {
        LODWORD(v64[0]) = 0;
        type[0] = OS_LOG_TYPE_DEFAULT;
        v19 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      v34 = VideoFrame;
      FigSimpleMutexLock();
      v40 = *(v9 + 216);
      if (v40 && CFArrayGetCount(v40) > 0 || *(DerivedStorage + 904))
      {
        VideoFrame = playerfig_connectLayerSynchronizerToVideoOutputs(v7, a1, v61, v35, v36, v37, v38, v39, v57, v58, v59, v60, v61, SBYTE2(v61), BYTE3(v61), SHIDWORD(v61), v63, v64[0], v64[1], v65[0], *type, v67[0], *&v68[4], *&v68[12], v70, v71, v72, v73, v74, v75, v76, v77[0], v77[1], v78, v79, v80, v81, v82, v83, v84, v85, v86, v87, v88, v89, v90, v91, v92, v93, v94, v95, v96, v97, v98, v99, v100, v101, v102);
      }

      else
      {
        VideoFrame = 0;
      }

      FigSimpleMutexUnlock();
      if (!v34 || VideoFrame)
      {
        goto LABEL_75;
      }

      goto LABEL_61;
    }

    goto LABEL_19;
  }

  if (v4 != 3)
  {
    goto LABEL_12;
  }

  if (dword_1EAF16A10 >= 3)
  {
    HIDWORD(v60) = VideoFrame;
    v59 = v7;
    LODWORD(v64[0]) = 0;
    type[0] = OS_LOG_TYPE_DEFAULT;
    v16 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    v10 = &unk_1EAF16000;
    VideoFrame = VideoFrame;
  }

  CMNotificationCenterGetDefaultLocalCenter();
  CMNotificationCenterPostNotification();
  if (v14)
  {
    goto LABEL_13;
  }

LABEL_24:
  if (!v15)
  {
    playerfig_freeTransitionImageQueueAndSlot(v7);
    FigSimpleMutexLock();
    VideoFrame = playerfig_clearVideoLayers(*(v9 + 216), 0, v61);
    if (!VideoFrame)
    {
      if (*(DerivedStorage + 904))
      {
        VideoFrame = playerfig_connectLayerSynchronizerToVideoOutputs(v7, a1, v61, v20, v21, v22, v23, v24, v57, v58, v59, v60, v61, SBYTE2(v61), BYTE3(v61), SHIDWORD(v61), v63, v64[0], v64[1], v65[0], *type, v67[0], *&v68[4], *&v68[12], v70, v71, v72, v73, v74, v75, v76, v77[0], v77[1], v78, v79, v80, v81, v82, v83, v84, v85, v86, v87, v88, v89, v90, v91, v92, v93, v94, v95, v96, v97, v98, v99, v100, v101, v102);
      }

      else
      {
        VideoFrame = 0;
      }
    }

    FigSimpleMutexUnlock();
    goto LABEL_75;
  }

LABEL_62:
  VideoFrame = 0;
LABEL_75:
  CFRelease(v7);
  return VideoFrame;
}

uint64_t itemfig_matchBossRateToPlayerRateAndPlaybackState(uint64_t a1, CMTime *a2, CMTime *a3)
{
  v46 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v5 = FigCFWeakReferenceHolderCopyReferencedObject();
  v6 = CMBaseObjectGetDerivedStorage();
  if (!a1)
  {
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v36, v37, v38);
    value_low = v35;
    if (!v5)
    {
      return value_low;
    }

    goto LABEL_30;
  }

  if (!v5)
  {
    itemfig_matchBossRateToPlayerRateAndPlaybackState_cold_3(&rhs);
    return LODWORD(rhs.value);
  }

  if (*DerivedStorage)
  {
    itemfig_matchBossRateToPlayerRateAndPlaybackState_cold_1(&rhs);
LABEL_41:
    value_low = LODWORD(rhs.value);
    goto LABEL_30;
  }

  if (!*(DerivedStorage + 352))
  {
    itemfig_matchBossRateToPlayerRateAndPlaybackState_cold_2(&rhs);
    goto LABEL_41;
  }

  v7 = v6;
  if (*(DerivedStorage + 480))
  {
    LODWORD(v43.value) = 0;
    LOBYTE(type.value) = 0;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (*(v7 + 52) != 4)
  {
    if (dword_1EAF16A10 >= 2)
    {
      LODWORD(v43.value) = 0;
      LOBYTE(type.value) = 0;
      v10 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    v25 = *(DerivedStorage + 352);
    v26 = *(DerivedStorage + 512);
    rhs = **&MEMORY[0x1E6960C70];
    time = rhs;
    v27 = 0.0;
    goto LABEL_29;
  }

  if (dword_1EAF16A10 >= 2)
  {
    LODWORD(v43.value) = 0;
    LOBYTE(type.value) = 0;
    v9 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v11 = *(DerivedStorage + 344);
  if (v11)
  {
    Rate = CMTimebaseGetRate(v11);
    if (*(v7 + 48) == Rate)
    {
      FigPlaybackBossGetTime(*(DerivedStorage + 352), &rhs);
      *a2 = rhs;
      v13 = *(DerivedStorage + 344);
      HostTimeClock = CMClockGetHostTimeClock();
      time = *a2;
      CMSyncConvertTime(&rhs, &time, v13, HostTimeClock);
      *a3 = rhs;
      memset(&v43, 0, sizeof(v43));
      v15 = CMClockGetHostTimeClock();
      CMClockGetTime(&rhs, v15);
      time = *a3;
      CMTimeSubtract(&v43, &time, &rhs);
      v16 = *(v7 + 48);
      if (CMTimebaseGetRate(*(DerivedStorage + 328)) == v16)
      {
        time = v43;
        CMTimeAbsoluteValue(&rhs, &time);
        CMTimeMake(&time, 1, 1000);
        if (CMTimeCompare(&rhs, &time) < 0)
        {
          if (dword_1EAF16A10)
          {
            LODWORD(type.value) = 0;
            v28 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT);
            fig_log_call_emit_and_clean_up_after_send_and_compose();
          }

          itemfig_updateBossDisplayRefreshInfo(a1);
          value_low = 0;
          goto LABEL_30;
        }
      }

      if (!dword_1EAF16A10)
      {
        goto LABEL_28;
      }

      LODWORD(type.value) = 0;
      v17 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT);
    }

    else
    {
      LODWORD(v43.value) = 0;
      LOBYTE(type.value) = 0;
      v24 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT);
    }

    goto LABEL_27;
  }

  if ((*(DerivedStorage + 560) & 0x1D) == 1 && (*(DerivedStorage + 584) & 0x1D) == 1)
  {
    v18 = (DerivedStorage + 548);
    v19 = (DerivedStorage + 572);
    memset(&v43, 0, sizeof(v43));
    v20 = CMClockGetHostTimeClock();
    CMClockGetTime(&v43, v20);
    memset(&type, 0, sizeof(type));
    rhs = *(DerivedStorage + 572);
    time = v43;
    CMTimeSubtract(&type, &rhs, &time);
    rhs = type;
    time = **&MEMORY[0x1E6960CC0];
    if (CMTimeCompare(&rhs, &time) < 1)
    {
      if (dword_1EAF16A10)
      {
        v39 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      v32 = MEMORY[0x1E6960C70];
      v33 = *MEMORY[0x1E6960C70];
      *v18 = *MEMORY[0x1E6960C70];
      v34 = *(v32 + 16);
      *(DerivedStorage + 564) = v34;
      *v19 = v33;
      *(DerivedStorage + 588) = v34;
      goto LABEL_28;
    }

    v21 = *v18;
    a2->epoch = *(DerivedStorage + 564);
    *&a2->value = v21;
    v22 = *v19;
    a3->epoch = *(DerivedStorage + 588);
    *&a3->value = v22;
    if (dword_1EAF16A10)
    {
      v23 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT);
LABEL_27:
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }
  }

LABEL_28:
  itemfig_updateBossDisplayRefreshInfo(a1);
  v25 = *(DerivedStorage + 352);
  v27 = *(v7 + 48);
  v26 = *(DerivedStorage + 512);
  rhs = *a2;
  time = *a3;
LABEL_29:
  FigPlaybackBossSetRateAndAnchorTime(v25, &rhs, &time, v26, v27);
  value_low = v29;
LABEL_30:
  CFRelease(v5);
  return value_low;
}

uint64_t playerfig_scheduleVideoSlotAndVideoTargetConfigurationSwitchAndPossiblyStartBossForNextItem(uint64_t a1)
{
  v96 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v3 = MEMORY[0x1E6960C70];
  v4 = *MEMORY[0x1E6960C70];
  v86 = *MEMORY[0x1E6960C70];
  v5 = *(MEMORY[0x1E6960C70] + 8);
  LODWORD(v87) = v5;
  FigSimpleMutexLock();
  if (!playerfig_doingGapless(a1))
  {
    if (dword_1EAF16A10)
    {
      goto LABEL_17;
    }

    return FigSimpleMutexUnlock();
  }

  v6 = *(DerivedStorage + 528);
  if (!v6 || CFArrayGetCount(v6) <= 1)
  {
    if (dword_1EAF16A10)
    {
      goto LABEL_17;
    }

    return FigSimpleMutexUnlock();
  }

  ValueAtIndex = CFArrayGetValueAtIndex(*(DerivedStorage + 528), 0);
  v8 = CMBaseObjectGetDerivedStorage();
  v9 = CFArrayGetValueAtIndex(*(DerivedStorage + 528), 1);
  v10 = CMBaseObjectGetDerivedStorage();
  if (ValueAtIndex != *(DerivedStorage + 536))
  {
    v11 = v10;
    v12 = *(v3 + 12);
    epoch = *(v3 + 16);
    v14 = *(v8 + 352);
    cf = epoch;
    flags = v12;
    if (v14)
    {
      FigPlaybackBossGetScheduledEndTime(v14, &time);
      v86 = time.value;
      flags = time.flags;
      LODWORD(v87) = time.timescale;
      epoch = time.epoch;
    }

    if ((flags & 0x1D) != 1)
    {
      if (dword_1EAF16A10)
      {
        LODWORD(v85.value) = 0;
        LOBYTE(type.value) = 0;
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
        goto LABEL_20;
      }

      return FigSimpleMutexUnlock();
    }

    HIDWORD(v62) = v12;
    v63 = epoch;
    HIDWORD(v64) = flags;
    *v65 = v8;
    v66 = v11;
    type.value = 0;
    v85.value = v4;
    v85.timescale = v5;
    v16 = CMBaseObjectGetDerivedStorage();
    v17 = CMBaseObjectGetDerivedStorage();
    v18 = CMBaseObjectGetDerivedStorage();
    LODWORD(lhs.value) = 0;
    *v71 = 0;
    HIDWORD(v70) = 0;
    if (!*(v16 + 224))
    {
      if (dword_1EAF16A10)
      {
        playerfig_scheduleVideoSlotAndVideoTargetConfigurationSwitchAndPossiblyStartBossForNextItem_cold_3();
      }

      goto LABEL_39;
    }

    v19 = v18;
    if (*(v18 + 915))
    {
      if (dword_1EAF16A10)
      {
        playerfig_scheduleVideoSlotAndVideoTargetConfigurationSwitchAndPossiblyStartBossForNextItem_cold_4();
      }

      goto LABEL_39;
    }

    v23 = *(v18 + 1152);
    if (v23 && CFArrayGetCount(v23))
    {
      if (itemfig_hasEnqueuedFirstVideoFrame(v9))
      {
        v24 = *(v17 + 352);
        v25 = cf;
        v26 = HIDWORD(v62);
        if (v24)
        {
          FigPlaybackBossGetScheduledEndTime(v24, &time);
          v85.value = time.value;
          v26 = time.flags;
          v85.timescale = time.timescale;
          v25 = time.epoch;
        }

        if ((v26 & 0x1D) == 1)
        {
          v60 = v25;
          itemfig_GetDimensions();
          itemfig_GetDimensions();
          if (*v71 == 0.0 || *(&v70 + 1) == 0.0 || *&lhs.value != *v71 || *&v71[4] != *(&v70 + 1))
          {
            if (dword_1EAF16A10)
            {
LABEL_38:
              LODWORD(v70) = 0;
              HIBYTE(v69) = 0;
              v27 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
              os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT);
              fig_log_call_emit_and_clean_up_after_send_and_compose();
            }
          }

          else
          {
            value = *MEMORY[0x1E695E480];
            theDict = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 4, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
            if (theDict)
            {
              itemfig_copyVideoTrackMatrix(value, v9, &type);
              value = type.value;
              if (v54 || !type.value)
              {
                LODWORD(v60) = 0;
                v28 = 0;
                if (playerfig_scheduleVideoSlotAndVideoTargetConfigurationSwitchAndPossiblyStartBossForNextItem_cold_1(theDict, type.value == 0))
                {
                  goto LABEL_40;
                }
              }

              else
              {
                CFDictionarySetValue(theDict, @"CurrentVideoTrackMatrix", type.value);
                CFDictionarySetValue(theDict, @"CurrentVideoSlotArray", *(v19 + 1152));
                CFDictionarySetValue(theDict, @"CurrentHasEnqueuedFirstVideoFrame", *MEMORY[0x1E695E4D0]);
                time.value = v85.value;
                time.timescale = v85.timescale;
                time.flags = v26;
                time.epoch = v60;
                v55 = FigCFDictionarySetCMTime();
                LODWORD(v60) = v55 == 0;
                if (!v55)
                {
                  CMNotificationCenterGetDefaultLocalCenter();
                  FigDispatchAsyncPostNotification();
                  *(v19 + 915) = 1;
                }

                CFRelease(theDict);
              }

              CFRelease(value);
              v28 = v60;
LABEL_40:
              v29 = CMBaseObjectGetDerivedStorage();
              v30 = CMBaseObjectGetDerivedStorage();
              v85.value = v4;
              v85.timescale = v5;
              *&rhs.value = *v3;
              v31 = cf;
              rhs.epoch = cf;
              CMBaseObjectGetDerivedStorage();
              v32 = *(v30 + 1040);
              v33 = *(v30 + 1088);
              if (v33 && CFArrayGetCount(v33) > 0)
              {
                v34 = 1;
              }

              else
              {
                v35 = *(v30 + 856);
                if (v35)
                {
                  v34 = CFArrayGetCount(v35) > 0;
                }

                else
                {
                  v34 = 0;
                }
              }

              if (!playerfig_hasVideoTargets(a1))
              {
                if (dword_1EAF16A10)
                {
                  goto LABEL_72;
                }

                goto LABEL_73;
              }

              if (*(v30 + 916))
              {
                if (dword_1EAF16A10)
                {
                  goto LABEL_72;
                }

                goto LABEL_73;
              }

              v36 = v32 != 0 || v34;
              if ((v36 & 1) == 0 || (v37 = CMBaseObjectGetDerivedStorage(), time.value = 0, type.value = 0, (v38 = *(v37 + 1088)) != 0) && CFArrayGetCount(v38) > 0 || (v39 = *(v37 + 856)) != 0 && CFArrayGetCount(v39) > 0)
              {
LABEL_57:
                v40 = *(v29 + 352);
                if (v40)
                {
                  FigPlaybackBossGetScheduledEndTime(v40, &time);
                  v85.value = time.value;
                  HIDWORD(v62) = time.flags;
                  v85.timescale = time.timescale;
                  v31 = time.epoch;
                }

                if ((BYTE4(v62) & 0x1D) == 1)
                {
                  v42 = *(v29 + 328);
                  HostTimeClock = CMClockGetHostTimeClock();
                  time.value = v85.value;
                  time.timescale = v85.timescale;
                  time.flags = HIDWORD(v62);
                  time.epoch = v31;
                  CMSyncConvertTime(&rhs, &time, v42, HostTimeClock);
                  if (!playerfig_scheduleVideoTargetImageQueueConfigurationTransitionForItem(a1, v9, &time, v44, v45, v46, v47, v48, v56, v57, v58, value, v60, theDict, v62, v63, v64, v65[0], v65[1], v66, cf, lhs.value, *&lhs.timescale, lhs.epoch, v69, v70, *v71, rhs.value, *&rhs.timescale, rhs.epoch, v73, v74, v75, v76, v77, v78, v79, v80, v81, v82, v83, type.value, *&type.timescale, type.epoch, v85.value, *&v85.timescale, v85.epoch, v86, v87, rhs.value, *&rhs.timescale, rhs.epoch, v89, v90, v91, v92, v93, v94, v95))
                  {
                    *(v30 + 916) = 1;
LABEL_74:
                    v50 = v66;
                    goto LABEL_75;
                  }
                }

                else if (dword_1EAF16A10)
                {
                  goto LABEL_72;
                }

LABEL_73:
                v36 = 0;
                goto LABEL_74;
              }

              itemfig_getVideoTargetTableForVideoTrack(v9, &time);
              if (time.value)
              {
                if (FigImageQueueTableCopyVideoTargets(time.value, &type))
                {
                  if (type.value)
                  {
                    CFRelease(type.value);
                  }
                }

                else if (type.value)
                {
                  Count = CFArrayGetCount(type.value);
                  if (type.value)
                  {
                    CFRelease(type.value);
                    if (Count >= 1)
                    {
                      goto LABEL_57;
                    }
                  }

                  else if (Count > 0)
                  {
                    goto LABEL_57;
                  }
                }
              }

              if (dword_1EAF16A10)
              {
LABEL_72:
                LODWORD(lhs.value) = 0;
                v71[4] = OS_LOG_TYPE_DEFAULT;
                v49 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
                os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT);
                v50 = v66;
                fig_log_call_emit_and_clean_up_after_send_and_compose();
                v36 = 0;
LABEL_75:
                if (((v28 | v36) & 1) != 0 && *(v50 + 625))
                {
                  memset(&v85, 0, sizeof(v85));
                  FigPlaybackBossGetTime(v50[44], &v85);
                  memset(&type, 0, sizeof(type));
                  v51 = *(*v65 + 328);
                  v52 = CMClockGetHostTimeClock();
                  time.value = v86;
                  time.timescale = v87;
                  time.flags = HIDWORD(v64);
                  time.epoch = v63;
                  CMSyncConvertTime(&type, &time, v51, v52);
                  if (dword_1EAF16A10 >= 2)
                  {
                    *&v71[4] = 0;
                    v71[0] = OS_LOG_TYPE_DEFAULT;
                    v53 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
                    os_log_type_enabled(v53, OS_LOG_TYPE_DEFAULT);
                    fig_log_call_emit_and_clean_up_after_send_and_compose();
                    v50 = v66;
                  }

                  itemfig_bumpBossControlTokenAndMarkBossAsNonIdle(v9, 0);
                  time = v85;
                  rhs = type;
                  itemfig_matchBossRateToPlayerRateAndPlaybackState(v9, &time, &rhs);
                  *(v50 + 625) = 0;
                }

                return FigSimpleMutexUnlock();
              }

              goto LABEL_73;
            }

            playerfig_scheduleVideoSlotAndVideoTargetConfigurationSwitchAndPossiblyStartBossForNextItem_cold_2();
          }
        }

        else if (dword_1EAF16A10)
        {
          goto LABEL_38;
        }
      }

      else if (dword_1EAF16A10)
      {
        goto LABEL_38;
      }
    }

    else if (dword_1EAF16A10)
    {
      goto LABEL_38;
    }

LABEL_39:
    v28 = 0;
    goto LABEL_40;
  }

  if (dword_1EAF16A10)
  {
LABEL_17:
    LODWORD(v85.value) = 0;
    LOBYTE(type.value) = 0;
    v20 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT);
LABEL_20:
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  return FigSimpleMutexUnlock();
}

double itemfig_getVideoTargetTableForVideoTrack(uint64_t a1, void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 824))
  {
    v7 = *(DerivedStorage + 848);
LABEL_3:
    *a2 = v7;
    return result;
  }

  v8 = *(DerivedStorage + 1040);
  if (v8)
  {
    v10 = 0;
    if (!itemfig_getTrackStorage(a1, v8, &v10))
    {
      v7 = v10;
      if (v10)
      {
        v7 = *(v10 + 48);
      }

      goto LABEL_3;
    }
  }

  else
  {
    v9 = qword_1EAF16A08;

    return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v9, 4294954432, "<<<< FigFilePlayer >>>>", 10026, v2);
  }

  return result;
}

void playerfig_releaseItemWeakReference(CFTypeRef cf)
{
  if (cf)
  {
    CFRelease(cf);
  }
}

void itemfig_updateBossDisplayRefreshInfo(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (itemfig_useDroppableFramesMinimumInterval(a1))
  {
    v7 = **&MEMORY[0x1E6960C70];
    v6 = v7;
    FPSupport_GetDisplayRefreshInformation(0, &v7, &v6);
    if ((v7.flags & 0x1D) == 1)
    {
      v3 = *(DerivedStorage + 352);
      v5 = v7;
      v4 = v6;
      FigPlaybackBossSetDroppableFrameMinimumIntervalAndRequestedFrameTimestampIntervalStep(v3, &v5, &v4);
    }
  }
}

BOOL fp_audioPipelineIsRunning()
{
  cf = 0;
  FigRenderPipelineGetFigBaseObject();
  v1 = v0;
  v2 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v2)
  {
    return 0;
  }

  v2(v1, @"IsRunning", *MEMORY[0x1E695E480], &cf);
  if (!cf)
  {
    return 0;
  }

  TypeID = CFBooleanGetTypeID();
  v4 = TypeID == CFGetTypeID(cf) && CFBooleanGetValue(cf) != 0;
  CFRelease(cf);
  return v4;
}

CFNumberRef fp_bumpTransitionNumber(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v2 = *(DerivedStorage + 560);
  if (v2)
  {
    CFRelease(v2);
    *(DerivedStorage + 560) = 0;
  }

  ++*(DerivedStorage + 552);
  result = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberIntType, (DerivedStorage + 552));
  *(DerivedStorage + 560) = result;
  return result;
}

uint64_t playerfig_setExitTransitionIDOnItemPrecedingWorkingItem(uint64_t a1, const void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a2)
  {
    v4 = DerivedStorage;
    v5 = *(DerivedStorage + 536);
    if (v5)
    {
      v6 = *(DerivedStorage + 528);
      if (v6)
      {
        v7.length = CFArrayGetCount(*(DerivedStorage + 528));
        v5 = *(v4 + 536);
      }

      else
      {
        v7.length = 0;
      }

      v7.location = 0;
      FirstIndexOfValue = CFArrayGetFirstIndexOfValue(v6, v7, v5);
      if (FirstIndexOfValue <= 0)
      {
        playerfig_setExitTransitionIDOnItemPrecedingWorkingItem_cold_1(&v12);
        return v12;
      }

      else
      {
        CFArrayGetValueAtIndex(*(v4 + 528), FirstIndexOfValue - 1);
        v9 = CMBaseObjectGetDerivedStorage();
        v10 = *(v9 + 488);
        *(v9 + 488) = a2;
        CFRetain(a2);
        if (v10)
        {
          CFRelease(v10);
        }

        return 0;
      }
    }

    else
    {
      playerfig_setExitTransitionIDOnItemPrecedingWorkingItem_cold_2(&v13);
      return v13;
    }
  }

  else
  {
    playerfig_setExitTransitionIDOnItemPrecedingWorkingItem_cold_3(&v14);
    return v14;
  }
}

uint64_t FigRenderPipelineSetPropertiesToUpdateAtTransition(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(*(CMBaseObjectGetVTable() + 16) + 112);
  if (!v6)
  {
    return 4294954514;
  }

  return v6(a1, a2, a3);
}

void itemfig_copyVideoTrackMatrix(const __CFAllocator *a1, uint64_t a2, void *a3)
{
  v7 = *(CMBaseObjectGetDerivedStorage() + 1040);
  cf = 0;
  if (*CMBaseObjectGetDerivedStorage())
  {
    v8 = qword_1EAF16A08;

    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v8, 4294954511, "<<<< FigFilePlayer >>>>", 28668, v3);
    return;
  }

  if (!v7)
  {
    v11 = 0;
    goto LABEL_17;
  }

  v9 = *(*(CMBaseObjectGetVTable() + 16) + 40);
  if (!v9)
  {
    v11 = 0;
LABEL_17:
    *a3 = v11;
    return;
  }

  v10 = v9(a2, v7, @"Matrix", a1, &cf);
  v11 = cf;
  if (v10 != -12784 || cf != 0)
  {
    goto LABEL_17;
  }

  v13 = *(MEMORY[0x1E695EFD0] + 16);
  v14 = *MEMORY[0x1E695EFD0];
  v15 = v13;
  v16 = *(MEMORY[0x1E695EFD0] + 32);
  v11 = FigCreate3x3MatrixArrayFromCGAffineTransform(a1, &v14);
  cf = v11;
  if (v11)
  {
    goto LABEL_17;
  }

  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v14, DWORD2(v14), v15);
  if (cf)
  {
    CFRelease(cf);
  }
}

BOOL playerfig_hasVideoTargets(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  v2 = *(DerivedStorage + 256);
  if (v2)
  {
    v3 = CFRetain(v2);
    FigSimpleMutexUnlock();
    if (v3)
    {
      Count = CFArrayGetCount(v3);
      CFRelease(v3);
      return Count > 0;
    }
  }

  else
  {
    FigSimpleMutexUnlock();
  }

  return 0;
}

void itemfig_BossBecameIdle_prepareNextItemForTransition_f(const void *a1)
{
  CMBaseObjectGetDerivedStorage();
  v2 = FigCFWeakReferenceHolderCopyReferencedObject();
  if (v2)
  {
    v3 = v2;
    if (!*CMBaseObjectGetDerivedStorage())
    {
      playerfig_prepareNextItemForTransition(v3, a1);
    }

    if (a1)
    {
      CFRelease(a1);
    }

    CFRelease(v3);
  }
}

void playerfig_prepareNextItemForTransition(const char *a1, const void *a2)
{
  target[16] = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v5 = CMBaseObjectGetDerivedStorage();
  cf = 0;
  if (dword_1EAF16A10)
  {
    *v46 = 0;
    type = OS_LOG_TYPE_DEFAULT;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (!*v5)
  {
    *(v5 + 544) = 0;
    v7 = CMBaseObjectGetDerivedStorage();
    if (!playerfig_doingGapless(a1))
    {
      goto LABEL_25;
    }

    if (*(v7 + 1034))
    {
      if (dword_1EAF16A10)
      {
        goto LABEL_24;
      }

      goto LABEL_25;
    }

    if (*(v7 + 1032))
    {
      if (dword_1EAF16A10)
      {
        goto LABEL_24;
      }

      goto LABEL_25;
    }

    v8 = CMBaseObjectGetDerivedStorage();
    FigSimpleMutexLock();
    if (*(v8 + 536))
    {
      Count = CFArrayGetCount(*(v8 + 528));
      v49.location = 0;
      v49.length = Count;
      FirstIndexOfValue = CFArrayGetFirstIndexOfValue(*(v8 + 528), v49, *(v8 + 536));
      if (FirstIndexOfValue != -1 && FirstIndexOfValue + 1 < Count)
      {
        FigSimpleMutexUnlock();
        if (dword_1EAF16A10)
        {
          *v46 = 0;
          type = OS_LOG_TYPE_DEFAULT;
          v11 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);
          fig_log_call_emit_and_clean_up_after_send_and_compose();
        }

        FigSimpleMutexLock();
        if (!*(DerivedStorage + 352))
        {
          goto LABEL_21;
        }

        v13 = (v5 + 536);
        if (*(v5 + 536) != a2)
        {
          *v46 = 0;
          type = OS_LOG_TYPE_DEFAULT;
          v14 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT);
          fig_log_call_emit_and_clean_up_after_send_and_compose();
LABEL_21:
          FigSimpleMutexUnlock();
          if (cf)
          {
            CFRelease(cf);
          }

          return;
        }

        if (*(DerivedStorage + 480))
        {
LABEL_44:
          v26 = CFArrayGetCount(*(v5 + 528));
          v50.location = 0;
          v50.length = v26;
          v27 = CFArrayGetFirstIndexOfValue(*(v5 + 528), v50, a2);
          if (v27 == -1)
          {
            *v46 = 0;
            type = OS_LOG_TYPE_DEFAULT;
            v28 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT);
            fig_log_call_emit_and_clean_up_after_send_and_compose();
          }

          else if (v27 + 1 < v26)
          {
            ValueAtIndex = CFArrayGetValueAtIndex(*(v5 + 528), v27 + 1);
            *(v5 + 536) = ValueAtIndex;
            *(v5 + 544) = ValueAtIndex;
            if (ValueAtIndex)
            {
              v30 = CMBaseObjectGetDerivedStorage();
              if (*(v30 + 1600) == 0.0)
              {
                *(v30 + 1600) = CFAbsoluteTimeGetCurrent();
              }
            }

            goto LABEL_51;
          }

          *v13 = 0;
          *(v5 + 544) = 0;
LABEL_51:
          target[0] = 0;
          v31 = CMBaseObjectGetDerivedStorage();
          v32 = *MEMORY[0x1E695E480];
          v33 = itemfig_copyImageQueueGauge(a2, *MEMORY[0x1E695E480]);
          v34 = FigCFWeakReferenceHolderCopyReferencedObject();
          *queue = 0;
          if (v34)
          {
            v35 = *(v31 + 1040);
            if (v35)
            {
              *v46 = 0;
              if (!itemfig_getTrackStorage(a2, v35, v46) && *v46 && *(*v46 + 16) && !CMSampleBufferCreate(v32, 0, 1u, 0, 0, 0, 0, 0, 0, 0, 0, target))
              {
                CMSetAttachment(target[0], *MEMORY[0x1E6962E00], *MEMORY[0x1E695E4D0], 1u);
                if (v33)
                {
                  CMSetAttachment(target[0], *MEMORY[0x1E6962E20], v33, 1u);
                }

                FigRenderPipelineGetFigBaseObject();
                v37 = v36;
                v38 = *(*(CMBaseObjectGetVTable() + 8) + 48);
                if (v38 && !v38(v37, @"SourceSampleBufferQueue", v32, queue) && *queue)
                {
                  CMBufferQueueEnqueue(*queue, target[0]);
                }
              }

              if (target[0])
              {
                CFRelease(target[0]);
              }
            }
          }

          if (v33)
          {
            CFRelease(v33);
          }

          if (*queue)
          {
            CFRelease(*queue);
          }

          if (v34)
          {
            CFRelease(v34);
          }

          playerfig_prepareWorkingItem(a1, 1, 0);
          if (*v13)
          {
            *(DerivedStorage + 496) = 0;
            if (a2)
            {
              FigPlaybackItemGetFigBaseObject();
              v40 = v39;
              v41 = *(*(CMBaseObjectGetVTable() + 8) + 48);
              if (v41)
              {
                if (!v41(v40, @"ImageQueueGauge", v32, &cf))
                {
                  v42 = cf;
                  if (cf)
                  {
                    FigPlaybackItemGetFigBaseObject();
                    CMBaseObjectSetProperty(v43, @"PriorImageQueueGauge", v42);
                  }
                }
              }
            }
          }

          goto LABEL_21;
        }

        CMNotificationCenterGetDefaultLocalCenter();
        CMNotificationCenterPostNotification();
        if (*(v5 + 852))
        {
          if (!a2)
          {
LABEL_43:
            FigPlaybackBossGoQuiescent(*(DerivedStorage + 352));
            *(DerivedStorage + 480) = 1;
            goto LABEL_44;
          }
        }

        else
        {
          IsPlayerPerformanceTraceEnabled = FPSupport_IsPlayerPerformanceTraceEnabled();
          if (!a2 || !IsPlayerPerformanceTraceEnabled)
          {
            goto LABEL_43;
          }
        }

        if (!*DerivedStorage)
        {
          if (*(DerivedStorage + 352))
          {
            v17 = *(DerivedStorage + 648);
            if (v17)
            {
              v18 = CFArrayGetCount(v17);
              if (v18 >= 1)
              {
                v19 = v18;
                for (i = 0; i != v19; ++i)
                {
                  v21 = CFArrayGetValueAtIndex(*(DerivedStorage + 648), i);
                  v22 = v21[37];
                  if (v22)
                  {
                    CFRelease(v22);
                    v21[37] = 0;
                  }

                  if (*(v21 + 8))
                  {
                    v23 = *(DerivedStorage + 352);
                    v24 = *v21;
                    v25 = CFGetAllocator(a1);
                    FigPlaybackBossCopyTrackPerformanceDictionary(v23, v24, v25, (v21 + 37));
                  }
                }
              }
            }
          }
        }

        goto LABEL_43;
      }

      if (dword_1EAF16A10)
      {
        v12 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }
    }

    FigSimpleMutexUnlock();
    if (dword_1EAF16A10)
    {
LABEL_24:
      v15 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

LABEL_25:
    *(DerivedStorage + 496) = 1;
  }
}

uint64_t itemfig_copyImageQueueGauge(uint64_t a1, uint64_t a2)
{
  v10 = 0;
  cf = 0;
  v4 = *(CMBaseObjectGetDerivedStorage() + 1040);
  if (v4)
  {
    v9 = 0;
    itemfig_getTrackStorage(a1, v4, &v9);
    if (v9)
    {
      FigImageQueueTableCopyFigImageQueueArray(*(v9 + 48), &cf);
      if (cf)
      {
        if (FigCFArrayGetValueAtIndex())
        {
          FigImageQueueGetFigBaseObject();
          v7 = v6;
          v8 = *(*(CMBaseObjectGetVTable() + 8) + 48);
          if (v8)
          {
            v8(v7, @"ImageQueueGauge", a2, &v10);
          }
        }

        if (cf)
        {
          CFRelease(cf);
        }
      }
    }
  }

  return v10;
}

void playerfig_BossRateChangeFailed_setRateForInternalReason_0_f(const void *a1)
{
  if (*CMBaseObjectGetDerivedStorage())
  {
    if (!a1)
    {
      return;
    }
  }

  else
  {
    playerfig_pauseForInternalReason(a1, 2);
    if (!a1)
    {
      return;
    }
  }

  CFRelease(a1);
}

void itemfig_DeferReachedOverlappedStartTime_f(const void **a1)
{
  v22 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    goto LABEL_10;
  }

  v2 = *a1;
  v3 = a1[1];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!*DerivedStorage)
  {
    v5 = DerivedStorage;
    v6 = FigCFWeakReferenceHolderCopyReferencedObject();
    if (v6)
    {
      v7 = v6;
      v8 = CMBaseObjectGetDerivedStorage();
      if (*v8)
      {
LABEL_5:
        CFRelease(v7);
        goto LABEL_6;
      }

      v9 = v8;
      if (*(v8 + 816))
      {
        if (dword_1EAF16A10)
        {
          LODWORD(v21) = 0;
          os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
          fig_log_call_emit_and_clean_up_after_send_and_compose();
        }

        goto LABEL_5;
      }

      CFRetain(v3);
      FigSimpleMutexLock();
      if (CFArrayGetCount(*(v9 + 528)) > 1)
      {
        if (*(v9 + 536) != v3 || !*(v5 + 44))
        {
          goto LABEL_27;
        }

        if (itemfig_onlySingleAudioTrackIsEnabled(v3))
        {
          CFArrayGetValueAtIndex(*(v9 + 528), 1);
          v11 = CMBaseObjectGetDerivedStorage();
          if (!*(v11 + 1240) || *(v11 + 1036))
          {
            *(v9 + 544) = 0;
            playerfig_transferItemToOverlappedOutroAndRemoveFromPlayQueue(v7, v3);
            if (dword_1EAF16A10)
            {
              LODWORD(v21) = 0;
              v14 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
              os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT);
              fig_log_call_emit_and_clean_up_after_send_and_compose();
            }

            Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
            ++*(v9 + 992);
            FigCFDictionarySetInt32();
            CMNotificationCenterGetDefaultLocalCenter();
            FigDispatchAsyncPostNotification();
            playerfig_postDeferredCurrentItemDidChangeNotificationWithReason();
            playerfig_prepareWorkingItem(v7, 0, 0);
            ValueAtIndex = CFArrayGetValueAtIndex(*(v9 + 528), 0);
            v17 = CMBaseObjectGetDerivedStorage();
            if (*(v9 + 584) && *(v17 + 1874))
            {
              v21 = 0;
              v20 = v17;
              itemfig_getTrackStorage(ValueAtIndex, *(v17 + 1036), &v21);
              if (v21 && *(v21 + 16))
              {
                v19 = v21;
                if (dword_1EAF16A10 >= 2)
                {
                  v18 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
                  os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT);
                  fig_log_call_emit_and_clean_up_after_send_and_compose();
                }

                itemfig_updateVolumeOffset(ValueAtIndex);
                itemfig_applyAudioProcessingUnitsToTrack(v20, v19);
                itemfig_applyAllAudioCurvesToTrack(v20, v19);
                itemfig_applyAdjustTargetLevel(ValueAtIndex);
                itemfig_applyAdjustCompressionProfile(ValueAtIndex);
              }

              *(v20 + 1874) = 0;
            }

            FigSimpleMutexUnlock();
            playerfig_updatePlaybackStateAndBossRate(v7, 7, 0);
            itemfig_metricEventPublishPlaybackEndEvent();
            CMNotificationCenterGetDefaultLocalCenter();
            CMNotificationCenterPostNotification();
            if (Mutable)
            {
              CFRelease(Mutable);
            }

            goto LABEL_28;
          }

          if (dword_1EAF16A10)
          {
            LODWORD(v21) = 0;
            v12 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT);
LABEL_26:
            fig_log_call_emit_and_clean_up_after_send_and_compose();
          }
        }

        else if (dword_1EAF16A10)
        {
LABEL_25:
          LODWORD(v21) = 0;
          v13 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT);
          goto LABEL_26;
        }
      }

      else if (dword_1EAF16A10)
      {
        goto LABEL_25;
      }

LABEL_27:
      FigSimpleMutexUnlock();
LABEL_28:
      if (v3)
      {
        CFRelease(v3);
      }

      goto LABEL_5;
    }
  }

LABEL_6:
  if (v3)
  {
    CFRelease(v3);
  }

  if (v2)
  {
    CFRelease(v2);
  }

LABEL_10:
  free(a1);
}

uint64_t itemfig_onlySingleAudioTrackIsEnabled(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v2 = 0;
  v3 = 0;
  v4 = DerivedStorage + 368;
  do
  {
    v5 = v3;
    v6 = *(v4 + v2);
    if (!v6)
    {
      if (!v2)
      {
        goto LABEL_11;
      }

      goto LABEL_7;
    }

    Count = CFArrayGetCount(v6);
    if (v2)
    {
      if (Count > 0)
      {
        LODWORD(v3) = 0;
        goto LABEL_12;
      }

LABEL_7:
      v3 = v5;
      goto LABEL_9;
    }

    v3 = 1;
    if (Count != 1)
    {
      goto LABEL_12;
    }

LABEL_9:
    v2 += 8;
  }

  while (v2 != 112);
  LODWORD(v5) = v3;
LABEL_11:
  LODWORD(v3) = 1;
LABEL_12:
  if (v5)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

void playerfig_transferItemToOverlappedOutroAndRemoveFromPlayQueue(uint64_t a1, const void *a2)
{
  v97 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v5 = CMBaseObjectGetDerivedStorage();
  HIBYTE(v76) = 0;
  CFRetain(a2);
  v6 = *(DerivedStorage + 528);
  v104.length = CFArrayGetCount(v6);
  v104.location = 0;
  v7 = &unk_1EAF16000;
  if (!CFArrayGetFirstIndexOfValue(v6, v104, a2) && CFArrayGetCount(*(DerivedStorage + 528)) >= 2)
  {
    if (*(DerivedStorage + 568))
    {
      *(DerivedStorage + 568) = 0;
      playerfig_postDeferredPrerollWasCancelledNotification(a1, *(DerivedStorage + 576));
    }

    v14 = MEMORY[0x1E6960C70];
    v15 = *MEMORY[0x1E6960C70];
    *(v5 + 548) = *MEMORY[0x1E6960C70];
    v16 = *(v14 + 16);
    *(v5 + 564) = v16;
    *(v5 + 572) = v15;
    *(v5 + 588) = v16;
    v17 = *(v5 + 524);
    if (v17)
    {
      *(v5 + 524) = 0;
      *(v5 + 536) = 0;
      itemfig_postSeekWasCanceledNotification(a1, a2, v17, 1);
    }

    v18 = *(v5 + 1432);
    if (v18)
    {
      CFRelease(v18);
      *(v5 + 1432) = 0;
    }

    CFArrayRemoveValueAtIndex(*(DerivedStorage + 528), 0);
    *(v5 + 1) = 0;
    *(v5 + 1328) = 0;
    *(v5 + 1033) = 0;
    itemfig_configureDownloadForItem(a2, *(v5 + 1369), v19, v20, v21, v22, v23, v24, v62, v64, v66, v68, v70, v73.n128_i64[0], v73.n128_i64[1], v74, v75, v76, *v77, *&v77[8], *&v77[16], v78, v79, *(&v79 + 1), v80, v81, v82, *(&v82 + 1), v83, v84, v85, v86, v87, v88, v89, v90, v91, v92, v93, v94, v95, v96, v97, v98);
    CMNotificationCenterGetDefaultLocalCenter();
    FigDispatchAsyncPostNotification();
    ValueAtIndex = CFArrayGetValueAtIndex(*(DerivedStorage + 528), 0);
    v26 = CMBaseObjectGetDerivedStorage();
    if (*(v26 + 1600) == 0.0)
    {
      *(v26 + 1600) = CFAbsoluteTimeGetCurrent();
    }

    CMNotificationCenterGetDefaultLocalCenter();
    FigDispatchAsyncPostNotification();
    CMNotificationCenterGetDefaultLocalCenter();
    FigDispatchAsyncPostNotification();
    itemfig_makePlaybackPrerequisitePropertiesReady(ValueAtIndex, &v76 + 7, v27, v28, v29, v30, v31, v32, v63, v65, v67, SWORD2(v67), SBYTE6(v67), HIBYTE(v67), v69, SWORD2(v69), SBYTE6(v69), SHIBYTE(v69), v71, SHIDWORD(v71), v73.n128_i32[0], v73.n128_i16[2], v73.n128_i64[1], v74, v75, v76, SHIDWORD(v76), *v77, *&v77[8], *&v77[16], v78, v79, *(&v79 + 1), v80, v81, v82, *(&v82 + 1), v83, v84, v85, v86, v87, v88, v89, v90, v91, v92, v93, v94, v95, v96, v97, v98, v99, v100, v101, v102, v103);
    v72 = a1;
    if (HIBYTE(v76))
    {
      *(v5 + 1328) = 1;
    }

    else if (dword_1EAF16A10)
    {
      LODWORD(v76) = 0;
      HIBYTE(v75) = 0;
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    playerfig_configureDownloadInPlayQueueAndItemsToPrebuffer(a1);
    *(DerivedStorage + 536) = ValueAtIndex;
    itemfig_unregisterPlayabilityMonitor(a2);
    playerfig_cleanupOverlappedOutroComponents(a1, 0);
    v34 = 0;
    *(DerivedStorage + 1016) = *(v5 + 360);
    *(v5 + 360) = 0;
    v35 = v5 + 368;
    do
    {
      *(DerivedStorage + 1024 + v34) = *(v35 + v34);
      *(v35 + v34) = 0;
      v34 += 8;
    }

    while (v34 != 112);
    if (*(v5 + 1745))
    {
      itemfig_accumulateFrameDropCountFromAllVideoPipelines(a2);
    }

    itemfig_storeItemPerformanceDataIfGathering(a2);
    v36 = *(v5 + 648);
    if (v36)
    {
      Count = CFArrayGetCount(v36);
      if (Count >= 1)
      {
        v38 = Count;
        for (i = 0; i != v38; ++i)
        {
          v40 = CFArrayGetValueAtIndex(*(v5 + 648), i);
          v41 = v40;
          v42 = v40[2];
          if (v42)
          {
            v43 = *(v40 + 1);
            v44 = v43 == 1986618469 || v43 == 1635088502;
            if (!v44 || (FigStopForwardingMediaServicesProcessDeathNotification(), (v42 = v41[2]) != 0))
            {
              CFRelease(v42);
              v41[2] = 0;
            }
          }

          v45 = v41[31];
          if (v45)
          {
            CFRelease(v45);
            v41[31] = 0;
          }

          v46 = v41[33];
          if (v46)
          {
            CFRelease(v46);
            v41[33] = 0;
          }

          v47 = v41[21];
          if (v47)
          {
            v48 = CFArrayGetCount(v47);
            if (v48 >= 1)
            {
              v49 = v48;
              for (j = 0; j != v49; ++j)
              {
                v51 = CFArrayGetValueAtIndex(v41[21], j);
                v52 = v51[6];
                if (v52)
                {
                  CFRelease(v52);
                  v51[6] = 0;
                }
              }
            }
          }
        }
      }
    }

    if (*(v5 + 1200))
    {
      CMNotificationCenterGetDefaultLocalCenter();
      FigNotificationCenterRemoveWeakListener();
    }

    v73 = 0uLL;
    v74 = 0;
    FigPlaybackBossGetScheduledEndTime(*(v5 + 352), &v73);
    a1 = v72;
    if ((v73.n128_u8[12] & 0x1D) == 1)
    {
      *(v5 + 24) = v73;
      v53 = v74;
    }

    else
    {
      FigPlaybackBossGetTime(*(v5 + 352), &v82);
      *(v5 + 24) = v82;
      v53 = v83;
    }

    *(v5 + 40) = v53;
    v7 = &unk_1EAF16000;
    CMNotificationCenterGetDefaultLocalCenter();
    FigPlaybackBossGetTimebase(*(v5 + 352));
    FigNotificationCenterRemoveWeakListener();
    itemfig_removeBossListeners(a2);
    *(DerivedStorage + 1000) = *(v5 + 352);
    *(v5 + 352) = 0;
    CMNotificationCenterGetDefaultLocalCenter();
    FigNotificationCenterAddWeakListener();
    CMNotificationCenterGetDefaultLocalCenter();
    FigNotificationCenterAddWeakListener();
    v54 = *(v5 + 328);
    HostTimeClock = CMClockGetHostTimeClock();
    CMTimebaseSetSourceClock(v54, HostTimeClock);
    itemfig_cancelPreroll(a2);
    v56 = *(v5 + 488);
    if (v56)
    {
      CFRelease(v56);
      *(v5 + 488) = 0;
    }

    if (HIBYTE(v76))
    {
      if (*(DerivedStorage + 60) == 2)
      {
        playerfig_UpdateAudioSessionPreferredDeviceFormat(v72);
        playerfig_UpdateAudioSessionPreferredDeviceSampleRate(v72);
        playerfig_UpdateAudioSessionPreferredNumberOfAudioOutputChannels(v72);
      }

      else if (dword_1EAF16A10)
      {
        LODWORD(v76) = 0;
        HIBYTE(v75) = 0;
        v57 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        v58 = v76;
        v59 = HIBYTE(v75);
        if (os_log_type_enabled(v57, HIBYTE(v75)))
        {
          v60 = v58;
        }

        else
        {
          v60 = v58 & 0xFFFFFFFE;
        }

        if (v60)
        {
          if (v72)
          {
            v61 = (CMBaseObjectGetDerivedStorage() + 972);
          }

          else
          {
            v61 = "";
          }

          *v77 = 136315650;
          *&v77[4] = "playerfig_transferItemToOverlappedOutroAndRemoveFromPlayQueue";
          *&v77[12] = 2048;
          *&v77[14] = v72;
          *&v77[22] = 2082;
          v78 = v61;
          LODWORD(v64) = 32;
          _os_log_send_and_compose_impl(v60, 0, &v82, 128, &dword_1962D5000, v57, v59, "<<<< FigFilePlayer >>>> %s: [%p] %{public}s item became current and ready but defer audio device config until fully active", v77, v64);
        }

        fig_log_call_emit_and_clean_up_after_send_and_compose();
        a1 = v72;
        v7 = &unk_1EAF16000;
      }

      itemfig_InformStakeholdersOfBestAvailableAudioContentType(a2);
    }

    playerfig_applyEQPreset(a1);
    itemfig_vendAccessLogWhenItemStopsBeingCurrent(a2);
    CMNotificationCenterGetDefaultLocalCenter();
    FigDispatchAsyncPostNotification();
  }

  CFRelease(a2);
  if (v7[644])
  {
    v8 = fp_copyPlayQueueDescription(a1);
    if (v7[644])
    {
      LODWORD(v76) = 0;
      HIBYTE(v75) = 0;
      v9 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v10 = v76;
      v11 = HIBYTE(v75);
      if (os_log_type_enabled(v9, HIBYTE(v75)))
      {
        v12 = v10;
      }

      else
      {
        v12 = v10 & 0xFFFFFFFE;
      }

      if (v12)
      {
        if (a1)
        {
          v13 = (CMBaseObjectGetDerivedStorage() + 972);
        }

        else
        {
          v13 = "";
        }

        *v77 = 136315906;
        *&v77[4] = "playerfig_transferItemToOverlappedOutroAndRemoveFromPlayQueue";
        *&v77[12] = 2048;
        *&v77[14] = a1;
        *&v77[22] = 2082;
        v78 = v13;
        LOWORD(v79) = 2114;
        *(&v79 + 2) = v8;
        LODWORD(v64) = 42;
        _os_log_send_and_compose_impl(v12, 0, &v82, 128, &dword_1962D5000, v9, v11, "<<<< FigFilePlayer >>>> %s: [%p] %{public}s play queue now: [%{public}@]", v77, v64);
      }

      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    if (v8)
    {
      CFRelease(v8);
    }
  }
}

void playerfig_cleanupOverlappedOutroComponents(uint64_t a1, int a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v15 = *MEMORY[0x1E6960C70];
  v16 = *(MEMORY[0x1E6960C70] + 16);
  v4 = *(DerivedStorage + 1000);
  if (v4)
  {
    if (a2)
    {
      FigPlaybackBossGetScheduledEndTime(v4, &v15);
    }

    else
    {
      FigPlaybackBossGetTime(v4, &v15);
    }

    if (!*(DerivedStorage + 1008))
    {
      FigPlaybackBossSetRate(*(DerivedStorage + 1000), 0, 0.0);
    }

    v5 = *(DerivedStorage + 1016);
    if (v5)
    {
      CFSetRemoveAllValues(v5);
      v6 = *(DerivedStorage + 1016);
      if (v6)
      {
        CFRelease(v6);
        *(DerivedStorage + 1016) = 0;
      }
    }

    v7 = 0;
    v8 = DerivedStorage + 1024;
    do
    {
      v9 = *(v8 + v7);
      if (v9)
      {
        CFRelease(v9);
        *(v8 + v7) = 0;
      }

      v7 += 8;
    }

    while (v7 != 112);
    CMNotificationCenterGetDefaultLocalCenter();
    FigNotificationCenterRemoveWeakListener();
    CMNotificationCenterGetDefaultLocalCenter();
    FigNotificationCenterRemoveWeakListener();
    FigPlaybackBossInvalidate(*(DerivedStorage + 1000));
    v10 = *(DerivedStorage + 1000);
    if (v10)
    {
      CFRelease(v10);
      *(DerivedStorage + 1000) = 0;
    }

    *(DerivedStorage + 1008) = 0;
    *(DerivedStorage + 1012) = 0;
    v11 = *MEMORY[0x1E695E480];
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    *&v14.value = v15;
    v14.epoch = v16;
    v13 = CMTimeCopyAsDictionary(&v14, v11);
    FigCFDictionarySetValue();
    FigCFDictionarySetInt32();
    CMNotificationCenterGetDefaultLocalCenter();
    FigDispatchAsyncPostNotification();
    if (v13)
    {
      CFRelease(v13);
    }

    if (Mutable)
    {
      CFRelease(Mutable);
    }
  }
}

void playerfig_OverlappedOutroReachedEnd(uint64_t a1, void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  CFRetain(a2);
  v4 = *(DerivedStorage + 104);

  dispatch_async_f(v4, a2, playerfig_DeferOverlappedOutroReachedEnd_f);
}

void playerfig_OverlappedOutroBossBecameIdle(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, const __CFDictionary *a5)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a5)
  {
    Value = CFDictionaryGetValue(a5, @"OSStatus");
    if (Value)
    {
      v9 = Value;
      TypeID = CFNumberGetTypeID();
      if (TypeID == CFGetTypeID(v9))
      {
        valuePtr = 0;
        CFNumberGetValue(v9, kCFNumberSInt32Type, &valuePtr);
        v11 = valuePtr;
        if (valuePtr)
        {
          *(DerivedStorage + 1009) = 1;
          *(DerivedStorage + 1012) = v11;
        }
      }
    }
  }

  CFRetain(a2);
  dispatch_async_f(*(DerivedStorage + 104), a2, playerfig_DeferOverlappedOutroBossBecameIdle_f);
}

void playerfig_DeferOverlappedOutroReachedEnd_f(const void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (DerivedStorage && !*DerivedStorage)
  {
    FigSimpleMutexLock();
    playerfig_cleanupOverlappedOutroComponents(a1, 1);
    FigSimpleMutexUnlock();
    if (!a1)
    {
      return;
    }
  }

  else if (!a1)
  {
    return;
  }

  CFRelease(a1);
}

void playerfig_DeferOverlappedOutroBossBecameIdle_f(const void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!DerivedStorage || (v3 = DerivedStorage, *DerivedStorage))
  {
    if (!a1)
    {
      return;
    }

    goto LABEL_4;
  }

  FigSimpleMutexLock();
  if (!v3[1008])
  {
    FigPlaybackBossGoQuiescent(*(v3 + 125));
    v3[1008] = 1;
  }

  if (v3[1009])
  {
    playerfig_cleanupOverlappedOutroComponents(a1, 0);
  }

  FigSimpleMutexUnlock();
  if (a1)
  {
LABEL_4:

    CFRelease(a1);
  }
}

void itemfig_deferredExternalProtectionStatusChanged(uint64_t a1, const void *a2)
{
  itemfig_ExternalProtectionStatusChangedGuts(a2);
  if (a2)
  {

    CFRelease(a2);
  }
}

void itemfig_commitAccessLogEntry(const void *a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 1560) || (v4 = CFGetAllocator(a1), Mutable = CFArrayCreateMutable(v4, 0, MEMORY[0x1E695E9C0]), (*(DerivedStorage + 1560) = Mutable) != 0))
  {
    if (!itemfig_createAccessLogEntry())
    {
      CFArrayAppendValue(*(DerivedStorage + 1560), 0);
      *(DerivedStorage + 1720) = *(DerivedStorage + 1728);
      *(DerivedStorage + 1712) = 0;
      *(DerivedStorage + 1664) = *(DerivedStorage + 1672);
      *(DerivedStorage + 1680) = *(DerivedStorage + 1688);
      *(DerivedStorage + 1568) = CFAbsoluteTimeGetCurrent();
      *(DerivedStorage + 1736) = 0;
      *(DerivedStorage + 1648) = 0;
      *(DerivedStorage + 1656) = 0;
      *(DerivedStorage + 1738) = 0;
      *(DerivedStorage + 1584) = 0u;
      *(DerivedStorage + 1696) = 0u;
      *(DerivedStorage + 1600) = CFAbsoluteTimeGetCurrent();
      CFRelease(0);
    }
  }
}

void itemfig_stashTransitionImageQueuesAndSlots(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v2 = FigCFWeakReferenceHolderCopyReferencedObject();
  v3 = CMBaseObjectGetDerivedStorage();
  if (v2)
  {
    v4 = v3;
    v5 = *(DerivedStorage + 1152);
    if (v5 && CFArrayGetCount(v5) >= 1)
    {
      if (*(DerivedStorage + 1872) || *(v4 + 864))
      {
        FigSimpleMutexLock();
        v6 = *(DerivedStorage + 1152);
        *(DerivedStorage + 1152) = 0;
        v7 = *(DerivedStorage + 1144);
        if (v7)
        {
          CFRelease(v7);
          *(DerivedStorage + 1144) = 0;
        }

        FigSimpleMutexUnlock();
        FPSupport_DeleteCASlotsInArray(v6);
        if (v6)
        {
          CFRelease(v6);
        }
      }

      else
      {
        FigSimpleMutexLock();
        *(v4 + 864) = *(DerivedStorage + 1144);
        *(DerivedStorage + 1144) = 0u;
        FigSimpleMutexUnlock();
      }
    }

    CFRelease(v2);
  }
}

void itemfig_clearTrackImageQueueTable(uint64_t a1, uint64_t a2)
{
  cf = 0;
  v3 = *(a2 + 48);
  if (v3)
  {
    FigImageQueueTableCopyFigImageQueueArray(v3, &cf);
    if (cf)
    {
      itemfig_removeImageQueueListenersForObsoleteImageQueues();
      FigImageQueueTableRemoveAllValues(*(a2 + 48));
      if (cf)
      {
        CFRelease(cf);
        cf = 0;
      }
    }
  }

  for (i = 0; ; ++i)
  {
    Count = *(a2 + 224);
    if (Count)
    {
      Count = CFArrayGetCount(Count);
    }

    if (i >= Count)
    {
      break;
    }

    ValueAtIndex = CFArrayGetValueAtIndex(*(a2 + 224), i);
    FigImageQueueTableCopyFigImageQueueArray(ValueAtIndex, &cf);
    if (cf)
    {
      itemfig_removeImageQueueListenersForObsoleteImageQueues();
      FigImageQueueTableRemoveAllValues(ValueAtIndex);
      if (cf)
      {
        CFRelease(cf);
        cf = 0;
      }
    }
  }

  if (cf)
  {
    CFRelease(cf);
  }
}

uint64_t playerfig_createDataChannelConfigurationAndSetIdentifiers(uint64_t a1, CFStringRef a2, CFAllocatorRef allocator, CFTypeRef *a4)
{
  cf = 0;
  Mutable = CFDictionaryCreateMutable(allocator, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v9 = CFStringCreateWithCString(allocator, (DerivedStorage + 972), 0x600u);
  FigCFDictionarySetValue();
  if (a2)
  {
    v10 = CMBaseObjectGetDerivedStorage();
    a2 = CFStringCreateWithCString(allocator, (v10 + 2096), 0x600u);
    FigCFDictionarySetValue();
    FigCFDictionarySetValue();
  }

  v11 = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  v22 = *(v11 + 288);
  v19 = CFStringCreateWithFormat(allocator, 0, @"C/%d");
  if (v19)
  {
    ++*(v11 + 288);
  }

  else
  {
    playerfig_createDataChannelConfigurationAndSetIdentifiers_cold_1(0, v12, v13, v14, v15, v16, v17, v18, v22, cf, SHIDWORD(cf), v24);
  }

  FigSimpleMutexUnlock();
  FigCFDictionarySetValue();
  v20 = FigDataChannelConfigurationCreate(allocator, Mutable, &cf);
  if (v20)
  {
    if (cf)
    {
      CFRelease(cf);
    }
  }

  else
  {
    *a4 = cf;
    cf = 0;
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  if (v9)
  {
    CFRelease(v9);
  }

  if (a2)
  {
    CFRelease(a2);
  }

  if (v19)
  {
    CFRelease(v19);
  }

  return v20;
}

void itemfig_VideoCompositionProcessorErrorOccurred(uint64_t a1, const void *a2, uint64_t a3, uint64_t a4, __CFDictionary *FailedNotificationPayloadWithContentStream)
{
  v17 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (FailedNotificationPayloadWithContentStream)
  {
    v8 = CFGetTypeID(FailedNotificationPayloadWithContentStream);
    if (v8 == CFDictionaryGetTypeID() && (v9 = CFDictionaryGetValue(FailedNotificationPayloadWithContentStream, @"VideoCompositionProcessor_Result"), (v10 = v9) != 0) && (v11 = CFGetTypeID(v9), v11 == CFNumberGetTypeID()))
    {
      FailedNotificationPayloadWithContentStream = itemfig_createFailedNotificationPayloadWithContentStream(*(DerivedStorage + 128), v10);
      Value = CFDictionaryGetValue(FailedNotificationPayloadWithContentStream, @"CFError");
      valuePtr[0] = 0;
      CFNumberGetValue(v10, kCFNumberSInt32Type, valuePtr);
      itemfig_reportingAgentReportError(a2, Value, @"CoreMediaErrorDomain", @"Failed to play to end due to video composition error", valuePtr[0]);
    }

    else
    {
      FailedNotificationPayloadWithContentStream = 0;
    }
  }

  v13 = FigCFWeakReferenceHolderCopyReferencedObject();
  if (v13)
  {
    v14 = v13;
    CMBaseObjectGetDerivedStorage();
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    CFRetain(v14);
    if (a2)
    {
      CFRetain(a2);
    }

    CMNotificationCenterGetDefaultLocalCenter();
    FigDeferNotificationToDispatchQueue();
    CFRelease(v14);
  }

  if (FailedNotificationPayloadWithContentStream)
  {
    CFRelease(FailedNotificationPayloadWithContentStream);
  }
}

uint64_t itemfig_getPlaythroughPrediction(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    FigSimpleMutexLock();
    v2 = *(DerivedStorage + 600);
    if (v2)
    {
      v6 = 0;
      if (FigPlayabilityMonitorGetPlaythroughInfo(v2, &v6, 0, 0))
      {
        goto LABEL_10;
      }

      v3 = v6;
      if (v6 - 2 < 2)
      {
        if (*(DerivedStorage + 1456) == 1)
        {
          v3 = 3;
        }

        else
        {
          v3 = 2;
        }

        goto LABEL_12;
      }

      if (!v6)
      {
        goto LABEL_11;
      }

      if (v6 != 1)
      {
LABEL_10:
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
LABEL_11:
        v3 = 0;
      }
    }

    else
    {
      v3 = *(DerivedStorage + 1306) != 0;
    }

LABEL_12:
    FigSimpleMutexUnlock();
    return v3;
  }

  return 0;
}

uint64_t playerfig_getNextPlaybackState(uint64_t a1, unsigned int a2, uint64_t a3, int a4, uint64_t a5, int a6, unsigned int a7, unsigned int a8, float a9, unsigned int *a10, _BYTE *a11, char *a12, float *a13)
{
  v47 = *MEMORY[0x1E69E9840];
  v13 = a3 == 4;
  if (!a10)
  {
    playerfig_getNextPlaybackState_cold_1(&v45);
    return v45;
  }

  v14 = a7;
  v15 = a5;
  v16 = a3;
  v18 = a1;
  v19 = a11;
  v20 = ((a4 != 0) | a7) & v13;
  v41 = (a7 >> 2) & 1;
  v21 = &unk_1EAF16000;
  if (dword_1EAF16A10 >= 2)
  {
    v37 = a6;
    v39 = a3;
    v22 = a3 == 4;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    v14 = a7;
    v18 = a1;
    v13 = v22;
    v16 = v39;
    a6 = v37;
  }

  v24 = a12;
  if (a9 != 0.0)
  {
    if (!v15)
    {
      if (dword_1EAF16A10 >= 2)
      {
        v27 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
        v19 = a11;
        v24 = a12;
        v21 = &unk_1EAF16000;
      }

      v44 = 0;
      *v19 = 0;
      v15 = 3;
      goto LABEL_54;
    }

    if ((v14 & 2) != 0)
    {
      v15 = 4;
    }

    else if (v14)
    {
      v15 = 2;
    }

    else
    {
      v15 = 4;
      if (v16 != 4 && (v14 & 4) == 0)
      {
        v15 = dword_196E72740[a8];
        if (dword_1EAF16A10 >= 2)
        {
          v38 = a6;
          v35 = v20;
          v25 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT);
          fig_log_call_emit_and_clean_up_after_send_and_compose();
          v14 = a7;
          v18 = a1;
          v20 = v35;
          a6 = v38;
        }
      }
    }

    *a11 = 0;
    v29 = v16 == 3 || v16 == 0;
    if (v15 == 4 && (!a6 ? (v30 = v16 == 4) : (v30 = 1), !v30 || ((v14 >> 3) & 1) != 0))
    {
      v45 = *MEMORY[0x1E6960C70];
      v46 = *(MEMORY[0x1E6960C70] + 16);
      playerfig_performStartupTasksForEvents(v18, (v29 || (v14 & 8) != 0) | 4, v41, 0, &v45, a9);
    }

    else
    {
      if ((v14 & 8) != 0 || v16 == 3 || !v16)
      {
        v45 = *MEMORY[0x1E6960C70];
        v46 = *(MEMORY[0x1E6960C70] + 16);
        playerfig_performStartupTasksForEvents(v18, 1, v41, 0, &v45, a9);
      }

      else if (!a6)
      {
        goto LABEL_45;
      }

      if (v15 != 4)
      {
LABEL_45:
        if (v16 != 4 && v15 == 4)
        {
          v32 = 1;
        }

        else
        {
          v32 = v20;
        }

        v44 = v32;
        goto LABEL_54;
      }
    }

    LODWORD(v45) = 0;
    if (playerfig_isWaitingForAnyStartupTask(v18, &v45))
    {
      v15 = v45;
      *a11 = 1;
      v20 = v13;
    }

    else
    {
      v15 = 4;
    }

    goto LABEL_45;
  }

  if (dword_1EAF16A10 >= 2)
  {
    v36 = v20;
    v26 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    v19 = a11;
    v21 = &unk_1EAF16000;
    v20 = v36;
  }

  *v19 = 0;
  if (v15)
  {
    v15 = 0;
    goto LABEL_45;
  }

  v44 = 0;
LABEL_54:
  if (v14 & 1 | (v15 != 4))
  {
    a9 = 0.0;
  }

  if (v21[644])
  {
    v33 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  *a10 = v15;
  if (v24)
  {
    *v24 = v44;
  }

  result = 0;
  if (a13)
  {
    *a13 = a9;
  }

  return result;
}

uint64_t playerfig_enterPlaybackState(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 52) == v2)
  {
    return 0;
  }

  *(DerivedStorage + 52) = v2;
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  FigCFDictionarySetInt32();
  CMNotificationCenterGetDefaultLocalCenter();
  v5 = FigDispatchAsyncPostNotification();
  if (Mutable)
  {
    CFRelease(Mutable);
  }

  playerfig_updateStartHostTimeEstimatesOfAllItems(a1);
  return v5;
}

uint64_t playerfig_setBossRateWithFade(uint64_t a1, uint64_t a2, CMTime *a3, CMTime *a4, CMTime *a5, float a6, float a7)
{
  v10 = a2;
  v27 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  memset(&v24, 0, sizeof(v24));
  HostTimeClock = CMClockGetHostTimeClock();
  CMClockGetTime(&v24, HostTimeClock);
  if (dword_1EAF16A10)
  {
    v23 = 0;
    type = OS_LOG_TYPE_DEFAULT;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (a6 == 0.0)
  {
    Seconds = 0.0;
    if ((a3->flags & 0x1D) == 1)
    {
      time = *a3;
      Seconds = CMTimeGetSeconds(&time);
    }

    playerfig_applySoftwareVolume(a1, @"SoftwareVolume1", 1, 0.0, Seconds);
    goto LABEL_15;
  }

  if (a7 != 0.0)
  {
LABEL_15:
    time = *a4;
    lhs = *a5;
    return playerfig_setBossRateAndAnchorTime(a1, v10, &time.value, &lhs.value, a6);
  }

  v18 = 0.0;
  if ((a3->flags & 0x1D) == 1)
  {
    time = *a3;
    v18 = CMTimeGetSeconds(&time);
  }

  playerfig_applySoftwareVolume(a1, @"SoftwareVolume1", 1, 0.0, 0.0);
  v19 = 1.0;
  if (*(DerivedStorage + 813))
  {
    v19 = 0.0;
  }

  playerfig_applySoftwareVolume(a1, @"SoftwareVolume5", 1, v19, 0.0);
  time = *a4;
  lhs = *a5;
  v20 = playerfig_setBossRateAndAnchorTime(a1, v10, &time.value, &lhs.value, a6);
  if (*(DerivedStorage + 812))
  {
    playerfig_applySoftwareVolume(a1, @"SoftwareVolume2", 1, *(DerivedStorage + 808), 0.0);
  }

  playerfig_applySoftwareVolume(a1, @"SoftwareVolume1", 0, *(DerivedStorage + 804), v18);
  return v20;
}

uint64_t playerfig_performStartupTasksForEvents(uint64_t a1, int a2, unsigned int a3, unsigned int a4, __int128 *a5, float a6)
{
  v28 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v8 = 0;
  v9 = 0;
  while (1)
  {
    Count = *(DerivedStorage + 1144);
    if (Count)
    {
      Count = CFArrayGetCount(Count);
    }

    if (v8 >= Count)
    {
      return v9;
    }

    ValueAtIndex = CFArrayGetValueAtIndex(*(DerivedStorage + 1144), v8);
    v23 = 0;
    cf = 0;
    v12 = *(DerivedStorage + 528);
    if (v12 && CFArrayGetCount(v12) >= 1)
    {
      v13 = CFArrayGetValueAtIndex(*(DerivedStorage + 528), 0);
    }

    else
    {
      v13 = 0;
    }

    FigPlayerStartupTaskCopyRequiredParameters(ValueAtIndex, &cf);
    NotificationPayloadForProperties = FPSupport_CreateNotificationPayloadForProperties(a1, v13, cf);
    v15 = FigCFArrayContainsValue();
    if (a4 && v15)
    {
      FigCFDictionarySetInt32();
    }

    if (FigCFArrayContainsValue() && (*(a5 + 12) & 1) != 0)
    {
      v26 = *a5;
      v27 = *(a5 + 2);
      FigCFDictionarySetCMTime();
    }

    if (FigCFArrayContainsValue())
    {
      FigCFDictionarySetFloat32();
    }

    if (FigCFArrayContainsValue())
    {
      FigCFDictionarySetFloat32();
    }

    if (FigCFArrayContainsValue())
    {
      v26 = *MEMORY[0x1E6960C70];
      v27 = *(MEMORY[0x1E6960C70] + 16);
      itemfig_GetCurrentTime(v13, &v26);
      v24 = v26;
      v25 = v27;
      FigCFDictionarySetCMTime();
    }

    v9 = FigPlayerStartupTaskNotifyOfEvents(ValueAtIndex, a2, NotificationPayloadForProperties, &v23);
    if (v9)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
      v23 = 1;
    }

    if (cf)
    {
      CFRelease(cf);
    }

    if (NotificationPayloadForProperties)
    {
      CFRelease(NotificationPayloadForProperties);
    }

    if (v23)
    {
      if (!dword_1EAF16A10)
      {
        goto LABEL_32;
      }
    }

    else if (!dword_1EAF16A10)
    {
      goto LABEL_32;
    }

    v17 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
LABEL_32:
    ++v8;
  }
}

uint64_t playerfig_isWaitingForAnyStartupTask(uint64_t a1, _DWORD *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v4 = 0;
  while (1)
  {
    Count = *(DerivedStorage + 1144);
    if (Count)
    {
      Count = CFArrayGetCount(Count);
    }

    if (v4 >= Count)
    {
      break;
    }

    ValueAtIndex = CFArrayGetValueAtIndex(*(DerivedStorage + 1144), v4++);
    if (!FigPlayerStartupTaskDoesAllowStartup(ValueAtIndex))
    {
      *a2 = FigPlayerStartupTaskGetWaitingState(ValueAtIndex);
      return 1;
    }
  }

  return 0;
}

uint64_t playerfig_updateStartHostTimeEstimatesOfAllItems(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  v3 = *(DerivedStorage + 528);
  if (v3 && CFArrayGetCount(v3) >= 1)
  {
    playerfig_updateStartHostTimeEstimatesOfItemAtIndexAndFollowingItems(a1, 0);
  }

  return FigSimpleMutexUnlock();
}

const __CFArray *playerfig_isCurrentItemQuiescent(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  result = *(DerivedStorage + 528);
  if (result)
  {
    if (CFArrayGetCount(result) < 1)
    {
      return 0;
    }

    else if (*(DerivedStorage + 536))
    {
      CFArrayGetValueAtIndex(*(DerivedStorage + 528), 0);
      return (*(CMBaseObjectGetDerivedStorage() + 480) != 0);
    }

    else
    {
      return 1;
    }
  }

  return result;
}

uint64_t playerfig_FigImageQueueSetAsyncApply(uint64_t a1, unsigned __int8 *a2)
{
  v3 = *a2;
  VTable = CMBaseObjectGetVTable();
  v6 = *(VTable + 16);
  result = VTable + 16;
  v7 = *(v6 + 40);
  if (v7)
  {

    return v7(a1, v3);
  }

  return result;
}

uint64_t playerfig_setRateForReason(uint64_t a1, uint64_t a2, uint64_t a3, float a4)
{
  v5 = a2;
  v47 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (dword_1EAF16A10)
  {
    LODWORD(v40.value) = 0;
    type = OS_LOG_TYPE_DEFAULT;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  FigSimpleMutexLock();
  v10 = MEMORY[0x1E6960C70];
  if (a4 <= 0.0 || *(DerivedStorage + 48) != 0.0 || CFArrayGetCount(*(DerivedStorage + 528)) < 1)
  {
    FigSimpleMutexUnlock();
LABEL_16:
    time = *v10;
    v42 = time;
    p_time = &time;
    v25 = &v42;
    v26 = a1;
    v27 = a4;
    v28 = v5;
    v23 = v10;
    goto LABEL_17;
  }

  ValueAtIndex = CFArrayGetValueAtIndex(*(DerivedStorage + 528), 0);
  v12 = CMBaseObjectGetDerivedStorage();
  v13 = *(v12 + 1332);
  if (*(v12 + 1336) > 0.0)
  {
    v14 = v12;
    v42 = *v10;
    itemfig_GetDuration(ValueAtIndex, &v42);
    v16 = v15;
    time = v42;
    Seconds = CMTimeGetSeconds(&time);
    if (!v16)
    {
      v18 = *(v14 + 1336);
      if (Seconds > (*(v14 + 1332) + v18))
      {
        CMTimeMakeWithSeconds(&v40, Seconds - v18 + 0.05, 1000);
        v19 = CMBaseObjectGetDerivedStorage();
        v20 = v19;
        v21 = *(v19 + 1344);
        if (v21)
        {
LABEL_10:
          v22 = *(v20 + 328);
          time = v40;
          CMTimebaseSetTimerDispatchSourceNextFireTime(v22, v21, &time, 0);
          goto LABEL_11;
        }

        v36 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, *(v19 + 104));
        *(v20 + 1344) = v36;
        if (!v36)
        {
          FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v37, v38, v39);
          goto LABEL_11;
        }

        dispatch_set_context(v36, ValueAtIndex);
        dispatch_source_set_event_handler_f(*(v20 + 1344), itemfig_rampOut);
        *(v20 + 2072) = voucher_copy();
        dispatch_resume(*(v20 + 1344));
        if (!CMTimebaseAddTimerDispatchSource(*(v20 + 328), *(v20 + 1344)))
        {
          v21 = *(v20 + 1344);
          goto LABEL_10;
        }
      }
    }
  }

LABEL_11:
  FigSimpleMutexUnlock();
  if (v13 <= 0.0 || a4 == 0.0 || *(DerivedStorage + 48) != 0.0)
  {
    goto LABEL_16;
  }

  CMTimeMakeWithSeconds(&time, v13, 1000);
  v42 = *v10;
  v40 = v42;
  v23 = &time;
  p_time = &v42;
  v25 = &v40;
  v26 = a1;
  v27 = a4;
  v28 = v5;
LABEL_17:
  v29 = playerfig_setRateGuts(v26, v28, v23, p_time, v25, a3, v27);
  if (v29 && dword_1EAF16A10)
  {
    LODWORD(v40.value) = 0;
    type = OS_LOG_TYPE_DEFAULT;
    v30 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    value = v40.value;
    v32 = type;
    if (os_log_type_enabled(v30, type))
    {
      v33 = value;
    }

    else
    {
      v33 = value & 0xFFFFFFFE;
    }

    if (v33)
    {
      if (a1)
      {
        v34 = (CMBaseObjectGetDerivedStorage() + 972);
      }

      else
      {
        v34 = "";
      }

      LODWORD(v42.value) = 136315906;
      *(&v42.value + 4) = "playerfig_setRateForReason";
      LOWORD(v42.flags) = 2048;
      *(&v42.flags + 2) = a1;
      HIWORD(v42.epoch) = 2082;
      v43 = v34;
      v44 = 1024;
      LODWORD(v45) = v29;
      LODWORD(v38) = 38;
      _os_log_send_and_compose_impl(v33, 0, &time, 128, &dword_1962D5000, v30, v32, "<<<< FigFilePlayer >>>> %s: [%p] %{public}s returning err = %d", &v42, v38);
    }

    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  return v29;
}

const __CFArray *playerfig_clearCoordinatedPlaybackSynchronizationTimebaseForItemsAfterItem(uint64_t a1, const void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v4 = 0;
  v5 = a2 == 0;
  while (1)
  {
    result = *(DerivedStorage + 528);
    if (result)
    {
      result = CFArrayGetCount(result);
    }

    if (v4 >= result)
    {
      break;
    }

    ValueAtIndex = CFArrayGetValueAtIndex(*(DerivedStorage + 528), v4);
    if (v5)
    {
      itemfig_clearCoordinatedPlaybackSynchronizationTimebase(ValueAtIndex);
      v5 = 1;
    }

    else
    {
      v5 = ValueAtIndex == a2;
    }

    ++v4;
  }

  return result;
}

uint64_t playerfig_repreparePlayQueue(uint64_t a1, uint64_t a2)
{
  v29 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!*(DerivedStorage + 536))
  {
    return 0;
  }

  v7 = CMBaseObjectGetDerivedStorage();
  PlaybackPrerequisitePropertiesReady = itemfig_makePlaybackPrerequisitePropertiesReady(*(DerivedStorage + 536), &v20[7], v8, v9, v10, v11, v12, v13, v17, v18, type, SWORD2(type), SBYTE6(type), HIBYTE(type), *v20, *&v20[4], v20[6], 0, v21[0], v21[1], v21[2], v22, v23, v24[0], *cf, *&cf[8], v26[0], *&v26[1], v27, v28[0], v28[1], v28[2], v28[3], v28[4], v28[5], v28[6], v28[7], v28[8], v28[9], v28[10], v28[11], v28[12], v28[13], v28[14], v28[15], v29, v30, v31, v32, v33, v34, v35, v36, v37, v38, v39, v40, vars0);
  if (v20[7])
  {
    if (*(DerivedStorage + 60) == 2)
    {
      playerfig_UpdateAudioSessionPreferredDeviceFormat(a1);
      playerfig_UpdateAudioSessionPreferredDeviceSampleRate(a1);
      playerfig_UpdateAudioSessionPreferredNumberOfAudioOutputChannels(a1);
    }

    else if (dword_1EAF16A10)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    itemfig_InformStakeholdersOfBestAvailableAudioContentType(*(DerivedStorage + 536));
  }

  else if (dword_1EAF16A10)
  {
    v14 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (!*(v7 + 352))
  {
    return playerfig_prepareWorkingItem(a1, 0, a2);
  }

  if (dword_1EAF16A10)
  {
    v15 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  return PlaybackPrerequisitePropertiesReady;
}

CFIndex playerfig_configureCacheVolatilityInPlayQueue(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  result = CFArrayGetCount(*(DerivedStorage + 528));
  v3 = result;
  v4 = MEMORY[0x1E695E4D0];
  if (*(DerivedStorage + 60) && *(DerivedStorage + 72) <= 2)
  {
    v4 = MEMORY[0x1E695E4C0];
  }

  if (result >= 1)
  {
    v5 = 0;
    v6 = *v4;
    do
    {
      CFArrayGetValueAtIndex(*(DerivedStorage + 528), v5);
      result = *(CMBaseObjectGetDerivedStorage() + 128);
      if (result)
      {
        CMByteStreamGetCMBaseObject();
        FigCRABSGetClassID();
        result = CMBaseObjectIsMemberOfClass();
        if (result)
        {
          CMBaseObject = CMByteStreamGetCMBaseObject();
          VTable = CMBaseObjectGetVTable();
          v9 = *(VTable + 8);
          result = VTable + 8;
          v10 = *(v9 + 56);
          if (v10)
          {
            result = v10(CMBaseObject, @"CRABS_AllowCacheMemoryToBeVolatile", v6);
          }
        }
      }

      ++v5;
    }

    while (v3 != v5);
  }

  return result;
}

void playerfig_pauseRenderPipelines(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (CFArrayGetCount(*(DerivedStorage + 528)) >= 1)
  {
    CFArrayGetValueAtIndex(*(DerivedStorage + 528), 0);
    v2 = CMBaseObjectGetDerivedStorage();
    v3 = *(v2 + 352);
    if (v3)
    {
      if (*(v2 + 480))
      {
        context = 0;
        CFSetApplyFunction(*(v2 + 360), fp_setRateToZeroIfTimebaseStarter, &context);
        if (!context)
        {
          CMTimebaseSetRate(*(v2 + 328), 0.0);
        }
      }

      else
      {

        FigPlaybackBossSetRate(v3, 0, 0.0);
      }
    }
  }
}

void fp_setRateToZeroIfTimebaseStarter(uint64_t a1, _BYTE *a2)
{
  cf = 0;
  FigRenderPipelineGetFigBaseObject();
  v5 = v4;
  v6 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v6)
  {
    v6(v5, @"IsTimebaseStarter", *MEMORY[0x1E695E480], &cf);
    v7 = cf;
  }

  else
  {
    v7 = 0;
  }

  if (v7 == *MEMORY[0x1E695E4D0])
  {
    v8 = *(*(CMBaseObjectGetVTable() + 16) + 8);
    if (v8)
    {
      v12 = *MEMORY[0x1E6960C70];
      v13 = *(MEMORY[0x1E6960C70] + 16);
      v10 = v12;
      v11 = v13;
      v8(a1, &v12, &v10, 0.0, 0.0);
    }

    *a2 = 1;
    v7 = cf;
  }

  if (v7)
  {
    CFRelease(v7);
  }
}

void playerfig_deferredLatencyChanged(uint64_t a1, uint64_t a2)
{
  v3 = (CMBaseObjectGetDerivedStorage() + 520);
  FigSimpleMutexLock();
  if (!playerfig_isCurrentItemQuiescent(a2))
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    FigSimpleMutexLock();
    FigSimpleMutexLock();
    v5 = *(DerivedStorage + 472);
    if (v5)
    {
      v6 = CFRetain(v5);
      FigSimpleMutexUnlock();
      if (v6)
      {
        BOOLean.value = 0;
        v7 = *(CMBaseObjectGetVTable() + 16);
        if (!v7 || (v8 = *(v7 + 8)) == 0 || (v8(v6, @"FAS_IsActive", *MEMORY[0x1E695E480], &BOOLean), !BOOLean.value) || (Value = CFBooleanGetValue(BOOLean.value), CFRelease(BOOLean.value), !Value) || (v10 = *(DerivedStorage + 528)) == 0)
        {
LABEL_18:
          CFRelease(v6);
          goto LABEL_19;
        }

        v11 = 0;
        v12 = (DerivedStorage + 528);
LABEL_13:
        if (CFArrayGetCount(v10) >= 1)
        {
          ValueAtIndex = CFArrayGetValueAtIndex(*v12, 0);
          if (ValueAtIndex)
          {
            v14 = ValueAtIndex;
            v15 = *(CMBaseObjectGetDerivedStorage() + 352);
            if (v15)
            {
              FigPlaybackBossSetRate(v15, 0, 0.0);
              BOOLean = **&MEMORY[0x1E6960C70];
              v16 = BOOLean;
              itemfig_matchBossRateToPlayerRateAndPlaybackState(v14, &BOOLean, &v16);
            }
          }
        }

        if (v11)
        {
          goto LABEL_19;
        }

        goto LABEL_18;
      }
    }

    else
    {
      FigSimpleMutexUnlock();
    }

    v10 = *(DerivedStorage + 528);
    if (!v10)
    {
LABEL_19:
      FigSimpleMutexUnlock();
      FigSimpleMutexUnlock();
      return;
    }

    v6 = 0;
    v12 = (DerivedStorage + 528);
    v11 = 1;
    goto LABEL_13;
  }

  playerfig_deferredLatencyChanged_cold_1(v3);
}

_BYTE *playerfig_RenderPipelineFailedToStart_setRateForInternalReason_0_f(uint64_t a1)
{
  result = CMBaseObjectGetDerivedStorage();
  if (!*result)
  {

    return playerfig_pauseForInternalReason(a1, 3);
  }

  return result;
}

void playerfig_deferredRenderPipelineWantsRebuild(uint64_t a1, const void *a2, const void *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  v6 = playerfig_isCurrentItemQuiescent(a2);
  if (*(DerivedStorage + 952) && CFEqual(a3, @"DeviceHasDisconnected"))
  {
    FigSimpleMutexUnlock();
LABEL_9:
    playerfig_deferredRenderPipelineWantsRebuild_cold_1();
    if (!a2)
    {
      return;
    }

    goto LABEL_5;
  }

  FigSimpleMutexUnlock();
  if (!v6)
  {
    goto LABEL_9;
  }

  if (!a2)
  {
    return;
  }

LABEL_5:

  CFRelease(a2);
}

CFStringRef fp_createNextRenderPipelineIdentifierString(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v2 = (*(DerivedStorage + 988) + 1);
  *(DerivedStorage + 988) = v2;
  return CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"R%s.%02d", DerivedStorage + 972, v2);
}

uint64_t itemfig_shouldEnableMainVideo(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v2 = CMBaseObjectGetDerivedStorage();
  if (fp_doesCPEProtectorAllowsVideoOutput(*(DerivedStorage + 1200)))
  {
    FigSimpleMutexLock();
    v3 = *(DerivedStorage + 1776);
    if (v3)
    {
      v4 = CFArrayGetCount(v3) > 0;
    }

    else
    {
      v4 = 0;
    }

    FigSimpleMutexUnlock();
  }

  else
  {
    v4 = 0;
  }

  FigSimpleMutexLock();
  v5 = *(v2 + 216);
  if (v5)
  {
    v6 = CFArrayGetCount(v5) > 0;
  }

  else
  {
    v6 = 0;
  }

  FigSimpleMutexUnlock();
  FigSimpleMutexLock();
  v7 = *(v2 + 264);
  if (v7)
  {
    v8 = CFArrayGetCount(v7) > 0;
  }

  else
  {
    v8 = 0;
  }

  FigSimpleMutexUnlock();
  if (v4 || *(DerivedStorage + 1872) == 0 && v6 || *(v2 + 224) > 0 || v8)
  {
    if (!*(v2 + 898) || !*(DerivedStorage + 2064))
    {
      return 1;
    }

    if (dword_1EAF16A10)
    {
      goto LABEL_22;
    }
  }

  else if (dword_1EAF16A10)
  {
LABEL_22:
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  return 0;
}

uint64_t itemfig_countOfEnabledVideoTracks(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v2 = *(DerivedStorage + 648);
  if (!v2)
  {
    return 0;
  }

  Count = CFArrayGetCount(v2);
  if (Count < 1)
  {
    return 0;
  }

  v4 = Count;
  v5 = 0;
  for (i = 0; i != v4; ++i)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(*(DerivedStorage + 648), i);
    if (ValueAtIndex[1] == 1986618469 && *(ValueAtIndex + 8) == 1)
    {
      ++v5;
    }
  }

  return v5;
}

uint64_t itemfig_createRenderTriplesForVideoComposition(const void *a1, int a2, OpaqueCMTimebase *a3, _BOOL4 a4, uint64_t a5, __CFArray *a6, __CFArray *a7)
{
  v172 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v143 = *(DerivedStorage + 8);
  v11 = CMBaseObjectGetDerivedStorage();
  v162 = 0;
  v161 = 0;
  value = 0;
  queueOut = 0;
  v126 = *MEMORY[0x1E6960C70];
  *&v158.value = *MEMORY[0x1E6960C70];
  v125 = *(MEMORY[0x1E6960C70] + 16);
  v158.epoch = v125;
  v157[0] = 0;
  v155 = 0u;
  v156 = 0u;
  v154 = 0;
  v152 = *MEMORY[0x1E6960CC0];
  v153 = *(MEMORY[0x1E6960CC0] + 16);
  v139 = v152;
  v150 = v152;
  v138 = v153;
  v151 = v153;
  v12 = *MEMORY[0x1E695E480];
  FigActivitySchedulerCreateForNewThread(*MEMORY[0x1E695E480], 23, @"com.apple.coremedia.videoprocessor", &v162);
  if (v13)
  {
    goto LABEL_208;
  }

  DictionaryRepresentation = CGSizeCreateDictionaryRepresentation(*(DerivedStorage + 720));
  v140 = DerivedStorage;
  FigVideoCompositorGetFigBaseObject();
  v16 = v15;
  v17 = *(*(CMBaseObjectGetVTable() + 8) + 56);
  if (!v17)
  {
    value_low = 4294954514;
    if (!DictionaryRepresentation)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  value_low = v17(v16, @"RenderDimensions", DictionaryRepresentation);
  if (DictionaryRepresentation)
  {
LABEL_6:
    CFRelease(DictionaryRepresentation);
  }

LABEL_7:
  if (value_low)
  {
LABEL_209:
    v27 = 0;
LABEL_22:
    itemfig_resetRenderTriple(&v155);
    v33 = 0;
    v34 = 0;
    SInt32 = 0;
    v36 = 0;
    goto LABEL_177;
  }

  v19 = CMBaseObjectGetDerivedStorage();
  valuePtr = xmmword_196E72760;
  *v164 = 0;
  *cf = xmmword_196E72778;
  *v147 = 0;
  if (*(v19 + 688))
  {
    *v164 = 0;
    valuePtr = kFigPlayerFileLowWaterLevelDuration_Minimum;
    *v147 = 0;
    *cf = kFigPlayerFileLowWaterLevelDuration_Minimum;
  }

  v152 = valuePtr;
  v153 = *v164;
  v150 = *cf;
  v151 = *v147;
  v20 = *(DerivedStorage + 656);
  v21 = *(DerivedStorage + 716);
  v22 = *(DerivedStorage + 832);
  v23 = *(DerivedStorage + 840);
  valuePtr = *(DerivedStorage + 692);
  v129 = DerivedStorage + 692;
  *v164 = *(DerivedStorage + 708);
  *cf = v152;
  *v147 = v153;
  *time2 = v150;
  *&time2[16] = v151;
  v13 = FigVideoCompositionProcessorCreateWithImageQueueArray(v12, 0, v20, &valuePtr, v21, v22, v23, cf, time2, v162, (DerivedStorage + 824));
  if (v13 || (v13 = FigVideoCompositionProcessorSetCompositionInstructionCallback(*(DerivedStorage + 824), itemfig_copyCompositionInstructionAtTime, a1), v13))
  {
LABEL_208:
    value_low = v13;
    goto LABEL_209;
  }

  v133 = (DerivedStorage + 824);
  v24 = CFNumberCreate(v12, kCFNumberFloatType, (DerivedStorage + 736));
  FigVideoCompositionProcessorSetProperty(*(DerivedStorage + 824), @"VideoCompositionProcessor_RenderScale", v24);
  value_low = v25;
  if (v24)
  {
    CFRelease(v24);
  }

  if (value_low)
  {
    goto LABEL_209;
  }

  v128 = a2;
  v26 = *(v11 + 904);
  if (v26)
  {
    v27 = CFRetain(v26);
    v28 = (DerivedStorage + 824);
  }

  else
  {
    *&valuePtr = VTNextUniquePixelBufferPoolSharingIDFromSource();
    v27 = CFNumberCreate(v12, kCFNumberSInt64Type, &valuePtr);
    v28 = (DerivedStorage + 824);
    if (!v27)
    {
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v120, v121, v122);
LABEL_218:
      value_low = v29;
      goto LABEL_22;
    }
  }

  FigVideoCompositionProcessorSetProperty(*v28, @"VideoCompositionProcessor_PixelBufferPoolSharingID", v27);
  if (v29)
  {
    goto LABEL_218;
  }

  if (*(v11 + 480))
  {
    v30 = CFNumberCreate(v12, kCFNumberSInt32Type, (v11 + 480));
    if (v30)
    {
      v31 = v30;
      FigVideoCompositionProcessorSetProperty(*v28, @"VideoCompositionProcessor_ClientPID", v30);
      value_low = v32;
      CFRelease(v31);
      if (value_low)
      {
        goto LABEL_22;
      }
    }
  }

  FigVideoCompositionProcessorSetProperty(*v28, @"VideoCompositionProcessor_DestinationPixelBufferDesiredAttributes", a3);
  if (v29)
  {
    goto LABEL_218;
  }

  v37 = *(DerivedStorage + 744);
  if (v37)
  {
    FigVideoCompositionProcessorSetProperty(*v28, @"VideoCompositionProcessor_CompositionColorPrimaries", v37);
    if (v29)
    {
      goto LABEL_218;
    }
  }

  v38 = *(DerivedStorage + 752);
  if (v38)
  {
    FigVideoCompositionProcessorSetProperty(*v28, @"VideoCompositionProcessor_CompositionYCbCrMatrix", v38);
    if (v29)
    {
      goto LABEL_218;
    }
  }

  v39 = *(DerivedStorage + 760);
  if (v39)
  {
    FigVideoCompositionProcessorSetProperty(*v28, @"VideoCompositionProcessor_CompositionTransferFunction", v39);
    if (v29)
    {
      goto LABEL_218;
    }
  }

  v40 = *(DerivedStorage + 768);
  if (v40)
  {
    FigVideoCompositionProcessorSetProperty(*v28, @"VideoCompositionProcessor_HDRDisplayMetadataPolicy", v40);
    if (v29)
    {
      goto LABEL_218;
    }
  }

  v29 = FigVideoCompositionProcessorCopyProperty(*v28, @"VideoCompositionProcessor_SourcePixelBufferAttributes", v12, &v161);
  if (v29)
  {
    goto LABEL_218;
  }

  v134 = v27;
  CMNotificationCenterGetDefaultLocalCenter();
  v41 = DerivedStorage;
  value_low = FigNotificationCenterAddWeakListener();
  Count = CFArrayGetCount(*(DerivedStorage + 648));
  if (Count < 1)
  {
LABEL_168:
    v116 = *(v41 + 848);
    v117 = v41;
    v27 = v134;
    if (v116)
    {
      *&valuePtr = 0;
      FigImageQueueTableCopyFigImageQueueArray(v116, &valuePtr);
      v118 = MEMORY[0x1E695E4D0];
      if (!*(v117 + 1176))
      {
        v118 = MEMORY[0x1E695E4C0];
      }

      FigImageQueueArraySetProperty(valuePtr, @"FigImageQueueProperty_BlendsVideoFrames", *v118);
      FigImageQueueArraySetProperty(valuePtr, @"FigImageQueueProperty_ImageQueueInterpolationCurve", *(v117 + 1168));
      if (valuePtr)
      {
        CFRelease(valuePtr);
      }
    }

    if (v128)
    {
      itemfig_setTimebaseOnVideoProcessorImageQueueTables(a1);
    }

    v36 = 0;
    SInt32 = 0;
    v34 = 0;
    v33 = 0;
LABEL_176:
    itemfig_resetRenderTriple(&v155);
    goto LABEL_177;
  }

  v42 = 0;
  v123 = *MEMORY[0x1E695E4D0];
  v132 = a1;
  allocator = v12;
  while (1)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(*(v41 + 648), v42);
    v44 = ValueAtIndex;
    v45 = ValueAtIndex[1];
    if (v45 == 1986618469)
    {
      goto LABEL_38;
    }

    if (v45 == 1835365473)
    {
      break;
    }

    if (v45 != 1635088502)
    {
      goto LABEL_146;
    }

LABEL_38:
    if (!*(ValueAtIndex + 8))
    {
      goto LABEL_146;
    }

    *&valuePtr = 0;
    cf[0] = 0;
    if (v45 != 1986618469)
    {
      v50 = 0;
      goto LABEL_50;
    }

    v46 = *(v41 + 1008);
    v47 = *ValueAtIndex;
    v48 = *(*(CMBaseObjectGetVTable() + 16) + 56);
    if (!v48 || v48(v46, v47, &valuePtr, 0))
    {
      v49 = 0;
LABEL_45:
      v50 = 0;
      goto LABEL_46;
    }

    itemfig_copyFormatDescription(valuePtr, cf);
    v49 = cf[0];
    if (!cf[0])
    {
      goto LABEL_45;
    }

    v50 = FigVideoFormatDescriptionContainsStereoMultiviewVideo();
LABEL_46:
    if (valuePtr)
    {
      CFRelease(valuePtr);
    }

    if (v49)
    {
      CFRelease(v49);
    }

LABEL_50:
    v51 = FigVideoCompositorSupportsSpatialVideoSources(*(v41 + 656));
    valuePtr = v139;
    *v164 = v138;
    *&v164[8] = v139;
    *&v164[24] = v138;
    v165 = v139;
    *v166 = v138;
    *&v166[8] = v139;
    *&v166[24] = v138;
    v52 = *(v41 + 808);
    if (v52)
    {
      FigVideoCompositionWindowGetFromSerializedConfigurationForTrack(v52, *v44, &valuePtr);
      if (Basic)
      {
        goto LABEL_202;
      }
    }

    Basic = FigVisualContextCreateBasic(v12, 0, &value);
    if (Basic)
    {
      goto LABEL_202;
    }

    v54 = (v44 + 4);
    if (*(v44 + 2))
    {
      FigStopForwardingMediaServicesProcessDeathNotification();
      if (*v54)
      {
        CFRelease(*v54);
        *v54 = 0;
      }
    }

    Mutable = CFArrayCreateMutable(v12, 0, MEMORY[0x1E695E9C0]);
    v36 = Mutable;
    if (!Mutable)
    {
      itemfig_createRenderTriplesForVideoComposition_cold_5(cf);
      SInt32 = 0;
      goto LABEL_213;
    }

    CFArrayAppendValue(Mutable, value);
    v56 = !v51 || v50 == 0;
    v57 = !v56;
    v137 = (v44 + 4);
    if (v56)
    {
      SInt32 = 0;
      v34 = 0;
    }

    else
    {
      cf[0] = 0;
      *time2 = 0;
      tagCollectionsOut.value = 0;
      if (v44[1] == 1986618469 && (v58 = *(v41 + 1008), v59 = *v44, (v60 = *(*(CMBaseObjectGetVTable() + 16) + 56)) != 0) && !v60(v58, v59, cf, 0))
      {
        itemfig_copyFormatDescription(cf[0], time2);
        v61 = *time2;
        if (*time2 && FigVideoFormatDescriptionContainsStereoMultiviewVideo())
        {
          CMVideoFormatDescriptionCopyTagCollectionArray(v61, &tagCollectionsOut);
        }
      }

      else
      {
        v61 = 0;
      }

      if (cf[0])
      {
        CFRelease(cf[0]);
      }

      if (v61)
      {
        CFRelease(v61);
      }

      SInt32 = tagCollectionsOut.value;
      if (tagCollectionsOut.value)
      {
        v69 = CFArrayGetCount(tagCollectionsOut.value);
        v70 = v12;
        v71 = v69;
        v72 = CFArrayCreateMutable(v70, 0, MEMORY[0x1E695E9C0]);
        if (!v72)
        {
          goto LABEL_212;
        }

        v34 = v72;
        if (v71 >= 1)
        {
          v135 = v57;
          v73 = 0;
          while (1)
          {
            CFArrayGetValueAtIndex(SInt32, v73);
            *cf = *MEMORY[0x1E6963130];
            *time2 = 0;
            if (v73)
            {
              v74 = CFGetAllocator(v143);
              TagsWithCategory = FigVisualContextCreateBasic(v74, 0, &v154);
              if (TagsWithCategory)
              {
                goto LABEL_198;
              }

              CFArrayAppendValue(v36, v154);
              if (v154)
              {
                CFRelease(v154);
                v154 = 0;
              }
            }

            TagsWithCategory = FigTagCollectionGetTagsWithCategory();
            if (TagsWithCategory)
            {
LABEL_198:
              value_low = TagsWithCategory;
              goto LABEL_205;
            }

            FigTagGetSInt64Value();
            v76 = CFGetAllocator(v143);
            v77 = CFDictionaryCreateMutable(v76, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
            if (!v77)
            {
              break;
            }

            v78 = v77;
            FigCFDictionarySetInt64();
            CFArrayAppendValue(v34, v78);
            CFRelease(v78);
            if (v71 == ++v73)
            {
              a1 = v132;
              v12 = allocator;
              v57 = v135;
              goto LABEL_104;
            }
          }

          itemfig_createRenderTriplesForVideoComposition_cold_1(&tagCollectionsOut);
          value_low = LODWORD(tagCollectionsOut.value);
          goto LABEL_205;
        }
      }

      else
      {
        v79 = CFArrayCreateMutable(v12, 0, MEMORY[0x1E695E9C0]);
        if (!v79)
        {
LABEL_212:
          itemfig_createRenderTriplesForVideoComposition_cold_4(cf);
LABEL_213:
          v34 = 0;
          v33 = 0;
          goto LABEL_200;
        }

        v34 = v79;
        SInt32 = 0;
      }

      v12 = allocator;
    }

LABEL_104:
    if (*(v44 + 6))
    {
      itemfig_clearTrackImageQueueTable(a1, v44);
    }

    else
    {
      FigImageQueueTableCreateWithOptions(v12, a5, v44 + 6);
    }

    v33 = 0;
    if (!fp_createFigImageQueueArrayForVideoRenderPipeline(a1, *v44, 0, v36, 0, 0, 0, 0, 0, *(v44 + 6), 0, 0))
    {
      v33 = CFArrayCreateMutable(allocator, 0, MEMORY[0x1E695E9C0]);
      if (!v33)
      {
        itemfig_createRenderTriplesForVideoComposition_cold_3(cf);
LABEL_200:
        value_low = LODWORD(cf[0]);
        goto LABEL_206;
      }

      v136 = v57;
      v80 = CFArrayGetCount(v36);
      if (v80 >= 1)
      {
        v81 = v80;
        v82 = 0;
        while (1)
        {
          v83 = FigCFArrayGetValueAtIndex();
          v90 = FigImageQueueTableCopyFigImageQueueForVisualContext(*(v44 + 6), v83, v84, v85, v86, v87, v88, v89);
          if (!v90)
          {
            break;
          }

          v91 = v90;
          CFArrayAppendValue(v33, v90);
          CFRelease(v91);
          if (v81 == ++v82)
          {
            goto LABEL_113;
          }
        }

        itemfig_createRenderTriplesForVideoComposition_cold_2(cf);
        goto LABEL_200;
      }

LABEL_113:
      v92 = a4;
      if (a4)
      {
        v92 = v44[1] == 1986618469;
      }

      a1 = v132;
      v41 = v140;
      if (!fp_buildVideoRenderPipelineForTrack(v143, v132, *v44, v161, 0, *(v44 + 3), v134, 0, v33, v34, v92, v137))
      {
        CFRelease(v33);
        if (v34)
        {
          CFRelease(v34);
        }

        FigStartForwardingMediaServicesProcessDeathNotification();
        FigRenderPipelineGetFigBaseObject();
        v94 = v93;
        v95 = *(*(CMBaseObjectGetVTable() + 8) + 56);
        if (v95)
        {
          v95(v94, @"ObeyEmptyMediaMarkers", v123);
        }

        v96 = *(v140 + 2208);
        FigRenderPipelineGetFigBaseObject();
        v98 = v97;
        v99 = *(*(CMBaseObjectGetVTable() + 8) + 56);
        if (v99)
        {
          v99(v98, @"AttachmentCollectorMetadataSourceBuffers", v96);
        }

        *cf = v139;
        *v147 = v138;
        *&v147[8] = v139;
        *&v147[24] = v138;
        v148 = v139;
        *v149 = v138;
        *&v149[8] = v139;
        *&v149[24] = v138;
        FigVideoCompositionWindowGetFromSerializedConfigurationForTrack(*(v140 + 808), *v44, cf);
        if (v100)
        {
LABEL_215:
          value_low = v100;
          goto LABEL_204;
        }

        v101 = *v133;
        v102 = *v44;
        v103 = v44[1];
        if (v136)
        {
          v100 = FigVideoCompositionProcessorSetSourceVisualContextGroup(v101, v102, v103, v36, SInt32);
          if (v100)
          {
            goto LABEL_215;
          }
        }

        else
        {
          v168 = *&v147[16];
          v169 = v148;
          v170 = *v149;
          v171 = *&v149[16];
          *time2 = *cf;
          *&time2[16] = *v147;
          v100 = FigVideoCompositionProcessorSetSourceVisualContext(v101, v102, v103, time2, value);
          if (v100)
          {
            goto LABEL_215;
          }
        }

        CFRelease(v36);
        if (value)
        {
          CFRelease(value);
          value = 0;
        }

        if (SInt32)
        {
          CFRelease(SInt32);
        }

        LODWORD(v155) = *v44;
        *time2 = *v129;
        *&time2[16] = *(v129 + 16);
        Basic = fp_createCommonRenderPipelineOptionsForTrack(v132, 0, time2, v155, 1986618469, 0, &v155 + 1);
        if (Basic)
        {
LABEL_202:
          value_low = Basic;
LABEL_203:
          v36 = 0;
          SInt32 = 0;
LABEL_204:
          v34 = 0;
LABEL_205:
          v33 = 0;
LABEL_206:
          v27 = v134;
          goto LABEL_176;
        }

        v112 = *v44;
        *time2 = *v129;
        *&time2[16] = *(v129 + 16);
        value_low = fp_createCommonRenderPipelineOptionsForTrack(v132, 0, time2, v112, 1986618469, 1, v157);
        if (value_low)
        {
          goto LABEL_203;
        }

        *(&v156 + 1) = CFRetain(*v137);
        CFArrayAppendValue(a6, &v155);
        itemfig_resetRenderTriple(&v155);
LABEL_146:
        v36 = 0;
        SInt32 = 0;
        v34 = 0;
        v33 = 0;
        goto LABEL_147;
      }
    }

    value_low = 0;
LABEL_147:
    if (value)
    {
      CFRelease(value);
      value = 0;
    }

    if (v36)
    {
      CFRelease(v36);
    }

    if (SInt32)
    {
      CFRelease(SInt32);
    }

    if (v34)
    {
      CFRelease(v34);
    }

    if (v154)
    {
      CFRelease(v154);
      v154 = 0;
    }

    if (v33)
    {
      CFRelease(v33);
    }

    ++v42;
    v12 = allocator;
    if (v42 == Count)
    {
      goto LABEL_168;
    }
  }

  SInt32 = FigCFNumberCreateSInt32();
  *cf = v139;
  *v147 = v138;
  *&v147[8] = v139;
  *&v147[24] = v138;
  v148 = v139;
  *v149 = v138;
  *&v149[8] = v139;
  *&v149[24] = v138;
  v62 = *(v41 + 816);
  if (!v62 || (FigVideoCompositionWindowGetFromSerializedConfigurationForTrack(v62, *v44, cf), value_low = v63, !v63))
  {
    v64 = FigCFArrayContainsValue();
    *&v164[16] = *&v147[16];
    v165 = v148;
    *v166 = *v149;
    *&v166[16] = *&v149[16];
    valuePtr = *cf;
    *v164 = *v147;
    IsZero = FigVideoCompositionTimeWindowDurationIsZero(&valuePtr);
    if (SInt32)
    {
      CFRelease(SInt32);
    }

    if (!IsZero || v64)
    {
      v66 = *(v44 + 2);
      if (v66)
      {
        CFRelease(v66);
        *(v44 + 2) = 0;
      }

      CallbacksForUnsortedSampleBuffers = CMBufferQueueGetCallbacksForUnsortedSampleBuffers();
      if (CMBufferQueueCreate(v12, 0, CallbacksForUnsortedSampleBuffers, &queueOut) || (FigRenderPipelineCreateForBufferQueue(v12, queueOut, 0, v44 + 2), v68))
      {
        value_low = 0;
      }

      else
      {
        FigSimpleMutexLock();
        v104 = *(v140 + 680);
        if (v104)
        {
          v105 = CFArrayGetCount(v104);
          if (v105 >= 1)
          {
            v106 = CFArrayGetValueAtIndex(*(v140 + 680), v105 - 1);
            if (v106)
            {
              v107 = CFDictionaryGetValue(v106, @"EndTime");
              if (v107)
              {
                CMTimeMakeFromDictionary(&v158, v107);
              }
            }
          }
        }

        valuePtr = *&v158.value;
        *v164 = v158.epoch;
        *time2 = v126;
        *&time2[16] = v125;
        if (!CMTimeCompare(&valuePtr, time2))
        {
          LODWORD(tagCollectionsOut.value) = 0;
          type = OS_LOG_TYPE_DEFAULT;
          os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          v109 = tagCollectionsOut.value;
          v110 = type;
          if (os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, type))
          {
            v111 = v109;
          }

          else
          {
            v111 = v109 & 0xFFFFFFFE;
          }

          if (v111)
          {
            *time2 = 136315138;
            *&time2[4] = "itemfig_createRenderTriplesForVideoComposition";
            _os_log_send_and_compose_impl(v111, 0, &valuePtr, 128, &dword_1962D5000, os_log_and_send_and_compose_flags_and_os_log_type, v110, "<<<< FigFilePlayer >>>> %s: Invalid video composition instructions", time2);
          }

          fig_log_call_emit_and_clean_up_after_send_and_compose();
        }

        FigSimpleMutexUnlock();
        valuePtr = v139;
        *v164 = v138;
        *&v164[8] = v139;
        *&v164[24] = v138;
        v165 = v139;
        *v166 = v138;
        *&v166[8] = v139;
        *&v166[24] = v138;
        FigVideoCompositionWindowGetFromSerializedConfigurationForTrack(*(v140 + 816), *v44, &valuePtr);
        if (v113)
        {
          value_low = v113;
LABEL_220:
          itemfig_resetRenderTriple(&v155);
LABEL_221:
          v33 = 0;
          v34 = 0;
          SInt32 = 0;
          goto LABEL_222;
        }

        v114 = *v133;
        v115 = *v44;
        v168 = *&v164[16];
        v169 = v165;
        v170 = *v166;
        v171 = *&v166[16];
        *time2 = valuePtr;
        *&time2[16] = *v164;
        tagCollectionsOut = v158;
        value_low = FigVideoCompositionProcessorSetSourceBufferQueue(v114, v115, time2, queueOut, &tagCollectionsOut.value);
        if (queueOut)
        {
          CFRelease(queueOut);
          queueOut = 0;
        }

        if (value_low)
        {
          goto LABEL_220;
        }

        LODWORD(v155) = *v44;
        *time2 = *v129;
        *&time2[16] = *(v129 + 16);
        value_low = fp_createCommonRenderPipelineOptionsForTrack(a1, 0, time2, v155, 1835365473, 0, v157);
        *(&v156 + 1) = CFRetain(*(v44 + 2));
        *(&v155 + 1) = CFRetain(v157[0]);
        CFArrayAppendValue(a7, &v155);
        itemfig_resetRenderTriple(&v155);
      }
    }

    v36 = 0;
    SInt32 = 0;
    v34 = 0;
    v33 = 0;
    v41 = v140;
    goto LABEL_147;
  }

  itemfig_resetRenderTriple(&v155);
  if (SInt32)
  {
    CFRelease(SInt32);
    goto LABEL_221;
  }

  v33 = 0;
  v34 = 0;
LABEL_222:
  v36 = 0;
  v27 = v134;
LABEL_177:
  if (v162)
  {
    CFRelease(v162);
  }

  if (v161)
  {
    CFRelease(v161);
  }

  if (value)
  {
    CFRelease(value);
  }

  if (queueOut)
  {
    CFRelease(queueOut);
  }

  if (v27)
  {
    CFRelease(v27);
  }

  if (v33)
  {
    CFRelease(v33);
  }

  if (v34)
  {
    CFRelease(v34);
  }

  if (SInt32)
  {
    CFRelease(SInt32);
  }

  if (v36)
  {
    CFRelease(v36);
  }

  if (v154)
  {
    CFRelease(v154);
  }

  return value_low;
}

uint64_t fp_createFigImageQueueArrayForVideoRenderPipeline(uint64_t a1, uint64_t a2, int a3, const __CFArray *a4, const __CFArray *a5, CFIndex a6, CFArrayRef *a7, CFArrayRef *a8, const __CFArray *a9, uint64_t a10, char a11, void *a12)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v33 = 0;
  v34 = 0;
  fp_visualContextArrayIfVideoOutputAllowed(a4, *(DerivedStorage + 1200));
  MutableCopy = FigCFArrayCreateMutableCopy();
  if (!MutableCopy)
  {
    fp_createFigImageQueueArrayForVideoRenderPipeline_cold_1(&cf);
    return cf;
  }

  v22 = MutableCopy;
  if (a3 || FigUseVideoReceiverForCALayer())
  {
    goto LABEL_4;
  }

  Dimensions = *MEMORY[0x1E6960CF8];
  v36 = 0;
  cf = 0;
  videoDesc = 0;
  itemfig_CopyFormatReader(a1, &cf);
  if (v29)
  {
LABEL_39:
    v26 = v29;
    goto LABEL_25;
  }

  v30 = cf;
  v31 = *(*(CMBaseObjectGetVTable() + 16) + 56);
  if (v31)
  {
    v29 = v31(v30, a2, &v36, 0);
    if (!v29)
    {
      v26 = itemfig_copyFormatDescription(v36, &videoDesc);
      if (!v26)
      {
        Dimensions = CMVideoFormatDescriptionGetDimensions(videoDesc);
      }

      goto LABEL_25;
    }

    goto LABEL_39;
  }

  v26 = 4294954514;
LABEL_25:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v36)
  {
    CFRelease(v36);
  }

  if (videoDesc)
  {
    CFRelease(videoDesc);
  }

  if (v26)
  {
    goto LABEL_17;
  }

  matched = fp_buildImageQueueArray(Dimensions, HIDWORD(Dimensions), a5, a6, a7, a8);
  if (matched)
  {
    goto LABEL_37;
  }

  if (a7 && *a7 && CFArrayGetCount(*a7) >= 1)
  {
    v32 = *a7;
    v39.length = CFArrayGetCount(v32);
    v39.location = 0;
    CFArrayAppendArray(v22, v32, v39);
  }

LABEL_4:
  if (a9 && CFArrayGetCount(a9) >= 1)
  {
    v38.length = CFArrayGetCount(a9);
    v38.location = 0;
    CFArrayAppendArray(v22, a9, v38);
  }

  if (a11)
  {
    v23 = fp_imageQueueTableWillReleaseImageQueueCallback;
  }

  else
  {
    v23 = 0;
  }

  if (a11)
  {
    v24 = fp_imageQueueTableCreatedImageQueueCallback;
  }

  else
  {
    v24 = 0;
  }

  matched = FigImageQueueTableUpdateToMatchOutputsArray(a10, v22, *(DerivedStorage + 328), v24, v23, a1);
  if (!matched)
  {
    itemfig_getImageQueueFlagsAndMask(a1, &v33 + 1, &v33);
    FigImageQueueTableSetFlagsAndMask(a10, SHIDWORD(v33), v33);
    if (a12)
    {
      FigImageQueueTableCopyFigImageQueueArray(a10, &v34);
      v26 = 0;
      *a12 = v34;
      v34 = 0;
    }

    else
    {
      v26 = 0;
    }

    goto LABEL_17;
  }

LABEL_37:
  v26 = matched;
LABEL_17:
  CFRelease(v22);
  return v26;
}

uint64_t fp_buildVideoRenderPipelineForTrack(uint64_t a1, uint64_t a2, uint64_t a3, const void *a4, uint64_t a5, uint64_t a6, const void *a7, int a8, const __CFArray *a9, const __CFArray *a10, char a11, CFTypeRef *a12)
{
  v14 = a5;
  v86 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v20 = CMBaseObjectGetDerivedStorage();
  v82 = 0;
  cf = 0;
  v81 = 0;
  v21 = *(v20 + 1008);
  v22 = *(*(CMBaseObjectGetVTable() + 16) + 56);
  if (!v22)
  {
    v30 = 0;
    NextRenderPipelineIdentifierString = 0;
    v32 = 0;
    value_low = 4294954514;
    goto LABEL_30;
  }

  v76 = a6;
  v23 = v22(v21, a3, &v82, 0);
  if (v23 || (v23 = itemfig_copyFormatDescription(v82, &v81), v23))
  {
    value_low = v23;
    v30 = 0;
    NextRenderPipelineIdentifierString = 0;
    v32 = 0;
    goto LABEL_30;
  }

  v77 = v20;
  v24 = *MEMORY[0x1E695E480];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (!Mutable)
  {
    fp_buildVideoRenderPipelineForTrack_cold_2(&v85);
    v30 = 0;
    NextRenderPipelineIdentifierString = 0;
    v32 = 0;
    value_low = LODWORD(v85.value);
LABEL_30:
    if (cf)
    {
      CFRelease(cf);
    }

    goto LABEL_71;
  }

  v26 = Mutable;
  v27 = *(DerivedStorage + 824);
  v28 = MEMORY[0x1E695E4D0];
  if (v27 == 1)
  {
    v29 = MEMORY[0x1E695E4D0];
  }

  else
  {
    if (v27 != 2)
    {
      goto LABEL_11;
    }

    v29 = MEMORY[0x1E695E4C0];
  }

  CFDictionarySetValue(Mutable, *MEMORY[0x1E6984200], *v29);
LABEL_11:
  v34 = *(DerivedStorage + 832);
  if (v34)
  {
    CFDictionarySetValue(v26, *MEMORY[0x1E6984208], v34);
  }

  allocator = v24;
  if (*(DerivedStorage + 897))
  {
    CFDictionarySetValue(v26, *MEMORY[0x1E69841E0], *v28);
  }

  v79 = v26;
  v78 = a2;
  v35 = CMBaseObjectGetDerivedStorage();
  v36 = CMBaseObjectGetDerivedStorage();
  ++*(v35 + 2112);
  FigGetAllocatorForMedia();
  Base26LettersFromDecimal = FigCFStringCreateBase26LettersFromDecimal();
  AllocatorForMedia = FigGetAllocatorForMedia();
  if (Base26LettersFromDecimal)
  {
    v39 = Base26LettersFromDecimal;
  }

  else
  {
    v39 = &stru_1F0B1AFB8;
  }

  v30 = CFStringCreateWithFormat(AllocatorForMedia, 0, @"%s:%s.t%d%@", v36 + 972, v35 + 2096, a3, v39);
  if (Base26LettersFromDecimal)
  {
    CFRelease(Base26LettersFromDecimal);
  }

  FigSimpleMutexLock();
  v40 = *(DerivedStorage + 168);
  if (v40)
  {
    v41 = CFRetain(v40);
  }

  else
  {
    v41 = 0;
  }

  FigSimpleMutexUnlock();
  v74 = v14;
  v42 = v81;
  value_low = FPSupport_createVideoRenderPipeline(v26, a4, 1, a9, a10, a8, v81, *(DerivedStorage + 124), v74, v41, a7, *(DerivedStorage + 480), a11, *(DerivedStorage + 488), *(DerivedStorage + 496), v30, &cf);
  if (v41)
  {
    CFRelease(v41);
  }

  if (value_low)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    NextRenderPipelineIdentifierString = 0;
LABEL_29:
    v32 = v79;
    goto LABEL_30;
  }

  if (dword_1EAF16A10)
  {
    v44 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  NextRenderPipelineIdentifierString = fp_createNextRenderPipelineIdentifierString(a1);
  if (!NextRenderPipelineIdentifierString)
  {
    value_low = 4294954510;
    goto LABEL_29;
  }

  if (a11)
  {
    v85.value = 0;
    v45 = FigGetAllocatorForMedia();
    FigSampleAttachmentCollectionRulesCopyForFilePlayback(v45, v42, &v85);
    value = v85.value;
    if (v85.value)
    {
      FigRenderPipelineGetFigBaseObject();
      v48 = v47;
      v49 = *(*(CMBaseObjectGetVTable() + 8) + 56);
      if (v49)
      {
        v49(v48, @"SampleAttachmentCollectionRules", value);
      }

      if (v85.value)
      {
        CFRelease(v85.value);
      }
    }
  }

  if (*(DerivedStorage + 1140))
  {
    v84.value = 0;
    v50 = CFDictionaryCreateMutable(allocator, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    FigCFDictionarySetValue();
    v51 = FigGetAllocatorForMedia();
    v52 = cf;
    FigGetDefaultLowWaterDurationForSpeedRampRenderPipelines(&v85);
    value_low = FigSpeedRampRenderPipelineCreate(v51, v52, &v85, v50, &v84);
    if (v84.value)
    {
      v53 = *(v77 + 2128);
      FigRenderPipelineGetFigBaseObject();
      v55 = v54;
      v56 = *(*(CMBaseObjectGetVTable() + 8) + 56);
      if (v56)
      {
        v56(v55, @"SpeedRampData", v53);
      }

      v57 = cf;
      cf = v84.value;
      if (v84.value)
      {
        CFRetain(v84.value);
      }

      if (v57)
      {
        CFRelease(v57);
      }

      if (v84.value)
      {
        CFRelease(v84.value);
      }
    }

    if (v50)
    {
      CFRelease(v50);
    }

    if (value_low)
    {
      goto LABEL_29;
    }
  }

  if (v76)
  {
    FigRenderPipelineGetFigBaseObject();
    v59 = v58;
    v60 = *(*(CMBaseObjectGetVTable() + 8) + 56);
    if (v60)
    {
      v60(v59, @"FieldMode", v76);
    }
  }

  v61 = *(DerivedStorage + 152);
  FigRenderPipelineGetFigBaseObject();
  v63 = v62;
  v64 = *(*(CMBaseObjectGetVTable() + 8) + 56);
  if (v64)
  {
    v64(v63, @"NeroVideoGravity", v61);
  }

  if (*(v77 + 285))
  {
    memset(&v85, 0, sizeof(v85));
    CMTimeMake(&v85, 1, 2);
    v84 = v85;
    v65 = CMTimeCopyAsDictionary(&v84, allocator);
    FigRenderPipelineGetFigBaseObject();
    v67 = v66;
    v68 = *(*(CMBaseObjectGetVTable() + 8) + 56);
    if (v68)
    {
      v68(v67, @"DurationAllowedForCachedVideoFrames", v65);
    }

    if (v65)
    {
      CFRelease(v65);
    }
  }

  v69 = cf;
  v70 = CMBaseObjectGetDerivedStorage();
  if (v78)
  {
    v71 = (CMBaseObjectGetDerivedStorage() + 2096);
  }

  else
  {
    v71 = "";
  }

  v72 = CFStringCreateWithCString(allocator, v71, 0x8000100u);
  if (v69 && v70)
  {
    fp_buildVideoRenderPipelineForTrack_cold_1(v70, v72);
  }

  if (v72)
  {
    CFRelease(v72);
  }

  value_low = 0;
  *a12 = cf;
  cf = 0;
  v32 = v79;
LABEL_71:
  if (v81)
  {
    CFRelease(v81);
  }

  if (v32)
  {
    CFRelease(v32);
  }

  if (NextRenderPipelineIdentifierString)
  {
    CFRelease(NextRenderPipelineIdentifierString);
  }

  if (v30)
  {
    CFRelease(v30);
  }

  if (v82)
  {
    CFRelease(v82);
  }

  return value_low;
}

BOOL fp_doesCPEProtectorAllowsVideoOutput(uint64_t a1)
{
  if (!a1)
  {
    return 1;
  }

  cf = 0;
  v2 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v2)
  {
    return *MEMORY[0x1E695E4D0] == 0;
  }

  v2(a1, @"AllowsVideoOutput", *MEMORY[0x1E695E480], &cf);
  v3 = *MEMORY[0x1E695E4D0] == cf;
  if (cf)
  {
    CFRelease(cf);
  }

  return v3;
}

uint64_t itemfig_setTimebaseOnVideoProcessorImageQueueTables(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v2 = *(DerivedStorage + 856);
  if (v2)
  {
    Count = CFArrayGetCount(v2);
  }

  else
  {
    Count = 0;
  }

  result = *(DerivedStorage + 848);
  if (result)
  {
    result = FigImageQueueTableSetTimebase(result, *(DerivedStorage + 328));
  }

  if (Count >= 1)
  {
    for (i = 0; i != Count; ++i)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(*(DerivedStorage + 856), i);
      result = FigImageQueueTableSetTimebase(ValueAtIndex, *(DerivedStorage + 328));
    }
  }

  return result;
}

uint64_t itemfig_getImageQueueFlagsAndMask(uint64_t a1, int *a2, int *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  result = CMFormatDescriptionGetMediaSubType(0);
  if (*(DerivedStorage + 1193))
  {
    v8 = (8 * (*(DerivedStorage + 1194) != 0)) | 0x10;
  }

  else
  {
    v8 = 8 * (*(DerivedStorage + 1194) != 0);
  }

  v9 = 88;
  if (result <= 1902207794)
  {
    if (result <= 1685220712)
    {
      if (result <= 1667524656)
      {
        if (result <= 1667326823)
        {
          if (result == 1633771875 || result == 1667312947)
          {
            goto LABEL_85;
          }

          v11 = 24931;
        }

        else if (result > 1667330146)
        {
          if (result == 1667330147)
          {
            goto LABEL_85;
          }

          v11 = 30307;
        }

        else
        {
          if (result == 1667326824)
          {
            goto LABEL_85;
          }

          v11 = 25456;
        }

        v12 = v11 | 0x63610000;
        goto LABEL_84;
      }

      if (result <= 1667656802)
      {
        if (result != 1667524657 && result != 1667574579)
        {
          v12 = 1667575091;
          goto LABEL_84;
        }
      }

      else if (result > 1668047202)
      {
        if (result != 1668047203)
        {
          v12 = 1668641633;
          goto LABEL_84;
        }
      }

      else if (result != 1667656803)
      {
        v12 = 1667790435;
        goto LABEL_84;
      }

      goto LABEL_85;
    }

    if (result <= 1885430578)
    {
      if (result <= 1701733237)
      {
        if (result != 1685220713 && result != 1700886115)
        {
          v12 = 1701733217;
          goto LABEL_84;
        }
      }

      else if (result > 1882599479)
      {
        if (result != 1882599480)
        {
          v12 = 1885430115;
          goto LABEL_84;
        }
      }

      else if (result != 1701733238)
      {
        v12 = 1869117027;
        goto LABEL_84;
      }

      goto LABEL_85;
    }

    if (result <= 1885547314)
    {
      if ((result - 1885430579) > 0x3D || ((1 << (result - 51)) & 0x2020000000000001) == 0)
      {
        goto LABEL_90;
      }

      goto LABEL_85;
    }

    if (result <= 1886745440)
    {
      if (result != 1885547315)
      {
        v12 = 1885692723;
        goto LABEL_84;
      }

      goto LABEL_85;
    }

    if (result == 1886745441)
    {
      goto LABEL_85;
    }

    v13 = 24931;
LABEL_76:
    v12 = v13 | 0x71610000;
    goto LABEL_84;
  }

  if (result <= 1902667125)
  {
    if (result > 1902324530)
    {
      if (result <= 1902405732)
      {
        if (result == 1902324531 || result == 1902403958)
        {
          goto LABEL_85;
        }

        v14 = 26673;
      }

      else
      {
        if (result > 1902469938)
        {
          if (result == 1902469939)
          {
            goto LABEL_85;
          }

          v12 = 1902537827;
          goto LABEL_84;
        }

        if (result == 1902405733)
        {
          goto LABEL_85;
        }

        v14 = 28024;
      }

      v12 = v14 | 0x71640000;
      goto LABEL_84;
    }

    if ((result - 1902207795) <= 0x3D && ((1 << (result - 51)) & 0x2020000000000001) != 0 || (result - 1902212657) <= 0x34 && ((1 << (result - 49)) & 0x14000000000001) != 0)
    {
      goto LABEL_85;
    }

    v13 = 28771;
    goto LABEL_76;
  }

  if (result > 2053202738)
  {
    if (result <= 2053319474)
    {
      if ((result - 2053202739) > 0x3D || ((1 << (result - 51)) & 0x2020000000000001) == 0)
      {
        v10 = 30307;
LABEL_79:
        v12 = v10 | 0x7A610000;
        goto LABEL_84;
      }

      goto LABEL_85;
    }

    if (result <= 2053923170)
    {
      if (result != 2053319475)
      {
        v12 = 2053464883;
        goto LABEL_84;
      }

      goto LABEL_85;
    }

    if (result == 2054517601)
    {
      goto LABEL_85;
    }

    v12 = 2053923171;
LABEL_84:
    if (result != v12)
    {
      goto LABEL_90;
    }

    goto LABEL_85;
  }

  if (result <= 1902998903)
  {
    if (result != 1902667126 && result != 1902671459)
    {
      v12 = 1902928227;
      goto LABEL_84;
    }
  }

  else if (result > 1903587384)
  {
    if (result != 1903587385)
    {
      v10 = 24931;
      goto LABEL_79;
    }
  }

  else if (result != 1902998904)
  {
    v12 = 1903522657;
    goto LABEL_84;
  }

LABEL_85:
  result = FPSupport_IsRunningInAppleVirtualMachine(result, v7);
  if (result)
  {
    v9 = 88;
  }

  else
  {
    v9 = 92;
  }

  if (!result)
  {
    v8 |= 4u;
  }

LABEL_90:
  *a2 = v8 | 0x40;
  *a3 = v9;
  return result;
}