void figPlaybackCoordinator_timelineCoordinatorParticipantsDidChangeDispatch(CFTypeRef *a1)
{
  v53 = *MEMORY[0x1E69E9840];
  FigPlaybackCoordinatorGetCMBaseObject();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v3 = FigCFWeakReferenceHolderCopyReferencedObject();
  cf = 0;
  v46 = 0;
  v4 = a1[1];
  if (!v4 || !v3)
  {
    goto LABEL_33;
  }

  v5 = *MEMORY[0x1E6963278];
  if (CFDictionaryContainsKey(v4, *MEMORY[0x1E6963278]))
  {
    Value = CFDictionaryGetValue(a1[1], v5);
    if (!Value)
    {
      goto LABEL_33;
    }

    v7 = Value;
    v8 = CFGetTypeID(Value);
    if (v8 != CFArrayGetTypeID())
    {
      goto LABEL_33;
    }
  }

  else
  {
    v7 = 0;
  }

  if (CFArrayGetCount(v7) < 1)
  {
    *(DerivedStorage + 104) = 1;
    FigPlayerGetFigBaseObject();
    v39 = v38;
    v40 = *(*(CMBaseObjectGetVTable() + 8) + 56);
    if (v40)
    {
      v40(v39, @"ParticipatingInCoordinatedPlayback", *MEMORY[0x1E695E4C0]);
    }

    if (*(DerivedStorage + 48))
    {
      FigPlaybackItemGetFigBaseObject();
      v42 = v41;
      v43 = *(*(CMBaseObjectGetVTable() + 8) + 56);
      if (v43)
      {
        v43(v42, @"TransientTimebaseForCoordinatedPlaybackSynchronization", 0);
      }
    }

    goto LABEL_32;
  }

  if (!*(DerivedStorage + 104))
  {
LABEL_31:
    figPlaybackCoordinator_updateReportingStats();
LABEL_32:
    figPlaybackCoordinator_updateReportingStats();
    goto LABEL_33;
  }

  v44 = 0.0;
  *(DerivedStorage + 104) = 0;
  v9 = *MEMORY[0x1E695E4D0];
  FigPlayerGetFigBaseObject();
  v11 = v10;
  v12 = *(*(CMBaseObjectGetVTable() + 8) + 56);
  if (v12)
  {
    v12(v11, @"ParticipatingInCoordinatedPlayback", v9);
  }

  FigPlaybackCoordinatorGetCMBaseObject();
  CMBaseObjectGetDerivedStorage();
  v13 = *(*(CMBaseObjectGetVTable() + 16) + 48);
  if (v13)
  {
    v13(v3, &v44);
  }

  v14 = *(*(CMBaseObjectGetVTable() + 16) + 32);
  if (v14)
  {
    v14(v3, 0, &cf);
    v14 = cf;
  }

  if (v14 != *(DerivedStorage + 48) || v44 == 0.0 || v44 == *(DerivedStorage + 176))
  {
    FigTimelineCoordinatorReapplyGroupStateViaTimelineControl();
    goto LABEL_31;
  }

  if (!FPSupport_CreateSetRateOptions(*MEMORY[0x1E695E480], 33, &v46))
  {
    FigCFDictionarySetValue();
    FigCFDictionarySetValue();
    if (dword_1ED4CBE70)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      OUTLINED_FUNCTION_134();
      if (v17)
      {
        v18 = v16;
      }

      else
      {
        v18 = 0;
      }

      if (v18)
      {
        v19 = *a1;
        v20 = *(DerivedStorage + 496);
        v47 = 136315650;
        v48 = "figPlaybackCoordinator_timelineCoordinatorParticipantsDidChangeDispatch";
        v49 = 2048;
        v50 = v19;
        v51 = 1024;
        v52 = v20;
        OUTLINED_FUNCTION_108();
        OUTLINED_FUNCTION_61_5(v21, v22, v23, v24, v25, v26, v27, v28);
      }

      OUTLINED_FUNCTION_7();
      OUTLINED_FUNCTION_238_0(v29, v30, v31, v32, v33);
    }

    v34 = v44;
    v35 = v46;
    v36 = *(*(CMBaseObjectGetVTable() + 16) + 104);
    if (v36)
    {
      if (!v36(v3, v35, v34))
      {
        goto LABEL_31;
      }
    }
  }

LABEL_33:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v3)
  {
    CFRelease(v3);
  }

  if (*a1)
  {
    CFRelease(*a1);
  }

  v37 = a1[1];
  if (v37)
  {
    CFRelease(v37);
  }

  if (v46)
  {
    CFRelease(v46);
  }

  free(a1);
}

CFComparisonResult figPlaybackCoordinator_updateReportingStats()
{
  FigPlaybackCoordinatorGetCMBaseObject();
  result = CMBaseObjectGetDerivedStorage();
  if (!*(result + 320))
  {
    return result;
  }

  v1 = result;
  result = OUTLINED_FUNCTION_15_36();
  if (result == kCFCompareEqualTo)
  {
    goto LABEL_24;
  }

  result = OUTLINED_FUNCTION_15_36();
  if (result == kCFCompareEqualTo)
  {
    goto LABEL_24;
  }

  result = OUTLINED_FUNCTION_15_36();
  if (result == kCFCompareEqualTo)
  {
    if (!*(v1 + 320))
    {
      return result;
    }

    VTable = CMBaseObjectGetVTable();
    v11 = *(VTable + 16);
    result = VTable + 16;
    if (!*(v11 + 40))
    {
      return result;
    }

    v8 = OUTLINED_FUNCTION_20_24();

    return v9(v8);
  }

  result = OUTLINED_FUNCTION_15_36();
  if (result == kCFCompareEqualTo)
  {
LABEL_24:
    if (!*(v1 + 320))
    {
      return result;
    }

    v6 = CMBaseObjectGetVTable();
    v7 = *(v6 + 16);
    result = v6 + 16;
    if (!*(v7 + 32))
    {
      return result;
    }

    v8 = OUTLINED_FUNCTION_20_24();

    return v9(v8);
  }

  result = OUTLINED_FUNCTION_15_36();
  if (result == kCFCompareEqualTo)
  {
    if (*(v1 + 320))
    {
      v2 = CMBaseObjectGetVTable();
      v3 = *(v2 + 16);
      result = v2 + 16;
      if (*(v3 + 56))
      {
        v4 = OUTLINED_FUNCTION_20_24();

        return v5(v4);
      }
    }
  }

  return result;
}

uint64_t figPlaybackCoordinator_EndSuspension()
{
  FigPlaybackCoordinatorGetCMBaseObject();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  v1 = FigTimelineCoordinatorEndSuspension();
  if (!v1 && !FigTimelineCoordinatorIsSuspended())
  {
    *(DerivedStorage + 328) = 1;
  }

  FigSimpleMutexUnlock();
  return v1;
}

void playbackCoordinator_stopTrackingPlayerOnQueue(const void *a1)
{
  figPlaybackCoordinator_transitionToNewCurrentItem(a1, 0);
  if (a1)
  {

    CFRelease(a1);
  }
}

uint64_t playbackCoordinator_performStartupTaskNegotiatingTimingWithCoordinatedPlaybackGroup_cold_1(uint64_t a1, uint64_t a2, int a3)
{
  v5.n128_f64[0] = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v7, a3, v9);

  return v8(a1, a2, 1, v5);
}

void figPlaybackCoordinator_currentItemReadyForPlayback_cold_2(uint64_t a1, uint64_t a2, uint64_t a3)
{
  figPlaybackCoordinator_setIntegratedTimelineOffsetTimesForItem(a1, a2);
  if ((*(a3 + 64) & 0xFFFFFFFE) == 0x64)
  {
    *(a3 + 64) = 102;
  }

  figPlaybackCoordinator_startTrackingPlaybackStateIfReady(a1);
  if ((*(a3 + 64) - 102) <= 0x26A9)
  {

    figPlaybackCoordinator_resetTimelineCoordinatorStateToCurrentItemIdentifierAndTiming(a1);
  }
}

void figPlaybackCoordinator_interstitialTimerEventProc_cold_1(const void *a1)
{
  FigPlaybackCoordinatorGetCMBaseObject();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v3 = *MEMORY[0x1E695E480];
  v4 = *(DerivedStorage + 408);
  *&v7.start.value = *(DerivedStorage + 392);
  *&v7.start.epoch = v4;
  *&v7.duration.timescale = *(DerivedStorage + 424);
  v5 = CMTimeRangeCopyDescription(v3, &v7);
  CFRelease(v5);
  if (*(DerivedStorage + 388))
  {
    v6 = 3;
  }

  else
  {
    v6 = 2;
  }

  figPlaybackCoordinator_updateInterstitialStateMachine(a1, v6);
  CFRelease(a1);
}

uint64_t playbackCoordinator_beginSystemEventSuspensionForReason_cold_1(uint64_t a1, uint64_t a2)
{
  VTable = CMBaseObjectGetVTable();
  v6 = *(VTable + 16);
  result = VTable + 16;
  v7 = *(v6 + 8);
  if (v7)
  {
    return v7(a1, a2);
  }

  return result;
}

uint64_t figPlaybackCoordinator_handleChangeInInterstitialActiveStatusOnQueue_cold_1(const void *a1)
{
  FigPlaybackCoordinatorGetCMBaseObject();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  if (!*(DerivedStorage + 448) && !FigTimelineCoordinatorSuspensionCreate())
  {
    v3 = *(DerivedStorage + 448);
    if (v3)
    {
      figPlaybackCoordinator_BeginSuspension(a1, v3);
    }
  }

  return FigSimpleMutexUnlock();
}

uint64_t figPlaybackCoordinator_isSuspendedForReason_cold_1(const __CFArray *a1, CFArrayRef *a2, const __CFString *a3, char *a4)
{
  result = CFArrayGetCount(a1);
  if (result < 1)
  {
LABEL_5:
    v11 = 0;
  }

  else
  {
    v8 = result;
    v9 = 0;
    while (1)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(*a2, v9);
      result = CFStringCompare(ValueAtIndex, a3, 0);
      if (!result)
      {
        break;
      }

      if (v8 == ++v9)
      {
        goto LABEL_5;
      }
    }

    v11 = 1;
  }

  *a4 = v11;
  return result;
}

uint64_t figTTMLHead_ConsumeChildNode(uint64_t a1, CFTypeRef *a2, CFTypeRef *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v27 = 0;
  cf = 0;
  v26 = 0;
  v7 = FigTTMLGetLibXMLAccess();
  if (!v7)
  {
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v25, v26, v27);
    goto LABEL_31;
  }

  if ((*(v7 + 72))(a1) != 1)
  {
    goto LABEL_20;
  }

  v8 = FigTTMLCopyNamespaceAndLocalNameOfCurrentNode(a1, &v27, &v26);
  if (v8)
  {
    goto LABEL_31;
  }

  if (FigCFEqual() && FigCFEqual())
  {
    CFGetAllocator(*a2);
    OUTLINED_FUNCTION_0_143();
    v8 = FigTTMLStylingCreate(v9, v10, v11, v12);
    if (!v8)
    {
      v13 = *(DerivedStorage + 136);
      v14 = cf;
      *(DerivedStorage + 136) = cf;
      if (!v14)
      {
        goto LABEL_9;
      }

      goto LABEL_8;
    }

    goto LABEL_31;
  }

  if (FigCFEqual() && FigCFEqual())
  {
    CFGetAllocator(*a2);
    OUTLINED_FUNCTION_0_143();
    v8 = FigTTMLLayoutCreate(v15, v16, v17, v18);
    if (!v8)
    {
      v13 = *(DerivedStorage + 144);
      v14 = cf;
      *(DerivedStorage + 144) = cf;
      if (!v14)
      {
LABEL_9:
        if (v13)
        {
          CFRelease(v13);
        }

        goto LABEL_21;
      }

LABEL_8:
      CFRetain(v14);
      goto LABEL_9;
    }

LABEL_31:
    v23 = v8;
    goto LABEL_23;
  }

  if (FigCFEqual() && FigCFEqual())
  {
    CFGetAllocator(*a2);
    OUTLINED_FUNCTION_0_143();
    v8 = FigTTMLProfileCreate(v19, v20, v21, v22);
    if (v8)
    {
      goto LABEL_31;
    }

    CFArrayAppendValue(*(DerivedStorage + 152), cf);
  }

  else
  {
LABEL_20:
    v8 = FigTTMLSkipNode(a1, a2, *(DerivedStorage + 128));
    if (v8)
    {
      goto LABEL_31;
    }
  }

LABEL_21:
  v23 = 0;
  if (a3)
  {
    *a3 = cf;
    cf = 0;
  }

LABEL_23:
  if (v26)
  {
    CFRelease(v26);
  }

  if (v27)
  {
    CFRelease(v27);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  return v23;
}

void CopyCreationDate(const __CFAllocator *a1, CFTypeRef *a2, CFDateRef *a3)
{
  v24 = 0;
  cf = 0;
  v23 = 0;
  AssureQuickTimeMetadataReaderCreated(a2);
  if (a2[12] && *(*(CMBaseObjectGetVTable() + 16) + 8))
  {
    v6 = OUTLINED_FUNCTION_1_129();
    v7(v6);
  }

  AssureiTunesMetadataReaderCreated(a2);
  if (a2[14] && *(*(CMBaseObjectGetVTable() + 16) + 8))
  {
    v8 = OUTLINED_FUNCTION_1_129();
    v9(v8);
  }

  AssureQuickTimeUserDataReaderCreated(a2);
  if (a2[11] && *(*(CMBaseObjectGetVTable() + 16) + 8))
  {
    v10 = OUTLINED_FUNCTION_1_129();
    v11(v10);
  }

  AssureISOUserDataReaderCreated(a2);
  if (a2[13] && *(*(CMBaseObjectGetVTable() + 16) + 8))
  {
    v12 = OUTLINED_FUNCTION_1_129();
    v13(v12);
  }

  v22 = 0;
  MovieInformationLockForRead(a2[1]);
  MovieInformationGetTimeInfo(a2[1], &v22, 0);
  MovieInformationUnlockForRead(a2[1]);
  if (v22 && (v21 = CFDateCreate(a1, v22 - *MEMORY[0x1E695E460])) != 0)
  {
    *a3 = v21;
    if (v23)
    {
      CFRelease(v23);
    }
  }

  else
  {
    OUTLINED_FUNCTION_74_8(0, v14, v15, v16, v17, v18, v19, v20, v22, v23);
  }
}

uint64_t CopyPictureCollection(uint64_t a1, uint64_t a2, void *a3)
{
  v8 = 0;
  cf = 0;
  v5 = MovieInformationCopyIFFItemInformation(*(a2 + 8), &cf);
  if (v5)
  {
    v6 = v5;
  }

  else
  {
    if (!cf)
    {
      return 0;
    }

    v6 = FigPictureCollectionCreateFromIFFItemInformation(a1, cf, &v8);
    if (!v6)
    {
      *a3 = v8;
      v8 = 0;
    }
  }

  if (cf)
  {
    CFRelease(cf);
  }

  return v6;
}

double MovieEditCursorServiceCreateCursorAtTrackTime(const void *a1, uint64_t a2, void *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v22 = 0;
  v23 = 0;
  memset(__src, 0, sizeof(__src));
  if (*DerivedStorage && (v7 = DerivedStorage, MovieTrackIsValid(DerivedStorage[1])))
  {
    v8 = v7[1];
    MovieInformationLockForRead(*v7);
    OUTLINED_FUNCTION_3_102();
    EditIndexForTrackTime = MovieTrackFindEditIndexForTrackTime(v8, v9, &v22, v10, v11, v12, v13, v14);
    if (!EditIndexForTrackTime)
    {
      EditIndexForTrackTime = MovieTrackGetEditSegmentWithIndex(v8, v22, __src);
    }

    MovieInformationUnlockForRead(*v7);
    if (!EditIndexForTrackTime)
    {
      CFGetAllocator(a1);
      FigEditCursorGetClassID();
      if (!CMDerivedObjectCreate())
      {
        v17 = CMBaseObjectGetDerivedStorage();
        v18 = *v7;
        if (*v7)
        {
          v18 = CFRetain(v18);
        }

        *v17 = v18;
        v19 = v7[1];
        if (v19)
        {
          v19 = CFRetain(v19);
        }

        *(v17 + 8) = v19;
        *(v17 + 16) = v22;
        memcpy((v17 + 20), __src, 0x60uLL);
        *a3 = v23;
      }
    }
  }

  else
  {
    emitter = fig_log_get_emitter();

    return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 4294954511, "<<< FFR_Movie >>>", 5023, v3);
  }

  return result;
}

double MovieEditCursorCopy(const void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (MovieTrackIsValid(*(DerivedStorage + 8)))
  {
    CFGetAllocator(a1);
    FigEditCursorGetClassID();
    if (!CMDerivedObjectCreate())
    {
      v4 = CMBaseObjectGetDerivedStorage();
      v5 = *DerivedStorage;
      if (*DerivedStorage)
      {
        v5 = CFRetain(v5);
      }

      *v4 = v5;
      v6 = *(DerivedStorage + 8);
      if (v6)
      {
        v6 = CFRetain(v6);
      }

      *(v4 + 8) = v6;
      *(v4 + 16) = *(DerivedStorage + 16);
      memcpy((v4 + 20), (DerivedStorage + 20), 0x60uLL);
      OUTLINED_FUNCTION_74_8(0, v7, v8, v9, v10, v11, v12, v13, v14, 0);
    }
  }

  else
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_3_5();

    return FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
  }

  return result;
}

uint64_t MovieEditCursorStep(uint64_t a1, int a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v5 = *(DerivedStorage + 8);
  MovieInformationLockForRead(*DerivedStorage);
  ValidateMovieEditCursor(a1);
  if (v6)
  {
    EditSegmentWithIndex = v6;
    v9 = 0;
  }

  else
  {
    EditSegmentCount = MovieTrackGetEditSegmentCount(v5);
    v8 = *(DerivedStorage + 16) + a2;
    if (v8 < 0)
    {
      v8 = 0;
      v9 = 1;
    }

    else if (EditSegmentCount > v8)
    {
      v9 = 0;
    }

    else
    {
      v8 = EditSegmentCount - 1;
      v9 = 1;
    }

    *(DerivedStorage + 16) = v8;
    EditSegmentWithIndex = MovieTrackGetEditSegmentWithIndex(*(DerivedStorage + 8), v8, (DerivedStorage + 20));
  }

  MovieInformationUnlockForRead(*DerivedStorage);
  if (((EditSegmentWithIndex == 0) & v9) != 0)
  {
    return 4294954776;
  }

  else
  {
    return EditSegmentWithIndex;
  }
}

uint64_t MovieEditCursorGetEditSegment(uint64_t a1, void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  MovieInformationLockForRead(*DerivedStorage);
  ValidateMovieEditCursor(a1);
  v6 = v5;
  if (!v5)
  {
    memcpy(a2, DerivedStorage + 20, 0x60uLL);
  }

  MovieInformationUnlockForRead(*DerivedStorage);
  return v6;
}

double ValidateMovieEditCursor(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v2 = *(DerivedStorage + 8);
  memset(v17, 0, sizeof(v17));
  v16 = 0u;
  memset(v15, 0, sizeof(v15));
  if (MovieInformationIsMutable(*DerivedStorage))
  {
    if (MovieTrackIsValid(*(DerivedStorage + 8)) && (EditSegmentCount = MovieTrackGetEditSegmentCount(v2), v5 = *(DerivedStorage + 16), EditSegmentCount > v5))
    {
      if (!MovieTrackGetEditSegmentWithIndex(*(DerivedStorage + 8), v5, v15))
      {
        *&time1.value = v16;
        time1.epoch = *&v17[0];
        if (OUTLINED_FUNCTION_268(*(DerivedStorage + 84), v10.value, *&v10.timescale, v10.epoch, v11, *(DerivedStorage + 68), *(DerivedStorage + 76), time.epoch, v13, v16) || (time1 = v15[0], OUTLINED_FUNCTION_268(*(DerivedStorage + 36), v10.value, *&v10.timescale, v10.epoch, v11, *(DerivedStorage + 20), *(DerivedStorage + 28), time.epoch, v13, v15[0].value)))
        {
          fig_log_get_emitter();
          OUTLINED_FUNCTION_0_4();
          return FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
        }

        else if ((v15[0].flags & 0x1D) == 1)
        {
          time1 = *(DerivedStorage + 92);
          if (OUTLINED_FUNCTION_268(*(DerivedStorage + 60), v10.value, *&v10.timescale, v10.epoch, v11, *(DerivedStorage + 44), *(DerivedStorage + 52), time.epoch, v13, time1.value))
          {
            v6 = *(DerivedStorage + 92);
            v7 = *(DerivedStorage + 100);
            time = v15[1];
            CMTimeMultiplyByRatio(&time1, &time, v6, v7);
            v8 = *(DerivedStorage + 44);
            v9 = *(DerivedStorage + 52);
            v10 = *(v17 + 8);
            CMTimeMultiplyByRatio(&time, &v10, v8, v9);
            if (CMTimeCompare(&time1, &time))
            {
              fig_log_get_emitter();
              OUTLINED_FUNCTION_0_4();
              return FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
            }
          }

          else
          {
            time1 = v15[1];
            time = *(v17 + 8);
            if (CMTimeCompare(&time1, &time))
            {
              fig_log_get_emitter();
              OUTLINED_FUNCTION_0_4();
              return FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
            }
          }
        }
      }
    }

    else
    {
      fig_log_get_emitter();
      OUTLINED_FUNCTION_0_4();

      return FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
    }
  }

  return result;
}

uint64_t MovieFormatReaderParseAdditionalFragments(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v43 = 0;
  v6 = MovieInformationLockForWrite(*(DerivedStorage + 8));
  if (v6)
  {
    return v6;
  }

  v7 = *(DerivedStorage + 8);
  if (*(v7 + 90))
  {
    v41 = a3;
    MovieInformationClearChangeBits(v7, 1);
    v42 = DerivedStorage;
    MoovParseIncrementalFragments(*(DerivedStorage + 8), &v43);
    v39 = v8;
    v9 = CMBaseObjectGetDerivedStorage();
    if (MovieInformationGetChangeBits(*(v9 + 8)))
    {
      DefaultLocalCenter = CMNotificationCenterGetDefaultLocalCenter();
      OUTLINED_FUNCTION_5_87(DefaultLocalCenter, @"DurationChanged", a1);
    }

    v37 = a1;
    TrackCount = MovieInformationGetTrackCount(*(v9 + 8));
    if (TrackCount >= 1)
    {
      v12 = TrackCount;
      v13 = 0;
      v14 = *MEMORY[0x1E695E480];
      v15 = MEMORY[0x1E695E9E8];
      do
      {
        TrackForTrackIndex = MovieInformationFindTrackForTrackIndex(*(v9 + 8), v13);
        AudioQueue = FigAudioQueueTimingShimGetAudioQueue(TrackForTrackIndex);
        if (AudioQueue)
        {
          v18 = AudioQueue;
          cf = 0;
          CopyTrackReader(v9, TrackForTrackIndex, &cf);
          v19 = cf;
          if (cf)
          {
            if ((v18 & 2) != 0)
            {
              v20 = CFDictionaryCreate(v14, kFigTrackReaderPayloadKey_FragmentWasAdded, MEMORY[0x1E695E4D0], 1, MEMORY[0x1E695E9D8], v15);
              CMNotificationCenterGetDefaultLocalCenter();
              CMNotificationCenterPostNotification();
              if (v20)
              {
                CFRelease(v20);
              }
            }

            if (v18)
            {
              v21 = CMNotificationCenterGetDefaultLocalCenter();
              OUTLINED_FUNCTION_5_87(v21, @"SampleCountChanged", v19);
            }

            CFRelease(v19);
          }
        }

        ++v13;
      }

      while (v12 != v13);
    }

    if ((v43 & 4) != 0)
    {
      v22 = v41;
      DerivedStorage = v42;
      v23 = v39;
      if (*(*(v42 + 8) + 91))
      {
        v26 = CMNotificationCenterGetDefaultLocalCenter();
        OUTLINED_FUNCTION_5_87(v26, @"CouldContainFragmentsChanged", v37);
        v27 = CMNotificationCenterGetDefaultLocalCenter();
        OUTLINED_FUNCTION_5_87(v27, @"ContainsFragmentsChanged", v37);
        FigSimpleMutexLock();
        v28 = FigCFDictionaryCopyArrayOfValues();
        FigSimpleMutexUnlock();
        Count = CFArrayGetCount(v28);
        if (Count >= 1)
        {
          v30 = Count;
          for (i = 0; i != v30; ++i)
          {
            ValueAtIndex = CFArrayGetValueAtIndex(v28, i);
            v33 = CMNotificationCenterGetDefaultLocalCenter();
            OUTLINED_FUNCTION_5_87(v33, @"TimeRangesMayNoLongerIncrease", ValueAtIndex);
          }
        }

        if (v28)
        {
          CFRelease(v28);
        }
      }
    }

    else
    {
      v22 = v41;
      DerivedStorage = v42;
      v23 = v39;
      if ((v43 & 2) != 0)
      {
        v24 = *(v42 + 8);
        if (!*(v24 + 92))
        {
          *(v24 + 92) = 1;
          v25 = CMNotificationCenterGetDefaultLocalCenter();
          OUTLINED_FUNCTION_5_87(v25, @"ContainsFragmentsChanged", v37);
        }
      }
    }

    if (v22)
    {
      *v22 = v43;
    }
  }

  else
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_0_4();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v36, v38, v40);
    v23 = v35;
  }

  MovieInformationUnlockForWrite(*(DerivedStorage + 8));
  return v23;
}

uint64_t MovieFormatReaderCopyTrackByIndex(uint64_t a1, uint64_t a2, void *a3, _DWORD *a4, _DWORD *a5)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  MovieInformationLockForRead(*(DerivedStorage + 8));
  TrackForTrackIndex = MovieInformationFindTrackForTrackIndex(*(DerivedStorage + 8), a2);
  if (TrackForTrackIndex)
  {
    v11 = TrackForTrackIndex;
    if (!a3 || (CopyTrackReader(DerivedStorage, TrackForTrackIndex, a3), !BasicInfo))
    {
      BasicInfo = MovieTrackGetBasicInfo(v11, a4, a5);
    }

    v13 = BasicInfo;
  }

  else
  {
    v13 = 4294954453;
  }

  MovieInformationUnlockForRead(*(DerivedStorage + 8));
  return v13;
}

uint64_t MovieFormatReaderCopyTrackByID(uint64_t a1, int a2, void *a3, _DWORD *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  MovieInformationLockForRead(*(DerivedStorage + 8));
  TrackForTrackID = MovieInformationFindTrackForTrackID(*(DerivedStorage + 8), a2);
  if (TrackForTrackID)
  {
    v9 = TrackForTrackID;
    if (!a3 || (CopyTrackReader(DerivedStorage, TrackForTrackID, a3), !BasicInfo))
    {
      BasicInfo = MovieTrackGetBasicInfo(v9, a4, 0);
    }
  }

  else
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_3_5();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v13, v14, v15);
  }

  v11 = BasicInfo;
  MovieInformationUnlockForRead(*(DerivedStorage + 8));
  return v11;
}

uint64_t MovieFormatReaderCopyTrackByType(uint64_t a1, uint64_t a2, int a3, void *a4, _DWORD *a5)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  MovieInformationLockForRead(*(DerivedStorage + 8));
  NthTrackOfType = MovieInformationFindNthTrackOfType(*(DerivedStorage + 8), a2, a3);
  if (NthTrackOfType)
  {
    v11 = NthTrackOfType;
    if (!a4 || (CopyTrackReader(DerivedStorage, NthTrackOfType, a4), !BasicInfo))
    {
      BasicInfo = MovieTrackGetBasicInfo(v11, 0, a5);
    }

    v13 = BasicInfo;
  }

  else
  {
    v13 = 4294954453;
  }

  MovieInformationUnlockForRead(*(DerivedStorage + 8));
  return v13;
}

uint64_t CopyLoudnessDictionaryFromUserData(void *a1, uint64_t a2, void *a3)
{
  cf = 0;
  ioPropertyDataSize = 8;
  v5 = *a1;
  if (!*(*a1 + 81))
  {
    if (!*(v5 + 84))
    {
      goto LABEL_3;
    }

LABEL_5:
    v6 = @"uiso";
    v7 = AssureTrackISOUserDataReaderCreated(a1);
    goto LABEL_6;
  }

  if (!*(v5 + 82))
  {
    goto LABEL_5;
  }

LABEL_3:
  v6 = @"udta";
  v7 = AssureTrackQuickTimeUserDataReaderCreated(a1);
LABEL_6:
  v8 = v7;
  if (!v7 || (v9 = *(*(CMBaseObjectGetVTable() + 16) + 40)) == 0 || (v10 = v9(v8, v6, @"ludt"), v11 = v10 - 1, v10 < 1))
  {
LABEL_15:
    v15 = 4294954513;
    goto LABEL_17;
  }

  v12 = *(*(CMBaseObjectGetVTable() + 16) + 48);
  if (v12)
  {
    Property = v12(v8, v6, @"ludt", v11, a2, &cf, 0);
    if (Property)
    {
LABEL_14:
      v15 = Property;
      goto LABEL_17;
    }

    if (!cf)
    {
      return 4294954513;
    }

    v14 = CFGetTypeID(cf);
    if (v14 == CFDataGetTypeID())
    {
      Property = AudioFormatGetProperty(0x6C646C62u, 8u, &cf, &ioPropertyDataSize, a3);
      goto LABEL_14;
    }

    goto LABEL_15;
  }

  v15 = 4294954514;
LABEL_17:
  if (cf)
  {
    CFRelease(cf);
  }

  return v15;
}

double MovieTrackReaderCopySampleCursorService(const void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*DerivedStorage && (v3 = DerivedStorage, MovieTrackIsValid(DerivedStorage[1])))
  {
    if (!MoovAssureSampleTableParsed(*v3))
    {
      CFGetAllocator(a1);
      FigSampleCursorServiceGetClassID();
      if (CMDerivedObjectCreate())
      {
        fig_log_get_emitter();
        OUTLINED_FUNCTION_3_5();
        return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v15, 0, v16);
      }

      else
      {
        v12 = CMBaseObjectGetDerivedStorage();
        v13 = *v3;
        if (*v3)
        {
          v13 = CFRetain(v13);
        }

        *v12 = v13;
        v14 = v3[1];
        if (v14)
        {
          v14 = CFRetain(v14);
        }

        v12[1] = v14;
        OUTLINED_FUNCTION_74_8(v14, v5, v6, v7, v8, v9, v10, v11, v15, 0);
      }
    }
  }

  else
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_3_5();

    return FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
  }

  return result;
}

