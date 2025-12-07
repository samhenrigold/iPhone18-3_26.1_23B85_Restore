void sub_19662E520(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, ...)
{
  va_start(va, a34);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t itemairplay_MakeReadyForInspection(uint64_t a1, uint64_t a2, uint64_t a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 72))
  {
    itemairplay_MakeReadyForInspection_cold_1(&v9);
    return v9;
  }

  else
  {
    v6 = *(DerivedStorage + 8);
    v7 = *(*(CMBaseObjectGetVTable() + 16) + 48);
    if (v7)
    {

      return v7(v6, a2, a3);
    }

    else
    {
      return 4294954514;
    }
  }
}

void __itemairplay_reflectSubItemNotification_block_invoke(void *a1)
{
  v3 = *MEMORY[0x1E69E9840];
  if (*(CMBaseObjectGetDerivedStorage() + 296))
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    playerairplay_switchFromBufferedAirPlayToLocal(a1[4]);
    *(a1[7] + 247) = 0;
  }
}

void playerairplay_setBAOConnectionActiveIfNeeded(const void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(CMBaseObjectGetDerivedStorage() + 296) && *(DerivedStorage + 1) && !*(DerivedStorage + 304))
  {
    if (a1)
    {
      CFRetain(a1);
    }

    v3 = *(DerivedStorage + 112);
    v4[0] = MEMORY[0x1E69E9820];
    v4[1] = 3221225472;
    v4[2] = __playerairplay_setBAOConnectionActiveIfNeeded_block_invoke;
    v4[3] = &__block_descriptor_48_e5_v8__0l;
    v4[4] = a1;
    v4[5] = DerivedStorage;
    dispatch_async(v3, v4);
  }
}

void playerairplay_updateRoutingRegistry(uint64_t a1)
{
  cf[27] = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  BOOLean = 0;
  cf[0] = 0;
  FigSimpleMutexLock();
  v3 = *(DerivedStorage + 68);
  v4 = *(DerivedStorage + 65);
  FigSimpleMutexUnlock();
  playerairplay_CopyPlayQueueItem(a1, 0, cf);
  if (cf[0] && (FigPlaybackItemGetFigBaseObject(), v6 = v5, (v7 = *(*(CMBaseObjectGetVTable() + 8) + 48)) != 0) && (v7(v6, @"HasEnabledAudio", *MEMORY[0x1E695E480], &BOOLean), BOOLean))
  {
    Value = CFBooleanGetValue(BOOLean);
  }

  else
  {
    Value = 0;
  }

  if (dword_1EAF172E8 >= 2)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (v3 == 0.0 || cf[0] == 0 || Value == 0)
  {
    if (!v4)
    {
      FigBytePumpGetFigBaseObject();
      v16 = v12;
      v13 = *(*(CMBaseObjectGetVTable() + 8) + 56);
      if (v13)
      {
        v14 = MEMORY[0x1E695E4C0];
LABEL_21:
        v13(v16, 0x1F0B34DD8, *v14);
      }
    }
  }

  else
  {
    FigBytePumpGetFigBaseObject();
    v16 = v15;
    v13 = *(*(CMBaseObjectGetVTable() + 8) + 56);
    if (v13)
    {
      v14 = MEMORY[0x1E695E4D0];
      goto LABEL_21;
    }
  }

  if (cf[0])
  {
    CFRelease(cf[0]);
  }

  if (BOOLean)
  {
    CFRelease(BOOLean);
  }
}

void __playerairplay_setBAOConnectionActiveIfNeeded_block_invoke(uint64_t a1)
{
  if (*(CMBaseObjectGetDerivedStorage() + 296))
  {
    v2 = *(a1 + 40);
    if (*(v2 + 1))
    {
      if (!*(v2 + 304))
      {
        v4 = playerairplay_copyPredictedFormatDescriptionForBAO(*(a1 + 32));
        v5 = *(*(a1 + 40) + 296);
        v6 = *(*(CMBaseObjectGetVTable() + 16) + 40);
        if (v6)
        {
          v6(v5, 1, 1, v4);
        }

        *(*(a1 + 40) + 304) = 1;
        if (v4)
        {
          CFRelease(v4);
        }
      }
    }
  }

  v3 = *(a1 + 32);
  if (v3)
  {

    CFRelease(v3);
  }
}

uint64_t playerairplay_CopyPlayQueueItem(uint64_t a1, const void *a2, void *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a2)
  {
    v6 = CMBaseObjectGetDerivedStorage();
  }

  else
  {
    v6 = 0;
  }

  v25 = 0;
  v26 = &v25;
  v27 = 0x2020000000;
  v28 = 0;
  if (*DerivedStorage || v6 && *(v6 + 72) || !a3)
  {
    goto LABEL_5;
  }

  v10 = *(CMBaseObjectGetDerivedStorage() + 216);
  if (v10 && v10 != 10)
  {
    v11 = *(DerivedStorage + 40);
    FigSimpleMutexLock();
    v12 = *(v11 + 16);
    FigSimpleMutexUnlock();
    if (v12)
    {
      if (a2)
      {
        v13 = *(DerivedStorage + 40);
        v14 = CMBaseObjectGetDerivedStorage();
        FigSimpleMutexLock();
        IndexOfAirPlayItemInternal = playqueue_getIndexOfAirPlayItemInternal(v13, a2);
        if (IndexOfAirPlayItemInternal == -1 || !*(v14 + 700))
        {
          FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v19, v20, v21);
        }

        else if (IndexOfAirPlayItemInternal + 1 < CFArrayGetCount(*v13))
        {
          ValueAtIndex = CFArrayGetValueAtIndex(*v13, IndexOfAirPlayItemInternal + 1);
          v17 = ValueAtIndex;
          if (ValueAtIndex)
          {
            CFRetain(ValueAtIndex);
          }

          goto LABEL_25;
        }

        v17 = 0;
LABEL_25:
        FigSimpleMutexUnlock();
        v8 = 0;
        v26[3] = v17;
        goto LABEL_28;
      }

      v18 = *(DerivedStorage + 112);
      v19 = MEMORY[0x1E69E9820];
      v20 = 3221225472;
      v21 = __playerairplay_CopyPlayQueueItem_block_invoke;
      v22 = &unk_1E7482510;
      v23 = &v25;
      v24 = DerivedStorage;
      dispatch_sync(v18, &v19);
    }

    v8 = 0;
    goto LABEL_28;
  }

  if (*(DerivedStorage + 8))
  {
    v8 = playerairplay_copyPlayQueueAirPlayItemFromSubPlayer();
LABEL_28:
    *a3 = v26[3];
    goto LABEL_6;
  }

LABEL_5:
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v19, v20, v21);
  v8 = v7;
LABEL_6:
  _Block_object_dispose(&v25, 8);
  return v8;
}

void sub_19662F240(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t itemairplay_copyLogs(const void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v23 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  memset(&v22, 0, sizeof(v22));
  HostTimeClock = CMClockGetHostTimeClock();
  CMClockGetTime(&v22, HostTimeClock);
  if (FigCFEqual())
  {
    memset(&v21, 0, sizeof(v21));
    lhs = v22;
    v19 = *(DerivedStorage + 384);
    CMTimeSubtract(&v21, &lhs, &v19);
    lhs = v21;
    *&v19.value = gLogRequestInterval;
    v19.epoch = 0;
    if ((CMTimeCompare(&lhs, &v19) & 0x80000000) == 0)
    {
      v8 = playerairplay_copyPropertyAndWaitTillCompleteOrTimesOut(a1, *MEMORY[0x1E6961EB0], 0, 500000000, &v23);
      if (!v8)
      {
        v9 = *(DerivedStorage + 368);
        v10 = v23;
        *(DerivedStorage + 368) = v23;
        if (v10)
        {
          CFRetain(v10);
        }

        if (v9)
        {
          CFRelease(v9);
        }

        v11 = CMClockGetHostTimeClock();
        CMClockGetTime(&lhs, v11);
        *(DerivedStorage + 384) = lhs;
        goto LABEL_20;
      }

LABEL_30:
      v17 = v8;
      goto LABEL_25;
    }

    v15 = *(DerivedStorage + 368);
    if (!v15)
    {
      goto LABEL_19;
    }

    goto LABEL_18;
  }

  if (!FigCFEqual())
  {
    goto LABEL_20;
  }

  memset(&v21, 0, sizeof(v21));
  lhs = v22;
  v19 = *(DerivedStorage + 408);
  CMTimeSubtract(&v21, &lhs, &v19);
  lhs = v21;
  *&v19.value = gLogRequestInterval;
  v19.epoch = 0;
  if ((CMTimeCompare(&lhs, &v19) & 0x80000000) == 0)
  {
    v8 = playerairplay_copyPropertyAndWaitTillCompleteOrTimesOut(a1, *MEMORY[0x1E6961EB8], 0, 500000000, &v23);
    if (!v8)
    {
      v12 = *(DerivedStorage + 376);
      v13 = v23;
      *(DerivedStorage + 376) = v23;
      if (v13)
      {
        CFRetain(v13);
      }

      if (v12)
      {
        CFRelease(v12);
      }

      v14 = CMClockGetHostTimeClock();
      CMClockGetTime(&lhs, v14);
      *(DerivedStorage + 408) = lhs;
      goto LABEL_20;
    }

    goto LABEL_30;
  }

  v15 = *(DerivedStorage + 376);
  if (v15)
  {
LABEL_18:
    v15 = CFRetain(v15);
  }

LABEL_19:
  v23 = v15;
LABEL_20:
  if (v23)
  {
    v16 = CFGetTypeID(v23);
    if (v16 == CFArrayGetTypeID() && CFArrayGetCount(v23) >= 1)
    {
      v17 = 0;
      *a4 = v23;
      return v17;
    }
  }

  v17 = 0;
  *a4 = 0;
LABEL_25:
  if (v23)
  {
    CFRelease(v23);
  }

  return v17;
}

uint64_t itemairplay_copyLoadedTimeRanges(uint64_t a1)
{
  CMBaseObjectGetDerivedStorage();
  v1 = FigCFWeakReferenceHolderCopyReferencedObject();
  v4 = 0;
  CMBaseObjectGetDerivedStorage();
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  FigCFDictionarySetValue();
  playerairplay_copyPropertyAndWaitTillCompleteOrTimesOut(v1, *MEMORY[0x1E6961E98], Mutable, 500000000, &v4);
  if (Mutable)
  {
    CFRelease(Mutable);
  }

  if (v1)
  {
    CFRelease(v1);
  }

  return v4;
}

uint64_t itemairplay_handleSetProperty(const void *a1, uint64_t a2, const void *a3, const __CFDictionary *a4, _BYTE *a5, void *a6, void *a7)
{
  if (!a1)
  {
    itemairplay_handleSetProperty_cold_14(&valuePtr);
    return LODWORD(valuePtr.value);
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 72))
  {
    itemairplay_handleSetProperty_cold_1(DerivedStorage, v15, v16, v17, v18, v19, v20, v21, v77, v79, SHIDWORD(v79), v81);
    return 0;
  }

  v22 = DerivedStorage;
  v80 = a5;
  v23 = FigCFWeakReferenceHolderCopyReferencedObject();
  v24 = CMBaseObjectGetDerivedStorage();
  if (!v24 || (v32 = v24, *v24))
  {
    itemairplay_handleSetProperty_cold_9(v24, v25, v26, v27, v28, v29, v30, v31, v77, v80, SHIDWORD(v80), v81);
    goto LABEL_78;
  }

  if (CFEqual(a3, @"EndTime"))
  {
    v33 = (v22 + 440);
    if (!a4)
    {
      v36 = 0;
      v38 = MEMORY[0x1E6960C70];
      *v33 = *MEMORY[0x1E6960C70];
      *(v22 + 456) = *(v38 + 16);
      goto LABEL_24;
    }

    CMTimeMakeFromDictionary(&valuePtr, a4);
    *v33 = *&valuePtr.value;
    *(v22 + 456) = valuePtr.epoch;
    v34 = *(CMBaseObjectGetDerivedStorage() + 216);
    if (v34)
    {
      v35 = v34 == 10;
    }

    else
    {
      v35 = 1;
    }

    if (!v35)
    {
      itemairplay_handleSetProperty_cold_2(v22);
    }

    goto LABEL_12;
  }

  if (CFEqual(a3, @"ReverseEndTime"))
  {
    if (!a4)
    {
      v36 = 0;
      v41 = MEMORY[0x1E6960C70];
      *(v22 + 464) = *MEMORY[0x1E6960C70];
      *(v22 + 480) = *(v41 + 16);
      goto LABEL_24;
    }

    CMTimeMakeFromDictionary(&valuePtr, a4);
    *(v22 + 464) = valuePtr;
    v36 = 0;
    v37 = *(CMBaseObjectGetDerivedStorage() + 216);
    if (v37 && v37 != 10)
    {
      itemairplay_handleSetProperty_cold_3(v22);
LABEL_12:
      v36 = 0;
    }

LABEL_24:
    *v80 = 0;
    if (a3)
    {
      v42 = CFRetain(a3);
    }

    else
    {
      v42 = 0;
    }

    *a6 = v42;
    if (a4)
    {
      v43 = CFRetain(a4);
    }

    else
    {
      v43 = 0;
    }

    *a7 = v43;
    goto LABEL_31;
  }

  if (CFEqual(a3, @"currentDate"))
  {
    v36 = 0;
    v39 = *(CMBaseObjectGetDerivedStorage() + 216);
    if (!v39 || v39 == 10)
    {
      goto LABEL_24;
    }

    v40 = itemairplay_SeekToDateWithID(a1, a4, 0);
    goto LABEL_40;
  }

  if (CFEqual(a3, @"estimatedCurrentDate"))
  {
    v36 = 0;
    v45 = *(CMBaseObjectGetDerivedStorage() + 216);
    if (!v45 || v45 == 10)
    {
      goto LABEL_24;
    }

    if (*(CMBaseObjectGetDerivedStorage() + 216) == 16 && *(v22 + 701))
    {
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF172E0, 4294954514, "<<<< FigPlayer_AP >>>>", 13029, v7);
LABEL_40:
      v36 = v40;
      goto LABEL_41;
    }

    itemairplay_handleSetProperty_cold_13(v22, a4);
    goto LABEL_76;
  }

  if (CFEqual(a3, @"SelectedMediaArray"))
  {
    if (!a4)
    {
      goto LABEL_12;
    }

    v47 = CFGetTypeID(a4);
    if (v47 != CFArrayGetTypeID())
    {
      goto LABEL_12;
    }

    if (v23)
    {
      CFRetain(v23);
    }

    CFRetain(a1);
    CFRetain(a4);
    v48 = *(v32 + 13);
    v90[0] = MEMORY[0x1E69E9820];
    v90[1] = 3221225472;
    v90[2] = __itemairplay_handleSetProperty_block_invoke;
    v90[3] = &__block_descriptor_72_e5_v8__0l;
    v90[4] = v22;
    v90[5] = v32;
    v90[6] = a4;
    v90[7] = v23;
    v90[8] = a1;
    v49 = v90;
    goto LABEL_65;
  }

  if (CFEqual(a3, @"MediaPresentationLanguages"))
  {
    if (!a4 || (v50 = CFGetTypeID(a4), v50 == CFDictionaryGetTypeID()))
    {
      if (v23)
      {
        CFRetain(v23);
      }

      CFRetain(a1);
      if (a4)
      {
        CFRetain(a4);
      }

      v48 = *(v32 + 13);
      v89[0] = MEMORY[0x1E69E9820];
      v89[1] = 3221225472;
      v89[2] = __itemairplay_handleSetProperty_block_invoke_2;
      v89[3] = &__block_descriptor_72_e5_v8__0l;
      v89[4] = v22;
      v89[5] = v32;
      v89[6] = a4;
      v89[7] = v23;
      v89[8] = a1;
      v49 = v89;
LABEL_65:
      dispatch_async(v48, v49);
      goto LABEL_12;
    }

    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF172E0, 4294954516, "<<<< FigPlayer_AP >>>>", 13102, v7);
    goto LABEL_80;
  }

  if (CFEqual(a3, @"kFigPlaybackItemProperty_MediaPresentationCharacteristics"))
  {
    if (!a4 || (v51 = CFGetTypeID(a4), v51 == CFDictionaryGetTypeID()))
    {
      if (v23)
      {
        CFRetain(v23);
      }

      CFRetain(a1);
      if (a4)
      {
        CFRetain(a4);
      }

      v48 = *(v32 + 13);
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __itemairplay_handleSetProperty_block_invoke_3;
      block[3] = &__block_descriptor_72_e5_v8__0l;
      block[4] = v22;
      block[5] = v32;
      block[6] = a4;
      block[7] = v23;
      block[8] = a1;
      v49 = block;
      goto LABEL_65;
    }

    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF172E0, 4294954516, "<<<< FigPlayer_AP >>>>", 13136, v7);
LABEL_80:
    v36 = v52;
    goto LABEL_24;
  }

  if (CFEqual(a3, @"MediaCharacteristicsForPreferredCustomMediaSelectionSchemes"))
  {
    if (a4)
    {
      v53 = CFGetTypeID(a4);
      if (v53 != CFArrayGetTypeID())
      {
        FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF172E0, 4294954516, "<<<< FigPlayer_AP >>>>", 13180, v7);
        goto LABEL_40;
      }
    }

    if (v23)
    {
      CFRetain(v23);
    }

    CFRetain(a1);
    if (a4)
    {
      CFRetain(a4);
    }

    v54 = *(v32 + 13);
    v87[0] = MEMORY[0x1E69E9820];
    v87[1] = 3221225472;
    v87[2] = __itemairplay_handleSetProperty_block_invoke_4;
    v87[3] = &__block_descriptor_72_e5_v8__0l;
    v87[4] = a4;
    v87[5] = v22;
    v87[6] = v32;
    v87[7] = v23;
    v87[8] = a1;
    dispatch_async(v54, v87);
LABEL_76:
    v36 = 0;
    goto LABEL_41;
  }

  if (CFEqual(a3, @"Restrictions"))
  {
    if (!a4 || (TypeID = CFNumberGetTypeID(), TypeID != CFGetTypeID(a4)))
    {
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF172E0, 4294954436, "<<<< FigPlayer_AP >>>>", 13207, v7);
      goto LABEL_40;
    }

    valuePtr.value = 0;
    CFNumberGetValue(a4, kCFNumberSInt64Type, &valuePtr);
    if (*(v22 + 688) != valuePtr.value)
    {
      *(v22 + 688) = valuePtr.value;
      v56 = *(CMBaseObjectGetDerivedStorage() + 216);
      if (v56)
      {
        if (v56 != 10)
        {
          itemairplay_handleSetProperty_cold_4(v22);
        }
      }
    }

    goto LABEL_76;
  }

  if (CFEqual(a3, @"AutomaticallyLoadedAssetProperties"))
  {
    itemairplay_handleSetProperty_cold_11();
    goto LABEL_12;
  }

  if (CFEqual(a3, @"AutomaticallyLoadedAssetTrackProperties"))
  {
    itemairplay_handleSetProperty_cold_12();
    goto LABEL_12;
  }

  if (CFEqual(a3, @"TextMarkupArray"))
  {
    v57 = *(v22 + 744);
    *(v22 + 744) = a4;
    if (a4)
    {
      CFRetain(a4);
    }

    if (v57)
    {
      CFRelease(v57);
    }

    if (!a4)
    {
      goto LABEL_12;
    }

    v36 = 0;
    v58 = *(CMBaseObjectGetDerivedStorage() + 216);
    if (v58 && v58 != 10)
    {
      itemairplay_handleSetProperty_cold_5(v22);
      goto LABEL_12;
    }

    goto LABEL_24;
  }

  if (!CFEqual(a3, @"CountOfTaggedRangeMetadataArrayListeners"))
  {
    if (CFEqual(a3, @"TimeToPauseBuffering"))
    {
      CMTimeMakeFromDictionary(&valuePtr, a4);
      *(v22 + 488) = valuePtr;
      v36 = 0;
      v64 = *(CMBaseObjectGetDerivedStorage() + 216);
      if (!v64 || v64 == 10)
      {
        goto LABEL_24;
      }

      if (v32[241] == 1)
      {
        v65 = *MEMORY[0x1E695E480];
        valuePtr = *(v22 + 488);
        v66 = CMTimeCopyAsDictionary(&valuePtr, v65);
        FigSimpleMutexLock();
        CFDictionarySetValue(*(v22 + 336), *MEMORY[0x1E6961EE8], v66);
        FigSimpleMutexUnlock();
        if (v66)
        {
          CFRelease(v66);
        }
      }

      else
      {
        itemairplay_NotifyReachedTimeToPauseBufferingIfFF(v23, a1);
      }

LABEL_155:
      playerairplay_triggerAsyncCheckAndUpdatePlayQueueItems(v23);
      goto LABEL_12;
    }

    if (CFEqual(a3, @"TimeToPausePlayback"))
    {
      memset(&valuePtr, 0, sizeof(valuePtr));
      CMTimeMakeFromDictionary(&valuePtr, a4);
      v67 = *(CMBaseObjectGetDerivedStorage() + 216);
      if (!v67 || v67 == 10)
      {
        *(v22 + 512) = valuePtr;
        goto LABEL_12;
      }

      v75 = *(v32 + 14);
      v82[0] = MEMORY[0x1E69E9820];
      v82[1] = 3221225472;
      v82[2] = __itemairplay_handleSetProperty_block_invoke_6;
      v82[3] = &__block_descriptor_88_e5_v8__0l;
      v83 = valuePtr;
      v82[4] = v22;
      v82[5] = v32;
      v82[6] = a1;
      v82[7] = v23;
      dispatch_sync(v75, v82);
      FigSimpleMutexLock();
      FigCFDictionarySetCMTime();
      FigSimpleMutexUnlock();
      goto LABEL_155;
    }

    if (CFEqual(a3, @"SnapTimeToPausePlayback"))
    {
      *(v22 + 158) = FigCFEqual();
      v36 = 0;
      v71 = *(CMBaseObjectGetDerivedStorage() + 216);
      if (v71 && v71 != 10)
      {
        itemairplay_handleSetProperty_cold_6();
        goto LABEL_12;
      }

      goto LABEL_24;
    }

    if (CFEqual(a3, @"interstitialLiveHorizon"))
    {
      CMTimeMakeFromDictionary(&valuePtr, a4);
      *(v22 + 536) = valuePtr;
      *(v22 + 560) = FigGetUpTimeNanoseconds();
      v36 = 0;
      v72 = *(CMBaseObjectGetDerivedStorage() + 216);
      if (v72)
      {
        v46 = v80;
        if (v72 != 10)
        {
          itemairplay_handleSetProperty_cold_7();
          v36 = 0;
        }

        goto LABEL_42;
      }

LABEL_41:
      v46 = v80;
LABEL_42:
      *v46 = 1;
      goto LABEL_31;
    }

    if (!CFEqual(a3, @"currentInterstitialEvent") && !CFEqual(a3, @"interstitialEvents") && !CFEqual(a3, @"timeToSwapPlayback"))
    {
      if (CFEqual(a3, @"TransientTimebaseForCoordinatedPlaybackSynchronization"))
      {
        FigSimpleMutexLock();
        v76 = *(v22 + 576);
        *(v22 + 576) = a4;
        if (a4)
        {
          CFRetain(a4);
        }

        if (v76)
        {
          CFRelease(v76);
        }

        FigSimpleMutexUnlock();
      }

      goto LABEL_12;
    }

    if (CFEqual(a3, @"currentInterstitialEvent"))
    {
      if (itemairplay_handleSetProperty_cold_10(v22, a4, &valuePtr))
      {
        goto LABEL_149;
      }

      value = valuePtr.value;
    }

    else
    {
      if (!CFEqual(a3, @"interstitialEvents"))
      {
        goto LABEL_149;
      }

      value = *(v22 + 776);
      *(v22 + 776) = a4;
      if (a4)
      {
        CFRetain(a4);
      }

      if (!value)
      {
        goto LABEL_149;
      }
    }

    CFRelease(value);
LABEL_149:
    if (!a4)
    {
      goto LABEL_12;
    }

    v36 = 0;
    v74 = *(CMBaseObjectGetDerivedStorage() + 216);
    if (v74 && v74 != 10)
    {
      itemairplay_handleSetProperty_cold_8(v22, a3, a4, v23);
      goto LABEL_12;
    }

    goto LABEL_24;
  }

  if (a4)
  {
    v59 = CFGetTypeID(a4);
    if (v59 == CFNumberGetTypeID())
    {
      v60 = (v22 + 792);
      v78 = *(v22 + 792);
      CFNumberGetValue(a4, kCFNumberCFIndexType, (v22 + 792));
      v36 = 0;
      v61 = *(CMBaseObjectGetDerivedStorage() + 216);
      if (!v61 || v61 == 10)
      {
        goto LABEL_24;
      }

      if (v78)
      {
        v62 = *v60;
        if (v78 >= 1 && !v62)
        {
          goto LABEL_111;
        }
      }

      else
      {
        v62 = *v60;
        if (*v60 > 0)
        {
LABEL_111:
          FigSimpleMutexLock();
          v63 = MEMORY[0x1E695E4D0];
          if (v78 >= *(v22 + 792))
          {
            v63 = MEMORY[0x1E695E4C0];
          }

          CFDictionarySetValue(*(v22 + 336), *MEMORY[0x1E6961E90], *v63);
          FigSimpleMutexUnlock();
          playerairplay_triggerAsyncCheckAndUpdatePlayQueueItems(v23);
          v62 = *(v22 + 792);
        }
      }

      if (v78 < v62)
      {
        valuePtr.value = 0;
        *&valuePtr.timescale = &valuePtr;
        valuePtr.epoch = 0x2020000000;
        v86 = 0;
        v68 = *(v32 + 14);
        v84[0] = MEMORY[0x1E69E9820];
        v84[1] = 3221225472;
        v84[2] = __itemairplay_handleSetProperty_block_invoke_5;
        v84[3] = &unk_1E7482510;
        v84[4] = &valuePtr;
        v84[5] = v22;
        dispatch_sync(v68, v84);
        v69 = *(*&valuePtr.timescale + 24);
        if (v69)
        {
          itemairplay_postTaggedRangeMetadataChangedNotificationIfNeeded(a1, v69);
          v70 = *(*&valuePtr.timescale + 24);
          if (v70)
          {
            CFRelease(v70);
          }
        }

        _Block_object_dispose(&valuePtr, 8);
      }

      goto LABEL_12;
    }
  }

LABEL_78:
  v36 = 0;
LABEL_31:
  if (v23)
  {
    CFRelease(v23);
  }

  return v36;
}

void sub_1966304F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, ...)
{
  va_start(va, a30);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t itemairplay_SeekToDateWithID(uint64_t a1, void *a2, uint64_t a3)
{
  keys[2] = *MEMORY[0x1E69E9840];
  valuePtr = a3;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!a2)
  {
    itemairplay_SeekToDateWithID_cold_4(keys);
    return LODWORD(keys[0]);
  }

  v6 = DerivedStorage;
  if (*(DerivedStorage + 72))
  {
    itemairplay_SeekToDateWithID_cold_1(keys);
    return LODWORD(keys[0]);
  }

  v7 = FigCFWeakReferenceHolderCopyReferencedObject();
  v8 = CMBaseObjectGetDerivedStorage();
  if (!v8 || *v8)
  {
    itemairplay_SeekToDateWithID_cold_3(keys);
    v13 = LODWORD(keys[0]);
    if (!v7)
    {
      return v13;
    }

    goto LABEL_25;
  }

  v9 = *(CMBaseObjectGetDerivedStorage() + 216);
  if (v9)
  {
    v10 = v9 == 10;
  }

  else
  {
    v10 = 1;
  }

  if (v10)
  {
    v11 = *(v6 + 8);
    v12 = *(*(CMBaseObjectGetVTable() + 16) + 128);
    if (v12)
    {
      v13 = v12(v11, a2, a3);
      if (!v7)
      {
        return v13;
      }
    }

    else
    {
      v13 = 4294954514;
      if (!v7)
      {
        return v13;
      }
    }

    goto LABEL_25;
  }

  if ((*(CMBaseObjectGetDerivedStorage() + 216) - 14) <= 2)
  {
    keys[0] = @"Date";
    keys[1] = @"SeekID";
    values = a2;
    v14 = *MEMORY[0x1E695E480];
    cf = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt32Type, &valuePtr);
    v15 = CFDictionaryCreate(v14, keys, &values, 2, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    if (cf)
    {
      CFRelease(cf);
    }

    if (v15)
    {
      itemairplay_SeekToDateWithID_cold_2(v6);
    }

    v13 = 0;
    if (!v7)
    {
      return v13;
    }

LABEL_25:
    CFRelease(v7);
    return v13;
  }

  v16 = *(v6 + 192);
  *(v6 + 192) = a2;
  CFRetain(a2);
  if (v16)
  {
    CFRelease(v16);
  }

  v13 = 0;
  *(v6 + 224) = 0;
  if (v7)
  {
    goto LABEL_25;
  }

  return v13;
}

