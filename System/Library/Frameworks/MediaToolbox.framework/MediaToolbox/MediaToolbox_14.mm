CFArrayRef fp_visualContextArrayIfVideoOutputAllowed(CFArrayRef theArray, uint64_t a2)
{
  v2 = theArray;
  if (theArray && CFArrayGetCount(theArray) >= 1 && !fp_doesCPEProtectorAllowsVideoOutput(a2))
  {
    return 0;
  }

  return v2;
}

uint64_t fp_buildImageQueueArray(uint64_t a1, uint64_t a2, CFArrayRef theArray, CFIndex a4, CFArrayRef *a5, CFArrayRef *a6)
{
  if (theArray)
  {
    Count = CFArrayGetCount(theArray);
    cf = 0;
    if (Count >= 1)
    {
      Mutable = 0;
      v13 = *MEMORY[0x1E695E480];
      v14 = 1;
      a4 = Count;
      goto LABEL_7;
    }
  }

  else
  {
    cf = 0;
  }

  if (a4 < 1)
  {
    v26 = 0;
    goto LABEL_49;
  }

  v13 = *MEMORY[0x1E695E480];
  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], a4, MEMORY[0x1E695E9C0]);
  v14 = 0;
LABEL_7:
  v31 = CFArrayCreateMutable(v13, a4, MEMORY[0x1E695E9C0]);
  if (v31)
  {
    allocator = v13;
    v15 = 0;
    if (v14)
    {
      p_valuePtr = 0;
    }

    else
    {
      p_valuePtr = &valuePtr;
    }

    do
    {
      valuePtr = 0;
      v17 = *a6;
      if (*a6)
      {
        v17 = CFArrayGetCount(v17);
      }

      if (v15 < v17)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(*a6, v15);
        CFNumberGetValue(ValueAtIndex, kCFNumberSInt32Type, &valuePtr);
      }

      v19 = *a5;
      if (*a5)
      {
        v19 = CFArrayGetCount(v19);
      }

      if (v15 < v19)
      {
        v20 = CFArrayGetValueAtIndex(*a5, v15);
        cf = v20;
        if (v20)
        {
          CFRetain(v20);
        }
      }

      FPSupport_EnsureCAImageQueue(&cf, p_valuePtr, a1, a2, 0);
      CFArrayAppendValue(v31, cf);
      if (cf)
      {
        CFRelease(cf);
        cf = 0;
      }

      if ((v14 & 1) == 0)
      {
        v21 = CFNumberCreate(allocator, kCFNumberSInt32Type, &valuePtr);
        CFArrayAppendValue(Mutable, v21);
        if (v21)
        {
          CFRelease(v21);
        }
      }

      ++v15;
    }

    while (a4 != v15);
    if (*a6)
    {
      if (Mutable)
      {
        v22 = CFArrayCreateMutable(allocator, 0, MEMORY[0x1E695E9C0]);
        for (i = 0; ; ++i)
        {
          v24 = *a6;
          if (*a6)
          {
            v24 = CFArrayGetCount(v24);
          }

          if (i >= v24)
          {
            break;
          }

          v25 = CFArrayGetValueAtIndex(*a6, i);
          v34.length = CFArrayGetCount(Mutable);
          v34.location = 0;
          if (!CFArrayContainsValue(Mutable, v34, v25))
          {
            CFArrayAppendValue(v22, v25);
          }
        }
      }

      else
      {
        v22 = CFRetain(*a6);
      }

      FPSupport_DeleteCASlotsInArray(v22);
    }

    else
    {
      v22 = 0;
    }

    v27 = *a5;
    *a5 = v31;
    CFRetain(v31);
    if (v27)
    {
      CFRelease(v27);
    }

    v28 = *a6;
    *a6 = Mutable;
    if (Mutable)
    {
      CFRetain(Mutable);
    }

    if (v28)
    {
      CFRelease(v28);
    }

    if (v22)
    {
      CFRelease(v22);
    }

    CFRelease(v31);
    v26 = 0;
    if (Mutable)
    {
      goto LABEL_48;
    }
  }

  else
  {
    fp_buildImageQueueArray_cold_1(&valuePtr);
    v26 = valuePtr;
    if (Mutable)
    {
LABEL_48:
      CFRelease(Mutable);
    }
  }

LABEL_49:
  if (cf)
  {
    CFRelease(cf);
  }

  return v26;
}

uint64_t fp_imageQueueTableCreatedImageQueueCallback(uint64_t a1, uint64_t a2)
{
  CMBaseObjectGetDerivedStorage();
  CMNotificationCenterGetDefaultLocalCenter();
  FigNotificationCenterAddWeakListener();
  CMNotificationCenterGetDefaultLocalCenter();

  return FigNotificationCenterAddWeakListener();
}

uint64_t fp_imageQueueTableWillReleaseImageQueueCallback(uint64_t a1, uint64_t a2)
{
  CMBaseObjectGetDerivedStorage();
  CMNotificationCenterGetDefaultLocalCenter();
  FigNotificationCenterRemoveWeakListener();
  CMNotificationCenterGetDefaultLocalCenter();

  return FigNotificationCenterRemoveWeakListener();
}

__n128 itemfig_getHighAndLowWaterLevelDurationsForVideoCompositionProcessing(uint64_t a1, uint64_t a2, uint64_t a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v8 = xmmword_196E72760;
  result.n128_u64[0] = 3;
  v7 = xmmword_196E72778;
  if (*(DerivedStorage + 688))
  {
    result.n128_u64[0] = kFigPlayerFileLowWaterLevelDuration_Minimum;
    v8 = kFigPlayerFileLowWaterLevelDuration_Minimum;
    v7 = kFigPlayerFileLowWaterLevelDuration_Minimum;
  }

  if (a2)
  {
    result = v8;
    *a2 = v8;
    *(a2 + 16) = 0;
  }

  if (a3)
  {
    result = v7;
    *a3 = v7;
    *(a3 + 16) = 0;
  }

  return result;
}

uint64_t itemfig_copyCompositionInstructionAtTime(uint64_t a1, uint64_t a2, void *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  v6 = *(DerivedStorage + 680);
  if (!v6)
  {
    FigSimpleMutexUnlock();
    goto LABEL_12;
  }

  v7 = CFRetain(v6);
  FigSimpleMutexUnlock();
  if (!v7)
  {
LABEL_12:
    *a3 = 0;
    return 0;
  }

  Count = CFArrayGetCount(v7);
  if (Count < 1)
  {
    goto LABEL_15;
  }

  v9 = Count;
  v10 = 0;
  while (1)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(v7, v10);
    *&v16.value = *a2;
    v16.epoch = *(a2 + 16);
    Value = CFDictionaryGetValue(ValueAtIndex, @"StartTime");
    memset(&v20, 0, sizeof(v20));
    CMTimeMakeFromDictionary(&v20, Value);
    v13 = CFDictionaryGetValue(ValueAtIndex, @"EndTime");
    memset(&v19, 0, sizeof(v19));
    CMTimeMakeFromDictionary(&v19, v13);
    if (v9 == 1)
    {
      time1 = v19;
      time2 = v16;
      if (!CMTimeCompare(&time1, &time2))
      {
        break;
      }
    }

    time1 = v16;
    time2 = v20;
    if ((CMTimeCompare(&time1, &time2) & 0x80000000) == 0)
    {
      time1 = v19;
      time2 = v16;
      if (CMTimeCompare(&time1, &time2) >= 1)
      {
        break;
      }
    }

    ++v10;
    if (!--v9)
    {
      goto LABEL_15;
    }
  }

  if (ValueAtIndex)
  {
    v14 = CFRetain(ValueAtIndex);
  }

  else
  {
LABEL_15:
    v14 = 0;
  }

  *a3 = v14;
  CFRelease(v7);
  return 0;
}

uint64_t fp_setDisplaySizeAndItemVideoSizeOnTextRenderPipeline(double a1, double a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a1 < 1.0 || a2 < 1.0)
  {
    fp_setDisplaySizeAndItemVideoSizeOnTextRenderPipeline_cold_4(&v33);
    return v33;
  }

  DictionaryRepresentation = CGSizeCreateDictionaryRepresentation(*&a1);
  if (!DictionaryRepresentation)
  {
    fp_setDisplaySizeAndItemVideoSizeOnTextRenderPipeline_cold_3(&v33);
    return v33;
  }

  v10 = DictionaryRepresentation;
  FigRenderPipelineGetFigBaseObject();
  v12 = v11;
  v13 = *(*(CMBaseObjectGetVTable() + 8) + 56);
  if (v13)
  {
    v13(v12, @"ScreenSize", v10);
  }

  if (!a5)
  {
    CFRelease(v10);
    return 0;
  }

  Dimensions = itemfig_GetDimensions();
  if (Dimensions)
  {
    v14 = Dimensions;
LABEL_34:
    v32 = v10;
    goto LABEL_28;
  }

  v17 = FigCFEqual();
  v34.width = 1.0;
  v34.height = 1.0;
  v18 = CGSizeCreateDictionaryRepresentation(v34);
  if (!v18)
  {
    fp_setDisplaySizeAndItemVideoSizeOnTextRenderPipeline_cold_2(&v33);
    v14 = v33;
    goto LABEL_34;
  }

  v19 = v18;
  v20 = a1 / 1.0;
  v21 = a2 / 1.0;
  if (v20 >= v21)
  {
    v22 = a2 / 1.0;
  }

  else
  {
    v22 = a1 / 1.0;
  }

  if (v20 <= v21)
  {
    v20 = a2 / 1.0;
  }

  if (!v17)
  {
    v20 = v22;
  }

  v23 = (1.0 * v20);
  v24 = (a2 - v23) * 0.5;
  FigRenderPipelineGetFigBaseObject();
  v26 = v25;
  v27 = *(*(CMBaseObjectGetVTable() + 8) + 56);
  if (v27)
  {
    v27(v26, @"OriginalVideoSize", v19);
  }

  v35.origin.x = (a1 - v23) * 0.5;
  v35.origin.y = v24;
  v35.size.width = v23;
  v35.size.height = v23;
  v28 = CGRectCreateDictionaryRepresentation(v35);
  if (v28)
  {
    FigRenderPipelineGetFigBaseObject();
    v30 = v29;
    v31 = *(*(CMBaseObjectGetVTable() + 8) + 56);
    if (v31)
    {
      v31(v30, @"VideoDisplayRect", v28);
    }

    v14 = 0;
  }

  else
  {
    fp_setDisplaySizeAndItemVideoSizeOnTextRenderPipeline_cold_1(&v33);
    v14 = v33;
  }

  CFRelease(v10);
  CFRelease(v19);
  if (v28)
  {
    v32 = v28;
LABEL_28:
    CFRelease(v32);
  }

  return v14;
}

uint64_t itemfig_prepareClosedCaptionRenderPipeline(uint64_t a1, const opaqueCMFormatDescription *a2)
{
  cf = 0;
  FigClosedCaptionCreateClosedCaptionChannelStringFromFormatDescription(*MEMORY[0x1E695E480], a2, &cf);
  v3 = v2;
  v4 = cf;
  if (v2)
  {
    v5 = 1;
  }

  else
  {
    v5 = cf == 0;
  }

  if (!v5)
  {
    FigRenderPipelineGetFigBaseObject();
    v7 = v6;
    v8 = *(*(CMBaseObjectGetVTable() + 8) + 56);
    if (v8)
    {
      v8(v7, @"CCRPP_ClosedCaptionType", v4);
    }

    v4 = cf;
  }

  if (v4)
  {
    CFRelease(v4);
  }

  return v3;
}

void playerfig_postSubtitleNotificationIfEnabled(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4, uint64_t a5, const __CFDictionary *a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v15 = a9;
  v16 = a8;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (v16)
  {
    cf = 0;
    v19 = *(*(CMBaseObjectGetVTable() + 16) + 32);
    if (v19)
    {
      v19(a10, 0, &cf);
      if (cf)
      {
        v20 = CMBaseObjectGetDerivedStorage();
        if (!*(v20 + 1061))
        {
          *(v20 + 1061) = 1;
          playerfig_updateCaptionOrSubtitleHintOnVideoPipeline(a10, cf);
        }

        if (cf)
        {
          CFRelease(cf);
        }
      }
    }
  }

  if (!a6 || *(DerivedStorage + 720) | v16)
  {
    cf = 0;
    FigSubtitleSampleCreatePropertyList(a6, v16, v15, &cf, a1, a2, a3, a4);
    if (cf)
    {
      FigSimpleMutexLock();
      v21 = *(DerivedStorage + 728);
      v22 = cf;
      *(DerivedStorage + 728) = cf;
      if (v22)
      {
        CFRetain(v22);
      }

      if (v21)
      {
        CFRelease(v21);
      }

      FigSimpleMutexUnlock();
      CMNotificationCenterGetDefaultLocalCenter();
      CMNotificationCenterPostNotification();
      CFRelease(cf);
    }
  }
}

void playerfig_postCaptionNotificationIfEnabled(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4, uint64_t a5, const __CFDictionary *a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v15 = a9;
  v16 = a8;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (v16)
  {
    cf = 0;
    v19 = *(*(CMBaseObjectGetVTable() + 16) + 32);
    if (v19)
    {
      v19(a10, 0, &cf);
      if (cf)
      {
        v20 = CMBaseObjectGetDerivedStorage();
        if (!*(v20 + 1061))
        {
          *(v20 + 1061) = 1;
          playerfig_updateCaptionOrSubtitleHintOnVideoPipeline(a10, cf);
        }

        if (cf)
        {
          CFRelease(cf);
        }
      }
    }
  }

  if (!a6 || *(DerivedStorage + 720) | v16)
  {
    cf = 0;
    FigSubtitleSampleCreatePropertyList(a6, v16, v15, &cf, a1, a2, a3, a4);
    if (cf)
    {
      FigSimpleMutexLock();
      v21 = *(DerivedStorage + 728);
      v22 = cf;
      *(DerivedStorage + 728) = cf;
      if (v22)
      {
        CFRetain(v22);
      }

      if (v21)
      {
        CFRelease(v21);
      }

      FigSimpleMutexUnlock();
      CMNotificationCenterGetDefaultLocalCenter();
      CMNotificationCenterPostNotification();
      CFRelease(cf);
    }
  }
}

void fp_interrogateRenderPipeline(uint64_t a1, _DWORD *a2)
{
  v13 = 0;
  v14 = 0;
  v3 = *MEMORY[0x1E695E480];
  FigRenderPipelineGetFigBaseObject();
  v5 = v4;
  v6 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v6)
  {
    v6(v5, @"PrefersConsumptionDrivenReads", v3, &v14);
    v7 = v14;
  }

  else
  {
    v7 = 0;
  }

  v8 = *MEMORY[0x1E695E4D0];
  if (v7 == *MEMORY[0x1E695E4D0])
  {
    *a2 |= 1u;
  }

  if (v7)
  {
    CFRelease(v7);
  }

  FigRenderPipelineGetFigBaseObject();
  v10 = v9;
  v11 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v11)
  {
    v11(v10, @"VetoFigReadCacheUsage", v3, &v13);
    v12 = v13;
  }

  else
  {
    v12 = 0;
  }

  if (v12 == v8)
  {
    *a2 |= 2u;
  }

  if (v12)
  {
    CFRelease(v12);
  }
}

void playerfig_setReadCacheEnabled(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!*(DerivedStorage + 128))
  {
    if (dword_1EAF16A10 < 3)
    {
      return;
    }

    goto LABEL_4;
  }

  CMByteStreamGetCMBaseObject();
  FigCRABSGetClassID();
  if (CMBaseObjectIsMemberOfClass())
  {
    if (dword_1EAF16A10 < 3)
    {
      return;
    }

LABEL_4:
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
LABEL_12:
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    return;
  }

  if (*(DerivedStorage + 136) == 1)
  {
    if (dword_1EAF16A10 < 3)
    {
      return;
    }

    v3 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);
    goto LABEL_12;
  }

  if (dword_1EAF16A10 >= 3)
  {
    v4 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  CMBaseObject = CMByteStreamGetCMBaseObject();
  v6 = *(*(CMBaseObjectGetVTable() + 8) + 56);
  if (v6)
  {
    v6(CMBaseObject, 0x1F0B330B8, *MEMORY[0x1E695E4D0]);
  }

  *(DerivedStorage + 136) = 1;
}

void itemfig_deferredTimeJumped_f(const void *a1)
{
  v2 = *(CMBaseObjectGetDerivedStorage() + 8);
  if (*CMBaseObjectGetDerivedStorage())
  {
    if (!a1)
    {
      return;
    }
  }

  else
  {
    playerfig_updateStartHostTimeEstimatesOfItemAndFollowingItems(v2, a1);
    CMNotificationCenterGetDefaultLocalCenter();
    CMNotificationCenterPostNotification();
    if (!a1)
    {
      return;
    }
  }

  CFRelease(a1);
}

CFDictionaryRef itemfig_createDurationDictionary(double a1)
{
  valuePtr = a1;
  v1 = *MEMORY[0x1E695E480];
  cf = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberDoubleType, &valuePtr);
  if (!cf)
  {
    return 0;
  }

  v2 = CFDictionaryCreate(v1, &kFigPlayabilityMonitorPayload_Duration, &cf, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  CFRelease(cf);
  return v2;
}

void itemfig_DeferredLikelyToKeepUp(uint64_t a1, const void *a2, uint64_t a3, uint64_t a4, const __CFDictionary *a5)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v8 = *(DerivedStorage + 8);
  v9 = CMBaseObjectGetDerivedStorage();
  valuePtr = 0.0;
  if (!*DerivedStorage)
  {
    if (*(DerivedStorage + 1738) && *(v9 + 48) != 0.0)
    {
      LOBYTE(a5) = 1;
    }

    else if (a5)
    {
      Value = CFDictionaryGetValue(a5, @"FPM_Duration");
      if (Value)
      {
        CFNumberGetValue(Value, kCFNumberDoubleType, &valuePtr);
      }

      LOBYTE(a5) = 0;
    }

    if (*(DerivedStorage + 1738))
    {
      if (a5)
      {
LABEL_26:
        playerfig_updatePlaybackStateAndBossRate(v8, 6, 0);
        CMNotificationCenterGetDefaultLocalCenter();
        CMNotificationCenterPostNotification();
        CFRelease(a2);
        return;
      }
    }

    else
    {
      *(DerivedStorage + 1738) = 1;
      if (*(DerivedStorage + 1600) > 0.0)
      {
        *(DerivedStorage + 1608) = CFAbsoluteTimeGetCurrent() - *(DerivedStorage + 1600);
      }

      *(DerivedStorage + 1704) = valuePtr;
      if (a5)
      {
        goto LABEL_26;
      }
    }

    if (*(DerivedStorage + 128))
    {
      v11 = valuePtr;
      v30 = 0;
      v31 = 0;
      if (a2)
      {
        itemfig_DeferredLikelyToKeepUp_cold_1(a2, &v30, &v31);
      }

      v12 = CMBaseObjectGetDerivedStorage();
      FigSimpleMutexLock();
      if (!*(v12 + 2041))
      {
        *(v12 + 2041) = 1;
        Current = CFAbsoluteTimeGetCurrent();
        *(v12 + 1992) = Current;
        v16 = *(v12 + 1984);
        if (v16 == 0.0)
        {
          v17 = 0;
        }

        else
        {
          v17 = ((Current - v16) * 1000.0);
        }

        v18 = *(v12 + 1976);
        v19 = *(v12 + 1968);
        if (v18 == 0.0)
        {
          v20 = 0;
        }

        else
        {
          v20 = ((Current - v18) * 1000.0);
        }

        v21 = *(v12 + 1952);
        if (v21)
        {
          v22 = *(*(CMBaseObjectGetVTable() + 16) + 56);
          if (v22)
          {
            v22(v21, @"playerStats", 0x1F0B3F4B8, (v11 * 1000.0), 0);
          }
        }

        v23 = *(v12 + 1952);
        if (v23)
        {
          v24 = *(*(CMBaseObjectGetVTable() + 16) + 56);
          if (v24)
          {
            v24(v23, @"playerStats", 0x1F0B3F8F8, v17, 0);
          }

          v25 = *(v12 + 1952);
          if (v25)
          {
            v26 = *(*(CMBaseObjectGetVTable() + 16) + 56);
            if (v26)
            {
              v26(v25, @"playerStats", 0x1F0B66518, ((Current - v19) * 1000.0), 0);
            }

            v27 = *(v12 + 1952);
            if (v27)
            {
              v28 = *(*(CMBaseObjectGetVTable() + 16) + 56);
              if (v28)
              {
                v28(v27, @"playerStats", 0x1F0B3F918, v20, 0);
              }
            }
          }
        }

        itemfig_networkActivitySubmitMetricsForInitialStartupIfAvailable(a2);
      }

      v13 = *(v12 + 1952);
      if (v13)
      {
        v14 = *(*(CMBaseObjectGetVTable() + 16) + 8);
        if (v14)
        {
          v14(v13, @"playerStats", 305, 0, 0);
        }
      }

      FigSimpleMutexUnlock();
    }

    goto LABEL_26;
  }

  CFRelease(a2);
}

uint64_t FigTrackReaderGetTrackEditCount(uint64_t a1)
{
  v2 = *(*(CMBaseObjectGetVTable() + 16) + 16);
  if (!v2)
  {
    return 0;
  }

  return v2(a1);
}

CFDictionaryRef playerfig_preWirePixelBuffersIfNeeded(uint64_t a1, int a2)
{
  v16 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  v4 = *(DerivedStorage + 928);
  if (v4)
  {
    CFRelease(v4);
    *(DerivedStorage + 928) = 0;
  }

  if (a2)
  {
    *(DerivedStorage + 936) = 0;
  }

  else if (*(DerivedStorage + 936))
  {
    goto LABEL_14;
  }

  if (!FigCFDictionaryGetCGSizeIfPresent())
  {
LABEL_14:
    FigSimpleMutexUnlock();
    return 0;
  }

  v5 = *MEMORY[0x1E695E480];
  v6 = MEMORY[0x1E695E9D8];
  v7 = MEMORY[0x1E695E9E8];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v9 = CFDictionaryCreateMutable(v5, 0, v6, v7);
  FigCFDictionarySetInt32();
  v10 = CFDictionaryCreate(v5, 0, 0, 0, v6, v7);
  if (!v10)
  {
    playerfig_preWirePixelBuffersIfNeeded_cold_1();
    goto LABEL_24;
  }

  CFDictionarySetValue(v9, *MEMORY[0x1E69660D8], v10);
  CFRelease(v10);
  FigCFDictionarySetInt32();
  FigCFDictionarySetInt32();
  FigCFDictionarySetInt32();
  v11 = CVPixelBufferPoolCreate(v5, Mutable, v9, (DerivedStorage + 928));
  if (v11)
  {
    v10 = v11;
LABEL_24:
    FigSimpleMutexUnlock();
    if (!v9)
    {
      goto LABEL_19;
    }

LABEL_18:
    CFRelease(v9);
    goto LABEL_19;
  }

  v12 = CFRetain(*(DerivedStorage + 928));
  FigSimpleMutexUnlock();
  if (v12)
  {
    v13 = CVPixelBufferPoolPreAllocate();
    if (v13)
    {
      v10 = v13;
    }

    else
    {
      v10 = CVPixelBufferPoolPrefetchPages();
      if (!v10 && dword_1EAF16A10)
      {
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
        v10 = 0;
      }
    }

    CFRelease(v12);
    if (!v9)
    {
      goto LABEL_19;
    }

    goto LABEL_18;
  }

  v10 = 0;
  if (v9)
  {
    goto LABEL_18;
  }

LABEL_19:
  if (Mutable)
  {
    CFRelease(Mutable);
  }

  return v10;
}

void playerfig_deferredValeriaEnabled(uint64_t a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (RaEiDSv6c())
  {
    *(DerivedStorage + 898) = 1;
    if (CFArrayGetCount(*(DerivedStorage + 528)) >= 1)
    {
      CFArrayGetValueAtIndex(*(DerivedStorage + 528), 0);
      v3 = CMBaseObjectGetDerivedStorage();
      if (!*v3)
      {
        if (v3[2064])
        {
          playerfig_deferredValeriaEnabled_cold_1();
        }
      }
    }
  }
}

