void figPlaybackBoss_renderPipelinePrerollLost(uint64_t a1, uint64_t a2)
{
  v2 = FigCFWeakReferenceHolderCopyReferencedObject();
  if (v2)
  {
    v3 = v2;
    FigSimpleMutexLock();
    FigSimpleMutexLock();
    if (!v3[16])
    {
      v3[107] = 1;
    }

    FigSimpleMutexUnlock();
    FigSimpleMutexUnlock();

    CFRelease(v3);
  }
}

void figPlaybackBoss_renderPipelineLostDecoderState(uint64_t a1, uint64_t a2)
{
  v17 = *MEMORY[0x1E69E9840];
  v2 = FigCFWeakReferenceHolderCopyReferencedObject();
  if (!v2)
  {
    return;
  }

  v3 = v2;
  if (!v2[128])
  {
    FigSimpleMutexLock();
    FigSimpleMutexLock();
    if (*(v3 + 848))
    {
      v14 = 0;
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    if (*(v3 + 80) >= 1)
    {
      v5 = 0;
      do
      {
        v6 = *(CFArrayGetValueAtIndex(*(v3 + 72), v5) + 10);
        v7 = *(*(CMBaseObjectGetVTable() + 16) + 64);
        if (v7)
        {
          v7(v6, 1);
        }

        ++v5;
      }

      while (v5 < *(v3 + 80));
    }

    FigSimpleMutexUnlock();
    FigSimpleMutexLock();
    v8 = *(v3 + 80);
    v9 = *(v3 + 432);
    if (v9 <= 1886530415)
    {
      if (v9 > 1886151032)
      {
        if (v9 != 1886151033 && v9 != 1886154860 && v9 != 1886155888)
        {
          goto LABEL_40;
        }

        FigSimpleMutexLock();
        if (*(v3 + 848))
        {
          v14 = 0;
          v10 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);
          fig_log_call_emit_and_clean_up_after_send_and_compose();
        }

        CMTimebaseGetTime(&v16, *(v3 + 120));
        bossSetMentorModesForTimeAndRate(v3, 0, v8, &v16, *(v3 + 440), *(v3 + 448), 2, 0, 0);
        goto LABEL_39;
      }

      if (v9 != 1768189029)
      {
        if (v9 != 1885435251)
        {
          goto LABEL_40;
        }

        goto LABEL_34;
      }
    }

    else
    {
      if (v9 <= 1919247480)
      {
        if (v9 == 1886530416)
        {
          v13 = *(v3 + 424);
          v16 = **&MEMORY[0x1E6960C70];
          figPlaybackBossStartPrerollAndSetPlayState(v3, &v16, *(v3 + 440), *(v3 + 448), 2u, 0x70722B70u, MEMORY[0x1E6960C70], MEMORY[0x1E6960C70], v13);
          goto LABEL_40;
        }

        if (v9 != 1886544244)
        {
          if (v9 != 1886545266)
          {
            goto LABEL_40;
          }

          goto LABEL_33;
        }

        goto LABEL_28;
      }

      if (v9 == 1919247481)
      {
LABEL_33:
        *(v3 + 432) = 1885435251;
LABEL_34:
        memset(&v15, 0, sizeof(v15));
        FigPlaybackBossGetTime(v3, &v15);
        FigSimpleMutexLock();
        if (*(v3 + 848))
        {
          v12 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT);
          fig_log_call_emit_and_clean_up_after_send_and_compose();
        }

        v16 = v15;
        bossSetMentorModesToScrub(v3, 0, v8, &v16, 0, 0);
LABEL_39:
        FigSimpleMutexUnlock();
        goto LABEL_40;
      }

      if (v9 != 1920298606)
      {
        if (v9 != 2003853684)
        {
LABEL_40:
          FigSimpleMutexUnlock();
          FigSimpleMutexUnlock();
          CFRelease(v3);
          return;
        }

LABEL_28:
        CMNotificationCenterGetDefaultLocalCenter();
        CMNotificationCenterPostNotification();
        goto LABEL_40;
      }
    }

    v14 = 0;
    v11 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    goto LABEL_40;
  }

  CFRelease(v2);
}

void figPlaybackBoss_allRenderPipelinesCompletedDecodeForPreroll_f(uint64_t *a1)
{
  figPlaybackBossPrerollCompleted(*a1, 0, a1[1]);
  if (*a1)
  {
    CFRelease(*a1);
  }

  v2 = a1[1];
  if (v2)
  {
    CFRelease(v2);
  }

  free(a1);
}

void figPlaybackBoss_mediaProcessorDidReachEndOfOutputData(uint64_t a1, uint64_t a2)
{
  queue[20] = *MEMORY[0x1E69E9840];
  v2 = FigCFWeakReferenceHolderCopyReferencedObject();
  queue[0] = 0;
  if (v2)
  {
    v3 = v2;
    if (!*(v2 + 16))
    {
      FigSimpleMutexLock();
      if (v3[848])
      {
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      FigRenderPipelineGetFigBaseObject();
      v6 = v5;
      v7 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      if (v7)
      {
        v7(v6, @"SourceSampleBufferQueue", *MEMORY[0x1E695E480], queue);
      }

      FigSimpleMutexUnlock();
      if (!queue[0] || !CMBufferQueueMarkEndOfData(queue[0]))
      {
        figPlaybackBoss_sendBecameIdleNotificationIfNowIdle(v3, 0);
      }
    }

    if (queue[0])
    {
      CFRelease(queue[0]);
    }

    CFRelease(v3);
  }
}

void figPlaybackBoss_mediaProcessorProcessSampleBufferFailed(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const void *a5)
{
  v14 = *MEMORY[0x1E69E9840];
  v6 = FigCFWeakReferenceHolderCopyReferencedObject();
  if (v6)
  {
    v7 = v6;
    if (a5)
    {
      if (!*(v6 + 16))
      {
        v8 = CFGetTypeID(a5);
        if (v8 == CFDictionaryGetTypeID())
        {
          Value = CFDictionaryGetValue(a5, @"Result");
          FigCFNumberGetSInt32();
          if (dword_1EAF16E78)
          {
            os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
            fig_log_call_emit_and_clean_up_after_send_and_compose();
          }

          if (Value)
          {
            v11 = CFGetTypeID(Value);
            if (v11 == CFNumberGetTypeID())
            {
              Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
              if (Mutable)
              {
                v13 = Mutable;
                CFDictionarySetValue(Mutable, @"OSStatus", Value);
                CMNotificationCenterGetDefaultLocalCenter();
                CMNotificationCenterPostNotification();
                CFRelease(v13);
              }
            }
          }
        }
      }
    }

    CFRelease(v7);
  }
}

uint64_t figPlaybackBoss_editCursorServiceContainsScaledEditsInTimeRange(uint64_t a1, uint64_t a2)
{
  v18 = 0;
  *&time1.start.value = *a2;
  time1.start.epoch = *(a2 + 16);
  v4 = *(*(CMBaseObjectGetVTable() + 16) + 8);
  if (!v4)
  {
    return 0;
  }

  v16 = *&time1.start.value;
  *v17 = time1.start.epoch;
  v5 = v4(a1, &v16, &v18);
  v6 = v18;
  if (v5)
  {
    v11 = 0;
    if (!v18)
    {
      return v11;
    }

    goto LABEL_16;
  }

  v16 = 0u;
  memset(v17, 0, sizeof(v17));
  v7 = *(*(CMBaseObjectGetVTable() + 16) + 24);
  if (v7)
  {
    while (!v7(v6, &v16))
    {
      if ((BYTE12(v16) & 1) != 0 && (v17[20] & 1) != 0 && !*&v17[24] && (*&v17[8] & 0x8000000000000000) == 0)
      {
        *&time1.start.value = *&v17[8];
        time1.start.epoch = *&v17[24];
        time2 = *&v17[56];
        if (CMTimeCompare(&time1.start, &time2))
        {
          v11 = 1;
          goto LABEL_15;
        }
      }

      v8 = v18;
      v9 = *(*(CMBaseObjectGetVTable() + 16) + 16);
      if (v9)
      {
        if (!v9(v8, 1))
        {
          v10 = *(a2 + 16);
          *&time1.start.value = *a2;
          *&time1.start.epoch = v10;
          *&time1.duration.timescale = *(a2 + 32);
          CMTimeRangeGetEnd(&time2, &time1);
          time1 = *&v17[32];
          CMTimeRangeGetEnd(&v13, &time1);
          if (CMTimeCompare(&time2, &v13) > 0)
          {
            v16 = 0u;
            memset(v17, 0, sizeof(v17));
            v6 = v18;
            v7 = *(*(CMBaseObjectGetVTable() + 16) + 24);
            if (v7)
            {
              continue;
            }
          }
        }
      }

      break;
    }
  }

  v11 = 0;
LABEL_15:
  v6 = v18;
  if (v18)
  {
LABEL_16:
    CFRelease(v6);
  }

  return v11;
}

_BYTE *bossRemoveNotificationListenersForTrack(_BYTE *result)
{
  v1 = result;
  if (result[421])
  {
    CMNotificationCenterGetDefaultLocalCenter();
    result = FigNotificationCenterRemoveWeakListeners();
    v1[421] = 0;
  }

  if (v1[422])
  {
    CMNotificationCenterGetDefaultLocalCenter();
    FigNotificationCenterRemoveWeakListeners();
    v1[422] = 0;
    FigRenderPipelineGetFigBaseObject();
    v3 = v2;
    VTable = CMBaseObjectGetVTable();
    v6 = *(VTable + 8);
    result = (VTable + 8);
    v5 = v6;
    if (*v6 >= 2uLL)
    {
      v7 = v5[8];
      if (v7)
      {
        result = v7(v3);
      }
    }
  }

  if (v1[423])
  {
    CMNotificationCenterGetDefaultLocalCenter();
    result = FigNotificationCenterRemoveWeakListeners();
    v1[423] = 0;
  }

  return result;
}

void figPlaybackBoss_VideoCompositionProcessorSeekComplete(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const void *a5)
{
  v26 = *MEMORY[0x1E69E9840];
  v5 = MEMORY[0x1E6960C70];
  v24 = *MEMORY[0x1E6960C70];
  v25 = *(MEMORY[0x1E6960C70] + 8);
  if (!a5)
  {
    return;
  }

  if (*(a2 + 16))
  {
    return;
  }

  TypeID = CFDictionaryGetTypeID();
  if (TypeID != CFGetTypeID(a5))
  {
    return;
  }

  Value = CFDictionaryGetValue(a5, @"VideoCompositionProcessor_Order");
  if (!Value)
  {
    return;
  }

  v10 = Value;
  v11 = CFNumberGetTypeID();
  if (v11 != CFGetTypeID(v10))
  {
    return;
  }

  v12 = *(v5 + 12);
  v13 = *(v5 + 16);
  FigSimpleMutexLock();
  if (!*(a2 + 16))
  {
    FigSimpleMutexLock();
    if (!CFEqual(v10, *(a2 + 544)))
    {
      v14 = 0;
      v15 = 1;
LABEL_16:
      FigSimpleMutexUnlock();
      goto LABEL_17;
    }

    v24 = *(a2 + 480);
    v25 = *(a2 + 488);
    v12 = *(a2 + 492);
    v16 = *(a2 + 496);
    *(a2 + 480) = *v5;
    *(a2 + 496) = v13;
    if (*(a2 + 476))
    {
      v14 = *(a2 + 784);
      if (v14)
      {
        v15 = 0;
        *(a2 + 788) = 0;
        *(a2 + 784) = 0;
LABEL_15:
        v13 = v16;
        goto LABEL_16;
      }
    }

    else
    {
      v14 = 0;
    }

    v15 = 1;
    goto LABEL_15;
  }

  v14 = 0;
  v15 = 1;
LABEL_17:
  FigSimpleMutexUnlock();
  if ((v12 & 0x1D) == 1)
  {
    v22 = *(a2 + 120);
    v23.value = v24;
    v23.timescale = v25;
    v23.flags = v12;
    v23.epoch = v13;
    CMTimebaseSetTime(v22, &v23);
  }

  if ((v15 & 1) == 0)
  {
    figPlaybackBossPostSeekDidComplete(a2, v14, 0, v17, v18, v19, v20, v21);
  }
}

void figPlaybackBossAdvanceForOverlappedPlaybackWithContext(uint64_t a1)
{
  if (!*(a1 + 16))
  {
    os_retain(*(a1 + 792));
    voucher_adopt();
    CMNotificationCenterGetDefaultLocalCenter();
    CMNotificationCenterPostNotification();
    v2 = voucher_adopt();

    os_release(v2);
  }
}

double bossCombineEditSegments@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *(a2 + 48);
  *(a3 + 32) = *(a2 + 32);
  *(a3 + 48) = v6;
  v7 = *(a2 + 80);
  v8 = *(a2 + 48);
  *(a3 + 64) = *(a2 + 64);
  *(a3 + 80) = v7;
  v9 = *(a2 + 16);
  *a3 = *a2;
  *(a3 + 16) = v9;
  memset(&v35, 0, sizeof(v35));
  memset(&v34, 0, sizeof(v34));
  *&time1.start.value = v8;
  time1.start.epoch = *(a2 + 64);
  *&time2.start.value = *a1;
  time2.start.epoch = *(a1 + 16);
  if (CMTimeCompare(&time1.start, &time2.start) < 0)
  {
    *(a3 + 48) = *a1;
    *&rhs.value = *a1;
    v10 = *(a2 + 64);
    v11 = *(a2 + 80);
    v12 = *(a2 + 32);
    *&time1.start.value = *(a2 + 48);
    *&time1.start.epoch = v10;
    *&time1.duration.timescale = v11;
    v13 = *(a2 + 16);
    *&time2.start.value = *a2;
    *&time2.start.epoch = v13;
    *(a3 + 64) = *(a1 + 16);
    rhs.epoch = *(a1 + 16);
    *&time2.duration.timescale = v12;
    CMTimeMapTimeFromRangeToRange(a3, &rhs, &time1, &time2);
    *&time1.start.value = *(a3 + 48);
    time1.start.epoch = *(a3 + 64);
    rhs = *(a2 + 48);
    CMTimeSubtract(&time2.start, &time1.start, &rhs);
    rhs = *(a2 + 72);
    CMTimeSubtract(&time1.start, &rhs, &time2.start);
    *(a3 + 72) = *&time1.start.value;
    *(a3 + 88) = time1.start.epoch;
    *&time1.start.value = *a3;
    time1.start.epoch = *(a3 + 16);
    rhs = *a2;
    CMTimeSubtract(&time2.start, &time1.start, &rhs);
    rhs = *(a2 + 24);
    CMTimeSubtract(&time1.start, &rhs, &time2.start);
    *(a3 + 24) = *&time1.start.value;
    *(a3 + 40) = time1.start.epoch;
  }

  v14 = *(a3 + 64);
  *&time1.start.value = *(a3 + 48);
  *&time1.start.epoch = v14;
  *&time1.duration.timescale = *(a3 + 80);
  CMTimeRangeGetEnd(&v35, &time1);
  v15 = *(a1 + 16);
  *&time1.start.value = *a1;
  *&time1.start.epoch = v15;
  *&time1.duration.timescale = *(a1 + 32);
  CMTimeRangeGetEnd(&v34, &time1);
  time1.start = v35;
  time2.start = v34;
  if (CMTimeCompare(&time1.start, &time2.start) >= 1)
  {
    memset(&rhs, 0, sizeof(rhs));
    time1.start = v35;
    time2.start = v34;
    CMTimeSubtract(&rhs, &time1.start, &time2.start);
    *&v29.value = *&rhs.value;
    v16 = *(a2 + 64);
    v17 = *(a2 + 80);
    v18 = *(a2 + 32);
    *&time1.start.value = *(a2 + 48);
    *&time1.start.epoch = v16;
    *&time1.duration.timescale = v17;
    v19 = *(a2 + 16);
    *&time2.start.value = *a2;
    *&time2.start.epoch = v19;
    memset(&dur, 0, sizeof(dur));
    v29.epoch = rhs.epoch;
    *&time2.duration.timescale = v18;
    CMTimeMapDurationFromRangeToRange(&dur, &v29, &time1, &time2);
    *&time2.start.value = *(a3 + 72);
    time2.start.epoch = *(a3 + 88);
    v29 = rhs;
    CMTimeSubtract(&time1.start, &time2.start, &v29);
    *(a3 + 72) = *&time1.start.value;
    *(a3 + 88) = time1.start.epoch;
    *&time2.start.value = *(a3 + 24);
    time2.start.epoch = *(a3 + 40);
    v29 = dur;
    CMTimeSubtract(&time1.start, &time2.start, &v29);
    *(a3 + 24) = *&time1.start.value;
    *(a3 + 40) = time1.start.epoch;
  }

  *&dur.value = *(a3 + 48);
  v20 = *(a1 + 16);
  *&time1.start.value = *a1;
  *&time1.start.epoch = v20;
  v21 = *(a1 + 48);
  *&time1.duration.timescale = *(a1 + 32);
  v22 = *(a1 + 64);
  v23 = *(a1 + 80);
  *&time2.start.value = v21;
  *&time2.start.epoch = v22;
  dur.epoch = *(a3 + 64);
  *&time2.duration.timescale = v23;
  CMTimeMapTimeFromRangeToRange(&rhs, &dur, &time1, &time2);
  *(a3 + 48) = *&rhs.value;
  *&dur.value = *(a3 + 72);
  v24 = *(a1 + 16);
  *&time1.start.value = *a1;
  *&time1.start.epoch = v24;
  v25 = *(a1 + 48);
  *&time1.duration.timescale = *(a1 + 32);
  v26 = *(a1 + 64);
  v27 = *(a1 + 80);
  *&time2.start.value = v25;
  *&time2.start.epoch = v26;
  *(a3 + 64) = rhs.epoch;
  dur.epoch = *(a3 + 88);
  *&time2.duration.timescale = v27;
  CMTimeMapDurationFromRangeToRange(&rhs, &dur, &time1, &time2);
  result = *&rhs.value;
  *(a3 + 72) = rhs;
  return result;
}

uint64_t figPlaybackBoss_timebaseRateChangedDeferredWork(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v48 = *MEMORY[0x1E69E9840];
  FigSimpleMutexLock();
  if (CMTimebaseGetRate(*(a2 + 120)) != 0.0 && *(a2 + 432) == 1886151033)
  {
    v38 = **&MEMORY[0x1E6960C70];
    v28 = *&v38.value;
    epoch = v38.epoch;
    memset(&v37, 0, sizeof(v37));
    CMTimebaseGetTime(&v37, *(a2 + 120));
    *&v36.value = v28;
    v36.epoch = epoch;
    v35 = *(a2 + 516);
    memset(&v34, 0, sizeof(v34));
    v7 = *(a2 + 120);
    HostTimeClock = CMClockGetHostTimeClock();
    time = v37;
    CMSyncConvertTime(&v34, &time, v7, HostTimeClock);
    memset(&v33, 0, sizeof(v33));
    v9 = *(a2 + 120);
    v10 = CMClockGetHostTimeClock();
    time = v35;
    CMSyncConvertTime(&v33, &time, v9, v10);
    *&v32.value = v28;
    v32.epoch = epoch;
    FigCFDictionaryGetCMTimeIfPresent();
    if ((v38.flags & 1) == 0)
    {
      v38 = v37;
    }

    v11 = *(a2 + 120);
    v12 = CMClockGetHostTimeClock();
    time = v38;
    CMSyncConvertTime(&v32, &time, v11, v12);
    time = v32;
    time2 = v33;
    if (CMTimeCompare(&time, &time2) < 0)
    {
      memset(&v31, 0, sizeof(v31));
      time = v33;
      time2 = v34;
      CMTimeSubtract(&v31, &time, &time2);
      if (dword_1EAF16E78)
      {
        LODWORD(v30.value) = 0;
        LOBYTE(type.value) = 0;
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      *&v36.value = *&v31.value;
      v25 = v31.epoch;
    }

    else
    {
      v31 = **&MEMORY[0x1E6960CC0];
      FigSimpleMutexLock();
      if (*(a2 + 848))
      {
        LODWORD(v30.value) = 0;
        LOBYTE(type.value) = 0;
        v13 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      v15 = *(a2 + 96);
      if ((v15 & 0x8000000000000000) == 0)
      {
        CFArrayGetValueAtIndex(*(a2 + 72), v15);
        time.value = 0;
        FigRenderPipelineGetFigBaseObject();
        v17 = v16;
        v18 = *(*(CMBaseObjectGetVTable() + 8) + 48);
        if (v18)
        {
          v18(v17, @"UnpauseLatencyEstimate", *MEMORY[0x1E695E480], &time);
          if (time.value)
          {
            CMTimeMakeFromDictionary(&v31, time.value);
            CFRelease(time.value);
          }
        }
      }

      FigSimpleMutexUnlock();
      memset(&v30, 0, sizeof(v30));
      time2 = v32;
      type = v31;
      CMTimeAdd(&time, &time2, &type);
      time2 = v34;
      CMTimeSubtract(&v30, &time, &time2);
      if (dword_1EAF16E78)
      {
        LODWORD(type.value) = 0;
        v19 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        value = type.value;
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
        {
          v21 = value;
        }

        else
        {
          v21 = value & 0xFFFFFFFE;
        }

        if (v21)
        {
          time = v38;
          Seconds = CMTimeGetSeconds(&time);
          time = v35;
          v23 = CMTimeGetSeconds(&time);
          time = v30;
          v24 = CMTimeGetSeconds(&time);
          LODWORD(time2.value) = 136316418;
          *(&time2.value + 4) = "figPlaybackBoss_timebaseRateChangedDeferredWork";
          LOWORD(time2.flags) = 2048;
          *(&time2.flags + 2) = a2;
          HIWORD(time2.epoch) = 2082;
          v40 = a2 + 850;
          v41 = 2048;
          v42 = Seconds;
          v43 = 2048;
          v44 = v23;
          v45 = 2048;
          v46 = v24;
          _os_log_send_and_compose_impl(v21, 0, &time, 128, &dword_1962D5000, v19, 0, "<<<< Boss >>>> %s: <%p|%{public}s> Timebase rate changed to non-zero @%+-.3fs. Preroll time %.3f has already passed. Starter pipeline will catch up in %.3fs", &time2, 62);
        }

        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      *&v36.value = *&v30.value;
      v25 = v30.epoch;
    }

    v36.epoch = v25;
    if (*MEMORY[0x1E695FF58] == 1)
    {
      v26 = strncpy(&time, (a2 + 850), 8uLL);
      time = v37;
      CMTimeGetSeconds(v26);
      time = v36;
      CMTimeGetSeconds(&time);
      kdebug_trace();
    }
  }

  return FigSimpleMutexUnlock();
}

uint64_t bossCopyRenderPipelineCachedVideoFrames(uint64_t a1, uint64_t a2)
{
  if (a2 && *(a1 + 132) && (v6 = 0, FigRenderPipelineGetFigBaseObject(), v3 = v2, (v4 = *(*(CMBaseObjectGetVTable() + 8) + 48)) != 0) && !v4(v3, @"CachedVideoFrames", *MEMORY[0x1E695E480], &v6))
  {
    return v6;
  }

  else
  {
    return 0;
  }
}

uint64_t bossTrackChangesDuringPlaybackRequireVCPUpdate(uint64_t a1, CFIndex a2, CFIndex capacity, int a4)
{
  if (!*(a1 + 600))
  {
    return 0;
  }

  if (!a4)
  {
    return 1;
  }

  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], capacity, MEMORY[0x1E695E9C0]);
  if (Mutable)
  {
    v14 = Mutable;
    Limit = FigCFRangeGetLimit();
    if (a2 < Limit)
    {
      v16 = Limit;
      do
      {
        CFArrayGetValueAtIndex(*(a1 + 72), a2);
        FigCFArrayAppendInt32();
        ++a2;
      }

      while (v16 != a2);
    }

    HasAnySourceTracksInArray = FigVideoCompositionProcessorHasAnySourceTracksInArray(*(a1 + 600), v14);
    CFRelease(v14);
    if (HasAnySourceTracksInArray)
    {
      return 1;
    }
  }

  else
  {
    bossTrackChangesDuringPlaybackRequireVCPUpdate_cold_1(0, v7, v8, v9, v10, v11, v12, v13, v19, v20, SHIDWORD(v20), v21);
  }

  return 0;
}

void figPlaybackBoss_AllMentorsPrerollCompleteWithContext(CFTypeRef *a1)
{
  v2 = *a1;
  v3 = a1[1];
  if (v2[16])
  {
    if (!v3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v2[609] = 0;
  figPlaybackBoss_waitForCompletionOfPhase1AndStartPhase2(v2, v3);
  v3 = a1[1];
  if (v3)
  {
LABEL_3:
    CFRelease(v3);
  }

LABEL_4:
  if (*a1)
  {
    CFRelease(*a1);
  }

  free(a1);
}

void bossGetPresentationTimeAfterSteppingInEmptyEditSegment(CMTime *a1, CMTime *a2, int32_t a3, CMTime *a4, CMTime *a5)
{
  v34 = *MEMORY[0x1E69E9840];
  v10 = MEMORY[0x1E6960C70];
  *&v28.value = *MEMORY[0x1E6960C70];
  v11 = *(MEMORY[0x1E6960C70] + 16);
  v28.epoch = v11;
  v24 = *&v28.value;
  *&v27.value = *&v28.value;
  v27.epoch = v11;
  CMTimeMake(&v28, 250, 1000);
  time = v28;
  CMTimeMultiply(&rhs, &time, a3);
  time = *a2;
  CMTimeAdd(&v27, &time, &rhs);
  rhs = v27;
  time = *a1;
  if (CMTimeCompare(&rhs, &time) < 1)
  {
    rhs = v27;
    v23 = *MEMORY[0x1E6960CC0];
    *&time.value = *MEMORY[0x1E6960CC0];
    v12 = *(MEMORY[0x1E6960CC0] + 16);
    time.epoch = v12;
    if (CMTimeCompare(&rhs, &time) < 0)
    {
      *&v27.value = v23;
      v27.epoch = v12;
    }
  }

  else
  {
    v27 = *a1;
  }

  if ((a4->flags & 0x1D) == 1)
  {
    rhs = *a2;
    time = *a4;
    if (!CMTimeCompare(&rhs, &time))
    {
      *&v27.value = v24;
      v27.epoch = v11;
      goto LABEL_15;
    }

    *&rhs.value = v24;
    rhs.epoch = v11;
    *&time.value = v24;
    time.epoch = v11;
    if (a3 < 1)
    {
      if ((a3 & 0x80000000) == 0)
      {
        goto LABEL_12;
      }

      time1 = v27;
      time2 = *a4;
      CMTimeMaximum(&rhs, &time1, &time2);
      time1 = rhs;
      *&time2.value = *&v27.value;
      epoch = v27.epoch;
    }

    else
    {
      time1 = v27;
      time2 = *a4;
      CMTimeMinimum(&rhs, &time1, &time2);
      time1 = v27;
      *&time2.value = *&rhs.value;
      epoch = rhs.epoch;
    }

    time2.epoch = epoch;
    CMTimeSubtract(&time, &time1, &time2);
LABEL_12:
    time1 = time;
    time2 = v28;
    v14 = CMTimeCompare(&time1, &time2);
    p_rhs = &rhs;
    if (v14 >= 0)
    {
      p_rhs = v10;
    }

    v27 = *p_rhs;
  }

LABEL_15:
  if (dword_1EAF16E78)
  {
    LODWORD(time1.value) = 0;
    LOBYTE(time2.value) = 0;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    value = time1.value;
    value_low = LOBYTE(time2.value);
    if (os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, time2.value))
    {
      v19 = value;
    }

    else
    {
      v19 = value & 0xFFFFFFFE;
    }

    if (v19)
    {
      rhs = *a2;
      Seconds = CMTimeGetSeconds(&rhs);
      rhs = v27;
      v21 = CMTimeGetSeconds(&rhs);
      LODWORD(time.value) = 136315906;
      *(&time.value + 4) = "bossGetPresentationTimeAfterSteppingInEmptyEditSegment";
      LOWORD(time.flags) = 2048;
      *(&time.flags + 2) = Seconds;
      HIWORD(time.epoch) = 1024;
      v30 = a3;
      v31 = 2048;
      v32 = v21;
      LODWORD(v22) = 38;
      _os_log_send_and_compose_impl(v19, 0, &rhs, 128, &dword_1962D5000, os_log_and_send_and_compose_flags_and_os_log_type, value_low, "<<<< Boss >>>> %s: stepped in empty edit: track %1.3f -> step %d -> track %1.3f", &time, v22, v23, *(&v23 + 1));
    }

    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  *a5 = v27;
}

uint64_t bossGetPresentationTimeAfterSampleCursorStepping(uint64_t a1, CMTime *a2, int a3, int a4, CMTime *a5)
{
  v58 = *MEMORY[0x1E69E9840];
  v53 = 0;
  cf = 0;
  v7 = *MEMORY[0x1E6960C70];
  *&v52.value = v7;
  v8 = *(MEMORY[0x1E6960C70] + 16);
  v52.epoch = v8;
  *&v51.value = v7;
  v51.epoch = v8;
  if (!a3)
  {
    a1 = 0;
    *&v52.value = *&a2->value;
    epoch = a2->epoch;
    goto LABEL_20;
  }

  v10 = a3;
  v47 = v7;
  time2 = *a2;
  v12 = *(*(CMBaseObjectGetVTable() + 16) + 8);
  if (!v12)
  {
    LODWORD(a1) = -12782;
LABEL_18:
    LODWORD(v50.value) = 0;
    LOBYTE(type.value) = 0;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, type.value);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    if (a1)
    {
      a1 = a1;
    }

    else
    {
      a1 = 4294954926;
    }

    goto LABEL_24;
  }

  time1 = time2;
  LODWORD(a1) = v12(a1, &time1, &cf, 0, 0);
  v13 = cf;
  if (a1)
  {
    v14 = 1;
  }

  else
  {
    v14 = cf == 0;
  }

  if (v14)
  {
    goto LABEL_18;
  }

  v15 = *(*(CMBaseObjectGetVTable() + 16) + 40);
  if (!v15)
  {
    a1 = 4294954514;
LABEL_28:
    LODWORD(v50.value) = 0;
    LOBYTE(type.value) = 0;
    v26 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v26, type.value);
LABEL_60:
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    goto LABEL_24;
  }

  v16 = v15(v13, &v51);
  if (v16)
  {
    a1 = v16;
    goto LABEL_28;
  }

  v51.epoch = a2->epoch;
  time1 = v51;
  time2 = *a2;
  if ((CMTimeCompare(&time1, &time2) & 0x80000000) == 0)
  {
    goto LABEL_10;
  }

  *&time2.value = v47;
  time2.epoch = v8;
  *&v50.value = v47;
  v50.epoch = v8;
  v31 = cf;
  v32 = *(*(CMBaseObjectGetVTable() + 16) + 56);
  if (!v32)
  {
    a1 = 4294954514;
LABEL_46:
    LODWORD(rhs.value) = 0;
    v49 = OS_LOG_TYPE_DEFAULT;
    v38 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT);
    goto LABEL_60;
  }

  v33 = v32(v31, &time2);
  if (v33)
  {
    a1 = v33;
    goto LABEL_46;
  }

  time1 = time2;
  CMTimeMultiplyByRatio(&v50, &time1, 1, 2);
  type = v51;
  rhs = v50;
  CMTimeAdd(&time1, &type, &rhs);
  v50 = time1;
  time1 = *a2;
  type = v50;
  if (CMTimeCompare(&time1, &type) < 0)
  {
    goto LABEL_10;
  }

  v34 = cf;
  v35 = *(*(CMBaseObjectGetVTable() + 16) + 176);
  if (!v35)
  {
    a1 = 4294954514;
    goto LABEL_55;
  }

  v36 = v35(v34, 1, &v53);
  if (v36)
  {
    a1 = v36;
LABEL_55:
    LODWORD(rhs.value) = 0;
    v49 = OS_LOG_TYPE_DEFAULT;
    v43 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    value = rhs.value;
    v45 = v49;
    if (os_log_type_enabled(v43, v49))
    {
      v46 = value;
    }

    else
    {
      v46 = value & 0xFFFFFFFE;
    }

    if (v46)
    {
      LODWORD(type.value) = 136315394;
      *(&type.value + 4) = "bossGetPresentationTimeAfterSampleCursorStepping";
      LOWORD(type.flags) = 1024;
      *(&type.flags + 2) = a1;
      _os_log_send_and_compose_impl(v46, 0, &time1, 128, &dword_1962D5000, v43, v45, "<<<< Boss >>>> %s: FigSampleCursorStepInPresentationOrderAndReportStepsTaken failed with err=%d", &type, 18);
    }

    goto LABEL_60;
  }

  if (v10 < 0 && !v53 && __CFADD__(v10++, 1))
  {
    goto LABEL_13;
  }

LABEL_10:
  v17 = cf;
  v18 = *(*(CMBaseObjectGetVTable() + 16) + 176);
  if (!v18)
  {
    a1 = 4294954514;
    goto LABEL_30;
  }

  v19 = v18(v17, v10, &v53);
  if (v19)
  {
    a1 = v19;
LABEL_30:
    LODWORD(v50.value) = 0;
    LOBYTE(type.value) = 0;
    v27 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    v28 = v50.value;
    value_low = LOBYTE(type.value);
    if (os_log_type_enabled(v27, type.value))
    {
      v30 = v28;
    }

    else
    {
      v30 = v28 & 0xFFFFFFFE;
    }

    if (v30)
    {
      LODWORD(time2.value) = 136315394;
      *(&time2.value + 4) = "bossGetPresentationTimeAfterSampleCursorStepping";
      LOWORD(time2.flags) = 1024;
      *(&time2.flags + 2) = a1;
      _os_log_send_and_compose_impl(v30, 0, &time1, 128, &dword_1962D5000, v27, value_low, "<<<< Boss >>>> %s: FigSampleCursorStepInPresentationOrderAndReportStepsTaken failed with err=%d", &time2, 18);
    }

    goto LABEL_60;
  }

  if (v53 != v10)
  {
    a1 = 4294954456;
    goto LABEL_24;
  }

LABEL_13:
  v20 = cf;
  v21 = *(*(CMBaseObjectGetVTable() + 16) + 40);
  if (!v21)
  {
    a1 = 4294954514;
    goto LABEL_49;
  }

  v22 = v21(v20, &v52);
  if (v22)
  {
    a1 = v22;
LABEL_49:
    LODWORD(v50.value) = 0;
    LOBYTE(type.value) = 0;
    v39 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    v40 = v50.value;
    v41 = LOBYTE(type.value);
    if (os_log_type_enabled(v39, type.value))
    {
      v42 = v40;
    }

    else
    {
      v42 = v40 & 0xFFFFFFFE;
    }

    if (v42)
    {
      LODWORD(time2.value) = 136315394;
      *(&time2.value + 4) = "bossGetPresentationTimeAfterSampleCursorStepping";
      LOWORD(time2.flags) = 1024;
      *(&time2.flags + 2) = a1;
      _os_log_send_and_compose_impl(v42, 0, &time1, 128, &dword_1962D5000, v39, v41, "<<<< Boss >>>> %s: FigSampleCursorGetPresentationTimeStamp failed with err=%d", &time2, 18);
    }

    goto LABEL_60;
  }

  if (a4)
  {
    time2 = v52;
    CMTimeConvertScale(&time1, &time2, 1000000000, kCMTimeRoundingMethod_RoundTowardPositiveInfinity);
    a1 = 0;
    *&v52.value = *&time1.value;
    epoch = time1.epoch;
LABEL_20:
    v52.epoch = epoch;
    goto LABEL_24;
  }

  a1 = 0;
LABEL_24:
  if (cf)
  {
    CFRelease(cf);
  }

  *a5 = v52;
  return a1;
}

