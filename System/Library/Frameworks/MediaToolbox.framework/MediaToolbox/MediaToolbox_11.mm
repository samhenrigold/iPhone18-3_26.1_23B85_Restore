__n128 fpfs_CurrentSubStreamBufferedDuration@<Q0>(unsigned int a2@<W1>, uint64_t a3@<X8>)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v6 = CMBaseObjectGetDerivedStorage();
  memset(&v30, 0, sizeof(v30));
  v7 = *MEMORY[0x1E6960C70];
  *(a3 + 16) = *(MEMORY[0x1E6960C70] + 16);
  v8 = MEMORY[0x1E6960CC0];
  *a3 = v7;
  *&v29.value = *v8;
  v9 = *(v8 + 16);
  v29.epoch = v9;
  *&v28.value = *&v29.value;
  v28.epoch = v9;
  v22 = *&v29.value;
  *&v27.value = *&v29.value;
  v27.epoch = v9;
  memset(&v26, 0, sizeof(v26));
  result.n128_f64[0] = fpfs_GetNextTimeToPlay(DerivedStorage, 1, &v26);
  v11 = *(DerivedStorage + 1024);
  if (!v11)
  {
    goto LABEL_37;
  }

  v12 = 0;
  v13 = 0;
  v21 = 0;
  v14 = (DerivedStorage + 16 * a2 + 976);
  do
  {
    while (1)
    {
      if (*(v11 + 196) != a2 || *(v11 + 64) != *v14)
      {
        goto LABEL_25;
      }

      if (*(v11 + 200) && (~*(v11 + 156) & 0x11) == 0)
      {
        CMBufferQueueGetDuration(&v30, *(v11 + 88));
        goto LABEL_17;
      }

      v15 = *(v11 + 244);
      if (*(v6 + 108) >= 0.0)
      {
        if (v15)
        {
          time1 = *(v11 + 232);
          time2 = v26;
          if (CMTimeCompare(&time1, &time2) >= 1)
          {
            time2 = *(v11 + 232);
            *&rhs.value = *&v26.value;
            epoch = v26.epoch;
            goto LABEL_15;
          }
        }
      }

      else if (v15)
      {
        time1 = v26;
        time2 = *(v11 + 232);
        if (CMTimeCompare(&time1, &time2) >= 1)
        {
          time2 = v26;
          *&rhs.value = *(v11 + 232);
          epoch = *(v11 + 248);
LABEL_15:
          rhs.epoch = epoch;
          CMTimeSubtract(&time1, &time2, &rhs);
          result.n128_u64[0] = time1.value;
          v30 = time1;
          goto LABEL_17;
        }
      }

      result = v22;
      *&v30.value = v22;
      v30.epoch = v9;
LABEL_17:
      v17 = *(v11 + 48);
      if (v17 != 1986618469)
      {
        break;
      }

      result.n128_u64[0] = v30.value;
      v28 = v30;
      v11 = *(v11 + 24);
      v13 = 1;
      if (!v11)
      {
        v19 = v12 == 0;
        result.n128_u64[0] = v30.value;
        *a3 = *&v30.value;
        v20 = v30.epoch;
        goto LABEL_28;
      }
    }

    if (v17 == 1936684398)
    {
      v21 = 1;
      v18 = &v29;
    }

    else
    {
      if (v17 != 1935832172)
      {
        goto LABEL_25;
      }

      v12 = 1;
      v18 = &v27;
    }

    result.n128_u64[0] = v30.value;
    *v18 = v30;
LABEL_25:
    v11 = *(v11 + 24);
  }

  while (v11);
  v19 = v12 == 0;
  if (!v13)
  {
    goto LABEL_29;
  }

  result.n128_u64[0] = v28.value;
  *a3 = *&v28.value;
  v20 = v28.epoch;
LABEL_28:
  *(a3 + 16) = v20;
LABEL_29:
  if (v21)
  {
    if ((*(a3 + 12) & 1) == 0 || (time1 = v29, time2 = *a3, CMTimeCompare(&time1, &time2) < 0))
    {
      result.n128_u64[0] = v29.value;
      *a3 = v29;
    }
  }

  if (!v19)
  {
    if ((*(a3 + 12) & 1) == 0 || (time1 = v27, time2 = *a3, CMTimeCompare(&time1, &time2) < 0))
    {
      result.n128_u64[0] = v27.value;
      *a3 = v27;
    }
  }

LABEL_37:
  if ((*(a3 + 12) & 1) == 0)
  {
    result = v22;
    *a3 = v22;
    *(a3 + 16) = v9;
  }

  return result;
}

void fpfs_prepareDataForInject(const void *a1)
{
  attachmentModeOut = 0;
  v2 = CMGetAttachment(a1, @"FBPAKey_Decryptor", &attachmentModeOut);
  if (v2)
  {
    CMSetAttachment(a1, @"FMFD_BufferDecryptor", v2, attachmentModeOut);
    CMRemoveAttachment(a1, @"FBPAKey_Decryptor");
  }

  v3 = CMGetAttachment(a1, @"FBPAKey_AudioDecryptor", &attachmentModeOut);
  if (v3)
  {
    CMSetAttachment(a1, @"FMFD_BufferAudioDecryptor", v3, attachmentModeOut);
    CMRemoveAttachment(a1, @"FBPAKey_AudioDecryptor");
  }
}

uint64_t FigManifoldInjectData(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(*(CMBaseObjectGetVTable() + 16) + 8);
  if (!v8)
  {
    return 4294954514;
  }

  return v8(a1, a2, a3, a4);
}

uint64_t fpsi_TryDateSeekWithSeekID(const __CFArray *a1, uint64_t a2, _DWORD *a3, uint64_t a4, uint64_t a5, int a6, char *a7)
{
  v48 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  memset(&v35, 0, sizeof(v35));
  v15 = MEMORY[0x1E6960C70];
  *a4 = *MEMORY[0x1E6960C70];
  *(a4 + 16) = *(v15 + 16);
  if (!*(DerivedStorage + 1592))
  {
    return 0;
  }

  v16 = DerivedStorage;
  if (*(DerivedStorage + 912))
  {
    fpfsi_GetPumpReferenceTimeForDate(DerivedStorage, a2, &v35);
    rhs = v35;
    fpfs_GetTimeForDate();
    value = time.value;
    flags = time.flags;
    timescale = time.timescale;
    v17 = time.flags & 1;
    if (time.flags)
    {
      epoch = time.epoch;
      if (dword_1EAF169F0)
      {
        v33 = time.epoch;
        v34 = time.flags;
        LODWORD(lhs.value) = 0;
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        v23 = lhs.value;
        v32 = os_log_and_send_and_compose_flags_and_os_log_type;
        v24 = os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
        v25 = v23 & 0xFFFFFFFE;
        if (v24)
        {
          v25 = v23;
        }

        if (v25)
        {
          v31 = v25;
          v26 = *v16;
          if (v26)
          {
            v27 = (CMBaseObjectGetDerivedStorage() + 888);
          }

          else
          {
            v27 = "";
          }

          v30 = v27;
          if (a1)
          {
            v28 = (CMBaseObjectGetDerivedStorage() + 3096);
          }

          else
          {
            v28 = "";
          }

          time.value = value;
          time.timescale = timescale;
          time.flags = v34;
          time.epoch = v33;
          Seconds = CMTimeGetSeconds(&time);
          LODWORD(rhs.value) = 136316418;
          *(&rhs.value + 4) = "fpsi_TryDateSeekWithSeekID";
          LOWORD(rhs.flags) = 2048;
          *(&rhs.flags + 2) = v26;
          HIWORD(rhs.epoch) = 2082;
          v38 = v30;
          v39 = 2048;
          v40 = a1;
          v41 = 2082;
          v42 = v28;
          v43 = 2048;
          v44 = Seconds;
          _os_log_send_and_compose_impl(v31, 0, &time, 128, &dword_1962D5000, v32, 0, "<<<< FigStreamPlayer >>>> %s: [%p|%{public}s] <%p|%{public}s>: issuing final segment seek to %f", &rhs, 62);
        }

        fig_log_call_emit_and_clean_up_after_send_and_compose();
        flags = v34;
        epoch = v33;
      }

      time.value = value;
      time.timescale = timescale;
      time.flags = flags;
      time.epoch = epoch;
      rhs = **&MEMORY[0x1E6960C80];
      lhs = **&MEMORY[0x1E6960C88];
      v18 = fpfsi_SetCurrentTimeWithRangeAndSeekIDGuts(a1, &time, 5u, &rhs, &lhs.value, a5, 0, a6, 1, 0, 1, 1, a7, 1);
    }

    else
    {
      CMTimeMake(&rhs, 1, 1000);
      lhs = v35;
      CMTimeAdd(&time, &lhs, &rhs);
      v35 = time;
      rhs = time;
      lhs = *(v16 + 1160);
      CMTimeSubtract(&time, &rhs, &lhs);
      v18 = 0;
      v35 = time;
    }

    *a4 = v35;
  }

  else
  {
    v17 = 0;
    v18 = 0;
  }

  *a3 = v18;
  if (v18)
  {
    return 0;
  }

  else
  {
    return v17;
  }
}

uint64_t fpfs_RequestNextIFrameStepUnlocked(uint64_t a1, CMTime *a2, CMTime *a3)
{
  v30 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v7 = CMBaseObjectGetDerivedStorage();
  time = *a3;
  Seconds = CMTimeGetSeconds(&time);
  v9 = *(v7 + 108);
  v10 = fabsf(v9);
  if (v9 == 0.0)
  {
    v11 = 1.0;
  }

  else
  {
    v11 = v10;
  }

  UpTimeNanoseconds = FigGetUpTimeNanoseconds();
  memset(&v27, 0, sizeof(v27));
  CMTimeMake(&v27, 1, 1);
  memset(&v26, 0, sizeof(v26));
  CMTimeMake(&v26, 1, 100);
  memset(&v25, 0, sizeof(v25));
  memset(&v24, 0, sizeof(v24));
  if (!*(DerivedStorage + 912))
  {
    return 0;
  }

  time = *a2;
  rhs = *(DerivedStorage + 1160);
  CMTimeAdd(&v25, &time, &rhs);
  rhs = v25;
  v23 = v26;
  CMTimeAdd(&time, &rhs, &v23);
  v25 = time;
  v13 = *(v7 + 108);
  rhs = v27;
  CMTimeMultiplyByFloat64(&time, &rhs, v13);
  rhs = v25;
  CMTimeAdd(&v24, &rhs, &time);
  *(DerivedStorage + 1520) = CFAbsoluteTimeGetCurrent();
  *(DerivedStorage + 1541) = 0;
  v14 = CMBaseObjectGetDerivedStorage();
  if (*(v14 + 471))
  {
    *(v14 + 471) = 0;
  }

  v15 = *(DerivedStorage + 912);
  v16 = *(v7 + 108);
  v23 = v25;
  v22 = v24;
  v17 = Seconds / v11;
  v18 = *(*(CMBaseObjectGetVTable() + 16) + 80);
  if (v18)
  {
    time = v23;
    rhs = v22;
    v19 = v18(v15, &time, (UpTimeNanoseconds + v17 * 1000000000.0), &rhs, 8, DerivedStorage + 928, v16);
  }

  else
  {
    v19 = 4294954514;
  }

  if (dword_1EAF169F0 >= 2)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (v19 == -12648)
  {
    fpfs_FrameStepHitEnd(a1);
    return 0;
  }

  return v19;
}

BOOL fpfs_TrackIsStalled(uint64_t a1, CMTime *a2)
{
  CMBaseObjectGetDerivedStorage();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(a1 + 200) && *(a1 + 48) == 1986618469)
  {
    v5 = DerivedStorage;
    memset(&v10, 0, sizeof(v10));
    CMTimeMake(&v10, 10, 1000);
    if (*(v5 + 108) >= 0.0 && (*(a1 + 244) & 1) != 0)
    {
      lhs = *a2;
      v7 = v10;
      CMTimeAdd(&time1, &lhs, &v7);
      lhs = *(a1 + 232);
      return CMTimeCompare(&time1, &lhs) >= 0;
    }

    else
    {
      lhs = *a2;
      v7 = v10;
      CMTimeSubtract(&time1, &lhs, &v7);
      lhs = *(a1 + 232);
      return CMTimeCompare(&time1, &lhs) < 1;
    }
  }

  else
  {
    time1 = *(a1 + 232);
    lhs = *a2;
    CMTimeSubtract(&v10, &time1, &lhs);
    *&time1.value = kGaplessTransitionDeadlineInterval;
    time1.epoch = 0;
    return CMTimeCompare(&v10, &time1) >> 31;
  }
}

void fpfs_EndTrackPlayback(uint64_t a1)
{
  v18 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 16);
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v4 = CMBaseObjectGetDerivedStorage();
  v5 = *(a1 + 48);
  fpfs_FinishTrack(a1, 1);
  v6 = *(DerivedStorage + 1024);
  if (!v6)
  {
    goto LABEL_11;
  }

  while (*(v6 + 48) != v5 || !FigStreamTrackAreTracksSyncPairs(a1, v6))
  {
    v6 = *(v6 + 24);
    if (!v6)
    {
      goto LABEL_11;
    }
  }

  if (*(v6 + 168) == 1)
  {
    memset(&v17, 0, sizeof(v17));
    v7 = *(v6 + 88);
    if (v7)
    {
      CMBufferQueueGetMinPresentationTimeStamp(&v17, v7);
    }

    else
    {
      v17 = **&MEMORY[0x1E6960C70];
    }

    if (dword_1EAF169F0)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    fpfs_AbandonSyncAttempt(v6);
  }

  else
  {
LABEL_11:
    if (*(DerivedStorage + 840) == 0.0)
    {
      return;
    }

    v9 = *(DerivedStorage + 1024);
    if (v9)
    {
      while (v9 == a1 || *(v9 + 168) != 6)
      {
        v9 = *(v9 + 24);
        if (!v9)
        {
          goto LABEL_16;
        }
      }

      if (!*(a1 + 200))
      {
        v11 = *(a1 + 196);
        if ((*(DerivedStorage + 1072) >> v11))
        {
          if (*(a1 + 48) == 1986618469)
          {
            if (!fpfs_CanRenderVideo(v4, *(v9 + 16)))
            {
              return;
            }

            v11 = *(a1 + 196);
          }

          if (!*(DerivedStorage + v11 + 472))
          {
            v12 = *(DerivedStorage + 1024);
            if (!v12)
            {
              goto LABEL_45;
            }

            v13 = 0;
            v14 = 0;
            do
            {
              if (*(v12 + 196) == v11)
              {
                if (*(v12 + 168) == 6 && *(v12 + 80) == *(a1 + 80) && !*(v12 + 200))
                {
                  v14 = v12;
                }

                v13 = v12;
              }

              v12 = *(v12 + 24);
            }

            while (v12);
            if (!v13 || (*(v13 + 80) == *(a1 + 80) ? (v15 = v14 == 0) : (v15 = 0), v15))
            {
LABEL_45:
              if (dword_1EAF169F0)
              {
                LODWORD(v17.value) = 0;
                v16 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
                os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT);
                fig_log_call_emit_and_clean_up_after_send_and_compose();
              }

              fpfs_StopPlaybackByStalledTrack(a1, 1u);
            }
          }
        }
      }
    }

    else
    {
LABEL_16:
      v10 = *(v4 + 108);
      if (v10 <= 2.0 && v10 >= 0.0 || *(DerivedStorage + 2992))
      {
        fpfs_setUnlikelyToKeepUpAndRanDry(v2);
        if (!*(DerivedStorage + 471) && !fpfsi_PlaybackHasBufferedBeyondForwardEndTime(v2))
        {

          fpfsi_pauseItem(v2);
        }
      }
    }
  }
}

void fpfs_FinishTrack(uint64_t a1, int a2)
{
  v135 = *MEMORY[0x1E69E9840];
  v119 = a1;
  v4 = *(a1 + 16);
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v117 = 0uLL;
  v118 = 0;
  fpfs_GetTime(DerivedStorage, &v117);
  v131 = *(a1 + 256);
  v132 = *(a1 + 264);
  v6 = *(a1 + 268);
  v108 = *(a1 + 272);
  v115 = DerivedStorage;
  v7 = *DerivedStorage;
  v8 = CMBaseObjectGetDerivedStorage();
  v9 = *(a1 + 48);
  v107 = *(a1 + 32);
  v114 = v7;
  if (*(v8 + 872) == 2)
  {
    v10 = *(CMBaseObjectGetDerivedStorage() + 1024);
    if (v10)
    {
      v11 = 0;
      do
      {
        if (*(v10 + 48) != 1986618469)
        {
          goto LABEL_8;
        }

        Dimensions = CMVideoFormatDescriptionGetDimensions(*(v10 + 56));
        v13 = HIDWORD(Dimensions);
        if (SHIDWORD(Dimensions) >= Dimensions)
        {
          LODWORD(v13) = Dimensions;
        }

        v14 = v10;
        if (v13 <= 1440)
        {
LABEL_8:
          v14 = v11;
        }

        v10 = *(v10 + 24);
        v11 = v14;
      }

      while (v10);
    }

    else
    {
      v14 = 0;
    }

    v15 = *(CMBaseObjectGetDerivedStorage() + 1024);
    if (v15)
    {
      v16 = 0;
      do
      {
        if (*(v15 + 48) != 1986618469 || (VideoDynamicRange = CMVideoFormatDescriptionGetVideoDynamicRange(), v18 = v15, VideoDynamicRange <= 1))
        {
          v18 = v16;
        }

        v15 = *(v15 + 24);
        v16 = v18;
      }

      while (v15);
    }

    else
    {
      v18 = 0;
    }

    v7 = v114;
    if (v18 == a1)
    {
      fpfs_ReleasePlayerHDRPlaybackBaton(v114);
      if (!v14)
      {
LABEL_25:
        fpfs_ReleasePlayer4kPlaybackBaton(v114);
        goto LABEL_26;
      }
    }

    else if (!v14)
    {
      goto LABEL_25;
    }

    if (v14 != a1)
    {
      goto LABEL_26;
    }

    goto LABEL_25;
  }

LABEL_26:
  v113 = v8;
  HIDWORD(v109) = a2;
  if (*(a1 + 48) != 1936684398)
  {
    v19 = v115;
    v21 = *(v115 + 1024);
    if (v21)
    {
      v23 = 0;
      v24 = 0x7FFFFFFFLL;
      v25 = *(v115 + 1024);
      do
      {
        if (v25 != a1 && *(v25 + 168) == 6 && *(v25 + 80) < v24)
        {
          v23 = v25;
          v24 = *(v25 + 80);
        }

        v25 = *(v25 + 24);
      }

      while (v25);
      while (v23)
      {
        if (v23 != a1 && *(v23 + 80) == v24 && *(v23 + 48) == 1936684398 && *(v23 + 168) == 6)
        {
          v60 = *(v23 + 112);
          if (!v60)
          {
            goto LABEL_49;
          }

          v22 = 0;
          if (!*(v60 + 25))
          {
            v53 = 0;
            v22 = v23;
            goto LABEL_194;
          }

          LODWORD(v111) = 1;
          v21 = 0;
          goto LABEL_53;
        }

        v23 = *(v23 + 24);
      }

      goto LABEL_49;
    }

LABEL_51:
    v22 = 0;
LABEL_52:
    LODWORD(v111) = 1;
    goto LABEL_53;
  }

  v19 = v115;
  if (*(CMBaseObjectGetDerivedStorage() + 568))
  {
    fpfs_UnmuteNextAtmosAudioTrack(v7, v4, a1);
  }

  IsRendererTimebaseStarter = FigStreamTrackIsRendererTimebaseStarter(a1);
  v21 = *(v115 + 1024);
  if (!v21)
  {
    goto LABEL_51;
  }

  v22 = *(v115 + 1024);
  while (v22 == a1 || *(v22 + 48) != 1936684398)
  {
    v22 = *(v22 + 24);
    if (!v22)
    {
      goto LABEL_50;
    }
  }

  if (*(v22 + 168) != 6 || (v52 = *(v22 + 112)) == 0 || v52 == *(a1 + 112))
  {
LABEL_49:
    v22 = 0;
LABEL_50:
    v21 = 0;
    goto LABEL_52;
  }

  if (IsRendererTimebaseStarter)
  {
    v53 = v22;
  }

  else
  {
    v53 = 0;
  }

  if (!*(v52 + 25))
  {
LABEL_194:
    while (1)
    {
      if (v21 != a1 && v21 != v22 && *(v21 + 168) == 6)
      {
        if (*(v21 + 128))
        {
          time = *(v21 + 232);
          v120 = *(v22 + 208);
          if (CMTimeCompare(&time, &v120) < 1)
          {
            break;
          }
        }
      }

      v21 = *(v21 + 24);
      if (!v21)
      {
        CMTimebaseSetRate(*(v19 + 576), 0.0);
        FigCFArrayApplyFunction();
        LODWORD(v111) = 0;
        goto LABEL_201;
      }
    }
  }

  v22 = 0;
  LODWORD(v111) = 1;
LABEL_201:
  v21 = v53;
LABEL_53:
  HIDWORD(v111) = v6;
  if (dword_1EAF169F0)
  {
    v110 = v21;
    v112 = v4;
    LODWORD(time2.value) = 0;
    LOBYTE(type.value) = 0;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    value = time2.value;
    if (os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT))
    {
      v28 = value;
    }

    else
    {
      v28 = value & 0xFFFFFFFE;
    }

    if (v28)
    {
      if (v7)
      {
        v29 = (CMBaseObjectGetDerivedStorage() + 888);
      }

      else
      {
        v29 = "";
      }

      v106 = v29;
      v30 = "";
      if (v4)
      {
        v105 = (CMBaseObjectGetDerivedStorage() + 3096);
      }

      else
      {
        v105 = "";
      }

      v104 = *(a1 + 32);
      *&time.value = v117;
      time.epoch = v118;
      Seconds = CMTimeGetSeconds(&time);
      if (*(a1 + 48) == 1936684398)
      {
        v30 = "(audio)";
      }

      time = *(a1 + 232);
      v32 = CMTimeGetSeconds(&time);
      LODWORD(v120.value) = 136317186;
      *(&v120.value + 4) = "fpfs_FinishTrack";
      LOWORD(v120.flags) = 2048;
      *(&v120.flags + 2) = v114;
      HIWORD(v120.epoch) = 2082;
      v121 = v106;
      v122 = 2048;
      v123 = v4;
      v7 = v114;
      v124 = 2082;
      v125 = v105;
      v126 = 2048;
      *v127 = v104;
      v127[4] = 2048;
      *&v127[5] = Seconds;
      v127[9] = 2082;
      v128 = v30;
      v129 = 2048;
      v130 = v32;
      LODWORD(cf) = 92;
      v101 = &v120;
      _os_log_send_and_compose_impl(v28, 0, &time, 128, &dword_1962D5000, os_log_and_send_and_compose_flags_and_os_log_type, 0, "<<<< FigStreamPlayer >>>> %s: [%p|%{public}s] <%p|%{public}s>: Ending track %ld at %f %{public}s, lastSampleEnd: %f");
      v19 = v115;
    }

    fig_log_call_emit_and_clean_up_after_send_and_compose();
    v21 = v110;
  }

  if (*(a1 + 48) == 1668047728)
  {
    FPSupport_resetClosedCaptionLayer(v113 + 208);
  }

  fpfs_StopFeedingTrack(a1, 0, 0);
  *&time.value = v117;
  time.epoch = v118;
  fpfsi_MoveTrackToPlayedOut(v19, a1, &time.value);
  if (!v21)
  {
    goto LABEL_74;
  }

  v33 = v21;
  FigRenderPipelineGetFigBaseObject();
  v35 = v34;
  v36 = *(*(CMBaseObjectGetVTable() + 8) + 56);
  if (!v36)
  {
    v46 = 4294954514;
    goto LABEL_90;
  }

  v37 = v36(v35, @"IsTimebaseStarter", *MEMORY[0x1E695E4D0]);
  v21 = v33;
  if (v37)
  {
    v46 = v37;
LABEL_90:
    LODWORD(time2.value) = 0;
    LOBYTE(type.value) = 0;
    v47 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    v48 = time2.value;
    if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
    {
      v49 = v48;
    }

    else
    {
      v49 = v48 & 0xFFFFFFFE;
    }

    v40 = v113;
    if (!v49)
    {
      goto LABEL_109;
    }

    if (v7)
    {
      v50 = (CMBaseObjectGetDerivedStorage() + 888);
      if (v4)
      {
LABEL_96:
        v51 = (CMBaseObjectGetDerivedStorage() + 3096);
LABEL_108:
        v54 = *(v33 + 32);
        LODWORD(v120.value) = 136316674;
        *(&v120.value + 4) = "fpfs_FinishTrack";
        LOWORD(v120.flags) = 2048;
        *(&v120.flags + 2) = v114;
        HIWORD(v120.epoch) = 2082;
        v121 = v50;
        v122 = 2048;
        v123 = v4;
        v124 = 2082;
        v125 = v51;
        v126 = 1024;
        *v127 = v54;
        v127[2] = 1024;
        *&v127[3] = v46;
        _os_log_send_and_compose_impl(v49, 0, &time, 128, &dword_1962D5000, v47, 0, "<<<< FigStreamPlayer >>>> %s: [%p|%{public}s] <%p|%{public}s>: setting kFigRenderPipelineProperty_IsTimebaseStarter to track %d failed - err %d", &v120, 64);
LABEL_109:
        fig_log_call_emit_and_clean_up_after_send_and_compose();
LABEL_110:
        fpfs_StopPlayingItemWithOSStatus(v40, v4, v46);
        return;
      }
    }

    else
    {
      v50 = "";
      if (v4)
      {
        goto LABEL_96;
      }
    }

    v51 = "";
    goto LABEL_108;
  }

LABEL_74:
  v38 = HIDWORD(v111);
  if ((v111 & 0x100000000) != 0)
  {
    v110 = v21;
    v55 = *(v19 + 840);
    if (dword_1EAF169F0)
    {
      v112 = v4;
      LODWORD(time2.value) = 0;
      LOBYTE(type.value) = 0;
      v56 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v57 = time2.value;
      if (os_log_type_enabled(v56, OS_LOG_TYPE_DEFAULT))
      {
        v58 = v57;
      }

      else
      {
        v58 = v57 & 0xFFFFFFFE;
      }

      if (v58)
      {
        if (v7)
        {
          v98 = (CMBaseObjectGetDerivedStorage() + 888);
        }

        else
        {
          v98 = "";
        }

        v106 = v98;
        if (v112)
        {
          v99 = (CMBaseObjectGetDerivedStorage() + 3096);
        }

        else
        {
          v99 = "";
        }

        time.value = v131;
        time.timescale = v132;
        time.flags = HIDWORD(v111);
        time.epoch = v108;
        v100 = CMTimeGetSeconds(&time);
        LODWORD(v120.value) = 136316418;
        *(&v120.value + 4) = "fpfs_FinishTrack";
        LOWORD(v120.flags) = 2048;
        *(&v120.flags + 2) = v114;
        HIWORD(v120.epoch) = 2082;
        v121 = v106;
        v122 = 2048;
        v123 = v112;
        v124 = 2082;
        v125 = v99;
        v7 = v114;
        v126 = 2048;
        *v127 = v100;
        LODWORD(cf) = 62;
        v101 = &v120;
        _os_log_send_and_compose_impl(v58, 0, &time, 128, &dword_1962D5000, v56, 0, "<<<< FigStreamPlayer >>>> %s: [%p|%{public}s] <%p|%{public}s>: Jumping to %1.5gs to skip ragged starts");
      }

      fig_log_call_emit_and_clean_up_after_send_and_compose();
      v4 = v112;
      v19 = v115;
      v38 = HIDWORD(v111);
    }

    fpfsi_pauseItem(v4);
    time.value = v131;
    time.timescale = v132;
    time.flags = v38;
    time.epoch = v108;
    fpfs_JumpToTime(v4, &time, 1);
    time = **&MEMORY[0x1E6960C70];
    v120 = time;
    fpfs_setRateInternal(v7, v4, &time, &v120, v55);
    v21 = v110;
    if (!fpfsi_isTrackInLists(v19, a1, 3u))
    {
      v119 = 0;
    }
  }

  if ((v111 & 1) == 0)
  {
    time2 = **&MEMORY[0x1E6960C70];
    type = time2;
    if (*(v22 + 438))
    {
      *(v22 + 438) = 0;
    }

    v59 = *(v19 + 840);
    if (*(v19 + 568))
    {
      fpfs_getAnchorTimeForSyncTimebase(v7, v4, &time2, &type, v59);
    }

    else if (v59 != 0.0)
    {
      fpfs_getCachedAnchorTimeForItem();
    }

    time = time2;
    v120 = type;
    fpfs_SetRateOnTrack();
    if (v61)
    {
      if (v22 == v21)
      {
        v62 = v61;
        v63 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(v63, OS_LOG_TYPE_DEFAULT);
        v46 = v62;
        fig_log_call_emit_and_clean_up_after_send_and_compose();
        v40 = v113;
        goto LABEL_110;
      }
    }
  }

  v39 = *(v19 + 1024);
  v40 = v113;
  if (!v39)
  {
    goto LABEL_131;
  }

  while (1)
  {
    v41 = v39;
    v39 = *(v39 + 24);
    if (*(v41 + 48) != v9)
    {
      goto LABEL_82;
    }

    v42 = *(v41 + 168);
    if (v42 == 3)
    {
      break;
    }

LABEL_79:
    if (v42 == 1 && !*(v41 + 112) && *(v41 + 48) == 1986618469)
    {
      fpfs_CheckVideoSyncQueue();
      if (v44)
      {
        fpfs_FinishVideoSync();
        if (v45)
        {
          v46 = v45;
          goto LABEL_110;
        }
      }
    }

LABEL_82:
    if (!v39)
    {
      goto LABEL_131;
    }
  }

  fpfs_AreTracksReadyToPlay();
  if (!v43)
  {
    v42 = *(v41 + 168);
    goto LABEL_79;
  }

  fpfs_PerformInitialResolveOfAllWaitingTracks(v4);
  if (!fpfs_GetItemLivingTrack(v115, v107, &v119))
  {
    v119 = 0;
  }