CFTypeRef __itemairplay_handleSetProperty_block_invoke_5(uint64_t a1)
{
  result = *(*(a1 + 40) + 800);
  if (result)
  {
    result = CFRetain(result);
  }

  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

void __itemairplay_handleSetProperty_block_invoke_6(uint64_t a1)
{
  v31 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  lhs = *(a1 + 64);
  rhs = *(v2 + 512);
  CMTimeSubtract(&time, &lhs, &rhs);
  CMTimeAbsoluteValue(&lhs, &time);
  CMTimeMake(&time, 10, 1000);
  if ((CMTimeCompare(&lhs, &time) & 0x80000000) == 0)
  {
    v3 = *(a1 + 32) + 512;
    if ((*(a1 + 76) & 1) == 0)
    {
      v4 = MEMORY[0x1E6960C70];
      *v3 = *MEMORY[0x1E6960C70];
      *(v3 + 16) = *(v4 + 16);
      itemairplay_resetTimeToPausePlayback(*(a1 + 56), *(a1 + 48));
      return;
    }

    v5 = *(a1 + 64);
    *(*(a1 + 32) + 528) = *(a1 + 80);
    *v3 = v5;
    if (!*(*(a1 + 40) + 241))
    {
      v6 = *(a1 + 48);
      v7 = *(a1 + 32);
      rhs = *(v7 + 512);
      DerivedStorage = CMBaseObjectGetDerivedStorage();
      v9 = FigCFWeakReferenceHolderCopyReferencedObject();
      v10 = CMBaseObjectGetDerivedStorage();
      v11 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 1uLL, *(v10 + 112));
      if (v11)
      {
        v12 = v11;
        v13 = FigCFWeakReferenceHolderCreateWithReferencedObject();
        dispatch_set_context(v12, v13);
        dispatch_source_set_timer(v12, 0xFFFFFFFFFFFFFFFFLL, 0xFFFFFFFFFFFFFFFFLL, 0x989680uLL);
        dispatch_source_set_event_handler_f(v12, pap_emulateTimeToPausePlaybackTimerProc);
        dispatch_source_set_cancel_handler_f(v12, 0);
        dispatch_set_finalizer_f(v12, FigCFRelease_5);
        dispatch_resume(v12);
        if (!CMTimebaseAddTimerDispatchSource(*(DerivedStorage + 568), v12))
        {
          v14 = *(DerivedStorage + 568);
          lhs = rhs;
          if (!CMTimebaseSetTimerDispatchSourceNextFireTime(v14, v12, &lhs, 1u))
          {
            if (dword_1EAF172E8)
            {
              v25 = 0;
              type = OS_LOG_TYPE_DEFAULT;
              os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
              v16 = v25;
              v17 = type;
              if (os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, type))
              {
                v18 = v16;
              }

              else
              {
                v18 = v16 & 0xFFFFFFFE;
              }

              if (v18)
              {
                lhs = rhs;
                Seconds = CMTimeGetSeconds(&lhs);
                CMTimebaseGetTime(&lhs, *(DerivedStorage + 568));
                v20 = CMTimeGetSeconds(&lhs);
                LODWORD(time.value) = 136315906;
                *(&time.value + 4) = "pap_createAndPrimeAirPlayTimer";
                LOWORD(time.flags) = 2048;
                *(&time.flags + 2) = v6;
                HIWORD(time.epoch) = 2048;
                v27 = Seconds;
                v28 = 2048;
                v29 = v20;
                _os_log_send_and_compose_impl(v18, 0, &lhs, 128, &dword_1962D5000, os_log_and_send_and_compose_flags_and_os_log_type, v17, "<<<< FigPlayer_AP >>>> %s: %p: scheduled timer for %f, currently %f", &time, 42, *&rhs.value, *&rhs.timescale);
              }

              fig_log_call_emit_and_clean_up_after_send_and_compose();
            }

            *(v7 + 328) = v12;
            if (!v9)
            {
              goto LABEL_19;
            }

            goto LABEL_18;
          }
        }

        CFRelease(v12);
        if (!v9)
        {
LABEL_19:
          if (!*(*(a1 + 40) + 241) && pap_hasAirPlayReachedTimeToPausePlayback(*(a1 + 56), *(a1 + 48)))
          {
            pap_handleAirPlayReachedTimeToPausePlayback(*(a1 + 56), *(a1 + 48));
          }

          return;
        }
      }

      else
      {
        FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v21, v22, LODWORD(rhs.value));
        if (!v9)
        {
          goto LABEL_19;
        }
      }

LABEL_18:
      CFRelease(v9);
      goto LABEL_19;
    }
  }
}

void pap_emulateTimeToPausePlaybackTimerProc(uint64_t a1)
{
  v1 = FigCFWeakReferenceHolderCopyReferencedObject();
  if (v1)
  {
    v2 = v1;
    CMBaseObjectGetDerivedStorage();
    v3 = FigCFWeakReferenceHolderCopyReferencedObject();
    if (v3)
    {
      v4 = v3;
      if (pap_hasAirPlayReachedTimeToPausePlayback(v3, v2))
      {
        pap_handleAirPlayReachedTimeToPausePlayback(v4, v2);
      }

      CFRelease(v2);
    }

    else
    {
      v4 = v2;
    }

    CFRelease(v4);
  }
}

uint64_t itemairplay_GetDimensions(uint64_t a1, uint64_t a2, uint64_t a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 72))
  {
    itemairplay_GetDimensions_cold_1(&v13);
    return v13;
  }

  v6 = DerivedStorage;
  v7 = FigCFWeakReferenceHolderCopyReferencedObject();
  v8 = CMBaseObjectGetDerivedStorage();
  if (!v8 || *v8)
  {
    itemairplay_GetDimensions_cold_2(&v14);
    v11 = v14;
    if (!v7)
    {
      return v11;
    }

    goto LABEL_8;
  }

  v9 = *(v6 + 8);
  v10 = *(*(CMBaseObjectGetVTable() + 16) + 8);
  if (v10)
  {
    v11 = v10(v9, a2, a3);
    if (!v7)
    {
      return v11;
    }

    goto LABEL_8;
  }

  v11 = 4294954514;
  if (v7)
  {
LABEL_8:
    CFRelease(v7);
  }

  return v11;
}

uint64_t itemairplay_GetDuration(uint64_t a1, CMTime *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v24 = **&MEMORY[0x1E6960C70];
  if (*(DerivedStorage + 72))
  {
    itemairplay_GetDuration_cold_1(&v21);
    v5 = 0;
    goto LABEL_41;
  }

  v4 = DerivedStorage;
  v5 = FigCFWeakReferenceHolderCopyReferencedObject();
  v6 = CMBaseObjectGetDerivedStorage();
  if (!v6 || *v6)
  {
    itemairplay_GetDuration_cold_2(&v21);
LABEL_41:
    value_low = LODWORD(v21.value);
    goto LABEL_24;
  }

  v7 = *(CMBaseObjectGetDerivedStorage() + 216);
  if (v7)
  {
    v8 = v7 == 10;
  }

  else
  {
    v8 = 1;
  }

  if (!v8)
  {
    if ((*(v4 + 240) & 1) == 0)
    {
      value_low = 0;
      goto LABEL_18;
    }

LABEL_17:
    value_low = 0;
    v24 = *(v4 + 228);
    goto LABEL_18;
  }

  v9 = *(v4 + 8);
  v10 = *(*(CMBaseObjectGetVTable() + 16) + 16);
  if (v10)
  {
    value_low = v10(v9, &v24);
    if (!value_low)
    {
      *(v4 + 228) = v24;
      goto LABEL_18;
    }
  }

  else
  {
    value_low = 4294954514;
  }

  if (*(v4 + 240))
  {
    goto LABEL_17;
  }

LABEL_18:
  if ((v24.flags & 1) == 0)
  {
    v12 = *(CMBaseObjectGetDerivedStorage() + 216);
    if (v12 && v12 != 10)
    {
      v15 = *(v4 + 16);
      if (v15)
      {
        v23 = 0;
        v16 = *(*(CMBaseObjectGetVTable() + 16) + 24);
        if (v16)
        {
          v16(v15, @"Duration", &v23);
          if (v23)
          {
            dictionaryRepresentation = 0;
            FigAssetGetCMBaseObject();
            v18 = v17;
            v19 = *(*(CMBaseObjectGetVTable() + 8) + 48);
            if (v19)
            {
              value_low = v19(v18, @"Duration", *MEMORY[0x1E695E480], &dictionaryRepresentation);
              v20 = dictionaryRepresentation;
              if (!value_low && dictionaryRepresentation)
              {
                CMTimeMakeFromDictionary(&v21, dictionaryRepresentation);
                v24 = v21;
                v20 = dictionaryRepresentation;
              }

              if (v20)
              {
                CFRelease(v20);
              }
            }

            else
            {
              value_low = 4294954514;
            }
          }
        }
      }
    }
  }

LABEL_24:
  if (!value_low)
  {
    *a2 = v24;
  }

  if (v5)
  {
    CFRelease(v5);
  }

  return value_low;
}

uint64_t itemairplay_SetCurrentTime(const void *a1, CMTime *a2, uint64_t a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 72))
  {
    itemairplay_SetCurrentTime_cold_1(&v18);
    return LODWORD(v18.value);
  }

  v7 = DerivedStorage;
  v8 = FigCFWeakReferenceHolderCopyReferencedObject();
  v9 = CMBaseObjectGetDerivedStorage();
  if (!v9 || *v9)
  {
    itemairplay_SetCurrentTime_cold_2(&v18);
    value_low = LODWORD(v18.value);
    if (!v8)
    {
      return value_low;
    }

    goto LABEL_14;
  }

  v17 = *a2;
  itemairplay_filterSetCurrentTime(&v17, &v18);
  *a2 = v18;
  v10 = *(CMBaseObjectGetDerivedStorage() + 216);
  if (v10)
  {
    v11 = v10 == 10;
  }

  else
  {
    v11 = 1;
  }

  if (v11)
  {
    v12 = *(v7 + 8);
    v17 = *a2;
    v13 = *(*(CMBaseObjectGetVTable() + 16) + 24);
    if (!v13)
    {
      value_low = 4294954514;
      if (!v8)
      {
        return value_low;
      }

      goto LABEL_14;
    }

    v18 = v17;
    v15 = v13(v12, &v18, a3);
  }

  else
  {
    v18 = *a2;
    v15 = itemairplay_airplaySetCurrentTime(a1, &v18, a3, 0, 0, 0);
  }

  value_low = v15;
  if (v8)
  {
LABEL_14:
    CFRelease(v8);
  }

  return value_low;
}

uint64_t itemairplay_CopyTrackProperty(CFTypeRef a1, uint64_t a2, const void *a3, uint64_t a4, CFTypeRef *a5)
{
  v35 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  cf = 0;
  if (*(DerivedStorage + 72))
  {
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF172E0, 4294954511, "<<<< FigPlayer_AP >>>>", 14090, v5);
LABEL_5:
    v13 = v12;
    v14 = 0;
    goto LABEL_6;
  }

  if (!a5)
  {
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF172E0, 4294954516, "<<<< FigPlayer_AP >>>>", 14096, v5);
    goto LABEL_5;
  }

  v16 = DerivedStorage;
  v14 = FigCFWeakReferenceHolderCopyReferencedObject();
  v17 = CMBaseObjectGetDerivedStorage();
  if (!v17 || *v17)
  {
    itemairplay_CopyTrackProperty_cold_1(v34);
    v13 = v34[0];
    goto LABEL_6;
  }

  playqueue_copyCurrentClientPlayQueueItemAndCurrentMediaControlPlayListItem(*(v17 + 40), 0, &cf);
  v18 = *(CMBaseObjectGetDerivedStorage() + 216);
  if (v18)
  {
    v19 = v18 == 10;
  }

  else
  {
    v19 = 1;
  }

  if (v19 || (v22 = CFEqual(a3, @"Enabled"), v22 ? (v23 = cf == a1) : (v23 = 0), !v23 || *(CMBaseObjectGetDerivedStorage() + 216) != 16))
  {
    v20 = *(v16 + 8);
    v21 = *(*(CMBaseObjectGetVTable() + 16) + 40);
    if (v21)
    {
      v13 = v21(v20, a2, a3, a4, a5);
    }

    else
    {
      v13 = 4294954514;
    }

    goto LABEL_6;
  }

  v32 = 0;
  valuePtr = 0;
  CMBaseObjectGetDerivedStorage();
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  FigCFDictionarySetValue();
  FigCFDictionarySetInt32();
  playerairplay_copyPropertyAndWaitTillCompleteOrTimesOut(v14, *MEMORY[0x1E6961E70], Mutable, 100000000, &v32);
  if (!v32)
  {
    goto LABEL_35;
  }

  v25 = CFGetTypeID(v32);
  if (v25 == CFNumberGetTypeID())
  {
    CFNumberGetValue(v32, kCFNumberSInt32Type, &valuePtr);
    if (valuePtr)
    {
      v26 = MEMORY[0x1E695E4D0];
LABEL_36:
      v29 = *v26;
      goto LABEL_37;
    }

LABEL_35:
    v26 = MEMORY[0x1E695E4C0];
    goto LABEL_36;
  }

  if (!v32)
  {
    goto LABEL_35;
  }

  v27 = CFGetTypeID(v32);
  TypeID = CFBooleanGetTypeID();
  v29 = v32;
  if (v27 != TypeID)
  {
    if (v32)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    goto LABEL_35;
  }

LABEL_37:
  *a5 = CFRetain(v29);
  if (v32)
  {
    CFRelease(v32);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  v13 = 0;
LABEL_6:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v14)
  {
    CFRelease(v14);
  }

  return v13;
}

uint64_t itemairplay_CopyCommonMetadata(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 72))
  {
    itemairplay_CopyCommonMetadata_cold_1(&v15);
    return v15;
  }

  v8 = DerivedStorage;
  v9 = FigCFWeakReferenceHolderCopyReferencedObject();
  v10 = CMBaseObjectGetDerivedStorage();
  if (!v10 || *v10)
  {
    itemairplay_CopyCommonMetadata_cold_2(&v16);
    v13 = v16;
    if (!v9)
    {
      return v13;
    }

    goto LABEL_8;
  }

  v11 = *(v8 + 8);
  v12 = *(*(CMBaseObjectGetVTable() + 16) + 64);
  if (v12)
  {
    v13 = v12(v11, a2, a3, a4);
    if (!v9)
    {
      return v13;
    }

    goto LABEL_8;
  }

  v13 = 4294954514;
  if (v9)
  {
LABEL_8:
    CFRelease(v9);
  }

  return v13;
}

uint64_t itemairplay_CopyChapterImageData(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 72))
  {
    itemairplay_CopyChapterImageData_cold_1(&v15);
    return v15;
  }

  v8 = DerivedStorage;
  v9 = FigCFWeakReferenceHolderCopyReferencedObject();
  v10 = CMBaseObjectGetDerivedStorage();
  if (!v10 || *v10)
  {
    itemairplay_CopyChapterImageData_cold_2(&v16);
    v13 = v16;
    if (!v9)
    {
      return v13;
    }

    goto LABEL_8;
  }

  v11 = *(v8 + 8);
  v12 = *(*(CMBaseObjectGetVTable() + 16) + 72);
  if (v12)
  {
    v13 = v12(v11, a2, a3, a4);
    if (!v9)
    {
      return v13;
    }

    goto LABEL_8;
  }

  v13 = 4294954514;
  if (v9)
  {
LABEL_8:
    CFRelease(v9);
  }

  return v13;
}

uint64_t itemairplay_GetNextThumbnailTime(uint64_t a1, __int128 *a2, uint64_t a3, uint64_t a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 72))
  {
    itemairplay_GetNextThumbnailTime_cold_1(&v17);
    return v17;
  }

  v8 = DerivedStorage;
  v9 = FigCFWeakReferenceHolderCopyReferencedObject();
  v10 = CMBaseObjectGetDerivedStorage();
  if (!v10 || *v10)
  {
    itemairplay_GetNextThumbnailTime_cold_2(&v17);
    v13 = v17;
    if (!v9)
    {
      return v13;
    }

    goto LABEL_8;
  }

  v11 = *(v8 + 8);
  v15 = *a2;
  v16 = *(a2 + 2);
  v12 = *(*(CMBaseObjectGetVTable() + 16) + 80);
  if (v12)
  {
    v17 = v15;
    v18 = v16;
    v13 = v12(v11, &v17, a3, a4);
    if (!v9)
    {
      return v13;
    }

    goto LABEL_8;
  }

  v13 = 4294954514;
  if (v9)
  {
LABEL_8:
    CFRelease(v9);
  }

  return v13;
}

uint64_t itemairplay_SetCurrentTimeWithRange(const void *a1, __int128 *a2, uint64_t a3, __int128 *a4, __int128 *a5)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 72))
  {
    itemairplay_SetCurrentTimeWithRange_cold_1(&v28);
    return LODWORD(v28.value);
  }

  v11 = DerivedStorage;
  v12 = FigCFWeakReferenceHolderCopyReferencedObject();
  v13 = CMBaseObjectGetDerivedStorage();
  if (!v13 || *v13)
  {
    itemairplay_SetCurrentTimeWithRange_cold_2(&v28);
    value_low = LODWORD(v28.value);
    if (!v12)
    {
      return value_low;
    }

    goto LABEL_17;
  }

  v27 = *a2;
  itemairplay_filterSetCurrentTime(&v27, &v28);
  *a2 = v28;
  v14 = *(CMBaseObjectGetDerivedStorage() + 216);
  if (v14)
  {
    v15 = v14 == 10;
  }

  else
  {
    v15 = 1;
  }

  if (v15)
  {
    v16 = *(v11 + 8);
    *&v24.value = *a2;
    v24.epoch = *(a2 + 2);
    *&v23.value = *a4;
    v23.epoch = *(a4 + 2);
    v21 = *a5;
    v22 = *(a5 + 2);
    v17 = *(*(CMBaseObjectGetVTable() + 16) + 104);
    if (v17)
    {
      v28 = v24;
      v27 = v23;
      v25 = v21;
      v26 = v22;
      value_low = v17(v16, &v28, a3, &v27, &v25);
      if (!v12)
      {
        return value_low;
      }
    }

    else
    {
      value_low = 4294954514;
      if (!v12)
      {
        return value_low;
      }
    }

    goto LABEL_17;
  }

  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v28 = *a4;
  FigCFDictionarySetCMTime();
  v28 = *a5;
  FigCFDictionarySetCMTime();
  v28 = *a2;
  value_low = itemairplay_airplaySetCurrentTime(a1, &v28, a3, 0, 0, Mutable);
  if (Mutable)
  {
    CFRelease(Mutable);
  }

  if (v12)
  {
LABEL_17:
    CFRelease(v12);
  }

  return value_low;
}

void itemairplay_SetTrackProperty(uint64_t a1, uint64_t a2, const void *a3, const void *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 72))
  {
    v9 = qword_1EAF172E0;

    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v9, 4294954511, "<<<< FigPlayer_AP >>>>", 14179, v4);
    return;
  }

  v10 = DerivedStorage;
  v11 = FigCFWeakReferenceHolderCopyReferencedObject();
  v12 = CMBaseObjectGetDerivedStorage();
  if (!v12 || *v12)
  {
    itemairplay_SetTrackProperty_cold_2(&v26);
    goto LABEL_14;
  }

  v13 = *(CMBaseObjectGetDerivedStorage() + 216);
  if (v13)
  {
    v14 = v13 == 10;
  }

  else
  {
    v14 = 1;
  }

  if (v14 || (v17 = CFEqual(a3, @"Enabled"), !a4 || !v17 || (v18 = CFGetTypeID(a4), v18 != CFBooleanGetTypeID()) || (*(CMBaseObjectGetDerivedStorage() + 216) - 14) > 2))
  {
    v15 = *(v10 + 8);
    v16 = *(*(CMBaseObjectGetVTable() + 16) + 112);
    if (v16)
    {
      v16(v15, a2, a3, a4);
    }

    goto LABEL_14;
  }

  FigSimpleMutexLock();
  v19 = *MEMORY[0x1E6961E70];
  Value = CFDictionaryGetValue(*(v10 + 336), *MEMORY[0x1E6961E70]);
  if (Value)
  {
    v23 = Value;
    CFRetain(Value);
    v21 = *MEMORY[0x1E695E480];
    goto LABEL_25;
  }

  v21 = *MEMORY[0x1E695E480];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (Mutable)
  {
    v23 = Mutable;
    CFDictionarySetValue(*(v10 + 336), v19, Mutable);
LABEL_25:
    v24 = CFStringCreateWithFormat(v21, 0, @"%d", a2);
    if (v24)
    {
      v25 = v24;
      CFDictionarySetValue(v23, v24, a4);
      FigSimpleMutexUnlock();
      playerairplay_triggerAsyncCheckAndUpdatePlayQueueItems(v11);
      CFRelease(v25);
      CFRelease(v23);
      goto LABEL_14;
    }

    CFRelease(v23);
  }

  itemairplay_SetTrackProperty_cold_1();
LABEL_14:
  if (v11)
  {
    CFRelease(v11);
  }
}

void itemairplay_CopyFormatReader(uint64_t a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 72))
  {
    v5 = qword_1EAF172E0;

    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v5, 4294954511, "<<<< FigPlayer_AP >>>>", 14329, v2);
  }

  else
  {
    v6 = DerivedStorage;
    v7 = FigCFWeakReferenceHolderCopyReferencedObject();
    v8 = CMBaseObjectGetDerivedStorage();
    if (!v8 || *v8)
    {
      itemairplay_CopyFormatReader_cold_1(&v11);
      if (!v7)
      {
        return;
      }
    }

    else
    {
      v9 = *(v6 + 8);
      v10 = *(*(CMBaseObjectGetVTable() + 16) + 120);
      if (v10)
      {
        v10(v9, a2);
        if (!v7)
        {
          return;
        }
      }

      else if (!v7)
      {
        return;
      }
    }

    CFRelease(v7);
  }
}

uint64_t itemairplay_SetCurrentTimeWithRangeAndID(const void *a1, __int128 *a2, uint64_t a3, __int128 *a4, __int128 *a5, uint64_t a6)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 72))
  {
    itemairplay_SetCurrentTimeWithRangeAndID_cold_1(&v30);
    return LODWORD(v30.value);
  }

  v13 = DerivedStorage;
  v14 = FigCFWeakReferenceHolderCopyReferencedObject();
  v15 = CMBaseObjectGetDerivedStorage();
  if (!v15 || *v15)
  {
    itemairplay_SetCurrentTimeWithRangeAndID_cold_2(&v30);
    value_low = LODWORD(v30.value);
    if (!v14)
    {
      return value_low;
    }

    goto LABEL_17;
  }

  v29 = *a2;
  itemairplay_filterSetCurrentTime(&v29, &v30);
  *a2 = v30;
  v16 = *(CMBaseObjectGetDerivedStorage() + 216);
  if (v16)
  {
    v17 = v16 == 10;
  }

  else
  {
    v17 = 1;
  }

  if (v17)
  {
    v18 = *(v13 + 8);
    *&v26.value = *a2;
    v26.epoch = *(a2 + 2);
    *&v25.value = *a4;
    v25.epoch = *(a4 + 2);
    v23 = *a5;
    v24 = *(a5 + 2);
    v19 = *(*(CMBaseObjectGetVTable() + 16) + 144);
    if (v19)
    {
      v30 = v26;
      v29 = v25;
      v27 = v23;
      v28 = v24;
      value_low = v19(v18, &v30, a3, &v29, &v27, a6);
      if (!v14)
      {
        return value_low;
      }
    }

    else
    {
      value_low = 4294954514;
      if (!v14)
      {
        return value_low;
      }
    }

    goto LABEL_17;
  }

  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v30 = *a4;
  FigCFDictionarySetCMTime();
  v30 = *a5;
  FigCFDictionarySetCMTime();
  v30 = *a2;
  value_low = itemairplay_airplaySetCurrentTime(a1, &v30, a3, 1, a6, Mutable);
  if (Mutable)
  {
    CFRelease(Mutable);
  }

  if (v14)
  {
LABEL_17:
    CFRelease(v14);
  }

  return value_low;
}

void itemairplay_CopyAsset(uint64_t a1, void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 72))
  {
    v5 = qword_1EAF172E0;

    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v5, 4294954511, "<<<< FigPlayer_AP >>>>", 14358, v2);
    return;
  }

  v6 = DerivedStorage;
  v7 = FigCFWeakReferenceHolderCopyReferencedObject();
  v8 = CMBaseObjectGetDerivedStorage();
  if (!v8 || *v8)
  {
    itemairplay_CopyAsset_cold_1(&v10);
    if (!v7)
    {
      return;
    }

    goto LABEL_10;
  }

  v9 = *(v6 + 16);
  if (v9)
  {
    v9 = CFRetain(v9);
  }

  *a2 = v9;
  if (v7)
  {
LABEL_10:
    CFRelease(v7);
  }
}

void itemairplay_ExtractAndRetainNextSampleBuffer(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!*(DerivedStorage + 72))
  {
    v10 = DerivedStorage;
    v11 = FigCFWeakReferenceHolderCopyReferencedObject();
    v12 = CMBaseObjectGetDerivedStorage();
    if (!v12 || *v12)
    {
      itemairplay_ExtractAndRetainNextSampleBuffer_cold_1(v19);
      if (!v11)
      {
        return;
      }
    }

    else
    {
      v13 = *(CMBaseObjectGetDerivedStorage() + 216);
      if (v13)
      {
        v14 = v13 == 10;
      }

      else
      {
        v14 = 1;
      }

      if (!v14)
      {
        FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v17, v18, v19[1]);
        goto LABEL_16;
      }

      v15 = *(v10 + 8);
      v16 = *(*(CMBaseObjectGetVTable() + 16) + 168);
      if (v16)
      {
        v16(v15, a2, a3, a4);
LABEL_16:
        if (!v11)
        {
          return;
        }

        goto LABEL_17;
      }

      if (!v11)
      {
        return;
      }
    }

LABEL_17:
    CFRelease(v11);
    return;
  }

  v9 = qword_1EAF172E0;

  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v9, 4294954511, "<<<< FigPlayer_AP >>>>", 14389, v4);
}

