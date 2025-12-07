uint64_t subaq_audioQueuePrime(CMTime *a1, uint64_t a2, uint64_t a3, UInt32 *a4)
{
  v56 = *MEMORY[0x1E69E9840];
  outNumberOfFramesPrepared = 0;
  if (*(a3 + 12))
  {
    time1 = *a3;
    time2 = **&MEMORY[0x1E6960CC0];
    if (CMTimeCompare(&time1, &time2))
    {
      v21 = *(a2 + 100);
      time1 = *a3;
      CMTimeConvertScale(&v44, &time1, v21, kCMTimeRoundingMethod_RoundHalfAwayFromZero);
      value_low = LODWORD(v44.value);
    }

    else
    {
      value_low = 0;
    }

    goto LABEL_27;
  }

  LODWORD(time1.value) = 0;
  LODWORD(time2.value) = 4;
  if (FigAudioQueueTimingShimGetProperty(*(a2 + 40), 0x64766266u, &time1, &time2))
  {
    return 0;
  }

  v12 = *(*(a2 + 64) + 8);
  if (v12 == 1634492771)
  {
    v13 = 2;
  }

  else
  {
    v13 = 3;
  }

  v14 = (LODWORD(time1.value) << v13);
  if (v12 == 1633772400 || v12 == 1633772392)
  {
    v16 = FigUInt32NearestPowerOfTwo();
    if (v16 >= 0x20000)
    {
      v17 = 0x20000;
    }

    else
    {
      v17 = v16;
    }

    v18 = v17 >> 2;
    if (v18 >= 0x4000)
    {
      v18 = 0x4000;
    }

    if (v14 <= v18)
    {
      v14 = v18;
    }

    else
    {
      v14 = v14;
    }
  }

  if (v14 >= 0x4000)
  {
    value_low = 0x4000;
  }

  else
  {
    value_low = v14;
  }

  if (v14)
  {
LABEL_27:
    v22 = *(a2 + 480);
    v23 = FigAudioQueueTimingShimPrime(*(a2 + 40), value_low, &outNumberOfFramesPrepared, v7, v8, v9, v10, v11);
    if (v23)
    {
      v14 = v23;
      v43 = **&MEMORY[0x1E6960C70];
      if (*(a2 + 480) <= 0)
      {
        v24 = v22;
      }

      else
      {
        v24 = *(a2 + 480);
      }

      CMTimeMake(&v43, v24, *(a2 + 100));
      LODWORD(rhs.value) = 0;
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      value = rhs.value;
      if (os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT))
      {
        v27 = value;
      }

      else
      {
        v27 = value & 0xFFFFFFFE;
      }

      if (v27)
      {
        if (a1)
        {
          p_timescale = &a1[33].timescale;
        }

        else
        {
          p_timescale = "";
        }

        time1 = v43;
        Seconds = CMTimeGetSeconds(&time1);
        LODWORD(time2.value) = 136316674;
        *(&time2.value + 4) = "subaq_audioQueuePrime";
        LOWORD(time2.flags) = 2048;
        *(&time2.flags + 2) = a1;
        HIWORD(time2.epoch) = 2048;
        v49 = a2;
        v50 = 2082;
        v51 = p_timescale;
        v52 = 1024;
        *v53 = v14;
        *&v53[4] = 1024;
        *&v53[6] = v24;
        *v54 = 2048;
        *&v54[2] = Seconds;
        _os_log_send_and_compose_impl(v27, 0, &time1, 128, &dword_1962D5000, os_log_and_send_and_compose_flags_and_os_log_type, 0, "<<<< FAQ >>>> %s: [%p:%p] %{public}s FigAudioQueueTimingShimPrimed returned error %d, %u samples discarded (duration %1.4f)", &time2, 64);
      }

      fig_log_call_emit_and_clean_up_after_send_and_compose();
      type = v43;
      time2 = a1[22];
      rhs = v43;
      CMTimeAdd(&time1, &time2, &rhs);
      a1[22] = time1;
      if (dword_1EAF16C30)
      {
        LODWORD(rhs.value) = 0;
        v46 = OS_LOG_TYPE_DEFAULT;
        v30 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        v31 = rhs.value;
        v32 = v46;
        if (os_log_type_enabled(v30, v46))
        {
          v33 = v31;
        }

        else
        {
          v33 = v31 & 0xFFFFFFFE;
        }

        if (v33)
        {
          p_epoch = &a1[17].epoch;
          v35 = a1 + 22;
          epoch = a1[17].epoch;
          if (epoch)
          {
            v37 = (epoch + 800);
          }

          else
          {
            v37 = "";
          }

          time1 = *v35;
          v38 = CMTimeGetSeconds(&time1);
          time1 = type;
          v39 = CMTimeGetSeconds(&time1);
          LODWORD(time2.value) = 136316418;
          *(&time2.value + 4) = "faqTimelineWrangler_addDiscardedFrameMediaTimeInFAQPrime";
          LOWORD(time2.flags) = 2048;
          *(&time2.flags + 2) = epoch;
          HIWORD(time2.epoch) = 2082;
          v49 = v37;
          v50 = 2048;
          v51 = p_epoch;
          v52 = 2048;
          *v53 = v38;
          *&v53[8] = 2048;
          *v54 = v39;
          LODWORD(v41) = 62;
          _os_log_send_and_compose_impl(v33, 0, &time1, 128, &dword_1962D5000, v30, v32, "<<<< FAQ >>>> %s: [%p] %{public}s TimelineWrangler %p: mediaTime_StartTime = %.3f, discardedFrameMediaTime = %.3f", &time2, v41);
        }

        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      *(a2 + 480) = 0;
      *(a2 + 594) = 1;
      return v14;
    }

    *(a2 + 609) = 1;
    if (a4)
    {
      v14 = 0;
      *a4 = outNumberOfFramesPrepared;
      return v14;
    }

    return 0;
  }

  return v14;
}

uint64_t figAudioQueueStartCommon(uint64_t a1, CMTime *a2, CMTime *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8, float a9)
{
  v98 = *MEMORY[0x1E69E9840];
  memset(&v72, 0, sizeof(v72));
  HostTimeClock = CMClockGetHostTimeClock();
  CMClockGetTime(&v72, HostTimeClock);
  if (!a1)
  {
    figAudioQueueStartCommon_cold_8(&time);
    return LODWORD(time.value);
  }

  if ((a2->flags & 0x1D) != 1)
  {
    figAudioQueueStartCommon_cold_1(&time);
    return LODWORD(time.value);
  }

  FigSimpleMutexLock();
  if (*(a1 + 16))
  {
    figAudioQueueStartCommon_cold_2(&time);
  }

  else if ((*(a1 + 48) & 2) != 0)
  {
    figAudioQueueStartCommon_cold_3(&time);
  }

  else if (a4 && *(a1 + 400))
  {
    figAudioQueueStartCommon_cold_4(&time);
  }

  else
  {
    if (!a6 || !*(a1 + 384))
    {
      if (a4 | a6 && *(a1 + 576) && (*(a1 + 384) || *(a1 + 400)))
      {
        LODWORD(v80.value) = 0;
        LOBYTE(type.value) = 0;
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        value = v80.value;
        value_low = LOBYTE(type.value);
        if (os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, type.value))
        {
          v22 = value;
        }

        else
        {
          v22 = value & 0xFFFFFFFE;
        }

        if (v22)
        {
          LODWORD(time2.value) = 136315650;
          *(&time2.value + 4) = "figAudioQueueStartCommon";
          LOWORD(time2.flags) = 2048;
          *(&time2.flags + 2) = a1;
          HIWORD(time2.epoch) = 2082;
          v82 = (a1 + 800);
          _os_log_send_and_compose_impl(v22, 0, &time, 128, &dword_1962D5000, os_log_and_send_and_compose_flags_and_os_log_type, value_low, "<<<< FAQ >>>> %s: [%p] %{public}s cannot start with startedCallback while there is currently another starting with startedCallback", &time2, 32);
        }

        fig_log_call_emit_and_clean_up_after_send_and_compose();
        v23 = 4294954356;
        goto LABEL_19;
      }

      ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 176), 0);
      if (((*(a1 + 540) & 0x1D) != 1) | a8)
      {
        if (dword_1EAF16C30)
        {
          v68 = ValueAtIndex;
          LODWORD(v80.value) = 0;
          LOBYTE(type.value) = 0;
          v32 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          v33 = v80.value;
          v66 = v32;
          v64 = LOBYTE(type.value);
          if (os_log_type_enabled(v32, type.value))
          {
            v34 = v33;
          }

          else
          {
            v34 = v33 & 0xFFFFFFFE;
          }

          if (v34)
          {
            time = *(a1 + 528);
            Seconds = CMTimeGetSeconds(&time);
            time = *a3;
            v36 = CMTimeGetSeconds(&time);
            LODWORD(time2.value) = 136316674;
            *(&time2.value + 4) = "figAudioQueueStartCommon";
            LOWORD(time2.flags) = 2048;
            *(&time2.flags + 2) = a1;
            HIWORD(time2.epoch) = 2048;
            v82 = v68;
            v83 = 2082;
            v84 = a1 + 800;
            v85 = 2048;
            v86 = Seconds;
            v87 = 2048;
            v88 = a9;
            v89 = 2048;
            v90 = v36;
            _os_log_send_and_compose_impl(v34, 0, &time, 128, &dword_1962D5000, v66, v64, "<<<< FAQ >>>> %s: [%p:%p] %{public}s called, mediaStartTime = %.3f, timebaseRate = %.2f, hostStartTime: %.3f, FRESH START", &time2, 72);
          }

          goto LABEL_35;
        }
      }

      else if (dword_1EAF16C30)
      {
        v67 = ValueAtIndex;
        LODWORD(v80.value) = 0;
        LOBYTE(type.value) = 0;
        v26 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        v27 = v80.value;
        v65 = v26;
        v63 = LOBYTE(type.value);
        if (os_log_type_enabled(v26, type.value))
        {
          v28 = v27;
        }

        else
        {
          v28 = v27 & 0xFFFFFFFE;
        }

        if (v28)
        {
          time = *(a1 + 528);
          v29 = CMTimeGetSeconds(&time);
          time = *a3;
          v30 = CMTimeGetSeconds(&time);
          time = *a2;
          v31 = CMTimeGetSeconds(&time);
          LODWORD(time2.value) = 136316930;
          *(&time2.value + 4) = "figAudioQueueStartCommon";
          LOWORD(time2.flags) = 2048;
          *(&time2.flags + 2) = a1;
          HIWORD(time2.epoch) = 2048;
          v82 = v67;
          v83 = 2082;
          v84 = a1 + 800;
          v85 = 2048;
          v86 = v29;
          v87 = 2048;
          v88 = a9;
          v89 = 2048;
          v90 = v30;
          v91 = 2048;
          v92 = v31;
          _os_log_send_and_compose_impl(v28, 0, &time, 128, &dword_1962D5000, v65, v63, "<<<< FAQ >>>> %s: [%p:%p] %{public}s called, faq->mediaStartTime = %.3f, timebaseRate = %.2f, hostStartTime: %.3f, ignoring passed-in mediaStartTime %.3f", &time2, 82);
        }

LABEL_35:
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      if (*(a1 + 16))
      {
        goto LABEL_92;
      }

      Count = CFArrayGetCount(*(a1 + 176));
      if (Count >= 1)
      {
        v38 = Count;
        for (i = 0; i != v38; ++i)
        {
          *(CFArrayGetValueAtIndex(*(a1 + 176), i) + 608) = 0;
        }
      }

      if (*(a1 + 16) || (v40 = CFArrayGetValueAtIndex(*(a1 + 176), 0)) == 0)
      {
LABEL_92:
        figAudioQueueStartCommon_cold_7(&time);
      }

      else
      {
        v41 = v40;
        if (*(v40 + 5))
        {
          v40[608] = 1;
          if (a4)
          {
            *(a1 + 384) = a4;
            *(a1 + 392) = a5;
            *(a1 + 416) = a9;
            *(a1 + 576) = 1;
          }

          if (a6)
          {
            *(a1 + 400) = a6;
            v42 = *(a1 + 408);
            if (v42)
            {
              CFRelease(v42);
              *(a1 + 408) = 0;
            }

            if (a7)
            {
              *(a1 + 408) = FigCFWeakReferenceHolderCreateWithReferencedObject();
            }

            *(a1 + 416) = a9;
            *(a1 + 576) = 1;
          }

          time = *a2;
          v43 = *(a1 + 540) & 0x1D;
          v44 = v43 == 1;
          v45 = v43 != 1;
          if (!v44)
          {
            v46 = *&a2->value;
            *(a1 + 568) = a2->epoch;
            *(a1 + 552) = v46;
          }

          if (v45 | a8)
          {
            *(a1 + 528) = time;
            v47 = MEMORY[0x1E6960C70];
            *(a1 + 480) = *MEMORY[0x1E6960C70];
            *(a1 + 496) = *(v47 + 16);
            *(v41 + 594) = 1;
            *(v41 + 600) = 0;
          }

          *(a1 + 616) = 0u;
          *(a1 + 632) = 0u;
          *(a1 + 584) = 0u;
          *(a1 + 600) = 0u;
          time = *a2;
          v69 = *MEMORY[0x1E6960CC0];
          *&time2.value = *MEMORY[0x1E6960CC0];
          v48 = *(MEMORY[0x1E6960CC0] + 16);
          time2.epoch = v48;
          CMTimeCompare(&time, &time2);
          if ((a3->flags & 0x1D) == 1)
          {
            memset(&v71, 0, sizeof(v71));
            *&v70.value = *&a2->value;
            v70.epoch = a2->epoch;
            time = **&MEMORY[0x1E6960C70];
            *&time2.value = v69;
            time2.epoch = v48;
            subaq_getAudioQueueLatencyFigTime();
            if ((time.flags & 1) == 0)
            {
              *&time.value = v69;
              time.epoch = v48;
            }

            if (*(v41 + 48))
            {
              subaq_getCurrentQueueTime(v41, &v80);
              type = *(a1 + 456);
              rhs = *(a1 + 504);
              CMTimeSubtract(&v78, &type, &rhs);
              rhs = v80;
              CMTimeSubtract(&type, &rhs, &v78);
              rhs = type;
              FigAudioQueueTimingShimConvertTimingShimTimeToAQTime();
              lhs = v70;
              v75 = *(a1 + 552);
              CMTimeSubtract(&rhs, &lhs, &v75);
              v75 = rhs;
              v74 = *(a1 + 504);
              CMTimeAdd(&lhs, &v75, &v74);
              v74 = lhs;
              FigAudioQueueTimingShimConvertTimingShimTimeToAQTime();
              v74 = v78;
              v73 = v75;
              CMTimeSubtract(&time2, &v74, &v73);
            }

            v80 = time2;
            type = time;
            CMTimeSubtract(&v71, &v80, &type);
            time2 = *a3;
            v80 = v71;
            CMTimeAdd(&time, &time2, &v80);
            *&a3->value = *&time.value;
            epoch = time.epoch;
            a3->epoch = time.epoch;
            *&time.value = *&a3->value;
            time.epoch = epoch;
            *(a1 + 592) = CMClockConvertHostTimeToSystemUnits(&time);
            *(a1 + 640) = 2;
          }

          *(a1 + 305) = 1;
          v50 = (*(a1 + 48) & 4) != 0 && *(a1 + 312) && *(a1 + 280) != 1.0;
          faq_enqueueSourceData(a1, v50);
          if (*(a1 + 16))
          {
            v51 = 0;
          }

          else
          {
            v51 = CFArrayGetValueAtIndex(*(a1 + 176), 0);
          }

          v51[608] = 1;
          if (dword_1EAF16C30)
          {
            LODWORD(type.value) = 0;
            LOBYTE(v78.value) = 0;
            v52 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            v53 = type.value;
            v54 = LOBYTE(v78.value);
            if (os_log_type_enabled(v52, v78.value))
            {
              v55 = v53;
            }

            else
            {
              v55 = v53 & 0xFFFFFFFE;
            }

            if (v55)
            {
              v56 = *(v51 + 5);
              time = *a2;
              v57 = CMTimeGetSeconds(&time);
              time = *a3;
              v58 = CMTimeGetSeconds(&time);
              time = v72;
              v59 = CMTimeGetSeconds(&time);
              time2 = *a3;
              v80 = v72;
              CMTimeSubtract(&time, &time2, &v80);
              v60 = CMTimeGetSeconds(&time);
              LODWORD(time2.value) = 136317442;
              *(&time2.value + 4) = "figAudioQueueStartCommon";
              LOWORD(time2.flags) = 2048;
              *(&time2.flags + 2) = a1;
              HIWORD(time2.epoch) = 2048;
              v82 = v51;
              v83 = 2048;
              v84 = v56;
              v85 = 2082;
              *&v86 = a1 + 800;
              v87 = 2048;
              v88 = v57;
              v89 = 2048;
              v90 = v58;
              v91 = 2048;
              v92 = v59;
              v93 = 2048;
              v94 = v60;
              v95 = 2048;
              v96 = a9;
              LODWORD(v62) = 102;
              _os_log_send_and_compose_impl(v55, 0, &time, 128, &dword_1962D5000, v52, v54, "<<<< FAQ >>>> %s: [%p:%p:%p] %{public}s starting active audio queue mediaStartTime:%1.3f hostStartTime:%1.3f (hostTimeNow:%1.3f + %1.3f) timebaseRate:%f", &time2, v62);
            }

            fig_log_call_emit_and_clean_up_after_send_and_compose();
          }

          *(a1 + 753) = 1;
          started = subaq_prepareForStart(a1);
          if (started || (started = subaq_startAudioQueueIfReady(a1), started))
          {
            v23 = started;
          }

          else
          {
            if (*(a1 + 579) || *(a1 + 580))
            {
              if (v51[50])
              {
                subaq_startListener(a1, v51);
              }

              *(a1 + 579) = 0;
            }

            *(a1 + 785) = 0;
            *(a1 + 653) = 1;
            FigSemaphoreSignal();
            v23 = 0;
          }

          goto LABEL_19;
        }

        figAudioQueueStartCommon_cold_6(&time);
      }

      goto LABEL_90;
    }

    figAudioQueueStartCommon_cold_5(&time);
  }

LABEL_90:
  v23 = LODWORD(time.value);
LABEL_19:
  FigSimpleMutexUnlock();
  return v23;
}

uint64_t FigAudioQueueStart2(uint64_t a1, CMTime *a2, CMTime *a3, uint64_t a4, uint64_t a5, int a6, float a7)
{
  v9 = *a2;
  v8 = *a3;
  return figAudioQueueStartCommon(a1, &v9, &v8, 0, 0, a4, a5, a6, a7);
}

uint64_t FigAudioQueueStartOffline(uint64_t a1, CMTime *a2)
{
  v53 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    FigAudioQueueStartOffline_cold_3(&time);
    return LODWORD(time.value);
  }

  FigSimpleMutexLock();
  v4 = &unk_1EAF16000;
  if (dword_1EAF16C30)
  {
    LODWORD(v34) = 0;
    type[0] = OS_LOG_TYPE_DEFAULT;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (*(a1 + 16))
  {
    FigAudioQueueStartOffline_cold_1(&time);
  }

  else
  {
    if ((*(a1 + 48) & 2) != 0)
    {
      v34 = *&a2->value;
      epoch = a2->epoch;
      v6 = epoch;
      *(a1 + 528) = v34;
      *(a1 + 544) = v6;
      v7 = MEMORY[0x1E6960C70];
      *(a1 + 480) = *MEMORY[0x1E6960C70];
      *(a1 + 496) = *(v7 + 16);
      v8 = MEMORY[0x1E6960CC0];
      *(a1 + 456) = *MEMORY[0x1E6960CC0];
      *(a1 + 472) = *(v8 + 16);
      if (dword_1EAF16C30 && (*type = 0, v36 = OS_LOG_TYPE_DEFAULT, v9 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type(), os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT), fig_log_call_emit_and_clean_up_after_send_and_compose(), *(a1 + 16)) || (Count = CFArrayGetCount(*(a1 + 176)), Count < 1))
      {
        ValueAtIndex = 0;
      }

      else
      {
        v11 = Count;
        for (i = 0; i != v11; ++i)
        {
          ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 176), i);
          ValueAtIndex[594] = 1;
          *(ValueAtIndex + 75) = 0;
        }
      }

      v14 = *(a1 + 648);
      if (v14)
      {
        v15 = (a1 + 648);
        time = *a2;
        CMTimeConvertScale(&v33, &time, v14, kCMTimeRoundingMethod_RoundHalfAwayFromZero);
        value = v33.value;
      }

      else
      {
        v15 = (ValueAtIndex + 100);
        value = 0.0;
      }

      *(a1 + 584) = value;
      v32 = *v15;
      *(a1 + 640) = 1;
      *(a1 + 576) = 1;
      *(a1 + 305) = 1;
      faq_enqueueSourceData(a1, 0);
      *(a1 + 753) = 1;
      if (*(a1 + 16) || (v17 = CFArrayGetCount(*(a1 + 176)), v17 < 1))
      {
LABEL_35:
        value_low = 0;
        *(a1 + 653) = 1;
      }

      else
      {
        v18 = v17;
        v19 = 0;
        while (1)
        {
          if (*(a1 + 16))
          {
            v20 = 0;
          }

          else
          {
            v20 = CFArrayGetValueAtIndex(*(a1 + 176), v19);
          }

          if (v4[780])
          {
            v21 = v4;
            LODWORD(v34) = 0;
            type[0] = OS_LOG_TYPE_DEFAULT;
            v22 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            v23 = v34;
            v24 = type[0];
            if (os_log_type_enabled(v22, type[0]))
            {
              v25 = v23;
            }

            else
            {
              v25 = v23 & 0xFFFFFFFE;
            }

            if (v25)
            {
              v26 = v20[5];
              v27 = *(a1 + 584);
              v38 = 136316674;
              v39 = "FigAudioQueueStartOffline";
              v40 = 2048;
              v41 = a1;
              v42 = 2048;
              v43 = v20;
              v44 = 2048;
              v45 = v26;
              v46 = 2082;
              v47 = a1 + 800;
              v48 = 2048;
              v49 = v27;
              v50 = 1024;
              v51 = v32;
              LODWORD(v31) = 68;
              _os_log_send_and_compose_impl(v25, 0, &time, 128, &dword_1962D5000, v22, v24, "<<<< FAQ >>>> %s: [%p:%p:%p] %{public}s starting offline audio queue sampleTime:%.1f on sampleRate:%d", &v38, v31);
            }

            fig_log_call_emit_and_clean_up_after_send_and_compose();
            v4 = v21;
          }

          started = subaq_prepareForStart(a1);
          if (started)
          {
            break;
          }

          started = subaq_startAudioQueueIfReady(a1);
          if (started)
          {
            break;
          }

          if (v18 == ++v19)
          {
            goto LABEL_35;
          }
        }

        value_low = started;
      }

      goto LABEL_36;
    }

    FigAudioQueueStartOffline_cold_2(&time);
  }

  value_low = LODWORD(time.value);
LABEL_36:
  FigSimpleMutexUnlock();
  return value_low;
}

uint64_t faq_stopAllAudioQueues(uint64_t a1, uint64_t a2, int a3)
{
  if (a1)
  {
    FigSimpleMutexLock();
    if (*(a1 + 16))
    {
      faq_stopAllAudioQueues_cold_1(&v16);
      v11 = v16;
    }

    else
    {
      *(a1 + 305) = 0;
      Count = CFArrayGetCount(*(a1 + 176));
      if (Count < 1)
      {
LABEL_11:
        v11 = 0;
        *(a1 + 73) = 0;
        *(a1 + 579) = 0;
        *(a1 + 785) = 0;
        v12 = MEMORY[0x1E6960C70];
        v13 = *MEMORY[0x1E6960C70];
        *(a1 + 528) = *MEMORY[0x1E6960C70];
        v14 = *(v12 + 16);
        *(a1 + 544) = v14;
        *(a1 + 480) = v13;
        *(a1 + 496) = v14;
        *(a1 + 652) = 0;
        *(a1 + 753) = 0;
      }

      else
      {
        v7 = Count;
        v8 = 0;
        while (1)
        {
          v9 = *(a1 + 16) ? 0 : CFArrayGetValueAtIndex(*(a1 + 176), v8);
          v10 = subaq_stopAudioQueue(a1, v9, a2);
          if (v10)
          {
            break;
          }

          v9[48] = 0;
          if (v7 == ++v8)
          {
            goto LABEL_11;
          }
        }

        v11 = v10;
      }
    }

    FigSimpleMutexUnlock();
    if (a3)
    {
      faq_wakeupOfflineMixer(a1);
    }
  }

  else
  {
    faq_stopAllAudioQueues_cold_2(&v17);
    return v17;
  }

  return v11;
}

uint64_t FigAudioQueueResetOffline(uint64_t a1)
{
  FigSimpleMutexLock();
  if (!*(a1 + 16))
  {
    faq_reset(a1, v2);
  }

  FigSimpleMutexUnlock();
  return 0;
}

uint64_t faq_offlineMixerNeedsMoreInputData(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    *(a2 + 306) = 1;
    return FigSemaphoreSignal();
  }

  return result;
}

uint64_t MTAudioProcessingTapInitializeTap(uint64_t a1, uint64_t a2)
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

uint64_t FigAudioQueueGetParameter(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  v10 = 0;
  if (!a1)
  {
    FigAudioQueueGetParameter_cold_5(&v11);
    return v11;
  }

  if (!a3)
  {
    FigAudioQueueGetParameter_cold_4(&v11);
    return v11;
  }

  v4 = a2;
  FigSimpleMutexLock();
  if (*(a1 + 16))
  {
    FigAudioQueueGetParameter_cold_1(&v11);
  }

  else
  {
    ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 176), 0);
    if (ValueAtIndex)
    {
      v7 = ValueAtIndex[5];
      if (v7)
      {
        Parameter = FigAudioQueueTimingShimGetParameter(v7, v4, &v10);
        if (!Parameter)
        {
          *a3 = v10;
        }

        goto LABEL_8;
      }

      FigAudioQueueGetParameter_cold_2(&v11);
    }

    else
    {
      FigAudioQueueGetParameter_cold_3(&v11);
    }
  }

  Parameter = v11;
LABEL_8:
  FigSimpleMutexUnlock();
  return Parameter;
}

uint64_t FigAudioQueueRestoreParameters(uint64_t a1)
{
  if (!a1)
  {
    FigAudioQueueRestoreParameters_cold_4(&v5);
    return v5;
  }

  FigSimpleMutexLock();
  if (*(a1 + 16))
  {
    FigAudioQueueRestoreParameters_cold_1(&v5);
LABEL_12:
    v3 = v5;
    goto LABEL_6;
  }

  ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 176), 0);
  if (!ValueAtIndex)
  {
    FigAudioQueueRestoreParameters_cold_3(&v5);
    goto LABEL_12;
  }

  if (!ValueAtIndex[5])
  {
    FigAudioQueueRestoreParameters_cold_2(&v5);
    goto LABEL_12;
  }

  subaq_restoreParameters(a1, ValueAtIndex);
  v3 = 0;
LABEL_6:
  FigSimpleMutexUnlock();
  return v3;
}

void subaq_restoreParameters(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 204))
  {
    FigAudioQueueTimingShimSetParameter(*(a2 + 40), 1u, *(a1 + 200));
  }

  if (*(a1 + 212))
  {
    FigAudioQueueTimingShimSetParameter(*(a2 + 40), 5u, *(a1 + 208));
  }

  if (*(a1 + 220))
  {
    FigAudioQueueTimingShimSetParameter(*(a2 + 40), 9u, *(a1 + 216));
  }

  if (*(a1 + 228))
  {
    FigAudioQueueTimingShimSetParameter(*(a2 + 40), 0xEu, *(a1 + 224));
  }

  v4 = *(a1 + 240);
  if (v4)
  {
    Value = CFDictionaryGetValue(v4, @"LoudnessInfo");
    if (Value)
    {
      if (Value != *MEMORY[0x1E695E738])
      {

        subaq_setProperty(a1, a2, @"LoudnessInfo", Value);
      }
    }
  }
}

uint64_t FigAudioQueueCopyPerformanceDictionary(uint64_t a1, CFDictionaryRef *a2)
{
  v38 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    FigAudioQueueCopyPerformanceDictionary_cold_4(&keys);
    return keys;
  }

  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  keys = 0u;
  v29 = 0u;
  *values = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  valuePtr = 0;
  FigSimpleMutexLock();
  if (*(a1 + 16))
  {
    FigAudioQueueCopyPerformanceDictionary_cold_1(&v16);
  }

  else
  {
    ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 176), 0);
    if (ValueAtIndex)
    {
      v5 = ValueAtIndex;
      if (ValueAtIndex[5])
      {
        v6 = *(a1 + 736) * *(ValueAtIndex[8] + 5);
        DefaultAudioPrimingFrameCount = FigGaplessInfoGetDefaultAudioPrimingFrameCount(ValueAtIndex[7]);
        valuePtr = (v6 - DefaultAudioPrimingFrameCount) & ~((v6 - DefaultAudioPrimingFrameCount) >> 63);
        *&keys = @"NumberOfInputPacketsFedToDecoder";
        v8 = *MEMORY[0x1E695E480];
        values[0] = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt64Type, (a1 + 736));
        *(&keys + 1) = @"NumberOfOutputFramesExpected";
        values[1] = CFNumberCreate(v8, kCFNumberSInt64Type, &valuePtr);
        v16 = 0;
        v15 = 8;
        FigAudioQueueTimingShimGetProperty(v5[5], 0x24696E64u, &v16, &v15);
        if (v16)
        {
          *&v29 = @"AudioConverterStatistics";
          *&v19 = v16;
          v9 = 3;
        }

        else
        {
          v9 = 2;
        }

        v10 = values;
        v11 = CFDictionaryCreate(v8, &keys, values, v9, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
        do
        {
          v12 = *v10++;
          CFRelease(v12);
          --v9;
        }

        while (v9);
        v13 = 0;
        *a2 = v11;
        goto LABEL_11;
      }

      FigAudioQueueCopyPerformanceDictionary_cold_2(&v16);
    }

    else
    {
      FigAudioQueueCopyPerformanceDictionary_cold_3(&v16);
    }
  }

  v13 = v16;