BOOL bossTrackShouldRemoveExcessFramesInRefreshIntervals(uint64_t a1, uint64_t a2, float a3)
{
  v11 = *MEMORY[0x1E69E9840];
  if (*(a2 + 72) != 1986618469 || (*(a2 + 328) & 0x1D) != 1)
  {
    return 0;
  }

  if (*(a1 + 128))
  {
    return 1;
  }

  v7 = (a2 + 316);
  time = *(a2 + 288);
  Seconds = CMTimeGetSeconds(&time);
  *&time.value = *v7;
  time.epoch = *(a2 + 332);
  v4 = Seconds < CMTimeGetSeconds(&time) * *(a2 + 312) * a3 * 0.7;
  if (dword_1EAF16E78)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  return v4;
}

uint64_t figPlaybackBossTrackClassInitialize()
{
  result = _CFRuntimeRegisterClass();
  gFigPlaybackBossTrackTypeID = result;
  return result;
}

void figPlaybackBossTrackFinalize(void *a1)
{
  bossRemoveNotificationListenersForTrack(a1);
  a1[27] = 0;
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

  v4 = a1[7];
  if (v4)
  {
    CFRelease(v4);
    a1[7] = 0;
  }

  v5 = a1[8];
  if (v5)
  {
    CFRelease(v5);
    a1[8] = 0;
  }

  v6 = a1[23];
  if (v6)
  {
    CFRelease(v6);
    a1[23] = 0;
  }

  v7 = a1[21];
  if (v7)
  {
    CFRelease(v7);
    a1[21] = 0;
  }

  v8 = a1[18];
  if (v8)
  {
    VideoMentorInvalidate(v8);
  }

  v9 = a1[16];
  if (v9)
  {
    AudioMentorInvalidate(v9);
  }

  v10 = a1[25];
  if (v10)
  {
    EditMentorDispose(v10);
    a1[25] = 0;
  }

  v11 = a1[22];
  if (v11)
  {
    EditMentorDispose(v11);
    a1[22] = 0;
  }

  v12 = a1[20];
  if (v12)
  {
    EditMentorDispose(v12);
    a1[20] = 0;
  }

  v13 = a1[19];
  if (v13)
  {
    EditMentorDispose(v13);
    a1[19] = 0;
  }

  v14 = a1[17];
  if (v14)
  {
    EditMentorDispose(v14);
    a1[17] = 0;
  }

  v15 = a1[18];
  if (v15)
  {
    VideoMentorDispose(v15);
    a1[18] = 0;
  }

  v16 = a1[16];
  if (v16)
  {
    AudioMentorDispose(v16);
    a1[16] = 0;
  }

  v17 = a1[28];
  if (v17)
  {
    CFRelease(v17);
    a1[28] = 0;
  }

  v18 = a1[30];
  if (v18)
  {
    CFRelease(v18);
    a1[30] = 0;
  }

  v19 = a1[31];
  if (v19)
  {
    CFRelease(v19);
    a1[31] = 0;
  }

  v20 = a1[32];
  if (v20)
  {
    CFRelease(v20);
    a1[32] = 0;
  }

  v21 = a1[33];
  if (v21)
  {
    CFRelease(v21);
    a1[33] = 0;
  }

  v22 = a1[10];
  if (v22)
  {
    CFRelease(v22);
    a1[10] = 0;
  }

  v23 = a1[13];
  if (v23)
  {
    CFRelease(v23);
    a1[13] = 0;
  }

  v24 = a1[12];
  if (v24)
  {
    CFRelease(v24);
    a1[12] = 0;
  }

  v25 = a1[14];
  if (v25)
  {
    CFRelease(v25);
    a1[14] = 0;
  }

  v26 = a1[15];
  if (v26)
  {
    dispatch_release(v26);
    a1[15] = 0;
  }

  v27 = a1[6];
  if (v27)
  {
    CFRelease(v27);
    a1[6] = 0;
  }

  v28 = a1[35];
  if (v28)
  {
    CFRelease(v28);
    a1[35] = 0;
  }

  v29 = a1[2];
  if (v29)
  {
    CFRelease(v29);
    a1[2] = 0;
  }
}

__CFString *figPlaybackBossTrackCopyDebugDescription(uint64_t a1)
{
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  CFStringAppendFormat(Mutable, 0, @"<FigPlaybackBossTrack %p: ", a1);
  v3 = "";
  if (*(a1 + 236))
  {
    v4 = "";
  }

  else
  {
    v4 = "not ";
  }

  if (*(a1 + 237))
  {
    v5 = "";
  }

  else
  {
    v5 = "not ";
  }

  if (!*(a1 + 238))
  {
    v3 = "not ";
  }

  CFStringAppendFormat(Mutable, 0, @"trackID %d, mediaType %c%c%c%c, renderPipeline %@, %swaiting for mentor completion, %swaiting for mentor preroll, %swaiting for decode for preroll", *(a1 + 24), HIBYTE(*(a1 + 72)), BYTE2(*(a1 + 72)), BYTE1(*(a1 + 72)), *(a1 + 72), *(a1 + 80), v4, v5, v3);
  CFStringAppendFormat(Mutable, 0, @">");
  return Mutable;
}

__CFString *figPlaybackBossCopyDebugDescription(uint64_t a1)
{
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  CFStringAppendFormat(Mutable, 0, @"<FigPlaybackBoss %p: ", a1);
  v3 = *(a1 + 40);
  if (*(a1 + 128))
  {
    v4 = "YES";
  }

  else
  {
    v4 = "NO";
  }

  v5 = *(a1 + 120);
  StateName = getStateName(*(a1 + 432));
  CFStringAppendFormat(Mutable, 0, @"formatReader %@, nonRealTimeMode %s, timebase %@, playState %s", v3, v4, v5, StateName);
  if (*(a1 + 80) >= 1)
  {
    v7 = 0;
    do
    {
      ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 72), v7);
      v10 = bswap32(ValueAtIndex[18]);
      CFStringAppendFormat(Mutable, 0, @"\n  %d: %.4s id %d, renderPipeline %p, makeDataReadyProcessor %p", v7++, &v10, ValueAtIndex[6], *(ValueAtIndex + 10), *(ValueAtIndex + 14));
    }

    while (*(a1 + 80) > v7);
  }

  CFStringAppendFormat(Mutable, 0, @">");
  return Mutable;
}

void OUTLINED_FUNCTION_12_14(dispatch_once_t *a1)
{

  dispatch_once_f(a1, 0, figPlaybackBossTrackClassInitialize);
}

__n128 OUTLINED_FUNCTION_14_13(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __n128 a39, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, __n128 a40, uint64_t a41)
{
  result = a40;
  *(v41 - 192) = a40;
  *(v41 - 176) = a41;
  return result;
}

CMTime *OUTLINED_FUNCTION_20_5@<X0>(uint64_t a1@<X8>, CMTime *rhs, uint64_t a3, CMTime *lhs, uint64_t a5, CMTime *a6, uint64_t a7, uint64_t a8, uint64_t a9, __int128 rhsa, uint64_t rhs_16, uint64_t a12, uint64_t lhsa, uint64_t lhs_8, uint64_t lhs_16, uint64_t a16, __int128 a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, __int128 a30, uint64_t a31)
{
  lhs_16 = a1;
  rhsa = a30;
  rhs_16 = a31;

  return CMTimeAdd(&a17, &lhsa, &rhsa);
}

double OUTLINED_FUNCTION_21_6(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  fig_log_call_emit_and_clean_up_after_send_and_compose();
  return result;
}

uint64_t OUTLINED_FUNCTION_25_7(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, __int16 a14, char a15, char a16, int a17)
{

  return fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
}

uint64_t OUTLINED_FUNCTION_27_6@<X0>(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, CMTime *time2, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t time2a, uint64_t time2_8, uint64_t time2_16, uint64_t a31, uint64_t a32, uint64_t a33, CMTime *time1, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t time1a)
{
  time2_16 = a1;

  return CMTimeCompare(&time1a, &time2a);
}

CFStringRef OUTLINED_FUNCTION_29_7(uint64_t a1, uint64_t a2, const __CFString *a3)
{

  return CFStringCreateWithFormat(v3, 0, a3);
}

__n128 OUTLINED_FUNCTION_31_6@<Q0>(__n128 *a1@<X8>)
{
  result = *(v1 - 192);
  *a1 = result;
  a1[1].n128_u64[0] = *(v1 - 176);
  return result;
}

uint64_t OUTLINED_FUNCTION_38_4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{

  return FigNotificationCenterAddWeakListeners();
}

uint64_t FigRenderPipelineGetTypeID()
{
  MEMORY[0x19A8D3660](&FigRenderPipelineGetClassID_sRegisterFigRenderPipelineTypeOnce, RegisterFigRenderPipelineType);

  return CMBaseClassGetCFTypeID();
}

void FigReportingStatsResetAll(uint64_t a1)
{
  if (*(a1 + 56))
  {
    v4 = 0;
    context = a1;
    theSet = CFSetCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9F8]);
    CFDictionaryApplyFunction(*(a1 + 40), frs_findKeysToRemoveDictApplier, &context);
    if (v4)
    {
      CFSetApplyFunction(theSet, frs_removeKeysSetApplier, a1);
    }

    else
    {
      frs_resetAll(a1);
    }

    if (theSet)
    {
      CFRelease(theSet);
    }
  }

  else
  {

    frs_resetAll(a1);
  }
}

uint64_t FigReportingDataSampleValueUpdateValue(void *a1, uint64_t a2)
{
  FigSimpleMutexLock();
  a1[3] = a2;
  v4 = a1[8];
  v5 = v4 + 1;
  a1[8] = v4 + 1;
  if (a1[5] < a2 || v4 == 0)
  {
    a1[5] = a2;
  }

  if (a1[4] > a2 || v4 == 0)
  {
    a1[4] = a2;
  }

  v8 = a1[6];
  v9 = (a2 + v8 * v4) / v5;
  a1[6] = v9;
  a1[7] = (((a2 - v8) * (a2 - v9) + v8 * v4) / v5);

  return FigSimpleMutexUnlock();
}

void frs_mergeValueDictApplier(void *key, const void *a2, uint64_t a3)
{
  if (!key)
  {
    return;
  }

  if (!a2)
  {
    return;
  }

  v4 = *a3;
  if (!*a3)
  {
    return;
  }

  v6 = *(a3 + 8);
  if (v6 <= 4113)
  {
    if (v6 == 4112)
    {
      v9 = *v4;
      v10 = v4[5];
      v11 = key;
      v12 = 4112;
    }

    else
    {
      if (v6 != 4113)
      {
        return;
      }

      v9 = v4[1];
      v10 = v4[5];
      v11 = key;
      v12 = 4113;
    }
  }

  else if (v6 == 4114)
  {
    v9 = v4[2];
    v10 = v4[5];
    v11 = key;
    v12 = 4114;
  }

  else
  {
    if (v6 != 4115)
    {
      if (v6 == 4116)
      {
        v7 = v4[4];
        CFDictionarySetValue(v4[5], key, 0x1014);
        CFDictionarySetValue(v7, key, a2);
        v8 = v4[6];

        CFSetSetValue(v8, key);
      }

      return;
    }

    v9 = v4[3];
    v10 = v4[5];
    v11 = key;
    v12 = 4115;
  }

  CFDictionarySetValue(v10, v11, v12);

  CFDictionarySetValue(v9, key, a2);
}

void frs_mergeFrozenKeys(uint64_t a1, CFSetRef theSet)
{
  v3[0] = a1;
  v3[1] = 0;
  if (!*(a1 + 56))
  {
    *(a1 + 56) = CFSetCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9F8]);
  }

  CFSetApplyFunction(theSet, frs_mergeValueSetApplier, v3);
}

uint64_t frsdv_registerClass(uint64_t *a1)
{
  result = _CFRuntimeRegisterClass();
  *a1 = result;
  return result;
}

CFStringRef frsdv_copyFormattingDescription(void *a1)
{
  FigSimpleMutexLock();
  v2 = CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"FigReportingDataSampleValue %p {\n\t%s = %lld\n\t%s = %lld\n\t%s = %lld\n\t%s = %lld\n\t%s = %lld\n\t%s = %lld\n}", a1, "CurrentValue", a1[3], "MinValue", a1[4], "MaxValue", a1[5], "SampleAverage", a1[6], "SampleVariance", a1[7], "SampleCount", a1[8]);
  if (!v2)
  {
    FigUserCrashWithMessage("[FigReportingStats assert]: { formatDescriptionOut != NULL } : Failed to allocate format description string");
  }

  FigSimpleMutexUnlock();
  return v2;
}

void frs_findKeysToRemoveDictApplier(void *value, uint64_t a2, uint64_t a3)
{
  if (CFSetContainsValue(*(*a3 + 56), value))
  {
    *(a3 + 16) = 1;
  }

  else
  {
    v5 = *(a3 + 8);

    CFSetAddValue(v5, value);
  }
}

void frs_removeKeysSetApplier(const __CFString *key, __CFDictionary **a2)
{
  Value = CFDictionaryGetValue(a2[5], key);
  if (Value <= 4113)
  {
    if (Value == 4112)
    {
      v7 = *a2;
    }

    else
    {
      if (Value != 4113)
      {
        return;
      }

      v7 = a2[1];
    }
  }

  else if (Value == 4114)
  {
    v7 = a2[2];
  }

  else
  {
    if (Value != 4115)
    {
      if (Value == 4116)
      {
        CFDictionaryRemoveValue(a2[4], key);
        v6 = a2[6];
        v5 = a2 + 6;
        if (v6)
        {
          frs_removeKeysSetApplier_cold_1(key, v5);
        }
      }

      return;
    }

    v7 = a2[3];
  }

  CFDictionaryRemoveValue(v7, key);
}

void frs_mergeValueSetApplier(void *value, uint64_t a2)
{
  if (value)
  {
    if (*a2)
    {
      CFSetAddValue(*(*a2 + 56), value);
    }
  }
}

void OUTLINED_FUNCTION_0_51(const __CFDictionary *a1@<X0>, int a2@<W8>, uint64_t a3, int a4)
{
  a4 = a2;

  CFDictionaryApplyFunction(a1, frs_mergeValueDictApplier, &a3);
}

uint64_t OUTLINED_FUNCTION_3_33(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return FigCFDictionarySetInt64();
}

CFStringRef OUTLINED_FUNCTION_4_38(uint64_t a1, uint64_t a2, const __CFString *a3)
{

  return CFStringCreateWithFormat(v3, 0, a3);
}

uint64_t OUTLINED_FUNCTION_5_33(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return FigCFDictionarySetInt64();
}

void FigNetworkPathInformationSetHostIsReachable(__CFDictionary *a1, int a2)
{
  v2 = MEMORY[0x1E695E4D0];
  if (!a2)
  {
    v2 = MEMORY[0x1E695E4C0];
  }

  CFDictionarySetValue(a1, @"kFigNetworkPathInformationKey_HostIsReachable", *v2);
}

void FigNetworkPathInformationSetHostIsLocal(__CFDictionary *a1, int a2)
{
  v2 = MEMORY[0x1E695E4D0];
  if (!a2)
  {
    v2 = MEMORY[0x1E695E4C0];
  }

  CFDictionarySetValue(a1, @"kFigNetworkPathInformationKey_HostIsLocal", *v2);
}

void FigNetworkPathInformationSetDoesUseCellular(__CFDictionary *a1, int a2)
{
  v2 = MEMORY[0x1E695E4D0];
  if (!a2)
  {
    v2 = MEMORY[0x1E695E4C0];
  }

  CFDictionarySetValue(a1, @"kFigNetworkPathInformationKey_DoesUseCellular", *v2);
}

void FigNetworkPathInformationSetExpensive(__CFDictionary *a1, int a2)
{
  v2 = MEMORY[0x1E695E4D0];
  if (!a2)
  {
    v2 = MEMORY[0x1E695E4C0];
  }

  CFDictionarySetValue(a1, @"kFigNetworkPathInformationKey_IsExpensive", *v2);
}

uint64_t FigNetworkPathInformationIsHostReachable(uint64_t a1, char a2)
{
  if (FigCFDictionaryGetBooleanIfPresent() && (a2 & 1) == 0)
  {
    FigCFDictionaryGetBooleanIfPresent();
  }

  return 0;
}

uint64_t FigNetworkPathInformationGetInterfaceType(uint64_t a1)
{
  if (FigCFDictionaryGetInt64IfPresent())
  {
    return 0;
  }

  else
  {
    return 0;
  }
}

uint64_t state_Register()
{
  result = _CFRuntimeRegisterClass();
  sFigTTMLDocumentWriterStateID = result;
  return result;
}

uint64_t FigTTMLDocumentWriterStateStartElement(uint64_t a1, int a2)
{
  v4 = *MEMORY[0x1E695E480];
  MEMORY[0x19A8D3660](&element_GetTypeID_sRegisterElementOnce, element_Register);
  Instance = _CFRuntimeCreateInstance();
  if (Instance)
  {
    v6 = Instance;
    Mutable = CFDictionaryCreateMutable(v4, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    if (Mutable)
    {
      *(v6 + 16) = a2;
      *(v6 + 20) = 0;
      *(v6 + 24) = Mutable;
      CFArrayAppendValue(*(a1 + 16), v6);
      CFRelease(v6);
      return 0;
    }

    FigTTMLDocumentWriterStateStartElement_cold_1(v6, &v9);
    result = v9;
  }

  else
  {
    FigTTMLDocumentWriterStateStartElement_cold_2(&v10);
    result = v10;
  }

  if (!result)
  {
    CFArrayAppendValue(*(a1 + 16), 0);
    return 0;
  }

  return result;
}

uint64_t FigTTMLDocumentWriterStateCloseStartTag(uint64_t a1)
{
  v1 = state_peekTop(a1);
  if (v1)
  {
    v2 = v1;
    result = 0;
    v2[20] = 1;
  }

  else
  {
    FigTTMLDocumentWriterStateCloseStartTag_cold_1(&v4);
    return v4;
  }

  return result;
}

char *state_peekTop(uint64_t a1)
{
  result = CFArrayGetCount(*(a1 + 16));
  if (result)
  {
    v3 = result - 1;
    v4 = *(a1 + 16);

    return CFArrayGetValueAtIndex(v4, v3);
  }

  return result;
}

uint64_t FigTTMLDocumentWriterStateSetAttribute(uint64_t a1, const void *a2, const void *a3)
{
  v5 = state_peekTop(a1);
  if (v5)
  {
    CFDictionaryAddValue(*(v5 + 3), a2, a3);
    return 0;
  }

  else
  {
    FigTTMLDocumentWriterStateSetAttribute_cold_1(&v7);
    return v7;
  }
}

uint64_t FigTTMLDocumentWriterStateEndElement(uint64_t a1)
{
  Count = CFArrayGetCount(*(a1 + 16));
  if (Count <= 0)
  {
    FigTTMLDocumentWriterStateEndElement_cold_1(&v4);
    return v4;
  }

  else
  {
    CFArrayRemoveValueAtIndex(*(a1 + 16), Count - 1);
    return 0;
  }
}

char *FigTTMLDocumentWriterStateStartTagClosed(uint64_t a1)
{
  result = state_peekTop(a1);
  if (result)
  {
    return result[20];
  }

  return result;
}

char *FigTTMLDocumentWriterStateGetAttributes(uint64_t a1)
{
  result = state_peekTop(a1);
  if (result)
  {
    return *(result + 3);
  }

  return result;
}

char *FigTTMLDocumentWriterStateGetCurrentElementType(uint64_t a1)
{
  result = state_peekTop(a1);
  if (result)
  {
    return *(result + 4);
  }

  return result;
}

uint64_t FigTTMLDocumentWriterStateCreate(uint64_t a1, void *a2)
{
  if (a2)
  {
    v3 = *MEMORY[0x1E695E480];
    MEMORY[0x19A8D3660](&FigTTMLDocumentWriterStateGetTypeID_sRegisterFigTTMLDocumentWriterStateOnce, state_Register);
    Instance = _CFRuntimeCreateInstance();
    Mutable = CFArrayCreateMutable(v3, 0, MEMORY[0x1E695E9C0]);
    if (Mutable)
    {
      v6 = 0;
      Instance[2] = Mutable;
      *a2 = Instance;
    }

    else
    {
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v9, v10, v11[1]);
      v6 = v8;
      if (Instance)
      {
        CFRelease(Instance);
      }
    }
  }

  else
  {
    FigTTMLDocumentWriterStateCreate_cold_1(v11);
    return v11[0];
  }

  return v6;
}

void state_Finalize(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    CFRelease(v1);
  }
}

__CFString *state_CopyDebugDesc(uint64_t a1)
{
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  CFStringAppendFormat(Mutable, 0, @"[FigTTMLDocumentWriterState(%p)]", a1);
  Count = CFArrayGetCount(*(a1 + 16));
  if (Count >= 1)
  {
    v4 = Count + 1;
    do
    {
      ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 16), v4 - 2);
      CFStringAppendFormat(Mutable, 0, @"\n  %@", ValueAtIndex);
      --v4;
    }

    while (v4 > 1);
  }

  return Mutable;
}

uint64_t element_Register()
{
  result = _CFRuntimeRegisterClass();
  sElementID = result;
  return result;
}

uint64_t element_Init(uint64_t result)
{
  *(result + 16) = 0;
  *(result + 24) = 0;
  return result;
}

void element_Finalize(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    CFRelease(v2);
    *(a1 + 24) = 0;
  }
}

CFStringRef element_CopyFormattingDesc(uint64_t a1)
{
  v1 = "YES";
  if (!*(a1 + 20))
  {
    v1 = "NO";
  }

  return CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"[Element %p] elementType = %d startTagClosed: %s", a1, *(a1 + 16), v1);
}

CFStringRef element_CopyDebugDesc(uint64_t a1)
{
  v1 = "YES";
  if (!*(a1 + 20))
  {
    v1 = "NO";
  }

  return CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"[Element %p] elementType = %d startTagClosed: %s", a1, *(a1 + 16), v1);
}

void __FigUserExperienceSetCurrentRank_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(a1 + 32);
  v2[16] = v1;
  CFRelease(v2);
}

void __FigUserExperienceReportRateChange_block_invoke(uint64_t a1)
{
  UpTimeNanoseconds = FigGetUpTimeNanoseconds();
  v3 = UpTimeNanoseconds;
  v4 = *(a1 + 32);
  if (*(a1 + 48))
  {
    if (!*(v4 + 40))
    {
      v5 = *(a1 + 40);
      if (v5)
      {
        *(v5 + 56) = UpTimeNanoseconds;
        v6 = objc_autoreleasePoolPush();
        [*(v5 + 24) addStreamStart:0.0 play:(v3 - (*(v5 + 48) + *(v5 + 96))) / 1000000000.0];
        objc_autoreleasePoolPop(v6);
        *(v5 + 40) = 1;
        v4 = *(a1 + 32);
      }
    }

    *(v4 + 88) = v3;
    if (*(v4 + 69))
    {
      v7 = *(*(a1 + 40) + 96) + *(*(a1 + 40) + 48);
      [*(v4 + 24) addStreamStall:0 end:(*(v4 + 80) - v7) / 1000000000.0 quality:(v3 - v7) / 1000000000.0 weight:*(a1 + 52) / 100.0 params:1.0];
      v4 = *(a1 + 32);
    }

    else if (*(v4 + 68))
    {
      *(v4 + 96) += v3 - *(v4 + 72);
    }

    *(v4 + 68) = 0;
  }

  else if (*(v4 + 40))
  {
    *(v4 + 68) = 1;
    *(v4 + 72) = UpTimeNanoseconds;
    if (!*(v4 + 69) && *(v4 + 88) < UpTimeNanoseconds)
    {
      fus_completeVariantGuts(*(a1 + 40), *(v4 + 64), UpTimeNanoseconds);
    }
  }

  v8 = *(a1 + 40);
  if (v8)
  {

    CFRelease(v8);
  }
}

void __FigUserExperienceReportStall_block_invoke(uint64_t a1)
{
  UpTimeNanoseconds = FigGetUpTimeNanoseconds();
  v3 = *(a1 + 32);
  *(v3 + 69) = 1;
  if (!*(v3 + 68) || (v4 = *(v3 + 72), v4 >= UpTimeNanoseconds))
  {
    v4 = UpTimeNanoseconds;
  }

  *(v3 + 80) = v4;
  if (*(v3 + 88) < v4)
  {
    fus_completeVariantGuts(*(a1 + 40), *(v3 + 64), UpTimeNanoseconds);
  }

  v5 = *(a1 + 40);
  if (v5)
  {

    CFRelease(v5);
  }
}