uint64_t MovieCursorService_createCursorAtPresentationTimeStamp(const void *a1, uint64_t a2, void *a3, _BYTE *a4, _BYTE *a5)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v18 = 0;
  MovieInformationLockForRead(*DerivedStorage);
  v10 = CFGetAllocator(a1);
  v11 = CreateMovieSampleCursor(v10, *DerivedStorage, DerivedStorage[1], &v18);
  if (v11)
  {
    v16 = v11;
  }

  else
  {
    v12 = v18;
    CMBaseObjectGetDerivedStorage();
    OUTLINED_FUNCTION_3_102();
    MovieSampleAccessorMoveToSampleAtPTS(v13, v14, a4, a5);
    v16 = v15;
    if (v15)
    {
      if (v12)
      {
        CFRelease(v12);
      }
    }

    else
    {
      *a3 = v12;
    }
  }

  MovieInformationUnlockForRead(*DerivedStorage);
  return v16;
}

uint64_t MovieCursorService_createCursorNearPresentationTimeStamp(const void *a1, uint64_t a2, uint64_t a3, void *a4, _BYTE *a5, _BYTE *a6)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v19 = 0;
  MovieInformationLockForRead(*DerivedStorage);
  v11 = CFGetAllocator(a1);
  v12 = CreateMovieSampleCursor(v11, *DerivedStorage, DerivedStorage[1], &v19);
  if (v12)
  {
    v17 = v12;
  }

  else
  {
    v13 = v19;
    CMBaseObjectGetDerivedStorage();
    OUTLINED_FUNCTION_3_102();
    MovieSampleAccessorMoveToSampleAtPTS(v14, v15, a5, a6);
    v17 = v16;
    if (v16)
    {
      if (v13)
      {
        CFRelease(v13);
      }
    }

    else
    {
      *a4 = v13;
    }
  }

  MovieInformationUnlockForRead(*DerivedStorage);
  return v17;
}

uint64_t MovieCursorService_createCursorAtFirstSampleInDecodeOrder(const void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v15 = 0;
  MovieInformationLockForRead(*DerivedStorage);
  v3 = CFGetAllocator(a1);
  v4 = CreateMovieSampleCursor(v3, *DerivedStorage, DerivedStorage[1], &v15);
  v12 = v4;
  if (!v4)
  {
    OUTLINED_FUNCTION_74_8(v4, v5, v6, v7, v8, v9, v10, v11, v14, v15);
  }

  MovieInformationUnlockForRead(*DerivedStorage);
  return v12;
}

uint64_t MovieCursorService_createCursorAtLastSampleInDecodeOrder(const void *a1, void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v11 = 0;
  MovieInformationLockForRead(*DerivedStorage);
  v5 = CFGetAllocator(a1);
  v6 = CreateMovieSampleCursor(v5, *DerivedStorage, DerivedStorage[1], &v11);
  if (v6)
  {
    SampleInDecodeOrder = v6;
  }

  else
  {
    v7 = v11;
    v8 = CMBaseObjectGetDerivedStorage();
    SampleInDecodeOrder = MovieSampleAccessorMoveToLastSampleInDecodeOrder(*(v8 + 8));
    if (SampleInDecodeOrder)
    {
      if (v7)
      {
        CFRelease(v7);
      }
    }

    else
    {
      *a2 = v7;
    }
  }

  MovieInformationUnlockForRead(*DerivedStorage);
  return SampleInDecodeOrder;
}

uint64_t MovieCursor_copyFormatDescription(uint64_t a1, void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  cf = 0;
  MovieInformationLockForRead(*DerivedStorage);
  if (!MovieTrackIsValid(*(DerivedStorage[1] + 8)))
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_3_5();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v8, cf, v10);
    goto LABEL_8;
  }

  FormatDescription = MovieSampleAccessorGetFormatDescription(DerivedStorage[1], &cf);
  if (FormatDescription)
  {
LABEL_8:
    v6 = FormatDescription;
    goto LABEL_6;
  }

  v5 = cf;
  if (cf)
  {
    v5 = CFRetain(cf);
  }

  v6 = 0;
  *a2 = v5;
LABEL_6:
  MovieInformationUnlockForRead(*DerivedStorage);
  return v6;
}

void CreateTrackReaderDictionary_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void CreateTrackReaderDictionary_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

double MovieFormatReaderGetMovieInformation_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
}

double MovieFormatReaderGetMovieInformation_cold_2()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
}

void MovieFormatReaderCreateWithMovieInformation_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void MovieFormatReaderCreateWithMovieInformation_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void MovieFormatReaderCreateWithMovieInformation_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void MovieFormatReaderCopyProperty_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void MovieFormatReaderCopyProperty_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void MovieFormatReaderCopyProperty_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void MovieFormatReaderCopyProperty_cold_4(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void MovieFormatReaderCopyProperty_cold_5(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void MovieFormatReaderCopyProperty_cold_6(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

double CopySoundCheckInfoDictionary_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v1, v2, vars0);
}

double CopySoundCheckInfoDictionary_cold_2()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v1, v2, vars0);
}

void MovieTrackReaderCreateEditCursorService_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void GetGaplessSourceTimeRange_cold_1(const __CFArray *a1, uint64_t *a2, CFTypeRef *a3)
{
  if (CFArrayGetCount(a1) >= 1)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(a1, 0);
    MovieTrackCopyEnhancedGaplessInfo(*a2, a3);
    FigGaplessInfoGetGaplessSourceTimeRange(ValueAtIndex, *a3);
  }

  CFRelease(a1);
  if (*a3)
  {
    CFRelease(*a3);
  }
}

void MovieEditCursorCopyProperty_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void CopyCreationDateAsDictionary_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void CopyCreationDateAsDictionary_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void CreateTrackReaderForMovieTrack_cold_1(uint64_t a1, _DWORD *a2)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v4, v5, v6);
  *a2 = v3;
}

void MovieTrackReaderCopyProperty_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void MovieTrackReaderCopyProperty_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void MovieTrackReaderCopyProperty_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void MovieTrackReaderCopyProperty_cold_4(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void MovieTrackReaderGetTrackEditWithIndex_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

double CreateMovieSampleCursor_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v1, v2, vars0);
}

void CreateMovieSampleCursor_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void MovieCursor_copyProperty_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void MovieCursor_copyProperty_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

double MovieCursor_copy_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v1, v2, vars0);
}

void MovieCursor_copy_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void MovieCursor_getPresentationTimeStamp_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void MovieCursor_getDecodeTimeStamp_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void MovieCursor_getDuration_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void MovieCursor_getDependencyInfo_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

double MovieCursor_testReorderingBoundary_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
}

void MovieCursor_stepByDecodeTime_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void MovieCursor_stepByPresentationTime_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void MovieCursor_copySampleLocation_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void MovieCursor_copyChunkDetails_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void MovieCursor_stepInDecodeOrderAndReportStepsTaken_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void MovieCursor_stepInPresentationOrderAndReportStepsTaken_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void MovieCursor_getDecodeToPresentationTimeDeltaRange_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

double MoovParseByteStream(uint64_t a1, __int16 a2, const void *a3, const void *a4)
{
  v32[1] = 0;
  v32[2] = 0;
  v33 = 0;
  if (MovieInformationSetByteStream(a1, a3))
  {
    return result;
  }

  MovieInformationSetAssetAnalysisReporter(a1, a4);
  v32[0] = a1;
  if ((a2 & 2) != 0)
  {
    BYTE1(v33) = 1;
    a2 |= 1u;
  }

  LOBYTE(v33) = (a2 & 1) == 0;
  *(a1 + 153) = (a2 & 0x20) != 0;
  *(a1 + 80) = (a2 & 0x40) != 0;
  *(a1 + 86) = HIBYTE(a2) & 1;
  if ((a2 & 0x80) != 0)
  {
    BYTE3(v33) = 1;
  }

  OUTLINED_FUNCTION_12_43();
  if (FigAtomStreamInitWithByteStreamAndReporter())
  {
    return result;
  }

  result = ParseChildAtoms(a1, v31, 5, &MoovParseByteStream_atomDispatch, v32);
  if (!*(a1 + 85))
  {
    if (!v8)
    {
      v23 = OUTLINED_FUNCTION_312();
      _MovieAtomReportParsingMessage(v23, v24, v25, v26, 3u);
      fig_log_get_emitter();
      OUTLINED_FUNCTION_3_5();
      return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v27, v28, valuePtr);
    }

    return result;
  }

  MovieInformationCheckForMovieTimescaleAnomaly_7135294(a1);
  NextTrackID = MovieInformationGetNextTrackID(a1);
  TrackCount = MovieInformationGetTrackCount(a1);
  if (TrackCount < 1)
  {
    goto LABEL_32;
  }

  v11 = TrackCount;
  v12 = 0;
  Mutable = 0;
  v14 = 0;
  LODWORD(v30) = 0;
  LOWORD(valuePtr) = 0;
  v15 = *MEMORY[0x1E695E480];
  do
  {
    TrackForTrackIndex = MovieInformationFindTrackForTrackIndex(a1, v12);
    MovieTrackGetBasicInfo(TrackForTrackIndex, 0, &v30);
    if (v30 == 0x7FFFFFFF)
    {
      v17 = v14;
    }

    else
    {
      v17 = 1;
    }

    if (v30 == 0x7FFFFFFF)
    {
      v18 = NextTrackID;
    }

    else
    {
      v18 = v30 + 1;
    }

    if (v30 > NextTrackID)
    {
      v14 = v17;
      NextTrackID = v18;
    }

    TrackAlternateGroupID = MovieInformationGetTrackAlternateGroupID(a1, TrackForTrackIndex);
    LOWORD(valuePtr) = TrackAlternateGroupID;
    if (TrackAlternateGroupID)
    {
      if (MovieTrackIsEnabled(TrackForTrackIndex))
      {
        v20 = CFNumberCreate(v15, kCFNumberSInt16Type, &valuePtr);
        if (v20)
        {
          v21 = v20;
          if (Mutable)
          {
            CFArrayGetCount(Mutable);
            v22 = OUTLINED_FUNCTION_249();
            if (CFArrayContainsValue(v22, v34, v21))
            {
              MovieTrackSetEnabled(TrackForTrackIndex, 0);
LABEL_26:
              CFRelease(v21);
              goto LABEL_27;
            }
          }

          else
          {
            Mutable = CFArrayCreateMutable(v15, 0, MEMORY[0x1E695E9C0]);
            if (!Mutable)
            {
              goto LABEL_26;
            }
          }

          CFArrayAppendValue(Mutable, v21);
          goto LABEL_26;
        }
      }
    }

LABEL_27:
    MovieTrackCreateEnhancedGaplessInfo(a1, TrackForTrackIndex);
    ++v12;
  }

  while (v11 != v12);
  if (v14)
  {
    MovieInformationSetParsedNextTrackID(a1, NextTrackID);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

LABEL_32:
  if ((a2 & 0x10) != 0 && *(a1 + 154) && (valuePtr = 0, v30 = 0, !FigAtomStreamGetCurrentAtomGlobalOffset()))
  {
    *(a1 + 144) = valuePtr + v30;
    *(a1 + 90) = 1;
    if ((a2 & 8) != 0)
    {
      goto LABEL_38;
    }
  }

  else
  {
    if ((a2 & 8) == 0)
    {
      return result;
    }

LABEL_38:
    MovieInformationPerformPostParsingForHeaderWriting(a1);
  }

  return result;
}

void ParseFileTypeAtom_0(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, CFTypeRef cf, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_47_5();
  v21 = v20;
  if (!FigAtomStreamGetCurrentAtomTypeAndDataLength())
  {
    v22 = OUTLINED_FUNCTION_312();
    _MovieAtomReportParsingMessage(v22, v23, v21, v24, 1u);
    fig_log_get_emitter();
    OUTLINED_FUNCTION_3_5();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
  }

  OUTLINED_FUNCTION_860();
}

uint64_t ParseTopLevelMetaAtom(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  ItemInformation = IFFParseMetaAtomStreamAndCreateItemInformation(0, a1);
  if (ItemInformation)
  {
    return ItemInformation;
  }

  v5 = MovieInformationSetParsedIFFItemInformation(v3, 0);
  if (!v5)
  {
    *(a2 + 26) = 0;
  }

  return v5;
}

void SaveTopLevelDiscoveredUUIDBoxLocation(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!OUTLINED_FUNCTION_36_19(a1, a2, a3, a4, a5, a6, a7, a8, v9, v11, v13, v15))
  {
    MovieInformationAddOneTopLevelDiscoveredUUIDBox(*v8, v10, v12, v16, v14);
  }
}

void MoovParseMovieLevelAtom(uint64_t a1, uint64_t a2)
{
  if (!FigAtomStreamInitWithBBuf())
  {
    FigAtomStreamGetCurrentAtomTypeAndDataLength();
  }
}

void MoovParseIncrementalFragments(uint64_t a1, int *a2)
{
  v24[1] = 0;
  v24[2] = 0;
  v25 = 0;
  v23 = 0;
  if (!*(a1 + 90))
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_3_5();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
LABEL_33:
    v11 = 0;
    goto LABEL_25;
  }

  if (!*(a1 + 154) || *(a1 + 184) == 2)
  {
    OUTLINED_FUNCTION_613();
    _MovieAtomReportParsingMessage(v14, v15, v16, v17, 3u);
    fig_log_get_emitter();
    OUTLINED_FUNCTION_3_5();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
    goto LABEL_33;
  }

  v22 = 0;
  v21 = 0;
  v4 = *(a1 + 48);
  v5 = *(*(CMBaseObjectGetVTable() + 16) + 8);
  if (v5)
  {
    v5(v4, 1, 0, &v22, 0);
  }

  v6 = *(a1 + 48);
  v7 = *(a1 + 144);
  v8 = *(*(CMBaseObjectGetVTable() + 16) + 24);
  if (!v8)
  {
    v11 = 0;
    v9 = -12782;
    goto LABEL_25;
  }

  v9 = v8(v6, v7, &v23);
  if (v9)
  {
    goto LABEL_33;
  }

  if (!v23)
  {
    v9 = 0;
    goto LABEL_33;
  }

  v10 = *(a1 + 144) + v23;
  if (v10 <= *(a1 + 72))
  {
    v11 = 0;
  }

  else
  {
    *(a1 + 72) = v10;
    v11 = 1;
  }

  v24[0] = a1;
  BYTE1(v25) = 1;
  while (1)
  {
    if (FigAtomUtilityGetAtomTypeAndLengthInByteStream() || (v12 = v21, v13 = v23 - v21, v23 < v21))
    {
LABEL_24:
      v9 = 0;
      goto LABEL_25;
    }

    if (v21 <= 0)
    {
      break;
    }

    if (v22 == 1836019558)
    {
      OUTLINED_FUNCTION_0_15();
      v9 = FigAtomStreamInitWithByteStream();
      if (v9)
      {
        goto LABEL_25;
      }

      v9 = ParseMovieFragmentAtom(&v18, v24);
      if (v9)
      {
        goto LABEL_25;
      }

      v11 |= 2u;
      v12 = v21;
      v13 = v23 - v21;
    }

    else if (v22 == 1836019574)
    {
      v9 = 0;
      v11 |= 4u;
      *(a1 + 90) = 256;
      goto LABEL_25;
    }

    v23 = v13;
    *(a1 + 144) += v12;
    if (v13 <= 0)
    {
      goto LABEL_24;
    }
  }

  fig_log_get_emitter();
  OUTLINED_FUNCTION_3_5();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v18, v19, v20);
LABEL_25:
  if (a2)
  {
    *a2 = v11;
  }

  if (v9)
  {
    *(a1 + 90) = 0;
  }
}

uint64_t MoovAssureSampleTableParsed(uint64_t a1)
{
  v20 = 0;
  v21 = 0;
  v19[0] = 0;
  v19[1] = 0;
  v17 = 0;
  v18 = 0;
  memset(v16, 0, sizeof(v16));
  memset(v15, 0, sizeof(v15));
  if (!*(a1 + 56))
  {
    return 0;
  }

  OUTLINED_FUNCTION_187();
  FigSimpleMutexLock();
  if (*(v1 + 718))
  {
    v3 = FigAtomStreamInitWithByteStream();
    if (v3)
    {
      v4 = v3;
      *(v1 + 718) = 0;
LABEL_13:
      *(v1 + 712) = v4;
      goto LABEL_14;
    }

    *&v15[0] = v2;
    v16[0] = v15;
    v17 = v16;
    v18 = v1;
    v19[0] = &v17;
    v21 = v19;
    v22 = 0;
    memset(v23, 0, sizeof(v23));
    *(v1 + 718) = 0;
    CurrentAtomTypeAndDataLength = FigAtomStreamGetCurrentAtomTypeAndDataLength();
    if (!CurrentAtomTypeAndDataLength)
    {
      if (v22 < 1)
      {
LABEL_10:
        v7 = OUTLINED_FUNCTION_177();
        DoPostParsingSampleTableCommon(v7, v8, v9);
        goto LABEL_11;
      }

      CurrentAtomTypeAndDataLength = FigAtomStreamInitWithParent();
      if (!CurrentAtomTypeAndDataLength)
      {
        ParseChildAtoms(v2, v23, 11, &ParseSampleTableAtom_Phase2_atomDispatch, &v20);
        if (v6)
        {
          v4 = v6;
          v10 = OUTLINED_FUNCTION_177();
          _MovieAtomReportParsingMessage(v10, v11, v12, v13, 5u);
          goto LABEL_13;
        }

        goto LABEL_10;
      }
    }

LABEL_11:
    v4 = CurrentAtomTypeAndDataLength;
    goto LABEL_13;
  }

  v4 = *(v1 + 712);
LABEL_14:
  FigSimpleMutexUnlock();
  return v4;
}

double ParseMovieHeaderAtom()
{
  OUTLINED_FUNCTION_66_10();
  v10 = 0;
  v9 = 0;
  v8 = 0;
  v7 = 0;
  v5 = 0u;
  v6 = 0u;
  if (!FigAtomStreamGetCurrentAtomTypeAndDataLength())
  {
    OUTLINED_FUNCTION_152_2();
    if (!FigAtomStreamGetCurrentAtomVersionAndFlags())
    {
      if (v8 == 1)
      {
        OUTLINED_FUNCTION_0_15();
      }

      else
      {
        OUTLINED_FUNCTION_2_90();
      }

      v1 = OUTLINED_FUNCTION_312();
      OUTLINED_FUNCTION_85_4(v1, v2, v3, v4);
      fig_log_get_emitter();
      OUTLINED_FUNCTION_20_0();
      return FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
    }
  }

  return result;
}

uint64_t ParseTrackAtom(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_66_10();
  v4 = *v3;
  memset(v32, 0, sizeof(v32));
  OUTLINED_FUNCTION_12_43();
  v29 = 0;
  cf = 0;
  v28 = v5;
  started = FigAtomStreamInitWithParent();
  if (!started)
  {
    started = MovieTrackCreate(&cf);
    if (!started)
    {
      v7 = cf;
      *(cf + 736) = *(v4 + 153);
      v29 = v7;
      ParseChildAtoms(v4, v32, 3, &ParseTrackAtom_atomDispatchTrackFirstPass, &v28);
      if (v8)
      {
LABEL_6:
        v9 = v8;
        if (!MoovIsParsingError(v8))
        {
          goto LABEL_7;
        }

        OUTLINED_FUNCTION_52_15(v4, cf, v10, "Omitting a track that encountered an error during atom parsing");
        goto LABEL_22;
      }

      OUTLINED_FUNCTION_383();
      started = FigAtomStreamInitWithParent();
      if (!started)
      {
        ParseChildAtoms(v4, v31, 9, &ParseTrackAtom_atomDispatchTrackSecondPass, &v28);
        if (v8)
        {
          goto LABEL_6;
        }

        if (*(v4 + 81))
        {
          v12 = *(v4 + 82) == 0;
        }

        else
        {
          v12 = *(v4 + 84) != 0;
        }

        MovieTrackEvaluateParsedLanguageCode(cf, v12);
        v13 = OUTLINED_FUNCTION_73_6();
        MovieTrackCreateEditSegmentArray(v13, v14);
        v15 = OUTLINED_FUNCTION_73_6();
        MovieInformationEvaluateTrackAlternateGroupAssignment(v15, v16);
        v17 = OUTLINED_FUNCTION_73_6();
        started = MovieTrackInitializeLowestDisplayStartTimeAndHighestDisplayEndTime(v17, v18);
        if (!started)
        {
          if (*(*a2 + 27))
          {
            v19 = cf;
            if (!MovieTrackIsEnabled(cf) && MovieTrackGetMediaType(v19) == 1936684398)
            {
              v20 = MovieTrackCopyFormatDescriptionArray(v19);
              if (v20)
              {
                v21 = v20;
                if (CFArrayGetCount(v20) <= 0)
                {
                  CFRelease(v21);
                }

                else
                {
                  v22 = OUTLINED_FUNCTION_265();
                  ValueAtIndex = CFArrayGetValueAtIndex(v22, v23);
                  MediaSubType = CMFormatDescriptionGetMediaSubType(ValueAtIndex);
                  CFRelease(v21);
                  if (MediaSubType == 1634754915)
                  {
LABEL_22:
                    v9 = 0;
                    goto LABEL_7;
                  }
                }
              }
            }
          }

          v26 = OUTLINED_FUNCTION_73_6();
          started = MovieInformationAddNewPerTrackInfo(v26, v27);
        }
      }
    }
  }

  v9 = started;
LABEL_7:
  if (cf)
  {
    CFRelease(cf);
  }

  return v9;
}

uint64_t ParseMovieUserDataAtom(uint64_t a1, void **a2)
{
  OUTLINED_FUNCTION_0_15();
  result = FigAtomStreamGetCurrentAtomGlobalOffset();
  if (!result)
  {
    OUTLINED_FUNCTION_312();
    v4 = FigAtomStreamInitWithParent();
    v11 = v4;
    if (!v4)
    {
      OUTLINED_FUNCTION_83_6(v4, v5, v6, ParseMovieUserDataAtom_atomDispatch, v7, v8, v9, v10, v16);
      v11 = v12;
    }

    result = 0;
    if (v11 != -12893)
    {
      if (v11)
      {
        v13 = OUTLINED_FUNCTION_265();
        _MovieAtomReportParsingMessage(v13, v14, a1, v15, 6u);
        return v11;
      }
    }
  }

  return result;
}

double ParseCompressedMovieAtom(uint64_t a1, uint64_t **a2)
{
  v3 = **a2;
  OUTLINED_FUNCTION_0_15();
  *(v4 + 9) = 1;
  *(v3 + 89) = 1;
  if (*(v3 + 87) || (v5 = v4, *(v4 + 8)))
  {
    v8 = OUTLINED_FUNCTION_265();
    _MovieAtomReportParsingMessage(v8, v9, a1, v10, 3u);
    fig_log_get_emitter();
    OUTLINED_FUNCTION_2_10();

    return FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
  }

  else
  {
    OUTLINED_FUNCTION_312();
    if (!FigAtomStreamInitWithParent())
    {
      result = ParseChildAtoms(v3, &v14, 2, &ParseCompressedMovieAtom_atomDispatch, v5);
      if (v7)
      {
        v11 = OUTLINED_FUNCTION_265();
        _MovieAtomReportParsingMessage(v11, v12, a1, v13, 6u);
      }
    }
  }

  return result;
}

uint64_t ParseMovieExtendsAtom(uint64_t a1, uint64_t a2)
{
  BBuf = FigAtomStreamReadCurrentAtomAndCreateBBuf();
  if (BBuf)
  {
    return BBuf;
  }

  if (!MovieInformationGetTrackCount(**a2))
  {
    return 0;
  }

  v4 = ParseMovieExtendsAtomFromBBuf(*(a2 + 16), a2);
  v6 = *(a2 + 16);
  if (v6)
  {
    CFRelease(v6);
    *(a2 + 16) = 0;
  }

  return v4;
}

void SaveMovieDiscoveredUUIDBoxLocation(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!OUTLINED_FUNCTION_36_19(a1, a2, a3, a4, a5, a6, a7, a8, v9, v11, v13, v15))
  {
    MovieInformationAddOneMovieDiscoveredUUIDBox(**v8, v10, v12, v16, v14);
  }
}

uint64_t ParseMovieExtendsAtomFromBBuf(uint64_t a1, const char *a2)
{
  v3 = **a2;
  memset(v12, 0, sizeof(v12));
  v4 = FigAtomStreamInitWithBBuf();
  if (v4)
  {
    return v4;
  }

  FigAtomStreamGetCurrentAtomTypeAndDataLength();
  v4 = FigAtomStreamInitWithParent();
  if (v4)
  {
    return v4;
  }

  ParseChildAtoms(v3, v12, 2, &ParseMovieExtendsAtomFromBBuf_atomDispatch, a2);
  if (v5)
  {
    v6 = v5;
    v8 = OUTLINED_FUNCTION_312();
    _MovieAtomReportParsingMessage(v8, v9, v10, v11, 6u);
  }

  else
  {
    *(v3 + 154) = 1;
    v6 = 0;
    if (*(*a2 + 25))
    {
      *(*a2 + 24) = 0;
    }
  }

  return v6;
}

uint64_t ParseTrackHeaderAtom(uint64_t a1, uint64_t a2)
{
  result = FigAtomStreamGetCurrentAtomTypeAndDataLength();
  if (!result)
  {
    result = FigAtomStreamGetCurrentAtomVersionAndFlags();
    if (!result)
    {
      v3 = OUTLINED_FUNCTION_177();
      OUTLINED_FUNCTION_86_6(v3, v4, v5, v6);
      fig_log_get_emitter();
      OUTLINED_FUNCTION_2_10();
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
    }
  }

  return result;
}

double ParseTrackReferenceAtom()
{
  OUTLINED_FUNCTION_61_13();
  OUTLINED_FUNCTION_12_43();
  if (!FigAtomStreamGetCurrentAtomTypeAndDataLength())
  {
    v1 = OUTLINED_FUNCTION_64_0();
    _MovieAtomReportParsingMessage(v1, v2, v3, v4, 2u);
    fig_log_get_emitter();
    OUTLINED_FUNCTION_0_4();
    return FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
  }

  return result;
}

void SaveTrackDiscoveredUUIDBoxLocation(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!OUTLINED_FUNCTION_36_19(a1, a2, a3, a4, a5, a6, a7, a8, v9, v11, v13, v15))
  {
    MovieTrackAddOneDiscoveredUUIDBox(*(v8 + 8), v10, v12, v16, v14);
  }
}

uint64_t ParseEditsAtom(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  OUTLINED_FUNCTION_71_7();
  OUTLINED_FUNCTION_12_43();
  v12 = 0;
  v10[1] = v3;
  v11 = 0;
  v10[0] = v2;
  OUTLINED_FUNCTION_39_17();
  CurrentAtomTypeAndDataLength = FigAtomStreamGetCurrentAtomTypeAndDataLength();
  if (CurrentAtomTypeAndDataLength)
  {
    return CurrentAtomTypeAndDataLength;
  }

  *(v3 + 721) = 257;
  if (v11 < 1)
  {
    return 0;
  }

  OUTLINED_FUNCTION_312();
  CurrentAtomTypeAndDataLength = FigAtomStreamInitWithParent();
  if (CurrentAtomTypeAndDataLength)
  {
    return CurrentAtomTypeAndDataLength;
  }

  ParseChildAtoms(v2, v13, 1, &ParseEditsAtom_atomDispatch, v10);
  v8 = v5;
  if (v5)
  {
    OUTLINED_FUNCTION_42_16(v5, v6, v7, "while parsing");
  }

  return v8;
}

uint64_t ParseMediaAtom()
{
  OUTLINED_FUNCTION_71_7();
  OUTLINED_FUNCTION_11_30();
  v8[0] = v1;
  v8[1] = 0;
  v2 = FigAtomStreamInitWithParent();
  if (v2)
  {
    return v2;
  }

  ParseChildAtoms(v0, v9, 4, &ParseMediaAtom_atomDispatch, v8);
  v6 = v3;
  if (v3)
  {
    OUTLINED_FUNCTION_42_16(v3, v4, v5, "while parsing");
  }

  return v6;
}

double ParseTrackLoadSettingsAtom(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  OUTLINED_FUNCTION_46_13();
  v8.i64[0] = 0;
  OUTLINED_FUNCTION_39_17();
  if (!FigAtomStreamGetCurrentAtomTypeAndDataLength())
  {
    if (v10 == 16)
    {
      OUTLINED_FUNCTION_20_25();
      if (!FigAtomStreamReadCurrentAtomData())
      {
        v9 = vrev32q_s8(v8);
        MovieTrackSetLoadSettings(v2, v9.i64[0], v9.i64[1]);
      }
    }

    else
    {
      v4 = OUTLINED_FUNCTION_283();
      OUTLINED_FUNCTION_55_15(v4, v5, v6, v7);
      fig_log_get_emitter();
      OUTLINED_FUNCTION_20_0();
      return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", 0, v8.i32[2], v10);
    }
  }

  return result;
}

uint64_t ParseTrackUserDataAtom(uint64_t a1, uint64_t ***a2)
{
  v3 = ***a2;
  if (*(v3 + 56))
  {
    CurrentAtomGlobalOffset = FigAtomStreamGetCurrentAtomGlobalOffset();
    goto LABEL_9;
  }

  CurrentAtomGlobalOffset = FigAtomStreamReadCurrentAtomAndCreateBBuf();
  if (!CurrentAtomGlobalOffset)
  {
    if (*(v3 + 81))
    {
      if (*(v3 + 82))
      {
LABEL_6:
        OUTLINED_FUNCTION_177();
        CurrentAtomGlobalOffset = MovieTrackSupplementQuickTimeUserDataFromBlockBuffer();
        goto LABEL_9;
      }
    }

    else if (!*(v3 + 84))
    {
      goto LABEL_6;
    }

    OUTLINED_FUNCTION_177();
    CurrentAtomGlobalOffset = MovieTrackSupplementISOUserDataFromBlockBuffer();
  }

LABEL_9:
  v12 = OUTLINED_FUNCTION_10_11(CurrentAtomGlobalOffset, v5, v6, v7, v8, v9, v10, v11, v14, 0);
  if (v12)
  {
    CFRelease(v12);
  }

  return v2;
}