LABEL_11:
  FigSimpleMutexUnlock();
  return v13;
}

uint64_t faq_registerFAQType()
{
  result = _CFRuntimeRegisterClass();
  gFAQID = result;
  return result;
}

uint64_t faq_oneTimeInitializationWork(uint64_t a1)
{
  FigNote_AllowInternalDefaultLogs();
  fig_note_initialize_category_with_default_work_cf();

  return fig_note_initialize_category_with_default_work_cf();
}

BOOL faq_scaledEditRateSupportValidator_one32nd_to_32(uint64_t a1, double a2)
{
  v2 = 1.0;
  if (*(a1 + 236))
  {
    v3 = *(a1 + 232);
    if (v3 != 0.0)
    {
      v2 = v3;
    }
  }

  v4 = v2 * a2;
  return v4 <= 32.0 && v4 >= 0.03125;
}

uint64_t faq_scaledEditRateSupportValidator_lowQualityZeroLatency(uint64_t a1, double a2)
{
  if (*(a1 + 236))
  {
    v2 = *(a1 + 232);
    v3 = v2 == 0.0;
    v4 = v2;
    if (v3)
    {
      v4 = 1.0;
    }
  }

  else
  {
    v4 = 1.0;
  }

  v5 = 0;
  v6 = v4 * a2;
  while (1)
  {
    v7 = *&qword_196E730A0[v5];
    v8 = v7 * 0.98;
    v9 = v7 * 1.02;
    if (v8 < v6 && v6 < v9)
    {
      break;
    }

    if (++v5 == 7)
    {
      return 0;
    }
  }

  return 1;
}

BOOL faq_scaledEditRateSupportValidator_noScaleAllowed(uint64_t a1, double a2)
{
  v2 = 1.0;
  if (*(a1 + 236))
  {
    v3 = *(a1 + 232);
    if (v3 != 0.0)
    {
      v2 = v3;
    }
  }

  return v2 * a2 == 1.0;
}

uint64_t faq_resetOutput(uint64_t a1, uint64_t a2)
{
  FigSimpleMutexLock();
  if (!*(a2 + 16))
  {
    faq_reset(a2, v3);
  }

  return FigSimpleMutexUnlock();
}

void faq_deferredAudioQueueEndOfDataReached(_BYTE *cf)
{
  if (!cf[16])
  {
    CMNotificationCenterGetDefaultLocalCenter();
    CMNotificationCenterPostNotification();
  }

  CFRelease(cf);
}

double subaq_createValidSubAQSetAndLock()
{
  qword_1ED4CA550 = CFSetCreateMutable(*MEMORY[0x1E695E480], 0, 0);
  v1 = FigReadWriteLockCreate();
  qword_1ED4CA548 = v1;
  if (qword_1ED4CA550)
  {
    v3 = v1 == 0;
  }

  else
  {
    v3 = 1;
  }

  if (v3)
  {
    v4 = qword_1EAF16C28;

    return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v4, 4294954355, "<<<< FAQ >>>>", 11644, v0);
  }

  return result;
}

uint64_t fsaq_registerFSAQType()
{
  qword_1ED4CA558 = _CFRuntimeRegisterClass();

  return FigCFWeakReferenceTableCreate();
}

__CFString *fsaq_CopyFormattingDesc(const void *a1)
{
  v2 = CFGetAllocator(a1);
  Mutable = CFStringCreateMutable(v2, 0);
  v4 = CFGetRetainCount(a1);
  CFStringAppendFormat(Mutable, 0, @"[FigSubAudioQueue %p (rc=%d)", a1, v4);
  return Mutable;
}

CFMutableStringRef fsaq_CopyDebugDesc(const void *a1)
{
  v2 = CFGetAllocator(a1);
  Mutable = CFStringCreateMutable(v2, 0);
  subaq_appendDebugDesc(Mutable, a1);
  return Mutable;
}

uint64_t MTAudioProcessingTapDisposeAQTap(uint64_t a1, uint64_t a2)
{
  VTable = CMBaseObjectGetVTable();
  v6 = *(VTable + 16);
  result = VTable + 16;
  v7 = *(v6 + 24);
  if (v7)
  {

    return v7(a1, a2);
  }

  return result;
}

uint64_t MTAudioProcessingTapRemoveAQFromSubmixTap(uint64_t a1, uint64_t a2, uint64_t a3)
{
  VTable = CMBaseObjectGetVTable();
  v8 = *(VTable + 16);
  result = VTable + 16;
  v9 = *(v8 + 72);
  if (v9)
  {

    return v9(a1, a2, a3);
  }

  return result;
}

uint64_t subaq_lockListenerBarrierForValidSubAQ(uint64_t a1)
{
  FigReadWriteLockLockForRead();
  if (a1)
  {
    if (CFSetContainsValue(qword_1ED4CA550, a1))
    {
      FigReadWriteLockLockForRead();
      a1 = 1;
    }

    else
    {
      a1 = 0;
    }
  }

  FigReadWriteLockUnlockForRead();
  return a1;
}

void subaq_deferredAQPropertyListenerHandler(uint64_t *a1)
{
  v35[16] = *MEMORY[0x1E69E9840];
  v3 = *a1;
  v2 = a1[1];
  v4 = *(a1 + 4);
  if (v4 <= 1769174127)
  {
    if (v4 > 1718383463)
    {
      if (v4 != 1718383464)
      {
        if (v4 == 1751410285)
        {
          goto LABEL_24;
        }

        goto LABEL_91;
      }

      FigSimpleMutexLock();
      if (!*(v3 + 16))
      {
        Count = CFArrayGetCount(*(v3 + 176));
        if (Count < 1)
        {
          v16 = 0;
LABEL_63:
          if (v16 != v2)
          {
            goto LABEL_90;
          }
        }

        else
        {
          v15 = 0;
          while (1)
          {
            v16 = *(v3 + 16) ? 0 : CFArrayGetValueAtIndex(*(v3 + 176), v15);
            if (v16 == v2)
            {
              break;
            }

            if (Count == ++v15)
            {
              goto LABEL_63;
            }
          }
        }

        v25 = *(v2 + 672);
        if (v25)
        {
          v26 = v25 - 1;
          *(v2 + 672) = v26;
          if (*(v2 + 700))
          {
            if (!v26)
            {
              *(v2 + 700) = 0;
              if (Count < 1)
              {
LABEL_71:
                FigSimpleMutexUnlock();
                CMNotificationCenterGetDefaultLocalCenter();
                goto LABEL_83;
              }

              v27 = 0;
              while (1)
              {
                ValueAtIndex = CFArrayGetValueAtIndex(*(v3 + 176), v27);
                if (ValueAtIndex[701] == 1)
                {
                  break;
                }

                if (Count == ++v27)
                {
                  goto LABEL_71;
                }
              }

              ValueAtIndex[701] = 0;
              if (*(v3 + 73) || (*(v3 + 48) & 2) != 0)
              {
                subaq_startSubAudioQueue(v3);
                subaq_stopAudioQueue(v3, v2, 0);
                FigSimpleMutexUnlock();
                faq_wakeupOfflineMixer(v3);
                goto LABEL_91;
              }
            }
          }
        }
      }
    }

    else
    {
      if (v4 != 1635020914)
      {
        if (v4 == 1685288048)
        {
          goto LABEL_24;
        }

        goto LABEL_91;
      }

      FigSimpleMutexLock();
      if (!*(v3 + 16))
      {
        v10 = CFArrayGetCount(*(v3 + 176));
        if (v10 >= 1)
        {
          v11 = v10;
          v12 = 0;
          while (1)
          {
            v13 = *(v3 + 16) ? 0 : CFArrayGetValueAtIndex(*(v3 + 176), v12);
            if (v13 == v2)
            {
              break;
            }

            if (v11 == ++v12)
            {
              goto LABEL_60;
            }
          }

LABEL_61:
          FigSimpleMutexUnlock();
          LODWORD(values) = 0;
          LOBYTE(valuePtr) = 0;
          os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
          fig_log_call_emit_and_clean_up_after_send_and_compose();
          CMNotificationCenterGetDefaultLocalCenter();
          goto LABEL_83;
        }

        v13 = 0;
LABEL_60:
        if (v13 == v2)
        {
          goto LABEL_61;
        }
      }
    }

LABEL_90:
    FigSimpleMutexUnlock();
    goto LABEL_91;
  }

  if (v4 <= 1902406770)
  {
    if (v4 == 1769174128)
    {
      FigSimpleMutexLock();
      *(v3 + 579) = 1;
      *(v3 + 785) = 1;
    }

    else
    {
      if (v4 != 1902343781)
      {
        goto LABEL_91;
      }

      v32 = 4;
      valuePtr = 0;
      FigSimpleMutexLock();
      if (!*(v3 + 16))
      {
        v5 = CFArrayGetCount(*(v3 + 176));
        v6 = v5 - 1;
        if (v5 >= 1)
        {
          v7 = 0;
          do
          {
            if (*(v3 + 16))
            {
              v8 = 0;
            }

            else
            {
              v8 = CFArrayGetValueAtIndex(*(v3 + 176), v7);
            }

            if (v8 == v2)
            {
              break;
            }

            v9 = v6 == v7++;
          }

          while (!v9);
          if (v8 && v8 == v2 && !FigAudioQueueTimingShimGetProperty(v8[5], 0x71637665u, &valuePtr, &v32))
          {
            FigSimpleMutexUnlock();
            if (valuePtr)
            {
              v31 = bswap32(valuePtr);
              v21 = *MEMORY[0x1E695E480];
              values = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt32Type, &valuePtr);
              v22 = CFDictionaryCreate(v21, kFigAudioQueueNotificationParameter_ConverterError, &values, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
              v23 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
              os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT);
              fig_log_call_emit_and_clean_up_after_send_and_compose();
              CMNotificationCenterGetDefaultLocalCenter();
              CMNotificationCenterPostNotification();
              if (values)
              {
                CFRelease(values);
              }

              if (v22)
              {
                CFRelease(v22);
              }
            }

            goto LABEL_91;
          }
        }
      }
    }

    goto LABEL_90;
  }

  if (v4 == 1902406771)
  {
    v35[0] = 0;
    v34 = 0;
    FigSimpleMutexLock();
    if (!*(v3 + 16))
    {
      v17 = CFArrayGetCount(*(v3 + 176));
      v18 = v17 - 1;
      if (v17 < 1)
      {
        v20 = 0;
      }

      else
      {
        v19 = 0;
        do
        {
          if (*(v3 + 16))
          {
            v20 = 0;
          }

          else
          {
            v20 = CFArrayGetValueAtIndex(*(v3 + 176), v19);
          }

          if (v20 == v2)
          {
            break;
          }

          v9 = v18 == v19++;
        }

        while (!v9);
      }

      if (v20 == v2)
      {
        v34 = 8;
        if (!FigAudioQueueTimingShimGetProperty(*(v20 + 5), 0x71646C73u, v35, &v34))
        {
          v29 = *v35;
          *(v20 + 90) = v35[0];
          if (*(v20 + 49) || (*(v3 + 49) & 0x20) != 0)
          {
            if (vabdd_f64(*(v20 + 89), v29) >= 0.02 || (*(v3 + 49) & 0x20) != 0)
            {
              *(v20 + 89) = v29;
              if (!*(v3 + 785))
              {
                if (!*(v3 + 576))
                {
                  FigSimpleMutexUnlock();
                  CMNotificationCenterGetDefaultLocalCenter();
                  goto LABEL_83;
                }

                *(v3 + 577) = 1;
              }
            }
          }

          else
          {
            *(v20 + 89) = v29;
          }
        }
      }
    }

    goto LABEL_90;
  }

  if (v4 == 1920233330)
  {
LABEL_24:
    CMNotificationCenterGetDefaultLocalCenter();
LABEL_83:
    CMNotificationCenterPostNotification();
  }

LABEL_91:
  CFRelease(v3);
  CFRelease(v2);
  free(a1);
}

__n128 faqTimelineWrangler_getAQTimePauseOffset@<Q0>(uint64_t a1@<X0>, CMTime *a2@<X8>)
{
  if ((*(a1 + 68) & 0x1D) == 1)
  {
    v7 = v2;
    v8 = v3;
    lhs = *(a1 + 56);
    v5 = *(a1 + 32);
    CMTimeSubtract(a2, &lhs, &v5);
  }

  else
  {
    result = *MEMORY[0x1E6960CC0];
    *a2 = **&MEMORY[0x1E6960CC0];
  }

  return result;
}

CMTime *faqTimelineWrangler_convertAQTimeToMediaTime@<X0>(uint64_t a1@<X0>, CMTime *a2@<X1>, uint64_t a3@<X8>, double a4@<D0>)
{
  *a3 = 0;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  lhs = *a2;
  rhs = *(a1 + 32);
  CMTimeSubtract(&v11, &lhs, &rhs);
  rhs = v11;
  CMTimeMultiplyByFloat64(&lhs, &rhs, fabs(a4));
  rhs = *(a1 + 104);
  v8 = lhs;
  if (a4 <= 0.0)
  {
    return CMTimeSubtract(a3, &rhs, &v8);
  }

  else
  {
    return CMTimeAdd(a3, &rhs, &v8);
  }
}

void subaq_appendDebugDesc(__CFString *a1, CFTypeRef cf)
{
  v4 = CFGetRetainCount(cf);
  v5 = *(cf + 8);
  CFStringAppendFormat(a1, 0, @"(SubAQ %p retainCount:%d -> AQTS %p %.0f Hz '%c%c%c%c')\n", cf, v4, *(cf + 5), *v5, HIBYTE(*(v5 + 8)), BYTE2(*(v5 + 8)), BYTE1(*(v5 + 8)), *(v5 + 8));
}

float subaq_getCurrentPlayRate2ParameterValue(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v6 = 1.0;
  v2 = MEMORY[0x19A8D0E00](a1 + 16);
  if (FigAudioQueueTimingShimGetParameter(*(a1 + 40), 0x15u, &v6))
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    v6 = 1.0;
  }

  if (v2)
  {
    CFRelease(v2);
  }

  return v6;
}

uint64_t subaq_returnAQBufferInfoPtr(uint64_t result, uint64_t a2)
{
  if (a2)
  {
    if (*a2)
    {
      CFRelease(*a2);
      *a2 = 0;
    }

    v3 = *(a2 + 8);
    if (v3)
    {
      CFRelease(v3);
      *(a2 + 8) = 0;
    }

    FigSimpleMutexLock();
    *(a2 + 16) = 0;

    return FigSimpleMutexUnlock();
  }

  return result;
}

uint64_t subaq_audioProcessingUnitSetPropertyApplier(uint64_t a1, uint64_t a2, uint64_t a3)
{
  VTable = CMBaseObjectGetVTable();
  v8 = *(VTable + 8);
  result = VTable + 8;
  v9 = *(v8 + 56);
  if (v9)
  {

    return v9(a3, a1, a2);
  }

  return result;
}

uint64_t faq_enqueueSourceDataThread(uint64_t a1)
{
  do
  {
    FigSemaphoreWaitRelative();
    if (*(a1 + 304))
    {
      break;
    }

    faq_enqueueSourceData(a1, 1);
  }

  while (!*(a1 + 304));
  return 0;
}

BOOL subaq_doesAudioQueueHaveBuffersToFlush(uint64_t a1)
{
  memset(&v5, 0, sizeof(v5));
  if ((*(a1 + 444) & 1) == 0)
  {
    return 0;
  }

  if ((*(a1 + 688) & 1) == 0)
  {
    return 1;
  }

  v2 = (a1 + 676);
  lhs = *(a1 + 432);
  v3 = *(a1 + 456);
  CMTimeAdd(&v5, &lhs, &v3);
  lhs = *v2;
  v3 = v5;
  return CMTimeCompare(&lhs, &v3) != 0;
}

CMTime *faqTimelineWrangler_convertMediaTimeToAQTime@<X0>(uint64_t a1@<X0>, CMTime *a2@<X1>, uint64_t a3@<X8>, double a4@<D0>)
{
  memset(&v14, 0, sizeof(v14));
  memset(&v13, 0, sizeof(v13));
  *a3 = 0;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  if (a4 >= 0.0)
  {
    lhs = *a2;
    *&rhs.value = *(a1 + 104);
    epoch = *(a1 + 120);
  }

  else
  {
    lhs = *(a1 + 104);
    *&rhs.value = *&a2->value;
    epoch = a2->epoch;
  }

  rhs.epoch = epoch;
  CMTimeSubtract(&v14, &lhs, &rhs);
  v8 = fabs(a4);
  lhs = *(a1 + 32);
  CMTimeMultiplyByFloat64(&v13, &lhs, v8);
  lhs = v14;
  rhs = v14;
  v10 = v13;
  CMTimeAdd(&lhs, &rhs, &v10);
  rhs = lhs;
  return CMTimeMultiplyByFloat64(a3, &rhs, 1.0 / v8);
}

void subaq_deferredAudioQueueStartupCompleted(uint64_t *a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = *a1;
  v2 = a1[1];
  v4 = *(a1 + 4);
  if (*(*a1 + 16))
  {
    v5 = 1;
  }

  else
  {
    v5 = v4 == 0;
  }

  if (!v5)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    if (*(v2 + 608))
    {
      FigSimpleMutexLock();
      v8 = *(v3 + 384);
      v7 = *(v3 + 392);
      v10 = *(v3 + 400);
      v9 = *(v3 + 408);
      *(v3 + 384) = 0u;
      *(v3 + 400) = 0u;
      FigSimpleMutexUnlock();
      if (v8)
      {
        v15 = *MEMORY[0x1E6960C70];
        v16 = *(MEMORY[0x1E6960C70] + 16);
        v13 = v15;
        v14 = v16;
        v8(v7, v4, &v15, &v13, NAN);
      }

      else if (v10)
      {
        if (v9)
        {
          v12 = FigCFWeakReferenceHolderCopyReferencedObject();
          if (v12)
          {
            v15 = *MEMORY[0x1E6960C70];
            v16 = *(MEMORY[0x1E6960C70] + 16);
            v13 = v15;
            v14 = v16;
            v10(v12, v4, &v15, &v13, NAN);
          }

          FigDeferCFRelease();
          CFRelease(v9);
        }

        else
        {
          v15 = *MEMORY[0x1E6960C70];
          v16 = *(MEMORY[0x1E6960C70] + 16);
          v13 = v15;
          v14 = v16;
          v10(0, v4, &v15, &v13, NAN);
          FigDeferCFRelease();
        }
      }

      FigSimpleMutexLock();
      *(v3 + 305) = 0;
      *(v3 + 576) = 0;
      *(v3 + 753) = 0;
    }

    else
    {
      subaq_removeIfObsolete(v3, v2);
      FigSimpleMutexLock();
    }

    if (*(v2 + 48))
    {
      LODWORD(v15) = 0;
      LODWORD(v13) = 4;
      Property = FigAudioQueueTimingShimGetProperty(*(v2 + 40), 0x6171726Eu, &v15, &v13);
      if (!(Property | v15))
      {
        *(v2 + 48) = 0;
        *(v2 + 50) = 0;
        if (*(v2 + 608))
        {
          subaq_deferredAudioQueueStartupCompleted_cold_1(v3);
        }
      }
    }

    FigSimpleMutexUnlock();
  }

  FigReadWriteLockUnlockForRead();
  CFRelease(v3);
  CFRelease(v2);
  free(a1);
}

BOOL faq_shouldSetMXSessionOnAudioQueues(uint64_t a1, uint64_t a2)
{
  if (faq_shouldSetMXSessionOnAudioQueues_onceToken != -1)
  {
    faq_shouldSetMXSessionOnAudioQueues_cold_1();
  }

  return (faq_shouldSetMXSessionOnAudioQueues_sShouldSetMXSession & 1) == 0;
}

uint64_t MTAudioProcessingTapEnsureSubmixTapCreated(uint64_t a1, uint64_t a2)
{
  v4 = *(*(CMBaseObjectGetVTable() + 16) + 56);
  if (!v4)
  {
    return 4294954514;
  }

  return v4(a1, a2);
}

uint64_t MTAudioProcessingTapCreateAQTap(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = *(*(CMBaseObjectGetVTable() + 16) + 16);
  if (!v10)
  {
    return 4294954514;
  }

  return v10(a1, a2, a3, a4, a5);
}

uint64_t __faq_shouldSetMXSessionOnAudioQueues_block_invoke()
{
  result = FigPreferAudioSessionOverCMSession();
  if (result || (result = FigGetCFPreferenceNumberWithDefault(), result != 1))
  {
    faq_shouldSetMXSessionOnAudioQueues_sShouldSetMXSession = 1;
  }

  return result;
}

void subaq_applyOneCachedProperty(CFTypeRef cf1, uint64_t a2, uint64_t a3)
{
  if (*(a3 + 16) || !CFEqual(cf1, @"AllowedToUseHardware"))
  {
    subaq_applyOneCachedProperty_cold_1();
  }
}

uint64_t __subaq_acquireAndPrepareAQBuffer_block_invoke(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 40);
  v5 = 4;
  v6 = 0;
  result = FigAudioQueueTimingShimGetProperty(v1, 0x71706964u, &v6, &v5);
  v3 = 0;
  if (!result)
  {
    v4 = v6;
    result = getpid();
    v3 = v4 == result;
  }

  subaq_acquireAndPrepareAQBuffer_sAudioQueueCanAllocateBufferWithMemory = v3;
  return result;
}

double faq_getLinearlyInterpolatedVolumeAtTimeInRange(CMTime *a1, CMTime *a2, double a3, double a4)
{
  lhs = *a2;
  v9 = *a1;
  CMTimeSubtract(&v11, &lhs, &v9);
  lhs = v11;
  Seconds = CMTimeGetSeconds(&lhs);
  lhs = a1[1];
  return (a4 - a3) * (Seconds / CMTimeGetSeconds(&lhs)) + a3;
}

uint64_t subaq_fapuIterateAndScheduleParameters(uint64_t a1, void *a2, CMTime *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v21 = **&MEMORY[0x1E6960C70];
  v20 = v21;
  memset(&v19, 0, sizeof(v19));
  while (1)
  {
    v22 = *a3;
    result = FigAudioProcessingUnitPackedCurveIteratorNext(a2, &v22, &v21, &v19.epoch, &v19.timescale, &v19, a7, a8);
    if (result == -19782)
    {
      return 0;
    }

    if (result)
    {
      return result;
    }

    v13 = *(a4 + 8);
    v14 = *(a4 + 72);
    v22 = v21;
    faqTimelineWrangler_convertMediaTimeToAQTime(v13 + 424, &v22, &v20, v14);
    if (*(a4 + 102))
    {
      result = FigAudioProcessingUnitPackedCurveIteratorGetSnapshot(a2, &v19.epoch, &v19.timescale, &v19);
      if (result)
      {
        return result;
      }
    }

    v16 = *&v19.timescale;
    epoch = v19.epoch;
    value = v19.value;
    v18 = *(*(CMBaseObjectGetVTable() + 16) + 8);
    if (!v18)
    {
      break;
    }

    v22 = v20;
    result = v18(a1, &v22, epoch, v16, value);
    if (result)
    {
      return result;
    }
  }

  return 4294954514;
}

double faqTimelineWrangler_setAQTimeInFAQProcessTransitions(uint64_t *a1, __int128 *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v2 = *a2;
  a1[6] = *(a2 + 2);
  *(a1 + 2) = v2;
  if (dword_1EAF16C30)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  return *&v2;
}

void faq_fireTransitionCallback(uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  v6 = *(a1 + 24);
  v7 = *(a1 + 40);
  v4 = *(a1 + 48);
  v5 = *(a1 + 64);
  v3(v2, *(a1 + 80), &v6, &v4, *(a1 + 72));
  faq_destroyTransitionRecord(a1);
}

__CFString *faq_CopyFormattingDesc(_BYTE *a1)
{
  v2 = CFGetAllocator(a1);
  Mutable = CFStringCreateMutable(v2, 0);
  v4 = CFGetRetainCount(a1);
  CFStringAppendFormat(Mutable, 0, @"[FigAudioQueue %p (rc=%d)", a1, v4);
  if (a1[16])
  {
    CFStringAppendFormat(Mutable, 0, @"invalidated]");
  }

  else
  {
    CFStringAppendFormat(Mutable, 0, @"]");
  }

  return Mutable;
}

float OUTLINED_FUNCTION_11_7(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, float *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, __int128 a20, unint64_t a21)
{
  result = *a12;
  *&STACK[0x240] = a20;
  STACK[0x250] = a21;
  return result;
}

void OUTLINED_FUNCTION_18_4(uint64_t a1@<X8>)
{
  *(v3 + 68) = a1;
  *(v3 + 76) = 2048;
  *(v3 + 78) = v1;
  *(v3 + 86) = 2048;
  *(v3 + 88) = v2;
  *(v3 + 96) = 2082;
}

BOOL OUTLINED_FUNCTION_19_4(NSObject *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, __int16 a12, char a13, os_log_type_t type, int a15)
{

  return os_log_type_enabled(a1, type);
}

uint64_t OUTLINED_FUNCTION_29_4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, __int128 a14, uint64_t a15)
{
  *(v15 + 160) = a14;
  *(v15 + 176) = a15;
  return v16 - 256;
}

__n128 OUTLINED_FUNCTION_30_4@<Q0>(unint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, __n128 a7, unint64_t a8)
{
  v8[11].n128_u64[0] = a1;
  result = a7;
  v8[4] = a7;
  v8[5].n128_u64[0] = a8;
  return result;
}

uint64_t OUTLINED_FUNCTION_32_4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, __int16 a11, char a12, char a13, int a14)
{

  return fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
}

uint64_t OUTLINED_FUNCTION_33_4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33)
{
  *(v33 + 32) = 0;

  return fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
}

CMTimeRange *OUTLINED_FUNCTION_38_1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, CMTimeRange *a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, CMTime *end, uint64_t a29, CMTime *start, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, __int128 enda, uint64_t end_16, uint64_t a43, uint64_t starta, int start_8, int start_12, uint64_t start_16)
{
  starta = *(v49 - 216);
  start_8 = *(v49 - 208);
  start_12 = v48;
  start_16 = v47;
  enda = *(v49 - 256);
  end_16 = *(v49 - 240);

  return CMTimeRangeFromTimeToTime(&a27, &starta, &enda);
}

BOOL OUTLINED_FUNCTION_40_2(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, os_log_type_t type)
{

  return os_log_type_enabled(a1, type);
}

BOOL OUTLINED_FUNCTION_60_2(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, os_log_type_t type)
{

  return os_log_type_enabled(a1, type);
}

BOOL OUTLINED_FUNCTION_61_3(NSObject *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, int a14, __int16 a15, char a16, os_log_type_t type, int a18)
{

  return os_log_type_enabled(a1, type);
}

uint64_t OUTLINED_FUNCTION_69_1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, int a25, char a26, int a27)
{

  return fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
}

void *OUTLINED_FUNCTION_74_2()
{

  return malloc_type_malloc(0x18uLL, 0x1020040EDCEB4C7uLL);
}

uint64_t OUTLINED_FUNCTION_75_1(uint64_t a1, uint64_t a2)
{

  return CMNotificationCenterPostNotification();
}

void OUTLINED_FUNCTION_76_2()
{

  JUMPOUT(0x19A8D0E00);
}

__n128 OUTLINED_FUNCTION_85_1()
{
  result = *(v0 + 24);
  v1[3] = result;
  v1[4].n128_u64[0] = *(v0 + 40);
  return result;
}

BOOL OUTLINED_FUNCTION_101_1(NSObject *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, int a14, __int16 a15, char a16, os_log_type_t type, int a18)
{

  return os_log_type_enabled(a1, type);
}

BOOL OUTLINED_FUNCTION_102_0(NSObject *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, __int16 a11, char a12, os_log_type_t type, int a14)
{

  return os_log_type_enabled(a1, type);
}

uint64_t OUTLINED_FUNCTION_103_1()
{

  return __maskrune(v0, 0x40000uLL);
}

uint64_t OUTLINED_FUNCTION_104_1(uint64_t a1)
{

  return FigSimpleMutexLock();
}

uint64_t OUTLINED_FUNCTION_105_1()
{

  return __maskrune(v0, 0x40000uLL);
}

uint64_t RegisterFigCaptionRendererInputType()
{
  CMBaseGetClassID();

  return FigBaseClassRegisterClass();
}

void vmc2FinishAndDestroyImageEnhancementFilter(uint64_t a1)
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x2000000000;
  v12 = 0;
  v5 = 0;
  v6 = &v5;
  v7 = 0x2000000000;
  v8 = 0;
  v1 = *(a1 + 984);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = __vmc2FinishAndDestroyImageEnhancementFilter_block_invoke;
  block[3] = &unk_1E7479B50;
  block[5] = &v5;
  block[6] = a1;
  block[4] = &v9;
  dispatch_sync(v1, block);
  if (v10[3])
  {
    VTTemporalFilterSessionCompleteFrames();
  }

  v2 = v6[3];
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = v10[3];
  if (v3)
  {
    CFRelease(v3);
  }

  _Block_object_dispose(&v5, 8);
  _Block_object_dispose(&v9, 8);
}