void __FigUserExperienceReportSessionEnd_block_invoke(uint64_t a1)
{
  UpTimeNanoseconds = FigGetUpTimeNanoseconds();
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  if (*(v4 + 69))
  {
    v5 = *(v3 + 96) + *(v3 + 48);
    [*(v4 + 24) addStreamStall:0 end:(*(v4 + 80) - v5) / 1000000000.0 quality:(UpTimeNanoseconds - v5) / 1000000000.0 weight:*(v4 + 64) / 100.0 params:1.0];
  }

  else if (!*(v4 + 68))
  {
    fus_completeVariantGuts(v3, *(v4 + 64), UpTimeNanoseconds);
  }

  [*(*(a1 + 40) + 24) addStreamEnd:(UpTimeNanoseconds - (*(*(a1 + 32) + 48) + *(*(a1 + 32) + 96))) / 1000000000.0];
  v6 = *(a1 + 32);
  if (v6)
  {

    CFRelease(v6);
  }
}

uint64_t FigUserExperienceCalculateScore(uint64_t a1)
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3052000000;
  v10 = __Block_byref_object_copy__0;
  v11 = __Block_byref_object_dispose__0;
  v12 = 0;
  if (a1 && (v2 = *(a1 + 32), v6[0] = MEMORY[0x1E69E9820], v6[1] = 3221225472, v6[2] = __FigUserExperienceCalculateScore_block_invoke, v6[3] = &unk_1E7482510, v6[4] = &v7, v6[5] = a1, dispatch_sync(v2, v6), (v3 = v8[5]) != 0))
  {
    FPSupport_ReportAlgosScoreToSymptomLog(*(a1 + 16), v3);
    v4 = v8[5];
  }

  else
  {
    v4 = 0;
  }

  _Block_object_dispose(&v7, 8);
  return 0;
}

void sub_19651E2E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __FigUserExperienceCalculateScore_block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  *(*(*(a1 + 32) + 8) + 40) = [*(*(a1 + 40) + 24) scoreStreaming:0];
  v3 = *(*(*(a1 + 32) + 8) + 40);

  objc_autoreleasePoolPop(v2);
}

void sub_19651E37C(void *a1)
{
  objc_begin_catch(a1);
  objc_end_catch();
  JUMPOUT(0x19651E35CLL);
}

uint64_t FigUserExperienceScorerCreate(const void *a1, void *a2)
{
  FigNote_AllowInternalDefaultLogs();
  fig_note_initialize_category_with_default_work_cf();
  fig_note_initialize_category_with_default_work_cf();
  *a2 = 0;
  if (FigUserExperienceScorerGetClassID_sRegisterFigUserExperienceScorerTypeOnce != -1)
  {
    FigUserExperienceScorerCreate_cold_1();
  }

  Instance = _CFRuntimeCreateInstance();
  if (Instance)
  {
    v5 = Instance;
    v6 = objc_autoreleasePoolPush();
    v5[3] = objc_alloc_init(getNWSAlgosStreamScoreClass());
    objc_autoreleasePoolPop(v6);
    if (v5[3] && (v7 = dispatch_queue_create("com.apple.coremedia.uxscorer.work", 0), (v5[4] = v7) != 0))
    {
      if (a1)
      {
        v8 = CFRetain(a1);
      }

      else
      {
        v8 = 0;
      }

      v5[2] = v8;
      v9 = 0;
      v5[6] = FigGetUpTimeNanoseconds();
      *a2 = v5;
    }

    else
    {
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v12, v13, v14[1]);
      v9 = v11;
      if (v11)
      {
        CFRelease(v5);
      }
    }
  }

  else
  {
    FigUserExperienceScorerCreate_cold_2(v14);
    return v14[0];
  }

  return v9;
}

uint64_t __FigUserExperienceScorerGetClassID_block_invoke()
{
  result = _CFRuntimeRegisterClass();
  sFigUserExperienceScorerID = result;
  return result;
}

double fus_Init(uint64_t a1)
{
  *(a1 + 96) = 0;
  result = 0.0;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  return result;
}

void fus_Finalize(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();

  objc_autoreleasePoolPop(v2);
  v3 = *(a1 + 32);
  if (v3)
  {
    dispatch_release(v3);
    *(a1 + 32) = 0;
  }

  v4 = *(a1 + 16);
  if (v4)
  {

    CFRelease(v4);
  }
}

Class initNWSAlgosStreamScore()
{
  if (NetworkScoreLibrary_sOnce != -1)
  {
    initNWSAlgosStreamScore_cold_1();
  }

  result = objc_getClass("NWSAlgosStreamScore");
  classNWSAlgosStreamScore = result;
  getNWSAlgosStreamScoreClass = NWSAlgosStreamScoreFunction;
  return result;
}

void *__NetworkScoreLibrary_block_invoke()
{
  result = dlopen("/System/Library/PrivateFrameworks/NetworkScore.framework/NetworkScore", 2);
  NetworkScoreLibrary_sLib = result;
  return result;
}

uint64_t FigGaplessInfoGetDefaultAudioPrimingFrameCount(const opaqueCMFormatDescription *a1)
{
  MostCompatibleFormat = CMAudioFormatDescriptionGetMostCompatibleFormat(a1);
  if (MostCompatibleFormat)
  {
    mFormatID = MostCompatibleFormat->mASBD.mFormatID;

    return figi_GetDefaultNumAudioPrimingFrames(mFormatID);
  }

  else
  {
    FigGaplessInfoGetDefaultAudioPrimingFrameCount_cold_1();
    return 0;
  }
}

uint64_t figi_GetDefaultNumAudioPrimingFrames(int a1)
{
  v1 = 2048;
  v2 = 2112;
  if (a1 > 1667330146)
  {
    if (a1 > 1902207847)
    {
      if (a1 <= 2053202274)
      {
        if (a1 != 1902207848 && a1 != 1902207856)
        {
          v3 = 1902211171;
LABEL_12:
          if (a1 != v3)
          {
            return 0;
          }

          return v1;
        }

        return 4224;
      }

      if (a1 == 2053202275)
      {
        return v2;
      }

      if (a1 == 2053202792)
      {
        return 4224;
      }

      v4 = 2053202800;
LABEL_28:
      if (a1 == v4)
      {
        return 4224;
      }

      return 0;
    }

    if (a1 <= 1885430631)
    {
      if (a1 == 1667330147)
      {
        return v1;
      }

      v5 = 1885430115;
    }

    else
    {
      if (a1 == 1885430632 || a1 == 1885430640)
      {
        return 4224;
      }

      v5 = 1902207331;
    }

LABEL_34:
    if (a1 == v5)
    {
      return v2;
    }

    return 0;
  }

  if (a1 <= 1633772395)
  {
    if (a1 > 1633772319)
    {
      if (a1 == 1633772320)
      {
        return v2;
      }

      if (a1 == 1633772389)
      {
        return 256;
      }

      v4 = 1633772392;
      goto LABEL_28;
    }

    if (a1 == 778924083)
    {
      return 0;
    }

    v5 = 1633771875;
    goto LABEL_34;
  }

  if (a1 <= 1667326306)
  {
    if (a1 == 1633772396)
    {
      return 512;
    }

    if (a1 != 1633772400)
    {
      v3 = 1634754915;
      goto LABEL_12;
    }

    return 4224;
  }

  if (a1 != 1667326307)
  {
    if (a1 != 1667326824)
    {
      v4 = 1667326832;
      goto LABEL_28;
    }

    return 4224;
  }

  return v2;
}

void FigGaplessInfoGetDefaultAudioPrimingDuration(const opaqueCMFormatDescription *a1@<X0>, CMTime *a2@<X8>)
{
  MostCompatibleFormat = CMAudioFormatDescriptionGetMostCompatibleFormat(a1);
  *a2 = **&MEMORY[0x1E6960CC0];
  if (MostCompatibleFormat)
  {
    mSampleRate = MostCompatibleFormat->mASBD.mSampleRate;
    if (MostCompatibleFormat->mASBD.mSampleRate <= 0.0)
    {
      FigGaplessInfoGetDefaultAudioPrimingDuration_cold_1();
    }

    else
    {
      DefaultNumAudioPrimingFrames = figi_GetDefaultNumAudioPrimingFrames(MostCompatibleFormat->mASBD.mFormatID);

      CMTimeMake(a2, DefaultNumAudioPrimingFrames, (mSampleRate + 0.5));
    }
  }

  else
  {
    FigGaplessInfoGetDefaultAudioPrimingDuration_cold_2();
  }
}

uint64_t FigGaplessInfoGetDefaultBonusAudioPrimingPacketCount(const opaqueCMFormatDescription *a1)
{
  result = CMAudioFormatDescriptionGetMostCompatibleFormat(a1);
  if (result)
  {
    v2 = result;
    result = figi_GetDefaultNumAudioPrimingFrames(*(result + 8));
    if (result)
    {
      v3 = *(v2 + 20);
      if (v3)
      {
        return (result / v3);
      }

      else
      {
        return 0;
      }
    }
  }

  return result;
}

CFMutableDictionaryRef FigGaplessInfoCreateForLaterEnhancement(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = a2;
  v5 = a1;
  if (!(a2 | a1) && !a3)
  {
    return 0;
  }

  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (v5)
  {
    FigCFDictionarySetInt32();
  }

  if (v4)
  {
    FigCFDictionarySetInt32();
  }

  if (a3)
  {
    FigCFDictionarySetInt64();
  }

  return Mutable;
}

CFMutableDictionaryRef FigGaplessInfoCreateEnhanced_CorrectingWithUneditedDuration(const AudioFormatListItem *a1, __int128 *a2, uint64_t a3, uint64_t a4, int64_t a5)
{
  if (!a1)
  {
    return 0;
  }

  v6 = a4;
  v7 = a3;
  if (!(a4 | a3) && !a5)
  {
    return 0;
  }

  v10 = *a2;
  v11 = 0;
  if (!figi_ComputeEnhancementsWithDurations(a1, a5, &v10, &v11 + 1, &v11))
  {
    return 0;
  }

  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (Mutable)
  {
    if (v7)
    {
      FigCFDictionarySetInt32();
    }

    if (v6)
    {
      FigCFDictionarySetInt32();
    }

    if (a5)
    {
      FigCFDictionarySetInt64();
    }

    FigCFDictionarySetInt32();
    FigCFDictionarySetInt32();
  }

  return Mutable;
}

const AudioFormatListItem *figi_ComputeEnhancementsWithDurations(const AudioFormatListItem *result, int64_t a2, CMTime *a3, int32_t *a4, UInt32 *a5)
{
  v14 = **&MEMORY[0x1E6960C70];
  if (result)
  {
    v9 = result;
    result = CMAudioFormatDescriptionGetMostCompatibleFormat(result);
    if (result)
    {
      v10 = (result->mASBD.mSampleRate + 0.5);
      mFramesPerPacket = result->mASBD.mFramesPerPacket;
      CMTimeMake(&v14, a2, v10);
      if ((a3->flags & 0x1D) == 1)
      {
        time1 = v14;
        v12 = *a3;
        if (CMTimeCompare(&time1, &v12) >= 1)
        {
          result = CMAudioFormatDescriptionGetRichestDecodableFormat(v9);
          if (!result)
          {
            return result;
          }

          v10 = (result->mASBD.mSampleRate + 0.5);
          mFramesPerPacket = result->mASBD.mFramesPerPacket;
        }
      }

      *a4 = v10;
      *a5 = mFramesPerPacket;
      return 1;
    }
  }

  return result;
}

CFMutableDictionaryRef FigGaplessInfoCopyAndEnhance_CorrectingWithTrackReader(const AudioFormatListItem *a1, int a2, CFDictionaryRef theDict)
{
  if (!theDict)
  {
    return 0;
  }

  Value = CFDictionaryGetValue(theDict, @"FramesPerSecond");
  v6 = CFDictionaryGetValue(theDict, @"FramesPerPacket");
  if (Value)
  {
    v7 = v6 == 0;
  }

  else
  {
    v7 = 1;
  }

  if (!v7)
  {
    return CFRetain(theDict);
  }

  v15 = 0;
  v18 = 0;
  v17 = **&MEMORY[0x1E6960C70];
  FigCFDictionaryGetInt64IfPresent();
  dictionaryRepresentation.value = 0;
  v8 = *MEMORY[0x1E695E480];
  FigTrackReaderGetFigBaseObject();
  v10 = v9;
  v11 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v11)
  {
    v11(v10, @"UneditedTrackDuration", v8, &dictionaryRepresentation);
    if (dictionaryRepresentation.value)
    {
      CMTimeMakeFromDictionary(&v17, dictionaryRepresentation.value);
      CFRelease(dictionaryRepresentation.value);
    }
  }

  dictionaryRepresentation = v17;
  if (!figi_ComputeEnhancementsWithDurations(a1, v18, &dictionaryRepresentation, &v15 + 1, &v15))
  {
    return CFRetain(theDict);
  }

  MutableCopy = CFDictionaryCreateMutableCopy(v8, 0, theDict);
  if (!MutableCopy)
  {
    return CFRetain(theDict);
  }

  v13 = MutableCopy;
  FigCFDictionarySetInt32();
  FigCFDictionarySetInt32();
  return v13;
}

uint64_t FigGaplessInfoFetchiTunesParametersFromMetadataReader(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    cf = 0;
    v4 = *(*(CMBaseObjectGetVTable() + 16) + 8);
    if (v4)
    {
      v5 = *MEMORY[0x1E695E480];
      if (!v4(a1, @"itlk", @"com.apple.iTunes.iTunSMPB", 0, *MEMORY[0x1E695E480], &cf, 0) && cf != 0)
      {
        TypeID = CFStringGetTypeID();
        if (TypeID == CFGetTypeID(cf))
        {
          v10 = CFRetain(cf);
        }

        else
        {
          v11 = CFDataGetTypeID();
          if (v11 != CFGetTypeID(cf))
          {
            goto LABEL_25;
          }

          BytePtr = CFDataGetBytePtr(cf);
          Length = CFDataGetLength(cf);
          v10 = CFStringCreateWithBytes(v5, BytePtr, Length, 0x8000100u, 0);
        }

        v14 = v10;
        if (v10)
        {
          v15 = CFStringGetLength(v10);
          if (v15 >= 0x2C)
          {
            v16 = v15;
            v17 = malloc_type_malloc(v15 + 1, 0x8A334847uLL);
            if (v17)
            {
              v18 = v17;
              if (CFStringGetCString(v14, v17, v16 + 1, 0))
              {
                v18[44] = 0;
                v19 = (a2 + 4);
                if (sscanf(v18 + 10, "%08x %08x %016llx", a2, a2 + 4, a2 + 8) == 3 && *(a2 + 8) >= 1)
                {
                  if ((*a2 & 0x80000000) != 0)
                  {
                    *a2 = 0;
                  }

                  if ((*v19 & 0x80000000) != 0)
                  {
                    *v19 = 0;
                  }

                  v7 = 1;
                  goto LABEL_30;
                }

                fig_log_get_emitter();
                FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v21, v23, v25);
              }

              v7 = 0;
LABEL_30:
              free(v18);
              goto LABEL_31;
            }

            fig_log_get_emitter();
            FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v20, v22, v24);
          }

          v7 = 0;
LABEL_31:
          CFRelease(v14);
          goto LABEL_32;
        }

LABEL_25:
        v7 = 0;
LABEL_32:
        CFRelease(cf);
        return v7;
      }
    }
  }

  return 0;
}

uint64_t FigGaplessInfoCreateGradualDecoderRefresh(const opaqueCMFormatDescription *a1)
{
  RichestDecodableFormat = CMAudioFormatDescriptionGetRichestDecodableFormat(a1);
  if (!RichestDecodableFormat)
  {
    return 0;
  }

  mFormatID = RichestDecodableFormat->mASBD.mFormatID;
  if (mFormatID <= 1885430114)
  {
    if (mFormatID <= 1667326306)
    {
      if (mFormatID <= 1633772391)
      {
        if (mFormatID > 1633772319)
        {
          if (mFormatID == 1633772320)
          {
            goto LABEL_59;
          }

          v6 = 25445;
        }

        else
        {
          if (mFormatID == 778924083)
          {
            goto LABEL_59;
          }

          v6 = 24931;
        }
      }

      else
      {
        if (mFormatID > 1633772399)
        {
          if (mFormatID == 1633772400 || mFormatID == 1633889587)
          {
            goto LABEL_59;
          }

          v4 = 11571;
          goto LABEL_38;
        }

        if (mFormatID == 1633772392)
        {
          goto LABEL_59;
        }

        v6 = 25452;
      }

      v3 = v6 | 0x61610000;
      goto LABEL_58;
    }

    if (mFormatID > 1667574578)
    {
      if (mFormatID <= 1700997938)
      {
        if (mFormatID == 1667574579)
        {
          goto LABEL_59;
        }

        v3 = 1667575091;
      }

      else
      {
        if (mFormatID == 1700997939 || mFormatID == 1700998451)
        {
          goto LABEL_59;
        }

        v3 = 1869641075;
      }

LABEL_58:
      if (mFormatID == v3)
      {
        goto LABEL_59;
      }

      return 0;
    }

    if (mFormatID > 1667326823)
    {
      if (mFormatID == 1667326824)
      {
        goto LABEL_59;
      }

      v5 = 1667326832;
      goto LABEL_51;
    }

    if (mFormatID == 1667326307)
    {
      goto LABEL_59;
    }

    v4 = 25395;
LABEL_38:
    v3 = v4 | 0x63610000;
    goto LABEL_58;
  }

  if (mFormatID <= 1902207855)
  {
    if (mFormatID <= 1885547314)
    {
      if (mFormatID <= 1885430631)
      {
        if (mFormatID == 1885430115)
        {
          goto LABEL_59;
        }

        v3 = 1885430579;
        goto LABEL_58;
      }

      if (mFormatID == 1885430632)
      {
        goto LABEL_59;
      }

      v5 = 1885430640;
    }

    else
    {
      if (mFormatID <= 1902207330)
      {
        if (mFormatID == 1885547315)
        {
          goto LABEL_59;
        }

        v3 = 1885692723;
        goto LABEL_58;
      }

      if (mFormatID == 1902207331 || mFormatID == 1902207795)
      {
        goto LABEL_59;
      }

      v5 = 1902207848;
    }

    goto LABEL_51;
  }

  if (mFormatID > 2053202738)
  {
    if (mFormatID > 2053202799)
    {
      if (mFormatID == 2053202800 || mFormatID == 2053319475)
      {
        goto LABEL_59;
      }

      v3 = 2053464883;
      goto LABEL_58;
    }

    if (mFormatID == 2053202739)
    {
      goto LABEL_59;
    }

    v5 = 2053202792;
LABEL_51:
    if (mFormatID == v5)
    {
      goto LABEL_59;
    }

    return 0;
  }

  if (mFormatID <= 1902469938)
  {
    if (mFormatID == 1902207856)
    {
      goto LABEL_59;
    }

    v3 = 1902324531;
    goto LABEL_58;
  }

  if (mFormatID != 1902469939 && mFormatID != 1987015266)
  {
    v3 = 2053202275;
    goto LABEL_58;
  }

LABEL_59:

  return FigCFNumberCreateSInt32();
}

uint64_t FigTrackReaderCreateSegmentData(uint64_t a1, uint64_t a2, int a3, __CFData **a4)
{
  v20 = 0;
  v19 = **&MEMORY[0x1E6960C70];
  v4 = *(MEMORY[0x1E6960C98] + 16);
  v16 = *MEMORY[0x1E6960C98];
  v17 = v4;
  v18 = *(MEMORY[0x1E6960C98] + 32);
  if (!a1)
  {
    FigTrackReaderCreateSegmentData_cold_2(v14);
    return LODWORD(v14[0]);
  }

  if (!a2)
  {
    FigTrackReaderCreateSegmentData_cold_1(v14);
    return LODWORD(v14[0]);
  }

  if (a3)
  {
    FigGaplessInfoGetTrackGaplessSourceTimeRange(a1, a2, &v16);
  }

  FigTrackReaderGetFigBaseObject();
  v9 = v8;
  v10 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v10 && (v10(v9, @"EditCursorService", *MEMORY[0x1E695E480], &v20), (v11 = v20) != 0) || (TrackUneditedDurationWithPossibleFallback = FigGetTrackUneditedDurationWithPossibleFallback(a1, a2, &v19), v11 = v20, !TrackUneditedDurationWithPossibleFallback))
  {
    v15 = v19;
    v14[0] = v16;
    v14[1] = v17;
    v14[2] = v18;
    TrackUneditedDurationWithPossibleFallback = FigGaplessInfoCreateSegmentDataForTrack(v11, &v15, v14, a4);
    v11 = v20;
  }

  if (v11)
  {
    CFRelease(v11);
  }

  return TrackUneditedDurationWithPossibleFallback;
}

double FigGaplessInfoAdjustEditSegmentAccordingtoGaplessAudioTimeRange@<D0>(CMTime *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v81 = *MEMORY[0x1E69E9840];
  value = a1->value;
  flags = a1->flags;
  timescale = a1->timescale;
  epoch = a1->epoch;
  v9 = a1[1].timescale;
  v8 = a1[1].flags;
  v11 = a1[1].epoch;
  v10 = a1[2].value;
  v12 = a1[2].timescale;
  v13 = a1[2].flags;
  v14 = a1[2].epoch;
  v16 = a1[3].flags;
  v69 = a1[3].timescale;
  v17 = a1[3].epoch;
  v20 = a1[1].value;
  v18 = a1 + 1;
  v19 = v20;
  v77 = v10;
  v78 = v12;
  v23 = a1[3].value;
  v22 = a1 + 3;
  v21 = v23;
  v24 = MEMORY[0x1E6960CC0];
  v25 = *(MEMORY[0x1E6960CC0] + 16);
  *(a5 + 16) = v25;
  v26 = *v24;
  *a5 = *v24;
  if (a4)
  {
    if ((flags & 0x1D) != 1 && (v13 & 1) != 0 && (v16 & 1) != 0 && !v17 && (v21 & 0x8000000000000000) == 0)
    {
      v29 = 0;
      v30 = *&v18->value;
      *a5 = *&v18->value;
      *(a5 + 16) = v18->epoch;
LABEL_41:
      *a4 = value;
      *(a4 + 8) = timescale;
      *(a4 + 12) = flags;
      *(a4 + 16) = epoch;
      *(a4 + 24) = v19;
      *(a4 + 32) = v9;
      *(a4 + 36) = v8;
      v56 = v77;
      *(a4 + 40) = v11;
      *(a4 + 48) = v56;
      *(a4 + 56) = v78;
      *(a4 + 60) = v13;
      *(a4 + 64) = v14;
      *(a4 + 72) = v21;
      *(a4 + 80) = v69;
      *(a4 + 84) = v16;
      *(a4 + 88) = v29;
      return *&v30;
    }

    v60 = v21;
    v59 = v22;
    v68 = v18;
    v65 = v17;
    v66 = v14;
    v67 = v13;
    v64 = v16;
    if (*(a3 + 36))
    {
      *&time1.start.value = *(a3 + 24);
      time1.start.epoch = *(a3 + 40);
      *&time2.value = v26;
      time2.epoch = v25;
      v31 = a5;
      v32 = v11;
      v33 = v8;
      v34 = flags;
      v35 = v19;
      v36 = v9;
      v37 = epoch;
      v38 = CMTimeCompare(&time1.start, &time2);
      epoch = v37;
      v9 = v36;
      v19 = v35;
      flags = v34;
      v8 = v33;
      v11 = v32;
      a5 = v31;
      if (v38 >= 1)
      {
        memset(&time2, 0, sizeof(time2));
        v39 = *(a3 + 64);
        *&time1.start.value = *(a3 + 48);
        *&time1.start.epoch = v39;
        *&time1.duration.timescale = *(a3 + 80);
        CMTimeRangeGetEnd(&time2, &time1);
        rhs = *(a3 + 72);
        value = *MEMORY[0x1E6960C98];
        flags = *(MEMORY[0x1E6960C98] + 12);
        timescale = *(MEMORY[0x1E6960C98] + 8);
        v40 = *(MEMORY[0x1E6960C98] + 16);
        v19 = *(MEMORY[0x1E6960C98] + 24);
        v9 = *(MEMORY[0x1E6960C98] + 32);
        v8 = *(MEMORY[0x1E6960C98] + 36);
        v41 = *(MEMORY[0x1E6960C98] + 40);
        v77 = time2.value;
        v42 = time2.flags;
        v78 = time2.timescale;
        v43 = time2.epoch;
        lhs = *v59;
        CMTimeSubtract(&time1.start, &lhs, &rhs);
        epoch = v40;
        v11 = v41;
        v14 = v43;
        v13 = v42;
        v21 = time1.start.value;
        v16 = time1.start.flags;
        v69 = time1.start.timescale;
        v29 = time1.start.epoch;
        v30 = *&v68->value;
        *v31 = *&v68->value;
        *(v31 + 16) = v68->epoch;
        goto LABEL_41;
      }
    }

    memset(&time2, 0, sizeof(time2));
    time1.start.value = value;
    time1.start.timescale = timescale;
    time1.start.flags = flags;
    v44 = epoch;
    time1.start.epoch = epoch;
    time1.duration.value = v19;
    time1.duration.timescale = v9;
    time1.duration.flags = v8;
    time1.duration.epoch = v11;
    CMTimeRangeGetEnd(&time2, &time1);
    v45 = a2;
    v75 = *(a2 + 24);
    v46 = *(a2 + 36);
    v76 = *(a2 + 32);
    v47 = *(a2 + 40);
    if (*(a2 + 12))
    {
      if (v46)
      {
        v48 = *(a2 + 16);
        *&time1.start.value = *a2;
        *&time1.start.epoch = v48;
        *&time1.duration.timescale = *(a2 + 32);
        CMTimeRangeGetEnd(&lhs, &time1);
        v45 = a2;
        v75 = lhs.value;
        v46 = lhs.flags;
        v76 = lhs.timescale;
        v47 = lhs.epoch;
      }

      v58 = v47;
      v62 = v46;
      *&time1.start.value = *v45;
      time1.start.epoch = *(v45 + 16);
      lhs.value = value;
      lhs.timescale = timescale;
      lhs.flags = flags;
      lhs.epoch = v44;
      if (CMTimeCompare(&time1.start, &lhs) < 1)
      {
        epoch = v44;
      }

      else
      {
        *&time1.start.value = *v45;
        time1.start.epoch = *(v45 + 16);
        lhs = time2;
        if (CMTimeCompare(&time1.start, &lhs) < 0)
        {
          memset(&lhs, 0, sizeof(lhs));
          *&time1.start.value = *v45;
          time1.start.epoch = *(v45 + 16);
          rhs.value = value;
          rhs.timescale = timescale;
          rhs.flags = flags;
          rhs.epoch = v44;
          CMTimeSubtract(&lhs, &time1.start, &rhs);
          value = *v45;
          flags = *(v45 + 12);
          timescale = *(v45 + 8);
          v49 = *(v45 + 16);
          rhs.value = v19;
          rhs.timescale = v9;
          rhs.flags = v8;
          rhs.epoch = v11;
          start = lhs;
          CMTimeSubtract(&time1.start, &rhs, &start);
          v19 = time1.start.value;
          v9 = time1.start.timescale;
          v8 = time1.start.flags;
          v11 = time1.start.epoch;
          time1.start.value = value;
          time1.start.timescale = timescale;
          time1.start.flags = flags;
          time1.start.epoch = v49;
          time1.duration.value = v19;
          time1.duration.timescale = v9;
          time1.duration.flags = v8;
          time1.duration.epoch = v11;
          CMTimeRangeGetEnd(&rhs, &time1);
          epoch = v49;
          v16 = v64;
          *&v30 = rhs.value;
          time2 = rhs;
        }

        else
        {
          value = *MEMORY[0x1E6960C98];
          flags = *(MEMORY[0x1E6960C98] + 12);
          timescale = *(MEMORY[0x1E6960C98] + 8);
          epoch = *(MEMORY[0x1E6960C98] + 16);
          v19 = *(MEMORY[0x1E6960C98] + 24);
          v9 = *(MEMORY[0x1E6960C98] + 32);
          v8 = *(MEMORY[0x1E6960C98] + 36);
          v11 = *(MEMORY[0x1E6960C98] + 40);
        }
      }

      v46 = v62;
      v47 = v58;
    }

    else
    {
      epoch = v44;
    }

    v50 = flags & 0x1D;
    v13 = v67;
    v51 = v65;
    v14 = v66;
    v52 = v68;
    if (v50 == 1 && (v46 & 1) != 0)
    {
      v63 = epoch;
      time1.start.value = v75;
      time1.start.timescale = v76;
      time1.start.flags = v46;
      time1.start.epoch = v47;
      lhs = time2;
      v53 = v46;
      v54 = v47;
      if ((CMTimeCompare(&time1.start, &lhs) & 0x80000000) == 0)
      {
LABEL_26:
        v52 = v68;
        goto LABEL_35;
      }

      time1.start.value = v75;
      time1.start.timescale = v76;
      time1.start.flags = v53;
      time1.start.epoch = v54;
      lhs.value = value;
      lhs.timescale = timescale;
      lhs.flags = flags;
      lhs.epoch = v63;
      if (CMTimeCompare(&time1.start, &lhs) > 0)
      {
        memset(&time1, 0, 24);
        lhs = time2;
        rhs.value = v75;
        rhs.timescale = v76;
        rhs.flags = v53;
        rhs.epoch = v54;
        CMTimeSubtract(&time1.start, &lhs, &rhs);
        rhs.value = v19;
        rhs.timescale = v9;
        rhs.flags = v8;
        rhs.epoch = v11;
        start = time1.start;
        CMTimeSubtract(&lhs, &rhs, &start);
        v19 = lhs.value;
        v9 = lhs.timescale;
        v8 = lhs.flags;
        v11 = lhs.epoch;
        goto LABEL_26;
      }

      value = *MEMORY[0x1E6960C98];
      flags = *(MEMORY[0x1E6960C98] + 12);
      timescale = *(MEMORY[0x1E6960C98] + 8);
      epoch = *(MEMORY[0x1E6960C98] + 16);
      v19 = *(MEMORY[0x1E6960C98] + 24);
      v9 = *(MEMORY[0x1E6960C98] + 32);
      v8 = *(MEMORY[0x1E6960C98] + 36);
      v11 = *(MEMORY[0x1E6960C98] + 40);
      v50 = flags & 0x1D;
      v13 = v67;
      v51 = v65;
      v14 = v66;
      v16 = v64;
      v52 = v68;
    }

    if (v50 != 1 && (v13 & 1) != 0 && (v16 & 1) != 0 && !v51)
    {
      v21 = v60;
      if ((v60 & 0x8000000000000000) == 0)
      {
        v29 = 0;
LABEL_40:
        *a5 = v19;
        *(a5 + 8) = v9;
        *(a5 + 12) = v8;
        *(a5 + 16) = v11;
        goto LABEL_41;
      }
    }

    v63 = epoch;
LABEL_35:
    time1.start.value = v19;
    time1.start.timescale = v9;
    time1.start.flags = v8;
    time1.start.epoch = v11;
    lhs = *v52;
    v55 = v52;
    if (CMTimeCompare(&time1.start, &lhs) < 0)
    {
      *&time1.start.value = *&v59->value;
      time1.start.epoch = v59->epoch;
      lhs = *v55;
      if (CMTimeCompare(&time1.start, &lhs))
      {
        lhs.value = v19;
        lhs.timescale = v9;
        lhs.flags = v8;
        lhs.epoch = v11;
        rhs = *v59;
        start = *v55;
        CMTimeMultiplyTimeByTimeRatio();
        v21 = time1.start.value;
        v16 = time1.start.flags;
        v69 = time1.start.timescale;
        v29 = time1.start.epoch;
        v13 = v67;
        v14 = v66;
        epoch = v63;
      }

      else
      {
        v21 = v19;
        v69 = v9;
        v29 = v11;
        v13 = v67;
        v14 = v66;
        epoch = v63;
        v16 = v8;
      }
    }

    else
    {
      v13 = v67;
      v29 = v65;
      v14 = v66;
      v21 = v60;
      epoch = v63;
      v16 = v64;
    }

    goto LABEL_40;
  }

  *&v30 = FigGaplessInfoAdjustEditSegmentAccordingtoGaplessAudioTimeRange_cold_1();
  return *&v30;
}