void playerfig_CopyProperty(uint64_t a1, const void *a2, const __CFAllocator *a3, __CFDictionary **a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*DerivedStorage)
  {
    v9 = qword_1EAF16A08;
    v10 = v4;
    v11 = 4294954511;
    v12 = 28211;
LABEL_3:

    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v9, v11, "<<<< FigFilePlayer >>>>", v12, v10);
    return;
  }

  if (!a4)
  {
    v9 = qword_1EAF16A08;
    v10 = v4;
    v11 = 4294954516;
    v12 = 28214;
    goto LABEL_3;
  }

  v13 = DerivedStorage;
  if (CFEqual(a2, @"PerformanceDictionary"))
  {
    v49 = 0;
    FigSimpleMutexLock();
    v14 = *(v13 + 67);
    if (v14)
    {
      itemfig_gatherItemPerformanceData(v14, 0, &v49);
    }

    FigSimpleMutexUnlock();
    *a4 = v49;
    return;
  }

  if (CFEqual(a2, @"GatherPerformanceHistoryArray"))
  {
    v15 = MEMORY[0x1E695E4D0];
    v16 = v13[852];
LABEL_13:
    v17 = MEMORY[0x1E695E4C0];
    goto LABEL_14;
  }

  if (CFEqual(a2, @"PerformanceHistoryArray"))
  {
    if (!v13[852])
    {
      v9 = qword_1EAF16A08;
      v10 = v4;
      v11 = 4294954513;
      v12 = 28242;
      goto LABEL_3;
    }

    v19 = *(v13 + 107);
    if (v19)
    {
      Copy = CFArrayCreateCopy(a3, v19);
      goto LABEL_18;
    }

LABEL_118:
    *a4 = 0;
    return;
  }

  if (CFEqual(a2, @"FigAudioSession"))
  {
    FigSimpleMutexLock();
    v20 = *(v13 + 59);
    if (v20)
    {
      v20 = CFRetain(v20);
    }

    *a4 = v20;
    goto LABEL_29;
  }

  if (CFEqual(a2, @"IsValid"))
  {
    goto LABEL_33;
  }

  if (CFEqual(a2, @"LastSentSubtitleSample"))
  {
    FigSimpleMutexLock();
    v21 = *(v13 + 91);
    if (v21)
    {
      v21 = CFRetain(v21);
    }

    *a4 = v21;
    goto LABEL_29;
  }

  if (CFEqual(a2, @"PlayerVolume"))
  {
    v22 = *MEMORY[0x1E695E480];
    v23 = (v13 + 804);
    v24 = kCFNumberFloatType;
LABEL_40:
    Copy = CFNumberCreate(v22, v24, v23);
    goto LABEL_18;
  }

  if (CFEqual(a2, @"PlayerMuted"))
  {
    v15 = MEMORY[0x1E695E4D0];
    v16 = v13[814];
    goto LABEL_13;
  }

  if (CFEqual(a2, @"EQPreset"))
  {
    v48 = *(CMBaseObjectGetDerivedStorage() + 80);
    v22 = *MEMORY[0x1E695E480];
    v23 = &v48;
    v24 = kCFNumberIntType;
    goto LABEL_40;
  }

  if (CFEqual(a2, @"NetworkCacheURL"))
  {
    Copy = *(v13 + 25);
    if (!Copy)
    {
      return;
    }

    goto LABEL_17;
  }

  if (CFEqual(a2, @"DisplayingClosedCaptions"))
  {
    v25 = MEMORY[0x1E695E4D0];
    v26 = v13[306];
    goto LABEL_50;
  }

  if (CFEqual(a2, @"DisplayClosedCaptions"))
  {
    v15 = MEMORY[0x1E695E4D0];
    v16 = v13[305];
    goto LABEL_13;
  }

  if (CFEqual(a2, @"RequiredNumberOfCAContextsForClosedCaptionLayers"))
  {
    v22 = *MEMORY[0x1E695E480];
    v23 = (v13 + 328);
    v24 = kCFNumberSInt32Type;
    goto LABEL_40;
  }

  if (CFEqual(a2, @"ClosedCaptionCAContextIDArray"))
  {
    v27 = *(v13 + 42);
    if (!v27 || (Count = CFArrayGetCount(v27), Count < 1))
    {
      v9 = qword_1EAF16A08;
      v10 = v4;
      v11 = 4294954513;
      v12 = 28319;
      goto LABEL_3;
    }

    v29 = Count;
    Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
    v31 = objc_autoreleasePoolPush();
    for (i = 0; i != v29; ++i)
    {
      [CFArrayGetValueAtIndex(*(v13 + 42) i)];
      FigCFArrayAppendInt32();
    }

    objc_autoreleasePoolPop(v31);
LABEL_64:
    *a4 = Mutable;
    return;
  }

  if (CFEqual(a2, @"ActionAtEnd"))
  {
    v33 = *(v13 + 204);
    if (v33 > 1)
    {
      if (v33 == 2)
      {
        v15 = &kFigPlayerAction_None;
      }

      else
      {
        if (v33 != 3)
        {
          return;
        }

        v15 = &kFigPlayerAction_StopAtEndOfQueue;
      }
    }

    else if (v33)
    {
      if (v33 != 1)
      {
        return;
      }

      v15 = &kFigPlayerAction_Stop;
    }

    else
    {
      v15 = &kFigPlayerAction_Advance;
    }

    goto LABEL_16;
  }

  if (CFEqual(a2, @"ApplyVideoTrackMatrix"))
  {
    v15 = MEMORY[0x1E695E4D0];
    v16 = v13[823];
    goto LABEL_13;
  }

  if (CFEqual(a2, @"VideoLayerDestinationIsTVOut"))
  {
    v15 = MEMORY[0x1E695E4C0];
    v16 = v13[240];
    v17 = MEMORY[0x1E695E4D0];
LABEL_14:
    if (!v16)
    {
      v15 = v17;
    }

    goto LABEL_16;
  }

  if (CFEqual(a2, @"PreventDisplaySleepDuringVideoPlayback"))
  {
    v15 = MEMORY[0x1E695E4D0];
    v16 = v13[240];
    goto LABEL_13;
  }

  if (CFEqual(a2, @"CurrentVideoFrameRate"))
  {
    if (*(v13 + 74))
    {
      v34 = *MEMORY[0x1E695E480];
      FigRenderPipelineGetFigBaseObject();

      CMBaseObjectCopyProperty(v35, @"CurrentVideoFrameRate", v34, a4);
    }

    return;
  }

  if (CFEqual(a2, @"AudioDeviceUID"))
  {
    v36 = *(v13 + 89);
    *a4 = v36;
    if (v36)
    {
      CFRetain(v36);
    }

    return;
  }

  if (CFEqual(a2, @"EnableHardwareAcceleratedVideoDecoder"))
  {
    v15 = MEMORY[0x1E695E4D0];
    v37 = MEMORY[0x1E695E4C0];
    v38 = *(v13 + 206) == 1;
    goto LABEL_92;
  }

  if (CFEqual(a2, @"PreferredVideoDecoderGPURegistryID"))
  {
    Copy = *(v13 + 104);
    if (!Copy)
    {
      goto LABEL_18;
    }

    goto LABEL_17;
  }

  if (CFEqual(a2, @"DisplayList"))
  {
    Copy = *(v13 + 111);
    if (!Copy)
    {
      goto LABEL_18;
    }

    goto LABEL_17;
  }

  if (CFEqual(a2, @"ExternalProtectionStatus"))
  {
    FigSimpleMutexLock();
    itemfig_copyExternalProtectionStatus(*(v13 + 67), a3, a4);
    FigSimpleMutexUnlock();
    return;
  }

  if (CFEqual(a2, @"DecodeMultipleAudioTracks"))
  {
    v15 = MEMORY[0x1E695E4D0];
    v16 = v13[128];
    goto LABEL_13;
  }

  if (CFEqual(a2, @"DecodeMultipleVideoTracks"))
  {
    v15 = MEMORY[0x1E695E4D0];
    v16 = v13[129];
    goto LABEL_13;
  }

  if (CFEqual(a2, @"STSLabel"))
  {
    FigSimpleMutexLock();
    v39 = *(v13 + 2);
    if (v39)
    {
      v39 = CFRetain(v39);
    }

    *a4 = v39;
    goto LABEL_29;
  }

  if (CFEqual(a2, @"MinRateForAudioPlayback"))
  {
    if (!v13[841])
    {
      goto LABEL_118;
    }

    v22 = *MEMORY[0x1E695E480];
    v23 = (v13 + 844);
    goto LABEL_117;
  }

  if (CFEqual(a2, @"MaxRateForAudioPlayback"))
  {
    if (!v13[842])
    {
      goto LABEL_118;
    }

    v22 = *MEMORY[0x1E695E480];
    v23 = (v13 + 848);
LABEL_117:
    v24 = kCFNumberFloat32Type;
    goto LABEL_40;
  }

  if (CFEqual(a2, @"MasterClock"))
  {
    Copy = *(v13 + 11);
    if (!Copy)
    {
      goto LABEL_18;
    }

    goto LABEL_17;
  }

  if (CFEqual(a2, @"SendToNero"))
  {
    v40 = CFDictionaryCreateMutable(a3, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    if (!v40)
    {
      v9 = qword_1EAF16A08;
      v10 = v4;
      v11 = 4294954434;
      v12 = 28446;
      goto LABEL_3;
    }

    Mutable = v40;
    if (v13[130])
    {
      v41 = MEMORY[0x1E695E4D0];
    }

    else
    {
      v41 = MEMORY[0x1E695E4C0];
    }

    CFDictionarySetValue(v40, @"Visuals", *v41);
    FigSimpleMutexLock();
    v42 = *(v13 + 21);
    if (v42)
    {
      v43 = CFRetain(v42);
      FigSimpleMutexUnlock();
      if (v43)
      {
        CFDictionarySetValue(Mutable, @"NeroTransport", v43);
        CFRelease(v43);
      }
    }

    else
    {
      FigSimpleMutexUnlock();
    }

    goto LABEL_64;
  }

  if (CFEqual(a2, @"IsNeroPlaybackActive"))
  {
    v15 = MEMORY[0x1E695E4D0];
    v16 = v13[131];
    goto LABEL_13;
  }

  if (CFEqual(a2, @"ProhibitAMR"))
  {
    v15 = MEMORY[0x1E695E4D0];
    v16 = v13[896];
    goto LABEL_13;
  }

  if (CFEqual(a2, @"PlayQueueIsHungry"))
  {
    v15 = MEMORY[0x1E695E4D0];
    v16 = v13[853];
    goto LABEL_13;
  }

  if (CFEqual(a2, @"MediaSelectionCriteria"))
  {
    FigSimpleMutexLock();
    v44 = *(v13 + 96);
    if (!v44)
    {
LABEL_141:
      *a4 = v44;
LABEL_29:
      FigSimpleMutexUnlock();
      return;
    }

LABEL_140:
    v44 = CFRetain(v44);
    goto LABEL_141;
  }

  if (CFEqual(a2, @"AppliesMediaSelectionCriteriaAutomatically"))
  {
    v25 = MEMORY[0x1E695E4D0];
    v26 = v13[800];
LABEL_50:
    if (!v26)
    {
      v25 = MEMORY[0x1E695E4C0];
    }

    Copy = *v25;
    if (!*v25)
    {
      goto LABEL_18;
    }

    goto LABEL_17;
  }

  if (CFEqual(a2, @"DefaultMediaSelectionCriteria"))
  {
    Copy = FigAutomaticMediaSelectionCopyDefaultCriteria(*MEMORY[0x1E695E480], v45);
    goto LABEL_18;
  }

  if (CFEqual(a2, @"LegibleFallbackMediaSelectionCriteria"))
  {
    FigSimpleMutexLock();
    v44 = *(v13 + 97);
    if (!v44)
    {
      goto LABEL_141;
    }

    goto LABEL_140;
  }

  if (CFEqual(a2, @"AllowsLegibleFallbackMediaSelectionCriteriaForAllAudibleMediaSelections"))
  {
    v15 = MEMORY[0x1E695E4D0];
    v16 = v13[784];
    goto LABEL_13;
  }

  if (CFEqual(a2, @"DestinationPixelBufferAttributes"))
  {
    FigSimpleMutexLock();
    v46 = *(v13 + 63);
    if (v46)
    {
      v46 = CFRetain(v46);
    }

    *a4 = v46;
    goto LABEL_29;
  }

  if (CFEqual(a2, @"AllowPixelBufferPoolSharing"))
  {
    Copy = *(v13 + 113);
    if (Copy)
    {
      goto LABEL_17;
    }

    v15 = MEMORY[0x1E695E4C0];
LABEL_16:
    Copy = *v15;
LABEL_17:
    Copy = CFRetain(Copy);
LABEL_18:
    *a4 = Copy;
    return;
  }

  if (CFEqual(a2, @"OptionsForPreWiringPixelBuffers"))
  {
    FigSimpleMutexLock();
    v47 = *(v13 + 115);
    if (v47)
    {
      v47 = CFRetain(v47);
    }

    *a4 = v47;
    goto LABEL_29;
  }

  if (CFEqual(a2, @"PrepareItemOnDispatchQueue"))
  {
LABEL_33:
    v15 = MEMORY[0x1E695E4D0];
    goto LABEL_16;
  }

  if (CFEqual(a2, @"MultichannelAudioStrategy"))
  {
    Copy = *(v13 + 118);
    goto LABEL_17;
  }

  if (CFEqual(a2, @"PlaybackState"))
  {
    goto LABEL_179;
  }

  if (CFEqual(a2, @"AutomaticallyWaitsToMinimizeStalling"))
  {
    v15 = MEMORY[0x1E695E4C0];
    v37 = MEMORY[0x1E695E4D0];
    v38 = v13[57] == 0;
LABEL_92:
    if (!v38)
    {
      v15 = v37;
    }

    goto LABEL_16;
  }

  if (CFEqual(a2, @"CaptionPlaybackStrategy"))
  {
    if (v13[822])
    {
      v15 = &kFigPlayerCaptionRenderingStrategy_CoreTextSubtitleRenderer;
    }

    else
    {
      v15 = &kFigPlayerCaptionRenderingStrategy_CaptionDisplayService;
    }

    goto LABEL_16;
  }

  if (CFEqual(a2, @"CaptionPipelineStrategy"))
  {
    if (v13[821])
    {
      v15 = &kFigPlayerCaptionPipelineStrategy_AttributedStrings;
    }

    else
    {
      v15 = &kFigPlayerCaptionPipelineStrategy_FigCaptions;
    }

    goto LABEL_16;
  }

  if (CFEqual(a2, @"RequiresNumVideoSlots"))
  {
    v22 = *MEMORY[0x1E695E480];
    v23 = (v13 + 224);
    v24 = kCFNumberCFIndexType;
    goto LABEL_40;
  }

  if (CFEqual(a2, @"PreferredMaximumBufferDuration"))
  {
LABEL_179:
    Copy = FigCFNumberCreateSInt32();
    goto LABEL_18;
  }

  if (CFEqual(a2, @"ItemsToPrebuffer"))
  {
    Copy = *(v13 + 150);
    if (!Copy)
    {
      goto LABEL_18;
    }

    goto LABEL_17;
  }

  if (CFEqual(a2, @"PlayerRole"))
  {
    Copy = *(v13 + 148);
    if (!Copy)
    {
      goto LABEL_18;
    }

    goto LABEL_17;
  }

  if (CFEqual(a2, @"IgnoreAudioDeviceLatencyInStartupSync"))
  {
    v15 = MEMORY[0x1E695E4D0];
    v16 = v13[1139];
    goto LABEL_13;
  }

  if (CFEqual(a2, @"Topology"))
  {

    FPSupport_CreatePlayerTopology(a3, @"File", 0, a4);
  }
}

void playerfig_InvalidateItem()
{
  FigPlaybackItemGetFigBaseObject();
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

void playerfig_handleVideoTargetNotification(uint64_t a1, uint64_t a2, const void *a3, uint64_t a4)
{
  v7 = *MEMORY[0x1E69E9840];
  CMBaseObjectGetDerivedStorage();
  if (dword_1EAF16A10 >= 2)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (a2)
  {
    if (CFEqual(a3, @"PreferredDataChannelGroupsChanged") || CFEqual(a3, @"DataChannelSettingsChanged"))
    {
      playerfig_rebuildRenderPipelines_disturbIfInLameDuckGapOrMainVideoStillEnabled(a2, 0, 0);
    }

    else if (FigUseVideoReceiverForCALayer())
    {
      if (!CFEqual(a3, @"DisplayChanged"))
      {
        CFEqual(a3, @"IsBeingServicedStatusChanged");
      }
    }
  }
}

void playerfig_sendEmptyConfigurationToEachVideoTarget(uint64_t a1, CFArrayRef theArray)
{
  cf = 0;
  if (theArray)
  {
    Count = CFArrayGetCount(theArray);
    if (Count)
    {
      v5 = Count;
      v6 = playerfig_createDataChannelConfigurationAndSetIdentifiers(a1, 0, *MEMORY[0x1E695E480], &cf);
      v7 = cf;
      if (v6)
      {
        v8 = 1;
      }

      else
      {
        v8 = v5 < 1;
      }

      if (!v8)
      {
        v9 = 0;
        v10 = v5 - 1;
        do
        {
          ValueAtIndex = CFArrayGetValueAtIndex(theArray, v9);
          v12 = *(*(CMBaseObjectGetVTable() + 16) + 72);
          if (!v12)
          {
            break;
          }
        }

        while (!v12(ValueAtIndex, v7) && v10 != v9++);
      }

      if (v7)
      {

        CFRelease(v7);
      }
    }
  }
}

void playerfig_externalStartupTaskCompleted(uint64_t a1, uint64_t a2)
{
  v3 = *(CMBaseObjectGetDerivedStorage() + 528);
  if (v3 && CFArrayGetCount(v3) >= 1)
  {

    playerfig_updatePlaybackStateAndBossRate(a2, 34, 0);
  }
}

uint64_t itemfig_copyExternalProtectionStatus(uint64_t a1, CFAllocatorRef allocator, CFDictionaryRef *a3)
{
  values[20] = *MEMORY[0x1E69E9840];
  if (a1)
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    values[0] = 0;
    v6 = *(DerivedStorage + 1200);
    if (v6)
    {
      v7 = DerivedStorage;
      BOOLean = 0;
      v8 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      if (v8)
      {
        result = v8(v6, @"ExternalProtectionRequiredForPlayback", *MEMORY[0x1E695E480], &BOOLean);
        if (result)
        {
          goto LABEL_15;
        }

        if (!CFBooleanGetValue(BOOLean))
        {
          v14 = 0;
LABEL_30:
          if (BOOLean)
          {
            CFRelease(BOOLean);
          }

          goto LABEL_12;
        }

        v18 = 0;
        v10 = *(v7 + 1200);
        v11 = *(CMBaseObjectGetVTable() + 16);
        if (*v11)
        {
          v12 = v11[9];
          if (v12)
          {
            result = v12(v10, &v18);
            if (!result)
            {
              if (dword_1EAF16A10 >= 2)
              {
                os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
                os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
                fig_log_call_emit_and_clean_up_after_send_and_compose();
              }

              v16 = v18 == 1 || v18 == 4;
              v17 = &kFigPlayerExternalProtectionStatus_NotProtected;
              if (v16)
              {
                v17 = &kFigPlayerExternalProtectionStatus_Protected;
              }

              values[0] = *v17;
              v14 = CFDictionaryCreate(allocator, &kFigPlayerExternalProtectionStatusKey_Video, values, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
              if (!v14)
              {
                result = 4294954510;
                goto LABEL_22;
              }

              goto LABEL_30;
            }

LABEL_15:
            v14 = 0;
            goto LABEL_22;
          }
        }
      }

      result = 4294954514;
      goto LABEL_15;
    }
  }

  v14 = 0;
LABEL_12:
  if (v14)
  {
    result = 0;
  }

  else
  {
    v15 = CFDictionaryCreate(allocator, &kFigPlayerExternalProtectionStatusKey_Video, &kFigPlayerExternalProtectionStatus_Protected, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    if (v15)
    {
      result = 0;
    }

    else
    {
      result = 4294954510;
    }

    if (v15)
    {
      v14 = v15;
    }

    else
    {
      v14 = 0;
    }
  }

LABEL_22:
  *a3 = v14;
  return result;
}

void playerfig_handleSetProperty(const __CFArray *a1, uint64_t a2, const void *a3, void *a4, _BYTE *a5)
{
  v7 = a4;
  v284 = *MEMORY[0x1E69E9840];
  values = a4;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  *a5 = 1;
  if (*DerivedStorage)
  {
    v11 = qword_1EAF16A08;
    v12 = v5;
    v13 = 4294954511;
    v14 = 31333;
LABEL_3:

    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v11, v13, "<<<< FigFilePlayer >>>>", v14, v12);
    return;
  }

  v15 = DerivedStorage;
  if (!CFEqual(a3, @"DestinationPixelBufferAttributes"))
  {
    if (CFEqual(a3, @"ClosedCaptionLayerArray"))
    {
      if (v7)
      {
        TypeID = CFArrayGetTypeID();
        if (TypeID != CFGetTypeID(v7))
        {
          v11 = qword_1EAF16A08;
          v12 = v5;
          v13 = 4294954516;
          v14 = 31349;
          goto LABEL_3;
        }
      }

      v21 = CMBaseObjectGetDerivedStorage();
      if (!FigCFEqual())
      {
        v22 = *(v21 + 296);
        if (v7)
        {
          v23 = CFRetain(v7);
        }

        else
        {
          v23 = 0;
        }

        *(v21 + 296) = v23;
        FPSupport_updateClosedCaptionLayer(v21 + 304, v23);
        [MEMORY[0x1E6979518] begin];
        if (!pthread_main_np())
        {
          [MEMORY[0x1E6979518] activateBackground:1];
        }

        [MEMORY[0x1E6979518] setValue:*MEMORY[0x1E695E4D0] forKey:*MEMORY[0x1E697A020]];
        if (v22)
        {
          CFRelease(v22);
        }

        [MEMORY[0x1E6979518] commit];
      }

      return;
    }

    if (CFEqual(a3, @"ClosedCaptionLayerBoundsUpdate"))
    {
      v24 = CMBaseObjectGetDerivedStorage();
      HIDWORD(v261) = 0;
      v25 = *(MEMORY[0x1E695F058] + 16);
      rect.origin = *MEMORY[0x1E695F058];
      rect.size = v25;
      v259.origin = rect.origin;
      v259.size = v25;
      v26 = *(MEMORY[0x1E6962818] + 16);
      v255 = *MEMORY[0x1E6962818];
      v256 = v26;
      v27 = *(MEMORY[0x1E6962818] + 48);
      v257 = *(MEMORY[0x1E6962818] + 32);
      v258 = v27;
      if (v7 && (v28 = CFDictionaryGetTypeID(), v28 == CFGetTypeID(v7)))
      {
        Value = CFDictionaryGetValue(v7, @"ClosedCaptionLayerBoundsUpdate_LayerBounds");
        if (Value)
        {
          CGRectMakeWithDictionaryRepresentation(Value, &rect);
          v7 = values;
        }

        v30 = CFDictionaryGetValue(v7, @"ClosedCaptionLayerBoundsUpdate_LayerVideoRelativeToViewport");
        v31 = v30 == 0;
        if (v30)
        {
          CGRectMakeWithDictionaryRepresentation(v30, &v259);
        }

        v32 = CFDictionaryGetValue(values, @"ClosedCaptionLayerBoundsUpdate_LayerCaptionsAvoidanceMargins");
        v33 = v32 == 0;
        if (v32)
        {
          FigGeometryMarginsMakeFromDictionary();
        }

        v34 = CFDictionaryGetValue(values, @"ClosedCaptionLayerBoundsUpdate_LayerIndex");
        if (v34)
        {
          CFNumberGetValue(v34, kCFNumberIntType, &v261 + 4);
          v35 = HIDWORD(v261);
          if ((HIDWORD(v261) & 0x80000000) != 0)
          {
            return;
          }
        }

        else
        {
          v35 = 0;
        }
      }

      else
      {
        FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v251, v252, v253);
        v35 = 0;
        v31 = 1;
        v33 = 1;
      }

      if (dword_1EAF16A10)
      {
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
        v35 = HIDWORD(v261);
      }

      if (v31)
      {
        v55 = 0;
      }

      else
      {
        v55 = &v259;
      }

      if (v33)
      {
        v56 = 0;
      }

      else
      {
        v56 = &v255;
      }

      FPSupport_updateClosedCaptionLayerBounds(v24 + 304, rect.origin.x, rect.origin.y, rect.size.width, rect.size.height, *(v24 + 296), v35, v55, v56);
      return;
    }

    if (CFEqual(a3, @"ClosedCaptionLayerSetOptions"))
    {
      v37 = CMBaseObjectGetDerivedStorage();
      LODWORD(v255) = 0;
      if (v7 && (v38 = CFDictionaryGetTypeID(), v38 == CFGetTypeID(v7)))
      {
        v39 = CFDictionaryGetValue(v7, @"ClosedCaptionLayerSetOption_LayerIndex");
        if (v39)
        {
          CFNumberGetValue(v39, kCFNumberIntType, &v255);
        }

        v40 = FigCFDictionaryGetValue();
        if (!v40)
        {
          playerfig_handleSetProperty_cold_2(&keys);
          return;
        }

        v41 = v40;
        v42 = FigCFDictionaryGetValue();
        if (!v42)
        {
          playerfig_handleSetProperty_cold_1(&keys);
          return;
        }

        v43 = v255;
        if ((v255 & 0x80000000) != 0)
        {
          return;
        }

        v44 = v42;
      }

      else
      {
        FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v251, v252, v253);
        v41 = 0;
        v44 = 0;
        v43 = 0;
      }

      if (dword_1EAF16A10)
      {
        LODWORD(rect.origin.x) = 0;
        LOBYTE(v259.origin.x) = 0;
        v45 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        x_low = LODWORD(rect.origin.x);
        v47 = LOBYTE(v259.origin.x);
        if (os_log_type_enabled(v45, LOBYTE(v259.origin.x)))
        {
          v48 = x_low;
        }

        else
        {
          v48 = x_low & 0xFFFFFFFE;
        }

        if (v48)
        {
          if (a1)
          {
            v49 = (CMBaseObjectGetDerivedStorage() + 972);
          }

          else
          {
            *&v49 = COERCE_DOUBLE("");
          }

          *v263 = 136316418;
          *&v263[4] = "playerfig_handleSetProperty";
          *&v263[12] = 2048;
          *&v263[14] = a1;
          *&v263[22] = 2082;
          v264 = v49;
          LOWORD(v265) = 1024;
          *(&v265 + 2) = v255;
          HIWORD(v265) = 2112;
          v266 = v41;
          LOWORD(v267[0]) = 2112;
          *(v267 + 2) = v44;
          LODWORD(v252) = 58;
          _os_log_send_and_compose_impl(v48, 0, &keys, 128, &dword_1962D5000, v45, v47, "<<<< FigFilePlayer >>>> %s: [%p] %{public}s: kFigPlayerProperty_ClosedCaptionLayerSetOptions: closedcaption layer(%d) optionKeyPath=%@, optionValue%@", v263, v252);
        }

        fig_log_call_emit_and_clean_up_after_send_and_compose();
        v43 = v255;
      }

      FPSupport_setClosedCaptionLayerOptions(v37 + 304, *(v37 + 296), v43, v41, v44);
      return;
    }

    if (CFEqual(a3, @"ClosedCaptionLayerSetSeparated"))
    {
      v50 = CMBaseObjectGetDerivedStorage();
      LODWORD(v255) = 0;
      if (v7 && (v51 = CFDictionaryGetTypeID(), v51 == CFGetTypeID(v7)))
      {
        v52 = CFDictionaryGetValue(v7, @"ClosedCaptionLayerSetSeparated_LayerIndex");
        if (v52)
        {
          CFNumberGetValue(v52, kCFNumberIntType, &v255);
        }

        v53 = FigCFDictionaryGetValue();
        if (v53)
        {
          v54 = CFBooleanGetValue(v53);
        }

        else
        {
          v54 = 0;
        }
      }

      else
      {
        FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v251, v252, v253);
        v54 = 0;
      }

      v59 = v255;
      if ((v255 & 0x80000000) == 0)
      {
        if (dword_1EAF16A10)
        {
          LODWORD(rect.origin.x) = 0;
          LOBYTE(v259.origin.x) = 0;
          v60 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          v61 = LODWORD(rect.origin.x);
          v62 = LOBYTE(v259.origin.x);
          if (os_log_type_enabled(v60, LOBYTE(v259.origin.x)))
          {
            v63 = v61;
          }

          else
          {
            v63 = v61 & 0xFFFFFFFE;
          }

          if (v63)
          {
            if (a1)
            {
              v64 = (CMBaseObjectGetDerivedStorage() + 972);
            }

            else
            {
              *&v64 = COERCE_DOUBLE("");
            }

            *v263 = 136316162;
            *&v263[4] = "playerfig_handleSetProperty";
            *&v263[12] = 2048;
            *&v263[14] = a1;
            *&v263[22] = 2082;
            v264 = v64;
            LOWORD(v265) = 1024;
            *(&v265 + 2) = v255;
            HIWORD(v265) = 2112;
            v266 = values;
            LODWORD(v252) = 48;
            _os_log_send_and_compose_impl(v63, 0, &keys, 128, &dword_1962D5000, v60, v62, "<<<< FigFilePlayer >>>> %s: [%p] %{public}s: kFigPlayerProperty_ClosedCaptionLayerSetSeparated: closedcaption layer(%d) propertyValue=%@", v263, v252);
          }

          fig_log_call_emit_and_clean_up_after_send_and_compose();
          v59 = v255;
        }

        FPSupport_setClosedCaptionLayerSeparated(v50 + 304, *(v50 + 296), v59, v54);
      }

      return;
    }

    if (CFEqual(a3, @"VideoLayer"))
    {
      if (!v7)
      {
LABEL_119:

        playerfig_setClientVideoLayerArray();
        return;
      }

      v76 = CFArrayCreate(*MEMORY[0x1E695E480], &values, 1, MEMORY[0x1E695E9C0]);
      playerfig_setClientVideoLayerArray();
      if (!v76)
      {
        return;
      }

      goto LABEL_136;
    }

    if (CFEqual(a3, @"VideoLayerArray"))
    {
      if (v7)
      {
        v57 = CFArrayGetTypeID();
        if (v57 != CFGetTypeID(v7))
        {
          v11 = qword_1EAF16A08;
          v12 = v5;
          v13 = 4294954516;
          v14 = 31501;
          goto LABEL_3;
        }
      }

      goto LABEL_119;
    }

    if (CFEqual(a3, @"VideoTargetArray"))
    {
      if (v7)
      {
        v58 = CFGetTypeID(v7);
        if (v58 != CFArrayGetTypeID())
        {
          v11 = qword_1EAF16A08;
          v12 = v5;
          v13 = 4294954516;
          v14 = 31513;
          goto LABEL_3;
        }
      }

      playerfig_setVideoTargetArray(a1, v7);
      return;
    }

    if (CFEqual(a3, @"RequiresNumVideoSlots"))
    {
      if (FigUseVideoReceiverForCALayer())
      {
        playerfig_handleSetProperty_cold_3(&keys);
        return;
      }

      if (!v7 || (v65 = CFGetTypeID(v7), v65 != CFNumberGetTypeID()))
      {
        v11 = qword_1EAF16A08;
        v12 = v5;
        v13 = 4294954516;
        v14 = 31554;
        goto LABEL_3;
      }

      keys.width = 0.0;
      CFNumberGetValue(v7, kCFNumberCFIndexType, &keys);
      width = keys.width;
      v67 = *(v15 + 28);
      if (*&keys.width != v67)
      {
        *(v15 + 28) = *&keys.width;
        if (playerfig_doesAnyWorkingOrLameDuckItemHaveVideo(a1))
        {
          if (*&width >= v67 ? playerfig_gracefullyAddImageQueues(a1, 0) : playerfig_removeExcessImageQueuesAndSlotsFromAllWorkingOrLameDuckItems(a1, 0))
          {
            if (*(v15 + 28) <= 0)
            {
              playerfig_removeAllImageQueuesFromAllWorkingOrLameDuckItems(a1);
            }

            else
            {
              playerfig_resetAlreadyPostedFirstVideoFrameEnqueuedNotificationFlagFromAllWorkingOrLameDuckItems(a1);
            }

            playerfig_rebuildRenderPipelines_disturbIfInLameDuckGapOrMainVideoStillEnabled(a1, 0, 0);
          }
        }
      }

      return;
    }

    if (CFEqual(a3, @"VideoLayerDestinationIsTVOut") || CFEqual(a3, @"PreventDisplaySleepDuringVideoPlayback"))
    {
      if (!v7 || (v69 = CFBooleanGetTypeID(), v69 != CFGetTypeID(v7)))
      {
        v11 = qword_1EAF16A08;
        v12 = v5;
        v13 = 4294954516;
        v14 = 31589;
        goto LABEL_3;
      }

      v70 = CFEqual(a3, @"PreventDisplaySleepDuringVideoPlayback");
      v71 = CFBooleanGetValue(v7);
      v72 = v71 == 0;
      if (v70)
      {
        v72 = v71;
      }

      if (v15[240] != v72)
      {
        v15[240] = v72;
        if (*(v15 + 74))
        {
          if (v72)
          {
            v73 = MEMORY[0x1E695E4D0];
          }

          else
          {
            v73 = MEMORY[0x1E695E4C0];
          }

          v74 = *v73;
          FigRenderPipelineGetFigBaseObject();
          CMBaseObjectSetProperty(v75, @"PreventDisplaySleepDuringVideoPlayback", v74);
        }
      }

      return;
    }

    if (CFEqual(a3, @"ImageQueueSlotTransitionFinished"))
    {
      playerfig_freeTransitionImageQueueAndSlot(a1);
      return;
    }

    if (CFEqual(a3, @"AudioPipelineEarlyDump"))
    {
      if (!v7 || (v78 = CFGetTypeID(v7), v78 != CFNumberGetTypeID()))
      {
        v11 = qword_1EAF16A08;
        v12 = v5;
        v13 = 4294954516;
        v14 = 31604;
        goto LABEL_3;
      }

      v79 = v15 + 120;
LABEL_156:
      CFNumberGetValue(v7, kCFNumberIntType, v79);
      return;
    }

    if (CFEqual(a3, @"VideoPipelineEarlyDump"))
    {
      if (!v7 || (v80 = CFGetTypeID(v7), v80 != CFNumberGetTypeID()))
      {
        v11 = qword_1EAF16A08;
        v12 = v5;
        v13 = 4294954516;
        v14 = 31610;
        goto LABEL_3;
      }

      v79 = v15 + 124;
      goto LABEL_156;
    }

    if (CFEqual(a3, @"NetworkCacheURL") && v7)
    {
      v81 = CFGetTypeID(v7);
      if (v81 != CFURLGetTypeID())
      {
        v11 = qword_1EAF16A08;
        v12 = v5;
        v13 = 4294954436;
        v14 = 31619;
        goto LABEL_3;
      }

      v82 = *(v15 + 25);
      if (v82)
      {
        CFRelease(v82);
      }

      *(v15 + 25) = CFRetain(v7);
      return;
    }

    if (CFEqual(a3, @"DisallowVideoLayerDisplayCompositing"))
    {
      if (v7)
      {
        v83 = CFGetTypeID(v7);
        if (v83 == CFBooleanGetTypeID())
        {
          v15[241] = CFBooleanGetValue(v7);
          return;
        }
      }

      v11 = qword_1EAF16A08;
      v12 = v5;
      v13 = 4294954516;
      v14 = 31628;
      goto LABEL_3;
    }

    if (CFEqual(a3, @"AllowGaplessTransitions"))
    {
      if (v7)
      {
        v84 = CFGetTypeID(v7);
        if (v84 == CFBooleanGetTypeID())
        {
          v15[77] = CFBooleanGetValue(v7);
          return;
        }
      }

      v11 = qword_1EAF16A08;
      v12 = v5;
      v13 = 4294954516;
      v14 = 31638;
      goto LABEL_3;
    }

    if (CFEqual(a3, @"PlayerVolume"))
    {
      if (!v7 || (v85 = CFGetTypeID(v7), v85 != CFNumberGetTypeID()))
      {
        v11 = qword_1EAF16A08;
        v12 = v5;
        v13 = 4294954516;
        v14 = 31683;
        goto LABEL_3;
      }

      LODWORD(v255) = 0;
      CFNumberGetValue(v7, kCFNumberFloat32Type, &v255);
      if (*&v255 == *(v15 + 201))
      {
        return;
      }

      v86 = *MEMORY[0x1E695E480];
      v87 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberFloatType, &v255);
      *&keys.width = @"AVController_Volume";
      *v263 = v87;
      v88 = CFDictionaryCreate(v86, &keys, v263, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      FigSimpleMutexLock();
      *(v15 + 201) = v255;
      if (*(v15 + 67))
      {
        if (playerfig_mustDisturbPlaybackWhenSettingAudioPropertyOnCurrentItem(a1, 0))
        {
          playerfig_handleSetProperty_cold_4(v15 + 65);
LABEL_204:
          CMNotificationCenterGetDefaultLocalCenter();
          CMNotificationCenterPostNotification();
          if (v88)
          {
            CFRelease(v88);
          }

          if (!v87)
          {
            return;
          }

LABEL_207:
          v77 = v87;
          goto LABEL_137;
        }

        playerfig_applySoftwareVolume(a1, @"SoftwareVolume1", 0, *(v15 + 201), 0.0);
      }

      FigSimpleMutexUnlock();
      goto LABEL_204;
    }

    if (CFEqual(a3, @"PlayerMuted"))
    {
      if (!v7 || (v89 = CFGetTypeID(v7), v89 != CFBooleanGetTypeID()))
      {
        v11 = qword_1EAF16A08;
        v12 = v5;
        v13 = 4294954516;
        v14 = 31719;
        goto LABEL_3;
      }

      v90 = CFBooleanGetValue(v7);
      if (v15[814] == v90)
      {
        return;
      }

      v91 = v90;
      FigSimpleMutexLock();
      if (*(v15 + 67))
      {
        if (playerfig_mustDisturbPlaybackWhenSettingAudioPropertyOnCurrentItem(a1, 1))
        {
          v15[814] = v91;
          FigSimpleMutexUnlock();
          keys = *MEMORY[0x1E6960C70];
          v269 = *(MEMORY[0x1E6960C70] + 16);
          *v263 = keys;
          *&v263[16] = v269;
          playerfig_stopResetDisturbReprepareAndResumeWithTransaction();
LABEL_214:
          v76 = CFDictionaryCreate(*MEMORY[0x1E695E480], &kFigPlayerParameter_CurrentMuted, &values, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
          CMNotificationCenterGetDefaultLocalCenter();
          CMNotificationCenterPostNotification();
          if (!v76)
          {
            return;
          }

LABEL_136:
          v77 = v76;
LABEL_137:
          CFRelease(v77);
          return;
        }

        itemfig_setMuted(*(v15 + 67), v91);
      }

      v15[814] = v91;
      FigSimpleMutexUnlock();
      goto LABEL_214;
    }

    if (CFEqual(a3, @"EQPreset"))
    {
      if (v7)
      {
        v92 = CFGetTypeID(v7);
        if (v92 == CFNumberGetTypeID())
        {
          LODWORD(keys.width) = 0;
          CFNumberGetValue(v7, kCFNumberIntType, &keys);
          width_low = LODWORD(keys.width);
          *(CMBaseObjectGetDerivedStorage() + 80) = width_low;
          playerfig_applyEQPreset(a1);
          return;
        }
      }

      v11 = qword_1EAF16A08;
      v12 = v5;
      v13 = 4294954516;
      v14 = 31729;
      goto LABEL_3;
    }

    if (CFEqual(a3, @"SetVideoLayerBoundsAutomatically"))
    {
      if (v7)
      {
        v94 = CFGetTypeID(v7);
        if (v94 == CFBooleanGetTypeID())
        {
          v15[76] = CFBooleanGetValue(v7);
          return;
        }
      }

      v11 = qword_1EAF16A08;
      v12 = v5;
      v13 = 4294954516;
      v14 = 31736;
      goto LABEL_3;
    }

    if (CFEqual(a3, @"PostClosedCaptionCommands"))
    {
      if (v7)
      {
        v95 = CFGetTypeID(v7);
        if (v95 == CFBooleanGetTypeID())
        {
          v15[304] = CFBooleanGetValue(v7);
          return;
        }
      }

      v11 = qword_1EAF16A08;
      v12 = v5;
      v13 = 4294954516;
      v14 = 31778;
      goto LABEL_3;
    }

    if (CFEqual(a3, @"DisplayClosedCaptions"))
    {
      if (v7)
      {
        v96 = CFGetTypeID(v7);
        if (v96 == CFBooleanGetTypeID())
        {
          v97 = CFBooleanGetValue(v7);
          playerfig_setClosedCaptionsDisplayRequested(a1, v97);
          return;
        }
      }

      v11 = qword_1EAF16A08;
      v12 = v5;
      v13 = 4294954516;
      v14 = 31785;
      goto LABEL_3;
    }

    if (CFEqual(a3, @"RequiredNumberOfCAContextsForClosedCaptionLayers"))
    {
      if (v7)
      {
        v98 = CFGetTypeID(v7);
        if (v98 == CFNumberGetTypeID())
        {
          LODWORD(keys.width) = 0;
          CFNumberGetValue(v7, kCFNumberSInt32Type, &keys);
          if (LODWORD(keys.width) != *(v15 + 82))
          {
            *(v15 + 82) = LODWORD(keys.width);
            FPSupport_updateClosedCaptionLayer((v15 + 304), *(v15 + 37));
          }
        }
      }

      return;
    }

    if (CFEqual(a3, @"DisplayNonForcedSubtitles"))
    {
      if (v7)
      {
        v99 = CFGetTypeID(v7);
        if (v99 == CFBooleanGetTypeID())
        {
          v15[720] = CFBooleanGetValue(v7);
          playerfig_updateSubtitleDisplayForItem(a1, 0);
          playerfig_updateCaptionOrSubtitleHintOnVideoPipeline(a1, 0);
          return;
        }
      }

      v11 = qword_1EAF16A08;
      v12 = v5;
      v13 = 4294954516;
      v14 = 31810;
      goto LABEL_3;
    }

    if (CFEqual(a3, @"PreferredLanguageList"))
    {
      if (!v7 || (v100 = CFDictionaryGetTypeID(), v100 == CFGetTypeID(v7)))
      {
        playerfig_setPreferredLanguageLists(a1, v7);
        return;
      }

      v11 = qword_1EAF16A08;
      v12 = v5;
      v13 = 4294954516;
      v14 = 31818;
      goto LABEL_3;
    }

    if (CFEqual(a3, @"MediaSelectionCriteria"))
    {
      if (v7)
      {
        v101 = CFGetTypeID(v7);
        if (v101 != CFDictionaryGetTypeID())
        {
          v11 = qword_1EAF16A08;
          v12 = v5;
          v13 = 4294954516;
          v14 = 31840;
          goto LABEL_3;
        }
      }

      FigSimpleMutexLock();
      if (!FigCFEqual())
      {
        v102 = *(v15 + 96);
        if (v102)
        {
          v103 = CFRetain(v102);
          v104 = *(v15 + 96);
        }

        else
        {
          v104 = 0;
          v103 = 0;
        }

        *(v15 + 96) = v7;
        if (!v7)
        {
          goto LABEL_260;
        }

        goto LABEL_259;
      }

      goto LABEL_249;
    }

    if (CFEqual(a3, @"LegibleFallbackMediaSelectionCriteria"))
    {
      if (v7)
      {
        v105 = CFGetTypeID(v7);
        if (v105 != CFDictionaryGetTypeID())
        {
          v11 = qword_1EAF16A08;
          v12 = v5;
          v13 = 4294954516;
          v14 = 31861;
          goto LABEL_3;
        }
      }

      FigSimpleMutexLock();
      if (!FigCFEqual())
      {
        v110 = *(v15 + 97);
        if (v110)
        {
          v103 = CFRetain(v110);
          v104 = *(v15 + 97);
        }

        else
        {
          v104 = 0;
          v103 = 0;
        }

        *(v15 + 97) = v7;
        if (!v7)
        {
          goto LABEL_260;
        }

LABEL_259:
        CFRetain(v7);
LABEL_260:
        if (v104)
        {
          CFRelease(v104);
        }

        FigSimpleMutexUnlock();
        if (v103)
        {
          CFRelease(v103);
        }

        goto LABEL_264;
      }

LABEL_249:
      FigSimpleMutexUnlock();
      return;
    }

    if (CFEqual(a3, @"AllowsLegibleFallbackMediaSelectionCriteriaForAllAudibleMediaSelections"))
    {
      if (!v7 || (v106 = CFBooleanGetTypeID(), v106 != CFGetTypeID(v7)))
      {
        v11 = qword_1EAF16A08;
        v12 = v5;
        v13 = 4294954516;
        v14 = 31877;
        goto LABEL_3;
      }

      v107 = v15[784] != 0;
      v15[784] = CFBooleanGetValue(v7);
      if (v15[800] == v107)
      {
        return;
      }

      goto LABEL_264;
    }

    if (CFEqual(a3, @"AppliesMediaSelectionCriteriaAutomatically"))
    {
      if (!v7 || (v111 = CFBooleanGetTypeID(), v111 != CFGetTypeID(v7)))
      {
        v11 = qword_1EAF16A08;
        v12 = v5;
        v13 = 4294954516;
        v14 = 31889;
        goto LABEL_3;
      }

      v112 = v15[800];
      v113 = CFBooleanGetValue(v7);
      v15[800] = v113;
      if (!v113 || v112)
      {
        return;
      }

      goto LABEL_264;
    }

    if (CFEqual(a3, @"ActionAtEnd"))
    {
      if (v7 && (v124 = CFGetTypeID(v7), v124 == CFStringGetTypeID()))
      {
        ActionAtEndForString = FigPlaybackGetActionAtEndForString(v7);
        playerfig_setActionAtEnd(a1, ActionAtEndForString);
      }

      else
      {
        playerfig_handleSetProperty_cold_5(&keys);
      }

      return;
    }

    if (CFEqual(a3, @"ApplyVideoTrackMatrix"))
    {
      if (!v7 || (v114 = CFGetTypeID(v7), v114 != CFBooleanGetTypeID()))
      {
        v11 = qword_1EAF16A08;
        v12 = v5;
        v13 = 4294954516;
        v14 = 31926;
        goto LABEL_3;
      }

      v115 = CFBooleanGetValue(v7);
      if (v115 != v15[823])
      {
        v15[823] = v115;
        if (!FigUseVideoReceiverForCALayer())
        {
          FigSimpleMutexLock();
          playerfig_updateVideoLayerSize(a1, 0);
          FigSimpleMutexUnlock();
        }

        v116 = *(v15 + 67);
        if (v116)
        {
          itemfig_updateRotationOnVideoRenderPipeline(v116, 0);
          v122 = *(v15 + 67);
          if (v122)
          {
            playerfig_scheduleVideoTargetImageQueueConfigurationTransitionForItem(a1, v122, MEMORY[0x1E6960C70], v117, v118, v119, v120, v121, v251, v252, v253, v254, v255, *(&v255 + 1), v256, *(&v256 + 1), v257, SDWORD2(v257), SHIDWORD(v257), v258, *(&v258 + 1), *&v259.origin.x, *&v259.origin.y, *&v259.size.width, *&v259.size.height, *&rect.origin.x, *&rect.origin.y, *&rect.size.width, *&rect.size.height, v261, values, *v263, *&v263[8], *&v263[16], v264, v265, v266, v267[0], v267[1], v267[2], v267[3], *&keys.width, *&keys.height, v269, v270, v271, v272, v273, v274, v275, v276, v277, v278, v279, v280, v281, v282, v283, v284);
          }
        }
      }

      return;
    }

    if (CFEqual(a3, @"TimeAccuracy"))
    {
      FigSimpleMutexLock();
      if (CFSetGetCount(*(v15 + 4)) < 1)
      {
        if (CFEqual(v7, @"Exact"))
        {
          v15[78] = 1;
        }

        else if (CFEqual(v7, @"Approximate"))
        {
          v15[78] = 0;
        }

        else
        {
          FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF16A08, 4294954516, "<<<< FigFilePlayer >>>>", 31939, v5);
        }
      }

      else
      {
        FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF16A08, 4294954516, "<<<< FigFilePlayer >>>>", 31933, v5);
      }

      goto LABEL_249;
    }

    if (CFEqual(a3, @"FigAudioSession"))
    {
      if (v7)
      {
        v123 = CFGetTypeID(v7);
        if (v123 != FigAudioSessionGetTypeID())
        {
          v11 = qword_1EAF16A08;
          v12 = v5;
          v13 = 4294954516;
          v14 = 31984;
          goto LABEL_3;
        }
      }

      FigSimpleMutexLock();
      v128 = *(v15 + 59);
      *(v15 + 59) = v7;
      if (v7)
      {
        CFRetain(v7);
      }

      if (v128)
      {
        CFRelease(v128);
      }

      FigSimpleMutexUnlock();
      if (!*(v15 + 73))
      {
        v129 = *(v15 + 83);
        if (v129)
        {
          CFArrayGetCount(v129);
        }
      }

      keys = *MEMORY[0x1E6960C70];
      v269 = *(MEMORY[0x1E6960C70] + 16);
      *v263 = keys;
      *&v263[16] = v269;
      goto LABEL_321;
    }

    if (CFEqual(a3, @"FigAudioSession2"))
    {
      return;
    }

    if (CFEqual(a3, @"ClientName"))
    {
      if (!v7 || (v126 = CFStringGetTypeID(), v126 == CFGetTypeID(v7)))
      {
        v127 = *(v15 + 1);
        if (v127)
        {
          CFRelease(v127);
          *(v15 + 1) = 0;
        }

        if (v7)
        {
          *(v15 + 1) = CFRetain(v7);
        }
      }

      return;
    }

    if (CFEqual(a3, @"STSLabel"))
    {
      if (!v7 || (v130 = CFStringGetTypeID(), v130 == CFGetTypeID(v7)))
      {
        FigSimpleMutexLock();
        v131 = *(v15 + 2);
        *(v15 + 2) = v7;
        if (v7)
        {
          CFRetain(v7);
        }

        if (v131)
        {
          CFRelease(v131);
        }

        FigSimpleMutexUnlock();

        fp_setPropertyOnAllAudioRenderPipelines();
      }

      return;
    }

    if (CFEqual(a3, @"AudioDeviceUID"))
    {
      if (v7)
      {
        v132 = CFStringGetTypeID();
        if (v132 != CFGetTypeID(v7))
        {
          return;
        }
      }

      if (FigCFEqual())
      {
        return;
      }

      v133 = *(v15 + 89);
      *(v15 + 89) = v7;
      if (v7)
      {
        CFRetain(v7);
      }

      if (v133)
      {
        CFRelease(v133);
      }

      keys = *MEMORY[0x1E6960C70];
      v269 = *(MEMORY[0x1E6960C70] + 16);
      *v263 = keys;
      *&v263[16] = v269;
LABEL_626:
      playerfig_stopResetDisturbReprepareAndResumeWithTransaction();
LABEL_264:
      v108 = a1;
      v109 = 0;
LABEL_265:
      playerfig_applyAutoSelectionCriteriaInternal(v108, v109, 0);
      return;
    }

    if (CFEqual(a3, @"EnableHardwareAcceleratedVideoDecoder"))
    {
      if (v7)
      {
        v134 = CFGetTypeID(v7);
        if (v134 == CFBooleanGetTypeID())
        {
          if (*MEMORY[0x1E695E4D0] == v7)
          {
            v135 = 1;
          }

          else
          {
            v135 = 2;
          }

          *(v15 + 206) = v135;
        }
      }

      else
      {
        *(v15 + 206) = 0;
      }

      return;
    }

    if (CFEqual(a3, @"PreferredVideoDecoderGPURegistryID"))
    {
      if (v7)
      {
        v136 = CFNumberGetTypeID();
        if (v136 != CFGetTypeID(v7))
        {
          return;
        }
      }

      if (FigCFEqual())
      {
        return;
      }

      v137 = *(v15 + 104);
      *(v15 + 104) = v7;
      if (v7)
      {
        CFRetain(v7);
      }

      if (v137)
      {
        CFRelease(v137);
      }

      keys = *MEMORY[0x1E6960C70];
      v269 = *(MEMORY[0x1E6960C70] + 16);
      *v263 = keys;
      *&v263[16] = v269;
      goto LABEL_321;
    }

    if (CFEqual(a3, @"GatherPerformanceHistoryArray"))
    {
      if (!v7 || (v138 = CFBooleanGetTypeID(), v138 != CFGetTypeID(v7)))
      {
        v11 = qword_1EAF16A08;
        v12 = v5;
        v13 = 4294954516;
        v14 = 32080;
        goto LABEL_3;
      }

      v139 = CFBooleanGetValue(v7);
      if (v139 != v15[852])
      {
        v15[852] = v139;
        if (!v139)
        {
          v140 = *(v15 + 107);
          if (v140)
          {
            CFRelease(v140);
            *(v15 + 107) = 0;
          }
        }
      }

      return;
    }

    if (CFEqual(a3, @"DisplayList"))
    {
      if (v7)
      {
        v141 = CFArrayGetTypeID();
        if (v141 != CFGetTypeID(v7))
        {
          FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v251, v252, v253);
          if (v146)
          {
            return;
          }

          goto LABEL_383;
        }

        Copy = CFArrayCreateCopy(*MEMORY[0x1E695E480], v7);
        if (!Copy)
        {
          return;
        }

        v143 = Copy;
        v144 = *(v15 + 111);
        *(v15 + 111) = Copy;
        CFRetain(Copy);
      }

      else
      {
        v143 = 0;
        v144 = *(v15 + 111);
        *(v15 + 111) = 0;
      }

      if (v144)
      {
        CFRelease(v144);
      }

      if (v7)
      {
        CFRelease(v143);
      }