LABEL_131:
  if (CFArrayGetCount(*(v113 + 72)) < 1)
  {
    v67 = CMBaseObjectGetDerivedStorage();
    memset(&v120, 0, sizeof(v120));
    fpfs_GetTime(v67, &v120);
    if ((*(v67 + 1364) & 0x1D) == 1)
    {
      fpfsi_PlaybackHasTraversedForwardEndTime(v4);
      if (!v68)
      {
        goto LABEL_166;
      }

      if (!dword_1EAF169F0)
      {
        goto LABEL_173;
      }

      LODWORD(type.value) = 0;
      v69 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v70 = type.value;
      if (os_log_type_enabled(v69, OS_LOG_TYPE_DEFAULT))
      {
        v71 = v70;
      }

      else
      {
        v71 = v70 & 0xFFFFFFFE;
      }

      if (v71)
      {
        LODWORD(time2.value) = 136315138;
        *(&time2.value + 4) = "fpfsi_ShouldStopPlayingItemNow";
        _os_log_send_and_compose_impl(v71, 0, &time, 128, &dword_1962D5000, v69, 0, "<<<< FigStreamPlayer >>>> %s: stop playing item due to forwardEndTime being reached", &time2);
      }
    }

    else
    {
      if (!HIDWORD(v109))
      {
        goto LABEL_166;
      }

      time = v120;
      time2 = *(v67 + 480);
      if (CMTimeCompare(&time, &time2) < 0)
      {
        goto LABEL_166;
      }

      if (!dword_1EAF169F0)
      {
        goto LABEL_173;
      }

      LODWORD(type.value) = 0;
      v76 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v77 = type.value;
      if (os_log_type_enabled(v76, OS_LOG_TYPE_DEFAULT))
      {
        v78 = v77;
      }

      else
      {
        v78 = v77 & 0xFFFFFFFE;
      }

      if (v78)
      {
        LODWORD(time2.value) = 136315138;
        *(&time2.value + 4) = "fpfsi_ShouldStopPlayingItemNow";
        _os_log_send_and_compose_impl(v78, 0, &time, 128, &dword_1962D5000, v76, 0, "<<<< FigStreamPlayer >>>> %s: pump has finished delivering and playback reached the end", &time2);
      }
    }

    fig_log_call_emit_and_clean_up_after_send_and_compose();
    goto LABEL_173;
  }

  ValueAtIndex = CFArrayGetValueAtIndex(*(v113 + 72), 0);
  v65 = v119;
  if (!v119)
  {
    goto LABEL_133;
  }

  v72 = ValueAtIndex;
  *&time2.value = v117;
  time2.epoch = v118;
  v73 = *(v119 + 16);
  v74 = CMBaseObjectGetDerivedStorage();
  if (*(v65 + 200))
  {
    if (!HIDWORD(v109) || *(v65 + 48) != 1986618469)
    {
      goto LABEL_133;
    }

LABEL_154:
    time = time2;
    v120 = v74[20];
    if (CMTimeCompare(&time, &v120) < 0)
    {
      fpfsi_PlaybackHasTraversedForwardEndTime(v73);
      if (!v75)
      {
        goto LABEL_133;
      }
    }

    if (fpfsi_AllTracksForMediaTypeArePlaying(v72))
    {
      v66 = 1;
      goto LABEL_134;
    }

    fpfs_TransitionFromItemToItem(v4, v72);
LABEL_173:
    fpfs_StopPlayingItem();
    v92 = 0;
    v86 = v115;
  }

  else
  {
    if (HIDWORD(v109))
    {
      goto LABEL_154;
    }

LABEL_133:
    v66 = 0;
LABEL_134:
    fpfsi_MakeNextItemReadyForInspectionIfItemEndedOrBeyondFwdEnd(v4);
    if (v66)
    {
      goto LABEL_173;
    }

LABEL_166:
    fpfs_UpdateDimensions(v4, 0);
    v86 = v115;
    if (*(v113 + 872) != 1 && *(v113 + 108) == 1.0)
    {
      if (v9 == 1936684398)
      {
        RenderingNonGapTrackofType = fpfs_FirstRenderingNonGapTrackofType(v4, 1936684398);
        if (RenderingNonGapTrackofType)
        {
          v94 = RenderingNonGapTrackofType;
          v95 = v119;
          if (!FigCFEqual())
          {
            v91 = (v95 + 456);
            fpfs_ReportAudioPlaybackThroughFigLog(v4);
            if (FigAlternateIsAudioOnly(*v91))
            {
              v90 = (v94 + 456);
LABEL_178:
              fpfsi_metricEventPublishVariantChangeOrVariantChangeStartEvent(v4, *v90, *v91, 1, 1);
            }
          }
        }
      }

      else if (v9 == 1986618469)
      {
        v87 = fpfs_FirstRenderingNonGapTrackofType(v4, 1986618469);
        if (v87)
        {
          v88 = v87;
          v89 = v119;
          if (!FigCFEqual())
          {
            v90 = (v88 + 456);
            v91 = (v89 + 456);
            fpfs_ReportVideoPlaybackTimeThroughFigLog(v4, 0);
            goto LABEL_178;
          }
        }
      }
    }

    fpfsi_SetupSkipBitrateRangeFilter(v4, v79, v80, v81, v82, v83, v84, v85, v101, cf, v103, v104, v105, v106, v107, v108, v109, v110, v111, v112);
    v92 = 1;
  }

  fpfs_PostHasEnabledTrackTypeNotification(v114, v4);
  if (v92)
  {
    if (v119)
    {
      if (!*(v119 + 200))
      {
        v96 = *(v119 + 196);
        if (((*(v86 + 1072) >> v96) & 1) != 0 && !*(v86 + 471))
        {
          v97 = *(v86 + 1024);
          if (v97)
          {
            while (v97 == v119 || *(v97 + 196) != v96)
            {
              v97 = *(v97 + 24);
              if (!v97)
              {
                goto LABEL_190;
              }
            }
          }

          else
          {
LABEL_190:
            fpfs_StopPlaybackByStalledTrack(v119, 3u);
          }
        }
      }
    }
  }
}

void fpfs_AbandonSyncAttempt(uint64_t a1)
{
  v91 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 16);
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  memset(&v83, 0, sizeof(v83));
  memset(&v82, 0, sizeof(v82));
  v79 = 0uLL;
  epoch = 0;
  fpfs_GetTime(DerivedStorage, &v79);
  *&v77.value = v79;
  v77.epoch = epoch;
  v4 = *(DerivedStorage + 840);
  HIBYTE(v76) = 0;
  if (*(DerivedStorage + 1680) && fpfsi_TrialSwitchDownInProgress(DerivedStorage))
  {
    fpfs_CompleteTrialSwitch(*(a1 + 16), a1, &v76 + 3, v5, v6, v7, v8, v9, v64, SBYTE2(v64), BYTE3(v64), SHIDWORD(v64), v65, v66, v67, v69, v70, v71, v73, v74.value, *&v74.timescale, v74.epoch, SHIDWORD(v74.epoch), v75, v76, v77.value, SHIDWORD(v77.value), *&v77.timescale, v77.epoch, v78, v79.n128_i64[0], v79.n128_i64[1], epoch, v81, v82.value, *&v82.timescale, v82.epoch, v83.value, *&v83.timescale, v83.epoch, lhs.value, *&lhs.timescale, lhs.epoch, v85, v86[0], v86[1], v86[2], v86[3], v86[4], v87, *(&v87 + 1), v88, time.value, *&time.timescale, time.epoch, v90);
  }

  v10 = *(a1 + 48);
  if (v10 == 1986618469)
  {
    if (!*(a1 + 199))
    {
      *(a1 + 201) = 1;
    }

    if (*(a1 + 200))
    {
      goto LABEL_100;
    }
  }

  else
  {
    *(a1 + 201) = 1;
    if (*(a1 + 200))
    {
LABEL_100:
      *&time.value = v79;
      time.epoch = epoch;
      *&lhs.value = v79;
      lhs.epoch = epoch;
      v74 = **&MEMORY[0x1E6960C70];
      fpfs_StartTrackPlaying();
      return;
    }

    if (v10 == 1936684398)
    {
      fpfs_EnsureRenderChainForTrack();
      if (*(a1 + 112))
      {
        for (i = *(CMBaseObjectGetDerivedStorage() + 1024); i; i = *(i + 24))
        {
          if (*(i + 48) == 1936684398 && *(i + 112))
          {
            break;
          }
        }

        if (i == a1)
        {
          if (dword_1EAF169F0)
          {
            LODWORD(v74.value) = 0;
            os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
            fig_log_call_emit_and_clean_up_after_send_and_compose();
          }

          v29 = fpfs_SetTimebaseOnTrack();
          if (v29)
          {
            goto LABEL_94;
          }

          FigRenderPipelineGetFigBaseObject();
          v62 = v61;
          v63 = *(*(CMBaseObjectGetVTable() + 8) + 56);
          if (!v63)
          {
            v45 = 4294954514;
            goto LABEL_98;
          }

          v29 = v63(v62, @"IsTimebaseStarter", *MEMORY[0x1E695E4D0]);
          if (v29)
          {
            goto LABEL_94;
          }
        }
      }
    }
  }

  if (dword_1EAF169F0)
  {
    LODWORD(v74.value) = 0;
    v11 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v12 = *(DerivedStorage + 840);
  if (v12 == 0.0 || HIBYTE(v76) != 0)
  {
    if (v12 != 0.0)
    {
      goto LABEL_53;
    }

LABEL_54:
    v15 = 0;
    goto LABEL_55;
  }

  v14 = *(DerivedStorage + 1024);
  if (!v14)
  {
LABEL_141:
    v29 = fpfsi_pauseItem(v2);
    if (v29)
    {
      goto LABEL_94;
    }

    v15 = 1;
LABEL_55:
    if ((*(a1 + 156) & 1) == 0)
    {
      v30 = *(DerivedStorage + 1024);
      if (v30)
      {
        while (*(v30 + 80) != *(a1 + 80) || *(v30 + 472) || (*(v30 + 156) & 0x1D) != 1)
        {
          v30 = *(v30 + 24);
          if (!v30)
          {
            goto LABEL_61;
          }
        }

        *&time.value = *(v30 + 144);
        v31 = *(v30 + 160);
      }

      else
      {
LABEL_61:
        *&time.value = *MEMORY[0x1E6960C70];
        v31 = *(MEMORY[0x1E6960C70] + 16);
      }

      time.epoch = v31;
      *(a1 + 144) = *&time.value;
      *(a1 + 160) = v31;
    }

    fpfs_GetTime(DerivedStorage, &time);
    epoch = time.epoch;
    v32 = time.epoch;
    v79 = *&time.value;
    v33 = *&time.value;
    time = v77;
    *&lhs.value = v33;
    lhs.epoch = v32;
    if (CMTimeCompare(&time, &lhs) >= 1)
    {
      time = v77;
      fpfs_JumpToTime(v2, &time, 0);
      v79 = *&v77.value;
      epoch = v77.epoch;
    }

    if (!v15)
    {
      if (*(DerivedStorage + 2816) > *(DerivedStorage + 2820))
      {
        *(DerivedStorage + 2312) = 1;
        v40 = *(a1 + 48);
        if (v40 == 1986618469)
        {
          *(DerivedStorage + 2849) = 1;
        }

        else if (v40 == 1936684398)
        {
          *(DerivedStorage + 2848) = 1;
        }

        v48 = *(DerivedStorage + 1024);
        if (v48)
        {
          v49 = *(a1 + 80);
          do
          {
            if (v49 == *(v48 + 80) && *(v48 + 168) == 1)
            {
              v50 = *(v48 + 48);
              if (v50 == 1986618469)
              {
                *(DerivedStorage + 2849) = 1;
              }

              else if (v50 == 1936684398)
              {
                *(DerivedStorage + 2848) = 1;
              }
            }

            v48 = *(v48 + 24);
          }

          while (v48);
        }

        fpfsi_RTCReportingReportVariantSwitchComplete(v2, 1u);
      }

      v45 = *(DerivedStorage + 1024);
      if (!v45)
      {
LABEL_97:
        CMBaseObjectGetDerivedStorage();
        fpfs_FlowControlPump(DerivedStorage, 0, 1, 255);
        if (v45)
        {
          goto LABEL_98;
        }

        return;
      }

      v51 = *(DerivedStorage + 1024);
      do
      {
        if (*(v51 + 168) == 6 && *(v51 + 80) == *(a1 + 80) && !*(v51 + 200))
        {
          *&time.value = v79;
          time.epoch = epoch;
          lhs = **&MEMORY[0x1E6960C88];
          fpfs_StartTrackPlaying();
          if (v60 == -16042)
          {
            v45 = 0;
          }

          else
          {
            v45 = v60;
          }

          goto LABEL_97;
        }

        v51 = *(v51 + 24);
      }

      while (v51);
      do
      {
        if (!*(DerivedStorage + 1024))
        {
          goto LABEL_96;
        }

        v52 = v45;
        v45 = *(v45 + 24);
        if (*(v52 + 196) == *(a1 + 196) && *(v52 + 80) <= *(a1 + 80) && *(v52 + 64) != *(a1 + 64))
        {
          fpfs_DeleteTrack(v2, v52);
        }
      }

      while (v45);
      v53 = *(DerivedStorage + 1024);
      if (v53)
      {
        while (*(DerivedStorage + 1024))
        {
          v54 = v53;
          v53 = *(v53 + 24);
          if (*(v54 + 64) == *(a1 + 64) && *(v54 + 168) != 6)
          {
            v55 = *(v54 + 48);
            if (v55 == 1986618469)
            {
              v57 = *(v54 + 280);
              v56 = (DerivedStorage + 832);
              if (v57)
              {
                CFRelease(v57);
                *(v54 + 280) = 0;
                v56 = (DerivedStorage + 832);
              }

LABEL_135:
              if (*v56)
              {
                fpfs_FlushPrimaryAndAuxRenderChains(*v56, 1);
              }
            }

            else if (v55 == 1936684398)
            {
              *&time.value = v79;
              time.epoch = epoch;
              fpfs_TrimAudioTrack(v54, &time);
              v56 = (DerivedStorage + 824);
              goto LABEL_135;
            }

            fpfs_GetTime(DerivedStorage, &time);
            *(v54 + 208) = time;
            fpfs_ChangeTrackState(v54, 2u);
          }

          if (!v53)
          {
            break;
          }

          continue;
        }
      }

LABEL_96:
      v45 = 0;
      goto LABEL_97;
    }

    if (!dword_1EAF169F0)
    {
LABEL_83:
      v41 = *(DerivedStorage + 1024);
      if (v41)
      {
        v42 = MEMORY[0x1E6960C70];
        while (1)
        {
          v43 = *(v41 + 24);
          if (*(v41 + 80) == *(a1 + 80) && *(v41 + 196) == *(a1 + 196))
          {
            v44 = *(v41 + 280);
            if (v44)
            {
              CFRelease(v44);
              *(v41 + 280) = 0;
            }

            if ((*(v41 + 168) | 4) == 5)
            {
              *&time.value = v79;
              time.epoch = epoch;
              lhs = *v42;
              fpfs_StartTrackPlaying();
              if (v29)
              {
                goto LABEL_94;
              }
            }
          }

          if (v43)
          {
            v41 = v43;
            if (*(DerivedStorage + 1024))
            {
              continue;
            }
          }

          break;
        }
      }

      fpfs_CheckPrebufferedLevels();
      v46 = *DerivedStorage;
      time = **&MEMORY[0x1E6960C70];
      lhs = time;
      fpfs_setRateInternal(v46, v2, &time, &lhs, v4);
      goto LABEL_96;
    }

    LODWORD(v74.value) = 0;
    v34 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    value = v74.value;
    if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
    {
      v36 = value;
    }

    else
    {
      v36 = value & 0xFFFFFFFE;
    }

    if (!v36)
    {
LABEL_82:
      fig_log_call_emit_and_clean_up_after_send_and_compose();
      goto LABEL_83;
    }

    v37 = *DerivedStorage;
    if (*DerivedStorage)
    {
      v38 = (CMBaseObjectGetDerivedStorage() + 888);
      if (v2)
      {
LABEL_73:
        v39 = (CMBaseObjectGetDerivedStorage() + 3096);
LABEL_81:
        LODWORD(lhs.value) = 136316162;
        *(&lhs.value + 4) = "fpfs_AbandonSyncAttempt";
        LOWORD(lhs.flags) = 2048;
        *(&lhs.flags + 2) = v37;
        HIWORD(lhs.epoch) = 2082;
        v85 = v38;
        LOWORD(v86[0]) = 2048;
        *(v86 + 2) = v2;
        WORD1(v86[1]) = 2082;
        *(&v86[1] + 4) = v39;
        LODWORD(v65) = 52;
        _os_log_send_and_compose_impl(v36, 0, &time, 128, &dword_1962D5000, v34, 0, "<<<< FigStreamPlayer >>>> %s: [%p|%{public}s] <%p|%{public}s>: continuing playback", &lhs, v65);
        goto LABEL_82;
      }
    }

    else
    {
      v38 = "";
      if (v2)
      {
        goto LABEL_73;
      }
    }

    v39 = "";
    goto LABEL_81;
  }

  v15 = 1;
  do
  {
    if (*(v14 + 80) == *(a1 + 80) && *(v14 + 196) == *(a1 + 196) && (*(v14 + 168) | 4) == 5)
    {
      v16 = *(v14 + 48);
      v17 = *(CMBaseObjectGetDerivedStorage() + 1024);
      if (!v17)
      {
        goto LABEL_31;
      }

      while (*(v17 + 48) != v16 || !*(v17 + 112))
      {
        v17 = *(v17 + 24);
        if (!v17)
        {
          goto LABEL_31;
        }
      }

      if (*(v17 + 32) >= *(v14 + 32) || *(v17 + 168) != 6)
      {
LABEL_31:
        Head = CMBufferQueueGetHead(*(v14 + 88));
        if (!Head)
        {
          goto LABEL_42;
        }

        CMSampleBufferGetOutputPresentationTimeStamp(&v83, Head);
        lhs = v83;
        fpfs_GetTrackStartupQueueDuration(v14, &lhs, &time);
        lhs = v83;
        CMTimeAdd(&v82, &lhs, &time);
        time = v83;
        *&lhs.value = v79;
        lhs.epoch = epoch;
        if (CMTimeCompare(&time, &lhs) >= 1)
        {
          time = v77;
          lhs = v83;
          CMTimeMaximum(&v77, &time, &lhs);
        }

        CMTimeMake(&lhs, 1, 1);
        v74 = v77;
        CMTimeAdd(&time, &v74, &lhs);
        lhs = v82;
        if (CMTimeCompare(&lhs, &time) < 0)
        {
          if (!dword_1EAF169F0)
          {
LABEL_42:
            v15 = 0;
            goto LABEL_50;
          }

          LODWORD(v74.value) = 0;
          v19 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          v20 = v74.value;
          if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
          {
            v21 = v20;
          }

          else
          {
            v21 = v20 & 0xFFFFFFFE;
          }

          if (v21)
          {
            v72 = v2;
            v22 = *DerivedStorage;
            if (*DerivedStorage)
            {
              v23 = (CMBaseObjectGetDerivedStorage() + 888);
            }

            else
            {
              v23 = "";
            }

            v68 = v23;
            v24 = *(v14 + 16);
            if (v24)
            {
              v25 = (CMBaseObjectGetDerivedStorage() + 3096);
            }

            else
            {
              v25 = "";
            }

            *&time.value = v79;
            time.epoch = epoch;
            Seconds = CMTimeGetSeconds(&time);
            time = v83;
            v27 = CMTimeGetSeconds(&time);
            time = v82;
            v28 = CMTimeGetSeconds(&time);
            LODWORD(lhs.value) = 136316930;
            *(&lhs.value + 4) = "fpfs_AbandonSyncAttempt";
            LOWORD(lhs.flags) = 2048;
            *(&lhs.flags + 2) = v22;
            HIWORD(lhs.epoch) = 2082;
            v85 = v68;
            LOWORD(v86[0]) = 2048;
            *(v86 + 2) = v24;
            WORD1(v86[1]) = 2082;
            *(&v86[1] + 4) = v25;
            WORD2(v86[2]) = 2048;
            *(&v86[2] + 6) = Seconds;
            HIWORD(v86[3]) = 2048;
            *&v86[4] = v27;
            LOWORD(v87) = 2048;
            *(&v87 + 2) = v28;
            LODWORD(v65) = 82;
            _os_log_send_and_compose_impl(v21, 0, &time, 128, &dword_1962D5000, v19, 0, "<<<< FigStreamPlayer >>>> %s: [%p|%{public}s] <%p|%{public}s>: now %g, have media from %g to %g; cannot continue yet", &lhs, v65);
            v2 = v72;
          }

          fig_log_call_emit_and_clean_up_after_send_and_compose();
          v15 = 0;
        }
      }
    }

LABEL_50:
    v14 = *(v14 + 24);
  }

  while (v14);
  if (*(DerivedStorage + 840) == 0.0)
  {
    goto LABEL_55;
  }

  if (v15)
  {
    goto LABEL_141;
  }

LABEL_53:
  v29 = fpfs_StopPlaybackByStalledTrack(a1, 2u);
  if (!v29)
  {
    goto LABEL_54;
  }

LABEL_94:
  v45 = v29;
LABEL_98:
  v47 = CMBaseObjectGetDerivedStorage();
  fpfs_StopPlayingItemWithOSStatus(v47, v2, v45);
}

uint64_t fpfs_PerformInitialResolveOfAllWaitingTracks(const __CFArray *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v3 = CMBaseObjectGetDerivedStorage();
  Next = fpfs_getNext(v3, *(v3 + 80));
  v5 = Next;
  v6 = *(v3 + 80);
  if (v6)
  {
    v7 = v6 == a1;
  }

  else
  {
    v7 = 1;
  }

  v8 = !v7 && Next == a1;
  if (!v8 || *(DerivedStorage + 2472))
  {
    v9 = 0;
    goto LABEL_11;
  }

  v11 = CMBaseObjectGetDerivedStorage();
  v12 = CMBaseObjectGetDerivedStorage();
  v20 = *MEMORY[0x1E6960C70];
  *&v50.value = *MEMORY[0x1E6960C70];
  v13 = *(MEMORY[0x1E6960C70] + 16);
  v50.epoch = v13;
  v49 = 0;
  v47 = 0u;
  v48 = 0u;
  v45 = 0u;
  v46 = 0u;
  v43 = 0;
  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  if (fpfsi_IsEligibleForGaplessTransition(*v11))
  {
    fpfs_OkayToAttemptGapless(v6, a1, &v45, &v39, &v50, v14, v15, v16, v20, *(&v20 + 1), rhs.value, *&rhs.timescale, rhs.epoch, v23, lhs.value, *&lhs.timescale, lhs.epoch, v25, v26.value, *&v26.timescale, v26.epoch, v27.value, *&v27.timescale, v27.epoch, v28.value, *&v28.timescale, v28.epoch, v29, v30, *(&v30 + 1), v31, *(&v31 + 1), v32, v33, v34, *v35, *&v35[8], *&v35[24], *&v35[40], v36, *(&v36 + 1), v37, v38, v39, *(&v39 + 1), v40, *(&v40 + 1), v41, *(&v41 + 1), v42, *(&v42 + 1), v43, v44);
    if (v17)
    {
      HIBYTE(v38) = 0;
      LODWORD(v38) = 0;
      result = fpfs_EstablishTimebase(a1);
      if (result)
      {
        *(DerivedStorage + 2472) = 0;
        return result;
      }

      *&v35[32] = v47;
      v36 = v48;
      v37 = v49;
      *v35 = v45;
      *&v35[16] = v46;
      v32 = v41;
      v33 = v42;
      *&v34 = v43;
      v30 = v39;
      v31 = v40;
      fpfs_AreItemsEligibleForGaplessTransition(v6, v35, a1, &v30, &v38, &v38 + 7);
      if (v38 == 2)
      {
        v19 = 0;
        v9 = 0;
      }

      else if (v38 == 1)
      {
        *v35 = v21;
        *&v35[16] = v13;
        v30 = v21;
        *&v31 = v13;
        *&v28.value = v21;
        v28.epoch = v13;
        lhs = v50;
        fpfp_GetTransitionTimebaseStartTime(v11, v12, &v45, &v39, &lhs, HIBYTE(v38), &v27, &v26, v35);
        fpfs_GetItemBufferedDuration(a1, &v30, 0, 0);
        fpfs_GetNextTimeToPlay(v12, 0, &lhs);
        *&rhs.value = v30;
        rhs.epoch = v31;
        CMTimeAdd(&v28, &lhs, &rhs);
        lhs = v28;
        rhs = *v35;
        v18 = CMTimeCompare(&lhs, &rhs);
        v19 = v18 > 0;
        v9 = v18 < 1;
      }

      else
      {
        v19 = 0;
        v9 = 1;
      }

      goto LABEL_29;
    }

    v9 = 1;
  }

  else
  {
    v9 = 0;
  }

  v19 = 0;
LABEL_29:
  *(DerivedStorage + 2472) = v19;
LABEL_11:
  if (*(v3 + 80) == a1)
  {
    if (v9)
    {
      return 0;
    }

    return fpfs_ResolveAllWaitingTracks(a1);
  }

  result = 0;
  if (v5 == a1 && !v9)
  {
    return fpfs_ResolveAllWaitingTracks(a1);
  }

  return result;
}

BOOL fpfs_GetItemLivingTrack(uint64_t a1, uint64_t a2, void *a3)
{
  i = *(a1 + 1024);
  if (i)
  {
    while (*(i + 32) != a2)
    {
      i = *(i + 24);
      if (!i)
      {
        goto LABEL_4;
      }
    }
  }

  else
  {
LABEL_4:
    for (i = *(a1 + 1040); i; i = *(i + 24))
    {
      if (*(i + 32) == a2)
      {
        break;
      }
    }
  }

  *a3 = i;
  return i != 0;
}

uint64_t fpfs_FirstRenderingNonGapTrackofType(uint64_t a1, int a2)
{
  for (result = *(CMBaseObjectGetDerivedStorage() + 1024); result; result = *(result + 24))
  {
    if (*(result + 48) == a2 && *(result + 112) && !*(result + 472))
    {
      break;
    }
  }

  return result;
}

void fpfs_ReportVideoPlaybackTimeThroughFigLog(uint64_t a1, int a2)
{
  v10 = *MEMORY[0x1E69E9840];
  RenderingNonGapTrackofType = fpfs_FirstRenderingNonGapTrackofType(a1, 1986618469);
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (RenderingNonGapTrackofType)
  {
    if (*(RenderingNonGapTrackofType + 456))
    {
      if (!*(RenderingNonGapTrackofType + 200) && !*(RenderingNonGapTrackofType + 472))
      {
        v6 = 0uLL;
        v7 = 0;
        fpfs_GetTime(DerivedStorage, &v6);
        time1 = *(RenderingNonGapTrackofType + 232);
        *&time2.value = v6;
        time2.epoch = v7;
        if (CMTimeCompare(&time1, &time2) >= 1)
        {
          DescriptionString = FigAlternateCreateDescriptionString(*(RenderingNonGapTrackofType + 456));
          if (dword_1EAF169F0)
          {
            os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
            fig_log_call_emit_and_clean_up_after_send_and_compose();
          }

          if (DescriptionString)
          {
            CFRelease(DescriptionString);
          }
        }
      }
    }
  }
}

void fpfs_ReportAudioPlaybackThroughFigLog(uint64_t a1)
{
  v43 = *MEMORY[0x1E69E9840];
  theArray = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  CMBaseObjectGetDerivedStorage();
  RenderingNonGapTrackofType = fpfs_FirstRenderingNonGapTrackofType(a1, 1936684398);
  if (!RenderingNonGapTrackofType)
  {
    return;
  }

  v4 = RenderingNonGapTrackofType;
  v5 = *(RenderingNonGapTrackofType + 56);
  v33 = 0;
  LODWORD(v31) = fpfsi_GetSpatializationConfiguration(a1);
  RichestDecodableFormat = CMAudioFormatDescriptionGetRichestDecodableFormat(v5);
  *v27 = RichestDecodableFormat;
  if (!RichestDecodableFormat)
  {
    RichestDecodableFormat = CMAudioFormatDescriptionGetStreamBasicDescription(v5);
  }

  theDict = RichestDecodableFormat;
  CurrentAudioPersistentIDFromMediaOption = fpfsi_GetCurrentAudioPersistentIDFromMediaOption(*(v4 + 16));
  SpecializedAudioChannelUsage = FigAlternateGetSpecializedAudioChannelUsage(*(v4 + 456), CurrentAudioPersistentIDFromMediaOption);
  HIDWORD(v30) = FPSupport_GetAudioFormatDescriptionSpatializationEligibility(v5, &v33);
  if (*(DerivedStorage + 795))
  {
    v12 = 1836019574;
  }

  else
  {
    v12 = 1936684398;
  }

  fpfsi_CreateAudioSpatialSourcesArray(a1, v12, &theArray, 0, 0, v9, v10, v11, v18, v19, v20, v21, v22, v23, v24, v25, v27[0], v27[1], theDict, v5, SBYTE2(v5), SBYTE3(v5), SHIDWORD(v5), v30, v31, v32, v33, theArray, v35, v36, v37, v38, v39, v40, v41, v42);
  v13 = 0;
  v14 = 0;
  while (1)
  {
    Count = theArray;
    if (theArray)
    {
      Count = CFArrayGetCount(theArray);
    }

    if (v13 >= Count)
    {
      break;
    }

    LODWORD(v35) = 1064530531;
    FigCFArrayGetInt32AtIndex();
    if (v35 == 1836020596)
    {
      v16 = 1;
    }

    else
    {
      v16 = v14;
    }

    if (v35 != 1835824233)
    {
      v14 = v16;
    }

    ++v13;
  }

  if (SpecializedAudioChannelUsage != 1)
  {
    FigAlternateGetStringFromSpecializedChannelUsage(SpecializedAudioChannelUsage);
  }

  if (theDicta)
  {
    if (!dword_1EAF169F0)
    {
      goto LABEL_26;
    }

    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
  }

  else
  {
    if (!dword_1EAF169F0)
    {
      goto LABEL_26;
    }

    v17 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT);
  }

  fig_log_call_emit_and_clean_up_after_send_and_compose();
LABEL_26:
  if (theArray)
  {
    CFRelease(theArray);
  }
}

uint64_t fpfs_EndCurrentDiscontinuity(const __CFArray *a1, unsigned int a2, unsigned int a3, int a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v9 = DerivedStorage;
  if (a4)
  {
    fpfs_WeakStreamEnd(DerivedStorage, a2, a3);
    goto LABEL_3;
  }

  if (a2 <= 2)
  {
    v17 = *(DerivedStorage + 16 * a2 + 8 * a3 + 976);
    if (!v17)
    {
      goto LABEL_3;
    }
  }

  else
  {
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v19.value, v19.timescale, LODWORD(v19.epoch));
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v19.value, v19.timescale, LODWORD(v19.epoch));
    v17 = -1;
  }

  v18 = *(*(CMBaseObjectGetVTable() + 16) + 16);
  if (v18)
  {
    v18(v17, 0);
  }

LABEL_3:
  fpfs_PerformInitialResolveOfAllWaitingTracks(a1);
  v10 = *(v9 + 1024);
  while (v10)
  {
    if (!*(v9 + 1024))
    {
      return fpfs_PerformInitialResolveOfAllWaitingTracks(a1);
    }

    v11 = v10;
    v12 = *(v10 + 196);
    if (!a3 && v12 == a2)
    {
      *(v10 + 205) = 1;
    }

    v10 = *(v10 + 24);
    if (v12 == a2 && *(v11 + 198) == 1)
    {
      v13 = *(v11 + 168);
      if (a3 || v13 != 1)
      {
        if (a3 == 1 && v13 == 1)
        {
          fpfs_CompleteTrialSync(a1, v11);
          if (!v15)
          {
            continue;
          }
        }

        else if (v13 > 7 || ((1 << v13) & 0x95) == 0 && (v13 != 5 || *(v11 + 280)) || *(v11 + 128))
        {
          continue;
        }

        goto LABEL_27;
      }

      if (*(v11 + 280))
      {
        memset(&v21, 0, sizeof(v21));
        lhs = *(v11 + 232);
        v19 = *(v11 + 288);
        CMTimeSubtract(&v21, &lhs, &v19);
        CMTimeMake(&lhs, 50, 1000);
        v19 = v21;
        if (CMTimeCompare(&v19, &lhs) < 0 || CMTimebaseGetRate(*(v9 + 576)) == 0.0)
        {
          v14 = *(v11 + 280);
          if (v14)
          {
            CFRelease(v14);
            *(v11 + 280) = 0;
          }
        }
      }

      if (*(v11 + 48) == 1936684398)
      {
        if (fpfs_EndCurrentDiscontinuity_cold_1(v11, v9, (v11 + 168)))
        {
          continue;
        }

LABEL_27:
        fpfs_DeleteTrack(a1, v11);
        continue;
      }

      if (!*(v11 + 280))
      {
        goto LABEL_27;
      }
    }
  }

  return fpfs_PerformInitialResolveOfAllWaitingTracks(a1);
}