uint64_t vmc2PriorImageQueueGaugeSafeDisplayDurationChanged(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return vmc2OutputOccupancyChanged(a2);
  }

  return result;
}

void vmc2PriorImageQueueGaugeWasInvalidated(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    FigSimpleMutexLock();
    if (*(a2 + 1520))
    {
      CMNotificationCenterGetDefaultLocalCenter();
      FigNotificationCenterRemoveWeakListener();
      CMNotificationCenterGetDefaultLocalCenter();
      FigNotificationCenterRemoveWeakListener();
      v4 = *(a2 + 1520);
      if (v4)
      {
        CFRelease(v4);
        *(a2 + 1520) = 0;
      }
    }

    FigSimpleMutexUnlock();

    vmc2OutputOccupancyChanged(a2);
  }
}

void vmc2RemoveDecompressionSession(uint64_t a1)
{
  if (*(a1 + 64))
  {
    FigStopForwardingMediaServicesProcessDeathNotification();
    CMNotificationCenterGetDefaultLocalCenter();
    CMNotificationCenterRemoveListener();
    CMNotificationCenterGetDefaultLocalCenter();
    FigNotificationCenterRemoveWeakListener();
    VTDecompressionSessionInvalidate(*(a1 + 64));
    CFRelease(*(a1 + 64));
    *(a1 + 64) = 0;
    ++*(a1 + 1168);
  }

  *(a1 + 1057) = 0;
  *(a1 + 1089) = 0;
}

void vmc2UpcomingPTSInfoChanged(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16) && FigAtomicCompareAndSwap32())
  {
    v3 = *(a2 + 448);

    dispatch_async_f(v3, a2, vmc2RecalculateUpcomingImageTimes2);
  }
}

void vmc2DisplayModeChanged(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    v6 = v2;
    v7 = v3;
    v5 = 0;
    FPSupport_GetCurrentDisplayModeVideoRangeAndSizeAndFrameRate(0, &v5, 0, 0);
    *(a2 + 1432) = (v5 - 2) < 3;
  }
}

void vmc2ClearSavedList(uint64_t a1)
{
  v1 = *(a1 + 800);
  *(a1 + 800) = 0;
  if (v1)
  {
    do
    {
      v3 = *v1;
      v2 = v1[1];
      if (v2)
      {
        CFRelease(v2);
        v1[1] = 0;
      }

      v4 = v1[3];
      if (v4)
      {
        CFRelease(v4);
        v1[3] = 0;
      }

      v5 = v1[4];
      if (v5)
      {
        CFRelease(v5);
      }

      free(v1);
      v1 = v3;
    }

    while (v3);
  }
}

uint64_t VMC2CreateWithQueues2(const __CFAllocator *a1, const opaqueCMFormatDescription *a2, const void *a3, const void *a4, const void *a5, const void *a6, uint64_t a7, const __CFArray *a8, const __CFArray *a9, uint64_t a10, uint64_t a11, const void *a12, const void *a13, const __CFDictionary *a14, uint64_t *a15)
{
  v49 = 0;
  v47 = 0uLL;
  v48 = 0u;
  memset(v46, 0, sizeof(v46));
  cf = 0;
  v44 = 1;
  v43 = 0;
  fig_note_initialize_category_with_default_work_cf();
  if (a8)
  {
    Count = CFArrayGetCount(a8);
    if (a9)
    {
LABEL_3:
      v21 = CFArrayGetCount(a9);
      goto LABEL_6;
    }
  }

  else
  {
    Count = 0;
    if (a9)
    {
      goto LABEL_3;
    }
  }

  v21 = 0;
LABEL_6:
  if (Count == v21)
  {
    v22 = *MEMORY[0x1E695E480];
    v24.n128_f64[0] = FigSampleBufferProviderCreateForBufferQueue(*MEMORY[0x1E695E480], a6, &v49);
    if (v23 || (VMC2MakeOutputCallbacksForImageQueueArray(a8, a9, 96, v46), v23))
    {
      v25 = v23;
      Mutable = 0;
      goto LABEL_10;
    }

    if (a9 && (v29 = CFArrayGetCount(a9), v29 >= 1))
    {
      v30 = v29;
      v31 = 0;
      Mutable = 0;
      do
      {
        ValueAtIndex = CFArrayGetValueAtIndex(a9, v31);
        if (ValueAtIndex)
        {
          v33 = CFGetTypeID(ValueAtIndex);
          if (v33 == CFDictionaryGetTypeID())
          {
            LODWORD(v39) = 0;
            if (FigCFDictionaryGetInt32IfPresent())
            {
              if (!Mutable)
              {
                Mutable = CFArrayCreateMutable(v22, 0, MEMORY[0x1E695E9C0]);
                if (!Mutable)
                {
                  VMC2CreateWithQueues2_cold_2(&v39, &v41);
                  goto LABEL_43;
                }
              }

              FigCFArrayAppendInt32();
            }
          }
        }

        ++v31;
      }

      while (v30 != v31);
      if (Mutable)
      {
        v34 = CFArrayGetCount(Mutable);
        if (v34 >= 1 && v34 != v30)
        {
          v25 = 4294954473;
          goto LABEL_10;
        }
      }
    }

    else
    {
      Mutable = 0;
    }

    FigCFDictionaryGetBooleanIfPresent();
    FigCFDictionaryGetBooleanIfPresent();
    if (a12)
    {
      FigActivitySchedulerCreateForCFRunLoop(a1, a12, &cf);
      if (v35)
      {
LABEL_39:
        v25 = v35;
        goto LABEL_10;
      }
    }

    else
    {
      v24.n128_f64[0] = FigActivitySchedulerCreateForNewThread(a1, 3, @"com.apple.coremedia.videomediaconverter", &cf);
      if (v35)
      {
        goto LABEL_39;
      }
    }

    v41 = *a10;
    v42 = *(a10 + 16);
    v39 = *a11;
    v40 = *(a11 + 16);
    v25 = VMC2CreateWithCallbacks(a1, a2, a3, a4, a5, v49, a7, v46, Mutable, &v41, &v39, cf, a13, a14, a15);
    a7 = 0;
    *(&v47 + 1) = 0;
  }

  else
  {
    VMC2CreateWithQueues2_cold_1(&v41);
    Mutable = 0;
LABEL_43:
    v25 = v41;
  }

LABEL_10:
  if (v49)
  {
    CFRelease(v49);
  }

  if (*(&v47 + 1))
  {
    (*(&v47 + 1))(*(&v46[0] + 1), v24);
  }

  if (a7)
  {
    v27 = *(a7 + 24);
    if (v27)
    {
      v27(*(a7 + 8), v24);
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

  return v25;
}

void *vmc2SetVideoFormatDescription(void *result, CMFormatDescriptionRef desc)
{
  if (result && desc)
  {
    v3 = result;
    v4 = result[4];
    if (v4)
    {
      CFRelease(v4);
      v3[4] = 0;
    }

    if (CMFormatDescriptionGetMediaType(desc) == 1952606066)
    {
      *(v3 + 40) = 1;
      result = CFRetain(desc);
      v3[4] = result;
    }

    else
    {
      CMFormatDescriptionGetMediaSubType(desc);
      v3[4] = CFRetain(desc);
      result = CVPixelFormatDescriptionGetDescriptionWithPixelFormatType();
      *(v3 + 40) = result != 0;
    }
  }

  return result;
}

void vmc2UpdateDisplayMode(uint64_t a1)
{
  v2 = 0;
  FPSupport_GetCurrentDisplayModeVideoRangeAndSizeAndFrameRate(0, &v2, 0, 0);
  *(a1 + 1432) = (v2 - 2) < 3;
}

uint64_t __copy_assignment_8_8_t0w16_pa0_323_16_pa0_24722_24_pa0_38677_32(uint64_t result, uint64_t a2)
{
  *result = *a2;
  *(result + 16) = *(a2 + 16);
  *(result + 24) = *(a2 + 24);
  *(result + 32) = *(a2 + 32);
  return result;
}

uint64_t __copy_assignment_8_8_t0w16_pa0_37031_16_pa0_15589_24_pa0_48845_32_pa0_31235_40_pa0_15173_48_pa0_1637_56_pa0_22919_64_pa0_52647_72_pa0_36147_80_pa0_30122_88(uint64_t result, uint64_t a2)
{
  *result = *a2;
  *(result + 16) = *(a2 + 16);
  *(result + 24) = *(a2 + 24);
  *(result + 32) = *(a2 + 32);
  *(result + 40) = *(a2 + 40);
  *(result + 48) = *(a2 + 48);
  *(result + 56) = *(a2 + 56);
  *(result + 64) = *(a2 + 64);
  *(result + 72) = *(a2 + 72);
  *(result + 80) = *(a2 + 80);
  *(result + 88) = *(a2 + 88);
  return result;
}

uint64_t vmc2BuildDecompressionSession(uint64_t a1)
{
  propertyValueOut[16] = *MEMORY[0x1E69E9840];
  value[0] = 0;
  if (!*(a1 + 32) || *(a1 + 40))
  {
    return 0;
  }

  value[1] = vmc2OutputFrame;
  value[2] = a1;
  v4 = *(a1 + 264);
  v5 = *(*(CMBaseObjectGetVTable() + 16) + 24);
  v6 = MEMORY[0x1E695E480];
  if (v5 && v5(v4))
  {
    v7 = *(a1 + 264);
    v8 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v8)
    {
      v9 = v8(v7, @"ThreadPriority", *v6, value);
      if (!v9)
      {
        goto LABEL_9;
      }

      v2 = v9;
      v12 = 0;
    }

    else
    {
      v12 = 0;
      v2 = 4294954514;
    }

LABEL_33:
    if (*(a1 + 64))
    {
      FigStopForwardingMediaServicesProcessDeathNotification();
      VTDecompressionSessionInvalidate(*(a1 + 64));
      v21 = *(a1 + 64);
      if (v21)
      {
        CFRelease(v21);
      }

      *(a1 + 64) = 0;
      ++*(a1 + 1168);
    }

    goto LABEL_91;
  }

LABEL_9:
  v10 = *v6;
  Mutable = CFDictionaryCreateMutable(v10, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v12 = Mutable;
  if (Mutable)
  {
    if (value[0])
    {
      CFDictionarySetValue(Mutable, *MEMORY[0x1E6983A88], value[0]);
    }

    v13 = *(a1 + 992);
    if (v13)
    {
      CFDictionarySetValue(v12, *MEMORY[0x1E6983AA8], v13);
    }

    v14 = *(a1 + 1000);
    if (v14)
    {
      CFDictionarySetValue(v12, *MEMORY[0x1E6983A78], v14);
    }

    if (*(a1 + 840))
    {
      FigCFDictionarySetInt32();
    }

    v15 = *(a1 + 864);
    if (v15)
    {
      CFDictionarySetValue(v12, *MEMORY[0x1E6983AA0], v15);
    }

    v16 = MEMORY[0x1E695E4D0];
    if (*(a1 + 875))
    {
      CFDictionarySetValue(v12, *MEMORY[0x1E6983A98], *MEMORY[0x1E695E4D0]);
    }

    if (*(a1 + 876))
    {
      CFDictionarySetValue(v12, *MEMORY[0x1E6983A90], *v16);
    }
  }

  CFGetAllocator(a1);
  started = VTDecompressionSessionCreateWithOptions();
  if (started)
  {
    goto LABEL_25;
  }

  ++*(a1 + 1164);
  started = FigStartForwardingMediaServicesProcessDeathNotification();
  if (started)
  {
    goto LABEL_25;
  }

  v18 = *(a1 + 256);
  if (!v18 || CFArrayGetCount(v18) < 1)
  {
    goto LABEL_43;
  }

  MediaSubType = CMFormatDescriptionGetMediaSubType(*(a1 + 32));
  if (MediaSubType > 1902212656)
  {
    if (MediaSubType == 1902403958)
    {
      goto LABEL_40;
    }

    v20 = 1902212657;
  }

  else
  {
    if (MediaSubType == 1635135537)
    {
      goto LABEL_40;
    }

    v20 = 1684108849;
  }

  if (MediaSubType != v20)
  {
    v22 = *(a1 + 64);
    v23 = MEMORY[0x1E69839B8];
    goto LABEL_41;
  }

LABEL_40:
  v22 = *(a1 + 64);
  v23 = MEMORY[0x1E69839B0];
LABEL_41:
  started = VTSessionSetProperty(v22, *v23, *(a1 + 256));
  if (started || (started = VTDecompressionSessionSetMultiImageCallback(*(a1 + 64), vmc2OutputMultiImageFrame, a1), started))
  {
LABEL_25:
    v2 = started;
    goto LABEL_33;
  }

LABEL_43:
  v24 = *(a1 + 600);
  if (v24)
  {
    CFRelease(v24);
    *(a1 + 600) = 0;
  }

  VTSessionCopyProperty(*(a1 + 64), *MEMORY[0x1E69839C0], v10, (a1 + 600));
  *(a1 + 608) = 0;
  vmc2WhileHoldingTimebaseMutexUpdateQualityOfServiceCapability(a1);
  *(a1 + 626) = 1;
  v25 = *(a1 + 1008);
  if (v25)
  {
    CFRelease(v25);
    *(a1 + 1008) = 0;
  }

  VTSessionCopyProperty(*(a1 + 64), *MEMORY[0x1E6983958], v10, (a1 + 1008));
  v26 = *(a1 + 1048);
  if (v26)
  {
    VTSessionSetProperties(*(a1 + 64), v26);
  }

  v27 = *(a1 + 56);
  if (v27)
  {
    started = VTSessionSetProperty(*(a1 + 64), *MEMORY[0x1E6983980], v27);
    if (started)
    {
      goto LABEL_25;
    }
  }

  if (*(a1 + 840))
  {
    v28 = CFNumberCreate(v10, kCFNumberSInt32Type, (a1 + 840));
    VTSessionSetProperty(*(a1 + 64), *MEMORY[0x1E6983918], v28);
    CFRelease(v28);
  }

  if (*(a1 + 874))
  {
    VTSessionSetProperty(*(a1 + 64), *MEMORY[0x1E6983960], *MEMORY[0x1E695E4D0]);
  }

  if (*(a1 + 872))
  {
    VTSessionSetProperty(*(a1 + 64), *MEMORY[0x1E69839D0], *MEMORY[0x1E695E4D0]);
  }

  v29 = *(a1 + 736);
  if (v29)
  {
    VTSessionSetProperty(*(a1 + 64), *MEMORY[0x1E6983938], v29);
  }

  v30 = *(a1 + 744);
  if (v30)
  {
    VTSessionSetProperty(*(a1 + 64), *MEMORY[0x1E69839E8], v30);
  }

  v31 = *(a1 + 752);
  if (v31)
  {
    VTSessionSetProperty(*(a1 + 64), *MEMORY[0x1E6983990], v31);
  }

  v32 = *(a1 + 760);
  if (v32)
  {
    VTSessionSetProperty(*(a1 + 64), *MEMORY[0x1E69839C8], v32);
  }

  v33 = *MEMORY[0x1E695E4D0];
  v34 = *MEMORY[0x1E695E4C0];
  if (*(a1 + 873))
  {
    v35 = *MEMORY[0x1E695E4D0];
  }

  else
  {
    v35 = *MEMORY[0x1E695E4C0];
  }

  VTSessionSetProperty(*(a1 + 64), *MEMORY[0x1E69839A0], v35);
  if (*(a1 + 879))
  {
    v36 = v33;
  }

  else
  {
    v36 = v34;
  }

  VTSessionSetProperty(*(a1 + 64), *MEMORY[0x1E6983998], v36);
  v37 = *(a1 + 1016);
  if (v37)
  {
    VTSessionSetProperty(*(a1 + 64), *MEMORY[0x1E6983920], v37);
  }

  v38 = *(a1 + 1024);
  if (v38)
  {
    VTSessionSetProperty(*(a1 + 64), *MEMORY[0x1E69839E0], v38);
  }

  v39 = *(a1 + 1032);
  if (v39)
  {
    VTSessionSetProperty(*(a1 + 64), *MEMORY[0x1E6983A08], v39);
  }

  v40 = *(a1 + 1040);
  if (v40)
  {
    VTSessionSetProperty(*(a1 + 64), *MEMORY[0x1E6983988], v40);
  }

  if (*(a1 + 768))
  {
    v41 = CMFormatDescriptionGetMediaSubType(*(a1 + 32));
    if (v41 == 1902212657 || v41 == 1635135537)
    {
      VTSessionSetProperty(*(a1 + 64), *MEMORY[0x1E6983900], *(a1 + 768));
    }
  }

  if (value[0])
  {
    VTSessionSetProperty(*(a1 + 64), *MEMORY[0x1E6983940], value[0]);
  }

  CMNotificationCenterGetDefaultLocalCenter();
  started = CMNotificationCenterAddListener();
  if (started)
  {
    goto LABEL_25;
  }

  CMNotificationCenterGetDefaultLocalCenter();
  started = FigNotificationCenterAddWeakListener();
  if (started)
  {
    goto LABEL_25;
  }

  *(a1 + 608) = -NAN;
  v42 = *(a1 + 64);
  if (v42)
  {
    propertyValueOut[0] = 0;
    VTSessionCopyProperty(v42, *MEMORY[0x1E69839F0], v10, propertyValueOut);
    v43 = propertyValueOut[0];
    *(a1 + 1208) = propertyValueOut[0] != 0;
    if (v43)
    {
      *(a1 + 1209) = v43 == v33;
      CFRelease(v43);
    }
  }

  v2 = 0;
LABEL_91:
  if (dword_1EAF18AC0)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (v12)
  {
    CFRelease(v12);
  }

  if (value[0])
  {
    CFRelease(value[0]);
  }

  return v2;
}

void vmc2UpdateExternalProtectionStatus(uint64_t a1)
{
  v6 = 0;
  os_retain(*(a1 + 1424));
  voucher_adopt();
  v2 = *(a1 + 808);
  if (v2)
  {
    v3 = *(*(CMBaseObjectGetVTable() + 16) + 24);
    if (v3 && !v3(v2, 7, &v6))
    {
      v4 = v6;
    }

    else
    {
      v4 = 0;
      v6 = 0;
    }
  }

  else
  {
    v4 = 1;
    v6 = 1;
  }

  *(a1 + 836) = v4;
  v5 = voucher_adopt();
  os_release(v5);
}

void VMC2SetMinUpcomingPresentationTimeStamp(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 16))
  {
    emitter = fig_log_get_emitter();

    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 4294954511, "<<<< VMC >>>>", 7881, v2);
  }

  else
  {
    FigSimpleMutexLock();
    v6 = *(a2 + 16);
    *(a1 + 416) = *a2;
    *(a1 + 432) = v6;
    FigSimpleMutexUnlock();

    vmc2RecalculateUpcomingImageTimes(a1);
  }
}

_BYTE *vmc2ResetTroubleMonitorTimers(_BYTE *result)
{
  if (result[626])
  {
    v1 = result;
    FigSimpleMutexLock();
    v1[640] = 0;
    v1[656] = 0;
    v1[672] = 0;
    v1[688] = 0;

    return FigSimpleMutexUnlock();
  }

  return result;
}

void VMC2WaitUntilPrerolled(uint64_t a1)
{
  if (*(a1 + 16))
  {
    emitter = fig_log_get_emitter();

    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 4294954511, "<<<< VMC >>>>", 7976, v1);
  }

  else
  {
    FigSemaphoreWaitRelative();
  }
}

void VMC2Reset(uint64_t a1, int a2)
{
  if (*(a1 + 16))
  {
    emitter = fig_log_get_emitter();

    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 4294954511, "<<<< VMC >>>>", 8013, v2);
  }

  else
  {
    FigSimpleMutexLock();
    v6 = MEMORY[0x1E6960C70];
    *(a1 + 416) = *MEMORY[0x1E6960C70];
    *(a1 + 432) = *(v6 + 16);
    *(a1 + 520) = 0;
    *(a1 + 730) = 0;
    FigSimpleMutexUnlock();
    if (a2)
    {
      vmc2InvokeOutputCallback_FlushOutput(a1);
    }
  }
}

uint64_t vmc2InvokeOutputCallback_FlushOutput(uint64_t a1)
{
  FigReadWriteLockLockForRead();
  if (*(a1 + 249))
  {
    v2 = *(a1 + 208);
    if (v2)
    {
      v2(*(a1 + 152));
    }
  }

  else
  {
    vmc2InvokeOutputCallback_FlushOutput_cold_1();
  }

  return FigReadWriteLockUnlockForRead();
}

void VMC2PretendOutputIsLow(uint64_t a1)
{
  if (*(a1 + 16))
  {
    emitter = fig_log_get_emitter();

    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 4294954511, "<<<< VMC >>>>", 8034, v1);
  }

  else
  {
    *(a1 + 440) = 1;
  }
}

void VMC2RequestDecodeForPreroll(uint64_t a1, const void *a2)
{
  if (*(a1 + 16))
  {
    emitter = fig_log_get_emitter();

    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 4294954511, "<<<< VMC >>>>", 8048, v2);
  }

  else
  {
    vmc2PostCompletedDecodeForPrerollIfPreviouslyRequestedAndMaybeRecordNewRequest(a1, 1, a2);
    v5 = *(a1 + 264);
    v6 = *(*(CMBaseObjectGetVTable() + 16) + 16);
    if (v6)
    {
      v6(v5);
    }
  }
}

void vmc2PostCompletedDecodeForPrerollIfPreviouslyRequestedAndMaybeRecordNewRequest(uint64_t a1, char a2, const void *a3)
{
  FigSimpleMutexLock();
  v6 = *(a1 + 712);
  v7 = *(a1 + 720);
  values = v7;
  *(a1 + 712) = a2;
  if (a3)
  {
    v8 = CFRetain(a3);
  }

  else
  {
    v8 = 0;
  }

  *(a1 + 720) = v8;
  FigSimpleMutexUnlock();
  if (v6)
  {
    if (v7)
    {
      v9 = CFDictionaryCreate(*MEMORY[0x1E695E480], kVideoMediaConverter2NotificationParameter_RequestID, &values, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    }

    else
    {
      v9 = 0;
    }

    CMNotificationCenterGetDefaultLocalCenter();
    FigDispatchAsyncPostNotification();
    v7 = values;
    if (values)
    {
      goto LABEL_11;
    }
  }

  else
  {
    v9 = 0;
    if (v7)
    {
LABEL_11:
      CFRelease(v7);
    }
  }

  if (v9)
  {
    CFRelease(v9);
  }
}

uint64_t VMC2CopyPerformanceDictionary(uint64_t a1, __CFDictionary **a2)
{
  v4 = *MEMORY[0x1E695E480];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 30, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  FigCFDictionarySetInt32();
  FigCFDictionarySetInt32();
  FigCFDictionarySetInt32();
  FigCFDictionarySetInt32();
  FigCFDictionarySetInt32();
  FigCFDictionarySetInt32();
  FigCFDictionarySetInt32();
  FigCFDictionarySetInt32();
  FigCFDictionarySetInt32();
  FigCFDictionarySetInt32();
  FigCFDictionarySetInt32();
  FigCFDictionarySetInt32();
  FigCFDictionarySetInt32();
  FigCFDictionarySetInt32();
  FigCFDictionarySetInt32();
  FigCFDictionarySetInt32();
  FigCFDictionarySetInt32();
  FigCFDictionarySetInt32();
  FigCFDictionarySetInt32();
  FigSimpleMutexLock();
  if (*(a1 + 1116) >= 1)
  {
    v6 = *(a1 + 600);
    if (v6)
    {
      Count = CFArrayGetCount(v6);
      v8 = *(a1 + 1116);
      if (v8 < Count)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 600), v8);
        CFDictionarySetValue(Mutable, @"WorstQualityOfServiceTier", ValueAtIndex);
      }
    }
  }

  v10 = *(a1 + 64);
  if (v10 && (v11 = CFRetain(v10)) != 0)
  {
    v12 = v11;
    propertyValueOut = 0;
    VTSessionCopyProperty(v11, *MEMORY[0x1E69839F0], v4, &propertyValueOut);
    if (propertyValueOut && (CFDictionarySetValue(Mutable, @"UsingHardwareAcceleratedVideoDecoder", propertyValueOut), (v13 = propertyValueOut) != 0) || (CFDictionarySetValue(Mutable, @"UsingHardwareAcceleratedVideoDecoder", *MEMORY[0x1E695E4D0]), (v13 = propertyValueOut) != 0))
    {
      CFRelease(v13);
      propertyValueOut = 0;
    }

    VTSessionCopyProperty(v12, *MEMORY[0x1E69839F8], v4, &propertyValueOut);
    if (propertyValueOut)
    {
      CFDictionarySetValue(Mutable, @"UsingSandboxedVideoDecoder", propertyValueOut);
      if (propertyValueOut)
      {
        CFRelease(propertyValueOut);
      }
    }

    FigSimpleMutexUnlock();
    *a2 = Mutable;
    CFRelease(v12);
  }

  else
  {
    FigSimpleMutexUnlock();
    *a2 = Mutable;
  }

  return 0;
}

uint64_t VMC2CopyProperty(uint64_t a1, const void *a2, const __CFAllocator *a3, CFDictionaryRef *a4)
{
  v4 = 4294954473;
  if (a2 && a4)
  {
    if (CFEqual(@"ObeyEmptyMediaMarkers", a2))
    {
      v9 = MEMORY[0x1E695E4D0];
      v10 = *(a1 + 728);
LABEL_7:
      if (!v10)
      {
        v9 = MEMORY[0x1E695E4C0];
      }

      v11 = *v9;
LABEL_10:
      v11 = CFRetain(v11);
LABEL_11:
      v4 = 0;
      *a4 = v11;
      return v4;
    }

    if (CFEqual(@"RenderEmptyMedia", a2))
    {
      v9 = MEMORY[0x1E695E4D0];
      v10 = *(a1 + 729);
      goto LABEL_7;
    }

    if (CFEqual(@"OutputPixelBufferPool", a2))
    {
      FigSimpleMutexLock();
      v13 = *(a1 + 64);
      if (v13)
      {
        v4 = VTSessionCopyProperty(v13, *MEMORY[0x1E6983978], a3, a4);
      }

      else
      {
        v4 = 0;
      }

LABEL_20:
      FigSimpleMutexUnlock();
      return v4;
    }

    if (CFEqual(@"FieldMode", a2))
    {
      v11 = *(a1 + 736);
      if (!v11)
      {
        goto LABEL_11;
      }

      goto LABEL_10;
    }

    if (CFEqual(@"AllowVideoQualityOfServiceAdjustments", a2))
    {
      v14 = MEMORY[0x1E695E4D0];
      v15 = *(a1 + 624);
      goto LABEL_23;
    }

    if (CFEqual(@"DecoderUsage", a2))
    {
      v11 = *(a1 + 744);
      if (!v11)
      {
        goto LABEL_11;
      }

      goto LABEL_10;
    }

    if (CFEqual(@"DecoderPriority", a2))
    {
      v11 = *(a1 + 752);
      if (!v11)
      {
        goto LABEL_11;
      }

      goto LABEL_10;
    }

    if (CFEqual(@"QualityOfServiceTier", a2))
    {
      FigSimpleMutexLock();
      v16 = *(a1 + 600);
      if (v16)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v16, *(a1 + 608));
        if (ValueAtIndex)
        {
          ValueAtIndex = CFRetain(ValueAtIndex);
        }

        v4 = 0;
        *a4 = ValueAtIndex;
      }

      else
      {
        v4 = 4294954470;
      }

      goto LABEL_20;
    }

    if (CFEqual(@"DecoderThreadCount", a2))
    {
      v11 = *(a1 + 760);
      if (!v11)
      {
        goto LABEL_11;
      }

      goto LABEL_10;
    }

    if (CFEqual(@"EndPresentationTimeForDecodedSamples", a2))
    {
      FigSimpleMutexLock();
      v20 = *(a1 + 368);
      *a4 = CMTimeCopyAsDictionary(&v20, a3);
      FigSimpleMutexUnlock();
    }

    else
    {
      if (CFEqual(@"ForceFullPowerDecode", a2))
      {
        v9 = MEMORY[0x1E695E4D0];
        v10 = *(a1 + 877);
        goto LABEL_7;
      }

      if (CFEqual(@"EnableIOFenceDecode", a2))
      {
        v9 = MEMORY[0x1E695E4D0];
        v10 = *(a1 + 878);
        goto LABEL_7;
      }

      if (CFEqual(@"PropagatePerFrameHDRDisplayMetadata", a2))
      {
        v9 = MEMORY[0x1E695E4D0];
        v10 = *(a1 + 879);
        goto LABEL_7;
      }

      if (CFEqual(@"DisplayLayerSize", a2))
      {
        Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
        FigCFDictionarySetCGSize();
        v4 = 0;
        *a4 = Mutable;
        return v4;
      }

      if (CFEqual(@"EnhancementFilterOptions", a2))
      {
        v11 = *(a1 + 912);
        if (!v11)
        {
          goto LABEL_11;
        }

        goto LABEL_10;
      }

      if (CFEqual(@"ColorPrimaries", a2))
      {
        v11 = *(a1 + 1016);
        if (!v11)
        {
          goto LABEL_11;
        }

        goto LABEL_10;
      }

      if (CFEqual(@"TransferFunction", a2))
      {
        v11 = *(a1 + 1024);
        if (!v11)
        {
          goto LABEL_11;
        }

        goto LABEL_10;
      }

      if (CFEqual(@"YCbCrMatrix", a2))
      {
        v11 = *(a1 + 1032);
        if (!v11)
        {
          goto LABEL_11;
        }

        goto LABEL_10;
      }

      if (CFEqual(@"PreserveSyncFrames", a2))
      {
        v9 = MEMORY[0x1E695E4D0];
        v10 = *(a1 + 731);
        goto LABEL_7;
      }

      if (CFEqual(@"PlaybackSessionID", a2))
      {
        v11 = *(a1 + 1040);
        if (!v11)
        {
          goto LABEL_11;
        }

        goto LABEL_10;
      }

      if (CFEqual(@"HDRCrossTalker", a2))
      {
        v11 = *(a1 + 1440);
        if (!v11)
        {
          goto LABEL_11;
        }

        goto LABEL_10;
      }

      if (CFEqual(@"IsRunning", a2))
      {
        v14 = MEMORY[0x1E695E4D0];
        v15 = *(a1 + 288);
LABEL_23:
        if (!v15)
        {
          v14 = MEMORY[0x1E695E4C0];
        }

        v11 = *v14;
        if (!*v14)
        {
          goto LABEL_11;
        }

        goto LABEL_10;
      }

      if (CFEqual(@"CollectionRules", a2))
      {
        v11 = *(a1 + 1096);
        if (!v11)
        {
          goto LABEL_11;
        }

        goto LABEL_10;
      }

      if (CFEqual(@"DecompressionSessionProperties", a2))
      {
        v11 = *(a1 + 1048);
        if (!v11)
        {
          goto LABEL_11;
        }

        goto LABEL_10;
      }

      if (!CFEqual(@"MappingFromFormatDescriptionsToSidebandVideoPropertiesLookupIDs", a2))
      {
        return 4294954470;
      }

      FigSimpleMutexLock();
      v19 = *(a1 + 1536);
      if (v19)
      {
        v19 = CFRetain(v19);
      }

      *a4 = v19;
      FigSimpleMutexUnlock();
    }

    return 0;
  }

  return v4;
}