LABEL_383:
      FigSimpleMutexLock();
      if (*(v15 + 67))
      {
        v147 = *(CMBaseObjectGetDerivedStorage() + 1200);
        if (v147)
        {
          CMBaseObjectSetProperty(v147, @"DisplayList", *(v15 + 111));
        }
      }

LABEL_479:
      FigSimpleMutexUnlock();
      return;
    }

    if (CFEqual(a3, @"DecodeMultipleAudioTracks"))
    {
      if (!v7 || (v145 = CFBooleanGetTypeID(), v145 != CFGetTypeID(v7)))
      {
        v11 = qword_1EAF16A08;
        v12 = v5;
        v13 = 4294954436;
        v14 = 32116;
        goto LABEL_3;
      }

      v15[128] = CFBooleanGetValue(v7);
      keys = *MEMORY[0x1E6960C70];
      v269 = *(MEMORY[0x1E6960C70] + 16);
      *v263 = keys;
      *&v263[16] = v269;
      goto LABEL_321;
    }

    if (CFEqual(a3, @"DecodeMultipleVideoTracks"))
    {
      if (!v7 || (v148 = CFBooleanGetTypeID(), v148 != CFGetTypeID(v7)))
      {
        v11 = qword_1EAF16A08;
        v12 = v5;
        v13 = 4294954436;
        v14 = 32124;
        goto LABEL_3;
      }

      v15[129] = CFBooleanGetValue(v7);
      keys = *MEMORY[0x1E6960C70];
      v269 = *(MEMORY[0x1E6960C70] + 16);
      *v263 = keys;
      *&v263[16] = v269;
      goto LABEL_321;
    }

    if (CFEqual(a3, @"ClientSuspended"))
    {
      if (!v7 || (v149 = CFBooleanGetTypeID(), v149 != CFGetTypeID(v7)))
      {
        v11 = qword_1EAF16A08;
        v12 = v5;
        v13 = 4294954436;
        v14 = 32168;
        goto LABEL_3;
      }

      v150 = CFBooleanGetValue(v7);
      FigSimpleMutexLock();
      v151 = CMBaseObjectGetDerivedStorage();
      if (v150 == v15[65])
      {
        goto LABEL_475;
      }

      v15[65] = v150;
      if (dword_1EAF16A10)
      {
        LODWORD(v255) = 0;
        LOBYTE(rect.origin.x) = 0;
        v152 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(v152, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      v159 = *(v15 + 15);
      if (v150)
      {
        v160 = 0;
        if (v159 != 1)
        {
          goto LABEL_475;
        }
      }

      else
      {
        if (v159 || !v15[64])
        {
LABEL_475:
          if (v151)
          {
            if (*(v151 + 128))
            {
              CMByteStreamGetCMBaseObject();
              FigCRABSGetClassID();
              if (CMBaseObjectIsMemberOfClass())
              {
                playerfig_configureDownloadInPlayQueueAndItemsToPrebuffer(a1);
              }
            }
          }

          goto LABEL_479;
        }

        v160 = 1;
      }

      playerfig_updatePlayerActiveState(a1, v160);
      goto LABEL_475;
    }

    if (CFEqual(a3, @"MinRateForAudioPlayback"))
    {
      if (v7)
      {
        v153 = CFNumberGetTypeID();
        if (v153 != CFGetTypeID(v7))
        {
          v11 = qword_1EAF16A08;
          v12 = v5;
          v13 = 4294954436;
          v14 = 32201;
          goto LABEL_3;
        }

        LODWORD(v255) = 0;
        CFNumberGetValue(v7, kCFNumberFloat32Type, &v255);
        if (v15[841])
        {
          v154 = v255;
          if (*&v255 == *(v15 + 211))
          {
            return;
          }

          if (*(v15 + 12) != 0.0 && dword_1EAF16A10 >= 2)
          {
            LODWORD(rect.origin.x) = 0;
            LOBYTE(v259.origin.x) = 0;
            v155 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            v156 = LODWORD(rect.origin.x);
            v157 = LOBYTE(v259.origin.x);
            if (os_log_type_enabled(v155, LOBYTE(v259.origin.x)))
            {
              v158 = v156;
            }

            else
            {
              v158 = v156 & 0xFFFFFFFE;
            }

            if (v158)
            {
              v171 = *(v15 + 211);
              *v263 = 136315650;
              *&v263[4] = "playerfig_handleSetProperty";
              *&v263[12] = 2048;
              *&v263[14] = v171;
              *&v263[22] = 2048;
              *&v264 = *&v255;
              LODWORD(v252) = 32;
              _os_log_send_and_compose_impl(v158, 0, &keys, 128, &dword_1962D5000, v155, v157, "<<<< FigFilePlayer >>>> %s: Changing MinRateForAudioPlayback from %1.2f to %1.2f => will disturb playback", v263, *&v252, *&v253);
            }

            fig_log_call_emit_and_clean_up_after_send_and_compose();
            v154 = v255;
          }

          v15[841] = 1;
        }

        else
        {
          if (*(v15 + 12) != 0.0 && dword_1EAF16A10 >= 2)
          {
            LODWORD(rect.origin.x) = 0;
            LOBYTE(v259.origin.x) = 0;
            v167 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            v168 = LODWORD(rect.origin.x);
            v169 = LOBYTE(v259.origin.x);
            if (os_log_type_enabled(v167, LOBYTE(v259.origin.x)))
            {
              v170 = v168;
            }

            else
            {
              v170 = v168 & 0xFFFFFFFE;
            }

            if (v170)
            {
              *v263 = 136315394;
              *&v263[4] = "playerfig_handleSetProperty";
              *&v263[12] = 2048;
              *&v263[14] = *&v255;
              LODWORD(v252) = 22;
              _os_log_send_and_compose_impl(v170, 0, &keys, 128, &dword_1962D5000, v167, v169, "<<<< FigFilePlayer >>>> %s: Enabling MinRateForAudioPlayback %1.2f  => will disturb playback", v263, *&v252);
            }

            fig_log_call_emit_and_clean_up_after_send_and_compose();
          }

          v15[841] = 1;
          v154 = v255;
        }

        *(v15 + 211) = v154;
      }

      else
      {
        if (v15[841] != 1)
        {
          return;
        }

        if (*(v15 + 12) != 0.0 && dword_1EAF16A10 >= 2)
        {
          playerfig_handleSetProperty_cold_6();
        }

        v15[841] = 0;
      }

      playerfig_handleSetProperty_cold_7();
      return;
    }

    if (CFEqual(a3, @"MaxRateForAudioPlayback"))
    {
      if (v7)
      {
        v161 = CFNumberGetTypeID();
        if (v161 != CFGetTypeID(v7))
        {
          v11 = qword_1EAF16A08;
          v12 = v5;
          v13 = 4294954436;
          v14 = 32237;
          goto LABEL_3;
        }

        LODWORD(v255) = 0;
        CFNumberGetValue(v7, kCFNumberFloat32Type, &v255);
        if (v15[842])
        {
          v162 = v255;
          if (*(v15 + 212) == *&v255)
          {
            return;
          }

          if (*(v15 + 12) != 0.0 && dword_1EAF16A10 >= 2)
          {
            LODWORD(rect.origin.x) = 0;
            LOBYTE(v259.origin.x) = 0;
            v163 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            v164 = LODWORD(rect.origin.x);
            v165 = LOBYTE(v259.origin.x);
            if (os_log_type_enabled(v163, LOBYTE(v259.origin.x)))
            {
              v166 = v164;
            }

            else
            {
              v166 = v164 & 0xFFFFFFFE;
            }

            if (v166)
            {
              v178 = *(v15 + 212);
              *v263 = 136315650;
              *&v263[4] = "playerfig_handleSetProperty";
              *&v263[12] = 2048;
              *&v263[14] = v178;
              *&v263[22] = 2048;
              *&v264 = *&v255;
              LODWORD(v252) = 32;
              _os_log_send_and_compose_impl(v166, 0, &keys, 128, &dword_1962D5000, v163, v165, "<<<< FigFilePlayer >>>> %s: Changing MaxRateForAudioPlayback from %1.2f to %1.2f => will disturb playback", v263, *&v252, *&v253);
            }

            fig_log_call_emit_and_clean_up_after_send_and_compose();
            v162 = v255;
          }

          v15[842] = 1;
        }

        else
        {
          if (*(v15 + 12) != 0.0 && dword_1EAF16A10 >= 2)
          {
            LODWORD(rect.origin.x) = 0;
            LOBYTE(v259.origin.x) = 0;
            v174 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            v175 = LODWORD(rect.origin.x);
            v176 = LOBYTE(v259.origin.x);
            if (os_log_type_enabled(v174, LOBYTE(v259.origin.x)))
            {
              v177 = v175;
            }

            else
            {
              v177 = v175 & 0xFFFFFFFE;
            }

            if (v177)
            {
              *v263 = 136315394;
              *&v263[4] = "playerfig_handleSetProperty";
              *&v263[12] = 2048;
              *&v263[14] = *&v255;
              LODWORD(v252) = 22;
              _os_log_send_and_compose_impl(v177, 0, &keys, 128, &dword_1962D5000, v174, v176, "<<<< FigFilePlayer >>>> %s: Enabling MaxRateForAudioPlayback %1.2f  => will disturb playback", v263, *&v252);
            }

            fig_log_call_emit_and_clean_up_after_send_and_compose();
          }

          v15[842] = 1;
          v162 = v255;
        }

        *(v15 + 212) = v162;
      }

      else
      {
        if (v15[842] != 1)
        {
          return;
        }

        if (*(v15 + 12) != 0.0 && dword_1EAF16A10 >= 2)
        {
          playerfig_handleSetProperty_cold_8();
        }

        v15[842] = 0;
      }

      playerfig_handleSetProperty_cold_9();
      return;
    }

    if (CFEqual(a3, @"MasterClock"))
    {
      if (v7)
      {
        v172 = CFGetTypeID(v7);
        if (v172 != CMClockGetTypeID())
        {
          v11 = qword_1EAF16A08;
          v12 = v5;
          v13 = 4294954436;
          v14 = 32244;
          goto LABEL_3;
        }

        v173 = *(v15 + 11);
        if (v173 == v7)
        {
          return;
        }

        *(v15 + 11) = v7;
        CFRetain(v7);
        if (!v173)
        {
LABEL_489:
          playerfig_handleSetProperty_cold_10();
          return;
        }
      }

      else
      {
        v173 = *(v15 + 11);
        if (!v173)
        {
          return;
        }

        *(v15 + 11) = 0;
      }

      CFRelease(v173);
      goto LABEL_489;
    }

    if (CFEqual(a3, @"SendToNero"))
    {
      if (!v7 || (v179 = CFDictionaryGetTypeID(), v179 != CFGetTypeID(v7)))
      {
        v11 = qword_1EAF16A08;
        v12 = v5;
        v13 = 4294954436;
        v14 = 32283;
        goto LABEL_3;
      }

      v180 = CFDictionaryGetValue(v7, @"Visuals");
      if (v180 && (v181 = v180, v182 = v15[130], v182 != CFBooleanGetValue(v180)))
      {
        v188 = CFBooleanGetValue(v181);
        v15[130] = v188;
        v183 = (v15[131] | v188) == 0;
      }

      else
      {
        v183 = 1;
      }

      FigSimpleMutexLock();
      if (v15[130])
      {
        v189 = CFDictionaryGetValue(v7, @"NeroTransport");
        if (v189)
        {
          v190 = *(v15 + 21);
          *(v15 + 21) = v189;
          CFRetain(v189);
          if (v190)
          {
            CFRelease(v190);
          }
        }

        else
        {
          FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v251, v252, v253);
        }
      }

      else
      {
        v199 = *(v15 + 21);
        if (v199)
        {
          CFRelease(v199);
          *(v15 + 21) = 0;
        }
      }

      FigSimpleMutexUnlock();
      if (!v183)
      {
        playerfig_handleSetProperty_cold_11();
      }

      return;
    }

    if (CFEqual(a3, @"NeroDisplaySize"))
    {
      if (!v7 || (v184 = CFDictionaryGetTypeID(), v184 != CFGetTypeID(v7)))
      {
        v11 = qword_1EAF16A08;
        v12 = v5;
        v13 = 4294954436;
        v14 = 32332;
        goto LABEL_3;
      }

      keys = *MEMORY[0x1E695F060];
      if (!CGSizeMakeWithDictionaryRepresentation(v7, &keys))
      {
        FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF16A08, 4294954436, "<<<< FigFilePlayer >>>>", 32329, v5);
        return;
      }

      if (keys.width == *(v15 + 17) && keys.height == *(v15 + 18))
      {
        return;
      }

      *(v15 + 136) = keys;
      v185 = *(v15 + 67);
      if (!v185 || (!v15[130] || !v15[131]) && !v15[194])
      {
        return;
      }

      v186 = *(v15 + 76);
      if (!v186 || !fp_setDisplaySizeAndItemVideoSizeOnTextRenderPipeline(*(v15 + 17), *(v15 + 18), v186, *(v15 + 19), v185))
      {
        v187 = *(v15 + 75);
        if (v187)
        {
          fp_setDisplaySizeAndItemVideoSizeOnTextRenderPipeline(*(v15 + 17), *(v15 + 18), v187, *(v15 + 19), *(v15 + 67));
        }
      }

      v196 = CMBaseObjectGetDerivedStorage();
      if (!*(v196 + 1904))
      {
        return;
      }

      v197 = v196;
      DictionaryRepresentation = CGSizeCreateDictionaryRepresentation(*(v15 + 136));
      if (!DictionaryRepresentation)
      {
        return;
      }

      v76 = DictionaryRepresentation;
      FigOutOfBandTrackControllerSetProperty(*(v197 + 1904), @"NeroDisplaySize", DictionaryRepresentation);
      goto LABEL_136;
    }

    if (CFEqual(a3, @"NeroVideoGravity"))
    {
      if (v7)
      {
        v191 = CFStringGetTypeID();
        if (v191 != CFGetTypeID(v7))
        {
          v11 = qword_1EAF16A08;
          v12 = v5;
          v13 = 4294954436;
          v14 = 32368;
          goto LABEL_3;
        }
      }

      if (!FigCFEqual())
      {
        v192 = *(v15 + 19);
        *(v15 + 19) = v7;
        if (v7)
        {
          CFRetain(v7);
        }

        if (v192)
        {
          CFRelease(v192);
        }

        if (*(v15 + 67) && (v15[130] && v15[131] || v15[194]))
        {
          if (*(v15 + 74))
          {
            v193 = *(v15 + 19);
            FigRenderPipelineGetFigBaseObject();
            v195 = CMBaseObjectSetProperty(v194, @"NeroVideoGravity", v193);
          }

          else
          {
            v195 = 0;
          }

          v201 = *(v15 + 76);
          if (v201)
          {
            v195 = fp_setDisplaySizeAndItemVideoSizeOnTextRenderPipeline(*(v15 + 17), *(v15 + 18), v201, *(v15 + 19), *(v15 + 67));
          }

          if (!v195)
          {
            v202 = *(v15 + 75);
            if (v202)
            {
              fp_setDisplaySizeAndItemVideoSizeOnTextRenderPipeline(*(v15 + 17), *(v15 + 18), v202, *(v15 + 19), *(v15 + 67));
            }
          }

          v207 = *(CMBaseObjectGetDerivedStorage() + 1904);
          if (v207)
          {
            FigOutOfBandTrackControllerSetProperty(v207, @"NeroVideoGravity", *(v15 + 19));
          }
        }
      }

      return;
    }

    if (CFEqual(a3, @"ProhibitAMR"))
    {
      if (v7)
      {
        v200 = CFGetTypeID(v7);
        if (v200 == CFBooleanGetTypeID())
        {
          v15[896] = CFBooleanGetValue(v7);
          return;
        }
      }

      v11 = qword_1EAF16A08;
      v12 = v5;
      v13 = 4294954516;
      v14 = 32375;
      goto LABEL_3;
    }

    if (CFEqual(a3, @"AllowPixelBufferPoolSharing"))
    {
      if (!v7 || (v203 = CFGetTypeID(v7), v203 != CFBooleanGetTypeID()) && (v204 = CFGetTypeID(v7), v204 != CFNumberGetTypeID()))
      {
        v11 = qword_1EAF16A08;
        v12 = v5;
        v13 = 4294954516;
        v14 = 32383;
        goto LABEL_3;
      }

      v205 = *(v15 + 113);
      *(v15 + 113) = v7;
      CFRetain(v7);
      if (v205)
      {
        v206 = v205;
LABEL_725:
        CFRelease(v206);
      }

      return;
    }

    if (CFEqual(a3, @"OptionsForPreWiringPixelBuffers"))
    {
      keys = *MEMORY[0x1E695F060];
      if (v7 && !FigCFDictionaryGetCGSizeIfPresent())
      {
        FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF16A08, 4294954436, "<<<< FigFilePlayer >>>>", 32403, v5);
        return;
      }

      v87 = SecTaskCopyValueForEntitlement(*(v15 + 110), @"com.apple.coremedia.allow-pre-wiring-pixel-buffers", 0);
      if (v87 == *MEMORY[0x1E695E4D0])
      {
        FigSimpleMutexLock();
        v210 = *(v15 + 115);
        v211 = values;
        *(v15 + 115) = values;
        if (v211)
        {
          CFRetain(v211);
        }

        if (v210)
        {
          CFRelease(v210);
        }

        FigSimpleMutexUnlock();
        playerfig_preWirePixelBuffersIfNeeded(a1, 0);
      }

      else
      {
        FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v251, v252, v253);
      }

      if (!v87)
      {
        return;
      }

      goto LABEL_207;
    }

    if (CFEqual(a3, @"PrepareItemOnDispatchQueue"))
    {
      return;
    }

    if (CFEqual(a3, @"AllowOutOfBandTextTrackRendering"))
    {
      if (!v7 || (v208 = CFGetTypeID(v7), v208 != CFBooleanGetTypeID()))
      {
        v11 = qword_1EAF16A08;
        v12 = v5;
        v13 = 4294954436;
        v14 = 32421;
        goto LABEL_3;
      }

      v209 = CFBooleanGetValue(v7);
      if (v209 == v15[193])
      {
        return;
      }

      v15[193] = v209;
      keys = *MEMORY[0x1E6960C70];
      v269 = *(MEMORY[0x1E6960C70] + 16);
      *v263 = keys;
      *&v263[16] = v269;
      goto LABEL_321;
    }

    if (CFEqual(a3, @"OutOfBandTextRenderingForNeroVideo"))
    {
      if (v7)
      {
        v212 = CFGetTypeID(v7);
        if (v212 == CFBooleanGetTypeID())
        {
          v15[194] = CFBooleanGetValue(v7);
          return;
        }
      }

      v11 = qword_1EAF16A08;
      v12 = v5;
      v13 = 4294954436;
      v14 = 32430;
      goto LABEL_3;
    }

    if (!CFEqual(a3, @"MultichannelAudioStrategy"))
    {
      if (CFEqual(a3, @"BufferedAirPlayOutput"))
      {
        if (v7)
        {
          v219 = CFGetTypeID(v7);
          if (v219 != FigBufferedAirPlayOutputGetTypeID(v219, v220))
          {
            v11 = qword_1EAF16A08;
            v12 = v5;
            v13 = 4294954436;
            v14 = 32505;
            goto LABEL_3;
          }
        }

        if (FigCFEqual())
        {
          return;
        }

        FigSimpleMutexLock();
        v221 = *(v15 + 22);
        *(v15 + 22) = v7;
        if (v7)
        {
          CFRetain(v7);
        }

        if (v221)
        {
          CFRelease(v221);
        }

        if (!*(v15 + 22))
        {
          v15[192] = 1;
          FigSimpleMutexUnlock();
          itemfig_reportingAgentReportBufferedAirPlayMode(*(v15 + 67));
          if (dword_1EAF16A10)
          {
            v222 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            os_log_type_enabled(v222, OS_LOG_TYPE_DEFAULT);
            fig_log_call_emit_and_clean_up_after_send_and_compose();
          }

          return;
        }

        FigSimpleMutexUnlock();
        itemfig_reportingAgentReportBufferedAirPlayMode(*(v15 + 67));
        keys = *MEMORY[0x1E6960C70];
        v269 = *(MEMORY[0x1E6960C70] + 16);
        *v263 = keys;
        *&v263[16] = v269;
        goto LABEL_626;
      }

      if (CFEqual(a3, @"AutomaticallyWaitsToMinimizeStalling"))
      {
        if (!v7 || (v223 = CFGetTypeID(v7), v223 != CFBooleanGetTypeID()))
        {
          v11 = qword_1EAF16A08;
          v12 = v5;
          v13 = 4294954436;
          v14 = 32529;
          goto LABEL_3;
        }

        v224 = CFBooleanGetValue(v7);
        if (v224 != v15[57])
        {
          v15[57] = v224;
          v225 = *(v15 + 67);
          if (v225)
          {
            playerfig_handleSetProperty_cold_13(v225);
          }

          playerfig_updatePlaybackStateAndBossRate(a1, 9, 0);
        }

        return;
      }

      if (CFEqual(a3, @"CaptionPlaybackStrategy"))
      {
        if (v7 && (v226 = CFStringGetTypeID(), v226 == CFGetTypeID(v7)))
        {
          if (CFEqual(v7, @"CoreTextSubtitleRenderer"))
          {
            v15[822] = 1;
            return;
          }

          if (CFEqual(v7, @"CaptionDisplayService"))
          {
            v15[822] = 0;
            return;
          }

          v11 = qword_1EAF16A08;
          v12 = v5;
          v13 = 4294954436;
          v14 = 32549;
        }

        else
        {
          v11 = qword_1EAF16A08;
          v12 = v5;
          v13 = 4294954436;
          v14 = 32551;
        }

        goto LABEL_3;
      }

      if (CFEqual(a3, @"CaptionPipelineStrategy"))
      {
        if (v7 && (v227 = CFStringGetTypeID(), v227 == CFGetTypeID(v7)))
        {
          if (CFEqual(v7, @"CFAttributedStrings"))
          {
            v15[821] = 1;
            return;
          }

          if (CFEqual(v7, @"FigCaptions"))
          {
            v15[821] = 0;
            return;
          }

          v11 = qword_1EAF16A08;
          v12 = v5;
          v13 = 4294954436;
          v14 = 32570;
        }

        else
        {
          v11 = qword_1EAF16A08;
          v12 = v5;
          v13 = 4294954436;
          v14 = 32572;
        }

        goto LABEL_3;
      }

      if (CFEqual(a3, @"ResourceConservationLevelWhenPaused"))
      {
        if (v7)
        {
          v228 = CFGetTypeID(v7);
          if (v228 != CFNumberGetTypeID())
          {
            v11 = qword_1EAF16A08;
            v12 = v5;
            v13 = 4294954516;
            v14 = 32583;
            goto LABEL_3;
          }

          LODWORD(keys.width) = 0;
          CFNumberGetValue(v7, kCFNumberSInt32Type, &keys);
          v229 = LODWORD(keys.width);
        }

        else
        {
          v229 = 0;
          LODWORD(keys.width) = 0;
        }

        playerfig_setResourceConservationLevelAndUpdateWhenPaused(a1, v229);
        return;
      }

      if (CFEqual(a3, @"AutomaticallyResumesRenderingAfterConfigurationChange"))
      {
        if (v7)
        {
          v230 = CFGetTypeID(v7);
          if (v230 == CFBooleanGetTypeID())
          {
            v15[58] = *MEMORY[0x1E695E4D0] == v7;
            return;
          }
        }

        v11 = qword_1EAF16A08;
        v12 = v5;
        v13 = 4294954436;
        v14 = 32590;
        goto LABEL_3;
      }

      if (CFEqual(a3, @"AssumeItemsWaitingToPlayWhilePlayerPaused"))
      {
        if (v7)
        {
          v231 = CFGetTypeID(v7);
          if (v231 == CFBooleanGetTypeID())
          {
            v15[59] = *MEMORY[0x1E695E4D0] == v7;
            return;
          }
        }

        v11 = qword_1EAF16A08;
        v12 = v5;
        v13 = 4294954436;
        v14 = 32597;
        goto LABEL_3;
      }

      if (CFEqual(a3, @"SuppressAudioRendering"))
      {
        if (!v7 || (v232 = CFGetTypeID(v7), v232 != CFBooleanGetTypeID()))
        {
          v11 = qword_1EAF16A08;
          v12 = v5;
          v13 = 4294954436;
          v14 = 32611;
          goto LABEL_3;
        }

        v233 = *MEMORY[0x1E695E4D0] == v7;
        if (v15[1137] != v233)
        {
          if (dword_1EAF16A10)
          {
            v234 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            os_log_type_enabled(v234, OS_LOG_TYPE_DEFAULT);
            fig_log_call_emit_and_clean_up_after_send_and_compose();
          }

          v15[1137] = v233;
          playerfig_rebuildRenderPipelines_disturbIfInLameDuckGap(a1);
        }

        return;
      }

      if (CFEqual(a3, @"PlayerRole"))
      {
        if (v7)
        {
          v235 = CFGetTypeID(v7);
          if (v235 != CFStringGetTypeID())
          {
            v11 = qword_1EAF16A08;
            v12 = v5;
            v13 = 4294954436;
            v14 = 32620;
            goto LABEL_3;
          }

          v239 = *(v15 + 148);
          *(v15 + 148) = v7;
          CFRetain(v7);
        }

        else
        {
          v239 = *(v15 + 148);
          *(v15 + 148) = 0;
        }

        if (v239)
        {
          CFRelease(v239);
        }

        playerfig_updateResourceUsageOnGlobalResourceArbiter(a1, *(v15 + 67));
        return;
      }

      if (!CFEqual(a3, @"IgnoreAudioDeviceLatencyInStartupSync"))
      {
        if (CFEqual(a3, @"PreferredMaximumBufferDuration"))
        {
          if (v7)
          {
            v240 = CFGetTypeID(v7);
            if (v240 == CFNumberGetTypeID())
            {
              LODWORD(keys.width) = 0;
              CFNumberGetValue(v7, kCFNumberSInt32Type, &keys);
              if ((LODWORD(keys.width) & 0x80000000) != 0)
              {
                FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF16A08, 4294954436, "<<<< FigFilePlayer >>>>", 32645, v5);
              }

              else
              {
                *(v15 + 298) = LODWORD(keys.width);
                playerfig_configureDownloadInPlayQueueAndItemsToPrebuffer(a1);
              }

              return;
            }
          }

          v11 = qword_1EAF16A08;
          v12 = v5;
          v13 = 4294954436;
          v14 = 32648;
          goto LABEL_3;
        }

        if (CFEqual(a3, @"ItemsToPrebuffer"))
        {
          if (v7 && (v241 = CFGetTypeID(v7), v241 != CFArrayGetTypeID()))
          {
            playerfig_handleSetProperty_cold_14(&keys);
          }

          else
          {
            v242 = 0;
            if (!v7)
            {
              goto LABEL_697;
            }

LABEL_696:
            for (i = CFArrayGetCount(v7); v242 < i; i = 0)
            {
              ValueAtIndex = CFArrayGetValueAtIndex(v7, v242);
              if (!ValueAtIndex || (v245 = CFGetTypeID(ValueAtIndex), v245 != FigPlaybackItemGetTypeID()))
              {
                playerfig_handleSetProperty_cold_16(&keys);
                return;
              }

              if (CMBaseObjectGetVTable() != &kFigPlaybackItemFigVTable_0)
              {
                playerfig_handleSetProperty_cold_15(&keys);
                return;
              }

              CMBaseObjectGetDerivedStorage();
              v246 = FigCFWeakReferenceHolderCopyReferencedObject();
              v247 = v246;
              if (v246 != a1)
              {
                FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v251, v252, v253);
                if (!v247)
                {
                  return;
                }

                v77 = v247;
                goto LABEL_137;
              }

              if (a1)
              {
                CFRelease(v246);
              }

              ++v242;
              if (v7)
              {
                goto LABEL_696;
              }

LABEL_697:
              ;
            }

            FigSimpleMutexLock();
            v248 = *(v15 + 150);
            if (v248)
            {
              v250 = CFRetain(v248);
              v249 = *(v15 + 150);
            }

            else
            {
              v249 = 0;
              v250 = 0;
            }

            *(v15 + 150) = v7;
            if (v7)
            {
              CFRetain(v7);
            }

            if (v249)
            {
              CFRelease(v249);
            }

            playerfig_cancelItemsToPrebuffer(a1, v250, *(v15 + 150));
            playerfig_configureDownloadInPlayQueueAndItemsToPrebuffer(a1);
            FigSimpleMutexUnlock();
            if (v250)
            {
              v206 = v250;
              goto LABEL_725;
            }
          }
        }

        return;
      }

      if (!v7 || (v236 = CFGetTypeID(v7), v236 != CFBooleanGetTypeID()))
      {
        v11 = qword_1EAF16A08;
        v12 = v5;
        v13 = 4294954436;
        v14 = 32634;
        goto LABEL_3;
      }

      v237 = *MEMORY[0x1E695E4D0] == v7;
      if (v15[1139] == v237)
      {
        return;
      }

      if (dword_1EAF16A10)
      {
        LODWORD(v255) = 0;
        LOBYTE(rect.origin.x) = 0;
        v238 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(v238, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      v15[1139] = v237;
      fp_setPropertyOnAllAudioRenderPipelines();
      keys = *MEMORY[0x1E6960C70];
      v269 = *(MEMORY[0x1E6960C70] + 16);
      *v263 = keys;
      *&v263[16] = v269;
LABEL_321:
      playerfig_stopResetDisturbReprepareAndResumeWithTransaction();
      return;
    }

    if (!v7 || (v213 = CFStringGetTypeID(), v213 != CFGetTypeID(v7)))
    {
      v11 = qword_1EAF16A08;
      v12 = v5;
      v13 = 4294954436;
      v14 = 32468;
      goto LABEL_3;
    }

    if (!CFEqual(v7, @"MatchMultichannelTrackPreferenceToAudioDevice") && !CFEqual(v7, @"PreferStereo") && !CFEqual(v7, @"PreferExclusivePassthrough") && !CFEqual(v7, @"PreferAC3ViaExclusivePassthrough"))
    {
      v11 = qword_1EAF16A08;
      v12 = v5;
      v13 = 4294954436;
      v14 = 32466;
      goto LABEL_3;
    }

    if (CFEqual(v7, *(v15 + 118)))
    {
      return;
    }

    v214 = *(v15 + 118);
    *(v15 + 118) = v7;
    CFRetain(v7);
    if (v214)
    {
      CFRelease(v214);
    }

    v215 = CFEqual(v7, @"PreferExclusivePassthrough");
    v217 = v215;
    if (v215)
    {
      FPSupport_ReleasePassthroughHelper(v215, v216);
    }

    if (CFEqual(v7, @"PreferAC3ViaExclusivePassthrough"))
    {
      FPSupport_ReleasePassthroughHelper(1633889587, v218);
    }

    else if (!(v15[960] | v217))
    {
LABEL_616:
      v108 = a1;
      v109 = 1;
      goto LABEL_265;
    }

    playerfig_handleSetProperty_cold_12();
    goto LABEL_616;
  }

  if (v7)
  {
    v16 = CFDictionaryGetTypeID();
    if (v16 != CFGetTypeID(v7))
    {
      v11 = qword_1EAF16A08;
      v12 = v5;
      v13 = 4294954516;
      v14 = 31340;
      goto LABEL_3;
    }
  }

  v17 = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  v18 = FigCFEqual();
  v19 = *(v17 + 504);
  *(v17 + 504) = v7;
  if (v7)
  {
    CFRetain(v7);
  }

  if (v19)
  {
    CFRelease(v19);
  }

  FigSimpleMutexUnlock();
  if (!v18)
  {
    playerfig_rebuildRenderPipelines_disturbIfInLameDuckGapOrMainVideoStillEnabled(a1, 0, 0);
  }
}