uint64_t itemairplay_SetCurrentTimeWithOptions(const void *a1, CMTime *a2, uint64_t a3)
{
  v19 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 72))
  {
    itemairplay_SetCurrentTimeWithOptions_cold_1(&time1);
    return LODWORD(time1.value);
  }

  v7 = DerivedStorage;
  v8 = FigCFWeakReferenceHolderCopyReferencedObject();
  v9 = CMBaseObjectGetDerivedStorage();
  if (!v9 || *v9)
  {
    itemairplay_SetCurrentTimeWithOptions_cold_2(&time1);
    value_low = LODWORD(time1.value);
  }

  else
  {
    time2 = *a2;
    itemairplay_filterSetCurrentTime(&time2, &time1);
    *a2 = time1;
    v10 = *(CMBaseObjectGetDerivedStorage() + 216);
    if (v10)
    {
      v11 = v10 == 10;
    }

    else
    {
      v11 = 1;
    }

    if (v11)
    {
      v12 = *(v7 + 8);
      time2 = *a2;
      v13 = *(*(CMBaseObjectGetVTable() + 16) + 176);
      if (!v13)
      {
        value_low = 4294954514;
        goto LABEL_13;
      }

      time1 = time2;
      v15 = v13(v12, &time1, a3);
    }

    else
    {
      FigCFDictionaryGetInt32IfPresent();
      FigCFDictionaryGetInt32IfPresent();
      FigCFDictionaryGetBooleanIfPresent();
      time1 = *a2;
      v15 = itemairplay_airplaySetCurrentTime(a1, &time1, 0, 0, 0, a3);
    }

    value_low = v15;
  }

LABEL_13:
  if (v8)
  {
    CFRelease(v8);
  }

  return value_low;
}

__n128 itemairplay_filterSetCurrentTime@<Q0>(CMTime *a2@<X1>, uint64_t a3@<X8>)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 548))
  {
    memset(&v9, 0, sizeof(v9));
    itemairplay_getCurrentInterstitialLiveHorizon(DerivedStorage, &v9);
    time1 = *a2;
    v7 = v9;
    if (CMTimeCompare(&time1, &v7) >= 1)
    {
      *a2 = v9;
    }
  }

  result = *&a2->value;
  *a3 = *&a2->value;
  *(a3 + 16) = a2->epoch;
  return result;
}

void playerairplay_AddToPlayQueue(const void *a1, const void *a2, const void *a3)
{
  v21 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v8 = CMBaseObjectGetDerivedStorage();
  if (a3)
  {
    v9 = CMBaseObjectGetDerivedStorage();
  }

  else
  {
    v9 = 0;
  }

  if (dword_1EAF172E8)
  {
    CMBaseObjectGetDerivedStorage();
  }

  if (*DerivedStorage)
  {
    v10 = qword_1EAF172E0;
    v11 = v3;
    v12 = 8076;
LABEL_10:

    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v10, 4294954511, "<<<< FigPlayer_AP >>>>", v12, v11);
    return;
  }

  if (*(v8 + 72))
  {
    v10 = qword_1EAF172E0;
    v11 = v3;
    v12 = 8082;
    goto LABEL_10;
  }

  if (v9 && *(v9 + 72))
  {
    v10 = qword_1EAF172E0;
    v11 = v3;
    v12 = 8088;
    goto LABEL_10;
  }

  FigAtomicIncrement32();
  *(v8 + 708) = 0;
  v13 = *(CMBaseObjectGetDerivedStorage() + 216);
  if (!v13 || v13 == 10 || *(DerivedStorage + 216) == 11 && *(DerivedStorage + 56) == 0.0 && !playerairplay_isPrimaryForNativeInterstitialsInAPVPlayback(a1))
  {

    playerairplay_addItemToSubPlayerPlayQueue(a1, a2, a3);
  }

  else
  {
    if (dword_1EAF172E8)
    {
      v14 = CMBaseObjectGetDerivedStorage();
      if (dword_1EAF172E8)
      {
        v15 = *(v14 + 216);
        if (v15)
        {
          if (v15 != 10)
          {
            v20 = 0;
            type = OS_LOG_TYPE_DEFAULT;
            os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
            fig_log_call_emit_and_clean_up_after_send_and_compose();
          }
        }
      }
    }

    if (*(DerivedStorage + 50))
    {
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

      v17 = *(DerivedStorage + 112);
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __playerairplay_AddToPlayQueue_block_invoke;
      block[3] = &__block_descriptor_64_e5_v8__0l;
      block[4] = DerivedStorage;
      block[5] = a1;
      block[6] = a2;
      block[7] = a3;
      dispatch_async(v17, block);
    }

    else
    {
      playerairplay_addItemToLocalPlayQueue(a1, a2, a3);
    }
  }
}

void playerairplay_RemoveFromPlayQueue(const void *a1, const void *a2)
{
  v18 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a2)
  {
    v6 = CMBaseObjectGetDerivedStorage();
  }

  else
  {
    v6 = 0;
  }

  if (dword_1EAF172E8)
  {
    CMBaseObjectGetDerivedStorage();
  }

  if (*DerivedStorage)
  {
    v7 = qword_1EAF172E0;
    v8 = v2;
    v9 = 8313;
LABEL_8:

    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v7, 4294954511, "<<<< FigPlayer_AP >>>>", v9, v8);
    return;
  }

  if (v6)
  {
    if (*(v6 + 72))
    {
      v7 = qword_1EAF172E0;
      v8 = v2;
      v9 = 8319;
      goto LABEL_8;
    }

    FigAtomicIncrement32();
  }

  v10 = *(CMBaseObjectGetDerivedStorage() + 216);
  if (v10 && v10 != 10)
  {
    if (dword_1EAF172E8)
    {
      v11 = CMBaseObjectGetDerivedStorage();
      if (dword_1EAF172E8)
      {
        v12 = *(v11 + 216);
        if (v12)
        {
          if (v12 != 10)
          {
            v17 = 0;
            type = OS_LOG_TYPE_DEFAULT;
            os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
            fig_log_call_emit_and_clean_up_after_send_and_compose();
          }
        }
      }
    }

    if (*(DerivedStorage + 50))
    {
      if (a1)
      {
        CFRetain(a1);
      }

      if (a2)
      {
        CFRetain(a2);
      }

      v14 = *(DerivedStorage + 112);
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __playerairplay_RemoveFromPlayQueue_block_invoke;
      block[3] = &__block_descriptor_56_e5_v8__0l;
      block[4] = DerivedStorage;
      block[5] = a1;
      block[6] = a2;
      dispatch_async(v14, block);
    }

    else
    {
      playerairplay_removeItemFromLocalPlayQueue(a1, a2);
      playerairplay_removeItemFromSubPlayerPlayQueue(a1, a2);
    }
  }

  else
  {

    playerairplay_removeItemFromSubPlayerPlayQueue(a1, a2);
  }
}

void playerairplay_GetRate(uint64_t a1, _DWORD *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*DerivedStorage)
  {
    v5 = qword_1EAF172E0;
    v6 = v2;
    v7 = 4294954511;
    v8 = 8461;
LABEL_3:

    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v5, v7, "<<<< FigPlayer_AP >>>>", v8, v6);
    return;
  }

  v9 = DerivedStorage;
  v10 = *(CMBaseObjectGetDerivedStorage() + 216);
  if (v10)
  {
    v11 = v10 == 10;
  }

  else
  {
    v11 = 1;
  }

  if (v11)
  {
    v12 = *(v9 + 1);
    if (!v12)
    {
      v5 = qword_1EAF172E0;
      v6 = v2;
      v7 = 4294954516;
      v8 = 8477;
      goto LABEL_3;
    }

    v13 = *(*(CMBaseObjectGetVTable() + 16) + 48);
    if (v13)
    {

      v13(v12, a2);
    }
  }

  else if (a2)
  {
    *a2 = *(v9 + 14);
  }
}

uint64_t playerairplay_SetRateWithFade(uint64_t a1, __int128 *a2, float a3)
{
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  FigCFDictionarySetCMTime();
  v6 = *(*(CMBaseObjectGetVTable() + 16) + 104);
  if (v6)
  {
    v7 = v6(a1, Mutable, a3);
    if (!Mutable)
    {
      return v7;
    }

    goto LABEL_5;
  }

  v7 = 4294954514;
  if (Mutable)
  {
LABEL_5:
    CFRelease(Mutable);
  }

  return v7;
}

void playerairplay_StartPreroll(uint64_t a1, uint64_t a2, float a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*DerivedStorage)
  {
    v7 = qword_1EAF172E0;
    v8 = v3;
    v9 = 4294954511;
    v10 = 8731;
LABEL_3:

    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v7, v9, "<<<< FigPlayer_AP >>>>", v10, v8);
    return;
  }

  v11 = DerivedStorage;
  v12 = *(CMBaseObjectGetDerivedStorage() + 216);
  if (v12 == 10 || v12 == 0)
  {
    v14 = *(v11 + 1);
    if (!v14)
    {
      v7 = qword_1EAF172E0;
      v8 = v3;
      v9 = 4294954516;
      v10 = 8744;
      goto LABEL_3;
    }

    v15 = *(*(CMBaseObjectGetVTable() + 16) + 64);
    if (v15)
    {
      v16.n128_f32[0] = a3;

      v15(v14, a2, v16);
    }
  }
}

void playerairplay_StepByCount(uint64_t a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*DerivedStorage)
  {
    v5 = qword_1EAF172E0;
    v6 = v2;
    v7 = 4294954511;
    v8 = 8768;
LABEL_3:

    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v5, v7, "<<<< FigPlayer_AP >>>>", v8, v6);
    return;
  }

  v9 = DerivedStorage;
  v10 = *(CMBaseObjectGetDerivedStorage() + 216);
  if (v10 == 10 || v10 == 0)
  {
    v12 = *(v9 + 1);
    if (!v12)
    {
      v5 = qword_1EAF172E0;
      v6 = v2;
      v7 = 4294954516;
      v8 = 8781;
      goto LABEL_3;
    }

    v13 = *(*(CMBaseObjectGetVTable() + 16) + 72);
    if (v13)
    {

      v13(v12, a2);
    }
  }
}

uint64_t playerairplay_SetRateAndAnchorTime(uint64_t a1, __int128 *a2, __int128 *a3, uint64_t a4, float a5)
{
  v8 = *a2;
  v9 = *(a2 + 2);
  v6 = *a3;
  v7 = *(a3 + 2);
  return playerairplay_setRateCommon(a1, 0, 1, &v8, &v6, a4, a5);
}

uint64_t playerairplay_SetRateWithOptions(uint64_t a1, uint64_t a2, float a3)
{
  v6 = FigCFCopyCompactDescription();
  v7 = playerairplay_setRateCommon(a1, a2, 0, MEMORY[0x1E6960C70], MEMORY[0x1E6960C70], 0, a3);
  if (v6)
  {
    CFRelease(v6);
  }

  return v7;
}

uint64_t playerairplay_ReevaluateRouteConfiguration(uint64_t a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v19 = 0;
  v20 = &v19;
  v21 = 0x2020000000;
  v22 = 0;
  v5 = FigCFCopyCompactDescription();
  if (*DerivedStorage)
  {
    goto LABEL_15;
  }

  v6 = *(DerivedStorage + 208);
  if (v6 && *(DerivedStorage + 112))
  {
    v7 = *(*(CMBaseObjectGetVTable() + 16) + 16);
    if (v7)
    {
      v7(v6);
    }

    v8 = *(DerivedStorage + 112);
    v13 = MEMORY[0x1E69E9820];
    v14 = 3221225472;
    v15 = __playerairplay_ReevaluateRouteConfiguration_block_invoke;
    v16 = &unk_1E7482510;
    v17 = &v19;
    v18 = a1;
    dispatch_sync(v8, &v13);
  }

  if (*(v20 + 24))
  {
    v9 = 0;
    if (!v5)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

  v10 = *(DerivedStorage + 8);
  if (!v10)
  {
LABEL_15:
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v13, v14, v15);
  }

  else
  {
    v11 = FigPlayerReevaluateRouteConfigurationForReason(v10, a2, @" -> AirPlay sub-player");
  }

  v9 = v11;
  if (v5)
  {
LABEL_13:
    CFRelease(v5);
  }

LABEL_14:
  _Block_object_dispose(&v19, 8);
  return v9;
}

void sub_196633A08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

double playerairplay_AddExternalStartupTask(uint64_t a1, const void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*DerivedStorage)
  {
    playerairplay_AddExternalStartupTask_cold_1(&v11);
  }

  else
  {
    if (a2)
    {
      v5 = DerivedStorage;
      FigSimpleMutexLock();
      v6 = *(v5 + 59);
      v13.length = CFArrayGetCount(v6);
      v13.location = 0;
      if (CFArrayGetFirstIndexOfValue(v6, v13, a2) == -1)
      {
        CFArrayAppendValue(*(v5 + 59), a2);
        CMNotificationCenterGetDefaultLocalCenter();
        FigNotificationCenterAddWeakListener();
      }

      FigSimpleMutexUnlock();
    }

    v7 = *(CMBaseObjectGetDerivedStorage() + 8);
    if (v7)
    {
      v8 = *(*(CMBaseObjectGetVTable() + 16) + 128);
      if (v8)
      {

        v8(v7, a2);
      }
    }

    else
    {
      v10 = qword_1EAF172E0;

      return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v10, 4294954514, "<<<< FigPlayer_AP >>>>", 11137, v2);
    }
  }

  return result;
}

double playerairplay_RemoveExternalStartupTask(uint64_t a1, const void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*DerivedStorage)
  {
    playerairplay_RemoveExternalStartupTask_cold_1(&v13);
  }

  else
  {
    v5 = DerivedStorage;
    FigSimpleMutexLock();
    v6 = *(v5 + 59);
    v15.length = CFArrayGetCount(v6);
    v15.location = 0;
    FirstIndexOfValue = CFArrayGetFirstIndexOfValue(v6, v15, a2);
    if (FirstIndexOfValue != -1)
    {
      v8 = FirstIndexOfValue;
      CMNotificationCenterGetDefaultLocalCenter();
      FigNotificationCenterRemoveWeakListener();
      CFArrayRemoveValueAtIndex(*(v5 + 59), v8);
    }

    FigSimpleMutexUnlock();
    v9 = *(v5 + 1);
    if (v9)
    {
      v10 = *(*(CMBaseObjectGetVTable() + 16) + 136);
      if (v10)
      {

        v10(v9, a2);
      }
    }

    else
    {
      v12 = qword_1EAF172E0;

      return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v12, 4294954514, "<<<< FigPlayer_AP >>>>", 11203, v2);
    }
  }

  return result;
}

double playerairplay_CopyDisplayedCVPixelBuffer(uint64_t a1, uint64_t a2, uint64_t a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*DerivedStorage)
  {
    playerairplay_CopyDisplayedCVPixelBuffer_cold_1(&v11);
  }

  else
  {
    v7 = *(DerivedStorage + 8);
    if (v7)
    {
      v8 = *(*(CMBaseObjectGetVTable() + 16) + 152);
      if (v8)
      {

        v8(v7, a2, a3);
      }
    }

    else
    {
      v10 = qword_1EAF172E0;

      return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v10, 4294954514, "<<<< FigPlayer_AP >>>>", 10943, v3);
    }
  }

  return result;
}

uint64_t playerairplay_addItemToLocalPlayQueue(const void *a1, const void *a2, const void *a3)
{
  v23 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  IsAirplayVideoActive = playerairplay_getIsAirplayVideoActive(a1);
  dispatch_source_set_timer(*(DerivedStorage + 120), 0xFFFFFFFFFFFFFFFFLL, 0, 0);
  v8 = *(DerivedStorage + 40);
  FigSimpleMutexLock();
  v9 = *(v8 + 16);
  FigSimpleMutexUnlock();
  v10 = *(DerivedStorage + 40);
  v11 = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  if (!a3 || !*(v10 + 16))
  {
    if (!*(v11 + 700))
    {
      if (!*(v11 + 701))
      {
        CFArrayAppendValue(*v10, a2);
      }

      goto LABEL_11;
    }

    goto LABEL_8;
  }

  IndexOfAirPlayItemInternal = playqueue_getIndexOfAirPlayItemInternal(v10, a3);
  if (IndexOfAirPlayItemInternal == -1)
  {
    v13 = 4294954516;
    goto LABEL_14;
  }

  if (*(v11 + 700))
  {
LABEL_8:
    v13 = 0;
LABEL_14:
    FigSimpleMutexUnlock();
    goto LABEL_17;
  }

  if (!*(v11 + 701))
  {
    CFArrayInsertValueAtIndex(*v10, IndexOfAirPlayItemInternal + 1, a2);
  }

LABEL_11:
  ++*(v10 + 16);
  *(v11 + 700) = 1;
  *(v11 + 705) = 0;
  *(v11 + 831) = 0;
  v13 = playqueue_copyPlayQueueSummary(v10);
  if (dword_1EAF172E8)
  {
    v22 = 0;
    type = OS_LOG_TYPE_DEFAULT;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  FigSimpleMutexUnlock();
  if (v13)
  {
    CFRelease(v13);
    v13 = 0;
  }

LABEL_17:
  v15 = *(DerivedStorage + 40);
  FigSimpleMutexLock();
  v16 = *(v15 + 16);
  FigSimpleMutexUnlock();
  if (!v13 && !v9 && v16 == 1)
  {
    playerairplay_addItemToLocalPlayQueue_cold_1();
    if (!a1)
    {
      goto LABEL_23;
    }

    goto LABEL_22;
  }

  if (!v13)
  {
    if (!a1)
    {
LABEL_23:
      v17 = *(DerivedStorage + 112);
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __playerairplay_addItemToLocalPlayQueue_block_invoke;
      block[3] = &__block_descriptor_57_e5_v8__0l;
      block[4] = DerivedStorage;
      block[5] = a1;
      v20 = IsAirplayVideoActive;
      block[6] = a2;
      dispatch_async(v17, block);
      return v13;
    }

LABEL_22:
    CFRetain(a1);
    goto LABEL_23;
  }

  return v13;
}

uint64_t playerairplay_addItemToSubPlayerPlayQueue(const void *a1, const void *a2, const void *a3)
{
  v50 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v7 = CMBaseObjectGetDerivedStorage();
  if (a3)
  {
    v8 = CMBaseObjectGetDerivedStorage();
  }

  else
  {
    v8 = 0;
  }

  cf = 0;
  HIDWORD(v41) = 0;
  if (!*(DerivedStorage + 8))
  {
    playerairplay_addItemToSubPlayerPlayQueue_cold_1(v49);
    v9 = v49[0];
    goto LABEL_57;
  }

  v9 = 4294954516;
  if (a2 && v7)
  {
    v10 = CMBaseObjectGetDerivedStorage();
    if (*(v10 + 48) && *(v10 + 49) && *(DerivedStorage + 52))
    {
      v11 = CMBaseObjectGetDerivedStorage();
      v12 = *(v11 + 40);
      FigSimpleMutexLock();
      v13 = *(v12 + 16);
      FigSimpleMutexUnlock();
      v14 = 1;
      if (*(v11 + 56) != 0.0 && !v13 && pap_doesCurrentRouteUseScreen(a1) && !*(DerivedStorage + 200))
      {
        v15 = *(DerivedStorage + 8);
        v16 = *(*(CMBaseObjectGetVTable() + 16) + 48);
        if (v16)
        {
          v16(v15, &v41 + 4);
        }

        FPSupport_CreateSetRateOptions(*MEMORY[0x1E695E480], 19, &cf);
        v17 = *(DerivedStorage + 8);
        v18 = cf;
        v19 = *(*(CMBaseObjectGetVTable() + 16) + 104);
        if (v19)
        {
          v19(v17, v18, 0.0);
        }

        v14 = 0;
      }
    }

    else
    {
      v14 = 1;
    }

    v20 = *(DerivedStorage + 8);
    if (v8)
    {
      v8 = *(v8 + 8);
    }

    v21 = *(v7 + 8);
    v22 = *(*(CMBaseObjectGetVTable() + 16) + 16);
    if (!v22)
    {
      v9 = 4294954514;
      goto LABEL_57;
    }

    v23 = v22(v20, v21, v8);
    if (v23)
    {
      v9 = v23;
      goto LABEL_57;
    }

    v24 = *(DerivedStorage + 40);
    v25 = CMBaseObjectGetDerivedStorage();
    FigSimpleMutexLock();
    if (a3 && *(v24 + 16))
    {
      IndexOfAirPlayItemInternal = playqueue_getIndexOfAirPlayItemInternal(v24, a3);
      if (IndexOfAirPlayItemInternal == -1)
      {
        v9 = 4294954516;
LABEL_34:
        FigSimpleMutexUnlock();
        if (v14)
        {
          goto LABEL_57;
        }

        goto LABEL_35;
      }

      if (!*(v25 + 700) && !*(v25 + 701))
      {
        CFArrayInsertValueAtIndex(*v24, IndexOfAirPlayItemInternal + 1, a2);
        goto LABEL_41;
      }
    }

    else if (!*(v25 + 700) && !*(v25 + 701))
    {
      CFArrayAppendValue(*v24, a2);
LABEL_41:
      ++*(v24 + 16);
      *(v25 + 700) = 1;
      *(v25 + 705) = 0;
      *(v25 + 831) = 0;
      v31 = playqueue_copyPlayQueueSummary(v24);
      v32 = FigCFWeakReferenceHolderCopyReferencedObject();
      if (v32)
      {
        v33 = v32;
        if (dword_1EAF172E8)
        {
          v34 = CMBaseObjectGetDerivedStorage();
          if (dword_1EAF172E8)
          {
            v35 = *(v34 + 216);
            if (v35)
            {
              if (v35 != 10)
              {
                v44 = 0;
                type = OS_LOG_TYPE_DEFAULT;
                os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
                v37 = v44;
                v38 = type;
                if (os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, type))
                {
                  v39 = v37;
                }

                else
                {
                  v39 = v37 & 0xFFFFFFFE;
                }

                if (v39)
                {
                  v45 = 136315394;
                  v46 = "playqueue_addItemToSubPlayerPlayQueue";
                  v47 = 2114;
                  v48 = v31;
                  LODWORD(v41) = 22;
                  _os_log_send_and_compose_impl(v39, 0, v49, 128, &dword_1962D5000, os_log_and_send_and_compose_flags_and_os_log_type, v38, "<<<< FigPlayer_AP >>>> %s: %{public}@", &v45, v41);
                }

                fig_log_call_emit_and_clean_up_after_send_and_compose();
              }
            }
          }
        }

        CFRelease(v33);
      }

      FigSimpleMutexUnlock();
      if (v31)
      {
        CFRelease(v31);
      }

      v9 = 0;
      if (v14)
      {
        goto LABEL_57;
      }

LABEL_35:
      if (v9)
      {
        v27 = *(DerivedStorage + 8);
        v28 = *(&v41 + 1);
        v29 = cf;
        v30 = *(*(CMBaseObjectGetVTable() + 16) + 104);
        if (v30)
        {
          v30(v27, v29, v28);
        }
      }

      else
      {
        playerairplay_triggerAsyncCheckAndUpdatePlayQueueItems(a1);
      }

      goto LABEL_57;
    }

    v9 = 0;
    goto LABEL_34;
  }

LABEL_57:
  if (cf)
  {
    CFRelease(cf);
  }

  return v9;
}

void __playerairplay_addItemToLocalPlayQueue_block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  if (!**(a1 + 32))
  {
    v2 = *(CMBaseObjectGetDerivedStorage() + 216) - 14;
    v3 = *(a1 + 40);
    if (v2 < 3)
    {
      playerairplay_checkAndUpdatePlayQueueItems(v3);
    }

    else
    {
      playerairplay_checkStartStopAirPlay(v3, *(a1 + 56));
      v4 = *(CMBaseObjectGetDerivedStorage() + 216);
      v5 = v4 > 0xF;
      v6 = (1 << v4) & 0xD000;
      if (v5 || v6 == 0)
      {
        if (dword_1EAF172E8)
        {
          os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
          fig_log_call_emit_and_clean_up_after_send_and_compose();
        }

        pap_setAirPlayState(*(a1 + 40), 12);
      }
    }
  }

  v9 = *(a1 + 40);
  if (v9)
  {
    CFRelease(v9);
  }
}

void playerairplay_removeItemFromLocalPlayQueue(const void *a1, const void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v5 = objc_autoreleasePoolPush();
  v6 = *(DerivedStorage + 216);
  if (a2)
  {
    if (playqueue_getIndexOfAirPlayItem(*(DerivedStorage + 40), a2) != -1)
    {
      playqueue_removeItemFromClientQueueAndFromMediaControlPlaylist(*(DerivedStorage + 40), a2, 1, 0);
    }

    if (!*(DerivedStorage + 51))
    {
      if (a1)
      {
        CFRetain(a1);
      }

      v11 = *(DerivedStorage + 112);
      v19[0] = MEMORY[0x1E69E9820];
      v19[1] = 3221225472;
      v19[2] = __playerairplay_removeItemFromLocalPlayQueue_block_invoke;
      v19[3] = &__block_descriptor_48_e5_v8__0l;
      v19[4] = DerivedStorage;
      v19[5] = a1;
      dispatch_async(v11, v19);
    }

    playerairplay_triggerAsyncCheckAndUpdatePlayQueueItems(a1);
    v17 = *MEMORY[0x1E6960C70];
    v18 = *(MEMORY[0x1E6960C70] + 16);
    v12 = *(*(CMBaseObjectGetVTable() + 16) + 32);
    if (v12)
    {
      v12(a2, &v17);
    }

    v15 = v17;
    v16 = v18;
    itemairplay_setRememberedTimeAndDefaultFlag(a2, &v15);
    if (a1)
    {
      goto LABEL_5;
    }
  }

  else
  {
    if (a1)
    {
      CFRetain(a1);
    }

    v7 = *(DerivedStorage + 112);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __playerairplay_removeItemFromLocalPlayQueue_block_invoke_2;
    block[3] = &__block_descriptor_48_e5_v8__0l;
    block[4] = DerivedStorage;
    block[5] = a1;
    dispatch_async(v7, block);
    if (a1)
    {
LABEL_5:
      CFRetain(a1);
    }
  }

  v8 = *(DerivedStorage + 112);
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __playerairplay_removeItemFromLocalPlayQueue_block_invoke_3;
  v13[3] = &__block_descriptor_48_e5_v8__0l;
  v13[4] = DerivedStorage;
  v13[5] = a1;
  dispatch_async(v8, v13);
  if (v6 == 16 && *(DerivedStorage + 216) == 11)
  {
    if (*(DerivedStorage + 152))
    {
      pap_clearLayerContents(a1);
    }

    if (*(DerivedStorage + 52))
    {
      v9 = *(DerivedStorage + 208);
      v10 = *(*(CMBaseObjectGetVTable() + 16) + 40);
      if (v10)
      {
        v10(v9);
      }
    }
  }

  objc_autoreleasePoolPop(v5);
}

double playerairplay_removeItemFromSubPlayerPlayQueue(uint64_t a1, const void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v5 = DerivedStorage;
  if (a2)
  {
    v6 = CMBaseObjectGetDerivedStorage();
    v7 = *(v5 + 8);
    if (v7)
    {
      if (v6)
      {
        v8 = *(v6 + 8);
LABEL_7:
        v9 = *(*(CMBaseObjectGetVTable() + 16) + 24);
        if (v9 && !v9(v7, v8))
        {
          v11 = *(v5 + 40);
          if (a2)
          {
            playqueue_removeItemFromClientQueueAndFromMediaControlPlaylist(v11, a2, 1, 0);
          }

          else
          {
            playqueue_clearPlayQueue(v11);
          }
        }

        return result;
      }

LABEL_6:
      v8 = 0;
      goto LABEL_7;
    }
  }

  else
  {
    v7 = *(DerivedStorage + 8);
    if (v7)
    {
      goto LABEL_6;
    }
  }

  v12 = qword_1EAF172E0;

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v12, 4294954516, "<<<< FigPlayer_AP >>>>", 8275, v2);
}

void __playerairplay_removeItemFromLocalPlayQueue_block_invoke(uint64_t a1)
{
  if (!**(a1 + 32))
  {
    playerairplay_checkIfAirPlayVideoSessionNeedsToStop(*(a1 + 40));
  }

  v2 = *(a1 + 40);
  if (v2)
  {

    CFRelease(v2);
  }
}