double VMC2SetProperty(uint64_t a1, const void *a2, const __CFBoolean *a3)
{
  if (!a2)
  {
    return result;
  }

  if (*(a1 + 16))
  {
    emitter = fig_log_get_emitter();
    v6 = v3;
    v7 = 4294954511;
    v8 = 8296;
LABEL_35:

    return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, v7, "<<<< VMC >>>>", v8, v6);
  }

  if (CFEqual(@"ObeyEmptyMediaMarkers", a2))
  {
    if (a3)
    {
      TypeID = CFBooleanGetTypeID();
      if (TypeID == CFGetTypeID(a3))
      {
        *(a1 + 728) = CFBooleanGetValue(a3);
        return result;
      }
    }

    emitter = fig_log_get_emitter();
    v6 = v3;
    v7 = 4294954473;
    v8 = 8302;
    goto LABEL_35;
  }

  if (CFEqual(@"RenderEmptyMedia", a2))
  {
    if (a3)
    {
      v13 = CFBooleanGetTypeID();
      if (v13 == CFGetTypeID(a3))
      {
        *(a1 + 729) = CFBooleanGetValue(a3);
        return result;
      }
    }

    emitter = fig_log_get_emitter();
    v6 = v3;
    v7 = 4294954473;
    v8 = 8308;
    goto LABEL_35;
  }

  if (CFEqual(@"ClientPID", a2))
  {
    if (!a3 || (v14 = CFNumberGetTypeID(), v14 != CFGetTypeID(a3)))
    {
      emitter = fig_log_get_emitter();
      v6 = v3;
      v7 = 4294954473;
      v8 = 8321;
      goto LABEL_35;
    }

    CFNumberGetValue(a3, kCFNumberSInt32Type, (a1 + 840));
    if (*(a1 + 264))
    {
      FigActivitySchedulerGetFigBaseObject();
      CMBaseObjectSetProperty(v15, @"ClientPID", a3);
    }

    FigSimpleMutexLock();
    v16 = *(a1 + 64);
    if (v16)
    {
      v17 = MEMORY[0x1E6983918];
LABEL_30:
      v20 = *v17;
      v21 = a3;
LABEL_31:
      VTSessionSetProperty(v16, v20, v21);
      goto LABEL_32;
    }

    goto LABEL_32;
  }

  if (CFEqual(@"ThrottleForBackground", a2))
  {
    if (!a3 || (v18 = CFBooleanGetTypeID(), v18 != CFGetTypeID(a3)))
    {
      emitter = fig_log_get_emitter();
      v6 = v3;
      v7 = 4294954473;
      v8 = 8333;
      goto LABEL_35;
    }

    *(a1 + 872) = CFBooleanGetValue(a3);
    if (*(a1 + 264))
    {
      FigActivitySchedulerGetFigBaseObject();
      CMBaseObjectSetProperty(v19, @"ThrottleForBackground", a3);
    }

    FigSimpleMutexLock();
    v16 = *(a1 + 64);
    if (v16)
    {
      v17 = MEMORY[0x1E69839D0];
      goto LABEL_30;
    }

LABEL_32:
    FigSimpleMutexUnlock();
    return result;
  }

  if (CFEqual(@"FieldMode", a2))
  {
    if (a3)
    {
      v22 = CFStringGetTypeID();
      if (v22 != CFGetTypeID(a3))
      {
        emitter = fig_log_get_emitter();
        v6 = v3;
        v7 = 4294954473;
        v8 = 8345;
        goto LABEL_35;
      }
    }

    if (FigCFEqual())
    {
      return result;
    }

    v23 = *(a1 + 736);
    *(a1 + 736) = a3;
    if (a3)
    {
      CFRetain(a3);
    }

    if (v23)
    {
      CFRelease(v23);
    }

    FigSimpleMutexLock();
    v16 = *(a1 + 64);
    if (v16)
    {
      v20 = *MEMORY[0x1E6983938];
      v21 = *(a1 + 736);
      goto LABEL_31;
    }

    goto LABEL_32;
  }

  if (CFEqual(@"AllowVideoQualityOfServiceAdjustments", a2))
  {
    v24 = CFBooleanGetTypeID();
    if (v24 != CFGetTypeID(a3))
    {
      emitter = fig_log_get_emitter();
      v6 = v3;
      v7 = 4294954473;
      v8 = 8362;
      goto LABEL_35;
    }

    v25 = *MEMORY[0x1E695E4D0] == a3;
    if (*(a1 + 624) == v25)
    {
      return result;
    }

    *(a1 + 624) = v25;
    FigSimpleMutexLock();
    vmc2WhileHoldingTimebaseMutexUpdateQualityOfServiceCapability(a1);
    if (!*(a1 + 624))
    {
      vmc2ResetTroubleMonitorTimers(a1);
      vmc2ResetQualityOfService(a1);
    }

    goto LABEL_32;
  }

  if (CFEqual(@"DecoderUsage", a2))
  {
    if (!a3 || (v26 = CFNumberGetTypeID(), v26 != CFGetTypeID(a3)))
    {
      emitter = fig_log_get_emitter();
      v6 = v3;
      v7 = 4294954473;
      v8 = 8375;
      goto LABEL_35;
    }

    if (FigCFEqual())
    {
      return result;
    }

    v27 = *(a1 + 744);
    *(a1 + 744) = a3;
    CFRetain(a3);
    if (v27)
    {
      CFRelease(v27);
    }

    FigSimpleMutexLock();
    v16 = *(a1 + 64);
    if (v16)
    {
      v20 = *MEMORY[0x1E69839E8];
      v21 = *(a1 + 744);
      goto LABEL_31;
    }

    goto LABEL_32;
  }

  if (CFEqual(@"DecoderPriority", a2))
  {
    if (!a3 || (v28 = CFNumberGetTypeID(), v28 != CFGetTypeID(a3)))
    {
      emitter = fig_log_get_emitter();
      v6 = v3;
      v7 = 4294954473;
      v8 = 8387;
      goto LABEL_35;
    }

    if (FigCFEqual())
    {
      return result;
    }

    v29 = *(a1 + 752);
    *(a1 + 752) = a3;
    CFRetain(a3);
    if (v29)
    {
      CFRelease(v29);
    }

    FigSimpleMutexLock();
    v16 = *(a1 + 64);
    if (v16)
    {
      v20 = *MEMORY[0x1E6983990];
      v21 = *(a1 + 752);
      goto LABEL_31;
    }

    goto LABEL_32;
  }

  if (CFEqual(@"DecoderThreadCount", a2))
  {
    if (!a3 || (v30 = CFNumberGetTypeID(), v30 != CFGetTypeID(a3)))
    {
      emitter = fig_log_get_emitter();
      v6 = v3;
      v7 = 4294954473;
      v8 = 8399;
      goto LABEL_35;
    }

    if (FigCFEqual())
    {
      return result;
    }

    v31 = *(a1 + 760);
    *(a1 + 760) = a3;
    CFRetain(a3);
    if (v31)
    {
      CFRelease(v31);
    }

    FigSimpleMutexLock();
    v16 = *(a1 + 64);
    if (v16)
    {
      v20 = *MEMORY[0x1E69839C8];
      v21 = *(a1 + 760);
      goto LABEL_31;
    }

    goto LABEL_32;
  }

  if (CFEqual(@"MaxAgeForOutputPixelBufferPool", a2))
  {
    if (a3)
    {
      v32 = CFNumberGetTypeID();
      if (v32 != CFGetTypeID(a3))
      {
        emitter = fig_log_get_emitter();
        v6 = v3;
        v7 = 4294954473;
        v8 = 8416;
        goto LABEL_35;
      }

      FigSimpleMutexLock();
      vmc2PreallocatePixelBuffers(a1);
    }

    else
    {
      FigSimpleMutexLock();
      a3 = *(a1 + 1008);
    }

    v39 = *(a1 + 64);
    if (v39 && a3)
    {
      VTSessionSetProperty(v39, *MEMORY[0x1E6983958], a3);
    }

    goto LABEL_32;
  }

  if (CFEqual(@"VideoDecoderIsSecondary", a2))
  {
    if (!a3 || (v33 = CFBooleanGetTypeID(), v33 != CFGetTypeID(a3)))
    {
      emitter = fig_log_get_emitter();
      v6 = v3;
      v7 = 4294954473;
      v8 = 8433;
      goto LABEL_35;
    }

    if (*MEMORY[0x1E695E4D0] == a3)
    {
      v34 = 34;
    }

    else
    {
      v34 = 3;
    }

    valuePtr = v34;
    v35 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberIntType, &valuePtr);
    if (v35)
    {
      v36 = v35;
      FigActivitySchedulerGetFigBaseObject();
      if (!CMBaseObjectSetProperty(v37, @"ThreadPriority", v36) && FigActivitySchedulerIsProcessingCallbackCalledOnConsistentThread(*(a1 + 264)))
      {
        FigSimpleMutexLock();
        v38 = *(a1 + 64);
        if (v38)
        {
          VTSessionSetProperty(v38, *MEMORY[0x1E6983940], v36);
        }

        FigSimpleMutexUnlock();
      }

      CFRelease(v36);
    }

    else
    {
      fig_log_get_emitter();
      return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v73, v74, v76);
    }

    return result;
  }

  if (CFEqual(@"ForceFullPowerDecode", a2))
  {
    if (a3)
    {
      v40 = CFGetTypeID(a3);
      if (v40 == CFBooleanGetTypeID())
      {
        *(a1 + 877) = CFBooleanGetValue(a3);
        return result;
      }
    }

    emitter = fig_log_get_emitter();
    v6 = v3;
    v7 = 4294954473;
    v8 = 8438;
    goto LABEL_35;
  }

  if (CFEqual(@"PropagatePerFrameHDRDisplayMetadata", a2))
  {
    if (!a3 || (v41 = CFGetTypeID(a3), v41 != CFBooleanGetTypeID()))
    {
      emitter = fig_log_get_emitter();
      v6 = v3;
      v7 = 4294954473;
      v8 = 8453;
      goto LABEL_35;
    }

    Value = CFBooleanGetValue(a3);
    if (*(a1 + 879) == Value)
    {
      return result;
    }

    *(a1 + 879) = Value;
    FigSimpleMutexLock();
    v16 = *(a1 + 64);
    if (v16)
    {
      v17 = MEMORY[0x1E6983998];
      goto LABEL_30;
    }

    goto LABEL_32;
  }

  if (CFEqual(@"EnableIOFenceDecode", a2))
  {
    if (!a3 || (v43 = CFGetTypeID(a3), v43 != CFBooleanGetTypeID()))
    {
      emitter = fig_log_get_emitter();
      v6 = v3;
      v7 = 4294954473;
      v8 = 8467;
      goto LABEL_35;
    }

    v44 = CFBooleanGetValue(a3);
    if (*(a1 + 878) == v44)
    {
      return result;
    }

    *(a1 + 878) = v44;
    FigSimpleMutexLock();
    v16 = *(a1 + 64);
    if (v16)
    {
      v17 = MEMORY[0x1E6983928];
      goto LABEL_30;
    }

    goto LABEL_32;
  }

  if (CFEqual(@"DisplayLayerSize", a2))
  {
    if (a3)
    {
      v45 = CFGetTypeID(a3);
      if (v45 == CFDictionaryGetTypeID())
      {
        FigCFDictionaryGetCGSizeIfPresent();
        return result;
      }
    }

    emitter = fig_log_get_emitter();
    v6 = v3;
    v7 = 4294954473;
    v8 = 8475;
    goto LABEL_35;
  }

  if (CFEqual(@"EnhancementFilterOptions", a2))
  {
    if (a3)
    {
      v46 = CFGetTypeID(a3);
      if (v46 != CFDictionaryGetTypeID())
      {
        emitter = fig_log_get_emitter();
        v6 = v3;
        v7 = 4294954473;
        v8 = 8502;
        goto LABEL_35;
      }

      v47 = *(a1 + 912);
      *(a1 + 912) = a3;
      CFRetain(a3);
      if (v47)
      {
        CFRelease(v47);
      }

      *(a1 + 920) = CFDictionaryGetValue(*(a1 + 912), @"UseFilter");
      CFDictionaryGetValue(*(a1 + 912), @"ScaleMode");
      if (FigCFEqual())
      {
        v48 = 1;
LABEL_160:
        *(a1 + 928) = v48;
        return result;
      }

      if (FigCFEqual())
      {
        v48 = 2;
        goto LABEL_160;
      }
    }

    else
    {
      v53 = *(a1 + 912);
      if (v53)
      {
        CFRelease(v53);
        *(a1 + 912) = 0;
      }

      *(a1 + 920) = 0;
    }

    *(a1 + 928) = 0;
    return result;
  }

  if (CFEqual(@"ColorPrimaries", a2))
  {
    if (!a3 || (v49 = CFGetTypeID(a3), v49 != CFStringGetTypeID()))
    {
      emitter = fig_log_get_emitter();
      v6 = v3;
      v7 = 4294954473;
      v8 = 8511;
      goto LABEL_35;
    }

    v50 = *(a1 + 1016);
    *(a1 + 1016) = a3;
    CFRetain(a3);
    if (v50)
    {
      CFRelease(v50);
    }

    v51 = *(a1 + 64);
    if (!v51)
    {
      return result;
    }

    v52 = MEMORY[0x1E6983920];
LABEL_169:
    VTSessionSetProperty(v51, *v52, a3);
    return result;
  }

  if (CFEqual(@"TransferFunction", a2))
  {
    if (!a3 || (v54 = CFGetTypeID(a3), v54 != CFStringGetTypeID()))
    {
      emitter = fig_log_get_emitter();
      v6 = v3;
      v7 = 4294954473;
      v8 = 8519;
      goto LABEL_35;
    }

    v55 = *(a1 + 1024);
    *(a1 + 1024) = a3;
    CFRetain(a3);
    if (v55)
    {
      CFRelease(v55);
    }

    v51 = *(a1 + 64);
    if (!v51)
    {
      return result;
    }

    v52 = MEMORY[0x1E69839E0];
    goto LABEL_169;
  }

  if (CFEqual(@"YCbCrMatrix", a2))
  {
    if (!a3 || (v56 = CFGetTypeID(a3), v56 != CFStringGetTypeID()))
    {
      emitter = fig_log_get_emitter();
      v6 = v3;
      v7 = 4294954473;
      v8 = 8527;
      goto LABEL_35;
    }

    v57 = *(a1 + 1032);
    *(a1 + 1032) = a3;
    CFRetain(a3);
    if (v57)
    {
      CFRelease(v57);
    }

    v51 = *(a1 + 64);
    if (!v51)
    {
      return result;
    }

    v52 = MEMORY[0x1E6983A08];
    goto LABEL_169;
  }

  if (CFEqual(@"PreserveSyncFrames", a2))
  {
    if (a3)
    {
      v58 = CFGetTypeID(a3);
      if (v58 == CFBooleanGetTypeID())
      {
        *(a1 + 731) = CFBooleanGetValue(a3);
        return result;
      }
    }

    emitter = fig_log_get_emitter();
    v6 = v3;
    v7 = 4294954473;
    v8 = 8533;
    goto LABEL_35;
  }

  if (CFEqual(@"PlaybackSessionID", a2))
  {
    if (!a3 || (v59 = CFGetTypeID(a3), v59 != CFStringGetTypeID()))
    {
      emitter = fig_log_get_emitter();
      v6 = v3;
      v7 = 4294954473;
      v8 = 8542;
      goto LABEL_35;
    }

    v60 = *(a1 + 1040);
    *(a1 + 1040) = a3;
    CFRetain(a3);
    if (v60)
    {
      CFRelease(v60);
    }

    v51 = *(a1 + 64);
    if (!v51)
    {
      return result;
    }

    v52 = MEMORY[0x1E6983988];
    goto LABEL_169;
  }

  if (CFEqual(@"HDRCrossTalker", a2))
  {
    if (!a3 || (v61 = CFGetTypeID(a3), v61 != FigCrossTalkerGetTypeID()))
    {
      emitter = fig_log_get_emitter();
      v6 = v3;
      v7 = 4294954473;
      v8 = 8551;
      goto LABEL_35;
    }

    v62 = *(a1 + 1440);
    *(a1 + 1440) = a3;
    CFRetain(a3);
    if (v62)
    {
      CFRelease(v62);
    }

    vmc2BroadcastHDRStatus(a1);
  }

  else if (CFEqual(@"AV1FilmGrainMode", a2))
  {
    if (!a3 || (v63 = CFGetTypeID(a3), v63 != CFStringGetTypeID()) || !CFEqual(*MEMORY[0x1E69834A0], a3) && !CFEqual(*MEMORY[0x1E69834A8], a3) && !CFEqual(*MEMORY[0x1E69834B0], a3))
    {
      emitter = fig_log_get_emitter();
      v6 = v3;
      v7 = 4294954473;
      v8 = 8575;
      goto LABEL_35;
    }

    v64 = *(a1 + 768);
    *(a1 + 768) = a3;
    CFRetain(a3);
    if (v64)
    {
      CFRelease(v64);
    }

    if (*(a1 + 64))
    {
      MediaSubType = CMFormatDescriptionGetMediaSubType(*(a1 + 32));
      if (MediaSubType == 1902212657 || MediaSubType == 1635135537)
      {
        FigSimpleMutexLock();
        v16 = *(a1 + 64);
        v20 = *MEMORY[0x1E6983900];
        v21 = *(a1 + 768);
        goto LABEL_31;
      }
    }
  }

  else if (CFEqual(@"PriorImageQueueGauge", a2))
  {
    if (!a3 || (v66 = CFGetTypeID(a3), v66 != FigImageQueueGaugeGetTypeID()))
    {
      emitter = fig_log_get_emitter();
      v6 = v3;
      v7 = 4294954473;
      v8 = 8606;
      goto LABEL_35;
    }

    FigSimpleMutexLock();
    if (*(a1 + 1520))
    {
      fig_log_get_emitter();
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v73, v74, v76);
    }

    else
    {
      *(a1 + 1520) = CFRetain(a3);
      CMNotificationCenterGetDefaultLocalCenter();
      FigNotificationCenterAddWeakListener();
      CMNotificationCenterGetDefaultLocalCenter();
      FigNotificationCenterAddWeakListener();
    }

    FigSimpleMutexUnlock();
    vmc2OutputOccupancyChanged(a1);
  }

  else if (CFEqual(@"CollectionRules", a2))
  {
    if (a3)
    {
      v67 = CFGetTypeID(a3);
      if (v67 == FigSampleAttachmentCollectionRulesGetTypeID())
      {
        v68 = *(a1 + 1096);
        *(a1 + 1096) = a3;
        CFRetain(a3);
        if (v68)
        {
          CFRelease(v68);
        }
      }
    }
  }

  else
  {
    if (!CFEqual(@"DecompressionSessionProperties", a2))
    {
      if (!CFEqual(@"MappingFromFormatDescriptionsToSidebandVideoPropertiesLookupIDs", a2))
      {
        return result;
      }

      FigSimpleMutexLock();
      v72 = *(a1 + 1536);
      *(a1 + 1536) = a3;
      if (a3)
      {
        CFRetain(a3);
      }

      if (v72)
      {
        CFRelease(v72);
      }

      goto LABEL_32;
    }

    if (!a3 || (v69 = CFGetTypeID(a3), v69 != CFDictionaryGetTypeID()))
    {
      emitter = fig_log_get_emitter();
      v6 = v3;
      v7 = 4294954473;
      v8 = 8622;
      goto LABEL_35;
    }

    v70 = *(a1 + 1048);
    *(a1 + 1048) = a3;
    CFRetain(a3);
    if (v70)
    {
      CFRelease(v70);
    }

    v71 = *(a1 + 64);
    if (v71)
    {
      VTSessionSetProperties(v71, *(a1 + 1048));
    }
  }

  return result;
}

uint64_t vmc2WhileHoldingTimebaseMutexUpdateQualityOfServiceCapability(uint64_t a1)
{
  FigSimpleMutexLock();
  v2 = *(a1 + 584);
  if (v2)
  {
    v2 = *(a1 + 600);
    if (v2)
    {
      LOBYTE(v2) = *(a1 + 624) != 0;
    }
  }

  *(a1 + 625) = v2;

  return FigSimpleMutexUnlock();
}

double vmc2ResetQualityOfService(uint64_t a1)
{
  v2 = *(a1 + 600);
  if (v2 && *(a1 + 608))
  {
    CFArrayGetValueAtIndex(v2, 0);
    v3 = *MEMORY[0x1E6983A50];
    if (FigCFEqual())
    {
      valuePtr = 0x3FF0000000000000;
      v4 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberDoubleType, &valuePtr);
      VTSessionSetProperty(*(a1 + 64), *MEMORY[0x1E6983970], *MEMORY[0x1E6983A38]);
      VTSessionSetProperty(*(a1 + 64), *MEMORY[0x1E69839A8], v4);
      if (v4)
      {
        CFRelease(v4);
      }
    }

    else
    {
      v5 = *(a1 + 64);
      ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 600), 0);
      VTSessionSetProperties(v5, ValueAtIndex);
    }

    VTSessionSetProperty(*(a1 + 64), v3, 0);
    if (*(a1 + 608) >= 1)
    {
      ++*(a1 + 1112);
    }

    result = -NAN;
    *(a1 + 608) = -NAN;
  }

  return result;
}

void vmc2PreallocatePixelBuffers(uint64_t a1)
{
  propertyValueOut = 0;
  pixelBufferPool = 0;
  if ((*(a1 + 484) & 0x1D) == 1)
  {
    MediaSubType = CMFormatDescriptionGetMediaSubType(*(a1 + 32));
    if (MediaSubType <= 1685481572)
    {
      v3 = MediaSubType == 1667524657 || MediaSubType == 1684895096;
      v5 = 1685481521;
    }

    else
    {
      if (MediaSubType > 1902405732)
      {
        v3 = MediaSubType == 1902405733;
        v4 = 28024;
      }

      else
      {
        v3 = MediaSubType == 1685481573;
        v4 = 26673;
      }

      v5 = v4 | 0x71640000;
    }

    if (!v3 && MediaSubType != v5)
    {
      v17 = *(a1 + 472);
      CMTimeConvertScale(&v18, &v17, 30, kCMTimeRoundingMethod_RoundAwayFromZero);
      value = v18.value;
      if (v18.value >= 1)
      {
        v8 = *MEMORY[0x1E695E480];
        VTSessionCopyProperty(*(a1 + 64), *MEMORY[0x1E69839F8], *MEMORY[0x1E695E480], &propertyValueOut);
        v9 = *MEMORY[0x1E695E4D0];
        v10 = propertyValueOut;
        if (propertyValueOut)
        {
          CFRelease(propertyValueOut);
        }

        if (v9 != v10)
        {
          VTSessionCopyProperty(*(a1 + 64), *MEMORY[0x1E6983978], v8, &pixelBufferPool);
          if (pixelBufferPool)
          {
            v11 = malloc_type_calloc(value, 8uLL, 0x2004093837F09uLL);
            if (v11)
            {
              v12 = v11;
              FigSimpleMutexUnlock();
              v13 = value;
              v14 = v12;
              do
              {
                CVPixelBufferPoolCreatePixelBuffer(0, pixelBufferPool, v14++);
                --v13;
              }

              while (v13);
              v15 = 0;
              do
              {
                v16 = v12[v15];
                if (v16)
                {
                  CVPixelBufferRelease(v16);
                }

                ++v15;
              }

              while (value != v15);
              free(v12);
              CVPixelBufferPoolRelease(pixelBufferPool);
              FigSimpleMutexLock();
            }

            else
            {
              CVPixelBufferPoolRelease(pixelBufferPool);
            }
          }
        }
      }
    }
  }
}

uint64_t FigActivitySchedulerIsProcessingCallbackCalledOnConsistentThread(uint64_t a1)
{
  v2 = *(*(CMBaseObjectGetVTable() + 16) + 24);
  if (!v2)
  {
    return 0;
  }

  return v2(a1);
}

uint64_t vmc2BroadcastHDRStatus(uint64_t a1)
{
  result = *(a1 + 32);
  if (result && *(a1 + 1440))
  {
    v3 = (CMVideoFormatDescriptionGetVideoDynamicRange() <= 1 ? MEMORY[0x1E695E4C0] : MEMORY[0x1E695E4D0]);
    FigBytePumpGetFigBaseObject();
    v5 = v4;
    VTable = CMBaseObjectGetVTable();
    v7 = *(VTable + 8);
    result = VTable + 8;
    v8 = *(v7 + 56);
    if (v8)
    {
      v9 = *v3;

      return v8(v5, 0x1F0B4C778, v9);
    }
  }

  return result;
}

uint64_t VMC2SetWaterLevels(uint64_t a1, __int128 *a2, __int128 *a3)
{
  FigSimpleMutexLock();
  v6 = *a2;
  *(a1 + 488) = *(a2 + 2);
  *(a1 + 472) = v6;
  v7 = *a3;
  *(a1 + 512) = *(a3 + 2);
  *(a1 + 496) = v7;
  ++*(a1 + 524);

  return FigSimpleMutexUnlock();
}

void vmc2GMFigLogDumpStats(uint64_t a1, double a2, double a3)
{
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  FigSimpleMutexLock();
  *(a1 + 1360) = 0u;
  *(a1 + 1376) = 0u;
  *(a1 + 1392) = 0u;
  *(a1 + 1408) = 0u;
  v5 = *(a1 + 1228);
  v6 = *(a1 + 1224);
  if (*(a1 + 1204))
  {
    CFStringAppendFormat(Mutable, 0, @"CodecType: %c%c%c%c", HIBYTE(*(a1 + 1204)), BYTE2(*(a1 + 1204)), BYTE1(*(a1 + 1204)), *(a1 + 1204));
  }

  if (*(a1 + 1208))
  {
    if (*(a1 + 1209))
    {
      v7 = "HW";
    }

    else
    {
      v7 = "SW";
    }

    CFStringAppendFormat(Mutable, 0, @" (%s decoder)", v7);
  }

  if (*(a1 + 1212))
  {
    CFStringAppendFormat(Mutable, 0, @", DecodedPixelBuffer: %c%c%c%c, %u x %u\n", HIBYTE(*(a1 + 1212)), BYTE2(*(a1 + 1212)), BYTE1(*(a1 + 1212)), *(a1 + 1212), *(a1 + 1216), *(a1 + 1220));
  }

  CFStringAppendCString(Mutable, "Last Decoded Frames [\n", 0x600u);
  if (v5 >= 1)
  {
    do
    {
      if (v6 <= 0)
      {
        v8 = -(-v6 & 3);
      }

      else
      {
        v8 = v6 & 3;
      }

      v9 = a1 + 1232 + 32 * v8;
      v10 = *(v9 + 24);
      v11 = *(v9 + 16);
      CFStringAppendFormat(Mutable, 0, @"{PTS: %.3f s, decode: %.3f ms", *v9, *(v9 + 8) * 1000.0);
      if (v10)
      {
        CFStringAppendFormat(Mutable, 0, @", enhancement blocked: %.3f ms", v11 * 1000.0);
      }

      CFStringAppend(Mutable, @"},\n");
      ++v6;
      --v5;
    }

    while (v5);
  }

  CFStringAppendCString(Mutable, "]\n", 0x600u);
  *(a1 + 1352) = 0;
  *(a1 + 1320) = 0u;
  *(a1 + 1336) = 0u;
  *(a1 + 1288) = 0u;
  *(a1 + 1304) = 0u;
  *(a1 + 1256) = 0u;
  *(a1 + 1272) = 0u;
  *(a1 + 1224) = 0u;
  *(a1 + 1240) = 0u;
  FigSimpleMutexUnlock();
  if (dword_1EAF18AC0)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    if (dword_1EAF18AC0)
    {
      v13 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }
}

