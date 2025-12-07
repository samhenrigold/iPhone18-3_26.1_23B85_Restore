uint64_t favd_copyImageQueuesForOutput(uint64_t a1, const void *a2, CFTypeRef *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  cf = 0;
  if (a3)
  {
    Value = CFDictionaryGetValue(*(DerivedStorage + 72), a2);
    v7 = favd_copyImageQueuesFromDestination(Value, &cf, 0);
    if (v7)
    {
      if (cf)
      {
        CFRelease(cf);
      }
    }

    else
    {
      *a3 = cf;
    }
  }

  else
  {
    favd_copyImageQueuesForOutput_cold_1(&v10);
    return v10;
  }

  return v7;
}

void favd_Finalize(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (dword_1EAF17228)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  favd_cleanupOldOutputs(a1, 0);
  FigSimpleMutexDestroy();
  FigFormatDescriptionRelease();
  DerivedStorage[6] = 0;
  CMNotificationCenterGetDefaultLocalCenter();
  FigNotificationCenterRemoveWeakListener();
  v4 = DerivedStorage[10];
  if (v4)
  {
    CFRelease(v4);
    DerivedStorage[10] = 0;
  }

  v5 = DerivedStorage[9];
  if (v5)
  {
    CFRelease(v5);
    DerivedStorage[9] = 0;
  }

  v6 = DerivedStorage[8];
  if (v6)
  {
    CFRelease(v6);
    DerivedStorage[8] = 0;
  }

  v7 = DerivedStorage[11];
  if (v7)
  {
    CFRelease(v7);
    DerivedStorage[11] = 0;
  }

  v8 = DerivedStorage[12];
  if (v8)
  {
    CFRelease(v8);
    DerivedStorage[12] = 0;
  }
}

uint64_t favd_CopyProperty(uint64_t a1, const void *a2, uint64_t a3, __CFDictionary **a4)
{
  CMBaseObjectGetDerivedStorage();
  if (!a2)
  {
    favd_CopyProperty_cold_2(&theArray);
    return theArray;
  }

  if (!a4)
  {
    favd_CopyProperty_cold_1(&theArray);
    return theArray;
  }

  FigSimpleMutexLock();
  if (CFEqual(a2, @"PerformanceDictionary"))
  {
    theArray = 0;
    v17 = favd_copyAllImageQueuesAndOptions(a1, &theArray, 0);
    if (v17)
    {
      goto LABEL_59;
    }

    if (theArray)
    {
      Count = CFArrayGetCount(theArray);
      if (Count == 1)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(theArray, 0);
        v20 = *(*(CMBaseObjectGetVTable() + 16) + 72);
        if (v20)
        {
          v20(ValueAtIndex, a4);
        }

        v14 = 0;
        goto LABEL_50;
      }
    }

    else
    {
      Count = 0;
    }

    v21 = *MEMORY[0x1E695E480];
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], Count, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    if (Mutable)
    {
      v23 = Mutable;
      if (Count < 1)
      {
LABEL_39:
        v14 = 0;
        *a4 = v23;
        goto LABEL_50;
      }

      v24 = 0;
      while (1)
      {
        value = 0;
        v25 = CFStringCreateWithFormat(v21, 0, @"imagequeue-%d", v24);
        if (!v25)
        {
          break;
        }

        v26 = v25;
        v27 = CFArrayGetValueAtIndex(theArray, v24);
        v28 = *(*(CMBaseObjectGetVTable() + 16) + 72);
        if (v28)
        {
          v28(v27, &value);
        }

        if (value)
        {
          CFDictionarySetValue(v23, v26, value);
        }

        CFRelease(v26);
        if (value)
        {
          CFRelease(value);
        }

        if (Count == ++v24)
        {
          goto LABEL_39;
        }
      }

      CFRelease(v23);
    }

    v14 = 4294948255;
LABEL_50:
    v15 = theArray;
    if (!theArray)
    {
      goto LABEL_19;
    }

    goto LABEL_16;
  }

  if (!CFEqual(a2, @"VideoTargets"))
  {
    if (!CFEqual(a2, @"ImageQueueGauge"))
    {
      v14 = 4294954509;
      goto LABEL_19;
    }

    value = 0;
    theArray = 0;
    v17 = favd_copyAllImageQueuesAndOptions(a1, &theArray, 0);
    if (!v17)
    {
      v29 = theArray;
      if (theArray)
      {
        if (CFArrayGetCount(theArray) < 1)
        {
          v29 = 0;
        }

        else
        {
          CFArrayGetValueAtIndex(theArray, 0);
          AllocatorForMedia = FigGetAllocatorForMedia();
          FigImageQueueGetFigBaseObject();
          v32 = v31;
          v33 = *(*(CMBaseObjectGetVTable() + 8) + 48);
          if (!v33)
          {
            v14 = 4294954514;
            goto LABEL_50;
          }

          v14 = v33(v32, @"ImageQueueGauge", AllocatorForMedia, &value);
          v29 = value;
          if (v14)
          {
            if (value)
            {
              CFRelease(value);
            }

            goto LABEL_50;
          }
        }
      }

      v14 = 0;
      *a4 = v29;
      value = 0;
      goto LABEL_50;
    }

LABEL_59:
    v14 = v17;
    goto LABEL_50;
  }

  CMBaseObjectGetDerivedStorage();
  v7 = FigCFDictionaryCopyArrayOfKeys();
  v8 = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  if (v8)
  {
    v9 = v8;
    v10 = 0;
    if (v7)
    {
      goto LABEL_11;
    }

LABEL_12:
    for (i = 0; v10 < i; i = CFArrayGetCount(v7))
    {
      v11 = CFArrayGetValueAtIndex(v7, v10);
      v12 = CFGetTypeID(v11);
      if (v12 == FigVideoTargetGetTypeID())
      {
        CFArrayAppendValue(v9, v11);
      }

      ++v10;
      if (!v7)
      {
        goto LABEL_12;
      }

LABEL_11:
      ;
    }

    v14 = 0;
    *a4 = v9;
    if (!v7)
    {
      goto LABEL_19;
    }
  }

  else
  {
    v14 = 4294948255;
    if (!v7)
    {
      goto LABEL_19;
    }
  }

  v15 = v7;
LABEL_16:
  CFRelease(v15);
LABEL_19:
  FigSimpleMutexUnlock();
  return v14;
}

uint64_t favd_SetProperty(const void *a1, const void *a2, const void *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a1 && (v8 = DerivedStorage, v9 = CFGetTypeID(a1), MEMORY[0x19A8D3660](&FigAggregateVideoDestinationGetClassID_sRegisterFigAggregateVideoDestinationTypeOnce, RegisterFigAggregateVideoDestinationType), v9 == CMBaseClassGetCFTypeID()))
  {
    if (a2)
    {
      FigSimpleMutexLock();
      if (CFEqual(a2, @"ImageQueueGauge"))
      {
        theArray = 0;
        favd_copyAllImageQueuesAndOptions(a1, &theArray, 0);
        if (!theArray)
        {
          goto LABEL_13;
        }

        if (CFArrayGetCount(theArray) >= 1)
        {
          FigCFArrayGetValueAtIndex();
          FigImageQueueGetFigBaseObject();
          v14 = v13;
          v15 = *(*(CMBaseObjectGetVTable() + 8) + 56);
          if (v15)
          {
            v15(v14, @"ImageQueueGauge", a3);
          }
        }

        v11 = theArray;
        if (!theArray)
        {
          goto LABEL_13;
        }
      }

      else
      {
        if (!CFEqual(a2, @"VideoChannelSettings"))
        {
          v7 = 4294954509;
          goto LABEL_15;
        }

        v10 = *(v8 + 96);
        *(v8 + 96) = a3;
        if (a3)
        {
          CFRetain(a3);
        }

        if (!v10)
        {
LABEL_13:
          v7 = 0;
LABEL_15:
          FigSimpleMutexUnlock();
          return v7;
        }

        v11 = v10;
      }

      CFRelease(v11);
      goto LABEL_13;
    }

    favd_SetProperty_cold_1(&theArray);
  }

  else
  {
    favd_SetProperty_cold_2(&theArray);
  }

  return theArray;
}

void favd_cleanupOldOutputs(uint64_t a1, uint64_t a2)
{
  theArray[21] = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v3 = FigCFDictionaryCopyArrayOfKeys();
  if (v3)
  {
    v4 = v3;
    if (CFArrayGetCount(v3) >= 1)
    {
      v5 = 0;
      do
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v4, v5);
        if (!FigCFArrayContainsValue())
        {
          theArray[0] = 0;
          if (dword_1EAF17228)
          {
            os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
            fig_log_call_emit_and_clean_up_after_send_and_compose();
          }

          favd_copyImageQueuesForOutput(a1, ValueAtIndex, theArray);
          for (i = 0; ; ++i)
          {
            Count = theArray[0];
            if (theArray[0])
            {
              Count = CFArrayGetCount(theArray[0]);
            }

            if (i >= Count)
            {
              break;
            }

            CFArrayGetValueAtIndex(theArray[0], i);
            CMNotificationCenterGetDefaultLocalCenter();
            FigNotificationCenterRemoveWeakListener();
            CMNotificationCenterGetDefaultLocalCenter();
            FigNotificationCenterRemoveWeakListener();
          }

          CFDictionaryRemoveValue(*(DerivedStorage + 72), ValueAtIndex);
          if (theArray[0])
          {
            CFRelease(theArray[0]);
          }
        }

        ++v5;
      }

      while (v5 < CFArrayGetCount(v4));
    }

    CFRelease(v4);
  }
}

uint64_t favd_ImageQueueArraySetPropertyForOutputs(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  theArray = 0;
  FigSimpleMutexLock();
  if (a3)
  {
    MappedArray = FigCFDictionaryCreateMappedArray();
    v8 = 0;
    if (!MappedArray)
    {
      goto LABEL_4;
    }

LABEL_3:
    for (i = CFArrayGetCount(MappedArray); ; i = 0)
    {
      if (v8 >= i)
      {
        v12 = 0;
        goto LABEL_15;
      }

      ValueAtIndex = CFArrayGetValueAtIndex(MappedArray, v8);
      v11 = favd_copyImageQueuesFromDestination(ValueAtIndex, &theArray, 0);
      if (v11)
      {
        break;
      }

      if (theArray)
      {
        if (CFArrayGetCount(theArray))
        {
          FigImageQueueArraySetProperty(theArray, a3, a4);
        }

        if (theArray)
        {
          CFRelease(theArray);
          theArray = 0;
        }
      }

      ++v8;
      if (MappedArray)
      {
        goto LABEL_3;
      }

LABEL_4:
      ;
    }

    v12 = v11;
LABEL_15:
    FigSimpleMutexUnlock();
    if (MappedArray)
    {
      CFRelease(MappedArray);
    }
  }

  else
  {
    favd_ImageQueueArraySetPropertyForOutputs_cold_1(DerivedStorage, &v15);
    v12 = v15;
  }

  if (theArray)
  {
    CFRelease(theArray);
  }

  return v12;
}

uint64_t favd_CopyFigImageQueueArrayAndOptions(uint64_t a1, __CFArray **a2, __CFArray **a3)
{
  v10 = *MEMORY[0x1E69E9840];
  CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  if (a2)
  {
    v6 = favd_copyAllImageQueuesAndOptions(a1, a2, a3);
    if (!v6 && dword_1EAF17228)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
      v6 = 0;
    }
  }

  else
  {
    favd_CopyFigImageQueueArrayAndOptions_cold_1(v9);
    v6 = v9[0];
  }

  FigSimpleMutexUnlock();
  return v6;
}

uint64_t favd_IsAnyOutputReadyToRender(uint64_t a1)
{
  context = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  CFDictionaryApplyFunction(*(DerivedStorage + 72), favd_isAnyOutputReadyToRenderApplierFn, &context);
  FigSimpleMutexUnlock();
  return context;
}

void favd_setCAImageQueueFlags(uint64_t a1, uint64_t a2, uint64_t a3)
{
  cf = 0;
  FigImageQueueGetFigBaseObject();
  v4 = v3;
  v5 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v5)
  {
    v5(v4, @"CAImageQueue", *MEMORY[0x1E695E480], &cf);
    if (cf)
    {
      CAImageQueueSetFlags();
      CFRelease(cf);
    }
  }
}

uint64_t favd_populateVideoDestination(uint64_t a1, const void *a2, CFIndex a3, CFTypeRef *a4)
{
  v54[16] = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v9 = *(DerivedStorage + 64);
  if (v9)
  {
    if (CFArrayGetCount(v9) <= a3)
    {
      favd_populateVideoDestination_cold_1(v54);
LABEL_69:
      v22 = LODWORD(v54[0]);
      goto LABEL_54;
    }
  }

  else if (a3)
  {
    favd_populateVideoDestination_cold_2(v54);
    goto LABEL_69;
  }

  if (!a4)
  {
    favd_populateVideoDestination_cold_5(v54);
    goto LABEL_69;
  }

  timebase = *(DerivedStorage + 80);
  cf = 0;
  v10 = CMBaseObjectGetDerivedStorage();
  if (*(v10 + 8))
  {
    v11 = *MEMORY[0x1E695E480];
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    if (!Mutable)
    {
      favd_populateVideoDestination_cold_3(v54);
      v13 = 0;
      goto LABEL_65;
    }

    v13 = CFStringCreateWithCString(v11, (v10 + 8), 0x600u);
  }

  else
  {
    v13 = 0;
    Mutable = 0;
  }

  v14 = CFGetTypeID(a2);
  if (v14 != FigVisualContextGetTypeID(v14, v15))
  {
    v19 = CFGetTypeID(a2);
    if (v19 == CAImageQueueGetTypeID())
    {
      FigCFDictionarySetValue();
      FigImageQueueCreateForCoreAnimationWithOptions(0, a2, Mutable, &cf);
      if (!v16)
      {
        goto LABEL_26;
      }

      goto LABEL_21;
    }

    v20 = CFGetTypeID(a2);
    if (v20 == FigVideoTargetGetTypeID())
    {
      FigCFDictionarySetValue();
      v21 = *(*(CMBaseObjectGetVTable() + 16) + 8);
      if (!v21)
      {
        goto LABEL_22;
      }

      v16 = v21(a2, Mutable, &cf);
      if (!v16)
      {
        goto LABEL_26;
      }

LABEL_21:
      v22 = v16;
      goto LABEL_23;
    }

    favd_populateVideoDestination_cold_4(v54);
LABEL_65:
    v22 = LODWORD(v54[0]);
LABEL_23:
    if (cf)
    {
      CFRelease(cf);
      if (!v13)
      {
        goto LABEL_37;
      }

LABEL_36:
      CFRelease(v13);
      goto LABEL_37;
    }

LABEL_35:
    if (!v13)
    {
      goto LABEL_37;
    }

    goto LABEL_36;
  }

  FigCFDictionarySetValue();
  FigImageQueueCreateForCoreVideoWithOptions(0, Mutable, &cf);
  if (v16)
  {
    goto LABEL_21;
  }

  v17 = cf;
  v18 = *(*(CMBaseObjectGetVTable() + 16) + 8);
  if (!v18)
  {
LABEL_22:
    v22 = 4294954514;
    goto LABEL_23;
  }

  v16 = v18(v17, a2, timebase);
  if (v16)
  {
    goto LABEL_21;
  }

LABEL_26:
  v23 = cf;
  if (cf)
  {
    if (dword_1EAF17228)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
      v23 = cf;
    }

    v16 = favd_setupImageQueue(v23, timebase);
    if (!v16)
    {
      favd_setCAImageQueueFlags(cf, *(v10 + 104), *(v10 + 108));
      FigImageQueueGetFigBaseObject();
      v26 = v25;
      v27 = *(*(CMBaseObjectGetVTable() + 8) + 56);
      if (v27)
      {
        v27(v26, @"FigImageQueueProperty_Timebase", timebase);
      }

      FigImageQueueGetFigBaseObject();
      v29 = v28;
      v30 = *(*(CMBaseObjectGetVTable() + 8) + 56);
      if (v30)
      {
        v30(v29, @"EnableImageQueueTiming", *MEMORY[0x1E695E4D0]);
      }

      CMNotificationCenterGetDefaultLocalCenter();
      FigNotificationCenterAddWeakListener();
      CMNotificationCenterGetDefaultLocalCenter();
      FigNotificationCenterAddWeakListener();
      v22 = 0;
      *a4 = cf;
      cf = 0;
      goto LABEL_35;
    }

    goto LABEL_21;
  }

  v22 = 4294948253;
  if (v13)
  {
    goto LABEL_36;
  }

LABEL_37:
  if (Mutable)
  {
    CFRelease(Mutable);
  }

  if (!v22)
  {
    if (*(DerivedStorage + 64))
    {
      v31 = FigTagMakeWithSInt64Value();
      v33 = v32;
      v34 = 0;
      do
      {
        Count = *(DerivedStorage + 64);
        if (Count)
        {
          Count = CFArrayGetCount(Count);
        }

        if (v34 >= Count)
        {
          FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v44, v45, v46);
          v22 = v39;
          goto LABEL_54;
        }

        ValueAtIndex = CFArrayGetValueAtIndex(*(DerivedStorage + 64), v34);
        *&v55.category = v31;
        v55.value = v33;
        ++v34;
      }

      while (!CMTagCollectionContainsTag(ValueAtIndex, v55));
      if (ValueAtIndex)
      {
        a4[2] = CFRetain(ValueAtIndex);
        *v49 = 0;
        v54[0] = 0;
        v54[1] = 0;
        FigTagCollectionGetTagsWithCategory();
        if (*v49 == 1)
        {
          FigTagGetSInt64Value();
          v37 = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
          if (v37)
          {
            v38 = v37;
            FigCFDictionarySetInt32();
            goto LABEL_53;
          }

          v22 = 4294948255;
        }

        else
        {
          v22 = 4294948254;
        }

LABEL_54:
        if (!v22)
        {
          return v22;
        }

        goto LABEL_55;
      }

      v38 = 0;
      a4[2] = 0;
    }

    else
    {
      v38 = 0;
    }

LABEL_53:
    v22 = 0;
    a4[1] = v38;
    goto LABEL_54;
  }

LABEL_55:
  if (dword_1EAF17228)
  {
    LODWORD(cf) = 0;
    v40 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    v41 = cf;
    if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
    {
      v42 = v41;
    }

    else
    {
      v42 = v41 & 0xFFFFFFFE;
    }

    if (v42)
    {
      *v49 = 136315650;
      *&v49[4] = "favd_populateVideoDestination";
      v50 = 2048;
      v51 = a1;
      v52 = 1024;
      LODWORD(v53) = v22;
      LODWORD(v45) = 28;
      _os_log_send_and_compose_impl(v42, 0, v54, 128, &dword_1962D5000, v40, 0, "<<<< FAVD >>>> %s: [%p] Returning error %d, cleanup destination ", v49, v45, v46);
    }

    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  favd_cleanupVideoDestination(a4);
  return v22;
}

void favd_cleanupVideoDestination(uint64_t a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
    *a1 = 0;
  }

  v3 = *(a1 + 16);
  if (v3)
  {
    CFRelease(v3);
    *(a1 + 16) = 0;
  }

  v4 = *(a1 + 8);
  if (v4)
  {
    CFRelease(v4);
    *(a1 + 8) = 0;
  }
}

void *favd_imageQueueInfoRetainCallBack(uint64_t a1, uint64_t a2)
{
  v3 = MEMORY[0x19A8CC720](a1, 24, 0x6004082687C62, 0);
  v4 = *a2;
  if (*a2)
  {
    v4 = CFRetain(v4);
  }

  *v3 = v4;
  v5 = *(a2 + 16);
  if (v5)
  {
    v5 = CFRetain(v5);
  }

  v3[2] = v5;
  v6 = *(a2 + 8);
  if (v6)
  {
    v6 = CFRetain(v6);
  }

  v3[1] = v6;
  return v3;
}

void favd_imageQueueInfoReleaseCallBack(const __CFAllocator *a1, void *a2)
{
  favd_cleanupVideoDestination(a2);

  CFAllocatorDeallocate(a1, a2);
}

__CFString *favd_imageQueueInfoCopyDescriptionCallBack(void *a1)
{
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  v3 = FigCFCopyCompactDescription();
  v4 = FigCFCopyCompactDescription();
  CFStringAppendFormat(Mutable, 0, @"<VideoDestination: %p FIQ: %@ collection: %@>", a1, v3, v4);
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

uint64_t favd_imageQueueInfoEqualCallBack(void *a1, void *a2)
{
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

CFIndex favd_reconnectVisualContextToTimebaseApplierFn(const void *a1, const __CFArray *a2, uint64_t a3)
{
  v6 = CFGetTypeID(a1);
  result = FigVisualContextGetTypeID(v6, v7);
  if (v6 == result)
  {
    v9 = 0;
    if (!a2)
    {
      goto LABEL_4;
    }

LABEL_3:
    for (result = CFArrayGetCount(a2); v9 < result; result = 0)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(a2, v9);
      v11 = *ValueAtIndex;
      v12 = *(*(CMBaseObjectGetVTable() + 16) + 8);
      if (v12)
      {
        v12(v11, 0, 0);
      }

      v13 = *ValueAtIndex;
      v14 = *(*(CMBaseObjectGetVTable() + 16) + 8);
      if (v14)
      {
        v14(v13, a1, a3);
      }

      ++v9;
      if (a2)
      {
        goto LABEL_3;
      }

LABEL_4:
      ;
    }
  }

  return result;
}

void favddq_Finalize(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexDestroy();
  FigFormatDescriptionRelease();
  v2 = *(DerivedStorage + 8);
  if (v2)
  {
    CFRelease(v2);
    *(DerivedStorage + 8) = 0;
  }

  v3 = *(DerivedStorage + 32);
  if (v3)
  {
    CFRelease(v3);
    *(DerivedStorage + 32) = 0;
  }
}

__CFString *favddq_createDebugDescription(const void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v3 = CFGetAllocator(a1);
  Mutable = CFStringCreateMutable(v3, 0);
  v5 = FigCFCopyCompactDescription();
  CFStringAppendFormat(Mutable, 0, @"<FigAggregateVideoDestination [%p|%s] %@>", a1, DerivedStorage + 40, v5);
  if (v5)
  {
    CFRelease(v5);
  }

  return Mutable;
}

uint64_t favddq_CopyProperty(uint64_t a1, const void *a2, uint64_t a3, __CFArray **a4)
{
  CMBaseObjectGetDerivedStorage();
  if (!a2)
  {
    favddq_CopyProperty_cold_3(&value);
    return value;
  }

  if (!a4)
  {
    favddq_CopyProperty_cold_2(&value);
    return value;
  }

  FigSimpleMutexLock();
  if (!CFEqual(a2, @"SampleBufferConsumersForDataQueues"))
  {
    v10 = 4294954509;
    goto LABEL_23;
  }

  value = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v7 = FigCFDictionaryCopyArrayOfKeys();
  v8 = v7;
  if (v7)
  {
    Count = CFArrayGetCount(v7);
  }

  else
  {
    Count = 0;
  }

  v11 = *MEMORY[0x1E695E480];
  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], Count, MEMORY[0x1E695E9C0]);
  if (!Mutable)
  {
    favddq_CopyProperty_cold_1(&v21);
    v10 = v21;
    goto LABEL_19;
  }

  if (Count < 1)
  {
LABEL_17:
    v10 = 0;
    *a4 = Mutable;
    Mutable = 0;
    goto LABEL_19;
  }

  v13 = 0;
  while (1)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(v8, v13);
    if (CFDictionaryGetValue(*(DerivedStorage + 32), ValueAtIndex))
    {
      break;
    }

LABEL_16:
    if (Count == ++v13)
    {
      goto LABEL_17;
    }
  }

  FigDataQueueGetCMBaseObject();
  v16 = v15;
  v17 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v17)
  {
    v10 = 4294954514;
    goto LABEL_19;
  }

  v18 = v17(v16, @"SampleBufferConsumer", v11, &value);
  if (!v18)
  {
    CFArrayAppendValue(Mutable, value);
    if (value)
    {
      CFRelease(value);
      value = 0;
    }

    goto LABEL_16;
  }

  v10 = v18;
LABEL_19:
  if (v8)
  {
    CFRelease(v8);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

LABEL_23:
  FigSimpleMutexUnlock();
  return v10;
}

uint64_t favddq_SetProperty(const void *a1, uint64_t a2)
{
  if (!a1 || (v5 = CFGetTypeID(a1), MEMORY[0x19A8D3660](&FigAggregateVideoDestinationGetClassID_sRegisterFigAggregateVideoDestinationTypeOnce, RegisterFigAggregateVideoDestinationType), v5 != CMBaseClassGetCFTypeID()))
  {
    v2 = 2217;
LABEL_3:
    FigAggregateVideoDestinationCreate_cold_1(v2, &cf);
    return cf;
  }

  if (!a2)
  {
    v2 = 2218;
    goto LABEL_3;
  }

  return 4294954509;
}

uint64_t OUTLINED_FUNCTION_6_55(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, int a24, int a25)
{

  return fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
}

uint64_t OUTLINED_FUNCTION_11_35(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, int a15)
{

  return fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
}

uint64_t OUTLINED_FUNCTION_13_24(CMTag tagToAdd)
{
  value = tagToAdd.value;
  *&v4.category = *&tagToAdd.category;
  v4.value = value;

  return CMTagCollectionAddTag(v1, v4);
}

uint64_t OUTLINED_FUNCTION_14_29(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, int a21, char a22, __int16 a23, char a24)
{

  return fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
}

BOOL OUTLINED_FUNCTION_17_24(NSObject *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, int a21, os_log_type_t type, int a23)
{

  return os_log_type_enabled(a1, type);
}

uint64_t OUTLINED_FUNCTION_18_23(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, __int16 a14, char a15, char a16, char a17)
{

  return fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
}

uint64_t OUTLINED_FUNCTION_19_25(uint64_t *a1)
{

  return FigSimpleMutexLock();
}

uint64_t FigCaptionGroupConverterFromSampleBufferStartServer()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2000000000;
  v6 = 0;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = __FigCaptionGroupConverterFromSampleBufferStartServer_block_invoke;
  block[3] = &unk_1E748B0B8;
  block[4] = &v3;
  if (FigCaptionGroupConverterFromSampleBufferStartServer_sFigCaptionGroupConverterServerSetupOnce != -1)
  {
    dispatch_once(&FigCaptionGroupConverterFromSampleBufferStartServer_sFigCaptionGroupConverterServerSetupOnce, block);
  }

  v0 = *(v4 + 6);
  _Block_object_dispose(&v3, 8);
  return v0;
}

