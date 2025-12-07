uint64_t figPlaybackBossStartPrerollAndSetPlayState(uint64_t a1, CMTime *a2, uint64_t a3, __int16 a4, unsigned int a5, unsigned int a6, CMTime *a7, CMTime *a8, const void *a9)
{
  v44 = *MEMORY[0x1E69E9840];
  v14 = *&a3;
  v37 = (a8->flags & 0x1D) == 1;
  if (dword_1EAF16E78)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v16 = MEMORY[0x1E695FF58];
  if (*MEMORY[0x1E695FF58] == 1)
  {
    time = *a7;
    CMTimeGetSeconds(&time);
    kdebug_trace();
    if (*v16 == 1)
    {
      strncpy(&time, (a1 + 850), 8uLL);
      kdebug_trace();
    }
  }

  ++*(a1 + 648);
  HostTimeClock = CMClockGetHostTimeClock();
  CMClockGetTime(&time, HostTimeClock);
  *(a1 + 624) = time;
  v18 = *(a1 + 424);
  *(a1 + 424) = a9;
  if (a9)
  {
    CFRetain(a9);
  }

  if (v18)
  {
    CFRelease(v18);
  }

  *(a1 + 432) = a6;
  v19 = *&a7->value;
  *(a1 + 816) = a7->epoch;
  *(a1 + 800) = v19;
  v20 = *&a8->value;
  *(a1 + 840) = a8->epoch;
  *(a1 + 824) = v20;
  *(a1 + 512) = a3;
  *(a1 + 107) = 0;
  if ((a2->flags & 0x1D) == 1)
  {
    v21 = *&a2->value;
    *(a1 + 468) = a2->epoch;
    *(a1 + 452) = v21;
  }

  else if ((a7->flags & 0x1D) == 1)
  {
    v22 = *&a7->value;
    a2->epoch = a7->epoch;
    *&a2->value = v22;
  }

  else
  {
    CMTimebaseGetTime(&time, *(a1 + 120));
    *a2 = time;
  }

  v23 = *&a2->value;
  *(a1 + 532) = a2->epoch;
  *(a1 + 516) = v23;
  FigSimpleMutexLock();
  if (*(a1 + 848))
  {
    v24 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v25 = *(a1 + 80);
  bossBroadcastPrerollRateToRenderPipelines(a1, 0, v25, v14);
  bossBumpCurrentMasterOrder(a1);
  v26 = *(a1 + 80);
  time = *a2;
  v27 = bossSetMentorModesForTimeAndRate(a1, 0, v26, &time, a3, a4, a5, v37, 0);
  FigSimpleMutexUnlock();
  if (a6 == 1886151033)
  {
    v28 = *(a1 + 440);
    v29 = *(a1 + 444);
    time = *a7;
    v41 = *&a8->value;
    epoch = a8->epoch;
    started = bossStartTimebaseAndAudioContext(a1, &time.value, &v41, v28, v29);
    if (started)
    {
      v27 = started;
      *(a1 + 432) = 1885435251;
    }

    else
    {
      *(a1 + 432) = 1886151033;
      ++*(a1 + 720);
      ++*(a1 + 728);
      v32 = CMClockGetHostTimeClock();
      CMClockGetTime(&time, v32);
      *(a1 + 664) = time;
      v33 = *(a1 + 120);
      if (v33)
      {
        CMTimebaseGetTime(&time, v33);
        v27 = 0;
        *(a1 + 696) = time;
      }

      else
      {
        return 0;
      }
    }
  }

  else if (!v25)
  {
    if (dword_1EAF16E78)
    {
      v31 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    v34 = malloc_type_calloc(1uLL, 0x10uLL, 0xE0040E685C293uLL);
    *v34 = CFRetain(a1);
    v35 = *(a1 + 544);
    if (v35)
    {
      v35 = CFRetain(v35);
    }

    v34[1] = v35;
    dispatch_async_f(*(a1 + 32), v34, figPlaybackBoss_AllMentorsPrerollCompleteWithContext);
  }

  return v27;
}

uint64_t bossSetMentorModesForTimeAndRate(uint64_t a1, CFIndex a2, uint64_t a3, CMTime *a4, uint64_t a5, __int16 a6, uint64_t a7, int a8, unsigned __int8 a9)
{
  v43 = *MEMORY[0x1E69E9840];
  if (*&a5 == 0.0)
  {
    time = *a4;
    return bossSetMentorModesToScrub(a1, a2, a3, &time, 0, 0);
  }

  v15 = *(&a5 + 1);
  if (*&a5 > 0.0)
  {
    time = *a4;
    lhs = *(a1 + 176);
    return bossSetMentorModesToForwardPlayback(a1, a2, a3, &time, &lhs, HIBYTE(a6), a6, a7, *&a5, *(&a5 + 1), 0, a8, 1, a9);
  }

  v36 = a7;
  v18 = -*&a5;
  v38 = *a4;
  *&v37.value = *(a1 + 296);
  v37.epoch = *(a1 + 312);
  if (dword_1EAF16E78)
  {
    LODWORD(rhs.value) = 0;
    LOBYTE(type.value) = 0;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  bossBumpEveryTrackCurrentOrder(a1, a2, a3, 3);
  *(a1 + 608) = 0;
  if (bossTrackChangesDuringPlaybackRequireVCPUpdate(a1, a2, a3, a9))
  {
    v19 = *(a1 + 600);
    v20 = *(a1 + 552);
    time = v38;
    lhs = v37;
    v16 = FigVideoCompositionProcessorRequestPreroll(v19, &time.value, &lhs.value, v20, -1);
    if (!v16)
    {
      *(a1 + 608) = 1;
    }

    v21 = *(a1 + 600);
    v22 = *(a1 + 552);
    time = v38;
    lhs = v37;
    FigVideoCompositionProcessorSetPlaybackTimeRange(v21, &time, &lhs, v22, -1);
  }

  else
  {
    v16 = 0;
  }

  if (a2 < FigCFRangeGetLimit())
  {
    v23 = HIBYTE(a6);
    if (a6)
    {
      v24 = v18 / v15;
    }

    else
    {
      v24 = 1.0;
    }

    v25 = a2;
    do
    {
      ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 72), v25);
      v27 = *(ValueAtIndex + 23);
      if (v27)
      {
        bossSetUpSnippetPlaybackForRate(a1, ValueAtIndex, v27, 0, v24);
      }

      if (*(ValueAtIndex + 27))
      {
        v28 = bossCopyOptionsDictionaryForMentors(a1, v36, *(ValueAtIndex + 30), *(ValueAtIndex + 31), *(ValueAtIndex + 32), *(ValueAtIndex + 33), 0, a8, v18, 1, *(a1 + 849), *(a1 + 129), 0, *(ValueAtIndex + 18) == 1986618469, *(ValueAtIndex + 92), ValueAtIndex[424], 0, 0);
        v29 = bossCopyRenderPipelineCachedVideoFrames(a1, *(ValueAtIndex + 10));
        if (v23 && *(ValueAtIndex + 18) == 1936684398)
        {
          v30 = EditMentorSetModeToEmptyEdit(*(ValueAtIndex + 27), 0, v28, 0, *(ValueAtIndex + 28));
        }

        else
        {
          if (ValueAtIndex[425])
          {
            memset(&time, 0, sizeof(time));
            lhs = v38;
            rhs = *(ValueAtIndex + 452);
            CMTimeAdd(&time, &lhs, &rhs);
            memset(&lhs, 0, sizeof(lhs));
            rhs = v37;
            type = *(ValueAtIndex + 428);
            CMTimeSubtract(&lhs, &rhs, &type);
            v31 = *(ValueAtIndex + 27);
            v32 = *(ValueAtIndex + 28);
            rhs = time;
            type = lhs;
            p_rhs = &rhs;
            p_type = &type;
          }

          else
          {
            v31 = *(ValueAtIndex + 27);
            v32 = *(ValueAtIndex + 28);
            time = v38;
            lhs = v37;
            p_rhs = &time;
            p_type = &lhs;
          }

          v30 = EditMentorSetModeToReversePlayback(v31, p_rhs, &p_type->value, v28, v29, 0, v32);
        }

        if (v16)
        {
          v16 = v16;
        }

        else
        {
          v16 = v30;
        }

        if (v28)
        {
          CFRelease(v28);
        }

        if (v29)
        {
          CFRelease(v29);
        }
      }

      ++v25;
    }

    while (v25 < FigCFRangeGetLimit());
  }

  return v16;
}

uint64_t bossSetMentorModesToForwardPlayback(uint64_t a1, CFIndex a2, uint64_t a3, CMTime *a4, CMTime *a5, int a6, int a7, int a8, float a9, float a10, char a11, unsigned __int8 a12, char a13, unsigned __int8 a14)
{
  v15 = a4;
  v55 = *MEMORY[0x1E69E9840];
  if (dword_1EAF16E78)
  {
    LODWORD(rhs.value) = 0;
    LOBYTE(type.value) = 0;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    v15 = a4;
  }

  v48 = *(a1 + 849) == 0;
  if (*(a1 + 849))
  {
    v22 = 2;
  }

  else
  {
    v22 = 3;
  }

  bossBumpEveryTrackCurrentOrder(a1, a2, a3, v22);
  *(a1 + 608) = 0;
  if (bossTrackChangesDuringPlaybackRequireVCPUpdate(a1, a2, a3, a14))
  {
    v23 = *(a1 + 600);
    v24 = *(a1 + 552);
    time = *v15;
    lhs = *a5;
    v25 = FigVideoCompositionProcessorRequestPreroll(v23, &time.value, &lhs.value, v24, 1);
    if (!v25)
    {
      *(a1 + 608) = 1;
    }

    v26 = *(a1 + 600);
    v27 = *(a1 + 552);
    time = *v15;
    lhs = *a5;
    FigVideoCompositionProcessorSetPlaybackTimeRange(v26, &time, &lhs, v27, 1);
  }

  else
  {
    v25 = 0;
  }

  if (a2 < FigCFRangeGetLimit())
  {
    if (a7)
    {
      v28 = a9 / a10;
    }

    else
    {
      v28 = 1.0;
    }

    v29 = a2;
    do
    {
      ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 72), v29);
      v31 = ValueAtIndex;
      if (*(a1 + 432) == 1920298606)
      {
        v32 = *(ValueAtIndex + 13);
        if (v32)
        {
          if (*(v31 + 112))
          {
            FigMediaProcessorReset(*(v31 + 112), 1);
          }

          else
          {
            CMBufferQueueReset(v32);
          }
        }

        else
        {
          bossSetMentorModesToForwardPlayback_cold_1();
        }
      }

      v33 = *(v31 + 184);
      if (v33)
      {
        bossSetUpSnippetPlaybackForRate(a1, v31, v33, 1, v28);
      }

      v34 = *(v31 + 72) == 1986618469;
      if (*(v31 + 216))
      {
        v35 = bossTrackShouldRemoveExcessFramesInRefreshIntervals(a1, v31, a9);
        if (a11)
        {
          v36 = 1;
        }

        else
        {
          v36 = *(v31 + 272) != 0;
        }

        v37 = bossCopyOptionsDictionaryForMentors(a1, a8, *(v31 + 240), *(v31 + 248), *(v31 + 256), *(v31 + 264), v36, a12, a9, v48, *(a1 + 849), *(a1 + 129), a13, v34, *(v31 + 368), *(v31 + 424), 0, v35);
        v38 = bossCopyRenderPipelineCachedVideoFrames(a1, *(v31 + 80));
        if (a6 && *(v31 + 72) == 1936684398)
        {
          v39 = EditMentorSetModeToEmptyEdit(*(v31 + 216), 0, v37, 0, *(v31 + 224));
        }

        else
        {
          if (*(v31 + 425))
          {
            memset(&time, 0, sizeof(time));
            lhs = *a4;
            rhs = *(v31 + 428);
            CMTimeSubtract(&time, &lhs, &rhs);
            memset(&lhs, 0, sizeof(lhs));
            rhs = *a5;
            type = *(v31 + 452);
            CMTimeAdd(&lhs, &rhs, &type);
            v40 = *(v31 + 216);
            v41 = *(v31 + 224);
            rhs = time;
            type = lhs;
            p_rhs = &rhs;
            p_type = &type;
          }

          else
          {
            v40 = *(v31 + 216);
            v41 = *(v31 + 224);
            time = *a4;
            lhs = *a5;
            p_rhs = &time;
            p_type = &lhs;
          }

          v39 = EditMentorSetModeToForwardPlayback(v40, p_rhs, &p_type->value, v37, v38, 0, v41);
        }

        if (v25)
        {
          v25 = v25;
        }

        else
        {
          v25 = v39;
        }

        if (v37)
        {
          CFRelease(v37);
        }

        if (v38)
        {
          CFRelease(v38);
        }
      }

      ++v29;
    }

    while (v29 < FigCFRangeGetLimit());
  }

  return v25;
}

uint64_t bossSetUpSnippetPlaybackForRate(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, float a5)
{
  v5 = a4;
  v16 = **&MEMORY[0x1E6960C70];
  v15 = v16;
  if (a5 == 1.0)
  {
    goto LABEL_8;
  }

  v9 = a5;
  if ((getPlaybackBossSnippetDuration_preferencesChecked & 1) == 0)
  {
    v10 = CFPreferencesCopyAppValue(@"snippet_duration", @"com.apple.coremedia");
    getPlaybackBossSnippetDuration_preferencesChecked = 1;
    CMTimeMake(&time, 1, 1);
    *getPlaybackBossSnippetDuration_playbackBossSnippetDuration = time;
    if (v10)
    {
      v11 = CFGetTypeID(v10);
      if (v11 == CFNumberGetTypeID())
      {
        seconds.value = 0x3FF0000000000000;
        CFNumberGetValue(v10, kCFNumberFloat64Type, &seconds);
        CMTimeMakeWithSeconds(&time, *&seconds.value, 1000);
        *getPlaybackBossSnippetDuration_playbackBossSnippetDuration = time;
      }

      CFRelease(v10);
    }
  }

  v16 = *getPlaybackBossSnippetDuration_playbackBossSnippetDuration;
  time = *getPlaybackBossSnippetDuration_playbackBossSnippetDuration;
  CMTimeMultiplyByFloat64(&v15, &time, v9);
  if (*(a2 + 192))
  {
    goto LABEL_8;
  }

  v13 = *(a2 + 184);
  bossGetContentDuration(a1, &time);
  result = FigSnippetEditCursorServiceSetTrackDuration(v13, &time);
  if (!result)
  {
    *(a2 + 192) = 1;
LABEL_8:
    time = v16;
    seconds = v15;
    return FigSnippetEditCursorServiceSetSnippetDurationAndStep(a3, &time, &seconds, v5);
  }

  return result;
}

CMTime *snippet_updateSnippetCount(CMTime *result)
{
  v1 = result;
  if ((result[2].flags & 0x1D) == 1)
  {
    memset(&v5, 0, sizeof(v5));
    timescale = result[2].timescale;
    v4 = *result;
    result = CMTimeConvertScale(&v5, &v4, timescale, kCMTimeRoundingMethod_RoundAwayFromZero);
    v3 = (v5.value + v1[2].value - 1) / v1[2].value;
  }

  else
  {
    v3 = 1;
  }

  *&v1[3].timescale = v3;
  return result;
}

uint64_t EditMentorSetModeToForwardPlayback(uint64_t a1, __int128 *a2, __int128 *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = a1;
  v9 = *a2;
  v10 = *(a2 + 2);
  v11 = *a3;
  v12 = *(a3 + 2);
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v17 = 0;
  dispatch_sync_f(*(a1 + 304), &v8, EditMentorSetModeToForwardPlayback_fun);
  return v17;
}

BOOL editMentorSelectFirstEditSegmentForParentRange(uint64_t a1, uint64_t a2, _BYTE *a3, uint64_t a4)
{
  v46 = *MEMORY[0x1E69E9840];
  v8 = (a1 + 560);
  *(a1 + 563) = 0;
  *(a1 + 560) = 0;
  FigSimpleMutexLock();
  v9 = *(a1 + 336);
  if (v9)
  {
    CFRelease(v9);
    *(a1 + 336) = 0;
  }

  v10 = *(a1 + 128);
  if (!v10)
  {
    v24 = *(a1 + 184);
    *(a1 + 400) = *(a1 + 168);
    *(a1 + 416) = v24;
    v25 = *(a1 + 216);
    *(a1 + 432) = *(a1 + 200);
    *(a1 + 448) = v25;
    v26 = *(a1 + 152);
    *(a1 + 368) = *(a1 + 136);
    *(a1 + 384) = v26;
    goto LABEL_19;
  }

  v11 = 24;
  if (*(a1 + 320) != 3)
  {
    v11 = 0;
  }

  v12 = (a2 + v11);
  v38 = *v12;
  v39 = *(v12 + 2);
  v13 = *(*(CMBaseObjectGetVTable() + 16) + 8);
  if (!v13)
  {
    v14 = 4294954514;
    goto LABEL_33;
  }

  *&time1.start.value = v38;
  time1.start.epoch = v39;
  v14 = v13(v10, &time1, a1 + 336);
  if (v14)
  {
LABEL_33:
    editMentorSelectFirstEditSegmentForParentRange_cold_3(v14);
    goto LABEL_36;
  }

  v15 = *(a1 + 336);
  v16 = *(*(CMBaseObjectGetVTable() + 16) + 24);
  if (!v16)
  {
    v17 = 4294954514;
    goto LABEL_35;
  }

  v17 = v16(v15, a1 + 368);
  if (v17)
  {
LABEL_35:
    editMentorSelectFirstEditSegmentForParentRange_cold_2(v17);
    goto LABEL_36;
  }

  if (*(a1 + 320) == 3)
  {
    *&time1.start.value = *(a1 + 416);
    time1.start.epoch = *(a1 + 432);
    *time2 = *(a2 + 24);
    *&time2[16] = *(a2 + 40);
    if (!CMTimeCompare(&time1.start, time2))
    {
      v18 = *(a1 + 336);
      v19 = *(*(CMBaseObjectGetVTable() + 16) + 16);
      if (v19)
      {
        v19(v18, 0xFFFFFFFFLL);
      }

      v20 = *(a1 + 336);
      v21 = *(*(CMBaseObjectGetVTable() + 16) + 24);
      if (v21)
      {
        v22 = v21(v20, a1 + 368);
        if (!v22)
        {
          goto LABEL_16;
        }
      }

      else
      {
        v22 = 4294954514;
      }

      editMentorSelectFirstEditSegmentForParentRange_cold_1(v22);
LABEL_36:
      FigSimpleMutexUnlock();
      return 0;
    }
  }

LABEL_16:
  v23 = *(a2 + 16);
  *&time1.start.value = *a2;
  *&time1.start.epoch = v23;
  *&time1.duration.timescale = *(a2 + 32);
  if (editMentorConsolidateCurrentEdit(a1, &time1))
  {
    goto LABEL_36;
  }

LABEL_19:
  FigSimpleMutexUnlock();
  v27 = *(a1 + 416);
  *&time1.duration.timescale = *(a1 + 400);
  v41 = v27;
  v28 = *(a1 + 448);
  v42 = *(a1 + 432);
  v43 = v28;
  v29 = *(a1 + 384);
  *&time1.start.value = *(a1 + 368);
  *&time1.start.epoch = v29;
  v30 = *(a2 + 16);
  *time2 = *a2;
  *&time2[16] = v30;
  v45 = *(a2 + 32);
  result = editMentorDoesEditSegmentIntersectTrackRange(&time1, time2);
  if (!result)
  {
    *(a1 + 562) = 1;
    return result;
  }

  if (*(a1 + 380))
  {
    v32 = *(a2 + 16);
    *time2 = *a2;
    *&time2[16] = v32;
    v45 = *(a2 + 32);
    v33 = *(a1 + 416);
    *&time1.duration.timescale = *(a1 + 400);
    v41 = v33;
    v34 = *(a1 + 448);
    v42 = *(a1 + 432);
    v43 = v34;
    v35 = *(a1 + 384);
    *&time1.start.value = *(a1 + 368);
    *&time1.start.epoch = v35;
    editMentorIntersectTrackRangeWithEditSegmentAndMapToMediaRange(a1, time2, &time1.start.value, a4);
    editMentorUpdateChildMentorProperties(a1);
    *a3 = 0;
    *(a1 + 565) = editMentorCurrentEditIsLastOpenEndedEdit(a1);
  }

  else
  {
    *a3 = 1;
  }

  if (*(a1 + 320) != 2)
  {
    v37 = *(a1 + 432);
    *&time1.start.value = *(a1 + 416);
    *&time1.start.epoch = v37;
    *&time1.duration.timescale = *(a1 + 448);
    CMTimeRangeGetEnd(time2, &time1);
    *&time1.start.value = *(a2 + 24);
    time1.start.epoch = *(a2 + 40);
    if (CMTimeCompare(&time1.start, time2) >= 1)
    {
      if (!dword_1EAF16E38)
      {
        goto LABEL_37;
      }

      goto LABEL_27;
    }

    return 1;
  }

  *&time1.start.value = *a2;
  time1.start.epoch = *(a2 + 16);
  *time2 = *(a1 + 416);
  *&time2[16] = *(a1 + 432);
  if ((CMTimeCompare(&time1.start, time2) & 0x80000000) == 0)
  {
    return 1;
  }

  if (dword_1EAF16E38)
  {
LABEL_27:
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

LABEL_37:
  result = 1;
  *a3 = 1;
  *v8 = 1;
  return result;
}

void editMentorIntersectTrackRangeWithEditSegmentAndMapToMediaRange(uint64_t a1, CMTime *a2, __int128 *a3, uint64_t a4)
{
  memset(&v17, 0, sizeof(v17));
  memset(&v16, 0, sizeof(v16));
  if ((a2->flags & 0x1D) == 1 && (time1.start = *a2, time2 = *(a3 + 2), CMTimeCompare(&time1.start, &time2) > 0))
  {
    memset(v14, 0, sizeof(v14));
    *&time1.start.value = *&a2->value;
    time1.start.epoch = a2->epoch;
    editMentorSelectEditForTimeInConsolidatedEdit(a1, &time1, 0, v14);
    time2 = *a2;
    editMentorMapTrackTimeToMediaTimeUsingEditSegment(&time2, v14, &time1);
    *a4 = *&time1.start.value;
    *(a4 + 16) = time1.start.epoch;
  }

  else
  {
    v8 = *a3;
    *(a4 + 16) = *(a3 + 2);
    *a4 = v8;
  }

  v9 = a3[4];
  *&time1.start.value = a3[3];
  *&time1.start.epoch = v9;
  *&time1.duration.timescale = a3[5];
  CMTimeRangeGetEnd(&v17, &time1);
  if ((a2[1].flags & 0x1D) == 1 && (time1.start = v17, time2 = a2[1], CMTimeCompare(&time1.start, &time2) > 0))
  {
    memset(v12, 0, sizeof(v12));
    *&time1.start.value = *&a2[1].value;
    time1.start.epoch = a2[1].epoch;
    editMentorSelectEditForTimeInConsolidatedEdit(a1, &time1, 0, v12);
    time2 = a2[1];
    editMentorMapTrackTimeToMediaTimeUsingEditSegment(&time2, v12, &time1);
    *(a4 + 24) = *&time1.start.value;
    epoch = time1.start.epoch;
  }

  else
  {
    v11 = a3[1];
    *&time1.start.value = *a3;
    *&time1.start.epoch = v11;
    *&time1.duration.timescale = a3[2];
    CMTimeRangeGetEnd(&v16, &time1);
    *(a4 + 24) = *&v16.value;
    epoch = v16.epoch;
  }

  *(a4 + 40) = epoch;
}

uint64_t editMentorSetChildMentorModeToForwardPlayback(uint64_t a1, uint64_t a2, const void *a3)
{
  cf = 0;
  v6 = editMentorRetainCurrentChildOrderAndOptionsDictionary(a1, &cf);
  v7 = *a1;
  if (*a1)
  {
    *context = *a2;
    *&context[16] = *(a2 + 16);
    v16 = *(a2 + 24);
    v17 = *(a2 + 40);
    v8 = VideoMentorSetModeToForwardPlayback(v7, 0, context, 0, &v16, cf, a3, 0, v6);
LABEL_5:
    v10 = v8;
    goto LABEL_6;
  }

  v9 = *(a1 + 8);
  if (v9)
  {
    *context = *a2;
    *&context[16] = *(a2 + 16);
    v16 = *(a2 + 24);
    v17 = *(a2 + 40);
    v8 = AudioMentorSetModeToForwardPlayback(v9, 0, context, 0, &v16, cf, 0, v6);
    goto LABEL_5;
  }

  v12 = *(a1 + 16);
  if (v12)
  {
    *&context[8] = *a2;
    v20 = *(a2 + 16);
    v21 = *(a2 + 24);
    v13 = *(a2 + 40);
    *context = v12;
    v22 = v13;
    v23 = cf;
    v24 = a3;
    v25 = 0;
    v26 = v6;
    v27 = 0;
    dispatch_sync_f(*(v12 + 304), context, EditMentorSetModeToForwardPlayback_fun);
    v10 = v27;
  }

  else
  {
    if (*(a1 + 24))
    {
      v14 = *(a1 + 80);
      v15 = *(a1 + 40);
      *context = *a2;
      *&context[16] = *(a2 + 16);
      v16 = *(a2 + 24);
      v17 = *(a2 + 40);
      v8 = v14(v15, context, &v16, cf, a3, 0, v6);
      goto LABEL_5;
    }

    v10 = 0;
  }

LABEL_6:
  if (v6)
  {
    CFRelease(v6);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  return v10;
}

uint64_t AudioMentorSetModeToForwardPlayback(uint64_t a1, uint64_t a2, __int128 *a3, uint64_t a4, __int128 *a5, const __CFDictionary *a6, const void *a7, const void *a8)
{
  v11 = *a3;
  v12 = *(a3 + 2);
  v9 = *a5;
  v10 = *(a5 + 2);
  return audioMentorSetModeToForwardOrReversePlayback(a1, a2, &v11, a4, &v9, a6, a7, a8, 1);
}

uint64_t audioMentorSetModeToForwardOrReversePlayback(uint64_t a1, uint64_t a2, __int128 *a3, uint64_t a4, __int128 *a5, CFDictionaryRef theDict, const void *a7, const void *a8, int a9)
{
  v49 = *MEMORY[0x1E69E9840];
  v46 = 0;
  v47 = 0;
  if (!theDict)
  {
    goto LABEL_6;
  }

  Value = CFDictionaryGetValue(theDict, @"ReadPolicy");
  v14 = Value;
  if (Value)
  {
    if (CFEqual(Value, @"Immediate"))
    {
      v14 = 2;
      goto LABEL_7;
    }

    if (!CFEqual(v14, @"Scheduled"))
    {
      v14 = 4 * (CFEqual(v14, @"DeferUntilMakeDataReady") != 0);
      goto LABEL_7;
    }

LABEL_6:
    v14 = 0;
  }

LABEL_7:
  PolicyFromPrerollPolicy = audioMentorGetInitialReadPolicyFromPrerollPolicy(theDict, v14);
  v15 = audioMentorGetModeChangePolicy(theDict);
  valuePtr[0] = 0;
  if (theDict && (v16 = CFDictionaryGetValue(theDict, @"DefaultGradualDecoderRefresh")) != 0)
  {
    CFNumberGetValue(v16, kCFNumberSInt32Type, valuePtr);
    v39 = valuePtr[0];
  }

  else
  {
    v39 = 0;
  }

  valuePtr[0] = 0;
  FigCFDictionaryGetInt32IfPresent();
  v38 = valuePtr[0];
  valuePtr[0] = 0;
  v17 = MEMORY[0x1E6960C70];
  if (theDict)
  {
    v18 = CFDictionaryGetValue(theDict, @"PostDecoderDrain");
    if (v18)
    {
      CFNumberGetValue(v18, kCFNumberSInt32Type, valuePtr);
      v37 = valuePtr[0];
    }

    else
    {
      v37 = 0;
    }

    v45 = *v17;
    v20 = CFDictionaryGetValue(theDict, @"TrimDurationAtEOF");
    if (v20)
    {
      CMTimeMakeFromDictionary(&v45, v20);
    }

    v21 = CFDictionaryGetValue(theDict, @"CursorAccuracy");
    v19 = v21 && CFEqual(@"Exact", v21);
    v22 = CFDictionaryGetValue(theDict, @"TrimSampleBufferDurations");
    if (v22 && CFEqual(*MEMORY[0x1E695E4C0], v22))
    {
      v23 = 0;
      goto LABEL_26;
    }
  }

  else
  {
    v19 = 0;
    v37 = 0;
    v45 = **&MEMORY[0x1E6960C70];
  }

  v23 = 1;
LABEL_26:
  if (a9 == 1)
  {
    LOBYTE(valuePtr[0]) = 0;
    FigCFDictionaryGetBooleanIfPresent();
    v24 = valuePtr[0];
    if (v15)
    {
      goto LABEL_28;
    }

LABEL_31:
    ShouldSynchronouslyResetOutput = 0;
    if (!a2)
    {
      goto LABEL_34;
    }

LABEL_32:
    v26 = *(*(CMBaseObjectGetVTable() + 16) + 8);
    if (v26)
    {
      v27 = v26(a2, &v47);
      if (!v27)
      {
        goto LABEL_34;
      }
    }

    else
    {
      v27 = 4294954514;
    }

    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF16D48, v27, "<<<< AudioMentor >>>>", 2529);
    goto LABEL_58;
  }

  v24 = 0;
  if (!v15)
  {
    goto LABEL_31;
  }

LABEL_28:
  ShouldSynchronouslyResetOutput = audioMentorShouldSynchronouslyResetOutput(theDict);
  if (a2)
  {
    goto LABEL_32;
  }

LABEL_34:
  if (a4)
  {
    v28 = *(*(CMBaseObjectGetVTable() + 16) + 8);
    if (v28)
    {
      v27 = v28(a4, &v46);
      if (!v27)
      {
        goto LABEL_37;
      }
    }

    else
    {
      v27 = 4294954514;
    }

    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF16D48, v27, "<<<< AudioMentor >>>>", 2536);
    goto LABEL_58;
  }

LABEL_37:
  FigSimpleMutexLock();
  if (!*a1)
  {
    v29 = *(a1 + 128);
    if (v29)
    {
      CFRelease(v29);
    }

    *(a1 + 128) = v47;
    v47 = 0;
    v30 = *a3;
    *(a1 + 152) = *(a3 + 2);
    *(a1 + 136) = v30;
    v31 = *(a1 + 160);
    if (v31)
    {
      CFRelease(v31);
    }

    *(a1 + 160) = v46;
    v46 = 0;
    v32 = *a5;
    *(a1 + 184) = *(a5 + 2);
    *(a1 + 168) = v32;
    *(a1 + 268) = v14;
    *(a1 + 192) = PolicyFromPrerollPolicy;
    *(a1 + 196) = v15;
    *(a1 + 200) = v39;
    *(a1 + 204) = v38;
    *(a1 + 208) = v37;
    *(a1 + 212) = v45;
    *(a1 + 236) = v19;
    *(a1 + 237) = v23;
    *(a1 + 238) = ShouldSynchronouslyResetOutput;
    *(a1 + 239) = v24;
    v33 = *(a1 + 248);
    if (v33)
    {
      CFRelease(v33);
    }

    *(a1 + 248) = a7;
    if (a7)
    {
      CFRetain(a7);
    }

    v34 = *(a1 + 256);
    if (v34)
    {
      CFRelease(v34);
    }

    *(a1 + 256) = a8;
    if (a8)
    {
      CFRetain(a8);
    }

    *(a1 + 112) = a9;
    *(a1 + 116) = 1;
    FigMemoryBarrier();
  }

  FigSimpleMutexUnlock();
  FigSemaphoreSignal();
  if (ShouldSynchronouslyResetOutput)
  {
    v27 = FigSemaphoreWaitRelative();
    if (!v27)
    {
      goto LABEL_58;
    }

    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v27 = 0;
LABEL_58:
  if (v47)
  {
    CFRelease(v47);
  }

  if (v46)
  {
    CFRelease(v46);
  }

  return v27;
}

const __CFDictionary *audioMentorGetModeChangePolicy(const __CFDictionary *result)
{
  if (result)
  {
    result = CFDictionaryGetValue(result, @"ModeChangePolicy");
    if (result)
    {
      v1 = result;
      if (CFEqual(result, @"PreservePreviousOutput"))
      {
        return 0;
      }

      else if (CFEqual(v1, @"CancelPreviousOutput"))
      {
        return 1;
      }

      else
      {
        return (2 * (CFEqual(v1, @"RepurposeOrCancelPreviousOutput") != 0));
      }
    }
  }

  return result;
}

uint64_t audioMentorCreateCursorForPresentationTimeStamp(uint64_t a1, int a2, __int128 *a3, uint64_t a4)
{
  v6 = *(a1 + 8);
  if (a2)
  {
    v11 = *a3;
    v13 = *(a3 + 2);
    v7 = *(*(CMBaseObjectGetVTable() + 16) + 8);
    if (v7)
    {
      v15 = v11;
      v16 = v13;
      v8 = v7(v6, &v15, a4, 0, 0);
      if (!v8)
      {
        return v8;
      }
    }

    else
    {
      v8 = 4294954514;
    }

    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF16D48, v8, "<<<< AudioMentor >>>>", 1063, v4);
  }

  else
  {
    v12 = *a3;
    v14 = *(a3 + 2);
    v9 = *(*(CMBaseObjectGetVTable() + 16) + 16);
    if (v9)
    {
      v15 = v12;
      v16 = v14;
      v8 = v9(v6, &v15, 1, a4, 0, 0);
      if (!v8)
      {
        return v8;
      }
    }

    else
    {
      v8 = 4294954514;
    }

    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF16D48, v8, "<<<< AudioMentor >>>>", 1069, v4);
  }

  return v8;
}

