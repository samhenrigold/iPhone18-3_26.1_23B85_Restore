uint64_t fpfsi_findTracksInListOfMediaType(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  v25 = *MEMORY[0x1E69E9840];
  v24 = 0;
  memset(v23, 0, sizeof(v23));
  v22 = 0;
  Count = FigStreamTrackListGetCount(a5);
  AllocatorForMedia = FigGetAllocatorForMedia();
  v13 = FigStreamTrackListCreateIterator(AllocatorForMedia, a5, &v22);
  if (!v13 && a2)
  {
    do
    {
      if (*(a2 + 48) == a1 && *(a2 + 80) == a4)
      {
        cf = 0;
        FigStreamTrackListIteratorResetAndCopyTrack(v22, &cf);
        while (cf)
        {
          SyncPairID = FigStreamTrackGetSyncPairID(cf);
          if (!FigCFEqual() && FigStreamTrackAreTracksSyncPairs(cf, a2))
          {
            v17 = 0;
            while (*(v23 + v17) != SyncPairID)
            {
              v17 += 4;
              if (v17 == 36)
              {
                goto LABEL_21;
              }
            }

            if (!a6)
            {
              goto LABEL_22;
            }

LABEL_21:
            FigStreamTrackListRemoveTrack(a5, cf);
            v18 = OUTLINED_FUNCTION_517();
            FigStreamTrackListAddTrack(v18, v19);
LABEL_22:
            if (cf)
            {
              CFRelease(cf);
            }

            goto LABEL_14;
          }

          if (cf)
          {
            CFRelease(cf);
          }

          cf = 0;
          FigStreamTrackListIteratorCopyNextTrack(v22, &cf);
        }

        if (Count == 8)
        {
          break;
        }

        v15 = OUTLINED_FUNCTION_517();
        FigStreamTrackListAddTrack(v15, v16);
        *(v23 + Count) = FigStreamTrackGetSyncPairID(a2);
        Count = (Count + 1);
      }

LABEL_14:
      a2 = *(a2 + 24);
    }

    while (a2);
  }

  if (v22)
  {
    CFRelease(v22);
  }

  return v13;
}

void fpfs_SignalImageQueueGaugeEnqueueingCompleteAfterDecoding(uint64_t a1)
{
  v14 = 0;
  CMBaseObjectGetDerivedStorage();
  v2 = fpfsi_copyImageQueueGauge(*(a1 + 16));
  OUTLINED_FUNCTION_33();
  if (v3)
  {
    FigGetAllocatorForMedia();
    OUTLINED_FUNCTION_441();
    OUTLINED_FUNCTION_19();
    v12 = CMSampleBufferCreate(v4, v5, v6, v7, v8, v9, v10, v11, 0, 0, 0, &v14);
    v13 = v14;
    if (!v12)
    {
      CMSetAttachment(v14, *MEMORY[0x1E6962E00], *MEMORY[0x1E695E4D0], 1u);
      if (v2)
      {
        CMSetAttachment(v14, *MEMORY[0x1E6962E20], v2, 1u);
      }

      fpfs_RenderBufferOrEnqueueToStartupQueue(a1, v14);
      v13 = v14;
    }

    if (v13)
    {
      CFRelease(v13);
    }
  }

  if (v2)
  {
    CFRelease(v2);
  }
}

void fpfsi_addCAImageQueuesAndSlots()
{
  OUTLINED_FUNCTION_629();
  v34 = v3;
  v35 = v4;
  v6 = v5;
  OUTLINED_FUNCTION_369();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  OUTLINED_FUNCTION_173(DerivedStorage);
  v8 = CMBaseObjectGetDerivedStorage();
  v9 = *(v8 + 384);
  if (v9)
  {
    Count = CFArrayGetCount(v9);
    if (!v1)
    {
      goto LABEL_36;
    }
  }

  else
  {
    Count = 0;
    if (!v1)
    {
LABEL_36:
      OUTLINED_FUNCTION_320();
      return;
    }
  }

  v11 = *(v8 + 408);
  v12 = v11 + Count;
  if (*(v2 + 664) || (v13 = FigGetAllocatorForMedia(), v14 = CFArrayCreateMutable(v13, v11 + Count, MEMORY[0x1E695E9C0]), (*(v2 + 664) = v14) != 0))
  {
    Mutable = *(v2 + 672);
    if (Mutable || (v16 = FigGetAllocatorForMedia(), Mutable = CFArrayCreateMutable(v16, *(v8 + 408), MEMORY[0x1E695E9C0]), (*(v2 + 672) = Mutable) != 0))
    {
      v17 = CFArrayGetCount(Mutable);
      v18 = *(v2 + 664);
      if (v18)
      {
        v19 = CFArrayGetCount(v18);
      }

      else
      {
        v19 = 0;
      }

      if (v19 >= v12 || v17 >= v12)
      {
        goto LABEL_36;
      }

      Dimensions = CMVideoFormatDescriptionGetDimensions(*(v1 + 56));
      if (v6)
      {
        v22 = &v32;
      }

      else
      {
        v22 = 0;
      }

      v23 = Count + v11 - v19;
      do
      {
        OUTLINED_FUNCTION_572();
        FPSupport_EnsureCAImageQueue(&value, v22, Dimensions, HIDWORD(Dimensions), 0);
        if (value)
        {
          CFArrayAppendValue(*(v2 + 664), value);
          if (value)
          {
            CFRelease(value);
            value = 0;
          }
        }

        if (v6)
        {
          FigCFArrayAppendInt32();
        }

        --v23;
      }

      while (v23);
      if (v19)
      {
        if (v6)
        {
LABEL_29:
          AllocatorForMedia = FigGetAllocatorForMedia();
          Copy = CFArrayCreateCopy(AllocatorForMedia, *(v2 + 672));
          FigPropertyStorageSetValue(*(v2 + 168), @"VideoSlotArray", Copy);
LABEL_32:
          OUTLINED_FUNCTION_402();
          fpfs_EnqueueNotification(v26, v27, v28, v29);
          if (!fpfsi_setCAImageQueueFlagsForTrack(v1))
          {
            fpfsi_setCAImageQueueFlagsForItem(v0);
          }

          if (Copy)
          {
            CFRelease(Copy);
          }

          goto LABEL_36;
        }
      }

      else
      {
        *(v2 + 745) = 1;
        if (v6)
        {
          goto LABEL_29;
        }
      }

      Copy = 0;
      goto LABEL_32;
    }
  }

  OUTLINED_FUNCTION_429();
  OUTLINED_FUNCTION_320();

  FigSignalErrorAtGM(v30);
}

uint64_t fpfsi_createOutputDestinationForVideo()
{
  OUTLINED_FUNCTION_629();
  v24 = v0;
  v25 = v1;
  v3 = v2;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v23 = 0;
  OUTLINED_FUNCTION_301();
  RenderingTrackofType = fpfs_LastRenderingTrackofType(v5, v6, v3);
  if (*(v3 + 48) != 1986618469)
  {
    return 0;
  }

  v8 = (v3 + 104);
  if (*(v3 + 104))
  {
    return 0;
  }

  v9 = RenderingTrackofType;
  fpfs_CreateFigImageQueueOutputsArray(*(v3 + 16), v3, &v23);
  v10 = v23;
  if (!v23)
  {
    return 0;
  }

  AllocatorForMedia = FigGetAllocatorForMedia();
  if (*DerivedStorage)
  {
    v12 = (CMBaseObjectGetDerivedStorage() + 888);
  }

  else
  {
    v12 = "";
  }

  if (*(v3 + 16))
  {
    v13 = (CMBaseObjectGetDerivedStorage() + 3096);
  }

  else
  {
    v13 = "";
  }

  v14 = CFStringCreateWithFormat(AllocatorForMedia, 0, @"%s:%s.V.%d", v12, v13, *(v3 + 32));
  if (v14)
  {
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    FigCFDictionarySetValue();
  }

  else
  {
    Mutable = 0;
  }

  v16 = FigGetAllocatorForMedia();
  v17 = (v9 + 104);
  if (!v9)
  {
    v17 = (DerivedStorage + 752);
  }

  v18 = FigAggregateVideoDestinationCreate(v16, v10, *(DerivedStorage + 576), *(v3 + 56), *v17, Mutable, (v3 + 104));
  if (!v18)
  {
    OUTLINED_FUNCTION_490();
    v18 = fpfsi_setAggregateDestinationVideoChannelSettingsForTrack();
    if (!v18)
    {
      CMNotificationCenterGetDefaultLocalCenter();
      OUTLINED_FUNCTION_186();
      FigNotificationCenterAddWeakListener();
      CMNotificationCenterGetDefaultLocalCenter();
      FigNotificationCenterRemoveWeakListener();
      CMNotificationCenterGetDefaultLocalCenter();
      OUTLINED_FUNCTION_186();
      FigNotificationCenterAddWeakListener();
      v19 = *(DerivedStorage + 752);
      v20 = *v8;
      *(DerivedStorage + 752) = *v8;
      if (v20)
      {
        CFRetain(v20);
      }

      if (v19)
      {
        CFRelease(v19);
      }

      v21 = 0;
      if (!v14)
      {
        goto LABEL_23;
      }

      goto LABEL_22;
    }
  }

  v21 = v18;
  if (v14)
  {
LABEL_22:
    CFRelease(v14);
  }

LABEL_23:
  CFRelease(v10);
  if (Mutable)
  {
    CFRelease(Mutable);
  }

  return v21;
}

uint64_t fpfsi_setCAImageQueueFlagsForItem(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v3 = *(DerivedStorage + 664);
  if (v3)
  {
    Count = CFArrayGetCount(v3);
  }

  else
  {
    Count = 0;
  }

  if (*(DerivedStorage + 845))
  {
    v5 = 72;
  }

  else
  {
    v5 = 64;
  }

  if (*(DerivedStorage + 844))
  {
    v6 = v5 | 0x10;
  }

  else
  {
    v6 = v5;
  }

  if (Count >= 1)
  {
    for (i = 0; i != Count; ++i)
    {
      CFArrayGetValueAtIndex(*(DerivedStorage + 664), i);
      CAImageQueueSetFlags();
    }
  }

  v7 = *(DerivedStorage + 1024);
  if (!v7)
  {
    return 0;
  }

  OUTLINED_FUNCTION_424();
  while (1)
  {
    if (*(v7 + 48) == i)
    {
      v8 = *(v7 + 104);
      if (v8)
      {
        break;
      }
    }

LABEL_19:
    v7 = *(v7 + 24);
    if (!v7)
    {
      return 0;
    }
  }

  v9 = *(*(CMBaseObjectGetVTable() + 16) + 80);
  if (v9)
  {
    result = v9(v8, v6, 88);
    if (result)
    {
      return result;
    }

    goto LABEL_19;
  }

  return 4294954514;
}

void fpfs_CreateFigImageQueueOutputsArray(uint64_t a1, uint64_t a2, void *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  OUTLINED_FUNCTION_294(DerivedStorage);
  v7 = CMBaseObjectGetDerivedStorage();
  if (!a2)
  {
    return;
  }

  v8 = v7;
  v9 = FigStreamingItemCombinedVideoDestinationCopyVisualContexts(*(v3 + 656));
  v10 = v9;
  if (*(v8 + 462))
  {
    if (v9)
    {
      v11 = CFRetain(v9);
      if (v11)
      {
        goto LABEL_11;
      }
    }

    FigGetAllocatorForMedia();
    OUTLINED_FUNCTION_613();
    ConcatenationOfTwoArrays = CFArrayCreate(v12, v13, v14, v15);
  }

  else
  {
    if (v9 && CFArrayGetCount(v9) >= 1)
    {
      fpfsi_VideoOutputAllowedWithPermissivePolicy(a2);
    }

    ConcatenationOfTwoArrays = FigCFArrayCreateConcatenationOfTwoArrays();
  }

  v11 = ConcatenationOfTwoArrays;
LABEL_11:
  v17 = FigStreamingPlayerCombinedVideoDestinationCopyFVTs(*(v8 + 376));
  OUTLINED_FUNCTION_284();
  v18 = FigCFArrayCreateConcatenationOfTwoArrays();
  if (v17)
  {
    CFRelease(v17);
  }

  if (v11)
  {
    CFRelease(v11);
  }

  if (v18)
  {
    v19 = CFRetain(v18);
  }

  else
  {
    v19 = 0;
  }

  *a3 = v19;
  if (v10)
  {
    CFRelease(v10);
  }

  if (v18)
  {

    CFRelease(v18);
  }
}

uint64_t fpfsi_setAggregateDestinationVideoChannelSettingsForTrack()
{
  OUTLINED_FUNCTION_369();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  OUTLINED_FUNCTION_173(DerivedStorage);
  v4 = CMBaseObjectGetDerivedStorage();
  cf = 0;
  v5 = *MEMORY[0x1E695F058];
  v6 = *(MEMORY[0x1E695F058] + 8);
  v7 = *(MEMORY[0x1E695F058] + 16);
  v8 = *(MEMORY[0x1E695F058] + 24);
  PresentationDimensions = CMVideoFormatDescriptionGetPresentationDimensions(*(v0 + 56), *(v2 + 844), *(v2 + 845));
  fpfs_ReadjustDimensions();
  AllocatorForMedia = FigGetAllocatorForMedia();
  VideoChannelSettingsForTrackWithID = FPSupport_CreateVideoChannelSettingsForTrackWithID(AllocatorForMedia, *v2, *(v0 + 16), *(v0 + 32), *(v4 + 400), PresentationDimensions.width, PresentationDimensions.height, v5, v6, v7, v8, 0, 0, &cf);
  if (VideoChannelSettingsForTrackWithID)
  {
    v15 = VideoChannelSettingsForTrackWithID;
  }

  else
  {
    FigAggregateVideoDestinationGetCMBaseObject();
    if (*(*(CMBaseObjectGetVTable() + 8) + 56))
    {
      v12 = OUTLINED_FUNCTION_188();
      v14 = v13(v12);
      v15 = v14;
      if (v1 && !v14)
      {
        OUTLINED_FUNCTION_296();
        fpfsi_scheduleFVTTransitionsForItem(v16, v17, v18);
      }
    }

    else
    {
      v15 = 4294954514;
    }
  }

  if (cf)
  {
    CFRelease(cf);
  }

  return v15;
}

void fpfs_ReadjustDimensions()
{
  OUTLINED_FUNCTION_807();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  OUTLINED_FUNCTION_180(DerivedStorage);
  v3 = CMBaseObjectGetDerivedStorage();
  if (v0)
  {
    if (*(v3 + 664))
    {
      v11 = 0;
      FigGetAllocatorForMedia();
      OUTLINED_FUNCTION_179();
      FigPlaybackItemGetFigBaseObject();
      if (*(*(CMBaseObjectGetVTable() + 8) + 48))
      {
        v4 = OUTLINED_FUNCTION_188();
        v5(v4);
      }
    }

    if (*v0 == *MEMORY[0x1E695F060] && *(v0 + 8) == *(MEMORY[0x1E695F060] + 8) && *(v1 + 469) == 1)
    {
      v7 = *(v1 + 1672);
      if (v7)
      {
        v8 = OUTLINED_FUNCTION_563();
        if (fpfs_FindMediaTypeInMediaArray(v7, v8, 0) || (FigGetCFStringForOSTypeValue(), v9 = OUTLINED_FUNCTION_399(), fpfs_FindMediaTypeInMediaArray(v9, v10, 0)))
        {
          *v0 = *"";
        }
      }
    }
  }
}

void fpfsi_HandleResolutionCapOrDisplaySizeChange(uint64_t a1)
{
  if (*(CMBaseObjectGetDerivedStorage() + 40))
  {
    OUTLINED_FUNCTION_251();
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    if (*(DerivedStorage + 40))
    {
      if (*(DerivedStorage + 48))
      {
        if (*(DerivedStorage + 49))
        {
          if (!fpfsi_UpdateResourceSpecifierOnResourceArbiter(a1))
          {
            fpfsi_SetupResolutionCapFilter();
            if (!v4 && !fpfsi_CreateAndAddCombinedAudioPreferenceFilter(a1))
            {
              v5 = *(v1 + 40);

              FigAlternateSelectionBossApplyFilters(v5);
            }
          }
        }
      }
    }
  }
}

void fpfs_DeferredAssessItemTransition(const void *a1)
{
  v127 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  OUTLINED_FUNCTION_744();
  OUTLINED_FUNCTION_335();
  v3 = CMBaseObjectGetDerivedStorage();
  OUTLINED_FUNCTION_173(v3);
  FigSimpleMutexLock();
  OUTLINED_FUNCTION_45();
  if (!v4)
  {
    if (*(DerivedStorage + 80))
    {
      v5 = CMBaseObjectGetDerivedStorage();
      Next = fpfs_getNext(DerivedStorage, *(DerivedStorage + 80));
      if (Next)
      {
        v7 = Next;
        fpfs_GetNextTimeToPlay(v5, 0, &time);
        v16 = OUTLINED_FUNCTION_581(v8, v9, v10, v11, v12, v13, v14, v15, v86, v93, v100, v107, rhs.value, *&rhs.timescale, rhs.epoch, v115, v116, *(&v116 + 1), v117, v118.value, *&v118.timescale, v118.epoch, kTimerVariability, *(&kTimerVariability + 1), 0, v120, *v121, *&v121[8], *&v121[16], *&v121[24], v122, v123, time.value);
        CMTimeAdd(v18, v16, v17);
        fpfsi_PredictedEndTime(*(DerivedStorage + 80), &v118);
        OUTLINED_FUNCTION_791(v19, v20, v21, v22, v23, v24, v25, v26, v87, v94, v101, v108, rhs.value, *&rhs.timescale, rhs.epoch, v115, v116, *(&v116 + 1), v117, *&v118.value);
        *&rhs.value = kGaplessTransitionDeadlineInterval;
        rhs.epoch = 0;
        CMTimeSubtract(&time, &lhs, &rhs);
        value = time.value;
        flags = time.flags;
        timescale = time.timescale;
        if (time.flags)
        {
          epoch = time.epoch;
          time.value = value;
          time.timescale = timescale;
          OUTLINED_FUNCTION_168(MEMORY[0x1E6960CC0]);
          v37 = OUTLINED_FUNCTION_581(v29, v30, v31, v32, v33, v34, v35, v36, v88, v95, v102, v109, rhs.value, *&rhs.timescale, rhs.epoch, v115, v116, *(&v116 + 1), v117, v118.value, *&v118.timescale, v118.epoch, lhs.value, *&lhs.timescale, lhs.epoch, v120, *v121, *&v121[8], *&v121[16], *&v121[24], v122, v123, time.value);
          v39 = CMTimeCompare(v37, v38);
          if (v39 >= 1)
          {
            *&time.timescale = *(&v116 + 1);
            time.epoch = v117;
            v47 = OUTLINED_FUNCTION_581(v39, v40, v41, v42, v43, v44, v45, v46, v89, v96, v103, v110, rhs.value, *&rhs.timescale, rhs.epoch, v115, v116, *(&v116 + 1), v117, v118.value, *&v118.timescale, v118.epoch, value, __SPAIR64__(flags, timescale), epoch, v120, *v121, *&v121[8], *&v121[16], *&v121[24], v122, v123, v116);
            if (CMTimeCompare(v47, v48) <= 0)
            {
              fpfs_TransitionFromItemToItem(*(DerivedStorage + 80), v7);
            }

            else if (dword_1EAF169F0)
            {
              OUTLINED_FUNCTION_21();
              os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
              OUTLINED_FUNCTION_311(os_log_and_send_and_compose_flags_and_os_log_type, v50, v51, v52, v53, v54, v55, v56, v90, v97, v104, v111, SBYTE2(v111), BYTE3(v111), SHIDWORD(v111));
              OUTLINED_FUNCTION_40();
              if (epoch)
              {
                if (a1)
                {
                  v57 = CMBaseObjectGetDerivedStorage();
                  v65 = (v57 + 888);
                }

                else
                {
                  v65 = "";
                }

                v66 = *(DerivedStorage + 80);
                if (v66)
                {
                  v57 = CMBaseObjectGetDerivedStorage();
                  v67 = (v57 + 3096);
                }

                else
                {
                  v67 = "";
                }

                OUTLINED_FUNCTION_791(v57, v58, v59, v60, v61, v62, v63, v64, v91, v98, v105, v112, rhs.value, *&rhs.timescale, rhs.epoch, v115, v116, *(&v116 + 1), v117, *&v118.value);
                OUTLINED_FUNCTION_80(v68, v69, v70, v71, v72, v73, v74, v75, v92, v99, v106, v113, rhs.value, *&rhs.timescale, rhs.epoch, v115, v116);
                CMTimeSubtract(&time, &lhs, &rhs);
                Seconds = CMTimeGetSeconds(&time);
                v77 = *(DerivedStorage + 80);
                LODWORD(lhs.value) = 136316674;
                *(&lhs.value + 4) = "fpfs_DeferredAssessItemTransition";
                LOWORD(lhs.flags) = 2048;
                *(&lhs.flags + 2) = a1;
                HIWORD(lhs.epoch) = 2082;
                v120 = v65;
                *v121 = 2048;
                *&v121[2] = v66;
                *&v121[10] = 2082;
                *&v121[12] = v67;
                *&v121[20] = 2048;
                *&v121[22] = Seconds;
                *&v121[30] = 2048;
                v122 = v77;
                OUTLINED_FUNCTION_66();
                v78 = OUTLINED_FUNCTION_31();
                OUTLINED_FUNCTION_456(v78, v79, v80, v81, v82, v83, v84, v85);
                OUTLINED_FUNCTION_612();
              }

              OUTLINED_FUNCTION_1();
              fig_log_call_emit_and_clean_up_after_send_and_compose();
            }
          }
        }
      }
    }
  }

  fpfs_UnlockAndPostNotificationsWithCaller(a1);
  if (a1)
  {
    CFRelease(a1);
  }
}

void fpfs_CommitToGaplessTransition()
{
  OUTLINED_FUNCTION_193();
  v1 = v0;
  v3 = v2;
  v155 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v5 = CMBaseObjectGetDerivedStorage();
  v145 = **&MEMORY[0x1E6960C70];
  memset(__src, 0, 72);
  memset(v143, 0, 72);
  v141 = v145;
  valuePtr = DerivedStorage[20];
  target = 0;
  v6 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberCFIndexType, &valuePtr);
  HIDWORD(v138) = 2;
  BYTE3(v138) = 0;
  if (!fpfsi_IsEligibleForGaplessTransition(*DerivedStorage) || (fpfs_OkayToAttemptGapless(v3, v1, __src, v143, &v145, v7, v8, v9, sampleTimingArray, v111, sampleSizeArray, v115, v117, v119, v121, v124, v127, v130, v132, v134, v136, v138, valuePtr, target, v141.value, *&v141.timescale, v141.epoch, v142, *v143, *&v143[8], *&v143[16], *&v143[24], *&v143[32], *&v143[48], *&v143[64], __src[0], *&__src[1], *&__src[3], __src[5], __src[6], __src[7], __src[8], __src[9], v145.value, *&v145.timescale, v145.epoch, v146, *__dst, *&__dst[8], *&__dst[16], *&__dst[24], *&__dst[32], *&__dst[40]), !v10))
  {
    OUTLINED_FUNCTION_429();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", sampleTimingArray, v111, sampleSizeArray);
    *(v5 + 2472) = 0;
    goto LABEL_43;
  }

  if (!*(v5 + 2472))
  {
    goto LABEL_43;
  }

  v11 = *&v143[8];
  if (*&v143[8])
  {
    if (*(*&v143[8] + 439))
    {
      goto LABEL_43;
    }
  }

  memcpy(v154, __src, 0x48uLL);
  memcpy(__dst, v143, 0x48uLL);
  fpfs_AreItemsEligibleForGaplessTransition(v3, v154, v1, __dst, &v138 + 1, &v138 + 3);
  if (HIDWORD(v138) != 1 || !fpfsi_AllTracksForMediaTypeArePlaying(v3))
  {
    OUTLINED_FUNCTION_429();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
    if (!v108)
    {
      goto LABEL_43;
    }

    goto LABEL_41;
  }

  v12 = __src[2];
  OUTLINED_FUNCTION_360();
  v13 = OUTLINED_FUNCTION_481();
  fpfp_GetTransitionTimebaseStartTime(v13, v14, v15, v16, v17, v18, v19, v20, v21);
  v22 = __src[4];
  if (v12)
  {
    v22 = v12;
  }

  v23 = *(v22 + 112);
  FigGetAllocatorForMedia();
  OUTLINED_FUNCTION_441();
  OUTLINED_FUNCTION_19();
  if (CMSampleBufferCreate(v24, v25, v26, v27, v28, v29, v30, v31, 0, 0, 0, &target))
  {
    goto LABEL_41;
  }

  v135 = v11;
  CMSetAttachment(target, *MEMORY[0x1E6960550], v6, 0);
  if (dword_1EAF169F0)
  {
    v131 = v6;
    v133 = v1;
    HIDWORD(v137) = 0;
    BYTE3(v137) = 0;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    OUTLINED_FUNCTION_425();
    if (v34)
    {
      v35 = v33;
    }

    else
    {
      v35 = 0;
    }

    if (v35)
    {
      v36 = *DerivedStorage;
      if (*DerivedStorage)
      {
        v37 = (CMBaseObjectGetDerivedStorage() + 888);
      }

      else
      {
        v37 = "";
      }

      v129 = v37;
      v123 = v23;
      if (v3)
      {
        v38 = (CMBaseObjectGetDerivedStorage() + 3096);
      }

      else
      {
        v38 = "";
      }

      v126 = v38;
      HIDWORD(v120) = *(DerivedStorage + 40);
      v39 = OUTLINED_FUNCTION_683();
      fpfs_GetTime(v39, v40);
      Seconds = CMTimeGetSeconds(v154);
      OUTLINED_FUNCTION_360();
      v50.n128_f64[0] = CMTimeGetSeconds(v154);
      v52 = v50.n128_u64[0];
      v53 = v133;
      if (v133)
      {
        v42 = CMBaseObjectGetDerivedStorage();
        v54 = (v42 + 3096);
      }

      else
      {
        v54 = "";
      }

      OUTLINED_FUNCTION_698(v42, v43, v44, v45, v46, v47, v48, v49, v50, sampleTimingArraya, v112, sampleSizeArraya, v116, v118, v120, v123, v126, v129, v6, v133, v135, v137, v138, valuePtr, target, v51, v141.value);
      v55 = CMTimeGetSeconds(v154);
      *__dst = 136317698;
      *&__dst[4] = "fpfs_CommitToGaplessTransition";
      *&__dst[12] = 2048;
      *&__dst[14] = v36;
      *&__dst[22] = 2082;
      *&__dst[24] = v128;
      *&__dst[32] = 2048;
      *&__dst[34] = v3;
      *&__dst[42] = 2082;
      *&__dst[44] = v125;
      *&__dst[52] = 1024;
      *&__dst[54] = HIDWORD(v120);
      *&__dst[58] = 2048;
      *&__dst[60] = Seconds;
      *&__dst[68] = 2048;
      *&__dst[70] = v52;
      v148 = 2048;
      v149 = v53;
      v150 = 2082;
      v151 = v54;
      v152 = 2048;
      v153 = v55;
      LODWORD(v112) = 108;
      sampleTimingArraya = __dst;
      OUTLINED_FUNCTION_34();
      OUTLINED_FUNCTION_282();
      _os_log_send_and_compose_impl(v56, v57, v58, v59, v60, v61, v62, v63);
      v23 = v122;
    }

    OUTLINED_FUNCTION_7();
    OUTLINED_FUNCTION_635(v64, v65, v66, v67, v68);
    v6 = v131;
    v1 = v133;
  }

  v69 = *(v23 + 32);
  v70 = *(v5 + 576);
  v71 = *(*(CMBaseObjectGetVTable() + 16) + 16);
  if (!v71 || (v154[0] = v141, v71(v69, v70, v154, v6, 0, 0)))
  {
    v11 = v135;
    goto LABEL_41;
  }

  fpfs_SetRenderPipelinePropertiesToUpdateAtTransition(v3, v1, v23);
  v11 = v135;
  if (CMBufferQueueEnqueue(*(v23 + 40), target))
  {
LABEL_41:
    *(v5 + 2472) = 0;
    if (v11)
    {
      *(v11 + 439) = 0;
    }

    goto LABEL_43;
  }

  if (!v12 || !v135)
  {
LABEL_36:
    if (!*(v5 + 2473) && *(v5 + 832) && (v145.flags & 1) != 0)
    {
      v95 = *(v5 + 664);
      if (v95)
      {
        v96 = CFArrayGetCount(v95) > 0;
      }

      else
      {
        v96 = 0;
      }

      OUTLINED_FUNCTION_601();
      NotificationPayloadForProperties = fpfs_CreateNotificationPayloadForProperties(v97, v1, v98, v99, v100, v101, v102, v103, sampleTimingArraya, v112);
      FigGetAllocatorForMedia();
      OUTLINED_FUNCTION_360();
      v106 = CMTimeCopyAsDictionary(v154, v105);
      CFDictionaryAddValue(NotificationPayloadForProperties, @"FigTime", v106);
      v107 = MEMORY[0x1E695E4C0];
      if (v96)
      {
        v107 = MEMORY[0x1E695E4D0];
      }

      CFDictionaryAddValue(NotificationPayloadForProperties, @"CurrentHasEnqueuedFirstVideoFrame", *v107);
      fpfs_EnqueueNotification(*v5, @"ScheduleNextItemTransitionTimer", v1, NotificationPayloadForProperties);
      if (v106)
      {
        CFRelease(v106);
      }

      if (NotificationPayloadForProperties)
      {
        CFRelease(NotificationPayloadForProperties);
      }

      *(v5 + 2473) = 1;
    }

    goto LABEL_43;
  }

  v72 = *(v135 + 112);
  v73 = *(v12 + 112);
  if (!v72 || v72 == v73)
  {
    *(v135 + 439) = 1;
    fpfsi_RemoveAudioRenderChainListeners(v3, v73);
    v74 = OUTLINED_FUNCTION_770();
    fpfsi_SetRenderChainOnTrackOfItem(v74, v75, v76);
    fpfsi_EnsureRenderChainListenersAndPropertiesForAudioTrack(v135);
    goto LABEL_36;
  }

  if (*(v5 + 1024))
  {
    OUTLINED_FUNCTION_131();
    v78 = MEMORY[0x1E6960C70];
    do
    {
      v79 = *(v77 + 24);
      if (*(v77 + 48) == v23)
      {
        fpfsi_MoveTrackToPlayedOut(v5, v77, v78);
      }

      if (!v79)
      {
        break;
      }

      v77 = v79;
    }

    while (*(v5 + 1024));
    v73 = *(v12 + 112);
    v11 = v135;
  }

  *(v11 + 439) = 1;
  fpfsi_RemoveAudioRenderChainListeners(v3, v73);
  v80 = OUTLINED_FUNCTION_770();
  fpfsi_SetRenderChainOnTrackOfItem(v80, v81, v82);
  v83 = fpfsi_EnsureRenderChainListenersAndPropertiesForAudioTrack(v11);
  OUTLINED_FUNCTION_698(v83, v84, v85, v86, v87, v88, v89, v90, v91, sampleTimingArraya, v112, sampleSizeArraya, v116, v118, v120, v122, v125, v128, v131, v133, v135, v137, v138, valuePtr, target, v92, v141.value);
  fpfs_RestartPlayedOutTracks(v1, v154);
  v93 = OUTLINED_FUNCTION_177();
  if (fpfsi_isTrackInLists(v93, v94, 1u))
  {
    goto LABEL_36;
  }

LABEL_43:
  if (v6)
  {
    CFRelease(v6);
  }

  if (target)
  {
    CFRelease(target);
  }

  OUTLINED_FUNCTION_191();
}

BOOL fpfsi_IsEligibleForGaplessTransition(uint64_t a1)
{
  CMBaseObjectGetDerivedStorage();
  OUTLINED_FUNCTION_251();
  CMBaseObjectGetDerivedStorage();
  if (!*(v1 + 49))
  {
    return 0;
  }

  v2 = *(v1 + 688);
  v3 = *(v1 + 80);
  Count = CFArrayGetCount(*(v1 + 72));
  if (v3)
  {
    v5 = Count + 1;
  }

  else
  {
    v5 = Count;
  }

  return FigPlaybackGetEffectiveActionAtEnd(v2, v5) == 0;
}

void fpfs_OkayToAttemptGapless(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, __int128 a33, __int128 a34, __int128 a35, uint64_t a36, __int128 a37, __int128 a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53)
{
  OUTLINED_FUNCTION_564();
  a52 = v54;
  a53 = v59;
  v61 = v60;
  a39 = *MEMORY[0x1E69E9840];
  if (v60)
  {
    v62 = v55;
    if (v55)
    {
      v63 = v58;
      v64 = v57;
      v65 = v56;
      CMBaseObjectGetDerivedStorage();
      OUTLINED_FUNCTION_500();
      DerivedStorage = CMBaseObjectGetDerivedStorage();
      if (*(v53 + 463))
      {
        if (*(DerivedStorage + 463))
        {
          fpfsi_gatherInterestingGaplessInfoForItem(v61, &a34);
          v93 = a34;
          v94 = a35;
          v95 = a36;
          v88 = a37;
          *&a33 = *(&a37 + 1);
          *(&a33 + 7) = *(&a37 + 1);
          v67 = *(&a38 + 4);
          v68 = a38;
          v86 = HIDWORD(a38);
          fpfsi_gatherInterestingGaplessInfoForItem(v62, &a34);
          v90 = a34;
          v91 = a35;
          v92 = a36;
          v87 = a37;
          *v89 = *(&a37 + 1);
          *&v89[15] = a38;
          v69 = CMBaseObjectGetDerivedStorage();
          OUTLINED_FUNCTION_248(v69);
          v70 = CMBaseObjectGetDerivedStorage();
          OUTLINED_FUNCTION_194();
          if (fpfs_FirstTrackWithFormatDescriptionOfType(v71, v72))
          {
            v73 = STACK[0x3F8] != 0;
          }

          else
          {
            v73 = 1;
          }

          if (fpfs_CanRenderVideo(v70, v61))
          {
            OUTLINED_FUNCTION_301();
            if (fpfs_FirstTrackWithFormatDescriptionOfType(v74, v75))
            {
              if (v73)
              {
                v73 = STACK[0x400] != 0;
              }
            }
          }

          if (v73 && fpfsi_PumpHasEndedOrBufferedBeyondEndTime(v61) && (v68 & 1) != 0 && v88 == 1 && v87 == 1)
          {
            CMBaseObjectGetDerivedStorage();
            a31 = 0;
            a32 = 0;
            a30 = 0;
            fpfs_GetItemBufferedDuration(v62, &a30, &a34, 0);
            OUTLINED_FUNCTION_185();
            fpfs_CheckCanKeepUp(v77, v78, v79, v80, v81, v82, v83, v84);
            v85 = 0.0;
            if (fpfs_GetGaplessTransitionBufferingProgressThreshold_onceToken != -1)
            {
              dispatch_once(&fpfs_GetGaplessTransitionBufferingProgressThreshold_onceToken, &__block_literal_global_229);
              v85 = 0.0;
            }

            if (*&gGaplessTransitionBufferingProgressThreshold <= v85)
            {
              a34 = 0uLL;
              *&a35 = 0;
              fpfsi_GetDuration(v62, &a34);
            }
          }

          if (v65)
          {
            *v65 = v93;
            *(v65 + 16) = v94;
            *(v65 + 32) = v95;
            *(v65 + 40) = v88;
            *(v65 + 41) = a33;
            *(v65 + 48) = *(&a33 + 7);
            *(v65 + 56) = v68;
            *(v65 + 60) = v67;
            *(v65 + 68) = v86;
          }

          if (v64)
          {
            *v64 = v90;
            *(v64 + 16) = v91;
            *(v64 + 32) = v92;
            *(v64 + 40) = v87;
            *(v64 + 41) = *v89;
            *(v64 + 56) = *&v89[15];
          }

          if (v63)
          {
            *v63 = *(&a33 + 3);
            *(v63 + 8) = *(&a33 + 11);
            *(v63 + 12) = v68;
            *(v63 + 16) = v67;
          }
        }
      }
    }
  }

  OUTLINED_FUNCTION_463();
}