uint64_t fpfs_NewTrackNote(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4)
{
  v4 = a3;
  v72 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v8 = CMBaseObjectGetDerivedStorage();
  Next = fpfs_getNext(v8, 0);
  cf[0] = 0;
  v9 = 1;
  if (v4 <= 1935832171)
  {
    if (v4 == 1668047728 || v4 == 1835365473)
    {
      goto LABEL_10;
    }

    goto LABEL_8;
  }

  if (v4 == 1935832172)
  {
    v9 = 4;
    goto LABEL_10;
  }

  if (v4 != 1986618469)
  {
    if (v4 == 1936684398)
    {
      v9 = 2;
      goto LABEL_10;
    }

LABEL_8:
    v9 = 0;
  }

LABEL_10:
  v68 = 0;
  v69 = 0;
  if (!a1)
  {
    goto LABEL_18;
  }

  v10 = 0;
  v11 = 976;
  do
  {
    if (*(DerivedStorage + v11) == a1)
    {
      v13 = 0;
      goto LABEL_20;
    }

    ++v10;
    v11 += 16;
  }

  while (v10 != 3);
  if (!*(DerivedStorage + 1744))
  {
    goto LABEL_18;
  }

  v10 = 0;
  v12 = (DerivedStorage + 984);
  v13 = 1;
  while (*v12 != a1)
  {
    ++v10;
    v12 += 2;
    if (v10 == 3)
    {
      goto LABEL_18;
    }
  }

LABEL_20:
  if (v10 >= 3u)
  {
LABEL_18:
    fpfs_NewTrackNote_cold_5(&v71);
    v14 = v71;
    goto LABEL_121;
  }

  LODWORD(v60) = v9;
  v15 = *(*(CMBaseObjectGetVTable() + 16) + 24);
  if (v15)
  {
    v15(a1, a4, &v69);
  }

  if (v4 != 1835365473)
  {
    goto LABEL_31;
  }

  v16 = v69;
  CMBaseObjectGetDerivedStorage();
  if (!v16)
  {
    goto LABEL_31;
  }

  MediaSubType = CMFormatDescriptionGetMediaSubType(v16);
  if (MediaSubType != 1835360888)
  {
    if (MediaSubType != 1701671783 || !dword_1EAF169F0)
    {
      goto LABEL_31;
    }

    goto LABEL_30;
  }

  if (dword_1EAF169F0)
  {
LABEL_30:
    LODWORD(v67) = 0;
    BYTE4(v66) = 0;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    LODWORD(v59) = 0;
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

LABEL_31:
  v65 = a2;
  v18 = *(DerivedStorage + 1024);
  v19 = 1;
  if (!v18)
  {
    LODWORD(os_log_and_send_and_compose_flags_and_os_log_type) = 0;
    goto LABEL_73;
  }

  v59 = 0;
  LODWORD(os_log_and_send_and_compose_flags_and_os_log_type) = 0;
  v20 = (DerivedStorage + 24 * v13 + 8 * (v10 & 3) + 1104);
  while (*(DerivedStorage + 1024))
  {
    v21 = v18;
    v18 = *(v18 + 24);
    if (*(v21 + 48) == v4 && *(v21 + 80) == *v20)
    {
      if (*(v21 + 64) == a1 && v4 != 1835365473 && !*(v21 + 198))
      {
        break;
      }

      v68 = FigFormatDescriptionRetain();
      if (!v68)
      {
        v24 = *(v21 + 64);
        v25 = *(v21 + 40);
        v26 = *(*(CMBaseObjectGetVTable() + 16) + 24);
        if (v26)
        {
          v26(v24, v25, &v68);
        }
      }

      v22 = *(v21 + 196);
      if (v22 != v10)
      {
        if (*(v21 + 168) == 6)
        {
          v23 = *(DerivedStorage + 1072);
          if (((v23 >> v22) & 1) == 0)
          {
            goto LABEL_68;
          }

          if (v4 != 1835365473)
          {
LABEL_56:
            if ((v23 & v60) != 0 && 1 << *(v21 + 196) == v60)
            {
              break;
            }

            goto LABEL_62;
          }

LABEL_54:
          if (!fpfs_areMetadataFormatsRivals(v69, v68))
          {
            goto LABEL_67;
          }

          v23 = *(DerivedStorage + 1072);
          goto LABEL_56;
        }

        if (v4 == 1835365473)
        {
LABEL_59:
          if (!fpfs_areMetadataFormatsRivals(v69, v68))
          {
LABEL_67:
            ++v59;
            goto LABEL_68;
          }

          LOBYTE(v22) = *(v21 + 196);
        }

        if (1 << v22 == v60)
        {
          break;
        }

LABEL_62:
        FigFormatDescriptionRelease();
        v68 = 0;
        fpfs_StopFeedingTrack(v21, 0, 0);
        v27 = *(v21 + 112);
        if (v27)
        {
          fpfs_FlushPrimaryAndAuxRenderChains(v27, 1);
        }

        fpfs_DeleteTrack(v65, v21);
        goto LABEL_65;
      }

      if (v4 == 1835365473 && !fpfs_areMetadataFormatsRivals(v69, v68))
      {
        if (*(v21 + 168) == 6)
        {
          if (((*(DerivedStorage + 1072) >> *(v21 + 196)) & 1) == 0)
          {
            goto LABEL_68;
          }

          goto LABEL_54;
        }

        goto LABEL_59;
      }

      LODWORD(os_log_and_send_and_compose_flags_and_os_log_type) = *(v21 + 44);
LABEL_68:
      FigFormatDescriptionRelease();
      v68 = 0;
      if (!v18)
      {
LABEL_69:
        v19 = 1;
        goto LABEL_72;
      }
    }

    else
    {
LABEL_65:
      if (!v18)
      {
        goto LABEL_69;
      }
    }
  }

  v19 = 0;
LABEL_72:
  v18 = v59;
LABEL_73:
  if (v4 != 1986618469 || !v10)
  {
    if (v4 == 1986618469)
    {
      if (v18 < 5)
      {
        v34 = v19;
      }

      else
      {
        v34 = 0;
      }

      if (v34 != 1)
      {
        goto LABEL_99;
      }

      v30 = v65;
      if ((fpfs_NewTrackNote_cold_3(DerivedStorage) & 1) == 0)
      {
LABEL_128:
        LODWORD(v67) = 0;
        BYTE4(v66) = 0;
        v50 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }
    }

    else
    {
      v31 = *(DerivedStorage + 1680);
      if (v31 && FigAlternateIsIFrameOnly(v31))
      {
        v32 = *(*(CMBaseObjectGetVTable() + 16) + 32);
        if (!v32)
        {
          v14 = 0;
          v30 = v65;
          goto LABEL_105;
        }

        v30 = v65;
LABEL_103:
        v32(a1, a4, 0, 0);
LABEL_104:
        v14 = 0;
        goto LABEL_105;
      }

      if (v18 < 5)
      {
        v35 = v19;
      }

      else
      {
        v35 = 0;
      }

      if ((v35 & 1) == 0)
      {
LABEL_99:
        v30 = v65;
        if (v18 >= 5 && dword_1EAF169F0)
        {
          LODWORD(v67) = 0;
          BYTE4(v66) = 0;
          v36 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT);
          fig_log_call_emit_and_clean_up_after_send_and_compose();
        }

        v32 = *(*(CMBaseObjectGetVTable() + 16) + 32);
        if (!v32)
        {
          goto LABEL_104;
        }

        goto LABEL_103;
      }

      v30 = v65;
      if ((fpfs_NewTrackNote_cold_2(v4, (DerivedStorage + 1680)) & 1) == 0)
      {
        goto LABEL_128;
      }
    }

    fpfs_AddNewTrack();
    if (!v51)
    {
      fpfs_NewTrackNote_cold_4(&v71);
      goto LABEL_118;
    }

    v52 = v51;
    v53 = *(*(CMBaseObjectGetVTable() + 16) + 32);
    if (v53)
    {
      v14 = v53(a1, a4, &kManifoldOutputCallbacks, v52);
    }

    else
    {
      v14 = 4294954514;
    }

LABEL_105:
    if (v4 != 1936684398)
    {
      goto LABEL_119;
    }

    if (Next != v30)
    {
      goto LABEL_119;
    }

    RenderingTrackofType = fpfs_LastRenderingTrackofType(v30, 1936684398, 0);
    if (!RenderingTrackofType)
    {
      goto LABEL_119;
    }

    fpfs_CancelGaplessTransitionThatDependsOnTrack(*DerivedStorage, RenderingTrackofType, 1, v38, v39, v40, v41, v42, v54, v55, v56, v57, Next, v59, v60, os_log_and_send_and_compose_flags_and_os_log_type, a4, v64, v65, v66, v67, v68, v69, cf[0], cf[1], cf[2], cf[3], cf[4], cf[5], cf[6], cf[7], cf[8]);
    if (v14)
    {
      goto LABEL_120;
    }

    goto LABEL_121;
  }

  if ((*(DerivedStorage + 1072) & 1) != 0 || (v28 = *(DerivedStorage + 1680)) == 0)
  {
    v33 = *(*(CMBaseObjectGetVTable() + 16) + 32);
    if (v33)
    {
      v33(a1, a4, 0, 0);
    }

    v14 = 0;
  }

  else
  {
    v29 = *(*(CMBaseObjectGetVTable() + 16) + 32);
    if (v29)
    {
      v29(a1, a4, 0, 0);
    }

    v30 = v65;
    if (dword_1EAF169F0)
    {
      v62 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v62, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    v43 = FigAlternateSetLateDiscoveredMediaType(v28, 1986618469);
    if (v43)
    {
      goto LABEL_133;
    }

    v44 = *(DerivedStorage + 40);
    if (!v44)
    {
      goto LABEL_134;
    }

    v43 = FigAlternateSelectionBossApplyFilters(v44);
    if (v43)
    {
      goto LABEL_133;
    }

    v45 = *(DerivedStorage + 40);
    AllocatorForMedia = FigGetAllocatorForMedia();
    v43 = FigAlternateSelectionBossCopyProperty(v45, @"FilteredAlternateList", AllocatorForMedia, cf);
    if (v43)
    {
      goto LABEL_133;
    }

    if (!cf[0] || CFArrayGetCount(cf[0]) < 1)
    {
      v47 = 52570;
      goto LABEL_117;
    }

    fpfsi_UpdateValidAlternateListAndSuggestAnAlternate();
    if (v43)
    {
LABEL_133:
      v14 = v43;
      goto LABEL_120;
    }

LABEL_134:
    v47 = 52576;
LABEL_117:
    fpfs_NewTrackNote_cold_1(v47, &v71);
LABEL_118:
    v14 = v71;
LABEL_119:
    if (v14)
    {
LABEL_120:
      v48 = CMBaseObjectGetDerivedStorage();
      fpfs_StopPlayingItemWithOSStatus(v48, v30, v14);
    }
  }

LABEL_121:
  FigFormatDescriptionRelease();
  FigFormatDescriptionRelease();
  if (cf[0])
  {
    CFRelease(cf[0]);
  }

  return v14;
}

uint64_t fpfs_MPEG2ManifoldErrorCallback(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = FigCFCopyCompactDescription();
  if (v5)
  {
    CFRelease(v5);
  }

  return 0;
}

uint64_t fpfs_isKnownMebxMetadataForRendering(const opaqueCMFormatDescription *a1)
{
  if (CMFormatDescriptionGetMediaSubType(a1) != 1835360888)
  {
    return 0;
  }

  CMMetadataFormatDescriptionGetIdentifiers(a1);
  if (FigCFArrayContainsValue())
  {
    return 1;
  }

  if (FigCFArrayContainsValue())
  {
    return 1;
  }

  if (FigCFArrayContainsValue())
  {
    return 1;
  }

  result = FigCFArrayContainsValue();
  if (result)
  {
    return 1;
  }

  return result;
}

uint64_t fpfsi_TotalBytesInBuffer(uint64_t *a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v1 = *a1;
  for (i = 0; v1; v1 = *(v1 + 24))
  {
    v3 = *(v1 + 96);
    if (v3)
    {
      i += CMBufferQueueGetTotalSize(v3);
      CMBaseObjectGetDerivedStorage();
      if (dword_1EAF169F0 >= 0xA)
      {
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }
    }
  }

  if (dword_1EAF169F0 >= 5)
  {
    v5 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  return i;
}

CMTime *fpfsi_FindEarliestVideoGOPEndInTrackList@<X0>(CMTime *result@<X0>, CMTime *a2@<X8>)
{
  *a2 = **&MEMORY[0x1E6960C70];
  for (i = result->value; i; i = *(i + 24))
  {
    if (*(i + 48) == 1986618469 && (*(i + 524) & 1) != 0 && (*(i + 548) & 1) != 0 && !*(i + 552) && (*(i + 536) & 0x8000000000000000) == 0)
    {
      v4 = *(i + 528);
      *&v6.start.value = *(i + 512);
      *&v6.start.epoch = v4;
      *&v6.duration.timescale = *(i + 544);
      CMTimeRangeGetEnd(&time1, &v6);
      *&v6.start.value = *&a2->value;
      v6.start.epoch = a2->epoch;
      result = CMTimeCompare(&time1, &v6.start);
      if ((result & 0x80000000) != 0)
      {
        v5 = *(i + 528);
        *&v6.start.value = *(i + 512);
        *&v6.start.epoch = v5;
        *&v6.duration.timescale = *(i + 544);
        result = CMTimeRangeGetEnd(a2, &v6);
      }
    }
  }

  return result;
}

opaqueCMSampleBuffer *fpfsi_ReleaseCachedSamplesFromTrack(uint64_t a1, opaqueCMBufferQueue *a2, CMTime *a3, int a4)
{
  CMBaseObjectGetDerivedStorage();
  while (1)
  {
    result = CMBufferQueueGetHead(*(a1 + 96));
    if (!result)
    {
      break;
    }

    memset(&v12, 0, sizeof(v12));
    CMSampleBufferGetOutputPresentationTimeStamp(&v12, result);
    if (a4)
    {
      if (v12.flags)
      {
        time1 = v12;
        v10 = *a3;
        result = CMTimeCompare(&time1, &v10);
        if (result <= 0)
        {
          return result;
        }
      }
    }

    else if (v12.flags)
    {
      time1 = v12;
      v10 = *a3;
      result = CMTimeCompare(&time1, &v10);
      if ((result & 0x80000000) == 0)
      {
        return result;
      }
    }

    v9 = CMBufferQueueDequeueAndRetain(*(a1 + 96));
    if (a2)
    {
      CMBufferQueueEnqueue(a2, v9);
    }

    if (v9)
    {
      CFRelease(v9);
    }
  }

  return result;
}

uint64_t fpfs_FindVideoGOPRangeInBufferQueue(opaqueCMSampleBuffer *a1, uint64_t a2)
{
  memset(&v10, 0, sizeof(v10));
  CMSampleBufferGetOutputPresentationTimeStamp(&v10, a1);
  if (fpfs_IsMarkerOnly(a1))
  {
    return 0;
  }

  if (fpfs_IsVideoSync(a1) && (*(a2 + 12) & 1) != 0 && (*(a2 + 36) & 1) != 0 && !*(a2 + 40) && (*(a2 + 24) & 0x8000000000000000) == 0 && (v8.start = v10, start = *a2, CMTimeCompare(&v8.start, &start) >= 1))
  {
    start = *a2;
    v7 = v10;
    CMTimeRangeFromTimeToTime(&v8, &start, &v7);
    v6 = *&v8.start.epoch;
    *a2 = *&v8.start.value;
    *(a2 + 16) = v6;
    *(a2 + 32) = *&v8.duration.timescale;
    return 0xFFFFFFFFLL;
  }

  else
  {
    if ((*(a2 + 12) & 1) != 0 && (*(a2 + 36) & 1) != 0 && !*(a2 + 40) && (*(a2 + 24) & 0x8000000000000000) == 0)
    {
      return 0;
    }

    start = v10;
    v7 = **&MEMORY[0x1E6960C68];
    CMTimeRangeMake(&v8, &start, &v7);
    result = 0;
    v5 = *&v8.start.epoch;
    *a2 = *&v8.start.value;
    *(a2 + 16) = v5;
    *(a2 + 32) = *&v8.duration.timescale;
  }

  return result;
}

uint64_t fpfsi_AddDateToQueue(uint64_t a1, const void *a2, uint64_t a3, __int128 *a4, __int128 *a5, uint64_t a6, uint64_t a7, void *a8, char a9)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v17 = DerivedStorage;
  if (a8)
  {
    v18 = a8;
  }

  else
  {
    v18 = (DerivedStorage + 1592);
  }

  do
  {
    v18 = *v18;
    if (!v18)
    {
      v21 = malloc_type_calloc(1uLL, 0x80uLL, 0x10E0040A18345ADuLL);
      if (!v21)
      {
        goto LABEL_17;
      }

      v18 = v21;
      *v21 = 0;
      v22 = *(v17 + 1600);
      v21[1] = v22;
      *v22 = v21;
      *(v17 + 1600) = v21;
LABEL_11:
      v18[2] = CFRetain(a2);
      v23 = *(a3 + 16);
      *(v18 + 3) = *a3;
      v18[5] = v23;
LABEL_12:
      v24 = *a4;
      v18[8] = *(a4 + 2);
      *(v18 + 3) = v24;
      v25 = *a5;
      v18[11] = *(a5 + 2);
      *(v18 + 9) = v25;
      v26 = *(a6 + 16);
      *(v18 + 6) = *a6;
      v18[14] = v26;
      v18[15] = a7;
      if (!a8)
      {
        return 0;
      }

LABEL_13:
      result = 0;
      *a8 = v18;
      return result;
    }

    time1 = *(v18 + 1);
    v28 = *a3;
  }

  while (CMTimeCompare(&time1, &v28) < 0);
  time1 = *(v18 + 1);
  v28 = *a3;
  if (!CMTimeCompare(&time1, &v28))
  {
    if (!a9)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  v19 = malloc_type_calloc(1uLL, 0x80uLL, 0x10E0040A18345ADuLL);
  if (v19)
  {
    v20 = v18[1];
    *v19 = v18;
    v19[1] = v20;
    *v20 = v19;
    v18[1] = v19;
    v18 = v19;
    goto LABEL_11;
  }

LABEL_17:
  fpfsi_AddDateToQueue_cold_1(&time1);
  return LODWORD(time1.value);
}

void fpfsi_setTimePitchAlgorithm(uint64_t a1, const void *a2)
{
  v14 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a2 && (v6 = DerivedStorage, TypeID = CFStringGetTypeID(), TypeID == CFGetTypeID(a2)))
  {
    if (CFEqual(a2, @"TimeDomain") || CFEqual(a2, @"Spectral") || CFEqual(a2, @"LowQualityZeroLatency") || CFEqual(a2, @"Varispeed"))
    {
      if (!CFEqual(a2, *(v6 + 856)))
      {
        v8 = CMBaseObjectGetDerivedStorage();
        v9 = *(v6 + 856);
        *(v6 + 856) = a2;
        CFRetain(a2);
        if (v9)
        {
          CFRelease(v9);
        }

        if (*(v8 + 80) == a1)
        {
          if (dword_1EAF169F0)
          {
            os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
            fig_log_call_emit_and_clean_up_after_send_and_compose();
          }

          fpfs_stopResetDisturbReprepareAndResume(*v6, a1, 0);
        }
      }

      return;
    }

    v11 = qword_1EAF169E8;
    v12 = v2;
    v13 = 64145;
  }

  else
  {
    v11 = qword_1EAF169E8;
    v12 = v2;
    v13 = 64150;
  }

  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v11, 4294954516, "<<<< FigStreamPlayer >>>>", v13, v12);
}

double fpfsi_PrepareTrackForReplay(uint64_t a1, __int128 *a2, uint64_t a3)
{
  memset(v13, 0, sizeof(v13));
  refcon = a1;
  v11 = *a2;
  v12 = *(a2 + 2);
  if (*(a1 + 436))
  {
    v8 = *a2;
    fpfs_DecodeTimeForAudioRandomAccessInBufferQueue(a1, &v8, &rhs);
    v8 = *a2;
    CMTimeSubtract(v13, &v8, &rhs);
  }

  else
  {
    *v13 = *(a1 + 412);
    *&v13[16] = *(a1 + 428);
  }

  *&v13[24] = *(a1 + 232);
  v6 = *(a1 + 88);
  *&v13[40] = *(a1 + 248);
  *&v13[48] = v6;
  v13[56] = *(a1 + 48) == 1986618469;
  *&v13[60] = *MEMORY[0x1E6960C80];
  *&v13[76] = *(MEMORY[0x1E6960C80] + 16);
  v13[57] = 0;
  CMBufferQueueReset(v6);
  CMBufferQueueCallForEachBuffer(*(a1 + 96), fpfsi_ReuseSamplesInQueue, &refcon);
  result = *&v13[60];
  *a3 = *&v13[60];
  *(a3 + 16) = *&v13[76];
  return result;
}

void fpfs_PreallocateVideoRendering(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v3 = CMBaseObjectGetDerivedStorage();
  if (!*(DerivedStorage + 2904))
  {
    v4 = v3;
    v5 = *(DerivedStorage + 832);
    if (v5 && *v5 == 1)
    {
      fpfsi_ClearCachedVideoRenderChains(*(a1 + 16));
    }

    if (fpfs_CanRenderVideo(v4, *(a1 + 16)))
    {
      if (*(v4 + 672) <= 3)
      {
        fpfs_PreallocateVideoRendering_cold_1(DerivedStorage);
      }
    }
  }
}

BOOL fpfs_WantMATAtmosForTrack(uint64_t a1)
{
  CMBaseObjectGetDerivedStorage();
  v2 = *(a1 + 56);
  MediaSubType = CMFormatDescriptionGetMediaSubType(v2);
  result = 0;
  if (MediaSubType <= 1885692722)
  {
    if (MediaSubType > 1700997938)
    {
      if (MediaSubType == 1700997939)
      {
        return *(CMBaseObjectGetDerivedStorage() + 568) != 0;
      }

      if (MediaSubType != 1700998451)
      {
        v5 = 1885547315;
        goto LABEL_16;
      }

LABEL_18:
      sizeOut = 0;
      FormatList = CMAudioFormatDescriptionGetFormatList(v2, &sizeOut);
      if (!FormatList || sizeOut <= 0x2F)
      {
        return 0;
      }

      mFormatID = FormatList->mASBD.mFormatID;
      if (mFormatID <= 1885547314)
      {
        v9 = mFormatID == 1667574579;
        v10 = 1700997939;
      }

      else
      {
        v9 = mFormatID == 1885547315 || mFormatID == 1902324531;
        v10 = 2053319475;
      }

      if (!v9 && mFormatID != v10)
      {
        return 0;
      }

      return *(CMBaseObjectGetDerivedStorage() + 568) != 0;
    }

    if (MediaSubType == 1667574579)
    {
      return *(CMBaseObjectGetDerivedStorage() + 568) != 0;
    }

    v6 = 1667575091;
LABEL_12:
    if (MediaSubType != v6)
    {
      return result;
    }

    goto LABEL_18;
  }

  if (MediaSubType > 1902469938)
  {
    if (MediaSubType == 2053464883)
    {
      goto LABEL_18;
    }

    if (MediaSubType == 2053319475)
    {
      return *(CMBaseObjectGetDerivedStorage() + 568) != 0;
    }

    v6 = 1902469939;
    goto LABEL_12;
  }

  if (MediaSubType == 1885692723)
  {
    goto LABEL_18;
  }

  v5 = 1902324531;
LABEL_16:
  if (MediaSubType == v5)
  {
    return *(CMBaseObjectGetDerivedStorage() + 568) != 0;
  }

  return result;
}

uint64_t fpfs_ShouldTryToGrabHDRPlaybackBaton(uint64_t a1, uint64_t a2)
{
  result = CelestialShouldLimitHDRConcurrentPlayback();
  if (result)
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    if (*(DerivedStorage + 108) == 0.0)
    {
      return 0;
    }

    result = fpfs_CanRenderVideo(DerivedStorage, 0);
    if (!result)
    {
      return result;
    }

    v5 = CMBaseObjectGetDerivedStorage();
    v6 = CMBaseObjectGetDerivedStorage();
    if (*(v5 + 80) != a2)
    {
      return 0;
    }

    result = *(v6 + 1680);
    if (result)
    {
      if (FigAlternateGetVideoRange(result) >= 2)
      {
        return *(v5 + 856) == 0;
      }

      return 0;
    }
  }

  return result;
}

BOOL fpfs_isPlaybackBeyondReverseEndTime(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v2 = CMBaseObjectGetDerivedStorage();
  memset(&v6, 0, sizeof(v6));
  fpfs_GetNextTimeToPlay(DerivedStorage, 0, &v6);
  if (*(v2 + 108) >= 0.0 || (*(DerivedStorage + 1388) & 0x1D) != 1)
  {
    return 0;
  }

  v4 = v6;
  FPSTimelineConverterL2TimeToL3(&v4, &time1);
  v4 = *(DerivedStorage + 1376);
  return CMTimeCompare(&time1, &v4) < 1;
}

uint64_t fpfsi_PlaybackHasBufferedBeyondTimeToPauseBuffering(uint64_t a1)
{
  result = CMBaseObjectGetDerivedStorage();
  if (result)
  {
    return fpfsi_PlaybackHasBufferedBeyondTime() != 0;
  }

  return result;
}

void fpfs_EnsureEndTimerProcForTrack(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 16);
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  ItemAndTrackNumberPayload = fpfs_CreateItemAndTrackNumberPayload(v3, a1);
  fpfsi_CreateTimebaseTimer(v3, *(DerivedStorage + 600), ItemAndTrackNumberPayload, fpfs_endTimerProc, 0, (a1 + 128));
  if (ItemAndTrackNumberPayload)
  {
    CFRelease(ItemAndTrackNumberPayload);
  }

  if (*(a1 + 128))
  {
    fpfs_scheduleForwardEndTimeForTrack();
    fpfs_unscheduleRanDryTimer(v3, a1);
    if (dword_1EAF169F0)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }
  }

  else
  {
    v6 = qword_1EAF169E8;

    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v6, 4294954434, "<<<< FigStreamPlayer >>>>", 51477, v1);
  }
}

void fpfs_CallDispatchHandlerWithItemAndTrack(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  ItemAndTrackNumberPayload = fpfs_CreateItemAndTrackNumberPayload(a1, a2);
  if (ItemAndTrackNumberPayload)
  {
    v5 = ItemAndTrackNumberPayload;
    a3();

    CFRelease(v5);
  }
}