uint64_t sbcbq_flush(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  v2 = 136;
  if (!*(DerivedStorage + 8))
  {
    v2 = 144;
  }

  MEMORY[0x19A8CE710](*(DerivedStorage + v2), sbcbq_invalidateSampleBuffer, 0);
  if (!*(DerivedStorage + 8))
  {
    *(DerivedStorage + 152) = 1;
  }

  FigSimpleMutexUnlock();
  return 0;
}

BOOL sbcbq_isQueueBelowLowWater(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v2 = DerivedStorage;
  v3 = 136;
  if (!*(DerivedStorage + 8))
  {
    v3 = 144;
  }

  CMBufferQueueGetDuration(&v8, *(DerivedStorage + v3));
  time1 = v8;
  v6 = *(v2 + 48);
  if (CMTimeCompare(&time1, &v6) > 0)
  {
    return 0;
  }

  if (!*(v2 + 72))
  {
    return 1;
  }

  v5 = 136;
  if (!*(v2 + 8))
  {
    v5 = 144;
  }

  return CMBufferQueueGetTotalSize(*(v2 + v5)) < *(v2 + 72);
}

BOOL sbcbq_isQueueAtOrAboveHighWater(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v2 = DerivedStorage;
  v9 = **&MEMORY[0x1E6960C70];
  v3 = 136;
  if (!*(DerivedStorage + 8))
  {
    v3 = 144;
  }

  CMBufferQueueGetDuration(&v9, *(DerivedStorage + v3));
  time1 = v9;
  v4 = *(v2 + 12);
  v7.epoch = *(v2 + 28);
  *&v7.value = v4;
  if ((CMTimeCompare(&time1, &v7) & 0x80000000) == 0)
  {
    return 1;
  }

  if (!*(v2 + 40))
  {
    return 0;
  }

  v6 = 136;
  if (!*(v2 + 8))
  {
    v6 = 144;
  }

  return CMBufferQueueGetTotalSize(*(v2 + v6)) >= *(v2 + 40);
}

uint64_t locateChunk(uint64_t a1, _DWORD *a2, _DWORD *a3)
{
  v6 = *(a1 + 80);
  v7 = *(a1 + 8);
  if (*(v7 + 432) == 1)
  {
    v8 = (v6 - 1) / *(a1 + 148);
    *a2 = v8;
    v9 = *(a1 + 148) * v8;
    *(a1 + 140) = v9 + 1;
    if (v9 < 0 || v9 >= *(v7 + 288))
    {
      locateChunk_cold_9(&v59);
    }

    else
    {
      if (!a3)
      {
        return 0;
      }

      v10 = *(a1 + 136);
      v60 = 0;
      v59 = 0;
      CMBlockBufferCopyDataBytes(*(v7 + 440), 12 * v10, 0xCuLL, &v59);
      v11 = bswap32(v60);
      *a3 = v11;
      if (v11 >= 1)
      {
        Count = *(*(a1 + 8) + 56);
        if (Count)
        {
          Count = CFArrayGetCount(Count);
        }

        if (Count >= v11)
        {
          return 0;
        }
      }

      locateChunk_cold_10(&v59);
    }
  }

  else
  {
    v14 = *(a1 + 140);
    v15 = *(*a1 + 24) == 0;
    v16 = *(a1 + 80);
    v17 = v14;
    while (v17 > v16 || *(a1 + 144) * *(a1 + 148) + v17 <= v16)
    {
      if (v15 || ((v18 = *(a1 + 144), v19 = *(a1 + 136) + 1, v20 = *(a1 + 8), v19 != *(v20 + 432)) ? (v60 = 0, v59 = 0, CMBlockBufferCopyDataBytes(*(v20 + 440), 12 * v19, 0xCuLL, &v59), v21 = bswap32(v59)) : (v21 = (*(v20 + 624))() + 1), *(a1 + 144) = v21, v22 = *(a1 + 8), v23 = *(a1 + 136), v60 = 0, v59 = 0, CMBlockBufferCopyDataBytes(*(v22 + 440), 12 * v23, 0xCuLL, &v59), v24 = *(a1 + 144) - bswap32(v59), *(a1 + 144) = v24, v18 == v24))
      {
        v25 = *(a1 + 136);
        if (v6 >= v14)
        {
          v37 = v25 + 1;
          v38 = *(a1 + 8);
          if (v37 >= *(v38 + 432))
          {
            goto LABEL_48;
          }

          v39 = *(a1 + 140) + *(a1 + 144) * *(a1 + 148);
          *(a1 + 140) = v39;
          if (v39 < 1 || v39 > *(v38 + 288))
          {
            locateChunk_cold_5(&v59);
            return v59;
          }

          *(a1 + 136) = v37;
          v60 = 0;
          v59 = 0;
          CMBlockBufferCopyDataBytes(*(v38 + 440), 12 * v37, 0xCuLL, &v59);
          v40 = bswap32(HIDWORD(v59));
          *(a1 + 148) = v40;
          v41 = *(a1 + 8);
          v42 = *(v41 + 244);
          if (v42)
          {
            *(a1 + 148) = v40 / v42;
          }

          v43 = *(a1 + 136) + 1;
          if (v43 == *(v41 + 432))
          {
            v44 = (*(v41 + 624))() + 1;
          }

          else
          {
            v60 = 0;
            v59 = 0;
            CMBlockBufferCopyDataBytes(*(v41 + 440), 12 * v43, 0xCuLL, &v59);
            v44 = bswap32(v59);
          }

          *(a1 + 144) = v44;
          v45 = *(a1 + 8);
          v46 = *(a1 + 136);
          v60 = 0;
          v59 = 0;
          CMBlockBufferCopyDataBytes(*(v45 + 440), 12 * v46, 0xCuLL, &v59);
          v47 = *(a1 + 148);
          *(a1 + 144) -= bswap32(v59);
          if (v47 < 1 || v47 > *(*(a1 + 8) + 288))
          {
            locateChunk_cold_4(&v59);
            return v59;
          }
        }

        else
        {
          if (v25 < 1)
          {
            goto LABEL_48;
          }

          *(a1 + 136) = v25 - 1;
          v26 = *(a1 + 8);
          v60 = 0;
          v59 = 0;
          CMBlockBufferCopyDataBytes(*(v26 + 440), 12 * v25, 0xCuLL, &v59);
          v27 = bswap32(v59);
          v28 = *(a1 + 8);
          v29 = *(a1 + 136);
          v60 = 0;
          v59 = 0;
          CMBlockBufferCopyDataBytes(*(v28 + 440), 12 * v29, 0xCuLL, &v59);
          *(a1 + 144) = v27 - bswap32(v59);
          v30 = *(a1 + 8);
          v31 = *(a1 + 136);
          v60 = 0;
          v59 = 0;
          CMBlockBufferCopyDataBytes(*(v30 + 440), 12 * v31, 0xCuLL, &v59);
          v32 = bswap32(HIDWORD(v59));
          *(a1 + 148) = v32;
          v33 = *(a1 + 8);
          v34 = *(v33 + 244);
          if (v34)
          {
            v32 /= v34;
            *(a1 + 148) = v32;
          }

          v35 = *(a1 + 140) - *(a1 + 144) * v32;
          *(a1 + 140) = v35;
          if (v35 < 1 || (v36 = *(v33 + 288), v35 > v36))
          {
            locateChunk_cold_7(&v59);
            return v59;
          }

          if (v32 < 1 || v32 > v36)
          {
            locateChunk_cold_6(&v59);
            return v59;
          }
        }
      }

      v17 = *(a1 + 140);
      v16 = *(a1 + 80);
      v15 = 1;
    }

    v48 = *(a1 + 8);
    v49 = *(a1 + 136);
    v60 = 0;
    v59 = 0;
    CMBlockBufferCopyDataBytes(*(v48 + 440), 12 * v49, 0xCuLL, &v59);
    v50 = v59;
    v51 = *(a1 + 80);
    v52 = *(a1 + 140);
    v53 = *(a1 + 148);
    if (!a3)
    {
      goto LABEL_43;
    }

    v54 = *(a1 + 8);
    v55 = *(a1 + 136);
    v60 = 0;
    v59 = 0;
    CMBlockBufferCopyDataBytes(*(v54 + 440), 12 * v55, 0xCuLL, &v59);
    v56 = bswap32(v60);
    *a3 = v56;
    if (v56 < 1)
    {
      goto LABEL_56;
    }

    v57 = *(*(a1 + 8) + 56);
    if (v57)
    {
      v57 = CFArrayGetCount(v57);
    }

    if (v57 < v56)
    {
LABEL_56:
      locateChunk_cold_1(&v59);
    }

    else
    {
LABEL_43:
      v58 = bswap32(v50) + (v51 - v52) / v53 - 1;
      if (v58 < 0)
      {
LABEL_48:
        locateChunk_cold_8(&v59);
        return v59;
      }

      if (v58 >= (*(*(a1 + 8) + 624))())
      {
        locateChunk_cold_2(&v59);
      }

      else
      {
        if (*(a1 + 80) <= *(*(a1 + 8) + 288))
        {
          result = 0;
          *a2 = v58;
          return result;
        }

        locateChunk_cold_3(&v59);
      }
    }
  }

  return v59;
}

double CheckChunkNumber(uint64_t a1, int a2)
{
  if (a2 < 0 || (*(a1 + 624))() <= a2)
  {
    emitter = fig_log_get_emitter();

    return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 4294954448, "<<< FFR_Movie >>>", 1067, v2);
  }

  return result;
}

uint64_t sgffr_getContiguousSampleOffsetAndSize(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(*(CMBaseObjectGetVTable() + 16) + 144);
  if (v6)
  {
    v7 = v6(a1, a2, a3, 0, 0);
    if (!v7)
    {
      return v7;
    }
  }

  else
  {
    v7 = 4294954514;
  }

  fig_log_get_emitter();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v9, v10, v11);
  return v7;
}

uint64_t sgffr_getPTSAndDTSAndDuration(uint64_t a1, uint64_t a2, CMTime *a3)
{
  v7 = *(*(CMBaseObjectGetVTable() + 16) + 40);
  if (!v7)
  {
    v8 = 4294954514;
    goto LABEL_8;
  }

  v8 = v7(a2, a3 + 1);
  if (v8)
  {
LABEL_8:
    emitter = fig_log_get_emitter();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, v8, "<<<< SampleGen >>>>", 1338, v3);
    return v8;
  }

  if (!*(*(CMBaseObjectGetVTable() + 16) + 48))
  {
    v12 = MEMORY[0x1E6960C70];
    *&a3[2].value = *MEMORY[0x1E6960C70];
    a3[2].epoch = *(v12 + 16);
    goto LABEL_11;
  }

  v9 = *(*(CMBaseObjectGetVTable() + 16) + 48);
  if (!v9)
  {
    v8 = 4294954514;
    goto LABEL_17;
  }

  v8 = v9(a2, a3 + 2);
  if (v8)
  {
LABEL_17:
    v15 = fig_log_get_emitter();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v15, v8, "<<<< SampleGen >>>>", 1345, v3);
    return v8;
  }

  lhs = a3[2];
  v16 = *(a1 + 88);
  CMTimeSubtract(&v18, &lhs, &v16);
  a3[2] = v18;
LABEL_11:
  v13 = *(*(CMBaseObjectGetVTable() + 16) + 56);
  if (v13)
  {
    v8 = v13(a2, a3);
    if (!v8)
    {
      return v8;
    }
  }

  else
  {
    v8 = 4294954514;
  }

  v14 = fig_log_get_emitter();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v14, v8, "<<<< SampleGen >>>>", 1357, v3);
  return v8;
}

uint64_t audioMentorRemapSBufTiming(uint64_t *a1, uint64_t a2, opaqueCMSampleBuffer *target)
{
  v6 = *a1;
  memset(&v33, 0, sizeof(v33));
  memset(&v32, 0, sizeof(v32));
  memset(&v31, 0, sizeof(v31));
  valuePtr = -1;
  v29 = **&MEMORY[0x1E6960C70];
  v28 = v29;
  v27 = v29;
  if (!*(a1 + 80))
  {
    goto LABEL_28;
  }

  CMSampleBufferGetOutputPresentationTimeStamp(&v33, target);
  CMSampleBufferGetOutputDuration(&v31, target);
  lhs.duration = v33;
  rhs = v31;
  CMTimeAdd(&v32, &lhs.duration, &rhs);
  v7 = CMGetAttachment(target, *MEMORY[0x1E6962DE8], 0);
  if (v7)
  {
    v8 = v7;
    Value = CFDictionaryGetValue(v7, *MEMORY[0x1E6962E70]);
    v10 = CFDictionaryGetValue(v8, *MEMORY[0x1E6962E68]);
    if (Value)
    {
      v11 = v10;
      if (v10)
      {
        CFNumberGetValue(Value, kCFNumberSInt32Type, &valuePtr);
        CMTimeMakeFromDictionary(&v29, v11);
        if ((*(a1 + 17) & 0x1D) == 1)
        {
          memset(&lhs, 0, sizeof(lhs));
          memset(&rhs, 0, sizeof(rhs));
          NumSamples = CMSampleBufferGetNumSamples(target);
          if ((valuePtr & 0x80000000) == 0 && NumSamples > valuePtr)
          {
            CMSampleBufferGetSampleTimingInfo(target, valuePtr, &lhs);
            presentationTimeStamp = lhs.presentationTimeStamp;
            v23 = v29;
            CMTimeAdd(&rhs, &presentationTimeStamp, &v23);
            v23 = rhs;
            v22 = *(a1 + 7);
            CMTimeSubtract(&presentationTimeStamp, &v23, &v22);
            epoch = presentationTimeStamp.epoch;
            rhs = presentationTimeStamp;
            *(a1 + 2) = *&presentationTimeStamp.value;
            a1[6] = epoch;
          }
        }
      }
    }
  }

  if ((*(a1 + 5) & 0x1D) == 1 && (lhs.duration = v33, rhs = *(a1 + 1), CMTimeCompare(&lhs.duration, &rhs) < 0))
  {
    v15 = 0;
    v14 = 1;
  }

  else
  {
    if ((*(a1 + 11) & 0x1D) == 1)
    {
      *&lhs.duration.value = *(a1 + 2);
      lhs.duration.epoch = a1[6];
      rhs = v33;
      v14 = CMTimeCompare(&lhs.duration, &rhs) > 0;
    }

    else
    {
      v14 = 1;
    }

    v15 = 1;
  }

  if ((*(a1 + 11) & 0x1D) == 1 && (*&lhs.duration.value = *(a1 + 2), lhs.duration.epoch = a1[6], rhs = v32, CMTimeCompare(&lhs.duration, &rhs) < 0))
  {
    v16 = 0;
    if (v14)
    {
LABEL_20:
      if ((v15 & 1) == 0)
      {
        v17 = *MEMORY[0x1E6960560];
        rhs = *(a1 + 1);
        presentationTimeStamp = v33;
        CMTimeSubtract(&lhs.duration, &rhs, &presentationTimeStamp);
        audioMentorSetAttachmentAsFigTimeDictionary(target, v17, &lhs.duration);
      }

      if ((v16 & 1) == 0)
      {
        v18 = *MEMORY[0x1E6960558];
        rhs = v32;
        presentationTimeStamp = *(a1 + 4);
        CMTimeSubtract(&lhs.duration, &rhs, &presentationTimeStamp);
        audioMentorSetAttachmentAsFigTimeDictionary(target, v18, &lhs.duration);
      }

      goto LABEL_28;
    }
  }

  else if ((*(a1 + 5) & 0x1D) != 1 || (lhs.duration = v32, rhs = *(a1 + 1), CMTimeCompare(&lhs.duration, &rhs) >= 1))
  {
    v16 = 1;
    if (v14)
    {
      goto LABEL_20;
    }
  }

  v19 = *MEMORY[0x1E6960560];
  lhs.duration = v31;
  audioMentorSetAttachmentAsFigTimeDictionary(target, v19, &lhs.duration);
  lhs.duration = v33;
  rhs = *(a1 + 1);
  if (CMTimeCompare(&lhs.duration, &rhs) <= 0)
  {
    *&lhs.duration.value = *(a1 + 1);
    lhs.duration.epoch = a1[3];
    CMSampleBufferSetOutputPresentationTimeStamp(target, &lhs.duration);
  }

LABEL_28:
  if (*(a1 + 81))
  {
    CMSetAttachment(target, *MEMORY[0x1E6960520], *MEMORY[0x1E695E4D0], 1u);
  }

  CMSampleBufferGetOutputPresentationTimeStamp(&v28, target);
  CMSampleBufferGetOutputDuration(&v27, target);
  rhs = v28;
  presentationTimeStamp = v27;
  CMTimeAdd(&lhs.duration, &rhs, &presentationTimeStamp);
  *(v6 + 332) = *&lhs.duration.value;
  *(v6 + 348) = lhs.duration.epoch;
  FigSimpleMutexLock();
  v20 = *(v6 + 56);
  if (v20)
  {
    v20(*(v6 + 64), a2, target);
  }

  FigSimpleMutexUnlock();
  return 0;
}

void audioMentorSetAttachmentAsFigTimeDictionary(const void *a1, const __CFString *a2, CMTime *a3)
{
  v5 = *MEMORY[0x1E695E480];
  v8 = *a3;
  v6 = CMTimeCopyAsDictionary(&v8, v5);
  if (v6)
  {
    v7 = v6;
    CMSetAttachment(a1, a2, v6, 1u);
    CFRelease(v7);
  }
}

uint64_t editMentorRemapSampleBufferTiming(uint64_t a1, const void *a2, opaqueCMSampleBuffer *a3)
{
  v94 = *MEMORY[0x1E69E9840];
  cf = 0;
  if (editMentorChildOrderRefIsCurrent_RetainParentOrder(a1, a2, &cf, 0))
  {
    v55 = *(a1 + 232);
    v67 = **&MEMORY[0x1E6960C70];
    v66 = v67;
    v65 = v67;
    v64 = v67;
    v63 = v67;
    v62 = v67;
    v61 = v67;
    CMSampleBufferGetOutputPresentationTimeStamp(time1, a3);
    v68 = *time1;
    v6 = *&time1[16];
    CMSampleBufferGetOutputDuration(&v67, a3);
    *lhs = v68;
    *&lhs[16] = v6;
    rhs.start = v67;
    CMTimeAdd(time1, lhs, &rhs.start);
    *&rhs.start.value = *time1;
    v7 = *&time1[16];
    *lhs = v68;
    *&lhs[16] = v6;
    editMentorSelectEditForTimeInConsolidatedEdit(a1, lhs, 1, time1);
    v74 = *time1;
    v90 = *&time1[24];
    *v91 = *&time1[40];
    v8 = *&time1[16];
    *&v91[16] = v84;
    v72 = v86;
    v9 = v85;
    v73 = v87;
    rhs.start.epoch = v7;
    editMentorSelectEditForTimeInConsolidatedEdit(a1, &rhs, 1, time1);
    v71 = *time1;
    v88 = *&time1[24];
    *v89 = *&time1[40];
    *&v89[16] = v84;
    v69 = v86;
    v70 = v87;
    if (v8 == v6)
    {
      v10 = v9;
    }

    else
    {
      v10 = v6;
    }

    if (*&time1[16] == v7)
    {
      v11 = v85;
    }

    else
    {
      v11 = v7;
    }

    *time1 = v74;
    *&time1[16] = v6;
    *lhs = *&v91[8];
    v56 = v10;
    *&lhs[16] = v10;
    v58 = CMTimeCompare(time1, lhs);
    *&v75.value = v90;
    v75.epoch = *v91;
    *time1 = v71;
    *&time1[24] = v88;
    *&time1[16] = v7;
    *&time1[40] = *v89;
    CMTimeRangeGetEnd(lhs, time1);
    *time1 = v74;
    *&time1[16] = v6;
    CMTimeSubtract(&v75, lhs, time1);
    *time1 = *&v89[8];
    *&time1[24] = v69;
    *&time1[16] = v11;
    *&time1[40] = v70;
    CMTimeRangeGetEnd(lhs, time1);
    *&rhs.start.value = *&v89[8];
    v57 = v11;
    rhs.start.epoch = v11;
    CMTimeSubtract(time1, lhs, &rhs.start);
    v60 = v75;
    memset(time1, 0, 48);
    CMSampleBufferGetOutputPresentationTimeStamp(lhs, a3);
    v81 = *lhs;
    v12 = *&lhs[16];
    CMSampleBufferGetOutputDuration(&v80, a3);
    v13 = *MEMORY[0x1E695E4D0];
    v14 = CMGetAttachment(a3, *MEMORY[0x1E6960520], 0);
    v54 = v13;
    if (v13 == v14)
    {
      *&rhs.start.value = v81;
      rhs.start.epoch = v12;
      v78.start = v80;
      CMTimeSubtract(lhs, &rhs.start, &v78.start);
      v81 = *lhs;
      v12 = *&lhs[16];
    }

    *lhs = v81;
    *&lhs[16] = v12;
    rhs.start = v80;
    CMTimeRangeMake(time1, lhs, &rhs.start);
    rhs.duration = v60;
    rhs.start.epoch = v12;
    v78 = *time1;
    *&rhs.start.value = v74;
    CMTimeRangeGetIntersection(lhs, &rhs, &v78);
    v92 = *lhs;
    v15 = *&lhs[12];
    v93 = *&lhs[8];
    if (lhs[12])
    {
      v53 = *&lhs[36];
      if ((lhs[36] & 1) != 0 && !*&lhs[40])
      {
        v52 = *&lhs[24];
        if ((*&lhs[24] & 0x8000000000000000) == 0)
        {
          v50 = *&lhs[16];
          v51 = *&lhs[32];
          *lhs = v74;
          *&lhs[24] = v60;
          *&lhs[16] = v12;
          rhs = *time1;
          if (!CMTimeRangeContainsTimeRange(lhs, &rhs))
          {
            *lhs = v52;
            *&lhs[8] = v51;
            *&lhs[12] = v53;
            *&lhs[16] = 0;
            *&rhs.start.value = *MEMORY[0x1E6960CC0];
            rhs.start.epoch = *(MEMORY[0x1E6960CC0] + 16);
            if (CMTimeCompare(lhs, &rhs.start))
            {
              memset(&rhs, 0, 24);
              *lhs = v92;
              *&lhs[8] = v93;
              *&lhs[12] = v15;
              *&lhs[16] = v50;
              *&v78.start.value = *time1;
              v78.start.epoch = *&time1[16];
              CMTimeSubtract(&rhs.start, lhs, &v78.start);
              memset(&v78, 0, 24);
              *lhs = *time1;
              *&lhs[16] = *&time1[16];
              *&lhs[32] = *&time1[32];
              CMTimeRangeGetEnd(&outputPresentationTimeStamp, lhs);
              *lhs = v92;
              *&lhs[8] = v93;
              *&lhs[12] = v15;
              *&lhs[16] = v50;
              *&lhs[24] = v52;
              *&lhs[32] = v51;
              *&lhs[36] = v53;
              *&lhs[40] = 0;
              CMTimeRangeGetEnd(&valuePtr, lhs);
              CMTimeSubtract(&v78.start, &outputPresentationTimeStamp, &valuePtr);
              valuePtr.value = 0x3FF0000000000000;
              v16 = CMGetAttachment(a3, *MEMORY[0x1E6960540], 0);
              if (v16)
              {
                v17 = v16;
                TypeID = CFNumberGetTypeID();
                if (TypeID == CFGetTypeID(v17))
                {
                  CFNumberGetValue(v17, kCFNumberDoubleType, &valuePtr);
                  rhs.start.value = (*&valuePtr.value * rhs.start.value);
                  v78.start.value = (*&valuePtr.value * v78.start.value);
                }
              }

              if (v54 == v14)
              {
                if (rhs.start.value >= 1)
                {
                  v34 = *MEMORY[0x1E6960558];
                  *lhs = *&rhs.start.value;
                  *&lhs[16] = rhs.start.epoch;
                  editMentorAddToTrimAttachment(a3, lhs, v34);
                }

                if (v78.start.value >= 1)
                {
                  v35 = *MEMORY[0x1E6960560];
                  *lhs = *&v78.start.value;
                  *&lhs[16] = v78.start.epoch;
                  editMentorAddToTrimAttachment(a3, lhs, v35);
                }

                *lhs = v92;
                *&lhs[8] = v93;
                *&lhs[12] = v15;
                *&lhs[16] = v50;
                *&lhs[24] = v52;
                *&lhs[32] = v51;
                *&lhs[36] = v53;
                *&lhs[40] = 0;
                CMTimeRangeGetEnd(&outputPresentationTimeStamp, lhs);
                p_outputPresentationTimeStamp = &outputPresentationTimeStamp;
              }

              else
              {
                if (rhs.start.value >= 1)
                {
                  v18 = *MEMORY[0x1E6960560];
                  *lhs = *&rhs.start.value;
                  *&lhs[16] = rhs.start.epoch;
                  editMentorAddToTrimAttachment(a3, lhs, v18);
                }

                if (v78.start.value >= 1)
                {
                  v19 = *MEMORY[0x1E6960558];
                  *lhs = *&v78.start.value;
                  *&lhs[16] = v78.start.epoch;
                  editMentorAddToTrimAttachment(a3, lhs, v19);
                }

                *lhs = v92;
                *&lhs[8] = v93;
                *&lhs[12] = v15;
                *&lhs[16] = v50;
                p_outputPresentationTimeStamp = lhs;
              }

              CMSampleBufferSetOutputPresentationTimeStamp(a3, p_outputPresentationTimeStamp);
            }
          }
        }
      }
    }

    CMSampleBufferGetOutputPresentationTimeStamp(&v66, a3);
    CMSampleBufferGetOutputDuration(&v65, a3);
    *time1 = v66;
    *lhs = v65;
    CMTimeAdd(&v64, time1, lhs);
    v63 = v66;
    rhs.start = v66;
    *time1 = v74;
    *&time1[24] = v90;
    *&time1[16] = v6;
    *&time1[40] = *v91;
    *lhs = *&v91[8];
    *&lhs[24] = v72;
    *&lhs[16] = v56;
    *&lhs[40] = v73;
    editMentorMapTimeFromRangeToRange(&rhs.start, time1, lhs, &v63);
    v61 = v64;
    rhs.start = v64;
    *time1 = v71;
    *&time1[24] = v88;
    *&time1[16] = v7;
    *&time1[40] = *v89;
    *lhs = *&v89[8];
    *&lhs[24] = v69;
    *&lhs[16] = v57;
    *&lhs[40] = v70;
    editMentorMapTimeFromRangeToRange(&rhs.start, time1, lhs, &v61);
    *time1 = v61;
    *lhs = v63;
    CMTimeSubtract(&v62, time1, lhs);
    *time1 = v62;
    *lhs = *MEMORY[0x1E6960CC0];
    *&lhs[16] = *(MEMORY[0x1E6960CC0] + 16);
    if (CMTimeCompare(time1, lhs))
    {
      *time1 = v62;
      *lhs = v65;
      v36 = CMTimeCompare(time1, lhs) != 0;
    }

    else
    {
      v36 = 0;
    }

    if (v58 || v36)
    {
      v37 = !v36;
      if (v55)
      {
        v37 = 1;
      }

      if ((v37 & 1) == 0)
      {
        rhs.start.value = 0x3FF0000000000000;
        *time1 = v62;
        *lhs = v65;
        Seconds = CMTimeGetSeconds(time1);
        *time1 = *lhs;
        *&time1[16] = *&lhs[16];
        v39 = CMTimeGetSeconds(time1);
        v40 = *MEMORY[0x1E6960540];
        v41 = Seconds / v39;
        v42 = CMGetAttachment(a3, *MEMORY[0x1E6960540], 0);
        if (v42)
        {
          v43 = v42;
          v44 = CFGetTypeID(v42);
          if (v44 == CFNumberGetTypeID())
          {
            CFNumberGetValue(v43, kCFNumberDoubleType, &rhs);
          }
        }

        *&rhs.start.value = *&rhs.start.value / v41;
        v45 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberDoubleType, &rhs);
        if (v45)
        {
          v46 = v45;
          CMSetAttachment(a3, v40, v45, 1u);
          CFRelease(v46);
        }
      }

      *time1 = v63;
      CMSampleBufferSetOutputPresentationTimeStamp(a3, time1);
    }

    FigSimpleMutexLock();
    v47 = *(a1 + 240);
    if (v47)
    {
      v33 = v47(*(a1 + 256), cf, a3);
    }

    else
    {
      v33 = 0;
    }

    FigSimpleMutexUnlock();
  }

  else
  {
    SampleAttachmentsArray = CMSampleBufferGetSampleAttachmentsArray(a3, 1u);
    if (SampleAttachmentsArray)
    {
      v22 = SampleAttachmentsArray;
      Count = CFArrayGetCount(SampleAttachmentsArray);
      if (dword_1EAF16E38)
      {
        LODWORD(rhs.start.value) = 0;
        LOBYTE(v78.start.value) = 0;
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        value = rhs.start.value;
        value_low = LOBYTE(v78.start.value);
        if (os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, v78.start.value))
        {
          v27 = value;
        }

        else
        {
          v27 = value & 0xFFFFFFFE;
        }

        if (v27)
        {
          v28 = *(a1 + 296);
          *lhs = 136316162;
          *&lhs[4] = "editMentorRemapSampleBufferTiming";
          *&lhs[12] = 2048;
          *&lhs[14] = a1;
          *&lhs[22] = 2114;
          *&lhs[24] = v28;
          *&lhs[32] = 2048;
          *&lhs[34] = a2;
          *&lhs[42] = 2048;
          *&lhs[44] = a3;
          _os_log_send_and_compose_impl(v27, 0, time1, 128, &dword_1962D5000, os_log_and_send_and_compose_flags_and_os_log_type, value_low, "<<<< EditMentor >>>> %s: (%p) %{public}@: order mismatch (%p), cannot remap sample buffer %p", lhs, 52);
        }

        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      if (Count >= 1)
      {
        v29 = 0;
        v30 = *MEMORY[0x1E6960410];
        v31 = *MEMORY[0x1E695E4D0];
        do
        {
          ValueAtIndex = CFArrayGetValueAtIndex(v22, v29);
          CFDictionarySetValue(ValueAtIndex, v30, v31);
          ++v29;
        }

        while (Count != v29);
      }
    }

    v33 = 0;
  }

  if (cf)
  {
    CFRelease(cf);
  }

  return v33;
}