uint64_t __FigCaptionGroupConverterFromSampleBufferStartServer_block_invoke(uint64_t a1)
{
  result = FigXPCServerStart();
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

double FigCaptionGroupConverterFromSampleBufferServerInit(uint64_t a1)
{
  *(a1 + 48) = 0;
  result = 0.0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  return result;
}

void FigCaptionGroupConverterFromSampleBufferServerFinalize(void *a1)
{
  FigXPCRelease();
  v2 = a1[4];
  if (v2)
  {
    CFRelease(v2);
    a1[4] = 0;
  }

  v3 = a1[5];
  if (v3)
  {
    CFRelease(v3);
    a1[5] = 0;
  }

  v4 = a1[6];
  if (v4)
  {
    CFRelease(v4);
    a1[6] = 0;
  }
}

__CFString *FigCaptionGroupConverterFromSampleBufferServerCopyDebugDesc(void *a1)
{
  Mutable = CFStringCreateMutable(0, 0);
  CFStringAppendFormat(Mutable, 0, @"<FigCaptionGroupConverterFromSampleBufferServerRef %p %@> OID: %lld, Serializer: %@, Converter: %@", a1, a1[4], a1[3], a1[5], a1[6]);
  return Mutable;
}

uint64_t __FigCaptionGroupConverterFromSampleBufferServerGetTypeID_block_invoke()
{
  result = _CFRuntimeRegisterClass();
  qword_1ED4CABE8 = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_1_86(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{

  return FigXPCServerLookupAndRetainAssociatedObject();
}

const __CFNumber *FigSteeringManifestGetVersion(uint64_t a1)
{
  valuePtr = 0;
  result = FigCFDictionaryGetValue();
  if (result)
  {
    CFNumberGetValue(result, kCFNumberCFIndexType, &valuePtr);
    return valuePtr;
  }

  return result;
}

const __CFArray *FigSteeringManifestGetPathwayCount(uint64_t a1)
{
  result = FigCFDictionaryGetValue();
  if (result)
  {

    return CFArrayGetCount(result);
  }

  return result;
}

double FigSteeringManifestGetTTL(uint64_t a1)
{
  valuePtr = 0.0;
  Value = FigCFDictionaryGetValue();
  if (!Value)
  {
    return 0.0;
  }

  CFNumberGetValue(Value, kCFNumberDoubleType, &valuePtr);
  return valuePtr;
}

const __CFBoolean *FigSteeringManifestIsUniversal(uint64_t a1)
{
  result = FigCFDictionaryGetValue();
  if (result)
  {

    return CFBooleanGetValue(result);
  }

  return result;
}

uint64_t FigPathwayCloneGetURIReplacementHost(uint64_t a1)
{
  FigCFDictionaryGetValue();

  return FigCFDictionaryGetValue();
}

uint64_t FigPathwayCloneGetURIReplacementParams(uint64_t a1)
{
  FigCFDictionaryGetValue();

  return FigCFDictionaryGetValue();
}

uint64_t FigPathwayCloneGetURIReplacementPerVariantURIs(uint64_t a1)
{
  FigCFDictionaryGetValue();

  return FigCFDictionaryGetValue();
}

uint64_t FigPathwayCloneGetURIReplacementPerRenditionURIs(uint64_t a1)
{
  FigCFDictionaryGetValue();

  return FigCFDictionaryGetValue();
}

uint64_t FigPathwayCloneEquals(uint64_t a1, uint64_t a2)
{
  FigCFDictionaryGetValue();
  FigCFDictionaryGetValue();
  result = FigCFEqual();
  if (result)
  {
    FigCFDictionaryGetValue();
    FigCFDictionaryGetValue();
    result = FigCFEqual();
    if (result)
    {
      FigCFDictionaryGetValue();
      FigCFDictionaryGetValue();
      FigCFDictionaryGetValue();
      FigCFDictionaryGetValue();
      result = FigCFEqual();
      if (result)
      {
        FigCFDictionaryGetValue();
        FigCFDictionaryGetValue();
        FigCFDictionaryGetValue();
        FigCFDictionaryGetValue();
        result = FigCFEqual();
        if (result)
        {
          FigCFDictionaryGetValue();
          FigCFDictionaryGetValue();
          FigCFDictionaryGetValue();
          FigCFDictionaryGetValue();
          result = FigCFEqual();
          if (result)
          {
            FigCFDictionaryGetValue();
            FigCFDictionaryGetValue();
            FigCFDictionaryGetValue();
            FigCFDictionaryGetValue();
            return FigCFEqual() != 0;
          }
        }
      }
    }
  }

  return result;
}

uint64_t FigSteeringManifestCreate(const __CFAllocator *a1, OpaqueCMBlockBuffer *a2, const __CFURL *a3, uint64_t a4, uint64_t a5, __CFArray *a6, CFDictionaryRef *a7)
{
  v9 = a5;
  v10 = a4;
  if (_os_feature_enabled_impl())
  {

    return FigSteeringManifestCreateRemote(a1, a2, a3, v10, v9, a6, a7);
  }

  else
  {

    return FigSteeringManifestCreateInProcess(a1, a2, a3, v10, v9, a6, a7);
  }
}

uint64_t validateStringToStringDictionary(const void *a1, uint64_t a2, CFMutableArrayRef *a3)
{
  v10 = 0;
  context[0] = &v10;
  context[1] = a2;
  context[2] = a3;
  v6 = CFGetTypeID(a1);
  TypeID = CFDictionaryGetTypeID();
  if (v6 == TypeID)
  {
    CFDictionaryApplyFunction(a1, validateStringToStringDictionary_callback, context);
    return v10;
  }

  else
  {
    _SteeringLogError(TypeID, 4294951542, a3, @"%s: invalid data type", a2);
    return 4294951544;
  }
}

uint64_t FigWebVTTCaptionGroupConverterFromSampleBufferCreate(void *a1, uint64_t a2, CFTypeRef *a3)
{
  if (!a3)
  {
    FigWebVTTCaptionGroupConverterFromSampleBufferCreate_cold_4(&v8);
    return v8;
  }

  if (!a1)
  {
    FigWebVTTCaptionGroupConverterFromSampleBufferCreate_cold_3(&v8);
    return v8;
  }

  if (!*a1)
  {
    FigWebVTTCaptionGroupConverterFromSampleBufferCreate_cold_2(&v8);
    return v8;
  }

  if (!a1[1])
  {
    FigWebVTTCaptionGroupConverterFromSampleBufferCreate_cold_1(&v8);
    return v8;
  }

  FigCaptionGroupConverterFromSampleBufferGetClassID();
  v5 = CMDerivedObjectCreate();
  if (!v5)
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    *DerivedStorage = *a1;
    v5 = WebVTTSampleBufferParserCreate((DerivedStorage + 16));
    if (!v5)
    {
      *a3 = 0;
    }
  }

  return v5;
}

void fcgcfs_webvtt_finalize(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  WebVTTSampleBufferParserDestroy(*(DerivedStorage + 16));
  v2 = *(DerivedStorage + 24);
  if (v2)
  {
    CFRelease(v2);
    *(DerivedStorage + 24) = 0;
  }
}

__CFString *fcgcfs_webvtt_copyDebugDescription(uint64_t a1)
{
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  CFStringAppendFormat(Mutable, 0, @"<FigWebVTTCaptionGroupConverterFromSampleBufferf %p>", a1);
  return Mutable;
}

uint64_t fcgcfs_webvtt_copyProperty(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (a4)
  {
    if (a1)
    {
      DerivedStorage = CMBaseObjectGetDerivedStorage();
      if (DerivedStorage)
      {
        v6 = DerivedStorage;
        if (FigCFEqual())
        {
          v7 = *(v6 + 24);
          if (v7)
          {
            v8 = CFRetain(v7);
            result = 0;
            *a4 = v8;
          }

          else
          {
            return 4294954513;
          }
        }

        else
        {
          return 4294954512;
        }
      }

      else
      {
        fcgcfs_webvtt_copyProperty_cold_1(&v10);
        return v10;
      }
    }

    else
    {
      fcgcfs_webvtt_copyProperty_cold_2(&v11);
      return v11;
    }
  }

  else
  {
    fcgcfs_webvtt_copyProperty_cold_3(&v12);
    return v12;
  }

  return result;
}

uint64_t fcgcfs_webvtt_setProperty(uint64_t a1, uint64_t a2, const void *a3)
{
  if (a1)
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    if (DerivedStorage)
    {
      v5 = DerivedStorage;
      if (FigCFEqual())
      {
        if (!a3)
        {
          v7 = *(v5 + 24);
          *(v5 + 24) = 0;
          if (!v7)
          {
            return 0;
          }

          goto LABEL_7;
        }

        v6 = CFGetTypeID(a3);
        if (v6 == CFArrayGetTypeID())
        {
          v7 = *(v5 + 24);
          *(v5 + 24) = a3;
          CFRetain(a3);
          if (!v7)
          {
            return 0;
          }

LABEL_7:
          CFRelease(v7);
          return 0;
        }

        fcgcfs_webvtt_setProperty_cold_1(&v9);
        return v9;
      }

      else
      {
        return 4294954512;
      }
    }

    else
    {
      fcgcfs_webvtt_setProperty_cold_2(&v10);
      return v10;
    }
  }

  else
  {
    fcgcfs_webvtt_setProperty_cold_3(&v11);
    return v11;
  }
}

uint64_t fcgcfs_webvtt_getGenericFontFamilyNameFromGenericWebVTTFontName(const __CFString *a1)
{
  if (CFStringCompare(a1, *MEMORY[0x1E6960A78], 1uLL) == kCFCompareEqualTo)
  {
    v4 = MEMORY[0x1E69611D0];
    return *v4;
  }

  if (CFStringCompare(a1, *MEMORY[0x1E6960A70], 1uLL) == kCFCompareEqualTo)
  {
    v4 = MEMORY[0x1E69611C8];
    return *v4;
  }

  if (CFStringCompare(a1, *MEMORY[0x1E6960A68], 1uLL) == kCFCompareEqualTo)
  {
    v4 = MEMORY[0x1E69611C0];
    return *v4;
  }

  if (CFStringCompare(a1, *MEMORY[0x1E6960A60], 1uLL) == kCFCompareEqualTo)
  {
    v4 = MEMORY[0x1E69611B8];
    return *v4;
  }

  if (CFStringCompare(a1, *MEMORY[0x1E6960A58], 1uLL) == kCFCompareEqualTo)
  {
    v4 = MEMORY[0x1E69611B0];
    return *v4;
  }

  v2 = *MEMORY[0x1E6960A50];
  if (CFStringCompare(a1, *MEMORY[0x1E6960A50], 1uLL) == kCFCompareEqualTo)
  {
    return v2;
  }

  if (CFStringCompare(a1, *MEMORY[0x1E6960A28], 1uLL) == kCFCompareEqualTo)
  {
    v4 = MEMORY[0x1E6961180];
    return *v4;
  }

  if (CFStringCompare(a1, *MEMORY[0x1E6960A30], 1uLL) == kCFCompareEqualTo)
  {
    v4 = MEMORY[0x1E6961188];
    return *v4;
  }

  v2 = *MEMORY[0x1E6960A40];
  if (CFStringCompare(a1, *MEMORY[0x1E6960A40], 1uLL))
  {
    v3 = *MEMORY[0x1E6961190];
    v2 = *MEMORY[0x1E6960A80];
    if (CFStringCompare(a1, *MEMORY[0x1E6960A80], 1uLL))
    {
      return v3;
    }
  }

  return v2;
}

uint64_t OUTLINED_FUNCTION_4_69(uint64_t a1)
{

  return FigCaptionDynamicStyleCreate();
}

uint64_t OUTLINED_FUNCTION_6_56(double a1, double a2, double a3, double a4, double a5, double a6, double a7, double a8, double a9, double a10, double a11, double a12, double a13, double a14, double a15, double a16, float a17, float a18, float a19, float a20)
{

  return FigCreateCGColorSRGB();
}

CFDictionaryRef OUTLINED_FUNCTION_8_33()
{

  return CFAttributedStringGetAttributes(v0, 0, &STACK[0x260]);
}

uint64_t OUTLINED_FUNCTION_9_35(uint64_t a1)
{

  return FigCaptionDynamicStyleCreate();
}

uint64_t OUTLINED_FUNCTION_11_36()
{
  STACK[0x260] = 0;

  return FigGeometryDimensionCopyAsDictionary();
}

uint64_t FigVirtualDisplaySourceConduitCreate(uint64_t a1, void *a2, __CFString *a3, CFTypeRef *a4)
{
  v39 = *MEMORY[0x1E69E9840];
  cf = 0;
  if (!a2)
  {
    FigVirtualDisplaySourceConduitCreate_cold_4();
    goto LABEL_20;
  }

  if (*a2 != 1)
  {
    FigVirtualDisplaySourceConduitCreate_cold_1();
    goto LABEL_20;
  }

  v5 = (a2 + 1);
  if (!a2[1])
  {
    FigVirtualDisplaySourceConduitCreate_cold_3();
LABEL_20:
    v20 = 4294955226;
    goto LABEL_21;
  }

  FigVirtualDisplaySourceGetClassID();
  v8 = CMDerivedObjectCreate();
  if (v8)
  {
    v20 = v8;
    v29 = 0;
    type = OS_LOG_TYPE_DEFAULT;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
  }

  else
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    if (a3)
    {
      v10 = CFRetain(a3);
    }

    else
    {
      v10 = 0;
    }

    *DerivedStorage = v10;
    *(DerivedStorage + 136) = 0;
    *(DerivedStorage + 72) = a2[2];
    *(DerivedStorage + 80) = a2[3];
    v11 = (*v5)();
    *(DerivedStorage + 64) = v11;
    if (!v11)
    {
      FigVirtualDisplaySourceConduitCreate_cold_2();
      v20 = 4294955225;
      goto LABEL_21;
    }

    v12 = FigDispatchQueueCreateWithPriority();
    *(DerivedStorage + 16) = v12;
    v13 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 1uLL, v12);
    *(DerivedStorage + 88) = v13;
    handler[0] = MEMORY[0x1E69E9820];
    handler[1] = 0x40000000;
    handler[2] = __FigVirtualDisplaySourceConduitCreate_block_invoke;
    handler[3] = &__block_descriptor_tmp_53;
    handler[4] = DerivedStorage;
    dispatch_source_set_event_handler(v13, handler);
    dispatch_source_set_timer(*(DerivedStorage + 88), 0xFFFFFFFFFFFFFFFFLL, 0, 0);
    dispatch_resume(*(DerivedStorage + 88));
    v14 = VTPixelTransferSessionCreate(*MEMORY[0x1E695E480], (DerivedStorage + 56));
    if (!v14)
    {
      v29 = 0;
      type = OS_LOG_TYPE_DEFAULT;
      v15 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v16 = v29;
      v17 = type;
      if (os_log_type_enabled(v15, type))
      {
        v18 = v16;
      }

      else
      {
        v18 = v16 & 0xFFFFFFFE;
      }

      if (v18)
      {
        v19 = @"no name";
        if (a3)
        {
          v19 = a3;
        }

        v31 = 136315906;
        v32 = "FigVirtualDisplaySourceConduitCreate";
        v33 = 2048;
        *v34 = DerivedStorage;
        *&v34[8] = 2048;
        v35 = cf;
        v36 = 2112;
        v37 = v19;
        _os_log_send_and_compose_impl(v18, 0, v38, 128, &dword_1962D5000, v15, v17, "<<<< FigVirtualDisplaySourceConduit >>>> %s: %p: created FVD conduit source %p (%@)", &v31, 42);
      }

      fig_log_call_emit_and_clean_up_after_send_and_compose();
      v20 = 0;
      *a4 = cf;
      return v20;
    }

    v20 = v14;
    v29 = 0;
    type = OS_LOG_TYPE_DEFAULT;
    v23 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    v24 = v29;
    v25 = type;
    if (os_log_type_enabled(v23, type))
    {
      v26 = v24;
    }

    else
    {
      v26 = v24 & 0xFFFFFFFE;
    }

    if (v26)
    {
      v31 = 136315650;
      v32 = "FigVirtualDisplaySourceConduitCreate";
      v33 = 1024;
      *v34 = 653;
      *&v34[4] = 1024;
      *&v34[6] = v20;
      _os_log_send_and_compose_impl(v26, 0, v38, 128, &dword_1962D5000, v23, v25, "<<<< FigVirtualDisplaySourceConduit >>>> %s: %d: got error %d", &v31, 24);
    }
  }

  fig_log_call_emit_and_clean_up_after_send_and_compose();
LABEL_21:
  if (cf)
  {
    CFRelease(cf);
  }

  return v20;
}

double __FigVirtualDisplaySourceConduitCreate_block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  if (!*(v3 + 96))
  {
    return __FigVirtualDisplaySourceConduitCreate_block_invoke_cold_1();
  }

  v5 = *(v3 + 112);
  v4 = *(v3 + 120);
  v6 = *(v3 + 128);
  v7 = *(v3 + 104);

  srcconduit_submitPixelBuffer(v3, v7, v4, v6, v5);
  return result;
}

void fvdsrcconduit_finalize(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v11 = 0;
  type = OS_LOG_TYPE_DEFAULT;
  os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
  os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
  fig_log_call_emit_and_clean_up_after_send_and_compose();
  v4 = *(DerivedStorage + 16);
  if (v4)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 0x40000000;
    block[2] = __fvdsrcconduit_finalize_block_invoke;
    block[3] = &__block_descriptor_tmp_6_1;
    block[4] = DerivedStorage;
    block[5] = a1;
    dispatch_sync(v4, block);
  }

  v5 = *(DerivedStorage + 88);
  if (v5)
  {
    dispatch_source_cancel(v5);
    dispatch_release(*(DerivedStorage + 88));
  }

  if (*DerivedStorage)
  {
    CFRelease(*DerivedStorage);
    *DerivedStorage = 0;
  }

  v6 = *(DerivedStorage + 56);
  if (v6)
  {
    CFRelease(v6);
    *(DerivedStorage + 56) = 0;
  }

  v7 = *(DerivedStorage + 64);
  if (v7)
  {
    CFRelease(v7);
    *(DerivedStorage + 64) = 0;
  }

  v8 = *(DerivedStorage + 16);
  if (v8)
  {
    dispatch_release(v8);
    *(DerivedStorage + 16) = 0;
  }
}

uint64_t fvdsrcconduit_copyProperty(uint64_t a1, const void *a2, uint64_t a3, void *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (CFEqual(a2, @"sourceType"))
  {
    v7 = @"Conduit";
LABEL_3:
    v8 = CFRetain(v7);
    result = 0;
    *a4 = v8;
    return result;
  }

  if (CFEqual(a2, @"sourceName"))
  {
    v7 = *DerivedStorage;
    if (*DerivedStorage)
    {
      goto LABEL_3;
    }
  }

  return 4294954512;
}

void __fvdsrcconduit_finalize_block_invoke(uint64_t a1)
{
  v3 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  if (*(v1 + 136) || *(v1 + 8))
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    __break(1u);
  }
}

uint64_t fvdsrcconduit_plugProcessor(uint64_t a1, uint64_t a2)
{
  v27 = *MEMORY[0x1E69E9840];
  v16 = 0;
  v17 = &v16;
  v18 = 0x2000000000;
  v19 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a2)
  {
    v4 = *(DerivedStorage + 16);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 0x40000000;
    block[2] = __fvdsrcconduit_plugProcessor_block_invoke;
    block[3] = &unk_1E748B158;
    block[5] = DerivedStorage;
    block[6] = a2;
    block[4] = &v16;
    dispatch_sync(v4, block);
    v5 = *(v17 + 6);
    if (v5)
    {
      v15 = 0;
      type = OS_LOG_TYPE_DEFAULT;
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v10 = v15;
      v11 = type;
      if (os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, type))
      {
        v12 = v10;
      }

      else
      {
        v12 = v10 & 0xFFFFFFFE;
      }

      if (v12)
      {
        v20 = 136315650;
        v21 = "fvdsrcconduit_plugProcessor";
        v22 = 1024;
        v23 = 474;
        v24 = 1024;
        v25 = v5;
        _os_log_send_and_compose_impl(v12, 0, v26, 128, &dword_1962D5000, os_log_and_send_and_compose_flags_and_os_log_type, v11, "<<<< FigVirtualDisplaySourceConduit >>>> %s: %d: got error %d", &v20, 24, LODWORD(block[0]));
      }

      fig_log_call_emit_and_clean_up_after_send_and_compose();
      v6 = *(v17 + 6);
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v15 = 0;
    type = OS_LOG_TYPE_DEFAULT;
    v8 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    v6 = 4294955226;
    *(v17 + 6) = -12070;
  }

  _Block_object_dispose(&v16, 8);
  return v6;
}

uint64_t fvdsrcconduit_unplugProcessor(uint64_t a1, uint64_t a2)
{
  v27 = *MEMORY[0x1E69E9840];
  v16 = 0;
  v17 = &v16;
  v18 = 0x2000000000;
  v19 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a2)
  {
    v4 = *(DerivedStorage + 16);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 0x40000000;
    block[2] = __fvdsrcconduit_unplugProcessor_block_invoke;
    block[3] = &unk_1E748B180;
    block[5] = DerivedStorage;
    block[6] = a2;
    block[4] = &v16;
    dispatch_sync(v4, block);
    v5 = *(v17 + 6);
    if (v5)
    {
      v15 = 0;
      type = OS_LOG_TYPE_DEFAULT;
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v10 = v15;
      v11 = type;
      if (os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, type))
      {
        v12 = v10;
      }

      else
      {
        v12 = v10 & 0xFFFFFFFE;
      }

      if (v12)
      {
        v20 = 136315650;
        v21 = "fvdsrcconduit_unplugProcessor";
        v22 = 1024;
        v23 = 494;
        v24 = 1024;
        v25 = v5;
        _os_log_send_and_compose_impl(v12, 0, v26, 128, &dword_1962D5000, os_log_and_send_and_compose_flags_and_os_log_type, v11, "<<<< FigVirtualDisplaySourceConduit >>>> %s: %d: got error %d", &v20, 24, LODWORD(block[0]));
      }

      fig_log_call_emit_and_clean_up_after_send_and_compose();
      v6 = *(v17 + 6);
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v15 = 0;
    type = OS_LOG_TYPE_DEFAULT;
    v8 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    v6 = 4294955226;
    *(v17 + 6) = -12070;
  }

  _Block_object_dispose(&v16, 8);
  return v6;
}

uint64_t fvdsrcconduit_start(uint64_t a1, uint64_t a2)
{
  v14 = *MEMORY[0x1E69E9840];
  v10 = 0;
  v11 = &v10;
  v12 = 0x2000000000;
  v13 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v5 = *(DerivedStorage + 16);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = __fvdsrcconduit_start_block_invoke;
  block[3] = &unk_1E748B1A8;
  block[4] = &v10;
  block[5] = DerivedStorage;
  block[6] = a2;
  block[7] = a1;
  dispatch_sync(v5, block);
  v6 = 0;
  if (*(v11 + 6))
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    v6 = *(v11 + 6);
  }

  _Block_object_dispose(&v10, 8);
  return v6;
}

uint64_t fvdsrcconduit_stop(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v2 = *(DerivedStorage + 16);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = __fvdsrcconduit_stop_block_invoke;
  block[3] = &__block_descriptor_tmp_50;
  block[4] = DerivedStorage;
  dispatch_sync(v2, block);
  return 0;
}

uint64_t fvdsrcconduit_suspend(uint64_t a1)
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2000000000;
  v9 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v2 = *(DerivedStorage + 16);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 0x40000000;
  v5[2] = __fvdsrcconduit_suspend_block_invoke;
  v5[3] = &unk_1E748B210;
  v5[4] = &v6;
  v5[5] = DerivedStorage;
  dispatch_sync(v2, v5);
  v3 = *(v7 + 6);
  _Block_object_dispose(&v6, 8);
  return v3;
}

uint64_t fvdsrcconduit_resume(uint64_t a1)
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2000000000;
  v9 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v2 = *(DerivedStorage + 16);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 0x40000000;
  v5[2] = __fvdsrcconduit_resume_block_invoke;
  v5[3] = &unk_1E748B238;
  v5[4] = &v6;
  v5[5] = DerivedStorage;
  dispatch_sync(v2, v5);
  v3 = *(v7 + 6);
  _Block_object_dispose(&v6, 8);
  return v3;
}

CFTypeRef *__fvdsrcconduit_plugProcessor_block_invoke(CFTypeRef *result)
{
  v1 = result;
  v2 = result[5];
  if (v2[34] || *(v2 + 1))
  {
    *(*(result[4] + 1) + 24) = -12073;
  }

  else
  {
    result = CFRetain(result[6]);
    *(v1[5] + 1) = v1[6];
  }

  return result;
}

void __fvdsrcconduit_unplugProcessor_block_invoke(void *a1)
{
  v2 = a1[5];
  if (!*(v2 + 136) && (v3 = *(v2 + 8), v3 == a1[6]))
  {
    if (v3)
    {
      CFRelease(v3);
      *(a1[5] + 8) = 0;
    }
  }

  else
  {
    *(*(a1[4] + 8) + 24) = -12070;
  }
}

double __fvdsrcconduit_start_block_invoke(void *a1, double result)
{
  v51 = *MEMORY[0x1E69E9840];
  v3 = a1[5];
  if (*(v3 + 136) || (v4 = *(v3 + 8)) == 0)
  {
    *(*(a1[4] + 8) + 24) = -12070;
    return result;
  }

  v42 = 0;
  cf = 0;
  v41 = 0;
  v40 = xmmword_196E73240;
  v39 = 0;
  v5 = *(*(CMBaseObjectGetVTable() + 16) + 56);
  if (!v5)
  {
    v22 = -12782;
LABEL_15:
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    goto LABEL_20;
  }

  v6 = v5(v4, &cf, &v42);
  if (v6)
  {
    v22 = v6;
    goto LABEL_15;
  }

  v7 = FigDisplayModes_LookupTimingModeIDByIndex(v42, 0, &v41);
  if (v7)
  {
    v22 = v7;
    v23 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT);
    goto LABEL_20;
  }

  v8 = v41;
  v9 = *(v3 + 8);
  v10 = *(*(CMBaseObjectGetVTable() + 16) + 64);
  if (!v10)
  {
    v22 = -12782;
LABEL_17:
    v21 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT);
    goto LABEL_20;
  }

  v11 = v10(v9, v8, v8);
  if (v11)
  {
    v22 = v11;
    goto LABEL_17;
  }

  DimensionsFromTimingMode = FigDisplayModes_ExtractDimensionsFromTimingMode(v42, v41, &v40);
  if (!DimensionsFromTimingMode)
  {
    FigDisplayModes_ExtractOverscanInfoFromTimingMode(v42, v41, &v39);
    *(v3 + 48) = 60;
    FigDisplayModes_ExtractVSyncRateFromTimingMode(v42, v41, (v3 + 48), v13, v14, v15, v16, v17);
    *(v3 + 24) = v40;
    v18 = 0.06;
    if (!v39)
    {
      v18 = 0.0;
    }

    *(v3 + 40) = v18;
    *(v3 + 140) = 1;
    v19 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    v22 = 0;
    goto LABEL_21;
  }

  v22 = DimensionsFromTimingMode;
  v24 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
  os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT);
LABEL_20:
  fig_log_call_emit_and_clean_up_after_send_and_compose();
LABEL_21:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v42)
  {
    CFRelease(v42);
  }

  *(*(a1[4] + 8) + 24) = v22;
  if (!*(*(a1[4] + 8) + 24))
  {
    v31 = a1[5];
    if (*(v31 + 72))
    {
      FigCFDictionaryGetValue();
      Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      LODWORD(v40) = 0;
      FigCFDictionaryGetInt32IfPresent();
      FigCFDictionarySetInt32();
      FigCFDictionarySetInt32();
      FigCFDictionarySetInt32();
      FigCFDictionarySetInt32();
      FigCFDictionaryGetValue();
      FigCFDictionarySetValue();
      FigCFDictionaryGetValue();
      FigCFDictionarySetValue();
      FigCFDictionaryGetValue();
      FigCFDictionarySetValue();
      Value = FigCFDictionaryGetValue();
      if (Value)
      {
        CFDictionarySetValue(Mutable, @"SceneID", Value);
        *(v31 + 141) = 1;
      }

      FigCFDictionarySetValue();
      LODWORD(cf) = 0;
      LOBYTE(v42) = 0;
      v34 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v35 = cf;
      v36 = v42;
      if (os_log_type_enabled(v34, v42))
      {
        v37 = v35;
      }

      else
      {
        v37 = v35 & 0xFFFFFFFE;
      }

      if (v37)
      {
        v44 = 136315650;
        v45 = "srcconduit_createFrameSourceStartOptions";
        v46 = 2048;
        v47 = v31;
        v48 = 2112;
        *v49 = Mutable;
        _os_log_send_and_compose_impl(v37, 0, v50, 128, &dword_1962D5000, v34, v36, "<<<< FigVirtualDisplaySourceConduit >>>> %s: %p: frame source start options: %@", &v44, 32);
      }

      fig_log_call_emit_and_clean_up_after_send_and_compose();
      *(*(a1[4] + 8) + 24) = (*(a1[5] + 72))(*(a1[5] + 64), Mutable, fvdsrcconduit_submitFrame, fvdsrcconduit_postError, a1[7]);
      if (Mutable)
      {
        CFRelease(Mutable);
      }
    }
  }

  if (!*(*(a1[4] + 8) + 24))
  {
    LOBYTE(cf) = 0;
    FigCFDictionaryGetBooleanIfPresent();
    if (cf)
    {
      v25 = 1;
    }

    else
    {
      v25 = 2;
    }

    *(a1[5] + 136) = v25;
    LODWORD(v40) = 0;
    LOBYTE(v42) = 0;
    v26 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    v27 = v40;
    v28 = v42;
    if (os_log_type_enabled(v26, v42))
    {
      v29 = v27;
    }

    else
    {
      v29 = v27 & 0xFFFFFFFE;
    }

    if (v29)
    {
      v30 = a1[5];
      v44 = 136315394;
      v45 = "fvdsrcconduit_start_block_invoke";
      v46 = 2048;
      v47 = v30;
      LODWORD(v38) = 22;
      _os_log_send_and_compose_impl(v29, 0, v50, 128, &dword_1962D5000, v26, v28, "<<<< FigVirtualDisplaySourceConduit >>>> %s: %p: started", &v44, v38);
    }

    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  return result;
}