uint64_t FigGaplessInfoCreateSegmentDataForTrack(uint64_t a1, CMTime *a2, uint64_t a3, __CFData **a4)
{
  v71[0] = 0;
  if (a1)
  {
    v8 = *(*(CMBaseObjectGetVTable() + 16) + 8);
    if (v8 && (*&v69.start.value = *MEMORY[0x1E6960C80], v69.start.epoch = *(MEMORY[0x1E6960C80] + 16), v8(a1, &v69, v71), (v9 = v71[0]) != 0))
    {
      v69.start.value = 0;
      v10 = *(*(CMBaseObjectGetVTable() + 16) + 8);
      if (!v10)
      {
        value_low = 4294954514;
        goto LABEL_56;
      }

      v11 = v10(v9, &v69);
      if (v11)
      {
        value_low = v11;
        goto LABEL_56;
      }

      v12 = 1;
      do
      {
        v13 = v12;
        value = v69.start.value;
        v15 = *(*(CMBaseObjectGetVTable() + 16) + 16);
        if (!v15)
        {
          break;
        }

        v16 = v15(value, 1);
        v12 = v13 + 1;
      }

      while (!v16);
      if (v69.start.value)
      {
        CFRelease(v69.start.value);
      }
    }

    else
    {
      v13 = 0;
    }
  }

  else
  {
    if ((a2->flags & 0x1D) != 1)
    {
      FigGaplessInfoCreateSegmentDataForTrack_cold_1(&v69);
      v20 = 0;
      goto LABEL_64;
    }

    v13 = 1;
  }

  v17 = (*(a3 + 12) & 0x1D) != 1 && (*(a3 + 36) & 0x1D) != 1;
  if (!v13)
  {
    v20 = CFDataCreate(*MEMORY[0x1E695E480], 0, 0);
    value_low = 0;
    goto LABEL_57;
  }

  v18 = v13 << !v17;
  Mutable = CFDataCreateMutable(*MEMORY[0x1E695E480], 96 * v18);
  v20 = Mutable;
  if (!Mutable)
  {
    FigGaplessInfoCreateSegmentDataForTrack_cold_2(&v69);
LABEL_64:
    value_low = LODWORD(v69.start.value);
    goto LABEL_57;
  }

  CFDataSetLength(Mutable, 96 * v18);
  MutableBytePtr = CFDataGetMutableBytePtr(v20);
  if (!MutableBytePtr)
  {
    fig_log_get_emitter();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v45, theData, v47);
    value_low = v44;
    if (!v44)
    {
      goto LABEL_57;
    }

    CFRelease(v20);
LABEL_56:
    v20 = 0;
    goto LABEL_57;
  }

  v22 = MutableBytePtr;
  v48 = a2;
  v23 = 0;
  v53 = *(MEMORY[0x1E6960C78] + 48);
  v54 = *(MEMORY[0x1E6960C78] + 32);
  v51 = *(MEMORY[0x1E6960C78] + 80);
  v52 = *(MEMORY[0x1E6960C78] + 64);
  v49 = *(MEMORY[0x1E6960C78] + 16);
  v50 = *MEMORY[0x1E6960C78];
  do
  {
    *&v69.duration.timescale = v54;
    *&v70.start.value = v53;
    *&v70.start.epoch = v52;
    *&v70.duration.timescale = v51;
    *&v69.start.value = v50;
    *&v69.start.epoch = v49;
    v24 = v71[0];
    if (v71[0])
    {
      v25 = *(*(CMBaseObjectGetVTable() + 16) + 24);
      if (v25)
      {
        v25(v24, &v69);
      }

      if (v17)
      {
LABEL_26:
        v26 = &v22[96 * v23++];
        v27 = *&v69.start.epoch;
        *v26 = *&v69.start.value;
        *(v26 + 1) = v27;
        v28 = *&v69.duration.timescale;
        v29 = *&v70.start.value;
        v30 = *&v70.duration.timescale;
        *(v26 + 4) = *&v70.start.epoch;
        *(v26 + 5) = v30;
        *(v26 + 2) = v28;
        *(v26 + 3) = v29;
        goto LABEL_27;
      }
    }

    else
    {
      v69.start.epoch = *(MEMORY[0x1E6960CC0] + 16);
      *&v69.start.value = *MEMORY[0x1E6960CC0];
      v69.duration = *v48;
      v70 = v69;
      if (v17)
      {
        goto LABEL_26;
      }
    }

    v67 = v54;
    *&v68.start.value = v53;
    *&v68.start.epoch = v52;
    *&v68.duration.timescale = v51;
    v65 = v50;
    v66 = v49;
    v63 = *MEMORY[0x1E6960CC0];
    v64 = *(MEMORY[0x1E6960CC0] + 16);
    do
    {
      v61 = v54;
      *&v62.start.value = v53;
      *&v62.start.epoch = v52;
      *&v62.duration.timescale = v51;
      *time1 = v50;
      *&time1[16] = v49;
      time2[0] = v69;
      time2[1] = v70;
      v33 = *(a3 + 16);
      *rhs = *a3;
      *&rhs[16] = v33;
      v58 = *(a3 + 32);
      lhs[2] = v67;
      v56 = v68;
      lhs[0] = v65;
      lhs[1] = v66;
      FigGaplessInfoAdjustEditSegmentAccordingtoGaplessAudioTimeRange(&time2[0].start, rhs, lhs, time1, &v63);
      v67 = v61;
      v68 = v62;
      v65 = *time1;
      v66 = *&time1[16];
      if (v23 < 1 || (v34 = &v22[96 * v23], (*(v34 - 21) & 0x1D) == 1) || (*(v34 - 36) & 1) == 0 || (*(v34 - 12) & 1) == 0 || *(v34 - 1) || (*(v34 - 3) & 0x8000000000000000) != 0 || (time1[12] & 0x1D) == 1 || (v62.start.flags & 1) == 0 || (v62.duration.flags & 1) == 0 || v62.duration.epoch || v62.duration.value < 0)
      {
        v35 = &v22[96 * v23++];
        v36 = *&time1[16];
        *v35 = *time1;
        *(v35 + 1) = v36;
        v37 = v61;
        v38 = *&v62.start.value;
        v39 = *&v62.duration.timescale;
        *(v35 + 4) = *&v62.start.epoch;
        *(v35 + 5) = v39;
        *(v35 + 2) = v37;
        *(v35 + 3) = v38;
      }

      else
      {
        time2[0] = v62;
        CMTimeRangeGetEnd(lhs, time2);
        v40 = *(v34 - 3);
        *&rhs[16] = *(v34 - 4);
        *rhs = v40;
        CMTimeSubtract(&time2[0].start, lhs, rhs);
        v41 = *&time2[0].start.value;
        *(v34 - 1) = time2[0].start.epoch;
        *(v34 - 24) = v41;
      }

      if (v13 < 2)
      {
        break;
      }

      *time1 = v63;
      *&time1[16] = v64;
      time2[0].start = v69.duration;
    }

    while (CMTimeCompare(time1, &time2[0].start) < 0);
LABEL_27:
    v31 = v71[0];
    if (v71[0])
    {
      v32 = *(*(CMBaseObjectGetVTable() + 16) + 16);
      if (v32)
      {
        v32(v31, 1);
      }
    }

    --v13;
  }

  while (v13);
  if (v23 < v18)
  {
    CFDataSetLength(v20, 96 * v23);
  }

  value_low = 0;
LABEL_57:
  if (v71[0])
  {
    CFRelease(v71[0]);
  }

  *a4 = v20;
  return value_low;
}

__n128 OUTLINED_FUNCTION_1_45(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __n128 a17, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, __int128 a15, __int128 a16, __n128 a18)
{
  *v18 = a15;
  v18[1] = a16;
  result = a18;
  v18[2] = a18;
  return result;
}

double FigSimpleRenderPipelineCreateWithCallback(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, const __CFDictionary *a6, void *a7)
{
  if (a7)
  {
    if (a2)
    {
      if ((*(a5 + 12) & 0x1D) == 1)
      {
        FigCFDictionaryGetBooleanIfPresent();
        FigRenderPipelineGetClassID();
        if (!CMDerivedObjectCreate())
        {
          DerivedStorage = CMBaseObjectGetDerivedStorage();
          *(DerivedStorage + 8) = FigSimpleMutexCreate();
          *(DerivedStorage + 32) = a2;
          *(DerivedStorage + 40) = a3;
          *(DerivedStorage + 48) = FigCFWeakReferenceHolderCreateWithReferencedObject();
          v15 = *(a5 + 16);
          *(DerivedStorage + 56) = *a5;
          *(DerivedStorage + 72) = v15;
          *(DerivedStorage + 88) = 0;
          CallbacksForUnsortedSampleBuffers = CMBufferQueueGetCallbacksForUnsortedSampleBuffers();
          if (a6)
          {
            Value = CFDictionaryGetValue(a6, @"SortSampleBufferQueueByOutputPTS");
            if (Value)
            {
              if (CFBooleanGetValue(Value))
              {
                CallbacksForUnsortedSampleBuffers = CMBufferQueueGetCallbacksForSampleBuffersSortedByOutputPTS();
              }
            }
          }

          if (!CMBufferQueueCreate(*MEMORY[0x1E695E480], 0, CallbacksForUnsortedSampleBuffers, (DerivedStorage + 16)))
          {
            *a7 = 0;
          }
        }

        return result;
      }

      v18 = v7;
      v19 = 534;
    }

    else
    {
      v18 = v7;
      v19 = 532;
    }
  }

  else
  {
    v18 = v7;
    v19 = 530;
  }

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", 0, 4294954444, "(Fig)", v19, v18);
}

uint64_t figSimpleRenderPipelineInvalidate(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (DerivedStorage)
  {
    v3 = DerivedStorage;
    if (!*DerivedStorage)
    {
      *DerivedStorage = 1;
      FigSimpleMutexLock();
      v4 = *(v3 + 3);
      *(v3 + 3) = 0;
      FigSimpleMutexUnlock();
      if (v4)
      {
        TMCInvalidate(v4);
        CFRelease(v4);
      }

      simplepipelineSetTimebase(a1, 0);
      v5 = *(v3 + 2);
      if (v5)
      {
        CFRelease(v5);
        *(v3 + 2) = 0;
      }
    }
  }

  return 0;
}

uint64_t figSimpleRenderPipelineFinalize(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  figSimpleRenderPipelineInvalidate(a1);
  v3 = *(DerivedStorage + 48);
  if (v3)
  {
    CFRelease(v3);
    *(DerivedStorage + 48) = 0;
  }

  return FigSimpleMutexDestroy();
}

__CFString *figSimpleRenderPipelineCopyDebugDescription(uint64_t a1)
{
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  CFStringAppendFormat(Mutable, 0, @"<FigSimpleRenderPipeline %p>", a1);
  return Mutable;
}

void figSimpleRenderPipelineCopyProperty(uint64_t a1, const void *a2, const __CFAllocator *a3, CFDictionaryRef *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!DerivedStorage || (v9 = DerivedStorage, *DerivedStorage))
  {

    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", 0, 4294954444, "(Fig)", 367, v4);
    return;
  }

  if (CFEqual(@"SourceSampleBufferQueue", a2))
  {
    v10 = v9[2];
    goto LABEL_10;
  }

  if (CFEqual(@"Timebase", a2))
  {
    v10 = v9[10];
LABEL_10:
    *a4 = v10;
    if (v10)
    {
      CFRetain(v10);
    }

    return;
  }

  if (CFEqual(@"PerformanceDictionary", a2))
  {
    *a4 = 0;
  }

  else if (CFEqual(@"EndPresentationTimeForDecodedSamples", a2))
  {
    memset(&v14, 0, sizeof(v14));
    FigSimpleMutexLock();
    v11 = v9[3];
    if (v11)
    {
      v12 = CFRetain(v11);
      FigSimpleMutexUnlock();
      if (v12)
      {
        if (!TMCGetEndPresentationTimeForDecodedSamples(v12, &v14))
        {
          v13 = v14;
          *a4 = CMTimeCopyAsDictionary(&v13, a3);
        }

        CFRelease(v12);
      }
    }

    else
    {
      FigSimpleMutexUnlock();
    }
  }
}

void figSimpleRenderPipelineSetProperty(uint64_t a1, const void *a2, const void *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (DerivedStorage && !*DerivedStorage)
  {
    if (CFEqual(@"SourceSampleBufferQueue", a2))
    {
      v8 = v3;
      v9 = 4294954445;
      v10 = 335;
    }

    else if (CFEqual(@"Timebase", a2))
    {
      if (!a3 || (TypeID = CMTimebaseGetTypeID(), TypeID == CFGetTypeID(a3)))
      {
        simplepipelineSetTimebase(a1, a3);
        return;
      }

      v8 = v3;
      v9 = 4294954444;
      v10 = 344;
    }

    else if (CFEqual(@"PerformanceDictionary", a2))
    {
      v8 = v3;
      v9 = 4294954445;
      v10 = 347;
    }

    else
    {
      if (!CFEqual(@"EndPresentationTimeForDecodedSamples", a2))
      {
        return;
      }

      v8 = v3;
      v9 = 4294954445;
      v10 = 350;
    }
  }

  else
  {
    v8 = v3;
    v9 = 4294954444;
    v10 = 332;
  }

  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", 0, v9, "(Fig)", v10, v8);
}

void simplepipelineSetTimebase(uint64_t a1, uint64_t a2)
{
  values[1] = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 80))
  {
    FigSimpleMutexLock();
    v4 = *(DerivedStorage + 24);
    *(DerivedStorage + 24) = 0;
    FigSimpleMutexUnlock();
    if (v4)
    {
      TMCInvalidate(v4);
      CFRelease(v4);
    }

    CFRelease(*(DerivedStorage + 80));
  }

  *(DerivedStorage + 80) = a2;
  if (a2)
  {
    v11 = 0;
    v10[0] = 0;
    v10[1] = FigCFWeakReferenceHolderCreateWithReferencedObject();
    v10[2] = simplepipelineSendSample;
    v10[3] = simplepipelineReleaseService;
    v10[4] = simplepipelineResetOutput;
    v5 = *MEMORY[0x1E695E480];
    if (*(DerivedStorage + 88))
    {
      keys[0] = @"AllowCaptionGroupSampleBuffers";
      values[0] = *MEMORY[0x1E695E4D0];
      v6 = CFDictionaryCreate(v5, keys, values, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    }

    else
    {
      v6 = 0;
    }

    v7 = *(DerivedStorage + 16);
    *keys = *(DerivedStorage + 56);
    v8 = *(DerivedStorage + 80);
    v13 = *(DerivedStorage + 72);
    TMCCreateWithQueueAndOptions(v5, v7, keys, v10, v8, v6, &v11);
    FigSimpleMutexLock();
    v9 = *(DerivedStorage + 24);
    *(DerivedStorage + 24) = v11;
    FigSimpleMutexUnlock();
    if (v9)
    {
      TMCInvalidate(v9);
      CFRelease(v9);
    }

    CFRetain(*(DerivedStorage + 80));
    if (v6)
    {
      CFRelease(v6);
    }
  }
}

uint64_t simplepipelineSendSample(uint64_t a1, uint64_t a2)
{
  v3 = FigCFWeakReferenceHolderCopyReferencedObject();
  if (v3)
  {
    v4 = v3;
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    if (DerivedStorage)
    {
      v6 = DerivedStorage;
      if (!*DerivedStorage)
      {
        if (*(DerivedStorage + 32))
        {
          v8 = FigCFWeakReferenceHolderCopyReferencedObject();
          if (v8)
          {
            v9 = v8;
            (*(v6 + 32))(v8, a2);
            CFRelease(v9);
          }
        }
      }
    }

    CFRelease(v4);
  }

  return 0;
}

uint64_t simplepipelineResetOutput(uint64_t a1)
{
  v1 = FigCFWeakReferenceHolderCopyReferencedObject();
  if (v1)
  {
    v2 = v1;
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    if (DerivedStorage)
    {
      v4 = DerivedStorage;
      if (!*DerivedStorage)
      {
        if (*(DerivedStorage + 40))
        {
          v6 = FigCFWeakReferenceHolderCopyReferencedObject();
          if (v6)
          {
            v7 = v6;
            (*(v4 + 40))();
            CFRelease(v7);
          }
        }
      }
    }

    CFRelease(v2);
  }

  return 0;
}

uint64_t FigSampleBufferConsumerCreateForFrameSilo(const void *a1, CFTypeRef *a2)
{
  if (!a1)
  {
    FigSampleBufferConsumerCreateForFrameSilo_cold_2(&v6);
    return v6;
  }

  if (!a2)
  {
    FigSampleBufferConsumerCreateForFrameSilo_cold_1(&v6);
    return v6;
  }

  FigSampleBufferConsumerGetClassID();
  v4 = CMDerivedObjectCreate();
  if (!v4)
  {
    *CMBaseObjectGetDerivedStorage() = a1;
    CFRetain(a1);
    *a2 = 0;
  }

  return v4;
}

void otfs_finalize(uint64_t a1)
{
  v1 = *CMBaseObjectGetDerivedStorage();
  if (v1)
  {

    CFRelease(v1);
  }
}

__CFString *otfs_copyDebugDescription(uint64_t a1)
{
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  CFStringAppendFormat(Mutable, 0, @"<FigSampleBufferConsumerForFrameSilo %p>", a1);
  return Mutable;
}

uint64_t otfs_sendSampleBuffer(uint64_t a1, opaqueCMSampleBuffer *a2)
{
  v3 = *CMBaseObjectGetDerivedStorage();

  return VTFrameSiloAddSampleBuffer(v3, a2);
}

__CFString *figAudioQueueRenderPipelineCopyDebugDescription(uint64_t a1)
{
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  CFStringAppendFormat(Mutable, 0, @"<FigAudioQueueRenderPipeline %p>", a1);
  return Mutable;
}

CFTypeRef *faqrp_setTimebase(uint64_t a1, const void *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  result = CMBaseObjectGetDerivedStorage();
  if (!*result)
  {
    v4 = result;
    FigSimpleMutexLock();
    if (v4[14])
    {
      CMNotificationCenterGetDefaultLocalCenter();
      FigNotificationCenterRemoveWeakListener();
      CFRelease(v4[14]);
    }

    v4[14] = a2;
    if (a2)
    {
      CMNotificationCenterGetDefaultLocalCenter();
      FigNotificationCenterAddWeakListener();
      CFRetain(v4[14]);
      if (dword_1EAF16ED8)
      {
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }
    }

    return FigSimpleMutexUnlock();
  }

  return result;
}

void faqrp_DecodeError(void *Value, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v5 = a5;
  values = 0;
  if (!a5)
  {
    goto LABEL_7;
  }

  TypeID = CFDictionaryGetTypeID();
  if (TypeID != CFGetTypeID(v5))
  {
    goto LABEL_6;
  }

  v5 = CFDictionaryGetValue(v5, @"FigAudioQueueNotificationParameter_ConverterError");
  values = v5;
  if (!v5)
  {
    goto LABEL_7;
  }

  v7 = CFNumberGetTypeID();
  if (v7 == CFGetTypeID(v5))
  {
    v5 = CFDictionaryCreate(*MEMORY[0x1E695E480], kFigRenderPipelineNotificationParameter_ErrorCode, &values, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  }

  else
  {
LABEL_6:
    v5 = 0;
  }

LABEL_7:
  CMNotificationCenterGetDefaultLocalCenter();
  CMNotificationCenterPostNotification();
  if (v5)
  {
    CFRelease(v5);
  }
}

uint64_t faqrp_PreemptedError(uint64_t a1, uint64_t a2)
{
  CMNotificationCenterGetDefaultLocalCenter();

  return CMNotificationCenterPostNotification();
}

uint64_t faqrp_RanDry(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  CMNotificationCenterGetDefaultLocalCenter();

  return CMNotificationCenterPostNotification();
}

uint64_t faqrp_SegmentFinished(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  CMNotificationCenterGetDefaultLocalCenter();

  return CMNotificationCenterPostNotification();
}

uint64_t faqrp_playResourceReleased(uint64_t a1, uint64_t a2)
{
  CMNotificationCenterGetDefaultLocalCenter();

  return CMNotificationCenterPostNotification();
}

uint64_t faqrp_defaultDeviceChanged(uint64_t a1, uint64_t a2)
{
  CMNotificationCenterGetDefaultLocalCenter();

  return CMNotificationCenterPostNotification();
}

uint64_t faqrp_latencyChanged(uint64_t a1, uint64_t a2)
{
  CMNotificationCenterGetDefaultLocalCenter();

  return CMNotificationCenterPostNotification();
}

uint64_t faqrp_faqRequiresManualRestartBecauseConfigurationChanged(uint64_t a1, uint64_t a2)
{
  CMNotificationCenterGetDefaultLocalCenter();

  return CMNotificationCenterPostNotification();
}

uint64_t faqrp_audioQueueDecodeFormatCouldBeImprovedByRebuild(uint64_t a1, uint64_t a2)
{
  CMNotificationCenterGetDefaultLocalCenter();

  return CMNotificationCenterPostNotification();
}

uint64_t faqrp_audioQueueStartupPerformanceMetricsAvailable(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  CMNotificationCenterGetDefaultLocalCenter();

  return CMNotificationCenterPostNotification();
}

uint64_t faqrp_audioQueueDeviceHasDisconnected(uint64_t a1, uint64_t a2)
{
  CMNotificationCenterGetDefaultLocalCenter();

  return CMNotificationCenterPostNotification();
}

void faqrp_timebaseRateChangedCallback(uint64_t a1, uint64_t a2)
{
  v5 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (dword_1EAF16ED8)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (!*DerivedStorage && !*(DerivedStorage + 65))
  {
    faqrp_startStopAudioQueueSynchronizedToTimebase(a2, *(DerivedStorage + 40));
  }
}

uint64_t faqrp_startStopAudioQueueSynchronizedToTimebase(uint64_t a1, uint64_t a2)
{
  v30 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  outRelativeRate = 0.0;
  memset(&outOfClockOrTimebaseAnchorTime, 0, sizeof(outOfClockOrTimebaseAnchorTime));
  memset(&outRelativeToClockOrTimebaseAnchorTime, 0, sizeof(outRelativeToClockOrTimebaseAnchorTime));
  cf = 0;
  if (*DerivedStorage)
  {
    return 4294954444;
  }

  v6 = DerivedStorage;
  v7 = CMTimebaseCopySource(*(DerivedStorage + 112));
  RelativeRateAndAnchorTime = CMSyncGetRelativeRateAndAnchorTime(*(v6 + 112), v7, &outRelativeRate, &outOfClockOrTimebaseAnchorTime, &outRelativeToClockOrTimebaseAnchorTime);
  if (RelativeRateAndAnchorTime)
  {
    goto LABEL_29;
  }

  if (outRelativeRate == 0.0)
  {
    FigAudioQueuePause(a2);
    *(v6 + 64) = 0;
    v18 = outRelativeRate == 0.0;
    if (outRelativeRate == 1.0)
    {
      v18 = 1;
    }

    *(v6 + 101) = v18;
    faqrp_updateTimePitchBypass(a1);
LABEL_20:
    v5 = 0;
    if (!v7)
    {
      goto LABEL_26;
    }

LABEL_25:
    CFRelease(v7);
    goto LABEL_26;
  }

  memset(&v23, 0, sizeof(v23));
  if (*(v6 + 64))
  {
    goto LABEL_20;
  }

  time1 = outOfClockOrTimebaseAnchorTime;
  v21 = *MEMORY[0x1E6960CC0];
  *&time2.value = *MEMORY[0x1E6960CC0];
  v9 = *(MEMORY[0x1E6960CC0] + 16);
  time2.epoch = v9;
  if (CMTimeCompare(&time1, &time2) < 0)
  {
    time2 = outRelativeToClockOrTimebaseAnchorTime;
    rhs = outOfClockOrTimebaseAnchorTime;
    CMTimeSubtract(&time1, &time2, &rhs);
    outRelativeToClockOrTimebaseAnchorTime = time1;
    *&outOfClockOrTimebaseAnchorTime.value = v21;
    outOfClockOrTimebaseAnchorTime.epoch = v9;
  }

  HostTimeClock = CMClockGetHostTimeClock();
  time1 = outRelativeToClockOrTimebaseAnchorTime;
  CMSyncConvertTime(&v23, &time1, v7, HostTimeClock);
  faqrp_updateFAQDiscardSampleBuffersProperty(a1, 1);
  v11 = outRelativeRate == 0.0;
  if (outRelativeRate == 1.0)
  {
    v11 = 1;
  }

  *(v6 + 101) = v11;
  faqrp_updateTimePitchBypass(a1);
  FigAudioQueueSetParameter(a2, 2, *(v6 + 160));
  v12 = outRelativeRate;
  time1 = outOfClockOrTimebaseAnchorTime;
  faqrp_primeAudioChain(a1, &time1, v12);
  v13 = *(v6 + 112);
  v14 = outRelativeRate;
  time1 = outOfClockOrTimebaseAnchorTime;
  time2 = v23;
  RelativeRateAndAnchorTime = faqrp_createPendingStartInfo(a1, v13, &time1.value, &time2.value, 0, &cf, v14);
  if (!RelativeRateAndAnchorTime)
  {
    FigSimpleMutexLock();
    v15 = *(v6 + 120);
    v16 = cf;
    *(v6 + 120) = cf;
    if (v16)
    {
      CFRetain(v16);
    }

    if (v15)
    {
      CFRelease(v15);
    }

    FigSimpleMutexUnlock();
    if (dword_1EAF16ED8)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    v19 = outRelativeRate;
    time1 = outOfClockOrTimebaseAnchorTime;
    time2 = v23;
    v5 = FigAudioQueueStart2(a2, &time1, &time2, faqrp_startTimebaseAtAnchorAudioTimeStamp, v16, 0, v19);
    if (!v5)
    {
      *(v6 + 64) = 1;
    }

    if (!v7)
    {
      goto LABEL_26;
    }

    goto LABEL_25;
  }

LABEL_29:
  v5 = RelativeRateAndAnchorTime;
  if (v7)
  {
    goto LABEL_25;
  }

LABEL_26:
  if (cf)
  {
    CFRelease(cf);
  }

  return v5;
}

uint64_t faqrp_updateFAQDiscardSampleBuffersProperty(uint64_t a1, int a2)
{
  result = CMBaseObjectGetDerivedStorage();
  if (!*result)
  {
    if (*(result + 102))
    {
      v4 = *MEMORY[0x1E695E4D0];
    }

    else
    {
      if (*(result + 103))
      {
        v5 = a2 == 0;
      }

      else
      {
        v5 = 0;
      }

      if (v5)
      {
        v4 = *MEMORY[0x1E695E4D0];
      }

      else
      {
        v4 = *MEMORY[0x1E695E4C0];
      }
    }

    v6 = *(result + 40);

    return FigAudioQueueSetProperty(v6, @"DiscardSampleBuffers", v4);
  }

  return result;
}

uint64_t faqrp_updateTimePitchBypass(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*DerivedStorage)
  {
    return 4294954444;
  }

  v3 = DerivedStorage;
  if (!*(DerivedStorage + 67))
  {
    if (*(DerivedStorage + 101) && !*(DerivedStorage + 100))
    {
      v4 = MEMORY[0x1E695E4D0];
    }

    else
    {
      v4 = MEMORY[0x1E695E4C0];
    }

    v5 = *v4;
    FigAudioQueueSetProperty(*(DerivedStorage + 40), @"TimePitchBypass", *v4);
    if (*(v3 + 66))
    {
      if (v5 == *MEMORY[0x1E695E4D0])
      {
        v6 = *MEMORY[0x1E695E4C0];
      }

      else
      {
        v6 = *MEMORY[0x1E695E4D0];
      }

      FigAudioQueueSetProperty(*(v3 + 40), @"EnableTimePitch", v6);
    }
  }

  return 0;
}

uint64_t faqrp_primeAudioChain(uint64_t a1, uint64_t a2, float a3)
{
  result = CMBaseObjectGetDerivedStorage();
  if (!*result)
  {
    v6 = result;
    if (*(a2 + 12))
    {
      v7 = *(result + 40);
      v13 = *a2;
      v12 = **&MEMORY[0x1E6960C70];
      v8 = &v13;
      v9 = &v12;
    }

    else
    {
      memset(&v13, 0, sizeof(v13));
      CMTimebaseGetTime(&v13, *(result + 112));
      v7 = *(v6 + 40);
      v12 = v13;
      v10 = *MEMORY[0x1E6960C70];
      v11 = *(MEMORY[0x1E6960C70] + 16);
      v8 = &v12;
      v9 = &v10;
    }

    return FigAudioQueuePrime(v7, v8, v9, 0, a3);
  }

  return result;
}