uint64_t editMentorChildOrderRefIsCurrent_RetainParentOrder(uint64_t a1, const void *a2, CFTypeRef *a3, _DWORD *a4)
{
  v13 = *MEMORY[0x1E69E9840];
  *a3 = 0;
  FigSimpleMutexLock();
  if (!a2 || (v8 = *(a1 + 328)) == 0 || !CFEqual(a2, v8))
  {
    v10 = 0;
    if (!a4)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  v9 = *(a1 + 568);
  if (v9)
  {
    *a3 = CFRetain(v9);
  }

  v10 = 1;
  if (a4)
  {
LABEL_9:
    *a4 = *(a1 + 320);
  }

LABEL_10:
  if (dword_1EAF16E38 >= 2)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  FigSimpleMutexUnlock();
  return v10;
}

uint64_t sbcbq_postNotification(uint64_t a1, const void *a2, const void *a3, uint64_t a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  if (*(DerivedStorage + 8))
  {
    FigSimpleMutexUnlock();
    CMNotificationCenterGetDefaultLocalCenter();

    return CMNotificationCenterPostNotification();
  }

  else
  {
    CFArrayAppendValue(*(DerivedStorage + 160), a2);
    if (a3)
    {
      v8 = a3;
    }

    else
    {
      v8 = *MEMORY[0x1E695E738];
    }

    CFArrayAppendValue(*(DerivedStorage + 160), v8);
    FigSimpleMutexUnlock();
    return 0;
  }
}

uint64_t FigPlayerCopyPlayQueueItem(uint64_t a1, uint64_t a2)
{
  v4 = *(*(CMBaseObjectGetVTable() + 16) + 32);
  if (!v4)
  {
    return 4294954514;
  }

  return v4(a1, 0, a2);
}

uint64_t fpm_UpdateTimerProc(uint64_t a1)
{
  FigRetainProxyLockMutex();
  if (!FigRetainProxyIsInvalidated())
  {
    Owner = FigRetainProxyGetOwner();
    MutableBytePtr = CFDataGetMutableBytePtr(Owner);
    FigSimpleMutexLock();
    os_retain(*(MutableBytePtr + 1070));
    voucher_adopt();
    fpm_updateCacheAndNotify(MutableBytePtr);
    v3 = voucher_adopt();
    os_release(v3);
    FigSimpleMutexUnlock();
  }

  return FigRetainProxyUnlockMutex();
}

void itemasync_CopyProperty(const void *a1, const void *a2, const void *a3, uint64_t *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v28 = 0;
  if (!a4)
  {
    emitter = fig_log_get_emitter();
    v12 = v4;
    v13 = 4294954516;
    v14 = 3452;
    goto LABEL_5;
  }

  v10 = DerivedStorage;
  *a4 = 0;
  if (!*DerivedStorage)
  {
    if (!a2)
    {
      emitter = fig_log_get_emitter();
      v12 = v4;
      v13 = 4294954516;
      v14 = 3459;
      goto LABEL_5;
    }

    v15 = FigCFWeakReferenceHolderCopyReferencedObject();
    if (!v15)
    {
      itemasync_CopyProperty_cold_3();
      return;
    }

    v16 = v15;
    v17 = CMBaseObjectGetDerivedStorage();
    if (*v17)
    {
      itemasync_CopyProperty_cold_1(&v29);
      v20 = 0;
      goto LABEL_35;
    }

    v18 = v17;
    if (CFEqual(a2, @"Status"))
    {
      FigSimpleMutexLock();
      if (*(v10 + 2) || v10[2])
      {
        *a4 = FigCFNumberCreateSInt32();
      }

      FigSimpleMutexUnlock();
      v20 = 0;
      goto LABEL_35;
    }

    if (playerasync_createCommand(v16, 25, a1, &v28))
    {
      v20 = v28;
      goto LABEL_35;
    }

    v19 = CFRetain(a2);
    v20 = v28;
    *(v28 + 32) = v19;
    if (a3)
    {
      v21 = CFRetain(a3);
    }

    else
    {
      v21 = 0;
    }

    v20[5] = v21;
    v20[6] = a4;
    v22 = *(v18 + 4);
    v23 = CFEqual(a2, @"PlayableTimeIntervals");
    if (v22 && v23)
    {
      if (!*(v10 + 2))
      {
        itemasync_CopyProperty_cold_2(&v29);
        goto LABEL_35;
      }

      v24 = v16;
      v25 = v20;
      v26 = 1;
    }

    else
    {
      v27 = CFEqual(a2, @"BasicsReadyForInspection");
      if ((!v22 || !v27) && !CFEqual(a2, @"Timebase"))
      {
        playerasync_runSynchronousCommand(v16, v20);
        goto LABEL_35;
      }

      FigSimpleMutexLock();
      while (!*(v10 + 2) && !v10[2])
      {
        FigConditionVariableWaitRelative();
      }

      FigSimpleMutexUnlock();
      v24 = v16;
      v25 = v20;
      v26 = 0;
    }

    playerasync_runImmediateCommand(v24, v25, v26);
LABEL_35:
    fpa_releaseCommand(v20);
    CFRelease(v16);
    return;
  }

  emitter = fig_log_get_emitter();
  v12 = v4;
  v13 = 4294954511;
  v14 = 3456;
LABEL_5:

  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, v13, "<<<< Async >>>>", v14, v12);
}

uint64_t fpm_updateCache(uint64_t a1)
{
  v82 = *MEMORY[0x1E69E9840];
  memset(&v76, 0, sizeof(v76));
  memset(&v77, 0, sizeof(v77));
  CMTimebaseGetTime(&v76, *(a1 + 24));
  v75 = **&MEMORY[0x1E6960C68];
  v73 = v75;
  BOOLean = 0;
  HIBYTE(v71) = 1;
  memset(&v70, 0, sizeof(v70));
  v2 = *(a1 + 96);
  *&v68[24] = 0;
  v69 = 0x7FFFFFFFFFFFFFFFLL;
  *v68 = *(a1 + 240);
  *&v68[16] = *(a1 + 256);
  v3 = *(a1 + 313);
  *(a1 + 313) = 0;
  v4 = *MEMORY[0x1E695E480];
  CMBaseObject = CMByteStreamGetCMBaseObject();
  v6 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v6 && !v6(CMBaseObject, *MEMORY[0x1E695FF80], v4, &BOOLean) && (Value = CFBooleanGetValue(BOOLean), CFRelease(BOOLean), Value))
  {
    v77 = **&MEMORY[0x1E6960CC0];
    epoch = v77.epoch;
    *(a1 + 216) = *&v77.value;
    *(a1 + 232) = epoch;
    v7 = 1;
  }

  else
  {
    v7 = 0;
    if (v3)
    {
      *&v77.value = *(a1 + 216);
      v8 = *(a1 + 232);
    }

    else
    {
      *&v77.value = *(a1 + 240);
      v8 = *(a1 + 256);
    }

    v77.epoch = v8;
  }

  Duration = FigFormatReaderUtilityGetDuration(*(a1 + 8), v7, &v73);
  if (v7 && !Duration && (OUTLINED_FUNCTION_29(), v42))
  {
    *(a1 + 240) = *&v73.value;
    v10 = v73.epoch;
  }

  else
  {
    fireTime = v77;
    result = fpm_getPlayableDurationFromTime(a1, &fireTime, &v75, &v71 + 7, &v69, &v68[24]);
    if (result)
    {
      return result;
    }

    time = v77;
    v64 = *&v75.value;
    OUTLINED_FUNCTION_25_2();
    CMTimeAdd(v57, v55, v56);
    *(a1 + 240) = *&fireTime.value;
    v10 = fireTime.epoch;
  }

  *(a1 + 256) = v10;
  *(a1 + 192) = dispatch_time(0, 0);
  *(a1 + 184) = v2;
  OUTLINED_FUNCTION_29();
  if (v42)
  {
    if (OUTLINED_FUNCTION_14_4(v11, v12, v13, v14, v15, v16, v17, v18, v62, v63, v64, *(&v64 + 1), v66, v67, *v68, *&v68[8], *&v68[16], v69, v70.value, *&v70.timescale, v70.epoch, v71, BOOLean, *&v73.value, v73.epoch, v74, v75.value, *&v75.timescale, v75.epoch, v76.value, *&v76.timescale, v76.epoch, v77.value, *&v77.timescale, v77.epoch, v78, time.value) >= 1)
    {
      *(a1 + 240) = v73;
    }

    OUTLINED_FUNCTION_5_11();
    CMTimeConvertScale(&fireTime, &time, v19, kCMTimeRoundingMethod_RoundHalfAwayFromZero);
    *(a1 + 240) = fireTime;
  }

  v20 = *(a1 + 8568);
  OUTLINED_FUNCTION_5_11();
  v65 = *(a1 + 216);
  OUTLINED_FUNCTION_25_2();
  CMTimeSubtract(v23, v21, v22);
  Seconds = CMTimeGetSeconds(&fireTime);
  if (v20)
  {
    v33 = Seconds;
    VTable = CMBaseObjectGetVTable();
    v35 = *(VTable + 16);
    v24 = VTable + 16;
    v36 = *(v35 + 56);
    if (v36)
    {
      v24 = v36(v20, 0x1F0B645D8, 0x1F0B3F4F8, (v33 * 1000.0), 0);
    }
  }

  if (*(a1 + 104) == 3 || HIBYTE(v71) || (OUTLINED_FUNCTION_14_4(v24, v25, v26, v27, v28, v29, v30, v31, v62, v63, v65, *(&v65 + 1), v66, v67, *v68, *&v68[8], *&v68[16], v69, v70.value, *&v70.timescale, v70.epoch, v71, BOOLean, *&v73.value, v73.epoch, v74, v75.value, *&v75.timescale, v75.epoch, v76.value, *&v76.timescale, v76.epoch, v77.value, *&v77.timescale, v77.epoch, v78, time.value) & 0x80000000) == 0)
  {
    v37 = *(a1 + 24);
    v38 = *(a1 + 304);
    *&fireTime.value = *MEMORY[0x1E6960C70];
    v39 = *(MEMORY[0x1E6960C70] + 16);
  }

  else
  {
    CMTimeMake(&fireTime, 100, 1000);
    OUTLINED_FUNCTION_5_11();
    CMTimeSubtract(&v70, &time, &fireTime);
    fireTime = v76;
    time = v70;
    v44 = CMTimeCompare(&fireTime, &time);
    v37 = *(a1 + 24);
    if ((v44 & 0x80000000) == 0)
    {
      if (CMTimebaseGetRate(v37) > 0.0)
      {
        *(a1 + 104) = 3;
        if (dword_1EAF16BF0)
        {
          os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          v46 = os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
          v47 = OUTLINED_FUNCTION_109_0(v46);
          if (v47)
          {
            v52 = *(a1 + 108);
            LODWORD(time.value) = 136315650;
            *(&time.value + 4) = "fpm_updateCache";
            LOWORD(time.flags) = 2048;
            *(&time.flags + 2) = a1;
            HIWORD(time.epoch) = 2048;
            v80 = v52;
            OUTLINED_FUNCTION_18_3(v47, v48, &fireTime, v49, &dword_1962D5000, v50, v51, "<< FigPlayMonitor >> %s: [%p] sending kFigPlayabilityMonitorNotification_StallWarning (progress %1.5f)");
          }

          OUTLINED_FUNCTION_7();
          fig_log_call_emit_and_clean_up_after_send_and_compose();
        }

        FigRetainProxyRetain();
        CMNotificationCenterGetDefaultLocalCenter();
        OUTLINED_FUNCTION_26_4();
        OUTLINED_FUNCTION_0_20();
        FigDeferNotificationToDispatchQueue();
      }

      goto LABEL_25;
    }

    v38 = *(a1 + 304);
    *&fireTime.value = *&v70.value;
    v39 = v70.epoch;
  }

  fireTime.epoch = v39;
  CMTimebaseSetTimerDispatchSourceNextFireTime(v37, v38, &fireTime, 0);
LABEL_25:
  if (*(a1 + 312))
  {
    *(a1 + 312) = 0;
    fpm_ensureUpdatePrimed(a1);
  }

  result = *(a1 + 16);
  if (result)
  {
    CMByteStreamGetCMBaseObject();
    FigCRABSGetClassID();
    result = CMBaseObjectIsMemberOfClass();
    if (result)
    {
      fireTime = *v68;
      OUTLINED_FUNCTION_5_11();
      if (CMTimeCompare(&fireTime, &time))
      {
        return 0;
      }

      v41 = v69;
      v42 = *(a1 + 104) == 1 || v69 == 0x7FFFFFFFFFFFFFFFLL;
      if (v42)
      {
        return 0;
      }

      v43 = *(a1 + 264);
      if (v69 == v43)
      {
        return 0;
      }

      else
      {
        if (v43 != 0x7FFFFFFFFFFFFFFFLL)
        {
          v58 = *(a1 + 272);
          fireTime.value = *(a1 + 264);
          *&fireTime.timescale = v58;
          FigCRABSUnhintActiveRanges_0(*(a1 + 16), &fireTime);
          v41 = v69;
        }

        fireTime.value = v41;
        *&fireTime.timescale = *&v68[24];
        v59 = *(a1 + 16);
        v60 = *(*(CMBaseObjectGetVTable() + 24) + 8);
        if (v60)
        {
          v60(v59, 16, 1, &fireTime);
        }

        result = 0;
        v61 = *&v68[24];
        *(a1 + 264) = v69;
        *(a1 + 272) = v61;
      }
    }
  }

  return result;
}

uint64_t sbcbq_sendSampleBuffer(uint64_t a1, const void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  v4 = 136;
  if (!*(DerivedStorage + 8))
  {
    v4 = 144;
  }

  v5 = CMBufferQueueEnqueue(*(DerivedStorage + v4), a2);
  FigSimpleMutexUnlock();
  return v5;
}

void audioMentorThreadFinishPreroll(uint64_t a1, uint64_t a2, const void *a3)
{
  if ((*(a1 + 264) | 2) == 3)
  {
    v4 = FigMentorPrerollCompletePayloadCreate(a3, a2);
    if (!*a1)
    {
      CMNotificationCenterGetDefaultLocalCenter();
      CMNotificationCenterPostNotification();
    }

    if (v4)
    {
      CFRelease(v4);
    }

    *(a1 + 264) = *(a1 + 268);
    if (*MEMORY[0x1E695FF58] == 1)
    {

      kdebug_trace();
    }
  }
}

__CFDictionary *FigMentorPrerollCompletePayloadCreate(const void *a1, uint64_t a2)
{
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v4 = Mutable;
  if (a1)
  {
    CFDictionarySetValue(Mutable, @"MentorPrerollComplete_Order", a1);
  }

  FigCFDictionarySetInt32();
  return v4;
}

uint64_t FigSampleCursorCompareInDecodeOrder(uint64_t a1, uint64_t a2)
{
  v4 = *(CMBaseObjectGetVTable() + 16);
  if (v4)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  v6 = *(CMBaseObjectGetVTable() + 16);
  if (v6)
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  if (v5 != v7 || !*(v5 + 32))
  {
    return 0;
  }

  v9 = *(v7 + 32);

  return v9(a1, a2);
}

uint64_t FigSampleCursorCompareInDecodeOrder_0(uint64_t a1, uint64_t a2)
{
  v4 = *(CMBaseObjectGetVTable() + 16);
  if (v4)
  {
    v5 = v4;
    if (!a2)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v5 = 0;
    if (!a2)
    {
LABEL_7:
      v7 = 0;
      goto LABEL_8;
    }
  }

  v6 = *(CMBaseObjectGetVTable() + 16);
  if (!v6)
  {
    goto LABEL_7;
  }

  v7 = v6;
LABEL_8:
  if (v5 != v7 || !*(v5 + 32))
  {
    return 0;
  }

  v9 = *(v7 + 32);

  return v9(a1, a2);
}

uint64_t FigCachedFileByteStreamGetAvailableLengthAtOffset(uint64_t a1, uint64_t a2, uint64_t a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a3)
  {
    v6 = *(DerivedStorage + 8);
    v7 = *(*(CMBaseObjectGetVTable() + 16) + 24);
    if (v7)
    {

      return v7(v6, a2, a3);
    }

    else
    {
      return 4294954514;
    }
  }

  else
  {
    FigCachedFileByteStreamGetAvailableLengthAtOffset_cold_1(&v9);
    return v9;
  }
}

uint64_t itemfig_PlayableRangeChanged(uint64_t a1, const void *a2, uint64_t a3, uint64_t a4, const __CFDictionary *a5)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  CMBaseObjectGetDerivedStorage();
  if (a5)
  {
    Value = CFDictionaryGetValue(a5, @"FPM_IsFilling");
  }

  else
  {
    Value = *MEMORY[0x1E695E4C0];
  }

  if (*MEMORY[0x1E695E4D0] == Value)
  {
    FigSimpleMutexLock();
    *(DerivedStorage + 1456) = 0;
    FigSimpleMutexUnlock();
  }

  CFRetain(a2);

  return FigDeferNotificationToDispatchQueue();
}

uint64_t itemfig_LikelyToKeepUp(uint64_t a1, const void *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  if (*(DerivedStorage + 1472))
  {
    if (*MEMORY[0x1E695FF50])
    {
      v4 = fig_log_handle();
      if (os_signpost_enabled(v4))
      {
        if (a2)
        {
          v5 = (CMBaseObjectGetDerivedStorage() + 2096);
        }

        else
        {
          v5 = "";
        }

        *buf = 136315394;
        v9 = v5;
        v10 = 2048;
        v11 = a2;
        _os_signpost_emit_with_name_impl(&dword_1962D5000, v4, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "PlayerPerformance_ItemLikelyToKeepUp", " enableTelemetry=YES item=%s, itemRef=%llu", buf, 0x16u);
      }
    }

    if (*MEMORY[0x1E695FF40])
    {
      if (a2)
      {
        v6 = (CMBaseObjectGetDerivedStorage() + 2096);
      }

      else
      {
        v6 = "";
      }

      fig_gm_ktrace_wrapper(538509316, 2, 2, 0, 3, 3, "item=%s, itemRef=%llu", v6, a2);
    }
  }

  *(DerivedStorage + 1472) = 0;
  FigSimpleMutexUnlock();
  CFRetain(a2);
  return FigDeferNotificationToDispatchQueue();
}

void itemfig_PrerollComplete(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const __CFDictionary *a5)
{
  CMBaseObjectGetDerivedStorage();
  values = 0;
  if (a5 && ((Value = CFDictionaryGetValue(a5, @"PrerollToken"), valuePtr = 0, DerivedStorage = CMBaseObjectGetDerivedStorage(), FigSimpleMutexLock(), *(DerivedStorage + 512) == Value) ? (p_valuePtr = (DerivedStorage + 540), valuePtr = *(DerivedStorage + 540)) : (p_valuePtr = &valuePtr), *p_valuePtr = 0, FigSimpleMutexUnlock(), valuePtr))
  {
    v9 = *MEMORY[0x1E695E480];
    values = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberIntType, &valuePtr);
    v10 = CFDictionaryCreate(v9, &kFigPlayerParameter_PrerollID, &values, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  }

  else
  {
    v10 = 0;
  }

  CMNotificationCenterGetDefaultLocalCenter();
  CMNotificationCenterPostNotification();
  if (values)
  {
    CFRelease(values);
  }

  if (v10)
  {
    CFRelease(v10);
  }
}

uint64_t bossStartTimebaseAndAudioContext(uint64_t a1, __int128 *a2, __int128 *a3, float a4, float a5)
{
  v17 = *a2;
  v18 = *(a2 + 2);
  v16 = *a3;
  v7 = bossSetPossiblyOutsourcedTimebaseRate(a1, &v17, &v16, a4, a5);
  if (!v7)
  {
    bossScheduleReachedEndCallbackForRate(a1, a4);
    bossScheduleAdvanceForOverlappedPlaybackCallbackForRate(a1, a4, v8, v9, v10, v11, v12, v13, v14);
  }

  return v7;
}

uint64_t bossSetPossiblyOutsourcedTimebaseRate(uint64_t a1, uint64_t a2, CMTime *a3, float a4, float a5)
{
  v50 = *MEMORY[0x1E69E9840];
  valuePtr = a5;
  memset(&v38, 0, sizeof(v38));
  FigSimpleMutexLock();
  if (*(a1 + 848))
  {
    LODWORD(v48.value) = 0;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (*MEMORY[0x1E695FF58] == 1)
  {
    strncpy(&__dst, (a1 + 850), 8uLL);
    kdebug_trace();
  }

  if ((*(a1 + 96) & 0x8000000000000000) != 0)
  {
    FigSimpleMutexUnlock();
    v48.value = *a2;
    flags = *(a2 + 12);
    v48.timescale = *(a2 + 8);
    epoch = *(a2 + 16);
    if (a4 != 0.0 && (flags & 0x1D) != 1 && (a3->flags & 0x1D) == 1)
    {
      CMTimebaseGetTime(&__dst, *(a1 + 120));
      v48.value = __dst.value;
      flags = __dst.flags;
      v48.timescale = __dst.timescale;
      epoch = __dst.epoch;
      if (dword_1EAF16E78)
      {
        v35 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }
    }

    if ((flags & 0x1D) != 1)
    {
      __dst = **&MEMORY[0x1E6960C70];
      immediateSourceTime = __dst;
      return CMTimebaseSetRateAndAnchorTimeWithFlags();
    }

    v28 = CMTimebaseCopySource(*(a1 + 120));
    v29 = v28;
    if ((a3->flags & 0x1D) == 1)
    {
      HostTimeClock = CMClockGetHostTimeClock();
      __dst = *a3;
      CMSyncConvertTime(&v38, &__dst, HostTimeClock, v29);
      if (!v29)
      {
        goto LABEL_39;
      }
    }

    else
    {
      CMSyncGetTime(&v38, v28);
      if (!v29)
      {
LABEL_39:
        v32 = *(a1 + 120);
        __dst.value = v48.value;
        __dst.timescale = v48.timescale;
        __dst.flags = flags;
        __dst.epoch = epoch;
        immediateSourceTime = v38;
        return CMTimebaseSetRateAndAnchorTime(v32, a4, &__dst, &immediateSourceTime);
      }
    }

    CFRelease(v29);
    goto LABEL_39;
  }

  v10 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberFloat32Type, &valuePtr);
  ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 72), *(a1 + 96));
  v12 = ValueAtIndex;
  if (ValueAtIndex)
  {
    CFRetain(ValueAtIndex);
  }

  if (*(a1 + 80) >= 1)
  {
    v13 = 0;
    do
    {
      v14 = CFArrayGetValueAtIndex(*(a1 + 72), v13);
      if (*(v14 + 10))
      {
        if (v13 != *(a1 + 96) && v14[18] == 1936684398)
        {
          FigRenderPipelineGetFigBaseObject();
          v16 = v15;
          v17 = *(*(CMBaseObjectGetVTable() + 8) + 56);
          if (v17)
          {
            v17(v16, @"PipelineRate", v10);
          }
        }
      }

      ++v13;
    }

    while (*(a1 + 80) > v13);
  }

  FigSimpleMutexUnlock();
  CFRelease(v10);
  v18 = v12[10];
  v19 = valuePtr;
  v48 = *a2;
  *type = *&a3->value;
  *&type[16] = a3->epoch;
  v20 = *(*(CMBaseObjectGetVTable() + 16) + 8);
  if (!v20)
  {
    v21 = 4294954514;
    goto LABEL_20;
  }

  __dst = v48;
  immediateSourceTime = *type;
  v21 = v20(v18, &__dst, &immediateSourceTime, a4, v19);
  if (v21)
  {
LABEL_20:
    LODWORD(v48.value) = 0;
    type[0] = 0;
    v22 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    value = v48.value;
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      v24 = value;
    }

    else
    {
      v24 = value & 0xFFFFFFFE;
    }

    if (v24)
    {
      v25 = v12[10];
      LODWORD(immediateSourceTime.value) = 136316418;
      *(&immediateSourceTime.value + 4) = "bossSetPossiblyOutsourcedTimebaseRate";
      LOWORD(immediateSourceTime.flags) = 2048;
      *(&immediateSourceTime.flags + 2) = a1;
      HIWORD(immediateSourceTime.epoch) = 2048;
      v41 = v25;
      v42 = 2048;
      v43 = a4;
      v44 = 2048;
      v45 = valuePtr;
      v46 = 1024;
      v47 = v21;
      _os_log_send_and_compose_impl(v24, 0, &__dst, 128, &dword_1962D5000, v22, 0, "<<<< Boss >>>> %s: (%p) FigRenderPipelineSetRate on pipeline %p with timebase rate %1.3f and pipeline rate %1.3f, failed with err=%d", &immediateSourceTime, 58, v34, v36, *type, *&type[8]);
    }

    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  CFRelease(v12);
  return v21;
}

uint64_t FigAudioQueueSetParameter(uint64_t a1, uint64_t a2, AudioQueueParameterValue a3)
{
  v4 = a2;
  if (a1)
  {
    FigSimpleMutexLock();
    if (*(a1 + 16))
    {
      FigAudioQueueSetParameter_cold_1(&v14);
      v9 = v14;
    }

    else
    {
      Count = CFArrayGetCount(*(a1 + 176));
      if (Count >= 1)
      {
        v7 = Count;
        v8 = 0;
        LODWORD(v9) = 0;
        while (1)
        {
          ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 176), v8);
          if (*(ValueAtIndex + 745))
          {
LABEL_6:
            if (!v9)
            {
              v9 = FigAudioQueueTimingShimSetParameter(ValueAtIndex[5], v4, a3);
              if (v9)
              {
                goto LABEL_52;
              }
            }

            goto LABEL_26;
          }

          if (v4 > 4)
          {
            if (v4 == 5)
            {
              if (!*(a1 + 249) || *(ValueAtIndex + 189) <= 0.0)
              {
                goto LABEL_6;
              }

              v11 = 95;
              goto LABEL_24;
            }

            if (v4 != 6)
            {
              goto LABEL_6;
            }

            *(ValueAtIndex + 189) = a3;
          }

          else
          {
            if (v4 == 1)
            {
              if (!*(a1 + 248) || *(ValueAtIndex + 187) <= 0.0)
              {
                goto LABEL_6;
              }

              v11 = 94;
LABEL_24:
              *&ValueAtIndex[v11] = a3;
              goto LABEL_25;
            }

            if (v4 != 4)
            {
              goto LABEL_6;
            }

            *(ValueAtIndex + 187) = a3;
          }

          if (a3 <= 0.0)
          {
            goto LABEL_6;
          }

LABEL_25:
          LODWORD(v9) = 1;
LABEL_26:
          if (v7 == ++v8)
          {
            v12 = v9 == 0;
            goto LABEL_29;
          }
        }
      }

      v12 = 1;
LABEL_29:
      if (v4 > 4)
      {
        if (v4 == 5)
        {
          *(a1 + 249) = 0;
        }

        else if (v4 == 6)
        {
          *(a1 + 249) = a3 > 0.0;
        }
      }

      else if (v4 == 1)
      {
        *(a1 + 248) = 0;
      }

      else if (v4 == 4)
      {
        *(a1 + 248) = a3 > 0.0;
      }

      v9 = 0;
      if (v12)
      {
        if (v4 > 8)
        {
          switch(v4)
          {
            case 9:
              v9 = 0;
              *(a1 + 216) = a3;
              *(a1 + 220) = 1;
              break;
            case 14:
              v9 = 0;
              *(a1 + 224) = a3;
              *(a1 + 228) = 1;
              break;
            case 22:
              v9 = 0;
              *(a1 + 712) = a3;
              *(a1 + 716) = 1;
              break;
          }
        }

        else
        {
          switch(v4)
          {
            case 1:
              v9 = 0;
              *(a1 + 200) = a3;
              *(a1 + 204) = 1;
              break;
            case 2:
              v9 = 0;
              *(a1 + 232) = a3;
              *(a1 + 236) = 1;
              break;
            case 5:
              v9 = 0;
              *(a1 + 208) = a3;
              *(a1 + 212) = 1;
              break;
          }
        }
      }
    }

LABEL_52:
    FigSimpleMutexUnlock();
  }

  else
  {
    FigAudioQueueSetParameter_cold_2(&v15);
    v9 = v15;
  }

  if (v4 == 2)
  {
    if (v9 && (*(a1 + 48) & 4) != 0 && *(a1 + 280) != a3)
    {
      FigAudioQueueSetParameter_cold_3(a1);
    }

    *(a1 + 280) = a3;
  }

  return v9;
}

uint64_t FigAudioQueuePrime(uint64_t a1, CMTime *a2, CMTime *a3, CMTime *a4, float a5)
{
  v30 = *MEMORY[0x1E69E9840];
  value = 0;
  if (!a1)
  {
    FigAudioQueuePrime_cold_5(&time);
    return LODWORD(time.value);
  }

  if ((a2->flags & 0x1D) != 1)
  {
    FigAudioQueuePrime_cold_1(&time);
    return LODWORD(time.value);
  }

  FigSimpleMutexLock();
  if (*(a1 + 16))
  {
    FigAudioQueuePrime_cold_2(&time);
    goto LABEL_41;
  }

  ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 176), 0);
  if ((*(a1 + 540) & 0x1D) == 1)
  {
    if (!dword_1EAF16C30)
    {
      goto LABEL_9;
    }
  }

  else if (!dword_1EAF16C30)
  {
    goto LABEL_9;
  }

  LODWORD(v28.value) = 0;
  os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
  os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
  fig_log_call_emit_and_clean_up_after_send_and_compose();