BOOL fpfs_ShouldEnableSpatializationForTrack(uint64_t *a1)
{
  v10 = 0;
  v2 = a1[2];
  CMBaseObjectGetDerivedStorage();
  AudioFormatDescriptionSpatializationEligibility = FPSupport_GetAudioFormatDescriptionSpatializationEligibility(a1[7], &v10);
  CurrentAudioPersistentIDFromMediaOption = fpfsi_GetCurrentAudioPersistentIDFromMediaOption(a1[2]);
  FigAlternateGetSpecializedAudioChannelUsage(a1[57], CurrentAudioPersistentIDFromMediaOption);
  AudioRouteSpatializationCapabilities = fpfsi_getAudioRouteSpatializationCapabilities(v2);
  v7 = (AudioRouteSpatializationCapabilities & 6) != 0 && AudioFormatDescriptionSpatializationEligibility == 1;
  return AudioFormatDescriptionSpatializationEligibility == 2 && (AudioRouteSpatializationCapabilities & 1) != 0 || v7;
}

void fpfsi_sendLoudnessInfoMarkerSampleBufferToAudioRenderPipeline()
{
  OUTLINED_FUNCTION_369();
  v11 = 0;
  FigGetAllocatorForMedia();
  OUTLINED_FUNCTION_441();
  OUTLINED_FUNCTION_19();
  if (!CMSampleBufferCreate(v1, v2, v3, v4, v5, v6, v7, v8, 0, 0, 0, &v11))
  {
    CMSetAttachment(v11, *MEMORY[0x1E6962DF0], v0, 0);
    FigGetAllocatorForMedia();
    OUTLINED_FUNCTION_199();
    FigRenderPipelineGetFigBaseObject();
    if (*(*(CMBaseObjectGetVTable() + 8) + 48))
    {
      v9 = OUTLINED_FUNCTION_236();
      if (!v10(v9))
      {
        CMBufferQueueEnqueue(0, v11);
      }
    }
  }

  if (v11)
  {
    CFRelease(v11);
  }
}

void fpfsi_RTCReportingUpdateBufferDuration(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    OUTLINED_FUNCTION_369();
    if (*(v4 + 1072) & 1) != 0 && (*(v3 + 12))
    {
      v5 = *(v2 + 2568);
      OUTLINED_FUNCTION_89();
      CMTimeGetSeconds(&v17);
      if (v5)
      {
        if (*(*(OUTLINED_FUNCTION_854() + 16) + 56))
        {
          v6 = OUTLINED_FUNCTION_715();
          v7(v6);
        }
      }
    }

    if (*(v2 + 1072) & 2) != 0 && (*(v3 + 36))
    {
      v8 = *(v2 + 2568);
      *&v17.value = *(v3 + 24);
      OUTLINED_FUNCTION_447();
      CMTimeGetSeconds(v9);
      if (v8)
      {
        if (*(*(OUTLINED_FUNCTION_854() + 16) + 56))
        {
          v10 = OUTLINED_FUNCTION_715();
          v11(v10);
        }
      }
    }

    if (*(v2 + 1072) & 4) != 0 && (*(v3 + 60))
    {
      v12 = *(v2 + 2568);
      *&v17.value = *(v3 + 48);
      OUTLINED_FUNCTION_447();
      CMTimeGetSeconds(v13);
      if (v12)
      {
        if (*(*(CMBaseObjectGetVTable() + 16) + 56))
        {
          v14 = OUTLINED_FUNCTION_113();
          v15(v14);
        }
      }
    }

    if (*(v2 + 2568))
    {
      if (*(*(CMBaseObjectGetVTable() + 16) + 56))
      {
        OUTLINED_FUNCTION_730(1000.0);
        OUTLINED_FUNCTION_242();
        v16();
      }
    }
  }
}

void fpfsi_getSeekableTimeRange(_OWORD *a2@<X8>)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v4 = MEMORY[0x1E6960C98];
  v5 = *MEMORY[0x1E6960C98];
  v6 = *(MEMORY[0x1E6960C98] + 16);
  *a2 = *MEMORY[0x1E6960C98];
  a2[1] = v6;
  v7 = *(v4 + 32);
  a2[2] = v7;
  v18 = v5;
  v19 = v6;
  v20 = v7;
  fpfsi_getPumpAvailableTimeRange(DerivedStorage, &v18);
  if (v8 || (BYTE12(v18) & 1) == 0 || (BYTE4(v20) & 1) == 0 || *(&v20 + 1) || (*(&v19 + 1) & 0x8000000000000000) != 0)
  {

    fpfsi_TotalTimeRangeInBuffer();
  }

  else
  {
    OUTLINED_FUNCTION_733(v8, v9, v10, v11, v12, v13, v14, v15, v16, v18, v19, v17);
  }
}

void fpfsi_EnqueueEndTimeChangedNotification(uint64_t a1)
{
  CMBaseObjectGetDerivedStorage();
  v1 = OUTLINED_FUNCTION_171();
  NotificationPayloadForProperties = fpfs_CreateNotificationPayloadForProperties(v1, v2, v3, v4, v5, v6, v7, v8, @"EndTime", 0);
  v10 = OUTLINED_FUNCTION_308();
  fpfs_EnqueueNotification(v10, v11, v12, NotificationPayloadForProperties);
  if (NotificationPayloadForProperties)
  {

    CFRelease(NotificationPayloadForProperties);
  }
}

void fpfsi_UpdateTaggedRangeMetadataFromPumpAndNotifyIfNeeded(uint64_t a1, uint64_t a2, int a3, int a4)
{
  OUTLINED_FUNCTION_187();
  v46 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 912))
  {
    v8 = DerivedStorage;
    fpfsi_CopyCurrentDate(v4, &v46);
    v9 = v46;
    if (v46)
    {
      v10 = (v8 + 2624);
      v11 = *(v8 + 2624);
      if (v11)
      {
        CFRelease(v11);
        *v10 = 0;
      }

      AllocatorForMedia = FigGetAllocatorForMedia();
      FigBytePumpGetFigBaseObject();
      v14 = v13;
      v15 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      if (v15)
      {
        v15(v14, 0x1F0B1F2F8, AllocatorForMedia, v8 + 2624);
      }

      if (*v10)
      {
        Count = CFArrayGetCount(*v10);
        OUTLINED_FUNCTION_514();
        fpfs_GetTime(v8, &v45);
        if (Count >= 1)
        {
          for (i = 0; i != Count; ++i)
          {
            ValueAtIndex = CFArrayGetValueAtIndex(*v10, i);
            if (!CFDictionaryGetValue(ValueAtIndex, @"TaggedRangeMetadataKey_StartTime"))
            {
              v19 = OUTLINED_FUNCTION_610();
              Value = CFDictionaryGetValue(v19, v20);
              TimeIntervalSinceDate = CFDateGetTimeIntervalSinceDate(Value, v9);
              v23 = CMTimeMakeWithSeconds(&rhs, TimeIntervalSinceDate, 1000);
              OUTLINED_FUNCTION_662(v23, v24, v25, v26, v27, v28, v29, v30, v41.value, *&v41.timescale, v41.epoch, v42, rhs.value, *&rhs.timescale, rhs.epoch, v44.value, *&v44.timescale, v44.epoch, *&v45);
              v31 = CMTimeAdd(&v44, &v41, &rhs);
              OUTLINED_FUNCTION_665(v31, v32, v33, v34, v35, v36, v37, v38, v41.value, *&v41.timescale, v41.epoch, v42, rhs.value, *&rhs.timescale, rhs.epoch, *&v44.value);
              FigCFDictionarySetCMTime();
            }
          }
        }
      }

      else if (a3 != 1)
      {
LABEL_17:
        CFRelease(v9);
        return;
      }

      if (a4)
      {
        v39 = OUTLINED_FUNCTION_177();
        fpfsi_EnqueueTaggedRangeMetadataChangedNotificationIfNeeded(v39, v40);
      }

      goto LABEL_17;
    }
  }
}

uint64_t fpfsi_CopyDateForTime()
{
  OUTLINED_FUNCTION_207();
  v12 = 0uLL;
  v13 = 0;
  CMBaseObjectGetDerivedStorage();
  OUTLINED_FUNCTION_89();
  DateEntryForTime = fpfsi_getDateEntryForTime(v1, &v11, 1);
  if (!DateEntryForTime)
  {
    return 4294954513;
  }

  v3 = DateEntryForTime;
  fpfsi_getDateEntryTimelineOrigin(DateEntryForTime, &v12);
  v4 = MEMORY[0x19A8CCD90](*(v3 + 16));
  OUTLINED_FUNCTION_89();
  v5 = v4 + CMTimeGetSeconds(&v11);
  *&v11.value = v12;
  OUTLINED_FUNCTION_447();
  v7 = v5 - CMTimeGetSeconds(v6);
  AllocatorForMedia = FigGetAllocatorForMedia();
  v9 = CFDateCreate(AllocatorForMedia, v7);
  result = 0;
  *v0 = v9;
  return result;
}

uint64_t fpfsi_getDateEntryForTime(uint64_t a1, uint64_t a2, int a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v5 = **(*(DerivedStorage + 1600) + 8);
  if (v5)
  {
    v6 = DerivedStorage;
    while (1)
    {
      v7 = **(*(v5 + 8) + 8);
      if (*(v5 + 84))
      {
        OUTLINED_FUNCTION_230();
        fpfsi_getDateEntryTimelineOrigin(v5, v8);
        if (!v7)
        {
          break;
        }

        OUTLINED_FUNCTION_332();
        OUTLINED_FUNCTION_150(v9, v10, v11, v12, v13, v14, v15, v16, v50, v53, v56, v59, v62, v65, v66, v67);
        v25 = OUTLINED_FUNCTION_175(v17, v18, v19, v20, v21, v22, v23, v24, v51, v54, v57, v60, v63);
        if ((CMTimeCompare(v25, v26) & 0x80000000) == 0)
        {
          break;
        }
      }

      v5 = v7;
      if (!v7)
      {
        if (!a3)
        {
          return 0;
        }

        v27 = **(*(v6 + 1600) + 8);
        if (!v27)
        {
          return 0;
        }

        v28 = **(*(v27 + 8) + 8);
        OUTLINED_FUNCTION_230();
        fpfsi_getDateEntryTimelineOrigin(v27, v29);
        if (!v28)
        {
          return v27;
        }

        do
        {
          v5 = v27;
          v27 = v28;
          OUTLINED_FUNCTION_332();
          OUTLINED_FUNCTION_150(v30, v31, v32, v33, v34, v35, v36, v37, v50, v53, v56, v59, v62, v65, v66, v67);
          v46 = OUTLINED_FUNCTION_175(v38, v39, v40, v41, v42, v43, v44, v45, v52, v55, v58, v61, v64);
          if ((CMTimeCompare(v46, v47) & 0x80000000) == 0)
          {
            break;
          }

          v28 = **(*(v28 + 8) + 8);
          OUTLINED_FUNCTION_230();
          fpfsi_getDateEntryTimelineOrigin(v27, v48);
          v5 = v27;
        }

        while (v28);
        return v5;
      }
    }
  }

  return v5;
}