void fpfs_ranDryTimerProc(const __CFArray *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v179 = *MEMORY[0x1E69E9840];
  v158 = 0;
  cf = 0;
  if (!a1)
  {
    fpfs_ranDryTimerProc_cold_6(0, a2, a3, a4, a5, a6, a7, a8, v129, v131, SHIDWORD(v131), v133);
    goto LABEL_9;
  }

  Count = CFArrayGetCount(a1);
  if (Count != 2)
  {
    fpfs_ranDryTimerProc_cold_1(Count, v10, v11, v12, v13, v14, v15, v16, v129, v131, SHIDWORD(v131), v133);
    goto LABEL_9;
  }

  ValueAtIndex = CFArrayGetValueAtIndex(a1, 0);
  if (!ValueAtIndex)
  {
    fpfs_ranDryTimerProc_cold_5(0, v18, v19, v20, v21, v22, v23, v24, v129, v131, SHIDWORD(v131), v133);
    goto LABEL_9;
  }

  v25 = ValueAtIndex;
  v26 = CFArrayGetValueAtIndex(a1, 1);
  v32 = fpfsi_CopyPlayerAndItemFromItemRetainProxyAndLockPlayer(v25, &v158, &cf, v27, v28, v29, v30, v31, v129, v131, v133, v135, v138, v143, v145, SBYTE2(v145), BYTE3(v145), SHIDWORD(v145), v146, SHIDWORD(v146), *v147, *&v147[4], v150, v152, lhs.value, *&lhs.timescale, lhs.epoch, v154, v155.n128_i16[0], v155.n128_i64[1], v156, valuePtr, v158, cf, rhs.value, *&rhs.timescale, rhs.epoch, v161, *v162, *&v162[8], *&v162[16], *&v162[24], *&v162[32], v163, time2.value, *&time2.timescale, time2.epoch, v165, v166, v167, v168, v169, v170, v171, v172, v173, v174, v175, v176, v177, v178, v179, v180);
  v33 = cf;
  if (!v32)
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    v35 = v158;
    v36 = CMBaseObjectGetDerivedStorage();
    valuePtr = 0;
    CFNumberGetValue(v26, kCFNumberSInt64Type, &valuePtr);
    v37 = *(v36 + 840);
    voucher_adopt();
    if (FigRetainProxyIsInvalidated())
    {
      goto LABEL_6;
    }

    Next = fpfs_getNext(v36, 0);
    v39 = *(DerivedStorage + 1024);
    if (!v39)
    {
      goto LABEL_6;
    }

    while (*(v39 + 32) != valuePtr)
    {
      v39 = *(v39 + 24);
      if (!v39)
      {
        goto LABEL_6;
      }
    }

    if (!Next)
    {
      goto LABEL_6;
    }

    v155 = 0uLL;
    v156 = 0;
    fpfs_GetTime(DerivedStorage, &v155);
    if ((*(v39 + 184) & 1) == 0)
    {
LABEL_23:
      v41 = MEMORY[0x1E6960C70];
      v144 = *MEMORY[0x1E6960C70];
      *(v39 + 172) = *MEMORY[0x1E6960C70];
      v142 = *(v41 + 16);
      *(v39 + 188) = v142;
      if (dword_1EAF169F0)
      {
        LODWORD(lhs.value) = 0;
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        value = lhs.value;
        if (os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT))
        {
          v44 = value;
        }

        else
        {
          v44 = value & 0xFFFFFFFE;
        }

        if (v44)
        {
          if (v35)
          {
            v45 = (CMBaseObjectGetDerivedStorage() + 888);
          }

          else
          {
            v45 = "";
          }

          v139 = v45;
          if (v33)
          {
            v46 = (CMBaseObjectGetDerivedStorage() + 3096);
          }

          else
          {
            v46 = "";
          }

          v136 = v46;
          v47 = *(v39 + 32);
          *&time2.value = v155;
          time2.epoch = v156;
          Seconds = CMTimeGetSeconds(&time2);
          LODWORD(rhs.value) = 136316674;
          *(&rhs.value + 4) = "fpfs_ranDryTimerProc";
          LOWORD(rhs.flags) = 2048;
          *(&rhs.flags + 2) = v35;
          HIWORD(rhs.epoch) = 2082;
          v161 = v139;
          *v162 = 2048;
          *&v162[2] = v33;
          *&v162[10] = 2082;
          *&v162[12] = v136;
          *&v162[20] = 1024;
          *&v162[22] = v47;
          *&v162[26] = 2048;
          *&v162[28] = Seconds;
          LODWORD(v132) = 68;
          _os_log_send_and_compose_impl(v44, 0, &time2, 128, &dword_1962D5000, os_log_and_send_and_compose_flags_and_os_log_type, 0, "<<<< FigStreamPlayer >>>> %s: [%p|%{public}s] <%p|%{public}s>: track %d at %1.5g", &rhs, v132);
        }

        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      v49 = *(v39 + 48);
      v50 = *(CMBaseObjectGetDerivedStorage() + 1024);
      if (!v50)
      {
LABEL_41:
        fpfs_ranDryTimerProc_cold_2();
        goto LABEL_6;
      }

      while (*(v50 + 48) != v49 || !*(v50 + 112))
      {
        v50 = *(v50 + 24);
        if (!v50)
        {
          goto LABEL_41;
        }
      }

      v51 = v50;
      do
      {
        v51 = *(v51 + 24);
      }

      while (v51 && *(v51 + 48) != v49);
      if (*(v39 + 32) > *(v50 + 32))
      {
        if (dword_1EAF169F0)
        {
          LODWORD(lhs.value) = 0;
          v52 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          v53 = lhs.value;
          if (os_log_type_enabled(v52, OS_LOG_TYPE_DEFAULT))
          {
            v54 = v53;
          }

          else
          {
            v54 = v53 & 0xFFFFFFFE;
          }

          if (v54)
          {
            if (v35)
            {
              v55 = (CMBaseObjectGetDerivedStorage() + 888);
            }

            else
            {
              v55 = "";
            }

            if (v33)
            {
              v67 = (CMBaseObjectGetDerivedStorage() + 3096);
            }

            else
            {
              v67 = "";
            }

            v68 = *(v39 + 32);
            LODWORD(rhs.value) = 136316418;
            *(&rhs.value + 4) = "fpfs_ranDryTimerProc";
            LOWORD(rhs.flags) = 2048;
            *(&rhs.flags + 2) = v35;
            HIWORD(rhs.epoch) = 2082;
            v161 = v55;
            *v162 = 2048;
            *&v162[2] = v33;
            *&v162[10] = 2082;
            *&v162[12] = v67;
            *&v162[20] = 2048;
            *&v162[22] = v68;
            LODWORD(v132) = 62;
            _os_log_send_and_compose_impl(v54, 0, &time2, 128, &dword_1962D5000, v52, 0, "<<<< FigStreamPlayer >>>> %s: [%p|%{public}s] <%p|%{public}s>: track %ld case 3 - do nothing", &rhs, v132);
          }

LABEL_115:
          fig_log_call_emit_and_clean_up_after_send_and_compose();
          goto LABEL_6;
        }

        goto LABEL_6;
      }

      v56 = v39 == v50 && v51 == 0;
      v57 = !v56;
      if (v56)
      {
        if (*(v39 + 198))
        {
          if (dword_1EAF169F0)
          {
            LODWORD(lhs.value) = 0;
            v59 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            v60 = lhs.value;
            if (os_log_type_enabled(v59, OS_LOG_TYPE_DEFAULT))
            {
              v61 = v60;
            }

            else
            {
              v61 = v60 & 0xFFFFFFFE;
            }

            if (v61)
            {
              if (v35)
              {
                v62 = (CMBaseObjectGetDerivedStorage() + 888);
              }

              else
              {
                v62 = "";
              }

              if (v33)
              {
                v78 = (CMBaseObjectGetDerivedStorage() + 3096);
              }

              else
              {
                v78 = "";
              }

              v79 = *(v39 + 32);
              LODWORD(rhs.value) = 136316418;
              *(&rhs.value + 4) = "fpfs_ranDryTimerProc";
              LOWORD(rhs.flags) = 2048;
              *(&rhs.flags + 2) = v35;
              HIWORD(rhs.epoch) = 2082;
              v161 = v62;
              *v162 = 2048;
              *&v162[2] = v33;
              *&v162[10] = 2082;
              *&v162[12] = v78;
              *&v162[20] = 2048;
              *&v162[22] = v79;
              LODWORD(v132) = 62;
              _os_log_send_and_compose_impl(v61, 0, &time2, 128, &dword_1962D5000, v59, 0, "<<<< FigStreamPlayer >>>> %s: [%p|%{public}s] <%p|%{public}s>: track %ld case 2 - do nothing", &rhs, v132);
            }

            goto LABEL_115;
          }

          goto LABEL_6;
        }

        if (*(v39 + 64) == *(DerivedStorage + 16 * *(v39 + 196) + 976))
        {
          if (*(v39 + 168) != 6)
          {
            if (dword_1EAF169F0)
            {
              LODWORD(lhs.value) = 0;
              v80 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
              v81 = lhs.value;
              if (os_log_type_enabled(v80, OS_LOG_TYPE_DEFAULT))
              {
                v82 = v81;
              }

              else
              {
                v82 = v81 & 0xFFFFFFFE;
              }

              if (v82)
              {
                if (v35)
                {
                  v83 = (CMBaseObjectGetDerivedStorage() + 888);
                }

                else
                {
                  v83 = "";
                }

                if (v33)
                {
                  v102 = (CMBaseObjectGetDerivedStorage() + 3096);
                }

                else
                {
                  v102 = "";
                }

                v122 = *(v39 + 32);
                LODWORD(rhs.value) = 136316418;
                *(&rhs.value + 4) = "fpfs_ranDryTimerProc";
                LOWORD(rhs.flags) = 2048;
                *(&rhs.flags + 2) = v35;
                HIWORD(rhs.epoch) = 2082;
                v161 = v83;
                *v162 = 2048;
                *&v162[2] = v33;
                *&v162[10] = 2082;
                *&v162[12] = v102;
                *&v162[20] = 2048;
                *&v162[22] = v122;
                LODWORD(v132) = 62;
                _os_log_send_and_compose_impl(v82, 0, &time2, 128, &dword_1962D5000, v80, 0, "<<<< FigStreamPlayer >>>> %s: [%p|%{public}s] <%p|%{public}s>: track %ld is not playing - maybe new track ?", &rhs, v132);
              }

              goto LABEL_115;
            }

            goto LABEL_6;
          }

          if (dword_1EAF169F0)
          {
            v148 = v57;
            LODWORD(lhs.value) = 0;
            v73 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            v74 = lhs.value;
            v75 = v73;
            if (os_log_type_enabled(v73, OS_LOG_TYPE_DEFAULT))
            {
              v76 = v74;
            }

            else
            {
              v76 = v74 & 0xFFFFFFFE;
            }

            if (v76)
            {
              if (v35)
              {
                v77 = (CMBaseObjectGetDerivedStorage() + 888);
              }

              else
              {
                v77 = "";
              }

              if (v33)
              {
                v101 = (CMBaseObjectGetDerivedStorage() + 3096);
              }

              else
              {
                v101 = "";
              }

              v103 = *(v39 + 32);
              LODWORD(rhs.value) = 136316418;
              *(&rhs.value + 4) = "fpfs_ranDryTimerProc";
              LOWORD(rhs.flags) = 2048;
              *(&rhs.flags + 2) = v35;
              HIWORD(rhs.epoch) = 2082;
              v161 = v77;
              *v162 = 2048;
              *&v162[2] = v33;
              *&v162[10] = 2082;
              *&v162[12] = v101;
              *&v162[20] = 2048;
              *&v162[22] = v103;
              LODWORD(v132) = 62;
              _os_log_send_and_compose_impl(v76, 0, &time2, 128, &dword_1962D5000, v75, 0, "<<<< FigStreamPlayer >>>> %s: [%p|%{public}s] <%p|%{public}s>: track %ld case 1 - maybe stop", &rhs, v132);
            }

            v141 = 1;
            fig_log_call_emit_and_clean_up_after_send_and_compose();
            goto LABEL_176;
          }

          v94 = 1;
LABEL_165:
          v141 = v94;
          goto LABEL_177;
        }

        if (dword_1EAF169F0)
        {
          LODWORD(lhs.value) = 0;
          v63 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          v64 = lhs.value;
          if (os_log_type_enabled(v63, OS_LOG_TYPE_DEFAULT))
          {
            v65 = v64;
          }

          else
          {
            v65 = v64 & 0xFFFFFFFE;
          }

          if (v65)
          {
            if (v35)
            {
              v66 = (CMBaseObjectGetDerivedStorage() + 888);
            }

            else
            {
              v66 = "";
            }

            if (v33)
            {
              v95 = (CMBaseObjectGetDerivedStorage() + 3096);
            }

            else
            {
              v95 = "";
            }

            v96 = *(v39 + 32);
            LODWORD(rhs.value) = 136316418;
            *(&rhs.value + 4) = "fpfs_ranDryTimerProc";
            LOWORD(rhs.flags) = 2048;
            *(&rhs.flags + 2) = v35;
            HIWORD(rhs.epoch) = 2082;
            v161 = v66;
            *v162 = 2048;
            *&v162[2] = v33;
            *&v162[10] = 2082;
            *&v162[12] = v95;
            *&v162[20] = 2048;
            *&v162[22] = v96;
            LODWORD(v132) = 62;
            _os_log_send_and_compose_impl(v65, 0, &time2, 128, &dword_1962D5000, v63, 0, "<<<< FigStreamPlayer >>>> %s: [%p|%{public}s] <%p|%{public}s>: track %ld case 6 - stop feeding", &rhs, v132);
          }

          goto LABEL_162;
        }
      }

      else
      {
        if (v39 != v50)
        {
          goto LABEL_6;
        }

        if (v51)
        {
          v58 = *(v51 + 168) == 1;
        }

        else
        {
          v58 = 0;
        }

        v148 = v57;
        if (dword_1EAF169F0)
        {
          v140 = v58;
          LODWORD(lhs.value) = 0;
          v69 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          v70 = lhs.value;
          if (os_log_type_enabled(v69, OS_LOG_TYPE_DEFAULT))
          {
            v71 = v70;
          }

          else
          {
            v71 = v70 & 0xFFFFFFFE;
          }

          if (v71)
          {
            if (v35)
            {
              v72 = (CMBaseObjectGetDerivedStorage() + 888);
            }

            else
            {
              v72 = "";
            }

            if (v33)
            {
              v84 = (CMBaseObjectGetDerivedStorage() + 3096);
            }

            else
            {
              v84 = "";
            }

            if (v51)
            {
              v85 = *(v51 + 32);
            }

            else
            {
              v85 = -1;
            }

            LODWORD(rhs.value) = 136316674;
            *(&rhs.value + 4) = "fpfs_ranDryTimerProc";
            LOWORD(rhs.flags) = 2048;
            *(&rhs.flags + 2) = v35;
            HIWORD(rhs.epoch) = 2082;
            v161 = v72;
            *v162 = 2048;
            *&v162[2] = v33;
            *&v162[10] = 2082;
            *&v162[12] = v84;
            *&v162[20] = 2048;
            *&v162[22] = v85;
            *&v162[30] = 1024;
            *&v162[32] = v140;
            LODWORD(v132) = 68;
            _os_log_send_and_compose_impl(v71, 0, &time2, 128, &dword_1962D5000, v69, 0, "<<<< FigStreamPlayer >>>> %s: [%p|%{public}s] <%p|%{public}s>: syncing track %ld? %d", &rhs, v132);
          }

          fig_log_call_emit_and_clean_up_after_send_and_compose();
          v57 = v148;
          v58 = v140;
        }

        if (v58)
        {
          if (dword_1EAF169F0)
          {
            LODWORD(lhs.value) = 0;
            v86 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            v87 = lhs.value;
            if (os_log_type_enabled(v86, OS_LOG_TYPE_DEFAULT))
            {
              v88 = v87;
            }

            else
            {
              v88 = v87 & 0xFFFFFFFE;
            }

            if (v88)
            {
              if (v35)
              {
                v89 = (CMBaseObjectGetDerivedStorage() + 888);
              }

              else
              {
                v89 = "";
              }

              if (v33)
              {
                v97 = (CMBaseObjectGetDerivedStorage() + 3096);
              }

              else
              {
                v97 = "";
              }

              v99 = *(v39 + 32);
              LODWORD(rhs.value) = 136316418;
              *(&rhs.value + 4) = "fpfs_ranDryTimerProc";
              LOWORD(rhs.flags) = 2048;
              *(&rhs.flags + 2) = v35;
              HIWORD(rhs.epoch) = 2082;
              v161 = v89;
              *v162 = 2048;
              *&v162[2] = v33;
              *&v162[10] = 2082;
              *&v162[12] = v97;
              *&v162[20] = 2048;
              *&v162[22] = v99;
              LODWORD(v132) = 62;
              _os_log_send_and_compose_impl(v88, 0, &time2, 128, &dword_1962D5000, v86, 0, "<<<< FigStreamPlayer >>>> %s: [%p|%{public}s] <%p|%{public}s>: track %ld case 5 - maybe stop, maybe abandon", &rhs, v132);
            }

            fig_log_call_emit_and_clean_up_after_send_and_compose();
            v141 = 2;
LABEL_176:
            v57 = v148;
LABEL_177:
            *&time2.value = v155;
            time2.epoch = v156;
            if (fpfs_TrackIsStalled(v39, &time2))
            {
              v104 = *(v39 + 32);
              if (dword_1EAF169F0)
              {
                v137 = *(v39 + 32);
                v149 = v57;
                LODWORD(lhs.value) = 0;
                v105 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
                v106 = lhs.value;
                if (os_log_type_enabled(v105, OS_LOG_TYPE_DEFAULT))
                {
                  v107 = v106;
                }

                else
                {
                  v107 = v106 & 0xFFFFFFFE;
                }

                if (v107)
                {
                  if (v35)
                  {
                    v108 = (CMBaseObjectGetDerivedStorage() + 888);
                  }

                  else
                  {
                    v108 = "";
                  }

                  if (v33)
                  {
                    v109 = (CMBaseObjectGetDerivedStorage() + 3096);
                  }

                  else
                  {
                    v109 = "";
                  }

                  v110 = *(v39 + 32);
                  LODWORD(rhs.value) = 136316418;
                  *(&rhs.value + 4) = "fpfs_ranDryTimerProc";
                  LOWORD(rhs.flags) = 2048;
                  *(&rhs.flags + 2) = v35;
                  HIWORD(rhs.epoch) = 2082;
                  v161 = v108;
                  *v162 = 2048;
                  *&v162[2] = v33;
                  *&v162[10] = 2082;
                  *&v162[12] = v109;
                  *&v162[20] = 2048;
                  *&v162[22] = v110;
                  LODWORD(v132) = 62;
                  _os_log_send_and_compose_impl(v107, 0, &time2, 128, &dword_1962D5000, v105, 0, "<<<< FigStreamPlayer >>>> %s: [%p|%{public}s] <%p|%{public}s>: called for track %ld, pausing playback", &rhs, v132);
                }

                fig_log_call_emit_and_clean_up_after_send_and_compose();
                v57 = v149;
                v104 = v137;
              }

              if (!fpfs_StopPlaybackByStalledTrack(v39, v141))
              {
                v111 = CMBaseObjectGetDerivedStorage();
                if (!v111 || fpfs_GetItemLivingTrack(v111, v104, &time2) || (FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v130, v132, v134), !v112))
                {
                  if (*(v39 + 64) == *(DerivedStorage + 16 * *(v39 + 196) + 976))
                  {
                    v113 = 1;
                  }

                  else
                  {
                    v113 = v57;
                  }

                  if ((v113 & 1) == 0)
                  {
                    fpfs_StopFeedingTrack(v39, 0, 1);
                  }

                  if (v57)
                  {
                    valuePtr = *(v51 + 32);
                    if (*(v39 + 48) != 1936684398)
                    {
                      goto LABEL_227;
                    }

                    fpfs_GetStartupDurationOfType(v51, &time2);
                    v114 = (1 << *(v51 + 196));
                    *&rhs.value = v155;
                    rhs.epoch = v156;
                    if (!fpfs_CheckCanKeepUp(v33, &time2, &rhs, v114, 0, 0, 0, 0))
                    {
                      goto LABEL_227;
                    }

                    v115 = *(DerivedStorage + 1024);
                    if (!v115)
                    {
                      goto LABEL_227;
                    }

                    while (*(v115 + 32) != valuePtr)
                    {
                      v115 = *(v115 + 24);
                      if (!v115)
                      {
                        goto LABEL_227;
                      }
                    }

                    memset(&lhs, 0, sizeof(lhs));
                    v123 = *(v115 + 88);
                    if (v123)
                    {
                      CMBufferQueueGetMinPresentationTimeStamp(&lhs, v123);
                    }

                    else
                    {
                      *&lhs.value = v144;
                      lhs.epoch = v142;
                    }

                    if ((lhs.flags & 1) != 0 && (*&time2.value = v155, time2.epoch = v156, rhs = lhs, (CMTimeCompare(&time2, &rhs) & 0x80000000) == 0))
                    {
                      if (dword_1EAF169F0)
                      {
                        v151 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
                        os_log_type_enabled(v151, OS_LOG_TYPE_DEFAULT);
                        fig_log_call_emit_and_clean_up_after_send_and_compose();
                      }

                      if (*(v115 + 48) == 1936684398)
                      {
                        fpfs_ForceAudioSync(v115, v124);
                      }

                      v125 = 1;
                    }

                    else
                    {
LABEL_227:
                      v125 = 0;
                    }

                    if (!FigRetainProxyIsInvalidated())
                    {
                      if ((v125 & 1) == 0)
                      {
                        v126 = *(DerivedStorage + 1024);
                        if (v126)
                        {
                          while (*(v126 + 32) != valuePtr)
                          {
                            v126 = *(v126 + 24);
                            if (!v126)
                            {
                              goto LABEL_239;
                            }
                          }

                          v127 = *(DerivedStorage + 1744);
                          if (v127 && *(DerivedStorage + 1680) && (PeakBitRate = FigAlternateGetPeakBitRate(v127), PeakBitRate > FigAlternateGetPeakBitRate(*(DerivedStorage + 1680))))
                          {
                            fpfs_CancelTrialSwitch(v33);
                          }

                          else
                          {
                            fpfs_AbandonSyncAttempt(v126);
                          }
                        }
                      }

LABEL_239:
                      fpfs_CheckPrebufferedLevels();
                    }

                    goto LABEL_6;
                  }

                  v116 = *(DerivedStorage + 1680);
                  if (!v116 || !FigAlternateIsIFrameOnly(v116))
                  {
                    *(DerivedStorage + 2832) = 1;
                    LODWORD(lhs.value) = 0;
                    v117 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
                    v118 = lhs.value;
                    if (os_log_type_enabled(v117, OS_LOG_TYPE_DEFAULT))
                    {
                      v119 = v118;
                    }

                    else
                    {
                      v119 = v118 & 0xFFFFFFFE;
                    }

                    if (v119)
                    {
                      if (v33)
                      {
                        v120 = (CMBaseObjectGetDerivedStorage() + 3096);
                      }

                      else
                      {
                        v120 = "";
                      }

                      v121 = *(DerivedStorage + 1680);
                      LODWORD(rhs.value) = 136315906;
                      *(&rhs.value + 4) = "fpfs_ranDryTimerProc";
                      LOWORD(rhs.flags) = 2048;
                      *(&rhs.flags + 2) = v33;
                      HIWORD(rhs.epoch) = 2082;
                      v161 = v120;
                      *v162 = 2112;
                      *&v162[2] = v121;
                      LODWORD(v132) = 42;
                      _os_log_send_and_compose_impl(v119, 0, &time2, 128, &dword_1962D5000, v117, 0, "<<<< FigStreamPlayer >>>> %s: <%p|%{public}s> Playback stalled for alternate: [%@]", &rhs, v132);
                    }

                    goto LABEL_115;
                  }
                }
              }
            }

LABEL_6:

            fpfs_UnlockAndPostNotificationsWithCaller(v35);
            goto LABEL_7;
          }

          v94 = 2;
          goto LABEL_165;
        }

        if (dword_1EAF169F0)
        {
          LODWORD(lhs.value) = 0;
          v90 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          v91 = lhs.value;
          if (os_log_type_enabled(v90, OS_LOG_TYPE_DEFAULT))
          {
            v92 = v91;
          }

          else
          {
            v92 = v91 & 0xFFFFFFFE;
          }

          if (v92)
          {
            if (v35)
            {
              v93 = (CMBaseObjectGetDerivedStorage() + 888);
            }

            else
            {
              v93 = "";
            }

            if (v33)
            {
              v98 = (CMBaseObjectGetDerivedStorage() + 3096);
            }

            else
            {
              v98 = "";
            }

            v100 = *(v39 + 32);
            LODWORD(rhs.value) = 136316418;
            *(&rhs.value + 4) = "fpfs_ranDryTimerProc";
            LOWORD(rhs.flags) = 2048;
            *(&rhs.flags + 2) = v35;
            HIWORD(rhs.epoch) = 2082;
            v161 = v93;
            *v162 = 2048;
            *&v162[2] = v33;
            *&v162[10] = 2082;
            *&v162[12] = v98;
            *&v162[20] = 2048;
            *&v162[22] = v100;
            LODWORD(v132) = 62;
            _os_log_send_and_compose_impl(v92, 0, &time2, 128, &dword_1962D5000, v90, 0, "<<<< FigStreamPlayer >>>> %s: [%p|%{public}s] <%p|%{public}s>: track %ld case 4 - stop feeding", &rhs, v132);
          }

LABEL_162:
          fig_log_call_emit_and_clean_up_after_send_and_compose();
        }
      }

      fpfs_StopFeedingTrack(v39, 0, 1);
      goto LABEL_6;
    }

    v40 = *(v36 + 108);
    if (v40 >= 0.0)
    {
      CMTimeMake(&rhs, 1, 100);
      *&lhs.value = v155;
      lhs.epoch = v156;
      CMTimeAdd(&time2, &lhs, &rhs);
      rhs = *(v39 + 172);
      if (CMTimeCompare(&rhs, &time2) >= 1)
      {
        goto LABEL_106;
      }

      v40 = *(v36 + 108);
    }

    if (v40 >= 0.0)
    {
      goto LABEL_23;
    }

    CMTimeMake(&rhs, 1, 100);
    *&lhs.value = v155;
    lhs.epoch = v156;
    CMTimeSubtract(&time2, &lhs, &rhs);
    rhs = *(v39 + 172);
    if ((CMTimeCompare(&rhs, &time2) & 0x80000000) == 0)
    {
      goto LABEL_23;
    }

LABEL_106:
    fpfs_ranDryTimerProc_cold_3();
    goto LABEL_6;
  }

LABEL_7:
  if (v33)
  {
    CFRelease(v33);
  }

LABEL_9:
  if (v158)
  {
    CFRelease(v158);
  }
}

void fpfs_endTimerProc(const __CFArray *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v68 = *MEMORY[0x1E69E9840];
  v44 = 0;
  cf = 0;
  if (!a1)
  {
    fpfs_endTimerProc_cold_4(0, a2, a3, a4, a5, a6, a7, a8, v32, v33, SHIDWORD(v33), v34);
    goto LABEL_23;
  }

  Count = CFArrayGetCount(a1);
  if (Count != 2)
  {
    fpfs_endTimerProc_cold_1(Count, v10, v11, v12, v13, v14, v15, v16, v32, v33, SHIDWORD(v33), v34);
    goto LABEL_23;
  }

  valuePtr = 0;
  ValueAtIndex = CFArrayGetValueAtIndex(a1, 1);
  CFNumberGetValue(ValueAtIndex, kCFNumberSInt64Type, &valuePtr);
  v18 = CFArrayGetValueAtIndex(a1, 0);
  if (!v18)
  {
    fpfs_endTimerProc_cold_3();
    goto LABEL_23;
  }

  v24 = fpfsi_CopyPlayerAndItemFromItemRetainProxyAndLockPlayer(v18, &v44, &cf, v19, v20, v21, v22, v23, v32, v33, v34, v35, v36, v38, v39.n128_i16[0], v39.n128_i8[2], v39.n128_u8[3], v39.n128_i32[1], v39.n128_i32[2], v39.n128_i32[3], v40, SWORD2(v40), v41.n128_i64[0], v41.n128_i64[1], v42, valuePtr, v44, cf, time2.value, *&time2.timescale, time2.epoch, v47, v48, v49, *&v50[1], *&v50[3], v51, v52[0], v52[1], v52[2], v52[3], v52[4], time.value, *&time.timescale, time.epoch, v54, v55, v56, v57, v58, v59, v60, v61, v62, v63, v64, v65, v66, v67, v68, v69, v70, v71);
  v25 = cf;
  if (!v24)
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    v27 = v44;
    v28 = CMBaseObjectGetDerivedStorage();
    *(DerivedStorage + 529) = 1;
    v29 = *(v28 + 840);
    voucher_adopt();
    if (FigRetainProxyIsInvalidated())
    {
LABEL_20:
      *(DerivedStorage + 529) = 0;

      fpfs_UnlockAndPostNotificationsWithCaller(v27);
      goto LABEL_21;
    }

    v30 = *(DerivedStorage + 1024);
    if (!v30)
    {
LABEL_19:
      fpfs_endEndedTracks(DerivedStorage);
      goto LABEL_20;
    }

    while (*(v30 + 32) != valuePtr)
    {
      v30 = *(v30 + 24);
      if (!v30)
      {
        goto LABEL_19;
      }
    }

    v41 = 0uLL;
    v42 = 0;
    fpfs_GetTime(DerivedStorage, &v41);
    v39 = 0uLL;
    v40 = 0;
    time = *(DerivedStorage + 1352);
    FPSTimelineConverterL3TimeToL2(&time, &v39);
    if (dword_1EAF169F0)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    v31 = *(v28 + 108);
    if (v31 >= 0.0)
    {
      *&time.value = v41;
      time.epoch = v42;
      time2 = *(v30 + 232);
      if ((CMTimeCompare(&time, &time2) & 0x80000000) == 0)
      {
        goto LABEL_18;
      }

      *&time.value = v41;
      time.epoch = v42;
      *&time2.value = v39;
      time2.epoch = v40;
      if ((CMTimeCompare(&time, &time2) & 0x80000000) == 0)
      {
        goto LABEL_18;
      }

      v31 = *(v28 + 108);
    }

    if (v31 >= 0.0 || (*&time.value = v41, time.epoch = v42, time2 = *(v30 + 232), CMTimeCompare(&time, &time2) > 0))
    {
      fpfs_endTimerProc_cold_2(v25, v30);
      goto LABEL_19;
    }

LABEL_18:
    fpfs_EndTrackPlayback(v30);
    goto LABEL_19;
  }

LABEL_21:
  if (v25)
  {
    CFRelease(v25);
  }

LABEL_23:
  if (v44)
  {
    CFRelease(v44);
  }
}

void fpfs_endEndedTracks(void *a1)
{
  v13 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v3 = a1[128];
  if (v3)
  {
    v4 = DerivedStorage;
    do
    {
      v9 = 0uLL;
      v10 = 0;
      fpfs_GetTime(a1, &v9);
      v7 = 0uLL;
      v8 = 0;
      time1 = *(a1 + 169);
      FPSTimelineConverterL3TimeToL2(&time1, &v7);
      if (*(v4 + 108) >= 0.0)
      {
        if (*(v3 + 198) && (*&time1.value = v9, time1.epoch = v10, time2 = *(v3 + 232), (CMTimeCompare(&time1, &time2) & 0x80000000) == 0) || (*&time1.value = v9, time1.epoch = v10, *&time2.value = v7, time2.epoch = v8, (CMTimeCompare(&time1, &time2) & 0x80000000) == 0))
        {
LABEL_10:
          if (dword_1EAF169F0)
          {
            os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
            fig_log_call_emit_and_clean_up_after_send_and_compose();
          }

          fpfs_EndTrackPlayback(v3);
          v5 = a1 + 128;
          goto LABEL_14;
        }
      }

      else if (*(v3 + 198))
      {
        *&time1.value = v9;
        time1.epoch = v10;
        time2 = *(v3 + 232);
        if (CMTimeCompare(&time1, &time2) <= 0)
        {
          goto LABEL_10;
        }
      }

      v5 = (v3 + 24);
LABEL_14:
      v3 = *v5;
    }

    while (*v5);
  }
}

BOOL fpfs_CheckItem(uint64_t a1, CFTypeRef cf)
{
  if (!cf)
  {
    return 0;
  }

  v3 = CFGetTypeID(cf);
  if (v3 == FigPlaybackItemGetTypeID() && (FigPlaybackItemGetFigBaseObject(), CMBaseObjectGetVTable() == &kFigPlaybackItemFigVTable) && *CMBaseObjectGetDerivedStorage() == a1)
  {
    return FigRetainProxyIsInvalidated() == 0;
  }

  else
  {
    return 0;
  }
}

uint64_t fpfsi_Invalidate(const void *a1)
{
  v6 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v3 = *DerivedStorage;
  CMBaseObjectGetDerivedStorage();
  if (dword_1EAF169F0)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (!FigRetainProxyIsInvalidated())
  {
    CFRetain(a1);
    if (FigCFArrayContainsValue())
    {
      fpfs_RemoveFromPrebufferArrayGuts();
    }

    if (*(DerivedStorage + 463))
    {
      fpfs_RemoveFromPlayQueueGuts(v3, a1, 0);
    }

    fpfsi_InvalidateGuts(a1);
    CFRelease(a1);
  }

  return 0;
}

void fpfsi_Finalize(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  fpfsi_InvalidateGuts(a1);
  v3 = DerivedStorage[75];
  if (v3)
  {
    dispatch_release(v3);
    DerivedStorage[75] = 0;
  }

  CMNotificationCenterGetDefaultLocalCenter();
  FigNotificationCenterCheckWeakListenersWereRemovedBeforeFinalization();
  FigRetainProxyRelease();
  DerivedStorage[2] = 0;
  FigSimpleMutexDestroy();
  DerivedStorage[1] = 0;
  FigSimpleMutexDestroy();
  v4 = DerivedStorage[319];
  if (v4)
  {
    CFRelease(v4);
    DerivedStorage[319] = 0;
  }

  v5 = DerivedStorage[302];
  if (v5)
  {
    CFRelease(v5);
    DerivedStorage[302] = 0;
  }

  v6 = DerivedStorage[21];
  if (v6)
  {
    CFRelease(v6);
    DerivedStorage[21] = 0;
  }

  v7 = DerivedStorage[234];
  if (v7)
  {
    CFRelease(v7);
  }

  v8 = DerivedStorage[236];
  if (v8)
  {
    CFRelease(v8);
    DerivedStorage[236] = 0;
  }

  v9 = DerivedStorage[423];
  if (v9)
  {
    CFRelease(v9);
  }

  bzero(DerivedStorage, 0xD90uLL);
}