uint64_t vmc2HandleSessionTerminatedNotification(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 873))
  {
    *(a2 + 1058) = 1;
  }

  CMNotificationCenterGetDefaultLocalCenter();

  return CMNotificationCenterPostNotification();
}

uint64_t vmc2UpdateSessionMinAndMaxOutputPTS(uint64_t result)
{
  v8 = **&MEMORY[0x1E6960C70];
  v7 = v8;
  if (*(result + 64))
  {
    v1 = result;
    FigSimpleMutexLock();
    v2 = *(v1 + 316);
    do
    {
      FigSimpleMutexUnlock();
      VTDecompressionSessionGetMinAndMaxOutputPresentationTimeStampOfFramesBeingDecoded();
      FigSimpleMutexLock();
      v3 = v2 == *(v1 + 316);
      v2 = *(v1 + 316);
    }

    while (!v3);
    time1 = *(v1 + 320);
    v5 = v8;
    v4 = CMTimeCompare(&time1, &v5);
    if (v4)
    {
      *(v1 + 320) = v8;
    }

    time1 = *(v1 + 344);
    v5 = v7;
    if (CMTimeCompare(&time1, &v5))
    {
      *(v1 + 344) = v7;
    }

    else if (!v4)
    {
LABEL_11:
      ++*(v1 + 316);
      return FigSimpleMutexUnlock();
    }

    vmc2RecalculateUpcomingImageTimes(v1);
    goto LABEL_11;
  }

  return result;
}

__CFString *vmc2CopyFormattingDesc(void *a1)
{
  v2 = CFGetAllocator(a1);
  Mutable = CFStringCreateMutable(v2, 0);
  CFStringAppendFormat(Mutable, 0, @"[VMC2 %@]", a1[108]);
  return Mutable;
}

__CFString *vmc2CopyDebugDesc(uint64_t a1)
{
  v2 = CFGetAllocator(a1);
  Mutable = CFStringCreateMutable(v2, 0);
  v4 = *(a1 + 864);
  v5 = CFGetRetainCount(a1);
  if (*(a1 + 16))
  {
    v6 = " (invalidated)";
  }

  else
  {
    v6 = "";
  }

  v7 = CFGetAllocator(a1);
  CFStringAppendFormat(Mutable, 0, @"VMC2 %p %@ retainCount: %d%s allocator: %p", a1, v4, v5, v6, v7);
  return Mutable;
}

void vmc2OutputMultiImageFrame(uint64_t a1, unsigned __int8 *a2, uint64_t a3, uint64_t a4, uint64_t a5, __int128 *a6, __int128 *a7)
{
  v9 = *a6;
  v7 = *a7;
  v8 = *(a7 + 2);
  vmc2OutputFrameInternal(a1, a2, a3, a4, 0, a5, &v9, &v7, 0);
}

void vmc2OutputFrameInternal(uint64_t a1, unsigned __int8 *a2, unsigned int a3, unsigned int a4, uint64_t a5, uint64_t a6, CMTime *a7, __int128 *a8, char a9)
{
  v129 = *MEMORY[0x1E69E9840];
  v116 = 0;
  pixelBufferOut = 0;
  v115 = 0;
  v106 = a4;
  if ((a4 & 8) != 0)
  {
    v13 = 0;
  }

  else
  {
    v13 = -17694;
  }

  if (a3 == -17694)
  {
    v14 = v13;
  }

  else
  {
    v14 = a3;
  }

  if (a2)
  {
    v17 = *a2;
    v16 = *(a2 + 1);
    cf = *(a2 + 1);
    value = *(a2 + 2);
    v110 = *(a2 + 5);
    v111 = *(a2 + 3);
    v103 = *(a2 + 6);
    v104 = *(a2 + 4);
    mach_absolute_time();
    v18 = a2[72];
    v19 = *(a2 + 7);
    v112 = *(a2 + 10);
    free(a2);
    v20 = v18 != 0;
    v21 = v17 & 3;
  }

  else
  {
    v20 = 0;
    v19 = 0;
    v111 = 0;
    v112 = 0;
    v103 = 0;
    v104 = 0;
    v110 = 0;
    value = 0;
    cf = 0;
    v16 = 0;
    v21 = 0;
  }

  v105 = v19;
  allocator = *MEMORY[0x1E695E480];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v23 = Mutable;
  if (Mutable)
  {
    v24 = !v20;
  }

  else
  {
    v24 = 1;
  }

  if (!v24 && *(a1 + 731))
  {
    CFDictionarySetValue(Mutable, *MEMORY[0x1E69604E0], *MEMORY[0x1E695E4D0]);
  }

  v109 = v23;
  if (*(a1 + 848) && *(a1 + 856) && FigMachPortHolderGetPort() - 1 <= 0xFFFFFFFD)
  {
    if (a5 && CVPixelBufferGetIOSurface(a5))
    {
      IOSurfaceSetOwnershipIdentity();
    }

    if (a6)
    {
      Count = CMTaggedBufferGroupGetCount(a6);
      if (Count >= 1)
      {
        v26 = Count;
        for (i = 0; i != v26; ++i)
        {
          CVPixelBufferAtIndex = FigTaggedBufferGroupGetCVPixelBufferAtIndex();
          if (CVPixelBufferGetIOSurface(CVPixelBufferAtIndex))
          {
            IOSurfaceSetOwnershipIdentity();
          }
        }
      }
    }
  }

  if (cf)
  {
    v29 = malloc_type_calloc(1uLL, 0x58uLL, 0x10E0040E756AD93uLL);
    if (v29)
    {
      v30 = v29;
      v29[1] = CFRetain(cf);
      *(v30 + 4) = v14;
      *(v30 + 5) = v106;
      v106 &= ~4u;
      v30[3] = CVBufferRetain(a5);
      if (a6)
      {
        v31 = CFRetain(a6);
      }

      else
      {
        v31 = 0;
      }

      v30[4] = v31;
      v32 = *&a7->value;
      v30[7] = a7->epoch;
      *(v30 + 5) = v32;
      v33 = *a8;
      v30[10] = *(a8 + 2);
      *(v30 + 4) = v33;
      *v30 = *(a1 + 800);
      *(a1 + 800) = v30;
    }
  }

  FigSimpleMutexLock();
  v34 = *(a1 + 792);
  if (v16 != v34)
  {
    a6 = 0;
    a5 = 0;
  }

  FigSimpleMutexUnlock();
  v35 = v104;
  if (!v14)
  {
    v36 = v105;
    if (v21 != 1)
    {
      goto LABEL_42;
    }

    ++*(a1 + 1120);
LABEL_41:
    vmc2ResetTroubleMonitorTimers(a1);
    a6 = 0;
    a5 = 0;
LABEL_49:
    v38 = v110;
    goto LABEL_50;
  }

  time2 = *a7;
  vmc2PostDecodeError(a1, &time2.value, v14);
  v36 = v105;
  if (v21 == 1)
  {
    goto LABEL_41;
  }

LABEL_42:
  if (a5 | a6)
  {
    goto LABEL_49;
  }

  if (v16 != v34)
  {
    vmc2ResetTroubleMonitorTimers(a1);
    a6 = 0;
    a5 = 0;
    ++*(a1 + 1148);
    goto LABEL_49;
  }

  ++*(a1 + 1124);
  v37 = (a1 + 1480);
  v38 = v110;
  if ((*(a1 + 1492) & 1) != 0 && (*&lhs.value = *v37, lhs.epoch = *(a1 + 1496), rhs = *(a1 + 1452), CMTimeAdd(&time2, &lhs, &rhs), lhs = *a7, CMTimeCompare(&lhs, &time2) < 1))
  {
    v46 = *(a1 + 1504) + 1;
    *(a1 + 1504) = v46;
    if (v46 == *(a1 + 1476))
    {
      ++*(a1 + 1128);
    }
  }

  else
  {
    v39 = *&a7->value;
    *(a1 + 1496) = a7->epoch;
    *v37 = v39;
    *(a1 + 1504) = 1;
  }

  FigSimpleMutexLock();
  ++*(a1 + 1364);
  FigSimpleMutexUnlock();
  a6 = 0;
  a5 = 0;
LABEL_50:
  v40 = (a6 | a5) == 0;
  if (!(a6 | a5))
  {
    a6 = 0;
    a5 = 0;
    v41 = 0.0;
    goto LABEL_69;
  }

  v42 = *(a1 + 836);
  ++*(a1 + 1132);
  v41 = FigHostTimeToNanoseconds() * 0.000000001;
  if (!VTParavirtualizationIsRunningInGuest() && (_os_feature_enabled_impl() & 1) == 0 && v42 != 1 && v42 != 4)
  {
    v43 = CVBufferCopyAttachment(a5, @"IsDRMSubstitute", 0);
    v44 = v43;
    v45 = *MEMORY[0x1E695E4D0];
    if (v43)
    {
      CFRelease(v43);
    }

    if (v45 == v44)
    {
      v38 = v110;
      goto LABEL_69;
    }

    VTDecompressionSessionCopyBlackPixelBuffer(*(a1 + 64), &pixelBufferOut);
    v38 = v110;
    if (a5)
    {
      a5 = pixelBufferOut;
    }

    else
    {
      if (a6)
      {
        if (pixelBufferOut)
        {
          vmcCreateTaggedBufferGroupSubstitutingImageBufferInTaggedBufferGroup(pixelBufferOut, a6, &v116);
          a5 = 0;
          a6 = v116;
          goto LABEL_68;
        }

        a6 = 0;
      }

      a5 = 0;
    }

LABEL_68:
    ++*(a1 + 1156);
    ++*(a1 + 1416);
  }

LABEL_69:
  if (!(a5 | a6))
  {
    goto LABEL_174;
  }

  v47 = 4 * (v21 == 3);
  if (v21 == 2)
  {
    v47 = 3;
  }

  v101 = v47;
  FigSimpleMutexLock();
  v48 = *(a1 + 584);
  if (v48)
  {
    timebase = CFRetain(v48);
  }

  else
  {
    timebase = 0;
  }

  FigSimpleMutexUnlock();
  if (!v21)
  {
    v127 = *a7;
    if (timebase)
    {
      Rate = CMTimebaseGetRate(timebase);
      if (Rate > 0.0)
      {
        memset(&time2, 0, sizeof(time2));
        CMTimebaseGetTime(&time2, timebase);
        lhs = time2;
        rhs = v127;
        if (CMTimeCompare(&lhs, &rhs) < 1)
        {
          goto LABEL_76;
        }

LABEL_143:
        ++*(a1 + 1144);
        ++*(a1 + 1420);
        goto LABEL_76;
      }

      if (Rate < 0.0)
      {
        memset(&time2, 0, sizeof(time2));
        CMTimebaseGetTime(&time2, timebase);
        lhs = time2;
        rhs = v127;
        if (CMTimeCompare(&lhs, &rhs) < 0)
        {
          goto LABEL_143;
        }
      }
    }
  }

LABEL_76:
  if (a5)
  {
    v49 = v112;
    if (value)
    {
      CVBufferSetAttachment(a5, @"SourceRect", value, kCVAttachmentMode_ShouldPropagate);
    }

    if (v104 && v111)
    {
      CVBufferSetAttachment(a5, @"DestRect", v111, kCVAttachmentMode_ShouldPropagate);
      CVBufferSetAttachment(a5, @"VirtualDisplaySizeForDestRect", v104, kCVAttachmentMode_ShouldPropagate);
    }

    if (v38)
    {
      CVBufferSetAttachment(a5, @"SymmetricTransform", v38, kCVAttachmentMode_ShouldPropagate);
    }

    PixelFormatType = CVPixelBufferGetPixelFormatType(a5);
  }

  else
  {
    PixelFormatType = 32;
    v49 = v112;
  }

  if (!*(a1 + 904) && (!*(a1 + 905) || PixelFormatType != *(a1 + 908)) && !a6)
  {
    if ((v99 = PixelFormatType, Width = CVPixelBufferGetWidth(a5), Height = CVPixelBufferGetHeight(a5), v63 = Height, *(a1 + 905) = 0, v64 = *(a1 + 888), v64 >= Width) && *(a1 + 896) >= Height && *MEMORY[0x1E695E4C0] != *(a1 + 920) || *MEMORY[0x1E695E4D0] == *(a1 + 920))
    {
      if (Width != *(a1 + 936) || Height != *(a1 + 944) || *(a1 + 952) != v64 || *(a1 + 960) != *(a1 + 896))
      {
        vmc2FinishAndDestroyImageEnhancementFilter(a1);
      }

      if (*(a1 + 968) || (ImageEnhancementFilter = vmc2CreateImageEnhancementFilter(a1, Width, v63), *(a1 + 968)))
      {
        mach_absolute_time();
        v53 = a7;
        v127.value = a7->value;
        flags = a7->flags;
        v127.timescale = a7->timescale;
        epoch = a7->epoch;
        if (!*(a1 + 968))
        {
          if (vmc2OutputFrameInternal_cold_4(&time2))
          {
            goto LABEL_204;
          }

          v96 = time2.value;
LABEL_215:
          time2.value = v127.value;
          time2.timescale = v127.timescale;
          time2.flags = flags;
          time2.epoch = epoch;
          vmc2CopyFrameBaggageForPTS(a1, &time2, 0, 0, 0);
          v49 = v112;
          v35 = v104;
          v36 = v105;
          v38 = v110;
          if (v96 == -12218)
          {
            *(a1 + 905) = 1;
            *(a1 + 908) = v99;
          }

          goto LABEL_91;
        }

        rhs.value = a7->value;
        rhs.timescale = a7->timescale;
        lhs.value = 0;
        *&lhs.timescale = &lhs;
        lhs.epoch = 0x2000000000;
        v126 = 0;
        if ((flags & 0x1D) != 1)
        {
          vmc2OutputFrameInternal_cold_1(&lhs.timescale);
          goto LABEL_202;
        }

        if (*(a1 + 976))
        {
LABEL_125:
          v68 = CFDictionaryCreateMutable(allocator, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
          time2.value = rhs.value;
          time2.timescale = rhs.timescale;
          time2.flags = flags;
          time2.epoch = epoch;
          valuePtr = CMTimeGetSeconds(&time2);
          v69 = CFNumberCreate(allocator, kCFNumberFloat64Type, &valuePtr);
          FigCFDictionarySetInt32();
          FigCFDictionarySetInt32();
          CFDictionarySetValue(v68, @"OriginalFrame", a5);
          v70 = *(a1 + 984);
          time2.value = MEMORY[0x1E69E9820];
          *&time2.timescale = 0x40000000;
          time2.epoch = __vmc2StoreFrameBaggageForPTS_block_invoke;
          v119 = &unk_1E7479B00;
          v122 = v69;
          v123 = v68;
          p_lhs = &lhs;
          v121 = a1;
          dispatch_sync(v70, &time2);
          if (v68)
          {
            CFRelease(v68);
          }

          v53 = a7;
          if (v69)
          {
            CFRelease(v69);
          }

LABEL_202:
          v96 = *(*&lhs.timescale + 24);
          _Block_object_dispose(&lhs, 8);
          if (v96)
          {
            vmc2OutputFrameInternal_cold_2();
          }

          else
          {
            time2.value = v127.value;
            time2.timescale = v127.timescale;
            time2.flags = flags;
            time2.epoch = epoch;
            v97 = VTTemporalFilterSessionProcessFrame();
            v35 = v104;
            if (!v97)
            {
LABEL_204:
              mach_absolute_time();
              v81 = FigHostTimeToNanoseconds() * 0.000000001;
              v79 = 1;
              v80 = 1;
              v38 = v110;
              goto LABEL_148;
            }

            v96 = v97;
            vmc2OutputFrameInternal_cold_3();
          }

          goto LABEL_215;
        }

        if (*(a1 + 16))
        {
          v95 = &lhs;
        }

        else
        {
          v98 = CFDictionaryCreateMutable(allocator, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
          *(a1 + 976) = v98;
          if (v98)
          {
            goto LABEL_125;
          }

          v95 = *&lhs.timescale;
        }

        LODWORD(v95[1].value) = -12824;
        goto LABEL_202;
      }

      if (ImageEnhancementFilter)
      {
        *(a1 + 904) = 1;
      }
    }
  }

LABEL_91:
  if (*(a1 + 968))
  {
    vmc2FinishAndDestroyImageEnhancementFilter(a1);
  }

  if (!*(a1 + 128) || !a5)
  {
    v57 = (v106 >> 2) & 1;
    v58 = *(a1 + 112);
    if (v58 && a5)
    {
      v59 = *(a1 + 104);
      time2 = *a7;
      v58(v59, a5, &time2, &v115);
      if (v115)
      {
        a5 = v115;
      }
    }

    else if (!a5)
    {
      if (a6)
      {
        v71 = CMTaggedBufferGroupGetCount(a6);
        if (v71 >= 1)
        {
          v72 = v71;
          v107 = v40;
          v73 = 0;
          v74 = *MEMORY[0x1E6965F28];
          do
          {
            v75 = FigTaggedBufferGroupGetCVPixelBufferAtIndex();
            if (v75)
            {
              v76 = v75;
              if (v49)
              {
                CVBufferSetAttachment(v75, v74, v49, kCVAttachmentMode_ShouldPropagate);
              }

              if (!a9)
              {
                time2 = *a7;
                vmcAddPresentationTimeAsAttachment(v76, &time2.value);
                v77 = *(a1 + 1096);
                if (v77)
                {
                  v78 = *(*(CMBaseObjectGetVTable() + 16) + 40);
                  if (v78)
                  {
                    v78(v77, v105, v76);
                  }
                }
              }
            }

            ++v73;
          }

          while (v72 != v73);
          a5 = 0;
          v35 = v104;
          v36 = v105;
          v38 = v110;
          v53 = a7;
          v40 = v107;
          goto LABEL_146;
        }
      }

      a5 = 0;
      goto LABEL_145;
    }

    if (v49)
    {
      CVBufferSetAttachment(a5, *MEMORY[0x1E6965F28], v49, kCVAttachmentMode_ShouldPropagate);
    }

    if (!a9)
    {
      v53 = a7;
      time2 = *a7;
      vmcAddPresentationTimeAsAttachment(a5, &time2.value);
      v60 = *(a1 + 1096);
      if (v60)
      {
        FigSampleAttachmentCollectionRulesAttachAttachmentsToPixelBuffer(v60, v36, a5);
      }

      v38 = v110;
      goto LABEL_146;
    }

LABEL_145:
    v38 = v110;
    v53 = a7;
LABEL_146:
    time2 = *v53;
    vmc2InvokeOutputCallback_OutputImage(a1, a5, a6, v57, v109, &time2.value, v101);
    goto LABEL_147;
  }

  v52 = malloc_type_calloc(1uLL, 0x28uLL, 0x10200406E8F4065uLL);
  *v52 = CFRetain(a1);
  v53 = a7;
  v54 = a7->epoch;
  *(v52 + 8) = *&a7->value;
  *(v52 + 3) = v54;
  *(v52 + 8) = v101;
  v55 = *(a1 + 128);
  v56 = *(a1 + 104);
  time2 = *a7;
  v55(v56, a5, &time2, vmc2FinishOutputFrame, v52);
LABEL_147:
  v79 = 0;
  v80 = 0;
  v81 = 0.0;
LABEL_148:
  if (*(a1 + 441))
  {
    *(a1 + 440) = 0;
  }

  FigSimpleMutexLock();
  if (!v40)
  {
    if (a5 || a6 && (a5 = FigTaggedBufferGroupGetCVPixelBufferAtIndex()) != 0)
    {
      *(a1 + 1212) = CVPixelBufferGetPixelFormatType(a5);
      *(a1 + 1216) = CVPixelBufferGetWidth(a5);
      *(a1 + 1220) = CVPixelBufferGetHeight(a5);
    }

    ++*(a1 + 1360);
    *(a1 + 1368) = v41 + *(a1 + 1368);
    *(a1 + 1376) = fmax(*(a1 + 1376), v41);
  }

  if (v80)
  {
    ++*(a1 + 1384);
    *(a1 + 1392) = v81 + *(a1 + 1392);
    *(a1 + 1400) = fmax(*(a1 + 1400), v81);
  }

  time2 = *v53;
  Seconds = CMTimeGetSeconds(&time2);
  v83 = *(a1 + 1224);
  v84 = *(a1 + 1228);
  if (v84 + v83 <= 0)
  {
    v85 = -(-(v84 + v83) & 3);
  }

  else
  {
    v85 = (v84 + v83) & 3;
  }

  v86 = a1 + 32 * v85;
  *(v86 + 1232) = Seconds;
  *(v86 + 1240) = v41;
  *(v86 + 1256) = v79;
  *(v86 + 1248) = v81;
  v87 = v84 + 1;
  if (v87 > 4)
  {
    v88 = v83 + 1;
    v89 = -v88 < 0;
    v90 = -v88 & 3;
    v91 = v88 & 3;
    if (!v89)
    {
      v91 = -v90;
    }

    *(a1 + 1224) = v91;
  }

  else
  {
    *(a1 + 1228) = v87;
  }

  FigSimpleMutexUnlock();
  v92 = mach_absolute_time();
  if (FigHostTimeToNanoseconds() >= 0x165A0BC00)
  {
    *(a1 + 1192) = v92;
    if (timebase)
    {
      CMTimebaseGetTime(&time2, timebase);
      v93 = CMTimeGetSeconds(&time2);
      v94 = CMTimebaseGetRate(timebase);
    }

    else
    {
      v93 = 0.0;
      v94 = 0.0;
    }

    vmc2GMFigLogDumpStats(a1, v93, v94);
  }

  if (timebase)
  {
    CFRelease(timebase);
  }

LABEL_174:
  if (v115)
  {
    CFRelease(v115);
  }

  if (pixelBufferOut)
  {
    CFRelease(pixelBufferOut);
  }

  if (v116)
  {
    CFRelease(v116);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (value)
  {
    CFRelease(value);
  }

  if (v111)
  {
    CFRelease(v111);
  }

  if (v38)
  {
    CFRelease(v38);
  }

  if (v35)
  {
    CFRelease(v35);
  }

  if (v103)
  {
    CFRelease(v103);
  }

  if (v109)
  {
    CFRelease(v109);
  }

  if (v36)
  {
    CFRelease(v36);
  }

  if (v112)
  {
    CFRelease(v112);
  }
}

void vmc2PostDecodeError(uint64_t a1, __int128 *a2, uint64_t a3)
{
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  FigCFDictionarySetInt32();
  FigCFDictionarySetCMTime();
  v5 = *(a1 + 32);
  if (v5)
  {
    CMFormatDescriptionGetMediaSubType(v5);
    FigCFDictionarySetInt32();
  }

  CMNotificationCenterGetDefaultLocalCenter();
  CMNotificationCenterPostNotification();
  if (Mutable)
  {
    CFRelease(Mutable);
  }

  ++*(a1 + 1160);
}

uint64_t vmc2CreateImageEnhancementFilter(uint64_t a1, unint64_t a2, unint64_t a3)
{
  if (*(a1 + 16))
  {
    return 0;
  }

  v8 = a1 + 888;
  v9 = 2 * a2;
  v10 = *(a1 + 888) >= (2 * a2) && *(a1 + 896) >= (2 * a3);
  v11 = *(a1 + 928);
  if (v11 == 2)
  {
    v10 = 1;
  }

  v12 = v11 != 1 && v10;
  if (!v12)
  {
    v9 = a2;
  }

  v13 = a3 << v12;
  v14 = *MEMORY[0x1E695E4D0];
  v15 = *(a1 + 920);
  if (*MEMORY[0x1E695E4D0] == v15)
  {
    v16 = 0;
  }

  else
  {
    v3 = 0;
    if (a2 > 0x500 || a3 > 0x2D0)
    {
      return v3;
    }

    v16 = @"Weak";
    if (a2 == 1280 && a3 >= 0x1F5)
    {
      v16 = @"StaticWeak";
      if (v9 == 1280 && v13 == a3)
      {
        return 0;
      }
    }
  }

  v27 = v16;
  v29.width = v9;
  v29.height = v13;
  propertyValue = CGSizeCreateDictionaryRepresentation(v29);
  v17 = *MEMORY[0x1E695E480];
  v18 = MEMORY[0x1E695E9D8];
  v19 = MEMORY[0x1E695E9E8];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  CFDictionarySetValue(Mutable, *MEMORY[0x1E6984160], @"com.apple.videotoolbox.temporalfilter.SRSEnhancementFilter");
  v21 = CFDictionaryCreateMutable(v17, 0, v18, v19);
  FigCFDictionarySetInt32();
  CFDictionarySetValue(v21, *MEMORY[0x1E6984158], @"SRS");
  v22 = (a1 + 968);
  v23 = VTTemporalFilterSessionCreate();
  if (v23)
  {
    v3 = v23;
    v24 = propertyValue;
    goto LABEL_38;
  }

  *(a1 + 936) = a2;
  *(a1 + 944) = a3;
  *(v8 + 64) = vcvtq_u64_f64(*v8);
  v24 = propertyValue;
  if (propertyValue)
  {
    v25 = VTSessionSetProperty(*v22, *MEMORY[0x1E6984138], propertyValue);
    if (v25)
    {
      v3 = v25;
      vmc2CreateImageEnhancementFilter_cold_1();
LABEL_38:
      vmc2FinishAndDestroyImageEnhancementFilter(a1);
      if (!v24)
      {
        goto LABEL_31;
      }

      goto LABEL_30;
    }
  }

  v26 = VTSessionSetProperty(*v22, *MEMORY[0x1E6984118], *MEMORY[0x1E695E4C0]);
  if (v26)
  {
    v3 = v26;
    vmc2CreateImageEnhancementFilter_cold_2();
    goto LABEL_38;
  }

  if (v14 == v15)
  {
    v3 = 0;
  }

  else
  {
    v3 = VTSessionSetProperty(*v22, *MEMORY[0x1E6984120], v27);
    if (v3)
    {
      vmc2CreateImageEnhancementFilter_cold_3();
      goto LABEL_38;
    }
  }

  if (propertyValue)
  {
LABEL_30:
    CFRelease(v24);
  }

LABEL_31:
  if (Mutable)
  {
    CFRelease(Mutable);
  }

  if (v21)
  {
    CFRelease(v21);
  }

  return v3;
}

void vmc2FinishOutputFrame(char *a1, __CVBuffer *a2)
{
  v3 = *a1;
  if (!v3[16])
  {
    v7 = *(a1 + 8);
    v8 = *(a1 + 3);
    vmcAddPresentationTimeAsAttachment(a2, &v7);
    v5 = *a1;
    v6 = *(a1 + 8);
    v7 = *(a1 + 8);
    v8 = *(a1 + 3);
    vmc2InvokeOutputCallback_OutputImage(v5, a2, 0, 1, 0, &v7, v6);
    v3 = *a1;
  }

  CFRelease(v3);

  free(a1);
}

void vmcAddPresentationTimeAsAttachment(__CVBuffer *a1, __int128 *a2)
{
  v3 = CMTimeCopyAsCVBufferTimeDictionary();
  if (v3)
  {
    v4 = v3;
    CVBufferSetAttachment(a1, *MEMORY[0x1E6965C60], v3, kCVAttachmentMode_ShouldPropagate);
    CFRelease(v4);
  }
}

uint64_t FigSampleAttachmentCollectionRulesAttachAttachmentsToPixelBuffer(uint64_t a1, uint64_t a2, uint64_t a3)
{
  VTable = CMBaseObjectGetVTable();
  v8 = *(VTable + 16);
  result = VTable + 16;
  v9 = *(v8 + 40);
  if (v9)
  {

    return v9(a1, a2, a3);
  }

  return result;
}

uint64_t vmc2InvokeOutputCallback_OutputImage(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, __int128 *a6, uint64_t a7)
{
  FigReadWriteLockLockForRead();
  if (*(a1 + 249))
  {
    v14 = *(a1 + 200);
    if (v14)
    {
      v15 = *(a1 + 152);
      v17 = *a6;
      v18 = *(a6 + 2);
      v14(v15, a2, a3, a4, a5, &v17, a7);
    }
  }

  else
  {
    vmc2InvokeOutputCallback_OutputImage_cold_1();
  }

  return FigReadWriteLockUnlockForRead();
}

void vmcTemporalFilterOutput(uint64_t a1, int a2, uint64_t a3, CMTime *a4, __CVBuffer *a5)
{
  cf = 0;
  v16 = 0;
  if (!*(a1 + 16))
  {
    v14 = *a4;
    vmc2CopyFrameBaggageForPTS(a1, &v14, &v16, &v16 + 1, &cf);
    if (a2 || !a5)
    {
      if (!cf)
      {
        fig_log_get_emitter();
        FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v14.value, v14.timescale, LODWORD(v14.epoch));
LABEL_8:
        if (cf)
        {
          CFRelease(cf);
        }

        return;
      }

      v13 = (v16 >> 2) & 1;
      v14 = *a4;
      vmcAddPresentationTimeAsAttachment(cf, &v14.value);
      v11 = cf;
      v9 = HIDWORD(v16);
      v14 = *a4;
      v10 = a1;
      v12 = v13;
    }

    else
    {
      v14 = *a4;
      vmcAddPresentationTimeAsAttachment(a5, &v14.value);
      v9 = HIDWORD(v16);
      v14 = *a4;
      v10 = a1;
      v11 = a5;
      v12 = 1;
    }

    vmc2InvokeOutputCallback_OutputImage(v10, v11, 0, v12, 0, &v14.value, v9);
    goto LABEL_8;
  }
}

void vmc2CopyFrameBaggageForPTS(uint64_t a1, CMTime *a2, _DWORD *a3, _DWORD *a4, const __CFDictionary **a5)
{
  v21 = 0;
  v22[0] = &v21;
  v22[1] = 0x2000000000;
  v23 = 0;
  valuePtr = 0.0;
  v20 = 0;
  v15 = 0;
  v16 = &v15;
  v17 = 0x2000000000;
  v18 = 0;
  if (*(a1 + 976))
  {
    if ((a2->flags & 0x1D) == 1)
    {
      time = *a2;
      valuePtr = CMTimeGetSeconds(&time);
      v9 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberFloat64Type, &valuePtr);
      v10 = *(a1 + 984);
      v13[0] = MEMORY[0x1E69E9820];
      v13[1] = 0x40000000;
      v13[2] = __vmc2CopyFrameBaggageForPTS_block_invoke;
      v13[3] = &unk_1E7479AD8;
      v13[6] = a1;
      v13[7] = v9;
      v13[4] = &v15;
      v13[5] = &v21;
      dispatch_sync(v10, v13);
      FigCFDictionaryGetInt32IfPresent();
      FigCFDictionaryGetInt32IfPresent();
      Value = v16[3];
      if (Value)
      {
        Value = CFDictionaryGetValue(Value, @"OriginalFrame");
      }

      if (a3)
      {
        goto LABEL_6;
      }

      goto LABEL_7;
    }

    vmc2CopyFrameBaggageForPTS_cold_1(v22);
  }

  else
  {
    vmc2CopyFrameBaggageForPTS_cold_2(v22);
  }

  v9 = 0;
  Value = 0;
  if (a3)
  {
LABEL_6:
    *a3 = v20;
  }

LABEL_7:
  if (a4)
  {
    *a4 = HIDWORD(v20);
  }

  if (a5)
  {
    if (Value)
    {
      Value = CFRetain(Value);
    }

    *a5 = Value;
  }

  if (v9)
  {
    CFRelease(v9);
  }

  v12 = v16[3];
  if (v12)
  {
    CFRelease(v12);
  }

  _Block_object_dispose(&v15, 8);
  _Block_object_dispose(&v21, 8);
}

void __vmc2CopyFrameBaggageForPTS_block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 48) + 976);
  if (v2)
  {
    *(*(*(a1 + 32) + 8) + 24) = CFDictionaryGetValue(v2, *(a1 + 56));
  }

  v3 = *(*(*(a1 + 32) + 8) + 24);
  if (v3)
  {
    CFRetain(v3);
    v4 = *(a1 + 56);
    v5 = *(*(a1 + 48) + 976);

    CFDictionaryRemoveValue(v5, v4);
  }

  else
  {
    fig_log_get_emitter();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v7, v8, vars0);
    *(*(*(a1 + 40) + 8) + 24) = v6;
  }
}