void __playerairplay_removeItemFromLocalPlayQueue_block_invoke_2(uint64_t a1)
{
  cf = 0;
  v5 = 0;
  v2 = *(a1 + 32);
  if (!*v2)
  {
    playqueue_copyCurrentClientPlayQueueItemAndCurrentMediaControlPlayListItem(*(v2 + 40), &cf, &v5);
    playerairplay_savePlaybackInfoAndStopAPV(*(a1 + 40), cf, v5);
    playqueue_clearPlayQueue(*(*(a1 + 32) + 40));
    if (cf)
    {
      CFRelease(cf);
    }

    if (v5)
    {
      CFRelease(v5);
    }
  }

  v3 = *(a1 + 40);
  if (v3)
  {
    CFRelease(v3);
  }
}

uint64_t playerairplay_setRateCommon(uint64_t a1, uint64_t a2, int a3, uint64_t a4, __int128 *a5, uint64_t a6, float a7)
{
  v58 = *MEMORY[0x1E69E9840];
  v51 = 0;
  v52 = &v51;
  v53 = 0x2020000000;
  v54 = 0;
  v47 = 0;
  v48 = &v47;
  v49 = 0x2020000000;
  v50 = 0;
  v43 = 0;
  v44 = &v43;
  v45 = 0x2020000000;
  v46 = 1;
  v39 = 0;
  v40 = &v39;
  v41 = 0x2020000000;
  v42 = 0;
  v38 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  IsAirplayVideoActive = playerairplay_getIsAirplayVideoActive(a1);
  if (*DerivedStorage)
  {
    goto LABEL_2;
  }

  v18 = IsAirplayVideoActive;
  FigCFDictionaryGetInt32IfPresent();
  v19 = *(DerivedStorage + 112);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __playerairplay_setRateCommon_block_invoke;
  block[3] = &unk_1E748B8F0;
  block[8] = a1;
  block[9] = DerivedStorage;
  v30 = a7;
  block[10] = a2;
  v31 = *a4;
  v32 = *(a4 + 16);
  v33 = *a5;
  v34 = *(a5 + 2);
  v36 = a3;
  v35 = v38;
  block[4] = &v51;
  block[5] = &v47;
  v37 = v18;
  block[6] = &v43;
  block[7] = &v39;
  dispatch_sync(v19, block);
  if (*(v52 + 24))
  {
    goto LABEL_4;
  }

  v21 = *(DerivedStorage + 8);
  if (!v21)
  {
LABEL_2:
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v26, v27, v28);
    v17 = v16;
    goto LABEL_19;
  }

  if (*(v48 + 24))
  {
LABEL_4:
    v17 = 0;
  }

  else
  {
    if (!*(v44 + 24) && a7 != 0.0 && !*(v40 + 24))
    {
      Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      FigCFDictionarySetFloat();
      FigCFDictionarySetInt32();
      playerairplay_postPlayerNotification();
      if (Mutable)
      {
        CFRelease(Mutable);
      }

      goto LABEL_2;
    }

    if (a3)
    {
      v56 = *a4;
      v57 = *(a4 + 16);
      *v55 = *a5;
      *&v55[16] = *(a5 + 2);
      v22 = FigPlayerSetRateAndAnchorTime(v21, &v56, v55, a6, a7);
    }

    else if (a2)
    {
      v22 = FigPlayerSetRateWithOptions(v21, a2, a7);
    }

    else
    {
      v22 = FigPlayerSetRate(v21, a7);
    }

    v17 = v22;
    if (!v22)
    {
      if (dword_1EAF172E8)
      {
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      v17 = 0;
      *(DerivedStorage + 56) = a7;
    }
  }

  if (dword_1EAF172E8 >= 2)
  {
    v20 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  FigSimpleMutexLock();
  *(DerivedStorage + 65) = 0;
  *(DerivedStorage + 68) = 0;
  if (!v17)
  {
    if (a7 == 0.0 && v38 == 18)
    {
      *(DerivedStorage + 65) = 1;
    }

    *(DerivedStorage + 68) = a7;
  }

  FigSimpleMutexUnlock();
  playerairplay_updateRoutingRegistry(a1);
LABEL_19:
  _Block_object_dispose(&v39, 8);
  _Block_object_dispose(&v43, 8);
  _Block_object_dispose(&v47, 8);
  _Block_object_dispose(&v51, 8);
  return v17;
}

void sub_196635620(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, ...)
{
  va_start(va, a42);
  _Block_object_dispose(&a31, 8);
  _Block_object_dispose(&a35, 8);
  _Block_object_dispose(&a39, 8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __playerairplay_setRateCommon_block_invoke(uint64_t a1)
{
  v21 = *MEMORY[0x1E69E9840];
  v2 = *(CMBaseObjectGetDerivedStorage() + 216);
  if (v2)
  {
    v3 = v2 == 10;
  }

  else
  {
    v3 = 1;
  }

  v4 = !v3;
  *(*(*(a1 + 32) + 8) + 24) = v4;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    if (dword_1EAF172E8)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    v7 = *(a1 + 88);
    if (v7 != 0.0)
    {
      v8 = *(a1 + 72);
      if (*(v8 + 56) == 0.0)
      {
        *(v8 + 488) = 0;
      }
    }

    if (v7 > 1.0 && !*(*(a1 + 72) + 241))
    {
      DerivedStorage = CMBaseObjectGetDerivedStorage();
      v7 = 1.0;
      if (!*(DerivedStorage + 368))
      {
        v7 = *(a1 + 88);
      }
    }

    *(*(a1 + 72) + 56) = v7;
    playerairplay_postPlayerRateDidChangeNotification(v7, *(a1 + 64), *(a1 + 80));
    FigCFDictionaryGetBooleanIfPresent();
    FigCFDictionaryGetCMTimeIfPresent();
    if (dword_1EAF172E8)
    {
      v10 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    v11 = *(a1 + 72);
    v12 = *(v11 + 216);
    if (v12 > 0x11 || ((1 << v12) & 0x21800) == 0 || *(v11 + 56) == 0.0)
    {
      if (*(CMBaseObjectGetDerivedStorage() + 216) == 16)
      {
        v15 = *(a1 + 64);
        v16 = *(a1 + 144);
        v17 = *(a1 + 80);
        time = *(a1 + 92);
        v18 = *(a1 + 116);
        v19 = *(a1 + 132);
        playerairplay_setRateAirPlay(v15, v16, &time.value, &v18, v17);
      }
    }

    else
    {
      if (!pap_doesCurrentRouteUseScreen(*(a1 + 64)) || (v13 = CMBaseObjectGetDerivedStorage(), *(v13 + 48)) && *(v13 + 49) && (v14 = *(a1 + 72), *(v14 + 52)) && !*(v14 + 200))
      {
        *(*(*(a1 + 40) + 8) + 24) = 1;
      }

      playerairplay_checkStartStopAirPlay(*(a1 + 64), *(a1 + 145));
    }
  }

  *(*(*(a1 + 48) + 8) + 24) = playerairplay_isLocalPlaybackCapableRouteSelected(*(a1 + 64));
  result = CMBaseObjectGetDerivedStorage();
  *(*(*(a1 + 56) + 8) + 24) = *(result + 296) != 0;
  return result;
}

CFTypeRef airplayitem_copyProxiedPropertyCallback(uint64_t a1)
{
  cf[22] = *MEMORY[0x1E69E9840];
  cf[0] = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (DerivedStorage && (v2 = FigCFWeakReferenceHolderCopyReferencedObject(), v3 = CMBaseObjectGetDerivedStorage(), v2))
  {
    if (!*v3)
    {
      FigReadWriteLockLockForRead();
      if (!*(DerivedStorage + 72) && (*(CMBaseObjectGetDerivedStorage() + 216) - 14) <= 2)
      {
        CMBaseObjectGetDerivedStorage();
        Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
        FigCFDictionarySetValue();
        if (!playerairplay_copyPropertyAndWaitTillCompleteOrTimesOut(v2, *MEMORY[0x1E6961EC8], Mutable, 500000000, cf) && !*(DerivedStorage + 72))
        {
          if (cf[0])
          {
            v6 = CFGetTypeID(cf[0]);
            if (v6 != CFArrayGetTypeID())
            {
              os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
              os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
              fig_log_call_emit_and_clean_up_after_send_and_compose();
            }
          }
        }

        if (Mutable)
        {
          CFRelease(Mutable);
        }
      }
    }

    FigReadWriteLockUnlockForRead();
    CFRelease(v2);
    return cf[0];
  }

  else
  {
    FigReadWriteLockUnlockForRead();
    return 0;
  }
}

void playerairplay_SetConnectionActive(const void *a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  IsAirplayVideoActive = playerairplay_getIsAirplayVideoActive(a1);
  if (*DerivedStorage)
  {
    v7 = qword_1EAF172E0;
    v8 = v2;
    v9 = 4294954511;
    v10 = 8806;
LABEL_3:

    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v7, v9, "<<<< FigPlayer_AP >>>>", v10, v8);
    return;
  }

  v11 = IsAirplayVideoActive;
  v12 = *(CMBaseObjectGetDerivedStorage() + 216);
  if (v12)
  {
    v13 = v12 == 10;
  }

  else
  {
    v13 = 1;
  }

  if (v13)
  {
    v14 = *(DerivedStorage + 8);
    if (!v14)
    {
      v7 = qword_1EAF172E0;
      v8 = v2;
      v9 = 4294954516;
      v10 = 8850;
      goto LABEL_3;
    }

    v15 = *(CMBaseObjectGetVTable() + 24);
    if (v15)
    {
      v16 = *(v15 + 24);
      if (v16)
      {
        if (!v16(v14, a2))
        {
          *(DerivedStorage + 1) = a2;
        }
      }
    }

    v17 = *(DerivedStorage + 112);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __playerairplay_SetConnectionActive_block_invoke_3;
    block[3] = &__block_descriptor_49_e5_v8__0l;
    v21 = a2;
    block[4] = DerivedStorage;
    block[5] = a1;
    dispatch_sync(v17, block);
  }

  else
  {
    *(DerivedStorage + 1) = a2;
    if (a2)
    {
      if (*(DerivedStorage + 216) != 11)
      {
        return;
      }

      v18 = *(DerivedStorage + 112);
      v23[0] = MEMORY[0x1E69E9820];
      v23[1] = 3221225472;
      v23[2] = __playerairplay_SetConnectionActive_block_invoke;
      v23[3] = &__block_descriptor_41_e5_v8__0l;
      v23[4] = a1;
      v24 = v11;
      v19 = v23;
    }

    else
    {
      if ((*(CMBaseObjectGetDerivedStorage() + 216) - 14) > 2)
      {
        return;
      }

      if (a1)
      {
        CFRetain(a1);
      }

      v18 = *(DerivedStorage + 112);
      v22[0] = MEMORY[0x1E69E9820];
      v22[1] = 3221225472;
      v22[2] = __playerairplay_SetConnectionActive_block_invoke_2;
      v22[3] = &__block_descriptor_48_e5_v8__0l;
      v22[4] = DerivedStorage;
      v22[5] = a1;
      v19 = v22;
    }

    dispatch_sync(v18, v19);
  }
}

uint64_t playerairplay_DuckVolume(uint64_t a1, uint64_t a2, float a3, float a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v8 = *(CMBaseObjectGetDerivedStorage() + 216);
  if (v8 != 10 && v8 != 0)
  {
    return 0;
  }

  v10 = *(DerivedStorage + 8);
  if (!v10)
  {
    return 0;
  }

  v11 = *(CMBaseObjectGetVTable() + 32);
  if (!v11)
  {
    return 4294954514;
  }

  v14 = *(v11 + 8);
  if (!v14)
  {
    return 4294954514;
  }

  v12.n128_f32[0] = a3;
  v13.n128_f32[0] = a4;

  return v14(v10, a2, v12, v13);
}

uint64_t playerairplay_SilentMute(uint64_t a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v4 = *(CMBaseObjectGetDerivedStorage() + 216);
  if (v4 != 10 && v4 != 0)
  {
    return 0;
  }

  v6 = *(DerivedStorage + 8);
  if (!v6)
  {
    return 0;
  }

  v7 = *(CMBaseObjectGetVTable() + 32);
  if (!v7)
  {
    return 4294954514;
  }

  v8 = *(v7 + 16);
  if (!v8)
  {
    return 4294954514;
  }

  return v8(v6, a2);
}

void __playerairplay_hijackedByOtherPlayer_block_invoke(uint64_t a1)
{
  cf[24] = *MEMORY[0x1E69E9840];
  if (!**(a1 + 32) && (*(CMBaseObjectGetDerivedStorage() + 216) - 14) <= 2)
  {
    cf[0] = 0;
    if (dword_1EAF172E8)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    FPSupport_CreateSetRateOptions(*MEMORY[0x1E695E480], 27, cf);
    playerairplay_updatePlayerRateToMatch(*(a1 + 40), cf[0], 0.0);
    playerairplay_switchFromAirPlayVideoToLocal(*(a1 + 40), 0);
    if (cf[0])
    {
      CFRelease(cf[0]);
    }
  }

  v2 = *(a1 + 40);
  if (v2)
  {
    CFRelease(v2);
  }
}

void playerairplay_playQueueWorkQueueFinalizer(CFTypeRef cf)
{
  if (cf)
  {
    CFRelease(cf);
  }
}

void __playerairplay_initializeVolumeFadeOutNotification_block_invoke(uint64_t a1, int a2)
{
  v8 = 0;
  dispatch_get_context(*(a1 + 32));
  v3 = FigCFWeakReferenceHolderCopyReferencedObject();
  if (v3)
  {
    v4 = v3;
    notify_get_state(a2, &v8);
    v5 = v8;
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    memset(&v9, 0, sizeof(v9));
    CMTimeMake(&v9, v5, 1000);
    if (!*DerivedStorage)
    {
      v7 = *(DerivedStorage + 296);
      if (v7)
      {
        __playerairplay_initializeVolumeFadeOutNotification_block_invoke_cold_1(&v9.value, v7);
      }
    }

    CFRelease(v4);
  }
}

uint64_t OUTLINED_FUNCTION_19_27(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, __int16 a12, char a13, char a14, int a15)
{

  return fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
}

uint64_t OUTLINED_FUNCTION_31_15(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, __int16 a12, char a13, char a14, char a15)
{

  return fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
}

BOOL OUTLINED_FUNCTION_32_14(NSObject *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, __int16 a14, char a15, os_log_type_t type, int a17)
{

  return os_log_type_enabled(a1, type);
}

BOOL OUTLINED_FUNCTION_33_15(NSObject *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, int a48, os_log_type_t type, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, int a62)
{

  return os_log_type_enabled(a1, type);
}

uint64_t OUTLINED_FUNCTION_39_13(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, int a48, char a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, char a62)
{

  return fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
}

uint64_t OUTLINED_FUNCTION_42_11(uint64_t a1)
{

  return FigSimpleMutexLock();
}

void OUTLINED_FUNCTION_57_6(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  if (v2)
  {
    v5 = v3;
  }

  else
  {
    v5 = v4;
  }

  pap_playbackSessionSetProxiedProperty(a2, a1, *v5, 0);
}

uint64_t OUTLINED_FUNCTION_60_8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, int a13, char a14, int a15)
{

  return fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
}

uint64_t OUTLINED_FUNCTION_61_9(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, int a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, int a26, __int16 a27, char a28, char a29)
{

  return fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
}

void *OUTLINED_FUNCTION_62_8()
{

  return malloc_type_calloc(1uLL, 0x40uLL, 0x10600403C78B70CuLL);
}

BOOL OUTLINED_FUNCTION_75_5(NSObject *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, int a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, int a26, __int16 a27, char a28, os_log_type_t type)
{

  return os_log_type_enabled(a1, type);
}

const void *OUTLINED_FUNCTION_88_5()
{
  v3 = *v1;

  return CFDictionaryGetValue(v0, v3);
}

uint64_t OUTLINED_FUNCTION_89_3(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return FigNotificationCenterRemoveWeakListener();
}

uint64_t OUTLINED_FUNCTION_91_3(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, CMTime *time2, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, __int128 time2a, CMTime *time1, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t time1a, uint64_t time1_8)
{
  time1_16 = a17;
  time2a = *(v64 + 160);
  time1 = *(v64 + 176);

  return CMTimeCompare(&time1a, &time2a);
}

CMTime *OUTLINED_FUNCTION_92_3@<X0>(uint64_t a1@<X8>, CMTime *rhs, CMTime *a3, CMTime *lhs, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, __int128 rhsa, uint64_t rhs_16, uint64_t a12, __int128 a13, uint64_t lhsa, uint64_t lhs_8, uint64_t lhs_16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, __int128 a26, uint64_t a27)
{
  lhs_16 = a1;
  rhsa = a26;
  rhs_16 = a27;

  return CMTimeSubtract(&a12, &lhsa, &rhsa);
}

uint64_t OUTLINED_FUNCTION_94_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, __int16 a13, char a14, char a15, char a16)
{

  return fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
}

const void *OUTLINED_FUNCTION_109_2()
{
  v3 = *v1;

  return CFDictionaryGetValue(v0, v3);
}

uint64_t OUTLINED_FUNCTION_113_2(uint64_t a1)
{

  return pap_copyItemFromUUIDOrCurrentInMediaControlPlaylist(v1, a1);
}

uint64_t OUTLINED_FUNCTION_116_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20, uint64_t a21, uint64_t a22, int a23)
{

  return fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
}

uint64_t OUTLINED_FUNCTION_119_2(uint64_t *a1)
{

  return FigCFWeakReferenceHolderCopyReferencedObject();
}

uint64_t OUTLINED_FUNCTION_134_1(uint64_t a1)
{

  return FigNotificationCenterAddWeakListener();
}

uint64_t OUTLINED_FUNCTION_135_2(uint64_t a1, uint64_t a2)
{

  return CMBaseObjectGetDerivedStorage();
}

CMTime *OUTLINED_FUNCTION_136_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, CMTime *rhs, uint64_t a8, __n128 a9, __n128 rhsa, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, CMTime *lhs, uint64_t a15, __n128 rhs_16, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, CMTime *lhsa, uint64_t lhs_8, uint64_t lhs_16, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t _C8, uint64_t a36)
{
  rhs_16 = a9;
  a19 = 0;

  return CMTimeSubtract(&a36, &lhs_16, &rhs_16);
}

uint64_t OUTLINED_FUNCTION_137_1()
{

  return FigReadWriteLockUnlockForRead();
}

void OUTLINED_FUNCTION_138_1(uint64_t a1, uint64_t a2)
{

  itemairplay_postItemNotification();
}

const void *OUTLINED_FUNCTION_176_1(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37)
{
  v40 = *v38;

  return CFDictionaryGetValue(v37, v40);
}

const void *OUTLINED_FUNCTION_178_2(uint64_t a1)
{
  v4 = *(v1 + 40);

  return playqueue_copyItemForUUID(v4, a1);
}

uint64_t OUTLINED_FUNCTION_180_2(uint64_t a1)
{

  return FigReadWriteLockLockForRead();
}

const void *OUTLINED_FUNCTION_181_1()
{
  v3 = *v1;

  return CFDictionaryGetValue(v0, v3);
}

const void *OUTLINED_FUNCTION_182_2()
{
  v3 = *v1;

  return CFDictionaryGetValue(v0, v3);
}

uint64_t FigPlayerCoordinatorCreateWithOptions(uint64_t a1, const void *a2, const __CFDictionary *a3, CFTypeRef *a4)
{
  theString = 0;
  cf = 0;
  v14 = 0;
  if (!a4)
  {
    FigPlayerCoordinatorCreateWithOptions_cold_2(&v17);
    return v17;
  }

  if (!a2)
  {
    FigPlayerCoordinatorCreateWithOptions_cold_1(&v17);
    return v17;
  }

  FigPlayerGetClassID();
  v7 = CMDerivedObjectCreate();
  v8 = cf;
  if (!v7)
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    *DerivedStorage = 0;
    if (FigCFDictionaryGetStringIfPresent())
    {
      CFStringGetCString(theString, (DerivedStorage + 57), 10, 0x8000100u);
    }

    if (a3)
    {
      CFDictionaryGetValueIfPresent(a3, @"InterstitialPrimaryPlayerName", &v14);
      v10 = v14 != 0;
    }

    else
    {
      v10 = 0;
    }

    *(DerivedStorage + 40) = v10;
    *(DerivedStorage + 48) = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    *(DerivedStorage + 56) = 0;
    Value = FigCFDictionaryGetValue();
    if (Value)
    {
      Value = CFRetain(Value);
    }

    *(DerivedStorage + 24) = Value;
    v12 = FigCFWeakReferenceTableCreate();
    if (v12)
    {
      v7 = v12;
      v8 = cf;
    }

    else
    {
      *(DerivedStorage + 8) = CFRetain(a2);
      CMNotificationCenterGetDefaultLocalCenter();
      v7 = FigNotificationCenterAddWeakListener();
      v8 = cf;
      if (!v7)
      {
        *a4 = cf;
        return v7;
      }
    }
  }

  if (v8)
  {
    CFRelease(v8);
  }

  return v7;
}

double playercoordinator_reflectSubPlayerNotification(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (*CMBaseObjectGetDerivedStorage())
  {
    return playercoordinator_reflectSubPlayerNotification_cold_1();
  }

  CMNotificationCenterGetDefaultLocalCenter();

  CMNotificationCenterPostNotification();
  return result;
}

void playercoordinator_Finalize(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigPlayerGetFigBaseObject();
  if (v2)
  {
    v3 = v2;
    v4 = *(*(CMBaseObjectGetVTable() + 8) + 24);
    if (v4)
    {
      v4(v3);
    }
  }

  if (DerivedStorage[4])
  {
    v5 = FigCFWeakReferenceHolderCopyReferencedObject();
    if (v5)
    {
      v6 = v5;
      v7 = *(*(CMBaseObjectGetVTable() + 16) + 120);
      if (v7)
      {
        v7(v6);
      }

      CFRelease(v6);
    }
  }

  v8 = DerivedStorage[1];
  if (v8)
  {
    CFRelease(v8);
    DerivedStorage[1] = 0;
  }

  v9 = DerivedStorage[2];
  if (v9)
  {
    CFRelease(v9);
    DerivedStorage[2] = 0;
  }

  v10 = DerivedStorage[4];
  if (v10)
  {
    CFRelease(v10);
    DerivedStorage[4] = 0;
  }

  v11 = DerivedStorage[3];
  if (v11)
  {
    CFRelease(v11);
    DerivedStorage[3] = 0;
  }

  v12 = DerivedStorage[9];
  if (v12)
  {
    CFRelease(v12);
    DerivedStorage[9] = 0;
  }

  v13 = DerivedStorage[6];
  if (v13)
  {
    CFRelease(v13);
    DerivedStorage[6] = 0;
  }
}

uint64_t playercoordinator_CopyProperty(uint64_t a1, const void *a2, const __CFAllocator *a3, __CFArray **a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!a1)
  {
    playercoordinator_CopyProperty_cold_3(&v24);
    return v24;
  }

  v9 = DerivedStorage;
  if (*DerivedStorage)
  {
    playercoordinator_CopyProperty_cold_1(&v24);
    return v24;
  }

  if (!*(DerivedStorage + 8))
  {
    playercoordinator_CopyProperty_cold_2(&v24);
    return v24;
  }

  if (FigCFEqual())
  {
    v10 = *(v9 + 24);
    if (!v10)
    {
LABEL_22:
      v17 = 0;
      *a4 = v10;
      return v17;
    }

LABEL_6:
    v10 = CFRetain(v10);
    goto LABEL_22;
  }

  if (FigCFEqual())
  {
    v24 = 0;
    if (!*(v9 + 32) || (v10 = FigCFWeakReferenceHolderCopyReferencedObject(), (v24 = v10) == 0))
    {
      Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      v12 = Mutable;
      v13 = *MEMORY[0x1E695E4D0];
      v14 = *MEMORY[0x1E695E4C0];
      if (*(v9 + 40))
      {
        v15 = *MEMORY[0x1E695E4D0];
      }

      else
      {
        v15 = *MEMORY[0x1E695E4C0];
      }

      CFDictionarySetValue(Mutable, @"IsInterstitialPlaybackCoordinator", v15);
      CFDictionarySetValue(v12, @"InitialLamportTimestamps", *(v9 + 48));
      if (*(v9 + 56))
      {
        v16 = v13;
      }

      else
      {
        v16 = v14;
      }

      CFDictionarySetValue(v12, @"ShouldOverrideGroupState", v16);
      v17 = FigPlaybackCoordinatorCreate(a3, a1, v12, &v24);
      if (v12)
      {
        CFRelease(v12);
      }

      if (v17)
      {
        return v17;
      }

      v18 = *(v9 + 32);
      if (v18)
      {
        CFRelease(v18);
      }

      *(v9 + 32) = FigCFWeakReferenceHolderCreateWithReferencedObject();
      v10 = v24;
    }

    goto LABEL_22;
  }

  if (FigCFEqual())
  {
    v10 = *(v9 + 72);
    if (!v10)
    {
      goto LABEL_22;
    }

    goto LABEL_6;
  }

  if (CFEqual(a2, @"Topology"))
  {
    v20 = *(v9 + 8);

    return FPSupport_CreatePlayerTopology(a3, @"Coordinator", v20, a4);
  }

  else
  {
    FigPlayerGetFigBaseObject();
    v22 = v21;
    v23 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (!v23)
    {
      return 4294954514;
    }

    return v23(v22, a2, a3, a4);
  }
}

uint64_t playercoordinator_SetProperty(uint64_t a1, uint64_t a2, uint64_t a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a1)
  {
    if (*DerivedStorage)
    {
      playercoordinator_SetProperty_cold_1(&v8);
      return v8;
    }

    else
    {
      v6 = *(DerivedStorage + 8);
      if (v6)
      {

        return FPSupport_HandlePlayerSetPropertyAndForwardToSubPlayer(a1, v6, a2);
      }

      else
      {
        playercoordinator_SetProperty_cold_2(&v9);
        return v9;
      }
    }
  }

  else
  {
    playercoordinator_SetProperty_cold_3(&v10);
    return v10;
  }
}

void playercoordinator_invalidateItemsApply()
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