void fpfsi_CopyProperty(uint64_t a1, const void *a2, const __CFAllocator *a3, CFTypeRef *a4)
{
  v132 = *MEMORY[0x1E69E9840];
  if (a4)
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    v10 = *DerivedStorage;
    if (FigPropertyStorageCopyValue(*(DerivedStorage + 168), a2, a4))
    {
      v11 = CMBaseObjectGetDerivedStorage();
      FigSimpleMutexLock();
      ++*(v11 + 8);
      if (FigRetainProxyIsInvalidated())
      {
        fpfsi_CopyProperty_cold_1(&range);
        goto LABEL_36;
      }

      if (CFEqual(a2, @"SeekableTimeIntervals"))
      {
        v12 = CMBaseObjectGetDerivedStorage();
        if (!*(v12 + 912))
        {
          goto LABEL_36;
        }

        v13 = v12;
        AllocatorForMedia = FigGetAllocatorForMedia();
        Mutable = CFDictionaryCreateMutable(AllocatorForMedia, 5, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
        values = Mutable;
        if (!Mutable)
        {
          fpfsi_CopyProperty_cold_2(&range);
          goto LABEL_36;
        }

        v16 = Mutable;
        memset(&cf[1], 0, 48);
        fpfsi_getPumpAvailableTimeRange(v13, &cf[1]);
        if (v17)
        {
          fpfsi_TotalTimeRangeInBuffer();
          value = range.start.value;
          flags = range.start.flags;
          timescale = range.start.timescale;
          if ((range.start.flags & 1) == 0)
          {
            goto LABEL_34;
          }

          v21 = *&range.duration.timescale;
          if ((range.duration.flags & 1) == 0)
          {
            goto LABEL_34;
          }

          if (range.duration.epoch)
          {
            goto LABEL_34;
          }

          v19 = *&range.start.epoch;
          if (range.duration.value < 0)
          {
            goto LABEL_34;
          }

          v20 = 0;
        }

        else
        {
          value = cf[1];
          flags = HIDWORD(cf[2]);
          timescale = cf[2];
          v19 = *&cf[3];
          v20 = cf[6];
          v21 = cf[5];
        }

        range.start.value = value;
        range.start.timescale = timescale;
        range.start.flags = flags;
        *&range.start.epoch = v19;
        *&range.duration.timescale = v21;
        range.duration.epoch = v20;
        FPSTimelineConverterL2TimeRangeToL3();
        v22 = lhs[0].flags;
        v129 = lhs[0].timescale;
        v128 = lhs[0].value;
        range = *&lhs[0].value;
        epoch = lhs[0].epoch;
        CMTimeRangeGetEnd(lhs, &range);
        rhs.value = lhs[0].value;
        v24 = lhs[0].flags;
        rhs.timescale = lhs[0].timescale;
        v25 = lhs[0].epoch;
        if (v22)
        {
          range.start.value = v128;
          range.start.timescale = v129;
          range.start.flags = v22;
          range.start.epoch = epoch;
          CMTimeGetSeconds(&range.start);
          FigCFDictionarySetDouble();
        }

        if (v24)
        {
          range.start.value = rhs.value;
          range.start.timescale = rhs.timescale;
          range.start.flags = v24;
          range.start.epoch = v25;
          CMTimeGetSeconds(&range.start);
          FigCFDictionarySetDouble();
        }

        range.start.value = v128;
        range.start.timescale = v129;
        range.start.flags = v22;
        range.start.epoch = epoch;
        FigCFDictionarySetCMTime();
        range.start.value = rhs.value;
        range.start.timescale = rhs.timescale;
        range.start.flags = v24;
        range.start.epoch = v25;
        FigCFDictionarySetCMTime();
        if ((*(v13 + 1316) & 0x1D) != 1 && *(v13 + 912))
        {
          cf[0] = 0;
          v26 = FigGetAllocatorForMedia();
          FigBytePumpGetFigBaseObject();
          v28 = v27;
          v29 = *(*(CMBaseObjectGetVTable() + 8) + 48);
          if (v29)
          {
            v29(v28, 0x1F0B1F278, v26, cf);
            v30 = cf[0];
          }

          else
          {
            v30 = 0;
          }

          CMTimeRangeMakeFromDictionary(&range, v30);
          *&lhs[0].value = *&range.start.value;
          *&lhs[0].epoch = *&range.start.epoch;
          v32 = range.duration.flags;
          lhs[1].timescale = range.duration.timescale;
          if ((range.duration.flags & 0x1D) == 1)
          {
            v33 = range.duration.epoch;
            v34 = FigGetAllocatorForMedia();
            range.start.value = lhs[1].value;
            range.start.timescale = lhs[1].timescale;
            range.start.flags = v32;
            range.start.epoch = v33;
            v35 = CMTimeCopyAsDictionary(&range.start, v34);
            if (v35)
            {
              v36 = v35;
              CFDictionarySetValue(v16, @"liveEdgeDuration", v35);
              CFRelease(v36);
            }
          }

          if (cf[0])
          {
            CFRelease(cf[0]);
          }
        }

        v37 = FigGetAllocatorForMedia();
        v38 = CFArrayCreate(v37, &values, 1, MEMORY[0x1E695E9C0]);
        if (v38)
        {
          *a4 = v38;
        }

        else
        {
          FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v111.value, v111.timescale, LODWORD(v111.epoch));
        }

LABEL_34:
        v39 = values;
        if (values)
        {
LABEL_35:
          CFRelease(v39);
        }

LABEL_36:
        fpfs_UnlockAndPostNotificationsWithCaller(v10);
        return;
      }

      if (CFEqual(a2, @"PlayableTimeIntervals"))
      {
        fpfsi_copyPlayableTimeL3(a1, a4);
        goto LABEL_36;
      }

      if (CFEqual(a2, @"currentDate"))
      {
        fpfsi_CopyCurrentDate(a1, a4);
        goto LABEL_36;
      }

      if (CFEqual(a2, @"currentDateAndTime"))
      {
        fpfsi_CopyCurrentDateAndTime();
        goto LABEL_36;
      }

      if (CFEqual(a2, @"estimatedCurrentDate"))
      {
        memset(&range, 0, 24);
        fpfs_GetTime(DerivedStorage, &range);
        memset(&cf[1], 0, 24);
        lhs[0] = range.start;
        rhs = *(DerivedStorage + 1160);
        CMTimeAdd(&cf[1], lhs, &rhs);
        v40 = *(DerivedStorage + 912);
        if (v40)
        {
          lhs[0] = *&cf[1];
          FigBytePumpCopyEstimatedDateForTime(v40, &lhs[0].value, a4);
        }

        goto LABEL_36;
      }

      if (CFEqual(a2, @"currentDatePeriod"))
      {
        *&v134 = a1;
        *(&v134 + 1) = a4;
        fpfsi_CopyCurrentDatePeriod(v134, v41, v42, v43, v44, v45, v111.value, *&v111.timescale, v112, *(&v112 + 1), v113, SHIDWORD(v113), v114, v115, v116, v117, *cf, *&cf[2], *&cf[4], cf[6], cf[7], values, range.start.value, *&range.start.timescale, range.start.epoch, range.duration.value, *&range.duration.timescale, range.duration.epoch, v121, v122, v123, v124, rhs.value, *&rhs.timescale, rhs.epoch, v126, lhs[0].value, *&lhs[0].timescale, lhs[0].epoch, lhs[1].value, *&lhs[1].timescale);
        goto LABEL_36;
      }

      if (CFEqual(a2, @"Timebase"))
      {
        Tag = *(DerivedStorage + 584);
        if (!Tag)
        {
LABEL_47:
          *a4 = Tag;
          goto LABEL_36;
        }

LABEL_46:
        Tag = CFRetain(Tag);
        goto LABEL_47;
      }

      if (CFEqual(a2, @"Lyrics") || CFEqual(a2, @"AvailableAlternateTrackGroups"))
      {
        goto LABEL_36;
      }

      if (CFEqual(a2, @"ChosenAlternateTrackIDDictionary"))
      {
        fpfsi_copyChosenAlternateTrackIDsDictionary(a1, a3, a4);
        goto LABEL_36;
      }

      if (CFEqual(a2, @"EstimatedDuration"))
      {
        memset(&range, 0, 24);
        if (fpfsi_GetDurationL3(a1, &range))
        {
          goto LABEL_36;
        }

        *&cf[1] = *&range.start.value;
        cf[3] = range.start.epoch;
        Tag = CMTimeCopyAsDictionary(&cf[1], a3);
        goto LABEL_47;
      }

      if (CFEqual(a2, @"AccurateDuration"))
      {
        goto LABEL_36;
      }

      if (CFEqual(a2, @"EndTime"))
      {
        fpfsi_copyEndTimeL3(a1, a4);
        goto LABEL_36;
      }

      if (CFEqual(a2, @"ReverseEndTime"))
      {
        *&range.start.value = *MEMORY[0x1E6960C70];
        range.start.epoch = *(MEMORY[0x1E6960C70] + 16);
        if ((*(DerivedStorage + 1388) & 0x1D) == 1)
        {
          *&range.start.value = *(DerivedStorage + 1376);
          range.start.epoch = *(DerivedStorage + 1392);
        }

        else
        {
          fpfsi_getSeekableTimeRange(&v112);
          *&cf[1] = v112;
          cf[3] = v113;
          FPSTimelineConverterL2TimeToL3(&cf[1], &range);
        }

        *&cf[1] = *&range.start.value;
        cf[3] = range.start.epoch;
        p_range = &cf[1];
        goto LABEL_80;
      }

      if (CFEqual(a2, @"TimeToPauseBuffering"))
      {
        v48 = (DerivedStorage + 1400);
        v49 = *(DerivedStorage + 1416);
LABEL_75:
        range.start.epoch = v49;
        *&range.start.value = *v48;
LABEL_79:
        p_range = &range;
LABEL_80:
        Tag = CMTimeCopyAsDictionary(&p_range->start, a3);
        goto LABEL_47;
      }

      if (CFEqual(a2, @"TimeToPausePlayback"))
      {
        *&range.start.value = *(DerivedStorage + 1424);
        v50 = *(DerivedStorage + 1440);
LABEL_78:
        range.start.epoch = v50;
        goto LABEL_79;
      }

      if (CFEqual(a2, @"AutomaticallyHandlesInterstitialEvents"))
      {
        if (*(DerivedStorage + 467))
        {
          v51 = MEMORY[0x1E695E4D0];
        }

        else
        {
          v51 = MEMORY[0x1E695E4C0];
        }

        v52 = *v51;
        goto LABEL_86;
      }

      if (CFEqual(a2, @"BasicsReadyForInspection"))
      {
        v53 = MEMORY[0x1E695E4D0];
        v54 = *(DerivedStorage + 460);
LABEL_90:
        v55 = MEMORY[0x1E695E4C0];
        goto LABEL_91;
      }

      if (CFEqual(a2, @"CleanApertureRectangle"))
      {
        v56 = *(CMBaseObjectGetDerivedStorage() + 1024);
        if (!v56)
        {
          goto LABEL_36;
        }

        while (*(v56 + 48) != 1986618469 || !*(v56 + 112))
        {
          v56 = *(v56 + 24);
          if (!v56)
          {
            goto LABEL_36;
          }
        }

        v59 = *(v56 + 56);
        if (!v59)
        {
          goto LABEL_36;
        }

        CleanAperture = CMVideoFormatDescriptionGetCleanAperture(v59, 0);
        DictionaryRepresentation = CGRectCreateDictionaryRepresentation(CleanAperture);
        goto LABEL_117;
      }

      if (CFEqual(a2, @"EncodedDimensions"))
      {
        v57 = *(CMBaseObjectGetDerivedStorage() + 1024);
        if (!v57)
        {
          goto LABEL_36;
        }

        while (*(v57 + 48) != 1986618469 || !*(v57 + 112))
        {
          v57 = *(v57 + 24);
          if (!v57)
          {
            goto LABEL_36;
          }
        }

        v61 = *(v57 + 56);
        if (!v61)
        {
          goto LABEL_36;
        }

        Dimensions = CMVideoFormatDescriptionGetDimensions(v61);
        v135.width = Dimensions.width;
        v135.height = Dimensions.height;
        DictionaryRepresentation = CGSizeCreateDictionaryRepresentation(v135);
LABEL_117:
        *a4 = DictionaryRepresentation;
        goto LABEL_36;
      }

      if (CFEqual(a2, @"VideoTrackMatrix"))
      {
        v58 = *(DerivedStorage + 3368);
        if (v58)
        {
          Tag = CFRetain(v58);
        }

        else
        {
          v63 = *(MEMORY[0x1E695EFD0] + 16);
          *&range.start.value = *MEMORY[0x1E695EFD0];
          *&range.start.epoch = v63;
          *&range.duration.timescale = *(MEMORY[0x1E695EFD0] + 32);
          Tag = FigCreate3x3MatrixArrayFromCGAffineTransform(a3, &range);
        }

        if (!Tag)
        {
          fpfsi_CopyProperty_cold_3(&range);
          goto LABEL_36;
        }

        goto LABEL_47;
      }

      if (CFEqual(a2, @"TrackIDArray") || CFEqual(a2, @"ChosenTrackIDArray"))
      {
        fpfsi_createTrackIDArray();
        goto LABEL_36;
      }

      if (CFEqual(a2, @"HasEnabledAudio"))
      {
        v53 = MEMORY[0x1E695E4D0];
        v54 = *(DerivedStorage + 793);
        goto LABEL_90;
      }

      if (CFEqual(a2, @"HasEnabledVideo"))
      {
        v53 = MEMORY[0x1E695E4D0];
        v54 = *(DerivedStorage + 794);
        goto LABEL_90;
      }

      if (CFEqual(a2, @"HasDiscoveredVideo"))
      {
        v53 = MEMORY[0x1E695E4D0];
        v54 = *(DerivedStorage + 795);
        goto LABEL_90;
      }

      if (CFEqual(a2, @"EQPreset"))
      {
        v64 = *MEMORY[0x1E695E480];
        v65 = (DerivedStorage + 848);
        v66 = kCFNumberIntType;
LABEL_128:
        Tag = CFNumberCreate(v64, v66, v65);
        goto LABEL_47;
      }

      if (CFEqual(a2, @"SynchronizedLayers"))
      {
        Tag = *(DerivedStorage + 704);
        if (!Tag)
        {
          goto LABEL_47;
        }

        goto LABEL_46;
      }

      if (CFEqual(a2, @"ReadBandwidth"))
      {
        if (!*(DerivedStorage + 912))
        {
          goto LABEL_36;
        }

        v67 = @"FBP_NetworkBandwidth";
        goto LABEL_135;
      }

      if (CFEqual(a2, @"AvailableFileSize") || CFEqual(a2, @"FileSize"))
      {
        goto LABEL_36;
      }

      if (CFEqual(a2, @"AudioDeviceChannelMap"))
      {
        v69 = *(DerivedStorage + 1816);
        *a4 = v69;
        if (v69)
        {
          CFRetain(v69);
        }

        goto LABEL_36;
      }

      if (CFEqual(a2, @"MovieMatrix") || CFEqual(a2, @"ChapterNames") || CFEqual(a2, @"ChapterImageInfoArray") || CFEqual(a2, @"ChapterHREFs"))
      {
        goto LABEL_36;
      }

      if (CFEqual(a2, @"ApertureMode"))
      {
        if (*(DerivedStorage + 844))
        {
          v53 = &kFigPlaybackItemApertureMode_CleanAperture;
          v54 = *(DerivedStorage + 845);
          v55 = &kFigPlaybackItemApertureMode_ProductionAperture;
LABEL_91:
          if (!v54)
          {
            v53 = v55;
          }

          goto LABEL_93;
        }

        v53 = &kFigPlaybackItemApertureMode_EncodedPixels;
LABEL_93:
        Tag = *v53;
        goto LABEL_46;
      }

      if (CFEqual(a2, @"QualityGear"))
      {
        if (*(DerivedStorage + 912) && *(DerivedStorage + 1680))
        {
          fpfsi_copyPlaybackRateMonitorProperty(DerivedStorage);
        }

        goto LABEL_36;
      }

      if (CFEqual(a2, @"AlternateStreamInformation"))
      {
        fpfsi_copyAlternateStreamInformation(DerivedStorage, a3, a4);
        goto LABEL_36;
      }

      if (CFEqual(a2, @"BufferState"))
      {
        if (*(DerivedStorage + 1896))
        {
          v53 = &kFigPlaybackItemBufferState_Full;
        }

        else
        {
          v53 = &kFigPlaybackItemBufferState_Filling;
        }

        goto LABEL_93;
      }

      if (CFEqual(a2, @"WillKeepUpPrediction"))
      {
        if (*(DerivedStorage + 524) == 1)
        {
          v53 = &kFigPlaybackItemWillKeepUpPrediction_LikelyToKeepUp;
        }

        else
        {
          v53 = &kFigPlaybackItemWillKeepUpPrediction_UnlikelyToKeepUp;
        }

        goto LABEL_93;
      }

      if (CFEqual(a2, @"AbsoluteTimeWhenReadyToPlay"))
      {
        v64 = *MEMORY[0x1E695E480];
        v65 = (DerivedStorage + 2088);
LABEL_320:
        v66 = kCFNumberDoubleType;
        goto LABEL_128;
      }

      if (CFEqual(a2, @"RestrictsAutomaticMediaSelectionToAvailableOfflineOptions"))
      {
        v53 = MEMORY[0x1E695E4D0];
        v54 = *(DerivedStorage + 1844);
        goto LABEL_90;
      }

      if (CFEqual(a2, @"RequiresExternalProtection"))
      {
        v70 = *MEMORY[0x1E695E4C0];
        v71 = *(DerivedStorage + 1848);
        if (v71)
        {
          range.start.value = 0;
          CFNumberGetValue(v71, kCFNumberSInt64Type, &range);
          v72 = *MEMORY[0x1E695E4D0];
          if (range.start.value)
          {
            v52 = *MEMORY[0x1E695E4D0];
          }

          else
          {
            v52 = v70;
          }

          if (v52 != v70)
          {
            goto LABEL_86;
          }
        }

        else
        {
          v72 = *MEMORY[0x1E695E4D0];
        }

        ExternalProtectionMethodRequiredForPlayback = fpfsi_GetExternalProtectionMethodRequiredForPlayback(a1);
        if (ExternalProtectionMethodRequiredForPlayback)
        {
          v52 = v72;
        }

        else
        {
          v52 = v70;
        }

        *(DerivedStorage + 3000) = ExternalProtectionMethodRequiredForPlayback;
LABEL_86:
        *a4 = v52;
        goto LABEL_36;
      }

      if (CFEqual(a2, @"AccessLog"))
      {
        if (!*(DerivedStorage + 1920))
        {
          goto LABEL_36;
        }

        range.start.value = 0;
        fpfs_UpdateCurrentAccessLogEntryPlayTimes(DerivedStorage);
        if (*(DerivedStorage + 2144))
        {
          v74 = fpfs_CreateAccessLogEntryWithUnlock(a1, &range) == 0;
          v73 = range.start.value;
        }

        else
        {
          v73 = 0;
          v74 = 1;
        }

        if (v73)
        {
          v77 = v74;
        }

        else
        {
          v77 = 0;
        }

        v78 = *(DerivedStorage + 1920);
        if (v78)
        {
          MutableCopy = CFArrayCreateMutableCopy(a3, 0, v78);
          if (MutableCopy)
          {
            if (v77)
            {
              v80 = *(DerivedStorage + 2608);
              if (v80)
              {
                CFDictionarySetValue(v73, @"c-startup_perf", v80);
              }

              CFArrayAppendValue(MutableCopy, v73);
              *a4 = MutableCopy;
LABEL_212:
              v39 = v73;
              goto LABEL_35;
            }
          }

          else
          {
            FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v111.value, v111.timescale, LODWORD(v111.epoch));
          }
        }

        else
        {
          MutableCopy = 0;
        }

        *a4 = MutableCopy;
        if (!v73)
        {
          goto LABEL_36;
        }

        goto LABEL_212;
      }

      if (CFEqual(a2, @"ErrorLog"))
      {
        if (*(DerivedStorage + 912))
        {
          if (*(DerivedStorage + 1928))
          {
            CFRelease(*(DerivedStorage + 1928));
            *(DerivedStorage + 1928) = 0;
          }

          FigBytePumpGetFigBaseObject();
          CMBaseObjectCopyProperty(v76, 0x1F0B1EFD8, a3, DerivedStorage + 1928);
        }

        v81 = *(DerivedStorage + 1928);
        if (v81)
        {
          PublicCopy = FigErrorLogCreatePublicCopy(a3, v81);
          *a4 = PublicCopy;
          if (!PublicCopy)
          {
            FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF169E8, 4294954434, "<<<< FigStreamPlayer >>>>", 62866, v4);
          }
        }

        goto LABEL_36;
      }

      if (CFEqual(a2, @"CanPlayFastForward") || CFEqual(a2, @"CanPlayFastReverse") || CFEqual(a2, @"CanPlayReverse"))
      {
        if (!*(DerivedStorage + 912))
        {
          goto LABEL_36;
        }

        if (*(DerivedStorage + 40) && *(DerivedStorage + 1713) == 1)
        {
          goto LABEL_409;
        }

LABEL_410:
        v53 = MEMORY[0x1E695E4C0];
        goto LABEL_93;
      }

      if (CFEqual(a2, @"SupportsFrameStepping"))
      {
        goto LABEL_410;
      }

      if (CFEqual(a2, @"MediaSelectionArray"))
      {
        Tag = *(DerivedStorage + 1672);
        if (!Tag)
        {
          goto LABEL_36;
        }

        goto LABEL_46;
      }

      if (CFEqual(a2, @"SelectedMediaArray"))
      {
        v83 = *(DerivedStorage + 1768);
        if (v83)
        {
          Copy = CFArrayCreateCopy(a3, v83);
          *a4 = Copy;
          if (!Copy)
          {
            FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF169E8, 4294954434, "<<<< FigStreamPlayer >>>>", 62905, v4);
          }
        }

        goto LABEL_36;
      }

      if (CFEqual(a2, @"EligibleForDSPBasedEnhancedDialogue"))
      {
        if (*(DerivedStorage + 1776))
        {
          goto LABEL_410;
        }

LABEL_409:
        v53 = MEMORY[0x1E695E4D0];
        goto LABEL_93;
      }

      if (CFEqual(a2, @"MediaPresentationLanguages"))
      {
        Tag = *(DerivedStorage + 1784);
        if (!Tag)
        {
          goto LABEL_47;
        }

        goto LABEL_46;
      }

      if (CFEqual(a2, @"kFigPlaybackItemProperty_MediaPresentationCharacteristics"))
      {
        Tag = *(DerivedStorage + 1792);
        if (!Tag)
        {
          goto LABEL_47;
        }

        goto LABEL_46;
      }

      if (CFEqual(a2, @"ItemCoordinationMediaSelectionCriteria"))
      {
        Tag = *(DerivedStorage + 1808);
        if (!Tag)
        {
          goto LABEL_47;
        }

        goto LABEL_46;
      }

      if (CFEqual(a2, @"PreferredMaximumBufferDuration"))
      {
        v85 = *MEMORY[0x1E695E480];
        v86 = (DerivedStorage + 2260);
LABEL_315:
        v89 = kCFNumberSInt32Type;
LABEL_316:
        Tag = CFNumberCreate(v85, v89, v86);
        if (!Tag)
        {
          goto LABEL_36;
        }

        goto LABEL_47;
      }

      if (CFEqual(a2, @"MaximumTrailingBufferDuration"))
      {
        v85 = *MEMORY[0x1E695E480];
        v86 = (DerivedStorage + 2304);
        goto LABEL_315;
      }

      if (CFEqual(a2, @"TextMarkupArray"))
      {
        Tag = *(DerivedStorage + 1824);
        if (!Tag)
        {
          goto LABEL_47;
        }

        goto LABEL_46;
      }

      if (CFEqual(a2, @"TextHighlightArray"))
      {
        Tag = *(DerivedStorage + 1832);
        if (!Tag)
        {
          goto LABEL_47;
        }

        goto LABEL_46;
      }

      if (CFEqual(a2, @"LegibleOutputs"))
      {
        Tag = *(DerivedStorage + 1880);
        if (!Tag)
        {
          goto LABEL_47;
        }

        goto LABEL_46;
      }

      if (CFEqual(a2, @"MetadataOutputs"))
      {
        Tag = FigXMLNodeGetTag(*(DerivedStorage + 1888));
        if (!Tag)
        {
          goto LABEL_47;
        }

        goto LABEL_46;
      }

      if (CFEqual(a2, @"VisualContextArray"))
      {
        if (FigStreamingItemCombinedVideoDestinationGetCountOfVisualContexts(*(DerivedStorage + 656)))
        {
          v87 = FigStreamingItemCombinedVideoDestinationCopyVisualContexts(*(DerivedStorage + 656));
          v88 = CFArrayCreateCopy(a3, v87);
          *a4 = v88;
          if (!v88)
          {
            FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v111.value, v111.timescale, LODWORD(v111.epoch));
          }

          if (!v87)
          {
            goto LABEL_36;
          }

          v39 = v87;
          goto LABEL_35;
        }

        goto LABEL_423;
      }

      if (CFEqual(a2, @"Volume"))
      {
        v85 = *MEMORY[0x1E695E480];
        v86 = (DerivedStorage + 1840);
        v89 = kCFNumberFloat32Type;
        goto LABEL_316;
      }

      if (CFEqual(a2, @"DisplayNonForcedSubtitles"))
      {
        v90 = MEMORY[0x1E695E4D0];
        v91 = *(DerivedStorage + 531);
        goto LABEL_266;
      }

      if (CFEqual(a2, @"allowProgressiveSwitchUp"))
      {
        v90 = MEMORY[0x1E695E4D0];
        v91 = *(DerivedStorage + 554);
        goto LABEL_266;
      }

      if (CFEqual(a2, @"allowProgressiveStartup"))
      {
        v90 = MEMORY[0x1E695E4D0];
        v91 = *(DerivedStorage + 555);
        goto LABEL_266;
      }

      if (CFEqual(a2, @"allowProgressiveResume"))
      {
        v90 = MEMORY[0x1E695E4D0];
        v91 = *(DerivedStorage + 556);
LABEL_266:
        if (!v91)
        {
          v90 = MEMORY[0x1E695E4C0];
        }

        Tag = *v90;
        if (!*v90)
        {
          goto LABEL_47;
        }

        goto LABEL_46;
      }

      if (CFEqual(a2, @"AutomaticallyLoadedAssetProperties"))
      {
        Tag = *(DerivedStorage + 144);
        if (!Tag)
        {
          goto LABEL_47;
        }

        goto LABEL_46;
      }

      if (CFEqual(a2, @"AutomaticallyLoadedAssetTrackProperties"))
      {
        Tag = *(DerivedStorage + 152);
        if (!Tag)
        {
          goto LABEL_47;
        }

        goto LABEL_46;
      }

      if (CFEqual(a2, @"MediaKind"))
      {
        Tag = *(DerivedStorage + 2392);
        if (!Tag)
        {
          goto LABEL_47;
        }

        goto LABEL_46;
      }

      if (CFEqual(a2, @"TimePitchAlgorithm"))
      {
        Tag = *(DerivedStorage + 856);
        if (!Tag)
        {
          goto LABEL_47;
        }

        goto LABEL_46;
      }

      if (CFEqual(a2, @"CanPlayUpTo2xForward"))
      {
        goto LABEL_409;
      }

      if (CFEqual(a2, @"BandwidthCap"))
      {
        v85 = *MEMORY[0x1E695E480];
        v86 = (DerivedStorage + 2412);
        goto LABEL_315;
      }

      if (CFEqual(a2, @"BandwidthCapForExpensiveNetwork"))
      {
        Tag = *(DerivedStorage + 2416);
        if (!Tag)
        {
          goto LABEL_47;
        }

        goto LABEL_46;
      }

      if (CFEqual(a2, @"TimeOffsetFromLive"))
      {
        if (!*(DerivedStorage + 912))
        {
          v48 = (DerivedStorage + 632);
          v49 = *(DerivedStorage + 648);
          goto LABEL_75;
        }

        v67 = @"FBP_PrebufferReservation";
        goto LABEL_135;
      }

      if (CFEqual(a2, @"RecommendedTimeOffsetFromLive"))
      {
        fpfsi_CopyPumpSecondsPropertyAsTime(DerivedStorage, 0x1F0B1F298, a3, a4);
        goto LABEL_36;
      }

      if (CFEqual(a2, @"AutomaticallyPreservesTimeOffsetFromLive"))
      {
        v53 = MEMORY[0x1E695E4D0];
        v54 = *(DerivedStorage + 465);
        goto LABEL_90;
      }

      if (CFEqual(a2, @"HasEnqueuedFirstVideoFrame"))
      {
        v92 = fpfsi_copyCurrentVideoDestination(a1);
        if (!v92)
        {
          goto LABEL_410;
        }

        v93 = v92;
        IsAnyOutputReadyToRender = FigAggregateVideoDestinationIsAnyOutputReadyToRender(v92);
        CFRelease(v93);
        if (!IsAnyOutputReadyToRender)
        {
          goto LABEL_410;
        }

        goto LABEL_409;
      }

      if (CFEqual(a2, @"ImageQueueGauge"))
      {
        Tag = fpfsi_copyImageQueueGauge(a1);
        goto LABEL_47;
      }

      if (CFEqual(a2, @"PriorImageQueueGauge"))
      {
        Tag = *(DerivedStorage + 728);
        if (!Tag)
        {
          goto LABEL_47;
        }

        goto LABEL_46;
      }

      if (CFEqual(a2, @"TaggedRangeMetadataArray"))
      {
        v95 = *(DerivedStorage + 2624);
        if (v95)
        {
          *a4 = CFRetain(v95);
        }

        else
        {
          fpfsi_UpdateTaggedRangeMetadataFromPumpAndNotifyIfNeeded(v10, a1, 0, 0);
        }

        goto LABEL_36;
      }

      if (CFEqual(a2, @"CountOfTaggedRangeMetadataArrayListeners"))
      {
        v85 = *MEMORY[0x1E695E480];
        v86 = (DerivedStorage + 2632);
        v89 = kCFNumberCFIndexType;
        goto LABEL_316;
      }

      if (CFEqual(a2, @"MinimizeNetworkingWhilePaused"))
      {
        v53 = MEMORY[0x1E695E4D0];
        v54 = *(DerivedStorage + 532);
        goto LABEL_90;
      }

      if (CFEqual(a2, @"VariantPreferences"))
      {
        v85 = *MEMORY[0x1E695E480];
        v86 = (DerivedStorage + 560);
        goto LABEL_315;
      }

      if (CFEqual(a2, @"AudioSampleRateCap"))
      {
        v64 = *MEMORY[0x1E695E480];
        v65 = (DerivedStorage + 2544);
        goto LABEL_320;
      }

      if (CFEqual(a2, @"SuppressesAudioOnlyVariants"))
      {
        v53 = MEMORY[0x1E695E4D0];
        v54 = *(DerivedStorage + 558);
        goto LABEL_90;
      }

      if (CFEqual(a2, @"LiveUpdateInterval"))
      {
        range.start.value = 0;
        if (!*(DerivedStorage + 912))
        {
          goto LABEL_36;
        }

        v96 = FigGetAllocatorForMedia();
        FigBytePumpGetFigBaseObject();
        v98 = CMBaseObjectCopyProperty(v97, 0x1F0B1F5F8, v96, &range);
        v52 = range.start.value;
        if (!range.start.value || v98)
        {
          goto LABEL_36;
        }

        goto LABEL_86;
      }

      if (CFEqual(a2, @"ProgressToPlayThrough"))
      {
        LODWORD(cf[1]) = 0;
        if (*(DerivedStorage + 524) == 1 || (v99 = *(DerivedStorage + 1680)) != 0 && FigAlternateIsIFrameOnly(v99) || *(DerivedStorage + 2992))
        {
          LODWORD(cf[1]) = 1065353216;
        }

        else if (*(DerivedStorage + 912))
        {
          memset(&v111, 0, sizeof(v111));
          fpfs_GetItemBufferedDuration(a1, &v111, &range, 0);
          fpfs_IsItemReadyToStart(a1, &v111, &range, &cf[1], 0, 0);
        }

        v64 = *MEMORY[0x1E695E480];
        v65 = &cf[1];
        v66 = kCFNumberFloat32Type;
        goto LABEL_128;
      }

      if (CFEqual(a2, @"AudioSpatializationAllowed"))
      {
        v53 = MEMORY[0x1E695E4D0];
        v54 = *(DerivedStorage + 869);
        goto LABEL_90;
      }

      if (CFEqual(a2, @"StereoAudioSpatializationAllowed"))
      {
        v53 = MEMORY[0x1E695E4D0];
        v54 = *(DerivedStorage + 870);
        goto LABEL_90;
      }

      if (CFEqual(a2, @"IsRenderingSpatialAudio"))
      {
        v100 = *(CMBaseObjectGetDerivedStorage() + 1024);
        if (v100)
        {
          v53 = MEMORY[0x1E695E4C0];
          while (*(v100 + 48) != 1936684398 || !*(v100 + 112))
          {
            v100 = *(v100 + 24);
            if (!v100)
            {
              goto LABEL_93;
            }
          }

          fpfsi_CopyProperty_cold_4();
          v53 = range.start.value;
          goto LABEL_93;
        }

        goto LABEL_410;
      }

      if (CFEqual(a2, @"LoudnessInfo"))
      {
        Tag = *(DerivedStorage + 2400);
        if (!Tag)
        {
          goto LABEL_47;
        }

        goto LABEL_46;
      }

      if (CFEqual(a2, @"AudioProcessingTap"))
      {
        Tag = *(DerivedStorage + 3128);
        if (!Tag)
        {
          goto LABEL_47;
        }

        goto LABEL_46;
      }

      if (CFEqual(a2, @"AudioProcessingUnits"))
      {
        Tag = *(DerivedStorage + 3144);
        if (!Tag)
        {
          goto LABEL_47;
        }

        goto LABEL_46;
      }

      if (CFEqual(a2, @"AudioCurves"))
      {
        Tag = *(DerivedStorage + 3152);
        if (!Tag)
        {
          goto LABEL_47;
        }

        goto LABEL_46;
      }

      if (CFEqual(a2, @"PreferSDRVideo"))
      {
        v53 = MEMORY[0x1E695E4D0];
        v54 = *(DerivedStorage + 872);
        goto LABEL_90;
      }

      if (CFEqual(a2, @"ConfigurationGroup"))
      {
        if (!*(DerivedStorage + 912))
        {
          goto LABEL_36;
        }

        range.start.value = 0;
        v101 = FigGetAllocatorForMedia();
        FigBytePumpGetFigBaseObject();
        CMBaseObjectCopyProperty(v102, 0x1F0B1F2D8, v101, &range);
        v103 = FigRCLCopyConfigurationGroupName(range.start.value);
        if (v103)
        {
          v104 = v103;
          *a4 = CFRetain(v103);
          CFRelease(v104);
        }

        v39 = range.start.value;
        if (!range.start.value)
        {
          goto LABEL_36;
        }

        goto LABEL_35;
      }

      if (CFEqual(a2, @"StartsOnFirstEligibleVariant"))
      {
        v53 = MEMORY[0x1E695E4D0];
        if (*(DerivedStorage + 2892) != 1)
        {
          v53 = MEMORY[0x1E695E4C0];
        }

        goto LABEL_93;
      }

      if (CFEqual(a2, @"CurrentStableVariantID"))
      {
        v105 = *(DerivedStorage + 1680);
        if (!v105)
        {
          goto LABEL_36;
        }

        Tag = FigAlternateGetStableStreamIdentifier(v105);
        if (!Tag)
        {
          goto LABEL_47;
        }

        goto LABEL_46;
      }

      if (CFEqual(a2, @"CoordinationIdentifier"))
      {
        Tag = *(DerivedStorage + 3216);
        if (!Tag)
        {
          v106 = (DerivedStorage + 3216);
          FPSupport_CreateDefaultCoordinationIdentifierForPlaybackItem(a1, v106);
          Tag = *v106;
          if (!*v106)
          {
            goto LABEL_36;
          }
        }

        goto LABEL_46;
      }

      if (CFEqual(a2, @"ParticipatesInCoordinatedPlayback"))
      {
        v53 = MEMORY[0x1E695E4D0];
        v54 = *(DerivedStorage + 3224);
        goto LABEL_90;
      }

      if (CFEqual(a2, @"interstitialEvents"))
      {
        Tag = *(DerivedStorage + 3240);
        if (!Tag)
        {
          goto LABEL_47;
        }

        goto LABEL_46;
      }

      if (CFEqual(a2, @"currentInterstitialEvent"))
      {
        Tag = *(DerivedStorage + 3232);
        if (!Tag)
        {
          goto LABEL_47;
        }

        goto LABEL_46;
      }

      if (CFEqual(a2, @"InterstitialEventItemTimeOffset"))
      {
        Tag = *(DerivedStorage + 3248);
        if (!Tag)
        {
          goto LABEL_47;
        }

        goto LABEL_46;
      }

      if (CFEqual(a2, @"TransientTimebaseForCoordinatedPlaybackSynchronization"))
      {
        Tag = *(DerivedStorage + 568);
        if (!Tag)
        {
          goto LABEL_36;
        }

        goto LABEL_46;
      }

      if (CFEqual(a2, @"IsCoordinatedPlaybackSupported"))
      {
        v53 = MEMORY[0x1E695E4D0];
        v54 = *(DerivedStorage + 3256);
        goto LABEL_90;
      }

      if (CFEqual(a2, @"ReportingAgent"))
      {
        Tag = *(DerivedStorage + 2568);
        if (!Tag)
        {
          goto LABEL_47;
        }

        goto LABEL_46;
      }

      if (CFEqual(a2, @"IsReadyForPlayback"))
      {
        v53 = MEMORY[0x1E695E4D0];
        v54 = *(DerivedStorage + 469);
        goto LABEL_90;
      }

      if (CFEqual(a2, @"AutoSwitchAtmosVariants"))
      {
        v53 = MEMORY[0x1E695E4D0];
        v54 = *(DerivedStorage + 564);
        goto LABEL_90;
      }

      if (CFEqual(a2, @"MaximumTimePlayedToSinceLastSeek"))
      {
        fpfsi_updateMaxPlayThroughTime(a1);
        *&range.start.value = *(DerivedStorage + 3272);
        v50 = *(DerivedStorage + 3288);
        goto LABEL_78;
      }

      if (CFEqual(a2, @"IsPlayingIFrameOnly"))
      {
        v107 = *(DerivedStorage + 1680);
        if (!v107 || !FigAlternateIsIFrameOnly(v107))
        {
          goto LABEL_410;
        }

        goto LABEL_409;
      }

      if (CFEqual(a2, @"PrefersConcurrentSwitching"))
      {
        v53 = MEMORY[0x1E695E4D0];
        v54 = *(DerivedStorage + 553);
        goto LABEL_90;
      }

      if (CFEqual(a2, @"SpeedRampData"))
      {
        FPSTimelineConverterCopyProperty(*(DerivedStorage + 3376), @"SpeedRampData", 0, a4);
        goto LABEL_36;
      }

      if (CFEqual(a2, @"OverlapRange"))
      {
        Tag = *(DerivedStorage + 3384);
        if (!Tag)
        {
          goto LABEL_47;
        }

        goto LABEL_46;
      }

      if (CFEqual(a2, @"UniqueInstanceIdentifier"))
      {
        v108 = *(DerivedStorage + 3392);
        if (v108)
        {
          Tag = CFStringCreateCopy(a3, v108);
          goto LABEL_47;
        }

        goto LABEL_423;
      }

      if (CFEqual(a2, @"MetricEventTimeline"))
      {
        Tag = *(DerivedStorage + 3400);
        if (Tag)
        {
          goto LABEL_46;
        }

LABEL_423:
        *a4 = 0;
        goto LABEL_36;
      }

      if (CFEqual(a2, @"OfflineInterstitialURLs"))
      {
        range.start.value = 0;
        if (*(DerivedStorage + 912))
        {
          v109 = 0x1F0B1EEF8;
LABEL_430:
          FigBytePumpGetFigBaseObject();
          if (CMBaseObjectCopyProperty(v110, v109, a3, &range))
          {
            goto LABEL_36;
          }

          v52 = range.start.value;
          goto LABEL_86;
        }
      }

      else
      {
        if (!CFEqual(a2, @"OfflineInterstitialListJSON"))
        {
          if (!CFEqual(a2, @"nearFutureLiveBufferInfo"))
          {
            if (!CFEqual(a2, @"MissingAudioEditList"))
            {
              goto LABEL_36;
            }

            v53 = MEMORY[0x1E695E4D0];
            v54 = *(DerivedStorage + 3464);
            goto LABEL_90;
          }

          if (!*(DerivedStorage + 912))
          {
            goto LABEL_36;
          }

          v67 = @"FBP_NearFutureLiveBufferInfo";
LABEL_135:
          FigBytePumpGetFigBaseObject();
          CMBaseObjectCopyProperty(v68, v67, a3, a4);
          goto LABEL_36;
        }

        range.start.value = 0;
        if (*(DerivedStorage + 912))
        {
          v109 = 0x1F0B1EF18;
          goto LABEL_430;
        }
      }

      v52 = 0;
      goto LABEL_86;
    }
  }

  else
  {
    v31 = qword_1EAF169E8;

    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v31, 4294954516, "<<<< FigStreamPlayer >>>>", 62545, v4);
  }
}