uint64_t ParseTrackApertureModeDimensionsAtom(uint64_t a1, const char *a2)
{
  OUTLINED_FUNCTION_71_7();
  OUTLINED_FUNCTION_0_15();
  v4 = FigAtomStreamInitWithParent();
  if (v4)
  {
    return v4;
  }

  ParseChildAtoms(v2, &v10, 3, &ParseTrackApertureModeDimensionsAtom_atomDispatch, a2);
  v8 = v5;
  if (v5)
  {
    OUTLINED_FUNCTION_42_16(v5, v6, v7, "while parsing");
  }

  return v8;
}

double ParseProvisionalTrackGroupAssignmentAtom()
{
  OUTLINED_FUNCTION_61_13();
  OUTLINED_FUNCTION_39_17();
  if (!FigAtomStreamGetCurrentAtomTypeAndDataLength())
  {
    v1 = OUTLINED_FUNCTION_14_40();
    _MovieAtomReportParsingMessage(v1, v2, v3, v4, 2u);
    fig_log_get_emitter();
    OUTLINED_FUNCTION_0_4();
    return FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
  }

  return result;
}

void _MovieAtomReportParsingMessage(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5)
{
  if (a1[8])
  {
    v10 = CFGetAllocator(a1);
    Mutable = CFDictionaryCreateMutable(v10, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    if (Mutable)
    {
      v12 = Mutable;
      v13 = CFGetAllocator(a1);
      v14 = CFStringCreateMutable(v13, 0);
      if (v14)
      {
        v15 = v14;
        CFStringAppendFormat(v14, 0, @"%s.", a4);
        if (a3)
        {
          v18 = 0;
          v17 = 0;
          FigAtomStreamGetCurrentAtomGlobalOffset();
          FigAtomStreamGetCurrentAtomTypeAndDataLength();
          CFStringForOSTypeValue = FigGetCFStringForOSTypeValue();
          CFStringAppendFormat(v15, 0, @" Atom: '%@' Offset: %lld", CFStringForOSTypeValue, 0);
          FigCFDictionarySetInt64();
          FigCFDictionarySetInt32();
        }

        if (a2)
        {
          v17 = 0;
          LODWORD(v18) = 0;
          MovieTrackGetBasicInfo(a2, &v18, &v17);
          FigCFDictionarySetInt32();
          FigCFDictionarySetInt32();
        }

        FigCFDictionarySetInt64();
        CFDictionarySetValue(v12, *MEMORY[0x1E6960D58], v15);
        FigCFDictionarySetInt32();
        if (a5 == 6 || a5 == 5)
        {
          FigAssetAnalysisReporterEditAndAppendMessage();
        }

        else
        {
          FigAssetAnalysisReporterAddMessage();
        }

        CFRelease(v15);
      }

      CFRelease(v12);
    }
  }
}

uint64_t ParseDiscoveredUUIDBoxLocation(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  result = FigAtomStreamGetCurrentAtomGlobalOffset();
  if (!result)
  {
    result = FigAtomStreamGetCurrentAtomHeaderSize();
    if (!result)
    {
      result = FigAtomStreamGetCurrentAtomUUIDType();
      if (!result)
      {
        *a3 = 0;
        *a4 = 0;
      }
    }
  }

  return result;
}

uint64_t ParseMediaHeaderAtom()
{
  OUTLINED_FUNCTION_66_10();
  v1 = ***v0;
  result = FigAtomStreamGetCurrentAtomTypeAndDataLength();
  if (!result)
  {
    OUTLINED_FUNCTION_152_2();
    result = FigAtomStreamGetCurrentAtomVersionAndFlags();
    if (!result)
    {
      OUTLINED_FUNCTION_40_16(v1, v3, v4, "'mdhd' V0 atom size less than minimum");
      fig_log_get_emitter();
      OUTLINED_FUNCTION_20_0();
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
    }
  }

  return result;
}

uint64_t ParseMediaHandlerAtom()
{
  OUTLINED_FUNCTION_187();
  OUTLINED_FUNCTION_43_15();
  result = FigAtomStreamReadCurrentAtomData();
  if (!result)
  {
    v2 = OUTLINED_FUNCTION_64_0();
    result = CheckAtomVersionIsZero_0(v2, v3, v4);
    if (!result)
    {
      *(v0 + 8) = 0;
    }
  }

  return result;
}

uint64_t ParseExtendedLanguageTagAtom()
{
  OUTLINED_FUNCTION_66_10();
  v7 = 0;
  v6 = 0;
  v5 = 0;
  v4 = 0;
  theBuffer = 0;
  CurrentAtomTypeAndDataLength = FigAtomStreamGetCurrentAtomTypeAndDataLength();
  if (CurrentAtomTypeAndDataLength)
  {
    return CurrentAtomTypeAndDataLength;
  }

  FigAtomStreamGetCurrentAtomVersionAndFlags();
  return 0;
}

uint64_t ParseVideoMediaInfoHeaderAtom()
{
  OUTLINED_FUNCTION_10_45();
  OUTLINED_FUNCTION_61_13();
  v1 = OUTLINED_FUNCTION_4_47(v0);
  if (!v1)
  {
    v2 = OUTLINED_FUNCTION_64_0();
    if (v7 == 12)
    {
      return CheckAtomVersionIsZero_0(v2, v3, v4);
    }

    else
    {
      _MovieAtomReportParsingMessage(v2, v3, v4, v5, 2u);
      fig_log_get_emitter();
      OUTLINED_FUNCTION_0_4();
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v7, v8, v9);
    }
  }

  return v1;
}

uint64_t ParseDataInfoAtom(uint64_t a1)
{
  OUTLINED_FUNCTION_28_21();
  OUTLINED_FUNCTION_0_15();
  v2 = FigAtomStreamInitWithParent();
  if (v2)
  {
    return v2;
  }

  OUTLINED_FUNCTION_83_6(v2, v3, v4, ParseDataInfoAtom_atomDispatch, v5, v6, v7, v8, v15);
  v10 = v9;
  if (v9)
  {
    v12 = OUTLINED_FUNCTION_265();
    _MovieAtomReportParsingMessage(v12, v13, a1, v14, 5u);
  }

  return v10;
}

uint64_t ParseDataRefAtom()
{
  OUTLINED_FUNCTION_28_21();
  v1 = *(v0 + 8);
  OUTLINED_FUNCTION_43_15();
  v10 = 0;
  v9 = 0;
  OUTLINED_FUNCTION_12_43();
  CurrentAtomTypeAndDataLength = FigAtomStreamGetCurrentAtomTypeAndDataLength();
  if (!CurrentAtomTypeAndDataLength)
  {
    v5 = OUTLINED_FUNCTION_283();
    OUTLINED_FUNCTION_55_15(v5, v6, v7, v8);
    fig_log_get_emitter();
    OUTLINED_FUNCTION_20_0();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
  }

  v4 = CurrentAtomTypeAndDataLength;
  if (CurrentAtomTypeAndDataLength)
  {
    ReleaseDataReferenceInfoArray(v1);
  }

  return v4;
}

uint64_t ParseSampleGroupDescriptionAtom()
{
  OUTLINED_FUNCTION_10_45();
  OUTLINED_FUNCTION_43_15();
  v23 = 0;
  v21 = 0;
  v22 = 0;
  cf = 0;
  v19 = 0;
  v18 = 0;
  CurrentAtomTypeAndDataLength = FigAtomStreamGetCurrentAtomTypeAndDataLength();
  if (!CurrentAtomTypeAndDataLength)
  {
    CurrentAtomTypeAndDataLength = FigAtomStreamGetCurrentAtomVersionAndFlags();
    if (!CurrentAtomTypeAndDataLength)
    {
      if (v19 >= 3u)
      {
        v10 = OUTLINED_FUNCTION_64_0();
        _MovieAtomReportParsingMessage(v10, v11, v12, v13, 2u);
        fig_log_get_emitter();
        OUTLINED_FUNCTION_0_4();
        FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
        return 0;
      }

      OUTLINED_FUNCTION_265();
      CurrentAtomTypeAndDataLength = FigAtomStreamReadCurrentAtomDataAndCreateBBuf();
      if (!CurrentAtomTypeAndDataLength)
      {
        OUTLINED_FUNCTION_156_0();
        CurrentAtomTypeAndDataLength = CMBlockBufferCreateContiguous(v1, v2, v3, v4, v5, v6, 2u, v7);
        if (!CurrentAtomTypeAndDataLength)
        {
          v14 = OUTLINED_FUNCTION_64_0();
          _MovieAtomReportParsingMessage(v14, v15, v16, v17, 2u);
          fig_log_get_emitter();
          OUTLINED_FUNCTION_0_4();
          FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
        }
      }
    }
  }

  return CurrentAtomTypeAndDataLength;
}

uint64_t ParseSampleSizeAtom()
{
  OUTLINED_FUNCTION_0_144();
  v1 = *v0;
  result = OUTLINED_FUNCTION_57_9(v2);
  if (!result)
  {
    OUTLINED_FUNCTION_22_24(v1, v4, v5, "'stsz' atom size less than minimum");
    fig_log_get_emitter();
    OUTLINED_FUNCTION_3_5();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
  }

  return result;
}

uint64_t ParseCompactSampleSizeAtom()
{
  OUTLINED_FUNCTION_28_21();
  OUTLINED_FUNCTION_43_15();
  result = OUTLINED_FUNCTION_57_9(v0);
  if (!result)
  {
    v2 = OUTLINED_FUNCTION_14_40();
    _MovieAtomReportParsingMessage(v2, v3, v4, v5, 2u);
    fig_log_get_emitter();
    OUTLINED_FUNCTION_0_4();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
  }

  return result;
}

void ParseChunkOffsetAtom()
{
  OUTLINED_FUNCTION_0_144();
  if (!OUTLINED_FUNCTION_57_9(v0))
  {
    v1 = OUTLINED_FUNCTION_13_36();
    _MovieAtomReportParsingMessage(v1, v2, v3, v4, 2u);
    fig_log_get_emitter();
    OUTLINED_FUNCTION_3_5();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v5, cf, v7);
  }

  OUTLINED_FUNCTION_88_6();
}

void ParseChunkOffset64Atom()
{
  OUTLINED_FUNCTION_0_144();
  if (!OUTLINED_FUNCTION_57_9(v0))
  {
    v1 = OUTLINED_FUNCTION_13_36();
    _MovieAtomReportParsingMessage(v1, v2, v3, v4, 2u);
    fig_log_get_emitter();
    OUTLINED_FUNCTION_3_5();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v5, v6, v7);
  }

  OUTLINED_FUNCTION_88_6();
}

void ParseCompositionOffsetAtom()
{
  OUTLINED_FUNCTION_0_144();
  v6 = 0;
  v5 = 0;
  v4 = 0;
  if (!FigAtomStreamGetCurrentAtomTypeAndDataLength())
  {
    v0 = OUTLINED_FUNCTION_7_63();
    _MovieAtomReportParsingMessage(v0, v1, v2, v3, 2u);
    fig_log_get_emitter();
    OUTLINED_FUNCTION_3_5();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
  }

  OUTLINED_FUNCTION_88_6();
}

uint64_t ParseSampleDependencyAtom()
{
  OUTLINED_FUNCTION_0_144();
  OUTLINED_FUNCTION_46_13();
  OUTLINED_FUNCTION_39_17();
  CurrentAtomTypeAndDataLength = FigAtomStreamGetCurrentAtomTypeAndDataLength();
  if (CurrentAtomTypeAndDataLength)
  {
    return CurrentAtomTypeAndDataLength;
  }

  v2 = OUTLINED_FUNCTION_7_63();
  CurrentAtomTypeAndDataLength = CheckAtomVersionIsZero_0(v2, v3, v4);
  if (CurrentAtomTypeAndDataLength)
  {
    return CurrentAtomTypeAndDataLength;
  }

  v5 = OUTLINED_FUNCTION_26_23();
  v6 = OUTLINED_FUNCTION_84_4(v5);
  v14 = OUTLINED_FUNCTION_10_11(v6, v7, v8, v9, v10, v11, v12, v13, v27, v29);
  if (!v0)
  {
    CMBlockBufferGetDataLength(v14);
    v15 = OUTLINED_FUNCTION_65_10();
    v18 = MovieSampleTableSet_sdtp(v15, v16, v17);
    v14 = OUTLINED_FUNCTION_10_11(v18, v19, v20, v21, v22, v23, v24, v25, v28, v30);
  }

  if (v14)
  {
    CFRelease(v14);
  }

  return v0;
}

double CommonSampleGroupDescriptionEntryParse(uint64_t appended, uint64_t a2, const UInt8 *a3, int a4, int a5, int a6, uint64_t a7, uint64_t a8)
{
  v11 = a4;
  v12 = a3;
  if (a5)
  {
    if (a5 * a4 <= a7)
    {
      if (a4 >= 1)
      {
        v13 = a5;
        while (1)
        {
          v14 = OUTLINED_FUNCTION_177();
          if (MovieSampleGroupDescriptionArrayAppendParsedDescription(v14, v15, v12))
          {
            goto LABEL_24;
          }

          v12 += v13;
          if (!--v11)
          {
            goto LABEL_18;
          }
        }
      }

      goto LABEL_18;
    }

    OUTLINED_FUNCTION_44_17(appended, a2, a3, "Entry length and count inconsistent with atom data size");
    fig_log_get_emitter();
    OUTLINED_FUNCTION_0_4();
LABEL_26:
    OUTLINED_FUNCTION_651();

    return FigSignalErrorAtGM(v25);
  }

  if (a4 >= 1)
  {
    v16 = 0;
    while (v16 + 4 <= a7)
    {
      v17 = *v12;
      v18 = bswap32(*v12);
      if ((v18 & 0x80000000) != 0)
      {
        OUTLINED_FUNCTION_44_17(appended, a2, a3, "Invalid sample group description length");
        fig_log_get_emitter();
        OUTLINED_FUNCTION_0_4();
        FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v27, v28, v29);
        goto LABEL_24;
      }

      v16 += 4 + v18;
      if (v16 > a7)
      {
        break;
      }

      v19 = v12 + 4;
      if (v17)
      {
        v20 = v19;
      }

      else
      {
        v20 = 0;
      }

      appended = MovieSampleGroupDescriptionArrayAppendParsedDescription(a8, v18, v20);
      if (appended)
      {
        goto LABEL_24;
      }

      v12 = &v19[v18];
      if (!--v11)
      {
        goto LABEL_18;
      }
    }

    OUTLINED_FUNCTION_44_17(appended, a2, a3, "Atom too short to hold description length");
    fig_log_get_emitter();
    OUTLINED_FUNCTION_0_4();
    goto LABEL_26;
  }

LABEL_18:
  if (!a6)
  {
LABEL_24:
    OUTLINED_FUNCTION_651();
    return result;
  }

  OUTLINED_FUNCTION_651();

  MovieSampleGroupDescriptionArraySetDefaultDescriptionIndex(v21, v22);
  return result;
}

double ParseSoundMediaInfoHeaderAtom()
{
  OUTLINED_FUNCTION_10_45();
  OUTLINED_FUNCTION_61_13();
  if (!OUTLINED_FUNCTION_4_47(v0))
  {
    if (v9 == 8)
    {
      v2 = OUTLINED_FUNCTION_64_0();
      CheckAtomVersionIsZero_0(v2, v3, v4);
    }

    else
    {
      v5 = OUTLINED_FUNCTION_64_0();
      _MovieAtomReportParsingMessage(v5, v6, v7, v8, 2u);
      fig_log_get_emitter();
      OUTLINED_FUNCTION_0_4();
      return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v9, v10, v11);
    }
  }

  return result;
}

uint64_t ParseTimeCodeMediaHeaderAtom(uint64_t a1, const char *a2)
{
  OUTLINED_FUNCTION_28_21();
  v4 = ***v3;
  v12 = 0;
  v11[14] = 0;
  OUTLINED_FUNCTION_0_15();
  FigAtomStreamGetCurrentAtomTypeAndDataLength();
  OUTLINED_FUNCTION_312();
  v5 = FigAtomStreamInitWithParent();
  if (v5)
  {
    return v5;
  }

  ParseChildAtoms(v4, v11, 1, &ParseTimeCodeMediaHeaderAtom_atomDispatch, a2);
  v9 = v6;
  if (v6)
  {
    OUTLINED_FUNCTION_42_16(v6, v7, v8, "while parsing");
  }

  return v9;
}

uint64_t ParseTimeCodeMediaInfoAtom()
{
  OUTLINED_FUNCTION_10_45();
  v2 = *(v1 + 8);
  OUTLINED_FUNCTION_71_7();
  OUTLINED_FUNCTION_49_11();
  OUTLINED_FUNCTION_39_17();
  FigAtomStreamGetCurrentAtomTypeAndDataLength();
  if (v8 <= 0x18)
  {
    OUTLINED_FUNCTION_22_24(v0, v3, v4, "Incorrect 'tcmi' atom size");
  }

  OUTLINED_FUNCTION_265();
  CurrentAtomVersionAndFlags = FigAtomStreamGetCurrentAtomVersionAndFlags();
  if (!CurrentAtomVersionAndFlags)
  {
    MovieTrackSetTimecodeSpecifics(v2, v7 & 1);
  }

  return CurrentAtomVersionAndFlags;
}

uint64_t ParseTrackCleanApertureDimensionsAtom(uint64_t a1)
{
  result = OUTLINED_FUNCTION_37_20(a1);
  if (!result)
  {
    result = OUTLINED_FUNCTION_25_23(result, v2, v3, v4, v5, v6, v7, v8, v12, *v13, v13[4]);
    if (!result)
    {
      OUTLINED_FUNCTION_23_32();
      result = FigAtomStreamReadCurrentAtomData();
      if (!result)
      {
        v9 = OUTLINED_FUNCTION_21_24();
        return MovieTrackSetCleanApertureDimensions(v9, v10, v11);
      }
    }
  }

  return result;
}

uint64_t ParseTrackProductionApertureDimensionsAtom(uint64_t a1)
{
  result = OUTLINED_FUNCTION_37_20(a1);
  if (!result)
  {
    result = OUTLINED_FUNCTION_25_23(result, v2, v3, v4, v5, v6, v7, v8, v12, *v13, v13[4]);
    if (!result)
    {
      OUTLINED_FUNCTION_23_32();
      result = FigAtomStreamReadCurrentAtomData();
      if (!result)
      {
        v9 = OUTLINED_FUNCTION_21_24();
        return MovieTrackSetProductionApertureDimensions(v9, v10, v11);
      }
    }
  }

  return result;
}

uint64_t ParseTrackEncodedPixelsDimensionsAtom(uint64_t a1)
{
  result = OUTLINED_FUNCTION_37_20(a1);
  if (!result)
  {
    result = OUTLINED_FUNCTION_25_23(result, v2, v3, v4, v5, v6, v7, v8, v12, *v13, v13[4]);
    if (!result)
    {
      OUTLINED_FUNCTION_23_32();
      result = FigAtomStreamReadCurrentAtomData();
      if (!result)
      {
        v9 = OUTLINED_FUNCTION_21_24();
        return MovieTrackSetEncodedPixelsDimensions(v9, v10, v11);
      }
    }
  }

  return result;
}

uint64_t ParseCompressedMovieDataAtom()
{
  OUTLINED_FUNCTION_11_30();
  if (*(v0 + 12) == 2053925218)
  {
    OUTLINED_FUNCTION_613();
    result = FigAtomStreamReadCurrentAtomDataAndCreateBBuf();
    if (!result)
    {
      OUTLINED_FUNCTION_613();
      CMBlockBufferGetDataPointer(v2, v3, v4, v5, v6);
      v7 = OUTLINED_FUNCTION_265();
      OUTLINED_FUNCTION_85_4(v7, v8, v9, v10);
      fig_log_get_emitter();
      OUTLINED_FUNCTION_2_10();
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
    }
  }

  else
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_2_10();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
  }

  return result;
}

uint64_t ParseMovieExtendsHeaderAtom(uint64_t a1, uint64_t **a2)
{
  v2 = **a2;
  v10 = 0;
  v9 = 0;
  v8 = 0;
  FigAtomStreamGetCurrentAtomTypeAndDataLength();
  CurrentAtomVersionAndFlags = FigAtomStreamGetCurrentAtomVersionAndFlags();
  if (CurrentAtomVersionAndFlags)
  {
    return CurrentAtomVersionAndFlags;
  }

  if (v10 == 1)
  {
    OUTLINED_FUNCTION_26_23();
    CurrentAtomData = FigAtomStreamReadCurrentAtomData();
    if (!CurrentAtomData)
    {
      v5 = bswap64(0);
      goto LABEL_7;
    }
  }

  else
  {
    OUTLINED_FUNCTION_26_23();
    CurrentAtomData = FigAtomStreamReadCurrentAtomData();
    if (!CurrentAtomData)
    {
      v5 = bswap32(0);
LABEL_7:
      CMTimeMake(&v7, v5, *(v2 + 240));
      *(v2 + 160) = v7;
      *(v2 + 155) = 1;
    }
  }

  return CurrentAtomData;
}

double ParseTrackExtendsAtom()
{
  OUTLINED_FUNCTION_66_10();
  v1 = *v0;
  FigAtomStreamGetCurrentAtomTypeAndDataLength();
  if (!FigAtomStreamGetCurrentAtomVersionAndFlags())
  {
    OUTLINED_FUNCTION_383();
    if (!FigAtomStreamReadCurrentAtomData())
    {
      TrackForTrackID = MovieInformationFindTrackForTrackID(v1, bswap32(0));
      if (TrackForTrackID)
      {
        v4 = TrackForTrackID;
        v8 = vrev32q_s8(0);
        if (!MovieTrackSetTrackExtendsDefaultValues(TrackForTrackID, v8.i32[0], v8.i32[1], v8.i32[2], v8.i32[3]) && !*(v4 + 91))
        {
          v5 = OUTLINED_FUNCTION_34_18();
          v7 = malloc_type_calloc(v5, 0x40uLL, v6);
          *(v4 + 91) = v7;
          if (v7)
          {
            *(v7 + 40) = v8;
            *(v7 + 1) = xmmword_196E78670;
            result = COERCE_DOUBLE(vneg_f32(0xFFFFFFFF00000000));
            *(v7 + 4) = result;
          }

          else
          {
            fig_log_get_emitter();
            OUTLINED_FUNCTION_0_4();
            return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v8.i64[0], v8.i32[2], 0);
          }
        }
      }
    }
  }

  return result;
}

uint64_t ParseMovieFragmentHeaderAtom(uint64_t a1, uint64_t **a2)
{
  v3 = **a2;
  CurrentAtomTypeAndDataLength = FigAtomStreamGetCurrentAtomTypeAndDataLength();
  v12 = OUTLINED_FUNCTION_25_23(CurrentAtomTypeAndDataLength, v5, v6, v7, v8, v9, v10, v11, 0, 0, 0);
  if (v12)
  {
    return v12;
  }

  v13 = bswap32(v20);
  v14 = *(v3 + 184);
  switch(v14)
  {
    case 2:
      return 1937010544;
    case 1:
      if (v13 != *(v3 + 188) + 1)
      {
        v15 = 1937010544;
        v17 = OUTLINED_FUNCTION_312();
        _MovieAtomReportParsingMessage(v17, v18, a1, v19, 3u);
        *(v3 + 184) = 2;
        return v15;
      }

      MovieInformationUpdateLastParsedFragmentSequenceNumber(v3, v13);
      break;
    case 0:
      MovieInformationEstablishFirstParsedFragmentSequenceNumber(v3, v13);
      break;
  }

  return 0;
}