void fpfsi_StartDownloadingToURL(uint64_t a1)
{
  v9 = 0;
  v10 = 0;
  cf = 0;
  v8 = 0;
  if (*(a1 + 912))
  {
    OUTLINED_FUNCTION_400();
    FigAssetDownloadCoordinatorCopyClientBundleIdentifierForAsset(*(v1 + 32), &v10);
    if (!v2)
    {
      if (!v10 || (FigBytePumpGetFigBaseObject(), *(*(CMBaseObjectGetVTable() + 8) + 56)) && (v3 = OUTLINED_FUNCTION_501(), !v4(v3)))
      {
        FigGetAllocatorForMedia();
        OUTLINED_FUNCTION_702();
        FigAssetGetCMBaseObject();
        if (*(*(CMBaseObjectGetVTable() + 8) + 48))
        {
          v5 = OUTLINED_FUNCTION_501();
          if (!v6(v5))
          {
            OUTLINED_FUNCTION_376();
            FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
          }
        }
      }
    }
  }

  else
  {
    OUTLINED_FUNCTION_376();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (v10)
  {
    CFRelease(v10);
  }

  if (v8)
  {
    CFRelease(v8);
  }

  if (v9)
  {
    CFRelease(v9);
  }

  OUTLINED_FUNCTION_860();
}

void fpfsi_DeferredHandleTimebaseEffectiveRateChanged()
{
  OUTLINED_FUNCTION_182();
  v1 = v0;
  v303 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v3 = *DerivedStorage;
  v4 = CMBaseObjectGetDerivedStorage();
  *&v290.value = *MEMORY[0x1E6960C70];
  v5 = *(MEMORY[0x1E6960C70] + 16);
  v290.epoch = v5;
  v218 = *&v290.value;
  *&v288.value = *&v290.value;
  v288.epoch = v5;
  v6 = CMBaseObjectGetDerivedStorage();
  OUTLINED_FUNCTION_248(v6);
  FigSimpleMutexLock();
  OUTLINED_FUNCTION_526();
  Rate = CMTimebaseGetRate(*(DerivedStorage + 576));
  CMTimebaseGetTime(&v288, *(DerivedStorage + 576));
  CMTimeIfPresent = FigCFDictionaryGetCMTimeIfPresent();
  if ((v290.flags & 1) == 0)
  {
    v290 = v288;
  }

  v16 = &unk_1EAF16000;
  v17 = MEMORY[0x1E695FF58];
  if (Rate == 0.0)
  {
    if (!dword_1EAF169F0)
    {
      goto LABEL_75;
    }

    v44 = OUTLINED_FUNCTION_555(CMTimeIfPresent, v9, v10, v11, v12, v13, v14, v15, v186, v194, v202, v210, v218.n128_i64[0], v218.n128_i64[1], v235, v243, v251, v259, v267, v275, *(&v275 + 1), v276, v277.value, *&v277.timescale, v277.epoch, v278, v279, *(&v279 + 1), v280, v281, v282, v283, v284.value, *&v284.timescale, v284.epoch, v285);
    OUTLINED_FUNCTION_840(v44, v45, v46, v47, v48, v49, v50, v51, v188, v196, v204, v212, v220, v229, v237, v245, v253, v261, v269, v275, *(&v275 + 1), v276, v277.value, *&v277.timescale, v277.epoch, v278, v279, *(&v279 + 1), v280, v281, v282, v283, v284.value);
    OUTLINED_FUNCTION_28();
    if (v3)
    {
      v43 = (CMBaseObjectGetDerivedStorage() + 888);
      if (v1)
      {
LABEL_20:
        v52 = (CMBaseObjectGetDerivedStorage() + 3096);
LABEL_41:
        OUTLINED_FUNCTION_42();
        CMTimeGetSeconds(&time);
        OUTLINED_FUNCTION_93();
        CMTimeGetSeconds(&time);
        LODWORD(v292) = 136316930;
        OUTLINED_FUNCTION_76("fpfsi_DeferredHandleTimebaseEffectiveRateChanged");
        v295 = v43;
        OUTLINED_FUNCTION_357(v136);
        *(&v297 + 4) = v52;
        OUTLINED_FUNCTION_92(v137);
        *(v300 + 2) = v138;
        OUTLINED_FUNCTION_49();
        OUTLINED_FUNCTION_23();
        _os_log_send_and_compose_impl(v139, v140, v141, v142, v143, v144, &unk_1EAF16000, v145);
        v17 = MEMORY[0x1E695FF58];
LABEL_42:
        OUTLINED_FUNCTION_2();
        fig_log_call_emit_and_clean_up_after_send_and_compose();
        goto LABEL_75;
      }
    }

    else
    {
      v43 = "";
      if (v1)
      {
        goto LABEL_20;
      }
    }

    v52 = "";
    goto LABEL_41;
  }

  v18 = CMBaseObjectGetDerivedStorage();
  if (*(v18 + 3356))
  {
    v19 = v18;
    v20 = v4;
    v21 = (v18 + 3344);
    v22 = (FigGetUpTimeNanoseconds() - *(v18 + 3336));
    OUTLINED_FUNCTION_162();
    v23 = (v22 + CMTimeGetSeconds(&time) * -1000000000.0) / 0xF4240uLL;
    if (v23 >= 1)
    {
      v24 = *(v19 + 2568);
      if (v24)
      {
        v25 = *(*(CMBaseObjectGetVTable() + 16) + 40);
        if (v25)
        {
          v25(v24, @"playerStats", 0x1F0B67578, v23 & 0x7FFFFFFF);
        }
      }
    }

    *(v19 + 3336) = 0;
    *v21 = v218;
    v21[1].n128_u64[0] = v5;
    v4 = v20;
    v17 = MEMORY[0x1E695FF58];
    v16 = &unk_1EAF16000;
  }

  TimebaseStarterTrack = fpfsi_getTimebaseStarterTrack(v1);
  if (!TimebaseStarterTrack || (v34 = TimebaseStarterTrack, (*(TimebaseStarterTrack + 388) & 1) == 0))
  {
    if (!dword_1EAF169F0)
    {
      goto LABEL_75;
    }

    v35 = OUTLINED_FUNCTION_555(TimebaseStarterTrack, v27, v28, v29, v30, v31, v32, v33, v186, v194, v202, v210, v218.n128_i64[0], v218.n128_i64[1], v235, v243, v251, v259, v267, v275, *(&v275 + 1), v276, v277.value, *&v277.timescale, v277.epoch, v278, v279, *(&v279 + 1), v280, v281, v282, v283, v284.value, *&v284.timescale, v284.epoch, v285);
    OUTLINED_FUNCTION_840(v35, v36, v37, v38, v39, v40, v41, v42, v187, v195, v203, v211, v219, v228, v236, v244, v252, v260, v268, v275, *(&v275 + 1), v276, v277.value, *&v277.timescale, v277.epoch, v278, v279, *(&v279 + 1), v280, v281, v282, v283, v284.value);
    OUTLINED_FUNCTION_28();
    if (!v16)
    {
      goto LABEL_42;
    }

    if (v3)
    {
      v43 = (CMBaseObjectGetDerivedStorage() + 888);
      if (v1)
      {
        goto LABEL_20;
      }
    }

    else
    {
      v43 = "";
      if (v1)
      {
        goto LABEL_20;
      }
    }

    v52 = "";
    goto LABEL_41;
  }

  OUTLINED_FUNCTION_42();
  FPSTimelineConverterL3TimeToL4();
  OUTLINED_FUNCTION_162();
  FPSTimelineConverterL3TimeToL4();
  OUTLINED_FUNCTION_93();
  FPSTimelineConverterL3TimeToL4();
  OUTLINED_FUNCTION_709(v53, v54, v55, v56, v57, v58, v59, v60, v218, v186, v194, v202, v4, v218.n128_i64[0], v218.n128_i64[1], v235, v243, v251, v259, v267, v275, *(&v275 + 1), v276, v277.value, *&v277.timescale, v277.epoch, v278, v218.n128_i64[0], v218.n128_i64[1], v5, v61, 0);
  v70 = OUTLINED_FUNCTION_578(v62, v63, v64, v65, v66, v67, v68, v69, v189, v197, v205, v213, v221, v230, v238, v246, v254, v262, v270, v275, *(&v275 + 1), v276, v277.value, *&v277.timescale, v277.epoch, v278, v279, *(&v279 + 1), v280, v281, 0, 0, 0, 0, 0, 0, 0, 0, v288.value, *&v288.timescale, v288.epoch, v289, v290.value, *&v290.timescale, v290.epoch, v291, 0, 0, 0, v295, v296, v297, *(&v297 + 1), v298, v299, v300[0], v300[1], v300[2], v300[3], v301, time.value);
  if (CMTimeCompare(v70, v71) < 0)
  {
    time = v284;
    OUTLINED_FUNCTION_789();
    v125 = OUTLINED_FUNCTION_578(v117, v118, v119, v120, v121, v122, v123, v124, v190, v198, v206, v214, v222, v231, v239, v247, v255, v263, v271, v275, *(&v275 + 1), v276, 0, 0, 0, v278, v279, *(&v279 + 1), v280, v281, v282, v283, v284.value, *&v284.timescale, v284.epoch, v285, v286, v287, v288.value, *&v288.timescale, v288.epoch, v289, v290.value, *&v290.timescale, v290.epoch, v291, v292, v293, v294, v295, v296, v297, *(&v297 + 1), v298, v299, v300[0], v300[1], v300[2], v300[3], v301, time.value);
    CMTimeSubtract(v127, v125, v126);
    if (dword_1EAF169F0)
    {
      LODWORD(v275) = 0;
      LOBYTE(v258) = 0;
      v134 = OUTLINED_FUNCTION_638(v16[317], v128, &v275, v129, v130, v131, v132, v133, v193, v201, v209);
      os_log_type_enabled(v134, OS_LOG_TYPE_DEFAULT);
      OUTLINED_FUNCTION_28();
      if (v16)
      {
        if (v3)
        {
          v135 = (CMBaseObjectGetDerivedStorage() + 888);
        }

        else
        {
          v135 = "";
        }

        v227 = v135;
        if (v1)
        {
          v161 = (CMBaseObjectGetDerivedStorage() + 3096);
        }

        else
        {
          v161 = "";
        }

        OUTLINED_FUNCTION_42();
        CMTimeGetSeconds(&time);
        OUTLINED_FUNCTION_93();
        Seconds = CMTimeGetSeconds(&time);
        OUTLINED_FUNCTION_162();
        v163 = CMTimeGetSeconds(&time);
        *&time.timescale = *&v277.timescale;
        OUTLINED_FUNCTION_451(v277.epoch, v193, v201, v209, v217, v227, v234, v242, v250, v258, v266, v274, v275, *(&v275 + 1), v276, v277.value, *&v277.timescale, v277.epoch, v278, v279, *(&v279 + 1), v280, v281, v282, v283, v284.value, *&v284.timescale, v284.epoch, v285, v286, v287, v288.value, *&v288.timescale, v288.epoch, v289, v290.value, *&v290.timescale, v290.epoch, v291, v292, v293, v294, v295, v296, v297, *(&v297 + 1), v298, v299, v300[0], v300[1], v300[2], v300[3], v301, v277.value);
        LODWORD(v292) = 136317442;
        OUTLINED_FUNCTION_76("fpfsi_DeferredHandleTimebaseEffectiveRateChanged");
        v295 = v225;
        OUTLINED_FUNCTION_357(v164);
        *(&v297 + 4) = v161;
        OUTLINED_FUNCTION_92(v165);
        *(v300 + 2) = Seconds;
        WORD1(v300[1]) = v166;
        *(&v300[1] + 4) = v163;
        WORD2(v300[2]) = v166;
        *(&v300[2] + 6) = v167;
        OUTLINED_FUNCTION_49();
        OUTLINED_FUNCTION_23();
        _os_log_send_and_compose_impl(v168, v169, v170, v171, v172, v173, 0, v174);
      }

      OUTLINED_FUNCTION_2();
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    v279 = *&v277.value;
    epoch = v277.epoch;
  }

  else
  {
    OUTLINED_FUNCTION_168(MEMORY[0x1E6960CC0]);
    v72 = *(v34 + 112);
    if (v72 && *(v72 + 32))
    {
      time.value = 0;
      FigGetAllocatorForMedia();
      OUTLINED_FUNCTION_267();
      FigRenderPipelineGetFigBaseObject();
      if (*(*(CMBaseObjectGetVTable() + 8) + 48))
      {
        v73 = OUTLINED_FUNCTION_148();
        v74(v73);
      }

      if (time.value)
      {
        CMTimeMakeFromDictionary(&v277, time.value);
        CFRelease(time.value);
      }
    }

    OUTLINED_FUNCTION_744();
    OUTLINED_FUNCTION_709(v75, v76, v77, v78, v79, v80, v81, v82, v83, v190, v198, v206, v214, v222, v231, v239, v247, v255, v263, v271, v275, *(&v275 + 1), v276, v277.value, *&v277.timescale, v277.epoch, v278, v279, *(&v279 + 1), v280, v84, v281);
    v93 = OUTLINED_FUNCTION_578(v85, v86, v87, v88, v89, v90, v91, v92, v191, v199, v207, v215, v223, v232, v240, v248, v256, v264, v272, v275, *(&v275 + 1), v276, v277.value, *&v277.timescale, v277.epoch, v278, v279, *(&v279 + 1), v280, v281, v282, v283, v284.value, *&v284.timescale, v284.epoch, v285, v286, v287, v288.value, *&v288.timescale, v288.epoch, v289, v290.value, *&v290.timescale, v290.epoch, v291, v277.value, *&v277.timescale, v277.epoch, v295, v296, v297, *(&v297 + 1), v298, v299, v300[0], v300[1], v300[2], v300[3], v301, time.value);
    CMTimeAdd(v95, v93, v94);
    OUTLINED_FUNCTION_789();
    *&time.timescale = v265;
    time.epoch = v273;
    v104 = OUTLINED_FUNCTION_578(v96, v97, v98, v99, v100, v101, v102, v103, v192, v200, v208, v216, v224, v233, v241, v249, v257, v265, v273, v275, *(&v275 + 1), v276, v277.value, *&v277.timescale, v277.epoch, v278, v279, *(&v279 + 1), v280, v281, v282, v283, v284.value, *&v284.timescale, v284.epoch, v285, v286, v287, v288.value, *&v288.timescale, v288.epoch, v289, v290.value, *&v290.timescale, v290.epoch, v291, v292, v293, v294, v295, v296, v297, *(&v297 + 1), v298, v299, v300[0], v300[1], v300[2], v300[3], v301, v257);
    CMTimeSubtract(v106, v104, v105);
    if (dword_1EAF169F0)
    {
      v114 = OUTLINED_FUNCTION_637(v16[317], v107, v108, v109, v110, v111, v112, v113, v193, v201, v209, v217, v225, v234, v242, v250, SWORD2(v250), SBYTE6(v250), 0, 0);
      v115 = HIBYTE(v250);
      os_log_type_enabled(v114, HIBYTE(v250));
      OUTLINED_FUNCTION_28();
      if (v16)
      {
        if (v3)
        {
          v116 = (CMBaseObjectGetDerivedStorage() + 888);
        }

        else
        {
          v116 = "";
        }

        v226 = v116;
        if (v1)
        {
          v146 = (CMBaseObjectGetDerivedStorage() + 3096);
        }

        else
        {
          v146 = "";
        }

        OUTLINED_FUNCTION_42();
        CMTimeGetSeconds(&time);
        OUTLINED_FUNCTION_93();
        v147 = CMTimeGetSeconds(&time);
        OUTLINED_FUNCTION_162();
        v148 = CMTimeGetSeconds(&time);
        *&time.timescale = *(&v275 + 1);
        OUTLINED_FUNCTION_451(v276, v193, v201, v209, v217, v226, v234, v242, v250, v258, v266, v274, v275, *(&v275 + 1), v276, v277.value, *&v277.timescale, v277.epoch, v278, v279, *(&v279 + 1), v280, v281, v282, v283, v284.value, *&v284.timescale, v284.epoch, v285, v286, v287, v288.value, *&v288.timescale, v288.epoch, v289, v290.value, *&v290.timescale, v290.epoch, v291, v292, v293, v294, v295, v296, v297, *(&v297 + 1), v298, v299, v300[0], v300[1], v300[2], v300[3], v301, v275);
        LODWORD(v292) = 136317442;
        OUTLINED_FUNCTION_76("fpfsi_DeferredHandleTimebaseEffectiveRateChanged");
        v295 = v225;
        OUTLINED_FUNCTION_357(v149);
        *(&v297 + 4) = v146;
        OUTLINED_FUNCTION_92(v150);
        *(v300 + 2) = v147;
        WORD1(v300[1]) = v151;
        *(&v300[1] + 4) = v148;
        WORD2(v300[2]) = v151;
        *(&v300[2] + 6) = v152;
        OUTLINED_FUNCTION_49();
        OUTLINED_FUNCTION_23();
        _os_log_send_and_compose_impl(v153, v154, v155, v156, v157, v158, v115, v159);
      }

      OUTLINED_FUNCTION_2();
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    v279 = v275;
    epoch = v276;
  }

  v280 = epoch;
  v4 = v217;
  if (!*(DerivedStorage + 2619))
  {
    *(DerivedStorage + 2619) = 1;
    v175 = *(DerivedStorage + 2568);
    *&time.timescale = *(&v279 + 1);
    OUTLINED_FUNCTION_451(v280, v193, v201, v209, v217, v225, v234, v242, v250, v258, v266, v274, v275, *(&v275 + 1), v276, v277.value, *&v277.timescale, v277.epoch, v278, v279, *(&v279 + 1), v280, v281, v282, v283, v284.value, *&v284.timescale, v284.epoch, v285, v286, v287, v288.value, *&v288.timescale, v288.epoch, v289, v290.value, *&v290.timescale, v290.epoch, v291, v292, v293, v294, v295, v296, v297, *(&v297 + 1), v298, v299, v300[0], v300[1], v300[2], v300[3], v301, v279);
    if (v175 && *(*(CMBaseObjectGetVTable() + 16) + 56))
    {
      v176 = OUTLINED_FUNCTION_489();
      v177(v176);
    }

    v178 = *(DerivedStorage + 2568);
    CFAbsoluteTimeGetCurrent();
    if (v178 && *(*(CMBaseObjectGetVTable() + 16) + 56))
    {
      v179 = OUTLINED_FUNCTION_489();
      v180(v179);
    }

    v181 = CMBaseObjectGetDerivedStorage();
    FigGetUpTimeNanoseconds();
    if (*(v181 + 2072))
    {
      v182 = *(v181 + 2568);
      if (v182)
      {
        if (*(*(CMBaseObjectGetVTable() + 16) + 56))
        {
          OUTLINED_FUNCTION_405();
          v185(v182, 0x1F0B64678, 0x1F0B676D8, v183 / v184, 1);
        }
      }
    }

    if (!*(v181 + 2621))
    {
      *(v181 + 2621) = 1;
      fpfsi_RTCReportingReportStartupPerformanceMetrics(v1);
    }
  }

  v17 = MEMORY[0x1E695FF58];
  if (*MEMORY[0x1E695FF58] == 1)
  {
    strncpy(&time, (DerivedStorage + 3096), 8uLL);
    OUTLINED_FUNCTION_42();
    CMTimeGetSeconds(&time);
    *&time.timescale = *(&v279 + 1);
    OUTLINED_FUNCTION_451(v280, v193, v201, v209, v217, v225, v234, v242, v250, v258, v266, v274, v275, *(&v275 + 1), v276, v277.value, *&v277.timescale, v277.epoch, v278, v279, *(&v279 + 1), v280, v281, v282, v283, v284.value, *&v284.timescale, v284.epoch, v285, v286, v287, v288.value, *&v288.timescale, v288.epoch, v289, v290.value, *&v290.timescale, v290.epoch, v291, v292, v293, v294, v295, v296, v297, *(&v297 + 1), v298, v299, v300[0], v300[1], v300[2], v300[3], v301, v279);
    kdebug_trace();
  }

  fpfsi_scheduleFVTTransitionsForItem(v1, 3, 0);
LABEL_75:
  if (*v17 == 1)
  {
    OUTLINED_FUNCTION_42();
    CMTimeGetSeconds(&time);
    kdebug_trace();
  }

  if (!*(v4 + 52) && !FigRetainProxyIsInvalidated() && fpfs_EnsureScanningBoundaryTimer(v1) == -12863)
  {
    fpfs_HandleScanningBoundaryTimerEnd(v1);
  }

  if (*v17 == 1)
  {
    OUTLINED_FUNCTION_42();
    CMTimeGetSeconds(&time);
    kdebug_trace();
  }

  fpfs_UnlockAndPostNotificationsWithCaller(v3);
  if (v1)
  {
    CFRelease(v1);
  }

  OUTLINED_FUNCTION_181();
}

uint64_t fpfsi_updateOutputsForAllAggregateVideoDestinations(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v2 = *(DerivedStorage + 1024);
  if (v2)
  {
    v3 = 0;
    do
    {
      if (*(v2 + 48) == 1986618469)
      {
        if (!*(v2 + 104))
        {
          break;
        }

        if (!*(*(CMBaseObjectGetVTable() + 16) + 8))
        {
          return 4294954514;
        }

        v4 = OUTLINED_FUNCTION_184();
        result = v5(v4);
        v3 = v2;
        if (result)
        {
          return result;
        }
      }

      v2 = *(v2 + 24);
    }

    while (v2);
    if (v3)
    {
      return 0;
    }
  }

  if (*(DerivedStorage + 752))
  {
    if (*(*(CMBaseObjectGetVTable() + 16) + 8))
    {
      v7 = OUTLINED_FUNCTION_265();
      v8(v7);
    }
  }

  return 0;
}

void fpfs_createDataChannelConfigurationAndSetIdentifiers()
{
  OUTLINED_FUNCTION_629();
  v28 = v1;
  v29 = v2;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  info = v11;
  v14 = v13;
  CMBaseObjectGetDerivedStorage();
  OUTLINED_FUNCTION_522();
  v15 = OUTLINED_FUNCTION_249();
  Mutable = CFDictionaryCreateMutable(v15, v16, v17, v18);
  v20 = CFStringCreateWithCString(v8, (v0 + 888), 0x600u);
  OUTLINED_FUNCTION_236();
  FigCFDictionarySetValue();
  if (!v14)
  {
    goto LABEL_16;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v14 = CFStringCreateWithCString(v8, (DerivedStorage + 3096), 0x600u);
  OUTLINED_FUNCTION_521();
  FigCFDictionarySetValue();
  FigCFDictionarySetValue();
  if (!info)
  {
    goto LABEL_17;
  }

  info = info[3].info;
  if (!info)
  {
    goto LABEL_17;
  }

  v22 = *(*(CMBaseObjectGetVTable() + 16) + 40);
  if (v22)
  {
    if (v22(info, &appendedString))
    {
      info = 0;
    }

    else
    {
      if (!appendedString)
      {
        goto LABEL_16;
      }

      v26 = 0;
      AllocatorForMedia = FigGetAllocatorForMedia();
      info = CFStringCreateMutable(AllocatorForMedia, 0);
      CFStringAppend(info, appendedString);
      if (!v10)
      {
LABEL_13:
        if (!info)
        {
          goto LABEL_17;
        }

        FigCFDictionarySetValue();
        if (!v4)
        {
          goto LABEL_17;
        }

        *v4 = info;
LABEL_16:
        info = 0;
LABEL_17:
        FigDataChannelConfigurationCreate(v8, Mutable, v6);
        goto LABEL_18;
      }

      v24 = *(v10 + 104);
      if (v24)
      {
        v25 = *(*(CMBaseObjectGetVTable() + 16) + 40);
        if (v25)
        {
          if (!v25(v24, &v26))
          {
            CFStringAppend(info, @"/");
            CFStringAppend(info, v26);
            if (v26)
            {
              CFRelease(v26);
            }

            goto LABEL_13;
          }
        }
      }
    }
  }

  else
  {
    info = 0;
  }

LABEL_18:
  if (Mutable)
  {
    CFRelease(Mutable);
  }

  if (v20)
  {
    CFRelease(v20);
  }

  if (v14)
  {
    CFRelease(v14);
  }

  if (info)
  {
    CFRelease(info);
  }

  if (appendedString)
  {
    CFRelease(appendedString);
  }

  OUTLINED_FUNCTION_320();
}

uint64_t fpfs_CreateAppliedMediaArray(uint64_t a1, CFTypeRef *a2)
{
  OUTLINED_FUNCTION_180(a1);
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  cf = 0;
  if (!a2)
  {
    return 0;
  }

  v5 = DerivedStorage;
  *a2 = 0;
  if (*(DerivedStorage + 761))
  {
    v6 = fpfs_CopyMediaSelectionArrayAndMarkOptionsAvailableOffline(v2);
    v7 = v6;
    v8 = *(v2 + 1808);
    if (!v8)
    {
      v8 = *(v5 + 768);
    }

    v9 = FigAutomaticMediaSelectionCreateSelectedMediaArrayForCriteriaWithLegibleFallbackCriteria(v6, *(v2 + 1760), *(v5 + 744), *(v2 + 1784), *(v2 + 1792), *(v5 + 752), v8, *(v5 + 760), *(v2 + 1844), &cf);
    if (v7)
    {
      CFRelease(v7);
    }

    v10 = cf;
    if (v9)
    {
      if (cf)
      {
        CFRelease(cf);
      }

      return v9;
    }
  }

  else
  {
    v10 = *(v2 + 1760);
    cf = v10;
    if (v10)
    {
      CFRetain(v10);
    }
  }

  v12 = OUTLINED_FUNCTION_563();
  if (fpfs_FindMediaTypeInMediaArray(v10, v12, 0))
  {
    fpfs_updateClosedCaptionsDisplay();
  }

  v9 = 0;
  *a2 = cf;
  return v9;
}

uint64_t fpfsi_UpdateEligibilityForEnhancedDialogue(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  OUTLINED_FUNCTION_172(DerivedStorage);
  CMBaseObjectGetDerivedStorage();
  OUTLINED_FUNCTION_199();
  OUTLINED_FUNCTION_194();
  fpfs_GetOptionsDictionaryForSelectedMediaType(v4, v5);
  result = FigCFDictionaryGetValue();
  *(v1 + 1776) = result != 0;
  v7 = *(v2 + 536);
  if (result)
  {
    v8 = MEMORY[0x1E695E4C0];
  }

  else
  {
    v8 = MEMORY[0x1E695E4D0];
  }

  if (v7)
  {
    VTable = CMBaseObjectGetVTable();
    v11 = *(VTable + 16);
    result = VTable + 16;
    v10 = v11;
    if (v11)
    {
      v12 = *(v10 + 56);
      if (v12)
      {
        v13 = *v8;

        return v12(v7, @"ContentIsEligibleForEnhancedDialogue", v13);
      }
    }
  }

  return result;
}

void fpfs_FindAndSetForcedSubtitle(uint64_t a1)
{
  v2 = *(a1 + 1800);
  if (v2)
  {
    CFRelease(v2);
    *(a1 + 1800) = 0;
  }

  OUTLINED_FUNCTION_312();
  if (fpfs_IsClosedCaptioningSelected())
  {
    v3 = fpfs_CopyMediaSelectionArrayAndMarkOptionsAvailableOffline(a1);
    OUTLINED_FUNCTION_563();
    v4 = OUTLINED_FUNCTION_399();
    MediaTypeInMediaArray = fpfs_FindMediaTypeInMediaArray(v4, v5, 0);
    FigGetCFStringForOSTypeValue();
    v7 = OUTLINED_FUNCTION_399();
    v9 = fpfs_FindMediaTypeInMediaArray(v7, v8, 0);
    *(a1 + 1800) = FigAutomaticMediaSelectionCreateSecondaryForcedSubtitlesSelectedMediaDictionary(*(a1 + 1768), MediaTypeInMediaArray, v9, *(a1 + 1844));
    if (v3)
    {

      CFRelease(v3);
    }
  }
}

void fpfs_CancelSeekIfNeeded()
{
  OUTLINED_FUNCTION_460();
  v68 = v3;
  v69 = v4;
  OUTLINED_FUNCTION_187();
  v67 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v6 = *(MEMORY[0x1E6960CA8] + 16);
  *&v51.start.value = *MEMORY[0x1E6960CA8];
  *&v51.start.epoch = v6;
  *&v51.duration.timescale = *(MEMORY[0x1E6960CA8] + 32);
  if (*(DerivedStorage + 332))
  {
    v7 = DerivedStorage;
    if (*(DerivedStorage + 912))
    {
      fpfsi_getSeekableTimeRange(&v51);
      *&time.start.value = *&v51.start.value;
      time.start.epoch = v51.start.epoch;
      Seconds = CMTimeGetSeconds(&time.start);
      time = v51;
      CMTimeRangeGetEnd(&v52, &time);
      v9 = CMTimeGetSeconds(&v52);
      if (*(v7 + 1484))
      {
        *&time.start.value = *(v7 + 1472);
        time.start.epoch = *(v7 + 1488);
        v10 = CMTimeGetSeconds(&time.start);
        *&time.start.value = *(v7 + 1472);
        v11 = *(v7 + 1488);
      }

      else
      {
        if (*(v7 + 356))
        {
          time.start.epoch = *(v7 + 360);
          *&time.start.value = *(v7 + 344);
        }

        else
        {
          *&time.start.value = *(v7 + 320);
          time.start.epoch = *(v7 + 336);
        }

        v10 = CMTimeGetSeconds(&time.start);
        if (*(v7 + 380))
        {
          *&time.start.value = *(v7 + 368);
          v11 = *(v7 + 384);
        }

        else
        {
          *&time.start.value = *(v7 + 320);
          v11 = *(v7 + 336);
        }
      }

      time.start.epoch = v11;
      v20 = CMTimeGetSeconds(&time.start);
      if (v20 >= Seconds && v10 <= v9)
      {
        *(v7 + 2216) = *(v7 + 2220);
      }

      else
      {
        if (dword_1EAF169F0)
        {
          v22 = OUTLINED_FUNCTION_48(v12, v13, v14, v15, v16, v17, v18, v19, v40, v42, v44, v46, SBYTE2(v46), SBYTE3(v46), SHIDWORD(v46));
          OUTLINED_FUNCTION_304(v22, v23, v24, v25, v26, v27, v28, v29, v41, v43, v45, v47, v48, v49, v50);
          OUTLINED_FUNCTION_46();
          if (v2)
          {
            if (v1)
            {
              v30 = (CMBaseObjectGetDerivedStorage() + 888);
            }

            else
            {
              v30 = "";
            }

            if (v0)
            {
              v31 = (CMBaseObjectGetDerivedStorage() + 3096);
            }

            else
            {
              v31 = "";
            }

            LODWORD(v52.value) = 136317186;
            *(&v52.value + 4) = "fpfs_CancelSeekIfNeeded";
            LOWORD(v52.flags) = 2048;
            *(&v52.flags + 2) = v1;
            HIWORD(v52.epoch) = 2082;
            v53 = v30;
            v54 = 2048;
            v55 = v0;
            v56 = 2082;
            v57 = v31;
            v58 = 2048;
            v59 = v10;
            v60 = 2048;
            v61 = v20;
            v62 = 2048;
            v63 = Seconds;
            v64 = 2048;
            v65 = v9;
            OUTLINED_FUNCTION_146();
            v32 = OUTLINED_FUNCTION_30();
            OUTLINED_FUNCTION_448(v32, v33, v34, v35, v36, v37, v38, v39);
            OUTLINED_FUNCTION_507();
          }

          OUTLINED_FUNCTION_4();
          fig_log_call_emit_and_clean_up_after_send_and_compose();
        }

        OUTLINED_FUNCTION_177();
        fpfs_SeekDidFail();
      }
    }
  }

  OUTLINED_FUNCTION_459();
}

void fpfsi_EnqueuePlayableRangeChangedNotification(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v3 = *DerivedStorage;
  OUTLINED_FUNCTION_601();
  NotificationPayloadForProperties = fpfs_CreateNotificationPayloadForProperties(v3, a1, v4, v5, v6, v7, v8, v9, v15, v16);
  OUTLINED_FUNCTION_403();
  fpfs_EnqueueNotification(v11, v12, v13, v14);
  DerivedStorage[296] = FigGetUpTimeNanoseconds();
  if (NotificationPayloadForProperties)
  {

    CFRelease(NotificationPayloadForProperties);
  }
}

void fpfsi_TrimCachedSamplesFromItem()
{
  OUTLINED_FUNCTION_182();
  v3 = v2;
  v222 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  OUTLINED_FUNCTION_172(DerivedStorage);
  v5 = CMBaseObjectGetDerivedStorage();
  v204 = 0uLL;
  v205 = 0;
  v6 = OUTLINED_FUNCTION_203();
  fpfs_GetNextTimeToPlay(v6, v7, v8);
  v9 = MEMORY[0x1E6960CC0];
  value = *MEMORY[0x1E6960CC0];
  timescale = *(MEMORY[0x1E6960CC0] + 8);
  v10 = *(MEMORY[0x1E6960CC0] + 16);
  v11 = MEMORY[0x1E6960C80];
  v218 = *MEMORY[0x1E6960C80];
  v219 = *(MEMORY[0x1E6960C80] + 8);
  v193 = *MEMORY[0x1E6960CC0];
  *&v203.value = *MEMORY[0x1E6960CC0];
  v203.epoch = v10;
  v12 = CMBaseObjectGetDerivedStorage();
  OUTLINED_FUNCTION_173(v12);
  CMBaseObjectGetDerivedStorage();
  memset(&time1, 0, sizeof(time1));
  fpfs_GetNextTimeToPlay(v1, 1, &time1);
  OUTLINED_FUNCTION_588();
  if (v16 ^ v17 | v15 && v14 >= 0.0 || *(v1 + 2992))
  {
    if (v13 < 1)
    {
      v18 = 50;
      v19 = 1000;
    }

    else
    {
      if (v14 < 0.0)
      {
        v13 = -v13;
      }

      v18 = v13;
      v19 = 1;
    }

    CMTimeMake(&rhs, v18, v19);
  }

  else
  {
    CMTimeMakeWithSeconds(&rhs, (v14 * 10.0), 1000);
  }

  lhs = time1;
  CMTimeSubtract(&v203, &lhs, &rhs);
  memset(&lhs, 0, sizeof(lhs));
  time1 = *(v0 + 166);
  rhs = *(v0 + 145);
  Ahead = CMTimeSubtract(&lhs, &time1, &rhs);
  v28 = *(v5 + 108);
  v29 = v28 < 0.0;
  v30 = (v28 > 2.0 || v28 < 0.0) && v0[374] == 0;
  if ((BYTE12(v204) & 0x1D) == 1)
  {
    LODWORD(v31) = *(v9 + 12);
    if ((lhs.flags & 0x1D) == 1)
    {
      *&time1.value = v193;
      time1.epoch = v10;
      rhs = lhs;
      Ahead = CMTimeCompare(&time1, &rhs);
      if ((Ahead & 0x80000000) != 0)
      {
        CMTimeMake(&time1, 50, 1000);
        *&v201[8] = v204;
        *&v201[24] = v205;
        CMTimeSubtract(&rhs, &v201[8], &time1);
        *&v201[8] = lhs;
        v32 = CMTimeMinimum(&time1, &v201[8], &rhs);
        LODWORD(v31) = time1.flags;
        timescale = time1.timescale;
        value = time1.value;
        Ahead = OUTLINED_FUNCTION_814(v32, v33, v34, v35, v36, v37, v38, v39, v149, v152, v155, v159, v162, v166, v169, v172, v176, v180, v184, v188, v193, *(&v193 + 1), v198, *v201, *&v201[8], *&v201[16], *&v201[24], v202, v203.value, *&v203.timescale, v203.epoch, v204, *(&v204 + 1), v205, lhs.value, *&lhs.timescale, lhs.epoch, v207, *type, v209, rhs.value, *&rhs.timescale, rhs.epoch, v211, v212[0], v212[1], v212[2], v213, v214, v215, v216, *(&v216 + 1));
        if (dword_1EAF169F0 >= 5)
        {
          v184 = __PAIR64__(v29, v30);
          *&v201[8] = 0;
          type[0] = OS_LOG_TYPE_DEFAULT;
          os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          v41 = *&v201[8];
          v42 = type[0];
          *&v193 = os_log_and_send_and_compose_flags_and_os_log_type;
          if (os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, type[0]))
          {
            v43 = v41;
          }

          else
          {
            v43 = v41 & 0xFFFFFFFE;
          }

          if (v43)
          {
            v44 = *v0;
            if (*v0)
            {
              v45 = (CMBaseObjectGetDerivedStorage() + 888);
            }

            else
            {
              v45 = "";
            }

            v189 = v45;
            if (v3)
            {
              v46 = (CMBaseObjectGetDerivedStorage() + 3096);
            }

            else
            {
              v46 = "";
            }

            v181 = v46;
            OUTLINED_FUNCTION_215();
            CMTimeGetSeconds(&time1);
            OUTLINED_FUNCTION_558(v47, v48, v49, v50, v51, v52, v53, v54, v149, v152, v155, v159, v162, v166, v169, v172, v176, v181, v184, v189, v193, v198, *v201, *&v201[8], *&v201[16], *&v201[24], v202, *&v203.value, v203.epoch, v204, *(&v204 + 1), v205, lhs.value, *&lhs.timescale, lhs.epoch, v207, *type, v209, rhs.value, *&rhs.timescale, rhs.epoch, v211, v212[0], v212[1], v212[2], v213, v214, v215, v216, *(&v216 + 1), time1.value);
            OUTLINED_FUNCTION_557(v55, v56, v57, v58, v59, v60, v61, v62, v150, v153, v156, v160, v163, v167, v170, v173, v177, v182, v185, v190, v194, v196, v199, *v201, *&v201[16], *&v201[24], v202, v203.value, *&v203.timescale, v203.epoch, v204, v205, lhs.value, *&lhs.timescale, lhs.epoch, v207, *type, v209, rhs.value, *&rhs.timescale, rhs.epoch, v211, v212[0], v212[1], v212[2], v213, v214, v215, v216, *(&v216 + 1), time1.value);
            LODWORD(rhs.value) = 136317186;
            *(&rhs.value + 4) = "fpfsi_TrimCachedSamplesFromItem";
            LOWORD(rhs.flags) = 2048;
            *(&rhs.flags + 2) = v44;
            HIWORD(rhs.epoch) = 2082;
            OUTLINED_FUNCTION_691(2048);
            OUTLINED_FUNCTION_395(v63, v64);
            *(&v216 + 4) = 0;
            OUTLINED_FUNCTION_51();
            OUTLINED_FUNCTION_108();
            _os_log_send_and_compose_impl(v65, v66, v67, v68, v69, v193, v42, v70);
          }

          OUTLINED_FUNCTION_7();
          OUTLINED_FUNCTION_449(v71, v72, v73, v74, v75);
          v30 = v184;
          v29 = HIDWORD(v184);
        }
      }
    }

    if (v28 < 0.0 || v30 || (Ahead = fpfs_GetAllowExtendedReadAhead(v5), !Ahead))
    {
      time1 = v203;
      OUTLINED_FUNCTION_814(Ahead, v21, v22, v23, v24, v25, v26, v27, v149, v152, v155, v159, v162, v166, v169, v172, v176, v180, v184, v188, v193, *(&v193 + 1), v198, *v201, *&v201[8], *&v201[16], *&v201[24], v202, v203.value, *&v203.timescale, v203.epoch, v204, *(&v204 + 1), v205, lhs.value, *&lhs.timescale, lhs.epoch, v207, *type, v209, rhs.value, *&rhs.timescale, rhs.epoch, v211, v212[0], v212[1], v212[2], v213, v214, v215, v216, *(&v216 + 1));
    }

    else
    {
      v186 = __PAIR64__(v29, v30);
      *&v193 = v0 + 130;
      v79 = fpfsi_TotalBytesInBuffer(v0 + 130);
      v191 = (v0 + 128);
      if (fpfsi_TotalBytesInBuffer(v0 + 128) + v79 > v0[67])
      {
        v80 = *(v11 + 12);
        v81 = *(v11 + 16);
        OUTLINED_FUNCTION_340();
        *&v82 = 136316162;
        v157 = v82;
        *&v82 = 136317186;
        v164 = v82;
        do
        {
          OUTLINED_FUNCTION_215();
          rhs = v203;
          if ((CMTimeCompare(&time1, &rhs) & 0x80000000) == 0)
          {
            break;
          }

          v83 = CMBaseObjectGetDerivedStorage();
          v84 = *(v83 + 1040);
          for (i = 1936684398; v84; v84 = *(v84 + 24))
          {
            if (*(v84 + 48) == v29)
            {
              fpfsi_SetNextVideoGOPRangeToTrimForTrack(v84);
            }
          }

          for (j = *(v83 + 1024); j; j = *(j + 24))
          {
            if (*(j + 48) == v29)
            {
              fpfsi_SetNextVideoGOPRangeToTrimForTrack(j);
            }
          }

          fpfsi_FindEarliestVideoGOPEndInTrackList(v193, &time1);
          OUTLINED_FUNCTION_711();
          if ((v95 & 1) == 0)
          {
            fpfsi_FindEarliestVideoGOPEndInTrackList(v191, &time1);
            OUTLINED_FUNCTION_711();
          }

          if (v95)
          {
            rhs.value = *type;
            rhs.timescale = v209;
            rhs.flags = v95;
            rhs.epoch = time1.epoch;
          }

          else
          {
            v96 = *v193;
            v31 = &unk_1EAF16000;
            if (*v193)
            {
              while (*(v96 + 48) != 1936684398 || !*(v96 + 112))
              {
                v96 = *(v96 + 24);
                if (!v96)
                {
                  goto LABEL_59;
                }
              }
            }

            else
            {
LABEL_59:
              v96 = v191->value;
              if (!v191->value)
              {
                goto LABEL_73;
              }

              while (*(v96 + 48) != 1936684398 || !*(v96 + 112))
              {
                v96 = *(v96 + 24);
                if (!v96)
                {
                  goto LABEL_73;
                }
              }
            }

            v97 = *(v96 + 96);
            if (v97)
            {
              CMBufferQueueGetMinPresentationTimeStamp(&time1, v97);
            }

            else
            {
              time1 = **&MEMORY[0x1E6960C70];
            }

            value = time1.value;
            timescale = time1.timescale;
            OUTLINED_FUNCTION_350();
            if (!v15)
            {
LABEL_73:
              if (dword_1EAF169F0)
              {
                *&v201[8] = 0;
                v201[7] = 0;
                v99 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
                v100 = *&v201[8];
                os_log_type_enabled(v99, OS_LOG_TYPE_DEFAULT);
                OUTLINED_FUNCTION_202();
                if (v15)
                {
                  v102 = v101;
                }

                else
                {
                  v102 = v100;
                }

                if (v102)
                {
                  v103 = *v0;
                  if (*v0)
                  {
                    v104 = (CMBaseObjectGetDerivedStorage() + 888);
                    if (v3)
                    {
                      goto LABEL_80;
                    }

LABEL_83:
                    v105 = "";
                  }

                  else
                  {
                    v104 = "";
                    if (!v3)
                    {
                      goto LABEL_83;
                    }

LABEL_80:
                    v105 = (CMBaseObjectGetDerivedStorage() + 3096);
                  }

                  LODWORD(rhs.value) = v157;
                  *(&rhs.value + 4) = "fpfsi_TrimCachedSamplesFromItem";
                  LOWORD(rhs.flags) = 2048;
                  *(&rhs.flags + 2) = v103;
                  HIWORD(rhs.epoch) = 2082;
                  v211 = v104;
                  LOWORD(v212[0]) = 2048;
                  *(v212 + 2) = v3;
                  WORD1(v212[1]) = 2082;
                  *(&v212[1] + 4) = v105;
                  OUTLINED_FUNCTION_51();
                  OUTLINED_FUNCTION_25();
                  OUTLINED_FUNCTION_282();
                  _os_log_send_and_compose_impl(v106, v107, v108, v109, v110, v111, v112, "<<<< FigStreamPlayer >>>> %s: [%p|%{public}s] <%p|%{public}s>: No audio data, or video gop range found before maxLimit and over-size. Trim to maxLimit");
                }

                OUTLINED_FUNCTION_7();
                OUTLINED_FUNCTION_454(v113, v114, v115, v116, v117);
              }

              value = v203.value;
              LODWORD(v31) = v203.flags;
              timescale = v203.timescale;
              i = v203.epoch;
              goto LABEL_87;
            }

            rhs.value = value;
            rhs.timescale = timescale;
            rhs.flags = v98;
            rhs.epoch = time1.epoch;
            *&v201[8] = v218;
            *&v201[16] = v219;
            *&v201[20] = v80;
            *&v201[24] = v81;
            CMTimeMaximum(&time1, &rhs, &v201[8]);
            OUTLINED_FUNCTION_580();
            OUTLINED_FUNCTION_541();
            if (!v15)
            {
              goto LABEL_87;
            }

            CMTimeMake(&rhs, 10, 1);
            *&v201[8] = value;
            *&v201[16] = timescale;
            *&v201[20] = &unk_1EAF16000;
            *&v201[24] = 1936684398;
            v87 = CMTimeAdd(&time1, &v201[8], &rhs);
            timescale = time1.timescale;
            value = time1.value;
            rhs = time1;
          }

          OUTLINED_FUNCTION_693(v87, v88, v89, v90, v91, v92, v93, v94, v149, v152, v157, *(&v157 + 1), v164, *(&v164 + 1), v169, v172, v176, v180, v186, v191, v193, *(&v193 + 1), v198, *v201, *&v201[8], *&v201[16], *&v201[24], v202, *&v203.value);
          CMTimeMinimum(&time1, &rhs, &v201[8]);
          OUTLINED_FUNCTION_580();
LABEL_87:
          v218 = value;
          v219 = timescale;
          time1.value = value;
          time1.timescale = timescale;
          time1.flags = v31;
          time1.epoch = i;
          fpfsi_TrimFromAllTracks(v0, &time1, HIDWORD(v186), v186);
          v118 = fpfsi_TotalBytesInBuffer(v193);
          v119 = fpfsi_TotalBytesInBuffer(&v191->value) + v118;
          if (dword_1EAF169F0 >= 5)
          {
            *&v201[8] = 0;
            v201[7] = 0;
            v120 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            v121 = *&v201[8];
            v180 = v120;
            os_log_type_enabled(v120, OS_LOG_TYPE_DEFAULT);
            OUTLINED_FUNCTION_134();
            if (v15)
            {
              v123 = v122;
            }

            else
            {
              v123 = v121;
            }

            if (v123)
            {
              v124 = *v0;
              if (*v0)
              {
                v125 = (CMBaseObjectGetDerivedStorage() + 888);
              }

              else
              {
                v125 = "";
              }

              v178 = v125;
              if (v3)
              {
                v126 = (CMBaseObjectGetDerivedStorage() + 3096);
              }

              else
              {
                v126 = "";
              }

              v174 = v126;
              OUTLINED_FUNCTION_215();
              CMTimeGetSeconds(&time1);
              OUTLINED_FUNCTION_558(v127, v128, v129, v130, v131, v132, v133, v134, v149, v152, v157, *(&v157 + 1), v164, *(&v164 + 1), v169, v174, v178, v180, v186, v191, v193, v198, *v201, *&v201[8], *&v201[16], *&v201[24], v202, *&v203.value, v203.epoch, v204, *(&v204 + 1), v205, lhs.value, *&lhs.timescale, lhs.epoch, v207, *type, v209, rhs.value, *&rhs.timescale, rhs.epoch, v211, v212[0], v212[1], v212[2], v213, v214, v215, v216, *(&v216 + 1), time1.value);
              OUTLINED_FUNCTION_557(v135, v136, v137, v138, v139, v140, v141, v142, v151, v154, v158, v161, v165, v168, v171, v175, v179, v183, v187, v192, v195, v197, v200, *v201, *&v201[16], *&v201[24], v202, v203.value, *&v203.timescale, v203.epoch, v204, v205, lhs.value, *&lhs.timescale, lhs.epoch, v207, *type, v209, rhs.value, *&rhs.timescale, rhs.epoch, v211, v212[0], v212[1], v212[2], v213, v214, v215, v216, *(&v216 + 1), time1.value);
              LODWORD(rhs.value) = v164;
              *(&rhs.value + 4) = "fpfsi_TrimCachedSamplesFromItem";
              LOWORD(rhs.flags) = 2048;
              *(&rhs.flags + 2) = v124;
              HIWORD(rhs.epoch) = 2082;
              OUTLINED_FUNCTION_691(2048);
              OUTLINED_FUNCTION_395(v143, v144);
              *(&v216 + 4) = v119;
              OUTLINED_FUNCTION_51();
              v145 = OUTLINED_FUNCTION_35();
              _os_log_send_and_compose_impl(v145, v146, v147, v148, &dword_1962D5000, v180, 0, "<<<< FigStreamPlayer >>>> %s: [%p|%{public}s] <%p|%{public}s>: Trim point : %f, maxLimit = %f, now = %f, totalBytes=%ld");
            }

            OUTLINED_FUNCTION_4();
            fig_log_call_emit_and_clean_up_after_send_and_compose();
          }

          v80 = v31;
          v81 = i;
        }

        while (v119 > v0[67]);
      }
    }

    v76 = fpfsi_TotalBytesInBuffer(v0 + 130);
    fpfsi_TotalBytesInBuffer(v0 + 128);
    v77 = v0[321];
    if (v77)
    {
      OUTLINED_FUNCTION_297();
      v78 = *(*(CMBaseObjectGetVTable() + 16) + 40);
      if (v78)
      {
        v78(v77, @"playerStats", 0x1F0B65698, (v29 + v76) >> 10);
      }
    }
  }

  OUTLINED_FUNCTION_181();
}

uint64_t fpfs_AddGAPTrackForExtendedForwardPlaybackEnd(uint64_t a1, uint64_t a2)
{
  v32 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v29 = 0;
  v27 = *MEMORY[0x1E6960C70];
  v28 = *(MEMORY[0x1E6960C70] + 16);
  FigGetAllocatorForMedia();
  OUTLINED_FUNCTION_296();
  Empty = CMBlockBufferCreateEmpty(v4, v5, v6, v7);
  if (!Empty)
  {
    time1 = *(DerivedStorage + 1352);
    FPSTimelineConverterL3TimeToL2(&time1, &v27);
    *&time2.value = v27;
    time2.epoch = v28;
    OUTLINED_FUNCTION_153();
    CMTimeSubtract(v11, v9, v10);
    value = time1.value;
    timescale = time1.timescale;
    OUTLINED_FUNCTION_541();
    if (v12)
    {
      OUTLINED_FUNCTION_568();
      OUTLINED_FUNCTION_104(MEMORY[0x1E6960CC0]);
      if (CMTimeCompare(&time1, &time2) >= 1)
      {
        OUTLINED_FUNCTION_568();
        CMTimeGetSeconds(&time1);
        Float64 = FigCFNumberCreateFloat64();
        CMSetAttachment(v29, @"FBPAKey_ApproximateDuration", Float64, 1u);
        if (Float64)
        {
          CFRelease(Float64);
        }

        CMSetAttachment(v29, @"FBPAKey_FakeFormatDescription", *(a2 + 56), 1u);
        v14 = *(a2 + 196);
        v15 = *(DerivedStorage + 4 * v14 + 928);
        time2 = *(a2 + 232);
        OUTLINED_FUNCTION_153();
        CMTimeAdd(v18, v16, v17);
        v24 = *(a2 + 80);
        OUTLINED_FUNCTION_766();
        fpfs_BytePumpFn(v19, v20, v21, 133570, v14, v15, 0, v22, 0, 0, v24, 0, 0, 0);
        if (v29)
        {
          CFRelease(v29);
        }
      }
    }
  }

  return Empty;
}

BOOL fpfs_GetAllowExtendedReadAhead(uint64_t a1)
{
  OUTLINED_FUNCTION_572();
  v4 = *(v2 + 816);
  v5 = *(v3 + 2260);
  if (v4 >= v5)
  {
    v6 = *(v3 + 2260);
  }

  else
  {
    v6 = *(v2 + 816);
  }

  if (v5)
  {
    v7 = *(v3 + 2260);
  }

  else
  {
    v7 = 50;
  }

  if (!v5)
  {
    v6 = *(v2 + 816);
  }

  if (!v4)
  {
    v6 = v7;
  }

  if (!(v5 | v4) || (result = 0, v6 >= 51))
  {
    if (FigPlayerResourceArbiterGetGlobalSingleton(&v10))
    {
      return 1;
    }

    else
    {
      FigPlayerResourceArbiterGetExtendedBufferingPolicyForConsumer(v10, *(a1 + 928), &v9);
      return v9 != 2;
    }
  }

  return result;
}

double fpfsi_SetNextVideoGOPRangeToTrimForTrack(uint64_t a1)
{
  v39 = *(MEMORY[0x1E6960C98] + 16);
  v40 = *MEMORY[0x1E6960C98];
  refcon = *MEMORY[0x1E6960C98];
  *v47 = v39;
  v38 = *(MEMORY[0x1E6960C98] + 32);
  *&v47[16] = v38;
  CMBaseObjectGetDerivedStorage();
  OUTLINED_FUNCTION_33();
  if (v3 && !*(a1 + 200) && ((*(a1 + 524) & 1) == 0 || (*(a1 + 548) & 1) == 0 || *(a1 + 552) || (*(a1 + 536) & 0x8000000000000000) != 0))
  {
    CMBufferQueueCallForEachBuffer(*(a1 + 96), fpfs_FindVideoGOPRangeInBufferQueue, &refcon);
    if ((BYTE12(refcon) & 1) == 0 || (v47[20] & 1) == 0 || *&v47[24] || (*&v47[8] & 0x8000000000000000) != 0)
    {
LABEL_9:
      v4 = *v47;
      *(a1 + 512) = refcon;
      *(a1 + 528) = v4;
      result = *&v47[16];
      *(a1 + 544) = *&v47[16];
      return result;
    }

    if ((~HIDWORD(refcon) & 0x11) != 0 && (v47[20] & 0x11) != 0x11)
    {
LABEL_22:
      if ((BYTE12(refcon) & 1) != 0 && (v47[20] & 1) != 0 && !*&v47[24] && (*&v47[8] & 0x8000000000000000) == 0)
      {
        CMTimeMakeWithSeconds(time1, 30.0, 1);
        time2 = *&v47[8];
        v29 = CMTimeCompare(&time2, time1);
        if (v29 >= 1)
        {
          OUTLINED_FUNCTION_641(v29, v30, v31, v32, v33, v34, v35, v36, v38, *(&v38 + 1), v39, *(&v39 + 1), v40, *(&v40 + 1), start.value, *&start.timescale, start.epoch, v42, time2.value);
          OUTLINED_FUNCTION_214();
          CMTimeRangeMake(v37, &start, &time2);
          refcon = *time1;
          *v47 = *&time1[16];
          *&v47[16] = v45;
        }
      }

      goto LABEL_9;
    }

    if (*(a1 + 198))
    {
      *&time2.value = refcon;
      time2.epoch = *v47;
      *&start.value = *(a1 + 232);
      OUTLINED_FUNCTION_153();
      CMTimeRangeFromTimeToTime(v7, v5, v6);
    }

    else
    {
      time2 = *(a1 + 232);
      *&start.value = refcon;
      OUTLINED_FUNCTION_153();
      v11 = CMTimeSubtract(v10, v8, v9);
      OUTLINED_FUNCTION_641(v11, v12, v13, v14, v15, v16, v17, v18, v38, *(&v38 + 1), v39, *(&v39 + 1), v40, *(&v40 + 1), start.value, *&start.timescale, start.epoch, v42, time2.value);
      v19 = CMTimeCompare(time1, &time2);
      if (v19 < 1)
      {
        refcon = v40;
        *v47 = v39;
        v28 = v38;
        goto LABEL_21;
      }

      OUTLINED_FUNCTION_641(v19, v20, v21, v22, v23, v24, v25, v26, v38, *(&v38 + 1), v39, *(&v39 + 1), v40, *(&v40 + 1), start.value, *&start.timescale, start.epoch, v42, time2.value);
      OUTLINED_FUNCTION_214();
      CMTimeRangeMake(v27, &start, &time2);
    }

    refcon = *time1;
    *v47 = *&time1[16];
    v28 = v45;
LABEL_21:
    *&v47[16] = v28;
    goto LABEL_22;
  }

  return result;
}

void fpfsi_postSelectedMediaOptionsDidChangeNotification(uint64_t a1, int a2)
{
  CMBaseObjectGetDerivedStorage();
  OUTLINED_FUNCTION_601();
  v2 = OUTLINED_FUNCTION_184();
  NotificationPayloadForProperties = fpfs_CreateNotificationPayloadForProperties(v2, v3, v4, v5, v6, v7, v8, v9, v14, v15);
  FigCFDictionarySetValue();
  v11 = OUTLINED_FUNCTION_188();
  fpfs_EnqueueNotification(v11, v12, v13, NotificationPayloadForProperties);
  if (NotificationPayloadForProperties)
  {

    CFRelease(NotificationPayloadForProperties);
  }
}

uint64_t fpfsi_SetPumpRate(uint64_t result, float a2)
{
  if (result)
  {
    v2 = *(result + 912);
    if (v2)
    {
      v4 = *(*(CMBaseObjectGetVTable() + 16) + 96);
      if (v4)
      {
        v5.n128_f32[0] = a2;

        return v4(v2, v5);
      }

      else
      {
        return 4294954514;
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void fpfsi_EnsureVenueDescriptionMetadataSupplierIfNecessary(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, int a10, __int16 a11, char a12, os_log_type_t type, int a14, int valuePtr, const __CFNumber *cf, int a17, int a18, __int128 a19, const char *a20, __int128 a21, __int128 a22, int a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54)
{
  OUTLINED_FUNCTION_253();
  a53 = v56;
  a54 = v57;
  v59 = v58;
  a41 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  OUTLINED_FUNCTION_180(DerivedStorage);
  v61 = CMBaseObjectGetDerivedStorage();
  cf = 0;
  valuePtr = 0;
  if (v54[95] || (v62 = v61, FigStreamingPlayerCombinedVideoDestinationGetFVTCount(*(v61 + 376)) < 1) || !FigStreamingPlayerCombinedVideoDestinationContainsBufferDeliveryFVR(*(v62 + 376)) || !v54[114] || !*(v54 + 462))
  {
    v65 = 0;
    goto LABEL_34;
  }

  AllocatorForMedia = FigGetAllocatorForMedia();
  if (v59)
  {
    v64 = (CMBaseObjectGetDerivedStorage() + 3096);
  }

  else
  {
    v64 = "";
  }

  v65 = CFStringCreateWithCString(AllocatorForMedia, v64, 0x600u);
  v66 = FigGetAllocatorForMedia();
  v67 = FigVenueDescriptionMetadataSupplierCreate(v66, v54[4], v65, v54 + 95);
  if (v67)
  {
    goto LABEL_40;
  }

  if (!v54[95])
  {
    goto LABEL_34;
  }

  if (!dword_1EAF169F0)
  {
    goto LABEL_20;
  }

  OUTLINED_FUNCTION_432();
  os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
  os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
  OUTLINED_FUNCTION_37();
  if (v55)
  {
    v69 = *v54;
    if (*v54)
    {
      v70 = (CMBaseObjectGetDerivedStorage() + 888);
      if (!v59)
      {
LABEL_18:
        a17 = 136316674;
        OUTLINED_FUNCTION_114();
        *(&a19 + 6) = v69;
        OUTLINED_FUNCTION_407();
        a20 = v70;
        LOWORD(a21) = v71;
        *(&a21 + 2) = v59;
        WORD5(a21) = v72;
        *(&a21 + 12) = v73;
        WORD2(a22) = v71;
        *(&a22 + 6) = v74;
        HIWORD(a22) = 1024;
        a23 = 0;
        OUTLINED_FUNCTION_39();
        OUTLINED_FUNCTION_27();
        OUTLINED_FUNCTION_200();
        _os_log_send_and_compose_impl(v75, v76, v77, v78, v79, v80, v81, v82);
        goto LABEL_19;
      }
    }

    else
    {
      v70 = "";
      if (!v59)
      {
        goto LABEL_18;
      }
    }

    CMBaseObjectGetDerivedStorage();
    goto LABEL_18;
  }

LABEL_19:
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_449(v83, v84, v85, v86, v87);
LABEL_20:
  CMNotificationCenterGetDefaultLocalCenter();
  OUTLINED_FUNCTION_274();
  v67 = FigNotificationCenterAddWeakListener();
  if (v67)
  {
    goto LABEL_40;
  }

  if (*(*(CMBaseObjectGetVTable() + 8) + 48))
  {
    v88 = OUTLINED_FUNCTION_731();
    v89(v88);
    v90 = cf;
  }

  else
  {
    v90 = 0;
  }

  CFNumberGetValue(v90, kCFNumberSInt32Type, &valuePtr);
  if (valuePtr == 2)
  {
    v96 = 4294950069;
    goto LABEL_42;
  }

  CMNotificationCenterGetDefaultLocalCenter();
  OUTLINED_FUNCTION_273();
  v67 = FigNotificationCenterAddWeakListener();
  if (v67)
  {
LABEL_40:
    v96 = v67;
LABEL_42:
    v97 = OUTLINED_FUNCTION_373();
    fpfs_StopPlayingItemWithOSStatus(v97, v98, v96);
    goto LABEL_34;
  }

  if (FigStreamingPlayerCombinedVideoDestinationGetFVTCount(*(v62 + 376)))
  {
    v91 = FigStreamingPlayerCombinedVideoDestinationCopyFVTs(*(v62 + 376));
    if (*(*(CMBaseObjectGetVTable() + 8) + 56))
    {
      v92 = OUTLINED_FUNCTION_608();
      v93(v92);
    }

    if (v91)
    {
      CFRelease(v91);
    }
  }

  if (v54[321] && *(*(CMBaseObjectGetVTable() + 8) + 56))
  {
    v94 = OUTLINED_FUNCTION_308();
    v95(v94);
  }

LABEL_34:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v65)
  {
    CFRelease(v65);
  }

  OUTLINED_FUNCTION_252();
}

uint64_t fpfs_CreateCurrentItemDidChangeNotificationPayloadWithProperties(uint64_t a1, uint64_t a2, uint64_t a3, int a4, int a5, int a6, int a7, int a8)
{
  NotificationPayloadForProperties = fpfs_CreateNotificationPayloadForProperties(a1, a2, a3, a4, a5, a6, a7, a8, @"CurrentDuration", @"VideoSlotArray");
  v10 = NotificationPayloadForProperties;
  if (a3 && NotificationPayloadForProperties)
  {
    v11 = OUTLINED_FUNCTION_228();
    CFDictionarySetValue(v11, v12, v13);
  }

  return v10;
}

void fpfs_SetRateWithOptionsAndAnchorTime()
{
  OUTLINED_FUNCTION_831();
  v340 = v0;
  v341 = v1;
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v310 = v7;
  v305 = v8;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v339 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v303 = *MEMORY[0x1E6960C70];
  *v322 = *MEMORY[0x1E6960C70];
  v302 = *(MEMORY[0x1E6960C70] + 16);
  *&v322[16] = v302;
  HIWORD(v321) = 0;
  BYTE5(v321) = 0;
  HIDWORD(v320) = 0;
  LODWORD(v321) = 0;
  FigCFDictionaryGetCMTimeIfPresent();
  FigCFDictionaryGetBooleanIfPresent();
  FigCFDictionaryGetInt32IfPresent();
  FigCFDictionaryGetBooleanIfPresent();
  v291 = @"RateChangeIdentifier";
  FigCFDictionaryGetInt32IfPresent();
  v292 = v10;
  FigCFDictionaryGetBooleanIfPresent();
  v16 = CMBaseObjectGetDerivedStorage();
  OUTLINED_FUNCTION_172(v16);
  FigSimpleMutexLock();
  ++*(v10 + 8);
  if (*(DerivedStorage + 52))
  {
    OUTLINED_FUNCTION_374();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", value, v288, v289);
    v31 = 0;
    Mutable = 0;
    v18 = 0.0;
    goto LABEL_261;
  }

  LODWORD(cf) = v6;
  v17 = v6;
  v18 = *(DerivedStorage + 108);
  v306 = DerivedStorage;
  valuePtr = (DerivedStorage + 108);
  v19 = OUTLINED_FUNCTION_383();
  Next = fpfs_getNext(v19, v20);
  v31 = Next;
  v309 = v14;
  v293 = v2;
  if (Next)
  {
    v32 = CMBaseObjectGetDerivedStorage();
    v29.n128_f64[0] = fpfs_enqueuePrerollWasCancelledNotificationIfNeeded(v31);
    if ((v6 & 2) != 0)
    {
      *&time.value = v303;
      time.epoch = v302;
      OUTLINED_FUNCTION_439();
      fpfsi_applyTimeToPausePlayback(v33, v34, v35, v36, 0);
    }

    if (*(v310 + 12) & 1) != 0 && (*(DerivedStorage + 148))
    {
      time = *(DerivedStorage + 136);
      OUTLINED_FUNCTION_105(v310);
      v45 = OUTLINED_FUNCTION_578(v37, v38, v39, v40, v41, v42, v43, v44, value, v288, v289, v290, @"RateChangeIdentifier", v10, v2, allocator, v297, v298, cf, v302, v303, *(&v303 + 1), v304, v305, DerivedStorage, valuePtr, v14, v310, v311, v312, v313, v314, type, v317, v318, v319, v320, v321, *v322, *&v322[8], v302, v323, theArray.value, *&theArray.timescale, theArray.epoch, v325, time1.value, *&time1.timescale, time1.epoch, v327, v328, v329, v330, v331, v332, v333, v334, v335, v336, v337, time.value);
      Next = CMTimeCompare(v45, v46);
      if (Next)
      {
        OUTLINED_FUNCTION_194();
        Next = fpfs_FirstTrackWithFormatDescriptionOfType(v47, v48);
        if (Next)
        {
          *valuePtr = 0.0;
          Next = fpfsi_SeekToCurrentTime(v31);
        }
      }
    }
  }

  else
  {
    v32 = 0;
    *valuePtr = v12;
  }

  HIDWORD(v304) = v6;
  if (dword_1EAF169F0)
  {
    v49 = v4;
    OUTLINED_FUNCTION_679();
    v57 = OUTLINED_FUNCTION_470(qword_1EAF169E8, v50, v51, v52, v53, v54, v55, v56, value, v288, v289, v290, v291, v292, v293, allocator, v297, v298, cf, v302, v303, *(&v303 + 1), v304, v305, v306, valuePtr, v309, v310, v311, v312, v313, v314, type, v317, v318, v319, v320, v321, *v322, *&v322[8], *&v322[16], v323, theArray.value);
    os_log_type_enabled(v57, type);
    OUTLINED_FUNCTION_233();
    if (v232)
    {
      v59 = v58;
    }

    else
    {
      v59 = theArray.value;
    }

    if (!v59)
    {
      goto LABEL_27;
    }

    if (v309)
    {
      CMBaseObjectGetDerivedStorage();
      if (v31)
      {
        goto LABEL_18;
      }
    }

    else if (v31)
    {
LABEL_18:
      CMBaseObjectGetDerivedStorage();
      if (!v32)
      {
LABEL_23:
        time = *v322;
        Seconds = CMTimeGetSeconds(&time);
        if (HIBYTE(v321))
        {
          v61 = "yes";
        }

        else
        {
          v61 = "no";
        }

        FigPlaybackRateChangeReasonGetDescription(v321);
        LODWORD(time1.value) = 136317442;
        OUTLINED_FUNCTION_319("fpfs_SetRateWithOptionsAndAnchorTime");
        *(v62 + 14) = v309;
        OUTLINED_FUNCTION_143();
        OUTLINED_FUNCTION_676();
        *&v332 = v12;
        LOWORD(v333) = v63;
        *(v64 + 74) = Seconds;
        WORD1(v334) = v65;
        *(v64 + 84) = v61;
        WORD2(v335) = v65;
        *(v64 + 94) = v66;
        OUTLINED_FUNCTION_49();
        OUTLINED_FUNCTION_23();
        _os_log_send_and_compose_impl(v67, v68, v69, v70, v71, v72, type, v73);
LABEL_27:
        OUTLINED_FUNCTION_7();
        v29.n128_f64[0] = OUTLINED_FUNCTION_467(v74, v75, v76, v77, v78);
        v14 = v309;
        v17 = BYTE4(v304);
        v4 = v49;
        goto LABEL_28;
      }

LABEL_19:
      fpfs_GetTime(v32, &time);
      CMTimeGetSeconds(&time);
      goto LABEL_23;
    }

    if (!v32)
    {
      goto LABEL_23;
    }

    goto LABEL_19;
  }

LABEL_28:
  if (*MEMORY[0x1E695FF58] == 1)
  {
    if (v31)
    {
      v79 = (CMBaseObjectGetDerivedStorage() + 3096);
    }

    else
    {
      v79 = "";
    }

    strncpy(&time, v79, 8uLL);
    if (v14)
    {
      v80 = (CMBaseObjectGetDerivedStorage() + 888);
    }

    else
    {
      v80 = "";
    }

    strncpy(&time, v80, 8uLL);
    Next = kdebug_trace();
  }

  if (!v31 && BYTE5(v321))
  {
    goto LABEL_304;
  }

  if (!v31)
  {
LABEL_307:
    Mutable = 0;
    goto LABEL_308;
  }

  v81 = v18 == 0.0 && v12 != 0.0;
  if (v81 || HIBYTE(v321) && *(v306 + 164) != 4)
  {
    BYTE6(v321) = 1;
  }

  if (v18 != v12)
  {
    fpfsi_RTCReportingReportDesiredRateChange(v31, *valuePtr);
  }

  if (v12 != 0.0 && BYTE6(v321))
  {
    fpfs_notifyExternalStartupTasksOfEvents();
    Next = fpfs_areAllExternalStartupTasksCompleted(v14);
    if (!Next)
    {
      OUTLINED_FUNCTION_675();
      if (!v232)
      {
        Next = OUTLINED_FUNCTION_852(v14, MEMORY[0x1E6960C70], 0.0);
      }
    }
  }

  else
  {
    BYTE6(v321) = 0;
  }

  if (v12 > 0.0)
  {
    Next = CMBaseObjectGetDerivedStorage();
    v82 = *(Next + 1024);
    if (v82)
    {
      while (*(v82 + 48) != 1936684398 || !*(v82 + 112))
      {
        v82 = *(v82 + 24);
        if (!v82)
        {
          goto LABEL_61;
        }
      }

      Next = fpfs_WantMATAtmosForTrack(v82);
      if (Next)
      {
        if (cf & 4) != 0 && (*(v310 + 12))
        {
          *(v82 + 206) = 1;
          OUTLINED_FUNCTION_409();
          Next = fpfs_applySoftwareVolumeToTrack();
        }

        else
        {
          v83 = OUTLINED_FUNCTION_292();
          Next = fpfs_UnmuteAtmosAudioTrack(v83, v84, v82);
        }
      }
    }
  }

LABEL_61:
  v85 = valuePtr;
  v29.n128_f32[0] = *valuePtr;
  v86 = *valuePtr != v12;
  if (BYTE6(v321))
  {
    v86 = 1;
  }

  if ((v17 & 2) == 0 && !v86 && v321 != 7)
  {
    v31 = 0;
    goto LABEL_307;
  }

  flags = v305->flags;
  if (flags)
  {
    v30.n128_u32[0] = 2.0;
    if (v12 > 2.0 || v12 < 0.0)
    {
LABEL_304:
      OUTLINED_FUNCTION_120();
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
      v31 = 0;
      Mutable = 0;
LABEL_308:
      DerivedStorage = v306;
      goto LABEL_261;
    }
  }

  if (v29.n128_f32[0] != v12 || ((flags | *(v310 + 12)) & 1) != 0)
  {
    time.value = 0;
    *&time.timescale = 0;
    OUTLINED_FUNCTION_290();
    Next = fpfs_PlayQueueCallForEachItem(v14, v88, &time);
  }

  *(v32 + 520) = 0;
  *(v32 + 518) = 0;
  if (*(v32 + 2568))
  {
    VTable = CMBaseObjectGetVTable();
    v90 = *(VTable + 16);
    Next = VTable + 16;
    if (*(v90 + 56))
    {
      OUTLINED_FUNCTION_426();
      Next = v91();
    }
  }

  if (BYTE5(v321))
  {
    memset(&time, 0, sizeof(time));
    OUTLINED_FUNCTION_105(v305);
    FPSTimelineConverterL3TimeToL2(&time1, &time);
    OUTLINED_FUNCTION_105(v310);
    theArray = time;
    Next = FPSupport_SetTransientTimebaseForCoordinatedPlaybackSynchronization(v31, &theArray, &time1, v12);
  }

  DerivedStorage = v306;
  if (v12 != 0.0)
  {
    OUTLINED_FUNCTION_675();
    if (!v232 || !*(v32 + 912) || *(v32 + 471))
    {
      HIDWORD(v298) = 0;
      goto LABEL_91;
    }

    HIDWORD(v298) = 0;
    if (v12 <= 2.0 && v12 >= 0.0)
    {
      v100 = v4;
      v101 = CMBaseObjectGetDerivedStorage();
      time.value = 0;
      LODWORD(time1.value) = 7;
      FigGetAllocatorForMedia();
      OUTLINED_FUNCTION_199();
      FigBytePumpGetFigBaseObject();
      if (!*(*(CMBaseObjectGetVTable() + 8) + 48))
      {
        goto LABEL_85;
      }

      v279 = OUTLINED_FUNCTION_236();
      v281 = v280(v279);
      v92 = time.value;
      if (time.value)
      {
        CFNumberGetValue(time.value, kCFNumberSInt32Type, &time1);
        if (v281)
        {
          goto LABEL_85;
        }
      }

      else if (v281)
      {
        HIDWORD(v298) = 0;
        v4 = v100;
        goto LABEL_91;
      }

      v286 = time1.value;
      if (LODWORD(time1.value) != 7)
      {
        HIDWORD(v298) = 1;
        v101[518] = (time1.value & 1) == 0;
        v101[519] = (v286 & 2) == 0;
        v101[520] = (v286 & 4) == 0;
LABEL_86:
        v92 = time.value;
        v4 = v100;
        if (time.value)
        {
          CFRelease(time.value);
        }

        goto LABEL_91;
      }

LABEL_85:
      HIDWORD(v298) = 0;
      goto LABEL_86;
    }

LABEL_91:
    *valuePtr = v12;
    if (v4)
    {
      v102 = OUTLINED_FUNCTION_485(v92, v93, v94, v95, v96, v97, v98, v99, value, v288, v289, v290, v291, v292, v293, allocator, v297, v298, cf, v302, v303, *(&v303 + 1), v304, v305);
      *(v306 + 128) = *(v103 + 16);
      *(v306 + 112) = v102;
      v104 = *v310;
      *(v306 + 152) = *(v310 + 16);
      *(v306 + 136) = v104;
      if ((*(v310 + 12) & 1) != 0 && (v305->flags & 1) == 0)
      {
        v105 = OUTLINED_FUNCTION_615();
        fpfs_GetNextTimeToPlay(v105, v106, v107);
        FPSTimelineConverterL2TimeToL3(&time1, &time);
        *(v306 + 112) = time;
      }

      if (dword_1EAF169F0)
      {
        OUTLINED_FUNCTION_679();
        v115 = OUTLINED_FUNCTION_470(qword_1EAF169E8, v108, v109, v110, v111, v112, v113, v114, value, v288, v289, v290, v291, v292, v293, allocatora, v297, v298, cfa, v302, v303, *(&v303 + 1), v304, v305, v306, valuePtr, v309, v310, v311, v312, v313, v314, type, v317, v318, v319, v320, v321, *v322, *&v322[8], *&v322[16], v323, theArray.value);
        v116 = theArray.value;
        os_log_type_enabled(v115, type);
        OUTLINED_FUNCTION_233();
        if (v232)
        {
          v118 = v117;
        }

        else
        {
          v118 = v116;
        }

        if (v118)
        {
          if (v309)
          {
            CMBaseObjectGetDerivedStorage();
          }

          CMBaseObjectGetDerivedStorage();
          time = *(v306 + 112);
          CMTimeGetSeconds(&time);
          time = *(v306 + 136);
          CMTimeGetSeconds(&time);
          LODWORD(time1.value) = 136316674;
          OUTLINED_FUNCTION_319("fpfs_SetRateWithOptionsAndAnchorTime");
          *(v119 + 14) = v309;
          OUTLINED_FUNCTION_143();
          OUTLINED_FUNCTION_676();
          v332 = v120;
          OUTLINED_FUNCTION_49();
          DerivedStorage = v306;
          OUTLINED_FUNCTION_36();
          _os_log_send_and_compose_impl(v121, v122, v123, v124, v125, v126, type, v127);
          v85 = valuePtr;
        }

        else
        {
          DerivedStorage = v306;
        }

        OUTLINED_FUNCTION_7();
        OUTLINED_FUNCTION_467(v128, v129, v130, v131, v132);
        v14 = v309;
      }
    }

    goto LABEL_110;
  }

  *valuePtr = v12;
  if (v4)
  {
    OUTLINED_FUNCTION_477(Next, v22, v23, v24, v25, v26, v27, v28, v29, value, v288, v289, v290, v291, v292, v293, allocator, v297, v298, cf, v302, v30);
  }

  else
  {
    HIDWORD(v298) = 0;
  }

LABEL_110:
  *(DerivedStorage + 522) = 0;
  allocatorb = *MEMORY[0x1E695E480];
  cfb = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberFloat32Type, v85);
  v133 = *(v32 + 96);
  if (v133)
  {
    v134 = *(*(CMBaseObjectGetVTable() + 8) + 56);
    if (v134)
    {
      v134(v133, @"AfmfpbProperty_PlayerRate", cfb);
    }
  }

  if (v81 && *(DerivedStorage + 828) >= 3)
  {
    fpfsi_SeekToCurrentTime(v31);
  }

  v135 = OUTLINED_FUNCTION_292();
  if (fpfs_ShouldTryToGrabHDRPlaybackBaton(v135, v136) && !fpfs_GrabPlayerHDRPlaybackBaton(v14))
  {
    v137 = OUTLINED_FUNCTION_491();
    fpfsi_SwitchBetweenHDRAndSDR(v137, v138);
  }

  v139 = OUTLINED_FUNCTION_292();
  if (fpfs_ShouldTryToGrab4kPlaybackBaton(v139, v140) && !fpfs_GrabPlayer4kPlaybackBaton(v14))
  {
    v141 = OUTLINED_FUNCTION_491();
    fpfsi_SwitchBetween4kAndHD(v141);
  }

  v142 = fpfs_EnsureScanningBoundaryTimer(v31);
  if (v142)
  {
    v180 = v142;
    goto LABEL_200;
  }

  v143 = *v85;
  v144 = CMBaseObjectGetDerivedStorage();
  v297 = OUTLINED_FUNCTION_592(v144);
  v145 = CMBaseObjectGetDerivedStorage();
  theArray.value = 0;
  if (!*(v85 + 114))
  {
    v180 = 0;
    v85 = valuePtr;
    goto LABEL_171;
  }

  v146 = v145;
  v147 = CMBaseObjectGetDerivedStorage();
  v290 = v146;
  if (!*(v147 + 40) || !*(v147 + 48) || !*(v147 + 49))
  {
    IsIFrameOnly = 0;
    v157 = 0;
LABEL_146:
    v159 = 1;
    goto LABEL_147;
  }

  v148 = fpfsi_ConfigureAlternateSelectionBossForPlayRate(v31, v143);
  if (v148)
  {
    goto LABEL_205;
  }

  if (*(v85 + 2904))
  {
    if (v143 > 2.0 || v143 < 0.0 || (v149 = *(v85 + 210)) != 0 && FigAlternateIsIFrameOnly(v149))
    {
      v148 = FigAlternateSelectionBossSetProperty(*(v85 + 5), @"Paused", *MEMORY[0x1E695E4C0]);
      if (v148)
      {
        goto LABEL_205;
      }
    }
  }

  v148 = FigAlternateSelectionBossApplyFilters(*(v85 + 5));
  if (v148)
  {
    goto LABEL_205;
  }

  FigGetAllocatorForMedia();
  v150 = OUTLINED_FUNCTION_298();
  v148 = FigAlternateSelectionBossCopyProperty(v150, v151, v152, v153);
  if (v148)
  {
    goto LABEL_205;
  }

  if (!theArray.value || CFArrayGetCount(theArray.value) <= 0)
  {
    OUTLINED_FUNCTION_120();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", value, v288, v289);
    goto LABEL_205;
  }

  OUTLINED_FUNCTION_731();
  fpfsi_UpdateValidAlternateListAndSuggestAnAlternate();
  if (v148)
  {
LABEL_205:
    v180 = v148;
    goto LABEL_169;
  }

  v154 = *(v85 + 210);
  if (*(v85 + 12))
  {
    if (*(*(CMBaseObjectGetVTable() + 8) + 56))
    {
      v155 = OUTLINED_FUNCTION_236();
      v156(v155);
    }

    v154 = *(v85 + 210);
  }

  if (v154)
  {
    v157 = FigAlternateIsIFrameOnly(v154) != 0;
  }

  else
  {
    v157 = 0;
  }

  ValueAtIndex = CFArrayGetValueAtIndex(*(v85 + 208), 0);
  IsIFrameOnly = FigAlternateIsIFrameOnly(ValueAtIndex);
  if (!*(v85 + 210))
  {
    goto LABEL_146;
  }

  v159 = FigCFArrayContainsValue() != 0;
LABEL_147:
  if (dword_1EAF169F0)
  {
    LOBYTE(type) = 0;
    LOBYTE(v311) = 0;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    OUTLINED_FUNCTION_425();
    if (v232)
    {
      v162 = v161;
    }

    else
    {
      v162 = 0;
    }

    if (v162)
    {
      v293 = v32;
      if (v297)
      {
        CMBaseObjectGetDerivedStorage();
      }

      v163 = CMBaseObjectGetDerivedStorage();
      LODWORD(time1.value) = 136317186;
      *(&time1.value + 4) = "fpfsi_SetAlternateForRateChangeIfNecessary";
      LOWORD(time1.flags) = 2048;
      *(&time1.flags + 2) = v297;
      OUTLINED_FUNCTION_380(v163 + 3096, v18);
      HIWORD(v331) = v164;
      v332 = v165;
      LOWORD(v333) = 1024;
      *(v166 + 74) = v157;
      HIWORD(v333) = 1024;
      LODWORD(v334) = IsIFrameOnly;
      OUTLINED_FUNCTION_49();
      OUTLINED_FUNCTION_38();
      _os_log_send_and_compose_impl(v167, v168, v169, v170, v171, v172, 0, v173);
    }

    OUTLINED_FUNCTION_7();
    OUTLINED_FUNCTION_635(v174, v175, v176, v177, v178);
    DerivedStorage = v306;
  }

  if (IsIFrameOnly)
  {
    v179 = 0;
  }

  else
  {
    v179 = v159;
  }

  if (!v179 || fpfs_audioOnlyValidAlternateList(v85) || v143 <= 2.0 && v143 >= 0.0)
  {
    if (*(v85 + 374))
    {
      fpfsi_EndBestEffortSeekTrickplayMode(v85);
    }

    v148 = fpfsi_handleIFrameOnlyRateTransition(v31, v157, IsIFrameOnly, *(v85 + 208), 0, v18);
    v14 = v309;
    if (!v148)
    {
      if (*(v85 + 471))
      {
        v180 = 0;
        goto LABEL_169;
      }

      v148 = fpfsi_SetPumpRate(v85, *(v290 + 108));
    }

    goto LABEL_205;
  }

  v180 = fpfs_EnterBestEffortTrickplayMode(*(v290 + 108));
  v14 = v309;
LABEL_169:
  v85 = valuePtr;
  if (theArray.value)
  {
    CFRelease(theArray.value);
  }

LABEL_171:
  v181 = *(v32 + 1680);
  if (v181)
  {
    FigAlternateIsIFrameOnly(v181);
  }

  v182 = v18;
  if (v180)
  {
    goto LABEL_277;
  }

  if (HIDWORD(v298))
  {
    if ((*(v32 + 332) & 1) == 0)
    {
      v180 = fpfsi_SetCurrentTimeWithSeekID(v31, MEMORY[0x1E6960C88]);
      goto LABEL_210;
    }

LABEL_209:
    v180 = 0;
    goto LABEL_210;
  }

  if (v12 == 0.0)
  {
    goto LABEL_185;
  }

  v184 = OUTLINED_FUNCTION_675();
  v185 = !v232;
  if (!HIBYTE(v321))
  {
    v185 = 1;
  }

  if (((v185 | v183) & 1) == 0)
  {
    memset(&time1, 0, sizeof(time1));
    fpfs_GetItemBufferedDuration(v31, &time1, &time, 0);
    theArray = time1;
    OUTLINED_FUNCTION_392(v305);
    OUTLINED_FUNCTION_232(v310);
    OUTLINED_FUNCTION_292();
    fpfs_CheckIfLikelyToKeepUpAndNotify();
    goto LABEL_209;
  }

  if (v184 == 0.0)
  {
    if (*(v32 + 464))
    {
      OUTLINED_FUNCTION_439();
      fpfs_notifyExternalStartupTasksOfEvents();
      v187 = fpfs_areAllExternalStartupTasksCompleted(v14);
    }

    else
    {
      v187 = 1;
    }

    v282 = OUTLINED_FUNCTION_615();
    fpfs_GetNextTimeToPlay(v282, v283, v284);
    fpfsi_atOrAfterTimeToPausePlayback(v32);
    OUTLINED_FUNCTION_786();
  }

  else
  {
LABEL_185:
    v186 = 1;
    v187 = 1;
  }

  v180 = 0;
  if (!*(v32 + 2992) && v187 && v186)
  {
    IsDisplayModeSwitchInProgress = FPSupport_IsDisplayModeSwitchInProgress();
    v189 = *v85;
    if (IsDisplayModeSwitchInProgress && v189 != 0.0)
    {
      if (dword_1EAF169F0)
      {
        OUTLINED_FUNCTION_679();
        v197 = OUTLINED_FUNCTION_470(qword_1EAF169E8, v190, v191, v192, v193, v194, v195, v196, value, v288, v289, v290, v291, v292, v293, allocatorb, v297, v298, cfb, v302, v303, *(&v303 + 1), v304, v305, v306, valuePtr, v309, v310, v311, v312, v313, v314, type, v317, v318, v319, v320, v321, *v322, *&v322[8], *&v322[16], v323, theArray.value);
        v198 = theArray.value;
        os_log_type_enabled(v197, typea);
        OUTLINED_FUNCTION_425();
        if (v232)
        {
          v200 = v199;
        }

        else
        {
          v200 = v198;
        }

        if (v200)
        {
          if (v14)
          {
            CMBaseObjectGetDerivedStorage();
          }

          CMBaseObjectGetDerivedStorage();
          LODWORD(time1.value) = 136316418;
          OUTLINED_FUNCTION_321();
          *(v202 + 14) = v14;
          OUTLINED_FUNCTION_380(v203, v204);
          OUTLINED_FUNCTION_49();
          OUTLINED_FUNCTION_38();
          _os_log_send_and_compose_impl(v205, v206, v207, v208, v209, v210, typea, v211);
        }

        DerivedStorage = v307;
        OUTLINED_FUNCTION_7();
        OUTLINED_FUNCTION_635(v212, v213, v214, v215, v216);
      }

      goto LABEL_209;
    }

    if (!*(v32 + 464) && v189 != 0.0)
    {
      OUTLINED_FUNCTION_300();
      goto LABEL_209;
    }

    time = *v322;
    time1 = *v305;
    theArray = *v310;
    v180 = fpfs_SetRateWithFadeInternal(v14, &time, v189);
    if (!v180)
    {
      goto LABEL_210;
    }

    v285 = *(v32 + 1680);
    if (v285 && FigAlternateIsIFrameOnly(v285) && !OUTLINED_FUNCTION_852(v14, MEMORY[0x1E6960C70], 1.0))
    {
      goto LABEL_216;
    }

LABEL_200:
    v182 = v18;
    goto LABEL_277;
  }

LABEL_210:
  NotificationPayloadForProperties = 0;
  if (v180 || !HIBYTE(v321))
  {
LABEL_217:
    if (*v85 != 0.0)
    {
      OUTLINED_FUNCTION_675();
      if (v232)
      {
        v218 = OUTLINED_FUNCTION_615();
        fpfs_GetNextTimeToPlay(v218, v219, v220);
        fpfsi_PrepareToStartWhenLikelyToKeepUp(v31, &time);
      }
    }

    Mutable = 0;
    v222 = NotificationPayloadForProperties ^ 1;
    if (v180)
    {
      v222 = 0;
    }

    if (v222)
    {
      goto LABEL_224;
    }

    goto LABEL_278;
  }

  if (*(v32 + 840) == v12)
  {
    v180 = 0;
LABEL_216:
    NotificationPayloadForProperties = 0;
    goto LABEL_217;
  }

  if (*(DerivedStorage + 160))
  {
    v180 = 0;
    NotificationPayloadForProperties = 1;
    goto LABEL_217;
  }

  v182 = 0.0;
  v180 = -12928;
LABEL_277:
  Mutable = CFDictionaryCreateMutable(allocatorb, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  FigCFDictionarySetFloat32();
  v255 = OUTLINED_FUNCTION_764();
  v258 = fpfs_EnqueueNotification(v255, v256, v257, Mutable);
  *(DerivedStorage + 108) = v182;
  OUTLINED_FUNCTION_477(v258, v259, v260, v261, v262, v263, v264, v265, v266, value, v288, v289, v290, v291, v292, v293, allocatorb, v297, v298, cfb, v302, v267);
  *(v32 + 520) = 0;
  *(v32 + 518) = 0;
LABEL_278:
  v268 = OUTLINED_FUNCTION_249();
  NotificationPayloadForProperties = fpfs_CreateNotificationPayloadForProperties(v268, v269, v270, v271, v272, v273, v274, v275, @"CurrentRate", 0);
  v276 = OUTLINED_FUNCTION_764();
  fpfs_EnqueueNotification(v276, v277, v278, NotificationPayloadForProperties);
  if (NotificationPayloadForProperties)
  {
    CFRelease(NotificationPayloadForProperties);
  }

  if (v180)
  {
    goto LABEL_238;
  }

LABEL_224:
  v223 = *v85;
  if (*v85 >= 0.0)
  {
LABEL_225:
    if (v223 <= 0.0)
    {
      goto LABEL_230;
    }

    v224 = CMBaseObjectGetDerivedStorage();
    if (!v224)
    {
      goto LABEL_230;
    }

    OUTLINED_FUNCTION_172(v224);
    if (!CMBaseObjectGetDerivedStorage())
    {
      goto LABEL_230;
    }

    memset(&time, 0, sizeof(time));
    fpfs_GetTime(NotificationPayloadForProperties, &time);
    time1 = time;
    theArray = **&MEMORY[0x1E6960CC0];
    if (CMTimeCompare(&time1, &theArray) > 0)
    {
      goto LABEL_230;
    }

    goto LABEL_229;
  }

  fpfsi_PlaybackHasTraversedForwardEndTime(v31);
  if (!v252)
  {
    v223 = *v85;
    goto LABEL_225;
  }

LABEL_229:
  *(v32 + 530) = 0;
LABEL_230:
  if (!CelestialShouldLimitHDRConcurrentPlayback() || (v225 = CMBaseObjectGetDerivedStorage(), OUTLINED_FUNCTION_260(v225), v232) || !fpfs_CanRenderVideo(v226, 0))
  {
    fpfs_ReleasePlayerHDRPlaybackBaton(v14);
  }

  if (!CelestialShouldLimit4kConcurrentPlayback() || (v227 = CMBaseObjectGetDerivedStorage(), OUTLINED_FUNCTION_260(v227), v232) || !fpfs_CanRenderVideo(v228, 0))
  {
    fpfs_ReleasePlayer4kPlaybackBaton(v14);
  }

LABEL_238:
  v229 = *v85;
  if (*v85 == 0.0)
  {
    fpfsi_performCurrentResourceConservationAction(v31, *(DerivedStorage + 828));
    UpTimeNanoseconds = FigGetUpTimeNanoseconds();
    fpfsi_SetLastTimestampClientDidPauseOnContentSteeringMonitor(v31, UpTimeNanoseconds);
    v229 = *(DerivedStorage + 108);
  }

  if (v304 & 0x200000000) != 0 && v229 > 0.0 && (*(v310 + 12))
  {
    v230 = *v310;
    *(v32 + 448) = *(v310 + 16);
    *(v32 + 432) = v230;
  }

  else
  {
    *(v32 + 432) = v303;
    *(v32 + 448) = v302;
  }

  v231 = *v85;
  if (v18 >= 0.0 && v231 < 0.0)
  {
    fpfs_scheduleReverseEndTimeTimer(v31);
  }

  else if (v231 >= 0.0)
  {
    fpfsi_RemoveAndClearTimer((v32 + 2360));
  }

  v232 = *(DerivedStorage + 872) != 1 && *(DerivedStorage + 108) == 1.0;
  if (v232 && *(v32 + 840) == 1.0)
  {
    v253 = OUTLINED_FUNCTION_491();
    fpfs_ReportVideoPlaybackTimeThroughFigLog(v253, v254);
    fpfs_ReportAudioPlaybackThroughFigLog(v31);
    fpfsi_SetLastTimestampClientDidPauseOnContentSteeringMonitor(v31, 0x7FFFFFFFFFFFFFFFLL);
  }

  OUTLINED_FUNCTION_588();
  if (v234 ^ v235 | v232 && v233 >= 0.0 || *(v32 + 2992))
  {
    fpfs_EnsureItemTracksStatusSnapshotTimer(v31);
  }

  v31 = cfb;
LABEL_261:
  if (*(DerivedStorage + 108) != v18)
  {
    v239 = OUTLINED_FUNCTION_249();
    v247 = fpfs_CreateNotificationPayloadForProperties(v239, v240, v241, v242, v243, v244, v245, v246, @"CurrentRate", 0);
    FigCFDictionarySetInt32();
    FigCFDictionarySetValueFromKeyInDict();
    OUTLINED_FUNCTION_228();
    FigCFDictionarySetValueFromKeyInDict();
    OUTLINED_FUNCTION_228();
    FigCFDictionarySetValueFromKeyInDict();
    v248 = OUTLINED_FUNCTION_764();
    fpfs_EnqueueNotification(v248, v249, v250, v247);
    if (v247)
    {
      CFRelease(v247);
    }
  }

  if (*(DerivedStorage + 906) && v321 == 37)
  {
    v236 = OUTLINED_FUNCTION_764();
    fpfs_PostNotificationWhenUnlocked(v236, v237, v238, 0);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  if (v31)
  {
    CFRelease(v31);
  }

  fpfs_UnlockAndPostNotificationsWithCaller(v14);
  OUTLINED_FUNCTION_648();
}

void fpfsi_RTCReportingReportDesiredRateChange(uint64_t a1, double a2)
{
  CMBaseObjectGetDerivedStorage();
  OUTLINED_FUNCTION_523();
  if (v3 && *(*(CMBaseObjectGetVTable() + 16) + 56))
  {
    OUTLINED_FUNCTION_730(100.0);
    v5 = OUTLINED_FUNCTION_235();
    v6(v5);
  }

  if (a2 != 0.0 && !*(v2 + 2617))
  {
    if (*(v2 + 2616))
    {
      Current = CFAbsoluteTimeGetCurrent();
      v8 = *(v2 + 3016);
      *(v2 + 2617) = 1;
      if (*(v2 + 2568))
      {
        v9 = Current;
        if (*(*(CMBaseObjectGetVTable() + 16) + 56))
        {
          OUTLINED_FUNCTION_492(v9 - v8, 1000.0);
          v10 = OUTLINED_FUNCTION_177();

          v11(v10);
        }
      }
    }
  }
}

uint64_t fpfs_ShouldTryToGrab4kPlaybackBaton(uint64_t a1, uint64_t a2)
{
  CMBaseObjectGetDerivedStorage();
  OUTLINED_FUNCTION_251();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!*(v2 + 905) || *(v2 + 80) != a2 || !*(DerivedStorage + 1680))
  {
    return 0;
  }

  result = CelestialShouldLimit4kConcurrentPlayback();
  if (!result)
  {
    return result;
  }

  v6 = CMBaseObjectGetDerivedStorage();
  OUTLINED_FUNCTION_260(v6);
  if (v8)
  {
    return 0;
  }

  result = fpfs_CanRenderVideo(v7, 0);
  if (result)
  {
    result = fpfsi_isPlaying4k(a2);
    if (result)
    {
      return *(v2 + 864) == 0;
    }
  }

  return result;
}

void fpfs_scheduleReverseEndTimeTimer(const void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  OUTLINED_FUNCTION_173(DerivedStorage);
  CMBaseObjectGetDerivedStorage();
  OUTLINED_FUNCTION_106(MEMORY[0x1E6960C70]);
  OUTLINED_FUNCTION_260(v4);
  if (v5)
  {
    OUTLINED_FUNCTION_29();
    if (v6)
    {
      if (*(v1 + 576) && !*(v1 + 530))
      {
        fpfsi_RemoveAndClearTimer((v1 + 2360));
        OUTLINED_FUNCTION_315();
        FPSTimelineConverterL3TimeToL2(&v9, &v11);
        if (fpfs_isPlaybackBeyondReverseEndTime(a1))
        {
          CMBaseObjectGetDerivedStorage();
          fpfs_StopPlayingItem();
        }

        else
        {
          fpfsi_CreateTimebaseTimer(a1, *(v1 + 600), *(v1 + 16), &fpfs_reverseEndTimerProc, 0, (v1 + 2360));
          if (*(v1 + 2360))
          {
            v9 = v11;
            OUTLINED_FUNCTION_385();
            FigSpeedRampTimerScheduleForL2Time(v7, v8, 0);
          }

          else
          {
            OUTLINED_FUNCTION_376();
            FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v9.n128_u64[0], v9.n128_u32[2], v10);
          }
        }
      }
    }
  }
}

void fpfs_EnsureItemTracksStatusSnapshotTimer(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  OUTLINED_FUNCTION_391(MEMORY[0x1E6960C70]);
  OUTLINED_FUNCTION_230();
  fpfs_GetNextTimeToPlay(v2, 0, v3);
  if (BYTE12(v34))
  {
    OUTLINED_FUNCTION_665(v4, v5, v6, v7, v8, v9, v10, v11, v24, v26, v28, v30, v32, *(&v32 + 1), v33, v34);
    OUTLINED_FUNCTION_799();
    v20 = OUTLINED_FUNCTION_175(v12, v13, v14, v15, v16, v17, v18, v19, v25, v27, v29, v31, v32);
    CMTimeAdd(v22, v20, v21);
    if (*(DerivedStorage + 3456) || !OUTLINED_FUNCTION_815(0, *(DerivedStorage + 600), *(DerivedStorage + 16)))
    {
      OUTLINED_FUNCTION_712();
      FigSpeedRampTimerScheduleForL2Time(v23, &v32, 1u);
    }
  }
}

uint64_t fpfs_EnterBestEffortTrickplayMode(float a1)
{
  OUTLINED_FUNCTION_261();
  v77 = *MEMORY[0x1E69E9840];
  CMBaseObjectGetDerivedStorage();
  OUTLINED_FUNCTION_104(MEMORY[0x1E6960C70]);
  if (a1 == 0.0)
  {
    return 0;
  }

  v5 = v4;
  if (!*(v4 + 912))
  {
    return 0;
  }

  fpfsi_getSeekableTimeRange(&time);
  value = time.value;
  flags = time.flags;
  timescale = time.timescale;
  if ((time.flags & 1) == 0 || (v72 & 0x100000000) == 0 || v73 || v71 < 0)
  {
    OUTLINED_FUNCTION_243();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v57, v60, v63);
    return v15;
  }

  epoch = time.epoch;
  time.timescale = timescale;
  v17 = OUTLINED_FUNCTION_175(v6, v7, v8, v9, v10, v11, v12, v13, v71, v72, 0, v66, value);
  CMTimeAdd(v19, v17, v18);
  fpfs_GetTime(v5, &time);
  v28 = OUTLINED_FUNCTION_175(v20, v21, v22, v23, v24, v25, v26, v27, value, __SPAIR64__(flags, timescale), epoch, v67, time.value);
  v30 = CMTimeCompare(v28, v29);
  if (a1 < 0.0 && v30 < 1)
  {
    return 0;
  }

  fpfs_GetTime(v5, &time);
  OUTLINED_FUNCTION_662(v32, v33, v34, v35, v36, v37, v38, v39, v58, v61, v64, v68, time.value, *&time.timescale, time.epoch, v71, v72, v73, v74);
  v48 = OUTLINED_FUNCTION_175(v40, v41, v42, v43, v44, v45, v46, v47, v59, v62, v65, v69, time.value);
  v50 = CMTimeCompare(v48, v49);
  if (a1 > 0.0 && (v50 & 0x80000000) == 0)
  {
    return 0;
  }

  fpfsi_pauseItem(v2);
  v51 = (v5 + 2992);
  v52 = *(v5 + 2992);
  if (!v52)
  {
    FigGetAllocatorForMedia();
    CMClockGetHostTimeClock();
    v53 = OUTLINED_FUNCTION_188();
    v15 = CMTimebaseCreateWithSourceClock(v53, v54, v55);
    if (v15)
    {
      return v15;
    }

    v52 = *v51;
  }

  fpfs_GetTime(v5, &time);
  v15 = CMTimebaseSetTime(v52, &time);
  if (!v15)
  {
    v15 = CMTimebaseSetRate(*v51, a1);
    if (!v15)
    {
      *(v5 + 2944) = FigGetUpTimeNanoseconds();
      return fpfsi_HandleNextBestEffortTrickplayModeSeek(v1);
    }
  }

  return v15;
}

void *fpfsi_EndBestEffortSeekTrickplayMode(uint64_t a1)
{
  v2 = *(a1 + 2992);
  if (v2)
  {
    CFRelease(v2);
    *(a1 + 2992) = 0;
  }

  *(a1 + 2944) = 0u;
  v3 = MEMORY[0x1E6960C70];
  v4 = OUTLINED_FUNCTION_298();
  fpfsi_setLastSeekTimeSet(v4, v5);
  *(a1 + 1472) = *v3;
  *(a1 + 1488) = *(v3 + 16);
  for (result = *(a1 + 2912); result; result = *(a1 + 2912))
  {
    v7 = *result;
    v8 = result[1];
    v9 = (*result + 8);
    if (!*result)
    {
      v9 = (a1 + 2920);
    }

    *v9 = v8;
    *v8 = v7;
    --*(a1 + 2984);
    free(result);
  }

  return result;
}

uint64_t fpfsi_HandleNextBestEffortTrickplayModeSeek(uint64_t a1)
{
  v88 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  Next = fpfs_getNext(DerivedStorage, 0);
  if (!Next)
  {
    return 0;
  }

  v3 = Next;
  v4 = CMBaseObjectGetDerivedStorage();
  v5 = v4;
  memset(&v76, 0, sizeof(v76));
  if (v4)
  {
    if (!*(v4 + 2992))
    {
      return 0;
    }

    v6 = CMBaseObjectGetDerivedStorage();
    v85.value = *MEMORY[0x1E6960C70];
    v85.timescale = *(MEMORY[0x1E6960C70] + 8);
    v7 = **(*(v6 + 2920) + 8);
    if (v7)
    {
      v85.value = *(v7 + 32);
      v85.timescale = *(v7 + 40);
      v8 = (v7 + 44);
      v9 = (v7 + 48);
    }

    else
    {
      v9 = (MEMORY[0x1E6960C70] + 16);
      v8 = (MEMORY[0x1E6960C70] + 12);
    }

    v10 = *v8;
    if ((*v8 & 0x1D) == 1)
    {
      v11 = *v9;
      OUTLINED_FUNCTION_335();
      v12 = CMTimebaseGetTime(&rhs.start, *(v6 + 2992));
      OUTLINED_FUNCTION_761(v12, v13, v14, v15, v16, v17, v18, v19, v65, v68, v71, v74, 0, 0, 0, v77, *&rhs.start.value);
      v28 = OUTLINED_FUNCTION_738(v20, v21, v22, v23, v24, v25, v26, v27, v66, v69, v72, v75, v76.value, *&v76.timescale, v76.epoch, v77, rhs.start.value, *&rhs.start.timescale, rhs.start.epoch, rhs.duration.value, *&rhs.duration.timescale, rhs.duration.epoch, v85.value, __SPAIR64__(v10, v85.timescale), v11, v80, v81.value);
      CMTimeSubtract(v30, v28, v29);
      Seconds = CMTimeGetSeconds(&time);
      v32 = ((0.2 - fmax(Seconds / CMTimebaseGetRate(*(v6 + 2992)), 0.0)) * 1000000000.0);
      if (v32 >= 1)
      {
        FigRetainProxyRetain();
        v33 = dispatch_time(0, v32);
        dispatch_after_f(v33, *(v5 + 600), *(v5 + 16), &fpfsi_HandleNextBestEffortTrickplayModeSeekDispatch);
        return 0;
      }
    }

    CMTimebaseGetRate(*(v5 + 2992));
    v35 = CMBaseObjectGetDerivedStorage();
    memset(&time, 0, sizeof(time));
    CMTimebaseGetTime(&v81, *(v35 + 2992));
    v36 = CMBaseObjectGetDerivedStorage();
    for (i = v36[364]; i; i = v36[364])
    {
      if (FigGetUpTimeNanoseconds() - (i[2] + i[3]) < 3000000001)
      {
        break;
      }

      v38 = *i;
      v39 = i[1];
      v40 = (*i + 8);
      if (!*i)
      {
        v40 = v36 + 365;
      }

      *v40 = v39;
      *v39 = v38;
      --v36[373];
      free(i);
    }

    v41 = **(v36[365] + 8);
    v42 = 0.0;
    if (v41)
    {
      v43 = 0;
      v44 = 0;
      do
      {
        v44 += *(v41 + 24);
        v45 = v43 + 1;
        v41 = **(*(v41 + 8) + 8);
        if (v41)
        {
          v46 = v43 == 0x7FFFFFFFFFFFFFFELL;
        }

        else
        {
          v46 = 1;
        }

        ++v43;
      }

      while (!v46);
      v42 = (v44 / v45);
    }

    Rate = CMTimebaseGetRate(*(v35 + 2992));
    CMTimeMake(&rhs.start, (v42 * Rate), 1000000000);
    lhs = v81;
    CMTimeAdd(&time, &lhs, &rhs.start);
    OUTLINED_FUNCTION_690();
    fpfsi_getSeekableTimeRange(v48);
    value = rhs.start.value;
    LODWORD(v87) = rhs.start.timescale;
    if ((rhs.start.flags & 1) == 0 || (rhs.duration.flags & 1) == 0 || rhs.duration.epoch || rhs.duration.value < 0)
    {
      OUTLINED_FUNCTION_239();
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v65, v68, v71);
      if (v49)
      {
LABEL_33:
        if (v49 << 16)
        {
          v5 = v49;
          fpfs_haltStream(v3, v50, v51, v52, v53, v54, v55, v56, v67, v70, *v73, v73[2], v73[3], v73[4], v74, v76.value, *&v76.timescale, v76.epoch, v77, rhs.start.value, *&rhs.start.timescale, rhs.start.epoch, rhs.duration.value, SWORD2(rhs.duration.value), *&rhs.duration.timescale, rhs.duration.epoch, SBYTE2(rhs.duration.epoch), lhs.value, *&lhs.timescale, lhs.epoch, v80, v81.value, *&v81.timescale, v81.epoch, v82, time.value, *&time.timescale, time.epoch, v84, v85.value, *&v85.timescale, v85.epoch, value, v87, v88, v89, v90, v91, v92, v93, v94, v95, v96, v97, v98, v99);
          return v5;
        }

        return 0;
      }
    }

    else
    {
      v85 = time;
      rhs.start.value = value;
      OUTLINED_FUNCTION_775();
      CMTimeClampToRange(&lhs, &v85, &rhs);
      time = lhs;
      v76 = lhs;
    }

    *(v5 + 2944) = FigGetUpTimeNanoseconds();
    *(v5 + 2960) = v76;
    rhs.start = v76;
    OUTLINED_FUNCTION_389(MEMORY[0x1E6960C80]);
    time.epoch = v57;
    OUTLINED_FUNCTION_386(MEMORY[0x1E6960C88]);
    OUTLINED_FUNCTION_186();
    v49 = fpfsi_SetCurrentTimeWithRangeAndSeekIDGuts(v58, v59, v60, v61, v62, v63, v64, 0, 1, 1, 1, 1, 0, 0);
    goto LABEL_33;
  }

  return v5;
}

void fpfs_ItemTracksStatusSnapshotTimerProc()
{
  OUTLINED_FUNCTION_813();
  v229 = *MEMORY[0x1E69E9840];
  v7 = fpfsi_CopyPlayerAndItemFromItemRetainProxyAndLockPlayer(v1, &cf, &v209, v2, v3, v4, v5, v6, v101, v106, v111, v116, v121, v130, v135, SBYTE2(v135), BYTE3(v135), SHIDWORD(v135), v140, SHIDWORD(v140), *v145, *&v145[4], v150, v155, v160, v165, v170, v175, type, type_8, v187, v190, v195, v200, v203, v206, 0, 0, time.value, *&time.timescale, time.epoch, v212, *v213, *&v213[8], *&v213[16], *&v213[24], v214, v215.value, *&v215.timescale, v215.epoch, v216, v217, v218, v219, v220, v221, v222, v223, v224, v225, v226, v227, v228);
  v8 = v209;
  if (v7)
  {
    Mutable = 0;
    if (v209)
    {
LABEL_35:
      CFRelease(v8);
    }
  }

  else
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    v10 = CMBaseObjectGetDerivedStorage();
    v11 = *(DerivedStorage + 1024);
    if (v11)
    {
      v176 = v10;
      Mutable = 0;
      OUTLINED_FUNCTION_340();
      do
      {
        fpfs_isKnownMebxMetadataForRendering(*(v11 + 56));
        if (*(v11 + 64) == *(DerivedStorage + 976 + 16 * *(v11 + 196)))
        {
          OUTLINED_FUNCTION_674();
          if (v14)
          {
            if (!*(v11 + 200) || *(v11 + 48) != v0 && v13)
            {
              if (!Mutable)
              {
                AllocatorForMedia = FigGetAllocatorForMedia();
                Mutable = CFStringCreateMutable(AllocatorForMedia, 0);
              }

              memset(&v215, 0, sizeof(v215));
              FigStreamTrackGetRecentSampleEndTimeForTrack(v11, &v215);
              v16 = *(v11 + 112);
              if (v16 && *(v16 + 40))
              {
                v17 = *(v11 + 48);
                v18 = HIBYTE(v17);
                v19 = BYTE2(v17);
                v20 = BYTE1(v17);
                v21 = v17;
                v0 = *(v11 + 32);
                time = *(v11 + 208);
                Seconds = CMTimeGetSeconds(&time);
                v31 = OUTLINED_FUNCTION_631(v23, v24, v25, v26, v27, v28, v29, v30, v102, v107, v112, v117, v122, v126, v131, v136, v141, v146, v151, v156, v161, v166, v171, v176, typea, type_8a, v188, v191, v196, v201, v204, v207, v209, cf, *&time.value, time.epoch);
                OUTLINED_FUNCTION_668();
                v40 = OUTLINED_FUNCTION_445(v32, v33, v34, v35, v36, v37, v38, v39, v103, v108, v113, v118, v123, v127, v132, v137, v142, v147, v152, v157, v162, v167, v172, v177, *(v11 + 208), *(v11 + 216), *(v11 + 224), v192, v197);
                CMTimeSubtract(v42, v40, v41);
                v43 = CMTimeGetSeconds(&time);
                v44 = OUTLINED_FUNCTION_533();
                CMBufferQueueGetFirstPresentationTimeStamp(v45, v44);
                v46 = CMTimeGetSeconds(&time);
                v47 = OUTLINED_FUNCTION_533();
                CMBufferQueueGetEndPresentationTimeStamp(v48, v47);
                v49 = CMTimeGetSeconds(&time);
                v50 = OUTLINED_FUNCTION_533();
                CMBufferQueueGetDuration(v51, v50);
                v52 = CMTimeGetSeconds(&time);
                time = v215;
                v53 = CMTimeGetSeconds(&time);
                v62 = OUTLINED_FUNCTION_631(v54, v55, v56, v57, v58, v59, v60, v61, v104, v109, v114, v119, v124, v128, v133, v138, v143, v148, v153, v158, v163, v168, v173, v178, typeb, type_8b, v189, v193, v198, v202, v205, v208, v209, cf, *&time.value, time.epoch);
                OUTLINED_FUNCTION_668();
                v71 = OUTLINED_FUNCTION_445(v63, v64, v65, v66, v67, v68, v69, v70, v105, v110, v115, v120, v125, v129, v134, v139, v144, v149, v154, v159, v164, v169, v174, v179, v215.value, *&v215.timescale, v215.epoch, v194, v199);
                CMTimeSubtract(v73, v71, v72);
                v161 = *&v62;
                v166 = CMTimeGetSeconds(&time);
                v151 = *&v52;
                v156 = *&v53;
                v141 = *&v46;
                v146 = *&v49;
                v131 = *&v31;
                v136 = *&v43;
                v126 = *&Seconds;
                v117 = v21;
                v122 = v0;
                OUTLINED_FUNCTION_340();
                v107 = v19;
                v112 = v20;
                v102 = v18;
                v74 = OUTLINED_FUNCTION_312();
                CFStringAppendFormat(v74, v75, @"\t%c%c%c%c Track %d Total Enqueued: [%.3f->%.3f](dur: %.3f) | inputQueue: [%.3f->%.3f](dur:%.3f) | New: [%.3f->%.3f](dur:%.3f)\n");
                FigStreamTrackUpdateRecentSampleEndTimeForTrack(v11);
              }
            }
          }
        }

        v11 = *(v11 + 24);
      }

      while (v11);
      if (Mutable && dword_1EAF169F0)
      {
        OUTLINED_FUNCTION_795();
        v76 = OUTLINED_FUNCTION_432();
        v84 = OUTLINED_FUNCTION_509(v76, v77, v78, v79, v80, v81, v82, v83, v102, v107, v112, v117, v122, v126, v131, v136, v141, v146, v151, v156, v161, v166, v171, v176, typea, type_8a, v188, v191, v196);
        os_log_type_enabled(v84, typec);
        OUTLINED_FUNCTION_46();
        if (DerivedStorage != -976)
        {
          v85 = cf;
          if (cf)
          {
            v86 = (CMBaseObjectGetDerivedStorage() + 888);
          }

          else
          {
            v86 = "";
          }

          v87 = v209;
          if (v209)
          {
            v88 = (CMBaseObjectGetDerivedStorage() + 3096);
          }

          else
          {
            v88 = "";
          }

          fpfs_GetTime(DerivedStorage, &v215);
          v89 = CMTimeGetSeconds(&v215);
          LODWORD(time.value) = 136316674;
          *(&time.value + 4) = "fpfs_ItemTracksStatusSnapshotTimerProc";
          LOWORD(time.flags) = 2048;
          *(&time.flags + 2) = v85;
          HIWORD(time.epoch) = 2082;
          v212 = v86;
          *v213 = 2048;
          *&v213[2] = v87;
          *&v213[10] = 2082;
          *&v213[12] = v88;
          *&v213[20] = 2048;
          *&v213[22] = v89;
          *&v213[30] = 2114;
          v214 = Mutable;
          OUTLINED_FUNCTION_72();
          v90 = OUTLINED_FUNCTION_30();
          OUTLINED_FUNCTION_448(v90, v91, v92, v93, v94, v95, v96, v97);
        }

        OUTLINED_FUNCTION_4();
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }
    }

    else
    {
      Mutable = 0;
    }

    OUTLINED_FUNCTION_588();
    if (v99 ^ v100 | v14 && v98 >= 0.0 || *(DerivedStorage + 2992))
    {
      v8 = v209;
      fpfs_EnsureItemTracksStatusSnapshotTimer(v209);
    }

    else
    {
      fpfsi_RemoveAndClearTimer((DerivedStorage + 3456));
      v8 = v209;
    }

    fpfs_UnlockWithCaller(cf);
    if (v8)
    {
      goto LABEL_35;
    }
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  OUTLINED_FUNCTION_812();
}

void fpfs_needsMoreTimerProc(int a1, uint64_t a2, uint64_t a3, int a4, int a5, int a6, int a7, int a8)
{
  if (!fpfsi_CopyPlayerAndItemFromItemRetainProxyAndLockPlayer(a1, &v170, &v171, a4, a5, a6, a7, a8, v141, v146, v151, v157, v161, 0, 0, 0, OS_LOG_TYPE_DEFAULT, 0, v172.value, SHIDWORD(v172.value), v172.timescale, v172.flags, v172.epoch, v173, v174.value, *&v174.timescale, v174.epoch, v175, rhs.value, *&rhs.timescale, rhs.epoch, v177, *v178, v178[8], *&v180[4], *&v180[12], v181, v182, *(&v182 + 1), v183, time.value, *&time.timescale, time.epoch, v185, v186, v187, v188, v189, v190, v191, v192, v193, v194, v195, v196, v197, v198, *MEMORY[0x1E69E9840], v199, v200, v201, v202, v203))
  {
    v10 = v171;
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    v12 = v170;
    v13 = *(CMBaseObjectGetDerivedStorage() + 840);
    voucher_adopt();
    OUTLINED_FUNCTION_297();
    v14 = CMBaseObjectGetDerivedStorage();
    if ((*(DerivedStorage + 1652) & 1) == 0)
    {
      goto LABEL_16;
    }

    v15 = v14;
    v8 = (DerivedStorage + 1640);
    v16 = CMBaseObjectGetDerivedStorage();
    memset(&time, 0, sizeof(time));
    fpfs_GetTime(v15, &time);
    v17 = OUTLINED_FUNCTION_755();
    if (v18 == v19)
    {
      OUTLINED_FUNCTION_302();
      CMTimeAdd(v22, v20, v21);
      OUTLINED_FUNCTION_77();
      v31 = OUTLINED_FUNCTION_499(v23, v24, v25, v26, v27, v28, v29, v30, v142, v147, v152, v158, v162, v166, v170, v171, v172.value, *&v172.timescale, v172.epoch, v173, v174.value);
      v33 = CMTimeCompare(v31, v32);
      if (v33 >= 1)
      {
        OUTLINED_FUNCTION_469(v33, v34, v35, v36, v37, v38, v39, v40, v142, v147, v152, v158, v162, v166, v170, v171, v172.value, *&v172.timescale, v172.epoch, v173, v174.value, *&v174.timescale, v174.epoch, v175, *&rhs.value, rhs.epoch);
        fpfs_GetTime(v15, &rhs);
        OUTLINED_FUNCTION_77();
        v49 = OUTLINED_FUNCTION_499(v41, v42, v43, v44, v45, v46, v47, v48, v143, v148, v153, v159, v163, v167, v170, v171, v172.value, *&v172.timescale, v172.epoch, v173, v174.value);
        v51 = CMTimeCompare(v49, v50) > 0;
LABEL_10:
        if (v51)
        {
          *(DerivedStorage + 1616) = *v8;
          *(DerivedStorage + 1632) = *(DerivedStorage + 1656);
          *&v89 = OUTLINED_FUNCTION_800(MEMORY[0x1E6960C70]).n128_u64[0];
          if (dword_1EAF169F0)
          {
            LODWORD(v174.value) = 0;
            LOBYTE(v172.value) = 0;
            v90 = OUTLINED_FUNCTION_638(qword_1EAF169E8, v83, &v174, v84, v85, v86, v87, v88, v142, v147, v152, v89);
            OUTLINED_FUNCTION_306(v90, v91, v92, v93, v94, v95, v96, v97, v145, v150, v155, v158, v12, v166, v170, v171, v172.value, *&v172.timescale, v172.epoch, v173, v174.value);
            OUTLINED_FUNCTION_37();
            if (v9)
            {
              if (*v15)
              {
                v98 = (CMBaseObjectGetDerivedStorage() + 888);
              }

              else
              {
                v98 = "";
              }

              v156 = v98;
              v108 = (DerivedStorage + 1616);
              if (v10)
              {
                v109 = (CMBaseObjectGetDerivedStorage() + 3096);
              }

              else
              {
                v109 = "";
              }

              fpfs_GetTime(v15, &time);
              Seconds = CMTimeGetSeconds(&time);
              if (v15 == DerivedStorage)
              {
                v111 = "needsMoreTimer";
              }

              else
              {
                v111 = "testTimer";
              }

              time = *v108;
              CMTimeGetSeconds(&time);
              LODWORD(rhs.value) = 136316930;
              OUTLINED_FUNCTION_468();
              v177 = v156;
              *v178 = v112;
              *&v178[2] = v10;
              v179 = v113;
              *v180 = v109;
              *&v180[8] = v112;
              *&v180[10] = Seconds;
              *&v180[18] = v113;
              v181 = v111;
              LOWORD(v182) = v112;
              *(&v182 + 2) = v114;
              OUTLINED_FUNCTION_145();
              OUTLINED_FUNCTION_27();
              OUTLINED_FUNCTION_200();
              _os_log_send_and_compose_impl(v115, v116, v117, v118, v119, v120, v121, v122);
              OUTLINED_FUNCTION_776();
            }

            OUTLINED_FUNCTION_7();
            OUTLINED_FUNCTION_449(v123, v124, v125, v126, v127);
            v12 = v165;
          }

LABEL_46:

          fpfs_UnlockAndPostNotificationsWithCaller(v12);
          CFRelease(v10);
          CFRelease(v12);
          return;
        }

LABEL_16:
        v99 = MEMORY[0x1E6960C70];
        *(DerivedStorage + 1616) = *MEMORY[0x1E6960C70];
        *(DerivedStorage + 1632) = *(v99 + 16);
        memset(&v174, 0, sizeof(v174));
        OUTLINED_FUNCTION_335();
        fpfs_GetTime(DerivedStorage, &v172);
        if (dword_1EAF169F0)
        {
          OUTLINED_FUNCTION_427();
          v107 = OUTLINED_FUNCTION_371(qword_1EAF169E8, v100, v101, v102, v103, v104, v105, v106, v142, v147, v152, v158, v162, v166, SBYTE2(v166), SBYTE3(v166), SBYTE4(v166));
          os_log_type_enabled(v107, type);
          OUTLINED_FUNCTION_28();
          if (v8)
          {
            if (v12)
            {
              v128 = (CMBaseObjectGetDerivedStorage() + 888);
            }

            else
            {
              v128 = "";
            }

            if (v10)
            {
              v129 = (CMBaseObjectGetDerivedStorage() + 3096);
            }

            else
            {
              v129 = "";
            }

            time = v172;
            CMTimeGetSeconds(&time);
            LODWORD(rhs.value) = 136316418;
            OUTLINED_FUNCTION_468();
            v177 = v128;
            *v178 = v130;
            *&v178[2] = v10;
            v179 = v131;
            *v180 = v129;
            *&v180[8] = v130;
            *&v180[10] = v132;
            OUTLINED_FUNCTION_127();
            OUTLINED_FUNCTION_23();
            _os_log_send_and_compose_impl(v133, v134, v135, v136, v137, v138, type, v139, &rhs);
          }

          OUTLINED_FUNCTION_2();
          fig_log_call_emit_and_clean_up_after_send_and_compose();
        }

        if (*(DerivedStorage + 912))
        {
          OUTLINED_FUNCTION_198();
          fpfs_CheckPrebufferedLevels();
        }

        v140 = *(DerivedStorage + 1680);
        if (v140 && FigAlternateIsIFrameOnly(v140) && *(DerivedStorage + 1541))
        {
          if (*(DerivedStorage + 1196))
          {
            time = *(DerivedStorage + 1184);
            rhs = *(DerivedStorage + 1160);
            CMTimeSubtract(&v174, &time, &rhs);
          }

          else
          {
            v174 = *(DerivedStorage + 1496);
          }

          fpfs_CurrentSubStreamBufferedDuration(*(DerivedStorage + 1088), &time);
          rhs = v174;
          fpfs_RequestNextIFrameStepUnlocked(v10, &rhs, &time);
        }

        fpfsi_TrimCachedSamplesFromItem();
        goto LABEL_46;
      }

      v17 = *(v16 + 108);
    }

    if (v17 >= 0.0)
    {
      goto LABEL_16;
    }

    OUTLINED_FUNCTION_302();
    CMTimeSubtract(v54, v52, v53);
    OUTLINED_FUNCTION_77();
    v63 = OUTLINED_FUNCTION_499(v55, v56, v57, v58, v59, v60, v61, v62, v142, v147, v152, v158, v162, v166, v170, v171, v172.value, *&v172.timescale, v172.epoch, v173, v174.value);
    v65 = CMTimeCompare(v63, v64);
    if ((v65 & 0x80000000) == 0)
    {
      goto LABEL_16;
    }

    OUTLINED_FUNCTION_469(v65, v66, v67, v68, v69, v70, v71, v72, v142, v147, v152, v158, v162, v166, v170, v171, v172.value, *&v172.timescale, v172.epoch, v173, v174.value, *&v174.timescale, v174.epoch, v175, *&rhs.value, rhs.epoch);
    fpfs_GetTime(v15, &rhs);
    OUTLINED_FUNCTION_77();
    v81 = OUTLINED_FUNCTION_499(v73, v74, v75, v76, v77, v78, v79, v80, v144, v149, v154, v160, v164, v168, v170, v171, v172.value, *&v172.timescale, v172.epoch, v173, v174.value);
    v51 = CMTimeCompare(v81, v82) >> 31;
    goto LABEL_10;
  }
}

uint64_t fpfs_CreateItemAndTrackNumberPayload(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v13 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v4 = *(a2 + 32);
  }

  else
  {
    v4 = -1;
  }

  v10 = v4;
  if (!a1)
  {
    return 0;
  }

  v5 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt64Type, &v10);
  if (!v5)
  {
    OUTLINED_FUNCTION_376();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v10, values, v12);
    return 0;
  }

  v6 = v5;
  values = *(CMBaseObjectGetDerivedStorage() + 16);
  v12 = v6;
  AllocatorForMedia = FigGetAllocatorForMedia();
  CFArrayCreate(AllocatorForMedia, &values, 2, MEMORY[0x1E695E9C0]);
  v8 = OUTLINED_FUNCTION_519();
  CFRelease(v8);
  return v3;
}