uint64_t playerfig_removeExcessImageQueuesAndSlotsFromAllWorkingOrLameDuckItems(uint64_t a1, const void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  if (*(DerivedStorage + 536))
  {
    v48.length = CFArrayGetCount(*(DerivedStorage + 528));
    v48.location = 0;
    FirstIndexOfValue = CFArrayGetFirstIndexOfValue(*(DerivedStorage + 528), v48, *(DerivedStorage + 536));
    if ((FirstIndexOfValue & 0x8000000000000000) == 0)
    {
      v3 = 0;
      v37 = *MEMORY[0x1E695E480];
      v38 = DerivedStorage;
      do
      {
        ValueAtIndex = CFArrayGetValueAtIndex(*(DerivedStorage + 528), v3);
        v5 = CMBaseObjectGetDerivedStorage();
        v6 = FigCFWeakReferenceHolderCopyReferencedObject();
        cf = 0;
        v47 = 0;
        if (*v5)
        {
          v7 = 1;
        }

        else
        {
          v7 = v6 == 0;
        }

        v44 = v6;
        if (v7)
        {
          v17 = 0;
          v13 = 0;
          v12 = 0;
          Mutable = 0;
          v10 = 0;
          v14 = 0;
          ConcatenationOfTwoArrays = 0;
          v16 = 0;
          goto LABEL_63;
        }

        v8 = v6;
        v9 = CMBaseObjectGetDerivedStorage();
        if (!itemfig_shouldEnableMainVideo(ValueAtIndex))
        {
          v13 = 0;
          v12 = 0;
          Mutable = 0;
          v10 = 0;
          v14 = 0;
          ConcatenationOfTwoArrays = 0;
          v16 = 0;
          v17 = 4294954433;
          goto LABEL_63;
        }

        v42 = v3;
        CFGetAllocator(v8);
        fp_visualContextArrayIfVideoOutputAllowed(*(v5 + 1776), *(v5 + 1200));
        MutableCopy = FigCFArrayCreateMutableCopy();
        if (!MutableCopy)
        {
          playerfig_removeExcessImageQueuesAndSlotsFromAllWorkingOrLameDuckItems_cold_4(&v45);
          v13 = 0;
          v12 = 0;
          Mutable = 0;
          v10 = 0;
          v14 = 0;
          ConcatenationOfTwoArrays = 0;
          v16 = 0;
          v17 = v45;
          goto LABEL_63;
        }

        if (FigUseVideoReceiverForCALayer())
        {
          v10 = 0;
          Mutable = 0;
          v12 = 0;
          v13 = 0;
          goto LABEL_33;
        }

        v18 = *(v5 + 1144);
        if (v18)
        {
          Count = CFArrayGetCount(v18);
        }

        else
        {
          Count = 0;
        }

        v20 = v9[28];
        v21 = v9[26];
        if (v21)
        {
          v21 = CFArrayGetCount(v21);
        }

        v22 = v21 + v20;
        if (v22 > Count)
        {
          playerfig_removeExcessImageQueuesAndSlotsFromAllWorkingOrLameDuckItems_cold_3(&v45);
          v13 = 0;
          v12 = 0;
          Mutable = 0;
          v10 = 0;
          v14 = 0;
          ConcatenationOfTwoArrays = 0;
          v17 = v45;
          v3 = v42;
          v16 = MutableCopy;
          goto LABEL_63;
        }

        v13 = FigCFArrayCreateMutableCopy();
        Mutable = CFArrayCreateMutable(v37, 0, MEMORY[0x1E695E9C0]);
        v23 = *(v5 + 1152);
        if (v23 && CFArrayGetCount(v23) >= 1)
        {
          v12 = FigCFArrayCreateMutableCopy();
          v10 = CFArrayCreateMutable(v37, 0, MEMORY[0x1E695E9C0]);
          if (v13)
          {
            goto LABEL_24;
          }
        }

        else
        {
          v10 = 0;
          v12 = 0;
          if (v13)
          {
LABEL_24:
            v24 = CFArrayGetCount(v13);
            goto LABEL_26;
          }
        }

        v24 = 0;
LABEL_26:
        while (v24 > v22)
        {
          v25 = CFArrayGetValueAtIndex(v13, --v24);
          CFArrayAppendValue(Mutable, v25);
          CFArrayRemoveValueAtIndex(v13, v24);
        }

        if (v12)
        {
          v26 = CFArrayGetCount(v12);
        }

        else
        {
          v26 = 0;
        }

        while (v26 > v22)
        {
          v27 = CFArrayGetValueAtIndex(v12, --v26);
          CFArrayAppendValue(v10, v27);
          CFArrayRemoveValueAtIndex(v12, v26);
        }

        FigCFArrayAppendArray();
LABEL_33:
        v3 = v42;
        FigSimpleMutexLock();
        v28 = v9[33];
        if (v28)
        {
          v29 = CFRetain(v28);
          FigSimpleMutexUnlock();
          if (v29 && CFArrayGetCount(v29) >= 1)
          {
            FigCFArrayAppendArray();
          }
        }

        else
        {
          FigSimpleMutexUnlock();
          v29 = 0;
        }

        if (*(v5 + 656))
        {
          v47 = *(v5 + 832);
          *(v5 + 832) = 0;
          matched = FigImageQueueTableUpdateToMatchOutputsArray(*(v5 + 848), MutableCopy, *(v5 + 328), 0, 0, 0);
          if (!matched)
          {
            FigImageQueueTableSetTimebase(*(v5 + 848), *(v5 + 328));
            FigImageQueueTableCopyFigImageQueueArray(*(v5 + 848), &cf);
            matched = FPSupport_AppendDeferredTransactionChangeForSettingFigImageQueuesOnComposition(a2, cf, *(v5 + 824), "itemfig_removeExcessImageQueuesAndSlots");
          }

          itemfig_removeImageQueueListenersForObsoleteImageQueues();
          *(v5 + 832) = cf;
          cf = 0;
        }

        else
        {
          v30 = *(v5 + 1040);
          if (v30)
          {
            v45 = 0;
            itemfig_getTrackStorage(ValueAtIndex, v30, &v45);
            v35 = v45;
            matched = FigImageQueueTableCopyFigImageQueueArray(*(v45 + 48), &v47);
            if (!matched)
            {
              matched = FigImageQueueTableUpdateToMatchOutputsArray(*(v35 + 48), MutableCopy, *(v5 + 328), 0, 0, 0);
              if (!matched)
              {
                FigImageQueueTableSetTimebase(*(v35 + 48), *(v5 + 328));
                FigImageQueueTableCopyFigImageQueueArray(*(v35 + 48), &cf);
                matched = FPSupport_AppendDeferredTransactionChangeForSettingFigImageQueuesOnRenderPipeline(a2, cf, *(v35 + 16), "itemfig_removeExcessImageQueuesAndSlots");
              }
            }

            v3 = v42;
            itemfig_removeImageQueueListenersForObsoleteImageQueues();
          }

          else
          {
            matched = 0;
          }
        }

        if (!v10 || CFArrayGetCount(v10) < 1)
        {
          ConcatenationOfTwoArrays = 0;
          v14 = 0;
LABEL_51:
          FigSimpleMutexLock();
          v33 = *(v5 + 1144);
          *(v5 + 1144) = v13;
          if (v13)
          {
            CFRetain(v13);
          }

          if (v33)
          {
            CFRelease(v33);
          }

          v34 = *(v5 + 1152);
          *(v5 + 1152) = v12;
          if (v12)
          {
            CFRetain(v12);
          }

          if (v34)
          {
            CFRelease(v34);
          }

          FigSimpleMutexUnlock();
          v17 = matched;
          goto LABEL_60;
        }

        ConcatenationOfTwoArrays = FigCFArrayCreateConcatenationOfTwoArrays();
        if (ConcatenationOfTwoArrays)
        {
          v14 = FigCFArrayCreateConcatenationOfTwoArrays();
          if (v14)
          {
            v31 = v9[109];
            v9[109] = ConcatenationOfTwoArrays;
            CFRetain(ConcatenationOfTwoArrays);
            if (v31)
            {
              CFRelease(v31);
            }

            v32 = v9[108];
            v9[108] = v14;
            CFRetain(v14);
            if (v32)
            {
              CFRelease(v32);
            }

            v3 = v42;
            goto LABEL_51;
          }

          playerfig_removeExcessImageQueuesAndSlotsFromAllWorkingOrLameDuckItems_cold_1(&v45);
        }

        else
        {
          playerfig_removeExcessImageQueuesAndSlotsFromAllWorkingOrLameDuckItems_cold_2(&v45);
          v14 = 0;
        }

        v17 = v45;
LABEL_60:
        v16 = MutableCopy;
        if (v29)
        {
          CFRelease(v29);
        }

        DerivedStorage = v38;
LABEL_63:
        if (cf)
        {
          CFRelease(cf);
        }

        if (v47)
        {
          CFRelease(v47);
        }

        if (v16)
        {
          CFRelease(v16);
        }

        if (v12)
        {
          CFRelease(v12);
        }

        if (v13)
        {
          CFRelease(v13);
        }

        if (v10)
        {
          CFRelease(v10);
        }

        if (ConcatenationOfTwoArrays)
        {
          CFRelease(ConcatenationOfTwoArrays);
        }

        if (v14)
        {
          CFRelease(v14);
        }

        FPSupport_AppendDeferredTransactionChangeToRelease(a2, Mutable);
        if (v44)
        {
          CFRelease(v44);
        }

        if (v17)
        {
          goto LABEL_99;
        }

        v7 = v3++ == FirstIndexOfValue;
      }

      while (!v7);
    }
  }

  v17 = 0;
LABEL_99:
  FigSimpleMutexUnlock();
  return v17;
}

uint64_t playerfig_gracefullyAddImageQueues(uint64_t a1, const void *a2)
{
  videoDesc[16] = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  if (*(DerivedStorage + 52) != 4)
  {
    if (!dword_1EAF16A10)
    {
LABEL_92:
      matched = 4294954433;
      goto LABEL_77;
    }

LABEL_88:
    LODWORD(cf) = 0;
    LOBYTE(value) = 0;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    goto LABEL_92;
  }

  v4 = *(DerivedStorage + 536);
  if (v4 != CFArrayGetValueAtIndex(*(DerivedStorage + 528), 0))
  {
    if (!dword_1EAF16A10)
    {
      goto LABEL_92;
    }

    goto LABEL_88;
  }

  v5 = *(DerivedStorage + 536);
  v6 = CMBaseObjectGetDerivedStorage();
  v7 = FigCFWeakReferenceHolderCopyReferencedObject();
  v8 = v7;
  videoDesc[0] = 0;
  cf = 0;
  v54[0] = 0;
  if (*v6)
  {
    v9 = 1;
  }

  else
  {
    v9 = v7 == 0;
  }

  if (!v9)
  {
    v10 = CMBaseObjectGetDerivedStorage();
    if (FigUseVideoReceiverForCALayer())
    {
      v11 = 0;
      v12 = 0;
      Count = 0;
    }

    else
    {
      v14 = *(v6 + 1144);
      if (v14)
      {
        Count = CFArrayGetCount(v14);
      }

      else
      {
        Count = 0;
      }

      v11 = *(v10 + 224);
      v15 = *(v10 + 208);
      if (v15)
      {
        v12 = CFArrayGetCount(v15);
      }

      else
      {
        v12 = 0;
      }
    }

    FigSimpleMutexLock();
    v16 = *(v10 + 264);
    if (v16)
    {
      v17 = CFRetain(v16);
    }

    else
    {
      v17 = 0;
    }

    FigSimpleMutexUnlock();
    if (!*(v6 + 1040))
    {
      playerfig_gracefullyAddImageQueues_cold_1(&value);
      v20 = 0;
      v21 = 0;
      MutableCopy = 0;
      matched = value;
      goto LABEL_61;
    }

    v18 = *(v6 + 392);
    if (!v18 || CFArrayGetCount(v18) < 1)
    {
      v20 = 0;
      v21 = 0;
      MutableCopy = 0;
      matched = 4294954433;
      goto LABEL_61;
    }

    v48 = Count;
    v49 = v12;
    CFGetAllocator(v8);
    fp_visualContextArrayIfVideoOutputAllowed(*(v6 + 1776), *(v6 + 1200));
    MutableCopy = FigCFArrayCreateMutableCopy();
    v46 = a2;
    v47 = v5;
    if (FigUseVideoReceiverForCALayer())
    {
      v20 = 0;
      v21 = 0;
LABEL_23:
      FigCFArrayAppendArray();
      if (*(v6 + 656))
      {
        matched = FigImageQueueTableUpdateToMatchOutputsArray(*(v6 + 848), MutableCopy, *(v6 + 328), 0, 0, 0);
        if (!matched)
        {
          FigImageQueueTableSetTimebase(*(v6 + 848), *(v6 + 328));
          FigImageQueueTableCopyFigImageQueueArray(*(v6 + 848), &cf);
          v39 = MEMORY[0x1E695E4D0];
          if (!*(v10 + 240))
          {
            v39 = MEMORY[0x1E695E4C0];
          }

          FigImageQueueArraySetProperty(cf, @"PreventDisplaySleepDuringVideoPlayback", *v39);
          v40 = *(v6 + 1184);
          if (v40)
          {
            itemfig_setVideoEnhancementModeOnImageQueues(v47, v40);
          }

          itemfig_enableImageQueueTimingAndSetDurationOnFigImageQueueArray();
          matched = FPSupport_AppendDeferredTransactionChangeForSettingFigImageQueuesOnComposition(v46, cf, *(v6 + 824), "itemfig_gracefullyAddImageQueuesForCurrentVideoOutputsToImageQueueTable");
        }

        v23 = *(v6 + 832);
        v24 = cf;
        *(v6 + 832) = cf;
        if (v24)
        {
          CFRetain(v24);
        }

        if (v23)
        {
          CFRelease(v23);
        }

        goto LABEL_34;
      }

      v25 = *(v6 + 1040);
      if (!v25)
      {
        matched = 0;
LABEL_34:
        if (!FigUseVideoReceiverForCALayer())
        {
          FigSimpleMutexLock();
          v26 = *(v6 + 1144);
          *(v6 + 1144) = v20;
          if (v20)
          {
            CFRetain(v20);
          }

          if (v26)
          {
            CFRelease(v26);
          }

          v27 = *(v6 + 1152);
          *(v6 + 1152) = v21;
          if (v21)
          {
            CFRetain(v21);
          }

          if (v27)
          {
            CFRelease(v27);
          }

          FigSimpleMutexUnlock();
        }

        goto LABEL_61;
      }

      value = 0;
      TrackStorage = itemfig_getTrackStorage(v47, v25, &value);
      if (!TrackStorage)
      {
        v42 = value;
        matched = FigImageQueueTableUpdateToMatchOutputsArray(*(value + 6), MutableCopy, *(v6 + 328), 0, 0, 0);
        if (!matched)
        {
          FigImageQueueTableSetTimebase(*(v42 + 6), *(v6 + 328));
          FigImageQueueTableCopyFigImageQueueArray(*(v42 + 6), &cf);
          itemfig_enableImageQueueTimingAndSetDurationOnFigImageQueueArray();
          matched = FPSupport_AppendDeferredTransactionChangeForSettingFigImageQueuesOnRenderPipeline(v46, cf, *(v42 + 2), "itemfig_gracefullyAddImageQueuesForCurrentVideoOutputsToImageQueueTable");
        }

        goto LABEL_34;
      }

      matched = TrackStorage;
LABEL_61:
      if (v17)
      {
        CFRelease(v17);
      }

      if (MutableCopy)
      {
        CFRelease(MutableCopy);
      }

      if (v20)
      {
        CFRelease(v20);
      }

      if (v21)
      {
        CFRelease(v21);
      }

      if (cf)
      {
        CFRelease(cf);
      }

      goto LABEL_71;
    }

    if (v11 < 1)
    {
      v50 = 0;
    }

    else
    {
      v50 = FigCFArrayCreateMutableCopy();
    }

    v20 = FigCFArrayCreateMutableCopy();
    v28 = *(v6 + 1008);
    v29 = *(v6 + 1040);
    v30 = *(*(CMBaseObjectGetVTable() + 16) + 56);
    if (v30)
    {
      v44 = MutableCopy;
      v31 = v30(v28, v29, v54, 0);
      if (v31)
      {
        matched = v31;
      }

      else
      {
        v45 = v17;
        v32 = itemfig_copyFormatDescription(v54[0], videoDesc);
        if (!v32)
        {
          Dimensions = CMVideoFormatDescriptionGetDimensions(videoDesc[0]);
          if (v48 < v49 + v11)
          {
            v34 = Dimensions;
            v35 = HIDWORD(Dimensions);
            if (v11 >= 1)
            {
              v36 = &v51;
            }

            else
            {
              v36 = 0;
            }

            v37 = v11 + v49 - v48;
            do
            {
              value = 0;
              v51 = 0;
              FPSupport_EnsureCAImageQueue(&value, v36, v34, v35, 0);
              if (v11 >= 1)
              {
                FigCFArrayAppendInt32();
              }

              CFArrayAppendValue(v20, value);
              if (value)
              {
                CFRelease(value);
              }

              --v37;
            }

            while (v37);
          }

          MutableCopy = v44;
          FigCFArrayAppendArray();
          v17 = v45;
          v21 = v50;
          goto LABEL_23;
        }

        matched = v32;
      }
    }

    else
    {
      matched = 4294954514;
    }

    v21 = v50;
    goto LABEL_61;
  }

  matched = 0;
LABEL_71:
  if (v54[0])
  {
    CFRelease(v54[0]);
  }

  if (videoDesc[0])
  {
    CFRelease(videoDesc[0]);
  }

  if (v8)
  {
    CFRelease(v8);
  }

LABEL_77:
  FigSimpleMutexUnlock();
  return matched;
}