uint64_t ParseTrackFragmentAtom(uint64_t a1, uint64_t a2)
{
  v4 = **a2;
  v96 = 0;
  v95 = 0u;
  v94 = 0u;
  v92 = 0;
  v91 = 0;
  OUTLINED_FUNCTION_12_43();
  FigAtomStreamGetCurrentAtomTypeAndDataLength();
  OUTLINED_FUNCTION_249();
  v5 = FigAtomStreamInitWithParent();
  if (v5)
  {
    return v5;
  }

  v6 = *(a2 + 8);
  v93 = *a2;
  v7 = *(a2 + 16);
  *&v95 = v6;
  *(&v95 + 1) = v7;
  LOBYTE(v96) = *(a2 + 24);
  ParseChildAtoms(v4, v90, 13, &ParseTrackFragmentAtom_atomDispatch, &v93);
  v9 = v8;
  if (v8)
  {
    _MovieAtomReportParsingMessage(v4, v94, a1, "Encountered an error during parsing of track fragment atom", 5u);
  }

  if (!*(a2 + 24))
  {
    if (BYTE1(v96))
    {
      v10 = v96 == 0;
    }

    else
    {
      v10 = 1;
    }

    v11 = !v10;
    *(a2 + 24) = v11;
  }

  if (*(&v94 + 1))
  {
    if (*(*(&v94 + 1) + 176))
    {
      MovieTrackEstablishFirstFragmentBaseDecodeTime(v4, v94, *(*(&v94 + 1) + 16));
    }

    MovieTrackCreateEditSegmentArrayFromFragmentEditList(v4, v94, *(*a2 + 25));
    v12 = *(&v94 + 1);
    if (!*(*(&v94 + 1) + 72))
    {
      v39 = *(*(&v94 + 1) + 8);
      if (!v39)
      {
        v39 = (*(v94 + 728) + 56);
      }

      *v39 = 0;
      if (*(*a2 + 25))
      {
        MovieTrackIntegrateFragmentSampleGroups(v94, *(v12 + 104));
        v12 = *(&v94 + 1);
      }

      if (*(v12 + 96))
      {
        CFRelease(*(v12 + 96));
        v12 = *(&v94 + 1);
      }

      if (*(v12 + 112))
      {
        CFRelease(*(v12 + 112));
        v12 = *(&v94 + 1);
      }

      if (*(v12 + 104))
      {
        CFRelease(*(v12 + 104));
        v12 = *(&v94 + 1);
      }

      FreeSampleAuxInfo(v12);
      free(*(&v94 + 1));
      return v9;
    }

    *(v4 + 157) = 1;
    if (*(v12 + 88))
    {
      v13 = v94;
      v14 = *v93;
      v101 = 0;
      GetFirstFormatDescription(v94);
      OUTLINED_FUNCTION_35_15();
      if (*(v16 + 12))
      {
        if (*v16)
        {
          if (*(&v95 + 1))
          {
            v17 = v15;
            if (v15)
            {
              Extension = CMFormatDescriptionGetExtension(v15, *MEMORY[0x1E6962768]);
              if (Extension)
              {
                v19 = Extension;
                v20 = CFGetTypeID(Extension);
                if (v20 == CFDataGetTypeID())
                {
                  if (CFDataGetLength(v19) <= 7)
                  {
                    OUTLINED_FUNCTION_52_15(v14, v13, v21, ">> CommonEncryptionTrackEncryptionBox is too small");
                    fig_log_get_emitter();
                    OUTLINED_FUNCTION_0_4();
                    FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
                    return v9;
                  }

                  BytePtr = CFDataGetBytePtr(v19);
                  if (BytePtr[6])
                  {
                    v29 = BytePtr;
                    v88 = v14;
                    v30 = BytePtr[7];
                    v31 = MEMORY[0x1E695E480];
                    v89 = v9;
                    if (BytePtr[7])
                    {
                      if (v30 != 8 && v30 != 16)
                      {
                        OUTLINED_FUNCTION_45_14(BytePtr, v23, v24, ">> Only default_Per_Sample_IV_Size = 0, 8, 16  is supported", v25, v26, v27, v28, v87, v88);
                        fig_log_get_emitter();
                        OUTLINED_FUNCTION_0_121();
                        FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
                        return v9;
                      }

                      OUTLINED_FUNCTION_35_15();
                      v34 = *v33;
                      v35 = *v31;
                      CFArrayCreateMutable(*v31, *(v33 + 3), MEMORY[0x1E695E9C0]);
                      OUTLINED_FUNCTION_35_15();
                      *(v37 + 24) = v36;
                      if (v36)
                      {
                        v38 = 0;
LABEL_60:
                        OUTLINED_FUNCTION_35_15();
                        CFArrayCreateMutable(v35, *(v62 + 12), MEMORY[0x1E695E9C0]);
                        OUTLINED_FUNCTION_35_15();
                        *(v64 + 32) = v63;
                        if (v63)
                        {
                          if (FigAtomStreamGetCurrentAtomTypeAndDataLength())
                          {
                            goto LABEL_90;
                          }

                          OUTLINED_FUNCTION_35_15();
                          if (!*(v66 + 12))
                          {
                            goto LABEL_90;
                          }

                          v67 = 0;
                          v68 = v34 - 8;
                          while (1)
                          {
                            destination = 0;
                            v69 = *(v66 + 8);
                            if (v69)
                            {
                              v70 = *(v66 + 8);
                              destination = v69;
                            }

                            else
                            {
                              if (CMBlockBufferCopyDataBytes(*(v66 + 16), v67, 1uLL, &destination))
                              {
                                goto LABEL_90;
                              }

                              v70 = destination;
                            }

                            if (v68 + v70 > v101)
                            {
                              OUTLINED_FUNCTION_52_15(v88, v13, v65, ">> Sample auxiliary data read offset out of range");
                              fig_log_get_emitter();
                              OUTLINED_FUNCTION_0_121();
                              FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
                              goto LABEL_90;
                            }

                            if (v30)
                            {
                              Mutable = CFDataCreateMutable(v35, v30);
                              if (!Mutable)
                              {
                                break;
                              }

                              v72 = Mutable;
                              CFDataSetLength(Mutable, v30);
                              CFDataGetMutableBytePtr(v72);
                              if (FigAtomStreamReadCurrentAtomData())
                              {
                                v85 = v72;
LABEL_89:
                                CFRelease(v85);
                                goto LABEL_90;
                              }

                              OUTLINED_FUNCTION_35_15();
                              CFArrayAppendValue(*(v73 + 24), v72);
                              CFRelease(v72);
                              v68 += v30;
                            }

                            else if (v38)
                            {
                              OUTLINED_FUNCTION_35_15();
                              CFArrayAppendValue(*(v74 + 24), v38);
                            }

                            if (destination > v30)
                            {
                              v99 = 0;
                              if (FigAtomStreamReadCurrentAtomData())
                              {
                                goto LABEL_90;
                              }

                              v76 = bswap32(v99) >> 16;
                              v99 = v76;
                              if (v30 + 2 + 6 * v76 != destination)
                              {
                                OUTLINED_FUNCTION_52_15(v88, v13, v75, ">> Bad sample auxiliary data");
                                fig_log_get_emitter();
                                OUTLINED_FUNCTION_0_121();
                                FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
                                goto LABEL_90;
                              }

                              v77 = 8 * v76;
                              v78 = CFDataCreateMutable(v35, v77);
                              if (!v78)
                              {
                                break;
                              }

                              v79 = v78;
                              v68 += 2;
                              CFDataSetLength(v78, v77);
                              MutableBytePtr = CFDataGetMutableBytePtr(v79);
                              if (v99)
                              {
                                v81 = 0;
                                v82 = MutableBytePtr + 4;
                                while (1)
                                {
                                  v83 = v68;
                                  v98 = 0;
                                  v97 = 0;
                                  if (FigAtomStreamReadCurrentAtomData() || FigAtomStreamReadCurrentAtomData())
                                  {
                                    break;
                                  }

                                  *(v82 - 1) = bswap32(v98) >> 16;
                                  *v82 = bswap32(v97);
                                  v82 += 2;
                                  ++v81;
                                  v68 += 6;
                                  if (v81 >= v99)
                                  {
                                    v68 = v83 + 6;
                                    goto LABEL_85;
                                  }
                                }

                                v85 = v79;
                                goto LABEL_89;
                              }

LABEL_85:
                              OUTLINED_FUNCTION_35_15();
                              CFArrayAppendValue(*(v84 + 32), v79);
                              CFRelease(v79);
                            }

                            ++v67;
                            OUTLINED_FUNCTION_35_15();
                            if (v67 >= *(v66 + 12))
                            {
                              goto LABEL_90;
                            }
                          }
                        }

                        fig_log_get_emitter();
                        OUTLINED_FUNCTION_0_121();
                        FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
LABEL_90:
                        v9 = v89;
                        if (v38)
                        {
                          CFRelease(v38);
                        }

                        return v9;
                      }
                    }

                    else
                    {
                      Length = CFDataGetLength(v19);
                      if (Length <= 24)
                      {
                        OUTLINED_FUNCTION_45_14(Length, v41, v42, ">> CommonEncryptionTrackEncryptionBox is too small (< 25)", v43, v44, v45, v46, v87, v88);
                        fig_log_get_emitter();
                        OUTLINED_FUNCTION_0_121();
                        FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
                        return v89;
                      }

                      v47 = v29[24];
                      if (v47 > 0x10 || ((1 << v47) & 0x10101) == 0)
                      {
                        OUTLINED_FUNCTION_45_14(Length, v41, v42, ">> Only default_constant_IV_size = 0, 8, 16  is supported", v43, v44, v45, v46, v87, v88);
                        fig_log_get_emitter();
                        OUTLINED_FUNCTION_0_121();
                        FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
                        return v89;
                      }

                      OUTLINED_FUNCTION_35_15();
                      v34 = *v48;
                      MediaSubType = CMFormatDescriptionGetMediaSubType(v17);
                      if (MediaSubType != 1635135537 && MediaSubType != 1902212657)
                      {
                        v38 = 0;
                        v35 = *v31;
                        goto LABEL_60;
                      }

                      if (v47 == 8 || v47 == 16)
                      {
                        v35 = *v31;
                        OUTLINED_FUNCTION_35_15();
                        CFArrayCreateMutable(v35, *(v52 + 12), MEMORY[0x1E695E9C0]);
                        OUTLINED_FUNCTION_35_15();
                        *(v54 + 24) = v53;
                        if (v53)
                        {
                          v55 = CFDataGetLength(v19);
                          if (v55 >= v47 + 25)
                          {
                            v38 = CFDataCreate(v35, v29 + 25, v47);
                            goto LABEL_60;
                          }

                          OUTLINED_FUNCTION_45_14(v55, v56, v57, ">> CommonEncryptionTrackEncryptionBox is too small (25+default_constant_IV_size)", v58, v59, v60, v61, v87, v88);
                          fig_log_get_emitter();
                          OUTLINED_FUNCTION_0_121();
                          FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
                          return v89;
                        }
                      }
                    }

                    fig_log_get_emitter();
                    OUTLINED_FUNCTION_0_121();
                    FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
                    return v89;
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  return v9;
}

double ParseTrackFragmentHeaderAtom(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v11 = **a2;
  v52 = 0;
  v53 = 0;
  v51 = 0;
  if (!*(a2 + 40))
  {
    v57 = 0;
    v56 = 0;
    v54 = 0;
    v55 = 0;
    FigAtomStreamGetCurrentAtomTypeAndDataLength();
    CurrentAtomVersionAndFlags = FigAtomStreamGetCurrentAtomVersionAndFlags();
    if (CurrentAtomVersionAndFlags || OUTLINED_FUNCTION_31_19(CurrentAtomVersionAndFlags, v14, v15, &v55 + 4))
    {
      goto LABEL_40;
    }

    TrackForTrackID = MovieInformationFindTrackForTrackID(v11, bswap32(HIDWORD(v55)));
    *(a2 + 8) = TrackForTrackID;
    if (!TrackForTrackID)
    {
      v43 = OUTLINED_FUNCTION_249();
      OUTLINED_FUNCTION_50_10(v43, v44, v45, v46);
      fig_log_get_emitter();
      OUTLINED_FUNCTION_2_10();
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
      goto LABEL_40;
    }

    v19 = TrackForTrackID;
    if (!*(TrackForTrackID + 728))
    {
      goto LABEL_45;
    }

    if (*(*a2 + 25))
    {
      v36 = OUTLINED_FUNCTION_373();
      TrackForTrackID = MoovAssureSampleTableParsed(v36);
    }

    v20 = v56;
    v21 = 8 * (v56 & 1);
    if ((v56 & 2) != 0)
    {
      v21 = (8 * (v56 & 1)) | 4;
    }

    if ((v56 & 8) != 0)
    {
      v21 += 4;
    }

    if ((v56 & 0x10) != 0)
    {
      v21 += 4;
    }

    if ((v56 & 0x20) != 0)
    {
      v21 += 4;
    }

    if (v54 != v21 + 8)
    {
LABEL_45:
      v47 = OUTLINED_FUNCTION_373();
      OUTLINED_FUNCTION_50_10(v47, v48, v49, v50);
      fig_log_get_emitter();
      OUTLINED_FUNCTION_2_10();
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
      goto LABEL_40;
    }

    v22 = v56 & 0x20000;
    if (v56)
    {
      OUTLINED_FUNCTION_41_16();
      TrackForTrackID = FigAtomStreamReadCurrentAtomData();
      if (TrackForTrackID)
      {
        goto LABEL_40;
      }

      v53 = bswap64(v53);
      if ((v20 & 2) == 0)
      {
LABEL_20:
        HIDWORD(v52) = *(*(v19 + 728) + 40);
        if ((v20 & 8) == 0)
        {
          goto LABEL_21;
        }

        goto LABEL_29;
      }
    }

    else
    {
      v53 = *(a2 + 24);
      if (!v22)
      {
        *(a2 + 40) = 1;
      }

      if ((v20 & 2) == 0)
      {
        goto LABEL_20;
      }
    }

    TrackForTrackID = OUTLINED_FUNCTION_59_11(TrackForTrackID, v17, v18, &v52 + 4);
    if (TrackForTrackID)
    {
      goto LABEL_40;
    }

    HIDWORD(v52) = bswap32(HIDWORD(v52));
    if ((v20 & 8) == 0)
    {
LABEL_21:
      LODWORD(v52) = *(*(v19 + 728) + 44);
      if ((v20 & 0x10) == 0)
      {
LABEL_22:
        HIDWORD(v51) = *(*(v19 + 728) + 48);
        if ((v20 & 0x20) == 0)
        {
LABEL_23:
          v23 = *(*(v19 + 728) + 52);
LABEL_35:
          LODWORD(v51) = v23;
          v24 = OUTLINED_FUNCTION_34_18();
          v26 = malloc_type_calloc(v24, 0xB8uLL, v25);
          v27 = v26;
          v26[40] = v22 >> 17;
          *(v26 + 6) = v53;
          v28 = v52;
          *(v26 + 14) = HIDWORD(v52);
          *(v26 + 15) = v28;
          v29 = v51;
          *(v26 + 16) = HIDWORD(v51);
          *(v26 + 17) = v29;
          v30 = *(v19 + 728);
          v31 = *(v30 + 56);
          if (v31)
          {
            do
            {
              v32 = v31;
              v31 = *v31;
            }

            while (v31);
            *v32 = v26;
            v33 = v32[3] + v32[2];
            *(v26 + 1) = v32;
            *(v26 + 2) = v33;
            v34 = *(v32 + 9) + *(v32 + 8);
          }

          else
          {
            *(v30 + 56) = v26;
            *(v26 + 2) = MovieTrackGetMediaDurationValue(v19);
            v34 = *(v19 + 288) + 1;
          }

          *(v27 + 8) = v34;
          *(a2 + 16) = v27;
          goto LABEL_40;
        }

LABEL_33:
        if (!OUTLINED_FUNCTION_59_11(TrackForTrackID, v17, v18, &v51))
        {
          v23 = bswap32(v51);
          goto LABEL_35;
        }

LABEL_40:
        OUTLINED_FUNCTION_88_6();
        return result;
      }

LABEL_31:
      TrackForTrackID = OUTLINED_FUNCTION_59_11(TrackForTrackID, v17, v18, &v51 + 4);
      if (TrackForTrackID)
      {
        goto LABEL_40;
      }

      HIDWORD(v51) = bswap32(HIDWORD(v51));
      if ((v20 & 0x20) == 0)
      {
        goto LABEL_23;
      }

      goto LABEL_33;
    }

LABEL_29:
    OUTLINED_FUNCTION_26_23();
    TrackForTrackID = FigAtomStreamReadCurrentAtomData();
    if (TrackForTrackID)
    {
      goto LABEL_40;
    }

    LODWORD(v52) = bswap32(v52);
    if ((v20 & 0x10) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_31;
  }

  v37 = OUTLINED_FUNCTION_249();
  OUTLINED_FUNCTION_50_10(v37, v38, v39, v40);
  fig_log_get_emitter();
  OUTLINED_FUNCTION_2_10();
  OUTLINED_FUNCTION_88_6();

  return FigSignalErrorAtGM(v41, a9, a10, a11);
}

double ParseTrackFragmentBaseMediaDecodeTimeAtom(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (!v2 || *(v2 + 72))
  {
    v6 = OUTLINED_FUNCTION_502();
    OUTLINED_FUNCTION_55_15(v6, v7, v8, v9);
    fig_log_get_emitter();
    OUTLINED_FUNCTION_0_4();

    return FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
  }

  else
  {
    OUTLINED_FUNCTION_152_2();
    if (!FigAtomStreamGetCurrentAtomVersionAndFlags())
    {
      OUTLINED_FUNCTION_20_25();
      if (!FigAtomStreamReadCurrentAtomData())
      {
        v5 = *(a2 + 16);
        *(v5 + 16) = bswap32(0);
        *(v5 + 176) = 1;
      }
    }
  }

  return result;
}

uint64_t ParseTrackRunAtom(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 16) && ((FigAtomStreamGetCurrentAtomTypeAndDataLength(), CurrentAtomVersionAndFlags = FigAtomStreamGetCurrentAtomVersionAndFlags(), CurrentAtomVersionAndFlags) || (CurrentAtomVersionAndFlags = FigAtomStreamReadCurrentAtomData(), CurrentAtomVersionAndFlags)))
  {
    return CurrentAtomVersionAndFlags;
  }

  else
  {
    return 0;
  }
}

uint64_t ParseSampleAuxInfoSizesAtom()
{
  OUTLINED_FUNCTION_187();
  v3 = *(v2 + 8);
  v4 = **v2;
  v5 = *(v2 + 16);
  if (!v5)
  {
    OUTLINED_FUNCTION_50_10(v4, v3, v1, "'saiz' atom appears without prior 'tfhd' atom");
    fig_log_get_emitter();
    OUTLINED_FUNCTION_3_5();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
    goto LABEL_14;
  }

  if (*(v5 + 40) != 1)
  {
    OUTLINED_FUNCTION_50_10(v4, v3, v1, "Only supports sample auxiliary info data when default-base-is-moof is set");
    fig_log_get_emitter();
    OUTLINED_FUNCTION_3_5();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
    goto LABEL_14;
  }

  v6 = *(v5 + 88);
  if (v6 && *(v6 + 16))
  {
    return 0;
  }

  FigAtomStreamGetCurrentAtomTypeAndDataLength();
  CurrentAtomVersionAndFlags = FigAtomStreamGetCurrentAtomVersionAndFlags();
  if (CurrentAtomVersionAndFlags)
  {
    v15 = CurrentAtomVersionAndFlags;
    goto LABEL_15;
  }

  FirstFormatDescription = GetFirstFormatDescription(v3);
  MovieTrackNoteSampleAuxInfoSizesAtomPresent(v3);
  memset(v17, 0, sizeof(v17));
  OUTLINED_FUNCTION_19_32();
  CurrentAtomData = FigAtomStreamReadCurrentAtomData();
  if (CurrentAtomData)
  {
LABEL_14:
    v15 = CurrentAtomData;
    if (!CurrentAtomData)
    {
      return v15;
    }

LABEL_15:
    FreeSampleAuxInfo(*(v0 + 16));
    return v15;
  }

  v10 = *MEMORY[0x1E695E4D0];
  if (v10 != CMFormatDescriptionGetExtension(FirstFormatDescription, *MEMORY[0x1E6962760]))
  {
    return 0;
  }

  v11 = bswap32(*&v17[1]);
  v12 = *(*(v0 + 16) + 88);
  if (!v12)
  {
    v13 = OUTLINED_FUNCTION_34_18();
    v12 = malloc_type_calloc(v13, 0x28uLL, v14);
    *(*(v0 + 16) + 88) = v12;
  }

  v12[2] = 0;
  v12[3] = v11;
  v15 = 0;
  *(v12 + 2) = 0;
  return v15;
}

void ParseSampleAuxInfoOffsetsAtom()
{
  OUTLINED_FUNCTION_187();
  v3 = *(v2 + 8);
  v4 = **v2;
  v5 = *(v2 + 16);
  if (!v5)
  {
    OUTLINED_FUNCTION_50_10(v4, v3, v1, "'saio' atom appears without prior 'tfhd' atom");
    fig_log_get_emitter();
    OUTLINED_FUNCTION_3_5();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
LABEL_16:
    CurrentAtomData = v12;
    goto LABEL_17;
  }

  if (*(v5 + 40) != 1)
  {
    OUTLINED_FUNCTION_50_10(v4, v3, v1, "Only supports sample auxiliary info data when default-base-is-moof is set");
    fig_log_get_emitter();
    OUTLINED_FUNCTION_3_5();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
    goto LABEL_16;
  }

  v6 = *(v5 + 88);
  if (!v6 || !*v6)
  {
    FigAtomStreamGetCurrentAtomTypeAndDataLength();
    if (FigAtomStreamGetCurrentAtomVersionAndFlags())
    {
      goto LABEL_18;
    }

    FirstFormatDescription = GetFirstFormatDescription(v3);
    MovieTrackNoteSampleAuxInfoOffsetsAtomPresent(v3);
    OUTLINED_FUNCTION_19_32();
    CurrentAtomData = FigAtomStreamReadCurrentAtomData();
    if (!CurrentAtomData)
    {
      v9 = *MEMORY[0x1E695E4D0];
      if (v9 == CMFormatDescriptionGetExtension(FirstFormatDescription, *MEMORY[0x1E6962760]))
      {
        if (!*(*(v0 + 16) + 88))
        {
          v10 = OUTLINED_FUNCTION_34_18();
          *(*(v0 + 16) + 88) = malloc_type_calloc(v10, 0x28uLL, v11);
        }

        OUTLINED_FUNCTION_26_23();
        if (!FigAtomStreamReadCurrentAtomData())
        {
          **(*(v0 + 16) + 88) = bswap32(0);
          goto LABEL_12;
        }

LABEL_18:
        FreeSampleAuxInfo(*(v0 + 16));
        goto LABEL_12;
      }
    }

LABEL_17:
    if (!CurrentAtomData)
    {
      goto LABEL_12;
    }

    goto LABEL_18;
  }

LABEL_12:
  OUTLINED_FUNCTION_88_6();
}

uint64_t ParseEditsAtomInTrackFragment(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  v4 = **a2;
  v17[0] = v4;
  v17[1] = v3;
  OUTLINED_FUNCTION_11_30();
  v6 = OUTLINED_FUNCTION_4_47(v5);
  if (v6)
  {
    return v6;
  }

  if (!v3)
  {
    v11 = OUTLINED_FUNCTION_265();
    _MovieAtomReportParsingMessage(v11, v12, a1, v13, 3u);
    fig_log_get_emitter();
    OUTLINED_FUNCTION_2_10();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v14, v15, v16[0]);
    return v6;
  }

  *(v3 + 722) = 1;
  *(v3 + 727) = 1;
  v7 = *(v3 + 696);
  if (v7)
  {
    CFRelease(v7);
  }

  *(v3 + 696) = 0;
  *(v3 + 704) = 0;
  if (v14 < 1)
  {
    return 0;
  }

  OUTLINED_FUNCTION_312();
  v6 = FigAtomStreamInitWithParent();
  if (v6)
  {
    return v6;
  }

  ParseChildAtoms(v4, v16, 1, &ParseEditsAtomInTrackFragment_atomDispatch, v17);
  v9 = v8;
  if (v8)
  {
    _MovieAtomReportParsingMessage(v4, v3, a1, "while parsing", 5u);
  }

  return v9;
}

void ParseSampleDependencyAtomInTrackFragment(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 16))
  {
    if (!FigAtomStreamGetCurrentAtomTypeAndDataLength())
    {
      v3 = OUTLINED_FUNCTION_502();
      _MovieAtomReportParsingMessage(v3, v4, a1, v5, 2u);
      fig_log_get_emitter();
      OUTLINED_FUNCTION_20_0();
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v6, 0, v7);
    }
  }
}

uint64_t ParseFragmentSampleGroupDescriptionAtom(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  v3 = **a2;
  v27 = 0;
  cf = 0;
  v26 = 0;
  v24 = 0;
  v23 = 0;
  v22 = 0;
  if (v2)
  {
    CurrentAtomTypeAndDataLength = FigAtomStreamGetCurrentAtomTypeAndDataLength();
    if (!CurrentAtomTypeAndDataLength)
    {
      CurrentAtomTypeAndDataLength = FigAtomStreamGetCurrentAtomVersionAndFlags();
      if (!CurrentAtomTypeAndDataLength)
      {
        if (v23 - 3 <= 0xFFFFFFFD)
        {
          v14 = OUTLINED_FUNCTION_64_0();
          _MovieAtomReportParsingMessage(v14, v15, v16, v17, 2u);
          fig_log_get_emitter();
          OUTLINED_FUNCTION_0_4();
          FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
          return 0;
        }

        OUTLINED_FUNCTION_265();
        CurrentAtomTypeAndDataLength = FigAtomStreamReadCurrentAtomDataAndCreateBBuf();
        if (!CurrentAtomTypeAndDataLength)
        {
          OUTLINED_FUNCTION_156_0();
          CurrentAtomTypeAndDataLength = CMBlockBufferCreateContiguous(v5, v6, v7, v8, v9, v10, 2u, v11);
          if (!CurrentAtomTypeAndDataLength)
          {
            v18 = OUTLINED_FUNCTION_64_0();
            _MovieAtomReportParsingMessage(v18, v19, v20, v21, 2u);
            fig_log_get_emitter();
            OUTLINED_FUNCTION_0_4();
            FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
          }
        }
      }
    }
  }

  else
  {
    _MovieAtomReportParsingMessage(v3, 0, a1, "Track Information is NULL (missing track fragment header)", 3u);
    fig_log_get_emitter();
    OUTLINED_FUNCTION_0_4();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
  }

  return CurrentAtomTypeAndDataLength;
}

uint64_t ParseTrackFragmentUserDataAtom(uint64_t a1, uint64_t a2)
{
  v4 = **a2;
  v20 = 0;
  if (*(a2 + 8))
  {
    BBuf = FigAtomStreamReadCurrentAtomAndCreateBBuf();
    if (BBuf)
    {
      goto LABEL_8;
    }

    if (v4[81])
    {
      if (v4[82])
      {
LABEL_5:
        OUTLINED_FUNCTION_65_10();
        BBuf = MovieTrackSupplementQuickTimeUserDataFromBlockBuffer();
        goto LABEL_8;
      }
    }

    else if (!v4[84])
    {
      goto LABEL_5;
    }

    OUTLINED_FUNCTION_65_10();
    BBuf = MovieTrackSupplementISOUserDataFromBlockBuffer();
  }

  else
  {
    v2 = v3;
    v15 = OUTLINED_FUNCTION_312();
    _MovieAtomReportParsingMessage(v15, v16, v17, v18, 3u);
    fig_log_get_emitter();
    OUTLINED_FUNCTION_3_5();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v19, 0, v21);
  }

LABEL_8:
  v13 = OUTLINED_FUNCTION_10_11(BBuf, v6, v7, v8, v9, v10, v11, v12, v19, v20);
  if (v13)
  {
    CFRelease(v13);
  }

  return v2;
}

uint64_t FragmentInfoAddAndRetainSampleGroup(CFTypeRef cf, uint64_t a2, unint64_t a3, unsigned int a4, void *a5)
{
  v23 = 0;
  v10 = (a2 + 104);
  v9 = *(a2 + 104);
  if (!v9)
  {
    v11 = CFGetAllocator(cf);
    v12 = MovieSampleGroupCollectionCreate(v11, v10);
    if (v12)
    {
      goto LABEL_14;
    }

    v9 = *v10;
  }

  v13 = MovieSampleGroupCollectionLookupAndRetainSampleGroup(v9, a3, a4);
  v23 = v13;
  if (v13)
  {
LABEL_10:
    v21 = 0;
    *a5 = v13;
    v23 = 0;
    goto LABEL_11;
  }

  v14 = OUTLINED_FUNCTION_373();
  MovieTrackAddAndRetainSampleGroup(v14, v15, a4, v16);
  v17 = CFGetAllocator(cf);
  v12 = MovieSampleGroupCreateForFragment(v17, a3, a4, 0, &v23);
  if (!v12)
  {
    v18 = OUTLINED_FUNCTION_502();
    v12 = FragmentInfoAddAndRetainSampleGroupDescriptionArray(v18, v19, a3, v20);
    if (!v12)
    {
      v12 = MovieSampleGroupSetDescriptionArray(v23, 0);
      if (!v12)
      {
        v12 = MovieSampleGroupCollectionAddSampleGroup(*v10, v23);
        if (!v12)
        {
          v13 = v23;
          goto LABEL_10;
        }
      }
    }
  }

LABEL_14:
  v21 = v12;
LABEL_11:
  if (v23)
  {
    CFRelease(v23);
  }

  return v21;
}

void ParseMovieAtom_cold_1()
{
  OUTLINED_FUNCTION_62_10();
  OUTLINED_FUNCTION_67_11(v1, v2, v3, "No movie header atom found");
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v5, v6, vars0);
  *v0 = v4;
}

void ParseEditListAtom_cold_1(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, _DWORD *a6)
{
  _MovieAtomReportParsingMessage(a1, a2, a3, a4, 2u);
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v8, v9, v10);
  *a6 = v7;
}

void CheckAtomVersionIsZero_cold_1(void *a1, uint64_t a2, uint64_t a3, _DWORD *a4)
{
  _MovieAtomReportParsingMessage(a1, a2, a3, "Invalid atom version", 2u);
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v6, v7, vars0);
  *a4 = v5;
}

void ParseSampleDescriptionAtom_cold_1(void *a1, uint64_t a2, uint64_t a3, _DWORD *a4)
{
  _MovieAtomReportParsingMessage(a1, a2, a3, "ISO requires 1-based data reference index", 2u);
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v6, v7, vars0);
  *a4 = v5;
}

void ParseSampleDescriptionAtom_cold_2(void *a1, uint64_t a2, uint64_t a3, _DWORD *a4)
{
  _MovieAtomReportParsingMessage(a1, a2, a3, "Expected number of sample descriptions not present", 2u);
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v6, v7, vars0);
  *a4 = v5;
}

void ParseSampleDescriptionAtom_cold_3(void *a1, uint64_t a2, uint64_t a3, _DWORD *a4)
{
  _MovieAtomReportParsingMessage(a1, a2, a3, "Number of sample description entries out of range", 2u);
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v6, v7, vars0);
  *a4 = v5;
}

void ParseSampleDescriptionAtom_cold_4(void *a1, uint64_t a2, uint64_t a3, _DWORD *a4)
{
  _MovieAtomReportParsingMessage(a1, a2, a3, "Expect V0 or V1 for 'stsd'", 2u);
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v6, v7, vars0);
  *a4 = v5;
}

void ParseSampleDescriptionAtom_cold_5(void *a1, uint64_t a2, uint64_t a3, _DWORD *a4)
{
  _MovieAtomReportParsingMessage(a1, a2, a3, "'stsd' atom size less than minimum", 2u);
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v6, v7, vars0);
  *a4 = v5;
}

void ParseMOVCompactSampleToGroupAtom_cold_1(void *a1, uint64_t a2, uint64_t a3, _DWORD *a4)
{
  _MovieAtomReportParsingMessage(a1, a2, a3, "Fragment-local indexes in track-borne 'csgp' atom", 2u);
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v6, v7, vars0);
  *a4 = v5;
}

void ParseISOCompactSampleToGroupAtom_cold_1(void *a1, uint64_t a2, uint64_t a3, _DWORD *a4)
{
  _MovieAtomReportParsingMessage(a1, a2, a3, "Fragment-local indexes in track-borne 'csgp' atom", 2u);
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v6, v7, vars0);
  *a4 = v5;
}

void CommonSampleToGroupAtomParseAndCreateArrayBBuf_cold_1(void *a1, uint64_t a2, uint64_t a3, _DWORD *a4)
{
  _MovieAtomReportParsingMessage(a1, a2, a3, "Atom size is too small", 2u);
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v6, v7, vars0);
  *a4 = v5;
}

double CommonSampleToGroupAtomParseAndCreateArrayBBuf_cold_2(void *a1, uint64_t a2, uint64_t a3)
{
  _MovieAtomReportParsingMessage(a1, a2, a3, "Expected non-negative number of entries", 2u);
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v4, v5, vars0);
}

BOOL CommonSampleToGroupAtomParseAndCreateArrayBBuf_cold_3(void *a1, uint64_t a2, uint64_t a3, _DWORD *a4)
{
  _MovieAtomReportParsingMessage(a1, a2, a3, "Invalid 'sbgp' atom version", 2u);
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v7, v8, vars0);
  *a4 = v5;
  return v5 == 0;
}

void CommonMOVCompactSampleToGroupAtomParseAndCreateArrayBBuf_cold_1(void *a1, uint64_t a2, uint64_t a3, _DWORD *a4)
{
  _MovieAtomReportParsingMessage(a1, a2, a3, "Invalid atom version", 2u);
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v6, v7, vars0);
  *a4 = v5;
}

void CommonMOVCompactSampleToGroupAtomParseAndCreateArrayBBuf_cold_3(void *a1, uint64_t a2, uint64_t a3, _DWORD *a4)
{
  _MovieAtomReportParsingMessage(a1, a2, a3, "Invalid fieldSize", 2u);
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v6, v7, vars0);
  *a4 = v5;
}

void CommonMOVCompactSampleToGroupAtomParseAndCreateArrayBBuf_cold_4(void *a1, uint64_t a2, uint64_t a3, _DWORD *a4)
{
  _MovieAtomReportParsingMessage(a1, a2, a3, "'csgm' atom size less than minimum", 2u);
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v6, v7, vars0);
  *a4 = v5;
}

void CommonISOCompactSampleToGroupAtomParseAndCreateArrayBBuf_cold_1(void *a1, uint64_t a2, uint64_t a3, _DWORD *a4)
{
  _MovieAtomReportParsingMessage(a1, a2, a3, "Invalid atom version", 2u);
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v6, v7, vars0);
  *a4 = v5;
}

void CommonISOCompactSampleToGroupAtomParseAndCreateArrayBBuf_cold_2(void *a1, uint64_t a2, uint64_t a3, _DWORD *a4)
{
  _MovieAtomReportParsingMessage(a1, a2, a3, "Pattern entry is not byte aligned", 2u);
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v6, v7, vars0);
  *a4 = v5;
}

void CommonISOCompactSampleToGroupAtomParseAndCreateArrayBBuf_cold_3(void *a1, uint64_t a2, uint64_t a3, _DWORD *a4)
{
  _MovieAtomReportParsingMessage(a1, a2, a3, "'csgp' atom size less than minimum", 2u);
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v6, v7, vars0);
  *a4 = v5;
}

void CommonISOCompactSampleToGroupAtomParseAndCreateArrayBBuf_cold_4(void *a1, uint64_t a2, uint64_t a3, _DWORD *a4)
{
  _MovieAtomReportParsingMessage(a1, a2, a3, "'csgp' Atom too small to accommodate pattern entry array", 2u);
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v6, v7, vars0);
  *a4 = v5;
}

void CommonISOCompactSampleToGroupAtomParseAndCreateArrayBBuf_cold_5(void *a1, uint64_t a2, uint64_t a3, _DWORD *a4)
{
  _MovieAtomReportParsingMessage(a1, a2, a3, "Atom too small for description indexes ", 2u);
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v6, v7, vars0);
  *a4 = v5;
}