uint64_t fpfs_RemoveFromPrebufferArrayGuts()
{
  OUTLINED_FUNCTION_261();
  CMBaseObjectGetDerivedStorage();
  OUTLINED_FUNCTION_199();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  OUTLINED_FUNCTION_294(DerivedStorage);
  FigSimpleMutexLock();
  OUTLINED_FUNCTION_224();
  if (!*(v1 + 52))
  {
    if (v2)
    {
      if (fpfs_CheckItem(v0, v2))
      {
        if (*(v1 + 976))
        {
          if (FigCFArrayGetFirstIndexOfValue() == -1)
          {
            OUTLINED_FUNCTION_243();
            FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
          }

          else
          {
            fpfsi_ResetPrebufferingItem(v2);
            FigCFArrayRemoveFirstElementOfValue();
          }
        }
      }

      else
      {
        OUTLINED_FUNCTION_243();
        FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
      }
    }

    else
    {
      v4 = *(v1 + 976);
      if (v4 && CFArrayGetCount(v4) >= 1)
      {
        do
        {
          ValueAtIndex = CFArrayGetValueAtIndex(*(v1 + 976), 0);
          fpfsi_ResetPrebufferingItem(ValueAtIndex);
          CFArrayRemoveValueAtIndex(*(v1 + 976), 0);
        }

        while (CFArrayGetCount(*(v1 + 976)) > 0);
      }
    }
  }

  return fpfs_UnlockAndPostNotificationsWithCaller(v0);
}