uint64_t playerfig_removeAllImageQueuesFromAllWorkingOrLameDuckItems(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  if (*(DerivedStorage + 536))
  {
    v8.length = CFArrayGetCount(*(DerivedStorage + 528));
    v8.location = 0;
    FirstIndexOfValue = CFArrayGetFirstIndexOfValue(*(DerivedStorage + 528), v8, *(DerivedStorage + 536));
    if ((FirstIndexOfValue & 0x8000000000000000) == 0)
    {
      v3 = 0;
      v4 = FirstIndexOfValue + 1;
      do
      {
        ValueAtIndex = CFArrayGetValueAtIndex(*(DerivedStorage + 528), v3);
        if (FigUseVideoReceiverForCALayer())
        {
          itemfig_clearAllImageQueueTables(ValueAtIndex);
        }

        else
        {
          itemfig_removeAllImageQueues(ValueAtIndex);
        }

        ++v3;
      }

      while (v4 != v3);
    }
  }

  return FigSimpleMutexUnlock();
}

uint64_t playerfig_resetAlreadyPostedFirstVideoFrameEnqueuedNotificationFlagFromAllWorkingOrLameDuckItems(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  if (*(DerivedStorage + 536))
  {
    v7.length = CFArrayGetCount(*(DerivedStorage + 528));
    v7.location = 0;
    FirstIndexOfValue = CFArrayGetFirstIndexOfValue(*(DerivedStorage + 528), v7, *(DerivedStorage + 536));
    if ((FirstIndexOfValue & 0x8000000000000000) == 0)
    {
      v3 = 0;
      v4 = FirstIndexOfValue + 1;
      do
      {
        CFArrayGetValueAtIndex(*(DerivedStorage + 528), v3);
        *(CMBaseObjectGetDerivedStorage() + 914) = 0;
        ++v3;
      }

      while (v4 != v3);
    }
  }

  return FigSimpleMutexUnlock();
}

CFIndex playerfig_mustDisturbPlaybackWhenSettingAudioPropertyOnCurrentItem(uint64_t a1, int a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!*(DerivedStorage + 536))
  {
    return 1;
  }

  v4 = DerivedStorage;
  v5 = *(DerivedStorage + 528);
  if (!v5)
  {
    return 1;
  }

  if (CFArrayGetCount(v5) < 1)
  {
    return 1;
  }

  ValueAtIndex = CFArrayGetValueAtIndex(*(v4 + 528), 0);
  v7 = CMBaseObjectGetDerivedStorage();
  v8 = CMBaseObjectGetDerivedStorage();
  if (a2)
  {
    if (!*(v8 + 352) || *(v8 + 480))
    {
      return 1;
    }
  }

  if (*(v4 + 536) == ValueAtIndex)
  {
    return 0;
  }

  result = *(v7 + 368);
  if (result)
  {
    result = CFArrayGetCount(result);
    if (result)
    {
      if (result <= 1)
      {
        v10 = *(CFArrayGetValueAtIndex(*(v7 + 368), 0) + 3);
        if (v10)
        {
          return v10 != *(v4 + 584);
        }
      }

      return 1;
    }
  }

  return result;
}

void playerfig_setClosedCaptionsDisplayRequested(uint64_t a1, int a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 305) != a2)
  {
    *(DerivedStorage + 305) = a2;
    playerfig_updateClosedCaptionsDisplayForItem(a1, 0);

    playerfig_updateCaptionOrSubtitleHintOnVideoPipeline(a1, 0);
  }
}

void playerfig_setPreferredLanguageLists(uint64_t a1, const void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a2)
  {
    CFRetain(a2);
  }

  FigSimpleMutexLock();
  v4 = *(DerivedStorage + 760);
  *(DerivedStorage + 760) = a2;
  FigSimpleMutexUnlock();
  if (v4)
  {

    CFRelease(v4);
  }
}

uint64_t playerfig_setResourceConservationLevelAndUpdateWhenPaused(uint64_t a1, int a2)
{
  v3 = a1;
  v43 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  if (dword_1EAF16A10)
  {
    HIDWORD(v18) = 0;
    BYTE3(v18) = 0;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  *(DerivedStorage + 68) = a2;
  v6 = *(DerivedStorage + 48);
  result = FigSimpleMutexUnlock();
  if (v6 == 0.0)
  {
    return playerfig_updateEffectiveResourceConservationLevel(v3, v8, v9, v10, v11, v12, v13, v14, v15, v16, v17, SBYTE2(v17), BYTE3(v17), SHIDWORD(v17), v18, *v19, *&v19[8], v20, v21, v22[0], v23, v24[0], v25, v26, v27, v28, v29, v30, v31, v32, v33, v34, v35, v36, v37, v38, v39, v40, v41, v42, v43, v44, v45, v46, v47, v48, v49, v50, v51, v52, v53, v54, v55, vars0, vars8);
  }

  return result;
}

void playerfig_rebuildRenderPipelines_disturbIfInLameDuckGap(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  v3 = *(DerivedStorage + 528);
  if (!v3 || CFArrayGetCount(v3) < 1 || playerfig_isCurrentItemQuiescent(a1) || (playerfig_rebuildRenderPipelines_disturbIfInLameDuckGap_cold_1(DerivedStorage, a1, DerivedStorage + 520) & 1) != 0)
  {
    playerfig_rebuildRenderPipelines_disturbIfInLameDuckGap_cold_2((DerivedStorage + 520));
  }
}

void playerfig_traceVideoTargetEvent(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v11 = *MEMORY[0x1E69E9840];
  theString = 0;
  FigVideoTargetGetCMBaseObject();
  v4 = v3;
  v5 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v5)
  {
    v5(v4, 0x1F0B32A78, *MEMORY[0x1E695E480], &theString);
    v6 = theString;
  }

  else
  {
    v6 = 0;
  }

  if (*MEMORY[0x1E695FF58] == 1)
  {
    *buffer = 0;
    if (v6)
    {
      if (CFStringGetLength(v6) <= 8)
      {
        v7.length = CFStringGetLength(v6);
      }

      else
      {
        v7.length = 8;
      }

      v7.location = 0;
      CFStringGetBytes(v6, v7, 0, 0x3Fu, 0, buffer, 8, 0);
    }

    strncpy(__dst, buffer, 8uLL);
    kdebug_trace();
    v6 = theString;
  }

  if (v6)
  {
    CFRelease(v6);
  }
}

void itemfig_setVideoEnhancementModeOnImageQueues(uint64_t a1, uint64_t a2)
{
  cf = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v5 = DerivedStorage;
  if (*(DerivedStorage + 656))
  {
    v6 = *(DerivedStorage + 848);
    if (v6)
    {
      FigImageQueueTableCopyFigImageQueueArray(v6, &cf);
      FigImageQueueArraySetProperty(cf, @"VideoEnhancementMode", a2);
    }
  }

  else
  {
    v7 = *(DerivedStorage + 1040);
    if (v7 && (itemfig_setVideoEnhancementModeOnImageQueues_cold_1(v19, a1, v7) & 1) != 0)
    {
      goto LABEL_16;
    }
  }

  v8 = *(v5 + 1088);
  if (v8)
  {
    Count = CFArrayGetCount(v8);
    if (Count >= 1)
    {
      v10 = Count;
      for (i = 0; i != v10; ++i)
      {
        v18 = 0;
        v17 = 0;
        FigCFArrayGetInt32AtIndex();
        itemfig_getTrackStorage(a1, v18, &v17);
        v12 = v17;
        if (v17)
        {
          if (*(v17 + 4) == 1986618469)
          {
            v13 = *(v17 + 216);
            if (v13)
            {
              if (CFArrayGetCount(v13) >= 1)
              {
                if (*(v12 + 248))
                {
                  FigRenderPipelineGetFigBaseObject();
                  v15 = v14;
                  v16 = *(*(CMBaseObjectGetVTable() + 8) + 56);
                  if (v16)
                  {
                    v16(v15, @"VideoEnhancementMode", a2);
                  }
                }
              }
            }
          }
        }
      }
    }
  }

LABEL_16:
  if (cf)
  {
    CFRelease(cf);
  }
}

uint64_t playerfig_maybeUndoQueueingForItem(uint64_t a1, __CFString *a2)
{
  v98 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v81 = CMBaseObjectGetDerivedStorage();
  Count = CFArrayGetCount(*(DerivedStorage + 528));
  v99.location = 0;
  v99.length = Count;
  FirstIndexOfValue = CFArrayGetFirstIndexOfValue(*(DerivedStorage + 528), v99, a2);
  context = 0;
  v7 = fp_copyPlayQueueDescription(a1);
  if (dword_1EAF16A10)
  {
    v85 = 0;
    type = OS_LOG_TYPE_DEFAULT;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (v7)
  {
    CFRelease(v7);
  }

  if (!FirstIndexOfValue)
  {
    if (!dword_1EAF16A10)
    {
      return 0;
    }

LABEL_11:
    v85 = 0;
    v12 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT);
    goto LABEL_25;
  }

  v9 = *(DerivedStorage + 536);
  if (!v9)
  {
    if (dword_1EAF16A10)
    {
      v85 = 0;
      v13 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT);
      goto LABEL_25;
    }

    return 0;
  }

  v100.location = 0;
  v100.length = Count;
  v10 = CFArrayGetFirstIndexOfValue(*(DerivedStorage + 528), v100, v9);
  if (FirstIndexOfValue > v10)
  {
    if (dword_1EAF16A10)
    {
      v85 = 0;
      type = OS_LOG_TYPE_DEFAULT;
      v11 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);
LABEL_25:
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    return 0;
  }

  v14 = v10;
  v15 = *(v81 + 360);
  if (!v15)
  {
    if (!dword_1EAF16A10)
    {
      return 0;
    }

    goto LABEL_11;
  }

  CFSetApplyFunction(v15, fp_writeTrueIfARenderPipelineDoesntImplementCancelAndFlushTransition, &context);
  if (context)
  {
    if (!dword_1EAF16A10)
    {
      return 0;
    }

LABEL_24:
    v85 = 0;
    v19 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT);
    goto LABEL_25;
  }

  ValueAtIndex = CFArrayGetValueAtIndex(*(DerivedStorage + 528), FirstIndexOfValue - 1);
  v17 = CMBaseObjectGetDerivedStorage();
  if (!*(v17 + 488))
  {
    if (!dword_1EAF16A10)
    {
      return 0;
    }

    goto LABEL_24;
  }

  v18 = v17;
  if (dword_1EAF16A10)
  {
    v85 = 0;
    type = OS_LOG_TYPE_DEFAULT;
    v80 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v80, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (*(DerivedStorage + 536))
  {
    v21 = CMBaseObjectGetDerivedStorage();
    if (!*(v21 + 480))
    {
      v22 = v21;
      FigPlaybackBossInterruptQueueing(*(v21 + 352));
      FigPlaybackBossGoQuiescent(*(v22 + 352));
      *(v22 + 480) = 1;
    }
  }

  v23 = *(v18 + 488);
  v82[0] = *(v18 + 328);
  v82[1] = v23;
  v83 = 0;
  CFSetApplyFunction(*(v81 + 360), fp_callCancelAndFlushTransition, v82);
  result = v83;
  if (!v83)
  {
    do
    {
      v24 = CFArrayGetValueAtIndex(*(DerivedStorage + 528), FirstIndexOfValue);
      itemfig_antiprepare(v24);
      ++FirstIndexOfValue;
    }

    while (v14 + 1 != FirstIndexOfValue);
    v25 = *(v18 + 488);
    if (v25)
    {
      CFRelease(v25);
      *(v18 + 488) = 0;
    }

    v26 = 1;
    *(v18 + 496) = 1;
    *(DerivedStorage + 536) = ValueAtIndex;
    *(DerivedStorage + 544) = 0;
    v27 = CMBaseObjectGetDerivedStorage();
    if (*(v27 + 536))
    {
      v28 = CMBaseObjectGetDerivedStorage();
      v29 = *(v28 + 360);
      if (v29)
      {
        v30 = *(v27 + 584);
        if (v30)
        {
          v26 = 0;
          if (CFSetContainsValue(v29, v30))
          {
            goto LABEL_55;
          }
        }

        else
        {
          v26 = 0;
        }
      }
    }

    else
    {
      v28 = 0;
    }

    v31 = *(v27 + 584);
    if (v31)
    {
      playerfig_removeAudioRenderPipelineListeners(a1, v31);
      v32 = *(v27 + 584);
      if (v32)
      {
        CFRelease(v32);
        *(v27 + 584) = 0;
      }
    }

    v33 = *(v27 + 688);
    if (v33)
    {
      CFRelease(v33);
      *(v27 + 688) = 0;
    }

    v34 = *(v27 + 632);
    if (v34)
    {
      CFRelease(v34);
      *(v27 + 632) = 0;
    }

    v35 = *(v27 + 624);
    if (v35)
    {
      CFRelease(v35);
      *(v27 + 624) = 0;
    }

    v36 = *(v27 + 640);
    if (v36)
    {
      CFRelease(v36);
      *(v27 + 640) = 0;
    }

    v37 = *(v27 + 648);
    if (v37)
    {
      CFRelease(v37);
      *(v27 + 648) = 0;
    }

LABEL_55:
    v38 = *(v27 + 664);
    if (v38)
    {
      v39 = CFArrayGetCount(v38);
      if (v39 >= 1)
      {
        v40 = v39;
        v41 = 0;
        while (1)
        {
          v42 = CFArrayGetValueAtIndex(*(v27 + 664), v41);
          if (v26)
          {
            break;
          }

          if (v28)
          {
            v43 = v42;
            v44 = *(v28 + 360);
            if (v44)
            {
              if (!CFSetContainsValue(v44, v43))
              {
                break;
              }
            }
          }

          if (v40 == ++v41)
          {
            goto LABEL_69;
          }
        }

        if (CFArrayGetCount(*(v27 + 664)) >= 1)
        {
          do
          {
            v45 = CFArrayGetValueAtIndex(*(v27 + 664), 0);
            playerfig_removeAudioRenderPipelineListeners(a1, v45);
            CFArrayRemoveValueAtIndex(*(v27 + 664), 0);
          }

          while (CFArrayGetCount(*(v27 + 664)) > 0);
        }

        v46 = *(v27 + 664);
        if (v46)
        {
          CFRelease(v46);
          *(v27 + 664) = 0;
        }
      }
    }

    if ((v26 & 1) == 0)
    {
LABEL_69:
      v47 = *(v27 + 592);
      if (v47)
      {
        if (!v28 || (v48 = *(v28 + 360)) == 0 || CFSetContainsValue(v48, v47))
        {
LABEL_77:
          v51 = *(v27 + 672);
          if (v51)
          {
            CFRelease(v51);
            *(v27 + 672) = 0;
          }

          if (v26)
          {
            goto LABEL_84;
          }

          v52 = *(v27 + 608);
          if (!v52)
          {
            goto LABEL_84;
          }

          if (!v28)
          {
            if (!*(v27 + 600))
            {
LABEL_95:
              v58 = *(v27 + 600);
              if (v58)
              {
                CFRelease(v58);
                *(v27 + 600) = 0;
              }

              v59 = *(v27 + 696);
              if (v59)
              {
                CFRelease(v59);
                *(v27 + 696) = 0;
              }
            }

LABEL_99:
            v60 = *(v27 + 680);
            if (v60)
            {
              v61 = CFArrayGetCount(v60);
              if (v61 >= 1)
              {
                v62 = v61;
                v63 = 0;
                while (1)
                {
                  v64 = CFArrayGetValueAtIndex(*(v27 + 680), v63);
                  if (v26)
                  {
                    break;
                  }

                  if (v28)
                  {
                    v65 = v64;
                    v66 = *(v28 + 360);
                    if (v66)
                    {
                      if (!CFSetContainsValue(v66, v65))
                      {
                        break;
                      }
                    }
                  }

                  if (v62 == ++v63)
                  {
                    goto LABEL_110;
                  }
                }

                v67 = *(v27 + 680);
                if (v67)
                {
                  CFRelease(v67);
                  *(v27 + 680) = 0;
                }
              }
            }

LABEL_110:
            v68 = fp_copyPlayQueueDescription(a1);
            if (dword_1EAF16A10)
            {
              v85 = 0;
              type = OS_LOG_TYPE_DEFAULT;
              v69 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
              v70 = v85;
              v71 = type;
              if (os_log_type_enabled(v69, type))
              {
                v72 = v70;
              }

              else
              {
                v72 = v70 & 0xFFFFFFFE;
              }

              if (v72)
              {
                if (a1)
                {
                  v73 = (CMBaseObjectGetDerivedStorage() + 972);
                }

                else
                {
                  v73 = "";
                }

                v87 = 136315906;
                v88 = "playerfig_maybeUndoQueueingForItem";
                v89 = 2048;
                v90 = a1;
                v91 = 2082;
                v92 = v73;
                v93 = 2114;
                v94 = v68;
                _os_log_send_and_compose_impl(v72, 0, v97, 128, &dword_1962D5000, v69, v71, "<<<< FigFilePlayer >>>> %s: [%p] %{public}s play queue after flush: [%{public}@]", &v87, 42);
              }

              fig_log_call_emit_and_clean_up_after_send_and_compose();
            }

            if (v68)
            {
              CFRelease(v68);
            }

            return 0;
          }

          v53 = *(v28 + 360);
          if (v53)
          {
            if (!CFSetContainsValue(v53, v52))
            {
LABEL_84:
              v54 = *(v27 + 608);
              if (v54)
              {
                CFRelease(v54);
                *(v27 + 608) = 0;
              }

              v55 = *(v27 + 704);
              if (v55)
              {
                CFRelease(v55);
                *(v27 + 704) = 0;
              }

              if (v26)
              {
                goto LABEL_95;
              }
            }
          }

          v56 = *(v27 + 600);
          if (!v56)
          {
            goto LABEL_95;
          }

          if (v28)
          {
            v57 = *(v28 + 360);
            if (v57)
            {
              if (!CFSetContainsValue(v57, v56))
              {
                goto LABEL_95;
              }
            }
          }

          goto LABEL_99;
        }
      }
    }

    v49 = *(v27 + 592);
    if (v49)
    {
      CFRelease(v49);
      *(v27 + 592) = 0;
    }

    v50 = *(v27 + 616);
    if (v50)
    {
      CFRelease(v50);
      *(v27 + 616) = 0;
    }

    goto LABEL_77;
  }

  if (v83 == -12857)
  {
    if (dword_1EAF16A10)
    {
      v85 = 0;
      type = OS_LOG_TYPE_DEFAULT;
      v74 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v75 = v85;
      v76 = type;
      if (os_log_type_enabled(v74, type))
      {
        v77 = v75;
      }

      else
      {
        v77 = v75 & 0xFFFFFFFE;
      }

      if (v77)
      {
        if (a1)
        {
          v78 = (CMBaseObjectGetDerivedStorage() + 972);
        }

        else
        {
          v78 = "";
        }

        if (a2)
        {
          v79 = (CMBaseObjectGetDerivedStorage() + 2096);
        }

        else
        {
          v79 = "";
        }

        v87 = 136316162;
        v88 = "playerfig_maybeUndoQueueingForItem";
        v89 = 2048;
        v90 = a1;
        v91 = 2082;
        v92 = v78;
        v93 = 2048;
        v94 = a2;
        v95 = 2082;
        v96 = v79;
        _os_log_send_and_compose_impl(v77, 0, v97, 128, &dword_1962D5000, v74, v76, "<<<< FigFilePlayer >>>> %s: [%p|%{public}s] <%p|%{public}s> too late to cancel and flush", &v87, 52);
      }

      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    return 4294954439;
  }

  return result;
}

uint64_t fp_writeTrueIfARenderPipelineDoesntImplementCancelAndFlushTransition(uint64_t a1, _BYTE *a2)
{
  VTable = CMBaseObjectGetVTable();
  v5 = *(VTable + 16);
  result = VTable + 16;
  if (!*(v5 + 80))
  {
    *a2 = 1;
  }

  return result;
}

uint64_t fp_callCancelAndFlushTransition(uint64_t result, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    v3 = result;
    v4 = *(a2 + 8);
    v5 = *(*(CMBaseObjectGetVTable() + 16) + 80);
    if (v5)
    {
      result = v5(v3, v4);
    }

    else
    {
      result = 4294954514;
    }

    *(a2 + 16) = result;
  }

  return result;
}

uint64_t itemfig_CachePrimingCompleted(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  CMNotificationCenterGetDefaultLocalCenter();

  return CMNotificationCenterPostNotification();
}