void CommonISOCompactSampleToGroupAtomParseAndCreateArrayBBuf_cold_6(void *a1, uint64_t a2, uint64_t a3, _DWORD *a4)
{
  _MovieAtomReportParsingMessage(a1, a2, a3, "'csgp' atom size less than minimum", 2u);
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v6, v7, vars0);
  *a4 = v5;
}

void ParseGenericMediaInfoHeaderAtom_cold_1(void *a1, uint64_t a2, uint64_t a3, _DWORD *a4)
{
  _MovieAtomReportParsingMessage(a1, a2, a3, "'gmhd' atom size too small", 2u);
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v6, v7, vars0);
  *a4 = v5;
}

void ParseFragmentSampleToGroupAtom_cold_1()
{
  OUTLINED_FUNCTION_62_10();
  OUTLINED_FUNCTION_67_11(v1, v2, v3, "Track Information is NULL (missing track fragment header)");
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v5, v6, vars0);
  *v0 = v4;
}

void ParseFragmentMOVCompactSampleToGroupAtom_cold_1()
{
  OUTLINED_FUNCTION_62_10();
  OUTLINED_FUNCTION_67_11(v1, v2, v3, "Track Information is NULL (missing track fragment header)");
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v5, v6, vars0);
  *v0 = v4;
}

void ParseFragmentISOCompactSampleToGroupAtom_cold_1()
{
  OUTLINED_FUNCTION_62_10();
  OUTLINED_FUNCTION_67_11(v1, v2, v3, "Track Information is NULL (missing track fragment header)");
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v5, v6, vars0);
  *v0 = v4;
}

void ParseSampleEncryptionAtomInTraf_cold_1()
{
  OUTLINED_FUNCTION_62_10();
  OUTLINED_FUNCTION_67_11(**v1, v2, v3, "Track Information is NULL (missing track fragment header)");
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v5, v6, vars0);
  *v0 = v4;
}

double FragmentInfoAddAndRetainSampleGroupDescriptionArray_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
}

double MovieTrackGetDataSourceAtIndex(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, const __CFURL *cf, unint64_t a11, UInt8 *URLBytes, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_296_0();
  a23 = v24;
  a24 = v30;
  if ((v27 & 0x8000000000000000) == 0)
  {
    v31 = v29;
    v32 = v28;
    v33 = v27;
    v34 = v26;
    v35 = v25;
    Count = *(v26 + 64);
    if (Count)
    {
      Count = CFArrayGetCount(Count);
    }

    if (Count > v33)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(*(v34 + 64), v33);
      v38 = ValueAtIndex;
      a11 = 0;
      if (!ValueAtIndex[2])
      {
        URLBytes = 0;
        if (!*ValueAtIndex)
        {
          v46 = 0;
LABEL_26:
          v38[2] = v46;
          v51 = v38[1];
          if (v51)
          {
            CFRelease(v51);
            v38[1] = 0;
          }

          goto LABEL_28;
        }

        OUTLINED_FUNCTION_613();
        if (CMBlockBufferGetDataPointer(v39, v40, v41, v42, v43))
        {
          goto LABEL_30;
        }

        if (*v38 == 1970433056)
        {
          if (!a11)
          {
            goto LABEL_13;
          }

          v44 = 0;
          while (URLBytes[v44])
          {
            if (a11 == ++v44)
            {
              goto LABEL_13;
            }
          }

          if (v44 && v44 < a11)
          {
            cf = 0;
            v47 = *MEMORY[0x1E695E480];
            CMBaseObject = CMByteStreamGetCMBaseObject();
            v49 = *(*(CMBaseObjectGetVTable() + 8) + 48);
            if (v49)
            {
              v49(CMBaseObject, *MEMORY[0x1E695FFA0], v47, &cf);
              v50 = cf;
            }

            else
            {
              v50 = 0;
            }

            v46 = CFURLCreateWithBytes(v47, URLBytes, v44, 0x8000100u, v50);
            if (cf)
            {
              CFRelease(cf);
            }

            if (v46)
            {
              goto LABEL_26;
            }

            MovieInformationReportParsingFailureMessage(v35, v34, "Could not create CFURL for url data ref", 2u);
            fig_log_get_emitter();
            OUTLINED_FUNCTION_2_10();
            FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
          }

          else
          {
LABEL_13:
            MovieInformationReportParsingFailureMessage(v35, v34, "Bad string in url data ref", 2u);
            fig_log_get_emitter();
            OUTLINED_FUNCTION_2_10();
            FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
          }
        }

        else
        {
          fig_log_get_emitter();
          OUTLINED_FUNCTION_2_10();
          FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
        }

        if (v45)
        {
LABEL_30:
          OUTLINED_FUNCTION_207_0();
          return result;
        }
      }

LABEL_28:
      *v31 = v38[2];
      if (v32)
      {
        *v32 = *v38 == 0;
      }

      goto LABEL_30;
    }
  }

  fig_log_get_emitter();
  OUTLINED_FUNCTION_2_10();
  OUTLINED_FUNCTION_207_0();

  return FigSignalErrorAtGM(v53);
}

void MovieInformationReportParsingFailureMessage(void *a1, uint64_t a2, uint64_t a3, unsigned int a4)
{
  v4 = a1 + 8;
  if (!a1)
  {
    v4 = (a2 + 640);
  }

  if (*v4 && (v9 = CFGetAllocator(a1), (v10 = CFDictionaryCreateMutable(v9, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8])) != 0))
  {
    v11 = v10;
    v12 = CFGetAllocator(a1);
    Mutable = CFStringCreateMutable(v12, 0);
    if (Mutable)
    {
      v14 = Mutable;
      CFStringAppendFormat(Mutable, 0, @"%s.", a3);
      if (a2)
      {
        FigCFDictionarySetInt32();
        FigCFDictionarySetInt32();
      }

      FigCFDictionarySetInt64();
      CFDictionarySetValue(v11, *MEMORY[0x1E6960D58], v14);
      FigCFDictionarySetInt32();
      OUTLINED_FUNCTION_266();
      if (a4 == 7)
      {
        FigAssetAnalysisReporterEditAndCombineMessage();
      }

      else
      {
        FigAssetAnalysisReporterAddMessage();
      }

      CFRelease(v14);
    }

    OUTLINED_FUNCTION_652();

    CFRelease(v15);
  }

  else
  {
    OUTLINED_FUNCTION_652();
  }
}

uint64_t MovieTrackCopyTemporalLevelCombinations(const __CFAllocator *a1, uint64_t a2, __CFArray **a3)
{
  v40 = 0;
  v39 = 0;
  *a3 = 0;
  v5 = *(a2 + 80);
  if (v5 && CFDictionaryGetValue(v5, 0x7473636C))
  {
    OUTLINED_FUNCTION_156_0();
    v14 = MovieSampleGroupDescriptionArrayCopyInfo(v8, v9, v10, v11, v12, v13);
    v15 = v14;
    if (v39)
    {
      v34 = a3;
      v35 = v14;
      if (v39 < 1)
      {
        v17 = 0;
LABEL_15:
        *v34 = v17;
        v15 = v35;
      }

      else
      {
        v33 = a2;
        v16 = 0;
        v17 = 0;
        key = *MEMORY[0x1E69601A0];
        v18 = *MEMORY[0x1E6960190];
        while (1)
        {
          ValueAtIndex = CFArrayGetValueAtIndex(v40, v16);
          v37 = 0uLL;
          v38 = 0;
          if (CFDataGetLength(ValueAtIndex) != 20)
          {
            MovieInformationReportParsingFailureMessage(0, v33, "Invalid tscl sample group description size", 2u);
            fig_log_get_emitter();
            OUTLINED_FUNCTION_0_121();
            FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v32, v33, v3);
            v15 = v28;
            Mutable = 0;
            goto LABEL_22;
          }

          BytePtr = CFDataGetBytePtr(ValueAtIndex);
          v21 = *(BytePtr + 4);
          v37 = *BytePtr;
          v38 = v21;
          Mutable = CFDictionaryCreateMutable(a1, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
          if (!Mutable || (v23 = CFDataCreate(a1, &v37 + 2, 4)) == 0)
          {
            fig_log_get_emitter();
            OUTLINED_FUNCTION_0_121();
            FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
            v15 = v29;
            goto LABEL_22;
          }

          v24 = v23;
          v25 = CFDataCreate(a1, &v37 + 6, 6);
          if (!v25)
          {
            break;
          }

          v26 = v25;
          FigCFDictionarySetInt();
          FigCFDictionarySetInt();
          FigCFDictionarySetInt();
          FigCFDictionarySetInt();
          CFDictionarySetValue(Mutable, key, v24);
          CFDictionarySetValue(Mutable, v18, v26);
          FigCFDictionarySetInt();
          if (!v17)
          {
            v17 = CFArrayCreateMutable(a1, v39, MEMORY[0x1E695E9C0]);
            if (!v17)
            {
              fig_log_get_emitter();
              OUTLINED_FUNCTION_0_121();
              FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v32, v33, v3);
              v15 = v31;
              CFRelease(v24);
              CFRelease(v26);
LABEL_25:
              CFRelease(Mutable);
              goto LABEL_16;
            }
          }

          CFArrayAppendValue(v17, Mutable);
          CFRelease(Mutable);
          CFRelease(v24);
          CFRelease(v26);
          if (++v16 >= v39)
          {
            goto LABEL_15;
          }
        }

        fig_log_get_emitter();
        OUTLINED_FUNCTION_0_121();
        FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v32, v33, v3);
        v15 = v30;
        CFRelease(v24);
LABEL_22:
        if (v17)
        {
          CFRelease(v17);
        }

        if (Mutable)
        {
          goto LABEL_25;
        }
      }
    }
  }

  else
  {
    v15 = 0;
  }

LABEL_16:
  if (v40)
  {
    CFRelease(v40);
  }

  return v15;
}

double MovieTrackCopySampleGroupDescriptionDictionary(uint64_t a1, uint64_t a2, void *a3)
{
  OUTLINED_FUNCTION_79_9(a1, a2, a3);
  if (FigCFDictionaryGetCount())
  {
    Count = CFDictionaryGetCount(*(v4 + 80));
    Mutable = CFDictionaryCreateMutable(v5, Count, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    if (Mutable)
    {
      v9 = Mutable;
      CFDictionaryApplyFunction(*(v4 + 80), SampleGroupDescCollectingApplierFunction, Mutable);
      *v3 = v9;
    }

    else
    {
      fig_log_get_emitter();
      OUTLINED_FUNCTION_20_0();

      return FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
    }
  }

  return result;
}

uint64_t MovieTrackAppendTemporalLevelCombinations(const void *a1, const __CFArray *a2)
{
  v5 = CFGetAllocator(a1);
  keys[0] = @"tscl";
  if (!a2)
  {
    return 0;
  }

  v6 = v5;
  Count = CFArrayGetCount(a2);
  if (!Count)
  {
    return 0;
  }

  v8 = Count;
  Mutable = CFArrayCreateMutable(v6, Count, MEMORY[0x1E695E9C0]);
  cf = Mutable;
  if (!Mutable)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_0_4();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
LABEL_26:
    appended = v29;
    goto LABEL_15;
  }

  *v31 = a1;
  if (v8 >= 1)
  {
    v10 = Mutable;
    v11 = 0;
    v12 = *MEMORY[0x1E695E480];
    v13 = MEMORY[0x1E695E9D8];
    v14 = MEMORY[0x1E695E9E8];
    while (1)
    {
      values = CFArrayGetValueAtIndex(a2, v11);
      v15 = CFDictionaryCreate(v12, MEMORY[0x1E6960438], &values, 1, v13, v14);
      *bytes = 0;
      v34 = 0;
      LODWORD(v35) = 0;
      HIBYTE(v32) = 0;
      VideoTemporalLayerEntryFromSampleAttachment = FigMovieGetVideoTemporalLayerEntryFromSampleAttachment(v15, bytes, &v32 + 7);
      if (VideoTemporalLayerEntryFromSampleAttachment)
      {
        break;
      }

      if (HIBYTE(v32))
      {
        v17 = CFDataCreate(v6, bytes, 20);
        if (!v17)
        {
          fig_log_get_emitter();
          OUTLINED_FUNCTION_3_2();
          FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v30, allocator, v31[0]);
          break;
        }

        v18 = v17;
        CFArrayAppendValue(v10, v17);
        CFRelease(v18);
      }

      if (v15)
      {
        CFRelease(v15);
      }

      if (v8 == ++v11)
      {
        goto LABEL_13;
      }
    }

    appended = VideoTemporalLayerEntryFromSampleAttachment;
    goto LABEL_16;
  }

LABEL_13:
  v19 = CFDictionaryCreate(v6, keys, &cf, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (!v19)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_3_2();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
    goto LABEL_26;
  }

  v26 = v19;
  appended = MovieTrackAppendSampleGroupDescriptions(v31[0], v19, v20, v21, v22, v23, v24, v25, v30, allocator, v31[0], v31[1], v32, *bytes, v34, v35, values, cf, keys[0], keys[1], keys[2], keys[3], keys[4], keys[5], keys[6]);
  CFRelease(v26);
LABEL_15:
  v15 = 0;
LABEL_16:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v15)
  {
    CFRelease(v15);
  }

  return appended;
}

uint64_t MovieSampleAccessorCopy(uint64_t a1, void *a2)
{
  v4 = *(a1 + 8);
  v5 = *(v4 + 288);
  v6 = *(v4 + 728);
  if (v6 && *(v6 + 56))
  {
    v5 += *(v6 + 8);
  }

  if (!v5)
  {
    v7 = 0;
    v23 = 4294954454;
    goto LABEL_28;
  }

  v7 = malloc_type_calloc(1uLL, 0xD8uLL, 0x106004069928606uLL);
  if (!v7)
  {
LABEL_30:
    fig_log_get_emitter();
    OUTLINED_FUNCTION_3_5();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
LABEL_31:
    v23 = v11;
    goto LABEL_28;
  }

  v8 = *a1;
  if (*a1)
  {
    v8 = CFRetain(v8);
  }

  *v7 = v8;
  v9 = *(a1 + 8);
  if (v9)
  {
    v9 = CFRetain(v9);
  }

  v7[1] = v9;
  v10 = *(a1 + 16);
  if (v10)
  {
    v11 = MovieSampleGroupAccessorCopy(v10, v7 + 2);
    if (v11)
    {
      goto LABEL_31;
    }
  }

  v12 = *(a1 + 24);
  if (v12)
  {
    v11 = MovieSampleGroupAccessorCopy(v12, v7 + 3);
    if (v11)
    {
      goto LABEL_31;
    }
  }

  v13 = *(a1 + 32);
  if (v13)
  {
    v11 = MovieSampleGroupAccessorCopy(v13, v7 + 4);
    if (v11)
    {
      goto LABEL_31;
    }
  }

  v14 = *(a1 + 40);
  if (v14)
  {
    v11 = MovieSampleGroupAccessorCopy(v14, v7 + 5);
    if (v11)
    {
      goto LABEL_31;
    }
  }

  v15 = *(a1 + 48);
  if (v15)
  {
    v11 = MovieSampleGroupAccessorCopy(v15, v7 + 6);
    if (v11)
    {
      goto LABEL_31;
    }
  }

  v16 = *(a1 + 56);
  if (v16)
  {
    v11 = MovieSampleGroupAccessorCopy(v16, v7 + 7);
    if (v11)
    {
      goto LABEL_31;
    }
  }

  v17 = *(a1 + 64);
  if (v17)
  {
    v11 = MovieSampleGroupAccessorCopy(v17, v7 + 8);
    if (v11)
    {
      goto LABEL_31;
    }
  }

  v18 = *(a1 + 72);
  if (v18)
  {
    v19 = *MEMORY[0x1E695E480];
    Count = CFDictionaryGetCount(v18);
    Mutable = CFDictionaryCreateMutable(v19, Count, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    if (Mutable)
    {
      v22 = Mutable;
      CFDictionaryApplyFunction(*(a1 + 72), CopyMovieSampleGroupAccessorIntoNewDictionary, Mutable);
      v7[9] = v22;
      goto LABEL_27;
    }

    goto LABEL_30;
  }

LABEL_27:
  memcpy(v7 + 10, (a1 + 80), 0x88uLL);
  v23 = 0;
  *a2 = v7;
  v7 = 0;
LABEL_28:
  MovieSampleAccessorDispose(v7);
  return v23;
}

void MovieSampleAccessorGetSampleLocation(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, int a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  OUTLINED_FUNCTION_845();
  a20 = v23;
  a21 = v25;
  if (!*(*(v26 + 8) + 719))
  {
    v27 = v24;
    OUTLINED_FUNCTION_216_0();
    v30 = v28;
    v31 = *(v29 + 728);
    if (v31)
    {
      if (*(v31 + 56))
      {
        v32 = *(v28 + 80);
        if (v32 > *(v29 + 288))
        {
          v33 = *(v28 + 208);
          v34 = *(v33 + 16);
          v35 = v32 - v34;
          if (v32 < v34 || v32 >= *(v33 + 40) + v34)
          {
            fig_log_get_emitter();
            OUTLINED_FUNCTION_1_4();
            FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
            if (!v27)
            {
              goto LABEL_51;
            }
          }

          else
          {
            if (v22)
            {
              v36 = *(v28 + 200);
              v37 = *(v33 + 32) + *(v36 + 48);
              v38 = *(v33 + 52);
              if ((v38 & 2) != 0)
              {
                if (v35 < 1)
                {
                  v39 = 0;
                }

                else
                {
                  v39 = 0;
                  v53 = kPerSampleInfo_SizeInInt32s[v38];
                  v54 = (v33 + 4 * kPerSampleInfo_SizeIndex[v38] + 56);
                  v55 = 4 * v53;
                  v56 = v32 - v34;
                  do
                  {
                    v39 += bswap32(*v54);
                    v54 = (v54 + v55);
                    --v56;
                  }

                  while (v56);
                }
              }

              else
              {
                v39 = (*(v36 + 64) * v35);
              }

              *v22 = v37 + v39;
            }

            if (v21)
            {
              v57 = *(v33 + 52);
              if ((v57 & 2) != 0)
              {
                v58 = bswap32(*(v33 + 4 * kPerSampleInfo_SizeInInt32s[v57] * v35 + 4 * kPerSampleInfo_SizeIndex[v57] + 56));
              }

              else
              {
                v58 = *(*(v28 + 200) + 64);
              }

              *v21 = v58;
            }

            if (!v27)
            {
              goto LABEL_51;
            }
          }

          *v27 = *(*(v30 + 200) + 56);
LABEL_51:
          OUTLINED_FUNCTION_843();
          return;
        }
      }
    }

    a11 = 0;
    if (locateChunk(v28, &a11, v27))
    {
      goto LABEL_51;
    }

    if (!(v22 | v21))
    {
      goto LABEL_51;
    }

    v40 = *(v30 + 8);
    LODWORD(v41) = *(v40 + 248);
    v42 = a11;
    v43 = CheckChunkNumber(v40, a11);
    if (v44)
    {
      goto LABEL_51;
    }

    v45 = (*(*(v30 + 8) + 616))(v43);
    if (!v41)
    {
      LODWORD(v41) = *(*(v30 + 8) + 292);
    }

    v41 = v41;
    if (*(v30 + 160) == v42)
    {
      v46 = *(v30 + 164);
      v47 = *(v30 + 80);
      if (v46 && v46 == v47 - 1)
      {
        if (!v41)
        {
          v41 = (*(*(v30 + 8) + 592))();
          v47 = *(v30 + 80);
        }

        v45 = *(v30 + 176) + *(v30 + 168);
        v48 = v41;
LABEL_28:
        *(v30 + 160) = v42;
        *(v30 + 164) = v47;
        *(v30 + 168) = v45;
        *(v30 + 176) = v48;
        if (v22)
        {
          *v22 = v45;
        }

        if (v21)
        {
          v52 = *(*(v30 + 8) + 248);
          if (!v52)
          {
            v52 = v48;
          }

          *v21 = v52;
        }

        goto LABEL_51;
      }
    }

    else
    {
      v47 = *(v30 + 80);
    }

    v49 = (v47 - *(v30 + 140)) % *(v30 + 148);
    v50 = v47 - v49;
    if (v47 >= v49)
    {
      v51 = 0;
      do
      {
        v48 = v41;
        if (!v41)
        {
          v48 = (*(*(v30 + 8) + 592))();
          v47 = *(v30 + 80);
        }

        v45 += v51;
        ++v50;
        v51 = v48;
      }

      while (v50 <= v47);
    }

    else
    {
      v48 = 0;
    }

    goto LABEL_28;
  }

  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_4();
  OUTLINED_FUNCTION_843();

  FigSignalErrorAtGM(v59);
}

void MovieSampleAccessorGetChunkDetails(uint64_t a1, _DWORD *a2, uint64_t *a3, uint64_t *a4, void *a5, void *a6, BOOL *a7, BOOL *a8, _BYTE *a9)
{
  if (a9)
  {
    *a9 = 1;
  }

  v17 = *(a1 + 8);
  v18 = *(v17 + 728);
  if (v18 && *(v18 + 56) && (v19 = *(a1 + 80), v19 > *(v17 + 288)))
  {
    if (a3)
    {
      *a3 = *(*(a1 + 208) + 32) + *(*(a1 + 200) + 48);
    }

    if (a4)
    {
      *a4 = TotalRunDataSize(*(a1 + 200), *(a1 + 208));
    }

    if (a5)
    {
      *a5 = *(*(a1 + 208) + 40);
    }

    if (a6)
    {
      *a6 = v19 - *(*(a1 + 208) + 16);
    }

    if (a7)
    {
      *a7 = (*(*(a1 + 208) + 52) & 2) == 0;
    }

    if (a8)
    {
      *a8 = (*(*(a1 + 208) + 52) & 1) == 0;
    }

    if (a2)
    {
      v20 = *(*(a1 + 200) + 56);
LABEL_40:
      *a2 = v20;
    }
  }

  else
  {
    v35 = 0;
    if (!locateChunk(a1, &v35 + 1, &v35))
    {
      v21 = CheckChunkNumber(*(a1 + 8), SHIDWORD(v35));
      if (!v22)
      {
        v23 = (*(*(a1 + 8) + 616))(v21);
        v24 = v23;
        if (a3)
        {
          *a3 = v23;
        }

        if (a4)
        {
          memcpy(__dst, a1, sizeof(__dst));
          LODWORD(__dst[10]) += HIDWORD(__dst[18]) + ~((LODWORD(__dst[10]) - HIDWORD(__dst[17])) % HIDWORD(__dst[18]));
          MovieSampleAccessorGetSampleLocation(__dst, &v33, &v32, 0, v27, v28, v29, v30, 0, 0, 0, __dst[0], __dst[1], __dst[2], __dst[3], __dst[4], __dst[5], __dst[6], __dst[7], __dst[8], __dst[9]);
          if (v31)
          {
            return;
          }

          *a4 = v33 - v24 + v32;
        }

        v25 = *(a1 + 148);
        if (a5)
        {
          *a5 = v25;
        }

        if (a6)
        {
          *a6 = (*(a1 + 80) - *(a1 + 140)) % v25;
        }

        if (a7)
        {
          v26 = v25 == 1 || *(*(a1 + 8) + 292) != 0;
          *a7 = v26;
        }

        if (a8)
        {
          if (v25 != 1)
          {
            LOBYTE(v25) = *(*(a1 + 8) + 408) == 1;
          }

          *a8 = v25;
        }

        if (a2)
        {
          v20 = v35;
          goto LABEL_40;
        }
      }
    }
  }
}

uint64_t MovieSampleAccessorGetFormatDescription(uint64_t a1, const void **a2)
{
  v8 = 0;
  v4 = *(a1 + 8);
  v5 = *(v4 + 728);
  if (v5 && *(v5 + 56) && *(a1 + 80) > *(v4 + 288))
  {
    v7 = *(*(a1 + 200) + 56);
    v8 = v7;
  }

  else
  {
    result = locateChunk(a1, &v9, &v8);
    if (result)
    {
      return result;
    }

    v4 = *(a1 + 8);
    v7 = v8;
  }

  return GetFormatDescriptionForSampleDescriptionID(v4, v7, a2);
}

uint64_t GetFormatDescriptionForSampleDescriptionID(uint64_t a1, int a2, const void **a3)
{
  idx = -1;
  SampleDescriptionInformationAtIndex = MovieTrackGetSampleDescriptionInformationAtIndex(a1, a2 - 1, &idx, 0);
  if (!SampleDescriptionInformationAtIndex)
  {
    *a3 = CFArrayGetValueAtIndex(*(a1 + 48), idx);
  }

  return SampleDescriptionInformationAtIndex;
}

uint64_t MovieSampleAccessorGetRollValue()
{
  OUTLINED_FUNCTION_8_50();
  if (v4 && *(v4 + 56) && (OUTLINED_FUNCTION_29_21(), !v6 & v5))
  {
    v8 = *(v1 + 200);
    MovieSampleGroupTypeSpecMakeBasic(1919904876);
    OUTLINED_FUNCTION_42_17();
    FragmentCursorEnsureAccessorAndCopySampleGroupDescription();
    OUTLINED_FUNCTION_51_16();
    if (!v13)
    {
      goto LABEL_20;
    }
  }

  else
  {
    v7 = *(v1 + 16);
    if (v7)
    {
      v8 = 0;
    }

    else
    {
      MovieSampleGroupTypeSpecMakeBasic(1919904876);
      v9 = OUTLINED_FUNCTION_50_11();
      if (v9)
      {
        v8 = OUTLINED_FUNCTION_69_7(v9, v10, v11, v12);
      }

      else
      {
        v8 = 0;
      }

      if (OUTLINED_FUNCTION_105_4())
      {
        goto LABEL_20;
      }

      v7 = *(v1 + 16);
    }

    if (OUTLINED_FUNCTION_104_3(v7, v2, v3))
    {
      goto LABEL_20;
    }

    v13 = theData;
    if (!theData)
    {
      goto LABEL_20;
    }
  }

  if (CFDataGetLength(v13) == 2)
  {
    BytePtr = CFDataGetBytePtr(theData);
    OUTLINED_FUNCTION_65_11(BytePtr);
    if (!v8)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

LABEL_20:
  v0 = 0;
  if (v8)
  {
LABEL_15:
    CFRelease(v8);
  }

LABEL_16:
  if (theData)
  {
    CFRelease(theData);
  }

  return v0;
}

uint64_t MovieSampleAccessorGetIndependentFramePrerollPacketCount()
{
  OUTLINED_FUNCTION_8_50();
  if (v4 && *(v4 + 56) && (OUTLINED_FUNCTION_29_21(), !v6 & v5))
  {
    v8 = *(v1 + 200);
    OUTLINED_FUNCTION_103_3();
    OUTLINED_FUNCTION_42_17();
    FragmentCursorEnsureAccessorAndCopySampleGroupDescription();
    OUTLINED_FUNCTION_51_16();
    if (!v13)
    {
      goto LABEL_20;
    }
  }

  else
  {
    v7 = *(v1 + 24);
    if (v7)
    {
      v8 = 0;
    }

    else
    {
      OUTLINED_FUNCTION_103_3();
      v9 = OUTLINED_FUNCTION_50_11();
      if (v9)
      {
        v8 = OUTLINED_FUNCTION_69_7(v9, v10, v11, v12);
      }

      else
      {
        v8 = 0;
      }

      if (OUTLINED_FUNCTION_105_4())
      {
        goto LABEL_20;
      }

      v7 = *(v1 + 24);
    }

    if (OUTLINED_FUNCTION_104_3(v7, v2, v3))
    {
      goto LABEL_20;
    }

    v13 = theData;
    if (!theData)
    {
      goto LABEL_20;
    }
  }

  if (CFDataGetLength(v13) == 2)
  {
    BytePtr = CFDataGetBytePtr(theData);
    OUTLINED_FUNCTION_65_11(BytePtr);
    if (!v8)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

LABEL_20:
  v0 = 0;
  if (v8)
  {
LABEL_15:
    CFRelease(v8);
  }

LABEL_16:
  if (theData)
  {
    CFRelease(theData);
  }

  return v0;
}

BOOL MovieSampleAccessorCopySeamIdentifier()
{
  OUTLINED_FUNCTION_8_50();
  if (v4 && *(v4 + 56) && (OUTLINED_FUNCTION_29_21(), !v6 & v5))
  {
    v8 = *(v1 + 200);
    OUTLINED_FUNCTION_102_3();
    OUTLINED_FUNCTION_42_17();
    FragmentCursorEnsureAccessorAndCopySampleGroupDescription();
    OUTLINED_FUNCTION_51_16();
    if (!v13)
    {
      goto LABEL_22;
    }
  }

  else
  {
    v7 = *(v1 + 32);
    if (v7)
    {
      v8 = 0;
    }

    else
    {
      OUTLINED_FUNCTION_102_3();
      v9 = OUTLINED_FUNCTION_50_11();
      if (v9)
      {
        v8 = OUTLINED_FUNCTION_69_7(v9, v10, v11, v12);
      }

      else
      {
        v8 = 0;
      }

      if (OUTLINED_FUNCTION_105_4())
      {
        goto LABEL_22;
      }

      v7 = *(v1 + 32);
    }

    if (OUTLINED_FUNCTION_104_3(v7, v2, v3))
    {
      goto LABEL_22;
    }

    v13 = theData;
    if (!theData)
    {
      goto LABEL_22;
    }
  }

  if (CFDataGetLength(v13) == 16)
  {
    v14 = CFGetAllocator(theData);
    v21 = *CFDataGetBytePtr(theData);
    v15 = CFUUIDCreateFromUUIDBytes(v14, v21);
    v16 = CFGetAllocator(theData);
    v17 = CFUUIDCreateString(v16, v15);
    v18 = v17 != 0;
    *v0 = v17;
    if (!v8)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

LABEL_22:
  v18 = 0;
  v15 = 0;
  if (v8)
  {
LABEL_15:
    CFRelease(v8);
  }

LABEL_16:
  if (theData)
  {
    CFRelease(theData);
  }

  if (v15)
  {
    CFRelease(v15);
  }

  return v18;
}

uint64_t MovieSampleAccessorGetSyncValues()
{
  OUTLINED_FUNCTION_8_50();
  if (v4 && *(v4 + 56) && (OUTLINED_FUNCTION_29_21(), !v6 & v5))
  {
    v8 = *(v1 + 200);
    OUTLINED_FUNCTION_101_3();
    OUTLINED_FUNCTION_42_17();
    FragmentCursorEnsureAccessorAndCopySampleGroupDescription();
    OUTLINED_FUNCTION_51_16();
    if (!v13)
    {
      goto LABEL_20;
    }
  }

  else
  {
    v7 = *(v1 + 40);
    if (v7)
    {
      v8 = 0;
    }

    else
    {
      OUTLINED_FUNCTION_101_3();
      v9 = OUTLINED_FUNCTION_50_11();
      if (v9)
      {
        v8 = OUTLINED_FUNCTION_69_7(v9, v10, v11, v12);
      }

      else
      {
        v8 = 0;
      }

      if (OUTLINED_FUNCTION_105_4())
      {
        goto LABEL_20;
      }

      v7 = *(v1 + 40);
    }

    if (OUTLINED_FUNCTION_104_3(v7, v2, v3))
    {
      goto LABEL_20;
    }

    v13 = theData;
    if (!theData)
    {
      goto LABEL_20;
    }
  }

  if (CFDataGetLength(v13) == 1)
  {
    *v0 = *CFDataGetBytePtr(theData) & 0x3F;
    v14 = 1;
    if (!v8)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

LABEL_20:
  v14 = 0;
  if (v8)
  {
LABEL_15:
    CFRelease(v8);
  }

LABEL_16:
  if (theData)
  {
    CFRelease(theData);
  }

  return v14;
}

void MovieSampleAccessorGetTsclValues(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, CFDataRef theData, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, _BYTE *a25, _BYTE *a26, _BYTE *a27, _BYTE *a28)
{
  OUTLINED_FUNCTION_296_0();
  a23 = v28;
  a24 = v30;
  v32 = v31;
  v34 = v33;
  v36 = v35;
  v38 = v37;
  v40 = v39;
  v42 = v41;
  v44 = v43;
  v45 = v29;
  theData = 0;
  v46 = *(v29 + 8);
  v47 = *(v46 + 728);
  if (v47 && *(v47 + 56) && *(v29 + 80) > *(v46 + 288))
  {
    MovieSampleGroupTypeSpecMakeBasic(1953719148);
    OUTLINED_FUNCTION_42_17();
    v55 = FragmentCursorEnsureAccessorAndCopySampleGroupDescription();
    v50 = 0;
    theData = v55;
    if (!v55)
    {
      goto LABEL_20;
    }
  }

  else
  {
    v49 = (v29 + 48);
    v48 = *(v29 + 48);
    if (v48)
    {
      v50 = 0;
    }

    else
    {
      Basic = MovieSampleGroupTypeSpecMakeBasic(1953719148);
      v54 = *(v46 + 72);
      if (v54)
      {
        v50 = OUTLINED_FUNCTION_69_7(v54, v51, v52, Basic);
      }

      else
      {
        v50 = 0;
      }

      if (MovieSampleGroupAccessorCreate(v50, (v45 + 48)))
      {
        goto LABEL_20;
      }

      v48 = *v49;
    }

    if (MovieSampleGroupAccessorCopyDescriptionForSample(v48, *(v45 + 80), &theData))
    {
      goto LABEL_20;
    }

    v55 = theData;
    if (!theData)
    {
      goto LABEL_20;
    }
  }

  if (CFDataGetLength(v55) == 20)
  {
    v61 = a28;
    v60 = a27;
    v56 = a25;
    v57 = a26;
    BytePtr = CFDataGetBytePtr(theData);
    *v44 = *BytePtr;
    *v42 = BytePtr[1] >> 6;
    *v40 = (BytePtr[1] & 0x20) != 0;
    *v38 = BytePtr[1] & 0x1F;
    *v36 = *(BytePtr + 2);
    v59 = *(BytePtr + 6);
    *(v34 + 4) = *(BytePtr + 5);
    *v34 = v59;
    *v32 = BytePtr[12];
    *v56 = BytePtr[13];
    *v57 = BytePtr[15];
    *v60 = BytePtr[17];
    *v61 = BytePtr[18];
    if (!v50)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

LABEL_20:
  if (v50)
  {
LABEL_15:
    CFRelease(v50);
  }

LABEL_16:
  if (theData)
  {
    CFRelease(theData);
  }

  OUTLINED_FUNCTION_207_0();
}

BOOL MovieSampleAccessorIsInTsas()
{
  OUTLINED_FUNCTION_279_0();
  v2 = *(v1 + 8);
  v3 = *(v2 + 728);
  if (v3 && *(v3 + 56) && *(v0 + 80) > *(v2 + 288))
  {
    v5 = *(v0 + 200);
    OUTLINED_FUNCTION_100_5();
    OUTLINED_FUNCTION_42_17();
    FragmentCursorEnsureAccessorAndCopySampleGroupDescription();
    OUTLINED_FUNCTION_51_16();
    if (v12)
    {
      goto LABEL_13;
    }
  }

  else
  {
    v4 = *(v0 + 56);
    if (v4)
    {
      v5 = 0;
    }

    else
    {
      OUTLINED_FUNCTION_100_5();
      v6 = OUTLINED_FUNCTION_50_11();
      if (v6)
      {
        v5 = OUTLINED_FUNCTION_69_7(v6, v7, v8, v9);
      }

      else
      {
        v5 = 0;
      }

      v10 = OUTLINED_FUNCTION_266();
      if (MovieSampleGroupAccessorCreate(v10, v11))
      {
        goto LABEL_19;
      }

      v4 = *(v0 + 56);
    }

    if (!MovieSampleGroupAccessorCopyDescriptionForSample(v4, *(v0 + 80), &theData))
    {
      v12 = theData;
      if (theData)
      {
LABEL_13:
        v13 = CFDataGetLength(v12) == 0;
        if (!v5)
        {
          goto LABEL_15;
        }

        goto LABEL_14;
      }
    }
  }

LABEL_19:
  v13 = 0;
  if (v5)
  {
LABEL_14:
    CFRelease(v5);
  }

LABEL_15:
  if (theData)
  {
    CFRelease(theData);
  }

  return v13;
}

BOOL MovieSampleAccessorIsInStsa()
{
  OUTLINED_FUNCTION_279_0();
  v2 = *(v1 + 8);
  v3 = *(v2 + 728);
  if (v3 && *(v3 + 56) && *(v0 + 80) > *(v2 + 288))
  {
    v5 = *(v0 + 200);
    OUTLINED_FUNCTION_99_4();
    OUTLINED_FUNCTION_42_17();
    FragmentCursorEnsureAccessorAndCopySampleGroupDescription();
    OUTLINED_FUNCTION_51_16();
    if (v12)
    {
      goto LABEL_13;
    }
  }

  else
  {
    v4 = *(v0 + 64);
    if (v4)
    {
      v5 = 0;
    }

    else
    {
      OUTLINED_FUNCTION_99_4();
      v6 = OUTLINED_FUNCTION_50_11();
      if (v6)
      {
        v5 = OUTLINED_FUNCTION_69_7(v6, v7, v8, v9);
      }

      else
      {
        v5 = 0;
      }

      v10 = OUTLINED_FUNCTION_266();
      if (MovieSampleGroupAccessorCreate(v10, v11))
      {
        goto LABEL_19;
      }

      v4 = *(v0 + 64);
    }

    if (!MovieSampleGroupAccessorCopyDescriptionForSample(v4, *(v0 + 80), &theData))
    {
      v12 = theData;
      if (theData)
      {
LABEL_13:
        v13 = CFDataGetLength(v12) == 0;
        if (!v5)
        {
          goto LABEL_15;
        }

        goto LABEL_14;
      }
    }
  }

LABEL_19:
  v13 = 0;
  if (v5)
  {
LABEL_14:
    CFRelease(v5);
  }

LABEL_15:
  if (theData)
  {
    CFRelease(theData);
  }

  return v13;
}

double MovieSampleAccessorCreateSampleGroupDataDictionary(uint64_t a1, uint64_t a2, void *a3)
{
  OUTLINED_FUNCTION_79_9(a1, a2, a3);
  v7 = *(v6 + 8);
  v8 = *(v7 + 728);
  if (!v8 || !*(v8 + 56) || *(v4 + 80) <= *(v7 + 288))
  {
    v9 = *(v4 + 72);
    if (!v9)
    {
      if (!MovieSampleGroupCollectionGetCount(*(v7 + 72)))
      {
        return result;
      }

      Mutable = CFDictionaryCreateMutable(v5, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      *(v4 + 72) = Mutable;
      if (!Mutable)
      {
        goto LABEL_14;
      }

      MovieSampleGroupCollectionApplyFunction(*(*(v4 + 8) + 72), AllSampleGroupCollectionApplierFunction, Mutable);
      v9 = *(v4 + 72);
      if (!v9)
      {
        goto LABEL_11;
      }
    }

    Count = CFDictionaryGetCount(v9);
    if (!Count)
    {
LABEL_11:
      v14 = 0;
      goto LABEL_12;
    }

    v15[0] = 0;
    v13 = CFDictionaryCreateMutable(v5, Count, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    if (v13)
    {
      v14 = v13;
      LODWORD(v15[0]) = *(v4 + 80);
      v15[1] = v13;
      CFDictionaryApplyFunction(*(v4 + 72), CopySampleGroupAccessorDataApplierFunction, v15);
LABEL_12:
      *v3 = v14;
      return result;
    }
  }

LABEL_14:
  fig_log_get_emitter();
  OUTLINED_FUNCTION_20_0();

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
}

uint64_t MovieSampleAccessorCopyCryptorIV(uint64_t a1, CFTypeRef *a2)
{
  theArray = 0;
  if (!a2)
  {
    return 0;
  }

  v3 = MovieSampleAccessorCopyCryptorIVArray(a1, 1, &theArray);
  if (v3)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(theArray, 0);
    *a2 = CFRetain(ValueAtIndex);
    CFRelease(theArray);
  }

  return v3;
}

uint64_t MovieSampleAccessorCopyCryptorIVArray(uint64_t a1, CFIndex a2, CFArrayRef *a3)
{
  v3 = 0;
  if (a2 >= 1 && a3)
  {
    v6 = *(a1 + 200);
    if (!v6)
    {
      return 0;
    }

    v7 = *(v6 + 88);
    if (!v7)
    {
      return 0;
    }

    v8 = *(v7 + 24);
    if (!v8)
    {
      return 0;
    }

    CFArrayGetCount(v8);
    OUTLINED_FUNCTION_49_12();
    if (!(v12 ^ v13 | v11))
    {
      return 0;
    }

    v15 = CFGetAllocator(*(*(v10 + 88) + 24));
    Mutable = CFArrayCreateMutable(v15, a2, MEMORY[0x1E695E9C0]);
    if (!Mutable)
    {
      fig_log_get_emitter();
      OUTLINED_FUNCTION_0_4();
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v20, v21, v22);
      return 0;
    }

    v17 = Mutable;
    v23.location = 0;
    v23.length = a2;
    CFArrayAppendArray(Mutable, *(*(*(a1 + 200) + 88) + 24), v23);
    v18 = CFGetAllocator(v17);
    Copy = CFArrayCreateCopy(v18, v17);
    *a3 = Copy;
    if (Copy)
    {
      v3 = 1;
    }

    else
    {
      fig_log_get_emitter();
      OUTLINED_FUNCTION_0_4();
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v20, v21, v22);
      v3 = 0;
    }

    CFRelease(v17);
  }

  return v3;
}

uint64_t MovieSampleAccessorCopyCryptorSubsampleAuxData(uint64_t a1, CFTypeRef *a2)
{
  theArray = 0;
  if (!a2)
  {
    return 0;
  }

  v3 = MovieSampleAccessorCopyCryptorSubsampleAuxDataArray(a1, 1, &theArray);
  if (v3)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(theArray, 0);
    *a2 = CFRetain(ValueAtIndex);
    CFRelease(theArray);
  }

  return v3;
}

uint64_t MovieSampleAccessorCopyCryptorSubsampleAuxDataArray(uint64_t a1, CFIndex a2, CFArrayRef *a3)
{
  v3 = 0;
  if (a2 >= 1 && a3)
  {
    v6 = *(a1 + 200);
    if (!v6)
    {
      return 0;
    }

    v7 = *(v6 + 88);
    if (!v7)
    {
      return 0;
    }

    v8 = *(v7 + 32);
    if (!v8)
    {
      return 0;
    }

    CFArrayGetCount(v8);
    OUTLINED_FUNCTION_49_12();
    if (!(v12 ^ v13 | v11))
    {
      return 0;
    }

    v15 = CFGetAllocator(*(*(v10 + 88) + 32));
    Mutable = CFArrayCreateMutable(v15, a2, MEMORY[0x1E695E9C0]);
    if (!Mutable)
    {
      fig_log_get_emitter();
      OUTLINED_FUNCTION_0_4();
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v20, v21, v22);
      return 0;
    }

    v17 = Mutable;
    v23.location = 0;
    v23.length = a2;
    CFArrayAppendArray(Mutable, *(*(*(a1 + 200) + 88) + 32), v23);
    v18 = CFGetAllocator(v17);
    Copy = CFArrayCreateCopy(v18, v17);
    *a3 = Copy;
    if (Copy)
    {
      v3 = 1;
    }

    else
    {
      fig_log_get_emitter();
      OUTLINED_FUNCTION_0_4();
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v20, v21, v22);
      v3 = 0;
    }

    CFRelease(v17);
  }

  return v3;
}

double MovieTrackAddSampleGroupDescriptionArray(CFMutableDictionaryRef *cf, const void *a2)
{
  if (cf[10] || (CFGetAllocator(cf), OUTLINED_FUNCTION_613(), Mutable = CFDictionaryCreateMutable(v4, v5, v6, v7), (cf[10] = Mutable) != 0))
  {
    OUTLINED_FUNCTION_496();
    OUTLINED_FUNCTION_156_0();
    if (!MovieSampleGroupDescriptionArrayCopyInfo(v9, v10, v11, v12, v13, v14))
    {
      if (CFDictionaryGetValue(cf[10], 0))
      {
        fig_log_get_emitter();
        OUTLINED_FUNCTION_0_4();
        return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v16, v17, key_4);
      }

      else
      {
        CFDictionarySetValue(cf[10], 0, a2);
      }
    }
  }

  else
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_0_4();

    return FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
  }

  return result;
}

