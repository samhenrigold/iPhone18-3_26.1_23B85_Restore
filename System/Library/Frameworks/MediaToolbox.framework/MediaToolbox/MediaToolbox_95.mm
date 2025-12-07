uint64_t playerfig_setActionAtEnd(uint64_t a1, int a2)
{
  result = CMBaseObjectGetDerivedStorage();
  v6 = *(result + 816);
  if (v6 != a2)
  {
    OUTLINED_FUNCTION_440_0(result);
    *(v2 + 816) = a2;
    v7 = a2 != 2 && v6 == 2;
    if (v7)
    {
      OUTLINED_FUNCTION_221_0();
      v8 = !v7;
    }

    else
    {
      v8 = 0;
    }

    if (CFArrayGetCount(*(v2 + 528)) >= 1)
    {
      v9 = OUTLINED_FUNCTION_233_0();
      CFRetain(v9);
      if (v9)
      {
        DerivedStorage = CMBaseObjectGetDerivedStorage();
        v11 = *(DerivedStorage + 352);
        if (v11)
        {
          if (!a2 && v6 && FigPlaybackBossDidReachEnd(v11))
          {
            v8 = 1;
          }

          if (*(DerivedStorage + 480))
          {
            v6 = *(v2 + 816);
            Count = CFArrayGetCount(*(v2 + 528));
            if (!FigPlaybackGetEffectiveActionAtEnd(v6, Count))
            {
              v30 = *(v2 + 528);
              if (v30)
              {
                if (CFArrayGetCount(v30) >= 2)
                {
                  CFArrayGetValueAtIndex(*(v2 + 528), 1);
                  v31 = OUTLINED_FUNCTION_201_0();
                  if (playerfig_maybeUndoQueueingForItem(v31, v32))
                  {
                    FigSimpleMutexUnlock();
                    OUTLINED_FUNCTION_137_0();
                    OUTLINED_FUNCTION_93_0();
                    playerfig_stopResetDisturbReprepareAndResumeWithTransaction();
                    FigSimpleMutexLock();
                  }
                }
              }
            }
          }

          FigPlaybackBossSetStopAtEnd(*(DerivedStorage + 352), a2 == 1);
          if (v8)
          {
            v13 = &off_196E72000;
            if (*(DerivedStorage + 496))
            {
              v14 = FigPlaybackBossDidReachEnd(*(DerivedStorage + 352));
              if (!v14)
              {
                if (dword_1EAF16A10)
                {
                  v22 = OUTLINED_FUNCTION_73_0(v14, v15, v16, v17, v18, v19, v20, v21, v73, v76, v79, v82, SBYTE2(v82), SBYTE3(v82), SHIDWORD(v82));
                  OUTLINED_FUNCTION_339_0(v22, v23, v24, v25, v26, v27, v28, v29, v74, v77, v80, v83, v85, v87, v89);
                  OUTLINED_FUNCTION_28();
                  if (a1)
                  {
                    CMBaseObjectGetDerivedStorage();
                  }

                  CMBaseObjectGetDerivedStorage();
                  OUTLINED_FUNCTION_18_0();
                  OUTLINED_FUNCTION_9_0();
                  OUTLINED_FUNCTION_23();
                  _os_log_send_and_compose_impl(v33, v34, v35, v36, v37, v38, v6, v39);
                  OUTLINED_FUNCTION_2();
                  fig_log_call_emit_and_clean_up_after_send_and_compose();
                  v13 = &off_196E72000;
                }

                *(DerivedStorage + 496) = 0;
                v40 = OUTLINED_FUNCTION_198_0();
                playerfig_prepareNextItemForTransition(v40, v41);
              }
            }

            v42 = FigPlaybackBossDidReachEnd(*(DerivedStorage + 352));
            if (v42)
            {
              if (dword_1EAF16A10)
              {
                v50 = OUTLINED_FUNCTION_73_0(v42, v43, v44, v45, v46, v47, v48, v49, v73, v76, v79, v82, SBYTE2(v82), SBYTE3(v82), SHIDWORD(v82));
                OUTLINED_FUNCTION_304(v50, v51, v52, v53, v54, v55, v56, v57, v75, v78, v81, v84, v86, v88, v90);
                OUTLINED_FUNCTION_46();
                if (v6)
                {
                  if (a1)
                  {
                    CMBaseObjectGetDerivedStorage();
                  }

                  CMBaseObjectGetDerivedStorage();
                  OUTLINED_FUNCTION_18_0();
                  OUTLINED_FUNCTION_9_0();
                  OUTLINED_FUNCTION_36();
                  _os_log_send_and_compose_impl(v58, v59, v60, v61, v62, v63, v13, v64);
                }

                OUTLINED_FUNCTION_7();
                OUTLINED_FUNCTION_238_0(v65, v66, v67, v68, v69);
              }

              *(v2 + 840) = 1;
              v70 = CMBaseObjectGetDerivedStorage();
              if (!*v70)
              {
                v71 = OUTLINED_FUNCTION_354_0(v70);
                if (v71)
                {
                  v72 = v71;
                  if (!*CMBaseObjectGetDerivedStorage())
                  {
                    CFRetain(v9);
                    FigSimpleMutexLock();
                    if (*(v13 + 44))
                    {
                      itemfig_advanceToNextItem(v9);
                    }

                    FigSimpleMutexUnlock();
                    playerfig_updatePlaybackStateAndBossRate(v72, 7, 0);
                    CFRelease(v9);
                  }

                  CFRelease(v72);
                }
              }

              *(v2 + 840) = 0;
            }
          }
        }

        CFRelease(v9);
        playerfig_updateStartHostTimeEstimatesOfAllItems(a1);
      }
    }

    return FigSimpleMutexUnlock();
  }

  return result;
}

void itemfig_reportingAgentReportBufferedAirPlayMode(uint64_t a1)
{
  if (a1)
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    v3 = OUTLINED_FUNCTION_282_0(DerivedStorage);
    v4 = CMBaseObjectGetDerivedStorage();
    if (v3 && v4)
    {
      FigSimpleMutexLock();
      if (*(v1 + 1952) && *(*(CMBaseObjectGetVTable() + 16) + 56))
      {
        OUTLINED_FUNCTION_333();
        v5();
      }

      FigSimpleMutexUnlock();
    }

    else if (!v3)
    {
      return;
    }

    CFRelease(v3);
  }
}

uint64_t itemfig_reportingAgentTeardown(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  v2 = *(DerivedStorage + 1952);
  if (v2)
  {
    v3 = *(*(CMBaseObjectGetVTable() + 16) + 112);
    if (v3)
    {
      v3(v2);
    }
  }

  v4 = *(DerivedStorage + 1960);
  if (v4)
  {
    CFRelease(v4);
    *(DerivedStorage + 1960) = 0;
  }

  v5 = *(DerivedStorage + 1952);
  if (v5)
  {
    CFRelease(v5);
    *(DerivedStorage + 1952) = 0;
  }

  return FigSimpleMutexUnlock();
}

void itemfig_timebaseEffectiveRateChanged(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_163_0(a1, a2);
  v3 = FigCFWeakReferenceHolderCopyReferencedObject();
  CMBaseObjectGetDerivedStorage();
  if (v3)
  {
    CFRetain(v2);
    OUTLINED_FUNCTION_120_0();
    FigDeferNotificationToDispatchQueue();

    CFRelease(v3);
  }
}