uint64_t playercoordinator_handleSetProperty(const void *a1, uint64_t a2, const void *a3, CFMutableArrayRef a4, _BYTE *a5, void *a6, void *a7)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (FigCFEqual())
  {
    v14 = *(DerivedStorage + 24);
    *(DerivedStorage + 24) = a4;
    if (a4)
    {
      CFRetain(a4);
    }

    if (!v14)
    {
      goto LABEL_6;
    }

LABEL_5:
    CFRelease(v14);
LABEL_6:
    v15 = 0;
    goto LABEL_7;
  }

  if (!FigCFEqual())
  {
    if (FigCFEqual())
    {
      if (!a4)
      {
        goto LABEL_6;
      }

      v29 = CFGetTypeID(a4);
      if (v29 != CFDictionaryGetTypeID())
      {
        goto LABEL_6;
      }

      v14 = *(DerivedStorage + 48);
      *(DerivedStorage + 48) = a4;
      CFRetain(a4);
      if (!v14)
      {
        goto LABEL_6;
      }

      goto LABEL_5;
    }

    v31 = FigCFEqual();
    v15 = 0;
    if (!a4 || !v31)
    {
      goto LABEL_7;
    }

    v32 = CFGetTypeID(a4);
    if (v32 != CFBooleanGetTypeID())
    {
      goto LABEL_6;
    }

    v15 = 0;
    *(DerivedStorage + 56) = CFBooleanGetValue(a4);
    goto LABEL_7;
  }

  if (!a4)
  {
    v15 = 0;
    v30 = *(DerivedStorage + 72);
    *(DerivedStorage + 72) = 0;
    if (v30)
    {
LABEL_41:
      CFRelease(v30);
    }

LABEL_7:
    *a5 = 0;
    if (a3)
    {
      v16 = CFRetain(a3);
    }

    else
    {
      v16 = 0;
    }

    *a6 = v16;
    if (a4)
    {
      v26 = CFRetain(a4);
    }

    else
    {
      v26 = 0;
    }

    v24 = 0;
    v27 = 0;
    *a7 = v26;
    if (v15)
    {
      goto LABEL_28;
    }

    goto LABEL_29;
  }

  v34 = a5;
  v17 = CFGetTypeID(a4);
  if (v17 != CFArrayGetTypeID())
  {
    playercoordinator_handleSetProperty_cold_1(&v35);
    return v35;
  }

  Count = CFArrayGetCount(a4);
  if (Count < 1)
  {
    v25 = 0;
    v15 = a4;
LABEL_40:
    v30 = *(DerivedStorage + 72);
    *(DerivedStorage + 72) = a4;
    CFRetain(a4);
    a4 = v15;
    v15 = v25;
    a5 = v34;
    if (v30)
    {
      goto LABEL_41;
    }

    goto LABEL_7;
  }

  v19 = Count;
  v33 = a6;
  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], Count, MEMORY[0x1E695E9C0]);
  if (!Mutable)
  {
    playercoordinator_handleSetProperty_cold_5(&v35);
    return v35;
  }

  v15 = Mutable;
  v21 = 0;
  while (1)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(a4, v21);
    if (!ValueAtIndex || (v23 = CFGetTypeID(ValueAtIndex), v23 != FigPlaybackItemGetTypeID()))
    {
      playercoordinator_handleSetProperty_cold_4(&v35);
LABEL_48:
      v24 = 0;
      goto LABEL_50;
    }

    if (CMBaseObjectGetVTable() != &kFigPlaybackItemCoordinatorVTable)
    {
      playercoordinator_handleSetProperty_cold_2(&v35);
      goto LABEL_48;
    }

    CMBaseObjectGetDerivedStorage();
    v24 = FigCFWeakReferenceHolderCopyReferencedObject();
    if (v24 != a1)
    {
      break;
    }

    FigCFArrayAppendValue();
    if (a1)
    {
      CFRelease(v24);
    }

    if (v19 == ++v21)
    {
      v25 = v15;
      a6 = v33;
      goto LABEL_40;
    }
  }

  playercoordinator_handleSetProperty_cold_3(&v35);
LABEL_50:
  v27 = v35;
LABEL_28:
  CFRelease(v15);
LABEL_29:
  if (v24)
  {
    CFRelease(v24);
  }

  return v27;
}

uint64_t itemcoordinator_Invalidate(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v2 = FigCFWeakReferenceHolderCopyReferencedObject();
  CMBaseObjectGetDerivedStorage();
  if (!*(DerivedStorage + 8))
  {
    v6 = 0;
    if (!v2)
    {
      return v6;
    }

    goto LABEL_11;
  }

  if (v2)
  {
    FigCFWeakReferenceTableRemoveValue();
  }

  CMNotificationCenterGetDefaultLocalCenter();
  FigNotificationCenterRemoveWeakListener();
  FigPlaybackItemGetFigBaseObject();
  if (!v3)
  {
    v6 = 4294954516;
    if (!v2)
    {
      return v6;
    }

    goto LABEL_11;
  }

  v4 = v3;
  v5 = *(*(CMBaseObjectGetVTable() + 8) + 24);
  if (v5)
  {
    v6 = v5(v4);
    if (!v2)
    {
      return v6;
    }

    goto LABEL_11;
  }

  v6 = 4294954514;
  if (v2)
  {
LABEL_11:
    CFRelease(v2);
  }

  return v6;
}

void itemcoordinator_Finalize(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigPlaybackItemGetFigBaseObject();
  if (v2)
  {
    v3 = v2;
    v4 = *(*(CMBaseObjectGetVTable() + 8) + 24);
    if (v4)
    {
      v4(v3);
    }
  }

  v5 = DerivedStorage[3];
  if (v5)
  {
    CFRelease(v5);
    DerivedStorage[3] = 0;
  }

  v6 = DerivedStorage[4];
  if (v6)
  {
    CFRelease(v6);
    DerivedStorage[4] = 0;
  }

  v7 = DerivedStorage[2];
  if (v7)
  {
    CFRelease(v7);
    DerivedStorage[2] = 0;
  }

  v8 = DerivedStorage[1];
  if (v8)
  {
    CFRelease(v8);
    DerivedStorage[1] = 0;
  }
}

uint64_t itemcoordinator_CopyProperty(uint64_t a1, const void *a2, uint64_t a3, void *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a1)
  {
    v9 = DerivedStorage;
    if (*DerivedStorage)
    {
      itemcoordinator_CopyProperty_cold_1(&v16);
      return v16;
    }

    else if (*(DerivedStorage + 8))
    {
      if (CFEqual(a2, @"InterstitialTimeRanges"))
      {
        v10 = *(v9 + 24);
        if (v10)
        {
LABEL_6:
          v11 = CFRetain(v10);
LABEL_10:
          result = 0;
          *a4 = v11;
          return result;
        }

LABEL_9:
        v11 = 0;
        goto LABEL_10;
      }

      if (CFEqual(a2, @"IntegratedTimelineTimeOffsets"))
      {
        v10 = *(v9 + 32);
        if (v10)
        {
          goto LABEL_6;
        }

        goto LABEL_9;
      }

      FigPlaybackItemGetFigBaseObject();
      v14 = v13;
      v15 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      if (v15)
      {

        return v15(v14, a2, a3, a4);
      }

      else
      {
        return 4294954514;
      }
    }

    else
    {
      itemcoordinator_CopyProperty_cold_2(&v17);
      return v17;
    }
  }

  else
  {
    itemcoordinator_CopyProperty_cold_3(&v18);
    return v18;
  }
}

uint64_t itemcoordinator_SetProperty(uint64_t a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a1)
  {
    if (*DerivedStorage)
    {
      itemcoordinator_SetProperty_cold_1(&v7);
      return v7;
    }

    else
    {
      v5 = *(DerivedStorage + 8);
      if (v5)
      {

        return FPSupport_HandlePlaybackItemSetPropertyAndForwardToSubItem(a1, v5, a2);
      }

      else
      {
        itemcoordinator_SetProperty_cold_2(&v8);
        return v8;
      }
    }
  }

  else
  {
    itemcoordinator_SetProperty_cold_3(&v9);
    return v9;
  }
}

double itemcoordinator_reflectSubItemNotification(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (*CMBaseObjectGetDerivedStorage())
  {
    return itemcoordinator_reflectSubItemNotification_cold_1();
  }

  CMNotificationCenterGetDefaultLocalCenter();

  CMNotificationCenterPostNotification();
  return result;
}

const void *itemcoordinator_handleSetProperty(uint64_t a1, uint64_t a2, const void *a3, const void *a4, char *a5, void *a6, void *a7)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!CFEqual(a3, @"InterstitialTimeRanges"))
  {
    if (!CFEqual(a3, @"IntegratedTimelineTimeOffsets"))
    {
      v19 = 0;
      v15 = 0;
      goto LABEL_22;
    }

    if (a4)
    {
      v16 = CFGetTypeID(a4);
      if (v16 != CFArrayGetTypeID())
      {
        FigSignalErrorAtGM("%s signalled err=%d at <>:%d", 0, 4294954516, "(Fig)", 271, v7);
        goto LABEL_20;
      }

      v17 = *(DerivedStorage + 32);
      *(DerivedStorage + 32) = a4;
      CFRetain(a4);
      if (!v17)
      {
LABEL_17:
        CMNotificationCenterGetDefaultLocalCenter();
        CMNotificationCenterPostNotification();
        goto LABEL_18;
      }
    }

    else
    {
      v17 = *(DerivedStorage + 32);
      *(DerivedStorage + 32) = 0;
      if (!v17)
      {
        goto LABEL_17;
      }
    }

    CFRelease(v17);
    goto LABEL_17;
  }

  if (a4)
  {
    v14 = CFGetTypeID(a4);
    if (v14 == CFArrayGetTypeID())
    {
      v15 = *(DerivedStorage + 24);
      *(DerivedStorage + 24) = a4;
      CFRetain(a4);
      if (!v15)
      {
        goto LABEL_21;
      }

      goto LABEL_12;
    }

    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", 0, 4294954516, "(Fig)", 256, v7);
LABEL_20:
    v15 = v18;
    goto LABEL_21;
  }

  v15 = *(DerivedStorage + 24);
  *(DerivedStorage + 24) = 0;
  if (v15)
  {
LABEL_12:
    CFRelease(v15);
LABEL_18:
    v15 = 0;
  }

LABEL_21:
  v19 = 1;
LABEL_22:
  *a5 = v19;
  if (a3)
  {
    v20 = CFRetain(a3);
  }

  else
  {
    v20 = 0;
  }

  *a6 = v20;
  if (a4)
  {
    v21 = CFRetain(a4);
  }

  else
  {
    v21 = 0;
  }

  *a7 = v21;
  return v15;
}

uint64_t itemcoordinator_GetDimensions(uint64_t a1, uint64_t a2, uint64_t a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a1)
  {
    if (*DerivedStorage)
    {
      itemcoordinator_GetDimensions_cold_1(&v10);
      return v10;
    }

    else
    {
      v7 = *(DerivedStorage + 8);
      if (v7)
      {
        v8 = *(*(CMBaseObjectGetVTable() + 16) + 8);
        if (v8)
        {

          return v8(v7, a2, a3);
        }

        else
        {
          return 4294954514;
        }
      }

      else
      {
        itemcoordinator_GetDimensions_cold_2(&v11);
        return v11;
      }
    }
  }

  else
  {
    itemcoordinator_GetDimensions_cold_3(&v12);
    return v12;
  }
}

uint64_t itemcoordinator_GetDuration(uint64_t a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a1)
  {
    if (*DerivedStorage)
    {
      itemcoordinator_GetDuration_cold_1(&v8);
      return v8;
    }

    else
    {
      v5 = *(DerivedStorage + 8);
      if (v5)
      {
        v6 = *(*(CMBaseObjectGetVTable() + 16) + 16);
        if (v6)
        {

          return v6(v5, a2);
        }

        else
        {
          return 4294954514;
        }
      }

      else
      {
        itemcoordinator_GetDuration_cold_2(&v9);
        return v9;
      }
    }
  }

  else
  {
    itemcoordinator_GetDuration_cold_3(&v10);
    return v10;
  }
}

uint64_t itemcoordinator_SetCurrentTime(uint64_t a1, __int128 *a2, uint64_t a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!a1)
  {
    itemcoordinator_SetCurrentTime_cold_3(&v12);
    return v12;
  }

  if (*DerivedStorage)
  {
    itemcoordinator_SetCurrentTime_cold_1(&v12);
    return v12;
  }

  v7 = *(DerivedStorage + 8);
  if (!v7)
  {
    itemcoordinator_SetCurrentTime_cold_2(&v12);
    return v12;
  }

  v10 = *a2;
  v11 = *(a2 + 2);
  v8 = *(*(CMBaseObjectGetVTable() + 16) + 24);
  if (!v8)
  {
    return 4294954514;
  }

  v12 = v10;
  v13 = v11;
  return v8(v7, &v12, a3);
}

uint64_t itemcoordinator_GetCurrentTime(uint64_t a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a1)
  {
    if (*DerivedStorage)
    {
      itemcoordinator_GetCurrentTime_cold_1(&v8);
      return v8;
    }

    else
    {
      v5 = *(DerivedStorage + 8);
      if (v5)
      {
        v6 = *(*(CMBaseObjectGetVTable() + 16) + 32);
        if (v6)
        {

          return v6(v5, a2);
        }

        else
        {
          return 4294954514;
        }
      }

      else
      {
        itemcoordinator_GetCurrentTime_cold_2(&v9);
        return v9;
      }
    }
  }

  else
  {
    itemcoordinator_GetCurrentTime_cold_3(&v10);
    return v10;
  }
}

uint64_t itemcoordinator_CopyTrackProperty(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a1)
  {
    if (*DerivedStorage)
    {
      itemcoordinator_CopyTrackProperty_cold_1(&v14);
      return v14;
    }

    else
    {
      v11 = *(DerivedStorage + 8);
      if (v11)
      {
        v12 = *(*(CMBaseObjectGetVTable() + 16) + 40);
        if (v12)
        {

          return v12(v11, a2, a3, a4, a5);
        }

        else
        {
          return 4294954514;
        }
      }

      else
      {
        itemcoordinator_CopyTrackProperty_cold_2(&v15);
        return v15;
      }
    }
  }

  else
  {
    itemcoordinator_CopyTrackProperty_cold_3(&v16);
    return v16;
  }
}

uint64_t itemcoordinator_MakeReadyForInspection(uint64_t a1, uint64_t a2, uint64_t a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a1)
  {
    if (*DerivedStorage)
    {
      itemcoordinator_MakeReadyForInspection_cold_1(&v10);
      return v10;
    }

    else
    {
      v7 = *(DerivedStorage + 8);
      if (v7)
      {
        v8 = *(*(CMBaseObjectGetVTable() + 16) + 48);
        if (v8)
        {

          return v8(v7, a2, a3);
        }

        else
        {
          return 4294954514;
        }
      }

      else
      {
        itemcoordinator_MakeReadyForInspection_cold_2(&v11);
        return v11;
      }
    }
  }

  else
  {
    itemcoordinator_MakeReadyForInspection_cold_3(&v12);
    return v12;
  }
}

uint64_t itemcoordinator_CopyCommonMetadata(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a1)
  {
    if (*DerivedStorage)
    {
      itemcoordinator_CopyCommonMetadata_cold_1(&v12);
      return v12;
    }

    else
    {
      v9 = *(DerivedStorage + 8);
      if (v9)
      {
        v10 = *(*(CMBaseObjectGetVTable() + 16) + 64);
        if (v10)
        {

          return v10(v9, a2, a3, a4);
        }

        else
        {
          return 4294954514;
        }
      }

      else
      {
        itemcoordinator_CopyCommonMetadata_cold_2(&v13);
        return v13;
      }
    }
  }

  else
  {
    itemcoordinator_CopyCommonMetadata_cold_3(&v14);
    return v14;
  }
}

uint64_t itemcoordinator_CopyChapterImageData(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a1)
  {
    if (*DerivedStorage)
    {
      itemcoordinator_CopyChapterImageData_cold_1(&v12);
      return v12;
    }

    else
    {
      v9 = *(DerivedStorage + 8);
      if (v9)
      {
        v10 = *(*(CMBaseObjectGetVTable() + 16) + 72);
        if (v10)
        {

          return v10(v9, a2, a3, a4);
        }

        else
        {
          return 4294954514;
        }
      }

      else
      {
        itemcoordinator_CopyChapterImageData_cold_2(&v13);
        return v13;
      }
    }
  }

  else
  {
    itemcoordinator_CopyChapterImageData_cold_3(&v14);
    return v14;
  }
}

uint64_t itemcoordinator_GetNextThumbnailTime(uint64_t a1, __int128 *a2, uint64_t a3, uint64_t a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!a1)
  {
    itemcoordinator_GetNextThumbnailTime_cold_3(&v14);
    return v14;
  }

  if (*DerivedStorage)
  {
    itemcoordinator_GetNextThumbnailTime_cold_1(&v14);
    return v14;
  }

  v9 = *(DerivedStorage + 8);
  if (!v9)
  {
    itemcoordinator_GetNextThumbnailTime_cold_2(&v14);
    return v14;
  }

  v12 = *a2;
  v13 = *(a2 + 2);
  v10 = *(*(CMBaseObjectGetVTable() + 16) + 80);
  if (!v10)
  {
    return 4294954514;
  }

  v14 = v12;
  v15 = v13;
  return v10(v9, &v14, a3, a4);
}

uint64_t itemcoordinator_SetCurrentTimeWithRange(uint64_t a1, __int128 *a2, uint64_t a3, __int128 *a4, __int128 *a5)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!a1)
  {
    itemcoordinator_SetCurrentTimeWithRange_cold_3(&v24);
    return v24;
  }

  if (*DerivedStorage)
  {
    itemcoordinator_SetCurrentTimeWithRange_cold_1(&v24);
    return v24;
  }

  v11 = *(DerivedStorage + 8);
  if (!v11)
  {
    itemcoordinator_SetCurrentTimeWithRange_cold_2(&v24);
    return v24;
  }

  v18 = *a2;
  v19 = *(a2 + 2);
  v16 = *a4;
  v17 = *(a4 + 2);
  v14 = *a5;
  v15 = *(a5 + 2);
  v12 = *(*(CMBaseObjectGetVTable() + 16) + 104);
  if (!v12)
  {
    return 4294954514;
  }

  v24 = v18;
  v25 = v19;
  v22 = v16;
  v23 = v17;
  v20 = v14;
  v21 = v15;
  return v12(v11, &v24, a3, &v22, &v20);
}

uint64_t itemcoordinator_SetTrackProperty(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a1)
  {
    if (*DerivedStorage)
    {
      itemcoordinator_SetTrackProperty_cold_1(&v12);
      return v12;
    }

    else
    {
      v9 = *(DerivedStorage + 8);
      if (v9)
      {
        v10 = *(*(CMBaseObjectGetVTable() + 16) + 112);
        if (v10)
        {

          return v10(v9, a2, a3, a4);
        }

        else
        {
          return 4294954514;
        }
      }

      else
      {
        itemcoordinator_SetTrackProperty_cold_2(&v13);
        return v13;
      }
    }
  }

  else
  {
    itemcoordinator_SetTrackProperty_cold_3(&v14);
    return v14;
  }
}

uint64_t itemcoordinator_CopyFormatReader(uint64_t a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a1)
  {
    if (*DerivedStorage)
    {
      itemcoordinator_CopyFormatReader_cold_1(&v8);
      return v8;
    }

    else
    {
      v5 = *(DerivedStorage + 8);
      if (v5)
      {
        v6 = *(*(CMBaseObjectGetVTable() + 16) + 120);
        if (v6)
        {

          return v6(v5, a2);
        }

        else
        {
          return 4294954514;
        }
      }

      else
      {
        itemcoordinator_CopyFormatReader_cold_2(&v9);
        return v9;
      }
    }
  }

  else
  {
    itemcoordinator_CopyFormatReader_cold_3(&v10);
    return v10;
  }
}

uint64_t itemcoordinator_SeekToDateWithID(uint64_t a1, uint64_t a2, uint64_t a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a1)
  {
    if (*DerivedStorage)
    {
      itemcoordinator_SeekToDateWithID_cold_1(&v10);
      return v10;
    }

    else
    {
      v7 = *(DerivedStorage + 8);
      if (v7)
      {
        v8 = *(*(CMBaseObjectGetVTable() + 16) + 128);
        if (v8)
        {

          return v8(v7, a2, a3);
        }

        else
        {
          return 4294954514;
        }
      }

      else
      {
        itemcoordinator_SeekToDateWithID_cold_2(&v11);
        return v11;
      }
    }
  }

  else
  {
    itemcoordinator_SeekToDateWithID_cold_3(&v12);
    return v12;
  }
}

uint64_t itemcoordinator_SetCurrentTimeWithRangeAndID(uint64_t a1, __int128 *a2, uint64_t a3, __int128 *a4, __int128 *a5, uint64_t a6)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!a1)
  {
    itemcoordinator_SetCurrentTimeWithRangeAndID_cold_3(&v26);
    return v26;
  }

  if (*DerivedStorage)
  {
    itemcoordinator_SetCurrentTimeWithRangeAndID_cold_1(&v26);
    return v26;
  }

  v13 = *(DerivedStorage + 8);
  if (!v13)
  {
    itemcoordinator_SetCurrentTimeWithRangeAndID_cold_2(&v26);
    return v26;
  }

  v20 = *a2;
  v21 = *(a2 + 2);
  v18 = *a4;
  v19 = *(a4 + 2);
  v16 = *a5;
  v17 = *(a5 + 2);
  v14 = *(*(CMBaseObjectGetVTable() + 16) + 144);
  if (!v14)
  {
    return 4294954514;
  }

  v26 = v20;
  v27 = v21;
  v24 = v18;
  v25 = v19;
  v22 = v16;
  v23 = v17;
  return v14(v13, &v26, a3, &v24, &v22, a6);
}

uint64_t itemcoordinator_CopyAsset(uint64_t a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a1)
  {
    if (*DerivedStorage)
    {
      itemcoordinator_CopyAsset_cold_1(&v8);
      return v8;
    }

    else
    {
      v5 = *(DerivedStorage + 8);
      if (v5)
      {
        v6 = *(*(CMBaseObjectGetVTable() + 16) + 152);
        if (v6)
        {

          return v6(v5, a2);
        }

        else
        {
          return 4294954514;
        }
      }

      else
      {
        itemcoordinator_CopyAsset_cold_2(&v9);
        return v9;
      }
    }
  }

  else
  {
    itemcoordinator_CopyAsset_cold_3(&v10);
    return v10;
  }
}

uint64_t itemcoordinator_SetProperties(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a1)
  {
    if (*DerivedStorage)
    {
      itemcoordinator_SetProperties_cold_1(&v9);
      return v9;
    }

    else
    {
      v7 = *(DerivedStorage + 8);
      if (v7)
      {

        return FPSupport_HandlePlaybackItemSetPropertiesAndForwardToSubItem(a1, v7, 0, itemcoordinator_handleSetProperty, a2, a3);
      }

      else
      {
        itemcoordinator_SetProperties_cold_2(&v10);
        return v10;
      }
    }
  }

  else
  {
    itemcoordinator_SetProperties_cold_3(&v11);
    return v11;
  }
}

uint64_t itemcoordinator_ExtractAndRetainNextSampleBuffer(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a1)
  {
    if (*DerivedStorage)
    {
      itemcoordinator_ExtractAndRetainNextSampleBuffer_cold_1(&v12);
      return v12;
    }

    else
    {
      v9 = *(DerivedStorage + 8);
      if (v9)
      {
        v10 = *(*(CMBaseObjectGetVTable() + 16) + 168);
        if (v10)
        {

          return v10(v9, a2, a3, a4);
        }

        else
        {
          return 4294954514;
        }
      }

      else
      {
        itemcoordinator_ExtractAndRetainNextSampleBuffer_cold_2(&v13);
        return v13;
      }
    }
  }

  else
  {
    itemcoordinator_ExtractAndRetainNextSampleBuffer_cold_3(&v14);
    return v14;
  }
}

uint64_t itemcoordinator_SetCurrentTimeWithOptions(uint64_t a1, __int128 *a2, uint64_t a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!a1)
  {
    itemcoordinator_SetCurrentTimeWithOptions_cold_3(&v12);
    return v12;
  }

  if (*DerivedStorage)
  {
    itemcoordinator_SetCurrentTimeWithOptions_cold_1(&v12);
    return v12;
  }

  v7 = *(DerivedStorage + 8);
  if (!v7)
  {
    itemcoordinator_SetCurrentTimeWithOptions_cold_2(&v12);
    return v12;
  }

  v10 = *a2;
  v11 = *(a2 + 2);
  v8 = *(*(CMBaseObjectGetVTable() + 16) + 176);
  if (!v8)
  {
    return 4294954514;
  }

  v12 = v10;
  v13 = v11;
  return v8(v7, &v12, a3);
}

uint64_t playercoordinator_AddToPlayQueue(uint64_t a1, uint64_t a2, uint64_t a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v6 = CMBaseObjectGetDerivedStorage();
  if (a1)
  {
    if (*DerivedStorage)
    {
      playercoordinator_AddToPlayQueue_cold_1(&v11);
      return v11;
    }

    else
    {
      v7 = *(DerivedStorage + 8);
      if (v7)
      {
        v8 = *(v6 + 8);
        if (a3)
        {
          a3 = *(CMBaseObjectGetDerivedStorage() + 8);
          v7 = *(DerivedStorage + 8);
        }

        v9 = *(*(CMBaseObjectGetVTable() + 16) + 16);
        if (v9)
        {

          return v9(v7, v8, a3);
        }

        else
        {
          return 4294954514;
        }
      }

      else
      {
        playercoordinator_AddToPlayQueue_cold_2(&v12);
        return v12;
      }
    }
  }

  else
  {
    playercoordinator_AddToPlayQueue_cold_3(&v13);
    return v13;
  }
}

uint64_t playercoordinator_RemoveFromPlayQueue(uint64_t a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a1)
  {
    v5 = DerivedStorage;
    if (*DerivedStorage)
    {
      playercoordinator_RemoveFromPlayQueue_cold_1(&v9);
      return v9;
    }

    else
    {
      v6 = *(DerivedStorage + 8);
      if (v6)
      {
        if (a2)
        {
          a2 = *(CMBaseObjectGetDerivedStorage() + 8);
          v6 = *(v5 + 8);
        }

        v7 = *(*(CMBaseObjectGetVTable() + 16) + 24);
        if (v7)
        {

          return v7(v6, a2);
        }

        else
        {
          return 4294954514;
        }
      }

      else
      {
        playercoordinator_RemoveFromPlayQueue_cold_2(&v10);
        return v10;
      }
    }
  }

  else
  {
    playercoordinator_RemoveFromPlayQueue_cold_3(&v11);
    return v11;
  }
}

uint64_t playercoordinator_CopyPlayQueueItem(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  cf = 0;
  if (!a1)
  {
    playercoordinator_CopyPlayQueueItem_cold_4(&v15);
    return v15;
  }

  v7 = DerivedStorage;
  if (*DerivedStorage)
  {
    playercoordinator_CopyPlayQueueItem_cold_1(&v15);
    goto LABEL_20;
  }

  v8 = *(DerivedStorage + 8);
  if (!v8)
  {
    playercoordinator_CopyPlayQueueItem_cold_3(&v15);
    goto LABEL_20;
  }

  if (a2)
  {
    a2 = *(CMBaseObjectGetDerivedStorage() + 8);
    v8 = *(v7 + 8);
  }

  v9 = *(*(CMBaseObjectGetVTable() + 16) + 32);
  if (!v9)
  {
    v12 = 4294954514;
    goto LABEL_14;
  }

  v10 = v9(v8, a2, &cf);
  if (!v10)
  {
    if (cf)
    {
      v11 = FigCFWeakReferenceTableCopyValue();
      if (!v11)
      {
        playercoordinator_CopyPlayQueueItem_cold_2(&v15);
LABEL_20:
        v12 = v15;
        goto LABEL_14;
      }
    }

    else
    {
      v11 = 0;
    }

    v12 = 0;
    *a3 = v11;
    goto LABEL_14;
  }

  v12 = v10;
LABEL_14:
  if (cf)
  {
    CFRelease(cf);
  }

  return v12;
}

uint64_t playercoordinator_SetRate(uint64_t a1, float a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a1)
  {
    if (*DerivedStorage)
    {
      playercoordinator_SetRate_cold_1(&v9);
      return v9;
    }

    else
    {
      v5 = *(DerivedStorage + 8);
      if (v5)
      {
        v6 = *(*(CMBaseObjectGetVTable() + 16) + 40);
        if (v6)
        {
          v7.n128_f32[0] = a2;

          return v6(v5, v7);
        }

        else
        {
          return 4294954514;
        }
      }

      else
      {
        playercoordinator_SetRate_cold_2(&v10);
        return v10;
      }
    }
  }

  else
  {
    playercoordinator_SetRate_cold_3(&v11);
    return v11;
  }
}

uint64_t playercoordinator_GetRate(uint64_t a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a1)
  {
    if (*DerivedStorage)
    {
      playercoordinator_GetRate_cold_1(&v8);
      return v8;
    }

    else
    {
      v5 = *(DerivedStorage + 8);
      if (v5)
      {
        v6 = *(*(CMBaseObjectGetVTable() + 16) + 48);
        if (v6)
        {

          return v6(v5, a2);
        }

        else
        {
          return 4294954514;
        }
      }

      else
      {
        playercoordinator_GetRate_cold_2(&v9);
        return v9;
      }
    }
  }

  else
  {
    playercoordinator_GetRate_cold_3(&v10);
    return v10;
  }
}