uint64_t MovieTrackAddSampleGroup(uint64_t *cf, uint64_t a2)
{
  v5 = cf + 9;
  v4 = cf[9];
  if (!v4)
  {
    v6 = CFGetAllocator(cf);
    result = MovieSampleGroupCollectionCreate(v6, v5);
    if (result)
    {
      return result;
    }

    v4 = *v5;
  }

  return MovieSampleGroupCollectionAddSampleGroup(v4, a2);
}

void MovieTrackAddAndRetainSampleGroup(void *a1, unint64_t a2, unsigned int a3, void *a4)
{
  v12 = 0;
  v8 = a1[9];
  if (v8)
  {
    v9 = MovieSampleGroupCollectionLookupAndRetainSampleGroup(v8, a2, a3);
    cf = v9;
    if (v9)
    {
      if (!a4)
      {
        goto LABEL_14;
      }

      goto LABEL_12;
    }
  }

  else
  {
    cf = 0;
  }

  if (!MovieTrackAddAndRetainSampleGroupDescriptionArray(a1, a2, &v12))
  {
    v10 = CFGetAllocator(a1);
    if (!MovieSampleGroupCreate(v10, a2, a3, &cf) && !MovieSampleGroupSetDescriptionArray(cf, v12))
    {
      v11 = MovieTrackAddSampleGroup(a1, cf);
      if (a4)
      {
        if (!v11)
        {
          v9 = cf;
          if (!cf)
          {
LABEL_13:
            *a4 = v9;
            goto LABEL_14;
          }

LABEL_12:
          v9 = CFRetain(v9);
          goto LABEL_13;
        }
      }
    }
  }

LABEL_14:
  if (v12)
  {
    CFRelease(v12);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  OUTLINED_FUNCTION_652();
}

uint64_t MovieTrackGetDisplayTimeRange(const void *a1, uint64_t a2, CMTime *a3, uint64_t a4)
{
  memset(&v34, 0, sizeof(v34));
  v32 = 0;
  v8 = MoovAssureSampleTableParsed(a1);
  if (v8)
  {
    v12 = v8;
    v10 = 0;
    goto LABEL_13;
  }

  v9 = MovieSampleAccessorCreate(a1, a2, &v32);
  if (v9)
  {
    v12 = v9;
    v10 = v32;
    goto LABEL_13;
  }

  v10 = v32;
  if (!a3)
  {
    goto LABEL_7;
  }

  do
  {
    MovieSampleAccessorStepBackPTS(v10);
  }

  while (!v11);
  v12 = v11;
  if (v11 == -12840)
  {
    PTSTimeValue = MovieSampleAccessorGetPTSTimeValue(v10);
    CMTimeMake(&v33, PTSTimeValue, *(v10[1] + 58));
    *a3 = v33;
LABEL_7:
    if (a4)
    {
      SampleInDecodeOrder = MovieSampleAccessorMoveToLastSampleInDecodeOrder(v10);
      if (SampleInDecodeOrder)
      {
        v12 = SampleInDecodeOrder;
      }

      else
      {
        do
        {
          MovieSampleAccessorStepFwdPTS(v10);
        }

        while (!v15);
        v12 = v15;
        if (v15 == -12840)
        {
          memset(&v33, 0, sizeof(v33));
          v16 = MovieSampleAccessorGetPTSTimeValue(v10);
          CMTimeMake(&v34, v16, *(v10[1] + 58));
          SampleDuration = MovieSampleAccessorGetSampleDuration(v10, &v33);
          v25 = OUTLINED_FUNCTION_175(SampleDuration, v18, v19, v20, v21, v22, v23, v24, v33.value, *&v33.timescale, v33.epoch, v29, v34.value);
          CMTimeAdd(v27, v25, v26);
          v12 = 0;
          *a4 = v30;
          *(a4 + 16) = v31;
        }
      }
    }

    else
    {
      v12 = 0;
    }
  }

LABEL_13:
  MovieSampleAccessorDispose(v10);
  return v12;
}

uint64_t MovieTrackGetCompositionOffsetRange(uint64_t a1, uint64_t a2, _DWORD *a3, _DWORD *a4)
{
  result = MoovAssureSampleTableParsed(a1);
  if (!result)
  {
    if (a3)
    {
      *a3 = *(a2 + 116);
    }

    if (a4)
    {
      *a4 = *(a2 + 112);
    }
  }

  return result;
}

uint64_t MovieTrackGetEditSegmentWithIndex(uint64_t a1, uint64_t a2, void *a3)
{
  if (a2 < 0 || *(a1 + 816) <= a2)
  {
    return 4294954513;
  }

  OUTLINED_FUNCTION_97_7(a3, a2, *(a1 + 808));
  return 0;
}

uint64_t MovieTrackFragmentGetEditSegmentWithIndex(uint64_t a1, uint64_t a2, void *a3)
{
  if (a2 < 0 || *(a1 + 792) <= a2)
  {
    return 4294954513;
  }

  OUTLINED_FUNCTION_97_7(a3, a2, *(a1 + 784));
  return 0;
}

uint64_t MovieTrackFindEditIndexForTrackTime(uint64_t a1, _OWORD *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*(a1 + 816) && (v10 = *(a1 + 808)) != 0)
  {
    v12 = OUTLINED_FUNCTION_175(a1, a2, a3, a4, a5, a6, a7, a8, v10[6], v10[7], v10[8], v30, *a2);
    v14 = CMTimeCompare(v12, v13);
    if ((v14 & 0x80000000) != 0)
    {
      result = 0;
      v23 = 0;
    }

    else
    {
      v22 = *(a1 + 816);
      v23 = v22 - 1;
      if (v22 < 2)
      {
LABEL_8:
        result = 0;
      }

      else
      {
        v24 = 0;
        v25 = 144;
        while (1)
        {
          v26 = OUTLINED_FUNCTION_175(v14, v15, v16, v17, v18, v19, v20, v21, *(*(a1 + 808) + v25), *(*(a1 + 808) + v25 + 8), *(*(a1 + 808) + v25 + 16), v31, *a2);
          v14 = CMTimeCompare(v26, v27);
          if ((v14 & 0x80000000) != 0)
          {
            break;
          }

          v28 = v24 + 2;
          ++v24;
          v25 += 96;
          if (v28 >= *(a1 + 816))
          {
            goto LABEL_8;
          }
        }

        result = 0;
        v23 = v24;
      }
    }
  }

  else
  {
    v23 = 0;
    result = 4294954775;
  }

  *a3 = v23;
  return result;
}

uint64_t MovieTrackGetMediaTypeForSampleDescriptionID(uint64_t a1, int a2, CMMediaType *a3)
{
  desc = 0;
  FormatDescriptionForSampleDescriptionID = GetFormatDescriptionForSampleDescriptionID(a1, a2, &desc);
  if (!FormatDescriptionForSampleDescriptionID)
  {
    *a3 = CMFormatDescriptionGetMediaType(desc);
  }

  return FormatDescriptionForSampleDescriptionID;
}

double MovieTrackCreateEditSegmentArrayFromFragmentEditList(uint64_t a1, uint64_t a2, int a3)
{
  v81 = a1;
  if (!*(a2 + 722) || !*(a2 + 727))
  {
    return v7.n128_f64[0];
  }

  v5 = *(a2 + 808);
  if (v5)
  {
    v6 = (a2 + 808);
    free(v5);
    *v6 = 0;
    *(a2 + 816) = 0;
  }

  v8 = *(a2 + 704);
  if (!v8)
  {
    LODWORD(v9) = 0;
    v66 = 0;
    v67 = 0;
    v68 = 1;
LABEL_25:
    *(a2 + 824) = v68;
    goto LABEL_26;
  }

  v9 = bswap32(v8[1]);
  if (v9 < 1)
  {
    v66 = 0;
    v67 = 0;
    v68 = 2;
    goto LABEL_25;
  }

  *(a2 + 824) = 5;
  if (v9 <= 4)
  {
    v10 = 4;
  }

  else
  {
    v10 = v9;
  }

  OUTLINED_FUNCTION_73_7();
  v12 = malloc_type_calloc(v10, 0x60uLL, v11);
  if (v12)
  {
    v71 = v12;
    v73 = v10;
    HIDWORD(v77) = a3;
    v13 = 0;
    v14 = 0;
    v79 = (v8 + 2);
    v15 = v8 + 6;
    v16 = v8 + 3;
    v17 = (v12 + 72);
    v75 = v9;
    do
    {
      if (**(a2 + 704))
      {
        v18 = bswap64(*(v15 - 1));
        v19 = bswap64(*(v15 - 2));
        v20 = v15;
      }

      else
      {
        v18 = bswap32(*v16);
        v19 = bswap32(*(v16 - 1));
        v20 = (v79 + 12 * v13 + 8);
      }

      v21 = *v20;
      v22 = &v17[-5].n128_i8[8];
      if (v18 == -1)
      {
        v33 = MEMORY[0x1E6960C70];
        *v22 = *MEMORY[0x1E6960C70];
        v17[-4].n128_u64[1] = *(v33 + 16);
      }

      else
      {
        v23 = CMTimeMake(&v84, v18, *(a2 + 232));
        v31 = OUTLINED_FUNCTION_87_2(v23, v24, v25, v26, v27, v28, v29, v30, v71, v73, v75, v77, v79, v81, time.value, *&time.timescale, time.epoch, *&v84.value);
        v17[-4].n128_u64[1] = v32;
        *v22 = v31;
      }

      v34 = v81;
      v35 = CMTimeMake(&v84, v19, *(v81 + 240));
      v43 = OUTLINED_FUNCTION_87_2(v35, v36, v37, v38, v39, v40, v41, v42, v71, v73, v75, v77, v79, v81, time.value, *&time.timescale, time.epoch, *&v84.value);
      v17[1].n128_u64[0] = v44;
      *v17 = v43;
      v45 = CMTimeMake(&v84, v14, *(v34 + 240));
      v53 = OUTLINED_FUNCTION_87_2(v45, v46, v47, v48, v49, v50, v51, v52, v72, v74, v76, v78, v80, v82, time.value, *&time.timescale, time.epoch, *&v84.value);
      v17[-1].n128_u64[1] = v54;
      *(v17 - 24) = v53;
      v55 = v17 - 3;
      if (v21 == 256)
      {
        v7 = *v17;
        *v55 = *v17;
        v17[-2].n128_u64[0] = v17[1].n128_u64[0];
      }

      else
      {
        v56 = *v17;
        time.epoch = v17[1].n128_i64[0];
        *&time.value = v56;
        v57 = CMTimeMultiplyByFloat64(&v84, &time, vcvtd_n_f64_u32(bswap32(v21), 0x10uLL));
        v7 = OUTLINED_FUNCTION_87_2(v57, v58, v59, v60, v61, v62, v63, v64, v71, v73, v75, v77, v79, v81, time.value, *&time.timescale, time.epoch, *&v84.value);
        v17[-2].n128_u64[0] = v65;
        *v55 = v7;
      }

      v14 += v19;
      ++v13;
      v15 += 5;
      v16 += 3;
      v17 += 6;
      --v9;
    }

    while (v9);
    a3 = HIDWORD(v77);
    v66 = v73;
    LODWORD(v9) = v75;
    v67 = v71;
LABEL_26:
    *(a2 + 808) = v67;
    *(a2 + 820) = v66;
    *(a2 + 816) = v9;
    v69 = *(a2 + 16);
    *(a2 + 16) = v69 | 2;
    if (a3)
    {
      if (*(a2 + 922))
      {
        OUTLINED_FUNCTION_30_19(v69);
      }

      UpdateDurationsForEditSegmentChange(v81, a2);
    }

    return v7.n128_f64[0];
  }

  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_11();

  v7.n128_f64[0] = FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
  return v7.n128_f64[0];
}

void IntegrateFragmentSampleGroupCollectionApplier()
{
  OUTLINED_FUNCTION_369();
  cf = 0;
  OUTLINED_FUNCTION_496();
  if (!MovieSampleGroupGetInfo(v2, v3, v4, v5, 0))
  {
    MovieTrackAddAndRetainSampleGroup(v1, 0, 0, &cf);
    v6 = cf;
    if (!v7)
    {
      MovieSampleGroupIntegrateSampleGroup(*(v1 + 288), cf, v0);
      v6 = cf;
    }

    if (v6)
    {
      CFRelease(v6);
    }
  }
}

CMBlockBufferRef MovieTrackReviseParsedSampleCount()
{
  OUTLINED_FUNCTION_279_0();
  *(v2 + 288) = v3;
  if (!*(v2 + 312))
  {
    if (!*(v0 + 340))
    {
      return 0;
    }

    *(v0 + 340) = v1;
    v8 = *(v0 + 344);
    if (!v8)
    {
      return 0;
    }

    v9 = *(v0 + 336);
    v10 = 2 * v1;
    v11 = v1;
    v12 = (v1 + 1) / 2;
    if (v9 != 4)
    {
      v12 = 0;
    }

    if (v9 == 8)
    {
      v12 = v11;
    }

    if (v9 == 16)
    {
      v13 = v10;
    }

    else
    {
      v13 = v12;
    }

    result = CMBlockBufferCreateWithBufferReference(*MEMORY[0x1E695E480], v8, 0, v13, 0, &blockBufferOut);
    if (result)
    {
      return result;
    }

    result = blockBufferOut;
    if (!blockBufferOut)
    {
      return result;
    }

    v7 = *(v0 + 344);
    *(v0 + 344) = blockBufferOut;
    goto LABEL_18;
  }

  *(v0 + 312) = v1;
  v4 = *(v0 + 320);
  if (!v4)
  {
    return 0;
  }

  result = CMBlockBufferCreateWithBufferReference(*MEMORY[0x1E695E480], v4, 0, 4 * v1, 0, &blockBufferOut);
  if (!result)
  {
    v6 = blockBufferOut;
    if (blockBufferOut)
    {
      v7 = *(v0 + 320);
      *(v0 + 320) = blockBufferOut;
      result = v6;
LABEL_18:
      CFRetain(result);
      if (v7)
      {
        CFRelease(v7);
      }

      result = blockBufferOut;
      if (blockBufferOut)
      {
        CFRelease(blockBufferOut);
        return 0;
      }
    }
  }

  return result;
}