void itemfig_assetPropertyRevised(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const __CFDictionary *a5)
{
  CMBaseObjectGetDerivedStorage();
  v7 = FigCFWeakReferenceHolderCopyReferencedObject();
  CMBaseObjectGetDerivedStorage();
  CFDictionaryGetValue(a5, @"assetPayload_Property");
  if (v7)
  {
    if (FigCFEqual())
    {
      OUTLINED_FUNCTION_104(MEMORY[0x1E6960C70]);
      itemfig_GetDuration(a2, &v102);
      OUTLINED_FUNCTION_660(v8, v9, v10, v11, v12, v13, v14, v15, value, v92, cf, v97, v98, v99, v100.value, *&v100.timescale, v100.epoch, v101, *&v102.value);
      DerivedStorage = CMBaseObjectGetDerivedStorage();
      v17 = CMBaseObjectGetDerivedStorage();
      cf = 0;
      v18 = *MEMORY[0x1E695E480];
      v19 = FigDeferredTransactionCreate(*MEMORY[0x1E695E480], &cf);
      v29 = MEMORY[0x1E6960CC0];
      if (!v19)
      {
        v30 = cf;
        Count = *(DerivedStorage + 904);
        if (Count)
        {
          Count = CFArrayGetCount(Count);
          v32 = Count > 0;
        }

        else
        {
          v32 = 0;
        }

        OUTLINED_FUNCTION_376_0(Count, v20, v21, v22, v23, v24, v25, v26, v27, valuea, v93, cf, v97, v98, v99, v28, v100.value);
        time2 = *v29;
        v33 = CMTimeCompare(&time1, &time2);
        if (v33 >= 1)
        {
          if (v32)
          {
            OUTLINED_FUNCTION_376_0(v33, v34, *(DerivedStorage + 904), v35, v36, v37, v38, v39, v40, valuea, v93, cf, v97, v98, v99, v41, v100.value);
            FPSupport_AppendDeferredTransactionChangeForSettingDurationOnLayers(v30, &time1, v42);
          }

          if (FigUseVideoReceiverForCALayer())
          {
            FigSimpleMutexLock();
            for (i = 0; ; ++i)
            {
              v84 = *(v17 + 256);
              if (v84)
              {
                v84 = CFArrayGetCount(v84);
              }

              if (i >= v84)
              {
                break;
              }

              ValueAtIndex = CFArrayGetValueAtIndex(*(v17 + 256), i);
              v86 = *(CMBaseObjectGetVTable() + 24);
              if (v86)
              {
                v87 = *(v86 + 16);
                if (v87)
                {
                  time1 = v100;
                  v87(ValueAtIndex, &time1, v30);
                }
              }
            }
          }

          else
          {
            FigSimpleMutexLock();
            v43 = *(v17 + 216);
            if (v43 && CFArrayGetCount(v43) >= 1)
            {
              v44 = *(v17 + 216);
              time1 = **&MEMORY[0x1E6960C88];
              FPSupport_AppendDeferredTransactionChangeForSettingDurationOnLayers(v30, &time1, v44);
            }
          }

          FigSimpleMutexUnlock();
        }
      }

      FigDeferredTransactionCommit(cf, 0);
      v52 = cf;
      if (cf)
      {
        CFRelease(cf);
      }

      OUTLINED_FUNCTION_385_0(v52, v45, v46, v47, v48, v49, v50, v51, valuea, v93, cf, v97, v98, v99, v100.value, *&v100.timescale, v100.epoch, v101, *&v102.value);
      v53 = CMBaseObjectGetDerivedStorage();
      v106[0] = 0;
      OUTLINED_FUNCTION_361_0(v53, v54, v55, v56, v57, v58, v59, v60, v61, valueb, v94, v62, cf);
      v63 = CMTimeCopyAsDictionary(&time1, v18);
      OUTLINED_FUNCTION_361_0(v63, v64, v65, v66, v67, v68, v69, v70, v71, valuec, v95, v72, cf);
      time2 = *v29;
      v104 = 0;
      if (CMTimeCompare(&time1, &time2) >= 1)
      {
        itemfig_getVideoTargetTableForVideoTrack(a2, &v104);
        if (v104)
        {
          FigImageQueueTableCopyFigImageQueueArray(v104, v106);
          if (v106[0])
          {
            FigImageQueueArraySetProperty(v106[0], @"Duration", v63);
            if (v106[0])
            {
              CFRelease(v106[0]);
            }
          }
        }
      }

      if (v63)
      {
        CFRelease(v63);
      }

      if ((v102.flags & 1) != 0 && (time1 = v102, (time1.value = CMTimeCopyAsDictionary(&time1, v18)) != 0))
      {
        v73 = CFDictionaryCreate(v18, &kFigPlaybackItemParameter_CurrentDuration, &time1, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
        CFRelease(time1.value);
      }

      else
      {
        v73 = 0;
      }

      CMNotificationCenterGetDefaultLocalCenter();
      OUTLINED_FUNCTION_333();
      CMNotificationCenterPostNotification();
      if (v73)
      {
        CFRelease(v73);
      }

      v74 = OUTLINED_FUNCTION_298();
      NotificationPayloadForProperties = playerfig_createNotificationPayloadForProperties(v74, v75, v76, v77, v78, v79, v80, v81, @"SeekableTimeIntervals", 0);
      CMNotificationCenterGetDefaultLocalCenter();
      OUTLINED_FUNCTION_171_0();
      FigDispatchAsyncPostNotification();
      if (NotificationPayloadForProperties)
      {
        CFRelease(NotificationPayloadForProperties);
      }
    }

    CFRelease(v7);
  }
}

void itemfig_retrieveAssetBasicsIfReady()
{
  OUTLINED_FUNCTION_298_0();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v2 = OUTLINED_FUNCTION_283_0(DerivedStorage);
  CMBaseObjectGetDerivedStorage();
  if (v2)
  {
    if (!*(v0 + 1280) && *(*(CMBaseObjectGetVTable() + 16) + 8))
    {
      v3 = OUTLINED_FUNCTION_292();
      v4(v3);
    }

    CFRelease(v2);
  }

  OUTLINED_FUNCTION_297_0();
}

uint64_t itemfig_postReadyForInspectionPayloadBecauseAssetPropertyLoadedAndBasicsReady(uint64_t a1, const void *a2)
{
  values[16] = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v5 = OUTLINED_FUNCTION_283_0(DerivedStorage);
  CMBaseObjectGetDerivedStorage();
  if (!v5)
  {
    return 0;
  }

  if (*(v2 + 1280))
  {
    v48 = v5;
    if (*(v2 + 2008) == 0.0)
    {
      *(v2 + 2008) = CFAbsoluteTimeGetCurrent();
    }

    v6 = OUTLINED_FUNCTION_195_0();
    v8 = CFEqual(v6, v7);
    v9 = MEMORY[0x1E695E480];
    if (!v8 && !CFEqual(a2, @"Duration") && !CFEqual(a2, @"assetProperty_InitialSamples") && !CFEqual(a2, @"iTunesGaplessInfo") && !CFEqual(a2, @"assetProperty_CPEProtector"))
    {
      v14 = 0;
LABEL_36:
      if (CFEqual(a2, @"assetProperty_InitialSamples"))
      {
        v54 = 0;
        number = 0;
        v19 = *(v2 + 1008);
        v20 = *(*(CMBaseObjectGetVTable() + 16) + 8);
        if (v20)
        {
          v20(v19, &v54);
          if (v54 >= 1)
          {
            for (i = 0; i < v54; ++i)
            {
              v53 = 0;
              v51 = 0;
              v52 = 1061109567;
              if (*(*(CMBaseObjectGetVTable() + 16) + 48))
              {
                v22 = OUTLINED_FUNCTION_624();
                v23(v22);
              }

              FigTrackReaderGetFigBaseObject();
              if (*(*(CMBaseObjectGetVTable() + 8) + 48))
              {
                v24 = OUTLINED_FUNCTION_415_0();
                if (!v25(v24))
                {
                  if (number)
                  {
                    valuePtr = 0.0;
                    CFNumberGetValue(number, kCFNumberFloat32Type, &valuePtr);
                    if (dword_1EAF16A10)
                    {
                      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
                      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
                      OUTLINED_FUNCTION_425();
                      if (v28)
                      {
                        v29 = v27;
                      }

                      else
                      {
                        v29 = 0;
                      }

                      if (v29)
                      {
                        v30 = a1;
                        if (a1)
                        {
                          v31 = (CMBaseObjectGetDerivedStorage() + 2096);
                          v30 = a1;
                        }

                        else
                        {
                          v31 = "";
                        }

                        v32 = "samples per second";
                        if (v52 == 1986618469)
                        {
                          v32 = "frames per second";
                        }

                        *cf = 136317698;
                        *&cf[4] = "itemfig_postReadyForInspectionPayloadBecauseAssetPropertyLoadedAndBasicsReady";
                        v57 = 2048;
                        v58 = v30;
                        v59 = 2082;
                        v60 = v31;
                        v61 = 1024;
                        v62 = v51;
                        v63 = 1024;
                        v64 = HIBYTE(v52);
                        v65 = 1024;
                        v66 = BYTE2(v52);
                        v67 = 1024;
                        v68 = BYTE1(v52);
                        v69 = 1024;
                        v70 = v52;
                        v71 = 2048;
                        v72 = v53;
                        v73 = 2048;
                        v74 = valuePtr;
                        v75 = 2082;
                        v76 = v32;
                        OUTLINED_FUNCTION_66();
                        v33 = OUTLINED_FUNCTION_35();
                        _os_log_send_and_compose_impl(v33, v34, v35, v36, &dword_1962D5000, os_log_and_send_and_compose_flags_and_os_log_type, 0, "<<<< FigFilePlayer >>>> %s: [%p|%{public}s] Track ID %d %c%c%c%c (%p) nominal framerate: %1.3f %{public}s");
                      }

                      OUTLINED_FUNCTION_7();
                      OUTLINED_FUNCTION_635(v37, v38, v39, v40, v41);
                    }

                    CFRelease(number);
                  }
                }
              }

              if (v53)
              {
                CFRelease(v53);
              }
            }
          }
        }
      }

      if (v14)
      {
        CFRelease(v14);
      }

      v42 = 0;
      v5 = v48;
      goto LABEL_65;
    }

    v10 = OUTLINED_FUNCTION_195_0();
    if (CFEqual(v10, v11))
    {
      v12 = &kFigPlaybackItemProperty_Lyrics;
    }

    else if (CFEqual(a2, @"Duration"))
    {
      v12 = &kFigPlaybackItemProperty_AccurateDuration;
    }

    else if (CFEqual(a2, @"assetProperty_InitialSamples"))
    {
      v12 = &kFigPlaybackItemProperty_InitialSamples;
    }

    else if (CFEqual(a2, @"iTunesGaplessInfo"))
    {
      v12 = &kFigPlaybackItemProperty_iTunesGaplessInfo;
    }

    else
    {
      if (!CFEqual(a2, @"assetProperty_CPEProtector"))
      {
        if (!CFEqual(a2, @"assetProperty_ContentByteStream") && !CFEqual(a2, @"assetProperty_FormatReader") && !CFEqual(a2, @"assetProperty_Tracks"))
        {
          CFEqual(a2, @"MediaSelectionArray");
        }

        goto LABEL_30;
      }

      v12 = &kFigPlaybackItemProperty_CPEProtector;
    }

    values[0] = *v12;
    if (values[0])
    {
      v13 = *v9;
      *cf = CFArrayCreate(*v9, values, 1, MEMORY[0x1E695E9C0]);
      v14 = CFDictionaryCreate(v13, &kFigPlaybackItemParameter_Properties, cf, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      if (*cf)
      {
        CFRelease(*cf);
      }

      if (v14)
      {
        CMNotificationCenterGetDefaultLocalCenter();
        OUTLINED_FUNCTION_171_0();
        FigDispatchAsyncPostNotification();
        FigSimpleMutexLock();
        v15 = *(v2 + 1241);
        *(v2 + 1241) = 256;
        FigSimpleMutexUnlock();
        v16 = v15 == 0;
LABEL_32:
        v17 = OUTLINED_FUNCTION_195_0();
        if (CFEqual(v17, v18))
        {
          CMNotificationCenterGetDefaultLocalCenter();
          FigDispatchAsyncPostNotification();
        }

        if (!v16)
        {
          itemfig_postSelectedMediaOptionsDidChangeNotification(a1);
        }

        goto LABEL_36;
      }

LABEL_31:
      v16 = 1;
      goto LABEL_32;
    }

LABEL_30:
    v14 = 0;
    goto LABEL_31;
  }

  OUTLINED_FUNCTION_376();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v45, v46, v47);
  v42 = v44;
LABEL_65:
  CFRelease(v5);
  return v42;
}

void itemfig_DeferredTimebaseEffectiveRateChanged(uint64_t a1, uint64_t a2)
{
  v6 = OUTLINED_FUNCTION_645(a1, a2);
  v7 = OUTLINED_FUNCTION_337_0(v6);
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v25 = 0;
  if (v7)
  {
    v9 = DerivedStorage;
    FigSimpleMutexLock();
    itemfig_getVideoTargetTableForVideoTrack(v2, &v25);
    if (v25)
    {
      FigImageQueueTableRespondToTimebaseRateChange(v25, *(v3 + 328));
    }

    v10 = *(v3 + 1088);
    if (v10 && CFArrayGetCount(v10) >= 1)
    {
      OUTLINED_FUNCTION_332_0();
      do
      {
        cf = 0;
        FigCFArrayGetInt32AtIndex();
        itemfig_getTrackStorage(v2, 0, &cf);
        v11 = cf;
        if (cf)
        {
          v12 = *(cf + 28);
          if (v12)
          {
            if (CFArrayGetCount(v12) >= 1)
            {
              for (i = 0; ; ++i)
              {
                Count = *(v11 + 28);
                if (Count)
                {
                  Count = CFArrayGetCount(Count);
                }

                if (i >= Count)
                {
                  break;
                }

                ValueAtIndex = CFArrayGetValueAtIndex(*(v11 + 28), i);
                FigImageQueueTableRespondToTimebaseRateChange(ValueAtIndex, *(v3 + 328));
              }
            }
          }
        }

        ++v5;
      }

      while (v5 != v4);
    }

    v16 = *(v3 + 856);
    if (v16 && CFArrayGetCount(v16) >= 1)
    {
      OUTLINED_FUNCTION_332_0();
      do
      {
        v17 = CFArrayGetValueAtIndex(*(v3 + 856), v5);
        FigImageQueueTableRespondToTimebaseRateChange(v17, *(v3 + 328));
        OUTLINED_FUNCTION_220_0();
      }

      while (!v18);
    }

    if (!*(v3 + 2216))
    {
      Rate = CMTimebaseGetRate(*(v3 + 328));
      if (Rate != 0.0)
      {
        itemfig_UpdateLastPlayedOutOrLastPlayedDateIfNecessary(v2);
        *(v3 + 2216) = 1;
      }
    }

    if (CFArrayGetCount(*(v9 + 528)) >= 1 && CFArrayGetValueAtIndex(*(v9 + 528), 0) == v2)
    {
      v20 = CMTimebaseGetRate(*(v3 + 328));
      v21 = *(v3 + 2048);
      if (v21 != v20)
      {
        cf = 0;
        if (v2)
        {
          if (*(CMBaseObjectGetDerivedStorage() + 2232))
          {
            AllocatorForMedia = FigGetAllocatorForMedia();
            if (!FigMetricItemRateChangeEventCreate(AllocatorForMedia, 0, &cf, v20, v21))
            {
              if (*(*(CMBaseObjectGetVTable() + 16) + 40))
              {
                v23 = OUTLINED_FUNCTION_249();
                v24(v23);
              }
            }
          }

          if (cf)
          {
            CFRelease(cf);
          }
        }
      }

      itemfig_reportingAgentReportRateChanged();
    }

    FigSimpleMutexUnlock();
  }

  if (v2)
  {
    CFRelease(v2);
  }

  if (v7)
  {
    CFRelease(v7);
  }
}

uint64_t itemfig_assureFormatReader(const void *a1)
{
  CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  itemfig_setFormatReader(a1);
  v3 = v2;
  FigSimpleMutexUnlock();
  return v3;
}

void itemfig_copyMetadata()
{
  OUTLINED_FUNCTION_471();
  v3 = v2;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!*DerivedStorage && v0)
  {
    v5 = DerivedStorage;
    if (!itemfig_assureBasicsReadyForInspection(v3))
    {
      v6 = *(v5 + 126);

      FigMetadataCopyMovieMetadata(v6, v1, v0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_239();

    FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
  }
}

void itemfig_updatePreferredMaximumBufferDuration(uint64_t a1, int a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v4 = *(DerivedStorage + 1424);
  v5 = FigCFWeakReferenceHolderCopyReferencedObject();
  if (v5)
  {
    v6 = v5;
    *(DerivedStorage + 1424) = a2;
    if (v4 != a2)
    {
      if (*(DerivedStorage + 1456))
      {
        Mutable = 0;
      }

      else
      {
        Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
        FigCFDictionarySetValue();
      }

      CMNotificationCenterGetDefaultLocalCenter();
      OUTLINED_FUNCTION_426();
      CMNotificationCenterPostNotification();
      playerfig_configureDownloadInPlayQueueAndItemsToPrebuffer(v6);
      if (Mutable)
      {
        CFRelease(Mutable);
      }
    }

    CFRelease(v6);
  }
}

uint64_t itemfig_startCachePrimingWithDownloadToken()
{
  OUTLINED_FUNCTION_565();
  v9 = 0;
  valuePtr = 0;
  cf = 0;
  if (*(CMBaseObjectGetDerivedStorage() + 1384))
  {
    OUTLINED_FUNCTION_303();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
    goto LABEL_8;
  }

  CFNumberGetValue(v0, kCFNumberSInt64Type, &valuePtr);
  v1 = FigAssetCopyAssetWithDownloadToken(valuePtr, &v9);
  if (v1)
  {
    goto LABEL_8;
  }

  FigAssetGetCMBaseObject();
  if (!*(*(CMBaseObjectGetVTable() + 8) + 48))
  {
    goto LABEL_9;
  }

  v2 = OUTLINED_FUNCTION_292();
  v1 = v3(v2);
  if (v1)
  {
LABEL_8:
    v6 = v1;
    goto LABEL_10;
  }

  FigAssetGetCMBaseObject();
  if (*(*(CMBaseObjectGetVTable() + 8) + 48))
  {
    v4 = OUTLINED_FUNCTION_292();
    v1 = v5(v4);
    if (!v1)
    {
      OUTLINED_FUNCTION_303();
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
    }

    goto LABEL_8;
  }

LABEL_9:
  v6 = 4294954514;
LABEL_10:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v9)
  {
    CFRelease(v9);
  }

  return v6;
}

uint64_t itemfig_setVideoCompositionProperties(uint64_t a1)
{
  v534 = *MEMORY[0x1E69E9840];
  v527 = 0;
  cf = 0;
  if (!a1)
  {
    OUTLINED_FUNCTION_376();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v479, v490, v501);
    Basic = v478;
    v469 = 0;
    goto LABEL_241;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v6 = OUTLINED_FUNCTION_282_0(DerivedStorage);
  if (!v6)
  {
    v469 = 0;
    Basic = 0;
    goto LABEL_241;
  }

  v512 = v3;
  v516 = v6;
  v7 = CMBaseObjectGetDerivedStorage();
  v8 = OUTLINED_FUNCTION_732();
  if (!CFDictionaryContainsKey(v8, v9))
  {
    goto LABEL_13;
  }

  v10 = OUTLINED_FUNCTION_732();
  Value = CFDictionaryGetValue(v10, v11);
  CMTimeMakeFromDictionary(&time1[0].start, Value);
  valuePtr.value = time1[0].start.value;
  flags = time1[0].start.flags;
  valuePtr.timescale = time1[0].start.timescale;
  if ((time1[0].start.flags & 0x1D) != 1)
  {
    goto LABEL_261;
  }

  epoch = time1[0].start.epoch;
  time1[0].start.value = valuePtr.value;
  time1[0].start.timescale = valuePtr.timescale;
  OUTLINED_FUNCTION_386(MEMORY[0x1E6960CC0]);
  if (CMTimeCompare(&time1[0].start, &time2) < 1 || epoch)
  {
    goto LABEL_261;
  }

  *&time1[0].start.value = *(v1 + 692);
  time1[0].start.epoch = *(v1 + 708);
  time2.value = valuePtr.value;
  time2.timescale = valuePtr.timescale;
  time2.flags = flags;
  time2.epoch = 0;
  if (CMTimeCompare(&time1[0].start, &time2) && (*(v1 + 692) = valuePtr.value, *(v1 + 700) = valuePtr.timescale, *(v1 + 704) = flags, *(v1 + 708) = 0, *(v1 + 352)))
  {
    OUTLINED_FUNCTION_250_0();
    if (v15)
    {
      OUTLINED_FUNCTION_412_0();
      v23 = OUTLINED_FUNCTION_276_0(qword_1EAF16A08, v16, v17, v18, v19, v20, v21, v22, v479, v490, v501, *(&v501 + 1), v508, v3, v516, v520, SBYTE4(v520), v527, cf, time.value);
      v31 = OUTLINED_FUNCTION_239_0(v23, v24, v25, v26, v27, v28, v29, v30, v480, v491, v502, v505, v509, v513, v517, v521, type, v527, cf, time.value);
      if (OUTLINED_FUNCTION_71_0(v31))
      {
        LODWORD(time2.value) = 136315138;
        OUTLINED_FUNCTION_27_0();
        OUTLINED_FUNCTION_51_0();
        _os_log_send_and_compose_impl(v32, v33, v34, v35, v36, v37, &time2, v38);
        OUTLINED_FUNCTION_323_0();
      }

      OUTLINED_FUNCTION_13_0();
      OUTLINED_FUNCTION_449(v69, v70, v71, v72, v73);
    }

    else
    {
      flags = 1;
    }
  }

  else
  {
LABEL_13:
    flags = 0;
  }

  v39 = OUTLINED_FUNCTION_732();
  if (!CFDictionaryContainsKey(v39, v40))
  {
    goto LABEL_25;
  }

  v41 = OUTLINED_FUNCTION_732();
  v43 = CFDictionaryGetValue(v41, v42);
  if (!v43 || (v44 = v43, v45 = CFGetTypeID(v43), v45 != CFNumberGetTypeID()))
  {
LABEL_261:
    OUTLINED_FUNCTION_76_0();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
    goto LABEL_268;
  }

  valuePtr.value = 0;
  CFNumberGetValue(v44, kCFNumberCFIndexType, &valuePtr);
  if (*(v1 + 716) != LODWORD(valuePtr.value))
  {
    *(v1 + 716) = valuePtr.value;
    if (*(v1 + 352))
    {
      OUTLINED_FUNCTION_250_0();
      if (v15)
      {
        OUTLINED_FUNCTION_412_0();
        v53 = OUTLINED_FUNCTION_276_0(qword_1EAF16A08, v46, v47, v48, v49, v50, v51, v52, v479, v490, v501, *(&v501 + 1), v508, v512, v516, v520, SBYTE4(v520), v527, cf, time.value);
        v61 = OUTLINED_FUNCTION_239_0(v53, v54, v55, v56, v57, v58, v59, v60, v481, v492, v503, v506, v510, v514, v518, v522, typea, v527, cf, time.value);
        if (OUTLINED_FUNCTION_71_0(v61))
        {
          LODWORD(time2.value) = 136315138;
          OUTLINED_FUNCTION_27_0();
          OUTLINED_FUNCTION_51_0();
          _os_log_send_and_compose_impl(v62, v63, v64, v65, v66, v67, v45, v68);
          OUTLINED_FUNCTION_323_0();
        }

        OUTLINED_FUNCTION_13_0();
        OUTLINED_FUNCTION_449(v74, v75, v76, v77, v78);
      }

      else
      {
        flags = 1;
      }
    }
  }

LABEL_25:
  v79 = OUTLINED_FUNCTION_732();
  if (CFDictionaryContainsKey(v79, v80))
  {
    *&valuePtr.value = 0uLL;
    v81 = OUTLINED_FUNCTION_732();
    v83 = CFDictionaryGetValue(v81, v82);
    if (!v83)
    {
      goto LABEL_267;
    }

    v84 = v83;
    v85 = CFGetTypeID(v83);
    if (v85 != CFDictionaryGetTypeID() || !CGSizeMakeWithDictionaryRepresentation(v84, &valuePtr))
    {
      goto LABEL_267;
    }

    FigSimpleMutexLock();
    v86 = *(v1 + 720) == *&valuePtr.value && *(v1 + 728) == *&valuePtr.timescale;
    if (v86)
    {
      FigSimpleMutexUnlock();
    }

    else
    {
      *(v1 + 720) = *&valuePtr.value;
      v87 = *(v1 + 352);
      FigSimpleMutexUnlock();
      if (v87)
      {
        OUTLINED_FUNCTION_250_0();
        if (v15)
        {
          OUTLINED_FUNCTION_412_0();
          v95 = OUTLINED_FUNCTION_276_0(qword_1EAF16A08, v88, v89, v90, v91, v92, v93, v94, v479, v490, v501, *(&v501 + 1), v508, v512, v516, v520, SBYTE4(v520), v527, cf, time.value);
          os_log_type_enabled(v95, BYTE4(v520));
          OUTLINED_FUNCTION_70();
          if (v2)
          {
            flags = CMBaseObjectGetDerivedStorage() + 972;
            CMBaseObjectGetDerivedStorage();
            LODWORD(time2.value) = 136316162;
            OUTLINED_FUNCTION_60_0();
            OUTLINED_FUNCTION_51_0();
            _os_log_send_and_compose_impl(v96, v97, v98, v99, v100, v101, BYTE4(v520), v102);
          }

          OUTLINED_FUNCTION_13_0();
          OUTLINED_FUNCTION_454(v103, v104, v105, v106, v107);
        }

        else
        {
          flags = 1;
        }
      }
    }
  }

  v108 = OUTLINED_FUNCTION_732();
  if (CFDictionaryContainsKey(v108, v109))
  {
    v110 = OUTLINED_FUNCTION_732();
    v112 = CFDictionaryGetValue(v110, v111);
    v113 = v112;
    if (v112)
    {
      v114 = CFGetTypeID(v112);
      if (v114 != CFArrayGetTypeID())
      {
        v113 = 0;
      }
    }

    FigSimpleMutexLock();
    if (FigCFEqual())
    {
      FigSimpleMutexUnlock();
    }

    else
    {
      v152 = *(v1 + 776);
      *(v1 + 776) = v113;
      if (v113)
      {
        CFRetain(v113);
      }

      if (v152)
      {
        CFRelease(v152);
      }

      v153 = *(v1 + 352);
      FigSimpleMutexUnlock();
      if (v153)
      {
        OUTLINED_FUNCTION_250_0();
        if (v15)
        {
          OUTLINED_FUNCTION_227_0();
          v161 = OUTLINED_FUNCTION_178_0(qword_1EAF16A08, v154, v155, v156, v157, v158, v159, v160, v479, v490, v501);
          OUTLINED_FUNCTION_426_0(v161, v162, v163, v164, v165, v166, v167, v168, v483, v494, v501, *(&v501 + 1), v508, v512, v516, v520, v527, cf, time.value, *&time.timescale, time.epoch, v530, valuePtr.value);
          OUTLINED_FUNCTION_70();
          if (v2)
          {
            flags = CMBaseObjectGetDerivedStorage() + 972;
            CMBaseObjectGetDerivedStorage();
            LODWORD(time2.value) = 136316162;
            OUTLINED_FUNCTION_60_0();
            OUTLINED_FUNCTION_51_0();
            _os_log_send_and_compose_impl(v169, v170, v171, v172, v173, v174, v152, v175);
          }

          OUTLINED_FUNCTION_13_0();
          OUTLINED_FUNCTION_454(v359, v360, v361, v362, v363);
        }

        else
        {
          flags = 1;
        }
      }
    }
  }

  v115 = OUTLINED_FUNCTION_732();
  if (CFDictionaryContainsKey(v115, v116))
  {
    v117 = OUTLINED_FUNCTION_732();
    v119 = CFDictionaryGetValue(v117, v118);
    v120 = v119;
    if (v119)
    {
      v121 = CFGetTypeID(v119);
      if (v121 != CFArrayGetTypeID())
      {
        v120 = 0;
      }
    }

    FigSimpleMutexLock();
    if (FigCFEqual())
    {
      FigSimpleMutexUnlock();
    }

    else
    {
      v176 = *(v1 + 784);
      *(v1 + 784) = v120;
      if (v120)
      {
        CFRetain(v120);
      }

      if (v176)
      {
        CFRelease(v176);
      }

      v177 = *(v1 + 352);
      FigSimpleMutexUnlock();
      if (v177)
      {
        OUTLINED_FUNCTION_250_0();
        if (v15)
        {
          OUTLINED_FUNCTION_227_0();
          v185 = OUTLINED_FUNCTION_178_0(qword_1EAF16A08, v178, v179, v180, v181, v182, v183, v184, v479, v490, v501);
          OUTLINED_FUNCTION_426_0(v185, v186, v187, v188, v189, v190, v191, v192, v484, v495, v501, *(&v501 + 1), v508, v512, v516, v520, v527, cf, time.value, *&time.timescale, time.epoch, v530, valuePtr.value);
          OUTLINED_FUNCTION_70();
          if (v2)
          {
            flags = CMBaseObjectGetDerivedStorage() + 972;
            CMBaseObjectGetDerivedStorage();
            LODWORD(time2.value) = 136316162;
            OUTLINED_FUNCTION_60_0();
            OUTLINED_FUNCTION_51_0();
            _os_log_send_and_compose_impl(v193, v194, v195, v196, v197, v198, v176, v199);
          }

          OUTLINED_FUNCTION_13_0();
          OUTLINED_FUNCTION_454(v364, v365, v366, v367, v368);
        }

        else
        {
          flags = 1;
        }
      }
    }
  }

  v122 = OUTLINED_FUNCTION_732();
  if (CFDictionaryContainsKey(v122, v123))
  {
    LODWORD(valuePtr.value) = 1065353216;
    v124 = OUTLINED_FUNCTION_732();
    v126 = CFDictionaryGetValue(v124, v125);
    if (!v126)
    {
      goto LABEL_270;
    }

    v127 = v126;
    v128 = CFGetTypeID(v126);
    if (v128 != CFNumberGetTypeID())
    {
      goto LABEL_270;
    }

    CFNumberGetValue(v127, kCFNumberFloatType, &valuePtr);
    if (*(v1 + 736) != *&valuePtr.value)
    {
      *(v1 + 736) = valuePtr.value;
      if (*(v1 + 352))
      {
        OUTLINED_FUNCTION_250_0();
        if (v15)
        {
          OUTLINED_FUNCTION_412_0();
          v136 = OUTLINED_FUNCTION_276_0(qword_1EAF16A08, v129, v130, v131, v132, v133, v134, v135, v479, v490, v501, *(&v501 + 1), v508, v512, v516, v520, SBYTE4(v520), v527, cf, time.value);
          v144 = OUTLINED_FUNCTION_239_0(v136, v137, v138, v139, v140, v141, v142, v143, v482, v493, v504, v507, v511, v515, v519, v523, typeb, v527, cf, time.value);
          if (OUTLINED_FUNCTION_71_0(v144))
          {
            LODWORD(time2.value) = 136315138;
            OUTLINED_FUNCTION_27_0();
            OUTLINED_FUNCTION_51_0();
            _os_log_send_and_compose_impl(v145, v146, v147, v148, v149, v150, v128, v151);
            OUTLINED_FUNCTION_323_0();
          }

          OUTLINED_FUNCTION_13_0();
          OUTLINED_FUNCTION_449(v200, v201, v202, v203, v204);
        }

        else
        {
          flags = 1;
        }
      }
    }
  }

  v205 = OUTLINED_FUNCTION_732();
  v207 = CFDictionaryContainsKey(v205, v206);
  v208 = MEMORY[0x1E695E738];
  if (v207)
  {
    v209 = OUTLINED_FUNCTION_732();
    CFDictionaryGetValue(v209, v210);
    OUTLINED_FUNCTION_108_0();
    if (!FigCFEqual())
    {
      if (@"VideoCompositorColorPrimaries")
      {
        v250 = CFGetTypeID(@"VideoCompositorColorPrimaries");
        if (v250 != CFStringGetTypeID())
        {
          goto LABEL_270;
        }

        v251 = *(v1 + 744);
        *(v1 + 744) = @"VideoCompositorColorPrimaries";
        CFRetain(@"VideoCompositorColorPrimaries");
        if (!v251)
        {
          goto LABEL_128;
        }
      }

      else
      {
        v251 = *(v1 + 744);
        *(v1 + 744) = 0;
        if (!v251)
        {
LABEL_128:
          if (*(v1 + 352))
          {
            if (dword_1EAF16A10 < 2)
            {
              flags = 1;
            }

            else
            {
              OUTLINED_FUNCTION_227_0();
              v259 = OUTLINED_FUNCTION_178_0(qword_1EAF16A08, v252, v253, v254, v255, v256, v257, v258, v479, v490, v501);
              v267 = OUTLINED_FUNCTION_152_0(v259, v260, v261, v262, v263, v264, v265, v266, v485, v496, v501, *(&v501 + 1), v508, v512, v516, v520, v527, cf, time.value, *&time.timescale, time.epoch, v530, valuePtr.value);
              if (OUTLINED_FUNCTION_71_0(v267))
              {
                LODWORD(time2.value) = 136315138;
                OUTLINED_FUNCTION_27_0();
                OUTLINED_FUNCTION_51_0();
                _os_log_send_and_compose_impl(v268, v269, v270, v271, v272, v273, v251, v274);
                OUTLINED_FUNCTION_321_0();
              }

              OUTLINED_FUNCTION_13_0();
              OUTLINED_FUNCTION_449(v369, v370, v371, v372, v373);
            }
          }

          goto LABEL_82;
        }
      }

      CFRelease(v251);
      goto LABEL_128;
    }
  }

LABEL_82:
  v211 = OUTLINED_FUNCTION_732();
  if (!CFDictionaryContainsKey(v211, v212))
  {
    goto LABEL_84;
  }

  v213 = OUTLINED_FUNCTION_732();
  CFDictionaryGetValue(v213, v214);
  OUTLINED_FUNCTION_108_0();
  if (FigCFEqual())
  {
    goto LABEL_84;
  }

  if (@"VideoCompositorColorYCbCrMatrix")
  {
    v275 = CFGetTypeID(@"VideoCompositorColorYCbCrMatrix");
    if (v275 != CFStringGetTypeID())
    {
      goto LABEL_270;
    }

    v276 = *(v1 + 752);
    *(v1 + 752) = @"VideoCompositorColorYCbCrMatrix";
    CFRetain(@"VideoCompositorColorYCbCrMatrix");
    if (!v276)
    {
      goto LABEL_136;
    }

    goto LABEL_135;
  }

  v276 = *(v1 + 752);
  *(v1 + 752) = 0;
  if (v276)
  {
LABEL_135:
    CFRelease(v276);
  }

LABEL_136:
  if (*(v1 + 352))
  {
    if (dword_1EAF16A10 < 2)
    {
      flags = 1;
    }

    else
    {
      OUTLINED_FUNCTION_227_0();
      v284 = OUTLINED_FUNCTION_178_0(qword_1EAF16A08, v277, v278, v279, v280, v281, v282, v283, v479, v490, v501);
      v292 = OUTLINED_FUNCTION_152_0(v284, v285, v286, v287, v288, v289, v290, v291, v486, v497, v501, *(&v501 + 1), v508, v512, v516, v520, v527, cf, time.value, *&time.timescale, time.epoch, v530, valuePtr.value);
      if (OUTLINED_FUNCTION_71_0(v292))
      {
        LODWORD(time2.value) = 136315138;
        OUTLINED_FUNCTION_27_0();
        OUTLINED_FUNCTION_51_0();
        _os_log_send_and_compose_impl(v293, v294, v295, v296, v297, v298, v276, v299);
        OUTLINED_FUNCTION_321_0();
      }

      OUTLINED_FUNCTION_13_0();
      OUTLINED_FUNCTION_449(v374, v375, v376, v377, v378);
    }
  }

LABEL_84:
  v215 = OUTLINED_FUNCTION_732();
  if (!CFDictionaryContainsKey(v215, v216))
  {
    goto LABEL_86;
  }

  v217 = OUTLINED_FUNCTION_732();
  CFDictionaryGetValue(v217, v218);
  OUTLINED_FUNCTION_108_0();
  if (FigCFEqual())
  {
    goto LABEL_86;
  }

  if (@"VideoCompositorColorTransferFunction")
  {
    v300 = CFGetTypeID(@"VideoCompositorColorTransferFunction");
    if (v300 != CFStringGetTypeID())
    {
      goto LABEL_270;
    }

    v301 = *(v1 + 760);
    *(v1 + 760) = @"VideoCompositorColorTransferFunction";
    CFRetain(@"VideoCompositorColorTransferFunction");
    if (!v301)
    {
      goto LABEL_144;
    }

    goto LABEL_143;
  }

  v301 = *(v1 + 760);
  *(v1 + 760) = 0;
  if (v301)
  {
LABEL_143:
    CFRelease(v301);
  }

LABEL_144:
  if (*(v1 + 352))
  {
    if (dword_1EAF16A10 < 2)
    {
      flags = 1;
    }

    else
    {
      OUTLINED_FUNCTION_227_0();
      v309 = OUTLINED_FUNCTION_178_0(qword_1EAF16A08, v302, v303, v304, v305, v306, v307, v308, v479, v490, v501);
      v317 = OUTLINED_FUNCTION_152_0(v309, v310, v311, v312, v313, v314, v315, v316, v487, v498, v501, *(&v501 + 1), v508, v512, v516, v520, v527, cf, time.value, *&time.timescale, time.epoch, v530, valuePtr.value);
      if (OUTLINED_FUNCTION_71_0(v317))
      {
        LODWORD(time2.value) = 136315138;
        OUTLINED_FUNCTION_27_0();
        OUTLINED_FUNCTION_51_0();
        _os_log_send_and_compose_impl(v318, v319, v320, v321, v322, v323, v301, v324);
        OUTLINED_FUNCTION_321_0();
      }

      OUTLINED_FUNCTION_13_0();
      OUTLINED_FUNCTION_449(v379, v380, v381, v382, v383);
    }
  }

LABEL_86:
  v219 = OUTLINED_FUNCTION_732();
  if (!CFDictionaryContainsKey(v219, v220))
  {
    goto LABEL_88;
  }

  v221 = OUTLINED_FUNCTION_732();
  CFDictionaryGetValue(v221, v222);
  OUTLINED_FUNCTION_108_0();
  if (FigCFEqual())
  {
    goto LABEL_88;
  }

  if (@"VideoCompositorHDRDisplayMetadataPolicy")
  {
    v325 = CFGetTypeID(@"VideoCompositorHDRDisplayMetadataPolicy");
    if (v325 == CFStringGetTypeID())
    {
      v326 = *(v1 + 768);
      *(v1 + 768) = @"VideoCompositorHDRDisplayMetadataPolicy";
      CFRetain(@"VideoCompositorHDRDisplayMetadataPolicy");
      if (!v326)
      {
        goto LABEL_152;
      }

      goto LABEL_151;
    }

LABEL_270:
    OUTLINED_FUNCTION_76_0();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
    goto LABEL_268;
  }

  v326 = *(v1 + 768);
  *(v1 + 768) = 0;
  if (v326)
  {
LABEL_151:
    CFRelease(v326);
  }

LABEL_152:
  if (*(v1 + 352))
  {
    if (dword_1EAF16A10 < 2)
    {
      flags = 1;
    }

    else
    {
      OUTLINED_FUNCTION_227_0();
      v334 = OUTLINED_FUNCTION_178_0(qword_1EAF16A08, v327, v328, v329, v330, v331, v332, v333, v479, v490, v501);
      v342 = OUTLINED_FUNCTION_152_0(v334, v335, v336, v337, v338, v339, v340, v341, v488, v499, v501, *(&v501 + 1), v508, v512, v516, v520, v527, cf, time.value, *&time.timescale, time.epoch, v530, valuePtr.value);
      if (OUTLINED_FUNCTION_71_0(v342))
      {
        LODWORD(time2.value) = 136315138;
        OUTLINED_FUNCTION_27_0();
        OUTLINED_FUNCTION_51_0();
        _os_log_send_and_compose_impl(v343, v344, v345, v346, v347, v348, v326, v349);
        OUTLINED_FUNCTION_321_0();
      }

      OUTLINED_FUNCTION_13_0();
      OUTLINED_FUNCTION_449(v384, v385, v386, v387, v388);
    }
  }

LABEL_88:
  v223 = OUTLINED_FUNCTION_732();
  if (CFDictionaryContainsKey(v223, v224))
  {
    v225 = OUTLINED_FUNCTION_732();
    CFDictionaryGetValue(v225, v226);
    OUTLINED_FUNCTION_108_0();
    if (@"VideoCompositorSourceSampleDataTrackIDs")
    {
      v227 = CFGetTypeID(@"VideoCompositorSourceSampleDataTrackIDs");
      if (v227 != CFArrayGetTypeID())
      {
        goto LABEL_269;
      }
    }

    FigSimpleMutexLock();
    v228 = *(v1 + 800);
    *(v1 + 800) = @"VideoCompositorSourceSampleDataTrackIDs";
    if (@"VideoCompositorSourceSampleDataTrackIDs")
    {
      CFRetain(@"VideoCompositorSourceSampleDataTrackIDs");
    }

    if (v228)
    {
      CFRelease(v228);
    }

    FigSimpleMutexUnlock();
  }

  v229 = OUTLINED_FUNCTION_732();
  if (CFDictionaryContainsKey(v229, v230))
  {
    v231 = OUTLINED_FUNCTION_732();
    CFDictionaryGetValue(v231, v232);
    OUTLINED_FUNCTION_108_0();
    if (@"VideoCompositorSourceVideoTrackWindows")
    {
      v233 = CFGetTypeID(@"VideoCompositorSourceVideoTrackWindows");
      if (v233 != CFArrayGetTypeID())
      {
        goto LABEL_269;
      }
    }

    FigSimpleMutexLock();
    if (!FigVideoCompositionWindowSerializedConfigurationForTracksEqual(*(v1 + 808), @"VideoCompositorSourceVideoTrackWindows"))
    {
      v234 = *(v1 + 808);
      *(v1 + 808) = @"VideoCompositorSourceVideoTrackWindows";
      if (@"VideoCompositorSourceVideoTrackWindows")
      {
        CFRetain(@"VideoCompositorSourceVideoTrackWindows");
      }

      if (v234)
      {
        CFRelease(v234);
      }

      flags = 1;
    }

    FigSimpleMutexUnlock();
  }

  v235 = OUTLINED_FUNCTION_732();
  if (!CFDictionaryContainsKey(v235, v236))
  {
    goto LABEL_116;
  }

  v237 = OUTLINED_FUNCTION_732();
  CFDictionaryGetValue(v237, v238);
  OUTLINED_FUNCTION_108_0();
  if (@"VideoCompositorSourceSampleDataTrackWindows")
  {
    v239 = CFGetTypeID(@"VideoCompositorSourceSampleDataTrackWindows");
    if (v239 != CFArrayGetTypeID())
    {
LABEL_269:
      OUTLINED_FUNCTION_76_0();
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
      Basic = 0;
      goto LABEL_240;
    }
  }

  FigSimpleMutexLock();
  if (!FigVideoCompositionWindowSerializedConfigurationForTracksEqual(*(v1 + 816), @"VideoCompositorSourceSampleDataTrackWindows"))
  {
    v240 = *(v1 + 816);
    *(v1 + 816) = @"VideoCompositorSourceSampleDataTrackWindows";
    if (@"VideoCompositorSourceSampleDataTrackWindows")
    {
      CFRetain(@"VideoCompositorSourceSampleDataTrackWindows");
    }

    if (v240)
    {
      CFRelease(v240);
    }

    flags = 1;
  }

  FigSimpleMutexUnlock();
LABEL_116:
  v241 = OUTLINED_FUNCTION_732();
  if (!CFDictionaryContainsKey(v241, v242))
  {
    Basic = 0;
    goto LABEL_205;
  }

  v243 = OUTLINED_FUNCTION_732();
  v245 = CFDictionaryGetValue(v243, v244);
  v246 = 0;
  Basic = 0;
  v248 = MEMORY[0x1E695E480];
  if (!v245 || v245 == *v208)
  {
    goto LABEL_156;
  }

  if (CFEqual(v245, @"VideoCompositor_Basic"))
  {
    goto LABEL_120;
  }

  if (CFEqual(v245, @"VideoCompositor_vImage"))
  {
LABEL_160:
    if (*(v1 + 664) == 3 && (v354 = *(v1 + 656)) != 0)
    {
      CFRetain(v354);
      OUTLINED_FUNCTION_367_0();
    }

    else
    {
      v355 = OUTLINED_FUNCTION_284_0();
      Basic = FigVideoCompositorCreatevImage(v355, v356, v357);
    }

    v350 = 3;
    goto LABEL_195;
  }

  if (CFEqual(v245, @"VideoCompositor_Metal"))
  {
    goto LABEL_178;
  }

  if (CFEqual(v245, @"VideoCompositor_OpenGL"))
  {
    goto LABEL_190;
  }

  if (!CFEqual(v245, @"VideoCompositor_DeviceSpecific"))
  {
    FigVideoCompositorGetTypeID();
    CFGetTypeID(v245);
    goto LABEL_259;
  }

  FigVideoCompositorCopyDeviceSpecificCompositorName(0, &v527);
  Basic = v472;
  if (v472)
  {
LABEL_260:
    v246 = CFRetain(v245);
LABEL_156:
    v350 = 0;
    cf = v246;
    goto LABEL_195;
  }

  if (FigCFEqual())
  {
LABEL_120:
    if (*(v1 + 664) == 1 && (v249 = *(v1 + 656)) != 0)
    {
      CFRetain(v249);
      OUTLINED_FUNCTION_367_0();
    }

    else
    {
      v351 = OUTLINED_FUNCTION_284_0();
      Basic = FigVideoCompositorCreateBasic(v351, v352, v353);
    }

    v350 = 1;
    goto LABEL_195;
  }

  if (FigCFEqual())
  {
    goto LABEL_160;
  }

  if (FigCFEqual())
  {
LABEL_178:
    if (*(v1 + 664) == 4 && (v358 = *(v1 + 656)) != 0)
    {
      CFRetain(v358);
      OUTLINED_FUNCTION_367_0();
    }

    else
    {
      Basic = FigVideoCompositorCreateMetal(*v248, &cf);
    }

    v350 = 4;
    goto LABEL_195;
  }

  if (!FigCFEqual())
  {
LABEL_259:
    Basic = 0;
    goto LABEL_260;
  }

LABEL_190:
  if (*(v1 + 664) == 2 && (v389 = *(v1 + 656)) != 0)
  {
    CFRetain(v389);
    OUTLINED_FUNCTION_367_0();
  }

  else
  {
    v390 = OUTLINED_FUNCTION_284_0();
    Basic = FigVideoCompositorCreateOpenGL(v390, v391, v392);
  }

  v350 = 2;
LABEL_195:
  v393 = cf;
  if (Basic || !cf)
  {
    if (Basic)
    {
      goto LABEL_205;
    }
  }

  else
  {
    LODWORD(time1[0].start.value) = 23;
    v394 = CFNumberCreate(*v248, kCFNumberSInt32Type, time1);
    FigVideoCompositorGetFigBaseObject();
    v245 = v395;
    v396 = *(*(CMBaseObjectGetVTable() + 8) + 56);
    if (v396)
    {
      v396(v245, @"WorkerThreadPriority", v394);
    }

    if (v394)
    {
      CFRelease(v394);
    }

    v393 = cf;
  }

  if (*(v1 + 656) == v393)
  {
    goto LABEL_204;
  }

  FigSimpleMutexLock();
  v439 = *(v1 + 656);
  v440 = cf;
  *(v1 + 656) = cf;
  if (v440)
  {
    CFRetain(v440);
  }

  if (v439)
  {
    CFRelease(v439);
  }

  *(v1 + 664) = v350;
  itemfig_updateHasEnabledVideo(a1);
  FigSimpleMutexUnlock();
  if (!*(v1 + 352))
  {
    goto LABEL_204;
  }

  if (dword_1EAF16A10 >= 2)
  {
    OUTLINED_FUNCTION_227_0();
    v448 = OUTLINED_FUNCTION_178_0(qword_1EAF16A08, v441, v442, v443, v444, v445, v446, v447, v479, v490, v501);
    v456 = OUTLINED_FUNCTION_152_0(v448, v449, v450, v451, v452, v453, v454, v455, v489, v500, v501, *(&v501 + 1), v508, v512, v516, v520, v527, cf, time.value, *&time.timescale, time.epoch, v530, valuePtr.value);
    if (OUTLINED_FUNCTION_71_0(v456))
    {
      LODWORD(time2.value) = 136315138;
      OUTLINED_FUNCTION_27_0();
      OUTLINED_FUNCTION_51_0();
      _os_log_send_and_compose_impl(v457, v458, v459, v460, v461, v462, v245, v463);
      OUTLINED_FUNCTION_321_0();
    }

    OUTLINED_FUNCTION_13_0();
    OUTLINED_FUNCTION_449(v473, v474, v475, v476, v477);
LABEL_204:
    Basic = 0;
    goto LABEL_205;
  }

  Basic = 0;
  flags = 1;
LABEL_205:
  v397 = OUTLINED_FUNCTION_204_0();
  if (CFDictionaryContainsKey(v397, v398))
  {
    memset(&time2, 0, sizeof(time2));
    v399 = OUTLINED_FUNCTION_204_0();
    v401 = CFDictionaryGetValue(v399, v400);
    if (v401)
    {
      v402 = v401;
      v403 = CFGetTypeID(v401);
      if (v403 == CFArrayGetTypeID())
      {
        itemfig_GetDuration(a1, &time2);
        if (!v404)
        {
          valuePtr = time2;
          OUTLINED_FUNCTION_29();
          if (v86)
          {
            *&time1[0].start.value = *(v1 + 236);
            time1[0].start.epoch = *(v1 + 252);
            v501 = *MEMORY[0x1E6960CC0];
            *&time.value = *MEMORY[0x1E6960CC0];
            v405 = *(MEMORY[0x1E6960CC0] + 16);
            time.epoch = v405;
            if ((CMTimeCompare(&time1[0].start, &time) & 0x80000000) == 0)
            {
              OUTLINED_FUNCTION_29();
              if (v86)
              {
                OUTLINED_FUNCTION_196_0((v1 + 260));
                *&time.value = v501;
                time.epoch = v405;
                v406 = CMTimeCompare(&time1[0].start, &time);
                if (v406 >= 1)
                {
                  OUTLINED_FUNCTION_418_0(v406, v407, v408, v409, v410, v411, v412, v413, v479, v490, v501, *(&v501 + 1), v508, v512, v516, v520, v527, cf, time.value, *&time.timescale, time.epoch, v530, *&valuePtr.value);
                  v414 = *(v1 + 252);
                  *&time1[0].start.value = *(v1 + 236);
                  *&time1[0].start.epoch = v414;
                  *&time1[0].duration.timescale = *(v1 + 268);
                  CMTimeFoldIntoRange(&valuePtr, &time, time1);
                }
              }
            }
          }

          OUTLINED_FUNCTION_196_0(MEMORY[0x1E6960CC0]);
          OUTLINED_FUNCTION_418_0(v415, v416, v417, v418, v419, v420, v421, v422, v479, v490, v501, *(&v501 + 1), v508, v512, v516, v520, v527, cf, time.value, *&time.timescale, time.epoch, v530, *&valuePtr.value);
          if (FigVideoCompositionInstructionArrayIsValid(v402, time1, &time))
          {
            FigSimpleMutexLock();
            v423 = *(v1 + 680);
            *(v1 + 680) = v402;
            CFRetain(v402);
            if (v423)
            {
              CFRelease(v423);
            }

            FigSimpleMutexUnlock();
            v424 = *(v1 + 824);
            if (v424)
            {
              v425 = *(v1 + 352);
              if (v425)
              {
                if (!flags)
                {
                  if (*(v7 + 48) == 0.0 || !*(v1 + 688))
                  {
                    FigPlaybackBossResetCompositionInstructions(v425, v424, 1, 1);
                    if (dword_1EAF16A10 >= 2)
                    {
                      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
                      v431 = os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
                      if (OUTLINED_FUNCTION_109_0(v431))
                      {
                        LODWORD(time.value) = 136315138;
                        *(&time.value + 4) = "itemfig_setVideoCompositionProperties";
                        OUTLINED_FUNCTION_146();
                        OUTLINED_FUNCTION_38();
                        _os_log_send_and_compose_impl(v432, v433, v434, v435, v436, v437, 0, v438);
                      }

                      OUTLINED_FUNCTION_7();
                      OUTLINED_FUNCTION_524(v464, v465, v466, v467, v468);
                    }

                    FigPlaybackBossRefreshVideoComposition(*(v1 + 352));
                  }

                  else
                  {
                    OUTLINED_FUNCTION_439();
                    FigPlaybackBossResetCompositionInstructions(v426, v427, v428, v429);
                  }
                }
              }
            }

            Basic = 0;
            goto LABEL_239;
          }

          goto LABEL_267;
        }

LABEL_268:
        Basic = v404;
        goto LABEL_240;
      }
    }

LABEL_267:
    OUTLINED_FUNCTION_76_0();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
    goto LABEL_268;
  }

LABEL_239:
  if (!flags)
  {
LABEL_240:
    v469 = v516;
    goto LABEL_241;
  }

  *&time2.value = OUTLINED_FUNCTION_196_0(MEMORY[0x1E6960C70]);
  time2.epoch = v471;
  v469 = v516;
  OUTLINED_FUNCTION_160_0();
  playerfig_stopResetDisturbReprepareAndResumeWithTransaction();
LABEL_241:
  if (v527)
  {
    CFRelease(v527);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (v469)
  {
    CFRelease(v469);
  }

  return Basic;
}

void itemfig_setTextMarkupArray(uint64_t a1, const __CFArray *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v5 = OUTLINED_FUNCTION_282_0(DerivedStorage);
  if (!v5)
  {
    return;
  }

  v6 = v5;
  if (*(v2 + 1880) && !CFArrayGetCount(a2))
  {
    a2 = 0;
  }

  if (!FigCFEqual())
  {
    v7 = *(v2 + 1880);
    *(v2 + 1880) = a2;
    if (a2)
    {
      CFRetain(a2);
    }

    if (v7)
    {
      CFRelease(v7);
    }

    if (*(v2 + 352))
    {
      v8 = CMBaseObjectGetDerivedStorage();
      if (!*(v8 + 608))
      {
        goto LABEL_20;
      }

      if (*(v8 + 821))
      {
        FigRenderPipelineGetFigBaseObject();
        if (!*(*(CMBaseObjectGetVTable() + 8) + 56))
        {
          goto LABEL_20;
        }
      }

      else
      {
        FigRenderPipelineGetFigBaseObject();
        if (!*(*(CMBaseObjectGetVTable() + 8) + 56))
        {
          goto LABEL_20;
        }
      }

      v9 = OUTLINED_FUNCTION_188();
      v10(v9);
LABEL_20:
      v11 = *(v2 + 1904);
      if (v11)
      {
        FigOutOfBandTrackControllerSetProperty(v11, @"TextMarkupArray", *(v2 + 1880));
      }
    }
  }

  CFRelease(v6);
}

void itemfig_setTextHighlightArray(uint64_t a1, const void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v5 = OUTLINED_FUNCTION_282_0(DerivedStorage);
  if (!v5)
  {
    return;
  }

  v6 = v5;
  if (!FigCFEqual())
  {
    v7 = *(v2 + 1888);
    *(v2 + 1888) = a2;
    if (a2)
    {
      CFRetain(a2);
    }

    if (v7)
    {
      CFRelease(v7);
    }

    if (*(v2 + 352))
    {
      v8 = CMBaseObjectGetDerivedStorage();
      if (*(v8 + 600))
      {
        v9 = *(v2 + 1888);
        FigRenderPipelineGetFigBaseObject();
        v11 = v10;
        v12 = *(*(CMBaseObjectGetVTable() + 8) + 56);
        if (v12)
        {
          v12(v11, @"CCRPP_TextHighlightArray", v9);
        }
      }

      if (!*(v8 + 608))
      {
        goto LABEL_20;
      }

      if (*(v8 + 821))
      {
        FigRenderPipelineGetFigBaseObject();
        if (!*(*(CMBaseObjectGetVTable() + 8) + 56))
        {
          goto LABEL_20;
        }
      }

      else
      {
        FigRenderPipelineGetFigBaseObject();
        if (!*(*(CMBaseObjectGetVTable() + 8) + 56))
        {
          goto LABEL_20;
        }
      }

      v13 = OUTLINED_FUNCTION_188();
      v14(v13);
LABEL_20:
      v15 = *(v2 + 1904);
      if (v15)
      {
        FigOutOfBandTrackControllerSetProperty(v15, @"TextHighlightArray", *(v2 + 1888));
      }
    }
  }

  CFRelease(v6);
}

void itemfig_setLegibleOutputsDict(uint64_t a1, const __CFDictionary *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v5 = OUTLINED_FUNCTION_282_0(DerivedStorage);
  if (v5)
  {
    v6 = v5;
    if (a2 && !CFDictionaryGetCount(a2))
    {
      a2 = 0;
    }

    if (!FigCFEqual())
    {
      v7 = *(v2 + 1800);
      *(v2 + 1800) = a2;
      if (a2)
      {
        CFRetain(a2);
      }

      if (v7)
      {
        CFRelease(v7);
      }

      v8 = *(v2 + 1792);
      if (v8)
      {
        FigLegibleOutputManagerSetLegibleOutputsDict(v8, *(v2 + 1800));
      }

      if (*(v2 + 352))
      {
        playerfig_rebuildRenderPipelines_disturbIfInLameDuckGap(v6);
      }
    }

    CFRelease(v6);
  }
}

unint64_t itemfig_setMetadataOutputsDict(uint64_t a1, const __CFDictionary *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v5 = OUTLINED_FUNCTION_282_0(DerivedStorage);
  if (!v5)
  {
    return 0;
  }

  v6 = v5;
  CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  Tag = FigXMLNodeGetTag(*(v2 + 1808));
  if (CFEqual(a2, Tag))
  {
    FigSimpleMutexUnlock();
  }

  else
  {
    updated = FPSupport_UpdateMetadataOutputs(*(v2 + 1808), a2);
    if (updated)
    {
      v10 = updated;
      goto LABEL_8;
    }

    v9 = *(v2 + 352);
    FigSimpleMutexUnlock();
    if (v9)
    {
      playerfig_rebuildRenderPipelines_disturbIfInLameDuckGap(v6);
    }
  }

  v10 = 0;
LABEL_8:
  CFRelease(v6);
  return v10;
}

void itemfig_setRenderedLegibleOutputsDict(uint64_t a1, const __CFDictionary *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v5 = OUTLINED_FUNCTION_282_0(DerivedStorage);
  if (v5)
  {
    v6 = v5;
    if (a2 && !CFDictionaryGetCount(a2))
    {
      a2 = 0;
    }

    if (!FigCFEqual())
    {
      v7 = *(v2 + 1832);
      *(v2 + 1832) = a2;
      if (a2)
      {
        CFRetain(a2);
      }

      if (v7)
      {
        CFRelease(v7);
      }

      v8 = *(v2 + 1824);
      if (v8)
      {
        FigRenderedLegibleOutputManagerSetRenderedLegibleOutputsDict(v8, *(v2 + 1832));
      }

      if (*(v2 + 352))
      {
        playerfig_rebuildRenderPipelines_disturbIfInLameDuckGap(v6);
      }
    }

    CFRelease(v6);
  }
}

uint64_t itemfig_setSuppressLegibleRendering(uint64_t a1, int a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v4 = *(DerivedStorage + 1873);
  v5 = FigCFWeakReferenceHolderCopyReferencedObject();
  if (!v5)
  {
    return 0;
  }

  v6 = v5;
  *(DerivedStorage + 1873) = a2;
  if (*(DerivedStorage + 352))
  {
    v7 = v4 == a2;
  }

  else
  {
    v7 = 1;
  }

  if (v7)
  {
    v10 = 0;
  }

  else
  {
    OUTLINED_FUNCTION_106(MEMORY[0x1E6960C70]);
    OUTLINED_FUNCTION_355_0();
    OUTLINED_FUNCTION_357_0();
    OUTLINED_FUNCTION_160_0();
    playerfig_stopResetDisturbReprepareAndResumeWithTransaction();
    v10 = v9;
  }

  CFRelease(v6);
  return v10;
}

void itemfig_updateVideoSlotUsage(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_296_0();
  a23 = v25;
  a24 = v26;
  v28 = v27;
  v30 = v29;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (OUTLINED_FUNCTION_283_0(DerivedStorage))
  {
    v32 = *(v24 + 1040);
    if (v32)
    {
      a12 = 0;
      if (!itemfig_getTrackStorage(v30, v32, &a12))
      {
        v58 = a12;
        if (a12)
        {
          FigSimpleMutexLock();
          if (*(v24 + 1152) && v28 && CFArrayGetCount(v28) >= 1)
          {
            OUTLINED_FUNCTION_417_0();
            do
            {
              v35 = OUTLINED_FUNCTION_618();
              ValueAtIndex = CFArrayGetValueAtIndex(v35, v36);
              if (ValueAtIndex)
              {
                v38 = ValueAtIndex;
                v39 = CFGetTypeID(ValueAtIndex);
                if (v39 == CFDictionaryGetTypeID())
                {
                  Value = CFDictionaryGetValue(v38, @"SlotNumber");
                  v41 = CFDictionaryGetValue(v38, @"UsedForScrubbingOnly");
                  if (Value)
                  {
                    v42 = v41;
                    if (v41)
                    {
                      v43 = *(v24 + 1152);
                      v59.length = CFArrayGetCount(v43);
                      v59.location = 0;
                      FirstIndexOfValue = CFArrayGetFirstIndexOfValue(v43, v59, Value);
                      if (FirstIndexOfValue != -1)
                      {
                        v45 = CFArrayGetValueAtIndex(*(v24 + 1144), FirstIndexOfValue);
                        v52 = FigImageQueueTableCopyFigImageQueueForCAImageQueue(*(v58 + 48), v45, v46, v47, v48, v49, v50, v51);
                        if (v52)
                        {
                          v53 = v52;
                          FigImageQueueGetFigBaseObject();
                          v55 = v54;
                          v56 = *(*(CMBaseObjectGetVTable() + 8) + 56);
                          if (v56)
                          {
                            v56(v55, @"ForScrubbingOnly", v42);
                          }

                          CFRelease(v53);
                        }
                      }
                    }
                  }
                }
              }

              OUTLINED_FUNCTION_377_0();
            }

            while (!v57);
          }

          FigSimpleMutexUnlock();
        }
      }
    }

    OUTLINED_FUNCTION_207_0();

    CFRelease(v33);
  }

  else
  {
    OUTLINED_FUNCTION_207_0();
  }
}

void itemfig_updateSpeedRampDataOnAllRenderPipelines(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v3 = OUTLINED_FUNCTION_282_0(DerivedStorage);
  if (v3)
  {
    v4 = v3;
    CMBaseObjectGetDerivedStorage();
    FigSimpleMutexLock();
    v5 = *(v1 + 360);
    if (v5)
    {
      CFSetApplyFunction(v5, fp_updateRenderPipelineSpeedRamp, *(v1 + 2128));
    }

    FigSimpleMutexUnlock();

    CFRelease(v4);
  }
}

void itemfig_updateOverlapRangeOnAllRenderPipelines(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v3 = OUTLINED_FUNCTION_282_0(DerivedStorage);
  if (v3)
  {
    v4 = v3;
    CMBaseObjectGetDerivedStorage();
    FigSimpleMutexLock();
    v5 = *(v1 + 360);
    if (v5)
    {
      CFSetApplyFunction(v5, fp_updateRenderPipelineOverlapRange, *(v1 + 2136));
    }

    FigSimpleMutexUnlock();

    CFRelease(v4);
  }
}

void playerfig_triggerStartupTasksForSeekIfNecessary(uint64_t a1, const void *a2, unsigned int a3, uint64_t a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v9 = CMBaseObjectGetDerivedStorage();
  v10 = *(DerivedStorage + 52);
  v22 = v10;
  v11 = *(DerivedStorage + 528);
  if (v11)
  {
    if (CFArrayGetCount(v11) >= 1 && CFArrayGetValueAtIndex(*(DerivedStorage + 528), 0) == a2)
    {
      v12 = *(DerivedStorage + 48);
      v20 = *a4;
      v21 = *(a4 + 16);
      if (!playerfig_performStartupTasksForEvents(a1, 2, 0, a3, &v20, v12) && (v10 == 4 || *(DerivedStorage + 56)) && playerfig_isWaitingForAnyStartupTask(a1, &v22) && !playerfig_enterPlaybackState(a1, v22) && v10 == 4 && !*(v9 + 480))
      {
        v13 = OUTLINED_FUNCTION_198();
        itemfig_bumpBossControlTokenAndMarkBossAsNonIdle(v13, v14);
        OUTLINED_FUNCTION_106(MEMORY[0x1E6960C70]);
        OUTLINED_FUNCTION_355_0();
        OUTLINED_FUNCTION_357_0();
        FigPlaybackBossSetRateAndAnchorTime(v15, v16, v17, v18, v19);
      }
    }
  }
}

void playerfig_CreatePlaybackItemFromAsset()
{
  OUTLINED_FUNCTION_649();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v154 = *MEMORY[0x1E69E9840];
  v128 = 0;
  v129 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!v9 || *DerivedStorage)
  {
    goto LABEL_127;
  }

  if (!v7)
  {
    OUTLINED_FUNCTION_429();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
    goto LABEL_18;
  }

  if (!v3)
  {
LABEL_127:
    OUTLINED_FUNCTION_429();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
    goto LABEL_18;
  }

  CFGetAllocator(v9);
  OUTLINED_FUNCTION_413();
  FigAssetGetCMBaseObject();
  if (*(*(CMBaseObjectGetVTable() + 8) + 48))
  {
    v11 = OUTLINED_FUNCTION_405_0();
    if (!v12(v11))
    {
      CFGetAllocator(v9);
      OUTLINED_FUNCTION_413();
      FigAssetGetCMBaseObject();
      if (*(*(CMBaseObjectGetVTable() + 8) + 48))
      {
        v13 = OUTLINED_FUNCTION_405_0();
        if (!v14(v13))
        {
          v15 = 0;
          v126 = 0;
          v127 = CMBaseObjectGetDerivedStorage();
          OUTLINED_FUNCTION_390_0();
          memset(v153, 0, 80);
          CFGetAllocator(v9);
          FigPlaybackItemGetClassID();
          v16 = CMDerivedObjectCreate();
          if (!v138)
          {
            OUTLINED_FUNCTION_429();
            FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v116, v117, v118);
            v28 = 0;
            goto LABEL_24;
          }

          v119 = v1;
          v124 = v3;
          v17 = CMBaseObjectGetDerivedStorage();
          v18 = (v17 + 2096);
          *(v17 + 2096) = 0;
          if (FigCFDictionaryGetStringIfPresent())
          {
            CFStringGetCString(theString, v18, 16, 0x600u);
          }

          if (FigCFDictionaryGetValueIfPresent())
          {
            v19 = cf;
            if (cf)
            {
              v19 = CFRetain(cf);
            }

            *(v17 + 2192) = v19;
          }

          if (FigIsItOKToLogURLs())
          {
            FPSupport_GetAssetDoNotLogURLs(v7);
            OUTLINED_FUNCTION_786();
          }

          else
          {
            v20 = 0;
          }

          *(v17 + 1281) = v20;
          if (FigCFDictionaryGetValueIfPresent())
          {
            v30 = v134;
            if (v134)
            {
              v30 = CFRetain(v134);
            }

            *(v17 + 2080) = v30;
          }

          v120 = (v17 + 2096);
          if (FigCFDictionaryGetValueIfPresent())
          {
            *(v17 + 2088) = *MEMORY[0x1E695E4D0] == v133[1];
          }

          v31 = FigCopyRedactedURLFromURL();
          v39 = v31;
          HIDWORD(v125) = v5;
          if (dword_1EAF16A10)
          {
            v40 = OUTLINED_FUNCTION_293_0(v31, v32, v33, v34, v35, v36, v37, v38, v116, v117, v119, v18, 0, *(&v121 + 1), v123, v124, v125, 0, v127, 0, 0, v130, SBYTE2(v130), SBYTE3(v130), SHIDWORD(v130));
            if (os_log_type_enabled(v40, BYTE3(v130)))
            {
              v41 = HIDWORD(v130);
            }

            else
            {
              v41 = HIDWORD(v130) & 0xFFFFFFFE;
            }

            if (v41)
            {
              v42 = CMBaseObjectGetDerivedStorage() + 972;
              if (v138)
              {
                v43 = (CMBaseObjectGetDerivedStorage() + 2096);
              }

              else
              {
                v43 = "";
              }

              *theDict = 136316675;
              *&theDict[4] = "fp_CreatePlaybackItem";
              v140 = 2048;
              v141 = v9;
              v142 = 2082;
              v143 = v42;
              v144 = 2113;
              v145 = v39;
              v146 = 2048;
              v147 = v7;
              v148 = 2048;
              v149 = v138;
              v150 = 2082;
              v151 = v43;
              OUTLINED_FUNCTION_59();
              OUTLINED_FUNCTION_65();
              _os_log_send_and_compose_impl(v44, v45, v46, v47, v48, v49, BYTE3(v130), v50);
            }

            OUTLINED_FUNCTION_134_0();
            OUTLINED_FUNCTION_7();
            OUTLINED_FUNCTION_454(v51, v52, v53, v54, v55);
            v5 = HIDWORD(v125);
            v15 = v122;
          }

          if (v39)
          {
            CFRelease(v39);
          }

          *(v17 + 8) = v9;
          v56 = MEMORY[0x1E6960C70];
          v57 = *MEMORY[0x1E6960C70];
          *(v17 + 140) = *MEMORY[0x1E6960C70];
          v58 = *(v56 + 16);
          *(v17 + 156) = v58;
          *(v17 + 164) = v57;
          *(v17 + 180) = v58;
          *(v17 + 188) = v57;
          *(v17 + 204) = v58;
          *(v17 + 40) = v58;
          v121 = v57;
          *(v17 + 24) = v57;
          *(v17 + 284) = 0x1000000;
          *(v17 + 288) = 1;
          *(v17 + 292) = 0x40000000;
          *(v17 + 290) = 0;
          CMTimeMake(&v152, 1, 10);
          *(v17 + 296) = v152;
          *(v17 + 320) = 0;
          v59 = MEMORY[0x1E6960C80];
          *(v17 + 48) = *MEMORY[0x1E6960C80];
          *(v17 + 64) = *(v59 + 16);
          v60 = MEMORY[0x1E6960C88];
          *(v17 + 72) = *MEMORY[0x1E6960C88];
          *(v17 + 88) = *(v60 + 16);
          *(v17 + 96) = 0;
          *(v17 + 976) = 0;
          v61 = v126;
          if (v126)
          {
            v61 = CFRetain(v126);
          }

          *(v17 + 112) = v61;
          *(v17 + 1256) = CFRetain(v7);
          if (v15)
          {
            v62 = CFRetain(v15);
          }

          else
          {
            v62 = 0;
          }

          *(v17 + 1016) = v62;
          *(v17 + 120) = v5;
          *(v17 + 137) = (v5 & 0x40) != 0;
          *(v17 + 1424) = 0;
          *(v17 + 1456) = 0;
          *(v17 + 1472) = 1;
          *(v17 + 1464) = @"Connected";
          *(v17 + 504) = FigSimpleMutexCreate();
          *(v17 + 524) = 0;
          *(v17 + 536) = 0;
          *(v17 + 544) = 0;
          *(v17 + 1476) = 1065353216;
          *(v17 + 1488) = 0;
          *(v17 + 640) = FigSimpleMutexCreate();
          *(v17 + 1282) = 1;
          *(v17 + 1160) = FigSimpleMutexCreate();
          *(v17 + 1440) = 1;
          *(v17 + 2092) = FPSupport_InitialSeekIDForSource(1);
          *(v17 + 2112) = 0;
          FigSimpleMutexLock();
          v63 = *(v127 + 472);
          if (v63)
          {
            v64 = CFRetain(v63);
            FigSimpleMutexUnlock();
            if (v64)
            {
              v126 = v64;
              *(v17 + 1441) = FPSupport_CopyAndCheckClientOnAllowListForPrefDomainKey(v64, 1, 0x1F0B2FBF8, v133);
              goto LABEL_58;
            }
          }

          else
          {
            FigSimpleMutexUnlock();
          }

          v126 = 0;
LABEL_58:
          v65 = FigReentrantMutexCreate();
          *(v17 + 1448) = v65;
          if (!v65 || (v66 = FigSimpleMutexCreate(), (*(v17 + 1248) = v66) == 0) || (v67 = FigSimpleMutexCreate(), (*(v17 + 672) = v67) == 0) || (*(v17 + 664) = 0, CMTimeMake(&v152, 1, 3), *(v17 + 692) = v152, *(v17 + 716) = 0, *(v17 + 720) = xmmword_196E72720, *(v17 + 736) = 1065353216, v68 = FigSimpleMutexCreate(), (*(v17 + 792) = v68) == 0) || (*(v17 + 1368) = 1, *(v17 + 1370) = 0, *(v17 + 1376) = 0, *(v17 + 1396) = v121, *(v17 + 1412) = v58, v69 = FigReentrantMutexCreate(), (*(v17 + 616) = v69) == 0) || (*(v17 + 1168) = 0, *(v17 + 1176) = 0, v70 = FigSimpleMutexCreate(), (*(v17 + 888) = v70) == 0))
          {
            OUTLINED_FUNCTION_31_0();
            FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
            v16 = v115;
            v3 = v124;
LABEL_134:
            v28 = v126;
LABEL_24:
            if (v138)
            {
              CFRelease(v138);
            }

            v29 = 0;
            if (!v28)
            {
              goto LABEL_109;
            }

            goto LABEL_108;
          }

          *(v17 + 1192) = 257;
          *(v17 + 1194) = 1;
          snprintf(v153, 0x50uLL, "com.apple.coremedia.fileplaybackitem.timer.%s", v120);
          if (FPSupport_PlayerInternalDispatchQueuesPreferTargetingAsyncControlQueue() && (v71 = *(v127 + 96)) != 0)
          {
            v72 = dispatch_queue_create_with_target_V2(v153, 0, v71);
          }

          else
          {
            v72 = dispatch_queue_create(v153, 0);
          }

          *(v17 + 104) = v72;
          if (!v72)
          {
            goto LABEL_131;
          }

          v73 = *MEMORY[0x1E695E480];
          HostTimeClock = CMClockGetHostTimeClock();
          OnlyTimebase = CMTimebaseCreateWithSourceClock(v73, HostTimeClock, (v17 + 328));
          if (OnlyTimebase || (OnlyTimebase = CMTimebaseCreateReadOnlyTimebase()) != 0)
          {
            v16 = OnlyTimebase;
LABEL_133:
            v3 = v124;
            LOBYTE(v5) = BYTE4(v125);
            goto LABEL_134;
          }

          v76 = FigSimpleMutexCreate();
          *(v17 + 2152) = v76;
          if (!v76)
          {
            goto LABEL_131;
          }

          *theDict = 0;
          CFGetAllocator(v9);
          FigAssetGetCMBaseObject();
          if (*(*(CMBaseObjectGetVTable() + 8) + 48))
          {
            v77 = OUTLINED_FUNCTION_405_0();
            v78(v77);
          }

          if (!*theDict)
          {
LABEL_86:
            if (v133[0])
            {
              CFRelease(v133[0]);
            }

            started = FigStartForwardingMediaServicesProcessDeathNotification();
            if (started)
            {
              goto LABEL_132;
            }

            started = FigStartForwardingMediaServicesProcessDeathNotification();
            if (started)
            {
              goto LABEL_132;
            }

            CMNotificationCenterGetDefaultLocalCenter();
            FigNotificationCenterAddWeakListeners();
            FigSimpleMutexLock();
            CFSetAddValue(*(v127 + 32), v138);
            FigSimpleMutexUnlock();
            *(v17 + 1568) = CFAbsoluteTimeGetCurrent();
            *(v17 + 1968) = CFAbsoluteTimeGetCurrent();
            *(v17 + 1944) = FigSimpleMutexCreate();
            if (FigCFDictionaryGetValueIfPresent())
            {
              if (*(*(CMBaseObjectGetVTable() + 8) + 56))
              {
                v87 = OUTLINED_FUNCTION_405_0();
                v88(v87);
              }

              v89 = v132;
              if (v132)
              {
                v89 = CFRetain(v132);
              }

              *(v17 + 2232) = v89;
            }

            AllocatorForMedia = FigGetAllocatorForMedia();
            FigMetricEventPlaybackSummarySubscriberCreate(AllocatorForMedia, v132, (v17 + 2240));
            *(v17 + 1752) = 0u;
            v91 = FigSimpleMutexCreate();
            *(v17 + 1784) = v91;
            if (v91)
            {
              v92 = @"TimeDomain";
              if (@"TimeDomain")
              {
                v92 = CFRetain(@"TimeDomain");
              }

              *(v17 + 1512) = v92;
              *(v17 + 16) = FigCFWeakReferenceHolderCreateWithReferencedObject();
              if (FigRenderedLegibleOutputManagerIsSupported())
              {
                v93 = (v17 + 1792);
                started = FigLegibleOutputManagerCreate(v73, itemfig_postLegibleOutputNotification, itemfig_postLegibleFlushNotification, v138, (v17 + 1792));
                if (started)
                {
LABEL_132:
                  v16 = started;
                  goto LABEL_133;
                }

                FigLegibleOutputManagerSetCaptionPipelineStrategy(*v93, *(v127 + 821) == 0);
                FigLegibleOutputManagerSetCaptionRenderingStrategy(*v93, *(v127 + 822) == 0);
              }

              if (FigRenderedLegibleOutputManagerIsSupported())
              {
                started = FigRenderedLegibleOutputManagerCreate(v73, itemfig_postRenderedLegibleOutputNotification, itemfig_postRenderedLegibleFlushNotification, v138, (v17 + 1824));
                if (started)
                {
                  goto LABEL_132;
                }
              }

              started = FigMetadataStorageCreate(&v137);
              if (started)
              {
                goto LABEL_132;
              }

              v94 = v137;
              v95 = v138;
              *(v17 + 1808) = v137;
              v137 = 0;
              FPSupport_SetMetadataOutputCallbacks(v94, itemfig_postMetadataOutputChanged, itemfig_postMetadataOutputFlushed, v95);
              v96 = CFArrayCreate(v73, 0, 0, MEMORY[0x1E695E9C0]);
              *(v17 + 1816) = v96;
              if (v96)
              {
                Mutable = CFDictionaryCreateMutable(v73, 0, 0, MEMORY[0x1E695E9E8]);
                *(v17 + 1136) = Mutable;
                if (Mutable)
                {
                  CMNotificationCenterGetDefaultLocalCenter();
                  OUTLINED_FUNCTION_186();
                  FigNotificationCenterAddWeakListener();
                  v16 = 0;
                  v29 = v138;
                  v138 = 0;
                  v3 = v124;
                  LOBYTE(v5) = BYTE4(v125);
                  v28 = v126;
                  if (!v126)
                  {
LABEL_109:
                    v98 = v137;
                    if (v137)
                    {
                      CFRelease(v137);
                    }

                    if (v16 && dword_1EAF16A10)
                    {
                      v99 = OUTLINED_FUNCTION_293_0(v98, v21, v22, v23, v24, v25, v26, v27, v116, v117, v119, v120, v121, *(&v121 + 1), v123, v124, v125, v126, v127, v128, v129, v130, SBYTE2(v130), SBYTE3(v130), SHIDWORD(v130));
                      v100 = os_log_type_enabled(v99, type);
                      if (OUTLINED_FUNCTION_77_0(v100))
                      {
                        *theDict = 136315394;
                        *&theDict[4] = "fp_CreatePlaybackItem";
                        v140 = 1024;
                        LODWORD(v141) = v16;
                        OUTLINED_FUNCTION_59();
                        OUTLINED_FUNCTION_44_0();
                        _os_log_send_and_compose_impl(v101, v102, v103, v104, v105, v106, type, v107);
                      }

                      OUTLINED_FUNCTION_7();
                      OUTLINED_FUNCTION_420(v109, v110, v111, v112, v113);
LABEL_120:
                      if (!v29)
                      {
                        goto LABEL_18;
                      }

                      goto LABEL_121;
                    }

                    if (v16)
                    {
                      goto LABEL_120;
                    }

                    v108 = CMBaseObjectGetDerivedStorage();
                    CMNotificationCenterGetDefaultLocalCenter();
                    FigNotificationCenterAddWeakListeners();
                    if ((v5 & 0x80) != 0)
                    {
                      *(v108 + 1282) = 0;
LABEL_118:
                      *v3 = v29;
                      goto LABEL_18;
                    }

                    itemfig_retrieveAssetBasicsIfReady();
                    if (!v114)
                    {
                      goto LABEL_118;
                    }

                    if (v29)
                    {
LABEL_121:
                      CFRelease(v29);
                      goto LABEL_18;
                    }

                    goto LABEL_18;
                  }

LABEL_108:
                  CFRelease(v28);
                  goto LABEL_109;
                }
              }
            }

LABEL_131:
            OUTLINED_FUNCTION_31_0();
            FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
            goto LABEL_132;
          }

          Value = CFDictionaryGetValue(*theDict, @"assetOption_PreloadDurationWhenNextItem");
          CMTimeMakeFromDictionary(&v152, Value);
          *(v17 + 1396) = v152;
          v80 = *MEMORY[0x1E695E4D0];
          *(v17 + 2064) = v80 == CFDictionaryGetValue(*theDict, @"assetOption_VideoNotEligibleForAppRecording");
          v81 = CFDictionaryGetValue(*theDict, @"assetOption_DownloadDestinationURL");
          if (v81)
          {
            v81 = CFRetain(v81);
          }

          *(v17 + 2160) = v81;
          v82 = CFDictionaryGetValue(*theDict, @"assetOption_ClientBundleIdentifier");
          if (v82)
          {
            v83 = CFRetain(v82);
            *(v17 + 2144) = v83;
            if (v83)
            {
LABEL_84:
              *(v17 + 2184) = 256;
              if (*theDict)
              {
                CFRelease(*theDict);
              }

              goto LABEL_86;
            }

            v84 = (v17 + 2144);
          }

          else
          {
            v84 = (v17 + 2144);
            *(v17 + 2144) = 0;
          }

          v85 = v133[0];
          if (v133[0])
          {
            v85 = CFRetain(v133[0]);
          }

          *v84 = v85;
          goto LABEL_84;
        }
      }
    }
  }

LABEL_18:
  if (v129)
  {
    CFRelease(v129);
  }

  if (v128)
  {
    CFRelease(v128);
  }

  OUTLINED_FUNCTION_651();
}