void fpfs_EnqueuePossibleEndOfMediaData(uint64_t a1)
{
  v10 = 0;
  FigGetAllocatorForMedia();
  OUTLINED_FUNCTION_441();
  OUTLINED_FUNCTION_19();
  if (!CMSampleBufferCreate(v2, v3, v4, v5, v6, v7, v8, v9, 0, 0, 0, &v10))
  {
    CMSetAttachment(v10, *MEMORY[0x1E6962DF8], *MEMORY[0x1E695E4D0], 1u);
    fpfsi_logAttachMarker(a1);
    fpfs_RenderBufferOrEnqueueToStartupQueue(a1, v10);
  }

  if (v10)
  {
    CFRelease(v10);
  }
}

uint64_t fpfsi_CopyCurrentDateAndTime()
{
  OUTLINED_FUNCTION_187();
  CMBaseObjectGetDerivedStorage();
  OUTLINED_FUNCTION_230();
  fpfs_GetNextTimeToPlay(v1, 0, v2);
  v36 = 0;
  OUTLINED_FUNCTION_29();
  if (!v11)
  {
    return 4294950069;
  }

  OUTLINED_FUNCTION_150(v3, v4, v5, v6, v7, v8, v9, v10, v30, v31, v32, v33, v34, v35, v36, v37);
  v12 = v36;
  if (fpfsi_CopyDateForTime())
  {
    v13 = 0;
    v14 = 0.0;
  }

  else
  {
    v14 = MEMORY[0x19A8CCD90](v36);
    v13 = 1;
  }

  AllocatorForMedia = FigGetAllocatorForMedia();
  OUTLINED_FUNCTION_150(AllocatorForMedia, AllocatorForMedia, v16, v17, v18, v19, v20, v21, v30, v31, v32, v33, v34, v35, v36, v37);
  v33 = *&v14;
  LOBYTE(v34) = 1;
  BYTE1(v34) = v13;
  *(&v34 + 2) = 0;
  HIWORD(v34) = 0;
  *v0 = FigDateTimeMomentCopyAsDictionary(&v30, v22, v23, v24, v25, v26, v27, v28);
  if (v12)
  {
    CFRelease(v12);
  }

  return 0;
}

uint64_t fpfsi_createTrackIDArray()
{
  OUTLINED_FUNCTION_629();
  v20 = v0;
  v21 = v1;
  v3 = v2;
  v5 = v4;
  OUTLINED_FUNCTION_570();
  AllocatorForMedia = FigGetAllocatorForMedia();
  Mutable = CFArrayCreateMutable(AllocatorForMedia, 0, MEMORY[0x1E695E9C0]);
  if (Mutable)
  {
    LoggingIDForTrackList = fpfsi_createLoggingIDForTrackList(v5, @":TrackIDArray");
    v9 = 0;
    while (1)
    {
      v10 = FigGetAllocatorForMedia();
      LastPlayingTracksForMediaType = FigStreamTrackListCreate(v10, LoggingIDForTrackList, &v18);
      if (LastPlayingTracksForMediaType)
      {
        goto LABEL_23;
      }

      LastPlayingTracksForMediaType = fpfsi_findLastPlayingTracksForMediaType(v5);
      if (LastPlayingTracksForMediaType)
      {
        goto LABEL_23;
      }

      v12 = FigGetAllocatorForMedia();
      LastPlayingTracksForMediaType = FigStreamTrackListCreateIterator(v12, v18, &v17);
      if (LastPlayingTracksForMediaType)
      {
        goto LABEL_23;
      }

      Count = FigStreamTrackListGetCount(v18);
      if (v9 == 2)
      {
        if (Count > 4)
        {
          goto LABEL_33;
        }
      }

      else if (Count > 1)
      {
LABEL_33:
        v14 = 4294950069;
        goto LABEL_24;
      }

      FigStreamTrackListIteratorResetAndCopyTrack(v17, &cf);
      while (cf)
      {
        FigStreamTrackGetTrackNumber(cf);
        OUTLINED_FUNCTION_399();
        FigCFArrayAppendInt32();
        if (cf)
        {
          CFRelease(cf);
        }

        cf = 0;
        FigStreamTrackListIteratorCopyNextTrack(v17, &cf);
      }

      if (v17)
      {
        CFRelease(v17);
        v17 = 0;
      }

      if (v18)
      {
        CFRelease(v18);
        v18 = 0;
      }

      if (++v9 == 5)
      {
        if (CFArrayGetCount(Mutable))
        {
          v14 = 0;
          *v3 = Mutable;
          Mutable = 0;
          goto LABEL_24;
        }

        OUTLINED_FUNCTION_239();
        FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v16, v17, v18);
LABEL_23:
        v14 = LastPlayingTracksForMediaType;
        goto LABEL_24;
      }
    }
  }

  LoggingIDForTrackList = 0;
  v14 = 4294954434;
LABEL_24:
  if (v18)
  {
    CFRelease(v18);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  if (LoggingIDForTrackList)
  {
    CFRelease(LoggingIDForTrackList);
  }

  if (v17)
  {
    CFRelease(v17);
  }

  return v14;
}

uint64_t fpfsi_copyPlaybackRateMonitorProperty(uint64_t a1)
{
  if (!*(a1 + 96))
  {
    return 4294954368;
  }

  OUTLINED_FUNCTION_471();
  FigGetAllocatorForMedia();
  OUTLINED_FUNCTION_398();
  if (!*(*(CMBaseObjectGetVTable() + 8) + 48))
  {
    return 4294954514;
  }

  v1 = OUTLINED_FUNCTION_171();

  return v2(v1);
}