uint64_t playercoordinator_SetRateWithFade(uint64_t a1, __int128 *a2, float a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!a1)
  {
    playercoordinator_SetRateWithFade_cold_3(&v12);
    return v12;
  }

  if (*DerivedStorage)
  {
    playercoordinator_SetRateWithFade_cold_1(&v12);
    return v12;
  }

  v7 = *(DerivedStorage + 8);
  if (!v7)
  {
    playercoordinator_SetRateWithFade_cold_2(&v12);
    return v12;
  }

  v10 = *a2;
  v11 = *(a2 + 2);
  v8 = *(*(CMBaseObjectGetVTable() + 16) + 56);
  if (!v8)
  {
    return 4294954514;
  }

  v12 = v10;
  v13 = v11;
  return v8(v7, &v12, a3);
}

uint64_t playercoordinator_StartPreroll(uint64_t a1, uint64_t a2, float a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a1)
  {
    if (*DerivedStorage)
    {
      playercoordinator_StartPreroll_cold_1(&v11);
      return v11;
    }

    else
    {
      v7 = *(DerivedStorage + 8);
      if (v7)
      {
        v8 = *(*(CMBaseObjectGetVTable() + 16) + 64);
        if (v8)
        {
          v9.n128_f32[0] = a3;

          return v8(v7, a2, v9);
        }

        else
        {
          return 4294954514;
        }
      }

      else
      {
        playercoordinator_StartPreroll_cold_2(&v12);
        return v12;
      }
    }
  }

  else
  {
    playercoordinator_StartPreroll_cold_3(&v13);
    return v13;
  }
}

uint64_t playercoordinator_StepByCount(uint64_t a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a1)
  {
    if (*DerivedStorage)
    {
      playercoordinator_StepByCount_cold_1(&v8);
      return v8;
    }

    else
    {
      v5 = *(DerivedStorage + 8);
      if (v5)
      {
        v6 = *(*(CMBaseObjectGetVTable() + 16) + 72);
        if (v6)
        {

          return v6(v5, a2);
        }

        else
        {
          return 4294954514;
        }
      }

      else
      {
        playercoordinator_StepByCount_cold_2(&v9);
        return v9;
      }
    }
  }

  else
  {
    playercoordinator_StepByCount_cold_3(&v10);
    return v10;
  }
}

uint64_t playercoordinator_SetRateAndAnchorTime(uint64_t a1, __int128 *a2, __int128 *a3, uint64_t a4, float a5)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!a1)
  {
    playercoordinator_SetRateAndAnchorTime_cold_3(&v20);
    return v20;
  }

  if (*DerivedStorage)
  {
    playercoordinator_SetRateAndAnchorTime_cold_1(&v20);
    return v20;
  }

  v11 = *(DerivedStorage + 8);
  if (!v11)
  {
    playercoordinator_SetRateAndAnchorTime_cold_2(&v20);
    return v20;
  }

  v16 = *a2;
  v17 = *(a2 + 2);
  v14 = *a3;
  v15 = *(a3 + 2);
  v12 = *(*(CMBaseObjectGetVTable() + 16) + 88);
  if (!v12)
  {
    return 4294954514;
  }

  v20 = v16;
  v21 = v17;
  v18 = v14;
  v19 = v15;
  return v12(v11, &v20, &v18, a4, a5);
}

uint64_t playercoordinator_SetRateWithOptions(uint64_t a1, uint64_t a2, float a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a1)
  {
    if (*DerivedStorage)
    {
      playercoordinator_SetRateWithOptions_cold_1(&v11);
      return v11;
    }

    else
    {
      v7 = *(DerivedStorage + 8);
      if (v7)
      {
        v8 = *(*(CMBaseObjectGetVTable() + 16) + 104);
        if (v8)
        {
          v9.n128_f32[0] = a3;

          return v8(v7, a2, v9);
        }

        else
        {
          return 4294954514;
        }
      }

      else
      {
        playercoordinator_SetRateWithOptions_cold_2(&v12);
        return v12;
      }
    }
  }

  else
  {
    playercoordinator_SetRateWithOptions_cold_3(&v13);
    return v13;
  }
}

uint64_t playercoordinator_SetProperties(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a1)
  {
    if (*DerivedStorage)
    {
      playercoordinator_SetProperties_cold_1(&v9);
      return v9;
    }

    else
    {
      v7 = *(DerivedStorage + 8);
      if (v7)
      {

        return FPSupport_HandlePlayerSetPropertiesAndForwardToSubPlayer(a1, v7, 0, playercoordinator_handleSetProperty, a2, a3);
      }

      else
      {
        playercoordinator_SetProperties_cold_2(&v10);
        return v10;
      }
    }
  }

  else
  {
    playercoordinator_SetProperties_cold_3(&v11);
    return v11;
  }
}

uint64_t playercoordinator_ReevaluateRouteConfiguration(uint64_t a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a1)
  {
    if (*DerivedStorage)
    {
      playercoordinator_ReevaluateRouteConfiguration_cold_1(&v7);
      return v7;
    }

    else
    {
      v5 = *(DerivedStorage + 8);
      if (v5)
      {

        return FigPlayerReevaluateRouteConfigurationForReason(v5, a2, @" -> coordinated sub-player");
      }

      else
      {
        playercoordinator_ReevaluateRouteConfiguration_cold_2(&v8);
        return v8;
      }
    }
  }

  else
  {
    playercoordinator_ReevaluateRouteConfiguration_cold_3(&v9);
    return v9;
  }
}

uint64_t playercoordinator_AddExternalStartupTask(uint64_t a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a1)
  {
    if (*DerivedStorage)
    {
      playercoordinator_AddExternalStartupTask_cold_1(&v8);
      return v8;
    }

    else
    {
      v5 = *(DerivedStorage + 8);
      if (v5)
      {
        v6 = *(*(CMBaseObjectGetVTable() + 16) + 128);
        if (v6)
        {

          return v6(v5, a2);
        }

        else
        {
          return 4294954514;
        }
      }

      else
      {
        playercoordinator_AddExternalStartupTask_cold_2(&v9);
        return v9;
      }
    }
  }

  else
  {
    playercoordinator_AddExternalStartupTask_cold_3(&v10);
    return v10;
  }
}

uint64_t playercoordinator_RemoveExternalStartupTask(uint64_t a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a1)
  {
    if (*DerivedStorage)
    {
      playercoordinator_RemoveExternalStartupTask_cold_1(&v8);
      return v8;
    }

    else
    {
      v5 = *(DerivedStorage + 8);
      if (v5)
      {
        v6 = *(*(CMBaseObjectGetVTable() + 16) + 136);
        if (v6)
        {

          return v6(v5, a2);
        }

        else
        {
          return 4294954514;
        }
      }

      else
      {
        playercoordinator_RemoveExternalStartupTask_cold_2(&v9);
        return v9;
      }
    }
  }

  else
  {
    playercoordinator_RemoveExternalStartupTask_cold_3(&v10);
    return v10;
  }
}

uint64_t playercoordinator_CopyDisplayedCVPixelBuffer(uint64_t a1, uint64_t a2, uint64_t a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a1)
  {
    if (*DerivedStorage)
    {
      playercoordinator_CopyDisplayedCVPixelBuffer_cold_1(&v10);
      return v10;
    }

    else
    {
      v7 = *(DerivedStorage + 8);
      if (v7)
      {
        v8 = *(*(CMBaseObjectGetVTable() + 16) + 152);
        if (v8)
        {

          return v8(v7, a2, a3);
        }

        else
        {
          return 4294954514;
        }
      }

      else
      {
        playercoordinator_CopyDisplayedCVPixelBuffer_cold_2(&v11);
        return v11;
      }
    }
  }

  else
  {
    playercoordinator_CopyDisplayedCVPixelBuffer_cold_3(&v12);
    return v12;
  }
}

uint64_t playercoordinator_BeginInterruption(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a1)
  {
    if (*DerivedStorage)
    {
      playercoordinator_BeginInterruption_cold_1(&v7);
      return v7;
    }

    else
    {
      v3 = *(DerivedStorage + 8);
      if (v3)
      {
        v4 = *(CMBaseObjectGetVTable() + 24);
        if (v4 && (v5 = *(v4 + 8)) != 0)
        {

          return v5(v3);
        }

        else
        {
          return 4294954514;
        }
      }

      else
      {
        playercoordinator_BeginInterruption_cold_2(&v8);
        return v8;
      }
    }
  }

  else
  {
    playercoordinator_BeginInterruption_cold_3(&v9);
    return v9;
  }
}

uint64_t playercoordinator_EndInterruption(uint64_t a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a1)
  {
    if (*DerivedStorage)
    {
      playercoordinator_EndInterruption_cold_1(&v9);
      return v9;
    }

    else
    {
      v5 = *(DerivedStorage + 8);
      if (v5)
      {
        v6 = *(CMBaseObjectGetVTable() + 24);
        if (v6 && (v7 = *(v6 + 16)) != 0)
        {

          return v7(v5, a2);
        }

        else
        {
          return 4294954514;
        }
      }

      else
      {
        playercoordinator_EndInterruption_cold_2(&v10);
        return v10;
      }
    }
  }

  else
  {
    playercoordinator_EndInterruption_cold_3(&v11);
    return v11;
  }
}

uint64_t playercoordinator_SetConnectionActive(uint64_t a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a1)
  {
    if (*DerivedStorage)
    {
      playercoordinator_SetConnectionActive_cold_1(&v9);
      return v9;
    }

    else
    {
      v5 = *(DerivedStorage + 8);
      if (v5)
      {
        v6 = *(CMBaseObjectGetVTable() + 24);
        if (v6 && (v7 = *(v6 + 24)) != 0)
        {

          return v7(v5, a2);
        }

        else
        {
          return 4294954514;
        }
      }

      else
      {
        playercoordinator_SetConnectionActive_cold_2(&v10);
        return v10;
      }
    }
  }

  else
  {
    playercoordinator_SetConnectionActive_cold_3(&v11);
    return v11;
  }
}

uint64_t FigMediaRequestCreate(uint64_t a1, const void *a2, uint64_t a3, uint64_t a4, const void *a5, const void *a6, const void *a7, const void *a8, CFTypeRef a9, int a10, uint64_t a11, const void *a12, uint64_t a13, const void *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, CFTypeRef *a19)
{
  v44 = *MEMORY[0x1E69E9840];
  FigNote_AllowInternalDefaultLogs();
  fig_note_initialize_category_with_default_work_cf();
  fig_note_initialize_category_with_default_work_cf();
  if (!a19)
  {
    FigMediaRequestCreate_cold_4(v43);
    return v43[0];
  }

  if (sRegisterFigMediaRequestClassIDOnce != -1)
  {
    FigMediaRequestCreate_cold_1();
  }

  v23 = CMDerivedObjectCreate();
  if (v23)
  {
    return v23;
  }

  Storage = mr_getStorage(0);
  if (a2)
  {
    v25 = CFRetain(a2);
  }

  else
  {
    v25 = 0;
  }

  *(Storage + 16) = v25;
  if (a5)
  {
    v26 = CFRetain(a5);
  }

  else
  {
    v26 = 0;
  }

  *(Storage + 24) = v26;
  if (a6)
  {
    v27 = CFRetain(a6);
  }

  else
  {
    v27 = 0;
  }

  *(Storage + 32) = v27;
  if (a7)
  {
    v28 = CFRetain(a7);
  }

  else
  {
    v28 = 0;
  }

  *(Storage + 40) = v28;
  v29 = a8;
  if (a8)
  {
    v29 = CFRetain(a8);
  }

  *(Storage + 56) = v29;
  if (a9)
  {
    v30 = CFRetain(a9);
  }

  else
  {
    v30 = 0;
  }

  *(Storage + 64) = v30;
  if (a12)
  {
    v31 = CFRetain(a12);
  }

  else
  {
    v31 = 0;
  }

  *(Storage + 72) = v31;
  *(Storage + 80) = a3;
  *(Storage + 88) = a4;
  if (a14)
  {
    v32 = CFRetain(a14);
  }

  else
  {
    v32 = 0;
  }

  *(Storage + 104) = a16;
  *(Storage + 112) = a17;
  *(Storage + 48) = a10;
  *(Storage + 168) = a11;
  *(Storage + 192) = a13;
  *Storage = a15;
  *(Storage + 96) = v32;
  *(Storage + 148) = a18 & 4;
  *(Storage + 149) = a18 & 1;
  *(Storage + 150) = a18 & 2;
  AllocatorForMedia = FigGetAllocatorForMedia();
  Mutable = CFArrayCreateMutable(AllocatorForMedia, 0, MEMORY[0x1E695E9C0]);
  *(Storage + 128) = Mutable;
  if (!Mutable)
  {
    FigMediaRequestCreate_cold_3(v43);
    return v43[0];
  }

  v23 = FigRetainProxyCreate();
  if (v23)
  {
    return v23;
  }

  mr_updateNetworkRequestType(0);
  v36 = FigHTTPSchedulerRetain(0, v35);
  *(Storage + 8) = v36;
  if (!v36)
  {
    FigMediaRequestCreate_cold_2(v43);
    return v43[0];
  }

  if (dword_1EAF17308)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v38 = 0;
  *a19 = 0;
  return v38;
}

uint64_t mr_getStorage(uint64_t a1)
{
  if (!a1 || CMBaseObjectGetVTable() != &kMediaRequest_VTable)
  {
    return 0;
  }

  return CMBaseObjectGetDerivedStorage();
}

uint64_t mr_updateNetworkRequestType(uint64_t a1)
{
  result = mr_getStorage(a1);
  v2 = result;
  if (*(result + 150))
  {
    v3 = 2;
  }

  else
  {
    result = FigCFHTTPIsHTTPBasedURL(*(result + 16));
    if (result)
    {
      v3 = 1;
    }

    else
    {
      result = FigCFHTTPIsDataURL(*(v2 + 16));
      v3 = 1;
      if (!result)
      {
        v3 = 2;
      }
    }
  }

  *(v2 + 152) = v3;
  return result;
}