void playerfig_TransferOwnershipOfPlaybackItemFromPlayer(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v74 = *MEMORY[0x1E69E9840];
  if (a2 && a3 && (OUTLINED_FUNCTION_187(), v7 = CMBaseObjectGetDerivedStorage(), v8 = CMBaseObjectGetDerivedStorage(), *(v7 + 8) == a3))
  {
    v9 = v8;
    FigSimpleMutexLock();
    if (dword_1EAF16A10)
    {
      OUTLINED_FUNCTION_147();
      v10 = OUTLINED_FUNCTION_248_0();
      v18 = OUTLINED_FUNCTION_126(v10, v11, v12, v13, v14, v15, v16, v17, v56, v58, v60, v62, SBYTE2(v62), SBYTE3(v62), SBYTE4(v62));
      OUTLINED_FUNCTION_830(v18, v19, v20, v21, v22, v23, v24, v25, v57, v59, v61, v63, v64, v65, v66);
      OUTLINED_FUNCTION_37();
      if (v5)
      {
        if (v4)
        {
          v26 = (CMBaseObjectGetDerivedStorage() + 972);
        }

        else
        {
          v26 = "";
        }

        v27 = CMBaseObjectGetDerivedStorage() + 2096;
        DerivedStorage = CMBaseObjectGetDerivedStorage();
        v29 = "item is currently on play queue, will remove it first";
        *v67 = 136316930;
        *&v67[4] = "playerfig_TransferOwnershipOfPlaybackItemFromPlayer";
        *&v67[12] = 2048;
        *&v67[14] = v4;
        if (!*(v7 + 1))
        {
          v29 = "item is not currently on play queue";
        }

        *&v67[22] = 2082;
        v68 = v26;
        *v69 = 2048;
        *&v69[2] = v3;
        *&v69[10] = 2082;
        *&v69[12] = v27;
        *&v69[20] = 2048;
        *&v69[22] = a3;
        *&v69[30] = 2082;
        v70 = DerivedStorage + 972;
        LOWORD(v71) = 2082;
        *(&v71 + 2) = v29;
        OUTLINED_FUNCTION_39();
        OUTLINED_FUNCTION_43_0(v30, v31, v73, v32, &dword_1962D5000, v33, v34, "<<<< FigFilePlayer >>>> %s: [%p] %{public}s item %p %{public}s oldPlayer %p %{public}s -- %{public}s");
        OUTLINED_FUNCTION_179_0();
      }

      OUTLINED_FUNCTION_7();
      OUTLINED_FUNCTION_449(v35, v36, v37, v38, v39);
    }

    if (*(v7 + 1))
    {
      v40 = *(*(CMBaseObjectGetVTable() + 16) + 24);
      if (v40)
      {
        v40(a3, v3);
      }
    }

    v41 = *(v9 + 1200);
    if (v41)
    {
      v75.length = CFArrayGetCount(*(v9 + 1200));
      v75.location = 0;
      FirstIndexOfValue = CFArrayGetFirstIndexOfValue(v41, v75, v3);
      if (FirstIndexOfValue != -1)
      {
        v43 = FirstIndexOfValue;
        FigGetAllocatorForMedia();
        MutableCopy = FigCFArrayCreateMutableCopy();
        if (MutableCopy)
        {
          v45 = MutableCopy;
          CFArrayRemoveValueAtIndex(MutableCopy, v43);
          CFRelease(*(v9 + 1200));
          *(v9 + 1200) = v45;
        }
      }
    }

    if (a3 != v4)
    {
      FigStopForwardingMediaServicesProcessDeathNotification();
    }

    FigSimpleMutexUnlock();
    if (*(v7 + 8) != v4)
    {
      itemfig_reportingAgentTeardown(v3);
      v46 = CMBaseObjectGetDerivedStorage();
      FigSimpleMutexLock();
      FigSimpleMutexLock();
      CFSetRemoveValue(*(v9 + 32), v3);
      *(v7 + 8) = v4;
      if (*(v7 + 16))
      {
        CFRelease(*(v7 + 16));
        *(v7 + 16) = 0;
      }

      *(v7 + 16) = FigCFWeakReferenceHolderCreateWithReferencedObject();
      CFSetAddValue(*(v46 + 32), v3);
      if (a3 != v4)
      {
        FigStartForwardingMediaServicesProcessDeathNotification();
      }

      FigSimpleMutexUnlock();
      FigSimpleMutexUnlock();
      itemfig_reportingAgentSetup(v3, v47, v48, v49, v50, v51, v52, v53, v56, v58, v60, v62, *v67, *&v67[8], *&v67[16], v68, *v69, *&v69[8], *&v69[16], *&v69[24], v70, v71, *(&v71 + 1), v72);
    }

    OUTLINED_FUNCTION_372();
  }

  else
  {
    OUTLINED_FUNCTION_125_0();
    OUTLINED_FUNCTION_372();

    FigSignalErrorAtGM(v54);
  }
}

uint64_t itemfig_reportingAgentReportEnqueueTime(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  CFAbsoluteTimeGetCurrent();
  FigSimpleMutexLock();
  if (*(DerivedStorage + 1952) && *(*(CMBaseObjectGetVTable() + 16) + 56))
  {
    v2 = OUTLINED_FUNCTION_285_0();
    v3(v2);
  }

  return FigSimpleMutexUnlock();
}

void itemfig_postLegibleOutputNotification(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    OUTLINED_FUNCTION_369();
    CMBaseObjectGetDerivedStorage();
    v2 = FigCFWeakReferenceHolderCopyReferencedObject();
    if (v2)
    {
      v3 = v2;
      CMNotificationCenterGetDefaultLocalCenter();
      OUTLINED_FUNCTION_151_0();
      CMNotificationCenterPostNotification();

      CFRelease(v3);
    }
  }
}

void itemfig_postLegibleFlushNotification(void *a1, uint64_t a2)
{
  values = a1;
  if (a2)
  {
    OUTLINED_FUNCTION_645(a1, a2);
    v2 = FigCFWeakReferenceHolderCopyReferencedObject();
    if (v2)
    {
      v3 = v2;
      v4 = CFDictionaryCreate(*MEMORY[0x1E695E480], &kFigPlaybackItemParameter_LegibleOutputKey, &values, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      CMNotificationCenterGetDefaultLocalCenter();
      OUTLINED_FUNCTION_426();
      CMNotificationCenterPostNotification();
      if (v4)
      {
        CFRelease(v4);
      }

      CFRelease(v3);
    }
  }
}

void itemfig_postRenderedLegibleOutputNotification(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    OUTLINED_FUNCTION_369();
    CMBaseObjectGetDerivedStorage();
    v2 = FigCFWeakReferenceHolderCopyReferencedObject();
    if (v2)
    {
      v3 = v2;
      CMNotificationCenterGetDefaultLocalCenter();
      OUTLINED_FUNCTION_151_0();
      CMNotificationCenterPostNotification();

      CFRelease(v3);
    }
  }
}

void itemfig_postRenderedLegibleFlushNotification(void *a1, uint64_t a2)
{
  values = a1;
  if (a2)
  {
    OUTLINED_FUNCTION_645(a1, a2);
    v2 = FigCFWeakReferenceHolderCopyReferencedObject();
    if (v2)
    {
      v3 = v2;
      v4 = CFDictionaryCreate(*MEMORY[0x1E695E480], &kFigPlaybackItemParameter_RenderedLegibleOutputKey, &values, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      CMNotificationCenterGetDefaultLocalCenter();
      OUTLINED_FUNCTION_426();
      CMNotificationCenterPostNotification();
      if (v4)
      {
        CFRelease(v4);
      }

      CFRelease(v3);
    }
  }
}

double itemfig_setBasicInspectables_cold_1()
{
  OUTLINED_FUNCTION_11_0(*MEMORY[0x1E69E9840]);
  os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
  v9 = OUTLINED_FUNCTION_103_0(os_log_and_send_and_compose_flags_and_os_log_type, v2, v3, v4, v5, v6, v7, v8, v23, v24, v25, v26, SWORD2(v26), SBYTE6(v26), HIBYTE(v26));
  if (OUTLINED_FUNCTION_77_0(v9))
  {
    OUTLINED_FUNCTION_21_0("itemfig_setBasicInspectables");
    OUTLINED_FUNCTION_44_0();
    _os_log_send_and_compose_impl(v10, v11, v12, v13, v14, v15, v0, v16);
    OUTLINED_FUNCTION_192_0();
  }

  OUTLINED_FUNCTION_16();
  return OUTLINED_FUNCTION_420(v17, v18, v19, v20, v21);
}

double itemfig_setBasicInspectables_cold_2()
{
  OUTLINED_FUNCTION_11_0(*MEMORY[0x1E69E9840]);
  os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
  v9 = OUTLINED_FUNCTION_103_0(os_log_and_send_and_compose_flags_and_os_log_type, v2, v3, v4, v5, v6, v7, v8, v23, v24, v25, v26, SWORD2(v26), SBYTE6(v26), HIBYTE(v26));
  if (OUTLINED_FUNCTION_77_0(v9))
  {
    OUTLINED_FUNCTION_21_0("itemfig_setBasicInspectables");
    OUTLINED_FUNCTION_44_0();
    _os_log_send_and_compose_impl(v10, v11, v12, v13, v14, v15, v0, v16);
    OUTLINED_FUNCTION_192_0();
  }

  OUTLINED_FUNCTION_16();
  return OUTLINED_FUNCTION_420(v17, v18, v19, v20, v21);
}

double itemfig_setBasicInspectables_cold_3()
{
  OUTLINED_FUNCTION_11_0(*MEMORY[0x1E69E9840]);
  os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
  v9 = OUTLINED_FUNCTION_103_0(os_log_and_send_and_compose_flags_and_os_log_type, v2, v3, v4, v5, v6, v7, v8, v23, v24, v25, v26, SWORD2(v26), SBYTE6(v26), HIBYTE(v26));
  if (OUTLINED_FUNCTION_77_0(v9))
  {
    OUTLINED_FUNCTION_21_0("itemfig_establishTrackIDs");
    OUTLINED_FUNCTION_44_0();
    _os_log_send_and_compose_impl(v10, v11, v12, v13, v14, v15, v0, v16);
    OUTLINED_FUNCTION_192_0();
  }

  OUTLINED_FUNCTION_16();
  return OUTLINED_FUNCTION_420(v17, v18, v19, v20, v21);
}

double itemfig_setBasicInspectables_cold_4()
{
  OUTLINED_FUNCTION_11_0(*MEMORY[0x1E69E9840]);
  os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
  v9 = OUTLINED_FUNCTION_103_0(os_log_and_send_and_compose_flags_and_os_log_type, v2, v3, v4, v5, v6, v7, v8, v23, v24, v25, v26, SWORD2(v26), SBYTE6(v26), HIBYTE(v26));
  if (OUTLINED_FUNCTION_77_0(v9))
  {
    OUTLINED_FUNCTION_21_0("itemfig_setBasicInspectables");
    OUTLINED_FUNCTION_44_0();
    _os_log_send_and_compose_impl(v10, v11, v12, v13, v14, v15, v0, v16);
    OUTLINED_FUNCTION_192_0();
  }

  OUTLINED_FUNCTION_16();
  return OUTLINED_FUNCTION_420(v17, v18, v19, v20, v21);
}

uint64_t itemfig_hintTrackIfPreload_cold_1(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v8 = *a1;
  if (v8)
  {
    CFRelease(v8);
    *a1 = 0;
  }

  if (FigSampleCursorServiceCreateCursorAtLastSampleInDecodeOrder(*a2, a1))
  {
    v9 = 1;
  }

  else if (FigSampleCursorCopySampleLocation(*a1, a3, a4))
  {
    v9 = -1;
  }

  else
  {
    v9 = 0;
  }

  return v9 & 1;
}

uint64_t itemfig_setTrackPropertyInternal_cold_1()
{
  OUTLINED_FUNCTION_375_0();
  v3 = v2;
  valuePtr = 0.0;
  v4 = *(v2 + 136);
  CFNumberGetValue(v5, kCFNumberFloat32Type, &valuePtr);
  v6 = valuePtr;
  if (valuePtr == v4 || !*(v3 + 16))
  {
    goto LABEL_5;
  }

  FigRenderPipelineGetFigBaseObject();
  result = CMBaseObjectSetProperty(v7, @"SweepFilterSweepValue", v1);
  if (!result)
  {
    v6 = valuePtr;
LABEL_5:
    result = 0;
    *(v3 + 136) = v6;
  }

  *v0 = result;
  return result;
}

uint64_t itemfig_setTrackPropertyInternal_cold_8(const void *a1, _DWORD *a2)
{
  if (a1)
  {
    v3 = CFGetTypeID(a1);
    if (v3 == CFBooleanGetTypeID())
    {
      return 0;
    }
  }

  OUTLINED_FUNCTION_303();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v6, v7, v8);
  *a2 = v5;
  return 1;
}

void itemfig_setTrackPropertyInternal_cold_17(uint64_t a1, uint64_t a2, int a3, _DWORD *a4)
{
  OUTLINED_FUNCTION_601();
  NotificationPayloadForProperties = playerfig_createNotificationPayloadForProperties(v6, v7, v8, v9, v10, v11, v12, v13, v15, v16);
  CMNotificationCenterGetDefaultLocalCenter();
  OUTLINED_FUNCTION_426();
  CMNotificationCenterPostNotification();
  if (NotificationPayloadForProperties)
  {
    CFRelease(NotificationPayloadForProperties);
  }

  *a4 = a3;
}

uint64_t itemfig_createUpdatedExtractionTable_cold_3()
{
  OUTLINED_FUNCTION_369();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v5, v6, vars0);
  *v0 = v1;
  if (v1)
  {
    return 1;
  }

  v2 = OUTLINED_FUNCTION_312();
  CFArrayAppendValue(v2, v3);
  return 0;
}

uint64_t itemfig_reportingAgentReportPlayStartMovieTime_cold_1(uint64_t a1)
{
  FigSimpleMutexLock();
  v2 = *(a1 + 1952);
  OUTLINED_FUNCTION_130_0();
  CMTimeGetSeconds(&v6);
  if (v2 && *(*(CMBaseObjectGetVTable() + 16) + 56))
  {
    v3 = OUTLINED_FUNCTION_285_0();
    v4(v3);
  }

  return FigSimpleMutexUnlock();
}

void itemfig_updateVolumeOffset_cold_1(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_313_0();
  if (!itemfig_getTrackStorage(v4, v5, v6))
  {
    if (v11)
    {
      if (*(v11 + 16))
      {
        v7 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberFloat32Type, (a3 + 1476));
        if (v7)
        {
          v8 = v7;
          FigRenderPipelineGetFigBaseObject();
          if (*(*(CMBaseObjectGetVTable() + 8) + 56))
          {
            v9 = OUTLINED_FUNCTION_228();
            v10(v9);
          }

          CFRelease(v8);
        }
      }
    }
  }
}

uint64_t itemfig_applyAdjustTargetLevel_cold_1()
{
  OUTLINED_FUNCTION_279_0();
  result = itemfig_getTrackStorage(v2, *(v1 + 1036), &v8);
  if (!result)
  {
    if (v8)
    {
      result = *(v8 + 16);
      if (result)
      {
        if (*(v0 + 1544))
        {
          FigRenderPipelineGetFigBaseObject();
          VTable = CMBaseObjectGetVTable();
          v5 = *(VTable + 8);
          result = VTable + 8;
          if (*(v5 + 56))
          {
            v6 = OUTLINED_FUNCTION_228();

            return v7(v6);
          }
        }
      }
    }
  }

  return result;
}

uint64_t itemfig_applyAdjustCompressionProfile_cold_1()
{
  OUTLINED_FUNCTION_279_0();
  result = itemfig_getTrackStorage(v2, *(v1 + 1036), &v8);
  if (!result)
  {
    if (v8)
    {
      result = *(v8 + 16);
      if (result)
      {
        if (*(v0 + 1552))
        {
          FigRenderPipelineGetFigBaseObject();
          VTable = CMBaseObjectGetVTable();
          v5 = *(VTable + 8);
          result = VTable + 8;
          if (*(v5 + 56))
          {
            v6 = OUTLINED_FUNCTION_228();

            return v7(v6);
          }
        }
      }
    }
  }

  return result;
}

void itemfig_reportingAgentReportError_cold_1(uint64_t a1, CFTypeRef *a2, const void *a3)
{
  if (*(CMBaseObjectGetDerivedStorage() + 2232))
  {
    AllocatorForMedia = FigGetAllocatorForMedia();
    if (!FigMetricErrorEventCreate(AllocatorForMedia, 0, a3, a2))
    {
      if (*(*(OUTLINED_FUNCTION_253_0() + 16) + 40))
      {
        v6 = OUTLINED_FUNCTION_383();
        v7(v6);
      }
    }
  }

  if (*a2)
  {
    CFRelease(*a2);
  }
}

void itemfig_ExternalProtectionStatusChangedGuts_cold_1(int a1, uint64_t a2, int a3, int a4, int a5, int a6, int a7, int a8)
{
  NotificationPayloadForProperties = playerfig_createNotificationPayloadForProperties(a1, a2, a3, a4, a5, a6, a7, a8, @"ExternalProtectionStatus", 0);
  CMNotificationCenterGetDefaultLocalCenter();
  OUTLINED_FUNCTION_151_0();
  CMNotificationCenterPostNotification();
  if (NotificationPayloadForProperties)
  {

    CFRelease(NotificationPayloadForProperties);
  }
}

void itemfig_DeferredStallWarning_cold_1(uint64_t a1, CFTypeRef *a2)
{
  if (*(CMBaseObjectGetDerivedStorage() + 2232))
  {
    FigGetAllocatorForMedia();
    v3 = OUTLINED_FUNCTION_360_0();
    if (!FigMetricItemStallEventCreate(v4, v5, v6, v3, v7))
    {
      if (*(*(OUTLINED_FUNCTION_253_0() + 16) + 40))
      {
        v8 = OUTLINED_FUNCTION_383();
        v9(v8);
      }
    }
  }

  if (*a2)
  {
    CFRelease(*a2);
  }
}

void itemfig_BossSeekDidComplete_cold_1(uint64_t a1, CFTypeRef *a2, double a3)
{
  if (*(CMBaseObjectGetDerivedStorage() + 2232))
  {
    AllocatorForMedia = FigGetAllocatorForMedia();
    if (!FigMetricItemSeekDidCompleteEventCreate(AllocatorForMedia, 0, 0, a2, a3, 0.0))
    {
      if (*(*(OUTLINED_FUNCTION_253_0() + 16) + 40))
      {
        v6 = OUTLINED_FUNCTION_383();
        v7(v6);
      }
    }
  }

  if (*a2)
  {
    CFRelease(*a2);
  }
}

uint64_t itemfig_ReachedEndGuts_cold_1()
{
  OUTLINED_FUNCTION_369();
  itemfig_UpdateLastPlayedOutOrLastPlayedDateIfNecessary(v2);
  v3 = *(v1 + 816);
  Count = CFArrayGetCount(*(v1 + 528));
  if (FigPlaybackGetEffectiveActionAtEnd(v3, Count) == 1)
  {
    return 0;
  }

  v6 = *(v1 + 816);
  v7 = CFArrayGetCount(*(v1 + 528));
  if (FigPlaybackGetEffectiveActionAtEnd(v6, v7))
  {
    return 2;
  }

  itemfig_advanceToNextItem(v0);
  return 1;
}

uint64_t playerfig_scheduleVideoSlotAndVideoTargetConfigurationSwitchAndPossiblyStartBossForNextItem_cold_1(const void *a1, char a2)
{
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v5, v6, vars0);
  CFRelease(a1);
  return a2 & 1;
}

double playerfig_scheduleVideoSlotAndVideoTargetConfigurationSwitchAndPossiblyStartBossForNextItem_cold_3()
{
  OUTLINED_FUNCTION_11_0(*MEMORY[0x1E69E9840]);
  os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
  v9 = OUTLINED_FUNCTION_103_0(os_log_and_send_and_compose_flags_and_os_log_type, v2, v3, v4, v5, v6, v7, v8, v23, v24, v25, v26, SWORD2(v26), SBYTE6(v26), HIBYTE(v26));
  if (OUTLINED_FUNCTION_77_0(v9))
  {
    OUTLINED_FUNCTION_21_0("playerfig_scheduleVideoSlotSwitchForNextItem");
    OUTLINED_FUNCTION_44_0();
    _os_log_send_and_compose_impl(v10, v11, v12, v13, v14, v15, v0, v16);
    OUTLINED_FUNCTION_192_0();
  }

  OUTLINED_FUNCTION_7();
  return OUTLINED_FUNCTION_420(v17, v18, v19, v20, v21);
}