LABEL_9:
  if (ValueAtIndex)
  {
    if (*(ValueAtIndex + 5))
    {
      v22 = a4;
      *(a1 + 416) = a5;
      v12 = *(a1 + 579);
      *type = *&a2->value;
      epoch = a2->epoch;
      memset(&v28, 0, sizeof(v28));
      subaq_getCurrentQueueTime(ValueAtIndex, &v28);
      *(a1 + 432) = v28;
      if (dword_1EAF16C30)
      {
        v27 = 0;
        value_7 = 0;
        v13 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      if (!v12 || (*(a1 + 468) & 1) == 0)
      {
        *(a1 + 456) = v28;
        if (dword_1EAF16C30)
        {
          v27 = 0;
          value_7 = 0;
          v14 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT);
          fig_log_call_emit_and_clean_up_after_send_and_compose();
        }
      }

      if ((*(a1 + 540) & 0x1D) == 1)
      {
        if (*(a1 + 312))
        {
          ValueAtIndex[593] = 1;
        }
      }

      else
      {
        *(a1 + 504) = v28;
        *(a1 + 568) = epoch;
        *(a1 + 552) = *type;
        if (dword_1EAF16C30)
        {
          v27 = 0;
          value_7 = 0;
          v15 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT);
          fig_log_call_emit_and_clean_up_after_send_and_compose();
        }

        *(a1 + 528) = *type;
        *(a1 + 544) = epoch;
        v16 = MEMORY[0x1E6960C70];
        *(a1 + 480) = *MEMORY[0x1E6960C70];
        *(a1 + 496) = *(v16 + 16);
        ValueAtIndex[594] = 1;
        *(ValueAtIndex + 75) = 0;
      }

      *(a1 + 305) = 1;
      v17 = (*(a1 + 48) & 4) != 0 && *(a1 + 312) && *(a1 + 280) != 1.0;
      faq_enqueueSourceData(a1, v17);
      if (*(a1 + 16))
      {
        v18 = 0;
      }

      else
      {
        v18 = CFArrayGetValueAtIndex(*(a1 + 176), 0);
      }

      time = *a3;
      v19 = subaq_audioQueuePrime(a1, v18, &time, &value);
      value_low = v19;
      if (v22 && !v19)
      {
        CMTimeMake(&time, value, v18[25]);
        *v22 = time;
      }

      goto LABEL_33;
    }

    FigAudioQueuePrime_cold_3(&time);
  }

  else
  {
    FigAudioQueuePrime_cold_4(&time);
  }

LABEL_41:
  value_low = LODWORD(time.value);
LABEL_33:
  FigSimpleMutexUnlock();
  return value_low;
}

const __CFDictionary *faq_getFigTimeAttachment(const void *a1, const __CFString *a2, CMTime *a3)
{
  result = CMGetAttachment(a1, a2, 0);
  if (result)
  {
    CMTimeMakeFromDictionary(&v5, result);
    *a3 = v5;
    return 1;
  }

  return result;
}

uint64_t FigAudioQueueStart(uint64_t a1, __int128 *a2, __int128 *a3, uint64_t a4, uint64_t a5, uint64_t a6, float a7)
{
  v9 = *a2;
  v8 = *a3;
  return figAudioQueueStartCommon(a1, &v9, &v8, a4, a5, 0, 0, a6, a7);
}

void faqrp_startTimebaseAtAnchorAudioTimeStamp(uint64_t a1, uint64_t a2, CMTime *a3, CMTime *a4, float a5)
{
  v8 = a2;
  v46 = *MEMORY[0x1E69E9840];
  v10 = MEMORY[0x19A8D0E00](a1 + 16);
  if (v10)
  {
    v11 = v10;
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    FigSimpleMutexLock();
    FigSimpleMutexLock();
    v13 = *(DerivedStorage + 120);
    if (v13 == a1)
    {
      if (a1)
      {
        CFRelease(v13);
        *(DerivedStorage + 120) = 0;
      }

      FigSimpleMutexUnlock();
      if (v8)
      {
        LODWORD(v32.value) = 0;
        LOBYTE(value) = 0;
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
        Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
        FigCFDictionarySetInt32();
        CMNotificationCenterGetDefaultLocalCenter();
        FigDispatchAsyncPostNotification();
        *(DerivedStorage + 64) = 0;
        if (Mutable)
        {
          CFRelease(Mutable);
        }
      }

      else
      {
        if (dword_1EAF16ED8)
        {
          LODWORD(v32.value) = 0;
          LOBYTE(value) = 0;
          v15 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT);
          fig_log_call_emit_and_clean_up_after_send_and_compose();
        }

        v17 = *(a1 + 24);
        HostTimeClock = CMClockGetHostTimeClock();
        v33 = *a3;
        CMSyncConvertTime(&time, &v33, v17, HostTimeClock);
        value = time.value;
        flags = time.flags;
        timescale = time.timescale;
        if (time.flags)
        {
          epoch = time.epoch;
          CMTimeMake(&time, 1, 1000);
          v33 = *a4;
          v32.value = value;
          v32.timescale = timescale;
          v32.flags = flags;
          v32.epoch = epoch;
          if (!faqrp_timeDifferenceIsWithinTolerance(&v33, &v32, &time))
          {
            LODWORD(v32.value) = 0;
            v21 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            v22 = v32.value;
            v31 = v21;
            if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
            {
              v23 = v22;
            }

            else
            {
              v23 = v22 & 0xFFFFFFFE;
            }

            if (v23)
            {
              v24 = CMBaseObjectGetDerivedStorage() + 164;
              time = *a3;
              Seconds = CMTimeGetSeconds(&time);
              time = *a4;
              v26 = CMTimeGetSeconds(&time);
              time.value = value;
              time.timescale = timescale;
              time.flags = flags;
              time.epoch = epoch;
              v27 = CMTimeGetSeconds(&time);
              time = *a4;
              v28 = CMTimeGetSeconds(&time);
              time.value = value;
              time.timescale = timescale;
              time.flags = flags;
              time.epoch = epoch;
              v29 = CMTimeGetSeconds(&time);
              LODWORD(v33.value) = 136316674;
              *(&v33.value + 4) = "faqrp_startTimebaseAtAnchorAudioTimeStamp";
              LOWORD(v33.flags) = 2048;
              *(&v33.flags + 2) = v11;
              HIWORD(v33.epoch) = 2082;
              v34 = v24;
              v35 = 2048;
              v36 = Seconds;
              v37 = 2048;
              v38 = v26;
              v39 = 2048;
              v40 = v27;
              v41 = 2048;
              v42 = v28 - v29;
              _os_log_send_and_compose_impl(v23, 0, &time, 128, &dword_1962D5000, v31, 0, "<<<< FAQRP >>>> %s: (%p %{public}s) mediaTime %.3f anchored in AQ at hostTime %.3f, but timebase expects hostTime %.3f (difference %+1.3f)", &v33, 72);
            }

            fig_log_call_emit_and_clean_up_after_send_and_compose();
          }
        }

        v30 = *(a1 + 24);
        if (v30 && *(a1 + 84))
        {
          time = *a3;
          v33 = *(a1 + 32);
          v32 = *a4;
          faqrp_startTimebaseCommon(v11, v30, &time, &v33, &v32, a5);
        }
      }
    }

    else
    {
      FigSimpleMutexUnlock();
    }

    FigSimpleMutexUnlock();
    CFRelease(v11);
  }
}

void figSyncMomentSource_TimebaseRateOrTimeChangedCallback(uint64_t a1, uint64_t a2, const void *a3, uint64_t a4)
{
  if (a2)
  {
    FigSimpleMutexLock();
    if (!*(a2 + 236) && *(a2 + 64) == a4)
    {
      if (CFEqual(a3, *MEMORY[0x1E6960CD0]))
      {
        figSyncMomentSource_UpdateToCurrentTimebaseRate(a2);
        v9 = 1;
      }

      else
      {
        v9 = 2;
      }

      v19 = 0;
      v17 = 0u;
      v18 = 0u;
      v15 = 0u;
      v16 = 0u;
      v13 = 0u;
      v14 = 0u;
      v12 = 0u;
      figSyncMomentSource_getSyncMoment(a2, v9, &v12);
      FigSimpleMutexUnlock();
      v10[4] = v16;
      v10[5] = v17;
      v10[6] = v18;
      v11 = v19;
      v10[0] = v12;
      v10[1] = v13;
      v10[2] = v14;
      v10[3] = v15;
      figSyncMomentSource_SendMoment(a2, v10, 0);
    }

    else
    {

      FigSimpleMutexUnlock();
    }
  }

  else
  {
    emitter = fig_log_get_emitter();

    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 4294966630, "<<<< TimebaseSync >>>>", 739, v4);
  }
}

void figPlaybackBoss_timebaseRateChanged(uint64_t a1, uint64_t a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = *(a2 + 432);
  if (v3 == 2003853684)
  {
    if (dword_1EAF16E78)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    v6 = 24953;
    goto LABEL_12;
  }

  if (v3 == 1886544244)
  {
    if (dword_1EAF16E78)
    {
      v4 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    v6 = 29808;
LABEL_12:
    *(a2 + 432) = v6 | 0x706C0000;
    return;
  }

  FigDeferNotificationToDispatchQueue();
}

void itemfig_TimeJumped(uint64_t a1, void *a2)
{
  CMBaseObjectGetDerivedStorage();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!*DerivedStorage)
  {
    v4 = DerivedStorage;
    if (a2)
    {
      CFRetain(a2);
    }

    v5 = *(v4 + 13);

    dispatch_async_f(v5, a2, itemfig_deferredTimeJumped_f);
  }
}

uint64_t fpm_timebaseJumpedCallback(uint64_t a1, uint64_t a2)
{
  FigRetainProxyLockMutex();
  if (!FigRetainProxyIsInvalidated())
  {
    Owner = FigRetainProxyGetOwner();
    MutableBytePtr = CFDataGetMutableBytePtr(Owner);
    FigSimpleMutexLock();
    MutableBytePtr[313] = 1;
    CMTimebaseGetTime(&time1, *(MutableBytePtr + 3));
    time2 = **&MEMORY[0x1E6960CC0];
    CMTimeMaximum(&v11, &time1, &time2);
    *(MutableBytePtr + 9) = v11;
    Rate = CMTimebaseGetRate(*(MutableBytePtr + 3));
    v5 = MEMORY[0x1E695E480];
    if (Rate == 0.0)
    {
      v8 = 0;
      if (*(MutableBytePtr + 2))
      {
        time1.value = 0;
        CMBaseObject = CMByteStreamGetCMBaseObject();
        v7 = *(*(CMBaseObjectGetVTable() + 8) + 48);
        if (v7)
        {
          if (!v7(CMBaseObject, *MEMORY[0x1E695FF80], *v5, &time1))
          {
            Value = CFBooleanGetValue(time1.value);
            CFRelease(time1.value);
            if (Value)
            {
              v8 = 1;
            }
          }
        }
      }

      *(MutableBytePtr + 26) = v8;
      *(MutableBytePtr + 27) = 0;
    }

    FigRetainProxyRetain();
    CMNotificationCenterGetDefaultLocalCenter();
    FigDeferNotificationToDispatchQueue();
    FigSimpleMutexUnlock();
  }

  return FigRetainProxyUnlockMutex();
}

void bossScheduleReachedEndCallbackForRate(uint64_t a1, float a2)
{
  v22 = *MEMORY[0x1E69E9840];
  if (a2 <= 0.0)
  {
    value = *(a1 + 296);
    timescale = *(a1 + 304);
    flags = *(a1 + 308);
    if ((flags & 0x1D) == 1)
    {
      v4 = 0;
      epoch = *(a1 + 312);
    }

    else if (*(a1 + 130) || *(a1 + 132))
    {
      value = *MEMORY[0x1E6960CC0];
      flags = *(MEMORY[0x1E6960CC0] + 12);
      timescale = *(MEMORY[0x1E6960CC0] + 8);
      epoch = *(MEMORY[0x1E6960CC0] + 16);
      if (dword_1EAF16E78)
      {
        LODWORD(v17.value) = 0;
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      v4 = 0;
    }

    else
    {
      value = *MEMORY[0x1E6960C70];
      flags = *(MEMORY[0x1E6960C70] + 12);
      timescale = *(MEMORY[0x1E6960C70] + 8);
      epoch = *(MEMORY[0x1E6960C70] + 16);
      if (dword_1EAF16E78)
      {
        LODWORD(v17.value) = 0;
        v16 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT);
        v4 = 1;
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      else
      {
        v4 = 1;
      }
    }

    if ((flags & 0x1D) != 1)
    {
      goto LABEL_25;
    }

    memset(&v17, 0, sizeof(v17));
    CMTimebaseGetTime(&v17, *(a1 + 120));
    time.value = value;
    time.timescale = timescale;
    time.flags = flags;
    time.epoch = epoch;
    time2 = v17;
    if (CMTimeCompare(&time, &time2) < 0)
    {
      goto LABEL_25;
    }

    if (!dword_1EAF16E78)
    {
      goto LABEL_38;
    }

LABEL_21:
    v9 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
    v14 = 1;
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    goto LABEL_26;
  }

  value = *(a1 + 176);
  flags = *(a1 + 188);
  timescale = *(a1 + 184);
  if ((flags & 0x1D) == 1)
  {
    v4 = 0;
    epoch = *(a1 + 192);
  }

  else if (*(a1 + 130) || *(a1 + 131) && *(a1 + 132))
  {
    FigPlaybackBossGetDuration(a1, &time);
    value = time.value;
    flags = time.flags;
    timescale = time.timescale;
    epoch = time.epoch;
    if (dword_1EAF16E78)
    {
      LODWORD(v17.value) = 0;
      v6 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    v4 = 0;
  }

  else
  {
    value = *MEMORY[0x1E6960C70];
    flags = *(MEMORY[0x1E6960C70] + 12);
    timescale = *(MEMORY[0x1E6960C70] + 8);
    epoch = *(MEMORY[0x1E6960C70] + 16);
    if (dword_1EAF16E78)
    {
      LODWORD(v17.value) = 0;
      v8 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
      v4 = 1;
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    else
    {
      v4 = 1;
    }
  }

  if ((flags & 0x1D) != 1 || (memset(&v17, 0, sizeof(v17)), CMTimebaseGetTime(&v17, *(a1 + 120)), time.value = value, time.timescale = timescale, time.flags = flags, time.epoch = epoch, time2 = v17, CMTimeCompare(&time, &time2) > 0))
  {
LABEL_25:
    v14 = 0;
    goto LABEL_26;
  }

  if (dword_1EAF16E78)
  {
    goto LABEL_21;
  }

LABEL_38:
  v14 = 1;
LABEL_26:
  *(a1 + 136) = 0;
  time.value = value;
  time.timescale = timescale;
  time.flags = flags;
  time.epoch = epoch;
  bossScheduleReachedEndCallbackForTime(a1, &time);
  if (v14)
  {
    v10 = MEMORY[0x1E6960C70];
    *(a1 + 320) = *MEMORY[0x1E6960C70];
    *(a1 + 336) = *(v10 + 16);
    CMTimebaseSetTimerDispatchSourceToFireImmediately(*(a1 + 120), *(a1 + 168));
  }

  if (v4)
  {
    CFRetain(a1);
    if (!*(a1 + 16))
    {
      FigSimpleMutexLock();
      if (*(a1 + 848))
      {
        LODWORD(v17.value) = 0;
        v11 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        v12 = v17.value;
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          v13 = v12;
        }

        else
        {
          v13 = v12 & 0xFFFFFFFE;
        }

        if (v13)
        {
          LODWORD(time2.value) = 136315394;
          *(&time2.value + 4) = "bossScheduleReachedEndCallbackWhenMentorsIdle";
          LOWORD(time2.flags) = 2048;
          *(&time2.flags + 2) = a1;
          _os_log_send_and_compose_impl(v13, 0, &time, 128, &dword_1962D5000, v11, 0, "<<<< Boss >>>> %s: (%p) attempt to use quiescent boss", &time2, 22);
        }

        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      if (*(a1 + 80) < 1)
      {
LABEL_44:
        FigSimpleMutexUnlock();
        bossScheduleReachedEndCallbackUsingRenderPipelineQueueEndPTS(a1);
      }

      else
      {
        v15 = 0;
        while (!*(CFArrayGetValueAtIndex(*(a1 + 72), v15) + 236))
        {
          if (*(a1 + 80) <= ++v15)
          {
            goto LABEL_44;
          }
        }

        FigSimpleMutexUnlock();
        *(a1 + 592) = 1;
      }
    }

    CFRelease(a1);
  }

  else
  {
    *(a1 + 592) = 0;
  }
}

void itemfig_invalidateRampOutTimer(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v2 = *(DerivedStorage + 1344);
  if (v2)
  {
    v3 = DerivedStorage;
    CMTimebaseRemoveTimerDispatchSource(*(DerivedStorage + 328), v2);
    dispatch_source_cancel(*(v3 + 1344));
    dispatch_release(*(v3 + 1344));
    *(v3 + 1344) = 0;
  }
}

uint64_t figPlaybackBossSetRateToZero(uint64_t a1, uint64_t a2, CMTime *a3)
{
  v4 = a2;
  v26 = *MEMORY[0x1E69E9840];
  v6 = MEMORY[0x1E6960C70];
  bossScheduleReachedEndCallbackForTime(a1, MEMORY[0x1E6960C70]);
  bossScheduleAdvanceForOverlappedPlaybackCallbackForTime(a1, v6, v7, v8, v9, v10, v11, v12);
  FigSimpleMutexLock();
  v13 = *(a1 + 432);
  if (v13 <= 1886530415)
  {
    if (v13 > 1886154859)
    {
      if (v13 == 1886154860)
      {
        goto LABEL_14;
      }

      v14 = 29808;
      goto LABEL_10;
    }

    if (v13 != 1768189029)
    {
      v14 = 24953;
LABEL_10:
      v15 = v14 | 0x706C0000;
      goto LABEL_13;
    }

LABEL_24:
    LODWORD(rhs.value) = 0;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    goto LABEL_33;
  }

  if (v13 > 1920298605)
  {
    if (v13 == 1920298606)
    {
      goto LABEL_24;
    }

    v15 = 2003853684;
  }

  else
  {
    if (v13 == 1886530416)
    {
      *(a1 + 432) = 1886545266;
      goto LABEL_33;
    }

    v15 = 1886544244;
  }

LABEL_13:
  if (v13 != v15)
  {
    goto LABEL_33;
  }

LABEL_14:
  time = *a3;
  bossStopTimebaseAndAudioContext(a1, v4, &time);
  v16 = *(a1 + 432);
  if (v16 > 1886155887)
  {
    v17 = 1885435251;
    if (v16 == 1886155888 || v16 == 1886544244)
    {
      goto LABEL_26;
    }

    if (v16 != 2003853684)
    {
      goto LABEL_27;
    }

LABEL_25:
    v17 = 1919247481;
LABEL_26:
    *(a1 + 432) = v17;
    goto LABEL_27;
  }

  if (v16 == 1886151033)
  {
    goto LABEL_25;
  }

  if (v16 == 1886154860)
  {
    if ((*(a1 + 464) & 0x1D) == 1)
    {
      v18 = *(a1 + 120);
      time = *(a1 + 452);
      CMTimebaseSetTime(v18, &time);
      *(a1 + 452) = *v6;
      *(a1 + 468) = *(v6 + 16);
    }

    bossReplaceMainQueuesWithSideQueuesAndSwitchMentorsToMainQueues(a1);
    v17 = 1886545266;
    goto LABEL_26;
  }

LABEL_27:
  *(a1 + 724) = vadd_s32(*(a1 + 724), 0x100000001);
  if (*(a1 + 676))
  {
    HostTimeClock = CMClockGetHostTimeClock();
    CMClockGetTime(&lhs, HostTimeClock);
    rhs = *(a1 + 664);
    CMTimeSubtract(&time, &lhs, &rhs);
    *(a1 + 656) = fabs(CMTimeGetSeconds(&time)) + *(a1 + 656);
    *(a1 + 664) = *v6;
    *(a1 + 680) = *(v6 + 16);
  }

  v21 = *(a1 + 120);
  if (v21 && (*(a1 + 708) & 1) != 0)
  {
    CMTimebaseGetTime(&lhs, v21);
    rhs = *(a1 + 696);
    CMTimeSubtract(&time, &lhs, &rhs);
    *(a1 + 688) = fabs(CMTimeGetSeconds(&time)) + *(a1 + 688);
    *(a1 + 696) = *v6;
    *(a1 + 712) = *(v6 + 16);
  }

LABEL_33:
  *(a1 + 440) = 0;
  return FigSimpleMutexUnlock();
}

void bossStopTimebaseAndAudioContext(uint64_t a1, int a2, CMTime *a3)
{
  v18 = *MEMORY[0x1E69E9840];
  v13 = *a3;
  dictionaryRepresentation = 0;
  if (a2 == 1)
  {
    FigSimpleMutexLock();
    if (*(a1 + 848))
    {
      v15 = 0;
      type = OS_LOG_TYPE_DEFAULT;
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    if (*(a1 + 80) >= 1)
    {
      v5 = 0;
      v6 = *MEMORY[0x1E695E480];
      do
      {
        if (*(CFArrayGetValueAtIndex(*(a1 + 72), v5) + 10))
        {
          FigRenderPipelineGetFigBaseObject();
          v8 = v7;
          v9 = *(*(CMBaseObjectGetVTable() + 8) + 48);
          if (v9)
          {
            if (!v9(v8, @"NextNonJerkyStopTime", v6, &dictionaryRepresentation) && dictionaryRepresentation != 0)
            {
              break;
            }
          }
        }

        ++v5;
      }

      while (*(a1 + 80) > v5);
    }

    FigSimpleMutexUnlock();
    v11 = dictionaryRepresentation;
    if (dictionaryRepresentation)
    {
      if (dword_1EAF16E78)
      {
        v15 = 0;
        type = OS_LOG_TYPE_DEFAULT;
        v12 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
        v11 = dictionaryRepresentation;
      }

      CMTimeMakeFromDictionary(&v13, v11);
    }
  }

  time = v13;
  bossSetPossiblyOutsourcedTimebaseRate(a1, &time, MEMORY[0x1E6960C70], 0.0, 1.0);
  if (dictionaryRepresentation)
  {
    CFRelease(dictionaryRepresentation);
  }
}

uint64_t FigAudioQueuePause(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    FigSimpleMutexLock();
    if (*(a1 + 16))
    {
      FigAudioQueuePause_cold_1(&time);
      value_low = LODWORD(time.value);
    }

    else if (*(a1 + 73) || *(a1 + 576))
    {
      Count = CFArrayGetCount(*(a1 + 176));
      if (Count < 1)
      {
LABEL_19:
        if (*(a1 + 16))
        {
          ValueAtIndex = 0;
        }

        else
        {
          ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 176), 0);
        }

        *(a1 + 73) = 0;
        *(a1 + 579) = 1;
        *(a1 + 785) = 0;
        *(a1 + 652) = 0;
        subaq_getCurrentQueueTime(ValueAtIndex, &time);
        if (*(a1 + 468))
        {
          *(a1 + 480) = time;
        }

        value_low = 0;
        *(a1 + 305) = 0;
        *(a1 + 576) = 0;
        *(a1 + 653) = 0;
        *(a1 + 753) = 0;
      }

      else
      {
        v3 = Count;
        v4 = 0;
        while (1)
        {
          if (*(a1 + 16))
          {
            v5 = 0;
          }

          else
          {
            v5 = CFArrayGetValueAtIndex(*(a1 + 176), v4);
          }

          if (dword_1EAF16C30)
          {
            os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
            fig_log_call_emit_and_clean_up_after_send_and_compose();
          }

          v7 = FigAudioQueueTimingShimPause(v5[5]);
          if (v7)
          {
            break;
          }

          if (v3 == ++v4)
          {
            goto LABEL_19;
          }
        }

        value_low = v7;
      }
    }

    else
    {
      value_low = 0;
    }

    FigSimpleMutexUnlock();
  }

  else
  {
    FigAudioQueuePause_cold_2(&time);
    return LODWORD(time.value);
  }

  return value_low;
}

void playerasync_RemoveFromPlayQueue(void *a1, const void *a2)
{
  v14 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v6 = DerivedStorage;
  if (!a2)
  {
    if (!*DerivedStorage)
    {
      goto LABEL_11;
    }

LABEL_7:
    emitter = fig_log_get_emitter();
    v9 = v2;
    v10 = 4121;
    goto LABEL_8;
  }

  v7 = CMBaseObjectGetDerivedStorage();
  if (*v6)
  {
    goto LABEL_7;
  }

  if (!v7)
  {
LABEL_11:
    v11 = 0;
LABEL_12:
    v12 = playerasync_createCommand(a1, 7, a2, &v14);
    v13 = v14;
    if (!v12)
    {
      playerasync_runAsynchronousCommand(a1, v14);
      v13 = 0;
    }

    goto LABEL_14;
  }

  if (*v7)
  {
    emitter = fig_log_get_emitter();
    v9 = v2;
    v10 = 4124;
LABEL_8:

    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 4294954511, "<<<< Async >>>>", v10, v9);
    return;
  }

  v11 = FigCFWeakReferenceHolderCopyReferencedObject();
  if (v11 == a1)
  {
    goto LABEL_12;
  }

  playerasync_RemoveFromPlayQueue_cold_1(&v15);
  v13 = 0;
LABEL_14:
  fpa_releaseCommand(v13);
  if (v11)
  {
    CFRelease(v11);
  }
}

void playercentral_RemoveFromPlayQueue(uint64_t a1, const void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a2)
  {
    v5 = CMBaseObjectGetDerivedStorage();
  }

  else
  {
    v5 = 0;
  }

  if (*(DerivedStorage + 8))
  {
    v6 = qword_1EAF16FB8;
    v7 = v2;
    v8 = 4294954511;
    v9 = 3067;
LABEL_6:

    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v6, v8, "<<<< CENTRAL >>>>", v9, v7);
    return;
  }

  v10 = *(DerivedStorage + 16);
  if (!v10)
  {
    v6 = qword_1EAF16FB8;
    v7 = v2;
    v8 = 4294954516;
    v9 = 3073;
    goto LABEL_6;
  }

  if (v5)
  {
    if (*(v5 + 16))
    {
      v6 = qword_1EAF16FB8;
      v7 = v2;
      v8 = 4294954511;
      v9 = 3079;
      goto LABEL_6;
    }

    v11 = *(v5 + 8);
  }

  else
  {
    v11 = 0;
  }

  v12 = *(*(CMBaseObjectGetVTable() + 16) + 24);
  if (!v12 || v12(v10, v11))
  {
    return;
  }

  FigSimpleMutexLock();
  v13 = *(DerivedStorage + 80);
  if (!a2)
  {
    v14 = CFGetAllocator(*(DerivedStorage + 80));
    *(DerivedStorage + 80) = CFSetCreateMutable(v14, 0, MEMORY[0x1E695E9F8]);
    FigSimpleMutexUnlock();
    CFSetRemoveAllValues(v13);
    goto LABEL_23;
  }

  if (!CFSetContainsValue(*(DerivedStorage + 80), a2))
  {
    FigSimpleMutexUnlock();
    return;
  }

  v13 = CFRetain(a2);
  CFSetRemoveValue(*(DerivedStorage + 80), a2);
  FigSimpleMutexUnlock();
  if (v13)
  {
LABEL_23:
    CFRelease(v13);
  }
}