void fvdsrcconduit_submitFrame(uint64_t a1, const void *a2, uint64_t a3, int a4, const void *a5)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a2)
  {
    CFRetain(a2);
  }

  if (a5)
  {
    CFRetain(a5);
  }

  v10 = *(DerivedStorage + 16);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = __fvdsrcconduit_submitFrame_block_invoke;
  block[3] = &__block_descriptor_tmp_37_0;
  block[4] = DerivedStorage;
  block[5] = a2;
  v12 = a4;
  block[6] = a3;
  block[7] = a5;
  dispatch_async(v10, block);
}

uint64_t fvdsrcconduit_postError(uint64_t a1, __CFString *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  CMBaseObjectGetDerivedStorage();
  os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
  os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
  fig_log_call_emit_and_clean_up_after_send_and_compose();
  CMNotificationCenterGetDefaultLocalCenter();
  return CMNotificationCenterPostNotification();
}

void __fvdsrcconduit_submitFrame_block_invoke(uint64_t a1)
{
  srcconduit_submitPixelBuffer(*(a1 + 32), *(a1 + 40), *(a1 + 48), *(a1 + 64), *(a1 + 56));
  v2 = *(a1 + 40);
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

void srcconduit_submitPixelBuffer(uint64_t a1, CVPixelBufferRef pixelBuffer, uint64_t a3, uint64_t a4, const void *a5)
{
  valuePtr[16] = *MEMORY[0x1E69E9840];
  destinationBuffer = 0;
  v10 = *(a1 + 136);
  if (v10 == 2)
  {
    if (pixelBuffer)
    {
      if (*(a1 + 140))
      {
        v11 = *(a1 + 8);
        Width = CVPixelBufferGetWidth(pixelBuffer);
        Height = CVPixelBufferGetHeight(pixelBuffer);
        v14 = *(*(CMBaseObjectGetVTable() + 16) + 88);
        if (!v14 || v14(v11, 0, 1, &destinationBuffer, Width, Height) || VTPixelTransferSessionTransferImage(*(a1 + 56), pixelBuffer, destinationBuffer))
        {
LABEL_28:
          os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
          fig_log_call_emit_and_clean_up_after_send_and_compose();
          goto LABEL_29;
        }

        v15 = destinationBuffer;
        v16 = CVBufferCopyAttachment(pixelBuffer, @"FVDFrameUserData", 0);
        if (v16)
        {
          v17 = v16;
          CVBufferSetAttachment(v15, @"FVDFrameUserData", v16, kCVAttachmentMode_ShouldPropagate);
          CFRelease(v17);
        }

        if (*(a1 + 141))
        {
          v18 = CVPixelBufferGetWidth(v15);
          valuePtr[0] = v18 / CVPixelBufferGetWidth(pixelBuffer);
          v19 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberDoubleType, valuePtr);
          if (v19)
          {
            v20 = v19;
            CVBufferSetAttachment(v15, @"FVDPixelScaleFactor", v19, kCVAttachmentMode_ShouldPropagate);
            CFRelease(v20);
          }

          v21 = CVBufferCopyAttachment(pixelBuffer, @"FVDWindowRectangles", 0);
          if (v21)
          {
            v22 = v21;
            CVBufferSetAttachment(v15, @"FVDWindowRectangles", v21, kCVAttachmentMode_ShouldPropagate);
            CFRelease(v22);
          }

          v23 = CVBufferCopyAttachment(pixelBuffer, @"FVDWindowScaleFactor", 0);
          if (v23)
          {
            v24 = v23;
            CVBufferSetAttachment(v15, @"FVDWindowScaleFactor", v23, kCVAttachmentMode_ShouldPropagate);
            CFRelease(v24);
          }
        }
      }

      else
      {
        destinationBuffer = CFRetain(pixelBuffer);
      }

      v31 = CVPixelBufferGetWidth(destinationBuffer);
      v34 = CVPixelBufferGetHeight(destinationBuffer);
      v30 = v34;
      v35 = *(a1 + 24);
      v36 = *(a1 + 32);
      v37 = v35 / v31;
      if (v35 / v31 >= v36 / v34)
      {
        v37 = v36 / v34;
      }

      v38 = (1.0 - *(a1 + 40)) * v37;
      v27 = v38 * v31;
      v26 = v38 * v30;
      v29 = (v35 - v38 * v31) * 0.5;
      v28 = (v36 - v38 * v30) * 0.5;
      v32 = 0.0;
      v25 = destinationBuffer;
      v33 = 0.0;
    }

    else
    {
      v25 = 0;
      v27 = *(MEMORY[0x1E695F058] + 16);
      v26 = *(MEMORY[0x1E695F058] + 24);
      v29 = *MEMORY[0x1E695F058];
      v28 = *(MEMORY[0x1E695F058] + 8);
      v30 = v26;
      v31 = v27;
      v32 = v28;
      v33 = *MEMORY[0x1E695F058];
    }

    v39 = *(a1 + 8);
    v40 = *(*(CMBaseObjectGetVTable() + 16) + 80);
    if (v40 && !v40(v39, v25, a3, a4, 0, v33, v32, v31, v30, v29, v28, v27, v26))
    {
      goto LABEL_24;
    }

    goto LABEL_28;
  }

  if (!v10)
  {
    v41 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
LABEL_24:
    srcconduit_stopRetrying(a1);
    goto LABEL_38;
  }

LABEL_29:
  v43 = *(a1 + 88);
  v44 = dispatch_time(0, 50000000);
  dispatch_source_set_timer(v43, v44, 0xFFFFFFFFFFFFFFFFLL, 0xF4240uLL);
  v45 = *(a1 + 104);
  *(a1 + 104) = pixelBuffer;
  if (pixelBuffer)
  {
    CFRetain(pixelBuffer);
  }

  if (v45)
  {
    CFRelease(v45);
  }

  v46 = *(a1 + 112);
  *(a1 + 112) = a5;
  if (a5)
  {
    CFRetain(a5);
  }

  if (v46)
  {
    CFRelease(v46);
  }

  *(a1 + 120) = a3;
  *(a1 + 128) = a4;
  *(a1 + 96) = 1;
LABEL_38:
  if (destinationBuffer)
  {
    CFRelease(destinationBuffer);
  }
}

void srcconduit_stopRetrying(uint64_t a1)
{
  if (*(a1 + 96))
  {
    dispatch_source_set_timer(*(a1 + 88), 0xFFFFFFFFFFFFFFFFLL, 0, 0);
    v2 = *(a1 + 104);
    if (v2)
    {
      CFRelease(v2);
      *(a1 + 104) = 0;
    }

    v3 = *(a1 + 112);
    if (v3)
    {
      CFRelease(v3);
      *(a1 + 112) = 0;
    }

    *(a1 + 120) = 0;
    *(a1 + 128) = 0;
    *(a1 + 96) = 0;
  }
}

double __fvdsrcconduit_stop_block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  if (*(v2 + 136))
  {
    srcconduit_stopRetrying(v2);
    v3 = *(a1 + 32);
    *(v3 + 136) = 0;
    v4 = *(v3 + 80);
    if (v4)
    {
      v4(*(v3 + 64));
    }

    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  return result;
}

void __fvdsrcconduit_suspend_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 40);
  if (*(v1 + 136))
  {
    *(v1 + 136) = 1;
  }

  else
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    *(*(*(a1 + 32) + 8) + 24) = -12070;
  }
}

void __fvdsrcconduit_resume_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 40);
  if (*(v1 + 136) == 1)
  {
    *(v1 + 136) = 2;
  }

  else
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    *(*(*(a1 + 32) + 8) + 24) = -12070;
  }
}

uint64_t FigTTMLDocumentWriterCreateRegionStyleOptimizer(uint64_t a1, const void *a2, CFTypeRef *a3)
{
  if (!a2)
  {
    FigTTMLDocumentWriterCreateRegionStyleOptimizer_cold_2(&v8);
    return v8;
  }

  if (!a3)
  {
    FigTTMLDocumentWriterCreateRegionStyleOptimizer_cold_1(&v8);
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

void figTTMLDocumentWriterRegionStyleOptimizer_Finalize()
{
  FigTTMLDocumentWriterGetCMBaseObject();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*DerivedStorage)
  {
    CFRelease(*DerivedStorage);
    *DerivedStorage = 0;
  }

  v1 = *(DerivedStorage + 8);
  if (v1)
  {
    CFRelease(v1);
    *(DerivedStorage + 8) = 0;
  }
}

uint64_t figTTMLDocumentWriterRegionStyleOptimizer_StartElement(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  FigTTMLDocumentWriterGetCMBaseObject();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  cf = 0;
  v4 = FigTTMLDocumentWriterElementCreate(*MEMORY[0x1E695E480], v2, *(DerivedStorage + 16), &cf);
  if (v4)
  {
    v7 = cf;
    if (!cf)
    {
      return v4;
    }

    goto LABEL_9;
  }

  v5 = *(DerivedStorage + 16);
  if (v5)
  {
    FigTTMLDocumentWriterElementAddChildElement(v5, cf);
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

    *(DerivedStorage + 8) = v6;
  }

  v7 = cf;
  *(DerivedStorage + 16) = cf;
  if (v7)
  {
LABEL_9:
    CFRelease(v7);
  }

  return v4;
}

uint64_t figTTMLDocumentWriterRegionStyleOptimizer_EndElement()
{
  v12 = *MEMORY[0x1E69E9840];
  FigTTMLDocumentWriterGetCMBaseObject();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v1 = *(DerivedStorage + 16);
  v2 = *(DerivedStorage + 8);
  if (v1 != v2)
  {
    goto LABEL_10;
  }

  v10 = 0;
  context = 0u;
  *cf = 0u;
  theArray = 0;
  v11 = xmmword_196E77640;
  if (!FigTTMLDocumentWriterElementCopyElementsAtPath(v2, &v11, 4, &theArray))
  {
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], 0);
    cf[0] = v2;
    cf[1] = Mutable;
    *(&context + 1) = @"http://www.w3.org/ns/ttml#styling textAlign";
    v4 = theArray;
    v13.length = CFArrayGetCount(theArray);
    v13.location = 0;
    CFArrayApplyFunction(v4, v13, optimizeRegionStyleAttributesAux, &context);
  }

  if (theArray)
  {
    CFRelease(theArray);
  }

  if (cf[1])
  {
    CFRelease(cf[1]);
  }

  result = FigTTMLDocumentWriterElementWriteTree(*(DerivedStorage + 8), *DerivedStorage);
  if (!result)
  {
    v1 = *(DerivedStorage + 16);
LABEL_10:
    ParentElement = FigTTMLDocumentWriterElementGetParentElement(v1);
    result = 0;
    *(DerivedStorage + 16) = ParentElement;
  }

  return result;
}

uint64_t figTTMLDocumentWriterRegionStyleOptimizer_AddCaptionData(uint64_t a1, const void *a2)
{
  FigTTMLDocumentWriterGetCMBaseObject();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigTTMLDocumentWriterElementAddChildElement(*(DerivedStorage + 16), a2);
  return 0;
}

uint64_t figTTMLDocumentWriterRegionStyleOptimizer_SetAttribute(uint64_t a1, const void *a2, const void *a3)
{
  FigTTMLDocumentWriterGetCMBaseObject();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigTTMLDocumentWriterElementSetAttribute(*(DerivedStorage + 16), a2, a3);
  return 0;
}

uint64_t figTTMLDocumentWriterRegionStyleOptimizer_Flush()
{
  FigTTMLDocumentWriterGetCMBaseObject();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (DerivedStorage[2])
  {
    return 4294950721;
  }

  v2 = *DerivedStorage;

  return FigTTMLDocumentWriterFlush(v2);
}