double playerfig_scheduleVideoSlotAndVideoTargetConfigurationSwitchAndPossiblyStartBossForNextItem_cold_4()
{
  OUTLINED_FUNCTION_11_0(*MEMORY[0x1E69E9840]);
  os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
  v9 = OUTLINED_FUNCTION_103_0(os_log_and_send_and_compose_flags_and_os_log_type, v2, v3, v4, v5, v6, v7, v8, v23, v24, v25, v26, SWORD2(v26), SBYTE6(v26), HIBYTE(v26));
  if (OUTLINED_FUNCTION_77_0(v9))
  {
    OUTLINED_FUNCTION_21_0("playerfig_scheduleVideoSlotSwitchForNextItem");
    OUTLINED_FUNCTION_44_0();
    _os_log_send_and_compose_impl(v10, v11, v12, v13, v14, v15, v0, v16);
    OUTLINED_FUNCTION_192_0();
  }

  OUTLINED_FUNCTION_7();
  return OUTLINED_FUNCTION_420(v17, v18, v19, v20, v21);
}

void playerfig_setRateGuts_cold_1(uint64_t a1, uint64_t a2, int a3, uint64_t a4, int a5, int a6, int a7, int a8)
{
  NotificationPayloadForProperties = playerfig_createNotificationPayloadForProperties(a1, 0, a3, a4, a5, a6, a7, a8, @"CurrentRate", 0);
  FigCFDictionarySetInt32();
  OUTLINED_FUNCTION_319_0();
  FigCFDictionarySetValueFromKeyInDict();
  OUTLINED_FUNCTION_319_0();
  FigCFDictionarySetValueFromKeyInDict();
  OUTLINED_FUNCTION_319_0();
  FigCFDictionarySetValueFromKeyInDict();
  CMNotificationCenterGetDefaultLocalCenter();
  CMNotificationCenterPostNotification();
  if (NotificationPayloadForProperties)
  {
    CFRelease(NotificationPayloadForProperties);
  }

  playerfig_updateStartHostTimeEstimatesOfAllItems(a1);
  OUTLINED_FUNCTION_652();
}

void playerfig_deferredLatencyChanged_cold_1(uint64_t *a1)
{
  OUTLINED_FUNCTION_341_0(a1);
  OUTLINED_FUNCTION_4_0(MEMORY[0x1E6960C70]);
  OUTLINED_FUNCTION_93_0();
  playerfig_stopResetDisturbReprepareAndResumeWithTransaction();
}

void playerfig_deferredRenderPipelineWantsRebuild_cold_1()
{
  OUTLINED_FUNCTION_4_0(MEMORY[0x1E6960C70]);
  OUTLINED_FUNCTION_148_0();
  playerfig_stopResetDisturbReprepareAndResumeWithTransaction();
}

uint64_t fp_buildVideoRenderPipelineForTrack_cold_1(uint64_t a1, uint64_t a2)
{
  FigSimpleMutexLock();
  v4 = *(a1 + 1952);
  if (v4)
  {
    v5 = *(*(CMBaseObjectGetVTable() + 16) + 48);
    if (v5)
    {
      v5(v4, @"playerStats", 0x1F0B665F8, a2, 0);
    }
  }

  FigSimpleMutexUnlock();
  FigRenderPipelineGetFigBaseObject();
  VTable = CMBaseObjectGetVTable();
  v8 = *(VTable + 8);
  result = VTable + 8;
  if (*(v8 + 56))
  {
    v9 = OUTLINED_FUNCTION_228();
    return v10(v9);
  }

  return result;
}

void itemfig_DeferredLikelyToKeepUp_cold_1(uint64_t a1, CFTypeRef *a2, CFArrayRef *a3)
{
  if (!*(CMBaseObjectGetDerivedStorage() + 2232))
  {
    goto LABEL_8;
  }

  v6 = OUTLINED_FUNCTION_179();
  if (itemfig_copyPlayableTime(v6, a3))
  {
    v9 = *a3;
    if (v9)
    {
LABEL_7:
      CFRelease(v9);
    }
  }

  else
  {
    v7 = CFAbsoluteTimeGetCurrent() - *(v3 + 2224);
    AllocatorForMedia = FigGetAllocatorForMedia();
    v9 = *a3;
    if (!FigMetricItemLikelyToKeepUpEventCreate(AllocatorForMedia, 0, v9, a2, v7) && *(*(CMBaseObjectGetVTable() + 16) + 40))
    {
      v10 = OUTLINED_FUNCTION_173_0();
      v11(v10);
    }

    if (v9)
    {
      goto LABEL_7;
    }
  }

LABEL_8:
  if (*a2)
  {
    CFRelease(*a2);
  }
}

void playerfig_deferredValeriaEnabled_cold_1()
{
  OUTLINED_FUNCTION_4_0(MEMORY[0x1E6960C70]);
  OUTLINED_FUNCTION_148_0();
  playerfig_stopResetDisturbReprepareAndResumeWithTransaction();
}

void playerfig_Invalidate_cold_1()
{
  OUTLINED_FUNCTION_207();
  FigDeferredTransactionCreate(*MEMORY[0x1E695E480], v2);
  if (*(*(CMBaseObjectGetVTable() + 16) + 24))
  {
    v4 = OUTLINED_FUNCTION_265();
    v5(v4);
  }

  *v0 = 1;
  v6 = OUTLINED_FUNCTION_234();
  playerfig_cleanupOverlappedOutroComponents(v6, v7);
  if (*(v0 + 801))
  {
    DefaultLocalCenter = CMNotificationCenterGetDefaultLocalCenter();
    v3 = 0x1F0B60CF8;
    NotifyingObjectForSelectionCriteriaChanged = FigGetNotifyingObjectForSelectionCriteriaChanged(DefaultLocalCenter, v11);
    v8 = OUTLINED_FUNCTION_241_0(NotifyingObjectForSelectionCriteriaChanged, v13, v14, v15, NotifyingObjectForSelectionCriteriaChanged);
    *(v0 + 801) = 0;
  }

  if (*(v0 + 899))
  {
    v16 = CMNotificationCenterGetDefaultLocalCenter();
    v3 = 0x1F0B5F018;
    v18 = JNvfYIDgz(v16, v17);
    v8 = OUTLINED_FUNCTION_241_0(v18, v19, v20, v21, v18);
    *(v0 + 899) = 0;
  }

  if (FPSupport_GetAudioSpatializationPreferencesMonitor(v8, v9))
  {
    v22 = CMNotificationCenterGetDefaultLocalCenter();
    v3 = 0x1F0B46CD8;
    AudioSpatializationPreferencesMonitor = FPSupport_GetAudioSpatializationPreferencesMonitor(v22, v23);
    OUTLINED_FUNCTION_241_0(AudioSpatializationPreferencesMonitor, v25, v26, v27, AudioSpatializationPreferencesMonitor);
  }

  FigSimpleMutexLock();
  v28 = *(v0 + 32);
  if (v28)
  {
    v29 = CFGetAllocator(v28);
    Copy = CFSetCreateCopy(v29, *(v0 + 32));
    FigSimpleMutexUnlock();
    if (Copy)
    {
      CFSetApplyFunction(Copy, playerfig_InvalidateItem, 0);
      CFRelease(Copy);
    }
  }

  else
  {
    FigSimpleMutexUnlock();
  }

  v31 = *(v0 + 584);
  if (v31)
  {
    playerfig_removeAudioRenderPipelineListeners(v1, v31);
    FigRenderPipelineGetFigBaseObject();
    if (v32)
    {
      v33 = v32;
      v34 = *(*(CMBaseObjectGetVTable() + 8) + 24);
      if (v34)
      {
        v34(v33);
      }
    }
  }

  FPSupport_ReleasePassthroughHelper(*(v0 + 952), v31);
  *(v0 + 952) = 0;
  v35 = *(v0 + 664);
  if (v35)
  {
    while (CFArrayGetCount(v35) >= 1)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(*(v0 + 664), 0);
      playerfig_removeAudioRenderPipelineListeners(v1, ValueAtIndex);
      FigRenderPipelineGetFigBaseObject();
      if (v37)
      {
        v38 = v37;
        v39 = *(*(CMBaseObjectGetVTable() + 8) + 24);
        if (v39)
        {
          v39(v38);
        }
      }

      v35 = *(v0 + 664);
    }
  }

  FigSimpleMutexLock();
  v40 = *(v0 + 176);
  if (v40)
  {
    CFRelease(v40);
    *(v0 + 176) = 0;
  }

  FigSimpleMutexUnlock();
  if (*(v0 + 592))
  {
    FigRenderPipelineGetFigBaseObject();
    if (v41)
    {
      v42 = v41;
      v43 = *(*(CMBaseObjectGetVTable() + 8) + 24);
      if (v43)
      {
        v43(v42);
      }
    }
  }

  v44 = *(v0 + 672);
  if (v44)
  {
    while (CFArrayGetCount(v44) >= 1)
    {
      CFArrayGetValueAtIndex(*(v0 + 672), 0);
      FigRenderPipelineGetFigBaseObject();
      if (v45)
      {
        v46 = v45;
        v47 = *(*(CMBaseObjectGetVTable() + 8) + 24);
        if (v47)
        {
          v47(v46);
        }
      }

      CFArrayRemoveValueAtIndex(*(v0 + 672), 0);
      v44 = *(v0 + 672);
    }

    v48 = *(v0 + 672);
    if (v48)
    {
      CFRelease(v48);
      *(v0 + 672) = 0;
    }
  }

  if (*(v0 + 600))
  {
    FigRenderPipelineGetFigBaseObject();
    if (v49)
    {
      v50 = v49;
      v51 = *(*(CMBaseObjectGetVTable() + 8) + 24);
      if (v51)
      {
        v51(v50);
      }
    }

    CFRelease(*(v0 + 600));
    *(v0 + 600) = 0;
  }

  if (*(v0 + 608))
  {
    FigRenderPipelineGetFigBaseObject();
    if (v52)
    {
      v53 = v52;
      v54 = *(*(CMBaseObjectGetVTable() + 8) + 24);
      if (v54)
      {
        v54(v53);
      }
    }

    CFRelease(*(v0 + 608));
    *(v0 + 608) = 0;
  }

  v55 = *(v0 + 680);
  if (v55)
  {
    CFRelease(v55);
    *(v0 + 680) = 0;
  }

  v56 = *(v0 + 688);
  if (v56)
  {
    CFRelease(v56);
    *(v0 + 688) = 0;
  }

  v57 = *(v0 + 696);
  if (v57)
  {
    CFRelease(v57);
    *(v0 + 696) = 0;
  }

  v58 = *(v0 + 704);
  if (v58)
  {
    CFRelease(v58);
    *(v0 + 704) = 0;
  }

  v59 = *(v0 + 200);
  if (v59)
  {
    CFRelease(v59);
    *(v0 + 200) = 0;
  }

  FigSimpleMutexLock();
  v60 = *(v0 + 768);
  if (v60)
  {
    v61 = CFRetain(v60);
    v62 = *(v0 + 768);
    if (v62)
    {
      CFRelease(v62);
      *(v0 + 768) = 0;
    }

    if (v61)
    {
      CFRelease(v61);
    }
  }

  v63 = *(v0 + 776);
  if (v63)
  {
    v64 = CFRetain(v63);
    v65 = *(v0 + 776);
    if (v65)
    {
      CFRelease(v65);
      *(v0 + 776) = 0;
    }

    if (v64)
    {
      CFRelease(v64);
    }
  }

  FigSimpleMutexUnlock();
  FigSimpleMutexLock();
  v66 = *(v0 + 760);
  if (v66)
  {
    CFRelease(v66);
    *(v0 + 760) = 0;
  }

  FigSimpleMutexUnlock();
  FigSimpleMutexLock();
  v67 = *(v0 + 504);
  if (v67)
  {
    CFRelease(v67);
    *(v0 + 504) = 0;
  }

  FigSimpleMutexUnlock();
  v68 = *(v0 + 904);
  if (v68)
  {
    CFRelease(v68);
    *(v0 + 904) = 0;
  }

  if (!FigUseVideoReceiverForCALayer())
  {
    playerfig_freeTransitionImageQueueAndSlot(v1);
    FigSimpleMutexLock();
    v69 = *(v0 + 216);
    if (!v69)
    {
      goto LABEL_81;
    }

    if (CFArrayGetCount(v69) <= 0)
    {
      v70 = *(v0 + 216);
      if (!v70)
      {
        goto LABEL_81;
      }

      CFRelease(v70);
    }

    else
    {
      FPSupport_AppendDeferredTransactionChangeForClearingFigVideoLayers(*v2, *(v0 + 216), 1);
      FPSupport_AppendDeferredTransactionChangeToRelease(*v2, *(v0 + 216));
    }

    *(v0 + 216) = 0;
LABEL_81:
    FigSimpleMutexUnlock();
    v71 = *(v0 + 208);
    if (v71)
    {
      FPSupport_AppendDeferredTransactionChangeToRelease(*v2, v71);
      *(v0 + 208) = 0;
    }
  }

  v72 = *(v0 + 296);
  if (v72)
  {
    FPSupport_AppendDeferredTransactionChangeToRelease(*v2, v72);
    *(v0 + 296) = 0;
  }

  FigSimpleMutexLock();
  v73 = *(v0 + 256);
  if (v73 && CFArrayGetCount(v73) >= 1)
  {
    OUTLINED_FUNCTION_417_0();
    do
    {
      CFArrayGetValueAtIndex(*(v0 + 256), v3);
      CMNotificationCenterGetDefaultLocalCenter();
      FigNotificationCenterRemoveWeakListener();
      OUTLINED_FUNCTION_377_0();
    }

    while (!v74);
  }

  v75 = *(v0 + 264);
  if (v75)
  {
    CFRelease(v75);
    *(v0 + 264) = 0;
  }

  v76 = *(v0 + 272);
  if (v76)
  {
    CFRelease(v76);
    *(v0 + 272) = 0;
  }

  playerfig_sendEmptyConfigurationToEachVideoTarget(v1, *(v0 + 256));
  v77 = *(v0 + 256);
  if (v77)
  {
    CFRelease(v77);
    *(v0 + 256) = 0;
  }

  FigSimpleMutexUnlock();
  v78 = *(v0 + 856);
  if (v78)
  {
    CFRelease(v78);
    *(v0 + 856) = 0;
  }

  FigSimpleMutexLock();
  v79 = *(v0 + 472);
  if (v79)
  {
    CFRelease(v79);
    *(v0 + 472) = 0;
  }

  FigSimpleMutexUnlock();
  v80 = *(v0 + 888);
  if (v80)
  {
    CFRelease(v80);
    *(v0 + 888) = 0;
  }

  v81 = *(v0 + 152);
  if (v81)
  {
    CFRelease(v81);
    *(v0 + 152) = 0;
  }

  FigSimpleMutexLock();
  v82 = *(v0 + 168);
  if (v82)
  {
    CFRelease(v82);
    *(v0 + 168) = 0;
  }

  FigSimpleMutexUnlock();
  if (*(v0 + 912))
  {
    FigSimpleMutexLock();
    v83 = *(v0 + 920);
    if (v83)
    {
      CFRelease(v83);
      *(v0 + 920) = 0;
    }

    v84 = *(v0 + 928);
    if (v84)
    {
      CFRelease(v84);
      *(v0 + 928) = 0;
    }

    FigSimpleMutexUnlock();
  }

  FigDeferredTransactionCommit(*v2, 0);
  if (*v2)
  {
    CFRelease(*v2);
  }

  v85 = *(v0 + 832);
  if (v85)
  {
    CFRelease(v85);
    *(v0 + 832) = 0;
  }

  v86 = *(v0 + 488);
  if (v86)
  {
    CFRelease(v86);
    *(v0 + 488) = 0;
  }

  v87 = *(v0 + 1144);
  if (v87)
  {
    while (1)
    {
      Count = CFArrayGetCount(v87);
      v89 = *(v0 + 1144);
      if (Count <= 0)
      {
        break;
      }

      CFArrayGetValueAtIndex(v89, 0);
      CMNotificationCenterGetDefaultLocalCenter();
      FigNotificationCenterRemoveWeakListener();
      CFArrayRemoveValueAtIndex(*(v0 + 1144), 0);
      v87 = *(v0 + 1144);
      if (!v87)
      {
        goto LABEL_124;
      }
    }

    if (v89)
    {
      CFRelease(v89);
      *(v0 + 1144) = 0;
    }
  }

LABEL_124:
  v95 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 1176))
  {
    v91 = DerivedStorage;
    if (!FigPlayerResourceArbiterGetGlobalSingleton(&v95))
    {
      FigPlayerResourceArbiterUnregisterConsumer(v95, *(v91 + 1176));
      *(v91 + 1176) = 0;
    }
  }

  v92 = *(v0 + 1160);
  if (v92)
  {
    CFRelease(v92);
    *(v0 + 1160) = 0;
  }

  v93 = *(v0 + 1168);
  if (v93)
  {
    CFRelease(v93);
    *(v0 + 1168) = 0;
  }

  v94 = *(v0 + 1184);
  if (v94)
  {
    CFRelease(v94);
    *(v0 + 1184) = 0;
  }

  OUTLINED_FUNCTION_652();
}

void playerfig_handleSetProperty_cold_4(uint64_t *a1)
{
  OUTLINED_FUNCTION_341_0(a1);
  OUTLINED_FUNCTION_4_0(MEMORY[0x1E6960C70]);
  OUTLINED_FUNCTION_93_0();
  playerfig_stopResetDisturbReprepareAndResumeWithTransaction();
}

double playerfig_handleSetProperty_cold_6()
{
  OUTLINED_FUNCTION_11_0(*MEMORY[0x1E69E9840]);
  os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
  v9 = OUTLINED_FUNCTION_103_0(os_log_and_send_and_compose_flags_and_os_log_type, v2, v3, v4, v5, v6, v7, v8, v23, v24, v25, v26, SWORD2(v26), SBYTE6(v26), HIBYTE(v26));
  if (OUTLINED_FUNCTION_77_0(v9))
  {
    OUTLINED_FUNCTION_21_0("playerfig_handleSetProperty");
    OUTLINED_FUNCTION_44_0();
    _os_log_send_and_compose_impl(v10, v11, v12, v13, v14, v15, v0, v16);
    OUTLINED_FUNCTION_192_0();
  }

  OUTLINED_FUNCTION_7();
  return OUTLINED_FUNCTION_420(v17, v18, v19, v20, v21);
}

void playerfig_handleSetProperty_cold_7()
{
  OUTLINED_FUNCTION_4_0(MEMORY[0x1E6960C70]);
  OUTLINED_FUNCTION_148_0();
  playerfig_stopResetDisturbReprepareAndResumeWithTransaction();
}

double playerfig_handleSetProperty_cold_8()
{
  OUTLINED_FUNCTION_11_0(*MEMORY[0x1E69E9840]);
  os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
  v9 = OUTLINED_FUNCTION_103_0(os_log_and_send_and_compose_flags_and_os_log_type, v2, v3, v4, v5, v6, v7, v8, v23, v24, v25, v26, SWORD2(v26), SBYTE6(v26), HIBYTE(v26));
  if (OUTLINED_FUNCTION_77_0(v9))
  {
    OUTLINED_FUNCTION_21_0("playerfig_handleSetProperty");
    OUTLINED_FUNCTION_44_0();
    _os_log_send_and_compose_impl(v10, v11, v12, v13, v14, v15, v0, v16);
    OUTLINED_FUNCTION_192_0();
  }

  OUTLINED_FUNCTION_7();
  return OUTLINED_FUNCTION_420(v17, v18, v19, v20, v21);
}

void playerfig_handleSetProperty_cold_9()
{
  OUTLINED_FUNCTION_4_0(MEMORY[0x1E6960C70]);
  OUTLINED_FUNCTION_148_0();
  playerfig_stopResetDisturbReprepareAndResumeWithTransaction();
}

void playerfig_handleSetProperty_cold_10()
{
  OUTLINED_FUNCTION_4_0(MEMORY[0x1E6960C70]);
  OUTLINED_FUNCTION_148_0();
  playerfig_stopResetDisturbReprepareAndResumeWithTransaction();
}

void playerfig_handleSetProperty_cold_11()
{
  OUTLINED_FUNCTION_4_0(MEMORY[0x1E6960C70]);
  OUTLINED_FUNCTION_148_0();
  playerfig_stopResetDisturbReprepareAndResumeWithTransaction();
}

void playerfig_handleSetProperty_cold_12()
{
  OUTLINED_FUNCTION_4_0(MEMORY[0x1E6960C70]);
  OUTLINED_FUNCTION_148_0();
  playerfig_stopResetDisturbReprepareAndResumeWithTransaction();
}

uint64_t playerfig_handleSetProperty_cold_13(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  FigReportingAgentStatsSetIntValue(*(DerivedStorage + 1952));

  return FigSimpleMutexUnlock();
}

void playerfig_setVideoTargetArray_cold_2(uint64_t a1, _DWORD *a2)
{
  OUTLINED_FUNCTION_4_0(MEMORY[0x1E6960C70]);
  OUTLINED_FUNCTION_148_0();
  playerfig_stopResetDisturbReprepareAndResumeWithTransaction();
  *a2 = v3;
}

void playerfig_rebuildRenderPipelines_disturbIfInLameDuckGap_cold_2(uint64_t *a1)
{
  OUTLINED_FUNCTION_341_0(a1);
  OUTLINED_FUNCTION_4_0(MEMORY[0x1E6960C70]);
  OUTLINED_FUNCTION_93_0();
  playerfig_stopResetDisturbReprepareAndResumeWithTransaction();
}

uint64_t itemfig_setVideoEnhancementModeOnImageQueues_cold_1(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = 0;
  if (itemfig_getTrackStorage(a2, a3, a1) || !*(*a1 + 16))
  {
    return 1;
  }

  FigRenderPipelineGetFigBaseObject();
  if (*(*(CMBaseObjectGetVTable() + 8) + 56))
  {
    v4 = OUTLINED_FUNCTION_228();
    v5(v4);
  }

  return 0;
}

uint64_t itemfig_assetPropertyLoaded_cold_1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_216_0();
  FigSimpleMutexLock();
  v5 = OUTLINED_FUNCTION_171();
  playerfig_updateStartHostTimeEstimatesOfItemAndFollowingItems(v5, v6);
  if (*(a4 + 1306))
  {
    v8 = OUTLINED_FUNCTION_171();
    NotificationPayloadForProperties = playerfig_createNotificationPayloadForProperties(v8, v9, v10, v11, v12, v13, v14, v15, @"SeekableTimeIntervals", 0);
    CMNotificationCenterGetDefaultLocalCenter();
    OUTLINED_FUNCTION_406_0();
    FigDispatchAsyncPostNotification();
    if (NotificationPayloadForProperties)
    {
      CFRelease(NotificationPayloadForProperties);
    }
  }

  return FigSimpleMutexUnlock();
}

void itemfig_assetDownloadComplete_cold_1(const __CFURL **a1, void *a2, const void *a3)
{
  if (!FigAssetDownloadStorageManagementSetDownloadCompletionDateForAssetAtURL(*a1, *a2))
  {
    FigAssetDownloadStorageManagementExcludeURLFromBackup(*a1);
  }

  CFRelease(a3);
}

double itemfig_handleSetProperty_cold_1()
{
  OUTLINED_FUNCTION_11_0(*MEMORY[0x1E69E9840]);
  os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
  v9 = OUTLINED_FUNCTION_103_0(os_log_and_send_and_compose_flags_and_os_log_type, v2, v3, v4, v5, v6, v7, v8, v23, v24, v25, v26, SWORD2(v26), SBYTE6(v26), HIBYTE(v26));
  if (OUTLINED_FUNCTION_77_0(v9))
  {
    OUTLINED_FUNCTION_21_0("itemfig_handleSetProperty");
    OUTLINED_FUNCTION_44_0();
    _os_log_send_and_compose_impl(v10, v11, v12, v13, v14, v15, v0, v16);
    OUTLINED_FUNCTION_192_0();
  }

  OUTLINED_FUNCTION_7();
  return OUTLINED_FUNCTION_420(v17, v18, v19, v20, v21);
}

void itemfig_handleSetProperty_cold_2(int a1, uint64_t a2, uint64_t a3, _DWORD *a4, int a5, int a6, int a7, int a8)
{
  NotificationPayloadForProperties = playerfig_createNotificationPayloadForProperties(a1, a2, a3, a4, a5, a6, a7, a8, @"CurrentDimensions", 0);
  CMNotificationCenterGetDefaultLocalCenter();
  FigDispatchAsyncPostNotification();
  if (NotificationPayloadForProperties)
  {
    CFRelease(NotificationPayloadForProperties);
  }

  *a4 = 0;
}

void itemfig_handleSetProperty_cold_4()
{
  OUTLINED_FUNCTION_471();
  valuePtr = 0;
  CFNumberGetValue(v1, kCFNumberFloat32Type, &valuePtr);
  *(v0 + 1488) = valuePtr;
  v2 = OUTLINED_FUNCTION_198();
  itemfig_applyLoudnessInfo(v2, v3, 1, 0);
}

void itemfig_handleSetProperty_cold_5()
{
  OUTLINED_FUNCTION_471();
  itemfig_setDisplayNonForcedSubtitlesEnabled(v0, *MEMORY[0x1E695E4D0] == v1);
  v2 = OUTLINED_FUNCTION_298();
  playerfig_updateClosedCaptionsDisplayForItem(v2, v3);
  v4 = OUTLINED_FUNCTION_298();
  playerfig_updateSubtitleDisplayForItem(v4, v5);
  v6 = OUTLINED_FUNCTION_298();

  playerfig_updateCaptionOrSubtitleHintOnVideoPipeline(v6, v7);
}

void itemfig_handleSetProperty_cold_9()
{
  OUTLINED_FUNCTION_4_0(MEMORY[0x1E6960C70]);
  OUTLINED_FUNCTION_148_0();
  playerfig_stopResetDisturbReprepareAndResumeWithTransaction();
}

void itemfig_handleSetProperty_cold_10()
{
  OUTLINED_FUNCTION_207();
  if (v3 && (v4 = CFGetTypeID(v2), v4 != CFArrayGetTypeID()))
  {
    OUTLINED_FUNCTION_243();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v7, v8, v9);
  }

  else
  {
    FigSimpleMutexLock();
    v5 = *(v1 + 800);
    *(v1 + 800) = v2;
    if (v2)
    {
      CFRetain(v2);
    }

    if (v5)
    {
      CFRelease(v5);
    }

    FigSimpleMutexUnlock();
    v6 = 0;
  }

  *v0 = v6;
}

void itemfig_handleSetProperty_cold_11(uint64_t a1)
{
  valuePtr = 0;
  if (a1)
  {
    OUTLINED_FUNCTION_207();
    v5 = CFGetTypeID(v4);
    if (v5 == CFNumberGetTypeID())
    {
      if (CFNumberGetValue(v3, kCFNumberIntType, &valuePtr))
      {
        *(v2 + 976) = valuePtr;
        playerfig_applyEQPreset(v1);
      }
    }
  }
}

uint64_t itemfig_handleSetProperty_cold_12(uint64_t a1, _DWORD *a2)
{
  if (!*(a1 + 1))
  {
    return 1;
  }

  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v6, v7, vars0);
  v4 = v3;
  result = 0;
  *a2 = v4;
  return result;
}

BOOL itemfig_handleSetProperty_cold_13(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 286);
  v3 = *MEMORY[0x1E695E4D0] == a2;
  *(a1 + 286) = v3;
  return !*(a1 + 352) || v3 == v2;
}

BOOL itemfig_handleSetProperty_cold_14(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 285);
  v3 = *MEMORY[0x1E695E4D0] == a2;
  *(a1 + 285) = v3;
  return !*(a1 + 352) || v3 == v2;
}

BOOL itemfig_handleSetProperty_cold_15(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 284);
  v3 = *MEMORY[0x1E695E4D0] == a2;
  *(a1 + 284) = v3;
  return !*(a1 + 352) || v3 == v2;
}

uint64_t itemfig_SetTrackProperty_cold_1()
{
  OUTLINED_FUNCTION_471();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *v0 = v1;

  return FigSimpleMutexUnlock();
}

void itemfig_setCurrentTimeWithRangeAndIDGuts_cold_1(uint64_t a1, CFTypeRef *a2)
{
  if (*(CMBaseObjectGetDerivedStorage() + 2232))
  {
    FigGetAllocatorForMedia();
    v3 = OUTLINED_FUNCTION_360_0();
    if (!FigMetricItemSeekEventCreate(v4, v5, v6, v3, v7))
    {
      if (*(*(OUTLINED_FUNCTION_253_0() + 16) + 40))
      {
        v8 = OUTLINED_FUNCTION_383();
        v9(v8);
      }
    }
  }

  if (*a2)
  {
    CFRelease(*a2);
  }
}

void playerfig_AddToPlayQueue_cold_1()
{
  OUTLINED_FUNCTION_207();
  playerfig_applyEQPreset(v2);
  v3 = *(v0 + 104);
  DefaultLocalCenter = CMNotificationCenterGetDefaultLocalCenter();
  OUTLINED_FUNCTION_348_0(v3, DefaultLocalCenter, @"TimebaseChanged");
  v5 = *(v0 + 104);
  v6 = CMNotificationCenterGetDefaultLocalCenter();
  OUTLINED_FUNCTION_348_0(v5, v6, @"ItemBecameCurrent");
  playerfig_postDeferredCurrentItemDidChangeNotificationWithReason();
  playerfig_updatePlaybackStateAndBossRate(v1, 7, 0);
}

void playerfig_RemoveFromPlayQueue_cold_4(uint64_t *a1)
{
  OUTLINED_FUNCTION_341_0(a1);
  OUTLINED_FUNCTION_4_0(MEMORY[0x1E6960C70]);
  OUTLINED_FUNCTION_93_0();
  playerfig_stopResetDisturbReprepareAndResumeWithTransaction();
}

void playerfig_DuckVolume_cold_1(uint64_t *a1)
{
  OUTLINED_FUNCTION_341_0(a1);
  OUTLINED_FUNCTION_4_0(MEMORY[0x1E6960C70]);
  OUTLINED_FUNCTION_93_0();
  playerfig_stopResetDisturbReprepareAndResumeWithTransaction();
}

void playerfig_DuckVolume_cold_2(uint64_t *a1)
{
  OUTLINED_FUNCTION_341_0(a1);
  OUTLINED_FUNCTION_4_0(MEMORY[0x1E6960C70]);
  OUTLINED_FUNCTION_93_0();
  playerfig_stopResetDisturbReprepareAndResumeWithTransaction();
}