uint64_t playerfig_RemoveFromPlayQueue(const char *a1, __CFString *a2)
{
  v46 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  HIBYTE(v43[0]) = 0;
  v5 = &unk_1EAF16000;
  if (dword_1EAF16A10)
  {
    LODWORD(v43[0]) = 0;
    HIBYTE(v42) = 0;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    v5 = &unk_1EAF16000;
  }

  v7 = MEMORY[0x1E695FF58];
  if (*MEMORY[0x1E695FF58] == 1)
  {
    if (a1)
    {
      v8 = (CMBaseObjectGetDerivedStorage() + 972);
    }

    else
    {
      v8 = "";
    }

    strncpy(__dst, v8, 8uLL);
    if (a2)
    {
      v9 = (CMBaseObjectGetDerivedStorage() + 2096);
    }

    else
    {
      v9 = "";
    }

    strncpy(__dst, v9, 8uLL);
    kdebug_trace();
  }

  if (*DerivedStorage)
  {
    playerfig_RemoveFromPlayQueue_cold_1(__dst);
LABEL_68:
    v33 = *__dst;
    goto LABEL_51;
  }

  if (!a2)
  {
    FigSimpleMutexLock();
    playeritemfig_releaseRenderPipelines(a1, 0, 0, v26, v27, v28, v29, v30, value, v39, v40, v41, v42, v43[0], v43[1], v43[2], v43[3], v43[4], v43[5], v43[6], v43[7], v43[8], *__dst, v45);
    if (CFArrayGetCount(*(DerivedStorage + 528)) < 1)
    {
      v15 = 0;
    }

    else
    {
      v31 = 1;
      v15 = 1;
      do
      {
        ValueAtIndex = CFArrayGetValueAtIndex(*(DerivedStorage + 528), 0);
        playerfig_gracefullyRemoveItemFromPlayQueue(a1, ValueAtIndex, v31, 1, 1, 0);
        v31 = 2;
      }

      while (CFArrayGetCount(*(DerivedStorage + 528)) > 0);
    }

    if (dword_1EAF16A10 >= 2)
    {
      LODWORD(v43[0]) = 0;
      v37 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
      v13 = 0;
      v20 = 0;
      v5 = &unk_1EAF16000;
      goto LABEL_30;
    }

    v13 = 0;
    goto LABEL_29;
  }

  v10 = CMBaseObjectGetDerivedStorage();
  if (*v10)
  {
    playerfig_RemoveFromPlayQueue_cold_2(__dst);
    goto LABEL_68;
  }

  v11 = v10;
  v12 = FigCFWeakReferenceHolderCopyReferencedObject();
  if (!v12)
  {
    playerfig_RemoveFromPlayQueue_cold_5(__dst);
    goto LABEL_68;
  }

  v13 = v12;
  if (v12 != a1)
  {
    playerfig_RemoveFromPlayQueue_cold_3(__dst);
    v25 = *__dst;
LABEL_50:
    CFRelease(v13);
    v33 = v25;
    goto LABEL_51;
  }

  v14 = (DerivedStorage + 520);
  FigSimpleMutexLock();
  if (!v11[1])
  {
    if (dword_1EAF16A10)
    {
      LODWORD(v43[0]) = 0;
      v19 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    FigSimpleMutexUnlock();
    v25 = 4294954516;
    goto LABEL_50;
  }

  v15 = CFArrayGetValueAtIndex(*(DerivedStorage + 528), 0) == a2;
  v16 = playerfig_maybeUndoQueueingForItem(a1, a2);
  if (*(DerivedStorage + 536) == a2)
  {
    v17 = *(CMBaseObjectGetDerivedStorage() + 352);
    if (v17)
    {
      FigPlaybackBossSetRate(v17, 0, 0.0);
    }
  }

  playerfig_gracefullyRemoveItemFromPlayQueue(a1, a2, 0, 1, 1, v43 + 7);
  if (v16)
  {
    HIBYTE(v43[0]) = 1;
  }

  if (dword_1EAF16A10 >= 2)
  {
    LODWORD(v43[0]) = 0;
    v18 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    v14 = (DerivedStorage + 520);
  }

  if (HIBYTE(v43[0]))
  {
    playerfig_RemoveFromPlayQueue_cold_4(v14);
    v20 = 1;
    goto LABEL_30;
  }

  if (*(CMBaseObjectGetDerivedStorage() + 496))
  {
    playerfig_prepareNextItemForTransition(a1, *(DerivedStorage + 536));
  }

LABEL_29:
  v20 = 0;
LABEL_30:
  if (*(DerivedStorage + 853) || (Count = CFArrayGetCount(*(DerivedStorage + 528))) != 0 && ((v24 = *(DerivedStorage + 536)) == 0 || (v47.location = 0, v47.length = Count, CFArrayGetFirstIndexOfValue(*(DerivedStorage + 528), v47, v24) + 1 != Count)))
  {
    v21 = 1;
    if (v20)
    {
      goto LABEL_33;
    }

    goto LABEL_32;
  }

  v21 = 0;
  *(DerivedStorage + 853) = 1;
  if ((v20 & 1) == 0)
  {
LABEL_32:
    FigSimpleMutexUnlock();
  }

LABEL_33:
  if (v15)
  {
    playerfig_RemoveFromPlayQueue_cold_6(a1);
  }

  v7 = MEMORY[0x1E695FF58];
  if ((v21 & 1) == 0)
  {
    if (v5[644])
    {
      LODWORD(v43[0]) = 0;
      v22 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    CMNotificationCenterGetDefaultLocalCenter();
    FigDispatchAsyncPostNotification();
  }

  v25 = 0;
  v33 = 0;
  if (v13)
  {
    goto LABEL_50;
  }

LABEL_51:
  if (*v7 == 1)
  {
    if (a1)
    {
      v34 = (CMBaseObjectGetDerivedStorage() + 972);
    }

    else
    {
      v34 = "";
    }

    strncpy(__dst, v34, 8uLL);
    if (a2)
    {
      v35 = (CMBaseObjectGetDerivedStorage() + 2096);
    }

    else
    {
      v35 = "";
    }

    strncpy(__dst, v35, 8uLL);
    kdebug_trace();
  }

  return v33;
}

void playerfig_gracefullyRemoveItemFromPlayQueue(uint64_t a1, const void *a2, int a3, int a4, int a5, _BYTE *a6)
{
  v88 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v13 = CMBaseObjectGetDerivedStorage();
  Count = CFArrayGetCount(*(DerivedStorage + 528));
  v95.location = 0;
  v95.length = Count;
  FirstIndexOfValue = CFArrayGetFirstIndexOfValue(*(DerivedStorage + 528), v95, a2);
  CFRetain(a2);
  if (FirstIndexOfValue == -1)
  {
    LODWORD(v63) = 0;
    HIBYTE(v63) = 0;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  else
  {
    HIBYTE(v63) = 0;
    v19 = *(DerivedStorage + 536);
    if (v19)
    {
      v96.location = 0;
      v96.length = Count;
      v20 = FirstIndexOfValue <= CFArrayGetFirstIndexOfValue(*(DerivedStorage + 528), v96, v19);
    }

    else
    {
      v20 = 1;
    }

    if (a6)
    {
      *a6 = v20;
    }

    LODWORD(v61) = v20;
    if (!FirstIndexOfValue)
    {
      if (*(DerivedStorage + 568))
      {
        *(DerivedStorage + 568) = 0;
        playerfig_postDeferredPrerollWasCancelledNotification(a1, *(DerivedStorage + 576));
      }

      v21 = MEMORY[0x1E6960C70];
      v22 = *MEMORY[0x1E6960C70];
      *(v13 + 548) = *MEMORY[0x1E6960C70];
      v23 = *(v21 + 16);
      *(v13 + 564) = v23;
      *(v13 + 572) = v22;
      *(v13 + 588) = v23;
    }

    v24 = *(v13 + 524);
    if (v24)
    {
      *(v13 + 524) = 0;
      *(v13 + 536) = 0;
      itemfig_postSeekWasCanceledNotification(a1, a2, v24, 1);
    }

    v25 = *(v13 + 1432);
    if (v25)
    {
      CFRelease(v25);
      *(v13 + 1432) = 0;
    }

    CFArrayRemoveValueAtIndex(*(DerivedStorage + 528), FirstIndexOfValue);
    *(v13 + 1) = 0;
    *(v13 + 1328) = 0;
    *(v13 + 1033) = 0;
    itemfig_configureDownloadForItem(a2, *(v13 + 1369), v26, v27, v28, v29, v30, v31, v42, v44, v46, v48, v50, v52, v54, v57, v61, v63, v64, v65, v66, v67, v68, v69, v70, v71, v72, v73, v74, v75, v76, v77, v78, v79, v80, v81, v82, v83, v84, v85, v86, v87, v88, v89);
    if (a3 != 2 && !FirstIndexOfValue)
    {
      CMNotificationCenterGetDefaultLocalCenter();
      FigDispatchAsyncPostNotification();
      if (dword_1EAF16A10)
      {
        LODWORD(v63) = 0;
        HIBYTE(v62) = 0;
        v58 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(v58, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      if (!a3 && Count >= 2)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(*(DerivedStorage + 528), 0);
        v32 = CMBaseObjectGetDerivedStorage();
        if (*(v32 + 1600) == 0.0)
        {
          *(v32 + 1600) = CFAbsoluteTimeGetCurrent();
        }

        CMNotificationCenterGetDefaultLocalCenter();
        v33 = ValueAtIndex;
        FigDispatchAsyncPostNotification();
        v55 = *(DerivedStorage + 104);
        CMNotificationCenterGetDefaultLocalCenter();
        FigDispatchAsyncPostNotification();
        if (dword_1EAF16A10)
        {
          LODWORD(v63) = 0;
          HIBYTE(v62) = 0;
          v55 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          *&v53[4] = 0;
          os_log_type_enabled(v55, OS_LOG_TYPE_DEFAULT);
          fig_log_call_emit_and_clean_up_after_send_and_compose();
          v33 = ValueAtIndex;
        }

        itemfig_makePlaybackPrerequisitePropertiesReady(v33, &v63 + 7, v34, v35, v36, v37, v38, v39, v43, v45, v47, SWORD2(v47), SBYTE6(v47), HIBYTE(v47), v49[0], v49[1], SBYTE2(v49[1]), SHIBYTE(v49[1]), v51[0], v51[1], *v53, *&v53[4], v55, ValueAtIndex, v62, v63, SHIDWORD(v63), v64, v65, v66, v67, v68, v69, v70, v71, v72, v73, v74, v75, v76, v77, v78, v79, v80, v81, v82, v83, v84, v85, v86, v87, v88, v89, v90, v91, v92, v93, v94);
        if (HIBYTE(v63))
        {
          *(v13 + 1328) = 1;
        }

        else if (dword_1EAF16A10)
        {
          LODWORD(v63) = 0;
          v56 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          os_log_type_enabled(v56, OS_LOG_TYPE_DEFAULT);
          fig_log_call_emit_and_clean_up_after_send_and_compose();
        }
      }
    }

    --Count;
    playerfig_configureDownloadInPlayQueueAndItemsToPrebuffer(a1);
    if (*(DerivedStorage + 536) == a2)
    {
      if (FirstIndexOfValue >= Count)
      {
        v40 = 0;
      }

      else
      {
        v40 = CFArrayGetValueAtIndex(*(DerivedStorage + 528), FirstIndexOfValue);
      }

      *(DerivedStorage + 536) = v40;
    }

    itemfig_antiprepare(a2);
    if (!a3 && !FirstIndexOfValue)
    {
      if (HIBYTE(v63))
      {
        if (*(DerivedStorage + 60) == 2)
        {
          playerfig_UpdateAudioSessionPreferredDeviceFormat(a1);
          playerfig_UpdateAudioSessionPreferredDeviceSampleRate(a1);
          playerfig_UpdateAudioSessionPreferredNumberOfAudioOutputChannels(a1);
        }

        else if (dword_1EAF16A10)
        {
          LODWORD(v63) = 0;
          v60 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          os_log_type_enabled(v60, OS_LOG_TYPE_DEFAULT);
          fig_log_call_emit_and_clean_up_after_send_and_compose();
        }

        itemfig_InformStakeholdersOfBestAvailableAudioContentType(a2);
      }

      playerfig_applyEQPreset(a1);
    }

    if (!a3 && (v62 & 1) == 0)
    {
      playerfig_updateStartHostTimeEstimatesOfItemAtIndexAndFollowingItems(a1, FirstIndexOfValue);
    }

    itemfig_vendAccessLogWhenItemStopsBeingCurrent(a2);
    if (a4)
    {
      v41 = CFDictionaryCreate(*MEMORY[0x1E695E480], &kFigPlaybackItemParameter_AsRequested, MEMORY[0x1E695E4D0], 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    }

    else
    {
      v41 = 0;
    }

    CMNotificationCenterGetDefaultLocalCenter();
    FigDispatchAsyncPostNotification();
    if (v41)
    {
      CFRelease(v41);
    }
  }

  if (a5 == 1)
  {
    if (FigUseVideoReceiverForCALayer())
    {
      itemfig_clearAllImageQueueTables(a2);
    }

    else
    {
      itemfig_removeAllImageQueues(a2);
      if (!*(DerivedStorage + 536))
      {
        playerfig_freeTransitionImageQueueAndSlot(a1);
      }
    }

    if (!Count)
    {
      playerfig_scheduleEmptyConfigurationsToVideoTargetsForItem(a1, a2, MEMORY[0x1E6960C70]);
    }
  }

  if (!FigUseVideoReceiverForCALayer() && !*(DerivedStorage + 536))
  {
    FigSimpleMutexLock();
    playerfig_clearVideoLayers(*(DerivedStorage + 216), 0, 0);
    FigSimpleMutexUnlock();
  }

  if (!*(DerivedStorage + 536))
  {
    playerfig_scheduleEmptyConfigurationsToVideoTargetsForItem(a1, 0, MEMORY[0x1E6960C70]);
  }

  playeritemfig_releaseVideoCompositionObjects(a2);
  itemfig_ExternalProtectionStatusChangedGuts(a2);
  itemfig_clearCoordinatedPlaybackSynchronizationTimebase(a2);
  itemfig_releaseAIMEDataAndAllAIMEDataChannelResources(a2);
  CFRelease(a2);
  v17 = fp_copyPlayQueueDescription(a1);
  if (dword_1EAF16A10)
  {
    HIBYTE(v63) = 0;
    v18 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v18, HIBYTE(v63));
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (v17)
  {
    CFRelease(v17);
  }
}

void FigPlayabilityMonitorDestroy(uint64_t a1)
{
  if (*(a1 + 328))
  {
    FigRetainProxyInvalidate();
  }

  v2 = *(a1 + 8640);
  if (v2)
  {
    CFRelease(v2);
    *(a1 + 8640) = 0;
  }

  if (*(a1 + 24))
  {
    CMNotificationCenterGetDefaultLocalCenter();
    FigNotificationCenterRemoveWeakListener();
  }

  if (*(a1 + 16))
  {
    CMNotificationCenterGetDefaultLocalCenter();
    FigNotificationCenterRemoveWeakListener();
    CMNotificationCenterGetDefaultLocalCenter();
    FigNotificationCenterRemoveWeakListener();
    if (*(a1 + 8553))
    {
      CMNotificationCenterGetDefaultLocalCenter();
      FigNotificationCenterRemoveWeakListener();
    }
  }

  if (*(a1 + 24))
  {
    CMNotificationCenterGetDefaultLocalCenter();
    FigNotificationCenterRemoveWeakListener();
  }

  if (*(a1 + 48))
  {
    FigSimpleMutexLock();
    if (*(a1 + 64) >= 1)
    {
      do
      {
        FigConditionVariableWaitRelative();
      }

      while (*(a1 + 64) > 0);
    }
  }

  v3 = *(a1 + 304);
  if (v3)
  {
    v4 = *(a1 + 24);
    if (v4)
    {
      CMTimebaseRemoveTimerDispatchSource(v4, v3);
      v3 = *(a1 + 304);
    }

    dispatch_source_cancel(v3);
    dispatch_release(*(a1 + 304));
    *(a1 + 304) = 0;
  }

  v5 = *(a1 + 296);
  if (v5)
  {
    dispatch_source_cancel(v5);
    dispatch_release(*(a1 + 296));
    *(a1 + 296) = 0;
  }

  v6 = *(a1 + 320);
  if (v6)
  {
    dispatch_sync_f(v6, 0, fpm_EmptyDispatchFunc);
    dispatch_release(*(a1 + 320));
  }

  v7 = *(a1 + 8560);
  if (v7)
  {
    os_release(v7);
    *(a1 + 8560) = 0;
  }

  if (*(a1 + 80) >= 1)
  {
    v8 = 0;
    v9 = 0;
    do
    {
      v10 = *(a1 + 88);
      v11 = *(v10 + v8 + 16);
      if (v11)
      {
        CFRelease(v11);
        v10 = *(a1 + 88);
      }

      v12 = *(v10 + v8 + 24);
      if (v12)
      {
        CFRelease(v12);
        v10 = *(a1 + 88);
      }

      v13 = *(v10 + v8 + 8);
      if (v13)
      {
        CFRelease(v13);
        v10 = *(a1 + 88);
      }

      v14 = *(v10 + v8 + 32);
      if (v14)
      {
        CFRelease(v14);
      }

      ++v9;
      v8 += 48;
    }

    while (v9 < *(a1 + 80));
  }

  free(*(a1 + 88));
  v15 = *(a1 + 24);
  if (v15)
  {
    CFRelease(v15);
  }

  v16 = *(a1 + 32);
  if (v16)
  {
    CFRelease(v16);
  }

  v17 = *(a1 + 40);
  if (v17)
  {
    CFRelease(v17);
  }

  v18 = *(a1 + 8568);
  if (v18)
  {
    CFRelease(v18);
    *(a1 + 8568) = 0;
  }

  v19 = *(a1 + 16);
  if (v19)
  {
    CFRelease(v19);
  }

  v20 = *(a1 + 8);
  if (v20)
  {
    CFRelease(v20);
  }

  if (*(a1 + 8632))
  {
    FigSimpleMutexLock();
  }

  v21 = *(a1 + 8624);
  if (v21)
  {
    CFRelease(v21);
  }

  if (*(a1 + 8632))
  {
    FigSimpleMutexUnlock();
  }

  if (*(a1 + 328))
  {
    FigRetainProxyRelease();
    *(a1 + 328) = 0;
  }

  if (*(a1 + 56))
  {
    FigSimpleMutexDestroy();
    *(a1 + 56) = 0;
  }

  if (*(a1 + 8632))
  {
    FigSimpleMutexDestroy();
    *(a1 + 8632) = 0;
  }

  if (*(a1 + 72))
  {
    FigConditionVariableDestroy();
    *(a1 + 72) = 0;
  }

  if (*(a1 + 48))
  {
    FigSimpleMutexUnlock();
    FigSimpleMutexDestroy();
    *(a1 + 48) = 0;
  }

  v22 = *a1;

  CFRelease(v22);
}

uint64_t FigPlaybackBossGetTime@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  if (!result || *(result + 16) || *(result + 128))
  {
    v2 = MEMORY[0x1E6960C70];
LABEL_5:
    *a2 = *v2;
    *(a2 + 16) = *(v2 + 16);
    return result;
  }

  if ((*(result + 464) & 0x1D) == 1)
  {
    v2 = result + 452;
    goto LABEL_5;
  }

  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  return CMTimebaseGetTimeClampedAboveAnchorTime();
}

void FigPlaybackBossInvalidate(uint64_t a1)
{
  if (a1 && !*(a1 + 16))
  {
    figPlaybackBossPrerollCompleted(a1, 1u, 0);
    FigSimpleMutexLock();
    bossBumpCurrentMasterOrder(a1);
    if (*(a1 + 64))
    {
      FigSimpleMutexLock();
    }

    bossSetMentorModesToDoNothing(a1, 0, *(a1 + 80), 1);
    if (*(a1 + 32))
    {
      FigThreadAbortQueueForTeardown();
    }

    if (*(a1 + 64))
    {
      FigSimpleMutexUnlock();
    }

    FigSimpleMutexUnlock();
    if (*(a1 + 64))
    {
      FigSimpleMutexLock();
    }

    v2 = *(a1 + 72);
    if (v2)
    {
      Copy = CFArrayCreateCopy(*MEMORY[0x1E695E480], v2);
    }

    else
    {
      Copy = 0;
    }

    if (*(a1 + 64))
    {
      FigSimpleMutexUnlock();
    }

    if (CFArrayGetCount(Copy) >= 1)
    {
      v4 = 0;
      do
      {
        ValueAtIndex = CFArrayGetValueAtIndex(Copy, v4);
        v6 = ValueAtIndex[18];
        if (v6)
        {
          VideoMentorInvalidate(v6);
        }

        v7 = ValueAtIndex[16];
        if (v7)
        {
          AudioMentorInvalidate(v7);
        }

        ++v4;
      }

      while (CFArrayGetCount(Copy) > v4);
    }

    FigSimpleMutexLock();
    *(a1 + 16) = 1;
    FigMemoryBarrier();
    FigSimpleMutexUnlock();
    if (*(a1 + 120))
    {
      CMNotificationCenterGetDefaultLocalCenter();
      CMNotificationCenterRemoveListener();
    }

    bossRemoveVideoCompositionProcessorNotificationListenersForPrerollForBoss(a1);
    if (*(a1 + 134))
    {
      CMNotificationCenterGetDefaultLocalCenter();
      FigNotificationCenterRemoveWeakListener();
      *(a1 + 134) = 0;
    }

    CMNotificationCenterGetDefaultLocalCenter();
    FigNotificationCenterRemoveWeakListener();
    v8 = *(a1 + 168);
    if (v8)
    {
      CMTimebaseRemoveTimerDispatchSource(*(a1 + 120), v8);
      dispatch_source_cancel(*(a1 + 168));
      dispatch_release(*(a1 + 168));
      *(a1 + 168) = 0;
    }

    v9 = *(a1 + 368);
    if (v9)
    {
      CMTimebaseRemoveTimerDispatchSource(*(a1 + 120), v9);
      dispatch_source_cancel(*(a1 + 368));
      dispatch_release(*(a1 + 368));
      *(a1 + 368) = 0;
    }

    if (*(a1 + 64))
    {
      FigSimpleMutexLock();
    }

    if (*(a1 + 80) >= 1)
    {
      v10 = 0;
      do
      {
        v11 = CFArrayGetValueAtIndex(*(a1 + 72), v10);
        v12 = v11[6];
        if (v12)
        {
          CFRelease(v12);
          v11[6] = 0;
        }

        if (v11[14])
        {
          v13 = v11[12];
          v14 = *(*(CMBaseObjectGetVTable() + 16) + 72);
          if (v14)
          {
            v14(v13);
          }
        }

        v15 = v11[12];
        if (v15)
        {
          CFRelease(v15);
          v11[12] = 0;
        }

        v16 = v11[35];
        if (v16)
        {
          CFRelease(v16);
          v11[35] = 0;
        }

        ++v10;
      }

      while (*(a1 + 80) > v10);
    }

    figPlaybackBossTeardownTracks(a1, 1);
    if (*(a1 + 64))
    {
      FigSimpleMutexUnlock();
    }

    if (Copy)
    {
      CFRelease(Copy);
    }

    v17 = *(a1 + 32);
    if (v17)
    {
      dispatch_sync_f(v17, 0, figPlaybackBossNOOP);
      dispatch_release(*(a1 + 32));
      *(a1 + 32) = 0;
    }

    v18 = *(a1 + 40);
    if (v18)
    {
      CFRelease(v18);
      *(a1 + 40) = 0;
    }

    v19 = *(a1 + 48);
    if (v19)
    {
      CFRelease(v19);
      *(a1 + 48) = 0;
    }

    v20 = *(a1 + 56);
    if (v20)
    {
      CFRelease(v20);
      *(a1 + 56) = 0;
    }

    v21 = *(a1 + 120);
    if (v21)
    {
      CFRelease(v21);
      *(a1 + 120) = 0;
    }

    v22 = *(a1 + 504);
    if (v22)
    {
      CFRelease(v22);
      *(a1 + 504) = 0;
    }

    v23 = *(a1 + 424);
    if (v23)
    {
      CFRelease(v23);
      *(a1 + 424) = 0;
    }

    v24 = *(a1 + 544);
    if (v24)
    {
      CFRelease(v24);
      *(a1 + 544) = 0;
    }

    v25 = *(a1 + 560);
    if (v25)
    {
      CFRelease(v25);
      *(a1 + 560) = 0;
    }

    v26 = *(a1 + 576);
    if (v26)
    {
      CFRelease(v26);
      *(a1 + 576) = 0;
    }

    if (*(a1 + 476) && *(a1 + 600))
    {
      bossRemoveVideoCompositionProcessorNotificationListenersForSeekForBoss(a1);
    }

    v27 = *(a1 + 600);
    if (v27)
    {
      CFRelease(v27);
      *(a1 + 600) = 0;
    }
  }
}

void figPlaybackBossTeardownTracks(uint64_t a1, int a2)
{
  if (*(a1 + 80) >= 1)
  {
    v4 = 0;
    do
    {
      ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 72), v4);
      v6 = ValueAtIndex;
      if (a2)
      {
        if (*(ValueAtIndex + 10))
        {
          FigRenderPipelineGetFigBaseObject();
          v8 = v7;
          v9 = *(*(CMBaseObjectGetVTable() + 8) + 56);
          if (v9)
          {
            v9(v8, @"Timebase", 0);
          }
        }
      }

      bossRemoveNotificationListenersForTrack(v6);
      ++v4;
    }

    while (*(a1 + 80) > v4);
  }

  CFArrayRemoveAllValues(*(a1 + 72));
  *(a1 + 80) = 0;
  *(a1 + 96) = -1;
  if (*(a1 + 88) != -1)
  {
    *(a1 + 88) = -2;
  }
}

uint64_t AudioMentorInvalidate(uint64_t result)
{
  if (!*result)
  {
    v1 = result;
    *result = 1;
    if (*(result + 104))
    {
      FigSimpleMutexLock();
      *(v1 + 112) = 4;
      *(v1 + 116) = 1;
      FigMemoryBarrier();
      FigSimpleMutexUnlock();
      FigSemaphoreSignal();
      FigThreadAbortForTeardown();
      result = FigThreadJoin();
      *(v1 + 104) = 0;
    }

    v2 = *(v1 + 24);
    if (v2)
    {
      if (*(v1 + 40))
      {
        v3 = *(v1 + 32);
        VTable = CMBaseObjectGetVTable();
        v5 = *(VTable + 16);
        result = VTable + 16;
        v6 = *(v5 + 40);
        if (v6)
        {
          result = v6(v2, v3);
        }
      }
    }

    if (*(v1 + 16))
    {
      CMNotificationCenterGetDefaultLocalCenter();

      return CMNotificationCenterRemoveListener();
    }
  }

  return result;
}

uint64_t sbcbq_removeLowWaterTrigger(uint64_t a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v4 = DerivedStorage;
  if (a2)
  {
    CMBufferQueueRemoveTrigger(*(DerivedStorage + 136), *(DerivedStorage + 128));
  }

  FigSimpleMutexLock();
  v4[14] = 0;
  v4[15] = 0;
  FigSimpleMutexUnlock();
  v4[16] = 0;
  return 0;
}

void sgffr_finalize(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v3 = DerivedStorage;
  if (*(DerivedStorage + 56) && *(DerivedStorage + 32))
  {
    sgffr_finishPrerollBatch(a1, 0);
    CMNotificationCenterGetDefaultLocalCenter();
    FigNotificationCenterRemoveWeakListener();
    CMNotificationCenterGetDefaultLocalCenter();
    FigNotificationCenterRemoveWeakListener();
  }

  if (*v3)
  {
    CFRelease(*v3);
    *v3 = 0;
  }

  v4 = *(v3 + 8);
  if (v4)
  {
    CFRelease(v4);
    *(v3 + 8) = 0;
  }

  v5 = *(v3 + 24);
  if (v5)
  {
    CFRelease(v5);
    *(v3 + 24) = 0;
  }

  v6 = *(v3 + 16);
  if (v6)
  {
    CFRelease(v6);
    *(v3 + 16) = 0;
  }

  v7 = *(v3 + 40);
  if (v7)
  {
    CFRelease(v7);
    *(v3 + 40) = 0;
  }

  v8 = *(v3 + 48);
  if (v8)
  {
    CFRelease(v8);
    *(v3 + 48) = 0;
  }

  v9 = *(v3 + 136);
  if (v9)
  {
    CFRelease(v9);
    *(v3 + 136) = 0;
  }

  v10 = *(v3 + 56);
  if (v10)
  {
    CFRelease(v10);
    *(v3 + 56) = 0;
  }
}

uint64_t sbcbq_finalize(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigBufferQueueRelease();
  FigBufferQueueRelease();
  v2 = DerivedStorage[20];
  if (v2)
  {
    CFRelease(v2);
  }

  if (*DerivedStorage)
  {
    FigSimpleMutexDestroy();
  }

  result = DerivedStorage[13];
  if (result)
  {

    return FigSimpleMutexDestroy();
  }

  return result;
}

void *figPlaybackBossFinalize(void *a1)
{
  FigPlaybackBossInvalidate(a1);
  FigSimpleMutexDestroy();
  a1[73] = 0;
  FigSimpleMutexDestroy();
  a1[3] = 0;
  FigSimpleMutexDestroy();
  a1[8] = 0;
  v2 = a1[9];
  if (v2)
  {
    CFRelease(v2);
    a1[9] = 0;
  }

  v3 = a1[99];
  if (v3)
  {
    os_release(v3);
  }

  return memset(a1 + 2, 85, 0x350uLL);
}

void FigSyncMomentSourceDestroy(CFTypeRef cf)
{
  if (cf)
  {
    CFRelease(cf);
  }
}

void playercentral_removeItemFromPlayQueueWithoutInformingSubPlayer(uint64_t a1, const void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  if (CFSetContainsValue(*(DerivedStorage + 80), a2))
  {
    v4 = CFRetain(a2);
    CFSetRemoveValue(*(DerivedStorage + 80), a2);
    FigSimpleMutexUnlock();
    if (v4)
    {

      CFRelease(v4);
    }
  }

  else
  {

    FigSimpleMutexUnlock();
  }
}

void figAudioQueueRenderPipelineFinalize(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  figAudioQueueRenderPipelineInvalidate(a1);
  v3 = DerivedStorage[5];
  if (v3)
  {
    CFRelease(v3);
    DerivedStorage[5] = 0;
  }

  v4 = DerivedStorage[4];
  if (v4)
  {
    CFRelease(v4);
    DerivedStorage[4] = 0;
  }

  v5 = DerivedStorage[15];
  if (v5)
  {
    CFRelease(v5);
    DerivedStorage[15] = 0;
  }

  v6 = DerivedStorage[16];
  if (v6)
  {
    CFRelease(v6);
    DerivedStorage[16] = 0;
  }

  v7 = DerivedStorage[7];
  if (v7)
  {
    CFRelease(v7);
    DerivedStorage[7] = 0;
  }

  if (DerivedStorage[6])
  {
    FigSimpleMutexDestroy();
    DerivedStorage[6] = 0;
  }

  if (DerivedStorage[1])
  {
    FigSimpleMutexDestroy();
    DerivedStorage[1] = 0;
  }

  v8 = DerivedStorage[2];
  if (v8)
  {
    dispatch_release(v8);
    DerivedStorage[2] = 0;
  }

  v9 = DerivedStorage[3];
  if (v9)
  {
    dispatch_release(v9);
    DerivedStorage[3] = 0;
  }
}

uint64_t figAudioQueueRenderPipelineInvalidate(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  if (!*DerivedStorage)
  {
    v3 = *(DerivedStorage + 40);
    if (v3)
    {
      CMNotificationCenterGetDefaultLocalCenter();
      FigNotificationCenterRemoveWeakListeners();
      FigAudioQueueInvalidate(v3);
    }

    faqrp_setTimebase(a1, 0);
    *DerivedStorage = 1;
  }

  FigSimpleMutexUnlock();
  return 0;
}

void FigAudioQueueInvalidate(uint64_t a1)
{
  if (!a1)
  {
    return;
  }

  if (*(a1 + 24))
  {
    FigSimpleMutexLock();
    if (*(a1 + 16))
    {

      FigSimpleMutexUnlock();
      return;
    }

    *(a1 + 16) = 1;
    FigMemoryBarrier();
    FigSimpleMutexUnlock();
  }

  else
  {
    if (*(a1 + 16))
    {
      return;
    }

    *(a1 + 16) = 1;
    FigMemoryBarrier();
  }

  if (*(a1 + 288))
  {
    *(a1 + 304) = 1;
    FigMemoryBarrier();
    FigSemaphoreSignal();
    FigThreadJoin();
    *(a1 + 288) = 0;
  }

  v2 = *(a1 + 344);
  if (v2)
  {
    dispatch_source_cancel(v2);
    v3 = *(a1 + 344);
    if (v3)
    {
      dispatch_release(v3);
      *(a1 + 344) = 0;
    }
  }

  v4 = *(a1 + 24);
  if (v4)
  {
    FigSimpleMutexLock();
  }

  v5 = *(a1 + 176);
  if (v5)
  {
    Count = CFArrayGetCount(v5);
    if (Count >= 1)
    {
      v7 = Count;
      for (i = 0; i != v7; ++i)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 176), i);
        if (ValueAtIndex[5])
        {
          v10 = ValueAtIndex;
          faq_disconnectFromOfflineMixer(a1, ValueAtIndex);
          FigAudioQueueTimingShimStop(v10[5], 1u);
        }
      }
    }

    v11 = *(a1 + 176);
    if (v11)
    {
      CFRelease(v11);
      *(a1 + 176) = 0;
    }
  }

  if (v4)
  {
    FigSimpleMutexUnlock();
  }

  faq_removeOfflineMixer(a1);
  v12 = *(a1 + 24);
  if (v12)
  {
    FigSimpleMutexLock();
  }

  while (1)
  {
    v13 = *(a1 + 184);
    if (!v13)
    {
      break;
    }

    *(a1 + 184) = *v13;
    faq_destroyTransitionRecord(v13);
  }

  if (v12)
  {
    FigSimpleMutexUnlock();
  }

  v14 = *(a1 + 104);
  if (v14)
  {
    CFRelease(v14);
    *(a1 + 104) = 0;
  }

  v15 = *(a1 + 64);
  if (v15)
  {
    v16 = *(a1 + 88);
    if (v16)
    {
      CMBufferQueueRemoveTrigger(v15, v16);
      *(a1 + 88) = 0;
    }

    v17 = *(a1 + 96);
    if (v17)
    {
      CMBufferQueueRemoveTrigger(*(a1 + 64), v17);
      *(a1 + 96) = 0;
    }

    CMNotificationCenterGetDefaultLocalCenter();
    FigNotificationCenterRemoveWeakListener();
    CMNotificationCenterGetDefaultLocalCenter();
    FigNotificationCenterRemoveWeakListener();
    CFRelease(*(a1 + 80));
    FigBufferQueueRelease();
    *(a1 + 64) = 0;
  }

  faq_removeAudioProcessingTapListeners(a1);
  *(a1 + 236) = 0;
  *(a1 + 204) = 0;
  *(a1 + 212) = 0;
  *(a1 + 220) = 0;
  *(a1 + 228) = 0;
  v18 = *(a1 + 240);
  if (v18)
  {
    CFRelease(v18);
    *(a1 + 240) = 0;
  }

  v19 = *(a1 + 256);
  if (v19)
  {
    CFRelease(v19);
    *(a1 + 256) = 0;
  }

  v20 = *(a1 + 264);
  if (v20)
  {
    CFRelease(v20);
    *(a1 + 264) = 0;
  }

  v21 = *(a1 + 272);
  if (v21)
  {
    CFRelease(v21);
    *(a1 + 272) = 0;
  }

  v22 = *(a1 + 656);
  if (v22)
  {
    CFRelease(v22);
    *(a1 + 656) = 0;
  }

  v23 = *(a1 + 664);
  if (v23)
  {
    CFRelease(v23);
    *(a1 + 664) = 0;
  }

  v24 = *(a1 + 688);
  if (v24)
  {
    CFRelease(v24);
    *(a1 + 688) = 0;
  }

  v25 = *(a1 + 56);
  if (v25)
  {
    CFRelease(v25);
    *(a1 + 56) = 0;
  }

  v26 = *(a1 + 744);
  if (v26)
  {
    CFRelease(v26);
    *(a1 + 744) = 0;
  }

  v27 = *(a1 + 760);
  if (v27)
  {
    CFRelease(v27);
    *(a1 + 760) = 0;
  }

  v28 = *(a1 + 704);
  if (v28)
  {
    CFRelease(v28);
    *(a1 + 704) = 0;
  }

  faq_clearSeamHandlingState(a1);
  v29 = *(a1 + 776);
  if (v29)
  {
    os_release(v29);
    *(a1 + 776) = 0;
  }
}