void itemfig_formatReaderTracksChanged(uint64_t a1, uint64_t a2)
{
  v10 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v3 = FigCFWeakReferenceHolderCopyReferencedObject();
  if (v3)
  {
    v4 = v3;
    if (*(DerivedStorage + 352))
    {
      if (dword_1EAF16A10)
      {
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      v6 = *MEMORY[0x1E6960C70];
      v7 = *(MEMORY[0x1E6960C70] + 16);
      v8 = v6;
      v9 = v7;
      playerfig_stopResetDisturbReprepareAndResumeWithTransaction();
    }

    CFRelease(v4);
  }
}

void itemfig_removeFromPlayQueueIfAdvanceAtEnd_f(const void *a1)
{
  itemfig_removeFromPlayQueueIfAdvanceAtEnd(a1);

  CFRelease(a1);
}

void itemfig_assetDownloadComplete(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v28 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v5 = FigCFWeakReferenceHolderCopyReferencedObject();
  v6 = CMBaseObjectGetDerivedStorage();
  if (dword_1EAF16A10 >= 3)
  {
    HIDWORD(v22) = 0;
    BYTE3(v22) = 0;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (v5)
  {
    v8 = *DerivedStorage == 0;
  }

  else
  {
    v8 = 0;
  }

  if (v8)
  {
    if (!*v6)
    {
      FigSimpleMutexLock();
      DerivedStorage[1370] = 1;
      v9 = CMBaseObjectGetDerivedStorage();
      FigSimpleMutexLock();
      if (!*(v9 + 2185) && *(v9 + 2160) && *(v9 + 2144))
      {
        v16 = *MEMORY[0x1E695E480];
        Current = CFAbsoluteTimeGetCurrent();
        v18 = CFDateCreate(v16, Current);
        if (v18)
        {
          itemfig_assetDownloadComplete_cold_1((v9 + 2160), (v9 + 2144), v18);
        }

        else
        {
          itemfig_assetDownloadComplete_cold_2();
        }
      }

      FigSimpleMutexUnlock();
      if (!DerivedStorage[1])
      {
        itemfig_configureDownloadForItem(a2, 0, v10, v11, v12, v13, v14, v15, v19, v20, v21, v22, v23, v24, v25, v26, v27[0], v27[1], v27[2], v27[3], v27[4], v27[5], v27[6], v27[7], v27[8], v27[9], v27[10], v27[11], v27[12], v27[13], v27[14], v27[15], v27[16], v27[17], v28, v29, v30, v31, v32, v33, v34, v35, v36, v37);
      }

      playerfig_configureDownloadInPlayQueueAndItemsToPrebuffer(v5);
      FigSimpleMutexUnlock();
    }

    goto LABEL_15;
  }

  if (v5)
  {
LABEL_15:
    CFRelease(v5);
  }
}

void itemfig_copyChosenAlternateTrackIDsDictionary(uint64_t a1, const __CFAllocator *a2, __CFDictionary **a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  Mutable = CFDictionaryCreateMutable(a2, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v7 = MEMORY[0x1E695E480];
  if (*(DerivedStorage + 1036))
  {
    valuePtr = *(DerivedStorage + 1036);
    v8 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberIntType, &valuePtr);
    CFDictionarySetValue(Mutable, @"Audio", v8);
    CFRelease(v8);
  }

  if (*(DerivedStorage + 1056))
  {
    valuePtr = *(DerivedStorage + 1056);
    v9 = CFNumberCreate(*v7, kCFNumberIntType, &valuePtr);
    CFDictionarySetValue(Mutable, @"Subtitle", v9);
    CFRelease(v9);
  }

  *a3 = Mutable;
}

uint64_t FigPlaybackItemGetDuration(uint64_t a1, uint64_t a2)
{
  v4 = *(*(CMBaseObjectGetVTable() + 16) + 16);
  if (!v4)
  {
    return 4294954514;
  }

  return v4(a1, a2);
}

uint64_t FigCPEProtectorIsApplicationAuthorized(uint64_t a1, uint64_t a2)
{
  v4 = *(CMBaseObjectGetVTable() + 16);
  if (!*v4)
  {
    return 4294954514;
  }

  v5 = v4[4];
  if (!v5)
  {
    return 4294954514;
  }

  return v5(a1, 1, a2);
}

uint64_t FigCPEProtectorIsContentAuthorized(uint64_t a1, uint64_t a2)
{
  v4 = *(CMBaseObjectGetVTable() + 16);
  if (!*v4)
  {
    return 4294954514;
  }

  v5 = v4[6];
  if (!v5)
  {
    return 4294954514;
  }

  return v5(a1, 1, a2);
}

uint64_t itemfig_createPlayabilityMetricsDictionary(uint64_t a1, const __CFAllocator *a2, CFDictionaryRef *a3)
{
  keys[7] = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v18 = 0;
  valuePtr = 0;
  v16 = 0;
  v17 = 0;
  v14 = 0;
  v15 = 0;
  keys[0] = @"BytesStillNeededToEnd";
  keys[1] = @"DurationFromNowToEnd";
  keys[2] = @"CurrentMeasuredBytesPerSecond";
  keys[3] = @"RawMeasuredBytesPerSecond";
  keys[4] = @"BandwidthSlopFactor";
  keys[5] = @"EstimatedTimeToLikelyToKeepUp";
  v13 = 0;
  keys[6] = @"RemoteIPAddress";
  v21 = 0;
  *a3 = 0;
  FigSimpleMutexLock();
  PlayabilityMetrics = FigPlayabilityMonitorGetPlayabilityMetrics(*(DerivedStorage + 600), &valuePtr, &v18, &v17, &v16, &v15, &v14);
  if (PlayabilityMetrics || (PlayabilityMetrics = FigPlayabilityMonitorCopyRemoteIPAddress(*(DerivedStorage + 600), &v13), PlayabilityMetrics))
  {
    v10 = PlayabilityMetrics;
    FigSimpleMutexUnlock();
  }

  else
  {
    v7 = *MEMORY[0x1E695E480];
    v8 = 6;
    values[0] = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberFloat64Type, &valuePtr);
    values[1] = CFNumberCreate(v7, kCFNumberFloat64Type, &v18);
    values[2] = CFNumberCreate(v7, kCFNumberFloat64Type, &v17);
    values[3] = CFNumberCreate(v7, kCFNumberFloat64Type, &v16);
    values[4] = CFNumberCreate(v7, kCFNumberFloat64Type, &v15);
    values[5] = CFNumberCreate(v7, kCFNumberFloat64Type, &v14);
    if (v13)
    {
      v21 = v13;
      v8 = 7;
    }

    v9 = 0;
    while (values[v9])
    {
      if (v8 == ++v9)
      {
        v10 = 0;
        *a3 = CFDictionaryCreate(a2, keys, values, v8, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
        goto LABEL_9;
      }
    }

    v10 = 4294954434;
LABEL_9:
    FigSimpleMutexUnlock();
    v11 = values;
    do
    {
      if (*v11)
      {
        CFRelease(*v11);
      }

      ++v11;
      --v8;
    }

    while (v8);
  }

  return v10;
}

uint64_t itemfig_handleSetProperty(void *a1, uint64_t a2, const void *a3, const __CFDictionary *a4, _BYTE *a5)
{
  v334 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  *a5 = 1;
  if (!*DerivedStorage)
  {
    v11 = DerivedStorage;
    v12 = FigCFWeakReferenceHolderCopyReferencedObject();
    if (!v12)
    {
      return 0;
    }

    v13 = v12;
    v14 = CMBaseObjectGetDerivedStorage();
    if (CFEqual(a3, @"PlaybackItemProperties"))
    {
      if (a1)
      {
        if (a4)
        {
          TypeID = CFDictionaryGetTypeID();
          if (TypeID == CFGetTypeID(a4))
          {
            v16 = CMBaseObjectGetDerivedStorage();
            Value = CFDictionaryGetValue(a4, @"AVItemPlaybackProperties_RampInDuration");
            if (Value)
            {
              v18 = Value;
              v19 = CFNumberGetTypeID();
              if (v19 == CFGetTypeID(v18))
              {
                *(v16 + 1332) = 0;
                CFNumberGetValue(v18, kCFNumberFloatType, (v16 + 1332));
                v20 = *(v16 + 1332);
                v21 = 0;
                if (v20 < 0.0)
                {
LABEL_12:
                  *(v16 + 1332) = v21;
                  goto LABEL_13;
                }

                if (v20 > 0.8)
                {
                  v21 = 1061997773;
                  goto LABEL_12;
                }
              }
            }

LABEL_13:
            v22 = CFDictionaryGetValue(a4, @"AVItemPlaybackProperties_RampOutDuration");
            if (v22)
            {
              v23 = v22;
              v24 = CFNumberGetTypeID();
              if (v24 == CFGetTypeID(v23))
              {
                *(v16 + 1336) = 0;
                CFNumberGetValue(v23, kCFNumberFloatType, (v16 + 1336));
                v25 = *(v16 + 1336);
                v26 = 0;
                if (v25 < 0.0)
                {
LABEL_18:
                  *(v16 + 1336) = v26;
                  goto LABEL_19;
                }

                if (v25 > 0.8)
                {
                  v26 = 1061997773;
                  goto LABEL_18;
                }
              }
            }

LABEL_19:
            v27 = CFDictionaryGetValue(a4, @"AVItemPlaybackProperties_GaplessHeuristicInfo");
            if (v27)
            {
              v28 = v27;
              v29 = CFNumberGetTypeID();
              if (v29 == CFGetTypeID(v28))
              {
                valuePtr.start.value = 0;
                CFNumberGetValue(v28, kCFNumberSInt64Type, &valuePtr);
                *(v16 + 920) = valuePtr.start.value;
              }
            }

            v30 = CFDictionaryGetValue(a4, @"AVItemPlaybackProperties_GaplessEncodingDelayInFrames");
            if (v30 && (v31 = v30, v32 = CFNumberGetTypeID(), v32 == CFGetTypeID(v31)))
            {
              CFNumberGetValue(v31, kCFNumberSInt32Type, (v16 + 924));
              v33 = 1;
            }

            else
            {
              v33 = 0;
            }

            v44 = CFDictionaryGetValue(a4, @"AVItemPlaybackProperties_GaplessEncodingDrainInFrames");
            if (v44)
            {
              v45 = v44;
              v46 = CFNumberGetTypeID();
              if (v46 == CFGetTypeID(v45))
              {
                CFNumberGetValue(v45, kCFNumberSInt32Type, (v16 + 928));
                v33 = 1;
              }
            }

            v47 = CFDictionaryGetValue(a4, @"AVItemPlaybackProperties_GaplessDurationInFrames");
            if (v47)
            {
              v48 = v47;
              v49 = CFNumberGetTypeID();
              if (v49 == CFGetTypeID(v48))
              {
                CFNumberGetValue(v48, kCFNumberSInt64Type, (v16 + 936));
                v33 = 1;
              }
            }

            v50 = CFDictionaryGetValue(a4, @"AVItemPlaybackProperties_GaplessLastPacketsResync");
            if (v50)
            {
              v51 = v50;
              v52 = CFNumberGetTypeID();
              if (v52 == CFGetTypeID(v51))
              {
                CFNumberGetValue(v51, kCFNumberSInt64Type, (v16 + 944));
                v33 = 1;
              }
            }

            v53 = CFDictionaryGetValue(a4, @"AVItemPlaybackProperties_AudibleDRMGroupID");
            if (v53)
            {
              v54 = v53;
              v55 = CFNumberGetTypeID();
              if (v55 == CFGetTypeID(v54))
              {
                valuePtr.start.value = 0;
                CFNumberGetValue(v54, kCFNumberSInt64Type, &valuePtr);
                *(v16 + 952) = valuePtr.start.value;
              }
            }

            v56 = CFDictionaryGetValue(a4, @"AVItemPlaybackProperties_LookForLyrics");
            if (v56)
            {
              v57 = v56;
              v58 = CFBooleanGetTypeID();
              if (v58 == CFGetTypeID(v57))
              {
                if (CFBooleanGetValue(v57))
                {
                  if (*(v16 + 1008))
                  {
                    itemfig_lookForLyrics(a1);
                  }

                  else
                  {
                    *(v16 + 992) = 1;
                  }
                }
              }
            }

            if (!v33)
            {
              goto LABEL_75;
            }

            v61 = *(v16 + 960);
            if (v61)
            {
              CFRelease(v61);
              *(v16 + 960) = 0;
            }

            v62 = *(v16 + 928);
            v63 = *(v16 + 936);
            if (!*(v16 + 924))
            {
              v62 = 0;
              Metal = 0;
              if (!v63)
              {
                goto LABEL_76;
              }
            }

            v64 = FigGaplessInfoCreateForLaterEnhancement(*(v16 + 924), v62, v63);
            *(v16 + 960) = v64;
            if (v64)
            {
              goto LABEL_75;
            }

            LODWORD(start.value) = 0;
            LOBYTE(type.value) = 0;
            os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
LABEL_74:
            fig_log_call_emit_and_clean_up_after_send_and_compose();
            goto LABEL_75;
          }
        }
      }

      FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF16A08, 4294954436, "<<<< FigFilePlayer >>>>", 34986, v5);
      goto LABEL_26;
    }

    if (CFEqual(a3, @"EnableDownloadWhenInPlayQueue"))
    {
      if (a4)
      {
        v36 = CFBooleanGetTypeID();
        if (v36 == CFGetTypeID(a4))
        {
          *(v11 + 1368) = CFBooleanGetValue(a4);
          playerfig_configureDownloadInPlayQueueAndItemsToPrebuffer(v13);
        }
      }

      goto LABEL_75;
    }

    if (CFEqual(a3, @"EnableDownloadWhenNotInPlayQueue"))
    {
      if (!a4)
      {
        goto LABEL_75;
      }

      v37 = CFBooleanGetTypeID();
      if (v37 != CFGetTypeID(a4))
      {
        goto LABEL_75;
      }

      *(v11 + 1369) = CFBooleanGetValue(a4);
      FigSimpleMutexLock();
      if (!*(v11 + 1))
      {
        itemfig_configureDownloadForItem(a1, *(v11 + 1369), v38, v39, v40, v41, v42, v43, v307, v308, v309, v311, v312, v313, start.value, *&start.timescale, start.epoch, v315, time2.value, *&time2.timescale, time2.epoch, v317, *v318, *&v318[8], *&v318[16], v319, type.value, *&type.timescale, type.epoch, v321, valuePtr.start.value, *&valuePtr.start.timescale, valuePtr.start.epoch, valuePtr.duration.value, *&valuePtr.duration.timescale, valuePtr.duration.epoch, v323, v324, v325, v326, v327, v328, v329, v330);
      }

      goto LABEL_36;
    }

    if (CFEqual(a3, @"PreferredMaximumBufferDuration"))
    {
      if (a4 && (v59 = CFGetTypeID(a4), v59 == CFNumberGetTypeID()))
      {
        LODWORD(valuePtr.start.value) = 0;
        CFNumberGetValue(a4, kCFNumberSInt32Type, &valuePtr);
        if ((valuePtr.start.value & 0x80000000) == 0)
        {
          itemfig_updatePreferredMaximumBufferDuration(a1, valuePtr.start.value);
          goto LABEL_75;
        }

        FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF16A08, 4294954436, "<<<< FigFilePlayer >>>>", 35011, v5);
      }

      else
      {
        FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF16A08, 4294954436, "<<<< FigFilePlayer >>>>", 35014, v5);
      }

      goto LABEL_26;
    }

    if (CFEqual(a3, @"CachePrimingDownloadToken"))
    {
      if (a4 && (v60 = CFNumberGetTypeID(), v60 == CFGetTypeID(a4)))
      {
        started = itemfig_startCachePrimingWithDownloadToken();
      }

      else
      {
        FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF16A08, 4294954436, "<<<< FigFilePlayer >>>>", 35021, v5);
      }

      goto LABEL_26;
    }

    if (CFEqual(a3, @"LikelyToKeepUpTrigger"))
    {
      if (itemfig_handleSetProperty_cold_12(v11, &valuePtr))
      {
        if (a4 && (v83 = CFStringGetTypeID(), v83 == CFGetTypeID(a4)))
        {
          if (CFEqual(a4, @"LikelyToKeepUpTriggerDefault"))
          {
            Metal = 0;
            *(v11 + 1392) = 0;
            goto LABEL_76;
          }

          if (CFEqual(a4, @"LikelyToKeepUpTriggerLive"))
          {
            Metal = 0;
            *(v11 + 1392) = 1;
            goto LABEL_76;
          }

          FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF16A08, 4294954436, "<<<< FigFilePlayer >>>>", 35034, v5);
        }

        else
        {
          FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF16A08, 4294954436, "<<<< FigFilePlayer >>>>", 35038, v5);
        }

        goto LABEL_26;
      }

      goto LABEL_233;
    }

    if (CFEqual(a3, @"ChosenAlternateTrackIDDictionary"))
    {
      started = itemfig_setChosenAlternateTrackIDsFromDictionary(a1, a4, v67, v68, v69, v70, v71, v72, v307, v308, v309, v311, v312, v313, SHIDWORD(v313), start.value, *&start.timescale, start.epoch, v315, time2.value, *&time2.timescale, time2.epoch, v317, *v318, *&v318[8], *&v318[16], v319, type.value, *&type.timescale, type.epoch, v321, valuePtr.start.value, *&valuePtr.start.timescale, valuePtr.start.epoch, valuePtr.duration.value, *&valuePtr.duration.timescale, valuePtr.duration.epoch, v323, v324, v325, v326, v327, v328, v329, v330, v331, v332, v333, v334);
      goto LABEL_26;
    }

    if (CFEqual(a3, @"EndTime"))
    {
      FigSimpleMutexLock();
      if (a4)
      {
        CMTimeMakeFromDictionary(&valuePtr.start, a4);
        *(v11 + 140) = *&valuePtr.start.value;
        epoch = valuePtr.start.epoch;
      }

      else
      {
        v84 = MEMORY[0x1E6960C70];
        *(v11 + 140) = *MEMORY[0x1E6960C70];
        epoch = *(v84 + 16);
      }

      *(v11 + 156) = epoch;
      itemfig_checkForShortAudioTrack(a1);
      v93 = *(v11 + 352);
      if (v93)
      {
        if (*(v14 + 536) != a1 || (*&valuePtr.start.value = *(v11 + 140), valuePtr.start.epoch = *(v11 + 156), !FigPlaybackBossCanChangeEndTimeTo(v93, &valuePtr)))
        {
          FigSimpleMutexUnlock();
          if (dword_1EAF16A10 >= 2)
          {
            LODWORD(start.value) = 0;
            LOBYTE(type.value) = 0;
            v94 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            os_log_type_enabled(v94, OS_LOG_TYPE_DEFAULT);
            fig_log_call_emit_and_clean_up_after_send_and_compose();
          }

          *&valuePtr.start.value = *MEMORY[0x1E6960C70];
          valuePtr.start.epoch = *(MEMORY[0x1E6960C70] + 16);
          time2 = valuePtr.start;
          goto LABEL_184;
        }
      }

      itemfig_setEndTimeOnBoss(a1);
      FigSimpleMutexUnlock();
    }

    else if (CFEqual(a3, @"ReverseEndTime"))
    {
      if (a4)
      {
        CMTimeMakeFromDictionary(&valuePtr.start, a4);
        *(v11 + 164) = *&valuePtr.start.value;
        v87 = valuePtr.start.epoch;
      }

      else
      {
        v86 = MEMORY[0x1E6960C70];
        *(v11 + 164) = *MEMORY[0x1E6960C70];
        v87 = *(v86 + 16);
      }

      *(v11 + 180) = v87;
      if (*(v11 + 352))
      {
        if (dword_1EAF16A10 >= 2)
        {
          LODWORD(start.value) = 0;
          LOBYTE(type.value) = 0;
          v95 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          os_log_type_enabled(v95, OS_LOG_TYPE_DEFAULT);
          fig_log_call_emit_and_clean_up_after_send_and_compose();
        }

        *&valuePtr.start.value = *MEMORY[0x1E6960C70];
        valuePtr.start.epoch = *(MEMORY[0x1E6960C70] + 16);
        time2 = valuePtr.start;
        goto LABEL_184;
      }
    }

    else
    {
      if (!CFEqual(a3, @"AdvanceTimeForOverlappedPlayback"))
      {
        if (CFEqual(a3, @"LoopTimeRange"))
        {
          v73 = (v11 + 236);
          if (a4)
          {
            CMTimeRangeMakeFromDictionary(&valuePtr, a4);
            v74 = *&valuePtr.start.epoch;
            *v73 = *&valuePtr.start.value;
            *(v11 + 252) = v74;
            v75 = *&valuePtr.duration.timescale;
          }

          else
          {
            v78 = MEMORY[0x1E6960C98];
            v79 = *(MEMORY[0x1E6960C98] + 16);
            *v73 = *MEMORY[0x1E6960C98];
            *(v11 + 252) = v79;
            v75 = *(v78 + 32);
          }

          *(v11 + 268) = v75;
          if (!*(v11 + 352))
          {
            goto LABEL_75;
          }

          if (dword_1EAF16A10 >= 2)
          {
            LODWORD(start.value) = 0;
            LOBYTE(type.value) = 0;
            v80 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            os_log_type_enabled(v80, OS_LOG_TYPE_DEFAULT);
            fig_log_call_emit_and_clean_up_after_send_and_compose();
          }

          *&valuePtr.start.value = *MEMORY[0x1E6960C70];
          valuePtr.start.epoch = *(MEMORY[0x1E6960C70] + 16);
          time2 = valuePtr.start;
          goto LABEL_184;
        }

        if (CFEqual(a3, @"ReversesMoreVideoFramesInMemory"))
        {
          if (itemfig_handleSetProperty_cold_15(v11, a4))
          {
            goto LABEL_75;
          }

          if (dword_1EAF16A10 >= 2)
          {
            LODWORD(start.value) = 0;
            LOBYTE(type.value) = 0;
            v104 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            os_log_type_enabled(v104, OS_LOG_TYPE_DEFAULT);
            fig_log_call_emit_and_clean_up_after_send_and_compose();
          }

          *&valuePtr.start.value = *MEMORY[0x1E6960C70];
          valuePtr.start.epoch = *(MEMORY[0x1E6960C70] + 16);
          time2 = valuePtr.start;
          goto LABEL_184;
        }

        if (CFEqual(a3, @"AggressivelyCachesVideoFrames"))
        {
          if (itemfig_handleSetProperty_cold_14(v11, a4))
          {
            goto LABEL_75;
          }

          if (dword_1EAF16A10 >= 2)
          {
            LODWORD(start.value) = 0;
            LOBYTE(type.value) = 0;
            v105 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            os_log_type_enabled(v105, OS_LOG_TYPE_DEFAULT);
            fig_log_call_emit_and_clean_up_after_send_and_compose();
          }

          *&valuePtr.start.value = *MEMORY[0x1E6960C70];
          valuePtr.start.epoch = *(MEMORY[0x1E6960C70] + 16);
          time2 = valuePtr.start;
          goto LABEL_184;
        }

        if (CFEqual(a3, @"DecodeAllFramesDuringOrdinaryPlayback"))
        {
          if (itemfig_handleSetProperty_cold_13(v11, a4))
          {
            goto LABEL_75;
          }

          if (dword_1EAF16A10 >= 2)
          {
            LODWORD(start.value) = 0;
            LOBYTE(type.value) = 0;
            v106 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            os_log_type_enabled(v106, OS_LOG_TYPE_DEFAULT);
            fig_log_call_emit_and_clean_up_after_send_and_compose();
          }

          *&valuePtr.start.value = *MEMORY[0x1E6960C70];
          valuePtr.start.epoch = *(MEMORY[0x1E6960C70] + 16);
          time2 = valuePtr.start;
          goto LABEL_184;
        }

        if (CFEqual(a3, @"EQPreset"))
        {
          itemfig_handleSetProperty_cold_11(a4);
          goto LABEL_75;
        }

        if (CFEqual(a3, @"AudioDeviceChannelMap"))
        {
          if (a4)
          {
            v76 = CFDataGetTypeID();
            if (v76 != CFGetTypeID(a4))
            {
              goto LABEL_75;
            }
          }

          v77 = *(v11 + 984);
          if (v77)
          {
            CFRelease(v77);
          }

          *(v11 + 984) = a4;
          if (a4)
          {
            CFRetain(a4);
          }

LABEL_180:
          started = fp_setPropertyOnAllAudioRenderPipelines();
          goto LABEL_26;
        }

        if (CFEqual(a3, @"ReadAheadAllowBackfill"))
        {
          if (!a4 || (v81 = CFGetTypeID(a4), v81 != CFBooleanGetTypeID()))
          {
            FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF16A08, 4294954436, "<<<< FigFilePlayer >>>>", 35218, v5);
            goto LABEL_26;
          }

          *(v11 + 1429) = 1;
          *(v11 + 1428) = CFBooleanGetValue(a4);
          if (!*(v11 + 128))
          {
            goto LABEL_75;
          }

          CMByteStreamGetCMBaseObject();
          FigCRABSGetClassID();
          if (!CMBaseObjectIsMemberOfClass())
          {
            goto LABEL_75;
          }

          v82 = kFigCachedReadAheadByteStreamProperty_ReadAheadAllowBackfill;
LABEL_129:
          v91 = *v82;
          CMBaseObject = CMByteStreamGetCMBaseObject();
          started = CMBaseObjectSetProperty(CMBaseObject, v91, a4);
          goto LABEL_26;
        }

        if (CFEqual(a3, @"SaveDownloadedDataToDiskWhenDone"))
        {
          if (!a4 || (v90 = CFGetTypeID(a4), v90 != CFBooleanGetTypeID()))
          {
            FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF16A08, 4294954436, "<<<< FigFilePlayer >>>>", 35228, v5);
            goto LABEL_26;
          }

          if (!*(v11 + 128))
          {
            goto LABEL_75;
          }

          CMByteStreamGetCMBaseObject();
          FigCRABSGetClassID();
          if (!CMBaseObjectIsMemberOfClass())
          {
            goto LABEL_75;
          }

          v82 = kFigCachedReadAheadByteStreamProperty_SaveMemoryCacheToDiskWhenDone;
          goto LABEL_129;
        }

        if (CFEqual(a3, @"VideoCompositionInstructionArray"))
        {
          memset(&time2, 0, sizeof(time2));
          itemfig_GetDuration(a1, &time2);
          if (!started)
          {
            start = time2;
            v107 = MEMORY[0x1E6960CC0];
            if ((*(v11 + 248) & 0x1D) == 1)
            {
              *&valuePtr.start.value = *(v11 + 236);
              valuePtr.start.epoch = *(v11 + 252);
              v310 = *MEMORY[0x1E6960CC0];
              *&type.value = *MEMORY[0x1E6960CC0];
              v108 = *(MEMORY[0x1E6960CC0] + 16);
              type.epoch = v108;
              if ((CMTimeCompare(&valuePtr.start, &type) & 0x80000000) == 0 && (*(v11 + 272) & 0x1D) == 1)
              {
                *&valuePtr.start.value = *(v11 + 260);
                valuePtr.start.epoch = *(v11 + 276);
                *&type.value = v310;
                type.epoch = v108;
                if (CMTimeCompare(&valuePtr.start, &type) >= 1)
                {
                  type = start;
                  v109 = *(v11 + 252);
                  *&valuePtr.start.value = *(v11 + 236);
                  *&valuePtr.start.epoch = v109;
                  *&valuePtr.duration.timescale = *(v11 + 268);
                  CMTimeFoldIntoRange(&start, &type, &valuePtr);
                }
              }
            }

            if (a4)
            {
              *&valuePtr.start.value = *v107;
              valuePtr.start.epoch = *(v107 + 16);
              type = start;
              if (!FigVideoCompositionInstructionArrayIsValid(a4, &valuePtr, &type))
              {
                FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF16A08, 4294954436, "<<<< FigFilePlayer >>>>", 35272, v5);
                goto LABEL_26;
              }
            }

            FigSimpleMutexLock();
            v110 = *(v11 + 680);
            *(v11 + 680) = a4;
            if (a4)
            {
              CFRetain(a4);
            }

            if (v110)
            {
              CFRelease(v110);
            }

            FigSimpleMutexUnlock();
            v111 = *(v11 + 824);
            if (v111)
            {
              started = *(v11 + 352);
              if (!started)
              {
                goto LABEL_26;
              }

              if (*(v14 + 48) == 0.0 || !*(v11 + 688))
              {
                FigPlaybackBossResetCompositionInstructions(started, v111, 1, 1);
                if (dword_1EAF16A10 >= 2)
                {
                  v118 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
                  os_log_type_enabled(v118, OS_LOG_TYPE_DEFAULT);
                  fig_log_call_emit_and_clean_up_after_send_and_compose();
                }

                FigPlaybackBossRefreshVideoComposition(*(v11 + 352));
              }

              else
              {
                FigPlaybackBossResetCompositionInstructions(started, v111, 0, 0);
              }
            }

            started = 0;
          }

LABEL_26:
          Metal = started;
LABEL_76:
          CFRelease(v13);
          return Metal;
        }

        if (CFEqual(a3, @"VideoCompositorSourceSampleDataTrackIDs"))
        {
          itemfig_handleSetProperty_cold_10();
          goto LABEL_233;
        }

        if (CFEqual(a3, @"VideoCompositorSourceVideoTrackWindows"))
        {
          itemfig_handleSetProperty_cold_16(&valuePtr);
          goto LABEL_233;
        }

        if (CFEqual(a3, @"VideoCompositorSourceSampleDataTrackWindows"))
        {
          itemfig_handleSetProperty_cold_18(&valuePtr);
          goto LABEL_233;
        }

        if (CFEqual(a3, @"VideoCompositorOutputBufferDescription"))
        {
          itemfig_handleSetProperty_cold_17(&valuePtr);
          goto LABEL_233;
        }

        if (CFEqual(a3, @"UsesMinimalLatencyForVideoCompositionRendering"))
        {
          if (a4)
          {
            v112 = CFGetTypeID(a4);
            if (v112 == CFBooleanGetTypeID())
            {
              v113 = CFBooleanGetValue(a4);
              if (v113 != *(v11 + 688))
              {
                *(v11 + 688) = v113;
                if (*(v11 + 824))
                {
                  memset(&valuePtr, 0, 24);
                  memset(&time2, 0, sizeof(time2));
                  itemfig_getHighAndLowWaterLevelDurationsForVideoCompositionProcessing(a1, &valuePtr, &time2);
                  v114 = *(v11 + 824);
                  start = valuePtr.start;
                  type = time2;
                  FigVideoCompositionProcessorSetOutputDurationHighAndLowWaterLevels(v114, &start, &type);
                }
              }

              goto LABEL_75;
            }
          }

          FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF16A08, 4294954436, "<<<< FigFilePlayer >>>>", 35315, v5);
          goto LABEL_26;
        }

        if (CFEqual(a3, @"VideoCompositorFrameDuration"))
        {
          memset(&start, 0, sizeof(start));
          CMTimeMakeFromDictionary(&start, a4);
          if ((start.flags & 0x1D) != 1 || (valuePtr.start = start, time2 = **&MEMORY[0x1E6960CC0], CMTimeCompare(&valuePtr.start, &time2) < 1) || start.epoch)
          {
            FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF16A08, 4294954436, "<<<< FigFilePlayer >>>>", 35332, v5);
            goto LABEL_26;
          }

          *&valuePtr.start.value = *(v11 + 692);
          valuePtr.start.epoch = *(v11 + 708);
          *&time2.value = *&start.value;
          time2.epoch = 0;
          if (!CMTimeCompare(&valuePtr.start, &time2))
          {
            goto LABEL_75;
          }

          *(v11 + 692) = start;
          if (!*(v11 + 352))
          {
            goto LABEL_75;
          }

          if (dword_1EAF16A10 >= 2)
          {
            LODWORD(type.value) = 0;
            v115 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            v116 = type.value;
            if (os_log_type_enabled(v115, OS_LOG_TYPE_DEFAULT))
            {
              v117 = v116;
            }

            else
            {
              v117 = v116 & 0xFFFFFFFE;
            }

            if (v117)
            {
              LODWORD(time2.value) = 136315138;
              *(&time2.value + 4) = "itemfig_handleSetProperty";
              _os_log_send_and_compose_impl(v117, 0, &valuePtr, 128, &dword_1962D5000, v115, 0, "<<<< FigFilePlayer >>>> %s: changing VideoCompositorFrameDuration while this item is current or lame => will disturb playback", &time2);
            }

            fig_log_call_emit_and_clean_up_after_send_and_compose();
          }

          *&valuePtr.start.value = *MEMORY[0x1E6960C70];
          valuePtr.start.epoch = *(MEMORY[0x1E6960C70] + 16);
          time2 = valuePtr.start;
LABEL_184:
          playerfig_stopResetDisturbReprepareAndResumeWithTransaction();
          goto LABEL_75;
        }

        if (CFEqual(a3, @"VideoCompositorSourceTrackIDForFrameTiming"))
        {
          if (!a4 || (v119 = CFGetTypeID(a4), v119 != CFNumberGetTypeID()))
          {
            FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF16A08, 4294954436, "<<<< FigFilePlayer >>>>", 35348, v5);
            goto LABEL_26;
          }

          start.value = 0;
          CFNumberGetValue(a4, kCFNumberCFIndexType, &start);
          if (*(v11 + 716) == LODWORD(start.value))
          {
            goto LABEL_75;
          }

          *(v11 + 716) = start.value;
          if (!*(v11 + 352))
          {
            goto LABEL_75;
          }

          if (dword_1EAF16A10 >= 2)
          {
            LODWORD(type.value) = 0;
            v120 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            v121 = type.value;
            if (os_log_type_enabled(v120, OS_LOG_TYPE_DEFAULT))
            {
              v122 = v121;
            }

            else
            {
              v122 = v121 & 0xFFFFFFFE;
            }

            if (v122)
            {
              LODWORD(time2.value) = 136315138;
              *(&time2.value + 4) = "itemfig_handleSetProperty";
              _os_log_send_and_compose_impl(v122, 0, &valuePtr, 128, &dword_1962D5000, v120, 0, "<<<< FigFilePlayer >>>> %s: changing VideoCompositorSourceTrackIDForFrameTiming while this item is current or lame => will disturb playback", &time2);
            }

            fig_log_call_emit_and_clean_up_after_send_and_compose();
          }

          *&valuePtr.start.value = *MEMORY[0x1E6960C70];
          valuePtr.start.epoch = *(MEMORY[0x1E6960C70] + 16);
          time2 = valuePtr.start;
          goto LABEL_184;
        }

        if (CFEqual(a3, @"VideoCompositorRenderDimensions"))
        {
          start.value = 0;
          *&start.timescale = 0;
          if (!a4 || (v123 = CFDictionaryGetTypeID(), v123 != CFGetTypeID(a4)) || !CGSizeMakeWithDictionaryRepresentation(a4, &start))
          {
            FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF16A08, 4294954436, "<<<< FigFilePlayer >>>>", 35380, v5);
            goto LABEL_26;
          }

          FigSimpleMutexLock();
          if (*(v11 + 720) != *&start.value || *(v11 + 728) != *&start.timescale)
          {
            *(v11 + 720) = *&start.value;
            v124 = *(v11 + 352);
            FigSimpleMutexUnlock();
            if (!v124)
            {
              goto LABEL_75;
            }

            if (dword_1EAF16A10 >= 2)
            {
              LODWORD(type.value) = 0;
              v125 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
              v126 = type.value;
              if (os_log_type_enabled(v125, OS_LOG_TYPE_DEFAULT))
              {
                v127 = v126;
              }

              else
              {
                v127 = v126 & 0xFFFFFFFE;
              }

              if (v127)
              {
                v146 = (CMBaseObjectGetDerivedStorage() + 972);
                if (a1)
                {
                  v147 = (CMBaseObjectGetDerivedStorage() + 2096);
                }

                else
                {
                  v147 = "";
                }

                LODWORD(time2.value) = 136316162;
                *(&time2.value + 4) = "itemfig_handleSetProperty";
                LOWORD(time2.flags) = 2048;
                *(&time2.flags + 2) = v13;
                HIWORD(time2.epoch) = 2082;
                v317 = v146;
                *v318 = 2048;
                *&v318[2] = a1;
                *&v318[10] = 2082;
                *&v318[12] = v147;
                _os_log_send_and_compose_impl(v127, 0, &valuePtr, 128, &dword_1962D5000, v125, 0, "<<<< FigFilePlayer >>>> %s: [%p|%{public}s] <%p|%{public}s> changing VideoCompositorRenderDimensions while this item is current or lame => will disturb playback", &time2, 52);
              }

              fig_log_call_emit_and_clean_up_after_send_and_compose();
            }

            *&valuePtr.start.value = *MEMORY[0x1E6960C70];
            valuePtr.start.epoch = *(MEMORY[0x1E6960C70] + 16);
            time2 = valuePtr.start;
            goto LABEL_184;
          }

LABEL_36:
          FigSimpleMutexUnlock();