uint64_t segPumpSetupNetworkHistory(uint64_t a1)
{
  AllocatorForMedia = FigGetAllocatorForMedia();
  Mutable = CFDictionaryCreateMutable(AllocatorForMedia, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (!Mutable)
  {
    return 4294954655;
  }

  v3 = Mutable;
  FigCFDictionarySetInt64();
  FigCFDictionarySetValue();
  v4 = FigNetworkHistoryCreate();
  if (!v4)
  {
    segPumpSetNetworkHistory();
  }

  v5 = v4;
  CFRelease(v3);
  return v5;
}

void segPumpClearStatistics(uint64_t a1)
{
  v2 = (a1 + 400);
  v3 = 3;
  do
  {
    segPumpStreamClearStatistics(*(v2 - 1));
    v4 = *v2;
    v2 += 2;
    segPumpStreamClearStatistics(v4);
    --v3;
  }

  while (v3);
  *(a1 + 8728) = 0u;
  *(a1 + 8744) = 0u;
  *(a1 + 8696) = 0u;
  *(a1 + 8712) = 0u;
  *(a1 + 8664) = 0u;
  *(a1 + 8680) = 0u;
  *(a1 + 8816) = 0u;
  *(a1 + 8832) = 0u;
  FigNetworkInterfaceResetStatistics(*(a1 + 9312));
  v5 = *(a1 + 9232);
  if (v5)
  {
    v6 = *(*(CMBaseObjectGetVTable() + 16) + 72);
    if (v6)
    {

      v6(v5, 0x1F0B64538);
    }
  }
}

void segPumpStreamInitStorage(uint64_t a1, uint64_t a2, uint64_t a3, int a4, int a5, int a6, int a7)
{
  *a2 = a3;
  *(a2 + 866) = 1;
  *(a2 + 112) = 0;
  __asm { FMOV            V0.2D, #-1.0 }

  *(a2 + 120) = _Q0;
  *(a2 + 72) = 1;
  *(a2 + 944) = -1;
  *(a2 + 680) = 0;
  *(a2 + 688) = a2 + 680;
  *(a2 + 336) = 0;
  *(a2 + 344) = a2 + 336;
  *(a2 + 752) = 1;
  *(a2 + 760) = a4;
  if (a4 >= 2)
  {
    if (a7)
    {
      v15 = 0;
    }

    else
    {
      v15 = *(a1 + 48) == 0;
    }

    *(a2 + 406) = v15;
  }

  if (!segPumpCreateMediaConnection(a2))
  {
    *(a2 + 696) = *(a2 + 680);
    v16 = a5 <= 1 ? 1 : a5;
    segPumpStreamSetReadAheadConnectionCountMax(a2, v16);
    if (!v17)
    {
      if (a6 <= 1)
      {
        v18 = 1;
      }

      else
      {
        v18 = a6;
      }

      if (v18 >= a5)
      {
        v18 = a5;
      }

      *(a2 + 784) = v18;
      *(a2 + 360) = -1;
      *(a2 + 368) = -1;
    }
  }
}

void segPumpLoadStartupScoreCallback()
{
  OUTLINED_FUNCTION_813();
  __dst[28] = *MEMORY[0x1E69E9840];
  v52 = v0;
  segPumpLockAndCopyPumpFromRetainProxy();
  if (!v1)
  {
    bzero(&__src[1], 0xD8uLL);
    segPumpMakeNetworkPredictionInput(0, __src);
    v59 = 0;
    v57 = 0u;
    v58 = 0u;
    v55 = 0u;
    v56 = 0u;
    v54 = 0u;
    FigGetUpTimeNanoseconds();
    __src[2] = 0.0;
    *&__src[0] = 1;
    *&__src[7] = MEMORY[0x80];
    *&__src[21] |= 4uLL;
    v2 = *(*(CMBaseObjectGetVTable() + 16) + 8);
    if (!v2 || (memcpy(__dst, __src, 0xE0uLL), v3 = OUTLINED_FUNCTION_235(), v2(v3)))
    {
      v4 = 0;
    }

    else
    {
      v4 = (*(&v55 + 1) * v54);
      if (dword_1EAF16A30)
      {
        LODWORD(v61) = 0;
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        v6 = os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
        if (OUTLINED_FUNCTION_124_0(v6))
        {
          v7 = MEMORY[0x22F0];
          if (!MEMORY[0x22F0])
          {
            v7 = &stru_1F0B1AFB8;
          }

          *v62 = 136316162;
          *&v62[4] = "segPumpMakeGlobalBandwidthPrediction";
          v63 = 2114;
          v64 = v7;
          v65 = 2048;
          v66 = v54 / 1000.0;
          v67 = 2048;
          v68 = *(&v55 + 1);
          v69 = 2048;
          v70 = *(&v54 + 1) / 1000.0;
          OUTLINED_FUNCTION_44_0();
          _os_log_send_and_compose_impl(v8, v9, v10, v11, v12, v13, 0, v14, v62, 52);
        }

        OUTLINED_FUNCTION_7();
        OUTLINED_FUNCTION_345_0(v15, v16, v17, v18, v19);
      }

      v20 = MEMORY[0x2410];
      if (MEMORY[0x2410])
      {
        v21 = *(*(CMBaseObjectGetVTable() + 16) + 56);
        if (v21)
        {
          v21(v20, 0x1F0B64538, 0x1F0B422B8, v4, 0);
        }
      }
    }

    if (!MEMORY[0x263A])
    {
      MEMORY[0x263A] = 1;
      if (MEMORY[0x2410])
      {
        if (*(*(CMBaseObjectGetVTable() + 16) + 56))
        {
          OUTLINED_FUNCTION_606();
          v51();
        }
      }
    }

    if (!v4)
    {
      v4 = FigRCLGetNumberWithDefault(MEMORY[0x2468], @"coldStartArbitraryBandwidthGuess", 0);
    }

    if (v4 >= 1)
    {
      v22 = MEMORY[0x2058];
      if (MEMORY[0x2058])
      {
        v23 = v4;
        v53 = v4;
        do
        {
          v24 = FigRCLGetDoubleWithDefault(MEMORY[0x2468], @"adaptiveStartupRewardWeight", 1.0);
          v25 = FigRCLGetDoubleWithDefault(MEMORY[0x2468], @"adaptiveStartupCostWeight", 1.0);
          v26 = FigRCLGetNumberWithDefault(MEMORY[0x2468], @"fastStartupThresholdMS", 1000);
          v27 = FigRCLGetNumberWithDefault(MEMORY[0x2468], @"slowStartupThresholdMS", 3000);
          v28 = FigRCLGetNumberWithDefault(MEMORY[0x2468], @"superSlowStartupThresholdMS", 5000);
          v29 = FigRCLGetDoubleWithDefault(MEMORY[0x2468], @"fastStartCostScore", 50.0);
          v30 = FigRCLGetDoubleWithDefault(MEMORY[0x2468], @"slowStartCostScore", 300.0);
          v31 = FigRCLGetDoubleWithDefault(MEMORY[0x2468], @"superSlowStartCostScore", 2300.0);
          v32 = *(v22 + 6);
          __dst[0] = 0.0;
          __src[0] = 0.0;
          *&v54 = 0;
          v61 = 0;
          *v62 = 0;
          if (MEMORY[8])
          {
            v33 = MEMORY[8];
          }

          else
          {
            v33 = 6;
          }

          segPumpGetStartupRequirements(0, v33, __dst, __src, &v54, v62, &v61, v32);
          if (__src[0] <= v23)
          {
            v34 = *v62;
          }

          else if (__dst[0] <= v23)
          {
            v35 = &v54;
            if (MEMORY[0x151])
            {
              v35 = &v61;
            }

            v34 = *v35;
          }

          else
          {
            v34 = MEMORY[0x2030];
          }

          v36 = v26;
          v37 = v34 * 1000.0;
          v38 = ((v32 * v37) / v53);
          if (v38 <= v26)
          {
            v40 = v29 / v36 * v38;
          }

          else
          {
            v39 = v29 + (v30 - v29) / (v27 - v36) * (v38 - v36);
            if (v38 <= v27)
            {
              v40 = v39;
            }

            else
            {
              v40 = v30 + (v31 - v30) / (v28 - v27) * (v38 - v27);
            }
          }

          v41 = v22[1];
          v42 = FigRCLGetNumberWithDefault(MEMORY[0x2468], @"lowQualityBWThreshold", 1000000);
          v43 = FigRCLGetNumberWithDefault(MEMORY[0x2468], @"highQualityBWThreshold", 8000000);
          v44 = FigRCLGetNumberWithDefault(MEMORY[0x2468], @"superHighQualityBWThreshold", 10000000);
          v45 = FigRCLGetDoubleWithDefault(MEMORY[0x2468], @"lowQualityRewardScore", 200.0);
          v46 = FigRCLGetDoubleWithDefault(MEMORY[0x2468], @"highQualityRewardScore", 600.0);
          v47 = FigRCLGetDoubleWithDefault(MEMORY[0x2468], @"superHighQualityRewardScore", 620.0);
          NormalizedPeakBitrate = FigAlternateGetNormalizedPeakBitrate(v41);
          if (NormalizedPeakBitrate <= v42)
          {
            v49 = v45 / v42 * NormalizedPeakBitrate;
          }

          else
          {
            v49 = v46 + (v47 - v46) / (v44 - v43) * (NormalizedPeakBitrate - v43);
            if (NormalizedPeakBitrate <= v43)
            {
              v49 = v45 + (v46 - v45) / (v43 - v42) * (NormalizedPeakBitrate - v42);
            }
          }

          v50 = v40;
          FigAlternateSetStartupScore(v22[1], v24 * v49 - v25 * v50);
          v22 = *v22;
        }

        while (v22);
      }
    }
  }

  segPumpUnlockAndSendAllPendingNotifications(v52);
  OUTLINED_FUNCTION_812();
}

void segPumpAttemptNetworkMonitorSetupDispatch(const void *a1)
{
  OUTLINED_FUNCTION_50();
  segPumpLockAndCopyPumpFromRetainProxy();
  if (!v2)
  {
    AttemptNetworkMonitorSetup(v3);
  }

  segPumpUnlockAndSendAllPendingNotifications(a1);
  if (cf)
  {
    CFRelease(cf);
  }

  if (a1)
  {
    CFRelease(a1);
  }
}

uint64_t segPumpRemoveStreamingCacheListeners(uint64_t result)
{
  if (result)
  {
    OUTLINED_FUNCTION_187();
    FigRetainProxyGetOwner();
    CMBaseObjectGetDerivedStorage();
    if (dword_1EAF16A30)
    {
      OUTLINED_FUNCTION_10_1();
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v10 = OUTLINED_FUNCTION_311(os_log_and_send_and_compose_flags_and_os_log_type, v3, v4, v5, v6, v7, v8, v9, v23, v24, v25, v26, SBYTE2(v26), BYTE3(v26), SHIDWORD(v26));
      if (OUTLINED_FUNCTION_115_1(v10))
      {
        OUTLINED_FUNCTION_53_0();
        OUTLINED_FUNCTION_39();
        OUTLINED_FUNCTION_38();
        _os_log_send_and_compose_impl(v11, v12, v13, v14, v15, v16, v1, v17);
        OUTLINED_FUNCTION_612();
      }

      OUTLINED_FUNCTION_7();
      OUTLINED_FUNCTION_414(v18, v19, v20, v21, v22);
    }

    CMNotificationCenterGetDefaultLocalCenter();
    OUTLINED_FUNCTION_84_0();
    return FigNotificationCenterRemoveWeakListener();
  }

  return result;
}

uint64_t segPumpCustomURLLoaderCancelRequest(uint64_t result)
{
  if (*(result + 80))
  {
    VTable = CMBaseObjectGetVTable();
    v2 = *(VTable + 16);
    result = VTable + 16;
    if (*(v2 + 32))
    {
      v3 = OUTLINED_FUNCTION_177();

      return v4(v3);
    }
  }

  return result;
}

void segPumpStreamingCacheDiskWriteErrorCallback(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  segPumpLockAndCopyPumpFromRetainProxy();
  if (!v8 && MEMORY[0x128] == a4)
  {
    if (a5)
    {
      FigCFDictionaryGetInt32IfPresent();
    }

    segPumpSendEndCallbackForAllActiveStreamsWithOSStatus(a2, 0);
  }

  segPumpUnlockAndSendAllPendingNotifications(a2);
}

double segPumpLockAndCopyPumpFromRetainProxy()
{
  OUTLINED_FUNCTION_113_1();
  FigRetainProxyLockMutex();
  if (!FigRetainProxyIsInvalidated())
  {
    if (v1 && v0)
    {
      Owner = FigRetainProxyGetOwner();
      if (Owner)
      {
        v4 = CFRetain(Owner);
        *v1 = v4;
        if (v4)
        {
          v5 = CFGetTypeID(v4);
          if (v5 == FigBytePumpGetTypeID())
          {
            DerivedStorage = CMBaseObjectGetDerivedStorage();
            *v0 = DerivedStorage;
            if (DerivedStorage)
            {
              return result;
            }
          }
        }
      }

      else
      {
        *v1 = 0;
      }
    }

    OUTLINED_FUNCTION_376();

    return FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
  }

  return result;
}

void segPumpSendEndCallbackForAllActiveStreamsWithOSStatus(uint64_t a1, uint64_t a2)
{
  cf = 0;
  if (a2 != -15626)
  {
    FigCreateErrorForOSStatus(a2, &cf);
    segPumpSendEndCallbackForAllActiveStreams();
    if (cf)
    {
      CFRelease(cf);
    }
  }
}

uint64_t segPumpSendEndCallbackForAllActiveStreams()
{
  OUTLINED_FUNCTION_261();
  values = v2;
  FigRetainProxyRetain();
  segPumpLockAndCopyPumpFromRetainProxy();
  v4 = v3;
  if (!v3 && !segPumpSentEndCallbackForAllActiveStreams(0) && !FigCFErrorIsEqualToOSStatus(v1, @"CoreMediaErrorDomain", -15626))
  {
    if (v1)
    {
      v5 = MEMORY[0x2028];
      MEMORY[0x2028] = v1;
      CFRetain(v1);
      if (v5)
      {
        CFRelease(v5);
      }

      AllocatorForMedia = FigGetAllocatorForMedia();
      v7 = CFDictionaryCreate(AllocatorForMedia, &kFigBytePumpFatalErrorNotificationValue_Error, &values, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      segPumpReadyNotification(0, @"FBP_FatalErrorOccurred", v7);
      if (v7)
      {
        CFRelease(v7);
      }
    }

    segPumpSendEndCallbackForActiveStream(0, MEMORY[0x1A8], values);
    segPumpSendEndCallbackForActiveStream(0, MEMORY[0x198], values);
    segPumpSendEndCallbackForActiveStream(0, MEMORY[0x188], values);
    segPumpSendEndCallbackForActiveStream(0, MEMORY[0x1B0], values);
    segPumpSendEndCallbackForActiveStream(0, MEMORY[0x1A0], values);
    segPumpSendEndCallbackForActiveStream(0, MEMORY[0x190], values);
  }

  segPumpUnlockAndSendAllPendingNotifications(v0);
  FigRetainProxyRelease();
  return v4;
}

uint64_t segPumpSentEndCallbackForAllActiveStreams(uint64_t a1)
{
  if (segPumpSentEndCallbackForAnyStream(a1))
  {
    v2 = 0;
    v3 = 1;
    do
    {
      v4 = *(a1 + 392 + v2);
      if (*(v4 + 16))
      {
        v3 &= *(v4 + 1152);
      }

      v2 += 16;
    }

    while (v2 != 48);
  }

  else
  {
    return 0;
  }

  return v3;
}

uint64_t segPumpStopStream(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_180_1();
  FigRetainProxyRetain();
  ++*(v3 + 880);
  *(v3 + 860) = 0;
  v6 = *(v3 + 288);
  if (v6)
  {
    CFRelease(v6);
    *(v3 + 288) = 0;
    *(v3 + 320) = -1;
  }

  v7 = OUTLINED_FUNCTION_171();
  segPumpCancelMediaFileReadAndResetData(v7, v8, a3, 0);
  if (FigRetainProxyIsInvalidated() || (v9 = OUTLINED_FUNCTION_171(), segPumpSetStreamDiscontinuityDomain(v9, v10, 0), v11 = *(v3 + 537), segPumpResetConnection(v4, v3 + 408), *(v3 + 859) = 0, v12 = OUTLINED_FUNCTION_171(), segPumpStreamUpdateIndexExpectedArrival(v12, v13, 0), FigRetainProxyIsInvalidated()))
  {
    v20 = 4294954511;
  }

  else
  {
    *(v3 + 400) = 0;
    FigHTTPStopAndReleaseTimer((v3 + 392));
    if (!a3 || v11)
    {
      v14 = *(v3 + 280);
      if (v14)
      {
        CFRelease(v14);
        *(v3 + 280) = 0;
      }

      v15 = *(v3 + 272);
      if (v15)
      {
        CFRelease(v15);
        *(v3 + 272) = 0;
      }

      for (i = *(v3 + 680); i; i = *i)
      {
        v17 = OUTLINED_FUNCTION_178();
        segPumpStreamDontReuseHTTPRequest(v17, v18);
      }
    }

    v19 = *(v3 + 56);
    if (v19)
    {
      CFRelease(v19);
      *(v3 + 56) = 0;
    }

    segPumpCompleteNWAlternateForStream(v3, *(v3 + 1216));
    v20 = 0;
    *(v3 + 1216) = 0;
  }

  FigRetainProxyRelease();
  return v20;
}

uint64_t segPumpUpdateCurrentAlternate(uint64_t a1, uint64_t a2)
{
  *(a1 + 8328) = a2;
  result = segPumpUpdateBytesRequiredForNetworkPrediction(a1);
  v4 = *(a1 + 8328);
  v5 = *(a1 + 9232);
  if (v4)
  {
    result = FigAlternateGetAlternateIndex(*(v4 + 8));
    if (v5)
    {
      VTable = CMBaseObjectGetVTable();
      v7 = *(VTable + 16);
      result = VTable + 16;
      if (*(v7 + 56))
      {
        v8 = OUTLINED_FUNCTION_177();

        return v9(v8);
      }
    }
  }

  else if (v5)
  {
    v10 = CMBaseObjectGetVTable();
    v11 = *(v10 + 16);
    result = v10 + 16;
    if (*(v11 + 64))
    {
      v12 = OUTLINED_FUNCTION_177();

      return v13(v12);
    }
  }

  return result;
}

uint64_t segPumpUpdateBytesRequiredForNetworkPrediction(uint64_t a1)
{
  theArray[16] = *MEMORY[0x1E69E9840];
  v77 = 0;
  *v78 = 0;
  OUTLINED_FUNCTION_381_1();
  v71 = 0;
  v72 = 0;
  cf = 0;
  v3 = FigRCLGetNumberWithDefault(*(v2 + 9320), @"minRequiredBytesForNetworkHistory", 0x40000);
  v4 = v3;
  valuePtr = v3;
  theArray[0] = 0;
  v5 = *(a1 + 9760);
  if (v5)
  {
    AllocatorForMedia = FigGetAllocatorForMedia();
    v7 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v7)
    {
      v7(v5, @"AfmfpbProperty_CandidateAlternatesForAdaptiveBitrateSwitching", AllocatorForMedia, theArray);
      if (theArray[0])
      {
        Count = CFArrayGetCount(theArray[0]);
        v9 = theArray[0];
        if (Count)
        {
          goto LABEL_10;
        }

        if (theArray[0])
        {
          CFRelease(theArray[0]);
          theArray[0] = 0;
        }
      }
    }
  }

  v10 = FigGetAllocatorForMedia();
  Mutable = CFArrayCreateMutable(v10, 0, MEMORY[0x1E695E9C0]);
  if (!Mutable)
  {
    OUTLINED_FUNCTION_376();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v66, v67, v68);
    v39 = v41;
    if (theArray[0])
    {
      CFRelease(theArray[0]);
    }

    if (v39)
    {
      v9 = 0;
      goto LABEL_53;
    }

    goto LABEL_51;
  }

  v9 = Mutable;
  v12 = *(a1 + 8280);
  if (!v12)
  {
    goto LABEL_11;
  }

  do
  {
    CFArrayAppendValue(v9, v12[1]);
    v12 = *v12;
  }

  while (v12);
LABEL_10:
  if (!v9)
  {
LABEL_51:
    v9 = 0;
    goto LABEL_52;
  }

LABEL_11:
  if (CFArrayGetCount(v9) < 1)
  {
LABEL_52:
    v39 = 0;
    goto LABEL_53;
  }

  HasOnlyAudioOnly = FigAlternateSelectionUtility_AlternateListHasOnlyAudioOnly(v9);
  v14 = *(a1 + 16 * *(a1 + 8600) + 392);
  v15 = FigGetAllocatorForMedia();
  inserted = FigAlternateFilterTreeCreate(v15, &cf);
  if (inserted)
  {
    goto LABEL_46;
  }

  v17 = *(a1 + 8328);
  if (!v17 || FigAlternateIs4k(*(v17 + 8)) || HasOnlyAudioOnly)
  {
    v18 = FigGetAllocatorForMedia();
    inserted = FigAlternateHighestPeakBitRateFilterCreate(v18, &v73);
    if (!inserted)
    {
      v19 = cf;
      v20 = v73;
      v21 = 600;
      goto LABEL_30;
    }

LABEL_46:
    v39 = inserted;
    goto LABEL_53;
  }

  if (*(a1 + 8218) && *(v14 + 96) - *(v14 + 904) < (3 * *(a1 + 8)))
  {
    v22 = FigGetAllocatorForMedia();
    inserted = FigAlternateNextHighestPeakBitRateFilterCreate(v22, *(*(a1 + 8328) + 8), &v71, 1.1);
    if (inserted)
    {
      goto LABEL_46;
    }

    v19 = cf;
    v20 = v71;
    v21 = 500;
  }

  else
  {
    v23 = OUTLINED_FUNCTION_249_1();
    HasHDVideoResolution = FigAlternateHasHDVideoResolution(v23);
    v25 = FigGetAllocatorForMedia();
    inserted = FigAlternateLowestPeakBitRateFilterCreate(v25, &v75);
    if (inserted)
    {
      goto LABEL_46;
    }

    v26 = dbl_196E72880[!HasHDVideoResolution];
    v27 = HasHDVideoResolution ? 4800.0 : 2560.0;
    v28 = FigGetAllocatorForMedia();
    inserted = FigAlternateResolutionClosestHeightFilterCreate(v28, &v76, v27, v26);
    if (inserted)
    {
      goto LABEL_46;
    }

    v29 = FigGetAllocatorForMedia();
    inserted = FigAlternateContinuousFramesOnlyFilterCreate(v29, &v74);
    if (inserted)
    {
      goto LABEL_46;
    }

    inserted = FigAlternateFilterTreeInsertLeaf(cf, v74, 400);
    if (inserted)
    {
      goto LABEL_46;
    }

    inserted = FigAlternateFilterTreeInsertLeaf(cf, v76, 300);
    if (inserted)
    {
      goto LABEL_46;
    }

    v19 = cf;
    v20 = v75;
    v21 = 200;
  }

LABEL_30:
  inserted = FigAlternateFilterTreeInsertLeaf(v19, v20, v21);
  if (inserted)
  {
    goto LABEL_46;
  }

  v30 = FigGetAllocatorForMedia();
  inserted = FigAlternateLowestIndexAlternateFilterCreate(v30, &v72);
  if (inserted)
  {
    goto LABEL_46;
  }

  inserted = FigAlternateFilterTreeInsertLeaf(cf, v72, 100);
  if (inserted)
  {
    goto LABEL_46;
  }

  inserted = FigAlternateFilterTreeCreateFilter(cf, @"FigNetworkHistoryTree", -1, &v77);
  if (inserted)
  {
    goto LABEL_46;
  }

  v31 = v77;
  v32 = *(*(CMBaseObjectGetVTable() + 16) + 24);
  if (!v32)
  {
    v39 = 4294954514;
    goto LABEL_53;
  }

  inserted = v32(v31, v9, v78);
  if (inserted)
  {
    goto LABEL_46;
  }

  if (!*v78 || CFArrayGetCount(*v78) != 1)
  {
    OUTLINED_FUNCTION_376();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v66, v67, v68);
    goto LABEL_46;
  }

  ValueAtIndex = CFArrayGetValueAtIndex(*v78, 0);
  v34 = ValueAtIndex;
  if (*(a1 + 8328))
  {
    PeakBitRate = FigAlternateGetPeakBitRate(ValueAtIndex);
    v36 = OUTLINED_FUNCTION_249_1();
    if (PeakBitRate <= FigAlternateGetPeakBitRate(v36))
    {
      v34 = *(*(a1 + 8328) + 8);
    }
  }

  v37 = FigRCLGetNumberWithDefault(*(a1 + 9320), @"minContentMillisecondsBeforePredicting", 500);
  v38 = FigAlternateGetPeakBitRate(v34);
  v39 = 0;
  v40 = v38 * v37 / 8000;
  if (v40 <= v4)
  {
    v40 = v4;
  }

  valuePtr = v40;
LABEL_53:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v9)
  {
    CFRelease(v9);
  }

  if (v77)
  {
    CFRelease(v77);
  }

  if (v74)
  {
    CFRelease(v74);
  }

  if (*v78)
  {
    CFRelease(*v78);
  }

  if (v76)
  {
    CFRelease(v76);
  }

  if (v75)
  {
    CFRelease(v75);
  }

  if (v73)
  {
    CFRelease(v73);
  }

  if (v72)
  {
    CFRelease(v72);
  }

  if (v71)
  {
    CFRelease(v71);
  }

  if (!v39)
  {
    if (dword_1EAF16A30)
    {
      LODWORD(v77) = 0;
      LOBYTE(v76) = 0;
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v43 = v76;
      v44 = os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, v76);
      if (OUTLINED_FUNCTION_109_0(v44))
      {
        v45 = &stru_1F0B1AFB8;
        if (a1)
        {
          OUTLINED_FUNCTION_164_1();
          if (!v47)
          {
            v45 = v46;
          }
        }

        *v78 = 136315650;
        *&v78[4] = "segPumpUpdateBytesRequiredForNetworkPrediction";
        v79 = 2114;
        v80 = v45;
        v81 = 2048;
        v82 = valuePtr;
        OUTLINED_FUNCTION_82_1();
        OUTLINED_FUNCTION_38();
        _os_log_send_and_compose_impl(v48, v49, v50, v51, v52, v53, v43, v54, v78);
      }

      OUTLINED_FUNCTION_7();
      OUTLINED_FUNCTION_524(v55, v56, v57, v58, v59);
    }

    *(a1 + 9472) = valuePtr;
    v60 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt64Type, &valuePtr);
    if (v60)
    {
      v61 = v60;
      v62 = *(a1 + 9760);
      if (v62)
      {
        v63 = *(*(CMBaseObjectGetVTable() + 8) + 56);
        if (v63)
        {
          v39 = v63(v62, @"AfmfpbProperty_BytesRequiredForNetworkPrediction", v61);
        }

        else
        {
          v39 = 4294954514;
        }
      }

      else
      {
        v39 = 0;
      }

      CFRelease(v61);
    }

    else
    {
      OUTLINED_FUNCTION_376();
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v66, v67, v68);
      return v65;
    }
  }

  return v39;
}

uint64_t FigReportingAgentStatsSetIntValueWithOptions_0(uint64_t result)
{
  if (result)
  {
    OUTLINED_FUNCTION_370_1();
    VTable = CMBaseObjectGetVTable();
    v2 = *(VTable + 16);
    result = VTable + 16;
    if (*(v2 + 56))
    {
      OUTLINED_FUNCTION_148_1();

      return v3();
    }
  }

  return result;
}

uint64_t segPumpCopyCachedTimeRanges(uint64_t a1, CFTypeRef *a2)
{
  v60 = *MEMORY[0x1E69E9840];
  values = 0;
  v57 = 0;
  if (*(a1 + 296))
  {
    v3 = a1;
    AllocatorForMedia = FigGetAllocatorForMedia();
    Mutable = CFArrayCreateMutable(AllocatorForMedia, 0, MEMORY[0x1E695E9C0]);
    if (Mutable)
    {
      v46 = a2;
      v6 = 0;
      v7 = 0;
      v8 = v3 + 392;
      v9 = MEMORY[0x1E695E9C0];
      v47 = v3 + 392;
      v48 = v3;
      do
      {
        v10 = *(v8 + 16 * v7);
        if (*(v10 + 16))
        {
          LOBYTE(v55.start.value) = 0;
          v11 = *(v10 + 64);
          if (v11)
          {
            FigCFErrorIsEqualToOSStatus(*(v10 + 1160), @"CoreMediaErrorDomain", -15642);
            OUTLINED_FUNCTION_786();
            if (!v12)
            {
              if (v6)
              {
                OUTLINED_FUNCTION_299_0();
                if (!v13)
                {
                  FigStreamingCacheMediaStreamIsComplete(*(v3 + 296), *(v10 + 64), &v55);
                }

                LODWORD(v11) = 1;
              }
            }
          }

          if (LOBYTE(v55.start.value))
          {
            LODWORD(v11) = 0;
          }

          if (*v10 == *(v3 + 8600))
          {
            v6 = v11;
          }

          if (v11 == 1)
          {
            v14 = *(v10 + 64);
            if (v14)
            {
              v15 = FigStreamingCacheMediaStreamCopyCachedTimeRanges(*(v3 + 296), v14, &v57);
              if (v15)
              {
                goto LABEL_63;
              }
            }

            if (!v57 || !CFArrayGetCount(v57))
            {
              v16 = FigGetAllocatorForMedia();
              values = OUTLINED_FUNCTION_170_0(v16, MEMORY[0x1E6960CA8]);
              if (!values)
              {
                goto LABEL_62;
              }

              v17 = FigGetAllocatorForMedia();
              v57 = CFArrayCreate(v17, &values, 1, v9);
              if (values)
              {
                CFRelease(values);
                values = 0;
              }
            }

            if (CFArrayGetCount(Mutable))
            {
              v18 = FigGetAllocatorForMedia();
              v19 = CFArrayCreateMutable(v18, 0, v9);
              if (!v19)
              {
                goto LABEL_62;
              }

              theArray = v19;
              v49 = v6;
              if (CFArrayGetCount(v57) >= 1)
              {
                v20 = 0;
                v21 = 0;
                while (v20 < CFArrayGetCount(Mutable))
                {
                  memset(&v54, 0, sizeof(v54));
                  timescale = 0;
                  value = 0;
                  values = CFArrayGetValueAtIndex(v57, v21);
                  CMTimeRangeMakeFromDictionary(&v55, values);
                  v22 = Mutable;
                  values = CFArrayGetValueAtIndex(Mutable, v20);
                  CMTimeRangeMakeFromDictionary(&v54, values);
                  range = v55;
                  otherRange = v54;
                  CMTimeRangeGetIntersection(&v53, &range, &otherRange);
                  value = v53.start.value;
                  flags = v53.start.flags;
                  timescale = v53.start.timescale;
                  epoch = v53.start.epoch;
                  v24 = v53.duration.value;
                  v27 = v53.duration.timescale;
                  v26 = v53.duration.flags;
                  v28 = v53.duration.epoch;
                  if ((v53.start.flags & 1) == 0 || (v53.duration.flags & 1) == 0 || v53.duration.epoch || v53.duration.value < 0 || (v53.start.value = v53.duration.value, v53.start.timescale = v53.duration.timescale, v53.start.flags = v53.duration.flags, v53.start.epoch = 0, *&range.start.value = *MEMORY[0x1E6960CC0], range.start.epoch = *(MEMORY[0x1E6960CC0] + 16), CMTimeCompare(&v53.start, &range.start)))
                  {
                    v29 = FigGetAllocatorForMedia();
                    v53.start.value = value;
                    v53.start.timescale = timescale;
                    v53.start.flags = flags;
                    v53.start.epoch = epoch;
                    v53.duration.value = v24;
                    v53.duration.timescale = v27;
                    v53.duration.flags = v26;
                    v53.duration.epoch = v28;
                    v30 = CMTimeRangeCopyAsDictionary(&v53, v29);
                    values = v30;
                    if (!v30)
                    {
                      OUTLINED_FUNCTION_40_0();
                      FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v44, v45, v46);
                      v40 = v42;
                      Mutable = v22;
                      v32 = theArray;
                      goto LABEL_61;
                    }

                    CFArrayAppendValue(theArray, v30);
                    if (values)
                    {
                      CFRelease(values);
                      values = 0;
                    }
                  }

                  v53 = v55;
                  CMTimeRangeGetEnd(&range.start, &v53);
                  v53 = v54;
                  CMTimeRangeGetEnd(&otherRange.start, &v53);
                  v31 = CMTimeCompare(&range.start, &otherRange.start);
                  v21 += v31 >> 31;
                  v20 += v31 >= 0;
                  Mutable = v22;
                  if (v21 >= CFArrayGetCount(v57))
                  {
                    break;
                  }
                }
              }

              v32 = theArray;
              v8 = v47;
              v3 = v48;
              v6 = v49;
              if (!CFArrayGetCount(theArray))
              {
                v33 = FigGetAllocatorForMedia();
                v34 = OUTLINED_FUNCTION_170_0(v33, MEMORY[0x1E6960CA8]);
                values = v34;
                if (!v34)
                {
                  OUTLINED_FUNCTION_40_0();
                  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v44, v45, v46);
                  v40 = v43;
LABEL_61:
                  CFRelease(v32);
                  goto LABEL_55;
                }

                CFArrayAppendValue(theArray, v34);
                if (values)
                {
                  CFRelease(values);
                  values = 0;
                }
              }

              CFRetain(theArray);
              CFRelease(Mutable);
              CFRelease(theArray);
              v9 = MEMORY[0x1E695E9C0];
            }

            else
            {
              CFArrayGetCount(v57);
              v35 = OUTLINED_FUNCTION_193_0();
              v61.location = 0;
              CFArrayAppendArray(v35, v36, v61);
              v32 = Mutable;
            }

            if (v57)
            {
              CFRelease(v57);
              v57 = 0;
            }

            Mutable = v32;
          }
        }

        else
        {
          OUTLINED_FUNCTION_299_0();
          if (v13)
          {
            v6 = 0;
          }
        }

        ++v7;
      }

      while (v7 != 3);
      if (CFArrayGetCount(Mutable))
      {
LABEL_54:
        v40 = 0;
        *v46 = CFRetain(Mutable);
        goto LABEL_55;
      }

      v37 = FigGetAllocatorForMedia();
      values = OUTLINED_FUNCTION_170_0(v37, MEMORY[0x1E6960CA8]);
      if (values)
      {
        v38 = OUTLINED_FUNCTION_201_0();
        CFArrayAppendValue(v38, v39);
        if (values)
        {
          CFRelease(values);
          values = 0;
        }

        goto LABEL_54;
      }

LABEL_62:
      OUTLINED_FUNCTION_40_0();
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
    }

    else
    {
      OUTLINED_FUNCTION_40_0();
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
    }

LABEL_63:
    v40 = v15;
  }

  else
  {
    Mutable = 0;
    *a2 = 0;
    v40 = 4294954513;
  }

LABEL_55:
  if (v57)
  {
    CFRelease(v57);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  return v40;
}