uint64_t findMostCommonStyleValue_0(uint64_t result, int a2, uint64_t a3)
{
  if (*(a3 + 8) < a2)
  {
    *a3 = result;
    *(a3 + 8) = a2;
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_0_93(CFArrayRef *a1)
{

  return FigTTMLDocumentWriterElementWalkTree(a1, v1, 0, 0, v2);
}

uint64_t fapg_Register()
{
  result = _CFRuntimeRegisterClass();
  sFigAttributePartitionGeneratorID = result;
  return result;
}

uint64_t FigAttributePartitionGeneratorAddElement(CFMutableArrayRef *a1, const void *a2, uint64_t a3)
{
  if (!a1)
  {
    FigAttributePartitionGeneratorAddElement_cold_5(&v11);
    return v11;
  }

  if (!a3)
  {
    FigAttributePartitionGeneratorAddElement_cold_4(&v11);
    return v11;
  }

  if (CFDictionaryGetValue(a1[3], a2))
  {
    FigAttributePartitionGeneratorAddElement_cold_1(&v11);
    return v11;
  }

  CFGetAllocator(a1);
  MEMORY[0x19A8D3660](&FigAttributePartitionElementGetTypeID_sRegisterFigAttributePartitionElementOnce, partitionElement_Register);
  Instance = _CFRuntimeCreateInstance();
  if (Instance)
  {
    v6 = Instance;
    MutableCopy = FigCFDictionaryCreateMutableCopy();
    if (MutableCopy)
    {
      v8 = MutableCopy;
      if (a2)
      {
        v9 = CFRetain(a2);
      }

      else
      {
        v9 = 0;
      }

      v6[2] = v9;
      v6[3] = v8;
      goto LABEL_10;
    }

    FigAttributePartitionGeneratorAddElement_cold_2(v6, &v11);
  }

  else
  {
    FigAttributePartitionGeneratorAddElement_cold_3(&v11);
  }

  result = v11;
  if (v11)
  {
    return result;
  }

  v6 = 0;
LABEL_10:
  CFArrayAppendValue(a1[2], v6);
  CFDictionarySetValue(a1[3], a2, v6);
  if (v6)
  {
    CFRelease(v6);
  }

  return 0;
}

uint64_t FigAttributePartitionGeneratorCopyPartitionReferences(uint64_t a1, const void *a2, void *a3)
{
  if (!a1)
  {
    FigAttributePartitionGeneratorCopyPartitionReferences_cold_5(&v8);
    return v8;
  }

  if (!a2)
  {
    FigAttributePartitionGeneratorCopyPartitionReferences_cold_4(&v8);
    return v8;
  }

  if (!a3)
  {
    FigAttributePartitionGeneratorCopyPartitionReferences_cold_3(&v8);
    return v8;
  }

  if (!*(a1 + 32))
  {
    FigAttributePartitionGeneratorCopyPartitionReferences_cold_2(&v8);
    return v8;
  }

  Value = CFDictionaryGetValue(*(a1 + 24), a2);
  if (!Value)
  {
    FigAttributePartitionGeneratorCopyPartitionReferences_cold_1(&v8);
    return v8;
  }

  v5 = Value[6];
  if (v5)
  {
    v6 = CFRetain(v5);
  }

  else
  {
    v6 = 0;
  }

  result = 0;
  *a3 = v6;
  return result;
}

uint64_t FigAttributePartitionGeneratorCreate(uint64_t a1, uint64_t *a2)
{
  if (!a2)
  {
    FigAttributePartitionGeneratorCreate_cold_4(v20);
    return v20[0];
  }

  v3 = *MEMORY[0x1E695E480];
  MEMORY[0x19A8D3660](&FigAttributePartitionGeneratorGetTypeID_sRegisterFigAttributePartitionGeneratorOnce, fapg_Register);
  Instance = _CFRuntimeCreateInstance();
  if (!Instance)
  {
    FigAttributePartitionGeneratorCreate_cold_3(v20);
    return v20[0];
  }

  v5 = Instance;
  Mutable = CFArrayCreateMutable(v3, 0, MEMORY[0x1E695E9C0]);
  if (!Mutable)
  {
    FigAttributePartitionGeneratorCreate_cold_2(v20);
LABEL_16:
    v14 = v20[0];
    v16 = v5;
LABEL_25:
    CFRelease(v16);
    return v14;
  }

  v7 = Mutable;
  v8 = CFArrayCreateMutable(v3, 0, MEMORY[0x1E695E9C0]);
  if (!v8)
  {
    FigAttributePartitionGeneratorCreate_cold_1(v7, v20);
    goto LABEL_16;
  }

  v9 = v8;
  v10 = CFDictionaryCreateMutable(v3, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (v10)
  {
    v11 = CFDictionaryCreateMutable(v3, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    if (v11)
    {
      v12 = CFDictionaryCreateMutable(v3, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      if (v12)
      {
        v13 = CFDictionaryCreateMutable(v3, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
        if (v13)
        {
          v14 = 0;
          *(v5 + 32) = 0;
          *(v5 + 40) = v9;
          *(v5 + 16) = v7;
          *(v5 + 24) = v10;
          *(v5 + 56) = v11;
          *(v5 + 64) = v12;
          *(v5 + 72) = v13;
          *a2 = v5;
          return v14;
        }
      }
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    v11 = 0;
    v12 = 0;
  }

  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v18, v19, v20[1]);
  v14 = v17;
  CFRelease(v7);
  CFRelease(v9);
  if (v10)
  {
    CFRelease(v10);
  }

  CFRelease(v5);
  if (v11)
  {
    CFRelease(v11);
  }

  if (v12)
  {
    v16 = v12;
    goto LABEL_25;
  }

  return v14;
}

double fapg_Init(_OWORD *a1)
{
  result = 0.0;
  a1[3] = 0u;
  a1[4] = 0u;
  a1[1] = 0u;
  a1[2] = 0u;
  return result;
}

void fapg_Finalize(void *a1)
{
  v2 = a1[2];
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = a1[3];
  if (v3)
  {
    CFRelease(v3);
  }

  v4 = a1[5];
  if (v4)
  {
    CFRelease(v4);
  }

  v5 = a1[8];
  if (v5)
  {
    CFRelease(v5);
  }

  v6 = a1[7];
  if (v6)
  {
    CFRelease(v6);
  }

  v7 = a1[9];
  if (v7)
  {

    CFRelease(v7);
  }
}

__CFString *fapg_CopyDebugDesc(uint64_t a1)
{
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  CFStringAppendFormat(Mutable, 0, @"[FigAttributePartitionGenerator(%p) elements=%p partitions=%p]", a1, *(a1 + 16), *(a1 + 40));
  return Mutable;
}

uint64_t partitionElement_Register()
{
  result = _CFRuntimeRegisterClass();
  sFigAttributePartitionElementID = result;
  return result;
}

double partitionElement_Init(uint64_t a1)
{
  *(a1 + 48) = 0;
  result = 0.0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  return result;
}

void partitionElement_Finalize(void *a1)
{
  v2 = a1[3];
  if (v2)
  {
    CFRelease(v2);
    a1[3] = 0;
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

  v5 = a1[4];
  if (v5)
  {
    CFRelease(v5);
    a1[4] = 0;
  }

  v6 = a1[5];
  if (v6)
  {
    CFRelease(v6);
    a1[5] = 0;
  }
}

CFStringRef partitionElement_CopyFormattingDesc(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    Count = CFArrayGetCount(v2);
    v4 = *MEMORY[0x1E695E480];
    if (Count < 1)
    {
      Mutable = 0;
    }

    else
    {
      v5 = Count;
      Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
      for (i = 0; i != v5; ++i)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 48), i);
        CFStringAppend(Mutable, ValueAtIndex);
        CFStringAppend(Mutable, @" ");
      }
    }
  }

  else
  {
    Mutable = 0;
    v4 = *MEMORY[0x1E695E480];
  }

  v9 = @"<no-refs>";
  if (Mutable)
  {
    v9 = Mutable;
  }

  v10 = CFStringCreateWithFormat(v4, 0, @"[FigAttributePartitionElement %p]  owner = <%p>\nattributes = %p\nreferences = %@", a1, *(a1 + 16), *(a1 + 24), v9);
  if (Mutable)
  {
    CFRelease(Mutable);
  }

  return v10;
}

uint64_t partition_Register()
{
  result = _CFRuntimeRegisterClass();
  sFigAttributePartitionID = result;
  return result;
}

uint64_t partition_Init(uint64_t result)
{
  *(result + 16) = 0;
  *(result + 24) = 0;
  return result;
}

void partition_Finalize(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = *(a1 + 16);
  if (v3)
  {

    CFRelease(v3);
  }
}

CFStringRef partition_CopyFormattingDesc(uint64_t a1)
{
  v1 = @"<NULL>";
  if (*(a1 + 16))
  {
    v1 = *(a1 + 16);
  }

  return CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"[FigAttributePartition %p] name = %@\nattributes = %p", a1, v1, *(a1 + 24));
}

CFStringRef partition_CopyDebugDesc(uint64_t a1)
{
  v1 = @"<NULL>";
  if (*(a1 + 16))
  {
    v1 = *(a1 + 16);
  }

  return CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"[FigAttributePartition %p] name = %@\nattributes = %p", a1, v1, *(a1 + 24));
}

void OUTLINED_FUNCTION_1_88()
{

  JUMPOUT(0x19A8D3660);
}

CFTypeRef xmlCopyMediaPlaylistPath(uint64_t a1, const __CFString *a2)
{
  v3 = *(a1 + 80);
  FigXMLNodeGetTag(v3);
  v4 = FigCFEqual();
  if (v3)
  {
    v5 = v4 == 0;
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
    xmlCopyMediaPlaylistPath_cold_1();
    return 0;
  }

  Child = FigXMLNodeGetChild(v3, @"MediaPlaylist");
  if (!Child)
  {
    return 0;
  }

  v7 = FigXMLNodeGetChild(Child, a2);
  ContentAsCFString = FigXMLNodeGetContentAsCFString(v7);
  if (!ContentAsCFString)
  {
    return 0;
  }

  return CFRetain(ContentAsCFString);
}

uint64_t RegisterFigHLSPersistentStreamInfoBaseType()
{
  CMBaseGetClassID();

  return FigBaseClassRegisterClass();
}

uint64_t FigHLSPersistentStreamInfoGetTypeID()
{
  MEMORY[0x19A8D3660](&FigHLSPersistentStreamInfoGetClassID_sRegisterFigHLSPersistentStreamInfoBaseTypeOnce, RegisterFigHLSPersistentStreamInfoBaseType);

  return CMBaseClassGetCFTypeID();
}

uint64_t FigHLSPersistentStreamInfoCreate(uint64_t a1, const __CFURL *a2, uint64_t a3, const void *a4, const __CFDictionary *a5, CFTypeRef *a6)
{
  cf = 0;
  v90 = 1;
  v89 = 0;
  v87 = 0;
  v88 = 0;
  if (!a6)
  {
    FigHLSPersistentStreamInfoCreate_cold_37(buffer);
LABEL_169:
    v7 = 0;
    goto LABEL_170;
  }

  if (!a4)
  {
    FigHLSPersistentStreamInfoCreate_cold_36(buffer);
    goto LABEL_169;
  }

  v7 = a2;
  if (!a2)
  {
    FigHLSPersistentStreamInfoCreate_cold_35(buffer);
    goto LABEL_170;
  }

  MEMORY[0x19A8D3660](&FigHLSPersistentStreamInfoGetClassID_sRegisterFigHLSPersistentStreamInfoBaseTypeOnce, RegisterFigHLSPersistentStreamInfoBaseType, a3);
  BlockBufferWithCFString = CMDerivedObjectCreate();
  if (BlockBufferWithCFString)
  {
    goto LABEL_156;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  *(DerivedStorage + 32) = FigReadWriteLockCreate();
  *DerivedStorage = a1;
  *(DerivedStorage + 40) = CFRetain(v7);
  *(DerivedStorage + 128) = vdupq_n_s64(1uLL);
  *(DerivedStorage + 120) = 0;
  if (a5)
  {
    Value = CFDictionaryGetValue(a5, @"StreamInfoClientAuditToken");
    if (Value)
    {
      v14 = CFRetain(Value);
      *(DerivedStorage + 144) = v14;
      if (v14)
      {
        *buffer = 0u;
        v86 = 0u;
        if (CFDataGetLength(v14) != 32)
        {
          FigHLSPersistentStreamInfoCreate_cold_1(buffer, &v97);
          v7 = 0;
          v84 = 0;
          v41 = v97;
          goto LABEL_124;
        }

        v15 = *(DerivedStorage + 144);
        v99.length = CFDataGetLength(v15);
        v99.location = 0;
        CFDataGetBytes(v15, v99, buffer);
        v16 = v86;
        *(DerivedStorage + 152) = *buffer;
        *(DerivedStorage + 168) = v16;
      }
    }

    else
    {
      *(DerivedStorage + 144) = 0;
    }

    v17 = CFDictionaryGetValue(a5, @"StreamInfoClientBundleIdentifier");
    if (v17)
    {
      v17 = CFRetain(v17);
    }

    *(DerivedStorage + 184) = v17;
    v18 = CFDictionaryGetValue(a5, @"StreamInfoMemoryPool");
    *(DerivedStorage + 200) = v18;
    if (v18)
    {
      CFRetain(v18);
    }
  }

  *(DerivedStorage + 16) = CFRetain(a4);
  *(DerivedStorage + 8) = 0;
  *(DerivedStorage + 112) = 0;
  AllocatorForMedia = FigGetAllocatorForMedia();
  *(DerivedStorage + 24) = CFURLCreateCopyAppendingPathComponent(AllocatorForMedia, *(DerivedStorage + 16), *(DerivedStorage + 40), 1u);
  FigCFDictionaryGetBooleanIfPresent();
  FigCFDictionaryGetBooleanIfPresent();
  v20 = v90 != 0;
  if (!FigCFURLDoesDirectoryExist())
  {
    FigHLSPersistentStreamInfoCreate_cold_34(buffer);
    goto LABEL_169;
  }

  v21 = FigGetAllocatorForMedia();
  v22 = CFURLCreateCopyAppendingPathComponent(v21, *(DerivedStorage + 24), @"StreamInfoRoot.xml", 0);
  *(DerivedStorage + 104) = v22;
  if (!v22)
  {
    FigHLSPersistentStreamInfoCreate_cold_33(buffer);
    goto LABEL_169;
  }

  v23 = 4 * v20;
  if (!FigFileDoesFileExist())
  {
    FigGetAllocatorForMedia();
    BlockBufferWithCFString = FigCreateBlockBufferWithCFString();
    if (!BlockBufferWithCFString)
    {
      v24 = FigGetAllocatorForMedia();
      v7 = CFURLCreateCopyAppendingPathComponent(v24, *(DerivedStorage + 24), @"StreamInfoRoot.xml", 0);
      if (!v7)
      {
        FigHLSPersistentStreamInfoCreate_cold_32(buffer);
        goto LABEL_170;
      }

      FigXMLNodeWriteXMLFileFromBlockBufferAtURL(v87, 0x1F0B33258, v7);
      if (v25)
      {
        if (v25 == -17913)
        {
          FigHLSPersistentStreamInfoCreate_cold_40(buffer);
        }

        else
        {
          FigHLSPersistentStreamInfoCreate_cold_39(buffer);
        }

        goto LABEL_170;
      }

      lockLockFile(DerivedStorage, v23 | 2u);
      if (!v26)
      {
        *(DerivedStorage + 112) = 1;
        FigGetAllocatorForMedia();
        v26 = FigCreateBlockBufferWithCFString();
        if (!v26)
        {
          v27 = FigGetAllocatorForMedia();
          v28 = CFURLCreateCopyAppendingPathComponent(v27, *(DerivedStorage + 24), @"StreamInfoBoot.xml", 0);
          if (v28)
          {
            v84 = v28;
            FigXMLNodeWriteXMLFileFromBlockBufferAtURL(v88, 0x1F0B33258, v28);
            if (!v29)
            {
              *(DerivedStorage + 72) = 1;
              goto LABEL_26;
            }

            v41 = v29;
            if (v29 != -17913)
            {
              goto LABEL_124;
            }

            FigHLSPersistentStreamInfoCreate_cold_38(buffer);
LABEL_123:
            v41 = *buffer;
            goto LABEL_124;
          }

          FigHLSPersistentStreamInfoCreate_cold_31(buffer);
LABEL_170:
          v84 = 0;
          goto LABEL_123;
        }
      }

      v41 = v26;
LABEL_161:
      v84 = 0;
      goto LABEL_124;
    }

LABEL_156:
    v41 = BlockBufferWithCFString;
    v7 = 0;
    goto LABEL_161;
  }

  if (v89)
  {
    v81 = 2;
  }

  else
  {
    v81 = 1;
  }

  lockLockFile(DerivedStorage, v81 | v23);
  if (BlockBufferWithCFString)
  {
    goto LABEL_156;
  }

  v7 = 0;
  v84 = 0;
  *(DerivedStorage + 112) = v89;
LABEL_26:
  v30 = FigGetAllocatorForMedia();
  v31 = CFURLCreateCopyAppendingPathComponent(v30, *(DerivedStorage + 24), @"StreamInfoRoot.xml", 0);
  if (v31)
  {
    v32 = v31;
    v33 = FigGetAllocatorForMedia();
    IsWithinParentDirectory = FigXMLNodeCreateFromURL(v33, v32, (DerivedStorage + 88));
    if (!IsWithinParentDirectory)
    {
      v35 = *(DerivedStorage + 88);
      FigXMLNodeGetTag(v35);
      v36 = FigCFEqual();
      if (!v35 || !v36)
      {
        FigHLSPersistentStreamInfoCreate_cold_3(buffer);
LABEL_178:
        v41 = *buffer;
LABEL_33:
        CFRelease(v32);
        if (v41)
        {
          goto LABEL_124;
        }

        goto LABEL_34;
      }

      Child = FigXMLNodeGetChild(v35, @"BootImage");
      ContentAsCFString = FigXMLNodeGetContentAsCFString(Child);
      IsWithinParentDirectory = FigFileValidateFileNameIsWithinParentDirectory();
      if (!IsWithinParentDirectory)
      {
        v39 = FigGetAllocatorForMedia();
        v40 = CFURLCreateCopyAppendingPathComponent(v39, *(DerivedStorage + 24), ContentAsCFString, 0);
        if (v40)
        {
          v41 = 0;
          *(DerivedStorage + 96) = v40;
          goto LABEL_33;
        }

        FigHLSPersistentStreamInfoCreate_cold_2(buffer);
        goto LABEL_178;
      }
    }

    v41 = IsWithinParentDirectory;
    goto LABEL_33;
  }

  FigHLSPersistentStreamInfoCreate_cold_4(buffer);
  v41 = *buffer;
  if (*buffer)
  {
    goto LABEL_124;
  }

LABEL_34:
  v42 = FigGetAllocatorForMedia();
  v43 = FigXMLNodeCreateFromURL(v42, *(DerivedStorage + 96), (DerivedStorage + 80));
  if (v43)
  {
    v41 = v43;
    goto LABEL_124;
  }

  v44 = FigGetAllocatorForMedia();
  Mutable = CFDictionaryCreateMutable(v44, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  *(DerivedStorage + 48) = Mutable;
  if (!Mutable)
  {
    FigHLSPersistentStreamInfoCreate_cold_30(buffer);
    goto LABEL_123;
  }

  v46 = FigGetAllocatorForMedia();
  v47 = CFArrayCreateMutable(v46, 0, MEMORY[0x1E695E9C0]);
  *(DerivedStorage + 56) = v47;
  if (!v47)
  {
    FigHLSPersistentStreamInfoCreate_cold_29(buffer);
    goto LABEL_123;
  }

  *buffer = 0;
  valuePtr = -1;
  v97 = 0;
  v48 = *(DerivedStorage + 80);
  if (!v48)
  {
    FigHLSPersistentStreamInfoCreate_cold_16(&v95);
    v56 = 0;
    DictionaryForSegmentEntry = 0;
    v58 = 0;
    v41 = v95;
    goto LABEL_68;
  }

  MediaSegments = xmlGetMediaSegments(v48);
  if (!MediaSegments || (v50 = MediaSegments, !FigXMLNodeGetCountOfChildren(MediaSegments)) || FigXMLNodeGetCountOfChildren(v50) < 1)
  {
    v41 = 0;
    v56 = 0;
    DictionaryForSegmentEntry = 0;
    v58 = 0;
    goto LABEL_68;
  }

  v51 = 0;
  v52 = *MEMORY[0x1E695E480];
  while (1)
  {
    ChildAtIndex = FigXMLNodeGetChildAtIndex(v50, v51);
    FigXMLNodeGetTag(ChildAtIndex);
    if (!FigCFEqual())
    {
      goto LABEL_65;
    }

    v94 = 0;
    v95 = 0;
    v92 = 0;
    v93 = 0;
    if (FigXMLNodeCopyAttributeAsCFString(ChildAtIndex, @"URL", buffer))
    {
      FigHLSPersistentStreamInfoCreate_cold_5(v98);
      v56 = 0;
LABEL_153:
      DictionaryForSegmentEntry = 0;
      v58 = 0;
      goto LABEL_155;
    }

    v54 = FigGetAllocatorForMedia();
    v55 = *(DerivedStorage + 128);
    *(DerivedStorage + 128) = v55 + 1;
    v56 = CFStringCreateWithFormat(v54, 0, @"%ld", v55);
    if (!v56)
    {
      FigHLSPersistentStreamInfoCreate_cold_15(v98);
      goto LABEL_153;
    }

    if (FigXMLNodeGetAttributeAsDouble(ChildAtIndex, @"Tim", &v95))
    {
      FigHLSPersistentStreamInfoCreate_cold_6(v98);
      goto LABEL_153;
    }

    if (FigXMLNodeGetAttributeAsDouble(ChildAtIndex, @"Dur", &v94))
    {
      FigHLSPersistentStreamInfoCreate_cold_7(v98);
      goto LABEL_153;
    }

    if (FigXMLNodeGetAttributeAsInt64(ChildAtIndex, @"Off", &v92))
    {
      FigHLSPersistentStreamInfoCreate_cold_8(v98);
      goto LABEL_153;
    }

    AttributeAsInt64 = FigXMLNodeGetAttributeAsInt64(ChildAtIndex, @"SeqNum", &valuePtr);
    if (valuePtr == -1)
    {
      v58 = 0;
      goto LABEL_53;
    }

    if (AttributeAsInt64)
    {
      FigHLSPersistentStreamInfoCreate_cold_9(v98);
      goto LABEL_153;
    }

    v58 = CFNumberCreate(v52, kCFNumberSInt64Type, &valuePtr);
    if (!v58)
    {
      break;
    }

LABEL_53:
    if (FigXMLNodeGetAttributeAsInt64(ChildAtIndex, @"Len", &v93))
    {
      FigHLSPersistentStreamInfoCreate_cold_11(v98);
      goto LABEL_154;
    }

    if (FigXMLNodeCopyAttributeAsCFString(ChildAtIndex, @"PATH", &v97))
    {
      FigHLSPersistentStreamInfoCreate_cold_12(v98);
      goto LABEL_154;
    }

    v59 = FigFileValidateFileNameIsWithinParentDirectory();
    if (v59)
    {
      v41 = v59;
      DictionaryForSegmentEntry = 0;
      goto LABEL_68;
    }

    DictionaryForSegmentEntry = createDictionaryForSegmentEntry(*buffer, v92, v58, v93, v97);
    if (!DictionaryForSegmentEntry)
    {
      FigHLSPersistentStreamInfoCreate_cold_14(v98);
      goto LABEL_155;
    }

    if (CFDictionaryGetValue(*(DerivedStorage + 48), v56))
    {
      FigHLSPersistentStreamInfoCreate_cold_13(v98);
      goto LABEL_155;
    }

    CFDictionarySetValue(*(DerivedStorage + 48), v56, DictionaryForSegmentEntry);
    CFArrayAppendValue(*(DerivedStorage + 56), v56);
    if (*buffer)
    {
      CFRelease(*buffer);
      *buffer = 0;
    }

    CFRelease(DictionaryForSegmentEntry);
    CFRelease(v56);
    if (v97)
    {
      CFRelease(v97);
      v97 = 0;
    }

    if (v58)
    {
      CFRelease(v58);
    }

    valuePtr = -1;
LABEL_65:
    if (++v51 >= FigXMLNodeGetCountOfChildren(v50))
    {
      v41 = 0;
      v56 = 0;
      DictionaryForSegmentEntry = 0;
      v58 = 0;
      goto LABEL_68;
    }
  }

  FigHLSPersistentStreamInfoCreate_cold_10(v98);
LABEL_154:
  DictionaryForSegmentEntry = 0;
LABEL_155:
  v41 = v98[0];
LABEL_68:
  if (*buffer)
  {
    CFRelease(*buffer);
  }

  if (DictionaryForSegmentEntry)
  {
    CFRelease(DictionaryForSegmentEntry);
  }

  if (v56)
  {
    CFRelease(v56);
  }

  if (v97)
  {
    CFRelease(v97);
  }

  if (v58)
  {
    CFRelease(v58);
  }

  if (v41)
  {
    goto LABEL_124;
  }

  v61 = FigGetAllocatorForMedia();
  v62 = CFDictionaryCreateMutable(v61, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  *(DerivedStorage + 64) = v62;
  if (!v62)
  {
    FigHLSPersistentStreamInfoCreate_cold_28(buffer);
    goto LABEL_123;
  }

  v63 = *(DerivedStorage + 80);
  *buffer = 0;
  valuePtr = -1;
  v97 = 0;
  MediaInitializationSegments = xmlGetMediaInitializationSegments(v63);
  if (!MediaInitializationSegments)
  {
    v41 = 0;
    v76 = 0;
    goto LABEL_115;
  }

  v65 = MediaInitializationSegments;
  if (!FigXMLNodeGetCountOfChildren(MediaInitializationSegments) || FigXMLNodeGetCountOfChildren(v65) < 1)
  {
    v41 = 0;
    v71 = 0;
    v76 = 0;
    goto LABEL_110;
  }

  v66 = 0;
  v67 = *MEMORY[0x1E695E480];
  while (2)
  {
    v68 = FigXMLNodeGetChildAtIndex(v65, v66);
    FigXMLNodeGetTag(v68);
    if (!FigCFEqual())
    {
      goto LABEL_106;
    }

    v94 = 0;
    v95 = 0;
    if (FigXMLNodeCopyAttributeAsCFString(v68, @"URL", &v97))
    {
      FigHLSPersistentStreamInfoCreate_cold_17(&v93);
      v71 = 0;
      goto LABEL_150;
    }

    v69 = v97;
    v70 = FigGetAllocatorForMedia();
    v71 = CFURLCreateWithString(v70, v69, 0);
    if (!v71)
    {
      FigHLSPersistentStreamInfoCreate_cold_25();
      v41 = 0;
      goto LABEL_108;
    }

    v72 = FigCFURLIsLocalResource();
    CFRelease(v71);
    if (v72)
    {
      goto LABEL_107;
    }

    v73 = FigGetAllocatorForMedia();
    v74 = *(DerivedStorage + 136);
    *(DerivedStorage + 136) = v74 + 1;
    v71 = CFStringCreateWithFormat(v73, 0, @"%ld", v74);
    if (!v71)
    {
      FigHLSPersistentStreamInfoCreate_cold_24(&v93);
      goto LABEL_150;
    }

    if (FigXMLNodeGetAttributeAsInt64(v68, @"Off", &v94))
    {
      FigHLSPersistentStreamInfoCreate_cold_18(&v93);
      goto LABEL_150;
    }

    v75 = FigXMLNodeGetAttributeAsInt64(v68, @"SeqNum", &valuePtr);
    if (valuePtr == -1)
    {
      v76 = 0;
      goto LABEL_95;
    }

    if (!v75)
    {
      v76 = CFNumberCreate(v67, kCFNumberSInt64Type, &valuePtr);
      if (!v76)
      {
        FigHLSPersistentStreamInfoCreate_cold_20(&v93);
        goto LABEL_151;
      }

LABEL_95:
      if (FigXMLNodeGetAttributeAsInt64(v68, @"Len", &v95))
      {
        FigHLSPersistentStreamInfoCreate_cold_21(&v93);
        goto LABEL_151;
      }

      if (FigXMLNodeCopyAttributeAsCFString(v68, @"PATH", buffer))
      {
        FigHLSPersistentStreamInfoCreate_cold_22(&v93);
        goto LABEL_151;
      }

      v77 = FigFileValidateFileNameIsWithinParentDirectory();
      if (v77)
      {
        v41 = v77;
        goto LABEL_110;
      }

      DictionaryForInitializationSegmentEntry = createDictionaryForInitializationSegmentEntry(v97, v94, v76, v95, *buffer);
      if (!DictionaryForInitializationSegmentEntry)
      {
        FigHLSPersistentStreamInfoCreate_cold_23(&v93);
        goto LABEL_151;
      }

      v79 = DictionaryForInitializationSegmentEntry;
      CFDictionarySetValue(*(DerivedStorage + 64), v71, DictionaryForInitializationSegmentEntry);
      if (v97)
      {
        CFRelease(v97);
        v97 = 0;
      }

      CFRelease(v71);
      CFRelease(v79);
      if (*buffer)
      {
        CFRelease(*buffer);
        *buffer = 0;
      }

      if (v76)
      {
        CFRelease(v76);
      }

      valuePtr = -1;
LABEL_106:
      if (++v66 >= FigXMLNodeGetCountOfChildren(v65))
      {
LABEL_107:
        v41 = 0;
        v71 = 0;
LABEL_108:
        v76 = 0;
        goto LABEL_110;
      }

      continue;
    }

    break;
  }

  FigHLSPersistentStreamInfoCreate_cold_19(&v93);
LABEL_150:
  v76 = 0;
LABEL_151:
  v41 = v93;
LABEL_110:
  if (v97)
  {
    CFRelease(v97);
  }

  if (v71)
  {
    CFRelease(v71);
  }

LABEL_115:
  if (*buffer)
  {
    CFRelease(*buffer);
  }

  if (v76)
  {
    CFRelease(v76);
  }

  if (v41)
  {
LABEL_124:
    if (cf)
    {
      CFRelease(cf);
    }

    goto LABEL_185;
  }

  v80 = *(DerivedStorage + 80);
  if (!v80)
  {
    v82 = 1353;
    goto LABEL_183;
  }

  FigXMLNodeGetTag(*(DerivedStorage + 80));
  if (!FigCFEqual())
  {
    v82 = 1356;
LABEL_183:
    if (FigHLSPersistentStreamInfoCreate_cold_27(v82, buffer))
    {
      goto LABEL_184;
    }

    goto LABEL_123;
  }

  if (FigHLSPersistentStreamInfoCreate_cold_26(v80, DerivedStorage, buffer))
  {
    goto LABEL_123;
  }

LABEL_184:
  v41 = 0;
  *a6 = cf;
  cf = 0;
LABEL_185:
  if (v88)
  {
    CFRelease(v88);
  }

  if (v87)
  {
    CFRelease(v87);
  }

  if (v7)
  {
    CFRelease(v7);
  }

  if (v84)
  {
    CFRelease(v84);
  }

  return v41;
}

uint64_t xmlGetStreamInfo(uint64_t a1)
{
  FigXMLNodeGetTag(a1);
  if (FigCFEqual())
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t HLSPersistentStreamInfo_Invalidate(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (DerivedStorage)
  {

    return streamInfo_Invalidate(DerivedStorage);
  }

  else
  {
    HLSPersistentStreamInfo_Invalidate_cold_1(&v3);
    return v3;
  }
}

double HLSPersistentStreamInfo_Finalize(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!DerivedStorage)
  {
    return HLSPersistentStreamInfo_Finalize_cold_1();
  }

  v2 = DerivedStorage;
  streamInfo_Invalidate(DerivedStorage);
  FigReadWriteLockDestroy();
  *(v2 + 32) = 0;
  return result;
}

CFStringRef HLSPersistentStreamInfo_CopyDebugDescription(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  AllocatorForMedia = FigGetAllocatorForMedia();
  return CFStringCreateWithFormat(AllocatorForMedia, 0, @"[FigHLSPersistentStreamInfo]{%@}", *(DerivedStorage + 40));
}

uint64_t HLSPersistentStreamInfo_CopyProperty(uint64_t a1, const void *a2, uint64_t a3, uint64_t *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!DerivedStorage)
  {
    HLSPersistentStreamInfo_CopyProperty_cold_6(&v19);
    return v19;
  }

  v7 = DerivedStorage;
  v8 = FigReadWriteLockLockForRead();
  if (v8)
  {
    v9 = v8;
    goto LABEL_19;
  }

  if (!a2)
  {
    HLSPersistentStreamInfo_CopyProperty_cold_5(&v19);
    goto LABEL_37;
  }

  if (!a4)
  {
    HLSPersistentStreamInfo_CopyProperty_cold_4(&v19);
    goto LABEL_37;
  }

  if (!*(v7 + 8))
  {
    if (CFEqual(a2, @"StreamInfoMediaSegmentList"))
    {
      if (*(v7 + 48))
      {
        AllocatorForMedia = FigGetAllocatorForMedia();
        v11 = *(v7 + 48);
LABEL_10:
        Copy = CFDictionaryCreateCopy(AllocatorForMedia, v11);
        goto LABEL_18;
      }

      goto LABEL_17;
    }

    if (CFEqual(a2, @"StreamInfoMediaSegmentIDList"))
    {
      if (*(v7 + 56))
      {
        v13 = FigGetAllocatorForMedia();
        Copy = CFArrayCreateCopy(v13, *(v7 + 56));
        goto LABEL_18;
      }

      goto LABEL_17;
    }

    if (CFEqual(a2, @"StreamInfoMediaInitializationSegmentList"))
    {
      if (*(v7 + 64))
      {
        AllocatorForMedia = FigGetAllocatorForMedia();
        v11 = *(v7 + 64);
        goto LABEL_10;
      }

LABEL_17:
      Copy = 0;
      goto LABEL_18;
    }

    if (CFEqual(@"StreamInfoMediaPlaylistNetworkURL", a2))
    {
      Copy = xmlCopyMediaPlaylistURL(v7);
      if (Copy)
      {
        goto LABEL_18;
      }

      goto LABEL_23;
    }

    if (CFEqual(@"StreamInfoMediaTypeList", a2))
    {
      v19 = 0;
      ps_xmlCopyMediaTypeList(v7, &v19);
      v9 = 0;
      *a4 = v19;
      goto LABEL_19;
    }

    if (CFEqual(@"StreamInfoStreamType", a2))
    {
      Copy = xmlCopyStreamType(v7);
      goto LABEL_18;
    }

    if (CFEqual(@"StreamInfoPeakBandwidth", a2))
    {
      Copy = xmlCopyStreamBandwidth(v7, @"PeakBandwidth");
      if (Copy)
      {
        goto LABEL_18;
      }

      HLSPersistentStreamInfo_CopyProperty_cold_1(&v19);
    }

    else
    {
      if (!CFEqual(@"StreamInfoAverageBandwidth", a2))
      {
        if (CFEqual(@"StreamInfoVersion", a2))
        {
          Copy = xmlCopyStreamInfoVersion(v7);
          if (Copy)
          {
            goto LABEL_18;
          }
        }

        else
        {
          if (!CFEqual(@"StreamInfoEvictionPolicy", a2))
          {
            if (CFEqual(@"StreamInfoCompressable", a2))
            {
              StreamInfo = xmlGetStreamInfo(*(v7 + 80));
              IsCompressible = xmlIsCompressible(StreamInfo);
            }

            else
            {
              if (!CFEqual(@"StreamInfoCompleteState", a2))
              {
                if (CFEqual(@"StreamInfoMediaBytesStored", a2))
                {
                  v19 = *(v7 + 192);
                  Copy = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt64Type, &v19);
                  if (!Copy)
                  {
                    HLSPersistentStreamInfo_CopyProperty_cold_3(&v20);
                    v9 = v20;
                    goto LABEL_19;
                  }
                }

                else
                {
                  if (!CFEqual(@"StreamInfoUniqueIdentifier", a2))
                  {
                    v9 = 0;
                    goto LABEL_19;
                  }

                  Copy = xmlCopyUniqueIdentifier(v7);
                }

                goto LABEL_18;
              }

              v17 = xmlGetStreamInfo(*(v7 + 80));
              IsCompressible = ps_xmlIsComplete(v17);
            }

            v18 = MEMORY[0x1E695E4C0];
            if (IsCompressible)
            {
              v18 = MEMORY[0x1E695E4D0];
            }

            Copy = CFRetain(*v18);
LABEL_18:
            v9 = 0;
            *a4 = Copy;
            goto LABEL_19;
          }

          Copy = xmlCopyEvictionPolicy(v7);
          if (Copy)
          {
            goto LABEL_18;
          }
        }

LABEL_23:
        v9 = 4294950360;
        goto LABEL_19;
      }

      Copy = xmlCopyStreamBandwidth(v7, @"AverageBandwidth");
      if (Copy)
      {
        goto LABEL_18;
      }

      HLSPersistentStreamInfo_CopyProperty_cold_2(&v19);
    }

LABEL_37:
    v9 = v19;
    goto LABEL_19;
  }

  v9 = 4294954511;
LABEL_19:
  FigReadWriteLockUnlockForRead();
  return v9;
}

CFTypeRef xmlCopyMediaPlaylistURL(uint64_t a1)
{
  v1 = *(a1 + 80);
  FigXMLNodeGetTag(v1);
  v2 = FigCFEqual();
  if (v1)
  {
    v3 = v2 == 0;
  }

  else
  {
    v3 = 1;
  }

  if (v3)
  {
    xmlCopyMediaPlaylistURL_cold_1();
    return 0;
  }

  Child = FigXMLNodeGetChild(v1, @"MediaPlaylist");
  if (!Child)
  {
    return 0;
  }

  v5 = FigXMLNodeGetChild(Child, @"NetworkURL");
  ContentAsCFString = FigXMLNodeGetContentAsCFString(v5);
  if (!ContentAsCFString)
  {
    return 0;
  }

  return CFRetain(ContentAsCFString);
}

void ps_xmlCopyMediaTypeList(uint64_t a1, CFMutableArrayRef *a2)
{
  v3 = *(a1 + 80);
  FigXMLNodeGetTag(v3);
  v4 = FigCFEqual();
  if (v3)
  {
    v5 = v4 == 0;
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
    ps_xmlCopyMediaTypeList_cold_1();
    return;
  }

  Child = FigXMLNodeGetChild(v3, @"MediaTypeList");
  if (!Child)
  {
    if (!a2)
    {
      return;
    }

    Mutable = 0;
    goto LABEL_16;
  }

  v7 = Child;
  AllocatorForMedia = FigGetAllocatorForMedia();
  Mutable = CFArrayCreateMutable(AllocatorForMedia, 0, MEMORY[0x1E695E9C0]);
  if (FigXMLNodeGetCountOfChildren(v7) >= 1)
  {
    v10 = 0;
    do
    {
      ChildAtIndex = FigXMLNodeGetChildAtIndex(v7, v10);
      FigXMLNodeGetTag(ChildAtIndex);
      if (FigCFEqual())
      {
        FigXMLNodeGetAttribute(ChildAtIndex, @"type");
        FigCFStringGetOSTypeValue();
        FigCFArrayAppendInt32();
      }

      ++v10;
    }

    while (v10 < FigXMLNodeGetCountOfChildren(v7));
  }

  if (a2)
  {
LABEL_16:
    *a2 = Mutable;
    return;
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }
}

CFTypeRef xmlCopyStreamType(uint64_t a1)
{
  v1 = *(a1 + 80);
  FigXMLNodeGetTag(v1);
  v2 = FigCFEqual();
  if (v1)
  {
    v3 = v2 == 0;
  }

  else
  {
    v3 = 1;
  }

  if (v3)
  {
    xmlCopyStreamType_cold_1();
    return 0;
  }

  Child = FigXMLNodeGetChild(v1, @"Type");
  if (!FigXMLNodeGetContentAsCFString(Child))
  {
    return 0;
  }

  if (!FigCFEqual())
  {
    if (FigCFEqual())
    {
      v5 = @"StreamInfoSupplementalStream";
      goto LABEL_10;
    }

    return 0;
  }

  v5 = @"StreamInfoMainStream";
LABEL_10:

  return CFRetain(v5);
}

uint64_t xmlCopyStreamInfoVersion(uint64_t a1)
{
  v1 = *(a1 + 80);
  FigXMLNodeGetTag(v1);
  v2 = FigCFEqual();
  if (v1)
  {
    v3 = v2 == 0;
  }

  else
  {
    v3 = 1;
  }

  if (v3)
  {
    xmlCopyStreamInfoVersion_cold_1();
    return 0;
  }

  else
  {
    Child = FigXMLNodeGetChild(v1, @"Version");

    return FigXMLNodeGetContentAsCFString(Child);
  }
}

CFTypeRef xmlCopyEvictionPolicy(uint64_t a1)
{
  v1 = *(a1 + 80);
  FigXMLNodeGetTag(v1);
  v2 = FigCFEqual();
  if (v1)
  {
    v3 = v2 == 0;
  }

  else
  {
    v3 = 1;
  }

  if (v3)
  {
    xmlCopyEvictionPolicy_cold_1();
    return 0;
  }

  Child = FigXMLNodeGetChild(v1, @"EvictionPolicy");
  ContentAsCFString = FigXMLNodeGetContentAsCFString(Child);
  if (!ContentAsCFString)
  {
    return 0;
  }

  return CFRetain(ContentAsCFString);
}

BOOL xmlIsCompressible(uint64_t a1)
{
  cf = 0;
  if (!a1)
  {
    xmlIsCompressible_cold_1();
    return 0;
  }

  Child = FigXMLNodeGetChild(a1, @"Compressable");
  if (!Child)
  {
    return 0;
  }

  v2 = FigXMLNodeCopyContentAsCFString(Child, &cf);
  v3 = 0;
  v4 = cf;
  if (!v2 && cf)
  {
    v3 = FigCFEqual() != 0;
    v4 = cf;
  }

  if (v4)
  {
    CFRelease(v4);
  }

  return v3;
}

BOOL ps_xmlIsComplete(uint64_t a1)
{
  if (a1)
  {
    Child = FigXMLNodeGetChild(a1, @"Complete");
    FigXMLNodeGetContentAsCFString(Child);
    return FigCFEqual() != 0;
  }

  else
  {
    ps_xmlIsComplete_cold_1();
    return 0;
  }
}

CFStringRef *xmlCopyUniqueIdentifier(uint64_t a1)
{
  v5 = 0;
  v1 = *(a1 + 80);
  FigXMLNodeGetTag(v1);
  v2 = FigCFEqual();
  if (v1)
  {
    v3 = v2 == 0;
  }

  else
  {
    v3 = 1;
  }

  if (v3)
  {
    xmlCopyUniqueIdentifier_cold_1();
    return 0;
  }

  else
  {
    result = FigXMLNodeGetChild(v1, @"UniqueIdentifier");
    if (result)
    {
      FigXMLNodeCopyContentAsCFString(result, &v5);
      return v5;
    }
  }

  return result;
}

uint64_t xmlSetStreamType(uint64_t a1, const void *a2)
{
  v3 = *(a1 + 80);
  FigXMLNodeGetTag(v3);
  v4 = FigCFEqual();
  if (v3)
  {
    v5 = v4 == 0;
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
    xmlSetStreamType_cold_1(&v11);
    return v11;
  }

  else
  {
    cf = FigXMLNodeGetChild(v3, @"Type");
    if (cf)
    {
      FigXMLNodeRemoveAndClearChild(v3, &cf);
    }

    AllocatorForMedia = FigGetAllocatorForMedia();
    v7 = FigXMLNodeCreateChildNode(AllocatorForMedia, v3, @"Type", &cf);
    v8 = cf;
    if (!v7)
    {
      FigXMLNodeContentSetCFString(cf, a2);
      v8 = cf;
    }

    if (v8)
    {
      CFRelease(v8);
    }
  }

  return v7;
}

uint64_t xmlSetEvictionPolicy(uint64_t a1, const void *a2)
{
  v3 = *(a1 + 80);
  FigXMLNodeGetTag(v3);
  v4 = FigCFEqual();
  if (v3)
  {
    v5 = v4 == 0;
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
    xmlSetEvictionPolicy_cold_1(&v11);
    return v11;
  }

  else
  {
    cf = FigXMLNodeGetChild(v3, @"EvictionPolicy");
    if (cf)
    {
      FigXMLNodeRemoveAndClearChild(v3, &cf);
    }

    AllocatorForMedia = FigGetAllocatorForMedia();
    v7 = FigXMLNodeCreateChildNode(AllocatorForMedia, v3, @"EvictionPolicy", &cf);
    v8 = cf;
    if (!v7)
    {
      v7 = FigXMLNodeContentSetCFString(cf, a2);
      v8 = cf;
    }

    if (v8)
    {
      CFRelease(v8);
    }
  }

  return v7;
}

uint64_t xmlSetStreamBandwidth(uint64_t a1, const __CFNumber *a2, const __CFString *a3)
{
  v13 = 0;
  v5 = *(a1 + 80);
  FigXMLNodeGetTag(v5);
  v6 = FigCFEqual();
  CFNumberGetValue(a2, kCFNumberSInt64Type, &v13);
  if (v5)
  {
    v7 = v6 == 0;
  }

  else
  {
    v7 = 1;
  }

  if (v7)
  {
    xmlSetStreamBandwidth_cold_1(&cf);
    return cf;
  }

  Child = FigXMLNodeGetChild(v5, a3);
  if (!Child)
  {
    cf = 0;
    goto LABEL_9;
  }

  v9 = CFRetain(Child);
  cf = v9;
  if (!v9)
  {
LABEL_9:
    AllocatorForMedia = FigGetAllocatorForMedia();
    v11 = FigXMLNodeCreateChildNode(AllocatorForMedia, v5, a3, &cf);
    v9 = cf;
    if (v11)
    {
      goto LABEL_11;
    }
  }

  v11 = FigXMLNodeContentSetInt64(v9, v13);
  v9 = cf;
LABEL_11:
  if (v9)
  {
    CFRelease(v9);
  }

  return v11;
}

uint64_t HLSPersistentStreamInfo_CopyMediaPlaylist(uint64_t a1, uint64_t a2, void *a3, CFTypeRef *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v8 = FigCFEqual();
  v9 = FigCFEqual();
  if (!DerivedStorage)
  {
    HLSPersistentStreamInfo_CopyMediaPlaylist_cold_5(&v25);
    return v25;
  }

  v10 = v9;
  v11 = FigReadWriteLockLockForRead();
  if (v11)
  {
    v21 = v11;
    goto LABEL_28;
  }

  if (*(DerivedStorage + 8))
  {
    HLSPersistentStreamInfo_CopyMediaPlaylist_cold_1(&v25);
    goto LABEL_27;
  }

  if (!a2)
  {
    HLSPersistentStreamInfo_CopyMediaPlaylist_cold_3(&v25);
    goto LABEL_27;
  }

  if (!(v8 | v10))
  {
    HLSPersistentStreamInfo_CopyMediaPlaylist_cold_2(&v25);
    goto LABEL_27;
  }

  if (v10)
  {
    v12 = @"PathToLocalCopy";
  }

  else
  {
    v12 = @"PathToOffline";
  }

  v13 = xmlCopyMediaPlaylistPath(DerivedStorage, v12);
  if (!v13)
  {
    HLSPersistentStreamInfo_CopyMediaPlaylist_cold_4(&v25);
LABEL_27:
    v21 = v25;
    goto LABEL_28;
  }

  v14 = v13;
  if (!a4 || (v15 = *(DerivedStorage + 24), cf = 0, v25 = 0, v23 = 0, AllocatorForMedia = FigGetAllocatorForMedia(), (v17 = MEMORY[0x19A8CD910](AllocatorForMedia, v14, 0, 0, v15)) == 0))
  {
    v21 = 0;
    if (!a3)
    {
      goto LABEL_25;
    }

    goto LABEL_23;
  }

  v18 = v17;
  FigGetAllocatorForMedia();
  v19 = CMByteStreamCreateForFileURL();
  if (v19)
  {
    goto LABEL_35;
  }

  v20 = *(*(CMBaseObjectGetVTable() + 16) + 24);
  if (!v20)
  {
    v21 = 4294954514;
    goto LABEL_18;
  }

  v19 = v20(cf, 0, &v23);
  if (v19)
  {
LABEL_35:
    v21 = v19;
  }

  else
  {
    FigGetAllocatorForMedia();
    v21 = CMCreateContiguousBlockBufferFromStream();
    if (v21)
    {
      if (v25)
      {
        CFRelease(v25);
      }
    }

    else
    {
      *a4 = v25;
      v25 = 0;
    }
  }

LABEL_18:
  CFRelease(v18);
  if (cf)
  {
    CFRelease(cf);
  }

  if (!a3)
  {
    goto LABEL_25;
  }

LABEL_23:
  if (!v21)
  {
    *a3 = v14;
LABEL_28:
    FigReadWriteLockUnlockForRead();
    return v21;
  }

LABEL_25:
  FigReadWriteLockUnlockForRead();
  CFRelease(v14);
  return v21;
}

uint64_t HLSPersistentStreamInfo_CopyMediaSegment(uint64_t a1, void *a2, CMBlockBufferRef *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (DerivedStorage)
  {
    v6 = DerivedStorage;
    v7 = FigReadWriteLockLockForRead();
    if (!v7)
    {
      v7 = copyMediaSegment(v6, *(v6 + 48), a2, a3);
    }

    v8 = v7;
    FigReadWriteLockUnlockForRead();
  }

  else
  {
    HLSPersistentStreamInfo_CopyMediaSegment_cold_1(&v10);
    return v10;
  }

  return v8;
}

uint64_t HLSPersistentStreamInfo_CopyMediaInitializationSegment(uint64_t a1, void *a2, CMBlockBufferRef *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (DerivedStorage)
  {
    v6 = DerivedStorage;
    v7 = FigReadWriteLockLockForRead();
    if (!v7)
    {
      v7 = copyMediaSegment(v6, *(v6 + 64), a2, a3);
    }

    v8 = v7;
    FigReadWriteLockUnlockForRead();
  }

  else
  {
    HLSPersistentStreamInfo_CopyMediaInitializationSegment_cold_1(&v10);
    return v10;
  }

  return v8;
}

uint64_t writeMediaSegment(uint64_t a1, OpaqueCMBlockBuffer *a2, const void *a3, uint64_t a4, uint64_t a5, int a6, CFTypeRef *a7, double a8, double a9)
{
  v53 = *MEMORY[0x1E69E9840];
  if (a6)
  {
    AllocatorForMedia = FigGetAllocatorForMedia();
    v19 = CFStringCreateWithFormat(AllocatorForMedia, 0, @"(%g)_(%lld)_(%g).frag", *&a9, a4, *&a8);
    if (v19)
    {
      v20 = FigGetAllocatorForMedia();
      v21 = CFURLCreateCopyAppendingPathComponent(v20, *(a1 + 24), v19, 0);
      if (v21)
      {
        v22 = v21;
        FigGetAllocatorForMedia();
        v23 = CMByteStreamCreateForFileURL();
        if (v23)
        {
          v43 = v23;
          v28 = 0;
          goto LABEL_30;
        }

        v50 = v22;
        DataLength = CMBlockBufferGetDataLength(a2);
        v25 = CMByteStreamWriteBlockBuffer();
        if (v25)
        {
          v43 = v25;
          v28 = 0;
          goto LABEL_29;
        }

        v49 = a7;
        v26 = FigGetAllocatorForMedia();
        if (a6)
        {
          v27 = (a1 + 128);
          v28 = CFStringCreateWithFormat(v26, 0, @"%ld", *(a1 + 128));
          if (v28)
          {
            v29 = CMBlockBufferGetDataLength(a2);
            DictionaryForSegmentEntry = createDictionaryForSegmentEntry(a3, a4, a5, v29, v19);
            if (DictionaryForSegmentEntry)
            {
              v31 = DictionaryForSegmentEntry;
              CFDictionarySetValue(*(a1 + 48), v28, DictionaryForSegmentEntry);
              CFArrayAppendValue(*(a1 + 56), v28);
              v32 = *(a1 + 80);
              MediaSegments = xmlGetMediaSegments(v32);
              if (MediaSegments)
              {
                v34 = CFRetain(MediaSegments);
                cf[0] = v34;
                if (v34)
                {
                  v35 = v34;
                  goto LABEL_21;
                }
              }

              else
              {
                cf[0] = 0;
              }

              v40 = FigGetAllocatorForMedia();
              FigXMLNodeGetTag(v32);
              if (FigCFEqual())
              {
                v41 = v32;
              }

              else
              {
                v41 = 0;
              }

              ChildNode = FigXMLNodeCreateChildNode(v40, v41, @"MediaSegments", cf);
              v35 = cf[0];
              if (ChildNode)
              {
                v43 = ChildNode;
                if (!cf[0])
                {
LABEL_23:
                  if (v43)
                  {
LABEL_28:
                    CFRelease(v31);
LABEL_29:
                    v22 = v50;
LABEL_30:
                    CFRelease(v22);
                    goto LABEL_31;
                  }

                  goto LABEL_24;
                }

LABEL_22:
                CFRelease(v35);
                goto LABEL_23;
              }

LABEL_21:
              v43 = addNodeToMediaSegmentList(v31, v35);
              v35 = cf[0];
              if (!cf[0])
              {
                goto LABEL_23;
              }

              goto LABEL_22;
            }

            writeMediaSegment_cold_1(cf);
          }

          else
          {
            writeMediaSegment_cold_2(cf);
          }
        }

        else
        {
          v27 = (a1 + 136);
          v28 = CFStringCreateWithFormat(v26, 0, @"%ld", *(a1 + 136));
          if (v28)
          {
            v47 = CMBlockBufferGetDataLength(a2);
            DictionaryForInitializationSegmentEntry = createDictionaryForInitializationSegmentEntry(a3, a4, a5, v47, v19);
            if (DictionaryForInitializationSegmentEntry)
            {
              v31 = DictionaryForInitializationSegmentEntry;
              CFDictionarySetValue(*(a1 + 64), v28, DictionaryForInitializationSegmentEntry);
              v45 = xmlSetMediaInitializationSegmentArray(*(a1 + 80), *(a1 + 64));
              if (v45)
              {
LABEL_27:
                v43 = v45;
                goto LABEL_28;
              }

LABEL_24:
              ++*v27;
              if (v49)
              {
                *v49 = CFRetain(v28);
              }

              *(a1 + 72) = 1;
              v44 = *(a1 + 192) + DataLength;
              *(a1 + 192) = v44;
              v45 = xmlSetMediaBytesStored(*(a1 + 80), v44);
              goto LABEL_27;
            }

            writeMediaSegment_cold_3(cf);
          }

          else
          {
            writeMediaSegment_cold_4(cf);
          }
        }

        v43 = LODWORD(cf[0]);
        goto LABEL_29;
      }

      writeMediaSegment_cold_5(cf);
    }

    else
    {
      writeMediaSegment_cold_6(cf);
    }
  }

  else
  {
    cf[0] = 0;
    cf[1] = 0;
    v52 = 0;
    v36 = FigDigestSHA1Create();
    FigGetAllocatorForMedia();
    BytesFromCFString = FigCreateBytesFromCFString();
    if (BytesFromCFString)
    {
      v38 = BytesFromCFString;
      MEMORY[0x19A8D1890](v36, BytesFromCFString, 0);
      FigDigestSHA1GetDigest();
      FigGetAllocatorForMedia();
      FigCreateBase32EncodedStringFromBytes();
      v39 = FigGetAllocatorForMedia();
      CFAllocatorDeallocate(v39, v38);
    }

    MEMORY[0x19A8D18B0](v36);
    writeMediaSegment_cold_7(cf);
    v19 = 0;
  }

  v28 = 0;
  v43 = LODWORD(cf[0]);
LABEL_31:
  if (v19)
  {
    CFRelease(v19);
  }

  if (v28)
  {
    CFRelease(v28);
  }

  return v43;
}

__CFDictionary *createDictionaryForSegmentEntry(const void *a1, uint64_t a2, uint64_t a3, uint64_t a4, const void *a5)
{
  AllocatorForMedia = FigGetAllocatorForMedia();
  Mutable = CFDictionaryCreateMutable(AllocatorForMedia, 6, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v9 = Mutable;
  if (Mutable)
  {
    CFDictionaryAddValue(Mutable, @"URL", a1);
    CFDictionaryAddValue(v9, @"PATH", a5);
    FigCFDictionarySetDouble();
    FigCFDictionarySetDouble();
    FigCFDictionarySetInt64();
    FigCFDictionarySetInt64();
    FigCFDictionarySetValue();
  }

  return v9;
}

__CFDictionary *createDictionaryForInitializationSegmentEntry(const void *a1, uint64_t a2, uint64_t a3, uint64_t a4, const void *a5)
{
  AllocatorForMedia = FigGetAllocatorForMedia();
  Mutable = CFDictionaryCreateMutable(AllocatorForMedia, 4, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v9 = Mutable;
  if (Mutable)
  {
    CFDictionaryAddValue(Mutable, @"URL", a1);
    CFDictionaryAddValue(v9, @"PATH", a5);
    FigCFDictionarySetInt64();
    FigCFDictionarySetInt64();
    FigCFDictionarySetValue();
  }

  return v9;
}

uint64_t xmlSetMediaBytesStored(uint64_t a1, uint64_t a2)
{
  FigXMLNodeGetTag(a1);
  v4 = FigCFEqual();
  if (a1 && v4)
  {
    cf = FigXMLNodeGetChild(a1, @"MediaBytesStored");
    if (cf)
    {
      FigXMLNodeRemoveAndClearChild(a1, &cf);
    }

    AllocatorForMedia = FigGetAllocatorForMedia();
    v6 = FigXMLNodeCreateChildNode(AllocatorForMedia, a1, @"MediaBytesStored", &cf);
    v7 = cf;
    if (!v6)
    {
      v6 = FigXMLNodeContentSetInt64(cf, a2 & ~(a2 >> 63));
      v7 = cf;
    }

    if (v7)
    {
      CFRelease(v7);
    }
  }

  else
  {
    xmlSetMediaBytesStored_cold_1();
    return 0;
  }

  return v6;
}

CFStringRef *xmlGetMediaSegments(uint64_t a1)
{
  FigXMLNodeGetTag(a1);
  v2 = FigCFEqual();
  if (a1 && v2)
  {

    return FigXMLNodeGetChild(a1, @"MediaSegments");
  }

  else
  {
    xmlGetMediaSegments_cold_1();
    return 0;
  }
}

CFStringRef *xmlGetMediaInitializationSegments(uint64_t a1)
{
  FigXMLNodeGetTag(a1);
  v2 = FigCFEqual();
  if (a1 && v2)
  {

    return FigXMLNodeGetChild(a1, @"MediaInitializationSegments");
  }

  else
  {
    xmlGetMediaInitializationSegments_cold_1();
    return 0;
  }
}

uint64_t commitStreamInfo(uint64_t a1)
{
  AllocatorForMedia = FigGetAllocatorForMedia();
  v3 = CFURLCreateCopyAppendingPathComponent(AllocatorForMedia, *(a1 + 24), @"StreamInfoBoot.xml", 0);
  if (!v3)
  {
    commitStreamInfo_cold_1(v11);
    return v11[0];
  }

  v4 = v3;
  if (*(a1 + 72) != 1)
  {
    goto LABEL_5;
  }

  v5 = FigXMLNodeWriteToFilePath(*(a1 + 80), v3);
  if (v5 == -17913)
  {
    fig_log_get_emitter();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v9, v10, v11[1]);
    v6 = v8;
    goto LABEL_6;
  }

  v6 = v5;
  if (!v5)
  {
LABEL_5:
    v6 = 0;
    *(a1 + 72) = 0;
  }

LABEL_6:
  CFRelease(v4);
  return v6;
}

uint64_t OUTLINED_FUNCTION_5_61(uint64_t a1)
{

  return FigReadWriteLockLockForWrite();
}

double FigMediaProcessorCreateForTemporalMetadataFilter(const __CFAllocator *a1, const void *a2, uint64_t a3, uint64_t a4, uint64_t a5, const void *a6, const void *a7, uint64_t a8, uint64_t *a9)
{
  cf = 0;
  v32 = 0;
  v29 = 0;
  v30 = 0;
  if (a2)
  {
    if (a3)
    {
      FigSampleBufferProcessorCreateForTemporalMetadataFilter(a1, a6, &v32);
      if (v18)
      {
        goto LABEL_9;
      }

      result = FigSampleBufferProviderCreateForBufferQueue(a1, a2, &cf);
      if (v19)
      {
        goto LABEL_9;
      }

      v27 = *a4;
      v28 = *(a4 + 16);
      v25 = *a5;
      v26 = *(a5 + 16);
      FigSampleBufferConsumerCreateForBufferQueue(a3, &v27, &v25, &v30);
      if (v20)
      {
        goto LABEL_9;
      }

      if (a7)
      {
        FigActivitySchedulerCreateForCFRunLoop(a1, a7, &v29);
        if (v21)
        {
LABEL_9:
          if (cf)
          {
            CFRelease(cf);
          }

          if (v29)
          {
            CFRelease(v29);
          }

          if (v32)
          {
            CFRelease(v32);
          }

          if (v30)
          {
            CFRelease(v30);
          }

          return result;
        }
      }

      else
      {
        result = FigActivitySchedulerCreateForNewThread(a1, a8, @"com.apple.coremedia.mediaprocessor.temporalmetadatafilter", &v29);
        if (v24)
        {
          goto LABEL_9;
        }
      }

      FigMediaProcessorCreate(a1, v32, cf, v30, v29, a9);
      goto LABEL_9;
    }

    v22 = v9;
    v23 = 78;
  }

  else
  {
    v22 = v9;
    v23 = 76;
  }

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", 0, 4294954516, "(Fig)", v23, v22, a7, a8);
}

uint64_t CreatePesPrivateForDTS(void *a1)
{
  if (a1[6])
  {
    v2 = a1[107];
    if (v2)
    {
      v2(a1);
    }

    a1[6] = 0;
  }

  v3 = malloc_type_calloc(1uLL, 0x40uLL, 0x1000040CE3128F8uLL);
  if (!v3)
  {
    return 12;
  }

  v4 = v3;
  result = 0;
  a1[105] = PesDTSProcessData;
  a1[106] = PesDTSCleanPrivateData;
  a1[107] = PesDTSDeletePrivateData;
  a1[6] = v4;
  return result;
}

uint64_t PesDTSProcessData(uint64_t a1, CMBlockBufferRef theSourceBuffer, size_t offsetToData, char *__src, size_t length, uint64_t a6)
{
  returnedPointerOut[2] = *MEMORY[0x1E69E9840];
  v30 = 0;
  v29 = 0;
  v28 = 0;
  v11 = *(a1 + 48);
  v12 = *(v11 + 48);
  if (v12)
  {
    v27 = a6;
    v13 = (v11 + 33);
    do
    {
      if (length >= 12 - v12)
      {
        v14 = 12 - v12;
      }

      else
      {
        v14 = length;
      }

      if (__src)
      {
        memcpy(v13 + v12, __src, v14);
        __src += v14;
      }

      else
      {
        v15 = CMBlockBufferCopyDataBytes(theSourceBuffer, offsetToData, v14, v13 + v12);
        if (v15)
        {
          goto LABEL_64;
        }

        __src = 0;
        offsetToData += v14;
      }

      v16 = *(v11 + 48) + v14;
      *(v11 + 48) = v16;
      if (v16 < 0xC)
      {
        return 0;
      }

      length -= v14;
      if (*v13 == 25230975)
      {
        break;
      }

      v12 = v16 - 1;
      *(v11 + 48) = v16 - 1;
      v17 = *(v11 + 34);
      v18 = *(v11 + 42);
      *(v11 + 43) = *(v11 + 44);
      *(v11 + 41) = v18;
      *v13 = v17;
    }

    while (v16 == 12);
    *(v11 + 48) = 0;
    SetUpFrame(a1, v11, v11 + 33);
    v15 = PesAddMemoryToFrameMemory(a1, (v11 + 33), 0xCuLL, *(a1 + 624), &v30, &v29);
    a6 = v27;
    if (v15)
    {
      goto LABEL_64;
    }
  }

  if (*(a6 + 24))
  {
    v19 = *(a6 + 16);
    *v11 = *a6;
    *(v11 + 16) = v19;
  }

  v20 = *(v11 + 32);
  if (length > 0xB || *(v11 + 32))
  {
    while (1)
    {
      if (!v20)
      {
        if (__src && *__src == 25230975)
        {
          goto LABEL_26;
        }

        if (!theSourceBuffer || (returnedPointerOut[0] = 0, CMBlockBufferAccessDataBytes(theSourceBuffer, offsetToData, 4uLL, temporaryBlock, returnedPointerOut)) || *returnedPointerOut[0] != 25230975)
        {
          if (*(v11 + 56))
          {
            *(v11 + 56) = 0;
          }

          v22 = __src == 0;
          if (__src)
          {
            ++__src;
          }

          else
          {
            __src = 0;
          }

          if (v22)
          {
            ++offsetToData;
          }

          --length;
          goto LABEL_49;
        }

        if (!*(v11 + 32))
        {
          break;
        }
      }

      if (!__src)
      {
        goto LABEL_22;
      }

LABEL_27:
      v15 = PesAddMemoryToFrameMemory(a1, __src, length, *(a1 + 624), &v30, &v29);
      if (v15)
      {
        goto LABEL_64;
      }

      v21 = v30;
      __src += v30;
LABEL_29:
      length -= v21;
      if (v29)
      {
        ++*(v11 + 60);
        *(v11 + 32) = 0;
        if (*(a1 + 658) || *(a1 + 505))
        {
          v15 = FigMPEG2AudioFrameQueueEntryAdjustTimestampsAndEmit(a1, a1 + 456);
          if (v15)
          {
            goto LABEL_64;
          }
        }

        PesCleanAfterFrameEmit(a1);
      }

LABEL_49:
      if (length <= 0xB)
      {
        goto LABEL_50;
      }

      v20 = *(v11 + 32);
    }

    if (!__src)
    {
      v15 = CMBlockBufferAccessDataBytes(theSourceBuffer, offsetToData, 0xCuLL, (v11 + 33), &v28);
      if (v15)
      {
        goto LABEL_64;
      }

      SetUpFrame(a1, v11, v28);
LABEL_22:
      PesAddBlockBufferToFrameBlockBuffer(a1, theSourceBuffer, offsetToData, length, *(a1 + 624), &v30, &v29);
      if (v15)
      {
        goto LABEL_64;
      }

      __src = 0;
      v21 = v30;
      offsetToData += v30;
      goto LABEL_29;
    }

LABEL_26:
    SetUpFrame(a1, v11, __src);
    goto LABEL_27;
  }

LABEL_50:
  if (!length)
  {
    return 0;
  }

  if (__src)
  {
    v28 = __src;
    goto LABEL_55;
  }

  v15 = CMBlockBufferAccessDataBytes(theSourceBuffer, offsetToData, length, returnedPointerOut, &v28);
  if (v15)
  {
LABEL_64:
    v25 = v15;
    PesErrorHandling(a1, v15);
    return v25;
  }

  __src = v28;
LABEL_55:
  v23 = 0;
  while (__src[v23] != 127)
  {
    v28 = &__src[++v23];
    if (length == v23)
    {
      return 0;
    }
  }

  *(v11 + 33) = 127;
  v24 = length - v23;
  if (length - 1 != v23)
  {
    memcpy((v11 + 34), &__src[v23 + 1], ~v23 + length);
  }

  *(v11 + 48) = v24;
  return 0;
}

uint64_t PesDTSCleanPrivateData(uint64_t result)
{
  v1 = *(result + 48);
  *(v1 + 32) = 0;
  *(v1 + 48) = 0;
  *(v1 + 24) = 0;
  *(v1 + 56) = 0;
  *(v1 + 60) = 0;
  return result;
}

__n128 SetUpFrame(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 624) = (bswap32(*(a3 + 4)) >> 4) & 0x3FFF;
  *(a1 + 584) = ((bswap32(*(a3 + 4)) >> 13) & 0xFE0) + 32;
  v5 = DTSAudioSampleFrequencies[(*(a3 + 8) >> 2) & 0xF];
  if (*(a1 + 768) != v5)
  {
    FigMPEG2ParserSetAudioCharacteristics(a1, v5);
  }

  *(a2 + 32) = 1;
  *(a2 + 56) = 1;
  result = *a2;
  v7 = *(a2 + 16);
  *(a1 + 480) = *a2;
  *(a1 + 496) = v7;
  *(a2 + 24) = 0;
  return result;
}

uint64_t FigPlayerAirPlayCreateWithOptions(const __CFAllocator *a1, const void *a2, const __CFDictionary *a3, CFTypeRef *a4)
{
  if (_os_feature_enabled_impl())
  {

    return FigPlayerAirPlayCreateCoordinatedWithOptions(a1, a2, a3, a4);
  }

  else
  {

    return FigPlayerAirPlayCreateNonCoordinatedWithOptions(a1, a2, a3, a4);
  }
}

uint64_t FigPlayerAirPlayCreate(const __CFAllocator *a1, const void *a2, uint64_t a3, CFTypeRef *a4)
{
  if (_os_feature_enabled_impl())
  {

    return FigPlayerAirPlayCreateCoordinatedWithOptions(a1, a2, 0, a4);
  }

  else
  {

    return FigPlayerAirPlayCreateNonCoordinatedWithOptions(a1, a2, 0, a4);
  }
}

uint64_t __FigPlayerAirPlayCreateCoordinatedWithOptions_block_invoke(uint64_t a1)
{
  FigNote_AllowInternalDefaultLogs();
  fig_note_initialize_category_with_default_work_cf();

  return fig_note_initialize_category_with_default_work_cf();
}

uint64_t __FigPlayerAirPlayCreateCoordinatedWithOptions_block_invoke_2()
{
  gIsiOSDeviceWithMedusaSupport = MGGetBoolAnswer();
  result = notify_register_check("com.apple.springboard.lockstate", &gFigPlayerAirPlayDeviceLockedStateNotifyToken);
  if (!result)
  {
    gFigPlayerAirPlayDeviceLockedStateNotifyTokenIsValid = 1;
  }

  return result;
}

void papc_handleRouteNotification(const void *a1, const void *a2, const void *a3, uint64_t a4, const void *a5)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v10 = FigReadWriteLockLockForRead();
  if (*(DerivedStorage + 24))
  {
    papc_handleRouteNotification_cold_1(v10, v11, v12, v13, v14, v15, v16, v17, v20, v21, SHIDWORD(v21), v22);
  }

  else
  {
    if (FigCFEqual())
    {
      if (a2)
      {
        CFRetain(a2);
      }

      if (a3)
      {
        CFRetain(a3);
      }

      if (a5)
      {
        CFRetain(a5);
      }

      if (a1)
      {
        CFRetain(a1);
      }

      v18 = *(DerivedStorage + 56);
      v32[0] = MEMORY[0x1E69E9820];
      v32[1] = 3221225472;
      v32[2] = __papc_handleRouteNotification_block_invoke;
      v32[3] = &__block_descriptor_72_e5_v8__0l;
      v32[4] = DerivedStorage;
      v32[5] = a2;
      v32[6] = a5;
      v32[7] = a1;
      v32[8] = a3;
      v19 = v32;
      goto LABEL_22;
    }

    if (FigCFEqual())
    {
      if (a2)
      {
        CFRetain(a2);
      }

      if (a3)
      {
        CFRetain(a3);
      }

      if (a5)
      {
        CFRetain(a5);
      }

      if (a1)
      {
        CFRetain(a1);
      }

      v18 = *(DerivedStorage + 56);
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __papc_handleRouteNotification_block_invoke_43;
      block[3] = &__block_descriptor_72_e5_v8__0l;
      block[4] = DerivedStorage;
      block[5] = a2;
      block[6] = a1;
      block[7] = a3;
      block[8] = a5;
      v19 = block;
      goto LABEL_22;
    }

    if (!FigCFEqual())
    {
      if (FigCFEqual())
      {
        v30 = 0;
        if (!FigCFDictionaryGetBooleanIfPresent())
        {
          goto LABEL_23;
        }

        if (a2)
        {
          CFRetain(a2);
        }

        if (a3)
        {
          CFRetain(a3);
        }

        if (a5)
        {
          CFRetain(a5);
        }

        if (a1)
        {
          CFRetain(a1);
        }

        v18 = *(DerivedStorage + 56);
        v20 = MEMORY[0x1E69E9820];
        v21 = 3221225472;
        v22 = __papc_handleRouteNotification_block_invoke_2;
        v23 = &__block_descriptor_73_e5_v8__0l;
        v29 = v30;
        v24 = DerivedStorage;
        v25 = a5;
        v26 = a2;
        v27 = a1;
        v28 = a3;
        v19 = &v20;
LABEL_22:
        dispatch_async(v18, v19);
LABEL_23:
        FigReadWriteLockUnlockForRead();
        return;
      }

      FigCFEqual();
    }
  }

  FigReadWriteLockUnlockForRead();

  papc_postNotificationAsync(a2, a1, a3, a2, a5);
}

uint64_t papc_reflectSubPlayerNotification(const void *a1, const void *a2, const void *a3, uint64_t a4, const void *a5)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v10 = FigReadWriteLockLockForRead();
  if (*(DerivedStorage + 24))
  {
    papc_reflectSubPlayerNotification_cold_1(v10, v11, v12, v13, v14, v15, v16, v17, v19, v20, SHIDWORD(v20), v21);
  }

  else
  {
    papc_postNotificationAsync(a2, a1, a3, a2, a5);
  }

  return FigReadWriteLockUnlockForRead();
}