void fpfsi_handleSetProperty()
{
  OUTLINED_FUNCTION_460();
  v568 = v0;
  v569 = v1;
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v561 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v12 = *DerivedStorage;
  v13 = CMBaseObjectGetDerivedStorage();
  *v4 = 1;
  v14 = CMBaseObjectGetDerivedStorage();
  OUTLINED_FUNCTION_740(v14);
  FigSimpleMutexLock();
  ++*(v4 + 8);
  if (FigRetainProxyIsInvalidated())
  {
    goto LABEL_40;
  }

  if (CFEqual(v8, @"PlaybackItemProperties"))
  {
    if (v6)
    {
      v15 = CFGetTypeID(v6);
      if (v15 == CFDictionaryGetTypeID())
      {
        seconds.value = 0;
        if (FigCFDictionaryGetDoubleIfPresent())
        {
          CMTimeMakeWithSeconds(&time, *&seconds.value, 1000);
          *(DerivedStorage + 224) = time;
        }

        v16 = *MEMORY[0x1E695E4D0];
        if (v16 == CFDictionaryGetValue(v6, @"OverrideHEAACPrimingEditList"))
        {
          *(DerivedStorage + 873) = 1;
        }
      }
    }

    goto LABEL_12;
  }

  if (CFEqual(v8, @"OutputQTESFilePath") || CFEqual(v8, @"AvailableFileSize") || CFEqual(v8, @"ChosenAlternateTrackIDDictionary"))
  {
    goto LABEL_12;
  }

  if (!CFEqual(v8, @"EndTime"))
  {
    if (CFEqual(v8, @"TimeToPauseBuffering"))
    {
      if (v6)
      {
        TypeID = CFDictionaryGetTypeID();
        if (TypeID != CFGetTypeID(v6))
        {
          goto LABEL_12;
        }

        memset(&time, 0, sizeof(time));
        v22 = OUTLINED_FUNCTION_440();
        CMTimeMakeFromDictionary(v23, v22);
      }

      else
      {
        OUTLINED_FUNCTION_232(MEMORY[0x1E6960C70]);
        time.epoch = v27;
      }

      v28 = OUTLINED_FUNCTION_428();
      goto LABEL_28;
    }

    if (CFEqual(v8, @"TimeToPausePlayback"))
    {
      if (v6)
      {
        v24 = CFDictionaryGetTypeID();
        if (v24 != CFGetTypeID(v6))
        {
          goto LABEL_12;
        }

        memset(&time, 0, sizeof(time));
        v25 = OUTLINED_FUNCTION_440();
        CMTimeMakeFromDictionary(v26, v25);
      }

      else
      {
        OUTLINED_FUNCTION_232(MEMORY[0x1E6960C70]);
        time.epoch = v44;
      }

      v45 = OUTLINED_FUNCTION_428();
      fpfsi_applyTimeToPausePlayback(v45, v46, v47, 1, 0);
      goto LABEL_12;
    }

    if (CFEqual(v8, @"AssociatedPlaybackDurationWhilePaused"))
    {
      v31 = OUTLINED_FUNCTION_440();
      CMTimeMakeFromDictionary(v32, v31);
      *(DerivedStorage + 3344) = time;
      goto LABEL_12;
    }

    if (CFEqual(v8, @"SnapTimeToPausePlayback"))
    {
      v48 = FigCFEqual();
      if (*(DerivedStorage + 466) == v48)
      {
        goto LABEL_12;
      }

      *(DerivedStorage + 466) = v48;
      time = *(DerivedStorage + 1424);
      v49 = OUTLINED_FUNCTION_748();
      fpfsi_applyTimeToPausePlayback(v49, v50, 0, 1, 0);
      time = *(DerivedStorage + 1400);
      v28 = OUTLINED_FUNCTION_748();
      v30 = 1;
LABEL_28:
      fpfsi_applyTimeToPauseBuffering(v28, v29, v30);
      goto LABEL_12;
    }

    if (CFEqual(v8, @"AutomaticallyHandlesInterstitialEvents"))
    {
      CFBooleanGetTypeID();
      v70 = OUTLINED_FUNCTION_411();
      if (v2 != CFGetTypeID(v70))
      {
        goto LABEL_12;
      }

      OUTLINED_FUNCTION_438();
      *(DerivedStorage + 467) = v71;
      if (!dword_1EAF169F0)
      {
        goto LABEL_12;
      }

      OUTLINED_FUNCTION_781();
      v72 = OUTLINED_FUNCTION_225();
      v80 = OUTLINED_FUNCTION_510(v72, v73, v74, v75, v76, v77, v78, v79, v499, v504, v509, v515, v521, v527, SBYTE4(v527));
      OUTLINED_FUNCTION_820(v80, v81, v82, v83, v84, v85, v86, v87, v500, v505, v510, v517, v523, v528, v533);
      OUTLINED_FUNCTION_46();
      if (v13)
      {
        v88 = *DerivedStorage;
        if (*DerivedStorage)
        {
          v89 = (CMBaseObjectGetDerivedStorage() + 888);
        }

        else
        {
          v89 = "";
        }

        if (v10)
        {
          CMBaseObjectGetDerivedStorage();
        }

        LODWORD(seconds.value) = 136316418;
        OUTLINED_FUNCTION_536();
        *(&seconds.flags + 2) = v88;
        OUTLINED_FUNCTION_768();
        v538 = v89;
        *v539 = v101;
        *&v539[2] = v10;
        OUTLINED_FUNCTION_682();
        *&v539[20] = 1024;
        *&v539[22] = v102;
        OUTLINED_FUNCTION_32();
        v103 = OUTLINED_FUNCTION_30();
        OUTLINED_FUNCTION_448(v103, v104, v105, v106, v107, v108, v109, v110);
      }

      OUTLINED_FUNCTION_4();
LABEL_99:
      fig_log_call_emit_and_clean_up_after_send_and_compose();
      goto LABEL_12;
    }

    if (CFEqual(v8, @"ReverseEndTime"))
    {
      if (v6)
      {
        CFDictionaryGetTypeID();
        v93 = OUTLINED_FUNCTION_411();
        if (v2 == CFGetTypeID(v93))
        {
          v94 = OUTLINED_FUNCTION_440();
          CMTimeMakeFromDictionary(v95, v94);
          *(DerivedStorage + 1376) = time;
          fpfs_scheduleReverseEndTimeTimer(v10);
        }
      }

      else
      {
        v96 = MEMORY[0x1E6960C70];
        *(DerivedStorage + 1376) = *MEMORY[0x1E6960C70];
        *(DerivedStorage + 1392) = *(v96 + 16);
      }

      goto LABEL_12;
    }

    if (CFEqual(v8, @"EQPreset"))
    {
      LODWORD(time.value) = 0;
      if (v6 && CFNumberGetValue(v6, kCFNumberIntType, &time))
      {
        fpfsi_setEQPreset(v10, time.value);
      }

      goto LABEL_12;
    }

    if (CFEqual(v8, @"AudioDeviceChannelMap"))
    {
      if (v6)
      {
        CFDataGetTypeID();
        v97 = OUTLINED_FUNCTION_411();
        if (v2 != CFGetTypeID(v97))
        {
          goto LABEL_12;
        }
      }

      time.value = @"AudioDeviceChannelMap";
      *&time.timescale = v6;
      v98 = *(DerivedStorage + 1816);
      *(DerivedStorage + 1816) = v6;
      if (!v6)
      {
        goto LABEL_91;
      }

      goto LABEL_90;
    }

    if (CFEqual(v8, @"QualityGear"))
    {
      v111 = *(DerivedStorage + 96);
      if (v111)
      {
        CMBaseObjectSetProperty(v111, @"AfmfpbProperty_QualityGear", v6);
      }

      *(v13 + 458) = 0;
      goto LABEL_12;
    }

    if (CFEqual(v8, @"SynchronizedLayers"))
    {
      v112 = objc_autoreleasePoolPush();
      if (!v6 || (v113 = CFArrayGetTypeID(), v113 == CFGetTypeID(v6)))
      {
        v114 = *(DerivedStorage + 704);
        if (v114)
        {
          CFRelease(v114);
          *(DerivedStorage + 704) = 0;
        }

        if (v6 && (AllocatorForMedia = FigGetAllocatorForMedia(), Copy = CFArrayCreateCopy(AllocatorForMedia, v6), (*(DerivedStorage + 704) = Copy) == 0))
        {
          OUTLINED_FUNCTION_15();
          FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v499, v504, v509);
        }

        else if (*(v13 + 80) == v10)
        {
          time.value = 0;
          fpfs_ensureTransaction(v12, &time.value);
          v127 = OUTLINED_FUNCTION_687();
          fpfs_createOrUpdateLayerSync(v127, v128, v129, v130, v131, v132, v133, v134, v499, v504, v509, v515, SBYTE2(v515), BYTE3(v515), SHIDWORD(v515), v521, v527, *&seconds.value, seconds.epoch, v538, *v539, *&v539[8], *&v539[16], *&v539[24], v540, *(&v540 + 1), v541, v542, *(&v542 + 1), v543, time.value, *&time.timescale, time.epoch, v545, v546, v547, v548, v549, v550, v551, v552, v553, v554, v555, v556, v557, value, v559, v560, v561);
          if (!v135 && *(DerivedStorage + 688))
          {
            fpfsi_synchronizeLayerToTimebaseWithTransaction(v10, *(v13 + 880));
          }

          fpfs_commitTransaction(v12, time.value);
          if (time.value)
          {
            CFRelease(time.value);
          }
        }
      }

      objc_autoreleasePoolPop(v112);
      goto LABEL_12;
    }

    if (CFEqual(v8, @"VideoEnhancementMode"))
    {
      if (v6)
      {
        v117 = CFGetTypeID(v6);
        if (v117 == CFStringGetTypeID())
        {
          if (!FigCFEqual())
          {
            v118 = *(DerivedStorage + 712);
            *(DerivedStorage + 712) = v6;
            CFRetain(v6);
            if (v118)
            {
              CFRelease(v118);
            }

            v119 = OUTLINED_FUNCTION_178();
            fpfsi_setVideoEnhancementModeOnImageQueues(v119, v120);
          }

          goto LABEL_12;
        }
      }

      goto LABEL_40;
    }

    if (CFEqual(v8, @"RestrictsAutomaticMediaSelectionToAvailableOfflineOptions"))
    {
      if (v6)
      {
        v121 = CFGetTypeID(v6);
        if (v121 == CFBooleanGetTypeID())
        {
          *(DerivedStorage + 1844) = CFBooleanGetValue(v6);
          goto LABEL_12;
        }
      }

      goto LABEL_40;
    }

    if (CFEqual(v8, @"RequiresExternalProtection"))
    {
      if (v6)
      {
        v122 = CFGetTypeID(v6);
        if (v122 == CFBooleanGetTypeID())
        {
          if (CFBooleanGetValue(v6))
          {
            time.value = 1;
            v123 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt64Type, &time);
            v124 = v123;
            v125 = *(DerivedStorage + 1848);
            *(DerivedStorage + 1848) = v123;
            if (v123)
            {
              CFRetain(v123);
            }

            if (v125)
            {
              CFRelease(v125);
            }

            if (*(DerivedStorage + 912))
            {
              FigBytePumpGetFigBaseObject();
              CMBaseObjectSetProperty(v126, 0x1F0B1F1B8, v124);
            }

            goto LABEL_149;
          }
        }
      }

LABEL_40:
      OUTLINED_FUNCTION_15();
LABEL_41:
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
      goto LABEL_12;
    }

    if (CFEqual(v8, @"estimatedCurrentDate"))
    {
      if (*(DerivedStorage + 912))
      {
        OUTLINED_FUNCTION_15();
        FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
        goto LABEL_12;
      }

      v124 = *(DerivedStorage + 1584);
      *(DerivedStorage + 1584) = v6;
      if (!v6)
      {
        goto LABEL_149;
      }

      goto LABEL_148;
    }

    if (CFEqual(v8, @"currentDate"))
    {
      v136 = OUTLINED_FUNCTION_178();
      fpfsi_SeekToDateWithID(v136, v137, 0);
      goto LABEL_12;
    }

    if (CFEqual(v8, @"SelectedMediaArray"))
    {
      if (v6)
      {
        v139 = CFGetTypeID(v6);
        if (v139 == CFArrayGetTypeID())
        {
          OUTLINED_FUNCTION_178();
          fpfs_SetClientMediaArray();
          goto LABEL_12;
        }
      }

      goto LABEL_40;
    }

    if (CFEqual(v8, @"MediaPresentationLanguages"))
    {
      if (!v6)
      {
        v141 = *(DerivedStorage + 1784);
        *(DerivedStorage + 1784) = 0;
        goto LABEL_179;
      }

      v140 = CFGetTypeID(v6);
      if (v140 != CFDictionaryGetTypeID())
      {
        goto LABEL_40;
      }

      v141 = *(DerivedStorage + 1784);
      *(DerivedStorage + 1784) = v6;
LABEL_165:
      CFRetain(v6);
LABEL_179:
      if (v141)
      {
        CFRelease(v141);
      }

      v147 = OUTLINED_FUNCTION_198();
      fpfs_applyAutoSelectionCriteria(v147, v148);
      goto LABEL_12;
    }

    if (CFEqual(v8, @"kFigPlaybackItemProperty_MediaPresentationCharacteristics"))
    {
      if (!v6)
      {
        v141 = *(DerivedStorage + 1792);
        *(DerivedStorage + 1792) = 0;
        goto LABEL_179;
      }

      v142 = CFGetTypeID(v6);
      if (v142 != CFDictionaryGetTypeID())
      {
        goto LABEL_40;
      }

      v141 = *(DerivedStorage + 1792);
      *(DerivedStorage + 1792) = v6;
      goto LABEL_165;
    }

    if (CFEqual(v8, @"ItemCoordinationMediaSelectionCriteria"))
    {
      if (!v6 || (CFDictionaryGetTypeID(), v143 = OUTLINED_FUNCTION_773(), v8 == CFGetTypeID(v143)))
      {
        if (!FigCFEqual())
        {
          v144 = *(DerivedStorage + 1808);
          *(DerivedStorage + 1808) = v6;
          if (v6)
          {
            CFRetain(v6);
          }

          if (v144)
          {
            CFRelease(v144);
          }

          v145 = OUTLINED_FUNCTION_245();
          fpfs_applyAutoSelectionCriteriaOnItem(v145, v146);
        }

        goto LABEL_12;
      }

      goto LABEL_40;
    }

    if (CFEqual(v8, @"PreferredMaximumBufferDuration"))
    {
      if (v6)
      {
        v149 = CFGetTypeID(v6);
        v150 = CFNumberGetTypeID();
        if (v149 == v150)
        {
          OUTLINED_FUNCTION_129(v150, v151, v152, v153, v154, v155, v156, v157, v499, v504, v509, v515, v521, v527, seconds.value, *&seconds.timescale, seconds.epoch, v538, *v539, *&v539[8], *&v539[16], *&v539[24], v540, *(&v540 + 1), v541, v542, *(&v542 + 1), v543, time.value);
          if ((time.value & 0x80000000) == 0)
          {
            *(DerivedStorage + 2260) = time.value;
            OUTLINED_FUNCTION_245();
            fpfsi_UpdateHighWaterSecs();
            goto LABEL_12;
          }
        }
      }

      goto LABEL_40;
    }

    if (CFEqual(v8, @"MaximumTrailingBufferDuration"))
    {
      if (v6)
      {
        v158 = CFGetTypeID(v6);
        v159 = CFNumberGetTypeID();
        if (v158 == v159)
        {
          OUTLINED_FUNCTION_129(v159, v160, v161, v162, v163, v164, v165, v166, v499, v504, v509, v515, v521, v527, seconds.value, *&seconds.timescale, seconds.epoch, v538, *v539, *&v539[8], *&v539[16], *&v539[24], v540, *(&v540 + 1), v541, v542, *(&v542 + 1), v543, time.value);
          *(DerivedStorage + 2304) = time.value;
          OUTLINED_FUNCTION_245();
          fpfsi_UpdateCacheBehindSecs();
          goto LABEL_12;
        }
      }

      goto LABEL_40;
    }

    if (CFEqual(v8, @"TextMarkupArray"))
    {
      v167 = *(DerivedStorage + 808);
      if (v6)
      {
        v168 = CFGetTypeID(v6);
        if (v168 == CFArrayGetTypeID())
        {
          v169 = *(DerivedStorage + 1824);
          if (v169)
          {
            CFRelease(v169);
            *(DerivedStorage + 1824) = 0;
          }

          v170 = 0;
          *(DerivedStorage + 1824) = CFRetain(v6);
        }

        else
        {
          OUTLINED_FUNCTION_15();
          FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v499, v504, v509);
          v170 = v176;
        }
      }

      else
      {
        v175 = *(DerivedStorage + 1824);
        if (v175)
        {
          CFRelease(v175);
          v170 = 0;
          *(DerivedStorage + 1824) = 0;
        }

        else
        {
          v170 = 0;
        }
      }

      if (!v170 && v167)
      {
        v179 = *(DerivedStorage + 1024);
        if (!v179)
        {
          goto LABEL_238;
        }

        OUTLINED_FUNCTION_756();
        do
        {
          if (*(v179 + 48) == &time)
          {
            v181 = *(v179 + 112);
            v182 = !v181 || v181 == v180;
            if (!v182)
            {
              fpfs_setPropertyOnPrimaryAndAuxRenderPipelines();
              v180 = v181;
            }
          }

          v179 = *(v179 + 24);
        }

        while (v179);
        if (v167 != v180)
        {
LABEL_238:
          OUTLINED_FUNCTION_827();
        }
      }

      v183 = *(DerivedStorage + 888);
      if (!v183)
      {
        goto LABEL_12;
      }

      v184 = @"TextMarkupArray";
      v185 = *(DerivedStorage + 1824);
      goto LABEL_254;
    }

    if (CFEqual(v8, @"TextHighlightArray"))
    {
      v171 = *(DerivedStorage + 808);
      if (v6)
      {
        v172 = CFGetTypeID(v6);
        if (v172 == CFArrayGetTypeID())
        {
          v173 = *(DerivedStorage + 1832);
          if (v173)
          {
            CFRelease(v173);
            *(DerivedStorage + 1832) = 0;
          }

          v174 = 0;
          *(DerivedStorage + 1832) = CFRetain(v6);
        }

        else
        {
          OUTLINED_FUNCTION_15();
          FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v499, v504, v509);
          v174 = v186;
        }
      }

      else
      {
        v178 = *(DerivedStorage + 1832);
        if (v178)
        {
          CFRelease(v178);
          v174 = 0;
          *(DerivedStorage + 1832) = 0;
        }

        else
        {
          v174 = 0;
        }
      }

      if (!v174 && v171)
      {
        v188 = *(DerivedStorage + 1024);
        if (!v188)
        {
          goto LABEL_257;
        }

        OUTLINED_FUNCTION_756();
        do
        {
          if (*(v188 + 48) == &time)
          {
            v190 = *(v188 + 112);
            if (v190 && v190 != v189)
            {
              fpfs_setPropertyOnPrimaryAndAuxRenderPipelines();
              v189 = v190;
            }
          }

          v188 = *(v188 + 24);
        }

        while (v188);
        if (v171 != v189)
        {
LABEL_257:
          OUTLINED_FUNCTION_827();
        }
      }

      v183 = *(DerivedStorage + 888);
      if (!v183)
      {
        goto LABEL_12;
      }

      v184 = @"TextHighlightArray";
      v185 = *(DerivedStorage + 1832);
LABEL_254:
      FigOutOfBandTrackControllerSetProperty(v183, v184, v185);
      goto LABEL_12;
    }

    if (CFEqual(v8, @"LegibleOutputs"))
    {
      if (!v6 || (v177 = CFGetTypeID(v6), v177 == CFDictionaryGetTypeID()))
      {
        OUTLINED_FUNCTION_178();
        fpfsi_setLegibleOutputsDictionary();
        goto LABEL_12;
      }

      goto LABEL_40;
    }

    if (CFEqual(v8, @"MetadataOutputs"))
    {
      if (!v6 || (v187 = CFGetTypeID(v6), v187 == CFDictionaryGetTypeID()))
      {
        OUTLINED_FUNCTION_178();
        fpfsi_setMetadataOutputsDictionary();
        goto LABEL_12;
      }

      goto LABEL_40;
    }

    if (CFEqual(v8, @"VisualContextArray"))
    {
      v192 = OUTLINED_FUNCTION_178();
      fpfsi_setVisualContextArray(v192, v193);
      goto LABEL_12;
    }

    if (CFEqual(v8, @"SuppressVideoLayers"))
    {
      v194 = OUTLINED_FUNCTION_115();
      fpfsi_setSuppressVideoLayers(v194);
      goto LABEL_12;
    }

    if (CFEqual(v8, @"SuppressLegibleRendering"))
    {
      OUTLINED_FUNCTION_438();
      *(DerivedStorage + 846) = v195;
      goto LABEL_12;
    }

    if (CFEqual(v8, @"ApertureMode"))
    {
      if (v6)
      {
        v196 = CFGetTypeID(v6);
        if (v196 == CFStringGetTypeID())
        {
          if (CFEqual(v6, @"CleanAperture"))
          {
            v208 = 1;
            v209 = 1;
          }

          else if (CFEqual(v6, @"ProductionAperture"))
          {
            v209 = 0;
            v208 = 1;
          }

          else
          {
            if (!CFEqual(v6, @"EncodedPixels"))
            {
              goto LABEL_270;
            }

            v208 = 0;
            v209 = 0;
          }

          *(DerivedStorage + 844) = v208;
          *(DerivedStorage + 845) = v209;
          goto LABEL_308;
        }
      }

LABEL_270:
      OUTLINED_FUNCTION_111();
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v499, v504, v509);
      if (v197)
      {
        goto LABEL_12;
      }