double fpfsi_ResetPrebufferingItem(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  if (*(CMBaseObjectGetDerivedStorage() + 463))
  {
    if (!dword_1EAF169F0)
    {
      return result;
    }
  }

  else
  {
    fpfsi_ResetPlaybackItem(a1);
    if (!dword_1EAF169F0)
    {
      return result;
    }
  }

  os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
  os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
  fig_log_call_emit_and_clean_up_after_send_and_compose();
  return result;
}

void fpfs_FlushCurrentPlayback(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v2 = *(DerivedStorage + 80);
  if (v2)
  {
    v3 = DerivedStorage;
    v4 = *(DerivedStorage + 688);
    *(DerivedStorage + 688) = 0;
    fpfs_StopPlayingItemWithOSStatus(DerivedStorage, v2, 4294951599);
    *(v3 + 688) = v4;
  }
}

BOOL fpfs_TrackMightRenderMoreAudio(uint64_t a1)
{
  v2 = *(a1 + 16);
  CMBaseObjectGetDerivedStorage();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(a1 + 198) && (v5 = DerivedStorage, fpfsi_PumpHasEndedOrBufferedBeyondEndTime(v2)) && !fpfsi_AreAnyOtherTracksOfMediaTypeAwaitingPlayingState(v2, a1))
  {
    return fpfs_getNext(v5, v2) != 0;
  }

  else
  {
    return 1;
  }
}

uint64_t fpfsi_AreAnyOtherTracksOfMediaTypeAwaitingPlayingState(uint64_t a1, uint64_t a2)
{
  v3 = *(CMBaseObjectGetDerivedStorage() + 1024);
  if (!v3)
  {
    return 0;
  }

  while (v3 == a2 || *(v3 + 48) != 1936684398 || *(v3 + 168) >= 5u)
  {
    v3 = *(v3 + 24);
    if (!v3)
    {
      return 0;
    }
  }

  return 1;
}

void fpfsi_logAttachMarker(uint64_t a1)
{
  CMBaseObjectGetDerivedStorage();
  v2 = *(a1 + 112);
  if (v2)
  {
    if (*(v2 + 32))
    {
      v3 = FigCFCopyCompactDescription();
      if (v3)
      {

        CFRelease(v3);
      }
    }
  }
}

void fpfsi_clearOutOfBandSubtitleObjects(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v2 = *(DerivedStorage + 896);
  if (v2)
  {
    FigSyncMomentSourceDestroy(v2);
    *(DerivedStorage + 896) = 0;
  }

  v3 = *(DerivedStorage + 888);
  if (v3)
  {
    FigOutOfBandTrackControllerInvalidate(v3);
    CMNotificationCenterGetDefaultLocalCenter();
    FigNotificationCenterRemoveWeakListener();
    CMNotificationCenterGetDefaultLocalCenter();
    FigNotificationCenterRemoveWeakListener();
    CMNotificationCenterGetDefaultLocalCenter();
    CMNotificationCenterBarrier();
    v4 = *(DerivedStorage + 888);
    if (v4)
    {
      CFRelease(v4);
      *(DerivedStorage + 888) = 0;
    }
  }
}

void fpfsi_handleOutOfBandTrackPlaybackFailed(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = FigCFCopyCompactDescription();
  if (v5)
  {

    CFRelease(v5);
  }
}

void fpfsi_handleOutOfBandTrackSubtitleChanged(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const void *a5)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a5)
  {
    v7 = DerivedStorage;
    if (!FigRetainProxyIsInvalidated() && !*(v7 + 846) && !*(CMBaseObjectGetDerivedStorage() + 52))
    {
      v8 = *v7;
      v9 = *v7;

      fpfs_PostNotificationWhenUnlocked(v8, @"SubtitleChanged", v9, a5);
    }
  }
}

void fpfs_CheckIfPlaybackStateChangedAndNotifyBeforeUnlock(const void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v6 = 0;
  fpfs_getPlaybackState(a1, &v6, (DerivedStorage + 168));
  v3 = v6;
  if (v6 != *(DerivedStorage + 164))
  {
    AllocatorForMedia = FigGetAllocatorForMedia();
    Mutable = CFDictionaryCreateMutable(AllocatorForMedia, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    FigCFDictionarySetInt32();
    fpfs_EnqueueNotificationWithoutLocking(a1, @"PlaybackStateDidChange", a1, Mutable);
    *(DerivedStorage + 164) = v3;
    if (Mutable)
    {

      CFRelease(Mutable);
    }
  }
}

uint64_t FigBytePumpCopyEstimatedDateForTime(uint64_t a1, __int128 *a2, uint64_t a3)
{
  v6 = *(*(CMBaseObjectGetVTable() + 16) + 48);
  if (!v6)
  {
    return 4294954514;
  }

  v8 = *a2;
  v9 = *(a2 + 2);
  return v6(a1, &v8, a3);
}

uint64_t fpfsi_copyChosenAlternateTrackIDsDictionary(uint64_t a1, const __CFAllocator *a2, __CFDictionary **a3)
{
  TrackOfType = fpfs_LastTrackOfType(a1, 1936684398, 0);
  if (!TrackOfType)
  {
    return 4294954513;
  }

  v6 = TrackOfType;
  Mutable = CFDictionaryCreateMutable(a2, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (!Mutable)
  {
    return 4294954510;
  }

  v8 = Mutable;
  valuePtr = *(v6 + 32);
  v9 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberIntType, &valuePtr);
  CFDictionarySetValue(v8, @"Audio", v9);
  CFRelease(v9);
  result = 0;
  *a3 = v8;
  return result;
}

uint64_t fpfsi_GetDurationL3(uint64_t a1, __n128 *a2)
{
  v11 = *MEMORY[0x1E6960C70];
  v12 = *(MEMORY[0x1E6960C70] + 16);
  v9 = v11;
  v10 = v12;
  CMBaseObjectGetDerivedStorage();
  if (a2)
  {
    fpfsi_GetDuration(a1, &v11);
    v5 = v4;
    if (!v4)
    {
      v7 = v11;
      v8 = v12;
      FPSTimelineConverterL2TimeToL3(&v7, &v9);
    }

    *a2 = v9;
    a2[1].n128_u64[0] = v10;
  }

  else
  {
    fpfsi_GetDurationL3_cold_1(&v7);
    return v7.n128_u32[0];
  }

  return v5;
}

uint64_t fpfsi_copyEndTimeL3(uint64_t a1, CFDictionaryRef *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v5 = DerivedStorage;
  v6 = *MEMORY[0x1E6960C70];
  v21 = *MEMORY[0x1E6960C70];
  v7 = *(MEMORY[0x1E6960C70] + 16);
  v22 = v7;
  if ((*(DerivedStorage + 1364) & 0x1D) == 1)
  {
    v8 = 0;
    v22 = *(DerivedStorage + 1368);
    v21 = *(DerivedStorage + 1352);
  }

  else if ((*(DerivedStorage + 492) & 1) == 0 || (v9 = *(DerivedStorage + 1680)) != 0 && (v15 = v6, IsIFrameOnly = FigAlternateIsIFrameOnly(v9), v6 = v15, IsIFrameOnly))
  {
    v19 = v6;
    v20 = v7;
    fpfsi_GetDuration(a1, &v19);
    v8 = v11;
    if (!v11 && (BYTE12(v19) & 0x1D) == 1)
    {
      memset(&time, 0, sizeof(time));
      fpfsi_getSeekableTimeRange(&time);
      range = time;
      CMTimeRangeGetEnd(&v17, &range);
      p_time = &v17;
    }

    else
    {
      *&time.start.value = v19;
      time.start.epoch = v20;
      p_time = &time;
    }

    FPSTimelineConverterL2TimeToL3(p_time, &v21);
  }

  else
  {
    *&time.start.value = *(v5 + 480);
    time.start.epoch = *(v5 + 496);
    FPSTimelineConverterL2TimeToL3(&time, &v21);
    v8 = 0;
  }

  *&time.start.value = v21;
  time.start.epoch = v22;
  AllocatorForMedia = FigGetAllocatorForMedia();
  *a2 = CMTimeCopyAsDictionary(&time.start, AllocatorForMedia);
  return v8;
}

uint64_t fpfsi_copyAlternateStreamInformation(uint64_t a1, const __CFAllocator *a2, CFDictionaryRef *a3)
{
  keys[2] = *MEMORY[0x1E69E9840];
  v29 = 0;
  v6 = *(a1 + 1664);
  if (!v6)
  {
    goto LABEL_18;
  }

  Count = CFArrayGetCount(v6);
  if (Count < 1)
  {
    goto LABEL_18;
  }

  v8 = Count;
  v9 = *(a1 + 1680);
  v28 = a3;
  v10 = v9 ? FigAlternateGetPeakBitRate(v9) : 0;
  v11 = 0;
  v12 = 0;
  v13 = 0;
  v14 = 2;
  do
  {
    ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 1664), v11);
    PeakBitRate = FigAlternateGetPeakBitRate(ValueAtIndex);
    if (++v11 >= v8)
    {
      goto LABEL_15;
    }

    v17 = v14;
    do
    {
      v18 = CFArrayGetValueAtIndex(*(a1 + 1664), v17 - 1);
      v19 = FigAlternateGetPeakBitRate(v18);
    }

    while (v19 != PeakBitRate && v17++ < v8);
    if (v19 != PeakBitRate)
    {
LABEL_15:
      ++v12;
      if (PeakBitRate < v10)
      {
        ++v13;
      }
    }

    ++v14;
  }

  while (v11 != v8);
  valuePtr = v12;
  v29 = v13;
  a3 = v28;
  if (!v12)
  {
LABEL_18:
    valuePtr = 1;
  }

  keys[0] = @"StreamCount";
  v21 = *MEMORY[0x1E695E480];
  v22 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberCFIndexType, &valuePtr);
  values = v22;
  keys[1] = @"CurrentStreamIndex";
  v23 = CFNumberCreate(v21, kCFNumberIntType, &v29);
  cf = v23;
  v24 = 4294954510;
  if (v22)
  {
    v25 = v23 == 0;
  }

  else
  {
    v25 = 1;
  }

  if (!v25)
  {
    v26 = CFDictionaryCreate(a2, keys, &values, 2, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    *a3 = v26;
    if (v26)
    {
      v24 = 0;
    }

    else
    {
      v24 = 4294954510;
    }

    v22 = values;
  }

  if (v22)
  {
    CFRelease(v22);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  return v24;
}

uint64_t fpfsi_GetExternalProtectionMethodRequiredForPlayback(uint64_t a1)
{
  valuePtr = 0;
  v1 = *(CMBaseObjectGetDerivedStorage() + 1024);
  if (!v1)
  {
    return 0;
  }

  while (*(v1 + 48) != 1986618469)
  {
    v1 = *(v1 + 24);
    if (!v1)
    {
      return 0;
    }
  }

  v2 = *(v1 + 400);
  if (!v2)
  {
    return 0;
  }

  number = 0;
  AllocatorForMedia = FigGetAllocatorForMedia();
  v4 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v4)
  {
    v4(v2, @"ExternalProtectionMethodsRequiredForPlayback", AllocatorForMedia, &number);
    if (number)
    {
      CFNumberGetValue(number, kCFNumberSInt32Type, &valuePtr);
      if (number)
      {
        CFRelease(number);
      }
    }
  }

  return valuePtr;
}

uint64_t fpfsi_CopyPumpSecondsPropertyAsTime(uint64_t a1, uint64_t a2, const __CFAllocator *a3, CFDictionaryRef *a4)
{
  if (!*(a1 + 912))
  {
    return 4294954513;
  }

  number = 0;
  AllocatorForMedia = FigGetAllocatorForMedia();
  FigBytePumpGetFigBaseObject();
  v9 = v8;
  v10 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v10)
  {
    return 4294954514;
  }

  result = v10(v9, a2, AllocatorForMedia, &number);
  if (!result)
  {
    valuePtr = 0.0;
    CFNumberGetValue(number, kCFNumberDoubleType, &valuePtr);
    CMTimeMakeWithSeconds(&v13, valuePtr, 1000000);
    v12 = v13;
    *a4 = CMTimeCopyAsDictionary(&v12, a3);
    if (number)
    {
      CFRelease(number);
    }

    return 0;
  }

  return result;
}

uint64_t FigAggregateVideoDestinationIsAnyOutputReadyToRender(uint64_t a1)
{
  v2 = *(*(CMBaseObjectGetVTable() + 16) + 64);
  if (!v2)
  {
    return 0;
  }

  return v2(a1);
}

uint64_t fpfs_IsItemReadyToStart(uint64_t a1, CMTime *a2, uint64_t a3, float *a4, CMTime *a5, uint64_t a6)
{
  v51 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v47 = 0uLL;
  v48 = 0;
  fpfs_GetApproximateTime(DerivedStorage, &v47);
  v46 = **&MEMORY[0x1E6960C70];
  v44 = v46;
  v45 = v46;
  v11 = *(DerivedStorage + 1024);
  if (v11)
  {
    v38 = a6;
    v12 = 0;
    v13 = 0;
    v14 = 0;
    v15 = 0;
    while (1)
    {
      v16 = *(v11 + 196);
      v17 = *(DerivedStorage + 976 + 16 * v16);
      v18 = *(v11 + 48);
      v19 = (1 << v16) | v15;
      if (v18 == 1936684398)
      {
        v20 = 1;
      }

      else
      {
        v20 = v14;
      }

      if (v18 != 1935832172 && v18 != 1986618469 && v18 != 1936684398)
      {
        v19 = v15;
        v20 = v14;
      }

      if (*(v11 + 64) == v17)
      {
        v15 = v19;
        v14 = v20;
      }

      v23 = *(v11 + 168);
      if (v23 == 6)
      {
        v12 = 1;
      }

      if (v18 == 1986618469 && v23 == 5)
      {
        v25 = CMBaseObjectGetDerivedStorage();
        if (!fpfs_CanRenderVideo(v25, a1))
        {
          v13 = 1;
        }
      }

      if (v12 && *(v11 + 120))
      {
        break;
      }

      v11 = *(v11 + 24);
      if (!v11)
      {
        goto LABEL_31;
      }
    }

    v12 = 0;
LABEL_31:
    if (!v12 && v13 && !v14)
    {
      if (dword_1EAF169F0)
      {
        LODWORD(rhs.value) = 0;
        LOBYTE(type.value) = 0;
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
        v12 = 1;
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      else
      {
        v12 = 1;
      }
    }

    a6 = v38;
  }

  else
  {
    v15 = 0;
    v12 = 0;
  }

  v27 = *(DerivedStorage + 1072);
  if (v15 == v27)
  {
    goto LABEL_60;
  }

  v28 = *(DerivedStorage + 472);
  if (*(DerivedStorage + 553))
  {
    if (!*(DerivedStorage + 472))
    {
      goto LABEL_45;
    }

    if (!*(DerivedStorage + 1744))
    {
      v15 |= 1u;
      if (!*(DerivedStorage + 473))
      {
        goto LABEL_51;
      }

      goto LABEL_47;
    }

    v28 = *(DerivedStorage + 475);
  }

  if (v28)
  {
    v15 |= 1u;
  }

LABEL_45:
  v29 = *(DerivedStorage + 473);
  if (*(DerivedStorage + 553))
  {
    if (!*(DerivedStorage + 473))
    {
      goto LABEL_51;
    }

LABEL_47:
    if (!*(DerivedStorage + 1744))
    {
      v15 |= 2u;
      if (!*(DerivedStorage + 474))
      {
        goto LABEL_58;
      }

LABEL_53:
      if (!*(DerivedStorage + 1744))
      {
LABEL_56:
        v31 = v15 | 4;
        goto LABEL_59;
      }

      v30 = *(DerivedStorage + 477);
      goto LABEL_55;
    }

    v29 = *(DerivedStorage + 476);
  }

  if (v29)
  {
    v15 |= 2u;
  }

LABEL_51:
  v30 = *(DerivedStorage + 474);
  if (*(DerivedStorage + 553))
  {
    if (!*(DerivedStorage + 474))
    {
      goto LABEL_58;
    }

    goto LABEL_53;
  }

LABEL_55:
  if (v30)
  {
    goto LABEL_56;
  }

LABEL_58:
  v31 = v15;
LABEL_59:
  v15 = *(DerivedStorage + 1072);
  if (v31 == v27)
  {
LABEL_60:
    v32 = v15 & 3;
    if (!v12)
    {
      if (!a4)
      {
        goto LABEL_75;
      }

      goto LABEL_64;
    }

    if (fpfsi_PumpHasEndedOrBufferedBeyondEndTime(a1))
    {
      if (a4)
      {
        *a4 = 1.0;
      }

LABEL_70:
      v33 = 1;
      goto LABEL_76;
    }

    v50 = *a2;
    *&lhs.value = v47;
    lhs.epoch = v48;
    v33 = fpfs_CheckCanKeepUp(a1, &v50, &lhs, v15 & 3, a3, a4, &v44, a6);
    if (v33)
    {
      goto LABEL_76;
    }

    if (*(DerivedStorage + 1896) == 1)
    {
      if (dword_1EAF169F0)
      {
        LODWORD(rhs.value) = 0;
        LOBYTE(type.value) = 0;
        v34 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT);
        v33 = 1;
        fig_log_call_emit_and_clean_up_after_send_and_compose();
        goto LABEL_76;
      }

      goto LABEL_70;
    }

LABEL_75:
    v33 = 0;
    goto LABEL_76;
  }

  v32 = v31 & 3;
  if (!a4)
  {
    goto LABEL_75;
  }

LABEL_64:
  v50 = *a2;
  *&lhs.value = v47;
  lhs.epoch = v48;
  fpfs_CheckCanKeepUp(a1, &v50, &lhs, v32, a3, a4, &v44, a6);
  v33 = 0;
  *a4 = fminf(*a4, 0.9);
LABEL_76:
  if (v44.flags)
  {
    v36 = CMBaseObjectGetDerivedStorage();
    lhs = v44;
    rhs = *(DerivedStorage + 1160);
    CMTimeSubtract(&v50, &lhs, &rhs);
    v44 = v50;
    v37 = *(v36 + 108);
    if (v37 <= 2.0 && v37 >= 0.0 && (*(DerivedStorage + 420) & 1) != 0)
    {
      memset(&v50, 0, sizeof(v50));
      lhs = v44;
      rhs = *(DerivedStorage + 408);
      CMTimeSubtract(&v50, &lhs, &rhs);
      memset(&lhs, 0, sizeof(lhs));
      rhs = v45;
      CMTimeMultiplyByRatio(&lhs, &rhs, 1, 2);
      type = v50;
      v41 = lhs;
      CMTimeSubtract(&rhs, &type, &v41);
      *&type.value = v47;
      type.epoch = v48;
      if (CMTimeCompare(&type, &rhs) < 0)
      {
        v33 = 0;
        v46 = v50;
      }
    }
  }

  if (a5)
  {
    *a5 = v46;
  }

  return v33;
}

const __CFArray *fpfsi_setEQPreset(const __CFArray *a1, int a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  *(DerivedStorage + 848) = a2;
  v5 = *DerivedStorage;

  return fpfs_applyEQPreset(v5, a1, 0);
}

uint64_t fpfsi_setPropertyOnAllAudioRenderPipelines(uint64_t a1, void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v3 = *(DerivedStorage + 824);
  if (v3)
  {
    fpfs_setPropertyOnPrimaryAndAuxRenderPipelines();
  }

  for (i = *(DerivedStorage + 1024); i; i = *(i + 24))
  {
    if (*(i + 48) == 1936684398)
    {
      v5 = *(i + 112);
      if (v5)
      {
        v6 = v5 == v3;
      }

      else
      {
        v6 = 1;
      }

      if (!v6)
      {
        fpfs_setPropertyOnPrimaryAndAuxRenderPipelines();
      }
    }
  }

  return 0;
}

uint64_t fpfsi_synchronizeLayerToTimebaseWithTransaction(uint64_t a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  v3 = *(DerivedStorage + 688);
  if (v3)
  {
    FigLayerSynchronizerSynchronizeToTimebaseWithDeferredTransaction(v3, *(DerivedStorage + 576));
  }

  return FigSimpleMutexUnlock();
}

uint64_t fpfsi_setVideoEnhancementModeOnImageQueues(uint64_t a1, uint64_t a2)
{
  result = CMBaseObjectGetDerivedStorage();
  for (i = *(result + 1024); i; i = *(i + 24))
  {
    if (*(i + 48) == 1986618469 && *(i + 112))
    {
      FigRenderPipelineGetFigBaseObject();
      v6 = v5;
      VTable = CMBaseObjectGetVTable();
      v8 = *(VTable + 8);
      result = VTable + 8;
      v9 = *(v8 + 56);
      if (v9)
      {
        result = v9(v6, @"VideoEnhancementMode", a2);
      }
    }
  }

  return result;
}

uint64_t fpfsi_SeekToDateWithID(const __CFArray *a1, const void *a2, uint64_t a3)
{
  v36 = *MEMORY[0x1E69E9840];
  v30 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v7 = *DerivedStorage;
  CMBaseObjectGetDerivedStorage();
  v27 = 0;
  v28 = 0;
  v29 = 0;
  v8 = MEMORY[0x1E6960C70];
  value = *MEMORY[0x1E6960C70];
  timescale = *(MEMORY[0x1E6960C70] + 8);
  v26 = 0;
  v23 = a3 != 0;
  v9 = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  ++*(v9 + 8);
  if (!a2 || (v10 = CFGetTypeID(a2), v10 != CFDateGetTypeID()))
  {
    fpfsi_SeekToDateWithID_cold_3(&v32);
LABEL_36:
    value_low = v32;
    goto LABEL_37;
  }

  if (FigRetainProxyIsInvalidated())
  {
    fpfsi_SeekToDateWithID_cold_1(&v32);
    goto LABEL_36;
  }

  if (dword_1EAF169F0)
  {
    LODWORD(time1.value) = 0;
    LOBYTE(type.value) = 0;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  epoch = *(v8 + 16);
  v13 = *(DerivedStorage + 1576);
  if (v13)
  {
    v14 = CFRetain(v13);
    v15 = *(DerivedStorage + 1576);
    v16 = DerivedStorage + 1472;
    v32 = *(DerivedStorage + 1472);
    v33 = *(DerivedStorage + 1488);
    if (v15)
    {
      CFRelease(v15);
      *(DerivedStorage + 1576) = 0;
    }
  }

  else
  {
    v14 = 0;
    v16 = DerivedStorage + 1472;
    v32 = *(DerivedStorage + 1472);
    v33 = *(DerivedStorage + 1488);
  }

  *v16 = *v8;
  *(v16 + 16) = epoch;
  if (*(DerivedStorage + 912))
  {
    v17 = fpsi_TryDateSeekWithSeekID(a1, a2, &v30, &v27, a3, v23, &v26) == 0;
    value_low = v30;
    if (v30)
    {
LABEL_12:
      *(DerivedStorage + 1576) = v14;
      *v16 = v32;
      *(v16 + 16) = v33;
LABEL_37:
      fpfs_UnlockAndPostNotificationsWithCaller(v7);
      return value_low;
    }
  }

  else
  {
    v17 = 1;
  }

  flags = *(v8 + 12);
  if (!*(DerivedStorage + 912) || !v17)
  {
    goto LABEL_18;
  }

  if ((v28 & 0x100000000) != 0)
  {
    value = v27;
    timescale = v28;
    epoch = v29;
    flags = HIDWORD(v28);
LABEL_18:
    if (!v26)
    {
      v17 = 1;
    }

    if (v17)
    {
      v20 = *(DerivedStorage + 2220);
      if (v20 && v20 != a3)
      {
        fpfs_SeekDidFail();
      }

      *(DerivedStorage + 1576) = CFRetain(a2);
      *(DerivedStorage + 2220) = a3;
      *(DerivedStorage + 2240) = v23;
    }

    if (flags)
    {
      v21 = MEMORY[0x1E6960CC0];
      *(DerivedStorage + 224) = *MEMORY[0x1E6960CC0];
      *(DerivedStorage + 240) = *(v21 + 16);
      fpfs_GetTime(DerivedStorage, &time2);
      time1.value = value;
      time1.timescale = timescale;
      time1.flags = flags;
      time1.epoch = epoch;
      if (!CMTimeCompare(&time1, &time2))
      {
        CMTimeMake(&time1, 1, 90000);
        type.value = value;
        type.timescale = timescale;
        type.flags = flags;
        type.epoch = epoch;
        CMTimeAdd(&time2, &type, &time1);
        value = time2.value;
        flags = time2.flags;
        timescale = time2.timescale;
        epoch = time2.epoch;
      }
    }

    goto LABEL_28;
  }

  if (!fpfsi_SeekToDateWithID_cold_2(&time2))
  {
    value_low = LODWORD(time2.value);
    goto LABEL_12;
  }

LABEL_28:
  if (flags)
  {
    time2.value = value;
    time2.timescale = timescale;
    time2.flags = flags;
    time2.epoch = epoch;
    time1 = **&MEMORY[0x1E6960C80];
    type = **&MEMORY[0x1E6960C88];
    value_low = fpfsi_SetCurrentTimeWithRangeAndSeekIDGuts(a1, &time2, 0, &time1, &type.value, a3, 0, v23, 0, 0, 1, 1, 0, 1);
  }

  else
  {
    value_low = 0;
  }

  fpfs_UnlockAndPostNotificationsWithCaller(v7);
  if (v14)
  {
    CFRelease(v14);
  }

  return value_low;
}

uint64_t fpfs_applyAutoSelectionCriteria(const void *a1, char a2)
{
  v9 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v5 = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  ++*(v5 + 8);
  if (!*(DerivedStorage + 52) && *(DerivedStorage + 761))
  {
    v8 = a2;
    if (dword_1EAF169F0)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    fpfs_PlayQueueCallForEachItem(a1, fpfs_CreateAndApplyMediaArrayWithContext, &v8);
  }

  return fpfs_UnlockAndPostNotificationsWithCaller(a1);
}

uint64_t fpfs_applyAutoSelectionCriteriaOnItem(uint64_t result, uint64_t a2)
{
  if (!*(result + 52) && a2)
  {
    if (*(result + 761))
    {
      return fpfs_CreateAndApplyMediaArrayWithContext();
    }
  }

  return result;
}

const void *fpfsi_setVisualContextArray(uint64_t a1, const void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  result = FigStreamingItemCombinedVideoDestinationSetVisualContexts(*(DerivedStorage + 656), a2);
  if (result)
  {
    FigVisualContextGetTypeID(result, v5);
    FigStreamingItemCombinedVideoDestinationGetCountOfVisualContexts(*(DerivedStorage + 656));
    return fpfsi_handleVideoOutputsChanged();
  }

  return result;
}

uint64_t fpfsi_UpdateBandwidthCap(uint64_t a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v5 = *(a1 + 812);
  v6 = *(DerivedStorage + 2412);
  if (v5 >= v6)
  {
    v7 = *(DerivedStorage + 2412);
  }

  else
  {
    v7 = *(a1 + 812);
  }

  if (!v6)
  {
    v7 = *(a1 + 812);
  }

  if (v5)
  {
    v8 = v7;
  }

  else
  {
    v8 = *(DerivedStorage + 2412);
  }

  return fpfsi_ConfigurePlaybackMonitorForBandwidthCap(a2, v8);
}

uint64_t fpfs_isSupportedAudioProcessingTap(const void *a1, char *a2)
{
  if (!a1)
  {
    goto LABEL_6;
  }

  TypeID = MTAudioProcessingTapGetTypeID();
  if (TypeID != CFGetTypeID(a1))
  {
    result = 0;
    v6 = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_9;
  }

  if ((v5 = *(*(CMBaseObjectGetVTable() + 16) + 40)) != 0 && v5(a1) || MTAudioProcessingTapIsProxyTap(a1))
  {
LABEL_6:
    v6 = 0;
    result = 1;
    if (!a2)
    {
      return result;
    }
  }

  else
  {
    result = _os_feature_enabled_impl();
    v6 = 1;
    if (!a2)
    {
      return result;
    }
  }

LABEL_9:
  *a2 = v6;
  return result;
}

void fpfsi_setAudioProcessingTap(const __CFArray *a1, const void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v5 = *(DerivedStorage + 3128);
  if (v5 != a2)
  {
    v6 = DerivedStorage;
    v7 = *(DerivedStorage + 3136);
    *(v6 + 3136) = 0;
    if (v7)
    {
      CFRelease(v7);
      v5 = *(v6 + 3128);
    }

    *(v6 + 3128) = a2;
    if (a2)
    {
      CFRetain(a2);
    }

    if (v5)
    {
      CFRelease(v5);
    }

    v8 = *v6;

    fpfs_stopResetDisturbReprepareAndResume(v8, a1, 0);
  }
}

void fpfsi_setAudioProcessingUnits(const __CFArray *a1, const void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (FPSupport_AudioProcessingUnitsConfigurationsAreDifferent(a2, *(DerivedStorage + 3144)))
  {
    v5 = *(DerivedStorage + 3144);
    *(DerivedStorage + 3144) = a2;
    if (a2)
    {
      CFRetain(a2);
    }

    if (v5)
    {
      CFRelease(v5);
    }

    v6 = *DerivedStorage;

    fpfs_stopResetDisturbReprepareAndResume(v6, a1, 0);
  }
}

const void *fpfs_getPrev(uint64_t a1, const void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 80) == a2)
  {
    return 0;
  }

  v4 = DerivedStorage;
  v5 = *(DerivedStorage + 72);
  if (v5)
  {
    v6.length = CFArrayGetCount(v5);
    v5 = *(v4 + 72);
  }

  else
  {
    v6.length = 0;
  }

  v6.location = 0;
  FirstIndexOfValue = CFArrayGetFirstIndexOfValue(v5, v6, a2);
  if (!FirstIndexOfValue)
  {
    return *(v4 + 80);
  }

  v8 = FirstIndexOfValue - 1;
  if (FirstIndexOfValue < 1)
  {
    return 0;
  }

  v9 = *(v4 + 72);

  return CFArrayGetValueAtIndex(v9, v8);
}