void MovieTrackReviseSyncSampleTable(uint64_t a1)
{
  v6 = *(a1 + 480);
  cf = 0;
  if (v6 < 1)
  {
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_83_7();
  while (1)
  {
    destination = 0;
    CMBlockBufferCopyDataBytes(*(a1 + 488), v2, 4uLL, &destination);
    if (bswap32(destination) > v1)
    {
      break;
    }

    ++v3;
    v2 += 4;
    if (v4 == v2)
    {
      v3 = v6;
      break;
    }
  }

  if (v3)
  {
    v12 = OUTLINED_FUNCTION_70_9(*MEMORY[0x1E695E480], *(a1 + 488), v7, 4 * v3, v8, v9, v10, v11, 0);
    v13 = cf;
    if (v12)
    {
      goto LABEL_14;
    }

    v14 = *(a1 + 488);
    *(a1 + 488) = cf;
    if (cf)
    {
      CFRetain(cf);
    }
  }

  else
  {
LABEL_10:
    v3 = 0;
    v14 = *(a1 + 488);
    *(a1 + 488) = 0;
  }

  if (v14)
  {
    CFRelease(v14);
  }

  *(a1 + 480) = v3;
  v13 = cf;
LABEL_14:
  if (v13)
  {
    CFRelease(v13);
  }

  OUTLINED_FUNCTION_652();
}

void MovieTrackRevisePartialSyncSampleTable(uint64_t a1)
{
  v6 = *(a1 + 504);
  cf = 0;
  if (v6 < 1)
  {
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_83_7();
  while (1)
  {
    destination = 0;
    CMBlockBufferCopyDataBytes(*(a1 + 512), v2, 4uLL, &destination);
    if (bswap32(destination) > v1)
    {
      break;
    }

    ++v3;
    v2 += 4;
    if (v4 == v2)
    {
      v3 = v6;
      break;
    }
  }

  if (v3)
  {
    v12 = OUTLINED_FUNCTION_70_9(*MEMORY[0x1E695E480], *(a1 + 512), v7, 4 * v3, v8, v9, v10, v11, 0);
    v13 = cf;
    if (v12)
    {
      goto LABEL_14;
    }

    v14 = *(a1 + 512);
    *(a1 + 512) = cf;
    if (cf)
    {
      CFRetain(cf);
    }
  }

  else
  {
LABEL_10:
    v3 = 0;
    v14 = *(a1 + 512);
    *(a1 + 512) = 0;
  }

  if (v14)
  {
    CFRelease(v14);
  }

  *(a1 + 504) = v3;
  v13 = cf;
LABEL_14:
  if (v13)
  {
    CFRelease(v13);
  }

  OUTLINED_FUNCTION_652();
}

uint64_t MovieTrackComputeNominalFrameRate()
{
  OUTLINED_FUNCTION_471();
  v3 = v2;
  v48 = 0;
  v4 = MoovAssureSampleTableParsed(v2);
  v5 = 0.0;
  if (v4)
  {
    v32 = v4;
    v12 = 0;
    goto LABEL_16;
  }

  v6 = *(v1 + 224);
  if (!v6)
  {
    v12 = 0;
    goto LABEL_15;
  }

  v7 = *(v1 + 288);
  if (*(v1 + 816) == 1 && (v8 = *(v1 + 808), (*(v8 + 3) & 0x1D) == 1) && (v9 = *v8, time1.start.epoch = *(v8 + 2), *&time1.start.value = v9, v44 = *MEMORY[0x1E6960CC0], *&time2.value = *MEMORY[0x1E6960CC0], v10 = *(MEMORY[0x1E6960CC0] + 16), time2.epoch = v10, CMTimeCompare(&time1.start, &time2)))
  {
    v45 = v10;
    v11 = MovieSampleAccessorCreate(v3, v1, &v48);
    v12 = v48;
    if (v11)
    {
      v32 = v11;
      goto LABEL_16;
    }

    v13 = *(v1 + 808);
    *&time1.start.value = *v13;
    time1.start.epoch = *(v13 + 16);
    OUTLINED_FUNCTION_496();
    MovieSampleAccessorMoveToSampleAtPTS(v14, v15, v16, v17);
    v18 = *(v12 + 20);
    PTSTimeValue = MovieSampleAccessorGetPTSTimeValue(v12);
    v20 = PTSTimeValue - MovieSampleAccessorGetDTSTimeValue(v12);
    v21 = *(v1 + 808);
    v22 = *v21;
    v23 = v21[2];
    *&time1.start.epoch = v21[1];
    *&time1.duration.timescale = v23;
    *&time1.start.value = v22;
    CMTimeRangeGetEnd(&time2, &time1);
    OUTLINED_FUNCTION_496();
    MovieSampleAccessorMoveToSampleAtPTS(v24, v25, v26, v27);
    v28 = *(v12 + 20);
    v43 = MovieSampleAccessorGetPTSTimeValue(v12);
    if (v20 == v43 - MovieSampleAccessorGetDTSTimeValue(v12))
    {
      v29 = v28;
      v30 = v45;
    }

    else
    {
      v41 = v0;
      v42 = PTSTimeValue;
      v34 = -120;
      v29 = v28;
      v35 = v28;
      while (v34 && v29 > v18)
      {
        MovieSampleAccessorStepBackPTS(v12);
        v29 = *(v12 + 20);
        v36 = MovieSampleAccessorGetPTSTimeValue(v12);
        ++v34;
        if (v20 == v36 - MovieSampleAccessorGetDTSTimeValue(v12))
        {
          v43 = v36;
          goto LABEL_25;
        }
      }

      v29 = v35;
LABEL_25:
      v30 = v45;
      v0 = v41;
      PTSTimeValue = v42;
    }

    if (v29 > v18)
    {
      v5 = (v29 - v18) / ((v43 - PTSTimeValue) / *(v1 + 232));
      v37 = *(v1 + 808);
      *&time1.start.value = *(v37 + 24);
      time1.start.epoch = *(v37 + 40);
      time2 = *(v37 + 72);
      if (CMTimeCompare(&time1.start, &time2))
      {
        OUTLINED_FUNCTION_66_11();
        *&time2.value = v44;
        time2.epoch = v30;
        if (CMTimeCompare(&time1.start, &time2) >= 1)
        {
          v38 = *(v1 + 808);
          *&time1.start.value = *(v38 + 24);
          time1.start.epoch = *(v38 + 40);
          Seconds = CMTimeGetSeconds(&time1.start);
          OUTLINED_FUNCTION_66_11();
          v32 = 0;
          v40 = Seconds / CMTimeGetSeconds(&time1.start);
          v5 = v5 * v40;
          goto LABEL_16;
        }
      }

LABEL_15:
      v32 = 0;
      goto LABEL_16;
    }
  }

  else
  {
    v12 = 0;
  }

  v31 = *(v1 + 728);
  if (v31 && *(v31 + 56))
  {
    v6 += *v31;
    v7 += *(v31 + 8);
  }

  v32 = 0;
  v5 = v7 * *(v1 + 232) / v6;
LABEL_16:
  MovieSampleAccessorDispose(v12);
  if (v0)
  {
    *v0 = v5;
  }

  return v32;
}

uint64_t MovieTrackComputePeakDataRate()
{
  OUTLINED_FUNCTION_471();
  v3 = v2;
  v19 = 0;
  v18 = 0;
  v4 = MoovAssureSampleTableParsed(v2);
  if (v4)
  {
    v15 = v4;
    v6 = 0;
  }

  else
  {
    v5 = MovieSampleAccessorCreate(v3, v1, &v19);
    v6 = v19;
    if (v5)
    {
      v15 = v5;
    }

    else
    {
      DTSTimeValue = MovieSampleAccessorGetDTSTimeValue(v19);
      CMTimeMake(&v17, DTSTimeValue, *(v6[1] + 58));
      v8 = *(v1 + 232);
      if (v8 < 1)
      {
        v15 = 0;
      }

      else
      {
        v6 = v19;
        OUTLINED_FUNCTION_613();
        MovieSampleAccessorGetChunkDetails(v9, v10, v11, v12, v13, 0, 0, 0, 0);
        if (v14)
        {
          v15 = v14;
        }

        else
        {
          v15 = 0;
          *v0 = v8 * 0;
        }
      }
    }
  }

  MovieSampleAccessorDispose(v6);
  free(0);
  return v15;
}

uint64_t MovieTrackComputeTotalTrackBytes(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  FigSimpleMutexLock();
  v6 = *(a2 + 840);
  if (!v6)
  {
    v9 = MoovAssureSampleTableParsed(a1);
    if (v9)
    {
      v7 = v9;
      goto LABEL_3;
    }

    v10 = *(a2 + 248);
    if (v10 || (v10 = *(a2 + 292)) != 0)
    {
      v11 = *(a2 + 244);
      v12 = *(a2 + 288);
      if (v11)
      {
        v12 /= v11;
      }

      v6 = v10 * v12;
    }

    else if (*(a2 + 288) < 1)
    {
      v6 = 0;
    }

    else
    {
      v6 = 0;
      v13 = 0;
      do
      {
        v6 += (*(a2 + 592))(a2, v13);
        v13 = (v13 + 1);
      }

      while (v13 < *(a2 + 288));
    }

    *(a2 + 840) = v6;
    v14 = *(a2 + 728);
    if (v14)
    {
      v15 = *(v14 + 56);
      if (v15)
      {
        v16 = 0;
        do
        {
          for (i = v15[9]; i; i = *i)
          {
            v16 += TotalRunDataSize(v15, i);
          }

          v15 = *v15;
        }

        while (v15);
        v6 += v16;
        *(a2 + 840) = v6;
      }
    }
  }

  v7 = 0;
  *a3 = v6;
LABEL_3:
  FigSimpleMutexUnlock();
  return v7;
}

uint64_t MovieTrackComputeMinSampleDuration()
{
  OUTLINED_FUNCTION_471();
  v3 = v2;
  v18 = 0;
  v16 = *MEMORY[0x1E6960C88];
  v17 = *(MEMORY[0x1E6960C88] + 16);
  v15 = 0;
  v4 = MoovAssureSampleTableParsed(v2);
  if (v4)
  {
    v13 = v4;
    v6 = 0;
  }

  else
  {
    v5 = MovieSampleAccessorCreate(v3, v1, &v18);
    v6 = v18;
    if (!v5)
    {
      while (1)
      {
        OUTLINED_FUNCTION_496();
        MovieSampleAccessorGetChunkDetails(v7, v8, v9, v10, v11, 0, 0, v12, 0);
        if (v5)
        {
          break;
        }

        if (!v15)
        {
          v13 = 0;
          goto LABEL_6;
        }
      }
    }

    v13 = v5;
  }

LABEL_6:
  *v0 = v16;
  *(v0 + 16) = v17;
  MovieSampleAccessorDispose(v6);
  return v13;
}

uint64_t MovieTrackComputeMaxEditRate()
{
  OUTLINED_FUNCTION_471();
  v3 = MoovAssureSampleTableParsed(v2);
  v4 = 1.0;
  if (!v3 && *(v1 + 816) >= 1)
  {
    v5 = 0;
    v6 = 0;
    v7 = 0;
    v8 = 1.0;
    v9 = MEMORY[0x1E6960CC0];
    while (1)
    {
      v10 = *(v1 + 808);
      if ((*(v10 + v5 + 12) & 0x1D) != 1)
      {
        goto LABEL_11;
      }

      if ((*(v10 + v5 + 36) & 0x1D) != 1)
      {
        goto LABEL_11;
      }

      OUTLINED_FUNCTION_68_10(v10);
      v19 = OUTLINED_FUNCTION_175(v11, v12, v13, v14, v15, v16, v17, v18, *v9, v9[1], v9[2], v25, time.value);
      if (CMTimeCompare(v19, v20) < 1)
      {
        goto LABEL_11;
      }

      OUTLINED_FUNCTION_68_10(*(v1 + 808));
      Seconds = CMTimeGetSeconds(&time);
      v22 = *(v1 + 808) + v5;
      v23 = *(v22 + 72);
      time.epoch = *(v22 + 88);
      *&time.value = v23;
      v4 = Seconds / CMTimeGetSeconds(&time);
      if (v7)
      {
        if (v8 >= v4)
        {
          break;
        }
      }

      v7 = 1;
LABEL_12:
      ++v6;
      v5 += 96;
      v8 = v4;
      if (v6 >= *(v1 + 816))
      {
        goto LABEL_13;
      }
    }

    v7 = 1;
LABEL_11:
    v4 = v8;
    goto LABEL_12;
  }

LABEL_13:
  *v0 = v4;
  return v3;
}

double MovieInformationAddOneTrackReference(uint64_t *a1, int a2, int a3, int a4)
{
  if (a3 && a4)
  {
    if (a2 == 1952658996)
    {
      v7 = 1953325924;
    }

    else
    {
      v7 = a2;
    }

    v8 = a1[41];
    if (v8 < 1)
    {
LABEL_12:
      if (!EnsureTrackReferenceArrayCapacityForAddition(a1))
      {
        v11 = a1[41];
        if (v11 < 1)
        {
          v13 = 0;
LABEL_21:
          if (v11 != v13)
          {
            memmove((a1[43] + 12 * v13 + 12), (a1[43] + 12 * v13), 12 * (v11 - v13));
            v11 = a1[41];
          }
        }

        else
        {
          v12 = 0;
          v13 = 0;
          v14 = a1[43];
          do
          {
            v15 = *v14;
            v14 += 3;
            if (v15 == v7)
            {
              v12 = 1;
            }

            else if (v12)
            {
              goto LABEL_21;
            }

            ++v13;
          }

          while (v11 != v13);
          v13 = a1[41];
        }

        v16 = (a1[43] + 12 * v13);
        *v16 = v7;
        v16[1] = a3;
        v16[2] = a4;
        a1[41] = v11 + 1;
        NoteTrackReferenceChange(a1, v7, a3, a4);
      }
    }

    else
    {
      v9 = (a1[43] + 8);
      while (*(v9 - 2) != v7 || *(v9 - 1) != a3 || *v9 != a4)
      {
        v9 += 3;
        if (!--v8)
        {
          goto LABEL_12;
        }
      }

      fig_log_get_emitter();
      OUTLINED_FUNCTION_1_4();

      return FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
    }
  }

  return result;
}

uint64_t MovieInformationAddOneAlternateGroupAssignment(void *a1, uint64_t a2, __int16 a3)
{
  v9 = 0;
  v5 = a1[44];
  if (v5 < 1)
  {
LABEL_5:
    result = NewTrackAlternateGroupAssignment(a1, &v9);
    if (result)
    {
      return result;
    }

    v8 = v9;
    *v9 = *(a2 + 144);
    v6 = v8 + 1;
  }

  else
  {
    v6 = (a1[46] + 4);
    while (*(v6 - 1) != *(a2 + 144))
    {
      v6 += 4;
      if (!--v5)
      {
        goto LABEL_5;
      }
    }
  }

  result = 0;
  *v6 = a3;
  return result;
}

void MovieTrackCreateEnhancedGaplessInfo(void *a1, uint64_t a2)
{
  v12 = 0;
  if (*(a2 + 24) == 1936684398)
  {
    if (*(a2 + 832))
    {
      fig_log_get_emitter();
      OUTLINED_FUNCTION_20_0();
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v6, DWORD2(v6), v7);
    }

    else
    {
      MovieInformationCreateiTunesMetadataReader(a1, &v12);
      if (!v12)
      {
        return;
      }

      v3 = MovieTrackCopyFormatDescriptionArray(a2);
      if (v3)
      {
        v4 = v3;
        if (CFArrayGetCount(v3) >= 1)
        {
          v10 = 0;
          v11 = 0;
          if (FigGaplessInfoFetchiTunesParametersFromMetadataReader(v12, &v10))
          {
            ValueAtIndex = CFArrayGetValueAtIndex(v4, 0);
            v8 = 0uLL;
            v9 = 0;
            MovieTrackGetMediaDuration(a2, &v8);
            v6 = v8;
            v7 = v9;
            *(a2 + 832) = FigGaplessInfoCreateEnhanced_CorrectingWithUneditedDuration(ValueAtIndex, &v6, v10, HIDWORD(v10), v11);
          }
        }

        CFRelease(v4);
      }
    }

    if (v12)
    {
      CFRelease(v12);
    }
  }
}

double MovieTrackCopyEnhancedGaplessInfo(uint64_t a1, void *a2)
{
  if (a2)
  {
    if (*(a1 + 24) == 1936684398)
    {
      FigSimpleMutexLock();
      v4 = *(a1 + 832);
      if (v4)
      {
        v4 = CFRetain(v4);
      }

      *a2 = v4;
      FigSimpleMutexUnlock();
    }
  }

  else
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_3_5();

    return FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
  }

  return result;
}