LABEL_308:
      fpfsi_updateVideoChannelSettingForAllVideoTracks(v10);
      fpfsi_setCAImageQueueFlagsForItem(v10);
      goto LABEL_12;
    }

    if (CFEqual(v8, @"Volume"))
    {
      if (v6)
      {
        v198 = CFGetTypeID(v6);
        if (v198 == CFNumberGetTypeID())
        {
          LODWORD(time.value) = 1065353216;
          CFNumberGetValue(v6, kCFNumberFloat32Type, &time);
          OUTLINED_FUNCTION_484();
          if (v200 ^ v201 | v182)
          {
            if (v199 < 0.0)
            {
              LODWORD(time.value) = 0;
              v199 = 0.0;
            }
          }

          else
          {
            LODWORD(time.value) = 1065353216;
            v199 = 1.0;
          }

          if (v199 != *(DerivedStorage + 1840))
          {
            fpfsi_applySoftwareVolume(v10, 3);
            if (!v206)
            {
              *(DerivedStorage + 1840) = time.value;
            }
          }

          goto LABEL_12;
        }
      }

      goto LABEL_40;
    }

    if (CFEqual(v8, @"DisplayNonForcedSubtitles"))
    {
      v210 = OUTLINED_FUNCTION_115();
      fpfsi_setNonForcedSubtitlesEnabled(v210);
      goto LABEL_12;
    }

    if (CFEqual(v8, @"ClientAuditToken"))
    {
      if (!v6)
      {
        goto LABEL_40;
      }

      CFDataGetTypeID();
      v202 = OUTLINED_FUNCTION_179();
      if (v10 != CFGetTypeID(v202))
      {
        goto LABEL_40;
      }

      v203 = *(DerivedStorage + 2376);
      *(DerivedStorage + 2376) = v6;
      CFRetain(v6);
      if (v203)
      {
        CFRelease(v203);
      }

      if (!*(DerivedStorage + 912))
      {
        goto LABEL_12;
      }

      v204 = 0x1F0B1F218;
LABEL_426:
      FigBytePumpGetFigBaseObject();
      CMBaseObjectSetProperty(v326, v204, v6);
      goto LABEL_12;
    }

    if (CFEqual(v8, @"ServiceIdentifier"))
    {
      if (!v6)
      {
        goto LABEL_40;
      }

      CFStringGetTypeID();
      v205 = OUTLINED_FUNCTION_179();
      if (v10 != CFGetTypeID(v205))
      {
        goto LABEL_40;
      }

      v124 = *(DerivedStorage + 2384);
      *(DerivedStorage + 2384) = v6;
      goto LABEL_148;
    }

    if (CFEqual(v8, @"allowProgressiveSwitchUp"))
    {
      *(DerivedStorage + 554) = *MEMORY[0x1E695E4D0] == v6;
    }

    else if (CFEqual(v8, @"allowProgressiveStartup"))
    {
      *(DerivedStorage + 555) = *MEMORY[0x1E695E4D0] == v6;
    }

    else
    {
      if (!CFEqual(v8, @"allowProgressiveResume"))
      {
        if (CFEqual(v8, @"AutomaticallyLoadedAssetProperties"))
        {
          if (!v6)
          {
            v124 = *(DerivedStorage + 144);
            *(DerivedStorage + 144) = 0;
            goto LABEL_149;
          }

          CFArrayGetTypeID();
          v207 = OUTLINED_FUNCTION_179();
          if (v10 == CFGetTypeID(v207))
          {
            v124 = *(DerivedStorage + 144);
            *(DerivedStorage + 144) = v6;
LABEL_148:
            CFRetain(v6);
LABEL_149:
            if (!v124)
            {
              goto LABEL_12;
            }

            v138 = v124;
            goto LABEL_151;
          }

          goto LABEL_606;
        }

        if (CFEqual(v8, @"AutomaticallyLoadedAssetTrackProperties"))
        {
          if (!v6)
          {
            v124 = *(DerivedStorage + 152);
            *(DerivedStorage + 152) = 0;
            goto LABEL_149;
          }

          CFArrayGetTypeID();
          v212 = OUTLINED_FUNCTION_179();
          if (v10 == CFGetTypeID(v212))
          {
            v124 = *(DerivedStorage + 152);
            *(DerivedStorage + 152) = v6;
            goto LABEL_148;
          }

LABEL_606:
          OUTLINED_FUNCTION_111();
          goto LABEL_41;
        }

        if (CFEqual(v8, @"MediaKind"))
        {
          if (!v6)
          {
            v214 = *(DerivedStorage + 2392);
            *(DerivedStorage + 2392) = 0;
LABEL_474:
            if (v214)
            {
              CFRelease(v214);
            }

            v351 = OUTLINED_FUNCTION_265();
            fpfsi_applyLoudnessInfo(v351, v352, 1);
            goto LABEL_12;
          }

          CFStringGetTypeID();
          v213 = OUTLINED_FUNCTION_179();
          if (v10 != CFGetTypeID(v213))
          {
            goto LABEL_606;
          }

          v214 = *(DerivedStorage + 2392);
          *(DerivedStorage + 2392) = v6;
LABEL_468:
          CFRetain(v6);
          goto LABEL_474;
        }

        if (CFEqual(v8, @"TimePitchAlgorithm"))
        {
          if (!*(DerivedStorage + 553))
          {
            v215 = OUTLINED_FUNCTION_178();
            fpfsi_setTimePitchAlgorithm(v215, v216);
          }

          goto LABEL_12;
        }

        if (CFEqual(v8, @"AdjustTargetLevel"))
        {
          if (v6)
          {
            CFNumberGetTypeID();
            v217 = OUTLINED_FUNCTION_179();
            if (v10 == CFGetTypeID(v217))
            {
              v218 = *(DerivedStorage + 3168);
              *(DerivedStorage + 3168) = v6;
              CFRetain(v6);
              if (v218)
              {
                CFRelease(v218);
              }

              v219 = OUTLINED_FUNCTION_265();
              fpfsi_applyAdjustTargetLevel(v219, v220);
              goto LABEL_12;
            }
          }

          goto LABEL_606;
        }

        if (CFEqual(v8, @"AdjustCompressionProfile"))
        {
          if (v6)
          {
            CFNumberGetTypeID();
            v221 = OUTLINED_FUNCTION_179();
            if (v10 == CFGetTypeID(v221))
            {
              v222 = *(DerivedStorage + 3176);
              *(DerivedStorage + 3176) = v6;
              CFRetain(v6);
              if (v222)
              {
                CFRelease(v222);
              }

              v223 = OUTLINED_FUNCTION_265();
              fpfsi_applyAdjustCompressionProfile(v223, v224);
              goto LABEL_12;
            }
          }

          goto LABEL_606;
        }

        if (CFEqual(v8, @"BandwidthCap"))
        {
          if (v6)
          {
            CFNumberGetTypeID();
            v225 = OUTLINED_FUNCTION_773();
            v226 = CFGetTypeID(v225);
            if (v8 == v226)
            {
              OUTLINED_FUNCTION_129(v226, v227, v228, v229, v230, v231, v232, v233, v499, v504, v509, v515, v521, v527, seconds.value, *&seconds.timescale, seconds.epoch, v538, *v539, *&v539[8], *&v539[16], *&v539[24], v540, *(&v540 + 1), v541, v542, *(&v542 + 1), v543, time.value);
              *(DerivedStorage + 2412) = time.value;
              v234 = OUTLINED_FUNCTION_245();
              fpfsi_UpdateBandwidthCap(v234, v235);
              goto LABEL_12;
            }
          }

          goto LABEL_606;
        }

        if (CFEqual(v8, @"BandwidthCapForExpensiveNetwork"))
        {
          if (v6)
          {
            CFNumberGetTypeID();
            v236 = OUTLINED_FUNCTION_500();
            if (v13 != CFGetTypeID(v236))
            {
              goto LABEL_606;
            }

            v243 = *(DerivedStorage + 2416);
            *(DerivedStorage + 2416) = v6;
            CFRetain(v6);
          }

          else
          {
            v243 = *(DerivedStorage + 2416);
            *(DerivedStorage + 2416) = 0;
          }

          if (v243)
          {
            CFRelease(v243);
          }

          OUTLINED_FUNCTION_178();
          fpfsi_setPreferredBitrateForExpensiveNetworks();
          goto LABEL_12;
        }

        if (CFEqual(v8, @"TimeOffsetFromLive"))
        {
          if (v6)
          {
            CFDictionaryGetTypeID();
            v237 = OUTLINED_FUNCTION_500();
            if (v13 == CFGetTypeID(v237))
            {
              v238 = OUTLINED_FUNCTION_440();
              CMTimeMakeFromDictionary(v239, v238);
              *(DerivedStorage + 632) = time;
              if (*(DerivedStorage + 912))
              {
                if ((*(DerivedStorage + 644) & 0x1D) == 1)
                {
                  FigBytePumpGetFigBaseObject();
                  CMBaseObjectSetProperty(v240, @"FBP_PrebufferReservation", v6);
                  fpfs_GetNextTimeToPlayIfEstablished(v10, &time);
                  value = time.value;
                  LODWORD(v559) = time.timescale;
                  flags = time.flags;
                  if ((time.flags & 0x1D) == 1)
                  {
                    epoch = time.epoch;
                    fpfsi_GetPumpMaxTimeAvailable(&time);
                    seconds.value = value;
                    seconds.timescale = v559;
                    seconds.flags = flags;
                    seconds.epoch = epoch;
                    if (CMTimeCompare(&seconds, &time) >= 1)
                    {
                      fpfsi_SetCurrentL3Time(v10, MEMORY[0x1E6960C88], 4);
                    }
                  }
                }
              }

              goto LABEL_12;
            }
          }

          goto LABEL_606;
        }

        if (CFEqual(v8, @"AutomaticallyPreservesTimeOffsetFromLive"))
        {
          if (v6)
          {
            CFBooleanGetTypeID();
            v244 = OUTLINED_FUNCTION_500();
            if (v13 == CFGetTypeID(v244))
            {
              OUTLINED_FUNCTION_438();
              if (*(DerivedStorage + 465) != v245)
              {
                *(DerivedStorage + 465) = v245;
                OUTLINED_FUNCTION_112((DerivedStorage + 408));
                *(DerivedStorage + 424) = v246;
                v247 = OUTLINED_FUNCTION_234();
                fpfs_GetNextTimeToPlay(v247, v248, v249);
                v250 = OUTLINED_FUNCTION_748();
                fpfsi_PrepareToStartWhenLikelyToKeepUp(v250, v251);
              }

              goto LABEL_12;
            }
          }

          goto LABEL_606;
        }

        if (CFEqual(v8, @"IFramePrefetchTargetDimensions"))
        {
          time.value = 0;
          *&time.timescale = 0;
          v252 = 0.0;
          if (v6)
          {
            v253 = CFGetTypeID(v6);
            v254 = CFDictionaryGetTypeID();
            if (v253 == v254)
            {
              OUTLINED_FUNCTION_856(v254, v255, v256, v257, v258, v259, v260, v261, *&v262, *&v264, v499, v504, v509, v515, v521, v527, seconds.value, *&seconds.timescale, seconds.epoch, v538, *v539, *&v539[8], *&v539[16], *&v539[24], v540, *(&v540 + 1), v541, v542, *(&v542 + 1), v543, *&v266);
              v252 = *&time.timescale;
            }
          }

          v268 = (DerivedStorage + 2488);
          if (v252 != *(DerivedStorage + 2496) || *&time.value != *v268)
          {
            *v268 = *&time.value;
            if (*(DerivedStorage + 2496) * *(DerivedStorage + 2488) > 0.0)
            {
              *(v13 + 872) = 1;
              if (*(DerivedStorage + 40))
              {
                if (!fpfsi_UpdateResourceSpecifierOnResourceArbiter(v10) && !fpfsi_ConfigureAlternateSelectionBossForScanningRole(v10, v269, v270, v271, v272, v273, v274, v275, v499, v504, v509, SHIDWORD(v509), v515, v521, v527, seconds.value, *&seconds.timescale, seconds.epoch, v538, *v539, *&v539[8], *&v539[16], *&v539[24], *&v539[28], v540, *(&v540 + 1), v541, v542, *(&v542 + 1), v543, time.value, *&time.timescale, time.epoch, v545, v546, v547, v548, v549, v550, v551, v552, v553, v554, v555, v556, v557, value, v559, v560, v561, v562, v563, v564, v565, v566, v567))
                {
                  FigAlternateSelectionBossApplyFilters(*(DerivedStorage + 40));
                }
              }
            }
          }

          goto LABEL_12;
        }

        if (CFEqual(v8, @"ResolutionCap"))
        {
          *&time.value = *MEMORY[0x1E695F060];
          if (!v6)
          {
            goto LABEL_606;
          }

          v276 = CFGetTypeID(v6);
          v277 = CFDictionaryGetTypeID();
          if (v276 != v277 || !OUTLINED_FUNCTION_856(v277, v278, v279, v280, v281, v282, v283, v284, *&v285, *&v287, v499, v504, v509, v515, v521, v527, seconds.value, *&seconds.timescale, seconds.epoch, v538, *v539, *&v539[8], *&v539[16], *&v539[24], v540, *(&v540 + 1), v541, v542, *(&v542 + 1), v543, *&v289) || *&time.value < 0.0 || *&time.timescale < 0.0)
          {
            goto LABEL_606;
          }

          if (*(DerivedStorage + 2512) == *&time.value && *(DerivedStorage + 2520) == *&time.timescale)
          {
            goto LABEL_12;
          }

          v292 = (DerivedStorage + 2512);
LABEL_418:
          *v292 = *&time.value;
          fpfsi_HandleResolutionCapOrDisplaySizeChange(v10);
          goto LABEL_12;
        }

        if (CFEqual(v8, @"ResolutionCapForExpensiveNetwork"))
        {
          *&time.value = *MEMORY[0x1E695F060];
          if (v6)
          {
            v293 = CFGetTypeID(v6);
            v294 = CFDictionaryGetTypeID();
            if (v293 == v294 && OUTLINED_FUNCTION_856(v294, v295, v296, v297, v298, v299, v300, v301, *&v302, *&v304, v499, v504, v509, v515, v521, v527, seconds.value, *&seconds.timescale, seconds.epoch, v538, *v539, *&v539[8], *&v539[16], *&v539[24], v540, *(&v540 + 1), v541, v542, *(&v542 + 1), v543, *&v306) && *&time.value >= 0.0 && *&time.timescale >= 0.0)
            {
              v308 = *(DerivedStorage + 2552);
              *(DerivedStorage + 2552) = v6;
              CFRetain(v6);
              if (v308)
              {
                CFRelease(v308);
              }

              fpfsi_setResolutionCapForExpensiveNetworks();
              goto LABEL_12;
            }
          }

          goto LABEL_606;
        }

        if (CFEqual(v8, @"ResolutionFloor"))
        {
          *&time.value = *MEMORY[0x1E695F060];
          if (!v6)
          {
            goto LABEL_606;
          }

          v309 = CFGetTypeID(v6);
          v310 = CFDictionaryGetTypeID();
          if (v309 != v310 || !OUTLINED_FUNCTION_856(v310, v311, v312, v313, v314, v315, v316, v317, *&v318, *&v320, v499, v504, v509, v515, v521, v527, seconds.value, *&seconds.timescale, seconds.epoch, v538, *v539, *&v539[8], *&v539[16], *&v539[24], v540, *(&v540 + 1), v541, v542, *(&v542 + 1), v543, *&v322) || *&time.value < 0.0 || *&time.timescale < 0.0)
          {
            goto LABEL_606;
          }

          if (*(DerivedStorage + 2528) == *&time.value && *(DerivedStorage + 2536) == *&time.timescale)
          {
            goto LABEL_12;
          }

          v292 = (DerivedStorage + 2528);
          goto LABEL_418;
        }

        if (CFEqual(v8, @"MinimizeNetworkingWhilePaused"))
        {
          OUTLINED_FUNCTION_438();
          *(DerivedStorage + 532) = v325;
          if (!*(DerivedStorage + 912) || fpfsi_isLiveStreaming(v10) && (*(DerivedStorage + 1436) & 1) != 0)
          {
            goto LABEL_12;
          }

          v204 = 0x1F0B1F458;
          goto LABEL_426;
        }

        if (CFEqual(v8, @"CountOfTaggedRangeMetadataArrayListeners"))
        {
          if (v6)
          {
            v327 = CFGetTypeID(v6);
            if (v327 == CFNumberGetTypeID())
            {
              v328 = *(DerivedStorage + 2632);
              CFNumberGetValue(v6, kCFNumberCFIndexType, (DerivedStorage + 2632));
              if (v328 < *(DerivedStorage + 2632))
              {
                v329 = OUTLINED_FUNCTION_687();
                fpfsi_EnqueueTaggedRangeMetadataChangedNotificationIfNeeded(v329, v330);
              }

              goto LABEL_12;
            }
          }

          goto LABEL_606;
        }

        if (CFEqual(v8, @"VariantPreferences"))
        {
          if (!v6)
          {
            goto LABEL_606;
          }

          v331 = CFGetTypeID(v6);
          v332 = CFNumberGetTypeID();
          if (v331 != v332)
          {
            goto LABEL_606;
          }

          OUTLINED_FUNCTION_129(v332, v333, v334, v335, v336, v337, v338, v339, v499, v504, v509, v515, v521, v527, seconds.value, *&seconds.timescale, seconds.epoch, v538, *v539, *&v539[8], *&v539[16], *&v539[24], v540, *(&v540 + 1), v541, v542, *(&v542 + 1), v543, time.value);
          if (LODWORD(time.value) == *(DerivedStorage + 560))
          {
            goto LABEL_12;
          }

          *(DerivedStorage + 560) = time.value;
LABEL_539:
          fpfsi_handleVariantPreferencesChanged(v10);
          goto LABEL_12;
        }

        if (CFEqual(v8, @"AudioSampleRateCap"))
        {
          if (!v6)
          {
            goto LABEL_606;
          }

          v340 = CFGetTypeID(v6);
          if (v340 != CFNumberGetTypeID())
          {
            goto LABEL_606;
          }

          time.value = 0;
          CFNumberGetValue(v6, kCFNumberDoubleType, &time);
          if (*&time.value < 0.0 || *&time.value == *(DerivedStorage + 2544))
          {
            goto LABEL_12;
          }

          *(DerivedStorage + 2544) = time.value;
          goto LABEL_539;
        }

        if (CFEqual(v8, @"SuppressesAudioOnlyVariants"))
        {
          if (v6)
          {
            v342 = CFGetTypeID(v6);
            if (v342 == CFBooleanGetTypeID())
            {
              OUTLINED_FUNCTION_438();
              *(DerivedStorage + 558) = v345;
              fpfsi_handleSuppressedAudioOnlyVariantsChanged(v10);
              goto LABEL_12;
            }
          }

          goto LABEL_606;
        }

        if (CFEqual(v8, @"AudioSpatializationAllowed"))
        {
          if (v6)
          {
            v343 = CFGetTypeID(v6);
            if (v343 == CFBooleanGetTypeID())
            {
              v344 = OUTLINED_FUNCTION_115();
              fpfsi_setAudioSpatializationAllowed(v344);
              goto LABEL_12;
            }
          }

          goto LABEL_606;
        }

        if (CFEqual(v8, @"StereoAudioSpatializationAllowed"))
        {
          if (v6)
          {
            v346 = CFGetTypeID(v6);
            if (v346 == CFBooleanGetTypeID())
            {
              v347 = OUTLINED_FUNCTION_115();
              fpfsi_setStereoAudioSpatializationAllowed(v347);
              goto LABEL_12;
            }
          }

          goto LABEL_606;
        }

        if (CFEqual(v8, @"LoudnessInfo"))
        {
          if (!v6)
          {
            v214 = *(DerivedStorage + 2400);
            *(DerivedStorage + 2400) = 0;
            goto LABEL_474;
          }

          v348 = CFGetTypeID(v6);
          if (v348 != CFDictionaryGetTypeID())
          {
            goto LABEL_606;
          }

          v214 = *(DerivedStorage + 2400);
          *(DerivedStorage + 2400) = v6;
          goto LABEL_468;
        }

        if (CFEqual(v8, @"AudioProcessingTap"))
        {
          if (fpfs_isSupportedAudioProcessingTap(v6, 0))
          {
            v349 = OUTLINED_FUNCTION_178();
            fpfsi_setAudioProcessingTap(v349, v350);
            goto LABEL_12;
          }

          goto LABEL_606;
        }

        if (CFEqual(v8, @"ResetAudioBufferedAhead"))
        {
          if (*(CMBaseObjectGetDerivedStorage() + 504))
          {
            if (dword_1EAF169F0)
            {
              OUTLINED_FUNCTION_781();
              v353 = OUTLINED_FUNCTION_225();
              v361 = OUTLINED_FUNCTION_510(v353, v354, v355, v356, v357, v358, v359, v360, v499, v504, v509, v515, v521, v527, SBYTE4(v527));
              OUTLINED_FUNCTION_820(v361, v362, v363, v364, v365, v366, v367, v368, v501, v506, v511, v518, v524, v529, v534);
              OUTLINED_FUNCTION_46();
              if (v13)
              {
                v369 = *DerivedStorage;
                if (*DerivedStorage)
                {
                  CMBaseObjectGetDerivedStorage();
                }

                if (v10)
                {
                  CMBaseObjectGetDerivedStorage();
                }

                LODWORD(seconds.value) = 136316162;
                OUTLINED_FUNCTION_47();
                *(&seconds.flags + 2) = v369;
                OUTLINED_FUNCTION_166();
                *&v539[2] = v10;
                OUTLINED_FUNCTION_10();
                v381 = OUTLINED_FUNCTION_30();
                OUTLINED_FUNCTION_448(v381, v382, v383, v384, v385, v386, v387, v388);
              }

              OUTLINED_FUNCTION_4();
              fig_log_call_emit_and_clean_up_after_send_and_compose();
            }

            v389 = OUTLINED_FUNCTION_687();
            fpfs_stopResetDisturbReprepareAndResume(v389, v390, 1);
          }

          goto LABEL_12;
        }

        if (CFEqual(v8, @"AudioProcessingUnits"))
        {
          if (!v6 || (v370 = CFGetTypeID(v6), v370 == CFArrayGetTypeID()))
          {
            v371 = OUTLINED_FUNCTION_178();
            fpfsi_setAudioProcessingUnits(v371, v372);
            goto LABEL_12;
          }

          goto LABEL_606;
        }

        if (CFEqual(v8, @"AudioCurves"))
        {
          if (!v6 || (v373 = CFGetTypeID(v6), v373 == CFDictionaryGetTypeID()))
          {
            v374 = OUTLINED_FUNCTION_687();
            Prev = fpfs_getPrev(v374, v375);
            v377 = *(DerivedStorage + 3152);
            *(DerivedStorage + 3152) = v6;
            if (v6)
            {
              CFRetain(v6);
            }

            if (v377)
            {
              CFRelease(v377);
            }

            if (*(DerivedStorage + 2472))
            {
              if (*(DerivedStorage + 824))
              {
                if (Prev)
                {
                  v378 = OUTLINED_FUNCTION_373();
                  if (!fpfs_SetRenderPipelinePropertiesToUpdateAtTransition(v378, v379, v380))
                  {
                    goto LABEL_12;
                  }
                }
              }
            }

            time.value = @"SecondaryAudioCurves";
            *&time.timescale = v6;
LABEL_93:
            v99 = OUTLINED_FUNCTION_748();
            fpfsi_setPropertyOnAllAudioRenderPipelines(v99, v100);
            goto LABEL_12;
          }

          goto LABEL_606;
        }

        if (CFEqual(v8, @"AudioClockDevice"))
        {
          if (!v6 || (v391 = CFGetTypeID(v6), v391 == CFStringGetTypeID()))
          {
            time.value = @"AudioQueueClockDevice";
            *&time.timescale = v6;
            v98 = *(DerivedStorage + 3160);
            *(DerivedStorage + 3160) = v6;
            if (!v6)
            {
LABEL_91:
              if (v98)
              {
                CFRelease(v98);
              }

              goto LABEL_93;
            }

LABEL_90:
            CFRetain(v6);
            goto LABEL_91;
          }

          goto LABEL_606;
        }

        if (CFEqual(v8, @"VideoSlotUsage"))
        {
          if (v6)
          {
            v392 = CFGetTypeID(v6);
            if (v392 == CFArrayGetTypeID())
            {
              v393 = OUTLINED_FUNCTION_178();
              fpfsi_updateVideoSlotUsage(v393, v394);
              goto LABEL_12;
            }
          }

          goto LABEL_606;
        }

        if (CFEqual(v8, @"PreferSDRVideo"))
        {
          if (v6)
          {
            v395 = CFGetTypeID(v6);
            if (v395 == CFBooleanGetTypeID())
            {
              v396 = OUTLINED_FUNCTION_115();
              fpfsi_setPreferSDRVideo(v396, v397);
              goto LABEL_12;
            }
          }

          goto LABEL_606;
        }

        if (CFEqual(v8, @"StartsOnFirstEligibleVariant"))
        {
          if (v6)
          {
            v398 = CFGetTypeID(v6);
            if (v398 == CFBooleanGetTypeID())
            {
              v399 = *MEMORY[0x1E695E4D0] == v6;
              v400 = CMBaseObjectGetDerivedStorage();
              if (*(v400 + 2892) != v399)
              {
                *(v400 + 2892) = v399;
              }

              goto LABEL_12;
            }
          }

          goto LABEL_606;
        }

        if (CFEqual(v8, @"DisableTrialSwitchUpTimer"))
        {
          v401 = *(DerivedStorage + 96);
          if (v401)
          {
            CMBaseObjectSetProperty(v401, @"AfmfpbProperty_DisableTrialSwitchUpTimer", v6);
          }

          else
          {
            *(DerivedStorage + 137) = 1;
          }

          goto LABEL_12;
        }

        if (CFEqual(v8, @"PrefersOfflinePlayableVariants"))
        {
          if (!v6)
          {
            goto LABEL_606;
          }

          v402 = CFGetTypeID(v6);
          if (v402 != CFBooleanGetTypeID())
          {
            goto LABEL_606;
          }

          OUTLINED_FUNCTION_438();
          if (*(DerivedStorage + 3200) == v403)
          {
            goto LABEL_12;
          }

          *(DerivedStorage + 3200) = v403;
          fpfsi_SetupAlternateSelectionBossWithPreferPlaybackFromCache(v10);
          goto LABEL_539;
        }

        if (CFEqual(v8, @"CoordinationIdentifier"))
        {
          if (!v6 || (v404 = CFGetTypeID(v6), v404 == CFStringGetTypeID()))
          {
            if (FigCFEqual())
            {
              goto LABEL_12;
            }

            v405 = FigGetAllocatorForMedia();
            Mutable = CFDictionaryCreateMutable(v405, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
            if (!Mutable)
            {
              goto LABEL_12;
            }

            OUTLINED_FUNCTION_501();
            FigCFDictionarySetValue();
            v407 = OUTLINED_FUNCTION_521();
            fpfs_EnqueueNotification(v407, v408, v409, Mutable);
            v410 = *(DerivedStorage + 3216);
            *(DerivedStorage + 3216) = v6;
            if (v6)
            {
              CFRetain(v6);
            }

            if (v410)
            {
              CFRelease(v410);
            }

            v138 = Mutable;
LABEL_151:
            CFRelease(v138);
            goto LABEL_12;
          }

          goto LABEL_606;
        }

        if (CFEqual(v8, @"ParticipatesInCoordinatedPlayback"))
        {
          if (v6)
          {
            v411 = CFGetTypeID(v6);
            if (v411 == CFBooleanGetTypeID())
            {
              OUTLINED_FUNCTION_438();
              *(DerivedStorage + 3224) = v412;
              fpfsi_CheckSpeedRampCompatibility(v10);
              goto LABEL_12;
            }
          }

          goto LABEL_606;
        }

        if (CFEqual(v8, @"TransientTimebaseForCoordinatedPlaybackSynchronization"))
        {
          if (v6)
          {
            v413 = CFGetTypeID(v6);
            if (v413 != CMTimebaseGetTypeID())
            {
              goto LABEL_606;
            }

            v414 = *(DerivedStorage + 568);
            *(DerivedStorage + 568) = v6;
            CFRetain(v6);
          }

          else
          {
            v414 = *(DerivedStorage + 568);
            *(DerivedStorage + 568) = 0;
          }

          if (v414)
          {
            CFRelease(v414);
          }

          if (v6)
          {
            if (!dword_1EAF169F0)
            {
              goto LABEL_12;
            }

            OUTLINED_FUNCTION_781();
            v419 = OUTLINED_FUNCTION_279();
            v427 = OUTLINED_FUNCTION_510(v419, v420, v421, v422, v423, v424, v425, v426, v499, v504, v509, v515, v521, v527, SBYTE4(v527));
            OUTLINED_FUNCTION_847(v427, v428, v429, v430, v431, v432, v433, v434, v502, v507, v512, v519, v525, v530, v535);
            OUTLINED_FUNCTION_40();
            if (!v414)
            {
              goto LABEL_610;
            }

            if (v12)
            {
              v435 = (CMBaseObjectGetDerivedStorage() + 888);
            }

            else
            {
              v435 = "";
            }

            if (!v10)
            {
              goto LABEL_609;
            }
          }

          else
          {
            if (!dword_1EAF169F0)
            {
              goto LABEL_12;
            }

            OUTLINED_FUNCTION_781();
            v437 = OUTLINED_FUNCTION_279();
            v445 = OUTLINED_FUNCTION_510(v437, v438, v439, v440, v441, v442, v443, v444, v499, v504, v509, v515, v521, v527, SBYTE4(v527));
            OUTLINED_FUNCTION_847(v445, v446, v447, v448, v449, v450, v451, v452, v503, v508, v513, v520, v526, v531, v536);
            OUTLINED_FUNCTION_40();
            if (!v414)
            {
              goto LABEL_610;
            }

            if (v12)
            {
              v435 = (CMBaseObjectGetDerivedStorage() + 888);
            }

            else
            {
              v435 = "";
            }

            if (!v10)
            {
LABEL_609:
              LODWORD(seconds.value) = 136316162;
              OUTLINED_FUNCTION_47();
              *(&seconds.flags + 2) = v12;
              OUTLINED_FUNCTION_227();
              v538 = v435;
              *v539 = v460;
              *&v539[2] = v10;
              OUTLINED_FUNCTION_10();
              OUTLINED_FUNCTION_31();
              OUTLINED_FUNCTION_667();
              _os_log_send_and_compose_impl(v461, v462, v463, v464, v465, v466, v467, v468);
LABEL_610:
              OUTLINED_FUNCTION_1();
              goto LABEL_99;
            }
          }

          CMBaseObjectGetDerivedStorage();
          goto LABEL_609;
        }

        if (CFEqual(v8, @"currentInterstitialEvent"))
        {
          v415 = *(DerivedStorage + 3232);
          *(DerivedStorage + 3232) = v6;
          if (v6)
          {
            CFRetain(v6);
          }

          if (v415)
          {
            CFRelease(v415);
          }

          v416 = OUTLINED_FUNCTION_521();
          fpfs_EnqueueNotification(v416, v417, v418, 0);
          goto LABEL_12;
        }

        if (CFEqual(v8, @"interstitialEvents"))
        {
          if (v6)
          {
            v436 = CFGetTypeID(v6);
            if (v436 != CFArrayGetTypeID())
            {
              goto LABEL_606;
            }

            v453 = *(DerivedStorage + 3240);
            *(DerivedStorage + 3240) = v6;
            CFRetain(v6);
          }

          else
          {
            v453 = *(DerivedStorage + 3240);
            *(DerivedStorage + 3240) = 0;
          }

          if (v453)
          {
            CFRelease(v453);
          }

          v454 = *(DerivedStorage + 3240);
          if (v454)
          {
            CFArrayGetCount(v454);
          }

          v456 = OUTLINED_FUNCTION_284();
          FigReportingAgentStatsSetIntValueWithOptions(v456);
          v457 = OUTLINED_FUNCTION_521();
          fpfs_EnqueueNotification(v457, v458, v459, 0);
          fpfsi_CheckSpeedRampCompatibility(v10);
          fpfsi_CheckInterstitialVideoLayoutCompatibility(v10);
          goto LABEL_12;
        }

        if (CFEqual(v8, @"InterstitialEventItemTimeOffset"))
        {
          v124 = *(DerivedStorage + 3248);
          *(DerivedStorage + 3248) = v6;
          if (!v6)
          {
            goto LABEL_149;
          }

          goto LABEL_148;
        }

        if (CFEqual(v8, @"timeToSwapPlayback"))
        {
          goto LABEL_12;
        }

        if (CFEqual(v8, @"AutoSwitchAtmosVariants"))
        {
          if (v6)
          {
            v455 = CFGetTypeID(v6);
            if (v455 == CFBooleanGetTypeID())
            {
              OUTLINED_FUNCTION_115();
              fpfsi_handleAutoSwitchAtmosVariantsChanged();
              goto LABEL_12;
            }
          }

          goto LABEL_606;
        }

        if (CFEqual(v8, @"interstitialPlaybackSuccessCount"))
        {
          if (!v6)
          {
            goto LABEL_12;
          }

          v469 = CFGetTypeID(v6);
          v470 = CFNumberGetTypeID();
          if (v469 != v470)
          {
            goto LABEL_12;
          }

          goto LABEL_623;
        }

        if (CFEqual(v8, @"interstitialPlaybackFailureCount"))
        {
          if (!v6)
          {
            goto LABEL_12;
          }

          v478 = CFGetTypeID(v6);
          v470 = CFNumberGetTypeID();
          if (v478 != v470)
          {
            goto LABEL_12;
          }

          goto LABEL_623;
        }

        if (CFEqual(v8, @"interstitialPlaybackDeadTime"))
        {
          if (!v6)
          {
            goto LABEL_12;
          }

          v479 = CFGetTypeID(v6);
          v470 = CFNumberGetTypeID();
          if (v479 != v470)
          {
            goto LABEL_12;
          }

LABEL_623:
          OUTLINED_FUNCTION_129(v470, v471, v472, v473, v474, v475, v476, v477, v499, v504, v509, v515, v521, v527, seconds.value, *&seconds.timescale, seconds.epoch, v538, *v539, *&v539[8], *&v539[16], *&v539[24], v540, *(&v540 + 1), v541, v542, *(&v542 + 1), v543, time.value);
          FigReportingAgentStatsUpdateSampleValue(*(DerivedStorage + 2568));
          goto LABEL_12;
        }

        if (CFEqual(v8, @"RTCReportingCategory"))
        {
          if (v6)
          {
            v480 = CFGetTypeID(v6);
            if (v480 == CFStringGetTypeID())
            {
              v481 = *(DerivedStorage + 2568);
              if (v481)
              {
                FigReportingAgentStatsSetCFTypeValue(v481);
              }
            }
          }

          goto LABEL_12;
        }

        if (CFEqual(v8, @"ClientReportingValues"))
        {
          if (v6)
          {
            v482 = CFGetTypeID(v6);
            if (v482 == CFDictionaryGetTypeID())
            {
              FigReportingAgentSetStatsForAllKeys(*(DerivedStorage + 2568), @"playerStats", v6);
            }
          }

          goto LABEL_12;
        }

        if (!CFEqual(v8, @"TimestampInterstitialReadyToPlay"))
        {
          if (CFEqual(v8, @"SaveDownloadedDataToDiskWhenDone"))
          {
            v493 = OUTLINED_FUNCTION_115();
            fpfsi_setSaveDownloadedDataToDiskWhenDone(v493, v494);
            goto LABEL_12;
          }

          if (CFEqual(v8, @"SpeedRampData"))
          {
            if (*(v13 + 968))
            {
              v485 = OUTLINED_FUNCTION_178();
              fpfsi_setSpeedRampData(v485, v486, v487, v488, v489, v490, v491, v492, v499, v504, v509, v515, v521, v527, seconds.value, *&seconds.timescale, seconds.epoch, v538, *v539, *&v539[8]);
              fpfsi_CheckSpeedRampCompatibility(v10);
            }

            goto LABEL_12;
          }

          if (!CFEqual(v8, @"OverlapRange"))
          {
            if (CFEqual(v8, @"PriorImageQueueGauge"))
            {
              v497 = *(DerivedStorage + 728);
              *(DerivedStorage + 728) = v6;
              if (v6)
              {
                CFRetain(v6);
              }

              if (v497)
              {
                CFRelease(v497);
              }

              fpfsi_updatePriorImageQueueGaugeOnVideoRenderPipelines(v10);
            }

            goto LABEL_12;
          }

          if (v6)
          {
            v495 = CFGetTypeID(v6);
            if (v495 != CFDictionaryGetTypeID())
            {
              goto LABEL_606;
            }

            v496 = *(DerivedStorage + 3384);
            *(DerivedStorage + 3384) = v6;
            CFRetain(v6);
            if (v496)
            {
              CFRelease(v496);
            }
          }

          else
          {
            v498 = *(DerivedStorage + 3384);
            if (v498)
            {
              CFRelease(v498);
              *(DerivedStorage + 3384) = 0;
            }
          }

          fpfsi_updateOverlapRangeOnAllRenderPipelines(v10);
          goto LABEL_12;
        }

        if (!v6)
        {
          goto LABEL_12;
        }

        v483 = CFGetTypeID(v6);
        if (v483 != CFNumberGetTypeID())
        {
          goto LABEL_12;
        }

        FigCFNumberGetFloat64();
        OUTLINED_FUNCTION_492(v484 - *(DerivedStorage + 2040), 1000.0);
LABEL_637:
        FigReportingAgentStatsSetIntValueWithOptions(v211);
        goto LABEL_12;
      }

      *(DerivedStorage + 556) = *MEMORY[0x1E695E4D0] == v6;
    }

    v211 = *(DerivedStorage + 2568);
    goto LABEL_637;
  }

  if (v6)
  {
    CFDictionaryGetTypeID();
    v17 = OUTLINED_FUNCTION_411();
    if (v2 != CFGetTypeID(v17))
    {
      goto LABEL_12;
    }

    OUTLINED_FUNCTION_838();
    fpfsi_EnqueueEndTimeChangedNotification(v10);
    v18 = OUTLINED_FUNCTION_440();
    CMTimeMakeFromDictionary(v19, v18);
    *(DerivedStorage + 1352) = *&time.value;
    v20 = time.epoch;
  }

  else
  {
    OUTLINED_FUNCTION_838();
    fpfsi_EnqueueEndTimeChangedNotification(v10);
    OUTLINED_FUNCTION_112((DerivedStorage + 1352));
  }

  *(DerivedStorage + 1368) = v20;
  OUTLINED_FUNCTION_29();
  if (v182)
  {
    LODWORD(v13) = -256480360;
    OUTLINED_FUNCTION_549();
    time.epoch = v90;
    v91 = CMTimeGetSeconds(&time);
    OUTLINED_FUNCTION_492(v91, 1000.0);
    v92 = OUTLINED_FUNCTION_284();
    FigReportingAgentStatsSetIntValueWithOptions(v92);
  }

  if (dword_1EAF169F0)
  {
    OUTLINED_FUNCTION_427();
    v33 = OUTLINED_FUNCTION_225();
    v41 = OUTLINED_FUNCTION_371(v33, v34, v35, v36, v37, v38, v39, v40, v499, v504, v509, v515, v521, v527, SBYTE2(v527), SBYTE3(v527), SBYTE4(v527));
    os_log_type_enabled(v41, type);
    OUTLINED_FUNCTION_46();
    if (v13)
    {
      v42 = *DerivedStorage;
      if (*DerivedStorage)
      {
        v43 = (CMBaseObjectGetDerivedStorage() + 888);
      }

      else
      {
        v43 = "";
      }

      v522 = v43;
      if (v10)
      {
        v51 = (CMBaseObjectGetDerivedStorage() + 3096);
      }

      else
      {
        v51 = "";
      }

      v516 = v51;
      v52 = *(DerivedStorage + 1352);
      v514 = *(DerivedStorage + 1360);
      OUTLINED_FUNCTION_549();
      time.epoch = v53;
      v54 = CMTimeGetSeconds(&time);
      OUTLINED_FUNCTION_790();
      v55 = CMTimeGetSeconds(&time);
      OUTLINED_FUNCTION_790();
      FPSTimelineConverterL2TimeToL3(&time, &seconds);
      time = seconds;
      v56 = CMTimeGetSeconds(&time);
      LODWORD(seconds.value) = 136317442;
      *(&seconds.value + 4) = "fpfsi_handleSetProperty";
      LOWORD(seconds.flags) = 2048;
      *(&seconds.flags + 2) = v42;
      HIWORD(seconds.epoch) = 2082;
      v538 = v522;
      *v539 = 2048;
      *&v539[2] = v10;
      *&v539[10] = 2082;
      *&v539[12] = v516;
      *&v539[20] = 2048;
      *&v539[22] = v52;
      *&v539[30] = 1024;
      LODWORD(v540) = v514;
      WORD2(v540) = 2048;
      *(&v540 + 6) = v54;
      HIWORD(v540) = 2048;
      v541 = *&v55;
      LOWORD(v542) = 2048;
      *(&v542 + 2) = v56;
      v57 = OUTLINED_FUNCTION_30();
      OUTLINED_FUNCTION_448(v57, v58, v59, v60, v61, v62, v63, v64);
    }

    OUTLINED_FUNCTION_4();
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (!*(DerivedStorage + 576))
  {
    goto LABEL_64;
  }

  if (fpfsi_PlaybackHasBufferedBeyondForwardEndTime(v10))
  {
    for (i = *(DerivedStorage + 1024); i; i = *(i + 24))
    {
      if (*(i + 64) != *(DerivedStorage + 976 + 16 * *(i + 196)))
      {
        OUTLINED_FUNCTION_746();
        if (!v182)
        {
          continue;
        }
      }

      if (!*(i + 128))
      {
        fpfs_EnsureEndTimerProcForTrack(i);
      }
    }
  }

  if (!fpfsi_applyForwardEndTime(v10))
  {
    fpfsi_MakeNextItemReadyForInspectionIfItemEndedOrBeyondFwdEnd(v10);
LABEL_64:
    if (!*(DerivedStorage + 471) || *(DerivedStorage + 1024) || !fpfsi_SeekToCurrentTime(v10))
    {
      if (fpfsi_PlaybackHasBufferedBeyondForwardEndTime(v10) || (OUTLINED_FUNCTION_133(), fpfs_FlowControlPump(v66, v67, v68, 255), !v69))
      {
        OUTLINED_FUNCTION_300();
        fpfs_endEndedTracks(DerivedStorage);
      }
    }
  }

LABEL_12:
  fpfs_UnlockAndPostNotificationsWithCaller(v12);
  OUTLINED_FUNCTION_459();
}

void fpfs_createOrUpdateLayerSync(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, __int16 a12, char a13, os_log_type_t type, int a15, void *cf, CFTypeRef a17, __int128 a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50)
{
  OUTLINED_FUNCTION_458();
  a49 = v53;
  a50 = v54;
  OUTLINED_FUNCTION_261();
  a38 = *MEMORY[0x1E69E9840];
  cf = 0;
  a17 = 0;
  CMBaseObjectGetDerivedStorage();
  OUTLINED_FUNCTION_398();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  fpfs_ensureTransaction(v50, &a17);
  v56 = *(v51 + 880);
  CMBaseObjectGetDerivedStorage();
  OUTLINED_FUNCTION_603();
  v57 = CMBaseObjectGetDerivedStorage();
  OUTLINED_FUNCTION_104(MEMORY[0x1E6960C70]);
  FPSupport_AppendDeferredTransactionChangeForSettingDurationOnLayers(v56, &a21, v58);
  FigStreamingPlayerCombinedVideoDestinationSetDurationInvalid(*(v52 + 376), v57[88], v56);
  FigStreamingPlayerCombinedVideoDestinationCopyFVTs(*(v51 + 376));
  v59 = OUTLINED_FUNCTION_297();
  v60 = CFGetAllocator(v59);
  LayerSynchronizerConfiguration = FPSupport_CreateLayerSynchronizerConfiguration(v60, 1, *(v51 + 392), v57, *(DerivedStorage + 704), &cf);
  FigSimpleMutexLock();
  v62 = *(DerivedStorage + 688);
  if (!v62)
  {
    LayerSynchronizerConfiguration = FigLayerSynchronizerCreate((DerivedStorage + 688));
    v62 = *(DerivedStorage + 688);
  }

  if (v62 && cf)
  {
    v63 = FigLayerSynchronizerSetConfigurationWithDeferredTransaction(v62, cf, *(v51 + 880));
    if (v63)
    {
      v64 = v63;
      OUTLINED_FUNCTION_21();
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, type);
      OUTLINED_FUNCTION_134();
      if (v67)
      {
        a15 = v66;
      }

      if (a15)
      {
        LODWORD(a18) = 136315394;
        *(&a18 + 4) = "fpfs_createOrUpdateLayerSync";
        WORD6(a18) = 1024;
        *(&a18 + 14) = v64;
        OUTLINED_FUNCTION_32();
        OUTLINED_FUNCTION_23();
        _os_log_send_and_compose_impl(v69, v70, v71, v72, v73, v74, type, v75);
        OUTLINED_FUNCTION_507();
      }

      OUTLINED_FUNCTION_16();
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    LayerSynchronizerConfiguration = 0;
  }

  FigSimpleMutexUnlock();
  fpfs_commitTransaction(v50, a17);
  if (cf)
  {
    CFRelease(cf);
  }

  if (a17)
  {
    CFRelease(a17);
  }

  if (v57)
  {
    CFRelease(v57);
  }

  OUTLINED_FUNCTION_457(LayerSynchronizerConfiguration);
}

double fpfs_SetClientMediaArray()
{
  OUTLINED_FUNCTION_261();
  CMBaseObjectGetDerivedStorage();
  OUTLINED_FUNCTION_522();
  Mutable = *(v2 + 1760);
  if (Mutable || (AllocatorForMedia = FigGetAllocatorForMedia(), Mutable = CFArrayCreateMutable(AllocatorForMedia, 0, MEMORY[0x1E695E9C0]), (*(v0 + 1760) = Mutable) != 0))
  {
    result = FigAutomaticMediaSelectionCoalesceSelectedMediaArrays(Mutable, v1, 1);
    if (!v6)
    {
      v7 = fpfs_CreateAppliedMediaArray(v0, &cf);
      v8 = cf;
      if (!v7 && cf)
      {
        v9 = OUTLINED_FUNCTION_520();
        fpfs_ApplyMediaArray(v9, v10, v11);
        v8 = cf;
      }

      if (v8)
      {
        CFRelease(v8);
      }
    }
  }

  else
  {
    OUTLINED_FUNCTION_243();

    return FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
  }

  return result;
}

void fpfsi_UpdateHighWaterSecs()
{
  OUTLINED_FUNCTION_187();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v3 = *(v1 + 816);
  v4 = *(DerivedStorage + 2260);
  if (v3 >= v4)
  {
    v5 = *(DerivedStorage + 2260);
  }

  else
  {
    v5 = *(v1 + 816);
  }

  if (!v4)
  {
    v4 = 50;
    v5 = *(v1 + 816);
  }

  if (v3)
  {
    v6 = v5;
  }

  else
  {
    v6 = v4;
  }

  if (v6 <= 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = v6;
  }

  *(DerivedStorage + 2256) = v7;
  if (v7 >= 50)
  {
    v8 = 50;
  }

  else
  {
    v8 = v7;
  }

  *(DerivedStorage + 2264) = v8;
  if (*(DerivedStorage + 2568))
  {
    v9 = DerivedStorage;
    if (*(*(CMBaseObjectGetVTable() + 16) + 56))
    {
      OUTLINED_FUNCTION_211();
      v10();
    }

    if (*(v9 + 2568))
    {
      if (*(*(CMBaseObjectGetVTable() + 16) + 56))
      {
        OUTLINED_FUNCTION_138();
        v11();
      }

      if (*(v9 + 2568))
      {
        if (*(*(CMBaseObjectGetVTable() + 16) + 56))
        {
          OUTLINED_FUNCTION_138();
          v12();
        }

        if (*(v9 + 2568) && *(*(CMBaseObjectGetVTable() + 16) + 56))
        {
          OUTLINED_FUNCTION_373();
          OUTLINED_FUNCTION_333();
          v13();
        }
      }
    }
  }

  if (*(v1 + 80) == v0)
  {
    OUTLINED_FUNCTION_203();
    OUTLINED_FUNCTION_530();
  }

  OUTLINED_FUNCTION_860();
}

uint64_t fpfsi_UpdateCacheBehindSecs()
{
  OUTLINED_FUNCTION_187();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v2 = *(v0 + 820);
  v3 = DerivedStorage[576];
  if (v2 < 0)
  {
    v2 = DerivedStorage[576];
    if (v3 < 0)
    {
      v2 = DerivedStorage[575];
    }
  }

  else if ((v3 & 0x80000000) == 0 && v2 >= DerivedStorage[574])
  {
    v2 = DerivedStorage[574];
  }

  DerivedStorage[574] = v2;
  fpfsi_TrimCachedSamplesFromItem();
  return 0;
}

void fpfsi_setLegibleOutputsDictionary()
{
  OUTLINED_FUNCTION_261();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 1872))
  {
    v3 = DerivedStorage;
    if (v1 && !CFDictionaryGetCount(v1))
    {
      v1 = 0;
    }

    if (!FigCFEqual())
    {
      v4 = *(v3 + 1880);
      *(v3 + 1880) = v1;
      if (v1)
      {
        CFRetain(v1);
      }

      if (v4)
      {
        CFRelease(v4);
      }

      FigLegibleOutputManagerSetLegibleOutputsDict(*(v3 + 1872), *(v3 + 1880));
      if (*(CMBaseObjectGetDerivedStorage() + 80) == v0)
      {
        v5 = OUTLINED_FUNCTION_475();

        fpfs_stopResetDisturbReprepareAndResume(v5, v6, 0);
      }
    }
  }
}

unint64_t fpfsi_setMetadataOutputsDictionary()
{
  OUTLINED_FUNCTION_261();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  Tag = FigXMLNodeGetTag(*(DerivedStorage + 1888));
  if (!Tag)
  {
    Count = 0;
    if (v1)
    {
      goto LABEL_3;
    }

LABEL_5:
    v5 = 0;
    goto LABEL_6;
  }

  Count = CFDictionaryGetCount(Tag);
  if (!v1)
  {
    goto LABEL_5;
  }

LABEL_3:
  v5 = CFDictionaryGetCount(v1);
LABEL_6:
  updated = FPSupport_UpdateMetadataOutputs(*(DerivedStorage + 1888), v1);
  if (!updated && *(CMBaseObjectGetDerivedStorage() + 80) == v0 && (Count != v5 || v5 >= 1))
  {
    v8 = OUTLINED_FUNCTION_475();
    fpfs_stopResetDisturbReprepareAndResume(v8, v9, 0);
  }

  return updated;
}

uint64_t fpfsi_updateVideoChannelSettingForAllVideoTracks(uint64_t a1)
{
  v1 = *(CMBaseObjectGetDerivedStorage() + 1024);
  if (!v1)
  {
    return 0;
  }

  while (1)
  {
    if (*(v1 + 48) == 1986618469)
    {
      if (*(v1 + 104))
      {
        OUTLINED_FUNCTION_203();
        result = fpfsi_setAggregateDestinationVideoChannelSettingsForTrack();
        if (result)
        {
          break;
        }
      }
    }

    v1 = *(v1 + 24);
    if (!v1)
    {
      return 0;
    }
  }

  return result;
}

uint64_t fpfsi_handleVariantPreferencesChanged(uint64_t a1)
{
  if (!*(CMBaseObjectGetDerivedStorage() + 40))
  {
    return 0;
  }

  result = fpfsi_CreateAndAddCombinedAudioPreferenceFilter(a1);
  if (!result)
  {
    v3 = OUTLINED_FUNCTION_198();

    return fpfsi_ApplyFiltersAndSwitchVariantIfNecessary(v3);
  }

  return result;
}

uint64_t fpfsi_handleSuppressedAudioOnlyVariantsChanged(uint64_t a1)
{
  if (!*(CMBaseObjectGetDerivedStorage() + 40))
  {
    return 0;
  }

  result = fpfsi_ConfigureAlternateSelectionBossForSuppressAudioOnly(a1);
  if (!result)
  {
    v3 = OUTLINED_FUNCTION_203();

    return fpfsi_ApplyFiltersAndSwitchVariantIfNecessary(v3);
  }

  return result;
}

uint64_t fpfsi_handleAutoSwitchAtmosVariantsChanged()
{
  OUTLINED_FUNCTION_369();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 564) == v1)
  {
    return 0;
  }

  *(DerivedStorage + 564) = v1;
  if (!*(DerivedStorage + 40))
  {
    return 0;
  }

  result = fpfsi_ConfigureAlternateSelectionBossForHighestAtmosFiltering(v0);
  if (!result)
  {
    v4 = OUTLINED_FUNCTION_198();

    return fpfsi_ApplyFiltersAndSwitchVariantIfNecessary(v4);
  }

  return result;
}

uint64_t fpfsi_setSaveDownloadedDataToDiskWhenDone(uint64_t a1, int a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 3201) == a2)
  {
    return 0;
  }

  *(DerivedStorage + 3201) = a2;
  result = *(DerivedStorage + 912);
  if (result)
  {
    if (a2)
    {
      v5 = MEMORY[0x1E695E4D0];
    }

    else
    {
      v5 = MEMORY[0x1E695E4C0];
    }

    FigBytePumpGetFigBaseObject();
    v7 = v6;
    v8 = *(*(CMBaseObjectGetVTable() + 8) + 56);
    if (v8)
    {
      v9 = *v5;

      return v8(v7, 0x1F0B1F118, v9);
    }

    else
    {
      return 4294954514;
    }
  }

  return result;
}