void fpfsi_updateVideoSlotUsage(uint64_t a1, const __CFArray *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 672))
  {
    v5 = a2 == 0;
  }

  else
  {
    v5 = 1;
  }

  if (!v5)
  {
    v6 = DerivedStorage;
    Count = CFArrayGetCount(a2);
    if (Count >= 1)
    {
      v8 = Count;
      for (i = 0; i != v8; ++i)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(a2, i);
        if (ValueAtIndex)
        {
          v11 = ValueAtIndex;
          v12 = CFGetTypeID(ValueAtIndex);
          if (v12 == CFDictionaryGetTypeID())
          {
            Value = CFDictionaryGetValue(v11, @"SlotNumber");
            v14 = CFDictionaryGetValue(v11, @"UsedForScrubbingOnly");
            if (Value)
            {
              v15 = v14;
              if (v14)
              {
                v16 = *(v6 + 672);
                v26.length = CFArrayGetCount(v16);
                v26.location = 0;
                FirstIndexOfValue = CFArrayGetFirstIndexOfValue(v16, v26, Value);
                if (FirstIndexOfValue != -1)
                {
                  v18 = CFArrayGetValueAtIndex(*(v6 + 664), FirstIndexOfValue);
                  cf = 0;
                  v19 = fpfsi_copyCurrentVideoDestination(a1);
                  if (v19)
                  {
                    v20 = v19;
                    v21 = *(*(CMBaseObjectGetVTable() + 16) + 48);
                    if (v21)
                    {
                      v21(v20, v18, &cf);
                    }

                    CFRelease(v20);
                  }

                  if (cf)
                  {
                    FigImageQueueGetFigBaseObject();
                    v23 = v22;
                    v24 = *(*(CMBaseObjectGetVTable() + 8) + 56);
                    if (v24)
                    {
                      v24(v23, @"ForScrubbingOnly", v15);
                    }

                    CFRelease(cf);
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

double fpfsi_setPreferSDRVideo(uint64_t a1, int a2)
{
  v7 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 872) != a2)
  {
    *(DerivedStorage + 872) = a2;
    fpfsi_SwitchBetweenHDRAndSDR(a1, a2);
    if (dword_1EAF169F0)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }
  }

  return result;
}

void fpfsi_CheckSpeedRampCompatibility(uint64_t a1)
{
  CMBaseObjectGetDerivedStorage();
  if (*(CMBaseObjectGetDerivedStorage() + 968))
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    if (*(CMBaseObjectGetDerivedStorage() + 906) || DerivedStorage[404] || (v2 = DerivedStorage[405]) != 0 && CFArrayGetCount(v2))
    {
LABEL_10:
      fpfsi_CheckSpeedRampCompatibility_cold_1();
      return;
    }

    v3 = DerivedStorage[128];
    if (v3)
    {
      while (*(v3 + 48) == 1936684398)
      {
        v3 = *(v3 + 24);
        if (!v3)
        {
          return;
        }
      }

      goto LABEL_10;
    }
  }
}

uint64_t fpfsi_updateOverlapRangeOnAllRenderPipelines(uint64_t a1)
{
  result = CMBaseObjectGetDerivedStorage();
  for (i = *(result + 1024); i; i = *(i + 24))
  {
    result = *(i + 112);
    if (result)
    {
      result = fpfs_setPropertyOnPrimaryAndAuxRenderPipelines();
    }
  }

  return result;
}

void fpfsi_updatePriorImageQueueGaugeOnVideoRenderPipelines(uint64_t a1)
{
  v6 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v2 = fpfsi_copyPreviousImageQueueGauge();
  v3 = *(DerivedStorage + 1024);
  if (v3)
  {
    v4 = &unk_1EAF16000;
    do
    {
      if (*(v3 + 48) == 1986618469)
      {
        if (*(v3 + 112))
        {
          if (!*(v3 + 200))
          {
            fpfs_setPropertyOnPrimaryAndAuxRenderPipelines();
            if (v2)
            {
              if (v4[636])
              {
                os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
                os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
                fig_log_call_emit_and_clean_up_after_send_and_compose();
                v4 = &unk_1EAF16000;
              }
            }
          }
        }
      }

      v3 = *(v3 + 24);
    }

    while (v3);
  }

  if (v2)
  {
    CFRelease(v2);
  }
}

const __CFArray *fpfs_applyEQPreset(uint64_t a1, const __CFArray *Next, uint64_t a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v6 = DerivedStorage;
  if (Next || (v7 = fpfs_getNext(DerivedStorage, 0)) != 0)
  {
    v8 = CMBaseObjectGetDerivedStorage();
    v9 = *(v6 + 172);
    if (*(v8 + 848))
    {
      v9 = *(v8 + 848);
    }

    valuePtr = v9;
    v10 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
    if (a3)
    {
      if (*(a3 + 112) && *(a3 + 48) == 1936684398)
      {
        v7 = fpfs_setPropertyOnPrimaryAndAuxRenderPipelines();
LABEL_17:
        CFRelease(v10);
        return v7;
      }
    }

    else
    {
      v11 = *(v8 + 1024);
      if (v11)
      {
        do
        {
          if (*(v11 + 112) && *(v11 + 48) == 1936684398)
          {
            v7 = fpfs_setPropertyOnPrimaryAndAuxRenderPipelines();
          }

          else
          {
            v7 = 0;
          }

          v11 = *(v11 + 24);
        }

        while (v11);
        goto LABEL_17;
      }
    }

    v7 = 0;
    goto LABEL_17;
  }

  return v7;
}

uint64_t fpfs_ApplyMediaArray(const __CFArray *a1, const __CFArray *a2, int a3)
{
  v175 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  theArray = a2;
  Count = CFArrayGetCount(a2);
  CFStringForOSTypeValue = FigGetCFStringForOSTypeValue();
  v135 = FigGetCFStringForOSTypeValue();
  FigGetCFStringForOSTypeValue();
  cf2 = FigGetCFStringForOSTypeValue();
  v7 = *(DerivedStorage + 1680);
  v166 = 0;
  v167 = v7;
  v8 = *(DerivedStorage + 1768);
  AllocatorForMedia = FigGetAllocatorForMedia();
  v156 = DerivedStorage;
  if (v8)
  {
    MutableCopy = CFArrayCreateMutableCopy(AllocatorForMedia, 0, *(DerivedStorage + 1768));
    goto LABEL_4;
  }

  Mutable = CFArrayCreateMutable(AllocatorForMedia, 0, MEMORY[0x1E695E9C0]);
  MutableCopy = 0;
  *(DerivedStorage + 1768) = Mutable;
  if (Mutable)
  {
LABEL_4:
    v132 = a3;
    v142 = MutableCopy;
    if (Count >= 1)
    {
      v143 = 0;
      v134 = 0;
      v139 = 0;
      v136 = 0;
      v137 = 0;
      v12 = 0;
      v144 = 0;
      v145 = 0;
      v151 = 0;
      v141 = 0;
      v138 = 1;
      v146 = Count;
      while (1)
      {
        idx.value = 0;
        ValueAtIndex = CFArrayGetValueAtIndex(theArray, v12);
        Value = CFDictionaryGetValue(ValueAtIndex, @"MediaSelectionGroupMediaType");
        MediaTypeInMediaArray = fpfs_FindMediaTypeInMediaArray(*(DerivedStorage + 1768), Value, &idx);
        v16 = CFDictionaryGetValue(ValueAtIndex, @"MediaSelectionOptionsPersistentID");
        v17 = CFDictionaryGetValue(ValueAtIndex, @"MediaSelectionOptionsUniqueOutOfBandID");
        if (Value)
        {
          break;
        }

        *v163 = 0;
        LOBYTE(type.value) = 0;
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
        v28 = v146;
LABEL_77:
        if (v28 == ++v12)
        {
          v38 = HIDWORD(v136) == 0;
          v39 = v137 == 0;
          v40 = v143 == 0;
          v41 = v138 == 0;
          v42 = v136 == 0;
          v43 = v151 == 0;
          v44 = v139 != 0;
          v45 = v141 != 0;
          if (HIDWORD(v136) && v137)
          {
            fpfs_ApplyMediaArray_cold_1(&lhs);
            goto LABEL_172;
          }

          goto LABEL_82;
        }
      }

      v18 = v17;
      if (FigCFEqual())
      {
        *v163 = 0;
        LOBYTE(type.value) = 0;
        v97 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(v97, OS_LOG_TYPE_DEFAULT);
        v84 = v142;
        v86 = v144;
        v85 = v145;
        fig_log_call_emit_and_clean_up_after_send_and_compose();
        FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v129, v130, v131);
        value_low = v98;
        v49 = 0;
        if (v98)
        {
          goto LABEL_136;
        }

        goto LABEL_140;
      }

      if (MediaTypeInMediaArray)
      {
        v19 = CFDictionaryGetValue(MediaTypeInMediaArray, @"MediaSelectionOptionsPersistentID");
        if (v19)
        {
          v20 = CFRetain(v19);
        }

        else
        {
          v20 = 0;
        }

        v23 = CFDictionaryGetValue(MediaTypeInMediaArray, @"MediaSelectionOptionsUniqueOutOfBandID");
        if (v23)
        {
          v24 = CFRetain(v23);
        }

        else
        {
          v24 = 0;
        }

        cf = v24;
        if (FigCFEqual() && FigCFEqual())
        {
          v25 = FigCFCopyCompactDescription();
          if (dword_1EAF169F0)
          {
            *v163 = 0;
            LOBYTE(type.value) = 0;
            v26 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT);
            fig_log_call_emit_and_clean_up_after_send_and_compose();
          }

LABEL_71:
          if (v25)
          {
            CFRelease(v25);
          }

          if (v20)
          {
            CFRelease(v20);
          }

          v28 = v146;
          if (cf)
          {
            CFRelease(cf);
          }

          goto LABEL_77;
        }

        CFArrayRemoveValueAtIndex(*(DerivedStorage + 1768), idx.value);
        CFArrayAppendValue(*(DerivedStorage + 1768), ValueAtIndex);
        if (v18)
        {
          v27 = *(DerivedStorage + 880);
          *(DerivedStorage + 880) = ValueAtIndex;
          if (ValueAtIndex)
          {
            CFRetain(ValueAtIndex);
          }

          if (v27)
          {
            CFRelease(v27);
          }

LABEL_34:
          v141 = 1;
          goto LABEL_37;
        }

        if (v24)
        {
          v29 = *(DerivedStorage + 880);
          if (v29)
          {
            CFRelease(v29);
            *(DerivedStorage + 880) = 0;
          }

          goto LABEL_34;
        }

        cf = 0;
      }

      else
      {
        CFArrayAppendValue(*(DerivedStorage + 1768), ValueAtIndex);
        if (v18)
        {
          v22 = *(DerivedStorage + 880);
          *(DerivedStorage + 880) = ValueAtIndex;
          if (ValueAtIndex)
          {
            CFRetain(ValueAtIndex);
          }

          if (v22)
          {
            CFRelease(v22);
          }

          cf = 0;
          v20 = 0;
          goto LABEL_34;
        }

        cf = 0;
        v20 = 0;
      }

LABEL_37:
      v25 = FigCFCopyCompactDescription();
      v30 = v151;
      if (!(v16 | v18))
      {
        v30 = 1;
      }

      v151 = v30;
      if (!*(DerivedStorage + 1680))
      {
        goto LABEL_68;
      }

      if (!CFEqual(Value, cf2))
      {
        if (CFEqual(Value, v135) || CFEqual(Value, CFStringForOSTypeValue))
        {
          if (v20)
          {
            v32 = v16 == 0;
          }

          else
          {
            v32 = 1;
          }

          v33 = HIDWORD(v137);
          if (!v32)
          {
            v33 = 1;
          }

          HIDWORD(v137) = v33;
          if (v16)
          {
            v138 = 0;
            LODWORD(v136) = 1;
          }

          else
          {
            v34 = CFEqual(Value, v135);
            v138 = 0;
            if (v34)
            {
              v35 = 1;
            }

            else
            {
              v35 = v137;
            }

            v36 = HIDWORD(v136);
            if (!v34)
            {
              v36 = 1;
            }

            HIDWORD(v136) = v36;
            LODWORD(v137) = v35;
          }
        }

        else
        {
          HIDWORD(v137) = 1;
          v138 = 0;
        }

        goto LABEL_68;
      }

      ClosedCaptionGroupLocatorMap = FigAlternateGetClosedCaptionGroupLocatorMap(*(DerivedStorage + 1680));
      if (v20)
      {
        v145 = CFRetain(v20);
      }

      else
      {
        v145 = 0;
      }

      if (cf)
      {
        v144 = CFRetain(cf);
        if (!ClosedCaptionGroupLocatorMap)
        {
          goto LABEL_60;
        }
      }

      else
      {
        v144 = 0;
        if (!ClosedCaptionGroupLocatorMap)
        {
          goto LABEL_60;
        }
      }

      if (v16 && CFDictionaryContainsKey(ClosedCaptionGroupLocatorMap, v16))
      {
        v134 = 1;
LABEL_68:
        if (dword_1EAF169F0)
        {
          *v163 = 0;
          LOBYTE(type.value) = 0;
          v37 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT);
          fig_log_call_emit_and_clean_up_after_send_and_compose();
        }

        v143 = 1;
        goto LABEL_71;
      }

LABEL_60:
      v139 = 1;
      goto LABEL_68;
    }

    v41 = 0;
    v134 = 0;
    v44 = 0;
    BYTE4(v137) = 0;
    v144 = 0;
    v145 = 0;
    v45 = 0;
    v40 = 1;
    v38 = 1;
    v39 = 1;
    v43 = 1;
    v42 = 1;
LABEL_82:
    v46 = *(DerivedStorage + 1680);
    if (v46)
    {
      if (*(DerivedStorage + 1072) == 1 && !v39)
      {
        fpfs_ApplyMediaArray_cold_2(&lhs);
        goto LABEL_172;
      }

      if (FigAlternateIsAudioOnly(v46))
      {
        v47 = v38;
      }

      else
      {
        v47 = 1;
      }

      if ((v47 & 1) == 0)
      {
        fpfs_ApplyMediaArray_cold_3(&lhs);
        goto LABEL_172;
      }
    }

    if (v40)
    {
      value_low = 0;
      v49 = 0;
      v50 = 0;
LABEL_90:
      v51 = a1;
      goto LABEL_91;
    }

    fpfs_FindAndSetForcedSubtitle(DerivedStorage);
    if (!v41)
    {
      v89 = *(DerivedStorage + 1800);
      if (v89)
      {
        CFDictionaryGetValue(v89, @"MediaSelectionOptionsPersistentID");
        CFDictionaryGetValue(*(DerivedStorage + 1800), @"MediaSelectionOptionsUniqueOutOfBandID");
        if (FigCFEqual())
        {
          if (FigCFEqual())
          {
            v90 = v134;
            v51 = a1;
            if (v134 == 0 && !v44)
            {
              value_low = 0;
              v49 = 0;
              v50 = 0;
              goto LABEL_91;
            }

            if (*(DerivedStorage + 460))
            {
              fpfsi_postSelectedMediaOptionsDidChangeNotification(a1, v132);
              value_low = 0;
              v49 = 0;
              v50 = 0;
            }

            else
            {
              v119 = DerivedStorage;
              value_low = 0;
              v49 = 0;
              v50 = 0;
              *(v119 + 461) = 1;
            }

LABEL_225:
            if (v90)
            {
              if (*(v156 + 816))
              {
                fpfs_ApplyMediaArray_cold_5(a1);
              }

              if (dword_1EAF169F0)
              {
                LODWORD(idx.value) = 0;
                v163[0] = OS_LOG_TYPE_DEFAULT;
                v120 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
                v121 = idx.value;
                v122 = v163[0];
                if (os_log_type_enabled(v120, v163[0]))
                {
                  v123 = v121;
                }

                else
                {
                  v123 = v121 & 0xFFFFFFFE;
                }

                if (v123)
                {
                  v125 = *v156;
                  if (*v156)
                  {
                    v126 = (CMBaseObjectGetDerivedStorage() + 888);
                  }

                  else
                  {
                    v126 = "";
                  }

                  v127 = a1;
                  if (a1)
                  {
                    v128 = (CMBaseObjectGetDerivedStorage() + 3096);
                    v127 = a1;
                  }

                  else
                  {
                    v128 = "";
                  }

                  LODWORD(number.value) = 136316162;
                  *(&number.value + 4) = "fpfs_ApplyMediaArray";
                  LOWORD(number.flags) = 2048;
                  *(&number.flags + 2) = v125;
                  HIWORD(number.epoch) = 2082;
                  v169 = v126;
                  v170 = 2048;
                  v171 = v127;
                  v172 = 2082;
                  v173 = v128;
                  LODWORD(v130) = 52;
                  _os_log_send_and_compose_impl(v123, 0, &lhs, 128, &dword_1962D5000, v120, v122, "<<<< FigStreamPlayer >>>> %s: [%p|%{public}s] <%p|%{public}s>: enabling closed captions", &number, v130);
                }

                fig_log_call_emit_and_clean_up_after_send_and_compose();
              }
            }

            fpfs_updateClosedCaptionsDisplay();
            goto LABEL_90;
          }
        }
      }
    }

    v51 = a1;
    if (!*(DerivedStorage + 912) || !*(DerivedStorage + 1680))
    {
      value_low = 0;
      v49 = 0;
      v50 = 1;
      goto LABEL_91;
    }

    cfa = CMBaseObjectGetDerivedStorage();
    memset(&number, 0, sizeof(number));
    memset(&idx, 0, sizeof(idx));
    memset(v163, 0, sizeof(v163));
    v164 = 0;
    v152 = *(DerivedStorage + 2220);
    v153 = *(DerivedStorage + 1072);
    v162 = 0;
    v155 = *(DerivedStorage + 332);
    memset(&type, 0, sizeof(type));
    if (v42 || !*(DerivedStorage + 40))
    {
      goto LABEL_179;
    }

    v91 = CMBaseObjectGetDerivedStorage();
    lhs.value = 0;
    v92 = FigGetAllocatorForMedia();
    v93 = FigAlternateMediaSelectionAudibleFilterCreate(v92, *(v91 + 1768), &lhs);
    if (!v93)
    {
      v93 = FigAlternateSelectionBossAddFilter(*(v91 + 40), lhs.value);
      if (!v93)
      {
        v93 = fpfsi_SetupAlternateSelectionBossWithPreferPlaybackFromCache(a1);
        if (!v93)
        {
          v93 = fpfsi_CreateAndAddCombinedAudioPreferenceFilter(a1);
          if (!v93)
          {
            v93 = FigAlternateSelectionBossApplyFilters(*(v91 + 40));
          }
        }
      }
    }

    value_low = v93;
    if (lhs.value)
    {
      CFRelease(lhs.value);
    }

    if (value_low)
    {
LABEL_253:
      v49 = 0;
      goto LABEL_135;
    }

    v94 = *(DerivedStorage + 40);
    v95 = FigGetAllocatorForMedia();
    v96 = FigAlternateSelectionBossCopyProperty(v94, @"FilteredAlternateList", v95, &v166);
    if (v96)
    {
LABEL_252:
      value_low = v96;
      goto LABEL_253;
    }

    if (v166 && CFArrayGetCount(v166) > 0)
    {
      fpfsi_UpdateValidAlternateListAndSuggestAnAlternate();
      if (!v96)
      {
LABEL_179:
        v99 = FigBytePumpRetain(*(DerivedStorage + 912));
        v100 = DerivedStorage;
        v49 = v99;
        if (v167 == *(v100 + 1680))
        {
          v110 = FigGetCFStringForOSTypeValue();
          fpfs_FindMediaTypeInMediaArray(v142, v110, 0);
          v111 = FigCFDictionaryGetValue();
          CurrentAudioPersistentIDFromMediaOption = fpfsi_GetCurrentAudioPersistentIDFromMediaOption(a1);
          FigAlternateGetAudioInstreamID(v167, v111);
          AudioInstreamID = FigAlternateGetAudioInstreamID(v167, CurrentAudioPersistentIDFromMediaOption);
          if (AudioInstreamID)
          {
            v114 = AudioInstreamID;
            if (!FigCFEqual())
            {
              v115 = *(v156 + 1024);
              if (v115)
              {
                do
                {
                  if (*(v115 + 48) == 1936684398)
                  {
                    FigRenderPipelineGetFigBaseObject();
                    v117 = v116;
                    v118 = *(*(CMBaseObjectGetVTable() + 8) + 56);
                    if (v118)
                    {
                      v118(v117, @"SceneCompositionPreset", v114);
                    }
                  }

                  BYTE4(v137) = 0;
                  v115 = *(v115 + 24);
                }

                while (v115);
              }

              else
              {
                BYTE4(v137) = 0;
              }
            }
          }
        }

        if (BYTE4(v137) || (v155) && (fpfsi_pauseItem(a1), *(v156 + 464) = 0, (v155))
        {
          number = *(v156 + 320);
          type = number;
          idx = *(v156 + 344);
          v164 = *(v156 + 384);
          *v163 = *(v156 + 368);
          v101 = *(v156 + 392);
          theArraya = *(v156 + 2240);
        }

        else
        {
          fpfs_GetNextTimeToPlayIfEstablished(a1, &type);
          lhs = type;
          *&rhs.value = kSeekToCurrentFudge;
          rhs.epoch = 0;
          CMTimeSubtract(&number, &lhs, &rhs);
          theArraya = 0;
          idx = **&MEMORY[0x1E6960C80];
          *v163 = *MEMORY[0x1E6960C88];
          v164 = *(MEMORY[0x1E6960C88] + 16);
          v101 = 5;
        }

        fpfs_FlowControlPump(v156, 0xFFu, 0, 0);
        if (!v102)
        {
          v103 = *v156;
          lhs = **&MEMORY[0x1E6960C70];
          v102 = fpfs_SetAlternateWithContext(v103, a1, v167, 1u, &lhs, 0, &v162, 0, 9u);
          if (!v102)
          {
            if (!v38 && v153 == 1 && *(v156 + 1072) == 1)
            {
              value_low = 4294954514;
              goto LABEL_135;
            }

            if (*(v156 + 460))
            {
              fpfsi_postSelectedMediaOptionsDidChangeNotification(a1, v132);
            }

            else
            {
              *(v156 + 461) = 1;
            }

            if ((v155 & 1) == 0)
            {
              if ((~v153 & 3) != 0 || ((*(v156 + 1072) & 3) == 1 ? (v104 = v38) : (v104 = 0), !v104 || !v39))
              {
                CMTimeMake(&lhs, 50, 1000);
                v105 = cfa[27];
                if (v105 > 2.0 || v105 < 0.0)
                {
                  v107 = v156;
                  v106 = *(v156 + 2992) == 0;
                }

                else
                {
                  v106 = 0;
                  v107 = v156;
                }

                fpfsi_TrimFromAllTracks(v107, &lhs, v105 < 0.0, v106);
                if (v41)
                {
                  fpfs_DeleteTracksWhenSubstreamChanges(a1, v153, v162);
                  if (BYTE4(v137))
                  {
                    fpfs_setUnlikelyToKeepUpAndRanDry(a1);
                  }
                }

                else
                {
                  fpfs_DeleteAllTracksForSubstream(a1, 2);
                }

LABEL_207:
                fpfs_FlowControlPump(v156, 0, 1, 255);
                value_low = v108;
                v90 = v134;
                if (!v43)
                {
                  fpfs_PrepareAndEnqueueTracksChangedNotification(*v156, a1);
                }

                v109 = v134 != 0 || v44;
                v50 = 1;
                v51 = a1;
                if (v109)
                {
                  goto LABEL_225;
                }

LABEL_91:
                v52 = v51;
                v53 = CMBaseObjectGetDerivedStorage();
                v54 = CMBaseObjectGetDerivedStorage();
                v55 = v54;
                if ((v50 & v45 & 1) == 0)
                {
                  if (!*(v54 + 788))
                  {
                    fpfsi_clearOutOfBandSubtitleObjects(a1);
                  }

                  goto LABEL_133;
                }

                fpfsi_clearOutOfBandSubtitleObjects(v52);
                v56 = *(v53 + 880);
                if (!v56)
                {
                  goto LABEL_133;
                }

                if (*(v55 + 462))
                {
                  v57 = *(v55 + 463) != 0;
                  if (*(v55 + 788))
                  {
                    goto LABEL_100;
                  }
                }

                else
                {
                  v57 = 0;
                  if (*(v55 + 788))
                  {
                    goto LABEL_100;
                  }
                }

                if (!v57)
                {
                  goto LABEL_133;
                }

LABEL_100:
                v58 = CFDictionaryGetValue(v56, @"MediaSelectionOptionsURL");
                if (v58)
                {
                  v59 = v58;
                  if (FigCFStringFind())
                  {
                    v60 = FigGetAllocatorForMedia();
                    v61 = CFURLCreateWithString(v60, v59, 0);
                    if (v61)
                    {
                      v154 = v61;
                      v62 = CMBaseObjectGetDerivedStorage();
                      v63 = FigGetAllocatorForMedia();
                      v64 = CFDictionaryCreateMutable(v63, 3, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
                      if (v64)
                      {
                        v65 = v64;
                        if (*(v62 + 32))
                        {
                          lhs.value = 0;
                          number.value = 0;
                          v66 = FigGetAllocatorForMedia();
                          FigAssetGetCMBaseObject();
                          v68 = v67;
                          v69 = *(*(CMBaseObjectGetVTable() + 8) + 48);
                          if (v69)
                          {
                            v69(v68, @"assetProperty_CreationURL", v66, &lhs);
                            if (lhs.value)
                            {
                              CFDictionarySetValue(v65, @"ReferenceSecurityPolicyFlagBaseURL", lhs.value);
                              CFRelease(lhs.value);
                            }
                          }

                          v70 = FigGetAllocatorForMedia();
                          FigAssetGetCMBaseObject();
                          v72 = v71;
                          v73 = *(*(CMBaseObjectGetVTable() + 8) + 48);
                          if (v73)
                          {
                            v73(v72, @"assetProperty_CreationFlags", v70, &number);
                            if (number.value)
                            {
                              idx.value = 0;
                              CFNumberGetValue(number.value, kCFNumberSInt64Type, &idx);
                              CFRelease(number.value);
                              if (((LODWORD(idx.value) >> 1) & 0x1E) != 0)
                              {
                                FigCFDictionarySetInt32();
                              }
                            }
                          }
                        }

                        v74 = FigGetAllocatorForMedia();
                        v75 = (v53 + 888);
                        FigOutOfBandTrackControllerCreate(v74, v154, v65, (v53 + 888));
                        CFRelease(v65);
                        if (!*(v53 + 888))
                        {
                          goto LABEL_132;
                        }

                        CMNotificationCenterGetDefaultLocalCenter();
                        FigNotificationCenterAddWeakListener();
                        CMNotificationCenterGetDefaultLocalCenter();
                        FigNotificationCenterAddWeakListener();
                        fpfs_GetTime(v53, &lhs);
                        if ((lhs.flags & 0x1D) == 1)
                        {
                          v76 = *(v53 + 888);
                          fpfs_GetTime(v53, &number);
                          FigOutOfBandTrackControllerSetCurrentTime(v76, &number.value);
                        }

                        v77 = *(v53 + 1824);
                        if (v77)
                        {
                          FigOutOfBandTrackControllerSetProperty(*v75, @"TextMarkupArray", v77);
                        }

                        v78 = *(v53 + 1832);
                        if (v78)
                        {
                          FigOutOfBandTrackControllerSetProperty(*v75, @"TextHighlightArray", v78);
                        }

                        if (!v57)
                        {
LABEL_130:
                          if (!FigOutOfBandTrackControllerPrepare(*v75))
                          {
                            FigSyncMomentSourceCreateWithDispatchQueue(fpfsi_synchronizeOOBSController, a1, *(v53 + 576), *(v53 + 600), (v53 + 896));
                          }

LABEL_132:
                          CFRelease(v154);
                          goto LABEL_133;
                        }

                        LODWORD(number.value) = 0;
                        LODWORD(idx.value) = 0;
                        v79 = FigGetAllocatorForMedia();
                        v80 = CFDictionaryCreateMutable(v79, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
                        if (v80)
                        {
                          v81 = v80;
                          v82 = MEMORY[0x1E695E4D0];
                          if (!*(v55 + 462))
                          {
                            v82 = MEMORY[0x1E695E4C0];
                          }

                          CFDictionarySetValue(v80, @"Visuals", *v82);
                          if (*(v55 + 462))
                          {
                            CFDictionarySetValue(v81, @"NeroTransport", *(v55 + 488));
                          }

                          FigOutOfBandTrackControllerSetProperty(*v75, @"UsingNeroVideo", v81);
                          fpfsi_GetDimensions(a1, &number, &idx);
                          v176.width = *&number.value;
                          v176.height = *&idx.value;
                          DictionaryRepresentation = CGSizeCreateDictionaryRepresentation(v176);
                          if (DictionaryRepresentation)
                          {
                            FigOutOfBandTrackControllerSetProperty(*v75, @"NeroVideoDimensions", DictionaryRepresentation);
                          }

                          fpfs_setDisplaySizeOnOutOfBandSubtitleController(*v75, *(v55 + 464), *(v55 + 472));
                          FigOutOfBandTrackControllerSetProperty(*v75, @"NeroVideoGravity", *(v55 + 480));
                          if (DictionaryRepresentation)
                          {
                            CFRelease(DictionaryRepresentation);
                          }

                          CFRelease(v81);
                          goto LABEL_130;
                        }

                        fpfs_ApplyMediaArray_cold_6(&idx, &number);
                      }

                      else
                      {
                        fpfs_ApplyMediaArray_cold_7();
                      }
                    }
                  }
                }

LABEL_133:
                fpfs_updateCaptionOrSubtitleHintOnVideoPipeline(*v156);
                if (v50)
                {
                  fpfsi_UpdateEligibilityForEnhancedDialogue(a1);
                }

                goto LABEL_135;
              }
            }

            lhs = number;
            rhs = idx;
            v158 = *v163;
            v159 = v164;
            v102 = fpfsi_SetCurrentTimeWithRangeAndSeekIDGuts(a1, &lhs, v101, &rhs, &v158, v152, 0, theArraya, 0, 0, 1, 1, 0, 0);
            if (!v102)
            {
              goto LABEL_207;
            }
          }
        }

        value_low = v102;
LABEL_135:
        v84 = v142;
        v86 = v144;
        v85 = v145;
        if (!value_low)
        {
          goto LABEL_140;
        }

LABEL_136:
        v87 = *(v156 + 1768);
        *(v156 + 1768) = v84;
        if (v84)
        {
          CFRetain(v84);
        }

        if (v87)
        {
          goto LABEL_139;
        }

LABEL_140:
        if (v84)
        {
          CFRelease(v84);
        }

        if (v85)
        {
          CFRelease(v85);
        }

        if (v86)
        {
          CFRelease(v86);
        }

        goto LABEL_146;
      }

      goto LABEL_252;
    }

    fpfs_ApplyMediaArray_cold_4(&lhs);
LABEL_172:
    v49 = 0;
    value_low = LODWORD(lhs.value);
    goto LABEL_135;
  }

  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v129, v130, v131);
  value_low = v124;
  if (v124)
  {
    v84 = 0;
    v86 = 0;
    v85 = 0;
    v49 = 0;
    v87 = *(v156 + 1768);
    *(v156 + 1768) = 0;
    if (!v87)
    {
      goto LABEL_140;
    }

LABEL_139:
    CFRelease(v87);
    goto LABEL_140;
  }

  v49 = 0;
LABEL_146:
  if (v166)
  {
    CFRelease(v166);
  }

  if (v49)
  {
    CFRelease(v49);
  }

  return value_low;
}

void fpfs_DeleteAllTracksForSubstream(const void *a1, int a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v5 = *(DerivedStorage + 1024);
  if (v5)
  {
    v6 = DerivedStorage;
    v7 = 0;
    do
    {
      v8 = *(v5 + 24);
      if (*(v5 + 196) == a2)
      {
        if (*(v5 + 48) == 1986618469)
        {
          v7 = 1;
        }

        fpfs_DeleteTrack(a1, v5);
      }

      if (!v8)
      {
        break;
      }

      v5 = v8;
    }

    while (*(v6 + 1024));
    if (v7)
    {
      *(v6 + 528) = 1;

      fpfsi_ClearCachedVideoRenderChains(a1);
    }
  }
}

void fpfs_DeleteTracksWhenSubstreamChanges(const void *a1, char a2, char a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a3)
  {
    fpfs_DeleteAllTracksForSubstream(a1, 0);
    if ((a3 & 2) == 0)
    {
LABEL_3:
      if ((a3 & 4) == 0)
      {
        return;
      }

      goto LABEL_15;
    }
  }

  else if ((a3 & 2) == 0)
  {
    goto LABEL_3;
  }

  if ((a2 & 3) == 1 && (*(DerivedStorage + 1072) & 2) != 0)
  {
    v7 = *(DerivedStorage + 1024);
    if (v7)
    {
      do
      {
        v8 = *(v7 + 24);
        if (!*(v7 + 196) && *(v7 + 48) == 1936684398)
        {
          fpfs_DeleteTrack(a1, v7);
        }

        if (!v8)
        {
          break;
        }

        v7 = v8;
      }

      while (*(DerivedStorage + 1024));
    }
  }

  fpfs_DeleteAllTracksForSubstream(a1, 1);
  if ((a3 & 4) != 0)
  {
LABEL_15:

    fpfs_DeleteAllTracksForSubstream(a1, 2);
  }
}

uint64_t fpfs_updateCaptionOrSubtitleHintOnVideoPipeline(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  result = *(DerivedStorage + 80);
  if (result)
  {
    result = CMBaseObjectGetDerivedStorage();
    if (*(DerivedStorage + 80))
    {
      for (i = *(result + 1024); i; i = *(i + 24))
      {
        if (*(i + 48) == 1986618469)
        {
          result = *(i + 112);
          if (result)
          {
            result = fpfs_setPropertyOnPrimaryAndAuxRenderPipelines();
          }
        }
      }
    }
  }

  return result;
}

void fpfs_setDisplaySizeOnOutOfBandSubtitleController(uint64_t a1, double a2, double a3)
{
  DictionaryRepresentation = CGSizeCreateDictionaryRepresentation(*&a2);
  if (DictionaryRepresentation)
  {
    v5 = DictionaryRepresentation;
    FigOutOfBandTrackControllerSetProperty(a1, @"NeroDisplaySize", DictionaryRepresentation);

    CFRelease(v5);
  }
}

uint64_t fpfsi_synchronizeOOBSController(uint64_t a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  result = FigRetainProxyIsInvalidated();
  if (!result)
  {
    if (a2)
    {
      result = *(DerivedStorage + 888);
      if (result)
      {
        if ((*(a2 + 4) & 3) != 0)
        {
          v5 = *(a2 + 8);
          v8 = *(a2 + 16);
          v9 = *(a2 + 32);
          v6 = *(a2 + 40);
          v7 = *(a2 + 56);
          return FigOutOfBandTrackControllerSetRateAndAnchorTime(result, &v8, &v6, v5);
        }
      }
    }
  }

  return result;
}

uint64_t fpfsi_SetCurrentL3TimeWithRangeAndSeekIDGuts(const __CFArray *a1, CMTime *a2, unsigned int a3, CMTime *a4, CMTime *a5, uint64_t a6, const void *a7, int a8)
{
  v15 = *CMBaseObjectGetDerivedStorage();
  v29 = *MEMORY[0x1E6960C70];
  v30 = *(MEMORY[0x1E6960C70] + 16);
  v27 = v29;
  v28 = v30;
  v25 = v29;
  v26 = v30;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  ++*(DerivedStorage + 8);
  if (FigRetainProxyIsInvalidated())
  {
    fpfsi_SetCurrentL3TimeWithRangeAndSeekIDGuts_cold_1(&v24);
    value_low = LODWORD(v24.value);
  }

  else
  {
    v24 = *a2;
    FPSTimelineConverterL3TimeToL2(&v24, &v29);
    v24 = *a4;
    FPSTimelineConverterL3TimeToL2(&v24, &v27);
    v24 = *a5;
    FPSTimelineConverterL3TimeToL2(&v24, &v25);
    *&v24.value = v29;
    v24.epoch = v30;
    v22 = v27;
    v23 = v28;
    v20 = v25;
    v21 = v26;
    value_low = fpfsi_SetCurrentTimeWithRangeAndSeekIDGuts(a1, &v24, a3, &v22, &v20, a6, a7, a8, 1, 0, 1, 1, 0, 1);
  }

  fpfs_UnlockAndPostNotificationsWithCaller(v15);
  return value_low;
}

uint64_t fpfsi_vtable_GetCurrentTime(uint64_t a1, __n128 *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v4 = *DerivedStorage;
  v13 = *MEMORY[0x1E6960C70];
  v14 = *(MEMORY[0x1E6960C70] + 16);
  v11 = v13;
  v12 = v14;
  if (a2)
  {
    v5 = DerivedStorage;
    v6 = CMBaseObjectGetDerivedStorage();
    FigSimpleMutexLock();
    ++*(v6 + 8);
    if (FigRetainProxyIsInvalidated())
    {
      fpfsi_vtable_GetCurrentTime_cold_1(&v9);
      v7 = v9.n128_u32[0];
    }

    else
    {
      fpfs_GetNextTimeToPlay(v5, 0, &v13);
      v9 = v13;
      v10 = v14;
      FPSTimelineConverterL2TimeToL3(&v9, &v11);
      v7 = 0;
      *a2 = v11;
      a2[1].n128_u64[0] = v12;
    }

    fpfs_UnlockAndPostNotificationsWithCaller(v4);
  }

  else
  {
    fpfsi_vtable_GetCurrentTime_cold_2(&v9);
    return v9.n128_u32[0];
  }

  return v7;
}

void fpfsi_CopyTrackProperty(uint64_t a1, int a2, const void *a3, const __CFAllocator *a4, __CFArray **a5)
{
  v57 = *MEMORY[0x1E69E9840];
  if (!a1 || !a3 || !a5)
  {
    v11 = qword_1EAF169E8;
    v12 = v5;
    v13 = 4294954516;
    v14 = 58573;
    goto LABEL_7;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (FigRetainProxyIsInvalidated())
  {
    v11 = qword_1EAF169E8;
    v12 = v5;
    v13 = 4294954511;
    v14 = 58577;
LABEL_7:

    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v11, v13, "<<<< FigStreamPlayer >>>>", v14, v12);
    return;
  }

  v15 = *DerivedStorage;
  v16 = DerivedStorage[21];
  LODWORD(v50) = a2;
  theDict[0] = 0;
  v17 = MEMORY[0x1E695E480];
  if (!v16)
  {
LABEL_23:
    v50 = 0;
    v23 = CMBaseObjectGetDerivedStorage();
    FigSimpleMutexLock();
    ++*(v23 + 8);
    v24 = a2;
    fpfs_GetItemLivingTrack(DerivedStorage, a2, &v50);
    v25 = v50;
    if (!v50)
    {
      v25 = DerivedStorage[132];
      if (!v25)
      {
        goto LABEL_96;
      }

      while (*(v25 + 32) != v24)
      {
        v25 = *(v25 + 24);
        if (!v25)
        {
          goto LABEL_96;
        }
      }

      v50 = v25;
    }

    if (CFEqual(a3, @"FormatDescriptionArray"))
    {
      v27 = *(v25 + 56);
      v26 = (v25 + 56);
      if (v27)
      {
        v28 = CFArrayCreate(a4, v26, 1, MEMORY[0x1E695E9C0]);
        *a5 = v28;
        if (!v28)
        {
          FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF169E8, 4294954510, "<<<< FigStreamPlayer >>>>", 58610, v5);
        }
      }

      goto LABEL_96;
    }

    if (CFEqual(a3, @"Dimensions"))
    {
      width = 0.0;
      height = 0.0;
      if (*(v25 + 48) == 1986618469)
      {
        Dimensions = CMVideoFormatDescriptionGetDimensions(*(v25 + 56));
        width = Dimensions.width;
        height = Dimensions.height;
      }

      v51 = height;
      valuePtr = width;
      *keys = xmmword_1E7476B38;
      v32 = *v17;
      v33 = CFNumberCreate(*v17, kCFNumberFloat32Type, &valuePtr);
      theDict[0] = v33;
      v34 = CFNumberCreate(v32, kCFNumberFloat32Type, &v51);
      theDict[1] = v34;
      if (v33)
      {
        v35 = v34 == 0;
      }

      else
      {
        v35 = 1;
      }

      if (v35)
      {
        v36 = 0;
        if (!v33)
        {
          goto LABEL_42;
        }
      }

      else
      {
        v36 = CFDictionaryCreate(a4, keys, theDict, 2, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
        v33 = theDict[0];
        if (!theDict[0])
        {
LABEL_42:
          if (theDict[1])
          {
            CFRelease(theDict[1]);
          }

          *a5 = v36;
          if (!v36)
          {
            FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF169E8, 4294954510, "<<<< FigStreamPlayer >>>>", 58624, v5);
          }

          goto LABEL_96;
        }
      }

      CFRelease(v33);
      goto LABEL_42;
    }

    if (CFEqual(a3, @"EstimatedDataRate"))
    {
      v37 = *(v25 + 64);
      if (v37)
      {
        FigManifoldCopyTrackProperty(v37, *(v25 + 40), @"FMFD_TrackEstimatedDataRate", a4, a5);
      }

      goto LABEL_96;
    }

    if (CFEqual(a3, @"NominalFrameRate") || CFEqual(a3, @"CurrentVideoFrameRate"))
    {
      v38 = *(v25 + 112);
      if (!v38 || !*(v38 + 32))
      {
        goto LABEL_96;
      }

      v39 = kFigRenderPipelineProperty_CurrentVideoFrameRate;
      goto LABEL_56;
    }

    if (CFEqual(a3, @"Matrix"))
    {
      v42 = *(v25 + 72);
      if (v42)
      {
        Copy = CFArrayCreateCopy(a4, v42);
      }

      else
      {
        v45 = *(MEMORY[0x1E695EFD0] + 16);
        *theDict = *MEMORY[0x1E695EFD0];
        v54 = v45;
        v55 = *(MEMORY[0x1E695EFD0] + 32);
        Copy = FigCreate3x3MatrixArrayFromCGAffineTransform(a4, theDict);
      }

      if (!Copy)
      {
        fpfsi_CopyTrackProperty_cold_3(theDict);
        goto LABEL_96;
      }

      goto LABEL_65;
    }

    if (CFEqual(a3, @"Enabled"))
    {
      v44 = *MEMORY[0x1E695E4D0];
      goto LABEL_62;
    }

    if (CFEqual(a3, @"MediaCharacteristicArray"))
    {
      *theDict = fpfsi_CopyTrackProperty_trackInformationCallbacks;
      v54 = unk_1F0AD95F8;
      *&v55 = off_1F0AD9608;
      FigMediaCharacteristicsCopyMediaCharacteristicsWithTrackCallbacks(a4, v25, theDict, a5);
      goto LABEL_96;
    }

    if (CFEqual(a3, @"EffectiveLoudnessInfo"))
    {
      if (*(v25 + 48) == 1936684398)
      {
        fpfsi_copyLoudnessInfoWithItemMediaKindAndLID(DerivedStorage, v25, a5);
      }

      else
      {
        FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF169E8, 4294954516, "<<<< FigStreamPlayer >>>>", 58682, v5);
      }

      goto LABEL_96;
    }

    if (CFEqual(a3, @"EffectiveEQPreset"))
    {
      if (*(v25 + 48) != 1936684398)
      {
        goto LABEL_96;
      }

      v46 = *(v25 + 112);
      if (!v46 || !*(v46 + 32))
      {
        goto LABEL_96;
      }

      v39 = kFigAudioRenderPipelineProperty_EQPreset;
    }

    else if (CFEqual(a3, @"WillTrimShortDurationAudioSamples"))
    {
      if (*(v25 + 48) != 1936684398)
      {
        goto LABEL_96;
      }

      v47 = *(v25 + 112);
      if (!v47 || !*(v47 + 32))
      {
        goto LABEL_96;
      }

      v39 = kFigAudioRenderPipelineProperty_WillTrimShortDurationSamples;
    }

    else
    {
      if (!CFEqual(a3, @"EmploysHardwarePassthrough"))
      {
        if (!CFEqual(a3, @"RenderPipeline"))
        {
          if (!CFEqual(a3, @"TrackCachedSampleCount"))
          {
            goto LABEL_96;
          }

          CMBufferQueueGetBufferCount(*(v25 + 96));
          Copy = FigCFNumberCreateSInt64();
          goto LABEL_65;
        }

        v49 = *(v25 + 112);
        if (!v49)
        {
          goto LABEL_96;
        }

        v44 = *(v49 + 32);
        if (!v44)
        {
          goto LABEL_96;
        }

LABEL_62:
        Copy = CFRetain(v44);
LABEL_65:
        *a5 = Copy;
        goto LABEL_96;
      }

      if (*(v25 + 48) != 1936684398)
      {
        goto LABEL_96;
      }

      v48 = *(v25 + 112);
      if (!v48 || !*(v48 + 32))
      {
        goto LABEL_96;
      }

      v39 = kFigAudioRenderPipelineProperty_EmploysHardwarePassthrough;
    }

LABEL_56:
    v40 = *v39;
    FigRenderPipelineGetFigBaseObject();
    CMBaseObjectCopyProperty(v41, v40, a4, a5);
LABEL_96:
    fpfs_UnlockAndPostNotificationsWithCaller(v15);
    return;
  }

  v18 = FigPropertyStorageCopyValue(v16, @"TrackPropertyStorages", theDict);
  if (v18)
  {
    v22 = v18;
    goto LABEL_20;
  }

  if (!theDict[0])
  {
    fpfsi_CopyTrackProperty_cold_2(keys);
LABEL_69:
    v22 = keys[0];
    goto LABEL_20;
  }

  v19 = CFNumberCreate(*v17, kCFNumberSInt32Type, &v50);
  if (!v19)
  {
    fpfsi_CopyTrackProperty_cold_1(keys);
    goto LABEL_69;
  }

  v20 = v19;
  Value = CFDictionaryGetValue(theDict[0], v19);
  CFRelease(v20);
  v22 = -12784;
  if (Value)
  {
    v22 = CFDictionaryGetValueIfPresent(Value, a3, a5) ? 0 : -12784;
    if (*a5)
    {
      CFRetain(*a5);
    }
  }

LABEL_20:
  if (theDict[0])
  {
    CFRelease(theDict[0]);
  }

  if (v22)
  {
    goto LABEL_23;
  }
}