uint64_t MovieTrackSupplementQuickTimeUserDataFromBlockBuffer()
{
  OUTLINED_FUNCTION_36_20();
  theArray = 0;
  cf = 0;
  v18 = 0;
  v19 = 0;
  v4 = CFGetAllocator(v3);
  v5 = FigMetadataReaderCreateForQuickTimeUserDataBlockBuffer(v4, v2, &cf);
  if (v5)
  {
    goto LABEL_26;
  }

  v6 = CFGetAllocator(v1);
  v5 = FigMetadataCopyAllMetadataItems(v6, cf, &theArray);
  if (v5)
  {
    goto LABEL_26;
  }

  if (!theArray || CFArrayGetCount(theArray) < 1)
  {
    v14 = 0;
LABEL_9:
    v15 = 0;
    v11 = 0;
    goto LABEL_10;
  }

  v7 = OUTLINED_FUNCTION_177();
  MovieTrackCreateQuickTimeUserDataReader(v7, v8, v9);
  if (v5)
  {
LABEL_26:
    v14 = v5;
    goto LABEL_9;
  }

  LODWORD(v17) = theArray;
  if (theArray)
  {
    v17 = CFRetain(theArray);
    v15 = v17;
  }

  else
  {
    v15 = 0;
  }

  MovieTrackSetTrackMetadataItemArray(v17, v0, @"com.apple.quicktime.udta", v15);
  v10 = CFGetAllocator(v1);
  v11 = CFDictionaryCreate(v10, &kFigMetadataFormat_QuickTimeUserData, &theArray, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v12 = OUTLINED_FUNCTION_177();
  PostTrackMetadataSupplementedNotification(v12, v13, v11);
  v14 = 0;
LABEL_10:
  if (cf)
  {
    CFRelease(cf);
  }

  if (theArray)
  {
    CFRelease(theArray);
  }

  if (v19)
  {
    CFRelease(v19);
  }

  if (v18)
  {
    CFRelease(v18);
  }

  if (v15)
  {
    CFRelease(v15);
  }

  if (v11)
  {
    CFRelease(v11);
  }

  return v14;
}

void PostTrackMetadataSupplementedNotification(uint64_t a1, uint64_t a2, void *a3)
{
  v15 = *MEMORY[0x1E69E9840];
  v14 = 0;
  v12 = 0;
  if ((*(a1 + 16) & 4) == 0 && !*(a1 + 32))
  {
    return;
  }

  keys = @"Metadata";
  values = a3;
  if (!*(a1 + 184))
  {
    v5 = 0;
    goto LABEL_7;
  }

  v4 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt32Type, (a1 + 188));
  v5 = v4;
  if (!v4)
  {
LABEL_7:
    v6 = 1;
    goto LABEL_8;
  }

  v14 = @"SequenceNumber";
  v12 = v4;
  v6 = 2;
LABEL_8:
  v7 = CFGetAllocator(a1);
  v8 = CFDictionaryCreate(v7, &keys, &values, v6, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (v8)
  {
    v9 = v8;
    v10 = *(a1 + 32);
    CMNotificationCenterGetDefaultLocalCenter();
    if (v10)
    {
      FigDeferNotificationToDispatchQueue();
    }

    else
    {
      CMNotificationCenterPostNotification();
    }

    CFRelease(v9);
  }

  if (v5)
  {
    CFRelease(v5);
  }
}

uint64_t MovieTrackSupplementISOUserDataFromBlockBuffer()
{
  OUTLINED_FUNCTION_36_20();
  theArray = 0;
  cf = 0;
  v18 = 0;
  v19 = 0;
  v4 = CFGetAllocator(v3);
  v5 = FigMetadataReaderCreateForISOUserDataBlockBuffer(v4, v2, &cf);
  if (v5)
  {
    goto LABEL_26;
  }

  v6 = CFGetAllocator(v1);
  v5 = FigMetadataCopyAllMetadataItems(v6, cf, &theArray);
  if (v5)
  {
    goto LABEL_26;
  }

  if (!theArray || CFArrayGetCount(theArray) < 1)
  {
    v14 = 0;
LABEL_9:
    v15 = 0;
    v11 = 0;
    goto LABEL_10;
  }

  v7 = OUTLINED_FUNCTION_177();
  MovieTrackCreateISOUserDataReader(v7, v8, v9);
  if (v5)
  {
LABEL_26:
    v14 = v5;
    goto LABEL_9;
  }

  LODWORD(v17) = theArray;
  if (theArray)
  {
    v17 = CFRetain(theArray);
    v15 = v17;
  }

  else
  {
    v15 = 0;
  }

  MovieTrackSetTrackMetadataItemArray(v17, v0, @"org.mp4ra", v15);
  v10 = CFGetAllocator(v1);
  v11 = CFDictionaryCreate(v10, &kFigMetadataFormat_ISOUserData, &theArray, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v12 = OUTLINED_FUNCTION_177();
  PostTrackMetadataSupplementedNotification(v12, v13, v11);
  v14 = 0;
LABEL_10:
  if (cf)
  {
    CFRelease(cf);
  }

  if (theArray)
  {
    CFRelease(theArray);
  }

  if (v19)
  {
    CFRelease(v19);
  }

  if (v18)
  {
    CFRelease(v18);
  }

  if (v15)
  {
    CFRelease(v15);
  }

  if (v11)
  {
    CFRelease(v11);
  }

  return v14;
}

uint64_t MovieSampleTableSet_cslg(uint64_t a1, CMBlockBufferRef theSourceBuffer)
{
  if (!theSourceBuffer)
  {
    return 0;
  }

  result = CMBlockBufferCopyDataBytes(theSourceBuffer, 0, 0x18uLL, (a1 + 552));
  if (!result)
  {
    *(a1 + 576) = 1;
  }

  return result;
}

void *MovieInformationCreateDeepCopy(const __CFAllocator *a1, void *a2, char a3, void *a4)
{
  v8 = a2;
  v155 = 0;
  if (a2[3])
  {
    v10 = FigReadWriteLockLockForRead();
    if (v10)
    {
      v4 = v10;
      goto LABEL_152;
    }
  }

  v11 = MovieInformationCreate(a1, a3 & 3, &v155);
  v12 = v155;
  if (v11)
  {
    goto LABEL_155;
  }

  v13 = v8[6];
  if (v13)
  {
    v11 = MovieInformationSetByteStream(v155, v13);
    if (v11)
    {
      goto LABEL_155;
    }
  }

  memcpy(v12 + 27, v8 + 27, 0x50uLL);
  value = 0;
  v157 = 0;
  v153 = v8[38];
  if (v153 < 1)
  {
    v4 = 0;
    goto LABEL_138;
  }

  v150 = v5;
  v151 = a4;
  v14 = 0;
  v15 = v8[3];
  allocator = *MEMORY[0x1E695E480];
  v152 = v8;
  while (1)
  {
    if (v8[38] <= v14)
    {
      v16 = 0;
    }

    else
    {
      v16 = *(v8[40] + 8 * v14);
    }

    v17 = MovieTrackCreate(&v157);
    if (v17)
    {
      goto LABEL_168;
    }

    v18 = v15;
    v19 = v157;
    *(v157 + 6) = *(v16 + 24);
    if (*(v16 + 40))
    {
      Mutable = CFArrayCreateMutable(allocator, 0, MEMORY[0x1E695E9C0]);
      *(v19 + 5) = Mutable;
      if (!Mutable)
      {
        goto LABEL_136;
      }

      Count = CFArrayGetCount(*(v16 + 40));
      if (Count >= 1)
      {
        v22 = Count;
        v23 = 0;
        do
        {
          ValueAtIndex = CFArrayGetValueAtIndex(*(v16 + 40), v23);
          v30 = OUTLINED_FUNCTION_3_103(ValueAtIndex, ValueAtIndex, v25, v26, v27, v28, v29, &value);
          if (v30)
          {
            goto LABEL_137;
          }

          CFArrayAppendValue(*(v19 + 5), value);
          if (value)
          {
            CFRelease(value);
            value = 0;
          }
        }

        while (v22 != ++v23);
      }
    }

    if (*(v16 + 56))
    {
      OUTLINED_FUNCTION_613();
      v34 = CFArrayCreateMutable(v31, v32, v33);
      *(v19 + 7) = v34;
      if (!v34)
      {
        goto LABEL_136;
      }

      v35 = CFArrayGetCount(*(v16 + 56));
      if (v35 >= 1)
      {
        v4 = v35;
        v36 = 0;
        while (1)
        {
          v37 = CFArrayGetValueAtIndex(*(v16 + 56), v36);
          v38 = malloc_type_malloc(0x10uLL, 0x1000040451B5BE8uLL);
          if (!v38)
          {
            break;
          }

          *v38 = *v37;
          CFArrayAppendValue(*(v19 + 7), v38);
          if (v4 == ++v36)
          {
            goto LABEL_26;
          }
        }

LABEL_136:
        fig_log_get_emitter();
        OUTLINED_FUNCTION_3_2();
        FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
        goto LABEL_137;
      }
    }

LABEL_26:
    v39 = *(v16 + 48);
    if (v39)
    {
      v40 = CFArrayGetCount(v39);
      MutableCopy = CFArrayCreateMutableCopy(a1, v40, *(v16 + 48));
      *(v19 + 6) = MutableCopy;
      if (!MutableCopy)
      {
        goto LABEL_136;
      }
    }

    if (*(v16 + 64))
    {
      OUTLINED_FUNCTION_613();
      v45 = CFArrayCreateMutable(v42, v43, v44);
      *(v19 + 8) = v45;
      if (!v45)
      {
        goto LABEL_136;
      }

      v46 = CFArrayGetCount(*(v16 + 64));
      if (v46 >= 1)
      {
        v47 = v46;
        v48 = 0;
        while (1)
        {
          v49 = CFArrayGetValueAtIndex(*(v16 + 64), v48);
          v55 = v49;
          v56 = v49[1];
          if (v56)
          {
            v30 = OUTLINED_FUNCTION_3_103(v49, v56, v50, v51, v52, v53, v54, &value);
            if (v30)
            {
              break;
            }
          }

          v57 = malloc_type_calloc(1uLL, 0x18uLL, 0x1060040ABACF81FuLL);
          if (!v57)
          {
            goto LABEL_136;
          }

          v4 = v57;
          *v57 = *v55;
          v58 = v55[2];
          if (v58)
          {
            v58 = CFRetain(v58);
          }

          v4[1] = value;
          v4[2] = v58;
          value = 0;
          CFArrayAppendValue(*(v19 + 8), v4);
          if (v47 == ++v48)
          {
            goto LABEL_38;
          }
        }

LABEL_137:
        v4 = v30;
        a4 = v151;
        v8 = v152;
        goto LABEL_138;
      }
    }

LABEL_38:
    cf = 0;
    v15 = v18;
    v8 = v152;
    if (MovieSampleGroupCollectionGetCount(*(v16 + 72)))
    {
      v59 = CFGetAllocator(v19);
      v60 = MovieSampleGroupCollectionCreate(v59, &cf);
      if (v60)
      {
        v4 = v60;
        if (cf)
        {
          CFRelease(cf);
        }

        goto LABEL_134;
      }

      MovieSampleGroupCollectionApplyFunction(*(v16 + 72), SampleGroupDeepCopyApplier, cf);
      *(v19 + 9) = cf;
    }

    *(v19 + 14) = *(v16 + 112);
    LODWORD(v61) = memcpy(v19 + 120, (v16 + 120), 0x58uLL);
    v68 = *(v16 + 224);
    *(v19 + 13) = *(v16 + 208);
    *(v19 + 14) = v68;
    v19[240] = *(v16 + 240);
    *(v19 + 244) = *(v16 + 244);
    v69 = *(v16 + 260);
    *(v19 + 252) = *(v16 + 252);
    *(v19 + 65) = v69;
    v70 = *(v16 + 272);
    *(v19 + 33) = *(v16 + 264);
    *(v19 + 68) = v70;
    v71 = *(v16 + 284);
    *(v19 + 276) = *(v16 + 276);
    *(v19 + 71) = v71;
    *(v19 + 36) = *(v16 + 288);
    *(v19 + 88) = *(v16 + 88);
    *(v19 + 13) = *(v16 + 104);
    *(v19 + 74) = *(v16 + 296);
    *(v19 + 38) = *(v16 + 304);
    cf = 0;
    *(v19 + 73) = GetNumSamples_stsz;
    *(v19 + 74) = GetSampleSize_stsz;
    *(v19 + 75) = GetSampleSizeFieldSize_stsz;
    *(v19 + 76) = GetSizeTable_stsz;
    *(v19 + 77) = GetChunkOffset_stco;
    *(v19 + 78) = GetChunkCount_stco;
    *(v19 + 79) = GetChunkTable_stco;
    v72 = *(v16 + 312);
    if (v72)
    {
      v73 = *(v16 + 320);
      if (v73)
      {
        if (v15)
        {
          OUTLINED_FUNCTION_1_130(v61, v73, v62, v63, v64, v65, v66, v67, v149, v150, v151, v152, v153, allocator, v155, value, v157, cf);
        }

        else
        {
          OUTLINED_FUNCTION_4_101(v61, v73, v62, v63, v64, v65, v66, v67, v149, v150, v151, v152, v153, allocator, v155, value, v157, cf);
        }

        OUTLINED_FUNCTION_24_22();
        if (v74)
        {
          goto LABEL_165;
        }

        v72 = *(v16 + 312);
      }

      else
      {
        v63 = 0;
      }

      MovieSampleTableSet_stsz(v19, v72, *(v16 + 316), v63);
      LODWORD(v61) = cf;
      if (cf)
      {
        CFRelease(cf);
        cf = 0;
      }
    }

    v75 = *(v16 + 344);
    if (v75)
    {
      break;
    }

LABEL_59:
    v77 = *(v16 + 368);
    if (v77)
    {
      if (v15)
      {
        OUTLINED_FUNCTION_1_130(v61, v77, v62, v63, v64, v65, v66, v67, v149, v150, v151, v152, v153, allocator, v155, value, v157, cf);
      }

      else
      {
        OUTLINED_FUNCTION_4_101(v61, v77, v62, v63, v64, v65, v66, v67, v149, v150, v151, v152, v153, allocator, v155, value, v157, cf);
      }

      OUTLINED_FUNCTION_24_22();
      if (v78)
      {
        goto LABEL_165;
      }

      v79 = OUTLINED_FUNCTION_38_15();
      MovieSampleTableSet_stco(v79, v80, v81);
      LODWORD(v61) = cf;
      if (cf)
      {
        CFRelease(cf);
        cf = 0;
      }
    }

    v82 = *(v16 + 392);
    if (v82)
    {
      if (v15)
      {
        OUTLINED_FUNCTION_1_130(v61, v82, v62, v63, v64, v65, v66, v67, v149, v150, v151, v152, v153, allocator, v155, value, v157, cf);
      }

      else
      {
        OUTLINED_FUNCTION_4_101(v61, v82, v62, v63, v64, v65, v66, v67, v149, v150, v151, v152, v153, allocator, v155, value, v157, cf);
      }

      OUTLINED_FUNCTION_24_22();
      if (v83)
      {
        goto LABEL_165;
      }

      v84 = OUTLINED_FUNCTION_38_15();
      MovieSampleTableSet_co64(v84, v85, v86);
      LODWORD(v61) = cf;
      if (cf)
      {
        CFRelease(cf);
        cf = 0;
      }
    }

    v87 = *(v16 + 416);
    if (v87)
    {
      if (v15)
      {
        OUTLINED_FUNCTION_1_130(v61, v87, v62, v63, v64, v65, v66, v67, v149, v150, v151, v152, v153, allocator, v155, value, v157, cf);
      }

      else
      {
        OUTLINED_FUNCTION_4_101(v61, v87, v62, v63, v64, v65, v66, v67, v149, v150, v151, v152, v153, allocator, v155, value, v157, cf);
      }

      OUTLINED_FUNCTION_24_22();
      if (v88)
      {
        goto LABEL_165;
      }

      v89 = OUTLINED_FUNCTION_38_15();
      MovieSampleTableSet_stts(v89, v90, v91);
      LODWORD(v61) = cf;
      if (cf)
      {
        CFRelease(cf);
        cf = 0;
      }
    }

    v92 = *(v16 + 440);
    if (v92)
    {
      if (v15)
      {
        OUTLINED_FUNCTION_1_130(v61, v92, v62, v63, v64, v65, v66, v67, v149, v150, v151, v152, v153, allocator, v155, value, v157, cf);
      }

      else
      {
        OUTLINED_FUNCTION_4_101(v61, v92, v62, v63, v64, v65, v66, v67, v149, v150, v151, v152, v153, allocator, v155, value, v157, cf);
      }

      OUTLINED_FUNCTION_24_22();
      if (v93)
      {
        goto LABEL_165;
      }

      v94 = OUTLINED_FUNCTION_38_15();
      MovieSampleTableSet_stsc(v94, v95, v96);
      LODWORD(v61) = cf;
      if (cf)
      {
        CFRelease(cf);
        cf = 0;
      }
    }

    v97 = *(v16 + 464);
    if (v97)
    {
      if (v15)
      {
        OUTLINED_FUNCTION_1_130(v61, v97, v62, v63, v64, v65, v66, v67, v149, v150, v151, v152, v153, allocator, v155, value, v157, cf);
      }

      else
      {
        OUTLINED_FUNCTION_4_101(v61, v97, v62, v63, v64, v65, v66, v67, v149, v150, v151, v152, v153, allocator, v155, value, v157, cf);
      }

      OUTLINED_FUNCTION_24_22();
      if (v98)
      {
        goto LABEL_165;
      }

      v99 = OUTLINED_FUNCTION_38_15();
      MovieSampleTableSet_ctts(v99, v100, v101);
      LODWORD(v61) = cf;
      if (cf)
      {
        CFRelease(cf);
        cf = 0;
      }
    }

    v102 = *(v16 + 488);
    if (v102)
    {
      if (v15)
      {
        IsEmpty = CMBlockBufferIsEmpty(*(v16 + 488));
        if (IsEmpty)
        {
          OUTLINED_FUNCTION_92_6(IsEmpty, v104, v105, v106, v107, v108, v109, v110, v149, v150, v151, v152, v153, allocator, v155, value, v157, cf);
        }

        else
        {
          OUTLINED_FUNCTION_1_130(0, *(v16 + 488), v105, v106, v107, v108, v109, v110, v149, v150, v151, v152, v153, allocator, v155, value, v157, cf);
        }
      }

      else
      {
        OUTLINED_FUNCTION_4_101(v61, v102, v62, v63, v64, v65, v66, v67, v149, v150, v151, v152, v153, allocator, v155, value, v157, cf);
      }

      OUTLINED_FUNCTION_24_22();
      if (v111)
      {
        goto LABEL_165;
      }

      v112 = OUTLINED_FUNCTION_38_15();
      MovieSampleTableSet_stss(v112, v113, v114);
      LODWORD(v61) = cf;
      if (cf)
      {
        CFRelease(cf);
        cf = 0;
      }
    }

    v115 = *(v16 + 512);
    if (v115)
    {
      if (v15)
      {
        v116 = CMBlockBufferIsEmpty(*(v16 + 512));
        if (v116)
        {
          OUTLINED_FUNCTION_92_6(v116, v117, v118, v119, v120, v121, v122, v123, v149, v150, v151, v152, v153, allocator, v155, value, v157, cf);
        }

        else
        {
          OUTLINED_FUNCTION_1_130(0, *(v16 + 512), v118, v119, v120, v121, v122, v123, v149, v150, v151, v152, v153, allocator, v155, value, v157, cf);
        }
      }

      else
      {
        OUTLINED_FUNCTION_4_101(v61, v115, v62, v63, v64, v65, v66, v67, v149, v150, v151, v152, v153, allocator, v155, value, v157, cf);
      }

      OUTLINED_FUNCTION_24_22();
      if (v124)
      {
        goto LABEL_165;
      }

      v125 = OUTLINED_FUNCTION_38_15();
      MovieSampleTableSet_stps(v125, v126, v127);
      LODWORD(v61) = cf;
      if (cf)
      {
        CFRelease(cf);
        cf = 0;
      }
    }

    v128 = *(v16 + 536);
    if (v128)
    {
      if (v15)
      {
        OUTLINED_FUNCTION_1_130(v61, v128, v62, v63, v64, v65, v66, v67, v149, v150, v151, v152, v153, allocator, v155, value, v157, cf);
      }

      else
      {
        OUTLINED_FUNCTION_4_101(v61, v128, v62, v63, v64, v65, v66, v67, v149, v150, v151, v152, v153, allocator, v155, value, v157, cf);
      }

      OUTLINED_FUNCTION_24_22();
      if (v129)
      {
        goto LABEL_165;
      }

      v130 = OUTLINED_FUNCTION_38_15();
      MovieSampleTableSet_sdtp(v130, v131, v132);
      if (cf)
      {
        CFRelease(cf);
      }
    }

    if (*(v16 + 576))
    {
      v19[576] = 1;
      v133 = *(v16 + 552);
      *(v19 + 71) = *(v16 + 568);
      *(v19 + 552) = v133;
    }

    v19[722] = *(v16 + 722);
    *(v19 + 204) = *(v16 + 816);
    v134 = *(v16 + 820);
    *(v19 + 205) = v134;
    *(v19 + 206) = *(v16 + 824);
    if (v134)
    {
      v135 = malloc_type_malloc(96 * v134, 0x1000040565EDBD2uLL);
      *(v19 + 101) = v135;
      if (!v135)
      {
        fig_log_get_emitter();
        OUTLINED_FUNCTION_3_2();
        FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v149, v150, v151);
LABEL_168:
        v4 = v17;
LABEL_134:
        a4 = v151;
        goto LABEL_138;
      }

      v136 = *(v16 + 816);
      if (v136)
      {
        memcpy(v135, *(v16 + 808), 96 * v136);
      }
    }

    v137 = *(v16 + 832);
    if (v137)
    {
      *(v19 + 104) = CFDictionaryCreateCopy(a1, v137);
    }

    *(v19 + 105) = *(v16 + 840);
    v138 = *(v16 + 856);
    if (v138)
    {
      *(v19 + 107) = CFStringCreateCopy(a1, v138);
    }

    v139 = *(v16 + 848);
    if (v139)
    {
      *(v19 + 106) = CFStringCreateCopy(a1, v139);
    }

    *(v19 + 54) = *(v16 + 864);
    *(v19 + 220) = *(v16 + 880);
    v17 = MovieInformationAddNewPerTrackInfo(v12, v19);
    if (v17)
    {
      goto LABEL_168;
    }

    CFRelease(v19);
    v157 = 0;
    if (++v14 == v153)
    {
      v4 = 0;
      goto LABEL_134;
    }
  }

  if (v15)
  {
    OUTLINED_FUNCTION_1_130(v61, v75, v62, v63, v64, v65, v66, v67, v149, v150, v151, v152, v153, allocator, v155, value, v157, cf);
  }

  else
  {
    OUTLINED_FUNCTION_4_101(v61, v75, v62, v63, v64, v65, v66, v67, v149, v150, v151, v152, v153, allocator, v155, value, v157, cf);
  }

  OUTLINED_FUNCTION_24_22();
  if (v76)
  {
    goto LABEL_165;
  }

  v61 = MovieSampleTableSet_stz2(v19, *(v16 + 340), *(v16 + 336), v63);
  v63 = cf;
  if (!v61)
  {
    if (cf)
    {
      CFRelease(cf);
      cf = 0;
    }

    goto LABEL_59;
  }

  v4 = v61;
LABEL_165:
  a4 = v151;
  if (v63)
  {
    CFRelease(v63);
  }

LABEL_138:
  if (value)
  {
    CFRelease(value);
  }

  if (v157)
  {
    CFRelease(v157);
  }

  if (v4)
  {
    goto LABEL_156;
  }

  if (v8[41] < 1)
  {
LABEL_147:
    if (v8[44] >= 1)
    {
      v147 = 0;
      do
      {
        cf = 0;
        v11 = NewTrackAlternateGroupAssignment(v12, &cf);
        if (v11)
        {
          goto LABEL_155;
        }

        *cf = *(v8[46] + 8 * v147++);
      }

      while (v147 < v8[44]);
    }

    v4 = 0;
    *a4 = v12;
  }

  else
  {
    v140 = 0;
    v141 = 0;
    while (1)
    {
      v11 = EnsureTrackReferenceArrayCapacityForAddition(v12);
      if (v11)
      {
        break;
      }

      v142 = v12[43] + 12 * v12[41];
      *(v142 + 8) = 0;
      *v142 = 0;
      v143 = v12[41];
      v144 = v12[43] + 12 * v143;
      v12[41] = v143 + 1;
      v145 = (v8[43] + v140);
      v146 = *v145;
      *(v144 + 8) = *(v145 + 2);
      *v144 = v146;
      ++v141;
      v140 += 12;
      if (v141 >= v8[41])
      {
        goto LABEL_147;
      }
    }

LABEL_155:
    v4 = v11;
LABEL_156:
    if (v12)
    {
      CFRelease(v12);
    }
  }

LABEL_152:
  if (v8[3])
  {
    FigReadWriteLockUnlockForRead();
  }

  return v4;
}

uint64_t MovieTrackAddFragmentRun(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v229 = 0;
  (*(a2 + 624))(a2);
  v8 = *(a4 + 32) + *(a3 + 48);
  v9 = *(a2 + 392);
  if (v8 > 4000000000)
  {
    if (!v9)
    {
      UpgradeTo64BitChunkOffsets(a2);
    }

    goto LABEL_5;
  }

  if (v9)
  {
LABEL_5:
    MakeTableReadyToWrite((a2 + 392), (a2 + 400));
    destination = bswap64(v8);
    CMByteStreamAppend();
    ++*(a2 + 384);
    goto LABEL_6;
  }

  MakeTableReadyToWrite((a2 + 368), (a2 + 376));
  LODWORD(destination) = bswap32(v8);
  CMByteStreamAppend();
  ++*(a2 + 360);
LABEL_6:
  v212 = a1;
  v10 = *(a2 + 432);
  if (v10)
  {
    OUTLINED_FUNCTION_62_11(12 * v10, blockBufferOut, v208, a1, v216, destination, v226);
    v11 = bswap32(v227);
    OUTLINED_FUNCTION_62_11(12 * *(a2 + 432), blockBufferOuta, v209, v213, v217, destinationc, v227);
    v10 = bswap32(destination_4);
  }

  else
  {
    v11 = 0;
  }

  if (v11 != *(a3 + 56) || *(a4 + 40) != v10)
  {
    v229 = 0;
    MakeTableReadyToWrite((a2 + 440), (a2 + 448));
    LODWORD(v226) = bswap32(*(a3 + 56));
    CMByteStreamAppend();
    ++*(a2 + 432);
  }

  v12 = UpgradeTo32BitSampleSizes(a2);
  v13 = *(a2 + 292);
  v14 = *(a2 + 288);
  v15 = *(a2 + 728);
  if (v15)
  {
    v14 += *(v15 + 8);
  }

  if (v13)
  {
    v16 = *(a4 + 52);
    v17 = bswap32(v13);
    if ((v16 & 2) != 0)
    {
      v19 = *(a4 + 40);
      if (v19 < 1)
      {
        goto LABEL_29;
      }

      v20 = kPerSampleInfo_SizeInInt32s[v16];
      v21 = (a4 + 4 * kPerSampleInfo_SizeIndex[v16] + 56);
      v22 = 4 * v20;
      while (*v21 == v17)
      {
        v21 = (v21 + v22);
        if (!--v19)
        {
          goto LABEL_29;
        }
      }
    }

    else if (*(a3 + 64) == v13)
    {
      goto LABEL_29;
    }

    OUTLINED_FUNCTION_98_3();
    LODWORD(v229) = v17;
    if (*(a2 + 288) >= 1)
    {
      v18 = 0;
      do
      {
        CMByteStreamAppend();
        ++v18;
      }

      while (v18 < *(a2 + 288));
    }

    *(a2 + 316) = 0;
    *(a2 + 292) = 0;
  }

  else
  {
    OUTLINED_FUNCTION_98_3();
  }

  AddFragmentRunSampleSizes();
LABEL_29:
  v23 = *(a4 + 40);
  v24 = *(a2 + 312) + v23;
  *(a2 + 312) = v24;
  *(a2 + 288) = v24;
  *(a2 + 840) = 0;
  *(a2 + 16) |= 0x2001uLL;
  if (!v12)
  {
    v25 = *(a2 + 488);
    v218 = a3;
    if (v25)
    {
      v26 = 0;
      v27 = *(a2 + 480) == 0;
    }

    else
    {
      v28 = *(a2 + 728);
      if (v28)
      {
        v24 += *(v28 + 8);
      }

      v27 = 0;
      v26 = v24 != 0;
    }

    LODWORD(v229) = 0;
    destinationa = 0;
    v29 = MEMORY[0x1E695E480];
    if (!v26 && !v27)
    {
LABEL_37:
      OUTLINED_FUNCTION_107_3();
      if ((*(a4 + 52) & 4) != 0)
      {
        OUTLINED_FUNCTION_55_16();
        if (v39 == v40)
        {
          v58 = 0;
          v59 = a4 + 4 * kPerSampleInfo_FlagsIndex[v57] + 56;
          v60 = 4 * kPerSampleInfo_SizeInInt32s[v57];
          do
          {
            if (v58 || (v61 = a4 + 48, !*(a4 + 44)))
            {
              v61 = v59;
            }

            if ((*(v61 + 1) & 1) == 0)
            {
              OUTLINED_FUNCTION_34_19(v48, v49, v50, v51, v52, v53, v54, v55, blockBufferOut, v208, v212, v218, destinationa, v226, v228, v229);
              OUTLINED_FUNCTION_21_25();
              v56 = *(a4 + 40);
            }

            ++v58;
            v59 += v60;
          }

          while (v58 < v56);
        }
      }

      else
      {
        OUTLINED_FUNCTION_55_16();
        if (v39 == v40)
        {
          v41 = 0;
          while (v41 || !*(a4 + 44))
          {
            if ((*(v218 + 68) & 0x10000) == 0)
            {
              goto LABEL_42;
            }

LABEL_43:
            if (++v41 >= v38)
            {
              goto LABEL_92;
            }
          }

          if ((bswap32(*(a4 + 48)) & 0x10000) != 0)
          {
            goto LABEL_43;
          }

LABEL_42:
          OUTLINED_FUNCTION_34_19(v30, v31, v32, v33, v34, v35, v36, v37, blockBufferOut, v208, v212, v218, destinationa, v226, v228, v229);
          OUTLINED_FUNCTION_21_25();
          v38 = *(a4 + 40);
          goto LABEL_43;
        }
      }

LABEL_92:
      if (*(a2 + 536))
      {
        destinationb = 0;
        v79 = v218;
      }

      else
      {
        if ((*(a4 + 52) & 4) != 0)
        {
          OUTLINED_FUNCTION_55_16();
          v79 = v218;
          if (v39 != v40)
          {
            goto LABEL_120;
          }

          v106 = 0;
          v107 = kPerSampleInfo_SizeInInt32s[v105];
          v108 = a4 + 4 * kPerSampleInfo_FlagsIndex[v105] + 56;
          v109 = 4 * v107;
          while (1)
          {
            if (v106 || (v110 = (a4 + 48), !*(a4 + 44)))
            {
              v110 = v108;
            }

            if ((*v110 & 0xF007) != 0)
            {
              break;
            }

            ++v106;
            v108 += v109;
            if (v104 == v106)
            {
              goto LABEL_120;
            }
          }
        }

        else
        {
          OUTLINED_FUNCTION_55_16();
          v79 = v218;
          if (v39 != v40)
          {
            goto LABEL_120;
          }

          v90 = 0;
          while (1)
          {
            v91 = v90 || !*(a4 + 44) ? *(v218 + 68) : bswap32(*(a4 + 48));
            if ((v91 & 0x7F00000) != 0)
            {
              break;
            }

            if (v89 == ++v90)
            {
              goto LABEL_120;
            }
          }
        }

        destinationb = 0;
        if (v14 >= 1)
        {
          v162 = MEMORY[0x19A8CC720](*v29, (v14 + 1), 1743927155, 0);
          bzero(v162, (v14 + 1));
          v79 = v218;
          OUTLINED_FUNCTION_156_0();
          CMBlockBufferCreateWithMemoryBlock(v163, v164, v165, v166, v167, v168, (v14 + 1), 0, (a2 + 536));
          *(a2 + 528) = v14 + 1;
        }
      }

      MakeTableReadyToWrite((a2 + 536), (a2 + 544));
      if ((*(a4 + 52) & 4) != 0)
      {
        OUTLINED_FUNCTION_76_10();
        if (v39 == v40)
        {
          v101 = 0;
          v102 = a4 + 4 * kPerSampleInfo_FlagsIndex[v100] + 56;
          v103 = 4 * kPerSampleInfo_SizeInInt32s[v100];
          do
          {
            OUTLINED_FUNCTION_63_11(v92, v93, v94, v95, v96, v97, v98, v99, blockBufferOut, v208, v212, v218, destinationb, v226, v228, v229);
            OUTLINED_FUNCTION_31_20();
            ++v101;
            v102 += v103;
          }

          while (v101 < *(a4 + 40));
        }
      }

      else
      {
        OUTLINED_FUNCTION_55_16();
        if (v39 == v40)
        {
          v88 = 0;
          do
          {
            OUTLINED_FUNCTION_63_11(v80, v81, v82, v83, v84, v85, v86, v87, blockBufferOut, v208, v212, v218, destinationb, v226, v228, v229);
            OUTLINED_FUNCTION_31_20();
            ++v88;
          }

          while (v88 < *(a4 + 40));
        }
      }

LABEL_120:
      v228 = 0;
      v229 = 0;
      MakeReadyToWrite_stts(a2);
      v119 = *(a2 + 408);
      if (v119)
      {
        v120 = v119 - 1;
        v121 = OUTLINED_FUNCTION_96_4(v111, v112, v113, v114, v115, v116, v117, v118, blockBufferOut, v208, v212, v218);
        v122 = bswap32(0);
        OUTLINED_FUNCTION_96_4(v121, v123, v124, v125, v126, v127, v128, v129, blockBufferOutb, v210, v214, v219);
        LODWORD(v130) = v122;
      }

      else
      {
        v122 = 0;
        v120 = 0;
        LODWORD(v130) = -1;
      }

      if (*(a4 + 52))
      {
        OUTLINED_FUNCTION_76_10();
        if (v39 == v40)
        {
          v134 = 0;
          v135 = (a4 + 56);
          v136 = 4 * kPerSampleInfo_SizeInInt32s[v133];
          do
          {
            v131 = bswap32(*v135);
            if (v130 == v131)
            {
              ++v122;
              v131 = v130;
            }

            else
            {
              if (v122)
              {
                v228 = _byteswap_uint64(__PAIR64__(v122, v130));
                if (*(*(CMBaseObjectGetVTable() + 16) + 16))
                {
                  v137 = OUTLINED_FUNCTION_85_5();
                  v138(v137);
                }

                ++v120;
                v132 = *(a4 + 40);
              }

              v122 = 1;
            }

            ++v134;
            v135 = (v135 + v136);
            v130 = v131;
          }

          while (v134 < v132);
LABEL_138:
          if (!v122)
          {
            goto LABEL_144;
          }

          goto LABEL_139;
        }
      }

      else
      {
        LODWORD(v131) = *(v79 + 60);
        if (v130 != v131)
        {
          if (v122)
          {
            ++v120;
          }

          v122 = *(a4 + 40);
          if (!v122)
          {
LABEL_144:
            *(a2 + 408) = v120 + 1;
            v141 = *(a2 + 88);
            v142 = *(a2 + 104);
            v143 = *(a2 + 224);
            *(a4 + 24) = v143;
            v144 = *(a4 + 52);
            if ((v144 & 8) != 0)
            {
              v147 = *(a4 + 40);
              v145 = v212;
              if (v147)
              {
                v148 = 0;
                v146 = 0;
                v149 = kPerSampleInfo_CompTimeOffIndex[v144];
                v150 = *(v218 + 60);
                v151 = (a4 + 56);
                v152 = 4 * kPerSampleInfo_SizeInInt32s[v144];
                do
                {
                  if (v144)
                  {
                    v150 = bswap32(*v151);
                  }

                  v153 = v151[v149];
                  v154 = bswap32(v153);
                  if (v153)
                  {
                    if (v154 > *(a2 + 112))
                    {
                      *(a2 + 112) = v154;
                    }

                    if (v154 < *(a2 + 116))
                    {
                      *(a2 + 116) = v154;
                    }

                    v148 = 1;
                  }

                  v155 = v143 + v154;
                  if (v155 < v141)
                  {
                    v141 = v155;
                  }

                  v156 = v155 + v150;
                  if (v156 > v142)
                  {
                    v142 = v156;
                  }

                  v143 += v150;
                  v146 += v150;
                  v151 = (v151 + v152);
                  --v147;
                }

                while (v147);
                v157 = v148 != 0;
              }

              else
              {
                v146 = 0;
                v157 = 0;
              }

              v143 = v141;
            }

            else
            {
              v145 = v212;
              if (v144)
              {
                v158 = *(a4 + 40);
                if (v158)
                {
                  v146 = 0;
                  v159 = kPerSampleInfo_SizeInInt32s[v144];
                  v160 = (a4 + 56);
                  v161 = 4 * v159;
                  do
                  {
                    v146 += bswap32(*v160);
                    v160 = (v160 + v161);
                    --v158;
                  }

                  while (v158);
                }

                else
                {
                  v146 = 0;
                }
              }

              else
              {
                v146 = *(v218 + 60) * *(a4 + 40);
              }

              v157 = 0;
              v142 = v146 + v143;
            }

            MovieTrackAddRunContributionToEditSegmentArray(v145, a2, v143, v142);
            *(a2 + 88) = v143;
            *(a2 + 104) = v142;
            *(a2 + 224) += v146;
            v169 = *(a2 + 16);
            *(a2 + 16) = v169 | 2;
            if (*(a2 + 922))
            {
              OUTLINED_FUNCTION_30_19(v169);
            }

            UpdateDurationsForEditSegmentChange(v145, a2);
            v228 = 0;
            v229 = 0;
            MakeReadyToWrite_ctts(a2);
            v178 = *(a2 + 456);
            if (v178)
            {
              v179 = v178 - 1;
              v180 = OUTLINED_FUNCTION_94_5(v170, v171, v172, v173, v174, v175, v176, v177, blockBufferOut, v208, v212, v218);
              v14 = bswap32(0);
              OUTLINED_FUNCTION_94_5(v180, v181, v182, v183, v184, v185, v186, v187, blockBufferOutc, v211, v215, v220);
              LODWORD(v188) = v14;
              goto LABEL_183;
            }

            if (v14 < 1)
            {
              v14 = 0;
            }

            else
            {
              v229 = bswap32(v14);
              v188 = *(*(CMBaseObjectGetVTable() + 16) + 16);
              if (!v188)
              {
                v179 = 0;
LABEL_183:
                v191 = !v157;
                if ((*(a4 + 52) & 8) == 0)
                {
                  v191 = 1;
                }

                if (v191)
                {
                  if (v188)
                  {
                    v14 = *(a4 + 40);
                  }

                  else
                  {
                    v14 += *(a4 + 40);
                  }

                  if (v188)
                  {
                    ++v179;
                  }

                  LODWORD(v198) = 0;
                }

                else
                {
                  OUTLINED_FUNCTION_76_10();
                  if (v39 != v40)
                  {
                    LODWORD(v198) = v192;
                    if (v14)
                    {
LABEL_204:
                      v229 = _byteswap_uint64(__PAIR64__(v14, v198));
                      v201 = *(a2 + 472);
                      v202 = *(*(CMBaseObjectGetVTable() + 16) + 16);
                      if (v202)
                      {
                        v202(v201, 8, 8 * v179, &v229, &v228);
                      }
                    }

LABEL_207:
                    v12 = 0;
                    *(a2 + 456) = v179 + 1;
                    return v12;
                  }

                  v195 = 0;
                  v196 = (a4 + 4 * kPerSampleInfo_CompTimeOffIndex[v194] + 56);
                  v197 = 4 * kPerSampleInfo_SizeInInt32s[v194];
                  do
                  {
                    v198 = bswap32(*v196);
                    if (v192 == v198)
                    {
                      ++v14;
                      v198 = v192;
                    }

                    else
                    {
                      if (v14)
                      {
                        v229 = _byteswap_uint64(__PAIR64__(v14, v192));
                        if (*(*(CMBaseObjectGetVTable() + 16) + 16))
                        {
                          v199 = OUTLINED_FUNCTION_77_8();
                          v200(v199);
                        }

                        ++v179;
                        v193 = *(a4 + 40);
                      }

                      v14 = 1;
                    }

                    ++v195;
                    v196 = (v196 + v197);
                    v192 = v198;
                  }

                  while (v195 < v193);
                }

                if (v14)
                {
                  goto LABEL_204;
                }

                goto LABEL_207;
              }

              v189 = OUTLINED_FUNCTION_77_8();
              v190(v189);
            }

            v179 = 0;
            LODWORD(v188) = 0;
            goto LABEL_183;
          }

LABEL_139:
          v228 = _byteswap_uint64(__PAIR64__(v122, v131));
          if (*(*(CMBaseObjectGetVTable() + 16) + 16))
          {
            v139 = OUTLINED_FUNCTION_85_5();
            v140(v139);
          }

          goto LABEL_144;
        }

        v122 += *(a4 + 40);
      }

      LODWORD(v131) = v130;
      goto LABEL_138;
    }

    v42 = *(a4 + 52);
    if ((v42 & 4) != 0)
    {
      if (v23 < 1)
      {
        goto LABEL_90;
      }

      v43 = 0;
      v44 = 0;
      v62 = 0;
      v63 = kPerSampleInfo_SizeInInt32s[v42];
      v64 = a4 + 4 * kPerSampleInfo_FlagsIndex[v42] + 56;
      v65 = 4 * v63;
      v46 = 1;
      do
      {
        if (v62 || (v66 = a4 + 48, !*(a4 + 44)))
        {
          v66 = v64;
        }

        v67 = *(v66 + 1);
        v46 &= v67 << 31 >> 31;
        if (v67)
        {
          v43 = 1;
        }

        else
        {
          v44 = 1;
        }

        ++v62;
        v64 += v65;
      }

      while (v23 != v62);
    }

    else
    {
      if (v23 < 1)
      {
        goto LABEL_90;
      }

      v43 = 0;
      v44 = 0;
      v45 = 0;
      v46 = 1;
      do
      {
        if (v45 || !*(a4 + 44))
        {
          v47 = *(v218 + 68);
        }

        else
        {
          v47 = bswap32(*(a4 + 48));
        }

        v46 &= (v47 << 15) >> 31;
        if ((v47 & 0x10000) != 0)
        {
          v43 = 1;
        }

        else
        {
          v44 = 1;
        }

        ++v45;
      }

      while (v23 != v45);
    }

    if (v43)
    {
      v68 = v44 != 0;
    }

    else
    {
      v26 = 0;
      v68 = 0;
    }

    if (v26)
    {
      OUTLINED_FUNCTION_107_3();
      if (v14 >= 1)
      {
        v77 = 1;
        v78 = v14;
        do
        {
          OUTLINED_FUNCTION_34_19(v69, v70, v71, v72, v73, v74, v75, v76, blockBufferOut, v208, v212, v218, destinationa, v226, v228, v229);
          OUTLINED_FUNCTION_21_25();
          ++v77;
          --v78;
        }

        while (v78);
      }

      if (v68)
      {
        goto LABEL_37;
      }
    }

    else if (v68)
    {
      goto LABEL_37;
    }

    if (!v46)
    {
      goto LABEL_92;
    }

    v25 = *(a2 + 488);
LABEL_90:
    if (!v25)
    {
      CMBlockBufferCreateEmpty(*v29, 0, 0, (a2 + 488));
    }

    goto LABEL_92;
  }

  return v12;
}

__n128 MovieTrackExtendMediaDecodeDurationToDisplayEndTime()
{
  OUTLINED_FUNCTION_471();
  v3 = *(v2 + 232);
  v18 = **&MEMORY[0x1E6960C70];
  v17 = v18;
  if (!MovieTrackGetDisplayTimeRange(v4, v2, 0, &v18))
  {
    MovieTrackGetMediaDuration(v1, &v17);
    lhs = v18;
    rhs = v17;
    CMTimeSubtract(&time1, &lhs, &rhs);
    lhs = time1;
    CMTimeConvertScale(&time1, &lhs, v3, kCMTimeRoundingMethod_RoundHalfAwayFromZero);
    result.n128_u64[0] = *&time1.timescale;
    v6 = MEMORY[0x1E6960CC0];
    if ((time1.flags & 0x1D) != 1 || (value = time1.value, epoch = time1.epoch, v12 = result, lhs = **&MEMORY[0x1E6960CC0], v9 = CMTimeCompare(&time1, &lhs), result = v12, v9 < 0))
    {
      value = *v6;
      result.n128_u64[0] = v6[1];
      epoch = v6[2];
    }

    if (value >= 1)
    {
      v13 = result;
      v10 = OUTLINED_FUNCTION_266();
      result.n128_f64[0] = MovieHeaderExtendLastSampleDecodeDuration(v10);
      if (v0)
      {
        result = v13;
        if (!v11)
        {
          goto LABEL_7;
        }
      }
    }

    else if (v0)
    {
LABEL_7:
      *v0 = value;
      v0[1] = result.n128_u64[0];
      v0[2] = epoch;
    }
  }

  return result;
}