LABEL_75:
          Metal = 0;
          goto LABEL_76;
        }

        if (CFEqual(a3, @"VideoCompositorRenderScale"))
        {
          if (!a4 || (v128 = CFNumberGetTypeID(), v128 != CFGetTypeID(a4)))
          {
            FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF16A08, 4294954436, "<<<< FigFilePlayer >>>>", 35397, v5);
            goto LABEL_26;
          }

          LODWORD(start.value) = 0;
          CFNumberGetValue(a4, kCFNumberFloatType, &start);
          if (*(v11 + 736) == *&start.value)
          {
            goto LABEL_75;
          }

          *(v11 + 736) = start.value;
          if (!*(v11 + 352))
          {
            goto LABEL_75;
          }

          if (dword_1EAF16A10 >= 2)
          {
            LODWORD(type.value) = 0;
            v129 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            v130 = type.value;
            if (os_log_type_enabled(v129, OS_LOG_TYPE_DEFAULT))
            {
              v131 = v130;
            }

            else
            {
              v131 = v130 & 0xFFFFFFFE;
            }

            if (v131)
            {
              LODWORD(time2.value) = 136315138;
              *(&time2.value + 4) = "itemfig_handleSetProperty";
              _os_log_send_and_compose_impl(v131, 0, &valuePtr, 128, &dword_1962D5000, v129, 0, "<<<< FigFilePlayer >>>> %s: changing VideoCompositorRenderScale while this item is current or lame => will disturb playback", &time2);
            }

            fig_log_call_emit_and_clean_up_after_send_and_compose();
          }

          *&valuePtr.start.value = *MEMORY[0x1E6960C70];
          valuePtr.start.epoch = *(MEMORY[0x1E6960C70] + 16);
          time2 = valuePtr.start;
          goto LABEL_184;
        }

        if (CFEqual(a3, @"VideoCompositorColorPrimaries"))
        {
          if (FigCFEqual())
          {
            goto LABEL_75;
          }

          if (a4)
          {
            v132 = CFStringGetTypeID();
            if (v132 != CFGetTypeID(a4))
            {
              FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF16A08, 4294954436, "<<<< FigFilePlayer >>>>", 35411, v5);
              goto LABEL_26;
            }

            v133 = *(v11 + 744);
            *(v11 + 744) = a4;
            CFRetain(a4);
          }

          else
          {
            v133 = *(v11 + 744);
            *(v11 + 744) = 0;
          }

          if (v133)
          {
            CFRelease(v133);
          }

          if (!*(v11 + 352))
          {
            goto LABEL_75;
          }

          if (dword_1EAF16A10 >= 2)
          {
            LODWORD(start.value) = 0;
            LOBYTE(type.value) = 0;
            v138 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            os_log_type_enabled(v138, OS_LOG_TYPE_DEFAULT);
            fig_log_call_emit_and_clean_up_after_send_and_compose();
          }

          *&valuePtr.start.value = *MEMORY[0x1E6960C70];
          valuePtr.start.epoch = *(MEMORY[0x1E6960C70] + 16);
          time2 = valuePtr.start;
          goto LABEL_184;
        }

        if (CFEqual(a3, @"VideoCompositorColorYCbCrMatrix"))
        {
          if (FigCFEqual())
          {
            goto LABEL_75;
          }

          if (a4)
          {
            v134 = CFStringGetTypeID();
            if (v134 != CFGetTypeID(a4))
            {
              FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF16A08, 4294954436, "<<<< FigFilePlayer >>>>", 35427, v5);
              goto LABEL_26;
            }

            v135 = *(v11 + 752);
            *(v11 + 752) = a4;
            CFRetain(a4);
          }

          else
          {
            v135 = *(v11 + 752);
            *(v11 + 752) = 0;
          }

          if (v135)
          {
            CFRelease(v135);
          }

          if (!*(v11 + 352))
          {
            goto LABEL_75;
          }

          if (dword_1EAF16A10 >= 2)
          {
            LODWORD(start.value) = 0;
            LOBYTE(type.value) = 0;
            v142 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            os_log_type_enabled(v142, OS_LOG_TYPE_DEFAULT);
            fig_log_call_emit_and_clean_up_after_send_and_compose();
          }

          *&valuePtr.start.value = *MEMORY[0x1E6960C70];
          valuePtr.start.epoch = *(MEMORY[0x1E6960C70] + 16);
          time2 = valuePtr.start;
          goto LABEL_184;
        }

        if (CFEqual(a3, @"VideoCompositorColorTransferFunction"))
        {
          if (FigCFEqual())
          {
            goto LABEL_75;
          }

          if (a4)
          {
            v136 = CFStringGetTypeID();
            if (v136 != CFGetTypeID(a4))
            {
              FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF16A08, 4294954436, "<<<< FigFilePlayer >>>>", 35443, v5);
              goto LABEL_26;
            }

            v137 = *(v11 + 760);
            *(v11 + 760) = a4;
            CFRetain(a4);
          }

          else
          {
            v137 = *(v11 + 760);
            *(v11 + 760) = 0;
          }

          if (v137)
          {
            CFRelease(v137);
          }

          if (!*(v11 + 352))
          {
            goto LABEL_75;
          }

          if (dword_1EAF16A10 >= 2)
          {
            LODWORD(start.value) = 0;
            LOBYTE(type.value) = 0;
            v144 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            os_log_type_enabled(v144, OS_LOG_TYPE_DEFAULT);
            fig_log_call_emit_and_clean_up_after_send_and_compose();
          }

          *&valuePtr.start.value = *MEMORY[0x1E6960C70];
          valuePtr.start.epoch = *(MEMORY[0x1E6960C70] + 16);
          time2 = valuePtr.start;
          goto LABEL_184;
        }

        if (CFEqual(a3, @"VideoCompositorHDRDisplayMetadataPolicy"))
        {
          if (FigCFEqual())
          {
            goto LABEL_75;
          }

          if (!a4 || (v139 = CFGetTypeID(a4), v139 != CFStringGetTypeID()))
          {
            FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF16A08, 4294954436, "<<<< FigFilePlayer >>>>", 35459, v5);
            goto LABEL_26;
          }

          v140 = *(v11 + 768);
          *(v11 + 768) = a4;
          CFRetain(a4);
          if (v140)
          {
            CFRelease(v140);
          }

          if (!*(v11 + 352))
          {
            goto LABEL_75;
          }

          if (dword_1EAF16A10 >= 2)
          {
            LODWORD(start.value) = 0;
            LOBYTE(type.value) = 0;
            v141 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            os_log_type_enabled(v141, OS_LOG_TYPE_DEFAULT);
            fig_log_call_emit_and_clean_up_after_send_and_compose();
          }

          *&valuePtr.start.value = *MEMORY[0x1E6960C70];
          valuePtr.start.epoch = *(MEMORY[0x1E6960C70] + 16);
          time2 = valuePtr.start;
          goto LABEL_184;
        }

        if (CFEqual(a3, @"VideoCompositor"))
        {
          start.value = 0;
          if (a4)
          {
            if (CFEqual(a4, @"VideoCompositor_Basic"))
            {
              Metal = 0;
              goto LABEL_311;
            }

            if (CFEqual(a4, @"VideoCompositor_vImage"))
            {
              Metal = 0;
              goto LABEL_337;
            }

            if (CFEqual(a4, @"VideoCompositor_Metal"))
            {
              Metal = 0;
LABEL_357:
              if (*(v11 + 664) == 4 && (v154 = *(v11 + 656)) != 0)
              {
                start.value = CFRetain(v154);
              }

              else
              {
                Metal = FigVideoCompositorCreateMetal(*MEMORY[0x1E695E480], &start);
              }

              v149 = 4;
              goto LABEL_383;
            }

            if (CFEqual(a4, @"VideoCompositor_OpenGL"))
            {
              Metal = 0;
              goto LABEL_370;
            }

            if (CFEqual(a4, @"VideoCompositor_DeviceSpecific"))
            {
              valuePtr.start.value = 0;
              FigVideoCompositorCopyDeviceSpecificCompositorName(0, &valuePtr);
              v175 = 0;
              Metal = v176;
              if (!v176)
              {
                if (FigCFEqual())
                {
                  v175 = 1;
                }

                else if (FigCFEqual())
                {
                  v175 = 3;
                }

                else if (FigCFEqual())
                {
                  v175 = 4;
                }

                else
                {
                  v175 = 2 * (FigCFEqual() != 0);
                }
              }

              if (valuePtr.start.value)
              {
                CFRelease(valuePtr.start.value);
              }

              if (v175 > 1)
              {
                if (v175 != 2)
                {
                  if (v175 == 3)
                  {
LABEL_337:
                    if (*(v11 + 664) == 3 && (v150 = *(v11 + 656)) != 0)
                    {
                      start.value = CFRetain(v150);
                    }

                    else
                    {
                      Metal = FigVideoCompositorCreatevImage(*MEMORY[0x1E695E480], 0, &start);
                    }

                    v149 = 3;
                    goto LABEL_383;
                  }

                  goto LABEL_357;
                }

LABEL_370:
                if (*(v11 + 664) == 2 && (v156 = *(v11 + 656)) != 0)
                {
                  start.value = CFRetain(v156);
                }

                else
                {
                  Metal = FigVideoCompositorCreateOpenGL(*MEMORY[0x1E695E480], 0, &start);
                }

                v149 = 2;
LABEL_383:
                v160 = start.value;
                if (Metal || !start.value)
                {
                  if (Metal)
                  {
                    goto LABEL_390;
                  }
                }

                else
                {
                  LODWORD(valuePtr.start.value) = 23;
                  v161 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt32Type, &valuePtr);
                  FigVideoCompositorGetFigBaseObject();
                  CMBaseObjectSetProperty(v162, @"WorkerThreadPriority", v161);
                  if (v161)
                  {
                    CFRelease(v161);
                  }

                  v160 = start.value;
                }

                if (*(v11 + 656) != v160)
                {
                  FigSimpleMutexLock();
                  v163 = *(v11 + 656);
                  v164 = start.value;
                  *(v11 + 656) = start.value;
                  if (v164)
                  {
                    CFRetain(v164);
                  }

                  if (v163)
                  {
                    CFRelease(v163);
                  }

                  *(v11 + 664) = v149;
                  itemfig_updateHasEnabledVideo(a1);
                  FigSimpleMutexUnlock();
                  if (*(v11 + 352))
                  {
                    if (dword_1EAF16A10 >= 2)
                    {
                      LODWORD(type.value) = 0;
                      v182 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
                      v183 = type.value;
                      if (os_log_type_enabled(v182, OS_LOG_TYPE_DEFAULT))
                      {
                        v184 = v183;
                      }

                      else
                      {
                        v184 = v183 & 0xFFFFFFFE;
                      }

                      if (v184)
                      {
                        LODWORD(time2.value) = 136315138;
                        *(&time2.value + 4) = "itemfig_handleSetProperty";
                        _os_log_send_and_compose_impl(v184, 0, &valuePtr, 128, &dword_1962D5000, v182, 0, "<<<< FigFilePlayer >>>> %s: changing VideoCompositor while this item is current or lame => will disturb playback", &time2);
                      }

                      fig_log_call_emit_and_clean_up_after_send_and_compose();
                    }

                    *&valuePtr.start.value = *MEMORY[0x1E6960C70];
                    valuePtr.start.epoch = *(MEMORY[0x1E6960C70] + 16);
                    time2 = valuePtr.start;
                    playerfig_stopResetDisturbReprepareAndResumeWithTransaction();
                  }

                  v160 = start.value;
                  if (!start.value)
                  {
                    goto LABEL_76;
                  }

                  goto LABEL_391;
                }

LABEL_390:
                if (!v160)
                {
                  goto LABEL_76;
                }

LABEL_391:
                CFRelease(v160);
                goto LABEL_76;
              }

              if (v175)
              {
LABEL_311:
                if (*(v11 + 664) == 1 && (v143 = *(v11 + 656)) != 0)
                {
                  start.value = CFRetain(v143);
                }

                else
                {
                  Metal = FigVideoCompositorCreateBasic(*MEMORY[0x1E695E480], 0, &start);
                }

                v149 = 1;
                goto LABEL_383;
              }
            }

            else
            {
              FigVideoCompositorGetTypeID();
              CFGetTypeID(a4);
              Metal = 0;
            }

            v148 = CFRetain(a4);
          }

          else
          {
            Metal = 0;
            v148 = 0;
          }

          v149 = 0;
          start.value = v148;
          goto LABEL_383;
        }

        if (CFEqual(a3, @"VideoCompositionProperties"))
        {
          if (a4 && (v145 = CFGetTypeID(a4), v145 == CFDictionaryGetTypeID()))
          {
            started = itemfig_setVideoCompositionProperties(a1);
          }

          else
          {
            FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF16A08, 4294954516, "<<<< FigFilePlayer >>>>", 35620, v5);
          }

          goto LABEL_26;
        }

        if (CFEqual(a3, @"SynchronizedLayers"))
        {
          start.value = 0;
          if (a4)
          {
            v165 = CFGetTypeID(a4);
            if (v165 == CFArrayGetTypeID())
            {
              v166 = *(v11 + 904);
              if (v166)
              {
                CFRelease(v166);
                *(v11 + 904) = 0;
              }

              *(v11 + 904) = CFArrayCreateCopy(*MEMORY[0x1E695E480], a4);
            }
          }

          FigDeferredTransactionCreate(*MEMORY[0x1E695E480], &start.value);
          FigSimpleMutexLock();
          playerfig_connectLayerSynchronizerToVideoOutputs(v13, a1, start.value, v167, v168, v169, v170, v171, v307, v308, v309, v311, v312, SBYTE2(v312), BYTE3(v312), SHIDWORD(v312), v313, start.value, *&start.timescale, start.epoch, v315, time2.value, *&time2.timescale, time2.epoch, v317, *v318, *&v318[8], *&v318[16], v319, type.value, *&type.timescale, type.epoch, v321, valuePtr.start.value, *&valuePtr.start.timescale, valuePtr.start.epoch, valuePtr.duration.value, *&valuePtr.duration.timescale, valuePtr.duration.epoch, v323, v324, v325, v326, v327, v328, v329, v330, v331, v332, v333, v334, v335, v336, v337, v338, v339, v340, v341);
          FigSimpleMutexUnlock();
          if (*(v11 + 904))
          {
            *&valuePtr.start.value = *MEMORY[0x1E6960CC0];
            valuePtr.start.epoch = *(MEMORY[0x1E6960CC0] + 16);
            itemfig_GetDuration(a1, &valuePtr);
            v172 = *(v11 + 904);
            time2 = valuePtr.start;
            FPSupport_AppendDeferredTransactionChangeForSettingDurationOnLayers(start.value, &time2, v172);
            if (*(v11 + 352))
            {
              playerfig_synchronizeLayerToTimebaseWithTransaction(a1, start.value);
            }
          }

          FigDeferredTransactionCommit(start.value, 0);
          v173 = start.value;
          if (!start.value)
          {
            goto LABEL_75;
          }

          goto LABEL_409;
        }

        if (CFEqual(a3, @"BlendsVideoFrames"))
        {
          if (a4)
          {
            v151 = CFBooleanGetTypeID();
            if (v151 != CFGetTypeID(a4))
            {
              FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF16A08, 4294954516, "<<<< FigFilePlayer >>>>", 35676, v5);
              goto LABEL_26;
            }
          }

          v152 = *MEMORY[0x1E695E4D0] == a4;
          if (*(v11 + 1176) == v152)
          {
            goto LABEL_75;
          }

          *(v11 + 1176) = v152;
          if (!*(v11 + 352))
          {
            goto LABEL_75;
          }

          if (dword_1EAF16A10 >= 2)
          {
            LODWORD(start.value) = 0;
            LOBYTE(type.value) = 0;
            v153 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            os_log_type_enabled(v153, OS_LOG_TYPE_DEFAULT);
            fig_log_call_emit_and_clean_up_after_send_and_compose();
          }

          *&valuePtr.start.value = *MEMORY[0x1E6960C70];
          valuePtr.start.epoch = *(MEMORY[0x1E6960C70] + 16);
          time2 = valuePtr.start;
          goto LABEL_184;
        }

        if (CFEqual(a3, @"PropagatePerFrameHDRDisplayMetadata"))
        {
          if (!a4 || (v155 = CFGetTypeID(a4), v155 != CFBooleanGetTypeID()))
          {
            FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF16A08, 4294954516, "<<<< FigFilePlayer >>>>", 35687, v5);
            goto LABEL_26;
          }

          *(v11 + 1192) = CFBooleanGetValue(a4);
          if (dword_1EAF16A10 >= 2)
          {
            LODWORD(start.value) = 0;
            LOBYTE(type.value) = 0;
            v185 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            os_log_type_enabled(v185, OS_LOG_TYPE_DEFAULT);
            fig_log_call_emit_and_clean_up_after_send_and_compose();
          }

          *&valuePtr.start.value = *MEMORY[0x1E6960C70];
          valuePtr.start.epoch = *(MEMORY[0x1E6960C70] + 16);
          time2 = valuePtr.start;
          goto LABEL_184;
        }

        if (CFEqual(a3, @"ApertureMode"))
        {
          LODWORD(time2.value) = 0;
          HIDWORD(v313) = 0;
          LODWORD(start.value) = 0;
          LODWORD(type.value) = 0;
          if (a4)
          {
            v157 = CFGetTypeID(a4);
            if (v157 == CFStringGetTypeID())
            {
              if (*(v11 + 1240))
              {
                itemfig_GetDimensions();
              }

              if (CFEqual(a4, @"CleanAperture"))
              {
                v158 = 1;
                v159 = 1;
LABEL_458:
                *(v11 + 1193) = v158;
                *(v11 + 1194) = v159;
LABEL_459:
                itemfig_setCAImageQueueFlagsForApertureMode(a1);
                if (!FigUseVideoReceiverForCALayer())
                {
                  FigSimpleMutexLock();
                  playerfig_updateVideoLayerSize(v13, 0);
                  FigSimpleMutexUnlock();
                }

                v192 = *(v14 + 536);
                if (v192 == a1)
                {
                  playerfig_scheduleVideoTargetImageQueueConfigurationTransitionForItem(v13, v192, MEMORY[0x1E6960C70], v187, v188, v189, v190, v191, v307, v308, v309, v311, v312, v313, start.value, *&start.timescale, start.epoch, v315, SHIDWORD(v315), time2.value, *&time2.timescale, time2.epoch, v317, *v318, *&v318[8], *&v318[16], v319, type.value, *&type.timescale, type.epoch, v321, valuePtr.start.value, *&valuePtr.start.timescale, valuePtr.start.epoch, valuePtr.duration.value, *&valuePtr.duration.timescale, valuePtr.duration.epoch, v323, v324, v325, v326, v327, v328, v329, v330, v331, v332, v333, v334, v335, v336, v337, v338, v339, v340, v341, v342, v343, v344);
                }

                if (!*(v11 + 1240))
                {
                  goto LABEL_75;
                }

                itemfig_GetDimensions();
                if (*&time2.value == *&type.value && *&start.value == *(&v313 + 1))
                {
                  goto LABEL_75;
                }

                itemfig_handleSetProperty_cold_2(v13, a1, v14, &valuePtr, v193, v194, v195, v196);
                goto LABEL_233;
              }

              if (CFEqual(a4, @"ProductionAperture"))
              {
                v159 = 0;
                v158 = 1;
                goto LABEL_458;
              }

              if (CFEqual(a4, @"EncodedPixels"))
              {
                v158 = 0;
                v159 = 0;
                goto LABEL_458;
              }
            }
          }

          FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v307, v308, v309);
          Metal = v174;
          if (v174)
          {
            goto LABEL_76;
          }

          goto LABEL_459;
        }

        if (CFEqual(a3, @"ImageQueueInterpolationCurve"))
        {
          if (a4)
          {
            v177 = CFArrayGetTypeID();
            if (v177 != CFGetTypeID(a4))
            {
              FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF16A08, 4294954516, "<<<< FigFilePlayer >>>>", 35780, v5);
              goto LABEL_26;
            }

            v178 = *(v11 + 1168);
            if (v178 == a4)
            {
              goto LABEL_75;
            }

            *(v11 + 1168) = a4;
            CFRetain(a4);
            if (!v178)
            {
              goto LABEL_434;
            }
          }

          else
          {
            v178 = *(v11 + 1168);
            if (!v178)
            {
              goto LABEL_75;
            }

            *(v11 + 1168) = 0;
          }

          CFRelease(v178);
LABEL_434:
          if (!*(v11 + 352))
          {
            goto LABEL_75;
          }

          if (dword_1EAF16A10 >= 2)
          {
            LODWORD(start.value) = 0;
            LOBYTE(type.value) = 0;
            v181 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            os_log_type_enabled(v181, OS_LOG_TYPE_DEFAULT);
            fig_log_call_emit_and_clean_up_after_send_and_compose();
          }

          *&valuePtr.start.value = *MEMORY[0x1E6960C70];
          valuePtr.start.epoch = *(MEMORY[0x1E6960C70] + 16);
          time2 = valuePtr.start;
          goto LABEL_184;
        }

        if (CFEqual(a3, @"VideoEnhancementMode"))
        {
          if (a4)
          {
            v179 = CFGetTypeID(a4);
            if (v179 == CFStringGetTypeID())
            {
              if (!FigCFEqual())
              {
                v180 = *(v11 + 1184);
                *(v11 + 1184) = a4;
                CFRetain(a4);
                if (v180)
                {
                  CFRelease(v180);
                }

                itemfig_setVideoEnhancementModeOnImageQueues(a1, a4);
              }

              goto LABEL_75;
            }
          }

          FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF16A08, 4294954516, "<<<< FigFilePlayer >>>>", 35795, v5);
          goto LABEL_26;
        }

        if (CFEqual(a3, @"AlwaysMonitorPlayability"))
        {
          if (!a4 || (v186 = CFGetTypeID(a4), v186 != CFBooleanGetTypeID()))
          {
            FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF16A08, 4294954436, "<<<< FigFilePlayer >>>>", 35821, v5);
            goto LABEL_26;
          }

          if (!CFBooleanGetValue(a4))
          {
            goto LABEL_75;
          }

          itemfig_handleSetProperty_cold_3(v11, a1, &valuePtr);
          goto LABEL_233;
        }

        if (CFEqual(a3, @"ContinuePlayingDuringPrerollForSeek"))
        {
          if (a4)
          {
            v197 = CFGetTypeID(a4);
            if (v197 == CFBooleanGetTypeID())
            {
              v198 = CFBooleanGetValue(a4);
              *(v11 + 287) = v198;
              v199 = *(v11 + 352);
              if (v199)
              {
                FigPlaybackBossSetContinuePlayingDuringPrerollForSeek(v199, v198);
              }

              goto LABEL_75;
            }
          }

          FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF16A08, 4294954436, "<<<< FigFilePlayer >>>>", 35831, v5);
          goto LABEL_26;
        }

        if (CFEqual(a3, @"ContinuePlayingDuringPrerollForRateChange"))
        {
          if (a4)
          {
            v200 = CFGetTypeID(a4);
            if (v200 == CFBooleanGetTypeID())
            {
              v201 = CFBooleanGetValue(a4);
              *(v11 + 288) = v201;
              v202 = *(v11 + 352);
              if (v202)
              {
                FigPlaybackBossSetContinuePlayingDuringPrerollForRateChange(v202, v201);
              }

              goto LABEL_75;
            }
          }

          FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF16A08, 4294954436, "<<<< FigFilePlayer >>>>", 35841, v5);
          goto LABEL_26;
        }

        if (CFEqual(a3, @"IFrameOnlySpeedThreshold"))
        {
          if (a4)
          {
            v203 = CFGetTypeID(a4);
            if (v203 == CFNumberGetTypeID())
            {
              *(v11 + 290) = 1;
              CFNumberGetValue(a4, kCFNumberFloat32Type, (v11 + 292));
              v204 = *(v11 + 352);
              if (v204)
              {
                FigPlaybackBossSetIFrameOnlySpeedThreshold(v204, *(v11 + 292));
              }

              goto LABEL_75;
            }
          }

          FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF16A08, 4294954436, "<<<< FigFilePlayer >>>>", 35852, v5);
          goto LABEL_26;
        }

        if (CFEqual(a3, @"UseIFrameOnlyPlaybackForHighRateScaledEdits"))
        {
          if (a4)
          {
            v205 = CFGetTypeID(a4);
            if (v205 == CFBooleanGetTypeID())
            {
              v206 = CFBooleanGetValue(a4);
              *(v11 + 289) = v206;
              v207 = *(v11 + 352);
              if (v207)
              {
                FigPlaybackBossSetUseIFrameOnlyPlaybackForHighRateScaledEdits(v207, v206);
              }

              goto LABEL_75;
            }
          }

          FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF16A08, 4294954436, "<<<< FigFilePlayer >>>>", 35862, v5);
          goto LABEL_26;
        }

        if (CFEqual(a3, @"MinimumIntervalForIFrameOnlyPlayback"))
        {
          if (a4)
          {
            v208 = CFGetTypeID(a4);
            if (v208 == CFDictionaryGetTypeID())
            {
              CMTimeMakeFromDictionary(&valuePtr.start, a4);
              *(v11 + 296) = *&valuePtr.start.value;
              *(v11 + 312) = valuePtr.start.epoch;
              v209 = *(v11 + 352);
              if (v209)
              {
                *&valuePtr.start.value = *(v11 + 296);
                valuePtr.start.epoch = *(v11 + 312);
                FigPlaybackBossSetMinimumIntervalForIFrameOnlyPlayback(v209, &valuePtr.start);
              }

              goto LABEL_75;
            }
          }

          FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF16A08, 4294954436, "<<<< FigFilePlayer >>>>", 35872, v5);
          goto LABEL_26;
        }

        if (CFEqual(a3, @"ThoroughlyRefreshClosedCaptionsWhenSeeking"))
        {
          if (a4)
          {
            v210 = CFGetTypeID(a4);
            if (v210 == CFBooleanGetTypeID())
            {
              v211 = CFBooleanGetValue(a4);
              *(v11 + 320) = v211;
              v212 = *(v11 + 352);
              if (v212)
              {
                FigPlaybackBossSetThoroughlyRefreshClosedCaptionsWhenSeeking(v212, v211);
              }

              goto LABEL_75;
            }
          }

          FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF16A08, 4294954436, "<<<< FigFilePlayer >>>>", 35882, v5);
          goto LABEL_26;
        }

        if (CFEqual(a3, @"RequiresExternalProtection"))
        {
          if (a4)
          {
            v213 = CFGetTypeID(a4);
            if (v213 == CFBooleanGetTypeID())
            {
              if (CFBooleanGetValue(a4))
              {
                valuePtr.start.value = 1;
                Metal = 0;
                *(v11 + 1208) = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt64Type, &valuePtr);
                goto LABEL_76;
              }
            }
          }

          FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF16A08, 4294954516, "<<<< FigFilePlayer >>>>", 35888, v5);
          goto LABEL_26;
        }

        if (CFEqual(a3, @"LoudnessInfo"))
        {
          if (a4)
          {
            v214 = CFGetTypeID(a4);
            if (v214 != CFDictionaryGetTypeID())
            {
              FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF16A08, 4294954516, "<<<< FigFilePlayer >>>>", 35907, v5);
              goto LABEL_26;
            }

            v217 = *(v11 + 1504);
            *(v11 + 1504) = a4;
            goto LABEL_566;
          }

          v217 = *(v11 + 1504);
          *(v11 + 1504) = 0;
          goto LABEL_567;
        }

        if (CFEqual(a3, @"SoundCheckVolumeNormalization"))
        {
          if (a4)
          {
            v215 = CFGetTypeID(a4);
            if (v215 == CFNumberGetTypeID())
            {
              itemfig_handleSetProperty_cold_4();
              goto LABEL_75;
            }
          }

          FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF16A08, 4294954516, "<<<< FigFilePlayer >>>>", 35912, v5);
          goto LABEL_26;
        }

        if (CFEqual(a3, @"Volume"))
        {
          if (a4)
          {
            v216 = CFGetTypeID(a4);
            if (v216 == CFNumberGetTypeID())
            {
              LODWORD(valuePtr.start.value) = 1065353216;
              CFNumberGetValue(a4, kCFNumberFloat32Type, &valuePtr);
              *(v11 + 1476) = valuePtr.start.value;
              itemfig_updateVolumeOffset(a1);
              goto LABEL_75;
            }
          }

          FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF16A08, 4294954516, "<<<< FigFilePlayer >>>>", 35927, v5);
          goto LABEL_26;
        }

        if (CFEqual(a3, @"AdjustTargetLevel"))
        {
          if (a4)
          {
            v218 = CFGetTypeID(a4);
            if (v218 == CFNumberGetTypeID())
            {
              v219 = *(v11 + 1544);
              *(v11 + 1544) = a4;
              CFRetain(a4);
              if (v219)
              {
                CFRelease(v219);
              }

              itemfig_applyAdjustTargetLevel(a1);
              goto LABEL_75;
            }
          }

          FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF16A08, 4294954516, "<<<< FigFilePlayer >>>>", 35940, v5);
          goto LABEL_26;
        }

        if (CFEqual(a3, @"AdjustCompressionProfile"))
        {
          if (a4)
          {
            v220 = CFGetTypeID(a4);
            if (v220 == CFNumberGetTypeID())
            {
              v221 = *(v11 + 1552);
              *(v11 + 1552) = a4;
              CFRetain(a4);
              if (v221)
              {
                CFRelease(v221);
              }

              itemfig_applyAdjustCompressionProfile(a1);
              goto LABEL_75;
            }
          }

          FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF16A08, 4294954516, "<<<< FigFilePlayer >>>>", 35950, v5);
          goto LABEL_26;
        }

        if (CFEqual(a3, @"MediaKind"))
        {
          if (a4)
          {
            v222 = CFGetTypeID(a4);
            if (v222 != CFStringGetTypeID())
            {
              FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF16A08, 4294954516, "<<<< FigFilePlayer >>>>", 35967, v5);
              goto LABEL_26;
            }

            v217 = *(v11 + 1496);
            *(v11 + 1496) = a4;
LABEL_566:
            CFRetain(a4);
            goto LABEL_567;
          }

          v217 = *(v11 + 1496);
          *(v11 + 1496) = 0;
LABEL_567:
          if (v217)
          {
            CFRelease(v217);
          }

          itemfig_applyLoudnessInfo(a1, 0, 1, 0);
          goto LABEL_75;
        }

        if (CFEqual(a3, @"VisualContextArray"))
        {
          itemfig_setVisualContextArray(a1, a4);
          goto LABEL_75;
        }

        if (CFEqual(a3, @"TextMarkupArray"))
        {
          itemfig_setTextMarkupArray(a1, a4);
          goto LABEL_75;
        }

        if (CFEqual(a3, @"TextHighlightArray"))
        {
          itemfig_setTextHighlightArray(a1, a4);
          goto LABEL_75;
        }

        if (CFEqual(a3, @"LegibleOutputs"))
        {
          if (!a4 || (v223 = CFGetTypeID(a4), v223 == CFDictionaryGetTypeID()))
          {
            itemfig_setLegibleOutputsDict(a1, a4);
            goto LABEL_75;
          }

          FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF16A08, 4294954516, "<<<< FigFilePlayer >>>>", 35989, v5);
          goto LABEL_26;
        }

        if (CFEqual(a3, @"MetadataOutputs"))
        {
          if (!a4 || (v224 = CFGetTypeID(a4), v224 == CFDictionaryGetTypeID()))
          {
            started = itemfig_setMetadataOutputsDict(a1, a4);
          }

          else
          {
            FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF16A08, 4294954516, "<<<< FigFilePlayer >>>>", 35996, v5);
          }

          goto LABEL_26;
        }

        if (CFEqual(a3, @"RenderedLegibleOutputs"))
        {
          if (!a4 || (v225 = CFGetTypeID(a4), v225 == CFDictionaryGetTypeID()))
          {
            itemfig_setRenderedLegibleOutputsDict(a1, a4);
            goto LABEL_75;
          }

          FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF16A08, 4294954516, "<<<< FigFilePlayer >>>>", 36004, v5);
          goto LABEL_26;
        }

        if (CFEqual(a3, @"SelectedMediaArray"))
        {
          if (a4 && (v226 = CFGetTypeID(a4), v226 == CFArrayGetTypeID()))
          {
            started = itemfig_updateSelectedMediaArrayInternal(a1, a4, 0, 0);
          }

          else
          {
            FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF16A08, 4294954516, "<<<< FigFilePlayer >>>>", 36013, v5);
          }

          goto LABEL_26;
        }

        if (CFEqual(a3, @"SuppressVideoLayers"))
        {
          started = itemfig_setSuppressVideoLayers(a1, *MEMORY[0x1E695E4D0] == a4, v227, v228, v229, v230, v231, v232, v307, v308, v309, v311, v312, v313, start.value, *&start.timescale, start.epoch, v315, time2.value, *&time2.timescale);
          goto LABEL_26;
        }

        if (CFEqual(a3, @"SuppressLegibleRendering"))
        {
          started = itemfig_setSuppressLegibleRendering(a1, *MEMORY[0x1E695E4D0] == a4);
          goto LABEL_26;
        }

        if (CFEqual(a3, @"SeekingWaitsForVideoCompositionRendering"))
        {
          if (a4)
          {
            v233 = CFBooleanGetTypeID();
            if (v233 != CFGetTypeID(a4))
            {
              FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF16A08, 4294954516, "<<<< FigFilePlayer >>>>", 36036, v5);
              goto LABEL_26;
            }

            v234 = CFBooleanGetValue(a4);
          }

          else
          {
            v234 = 0;
          }

          *(v11 + 545) = v234;
          if (!*(v11 + 352) || !*(v11 + 656))
          {
            goto LABEL_75;
          }

          if (dword_1EAF16A10 >= 2)
          {
            LODWORD(start.value) = 0;
            LOBYTE(type.value) = 0;
            v237 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            os_log_type_enabled(v237, OS_LOG_TYPE_DEFAULT);
            fig_log_call_emit_and_clean_up_after_send_and_compose();
          }

          *&valuePtr.start.value = *MEMORY[0x1E6960C70];
          valuePtr.start.epoch = *(MEMORY[0x1E6960C70] + 16);
          time2 = valuePtr.start;
          goto LABEL_184;
        }

        if (CFEqual(a3, @"AudioProcessingTap"))
        {
          if (a4)
          {
            v235 = MTAudioProcessingTapGetTypeID();
            if (v235 != CFGetTypeID(a4))
            {
              FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF16A08, 4294954516, "<<<< FigFilePlayer >>>>", 36053, v5);
              goto LABEL_26;
            }

            v236 = *(v11 + 1480);
            if (v236 == a4)
            {
              goto LABEL_75;
            }

            *(v11 + 1480) = a4;
            CFRetain(a4);
            if (!v236)
            {
              goto LABEL_622;
            }
          }

          else
          {
            v236 = *(v11 + 1480);
            if (!v236)
            {
              goto LABEL_75;
            }

            *(v11 + 1480) = 0;
          }

          CFRelease(v236);