uint64_t fpfsi_vtable_SetCurrentTimeWithRange(const __CFArray *a1, CMTime *a2, unsigned int a3, CMTime *a4, CMTime *a5)
{
  v8 = *a2;
  v7 = *a4;
  v6 = *a5;
  return fpfsi_SetCurrentL3TimeWithRangeAndSeekIDGuts(a1, &v8, a3, &v7, &v6, 0, 0, 0);
}

uint64_t fpfsi_vtable_SetCurrentTimeWithRangeAndSeekID(const __CFArray *a1, CMTime *a2, unsigned int a3, CMTime *a4, CMTime *a5, uint64_t a6)
{
  v9 = *a2;
  v8 = *a4;
  v7 = *a5;
  return fpfsi_SetCurrentL3TimeWithRangeAndSeekIDGuts(a1, &v9, a3, &v8, &v7, a6, 0, 0);
}

uint64_t fpfsi_CopyAsset(uint64_t a1, void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v4 = *DerivedStorage;
  v5 = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  ++*(v5 + 8);
  if (FigRetainProxyIsInvalidated())
  {
    fpfsi_CopyAsset_cold_1(&v9);
    v7 = v9;
  }

  else
  {
    v6 = *(DerivedStorage + 32);
    if (v6)
    {
      v6 = CFRetain(v6);
    }

    v7 = 0;
    *a2 = v6;
  }

  fpfs_UnlockAndPostNotificationsWithCaller(v4);
  return v7;
}

uint64_t fpfsi_vtable_SetCurrentTimeWithOptions(const __CFArray *a1, CMTime *a2, uint64_t a3)
{
  v8 = *a2;
  v12 = 0;
  v11 = **&MEMORY[0x1E6960C70];
  v10 = v11;
  v9 = 0;
  FigCFDictionaryGetInt32IfPresent();
  FigCFDictionaryGetCMTimeIfPresent();
  FigCFDictionaryGetCMTimeIfPresent();
  FigCFDictionaryGetInt32IfPresent();
  Value = FigCFDictionaryGetValue();
  FigCFDictionaryGetInt32IfPresent();
  v7 = v11;
  v6 = v11;
  return fpfsi_SetCurrentL3TimeWithRangeAndSeekIDGuts(a1, &v8, 0, &v7, &v6, 0, Value, 0);
}

uint64_t FigManifoldCopyTrackProperty(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = *(*(CMBaseObjectGetVTable() + 16) + 48);
  if (!v10)
  {
    return 4294954514;
  }

  return v10(a1, a2, a3, a4, a5);
}

uint64_t fpfsi_CopyFormatDescriptions(uint64_t a1, CFAllocatorRef allocator, CFArrayRef *a3)
{
  values = *(a1 + 56);
  if (values)
  {
    v4 = CFArrayCreate(allocator, &values, 1, MEMORY[0x1E695E9C0]);
  }

  else
  {
    v4 = 0;
  }

  *a3 = v4;
  return 0;
}

uint64_t fpfsi_TrimAudioInQueue(opaqueCMSampleBuffer *a1, uint64_t a2)
{
  v157 = *MEMORY[0x1E69E9840];
  v3 = *a2;
  v4 = *(a2 + 8);
  v153 = *(a2 + 12);
  v154 = *(a2 + 20);
  v5 = *(a2 + 24);
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  memset(&v79, 0, sizeof(v79));
  CMSampleBufferGetPresentationTimeStamp(&v79, a1);
  v152 = 0;
  v151 = 0;
  v148 = 0;
  v147 = 0;
  memset(&v78, 0, sizeof(v78));
  CMSampleBufferGetOutputPresentationTimeStamp(&v78, a1);
  IsMarkerOnly = fpfs_IsMarkerOnly(a1);
  result = 0;
  if (IsMarkerOnly)
  {
    return result;
  }

  time1 = v78;
  time2.value = v3;
  *&time2.flags = v153;
  time2.timescale = v4;
  HIDWORD(time2.epoch) = v154;
  if (!CMTimeCompare(&time1, &time2))
  {
    return 0xFFFFFFFFLL;
  }

  v73 = DerivedStorage;
  fpfs_GetEndOutputPresentationTimeStamp(a1, &time1);
  value = time1.value;
  v149 = *&time1.flags;
  timescale = time1.timescale;
  epoch_high = HIDWORD(time1.epoch);
  v145 = v153;
  v146 = v154;
  v67 = CMBaseObjectGetDerivedStorage();
  memset(&v84, 0, sizeof(v84));
  v9 = MEMORY[0x1E6960CC0];
  v155 = *(MEMORY[0x1E6960CC0] + 12);
  v156 = *(MEMORY[0x1E6960CC0] + 20);
  memset(&v83, 0, sizeof(v83));
  CMSampleBufferGetOutputPresentationTimeStamp(&v83, a1);
  memset(&v82, 0, sizeof(v82));
  fpfs_GetEndOutputPresentationTimeStamp(a1, &v82);
  v77 = **&MEMORY[0x1E6960C70];
  v10 = *MEMORY[0x1E6960560];
  v11 = CMGetAttachment(a1, *MEMORY[0x1E6960560], 0);
  if (v11)
  {
    CMTimeMakeFromDictionary(&time1, v11);
    v12 = time1.value;
    v155 = *&time1.flags;
    v13 = time1.timescale;
    v156 = HIDWORD(time1.epoch);
  }

  else
  {
    v12 = *v9;
    v13 = *(v9 + 8);
  }

  time1 = v83;
  time2.value = v12;
  *&time2.flags = v155;
  time2.timescale = v13;
  HIDWORD(time2.epoch) = v156;
  CMTimeSubtract(&v84, &time1, &time2);
  time1.value = v3;
  *&time1.flags = v153;
  time1.timescale = v4;
  HIDWORD(time1.epoch) = v154;
  time2 = v84;
  v14 = v4;
  v15 = v3;
  if (CMTimeCompare(&time1, &time2) < 0)
  {
    v15 = v84.value;
    v145 = *&v84.flags;
    v14 = v84.timescale;
    v146 = HIDWORD(v84.epoch);
  }

  time1.value = v15;
  *&time1.flags = v145;
  time1.timescale = v14;
  HIDWORD(time1.epoch) = v146;
  time2 = v82;
  if (CMTimeCompare(&time1, &time2) >= 1)
  {
    v15 = v82.value;
    v14 = v82.timescale;
    v145 = *&v82.flags;
    v146 = HIDWORD(v82.epoch);
  }

  time1.value = v15;
  *&time1.flags = v145;
  time1.timescale = v14;
  HIDWORD(time1.epoch) = v146;
  time2 = v84;
  CMTimeSubtract(&v77, &time1, &time2);
  time1 = v77;
  v71 = v12;
  time2.value = v12;
  *&time2.flags = v155;
  time2.timescale = v13;
  HIDWORD(time2.epoch) = v156;
  if (CMTimeCompare(&time1, &time2))
  {
    time1 = v77;
    time2 = **&MEMORY[0x1E6960CC0];
    if (CMTimeCompare(&time1, &time2))
    {
      AllocatorForMedia = FigGetAllocatorForMedia();
      time1 = v77;
      v17 = CMTimeCopyAsDictionary(&time1, AllocatorForMedia);
      if (!v17)
      {
        goto LABEL_41;
      }

      v18 = v17;
      CMSetAttachment(a1, v10, v17, 1u);
      CFRelease(v18);
      time1.value = v15;
      *&time1.flags = v145;
      time1.timescale = v14;
      HIDWORD(time1.epoch) = v146;
      CMSampleBufferSetOutputPresentationTimeStamp(a1, &time1);
      if (dword_1EAF169F0 < 5)
      {
        goto LABEL_41;
      }

      v81 = 0;
      type = OS_LOG_TYPE_DEFAULT;
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v20 = v81;
      v64 = type;
      if (os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, type))
      {
        v21 = v20;
      }

      else
      {
        v21 = v20 & 0xFFFFFFFE;
      }

      if (v21)
      {
        v22 = *v67;
        if (*v67)
        {
          v23 = (CMBaseObjectGetDerivedStorage() + 888);
        }

        else
        {
          v23 = "";
        }

        v68 = v23;
        v61 = os_log_and_send_and_compose_flags_and_os_log_type;
        if (v5)
        {
          v30 = (CMBaseObjectGetDerivedStorage() + 3096);
        }

        else
        {
          v30 = "";
        }

        v59 = v30;
        v31 = v77.value;
        v57 = v77.timescale;
        time1 = v77;
        Seconds = CMTimeGetSeconds(&time1);
        time1.value = v71;
        *&time1.flags = v155;
        time1.timescale = v13;
        HIDWORD(time1.epoch) = v156;
        v33 = CMTimeGetSeconds(&time1);
        LODWORD(time2.value) = 136317954;
        *(&time2.value + 4) = "fpfs_TrimBufferAtStartToTime";
        LOWORD(time2.flags) = 2048;
        *(&time2.flags + 2) = v22;
        HIWORD(time2.epoch) = 2082;
        v128 = v68;
        v129 = 2048;
        v130 = v5;
        v131 = 2082;
        v132 = v59;
        v133 = 2048;
        v134 = v31;
        v135 = 1024;
        *v136 = v57;
        *&v136[4] = 2048;
        *&v136[6] = Seconds;
        v137 = 2048;
        v138 = *&a1;
        v139 = 2048;
        v140 = v71;
        v141 = 1024;
        v142 = v13;
        v143 = 2048;
        v144 = v33;
        _os_log_send_and_compose_impl(v21, 0, &time1, 128, &dword_1962D5000, v61, v64, "<<<< FigStreamPlayer >>>> %s: [%p|%{public}s] <%p|%{public}s>: trim {%lld/%d=%1.3f} from start of sbuf %p (oldTrim {%lld/%d=%1.3f})", &time2, 114);
      }
    }

    else
    {
      CMRemoveAttachment(a1, v10);
      if (dword_1EAF169F0 < 5)
      {
        goto LABEL_41;
      }

      v81 = 0;
      type = OS_LOG_TYPE_DEFAULT;
      v24 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v25 = v81;
      v26 = type;
      v65 = v24;
      if (os_log_type_enabled(v24, type))
      {
        v27 = v25;
      }

      else
      {
        v27 = v25 & 0xFFFFFFFE;
      }

      if (v27)
      {
        v28 = *v67;
        if (*v67)
        {
          v29 = (CMBaseObjectGetDerivedStorage() + 888);
        }

        else
        {
          v29 = "";
        }

        v69 = v29;
        if (v5)
        {
          v34 = (CMBaseObjectGetDerivedStorage() + 3096);
        }

        else
        {
          v34 = "";
        }

        v62 = v34;
        time1.value = v71;
        *&time1.flags = v155;
        time1.timescale = v13;
        HIDWORD(time1.epoch) = v156;
        v35 = CMTimeGetSeconds(&time1);
        LODWORD(time2.value) = 136317186;
        *(&time2.value + 4) = "fpfs_TrimBufferAtStartToTime";
        LOWORD(time2.flags) = 2048;
        *(&time2.flags + 2) = v28;
        HIWORD(time2.epoch) = 2082;
        v128 = v69;
        v129 = 2048;
        v130 = v5;
        v131 = 2082;
        v132 = v62;
        v133 = 2048;
        v134 = a1;
        v135 = 2048;
        *v136 = v71;
        *&v136[8] = 1024;
        *&v136[10] = v13;
        v137 = 2048;
        v138 = v35;
        _os_log_send_and_compose_impl(v27, 0, &time1, 128, &dword_1962D5000, v65, v26, "<<<< FigStreamPlayer >>>> %s: [%p|%{public}s] <%p|%{public}s>: remove trim from start of sbuf %p (oldTrim {%lld/%d=%1.3f})", &time2, 88);
      }
    }

    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

LABEL_41:
  v36 = v77.value;
  v37 = v77.timescale;
  v151 = *&v77.flags;
  v152 = HIDWORD(v77.epoch);
  CMSampleBufferGetOutputPresentationTimeStamp(&time1, a1);
  v38 = time1.value;
  v147 = *&time1.flags;
  v39 = time1.timescale;
  v148 = HIDWORD(time1.epoch);
  CMSampleBufferGetOutputDuration(&time1, a1);
  time2 = **&MEMORY[0x1E6960CC0];
  if (!CMTimeCompare(&time1, &time2))
  {
    time1.value = v38;
    *&time1.flags = v147;
    time1.timescale = v39;
    HIDWORD(time1.epoch) = v148;
    time2.value = v3;
    *&time2.flags = v153;
    time2.timescale = v4;
    HIDWORD(time2.epoch) = v154;
    if (CMTimeCompare(&time1, &time2) < 0)
    {
      v147 = v153;
      v148 = v154;
      time1.value = v3;
      *&time1.flags = v153;
      time1.timescale = v4;
      HIDWORD(time1.epoch) = v154;
      CMSampleBufferSetOutputPresentationTimeStamp(a1, &time1);
      v38 = v3;
      v39 = v4;
    }
  }

  if (dword_1EAF169F0 >= 5)
  {
    LODWORD(v84.value) = 0;
    LOBYTE(v83.value) = 0;
    v40 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    v41 = v84.value;
    v72 = v40;
    value_low = LOBYTE(v83.value);
    v42 = os_log_type_enabled(v40, v83.value);
    v43 = v41 & 0xFFFFFFFE;
    if (v42)
    {
      v43 = v41;
    }

    if (v43)
    {
      v66 = v43;
      v44 = v37;
      v45 = *v73;
      if (*v73)
      {
        v46 = (CMBaseObjectGetDerivedStorage() + 888);
      }

      else
      {
        v46 = "";
      }

      v74 = v46;
      if (v5)
      {
        v47 = (CMBaseObjectGetDerivedStorage() + 3096);
      }

      else
      {
        v47 = "";
      }

      v63 = v47;
      v58 = v79.value;
      v60 = v79.timescale;
      time1 = v79;
      v48 = CMTimeGetSeconds(&time1);
      v55 = v78.value;
      v56 = v78.timescale;
      time1 = v78;
      v49 = CMTimeGetSeconds(&time1);
      time1.value = v38;
      *&time1.flags = v147;
      time1.timescale = v39;
      HIDWORD(time1.epoch) = v148;
      v50 = CMTimeGetSeconds(&time1);
      time1.value = v36;
      *&time1.flags = v151;
      time1.timescale = v44;
      HIDWORD(time1.epoch) = v152;
      v51 = CMTimeGetSeconds(&time1);
      time1.value = v3;
      *&time1.flags = v153;
      time1.timescale = v4;
      HIDWORD(time1.epoch) = v154;
      v52 = CMTimeGetSeconds(&time1);
      time1.value = value;
      *&time1.flags = v149;
      time1.timescale = timescale;
      HIDWORD(time1.epoch) = epoch_high;
      v53 = CMTimeGetSeconds(&time1);
      LODWORD(time1.value) = 136320770;
      *(&time1.value + 4) = "fpfsi_TrimAudioInQueue";
      LOWORD(time1.flags) = 2048;
      *(&time1.flags + 2) = v45;
      HIWORD(time1.epoch) = 2082;
      v86 = v74;
      v87 = 2048;
      v88 = v5;
      v89 = 2082;
      v90 = v63;
      v91 = 2048;
      v92 = v58;
      v93 = 1024;
      v94 = v60;
      v95 = 2048;
      v96 = v48;
      v97 = 2048;
      v98 = v55;
      v99 = 1024;
      v100 = v56;
      v101 = 2048;
      v102 = v49;
      v103 = 2048;
      v104 = v38;
      v105 = 1024;
      v106 = v39;
      v107 = 2048;
      v108 = v50;
      v109 = 2048;
      v110 = v36;
      v111 = 1024;
      v112 = v44;
      v113 = 2048;
      v114 = v51;
      v115 = 2048;
      v116 = v3;
      v117 = 1024;
      v118 = v4;
      v119 = 2048;
      v120 = v52;
      v121 = 2048;
      v122 = value;
      v123 = 1024;
      v124 = timescale;
      v125 = 2048;
      v126 = v53;
      LODWORD(v54) = 208;
      _os_log_send_and_compose_impl(v66, 0, &time2, 128, &dword_1962D5000, v72, value_low, "<<<< FigStreamPlayer >>>> %s: [%p|%{public}s] <%p|%{public}s>: raw PTS L1 {%lld/%d=%1.3f}, old output PTS L2 {%lld/%d=%1.3f}, new output PTS L2 {%lld/%d=%1.3f}, trim duration {%lld/%d=%1.3f}, startTime L2 {%lld/%d=%1.3f}, sbuf end L2 {%lld/%d=%1.3f}", &time1, v54);
    }

    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  time1.value = value;
  *&time1.flags = v149;
  time1.timescale = timescale;
  HIDWORD(time1.epoch) = epoch_high;
  time2.value = v3;
  *&time2.flags = v153;
  time2.timescale = v4;
  HIDWORD(time2.epoch) = v154;
  return (~CMTimeCompare(&time1, &time2) >> 31);
}