uint64_t papc_CopyProperty(uint64_t a1, const void *a2, uint64_t a3, void *a4)
{
  v38 = 0;
  v39 = &v38;
  v40 = 0x2020000000;
  v41 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v34 = 0;
  v35 = &v34;
  v36 = 0x2020000000;
  v37 = 1;
  FigReadWriteLockLockForRead();
  if (*(DerivedStorage + 24))
  {
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v23, v24, v25);
    goto LABEL_22;
  }

  if (!CFEqual(a2, @"IsValid"))
  {
    if (CFEqual(a2, @"PickerContextUUID"))
    {
      FigBytePumpGetFigBaseObject();
      v11 = v10;
      v12 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      if (v12)
      {
        v13 = v12(v11, 0x1F0B25938, a3, a4);
      }

      else
      {
        v13 = -12782;
      }

      *(v39 + 6) = v13;
      goto LABEL_12;
    }

    if (CFEqual(a2, @"ExternalPlaybackCapabilities"))
    {
      v14 = *(DerivedStorage + 56);
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __papc_CopyProperty_block_invoke;
      block[3] = &__block_descriptor_48_e5_v8__0l;
      block[4] = a4;
      block[5] = DerivedStorage;
      dispatch_sync(v14, block);
      goto LABEL_12;
    }

    if (CFEqual(a2, @"ParticipatingInCoordinatedPlayback"))
    {
      v17 = MEMORY[0x1E695E4D0];
      if (!*(DerivedStorage + 83))
      {
        v17 = MEMORY[0x1E695E4C0];
      }

      v9 = CFRetain(*v17);
      goto LABEL_4;
    }

    v18 = *(DerivedStorage + 56);
    v23 = MEMORY[0x1E69E9820];
    v24 = 3221225472;
    v25 = __papc_CopyProperty_block_invoke_2;
    v26 = &unk_1E748B3B0;
    v29 = DerivedStorage;
    v30 = a2;
    v31 = a4;
    v32 = a1;
    v27 = &v34;
    v28 = &v38;
    dispatch_sync(v18, &v23);
    if (!*(v35 + 24))
    {
      goto LABEL_13;
    }

    FigPlayerGetFigBaseObject();
    v20 = v19;
    v21 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v21)
    {
      v22 = v21(v20, a2, a3, a4);
    }

    else
    {
      v22 = -12782;
    }