void segPumpCreateAccessLog(uint64_t a1, CFAllocatorRef allocator, __CFDictionary **a3)
{
  v6 = a1 + 392;
  v7 = *(a1 + 392 + 16 * *(a1 + 8600));
  v41 = 0;
  memset(v40, 0, sizeof(v40));
  Mutable = CFDictionaryCreateMutable(allocator, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (Mutable)
  {
    v9 = Mutable;
    v10 = (*(v6 + 16 * *(a1 + 8600)) + 680);
    do
    {
      v10 = *v10;
      if (!v10)
      {
        goto LABEL_11;
      }

      v11 = v10[22];
    }

    while (!v11);
    v12 = FigCFHTTPCreateAddressString(v11);
    if (v12)
    {
      v13 = v12;
      CFDictionarySetValue(v9, @"s-ip", v12);
      CFRelease(v13);
    }

    v14 = 0;
    v15 = 0;
    do
    {
      v15 += *(*(v6 + v14) + 952);
      v14 += 16;
    }

    while (v14 != 48);
    if (FigCFDictionarySetCFIndex())
    {
LABEL_10:
      CFRelease(v9);
      goto LABEL_66;
    }

LABEL_11:
    UpTimeNanoseconds = FigGetUpTimeNanoseconds();
    if (segPumpGetObservedNetworkStats(a1, UpTimeNanoseconds - 60000000000, v40) || FigCFDictionarySetDouble() || FigCFDictionarySetDouble())
    {
      goto LABEL_10;
    }

    v47 = 0;
    v45 = 0u;
    v46 = 0u;
    v44 = 0u;
    *number = 0u;
    v43 = 0u;
    v17 = v7[120];
    if (v17 >= 1)
    {
      segPumpGetObservedNetworkStats(a1, v17, number);
    }

    OUTLINED_FUNCTION_627();
    if (FigCFDictionarySetDouble() || *(a1 + 8760) > 0.0 && FigCFDictionarySetDouble())
    {
      goto LABEL_10;
    }

    if (FigCFDictionarySetInt64() || *(a1 + 8728) >= 1 && (FigCFDictionarySetInt64() || *(a1 + 8736) >= 1 && FigCFDictionarySetInt64()) || FigCFDictionarySetDouble() || FigCFDictionarySetDouble())
    {
      goto LABEL_10;
    }

    v18 = FigCFHTTPCreateURLString(*(*v6 + 8));
    if (v18)
    {
      v19 = v18;
      CFDictionarySetValue(v9, @"uri", v18);
      CFRelease(v19);
    }

    if (FigCFDictionarySetCFIndex())
    {
      goto LABEL_10;
    }

    if (FigCFDictionarySetCFIndex())
    {
      goto LABEL_10;
    }

    if (FigCFDictionarySetDouble())
    {
      goto LABEL_10;
    }

    FigCFDictionarySetDouble();
    if (FigCFDictionarySetCFIndex() || FigCFDictionarySetCFIndex() || FigCFDictionarySetCFIndex() || FigCFDictionarySetCFIndex() || FigCFDictionarySetCFIndex())
    {
      goto LABEL_10;
    }

    v20 = *(a1 + 8328);
    if (v20)
    {
      AverageBitRate = FigAlternateGetAverageBitRate(*(v20 + 8));
      DeclaredPeakBitRate = FigAlternateGetDeclaredPeakBitRate(*(*(a1 + 8328) + 8));
      v39 = 0;
      segPumpGetSafeNetworkBandwidth(a1, &v39, 0, 0);
      if (FigCFDictionarySetDouble())
      {
        goto LABEL_10;
      }

      number[0] = 0;
      valuePtr = 0;
      v23 = *(a1 + 9760);
      if (v23)
      {
        FigGetAllocatorForMedia();
        OUTLINED_FUNCTION_230_1();
        v24 = *(*(CMBaseObjectGetVTable() + 8) + 48);
        if (v24)
        {
          v24(v23, @"AfmfpbProperty_MinimumBandwidthToSwitchUp", v3, number);
          if (number[0])
          {
            CFNumberGetValue(number[0], kCFNumberSInt32Type, &valuePtr);
            if (number[0])
            {
              CFRelease(number[0]);
            }
          }
        }
      }

      FigCFDictionarySetInt32();
      if (DeclaredPeakBitRate)
      {
        FigCFDictionarySetInt32();
      }

      if (AverageBitRate)
      {
        FigCFDictionarySetInt32();
      }

      if (FigAlternateGetFrameRate(*(*(a1 + 8328) + 8)) != 0.0)
      {
        FigCFDictionarySetDouble();
      }
    }

    v25 = *(a1 + 224);
    if (v25)
    {
      CFDictionarySetValue(v9, @"cs-guid", v25);
    }

    if (*(a1 + 8218))
    {
      v26 = @"VOD";
    }

    else
    {
      v26 = @"LIVE";
    }

    CFDictionarySetValue(v9, @"s-playback-type", v26);
    v27 = *(a1 + 9080);
    if (v27)
    {
      CFDictionarySetValue(v9, @"c-client-name", v27);
    }

    v28 = FigNetworkInterfaceReporterCopyPhysicalStatistics(*(a1 + 9312));
    if (v28)
    {
      v29 = v28;
      v30 = OUTLINED_FUNCTION_627();
      FigAccessLogUpdateWithPhysicalStatistcs(v30, v31, v32, v33, v34, v35, v36, v37);
      CFRelease(v29);
    }

    if (*(a1 + 8600) == 1)
    {
      v38 = MEMORY[0x1E695E4D0];
    }

    else
    {
      v38 = MEMORY[0x1E695E4C0];
    }

    CFDictionarySetValue(v9, @"c-audio-only", *v38);
    if (v7[143] >= 1)
    {
      FigCFDictionarySetInt64();
    }

    if (v7[140] >= 1)
    {
      FigCFDictionarySetInt64();
      FigCFDictionarySetDouble();
    }

    *a3 = v9;
  }

LABEL_66:
  OUTLINED_FUNCTION_426_1();
}

void segPumpCreateIFrameReport()
{
  OUTLINED_FUNCTION_629();
  v2 = v1;
  if (*(v3 + 8896))
  {
    OUTLINED_FUNCTION_400();
    FigGetUpTimeNanoseconds();
    Mutable = CFDictionaryCreateMutable(v0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    if (!Mutable)
    {
      goto LABEL_6;
    }

    v5 = Mutable;
    FigCFDictionarySetInt64();
    FigCFDictionarySetInt64();
    FigCFDictionarySetDouble();
    FigCFDictionarySetDouble();
    FigCFDictionarySetInt64();
    FigCFDictionarySetDouble();
  }

  else
  {
    v5 = 0;
  }

  *v2 = v5;
LABEL_6:
  OUTLINED_FUNCTION_345_1();
}

uint64_t segPumpCreateNetworkStatistics(uint64_t a1, uint64_t a2, __CFDictionary **a3)
{
  if (!a3)
  {
    return 0;
  }

  v4 = *(a1 + 9312);
  if (!v4 || (Mutable = FigNetworkInterfaceReporterCopyPhysicalStatistics(v4)) == 0)
  {
    v6 = OUTLINED_FUNCTION_173_0();
    Mutable = CFDictionaryCreateMutable(v6, v7, v8, v9);
    if (!Mutable)
    {
      return 4294954510;
    }
  }

  v10 = Mutable;
  v11 = OUTLINED_FUNCTION_265();
  InterfaceTypeEnum = segPumpGetInterfaceTypeEnum(v11, v12);
  StringFromInterfaceType = FigErrorLogGetStringFromInterfaceType(InterfaceTypeEnum);
  CFDictionarySetValue(v10, @"cs-iftype", StringFromInterfaceType);
  result = 0;
  *a3 = v10;
  return result;
}

uint64_t segPumpCreateStartupStatistics(uint64_t a1, CFAllocatorRef allocator, CFMutableDictionaryRef *a3)
{
  Mutable = CFDictionaryCreateMutable(allocator, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (!Mutable)
  {
    return 4294954510;
  }

  v6 = Mutable;
  if (*(a1 + 8848))
  {
    FigCFDictionarySetInt32();
  }

  if (*(a1 + 8))
  {
    FigCFDictionarySetInt32();
  }

  result = 0;
  *a3 = v6;
  return result;
}

uint64_t segPumpEnsureNetworkCostMonitor(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 8656))
  {
    return 0;
  }

  result = FigNetworkCostMonitorCreate(a2, (a1 + 8656));
  if (!result)
  {
    v4 = *(a1 + 8656);
    if (v4 && *(a1 + 9832))
    {
      v5 = *(*(CMBaseObjectGetVTable() + 8) + 56);
      if (v5)
      {
        v5(v4, 0x1F0B5F7F8, *MEMORY[0x1E695E4D0]);
      }
    }

    segPumpUpdateNetworkCostHasHighSpeedHighPower(a1);
    segPumpUpdateNetworkCostIsExpensive(a1);
    segPumpUpdateNetworkCostHasEndTag(a1);
    return 0;
  }

  return result;
}

void segPumpEnsureCMCDHeaderVendor(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, CFTypeRef cf, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_653();
  v19 = v18;
  if (!*(v18 + 9776))
  {
    if (!*(*(CMBaseObjectGetVTable() + 8) + 48))
    {
      goto LABEL_14;
    }

    v20 = OUTLINED_FUNCTION_308();
    if (v21(v20))
    {
      goto LABEL_14;
    }

    UInt64 = FigCFNumberGetUInt64();
    if (!UInt64)
    {
      goto LABEL_16;
    }

    if ((v23 = UInt64, FigCFDictionaryGetValue(), v24 = OUTLINED_FUNCTION_178(), FigCMCDHeaderVendorCreate(v24, v25, v26, v27, v28)) || (v29 = *(v19 + 88)) != 0 && FigCMCDHeaderVendorSetNetworkHistory(*(v19 + 9776), v29) || segPumpUpdateCMCDStreamType(v19) || FigCMCDHeaderVendorSetStreamingFormat(*(v19 + 9776), *(v19 + 337) != 0) || FigCMCDHeaderVendorSetAllowedKeys(*(v19 + 9776), v23))
    {
LABEL_14:
      v32 = *(v19 + 9776);
      if (v32)
      {
        CFRelease(v32);
        *(v19 + 9776) = 0;
      }
    }

    else if (*(v19 + 9680) && *(*(CMBaseObjectGetVTable() + 8) + 56))
    {
      v30 = OUTLINED_FUNCTION_515();
      v31(v30);
    }
  }

LABEL_16:
  OUTLINED_FUNCTION_652();
}

double segPumpCopyNearFutureLiveBufferInfo(uint64_t a1)
{
  if (!*(a1 + 8218))
  {
    OUTLINED_FUNCTION_187();
    v4 = *(v3 + 392);
    v5 = *(v3 + 408);
    v6 = 0.0;
    v7 = v5;
    EndDate = 0.0;
    if (*(v4 + 16))
    {
      EndDate = segPumpPlaylistGetEndDate(*(v4 + 56));
      v7 = *(v2 + 408);
    }

    if (*(v7 + 16))
    {
      v6 = segPumpPlaylistGetEndDate(*(v5 + 56));
    }

    if (EndDate <= 0.0 && v6 <= 0.0)
    {
      OUTLINED_FUNCTION_239();

      return FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
    }

    else
    {
      AllocatorForMedia = FigGetAllocatorForMedia();
      Mutable = CFDictionaryCreateMutable(AllocatorForMedia, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      if (Mutable)
      {
        v12 = Mutable;
        if (EndDate != 0.0)
        {
          if (v6 == 0.0)
          {
            v5 = v4;
          }

          else
          {
            if (EndDate < v6)
            {
              v6 = EndDate;
            }

            if (v6 == EndDate)
            {
              v5 = v4;
            }
          }
        }

        FigCFDictionarySetDouble();
        segPumpGetDurationOfLastMediaSegment(*(v5 + 56));
        FigCFDictionarySetDouble();
        FigCFDictionarySetDouble();
        FigCFDictionarySetDouble();
        *v1 = v12;
      }
    }
  }

  return result;
}

uint64_t segPumpSendNextSessionDataRequest(uint64_t a1, uint64_t *a2, _BYTE *a3)
{
  v123 = *MEMORY[0x1E69E9840];
  value = 0;
  v110 = 0;
  v4 = a2[6];
  if (!v4)
  {
    v7 = 0;
LABEL_97:
    v46 = 0;
    goto LABEL_57;
  }

  v7 = *(a1 + 7992);
  v8 = *(a1 + 8088);
  if (v8)
  {
    CFRelease(v8);
    *(a1 + 8088) = 0;
  }

  v9 = (a1 + 7976);
  *(a1 + 7992) = 0;
  *(a1 + 8064) = 0;
  v10 = *(a1 + 8112);
  if (v10)
  {
    CFRelease(v10);
    *(a1 + 8112) = 0;
  }

  for (i = 0; ; ++i)
  {
    SessionDataSpecifiers = FigMultivariantPlaylistGetSessionDataSpecifiers(a2[6]);
    if (SessionDataSpecifiers)
    {
      SessionDataSpecifiers = CFArrayGetCount(SessionDataSpecifiers);
    }

    if (i >= SessionDataSpecifiers)
    {
      break;
    }

    v13 = FigMultivariantPlaylistGetSessionDataSpecifiers(a2[6]);
    ValueAtIndex = CFArrayGetValueAtIndex(v13, i);
    if (FigSessionDataSpecifierGetURL(ValueAtIndex))
    {
      SessionDataPrivateData = segPumpEnsureAndGetSessionDataPrivateData(ValueAtIndex, v15, v16, v17, v18, v19, v20, v21);
      v23 = SessionDataPrivateData;
      if (SessionDataPrivateData && !*(SessionDataPrivateData + 16))
      {
        v28 = SessionDataPrivateData[4];
        if (v28)
        {
          CFRelease(v28);
          v23[4] = 0;
        }

        segPumpFreeChapterArtworkQueue(v23 + 23);
        *(v23 + 9) = 0;
        v29 = *(a1 + 8112);
        *(a1 + 8112) = ValueAtIndex;
        if (ValueAtIndex)
        {
          CFRetain(ValueAtIndex);
        }

        if (v29)
        {
          CFRelease(v29);
        }

        v23[23] = 0;
        v23[24] = v23 + 23;
        break;
      }
    }

    else if (FigSessionDataSpecifierGetValue(ValueAtIndex))
    {
      segPumpEnsureMetadataArray(a1);
      if (v24)
      {
        goto LABEL_100;
      }

      Identifier = FigSessionDataSpecifierGetIdentifier(ValueAtIndex);
      v26 = FigSessionDataSpecifierGetValue(ValueAtIndex);
      Language = FigSessionDataSpecifierGetLanguage(ValueAtIndex);
      v24 = FigHLSSessionDataCopyMetadataEntry(Identifier, v26, Language, 0, &value);
      if (v24)
      {
        goto LABEL_100;
      }

      CFArrayAppendValue(*(a1 + 7896), value);
      if (value)
      {
        CFRelease(value);
        value = 0;
      }
    }
  }

  v30 = *(a1 + 8112);
  if (!v30)
  {
    LOBYTE(v4) = 0;
    goto LABEL_97;
  }

  if (!FigSessionDataSpecifierGetURL(v30))
  {
    OUTLINED_FUNCTION_120();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v96, v97, v98);
    goto LABEL_100;
  }

  if (!*(a1 + 328))
  {
    goto LABEL_36;
  }

  URL = FigSessionDataSpecifierGetURL(*(a1 + 8112));
  if (URL)
  {
    URL = CFRetain(URL);
  }

  cf[0] = URL;
  v24 = FigCFHTTPCopyURLAndInheritQueyComponentIfNotPresent(*(a1 + 320), cf);
  if (v24)
  {
LABEL_100:
    v46 = v24;
    LOBYTE(v4) = 0;
    goto LABEL_57;
  }

  FigSessionDataSpecifierSetURL(*(a1 + 8112), cf[0]);
  if (cf[0])
  {
    CFRelease(cf[0]);
  }

LABEL_36:
  if (*v9)
  {
    CFRelease(*v9);
    *v9 = 0;
  }

  v32 = FigSessionDataSpecifierGetURL(*(a1 + 8112));
  *(a1 + 7976) = CFRetain(v32);
  UpTimeNanoseconds = FigGetUpTimeNanoseconds();
  *(a1 + 8008) = UpTimeNanoseconds;
  if (!*(a1 + 8040))
  {
    *(a1 + 8000) = UpTimeNanoseconds;
  }

  if (!*(a1 + 296))
  {
    goto LABEL_45;
  }

  v34 = *v9;
  cf[0] = 0;
  URLAndString = segPumpCreateURLAndString(v34, 0, cf);
  v36 = cf[0];
  if (!URLAndString)
  {
    v37 = FigStreamingCacheCopySessionData(*(a1 + 296), cf[0], &v110);
    v36 = cf[0];
    if (!cf[0])
    {
      goto LABEL_44;
    }

    goto LABEL_43;
  }

  v37 = URLAndString;
  if (cf[0])
  {
LABEL_43:
    CFRelease(v36);
  }

LABEL_44:
  if (v37 << 16)
  {
    LOBYTE(v4) = 0;
    v46 = v37;
    goto LABEL_57;
  }

LABEL_45:
  v38 = *(a1 + 9232);
  if (v38)
  {
    v39 = *(*(CMBaseObjectGetVTable() + 16) + 32);
    if (v39)
    {
      v39(v38, 0x1F0B64678, 0x1F0B669B8, 1);
    }
  }

  v40 = v110;
  v41 = *(a1 + 8112);
  if (v110)
  {
    v42 = malloc_type_calloc(1uLL, 0x20uLL, 0x20040DC1BFBCFuLL);
    if (v42)
    {
      v43 = v42;
      v44 = *a1;
      if (*a1)
      {
        v44 = CFRetain(v44);
      }

      *v43 = v44;
      v43[1] = a2;
      v43[2] = CFRetain(v40);
      if (v41)
      {
        v45 = CFRetain(v41);
      }

      else
      {
        v45 = 0;
      }

      v43[3] = v45;
      dispatch_async_f(*(a1 + 72), v43, segPumpDispatchParseSessionDataFromCacheFunc);
      goto LABEL_56;
    }

    OUTLINED_FUNCTION_120();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v96, v97, v98);
    if (!v24)
    {
LABEL_56:
      v46 = 0;
      LOBYTE(v4) = 1;
      goto LABEL_57;
    }

    goto LABEL_100;
  }

  FigSessionDataSpecifierGetURL(v41);
  v48 = OUTLINED_FUNCTION_171_1();
  if (segPumpShouldRequestURLAsHTTPURL(v48, v49))
  {
    if (dword_1EAF16A30)
    {
      OUTLINED_FUNCTION_201_1();
      v68 = OUTLINED_FUNCTION_141_1(qword_1EAF16A28, v61, v62, v63, v64, v65, v66, v67, v96, v97, v98, v99, v100, v101, v102, v103, v105, v106, v107, v108, SBYTE2(v108), SBYTE3(v108), SBYTE4(v108));
      os_log_type_enabled(v68, BYTE3(v108));
      OUTLINED_FUNCTION_101_0();
      if (v60)
      {
        v70 = v69;
      }

      else
      {
        v70 = HIDWORD(v108);
      }

      if (v70)
      {
        if (*(a1 + 8944))
        {
          v71 = *(a1 + 8944);
        }

        else
        {
          v71 = &stru_1F0B1AFB8;
        }

        v72 = *a2;
        v73 = FigSessionDataSpecifierGetURL(*(a1 + 8112));
        v60 = *(a1 + 347) == 0;
        *v111 = 136315906;
        *&v111[4] = "segPumpSendNextSessionDataRequest";
        if (v60)
        {
          v74 = @"[]";
        }

        else
        {
          v74 = v73;
        }

        *v112 = 2114;
        *&v112[2] = v71;
        *&v112[10] = 2048;
        v113 = v72;
        LOWORD(v114) = 2114;
        *(&v114 + 2) = v74;
        OUTLINED_FUNCTION_95_1();
        OUTLINED_FUNCTION_108();
        _os_log_send_and_compose_impl(v75, v76, v77, v78, v79, v68, BYTE3(v108), v80, v111);
      }

      OUTLINED_FUNCTION_7();
      OUTLINED_FUNCTION_449(v81, v82, v83, v84, v85);
    }

    if (!*(a1 + 9816))
    {
      *(a1 + 9816) = FigGetUpTimeNanoseconds();
    }

    v86 = *(a1 + 9232);
    if (v86)
    {
      v87 = *(*(CMBaseObjectGetVTable() + 16) + 32);
      if (v87)
      {
        v87(v86, 0x1F0B64678, 0x1F0B669D8, 1);
      }
    }

    v88 = *(a1 + 7984);
    FigSessionDataSpecifierGetURL(*(a1 + 8112));
    v89 = *a1;
    v117 = 0u;
    v118 = 0u;
    *cf = 0u;
    v116 = 0u;
    v119 = 0x900000000;
    v120 = 0u;
    v121 = 0u;
    v122 = 0;
    v104 = v89;
    v90 = OUTLINED_FUNCTION_178();
    segPumpCreateHTTPRequest(v90, v91, 0, v88, v7, v92, v93, v94, 0, 0x100000008, cf, 0, 0, 0, segPumpSessionDataReadCallback, v104, 0, v9, v107, v108, value, v110, *v111, *&v111[8], *v112, *&v112[4], v113, v114, *(&v114 + 1), cf[0], cf[1], v116, *(&v116 + 1));
    v46 = v95;
    v60 = v95 == 0;
  }

  else
  {
    FigSessionDataSpecifierGetURL(*(a1 + 8112));
    OUTLINED_FUNCTION_281_0();
    OUTLINED_FUNCTION_39_1();
    OUTLINED_FUNCTION_394_1();
    segPumpCustomURLLoaderGetURLGuts(v50, v51, v52, v53, v54, v55, v56, 0, v96, v97, v98, v99, v100, v101, v102, v103, v105, v106, v107, v108, value, v110, *v111);
    v46 = v57;
    if (!*(a1 + 9824))
    {
      *(a1 + 9824) = FigGetUpTimeNanoseconds();
    }

    v58 = *(a1 + 9232);
    if (v58)
    {
      v59 = *(*(CMBaseObjectGetVTable() + 16) + 32);
      if (v59)
      {
        v59(v58, 0x1F0B64678, 0x1F0B669F8, 1);
      }
    }

    v60 = v46 == 0;
  }

  LOBYTE(v4) = v60;
LABEL_57:
  if (a3)
  {
    *a3 = v4;
  }

  if (value)
  {
    CFRelease(value);
  }

  if (v7)
  {
    CFRelease(v7);
  }

  if (v110)
  {
    CFRelease(v110);
  }

  return v46;
}

double segPumpEnsureMetadataArray(uint64_t a1)
{
  if (!*(a1 + 7896))
  {
    AllocatorForMedia = FigGetAllocatorForMedia();
    Mutable = CFArrayCreateMutable(AllocatorForMedia, 0, MEMORY[0x1E695E9C0]);
    *(a1 + 7896) = Mutable;
    if (!Mutable)
    {
      OUTLINED_FUNCTION_376();

      return FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
    }
  }

  return result;
}

uint64_t FigReportingAgentStatsAddToCountValue(uint64_t result)
{
  if (result)
  {
    OUTLINED_FUNCTION_113_1();
    VTable = CMBaseObjectGetVTable();
    v2 = *(VTable + 16);
    result = VTable + 16;
    if (*(v2 + 32))
    {
      v3 = OUTLINED_FUNCTION_64_0();

      return v4(v3);
    }
  }

  return result;
}

void segPumpCreateHTTPRequest(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, const __CFArray *a23, int a24, unsigned int a25, const void *a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33)
{
  OUTLINED_FUNCTION_193();
  v144[15] = *MEMORY[0x1E69E9840];
  v141 = 0;
  cf = v41;
  v140 = 0;
  v43 = (a25 & 1) == 0 || v36 == 0;
  v139 = 0;
  if (v33[335])
  {
    OUTLINED_FUNCTION_374();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
    goto LABEL_65;
  }

  v44 = v39;
  v45 = v38;
  v46 = v36;
  v47 = v35;
  v48 = v40;
  v49 = v34;
  v50 = v33;
  if (segPumpCreateURLWithQueryParams(v33, v37, a23, &v139))
  {
    goto LABEL_65;
  }

  if (!v50[48])
  {
    v51 = cf;
    if (!cf)
    {
      goto LABEL_15;
    }

LABEL_13:
    if (!v43 || v51 == *(v50 + 5))
    {
      v55 = 1;
LABEL_23:
      if (segPumpAmendHTTPRequestFlags(v50, &a25))
      {
        if ((v55 & 1) == 0)
        {
LABEL_64:
          CFRelease(cf);
          goto LABEL_65;
        }
      }

      else
      {
        v133 = v49;
        HIDWORD(v135) = v55;
        v56 = a33;
        v57 = a26;
        v58 = OUTLINED_FUNCTION_770();
        v134 = segPumpCopyHTTPRequestCreationsOptionsAndSetNWActivityAndStuff(v58, v59, v47, v60, v61, v48);
        segPumpEnsureCMCDHeaderVendor(v50, v62, v63, v64, v65, v66, v67, v68, v109, v111, v114, v116, v118, v120, v122, v124, v126, v128);
        if (v69)
        {
          v70 = cf;
          v71 = *(v50 + 1222);
          v72 = *(*(CMBaseObjectGetVTable() + 8) + 56);
          if (v72)
          {
            v72(v70, 0x1F0B5F698, v71);
          }
        }

        v73 = cf;
        v136 = v139;
        v74 = a25;
        memcpy(v144, v57, 0x70uLL);
        v75 = *(*(CMBaseObjectGetVTable() + 16) + 8);
        if (v75)
        {
          v132 = v47;
          v129 = v46;
          v131 = v45;
          HIDWORD(v130) = v74;
          memcpy(__dst, v144, 0x70uLL);
          v123 = &v141;
          v125 = &v140;
          v119 = a30;
          v121 = a31;
          v115 = a28;
          v117 = a29;
          v110 = __dst;
          v112 = a27;
          v76 = v134;
          if (v75(v73, v49, v46, v136, 0, v45, v134, v74))
          {
            v77 = 0;
          }

          else
          {
            if (!v50[336])
            {
              FigNetworkUrgencyMonitorAddHTTPRequest(*(v50 + 1214));
            }

            v77 = 1;
          }
        }

        else
        {
          v77 = 0;
          v76 = v134;
        }

        v78 = *(v56 + 8);
        v79 = cf;
        *(v56 + 8) = cf;
        if (v79)
        {
          CFRetain(v79);
        }

        if (v78)
        {
          CFRelease(v78);
        }

        v80 = *(v56 + 16);
        if (v80)
        {
          CFRelease(v80);
        }

        *(v56 + 16) = v141;
        *(v56 + 80) = v140;
        if (dword_1EAF16A30)
        {
          v81 = OUTLINED_FUNCTION_384_1();
          v89 = OUTLINED_FUNCTION_348_1(v81, v82, v83, v84, v85, v86, v87, v88, v110, v112, v115, v117, v119, v121, v123, v125, v127, v129, v130, v131, v132, v133, v134, v135, v136, *v137, v137[2], 0, 0);
          v90 = os_log_type_enabled(v89, type);
          if (OUTLINED_FUNCTION_28_1(v90))
          {
            v91 = *(v50 + 1118);
            if (!v91)
            {
              v91 = &stru_1F0B1AFB8;
            }

            if (v47)
            {
              v92 = *v47;
            }

            else
            {
              v92 = -1;
            }

            LODWORD(v144[0]) = 136316418;
            *(v144 + 4) = "segPumpCreateHTTPRequest";
            WORD2(v144[1]) = 2114;
            *(&v144[1] + 6) = v91;
            HIWORD(v144[2]) = 2048;
            v144[3] = v92;
            LOWORD(v144[4]) = 2048;
            *(&v144[4] + 2) = v50;
            WORD1(v144[5]) = 2048;
            *(&v144[5] + 4) = v141;
            WORD2(v144[6]) = 2048;
            *(&v144[6] + 6) = cf;
            LODWORD(v113) = 62;
            OUTLINED_FUNCTION_108();
            _os_log_send_and_compose_impl(v93, v94, v95, v96, v97, v89, type, v98, v144, v113);
          }

          OUTLINED_FUNCTION_7();
          OUTLINED_FUNCTION_417(v99, v100, v101, v102, v103);
        }

        v104 = *v56;
        *v56 = v136;
        if (v136)
        {
          CFRetain(v136);
        }

        if (v104)
        {
          CFRelease(v104);
        }

        if (v77)
        {
          if ((a25 & 0x400) != 0)
          {
            __dst[0] = segPumpGetCurrentRTT(v50);
            v105 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt64Type, __dst);
            if (v105)
            {
              v106 = v105;
              v107 = v141;
              v108 = *(*(CMBaseObjectGetVTable() + 8) + 56);
              if (v108)
              {
                v108(v107, @"FHRP_DefaultLatency", v106);
              }

              CFRelease(v106);
            }
          }
        }

        if (v76)
        {
          CFRelease(v76);
        }

        if ((v135 & 0x100000000) == 0)
        {
          goto LABEL_64;
        }
      }

      goto LABEL_65;
    }

    goto LABEL_15;
  }

  v51 = *(v50 + 5);
  cf = v51;
  if (v51)
  {
    goto LABEL_13;
  }

LABEL_15:
  v52 = *(v50 + 4);
  if (!v52)
  {
    OUTLINED_FUNCTION_374();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
    goto LABEL_65;
  }

  v53 = *(v50 + 8);
  v54 = *(*(CMBaseObjectGetVTable() + 16) + 40);
  if (v54 && !v54(v52, v53, v44, &cf))
  {
    if (!cf)
    {
      OUTLINED_FUNCTION_374();
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
      goto LABEL_65;
    }

    if (v50[48] && !*(v50 + 5))
    {
      v55 = 0;
      *(v50 + 5) = CFRetain(cf);
    }

    else
    {
      v55 = 0;
    }

    goto LABEL_23;
  }

LABEL_65:
  if (v139)
  {
    CFRelease(v139);
  }

  OUTLINED_FUNCTION_191();
}

void segPumpSessionDataReadCallback()
{
  OUTLINED_FUNCTION_629();
  v37 = v3;
  v38 = v4;
  v6 = v5;
  OUTLINED_FUNCTION_308_1();
  v35 = 0;
  cf = 0;
  v34 = 0;
  FigRetainProxyRetain();
  OUTLINED_FUNCTION_198_1();
  segPumpLockAndCopyPumpFromRetainProxy();
  if (!v14)
  {
    if (*(v35 + 7960))
    {
      if (!*(v35 + 8112))
      {
        goto LABEL_10;
      }

      v15 = *(v35 + 392);
      if (v6)
      {
        OUTLINED_FUNCTION_197();
        segPumpHandleSessionDataNetworkError();
        v27 = v26;
        OUTLINED_FUNCTION_335_0();
        goto LABEL_25;
      }

      if (v2)
      {
        if (!*(v35 + 8088))
        {
          FigGetAllocatorForMedia();
          OUTLINED_FUNCTION_296();
          Empty = CMBlockBufferCreateEmpty(v16, v17, v18, v19);
          if (Empty)
          {
            goto LABEL_29;
          }
        }

        OUTLINED_FUNCTION_310();
        Empty = CMBlockBufferAppendBufferReference(v21, v22, v23, v24, v25);
        if (Empty)
        {
          goto LABEL_29;
        }
      }

      if ((v1 & 2) == 0)
      {
        goto LABEL_10;
      }

      *(segPumpEnsureAndGetSessionDataPrivateData(*(v35 + 8112), v7, v8, v9, v10, v11, v12, v13) + 16) = 1;
      v29 = v35;
      *(v35 + 8040) = 0;
      if (*(v29 + 8048))
      {
        CFRelease(*(v29 + 8048));
        v29 = v35;
        *(v35 + 8048) = 0;
      }

      Empty = segPumpSetWiFiStatsOnNetworkPredictor(v29, v29 + 7976);
      if (Empty)
      {
LABEL_29:
        v27 = Empty;
        goto LABEL_30;
      }

      segPumpParseSessionDataFromConnection();
      v27 = segPumpSendNextSessionDataRequest(v35, v15, &v34);
      if (v34)
      {
        LOBYTE(v28) = 1;
        goto LABEL_25;
      }

      segPumpResetConnection(v35, v35 + 7976);
      if (*(v35 + 9816) >= 1 && FigGetUpTimeNanoseconds() - *(v35 + 9816) >= 1)
      {
        v30 = *(v35 + 9232);
        if (v30)
        {
          v28 = *(*(CMBaseObjectGetVTable() + 16) + 56);
          if (!v28)
          {
            goto LABEL_25;
          }

          OUTLINED_FUNCTION_165_1();
          v31(v30);
        }
      }

      LOBYTE(v28) = 0;
LABEL_25:
      if (!v27)
      {
        if (v28)
        {
          goto LABEL_10;
        }

        goto LABEL_27;
      }

LABEL_30:
      segPumpSendEndCallbackForAllActiveStreamsWithOSStatus(v0, v27);
LABEL_27:
      dispatch_group_leave(*(v35 + 7960));
      goto LABEL_10;
    }

    OUTLINED_FUNCTION_239();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v32, v33, v35);
  }

LABEL_10:
  segPumpUnlockAndSendAllPendingNotifications(v0);
  if (cf)
  {
    CFRelease(cf);
  }

  FigRetainProxyRelease();
  OUTLINED_FUNCTION_345_1();
}

void segPumpDispatchParseSessionDataFromCacheFunc(const void **a1)
{
  v2 = *a1;
  v3 = a1[1];
  v5 = a1[2];
  v4 = a1[3];
  v23 = 0;
  v21 = 0;
  v22 = 0;
  cf = 0;
  segPumpLockAndCopyPumpFromRetainProxy();
  if (!v6)
  {
    if (MEMORY[0x1FB0])
    {
      if (!FigCFEqual())
      {
        goto LABEL_11;
      }

      *(segPumpEnsureAndGetSessionDataPrivateData(v4, v7, v8, v9, v10, v11, v12, v13) + 16) = 1;
      FigGetAllocatorForMedia();
      OUTLINED_FUNCTION_496();
      if (!FigCreateCFDataWithBlockBuffer() && !segPumpParseSessionDataBuffer(0, 0, 0, v14, v15, v16, v17, v18))
      {
        v19 = segPumpSendNextSessionDataRequest(0, v3, &v23);
        if (v23)
        {
          if (!v19)
          {
            goto LABEL_11;
          }
        }

        else
        {
          segPumpResetConnection(0, 7976);
        }
      }
    }

    else
    {
      OUTLINED_FUNCTION_429();
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d", 0, 0, 0);
    }

    dispatch_group_leave(*(v21 + 7960));
  }

LABEL_11:
  segPumpUnlockAndSendAllPendingNotifications(v2);
  if (cf)
  {
    CFRelease(cf);
  }

  if (v22)
  {
    CFRelease(v22);
  }

  if (v5)
  {
    CFRelease(v5);
  }

  if (v2)
  {
    CFRelease(v2);
  }

  if (v4)
  {
    CFRelease(v4);
  }

  free(a1);
  OUTLINED_FUNCTION_860();
}

uint64_t segPumpParseSessionDataBuffer(uint64_t a1, const void *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = a1;
  v11 = *(a1 + 8112);
  SessionDataPrivateData = segPumpEnsureAndGetSessionDataPrivateData(v11, a2, a3, a4, a5, a6, a7, a8);
  theArray = 0;
  theDict = 0;
  cf = 0;
  v126 = 0;
  if (FigSessionDataSpecifierGetFormatType(v11) != 2)
  {
    if (FigSessionDataSpecifierGetFormatType(v11) == 1)
    {
      goto LABEL_5;
    }

    if (FigSessionDataSpecifierGetFormatType(v11) == 3 || FigSessionDataSpecifierIsVenueDescriptionMetadata(v11))
    {
      if (a2)
      {
        v35 = CFRetain(a2);
        goto LABEL_14;
      }
    }

    else if (!FigSessionDataSpecifierGetFormatType(v11))
    {
      FigGetAllocatorForMedia();
      OUTLINED_FUNCTION_197();
      v35 = CFPropertyListCreateWithData(v94, v95, v96, v97, v98);
      v126 = v35;
      if (!v35)
      {
LABEL_5:
        v26 = FigCFHTTPCreatePropertyListFromJSON(a2, &v126);
        v25 = v126;
        if (v26)
        {
          goto LABEL_6;
        }

        goto LABEL_17;
      }

LABEL_14:
      v25 = v35;
      goto LABEL_17;
    }

    v25 = 0;
    goto LABEL_17;
  }

  FigGetAllocatorForMedia();
  OUTLINED_FUNCTION_197();
  v25 = CFPropertyListCreateWithData(v13, v14, v15, v16, v17);
  if (!v25)
  {
    v26 = -12642;
LABEL_6:
    v27 = v26;
    FigSessionDataSpecifierGetURL(v11);
    OUTLINED_FUNCTION_330_1();
    segPumpRTCReportingUpdateAndIssueErrorEvent();
    FigGetAllocatorForMedia();
    FigSessionDataSpecifierGetURL(v11);
    v28 = OUTLINED_FUNCTION_173_0();
    Entry = FigErrorLogCreateEntry(v28, v29, v30, v31, v27, @"CoreMediaErrorDomain", @"Failed to parse HLS Session Data", 0, 0, 0, 4, 3, a3);
    if (Entry)
    {
      v108 = Entry;
      segPumpAppendErrorLogDictionary(v10, Entry);
      CFRelease(v108);
    }

    OUTLINED_FUNCTION_62_0();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", valuea, v115, v117);
    goto LABEL_9;
  }

LABEL_17:
  if (!*(v10 + 9808))
  {
    *(v10 + 9808) = FigGetUpTimeNanoseconds();
  }

  v36 = *(v10 + 392);
  v37 = *(v36 + 48);
  if (v37)
  {
    for (i = 0; ; ++i)
    {
      SessionDataSpecifiers = FigMultivariantPlaylistGetSessionDataSpecifiers(v37);
      if (SessionDataSpecifiers)
      {
        SessionDataSpecifiers = CFArrayGetCount(SessionDataSpecifiers);
      }

      if (i >= SessionDataSpecifiers)
      {
        break;
      }

      v40 = FigMultivariantPlaylistGetSessionDataSpecifiers(*(v36 + 48));
      ValueAtIndex = CFArrayGetValueAtIndex(v40, i);
      v49 = segPumpEnsureAndGetSessionDataPrivateData(ValueAtIndex, v42, v43, v44, v45, v46, v47, v48);
      if (FigSessionDataSpecifierIsChapterMetadata(ValueAtIndex) && v49[16] && *(v49 + 23))
      {
        goto LABEL_36;
      }

      v37 = *(v36 + 48);
    }
  }

  v50 = segPumpEnsureAndGetSessionDataPrivateData(*(v10 + 8112), v18, v19, v20, v21, v22, v23, v24);
  if (!v50[4])
  {
    v51 = v50;
    AllocatorForMedia = FigGetAllocatorForMedia();
    Mutable = CFArrayCreateMutable(AllocatorForMedia, 0, MEMORY[0x1E695E9C0]);
    v51[4] = Mutable;
    if (!Mutable)
    {
      OUTLINED_FUNCTION_62_0();
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d", value, v114, v116);
      if (v33)
      {
        goto LABEL_9;
      }
    }
  }

  Identifier = FigSessionDataSpecifierGetIdentifier(v11);
  v55 = *(v10 + 352);
  URL = FigSessionDataSpecifierGetURL(*(v10 + 8112));
  v34 = FigHLSSessionDataCopyChapterMetadataAndCopyErrorLogEntry(Identifier, v25, URL, a3, &theArray, &theDict, v55);
  if (theDict && (v57 = FigGetAllocatorForMedia(), (MutableCopy = CFDictionaryCreateMutableCopy(v57, 0, theDict)) != 0))
  {
    v92 = MutableCopy;
    v93 = FigGetAllocatorForMedia();
    FigErrorLogSetSeverity(v93, v92, 3);
    segPumpAppendErrorLogDictionary(v10, v92);
    CFRelease(v92);
    if (v34)
    {
      goto LABEL_99;
    }
  }

  else if (v34)
  {
    goto LABEL_99;
  }

  if (theArray)
  {
    CFArrayGetCount(theArray);
  }

  v59 = OUTLINED_FUNCTION_298();
  v127.location = 0;
  CFArrayAppendArray(v59, v60, v127);
LABEL_36:
  v61 = *(SessionDataPrivateData + 4);
  if (!v61 || CFArrayGetCount(v61) < 1)
  {
    if (FigSessionDataSpecifierIsLocalizedRenditionNameMetadata(*(v10 + 8112)))
    {
      v91 = *(v10 + 7928);
      *(v10 + 7928) = v25;
      if (!v25)
      {
        goto LABEL_63;
      }
    }

    else
    {
      if (!FigSessionDataSpecifierIsCustomMediaSelectionSchemeMetadata(*(v10 + 8112)))
      {
        segPumpEnsureMetadataArray(v10);
        if (v33 || (v105 = FigSessionDataSpecifierGetIdentifier(v11), Language = FigSessionDataSpecifierGetLanguage(*(v10 + 8112)), v107 = FigSessionDataSpecifierGetURL(*(v10 + 8112)), v33 = FigHLSSessionDataCopyMetadataEntry(v105, v25, Language, v107, &cf), v33))
        {
LABEL_9:
          v34 = v33;
          goto LABEL_99;
        }

        CFArrayAppendValue(*(v10 + 7896), cf);
        goto LABEL_90;
      }

      v91 = *(v10 + 7944);
      *(v10 + 7944) = v25;
      if (!v25)
      {
        goto LABEL_63;
      }
    }

    CFRetain(v25);
LABEL_63:
    if (v91)
    {
      CFRelease(v91);
    }

    goto LABEL_90;
  }

  if (!*(v10 + 328))
  {
    goto LABEL_118;
  }

  v120 = SessionDataPrivateData;
  v121 = v10;
  v118 = segPumpEnsureAndGetSessionDataPrivateData(v11, v62, v63, v64, v65, v66, v67, v68);
  v69 = *(v118 + 4);
  v126 = 0;
  v70 = FigGetAllocatorForMedia();
  v71 = CFArrayCreateMutable(v70, 0, MEMORY[0x1E695E9C0]);
  if (v69)
  {
    v119 = v25;
    if (CFArrayGetCount(v69) < 1)
    {
LABEL_54:
      v90 = *(v118 + 4);
      *(v118 + 4) = v71;
      if (v71)
      {
        CFRetain(v71);
      }

      if (v90)
      {
        CFRelease(v90);
      }

      v85 = 0;
      v80 = 0;
      v78 = 0;
      v34 = 0;
LABEL_59:
      v25 = v119;
    }

    else
    {
      v72 = 0;
      v122 = v71;
      while (1)
      {
        v73 = OUTLINED_FUNCTION_267_0();
        v75 = CFArrayGetValueAtIndex(v73, v74);
        v76 = CFDictionaryGetValue(v75, @"ChapterMetadataItems");
        v77 = FigGetAllocatorForMedia();
        v78 = CFDictionaryCreateMutableCopy(v77, 0, v75);
        if (!v78)
        {
          OUTLINED_FUNCTION_62_0();
          FigSignalErrorAtGM("%s signalled err=%d at <>:%d", value, v114, v116);
          v34 = v109;
          v85 = 0;
          v80 = 0;
          goto LABEL_59;
        }

        CFArrayAppendValue(v71, v78);
        v79 = FigGetAllocatorForMedia();
        v80 = CFArrayCreateMutable(v79, 0, MEMORY[0x1E695E9C0]);
        if (!v80)
        {
          OUTLINED_FUNCTION_62_0();
          FigSignalErrorAtGM("%s signalled err=%d at <>:%d", value, v114, v116);
          v34 = v110;
          v85 = 0;
          goto LABEL_59;
        }

        CFDictionarySetValue(v78, @"ChapterMetadataItems", v80);
        if (CFArrayGetCount(v76) >= 1)
        {
          break;
        }

LABEL_53:
        CFRelease(v80);
        CFRelease(v78);
        ++v72;
        v71 = v122;
        if (v72 >= CFArrayGetCount(v69))
        {
          goto LABEL_54;
        }
      }

      v81 = 0;
      while (1)
      {
        v82 = CFArrayGetValueAtIndex(v76, v81);
        v83 = CFDictionaryGetValue(v82, @"URL");
        v84 = FigGetAllocatorForMedia();
        v85 = CFDictionaryCreateMutableCopy(v84, 0, v82);
        if (!v85)
        {
          break;
        }

        CFArrayAppendValue(v80, v85);
        if (v83)
        {
          v86 = FigGetAllocatorForMedia();
          v126 = CFURLCreateWithString(v86, v83, 0);
          if (!v126)
          {
            break;
          }

          v87 = FigSessionDataSpecifierGetURL(v11);
          v88 = FigCFHTTPCopyURLAndInheritQueyComponentIfNotPresent(v87, &v126);
          if (v88)
          {
            goto LABEL_74;
          }

          v89 = CFURLGetString(v126);
          CFDictionarySetValue(v85, @"URL", v89);
          if (v126)
          {
            CFRelease(v126);
            v126 = 0;
          }
        }

        CFRelease(v85);
        if (++v81 >= CFArrayGetCount(v76))
        {
          goto LABEL_53;
        }
      }

      OUTLINED_FUNCTION_62_0();
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
LABEL_74:
      v34 = v88;
      v25 = v119;
      v71 = v122;
    }
  }

  else
  {
    OUTLINED_FUNCTION_62_0();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", value, v114, v116);
    v34 = v111;
    v85 = 0;
    v80 = 0;
    v78 = 0;
  }

  if (v126)
  {
    CFRelease(v126);
  }

  if (v71)
  {
    CFRelease(v71);
  }

  if (v78)
  {
    CFRelease(v78);
  }

  if (v80)
  {
    CFRelease(v80);
  }

  v10 = v121;
  if (v85)
  {
    CFRelease(v85);
  }

  SessionDataPrivateData = v120;
  if (!v34)
  {
LABEL_118:
    if (!*(v10 + 7912))
    {
      v99 = *(SessionDataPrivateData + 4);
      if (v99)
      {
        v99 = CFRetain(v99);
      }

      *(v10 + 7912) = v99;
    }

LABEL_90:
    if (*(v10 + 9808) >= 1 && FigGetUpTimeNanoseconds() - *(v10 + 9808) >= 1 && *(v10 + 9232))
    {
      if (*(*(CMBaseObjectGetVTable() + 16) + 56))
      {
        OUTLINED_FUNCTION_165_1();
        v100 = OUTLINED_FUNCTION_177();
        v101(v100);
      }

      if (*(v10 + 9232) && *(*(CMBaseObjectGetVTable() + 16) + 32))
      {
        v102 = OUTLINED_FUNCTION_177();
        v103(v102);
      }
    }

    v34 = 0;
  }

LABEL_99:
  if (cf)
  {
    CFRelease(cf);
  }

  if (theArray)
  {
    CFRelease(theArray);
  }

  if (theDict)
  {
    CFRelease(theDict);
  }

  if (v25)
  {
    CFRelease(v25);
  }

  return v34;
}