void __vmc2StoreFrameBaggageForPTS_block_invoke(uint64_t a1)
{
  if (*(*(a1 + 40) + 976))
  {
    CFDictionaryAddValue(*(*(a1 + 40) + 976), *(a1 + 48), *(a1 + 56));
  }

  else
  {
    *(*(*(a1 + 32) + 8) + 24) = -12824;
  }
}

void vmc2UpdateTroubleMonitor2(uint64_t a1, int a2, int a3, int a4, int a5)
{
  FigSimpleMutexLock();
  v10 = *(a1 + 584);
  if (!v10)
  {
    FigSimpleMutexUnlock();
    v11 = 0;
    goto LABEL_6;
  }

  v11 = CFRetain(v10);
  FigSimpleMutexUnlock();
  if (!v11)
  {
LABEL_6:
    v12 = 1;
    goto LABEL_7;
  }

  if (CMTimebaseGetRate(v11) == 0.0)
  {
    vmc2ResetTroubleMonitorTimers(a1);
    vmc2ResetQualityOfService(a1);
LABEL_47:

    CFRelease(v11);
    return;
  }

  v12 = 0;
LABEL_7:
  FigSimpleMutexLock();
  if (!a2 || !a3)
  {
    *(a1 + 640) = 0;
LABEL_21:
    *(a1 + 672) = 0;
    goto LABEL_22;
  }

  if (*(a1 + 640))
  {
    UpTimeNanoseconds = FigGetUpTimeNanoseconds();
    if (a5 && UpTimeNanoseconds >= *(a1 + 648))
    {
      ++*(a1 + 1104);
      if (*(a1 + 625))
      {
        vmc2AdjustQualityOfService(a1, 1);
      }
    }

    else if (*(a1 + 640))
    {
      goto LABEL_18;
    }
  }

  *(a1 + 640) = 1;
  *(a1 + 648) = FigGetUpTimeNanoseconds() + 500000000;
LABEL_18:
  if (*(a1 + 672))
  {
    if (FigGetUpTimeNanoseconds() >= *(a1 + 680))
    {
      *(a1 + 656) = 0;
      goto LABEL_21;
    }
  }

  else if (*(a1 + 656))
  {
    *(a1 + 672) = 1;
    *(a1 + 680) = FigGetUpTimeNanoseconds() + 250000000;
  }

LABEL_22:
  if (*(a1 + 656) && a5 && !*(a1 + 640) && FigGetUpTimeNanoseconds() >= *(a1 + 664))
  {
    if (*(a1 + 625))
    {
      vmc2AdjustQualityOfService(a1, -1);
    }

    *(a1 + 656) = 0;
  }

  if (a4 && !*(a1 + 656) && *(a1 + 608) >= 1)
  {
    *(a1 + 656) = 1;
    *(a1 + 664) = FigGetUpTimeNanoseconds() + 2000000000;
  }

  if (a5 && *(a1 + 688) && FigGetUpTimeNanoseconds() >= *(a1 + 696))
  {
    if (*(a1 + 625))
    {
      vmc2AdjustQualityOfService(a1, -1);
    }

    *(a1 + 688) = 0;
  }

  if (a2)
  {
    *(a1 + 688) = 0;
  }

  else if (!*(a1 + 640) && !*(a1 + 656) && !*(a1 + 688) && *(a1 + 608) >= 1)
  {
    *(a1 + 688) = 1;
    *(a1 + 696) = FigGetUpTimeNanoseconds() + 750000000;
  }

  FigSimpleMutexUnlock();
  if ((v12 & 1) == 0)
  {
    goto LABEL_47;
  }
}

void vmc2AdjustQualityOfService(uint64_t a1, int a2)
{
  v25[16] = *MEMORY[0x1E69E9840];
  if (a2 >= 0)
  {
    v3 = a2;
  }

  else
  {
    v3 = -a2;
  }

  if (v3 == 1)
  {
    v4 = a2;
  }

  else
  {
    v4 = (a2 >> 31) | 1;
  }

  v5 = *(a1 + 600);
  if (v5)
  {
    v7 = *(a1 + 608);
    v8 = *(a1 + 616) <= *(a1 + 620) ? *(a1 + 620) : *(a1 + 616);
    if ((a2 & 0x80000000) == 0 || v7)
    {
      Count = CFArrayGetCount(v5);
      if (a2 < 0 || Count != v7 + 1)
      {
        v10 = (a1 + 612);
        CFArrayGetValueAtIndex(*(a1 + 600), *(a1 + 608));
        v11 = *MEMORY[0x1E6983A50];
        v12 = FigCFEqual();
        if (v8 && v12)
        {
          v13 = *v10 - v4;
          *v10 = v13;
          if (v13 >= v8)
          {
            *(a1 + 608) += v4;
            *(a1 + 612) = v8;
            v13 = v8;
          }

          if (v13 < 0)
          {
            *(a1 + 608) = (*(a1 + 608) + v4);
          }
        }

        else
        {
          v14 = *(a1 + 608) + v4;
          *(a1 + 608) = v14;
          CFArrayGetValueAtIndex(*(a1 + 600), v14);
          if (FigCFEqual())
          {
            if (v8)
            {
              if (a2 < 0)
              {
                *v10 = 0;
              }

              else
              {
                *v10 = v8 - 1;
              }
            }

            else
            {
              *(a1 + 608) += v4;
            }
          }
        }

        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
        CFArrayGetValueAtIndex(*(a1 + 600), *(a1 + 608));
        if (FigCFEqual())
        {
          v16 = *MEMORY[0x1E695E480];
          v17 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberIntType, (a1 + 612));
          VTSessionSetProperty(*(a1 + 64), v11, v17);
          if (v17)
          {
            CFRelease(v17);
          }

          if (a2 < 0)
          {
            CFArrayGetValueAtIndex(*(a1 + 600), v7);
            if (!FigCFEqual())
            {
              v18 = *(a1 + 608);
              if (v18 < 1)
              {
                v25[0] = 0x3FF0000000000000;
                v24 = CFNumberCreate(v16, kCFNumberDoubleType, v25);
                VTSessionSetProperty(*(a1 + 64), *MEMORY[0x1E6983970], *MEMORY[0x1E6983A38]);
                VTSessionSetProperty(*(a1 + 64), *MEMORY[0x1E69839A8], v24);
                if (v24)
                {
                  CFRelease(v24);
                }
              }

              else
              {
                v19 = *(a1 + 64);
                ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 600), (v18 - 1));
                VTSessionSetProperties(v19, ValueAtIndex);
              }
            }

LABEL_38:
            ++*(a1 + 1112);
LABEL_39:
            v23 = *(a1 + 608);
            if (v23 > *(a1 + 1116))
            {
              *(a1 + 1116) = v23;
            }

            return;
          }
        }

        else
        {
          v21 = *(a1 + 64);
          v22 = CFArrayGetValueAtIndex(*(a1 + 600), *(a1 + 608));
          VTSessionSetProperties(v21, v22);
          if (a2 < 0)
          {
            CFArrayGetValueAtIndex(*(a1 + 600), v7);
            if (FigCFEqual())
            {
              VTSessionSetProperty(*(a1 + 64), v11, 0);
            }

            goto LABEL_38;
          }
        }

        ++*(a1 + 1108);
        goto LABEL_39;
      }
    }
  }
}

uint64_t vmc2GetWaterLevelState(uint64_t a1)
{
  v2 = *(a1 + 524);
  if (*(a1 + 528) != v2)
  {
    FigMemoryBarrier();
    v12 = **&MEMORY[0x1E6960C70];
    FigReadWriteLockLockForRead();
    if (*(a1 + 249))
    {
      v4 = *(a1 + 168);
      if (v4)
      {
        memset(&v15, 0, sizeof(v15));
        v4(&v15, *(a1 + 152));
        v12 = v15;
      }

      FigSimpleMutexLock();
      v5 = *(a1 + 1520);
      if (v5)
      {
        v6 = *(*(CMBaseObjectGetVTable() + 16) + 32);
        if (v6)
        {
          v7 = v6(v5) == 0;
        }

        else
        {
          v7 = 0;
        }

        if ((v12.flags & 0x1D) == 1)
        {
          memset(&v15, 0, sizeof(v15));
          v8 = *(a1 + 1520);
          v9 = *(*(CMBaseObjectGetVTable() + 16) + 16);
          if (v9)
          {
            v9(&v15, v8);
          }

          else
          {
            v15 = **&MEMORY[0x1E6960CC0];
          }

          lhs = v12;
          rhs = v15;
          CMTimeAdd(&v12, &lhs, &rhs);
        }
      }

      else
      {
        v7 = 0;
      }

      FigSimpleMutexUnlock();
      v10 = !v7;
    }

    else
    {
      vmc2GetWaterLevelState_cold_1();
      v10 = 1;
    }

    FigReadWriteLockUnlockForRead();
    v15 = v12;
    FigSimpleMutexLock();
    *(a1 + 544) = v15;
    if (v10)
    {
      lhs = v15;
      rhs = *(a1 + 496);
      if (CMTimeCompare(&lhs, &rhs) < 0)
      {
        v3 = 0;
        *(a1 + 568) = 0;
        goto LABEL_27;
      }

      lhs = v15;
      rhs = *(a1 + 472);
      if (CMTimeCompare(&lhs, &rhs) < 0)
      {
        v3 = *(a1 + 568);
        if (v3 == 2)
        {
          v3 = 3;
        }

        else
        {
          if (v3)
          {
            goto LABEL_27;
          }

          v3 = 1;
        }

        *(a1 + 568) = v3;
        goto LABEL_27;
      }
    }

    v3 = 2;
    *(a1 + 568) = 2;
    *(a1 + 572) = 0;
LABEL_27:
    *(a1 + 528) = v2;
    goto LABEL_28;
  }

  FigSimpleMutexLock();
  v3 = *(a1 + 568);
LABEL_28:
  FigSimpleMutexUnlock();
  return v3;
}

uint64_t vmc2RecalculateUpcomingImageTimes2(uint64_t result)
{
  *(result + 444) = 0;
  if (!*(result + 16))
  {
    v2 = result;
    FigSimpleMutexLock();
    vmc2RecalculateUpcomingImageTimes(v2);

    return FigSimpleMutexUnlock();
  }

  return result;
}

uint64_t vmcGetCompressedFrameOutputMode(opaqueCMSampleBuffer *a1)
{
  SampleAttachmentsArray = CMSampleBufferGetSampleAttachmentsArray(a1, 0);
  if (SampleAttachmentsArray)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(SampleAttachmentsArray, 0);
    if (ValueAtIndex)
    {
      FigCFDictionaryGetBooleanIfPresent();
      FigCFDictionaryGetBooleanIfPresent();
      FigCFDictionaryGetBooleanIfPresent();
      if (CFDictionaryGetValue(ValueAtIndex, *MEMORY[0x1E6962DD0]))
      {
        ValueAtIndex = 4;
      }

      else
      {
        ValueAtIndex = 0;
      }
    }
  }

  else
  {
    ValueAtIndex = 0;
  }

  v4 = CMGetAttachment(a1, *MEMORY[0x1E69604B0], 0);
  if (v4)
  {
    v5 = v4;
    TypeID = CFBooleanGetTypeID();
    if (TypeID == CFGetTypeID(v5))
    {
      if (CFBooleanGetValue(v5))
      {
        v7 = CMGetAttachment(a1, *MEMORY[0x1E6960480], 0);
        if (v7)
        {
          v8 = v7;
          v9 = CFBooleanGetTypeID();
          if (v9 == CFGetTypeID(v8))
          {
            if (CFBooleanGetValue(v8))
            {
              return 2;
            }

            else
            {
              return ValueAtIndex;
            }
          }
        }
      }
    }
  }

  return ValueAtIndex;
}

void vmc2UpdateCPECryptor(uint64_t *a1)
{
  v1 = *a1;
  Decryptor = FigSampleBufferGetDecryptor();
  v3 = *(v1 + 808);
  if (Decryptor == v3)
  {
    return;
  }

  v4 = Decryptor;
  if (Decryptor)
  {
    v5 = v3 == 0;
  }

  else
  {
    v5 = 0;
  }

  if (v5)
  {
    dispatch_resume(*(v1 + 824));
    *(v1 + 832) = 1;
    v3 = *(v1 + 808);
LABEL_12:
    *(v1 + 808) = v4;
    CFRetain(v4);
    if (!v3)
    {
      return;
    }

    goto LABEL_13;
  }

  if (Decryptor)
  {
    goto LABEL_12;
  }

  if (v3)
  {
    dispatch_suspend(*(v1 + 824));
    *(v1 + 832) = 0;
    v3 = *(v1 + 808);
  }

  *(v1 + 808) = 0;
  if (v3)
  {
LABEL_13:

    CFRelease(v3);
  }
}

_DWORD *vmcCreateSourceFrameInfo(uint64_t a1, int a2, opaqueCMSampleBuffer *a3, int a4)
{
  v7 = malloc_type_calloc(0x58uLL, 1uLL, 0x10E004093C53091uLL);
  FormatDescription = CMSampleBufferGetFormatDescription(a3);
  if (v7)
  {
    v9 = FormatDescription;
    *v7 = a2;
    v7[1] = a4;
    SampleAttachmentsArray = CMSampleBufferGetSampleAttachmentsArray(a3, 0);
    if (SampleAttachmentsArray && (ValueAtIndex = CFArrayGetValueAtIndex(SampleAttachmentsArray, 0)) != 0)
    {
      Value = CFDictionaryGetValue(ValueAtIndex, *MEMORY[0x1E6962DD0]);
      v13 = Value;
      if (Value)
      {
        CFRetain(Value);
      }
    }

    else
    {
      v13 = 0;
    }

    *(v7 + 1) = v13;
    v14 = CMGetAttachment(a3, *MEMORY[0x1E6962E28], 0);
    *(v7 + 2) = v14;
    if (v14)
    {
      CFRetain(v14);
    }

    v15 = CMGetAttachment(a3, *MEMORY[0x1E6962DE0], 0);
    *(v7 + 3) = v15;
    if (v15)
    {
      CFRetain(v15);
    }

    v16 = CMGetAttachment(a3, *MEMORY[0x1E6962E48], 0);
    *(v7 + 4) = v16;
    if (v16)
    {
      CFRetain(v16);
    }

    v17 = CMGetAttachment(a3, *MEMORY[0x1E6962E40], 0);
    *(v7 + 5) = v17;
    if (v17)
    {
      CFRetain(v17);
    }

    v18 = CMGetAttachment(a3, *MEMORY[0x1E6960478], 0);
    *(v7 + 6) = v18;
    if (v18)
    {
      CFRetain(v18);
    }

    *(v7 + 8) = mach_absolute_time();
    if (v9)
    {
      FigSimpleMutexLock();
      *(v7 + 10) = FigCFDictionaryGetValue();
      FigSimpleMutexUnlock();
    }

    v19 = *(v7 + 10);
    if (v19)
    {
      CFRetain(v19);
    }

    v20 = CMSampleBufferGetSampleAttachmentsArray(a3, 0);
    if (v20)
    {
      v20 = CFArrayGetValueAtIndex(v20, 0);
      if (v20)
      {
        v20 = CFDictionaryGetValue(v20, *MEMORY[0x1E6960458]);
      }
    }

    *(v7 + 72) = *MEMORY[0x1E695E4D0] != v20;
  }

  return v7;
}

void vmcCreateAttachmentsDictionaryForSourceFrameInfo(uint64_t a1, uint64_t a2, uint64_t a3)
{
  cf = 0;
  if (a1)
  {
    if (a2)
    {
      v4 = *(a1 + 1096);
      if (v4 && (v6 = *(*(CMBaseObjectGetVTable() + 16) + 32)) != 0)
      {
        v6(v4, a3, &cf);
        v7 = cf;
        v8 = *(a2 + 56);
        *(a2 + 56) = cf;
        if (v7)
        {
          CFRetain(v7);
        }
      }

      else
      {
        v8 = *(a2 + 56);
        *(a2 + 56) = 0;
      }

      if (v8)
      {
        CFRelease(v8);
      }
    }

    else
    {
      vmcCreateAttachmentsDictionaryForSourceFrameInfo_cold_1();
    }
  }

  else
  {
    vmcCreateAttachmentsDictionaryForSourceFrameInfo_cold_2();
  }

  if (cf)
  {
    CFRelease(cf);
  }
}

uint64_t vmc2RebuildDecompressionSession(uint64_t a1)
{
  v2 = *(a1 + 64);
  if (v2)
  {
    VTDecompressionSessionWaitForAsynchronousFrames(v2);
  }

  FigSimpleMutexLock();
  vmc2RemoveDecompressionSession(a1);
  v3 = vmc2BuildDecompressionSession(a1);
  FigSimpleMutexUnlock();
  return v3;
}

CFTypeRef __vmc2DequeueAndDecodeFrame_block_invoke(uint64_t a1)
{
  result = *(*(a1 + 40) + 968);
  if (result)
  {
    result = CFRetain(result);
  }

  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

uint64_t FigImageQueueGaugeSetEnqueueingComplete(uint64_t a1)
{
  VTable = CMBaseObjectGetVTable();
  v4 = *(VTable + 16);
  result = VTable + 16;
  v5 = *(v4 + 24);
  if (v5)
  {

    return v5(a1, 1);
  }

  return result;
}

void *__vmc2FinishAndDestroyImageEnhancementFilter_block_invoke(void *result)
{
  *(*(result[4] + 8) + 24) = *(result[6] + 968);
  *(result[6] + 968) = 0;
  *(*(result[5] + 8) + 24) = *(result[6] + 976);
  *(result[6] + 976) = 0;
  return result;
}

uint64_t FigVisualContextCreateBasic(uint64_t a1, uint64_t a2, CFTypeRef *a3)
{
  v17 = *MEMORY[0x1E69E9840];
  cf = 0;
  v4 = lvcCreateCommon(a1, 0, 0, &cf);
  if (v4)
  {
    v11 = v4;
    goto LABEL_20;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v6 = MEMORY[0x1E6960C70];
  *(DerivedStorage + 128) = *MEMORY[0x1E6960C70];
  *(DerivedStorage + 144) = *(v6 + 16);
  if (!FigCFDictionaryGetDoubleIfPresent())
  {
LABEL_12:
    v11 = 0;
    *a3 = cf;
    return v11;
  }

  v7 = 0.0;
  if (0.0 < 0.005)
  {
    v7 = 0.005;
  }

  CMTimeMakeWithSeconds(&v16, v7, 1000);
  *(DerivedStorage + 128) = v16;
  snprintf(&v16, 0x64uLL, "com.apple.coremedia.localvisualcontext.autoprune.%p", cf);
  if (sCreateSharedAutoPruneDispatchQueueOnce != -1)
  {
    FigVisualContextCreateBasic_cold_1();
  }

  if (sLVCSharedAutoPruneDispatchQueue)
  {
    v8 = dispatch_queue_create_with_target_V2(&v16, 0, sLVCSharedAutoPruneDispatchQueue);
    *(DerivedStorage + 152) = v8;
    if (v8)
    {
      v9 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, v8);
      *(DerivedStorage + 160) = v9;
      if (v9)
      {
        v10 = FigCFWeakReferenceHolderCreateWithReferencedObject();
        if (v10)
        {
          dispatch_set_context(*(DerivedStorage + 160), v10);
          *(DerivedStorage + 184) = voucher_copy();
          dispatch_source_set_event_handler_f(*(DerivedStorage + 160), lvcAutoPrune);
          dispatch_source_set_cancel_handler_f(*(DerivedStorage + 160), lvcCancelAutoPruneTimer);
          dispatch_resume(*(DerivedStorage + 160));
          goto LABEL_12;
        }

        v13 = 534;
      }

      else
      {
        v13 = 532;
      }

      goto LABEL_19;
    }
  }

  else
  {
    FigVisualContextCreateBasic_cold_2(DerivedStorage);
  }

  v13 = 530;
LABEL_19:
  FigVisualContextCreateBasic_cold_3(v13, &v16, &v15);
  v11 = v15;
LABEL_20:
  if (cf)
  {
    CFRelease(cf);
  }

  return v11;
}

uint64_t lvcCreateCommon(uint64_t a1, uint64_t a2, uint64_t a3, CFTypeRef *a4)
{
  if (!a4)
  {
    lvcCreateCommon_cold_2(&v13);
    return v13;
  }

  FigVisualContextGetClassID(a1, a2);
  v7 = CMDerivedObjectCreate();
  if (v7)
  {
    return v7;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v9 = FigReadWriteLockCreate();
  DerivedStorage[1] = v9;
  if (!v9)
  {
    lvcCreateCommon_cold_1(&v13);
    return v13;
  }

  DerivedStorage[21] = a2;
  DerivedStorage[22] = a3;
  if (a3)
  {
    v10 = *(a3 + 8);
    if (v10)
    {
      v7 = v10(a2, 0);
      if (v7)
      {
        return v7;
      }
    }
  }

  v11 = 0;
  *a4 = 0;
  return v11;
}

void lvcAutoPrune(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  v1 = MEMORY[0x1E6960C70];
  value = *MEMORY[0x1E6960C70];
  timescale = *(MEMORY[0x1E6960C70] + 8);
  if (a1)
  {
    v2 = FigCFWeakReferenceHolderCopyReferencedObject();
    if (v2)
    {
      v3 = v2;
      DerivedStorage = CMBaseObjectGetDerivedStorage();
      if (!*DerivedStorage)
      {
        v5 = DerivedStorage;
        os_retain(*(DerivedStorage + 184));
        voucher_adopt();
        FigReadWriteLockLockForRead();
        v6 = *(v5 + 120);
        if (v6)
        {
          CMTimebaseGetTime(&v11, v6);
          value = v11.value;
          flags = v11.flags;
          timescale = v11.timescale;
          epoch = v11.epoch;
        }

        else
        {
          flags = *(v1 + 12);
          epoch = *(v1 + 16);
        }

        FigReadWriteLockUnlockForRead();
        if ((flags & 0x1D) == 1)
        {
          v9 = *MEMORY[0x1E695E480];
          v11.value = value;
          v11.timescale = timescale;
          v11.flags = flags;
          v11.epoch = epoch;
          lvcCopyImageForTime(v3, v9, &v11.value, 5, 0, 0, 0);
        }

        v10 = voucher_adopt();
        os_release(v10);
      }

      CFRelease(v3);
    }
  }
}

void lvcCancelAutoPruneTimer(CFTypeRef cf)
{
  if (cf)
  {
    CFRelease(cf);
  }
}

uint64_t lvcInvalidate(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!*DerivedStorage)
  {
    v3 = DerivedStorage;
    *DerivedStorage = 1;
    v4 = *(DerivedStorage + 176);
    if (v4)
    {
      v5 = *(v4 + 16);
      if (v5)
      {
        v5(*(DerivedStorage + 168), a1);
      }
    }

    if (*(v3 + 120))
    {
      CMNotificationCenterGetDefaultLocalCenter();
      FigNotificationCenterRemoveWeakListener();
    }

    v6 = *(v3 + 160);
    if (v6)
    {
      dispatch_source_cancel(v6);
    }

    v7 = *(v3 + 152);
    if (v7)
    {
      dispatch_sync_f(v7, 0, lvcNoop);
      dispatch_release(*(v3 + 152));
      *(v3 + 152) = 0;
    }

    FigReadWriteLockLockForWrite();
    *(v3 + 16) = 0;
    *(v3 + 32) = 0;
    *(v3 + 48) = 0;
    v8 = *(v3 + 120);
    if (v8)
    {
      CFRelease(v8);
    }

    *(v3 + 120) = 0;
    *(v3 + 88) = 0;
    *(v3 + 96) = 0;
    *(v3 + 80) = 0;
    v9 = *(v3 + 112);
    if (v9)
    {
      CFRelease(v9);
      *(v3 + 112) = 0;
    }

    FigReadWriteLockUnlockForWrite();
  }

  return 0;
}

uint64_t lvcFinalize(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  lvcInvalidate(a1);
  v3 = *(DerivedStorage + 160);
  if (v3)
  {
    dispatch_release(v3);
    *(DerivedStorage + 160) = 0;
  }

  v4 = *(DerivedStorage + 184);
  if (v4)
  {
    os_release(v4);
    *(DerivedStorage + 184) = 0;
  }

  return FigReadWriteLockDestroy();
}

__CFString *lvcCopyDebugDesc(const void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v3 = CFGetAllocator(a1);
  Mutable = CFStringCreateMutable(v3, 0);
  v5 = CFGetAllocator(a1);
  CFStringAppendFormat(Mutable, 0, @"<FigVisualContext %p [%p]>{imageAvailableImmediate:%p, imageAvailableSequential:%p, noMoreImages:%p, timebase:%p, isNewImageAvailable:%p, copyImageForTime:%p, getEarliestSequentialImageTime:%p}", a1, v5, DerivedStorage[2], DerivedStorage[4], DerivedStorage[6], DerivedStorage[15], DerivedStorage[10], DerivedStorage[11], DerivedStorage[12]);
  return Mutable;
}

uint64_t lvcCopyProperty(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (*CMBaseObjectGetDerivedStorage())
  {
    lvcCopyProperty_cold_1(&v7);
    return v7;
  }

  else if (FigCFEqual())
  {
    UInt64 = FigCFNumberCreateUInt64();
    result = 0;
    *a4 = UInt64;
  }

  else
  {
    return 4294954512;
  }

  return result;
}

uint64_t lvcTimebaseRateChanged(uint64_t a1, uint64_t a2)
{
  CMBaseObjectGetDerivedStorage();
  FigReadWriteLockLockForRead();
  lvcUpdateAutoPruneTimer(a2);

  return FigReadWriteLockUnlockForRead();
}

void lvcUpdateAutoPruneTimer(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v2 = *(DerivedStorage + 160);
  if (v2)
  {
    if (*(DerivedStorage + 120))
    {
      Rate = CMTimebaseGetRate(*(DerivedStorage + 120));
      if (Rate != 0.0)
      {
        v5 = *(DerivedStorage + 128);
        v4 = (CMTimeGetSeconds(&v5) * 1000000000.0 / fabs(Rate));
        dispatch_source_set_timer(*(DerivedStorage + 160), 0, v4, v4 / 10);
        return;
      }

      v2 = *(DerivedStorage + 160);
    }

    dispatch_source_set_timer(v2, 0xFFFFFFFFFFFFFFFFLL, 0, 0);
  }
}

uint64_t lvcSetImageAvailableImmediateCallback(uint64_t a1, uint64_t a2, uint64_t a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigReadWriteLockLockForWrite();
  if (a2 && *(DerivedStorage + 16))
  {
    fig_log_get_emitter();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v9, v10, v11);
    v7 = v6;
  }

  else
  {
    v7 = 0;
    *(DerivedStorage + 16) = a2;
    *(DerivedStorage + 24) = a3;
  }

  FigReadWriteLockUnlockForWrite();
  return v7;
}