LABEL_22:
    *(v39 + 6) = v22;
    goto LABEL_13;
  }

  v9 = CFRetain(*MEMORY[0x1E695E4D0]);
LABEL_4:
  *a4 = v9;
LABEL_12:
  *(v35 + 24) = 0;
LABEL_13:
  FigReadWriteLockUnlockForRead();
  v15 = *(v39 + 6);
  _Block_object_dispose(&v34, 8);
  _Block_object_dispose(&v38, 8);
  return v15;
}

uint64_t papc_SetProperty(uint64_t a1, uint64_t a2, uint64_t a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigReadWriteLockLockForRead();
  if (*(DerivedStorage + 24))
  {
    papc_SetProperty_cold_1(&v8);
    v6 = v8;
  }

  else
  {
    v6 = FPSupport_HandlePlayerSetPropertyAndForwardToSubPlayer(a1, *(DerivedStorage + 32), a2);
  }

  FigReadWriteLockUnlockForRead();
  return v6;
}

uint64_t iapc_Invalidate(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  if (*(DerivedStorage + 16))
  {
    iapc_Invalidate_cold_1(DerivedStorage);
    return 0;
  }

  else
  {
    v2 = *(DerivedStorage + 24);
    if (v2)
    {
      v3 = CFRetain(v2);
    }

    else
    {
      v3 = 0;
    }

    v4 = FigCFWeakReferenceHolderCopyReferencedObject();
    *(DerivedStorage + 16) = 1;
    FigSimpleMutexUnlock();
    FigReadWriteLockLockForWrite();
    FigReadWriteLockUnlockForWrite();
    if (v4)
    {
      v5 = *(DerivedStorage + 48);
      v6 = CMBaseObjectGetDerivedStorage();
      FigSimpleMutexLock();
      CFDictionaryRemoveValue(*(v6 + 8), v5);
      FigSimpleMutexUnlock();
    }

    CMNotificationCenterGetDefaultLocalCenter();
    FigNotificationCenterRemoveWeakListener();
    if (v3)
    {
      FigPlaybackItemGetFigBaseObject();
      if (v7)
      {
        v8 = v7;
        v9 = *(*(CMBaseObjectGetVTable() + 8) + 24);
        if (v9)
        {
          v10 = v9(v8);
        }

        else
        {
          v10 = 4294954514;
        }
      }

      else
      {
        v10 = 4294954516;
      }
    }

    else
    {
      v10 = 0;
    }

    if (*(DerivedStorage + 40))
    {
      CMNotificationCenterGetDefaultLocalCenter();
      FigNotificationCenterRemoveWeakListener();
      CMNotificationCenterGetDefaultLocalCenter();
      FigNotificationCenterRemoveWeakListener();
      CMNotificationCenterGetDefaultLocalCenter();
      FigNotificationCenterRemoveWeakListener();
      FigBytePumpGetFigBaseObject();
      if (v11)
      {
        v12 = v11;
        v13 = *(*(CMBaseObjectGetVTable() + 8) + 24);
        if (v13)
        {
          v13(v12);
        }
      }
    }

    if (v3)
    {
      CFRelease(v3);
    }

    if (v4)
    {
      CFRelease(v4);
    }
  }

  return v10;
}

uint64_t FigAirPlayRouteSetProperty(uint64_t a1, uint64_t a2, uint64_t a3)
{
  FigBytePumpGetFigBaseObject();
  v6 = v5;
  v7 = *(*(CMBaseObjectGetVTable() + 8) + 56);
  if (!v7)
  {
    return 4294954514;
  }

  return v7(v6, a2, a3);
}

uint64_t iapc_reflectSubItemNotification(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  if (*(DerivedStorage + 16))
  {
    return iapc_reflectSubItemNotification_cold_1(DerivedStorage);
  }

  FigSimpleMutexUnlock();
  CMNotificationCenterGetDefaultLocalCenter();

  return CMNotificationCenterPostNotification();
}

void __iapc_sendUnhandledURLResponse_block_invoke(void *a1)
{
  cf[19] = *MEMORY[0x1E69E9840];
  cf[16] = @"RemoteRequestID";
  cf[17] = @"IsContentKeyRequest";
  cf[18] = @"IsCustomURLRequest";
  FigCFDictionaryGetValue();
  FigCFEqual();
  CopyRemovingKeys = FigCFDictionaryCreateCopyRemovingKeys();
  FigCFDictionaryGetValue();
  FigCFNumberGetUInt64();
  FigReadWriteLockLockForRead();
  if (!*(a1[5] + 16))
  {
    cf[0] = 0;
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    if (*(DerivedStorage + 24) || !*(DerivedStorage + 104))
    {
      goto LABEL_26;
    }

    CMBaseObject = FigEndpointPlaybackSessionGetCMBaseObject();
    v8 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v8)
    {
      v8(CMBaseObject, *MEMORY[0x1E6961E20], *MEMORY[0x1E695E480], cf);
    }

    v9 = FigCFEqual();
    if (cf[0])
    {
      CFRelease(cf[0]);
    }

    if (!v9)
    {
LABEL_26:
      if (CFDictionaryContainsKey(CopyRemovingKeys, *MEMORY[0x1E6960D00]))
      {
        ErrorPayload = iapc_createErrorPayload(-17224, 1);
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
        v12 = a1[6];
        DefaultLocalCenter = CMNotificationCenterGetDefaultLocalCenter();
        papc_postNotificationAsync(v12, DefaultLocalCenter, @"FailedToPlayToEnd", a1[7], ErrorPayload);
        if (ErrorPayload)
        {
          CFRelease(ErrorPayload);
        }
      }
    }

    if (dword_1EAF17268)
    {
      v14 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    papc_playbackSessionPerformRemoteAction(a1[6]);
  }

  FigReadWriteLockUnlockForRead();
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

  if (CopyRemovingKeys)
  {
    CFRelease(CopyRemovingKeys);
  }

  v5 = a1[4];
  if (v5)
  {
    CFRelease(v5);
  }
}

CFNumberRef iapc_createErrorPayload(int a1, uint64_t a2)
{
  v2 = a2;
  valuePtr = a1;
  v3 = *MEMORY[0x1E695E480];
  result = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt32Type, &valuePtr);
  if (result)
  {
    iapc_createErrorPayload_cold_1(v3, result, v2, &v6);
    return v6;
  }

  return result;
}

void papc_postNotificationAsync(const void *a1, const void *a2, const void *a3, const void *a4, const void *a5)
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

  if (a4)
  {
    CFRetain(a4);
  }

  if (a5)
  {
    CFRetain(a5);
  }

  v11 = *(DerivedStorage + 48);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __papc_postNotificationAsync_block_invoke;
  block[3] = &__block_descriptor_84_e5_v8__0l;
  block[4] = DerivedStorage;
  block[5] = a2;
  block[6] = a3;
  block[7] = a4;
  v13 = 0;
  block[8] = a5;
  block[9] = a1;
  dispatch_async(v11, block);
}

void __papc_postNotificationAsync_block_invoke(void *a1)
{
  v2 = FigReadWriteLockLockForRead();
  if (*(a1[4] + 24))
  {
    __papc_postNotificationAsync_block_invoke_cold_1(v2, v3, v4, v5, v6, v7, v8, v9, v15, v16, SHIDWORD(v16), vars0);
  }

  else
  {
    CMNotificationCenterPostNotification();
  }

  FigReadWriteLockUnlockForRead();
  v10 = a1[9];
  if (v10)
  {
    CFRelease(v10);
  }

  v11 = a1[8];
  if (v11)
  {
    CFRelease(v11);
  }

  v12 = a1[7];
  if (v12)
  {
    CFRelease(v12);
  }

  v13 = a1[6];
  if (v13)
  {
    CFRelease(v13);
  }

  v14 = a1[5];
  if (v14)
  {

    CFRelease(v14);
  }
}

void __papc_playbackSessionRequestForStreamingKeyCompletion_block_invoke(uint64_t a1)
{
  valuePtr = 0;
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v3 = *(a1 + 64);
  if (v3)
  {
    goto LABEL_2;
  }

  v8 = *(a1 + 32);
  if (!v8)
  {
    v3 = -12860;
LABEL_2:
    valuePtr = v3;
    goto LABEL_3;
  }

  Value = CFDictionaryGetValue(v8, *MEMORY[0x1E6961BD0]);
  if (!Value || (v10 = CFDictionaryGetValue(Value, *MEMORY[0x1E6961A70])) == 0 || (CFNumberGetValue(v10, kCFNumberIntType, &valuePtr), !valuePtr))
  {
    FigCFDictionaryGetValue();
    FigCFDictionarySetValue();
  }

LABEL_3:
  FigCFDictionarySetInt64();
  FigCFDictionarySetBoolean();
  FigCFDictionarySetInt32();
  v4 = *(*(a1 + 48) + 40);
  if (v4)
  {
    FigAirPlayURLProcessorUtilHandleStreamingKeyResponse(v4, Mutable);
  }

  v5 = *(a1 + 40);
  if (*v5)
  {
    CFRelease(*v5);
    v5 = *(a1 + 40);
  }

  v6 = *(v5 + 8);
  if (v6)
  {
    CFRelease(v6);
  }

  CFRelease(*(a1 + 56));
  v7 = *(a1 + 32);
  if (v7)
  {
    CFRelease(v7);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }
}

void __iapc_handleURLProcessorFailed_block_invoke(uint64_t a1)
{
  FigCFDictionaryGetInt32IfPresent();
  FigCFDictionaryGetBooleanIfPresent();
  ErrorPayload = iapc_createErrorPayload(0, 0);
  v3 = *(a1 + 40);
  DefaultLocalCenter = CMNotificationCenterGetDefaultLocalCenter();
  papc_postNotificationAsync(v3, DefaultLocalCenter, @"FailedToPlayToEnd", *(a1 + 48), ErrorPayload);
  if (ErrorPayload)
  {
    CFRelease(ErrorPayload);
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    CFRelease(v5);
  }

  v6 = *(a1 + 48);
  if (v6)
  {
    CFRelease(v6);
  }
}

BOOL papc_getIsAirPlayVideoActive(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 72) != 1)
  {
    return 0;
  }

  if (*(DerivedStorage + 128))
  {
    return 1;
  }

  return *(DerivedStorage + 129) != 0;
}

uint64_t papc_handleSetProperty(const void *a1, uint64_t a2, const void *a3, const void *a4, char *a5, void *a6, void *a7)
{
  v60 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigReadWriteLockLockForRead();
  if (*(DerivedStorage + 24))
  {
    papc_handleSetProperty_cold_1(v59);
    goto LABEL_68;
  }

  if (FigCFEqual())
  {
    if (a4)
    {
      v14 = CFGetTypeID(a4);
      if (v14 == CFBooleanGetTypeID())
      {
        Value = CFBooleanGetValue(a4);
        if (dword_1EAF17268)
        {
          v42 = a5;
          v58 = 0;
          type = OS_LOG_TYPE_DEFAULT;
          os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
          fig_log_call_emit_and_clean_up_after_send_and_compose();
          a5 = v42;
        }

        if (a1)
        {
          CFRetain(a1);
        }

        v24 = *(DerivedStorage + 56);
        v55[0] = MEMORY[0x1E69E9820];
        v55[1] = 3221225472;
        v55[2] = __papc_handleSetProperty_block_invoke;
        v55[3] = &__block_descriptor_49_e5_v8__0l;
        v56 = Value;
        v55[4] = DerivedStorage;
        v55[5] = a1;
        v25 = v55;
LABEL_38:
        dispatch_async(v24, v25);
        goto LABEL_39;
      }
    }

    papc_handleSetProperty_cold_2(v59);
    goto LABEL_68;
  }

  if (FigCFEqual())
  {
    if (a4)
    {
      v17 = CFGetTypeID(a4);
      if (v17 == CFBooleanGetTypeID())
      {
        v18 = CFBooleanGetValue(a4);
        if (dword_1EAF17268)
        {
          v43 = a5;
          v58 = 0;
          type = OS_LOG_TYPE_DEFAULT;
          v19 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT);
          fig_log_call_emit_and_clean_up_after_send_and_compose();
          a5 = v43;
        }

        if (a1)
        {
          CFRetain(a1);
        }

        v24 = *(DerivedStorage + 56);
        v53[0] = MEMORY[0x1E69E9820];
        v53[1] = 3221225472;
        v53[2] = __papc_handleSetProperty_block_invoke_31;
        v53[3] = &__block_descriptor_49_e5_v8__0l;
        v54 = v18;
        v53[4] = DerivedStorage;
        v53[5] = a1;
        v25 = v53;
        goto LABEL_38;
      }
    }

    papc_handleSetProperty_cold_3(v59);
LABEL_68:
    v30 = v59[0];
    FigReadWriteLockUnlockForRead();
    return v30;
  }

  if (FigCFEqual())
  {
    if (a4)
    {
      v20 = CFGetTypeID(a4);
      if (v20 == CFBooleanGetTypeID())
      {
        v21 = CFBooleanGetValue(a4);
        v22 = v21;
        if (dword_1EAF17268)
        {
          v41 = v21;
          v44 = a5;
          v58 = 0;
          type = OS_LOG_TYPE_DEFAULT;
          v23 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT);
          fig_log_call_emit_and_clean_up_after_send_and_compose();
          a5 = v44;
          v22 = v41;
        }

        if (a1)
        {
          CFRetain(a1);
        }

        v24 = *(DerivedStorage + 56);
        block[0] = MEMORY[0x1E69E9820];
        block[1] = 3221225472;
        block[2] = __papc_handleSetProperty_block_invoke_34;
        block[3] = &__block_descriptor_49_e5_v8__0l;
        v52 = v22;
        block[4] = DerivedStorage;
        block[5] = a1;
        v25 = block;
        goto LABEL_38;
      }
    }

    papc_handleSetProperty_cold_4(v59);
    goto LABEL_68;
  }

  if (CFEqual(a3, @"ClientInBackground"))
  {
    if (a4)
    {
      v26 = CFGetTypeID(a4);
      if (v26 == CFBooleanGetTypeID())
      {
        v27 = CFBooleanGetValue(a4);
        if (a1)
        {
          CFRetain(a1);
        }

        v24 = *(DerivedStorage + 56);
        v49[0] = MEMORY[0x1E69E9820];
        v49[1] = 3221225472;
        v49[2] = __papc_handleSetProperty_block_invoke_2;
        v49[3] = &__block_descriptor_49_e5_v8__0l;
        v50 = v27;
        v49[4] = DerivedStorage;
        v49[5] = a1;
        v25 = v49;
        goto LABEL_38;
      }
    }

    papc_handleSetProperty_cold_5(v59);
    goto LABEL_68;
  }

  if (FigCFEqual())
  {
    v28 = *(DerivedStorage + 40);
    if (v28)
    {
      if (!a4)
      {
LABEL_34:
        v30 = FigAirPlayRouteSetProperty(v28, 0x1F0B25938, a4);
        v31 = 0;
        goto LABEL_40;
      }

      v29 = CFGetTypeID(a4);
      if (v29 == CFStringGetTypeID())
      {
        v28 = *(DerivedStorage + 40);
        goto LABEL_34;
      }
    }

LABEL_39:
    v31 = 0;
    v30 = 0;
    goto LABEL_40;
  }

  if (FigCFEqual())
  {
    v35 = *(DerivedStorage + 40);
    if (v35)
    {
      FigAirPlayRouteSetProperty(v35, 0x1F0B22118, a4);
    }

    goto LABEL_39;
  }

  if (!FigCFEqual())
  {
    if (!FigCFEqual())
    {
      goto LABEL_39;
    }

    v40 = CFBooleanGetValue(a4);
    if (a1)
    {
      CFRetain(a1);
    }

    v38 = *(DerivedStorage + 56);
    v45[0] = MEMORY[0x1E69E9820];
    v45[1] = 3221225472;
    v45[2] = __papc_handleSetProperty_block_invoke_4;
    v45[3] = &__block_descriptor_49_e5_v8__0l;
    v45[4] = DerivedStorage;
    v45[5] = a1;
    v46 = v40;
    v39 = v45;
    goto LABEL_61;
  }

  v36 = CFBooleanGetValue(a4);
  if (v36 != *(DerivedStorage + 83))
  {
    v37 = v36;
    *(DerivedStorage + 83) = v36;
    if (a1)
    {
      CFRetain(a1);
    }

    v38 = *(DerivedStorage + 56);
    v47[0] = MEMORY[0x1E69E9820];
    v47[1] = 3221225472;
    v47[2] = __papc_handleSetProperty_block_invoke_3;
    v47[3] = &__block_descriptor_49_e5_v8__0l;
    v48 = v37;
    v47[4] = DerivedStorage;
    v47[5] = a1;
    v39 = v47;
LABEL_61:
    dispatch_async(v38, v39);
  }

  v30 = 0;
  v31 = 1;
LABEL_40:
  FigReadWriteLockUnlockForRead();
  *a5 = v31;
  if ((v31 & 1) == 0)
  {
    if (a3)
    {
      v32 = CFRetain(a3);
    }

    else
    {
      v32 = 0;
    }

    *a6 = v32;
    if (a4)
    {
      v33 = CFRetain(a4);
    }

    else
    {
      v33 = 0;
    }

    *a7 = v33;
  }

  return v30;
}

void __papc_handleSetProperty_block_invoke(uint64_t a1)
{
  v2 = FigReadWriteLockLockForRead();
  v10 = *(a1 + 32);
  if (*(v10 + 24))
  {
    __papc_handleSetProperty_block_invoke_cold_1(v2, v3, v4, v5, v6, v7, v8, v9, v13, v14, SHIDWORD(v14), vars0);
  }

  else
  {
    v11 = *(a1 + 48);
    if (v11 != *(v10 + 76))
    {
      *(v10 + 76) = v11;
      papc_checkStartStopAirPlay(*(a1 + 40), NAN);
    }
  }

  FigReadWriteLockUnlockForRead();
  v12 = *(a1 + 40);
  if (v12)
  {

    CFRelease(v12);
  }
}

void papc_checkStartStopAirPlay(const void *a1, float a2)
{
  BOOLean[16] = *MEMORY[0x1E69E9840];
  CMBaseObjectGetDerivedStorage();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  BOOLean[0] = 0;
  v5 = MEMORY[0x1E695E480];
  if (*(DerivedStorage + 72) != 1)
  {
    goto LABEL_20;
  }

  v6 = DerivedStorage;
  if (papc_isCoordinatedAPVCapableRouteSelected(a1))
  {
    FigBytePumpGetFigBaseObject();
    v8 = v7;
    v9 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v9 && (v9(v8, 0x1F0B34E58, *v5, BOOLean), BOOLean[0]) && CFBooleanGetValue(BOOLean[0]))
    {
      v10 = CMBaseObjectGetDerivedStorage();
      if (*(v10 + 76) && *(v10 + 77) && v6[79] && (!v6[82] || !papc_isDeviceUnlocked()))
      {
LABEL_15:
        v12 = papc_isPlayQueueEmpty(a1) == 0;
        goto LABEL_17;
      }
    }

    else
    {
      v11 = CMBaseObjectGetDerivedStorage();
      if (*(v11 + 76) && *(v11 + 77) && v6[81])
      {
        goto LABEL_15;
      }
    }

    v12 = 0;
LABEL_17:
    if (BOOLean[0])
    {
      CFRelease(BOOLean[0]);
    }

    if (v12)
    {
      goto LABEL_20;
    }
  }

  papc_switchFromAirPlayVideoToLocal(a1);
LABEL_20:
  v13 = CMBaseObjectGetDerivedStorage();
  BOOLean[0] = 0;
  if (*(v13 + 72))
  {
    return;
  }

  v14 = v13;
  if (!papc_isCoordinatedAPVCapableRouteSelected(a1) || !v14[78] || papc_isPlayQueueEmpty(a1) || a2 == 0.0)
  {
    goto LABEL_44;
  }

  FigBytePumpGetFigBaseObject();
  v16 = v15;
  v17 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v17 || (v17(v16, 0x1F0B34E58, *v5, BOOLean), !BOOLean[0]) || !CFBooleanGetValue(BOOLean[0]))
  {
    v22 = CMBaseObjectGetDerivedStorage();
    if (*(v22 + 76) && *(v22 + 77))
    {
      v19 = v14[81] != 0;
      goto LABEL_45;
    }

    goto LABEL_44;
  }

  v18 = CMBaseObjectGetDerivedStorage();
  if (!*(v18 + 76) || !*(v18 + 77))
  {
LABEL_44:
    v19 = 0;
    goto LABEL_45;
  }

  v19 = 0;
  if (gIsiOSDeviceWithMedusaSupport)
  {
    v20 = v14[80] == 0;
  }

  else
  {
    v20 = 0;
  }

  v21 = !v20;
  if (v14[79] && v21)
  {
    if (v14[81])
    {
      if (v14[82])
      {
        v19 = !papc_isDeviceUnlocked();
      }

      else
      {
        v19 = 1;
      }

      goto LABEL_45;
    }

    goto LABEL_44;
  }

LABEL_45:
  if (BOOLean[0])
  {
    CFRelease(BOOLean[0]);
  }

  if (v19)
  {
    v23 = CMBaseObjectGetDerivedStorage();
    v24 = CMBaseObjectGetDerivedStorage();
    if (*(v24 + 76) && *(v24 + 77))
    {
      if (dword_1EAF17268)
      {
        LODWORD(cf) = 0;
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      v27 = CMBaseObjectGetDerivedStorage();
      if (*(v27 + 72) == 1)
      {
        if (*(v27 + 128))
        {
          v28 = 1;
        }

        else
        {
          v28 = *(v27 + 129) != 0;
        }
      }

      else
      {
        v28 = 0;
      }

      cf = 0;
      v29 = CMBaseObjectGetDerivedStorage();
      v30 = (v29 + 104);
      if (!*(v29 + 104))
      {
        v31 = *(v29 + 88);
        v32 = *(*(CMBaseObjectGetVTable() + 16) + 72);
        if (v32 && !v32(v31, &cf))
        {
          if (dword_1EAF17268)
          {
            v33 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT);
            fig_log_call_emit_and_clean_up_after_send_and_compose();
          }

          v34 = FigCFWeakReferenceHolderCreateWithReferencedObject();
          if (v34)
          {
            papc_checkStartStopAirPlay_cold_1(&cf, v30, v34);
          }
        }

        if (cf)
        {
          CFRelease(cf);
        }
      }

      *(v23 + 72) = 1;
      FigPlayerGetFigBaseObject();
      v36 = v35;
      v37 = *(*(CMBaseObjectGetVTable() + 8) + 56);
      if (v37)
      {
        v37(v36, @"ParticipatingInCoordinatedPlayback", *MEMORY[0x1E695E4C0]);
      }

      v38 = CMBaseObjectGetDerivedStorage();
      BOOLean[0] = 0;
      *v59 = 0;
      if (*(v38 + 72) != 1)
      {
        goto LABEL_98;
      }

      v39 = v38;
      if (!*(v38 + 104))
      {
        goto LABEL_93;
      }

      v40 = *(v38 + 32);
      v41 = *(*(CMBaseObjectGetVTable() + 16) + 32);
      if (!v41)
      {
        goto LABEL_93;
      }

      if (v41(v40, 0, BOOLean))
      {
        goto LABEL_93;
      }

      if (!BOOLean[0])
      {
        goto LABEL_93;
      }

      FigPlaybackItemGetFigBaseObject();
      v43 = v42;
      v44 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      if (!v44 || v44(v43, @"AirPlay_FirstPlayQueueItemParams", *v5, v59))
      {
        goto LABEL_93;
      }

      v45 = *v59;
      if (!*v59)
      {
LABEL_98:
        if (BOOLean[0])
        {
          CFRelease(BOOLean[0]);
        }

        if (*(v23 + 129))
        {
          *(v23 + 129) = 0;
          papc_setupOrResetAirPlayMockPlaybackIfNeeded(a1, 1);
        }

        v53 = CMBaseObjectGetDerivedStorage();
        *v59 = 0;
        BOOLean[0] = 0;
        BOOLean[1] = 0;
        BOOLean[2] = papc_broadcastTimelineState;
        BOOLean[3] = papc_broadcastParticipantState;
        BOOLean[4] = papc_asynchronouslyReloadTimelineState;
        if (!FigPlaybackCoordinatorCreate(*v5, *(v53 + 32), 0, v59))
        {
          v54 = *v59;
          v55 = *(*(CMBaseObjectGetVTable() + 16) + 40);
          if (v55)
          {
            if (!v55(v54, a1, BOOLean))
            {
              papc_checkStartStopAirPlay_cold_2();
            }
          }
        }

        if (*v59)
        {
          CFRelease(*v59);
        }

        papc_updateIsAirPlayVideoActiveIfNeeded(a1, v28);
        return;
      }

      v46 = *(v39 + 104);
      v47 = *(*(CMBaseObjectGetVTable() + 16) + 24);
      if (v47 && !v47(v46, v45, 0, 0))
      {
        v48 = BOOLean[0];
        if (BOOLean[0])
        {
          v49 = 0;
          while (1)
          {
            v50 = v48;
            CFRetain(v48);
            if (v49)
            {
              CFRelease(v49);
            }

            if (BOOLean[0])
            {
              CFRelease(BOOLean[0]);
              BOOLean[0] = 0;
            }

            v51 = *(v39 + 32);
            v52 = *(*(CMBaseObjectGetVTable() + 16) + 32);
            if (!v52 || v52(v51, v50, BOOLean))
            {
              break;
            }

            if (BOOLean[0])
            {
              papc_insertSubItemToReceiver(a1, BOOLean[0], v50);
              v48 = BOOLean[0];
              v49 = v50;
              if (BOOLean[0])
              {
                continue;
              }
            }

            goto LABEL_111;
          }
        }

        else
        {
          v50 = 0;
LABEL_111:
          if (*(v39 + 128))
          {
            if (!*(v39 + 129))
            {
              v56 = *(v39 + 104);
              v57 = *(*(CMBaseObjectGetVTable() + 16) + 96);
              if (v57)
              {
                v57(v56, *MEMORY[0x1E6961EA8], 0, *MEMORY[0x1E695E4D0]);
              }
            }
          }
        }
      }

      else
      {
LABEL_93:
        v50 = 0;
      }

      if (*v59)
      {
        CFRelease(*v59);
      }

      if (v50)
      {
        CFRelease(v50);
      }

      goto LABEL_98;
    }

    if (dword_1EAF17268)
    {
      LODWORD(cf) = 0;
      v26 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }
  }
}