uint64_t itemasync_Invalidate(void *a1)
{
  CMBaseObjectGetDerivedStorage();
  v2 = FigCFWeakReferenceHolderCopyReferencedObject();
  if (v2)
  {
    v3 = v2;
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    if (FigAtomicCompareAndSwap32())
    {
      CFRetain(a1);
      dispatch_async_f(*(DerivedStorage + 56), a1, itemasync_InvalidateOnQueue);
    }

    CFRelease(v3);
  }

  return 0;
}

uint64_t itemfig_Invalidate(const void *a1)
{
  v75 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v3 = FigCFWeakReferenceHolderCopyReferencedObject();
  if (v3)
  {
    v4 = v3;
    if (!*DerivedStorage)
    {
      v6 = CMBaseObjectGetDerivedStorage();
      if (dword_1EAF16A10)
      {
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      itemfig_invalidateRampOutTimer(a1);
      FigSimpleMutexLock();
      v8 = *(DerivedStorage + 1);
      if (*(DerivedStorage + 1))
      {
        CFRetain(a1);
        FigSimpleMutexUnlock();
        v9 = *(*(CMBaseObjectGetVTable() + 16) + 24);
        if (v9)
        {
          v9(v4, a1);
        }
      }

      else
      {
        FigSimpleMutexUnlock();
      }

      *DerivedStorage = 1;
      if (*(DerivedStorage + 524))
      {
        v10 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      v11 = *(DerivedStorage + 1432);
      if (v11)
      {
        CFRelease(v11);
        *(DerivedStorage + 1432) = 0;
      }

      if (*(DerivedStorage + 1384))
      {
        CMNotificationCenterGetDefaultLocalCenter();
        FigNotificationCenterRemoveWeakListener();
        v12 = *(DerivedStorage + 1384);
        if (v12)
        {
          CFRelease(v12);
          *(DerivedStorage + 1384) = 0;
        }
      }

      if (*(CMBaseObjectGetDerivedStorage() + 1256))
      {
        CMNotificationCenterGetDefaultLocalCenter();
        FigNotificationCenterRemoveWeakListeners();
        CMNotificationCenterGetDefaultLocalCenter();
        FigNotificationCenterRemoveWeakListeners();
      }

      itemfig_updateListenersForVideoTrack(a1, 0);
      v13 = *(DerivedStorage + 1000);
      if (v13)
      {
        CFRelease(v13);
      }

      v14 = *(DerivedStorage + 984);
      if (v14)
      {
        CFRelease(v14);
      }

      v15 = *(DerivedStorage + 1320);
      if (v15)
      {
        CFRelease(v15);
        *(DerivedStorage + 1320) = 0;
      }

      v16 = *(DerivedStorage + 1264);
      if (v16)
      {
        CFRelease(v16);
        *(DerivedStorage + 1264) = 0;
      }

      v17 = *(DerivedStorage + 1272);
      if (v17)
      {
        CFRelease(v17);
        *(DerivedStorage + 1272) = 0;
      }

      if (FigUseVideoReceiverForCALayer())
      {
        itemfig_clearAllImageQueueTables(a1);
      }

      else
      {
        itemfig_removeAllImageQueues(a1);
      }

      v18 = *(DerivedStorage + 904);
      if (v18)
      {
        CFRelease(v18);
        *(DerivedStorage + 904) = 0;
      }

      v19 = *(DerivedStorage + 1168);
      if (v19)
      {
        CFRelease(v19);
        *(DerivedStorage + 1168) = 0;
      }

      playeritemfig_releaseVideoCompositionObjects(a1);
      v20 = *(DerivedStorage + 656);
      if (v20)
      {
        CFRelease(v20);
        *(DerivedStorage + 656) = 0;
      }

      v21 = *(DerivedStorage + 744);
      if (v21)
      {
        CFRelease(v21);
        *(DerivedStorage + 744) = 0;
      }

      v22 = *(DerivedStorage + 752);
      if (v22)
      {
        CFRelease(v22);
        *(DerivedStorage + 752) = 0;
      }

      v23 = *(DerivedStorage + 760);
      if (v23)
      {
        CFRelease(v23);
        *(DerivedStorage + 760) = 0;
      }

      v24 = *(DerivedStorage + 768);
      if (v24)
      {
        CFRelease(v24);
        *(DerivedStorage + 768) = 0;
      }

      v25 = *(DerivedStorage + 776);
      if (v25)
      {
        CFRelease(v25);
        *(DerivedStorage + 776) = 0;
      }

      v26 = *(DerivedStorage + 784);
      if (v26)
      {
        CFRelease(v26);
        *(DerivedStorage + 784) = 0;
      }

      v27 = *(DerivedStorage + 960);
      if (v27)
      {
        CFRelease(v27);
        *(DerivedStorage + 960) = 0;
      }

      v28 = *(DerivedStorage + 968);
      if (v28)
      {
        CFRelease(v28);
        *(DerivedStorage + 968) = 0;
      }

      v29 = *(DerivedStorage + 1496);
      if (v29)
      {
        CFRelease(v29);
        *(DerivedStorage + 1496) = 0;
      }

      v30 = *(DerivedStorage + 1504);
      if (v30)
      {
        CFRelease(v30);
        *(DerivedStorage + 1504) = 0;
      }

      v31 = *(DerivedStorage + 2080);
      if (v31)
      {
        CFRelease(v31);
        *(DerivedStorage + 2080) = 0;
      }

      v32 = *(DerivedStorage + 2192);
      if (v32)
      {
        CFRelease(v32);
        *(DerivedStorage + 2192) = 0;
      }

      if (*(DerivedStorage + 1008))
      {
        CMNotificationCenterGetDefaultLocalCenter();
        FigNotificationCenterRemoveWeakListener();
      }

      v33 = *(DerivedStorage + 1016);
      if (v33)
      {
        CFRelease(v33);
        *(DerivedStorage + 1016) = 0;
      }

      v34 = *(DerivedStorage + 1376);
      if (v34)
      {
        CFRelease(v34);
        *(DerivedStorage + 1376) = 0;
      }

      if (*(DerivedStorage + 128))
      {
        CMByteStreamGetCMBaseObject();
        FigCRABSGetClassID();
        if (CMBaseObjectIsMemberOfClass())
        {
          CMNotificationCenterGetDefaultLocalCenter();
          FigNotificationCenterRemoveWeakListener();
        }
      }

      v35 = *(DerivedStorage + 632);
      if (v35)
      {
        CFRelease(v35);
        *(DerivedStorage + 632) = 0;
      }

      v36 = *(DerivedStorage + 112);
      if (v36)
      {
        CFRelease(v36);
        *(DerivedStorage + 112) = 0;
      }

      v37 = *(DerivedStorage + 648);
      if (v37)
      {
        Count = CFArrayGetCount(v37);
        if (Count >= 1)
        {
          v39 = Count;
          for (i = 0; i != v39; ++i)
          {
            ValueAtIndex = CFArrayGetValueAtIndex(*(DerivedStorage + 648), i);
            if (ValueAtIndex[1] == 1986618469)
            {
              itemfig_clearTrackImageQueueTable(a1, ValueAtIndex);
            }
          }
        }
      }

      v42 = *(DerivedStorage + 680);
      if (v42)
      {
        CFRelease(v42);
        *(DerivedStorage + 680) = 0;
      }

      v43 = *(DerivedStorage + 800);
      if (v43)
      {
        CFRelease(v43);
        *(DerivedStorage + 800) = 0;
      }

      v44 = *(DerivedStorage + 808);
      if (v44)
      {
        CFRelease(v44);
        *(DerivedStorage + 808) = 0;
      }

      v45 = *(DerivedStorage + 816);
      if (v45)
      {
        CFRelease(v45);
        *(DerivedStorage + 816) = 0;
      }

      v46 = *(DerivedStorage + 1840);
      if (v46)
      {
        CFRelease(v46);
        *(DerivedStorage + 1840) = 0;
      }

      v47 = *(DerivedStorage + 1864);
      if (v47)
      {
        CFRelease(v47);
        *(DerivedStorage + 1864) = 0;
      }

      v48 = *(DerivedStorage + 1880);
      if (v48)
      {
        CFRelease(v48);
        *(DerivedStorage + 1880) = 0;
      }

      v49 = *(DerivedStorage + 1888);
      if (v49)
      {
        CFRelease(v49);
        *(DerivedStorage + 1888) = 0;
      }

      v50 = *(DerivedStorage + 1896);
      if (v50)
      {
        CFRelease(v50);
        *(DerivedStorage + 1896) = 0;
      }

      v51 = *(DerivedStorage + 1200);
      if (v51)
      {
        CFRelease(v51);
        *(DerivedStorage + 1200) = 0;
      }

      itemfig_reportingAgentTeardown(a1);
      v52 = *(DerivedStorage + 2056);
      if (v52)
      {
        CFRelease(v52);
        *(DerivedStorage + 2056) = 0;
      }

      v53 = *(DerivedStorage + 1208);
      if (v53)
      {
        CFRelease(v53);
        *(DerivedStorage + 1208) = 0;
      }

      v54 = *(DerivedStorage + 104);
      if (v54)
      {
        dispatch_release(v54);
        *(DerivedStorage + 104) = 0;
      }

      v55 = *(DerivedStorage + 1560);
      if (v55)
      {
        CFRelease(v55);
        *(DerivedStorage + 1560) = 0;
      }

      v56 = *(DerivedStorage + 1752);
      if (v56)
      {
        CFRelease(v56);
        *(DerivedStorage + 1752) = 0;
      }

      v57 = *(DerivedStorage + 1760);
      if (v57)
      {
        CFRelease(v57);
        *(DerivedStorage + 1760) = 0;
      }

      CMNotificationCenterGetDefaultLocalCenter();
      FigNotificationCenterRemoveWeakListener();
      itemfig_unregisterAndDestroyPlayabilityMonitorNotification(a1);
      FigSimpleMutexLock();
      v58 = *(DerivedStorage + 1776);
      if (v58)
      {
        CFRelease(v58);
        *(DerivedStorage + 1776) = 0;
      }

      FigSimpleMutexUnlock();
      v59 = *(DerivedStorage + 1800);
      if (v59)
      {
        CFRelease(v59);
        *(DerivedStorage + 1800) = 0;
      }

      v60 = *(DerivedStorage + 1480);
      if (v60)
      {
        CFRelease(v60);
        *(DerivedStorage + 1480) = 0;
      }

      v61 = *(DerivedStorage + 1512);
      if (v61)
      {
        CFRelease(v61);
        *(DerivedStorage + 1512) = 0;
      }

      v62 = *(DerivedStorage + 1520);
      if (v62)
      {
        CFRelease(v62);
        *(DerivedStorage + 1520) = 0;
      }

      v63 = *(DerivedStorage + 1528);
      if (v63)
      {
        CFRelease(v63);
        *(DerivedStorage + 1528) = 0;
      }

      v64 = *(DerivedStorage + 1536);
      if (v64)
      {
        CFRelease(v64);
        *(DerivedStorage + 1536) = 0;
      }

      v65 = *(DerivedStorage + 1544);
      if (v65)
      {
        CFRelease(v65);
        *(DerivedStorage + 1544) = 0;
      }

      v66 = *(DerivedStorage + 1552);
      if (v66)
      {
        CFRelease(v66);
        *(DerivedStorage + 1552) = 0;
      }

      FPSupport_InvalidateMetadataStorage(*(DerivedStorage + 1808));
      v67 = *(DerivedStorage + 2072);
      if (v67)
      {

        *(DerivedStorage + 2072) = 0;
      }

      v68 = *(DerivedStorage + 344);
      if (v68)
      {
        CFRelease(v68);
        *(DerivedStorage + 344) = 0;
      }

      v69 = *(DerivedStorage + 528);
      if (v69)
      {
        CFRelease(v69);
        *(DerivedStorage + 528) = 0;
      }

      v70 = *(DerivedStorage + 1064);
      if (v70)
      {
        CFRelease(v70);
        *(DerivedStorage + 1064) = 0;
      }

      v71 = *(DerivedStorage + 2144);
      if (v71)
      {
        CFRelease(v71);
        *(DerivedStorage + 2144) = 0;
      }

      FigSimpleMutexLock();
      v72 = *(DerivedStorage + 2160);
      if (v72)
      {
        CFRelease(v72);
        *(DerivedStorage + 2160) = 0;
      }

      v73 = *(DerivedStorage + 2168);
      if (v73)
      {
        CFRelease(v73);
        *(DerivedStorage + 2168) = 0;
      }

      v74 = *(DerivedStorage + 2176);
      if (v74)
      {
        CFRelease(v74);
        *(DerivedStorage + 2176) = 0;
      }

      FigSimpleMutexUnlock();
      if (v8)
      {
        CFRelease(a1);
      }

      FigSimpleMutexLock();
      CFSetRemoveValue(*(v6 + 32), a1);
      FigSimpleMutexUnlock();
    }

    CFRelease(v4);
  }

  return 0;
}

void ReleaseSampleDescriptionInfoArray(uint64_t a1)
{
  v2 = *(a1 + 56);
  if (v2)
  {
    Count = CFArrayGetCount(v2);
    if (Count >= 1)
    {
      v4 = Count;
      for (i = 0; i != v4; ++i)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 56), i);
        free(ValueAtIndex);
      }
    }

    v7 = *(a1 + 56);
    if (v7)
    {
      CFRelease(v7);
      *(a1 + 56) = 0;
    }
  }

  v8 = *(a1 + 40);
  if (v8)
  {
    CFRelease(v8);
    *(a1 + 40) = 0;
  }
}

void ReleaseDataReferenceInfoArray(uint64_t a1)
{
  v2 = *(a1 + 64);
  if (v2)
  {
    Count = CFArrayGetCount(v2);
    if (Count >= 1)
    {
      v4 = Count;
      for (i = 0; i != v4; ++i)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 64), i);
        v7 = ValueAtIndex[1];
        if (v7)
        {
          CFRelease(v7);
        }

        v8 = ValueAtIndex[2];
        if (v8)
        {
          CFRelease(v8);
        }

        free(ValueAtIndex);
      }
    }

    v9 = *(a1 + 64);
    if (v9)
    {
      CFRelease(v9);
      *(a1 + 64) = 0;
    }
  }
}

void FigiTunesMetadataFinalize(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*DerivedStorage)
  {
    CFRelease(*DerivedStorage);
    *DerivedStorage = 0;
  }
}

uint64_t FigCachedFileByteStreamFinalize(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v2 = *(DerivedStorage + 8);
  if (v2)
  {
    CFRelease(v2);
    *(DerivedStorage + 8) = 0;
  }

  v3 = *(DerivedStorage + 24);
  if (v3)
  {
    if (*(DerivedStorage + 120))
    {
      FigReadCacheContainerShowDisinterestInCaching(v3);
      v3 = *(DerivedStorage + 24);
    }

    FigReadCacheReleaseContainer(v3);
    *(DerivedStorage + 24) = 0;
  }

  v4 = *(DerivedStorage + 32);
  if (v4)
  {
    FigReadCacheDisposeRequestCompletion(v4);
    *(DerivedStorage + 32) = 0;
  }

  FigSimpleMutexDestroy();
  if (*DerivedStorage)
  {
    CFRelease(*DerivedStorage);
  }

  v5 = *(DerivedStorage + 16);
  if (v5)
  {
    CFRelease(v5);
  }

  return FigByteStreamStatsTeardownWorker();
}

uint64_t FigReadCacheReleaseContainer(uint64_t a1)
{
  if (a1)
  {
    v2 = malloc_type_calloc(1uLL, 0x40uLL, 0x1062040E84F1957uLL);
    v2[4] = 4;
    *(v2 + 3) = a1;
    IssueFigReadCacheRequest(v2);
  }

  return 0;
}

void FigReadCacheDisposeRequestCompletion(void *a1)
{
  if (a1)
  {
    FigSimpleMutexDestroy();
    FigSemaphoreDestroy();

    free(a1);
  }
}

uint64_t itemfig_Finalize(const void *a1)
{
  v78 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v3 = FigCFWeakReferenceHolderCopyReferencedObject();
  if (dword_1EAF16A10)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  itemfig_Invalidate(a1);
  v5 = *(DerivedStorage + 1792);
  if (v5)
  {
    CFRelease(v5);
  }

  v6 = *(DerivedStorage + 1824);
  if (v6)
  {
    CFRelease(v6);
  }

  v7 = *(DerivedStorage + 16);
  if (v7)
  {
    CFRelease(v7);
    *(DerivedStorage + 16) = 0;
  }

  FigStopForwardingMediaServicesProcessDeathNotification();
  FigStopForwardingMediaServicesProcessDeathNotification();
  v8 = *(DerivedStorage + 848);
  if (v8)
  {
    CFRelease(v8);
  }

  v9 = 0;
  v10 = DerivedStorage + 368;
  do
  {
    v11 = *(v10 + v9);
    if (v11)
    {
      CFRelease(v11);
      *(v10 + v9) = 0;
    }

    v9 += 8;
  }

  while (v9 != 112);
  v12 = *(DerivedStorage + 1808);
  if (v12)
  {
    CFRelease(v12);
    *(DerivedStorage + 1808) = 0;
  }

  v13 = *(DerivedStorage + 1816);
  if (v13)
  {
    CFRelease(v13);
  }

  v14 = *(DerivedStorage + 128);
  if (v14)
  {
    CFRelease(v14);
    *(DerivedStorage + 128) = 0;
  }

  v15 = *(DerivedStorage + 1376);
  if (v15)
  {
    CFRelease(v15);
    *(DerivedStorage + 1376) = 0;
  }

  v16 = *(DerivedStorage + 1008);
  if (v16)
  {
    CFRelease(v16);
    *(DerivedStorage + 1008) = 0;
  }

  v17 = *(DerivedStorage + 1256);
  if (v17)
  {
    CFRelease(v17);
    *(DerivedStorage + 1256) = 0;
  }

  v18 = *(DerivedStorage + 1288);
  if (v18)
  {
    CFRelease(v18);
    *(DerivedStorage + 1288) = 0;
  }

  v19 = *(DerivedStorage + 1312);
  if (v19)
  {
    CFRelease(v19);
    *(DerivedStorage + 1312) = 0;
  }

  v20 = *(DerivedStorage + 648);
  if (v20)
  {
    Count = CFArrayGetCount(v20);
    if (Count >= 1)
    {
      v22 = Count;
      for (i = 0; i != v22; ++i)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(*(DerivedStorage + 648), i);
        v25 = ValueAtIndex;
        v26 = ValueAtIndex[2];
        if (v26)
        {
          v27 = *(ValueAtIndex + 1);
          v28 = v27 == 1986618469 || v27 == 1635088502;
          if (!v28 || (FigStopForwardingMediaServicesProcessDeathNotification(), (v26 = v25[2]) != 0))
          {
            CFRelease(v26);
            v25[2] = 0;
          }
        }

        v29 = v25[3];
        if (v29)
        {
          CFRelease(v29);
          v25[3] = 0;
        }

        v30 = v25[4];
        if (v30)
        {
          CFRelease(v30);
          v25[4] = 0;
        }

        v31 = v25[5];
        if (v31)
        {
          CFRelease(v31);
          v25[5] = 0;
        }

        v32 = v25[6];
        if (v32)
        {
          CFRelease(v32);
          v25[6] = 0;
        }

        v33 = v25[7];
        if (v33)
        {
          CFRelease(v33);
          v25[7] = 0;
        }

        v34 = v25[10];
        if (v34)
        {
          CFRelease(v34);
          v25[10] = 0;
        }

        v35 = v25[12];
        if (v35)
        {
          CFRelease(v35);
          v25[12] = 0;
        }

        v36 = v25[11];
        if (v36)
        {
          CFRelease(v36);
          v25[11] = 0;
        }

        v37 = v25[13];
        if (v37)
        {
          CFRelease(v37);
          v25[13] = 0;
        }

        v38 = v25[14];
        if (v38)
        {
          CFRelease(v38);
          v25[14] = 0;
        }

        v39 = v25[16];
        if (v39)
        {
          CFRelease(v39);
          v25[16] = 0;
        }

        v40 = v25[18];
        if (v40)
        {
          CFRelease(v40);
          v25[18] = 0;
        }

        v41 = v25[19];
        if (v41)
        {
          CFRelease(v41);
          v25[19] = 0;
        }

        v42 = v25[22];
        if (v42)
        {
          CFRelease(v42);
          v25[22] = 0;
        }

        v43 = v25[23];
        if (v43)
        {
          CFRelease(v43);
          v25[23] = 0;
        }

        v44 = v25[24];
        if (v44)
        {
          CFRelease(v44);
          v25[24] = 0;
        }

        v45 = v25[26];
        if (v45)
        {
          CFRelease(v45);
          v25[26] = 0;
        }

        v46 = v25[25];
        if (v46)
        {
          CFRelease(v46);
          v25[25] = 0;
        }

        v47 = v25[27];
        if (v47)
        {
          CFRelease(v47);
          v25[27] = 0;
        }

        v48 = v25[28];
        if (v48)
        {
          CFRelease(v48);
          v25[28] = 0;
        }

        v49 = v25[29];
        if (v49)
        {
          CFRelease(v49);
          v25[29] = 0;
        }

        v50 = v25[31];
        if (v50)
        {
          CFRelease(v50);
          v25[31] = 0;
        }

        v51 = v25[30];
        if (v51)
        {
          CFRelease(v51);
          v25[30] = 0;
        }

        v52 = v25[33];
        if (v52)
        {
          CFRelease(v52);
          v25[33] = 0;
        }

        v53 = v25[34];
        if (v53)
        {
          CFRelease(v53);
          v25[34] = 0;
        }

        v54 = v25[36];
        if (v54)
        {
          CFRelease(v54);
          v25[36] = 0;
        }

        v55 = v25[35];
        if (v55)
        {
          CFRelease(v55);
          v25[35] = 0;
        }

        v56 = v25[32];
        if (v56)
        {
          CFRelease(v56);
          v25[32] = 0;
        }

        v57 = v25[37];
        if (v57)
        {
          CFRelease(v57);
          v25[37] = 0;
        }

        v58 = v25[38];
        if (v58)
        {
          CFRelease(v58);
          v25[38] = 0;
        }

        v59 = v25[39];
        if (v59)
        {
          CFRelease(v59);
          v25[39] = 0;
        }

        v60 = v25[21];
        if (v60)
        {
          CFRelease(v60);
        }

        free(v25);
      }
    }

    v61 = *(DerivedStorage + 648);
    if (v61)
    {
      CFRelease(v61);
      *(DerivedStorage + 648) = 0;
    }
  }

  if (*(DerivedStorage + 640))
  {
    FigSimpleMutexDestroy();
    *(DerivedStorage + 640) = 0;
  }

  v62 = *(DerivedStorage + 1088);
  if (v62)
  {
    CFRelease(v62);
    *(DerivedStorage + 1088) = 0;
  }

  v63 = *(DerivedStorage + 1128);
  if (v63)
  {
    CFRelease(v63);
    *(DerivedStorage + 1128) = 0;
  }

  itemfig_releaseAIMEDataAndAllAIMEDataChannelResources(a1);
  v64 = *(DerivedStorage + 1136);
  if (v64)
  {
    CFRelease(v64);
    *(DerivedStorage + 1136) = 0;
  }

  if (*(DerivedStorage + 1160))
  {
    FigSimpleMutexDestroy();
    *(DerivedStorage + 1160) = 0;
  }

  if (*(DerivedStorage + 504))
  {
    FigSimpleMutexDestroy();
    *(DerivedStorage + 504) = 0;
  }

  v65 = *(DerivedStorage + 512);
  if (v65)
  {
    CFRelease(v65);
    *(DerivedStorage + 512) = 0;
  }

  if (*(DerivedStorage + 1248))
  {
    FigSimpleMutexDestroy();
  }

  if (*(DerivedStorage + 616))
  {
    FigSimpleMutexDestroy();
  }

  if (*(DerivedStorage + 1784))
  {
    FigSimpleMutexDestroy();
  }

  if (*(DerivedStorage + 1448))
  {
    FigSimpleMutexDestroy();
  }

  if (*(DerivedStorage + 672))
  {
    FigSimpleMutexDestroy();
    *(DerivedStorage + 672) = 0;
  }

  if (*(DerivedStorage + 792))
  {
    FigSimpleMutexDestroy();
    *(DerivedStorage + 792) = 0;
  }

  if (*(DerivedStorage + 888))
  {
    FigSimpleMutexDestroy();
    *(DerivedStorage + 888) = 0;
  }

  v66 = *(DerivedStorage + 1184);
  if (v66)
  {
    CFRelease(v66);
    *(DerivedStorage + 1184) = 0;
  }

  v67 = *(DerivedStorage + 328);
  if (v67)
  {
    CFRelease(v67);
    *(DerivedStorage + 328) = 0;
  }

  v68 = *(DerivedStorage + 336);
  if (v68)
  {
    CFRelease(v68);
    *(DerivedStorage + 336) = 0;
  }

  v69 = *(DerivedStorage + 1072);
  if (v69)
  {
    CFRelease(v69);
    *(DerivedStorage + 1072) = 0;
  }

  if (*(DerivedStorage + 1944))
  {
    FigSimpleMutexDestroy();
    *(DerivedStorage + 1944) = 0;
  }

  v70 = *(DerivedStorage + 2128);
  if (v70)
  {
    CFRelease(v70);
    *(DerivedStorage + 2128) = 0;
  }

  v71 = *(DerivedStorage + 2136);
  if (v71)
  {
    CFRelease(v71);
    *(DerivedStorage + 2136) = 0;
  }

  if (*(DerivedStorage + 2152))
  {
    FigSimpleMutexDestroy();
    *(DerivedStorage + 2152) = 0;
  }

  v72 = *(DerivedStorage + 2208);
  if (v72)
  {
    CFRelease(v72);
    *(DerivedStorage + 2208) = 0;
  }

  v73 = *(DerivedStorage + 2200);
  if (v73)
  {
    CFRelease(v73);
    *(DerivedStorage + 2200) = 0;
  }

  v74 = *(DerivedStorage + 1024);
  if (v74)
  {
    CFRelease(v74);
    *(DerivedStorage + 1024) = 0;
  }

  v75 = *(DerivedStorage + 2232);
  if (v75)
  {
    CFRelease(v75);
    *(DerivedStorage + 2232) = 0;
  }

  v76 = *(DerivedStorage + 2240);
  if (v76)
  {
    CFRelease(v76);
    *(DerivedStorage + 2240) = 0;
  }

  if (v3)
  {
    CFRelease(v3);
  }

  CMNotificationCenterGetDefaultLocalCenter();
  return FigNotificationCenterCheckWeakListenersWereRemovedBeforeFinalization();
}

void playerasync_removeItemFromPlayQueueWithoutInformingSubPlayer(uint64_t a1, const void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (CFSetContainsValue(*(DerivedStorage + 48), a2))
  {
    CFRetain(a2);
    CFSetRemoveValue(*(DerivedStorage + 48), a2);

    CFRelease(a2);
  }
}

void itemasync_Finalize(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 4))
  {
    CMNotificationCenterGetDefaultLocalCenter();
    FigNotificationCenterRemoveWeakListener();
    *(DerivedStorage + 4) = 0;
  }

  if (*(DerivedStorage + 24))
  {
    if (*(DerivedStorage + 16))
    {
      v2 = FigCFWeakReferenceHolderCopyReferencedObject();
      if (v2)
      {
        v3 = v2;
        CMBaseObjectGetDerivedStorage();
        FigCFWeakReferenceTableRemoveValue();
        CFRelease(v3);
      }
    }
  }

  v4 = *(DerivedStorage + 16);
  if (v4)
  {
    CFRelease(v4);
    *(DerivedStorage + 16) = 0;
  }

  v5 = *(DerivedStorage + 24);
  if (v5)
  {
    CFRelease(v5);
    *(DerivedStorage + 24) = 0;
  }
}

uint64_t UnlinkContainer(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 128);
  v3 = *(a2 + 136);
  v4 = (v2 + 136);
  if (!v2)
  {
    v4 = result;
  }

  *v4 = v3;
  if (v3)
  {
    v5 = (v3 + 128);
  }

  else
  {
    v5 = (result + 8);
  }

  *v5 = v2;
  *(a2 + 128) = 0;
  *(a2 + 136) = 0;
  --*(result + 16);
  return result;
}

double FigDiskCacheRepositoryCopyDefaultParentURLForCurrentTask(CFTypeRef *a1, int a2)
{
  v15 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    *a1 = 0;
    v5 = *MEMORY[0x1E695E480];
    v6 = FigCFURLCreateFromSystemTemporaryDirectory();
    if (v6)
    {
      v8 = v6;
      if (!CFURLGetFileSystemRepresentation(v6, 0, buffer, 1024))
      {
        fig_log_get_emitter();
        FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v13, buffer[0], buffer[2]);
LABEL_13:
        CFRelease(v8);
        return result;
      }

      CFRelease(v8);
      __strlcat_chk();
      v9 = strlen(buffer);
      v10 = CFURLCreateFromFileSystemRepresentation(v5, buffer, v9, 1u);
      if (v10)
      {
        v8 = v10;
        if (!a2 || !FigCFURLCreateDirectory())
        {
          v11 = CFURLGetString(v8);
          if (v11)
          {
            *a1 = CFRetain(v11);
          }

          else
          {
            *a1 = 0;
          }
        }

        goto LABEL_13;
      }
    }
  }

  else
  {
    emitter = fig_log_get_emitter();

    return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 4294954670, "<<< FigDiskCacheRepository >>>", 630, v2);
  }

  return result;
}

uint64_t FigCreateCacheMemoryAllocatorForCRABS(uint64_t a1, CFAllocatorRef *a2)
{
  v4 = malloc_type_malloc(0x20uLL, 0x1020040D49128EBuLL);
  context.version = 0;
  context.info = v4;
  context.retain = 0;
  context.release = QTMovieCacheMemReleaseCallBack;
  context.copyDescription = 0;
  context.allocate = QTMovieCacheMemAllocateCallBack;
  context.reallocate = QTMovieCacheMemReallocateCallBack;
  context.deallocate = QTMovieCacheMemDeallocateCallBack;
  context.preferredSize = QTMovieCacheMemPreferredSizeCallBack;
  *v4 = 0;
  v4[1] = 0;
  v4[2] = 0;
  v4[3] = a1;
  v5 = CFAllocatorCreate(*MEMORY[0x1E695E480], &context);
  *a2 = v5;
  if (v5)
  {
    return 0;
  }

  else
  {
    return 4294967188;
  }
}