LABEL_622:
          if (!*(v11 + 352))
          {
            goto LABEL_75;
          }

          if (dword_1EAF16A10 >= 2)
          {
            LODWORD(start.value) = 0;
            LOBYTE(type.value) = 0;
            v239 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            os_log_type_enabled(v239, OS_LOG_TYPE_DEFAULT);
            fig_log_call_emit_and_clean_up_after_send_and_compose();
          }

          *&valuePtr.start.value = *MEMORY[0x1E6960C70];
          valuePtr.start.epoch = *(MEMORY[0x1E6960C70] + 16);
          time2 = valuePtr.start;
          goto LABEL_184;
        }

        if (CFEqual(a3, @"ResetAudioBufferedAhead"))
        {
          if (!*(v11 + 352) || !fp_bufferedAirPlayActiveAndSupportsAtmos(v13, 0))
          {
            goto LABEL_75;
          }

          if (dword_1EAF16A10 >= 2)
          {
            LODWORD(start.value) = 0;
            LOBYTE(type.value) = 0;
            v238 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            os_log_type_enabled(v238, OS_LOG_TYPE_DEFAULT);
            fig_log_call_emit_and_clean_up_after_send_and_compose();
          }

          *&valuePtr.start.value = *MEMORY[0x1E6960C70];
          valuePtr.start.epoch = *(MEMORY[0x1E6960C70] + 16);
          time2 = valuePtr.start;
          goto LABEL_184;
        }

        if (CFEqual(a3, @"TimePitchAlgorithm"))
        {
          if (!a4 || (v240 = CFStringGetTypeID(), v240 != CFGetTypeID(a4)))
          {
            FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF16A08, 4294954516, "<<<< FigFilePlayer >>>>", 36097, v5);
            goto LABEL_26;
          }

          if (CFEqual(a4, *(v11 + 1512)))
          {
            goto LABEL_75;
          }

          v241 = @"TimeDomain";
          if (!FigCFEqual())
          {
            v241 = @"Spectral";
            if (!FigCFEqual())
            {
              v241 = @"Varispeed";
              if (!FigCFEqual())
              {
                v241 = @"LowQualityZeroLatency";
                if (!FigCFEqual())
                {
                  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v307, v308, v309);
                  Metal = v242;
                  if (v242)
                  {
                    goto LABEL_76;
                  }

                  v241 = 0;
                }
              }
            }
          }

          if (dword_1EAF16A10)
          {
            LODWORD(start.value) = 0;
            LOBYTE(type.value) = 0;
            v243 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            os_log_type_enabled(v243, OS_LOG_TYPE_DEFAULT);
            fig_log_call_emit_and_clean_up_after_send_and_compose();
          }

          v247 = *(v11 + 1512);
          *(v11 + 1512) = v241;
          if (v241)
          {
            CFRetain(v241);
          }

          if (v247)
          {
            CFRelease(v247);
          }

          if (!*(v11 + 352))
          {
            goto LABEL_75;
          }

          if (dword_1EAF16A10 >= 2)
          {
            LODWORD(start.value) = 0;
            LOBYTE(type.value) = 0;
            v248 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            os_log_type_enabled(v248, type.value);
            fig_log_call_emit_and_clean_up_after_send_and_compose();
          }

          *&valuePtr.start.value = *MEMORY[0x1E6960C70];
          valuePtr.start.epoch = *(MEMORY[0x1E6960C70] + 16);
          time2 = valuePtr.start;
          goto LABEL_184;
        }

        if (CFEqual(a3, @"AudioProcessingUnits"))
        {
          if (a4)
          {
            v244 = CFGetTypeID(a4);
            if (v244 != CFArrayGetTypeID())
            {
              FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF16A08, 4294954516, "<<<< FigFilePlayer >>>>", 36112, v5);
              goto LABEL_26;
            }
          }

          if (!FPSupport_AudioProcessingUnitsConfigurationsAreDifferent(*(v11 + 1528), a4))
          {
            goto LABEL_75;
          }

          v245 = *(v11 + 1528);
          *(v11 + 1528) = a4;
          if (a4)
          {
            CFRetain(a4);
          }

          if (v245)
          {
            CFRelease(v245);
          }

          if (!*(v11 + 352))
          {
            goto LABEL_75;
          }

          if (dword_1EAF16A10 >= 2)
          {
            LODWORD(start.value) = 0;
            LOBYTE(type.value) = 0;
            v246 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            os_log_type_enabled(v246, OS_LOG_TYPE_DEFAULT);
            fig_log_call_emit_and_clean_up_after_send_and_compose();
          }

          *&valuePtr.start.value = *MEMORY[0x1E6960C70];
          valuePtr.start.epoch = *(MEMORY[0x1E6960C70] + 16);
          time2 = valuePtr.start;
          goto LABEL_184;
        }

        if (CFEqual(a3, @"AudioCurves"))
        {
          LOBYTE(valuePtr.start.value) = 0;
          LOBYTE(time2.value) = 0;
          fp_checkForCinematicAudioParametersInAudioCurves(*(v11 + 1520), &valuePtr, 0, 0);
          if (fp_isValidAudioCurves(a4))
          {
            v253 = *(v11 + 1520);
            *(v11 + 1520) = a4;
            if (a4)
            {
              CFRetain(a4);
            }

            if (v253)
            {
              CFRelease(v253);
            }

            itemfig_applyItemAudioCurvesToAllAudioTracks(v11);
            fp_checkForCinematicAudioParametersInAudioCurves(a4, &time2, 0, 0);
            if (LOBYTE(valuePtr.start.value) != LOBYTE(time2.value))
            {
              playerfig_dispatchAsyncAutoSelectionCriteriaChangedForItem(v13, a1);
            }

            goto LABEL_75;
          }

          FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF16A08, 4294954516, "<<<< FigFilePlayer >>>>", 36137, v5);
          goto LABEL_26;
        }

        if (CFEqual(a3, @"AudioClockDevice"))
        {
          if (a4)
          {
            v249 = CFStringGetTypeID();
            if (v249 != CFGetTypeID(a4))
            {
              FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF16A08, 4294954516, "<<<< FigFilePlayer >>>>", 36155, v5);
              goto LABEL_26;
            }

            v252 = *(v11 + 1536);
            *(v11 + 1536) = a4;
            CFRetain(a4);
          }

          else
          {
            v252 = *(v11 + 1536);
            *(v11 + 1536) = 0;
          }

          if (v252)
          {
            CFRelease(v252);
          }

          goto LABEL_180;
        }

        if (CFEqual(a3, @"DisplayNonForcedSubtitles"))
        {
          itemfig_handleSetProperty_cold_5();
          goto LABEL_75;
        }

        if (CFEqual(a3, @"AutomaticallyLoadedAssetProperties"))
        {
          if (!a4 || (v250 = CFGetTypeID(a4), v250 != CFArrayGetTypeID()))
          {
            FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF16A08, 4294954516, "<<<< FigFilePlayer >>>>", 36182, v5);
            goto LABEL_26;
          }

          FigSimpleMutexLock();
          v251 = *(v11 + 1264);
          *(v11 + 1264) = a4;
          goto LABEL_691;
        }

        if (CFEqual(a3, @"AutomaticallyLoadedAssetTrackProperties"))
        {
          if (!a4 || (v254 = CFGetTypeID(a4), v254 != CFArrayGetTypeID()))
          {
            FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF16A08, 4294954516, "<<<< FigFilePlayer >>>>", 36194, v5);
            goto LABEL_26;
          }

          FigSimpleMutexLock();
          v251 = *(v11 + 1272);
          *(v11 + 1272) = a4;
LABEL_691:
          CFRetain(a4);
          if (v251)
          {
            CFRelease(v251);
          }

          goto LABEL_36;
        }

        if (CFEqual(a3, @"ServiceIdentifier"))
        {
          if (!a4 || (v255 = CFStringGetTypeID(), v255 != CFGetTypeID(a4)))
          {
            FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF16A08, 4294954516, "<<<< FigFilePlayer >>>>", 36215, v5);
            goto LABEL_26;
          }

          v256 = *(v11 + 1320);
          *(v11 + 1320) = a4;
          goto LABEL_721;
        }

        if (CFEqual(a3, @"ForceEnableAccessLog"))
        {
          if (a4)
          {
            v257 = CFGetTypeID(a4);
            if (v257 == CFBooleanGetTypeID())
            {
              Metal = 0;
              *(v11 + 1745) = *MEMORY[0x1E695E4D0] == a4;
              goto LABEL_76;
            }
          }

          FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF16A08, 4294954516, "<<<< FigFilePlayer >>>>", 36222, v5);
          goto LABEL_26;
        }

        if (CFEqual(a3, @"OutOfBandTextRenderingVideoDimensions"))
        {
          if (a4)
          {
            v258 = CFGetTypeID(a4);
            if (v258 == CFDictionaryGetTypeID() && CGSizeMakeWithDictionaryRepresentation(a4, (v11 + 1928)))
            {
              Metal = 0;
              *(v11 + 1920) = 1;
              goto LABEL_76;
            }
          }

          FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF16A08, 4294954436, "<<<< FigFilePlayer >>>>", 36233, v5);
          goto LABEL_26;
        }

        if (CFEqual(a3, @"PlayHapticTracks"))
        {
          if (a4)
          {
            v259 = CFGetTypeID(a4);
            if (v259 == CFBooleanGetTypeID())
            {
              *(v11 + 1063) = *MEMORY[0x1E695E4D0] == a4;
              if (!*(v11 + 352))
              {
                goto LABEL_75;
              }

              if (dword_1EAF16A10 >= 2)
              {
                LODWORD(start.value) = 0;
                LOBYTE(type.value) = 0;
                v260 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
                os_log_type_enabled(v260, OS_LOG_TYPE_DEFAULT);
                fig_log_call_emit_and_clean_up_after_send_and_compose();
              }

              *&valuePtr.start.value = *MEMORY[0x1E6960C70];
              valuePtr.start.epoch = *(MEMORY[0x1E6960C70] + 16);
              time2 = valuePtr.start;
              goto LABEL_184;
            }
          }

          itemfig_handleSetProperty_cold_6(&valuePtr);
LABEL_233:
          Metal = LODWORD(valuePtr.start.value);
          goto LABEL_76;
        }

        if (CFEqual(a3, @"HapticPlaybackLocality"))
        {
          if (!a4)
          {
            v256 = *(v11 + 1072);
            *(v11 + 1072) = 0;
            goto LABEL_731;
          }

          v261 = CFGetTypeID(a4);
          if (v261 != CFStringGetTypeID())
          {
            itemfig_handleSetProperty_cold_7(&valuePtr);
            goto LABEL_233;
          }

          v256 = *(v11 + 1072);
          *(v11 + 1072) = a4;
LABEL_721:
          CFRetain(a4);
LABEL_731:
          if (!v256)
          {
            goto LABEL_75;
          }

          v173 = v256;
          goto LABEL_409;
        }

        if (CFEqual(a3, @"AudioSpatializationAllowed"))
        {
          if (!a4 || (v262 = CFGetTypeID(a4), v262 != CFBooleanGetTypeID()))
          {
            FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF16A08, 4294954516, "<<<< FigFilePlayer >>>>", 36275, v5);
            goto LABEL_26;
          }

          *(v11 + 1440) = *MEMORY[0x1E695E4D0] == a4;
          if (!itemfig_wantsDifferentSpatializationConfiguration(a1))
          {
            goto LABEL_75;
          }

          if (dword_1EAF16A10)
          {
            LODWORD(start.value) = 0;
            LOBYTE(type.value) = 0;
            v263 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            os_log_type_enabled(v263, OS_LOG_TYPE_DEFAULT);
            fig_log_call_emit_and_clean_up_after_send_and_compose();
          }

          *&valuePtr.start.value = *MEMORY[0x1E6960C70];
          valuePtr.start.epoch = *(MEMORY[0x1E6960C70] + 16);
          time2 = valuePtr.start;
          goto LABEL_184;
        }

        if (CFEqual(a3, @"StereoAudioSpatializationAllowed"))
        {
          if (!a4 || (v264 = CFGetTypeID(a4), v264 != CFBooleanGetTypeID()))
          {
            FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF16A08, 4294954516, "<<<< FigFilePlayer >>>>", 36289, v5);
            goto LABEL_26;
          }

          *(v11 + 1442) = 1;
          *(v11 + 1441) = *MEMORY[0x1E695E4D0] == a4;
          if (!itemfig_wantsDifferentSpatializationConfiguration(a1))
          {
            goto LABEL_75;
          }

          if (dword_1EAF16A10)
          {
            LODWORD(start.value) = 0;
            LOBYTE(type.value) = 0;
            v265 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            os_log_type_enabled(v265, OS_LOG_TYPE_DEFAULT);
            fig_log_call_emit_and_clean_up_after_send_and_compose();
          }

          *&valuePtr.start.value = *MEMORY[0x1E6960C70];
          valuePtr.start.epoch = *(MEMORY[0x1E6960C70] + 16);
          time2 = valuePtr.start;
          goto LABEL_184;
        }

        if (CFEqual(a3, @"CoordinationIdentifier"))
        {
          if (a4)
          {
            v266 = CFGetTypeID(a4);
            if (v266 != CFStringGetTypeID())
            {
              FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF16A08, 4294954516, "<<<< FigFilePlayer >>>>", 36314, v5);
              goto LABEL_26;
            }
          }

          if (FigCFEqual())
          {
            goto LABEL_75;
          }

          AllocatorForMedia = FigGetAllocatorForMedia();
          Metal = CFDictionaryCreateMutable(AllocatorForMedia, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
          if (!Metal)
          {
            goto LABEL_76;
          }

          FigCFDictionarySetValue();
          CMNotificationCenterGetDefaultLocalCenter();
          FigDispatchAsyncPostNotification();
          v268 = *(v11 + 2080);
          *(v11 + 2080) = a4;
          if (a4)
          {
            CFRetain(a4);
          }

          if (v268)
          {
            CFRelease(v268);
          }

          v173 = Metal;
LABEL_409:
          CFRelease(v173);
          goto LABEL_75;
        }

        if (CFEqual(a3, @"ParticipatesInCoordinatedPlayback"))
        {
          if (a4)
          {
            v269 = CFGetTypeID(a4);
            if (v269 == CFBooleanGetTypeID())
            {
              Metal = 0;
              *(v11 + 2088) = *MEMORY[0x1E695E4D0] == a4;
              goto LABEL_76;
            }
          }

          FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF16A08, 4294954516, "<<<< FigFilePlayer >>>>", 36327, v5);
          goto LABEL_26;
        }

        if (CFEqual(a3, @"VideoSlotUsage"))
        {
          if (a4)
          {
            v270 = CFGetTypeID(a4);
            if (v270 == CFArrayGetTypeID())
            {
              itemfig_updateVideoSlotUsage(a1, a4, v271, v272, v273, v274, v275, v276, v307, v308, v309, v311, v312, v313, start.value, *&start.timescale, start.epoch, v315, time2.value, *&time2.timescale, time2.epoch, v317, *v318, *&v318[8]);
              goto LABEL_75;
            }
          }

          FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF16A08, 4294954436, "<<<< FigFilePlayer >>>>", 36339, v5);
          goto LABEL_26;
        }

        if (CFEqual(a3, @"TransientTimebaseForCoordinatedPlaybackSynchronization"))
        {
          if (a4)
          {
            v277 = CFGetTypeID(a4);
            if (v277 != CMTimebaseGetTypeID())
            {
              FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF16A08, 4294954436, "<<<< FigFilePlayer >>>>", 36356, v5);
              goto LABEL_26;
            }

            v278 = *(v11 + 344);
            *(v11 + 344) = a4;
            CFRetain(a4);
          }

          else
          {
            v278 = *(v11 + 344);
            *(v11 + 344) = 0;
          }

          if (v278)
          {
            CFRelease(v278);
          }

          if (a4)
          {
            if (!dword_1EAF16A10)
            {
              goto LABEL_75;
            }
          }

          else if (!dword_1EAF16A10)
          {
            goto LABEL_75;
          }

          LODWORD(start.value) = 0;
          LOBYTE(type.value) = 0;
          v282 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          os_log_type_enabled(v282, OS_LOG_TYPE_DEFAULT);
          goto LABEL_74;
        }

        if (CFEqual(a3, @"RTCReportingCategory"))
        {
          if (!a4)
          {
            goto LABEL_75;
          }

          v279 = CFGetTypeID(a4);
          if (v279 != CFStringGetTypeID())
          {
            goto LABEL_75;
          }

          FigSimpleMutexLock();
          v280 = *(v11 + 1960);
          *(v11 + 1960) = a4;
          CFRetain(a4);
          if (v280)
          {
            CFRelease(v280);
          }

          v281 = *(v11 + 1952);
          if (v281)
          {
            itemfig_handleSetProperty_cold_8(v11 + 1960, v281);
          }

          goto LABEL_835;
        }

        if (CFEqual(a3, @"ClientReportingValues"))
        {
          if (!a4)
          {
            goto LABEL_75;
          }

          v283 = CFGetTypeID(a4);
          if (v283 != CFDictionaryGetTypeID())
          {
            goto LABEL_75;
          }

          FigSimpleMutexLock();
          FigReportingAgentSetStatsForAllKeys(*(v11 + 1952), @"playerStats", a4);
          goto LABEL_835;
        }

        if (CFEqual(a3, @"ArtificiallyDelayPreparingItemForTestingOnly"))
        {
          FigCFNumberGetFloat64();
          Metal = 0;
          *(v11 + 2120) = v284;
          goto LABEL_76;
        }

        if (CFEqual(a3, @"SpeedRampData"))
        {
          if (!*(v14 + 1140))
          {
            goto LABEL_75;
          }

          if (a4)
          {
            v285 = CFGetTypeID(a4);
            if (v285 != CFDataGetTypeID() || !FigSpeedRampDataIsValid(a4))
            {
              FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF16A08, 4294954436, "<<<< FigFilePlayer >>>>", 36434, v5);
              goto LABEL_26;
            }
          }

          v287 = *(v11 + 2128);
          if (v287)
          {
            CFRelease(v287);
            *(v11 + 2128) = 0;
          }

          if (a4)
          {
            v288 = FigGetAllocatorForMedia();
            *(v11 + 2128) = CFDataCreateCopy(v288, a4);
          }

          if (*(v14 + 48) > 0.0 && (*(v11 + 560) & 0x1D) == 1 && (*(v11 + 584) & 0x1D) == 1)
          {
            FigSimpleMutexLock();
            v289 = *(v14 + 176);
            FigSimpleMutexUnlock();
            if (!v289)
            {
              v290 = v11 + 572;
              memset(&start, 0, sizeof(start));
              HostTimeClock = CMClockGetHostTimeClock();
              CMClockGetTime(&start, HostTimeClock);
              memset(&type, 0, sizeof(type));
              *&valuePtr.start.value = *v290;
              valuePtr.start.epoch = *(v290 + 16);
              time2 = start;
              CMTimeSubtract(&type, &valuePtr.start, &time2);
              valuePtr.start = type;
              time2 = **&MEMORY[0x1E6960CC0];
              v292 = CMTimeCompare(&valuePtr.start, &time2);
              if (v292 >= 1 && dword_1EAF16A10 >= 2)
              {
                v293 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
                os_log_type_enabled(v293, OS_LOG_TYPE_DEFAULT);
                fig_log_call_emit_and_clean_up_after_send_and_compose();
LABEL_838:
                itemfig_handleSetProperty_cold_9();
                goto LABEL_75;
              }

              if (v292 >= 1)
              {
                goto LABEL_838;
              }
            }
          }

          if (dword_1EAF16A10 >= 2)
          {
            LODWORD(start.value) = 0;
            LOBYTE(type.value) = 0;
            v298 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            v299 = start.value;
            value_low = LOBYTE(type.value);
            if (os_log_type_enabled(v298, type.value))
            {
              v301 = v299;
            }

            else
            {
              v301 = v299 & 0xFFFFFFFE;
            }

            if (v301)
            {
              v303 = (CMBaseObjectGetDerivedStorage() + 972);
              if (a1)
              {
                v304 = (CMBaseObjectGetDerivedStorage() + 2096);
              }

              else
              {
                v304 = "";
              }

              LODWORD(time2.value) = 136316162;
              *(&time2.value + 4) = "itemfig_handleSetProperty";
              LOWORD(time2.flags) = 2048;
              *(&time2.flags + 2) = v13;
              HIWORD(time2.epoch) = 2082;
              v317 = v303;
              *v318 = 2048;
              *&v318[2] = a1;
              *&v318[10] = 2082;
              *&v318[12] = v304;
              _os_log_send_and_compose_impl(v301, 0, &valuePtr, 128, &dword_1962D5000, v298, value_low, "<<<< FigFilePlayer >>>> %s: [%p|%{public}s] <%p|%{public}s>: Updating SpeedRampData on playing render pipelines", &time2, 52);
            }

            fig_log_call_emit_and_clean_up_after_send_and_compose();
          }

          itemfig_updateSpeedRampDataOnAllRenderPipelines(a1);
          goto LABEL_75;
        }

        if (CFEqual(a3, @"OverlapRange"))
        {
          if (a4)
          {
            v286 = CFGetTypeID(a4);
            if (v286 != CFDictionaryGetTypeID())
            {
              FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF16A08, 4294954436, "<<<< FigFilePlayer >>>>", 36448, v5);
              goto LABEL_26;
            }

            v297 = *(v11 + 2136);
            *(v11 + 2136) = a4;
            CFRetain(a4);
            if (v297)
            {
              CFRelease(v297);
            }
          }

          else
          {
            v296 = *(v11 + 2136);
            if (v296)
            {
              CFRelease(v296);
              *(v11 + 2136) = 0;
            }
          }

          itemfig_updateOverlapRangeOnAllRenderPipelines(a1);
          goto LABEL_75;
        }

        if (CFEqual(a3, @"AssetDownloadedName"))
        {
          FigSimpleMutexLock();
          if (!a4 || (v294 = CFGetTypeID(a4), v294 != CFStringGetTypeID()))
          {
LABEL_835:
            FigSimpleMutexUnlock();
            goto LABEL_75;
          }

          v295 = *(v11 + 2168);
          *(v11 + 2168) = a4;
        }

        else
        {
          if (!CFEqual(a3, @"AssetDownloadedImageData"))
          {
            if (!CFEqual(a3, @"PriorImageQueueGauge"))
            {
              Metal = 4294954512;
              goto LABEL_76;
            }

            if (a4)
            {
              v305 = CFGetTypeID(a4);
              if (v305 != FigImageQueueGaugeGetTypeID())
              {
                goto LABEL_75;
              }

              v306 = *(v11 + 2200);
              *(v11 + 2200) = a4;
              CFRetain(a4);
            }

            else
            {
              v306 = *(v11 + 2200);
              *(v11 + 2200) = 0;
            }

            if (v306)
            {
              CFRelease(v306);
            }

            itemfig_updatePriorImageQueueGaugeOnRenderPipelines(a1);
            goto LABEL_75;
          }

          FigSimpleMutexLock();
          if (!a4)
          {
            goto LABEL_835;
          }

          v302 = CFGetTypeID(a4);
          if (v302 != CFDataGetTypeID())
          {
            goto LABEL_835;
          }

          v295 = *(v11 + 2176);
          *(v11 + 2176) = a4;
        }

        CFRetain(a4);
        if (v295)
        {
          CFRelease(v295);
        }

        goto LABEL_835;
      }

      if (a4)
      {
        CMTimeMakeFromDictionary(&valuePtr.start, a4);
        *(v11 + 188) = *&valuePtr.start.value;
        v89 = valuePtr.start.epoch;
      }

      else
      {
        v88 = MEMORY[0x1E6960C70];
        *(v11 + 188) = *MEMORY[0x1E6960C70];
        v89 = *(v88 + 16);
      }

      *(v11 + 204) = v89;
      if (*(v11 + 352))
      {
        FigSimpleMutexLock();
        v96 = *(v14 + 536);
        FigSimpleMutexUnlock();
        if (v96 != a1)
        {
          if (dword_1EAF16A10 >= 2)
          {
            itemfig_handleSetProperty_cold_1();
          }

          *&valuePtr.start.value = *MEMORY[0x1E6960C70];
          valuePtr.start.epoch = *(MEMORY[0x1E6960C70] + 16);
          time2 = valuePtr.start;
          goto LABEL_184;
        }

        v103 = *(v11 + 352);
        *&valuePtr.start.value = *(v11 + 188);
        valuePtr.start.epoch = *(v11 + 204);
        FigPlaybackBossSetAdvanceTimeForOverlappedPlayback(v103, &valuePtr.start, v97, v98, v99, v100, v101, v102);
      }
    }

    playerfig_updateStartHostTimeEstimatesOfItemAndFollowingItems(v13, a1);
    goto LABEL_75;
  }

  itemfig_handleSetProperty_cold_19(&valuePtr);
  return LODWORD(valuePtr.start.value);
}

uint64_t playerfig_synchronizeLayerToTimebaseWithTransaction(uint64_t a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  v3 = *(DerivedStorage + 896);
  if (v3)
  {
    Timebase = FigPlaybackBossGetTimebase(*(DerivedStorage + 352));
    FigLayerSynchronizerSynchronizeToTimebaseWithDeferredTransaction(v3, Timebase);
  }

  return FigSimpleMutexUnlock();
}

void itemfig_setCAImageQueueFlagsForApertureMode(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v3 = CMBaseObjectGetDerivedStorage();
  if (*(v3 + 1193))
  {
    v4 = (8 * (*(v3 + 1194) != 0)) | 0x10;
  }

  else
  {
    v4 = 8 * (*(v3 + 1194) != 0);
  }

  v5 = FigCFWeakReferenceHolderCopyReferencedObject();
  CMBaseObjectGetDerivedStorage();
  if (FigUseVideoReceiverForCALayer())
  {
    if (v5)
    {
      FigSimpleMutexLock();
    }

    v10 = 0;
    itemfig_getVideoTargetTableForVideoTrack(a1, &v10);
    if (v10)
    {
      FigImageQueueTableSetFlagsAndMask(v10, v4, 24);
    }

    if (v5)
    {
      FigSimpleMutexUnlock();
LABEL_11:

      CFRelease(v5);
    }
  }

  else
  {
    FigSimpleMutexLock();
    v6 = *(DerivedStorage + 1144);
    if (v6)
    {
      Count = CFArrayGetCount(v6);
      if (Count >= 1)
      {
        v8 = Count;
        for (i = 0; i != v8; ++i)
        {
          CFArrayGetValueAtIndex(*(DerivedStorage + 1144), i);
          CAImageQueueSetFlags();
        }
      }
    }

    FigSimpleMutexUnlock();
    if (v5)
    {
      goto LABEL_11;
    }
  }
}

void itemfig_setVisualContextArray(uint64_t a1, const __CFArray *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v4 = FigCFWeakReferenceHolderCopyReferencedObject();
  if (v4)
  {
    v12 = v4;
    CMBaseObjectGetDerivedStorage();
    if (a2)
    {
      if (CFArrayGetCount(a2))
      {
        v13 = a2;
      }

      else
      {
        v13 = 0;
      }
    }

    else
    {
      v13 = 0;
    }

    FigSimpleMutexLock();
    v14 = FigCFEqual();
    if (!v14)
    {
      v15 = *(DerivedStorage + 1776);
      *(DerivedStorage + 1776) = v13;
      if (v13)
      {
        CFRetain(v13);
      }

      if (v15)
      {
        CFRelease(v15);
      }
    }

    FigSimpleMutexUnlock();
    FigSimpleMutexLock();
    v16 = *(DerivedStorage + 352);
    FigSimpleMutexUnlock();
    if (!v14 && v16)
    {
      playerfig_rebuildRenderPipelines_disturbIfInLameDuckGapOrMainVideoStillEnabled(v12, 0, 0);
    }

    CFRelease(v12);
  }

  else
  {
    itemfig_setVisualContextArray_cold_1(0, v5, v6, v7, v8, v9, v10, v11, v17, v18, SHIDWORD(v18), v19);
  }
}

void itemfig_applyItemAudioCurvesToAllAudioTracks(uint64_t a1)
{
  v3 = FigCFWeakReferenceHolderCopyReferencedObject();
  if (v3)
  {
    v4 = v3;
    CMBaseObjectGetDerivedStorage();
    FigSimpleMutexLock();
    v5 = *(a1 + 648);
    if (v5)
    {
      Count = CFArrayGetCount(v5);
      if (Count >= 1)
      {
        v7 = Count;
        v8 = 0;
        do
        {
          while (1)
          {
            ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 648), v8);
            if (*(ValueAtIndex + 1) == 1936684398)
            {
              if (ValueAtIndex[2])
              {
                break;
              }
            }

            if (++v8 == v7)
            {
              goto LABEL_15;
            }
          }

          v10 = *(a1 + 1520);
          FigRenderPipelineGetFigBaseObject();
          v12 = v11;
          v13 = *(*(CMBaseObjectGetVTable() + 8) + 56);
          if (!v13)
          {
            break;
          }

          ++v8;
        }

        while (!v13(v12, @"SecondaryAudioCurves", v10) && v8 != v7);
      }
    }

LABEL_15:
    FigSimpleMutexUnlock();

    CFRelease(v4);
  }

  else
  {
    v15 = qword_1EAF16A08;

    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v15, 4294954436, "<<<< FigFilePlayer >>>>", 16913, v1);
  }
}