uint64_t FigMediaRequestDeliverOnceWithCacheCreate(uint64_t a1, const void *a2, const void *a3, const void *a4, uint64_t a5, uint64_t a6, const void *a7, const void *a8, const void *a9, uint64_t a10, CFTypeRef a11, int a12, uint64_t a13, const void *a14, const void *a15, const void *a16, uint64_t a17, uint64_t a18, NSObject *a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, CFTypeRef *a24)
{
  v43 = *MEMORY[0x1E69E9840];
  FigNote_AllowInternalDefaultLogs();
  fig_note_initialize_category_with_default_work_cf();
  fig_note_initialize_category_with_default_work_cf();
  if (a24)
  {
    if (sRegisterFigMediaRequestClassIDOnce != -1)
    {
      FigMediaRequestCreate_cold_1();
    }

    v28 = CMDerivedObjectCreate();
    if (v28)
    {
      return v28;
    }

    Storage = mrdowc_getStorage(0);
    if (a2)
    {
      v30 = CFRetain(a2);
    }

    else
    {
      v30 = 0;
    }

    *(Storage + 8) = v30;
    if (a3)
    {
      v31 = CFRetain(a3);
    }

    else
    {
      v31 = 0;
    }

    *(Storage + 16) = v31;
    if (a4)
    {
      v32 = CFRetain(a4);
    }

    else
    {
      v32 = 0;
    }

    *(Storage + 24) = v32;
    *(Storage + 104) = FigCFWeakReferenceHolderCreateWithReferencedObject();
    *(Storage + 112) = a18;
    *(Storage + 120) = a19;
    if (a19)
    {
      dispatch_retain(a19);
    }

    if (qword_1ED4CAC98 != -1)
    {
      FigMediaRequestDeliverOnceWithCacheCreate_cold_2();
    }

    v33 = _MergedGlobals_66;
    *(Storage + 128) = _MergedGlobals_66;
    if (v33)
    {
      dispatch_retain(v33);
    }

    *Storage = FigReentrantMutexCreate();
    *(Storage + 56) = a23;
    *(Storage + 64) = a6;
    *(Storage + 72) = a21 & 8;
    v34 = a16 ? CFRetain(a16) : 0;
    *(Storage + 80) = v34;
    *(Storage + 32) = a5;
    if (a6 == 2)
    {
      CMNotificationCenterGetDefaultLocalCenter();
      v28 = FigNotificationCenterAddWeakListener();
      if (v28)
      {
        return v28;
      }
    }

    v28 = FigMediaRequestCreate(a1, a2, 0, 0x1FFFFFFFFFFFFFLL, a7, a8, a9, 0, a11, a12, 0, a14, 3, a15, *Storage, a22, a20, a21, (Storage + 40));
    if (v28)
    {
      return v28;
    }

    else
    {
      if (dword_1EAF17308)
      {
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      v36 = 0;
      *a24 = 0;
    }
  }

  else
  {
    FigMediaRequestDeliverOnceWithCacheCreate_cold_3(v42);
    return v42[0];
  }

  return v36;
}

uint64_t mrdowc_getStorage(uint64_t a1)
{
  if (!a1 || CMBaseObjectGetVTable() != &kMediaRequestDeliverOnceWithCache_VTable)
  {
    return 0;
  }

  return CMBaseObjectGetDerivedStorage();
}

__CFDictionary *FigMediaRequestCreateErrorLogEntry(uint64_t a1, __CFError *a2, int a3, int a4)
{
  Storage = mrdowc_getStorage(a1);
  v8 = mr_getStorage(*(Storage + 40));
  Code = CFErrorGetCode(a2);
  Domain = CFErrorGetDomain(a2);
  v11 = CFErrorCopyDescription(a2);
  v12 = CFErrorCopyUserInfo(a2);
  if (v8)
  {
    AllocatorForMedia = FigGetAllocatorForMedia();
    Entry = FigErrorLogCreateEntry(AllocatorForMedia, *(v8 + 208), *(Storage + 8), 0, Code, Domain, v11, v12, 0, 0, a3, a4, *(v8 + 40));
    if (!v11)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  Entry = 0;
  if (v11)
  {
LABEL_3:
    CFRelease(v11);
  }

LABEL_4:
  if (v12)
  {
    CFRelease(v12);
  }

  return Entry;
}

uint64_t FigMediaRequestCreateForPlaylist(uint64_t a1, const void *a2, const void *a3, const void *a4, uint64_t a5, uint64_t a6, const void *a7, const void *a8, const void *a9, uint64_t a10, CFTypeRef a11, int a12, uint64_t a13, const void *a14, const void *a15, const void *a16, uint64_t a17, uint64_t a18, uint64_t a19, NSObject *a20, CFTypeRef *a21)
{
  v34 = *MEMORY[0x1E69E9840];
  FigNote_AllowInternalDefaultLogs();
  fig_note_initialize_category_with_default_work_cf();
  fig_note_initialize_category_with_default_work_cf();
  if (a21)
  {
    result = FigMediaRequestDeliverOnceWithCacheCreate(a1, a2, a3, a4, a5, a6, a7, a8, a9, v27, a11, a12, v28, a14, a15, a16, a17, a19, a20, 20000000000, a18, FigStreamingNetworkErrorGetActionForIndexFileNetworkError, FigMediaRequestCreateForPlaylist_cacheCallbacks, a21);
    if (!result)
    {
      if (dword_1EAF17308)
      {
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
        return 0;
      }
    }
  }

  else
  {
    FigMediaRequestCreateForPlaylist_cold_1(v33);
    return v33[0];
  }

  return result;
}

BOOL mrp_CopyFromCacheHandler(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, unint64_t a6)
{
  if (a4 == 1)
  {
    FigStreamingCacheCopyMasterPlaylist(a2, a5, a6);
  }

  else if (a3 && a4 == 2)
  {
    FigStreamingCacheMediaStreamCopyPlaylist(a2, a3, a5, a6);
  }

  return *a5 != 0;
}

uint64_t mrp_storeInCacheHandler(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, const void *a5, const void *a6)
{
  if (a4 == 1)
  {
    return FigStreamingCacheSetMasterPlaylist(a2, a5, a6);
  }

  if (a3)
  {
    if (a4 == 2)
    {
      return FigStreamingCacheMediaStreamSetPlaylist(a2, a3, a5, a6);
    }
  }

  return result;
}

uint64_t FigMediaRequestCreateForSessionData(uint64_t a1, uint64_t a2, const void *a3, uint64_t a4, const void *a5, const void *a6, const void *a7, uint64_t a8, const void *a9, int a10, uint64_t a11, const void *a12, const void *a13, uint64_t a14, uint64_t a15, uint64_t a16, NSObject *a17, CFTypeRef *a18)
{
  v32 = *MEMORY[0x1E69E9840];
  FigNote_AllowInternalDefaultLogs();
  fig_note_initialize_category_with_default_work_cf();
  fig_note_initialize_category_with_default_work_cf();
  if (a18)
  {
    URL = FigSessionDataSpecifierGetURL(a2);
    v23 = FigSessionDataSpecifierGetURL(a2);
    result = FigMediaRequestDeliverOnceWithCacheCreate(a1, URL, v23, a3, 0, a4, a5, a6, a7, v26, a9, a10, v27, a12, a13, 0, a14, a16, a17, 30000000000, a15, FigStreamingNetworkErrorGetActionForSessionDataNetworkError, FigMediaRequestCreateForSessionData_cacheCallbacks, a18);
    if (!result)
    {
      if (dword_1EAF17308)
      {
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
        return 0;
      }
    }
  }

  else
  {
    FigMediaRequestCreateForSessionData_cold_1(v31);
    return v31[0];
  }

  return result;
}

uint64_t mr_invalidate(const void *a1)
{
  v5 = *MEMORY[0x1E69E9840];
  Storage = mr_getStorage(a1);
  if (dword_1EAF17308)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  FigSimpleMutexLock();
  if (*(Storage + 144) <= 1u)
  {
    *(Storage + 144) = 3;
    mr_clearNetworkRequestState(a1);
    mr_issueDidFailCallback(a1, 0, 8);
  }

  FigSimpleMutexUnlock();
  return 0;
}

uint64_t mr_finalize(uint64_t a1)
{
  Storage = mr_getStorage(a1);
  FigRetainProxyInvalidate();
  v2 = *(Storage + 16);
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = *(Storage + 24);
  if (v3)
  {
    CFRelease(v3);
  }

  v4 = *(Storage + 32);
  if (v4)
  {
    CFRelease(v4);
  }

  v5 = *(Storage + 40);
  if (v5)
  {
    CFRelease(v5);
  }

  v6 = *(Storage + 56);
  if (v6)
  {
    CFRelease(v6);
  }

  v7 = *(Storage + 128);
  if (v7)
  {
    CFRelease(v7);
  }

  v8 = *(Storage + 208);
  if (v8)
  {
    CFRelease(v8);
  }

  v9 = *(Storage + 200);
  if (v9)
  {
    v10 = *(Storage + 72);
    v11 = *(*(CMBaseObjectGetVTable() + 16) + 32);
    if (v11)
    {
      v11(v10, v9);
    }
  }

  v12 = *(Storage + 72);
  if (v12)
  {
    CFRelease(v12);
  }

  v13 = *(Storage + 224);
  if (v13)
  {
    CFRelease(v13);
  }

  v14 = *(Storage + 96);
  if (v14)
  {
    CFRelease(v14);
  }

  v15 = *(Storage + 64);
  if (v15)
  {
    CFRelease(v15);
  }

  v16 = *(Storage + 176);
  if (v16)
  {
    CFRelease(v16);
  }

  v17 = *(Storage + 184);
  if (v17)
  {
    CFRelease(v17);
  }

  ckbutil_cancelAndReleaseTimer((Storage + 136));
  v18 = *(Storage + 232);
  if (v18)
  {
    CFRelease(v18);
  }

  v19 = *(Storage + 8);
  if (v19)
  {
    dispatch_release(v19);
  }

  return FigSimpleMutexDestroy();
}

void mr_issueDidFailCallbackOnCallbackQueue(void *a1)
{
  v2 = *(a1[3] + 8);
  if (v2)
  {
    v2(*a1, a1[1], a1[7], a1[5], a1[6]);
  }

  if (*a1)
  {
    CFRelease(*a1);
  }

  v3 = a1[1];
  if (v3)
  {
    CFRelease(v3);
  }

  v4 = a1[7];
  if (v4)
  {
    CFRelease(v4);
  }

  v5 = a1[5];
  if (v5)
  {
    CFRelease(v5);
  }

  MallocZoneForMedia = FigGetMallocZoneForMedia();

  malloc_zone_free(MallocZoneForMedia, a1);
}

uint64_t mr_start(const void *a1)
{
  v43 = *MEMORY[0x1E69E9840];
  Storage = mr_getStorage(a1);
  FigSimpleMutexLock();
  v3 = *(Storage + 152);
  if (v3 != 2)
  {
    if (v3 != 1 || (*(Storage + 192) & 1) == 0)
    {
      goto LABEL_60;
    }

    v4 = &dword_1EAF17000;
    if (a1)
    {
      CMBaseObjectGetVTable();
      DerivedStorage = CMBaseObjectGetDerivedStorage();
      v6 = DerivedStorage;
      if (*(DerivedStorage + 88) == 0x1FFFFFFFFFFFFFLL)
      {
        v34 = 0;
        v35 = 0;
      }

      else
      {
        v34 = *(DerivedStorage + 80);
        v35 = *(DerivedStorage + 88);
      }

      *(DerivedStorage + 144) = 1;
      if (dword_1EAF17308)
      {
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      v14 = *(v6 + 208);
      if (v14)
      {
        CFRelease(v14);
        *(v6 + 208) = 0;
      }

      v15 = *(v6 + 24);
      v16 = CFGetAllocator(a1);
      v17 = *(v6 + 56);
      v18 = *(v6 + 16);
      v32 = *(v6 + 32);
      v33 = *(v6 + 40);
      v19 = *(v6 + 48);
      v20 = *(v6 + 232);
      v21 = *(*(CMBaseObjectGetVTable() + 16) + 8);
      if (v21)
      {
        v41 = 0u;
        v42 = 0u;
        v39 = 0u;
        v40 = 0u;
        v37 = 0u;
        v38 = 0u;
        *cf = 0u;
        v22 = v21(v15, v16, v17, v18, 0, v33, v32, v19, cf, v34, v35, mr_memoryRequestCallback, mr_httpReadCallback, v20, v6 + 208, v6 + 216);
        if (!v22)
        {
          v4 = &dword_1EAF17000;
          if (*(v6 + 112) >= 1)
          {
            mr_startTimer(a1);
          }

          v23 = 0;
          goto LABEL_40;
        }

        v23 = v22;
      }

      else
      {
        v23 = -12782;
      }

      v4 = &dword_1EAF17000;
    }

    else
    {
      mr_start_cold_1(cf);
      v23 = cf[0];
    }

LABEL_40:
    if (v4[194])
    {
      v24 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    if (v23)
    {
      cf[0] = 0;
      FigCreateErrorForOSStatus(v23, cf);
      mr_handleCommonNetworkError(a1, cf[0]);
      if (cf[0])
      {
        CFRelease(cf[0]);
      }
    }

    goto LABEL_60;
  }

  if ((*(Storage + 192) & 2) == 0)
  {
    goto LABEL_60;
  }

  v7 = mr_getStorage(a1);
  *(v7 + 144) = 1;
  FigGetAllocatorForMedia();
  Mutable = FigCustomURLRequestInfoCreateMutable();
  if (Mutable || (Mutable = FigCustomURLRequestInfoSetHTTPHeaders()) != 0 || (Mutable = FigCustomURLRequestInfoSetNetworkHistory()) != 0 || (Mutable = FigCustomURLRequestInfoSetExpectedToBlock()) != 0 || (Mutable = FigCustomURLRequestInfoSetIsSecureStopSupported()) != 0 || (Mutable = FigCustomURLRequestInfoSetIsRenewalRequest()) != 0 || (Mutable = FigCustomURLRequestInfoSetIsPingRequest()) != 0 || (Mutable = FigCustomURLRequestInfoSetAllowedUniversalTypeIdentifiers()) != 0 || (*(v7 + 49) & 4) != 0 && *(v7 + 168) && (Mutable = FigCustomURLRequestInfoSetDefaultLatency()) != 0)
  {
    v29 = Mutable;
    v9 = 0;
    goto LABEL_51;
  }

  v9 = FigCFHTTPCreateUserAgent();
  v10 = FigCustomURLRequestInfoSetUserAgent();
  if (!v10 && ((*(v7 + 48) & 4) == 0 || (v10 = FigCustomURLRequestInfoSetAcceptEncoding()) == 0))
  {
    if ((v11 = *(v7 + 88), *(v7 + 80) <= 0) && (v11 < 1 || v11 == 0x1FFFFFFFFFFFFFLL) || (v10 = FigCustomURLRequestInfoSetByteRange()) == 0)
    {
      if (dword_1EAF17308)
      {
        v12 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      if (*(v7 + 112) >= 1)
      {
        mr_startTimer(a1);
      }

      v25 = *(v7 + 72);
      v26 = *(v7 + 232);
      v27 = *(v7 + 8);
      v28 = *(*(CMBaseObjectGetVTable() + 16) + 24);
      if (!v28)
      {
        v29 = -12782;
        goto LABEL_51;
      }

      v10 = v28(v25, 0, v26, v27, mr_customURLReadCallback, v7 + 200);
    }
  }

  v29 = v10;
LABEL_51:
  if (dword_1EAF17308)
  {
    v30 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (v29)
  {
    cf[0] = 0;
    FigCreateErrorForOSStatus(v29, cf);
    mr_handleCommonNetworkError(a1, cf[0]);
    if (cf[0])
    {
      CFRelease(cf[0]);
    }
  }

  if (v9)
  {
    CFRelease(v9);
  }

LABEL_60:
  FigSimpleMutexUnlock();
  return 0;
}

uint64_t mr_cancel(uint64_t a1, _BYTE *a2)
{
  Storage = mr_getStorage(a1);
  FigSimpleMutexLock();
  if (*(Storage + 144) <= 1u)
  {
    mr_clearNetworkRequestState(a1);
    if (a2)
    {
      *a2 = 1;
    }
  }

  FigSimpleMutexUnlock();
  return 0;
}

uint64_t mr_subscribeToOutput(const void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, NSObject *a6)
{
  Storage = mr_getStorage(a1);
  FigSimpleMutexLock();
  FigGetAllocatorForMedia();
  v17 = xmmword_1E748B9A0;
  if (mr_outputCallbackDataGetTypeID_once != -1)
  {
    dispatch_once_f(&mr_outputCallbackDataGetTypeID_once, &v17, mrutil_registerClass);
  }

  Instance = _CFRuntimeCreateInstance();
  if (Instance)
  {
    Instance[2] = FigCFWeakReferenceHolderCreateWithReferencedObject();
    Instance[3] = a5;
    Instance[4] = a6;
    Instance[5] = a2;
    Instance[6] = a3;
    if (a6)
    {
      dispatch_retain(a6);
    }
  }

  else if ((mr_subscribeToOutput_cold_1(Storage, &v17) & 1) == 0)
  {
    return v17;
  }

  v13 = mr_getStorage(a1);
  LOBYTE(v17) = 0;
  v14 = *(v13 + 224);
  if (!v14 || !CMBlockBufferGetDataLength(v14) || (DataLength = CMBlockBufferGetDataLength(*(v13 + 224)), mr_issueDataOutputCallbackGuts(a1, 0, DataLength, Instance, &v17), !v17))
  {
    CFArrayAppendValue(*(v13 + 128), Instance);
  }

  FigSimpleMutexUnlock();
  if (Instance)
  {
    CFRelease(Instance);
  }

  return 0;
}

void mr_startTimer(uint64_t a1)
{
  v23[16] = *MEMORY[0x1E69E9840];
  Storage = mr_getStorage(a1);
  if (!a1)
  {
    mr_startTimer_cold_3(Storage, v3, v4, v5, v6, v7, v8, v9, v19, v20, SHIDWORD(v20), v21);
    return;
  }

  v10 = Storage;
  ckbutil_cancelAndReleaseTimer((Storage + 136));
  v11 = FigCFWeakReferenceHolderCreateWithReferencedObject();
  v12 = v10[14];
  v13 = v10[1];
  v23[0] = 0;
  if (v13)
  {
    v14 = v11;
    v15 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, v13);
    v23[0] = v15;
    if (v15)
    {
      v16 = v15;
      if (v14)
      {
        dispatch_set_context(v15, v14);
      }

      dispatch_source_set_event_handler_f(v16, mr_timerEventHandler);
      dispatch_set_finalizer_f(v16, mr_timerFinalizer);
      v17 = dispatch_time(0, v12);
      dispatch_source_set_timer(v16, v17, 0xFFFFFFFFFFFFFFFFLL, 0x5F5E100uLL);
      dispatch_resume(v16);
      v10[17] = v16;
      goto LABEL_7;
    }

    mr_startTimer_cold_1(&v22);
  }

  else
  {
    mr_startTimer_cold_2(&v22);
  }

  if (v22)
  {
    ckbutil_cancelAndReleaseTimer(v23);
    return;
  }

LABEL_7:
  if (dword_1EAF17308)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }
}

void mr_handleCommonNetworkError(const void *a1, const void *a2)
{
  Storage = mr_getStorage(a1);
  v9 = 0;
  v10 = 0;
  if (*(Storage + 122))
  {
    v7 = 7;
LABEL_15:
    v10 = v7;
LABEL_19:
    mr_issueDidFailCallback(a1, a2, v7);
    return;
  }

  v5 = Storage;
  v6 = *(Storage + 104);
  if (!v6)
  {
    return;
  }

  v6(a2, (*(Storage + 149) != 0) | (2 * (*(Storage + 152) == 2)) | (4 * (*(Storage + 148) != 0)), &v10, &v9);
  if (FigCFHTTPIsDataURL(*(v5 + 16)) && *(v5 + 152) == 1)
  {
    v10 = 1;
LABEL_11:
    *(v5 + 152) = 2;
    goto LABEL_12;
  }

  v7 = v10;
  if (v10 == 1)
  {
    goto LABEL_11;
  }

  if (v10 != 3)
  {
    *(v5 + 144) = 3;
    if (v7 != 2)
    {
      goto LABEL_19;
    }

    v7 = 6;
    goto LABEL_15;
  }

  if (*(v5 + 120) || (v8 = *(v5 + 160), *(v5 + 160) = v8 + 1, v8 > 2))
  {
    v7 = 3;
    *(v5 + 144) = 3;
    goto LABEL_19;
  }

  mr_updateNetworkRequestType(a1);
LABEL_12:
  mr_retryRequest(a1);
}

uint64_t mr_copyRequestFromRetainProxy(uint64_t a1, void *a2)
{
  if (a1)
  {
    if (a2)
    {
      FigRetainProxyLockMutex();
      if (FigRetainProxyIsInvalidated())
      {
        mr_copyRequestFromRetainProxy_cold_1(&v6);
        v4 = v6;
      }

      else
      {
        Owner = FigRetainProxyGetOwner();
        if (Owner)
        {
          Owner = CFRetain(Owner);
        }

        v4 = 0;
        *a2 = Owner;
      }
    }

    else
    {
      mr_copyRequestFromRetainProxy_cold_2(&v7);
      v4 = v7;
    }
  }

  else
  {
    mr_copyRequestFromRetainProxy_cold_3(&v8);
    v4 = v8;
  }

  FigRetainProxyUnlockMutex();
  return v4;
}

void mr_issueDataOutputCallbackAsync(const void *a1, const void *a2, const void *a3, uint64_t a4, char a5, char a6, const void *a7, const void *a8, const void *a9, NSObject *a10)
{
  MallocZoneForMedia = FigGetMallocZoneForMedia();
  v19 = malloc_type_zone_calloc(MallocZoneForMedia, 1uLL, 0x50uLL, 0x10E0040CBF5CB4EuLL);
  if (v19)
  {
    v27 = v19;
    if (a1)
    {
      v28 = CFRetain(a1);
    }

    else
    {
      v28 = 0;
    }

    *v27 = v28;
    if (a2)
    {
      v29 = CFRetain(a2);
    }

    else
    {
      v29 = 0;
    }

    v27[1] = v29;
    if (a3)
    {
      v30 = CFRetain(a3);
    }

    else
    {
      v30 = 0;
    }

    v27[2] = v30;
    v27[3] = a4;
    *(v27 + 32) = a5;
    *(v27 + 33) = a6;
    if (a7)
    {
      v31 = CFRetain(a7);
    }

    else
    {
      v31 = 0;
    }

    v27[7] = v31;
    if (a8)
    {
      v32 = CFRetain(a8);
    }

    else
    {
      v32 = 0;
    }

    v27[8] = v32;
    if (a9)
    {
      v33 = CFRetain(a9);
    }

    else
    {
      v33 = 0;
    }

    v27[9] = v33;

    dispatch_async_f(a10, v27, mr_issueDataOutputCallbackOnCallbackQueue);
  }

  else
  {
    mr_issueDataOutputCallbackAsync_cold_1(0, v20, v21, v22, v23, v24, v25, v26, v34, a10, SHIDWORD(a10), v35);
  }
}

void mr_issueDataOutputCallbackOnCallbackQueue(uint64_t a1)
{
  v2 = **(a1 + 24);
  if (v2)
  {
    v2(*a1, *(a1 + 8), *(a1 + 56), *(a1 + 64), *(a1 + 72), *(a1 + 16), *(a1 + 32), *(a1 + 33));
  }

  if (*a1)
  {
    CFRelease(*a1);
  }

  v3 = *(a1 + 8);
  if (v3)
  {
    CFRelease(v3);
  }

  v4 = *(a1 + 16);
  if (v4)
  {
    CFRelease(v4);
  }

  v5 = *(a1 + 56);
  if (v5)
  {
    CFRelease(v5);
  }

  v6 = *(a1 + 64);
  if (v6)
  {
    CFRelease(v6);
  }

  v7 = *(a1 + 72);
  if (v7)
  {
    CFRelease(v7);
  }

  v8 = *(a1 + 40);
  if (v8)
  {
    CFRelease(v8);
  }

  MallocZoneForMedia = FigGetMallocZoneForMedia();

  malloc_zone_free(MallocZoneForMedia, a1);
}

void mr_timerFinalizer(CFTypeRef cf)
{
  if (cf)
  {
    CFRelease(cf);
  }
}

uint64_t mr_retryRequest(const void *a1)
{
  Storage = mr_getStorage(a1);
  *(Storage + 216) = 0;
  v3 = *(Storage + 208);
  if (v3)
  {
    CFRelease(v3);
    *(Storage + 208) = 0;
  }

  *(Storage + 200) = 0;
  *(Storage + 144) = 0;
  DataLength = CMBlockBufferGetDataLength(*(Storage + 224));
  v5 = mr_getStorage(a1);
  v6 = *(v5 + 88);
  if (v6 == 0x1FFFFFFFFFFFFFLL)
  {
    v7 = 0x1FFFFFFFFFFFFFLL;
  }

  else
  {
    v7 = v6 - DataLength;
  }

  *(v5 + 88) = v7;

  return mr_start(a1);
}

void mr_outputCallbackDataFinalize(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = *(a1 + 32);
  if (v3)
  {

    dispatch_release(v3);
  }
}

uint64_t mrutil_registerClass(uint64_t a1)
{
  result = _CFRuntimeRegisterClass();
  **(a1 + 8) = result;
  return result;
}

uint64_t RegisterFigMediaRequestSource()
{
  CMBaseGetClassID();

  return FigBaseClassRegisterClass();
}

uint64_t mrdowc_invalidate(uint64_t a1)
{
  v6 = *MEMORY[0x1E69E9840];
  Storage = mrdowc_getStorage(a1);
  if (dword_1EAF17308)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  FigSimpleMutexLock();
  if (*(Storage + 96) <= 1u)
  {
    *(Storage + 96) = 3;
    v3 = *(Storage + 40);
    if (v3)
    {
      v4 = *(*(CMBaseObjectGetVTable() + 8) + 24);
      if (v4)
      {
        v4(v3);
      }
    }
  }

  FigSimpleMutexUnlock();
  return 0;
}

void mrdowc_finalize(uint64_t a1)
{
  Storage = mrdowc_getStorage(a1);
  if (Storage[8] == 2)
  {
    CMNotificationCenterGetDefaultLocalCenter();
    FigNotificationCenterRemoveWeakListener();
  }

  v2 = Storage[5];
  if (v2)
  {
    CFRelease(v2);
    Storage[5] = 0;
  }

  v3 = Storage[3];
  if (v3)
  {
    CFRelease(v3);
    Storage[3] = 0;
  }

  v4 = Storage[1];
  if (v4)
  {
    CFRelease(v4);
    Storage[1] = 0;
  }

  v5 = Storage[2];
  if (v5)
  {
    CFRelease(v5);
    Storage[2] = 0;
  }

  v6 = Storage[6];
  if (v6)
  {
    CFRelease(v6);
    Storage[6] = 0;
  }

  v7 = Storage[13];
  if (v7)
  {
    CFRelease(v7);
    Storage[13] = 0;
  }

  v8 = Storage[10];
  if (v8)
  {
    CFRelease(v8);
    Storage[10] = 0;
  }

  v9 = Storage[11];
  if (v9)
  {
    CFRelease(v9);
    Storage[11] = 0;
  }

  v10 = Storage[15];
  if (v10)
  {
    dispatch_release(v10);
    Storage[15] = 0;
  }

  v11 = Storage[16];
  if (v11)
  {
    dispatch_release(v11);
    Storage[16] = 0;
  }
}

CFStringRef mrdowc_copyDebugDesc(uint64_t a1)
{
  Storage = mrdowc_getStorage(a1);
  AllocatorForMedia = FigGetAllocatorForMedia();
  return CFStringCreateWithFormat(AllocatorForMedia, 0, @"[FigMediaRequestDeliverOnceWithCache %p %@]", a1, *(Storage + 8));
}

uint64_t mrdowc_initializeHandlerQueue(uint64_t *a1)
{
  result = FigDispatchQueueCreateWithPriority();
  *a1 = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_4_75(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, __int16 a11, char a12, char a13, int a14)
{

  return fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
}

uint64_t OUTLINED_FUNCTION_10_36(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, __int16 a11, char a12, char a13, int a14)
{

  return fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
}

BOOL OUTLINED_FUNCTION_15_30(NSObject *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, __int16 a11, char a12, os_log_type_t type, int a14)
{

  return os_log_type_enabled(a1, type);
}

uint64_t FigStreamingAssetDownloaderCreateWithURL(const __CFAllocator *a1, uint64_t a2, const void *a3, const void *a4, CFTypeRef *a5)
{
  cf = 0;
  if (!a2)
  {
    FigStreamingAssetDownloaderCreateWithURL_cold_4(&v17);
    return v17;
  }

  if (!a3)
  {
    FigStreamingAssetDownloaderCreateWithURL_cold_3(&v17);
    return v17;
  }

  if (!a5)
  {
    FigStreamingAssetDownloaderCreateWithURL_cold_2(&v17);
    return v17;
  }

  Mutable = CFDictionaryCreateMutable(a1, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (!Mutable)
  {
    FigStreamingAssetDownloaderCreateWithURL_cold_1(&v17);
    return v17;
  }

  v11 = Mutable;
  CFDictionarySetValue(Mutable, @"assetOption_DownloadDestinationURL", a3);
  v12 = FigAssetCreateWithURL(a1, a2, 0, v11, &cf);
  v13 = cf;
  if (v12)
  {
    v14 = v12;
    if (!cf)
    {
      return v14;
    }

    goto LABEL_7;
  }

  v14 = FigStreamingAssetDownloaderCreateWithAsset(a1, cf, a3, a4, a5);
  v13 = cf;
  if (cf)
  {
LABEL_7:
    CFRelease(v13);
  }

  return v14;
}

uint64_t FigStreamingAssetDownloaderCreateWithAsset(const void *a1, const void *a2, const void *a3, const void *a4, CFTypeRef *a5)
{
  v69 = *MEMORY[0x1E69E9840];
  v56 = 0;
  v57 = 0;
  cf = 0;
  v55 = 0;
  v53 = 0;
  FigNote_AllowInternalDefaultLogs();
  fig_note_initialize_category_with_default_work_cf();
  fig_note_initialize_category_with_default_work_cf();
  if (!a2 || (TypeID = FigAssetGetTypeID(), TypeID != CFGetTypeID(a2)))
  {
    FigStreamingAssetDownloaderCreateWithAsset_cold_6(&v68);
    goto LABEL_89;
  }

  if (a4)
  {
    v11 = CFDictionaryGetTypeID();
    if (v11 != CFGetTypeID(a4))
    {
      FigStreamingAssetDownloaderCreateWithAsset_cold_1(&v68);
      goto LABEL_89;
    }
  }

  if (!a5)
  {
    FigStreamingAssetDownloaderCreateWithAsset_cold_5(&v68);
    goto LABEL_89;
  }

  FigAssetGetCMBaseObject();
  v13 = v12;
  v14 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v14)
  {
    goto LABEL_16;
  }

  v15 = v14(v13, @"assetProperty_AssetType", a1, &v57);
  if (v15)
  {
LABEL_91:
    value_low = v15;
    goto LABEL_17;
  }

  if (!FigCFEqual())
  {
    value_low = 4294950644;
LABEL_17:
    v23 = cf;
    if (!cf)
    {
      goto LABEL_19;
    }

    goto LABEL_18;
  }

  FigAssetGetCMBaseObject();
  v17 = v16;
  v18 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v18)
  {
LABEL_16:
    value_low = 4294954514;
    goto LABEL_17;
  }

  v15 = v18(v17, @"assetProperty_CreationOptionsDictionary", a1, &v56);
  if (v15)
  {
    goto LABEL_91;
  }

  if (v56)
  {
    URLValue = FigCFDictionaryGetURLValue();
    v20 = URLValue;
    v21 = URLValue != 0;
    if (a3 && URLValue)
    {
      if (!CFEqual(a3, URLValue))
      {
        FigStreamingAssetDownloaderCreateWithAsset_cold_2(&v68);
        goto LABEL_89;
      }

      goto LABEL_34;
    }
  }

  else
  {
    v21 = 0;
    v20 = 0;
  }

  if (a3)
  {
    v25 = a3;
  }

  else
  {
    v25 = v20;
  }

  if (a3)
  {
    a3 = v25;
  }

  else
  {
    a3 = v25;
    if (!v21)
    {
      FigStreamingAssetDownloaderCreateWithAsset_cold_3(&v68);
      goto LABEL_89;
    }
  }

LABEL_34:
  v26 = CFURLGetTypeID();
  if (v26 != CFGetTypeID(a3))
  {
    FigStreamingAssetDownloaderCreateWithAsset_cold_4(&v68);
LABEL_89:
    value_low = LODWORD(v68.start.value);
    if (!LODWORD(v68.start.value))
    {
      goto LABEL_19;
    }

    goto LABEL_17;
  }

  v15 = FigCFURLCreateWithSuffixedExtension();
  if (v15)
  {
    goto LABEL_91;
  }

  FigAssetDownloaderGetClassID();
  v15 = CMDerivedObjectCreate();
  if (v15)
  {
    goto LABEL_91;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  *(DerivedStorage + 125) = 1;
  *(DerivedStorage + 369) = 1;
  start = **&MEMORY[0x1E6960CC0];
  duration = **&MEMORY[0x1E6960C70];
  CMTimeRangeMake(&v68, &start, &duration);
  v28 = *&v68.start.epoch;
  *(DerivedStorage + 128) = *&v68.start.value;
  *(DerivedStorage + 144) = v28;
  *(DerivedStorage + 160) = *&v68.duration.timescale;
  if (a4)
  {
    Value = CFDictionaryGetValue(a4, @"AssetDownloaderCreateOption_MediaSelectionCriteria");
    v49 = CFDictionaryGetValue(a4, @"AssetDownloaderCreateOption_ClientBundleIdentifier");
    v47 = CFDictionaryGetValue(a4, @"AssetDownloaderCreateOption_DebugIdentifier");
    v50 = CFDictionaryGetValue(a4, @"AssetDownloaderCreateOption_AssetName");
    v51 = CFDictionaryGetValue(a4, @"AssetDownloaderCreateOption_AssetImage");
    v29 = CFDictionaryGetValue(a4, @"AssetDownloaderCreateOption_PlaylistCache");
    v30 = CFDictionaryGetValue(a4, @"AssetDownloaderCreateOption_NetworkHistory");
    v31 = *MEMORY[0x1E695E4D0];
    if (v31 == CFDictionaryGetValue(a4, @"AssetDownloaderCreateOption_DeleteDownloadWhenAssetFinalizes"))
    {
      *(DerivedStorage + 122) = 1;
    }

    if (v31 == CFDictionaryGetValue(a4, @"AssetDownloaderCreateOption_LinkAssetURLToDestinationURL"))
    {
      *(DerivedStorage + 123) = 1;
    }

    if (v31 == CFDictionaryGetValue(a4, @"AssetDownloaderCreateOption_StoreCryptKeys"))
    {
      *(DerivedStorage + 124) = 1;
    }

    v32 = v47;
    if (FigCFDictionaryGetInt64IfPresent())
    {
      *(DerivedStorage + 120) = 1;
    }

    if (FigCFDictionaryGetCGSizeIfPresent())
    {
      *(DerivedStorage + 121) = 1;
    }

    FigCFDictionaryGetBooleanIfPresent();
    FigCFDictionaryGetBooleanIfPresent();
    FigCFDictionaryGetBooleanIfPresent();
    FigCFDictionaryGetBooleanIfPresent();
    v33 = CFDictionaryGetValue(a4, @"AssetDownloaderCreateOption_SelectedAlternate");
    FigCFDictionaryGetBooleanIfPresent();
    FigCFDictionaryGetBooleanIfPresent();
    FigCFDictionaryGetBooleanIfPresent();
    FigCFDictionaryGetValueIfPresent();
    FigCFDictionaryGetCMTimeRangeIfPresent();
    if (a1)
    {
      goto LABEL_49;
    }
  }

  else
  {
    v50 = 0;
    v51 = 0;
    v33 = 0;
    v29 = 0;
    v30 = 0;
    Value = 0;
    v49 = 0;
    v32 = 0;
    if (a1)
    {
LABEL_49:
      v34 = CFRetain(a1);
      goto LABEL_52;
    }
  }

  v34 = 0;
LABEL_52:
  *(DerivedStorage + 8) = v34;
  *(DerivedStorage + 16) = CFRetain(a2);
  *(DerivedStorage + 72) = CFRetain(v55);
  v35 = Value;
  if (Value)
  {
    v35 = CFRetain(Value);
  }

  *(DerivedStorage + 280) = v35;
  v36 = v49;
  if (v49)
  {
    v36 = CFRetain(v49);
  }

  *(DerivedStorage + 264) = v36;
  if (v32)
  {
    v37 = CFRetain(v32);
  }

  else
  {
    v37 = 0;
  }

  *(DerivedStorage + 272) = v37;
  v38 = v50;
  if (v50)
  {
    v38 = CFRetain(v50);
  }

  *(DerivedStorage + 320) = v38;
  v39 = v51;
  if (v51)
  {
    v39 = CFRetain(v51);
  }

  *(DerivedStorage + 336) = v39;
  if (v29)
  {
    v40 = CFRetain(v29);
  }

  else
  {
    v40 = 0;
  }

  *(DerivedStorage + 56) = v40;
  *DerivedStorage = dispatch_queue_create("com.apple.coremedia.streamingAssetDownloader.state", 0);
  *(DerivedStorage + 472) = dispatch_queue_create("com.apple.coremedia.streamingAssetDownloader.notification", 0);
  if (v33)
  {
    v41 = CFRetain(v33);
  }

  else
  {
    v41 = 0;
  }

  *(DerivedStorage + 312) = v41;
  if (v30)
  {
    v42 = CFRetain(v30);
  }

  else
  {
    v42 = 0;
  }

  *(DerivedStorage + 376) = v42;
  v43 = v53;
  if (v53)
  {
    v43 = CFRetain(v53);
  }

  *(DerivedStorage + 392) = v43;
  if (*(DerivedStorage + 368))
  {
    *(DerivedStorage + 184) = -1;
  }

  v15 = FigRetainProxyCreate();
  if (v15)
  {
    goto LABEL_91;
  }

  v23 = FigCFCopyCompactDescription();
  if (dword_1EAF17328)
  {
    LODWORD(duration.value) = 0;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    v45 = duration.value;
    if (os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT))
    {
      v46 = v45;
    }

    else
    {
      v46 = v45 & 0xFFFFFFFE;
    }

    if (v46)
    {
      LODWORD(start.value) = 136316674;
      *(&start.value + 4) = "FigStreamingAssetDownloaderCreateWithAsset";
      LOWORD(start.flags) = 2048;
      *(&start.flags + 2) = DerivedStorage;
      HIWORD(start.epoch) = 2114;
      v59 = v32;
      v60 = 2048;
      v61 = a2;
      v62 = 2112;
      v63 = a2;
      v64 = 2112;
      v65 = v23;
      v66 = 2112;
      v67 = a3;
      _os_log_send_and_compose_impl(v46, 0, &v68, 128, &dword_1962D5000, os_log_and_send_and_compose_flags_and_os_log_type, 0, "<dw-media> %s: created %p %{public}@ for asset: %p asset desc: %@ options: %@ destinationURL: %@", &start, 72);
    }

    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  value_low = 0;
  *a5 = cf;
  if (v23)
  {
LABEL_18:
    CFRelease(v23);
  }

LABEL_19:
  if (v57)
  {
    CFRelease(v57);
  }

  if (v55)
  {
    CFRelease(v55);
  }

  if (v56)
  {
    CFRelease(v56);
  }

  return value_low;
}

uint64_t sad_invalidate(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v4 = a1;
  v5 = 0;
  dispatch_sync_f(*DerivedStorage, &v4, sad_invalidateDispatch);
  return v5;
}

void sad_finalize(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  sad_invalidateGuts(a1);
  v3 = *(DerivedStorage + 48);
  if (v3)
  {
    CFRelease(v3);
    *(DerivedStorage + 48) = 0;
  }

  if (*DerivedStorage)
  {
    dispatch_release(*DerivedStorage);
    *DerivedStorage = 0;
  }
}

uint64_t sad_copyProperty(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v10 = 0;
  v11 = 0;
  v12 = 0;
  context[0] = a1;
  context[1] = a2;
  dispatch_sync_f(*DerivedStorage, context, sad_copyPropertyDispatch);
  result = v12;
  if (!v12)
  {
    *a4 = v10;
  }

  return result;
}

uint64_t sad_setProperty(uint64_t a1, uint64_t a2, uint64_t a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  context[3] = 0;
  v9 = 0;
  context[0] = a1;
  context[1] = a2;
  context[2] = a3;
  dispatch_sync_f(*DerivedStorage, context, sad_setPropertyDispatch);
  return v9;
}

void sad_cleanupDownloadWithOSStatus(uint64_t a1, uint64_t a2)
{
  cf = 0;
  FigCreateErrorForOSStatus(a2, &cf);
  sad_cleanupDownload(a1, cf);
  if (cf)
  {
    CFRelease(cf);
  }
}

uint64_t sad_ensureDuration(uint64_t a1, const void *a2)
{
  v2 = a2;
  v13 = a2;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v4 = DerivedStorage;
  if (v2)
  {
    CFRetain(v2);
    if (*(v4 + 356))
    {
      v5 = 0;
      goto LABEL_5;
    }

    goto LABEL_3;
  }

  if (*(DerivedStorage + 356))
  {
    v5 = 0;
  }

  else
  {
    if (!*(DerivedStorage + 32))
    {
      sad_ensureDuration_cold_1(&v12);
      return LODWORD(v12.value);
    }

    v6 = *(DerivedStorage + 8);
    FigBytePumpGetFigBaseObject();
    v8 = v7;
    v9 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (!v9)
    {
      return 4294954514;
    }

    v10 = v9(v8, @"FBP_Duration", v6, &v13);
    v2 = v13;
    if (!v10)
    {
LABEL_3:
      CMTimeMakeFromDictionary(&v12, v2);
      v5 = 0;
      *(v4 + 344) = *&v12.value;
      v2 = v13;
      *(v4 + 360) = v12.epoch;
      goto LABEL_4;
    }

    v5 = v10;
  }

LABEL_4:
  if (v2)
  {
LABEL_5:
    CFRelease(v2);
  }

  return v5;
}

uint64_t sad_cleanupDownload(uint64_t a1, const void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v24 = **&MEMORY[0x1E6960CC0];
  if (!*(DerivedStorage + 64))
  {
    v5 = DerivedStorage;
    if (*(DerivedStorage + 416))
    {
      if (!*(DerivedStorage + 32))
      {
        goto LABEL_15;
      }
    }

    else
    {
      if (a2)
      {
        v6 = CFRetain(a2);
      }

      else
      {
        v6 = 0;
      }

      *(v5 + 416) = v6;
      if (!*(v5 + 32))
      {
        goto LABEL_15;
      }

      if (!v6)
      {
        goto LABEL_12;
      }
    }

    FigBytePumpGetFigBaseObject();
    v8 = v7;
    v9 = *(*(CMBaseObjectGetVTable() + 8) + 56);
    if (v9)
    {
      v9(v8, 0x1F0B1F3D8, *MEMORY[0x1E695E4C0]);
    }

LABEL_12:
    v10 = *(v5 + 424);
    if (v10)
    {
      CFRelease(v10);
      *(v5 + 424) = 0;
    }

    sad_copyLoadedTimeRanges(v5, (v5 + 424));
LABEL_15:
    if (!a2)
    {
      sad_getSumOfTimeDurationFromTimeRanges(*(v5 + 424), &v24);
      v11 = *(v5 + 384);
      v12 = *(v5 + 312);
      v13 = *(v5 + 288);
      v14 = *(v5 + 208);
      cf = v24;
      FigStreamingAssetProgressMarkAlternateAndMediaSelectionComplete(v11, v12, v13, v14, &cf.value);
    }

    if (*(v5 + 456))
    {
      return 0;
    }

    v15 = CMBaseObjectGetDerivedStorage();
    cf.value = 0;
    if (v15[4])
    {
      if (!v15[57])
      {
        v16 = v15[1];
        FigBytePumpGetFigBaseObject();
        v18 = v17;
        v19 = *(*(CMBaseObjectGetVTable() + 8) + 48);
        if (v19)
        {
          if (!v19(v18, 0x1F0B1F098, v16, &cf))
          {
            CMNotificationCenterGetDefaultLocalCenter();
            if (!FigNotificationCenterAddWeakListener())
            {
              value = cf.value;
              v15[58] = cf.value;
              if (!FigStreamingCacheFlushIO(value, v15 + 57))
              {
                goto LABEL_24;
              }

              CMNotificationCenterGetDefaultLocalCenter();
              FigNotificationCenterRemoveWeakListener();
            }
          }
        }

        goto LABEL_28;
      }

      v22 = 1361;
    }

    else
    {
      v22 = 1360;
    }

    if (sad_cleanupDownload_cold_2(v22))
    {
LABEL_24:
      if (cf.value)
      {
        CFRelease(cf.value);
      }

      return 0;
    }

LABEL_28:
    v15[57] = 0;
    v15[58] = 0;
    sad_finishDownloadAfterStreamingCacheFlush(a1);
    goto LABEL_24;
  }

  sad_cleanupDownload_cold_1(&cf);
  return LODWORD(cf.value);
}

uint64_t sad_copyLoadedTimeRanges(uint64_t a1, CFTypeRef *a2)
{
  cf = 0;
  if (a2)
  {
    if (*(a1 + 32))
    {
      v4 = *(a1 + 8);
      FigBytePumpGetFigBaseObject();
      v6 = v5;
      v7 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      if (v7)
      {
        v7(v6, 0x1F0B1F2B8, v4, &cf);
        v8 = cf;
        if (cf)
        {
          goto LABEL_10;
        }
      }
    }

    v9 = *(a1 + 424);
    if (v9)
    {
      v8 = CFRetain(v9);
      cf = v8;
      if (v8)
      {
LABEL_10:
        v10 = 0;
        *a2 = CFRetain(v8);
        goto LABEL_11;
      }
    }

    else
    {
      cf = 0;
    }

    v8 = CFArrayCreate(*(a1 + 8), 0, 0, MEMORY[0x1E695E9C0]);
    cf = v8;
    if (v8)
    {
      goto LABEL_10;
    }

    sad_copyLoadedTimeRanges_cold_1(&v13);
  }

  else
  {
    sad_copyLoadedTimeRanges_cold_2(&v13);
  }

  v10 = v13;
LABEL_11:
  if (cf)
  {
    CFRelease(cf);
  }

  return v10;
}

CMTime *sad_getSumOfTimeDurationFromTimeRanges@<X0>(const __CFArray *a1@<X0>, CMTime *a2@<X8>)
{
  v3 = *(MEMORY[0x1E6960C98] + 16);
  *&v12.start.value = *MEMORY[0x1E6960C98];
  *&v12.start.epoch = v3;
  *&v12.duration.timescale = *(MEMORY[0x1E6960C98] + 32);
  if (a1 && (Count = CFArrayGetCount(a1), Count >= 1))
  {
    v6 = Count;
    v7 = 0;
    v8 = 0;
    do
    {
      ValueAtIndex = CFArrayGetValueAtIndex(a1, v7);
      CMTimeRangeMakeFromDictionary(&v12, ValueAtIndex);
      duration = v12.duration;
      v8 = (CMTimeGetSeconds(&duration) + v8);
      ++v7;
    }

    while (v6 != v7);
  }

  else
  {
    v8 = 0;
  }

  return CMTimeMake(a2, v8, 1);
}

void sad_ticklePumpChapterDataLoadDispatch(const void *a1)
{
  cf = 0;
  FigBytePumpGetFigBaseObject();
  v3 = v2;
  v4 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v4)
  {
    v4(v3, @"FBSP_Chapters", *MEMORY[0x1E695E480], &cf);
    if (cf)
    {
      CFRelease(cf);
    }
  }

  if (a1)
  {
    CFRelease(a1);
  }
}

void sad_openPumpSchedulerCallback(const void *a1, int a2, uint64_t a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v7 = CFGetTypeID(a1);
  if (v7 != FigAssetDownloaderGetTypeID())
  {
    sad_openPumpSchedulerCallback_cold_1(&v11);
    v10 = v11;
    goto LABEL_15;
  }

  if (!a2)
  {
    sad_openPumpSchedulerCallback_cold_3(&v13);
    v10 = v13;
    goto LABEL_15;
  }

  *(DerivedStorage + 184) = a3;
  if (*(DerivedStorage + 64))
  {
    sad_openPumpSchedulerCallback_cold_2(&v12);
    v10 = v12;
LABEL_15:
    if (v10)
    {
      sad_relinquishAccessToDestinationURL(a1, 0);

      sad_cleanupDownloadWithOSStatus(a1, v10);
    }

    return;
  }

  v8 = *(DerivedStorage + 24);
  if ((v8 - 6) >= 0xFFFFFFFD)
  {
    v9 = sad_relinquishAccessToDestinationURL(a1, 0);
LABEL_14:
    v10 = v9;
    goto LABEL_15;
  }

  if (v8 != 2)
  {
    if (v8 != 1)
    {
      return;
    }

    if (*(DerivedStorage + 92) == 4)
    {
      sad_registerAssetForDownloadAndOpenPump(a1);
    }

    else
    {
      sad_startOrResumeDownload(a1);
    }

    goto LABEL_14;
  }

  sad_stopDownloading(a1);
}

void sad_stopDownloading(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 32))
  {
    sad_stopDownloading_cold_1(DerivedStorage, a1);
  }
}

void sad_pumpTransferCallback(uint64_t a1, const void *a2, const void *a3)
{
  v5 = a1;
  v13 = 0;
  if (!sad_copyAssetDownloaderFromRetainProxy(a1, &v13))
  {
    v6 = v13;
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    v8 = malloc_type_calloc(1uLL, 0x18uLL, 0x20040960023A9uLL);
    if (!v8)
    {
      v12 = sad_pumpTransferCallback_cold_1(v5, v6);
      v5 = v6;
      if (v12)
      {
        return;
      }

      goto LABEL_11;
    }

    v9 = v8;
    *v8 = v6;
    if (a2)
    {
      v10 = CFRetain(a2);
    }

    else
    {
      v10 = 0;
    }

    v9[1] = v10;
    if (a3)
    {
      v11 = CFRetain(a3);
    }

    else
    {
      v11 = 0;
    }

    v9[2] = v11;
    dispatch_async_f(*DerivedStorage, v9, sad_pumpTransferCallbackDispatch);
  }

  if (!v5)
  {
    return;
  }

LABEL_11:

  CFRelease(v5);
}

uint64_t sad_copyAssetDownloaderFromRetainProxy(uint64_t a1, void *a2)
{
  FigRetainProxyLockMutex();
  if (FigRetainProxyIsInvalidated())
  {
    sad_copyAssetDownloaderFromRetainProxy_cold_1(&v6);
    v4 = v6;
  }

  else
  {
    Owner = FigRetainProxyGetOwner();
    if (Owner)
    {
      Owner = CFRetain(Owner);
    }

    v4 = 0;
    *a2 = Owner;
  }

  FigRetainProxyUnlockMutex();
  return v4;
}

void sad_pumpTransferCallbackDispatch(const void **a1)
{
  cf[16] = *MEMORY[0x1E69E9840];
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 64))
  {
    sad_pumpTransferCallbackDispatch_cold_1(cf);
    v16 = LODWORD(cf[0]);
    goto LABEL_110;
  }

  v6 = DerivedStorage;
  if (*(DerivedStorage + 176))
  {
    v16 = 0;
    *(DerivedStorage + 92) = 0;
    goto LABEL_110;
  }

  if (v3)
  {
    v7 = CFRetain(v3);
  }

  else
  {
    v7 = 0;
  }

  *(v6 + 32) = v7;
  if (dword_1EAF17328)
  {
    v52 = 0;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (v4)
  {
    goto LABEL_111;
  }

  if (!*(v6 + 32))
  {
    sad_pumpTransferCallbackDispatch_cold_6(cf);
LABEL_125:
    v16 = LODWORD(cf[0]);
    goto LABEL_126;
  }

  v9 = *(v6 + 392);
  FigBytePumpGetFigBaseObject();
  v11 = v10;
  v12 = *(*(CMBaseObjectGetVTable() + 8) + 56);
  if (!v12)
  {
    v16 = 4294954514;
LABEL_15:
    sad_cleanupDownloadWithOSStatus(v2, v16);
    goto LABEL_112;
  }

  v13 = v12(v11, 0x1F0B1F7F8, v9);
  if (v13)
  {
    goto LABEL_118;
  }

  v14 = CMBaseObjectGetDerivedStorage();
  if (*(v14 + 179))
  {
    v15 = *(v14 + 178) == 0;
  }

  else
  {
    v15 = 0;
  }

  if (!*(v14 + 32))
  {
    sad_pumpTransferCallbackDispatch_cold_5(cf);
    goto LABEL_125;
  }

  v17 = *(v14 + 184);
  if (!v17)
  {
    v13 = FigAssetDownloadCoordinatorScheduleAccessToURL(v2, *(v14 + 72), *v14, v15, sad_getPumpReadySchedulerCallback);
    if (!v13)
    {
      goto LABEL_20;
    }

LABEL_118:
    v16 = v13;
    goto LABEL_15;
  }

  sad_getPumpReadySchedulerCallback(v2, 1, v17);
LABEL_20:
  v18 = CMBaseObjectGetDerivedStorage();
  if (!*(v18 + 32))
  {
    sad_pumpTransferCallbackDispatch_cold_4(cf);
    goto LABEL_125;
  }

  v19 = v18;
  if (*(v18 + 40))
  {
    sad_pumpTransferCallbackDispatch_cold_2(cf);
    goto LABEL_125;
  }

  v51 = (v18 + 40);
  v13 = FigAlternateSelectionBossCreate(*(v18 + 8), (v18 + 40));
  if (v13)
  {
    goto LABEL_118;
  }

  v50 = v19;
  v20 = CMBaseObjectGetDerivedStorage();
  v21 = v20;
  v22 = 0;
  cf[0] = 0;
  *v53 = 0;
  if (*(v20 + 126))
  {
    v23 = -1;
  }

  else
  {
    v23 = 2;
  }

  v49 = v23;
  v24 = *(v20 + 296);
  if (!v24)
  {
    goto LABEL_28;
  }

LABEL_27:
  for (i = CFArrayGetCount(v24); v22 < i; i = 0)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(v24, v22);
    if (CFDictionaryGetValue(ValueAtIndex, @"MediaSelectionGroupMediaType"))
    {
      v52 = 0;
      FigCFStringGetOSTypeValue();
    }

    ++v22;
    if (v24)
    {
      goto LABEL_27;
    }

LABEL_28:
    ;
  }

  if (!*(v21 + 40))
  {
    sad_pumpTransferCallbackDispatch_cold_3(&v52);
    v16 = v52;
    goto LABEL_90;
  }

  v27 = *(v21 + 312);
  if (v27)
  {
    if (*(v21 + 392))
    {
      StableStreamIdentifier = FigAlternateGetStableStreamIdentifier(v27);
      v29 = v50;
      if (StableStreamIdentifier)
      {
        v30 = FigAlternateAllowListWithStableVariantIDFilterCreate(*(v21 + 8), StableStreamIdentifier, 0x374u, cf);
        if (!v30)
        {
          v30 = FigAlternateSelectionBossAddFilter(*(v21 + 40), cf[0]);
          if (!v30)
          {
            if (cf[0])
            {
              CFRelease(cf[0]);
              cf[0] = 0;
            }

            sad_addStableRenditionIDFilterForMediaType(v2, 0x736F756Eu);
            if (!v30)
            {
              sad_addStableRenditionIDFilterForMediaType(v2, 0x76696465u);
              if (!v30)
              {
                sad_addStableRenditionIDFilterForMediaType(v2, 0x7362746Cu);
              }
            }
          }
        }

        goto LABEL_45;
      }

LABEL_88:
      v16 = 0;
      goto LABEL_91;
    }

    v16 = 0;
LABEL_90:
    v29 = v50;
    goto LABEL_91;
  }

  v31 = FigAlternateContinuousFramesOnlyFilterCreate(*(v21 + 8), cf);
  if (v31)
  {
    v16 = v31;
    goto LABEL_90;
  }

  v30 = FigAlternateSelectionBossAddFilter(*(v21 + 40), cf[0]);
  v29 = v50;
  if (v30)
  {
    goto LABEL_45;
  }

  if (cf[0])
  {
    CFRelease(cf[0]);
    cf[0] = 0;
  }

  v30 = FigAlternateMediaValidationFilterCreate(*(v21 + 8), 0, cf);
  if (v30)
  {
    goto LABEL_45;
  }

  v30 = FigAlternateSelectionBossAddFilter(*(v21 + 40), cf[0]);
  if (v30)
  {
    goto LABEL_45;
  }

  if (cf[0])
  {
    CFRelease(cf[0]);
    cf[0] = 0;
  }

  v32 = *(v21 + 8);
  v52 = 0;
  FPSupport_GetMainDisplayVideoRangeAndSizeAndFrameRate(&v52, 0, 0);
  v30 = FigAlternateSupportedVideoRangeFilterCreate(v32, v52, cf);
  if (v30)
  {
    goto LABEL_45;
  }

  v30 = FigAlternateSelectionBossAddFilter(*(v21 + 40), cf[0]);
  if (v30)
  {
    goto LABEL_45;
  }

  if (cf[0])
  {
    CFRelease(cf[0]);
    cf[0] = 0;
  }

  v33 = *(v21 + 8);
  v34 = *(CMBaseObjectGetDerivedStorage() + 125) ? 4 : 1;
  v30 = FigAlternatePreferredVideoRangeFilterCreate(v33, v34, cf);
  if (v30)
  {
    goto LABEL_45;
  }

  v30 = FigAlternateSelectionBossAddFilter(*(v21 + 40), cf[0]);
  if (v30)
  {
    goto LABEL_45;
  }

  if (cf[0])
  {
    CFRelease(cf[0]);
    cf[0] = 0;
  }

  if (!PKDGetSystemCPC(v53))
  {
    v30 = FigAlternateAllowedCPCFilterCreate(*(v21 + 8), *v53, cf);
    if (v30)
    {
      goto LABEL_45;
    }

    v30 = FigAlternateSelectionBossAddFilter(*(v21 + 40), cf[0]);
    if (v30)
    {
      goto LABEL_45;
    }

    if (cf[0])
    {
      CFRelease(cf[0]);
      cf[0] = 0;
    }
  }

  v30 = FigAlternateSuppressAudioOnlyFilterCreate(*(v21 + 8), cf);
  if (v30)
  {
    goto LABEL_45;
  }

  v30 = FigAlternateSelectionBossAddFilter(*(v21 + 40), cf[0]);
  if (v30)
  {
    goto LABEL_45;
  }

  if (cf[0])
  {
    CFRelease(cf[0]);
    cf[0] = 0;
  }

  if (*(v21 + 121))
  {
    v30 = FigAlternateResolutionCapFilterCreate(*(v21 + 8), @"ResolutionCap", 700, cf, *(v21 + 104), *(v21 + 112));
    if (v30)
    {
      goto LABEL_45;
    }

    v30 = FigAlternateSelectionBossAddFilter(*(v21 + 40), cf[0]);
    if (v30)
    {
      goto LABEL_45;
    }

    if (cf[0])
    {
      CFRelease(cf[0]);
      cf[0] = 0;
    }
  }

  v30 = FigAlternatePreferredAudioFormatFilterCreate(*(v21 + 8), 0, v49, 0, 0, 0, 0, cf);
  if (v30)
  {
    goto LABEL_45;
  }

  v30 = FigAlternateSelectionBossAddFilter(*(v21 + 40), cf[0]);
  if (v30)
  {
    goto LABEL_45;
  }

  if (cf[0])
  {
    CFRelease(cf[0]);
    cf[0] = 0;
  }

  if (!*(v21 + 120))
  {
    goto LABEL_88;
  }

  v30 = FigAlternateNormalizedPeakBitRateCapFilterCreate(*(v21 + 8), *(v21 + 96), 0, cf);
  if (v30)
  {
LABEL_45:
    v16 = v30;
LABEL_91:
    v35 = cf[0];
    goto LABEL_92;
  }

  v16 = FigAlternateSelectionBossAddFilter(*(v21 + 40), cf[0]);
  v35 = cf[0];
  if (v16 || !cf[0])
  {
LABEL_92:
    if (!v35)
    {
      goto LABEL_94;
    }

    goto LABEL_93;
  }

  v16 = 0;
LABEL_93:
  CFRelease(v35);
LABEL_94:
  if (v16)
  {
    goto LABEL_110;
  }

  v36 = *(v29 + 392);
  if (v36)
  {
    v37 = FigAlternateSelectionBossAddMonitor(*v51, v36);
    if (v37)
    {
LABEL_108:
      v16 = v37;
      goto LABEL_110;
    }

    if (dword_1EAF17328)
    {
      v52 = 0;
      v38 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v39 = v52;
      if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
      {
        v40 = v39;
      }

      else
      {
        v40 = v39 & 0xFFFFFFFE;
      }

      if (v40)
      {
        v41 = *(v29 + 272);
        v42 = *(v29 + 392);
        v43 = *(v29 + 40);
        *v53 = 136316162;
        *&v53[4] = "sad_setupAlternateSelectionBoss";
        v54 = 2048;
        v55 = v29;
        v56 = 2114;
        v57 = v41;
        v58 = 2048;
        v59 = v42;
        v60 = 2048;
        v61 = v43;
        _os_log_send_and_compose_impl(v40, 0, cf, 128, &dword_1962D5000, v38, 0, "<dw-media> %s: %p %{public}@: added content steering monitor %p to media downloader selection boss %p", v53, 52);
      }

      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }
  }

  v44 = *(v29 + 40);
  __copy_constructor_8_8_pa0_38126_0_pa0_35993_8_pa0_4849_16(cf, sad_setupAlternateSelectionBoss_kSadAlternateSelectionBossCallbacks);
  v37 = FigAlternateSelectionBossAddDelegate(v44, v2, cf, *v29);
  if (v37)
  {
    goto LABEL_108;
  }

  v45 = *(v29 + 40);
  FigBytePumpGetFigBaseObject();
  v47 = v46;
  v48 = *(*(CMBaseObjectGetVTable() + 8) + 56);
  if (v48)
  {
    v37 = v48(v47, 0x1F0B1F878, v45);
    if (!v37)
    {
      v37 = FigAlternateSelectionBossApplyFilters(*v51);
    }

    goto LABEL_108;
  }

  v16 = 4294954514;
LABEL_110:
  if (v4)
  {
LABEL_111:
    sad_cleanupDownload(v2, v4);
    CFRelease(v4);
    goto LABEL_112;
  }

LABEL_126:
  if (v16)
  {
    goto LABEL_15;
  }

LABEL_112:
  if (v3)
  {
    CFRelease(v3);
  }

  if (v2)
  {
    CFRelease(v2);
  }

  free(a1);
}