void InitDiskCache(uint64_t a1)
{
  sDiskCacheLock = FigSimpleMutexCreate();
  if (sDiskCacheLock)
  {
    sDiskCacheList = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    if (sDiskCacheList)
    {
      v1 = 0;
    }

    else
    {
      InitDiskCache_cold_1(&v2);
      v1 = v2;
    }
  }

  else
  {
    InitDiskCache_cold_2(&v3);
    v1 = v3;
  }

  sDiskInitStatus = v1;
}

uint64_t FigDiskCacheRepositoryCreate(const __CFURL *a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (!a1)
  {
    FigDiskCacheRepositoryCreate_cold_7(v23);
    return v23[0];
  }

  if (!a4)
  {
    FigDiskCacheRepositoryCreate_cold_6(v23);
    return v23[0];
  }

  *a4 = 0;
  v8 = *MEMORY[0x1E695E480];
  if (sRegisterFigDiskCacheRepositoryTypeOnce != -1)
  {
    FigDiskCacheRepositoryGetTypeID_cold_1();
  }

  Instance = _CFRuntimeCreateInstance();
  if (!Instance)
  {
    FigDiskCacheRepositoryCreate_cold_5(v23);
    return v23[0];
  }

  v10 = Instance;
  v11 = FigSimpleMutexCreate();
  *(v10 + 16) = v11;
  if (!v11)
  {
    FigDiskCacheRepositoryCreate_cold_4(v23);
    v12 = 0;
    goto LABEL_37;
  }

  *(v10 + 24) = 0;
  v12 = CFURLCopyFileSystemPath(a1, kCFURLPOSIXPathStyle);
  if (v12)
  {
    v13 = CFURLCreateWithFileSystemPath(v8, v12, kCFURLPOSIXPathStyle, 1u);
    *(v10 + 24) = v13;
    if (v13)
    {
      goto LABEL_9;
    }

    goto LABEL_25;
  }

  if (!*(v10 + 24))
  {
LABEL_25:
    FigDiskCacheRepositoryCreate_cold_3(v23);
LABEL_37:
    v15 = 0;
    goto LABEL_38;
  }

LABEL_9:
  *(v10 + 32) = 0;
  v14 = MEMORY[0x19A8CD910](v8, @"diskcacherepository.plist", 0, 0);
  v15 = v14;
  if (!v14)
  {
    if (*(v10 + 32))
    {
      goto LABEL_11;
    }

    goto LABEL_27;
  }

  v16 = CFURLCopyAbsoluteURL(v14);
  *(v10 + 32) = v16;
  if (!v16)
  {
LABEL_27:
    FigDiskCacheRepositoryCreate_cold_2(v23);
LABEL_38:
    v19 = v23[0];
LABEL_19:
    CFRelease(v10);
    if (!v15)
    {
      goto LABEL_21;
    }

    goto LABEL_20;
  }

LABEL_11:
  *(v10 + 64) = 0;
  *(v10 + 40) = a2;
  *(v10 + 48) = a3;
  v17 = MEMORY[0x1E695E9D8];
  v18 = MEMORY[0x1E695E9E8];
  *(v10 + 72) = CFDictionaryCreateMutable(v8, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  *(v10 + 80) = CFDictionaryCreateMutable(v8, 0, v17, v18);
  *(v10 + 88) = CFDictionaryCreateMutable(v8, 0, v17, v18);
  *(v10 + 96) = CFDictionaryCreateMutable(v8, 0, v17, v18);
  *(v10 + 104) = CFDictionaryCreateMutable(v8, 0, v17, v18);
  *(v10 + 128) = getpid();
  if (!*(v10 + 72) || !*(v10 + 80) || !*(v10 + 96) || !*(v10 + 88) || !*(v10 + 104))
  {
    fig_log_get_emitter();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", 0, v22, v23[1]);
    v19 = v20;
    goto LABEL_19;
  }

  if (FigCFURLCreateDirectory())
  {
    v19 = 4294954675;
    goto LABEL_19;
  }

  if (!FigFileForkOpenMainByCFURL())
  {
    fdcr_ReadRepositoryPlist(v10, 0);
    fdcr_WriteRepositoryPlist(v10, 0, 1, 1);
    FigFileForkClose();
  }

  v19 = 0;
  *(v10 + 112) = 1;
  *a4 = v10;
  if (!v15)
  {
    goto LABEL_21;
  }

LABEL_20:
  CFRelease(v15);
LABEL_21:
  if (v12)
  {
    CFRelease(v12);
  }

  return v19;
}

void fdcr_RemoveFilePathInListFromArray(const __CFArray *a1, const __CFDictionary *a2, int a3)
{
  if (a1)
  {
    if (a2)
    {
      Mutable = CFSetCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9F8]);
      if (Mutable)
      {
        v7 = Mutable;
        CFDictionaryApplyFunction(a2, fdcr_CopyFilenameFromPathDictionaryApplierFunction, Mutable);
        Count = CFArrayGetCount(a1);
        if (Count >= 1)
        {
          v9 = Count + 1;
          do
          {
            ValueAtIndex = CFArrayGetValueAtIndex(a1, v9 - 2);
            PathComponent = CFURLCopyLastPathComponent(ValueAtIndex);
            if (CFSetContainsValue(v7, PathComponent))
            {
              if (!a3 || (v13 = 0, fdcr_IsResourceInUse(ValueAtIndex, &v13), !v12) && v13)
              {
                CFArrayRemoveValueAtIndex(a1, v9 - 2);
              }
            }

            if (PathComponent)
            {
              CFRelease(PathComponent);
            }

            --v9;
          }

          while (v9 > 1);
        }

        CFRelease(v7);
      }

      else
      {
        fdcr_RemoveFilePathInListFromArray_cold_1();
      }
    }

    else
    {
      fdcr_RemoveFilePathInListFromArray_cold_2();
    }
  }

  else
  {
    fdcr_RemoveFilePathInListFromArray_cold_3();
  }
}

void FigDiskCacheRepositorySetTarget(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  if (a1)
  {
    FigSimpleMutexLock();
    if (!FigCFURLCreateDirectory() && !FigFileForkOpenMainByCFURL())
    {
      fdcr_ReadRepositoryPlist(a1, 0);
      if (a4)
      {
        *(a1 + 56) = 1;
      }

      else
      {
        if (a2 >= 1)
        {
          *(a1 + 40) = a2;
        }

        if (a3 >= 1)
        {
          *(a1 + 48) = a3;
        }
      }

      fdcr_WriteRepositoryPlist(a1, 0, 1, 0);
      FigFileForkClose();
    }

    FigSimpleMutexUnlock();
  }

  else
  {
    emitter = fig_log_get_emitter();

    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 4294954670, "<<< FigDiskCacheRepository >>>", 793, v4);
  }
}

uint64_t fdcr_WriteRepositoryPlist(uint64_t a1, uint64_t a2, int a3, char a4)
{
  v7 = v4;
  v76 = *MEMORY[0x1E69E9840];
  v74 = 0;
  v72 = 0u;
  v73 = 0u;
  *values = 0u;
  *keys = xmmword_1E7483460;
  v68 = *&off_1E7483470;
  v69 = xmmword_1E7483480;
  v70 = @"automaticallyManagesSize";
  v9 = FigCFURLCreateDirectory();
  if (v9)
  {
    goto LABEL_77;
  }

  v10 = *MEMORY[0x1E695E480];
  if (a3)
  {
    v11 = *(a1 + 24);
    Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
    if (Mutable)
    {
      v13 = Mutable;
      if (CFURLGetFileSystemRepresentation(v11, 1u, buffer, 1024))
      {
        v14 = opendir(buffer);
        if (v14)
        {
          v15 = v14;
          v64 = v4;
          for (i = readdir(v14); i; i = readdir(v15))
          {
            d_name = i->d_name;
            if (i->d_name[0])
            {
              d_type = i->d_type;
              v19 = d_type > 8;
              v20 = (1 << d_type) & 0x111;
              v21 = v19 || v20 == 0;
              if (!v21 && (i->d_name[0] != 46 || i->d_name[1] && (i->d_name[1] != 46 || i->d_name[2])))
              {
                if (strcmp(i->d_name, "diskcacherepository.plist"))
                {
                  v22 = CFStringCreateWithCString(v10, d_name, 0x8000100u);
                  if (v22)
                  {
                    v23 = v22;
                    v24 = CFURLCreateCopyAppendingPathComponent(v10, v11, v22, 0);
                    if (v24)
                    {
                      v25 = v24;
                      CFArrayAppendValue(v13, v24);
                      CFRelease(v25);
                    }

                    CFRelease(v23);
                  }
                }
              }
            }
          }

          closedir(v15);
          v7 = v4;
LABEL_27:
          fdcr_RemoveFilePathInListFromArray(v13, *(a1 + 72), 0);
          fdcr_RemoveFilePathInListFromArray(v13, *(a1 + 80), a4 & 1);
          Count = CFArrayGetCount(v13);
          if (Count >= 1)
          {
            v31 = Count;
            v32 = 0;
            v33 = *MEMORY[0x1E695EB28];
            v34 = *MEMORY[0x1E695E4D0];
            do
            {
              ValueAtIndex = CFArrayGetValueAtIndex(v13, v32);
              buffer[0] = 0;
              v65 = 0;
              propertyValueTypeRefPtr = 0;
              CFURLCopyResourcePropertyForKey(ValueAtIndex, v33, &propertyValueTypeRefPtr, 0);
              if (propertyValueTypeRefPtr == v34)
              {
                fdcr_GetDirectoryStats(ValueAtIndex, 0, buffer);
              }

              else
              {
                FigCFURLGetFileStats();
              }

              if (propertyValueTypeRefPtr)
              {
                CFRelease(propertyValueTypeRefPtr);
                propertyValueTypeRefPtr = 0;
              }

              fdcr_IsResourceInUse(ValueAtIndex, &v65);
              if (!v65 && buffer[0] >= 1)
              {
                fdcr_DeleteResource(ValueAtIndex);
              }

              ++v32;
            }

            while (v31 != v32);
          }

          if (v13)
          {
            CFRelease(v13);
          }

          fdcr_CleanCacheFileList(a1, *(a1 + 72));
          if (!v36)
          {
            fdcr_CleanCacheFileList(a1, *(a1 + 80));
            if (!v37)
            {
              if (*(a1 + 56))
              {
                CFDictionaryApplyFunction(*(a1 + 72), markDiskCacheRepositoryPurgeable, 0);
              }

              propertyValueTypeRefPtr = 0;
              if (!fdcr_CopySortedCacheFileListCheckedIn(a1, &propertyValueTypeRefPtr))
              {
                v38 = propertyValueTypeRefPtr;
                buffer[0] = 0;
                if (propertyValueTypeRefPtr)
                {
                  v39 = CFArrayGetCount(propertyValueTypeRefPtr);
                  if (v39 >= 1)
                  {
                    v40 = v39 + 1;
                    do
                    {
                      v41 = CFArrayGetValueAtIndex(v38, v40 - 2);
                      if (v41)
                      {
                        v42 = v41;
                        if (FigCFDictionaryGetInt64IfPresent())
                        {
                          if (buffer[0] > *(a1 + 48))
                          {
                            fdcr_DeleteCacheEntry(a1, *v42, *(v42 + 1));
                            CFArrayRemoveValueAtIndex(v38, v40 - 2);
                            free(v42);
                          }
                        }
                      }

                      --v40;
                    }

                    while (v40 > 1);
                  }
                }

                while (*(a1 + 64) > *(a1 + 40))
                {
                  if (!CFArrayGetCount(propertyValueTypeRefPtr))
                  {
                    fig_log_get_emitter();
                    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v62, v63, v64);
                    break;
                  }

                  v43 = CFArrayGetValueAtIndex(propertyValueTypeRefPtr, 0);
                  fdcr_DeleteCacheEntry(a1, *v43, *(v43 + 1));
                  CFArrayRemoveValueAtIndex(propertyValueTypeRefPtr, 0);
                  free(v43);
                }

                v44 = CFArrayGetCount(propertyValueTypeRefPtr);
                if (v44 >= 1)
                {
                  v45 = v44 + 1;
                  do
                  {
                    v46 = CFArrayGetValueAtIndex(propertyValueTypeRefPtr, v45 - 2);
                    if (CFDictionaryGetValue(*(a1 + 88), *v46))
                    {
                      fdcr_DeleteCacheEntry(a1, *v46, *(v46 + 1));
                      CFArrayRemoveValueAtIndex(propertyValueTypeRefPtr, v45 - 2);
                      free(v46);
                    }

                    --v45;
                  }

                  while (v45 > 1);
                }

                if (!CFDictionaryGetCount(*(a1 + 80)))
                {
                  CFDictionaryRemoveAllValues(*(a1 + 88));
                }
              }

              fdcr_PurgeFileInfoList(propertyValueTypeRefPtr);
            }
          }

          goto LABEL_67;
        }

        emitter = fig_log_get_emitter();
        FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 4294954670, "<<< FigDiskCacheRepository >>>", 2617, v4);
      }

      else
      {
        v26 = fig_log_get_emitter();
        FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v26, 4294967246, "<<< FigDiskCacheRepository >>>", 2611, v4);
      }

      v29 = v27;
      CFRelease(v13);
      if (!v29)
      {
LABEL_26:
        v13 = 0;
        goto LABEL_27;
      }
    }

    else
    {
      fdcr_WriteRepositoryPlist_cold_1(&propertyValueTypeRefPtr);
      if (!propertyValueTypeRefPtr)
      {
        goto LABEL_26;
      }
    }
  }

LABEL_67:
  v47 = MEMORY[0x1E695E9D8];
  v48 = MEMORY[0x1E695E9E8];
  v49 = CFDictionaryCreateMutable(v10, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v50 = CFDictionaryCreateMutable(v10, 0, v47, v48);
  if (v49 && (v51 = v50) != 0)
  {
    CFDictionaryApplyFunction(*(a1 + 72), fdcr_ConvertValueFromCFURLToCFStringApplierFunction, v49);
    CFDictionaryApplyFunction(*(a1 + 80), fdcr_ConvertValueFromCFURLToCFStringApplierFunction, v51);
    *(a1 + 120) = CFAbsoluteTimeGetCurrent();
    v52 = a1 + 120;
    values[0] = CFNumberCreate(v10, kCFNumberSInt64Type, (v52 - 80));
    values[1] = CFNumberCreate(v10, kCFNumberSInt64Type, (v52 - 72));
    *&v72 = CFNumberCreate(v10, kCFNumberSInt32Type, (v52 + 8));
    *(&v72 + 1) = CFNumberCreate(v10, kCFNumberDoubleType, v52);
    *&v73 = v49;
    *(&v73 + 1) = v51;
    v74 = CFNumberCreate(v10, kCFNumberSInt8Type, (v52 - 64));
    v53 = CFDictionaryCreate(v10, keys, values, 7, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    if (v53)
    {
      v54 = v53;
      if (FigCFPropertyListWriteToFigFileFork())
      {
        v9 = 0;
      }

      else
      {
        fig_log_get_emitter();
        FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v62, v63, v64);
        v9 = v58;
      }

      CFRelease(v54);
      goto LABEL_77;
    }

    v57 = fig_log_get_emitter();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v57, 4294954669, "<<< FigDiskCacheRepository >>>", 2378, v7);
  }

  else
  {
    v55 = fig_log_get_emitter();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v55, 4294954669, "<<< FigDiskCacheRepository >>>", 2357, v7);
  }

  v9 = v56;
LABEL_77:
  for (j = 0; j != 7; ++j)
  {
    v60 = values[j];
    if (v60)
    {
      CFRelease(v60);
    }
  }

  return v9;
}

void FigDiskCacheRepositoryCopyInfo(void *a1, unint64_t a2, unint64_t a3, unint64_t a4, void *a5)
{
  if (a1 && ((v11 = a2 | a3 | a4, v12 = v11 != 0, v11) || a5))
  {
    FigSimpleMutexLock();
    if (v12)
    {
      if (!FigFileForkOpenMainByCFURL())
      {
        fdcr_ReadRepositoryPlist(a1, 0);
        FigFileForkClose();
      }

      if (a2)
      {
        *a2 = a1[8];
      }

      if (a3)
      {
        *a3 = a1[5];
      }

      if (a4)
      {
        *a4 = a1[6];
      }
    }

    if (a5)
    {
      v14 = a1[3];
      if (v14)
      {
        v14 = CFRetain(v14);
      }

      *a5 = v14;
    }

    FigSimpleMutexUnlock();
  }

  else
  {
    emitter = fig_log_get_emitter();

    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 4294954670, "<<< FigDiskCacheRepository >>>", 836, v5);
  }
}

void FigDiskCacheRepositoryCheckOut(uint64_t a1, const void *a2, CFTypeRef *a3, const void **a4)
{
  if (a1 && a2 && a3 && a4)
  {
    FigSimpleMutexLock();
    if (!FigCFURLCreateDirectory())
    {
      if (!FigFileForkOpenMainByCFURL())
      {
        fdcr_ReadRepositoryPlist(a1, 0);
        if (!fdcr_CheckOutResource(a1, a2, a3, a4))
        {
          fdcr_WriteRepositoryPlist(a1, 0, 1, 0);
        }

        FigFileForkClose();
      }

      if (*(a1 + 56))
      {
        FigFileMarkPurgeable();
      }
    }

    FigSimpleMutexUnlock();
  }

  else
  {
    emitter = fig_log_get_emitter();

    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 4294954670, "<<< FigDiskCacheRepository >>>", 927, v4);
  }
}

uint64_t RegisterFigByteFlumeBaseType()
{
  CMBaseGetClassID();

  return FigBaseClassRegisterClass();
}

uint64_t FigByteRateHistoryCreate(void *a1)
{
  v2 = malloc_type_calloc(1uLL, 0x40uLL, 0x10200403C164FF8uLL);
  if (v2)
  {
    v3 = v2;
    result = 0;
    *a1 = v3;
  }

  else
  {
    FigByteRateHistoryCreate_cold_1(&v5);
    return v5;
  }

  return result;
}

uint64_t FigByteRateHistoryAllocSampleArray(uint64_t a1, int a2)
{
  if (*(a1 + 8) == a2)
  {
    return 0;
  }

  v16 = v2;
  v17 = v3;
  v7 = malloc_type_calloc(1uLL, 16 * a2, 0x1000040D9A13B51uLL);
  if (v7)
  {
    v8 = v7;
    v9 = *a1;
    if (*a1)
    {
      v10 = *(a1 + 8);
      v11 = *(a1 + 12);
      if (v10 >= a2)
      {
        v10 = a2;
      }

      *(a1 + 24) = 0;
      *(a1 + 32) = 0;
      if (v10 >= 1)
      {
        v12 = v11 + 1;
        v13 = v8 + 16 * a2 - 16;
        do
        {
          v12 = (v12 + *(a1 + 8) - 1) % *(a1 + 8);
          *v13 = *(*a1 + 16 * v12);
          v14 = *(a1 + 32) + *(v13 + 8);
          *(a1 + 24) += *v13;
          *(a1 + 32) = v14;
          v13 -= 16;
          --v10;
        }

        while (v10);
        v9 = *a1;
      }

      free(v9);
    }

    result = 0;
    *a1 = v8;
    *(a1 + 8) = a2;
    *(a1 + 12) = 0;
  }

  else
  {
    FigByteRateHistoryAllocSampleArray_cold_1(&v15);
    return v15;
  }

  return result;
}

CFTypeRef FigCFHTTPCreateUserAgent()
{
  MEMORY[0x19A8D3660](&FigCFHTTPCreateUserAgent_sUserAgentInitOnce, FigCFHTTPCreateUserAgentOnce);
  result = gFigCFHTTPUserAgent;
  if (gFigCFHTTPUserAgent)
  {

    return CFRetain(result);
  }

  return result;
}

uint64_t FigCFHTTPSetProperty(uint64_t a1, const void *a2, const __CFNumber *a3)
{
  valuePtr = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  OUTLINED_FUNCTION_172(DerivedStorage);
  FigRetainProxyLockMutex();
  if (FigRetainProxyIsInvalidated())
  {
    v7 = 4294954511;
    goto LABEL_22;
  }

  if (CFEqual(a2, @"FBF_BandwidthSampleCount"))
  {
    if (CFNumberGetValue(a3, kCFNumberSInt32Type, &valuePtr))
    {
      FigByteRateHistoryAllocSampleArray(v3[43], valuePtr);
LABEL_5:
      v7 = 0;
      goto LABEL_22;
    }

    OUTLINED_FUNCTION_303();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
LABEL_18:
    v7 = v9;
    goto LABEL_22;
  }

  if (CFEqual(a2, @"FBF_InactivityTimeout"))
  {
    v11 = 0;
    if (!CFNumberGetValue(a3, kCFNumberSInt32Type, &v11) || v11 < -1)
    {
      OUTLINED_FUNCTION_303();
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
      goto LABEL_18;
    }

    v7 = 0;
    if (v11 < 0)
    {
      v8 = 60000000000;
    }

    else
    {
      v8 = 1000000 * v11;
    }

    v3[58] = v8;
  }

  else
  {
    if (!CFEqual(a2, @"FBF_MetricEventTimeline"))
    {
      v7 = 4294954512;
      goto LABEL_22;
    }

    v7 = v3[81];
    v3[81] = a3;
    if (a3)
    {
      CFRetain(a3);
    }

    if (v7)
    {
      CFRelease(v7);
      goto LABEL_5;
    }
  }

LABEL_22:
  FigRetainProxyUnlockMutex();
  return v7;
}

uint64_t FigCFHTTPOpenResponse(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7, uint64_t a8)
{
  v44 = 0;
  FigRetainProxyRetain();
  FigRetainProxyLockMutex();
  if (FigRetainProxyIsInvalidated())
  {
    goto LABEL_18;
  }

  FigRetainProxyGetOwner();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v13 = DerivedStorage;
  if (*(DerivedStorage + 96) != a2)
  {
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", cf, v43, v45);
    a8 = v20;
    fbf_ReleaseAndCreateLastError(v13, -12934, @"CoreMediaErrorDomain", @"Invalid request Id");
    if (!a8)
    {
      goto LABEL_18;
    }

    goto LABEL_20;
  }

  if (!*(DerivedStorage + 385))
  {
    cf = 0;
    v30 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v30)
    {
      if (!v30(a1, @"FHRP_CFNetworkTimingData", *MEMORY[0x1E695E480], &cf))
      {
        *(v13 + 388) = FigNetworkInterfaceGetInterfaceTypeFromCFNStats(cf);
        if (cf)
        {
          CFRelease(cf);
        }
      }
    }

    *(v13 + 385) = 1;
    fbf_ConfigurePathEvaluator(v13);
  }

  if (*(v13 + 72))
  {
    if (!a8)
    {
      goto LABEL_6;
    }

    goto LABEL_39;
  }

  fbf_GetResponseProperties(a1, v13);
  fbf_ReportingAgentSetCDNHeaders(v13, a1);
  if (a8)
  {
LABEL_39:
    fbf_ReleaseAndSetLastErrorFromHTTPRequest(v13, a1, a8, &v44);
LABEL_20:
    FigRetainProxyRetainOwner();
    *(v13 + 72) = 2;
    OUTLINED_FUNCTION_29_9();
    v26 = !v16 && v23 == 1 || v23 == 2;
    FigNetworkInterfaceReporterSamplePhysicalStatistics(*(v13 + 592), a1, v21, v22, v26);
    *(v13 + 608) = 1;
    fbf_ReportingAgentReportErrorEvent(v13, @"CoreMediaErrorDomain", @"Failed without successful flume open", 1u, a8);
    v27 = *(v13 + 88);
    if (v27)
    {
      v28 = *(*(CMBaseObjectGetVTable() + 8) + 24);
      if (v28)
      {
        v28(v27);
      }
    }

    v29 = *(v13 + 104);
    *(v13 + 104) = 0;
    v29(*(v13 + 120), 0, a8);
    FigCFHTTPStopAllReads(v13, a8);
    FigRetainProxyReleaseOwner();
    goto LABEL_18;
  }

LABEL_6:
  if (a7)
  {
    v31 = fbf_httpRequestHandlesNetworkTransitions(a1);
    fbf_UpdateAndReportMultiPathActivity(v13, v31);
    if ((a7 & 2) == 0)
    {
      goto LABEL_18;
    }
  }

  else if ((a7 & 2) == 0)
  {
    goto LABEL_18;
  }

  OUTLINED_FUNCTION_29_9();
  v16 = !v16 && v15 == 1;
  v18 = v16 || v15 == 2;
  FigNetworkInterfaceReporterSamplePhysicalStatistics(*(v13 + 592), a1, v14, 0x1F0B645B8, v18);
  if (!*(v13 + 72))
  {
    v32 = *(*(CMBaseObjectGetVTable() + 16) + 24);
    if (!v32 || v32(a1, 0, v13 + 336, 0))
    {
      v33 = 0;
      *(v13 + 336) = 0;
    }

    else
    {
      v33 = *(v13 + 336) / 0xF4240uLL;
    }

    v34 = *(v13 + 32);
    if (v34)
    {
      v35 = *(*(CMBaseObjectGetVTable() + 16) + 56);
      if (v35)
      {
        v35(v34, 0x1F0B645B8, 0x1F0B3F278, v33, 0);
      }
    }

    FigReportingAgentUpdateFinalTransactionMetrics(*(v13 + 32), a1, 0, 1);
    v36 = !FigCFHTTPIsDataURL(*(v13 + 168));
    Error = fbf_ParseResponseHeadersAndSetLastError(a1, v13, v36);
    if (!Error)
    {
      *(v13 + 72) = 1;
      if (!*(v13 + 128))
      {
        v38 = *(v13 + 88);
        if (v38)
        {
          v38 = CFRetain(v38);
        }

        *(v13 + 128) = v38;
      }

      v39 = *(v13 + 104);
      v40 = *(v13 + 120);
      *(v13 + 104) = 0;
      v41 = *(v13 + 280);
      FigRetainProxyUnlockMutex();
      v39(v40, v41, 0);
      FigRetainProxyLockMutex();
      FigRetainProxyIsInvalidated();
      goto LABEL_18;
    }

    a8 = Error;
    goto LABEL_20;
  }

LABEL_18:
  FigRetainProxyUnlockMutex();
  return FigRetainProxyRelease();
}

const __CFString *FigCFHTTPCopyMimeTypeFromHTTPResponse(__CFHTTPMessage *a1)
{
  v1 = CFHTTPMessageCopyHeaderFieldValue(a1, @"Content-Type");
  v2 = v1;
  if (v1)
  {
    location = CFStringFind(v1, @";", 0).location;
    if (location >= 1)
    {
      v7.length = location;
      v7.location = 0;
      v4 = CFStringCreateWithSubstring(*MEMORY[0x1E695E480], v2, v7);
      if (v4)
      {
        v5 = v4;
        CFRelease(v2);
        return v5;
      }
    }
  }

  return v2;
}

uint64_t FigCFHTTPCopyProperty(const void *a1, const void *a2, const __CFAllocator *a3, CFDictionaryRef *a4)
{
  keys[16] = *MEMORY[0x1E69E9840];
  v34 = 0;
  v35 = 0;
  valuePtr = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (FigRetainProxyIsInvalidated())
  {
    return 4294954511;
  }

  if (CFEqual(a2, @"FBF_EntireLength"))
  {
    if (*(DerivedStorage + 72) == 1)
    {
      Value = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt64Type, (DerivedStorage + 216));
LABEL_14:
      v9 = 0;
LABEL_15:
      *a4 = Value;
      return v9;
    }

    return 4294954513;
  }

  if (CFEqual(a2, @"FBF_URL"))
  {
    Value = *(DerivedStorage + 176);
    if (!Value)
    {
      Value = *(DerivedStorage + 168);
    }

    goto LABEL_13;
  }

  if (CFEqual(a2, @"FBF_MIMEType"))
  {
    v11 = *(DerivedStorage + 264);
    if (!v11)
    {
      return 4294954513;
    }

    v12 = @"MIME Type";
    goto LABEL_12;
  }

  ArraySize = 0;
  if (CFEqual(a2, @"FBF_BandwidthSample"))
  {
    v9 = FigCFHTTPCopyBandwidthInfo(DerivedStorage, &v35, 0, 0);
    if (v9)
    {
      return v9;
    }

    v13 = *MEMORY[0x1E695E480];
    p_valuePtr = &v35;
    goto LABEL_25;
  }

  if (CFEqual(a2, @"FBF_BandwidthMovingAverage"))
  {
    v9 = FigCFHTTPCopyBandwidthInfo(DerivedStorage, 0, 0, &v34);
    if (v9)
    {
      return v9;
    }

    v13 = *MEMORY[0x1E695E480];
    p_valuePtr = &v34;
    goto LABEL_25;
  }

  if (CFEqual(a2, @"FBF_BandwidthStandardDeviation"))
  {
    v9 = FigCFHTTPCopyBandwidthInfo(DerivedStorage, 0, &valuePtr, 0);
    if (v9)
    {
      return v9;
    }

    v13 = *MEMORY[0x1E695E480];
    p_valuePtr = &valuePtr;
LABEL_25:
    Value = CFNumberCreate(v13, kCFNumberDoubleType, p_valuePtr);
    goto LABEL_15;
  }

  if (CFEqual(a2, @"FBF_BandwidthInfo"))
  {
    v15 = FigCFHTTPCopyBandwidthInfo(DerivedStorage, &v35, &valuePtr, &v34);
    if (v15)
    {
      return v15;
    }

    keys[0] = @"FBF_BandwidthSample";
    keys[1] = @"FBF_BandwidthMovingAverage";
    keys[2] = @"FBF_BandwidthStandardDeviation";
    v16 = *MEMORY[0x1E695E480];
    values[0] = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberDoubleType, &v35);
    values[1] = CFNumberCreate(v16, kCFNumberDoubleType, &v34);
    values[2] = CFNumberCreate(v16, kCFNumberDoubleType, &valuePtr);
    v17 = 0;
    *a4 = CFDictionaryCreate(a3, keys, values, 3, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    do
    {
      v18 = values[v17];
      if (v18)
      {
        CFRelease(v18);
      }

      ++v17;
    }

    while (v17 != 3);
    return 0;
  }

  if (CFEqual(a2, @"FBF_BandwidthSampleCount"))
  {
    FigRetainProxyLockMutex();
    if (FigRetainProxyIsInvalidated())
    {
      v9 = 4294954511;
LABEL_42:
      FigRetainProxyUnlockMutex();
      return v9;
    }

    ArraySize = FigByteRateHistoryGetArraySize(*(DerivedStorage + 344));
    v19 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt32Type, &ArraySize);