uint64_t faqrp_createPendingStartInfo(uint64_t a1, const void *a2, __int128 *a3, __int128 *a4, char a5, uint64_t *a6, float a7)
{
  if (_MergedGlobals_38 != -1)
  {
    faqrp_createPendingStartInfo_cold_1();
  }

  Instance = _CFRuntimeCreateInstance();
  if (Instance)
  {
    v14 = Instance;
    FigCFWeakReferenceStore();
    if (a2)
    {
      v15 = CFRetain(a2);
    }

    else
    {
      v15 = 0;
    }

    result = 0;
    *(v14 + 24) = v15;
    v17 = *a3;
    *(v14 + 48) = *(a3 + 2);
    *(v14 + 32) = v17;
    v18 = *a4;
    *(v14 + 72) = *(a4 + 2);
    *(v14 + 56) = v18;
    *(v14 + 80) = a7;
    *(v14 + 84) = a5;
    *a6 = v14;
  }

  else
  {
    faqrp_createPendingStartInfo_cold_2(&v19);
    return v19;
  }

  return result;
}

uint64_t faqrpPendingStartInfo_registerType(uint64_t *a1)
{
  result = _CFRuntimeRegisterClass();
  *a1 = result;
  return result;
}

double faqrpPendingStartInfo_Init(uint64_t a1)
{
  *(a1 + 80) = 0;
  result = 0.0;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  return result;
}

void faqrpPendingStartInfo_Finalize(uint64_t a1)
{
  objc_destroyWeak((a1 + 16));
  v2 = *(a1 + 24);
  if (v2)
  {
    CFRelease(v2);
    *(a1 + 24) = 0;
  }
}

__CFString *faqrpPendingStartInfo_CopyDebugDesc(uint64_t a1)
{
  Mutable = CFStringCreateMutable(0, 0);
  CFStringAppendFormat(Mutable, 0, @"FAQRPPendingStartInfo %p", a1);
  return Mutable;
}

BOOL faqrp_timeDifferenceIsWithinTolerance(CMTime *a1, CMTime *a2, CMTime *a3)
{
  lhs = *a1;
  v5 = *a2;
  CMTimeSubtract(&time, &lhs, &v5);
  CMTimeAbsoluteValue(&lhs, &time);
  time = *a3;
  return CMTimeCompare(&lhs, &time) < 1;
}

void faqrp_startTimebaseCommon(uint64_t a1, OpaqueCMTimebase *a2, CMTime *a3, CMTime *a4, CMTime *a5, float a6)
{
  v21 = *MEMORY[0x1E69E9840];
  time = *a5;
  CMTimeConvertScale(&timebaseTime, &time, 1000000000, kCMTimeRoundingMethod_RoundHalfAwayFromZero);
  *a5 = timebaseTime;
  time = *a3;
  CMTimeConvertScale(&timebaseTime, &time, 1000000000, kCMTimeRoundingMethod_RoundHalfAwayFromZero);
  *a3 = timebaseTime;
  time = *a4;
  CMTimeConvertScale(&timebaseTime, &time, 1000000000, kCMTimeRoundingMethod_RoundHalfAwayFromZero);
  *a4 = timebaseTime;
  v11 = a6;
  a5->value += ((a4->value - a3->value) / v11 + 0.5);
  v12 = *&a4->value;
  a3->epoch = a4->epoch;
  *&a3->value = v12;
  if (dword_1EAF16ED8)
  {
    LODWORD(v18.value) = 0;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (a2)
  {
    v14 = CMTimebaseCopySource(a2);
    memset(&v18, 0, sizeof(v18));
    HostTimeClock = CMClockGetHostTimeClock();
    timebaseTime = *a5;
    CMSyncConvertTime(&v18, &timebaseTime, HostTimeClock, v14);
    if (dword_1EAF16ED8)
    {
      v16 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    if (v14)
    {
      CFRelease(v14);
    }

    time = *a3;
    CMTimeConvertScale(&timebaseTime, &time, 1000000000, kCMTimeRoundingMethod_RoundHalfAwayFromZero);
    *a3 = timebaseTime;
    time = v18;
    CMTimeConvertScale(&timebaseTime, &time, 1000000000, kCMTimeRoundingMethod_RoundHalfAwayFromZero);
    v18 = timebaseTime;
    if (dword_1EAF16ED8)
    {
      v17 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    timebaseTime = *a3;
    time = v18;
    CMTimebaseSetRateAndAnchorTime(a2, v11, &timebaseTime, &time);
  }
}

uint64_t faqrp_setMuted(uint64_t a1, int a2)
{
  v6 = 1065353216;
  result = CMBaseObjectGetDerivedStorage();
  if (!*result)
  {
    v5 = result;
    if (*(result + 103) != a2)
    {
      if (a2)
      {
        if (!FigAudioQueueGetParameter(*(result + 40), 1, &v6) && !FigAudioQueueSetParameter(*(v5 + 40), 1, 0.0))
        {
          *(v5 + 108) = 1;
          *(v5 + 104) = v6;
        }

        *(v5 + 103) = 1;
        return faqrp_updateFAQDiscardSampleBuffersProperty(a1, *(v5 + 109));
      }

      else
      {
        *(result + 103) = 0;
        result = faqrp_updateFAQDiscardSampleBuffersProperty(a1, *(result + 109));
        if (*(v5 + 108))
        {
          result = FigAudioQueueSetParameter(*(v5 + 40), 1, *(v5 + 104));
          *(v5 + 108) = 0;
        }
      }
    }
  }

  return result;
}

_BYTE *faqrp_setSuspended(uint64_t a1, int a2)
{
  result = CMBaseObjectGetDerivedStorage();
  if (!*result && result[102] != a2)
  {
    result[102] = a2;
    v5 = result[109];

    return faqrp_updateFAQDiscardSampleBuffersProperty(a1, v5);
  }

  return result;
}

void figAudioQueueRenderPipelineStartAndUseTimebaseAtTransition(uint64_t a1, CMTimebaseRef timebase, uint64_t a3, const void *a4, uint64_t a5, const void *a6)
{
  if (!timebase)
  {
    v12 = qword_1EAF16ED0;
    v13 = v6;
    v14 = 4294954442;
    v15 = 2947;
    goto LABEL_7;
  }

  if (!a4)
  {
    v12 = qword_1EAF16ED0;
    v13 = v6;
    v14 = 4294954442;
    v15 = 2953;
    goto LABEL_7;
  }

  if (CMTimebaseGetRate(timebase) == 0.0)
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    FigSimpleMutexLock();
    if (!*(DerivedStorage + 66))
    {
      v17 = *MEMORY[0x1E695E480];
      if (*(DerivedStorage + 128) || (v18 = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]), (*(DerivedStorage + 128) = v18) != 0))
      {
        Mutable = CFDictionaryCreateMutable(v17, 3, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
        CFDictionarySetValue(Mutable, @"TransitionTimebase", timebase);
        if (a5)
        {
          FigCFDictionarySetCFIndex();
          if (a6)
          {
            a6 = FigCFWeakReferenceHolderCreateWithReferencedObject();
            if (!a6)
            {
              figAudioQueueRenderPipelineStartAndUseTimebaseAtTransition_cold_1(&v23);
              if (!Mutable)
              {
LABEL_26:
                if (a6)
                {
                  CFRelease(a6);
                }

                goto LABEL_29;
              }

LABEL_25:
              CFRelease(Mutable);
              goto LABEL_26;
            }

            FigCFDictionarySetValue();
          }
        }

        else
        {
          a6 = 0;
        }

        CFDictionarySetValue(*(DerivedStorage + 128), a4, Mutable);
        *&v23 = 0;
        if (faqrp_rememberRenderPipelineForTransitionCallback_sInitializeTableOnce != -1)
        {
          figAudioQueueRenderPipelineStartAndUseTimebaseAtTransition_cold_2();
        }

        if (sTransitionCallbackRefconToAudioQueueRenderPipelineTable)
        {
          if (FigCFWeakReferenceTableAddValueAndGetKey())
          {
            goto LABEL_24;
          }

          v20 = v23;
        }

        else
        {
          FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v23, DWORD2(v23), v24);
          if (v22)
          {
LABEL_24:
            if (!Mutable)
            {
              goto LABEL_26;
            }

            goto LABEL_25;
          }

          v20 = 0;
        }

        v21 = *(DerivedStorage + 40);
        v23 = *a3;
        v24 = *(a3 + 16);
        FigAudioQueueRequestTransitionCallback(v21, &v23, a4, faqrp_transitionCallback, v20);
        goto LABEL_24;
      }

      FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v23, DWORD2(v23), v24);
    }

LABEL_29:
    FigSimpleMutexUnlock();
    return;
  }

  v12 = qword_1EAF16ED0;
  v13 = v6;
  v14 = 4294954444;
  v15 = 2959;
LABEL_7:

  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v12, v14, "<<<< FAQRP >>>>", v15, v13);
}

uint64_t figAudioQueueRenderPipelineSynchronizeToTimebase(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  started = faqrp_startStopAudioQueueSynchronizedToTimebase(a1, *(DerivedStorage + 40));
  FigSimpleMutexUnlock();
  return started;
}

uint64_t figAudioQueueRenderPipelineFinishSettingRate(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  if (*DerivedStorage)
  {
    v3 = 4294954444;
  }

  else
  {
    FigSimpleMutexLock();
    v4 = *(DerivedStorage + 120);
    *(DerivedStorage + 120) = 0;
    FigSimpleMutexUnlock();
    if (v4)
    {
      memset(&v14, 0, sizeof(v14));
      if (*(v4 + 68))
      {
        v14 = *(v4 + 56);
      }

      else
      {
        HostTimeClock = CMClockGetHostTimeClock();
        CMClockGetTime(&v14, HostTimeClock);
      }

      memset(&v13, 0, sizeof(v13));
      if (*(v4 + 44))
      {
        v13 = *(v4 + 32);
      }

      else
      {
        CMTimebaseGetTime(&v13, *(v4 + 24));
      }

      v6 = *(v4 + 24);
      v7 = *(v4 + 80);
      v12 = v13;
      v11 = v13;
      v10 = v14;
      faqrp_startTimebaseCommon(a1, v6, &v12, &v11, &v10, v7);
      v8 = *(*(CMBaseObjectGetVTable() + 16) + 48);
      if (v8)
      {
        v8(a1);
      }

      CFRelease(v4);
    }

    v3 = 0;
  }

  FigSimpleMutexUnlock();
  return v3;
}

void figAudioQueueRenderPipelineSetPropertiesToUpdateAtTransition(uint64_t a1, uint64_t a2, const __CFDictionary *a3)
{
  if (a2)
  {
    figAudioQueueRenderPipelineSetPropertiesToUpdateAtTransition_cold_1(a1, a2, a3, &v5);
  }

  else
  {
    v4 = qword_1EAF16ED0;

    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v4, 4294954442, "<<<< FAQRP >>>>", 3053, v3);
  }
}

uint64_t faqrp_stopTimebaseAndAudioQueue(uint64_t a1, CMTime *a2)
{
  v13 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*DerivedStorage)
  {
    return 4294954444;
  }

  v5 = DerivedStorage;
  FigSimpleMutexLock();
  v6 = *(v5 + 15);
  if (v6)
  {
    CFRelease(v6);
    *(v5 + 15) = 0;
  }

  v5[109] = 0;
  FigSimpleMutexUnlock();
  if ((a2->flags & 0x1D) == 1)
  {
    v7 = CMTimebaseCopySource(*(v5 + 14));
    if (dword_1EAF16ED8)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    v10 = *(v5 + 14);
    CMSyncGetTime(&time, v7);
    timebaseTime = *a2;
    CMTimebaseSetRateAndAnchorTime(v10, 0.0, &timebaseTime, &time);
    if (v7)
    {
      CFRelease(v7);
    }
  }

  else
  {
    if (dword_1EAF16ED8)
    {
      v9 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    time = **&MEMORY[0x1E6960C70];
    timebaseTime = time;
    CMTimebaseSetRateAndAnchorTimeWithFlags();
  }

  if (!v5[64])
  {
    return 0;
  }

  result = FigAudioQueuePause(*(v5 + 5));
  v5[64] = 0;
  return result;
}

void figAudioQueueRenderPipelineConvertRPPropertyKeyToFAQPropertyKey(uint64_t a1, const void *a2, __CFDictionary *a3)
{
  if (FigCFEqual())
  {
    v5 = kFigAudioQueueProperty_AudioCurves;
  }

  else
  {
    if (!FigCFEqual())
    {
      return;
    }

    v5 = kFigAudioQueueProperty_SecondaryAudioCurves;
  }

  v6 = *v5;
  if (*v5)
  {

    CFDictionarySetValue(a3, v6, a2);
  }
}

__n128 OUTLINED_FUNCTION_2_45()
{
  result = *v0;
  v1[7] = *v0;
  v1[8].n128_u64[0] = v0[1].n128_u64[0];
  return result;
}

uint64_t OUTLINED_FUNCTION_9_17(uint64_t a1)
{

  return FigSimpleMutexLock();
}

uint64_t FigPlaybackTimer_initOnce()
{
  result = _CFRuntimeRegisterClass();
  sFigPlaybackTimerID = result;
  return result;
}

uint64_t FigPlaybackTimerCreate(uint64_t *a1)
{
  if (a1)
  {
    MEMORY[0x19A8D3660](&FigPlaybackTimerGetTypeID_sFigPlaybackTimerRegisterOnce, FigPlaybackTimer_initOnce);
    Instance = _CFRuntimeCreateInstance();
    if (Instance)
    {
      v3 = Instance;
      result = 0;
      *(v3 + 16) = 0;
      *(v3 + 24) = 0;
      *a1 = v3;
    }

    else
    {
      FigPlaybackTimerCreate_cold_1(&v5);
      return v5;
    }
  }

  else
  {
    FigPlaybackTimerCreate_cold_2(&v6);
    return v6;
  }

  return result;
}

uint64_t playbacktimer_init(uint64_t result)
{
  *(result + 16) = 0;
  *(result + 24) = 0;
  return result;
}

double FigPlaybackTimerScheduleForTimebaseTimeWithTeardownHandlers(uint64_t a1, CFTypeRef cf, NSObject *a3, void *a4, void (__cdecl *a5)(void *), void (__cdecl *a6)(void *), void (__cdecl *a7)(void *), CMTime *a8)
{
  if (*(a1 + 16))
  {
    v9 = v8;
    v10 = 4294947645;
    v11 = 148;
LABEL_15:

    return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", 0, v10, "(Fig)", v11, v9, a7, a8);
  }

  if ((a8->flags & 0x1D) != 1)
  {
    v9 = v8;
    v10 = 4294947646;
    v11 = 152;
    goto LABEL_15;
  }

  if (!cf)
  {
    v9 = v8;
    v10 = 4294947646;
    v11 = 156;
    goto LABEL_15;
  }

  *(a1 + 24) = cf;
  CFRetain(cf);
  v19 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, a3);
  *(a1 + 16) = v19;
  if (v19)
  {
    dispatch_set_context(v19, a4);
    dispatch_source_set_event_handler_f(*(a1 + 16), a5);
    if (a6)
    {
      dispatch_source_set_cancel_handler_f(*(a1 + 16), a6);
    }

    if (a7)
    {
      dispatch_set_finalizer_f(*(a1 + 16), a7);
    }

    dispatch_resume(*(a1 + 16));
    v20 = CMTimebaseAddTimerDispatchSource(*(a1 + 24), *(a1 + 16));
    if (v20)
    {
      result = FigPlaybackTimerScheduleForTimebaseTimeWithTeardownHandlers_cold_1(v20, v21, v22, v23, v24, v25, v26, v27, v34.value, v34.timescale, v34.flags, v34.epoch);
    }

    else
    {
      v29 = *(a1 + 16);
      v28 = *(a1 + 24);
      v34 = *a8;
      v30 = CMTimebaseSetTimerDispatchSourceNextFireTime(v28, v29, &v34, 1u);
      if (!v30)
      {
        return result;
      }

      FigPlaybackTimerScheduleForTimebaseTimeWithTeardownHandlers_cold_2(v30);
    }
  }

  else if (FigPlaybackTimerScheduleForTimebaseTimeWithTeardownHandlers_cold_3(&v34))
  {
    return result;
  }

  v32 = *(a1 + 16);
  if (v32)
  {
    dispatch_source_cancel(v32);
    dispatch_release(*(a1 + 16));
    *(a1 + 16) = 0;
  }

  v33 = *(a1 + 24);
  if (v33)
  {
    CFRelease(v33);
    *(a1 + 24) = 0;
  }

  return result;
}

uint64_t FigPlaybackTimerCancel(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v3 = CMTimebaseRemoveTimerDispatchSource(*(a1 + 24), v1);
    v11 = v3;
    if (v3)
    {
      FigPlaybackTimerCancel_cold_1(v3, v4, v5, v6, v7, v8, v9, v10, v13, v14, v15[0], v15[1]);
    }

    else
    {
      dispatch_source_cancel(*(a1 + 16));
      dispatch_release(*(a1 + 16));
      *(a1 + 16) = 0;
      CFRelease(*(a1 + 24));
      *(a1 + 24) = 0;
    }
  }

  else
  {
    FigPlaybackTimerCancel_cold_2(v15);
    return v15[0];
  }

  return v11;
}

uint64_t playbacktimer_finalize(uint64_t a1)
{
  if (*(a1 + 16))
  {
    return FigPlaybackTimerCancel(a1);
  }

  return a1;
}

CFStringRef playbacktimer_copyFormattingDesc(uint64_t a1)
{
  v2 = CFCopyDescription(*(a1 + 24));
  v3 = CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"[FigPlaybackTimer %p]: timebase: %@, dispatch_source %p", a1, v2, *(a1 + 16));
  if (v2)
  {
    CFRelease(v2);
  }

  return v3;
}

uint64_t figCSSParserRegisterFigCSSParser()
{
  result = _CFRuntimeRegisterClass();
  sFigCSSParserID = result;
  return result;
}

uint64_t FigCSSParserCreate(uint64_t a1, const void *a2, CFTypeRef cf, uint64_t **a4)
{
  if (!a2)
  {
    FigCSSParserCreate_cold_4(&v13);
    return v13;
  }

  if (!a4)
  {
    FigCSSParserCreate_cold_3(&v13);
    return v13;
  }

  if (cf)
  {
    v8 = CFGetTypeID(cf);
    if (v8 != CFDictionaryGetTypeID())
    {
      FigCSSParserCreate_cold_1(&v13);
      return v13;
    }
  }

  MEMORY[0x19A8D3660](&FigCSSParserGetTypeID_sRegisterFigCSSParserOnce, figCSSParserRegisterFigCSSParser);
  Instance = _CFRuntimeCreateInstance();
  if (!Instance)
  {
    FigCSSParserCreate_cold_2(&v13);
    return v13;
  }

  v10 = Instance;
  *(Instance + 32) = 0;
  if (cf)
  {
    LOBYTE(v13) = 0;
    FigCFDictionaryGetBooleanIfPresent();
  }

  v10[2] = CFRetain(a2);
  v11 = FigCSSTokenizerCreateWithTextContainer(a1, a2, v10 + 3);
  if (v11)
  {
    CFRelease(v10);
  }

  else
  {
    *a4 = v10;
  }

  return v11;
}