void __papc_handleSetProperty_block_invoke_31(uint64_t a1)
{
  v2 = FigReadWriteLockLockForRead();
  v10 = *(a1 + 32);
  if (*(v10 + 24))
  {
    __papc_handleSetProperty_block_invoke_31_cold_1(v2, v3, v4, v5, v6, v7, v8, v9, v13, v14, SHIDWORD(v14), vars0);
  }

  else
  {
    v11 = *(a1 + 48);
    if (v11 != *(v10 + 77))
    {
      *(v10 + 77) = v11;
      papc_checkStartStopAirPlay(*(a1 + 40), NAN);
    }
  }

  FigReadWriteLockUnlockForRead();
  v12 = *(a1 + 40);
  if (v12)
  {

    CFRelease(v12);
  }
}

void __papc_handleSetProperty_block_invoke_34(uint64_t a1)
{
  v2 = FigReadWriteLockLockForRead();
  v10 = *(a1 + 32);
  if (*(v10 + 24))
  {
    __papc_handleSetProperty_block_invoke_34_cold_1(v2, v3, v4, v5, v6, v7, v8, v9, v13, v14, SHIDWORD(v14), vars0);
  }

  else
  {
    v11 = *(a1 + 48);
    if (v11 != *(v10 + 79))
    {
      *(v10 + 79) = v11;
      papc_checkStartStopAirPlay(*(a1 + 40), NAN);
    }
  }

  FigReadWriteLockUnlockForRead();
  v12 = *(a1 + 40);
  if (v12)
  {

    CFRelease(v12);
  }
}

void __papc_handleSetProperty_block_invoke_2(uint64_t a1)
{
  v2 = FigReadWriteLockLockForRead();
  v10 = *(a1 + 32);
  if (*(v10 + 24))
  {
    __papc_handleSetProperty_block_invoke_2_cold_1(v2, v3, v4, v5, v6, v7, v8, v9, v15, v16, SHIDWORD(v16), v17);
  }

  else if (*(a1 + 48) != *(v10 + 82))
  {
    v16 = 0;
    FigReadWriteLockLockForRead();
    *(*(a1 + 32) + 82) = *(a1 + 48);
    FigBytePumpGetFigBaseObject();
    v12 = v11;
    v13 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v13)
    {
      v13(v12, 0x1F0B34E58, *MEMORY[0x1E695E480], &v16);
    }

    papc_checkStartStopAirPlay(*(a1 + 40), NAN);
  }

  FigReadWriteLockUnlockForRead();
  v14 = *(a1 + 40);
  if (v14)
  {
    CFRelease(v14);
  }
}

void __papc_handleSetProperty_block_invoke_3(uint64_t a1)
{
  if (*(*(a1 + 32) + 72) != 1)
  {
    v2 = (*(a1 + 48) ? MEMORY[0x1E695E4D0] : MEMORY[0x1E695E4C0]);
    FigPlayerGetFigBaseObject();
    v4 = v3;
    v5 = *(*(CMBaseObjectGetVTable() + 8) + 56);
    if (v5)
    {
      v5(v4, @"ParticipatingInCoordinatedPlayback", *v2);
    }
  }

  v6 = *(a1 + 40);
  if (v6)
  {

    CFRelease(v6);
  }
}

void __papc_handleSetProperty_block_invoke_4(uint64_t a1)
{
  v2 = FigReadWriteLockLockForRead();
  if (*(*(a1 + 32) + 24))
  {
    __papc_handleSetProperty_block_invoke_4_cold_1(v2, v3, v4, v5, v6, v7, v8, v9, v13, v14, SHIDWORD(v14), vars0);
  }

  else
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    if (*(DerivedStorage + 72) == 1)
    {
      if (*(DerivedStorage + 128))
      {
        v11 = 1;
      }

      else
      {
        v11 = *(DerivedStorage + 129) != 0;
      }
    }

    else
    {
      v11 = 0;
    }

    papc_setupOrResetAirPlayMockPlaybackIfNeeded(*(a1 + 40), *(a1 + 48));
    papc_updateIsAirPlayVideoActiveIfNeeded(*(a1 + 40), v11);
  }

  FigReadWriteLockUnlockForRead();
  v12 = *(a1 + 40);
  if (v12)
  {

    CFRelease(v12);
  }
}

void papc_updateIsAirPlayVideoActiveIfNeeded(const void *a1, int a2)
{
  CMBaseObjectGetDerivedStorage();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 72) == 1)
  {
    if (*(DerivedStorage + 128))
    {
      v5 = 1;
    }

    else
    {
      v5 = *(DerivedStorage + 129) != 0;
    }
  }

  else
  {
    v5 = 0;
  }

  if (v5 != a2)
  {
    DefaultLocalCenter = CMNotificationCenterGetDefaultLocalCenter();

    papc_postNotificationAsync(a1, DefaultLocalCenter, @"IsAirPlayVideoActiveDidChange", a1, 0);
  }
}

uint64_t papc_isCoordinatedAPVCapableRouteSelected(uint64_t a1)
{
  CMBaseObjectGetDerivedStorage();
  FigCFDictionaryGetBooleanIfPresent();
  FigCFDictionaryGetBooleanIfPresent();
  return 0;
}

BOOL papc_isDeviceUnlocked()
{
  if (gFigPlayerAirPlayDeviceLockedStateNotifyTokenIsValid != 1)
  {
    return 1;
  }

  usleep(0x124F8u);
  return SBSGetScreenLockStatus() == 0;
}

uint64_t papc_isPlayQueueEmpty(uint64_t a1)
{
  cf = 0;
  v1 = *(CMBaseObjectGetDerivedStorage() + 32);
  v2 = *(*(CMBaseObjectGetVTable() + 16) + 32);
  if (!v2)
  {
    v3 = 0;
    goto LABEL_5;
  }

  v3 = v2(v1, 0, &cf) == 0;
  if (!cf)
  {
LABEL_5:
    v4 = 1;
    return v3 & v4;
  }

  CFRelease(cf);
  v4 = 0;
  return v3 & v4;
}

void __papc_removeURLProcessorFromAllItems_block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = FigCFWeakReferenceHolderCopyReferencedObject();
  if (v2)
  {
    v3 = v2;
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    if (*(DerivedStorage + 40))
    {
      v5 = DerivedStorage;
      CMNotificationCenterGetDefaultLocalCenter();
      FigNotificationCenterRemoveWeakListener();
      CMNotificationCenterGetDefaultLocalCenter();
      FigNotificationCenterRemoveWeakListener();
      CMNotificationCenterGetDefaultLocalCenter();
      FigNotificationCenterRemoveWeakListener();
      v6 = *(v5 + 40);
      if (v6)
      {
        CFRelease(v6);
        *(v5 + 40) = 0;
      }
    }

    CFRelease(v3);
  }
}

void papc_mediaControlHandleTypePlaybackCoordinationMedium(uint64_t a1, const __CFDictionary *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  CFDictionaryGetValue(a2, *MEMORY[0x1E6961A60]);
  Value = CFDictionaryGetValue(a2, *MEMORY[0x1E6961A48]);
  if (!Value || !*(DerivedStorage + 112))
  {
    return;
  }

  v6 = Value;
  if (FigCFEqual())
  {
    v7 = papc_copyUpdatedStateForKey(a1, v6, *MEMORY[0x1E69632A0], 1);
    v8 = *(DerivedStorage + 112);
    v9 = *(*(CMBaseObjectGetVTable() + 16) + 104);
    if (!v9)
    {
      goto LABEL_9;
    }
  }

  else
  {
    if (!FigCFEqual())
    {
      return;
    }

    v7 = papc_copyUpdatedStateForKey(a1, v6, *MEMORY[0x1E6963370], 1);
    v8 = *(DerivedStorage + 112);
    v9 = *(*(CMBaseObjectGetVTable() + 16) + 88);
    if (!v9)
    {
      goto LABEL_9;
    }
  }

  v9(v8, v7);
LABEL_9:
  if (v7)
  {

    CFRelease(v7);
  }
}

CFTypeRef papc_copyUpdatedStateForKey(uint64_t a1, const void *a2, uint64_t a3, int a4)
{
  v17 = 0;
  if (FigCFDictionaryGetValueIfPresent())
  {
    v16 = 0;
    v7 = v17;
    if (a4)
    {
      v15 = papc_copyItemForUUID(a1, v17);
      if (v15)
      {
        v7 = iapc_copySubItem(v15);
        if (v7)
        {
          FigPlaybackItemGetFigBaseObject();
          v13 = v12;
          v14 = *(*(CMBaseObjectGetVTable() + 8) + 48);
          if (v14)
          {
            v14(v13, @"CoordinationIdentifier", *MEMORY[0x1E695E480], &v16);
          }

          v8 = 0;
          v9 = 0;
        }

        else
        {
          v9 = 0;
          v8 = 1;
        }

LABEL_6:
        if (v16)
        {
          MutableCopy = FigCFDictionaryCreateMutableCopy();
          FigCFDictionarySetValue();
          if (v16)
          {
            CFRelease(v16);
          }

          if (v8)
          {
LABEL_10:
            if (v9)
            {
              goto LABEL_11;
            }

LABEL_15:
            CFRelease(v15);
            if (MutableCopy)
            {
              return MutableCopy;
            }

            goto LABEL_16;
          }
        }

        else
        {
          MutableCopy = 0;
          if (v8)
          {
            goto LABEL_10;
          }
        }

        CFRelease(v7);
        if (v9)
        {
LABEL_11:
          if (MutableCopy)
          {
            return MutableCopy;
          }

          goto LABEL_16;
        }

        goto LABEL_15;
      }

      v7 = 0;
    }

    else
    {
      CMBaseObjectGetDerivedStorage();
      v15 = 0;
    }

    v8 = 1;
    v9 = 1;
    goto LABEL_6;
  }

LABEL_16:
  if (a2)
  {
    return CFRetain(a2);
  }

  else
  {
    return 0;
  }
}

void papc_broadcastTimelineState(const void *a1, const void *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (dword_1EAF17268)
  {
    v9 = 0;
    type = OS_LOG_TYPE_DEFAULT;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (a1)
  {
    CFRetain(a1);
  }

  if (a2)
  {
    CFRetain(a2);
  }

  v6 = *(DerivedStorage + 56);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __papc_broadcastTimelineState_block_invoke;
  block[3] = &__block_descriptor_56_e5_v8__0l;
  block[4] = DerivedStorage;
  block[5] = a1;
  block[6] = a2;
  dispatch_async(v6, block);
}

void papc_broadcastParticipantState(const void *a1, const void *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (dword_1EAF17268)
  {
    v9 = 0;
    type = OS_LOG_TYPE_DEFAULT;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (a1)
  {
    CFRetain(a1);
  }

  if (a2)
  {
    CFRetain(a2);
  }

  v6 = *(DerivedStorage + 56);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __papc_broadcastParticipantState_block_invoke;
  block[3] = &__block_descriptor_56_e5_v8__0l;
  block[4] = DerivedStorage;
  block[5] = a1;
  block[6] = a2;
  dispatch_async(v6, block);
}

uint64_t papc_asynchronouslyReloadTimelineState(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t))
{
  v8 = *MEMORY[0x1E69E9840];
  if (dword_1EAF17268)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  return a4(a3, a2);
}

void __papc_broadcastTimelineState_block_invoke(uint64_t a1)
{
  v22 = *MEMORY[0x1E69E9840];
  v2 = FigReadWriteLockLockForRead();
  v10 = *(a1 + 32);
  if (*(v10 + 24))
  {
    __papc_broadcastTimelineState_block_invoke_cold_1(v2, v3, v4, v5, v6, v7, v8, v9, v19, v20, SHIDWORD(v20), v21);
LABEL_11:
    Mutable = 0;
    goto LABEL_12;
  }

  if (!*(v10 + 104))
  {
    if (dword_1EAF17268)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    goto LABEL_11;
  }

  v11 = papc_copyUpdatedStateForKey(*(a1 + 40), *(a1 + 48), *MEMORY[0x1E6963370], 0);
  if (dword_1EAF17268)
  {
    v12 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  FigCFDictionarySetValue();
  v15 = *(*(a1 + 32) + 104);
  v16 = *(*(CMBaseObjectGetVTable() + 16) + 128);
  if (v16)
  {
    v16(v15, *MEMORY[0x1E6961A58], Mutable);
  }

  if (v11)
  {
    CFRelease(v11);
  }

LABEL_12:
  FigReadWriteLockUnlockForRead();
  v17 = *(a1 + 40);
  if (v17)
  {
    CFRelease(v17);
  }

  v18 = *(a1 + 48);
  if (v18)
  {
    CFRelease(v18);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }
}

void __papc_broadcastParticipantState_block_invoke(uint64_t a1)
{
  v22 = *MEMORY[0x1E69E9840];
  v2 = FigReadWriteLockLockForRead();
  v10 = *(a1 + 32);
  if (*(v10 + 24))
  {
    __papc_broadcastParticipantState_block_invoke_cold_1(v2, v3, v4, v5, v6, v7, v8, v9, v19, v20, SHIDWORD(v20), v21);
LABEL_11:
    Mutable = 0;
    goto LABEL_12;
  }

  if (!*(v10 + 104))
  {
    if (dword_1EAF17268)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    goto LABEL_11;
  }

  v11 = papc_copyUpdatedStateForKey(*(a1 + 40), *(a1 + 48), *MEMORY[0x1E69632A0], 0);
  if (dword_1EAF17268)
  {
    v12 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  FigCFDictionarySetValue();
  v15 = *(*(a1 + 32) + 104);
  v16 = *(*(CMBaseObjectGetVTable() + 16) + 128);
  if (v16)
  {
    v16(v15, *MEMORY[0x1E6961A50], Mutable);
  }

  if (v11)
  {
    CFRelease(v11);
  }

LABEL_12:
  FigReadWriteLockUnlockForRead();
  v17 = *(a1 + 40);
  if (v17)
  {
    CFRelease(v17);
  }

  v18 = *(a1 + 48);
  if (v18)
  {
    CFRelease(v18);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }
}

uint64_t papc_AddToPlayQueue(const void *a1, uint64_t a2, CFTypeRef a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigReadWriteLockLockForRead();
  if (*(DerivedStorage + 24))
  {
    papc_AddToPlayQueue_cold_1((DerivedStorage + 16), &v15);
    return v15;
  }

  else
  {
    v7 = iapc_copySubItem(a2);
    if (a3)
    {
      a3 = iapc_copySubItem(a3);
    }

    v8 = *(DerivedStorage + 32);
    v9 = *(*(CMBaseObjectGetVTable() + 16) + 16);
    if (v9)
    {
      v10 = v9(v8, v7, a3);
      if (v10)
      {
        v12 = v10;
      }

      else
      {
        if (a1)
        {
          CFRetain(a1);
        }

        if (v7)
        {
          CFRetain(v7);
        }

        if (a3)
        {
          CFRetain(a3);
        }

        v11 = *(DerivedStorage + 56);
        block[0] = MEMORY[0x1E69E9820];
        block[1] = 3221225472;
        block[2] = __papc_AddToPlayQueue_block_invoke;
        block[3] = &__block_descriptor_64_e5_v8__0l;
        block[4] = DerivedStorage;
        block[5] = a1;
        block[6] = v7;
        block[7] = a3;
        dispatch_async(v11, block);
        v12 = 0;
      }
    }

    else
    {
      v12 = 4294954514;
    }

    FigReadWriteLockUnlockForRead();
    if (v7)
    {
      CFRelease(v7);
    }

    if (a3)
    {
      CFRelease(a3);
    }
  }

  return v12;
}

uint64_t papc_RemoveFromPlayQueue(const void *a1, CFTypeRef a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigReadWriteLockLockForRead();
  if (*(DerivedStorage + 24))
  {
    papc_RemoveFromPlayQueue_cold_1(&v12);
    goto LABEL_17;
  }

  if (a2)
  {
    a2 = iapc_copySubItem(a2);
    if (!a2)
    {
      papc_RemoveFromPlayQueue_cold_2(&v12);
LABEL_17:
      v9 = v12;
      FigReadWriteLockUnlockForRead();
      return v9;
    }
  }

  v5 = *(DerivedStorage + 32);
  v6 = *(*(CMBaseObjectGetVTable() + 16) + 24);
  if (v6)
  {
    v7 = v6(v5, a2);
    if (v7)
    {
      v9 = v7;
    }

    else
    {
      if (a1)
      {
        CFRetain(a1);
      }

      if (a2)
      {
        CFRetain(a2);
      }

      v8 = *(DerivedStorage + 56);
      v11[0] = MEMORY[0x1E69E9820];
      v11[1] = 3221225472;
      v11[2] = __papc_RemoveFromPlayQueue_block_invoke;
      v11[3] = &__block_descriptor_56_e5_v8__0l;
      v11[4] = DerivedStorage;
      v11[5] = a1;
      v11[6] = a2;
      dispatch_async(v8, v11);
      v9 = 0;
    }
  }

  else
  {
    v9 = 4294954514;
  }

  FigReadWriteLockUnlockForRead();
  if (a2)
  {
    CFRelease(a2);
  }

  return v9;
}

uint64_t papc_SetRate(uint64_t a1, float a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigReadWriteLockLockForRead();
  if (*(DerivedStorage + 24))
  {
    papc_SetRate_cold_1(&v12);
    v8 = v12;
  }

  else
  {
    if (a2 != 0.0)
    {
      v5 = *(DerivedStorage + 56);
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __papc_SetRate_block_invoke;
      block[3] = &__block_descriptor_52_e5_v8__0l;
      block[4] = DerivedStorage;
      block[5] = a1;
      v11 = a2;
      dispatch_sync(v5, block);
    }

    v6 = *(DerivedStorage + 32);
    v7 = *(*(CMBaseObjectGetVTable() + 16) + 40);
    if (v7)
    {
      v8 = v7(v6, a2);
    }

    else
    {
      v8 = 4294954514;
    }
  }

  FigReadWriteLockUnlockForRead();
  return v8;
}

uint64_t papc_GetRate(uint64_t a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigReadWriteLockLockForRead();
  if (*(DerivedStorage + 24))
  {
    papc_GetRate_cold_1(&v8);
    v6 = v8;
  }

  else
  {
    v4 = *(DerivedStorage + 32);
    v5 = *(*(CMBaseObjectGetVTable() + 16) + 48);
    if (v5)
    {
      v6 = v5(v4, a2);
    }

    else
    {
      v6 = 4294954514;
    }
  }

  FigReadWriteLockUnlockForRead();
  return v6;
}

uint64_t papc_SetRateWithFade(uint64_t a1, __int128 *a2, float a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigReadWriteLockLockForRead();
  if (*(DerivedStorage + 24))
  {
    papc_SetRateWithFade_cold_1(&v16);
    v10 = v16;
  }

  else
  {
    if (a3 != 0.0)
    {
      v7 = *(DerivedStorage + 56);
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __papc_SetRateWithFade_block_invoke;
      block[3] = &__block_descriptor_52_e5_v8__0l;
      block[4] = DerivedStorage;
      block[5] = a1;
      v15 = a3;
      dispatch_sync(v7, block);
    }

    v8 = *(DerivedStorage + 32);
    v12 = *a2;
    v13 = *(a2 + 2);
    v9 = *(*(CMBaseObjectGetVTable() + 16) + 56);
    if (v9)
    {
      v16 = v12;
      v17 = v13;
      v10 = v9(v8, &v16, a3);
    }

    else
    {
      v10 = 4294954514;
    }
  }

  FigReadWriteLockUnlockForRead();
  return v10;
}

uint64_t papc_StartPreroll(uint64_t a1, uint64_t a2, float a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigReadWriteLockLockForRead();
  if (*(DerivedStorage + 24))
  {
    papc_StartPreroll_cold_1(&v10);
    v8 = v10;
  }

  else
  {
    v6 = *(DerivedStorage + 32);
    v7 = *(*(CMBaseObjectGetVTable() + 16) + 64);
    if (v7)
    {
      v8 = v7(v6, a2, a3);
    }

    else
    {
      v8 = 4294954514;
    }
  }

  FigReadWriteLockUnlockForRead();
  return v8;
}

uint64_t papc_StepByCount(uint64_t a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigReadWriteLockLockForRead();
  if (*(DerivedStorage + 24))
  {
    papc_StepByCount_cold_1(&v8);
    v6 = v8;
  }

  else
  {
    v4 = *(DerivedStorage + 32);
    v5 = *(*(CMBaseObjectGetVTable() + 16) + 72);
    if (v5)
    {
      v6 = v5(v4, a2);
    }

    else
    {
      v6 = 4294954514;
    }
  }

  FigReadWriteLockUnlockForRead();
  return v6;
}

uint64_t papc_SetRateAndAnchorTime(uint64_t a1, __int128 *a2, __int128 *a3, uint64_t a4, float a5)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigReadWriteLockLockForRead();
  if (*(DerivedStorage + 24))
  {
    papc_SetRateAndAnchorTime_cold_1(&v24);
    v14 = v24;
  }

  else
  {
    if (a5 != 0.0)
    {
      v11 = *(DerivedStorage + 56);
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __papc_SetRateAndAnchorTime_block_invoke;
      block[3] = &__block_descriptor_52_e5_v8__0l;
      block[4] = DerivedStorage;
      block[5] = a1;
      v21 = a5;
      dispatch_sync(v11, block);
    }

    v12 = *(DerivedStorage + 32);
    v18 = *a2;
    v19 = *(a2 + 2);
    v16 = *a3;
    v17 = *(a3 + 2);
    v13 = *(*(CMBaseObjectGetVTable() + 16) + 88);
    if (v13)
    {
      v24 = v18;
      v25 = v19;
      v22 = v16;
      v23 = v17;
      v14 = v13(v12, &v24, &v22, a4, a5);
    }

    else
    {
      v14 = 4294954514;
    }
  }

  FigReadWriteLockUnlockForRead();
  return v14;
}

uint64_t papc_CreatePlaybackItemFromAsset(const void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v30 = 0;
  FigReadWriteLockLockForRead();
  if (*(DerivedStorage + 24))
  {
    papc_CreatePlaybackItemFromAsset_cold_1(&cf);
    v18 = 0;
    v19 = cf;
LABEL_26:
    FigReadWriteLockUnlockForRead();
    if (!v18)
    {
      goto LABEL_28;
    }

    goto LABEL_27;
  }

  v11 = *(DerivedStorage + 32);
  v12 = *(*(CMBaseObjectGetVTable() + 16) + 96);
  if (!v12)
  {
    v18 = 0;
    v19 = 4294954514;
    goto LABEL_26;
  }

  v13 = v12(v11, a2, a3, a4, &v30);
  if (v13)
  {
    v19 = v13;
LABEL_25:
    v18 = 0;
    goto LABEL_26;
  }

  CFGetAllocator(a1);
  v14 = v30;
  theString = 0;
  cf = 0;
  CFGetAllocator(a1);
  FigPlaybackItemGetClassID();
  v15 = CMDerivedObjectCreate();
  if (v15)
  {
    goto LABEL_33;
  }

  v16 = CMBaseObjectGetDerivedStorage();
  *v16 = FigSimpleMutexCreate();
  if (v14)
  {
    v17 = CFRetain(v14);
  }

  else
  {
    v17 = 0;
  }

  *(v16 + 24) = v17;
  *(v16 + 32) = FigCFWeakReferenceHolderCreateWithReferencedObject();
  *(v16 + 8) = FigReadWriteLockCreate();
  if (FigCFDictionaryGetStringIfPresent())
  {
    CFStringGetCString(theString, (v16 + 56), 10, 0x8000100u);
  }

  v20 = CFGetAllocator(a1);
  FigPlaybackItemGetFigBaseObject();
  v22 = v21;
  v23 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v23)
  {
    v19 = 4294954514;
    goto LABEL_23;
  }

  v15 = v23(v22, 0x1F0B3D158, v20, v16 + 48);
  if (v15)
  {
    goto LABEL_33;
  }

  if (!*(v16 + 48))
  {
    v19 = 0;
LABEL_23:
    if (cf)
    {
      CFRelease(cf);
    }

    goto LABEL_25;
  }

  CMNotificationCenterGetDefaultLocalCenter();
  v15 = FigNotificationCenterAddWeakListener();
  if (v15)
  {
LABEL_33:
    v19 = v15;
    goto LABEL_23;
  }

  v18 = cf;
  if (!cf || (v24 = *(CMBaseObjectGetDerivedStorage() + 48)) == 0 || (v25 = CFRetain(v24)) == 0)
  {
    v19 = 0;
    goto LABEL_26;
  }

  v26 = v25;
  FigSimpleMutexLock();
  v27 = FigCFWeakReferenceHolderCreateWithReferencedObject();
  if (v27)
  {
    v28 = v27;
    FigCFDictionarySetValue();
    CFRelease(v28);
    FigSimpleMutexUnlock();
    v19 = 0;
    *a5 = v18;
    v18 = 0;
  }

  else
  {
    papc_CreatePlaybackItemFromAsset_cold_2(DerivedStorage, &cf);
    v19 = cf;
  }

  FigReadWriteLockUnlockForRead();
  CFRelease(v26);
  if (!v18)
  {
    goto LABEL_28;
  }

LABEL_27:
  CFRelease(v18);
LABEL_28:
  if (v30)
  {
    CFRelease(v30);
  }

  return v19;
}

uint64_t papc_SetRateWithOptions(uint64_t a1, uint64_t a2, float a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigReadWriteLockLockForRead();
  if (*(DerivedStorage + 24))
  {
    papc_SetRateWithOptions_cold_1(&v14);
    v10 = v14;
  }

  else
  {
    if (a3 != 0.0)
    {
      v7 = *(DerivedStorage + 56);
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __papc_SetRateWithOptions_block_invoke;
      block[3] = &__block_descriptor_52_e5_v8__0l;
      block[4] = DerivedStorage;
      block[5] = a1;
      v13 = a3;
      dispatch_sync(v7, block);
    }

    v8 = *(DerivedStorage + 32);
    v9 = *(*(CMBaseObjectGetVTable() + 16) + 104);
    if (v9)
    {
      v10 = v9(v8, a2, a3);
    }

    else
    {
      v10 = 4294954514;
    }
  }

  FigReadWriteLockUnlockForRead();
  return v10;
}

uint64_t papc_SetProperties(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigReadWriteLockLockForRead();
  if (*(DerivedStorage + 24))
  {
    papc_SetProperties_cold_1(&v9);
    v7 = v9;
  }

  else
  {
    v7 = FPSupport_HandlePlayerSetPropertiesAndForwardToSubPlayer(a1, *(DerivedStorage + 32), 0, papc_handleSetProperty, a2, a3);
  }

  FigReadWriteLockUnlockForRead();
  return v7;
}

uint64_t papc_ReevaluateRouteConfiguration(uint64_t a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v4 = FigCFCopyCompactDescription();
  FigReadWriteLockLockForRead();
  if (*(DerivedStorage + 24))
  {
    papc_ReevaluateRouteConfiguration_cold_1(&v7);
    v5 = v7;
  }

  else
  {
    v5 = FigPlayerReevaluateRouteConfigurationForReason(*(DerivedStorage + 32), a2, @" -> coordinated AirPlay sub-player");
  }

  FigReadWriteLockUnlockForRead();
  if (v4)
  {
    CFRelease(v4);
  }

  return v5;
}

uint64_t papc_AddExternalStartupTask(uint64_t a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigReadWriteLockLockForRead();
  if (*(DerivedStorage + 24))
  {
    papc_AddExternalStartupTask_cold_1(&v8);
    v6 = v8;
  }

  else
  {
    v4 = *(DerivedStorage + 32);
    v5 = *(*(CMBaseObjectGetVTable() + 16) + 128);
    if (v5)
    {
      v6 = v5(v4, a2);
    }

    else
    {
      v6 = 4294954514;
    }
  }

  FigReadWriteLockUnlockForRead();
  return v6;
}

uint64_t papc_RemoveExternalStartupTask(uint64_t a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigReadWriteLockLockForRead();
  if (*(DerivedStorage + 24))
  {
    papc_RemoveExternalStartupTask_cold_1(&v8);
    v6 = v8;
  }

  else
  {
    v4 = *(DerivedStorage + 32);
    v5 = *(*(CMBaseObjectGetVTable() + 16) + 136);
    if (v5)
    {
      v6 = v5(v4, a2);
    }

    else
    {
      v6 = 4294954514;
    }
  }

  FigReadWriteLockUnlockForRead();
  return v6;
}

uint64_t papc_CopyDisplayedCVPixelBuffer(uint64_t a1, uint64_t a2, uint64_t a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigReadWriteLockLockForRead();
  if (*(DerivedStorage + 24))
  {
    papc_CopyDisplayedCVPixelBuffer_cold_1(&v10);
    v8 = v10;
  }

  else
  {
    v6 = *(DerivedStorage + 32);
    v7 = *(*(CMBaseObjectGetVTable() + 16) + 152);
    if (v7)
    {
      v8 = v7(v6, a2, a3);
    }

    else
    {
      v8 = 4294954514;
    }
  }

  FigReadWriteLockUnlockForRead();
  return v8;
}

uint64_t iapc_Finalize(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  iapc_Invalidate(a1);
  v3 = DerivedStorage[4];
  if (v3)
  {
    CFRelease(v3);
    DerivedStorage[4] = 0;
  }

  v4 = DerivedStorage[3];
  if (v4)
  {
    CFRelease(v4);
    DerivedStorage[3] = 0;
  }

  v5 = DerivedStorage[5];
  if (v5)
  {
    CFRelease(v5);
    DerivedStorage[5] = 0;
  }

  v6 = DerivedStorage[6];
  if (v6)
  {
    CFRelease(v6);
  }

  FigReadWriteLockDestroy();

  return FigSimpleMutexDestroy();
}

uint64_t iapc_handleSetProperty(uint64_t a1, uint64_t a2, const void *a3, const void *a4, _BYTE *a5, void *a6, void *a7)
{
  CMBaseObjectGetDerivedStorage();
  *a5 = 0;
  if (a3)
  {
    v12 = CFRetain(a3);
  }

  else
  {
    v12 = 0;
  }

  *a6 = v12;
  if (a4)
  {
    v13 = CFRetain(a4);
  }

  else
  {
    v13 = 0;
  }

  *a7 = v13;
  return 0;
}

uint64_t papc_BeginInterruption(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigReadWriteLockLockForRead();
  if (*(DerivedStorage + 24))
  {
    papc_BeginInterruption_cold_1(&v7);
    v5 = v7;
  }

  else
  {
    v2 = *(DerivedStorage + 32);
    v3 = *(CMBaseObjectGetVTable() + 24);
    if (v3 && (v4 = *(v3 + 8)) != 0)
    {
      v5 = v4(v2);
    }

    else
    {
      v5 = 4294954514;
    }
  }

  FigReadWriteLockUnlockForRead();
  return v5;
}

uint64_t papc_EndInterruption(uint64_t a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigReadWriteLockLockForRead();
  if (*(DerivedStorage + 24))
  {
    papc_EndInterruption_cold_1(&v9);
    v7 = v9;
  }

  else
  {
    v4 = *(DerivedStorage + 32);
    v5 = *(CMBaseObjectGetVTable() + 24);
    if (v5 && (v6 = *(v5 + 16)) != 0)
    {
      v7 = v6(v4, a2);
    }

    else
    {
      v7 = 4294954514;
    }
  }

  FigReadWriteLockUnlockForRead();
  return v7;
}

uint64_t papc_DuckVolume(uint64_t a1, uint64_t a2, float a3, float a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigReadWriteLockLockForRead();
  if (*(DerivedStorage + 24))
  {
    papc_DuckVolume_cold_1(&v13);
    v11 = v13;
  }

  else
  {
    v8 = *(DerivedStorage + 32);
    v9 = *(CMBaseObjectGetVTable() + 32);
    if (v9 && (v10 = *(v9 + 8)) != 0)
    {
      v11 = v10(v8, a2, a3, a4);
    }

    else
    {
      v11 = 4294954514;
    }
  }

  FigReadWriteLockUnlockForRead();
  return v11;
}

uint64_t papc_SilentMute(uint64_t a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigReadWriteLockLockForRead();
  if (*(DerivedStorage + 24))
  {
    papc_SilentMute_cold_1(&v9);
    v7 = v9;
  }

  else
  {
    v4 = *(DerivedStorage + 32);
    v5 = *(CMBaseObjectGetVTable() + 32);
    if (v5 && (v6 = *(v5 + 16)) != 0)
    {
      v7 = v6(v4, a2);
    }

    else
    {
      v7 = 4294954514;
    }
  }

  FigReadWriteLockUnlockForRead();
  return v7;
}

void __papc_handleRouteNotification_block_invoke(uint64_t a1)
{
  v38 = *MEMORY[0x1E69E9840];
  v2 = FigReadWriteLockLockForRead();
  if (*(*(a1 + 32) + 24))
  {
    __papc_handleRouteNotification_block_invoke_cold_1(v2, v3, v4, v5, v6, v7, v8, v9, v34, v35, SHIDWORD(v35), v36);
  }

  else
  {
    v10 = *(a1 + 40);
    v11 = *(a1 + 48);
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    if (v11)
    {
      FigCFDictionaryGetValueIfPresent();
      FigCFDictionaryGetBooleanIfPresent();
      FigCFDictionaryGetBooleanIfPresent();
      isCoordinatedAPVCapableRouteSelected = papc_isCoordinatedAPVCapableRouteSelected(v10);
      if (*(DerivedStorage + 88))
      {
        v14 = 1;
      }

      else
      {
        v15 = CMBaseObjectGetDerivedStorage();
        v14 = *(v15 + 76) && *(v15 + 77) && isCoordinatedAPVCapableRouteSelected != 0;
      }
    }

    else
    {
      v14 = 0;
    }

    if (dword_1EAF17268)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    if (v14)
    {
      if (*(*(a1 + 32) + 72) == 1)
      {
        if (dword_1EAF17268)
        {
          v33 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT);
          fig_log_call_emit_and_clean_up_after_send_and_compose();
        }

        papc_switchFromAirPlayVideoToLocal(*(a1 + 40));
      }

      papc_resetAirPlayRouteInformation(*(a1 + 40));
      v17 = *(a1 + 40);
      v18 = *(a1 + 48);
      FigCFDictionaryGetValueIfPresent();
      papc_updateAirPlayRouteInformation(v17, v18);
      v19 = CMBaseObjectGetDerivedStorage();
      cf = 0;
      *(v19 + 84) = 0;
      v20 = *(v19 + 88);
      *(v19 + 88) = 0;
      if (v20)
      {
        CFRelease(v20);
      }

      v25 = *(v19 + 96);
      v23 = (v19 + 96);
      v24 = v25;
      *v23 = 0;
      if (v25)
      {
        CFRelease(v24);
      }

      if (*v23 != v24)
      {
        DefaultLocalCenter = CMNotificationCenterGetDefaultLocalCenter();
        papc_postNotificationAsync(v17, DefaultLocalCenter, @"ExternalPlaybackCapabilitiesChanged", v17, 0);
      }

      if (cf)
      {
        CFRelease(cf);
      }

      if (dword_1EAF17268)
      {
        v22 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      papc_checkStartStopAirPlay(*(a1 + 40), NAN);
      if (*(*(a1 + 32) + 72) == 1)
      {
        papc_postNotificationAsync(*(a1 + 40), *(a1 + 56), @"RouteDeselected", *(a1 + 40), 0);
        goto LABEL_38;
      }

      if (dword_1EAF17268)
      {
        v26 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }
    }

    else
    {
      papc_updateAirPlayRouteInformation(*(a1 + 40), *(a1 + 48));
    }
  }

  if (*(*(a1 + 32) + 78) && papc_isCoordinatedAPVCapableRouteSelected(*(a1 + 40)))
  {
    MutableCopy = FigCFDictionaryCreateMutableCopy();
    CFDictionaryReplaceValue(MutableCopy, @"IsURLPlaybackEnabled", *MEMORY[0x1E695E4C0]);
  }

  else
  {
    v28 = *(a1 + 48);
    if (v28)
    {
      MutableCopy = CFRetain(v28);
    }

    else
    {
      MutableCopy = 0;
    }
  }

  papc_postNotificationAsync(*(a1 + 40), *(a1 + 56), *(a1 + 64), *(a1 + 40), MutableCopy);
  if (MutableCopy)
  {
    CFRelease(MutableCopy);
  }

LABEL_38:
  FigReadWriteLockUnlockForRead();
  v29 = *(a1 + 40);
  if (v29)
  {
    CFRelease(v29);
  }

  v30 = *(a1 + 56);
  if (v30)
  {
    CFRelease(v30);
  }

  v31 = *(a1 + 64);
  if (v31)
  {
    CFRelease(v31);
  }

  v32 = *(a1 + 48);
  if (v32)
  {
    CFRelease(v32);
  }
}

void papc_resetAirPlayRouteInformation(const void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v3 = DerivedStorage[8];
  if (v3)
  {
    CFRelease(v3);
    DerivedStorage[8] = 0;
  }

  v4 = DerivedStorage[11];
  if (v4)
  {
    CFRelease(v4);
    DerivedStorage[11] = 0;
  }

  v5 = DerivedStorage[12];
  if (v5)
  {
    CFRelease(v5);
    DerivedStorage[12] = 0;
    DefaultLocalCenter = CMNotificationCenterGetDefaultLocalCenter();

    papc_postNotificationAsync(a1, DefaultLocalCenter, @"ExternalPlaybackCapabilitiesChanged", a1, 0);
  }
}

void papc_updateAirPlayRouteInformation(uint64_t a1, const __CFDictionary *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v4 = DerivedStorage;
  if (a2)
  {
    CFDictionaryGetValue(a2, @"NewRouteName");
    FigCFDictionaryGetBooleanIfPresent();
    v5 = *(v4 + 64);
    *(v4 + 64) = a2;
    CFRetain(a2);
    if (!v5)
    {
      return;
    }
  }

  else
  {
    v5 = *(DerivedStorage + 64);
    *(DerivedStorage + 64) = 0;
    if (!v5)
    {
      return;
    }
  }

  CFRelease(v5);
}

void __papc_handleRouteNotification_block_invoke_43(const void **a1)
{
  v2 = (a1 + 4);
  v3 = FigReadWriteLockLockForRead();
  if (*(*v2 + 24))
  {
    __papc_handleRouteNotification_block_invoke_43_cold_1(v3, v4, v5, v6, v7, v8, v9, v10, v16, v17, SHIDWORD(v17), vars0);
    goto LABEL_4;
  }

  v11 = a1[5];
  if (*(*v2 + 72) != 1)
  {
    papc_resetAirPlayRouteInformation(v11);
LABEL_4:
    FigReadWriteLockUnlockForRead();
    papc_postNotificationAsync(a1[5], a1[6], a1[7], a1[5], a1[8]);
    goto LABEL_5;
  }

  __papc_handleRouteNotification_block_invoke_43_cold_2(v11, a1 + 5, v2);
LABEL_5:
  v12 = a1[5];
  if (v12)
  {
    CFRelease(v12);
  }

  v13 = a1[6];
  if (v13)
  {
    CFRelease(v13);
  }

  v14 = a1[7];
  if (v14)
  {
    CFRelease(v14);
  }

  v15 = a1[8];
  if (v15)
  {

    CFRelease(v15);
  }
}

void __papc_handleRouteNotification_block_invoke_2(uint64_t a1)
{
  v2 = FigReadWriteLockLockForRead();
  v10 = *(a1 + 32);
  if (*(v10 + 24))
  {
    __papc_handleRouteNotification_block_invoke_2_cold_1(v2, v3, v4, v5, v6, v7, v8, v9, v15, v16, SHIDWORD(v16), vars0);
  }

  else if (*(v10 + 80) != *(a1 + 72))
  {
    FigCFDictionaryGetStringValue();
    *(*(a1 + 32) + 80) = *(a1 + 72);
    papc_checkStartStopAirPlay(*(a1 + 48), NAN);
  }

  FigReadWriteLockUnlockForRead();
  papc_postNotificationAsync(*(a1 + 48), *(a1 + 56), *(a1 + 64), *(a1 + 48), *(a1 + 40));
  v11 = *(a1 + 48);
  if (v11)
  {
    CFRelease(v11);
  }

  v12 = *(a1 + 56);
  if (v12)
  {
    CFRelease(v12);
  }

  v13 = *(a1 + 64);
  if (v13)
  {
    CFRelease(v13);
  }

  v14 = *(a1 + 40);
  if (v14)
  {

    CFRelease(v14);
  }
}

uint64_t OUTLINED_FUNCTION_9_36(uint64_t a1)
{

  return FigNotificationCenterAddWeakListener();
}

uint64_t OUTLINED_FUNCTION_10_35(uint64_t a1)
{

  return CMBaseObjectGetVTable();
}

uint64_t OUTLINED_FUNCTION_13_25(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, __int16 a12, char a13, char a14, int a15)
{

  return fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
}

uint64_t OUTLINED_FUNCTION_14_30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, __int16 a16, char a17, char a18, int a19)
{

  return fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
}