uint64_t lvcSetImageAvailableSequentialCallback(uint64_t a1, uint64_t a2, uint64_t a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigReadWriteLockLockForWrite();
  if (a2 && *(DerivedStorage + 32))
  {
    fig_log_get_emitter();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v9, v10, v11);
    v7 = v6;
  }

  else
  {
    v7 = 0;
    *(DerivedStorage + 32) = a2;
    *(DerivedStorage + 40) = a3;
  }

  FigReadWriteLockUnlockForWrite();
  return v7;
}

uint64_t lvcSetNoMoreImagesCallback(uint64_t a1, uint64_t a2, uint64_t a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigReadWriteLockLockForWrite();
  if (a2 && *(DerivedStorage + 48))
  {
    fig_log_get_emitter();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v9, v10, v11);
    v7 = v6;
  }

  else
  {
    v7 = 0;
    *(DerivedStorage + 48) = a2;
    *(DerivedStorage + 56) = a3;
  }

  FigReadWriteLockUnlockForWrite();
  return v7;
}

uint64_t lvcSetBecameEmptyCallback(uint64_t a1, uint64_t a2, uint64_t a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigReadWriteLockLockForWrite();
  if (a2 && *(DerivedStorage + 64))
  {
    fig_log_get_emitter();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v9, v10, v11);
    v7 = v6;
  }

  else
  {
    v7 = 0;
    *(DerivedStorage + 64) = a2;
    *(DerivedStorage + 72) = a3;
  }

  FigReadWriteLockUnlockForWrite();
  return v7;
}

uint64_t lvcIsNewImageAvailable(uint64_t a1, __int128 *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if ((*(a2 + 3) & 0x1D) != 1)
  {
    fig_log_get_emitter();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v11, DWORD2(v11), v12);
    return 0;
  }

  v5 = DerivedStorage;
  FigReadWriteLockLockForRead();
  if (!*(v5 + 80) || !*(v5 + 112) || (v6 = FigCFWeakReferenceHolderCopyReferencedObject()) == 0)
  {
    FigReadWriteLockUnlockForRead();
    return 0;
  }

  v7 = v6;
  v8 = *(v5 + 80);
  v11 = *a2;
  v12 = *(a2 + 2);
  v9 = v8(a1, &v11, v6);
  FigReadWriteLockUnlockForRead();
  CFRelease(v7);
  return v9;
}

void lvcCopyImageForTime(uint64_t a1, uint64_t a2, __int128 *a3, uint64_t a4, CVBufferRef *a5, CFTypeRef *a6, uint64_t a7)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  cf = 0;
  buffer = 0;
  v30 = *MEMORY[0x1E6960C70];
  v31 = *(MEMORY[0x1E6960C70] + 16);
  if ((*(a3 + 3) & 0x1D) == 1)
  {
    v16 = DerivedStorage;
    if (a5)
    {
      *a5 = 0;
    }

    FigReadWriteLockLockForRead();
    if (v16[11] && v16[14])
    {
      v17 = FigCFWeakReferenceHolderCopyReferencedObject();
      if (v17)
      {
        v18 = v16[11];
        if (a5)
        {
          p_buffer = &buffer;
        }

        else
        {
          p_buffer = 0;
        }

        if (a6)
        {
          p_cf = &cf;
        }

        else
        {
          p_cf = 0;
        }

        if (a7)
        {
          v21 = &v30;
        }

        else
        {
          v21 = 0;
        }

        v28 = *a3;
        v29 = *(a3 + 2);
        v22 = v18(a1, a2, &v28, a4, p_buffer, p_cf, v21, v17);
        if (!a5)
        {
          goto LABEL_28;
        }
      }

      else
      {
        v22 = 0;
        if (!a5)
        {
          goto LABEL_28;
        }
      }
    }

    else
    {
      v22 = 0;
      v17 = 0;
      if (!a5)
      {
        goto LABEL_28;
      }
    }

    if (!v22)
    {
      v24 = v16[22];
      if (v24)
      {
        v25 = *(v24 + 24);
        if (v25)
        {
          v26 = v16[21];
          v28 = v30;
          v29 = v31;
          v25(v26, a2, buffer, a5, cf, a6, &v28, a7);
LABEL_34:
          FigReadWriteLockUnlockForRead();
          if (v17)
          {
            CFRelease(v17);
          }

          if (buffer)
          {
            CVBufferRelease(buffer);
          }

          if (cf)
          {
            CFRelease(cf);
          }

          return;
        }
      }

      v27 = a7 != 0;
      goto LABEL_29;
    }

LABEL_28:
    v27 = a7 != 0;
    if (!a5)
    {
LABEL_30:
      if (a6)
      {
        *a6 = cf;
        cf = 0;
      }

      if (v27)
      {
        *a7 = v30;
        *(a7 + 16) = v31;
      }

      goto LABEL_34;
    }

LABEL_29:
    *a5 = buffer;
    buffer = 0;
    goto LABEL_30;
  }

  emitter = fig_log_get_emitter();

  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 4294954481, "<<<< FVC >>>>", 1051, v7);
}

void lvcConvertHostTimeToImageTime(uint64_t a1, uint64_t a2, CMTime *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  memset(&v16, 0, sizeof(v16));
  if (!a3)
  {
    emitter = fig_log_get_emitter();
    v9 = v3;
    v10 = 1172;
    goto LABEL_9;
  }

  v7 = DerivedStorage;
  if (a2 && (*(a2 + 64) & 2) == 0)
  {
    emitter = fig_log_get_emitter();
    v9 = v3;
    v10 = 1174;
LABEL_9:

    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 4294954481, "<<<< FVC >>>>", v10, v9);
    return;
  }

  FigReadWriteLockLockForRead();
  v11 = *(v7 + 120);
  if (v11)
  {
    if (a2)
    {
      CMClockMakeHostTimeFromSystemUnits(&v16, *(a2 + 16));
      HostTimeClock = CMClockGetHostTimeClock();
      v13 = *(v7 + 120);
      v14 = v16;
      CMSyncConvertTime(&v15, &v14, HostTimeClock, v13);
    }

    else
    {
      CMTimebaseGetTime(&v15, v11);
    }

    *a3 = v15;
  }

  FigReadWriteLockUnlockForRead();
}

uint64_t lvcGetEarliestSequentialImageTimeAfterTime(uint64_t a1, uint64_t a2, __int128 *a3, uint64_t a4, _BYTE *a5)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a4)
  {
    v11 = MEMORY[0x1E6960C70];
    *a4 = *MEMORY[0x1E6960C70];
    *(a4 + 16) = *(v11 + 16);
  }

  if (a5)
  {
    *a5 = 0;
  }

  FigReadWriteLockLockForRead();
  if (!*(DerivedStorage + 96) || !*(DerivedStorage + 112))
  {
    v15 = 4294954483;
LABEL_10:
    FigReadWriteLockUnlockForRead();
    return v15;
  }

  v12 = FigCFWeakReferenceHolderCopyReferencedObject();
  if (!v12)
  {
    v15 = 0;
    goto LABEL_10;
  }

  v13 = v12;
  v14 = *(DerivedStorage + 96);
  v17 = *a3;
  v18 = *(a3 + 2);
  v15 = v14(a1, a2, &v17, a4, a5, v12);
  FigReadWriteLockUnlockForRead();
  CFRelease(v13);
  return v15;
}

uint64_t lvcTask(uint64_t a1)
{
  result = CMBaseObjectGetDerivedStorage();
  v2 = *(result + 176);
  if (v2)
  {
    v3 = *(v2 + 32);
    if (v3)
    {
      v4 = *(result + 168);

      return v3(v4);
    }
  }

  return result;
}

double lvcImageAvailableImmediate(uint64_t a1, __int128 *a2, uint64_t a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if ((*(a2 + 3) & 0x1D) == 1)
  {
    v8 = DerivedStorage;
    FigReadWriteLockLockForRead();
    v9 = *(v8 + 16);
    if (v9)
    {
      v10 = *(v8 + 24);
      v13 = *a2;
      v14 = *(a2 + 2);
      v9(a1, &v13, a3, v10);
    }

    FigReadWriteLockUnlockForRead();
  }

  else
  {
    emitter = fig_log_get_emitter();

    return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 4294954481, "<<<< FVC >>>>", 910, v3);
  }

  return result;
}

double lvcImageAvailableSequential(uint64_t a1, __int128 *a2, uint64_t a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if ((*(a2 + 3) & 0x1D) == 1)
  {
    v8 = DerivedStorage;
    FigReadWriteLockLockForRead();
    v9 = *(v8 + 32);
    if (v9)
    {
      v10 = *(v8 + 40);
      v13 = *a2;
      v14 = *(a2 + 2);
      v9(a1, &v13, a3, v10);
    }

    FigReadWriteLockUnlockForRead();
  }

  else
  {
    emitter = fig_log_get_emitter();

    return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 4294954481, "<<<< FVC >>>>", 937, v3);
  }

  return result;
}

uint64_t lvcNoMoreImages(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigReadWriteLockLockForRead();
  v3 = *(DerivedStorage + 48);
  if (v3)
  {
    v3(a1, *(DerivedStorage + 56));
  }

  FigReadWriteLockUnlockForRead();
  return 0;
}

uint64_t lvcBecameEmpty(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigReadWriteLockLockForRead();
  v3 = *(DerivedStorage + 64);
  if (v3)
  {
    v3(a1, *(DerivedStorage + 72));
  }

  FigReadWriteLockUnlockForRead();
  return 0;
}

uint64_t lvcSetProducerCallbacks(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigReadWriteLockLockForWrite();
  v13 = *(DerivedStorage + 104);
  if (v13)
  {
    v14 = v13 == a6;
  }

  else
  {
    v14 = 1;
  }

  if (v14 || a3 && a4 && a5 || (v15 = 4294954480, !a2) && !a5 && !a4 && !a3 && !a6)
  {
    v16 = *(DerivedStorage + 112);
    if (v16)
    {
      CFRelease(v16);
      *(DerivedStorage + 112) = 0;
    }

    if (*(DerivedStorage + 120))
    {
      CMNotificationCenterGetDefaultLocalCenter();
      FigNotificationCenterRemoveWeakListener();
      v17 = *(DerivedStorage + 120);
    }

    else
    {
      v17 = 0;
    }

    *(DerivedStorage + 120) = a2;
    if (a2)
    {
      CFRetain(a2);
    }

    if (v17)
    {
      CFRelease(v17);
    }

    *(DerivedStorage + 80) = a3;
    *(DerivedStorage + 88) = a4;
    if (a2 | a5 | a3 | a4)
    {
      v18 = a6;
    }

    else
    {
      v18 = 0;
    }

    *(DerivedStorage + 96) = a5;
    *(DerivedStorage + 104) = v18;
    *(DerivedStorage + 112) = FigCFWeakReferenceHolderCreateWithReferencedObject();
    if (*(DerivedStorage + 140))
    {
      if (*(DerivedStorage + 120))
      {
        CMNotificationCenterGetDefaultLocalCenter();
        FigNotificationCenterAddWeakListener();
      }

      lvcUpdateAutoPruneTimer(a1);
    }

    v15 = 0;
  }

  FigReadWriteLockUnlockForWrite();
  return v15;
}

uint64_t lvcCreateSharedAutoPruneDispatchQueue()
{
  result = FigDispatchQueueCreateWithPriority();
  sLVCSharedAutoPruneDispatchQueue = result;
  return result;
}

__CFString *convertPresetEnumToUsageModeString(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  switch(a1)
  {
    case 0:
      v1 = kFigVirtualDisplayUsage_Uncompressed;
      goto LABEL_11;
    case 1:
      v1 = kFigVirtualDisplayUsage_AirPlayHEVC;
      goto LABEL_11;
    case 2:
      v1 = kFigVirtualDisplayUsage_CarPlay;
      goto LABEL_11;
    case 3:
      v1 = kFigVirtualDisplayUsage_CarPlayHEVC;
      goto LABEL_11;
    case 4:
      v1 = kFigVirtualDisplayUsage_Stevenote;
      goto LABEL_11;
    case 5:
      v1 = kFigVirtualDisplayUsage_Valeria;
      goto LABEL_11;
    case 6:
      v1 = kFigVirtualDisplayUsage_AirPlay;
      goto LABEL_11;
    case 7:
    case 9:
    case 11:
    case 13:
      v1 = kFigVirtualDisplayUsage_UncompressedHDR;
      goto LABEL_11;
    case 8:
    case 10:
    case 12:
    case 14:
      v1 = kFigVirtualDisplayUsage_AirPlayHDR;
LABEL_11:
      result = *v1;
      break;
    default:
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
      result = 0;
      break;
  }

  return result;
}

void sub_1964AEACC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, ...)
{
  va_start(va, a24);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t handleServerDiedNotification(uint64_t a1, void *a2)
{
  [a2 delegate];
  result = objc_opt_respondsToSelector();
  if (result)
  {
    v4 = [a2 delegate];

    return [v4 screenCaptureControllerMediaServicesWereReset:a2];
  }

  return result;
}

void *conduitPushFrameCallback(void *result, uint64_t a2, unsigned int a3)
{
  if (a2)
  {
    v5 = result;
    v6 = [result delegate];

    return [v6 screenCaptureController:v5 didReceiveSampleBuffer:a2 transformFlags:a3];
  }

  return result;
}

uint64_t conduitClearScreenCallback(void *a1)
{
  [a1 delegate];
  result = objc_opt_respondsToSelector();
  if (result)
  {
    v3 = [a1 delegate];

    return [v3 screenCaptureControllerDidReceiveClearScreen:a1];
  }

  return result;
}

uint64_t handleSourceTerminatedNotification(uint64_t a1, void *a2)
{
  [a2 delegate];
  result = objc_opt_respondsToSelector();
  if (result)
  {
    v4 = [a2 delegate];

    return [v4 screenCaptureController:a2 didFailWithStatus:4294955218];
  }

  return result;
}

double OUTLINED_FUNCTION_0_26(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  fig_log_call_emit_and_clean_up_after_send_and_compose();
  return result;
}

uint64_t OUTLINED_FUNCTION_1_24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, const char *a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);

  return _os_log_send_and_compose_impl(a1, 0, va, 128, a5, v12, v13, a8);
}

void OUTLINED_FUNCTION_2_25(uint64_t a1@<X8>, float a2@<S0>)
{
  *(v3 - 64) = a2;
  *(a1 + 4) = v2;
  *(v3 - 52) = 1024;
}

uint64_t OUTLINED_FUNCTION_4_19(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, __int16 a13, __int16 a14, char a15, char a16)
{

  return fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
}

uint64_t FBLSupportAppendDeferredTransactionChangeToSetContentsScaleForFigCALayer(const void *a1, const void *a2, uint64_t a3, float a4)
{
  v8 = malloc_type_malloc(0x10uLL, 0x10800409227ACB4uLL);
  if (v8)
  {
    v9 = v8;
    *v8 = CFRetain(a2);
    *(v9 + 8) = a4;

    return FigDeferredTransactionAppendChangeWithCallback(a1, 1, a3, v9, disposeSetContentsScaleContext, copyDescriptionForSetContentsScaleContext, setContentsScaleForFigCALayer);
  }

  else
  {
    FBLSupportAppendDeferredTransactionChangeToSetContentsScaleForFigCALayer_cold_1(&v11);
    return v11;
  }
}

void disposeSetContentsScaleContext(id *a1)
{
  if (*a1)
  {
  }

  free(a1);
}

uint64_t FBLSupportAppendDeferredTransactionChangeToSetAllowsDisplayCompositing(const void *a1, const void *a2, char a3, uint64_t a4)
{
  v8 = malloc_type_malloc(0x10uLL, 0x1080040C20BADFCuLL);
  if (v8)
  {
    v9 = v8;
    *v8 = CFRetain(a2);
    *(v9 + 8) = a3;

    return FigDeferredTransactionAppendChangeWithCallback(a1, 1, a4, v9, disposeSetAllowsDisplayCompositingContext, copyDescriptionForSetAllowsDisplayCompositingContext, setAllowsDisplayCompositingForFigCALayer);
  }

  else
  {
    FBLSupportAppendDeferredTransactionChangeToSetAllowsDisplayCompositing_cold_1(&v11);
    return v11;
  }
}

void disposeSetAllowsDisplayCompositingContext(id *a1)
{
  if (*a1)
  {
  }

  free(a1);
}

uint64_t FBLSupportAppendDeferredTransactionChangeToSetPreferredCADynamicRange(const void *a1, const void *a2, const void *a3, uint64_t a4)
{
  v8 = malloc_type_malloc(0x10uLL, 0xE0040D30581F4uLL);
  if (v8)
  {
    v9 = v8;
    if (a2)
    {
      v10 = CFRetain(a2);
    }

    else
    {
      v10 = 0;
    }

    *v9 = v10;
    if (a3)
    {
      v11 = CFRetain(a3);
    }

    else
    {
      v11 = 0;
    }

    v9[1] = v11;

    return FigDeferredTransactionAppendChangeWithCallback(a1, 1, a4, v9, disposeSetPreferredCADynamicRangeContext, copyDescriptionForSetAllowsDisplayCompositingContext, setPreferredCADynamicRangeForFigCALayer);
  }

  else
  {
    FBLSupportAppendDeferredTransactionChangeToSetPreferredCADynamicRange_cold_1(&v13);
    return v13;
  }
}

void disposeSetPreferredCADynamicRangeContext(id *a1)
{
  if (*a1)
  {
  }

  *a1 = 0;
  v2 = a1[1];
  if (v2)
  {
    CFRelease(v2);
  }

  free(a1);
}

uint64_t setPreferredCADynamicRangeForFigCALayer(uint64_t a1)
{
  if ([MEMORY[0x1E6979398] instancesRespondToSelector:NSSelectorFromString(&cfstr_Setpreferreddy.isa)])
  {
    [*a1 performSelector:NSSelectorFromString(&cfstr_Setpreferreddy.isa) withObject:*(a1 + 8)];
  }

  return 0;
}

uint64_t FBLSupportAppendDeferredTransactionChangeToSetGeometryFlipped(const void *a1, void *a2, char a3, uint64_t a4)
{
  v8 = malloc_type_malloc(0x10uLL, 0x1080040C20BADFCuLL);
  if (v8)
  {
    v9 = v8;
    *v8 = a2;
    *(v9 + 8) = a3;

    return FigDeferredTransactionAppendChangeWithCallback(a1, 1, a4, v9, disposeGeometryFlippedContext, copyDescriptionForSetGeometryFlippedContext, setGeometryFlippedForFigCALayer);
  }

  else
  {
    FBLSupportAppendDeferredTransactionChangeToSetGeometryFlipped_cold_1(&v11);
    return v11;
  }
}

void disposeGeometryFlippedContext(id *a1)
{
  if (*a1)
  {
  }

  free(a1);
}

uint64_t FigImageQueueGaugeXPCRemoteGetObjectID(uint64_t a1, void *a2)
{
  if (a1)
  {
    if (a2)
    {
      DerivedStorage = CMBaseObjectGetDerivedStorage();
      result = 0;
      *a2 = *DerivedStorage;
    }

    else
    {
      FigImageQueueGaugeXPCRemoteGetObjectID_cold_1(&v5);
      return v5;
    }
  }

  else
  {
    FigImageQueueGaugeXPCRemoteGetObjectID_cold_2(&v6);
    return v6;
  }

  return result;
}

uint64_t FigImageQueueGaugeXPCRemoteRetainCopiedImageQueueGauge(uint64_t a1, CFTypeRef *a2)
{
  if (!a1)
  {
    FigImageQueueGaugeXPCRemoteRetainCopiedImageQueueGauge_cold_2(&cf);
    return cf;
  }

  if (!a2)
  {
    FigImageQueueGaugeXPCRemoteRetainCopiedImageQueueGauge_cold_1(&cf);
    return cf;
  }

  v4 = FigXPCRemoteClientRetainCopiedObject();
  if (!v4)
  {
    cf = 0;
    FigImageQueueGaugeGetClassID();
    v4 = CMDerivedObjectCreate();
    v5 = 0;
    if (v4 || (*CMBaseObjectGetDerivedStorage() = a1, v4 = FigXPCRemoteClientAssociateObject(), v5 = cf, v4))
    {
      if (v5)
      {
        CFRelease(v5);
      }
    }

    else
    {
      v4 = 0;
      *a2 = cf;
    }
  }

  return v4;
}

uint64_t FigImageQueueGaugeXPCRemoteStartAsSubClient(uint64_t a1)
{
  if (gImageQueueGaugeRemoteClient)
  {
    FigImageQueueGaugeXPCRemoteStartAsSubClient_cold_1(&v3);
    return v3;
  }

  if (!a1)
  {
    FigImageQueueGaugeXPCRemoteStartAsSubClient_cold_2(&v3);
    return v3;
  }

  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 0x40000000;
  v2[2] = __FigImageQueueGaugeXPCRemoteStartAsSubClient_block_invoke;
  v2[3] = &__block_descriptor_tmp_12;
  v2[4] = a1;
  if (FigImageQueueGaugeXPCRemoteStartAsSubClient_onceToken == -1)
  {
    return 0;
  }

  dispatch_once(&FigImageQueueGaugeXPCRemoteStartAsSubClient_onceToken, v2);
  return 0;
}

__CFString *remoteXPCImageQueueGauge_CopyDebugDesc(const void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v3 = CFGetAllocator(a1);
  Mutable = CFStringCreateMutable(v3, 0);
  v5 = CFGetRetainCount(a1);
  CFStringAppendFormat(Mutable, 0, @"<FigImageQueueGaugeRemote(XPC) %p retainCount: %ld ObjectID: %016llx>", a1, v5, *DerivedStorage);
  return Mutable;
}

uint64_t remoteXPCImageQueueGauge_CopyProperty(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  CMBaseObjectGetDerivedStorage();
  v4 = FigXPCSendStdCopyPropertyMessage();
  FigXPCRemoteClientKillServerOnTimeout();
  return v4;
}

uint64_t remoteXPCImageQueueGauge_SetProperty(uint64_t a1, uint64_t a2, uint64_t a3)
{
  CMBaseObjectGetDerivedStorage();
  v3 = FigXPCSendStdSetPropertyMessage();
  FigXPCRemoteClientKillServerOnTimeout();
  return v3;
}

__CFString *streamReportingModeratorCopyDebugDescription()
{
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  CFStringAppendFormat(Mutable, 0, @"\tFigStreamReportingModerator : ");
  return Mutable;
}

uint64_t fsrm_copyEventKeyArray(int a1)
{
  MEMORY[0x19A8D3660](&fsrm_copyEventKeyArray_sCreateStaticKeyArrayFromEventKeysOnce, fsrm_createStaticDataStructuresFromEventKeys);
  v2 = 0;
  v3 = &qword_1ED4CA5D8;
  if (a1 <= 113)
  {
    if (a1 > 108)
    {
      if (a1 <= 110)
      {
        if (a1 == 109)
        {
          v3 = &qword_1ED4CA5E0;
        }

        else
        {
          v3 = &qword_1ED4CA5E8;
        }
      }

      else if (a1 == 111)
      {
        v3 = &qword_1ED4CA638;
      }

      else if (a1 == 112)
      {
        v3 = &qword_1ED4CA658;
      }

      else
      {
        v3 = &qword_1ED4CA660;
      }
    }

    else if (a1 <= 104)
    {
      if (a1 != 101)
      {
        if (a1 != 103)
        {
          return v2;
        }

        v3 = &qword_1ED4CA600;
      }
    }

    else
    {
      switch(a1)
      {
        case 'i':
          v3 = &qword_1ED4CA608;
          break;
        case 'j':
          v3 = &qword_1ED4CA5F8;
          break;
        case 'k':
          v3 = &qword_1ED4CA618;
          break;
        default:
          return v2;
      }
    }
  }

  else if (a1 <= 800)
  {
    if (a1 <= 200)
    {
      if (a1 == 114)
      {
        v3 = &qword_1ED4CA668;
      }

      else
      {
        if (a1 != 115)
        {
          return v2;
        }

        v3 = &qword_1ED4CA670;
      }
    }

    else
    {
      switch(a1)
      {
        case 201:
          v3 = &qword_1ED4CA5F0;
          break;
        case 202:
          v3 = &qword_1ED4CA610;
          break;
        case 800:
          v3 = &qword_1ED4CA640;
          break;
        default:
          return v2;
      }
    }
  }

  else if (a1 > 900)
  {
    if (a1 != 901)
    {
      if (a1 == 1001)
      {
        v3 = &qword_1ED4CA620;
      }

      else
      {
        if (a1 != 1002)
        {
          return v2;
        }

        v3 = &qword_1ED4CA628;
      }
    }
  }

  else
  {
    switch(a1)
    {
      case 801:
        v3 = &qword_1ED4CA648;
        break;
      case 802:
        v3 = &qword_1ED4CA650;
        break;
      case 900:
        v3 = &qword_1ED4CA630;
        break;
      default:
        return v2;
    }
  }

  v2 = *v3;
  if (*v3)
  {
    CFRetain(*v3);
  }

  return v2;
}

uint64_t fsrm_updateProcessMemoryAndCPUSession(uint64_t a1)
{
  v46 = *MEMORY[0x1E69E9840];
  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v17 = 0u;
  v2 = getpid();
  result = proc_pid_rusage(v2, 6, &v17);
  if (!result)
  {
    v4 = (*(a1 + 8) > 3u) | (2u >> (*(a1 + 8) & 0xF));
    v5 = v18;
    if (qword_1ED4CA5C8 != -1)
    {
      fsrm_updateProcessMemoryAndCPUSession_cold_1();
    }

    v6 = *&mach_absolute_time_to_s_tmscale * v5 / 1000000000.0;
    if ((v4 & 1) == 0)
    {
      v13 = *(a1 + 200);
      if (v13 != 0.0 && v6 > v13)
      {
        v14 = *(a1 + 168);
        v15 = *(a1 + 176);
        v16 = *(*(CMBaseObjectGetVTable() + 16) + 64);
        if (v16)
        {
          v16(v14, v15, 0x1F0B656D8, ((v6 - v13) * 1000.0));
        }
      }
    }

    v7 = *(&v21 + 1);
    v8 = *(a1 + 168);
    v9 = *(a1 + 176);
    VTable = CMBaseObjectGetVTable();
    v11 = *(VTable + 16);
    result = VTable + 16;
    v12 = *(v11 + 72);
    if (v12)
    {
      result = v12(v8, v9, 0x1F0B65658, v7 >> 10);
    }

    *(a1 + 200) = v6;
  }

  return result;
}

double __mach_absolute_time_to_s_block_invoke()
{
  info = 0;
  if (!mach_timebase_info(&info))
  {
    LODWORD(result) = info.numer;
    LODWORD(v1) = info.denom;
    result = *&result / v1;
    mach_absolute_time_to_s_tmscale = *&result;
  }

  return result;
}

uint64_t fsrm_addToSessionStatsCountValue(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 168);
  v6 = *(a1 + 176);
  VTable = CMBaseObjectGetVTable();
  v9 = *(VTable + 16);
  result = VTable + 16;
  v10 = *(v9 + 64);
  if (v10)
  {

    return v10(v5, v6, a2, a3);
  }

  return result;
}