uint64_t FigCSSParserProduceStyleSheet(uint64_t a1, void *a2)
{
  if (!a1)
  {
    FigCSSParserProduceStyleSheet_cold_12(v109);
    return LODWORD(v109[0]);
  }

  v2 = a2;
  if (!a2)
  {
    FigCSSParserProduceStyleSheet_cold_11(v109);
    return LODWORD(v109[0]);
  }

  figCSSParser_reset(a1);
  if (*(a1 + 32))
  {
    figCSSParser_reset(a1);
  }

  FigCSSTokenizerProduceTokenArray(*(a1 + 24), (a1 + 40));
  if (v4)
  {
    v26 = v4;
    goto LABEL_298;
  }

  if (!*(a1 + 40))
  {
    if (FigCSSParserProduceStyleSheet_cold_10(v109))
    {
      goto LABEL_276;
    }

    v26 = LODWORD(v109[0]);
    goto LABEL_298;
  }

  if (*(a1 + 80))
  {
    v5 = CFGetAllocator(a1);
    v6 = CFStringCreateWithFormat(v5, 0, @"parser produced tokens: %@", *(a1 + 40));
    if (v6)
    {
      CFRelease(v6);
    }
  }

  v79 = 0;
  v80 = 0;
  v7 = CFGetAllocator(a1);
  v8 = FigCSSTokenWalkerCreate(v7, *(a1 + 40), &v79);
  if (v8 || (v9 = CFGetAllocator(a1), v8 = FigCSSStyleSheetCreate(v9, &v80), v8))
  {
    v26 = v8;
    v71 = 0;
    Mutable = 0;
    goto LABEL_290;
  }

  v10 = v79;
  cf = 0;
  v83 = 0;
  value = 0;
  v11 = CFGetAllocator(a1);
  Mutable = CFArrayCreateMutable(v11, 0, MEMORY[0x1E695E9C0]);
  if (!Mutable)
  {
    FigCSSParserProduceStyleSheet_cold_9(v109);
    v27 = 0;
    v28 = 0;
    v26 = LODWORD(v109[0]);
    goto LABEL_282;
  }

  v13 = CFGetAllocator(a1);
  v14 = FigCSSRuleListCreate(v13, &v83);
  if (v14 || (v109[0] = 0, LODWORD(v107) = 0, FigCSSTokenWalkerConsumeNextInputToken(v10, v109, &v107), v14))
  {
    v26 = v14;
    v27 = 0;
    v28 = 0;
    goto LABEL_282;
  }

  v76 = v2;
  v15 = v107;
  v16 = MEMORY[0x1E695E9C0];
  while (v15 > 24)
  {
    if ((v15 - 25) >= 2)
    {
      goto LABEL_31;
    }

LABEL_79:
    v109[0] = 0;
    LODWORD(v107) = 0;
    FigCSSTokenWalkerConsumeNextInputToken(v10, v109, &v107);
    v15 = v107;
    if (appended)
    {
      goto LABEL_280;
    }
  }

  switch(v15)
  {
    case 2:
      goto LABEL_79;
    case 8:
      FigCSSTokenWalkerReconsumeInputToken(v10);
      if (appended || (appended = _figCSSParser_consume_an_at_rule(a1, v10, &cf, &value), appended))
      {
LABEL_280:
        v26 = appended;
        v27 = 0;
        v28 = 0;
        goto LABEL_281;
      }

      if (cf)
      {
        appended = FigCSSRuleListAppendRule(v83, cf);
        if (appended)
        {
          goto LABEL_280;
        }

        if (cf)
        {
          CFRelease(cf);
          cf = 0;
        }
      }

      if (value)
      {
        CFArrayAppendValue(Mutable, value);
        if (value)
        {
          CFRelease(value);
          value = 0;
        }
      }

      goto LABEL_79;
    case 1:
      v27 = 0;
      v28 = 0;
      v26 = 0;
      v71 = v83;
      v83 = 0;
      v2 = v76;
      goto LABEL_255;
  }

LABEL_31:
  FigCSSTokenWalkerReconsumeInputToken(v10);
  if (appended)
  {
    goto LABEL_280;
  }

  v89 = 0;
  v90 = 0;
  v87 = 0;
  v88 = 0;
  v85 = 0;
  v86 = 0;
  theArray = 0;
  v18 = CFGetAllocator(a1);
  v19 = FigCSSQualifiedRuleParserNodeCreate(v18, &v89);
  if (v19)
  {
    goto LABEL_54;
  }

  v20 = CFGetAllocator(a1);
  v19 = FigCSSRuleCreate(v20, 1, &v90);
  if (v19)
  {
    goto LABEL_54;
  }

  v109[0] = 0;
  LODWORD(v107) = 0;
  FigCSSTokenWalkerConsumeNextInputToken(v10, v109, &v107);
  if (v19)
  {
    goto LABEL_54;
  }

  v21 = v107;
  while (1)
  {
    if (v21 == 1)
    {
      v27 = 0;
      v28 = 0;
      MutableCopy = 0;
      v26 = 4294949493;
      goto LABEL_57;
    }

    if (v21 == 18)
    {
      break;
    }

    FigCSSTokenWalkerReconsumeInputToken(v10);
    if (!v19)
    {
      v19 = _figCSSParser_consume_a_component_value(a1, v10, &v87, &v88);
      if (!v19)
      {
        v19 = FigCSSQualifiedRuleParserNodeCopyPrelude(v89, &theArray);
        if (!v19)
        {
          v22 = theArray;
          v23 = CFGetAllocator(a1);
          if (v22)
          {
            MutableCopy = CFArrayCreateMutableCopy(v23, 0, theArray);
          }

          else
          {
            MutableCopy = CFArrayCreateMutable(v23, 0, v16);
            if (!MutableCopy)
            {
              FigCSSParserProduceStyleSheet_cold_8(v109);
              v27 = 0;
              v28 = 0;
              v26 = LODWORD(v109[0]);
              goto LABEL_57;
            }
          }

          CFArrayAppendValue(MutableCopy, v88);
          v25 = FigCSSQualifiedRuleParserNodeSetPrelude(v89, MutableCopy);
          if (v25)
          {
            v26 = v25;
            v27 = 0;
            v28 = 0;
            goto LABEL_57;
          }

          if (v88)
          {
            CFRelease(v88);
            v88 = 0;
          }

          if (v87)
          {
            CFRelease(v87);
            v87 = 0;
          }

          if (MutableCopy)
          {
            CFRelease(MutableCopy);
          }

          if (theArray)
          {
            CFRelease(theArray);
            theArray = 0;
          }

          v109[0] = 0;
          LODWORD(v107) = 0;
          FigCSSTokenWalkerConsumeNextInputToken(v10, v109, &v107);
          v21 = v107;
          if (!v19)
          {
            continue;
          }
        }
      }
    }

    goto LABEL_54;
  }

  if (v85)
  {
    CFRelease(v85);
    v85 = 0;
  }

  if (v86)
  {
    CFRelease(v86);
    v86 = 0;
  }

  v19 = _figCSSParser_consume_a_simple_block(a1, v10, &v85, &v86);
  if (v19 || (v19 = FigCSSQualifiedRuleParserNodeSetSimpleBlock(v89, v86), v19))
  {
LABEL_54:
    v26 = v19;
LABEL_55:
    v27 = 0;
    v28 = 0;
    MutableCopy = 0;
    goto LABEL_57;
  }

  v30 = v89;
  v92 = 0;
  v93 = 0;
  v91 = 0;
  if (!v89)
  {
    FigCSSParserProduceStyleSheet_cold_7(v109);
LABEL_249:
    v26 = LODWORD(v109[0]);
    goto LABEL_232;
  }

  if (!v90)
  {
    FigCSSParserProduceStyleSheet_cold_6(v109);
    goto LABEL_249;
  }

  v77 = v90;
  v31 = FigCSSQualifiedRuleParserNodeCopyPrelude(v89, &v93);
  if (v31 || (FigCSSQualifiedRuleParserNodeCopySimpleBlock(v30, &v92), v31) || (v31 = _figCSSParser_util_serializeComponentValueNodeArray(a1, v93, &v91), v31))
  {
    v26 = v31;
    goto LABEL_232;
  }

  v32 = v92;
  v101 = 0;
  v102 = 0;
  v99 = 0;
  v100 = 0;
  v97 = 0;
  v98 = 0;
  v95 = 0;
  v96 = 0;
  v94 = 0;
  if (!v92)
  {
    FigCSSParserProduceStyleSheet_cold_5(v109);
    v69 = 0;
    v40 = 0;
    v26 = LODWORD(v109[0]);
    goto LABEL_204;
  }

  v33 = CFGetAllocator(a1);
  v34 = FigCSSStyleDeclarationCreate(v33, &v102);
  if (v34 || (v34 = FigCSSSimpleBlockParserNodeCopyAssociatedToken(v32, &v100), v34) || (v34 = FigCSSSimpleBlockParserNodeCopyValue(v32, &v98), v34) || (v34 = _figCSSParser_util_convertComponentValueArrayToTokenArray(a1, v98, &v97), v34) || (v35 = CFGetAllocator(a1), v34 = FigCSSTokenWalkerCreate(v35, v97, &v94), v34))
  {
    v26 = v34;
    v69 = 0;
    v32 = 0;
    v40 = 0;
    goto LABEL_204;
  }

  v36 = v94;
  v104 = 0;
  v105 = 0;
  v103 = 0;
  v37 = CFGetAllocator(a1);
  v38 = CFArrayCreateMutable(v37, 0, v16);
  if (!v38)
  {
    FigCSSParserProduceStyleSheet_cold_4(v109);
    v32 = 0;
    v40 = 0;
    goto LABEL_253;
  }

  v39 = CFGetAllocator(a1);
  v40 = CFArrayCreateMutable(v39, 0, v16);
  if (!v40)
  {
    FigCSSParserProduceStyleSheet_cold_3(v109);
    v32 = 0;
LABEL_253:
    v62 = 0;
    v78 = 0;
    v44 = 0;
LABEL_243:
    v26 = LODWORD(v109[0]);
    goto LABEL_169;
  }

  v109[0] = 0;
  LODWORD(v107) = 0;
  FigCSSTokenWalkerConsumeNextInputToken(v36, v109, &v107);
  v78 = v40;
  if (v41)
  {
    goto LABEL_168;
  }

  v42 = v107;
  while (2)
  {
    if (v42 <= 7)
    {
      if (v42 != 2)
      {
        if (v42 != 7)
        {
          if (v42 != 1)
          {
            goto LABEL_162;
          }

          v62 = 0;
          v26 = 0;
          v44 = 0;
          v32 = v38;
          v38 = 0;
          v78 = 0;
          goto LABEL_169;
        }

        v43 = CFGetAllocator(a1);
        v44 = CFArrayCreateMutable(v43, 0, v16);
        if (!v44)
        {
          FigCSSParserProduceStyleSheet_cold_2(v109);
          v32 = 0;
          v40 = 0;
          v62 = 0;
          goto LABEL_243;
        }

        v109[0] = 0;
        LODWORD(v107) = 0;
        CurrentInputToken = FigCSSTokenWalkerGetCurrentInputToken(v36, v109, &v107);
        if (CurrentInputToken)
        {
          goto LABEL_166;
        }

        CFArrayAppendValue(v44, v109[0]);
        v109[0] = 0;
        LODWORD(v107) = 0;
        FigCSSTokenWalkerConsumeNextInputToken(v36, v109, &v107);
        if (CurrentInputToken)
        {
          goto LABEL_166;
        }

        v46 = v109[0];
        v47 = v107;
        while (v47 != 1 && v47 != 14)
        {
          CFArrayAppendValue(v44, v46);
          v109[0] = 0;
          LODWORD(v107) = 0;
          FigCSSTokenWalkerConsumeNextInputToken(v36, v109, &v107);
          v46 = v109[0];
          v47 = v107;
          if (CurrentInputToken)
          {
            goto LABEL_166;
          }
        }

        v48 = CFGetAllocator(a1);
        CurrentInputToken = FigCSSTokenWalkerCreate(v48, v44, &v103);
        if (CurrentInputToken || (FigCSSTokenWalkerConsumeNextInputToken(v103, 0, 0), CurrentInputToken))
        {
LABEL_166:
          v26 = CurrentInputToken;
          v32 = 0;
          v40 = 0;
          v62 = 0;
          goto LABEL_169;
        }

        v49 = v103;
        v106 = 0;
        v107 = 0;
        v50 = CFGetAllocator(a1);
        v51 = FigCSSDeclarationParserNodeCreate(v50, &v107);
        if (v51 || (v109[0] = 0, v108 = 0, v51 = FigCSSTokenWalkerGetCurrentInputToken(v49, v109, &v108), v51) || (v51 = FigCSSDeclarationParserNodeSetName(v107, v109[0]), v51))
        {
          v26 = v51;
          v53 = 0;
          goto LABEL_142;
        }

        v52 = CFGetAllocator(a1);
        v53 = CFArrayCreateMutable(v52, 0, v16);
        if (!v53)
        {
          FigCSSParserProduceStyleSheet_cold_1(v109);
          v26 = LODWORD(v109[0]);
          goto LABEL_142;
        }

        v54 = FigCSSDeclarationParserNodeSetValue(v107, v53);
        if (v54)
        {
          goto LABEL_129;
        }

        v109[0] = 0;
        v108 = 0;
        FigCSSTokenWalkerConsumeNextInputToken(v49, v109, &v108);
        if (v54)
        {
          goto LABEL_129;
        }

        v55 = v108;
        while (v55 == 2)
        {
          v109[0] = 0;
          v108 = 0;
          FigCSSTokenWalkerConsumeNextInputToken(v49, v109, &v108);
          v55 = v108;
          if (v54)
          {
            goto LABEL_129;
          }
        }

        if (v55 != 13)
        {
          v26 = 4294949493;
          goto LABEL_142;
        }

        v109[0] = 0;
        v108 = 0;
        FigCSSTokenWalkerConsumeNextInputToken(v49, v109, &v108);
        if (v54)
        {
LABEL_129:
          v26 = v54;
          goto LABEL_142;
        }

        v56 = v38;
        v57 = Mutable;
        if (v108 == 1)
        {
LABEL_140:
          v26 = 0;
          v62 = v107;
          v107 = 0;
          Mutable = v57;
          v38 = v56;
          v16 = MEMORY[0x1E695E9C0];
        }

        else
        {
          v58 = v109[0];
          while (1)
          {
            v59 = CFGetAllocator(a1);
            v60 = FigCSSComponentValueParserNodeCreate(v59, &v106);
            if (v60)
            {
              break;
            }

            v60 = FigCSSComponentValueParserNodeSetPreservedToken(v106, v58);
            if (v60)
            {
              break;
            }

            CFArrayAppendValue(v53, v106);
            v109[0] = 0;
            v108 = 0;
            FigCSSTokenWalkerConsumeNextInputToken(v49, v109, &v108);
            if (v60)
            {
              break;
            }

            v58 = v109[0];
            v61 = v108;
            if (v106)
            {
              CFRelease(v106);
              v106 = 0;
            }

            if (v61 == 1)
            {
              goto LABEL_140;
            }
          }

          v26 = v60;
          Mutable = v57;
          v38 = v56;
          v16 = MEMORY[0x1E695E9C0];
LABEL_142:
          if (v107)
          {
            CFRelease(v107);
          }

          v62 = 0;
        }

        if (v106)
        {
          CFRelease(v106);
        }

        if (v53)
        {
          CFRelease(v53);
        }

        if (v26)
        {
          v32 = 0;
          v40 = 0;
          goto LABEL_169;
        }

        v40 = v78;
        if (v62)
        {
          CFArrayAppendValue(v78, v62);
          CFRelease(v62);
        }

        if (v103)
        {
          CFRelease(v103);
          v103 = 0;
        }

        CFRelease(v44);
      }

LABEL_155:
      v109[0] = 0;
      LODWORD(v107) = 0;
      FigCSSTokenWalkerConsumeNextInputToken(v36, v109, &v107);
      v42 = v107;
      if (v41)
      {
        goto LABEL_168;
      }

      continue;
    }

    break;
  }

  if (v42 == 8)
  {
    v41 = _figCSSParser_consume_an_at_rule(a1, v36, &v105, &v104);
    if (v41)
    {
      goto LABEL_168;
    }

    CFArrayAppendValue(v38, v105);
    CFArrayAppendValue(v40, v104);
    goto LABEL_155;
  }

  if (v42 == 14)
  {
    goto LABEL_155;
  }

LABEL_162:
  while (1)
  {
    v109[0] = 0;
    LODWORD(v107) = 0;
    FigCSSTokenWalkerConsumeNextInputToken(v36, v109, &v107);
    if (v41)
    {
      break;
    }

    if ((v107 - 3) >= 0xFFFFFFFE)
    {
      v32 = 0;
      v40 = 0;
      v62 = 0;
      v44 = 0;
      v26 = 4294949493;
      goto LABEL_169;
    }
  }

LABEL_168:
  v26 = v41;
  v32 = 0;
  v40 = 0;
  v62 = 0;
  v44 = 0;
LABEL_169:
  if (v104)
  {
    CFRelease(v104);
  }

  if (v105)
  {
    CFRelease(v105);
  }

  if (v38)
  {
    CFRelease(v38);
  }

  if (v62)
  {
    CFRelease(v62);
  }

  if (v78)
  {
    CFRelease(v78);
  }

  if (v103)
  {
    CFRelease(v103);
  }

  if (v44)
  {
    CFRelease(v44);
  }

  if (!v26)
  {
    v63 = 0;
    if (v40)
    {
LABEL_185:
      Count = CFArrayGetCount(v40);
      goto LABEL_187;
    }

    while (1)
    {
      Count = 0;
LABEL_187:
      if (v63 >= Count)
      {
        v26 = 0;
        v69 = v102;
        v102 = 0;
        goto LABEL_204;
      }

      ValueAtIndex = CFArrayGetValueAtIndex(v40, v63);
      SerializationString = FigCSSDeclarationParserNodeCopyName(ValueAtIndex, &v101);
      if (SerializationString)
      {
        break;
      }

      SerializationString = FigCSSDeclarationParserNodeCopyValue(ValueAtIndex, &v99);
      if (SerializationString)
      {
        break;
      }

      v67 = v101;
      v68 = CFGetAllocator(a1);
      SerializationString = FigCSSTokenCreateSerializationString(v68, v67, &v95);
      if (SerializationString)
      {
        break;
      }

      SerializationString = _figCSSParser_util_serializeComponentValueNodeArray(a1, v99, &v96);
      if (SerializationString)
      {
        break;
      }

      SerializationString = FigCSSStyleDeclarationSetPropertyInfo(v102, v95, v96, 0);
      if (SerializationString)
      {
        break;
      }

      if (v96)
      {
        CFRelease(v96);
        v96 = 0;
      }

      if (v99)
      {
        CFRelease(v99);
        v99 = 0;
      }

      if (v95)
      {
        CFRelease(v95);
        v95 = 0;
      }

      if (v101)
      {
        CFRelease(v101);
        v101 = 0;
      }

      ++v63;
      if (v40)
      {
        goto LABEL_185;
      }
    }

    v26 = SerializationString;
  }

  v69 = 0;
LABEL_204:
  if (v96)
  {
    CFRelease(v96);
  }

  if (v99)
  {
    CFRelease(v99);
  }

  if (v95)
  {
    CFRelease(v95);
  }

  if (v101)
  {
    CFRelease(v101);
  }

  if (v32)
  {
    CFRelease(v32);
  }

  if (v40)
  {
    CFRelease(v40);
  }

  if (v94)
  {
    CFRelease(v94);
  }

  if (v97)
  {
    CFRelease(v97);
  }

  if (v98)
  {
    CFRelease(v98);
  }

  if (v100)
  {
    CFRelease(v100);
  }

  if (v102)
  {
    CFRelease(v102);
  }

  if (!v26)
  {
    v70 = FigCSSStyleRuleSetSelector(v77, v91);
    if (!v70)
    {
      v70 = FigCSSStyleRuleSetDeclaration(v77, v69);
    }

    v26 = v70;
  }

  if (v69)
  {
    CFRelease(v69);
  }

LABEL_232:
  if (v91)
  {
    CFRelease(v91);
  }

  if (v92)
  {
    CFRelease(v92);
  }

  if (v93)
  {
    CFRelease(v93);
  }

  if (v26)
  {
    goto LABEL_55;
  }

  MutableCopy = 0;
  v28 = v89;
  v27 = v90;
  v89 = 0;
  v90 = 0;
LABEL_57:
  if (v85)
  {
    CFRelease(v85);
  }

  if (v86)
  {
    CFRelease(v86);
  }

  if (v90)
  {
    CFRelease(v90);
  }

  if (v89)
  {
    CFRelease(v89);
  }

  if (v87)
  {
    CFRelease(v87);
  }

  if (v88)
  {
    CFRelease(v88);
  }

  if (MutableCopy)
  {
    CFRelease(MutableCopy);
  }

  if (theArray)
  {
    CFRelease(theArray);
  }

  if (v26)
  {
    goto LABEL_281;
  }

  if (!v27)
  {
LABEL_77:
    if (v28)
    {
      CFArrayAppendValue(Mutable, v28);
      CFRelease(v28);
    }

    goto LABEL_79;
  }

  v29 = FigCSSRuleListAppendRule(v83, v27);
  if (!v29)
  {
    CFRelease(v27);
    goto LABEL_77;
  }

  v26 = v29;
LABEL_281:
  v2 = v76;
LABEL_282:
  if (v83)
  {
    CFRelease(v83);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
    v71 = 0;
    Mutable = 0;
  }

  else
  {
    v71 = 0;
  }

LABEL_255:
  if (cf)
  {
    CFRelease(cf);
  }

  if (value)
  {
    CFRelease(value);
  }

  if (v27)
  {
    CFRelease(v27);
  }

  if (v28)
  {
    CFRelease(v28);
  }

  if (!v26)
  {
    v26 = FigCSSStyleSheetSetRuleList(v80, v71);
    if (!v26)
    {
      *(a1 + 72) = v80;
      v80 = 0;
      goto LABEL_266;
    }
  }

LABEL_290:
  if (v80)
  {
    CFRelease(v80);
  }

LABEL_266:
  if (v71)
  {
    CFRelease(v71);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  if (v79)
  {
    CFRelease(v79);
  }

  if (v26)
  {
LABEL_298:
    *(a1 + 32) = 2;
    return v26;
  }

  if (*(a1 + 81))
  {
    v72 = CFGetAllocator(a1);
    v73 = CFStringCreateWithFormat(v72, 0, @"parser produced styleSheet: %@", *(a1 + 72));
    if (v73)
    {
      CFRelease(v73);
    }
  }

LABEL_276:
  *(a1 + 32) = 1;
  v74 = *(a1 + 72);
  if (v74)
  {
    v74 = CFRetain(v74);
  }

  v26 = 0;
  *v2 = v74;
  return v26;
}

double figCSSParser_reset(uint64_t a1)
{
  v2 = *(a1 + 72);
  if (v2)
  {
    CFRelease(v2);
    *(a1 + 72) = 0;
  }

  v3 = *(a1 + 40);
  if (v3)
  {
    CFRelease(v3);
    *(a1 + 40) = 0;
  }

  *(a1 + 32) = 0;
  result = 0.0;
  *(a1 + 48) = xmmword_196E732D0;
  return result;
}

double figCSSParser_Init(uint64_t a1)
{
  *(a1 + 80) = 0;
  result = 0.0;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  return result;
}

void figCSSParser_Finalize(uint64_t a1)
{
  figCSSParser_reset(a1);
  v2 = *(a1 + 16);
  if (v2)
  {
    CFRelease(v2);
    *(a1 + 16) = 0;
  }

  v3 = *(a1 + 24);
  if (v3)
  {
    CFRelease(v3);
    *(a1 + 24) = 0;
  }
}

uint64_t _figCSSParser_consume_an_at_rule(const void *a1, uint64_t a2, void *a3, CFTypeRef *a4)
{
  v17 = 0;
  cf = 0;
  value = 0;
  if (!a1)
  {
    _figCSSParser_consume_an_at_rule_cold_4(&v20);
LABEL_35:
    v14 = v20;
    goto LABEL_19;
  }

  if (!a3)
  {
    _figCSSParser_consume_an_at_rule_cold_3(&v20);
    goto LABEL_35;
  }

  if (!a4)
  {
    _figCSSParser_consume_an_at_rule_cold_2(&v20);
    goto LABEL_35;
  }

  v8 = CFGetAllocator(a1);
  v20 = 0;
  v19 = 0;
  CurrentInputToken = FigCSSTokenWalkerGetCurrentInputToken(a2, &v20, &v19);
  if (CurrentInputToken)
  {
    goto LABEL_30;
  }

  v10 = v20;
  CurrentInputToken = FigCSSAtRuleParserNodeCreate(v8, &cf);
  if (CurrentInputToken)
  {
    goto LABEL_30;
  }

  CurrentInputToken = FigCSSAtRuleParserNodeSetName(cf, v10);
  if (CurrentInputToken)
  {
    goto LABEL_30;
  }

  v11 = CFGetAllocator(a1);
  Mutable = CFArrayCreateMutable(v11, 0, MEMORY[0x1E695E9C0]);
  if (!Mutable)
  {
    _figCSSParser_consume_an_at_rule_cold_1(&v20);
    goto LABEL_35;
  }

  v13 = Mutable;
  CurrentInputToken = FigCSSAtRuleParserNodeSetPrelude(cf, Mutable);
  if (CurrentInputToken)
  {
    goto LABEL_30;
  }

  CurrentInputToken = FigCSSAtRuleParserNodeSetSimpleBlock(cf, 0);
  if (CurrentInputToken)
  {
    goto LABEL_30;
  }

  v20 = 0;
  v19 = 0;
  FigCSSTokenWalkerConsumeNextInputToken(a2, &v20, &v19);
  if (CurrentInputToken)
  {
    goto LABEL_30;
  }

  if (v19 == 1 || v19 == 14)
  {
    v14 = 0;
    *a3 = 0;
    goto LABEL_19;
  }

  if (v19 != 18)
  {
    FigCSSTokenWalkerReconsumeInputToken(a2);
    if (!CurrentInputToken)
    {
      CurrentInputToken = _figCSSParser_consume_a_component_value(a1, a2, 0, &value);
      if (!CurrentInputToken)
      {
        CFArrayAppendValue(v13, value);
        if (value)
        {
          CFRelease(value);
          v14 = 0;
          value = 0;
        }

        else
        {
          v14 = 0;
        }

        goto LABEL_19;
      }
    }

LABEL_30:
    v14 = CurrentInputToken;
    goto LABEL_19;
  }

  v20 = 0;
  CurrentInputToken = _figCSSParser_consume_a_simple_block(a1, a2, &v20, &v17);
  if (CurrentInputToken)
  {
    goto LABEL_30;
  }

  v14 = FigCSSAtRuleParserNodeSetSimpleBlock(cf, v17);
  if (!v14)
  {
    *a4 = cf;
    cf = 0;
    goto LABEL_21;
  }

LABEL_19:
  if (cf)
  {
    CFRelease(cf);
  }

LABEL_21:
  if (v17)
  {
    CFRelease(v17);
  }

  if (value)
  {
    CFRelease(value);
  }

  return v14;
}

uint64_t _figCSSParser_util_serializeComponentValueNodeArray(const void *a1, const __CFArray *a2, __CFString **a3)
{
  if (!a1)
  {
    _figCSSParser_util_serializeComponentValueNodeArray_cold_5(&cf);
    return cf;
  }

  if (!a2)
  {
    _figCSSParser_util_serializeComponentValueNodeArray_cold_4(&cf);
    return cf;
  }

  if (!a3)
  {
    _figCSSParser_util_serializeComponentValueNodeArray_cold_3(&cf);
    return cf;
  }

  v6 = CFGetAllocator(a1);
  Mutable = CFStringCreateMutable(v6, 0);
  if (CFArrayGetCount(a2) < 1)
  {
    v9 = 0;
LABEL_72:
    v18 = 0;
    *a3 = Mutable;
    goto LABEL_73;
  }

  v8 = 0;
  v9 = 0;
  while (1)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(a2, v8);
    if (!ValueAtIndex)
    {
      break;
    }

    v11 = ValueAtIndex;
    v12 = CFGetTypeID(ValueAtIndex);
    if (v12 != FigCSSParserNodeGetTypeID())
    {
      break;
    }

    if (v9)
    {
      CFRelease(v9);
    }

    v42 = 0;
    v40 = 0;
    cf = 0;
    v38 = 0;
    v39 = 0;
    v36 = 0;
    v37 = 0;
    appendedString = 0;
    v35 = 0;
    v32 = 0;
    v33 = 0;
    v13 = CFGetTypeID(v11);
    if (v13 != FigCSSParserNodeGetTypeID())
    {
      _figCSSParser_util_serializeComponentValueNodeArray_cold_1(&v43);
      v29 = 0;
      v9 = 0;
      v18 = v43;
      goto LABEL_39;
    }

    v14 = CFGetAllocator(a1);
    v9 = CFStringCreateMutable(v14, 0);
    v42 = 0;
    Type = FigCSSComponentValueParserNodeGetType(v11, &v42);
    if (Type)
    {
LABEL_68:
      v18 = Type;
LABEL_69:
      v29 = 0;
      goto LABEL_39;
    }

    switch(v42)
    {
      case 3:
        v43 = 0;
        FigCSSComponentValueParserNodeCopySimpleBlock(v11, &v35);
        if (Type)
        {
          goto LABEL_68;
        }

        Type = FigCSSSimpleBlockParserNodeCopyAssociatedToken(v35, &v39);
        if (Type)
        {
          goto LABEL_68;
        }

        Type = FigCSSTokenGetTokenType(v39, &v43);
        if (Type)
        {
          goto LABEL_68;
        }

        v23 = v43 - 16 > 4 ? 0 : dword_196E76448[v43 - 16];
        v24 = CFGetAllocator(a1);
        FigCSSSimpleTokenCreate(v24, v23, &v38);
        Type = FigCSSSimpleBlockParserNodeCopyValue(v35, &v37);
        if (Type)
        {
          goto LABEL_68;
        }

        v25 = v39;
        v26 = CFGetAllocator(a1);
        Type = FigCSSTokenCreateSerializationString(v26, v25, &appendedString);
        if (Type)
        {
          goto LABEL_68;
        }

        Type = _figCSSParser_util_serializeComponentValueNodeArray(a1, v37, &v33);
        if (Type)
        {
          goto LABEL_68;
        }

        v27 = v38;
        v28 = CFGetAllocator(a1);
        v18 = FigCSSTokenCreateSerializationString(v28, v27, &v32);
        if (v18)
        {
          goto LABEL_69;
        }

        CFStringAppend(v9, appendedString);
        CFStringAppend(v9, v33);
        v22 = v32;
        v21 = v9;
        goto LABEL_37;
      case 2:
        FigCSSComponentValueParserNodeCopyFunctionNode(v11, &v36);
        if (Type)
        {
          goto LABEL_68;
        }

        Type = FigCSSFunctionParserNodeCopyName(v36, &v40);
        if (Type)
        {
          goto LABEL_68;
        }

        Type = FigCSSFunctionParserNodeCopyValue(v36, &v37);
        if (Type)
        {
          goto LABEL_68;
        }

        v19 = v40;
        v20 = CFGetAllocator(a1);
        Type = FigCSSTokenCreateSerializationString(v20, v19, &appendedString);
        if (Type)
        {
          goto LABEL_68;
        }

        v18 = _figCSSParser_util_serializeComponentValueNodeArray(a1, v37, &v33);
        if (v18)
        {
          goto LABEL_69;
        }

        CFStringAppend(v9, appendedString);
        CFStringAppend(v9, v33);
        v21 = v9;
        v22 = @"");
LABEL_37:
        CFStringAppend(v21, v22);
        goto LABEL_38;
      case 1:
        Type = FigCSSComponentValueParserNodeCopyPreservedToken(v11, &cf);
        if (Type)
        {
          goto LABEL_68;
        }

        v16 = cf;
        v17 = CFGetAllocator(a1);
        Type = FigCSSTokenCreateSerializationString(v17, v16, &appendedString);
        if (Type)
        {
          goto LABEL_68;
        }

        if (!appendedString)
        {
          v30 = 0;
          v18 = 0;
          goto LABEL_42;
        }

        CFStringAppend(v9, appendedString);
        break;
    }

    v18 = 0;
LABEL_38:
    v29 = v9;
    v9 = 0;
LABEL_39:
    if (appendedString)
    {
      CFRelease(appendedString);
    }

    v30 = v9;
    v9 = v29;
LABEL_42:
    if (v33)
    {
      CFRelease(v33);
    }

    if (cf)
    {
      CFRelease(cf);
    }

    if (v30)
    {
      CFRelease(v30);
    }

    if (v36)
    {
      CFRelease(v36);
    }

    if (v40)
    {
      CFRelease(v40);
    }

    if (v35)
    {
      CFRelease(v35);
    }

    if (v39)
    {
      CFRelease(v39);
    }

    if (v38)
    {
      CFRelease(v38);
    }

    if (v32)
    {
      CFRelease(v32);
    }

    if (v37)
    {
      CFRelease(v37);
    }

    if (v18)
    {
      goto LABEL_77;
    }

    if (v9)
    {
      CFStringAppend(Mutable, v9);
    }

    if (++v8 >= CFArrayGetCount(a2))
    {
      goto LABEL_72;
    }
  }

  _figCSSParser_util_serializeComponentValueNodeArray_cold_2(&cf);
  v18 = cf;
LABEL_77:
  if (Mutable)
  {
    CFRelease(Mutable);
  }

LABEL_73:
  if (v9)
  {
    CFRelease(v9);
  }

  return v18;
}

uint64_t _figCSSParser_util_convertComponentValueArrayToTokenArray(const void *a1, const __CFArray *a2, __CFArray **a3)
{
  v21 = 0;
  value = 0;
  cf = 0;
  v20 = 0;
  theArray = 0;
  v18 = 0;
  if (!a1)
  {
    _figCSSParser_util_convertComponentValueArrayToTokenArray_cold_5(&v23);
LABEL_58:
    Mutable = 0;
LABEL_54:
    v12 = v23;
    goto LABEL_37;
  }

  if (!a2)
  {
    _figCSSParser_util_convertComponentValueArrayToTokenArray_cold_4(&v23);
    goto LABEL_58;
  }

  if (!a3)
  {
    _figCSSParser_util_convertComponentValueArrayToTokenArray_cold_3(&v23);
    goto LABEL_58;
  }

  v6 = CFGetAllocator(a1);
  Mutable = CFArrayCreateMutable(v6, 0, MEMORY[0x1E695E9C0]);
  if (!Mutable)
  {
    _figCSSParser_util_convertComponentValueArrayToTokenArray_cold_2(&v23);
    goto LABEL_54;
  }

  if (CFArrayGetCount(a2) >= 1)
  {
    v8 = 0;
    while (1)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(a2, v8);
      v16 = 0;
      NodeType = FigCSSParserNodeGetNodeType(ValueAtIndex, &v16 + 1);
      if (NodeType)
      {
LABEL_52:
        v12 = NodeType;
        goto LABEL_37;
      }

      if (HIDWORD(v16) != 4)
      {
        _figCSSParser_util_convertComponentValueArrayToTokenArray_cold_1(&v23);
        goto LABEL_54;
      }

      Type = FigCSSComponentValueParserNodeGetType(ValueAtIndex, &v16);
      if (v16 == 2)
      {
        FigCSSComponentValueParserNodeCopyFunctionNode(ValueAtIndex, &v20);
        if (NodeType)
        {
          goto LABEL_52;
        }

        NodeType = FigCSSFunctionParserNodeCopyName(v20, &cf);
        if (NodeType)
        {
          goto LABEL_52;
        }

        CFArrayAppendValue(Mutable, cf);
        NodeType = FigCSSFunctionParserNodeCopyValue(v20, &v18);
        if (NodeType)
        {
          goto LABEL_52;
        }

        NodeType = _figCSSParser_util_convertComponentValueArrayToTokenArray(a1, v18, &theArray);
        if (NodeType)
        {
          goto LABEL_52;
        }

        v13 = theArray;
        if (theArray)
        {
          v24.length = CFArrayGetCount(theArray);
          v24.location = 0;
          CFArrayAppendArray(Mutable, v13, v24);
        }

        v14 = CFGetAllocator(a1);
        NodeType = FigCSSSimpleTokenCreate(v14, 17, &v21);
        if (NodeType)
        {
          goto LABEL_52;
        }

        CFArrayAppendValue(Mutable, v21);
        if (cf)
        {
          CFRelease(cf);
          cf = 0;
        }

        if (v21)
        {
          CFRelease(v21);
          v21 = 0;
        }

        if (v20)
        {
          CFRelease(v20);
          v20 = 0;
        }

        if (v18)
        {
          CFRelease(v18);
          v18 = 0;
        }

        if (!theArray)
        {
LABEL_32:
          v12 = 0;
          goto LABEL_33;
        }

        CFRelease(theArray);
        v12 = 0;
        theArray = 0;
      }

      else
      {
        v12 = Type;
        if (v16 == 1)
        {
          NodeType = FigCSSComponentValueParserNodeCopyPreservedToken(ValueAtIndex, &value);
          if (NodeType)
          {
            goto LABEL_52;
          }

          if (!value)
          {
            goto LABEL_32;
          }

          CFArrayAppendValue(Mutable, value);
          if (!value)
          {
            goto LABEL_32;
          }

          CFRelease(value);
          v12 = 0;
          value = 0;
        }
      }

LABEL_33:
      if (++v8 >= CFArrayGetCount(a2))
      {
        goto LABEL_36;
      }
    }
  }

  v12 = 0;
LABEL_36:
  *a3 = Mutable;
  Mutable = 0;
LABEL_37:
  if (value)
  {
    CFRelease(value);
    value = 0;
  }

  if (v21)
  {
    CFRelease(v21);
    v21 = 0;
  }

  if (v20)
  {
    CFRelease(v20);
    v20 = 0;
  }

  if (cf)
  {
    CFRelease(cf);
    cf = 0;
  }

  if (v18)
  {
    CFRelease(v18);
    v18 = 0;
  }

  if (theArray)
  {
    CFRelease(theArray);
    theArray = 0;
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  return v12;
}