CFMutableDictionaryRef OUTLINED_FUNCTION_23_24()
{

  return CFDictionaryCreateMutable(v2, 0, v0, v1);
}

uint64_t OUTLINED_FUNCTION_24_17(uint64_t a1)
{

  return CMBaseObjectGetVTable();
}

uint64_t FigPlayerAirPlayCreateMockWithOptions(const __CFAllocator *a1, const void *a2, uint64_t a3, CFTypeRef *a4)
{
  if (FigPlayerAirPlayCreateMockWithOptions_initFigAirPlayTracOnceCheck == -1)
  {
    if (a4)
    {
      goto LABEL_3;
    }

LABEL_15:
    FigPlayerAirPlayCreateMockWithOptions_cold_6(&v15);
    return v15;
  }

  FigPlayerAirPlayCreateMockWithOptions_cold_1();
  if (!a4)
  {
    goto LABEL_15;
  }

LABEL_3:
  if (!a2)
  {
    FigPlayerAirPlayCreateMockWithOptions_cold_5(&v15);
    return v15;
  }

  FigPlayerGetClassID();
  v7 = CMDerivedObjectCreate();
  if (v7)
  {
    return v7;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  *DerivedStorage = FigSimpleMutexCreate();
  v9 = FigReadWriteLockCreate();
  *(DerivedStorage + 40) = v9;
  if (!v9)
  {
    return 0;
  }

  if (FigCFDictionaryGetStringIfPresent())
  {
    CFStringGetCString(0, (DerivedStorage + 64), 10, 0x8000100u);
  }

  Mutable = CFDictionaryCreateMutable(a1, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  *(DerivedStorage + 8) = Mutable;
  if (!Mutable)
  {
    FigPlayerAirPlayCreateMockWithOptions_cold_4(&v15);
    return v15;
  }

  v11 = CFArrayCreateMutable(a1, 0, MEMORY[0x1E695E9C0]);
  *(DerivedStorage + 24) = v11;
  if (!v11)
  {
    FigPlayerAirPlayCreateMockWithOptions_cold_3(&v15);
    return v15;
  }

  v12 = CFArrayCreateMutable(a1, 0, MEMORY[0x1E695E9C0]);
  *(DerivedStorage + 32) = v12;
  if (!v12)
  {
    FigPlayerAirPlayCreateMockWithOptions_cold_2(&v15);
    return v15;
  }

  *(DerivedStorage + 56) = CFRetain(a2);
  CMNotificationCenterGetDefaultLocalCenter();
  v13 = FigNotificationCenterAddWeakListener();
  if (!v13)
  {
    *a4 = 0;
  }

  return v13;
}

uint64_t __FigPlayerAirPlayCreateMockWithOptions_block_invoke(uint64_t a1)
{
  FigNote_AllowInternalDefaultLogs();
  fig_note_initialize_category_with_default_work_cf();

  return fig_note_initialize_category_with_default_work_cf();
}

uint64_t papm_reflectSubPlayerNotification(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v7 = FigReadWriteLockLockForRead();
  if (*(DerivedStorage + 48))
  {
    papm_reflectSubPlayerNotification_cold_1(v7, v8, v9, v10, v11, v12, v13, v14, v16, v17, SHIDWORD(v17), v18);
  }

  else if (!FigCFEqual() && !FigCFEqual() || !papm_isMockPlaybackActive(a2))
  {
    CMNotificationCenterPostNotification();
  }

  return FigReadWriteLockUnlockForRead();
}

uint64_t papm_CopyProperty(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigReadWriteLockLockForRead();
  if (*(DerivedStorage + 48))
  {
    papm_CopyProperty_cold_1(&v18);
    v12 = v18;
    goto LABEL_12;
  }

  if (FigCFEqual())
  {
    FigSimpleMutexLock();
    v9 = *(DerivedStorage + 16);
    FigSimpleMutexUnlock();
    v10 = MEMORY[0x1E695E4D0];
    if (!v9)
    {
      v10 = MEMORY[0x1E695E4C0];
    }

    SInt32 = *v10;
    if (*v10)
    {
      SInt32 = CFRetain(SInt32);
    }

    goto LABEL_7;
  }

  if (FigCFEqual())
  {
    v17 = 0;
    if (papm_getMockPlaybackState(a1, &v17))
    {
      SInt32 = FigCFNumberCreateSInt32();
LABEL_7:
      v12 = 0;
      *a4 = SInt32;
      goto LABEL_12;
    }
  }

  FigPlayerGetFigBaseObject();
  v14 = v13;
  v15 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v15)
  {
    v12 = v15(v14, a2, a3, a4);
  }

  else
  {
    v12 = 4294954514;
  }

LABEL_12:
  FigReadWriteLockUnlockForRead();
  return v12;
}

uint64_t papm_SetProperty(uint64_t a1, uint64_t a2, uint64_t a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigReadWriteLockLockForRead();
  if (*(DerivedStorage + 48))
  {
    papm_SetProperty_cold_1(&v8);
    v6 = v8;
  }

  else
  {
    v6 = FPSupport_HandlePlayerSetPropertyAndForwardToSubPlayer(a1, *(DerivedStorage + 56), a2);
  }

  FigReadWriteLockUnlockForRead();
  return v6;
}

uint64_t iapm_Invalidate(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  if (*(DerivedStorage + 8))
  {
    iapm_Invalidate_cold_1(DerivedStorage);
    return 0;
  }

  *(DerivedStorage + 8) = 1;
  FigSimpleMutexUnlock();
  v2 = *(DerivedStorage + 56);
  if (v2)
  {
    v3 = CFRetain(v2);
  }

  else
  {
    v3 = 0;
  }

  v4 = FigCFWeakReferenceHolderCopyReferencedObject();
  if (v4)
  {
    v5 = *(DerivedStorage + 48);
    v6 = CMBaseObjectGetDerivedStorage();
    FigSimpleMutexLock();
    CFDictionaryRemoveValue(*(v6 + 8), v5);
    FigSimpleMutexUnlock();
  }

  CMNotificationCenterGetDefaultLocalCenter();
  FigNotificationCenterRemoveWeakListener();
  if (!v3)
  {
    v10 = 0;
    if (!v4)
    {
      return v10;
    }

    goto LABEL_16;
  }

  FigPlaybackItemGetFigBaseObject();
  if (v7)
  {
    v8 = v7;
    v9 = *(*(CMBaseObjectGetVTable() + 8) + 24);
    if (v9)
    {
      v10 = v9(v8);
    }

    else
    {
      v10 = 4294954514;
    }
  }

  else
  {
    v10 = 4294954516;
  }

  CFRelease(v3);
  if (v4)
  {
LABEL_16:
    CFRelease(v4);
  }

  return v10;
}

uint64_t papm_externalStartupTaskCompleted(uint64_t a1, uint64_t a2, uint64_t a3, const void *a4)
{
  v26[25] = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v26[0] = 0;
  v7 = FigReadWriteLockLockForRead();
  if (*(DerivedStorage + 48))
  {
    papm_externalStartupTaskCompleted_cold_1(v7, v8, v9, v10, v11, v12, v13, v14, v23, v24, SHIDWORD(v24), v25);
  }

  else
  {
    FigSimpleMutexLock();
    v15 = *(DerivedStorage + 32);
    v27.length = CFArrayGetCount(v15);
    v27.location = 0;
    FirstIndexOfValue = CFArrayGetFirstIndexOfValue(v15, v27, a4);
    FigSimpleMutexUnlock();
    papm_getMockPlaybackState(a2, v26 + 1);
    if (FirstIndexOfValue != -1 && FigPlayerStartupTaskDoesAllowStartup(a4))
    {
      if (dword_1EAF17288)
      {
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      FigSimpleMutexLock();
      CFArrayRemoveValueAtIndex(*(DerivedStorage + 32), FirstIndexOfValue);
      v18 = *(DerivedStorage + 20);
      FigSimpleMutexUnlock();
      if (papm_areAllExternalStartupTasksCompleted(a2))
      {
        v19 = papm_copyCurrentItem(a2);
        if (dword_1EAF17288)
        {
          v20 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT);
          fig_log_call_emit_and_clean_up_after_send_and_compose();
        }

        if (v19)
        {
          iapm_setMockPlaybackRateAndTime(v19, MEMORY[0x1E6960C70], v18);
          CFRelease(v19);
        }
      }
    }

    papm_getMockPlaybackState(a2, v26);
    if (HIDWORD(v26[0]) != LODWORD(v26[0]))
    {
      Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      FigCFDictionarySetInt32();
      CMNotificationCenterGetDefaultLocalCenter();
      CMNotificationCenterPostNotification();
      if (Mutable)
      {
        CFRelease(Mutable);
      }
    }
  }

  return FigReadWriteLockUnlockForRead();
}

uint64_t iapm_reflectSubItemNotification(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  if (*(DerivedStorage + 8))
  {
    return iapm_reflectSubItemNotification_cold_1(DerivedStorage);
  }

  FigSimpleMutexUnlock();

  return CMNotificationCenterPostNotification();
}

uint64_t papm_areAllExternalStartupTasksCompleted(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  v2 = *(DerivedStorage + 32);
  if (v2 && (Count = CFArrayGetCount(v2), Count >= 1))
  {
    v4 = Count;
    v5 = 1;
    do
    {
      ValueAtIndex = CFArrayGetValueAtIndex(*(DerivedStorage + 32), v5 - 1);
      DoesAllowStartup = FigPlayerStartupTaskDoesAllowStartup(ValueAtIndex);
      v8 = DoesAllowStartup;
      if (v5 >= v4)
      {
        break;
      }

      ++v5;
    }

    while (DoesAllowStartup);
  }

  else
  {
    v8 = 1;
  }

  FigSimpleMutexUnlock();
  return v8;
}

uint64_t papm_handleSetProperty(uint64_t a1, uint64_t a2, const void *a3, const __CFBoolean *a4, _BYTE *a5, void *a6, void *a7)
{
  v70 = *MEMORY[0x1E69E9840];
  if (FigCFEqual())
  {
    Value = CFBooleanGetValue(a4);
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    v15 = DerivedStorage;
    if (Value)
    {
      v59 = 0.0;
      cf = 0;
      if (!*(DerivedStorage + 16))
      {
        v16 = *(DerivedStorage + 56);
        v17 = *(*(CMBaseObjectGetVTable() + 16) + 48);
        if (!v17 || v17(v16, &v59))
        {
          v18 = 0;
        }

        else
        {
          FigSimpleMutexLock();
          *(v15 + 16) = 1;
          *(v15 + 20) = v59;
          FigSimpleMutexUnlock();
          v18 = papm_copyCurrentItem(a1);
          if (dword_1EAF17288)
          {
            LODWORD(timebase) = 0;
            os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            v20 = timebase;
            if (os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT))
            {
              v21 = v20;
            }

            else
            {
              v21 = v20 & 0xFFFFFFFE;
            }

            if (v21)
            {
              if (a1)
              {
                v22 = (CMBaseObjectGetDerivedStorage() + 64);
              }

              else
              {
                v22 = "";
              }

              v36 = (CMBaseObjectGetDerivedStorage() + 72);
              if (!v18)
              {
                v36 = "";
              }

              LODWORD(time.value) = 136316418;
              *(&time.value + 4) = "papm_startMockPlayback";
              LOWORD(time.flags) = 2048;
              *(&time.flags + 2) = a1;
              HIWORD(time.epoch) = 2048;
              v62 = v18;
              v63 = 2082;
              v64 = v22;
              v65 = 2082;
              v66 = v36;
              v67 = 2048;
              v68 = v59;
              _os_log_send_and_compose_impl(v21, 0, &v69, 128, &dword_1962D5000, os_log_and_send_and_compose_flags_and_os_log_type, 0, "<<<< FigPlayer_AP_Mock >>>> %s: [%p, %p] %{public}s %{public}s start Mock Playback, rate = %.2f", &time, 62);
            }

            fig_log_call_emit_and_clean_up_after_send_and_compose();
          }

          v37 = CMBaseObjectGetDerivedStorage();
          FigSimpleMutexLock();
          v38 = *(v37 + 24);
          if (v38)
          {
            Count = CFArrayGetCount(v38);
            if (Count >= 1)
            {
              v40 = Count;
              for (i = 0; i != v40; ++i)
              {
                ValueAtIndex = CFArrayGetValueAtIndex(*(v37 + 24), i);
                v43 = *(v37 + 56);
                v44 = *(*(CMBaseObjectGetVTable() + 16) + 136);
                if (v44)
                {
                  v44(v43, ValueAtIndex);
                }
              }
            }
          }

          FigSimpleMutexUnlock();
          v45 = MEMORY[0x1E695E480];
          if (v18)
          {
            v46 = CMBaseObjectGetDerivedStorage();
            timebase = 0;
            FigSimpleMutexLock();
            v69 = **&MEMORY[0x1E6960C70];
            if (!*(v46 + 40))
            {
              v47 = *v45;
              HostTimeClock = CMClockGetHostTimeClock();
              if (!CMTimebaseCreateWithSourceClock(v47, HostTimeClock, (v46 + 24)))
              {
                FigPlaybackItemGetFigBaseObject();
                v50 = v49;
                v51 = *(*(CMBaseObjectGetVTable() + 8) + 48);
                if (v51)
                {
                  if (!v51(v50, @"Timebase", v47, &timebase) && timebase != 0)
                  {
                    CMTimebaseGetTime(&v69, timebase);
                    v53 = *(v46 + 24);
                    time = v69;
                    CMTimebaseSetTime(v53, &time);
                    Rate = CMTimebaseGetRate(timebase);
                    CMTimebaseSetRate(*(v46 + 24), Rate);
                    if (!FigReadOnlyTimebaseSetTargetTimebase())
                    {
                      *(v46 + 40) = 1;
                    }
                  }
                }
              }
            }

            FigSimpleMutexUnlock();
            if (timebase)
            {
              CFRelease(timebase);
            }
          }

          if (v59 != 0.0)
          {
            FPSupport_CreateSetRateOptions(*v45, 27, &cf);
            v55 = *(v15 + 56);
            v56 = cf;
            v57 = *(*(CMBaseObjectGetVTable() + 16) + 104);
            if (v57)
            {
              v57(v55, v56, 0.0);
            }
          }
        }

        if (cf)
        {
          CFRelease(cf);
        }

        if (v18)
        {
          CFRelease(v18);
        }
      }
    }

    else
    {
      FigSimpleMutexLock();
      if (*(v15 + 16))
      {
        *(v15 + 16) = 0;
        FigSimpleMutexUnlock();
        v24 = papm_copyCurrentItem(a1);
        if (dword_1EAF17288)
        {
          LODWORD(timebase) = 0;
          LOBYTE(cf) = 0;
          v25 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT);
          fig_log_call_emit_and_clean_up_after_send_and_compose();
        }

        v27 = CMBaseObjectGetDerivedStorage();
        FigSimpleMutexLock();
        v28 = *(v27 + 24);
        if (v28)
        {
          v29 = CFArrayGetCount(v28);
          if (v29 >= 1)
          {
            v30 = v29;
            for (j = 0; j != v30; ++j)
            {
              v32 = CFArrayGetValueAtIndex(*(v27 + 24), j);
              v33 = *(v27 + 56);
              v34 = *(*(CMBaseObjectGetVTable() + 16) + 128);
              if (v34)
              {
                v34(v33, v32);
              }
            }
          }
        }

        FigSimpleMutexUnlock();
        if (v24)
        {
          papm_handleSetProperty_cold_1(v24);
        }
      }

      else
      {
        FigSimpleMutexUnlock();
      }
    }

    *a5 = 1;
  }

  else
  {
    *a5 = 0;
    if (a3)
    {
      v23 = CFRetain(a3);
    }

    else
    {
      v23 = 0;
    }

    *a6 = v23;
    if (a4)
    {
      v26 = CFRetain(a4);
    }

    else
    {
      v26 = 0;
    }

    *a7 = v26;
  }

  return 0;
}