uint64_t fsrm_setSessionEndReasonIfFatalError(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v44 = 1;
  if (!a3 || (v12 = *(a1 + 168), (v13 = *(*(CMBaseObjectGetVTable() + 16) + 144)) == 0) || (result = v13(v12, a2, a3, &v44), v44 == 1))
  {
    v42 = 0;
    v43 = 0;
    v41 = 0;
    v15 = *(a1 + 168);
    VTable = CMBaseObjectGetVTable();
    v17 = *(VTable + 16);
    result = VTable + 16;
    v18 = *(v17 + 144);
    if (v18)
    {
      result = v18(v15, a2, a4, &v43);
      if (!result)
      {
        v19 = *(a1 + 168);
        v20 = *(a1 + 176);
        v21 = v43;
        v22 = *(*(CMBaseObjectGetVTable() + 16) + 88);
        if (v22)
        {
          v22(v19, v20, 0x1F0B65B58, v21);
        }

        v23 = *(a1 + 168);
        v24 = CMBaseObjectGetVTable();
        v25 = *(v24 + 16);
        result = v24 + 16;
        v26 = *(v25 + 152);
        if (v26)
        {
          result = v26(v23, a2, a6, &v42);
          if (!result)
          {
            v27 = *(a1 + 168);
            v28 = *(a1 + 176);
            v29 = v42;
            v30 = CMBaseObjectGetVTable();
            v31 = *(v30 + 16);
            result = v30 + 16;
            v32 = *(v31 + 80);
            if (v32)
            {
              result = v32(v27, v28, 0x1F0B65B78, v29);
            }

            if (a5)
            {
              v33 = *(a1 + 168);
              v34 = *(*(CMBaseObjectGetVTable() + 16) + 152);
              if (v34)
              {
                (v34)(v33, a2, a5, &v41);
                v34 = v41;
              }

              v36 = *(a1 + 168);
              v35 = *(a1 + 176);
              if (v34)
              {
                v37 = v34;
              }

              else
              {
                v37 = @"CoreMediaErrorDomain";
              }

              v38 = CMBaseObjectGetVTable();
              v39 = *(v38 + 16);
              result = v38 + 16;
              v40 = *(v39 + 80);
              if (v40)
              {
                return v40(v36, v35, 0x1F0B65B98, v37);
              }
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t fsrm_getMaxArrayCount(uint64_t a1, CFArrayRef theArray)
{
  if (CFArrayGetCount(theArray) < 1)
  {
    return 0;
  }

  v4 = 0;
  v5 = 0;
  do
  {
    v9 = 0;
    v6 = *CFArrayGetValueAtIndex(theArray, v5);
    v7 = *(*(CMBaseObjectGetVTable() + 16) + 120);
    if (v7)
    {
      v7(a1, v6, &v9);
    }

    if (v4 <= v9)
    {
      v4 = v9;
    }

    ++v5;
  }

  while (v5 < CFArrayGetCount(theArray));
  return v4;
}

uint64_t OUTLINED_FUNCTION_9_7()
{

  return CMBaseObjectGetVTable();
}

uint64_t OUTLINED_FUNCTION_10_8()
{

  return CMBaseObjectGetVTable();
}

Float64 OUTLINED_FUNCTION_11_8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, CMTime *time, uint64_t a12, __int128 a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, __int128 timea, uint64_t time_16, uint64_t a20, __int128 a21, uint64_t a22)
{
  timea = a21;
  time_16 = a22;

  return CMTimeGetSeconds(&timea);
}

uint64_t OUTLINED_FUNCTION_12_6()
{

  return CMBaseObjectGetVTable();
}

uint64_t OUTLINED_FUNCTION_13_5@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{

  return fsrm_addToSessionStatsCountValue(v2, a1, v3 * a2);
}

uint64_t OUTLINED_FUNCTION_14_6()
{

  return CMBaseObjectGetVTable();
}

uint64_t OUTLINED_FUNCTION_18_5()
{

  return CMBaseObjectGetVTable();
}

uint64_t PIQCopyPerformanceDictionaryForInstanceStatistics(const __CFAllocator *a1, int *a2, __CFDictionary **a3)
{
  value = 0;
  v6 = *MEMORY[0x1E695E480];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  FigCFDictionarySetInt32();
  FigCFDictionarySetInt32();
  FigCFDictionarySetInt32();
  FigCFDictionarySetInt32();
  if (*a2)
  {
    if (*a2 >= 100)
    {
      v8 = 100;
    }

    else
    {
      v8 = *a2;
    }

    piqCopyArrayOfMilliseconds(a1, v8, a2 + 6, &value);
    v9 = value;
    if (!v10)
    {
      CFDictionarySetValue(Mutable, @"DisplayTimesOfFramesDroppedFromImageQueue", value);
    }

    if (v9)
    {
      CFRelease(v9);
      value = 0;
    }
  }

  FigCFDictionarySetInt32();
  FigCFDictionarySetInt32();
  FigCFDictionarySetInt32();
  FigCFDictionarySetInt32();
  FigCFDictionarySetInt32();
  FigCFDictionarySetInt32();
  FigCFDictionarySetInt32();
  FigCFDictionarySetInt32();
  FigCFDictionarySetInt32();
  if (a2[5])
  {
    FigCFDictionarySetDouble();
  }

  if (a2[4])
  {
    FigCFDictionarySetInt32();
  }

  if (a2[224])
  {
    FigCFDictionarySetInt32();
  }

  v11 = a2[4];
  if (v11)
  {
    if (v11 >= 100)
    {
      v12 = 100;
    }

    else
    {
      v12 = a2[4];
    }

    piqCopyArrayOfMilliseconds(a1, v12, a2 + 106, &value);
    v13 = value;
    if (!v14)
    {
      CFDictionarySetValue(Mutable, @"DisplayTimesOfFramesConsumedAtLeast16msLate", value);
    }

    if (v13)
    {
      CFRelease(v13);
    }
  }

  v15 = 0;
  LODWORD(v16) = 0;
  do
  {
    if (a2[v15 + 215])
    {
      v16 = (v15 + 2);
    }

    else
    {
      v16 = v16;
    }

    ++v15;
  }

  while (v15 != 9);
  if (v16 >= 2)
  {
    v17 = CFArrayCreateMutable(v6, (v16 - 1), MEMORY[0x1E695E9C0]);
    v18 = a2 + 215;
    v19 = v16 - 1;
    do
    {
      ++v18;
      FigCFArrayAppendInt32();
      --v19;
    }

    while (v19);
    CFDictionarySetValue(Mutable, @"DisplayCountHistogram", v17);
    if (v17)
    {
      CFRelease(v17);
    }
  }

  *a3 = Mutable;
  return 0;
}

void piqCopyArrayOfMilliseconds(const __CFAllocator *a1, int a2, int *a3, CFArrayRef *a4)
{
  v9 = a2;
  v10 = malloc_type_calloc(8uLL, a2, 0x85C48114uLL);
  if (v10)
  {
    v11 = v10;
    if (a2 < 1)
    {
LABEL_6:
      v17 = CFArrayCreate(a1, v11, v9, MEMORY[0x1E695E9C0]);
      *a4 = v17;
      if (!v17)
      {
        FigSignalErrorAtGM("%s signalled err=%d at <>:%d", 0, 4294967188, "(Fig)", 220, v4);
      }
    }

    else
    {
      v12 = *MEMORY[0x1E695E480];
      v13 = v10;
      v14 = v9;
      while (1)
      {
        v15 = *a3++;
        valuePtr = v15 * 0.001;
        v16 = CFNumberCreate(v12, kCFNumberDoubleType, &valuePtr);
        *v13 = v16;
        if (!v16)
        {
          break;
        }

        ++v13;
        if (!--v14)
        {
          goto LABEL_6;
        }
      }

      FigSignalErrorAtGM("%s signalled err=%d at <>:%d", 0, 4294967188, "(Fig)", 213, v4);
    }

    if (a2 >= 1)
    {
      v18 = v11;
      do
      {
        if (*v18)
        {
          CFRelease(*v18);
        }

        ++v18;
        --v9;
      }

      while (v9);
    }

    free(v11);
  }

  else
  {

    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", 0, 4294967188, "(Fig)", 205, v4);
  }
}

void FigMutableCompositionServerStart(uint64_t a1)
{
  if (FigServer_IsMediaparserd())
  {
    fig_log_get_emitter();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", 1, HandleMutableCompositionMessage, 0);
  }

  else
  {
    FigServer_IsMediaplaybackd();
    FigXPCServerStart();
  }
}

uint64_t LookupMutableCompositionByObjectIDForConnection(uint64_t a1, uint64_t a2, CFTypeRef *a3)
{
  v3 = FigXPCServerLookupAndRetainAssociatedObject();
  if (v3)
  {
    return v3;
  }

  LookupMutableCompositionByObjectIDForConnection_cold_1(&v6);
  return v6;
}

uint64_t HandleMutableCompositionDeleteTrackMessage(uint64_t a1, xpc_object_t xdict)
{
  int64 = xpc_dictionary_get_int64(xdict, "TrackID");
  v4 = *(*(CMBaseObjectGetVTable() + 16) + 40);
  if (!v4)
  {
    return 4294954514;
  }

  return v4(a1, int64);
}

uint64_t HandleMutableCompositionSetTrackEditListMessage(uint64_t a1, uint64_t a2, xpc_object_t xdict)
{
  length = 0;
  int64 = xpc_dictionary_get_int64(xdict, "TrackID");
  v7 = xpc_dictionary_get_int64(xdict, "EditCount");
  if (v7 >= 1)
  {
    data = xpc_dictionary_get_data(xdict, "EditListData", &length);
    if (data)
    {
      if (length)
      {
        v9 = data;
        v10 = malloc_type_calloc(v7, 0x6CuLL, 0x1060040CB727B4DuLL);
        if (v10)
        {
          v11 = v10;
          FigRemote_CreateEditArrayFromData(v9, length, *MEMORY[0x1E695E480], v7, v10);
          if (v12)
          {
            v19 = v12;
            goto LABEL_17;
          }

          v13 = 96;
          v14 = v7;
          while (1)
          {
            v15 = *&v11[v13];
            if (v15)
            {
              v16 = *(a2 + 32);
              v23[0] = *(a2 + 16);
              v23[1] = v16;
              v17 = mutableCompositionServer_checkSourceURLAccess(v15, v23);
              if (v17)
              {
                break;
              }
            }

            v13 += 108;
            if (!--v14)
            {
              goto LABEL_12;
            }
          }

          v19 = v17;
LABEL_16:
          if (v7 < 1)
          {
LABEL_21:
            free(v11);
            return v19;
          }

LABEL_17:
          v20 = 96;
          do
          {
            v21 = *&v11[v20];
            if (v21)
            {
              CFRelease(v21);
            }

            v20 += 108;
            --v7;
          }

          while (v7);
          goto LABEL_21;
        }

        HandleMutableCompositionSetTrackEditListMessage_cold_1(v23);
      }

      else
      {
        HandleMutableCompositionSetTrackEditListMessage_cold_2(v23);
      }
    }

    else
    {
      HandleMutableCompositionSetTrackEditListMessage_cold_3(v23);
    }

    return LODWORD(v23[0]);
  }

  v11 = 0;
LABEL_12:
  v18 = *(*(CMBaseObjectGetVTable() + 16) + 48);
  if (v18)
  {
    v19 = v18(a1, int64, v7, v11);
    if (!v11)
    {
      return v19;
    }

    goto LABEL_16;
  }

  v19 = 4294954514;
  if (v11)
  {
    goto LABEL_16;
  }

  return v19;
}

uint64_t HandleMutableCompositionInsertEmptyTrackSegmentMessage(uint64_t a1, xpc_object_t xdict)
{
  v7 = *MEMORY[0x1E6960CC0];
  v8 = *(MEMORY[0x1E6960CC0] + 16);
  v6 = *MEMORY[0x1E6960CC0];
  int64 = xpc_dictionary_get_int64(xdict, "TrackID");
  FigXPCMessageGetCMTime();
  FigXPCMessageGetCMTime();
  v4 = *(*(CMBaseObjectGetVTable() + 16) + 104);
  if (!v4)
  {
    return 4294954514;
  }

  v11 = v7;
  v12 = v8;
  v9 = v6;
  v10 = v8;
  return v4(a1, int64, &v11, &v9);
}

uint64_t HandleMutableCompositionInsertEmptySegmentMessage(uint64_t a1, uint64_t a2)
{
  v6 = *MEMORY[0x1E6960CC0];
  v7 = *(MEMORY[0x1E6960CC0] + 16);
  v5 = *MEMORY[0x1E6960CC0];
  FigXPCMessageGetCMTime();
  FigXPCMessageGetCMTime();
  v3 = *(*(CMBaseObjectGetVTable() + 16) + 112);
  if (!v3)
  {
    return 4294954514;
  }

  v10 = v6;
  v11 = v7;
  v8 = v5;
  v9 = v7;
  return v3(a1, &v10, &v8);
}

uint64_t HandleMutableCompositionDeleteTrackSegmentMessage(uint64_t a1, xpc_object_t xdict)
{
  v7 = *MEMORY[0x1E6960CC0];
  v8 = *(MEMORY[0x1E6960CC0] + 16);
  v6 = *MEMORY[0x1E6960CC0];
  int64 = xpc_dictionary_get_int64(xdict, "TrackID");
  FigXPCMessageGetCMTime();
  FigXPCMessageGetCMTime();
  v4 = *(*(CMBaseObjectGetVTable() + 16) + 120);
  if (!v4)
  {
    return 4294954514;
  }

  v11 = v7;
  v12 = v8;
  v9 = v6;
  v10 = v8;
  return v4(a1, int64, &v11, &v9);
}

uint64_t HandleMutableCompositionDeleteSegmentMessage(uint64_t a1, uint64_t a2)
{
  v6 = *MEMORY[0x1E6960CC0];
  v7 = *(MEMORY[0x1E6960CC0] + 16);
  v5 = *MEMORY[0x1E6960CC0];
  FigXPCMessageGetCMTime();
  FigXPCMessageGetCMTime();
  v3 = *(*(CMBaseObjectGetVTable() + 16) + 128);
  if (!v3)
  {
    return 4294954514;
  }

  v10 = v6;
  v11 = v7;
  v8 = v5;
  v9 = v7;
  return v3(a1, &v10, &v8);
}

uint64_t HandleMutableCompositionScaleTrackSegmentMessage(uint64_t a1, xpc_object_t xdict)
{
  v8 = *MEMORY[0x1E6960CC0];
  v9 = *(MEMORY[0x1E6960CC0] + 16);
  v7 = *MEMORY[0x1E6960CC0];
  v6 = *MEMORY[0x1E6960CC0];
  int64 = xpc_dictionary_get_int64(xdict, "TrackID");
  FigXPCMessageGetCMTime();
  FigXPCMessageGetCMTime();
  FigXPCMessageGetCMTime();
  v4 = *(*(CMBaseObjectGetVTable() + 16) + 136);
  if (!v4)
  {
    return 4294954514;
  }

  v14 = v8;
  v15 = v9;
  v12 = v7;
  v13 = v9;
  v10 = v6;
  v11 = v9;
  return v4(a1, int64, &v14, &v12, &v10);
}

uint64_t HandleMutableCompositionScaleSegmentMessage(uint64_t a1, uint64_t a2)
{
  v7 = *MEMORY[0x1E6960CC0];
  v8 = *(MEMORY[0x1E6960CC0] + 16);
  v6 = *MEMORY[0x1E6960CC0];
  v5 = *MEMORY[0x1E6960CC0];
  FigXPCMessageGetCMTime();
  FigXPCMessageGetCMTime();
  FigXPCMessageGetCMTime();
  v3 = *(*(CMBaseObjectGetVTable() + 16) + 144);
  if (!v3)
  {
    return 4294954514;
  }

  v13 = v7;
  v14 = v8;
  v11 = v6;
  v12 = v8;
  v9 = v5;
  v10 = v8;
  return v3(a1, &v13, &v11, &v9);
}

uint64_t HandleMutableCompositionDeferTracksChangedNotificationsMessage(uint64_t a1)
{
  v2 = *(*(CMBaseObjectGetVTable() + 16) + 152);
  if (!v2)
  {
    return 4294954514;
  }

  return v2(a1);
}

uint64_t HandleMutableCompositionPostDeferredTracksChangedNotificationMessage(uint64_t a1)
{
  v2 = *(*(CMBaseObjectGetVTable() + 16) + 160);
  if (!v2)
  {
    return 4294954514;
  }

  return v2(a1);
}

void DisposeServedMutableCompositionState(const void **a1)
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

    v4 = a1[6];
    if (v4)
    {
      os_release(v4);
    }

    free(a1);
  }
}

uint64_t mutableCompositionServer_checkSourceURLAccess(uint64_t a1, _OWORD *a2)
{
  v3 = 0;
  result = _CFURLIsFileURL();
  if (result)
  {
    FigCFURLGetFileStats();
    return 0;
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_1_26()
{

  return CMBaseObjectGetVTable();
}

uint64_t vcp_timedSample_Register()
{
  result = _CFRuntimeRegisterClass();
  sVCPTimedSampleClassID = result;
  return result;
}

double FigVCPTimedSampleCreateWithPixelBuffer(__int128 *a1, CFTypeRef cf, uint64_t *a3)
{
  if (!cf)
  {
    v8 = 3;
    goto LABEL_5;
  }

  v7 = CFGetTypeID(cf);
  if (v7 == CVPixelBufferGetTypeID())
  {
    v8 = 0;
LABEL_5:
    v10 = *a1;
    v11 = *(a1 + 2);
    vcp_timedSample_createCommon(&v10, cf, v8, a3);
    return result;
  }

  if (a3)
  {
    *a3 = 0;
  }

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", 0, 4294947904, "(Fig)", 190, v3);
}

uint64_t vcp_timedSample_createCommon(__int128 *a1, const void *a2, int a3, uint64_t *a4)
{
  if ((*(a1 + 3) & 0x1D) == 1)
  {
    MEMORY[0x19A8D3660](&FigVCPTimedSampleGetTypeID_once, vcp_timedSample_Register);
    Instance = _CFRuntimeCreateInstance();
    v9 = Instance;
    if (Instance)
    {
      v10 = *a1;
      *(Instance + 32) = *(a1 + 2);
      *(Instance + 16) = v10;
      if (a2)
      {
        v11 = CFRetain(a2);
      }

      else
      {
        v11 = 0;
      }

      v12 = 0;
      *(v9 + 40) = v11;
      *(v9 + 48) = a3;
    }

    else
    {
      vcp_timedSample_createCommon_cold_2(&v15);
      v12 = v15;
    }
  }

  else
  {
    vcp_timedSample_createCommon_cold_1(&v14);
    v9 = 0;
    v12 = v14;
  }

  if (a4)
  {
    *a4 = v9;
  }

  else if (v9)
  {
    CFRelease(v9);
  }

  return v12;
}

double FigVCPTimedSampleCreateWithSampleBuffer(uint64_t a1, CFTypeRef cf, uint64_t *a3)
{
  if (!cf)
  {
    v8 = 3;
    goto LABEL_5;
  }

  v7 = CFGetTypeID(cf);
  if (v7 == CMSampleBufferGetTypeID())
  {
    v8 = 1;
LABEL_5:
    v10 = *a1;
    v11 = *(a1 + 16);
    vcp_timedSample_createCommon(&v10, cf, v8, a3);
    return result;
  }

  if (a3)
  {
    *a3 = 0;
  }

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", 0, 4294947904, "(Fig)", 207, v3);
}

double FigVCPTimedSampleCreateWithTaggedBufferGroup(uint64_t a1, CFTypeRef cf, uint64_t *a3)
{
  if (!cf)
  {
    v8 = 3;
    goto LABEL_5;
  }

  v7 = CFGetTypeID(cf);
  if (v7 == CMTaggedBufferGroupGetTypeID())
  {
    v8 = 2;
LABEL_5:
    v10 = *a1;
    v11 = *(a1 + 16);
    vcp_timedSample_createCommon(&v10, cf, v8, a3);
    return result;
  }

  if (a3)
  {
    *a3 = 0;
  }

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", 0, 4294947904, "(Fig)", 224, v3);
}

uint64_t FigVCPTimedSampleCreateWithNULL(uint64_t a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = *(a1 + 16);
  return vcp_timedSample_createCommon(&v3, 0, 3, a2);
}

double FigVCPTimedSampleGetPTS@<D0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, uint64_t a4@<X2>)
{
  v4 = MEMORY[0x1E6960C70];
  *a3 = *MEMORY[0x1E6960C70];
  *(a3 + 16) = *(v4 + 16);
  if (!result)
  {
    return FigVCPTimedSampleGetPTS_cold_1(result, a2, a4);
  }

  v5 = *(result + 16);
  *a3 = v5;
  *(a3 + 16) = *(result + 32);
  return *&v5;
}

uint64_t FigVCPTimedSampleGetPixelBuffer(uint64_t a1, void *a2)
{
  if (a1)
  {
    v3 = *(a1 + 40);
    if (!v3 || !*(a1 + 48))
    {
      result = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_5;
    }

    FigVCPTimedSampleGetPixelBuffer_cold_1(&v5);
    result = v5;
  }

  else
  {
    FigVCPTimedSampleGetPixelBuffer_cold_2(&v6);
    result = v6;
  }

  if (a2 && result)
  {
    v3 = 0;
LABEL_5:
    *a2 = v3;
  }

  return result;
}

uint64_t FigVCPTimedSampleGetSampleBuffer(uint64_t a1, void *a2)
{
  if (a1)
  {
    v3 = *(a1 + 40);
    if (!v3 || *(a1 + 48) == 1)
    {
      result = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_5;
    }

    FigVCPTimedSampleGetSampleBuffer_cold_1(&v5);
    result = v5;
  }

  else
  {
    FigVCPTimedSampleGetSampleBuffer_cold_2(&v6);
    result = v6;
  }

  if (a2 && result)
  {
    v3 = 0;
LABEL_5:
    *a2 = v3;
  }

  return result;
}

uint64_t FigVCPTimedSampleGetTaggedBufferGroup(uint64_t a1, void *a2)
{
  if (a1)
  {
    v3 = *(a1 + 40);
    if (!v3 || *(a1 + 48) == 2)
    {
      result = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_5;
    }

    FigVCPTimedSampleGetTaggedBufferGroup_cold_1(&v5);
    result = v5;
  }

  else
  {
    FigVCPTimedSampleGetTaggedBufferGroup_cold_2(&v6);
    result = v6;
  }

  if (a2 && result)
  {
    v3 = 0;
LABEL_5:
    *a2 = v3;
  }

  return result;
}

BOOL FigVCPTimedSampleContainsNULL(_BOOL8 result)
{
  if (result)
  {
    return *(result + 48) == 3;
  }

  return result;
}

BOOL FigVCPTimedSampleContainsPixelBuffer(_BOOL8 result)
{
  if (result)
  {
    return *(result + 48) == 0;
  }

  return result;
}

BOOL FigVCPTimedSampleContainsSampleBuffer(_BOOL8 result)
{
  if (result)
  {
    return *(result + 48) == 1;
  }

  return result;
}

BOOL FigVCPTimedSampleContainsTaggedBufferGroup(_BOOL8 result)
{
  if (result)
  {
    return *(result + 48) == 2;
  }

  return result;
}

double FigVCPGetPTSInTimedSampleArrayAtIndex@<D0>(uint64_t a2@<X8>)
{
  ValueAtIndex = FigCFArrayGetValueAtIndex();
  v6 = MEMORY[0x1E6960C70];
  *a2 = *MEMORY[0x1E6960C70];
  *(a2 + 16) = *(v6 + 16);
  if (!ValueAtIndex)
  {
    return FigVCPTimedSampleGetPTS_cold_1(0, v4, v5);
  }

  v7 = *(ValueAtIndex + 16);
  *a2 = v7;
  *(a2 + 16) = *(ValueAtIndex + 32);
  return *&v7;
}

double vcp_timedSample_Init(uint64_t a1)
{
  *(a1 + 48) = 0;
  result = 0.0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  return result;
}

__n128 vcp_timedSample_Finalize(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    CFRelease(v2);
    *(a1 + 40) = 0;
  }

  v3 = MEMORY[0x1E6960C70];
  result = *MEMORY[0x1E6960C70];
  *(a1 + 16) = *MEMORY[0x1E6960C70];
  *(a1 + 32) = *(v3 + 16);
  return result;
}

uint64_t vcp_timedSample_Equal(char *cf, uint64_t a2)
{
  if (cf == a2)
  {
    return 1;
  }

  v13 = v2;
  v14 = v3;
  if (!cf)
  {
    return 0;
  }

  if (!a2)
  {
    return 0;
  }

  v6 = CFGetTypeID(cf);
  MEMORY[0x19A8D3660](&FigVCPTimedSampleGetTypeID_once, vcp_timedSample_Register);
  if (v6 != sVCPTimedSampleClassID)
  {
    return 0;
  }

  v7 = CFGetTypeID(a2);
  MEMORY[0x19A8D3660](&FigVCPTimedSampleGetTypeID_once, vcp_timedSample_Register);
  if (v7 != sVCPTimedSampleClassID)
  {
    return 0;
  }

  time1 = *(cf + 16);
  v11 = *(a2 + 16);
  if (CMTimeCompare(&time1, &v11))
  {
    return 0;
  }

  v8 = *(cf + 12);
  v9 = *(a2 + 48);
  if (v8 == 3)
  {
    if (v9 != 3)
    {
      return 0;
    }
  }

  else if (v8 != v9 || !FigCFEqual())
  {
    return 0;
  }

  return 1;
}

CFStringRef vcp_timedSample_CopyFormattingDesc(uint64_t a1, CFDictionaryRef formatOptions)
{
  if (a1)
  {
    v4 = *(a1 + 48);
    if (v4 > 3)
    {
      v5 = "Unknown";
    }

    else
    {
      v5 = off_1E747EB70[v4];
    }

    v8 = *MEMORY[0x1E695E480];
    time = *(a1 + 16);
    Seconds = CMTimeGetSeconds(&time);
    return CFStringCreateWithFormat(v8, formatOptions, @"<FigVCPTimedSample: %p> PTS %1.3f %s <%p>", a1, *&Seconds, v5, *(a1 + 40));
  }

  else
  {
    v6 = *MEMORY[0x1E695E480];

    return CFStringCreateWithFormat(v6, formatOptions, @"NULL FigVCPTimedSample");
  }
}

uint64_t OUTLINED_FUNCTION_1_27(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, CMTime *time2, uint64_t a6, CMTime *time1, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, __int128 time2a, uint64_t time2_16, uint64_t a15, uint64_t time1a)
{
  time2a = *v16;
  time2_16 = *(v16 + 16);

  return CMTimeCompare(&time1a, &time2a);
}

uint64_t FigManifoldStartServer()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2000000000;
  v6 = 0;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = __FigManifoldStartServer_block_invoke;
  block[3] = &unk_1E747EB98;
  block[4] = &v3;
  if (FigManifoldStartServer_sFigManifoldServerSetupOnce != -1)
  {
    dispatch_once(&FigManifoldStartServer_sFigManifoldServerSetupOnce, block);
  }

  v0 = *(v4 + 6);
  _Block_object_dispose(&v3, 8);
  return v0;
}

void __FigManifoldStartServer_block_invoke(uint64_t a1)
{
  AllocatorForMedia = FigGetAllocatorForMedia();
  Mutable = CFDictionaryCreateMutable(AllocatorForMedia, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (Mutable)
  {
    v4 = Mutable;
    FigCFDictionarySetInt32();
    *(*(*(a1 + 32) + 8) + 24) = FigXPCServerStart();
    CFRelease(v4);
  }

  else
  {
    __FigManifoldStartServer_block_invoke_cold_1(a1 + 32);
  }
}

void manifoldServer_companionDestructor(CFTypeRef cf)
{
  if (cf)
  {
    CFRelease(cf);
  }
}

uint64_t __FigManifoldServerCompanionGetTypeID_block_invoke()
{
  result = _CFRuntimeRegisterClass();
  qword_1ED4CA688 = result;
  return result;
}

void manifoldServerCompanion_finalize(void *a1)
{
  FigManifoldGetFigBaseObject();
  if (v2)
  {
    v3 = v2;
    v4 = *(*(CMBaseObjectGetVTable() + 8) + 24);
    if (v4)
    {
      v4(v3);
    }
  }

  v5 = a1[2];
  if (v5)
  {
    a1[2] = 0;
    xpc_release(v5);
  }

  v6 = a1[8];
  if (v6)
  {
    a1[8] = 0;
    xpc_release(v6);
  }

  v7 = a1[4];
  if (v7)
  {
    CFRelease(v7);
    a1[4] = 0;
  }

  v8 = a1[5];
  if (v8)
  {
    CFRelease(v8);
    a1[5] = 0;
  }

  v9 = a1[7];
  if (v9)
  {
    CFRelease(v9);
    a1[7] = 0;
  }

  v10 = a1[11];
  if (v10)
  {
    CFRelease(v10);
    a1[11] = 0;
  }

  v11 = a1[9];
  if (v11)
  {
    CFRelease(v11);
    a1[9] = 0;
  }

  v12 = a1[10];
  if (v12)
  {
    CFRelease(v12);
    a1[10] = 0;
  }

  v13 = a1[12];
  if (v13)
  {
    CFRelease(v13);
    a1[12] = 0;
  }

  v14 = a1[13];
  if (v14)
  {
    CFRelease(v14);
    a1[13] = 0;
  }

  v15 = a1[14];
  if (v15)
  {
    CFRelease(v15);
    a1[14] = 0;
  }

  v16 = a1[6];
  if (v16)
  {
    os_release(v16);
    a1[6] = 0;
  }
}

void manifoldServer_copyPendingCallbacksIntoReply(void *a1, uint64_t a2)
{
  v2 = *(a2 + 64);
  if (v2)
  {
    xpc_dictionary_set_value(a1, "pendingCallbacks", v2);
    v4 = *(a2 + 64);
    if (v4)
    {
      *(a2 + 64) = 0;

      xpc_release(v4);
    }
  }
}

void OUTLINED_FUNCTION_5_15()
{
  v3 = *(v1 + 64);

  xpc_array_append_value(v3, v0);
}

BOOL FigMediaPlaylistUtilityIterateMedia(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  v7 = *a2;
  if (*a2)
  {
    v8 = *a3;
    do
    {
      if (v8)
      {
        NextSegment = FigMediaSegmentSpecifierGetNextSegment(v8);
        if (NextSegment)
        {
          break;
        }
      }

      else
      {
        FigMediaSegmentSpecifierGetPartialSegments(v7);
        NextSegment = FigCFArrayGetFirstValue();
        if (NextSegment)
        {
          break;
        }
      }

      NextSegment = FigMediaSegmentSpecifierGetNextSegment(v7);
      v7 = NextSegment;
      if (!NextSegment)
      {
        break;
      }

      NextSegment = FigMediaSegmentSpecifierGetPartialSegments(NextSegment);
      if (!NextSegment)
      {
        break;
      }

      Count = CFArrayGetCount(NextSegment);
      v8 = 0;
      NextSegment = 0;
    }

    while (Count);
  }

  else
  {
    FigMediaPlaylistGetMediaSegmentSpecifiers(a1);
    NextSegment = FigCFArrayGetFirstValue();
    v7 = NextSegment;
    if (NextSegment)
    {
      FigMediaSegmentSpecifierGetPartialSegments(NextSegment);
      NextSegment = FigCFArrayGetFirstValue();
    }
  }

  *a2 = v7;
  *a3 = NextSegment;
  if (NextSegment)
  {
    v11 = NextSegment;
  }

  else
  {
    v11 = v7;
  }

  *a4 = v11;
  return v7 != 0;
}