uint64_t sad_getCFIndexForKeyFromPumpStoreBag(uint64_t a1, __CFString *a2, uint64_t a3, void *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  cf = 0;
  *a4 = a3;
  if (*(DerivedStorage + 32))
  {
    v8 = *(DerivedStorage + 8);
    FigBytePumpGetFigBaseObject();
    v10 = v9;
    v11 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v11 && !v11(v10, 0x1F0B1F2D8, v8, &cf))
    {
      if (!cf)
      {
        return 0;
      }

      *a4 = FigRCLGetNumberWithDefault(cf, a2, a3);
      v12 = cf;
      v13 = CMBaseObjectGetDerivedStorage();
      if (*(v13 + 480))
      {
        v14 = v13;
        v15 = FigRCLCopyConfigurationGroupName(v12);
        if (v15)
        {
          sad_getCFIndexForKeyFromPumpStoreBag_cold_1((v14 + 480), v15);
        }
      }

      else
      {
        sad_getCFIndexForKeyFromPumpStoreBag_cold_2();
      }
    }

    v16 = 0;
  }

  else
  {
    sad_getCFIndexForKeyFromPumpStoreBag_cold_3(&v19);
    v16 = v19;
  }

  if (cf)
  {
    CFRelease(cf);
  }

  return v16;
}

uint64_t sad_getMaxBandwidthAlternateApplierFunc(uint64_t result, uint64_t *a2)
{
  v3 = result;
  if (!a2 || *a2)
  {
    PeakBitRate = FigAlternateGetPeakBitRate(result);
    result = FigAlternateGetPeakBitRate(*a2);
    if (PeakBitRate <= result)
    {
      v3 = *a2;
    }
  }

  *a2 = v3;
  return result;
}

void sad_setPropertyDispatch(uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 64))
  {
    sad_setPropertyDispatch_cold_1(&v25);
    goto LABEL_53;
  }

  v5 = DerivedStorage;
  if (CFEqual(@"AssetDownloaderProperty_SelectedMediaArray", v3))
  {
    TypeID = CFArrayGetTypeID();
    if (TypeID == CFGetTypeID(v2))
    {
      if (*(v5 + 92) >= 2u)
      {
        sad_setPropertyDispatch_cold_5(&v25);
      }

      else
      {
        v7 = *(v5 + 288);
        v8 = *(v5 + 8);
        if (v7)
        {
          MutableCopy = CFArrayCreateMutableCopy(v8, 0, v7);
        }

        else
        {
          MutableCopy = CFArrayCreateMutable(v8, 0, MEMORY[0x1E695E9C0]);
        }

        v14 = MutableCopy;
        if (MutableCopy)
        {
          FigAutomaticMediaSelectionCoalesceSelectedMediaArrays(MutableCopy, v2, 1);
          if (v15)
          {
            v13 = v15;
          }

          else
          {
            Copy = CFArrayCreateCopy(*(v5 + 8), v14);
            if (Copy)
            {
              v17 = Copy;
              v18 = *(v5 + 288);
              *(v5 + 288) = Copy;
              CFRetain(Copy);
              if (v18)
              {
                CFRelease(v18);
              }

              CFRelease(v17);
              v13 = 0;
            }

            else
            {
              sad_setPropertyDispatch_cold_3(&v25);
              v13 = v25;
            }
          }

          CFRelease(v14);
          goto LABEL_21;
        }

        sad_setPropertyDispatch_cold_4(&v25);
      }
    }

    else
    {
      sad_setPropertyDispatch_cold_2(&v25);
    }

LABEL_53:
    v13 = v25;
    goto LABEL_21;
  }

  if (!CFEqual(@"AssetDownloaderProperty_MediaSelectionArray", v3))
  {
    if (CFEqual(@"AssetDownloaderProperty_ProgressMonitor", v3))
    {
      v19 = CFGetTypeID(v2);
      if (v19 != FigStreamingAssetDownloadProgressMonitorGetTypeID())
      {
        sad_setPropertyDispatch_cold_8(&v25);
        goto LABEL_53;
      }

      v20 = *(v5 + 384);
      *(v5 + 384) = v2;
      if (!v2)
      {
        goto LABEL_26;
      }
    }

    else
    {
      if (!CFEqual(@"AssetDownloaderProperty_ReportingAgent", v3))
      {
        if (!CFEqual(@"AssetDownloaderProperty_MetricEventTimeline", v3))
        {
          v13 = -12784;
          goto LABEL_21;
        }

        v22 = CFGetTypeID(v2);
        if (v22 != FigMetricEventTimelineGetTypeID())
        {
          sad_setPropertyDispatch_cold_10(&v25);
          goto LABEL_53;
        }

        v23 = *(v5 + 400);
        *(v5 + 400) = v2;
        if (v2)
        {
          CFRetain(v2);
        }

        if (v23)
        {
          CFRelease(v23);
        }

        v24 = *(v5 + 32);
        if (v24)
        {
          v13 = FigAirPlayRouteSetProperty(v24, 0x1F0B1F538, v2);
          goto LABEL_21;
        }

LABEL_28:
        v13 = 0;
        goto LABEL_21;
      }

      v21 = CFGetTypeID(v2);
      if (v21 != FigReportingAgentGetTypeID())
      {
        sad_setPropertyDispatch_cold_9(&v25);
        goto LABEL_53;
      }

      v20 = *(v5 + 480);
      *(v5 + 480) = v2;
      if (!v2)
      {
LABEL_26:
        if (v20)
        {
          CFRelease(v20);
        }

        goto LABEL_28;
      }
    }

    CFRetain(v2);
    goto LABEL_26;
  }

  v10 = CFArrayGetTypeID();
  if (v10 != CFGetTypeID(v2))
  {
    sad_setPropertyDispatch_cold_6(&v25);
    goto LABEL_53;
  }

  if (*(v5 + 92) >= 2u)
  {
    sad_setPropertyDispatch_cold_7(&v25);
    goto LABEL_53;
  }

  v11 = *(v5 + 304);
  if (v11)
  {
    CFRelease(v11);
    *(v5 + 304) = 0;
  }

  v12 = CFArrayCreateMutableCopy(*(v5 + 8), 0, v2);
  v13 = 0;
  *(v5 + 304) = v12;
LABEL_21:
  *(a1 + 32) = v13;
}