const void *fpfsi_GetClosedCaptionType(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  OUTLINED_FUNCTION_563();
  v2 = OUTLINED_FUNCTION_399();
  MediaTypeInMediaArray = fpfs_FindMediaTypeInMediaArray(v2, v3, 0);
  if (!MediaTypeInMediaArray)
  {
    return 0;
  }

  Value = CFDictionaryGetValue(MediaTypeInMediaArray, @"MediaSelectionOptionsPersistentID");
  if (!Value)
  {
    return 0;
  }

  v6 = Value;
  v7 = *(DerivedStorage + 1680);
  if (!v7)
  {
    return 0;
  }

  ClosedCaptionGroupLocatorMap = FigAlternateGetClosedCaptionGroupLocatorMap(v7);
  if (!ClosedCaptionGroupLocatorMap)
  {
    return 0;
  }

  v9 = CFDictionaryGetValue(ClosedCaptionGroupLocatorMap, v6);
  if (!v9)
  {
    return 0;
  }

  v10 = *MEMORY[0x1E6962B78];

  return CFDictionaryGetValue(v9, v10);
}

uint64_t fpfs_CreateAndApplyMediaArrayWithContext()
{
  OUTLINED_FUNCTION_400();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  cf = 0;
  if (!*(DerivedStorage + 1672))
  {
    return 0;
  }

  v3 = fpfs_CreateAppliedMediaArray(DerivedStorage, &cf);
  v4 = cf;
  if (!v3 && cf)
  {
    v3 = fpfs_ApplyMediaArray(v0, cf, *v1);
    v4 = cf;
  }

  if (v4)
  {
    CFRelease(v4);
  }

  return v3;
}

const void *fpfsi_handleVideoOutputsChanged()
{
  OUTLINED_FUNCTION_700();
  v158 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v140 = OUTLINED_FUNCTION_258(DerivedStorage);
  v7 = CMBaseObjectGetDerivedStorage();
  CanRenderVideo = fpfs_CanRenderVideo(v7, v0);
  v8 = *v2;
  if (v8 == FigVideoTargetGetTypeID())
  {
    FigStreamingPlayerCombinedVideoDestinationGetFVTCount(*(v7 + 376));
    v9 = *(v1 + 2568);
    if (v9)
    {
      OUTLINED_FUNCTION_604();
      v10 = *(*(CMBaseObjectGetVTable() + 16) + 56);
      if (v10)
      {
        v10(v9, @"playerStats", 0x1F0B650F8, v3, 0);
      }
    }
  }

  v141 = v2;
  v11 = *v2;
  if (v11 != CAImageQueueGetTypeID())
  {
    goto LABEL_40;
  }

  v2 = *(v2 + 16);
  v12 = CMBaseObjectGetDerivedStorage();
  OUTLINED_FUNCTION_592(v12);
  v13 = CMBaseObjectGetDerivedStorage();
  v14 = v13[48];
  v15 = v14 ? CFArrayGetCount(v14) : 0;
  v16 = v13[51];
  v17 = *(v4 + 672);
  v18 = v17 ? CFArrayGetCount(v17) : 0;
  v8 = (v16 + v15);
  v19 = *(v4 + 664);
  v20 = v19 ? CFArrayGetCount(v19) : 0;
  if (v20 <= v8 || v2 && v18 <= v13[51])
  {
    goto LABEL_40;
  }

  AllocatorForMedia = FigGetAllocatorForMedia();
  Mutable = CFArrayCreateMutable(AllocatorForMedia, 0, MEMORY[0x1E695E9C0]);
  if (!Mutable)
  {
    OUTLINED_FUNCTION_723();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", p_time2, v135, v136);
    v28 = v130;
    if (v130)
    {
      goto LABEL_88;
    }

    goto LABEL_40;
  }

  v23 = Mutable;
  v139 = v5;
  v24 = FigGetAllocatorForMedia();
  v25 = CFArrayCreateMutable(v24, 0, MEMORY[0x1E695E9C0]);
  if (!v25)
  {
    OUTLINED_FUNCTION_120();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", p_time2, v135, v136);
    v28 = v131;
    v36 = v23;
    goto LABEL_38;
  }

  v26 = v25;
  do
  {
    ValueAtIndex = CFArrayGetValueAtIndex(*(v4 + 664), --v20);
    CFArrayAppendValue(v23, ValueAtIndex);
    CFArrayRemoveValueAtIndex(*(v4 + 664), v20);
  }

  while (v20 > v8);
  if (v2)
  {
    while (v18 > v8)
    {
      v31 = CFArrayGetValueAtIndex(*(v4 + 672), --v18);
      CFArrayAppendValue(v26, v31);
      CFArrayRemoveValueAtIndex(*(v4 + 672), v18);
    }

    v32 = FigGetAllocatorForMedia();
    Copy = CFArrayCreateCopy(v32, *(v4 + 672));
    FigPropertyStorageSetValue(*(v4 + 168), @"VideoSlotArray", Copy);
    if (Copy)
    {
      CFRelease(Copy);
    }

    ConcatenationOfTwoArrays = FigCFArrayCreateConcatenationOfTwoArrays();
    if (ConcatenationOfTwoArrays)
    {
      v34 = FigCFArrayCreateConcatenationOfTwoArrays();
      v29 = v34;
      if (v34)
      {
        v35 = v13[53];
        v13[53] = v34;
        CFRetain(v34);
        if (v35)
        {
          CFRelease(v35);
        }

        v28 = v13[54];
        v13[54] = ConcatenationOfTwoArrays;
        CFRetain(ConcatenationOfTwoArrays);
        if (v28)
        {
          CFRelease(v28);
          v28 = 0;
        }
      }

      else
      {
        OUTLINED_FUNCTION_120();
        FigSignalErrorAtGM("%s signalled err=%d at <>:%d", p_time2, v135, v136);
        v28 = v133;
      }
    }

    else
    {
      OUTLINED_FUNCTION_120();
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d", p_time2, v135, v136);
      v28 = v132;
      v29 = 0;
    }
  }

  else
  {
    v28 = 0;
    v29 = 0;
    ConcatenationOfTwoArrays = 0;
  }

  CFRelease(v23);
  CFRelease(v26);
  if (ConcatenationOfTwoArrays)
  {
    CFRelease(ConcatenationOfTwoArrays);
  }

  if (v29)
  {
    v36 = v29;
LABEL_38:
    CFRelease(v36);
  }

  if (v28)
  {
    goto LABEL_88;
  }

LABEL_40:
  if (!CanRenderVideo)
  {
    OUTLINED_FUNCTION_168(MEMORY[0x1E6960C70]);
    if (!v0)
    {
LABEL_79:
      if (!CelestialShouldLimitHDRConcurrentPlayback() || (v64 = CMBaseObjectGetDerivedStorage(), OUTLINED_FUNCTION_260(v64), v66) || !fpfs_CanRenderVideo(v65, 0))
      {
        fpfs_ReleasePlayerHDRPlaybackBaton(v140);
      }

      if (!CelestialShouldLimit4kConcurrentPlayback() || (v67 = CMBaseObjectGetDerivedStorage(), OUTLINED_FUNCTION_260(v67), v66) || !fpfs_CanRenderVideo(v68, 0))
      {
        fpfs_ReleasePlayer4kPlaybackBaton(v140);
      }

      goto LABEL_87;
    }

    v143 = CMBaseObjectGetDerivedStorage();
    fpfs_GetTime(v143, &v147);
    v37 = &unk_1EAF16000;
    if (dword_1EAF169F0)
    {
      LODWORD(v145.value) = 0;
      type[0] = OS_LOG_TYPE_DEFAULT;
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      OUTLINED_FUNCTION_40();
      if (v2)
      {
        if (*v143)
        {
          v8 = (CMBaseObjectGetDerivedStorage() + 888);
        }

        else
        {
          v8 = "";
        }

        v48 = CMBaseObjectGetDerivedStorage() + 3096;
        *&time.value = v147;
        time.epoch = v148;
        CMTimeGetSeconds(&time);
        LODWORD(time2.value) = 136316418;
        OUTLINED_FUNCTION_493();
        v150 = v8;
        v151 = v49;
        v152 = v0;
        v153 = v50;
        v154 = v48;
        v155 = v49;
        v156[0] = v51;
        OUTLINED_FUNCTION_127();
        p_time2 = &time2;
        OUTLINED_FUNCTION_31();
        OUTLINED_FUNCTION_667();
        _os_log_send_and_compose_impl(v52, v53, v54, v55, v56, v57, v58, v59);
      }

      OUTLINED_FUNCTION_1();
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    *type = 0;
    v60 = *(CMBaseObjectGetDerivedStorage() + 1024);
    if (!v60)
    {
LABEL_72:
      if (*type)
      {
        CFRelease(*type);
      }

      fpfsi_ClearCachedVideoRenderChains(v0);
      v61 = *(v143 + 1680);
      if (v61 && FigAlternateIsIFrameOnly(v61) || *(v143 + 2992))
      {
        OUTLINED_FUNCTION_852(*v143, MEMORY[0x1E6960C70], 0.0);
      }

      v62 = OUTLINED_FUNCTION_198();
      fpfs_cleanupAllImageQueues(v62, v63);
      goto LABEL_79;
    }

    v70 = 0;
    OUTLINED_FUNCTION_340();
    *&v71 = 136316674;
    v137 = v71;
    while (1)
    {
      v72 = v70;
      while (1)
      {
        if (*(v60 + 48) == v8)
        {
          v70 = *(v60 + 112);
          if (v70)
          {
            break;
          }
        }

        v60 = *(v60 + 24);
        if (!v60)
        {
          goto LABEL_72;
        }
      }

      if (*(v60 + 200))
      {
        fpfs_ReleaseTrackRenderChain(v60);
        fpfs_ChangeTrackState(v60, 2u);
        goto LABEL_72;
      }

      v73 = OUTLINED_FUNCTION_249();
      fpfs_SetFeederTrack(v73, v74);
      if (v70 != v72)
      {
        if (*type)
        {
          CFRelease(*type);
          *type = 0;
        }

        FigGetAllocatorForMedia();
        CMBufferQueueGetCallbacksForUnsortedSampleBuffers();
        v75 = OUTLINED_FUNCTION_265();
        CMBufferQueueCreate(v75, v76, v77, v78);
        if (*type)
        {
          OUTLINED_FUNCTION_0();
          MEMORY[0x19A8CE710]();
        }
      }

      v79 = OUTLINED_FUNCTION_627();
      fpfs_unscheduleRanDryTimer(v79, v80);
      fpfsi_RemoveAndClearTimer((v60 + 128));
      v81 = *(v60 + 280);
      if (v81)
      {
        CFRelease(v81);
        *(v60 + 280) = 0;
      }

      if (*type)
      {
        OUTLINED_FUNCTION_674();
        if (v66)
        {
          if (CMBufferQueueGetHead(v82))
          {
            break;
          }
        }
      }

LABEL_107:
      fpfs_ReleaseTrackRenderChain(v60);
      time = *(v60 + 208);
      *&time2.value = v147;
      time2.epoch = v148;
      if (CMTimeCompare(&time, &time2) < 0)
      {
        *(v60 + 208) = v147;
        *(v60 + 224) = v148;
      }

      fpfs_ChangeTrackState(v60, 5u);
      fpfs_CheckVideoSyncQueue();
      v60 = *(CMBaseObjectGetDerivedStorage() + 1024);
      if (!v60)
      {
        goto LABEL_72;
      }
    }

    v83 = 0;
    while (1)
    {
      OUTLINED_FUNCTION_514();
      OutputPresentationTimeStamp = CMSampleBufferGetOutputPresentationTimeStamp(&v145, v84);
      if (v145.flags)
      {
        OUTLINED_FUNCTION_661(OutputPresentationTimeStamp, v86, v87, v88, v89, v90, v91, v92, v93, p_time2, v135, v137, *(&v137 + 1), v138, v139, v140, v141, v143, v144, v94, v145.value);
        time2 = *(v60 + 232);
        if (CMTimeCompare(&time, &time2) >= 1)
        {
          goto LABEL_107;
        }
      }

      v95 = CMBufferQueueDequeueAndRetain(*type);
      v96 = v95;
      if (!v83)
      {
        if (!fpfs_IsVideoSync(v95))
        {
          v83 = 0;
          if (!v96)
          {
            goto LABEL_117;
          }

LABEL_116:
          CFRelease(v96);
          goto LABEL_117;
        }

        CMSampleBufferGetOutputPresentationTimeStamp(&time, v96);
        *(v60 + 288) = time;
        if (v37[636])
        {
          HIDWORD(v144) = 0;
          BYTE3(v144) = 0;
          v97 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          os_log_type_enabled(v97, OS_LOG_TYPE_DEFAULT);
          OUTLINED_FUNCTION_121();
          if (v66)
          {
            v99 = v98;
          }

          else
          {
            v99 = 0;
          }

          if (v99)
          {
            v139 = v97;
            HIDWORD(v138) = 0;
            if (*v143)
            {
              v100 = (CMBaseObjectGetDerivedStorage() + 888);
            }

            else
            {
              v100 = "";
            }

            v141 = v100;
            v101 = CMBaseObjectGetDerivedStorage() + 3096;
            v102 = *(v60 + 32);
            time = *(v60 + 288);
            CMTimeGetSeconds(&time);
            LODWORD(time2.value) = v137;
            OUTLINED_FUNCTION_493();
            v150 = v141;
            v151 = v103;
            v152 = v0;
            v153 = v104;
            v154 = v101;
            v155 = 1024;
            LODWORD(v156[0]) = v102;
            WORD2(v156[0]) = v103;
            *(v156 + 6) = v105;
            OUTLINED_FUNCTION_378();
            v106 = OUTLINED_FUNCTION_34();
            _os_log_send_and_compose_impl(v106, v107, v108, v109, &dword_1962D5000, v139, 0, "<<<< FigStreamPlayer >>>> %s: [%p|%{public}s] <%p|%{public}s>: next sync frame for track %d at %1.5g");
          }

          OUTLINED_FUNCTION_109();
          v83 = 1;
          OUTLINED_FUNCTION_61(v110, v111, v112, v113, v114);
          v37 = &unk_1EAF16000;
        }

        else
        {
          v83 = 1;
        }
      }

      CMBufferQueueEnqueue(*(v60 + 88), v96);
      if (v96)
      {
        goto LABEL_116;
      }

LABEL_117:
      if (!CMBufferQueueGetHead(*type))
      {
        goto LABEL_107;
      }
    }
  }

  v39 = CMBaseObjectGetDerivedStorage();
  v40 = *(v39 + 1024);
  if (v40)
  {
    v45 = v39;
    v2 = 1835365473;
    while (1)
    {
      v46 = *(v40 + 48);
      if (v46 == 1986618469)
      {
        if (!FPSupport_CanVideoRenderPipelineSupportChangingFigImageQueues(*(v40 + 56)))
        {
          break;
        }

        v46 = *(v40 + 48);
      }

      if (v46 == 1835365473 && fpfs_canSendMetadataTrackToVideoTargets(*v45))
      {
        break;
      }

      v40 = *(v40 + 24);
      if (!v40)
      {
        goto LABEL_46;
      }
    }

    v41 = 1;
  }

  else
  {
LABEL_46:
    v41 = 0;
  }

  OUTLINED_FUNCTION_301();
  if (fpfs_FirstTrackWithFormatDescriptionOfType(v42, v43))
  {
    v44 = *(v1 + 840) == 0.0;
  }

  else
  {
    v44 = 0;
  }

  if (v44 | v41)
  {
    fpfs_stopResetDisturbReprepareAndResume(*v1, v0, 0);
    goto LABEL_87;
  }

  v47 = *(CMBaseObjectGetDerivedStorage() + 1024);
  if (!v47)
  {
LABEL_64:
    fpfsi_ResumeAllWaitingVideoTracks(v0);
LABEL_87:
    v28 = 0;
    goto LABEL_88;
  }

  while (*(v47 + 48) != 1986618469 || !*(v47 + 112))
  {
    v47 = *(v47 + 24);
    if (!v47)
    {
      goto LABEL_64;
    }
  }

  v115 = v0;
  v116 = *v141;
  v66 = v116 == CAImageQueueGetTypeID();
  v0 = v115;
  if (!v66 || *(v141 + 1) < 1)
  {
    goto LABEL_142;
  }

  for (i = *(CMBaseObjectGetDerivedStorage() + 1024); i; i = *(i + 24))
  {
    if (*(i + 48) == 1986618469 && *(i + 112))
    {
      break;
    }
  }

  fpfsi_addCAImageQueuesAndSlots();
  v28 = v118;
  if (!v118)
  {
LABEL_142:
    time.value = 0;
    time2.value = 0;
    v119 = CMBaseObjectGetDerivedStorage();
    OUTLINED_FUNCTION_294(v119);
    CMBaseObjectGetDerivedStorage();
    OUTLINED_FUNCTION_576();
    v120 = *(CMBaseObjectGetDerivedStorage() + 1024);
    if (v120)
    {
      while (*(v120 + 48) != 1986618469 || !*(v120 + 112))
      {
        v120 = *(v120 + 24);
        if (!v120)
        {
          goto LABEL_146;
        }
      }

      fpfs_CreateFigImageQueueOutputsArray(v115, v120, &time);
      value = time.value;
      v126 = OUTLINED_FUNCTION_298();
      updated = fpfsi_updateOutputsForAllAggregateVideoDestinations(v126);
      if (updated)
      {
        v28 = updated;
LABEL_148:
        if (time2.value)
        {
          CFRelease(time2.value);
          if (!value)
          {
LABEL_150:
            if (v28)
            {
              goto LABEL_88;
            }

LABEL_154:
            v122 = *v141;
            if (v122 != FigVideoTargetGetTypeID())
            {
              v28 = 0;
              v0 = v115;
              goto LABEL_88;
            }

            v0 = v115;
            OUTLINED_FUNCTION_133();
            fpfsi_scheduleFVTTransitionsForItem(v123, v124, v125);
            goto LABEL_87;
          }
        }

        else if (!value)
        {
          goto LABEL_150;
        }

        CFRelease(value);
        if (v28)
        {
          goto LABEL_88;
        }

        goto LABEL_154;
      }

      fpfsi_copyCurrentImageQueueArrayAndOptions(v115, &time2);
      for (j = *(v2 + 1024); j; j = *(j + 24))
      {
        if (*(j + 48) == 1986618469)
        {
          v129 = *(j + 112);
          if (v129)
          {
            FPSupport_AppendDeferredTransactionChangeForSettingFigImageQueuesOnRenderPipeline(*(v1 + 880), time2.value, *(v129 + 32), "fpfsi_UpdateWithNewFigImageQueues");
          }
        }
      }
    }

    else
    {
LABEL_146:
      value = 0;
    }

    v28 = 0;
    goto LABEL_148;
  }

LABEL_88:
  fpfsi_UpdateResourceSpecifierOnResourceArbiter(v0);
  return v28;
}

uint64_t fpfs_canSendMetadataTrackToVideoTargets(uint64_t a1)
{
  CMBaseObjectGetDerivedStorage();
  v2 = OUTLINED_FUNCTION_251();
  result = fpfs_isKnownMebxMetadataForRendering(v2);
  if (result)
  {
    v4 = *(v1 + 376);

    return FigStreamingPlayerCombinedVideoDestinationSupportsMebxMetadata(v4);
  }

  return result;
}

void fpfsi_assignCAImageQueuesToLayers(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, __int16 a13, char a14, os_log_type_t type, int a16, CFTypeRef cf, int a18, int a19, __int128 a20, const char *a21, uint64_t a22, uint64_t a23, __int128 a24, const void *a25, uint64_t a26, uint64_t a27, char a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57)
{
  OUTLINED_FUNCTION_416();
  a55 = v58;
  a56 = v59;
  v61 = v60;
  a43 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v63 = CMBaseObjectGetDerivedStorage();
  v64 = *(v63 + 392);
  if (v64)
  {
    Count = CFArrayGetCount(v64);
  }

  else
  {
    Count = 0;
  }

  v66 = *(DerivedStorage + 664);
  if (!v66)
  {
    goto LABEL_33;
  }

  v67 = CFArrayGetCount(v66);
  if (Count < 1 || v67 < 1)
  {
    goto LABEL_33;
  }

  if (Count == v67)
  {
    v69 = OUTLINED_FUNCTION_312();
    if (fpfs_getNext(v69, v70) == v61)
    {
      v71 = *(v63 + 880);
      cf = 0;
      AllocatorForMedia = FigGetAllocatorForMedia();
      Copy = CFArrayCreateCopy(AllocatorForMedia, *(DerivedStorage + 664));
      if (!v71)
      {
        v74 = FigGetAllocatorForMedia();
        FigDeferredTransactionCreate(v74, &cf);
      }

      FigCFCopyCompactDescription();
      OUTLINED_FUNCTION_604();
      v75 = FigCFCopyCompactDescription();
      if (!dword_1EAF169F0)
      {
        goto LABEL_25;
      }

      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      OUTLINED_FUNCTION_125();
      if (v77)
      {
        v78 = v76;
      }

      else
      {
        v78 = 0;
      }

      if (!v78)
      {
LABEL_24:
        OUTLINED_FUNCTION_2();
        fig_log_call_emit_and_clean_up_after_send_and_compose();
LABEL_25:
        if (v57)
        {
          CFRelease(v57);
        }

        if (v75)
        {
          CFRelease(v75);
        }

        OUTLINED_FUNCTION_387(MEMORY[0x1E6960C88]);
        v87 = OUTLINED_FUNCTION_171();
        FPSupport_AppendDeferredTransactionChangeForSettingCAImageQueuesOnVideoLayers(v87, v88, v89, v90);
        v91 = OUTLINED_FUNCTION_410();
        FPSupport_AppendDeferredTransactionChangeForSettingEdgeAntialiasingMaskOnLayers(v91, v92, v93);
        FigDeferredTransactionCommit(cf, 0);
        if (cf)
        {
          CFRelease(cf);
        }

        if (Copy)
        {
          CFRelease(Copy);
        }

        goto LABEL_33;
      }

      v79 = *DerivedStorage;
      if (v79)
      {
        v80 = (CMBaseObjectGetDerivedStorage() + 888);
        if (!v61)
        {
LABEL_23:
          a18 = 136316674;
          OUTLINED_FUNCTION_47();
          *(&a20 + 6) = v79;
          OUTLINED_FUNCTION_227();
          a21 = v80;
          OUTLINED_FUNCTION_97();
          WORD2(a24) = 2112;
          *(&a24 + 6) = v57;
          HIWORD(a24) = 2112;
          a25 = v75;
          OUTLINED_FUNCTION_32();
          v81 = OUTLINED_FUNCTION_34();
          _os_log_send_and_compose_impl(v81, v82, v83, v84, v85, os_log_and_send_and_compose_flags_and_os_log_type, 0, v86);
          goto LABEL_24;
        }
      }

      else
      {
        v80 = "";
        if (!v61)
        {
          goto LABEL_23;
        }
      }

      CMBaseObjectGetDerivedStorage();
      goto LABEL_23;
    }

LABEL_33:
    OUTLINED_FUNCTION_372();
    return;
  }

  OUTLINED_FUNCTION_303();
  OUTLINED_FUNCTION_372();

  FigSignalErrorAtGM(v94);
}

uint64_t fpfsi_ApplyFiltersAndSwitchVariantIfNecessary(uint64_t a1)
{
  v1 = *(CMBaseObjectGetDerivedStorage() + 40);
  if (!v1)
  {
    return 0;
  }

  v2 = FigAlternateSelectionBossApplyFilters(v1);
  if (!v2)
  {
    FigGetAllocatorForMedia();
    v3 = OUTLINED_FUNCTION_292();
    v2 = FigAlternateSelectionBossCopyProperty(v3, v4, v5, v6);
    if (!v2)
    {
      OUTLINED_FUNCTION_243();
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v9, v10, 0);
    }
  }

  return v2;
}

CFTypeRef fpfsi_copyPreviousImageQueueGauge()
{
  OUTLINED_FUNCTION_522();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!*(DerivedStorage + 463))
  {
    return 0;
  }

  v3 = OUTLINED_FUNCTION_172(DerivedStorage);
  if (fpfs_getPrev(v3, v1))
  {
    FigGetAllocatorForMedia();
    OUTLINED_FUNCTION_251();
    FigPlaybackItemGetFigBaseObject();
    if (*(*(CMBaseObjectGetVTable() + 8) + 48))
    {
      v4 = OUTLINED_FUNCTION_228();
      v5(v4);
      return v7;
    }

    return 0;
  }

  result = *(v0 + 728);
  if (result)
  {

    return CFRetain(result);
  }

  return result;
}

void fpfsi_CopyTaggedCharacteristicsForTrack(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, CFArrayRef theArray, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_653();
  v20 = v19;
  v22 = *(v21 + 48);
  v23 = *(v21 + 456);
  CMBaseObjectGetDerivedStorage();
  AllocatorForMedia = FigGetAllocatorForMedia();
  CFArrayCreateMutable(AllocatorForMedia, 0, MEMORY[0x1E695E9C0]);
  OUTLINED_FUNCTION_522();
  *v20 = 0;
  if (v22 == 1668047728)
  {
    v22 = 1935832172;
  }

  FigGetCFStringForOSTypeValue();
  v25 = OUTLINED_FUNCTION_731();
  MediaTypeInMediaArray = fpfs_FindMediaTypeInMediaArray(v25, v26, v27);
  if (!MediaTypeInMediaArray)
  {
    goto LABEL_15;
  }

  v29 = MediaTypeInMediaArray;
  v30 = OUTLINED_FUNCTION_249();
  if (!FigMediaCharacteristicsCreateMediaCharacteristicsForMediaOption(v30, v31, v29, v32))
  {
    if (theArray)
    {
      CFArrayGetCount(theArray);
      OUTLINED_FUNCTION_607();
      CFArrayAppendArray(v33, v34, v38);
    }

    Value = CFDictionaryGetValue(v29, @"MediaSelectionOptionsPersistentID");
    if (!v23 || v22 != 1936684398 || !Value)
    {
      goto LABEL_15;
    }

    SpecializedAudioChannelUsage = FigAlternateGetSpecializedAudioChannelUsage(v23, Value);
    if (SpecializedAudioChannelUsage == 3)
    {
      v37 = kFigStdAssetMediaCharacteristic_TaggedBinauralForHeadphones;
    }

    else
    {
      if (SpecializedAudioChannelUsage != 2)
      {
LABEL_15:
        *v20 = v18;
        goto LABEL_16;
      }

      v37 = kFigStdAssetMediaCharacteristic_TaggedDownmix;
    }

    CFArrayAppendValue(v18, *v37);
    goto LABEL_15;
  }

  if (v18)
  {
    CFRelease(v18);
  }

LABEL_16:
  if (theArray)
  {
    CFRelease(theArray);
  }

  OUTLINED_FUNCTION_652();
}

void fpfs_EnqueueReleaseAfterDecoding(uint64_t a1)
{
  v10 = 0;
  CMBaseObjectGetDerivedStorage();
  FigGetAllocatorForMedia();
  OUTLINED_FUNCTION_441();
  OUTLINED_FUNCTION_19();
  if (!CMSampleBufferCreate(v2, v3, v4, v5, v6, v7, v8, v9, 0, 0, 0, &v10) && (!*(CMBaseObjectGetDerivedStorage() + 504) || (_os_feature_enabled_impl() & 1) == 0))
  {
    CMSetAttachment(v10, *MEMORY[0x1E6962E00], *MEMORY[0x1E695E4D0], 1u);
    fpfsi_logAttachMarker(a1);
    fpfs_RenderBufferOrEnqueueToStartupQueue(a1, v10);
  }

  if (v10)
  {
    CFRelease(v10);
  }
}

void fpfs_AccumulateTrackDurationToBufferedAirPlayRenderedSampleRange(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  CMBaseObjectGetDerivedStorage();
  if (*(a1 + 198))
  {
    if (*(a1 + 112))
    {
      OUTLINED_FUNCTION_63();
      if (v2)
      {
        if (*(CMBaseObjectGetDerivedStorage() + 504))
        {
          lhs = *(a1 + 232);
          rhs = *(a1 + 208);
          CMTimeSubtract(&v7.start, &lhs, &rhs);
          value = v7.start.value;
          timescale = v7.start.timescale;
          OUTLINED_FUNCTION_350();
          if (v2)
          {
            epoch = v7.start.epoch;
            v5 = *(a1 + 112);
            *&v7.start.value = *(v5 + 120);
            v7.start.epoch = *(v5 + 136);
            rhs.value = value;
            rhs.timescale = timescale;
            rhs.flags = v3;
            rhs.epoch = epoch;
            CMTimeAdd(&lhs, &v7.start, &rhs);
            rhs = *(v5 + 96);
            CMTimeRangeMake(&v7, &rhs, &lhs);
            v6 = *&v7.start.epoch;
            *(v5 + 96) = *&v7.start.value;
            *(v5 + 112) = v6;
            *(v5 + 128) = *&v7.duration.timescale;
          }

          else
          {
            OUTLINED_FUNCTION_376();
            FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v7.start.value, v7.start.timescale, LODWORD(v7.start.epoch));
          }
        }
      }
    }
  }
}

void fpfs_CreateTrackDryTimer(uint64_t a1)
{
  CMBaseObjectGetDerivedStorage();
  v2 = OUTLINED_FUNCTION_171();
  ItemAndTrackNumberPayload = fpfs_CreateItemAndTrackNumberPayload(v2, v3);
  fpfsi_RemoveAndClearTimer((a1 + 136));
  v5 = OUTLINED_FUNCTION_621();
  fpfsi_CreateTimebaseTimer(v5, v6, v7, v8, 0, v9);
  v10 = MEMORY[0x1E6960C70];
  *(a1 + 172) = *MEMORY[0x1E6960C70];
  *(a1 + 188) = *(v10 + 16);
  if (ItemAndTrackNumberPayload)
  {

    CFRelease(ItemAndTrackNumberPayload);
  }
}

uint64_t fpfsi_deferredMarkerBufferConsumed(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const __CFDictionary *a5)
{
  OUTLINED_FUNCTION_382();
  v112 = *MEMORY[0x1E69E9840];
  v86 = 0;
  cf = 0;
  v13 = &unk_1EAF16000;
  if (!v9 || !CFDictionaryGetValue(a5, @"renderPipelineToStart"))
  {
    v14 = 0;
LABEL_4:
    v15 = 1;
    goto LABEL_5;
  }

  v14 = FigCFWeakReferenceHolderCopyReferencedObject();
  if (!v14)
  {
    goto LABEL_4;
  }

  if (dword_1EAF169F0)
  {
    LODWORD(v85.value) = 0;
    LOBYTE(type.value) = 0;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    OUTLINED_FUNCTION_134();
    if (v25)
    {
      v26 = v24;
    }

    else
    {
      v26 = 0;
    }

    if (v26)
    {
      v88 = 136315394;
      *v89 = "fpfsi_deferredMarkerBufferConsumed";
      *&v89[8] = 2048;
      *&v89[10] = v14;
      OUTLINED_FUNCTION_66();
      OUTLINED_FUNCTION_23();
      _os_log_send_and_compose_impl(v29, v30, v31, v32, v33, v34, 0, v35);
    }

    OUTLINED_FUNCTION_4();
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    v13 = &unk_1EAF16000;
  }

  FigRenderPipelineGetFigBaseObject();
  if (*(*(CMBaseObjectGetVTable() + 8) + 56))
  {
    v36 = OUTLINED_FUNCTION_148();
    v37(v36);
  }

  FigRenderPipelineGetFigBaseObject();
  if (*(*(CMBaseObjectGetVTable() + 8) + 56))
  {
    v38 = OUTLINED_FUNCTION_148();
    v39(v38);
  }

  v15 = 0;
LABEL_5:
  if (fpfsi_CopyPlayerAndItemFromItemRetainProxyAndLockPlayer(v5, &cf, &v86, v8, v9, v10, v11, v12, v69, v71, v73, v76, v78, type.value, type.timescale, SBYTE2(type.timescale), HIBYTE(type.timescale), type.flags, type.epoch, SHIDWORD(type.epoch), v85.value, SWORD2(v85.value), *&v85.timescale, v85.epoch, v86, cf, v88, *&v89[4], *&v89[12], v91, v92, *&v93[6], *v94, v94[8], *&v96[1], *&v96[3], time.value, *&time.timescale, time.epoch, v98, v99, v100, v101, v102, v103, v104, v105, v106, v107, v108, v109, v110, v111, v112, v113, v114, v115, v116, v117, v118, v119, v120, v121))
  {
    v16 = cf;
    if (!cf)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  v18 = v13;
  v19 = v86;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v21 = *(DerivedStorage + 1024);
  if (v21)
  {
    v22 = DerivedStorage;
    while (!*(v21 + 112) || !FigCFEqual())
    {
      v21 = *(v21 + 24);
      if (!v21)
      {
        goto LABEL_35;
      }
    }

    v27 = *(*(v21 + 112) + 64);
    if (v27)
    {
      CFRelease(v27);
      *(*(v21 + 112) + 64) = 0;
    }

    if ((v15 & 1) == 0)
    {
      v28 = *(v21 + 24);
      if (v28)
      {
        while (*(v28 + 48) != *(v21 + 48) || !*(v28 + 112))
        {
          v28 = *(v28 + 24);
          if (!v28)
          {
            goto LABEL_35;
          }
        }

        memset(&v85, 0, sizeof(v85));
        memset(&type, 0, sizeof(type));
        if (v18[636])
        {
          OUTLINED_FUNCTION_427();
          v80 = OUTLINED_FUNCTION_371(qword_1EAF169E8, v40, v41, v42, v43, v44, v45, v46, v70, v72, v74, v77, v79, *v81, v81[2], v81[3], v81[4]);
          os_log_type_enabled(v80, v82);
          OUTLINED_FUNCTION_189();
          if (!v25)
          {
            v47 = v83;
          }

          if (v47)
          {
            v75 = cf;
            if (cf)
            {
              v48 = (CMBaseObjectGetDerivedStorage() + 888);
            }

            else
            {
              v48 = "";
            }

            if (v19)
            {
              CMBaseObjectGetDerivedStorage();
            }

            v88 = 136316674;
            *v89 = "fpfsi_deferredMarkerBufferConsumed";
            *&v89[8] = 2048;
            *&v89[10] = v75;
            v90 = 2082;
            v91 = v48;
            v92 = 2048;
            *v93 = v19;
            *&v93[8] = 2082;
            OUTLINED_FUNCTION_359();
            *&v94[6] = v49;
            v95 = v50;
            *v96 = v51;
            OUTLINED_FUNCTION_66();
            OUTLINED_FUNCTION_108();
            _os_log_send_and_compose_impl(v52, v53, v54, v55, v56, v80, v57, v58);
          }

          OUTLINED_FUNCTION_7();
          fig_log_call_emit_and_clean_up_after_send_and_compose();
        }

        fpfsi_scheduleFVTTransitionsForItem(v19, 3, 0);
        v59 = OUTLINED_FUNCTION_732();
        fpfsi_RTCReportingReportFormatTransition(v59, v60, v28);
        fpfsi_RTCReportingUpdateCompletedDecodeForPrerollTime(v22);
        FPSupport_getVideoDecodeWaterLevels(&type, &v85, 1);
        time = v85;
        Seconds = CMTimeGetSeconds(&time);
        v62 = malloc_type_malloc(0x10uLL, 0x1020040EDED9539uLL);
        *v62 = FigRetainProxyRetain();
        v62[1] = *(v28 + 32);
        dispatch_time(0, (Seconds * 1000000000.0));
        v63 = OUTLINED_FUNCTION_802();
        dispatch_get_global_queue(v63, v64);
        v65 = OUTLINED_FUNCTION_406();
        dispatch_after_f(v65, v66, v67, v68);
        fpfsi_setCAImageQueueFlagsForTrack(v28);
      }
    }
  }

LABEL_35:
  v16 = cf;
  fpfs_UnlockAndPostNotificationsWithCaller(cf);
  if (v16)
  {
LABEL_7:
    CFRelease(v16);
  }

LABEL_8:
  if (v86)
  {
    CFRelease(v86);
  }

  if ((v15 & 1) == 0)
  {
    CFRelease(v14);
  }

  if (v6)
  {
    CFRelease(v6);
  }

  return FigRetainProxyRelease();
}