void FigVideoRenderPipelineCreateWithFigImageQueueArray(const __CFAllocator *Count, const void *a2, const void *a3, const void *a4, int a5, CFArrayRef theArray, const __CFArray *a7, const __CFDictionary *a8, void *a9)
{
  v120 = *MEMORY[0x1E69E9840];
  if (theArray)
  {
    v13 = CFArrayGetCount(theArray);
  }

  else
  {
    v13 = 0;
  }

  v103 = 0;
  cf = 0;
  v101 = 0;
  v102 = 0;
  value = 0;
  FigNote_AllowInternalDefaultLogs();
  fig_note_initialize_category_with_default_work_cf();
  fig_note_initialize_category_with_default_work_cf();
  if (a9)
  {
    if (v13 > 0)
    {
      v119.value = 0;
      FigRenderPipelineGetClassID();
      if (CMDerivedObjectCreate())
      {
        v41 = 0;
        v33 = 0;
      }

      else
      {
        v14 = v119.value;
        DerivedStorage = CMBaseObjectGetDerivedStorage();
        *(DerivedStorage + 144) = 1;
        v16 = FigSimpleMutexCreate();
        *(DerivedStorage + 80) = v16;
        if (v16)
        {
          *(DerivedStorage + 208) = 0;
          if (a8 && CFDictionaryGetValueIfPresent(a8, @"LoggingID", &value))
          {
            CFStringGetCString(value, (DerivedStorage + 208), 32, 0x600u);
          }

          *(DerivedStorage + 88) = 1;
          if (a7)
          {
            v17 = *MEMORY[0x1E695E480];
            MutableCopy = CFArrayCreateMutableCopy(*MEMORY[0x1E695E480], 0, a7);
            goto LABEL_22;
          }

          Mutable = CFArrayCreateMutable(Count, v13, MEMORY[0x1E695E9C0]);
          if (Mutable)
          {
            MutableCopy = Mutable;
            v23 = *MEMORY[0x1E695E738];
            do
            {
              CFArrayAppendValue(MutableCopy, v23);
              --v13;
            }

            while (v13);
            v17 = *MEMORY[0x1E695E480];
LABEL_22:
            allocator = v17;
            Copy = CFArrayCreateCopy(v17, theArray);
            *(DerivedStorage + 56) = Copy;
            if (!Copy)
            {
              FigVideoRenderPipelineCreateWithFigImageQueueArray_cold_8(&v119);
              v41 = 0;
              v26 = 0;
              v33 = 0;
              goto LABEL_140;
            }

            if (MutableCopy)
            {
              v25 = CFRetain(MutableCopy);
            }

            else
            {
              v25 = 0;
            }

            *(DerivedStorage + 64) = v25;
            if (value)
            {
              v26 = CFDictionaryCreateMutable(v17, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
              FigCFDictionarySetValue();
            }

            else
            {
              v26 = 0;
            }

            if (figVideoRenderPipelineCopyFigImageQueueAndOptionsArrayGroupedByVideoLayerID(v14, &v103, &v102, &v101))
            {
              v41 = 0;
              v33 = 0;
              goto LABEL_140;
            }

            theArrayb = v26;
            v88 = MutableCopy;
            v27 = v101;
            v83 = DerivedStorage + 208;
            if (v101)
            {
              v28 = CFArrayGetCount(v101);
            }

            else
            {
              v28 = 0;
            }

            v29 = v103;
            if (v103)
            {
              v30 = CFArrayGetCount(v103);
            }

            else
            {
              v30 = 0;
            }

            if (v28 == v30)
            {
              v31 = v102;
              if (v102)
              {
                v32 = CFArrayGetCount(v102);
              }

              else
              {
                v32 = 0;
              }

              if (v28 == v32)
              {
                v90 = DerivedStorage;
                v33 = CFArrayCreateMutable(Count, v28, MEMORY[0x1E695E9C0]);
                if (v33)
                {
                  if (v28 >= 1)
                  {
                    v34 = 0;
                    while (1)
                    {
                      ValueAtIndex = CFArrayGetValueAtIndex(v29, v34);
                      v36 = CFArrayGetValueAtIndex(v31, v34);
                      FigImageQueueCreateForCacheAndFanOutWithOptions(Count, ValueAtIndex, v36, theArrayb, &cf);
                      if (v37)
                      {
                        break;
                      }

                      CFArrayAppendValue(v33, cf);
                      if (cf)
                      {
                        CFRelease(cf);
                        cf = 0;
                      }

                      if (v28 == ++v34)
                      {
                        goto LABEL_48;
                      }
                    }

                    v41 = 0;
                    goto LABEL_159;
                  }

LABEL_48:
                  v90[5] = v33;
                  v90[6] = v27;
                  v101 = 0;
                  v97 = 0u;
                  v98 = 0u;
                  v99 = 0;
                  v38 = MEMORY[0x1E695E4D0];
                  if (a8)
                  {
                    v39 = a3;
                    v40 = allocator;
                    if (CFDictionaryGetValue(a8, @"ShouldRotateAndScale") == *v38)
                    {
                      v42 = FigTransformUtilityCreate(Count, a3);
                      v90[17] = v42;
                      *&v97 = 0;
                      *(&v97 + 1) = CFRetain(v42);
                      v41 = &v97;
                      *(&v98 + 1) = FigTransformUtilityRelease;
                      v99 = FigTransformUtilityGenerateReplacementImageBufferAsync;
                    }

                    else
                    {
                      v41 = 0;
                    }
                  }

                  else
                  {
                    v41 = 0;
                    v39 = a3;
                    v40 = allocator;
                  }

                  memset(&v119, 0, sizeof(v119));
                  CMTimeMake(&v119, 3, 30);
                  memset(&v113, 0, sizeof(v113));
                  CMTimeMake(&v113, 5, 30);
                  v112 = 0;
                  v43 = CMBaseObjectGetDerivedStorage();
                  v110 = 0;
                  v111 = 0;
                  v109 = 0;
                  v108 = 0;
                  v107 = 0;
                  if (a8)
                  {
                    v87 = CFDictionaryGetValue(a8, @"FormatDescription");
                    FigCFDictionaryGetCMTimeIfPresent();
                    FigCFDictionaryGetCMTimeIfPresent();
                    v44 = CFDictionaryGetValue(a8, @"SharePixelBufferPool");
                    v85 = CFDictionaryGetValue(a8, @"AllowClientProcessDecode");
                    v86 = CFDictionaryGetValue(a8, @"LoggingID");
                    FigCFDictionaryGetBooleanIfPresent();
                    if (FigCFDictionaryGetBooleanIfPresent())
                    {
                      HIBYTE(v112) = v112 == 0;
                    }

                    FigCFDictionaryGetBooleanIfPresent();
                    FigCFDictionaryGetBooleanIfPresent();
                    FigCFDictionaryGetBooleanIfPresent();
                    FigCFDictionaryGetInt32IfPresent();
                    v84 = FigCFDictionaryGetValue();
                    FigCFDictionaryGetBooleanIfPresent();
                    FigCFDictionaryGetBooleanIfPresent();
                    FigCFDictionaryGetBooleanIfPresent();
                  }

                  else
                  {
                    v84 = 0;
                    v85 = 0;
                    v44 = 0;
                    v86 = 0;
                    v87 = 0;
                  }

                  v45 = *(v43 + 40);
                  if (v45)
                  {
                    v89 = CFRetain(v45);
                  }

                  else
                  {
                    v89 = 0;
                  }

                  v46 = *(v43 + 48);
                  if (v46)
                  {
                    v47 = CFRetain(v46);
                  }

                  else
                  {
                    v47 = 0;
                  }

                  gFigBufferQueueCallbacksThatIgnoreCatchupFrames.version = 1;
                  gFigBufferQueueCallbacksThatIgnoreCatchupFrames.refcon = 0;
                  gFigBufferQueueCallbacksThatIgnoreCatchupFrames.getDecodeTimeStamp = vsbufGetDecodeTimeStamp;
                  gFigBufferQueueCallbacksThatIgnoreCatchupFrames.getPresentationTimeStamp = vsbufGetPresentationTimeStamp;
                  gFigBufferQueueCallbacksThatIgnoreCatchupFrames.getDuration = vsbufGetDuration;
                  gFigBufferQueueCallbacksThatIgnoreCatchupFrames.isDataReady = vsbufDataIsReady;
                  gFigBufferQueueCallbacksThatIgnoreCatchupFrames.compare = 0;
                  v48 = *MEMORY[0x1E6960600];
                  gFigBufferQueueCallbacksThatIgnoreCatchupFrames.dataBecameReadyNotification = *MEMORY[0x1E6960600];
                  gFigBufferQueueCallbacksThatIgnoreCatchupFrames.getSize = vsbufGetSampleSize;
                  Asynchronous = CMBufferQueueCreate(v40, 0, &gFigBufferQueueCallbacksThatIgnoreCatchupFrames, (v43 + 8));
                  if (Asynchronous || HIBYTE(v107) && ((gFigBufferQueueCallbacksThatIgnoreCatchupFrames.version = 1, gFigBufferQueueCallbacksThatIgnoreCatchupFrames.refcon = 0, gFigBufferQueueCallbacksThatIgnoreCatchupFrames.getDecodeTimeStamp = vsbufGetDecodeTimeStamp, gFigBufferQueueCallbacksThatIgnoreCatchupFrames.getPresentationTimeStamp = vsbufGetPresentationTimeStamp, gFigBufferQueueCallbacksThatIgnoreCatchupFrames.getDuration = vsbufGetDuration, gFigBufferQueueCallbacksThatIgnoreCatchupFrames.isDataReady = vsbufDataIsReady, gFigBufferQueueCallbacksThatIgnoreCatchupFrames.compare = 0, gFigBufferQueueCallbacksThatIgnoreCatchupFrames.dataBecameReadyNotification = v48, gFigBufferQueueCallbacksThatIgnoreCatchupFrames.getSize = vsbufGetSampleSize, (Asynchronous = CMBufferQueueCreate(v40, 0, &gFigBufferQueueCallbacksThatIgnoreCatchupFrames, (v43 + 24))) != 0) || (v50 = *(v43 + 8), v51 = *(v43 + 24), v106 = v113, type = v119, (Asynchronous = FigSampleAttachmentCollectorCreateAsynchronous(v40, 0, v50, 0, v51, &v106, &type, 0, (v43 + 32))) != 0)))
                  {
                    v74 = Asynchronous;
                    v62 = 0;
                    goto LABEL_177;
                  }

                  *(v43 + 112) = v39;
                  if (v39)
                  {
                    CFRetain(v39);
                  }

                  *(v43 + 120) = a4;
                  if (a4)
                  {
                    CFRetain(a4);
                  }

                  figVideoRenderPipelineCopyMaxFanOutDisplayLayerSize(v14, &v111);
                  for (i = 0; ; ++i)
                  {
                    v53 = *(v43 + 40);
                    if (v53)
                    {
                      v53 = CFArrayGetCount(v53);
                    }

                    if (i >= v53)
                    {
                      break;
                    }

                    CFArrayGetValueAtIndex(*(v43 + 40), i);
                    CMNotificationCenterGetDefaultLocalCenter();
                    FigNotificationCenterAddWeakListeners();
                  }

                  v54 = dispatch_queue_create("com.apple.coremedia.svrp.notificationQueue", 0);
                  *(v43 + 200) = v54;
                  if (v54)
                  {
                    v55 = FigSimpleMutexCreate();
                    *(v43 + 160) = v55;
                    if (v55)
                    {
                      v56 = CFGetAllocator(v14);
                      v57 = CFArrayCreateMutable(v56, 0, MEMORY[0x1E695E9C0]);
                      *(v43 + 192) = v57;
                      if (v57)
                      {
                        *(v43 + 168) = 0;
                        *(v43 + 184) = 0;
                        figVideoRenderPipelineCopyVideoImageQueueArray(v14, &v110, 0);
                        for (j = 0; ; ++j)
                        {
                          v59 = v110;
                          if (v110)
                          {
                            v59 = CFArrayGetCount(v110);
                          }

                          if (j >= v59)
                          {
                            break;
                          }

                          v60 = CFArrayGetValueAtIndex(v110, j);
                          CMNotificationCenterGetDefaultLocalCenter();
                          FigNotificationCenterAddWeakListeners();
                          if (!j)
                          {
                            videopipelineAddListenersToFirstImageQueue(v14, v60);
                          }
                        }

                        v61 = CFDictionaryCreateMutable(v40, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
                        v62 = v61;
                        if (v61)
                        {
                          if (v44)
                          {
                            CFDictionaryAddValue(v61, @"SharePixelBufferPool", v44);
                          }

                          v63 = MEMORY[0x1E695E4D0];
                          if (v85)
                          {
                            CFDictionaryAddValue(v62, @"AllowClientProcessDecode", v85);
                          }

                          if (HIBYTE(v112))
                          {
                            CFDictionarySetValue(v62, @"RealTime", *MEMORY[0x1E695E4C0]);
                          }

                          if (HIBYTE(v109))
                          {
                            CFDictionarySetValue(v62, @"MaximizePowerEfficiency", *v63);
                          }

                          if (v109)
                          {
                            CFDictionarySetValue(v62, @"InhibitPixelFormatConversion", *v63);
                          }

                          if (HIBYTE(v108))
                          {
                            CFDictionarySetValue(v62, @"InhibitCompressedBufferUse", *v63);
                          }

                          if (*(v43 + 4))
                          {
                            FigCFDictionarySetInt32();
                          }

                          if (v84)
                          {
                            CFDictionarySetValue(v62, @"ClientIdentityTokenHolder", v84);
                            FigCFDictionarySetBoolean();
                          }

                          if (v86)
                          {
                            CFDictionarySetValue(v62, @"LoggingIdentifier", v86);
                          }

                          if (v108)
                          {
                            CFDictionarySetValue(v62, @"DisableAsyncDecompression", *v63);
                          }

                          videopipelineUpdateVideoPlaybackStateForClient(v14);
                          v64 = 24;
                          if (!HIBYTE(v107))
                          {
                            v64 = 8;
                          }

                          v65 = *(v43 + v64);
                          v66 = *(v43 + 112);
                          v67 = *(v43 + 120);
                          v68 = (v43 + 16);
                          v106 = v113;
                          type = v119;
                          v69 = VMC2CreateWithQueues2(allocator, v87, a2, v66, v67, v65, v41, v89, v47, &v106, &type, 0, 0, v62, (v43 + 16));
                          if (!v69)
                          {
                            started = FigStartForwardingMediaServicesProcessDeathNotification();
                            MutableCopy = v88;
                            if (started)
                            {
                              v74 = started;
                              v41 = 0;
                            }

                            else
                            {
                              if (v111)
                              {
                                VMC2SetProperty(*v68, @"DisplayLayerSize", v111);
                              }

                              CMNotificationCenterGetDefaultLocalCenter();
                              FigNotificationCenterAddWeakListeners();
                              videopipelineConfigureAV1FilmGrainModeAsAppropriateForImageQueues(v14);
                              VMC2Go(*v68);
                              if (HIBYTE(v107))
                              {
                                v71 = *(v43 + 32);
                                v72 = *(*(CMBaseObjectGetVTable() + 16) + 24);
                                if (v72)
                                {
                                  v73 = v89;
                                  v72(v71);
                                  v41 = 0;
                                  v74 = 0;
LABEL_119:
                                  if (v111)
                                  {
                                    CFRelease(v111);
                                  }

                                  if (v62)
                                  {
                                    CFRelease(v62);
                                  }

                                  if (v73)
                                  {
                                    CFRelease(v73);
                                  }

                                  if (v47)
                                  {
                                    CFRelease(v47);
                                  }

                                  if (v110)
                                  {
                                    CFRelease(v110);
                                  }

                                  if (!v74)
                                  {
                                    v75 = FigCFCopyCompactDescription();
                                    if (dword_1EAF16EF8)
                                    {
                                      LODWORD(v106.value) = 0;
                                      LOBYTE(type.value) = 0;
                                      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
                                      v77 = v106.value;
                                      value_low = LOBYTE(type.value);
                                      if (os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, type.value))
                                      {
                                        v79 = v77;
                                      }

                                      else
                                      {
                                        v79 = v77 & 0xFFFFFFFE;
                                      }

                                      if (v79)
                                      {
                                        v80 = v90[2];
                                        LODWORD(v113.value) = 136316162;
                                        *(&v113.value + 4) = "FigVideoRenderPipelineCreateWithFigImageQueueArray";
                                        LOWORD(v113.flags) = 2048;
                                        *(&v113.flags + 2) = v14;
                                        HIWORD(v113.epoch) = 2082;
                                        v114 = v83;
                                        v115 = 2114;
                                        v116 = v80;
                                        v117 = 2114;
                                        v118 = v75;
                                        LODWORD(v82) = 52;
                                        _os_log_send_and_compose_impl(v79, 0, &v119, 128, &dword_1962D5000, os_log_and_send_and_compose_flags_and_os_log_type, value_low, "<<<< VRP >>>> %s: Created video render pipeline (%p) %{public}s associated with VMC %{public}@ and image queues %{public}@", &v113, v82);
                                      }

                                      fig_log_call_emit_and_clean_up_after_send_and_compose();
                                    }

                                    v26 = theArrayb;
                                    if (v75)
                                    {
                                      CFRelease(v75);
                                    }

                                    v33 = 0;
                                    *a9 = v14;
                                    goto LABEL_140;
                                  }

                                  v33 = 0;
                                  goto LABEL_160;
                                }
                              }

                              v41 = 0;
                              v74 = 0;
                            }

                            v73 = v89;
                            goto LABEL_119;
                          }

                          v74 = v69;
                          v41 = 0;
LABEL_177:
                          MutableCopy = v88;
                          v73 = v89;
                          goto LABEL_119;
                        }

                        FigVideoRenderPipelineCreateWithFigImageQueueArray_cold_3(&v106);
LABEL_176:
                        v74 = v106.value;
                        goto LABEL_177;
                      }

                      FigVideoRenderPipelineCreateWithFigImageQueueArray_cold_4(&v106);
                    }

                    else
                    {
                      FigVideoRenderPipelineCreateWithFigImageQueueArray_cold_5(&v106);
                    }
                  }

                  else
                  {
                    FigVideoRenderPipelineCreateWithFigImageQueueArray_cold_6(&v106);
                  }

                  v62 = 0;
                  goto LABEL_176;
                }

                FigVideoRenderPipelineCreateWithFigImageQueueArray_cold_7(&v119);
                v41 = 0;
LABEL_159:
                MutableCopy = v88;
LABEL_160:
                v26 = theArrayb;
LABEL_140:
                if (MutableCopy)
                {
                  CFRelease(MutableCopy);
                }

                if (v26)
                {
                  CFRelease(v26);
                }

                goto LABEL_144;
              }

              FigVideoRenderPipelineCreateWithFigImageQueueArray_cold_2(&v119);
            }

            else
            {
              FigVideoRenderPipelineCreateWithFigImageQueueArray_cold_1(&v119);
            }

            v41 = 0;
            v33 = 0;
            goto LABEL_159;
          }

          FigVideoRenderPipelineCreateWithFigImageQueueArray_cold_9(&v119);
          v41 = 0;
          v33 = 0;
        }

        else
        {
          v41 = 0;
          v33 = 0;
        }
      }

LABEL_144:
      if (cf)
      {
        CFRelease(cf);
      }

      if (v103)
      {
        CFRelease(v103);
      }

      if (v102)
      {
        CFRelease(v102);
      }

      if (v101)
      {
        CFRelease(v101);
      }

      if (v33)
      {
        CFRelease(v33);
      }

      if (v41)
      {
        v81 = *(v41 + 3);
        if (v81)
        {
          v81(*(v41 + 1));
        }
      }

      return;
    }

    v19 = qword_1EAF16EF0;
    v20 = v9;
    v21 = 3490;
  }

  else
  {
    v19 = qword_1EAF16EF0;
    v20 = v9;
    v21 = 3488;
  }

  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v19, 4294954444, "<<<< VRP >>>>", v21, v20);
}

uint64_t figVideoRenderPipelineCopyFigImageQueueAndOptionsArrayGroupedByVideoLayerID(uint64_t a1, __CFArray **a2, const __CFArray **a3, CFMutableArrayRef *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v9 = *(DerivedStorage + 56);
  if (!v9)
  {
    figVideoRenderPipelineCopyFigImageQueueAndOptionsArrayGroupedByVideoLayerID_cold_12(&v65);
    return v65;
  }

  if (!*(DerivedStorage + 64))
  {
    figVideoRenderPipelineCopyFigImageQueueAndOptionsArrayGroupedByVideoLayerID_cold_11(&v65);
    return v65;
  }

  Count = CFArrayGetCount(v9);
  if (Count != CFArrayGetCount(*(DerivedStorage + 64)))
  {
    figVideoRenderPipelineCopyFigImageQueueAndOptionsArrayGroupedByVideoLayerID_cold_1(&v65);
    return v65;
  }

  v11 = *MEMORY[0x1E695E480];
  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  if (!Mutable)
  {
    figVideoRenderPipelineCopyFigImageQueueAndOptionsArrayGroupedByVideoLayerID_cold_10(&v65);
    return v65;
  }

  v13 = Mutable;
  v14 = CFArrayCreateMutable(v11, 0, MEMORY[0x1E695E9C0]);
  if (!v14)
  {
    figVideoRenderPipelineCopyFigImageQueueAndOptionsArrayGroupedByVideoLayerID_cold_9(v13, &v65);
    return v65;
  }

  v15 = v14;
  v62 = v13;
  v58 = a2;
  v59 = a3;
  v60 = a4;
  if (Count < 1)
  {
LABEL_24:
    v63 = Count;
    v22 = MEMORY[0x1E695E9C0];
    v23 = CFArrayCreateMutable(v11, 0, MEMORY[0x1E695E9C0]);
    v54 = CFArrayCreateMutable(v11, 0, v22);
    v24 = CFArrayCreateMutable(v11, 0, v22);
    v55 = v24;
    if (v23 && v54 && v24)
    {
      v25 = CFArrayGetCount(v15);
      v64 = v55;
      if (v25 != 1)
      {
        v34 = v25;
        theArray = v23;
        if (v25 < 1)
        {
LABEL_44:
          v13 = v62;
          v23 = theArray;
          if (v63 < 1)
          {
            goto LABEL_50;
          }

          v43 = 0;
          while (1)
          {
            ValueAtIndex = CFArrayGetValueAtIndex(*(DerivedStorage + 56), v43);
            v45 = CFArrayGetValueAtIndex(*(DerivedStorage + 64), v43);
            v46 = CFArrayGetValueAtIndex(v62, v43);
            v66.location = 0;
            v66.length = v34;
            FirstIndexOfValue = CFArrayGetFirstIndexOfValue(v15, v66, v46);
            if (FirstIndexOfValue == -1)
            {
              break;
            }

            v48 = FirstIndexOfValue;
            v49 = CFArrayGetValueAtIndex(theArray, FirstIndexOfValue);
            CFArrayAppendValue(v49, ValueAtIndex);
            v50 = CFArrayGetValueAtIndex(v54, v48);
            CFArrayAppendValue(v50, v45);
            if (v63 == ++v43)
            {
              goto LABEL_50;
            }
          }

          figVideoRenderPipelineCopyFigImageQueueAndOptionsArrayGroupedByVideoLayerID_cold_3(&v65);
          v56 = 0;
          v53 = theArray;
          v33 = 0;
          v32 = v65;
        }

        else
        {
          v35 = 0;
          v36 = MEMORY[0x1E695E9C0];
          while (1)
          {
            v56 = CFArrayCreateMutable(v11, 0, v36);
            v37 = CFArrayCreateMutable(v11, 0, v36);
            v33 = v37;
            if (v56)
            {
              v38 = v37 == 0;
            }

            else
            {
              v38 = 1;
            }

            if (v38)
            {
              figVideoRenderPipelineCopyFigImageQueueAndOptionsArrayGroupedByVideoLayerID_cold_6(&v65);
              goto LABEL_66;
            }

            CFArrayAppendValue(theArray, v56);
            CFArrayAppendValue(v54, v33);
            CFRelease(v56);
            CFRelease(v33);
            v39 = CFArrayGetValueAtIndex(v15, v35);
            if (!v39 || (v40 = v39, v41 = CFGetTypeID(v39), v41 != CFNumberGetTypeID()))
            {
              figVideoRenderPipelineCopyFigImageQueueAndOptionsArrayGroupedByVideoLayerID_cold_5(&v65);
              v56 = 0;
              v33 = 0;
              goto LABEL_66;
            }

            v42 = CFDictionaryCreateMutable(v11, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
            v33 = v42;
            if (!v42)
            {
              break;
            }

            CFDictionarySetValue(v42, @"DemuxLayerID", v40);
            CFArrayAppendValue(v55, v33);
            CFRelease(v33);
            if (v34 == ++v35)
            {
              goto LABEL_44;
            }
          }

          figVideoRenderPipelineCopyFigImageQueueAndOptionsArrayGroupedByVideoLayerID_cold_4(&v65);
          v56 = 0;
LABEL_66:
          v32 = v65;
          v53 = theArray;
          v13 = v62;
        }

        v55 = v64;
        goto LABEL_51;
      }

      CFArrayAppendValue(v23, *(DerivedStorage + 56));
      CFArrayAppendValue(v54, *(DerivedStorage + 64));
      v26 = CFArrayGetValueAtIndex(v15, 0);
      if (!v26 || (v27 = v26, v28 = CFGetTypeID(v26), v28 != CFNumberGetTypeID()))
      {
        CFArrayAppendValue(v55, *MEMORY[0x1E695E738]);
        goto LABEL_50;
      }

      v29 = CFDictionaryCreateMutable(v11, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      if (v29)
      {
        v30 = v29;
        CFDictionarySetValue(v29, @"DemuxLayerID", v27);
        CFArrayAppendValue(v55, v30);
        CFRelease(v30);
LABEL_50:
        v32 = 0;
        v56 = 0;
        v51 = v23;
        v33 = 0;
        *v58 = v51;
        *v59 = v54;
        *v60 = v64;
        v53 = 0;
        v54 = 0;
        v55 = 0;
        goto LABEL_51;
      }

      figVideoRenderPipelineCopyFigImageQueueAndOptionsArrayGroupedByVideoLayerID_cold_7(&v65);
    }

    else
    {
      figVideoRenderPipelineCopyFigImageQueueAndOptionsArrayGroupedByVideoLayerID_cold_8(&v65);
    }

    v56 = 0;
    v53 = v23;
LABEL_68:
    v33 = 0;
    v32 = v65;
    goto LABEL_51;
  }

  v16 = 0;
  v17 = 0;
  v18 = 0;
  v19 = *MEMORY[0x1E695E738];
  while (1)
  {
    v20 = CFArrayGetValueAtIndex(*(DerivedStorage + 64), v16);
    if (v20 == v19)
    {
      if (v18)
      {
        figVideoRenderPipelineCopyFigImageQueueAndOptionsArrayGroupedByVideoLayerID_cold_2(&v65);
        v53 = 0;
        v54 = 0;
        v55 = 0;
        v56 = 0;
        goto LABEL_68;
      }

      goto LABEL_20;
    }

    if (!v20 || (v21 = CFGetTypeID(v20), v38 = v21 == CFDictionaryGetTypeID(), v13 = v62, !v38))
    {
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF16EF0, 4294954444, "<<<< VRP >>>>", 1321, v4);
      goto LABEL_33;
    }

    v65 = 0;
    if (!FigCFDictionaryGetInt32IfPresent())
    {
      break;
    }

    if (v17)
    {
      v57 = 1303;
      goto LABEL_71;
    }

    FigCFArrayAppendInt32();
    if (!FigCFArrayContainsInt32())
    {
      FigCFArrayAppendInt32();
    }

    v17 = 0;
    v18 = 1;
LABEL_23:
    if (Count == ++v16)
    {
      goto LABEL_24;
    }
  }

  if (!v18)
  {
LABEL_20:
    CFArrayAppendValue(v13, v19);
    if (!FigCFArrayContainsValue())
    {
      CFArrayAppendValue(v15, v19);
    }

    v18 = 0;
    v17 = 1;
    goto LABEL_23;
  }

  v57 = 1312;
LABEL_71:
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF16EF0, 4294954444, "<<<< VRP >>>>", v57, v4);
LABEL_33:
  v32 = v31;
  v53 = 0;
  v54 = 0;
  v55 = 0;
  v56 = 0;
  v33 = 0;
LABEL_51:
  CFRelease(v13);
  CFRelease(v15);
  if (v53)
  {
    CFRelease(v53);
  }

  if (v54)
  {
    CFRelease(v54);
  }

  if (v55)
  {
    CFRelease(v55);
  }

  if (v56)
  {
    CFRelease(v56);
  }

  if (v33)
  {
    CFRelease(v33);
  }

  return v32;
}

__CFString *figVideoRenderPipelineCopyDebugDescription(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  CFStringAppendFormat(Mutable, 0, @"<FigVideoRenderPipeline %p: ", a1);
  CFStringAppendFormat(Mutable, 0, @"videoCompressedFrameQueue %@, videoMediaConverter %@, videoImageQueueArray %@, videoImageQueueOptionsArray %@, destinationPixelBufferAttributes %@, pixelTransferProperties %@, timebase %@", DerivedStorage[1], DerivedStorage[2], DerivedStorage[7], DerivedStorage[8], DerivedStorage[14], DerivedStorage[15], DerivedStorage[16]);
  CFStringAppendFormat(Mutable, 0, @">");
  return Mutable;
}

uint64_t figVideoRenderPipelineCopyVideoImageQueueArray(uint64_t a1, void *a2, void *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  if (a2)
  {
    v6 = *(DerivedStorage + 56);
    if (v6)
    {
      v6 = CFRetain(v6);
    }

    *a2 = v6;
  }

  if (a3)
  {
    v7 = *(DerivedStorage + 64);
    if (v7)
    {
      v7 = CFRetain(v7);
    }

    *a3 = v7;
  }

  return FigSimpleMutexUnlock();
}

void videopipelineRemoveListenersOnFirstImageQueue(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 72))
  {
    v2 = DerivedStorage;
    CMNotificationCenterGetDefaultLocalCenter();
    FigNotificationCenterRemoveWeakListeners();
    v3 = *(v2 + 72);
    if (v3)
    {
      CFRelease(v3);
      *(v2 + 72) = 0;
    }
  }
}

uint64_t videopipelineDecodeError(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  CMNotificationCenterGetDefaultLocalCenter();

  return CMNotificationCenterPostNotification();
}

uint64_t videopipelineRanDry(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  CMNotificationCenterGetDefaultLocalCenter();

  return CMNotificationCenterPostNotification();
}

uint64_t videopipelineMarkerBufferConsumed(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  CMNotificationCenterGetDefaultLocalCenter();

  return CMNotificationCenterPostNotification();
}

uint64_t videopipelineSegmentFinished(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  CMNotificationCenterGetDefaultLocalCenter();

  return CMNotificationCenterPostNotification();
}

double videopipelineHandleCompletedDecodeForPrerollNotification(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const void *a5)
{
  v31 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!a5)
  {
    return videopipelineHandleCompletedDecodeForPrerollNotification_cold_2(DerivedStorage, v8, v9, v10, v11, v12, v13, v14, v28, v29, SHIDWORD(v29), v30);
  }

  v15 = DerivedStorage;
  v16 = CFGetTypeID(a5);
  DerivedStorage = CFDictionaryGetTypeID();
  if (v16 != DerivedStorage)
  {
    return videopipelineHandleCompletedDecodeForPrerollNotification_cold_2(DerivedStorage, v8, v9, v10, v11, v12, v13, v14, v28, v29, SHIDWORD(v29), v30);
  }

  if (!FigCFDictionaryGetValue())
  {
    return videopipelineHandleCompletedDecodeForPrerollNotification_cold_1(0, v17, v18, v19, v20, v21, v22, v23, v28, v29, SHIDWORD(v29), v30);
  }

  if (dword_1EAF16EF8)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  FigSimpleMutexLock();
  if (FigCFEqual())
  {
    *(v15 + 184) = 0;
    CMBaseObjectGetDerivedStorage();
    if (figVideoRenderPipelineHasCompletedAllPreparationForPrerollTasks(a2))
    {
      if (dword_1EAF16EF8)
      {
        v25 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      figVideoRenderPipelinePostPreparationForPrerollCompletedIfPreviouslyRequested(a2);
    }

    else if (dword_1EAF16EF8)
    {
      v26 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }
  }

  FigSimpleMutexUnlock();
  return result;
}

uint64_t videopipelineLostDecoderState(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  CMNotificationCenterGetDefaultLocalCenter();

  return CMNotificationCenterPostNotification();
}