LABEL_41:
    v9 = 0;
    *a4 = v19;
    goto LABEL_42;
  }

  if (CFEqual(a2, @"FBF_HTTPResponseHeaders"))
  {
    Value = *(DerivedStorage + 256);
    if (!Value)
    {
      return 4294954513;
    }

    goto LABEL_13;
  }

  if (CFEqual(a2, @"FBF_RemoteIPAddress"))
  {
    v20 = *(DerivedStorage + 136);
    if (v20)
    {
      Value = FigCFHTTPCreateAddressString(v20);
      if (!Value)
      {
        return 4294954363;
      }

      goto LABEL_14;
    }

    return 4294954513;
  }

  if (CFEqual(a2, @"FBF_SuggestedFileName"))
  {
    Value = *(DerivedStorage + 208);
    if (!Value)
    {
      return 4294954513;
    }

    goto LABEL_13;
  }

  if (CFEqual(a2, @"FBF_PlaybackSessionID"))
  {
    v11 = *(DerivedStorage + 224);
    if (!v11)
    {
      return 4294954513;
    }

    v12 = @"X-Playback-Session-Id";
LABEL_12:
    Value = CFDictionaryGetValue(v11, v12);
    if (!Value)
    {
      return 4294954513;
    }

LABEL_13:
    Value = CFRetain(Value);
    goto LABEL_14;
  }

  if (!CFEqual(a2, @"FBF_AccessLog"))
  {
    if (CFEqual(a2, @"FBF_NoCache"))
    {
      Value = *(DerivedStorage + 264);
      if (Value)
      {
        Value = CFDictionaryGetValue(Value, @"no-cache");
      }

      if (Value != *MEMORY[0x1E695E4D0])
      {
        return 4294954513;
      }

      goto LABEL_13;
    }

    if (CFEqual(a2, @"FBF_StorageSession"))
    {
      Value = *(DerivedStorage + 232);
      if (!Value)
      {
        return 4294954513;
      }

      goto LABEL_13;
    }

    if (CFEqual(a2, @"FBF_LastError"))
    {
      Value = *(DerivedStorage + 24);
      if (Value)
      {
        goto LABEL_13;
      }

      return 0;
    }

    if (CFEqual(a2, @"FBF_networkInterfaceStats"))
    {
      FigRetainProxyLockMutex();
      v22 = *(DerivedStorage + 592);
      if (v22 && (Mutable = FigNetworkInterfaceReporterCopyPhysicalStatistics(v22)) != 0 || (Mutable = CFDictionaryCreateMutable(a3, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8])) != 0)
      {
        v24 = Mutable;
        InterfaceType = fbf_GetInterfaceType(DerivedStorage);
        CFDictionarySetValue(v24, @"cs-iftype", InterfaceType);
        FigRetainProxyUnlockMutex();
        v9 = 0;
        *a4 = v24;
      }

      else
      {
        FigRetainProxyUnlockMutex();
        return 4294954510;
      }

      return v9;
    }

    if (CFEqual(a2, @"FBF_ReportingAgent"))
    {
      Value = *(DerivedStorage + 32);
      if (!Value)
      {
        goto LABEL_14;
      }

      goto LABEL_13;
    }

    if (CFEqual(a2, @"FBF_InteractivePlaybackAssertion"))
    {
      v31 = 0;
      FigRetainProxyLockMutex();
      FigPlaybackAssertionCreate(a3, a1, fbf_releaseInteractivePlaybackAssertion, &v31);
      v9 = v26;
      if (!v26)
      {
        if (dword_1EAF16F58)
        {
          os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
          fig_log_call_emit_and_clean_up_after_send_and_compose();
        }

        CFRetain(a1);
        ++*(DerivedStorage + 380);
      }

      FigRetainProxyUnlockMutex();
      *a4 = v31;
      return v9;
    }

    if (CFEqual(a2, @"FBF_NetworkUrgencyMonitor"))
    {
      FigRetainProxyLockMutex();
      v28 = *(DerivedStorage + 624);
      if (v28)
      {
        CFRetain(v28);
        v9 = 0;
        v29 = *(DerivedStorage + 624);
      }

      else
      {
        v29 = 0;
        v9 = 4294954513;
      }

      FigRetainProxyUnlockMutex();
      *a4 = v29;
      return v9;
    }

    if (CFEqual(a2, @"FBF_EntireLengthAvailableOnDemand"))
    {
      Value = *MEMORY[0x1E695E4C0];
      goto LABEL_13;
    }

    if (!CFEqual(a2, @"FBF_ClientNetworkActivity"))
    {
      return 4294954512;
    }

    FigRetainProxyLockMutex();
    v30 = *(DerivedStorage + 640);
    if (!v30)
    {
      v9 = 4294954513;
      goto LABEL_42;
    }

    v19 = CFRetain(v30);
    goto LABEL_41;
  }

  return fbf_CreateAccessLog(DerivedStorage, a3, a4);
}

double FigCRABSCreate(const void *a1, uint64_t a2, const void *a3, const void *a4, int a5, CFTypeRef *a6)
{
  cf[16] = *MEMORY[0x1E69E9840];
  FigNote_AllowInternalDefaultLogs();
  fig_note_initialize_category_with_default_work_cf();
  v11 = a6;
  fig_note_initialize_category_with_default_work_cf();
  if (a1 && a3 && a6)
  {
    v67 = 0;
    MEMORY[0x19A8D3660](&FigCRABSGetClassID_sRegisterFigCRABSOnce, RegisterFigCRABS);
    v12 = a2;
    if (CMDerivedObjectCreate())
    {
      return result;
    }

    DerivedStorage = CMBaseObjectGetDerivedStorage();
    v15 = FigReentrantMutexCreate();
    *(DerivedStorage + 72) = v15;
    if (!v15)
    {
      goto LABEL_57;
    }

    v16 = FigReentrantMutexCreate();
    *(DerivedStorage + 384) = v16;
    if (!v16)
    {
      goto LABEL_57;
    }

    *(DerivedStorage + 504) = a5;
    *(DerivedStorage + 132) = a5 & 1;
    v17 = OUTLINED_FUNCTION_184();
    if (crabsUpdateLength(v17))
    {
      *(DerivedStorage + 96) = 0x4000;
      *(DerivedStorage + 56) = -1;
    }

    *(DerivedStorage + 224) = 0;
    *(DerivedStorage + 184) = 10;
    v18 = malloc_type_malloc(0x50uLL, 0x100004000313F17uLL);
    *(DerivedStorage + 192) = v18;
    if (v18 && (*(DerivedStorage + 248) = 0, *(DerivedStorage + 200) = 0, *(DerivedStorage + 264) = 0, *(DerivedStorage + 272) = DerivedStorage + 264, *(DerivedStorage + 280) = 0, *(DerivedStorage + 288) = DerivedStorage + 280, *(DerivedStorage + 296) = 0, *(DerivedStorage + 304) = DerivedStorage + 296, *(DerivedStorage + 312) = 0, *(DerivedStorage + 320) = DerivedStorage + 312, *(DerivedStorage + 328) = 0, *(DerivedStorage + 256) = DerivedStorage + 248, *(DerivedStorage + 336) = DerivedStorage + 328, *(DerivedStorage + 368) = 0, *(DerivedStorage + 376) = DerivedStorage + 368, v19 = FigConditionVariableCreate(), (*(DerivedStorage + 552) = v19) != 0) && (v20 = FigConditionVariableCreate(), (*(DerivedStorage + 656) = v20) != 0))
    {
      if (!FigRetainProxyCreate())
      {
        *(DerivedStorage + 8) = FigDiskCacheProviderRetain(a4);
        *(DerivedStorage + 16) = 0;
        crabsDiskBackingIsBusy(DerivedStorage, 1);
        cf[0] = 0;
        FigByteFlumeGetFigBaseObject();
        v22 = v21;
        v23 = *MEMORY[0x1E695E480];
        v24 = *(*(CMBaseObjectGetVTable() + 8) + 48);
        if (v24)
        {
          v24(v22, @"FBF_URL", v23, cf);
        }

        *(DerivedStorage + 936) = FigOSTransactionCreate();
        if (cf[0])
        {
          CFRelease(cf[0]);
        }

        v25 = CFRetain(a1);
        v26 = v67;
        *(DerivedStorage + 32) = v25;
        *(DerivedStorage + 40) = v26;
        *(DerivedStorage + 48) = 9000;
        *DerivedStorage = CFRetain(a3);
        *(DerivedStorage + 104) = 1;
        *(DerivedStorage + 112) = 1;
        *(DerivedStorage + 108) = 0;
        *(DerivedStorage + 832) = 0;
        *(DerivedStorage + 840) = 0u;
        *(DerivedStorage + 856) = 0u;
        *(DerivedStorage + 872) = 0u;
        *(DerivedStorage + 888) = 0u;
        *(DerivedStorage + 904) = 0u;
        FigByteFlumeGetFigBaseObject();
        v28 = v27;
        v29 = *(*(CMBaseObjectGetVTable() + 8) + 48);
        if (v29)
        {
          v29(v28, @"FBF_NetworkUrgencyMonitor", v12, DerivedStorage + 968);
        }

        if (!crabsInitialize(DerivedStorage))
        {
          FigByteStreamStatsSetupWorker();
          FigByteFlumeGetFigBaseObject();
          v31 = v30;
          v32 = *(*(CMBaseObjectGetVTable() + 8) + 48);
          if (v32)
          {
            v32(v31, @"FBF_ReportingAgent", v23, DerivedStorage + 920);
          }

          *(DerivedStorage + 928) = 0;
          v33 = *(DerivedStorage + 920);
          if (v33)
          {
            v34 = *(*(CMBaseObjectGetVTable() + 16) + 48);
            if (v34)
            {
              v34(v33, 0x1F0B64598, 0x1F0B655F8, @"FILE", 0);
            }

            v35 = *(DerivedStorage + 920);
            if (v35)
            {
              v36 = *(DerivedStorage + 504);
              v37 = *(*(CMBaseObjectGetVTable() + 16) + 56);
              if (v37)
              {
                v37(v35, 0x1F0B64598, 0x1F0B3F258, v36 & 1, 0);
              }
            }

            v38 = *(DerivedStorage + 920);
            if (v38)
            {
              v39 = *(*(CMBaseObjectGetVTable() + 16) + 56);
              if (v39)
              {
                v39(v38, 0x1F0B64598, 0x1F0B65638, 0, 0);
              }
            }
          }

          CMNotificationCenterGetDefaultLocalCenter();
          if (!FigNotificationCenterAddWeakListeners())
          {
            if (dword_1EAF16BD0)
            {
              v66 = 0;
              FigByteFlumeGetFigBaseObject();
              v41 = v40;
              v42 = *(*(CMBaseObjectGetVTable() + 8) + 48);
              if (v42)
              {
                if (!v42(v41, @"FBF_URL", v23, &v66))
                {
                  IsItOKToLogURLs = FigIsItOKToLogURLs();
                  v45 = (a5 & 0x10) == 0 && IsItOKToLogURLs != 0;
                  if (dword_1EAF16BD0)
                  {
                    v46 = a1;
                    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
                    v48 = os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
                    if (OUTLINED_FUNCTION_115_1(v48))
                    {
                      v49 = "disk";
                      v50 = v66;
                      if ((*(DerivedStorage + 504) & 1) == 0)
                      {
                        v49 = "memory";
                      }

                      v68 = 136316163;
                      v69 = "FigCRABSCreate";
                      v70 = 2048;
                      v71 = DerivedStorage;
                      if (!v45)
                      {
                        v50 = @"<redacted>";
                      }

                      v72 = 2082;
                      v73 = v49;
                      v74 = 2113;
                      v75 = v50;
                      v76 = 2048;
                      v77 = v46;
                      OUTLINED_FUNCTION_108();
                      _os_log_send_and_compose_impl(v51, v52, v53, v54, v55, os_log_and_send_and_compose_flags_and_os_log_type, 0, v56, &v68, 52);
                    }

                    OUTLINED_FUNCTION_7();
                    result = OUTLINED_FUNCTION_414(v57, v58, v59, v60, v61);
                  }

                  if (v66)
                  {
                    CFRelease(v66);
                  }
                }
              }
            }

            *v11 = v67;
            return result;
          }
        }
      }
    }

    else
    {
LABEL_57:
      OUTLINED_FUNCTION_5_8();
      result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v62, v63, v64);
    }

    if (v67)
    {
      CFRelease(v67);
    }
  }

  else
  {
    OUTLINED_FUNCTION_5_8();

    return FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
  }

  return result;
}

void FigCRABSCopyProperty(const void *a1, const void *a2, const __CFAllocator *a3, CFTypeRef *a4)
{
  value[16] = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (CFEqual(a2, *MEMORY[0x1E695FF78]))
  {
    v9 = crabsEnsureInitialized(a1);
    if (v9)
    {
LABEL_5:
      OUTLINED_FUNCTION_457(v9);
      return;
    }

    SInt64 = FigCFNumberCreateSInt64();
LABEL_4:
    *a4 = SInt64;
    goto LABEL_5;
  }

  if (!CFEqual(a2, *MEMORY[0x1E695FF70]))
  {
    if (CFEqual(a2, *MEMORY[0x1E695FFA0]))
    {
      v11 = crabsEnsureInitialized(a1);
      if (!v11)
      {
        FigByteFlumeGetFigBaseObject();
        v14 = v13;
        if (*(*(CMBaseObjectGetVTable() + 8) + 48))
        {
          OUTLINED_FUNCTION_457(v14);

          __asm { BRAA            X4, X16 }
        }

        v9 = 4294954514;
        goto LABEL_5;
      }

      goto LABEL_38;
    }

    if (CFEqual(a2, *MEMORY[0x1E6960DC8]))
    {
LABEL_21:
      v9 = 4294954512;
      goto LABEL_5;
    }

    if (CFEqual(a2, *MEMORY[0x1E6960DE0]))
    {
      v11 = crabsEnsureInitialized(a1);
      if (v11)
      {
        goto LABEL_38;
      }

      goto LABEL_24;
    }

    if (CFEqual(a2, *MEMORY[0x1E6960E18]))
    {
      v25 = *MEMORY[0x1E695E480];
      v26 = (DerivedStorage + 48);
LABEL_29:
      v27 = kCFNumberSInt32Type;
LABEL_30:
      SInt64 = CFNumberCreate(v25, v27, v26);
LABEL_31:
      v9 = 0;
      goto LABEL_4;
    }

    v28 = *MEMORY[0x1E6960DF8];
    if (CFEqual(a2, *MEMORY[0x1E6960DF8]))
    {
      goto LABEL_24;
    }

    v29 = *MEMORY[0x1E6960E00];
    if (CFEqual(a2, *MEMORY[0x1E6960E00]))
    {
      goto LABEL_24;
    }

    v30 = *MEMORY[0x1E695FFB0];
    if (CFEqual(a2, *MEMORY[0x1E695FFB0]))
    {
      goto LABEL_24;
    }

    if (CFEqual(a2, @"CRABS_ReadAheadActive"))
    {
      v11 = FigRetainProxyLockMutex();
      if (!v11)
      {
        v31 = MEMORY[0x1E695E4D0];
        if (*(DerivedStorage + 560) != 1 && *(DerivedStorage + 664) != 1)
        {
          v31 = MEMORY[0x1E695E4C0];
        }

        *a4 = CFRetain(*v31);
        FigRetainProxyUnlockMutex();
        goto LABEL_9;
      }

LABEL_38:
      v9 = v11;
      goto LABEL_5;
    }

    if (CFEqual(a2, *MEMORY[0x1E6960DB0]))
    {
LABEL_24:
      FigByteFlumeGetFigBaseObject();
      OUTLINED_FUNCTION_457(v19);

      CMBaseObjectCopyProperty(v20, v21, v22, v23);
      return;
    }

    if (CFEqual(a2, @"CRABS_ReadAheadAssertion"))
    {
      cf = 0;
      v32 = FigRetainProxyLockMutex();
      if (v32)
      {
        v9 = v32;
        *a4 = 0;
        goto LABEL_5;
      }

      v35 = *(DerivedStorage + 760);
      if (v35)
      {
        v36 = CFRetain(v35);
      }

      else
      {
        v36 = 0;
      }

      FigReadAheadAssertionCreate(a3, a1, crabsReleaseReadAheadAssertion, &cf);
      v9 = v39;
      if (v39)
      {
        goto LABEL_73;
      }

      if (dword_1EAF16BD0)
      {
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
        OUTLINED_FUNCTION_7();
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      CFRetain(a1);
      v47 = *(DerivedStorage + 116);
      *(DerivedStorage + 116) = v47 + 1;
      if (v47 != -1)
      {
        if (dword_1EAF16BD0)
        {
          v48 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT);
          OUTLINED_FUNCTION_7();
          fig_log_call_emit_and_clean_up_after_send_and_compose();
        }

        if (*(DerivedStorage + 120) == 0.0)
        {
          *(DerivedStorage + 120) = CFAbsoluteTimeGetCurrent();
        }

        crabsStartIdleRead(DerivedStorage);
        v9 = 4294954511;
        if (v54 == -12785)
        {
          goto LABEL_73;
        }

        crabsReportingIssueIRATEventIfNeeded(DerivedStorage, 800);
      }

      v9 = 0;
LABEL_73:
      crabsRetainProxyUnlockWithActions(v36);
      if (v36)
      {
        CFRelease(v36);
      }

      SInt64 = cf;
      if (!v9)
      {
        goto LABEL_4;
      }

      *a4 = 0;
      if (!SInt64)
      {
        goto LABEL_5;
      }

LABEL_77:
      CFRelease(SInt64);
      goto LABEL_5;
    }

    if (CFEqual(a2, @"CRABS_ReportingAgent"))
    {
      v33 = *(DerivedStorage + 920);
      if (v33)
      {
        CFRetain(v33);
        v34 = *(DerivedStorage + 920);
      }

      else
      {
        v34 = 0;
      }

      v9 = 0;
      goto LABEL_58;
    }

    if (CFEqual(a2, @"CRABS_ReadAheadStartTime"))
    {
      v38 = *(DerivedStorage + 120);
      v37 = (DerivedStorage + 120);
      if (v38 > 0.0)
      {
        v25 = *MEMORY[0x1E695E480];
        v27 = kCFNumberDoubleType;
        v26 = v37;
        goto LABEL_30;
      }

      *a4 = 0;
      goto LABEL_70;
    }

    v41 = CFEqual(a2, *MEMORY[0x1E695FF98]);
    v42 = MEMORY[0x1E6960E10];
    if (v41)
    {
      Mutable = CFDictionaryCreateMutable(a3, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      if (!Mutable)
      {
        v9 = 4294954510;
        goto LABEL_5;
      }

      v44 = Mutable;
      value[0] = 0;
      *theDict = 0;
      FigByteFlumeGetFigBaseObject();
      v46 = 1;
      if (!CMBaseObjectCopyProperty(v45, @"FBF_BandwidthInfo", a3, theDict) && *theDict)
      {
        if (CFDictionaryGetValueIfPresent(*theDict, @"FBF_BandwidthSample", value))
        {
          CFDictionaryAddValue(v44, v28, value[0]);
        }

        else
        {
          v46 = 0;
        }

        if (CFDictionaryGetValueIfPresent(*theDict, @"FBF_BandwidthMovingAverage", value))
        {
          CFDictionaryAddValue(v44, v30, value[0]);
          v46 = 1;
        }

        if (CFDictionaryGetValueIfPresent(*theDict, @"FBF_BandwidthStandardDeviation", value))
        {
          CFDictionaryAddValue(v44, v29, value[0]);
          v46 = 1;
        }

        CFRelease(*theDict);
        LOBYTE(v46) = v46 == 0;
      }

      FigByteFlumeGetFigBaseObject();
      if (CMBaseObjectCopyProperty(v49, @"FBF_RemoteIPAddress", a3, value) || !value[0])
      {
        if (v46)
        {
          CFRelease(v44);
          goto LABEL_70;
        }
      }

      else
      {
        CFDictionaryAddValue(v44, *v42, value[0]);
        if (value[0])
        {
          CFRelease(value[0]);
        }
      }

      v9 = 0;
      *a4 = v44;
      goto LABEL_5;
    }

    if (CFEqual(a2, *MEMORY[0x1E6960DF0]) || CFEqual(a2, *v42))
    {
      goto LABEL_24;
    }

    if (CFEqual(a2, *MEMORY[0x1E6960E20]))
    {
      OUTLINED_FUNCTION_457(*(DerivedStorage + 40));

      FigCRABSScheduledIOCreate(v50, v51, v52);
      return;
    }

    if (CFEqual(a2, *MEMORY[0x1E6960E30]))
    {
      goto LABEL_24;
    }

    if (CFEqual(a2, *MEMORY[0x1E695FF80]))
    {
      value[0] = 0;
      v9 = crabsEnsureInitialized(a1);
      if (v9)
      {
        goto LABEL_5;
      }

      v55 = *MEMORY[0x1E695E4C0];
      if (FigRetainProxyLockMutex())
      {
        v56 = *MEMORY[0x1E695E4D0];
      }

      else
      {
        IsEntireLengthAvailableInCache = crabsIsEntireLengthAvailableInCache(DerivedStorage);
        v56 = *MEMORY[0x1E695E4D0];
        if (IsEntireLengthAvailableInCache)
        {
          v55 = *MEMORY[0x1E695E4D0];
        }

        FigRetainProxyUnlockMutex();
      }

      if (v55 == v56)
      {
        SInt64 = 0;
      }

      else
      {
        FigByteFlumeGetFigBaseObject();
        v59 = CMBaseObjectCopyProperty(v58, @"FBF_EntireLengthAvailableOnDemand", a3, value);
        SInt64 = value[0];
        if (!v59)
        {
          v55 = value[0];
        }
      }

      if (v55)
      {
        v60 = CFRetain(v55);
        SInt64 = value[0];
      }

      else
      {
        v60 = 0;
      }

      *a4 = v60;
      if (!SInt64)
      {
        goto LABEL_5;
      }

      goto LABEL_77;
    }

    if (CFEqual(a2, *MEMORY[0x1E6960E08]))
    {
      v62 = OUTLINED_FUNCTION_266();
      OUTLINED_FUNCTION_457(v62);

      crabsCreateReadStatsDictionary(v63, v64, v65);
      return;
    }

    if (CFEqual(a2, *MEMORY[0x1E6960DA0]) || CFEqual(a2, @"CRABS_PlaybackSessionID"))
    {
      goto LABEL_24;
    }

    if (CFEqual(a2, @"CRABS_CacheIsVolatile"))
    {
      if ((*(DerivedStorage + 504) & 3) != 0 || !*(DerivedStorage + 133))
      {
        v61 = MEMORY[0x1E695E4C0];
      }

      else
      {
        v61 = MEMORY[0x1E695E4D0];
      }
    }

    else
    {
      if (CFEqual(a2, @"CRABS_CacheIsDiskBacked"))
      {
        v61 = MEMORY[0x1E695E4D0];
        v67 = MEMORY[0x1E695E4C0];
        v68 = (*(DerivedStorage + 504) & 1) == 0;
      }

      else
      {
        if (CFEqual(a2, @"CRABS_ReadAheadAllowBackfill"))
        {
          v61 = MEMORY[0x1E695E4D0];
          v69 = *(DerivedStorage + 132);
        }

        else
        {
          if (!CFEqual(a2, @"CRABS_SaveMemoryCacheToDiskWhenDone"))
          {
            if (CFEqual(a2, @"CRABS_StorageSession"))
            {
              if (*(DerivedStorage + 32))
              {
                goto LABEL_24;
              }

              goto LABEL_70;
            }

            if (CFEqual(a2, @"CRABS_ConnectionState"))
            {
              v25 = *MEMORY[0x1E695E480];
              v26 = (DerivedStorage + 108);
              goto LABEL_29;
            }

            if (CFEqual(a2, *MEMORY[0x1E6960DD8]))
            {
              if (*(DerivedStorage + 32))
              {
                goto LABEL_24;
              }

              goto LABEL_70;
            }

            if (CFEqual(a2, @"CRABS_InteractivePlaybackAssertion"))
            {
              if (*(DerivedStorage + 32))
              {
                goto LABEL_24;
              }

              goto LABEL_70;
            }

            if (CFEqual(a2, @"CRABS_NetworkUrgencyMonitor"))
            {
              v71 = *(DerivedStorage + 968);
              if (v71)
              {
                CFRetain(v71);
                v9 = 0;
                v34 = *(DerivedStorage + 968);
LABEL_58:
                *a4 = v34;
                goto LABEL_5;
              }
            }

            else
            {
              if (CFEqual(a2, *MEMORY[0x1E6960E28]))
              {
                v70 = *(DerivedStorage + 960);
                if (!v70)
                {
                  goto LABEL_70;
                }

LABEL_146:
                SInt64 = CFRetain(v70);
                goto LABEL_31;
              }

              if (!CFEqual(a2, @"CRABS_ClientNetworkActivity"))
              {
                goto LABEL_21;
              }

              if (*(DerivedStorage + 32))
              {
                goto LABEL_24;
              }
            }

LABEL_70:
            v9 = 4294954513;
            goto LABEL_5;
          }

          v61 = MEMORY[0x1E695E4D0];
          v69 = *(DerivedStorage + 136);
        }

        v67 = MEMORY[0x1E695E4C0];
        v68 = v69 == 0;
      }

      if (v68)
      {
        v61 = v67;
      }
    }

    v70 = *v61;
    goto LABEL_146;
  }

  v11 = crabsEnsureInitialized(a1);
  if (v11)
  {
    goto LABEL_38;
  }

  FigSimpleMutexLock();
  FigSimpleMutexUnlock();
  v12 = FigCFNumberCreateSInt64();
  *a4 = v12;
  if (v12)
  {
LABEL_9:
    v9 = 0;
    goto LABEL_5;
  }

  OUTLINED_FUNCTION_457("%s signalled err=%d at <>:%d");

  FigSignalErrorAtGM(v17);
}

void FigCRABSSetProperty(const void *a1, const void *a2, const void *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (CFEqual(a2, *MEMORY[0x1E6960DB0]))
  {
    FigByteFlumeGetFigBaseObject();
    if (*(*(CMBaseObjectGetVTable() + 8) + 56))
    {
      OUTLINED_FUNCTION_843();

      __asm { BRAA            X3, X16 }
    }

    goto LABEL_32;
  }

  v9 = *MEMORY[0x1E6960E18];
  v10 = CFEqual(a2, *MEMORY[0x1E6960E18]);
  v11 = MEMORY[0x1E6960DE8];
  if (v10)
  {
    FigByteFlumeGetFigBaseObject();
    v13 = v12;
    v14 = *(*(CMBaseObjectGetVTable() + 8) + 56);
    if (!v14 || v14(v13, @"FBF_InactivityTimeout", a3))
    {
      goto LABEL_32;
    }
  }

  else if (CFEqual(a2, @"CRABS_DataConsumptionRateHint") || CFEqual(a2, @"CRABS_AllowCacheMemoryToBeVolatile"))
  {
    if (crabsEnsureInitialized(a1))
    {
      goto LABEL_32;
    }
  }

  else if (CFEqual(a2, *v11))
  {
    FigByteFlumeGetFigBaseObject();
    if (CMBaseObjectSetProperty(v26, @"FBF_MetricEventTimeline", a3))
    {
      goto LABEL_32;
    }
  }

  if (FigRetainProxyLockMutex())
  {
    goto LABEL_32;
  }

  v15 = *(DerivedStorage + 760);
  if (v15)
  {
    v16 = CFRetain(v15);
  }

  else
  {
    v16 = 0;
  }

  if (!CFEqual(a2, v9))
  {
    if (CFEqual(a2, *MEMORY[0x1E6960DD0]))
    {
      if (*(DerivedStorage + 8) && CFEqual(a3, *MEMORY[0x1E695E4D0]))
      {
        FigDiskCacheProviderGetFigBaseObject();
        v19 = v18;
        v20 = *(*(CMBaseObjectGetVTable() + 8) + 56);
        if (v20 && !v20(v19, @"CacheIsComplete", a3))
        {
          crabsSyncCache(DerivedStorage);
        }

        goto LABEL_30;
      }

      goto LABEL_29;
    }

    if (CFEqual(a2, @"CRABS_DataConsumptionRateHint"))
    {
      v36 = 0;
      v21 = CFGetTypeID(a3);
      if (v21 == CFNumberGetTypeID())
      {
        CFNumberGetValue(a3, kCFNumberSInt64Type, &v36);
        if (v36 >= 1)
        {
          v22 = ((*(DerivedStorage + 96) + v36 * 2.5 + -1.0) / *(DerivedStorage + 96));
          if (*(DerivedStorage + 184) >= v22)
          {
            goto LABEL_30;
          }

          v23 = malloc_type_realloc(*(DerivedStorage + 192), 8 * v22, 0x100004000313F17uLL);
          if (v23)
          {
            if (*(DerivedStorage + 184) < v22)
            {
              v24 = *(DerivedStorage + 88);
              v25 = v22;
              do
              {
                v23[--v25] = v24;
              }

              while (v25 > *(DerivedStorage + 184));
            }

            *(DerivedStorage + 184) = v22;
            *(DerivedStorage + 192) = v23;
            goto LABEL_30;
          }
        }

        OUTLINED_FUNCTION_243();
        FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
        goto LABEL_30;
      }

LABEL_29:
      OUTLINED_FUNCTION_243();
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
      goto LABEL_30;
    }

    if (CFEqual(a2, @"CRABS_ReadAheadAllowBackfill"))
    {
      v27 = *(DerivedStorage + 132);
      v28 = CFGetTypeID(a3);
      if (v28 == CFBooleanGetTypeID())
      {
        v29 = CFEqual(a3, *MEMORY[0x1E695E4D0]);
        *(DerivedStorage + 132) = v29;
        if (v29 && !v27)
        {
          *(DerivedStorage + 130) = 0;
          crabsStartIdleRead(DerivedStorage);
        }

        goto LABEL_30;
      }

      goto LABEL_29;
    }

    if (CFEqual(a2, @"CRABS_AllowCacheMemoryToBeVolatile"))
    {
      v30 = *(DerivedStorage + 133);
      v31 = CFGetTypeID(a3);
      if (v31 == CFBooleanGetTypeID())
      {
        v32 = *MEMORY[0x1E695E4D0];
        v33 = *MEMORY[0x1E695E4D0] == a3;
        *(DerivedStorage + 133) = v33;
        if ((*(DerivedStorage + 504) & 3) == 0 && v30 != v33)
        {
          if (v32 == a3)
          {
            crabsMakeCacheInFrontListVolatile(DerivedStorage);
          }

          else
          {
            crabsMakeCacheInFrontListNonvolatile(DerivedStorage);
          }
        }

        goto LABEL_30;
      }

      goto LABEL_29;
    }

    if (CFEqual(a2, @"CRABS_SaveMemoryCacheToDiskWhenDone"))
    {
      v34 = CFGetTypeID(a3);
      if (v34 == CFBooleanGetTypeID())
      {
        *(DerivedStorage + 136) = *MEMORY[0x1E695E4D0] == a3;
        goto LABEL_30;
      }

      goto LABEL_29;
    }

    if (CFEqual(a2, *MEMORY[0x1E6960E28]))
    {
      v35 = *(DerivedStorage + 960);
      *(DerivedStorage + 960) = a3;
      if (!a3)
      {
        goto LABEL_65;
      }
    }

    else
    {
      if (!CFEqual(a2, *v11))
      {
        goto LABEL_30;
      }

      v35 = *(DerivedStorage + 976);
      *(DerivedStorage + 976) = a3;
      if (!a3)
      {
LABEL_65:
        if (v35)
        {
          CFRelease(v35);
        }

        goto LABEL_30;
      }
    }

    CFRetain(a3);
    goto LABEL_65;
  }

  valuePtr = -1;
  v17 = CFGetTypeID(a3);
  if (v17 != CFNumberGetTypeID())
  {
    goto LABEL_29;
  }

  CFNumberGetValue(a3, kCFNumberSInt32Type, &valuePtr);
  if (valuePtr < -1)
  {
    OUTLINED_FUNCTION_243();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
  }

  else
  {
    *(DerivedStorage + 48) = valuePtr;
  }

LABEL_30:
  crabsRetainProxyUnlockWithActions(v16);
  if (v16)
  {
    CFRelease(v16);
  }

LABEL_32:
  OUTLINED_FUNCTION_843();
}