void segPumpRTCReportingUpdateAndIssueErrorEvent()
{
  OUTLINED_FUNCTION_629();
  v28 = v0;
  v29 = v1;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = FigCFHTTPCreateURLString(v8);
  v27 = 0;
  if (*(v7 + 9232))
  {
    if (*(*(CMBaseObjectGetVTable() + 16) + 56))
    {
      v10 = OUTLINED_FUNCTION_163_1();
      v11(v10);
    }

    v12 = *(v7 + 9232);
    if (v12)
    {
      v13 = *(*(CMBaseObjectGetVTable() + 16) + 48);
      if (v13)
      {
        v13(v12, 0x1F0B64538, 0x1F0B657F8, v3, 0);
      }

      v14 = *(v7 + 9232);
      if (v14)
      {
        v15 = *(*(CMBaseObjectGetVTable() + 16) + 48);
        if (v15)
        {
          v15(v14, 0x1F0B64538, 0x1F0B65818, v5, 0);
        }

        if (*(v7 + 9232) && *(*(CMBaseObjectGetVTable() + 16) + 56))
        {
          v16 = OUTLINED_FUNCTION_262_1();
          v17(v16);
        }
      }
    }
  }

  if (!segPumpIsConnectedWithHighSpeedHighPower(v7, &v27))
  {
    if (!*(v7 + 9232))
    {
      goto LABEL_17;
    }

    if (*(*(CMBaseObjectGetVTable() + 16) + 56))
    {
      v25 = OUTLINED_FUNCTION_293();
      v26(v25);
    }
  }

  if (*(v7 + 9232) && *(*(CMBaseObjectGetVTable() + 16) + 56))
  {
    v18 = OUTLINED_FUNCTION_293();
    v19(v18);
  }

LABEL_17:
  if (v9)
  {
    if (!*(v7 + 9232))
    {
      goto LABEL_25;
    }

    if (*(*(CMBaseObjectGetVTable() + 16) + 48))
    {
      OUTLINED_FUNCTION_104_0();
      OUTLINED_FUNCTION_606();
      v20();
    }
  }

  if (*(v7 + 9232) && *(*(CMBaseObjectGetVTable() + 16) + 8))
  {
    v21 = OUTLINED_FUNCTION_171();
    v22(v21);
  }

  if (!v9)
  {
    OUTLINED_FUNCTION_320();
    return;
  }

LABEL_25:
  OUTLINED_FUNCTION_320();

  CFRelease(v23);
}

void segPumpAppendErrorLogDictionary(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    OUTLINED_FUNCTION_369();
    v5 = *(v4 + 8856);
    if (v5 || (v5 = CFArrayCreateMutable(v2[7], 64, MEMORY[0x1E695E9C0]), (v2[1107] = v5) != 0))
    {
      if (!v2[1148])
      {
        Mutable = CFArrayCreateMutable(v2[7], 0, MEMORY[0x1E695E9C0]);
        v2[1148] = Mutable;
        if (!Mutable)
        {
          return;
        }

        v5 = v2[1107];
      }

      if (CFArrayGetCount(v5) >= 65)
      {
        CFArrayRemoveValueAtIndex(v2[1107], 0);
      }

      CFArrayAppendValue(v2[1107], v3);
      CFArrayAppendValue(v2[1148], v3);
      AllocatorForMedia = FigGetAllocatorForMedia();
      v8 = CFDictionaryCreate(AllocatorForMedia, kFigBytePumpErrorLogNotificationKey_ErrorLogs, v2 + 1148, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      if (v8)
      {
        v9 = v8;
        v10 = OUTLINED_FUNCTION_236();
        segPumpReadyNotification(v10, v11, v12);

        CFRelease(v9);
      }
    }
  }
}

void segPumpHandleSessionDataNetworkError()
{
  OUTLINED_FUNCTION_218_1();
  v63 = v0;
  v64 = v1;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v11 = *(DerivedStorage + 7992);
  *v60 = 0;
  SessionDataPrivateData = segPumpEnsureAndGetSessionDataPrivateData(*(DerivedStorage + 8112), v12, v13, v14, v15, v16, v17, v18);
  cf = 0;
  if (v3)
  {
    *v3 = 0;
  }

  ++*(DerivedStorage + 8040);
  if (FigStreamingNetworkErrorCreateErrorFromHTTPRequestIfAvailable(v11, v9, v7, v5, &cf))
  {
    goto LABEL_60;
  }

  v20 = *(DerivedStorage + 8048);
  v21 = cf;
  *(DerivedStorage + 8048) = cf;
  if (v21)
  {
    CFRetain(v21);
  }

  if (v20)
  {
    CFRelease(v20);
  }

  if (FigSessionDataSpecifierIsChapterMetadata(*(DerivedStorage + 8112)))
  {
    if (!*(DerivedStorage + 7920))
    {
      v23 = *(DerivedStorage + 8048);
      if (v23)
      {
        v23 = CFRetain(v23);
      }

      *(DerivedStorage + 7920) = v23;
    }
  }

  else if (FigSessionDataSpecifierIsLocalizedRenditionNameMetadata(*(DerivedStorage + 8112)))
  {
    if (!*(DerivedStorage + 7936))
    {
      v24 = *(DerivedStorage + 8048);
      if (v24)
      {
        v24 = CFRetain(v24);
      }

      *(DerivedStorage + 7936) = v24;
    }
  }

  else if (FigSessionDataSpecifierIsCustomMediaSelectionSchemeMetadata(*(DerivedStorage + 8112)))
  {
    if (!*(DerivedStorage + 7952))
    {
      v25 = *(DerivedStorage + 8048);
      if (v25)
      {
        v25 = CFRetain(v25);
      }

      *(DerivedStorage + 7952) = v25;
    }
  }

  else if (!*(DerivedStorage + 7904))
  {
    v22 = *(DerivedStorage + 8048);
    if (v22)
    {
      v22 = CFRetain(v22);
    }

    *(DerivedStorage + 7904) = v22;
  }

  v26 = cf;
  v27 = *(DerivedStorage + 7992);
  v62[0] = 0;
  CFErrorGetCode(cf);
  CFErrorGetDomain(v26);
  v28 = CFErrorCopyUserInfo(v26);
  v61 = 0;
  CommonActionForNetworkError = segPumpGetCommonActionForNetworkError();
  if (CommonActionForNetworkError)
  {
    goto LABEL_64;
  }

  v30 = v62[0];
  if (v27 || v62[0] != 1)
  {
    goto LABEL_33;
  }

  CommonActionForNetworkError = FigCFHTTPCreateCFErrorFromHTTPStatusCode(-12938, &v61);
  if (CommonActionForNetworkError || (CommonActionForNetworkError = segPumpGetCommonActionForNetworkError()) != 0)
  {
LABEL_64:
    v31 = CommonActionForNetworkError;
    v30 = 0;
    goto LABEL_40;
  }

  v30 = v62[0];
LABEL_33:
  if ((v30 & 0xFFFFFFFFFFFFFFFDLL) == 1)
  {
    if (v30 == 3)
    {
      v31 = 0;
      if (*(DerivedStorage + 8361))
      {
        v30 = 3;
      }

      else
      {
        v30 = 6;
        v62[0] = 6;
      }
    }

    else
    {
      v31 = 0;
    }
  }

  else
  {
    v30 = 0;
    v31 = 0;
    v62[0] = 0;
  }

LABEL_40:
  if (v61)
  {
    CFRelease(v61);
  }

  if (v28)
  {
    CFRelease(v28);
  }

  if (!v31)
  {
    if (v30 == 1)
    {
      segPumpResetConnectionByPreservingConnectionStats(DerivedStorage, DerivedStorage + 7976);
      segPumpEnsureAndGetSessionDataPrivateData(*(DerivedStorage + 8112), v32, v33, v34, v35, v36, v37, v38);
      FigSessionDataSpecifierGetURL(*(DerivedStorage + 8112));
      OUTLINED_FUNCTION_281_0();
      OUTLINED_FUNCTION_39_1();
      OUTLINED_FUNCTION_394_1();
      segPumpCustomURLLoaderGetURLGuts(v39, v40, v41, v42, v43, v44, v45, 0, v55, v56, v57, v58, cf, *v60, v61, v62[0], v62[1], v62[2], v62[3], v62[4], v62[5], v62[6], v62[7]);
      if (!v46)
      {
        v47 = OUTLINED_FUNCTION_171();
        segPumpAppendErrorLogEntryWithCFError(v47, v48, v49, v50, 4, 3);
        if (v3)
        {
          v51 = 1;
LABEL_59:
          *v3 = v51;
        }
      }
    }

    else
    {
      if (v30 == 3)
      {
        if (*(DerivedStorage + 8040) > 2u || *(DerivedStorage + 8624) && (v52 = *(DerivedStorage + 8632)) != 0 && !FigNetworkPathInformationIsHostReachable(v52, 1))
        {
          v30 = 0;
        }

        else
        {
          v30 = 3;
        }
      }

      SessionDataPrivateData[16] = 0;
      v53 = OUTLINED_FUNCTION_104_0();
      v54 = segPumpHandleCommonNetworkError(v53);
      if (v3 && !v54)
      {
        v51 = v30 == 3;
        goto LABEL_59;
      }
    }
  }

LABEL_60:
  if (cf)
  {
    CFRelease(cf);
  }

  OUTLINED_FUNCTION_209_1();
}

void segPumpParseSessionDataFromConnection()
{
  OUTLINED_FUNCTION_369();
  cf[16] = *MEMORY[0x1E69E9840];
  if (CMBlockBufferGetDataLength(*(v2 + 8088)) > 1)
  {
    if (!v0[37])
    {
LABEL_8:
      FigGetAllocatorForMedia();
      OUTLINED_FUNCTION_496();
      if (!FigCreateCFDataWithBlockBuffer())
      {
        OUTLINED_FUNCTION_239();
        FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v37, v38, v39);
      }

      return;
    }

    URL = FigSessionDataSpecifierGetURL(v0[1014]);
    v4 = v0[1011];
    cf[0] = 0;
    if (v0[37])
    {
      URLAndString = segPumpCreateURLAndString(URL, 0, cf);
      v6 = cf[0];
      if (!URLAndString)
      {
        v7 = FigStreamingCacheSetSessionData(v0[37], cf[0], v4);
        v6 = cf[0];
        if (!cf[0])
        {
          goto LABEL_7;
        }

        goto LABEL_6;
      }

      v7 = URLAndString;
      if (cf[0])
      {
LABEL_6:
        CFRelease(v6);
      }
    }

    else
    {
      OUTLINED_FUNCTION_239();
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v37, v38, v39);
      v7 = v36;
    }

LABEL_7:
    if (v7)
    {
      return;
    }

    goto LABEL_8;
  }

  OUTLINED_FUNCTION_10_1();
  os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
  v16 = OUTLINED_FUNCTION_116_0(os_log_and_send_and_compose_flags_and_os_log_type, v9, v10, v11, v12, v13, v14, v15, v37, v38, v39, v40, SBYTE2(v40), BYTE3(v40), SHIDWORD(v40));
  if (OUTLINED_FUNCTION_109_0(v16))
  {
    OUTLINED_FUNCTION_264_0();
    OUTLINED_FUNCTION_168_1();
    OUTLINED_FUNCTION_32();
    OUTLINED_FUNCTION_38();
    _os_log_send_and_compose_impl(v17, v18, v19, v20, v21, v22, v1, v23);
    OUTLINED_FUNCTION_329_0();
  }

  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_524(v24, v25, v26, v27, v28);
  v29 = OUTLINED_FUNCTION_298();
  OUTLINED_FUNCTION_214_1(v29, v30, v31, -12886, v32, v33, v34, v35, 0x100000004);
  segPumpResetConnection(v0, (v0 + 997));
}

void segPumpResetConnectionByPreservingConnectionStats(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    OUTLINED_FUNCTION_187();
    v4 = *(v3 + 24);
    v5 = *(v3 + 64);
    v6 = *(v3 + 72);
    if (v6)
    {
      v7 = CFRetain(v6);
    }

    else
    {
      v7 = 0;
    }

    v8 = OUTLINED_FUNCTION_177();
    segPumpResetConnection(v8, v9);
    *(v2 + 24) = v4;
    *(v2 + 64) = v5;
    if (v7)
    {
      *(v2 + 72) = CFRetain(v7);

      CFRelease(v7);
    }

    else
    {
      *(v2 + 72) = 0;
    }
  }
}

uint64_t segPumpGetCommonActionForNetworkError()
{
  OUTLINED_FUNCTION_471();
  OUTLINED_FUNCTION_50();
  result = FigStreamingNetworkErrorGetRecommendedAction(v2, v3, v4);
  if (!result)
  {
    if (v1)
    {
      v6 = v8;
      if (v8 == 2)
      {
        v6 = 7;
      }

      *v1 = v6;
    }

    if (v0)
    {
      *v0 = v7;
    }
  }

  return result;
}

void segPumpAppendErrorLogEntry(void *a1, uint64_t a2, const __CFURL **a3, uint64_t a4, const void *a5, const void *a6, const void *a7, int a8, int a9, int a10)
{
  v63 = *MEMORY[0x1E69E9840];
  if (a3)
  {
    v51 = *a3;
  }

  else
  {
    v51 = 0;
  }

  v52 = 0;
  cf = 0;
  if (dword_1EAF16A30)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    v17 = os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    if (OUTLINED_FUNCTION_288_1(v17))
    {
      if (a1)
      {
        OUTLINED_FUNCTION_253_1();
      }

      v54 = 136316418;
      v55 = "segPumpAppendErrorLogEntry";
      v56 = 2114;
      OUTLINED_FUNCTION_37_0();
      v57 = 1024;
      v58 = a4;
      v59 = v18;
      v60 = a5;
      v61 = v18;
      v62 = a6;
      OUTLINED_FUNCTION_146();
      OUTLINED_FUNCTION_23();
      _os_log_send_and_compose_impl(v19, v20, v21, v22, v23, v24, 0, v25);
    }

    OUTLINED_FUNCTION_7();
    OUTLINED_FUNCTION_454(v26, v27, v28, v29, v30);
  }

  if (a8)
  {
    v32 = OUTLINED_FUNCTION_193_0();
    InterfaceTypeEnum = segPumpGetInterfaceTypeEnum(v32, v33);
    value = FigErrorLogGetStringFromInterfaceType(InterfaceTypeEnum);
  }

  else
  {
    value = 0;
  }

  v35 = FigNetworkInterfaceReporterCopyPhysicalStatistics(a1[1164]);
  OUTLINED_FUNCTION_198_0();
  segPumpRTCReportingUpdateAndIssueErrorEvent();
  if (a3)
  {
    v36 = a3[2];
    if (v36)
    {
      AllocatorForMedia = FigGetAllocatorForMedia();
      v38 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      if (v38 && (v38(v36, @"FHRP_HTTPResponseHeaders", AllocatorForMedia, &cf), cf))
      {
        v36 = CFHTTPMessageCopyAllHeaderFields(cf);
      }

      else
      {
        v36 = 0;
      }
    }

    v37 = a3[2];
  }

  else
  {
    v36 = 0;
    v37 = 0;
  }

  Entry = FigErrorLogCreateEntry(a1[7], v37, v51, a1[28], a4, a5, a6, a7, value, v35, a9, a10, v36);
  if (v35)
  {
    CFRelease(v35);
  }

  v40 = OUTLINED_FUNCTION_415_0();
  segPumpAppendErrorLogDictionary(v40, v41);
  OUTLINED_FUNCTION_64_0();
  OUTLINED_FUNCTION_197();
  CFError = FigCreateCFError(v42, v43, v44, v45, v46, v51, 0);
  v48 = FigGetAllocatorForMedia();
  FigMetricErrorEventCreate(v48, 1, CFError, &v52);
  segPumpPublishMetricEvent(a1, v52);
  if (v36)
  {
    CFRelease(v36);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (Entry)
  {
    CFRelease(Entry);
  }

  if (v52)
  {
    CFRelease(v52);
  }

  if (CFError)
  {
    CFRelease(CFError);
  }
}

uint64_t segPumpPublishMetricEvent(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    return 4294954656;
  }

  OUTLINED_FUNCTION_187();
  v5 = *(v4 + 9200);
  if (!v5)
  {
    if (*(v3 + 9216))
    {
      Mutable = *(v3 + 9208);
      if (!Mutable)
      {
        AllocatorForMedia = FigGetAllocatorForMedia();
        Mutable = CFArrayCreateMutable(AllocatorForMedia, 0, MEMORY[0x1E695E9C0]);
        *(v3 + 9208) = Mutable;
        if (!Mutable)
        {
          return 4294954510;
        }
      }

      CFArrayAppendValue(Mutable, v2);
    }

    return 0;
  }

  v6 = *(*(CMBaseObjectGetVTable() + 16) + 40);
  if (!v6)
  {
    return 4294954514;
  }

  return v6(v5, 0, v2);
}

uint64_t segPumpGetInterfaceTypeEnum(void *a1, uint64_t a2)
{
  if (!a1)
  {
    return 0;
  }

  if ((!a2 || !*(a2 + 16)) && (v3 = a1[2 * a1[1075] + 49], !*(*(v3 + 696) + 32)) && !*(v3 + 424) || (FigGetAllocatorForMedia(), OUTLINED_FUNCTION_200_1(), !*(*(CMBaseObjectGetVTable() + 8) + 48)) || ((v4 = OUTLINED_FUNCTION_515(), !v5(v4)) ? (InterfaceType = FigNetworkInterfaceGetInterfaceTypeFromCFNStats(0)) : (InterfaceType = 0), !InterfaceType))
  {
    InterfaceType = FigNetworkInterfaceReporterGetInterfaceType(a1[1164]);
    if (!InterfaceType)
    {
      v7 = a1[1079];
      if (v7)
      {
        return FigNetworkPathInformationGetInterfaceType(v7);
      }

      return 0;
    }
  }

  return InterfaceType;
}

void segPumpUpdateAlternateSelectionBossNetworkErrorFilter(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, __int16 a11, char a12, os_log_type_t type, int a14, CFTypeRef cf, __int128 a16, int a17, __int16 a18, __int16 a19, uint64_t a20, __int128 a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51)
{
  OUTLINED_FUNCTION_458();
  a50 = v52;
  a51 = v55;
  a39 = *MEMORY[0x1E69E9840];
  cf = 0;
  if (!v53[1216])
  {
    v86 = 0;
    goto LABEL_31;
  }

  v56 = v54;
  v57 = v53;
  if (v54)
  {
    v58 = kFigAlternateFilterName_NetworkPermanentError;
    if (v53[1039])
    {
      v59 = (v53 + 1039);
      v60 = 890;
      goto LABEL_7;
    }

LABEL_12:
    v63 = 0;
    v64 = *v58;
    goto LABEL_13;
  }

  v58 = kFigAlternateFilterName_NetworkTemporaryError;
  if (!v53[1040])
  {
    goto LABEL_12;
  }

  v59 = (v53 + 1040);
  v60 = 878;
LABEL_7:
  AllocatorForMedia = FigGetAllocatorForMedia();
  Copy = CFArrayCreateCopy(AllocatorForMedia, *v59);
  v63 = Copy;
  v64 = *v58;
  if (!Copy)
  {
LABEL_13:
    v67 = 1;
LABEL_14:
    FigAlternateSelectionBossRemoveFilter(v57[1216], v64);
LABEL_15:
    OUTLINED_FUNCTION_407_0();
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    OUTLINED_FUNCTION_46();
    if (v51)
    {
      if (v57[1118])
      {
        v69 = v57[1118];
      }

      else
      {
        v69 = &stru_1F0B1AFB8;
      }

      if (v56)
      {
        v70 = "permanent";
      }

      else
      {
        v70 = "temporary";
      }

      if (v67)
      {
        Count = 0;
      }

      else
      {
        Count = CFArrayGetCount(v63);
      }

      LODWORD(a16) = 136315906;
      *(&a16 + 4) = "segPumpUpdateAlternateSelectionBossNetworkErrorFilter";
      WORD6(a16) = 2114;
      *(&a16 + 14) = v69;
      a19 = 2080;
      a20 = v70;
      LOWORD(a21) = 2048;
      *(&a21 + 2) = Count;
      OUTLINED_FUNCTION_39();
      OUTLINED_FUNCTION_108();
      OUTLINED_FUNCTION_448(v72, v73, v74, v75, v76, v77, v78, v79);
    }

    OUTLINED_FUNCTION_16();
    OUTLINED_FUNCTION_238_0(v80, v81, v82, v83, v84);
    v85 = 0;
    v86 = 0;
    if (!v63)
    {
      goto LABEL_29;
    }

    goto LABEL_28;
  }

  if (!CFArrayGetCount(Copy))
  {
    v67 = 0;
    goto LABEL_14;
  }

  v65 = FigGetAllocatorForMedia();
  v66 = FigAlternateDenyListFilterCreate(v65, v63, v64, v60, 0, &cf);
  if (!v66)
  {
    v66 = FigAlternateSelectionBossAddFilter(v57[1216], cf);
    if (!v66)
    {
      v67 = 0;
      goto LABEL_15;
    }
  }

  v85 = v66;
LABEL_28:
  CFRelease(v63);
  v86 = v85;
LABEL_29:
  if (cf)
  {
    CFRelease(cf);
  }

LABEL_31:
  OUTLINED_FUNCTION_457(v86);
}

double MoveAlternateFromPenaltyBox()
{
  OUTLINED_FUNCTION_369();
  *(v4 + 32) = 0;
  if (*(v5 + 9728))
  {
    v6 = *(v0 + 8320);
    if (v6)
    {
      Count = CFArrayGetCount(v6);
    }

    else
    {
      Count = 0;
    }

    while (Count-- >= 1)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(*(v0 + 8320), Count);
      if (CFEqual(ValueAtIndex, *(v1 + 8)))
      {
        CFArrayRemoveValueAtIndex(*(v0 + 8320), Count);
        break;
      }
    }
  }

  v10 = *(v0 + 8296);
  if (v10 == v1)
  {
    v11 = (v0 + 8296);
  }

  else
  {
    do
    {
      v11 = v10;
      v10 = *v10;
    }

    while (v10 != v1);
  }

  v12 = *v10;
  *v11 = v12;
  if (!v12)
  {
    *(v0 + 8304) = v11;
  }

  *v1 = 0;
  **(v0 + 8288) = v1;
  *(v0 + 8288) = v1;
  OUTLINED_FUNCTION_10_1();
  os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
  OUTLINED_FUNCTION_311(os_log_and_send_and_compose_flags_and_os_log_type, v14, v15, v16, v17, v18, v19, v20, v34, v35, v36, v37, SBYTE2(v37), BYTE3(v37), SHIDWORD(v37));
  OUTLINED_FUNCTION_40();
  if (v3)
  {
    FigAlternateGetPlaylistAlternateURL(*(v1 + 8));
    OUTLINED_FUNCTION_39();
    OUTLINED_FUNCTION_38();
    _os_log_send_and_compose_impl(v21, v22, v23, v24, v25, v26, v2, v27);
    OUTLINED_FUNCTION_612();
  }

  OUTLINED_FUNCTION_16();
  return OUTLINED_FUNCTION_414(v28, v29, v30, v31, v32);
}

void segPumpDispatchAsyncAlternateSelectionApplyFilter(uint64_t a1)
{
  v2 = *(a1 + 9728);
  if (v2)
  {
    v3 = CFRetain(v2);
    v4 = *(a1 + 9736);

    dispatch_async_f(v4, v3, segPumpDispatchAsyncAlternateSelectionBossApplyFilterFunc);
  }
}

void MoveAllAlternatesWithSameMasterStreamWithStreamAlternate()
{
  OUTLINED_FUNCTION_629();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v7 = CMBaseObjectGetDerivedStorage();
  if (*(v7 + 392 + 16 * *v5) == v5)
  {
    v8 = 8328;
  }

  else
  {
    if (*(v7 + 392 + 16 * *v5 + 8) != v5)
    {
      goto LABEL_28;
    }

    v8 = 7880;
  }

  v9 = *(v7 + v8);
  if (!v9)
  {
    goto LABEL_28;
  }

  v10 = *(v9 + 8);
  if (v10)
  {
    v11 = CFRetain(v10);
  }

  else
  {
    v11 = 0;
  }

  v12 = *(DerivedStorage + 8280);
  if (v12)
  {
    v13 = 0;
    while (1)
    {
      v14 = v12;
      v12 = *v12;
      if (segPumpAlternateURLsAndPathwaysAreEqual(v11, *(v14 + 8)))
      {
        MoveAlternateFromListWithNoNotification(DerivedStorage, (DerivedStorage + 8280), v14, v3, v1);
        v13 = v15;
        if (v15)
        {
          if (v15 != -12880)
          {
            goto LABEL_30;
          }
        }
      }

      if (!v12)
      {
        if (v3)
        {
          goto LABEL_19;
        }

        goto LABEL_24;
      }
    }
  }

  v13 = 0;
  if (v3)
  {
LABEL_19:
    v16 = *(DerivedStorage + 8296);
    while (v16)
    {
      v17 = v16;
      v16 = *v16;
      if (segPumpAlternateURLsAndPathwaysAreEqual(v11, *(v17 + 8)))
      {
        MoveAlternateFromListWithNoNotification(DerivedStorage, (DerivedStorage + 8296), v17, 1, v1);
        v13 = 0;
        if (v18)
        {
          if (v18 != -12880)
          {
            goto LABEL_30;
          }
        }
      }
    }
  }

LABEL_24:
  segPumpInformCurrentAlternateNoLongerValid(DerivedStorage);
  if (!*(DerivedStorage + 8280))
  {
    OUTLINED_FUNCTION_323_1();
    OUTLINED_FUNCTION_613();
    OUTLINED_FUNCTION_214_1(v19, v20, v21, -12880, v22, v23, v24, v25, v34);
    goto LABEL_26;
  }

  if (!v13)
  {
    goto LABEL_26;
  }

LABEL_30:
  OUTLINED_FUNCTION_323_1();
  OUTLINED_FUNCTION_613();
  OUTLINED_FUNCTION_214_1(v26, v27, v28, v29, v30, v31, v32, v33, v34);
LABEL_26:
  if (v11)
  {
    CFRelease(v11);
  }

LABEL_28:
  OUTLINED_FUNCTION_320();
}

uint64_t segPumpAlternateGroupIDsAndPathwaysAreEqual(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  if (a1 == a2)
  {
    return 1;
  }

  result = 0;
  if (a1 && a2)
  {
    segPumGetGroupIDString(a1, *a3);
    segPumGetGroupIDString(a2, *a3);
    result = FigCFEqual();
    if (result)
    {
      FigAlternateGetPathwayID(a1);
      v7 = OUTLINED_FUNCTION_199();
      FigAlternateGetPathwayID(v7);
      OUTLINED_FUNCTION_399();
      return FigCFEqual() != 0;
    }
  }

  return result;
}

uint64_t segPumpAlternateURLsAndPathwaysAreEqual(uint64_t a1, uint64_t a2)
{
  if (a1 == a2)
  {
    return 1;
  }

  result = 0;
  if (a1 && a2)
  {
    FigAlternateGetPlaylistAlternateURL(a1);
    FigAlternateGetPlaylistAlternateURL(a2);
    v5 = OUTLINED_FUNCTION_171_1();
    result = FigCFHTTPCompareURLs(v5, v6);
    if (result)
    {
      FigAlternateGetPathwayID(a1);
      v7 = OUTLINED_FUNCTION_199();
      FigAlternateGetPathwayID(v7);
      OUTLINED_FUNCTION_399();
      return FigCFEqual() != 0;
    }
  }

  return result;
}

BOOL segPumpIsAlternateLastValidAlternate(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  if (!a3 || !*(a1 + 8280))
  {
    return 0;
  }

  cf = 0;
  theArray = 0;
  if (*(a1 + 9752))
  {
    FigGetAllocatorForMedia();
    OUTLINED_FUNCTION_127_1();
    if (*(*(CMBaseObjectGetVTable() + 8) + 48))
    {
      v7 = OUTLINED_FUNCTION_187_1();
      if (!v8(v7))
      {
        FigGetAllocatorForMedia();
        OUTLINED_FUNCTION_127_1();
        if (*(*(CMBaseObjectGetVTable() + 8) + 48))
        {
          v9 = OUTLINED_FUNCTION_187_1();
          v10(v9);
        }
      }
    }
  }

  if (*(a1 + 8280) == a3 && *(a1 + 8288) == a3)
  {
    return 1;
  }

  if (a4)
  {
    PlaylistAlternateURL = FigAlternateGetPlaylistAlternateURL(*(a3 + 8));
    if (PlaylistAlternateURL)
    {
      v12 = CFURLCopyHostName(PlaylistAlternateURL);
      if (v12)
      {
        v13 = v12;
        v14 = *(a1 + 8280);
        if (v14)
        {
          while (1)
          {
            v15 = FigAlternateGetPlaylistAlternateURL(v14[1]);
            v16 = CFURLCopyHostName(v15);
            if (v16)
            {
              v17 = v16;
              v18 = OUTLINED_FUNCTION_284();
              v20 = CFEqual(v18, v19);
              CFRelease(v17);
              if (!v20)
              {
                break;
              }
            }

            v14 = *v14;
            if (!v14)
            {
              goto LABEL_17;
            }
          }

          CFRelease(v13);
          goto LABEL_22;
        }

LABEL_17:
        CFRelease(v13);
      }
    }

    return 1;
  }

LABEL_22:
  cf = 0;
  theArray = 0;
  v35 = 0;
  v36 = 0;
  if (!*(a1 + 8328))
  {
    goto LABEL_46;
  }

  if (!*(a1 + 9728))
  {
    OUTLINED_FUNCTION_376();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v33, v34, v35);
    v29 = 0;
    goto LABEL_50;
  }

  v23 = *(a1 + 9768);
  AllocatorForMedia = FigGetAllocatorForMedia();
  v25 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v25 || v25(v23, @"FAFProperty_AlternateList", AllocatorForMedia, &cf))
  {
    v29 = 0;
    goto LABEL_37;
  }

  if (!cf || CFArrayGetCount(cf) < 1 || (v26 = OUTLINED_FUNCTION_249_1(), FigAlternateGetRenditionInfoForMediaType(v26, v27, *(a1 + 8576), *(a1 + 8584), *(a1 + 8592), 1, 0, &theArray, 0), !theArray))
  {
LABEL_46:
    v21 = 0;
    v29 = 0;
    goto LABEL_38;
  }

  Mutable = CFArrayCreateMutable(*(a1 + 56), 0, MEMORY[0x1E695E9C0]);
  v29 = Mutable;
  if (!Mutable)
  {
    OUTLINED_FUNCTION_376();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
    goto LABEL_50;
  }

  CFArrayAppendValue(Mutable, theArray);
  if (FigAlternateURLDependencyDenyListFilterCreate(*(a1 + 56), v29, *(a1 + 8336), 1, &v35))
  {
    goto LABEL_37;
  }

  if (!v35)
  {
    OUTLINED_FUNCTION_376();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
LABEL_50:
    if (!v32)
    {
      goto LABEL_51;
    }

LABEL_37:
    v21 = 0;
    goto LABEL_38;
  }

  if (!*(*(CMBaseObjectGetVTable() + 16) + 24))
  {
    goto LABEL_37;
  }

  v30 = OUTLINED_FUNCTION_177();
  if (v31(v30))
  {
    goto LABEL_37;
  }

  if (!v36)
  {
LABEL_51:
    v21 = 1;
    goto LABEL_38;
  }

  v21 = CFArrayGetCount(v36) < 1;
LABEL_38:
  if (v35)
  {
    CFRelease(v35);
  }

  if (v29)
  {
    CFRelease(v29);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (v36)
  {
    CFRelease(v36);
  }

  return v21;
}

void segPumpRetryTimerCallback()
{
  OUTLINED_FUNCTION_187();
  v2 = FigRetainProxyRetain();
  OUTLINED_FUNCTION_154_0(v2, v3, v4, v5, v6, v7, v8, v9, 0, 0);
  if (!v10)
  {
    v11 = 0;
    v12 = 1;
    do
    {
      v13 = 0;
      v14 = v12;
      v15 = &v17[2 * v11 + 49];
      while (1)
      {
        v16 = *(v15 + v13);
        if (*(v16 + 392) == v1)
        {
          break;
        }

        v13 += 8;
        if (v13 == 24)
        {
          goto LABEL_8;
        }
      }

      *(v16 + 400) = 0;
      segPumpRestartStreamReads(cf, v17, v16);
LABEL_8:
      v12 = 0;
      v11 = 1;
    }

    while ((v14 & 1) != 0);
  }

  segPumpUnlockAndSendAllPendingNotifications(v0);
  FigRetainProxyRelease();
  if (cf)
  {
    CFRelease(cf);
  }
}

void segPumpReadOrScheduleIndexFileRead()
{
  OUTLINED_FUNCTION_187();
  v3 = *(v2 + 56);
  if ((!v3 || FigStreamPlaylistParserHTTPServerMayMutatePlaylist(v3)) && *(v1 + 8) && !*(v0 + 1185))
  {
    v4 = *(v0 + 480);
    if (v4)
    {
      Code = CFErrorGetCode(v4);
      if (Code == -16839 || Code == -1005 || Code == -1009)
      {
        *(v0 + 1184) = 1;
      }
    }

    if (!*(v0 + 859) && !*(v0 + 424) && !*(v0 + 870) && !*(v0 + 400))
    {
      UpTimeNanoseconds = FigGetUpTimeNanoseconds();
      v7 = OUTLINED_FUNCTION_177();
      segPumpGetIndexFileRefreshTimestamp(v7, v8, UpTimeNanoseconds, v9);
      if (UpTimeNanoseconds <= UpTimeNanoseconds + 10000000)
      {
        v14 = OUTLINED_FUNCTION_177();
        segPumpSendIndexFileRequest(v14, v15, 0);
        if (*(v1 + 336))
        {
          v13 = UpTimeNanoseconds + (*(v1 + 16) * 1000000000.0);
          goto LABEL_20;
        }

        *(v0 + 1088) = UpTimeNanoseconds;
        v16 = *(v0 + 440);
        if (v16 < 1)
        {
          return;
        }

        v11 = *(v0 + 448);
        if (v11 <= v16)
        {
          return;
        }

        v12 = UpTimeNanoseconds - v16;
      }

      else
      {
        *(v0 + 400) = 1;
        FigHTTPCreateTimer(*v1, segPumpRetryTimerCallback, *(v1 + 64), (v0 + 392), 0 / 1000000000.0);
        *(v0 + 1088) = UpTimeNanoseconds;
        v10 = *(v0 + 440);
        if (v10 < 1)
        {
          return;
        }

        v11 = *(v0 + 448);
        if (v11 <= v10)
        {
          return;
        }

        v12 = UpTimeNanoseconds - v10;
      }

      v13 = v12 + v11;
LABEL_20:
      *(v0 + 1088) = v13;
    }
  }
}