void figVideoRenderPipelinePostPreparationForPrerollCompletedIfPreviouslyRequested(uint64_t a1)
{
  v6 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 168))
  {
    v2 = CFDictionaryCreate(*MEMORY[0x1E695E480], kFigRenderPipelineNotificationParameter_RequestID, (DerivedStorage + 176), 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    if (dword_1EAF16EF8)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    CMNotificationCenterGetDefaultLocalCenter();
    FigDispatchAsyncPostNotification();
    CFRelease(v2);
  }

  v4 = CMBaseObjectGetDerivedStorage();
  *(v4 + 168) = 0;
  v5 = *(v4 + 176);
  if (v5)
  {
    CFRelease(v5);
    *(v4 + 176) = 0;
  }

  *(v4 + 184) = 0;
  CFArrayRemoveAllValues(*(v4 + 192));
}

double videopipelineHandleImageQueueCompletedRendererPreparationForPrerollNotification(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const void *a5)
{
  v32 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!a5)
  {
    return videopipelineHandleImageQueueCompletedRendererPreparationForPrerollNotification_cold_2(DerivedStorage, v8, v9, v10, v11, v12, v13, v14, v29, v30, SHIDWORD(v30), v31);
  }

  v15 = DerivedStorage;
  v16 = CFGetTypeID(a5);
  DerivedStorage = CFDictionaryGetTypeID();
  if (v16 != DerivedStorage)
  {
    return videopipelineHandleImageQueueCompletedRendererPreparationForPrerollNotification_cold_2(DerivedStorage, v8, v9, v10, v11, v12, v13, v14, v29, v30, SHIDWORD(v30), v31);
  }

  if (!FigCFDictionaryGetValue())
  {
    return videopipelineHandleImageQueueCompletedRendererPreparationForPrerollNotification_cold_1(0, v17, v18, v19, v20, v21, v22, v23, v29, v30, SHIDWORD(v30), v31);
  }

  if (dword_1EAF16EF8)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  FigSimpleMutexLock();
  if (FigCFEqual())
  {
    FigCFArrayRemoveLastElementOfValue();
    v25 = *(v15 + 192);
    if (!v25 || !CFArrayGetCount(v25))
    {
      CMBaseObjectGetDerivedStorage();
      if (figVideoRenderPipelineHasCompletedAllPreparationForPrerollTasks(a2))
      {
        if (dword_1EAF16EF8)
        {
          v26 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT);
          fig_log_call_emit_and_clean_up_after_send_and_compose();
        }

        figVideoRenderPipelinePostPreparationForPrerollCompletedIfPreviouslyRequested(a2);
      }

      else if (dword_1EAF16EF8)
      {
        v27 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }
    }
  }

  FigSimpleMutexUnlock();
  return result;
}

uint64_t videopipelineFirstImageEnqueued(uint64_t a1, uint64_t a2)
{
  CMNotificationCenterGetDefaultLocalCenter();

  return CMNotificationCenterPostNotification();
}

uint64_t videopipelineImageReleased(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  CMNotificationCenterGetDefaultLocalCenter();

  return CMNotificationCenterPostNotification();
}

double videopipelineDisplaySizeChanged(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const __CFBoolean *a5)
{
  v6 = *(CMBaseObjectGetDerivedStorage() + 16);
  if (v6)
  {

    return VMC2SetProperty(v6, @"DisplayLayerSize", a5);
  }

  return result;
}

void videopipelineUpdateVideoPlaybackStateForClient(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v10 = 0;
  v11 = &v10;
  v12 = 0x2000000000;
  v13 = 0;
  v2 = *(DerivedStorage + 128);
  if (!v2 || CMTimebaseGetRate(v2) == 0.0)
  {
    v4 = 0;
    *(DerivedStorage + 145) = 0;
    v3 = *(DerivedStorage + 4);
    if (v3)
    {
      goto LABEL_7;
    }
  }

  else
  {
    *(DerivedStorage + 145) = 1;
    v3 = *(DerivedStorage + 4);
    v4 = v3 != 0;
    if (v3)
    {
      goto LABEL_7;
    }
  }

  v3 = *(DerivedStorage + 148);
LABEL_7:
  if (sVRPPowerLogOnce != -1)
  {
    videopipelineUpdateVideoPlaybackStateForClient_cold_1();
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = __videopipelineUpdateVideoPlaybackStateForClient_block_invoke_2;
  block[3] = &unk_1E7482558;
  v9 = v4;
  v8 = v3;
  block[4] = &v10;
  block[5] = DerivedStorage;
  dispatch_sync(sVRPPowerLogQueue, block);
  if (v11[3])
  {
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    if (Mutable)
    {
      v6 = Mutable;
      CFDictionarySetValue(Mutable, *MEMORY[0x1E6962D80], v11[3]);
      FigCFDictionarySetFloat32();
      FigCFDictionarySetInt32();
      FigLogPowerEvent();
      CFRelease(v6);
      *(DerivedStorage + 148) = *(DerivedStorage + 4);
    }
  }

  _Block_object_dispose(&v10, 8);
}

CFMutableBagRef __videopipelineUpdateVideoPlaybackStateForClient_block_invoke()
{
  sVRPPowerLogQueue = dispatch_queue_create("com.apple.coremedia.videorenderpipeline.powerlog", 0);
  result = CFBagCreateMutable(*MEMORY[0x1E695E480], 0, 0);
  sVRPBagOfClientPIDsWithPlayingRenderPipelines = result;
  return result;
}

void __videopipelineUpdateVideoPlaybackStateForClient_block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (*(v2 + 152))
  {
    if (!*(a1 + 52))
    {
      *(v2 + 152) = 0;
      if (MEMORY[0x19A8CCA80](sVRPBagOfClientPIDsWithPlayingRenderPipelines, *(a1 + 48)) == 1)
      {
        *(*(*(a1 + 32) + 8) + 24) = *MEMORY[0x1E6962DA0];
      }

      CFBagRemoveValue(sVRPBagOfClientPIDsWithPlayingRenderPipelines, *(a1 + 48));
    }
  }

  else if (*(a1 + 52))
  {
    *(v2 + 152) = *(a1 + 52);
    if (!MEMORY[0x19A8CCA80](sVRPBagOfClientPIDsWithPlayingRenderPipelines, *(a1 + 48)))
    {
      *(*(*(a1 + 32) + 8) + 24) = *MEMORY[0x1E6962DA8];
    }

    CFBagAddValue(sVRPBagOfClientPIDsWithPlayingRenderPipelines, *(a1 + 48));
  }

  if (!*(*(*(a1 + 32) + 8) + 24))
  {

    JUMPOUT(0x19A8CCA80);
  }
}

uint64_t videopipelineCopyPerformanceDictionary(uint64_t a1, uint64_t a2)
{
  v27 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  memset(v26, 0, sizeof(v26));
  theArray = 0;
  figVideoRenderPipelineCopyVideoImageQueueArray(a1, &theArray, 0);
  v4 = *(DerivedStorage + 16);
  if (v4)
  {
    v5 = VMC2CopyPerformanceDictionary(v4, v26) == 0;
  }

  else
  {
    v5 = 0;
  }

  v6 = *(DerivedStorage + 40);
  if (v6)
  {
    Count = CFArrayGetCount(v6);
  }

  else
  {
    Count = 0;
  }

  if (theArray)
  {
    v8 = CFArrayGetCount(theArray) > 0;
  }

  else
  {
    v8 = 0;
  }

  v9 = *MEMORY[0x1E695E480];
  if (v8 || Count >= 1)
  {
    keys = @"ImageQueuePerformanceArray";
    Mutable = CFArrayCreateMutable(v9, 0, MEMORY[0x1E695E9C0]);
    values = Mutable;
    v11 = theArray;
    if (theArray)
    {
      v12 = 0;
      do
      {
        if (CFArrayGetCount(v11) <= v12)
        {
          break;
        }

        value = 0;
        ValueAtIndex = CFArrayGetValueAtIndex(theArray, v12);
        v14 = *(*(CMBaseObjectGetVTable() + 16) + 72);
        if (v14 && !v14(ValueAtIndex, &value))
        {
          CFArrayAppendValue(Mutable, value);
        }

        if (value)
        {
          CFRelease(value);
        }

        ++v12;
        v11 = theArray;
      }

      while (theArray);
    }

    if (Count >= 1)
    {
      for (i = 0; i != Count; ++i)
      {
        value = 0;
        v16 = CFArrayGetValueAtIndex(*(DerivedStorage + 40), i);
        v17 = *(*(CMBaseObjectGetVTable() + 16) + 72);
        if (v17 && !v17(v16, &value))
        {
          CFArrayAppendValue(Mutable, value);
        }

        if (value)
        {
          CFRelease(value);
        }
      }
    }

    *(v26 | (8 * v5++)) = CFDictionaryCreate(v9, &keys, &values, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    if (values)
    {
      CFRelease(values);
    }
  }

  v18 = FigCFCreateCombinedDictionary();
  if (theArray)
  {
    CFRelease(theArray);
  }

  if (v5 >= 1)
  {
    v19 = v26;
    do
    {
      v20 = *v19++;
      CFRelease(v20);
      --v5;
    }

    while (v5);
  }

  return v18;
}

uint64_t FigImageQueueCopyProperty(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  FigImageQueueGetFigBaseObject();
  v8 = v7;
  v9 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v9)
  {
    return 4294954514;
  }

  return v9(v8, a2, a3, a4);
}

uint64_t FigSampleAttachmentCollectorSetDirection(uint64_t a1, uint64_t a2)
{
  VTable = CMBaseObjectGetVTable();
  v6 = *(VTable + 16);
  result = VTable + 16;
  v7 = *(v6 + 48);
  if (v7)
  {

    return v7(a1, a2);
  }

  return result;
}

uint64_t FigSampleAttachmentCollectorStop(uint64_t a1)
{
  v2 = *(*(CMBaseObjectGetVTable() + 16) + 32);
  if (!v2)
  {
    return 4294954514;
  }

  return v2(a1);
}

uint64_t FigSampleAttachmentCollectorGo(uint64_t a1)
{
  v2 = *(*(CMBaseObjectGetVTable() + 16) + 24);
  if (!v2)
  {
    return 4294954514;
  }

  return v2(a1);
}

void videopipelineAddListenersToFirstImageQueue(uint64_t a1, const void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 72) != a2)
  {
    v5 = DerivedStorage;
    videopipelineRemoveListenersOnFirstImageQueue(a1);
    CMNotificationCenterGetDefaultLocalCenter();
    FigNotificationCenterAddWeakListeners();
    v6 = *(v5 + 72);
    *(v5 + 72) = a2;
    if (a2)
    {
      CFRetain(a2);
    }

    if (v6)
    {

      CFRelease(v6);
    }
  }
}

void figVideoRenderPipelineCopyMaxFanOutDisplayLayerSize(uint64_t a1, __CFDictionary **a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v4 = *(DerivedStorage + 40);
  if (v4 && (Count = CFArrayGetCount(v4), Count >= 1))
  {
    v6 = Count;
    Mutable = 0;
    v8 = 0;
    v9 = MEMORY[0x1E695F060];
    v11 = *MEMORY[0x1E695F060];
    v10 = *(MEMORY[0x1E695F060] + 8);
    v12 = *MEMORY[0x1E695E480];
    do
    {
      dict = 0;
      CFArrayGetValueAtIndex(*(DerivedStorage + 40), v8);
      FigImageQueueGetFigBaseObject();
      v14 = v13;
      v15 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      if (v15)
      {
        v15(v14, @"FigImageQueueProperty_DisplaySize", v12, &dict);
      }

      if (dict)
      {
        v18 = *v9;
        CGSizeMakeWithDictionaryRepresentation(dict, &v18);
        width = v18.width;
        height = v18.height;
        if (v18.height * v18.width <= v11 * v10)
        {
          width = v11;
          height = v10;
        }

        else if (Mutable || (Mutable = CFDictionaryCreateMutable(v12, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8])) != 0)
        {
          CFDictionarySetValue(Mutable, @"DisplaySize", dict);
        }

        if (dict)
        {
          CFRelease(dict);
        }
      }

      else
      {
        height = v10;
        width = v11;
      }

      ++v8;
      v10 = height;
      v11 = width;
    }

    while (v6 != v8);
  }

  else
  {
    Mutable = 0;
  }

  *a2 = Mutable;
}

void videopipelineConfigureAV1FilmGrainModeAsAppropriateForImageQueues(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  *(DerivedStorage + 153) = 0;
  if (*(DerivedStorage + 16))
  {
    v3 = DerivedStorage;
    cf = 0;
    theArray = 0;
    figVideoRenderPipelineCopyVideoImageQueueArray(a1, &theArray, 0);
    if (theArray)
    {
      Count = CFArrayGetCount(theArray);
      if (Count >= 1)
      {
        v5 = Count;
        v6 = 0;
        v7 = *MEMORY[0x1E695E480];
        v8 = *MEMORY[0x1E695E4C0];
        while (1)
        {
          CFArrayGetValueAtIndex(theArray, v6);
          FigImageQueueGetFigBaseObject();
          v10 = v9;
          v11 = *(*(CMBaseObjectGetVTable() + 8) + 48);
          if (!v11)
          {
            break;
          }

          if (v11(v10, @"CanSupportAV1FilmGrainDeferMode", v7, &cf) || cf == 0)
          {
            break;
          }

          v13 = CFGetTypeID(cf);
          if (v13 != CFBooleanGetTypeID() || cf == v8)
          {
            break;
          }

          if (cf)
          {
            CFRelease(cf);
            cf = 0;
          }

          if (v5 == ++v6)
          {
            v14 = 1;
            goto LABEL_17;
          }
        }
      }

      v14 = 0;
LABEL_17:
      if (theArray)
      {
        CFRelease(theArray);
      }
    }

    else
    {
      v14 = 0;
    }

    if (cf)
    {
      CFRelease(cf);
    }

    v15 = MEMORY[0x1E69834A8];
    if (v14)
    {
      v15 = MEMORY[0x1E69834A0];
    }

    VMC2SetProperty(*(v3 + 16), @"AV1FilmGrainMode", *v15);
    *(v3 + 153) = v14;
  }
}

void figVideoRenderPipelinePretendOutputIsLow(uint64_t a1)
{
  v1 = *(CMBaseObjectGetDerivedStorage() + 16);
  if (v1)
  {

    VMC2PretendOutputIsLow(v1);
  }
}

uint64_t figVideoRenderPipelineRequestDecodeForPreroll(uint64_t a1, const void *a2)
{
  v21 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  theArray = 0;
  if (!a2)
  {
    figVideoRenderPipelineRequestDecodeForPreroll_cold_2(v20);
    return v20[0];
  }

  v5 = DerivedStorage;
  if (*DerivedStorage)
  {
    figVideoRenderPipelineRequestDecodeForPreroll_cold_1(v20);
    return v20[0];
  }

  FigSimpleMutexLock();
  figVideoRenderPipelinePostPreparationForPrerollCompletedIfPreviouslyRequested(a1);
  v6 = *(v5 + 2);
  if (v6 && (VMC2RequestDecodeForPreroll(v6, a2), !v7))
  {
    v8 = 1;
    v5[184] = 1;
  }

  else
  {
    v8 = 0;
  }

  figVideoRenderPipelineCopyVideoImageQueueArray(a1, &theArray, 0);
  if (theArray)
  {
    Count = CFArrayGetCount(theArray);
    if (Count >= 1)
    {
      v10 = Count;
      for (i = 0; i != v10; ++i)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(theArray, i);
        v13 = *(*(CMBaseObjectGetVTable() + 16) + 104);
        if (v13 && !v13(ValueAtIndex, a2))
        {
          CFArrayAppendValue(*(v5 + 24), ValueAtIndex);
          v8 = 1;
        }
      }
    }
  }

  v14 = *(v5 + 24);
  if (v14 && CFArrayGetCount(v14) > 0)
  {
    if (dword_1EAF16EF8)
    {
      goto LABEL_19;
    }
  }

  else if (dword_1EAF16EF8)
  {
LABEL_19:
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (v8)
  {
    v5[168] = 1;
    v16 = CFRetain(a2);
    v17 = 0;
    *(v5 + 22) = v16;
  }

  else
  {
    v17 = 4294954440;
  }

  FigSimpleMutexUnlock();
  if (theArray)
  {
    CFRelease(theArray);
  }

  return v17;
}

uint64_t figVideoRenderPipelineSetWaterLevels(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(CMBaseObjectGetDerivedStorage() + 16);
  v9 = *a2;
  v10 = *(a2 + 16);
  v7 = *a3;
  v8 = *(a3 + 16);
  VMC2SetWaterLevels(v5, &v9, &v7);
  return 0;
}

CMTime *vsbufGetDecodeTimeStamp@<X0>(opaqueCMSampleBuffer *a1@<X0>, CMTime *a2@<X8>)
{
  result = vsbufIsCatchupFrame(a1);
  if (result)
  {
    v5 = MEMORY[0x1E6960C70];
    *&a2->value = *MEMORY[0x1E6960C70];
    a2->epoch = *(v5 + 16);
  }

  else
  {

    return CMSampleBufferGetOutputDecodeTimeStamp(a2, a1);
  }

  return result;
}

CMTime *vsbufGetPresentationTimeStamp@<X0>(opaqueCMSampleBuffer *a1@<X0>, CMTime *a2@<X8>)
{
  result = vsbufIsCatchupFrame(a1);
  if (result)
  {
    v5 = MEMORY[0x1E6960C70];
    *&a2->value = *MEMORY[0x1E6960C70];
    a2->epoch = *(v5 + 16);
  }

  else
  {

    return CMSampleBufferGetOutputPresentationTimeStamp(a2, a1);
  }

  return result;
}

const __CFArray *vsbufIsCatchupFrame(opaqueCMSampleBuffer *a1)
{
  result = CMSampleBufferGetSampleAttachmentsArray(a1, 0);
  if (result)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(result, 0);
    return (ValueAtIndex && *MEMORY[0x1E695E4D0] == CFDictionaryGetValue(ValueAtIndex, *MEMORY[0x1E6960410]));
  }

  return result;
}

uint64_t FigSampleBufferAudioRendererServerRetainAudioRendererForID(uint64_t a1, CFTypeRef *a2)
{
  v3 = FigXPCServerRetainNeighborObjectFromID();
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    if (*a2)
    {
      v4 = CFGetTypeID(*a2);
      if (v4 == FigSampleBufferAudioRendererGetTypeID())
      {
        return 0;
      }
    }

    FigSampleBufferAudioRendererServerRetainAudioRendererForID_cold_1(&v7);
    v5 = v7;
  }

  if (a2 && v5 && *a2)
  {
    CFRelease(*a2);
    *a2 = 0;
  }

  return v5;
}

void FigSampleBufferAudioRendererServerStart(uint64_t a1)
{
  if (FigServer_IsMediaparserd())
  {
    emitter = fig_log_get_emitter();

    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 4294951145, "<< FigSBARServer >>", 690, v1);
  }

  else
  {
    FigServer_IsMediaplaybackd();

    FigXPCServerStart();
  }
}

uint64_t audioRenderer_lookupAndRetainSampleBufferAudioRendererByObjectIDForConnection(uint64_t a1, uint64_t a2, CFTypeRef *a3)
{
  v3 = FigXPCServerLookupAndRetainAssociatedObject();
  if (v3)
  {
    return v3;
  }

  audioRenderer_lookupAndRetainSampleBufferAudioRendererByObjectIDForConnection_cold_1(&v6);
  return v6;
}

void audioRendererServer_disposeFSBARServedState(const void **a1)
{
  if (a1)
  {
    v2 = *a1;
    if (v2)
    {
      CFRelease(v2);
      *a1 = 0;
    }

    v3 = a1[1];
    if (v3)
    {
      CFRelease(v3);
      a1[1] = 0;
    }

    v4 = a1[2];
    if (v4)
    {
      CFRelease(v4);
    }

    free(a1);
  }
}

void audioRendererServer_destroyFlushFromTimeCompletionCallbackContext(void *a1)
{
  if (a1)
  {
    FigXPCRelease();
    v2 = a1[3];
    if (v2)
    {
      CFRelease(v2);
    }

    free(a1);
  }
}

uint64_t fcrSessionSetMasterClockDo(OpaqueCMClock **a1)
{
  result = FigCaptionRendererTriggerCreate(*a1, *(a1[2] + 342), onTriggerEvent, onTriggerTimeUpdate, a1[2], a1[2] + 6);
  v3 = a1[1];
  if (v3)
  {
    *v3 = result;
  }

  return result;
}

void fcrSessionSetCGContextDeviceDo(uint64_t a1)
{
  v2 = *(a1 + 56);
  v3 = *a1;
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  v6 = *(a1 + 24);
  v7 = *(a1 + 32);
  v8 = *(a1 + 40);
  v9 = *(v2 + 584);
  if (v9)
  {
    Value = CFDictionaryGetValue(v9, *(v2 + 248));
    FigCaptionRendererOutputNodeProtocolGetProtocolID();
    ProtocolVTable = CMBaseObjectGetProtocolVTable();
    if (ProtocolVTable)
    {
      v12 = *(ProtocolVTable + 16);
      if (v12)
      {
        v13 = *(v12 + 16);
        if (v13)
        {
          v13(Value, 0);
        }
      }
    }

    CFDictionaryRemoveValue(*(v2 + 584), *(v2 + 248));
    v14 = *(v2 + 584);
    if (v14)
    {
      CFRelease(v14);
      *(v2 + 584) = 0;
    }
  }

  v15 = FigCaptionRendererCGOutputCreate(onViewportChanged, drawInContext, v2, v3, *MEMORY[0x1E695E480], (v2 + 64));
  if (v15)
  {
    v32 = v15;
    fcrSessionSetCGContextDeviceDo_cold_1();
    goto LABEL_24;
  }

  *(v2 + 624) = v8;
  v16 = *(v2 + 64);
  v17 = *(*(CMBaseObjectGetVTable() + 16) + 48);
  if (!v17)
  {
    v32 = -12782;
LABEL_21:
    fcrSessionSetCGContextDeviceDo_cold_3();
    goto LABEL_24;
  }

  v18 = v17(v16, 1, v4, v5, v6, v7);
  if (v18)
  {
    v32 = v18;
    goto LABEL_21;
  }

  v19 = *(v2 + 248);
  v20 = *(v2 + 64);
  v21 = *(*(CMBaseObjectGetVTable() + 16) + 40);
  if (v21)
  {
    v22 = v21(v20);
    v24 = v23;
    v26 = v25;
    v28 = v27;
  }

  else
  {
    v22 = *MEMORY[0x1E695F050];
    v24 = *(MEMORY[0x1E695F050] + 8);
    v26 = *(MEMORY[0x1E695F050] + 16);
    v28 = *(MEMORY[0x1E695F050] + 24);
  }

  FigCaptionRendererNodeProtocolGetProtocolID();
  v29 = CMBaseObjectGetProtocolVTable();
  if (v29 && (v30 = *(v29 + 16)) != 0)
  {
    v31 = *(v30 + 96);
    if (v31)
    {
      v32 = v31(v19, v22, v24, v26, v28);
      if (!v32)
      {
        goto LABEL_24;
      }
    }

    else
    {
      v32 = -12782;
    }
  }

  else
  {
    v32 = -12788;
  }

  fcrSessionSetCGContextDeviceDo_cold_2();
LABEL_24:
  v33 = *(a1 + 48);
  if (v33)
  {
    *v33 = v32;
  }
}

void fcrSessionSetLegibleOutputDeviceDo(double *a1)
{
  v2 = *(a1 + 7);
  v3 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  v6 = a1[4];
  v7 = *(a1 + 5);
  v8 = FigCaptionRendererLegibleOutputCreate(onViewportChanged, layoutInContext, v2, *a1, v2 + 8);
  if (v8)
  {
    v25 = v8;
    fcrSessionSetLegibleOutputDeviceDo_cold_1();
    goto LABEL_17;
  }

  v2[78] = v7;
  v9 = v2[8];
  v10 = *(*(CMBaseObjectGetVTable() + 16) + 48);
  if (!v10)
  {
    v25 = -12782;
LABEL_14:
    fcrSessionSetLegibleOutputDeviceDo_cold_3();
    goto LABEL_17;
  }

  v11 = v10(v9, 1, v3, v4, v5, v6);
  if (v11)
  {
    v25 = v11;
    goto LABEL_14;
  }

  v12 = v2[31];
  v13 = v2[8];
  v14 = *(*(CMBaseObjectGetVTable() + 16) + 40);
  if (v14)
  {
    v15 = v14(v13);
    v17 = v16;
    v19 = v18;
    v21 = v20;
  }

  else
  {
    v15 = *MEMORY[0x1E695F050];
    v17 = *(MEMORY[0x1E695F050] + 8);
    v19 = *(MEMORY[0x1E695F050] + 16);
    v21 = *(MEMORY[0x1E695F050] + 24);
  }

  FigCaptionRendererNodeProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (ProtocolVTable && (v23 = *(ProtocolVTable + 16)) != 0)
  {
    v24 = *(v23 + 96);
    if (v24)
    {
      v25 = v24(v12, v15, v17, v19, v21);
      if (!v25)
      {
        goto LABEL_17;
      }
    }

    else
    {
      v25 = -12782;
    }
  }

  else
  {
    v25 = -12788;
  }

  fcrSessionSetLegibleOutputDeviceDo_cold_2();
LABEL_17:
  v26 = *(a1 + 6);
  if (v26)
  {
    *v26 = v25;
  }
}

void SetProfileDo(uint64_t *a1)
{
  v2 = *a1;
  cf = 0;
  v3 = *(a1 + 2);
  if (*(v2 + 268) == v3)
  {
    goto LABEL_2;
  }

  v6 = *(v2 + 584);
  if (v6)
  {
    Value = CFDictionaryGetValue(v6, *(v2 + 248));
    FigCaptionRendererOutputNodeProtocolGetProtocolID();
    ProtocolVTable = CMBaseObjectGetProtocolVTable();
    if (ProtocolVTable && (v10 = *(ProtocolVTable + 16)) != 0)
    {
      v15 = *(v10 + 16);
      if (v15)
      {
        v16 = v15(Value, 0);
        if (!v16)
        {
          CFDictionaryRemoveValue(*(v2 + 584), *(v2 + 248));
          v3 = *(a1 + 2);
          goto LABEL_9;
        }

        v4 = v16;
      }

      else
      {
        v4 = -12782;
      }
    }

    else
    {
      v4 = -12788;
    }

    SetProfileDo_cold_1();
    goto LABEL_3;
  }

LABEL_9:
  if ((v3 | 2) == 3)
  {
    v17 = 0;
    v7 = FigCaptionRendererAVFLayoutRegionCreate(onDisplayUpdateEvent, v2, &v17);
    if (v7)
    {
      v4 = v7;
      SetProfileDo_cold_2();
      goto LABEL_3;
    }
  }

  else
  {
    v17 = 0;
    FigCaptionRendererFreeLayoutRegionCreate(onDisplayUpdateEvent, v2, &v17);
    if (v11)
    {
      v4 = v11;
      SetProfileDo_cold_3();
      goto LABEL_3;
    }
  }

  v12 = *(v2 + 248);
  v13 = v17;
  *(v2 + 248) = v17;
  if (v13)
  {
    CFRetain(v13);
  }

  if (v12)
  {
    CFRelease(v12);
  }

  if (v17)
  {
    CFRelease(v17);
  }

  if (!*(v2 + 584))
  {
    goto LABEL_26;
  }

  FigCaptionRendererCALayerOutputNodeCreate(&cf);
  if (!v14)
  {
    CFDictionarySetValue(*(v2 + 584), *(v2 + 248), cf);
LABEL_26:
    *(v2 + 268) = *(a1 + 2);
    applyContextDefaultsToMASettings(v2);
LABEL_2:
    v4 = 0;
    goto LABEL_3;
  }

  v4 = v14;
  SetProfileDo_cold_4();
LABEL_3:
  v5 = a1[2];
  if (v5)
  {
    *v5 = v4;
  }

  if (cf)
  {
    CFRelease(cf);
  }
}

void updateDisplayPort(void *a1, double a2, double a3, double a4, double a5)
{
  if (a1[22])
  {
    v10 = malloc_type_calloc(1uLL, 0x28uLL, 0x102004065753CD5uLL);
    if (v10)
    {
      v11 = v10;
      *v10 = CFRetain(a1);
      v11[1] = a2;
      v11[2] = a3;
      v12 = MEMORY[0x1E69E96A0];
      v11[3] = a4;
      v11[4] = a5;

      dispatch_async_f(v12, v11, updateDisplayPortDoAsync);
    }
  }
}

void fcrSessionSetCaptionArrayDo(uint64_t a1)
{
  v7 = 0;
  v2 = *(a1 + 16);
  v3 = *a1;
  v4 = *(v2 + 56);
  if (!v4)
  {
    v7 = FigCaptionRendererCaptionArrayInputCreate(onCaptionInput, onRegionInput, v2, *MEMORY[0x1E695E480], (v2 + 56));
    if (v7)
    {
      fcrSessionSetCaptionArrayDo_cold_1();
      goto LABEL_6;
    }

    v6[0] = v2;
    v6[1] = 2;
    v6[2] = &v7;
    SetProfileDo(v6);
    v4 = *(v2 + 56);
  }

  v7 = FigCaptionRendererCaptionArrayInputSetCaptionsArray(v4, v3);
  if (v7)
  {
    fcrSessionSetCaptionArrayDo_cold_2();
  }

LABEL_6:
  v5 = *(a1 + 8);
  if (v5)
  {
    *v5 = v7;
  }
}

void fcrSessionSetCaptionSampleDo(uint64_t a1)
{
  v9 = 0;
  v2 = *(a1 + 24);
  v3 = *a1;
  v4 = *(a1 + 8);
  v6 = v2 + 7;
  isa = v2[7].isa;
  if (!isa)
  {
    v9 = FigCaptionRendererBasicInputCreate(onCaptionInput, onRegionInput, v2, *MEMORY[0x1E695E480], v6);
    if (v9)
    {
      fcrSessionSetCaptionSampleDo_cold_1();
      goto LABEL_8;
    }

    v8[0] = v2;
    v8[1] = 1;
    v8[2] = &v9;
    SetProfileDo(v8);
    isa = v2[7].isa;
  }

  if (v4)
  {
    FigCaptionRendererBasicInputSetLayoutContext(isa, v4);
    isa = v6->isa;
  }

  v9 = FigCaptionRendererBasicInputAddSample(isa, v3);
  if (v9)
  {
    fcrSessionSetCaptionSampleDo_cold_2();
  }

LABEL_8:
  v7 = *(a1 + 16);
  if (v7)
  {
    *v7 = v9;
  }
}