uint64_t segPumpDeliverNextMediaForSingleStream(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  OUTLINED_FUNCTION_400();
  v50 = 0;
  v51 = 0;
  HIWORD(v49) = 0;
  BYTE5(v49) = 0;
  FigRetainProxyRetain();
  v6 = a3[7];
  if (!v6)
  {
    goto LABEL_17;
  }

  MediaSegmentSpecifiers = FigMediaPlaylistGetMediaSegmentSpecifiers(v6);
  if (!MediaSegmentSpecifiers || CFArrayGetCount(MediaSegmentSpecifiers) < 1 || *(a3 + 866) || (a3[20] & 0xFFFFFFFE) != 4 || *(a3 + 1152))
  {
    goto LABEL_17;
  }

  if (*(v4 + 8896))
  {
    if (!*(v4 + 8952) && !*(v4 + 8897) && (*(a3 + 857) || *(a3 + 862)))
    {
      v14 = *(a3 + 15);
      if (v14 >= 0.0)
      {
        v15 = *(v4 + 8920);
        if (v15 == 0.0)
        {
          v15 = *(v4 + 8880);
        }

        v16 = dbl_196E72890[v15 >= 0.0];
        CMTimeMakeWithSeconds(&v48, v14, 1000);
        UpTimeNanoseconds = FigGetUpTimeNanoseconds();
        CMTimeMakeWithSeconds(&v47, v16 + *(a3 + 15), 1000);
        Frame = segPumpStepNextFrame(v3, &v48.value, UpTimeNanoseconds, &v47.value, 1, 0, v15);
        goto LABEL_11;
      }

LABEL_17:
      v11 = 0;
      goto LABEL_18;
    }

    v8 = OUTLINED_FUNCTION_266();
    Frame = segPumpTryIFrameFetch(v8, v9);
LABEL_11:
    v11 = Frame;
    goto LABEL_18;
  }

  v12 = a3[32];
  if (v12)
  {
    if (a3[33])
    {
      v12 = a3[33];
    }

    v51 = v12;
  }

  else
  {
    v18 = OUTLINED_FUNCTION_70_1();
    segPumpDetermineMediaSegmentToDeliver(v18, v19, v20, v21, v22);
    if (Frame)
    {
      goto LABEL_11;
    }

    v23 = OUTLINED_FUNCTION_178();
    if (!segPumpStreamShouldYieldToTrialSwitch(v23, v24))
    {
      v25 = OUTLINED_FUNCTION_178();
      segPumpStreamReadAheadPermitsNextRead(v25, v26, v27);
    }
  }

  v28 = OUTLINED_FUNCTION_70_1();
  v11 = segPumpStreamDoDeliveryFollowUp(v28, v29, v30, v31, v32, v33, v34, v35, v45, cf, v47.value, v47.timescale, v47.flags, SBYTE2(v47.flags), SHIBYTE(v47.flags), v47.epoch, v48.value, *&v48.timescale, v48.epoch, v49, v50, v51, v52, v53, v54, v55, v56, v57, v58);
  if (!v11 && BYTE6(v49))
  {
    v36 = *a3;
    for (i = 392; i != 440; i += 16)
    {
      if (v36)
      {
        v38 = *(v4 + i);
        if (v38[2])
        {
          if (!*(v38[87] + 8))
          {
            v48.value = 0;
            v47.value = 0;
            if (v38[32])
            {
              if (v38[33])
              {
                v39 = v38[33];
              }

              else
              {
                v39 = v38[32];
              }

              if (v39)
              {
                OUTLINED_FUNCTION_70_1();
                segPumpTrySpeculativeRead();
                if (Frame)
                {
                  goto LABEL_11;
                }
              }
            }

            else
            {
              v40 = OUTLINED_FUNCTION_70_1();
              segPumpDetermineMediaSegmentToDeliver(v40, v41, v42, v43, v44);
              if (Frame)
              {
                goto LABEL_11;
              }
            }
          }
        }
      }

      v11 = 0;
      --v36;
    }
  }

LABEL_18:
  FigRetainProxyRelease();
  return v11;
}

double segPumpCancelCryptReadAndResetData()
{
  OUTLINED_FUNCTION_369();
  if (*(v2 + 248))
  {
    OUTLINED_FUNCTION_152_1();
    if (!segPumpGetCryptKeyCommonData(v4, v5, v6))
    {
      MEMORY[0x98] = 0;
      MEMORY[0x20] = 0;
      MEMORY[0x80] = 0;
      if (MEMORY[0x58])
      {
        segPumpCustomURLLoaderCancelRequest(v0);
        segPumpResetCryptKeyRequestDataForCustomURLRequestID(*(v1 + 248), MEMORY[0x58]);
        if (MEMORY[0x80])
        {
          segPumpCustomURLLoaderCancelRequest(v0);
          segPumpResetCryptKeyRequestDataForCustomURLRequestID(*(v1 + 248), MEMORY[0x80]);
        }
      }

      FigHTTPStopAndReleaseTimer((v1 + 640));
      v7 = *(v1 + 248);
      if (v7)
      {
        CFRelease(v7);
        *(v1 + 248) = 0;
      }
    }
  }

  return segPumpResetConnection(v0, v1 + 544);
}

uint64_t segPumpSendCryptKeyRequest(uint64_t a1, uint64_t a2, uint64_t a3, const void *a4)
{
  v439 = *MEMORY[0x1E69E9840];
  v412 = 0;
  v413 = 0;
  if (!*(a2 + 331))
  {
    return 0;
  }

  v5 = a4;
  v8 = a2 + 0x2000;
  v9 = &unk_1EAF16000;
  v408 = a3;
  if (*(a2 + 9672))
  {
    v422 = 0;
    *v423 = 0;
    v417 = 0;
    cf = 1;
    v419 = segPumpKeyRequestDidSucceed;
    v420 = &segPumpKeyRequestDidFail;
    v421 = segPumpKeyRequestDidUpdateContentKeyBossToNewBoss;
    v415 = 0;
    *v416 = 0;
    if (!*(a2 + 152))
    {
      v12 = *(a2 + 64);
      *(a2 + 152) = v12;
      dispatch_retain(v12);
    }

    CryptKeyCommonData = segPumpGetCryptKeyCommonData(v5, v416, &v415);
    if (!CryptKeyCommonData)
    {
      if (*(v415 + 153) || !*(v8 + 1480))
      {
        CFDataWithBlockBuffer = 0;
        goto LABEL_197;
      }

      IsLowValueFairPlayStreamingKey = segPumpCryptKeyIsLowValueFairPlayStreamingKey(v5);
      if (FigContentKeySpecifierGetIdentifier(v5))
      {
        v22 = *(a2 + 9720);
        segPumpEnsureCMCDHeaderVendor(a2, v15, v16, v17, v18, v19, v20, v21, v339, v345, v350, v355, v360, v364, v368, v372, v376, v380);
        Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
        if (Mutable)
        {
          v24 = Mutable;
          FigCFDictionarySetValue();
          v402 = v24;
          if (FigContentKeySpecifierGetKeySystem(v5) == 1 && *(v8 + 16))
          {
            if (FigContentKeySpecifierGetEncryptionMethod(v5) == 1)
            {
              FigGetAllocatorForMedia();
              OUTLINED_FUNCTION_382_1();
              v398 = v5;
              v26 = FigContentKeyRequestParamsCreate(v25, v5, IsLowValueFairPlayStreamingKey, 1, 0, 0, v22, 0, v340, v346, v351, v356);
              if (v26)
              {
                goto LABEL_239;
              }

              v27 = *(a2 + 9680);
              v28 = v422;
              *v393 = *(a2 + 240);
              v29 = *(a2 + 216);
              v30 = *a2;
              v31 = *(a2 + 152);
              v32 = *(*(CMBaseObjectGetVTable() + 16) + 8);
              if (!v32)
              {
                goto LABEL_188;
              }

              v340 = v31;
              v346 = &v417;
              v26 = v32(v27, v28, 1, 0, *v393, v29, &cf, v30);
              if (v26)
              {
LABEL_239:
                CFDataWithBlockBuffer = v26;
                goto LABEL_189;
              }

              *(v415 + 40) = v417;
              v5 = v398;
              if (dword_1EAF16A30)
              {
                HIDWORD(v414) = 0;
                BYTE3(v414) = 0;
                os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
                v34 = os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
                if (OUTLINED_FUNCTION_77_0(v34))
                {
                  OUTLINED_FUNCTION_197_1();
                  *v424 = 136316162;
                  *&v424[4] = "segPumpProcessContentKeyRequest";
                  v425 = 2114;
                  OUTLINED_FUNCTION_5_1();
                  v426 = v210;
                  OUTLINED_FUNCTION_169_1();
                  *(v211 + 44) = v212;
                  OUTLINED_FUNCTION_117();
                  OUTLINED_FUNCTION_19_1();
                  _os_log_send_and_compose_impl(v213, v214, v215, v216, v217, os_log_and_send_and_compose_flags_and_os_log_type, 0, v218);
                }

                OUTLINED_FUNCTION_109();
                LODWORD(v9) = 1;
                OUTLINED_FUNCTION_38_0(v219, v220, v221, v222, v223);
              }

              else
              {
                LODWORD(v9) = 1;
              }

              v24 = v402;
            }

            else
            {
              LODWORD(v9) = 0;
            }

            if (*(v8 + 16))
            {
              LODWORD(CFDataWithBlockBuffer) = 1;
              LODWORD(v9) = 1;
            }

            else
            {
              LODWORD(CFDataWithBlockBuffer) = 0;
            }
          }

          else
          {
            OUTLINED_FUNCTION_386_0();
          }

          FigGetAllocatorForMedia();
          OUTLINED_FUNCTION_382_1();
          v225 = FigContentKeyRequestParamsCreate(v224, v5, IsLowValueFairPlayStreamingKey, v9, CFDataWithBlockBuffer, 0, v22, 0, v340, v346, v351, v356);
          if (v225)
          {
            CFDataWithBlockBuffer = v225;
LABEL_195:
            CFRelease(v24);
            if (*v423)
            {
              CFRelease(*v423);
            }

LABEL_197:
            v148 = v422;
            if (v422)
            {
              goto LABEL_198;
            }

            return CFDataWithBlockBuffer;
          }

          v226 = *(a2 + 152);
          if (*(*(CMBaseObjectGetVTable() + 16) + 8))
          {
            v227 = OUTLINED_FUNCTION_292();
            v26 = v228(v227);
            if (!v26)
            {
              if (dword_1EAF16A30)
              {
                HIDWORD(v414) = 0;
                BYTE3(v414) = 0;
                v229 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
                v230 = os_log_type_enabled(v229, OS_LOG_TYPE_DEFAULT);
                if (OUTLINED_FUNCTION_77_0(v230))
                {
                  OUTLINED_FUNCTION_197_1();
                  *v424 = 136316162;
                  *&v424[4] = "segPumpProcessContentKeyRequest";
                  v425 = 2114;
                  OUTLINED_FUNCTION_5_1();
                  v426 = v231;
                  OUTLINED_FUNCTION_169_1();
                  *(v232 + 44) = v233;
                  OUTLINED_FUNCTION_117();
                  OUTLINED_FUNCTION_19_1();
                  OUTLINED_FUNCTION_190_0();
                  _os_log_send_and_compose_impl(v234, v235, v236, v237, v238, v239, v240, v241, v226, &v417);
                }

                OUTLINED_FUNCTION_7();
                OUTLINED_FUNCTION_420(v242, v243, v244, v245, v246);
              }

              v247 = v415;
              *(v415 + 32) = v417;
              *(v247 + 153) = 1;
              *(*v416 + 56) = FigGetUpTimeNanoseconds();
              v248 = *(a2 + 9232);
              if (v248)
              {
                v249 = *(*(CMBaseObjectGetVTable() + 16) + 56);
                v24 = v402;
                if (v249)
                {
                  v249(v248, @"playerStats", 0x1F0B66C98, 1, 0);
                }

                CFDataWithBlockBuffer = 0;
                goto LABEL_195;
              }

              CFDataWithBlockBuffer = 0;
              goto LABEL_189;
            }

            goto LABEL_239;
          }

LABEL_188:
          CFDataWithBlockBuffer = 4294954514;
LABEL_189:
          v24 = v402;
          goto LABEL_195;
        }
      }

      OUTLINED_FUNCTION_374();
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
    }

    CFDataWithBlockBuffer = CryptKeyCommonData;
    goto LABEL_197;
  }

  v397 = a1;
  v10 = segPumpGetCryptKeyCommonData(a4, &v413, &v412);
  if (v10)
  {
    return v10;
  }

  if (*(v412 + 153))
  {
    OUTLINED_FUNCTION_374();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v339, v345, v350);
    return v10;
  }

  if (FigContentKeySpecifierGetIdentifier(v5))
  {
    FigGetAllocatorForMedia();
    v35 = OUTLINED_FUNCTION_200_1();
    FigContentKeySpecifierGetIdentifier(v35);
    v36 = OUTLINED_FUNCTION_171_1();
    v11 = CFURLCreateWithString(v36, v37, 0);
  }

  else
  {
    v11 = 0;
  }

  v38 = v412;
  *(v412 + 160) = 0;
  *(v38 + 153) = 1;
  v39 = *(a2 + 9232);
  if (v39)
  {
    v40 = *(*(CMBaseObjectGetVTable() + 16) + 56);
    if (v40)
    {
      v40(v39, @"playerStats", 0x1F0B66C98, 1, 0);
    }
  }

  *(v413 + 56) = FigGetUpTimeNanoseconds();
  if (*(a3 + 248) == v5)
  {
    UpTimeNanoseconds = FigGetUpTimeNanoseconds();
    *(a3 + 576) = UpTimeNanoseconds;
    if (!*(a3 + 608))
    {
      *(a3 + 568) = UpTimeNanoseconds;
    }

    v403 = *(a3 + 560);
    *(a3 + 560) = 0;
    *(a3 + 632) = 0;
    v42 = *(a3 + 544);
    if (v42)
    {
      CFRelease(v42);
      *(a3 + 544) = 0;
    }

    if (v11)
    {
      v43 = CFRetain(v11);
    }

    else
    {
      v43 = 0;
    }

    *(a3 + 544) = v43;
  }

  else
  {
    v403 = 0;
  }

  cf = 0;
  v422 = 0;
  *v423 = 0;
  v44 = segPumpGetCryptKeyCommonData(v5, &cf, v423);
  if (v44)
  {
    goto LABEL_106;
  }

  if (FigContentKeySpecifierGetKeySystem(v5) == 1 && !*(*v423 + 72))
  {
    AllocatorForMedia = FigGetAllocatorForMedia();
    v48 = CFDictionaryCreateMutable(AllocatorForMedia, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    v49 = v48;
    if (!v48)
    {
      OUTLINED_FUNCTION_374();
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v339, v345, v350);
      CFDataWithBlockBuffer = v338;
      goto LABEL_73;
    }

    CFDictionarySetValue(v48, *MEMORY[0x1E6960F50], @"com.apple.pkd");
    Identifier = FigContentKeySpecifierGetIdentifier(v5);
    CFDictionarySetValue(v49, *MEMORY[0x1E6960F28], Identifier);
    FigCFDictionarySetInt32();
    EncryptionMethod = FigContentKeySpecifierGetEncryptionMethod(v5);
    v52 = kFigCPEProtectorCryptorCreationOptionDecryptFormatType_Pastis;
    if (EncryptionMethod == 2)
    {
      v52 = kFigCPEProtectorCryptorCreationOptionDecryptFormatType_MSE;
    }

    CFDictionarySetValue(v49, *MEMORY[0x1E6960F40], *v52);
    SupportedProtocolVersions = FigContentKeySpecifierGetSupportedProtocolVersions(v5);
    if (*(v8 + 16) && !*a3 && FigContentKeySpecifierGetEncryptionMethod(v5) != 3 && FigContentKeySpecifierGetEncryptionMethod(v5) != 2 && !*(*v423 + 112))
    {
      v285 = *(a2 + 9664);
      v286 = FigGetAllocatorForMedia();
      v153 = FigContentKeySessionCopyCryptor(v285, v286, v49, *v423 + 112);
      if (v153)
      {
        goto LABEL_241;
      }

      v287 = *(a2 + 264);
      if (v287)
      {
        v153 = CMBaseObjectSetProperty(*(*v423 + 112), *MEMORY[0x1E69610C0], v287);
        if (v153)
        {
          goto LABEL_241;
        }
      }

      if (SupportedProtocolVersions)
      {
        v153 = CMBaseObjectSetProperty(*(*v423 + 112), *MEMORY[0x1E6961108], SupportedProtocolVersions);
        if (v153)
        {
          goto LABEL_241;
        }
      }

      CMNotificationCenterGetDefaultLocalCenter();
      OUTLINED_FUNCTION_186();
      if (FigNotificationCenterAddWeakListener())
      {
        OUTLINED_FUNCTION_285_1();
        if (!v149)
        {
          goto LABEL_71;
        }
      }

      v288 = *v423;
      *(*v423 + 120) = *a2;
      v153 = segPumpPrepareCryptorForKeyLoading(v288[14]);
      if (v153)
      {
        goto LABEL_241;
      }

      if (dword_1EAF16A30)
      {
        OUTLINED_FUNCTION_301_1();
        v296 = OUTLINED_FUNCTION_216_1(qword_1EAF16A28, v289, v290, v291, v292, v293, v294, v295, v339, v345, v350, v355, v360, v364, v368, v372, v376, v380, v384, v388, SupportedProtocolVersions, v397, v403, v408, v412, v413, v414, v415, v416[0], *&v416[4], v417);
        v297 = v416[0];
        v388 = v296;
        v298 = os_log_type_enabled(v296, v416[0]);
        if (OUTLINED_FUNCTION_77_0(v298))
        {
          OUTLINED_FUNCTION_197_1();
          OUTLINED_FUNCTION_371_0();
          v425 = 2114;
          OUTLINED_FUNCTION_5_1();
          v426 = v299;
          OUTLINED_FUNCTION_169_1();
          *(v300 + 44) = v301;
          v430 = v302;
          *(v300 + 54) = v303;
          v432 = 1024;
          v433 = v304;
          OUTLINED_FUNCTION_117();
          OUTLINED_FUNCTION_19_1();
          _os_log_send_and_compose_impl(v305, v306, v307, v308, v309, v388, v297, v310);
          OUTLINED_FUNCTION_328_0();
        }

        OUTLINED_FUNCTION_7();
        OUTLINED_FUNCTION_420(v333, v334, v335, v336, v337);
      }
    }

    v53 = *(a2 + 9640);
    if (v53)
    {
      CFDictionarySetValue(v49, *MEMORY[0x1E6960F70], v53);
    }

    v54 = *(a2 + 9648);
    if (v54)
    {
      CFDictionarySetValue(v49, *MEMORY[0x1E6960F68], v54);
    }

    if (segPumpCryptKeyIsLowValueFairPlayStreamingKey(v5))
    {
      CFDictionarySetValue(v49, *MEMORY[0x1E6960F60], *MEMORY[0x1E695E4D0]);
    }

    if (FigContentKeySpecifierGetEncryptionMethod(v5) != 3 && *(v8 + 16) && !*v408)
    {
      CFDictionarySetValue(v49, *MEMORY[0x1E6960F38], @"DestinationNero");
    }

    FigGetAllocatorForMedia();
    if (!*(*(CMBaseObjectGetVTable() + 16) + 16))
    {
      CFDataWithBlockBuffer = 4294954514;
LABEL_71:
      CFRelease(v49);
      goto LABEL_72;
    }

    v55 = OUTLINED_FUNCTION_267_0();
    v57 = v56(v55);
    if (v57)
    {
      CFDataWithBlockBuffer = v57;
      goto LABEL_71;
    }

    v58 = *(*v423 + 72);
    CFDataWithBlockBuffer = FigGetAllocatorForMedia();
    v65 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v65)
    {
      v65(v58, *MEMORY[0x1E69610E0], CFDataWithBlockBuffer, &v422);
      v66 = v422;
    }

    else
    {
      v66 = 0;
    }

    segPumpRTCReportingUpdateCryptorErrorKeys(a2, v66, v59, v60, v61, v62, v63, v64, v339, v345, v350, v355, v360, v364, v368, v372, v376, v380);
    if (v422)
    {
      CFRelease(v422);
      v422 = 0;
    }

    CMNotificationCenterGetDefaultLocalCenter();
    OUTLINED_FUNCTION_186();
    if (FigNotificationCenterAddWeakListener())
    {
      OUTLINED_FUNCTION_285_1();
      if (!v149)
      {
        goto LABEL_71;
      }
    }

    *(*v423 + 80) = *a2;
    CMNotificationCenterGetDefaultLocalCenter();
    OUTLINED_FUNCTION_186();
    if (FigNotificationCenterAddWeakListener())
    {
      OUTLINED_FUNCTION_285_1();
      if (!v149)
      {
        goto LABEL_71;
      }
    }

    v150 = *(a2 + 264);
    if (v150)
    {
      v151 = *(*v423 + 72);
      v152 = *(*(CMBaseObjectGetVTable() + 8) + 56);
      if (!v152)
      {
LABEL_162:
        CFDataWithBlockBuffer = 4294954514;
        goto LABEL_71;
      }

      v153 = v152(v151, *MEMORY[0x1E69610C0], v150);
      if (v153)
      {
LABEL_241:
        CFDataWithBlockBuffer = v153;
        goto LABEL_71;
      }
    }

    if (!SupportedProtocolVersions)
    {
LABEL_158:
      CFDataWithBlockBuffer = segPumpPrepareCryptorForKeyLoading(*(*v423 + 72));
      if (!CFDataWithBlockBuffer && dword_1EAF16A30)
      {
        OUTLINED_FUNCTION_301_1();
        v163 = OUTLINED_FUNCTION_216_1(qword_1EAF16A28, v156, v157, v158, v159, v160, v161, v162, v339, v345, v350, v355, v360, v364, v368, v372, v376, v380, v384, v388, SupportedProtocolVersions, v397, v403, v408, v412, v413, v414, v415, v416[0], *&v416[4], v417);
        v164 = v416[0];
        v165 = os_log_type_enabled(v163, v416[0]);
        if (OUTLINED_FUNCTION_77_0(v165))
        {
          OUTLINED_FUNCTION_197_1();
          OUTLINED_FUNCTION_306_0();
          OUTLINED_FUNCTION_371_0();
          v425 = 2114;
          OUTLINED_FUNCTION_5_1();
          v426 = v166;
          OUTLINED_FUNCTION_169_1();
          *(v167 + 44) = v168;
          v430 = v169;
          *(v167 + 54) = v170;
          v432 = 1024;
          v433 = v171;
          OUTLINED_FUNCTION_117();
          OUTLINED_FUNCTION_19_1();
          _os_log_send_and_compose_impl(v172, v173, v174, v175, v176, v163, v164, v177);
          OUTLINED_FUNCTION_328_0();
        }

        OUTLINED_FUNCTION_7();
        OUTLINED_FUNCTION_420(v328, v329, v330, v331, v332);
        CFDataWithBlockBuffer = 0;
      }

      goto LABEL_71;
    }

    v154 = *(*v423 + 72);
    v155 = *(*(CMBaseObjectGetVTable() + 8) + 56);
    if (v155)
    {
      v153 = v155(v154, *MEMORY[0x1E6961108], SupportedProtocolVersions);
      if (!v153)
      {
        goto LABEL_158;
      }

      goto LABEL_241;
    }

    goto LABEL_162;
  }

  if (FigContentKeySpecifierGetKeySystem(v5) == 1)
  {
    v45 = *(*v423 + 72);
    if (v45)
    {
      if (*(*v423 + 96))
      {
        if (segPumpGetDecryptorState(v45) == 2)
        {
          goto LABEL_176;
        }

        v45 = *(*v423 + 72);
      }

      v44 = segPumpPrepareCryptorForKeyLoading(v45);
      if (!v44)
      {
        v178 = *v423;
        if (!*(*v423 + 96))
        {
          goto LABEL_203;
        }

        if (dword_1EAF16A30)
        {
          OUTLINED_FUNCTION_301_1();
          v186 = OUTLINED_FUNCTION_216_1(qword_1EAF16A28, v179, v180, v181, v182, v183, v184, v185, v339, v345, v350, v355, v360, v364, v368, v372, v376, v380, v384, v388, SupportedProtocolVersions, v397, v403, v408, v412, v413, v414, v415, v416[0], *&v416[4], v417);
          v194 = OUTLINED_FUNCTION_241_1(v186, v187, v188, v189, v190, v191, v192, v193, v343, v348, v353, v358, v362, v366, v370, v374, v378, v382, v386, v390, v395, v400, v406, v410, v412, v413, v414, v415, v416[0], *&v416[4], v417);
          if (OUTLINED_FUNCTION_77_0(v194))
          {
            OUTLINED_FUNCTION_197_1();
            OUTLINED_FUNCTION_306_0();
            OUTLINED_FUNCTION_371_0();
            v425 = 2114;
            OUTLINED_FUNCTION_5_1();
            v426 = v251;
            v427 = v252;
            v428 = v251;
            v429 = v253;
            v430 = 1024;
            v431 = v254;
            OUTLINED_FUNCTION_117();
            OUTLINED_FUNCTION_19_1();
            OUTLINED_FUNCTION_282();
            _os_log_send_and_compose_impl(v255, v256, v257, v258, v259, v260, v261, v262);
            OUTLINED_FUNCTION_328_0();
          }

          OUTLINED_FUNCTION_7();
          OUTLINED_FUNCTION_420(v263, v264, v265, v266, v267);
          v178 = *v423;
        }

        v268 = v178[14];
        if (!v268)
        {
LABEL_203:
          v49 = 1;
          goto LABEL_74;
        }

        v49 = 1;
        CFDataWithBlockBuffer = segPumpPrepareCryptorForKeyLoading(v268);
        if (!CFDataWithBlockBuffer && dword_1EAF16A30)
        {
          OUTLINED_FUNCTION_301_1();
          v276 = OUTLINED_FUNCTION_216_1(qword_1EAF16A28, v269, v270, v271, v272, v273, v274, v275, v339, v345, v350, v355, v360, v364, v368, v372, v376, v380, v384, v388, SupportedProtocolVersions, v397, v403, v408, v412, v413, v414, v415, v416[0], *&v416[4], v417);
          v284 = OUTLINED_FUNCTION_241_1(v276, v277, v278, v279, v280, v281, v282, v283, v344, v349, v354, v359, v363, v367, v371, v375, v379, v383, v387, v391, v396, v401, v407, v411, v412, v413, v414, v415, v416[0], *&v416[4], v417);
          if (OUTLINED_FUNCTION_77_0(v284))
          {
            OUTLINED_FUNCTION_197_1();
            OUTLINED_FUNCTION_306_0();
            OUTLINED_FUNCTION_371_0();
            v425 = 2114;
            OUTLINED_FUNCTION_5_1();
            v426 = v311;
            v427 = v312;
            v428 = v311;
            v429 = v313;
            v430 = 1024;
            v431 = v314;
            OUTLINED_FUNCTION_117();
            OUTLINED_FUNCTION_19_1();
            OUTLINED_FUNCTION_282();
            _os_log_send_and_compose_impl(v315, v316, v317, v318, v319, v320, v321, v322);
            OUTLINED_FUNCTION_328_0();
          }

          OUTLINED_FUNCTION_109();
          v49 = 1;
          OUTLINED_FUNCTION_38_0(v323, v324, v325, v326, v327);
          goto LABEL_74;
        }

        goto LABEL_73;
      }

LABEL_106:
      CFDataWithBlockBuffer = v44;
      goto LABEL_107;
    }
  }

  if (!v5 || FigContentKeySpecifierGetKeySystem(v5) != 2)
  {
    OUTLINED_FUNCTION_374();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v339, v345, v350);
    CFDataWithBlockBuffer = v46;
LABEL_72:
    v49 = 0;
    goto LABEL_73;
  }

  v44 = segPumpEnsureAndSetupBasicAESProtector(a2);
  if (v44)
  {
    goto LABEL_106;
  }

  if (*(cf + 5))
  {
    if (dword_1EAF16A30)
    {
      goto LABEL_117;
    }

LABEL_176:
    v49 = 0;
    goto LABEL_74;
  }

  v114 = v5;
  v115 = *(a2 + 248);
  v116 = FigGetAllocatorForMedia();
  v117 = cf;
  v118 = *(*(CMBaseObjectGetVTable() + 16) + 104);
  if (!v118)
  {
    CFDataWithBlockBuffer = 4294954514;
    goto LABEL_107;
  }

  CFDataWithBlockBuffer = v118(v115, v116, 1, 0, v117 + 40);
  v49 = 0;
  if (CFDataWithBlockBuffer)
  {
    v5 = v114;
  }

  else
  {
    v5 = v114;
    if (dword_1EAF16A30)
    {
LABEL_117:
      OUTLINED_FUNCTION_301_1();
      v126 = OUTLINED_FUNCTION_216_1(qword_1EAF16A28, v119, v120, v121, v122, v123, v124, v125, v339, v345, v350, v355, v360, v364, v368, v372, v376, v380, v384, v388, SupportedProtocolVersions, v397, v403, v408, v412, v413, v414, v415, v416[0], *&v416[4], v417);
      v134 = OUTLINED_FUNCTION_241_1(v126, v127, v128, v129, v130, v131, v132, v133, v342, v347, v352, v357, v361, v365, v369, v373, v377, v381, v385, v389, v394, v399, v405, v409, v412, v413, v414, v415, v416[0], *&v416[4], v417);
      if (OUTLINED_FUNCTION_77_0(v134))
      {
        OUTLINED_FUNCTION_197_1();
        OUTLINED_FUNCTION_306_0();
        *v424 = 136315906;
        *&v424[4] = "segPumpSetupCryptorForCryptKey";
        v425 = 2114;
        OUTLINED_FUNCTION_5_1();
        v426 = v195;
        v427 = v196;
        OUTLINED_FUNCTION_117();
        OUTLINED_FUNCTION_19_1();
        OUTLINED_FUNCTION_282();
        _os_log_send_and_compose_impl(v197, v198, v199, v200, v201, v202, v203, v204);
        OUTLINED_FUNCTION_328_0();
      }

      OUTLINED_FUNCTION_7();
      OUTLINED_FUNCTION_420(v205, v206, v207, v208, v209);
      goto LABEL_176;
    }
  }

LABEL_73:
  if (CFDataWithBlockBuffer)
  {
LABEL_107:
    v81 = 0;
LABEL_108:
    v97 = v403;
    goto LABEL_133;
  }

LABEL_74:
  v67 = v49 == 0;
  if (v49)
  {
    *(v412 + 152) = 0;
  }

  if (!*(a2 + 296))
  {
    goto LABEL_90;
  }

  *&v434[0] = 0;
  *v424 = 0;
  cf = 0;
  v68 = OUTLINED_FUNCTION_265();
  v71 = segPumpGetCryptKeyCommonData(v68, v69, v70);
  if (v71)
  {
    goto LABEL_233;
  }

  v78 = FigContentKeySpecifierGetIdentifier(v5);
  if (!v78)
  {
    OUTLINED_FUNCTION_374();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v339, v345, v350);
    goto LABEL_233;
  }

  v71 = FigStreamingCacheCopyCryptKey(*(a2 + 296), v78, v424);
  if (v71)
  {
LABEL_233:
    CFDataWithBlockBuffer = v71;
    v81 = 0;
    goto LABEL_86;
  }

  if (!*v424)
  {
    goto LABEL_90;
  }

  FigGetAllocatorForMedia();
  OUTLINED_FUNCTION_496();
  CFDataWithBlockBuffer = FigCreateCFDataWithBlockBuffer();
  v79 = cf;
  if (CFDataWithBlockBuffer)
  {
    v81 = 0;
    if (!cf)
    {
      goto LABEL_86;
    }

LABEL_84:
    CFRelease(v79);
    goto LABEL_86;
  }

  v80 = *&v434[0];
  *(*&v434[0] + 152) = 1;
  *(v80 + 154) = 1;
  if (!v79)
  {
    v81 = 0;
    CFDataWithBlockBuffer = 0;
    goto LABEL_86;
  }

  v81 = CFRetain(v79);
  v79 = cf;
  if (cf)
  {
    goto LABEL_84;
  }

LABEL_86:
  v82 = *v424;
  if (*v424)
  {
    CFRelease(*v424);
  }

  if (CFDataWithBlockBuffer)
  {
    goto LABEL_108;
  }

  if (v81)
  {
    OUTLINED_FUNCTION_185_1(v82, v72, v73, v74, *(v412 + 88), v75, v76, v77, v339, v345, v350, v355, v360, v364, v368, v372, v376, v380, v384, v388, SupportedProtocolVersions, v397);
    segPumpCryptSetKey();
    v97 = v403;
    if (v90)
    {
LABEL_131:
      CFDataWithBlockBuffer = v90;
      goto LABEL_133;
    }

    if (!*(v412 + 112))
    {
      CFDataWithBlockBuffer = 0;
      if (v49)
      {
        goto LABEL_133;
      }

      goto LABEL_130;
    }

    OUTLINED_FUNCTION_185_1(v90, v91, v92, v93, *(v412 + 128), v94, v95, v96, v339, v345, v350, v355, v360, v364, v368, v372, v376, v380, v384, v388, SupportedProtocolVersions, v397);
    segPumpCryptSetKey();
    CFDataWithBlockBuffer = v90;
    if ((v49 & 1) != 0 || v90)
    {
      goto LABEL_133;
    }

LABEL_130:
    v143 = OUTLINED_FUNCTION_185_1(v90, v91, v92, v93, v412, v94, v95, v96, v339, v345, v350, v355, v360, v364, v368, v372, v376, v380, v384, v388, SupportedProtocolVersions, v397);
    v90 = segPumpContinueIfCryptKeyResponseWasAlreadySet(v143, v144, v145, v146, v147);
    goto LABEL_131;
  }

LABEL_90:
  v83 = OUTLINED_FUNCTION_627();
  if (segPumpShouldRequestURLAsHTTPURL(v83, v84))
  {
    if (v5 && FigContentKeySpecifierGetKeySystem(v5) == 2)
    {
      v98 = *(a2 + 56);
      v99 = *(v408 + 552);
      v100 = *(a2 + 216);
      v101 = *(a2 + 240);
      v102 = *a2;
      memset(v434, 0, sizeof(v434));
      v436 = 0u;
      v437 = 0u;
      v435 = 0x800000000;
      v438 = 0;
      v97 = v403;
      segPumpCreateHTTPRequest(a2, v98, v408, v99, v403, v11, v100, v101, 0, 0x10000000CLL, v434, 0, 0, segPumpCryptMemoryRequestCallback, segPumpCryptFileReadCallback, v102, 0, v408 + 544, v384, v388, SupportedProtocolVersions, v397, v403, v408, HIDWORD(v408), v412, v413, v414, v415, *v416, v417, cf, v419);
      CFDataWithBlockBuffer = v90;
      if (dword_1EAF16A30)
      {
        LODWORD(cf) = 0;
        v423[0] = OS_LOG_TYPE_DEFAULT;
        v103 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        v104 = v423[0];
        v105 = os_log_type_enabled(v103, v423[0]);
        if (OUTLINED_FUNCTION_77_0(v105))
        {
          OUTLINED_FUNCTION_197_1();
          OUTLINED_FUNCTION_306_0();
          *v424 = 136316162;
          *&v424[4] = "segPumpSendCryptKeyRequest";
          v425 = 2114;
          OUTLINED_FUNCTION_5_1();
          v426 = v106;
          v427 = v107;
          v428 = 1024;
          LODWORD(v429) = CFDataWithBlockBuffer;
          OUTLINED_FUNCTION_117();
          OUTLINED_FUNCTION_19_1();
          _os_log_send_and_compose_impl(v108, v109, v110, v111, v112, v103, v104, v113);
        }

        OUTLINED_FUNCTION_7();
        OUTLINED_FUNCTION_420(v135, v136, v137, v138, v139);
        v97 = v404;
      }

      goto LABEL_122;
    }

    OUTLINED_FUNCTION_214_1(a2, v408, (v408 + 544), -12885, @"CoreMediaErrorDomain", @"Cannot fetch wrapped key via http", v85, v86, 0x300000003);
    OUTLINED_FUNCTION_374();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v341, v345, v350);
    goto LABEL_106;
  }

  *&v434[0] = 0;
  v87 = OUTLINED_FUNCTION_265();
  v90 = segPumpGetCryptKeyCommonData(v87, v88, v89);
  v97 = v403;
  if (v90)
  {
LABEL_111:
    CFDataWithBlockBuffer = 0;
    goto LABEL_122;
  }

  if (*(*&v434[0] + 72))
  {
    if (!*(*&v434[0] + 96))
    {
      if (!*(*&v434[0] + 112))
      {
        goto LABEL_111;
      }

LABEL_110:
      if (!*(*&v434[0] + 136))
      {
        goto LABEL_111;
      }
    }
  }

  else if (*(*&v434[0] + 112))
  {
    goto LABEL_110;
  }

  v90 = segPumpRequestCustomURLForCryptKey(a2, v408, v5, v49);
  CFDataWithBlockBuffer = v90;
  if (v90)
  {
    v81 = 0;
    goto LABEL_133;
  }

  v67 = 1;
LABEL_122:
  v81 = 0;
  if (!v67)
  {
    if (v49)
    {
      goto LABEL_133;
    }

    goto LABEL_130;
  }

  if (!CFDataWithBlockBuffer)
  {
    v140 = *(a2 + 8);
    v141 = 2 * v140;
    if ((2 * v140) <= 3)
    {
      v141 = 3;
    }

    v142 = v141;
    if (!v140)
    {
      v142 = 20.0;
    }

    FigHTTPCreateTimer(*a2, &segPumpCryptKeyTimeoutHandler, *(a2 + 64), (v408 + 640), v142);
    v81 = 0;
  }

  if ((v49 & 1) == 0)
  {
    goto LABEL_130;
  }

LABEL_133:
  if (v11)
  {
    CFRelease(v11);
  }

  if (v81)
  {
    CFRelease(v81);
  }

  if (v97)
  {
    v148 = v97;
LABEL_198:
    CFRelease(v148);
  }

  return CFDataWithBlockBuffer;
}