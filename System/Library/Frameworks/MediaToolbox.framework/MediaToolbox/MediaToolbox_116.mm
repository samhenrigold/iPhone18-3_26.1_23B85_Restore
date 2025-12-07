void __fbaprp_startTimebase_block_invoke(uint64_t a1)
{
  OUTLINED_FUNCTION_66_6(a1);
  if (!**(a1 + 32) && *(*(CMBaseObjectGetVTable() + 16) + 8))
  {
    v2 = OUTLINED_FUNCTION_266();
    v3(v2);
  }

  FigSimpleMutexUnlock();
  v4 = *(a1 + 40);
  if (v4)
  {

    CFRelease(v4);
  }
}

void fbaprp_timebaseRateChangedCallback(uint64_t a1, const void *a2, uint64_t a3, uint64_t a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 248) == a4)
  {
    v7 = DerivedStorage;
    if (a2)
    {
      CFRetain(a2);
    }

    v8 = *(v7 + 40);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 0x40000000;
    block[2] = __fbaprp_timebaseRateChangedCallback_block_invoke;
    block[3] = &__block_descriptor_tmp_70;
    block[4] = v7;
    block[5] = a4;
    block[6] = a2;
    dispatch_async(v8, block);
  }
}

uint64_t fbaprp_setTimerForOverlapRangeOutroStart(uint64_t a1)
{
  v18 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  cf = 0;
  if (!*(DerivedStorage + 416))
  {
    return 0;
  }

  if (*(DerivedStorage + 248) && FigCFDictionaryGetBooleanValue() == *MEMORY[0x1E695E4D0])
  {
    if (*(DerivedStorage + 408))
    {
      fbaprp_stopTimerForOverlapRangeOutroStart(a1);
    }

    DictionaryValue = FigCFDictionaryGetDictionaryValue();
    v3 = fbaprp_copyTimeAdjustedToContinuousOrSongTimeline(a1, 1, DictionaryValue, &cf);
    if (v3 || (v6 = cf) == 0)
    {
      v6 = DictionaryValue;
    }

    CMTimeMakeFromDictionary(&fireTime, v6);
    value = fireTime.value;
    flags = fireTime.flags;
    timescale = fireTime.timescale;
    epoch = fireTime.epoch;
    if ((fireTime.flags & 1) != 0 && *(DerivedStorage + 248))
    {
      v9 = FigCFWeakReferenceHolderCreateWithReferencedObject();
      if (v9 && (v10 = v9, v11 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 1uLL, *(DerivedStorage + 40)), (*(DerivedStorage + 408) = v11) != 0))
      {
        dispatch_set_context(v11, v10);
        dispatch_source_set_timer(*(DerivedStorage + 408), 0xFFFFFFFFFFFFFFFFLL, 0xFFFFFFFFFFFFFFFFLL, 0);
        dispatch_source_set_event_handler_f(*(DerivedStorage + 408), fbaprp_timebaseOutroStartTimeReachedCallback);
        dispatch_source_set_cancel_handler_f(*(DerivedStorage + 408), FigCFRelease_4);
        dispatch_resume(*(DerivedStorage + 408));
        CMTimebaseAddTimerDispatchSource(*(DerivedStorage + 248), *(DerivedStorage + 408));
        v12 = *(DerivedStorage + 248);
        v13 = *(DerivedStorage + 408);
        fireTime.value = value;
        fireTime.timescale = timescale;
        fireTime.flags = flags;
        fireTime.epoch = epoch;
        CMTimebaseSetTimerDispatchSourceNextFireTime(v12, v13, &fireTime, 1u);
      }

      else
      {
        v3 = 4294954443;
      }
    }
  }

  else
  {
    v3 = 0;
  }

  if (cf)
  {
    CFRelease(cf);
  }

  return v3;
}

void __fbaprp_timebaseRateChangedCallback_block_invoke(void *a1)
{
  v62 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_66_6(a1);
  v4 = a1[4];
  if (!*v4)
  {
    v5 = *(v4 + 248);
    if (a1[5] == v5)
    {
      EffectiveRate = CMTimebaseGetEffectiveRate(v5);
      v7 = a1[4];
      if (*(v7 + 232))
      {
        v8 = EffectiveRate;
        if (EffectiveRate != 0.0)
        {
          fabaprp_getOffsetToBAOTimeline(&time);
          *(v7 + 184) = time;
          if (dword_1EAF17188)
          {
            OUTLINED_FUNCTION_147();
            v16 = OUTLINED_FUNCTION_126(qword_1EAF17180, v9, v10, v11, v12, v13, v14, v15, v41, v43, v46, *v48, v48[2], v48[3], v48[4]);
            OUTLINED_FUNCTION_86_2(v16, v17, v18, v19, v20, v21, v22, v23, v42, v44, v47, v49, v50, v51, v52);
            OUTLINED_FUNCTION_7_22();
            if (v2)
            {
              v24 = a1[6];
              if (v24)
              {
                v25 = (CMBaseObjectGetDerivedStorage() + 424);
              }

              else
              {
                v25 = "";
              }

              time = *(a1[4] + 184);
              v53 = 136315906;
              v54 = "fbaprp_timebaseRateChangedCallback_block_invoke";
              v55 = 2048;
              v56 = v24;
              v57 = 2082;
              v58 = v25;
              v59 = 2048;
              Seconds = CMTimeGetSeconds(&time);
              LODWORD(v45) = 42;
              OUTLINED_FUNCTION_65();
              _os_log_send_and_compose_impl(v26, v27, v28, v29, v30, v31, v1, v32, &v53, v45);
            }

            OUTLINED_FUNCTION_7();
            OUTLINED_FUNCTION_524(v33, v34, v35, v36, v37);
          }

          v38 = a1[4];
          *(v38 + 232) = 0;
          if ((*(v38 + 172) & 0x1D) != 1 || (v40 = fbaprp_synchronizeToTimebaseSetRateOnAudioChainGuts(a1[6], v8), v38 = a1[4], !v40))
          {
            *(v38 + 233) = 1;
          }
        }
      }
    }
  }

  FigSimpleMutexUnlock();
  v39 = a1[6];
  if (v39)
  {
    CFRelease(v39);
  }
}

void fbaprp_stopTimerForOverlapRangeOutroStart(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v2 = *(DerivedStorage + 248);
  if (v2)
  {
    v3 = *(DerivedStorage + 408);
    if (v3)
    {
      CMTimebaseRemoveTimerDispatchSource(v2, v3);
      v4 = *(DerivedStorage + 408);
      if (v4)
      {
        dispatch_source_cancel(*(DerivedStorage + 408));
        dispatch_release(v4);
      }

      *(DerivedStorage + 408) = 0;
    }
  }
}

uint64_t fbaprp_copyTimeAdjustedToContinuousOrSongTimeline(uint64_t a1, int a2, const __CFDictionary *a3, CFDictionaryRef *a4)
{
  HIDWORD(v65) = a2;
  v92 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  dictionaryRepresentation = 0;
  value = *MEMORY[0x1E6960C70];
  v8 = *(MEMORY[0x1E6960C70] + 12);
  timescale = *(MEMORY[0x1E6960C70] + 8);
  v9 = *(MEMORY[0x1E6960C70] + 16);
  v88 = value;
  v89 = timescale;
  *&v73.value = *MEMORY[0x1E6960C70];
  v73.epoch = v9;
  if (*DerivedStorage || !a3 || !a4)
  {
    OUTLINED_FUNCTION_44_12();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
    v14 = v62;
    goto LABEL_12;
  }

  FigSampleBufferProcessorGetFigBaseObject();
  v11 = v10;
  v12 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v12)
  {
    v14 = 4294954514;
LABEL_12:
    epoch = v9;
    flags = v8;
    goto LABEL_13;
  }

  v13 = *MEMORY[0x1E695E480];
  v14 = v12(v11, 0x1F0B311B8, *MEMORY[0x1E695E480], &dictionaryRepresentation);
  epoch = v9;
  flags = v8;
  if (!v14)
  {
    CMTimeMakeFromDictionary(&time1, dictionaryRepresentation);
    value = time1.value;
    timescale = time1.timescale;
    flags = time1.flags;
    epoch = time1.epoch;
    CMTimeMakeFromDictionary(&time1, a3);
    v88 = time1.value;
    v89 = time1.timescale;
    v14 = 4294954444;
    if (flags)
    {
      if (!HIDWORD(v65))
      {
        OUTLINED_FUNCTION_9_34();
        OUTLINED_FUNCTION_34_14();
        time2.epoch = epoch;
        v16 = CMTimeAdd(&v73, &time1, &time2);
        goto LABEL_28;
      }

      if (HIDWORD(v65) != 1)
      {
        goto LABEL_13;
      }

      OUTLINED_FUNCTION_9_34();
      OUTLINED_FUNCTION_34_14();
      time2.epoch = epoch;
      if ((CMTimeCompare(&time1, &time2) & 0x80000000) == 0)
      {
        OUTLINED_FUNCTION_9_34();
        OUTLINED_FUNCTION_34_14();
        time2.epoch = epoch;
        v16 = CMTimeSubtract(&v73, &time1, &time2);
LABEL_28:
        OUTLINED_FUNCTION_46_8(v16, v17, v18, v19, v20, v21, v22, v23, v24, v63, v65, epoch, v71, v25, v73.value);
        v14 = 0;
        *a4 = CMTimeCopyAsDictionary(v61, v13);
        goto LABEL_13;
      }

      v14 = 4294954444;
    }
  }

LABEL_13:
  if (dictionaryRepresentation)
  {
    CFRelease(dictionaryRepresentation);
  }

  if (dword_1EAF17188)
  {
    OUTLINED_FUNCTION_147();
    v33 = OUTLINED_FUNCTION_126(qword_1EAF17180, v26, v27, v28, v29, v30, v31, v32, v63, v65, epoch, v71, SBYTE2(v71), SBYTE3(v71), SBYTE4(v71));
    os_log_type_enabled(v33, BYTE3(v72));
    OUTLINED_FUNCTION_46();
    if (a3)
    {
      if (a1)
      {
        v34 = (CMBaseObjectGetDerivedStorage() + 424);
      }

      else
      {
        v34 = "";
      }

      OUTLINED_FUNCTION_9_34();
      v35.n128_f64[0] = CMTimeGetSeconds(&time1);
      v36 = v35.n128_u64[0];
      OUTLINED_FUNCTION_46_8(v37, v38, v39, v40, v41, v42, v43, v44, v35, v64, v66, v69, v72, v45, v73.value);
      Seconds = CMTimeGetSeconds(v46);
      time1.value = value;
      if (v67)
      {
        v48 = "song";
      }

      else
      {
        v48 = "continuous";
      }

      time1.timescale = timescale;
      time1.flags = flags;
      time1.epoch = v70;
      v49 = CMTimeGetSeconds(&time1);
      LODWORD(time2.value) = 136316930;
      *(&time2.value + 4) = "fbaprp_copyTimeAdjustedToContinuousOrSongTimeline";
      LOWORD(time2.flags) = 2048;
      *(&time2.flags + 2) = a1;
      HIWORD(time2.epoch) = 2082;
      v76 = v34;
      v77 = 2048;
      v78 = v36;
      v79 = 2048;
      v80 = Seconds;
      v81 = 2080;
      v82 = v48;
      v83 = 1024;
      v84 = v14;
      v85 = 2048;
      v86 = v49;
      OUTLINED_FUNCTION_10_3(v50, v51, &time1, v52, &dword_1962D5000, v53, v54, "<<<< FigBufferedAirPlayRP >>>> %s: [%p] %{public}s Adjusting from original time=%1.3f -> adjustedTime=%1.3f based on %s timeline with error=%d, cumulativeEndTime=%1.3f");
    }

    OUTLINED_FUNCTION_7();
    OUTLINED_FUNCTION_238_0(v55, v56, v57, v58, v59);
  }

  return v14;
}

void fbaprp_timebaseOutroStartTimeReachedCallback(uint64_t a1)
{
  v1 = FigCFWeakReferenceHolderCopyReferencedObject();
  if (v1)
  {
    v2 = v1;
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    CFRetain(v2);
    v4 = *(DerivedStorage + 40);
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 0x40000000;
    v5[2] = __fbaprp_timebaseOutroStartTimeReachedCallback_block_invoke;
    v5[3] = &__block_descriptor_tmp_73_1;
    v5[4] = DerivedStorage;
    v5[5] = v2;
    dispatch_async(v4, v5);
    CFRelease(v2);
  }
}

void __fbaprp_timebaseOutroStartTimeReachedCallback_block_invoke(uint64_t a1)
{
  OUTLINED_FUNCTION_66_6(a1);
  if (!**(a1 + 32))
  {
    if (dword_1EAF17188)
    {
      OUTLINED_FUNCTION_147();
      v11 = OUTLINED_FUNCTION_126(qword_1EAF17180, v4, v5, v6, v7, v8, v9, v10, v39, v41, v43, *v45, v45[2], v45[3], v45[4]);
      OUTLINED_FUNCTION_86_2(v11, v12, v13, v14, v15, v16, v17, v18, v40, v42, v44, v46, v47, v48, v49);
      OUTLINED_FUNCTION_7_22();
      if (v2)
      {
        if (*(a1 + 40))
        {
          CMBaseObjectGetDerivedStorage();
        }

        OUTLINED_FUNCTION_37_14();
        OUTLINED_FUNCTION_65();
        _os_log_send_and_compose_impl(v19, v20, v21, v22, v23, v24, v1, v25);
      }

      OUTLINED_FUNCTION_7();
      OUTLINED_FUNCTION_524(v26, v27, v28, v29, v30);
    }

    if (*(*(CMBaseObjectGetVTable() + 16) + 8))
    {
      v31 = OUTLINED_FUNCTION_266();
      v32(v31);
    }

    v33 = *(a1 + 32);
    v34 = *(v33 + 248);
    if (v34)
    {
      v35 = *(v33 + 408);
      if (v35)
      {
        CMTimebaseRemoveTimerDispatchSource(v34, v35);
        v36 = *(a1 + 32);
        v37 = *(v36 + 408);
        if (v37)
        {
          dispatch_source_cancel(*(v36 + 408));
          dispatch_release(v37);
          *(*(a1 + 32) + 408) = 0;
          v36 = *(a1 + 32);
        }

        *(v36 + 408) = 0;
      }
    }
  }

  FigSimpleMutexUnlock();
  v38 = *(a1 + 40);
  if (v38)
  {
    CFRelease(v38);
  }
}

uint64_t fbaprp_copyEndPresentationTimeForQueuedSamples(uint64_t a1, const __CFAllocator *a2, CFDictionaryRef *a3)
{
  v18 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  dictionaryRepresentation = 0;
  if (!a3)
  {
    return 0;
  }

  CMBufferQueueGetEndPresentationTimeStamp(&time, *(DerivedStorage + 128));
  value = time.value;
  timescale = time.timescale;
  if (time.flags)
  {
    time.value = value;
    time.timescale = timescale;
    v12 = CMTimeCopyAsDictionary(&time, a2);
    v9 = 0;
    *a3 = v12;
  }

  else
  {
    FigSampleBufferProcessorGetFigBaseObject();
    v7 = v6;
    v8 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v8)
    {
      v9 = v8(v7, 0x1F0B56078, *MEMORY[0x1E695E480], &dictionaryRepresentation);
      v10 = dictionaryRepresentation;
      if (!v9)
      {
        CMTimeMakeFromDictionary(&time, dictionaryRepresentation);
        value = time.value;
        timescale = time.timescale;
        v10 = dictionaryRepresentation;
        if (dictionaryRepresentation)
        {
          v11 = CFRetain(dictionaryRepresentation);
          v10 = dictionaryRepresentation;
        }

        else
        {
          v11 = 0;
        }

        *a3 = v11;
      }

      if (v10)
      {
        CFRelease(v10);
      }
    }

    else
    {
      return 4294954514;
    }
  }

  return v9;
}

uint64_t fbaprp_setAudioProcessingTap(uint64_t a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v4 = getenv("ENABLE_BUFFERED_LOCAL_PLAYBACK");
  getenv("ENABLE_BUFFERED_LOCAL_PLAYBACK_BUT_TAP_AT_FAQRP");
  if (v4)
  {
    LODWORD(v4) = *v4 == 49;
  }

  FigSimpleMutexLock();
  if (*DerivedStorage)
  {
    LOBYTE(v7) = 0;
    v13 = 4294954511;
    goto LABEL_18;
  }

  if (!v4)
  {
    if (DerivedStorage[96])
    {
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v15, v16, v17);
      goto LABEL_16;
    }

    if (qword_1ED4CAB58 != -1)
    {
      dispatch_once(&qword_1ED4CAB58, &__block_literal_global_36);
    }

    if (_MergedGlobals_59)
    {
      v7 = *(*(CMBaseObjectGetVTable() + 16) + 128);
      if (!v7)
      {
        goto LABEL_17;
      }

      v9 = OUTLINED_FUNCTION_178();
      v8 = v10(v9);
      if (v8)
      {
        goto LABEL_16;
      }
    }

    else
    {
      FigBufferedAirPlaySubPipeManagerForRenderPipelineGetCMBaseObject();
      v12 = v11;
      v7 = *(*(CMBaseObjectGetVTable() + 8) + 56);
      if (!v7)
      {
        goto LABEL_17;
      }

      v8 = v7(v12, @"AudioProcessingTap", a2);
      if (v8)
      {
        goto LABEL_16;
      }
    }

    v13 = 0;
    LOBYTE(v7) = a2 != 0;
    goto LABEL_18;
  }

  FigBufferedAirPlayOutputProxyGetCMBaseObject();
  v6 = v5;
  v7 = *(*(CMBaseObjectGetVTable() + 8) + 56);
  if (!v7)
  {
LABEL_17:
    v13 = 4294954514;
    goto LABEL_18;
  }

  v8 = v7(v6, @"AudioProcessingTap", a2);
LABEL_16:
  v13 = v8;
  LOBYTE(v7) = 0;
LABEL_18:
  DerivedStorage[112] = v7;
  FigSimpleMutexUnlock();
  return v13;
}

void FigBufferedAirPlayAudioRenderPipelineCancelAndFlushTransition()
{
  OUTLINED_FUNCTION_193();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v268 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  *&v252.value = *MEMORY[0x1E6960CC0];
  v8 = *(MEMORY[0x1E6960CC0] + 16);
  v252.epoch = v8;
  v251 = 0;
  *v239 = *&v252.value;
  v249 = *&v252.value;
  *&v250[0] = v8;
  *(v250 + 8) = *MEMORY[0x1E6960C88];
  *(&v250[1] + 1) = *(MEMORY[0x1E6960C88] + 16);
  v248 = 0;
  bzero(v246, 0x88uLL);
  target = 0;
  v244 = **&MEMORY[0x1E6960C70];
  v243 = v244;
  v242 = v244;
  cf = 0;
  if (*&v4 == 0.0)
  {
    goto LABEL_85;
  }

  FigSimpleMutexLock();
  if (!*DerivedStorage)
  {
    FigMediaProcessorStop(*(DerivedStorage + 56));
    FigMediaProcessorWaitUntilCompletelyStopped(*(DerivedStorage + 56));
    v9 = OUTLINED_FUNCTION_178();
    Record = fbaprp_transitionRosterGetRecord(v9, v10);
    v12 = &dword_1EAF17000;
    if (Record)
    {
      v13 = Record;
      v238 = v2;
      FigSampleBufferProcessorGetFigBaseObject();
      v15 = v14;
      v16 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      if (!v16)
      {
        goto LABEL_82;
      }

      v235 = v4;
      v17 = *MEMORY[0x1E695E480];
      if (v16(v15, 0x1F0B56038, *MEMORY[0x1E695E480], &v251))
      {
        goto LABEL_82;
      }

      v233 = v17;
      CMTimeMakeFromDictionary(&v252, v251);
      v265 = *(v13 + 104);
      *&v266 = *(v13 + 15);
      *&time.value = *v239;
      time.epoch = v8;
      v18 = OUTLINED_FUNCTION_40_11();
      if (CMTimeCompare(v18, v19))
      {
        v265 = *(v13 + 104);
        *&v266 = *(v13 + 15);
        time = v252;
        v20 = OUTLINED_FUNCTION_40_11();
        if (CMTimeCompare(v20, v21) < 0)
        {
          if (dword_1EAF17188)
          {
            OUTLINED_FUNCTION_4_66();
            os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            OUTLINED_FUNCTION_64_7(os_log_and_send_and_compose_flags_and_os_log_type, v70, v71, v72, v73, v74, v75, v76, v227, v228, v229, v230, v231, v17, v235, v238, v239[0], v239[1], type, SBYTE2(type), BYTE3(type), SHIDWORD(type));
            OUTLINED_FUNCTION_70();
            if (&dword_1EAF17000)
            {
              if (v6)
              {
                v77 = (CMBaseObjectGetDerivedStorage() + 424);
              }

              else
              {
                v77 = "";
              }

              LODWORD(time.value) = 136315906;
              *(&time.value + 4) = "FigBufferedAirPlayAudioRenderPipelineCancelAndFlushTransition";
              OUTLINED_FUNCTION_16_24(v77);
              OUTLINED_FUNCTION_11_34();
              OUTLINED_FUNCTION_65();
              _os_log_send_and_compose_impl(v174, v175, v176, v177, v178, v179, v15, v180);
            }

            OUTLINED_FUNCTION_36_14();
            OUTLINED_FUNCTION_7();
            OUTLINED_FUNCTION_454(v181, v182, v183, v184, v185);
          }

          if (CMBufferQueueReset(*(DerivedStorage + 128)))
          {
            goto LABEL_82;
          }
        }

        goto LABEL_8;
      }

      if (dword_1EAF17188)
      {
        OUTLINED_FUNCTION_4_66();
        v52 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        if (OUTLINED_FUNCTION_62_7(v52, v53, v54, v55, v56, v57, v58, v59, v227, v228, v229, v230, v231, v17, v235, v238, v239[0], v239[1], type, SBYTE2(type), BYTE3(type), SHIDWORD(type)))
        {
          v60 = &dword_1EAF17000;
        }

        else
        {
          v60 = &dword_1EAF17000 & 0xFFFFFFFE;
        }

        if (v60)
        {
          if (v6)
          {
            v61 = (CMBaseObjectGetDerivedStorage() + 424);
          }

          else
          {
            v61 = "";
          }

          LODWORD(time.value) = 136315906;
          *(&time.value + 4) = "FigBufferedAirPlayAudioRenderPipelineCancelAndFlushTransition";
          OUTLINED_FUNCTION_8_30(v61);
          v255 = 2114;
          v256 = *&v235;
          OUTLINED_FUNCTION_11_34();
          OUTLINED_FUNCTION_108();
          _os_log_send_and_compose_impl(v154, v155, v156, v157, v158, v13, v15, v159);
        }

        OUTLINED_FUNCTION_7();
        v12 = v160;
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      FigSampleBufferProcessorGetFigBaseObject();
      v162 = v161;
      v163 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      if (!v163 || v163(v162, 0x1F0B56058, v233, &v248))
      {
        goto LABEL_82;
      }

      if (v248)
      {
        CFDictionaryGetValue(v248, @"TransitionID");
      }

      if (FigCFEqual())
      {
        if (dword_1EAF17188)
        {
          OUTLINED_FUNCTION_4_66();
          v164 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          if (OUTLINED_FUNCTION_62_7(v164, v165, v166, v167, v168, v169, v170, v171, v227, v228, v229, v230, v231, v233, v235, v238, v239[0], v239[1], type, SBYTE2(type), BYTE3(type), SHIDWORD(type)))
          {
            v172 = v12;
          }

          else
          {
            v172 = v12 & 0xFFFFFFFE;
          }

          if (v172)
          {
            if (v6)
            {
              v173 = (CMBaseObjectGetDerivedStorage() + 424);
            }

            else
            {
              v173 = "";
            }

            LODWORD(time.value) = 136315906;
            *(&time.value + 4) = "FigBufferedAirPlayAudioRenderPipelineCancelAndFlushTransition";
            OUTLINED_FUNCTION_8_30(v173);
            v255 = 2114;
            v256 = *&v235;
            OUTLINED_FUNCTION_11_34();
            OUTLINED_FUNCTION_108();
            _os_log_send_and_compose_impl(v194, v195, v196, v197, v198, v162, v15, v199);
          }

          OUTLINED_FUNCTION_7();
          LODWORD(v12) = v200;
          fig_log_call_emit_and_clean_up_after_send_and_compose();
        }

        FigCFDictionaryGetCMTimeIfPresent();
        FigCFDictionaryGetCMTimeIfPresent();
        FigCFDictionaryGetCMTimeIfPresent();
        v201 = *(DerivedStorage + 304);
        if (!v201)
        {
          v201 = *(DerivedStorage + 248);
        }

        v247 = v201;
        v13 = v246;
LABEL_8:
        if (dword_1EAF17188)
        {
          OUTLINED_FUNCTION_4_66();
          v22 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          os_log_type_enabled(v22, BYTE3(type));
          OUTLINED_FUNCTION_70();
          if (v12)
          {
            if (v6)
            {
              v23 = (CMBaseObjectGetDerivedStorage() + 424);
            }

            else
            {
              v23 = "";
            }

            v265 = *(v13 + 104);
            v78 = OUTLINED_FUNCTION_51_11(*(v13 + 15));
            v265 = *&v252.value;
            v79 = OUTLINED_FUNCTION_51_11(v252.epoch);
            v265 = *(v13 + 24);
            v80 = OUTLINED_FUNCTION_51_11(*(v13 + 5));
            v81 = *(v13 + 2);
            LODWORD(time.value) = 136316930;
            *(&time.value + 4) = "FigBufferedAirPlayAudioRenderPipelineCancelAndFlushTransition";
            LOWORD(time.flags) = 2048;
            *(&time.flags + 2) = v6;
            HIWORD(time.epoch) = 2082;
            v254 = v23;
            v255 = 2114;
            v256 = *&v235;
            v257 = 2048;
            v258 = v78;
            v259 = 2048;
            v260 = v79;
            v261 = 2048;
            v262 = v80;
            v263 = 2048;
            v264 = v81;
            OUTLINED_FUNCTION_11_34();
            OUTLINED_FUNCTION_65();
            _os_log_send_and_compose_impl(v82, v83, v84, v85, v86, v87, BYTE3(type), v88);
          }

          OUTLINED_FUNCTION_36_14();
          OUTLINED_FUNCTION_7();
          OUTLINED_FUNCTION_454(v89, v90, v91, v92, v93);
        }

        v249 = *(v13 + 104);
        *&v250[0] = *(v13 + 15);
        v265 = *&v252.value;
        *&v266 = v252.epoch;
        time = *(v13 + 104);
        v94 = OUTLINED_FUNCTION_40_11();
        CMTimeSubtract(v96, v94, v95);
        if (dword_1EAF17188)
        {
          OUTLINED_FUNCTION_4_66();
          v97 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          OUTLINED_FUNCTION_64_7(v97, v98, v99, v100, v101, v102, v103, v104, v227, v228, v229, v230, v231, v233, v235, v238, v239[0], v239[1], type, SBYTE2(type), BYTE3(type), SHIDWORD(type));
          OUTLINED_FUNCTION_70();
          if (v12)
          {
            if (v6)
            {
              v105 = (CMBaseObjectGetDerivedStorage() + 424);
            }

            else
            {
              v105 = "";
            }

            v265 = v249;
            v106 = OUTLINED_FUNCTION_51_11(*&v250[0]);
            v265 = *(v250 + 8);
            v107 = OUTLINED_FUNCTION_51_11(*(&v250[1] + 1));
            LODWORD(time.value) = 136316162;
            *(&time.value + 4) = "FigBufferedAirPlayAudioRenderPipelineCancelAndFlushTransition";
            LOWORD(time.flags) = 2048;
            *(&time.flags + 2) = v6;
            HIWORD(time.epoch) = 2082;
            v254 = v105;
            v255 = 2048;
            v256 = v106;
            v257 = 2048;
            v258 = v107;
            OUTLINED_FUNCTION_11_34();
            OUTLINED_FUNCTION_65();
            _os_log_send_and_compose_impl(v108, v109, v110, v111, v112, v113, &v249, v114);
          }

          OUTLINED_FUNCTION_36_14();
          OUTLINED_FUNCTION_7();
          OUTLINED_FUNCTION_454(v115, v116, v117, v118, v119);
        }

        v120 = *(DerivedStorage + 148);
        if (v120 > 0.0 && v120 != 1.0)
        {
          *&time.value = v249;
          time.epoch = *&v250[0];
          v122 = 1.0 / v120;
          CMTimeMultiplyByFloat64(&v265, &time, v122);
          v249 = v265;
          *&v250[0] = v266;
          time = *(v250 + 8);
          CMTimeMultiplyByFloat64(&v265, &time, v122);
          *(v250 + 8) = v265;
          *(&v250[1] + 1) = v266;
        }

        v265 = *(v250 + 8);
        *&v266 = *(&v250[1] + 1);
        *&time.value = *v239;
        time.epoch = v8;
        v123 = OUTLINED_FUNCTION_40_11();
        if (!CMTimeCompare(v123, v124))
        {
          goto LABEL_65;
        }

        CFPreferenceNumberWithDefault = FigGetCFPreferenceNumberWithDefault();
        CMTimeMake(&v243, CFPreferenceNumberWithDefault, 1);
        CMTimebaseGetTime(&v244, *(DerivedStorage + 248));
        v265 = v249;
        *&v266 = *&v250[0];
        time = v244;
        v126 = OUTLINED_FUNCTION_40_11();
        CMTimeSubtract(v128, v126, v127);
        v265 = *&v242.value;
        *&v266 = v242.epoch;
        time = v243;
        v129 = OUTLINED_FUNCTION_40_11();
        if (CMTimeCompare(v129, v130) <= 0)
        {
          FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v227, v228, v229);
        }

        else if (!OUTLINED_FUNCTION_23_23(v233, v131, v132, v133, v134, v135, v136, v137, 0, 0, 0, &target))
        {
          v138 = *MEMORY[0x1E695E4D0];
          CMSetAttachment(target, *MEMORY[0x1E6962DF8], *MEMORY[0x1E695E4D0], 1u);
          v139 = *(DerivedStorage + 64);
          v140 = target;
          v141 = *(*(CMBaseObjectGetVTable() + 16) + 8);
          if (v141)
          {
            if (!v141(v139, v140) && !OUTLINED_FUNCTION_23_23(v233, v142, v143, v144, v145, v146, v147, v148, 0, 0, 0, &cf))
            {
              CMSetAttachment(cf, @"FlushRangeEnd", v138, 1u);
              if (!FigSampleBufferConsumerSendSampleBuffer(*(DerivedStorage + 64), cf))
              {
                v149 = *(DerivedStorage + 392);
                v150 = *(DerivedStorage + 400);
                v265 = v249;
                v266 = v250[0];
                v267 = v250[1];
                if (!FigBufferedAirPlayOutputProxyFlushWithinTimeRange(v149, v150, &v265))
                {
LABEL_65:
                  v151 = *(v13 + 2);
                  v265 = *(v13 + 24);
                  *&v266 = *(v13 + 5);
                  time = *(v13 + 104);
                  if (!fbaprp_restoreAudioChainToStartOutputTime(v6, v151, &v265, &time))
                  {
                    v152 = OUTLINED_FUNCTION_178();
                    fbaprp_transitionRosterRemoveRecordsStartingFromTransitionID(v152, v153);
                  }
                }
              }
            }
          }
        }

LABEL_82:
        FigMediaProcessorGo(*(DerivedStorage + 56));
        goto LABEL_83;
      }

      if (dword_1EAF17188)
      {
        OUTLINED_FUNCTION_4_66();
        v186 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        OUTLINED_FUNCTION_30_15(v186, v187, v188, v189, v190, v191, v192, v193, v227, v228, v229, v230, v231, v233, v235, v238, v239[0], v239[1], type, SBYTE2(type), BYTE3(type), SHIDWORD(type));
        OUTLINED_FUNCTION_46();
        if (v162)
        {
          if (v6)
          {
            CMBaseObjectGetDerivedStorage();
          }

          OUTLINED_FUNCTION_55_10(4.8154e-34);
          OUTLINED_FUNCTION_16_24(v202);
          v257 = 2114;
          v258 = *&v235;
          OUTLINED_FUNCTION_11_34();
          OUTLINED_FUNCTION_10_3(v203, v204, &v265, v205, &dword_1962D5000, v206, v207, "<<<< FigBufferedAirPlayRP >>>> %s: [%p] %{public}s Flush srcBufferQueue %p starting from transition id '%{public}@'");
          OUTLINED_FUNCTION_52_9();
        }

        OUTLINED_FUNCTION_7();
        OUTLINED_FUNCTION_238_0(v208, v209, v210, v211, v212);
      }

      if (fbaprp_flushTransitionInBufferQueue(*(DerivedStorage + 128), v235) != -1)
      {
        goto LABEL_82;
      }

      OUTLINED_FUNCTION_4_66();
      v213 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      OUTLINED_FUNCTION_30_15(v213, v214, v215, v216, v217, v218, v219, v220, v227, v228, v229, v230, v231, v233, v235, v238, v239[0], v239[1], type, SBYTE2(type), BYTE3(type), SHIDWORD(type));
      OUTLINED_FUNCTION_46();
      if (v162)
      {
        if (v6)
        {
          CMBaseObjectGetDerivedStorage();
        }

        OUTLINED_FUNCTION_55_10(4.8153e-34);
        OUTLINED_FUNCTION_8_30(v221);
        v255 = 2112;
        v256 = *&v236;
        OUTLINED_FUNCTION_11_34();
        OUTLINED_FUNCTION_10_3(v222, v223, &v265, v224, &dword_1962D5000, v225, v226, "<<<< FigBufferedAirPlayRP >>>> %s: [%p] %{public}s Failed to find transition %@ in srcBufferQueue and FigSampleBufferProcessor");
        OUTLINED_FUNCTION_52_9();
      }

      else
      {
        v51 = 0;
      }

      v68 = *(v12 + 48);
    }

    else
    {
      if (dword_1EAF17188)
      {
        v24 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        OUTLINED_FUNCTION_30_15(v24, v25, v26, v27, v28, v29, v30, v31, v227, v228, v229, v230, v231, v232, v234, v237, v239[0], v239[1], type, SBYTE2(type), OS_LOG_TYPE_DEFAULT, 0);
        OUTLINED_FUNCTION_46();
        if (v0)
        {
          if (v6)
          {
            CMBaseObjectGetDerivedStorage();
          }

          OUTLINED_FUNCTION_55_10(4.8154e-34);
          OUTLINED_FUNCTION_16_24(v32);
          v257 = 2114;
          v258 = *&v4;
          OUTLINED_FUNCTION_11_34();
          OUTLINED_FUNCTION_10_3(v33, v34, &v265, v35, &dword_1962D5000, v36, v37, "<<<< FigBufferedAirPlayRP >>>> %s: [%p] %{public}s Flush srcBufferQueue %p from transition id '%{public}@'");
          OUTLINED_FUNCTION_52_9();
        }

        OUTLINED_FUNCTION_7();
        OUTLINED_FUNCTION_238_0(v38, v39, v40, v41, v42);
      }

      if (fbaprp_flushTransitionInBufferQueue(*(DerivedStorage + 128), v4) != -1)
      {
        goto LABEL_82;
      }

      v43 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      OUTLINED_FUNCTION_30_15(v43, v44, v45, v46, v47, v48, v49, v50, v227, v228, v229, v230, v231, v232, v234, v237, v239[0], v239[1], type, SBYTE2(type), OS_LOG_TYPE_DEFAULT, 0);
      OUTLINED_FUNCTION_46();
      if (v0)
      {
        if (v6)
        {
          CMBaseObjectGetDerivedStorage();
        }

        OUTLINED_FUNCTION_55_10(4.8153e-34);
        OUTLINED_FUNCTION_8_30(v62);
        v255 = 2112;
        v256 = *&v4;
        OUTLINED_FUNCTION_11_34();
        OUTLINED_FUNCTION_10_3(v63, v64, &v265, v65, &dword_1962D5000, v66, v67, "<<<< FigBufferedAirPlayRP >>>> %s: [%p] %{public}s Failed to find transition %@ in input queue");
        OUTLINED_FUNCTION_52_9();
      }

      else
      {
        v51 = 0;
      }

      v68 = qword_1EAF17180;
    }

    OUTLINED_FUNCTION_238_0(v68, 0, 1, v51, v51 != &v265);
    goto LABEL_82;
  }

LABEL_83:
  FigSimpleMutexUnlock();
  if (v251)
  {
    CFRelease(v251);
  }

LABEL_85:
  if (v248)
  {
    CFRelease(v248);
  }

  if (target)
  {
    CFRelease(target);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  OUTLINED_FUNCTION_191();
}

void FigBufferedAirPlayAudioRenderPipelineFlushFromTime()
{
  OUTLINED_FUNCTION_193();
  v1 = v0;
  v3 = v2;
  v61 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  dictionaryRepresentation = 0;
  v59 = *MEMORY[0x1E6960C70];
  v60 = *(MEMORY[0x1E6960C70] + 8);
  v5 = *MEMORY[0x1E6960CC0];
  v49 = *MEMORY[0x1E6960CC0];
  v6 = *(MEMORY[0x1E6960CC0] + 16);
  *v50 = v6;
  v7 = *MEMORY[0x1E6960C88];
  *&v50[8] = *MEMORY[0x1E6960C88];
  v8 = *(MEMORY[0x1E6960C88] + 16);
  *&v50[24] = v8;
  v47 = 0;
  cf = 0;
  v9 = *(v1 + 3);
  if ((v9 & 9) != 1)
  {
    v22 = 0;
    goto LABEL_30;
  }

  if ((v9 & 4) != 0)
  {
    v22 = 0;
    goto LABEL_30;
  }

  v10 = DerivedStorage;
  v45 = v7;
  v46 = v5;
  FigSimpleMutexLock();
  if (!*v10)
  {
    FigMediaProcessorStop(*(v10 + 56));
    FigMediaProcessorWaitUntilCompletelyStopped(*(v10 + 56));
    FigSampleBufferProcessorGetFigBaseObject();
    v12 = v11;
    v13 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v13)
    {
      v14 = *MEMORY[0x1E695E480];
      if (v13(v12, 0x1F0B56038, *MEMORY[0x1E695E480], &dictionaryRepresentation))
      {
        goto LABEL_26;
      }

      CMTimeMakeFromDictionary(time1, dictionaryRepresentation);
      v15 = *&time1[12];
      v60 = *&time1[8];
      v16 = *time1;
      v59 = *time1;
      v17 = *&time1[16];
      *time1 = *v1;
      *&time1[16] = *(v1 + 2);
      time2.value = v16;
      time2.timescale = v60;
      time2.flags = v15;
      time2.epoch = v17;
      if ((CMTimeCompare(time1, &time2) & 0x80000000) == 0 || (v15 & 1) == 0)
      {
        v23 = *(v10 + 128);
        OUTLINED_FUNCTION_33_14();
        queueOut = 0;
        v58 = 0u;
        memset(time1, 0, sizeof(time1));
        CallbacksForUnsortedSampleBuffers = CMBufferQueueGetCallbacksForUnsortedSampleBuffers();
        if (!CMBufferQueueCreate(v14, 0, CallbacksForUnsortedSampleBuffers, &queueOut))
        {
          *time1 = queueOut;
          *&time1[16] = *&time2.value;
          *&v58 = time2.epoch;
          BYTE8(v58) = 1;
          HIDWORD(v58) = 0;
          MEMORY[0x19A8CE710](v23, fbaprp_copySbufBeforeFlushTimeForBufferQueueResetCallback, time1);
          MEMORY[0x19A8CE710](queueOut, fbaprp_copySbufForBufferQueueResetCallback, v23);
        }

        if (queueOut)
        {
          CFRelease(queueOut);
        }

        v22 = 0;
        goto LABEL_27;
      }

      if (dword_1EAF17188)
      {
        LODWORD(queueOut) = 0;
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        v19 = queueOut;
        v44 = os_log_and_send_and_compose_flags_and_os_log_type;
        if (os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT))
        {
          v20 = v19;
        }

        else
        {
          v20 = v19 & 0xFFFFFFFE;
        }

        if (v20)
        {
          if (v3)
          {
            v21 = (CMBaseObjectGetDerivedStorage() + 424);
          }

          else
          {
            v21 = "";
          }

          v25 = *(v10 + 128);
          LODWORD(time2.value) = 136315906;
          *(&time2.value + 4) = "FigBufferedAirPlayAudioRenderPipelineFlushFromTime";
          LOWORD(time2.flags) = 2048;
          *(&time2.flags + 2) = v3;
          HIWORD(time2.epoch) = 2082;
          v54 = v21;
          v55 = 2048;
          v56 = v25;
          OUTLINED_FUNCTION_108();
          _os_log_send_and_compose_impl(v26, v27, v28, v29, v30, v44, 0, v31, &time2, 42);
        }

        OUTLINED_FUNCTION_7();
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      if (CMBufferQueueReset(*(v10 + 128)))
      {
LABEL_26:
        v22 = 0;
      }

      else
      {
        OUTLINED_FUNCTION_56_8();
        v22 = CMTimeCopyAsDictionary(time1, v14);
        if (fbaprp_copyTimeAdjustedToContinuousOrSongTimeline(v3, 0, v22, &v47))
        {
          v49 = *v1;
          *v50 = *(v1 + 2);
        }

        else
        {
          CMTimeMakeFromDictionary(&v49, v47);
        }

        *&v50[8] = v45;
        *&v50[24] = v8;
        v32 = *(v10 + 148);
        if (v32 > 0.0 && v32 != 1.0)
        {
          *&time2.value = v49;
          time2.epoch = *v50;
          v34 = 1.0 / v32;
          CMTimeMultiplyByFloat64(time1, &time2, v34);
          v49 = *time1;
          *v50 = *&time1[16];
          time2 = *&v50[8];
          CMTimeMultiplyByFloat64(time1, &time2, v34);
          *&v50[8] = *time1;
          *&v50[24] = *&time1[16];
        }

        *time1 = *&v50[8];
        *&time1[16] = *&v50[24];
        *&time2.value = v46;
        time2.epoch = v6;
        if (!CMTimeCompare(time1, &time2) || !OUTLINED_FUNCTION_23_23(v14, v35, v36, v37, v38, v39, v40, v41, 0, 0, 0, &cf) && (CMSetAttachment(cf, @"FlushRangeEnd", *MEMORY[0x1E695E4D0], 1u), !FigSampleBufferConsumerSendSampleBuffer(*(v10 + 64), cf)) && (v42 = *(v10 + 392), v43 = *(v10 + 400), *time1 = v49, *&time1[16] = *v50, v58 = *&v50[16], !FigBufferedAirPlayOutputProxyFlushWithinTimeRange(v42, v43, time1)))
        {
          OUTLINED_FUNCTION_56_8();
          fbaprp_restoreAudioChainToStartOutputTime(v3, 0, MEMORY[0x1E6960C70], time1);
        }
      }
    }

    else
    {
      v22 = 0;
    }

LABEL_27:
    FigMediaProcessorGo(*(v10 + 56));
    goto LABEL_28;
  }

  v22 = 0;
LABEL_28:
  FigSimpleMutexUnlock();
  if (dictionaryRepresentation)
  {
    CFRelease(dictionaryRepresentation);
  }

LABEL_30:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v22)
  {
    CFRelease(v22);
  }

  if (v47)
  {
    CFRelease(v47);
  }

  OUTLINED_FUNCTION_191();
}

uint64_t fbaprp_baoPrerollDurationChanged(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const void *a5)
{
  v27 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  if (!a5 || (v9 = CFGetTypeID(a5), v9 != CFDictionaryGetTypeID()))
  {
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF17180, 4294954444, "<<<< FigBufferedAirPlayRP >>>>", 2143, v5);
    return FigSimpleMutexUnlock();
  }

  CMTimeMakeFromDictionary(&v24, a5);
  value = v24.value;
  flags = v24.flags;
  timescale = v24.timescale;
  if ((v24.flags & 1) == 0)
  {
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF17180, 4294954444, "<<<< FigBufferedAirPlayRP >>>>", 2145, v5);
    return FigSimpleMutexUnlock();
  }

  if (!*DerivedStorage)
  {
    epoch = v24.epoch;
    fbaprp_cleanFreedSampleBufferConsumers(a2);
    v12 = CMBaseObjectGetDerivedStorage();
    v13 = *MEMORY[0x1E695E480];
    v24.value = value;
    v24.timescale = timescale;
    v24.flags = flags;
    v24.epoch = epoch;
    v14 = CMTimeCopyAsDictionary(&v24, v13);
    if (!v14)
    {
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF17180, 4294954443, "<<<< FigBufferedAirPlayRP >>>>", 2210, v5);
      return FigSimpleMutexUnlock();
    }

    v15 = v14;
    if (CFArrayGetCount(*(v12 + 88)) < 1)
    {
LABEL_12:
      *(v12 + 336) = value;
      *(v12 + 344) = timescale;
      *(v12 + 348) = flags;
      *(v12 + 352) = epoch;
      goto LABEL_14;
    }

    v16 = 0;
    while (1)
    {
      CFArrayGetValueAtIndex(*(v12 + 88), v16);
      v17 = FigCFWeakReferenceHolderCopyReferencedObject();
      if (v17)
      {
        v18 = v17;
        FigSampleBufferConsumerGetFigBaseObject();
        v20 = v19;
        v21 = *(*(CMBaseObjectGetVTable() + 8) + 56);
        if (!v21)
        {
          CFRelease(v18);
LABEL_14:
          CFRelease(v15);
          return FigSimpleMutexUnlock();
        }

        v22 = v21(v20, @"PrerollDuration", v15);
        CFRelease(v18);
        if (v22)
        {
          goto LABEL_14;
        }
      }

      if (++v16 >= CFArrayGetCount(*(v12 + 88)))
      {
        goto LABEL_12;
      }
    }
  }

  return FigSimpleMutexUnlock();
}

void fbaprp_notificationsFromBAOProxy(uint64_t a1, const void *a2, const void *a3, uint64_t a4, const void *UInt64)
{
  v137 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v127 = 0;
  v128 = 0;
  cf = 0;
  if (!CFEqual(a3, @"PlayResourceReleased"))
  {
    if (CFEqual(a3, @"flushWithinSampleRangeFailed"))
    {
      if (dword_1EAF17188)
      {
        OUTLINED_FUNCTION_3_63();
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        OUTLINED_FUNCTION_22_20(os_log_and_send_and_compose_flags_and_os_log_type, v12, v13, v14, v15, v16, v17, v18, v123, v124, type, SBYTE2(type), BYTE3(type), SHIDWORD(type));
        OUTLINED_FUNCTION_7_22();
        if (!a3)
        {
          goto LABEL_42;
        }

        if (!a2)
        {
LABEL_41:
          v129 = 136315650;
          OUTLINED_FUNCTION_0_66();
          OUTLINED_FUNCTION_65();
          _os_log_send_and_compose_impl(v74, v75, v76, v77, v78, v79, UInt64, v80);
          OUTLINED_FUNCTION_54_10();
LABEL_42:
          OUTLINED_FUNCTION_7();
          OUTLINED_FUNCTION_524(v81, v82, v83, v84, v85);
          goto LABEL_43;
        }

LABEL_9:
        CMBaseObjectGetDerivedStorage();
        goto LABEL_41;
      }
    }

    else
    {
      if (!FigCFEqual())
      {
        if (!FigCFEqual())
        {

          fbaprp_postNotification(a2, a3, UInt64);
          return;
        }

        if (!FigGetCFPreferenceNumberWithDefault() || !dword_1EAF17188)
        {
          return;
        }

        OUTLINED_FUNCTION_3_63();
        v54 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        OUTLINED_FUNCTION_22_20(v54, v55, v56, v57, v58, v59, v60, v61, v123, v124, type, SBYTE2(type), BYTE3(type), SHIDWORD(type));
        OUTLINED_FUNCTION_7_22();
        if (a3)
        {
          if (a2)
          {
            CMBaseObjectGetDerivedStorage();
          }

          v129 = 136315650;
          OUTLINED_FUNCTION_0_66();
          OUTLINED_FUNCTION_65();
          _os_log_send_and_compose_impl(v99, v100, v101, v102, v103, v104, UInt64, v105);
          OUTLINED_FUNCTION_54_10();
        }

        v70 = OUTLINED_FUNCTION_20_16();
        v73 = 1;
LABEL_40:
        OUTLINED_FUNCTION_524(v70, v73, 1, v71, v72);
        return;
      }

      ValueIfPresent = FigCFDictionaryGetValueIfPresent();
      v37 = FigCFDictionaryGetValueIfPresent();
      if (!ValueIfPresent || !v37)
      {
        OUTLINED_FUNCTION_3_63();
        v62 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        OUTLINED_FUNCTION_22_20(v62, v63, v64, v65, v66, v67, v68, v69, v123, v124, type, SBYTE2(type), BYTE3(type), SHIDWORD(type));
        OUTLINED_FUNCTION_7_22();
        if (!ValueIfPresent)
        {
          goto LABEL_39;
        }

        if (!a2)
        {
          goto LABEL_29;
        }

        goto LABEL_12;
      }

      UInt64 = FigCFNumberGetUInt64();
      FigSimpleMutexLock();
      if (*DerivedStorage)
      {
        goto LABEL_4;
      }

      v38 = *(DerivedStorage + 400);
      FigSimpleMutexUnlock();
      if (v38 != UInt64)
      {
        return;
      }

      if (!FigGetCFPreferenceNumberWithDefault())
      {
        Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
        if (Mutable)
        {
          v107 = Mutable;
          FigSimpleMutexLock();
          v108 = fbaprp_copyTimeAdjustedToContinuousOrSongTimeline(a2, 1, v127, &cf);
          FigSimpleMutexUnlock();
          if (!v108)
          {
            FigCFDictionarySetValue();
            if (dword_1EAF17188)
            {
              v109 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
              os_log_type_enabled(v109, OS_LOG_TYPE_DEFAULT);
              OUTLINED_FUNCTION_40();
              if (v5)
              {
                if (a2)
                {
                  v110 = (CMBaseObjectGetDerivedStorage() + 424);
                }

                else
                {
                  v110 = "";
                }

                v129 = 136315906;
                v130 = "fbaprp_notificationsFromBAOProxy";
                v131 = 2048;
                v132 = a2;
                v133 = 2082;
                v134 = v110;
                v135 = 2112;
                v136 = v107;
                OUTLINED_FUNCTION_65();
                _os_log_send_and_compose_impl(v111, v112, v113, v114, v115, v116, 0, v117, &v129, 42);
              }

              OUTLINED_FUNCTION_7();
              OUTLINED_FUNCTION_414(v118, v119, v120, v121, v122);
            }

            fbaprp_postNotification(a2, @"WarehousePleaseRetransmitFromTime", v107);
          }

          CFRelease(v107);
          if (cf)
          {
            CFRelease(cf);
          }
        }

        return;
      }

      if (dword_1EAF17188)
      {
        OUTLINED_FUNCTION_3_63();
        v39 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        OUTLINED_FUNCTION_22_20(v39, v40, v41, v42, v43, v44, v45, v46, v123, v124, type, SBYTE2(type), BYTE3(type), SHIDWORD(type));
        OUTLINED_FUNCTION_7_22();
        if (!v38)
        {
          goto LABEL_42;
        }

        if (!a2)
        {
          goto LABEL_41;
        }

        goto LABEL_9;
      }
    }

LABEL_43:
    v86 = kFigRenderPipelineNotification_PrerollLost;
LABEL_44:
    fbaprp_postNotification(a2, *v86, 0);
    return;
  }

  if (!FigCFDictionaryGetValueIfPresent())
  {
    OUTLINED_FUNCTION_3_63();
    v19 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    OUTLINED_FUNCTION_22_20(v19, v20, v21, v22, v23, v24, v25, v26, v123, v124, type, SBYTE2(type), BYTE3(type), SHIDWORD(type));
    OUTLINED_FUNCTION_7_22();
    if (!a3)
    {
LABEL_39:
      v70 = OUTLINED_FUNCTION_20_16();
      v73 = 0;
      goto LABEL_40;
    }

    if (!a2)
    {
LABEL_29:
      v129 = 136315650;
      OUTLINED_FUNCTION_0_66();
      OUTLINED_FUNCTION_65();
      _os_log_send_and_compose_impl(v47, v48, v49, v50, v51, v52, UInt64, v53);
      OUTLINED_FUNCTION_54_10();
      goto LABEL_39;
    }

LABEL_12:
    CMBaseObjectGetDerivedStorage();
    goto LABEL_29;
  }

  v10 = FigCFNumberGetUInt64();
  FigSimpleMutexLock();
  if (*DerivedStorage)
  {
LABEL_4:
    FigSimpleMutexUnlock();
    return;
  }

  v27 = *(DerivedStorage + 400);
  FigSimpleMutexUnlock();
  if (v27 == v10)
  {
    if (dword_1EAF17188)
    {
      OUTLINED_FUNCTION_3_63();
      v28 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      OUTLINED_FUNCTION_22_20(v28, v29, v30, v31, v32, v33, v34, v35, v123, v124, type, SBYTE2(type), BYTE3(type), SHIDWORD(type));
      OUTLINED_FUNCTION_7_22();
      if (v27)
      {
        if (a2)
        {
          CMBaseObjectGetDerivedStorage();
        }

        v129 = 136315650;
        OUTLINED_FUNCTION_0_66();
        OUTLINED_FUNCTION_65();
        _os_log_send_and_compose_impl(v87, v88, v89, v90, v91, v92, v10, v93);
        OUTLINED_FUNCTION_54_10();
      }

      OUTLINED_FUNCTION_7();
      OUTLINED_FUNCTION_524(v94, v95, v96, v97, v98);
    }

    v86 = kFigRenderPipelineNotification_PlayResourceReleased;
    goto LABEL_44;
  }
}

uint64_t FigBufferedAirPlayAudioRenderPipelineCreate_cold_11(const __CFString *a1, char *a2)
{
  OUTLINED_FUNCTION_28_16();
  CFStringAppendFormat(v4, 0, @".%u");
  return CFStringGetCString(a1, a2, 20, 0x8000100u);
}

CFStringRef FigBufferedAirPlayAudioRenderPipelineCreate_cold_12(uint64_t a1, uint64_t a2, CFStringRef *a3)
{
  OUTLINED_FUNCTION_28_16();
  snprintf(v4, 0x13uLL, "BuffRP-%u", v8);
  v5 = OUTLINED_FUNCTION_266();
  result = CFStringCreateWithCString(v5, v6, 0x8000100u);
  *a3 = result;
  return result;
}

void fbaprp_setWaterLevelsForRenderPipelineOutput_cold_1(const void *a1, _DWORD *a2)
{
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v5, v6, vars0);
  *a2 = v4;
  CFRelease(a1);
}

uint64_t FigBufferedAirPlayOfflineMixerFactoryAcquireMixer_cold_1(uint64_t a1, _DWORD *a2)
{
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v5, v6, vars0);
  *a2 = v3;
  return FigSimpleMutexUnlock();
}

uint64_t FigReportingModeratorCreateForCRABS(uint64_t a1, const void *a2, uint64_t a3, CFTypeRef *a4)
{
  OUTLINED_FUNCTION_1_12();
  fig_note_initialize_category_with_default_work_cf();
  OUTLINED_FUNCTION_1_12();
  fig_note_initialize_category_with_default_work_cf();
  if (!a4)
  {
    return 4294949785;
  }

  FigReportingModeratorGetClassID();
  v6 = CMDerivedObjectCreate();
  if (!v6)
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    *(DerivedStorage + 8) = 0;
    *(DerivedStorage + 96) = FigGetUpTimeNanoseconds();
    *(DerivedStorage + 104) = 0;
    *DerivedStorage = FigGetUpTimeNanoseconds();
    if (a2)
    {
      v8 = CFRetain(a2);
    }

    else
    {
      v8 = 0;
    }

    v6 = 0;
    *(DerivedStorage + 80) = v8;
    *(DerivedStorage + 88) = 0x1F0B645F8;
    *a4 = 0;
  }

  return v6;
}

void playerReportingModeratorFinalize(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (DerivedStorage)
  {
    v2 = *(DerivedStorage + 80);
    if (v2)
    {

      CFRelease(v2);
    }
  }
}

uint64_t playerModeratorProcessEventAndCopyKeyArray(uint64_t a1, int a2, uint64_t *a3, void *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  result = 4294949785;
  if (!a3 || !DerivedStorage)
  {
    return result;
  }

  if (a2 == 110)
  {
    return 4294949783;
  }

  v9 = 0;
  v85[0] = 0;
  if (a2 != 306)
  {
LABEL_8:
    v84 = a4;
    UpTimeNanoseconds = FigGetUpTimeNanoseconds();
    v13 = UpTimeNanoseconds;
    v14 = *(DerivedStorage + 8);
    if (*DerivedStorage)
    {
      v15 = (UpTimeNanoseconds - *DerivedStorage) / 0xF4240uLL;
      switch(v14)
      {
        case 0:
          v16 = 0x1F0B65998;
          goto LABEL_15;
        case 1:
          v16 = 0x1F0B65978;
          goto LABEL_15;
        case 2:
          v17 = *(DerivedStorage + 16) * v15 / 0x64;
          fprm_addToSessionStatsCountValue(DerivedStorage, 0x1F0B658D8, v15);
          v16 = 0x1F0B658F8;
          v18 = DerivedStorage;
          v15 = v17;
          goto LABEL_16;
        case 3:
          v16 = 0x1F0B65958;
LABEL_15:
          v18 = DerivedStorage;
LABEL_16:
          fprm_addToSessionStatsCountValue(v18, v16, v15);
          break;
        default:
          break;
      }
    }

    *DerivedStorage = v13;
    switch(a2)
    {
      case 303:
        *(DerivedStorage + 32) = v13;
        v14 = 3;
        break;
      case 304:
        break;
      case 305:
        if (*(*(OUTLINED_FUNCTION_7_42() + 16) + 64))
        {
          v24 = OUTLINED_FUNCTION_5_58();
          v25(v24);
        }

        if (!*(DerivedStorage + 104))
        {
          *(DerivedStorage + 104) = 1;
          v26 = *(DerivedStorage + 80);
          v27 = *(DerivedStorage + 96);
          v28 = *(*(CMBaseObjectGetVTable() + 16) + 88);
          if (v28)
          {
            v28(v26, 0x1F0B645F8, 0x1F0B3F938, (v13 - v27) / 0xF4240uLL);
          }
        }

        break;
      case 306:
        if (v9)
        {
          *(DerivedStorage + 16) = v9;
          *(DerivedStorage + 24) = v13;
          v14 = 2;
        }

        else
        {
          v14 = 1;
        }

        break;
      case 307:
        fprm_setSessionEndReasonIfFatalError(DerivedStorage, @"playerStats", 0, 0x1F0B65A58, 0x1F0B65A98, 0x1F0B65A78);
        v21 = *(DerivedStorage + 80);
        v22 = *(DerivedStorage + 88);
        v23 = *(*(CMBaseObjectGetVTable() + 16) + 64);
        if (v23)
        {
          v23(v21, v22, 0x1F0B65A38, 1);
        }

        break;
      default:
        if (a2 == 402)
        {
          fprm_setSessionEndReasonIfFatalError(DerivedStorage, 0x1F0B64598, 0x1F0B3F818, 0x1F0B3F798, 0x1F0B3F7D8, 0x1F0B3F7B8);
          if (*(*(OUTLINED_FUNCTION_7_42() + 16) + 64))
          {
            v29 = OUTLINED_FUNCTION_5_58();
            v30(v29);
          }

          *(DerivedStorage + 48) = v13;
        }

        else if (a2 == 502)
        {
          fprm_setSessionEndReasonIfFatalError(DerivedStorage, 0x1F0B645B8, 0x1F0B3F8B8, 0x1F0B3F858, 0x1F0B3F898, 0x1F0B3F878);
          if (*(*(OUTLINED_FUNCTION_7_42() + 16) + 64))
          {
            v19 = OUTLINED_FUNCTION_5_58();
            v20(v19);
          }

          *(DerivedStorage + 56) = v13;
        }

        break;
    }

    *(DerivedStorage + 8) = v14;
    v31 = v85[0];
    FigGetUpTimeNanoseconds();
    v32 = a2 != 306 || v31 == 0;
    v33 = !v32;
    if (a2 == 303 || v33)
    {
      if (*(DerivedStorage + 24) && *(*(OUTLINED_FUNCTION_7_42() + 16) + 88))
      {
        v34 = OUTLINED_FUNCTION_3_64();
        v35(v34);
      }

      if (*(DerivedStorage + 32) && *(*(OUTLINED_FUNCTION_7_42() + 16) + 88))
      {
        v36 = OUTLINED_FUNCTION_3_64();
        v37(v36);
      }
    }

    if (*(DerivedStorage + 56) && *(*(OUTLINED_FUNCTION_7_42() + 16) + 88))
    {
      v38 = OUTLINED_FUNCTION_3_64();
      v39(v38);
    }

    if (*(DerivedStorage + 48) && *(*(OUTLINED_FUNCTION_7_42() + 16) + 88))
    {
      v40 = OUTLINED_FUNCTION_3_64();
      v41(v40);
    }

    if (a2 == 901 || a2 == 101)
    {
      v90 = 0;
      v91 = 0;
      v88 = 0;
      v89 = 0;
      v87 = 0;
      if (*(*(CMBaseObjectGetVTable() + 16) + 48))
      {
        v42 = OUTLINED_FUNCTION_765();
        v43(v42);
      }

      if (*(*(CMBaseObjectGetVTable() + 16) + 48))
      {
        v44 = OUTLINED_FUNCTION_765();
        v45(v44);
      }

      if (*(*(CMBaseObjectGetVTable() + 16) + 48))
      {
        v46 = OUTLINED_FUNCTION_765();
        v47(v46);
      }

      if (*(*(CMBaseObjectGetVTable() + 16) + 48))
      {
        v48 = OUTLINED_FUNCTION_765();
        v49(v48);
      }

      if (*(*(CMBaseObjectGetVTable() + 16) + 48))
      {
        v50 = OUTLINED_FUNCTION_765();
        v51(v50);
      }

      v86 = 0;
      if (*(*(CMBaseObjectGetVTable() + 16) + 40))
      {
        v52 = OUTLINED_FUNCTION_765();
        v53(v52);
      }

      if (v86)
      {
        if (*(*(OUTLINED_FUNCTION_8_31() + 16) + 40))
        {
          v54 = OUTLINED_FUNCTION_0_88();
          v55(v54);
        }

        if (*(*(CMBaseObjectGetVTable() + 16) + 88))
        {
          v56 = OUTLINED_FUNCTION_292();
          v57(v56);
        }
      }

      if (v89)
      {
        if (*(*(OUTLINED_FUNCTION_8_31() + 16) + 48))
        {
          v58 = OUTLINED_FUNCTION_0_88();
          if (!v59(v58) && v92 && *(*(CMBaseObjectGetVTable() + 16) + 88))
          {
            v60 = OUTLINED_FUNCTION_292();
            v61(v60);
          }
        }
      }

      if (v88)
      {
        if (*(*(OUTLINED_FUNCTION_8_31() + 16) + 40))
        {
          v62 = OUTLINED_FUNCTION_0_88();
          v63(v62);
        }

        if (*(*(CMBaseObjectGetVTable() + 16) + 88))
        {
          v64 = OUTLINED_FUNCTION_292();
          v65(v64);
        }
      }

      if (v87)
      {
        if (*(*(OUTLINED_FUNCTION_8_31() + 16) + 40))
        {
          v66 = OUTLINED_FUNCTION_0_88();
          v67(v66);
        }

        if (*(*(CMBaseObjectGetVTable() + 16) + 88))
        {
          v68 = OUTLINED_FUNCTION_292();
          v69(v68);
        }
      }

      if (v90)
      {
        v92 = 0;
        memset(&v85[1], 0, 24);
        if (*(*(CMBaseObjectGetVTable() + 16) + 48))
        {
          v70 = OUTLINED_FUNCTION_0_88();
          v71(v70);
        }

        if (*(*(CMBaseObjectGetVTable() + 16) + 48))
        {
          v72 = OUTLINED_FUNCTION_765();
          v73(v72);
        }

        if (*(*(CMBaseObjectGetVTable() + 16) + 48))
        {
          v74 = OUTLINED_FUNCTION_765();
          v75(v74);
        }

        if (*(*(CMBaseObjectGetVTable() + 16) + 48))
        {
          v76 = OUTLINED_FUNCTION_765();
          v77(v76);
        }

        if (*(*(CMBaseObjectGetVTable() + 16) + 88))
        {
          v78 = OUTLINED_FUNCTION_292();
          v79(v78);
        }
      }
    }

    MEMORY[0x19A8D3660](&fprm_copyEventKeyArray_sCreateStaticKeyArrayFromEventKeysOnce, fprm_createStaticKeyArrayFromEventKeys);
    if (!v32 & v80)
    {
      v81 = &qword_1ED4CAB78;
      if (a2 != 101)
      {
        switch(a2)
        {
          case 401:
            v81 = &qword_1ED4CABA0;
            break;
          case 402:
            v81 = &qword_1ED4CABA8;
            break;
          case 502:
            v81 = &qword_1ED4CABB0;
            break;
          case 800:
            v81 = &qword_1ED4CABC8;
            break;
          case 801:
            v81 = &qword_1ED4CABD0;
            break;
          case 802:
            v81 = &qword_1ED4CABD8;
            break;
          case 900:
            v81 = &qword_1ED4CABC0;
            break;
          case 901:
            break;
          default:
            v82 = 0;
LABEL_130:
            result = 0;
            *a3 = v82;
            if (a2 != 101 && v84)
            {
              if (_MergedGlobals_60)
              {
                v83 = CFRetain(_MergedGlobals_60);
              }

              else
              {
                v83 = 0;
              }

              result = 0;
              *v84 = v83;
            }

            return result;
        }
      }
    }

    else
    {
      switch(a2)
      {
        case 303:
          v81 = &qword_1ED4CAB98;
          break;
        case 304:
          v81 = &qword_1ED4CAB88;
          break;
        case 305:
          v81 = &qword_1ED4CAB90;
          break;
        case 306:
          v81 = &qword_1ED4CAB80;
          break;
        case 307:
          v81 = &qword_1ED4CABB8;
          break;
        default:
          JUMPOUT(0);
      }
    }

    v82 = *v81;
    if (*v81)
    {
      CFRetain(*v81);
    }

    goto LABEL_130;
  }

  v10 = *(DerivedStorage + 80);
  v11 = *(*(CMBaseObjectGetVTable() + 16) + 40);
  if (!v11)
  {
    return 4294954514;
  }

  result = v11(v10, 1, 0x1F0B5A678, v85);
  if (!result)
  {
    v9 = v85[0];
    goto LABEL_8;
  }

  return result;
}

uint64_t fprm_setCFTypeFromKeyInStats(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v18 = 0;
  if (a2)
  {
    if (a3)
    {
      if (a4)
      {
        v7 = result;
        v8 = *(result + 80);
        VTable = CMBaseObjectGetVTable();
        v10 = *(VTable + 16);
        result = VTable + 16;
        v11 = *(v10 + 152);
        if (v11)
        {
          result = v11(v8, a2, a3, &v18);
          if (!result)
          {
            v12 = *(v7 + 80);
            v13 = *(v7 + 88);
            v14 = v18;
            v15 = CMBaseObjectGetVTable();
            v16 = *(v15 + 16);
            result = v15 + 16;
            v17 = *(v16 + 80);
            if (v17)
            {
              return v17(v12, v13, a4, v14);
            }
          }
        }
      }
    }
  }

  return result;
}

CFArrayRef fprm_createStaticKeyArrayFromEventKeys()
{
  v30 = *MEMORY[0x1E69E9840];
  memcpy(v29, off_1E74897E0, sizeof(v29));
  v0 = OUTLINED_FUNCTION_4_9();
  result = CFArrayCreate(v0, v1, 166, 0);
  qword_1ED4CAB78 = result;
  if (result)
  {
    memcpy(v29, off_1E7489D10, 0x1D0uLL);
    v3 = OUTLINED_FUNCTION_4_9();
    result = CFArrayCreate(v3, v4, 58, 0);
    qword_1ED4CAB80 = result;
    if (result)
    {
      memcpy(v29, off_1E7489EE0, 0x1E8uLL);
      v5 = OUTLINED_FUNCTION_4_9();
      result = CFArrayCreate(v5, v6, 61, 0);
      qword_1ED4CAB88 = result;
      if (result)
      {
        memcpy(v29, off_1E748A0C8, 0x240uLL);
        v7 = OUTLINED_FUNCTION_4_9();
        result = CFArrayCreate(v7, v8, 72, 0);
        qword_1ED4CAB90 = result;
        if (result)
        {
          memcpy(v29, off_1E748A308, 0x260uLL);
          v9 = OUTLINED_FUNCTION_4_9();
          result = CFArrayCreate(v9, v10, 76, 0);
          qword_1ED4CAB98 = result;
          if (result)
          {
            memcpy(v29, off_1E748A568, 0x1E8uLL);
            v11 = OUTLINED_FUNCTION_4_9();
            result = CFArrayCreate(v11, v12, 61, 0);
            qword_1ED4CABA0 = result;
            if (result)
            {
              memcpy(v29, off_1E748A750, 0x270uLL);
              v13 = OUTLINED_FUNCTION_4_9();
              result = CFArrayCreate(v13, v14, 78, 0);
              qword_1ED4CABA8 = result;
              if (result)
              {
                memcpy(v29, off_1E748A9C0, 0x260uLL);
                v15 = OUTLINED_FUNCTION_4_9();
                result = CFArrayCreate(v15, v16, 76, 0);
                qword_1ED4CABB0 = result;
                if (result)
                {
                  memcpy(v29, off_1E748AC20, 0x2A0uLL);
                  v17 = OUTLINED_FUNCTION_4_9();
                  result = CFArrayCreate(v17, v18, 84, 0);
                  qword_1ED4CABB8 = result;
                  if (result)
                  {
                    v29[0] = xmmword_1E748AEC0;
                    v29[1] = *&off_1E748AED0;
                    v29[2] = xmmword_1E748AEE0;
                    v29[3] = *&off_1E748AEF0;
                    v19 = OUTLINED_FUNCTION_4_9();
                    result = CFArrayCreate(v19, v20, 8, 0);
                    qword_1ED4CABC0 = result;
                    if (result)
                    {
                      v29[0] = xmmword_1E748AF00;
                      *&v29[1] = 0;
                      v21 = OUTLINED_FUNCTION_4_9();
                      result = CFArrayCreate(v21, v22, 3, 0);
                      qword_1ED4CABC8 = result;
                      if (result)
                      {
                        v29[0] = xmmword_1E748AF18;
                        v29[1] = *&off_1E748AF28;
                        v29[2] = xmmword_1E748AF38;
                        v23 = OUTLINED_FUNCTION_4_9();
                        result = CFArrayCreate(v23, v24, 6, 0);
                        qword_1ED4CABD0 = result;
                        if (result)
                        {
                          v29[0] = xmmword_1E748AF48;
                          v25 = OUTLINED_FUNCTION_4_9();
                          result = CFArrayCreate(v25, v26, 2, 0);
                          qword_1ED4CABD8 = result;
                          if (result)
                          {
                            memcpy(v29, off_1E748AF58, 0x88uLL);
                            v27 = OUTLINED_FUNCTION_4_9();
                            result = CFArrayCreate(v27, v28, 17, 0);
                            _MergedGlobals_60 = result;
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
      }
    }
  }

  return result;
}

void CheckPesHeaderLength(int a1, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t *a5, BOOL *a6, int a7, int a8)
{
  *a6 = 0;
  *a5 = 0;
  if (a4 >= 8)
  {
    v27 = v8;
    v28 = v9;
    destination = 0;
    if (a3)
    {
      v15 = *(a3 + 6);
      destination = v15;
    }

    else
    {
      a1 = OUTLINED_FUNCTION_2_82(a1, a2 + 6, 0, a4, a5, a6, a7, a8, v24, *v25, *&v25[4], v25[6], destination);
      if (a1)
      {
        return;
      }

      v15 = destination;
    }

    if ((v15 & 0xC0) == 0x80)
    {
      if (a4 != 8)
      {
        if (a3)
        {
          p_destination = (a3 + 8);
        }

        else
        {
          p_destination = &destination;
          if (OUTLINED_FUNCTION_2_82(a1, a2 + 8, a3, a4, a5, a6, a7, a8, v24, *v25, *&v25[4], v25[6], destination))
          {
            return;
          }
        }

        v19 = *p_destination + 9;
        *a5 = v19;
        if (v19 < a4)
        {
          *a6 = 1;
        }
      }
    }

    else
    {
      v17 = 7;
      do
      {
        if (6 - a4 + v17 == 7)
        {
          return;
        }

        if (a3)
        {
          destination = *(a3 + 6 + v17 - 7);
        }

        else
        {
          a1 = OUTLINED_FUNCTION_2_82(a1, a2 + v17 - 1, a3, a4, a5, a6, a7, a8, v24, *v25, *&v25[4], v25[6], destination);
          if (a1)
          {
            return;
          }
        }

        if (v17 == 24)
        {
          emitter = fig_log_get_emitter();
          FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 4294954320, "mpeg2parser", 454, v9);
          return;
        }

        v18 = destination;
        ++v17;
      }

      while (destination == 255);
      if ((destination & 0xC0) == 0x40)
      {
        if (v17 >= a4)
        {
          return;
        }

        if (a3)
        {
          v18 = *(a3 + v17);
          destination = *(a3 + v17);
        }

        else
        {
          if (OUTLINED_FUNCTION_2_82(a1, a2 + v17, a3, a4, a5, a6, a7, a8, v24, *v25, *&v25[4], v25[6], destination))
          {
            return;
          }

          v18 = destination;
        }
      }

      else
      {
        v17 -= 2;
      }

      if ((v18 & 0xF0) == 0x20)
      {
        v20 = 5;
        goto LABEL_33;
      }

      if ((v18 & 0xF0) == 0x30)
      {
        v20 = 10;
LABEL_33:
        v21 = v17 + v20;
        *a6 = v21 < a4;
        *a5 = v21;
        return;
      }

      if (v18 == 15)
      {
        v20 = 1;
        goto LABEL_33;
      }

      v22 = fig_log_get_emitter();
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v22, 4294954320, "mpeg2parser", 472, v9);
    }
  }
}

uint64_t ReadPTSorDTSWithVerify(unsigned __int8 *a1, unint64_t *a2, int a3)
{
  v3 = *a1;
  if ((v3 & 0xFFFFFFF1) != a3)
  {
    return 0;
  }

  v4 = a1[2];
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v5 = a1[4];
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  *a2 = (v5 >> 1) | (((v4 << 7) & 0x7F00 | ((a1[1] | (((v3 >> 1) & 7) << 8)) << 15) | a1[3]) << 7);
  return 1;
}

double PesPacketListSaveChunk(void *a1, CMBlockBufferRef targetBBuf, size_t offsetToData, const void *a4, size_t dataLength, uint64_t a6)
{
  if (*(a6 + 24))
  {
    v13 = malloc_type_calloc(1uLL, 0x30uLL, 0x1020040586F8431uLL);
    if (!v13)
    {
      emitter = fig_log_get_emitter();
      v27 = v6;
      v28 = 806;
      goto LABEL_23;
    }

    v14 = v13;
    v15 = (a1 + 1);
    if (*a1)
    {
      v16 = *v15;
    }

    else
    {
      v16 = a1 + 1;
      v15 = a1;
    }

    *v16 = v13;
    *v15 = v13;
    v17 = *(a6 + 16);
    *(v13 + 1) = *a6;
    *(v13 + 2) = v17;
  }

  else
  {
    v14 = a1[1];
    if (!v14)
    {
      return result;
    }
  }

  v20 = v14[1];
  v19 = (v14 + 1);
  v18 = v20;
  if (!v20)
  {
    if (CMBlockBufferCreateEmpty(*MEMORY[0x1E695E480], 4u, 0, v19))
    {
      return result;
    }

    v18 = *v19;
    if (!*v19)
    {
      return result;
    }
  }

  if (targetBBuf)
  {

    CMBlockBufferAppendBufferReference(v18, targetBBuf, offsetToData, dataLength, 0);
    return result;
  }

  v22 = *MEMORY[0x1E695E488];
  v23 = MEMORY[0x19A8CC720](*MEMORY[0x1E695E488], dataLength, 560154730, 0);
  if (v23)
  {
    v24 = v23;
    memcpy(v23, a4, dataLength);
    v25 = *v19;

    CMBlockBufferAppendMemoryBlock(v25, v24, dataLength, v22, 0, 0, dataLength, 0);
    return result;
  }

  emitter = fig_log_get_emitter();
  v27 = v6;
  v28 = 831;
LABEL_23:

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 12, "mpeg2parser", v28, v27);
}

void *FrameQueueEntryMakeRetainable(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  if (!*(a2 + 145))
  {
    v3 = malloc_type_calloc(1uLL, 0x98uLL, 0x10B0040949082C0uLL);
    if (v3)
    {
      v4 = v3;
      v3[8] = 0;
      v3[9] = v3 + 8;
      FrameQueueMove(v3, v2);
      *(v4 + 145) = 1;
      return v4;
    }

    else
    {
      return 0;
    }
  }

  return v2;
}

uint64_t PesAddBlockBufferToFrameMemory(uint64_t a1, CMBlockBufferRef theBuffer, size_t offset, size_t a4, unint64_t a5, void *a6, char *a7)
{
  *a6 = 0;
  if (!a4)
  {
    return 0;
  }

  v10 = a4;
  lengthAtOffsetOut = 0;
  dataPointerOut = 0;
  v16 = 0;
  while (1)
  {
    result = CMBlockBufferGetDataPointer(theBuffer, offset, &lengthAtOffsetOut, 0, &dataPointerOut);
    if (result)
    {
      break;
    }

    v15 = v10 >= lengthAtOffsetOut ? lengthAtOffsetOut : v10;
    result = PesAddMemoryToFrameMemory(a1, dataPointerOut, v15, a5, &v16, a7);
    if (result)
    {
      break;
    }

    *a6 += v16;
    offset += v15;
    v10 -= v15;
    if (!v10)
    {
      return 0;
    }
  }

  return result;
}

double PesAddBlockBufferToFrameBlockBuffer(uint64_t a1, CMBlockBufferRef theBuffer, size_t offset, size_t dataLength, size_t a5, size_t *a6, BOOL *a7)
{
  if (!theBuffer || (v8 = dataLength) == 0)
  {
    emitter = fig_log_get_emitter();

    return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 4294954326, "mpeg2parser", 1186, v7);
  }

  if (*(a1 + 608))
  {
    v26 = OUTLINED_FUNCTION_1_85();

    PesAddBlockBufferToFrameMemory(v26, v27, v28, v29, v30, v31, v32);
    return result;
  }

  if (*(a1 + 116) && !*(a1 + 512))
  {
    if (dataLength < a5)
    {
      goto LABEL_26;
    }

    v34 = 0;
    lengthAtOffsetOut = 0;
    if (CMBlockBufferGetDataPointer(theBuffer, offset, &lengthAtOffsetOut, 0, &v34))
    {
      return result;
    }

    if (lengthAtOffsetOut < v8 || *(a1 + 117) && (v34 & 3) != 0 || *(a1 + 118) && (v34 & 0xF) != 0)
    {
LABEL_26:
      v19 = OUTLINED_FUNCTION_1_85();
      PesAddBlockBufferToFrameMemory(v19, v20, v21, v22, v23, v24, v25);
      return result;
    }
  }

  if (*(a1 + 656))
  {
    v15 = *(a1 + 624);
    if (v15)
    {
      goto LABEL_8;
    }
  }

  else
  {
    *(a1 + 656) = 1;
    *(a1 + 624) = a5;
    *(a1 + 616) = 0;
    v15 = a5;
    if (a5)
    {
LABEL_8:
      if (v15 - *(a1 + 616) < v8)
      {
        v8 = v15 - *(a1 + 616);
      }
    }
  }

  v16 = *(a1 + 512);
  if (v16)
  {
    if (v15 != a5)
    {
      fig_log_get_emitter();
      return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v34, lengthAtOffsetOut, v36);
    }
  }

  else
  {
    if (CMBlockBufferCreateEmpty(*(*(a1 + 8) + 40), *(a1 + 652), 0, (a1 + 512)))
    {
      return result;
    }

    v16 = *(a1 + 512);
  }

  CMBlockBufferAppendBufferReference(v16, theBuffer, offset, v8, 0);
  ++*(a1 + 648);
  *a6 = v8;
  v18 = *(a1 + 616) + v8;
  *(a1 + 616) = v18;
  *a7 = a5 - 1 < v18;
  return result;
}

void *PesFrameHeaderFinalizeFrame(void *result, int a2)
{
  if (result)
  {
    v2 = result;
    v3 = result[68];
    if (v3)
    {
      *(result[71] + 8 * v3 - 8) = result[77] - *(result[70] + 8 * v3 - 8);
      if (a2)
      {
        v4 = result[68];
        if (v4)
        {
          for (i = 0; i < v4; ++i)
          {
            v6 = bswap32(*(v2[71] + 8 * i) - 4);
            sourceBytes = v6;
            v7 = v2[76];
            if (v7)
            {
              *(v7 + *(v2[70] + 8 * i)) = v6;
            }

            else
            {
              result = CMBlockBufferReplaceDataBytes(&sourceBytes, v2[64], *(v2[70] + 8 * i), 4uLL);
              if (result)
              {
                return result;
              }

              v4 = v2[68];
            }
          }
        }
      }
    }

    return 0;
  }

  return result;
}

uint64_t FigMPEG2AudioFrameQueueEntryAdjustTimestampsAndEmit(uint64_t *a1, uint64_t a2)
{
  memset(&v50, 0, sizeof(v50));
  if (*(a2 + 48) && *(a2 + 49))
  {
    *(a2 + 80) |= 0x1000u;
  }

  v4 = a1[1];
  v5 = *(v4 + 100);
  if (v5 == 1)
  {
    if (*(a1 + 658))
    {
      v7 = a1[97];
      v6 = a1[85] + 90000 * v7 / *(a1 + 192);
    }

    else
    {
      v7 = 0;
      *(a1 + 658) = 1;
      v6 = *(a2 + 24);
      a1[85] = v6;
    }

    v16 = *(a2 + 128);
    *(a1 + 193) = v16;
    a1[97] = v7 + v16;
    a1[86] = v6;
    goto LABEL_41;
  }

  if (!v5)
  {
    *(a1 + 658) = 1;
    if (!*(a2 + 49))
    {
      v50 = **&MEMORY[0x1E6960C70];
LABEL_42:
      v32 = *(a1 + 84);
      if (v32)
      {
        v33 = *a1[1];
        v34 = *(a1 + 15);
        v35 = a1[13];
        v36 = *(a2 + 56);
        v37 = *(a2 + 80);
        v38 = *(a2 + 40);
        v49 = v50;
        v48 = v50;
        v39 = v32(v33, v34, v35, v36, &v49, &v48, v37, v38, 0, 0, 0, 0);
      }

      else
      {
        v39 = 0;
      }

      FrameQueueEntryDestroy(a2);
      return v39;
    }

    v6 = *(a2 + 24);
LABEL_41:
    CMTimeMake(&v50, v6, 90000);
    goto LABEL_42;
  }

  v8 = *(a2 + 49);
  *(a2 + 50) = v8;
  v9 = *(a2 + 24);
  *(a2 + 32) = v9;
  if (a1[91])
  {
    Retainable = FrameQueueEntryMakeRetainable(a1, a2);
    Retainable[2] = a1;
    *Retainable = 0;
    v20 = a1[92];
    Retainable[1] = v20;
    v21 = OUTLINED_FUNCTION_3_65(Retainable, v20);
    if (v22 < 0x10)
    {
      return 0;
    }

    *&v49.value = 0uLL;
    v23 = a1[1];
    v24 = a1[91];
    if (*(v23 + 448))
    {
      if (v24)
      {
        v25 = a1[89];
        v26 = a1[86] + (90000 * *(a1 + 193)) / *(a1 + 192);
        v27 = *(v24 + 24);
        v28 = v25;
        if ((v27 & 0x100000000) == 0)
        {
          v28 = a1[89];
          if ((a1[84] & 0x100000000) != 0)
          {
            v28 = v25 + 0x200000000;
            a1[89] = v25 + 0x200000000;
          }
        }

        v29 = v28 + v27 + *(*a1 + 64);
        if (v29 > *(v23 + 160) + v26)
        {
          a1[89] = v25;
          fig_log_get_emitter();
          FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v45, v46, v47);
          return v30;
        }

        if (v29 < v26)
        {
          a1[89] = v25;
LABEL_63:
          v44 = v24;
          do
          {
            *(v44 + 49) = 0;
            v44 = *v44;
          }

          while (v44);
          *(v24 + 8) = &v49;
          v49.value = v24;
          *&v49.timescale = v21;
          a1[91] = 0;
          a1[92] = (a1 + 91);
          return FigMPEG2ParseFromQueue(&v49);
        }

        *(v24 + 146) = 1;
        v49.value = 0;
        *&v49.timescale = &v49;
        FigMPEG2MoveAdjustmentQueue(a1, &v49);
        return FigMPEG2ParseFromQueue(&v49);
      }
    }

    else if (v24)
    {
      goto LABEL_63;
    }

    *&v49.timescale = &v49;
    return FigMPEG2ParseFromQueue(&v49);
  }

  if (!v8)
  {
    v15 = a1[97];
    v6 = a1[85] + 90000 * v15 / *(a1 + 192);
    goto LABEL_40;
  }

  v10 = a1[89];
  if (!*(a1 + 658))
  {
    v18 = *(*a1 + 64);
    if ((v9 & 0x100000000) != 0 && !v18)
    {
      v18 = 0;
      if (0x200000000 - v9 < *(v4 + 160))
      {
        v10 -= 0x200000000;
        a1[89] = v10;
      }
    }

    v15 = 0;
    a1[83] = v9;
    v6 = v18 + v9 + v10;
    a1[84] = v9;
    a1[85] = v6;
    a1[95] = v9;
    *(a1 + 658) = 1;
    goto LABEL_40;
  }

  v11 = a1[89];
  if ((v9 & 0x100000000) == 0)
  {
    v11 = a1[89];
    if ((a1[84] & 0x100000000) != 0)
    {
      v11 = v10 + 0x200000000;
      a1[89] = v10 + 0x200000000;
    }
  }

  v12 = v11 + v9;
  v13 = *a1;
  v14 = v12 + *(*a1 + 64);
  if (v14 >= a1[85] || !*(v4 + 448))
  {
    if (!*(a2 + 146))
    {
      v17 = v14 - (a1[86] + (90000 * *(a1 + 193)) / *(a1 + 192));
      if (v17)
      {
        v41 = *(v4 + 160);
        if (v17 < -2 || v17 > v41)
        {
          goto LABEL_18;
        }

        if ((v17 - 3) < 0xFFFFFFFFFFFFFFFBLL)
        {
          v6 = OUTLINED_FUNCTION_4_67(v14, v9);
          *(a2 + 80) |= 1u;
          goto LABEL_40;
        }
      }
    }

    v6 = OUTLINED_FUNCTION_4_67(v14, v9);
    goto LABEL_40;
  }

LABEL_18:
  a1[89] = v10;
  *(a2 + 80) |= 1u;
  if (*(v13 + 72) < 2u)
  {
    v15 = 0;
    a1[89] = 0;
    v6 = a1[86] + (90000 * *(a1 + 193)) / *(a1 + 192);
    *(v13 + 64) = v6 - v9;
    a1[86] = v6;
    a1[85] = v6;
    a1[83] = v9;
    a1[84] = v9;
LABEL_40:
    a1[86] = v6;
    ++*(a1 + 188);
    v31 = *(a2 + 128);
    *(a1 + 193) = v31;
    a1[97] = v15 + v31;
    goto LABEL_41;
  }

  v30 = AddAudioFrameToAdjustmentQueue(a1, a2);
  if (v30)
  {
    return v30;
  }

  v43 = *a1;

  return ProgramCheckPesForTimestampChanges(v43);
}

uint64_t AddAudioFrameToAdjustmentQueue(uint64_t a1, uint64_t a2)
{
  Retainable = FrameQueueEntryMakeRetainable(a1, a2);
  Retainable[2] = a1;
  v4 = *(a1 + 736);
  *Retainable = 0;
  Retainable[1] = v4;
  OUTLINED_FUNCTION_3_65(Retainable, v4);
  return 0;
}

uint64_t ProgramCheckPesForTimestampChanges(uint64_t a1)
{
  if (*(a1 + 72) < 2u)
  {
    return 0;
  }

  v26 = v1;
  v27 = v2;
  v24 = 0;
  v25 = 0;
  v4 = *(a1 + 24);
  if (v4)
  {
    v5 = 0;
    v6 = 0;
    v7 = *(a1 + 24);
    do
    {
      if (*(v7 + 80))
      {
        if (!*(v7 + 728))
        {
          return 0;
        }

        v8 = GetMinimumPTSFromAdjustmentQueue(v7) & 0x180000000;
        v6 |= v8 == 0x180000000;
        v5 |= v8 == 0;
      }

      v7 = *(v7 + 16);
    }

    while (v7);
    if (v6)
    {
      v9 = v5 != 0;
    }

    else
    {
      v9 = 0;
    }

    v10 = 0;
    v11 = 1;
    v12 = v4;
    do
    {
      if (*(v12 + 80))
      {
        v13 = *(v12 + 768);
        if (v13)
        {
          v14 = *(v12 + 688) + 90000 * *(v12 + 772) / v13;
        }

        else
        {
          v14 = *(v12 + 704);
        }

        MinimumPTSFromAdjustmentQueue = GetMinimumPTSFromAdjustmentQueue(v12);
        v16 = (MinimumPTSFromAdjustmentQueue & 0x100000000) == 0;
        if (v9 && v16)
        {
          v17 = 0x200000000;
        }

        else
        {
          v17 = 0;
        }

        if (v9 && v16)
        {
          v18 = MinimumPTSFromAdjustmentQueue + 0x200000000;
        }

        else
        {
          v18 = MinimumPTSFromAdjustmentQueue;
        }

        *(v12 + 712) = v17;
        if (v11)
        {
          v11 = 0;
          v10 = v14 - v18;
        }

        else
        {
          v19 = v18 + v10;
          v20 = v14 - v18;
          if (v19 < v14)
          {
            v10 = v20;
          }
        }
      }

      else
      {
        *(v12 + 712) = 0;
      }

      v12 = *(v12 + 16);
    }

    while (v12);
    *(a1 + 64) = v10;
    v24 = 0;
    v25 = &v24;
    v21 = &v24;
    do
    {
      v22 = *(v4 + 728);
      if (v22)
      {
        *(v22 + 80) |= 1u;
        *v21 = v22;
        *(*(v4 + 728) + 8) = v25;
        v21 = *(v4 + 736);
        v25 = v21;
        *(v4 + 728) = 0;
        *(v4 + 736) = v4 + 728;
      }

      *(v4 + 744) = 0;
      *(v4 + 658) = 0;
      *(v4 + 776) = 0;
      *(v4 + 800) = 0;
      v4 = *(v4 + 16);
    }

    while (v4);
  }

  else
  {
    *(a1 + 64) = 0;
    v25 = &v24;
  }

  return FigMPEG2ParseFromQueue(&v24);
}

void AddPes_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void ReadTimestampFromPesHeader_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void ReadTimestampFromPesHeader_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void ReadTimestampFromPesHeader_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void ReadTimestampFromPesHeader_cold_4(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void ReadTimestampFromPesHeader_cold_5(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void ReadTimestampFromPesHeader_cold_6(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void ProcessPesData_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void ProcessPesData_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void ProcessPesData_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void PesAddMemoryToFrameMemory_cold_1(uint64_t a1, _DWORD *a2)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v5, v6, v7);
  *a2 = v4;

  PesCleanAfterFrameEmit(a1);
}

void PesAddMemoryToFrameBlockBuffer_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void PesAddMemoryToFrameBlockBuffer_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void PesAddMemoryToFrameBlockBuffer_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

uint64_t DolbyDoneWithFrame(uint64_t *a1, uint64_t a2)
{
  v13 = *MEMORY[0x1E69E9840];
  returnedPointerOut = 0;
  v10 = 0;
  result = CMBlockBufferAccessDataBytes(*(a2 + 56), 0, 0xAuLL, temporaryBlock, &returnedPointerOut);
  if (result)
  {
    return result;
  }

  v5 = a1[6];
  if (DolbyGetFormatID(returnedPointerOut) != 1633889587)
  {
    result = DDPlusGetSyncFrameInfo(returnedPointerOut, &v10 + 1, &v10);
    if (result)
    {
      return result;
    }

    if ((v10 & 0xFD00u) != 0 || v10)
    {
      result = *(v5 + 384);
      if (!result)
      {
        return result;
      }

      OUTLINED_FUNCTION_0_89(result);
      return 0;
    }

    AudioBlockCountForSyncFrame = DDPlusGetAudioBlockCountForSyncFrame(returnedPointerOut);
    if (!*(v5 + 384))
    {
      goto LABEL_26;
    }

    v7 = *(v5 + 480);
    if (*(a2 + 48))
    {
      if (v7 < 6)
      {
        FrameQueueEntryClean(v5 + 328);
        *(v5 + 480) = 0;
        v8 = *(v5 + 384);
        if (!v8)
        {
          goto LABEL_26;
        }

        goto LABEL_24;
      }
    }

    else if (v7 < 6)
    {
      v9 = 1;
      goto LABEL_23;
    }

    *(v5 + 480) = 0;
    result = FigMPEG2AudioFrameQueueEntryAdjustTimestampsAndEmit(a1, v5 + 328);
    if (result)
    {
      return result;
    }

    FrameQueueEntryClean(v5 + 328);
    v9 = 0;
LABEL_23:
    v8 = *(v5 + 384);
    if (!v8)
    {
      if (!v9)
      {
LABEL_27:
        FrameQueueMove(v5 + 328, a2);
        goto LABEL_28;
      }

LABEL_26:
      if (!*(a2 + 48))
      {
        return 0;
      }

      goto LABEL_27;
    }

LABEL_24:
    OUTLINED_FUNCTION_0_89(v8);
LABEL_28:
    result = 0;
    *(v5 + 480) += AudioBlockCountForSyncFrame;
    return result;
  }

  if (!*(v5 + 384))
  {
    return FigMPEG2AudioFrameQueueEntryAdjustTimestampsAndEmit(a1, (a1 + 57));
  }

  *(v5 + 480) = 0;
  result = FigMPEG2AudioFrameQueueEntryAdjustTimestampsAndEmit(a1, v5 + 328);
  if (!result)
  {
    FrameQueueEntryClean(v5 + 328);
    return FigMPEG2AudioFrameQueueEntryAdjustTimestampsAndEmit(a1, (a1 + 57));
  }

  return result;
}

uint64_t FigSampleBufferConsumerCreateForSampleBufferConsumer(const char *a1, CFTypeRef *a2)
{
  if (!a2)
  {
    return 4294954535;
  }

  v4 = *MEMORY[0x1E695E480];
  FigSampleBufferConsumerGetClassID();
  v5 = CMDerivedObjectCreate();
  if (v5)
  {
    return v5;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v7 = FigReentrantMutexCreate();
  *DerivedStorage = v7;
  if (!v7)
  {
    return 4294954536;
  }

  CallbacksForUnsortedSampleBuffers = CMBufferQueueGetCallbacksForUnsortedSampleBuffers();
  v5 = CMBufferQueueCreate(v4, 0, CallbacksForUnsortedSampleBuffers, (DerivedStorage + 16));
  if (v5)
  {
    return v5;
  }

  Mutable = CFArrayCreateMutable(v4, 0, MEMORY[0x1E695E9C0]);
  *(DerivedStorage + 8) = Mutable;
  if (!Mutable)
  {
    return 4294954536;
  }

  v10 = CFDictionaryCreateMutable(v4, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  *(DerivedStorage + 24) = v10;
  if (!v10)
  {
    return 4294954536;
  }

  v11 = FigCFWeakReferenceHolderCreateWithReferencedObject();
  *(DerivedStorage + 48) = v11;
  if (!v11)
  {
    return 4294954536;
  }

  v12 = MEMORY[0x1E6960C70];
  v13 = *MEMORY[0x1E6960C70];
  *(DerivedStorage + 64) = *MEMORY[0x1E6960C70];
  v14 = *(v12 + 16);
  *(DerivedStorage + 80) = v14;
  *(DerivedStorage + 88) = v13;
  *(DerivedStorage + 104) = v14;
  v15 = FigDispatchQueueCreateWithPriority();
  *(DerivedStorage + 32) = v15;
  if (!v15)
  {
    return 4294954536;
  }

  if (a1)
  {
    v16 = a1;
  }

  else
  {
    v16 = "-";
  }

  v17 = 0;
  *(DerivedStorage + 112) = CFStringCreateWithCString(v4, v16, 0x8000100u);
  *a2 = 0;
  return v17;
}

uint64_t sbcsbc_setProperty(uint64_t a1, const void *a2, uint64_t a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  if (!FigCFEqual())
  {
    if (FigCFEqual())
    {
      if (!a3)
      {
        v20 = MEMORY[0x1E6960C70];
        *(DerivedStorage + 64) = *MEMORY[0x1E6960C70];
        epoch = *(v20 + 16);
        goto LABEL_22;
      }

      v16 = CFGetTypeID(a3);
      if (v16 == CFDictionaryGetTypeID())
      {
        CMTimeMakeFromDictionary(&v26, a3);
        a3 = 0;
        *(DerivedStorage + 64) = *&v26.value;
        epoch = v26.epoch;
LABEL_22:
        *(DerivedStorage + 80) = epoch;
        goto LABEL_33;
      }

LABEL_34:
      a3 = 4294954516;
      goto LABEL_33;
    }

    if (!FigCFEqual())
    {
      if (a3)
      {
        v21 = a3;
      }

      else
      {
        v21 = @"sbcsbc_ItWasNull";
      }

      CFDictionarySetValue(*(DerivedStorage + 24), a2, v21);
      v22 = *(DerivedStorage + 40);
      if (!v22)
      {
        goto LABEL_12;
      }

      v23 = *(*(CMBaseObjectGetVTable() + 8) + 56);
      if (v23)
      {
        v15 = v23(v22, a2, a3);
        goto LABEL_29;
      }

LABEL_30:
      a3 = 4294954514;
      goto LABEL_33;
    }

    if (a3)
    {
      v18 = CFGetTypeID(a3);
      if (v18 != CFDictionaryGetTypeID())
      {
        goto LABEL_34;
      }

      CMTimeMakeFromDictionary(&v26, a3);
      a3 = 0;
      *(DerivedStorage + 88) = *&v26.value;
      v19 = v26.epoch;
    }

    else
    {
      v24 = MEMORY[0x1E6960C70];
      *(DerivedStorage + 88) = *MEMORY[0x1E6960C70];
      v19 = *(v24 + 16);
    }

    *(DerivedStorage + 104) = v19;
    goto LABEL_33;
  }

  if (a3)
  {
    v7 = CFGetTypeID(a3);
    if (v7 != FigSampleBufferConsumerGetTypeID())
    {
      goto LABEL_34;
    }
  }

  sbcsbc_detachFromDownstreamConsumer(a1);
  v8 = CMBaseObjectGetDerivedStorage();
  if (a3)
  {
    v9 = v8;
    *(v8 + 40) = a3;
    CFRetain(a3);
    if (!*(v9 + 120))
    {
LABEL_11:
      CFDictionaryApplyFunction(*(v9 + 24), sbcsbc_applyPendingPropertiesDictionaryApplier, *(v9 + 40));
      FigCFArrayApplyFunction();
      CFArrayRemoveAllValues(*(v9 + 8));
      CMBufferQueueReset(*(v9 + 16));
LABEL_12:
      a3 = 0;
      goto LABEL_33;
    }

    v10 = *(v9 + 40);
    v11 = *(*(CMBaseObjectGetVTable() + 16) + 24);
    if (v11 && v11(v10))
    {
      sbcsbc_downstreamTriggerCallback(*(v9 + 48));
    }

    v13 = *(v9 + 40);
    v12 = *(v9 + 48);
    v14 = *(*(CMBaseObjectGetVTable() + 16) + 32);
    if (v14)
    {
      v15 = v14(v13, sbcsbc_downstreamTriggerCallback, v12, v9 + 56);
      if (!v15)
      {
        goto LABEL_11;
      }

LABEL_29:
      a3 = v15;
      goto LABEL_33;
    }

    goto LABEL_30;
  }

LABEL_33:
  FigSimpleMutexUnlock();
  return a3;
}

void sbcsbc_detachFromDownstreamConsumer(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v2 = *(DerivedStorage + 40);
  if (v2)
  {
    v3 = DerivedStorage;
    v4 = *(DerivedStorage + 56);
    if (!v4)
    {
      goto LABEL_6;
    }

    v5 = *(*(CMBaseObjectGetVTable() + 16) + 40);
    if (v5)
    {
      v5(v2, v4);
    }

    *(v3 + 56) = 0;
    v2 = *(v3 + 40);
    if (v2)
    {
LABEL_6:
      CFRelease(v2);
      *(v3 + 40) = 0;
    }
  }
}

void sbcsbc_downstreamTriggerCallback(uint64_t a1)
{
  v1 = FigCFWeakReferenceHolderCopyReferencedObject();
  if (v1)
  {
    v2 = v1;
    v3 = *(CMBaseObjectGetDerivedStorage() + 32);

    dispatch_async_f(v3, v2, sbcsbc_downstreamTriggerCallbackAsync);
  }
}

void sbcsbc_InstallLowWaterTrigger_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void sbcsbc_InstallLowWaterTrigger_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void sbcsbc_RemoveLowWaterTrigger_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void dwpm_markAlternateAndMediaSelectionCompleteDispatch(uint64_t *a1)
{
  v6 = OUTLINED_FUNCTION_0_90(a1);
  Seconds = CMTimeGetSeconds(&v14);
  if (*(v6 + 111))
  {
    OUTLINED_FUNCTION_243();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
  }

  else if (v5 >= 1 && !*(v6 + 108))
  {
    v8 = Seconds;
    DownloadProgressItemForAlternateAndSelectedMediaArray = dwpm_findDownloadProgressItemForAlternateAndSelectedMediaArray(v2, v4, v3);
    if (DownloadProgressItemForAlternateAndSelectedMediaArray)
    {
      v10 = DownloadProgressItemForAlternateAndSelectedMediaArray[4];
      DownloadProgressItemForAlternateAndSelectedMediaArray[4].i64[1] = v5;
      DownloadProgressItemForAlternateAndSelectedMediaArray[5].i64[0] = v8;
      *(v6 + 56) = vaddq_s64(vsubq_s64(vdupq_n_s64(v5), v10), *(v6 + 56));
      DownloadProgressItemForAlternateAndSelectedMediaArray[5].i8[8] = 1;
      v11 = FigMediaSelectionArrayCopyDescription(*(v6 + 8), v3);
      dwpm_sendProgressNotification(v2);
      if (v11)
      {
        CFRelease(v11);
      }
    }

    else
    {
      OUTLINED_FUNCTION_243();
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
    }
  }

  if (*v1)
  {
    CFRelease(*v1);
  }

  v12 = *(v1 + 16);
  if (v12)
  {
    CFRelease(v12);
  }

  v13 = *(v1 + 24);
  if (v13)
  {
    CFRelease(v13);
  }

  free(v1);
}

void dwpm_upadateMediaDownloadedTimeAndBytesDispatch(uint64_t *a1)
{
  v6 = OUTLINED_FUNCTION_0_90(a1);
  Seconds = CMTimeGetSeconds(&v23);
  if (!*(v6 + 108))
  {
    if (*(v6 + 111))
    {
      OUTLINED_FUNCTION_243();
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
    }

    else
    {
      v8 = Seconds;
      if (v5 >= 1 && v8 >= 1)
      {
        DownloadProgressItemForAlternateAndSelectedMediaArray = dwpm_findDownloadProgressItemForAlternateAndSelectedMediaArray(v2, v4, v3);
        if (DownloadProgressItemForAlternateAndSelectedMediaArray)
        {
          DownloadProgressItemForAlternateAndSelectedMediaArray[10] = v8;
          *(v6 + 64) += v5 - DownloadProgressItemForAlternateAndSelectedMediaArray[9];
          DownloadProgressItemForAlternateAndSelectedMediaArray[9] = v5;
          v11 = FigMediaSelectionArrayCopyDescription(*(v6 + 8), v3);
          DerivedStorage = CMBaseObjectGetDerivedStorage();
          if (FigGetUpTimeNanoseconds() - *(DerivedStorage + 88) >= 5000000000)
          {
            *(DerivedStorage + 88) = FigGetUpTimeNanoseconds();
            for (i = *(DerivedStorage + 72); i; i = *i)
            {
              v14 = CMBaseObjectGetDerivedStorage();
              if (!*(i + 88))
              {
                v15 = i[10];
                if (v15 >= 300 && !*(i + 56))
                {
                  v16 = v14;
                  v17 = i[8];
                  v18 = (i[9] / v15);
                  v23 = *(i + 4);
                  v19 = CMTimeGetSeconds(&v23) * v18;
                  i[8] = v19;
                  *(v16 + 56) += v19 - v17;
                  v20 = FigMediaSelectionArrayCopyDescription(*(v16 + 8), i[3]);
                  if (v20)
                  {
                    CFRelease(v20);
                  }
                }
              }
            }
          }

          dwpm_sendProgressNotification(v2);
          if (v11)
          {
            CFRelease(v11);
          }
        }

        else
        {
          OUTLINED_FUNCTION_243();
          FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
        }
      }
    }
  }

  if (*v1)
  {
    CFRelease(*v1);
  }

  v21 = *(v1 + 16);
  if (v21)
  {
    CFRelease(v21);
  }

  v22 = *(v1 + 24);
  if (v22)
  {
    CFRelease(v22);
  }

  free(v1);
}

void dwpm_updateExpectedMediaBytesToDownloadDispatch(void *a1)
{
  v3 = *a1;
  v5 = a1[2];
  v4 = a1[3];
  v6 = a1[12];
  v7 = *(a1 + 128);
  v14 = *(a1 + 13);
  v15 = a1[15];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 111))
  {
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF171E0, 4294951495, "<dw-prog>", 393, v1);
  }

  else if (v6 >= 1)
  {
    v9 = DerivedStorage;
    DownloadProgressItemForAlternateAndSelectedMediaArray = dwpm_findDownloadProgressItemForAlternateAndSelectedMediaArray(v3, v5, v4);
    if (DownloadProgressItemForAlternateAndSelectedMediaArray)
    {
      *(v9 + 56) += v6;
      DownloadProgressItemForAlternateAndSelectedMediaArray[8] += v6;
      *(DownloadProgressItemForAlternateAndSelectedMediaArray + 2) = v14;
      DownloadProgressItemForAlternateAndSelectedMediaArray[6] = v15;
      if (*(DownloadProgressItemForAlternateAndSelectedMediaArray + 56))
      {
        *(DownloadProgressItemForAlternateAndSelectedMediaArray + 56) = v7;
      }

      v11 = FigMediaSelectionArrayCopyDescription(*(v9 + 8), v4);
      if (v11)
      {
        CFRelease(v11);
      }
    }

    else
    {
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF171E0, 4294950643, "<dw-prog>", 397, v1);
    }
  }

  if (*a1)
  {
    CFRelease(*a1);
  }

  v12 = a1[2];
  if (v12)
  {
    CFRelease(v12);
  }

  v13 = a1[3];
  if (v13)
  {
    CFRelease(v13);
  }

  free(a1);
}

void dwpm_sendProgressNotification(const void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  UpTimeNanoseconds = FigGetUpTimeNanoseconds();
  if (*(DerivedStorage + 108) && !*(DerivedStorage + 109) || UpTimeNanoseconds - *(DerivedStorage + 96) >= 1000000000)
  {
    *(DerivedStorage + 96) = FigGetUpTimeNanoseconds();
    if (!*(DerivedStorage + 109))
    {
      v4 = (*(DerivedStorage + 64) / *(DerivedStorage + 56)) * 100.0;
      if (v4 > *(DerivedStorage + 104))
      {
        *(DerivedStorage + 104) = v4;
        if (v4 <= 95.0 || *(DerivedStorage + 108) != 0)
        {
          v6 = FigCFWeakReferenceHolderCopyReferencedObject();
          if (v6)
          {
            v7 = v6;
            v8 = malloc_type_calloc(1uLL, 0x88uLL, 0x10E00407336ED58uLL);
            if (v8)
            {
              v9 = v8;
              if (a1)
              {
                v10 = CFRetain(a1);
              }

              else
              {
                v10 = 0;
              }

              *v9 = v10;
              v11 = *(DerivedStorage + 56);
              v12 = *(DerivedStorage + 64);
              v9[11] = v7;
              v9[12] = v11;
              v9[7] = v12;
              if (*(DerivedStorage + 108))
              {
                *(DerivedStorage + 109) = 1;
              }

              v13 = *(DerivedStorage + 48);

              dispatch_async_f(v13, v9, dworch_sendProgressNotificationOnCallbackQueue);
            }

            else
            {
              FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v15, v16, v17);
              if (v14)
              {

                CFRelease(v7);
              }
            }
          }
        }
      }
    }
  }
}

void dwpm_invalidateGutsOnQueue(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!*(DerivedStorage + 111))
  {
    v2 = DerivedStorage;
    *(DerivedStorage + 111) = 1;
    if (dword_1EAF171E8)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    v4 = v2[1];
    if (v4)
    {
      CFRelease(v4);
      v2[1] = 0;
    }

    v5 = v2[2];
    if (v5)
    {
      CFRelease(v5);
      v2[2] = 0;
    }

    v6 = v2[4];
    if (v6)
    {
      CFRelease(v6);
      v2[4] = 0;
    }

    v7 = v2[6];
    if (v7)
    {
      dispatch_release(v7);
      v2[6] = 0;
    }

    v8 = v2[9];
    if (v8)
    {
      v9 = v2 + 10;
      do
      {
        v11 = *v8;
        v10 = v8[1];
        v12 = (*v8 + 8);
        if (!*v8)
        {
          v12 = v9;
        }

        *v12 = v10;
        *v10 = v11;
        v13 = v8[2];
        if (v13)
        {
          CFRelease(v13);
        }

        v14 = v8[3];
        if (v14)
        {
          CFRelease(v14);
        }

        free(v8);
        v8 = v11;
      }

      while (v11);
    }
  }
}

BOOL dwpm_registerAlternateAndMediaSelectionsDispatch_cold_2(_DWORD *a1)
{
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v4, v5, vars0);
  *a1 = v2;
  return v2 == 0;
}

uint64_t FigVTTSpanCreateCopyWithValueRange(const void *a1, CFIndex a2, CFIndex a3, CFTypeRef *a4)
{
  v30 = 0;
  v31 = 0;
  theString = 0;
  cf = 0;
  v27 = 0;
  if (!a1 || (v8 = CFGetTypeID(a1), v8 != FigVTTNodeGetTypeID()))
  {
    OUTLINED_FUNCTION_429();
    OUTLINED_FUNCTION_1_37();
    v23 = 272;
LABEL_27:
    FigSignalErrorAtGM(v19, v21, v22, v20, v23);
    goto LABEL_28;
  }

  NodeType = FigVTTNodeGetNodeType(a1, &v27);
  if (NodeType)
  {
LABEL_28:
    v14 = NodeType;
    goto LABEL_29;
  }

  if (v27 != 5)
  {
    OUTLINED_FUNCTION_429();
    OUTLINED_FUNCTION_1_37();
    v23 = 275;
    goto LABEL_27;
  }

  if (!a4)
  {
    OUTLINED_FUNCTION_429();
    OUTLINED_FUNCTION_1_19();
    v23 = 276;
    goto LABEL_27;
  }

  v10 = CFGetAllocator(a1);
  NodeType = FigVTTSpanCreate(v10, &v31);
  if (NodeType)
  {
    goto LABEL_28;
  }

  NodeType = FigVTTNodeCopyValue(a1, &theString);
  if (NodeType)
  {
    goto LABEL_28;
  }

  if (theString)
  {
    Length = CFStringGetLength(theString);
    if ((a2 & 0x8000000000000000) == 0 && a2 + a3 <= Length)
    {
      v32.location = a2;
      v32.length = a3;
      v12 = CFStringCreateWithSubstring(v10, theString, v32);
      v13 = FigVTTNodeSetValue(v31, v12);
      if (v13)
      {
        goto LABEL_36;
      }

      goto LABEL_14;
    }

    OUTLINED_FUNCTION_429();
    v19 = "%s signalled err=%d at <>:%d";
    v20 = "(Fig)";
    v21 = 0;
    v22 = 4294949412;
    v23 = 293;
    goto LABEL_27;
  }

  v12 = 0;
LABEL_14:
  v13 = FigVTTNodeCopyAttributes(a1, &v30);
  if (!v13)
  {
    context = v31;
    v26 = 0;
    CFDictionaryApplyFunction(v30, figSpan_copyOneAttributeToNode, &context);
    v14 = v26;
    if (v26)
    {
LABEL_24:
      if (!v12)
      {
        goto LABEL_29;
      }

      goto LABEL_25;
    }

    v15 = 0;
    v16 = 1;
    while (1)
    {
      v17 = v16;
      if (cf)
      {
        CFRelease(cf);
        cf = 0;
      }

      v18 = off_1E748B030[v15];
      v13 = FigVTTNodeCopyProperty(a1, v18, v10, &cf);
      if (v13)
      {
        break;
      }

      if (cf)
      {
        v13 = FigVTTNodeSetProperty(v31, v18, cf);
        if (v13)
        {
          break;
        }
      }

      v16 = 0;
      v15 = 1;
      if ((v17 & 1) == 0)
      {
        v14 = 0;
        *a4 = v31;
        v31 = 0;
        goto LABEL_24;
      }
    }
  }

LABEL_36:
  v14 = v13;
  if (v12)
  {
LABEL_25:
    CFRelease(v12);
  }

LABEL_29:
  if (theString)
  {
    CFRelease(theString);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (v31)
  {
    CFRelease(v31);
  }

  return v14;
}

uint64_t figSpan_copyOneAttributeToNode(uint64_t cf, const void *a2, uint64_t a3)
{
  if (!*(a3 + 8))
  {
    v4 = cf;
    if (cf && (v6 = CFGetTypeID(cf), v6 == CFStringGetTypeID()))
    {
      cf = FigVTTNodeSetAttribute(*a3, v4, a2);
      if (!cf)
      {
        return cf;
      }
    }

    else
    {
      cf = 4294949406;
    }

    *(a3 + 8) = cf;
  }

  return cf;
}

void FigVTTSpanCreate_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_1_37();
  FigSignalErrorAtGM(v2);
  *a1 = v3;
}

void figVTTSpan_CopyProperty_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_1_19();
  FigSignalErrorAtGM(v2);
  *a1 = v3;
}

void figVTTSpan_CopyProperty_cold_2(_DWORD *a1)
{
  OUTLINED_FUNCTION_1_19();
  FigSignalErrorAtGM(v2);
  *a1 = v3;
}

void figVTTSpan_SetProperty_cold_2(_DWORD *a1)
{
  OUTLINED_FUNCTION_1_19();
  FigSignalErrorAtGM(v2);
  *a1 = v3;
}

void figVTTSpan_GetNodeType_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_1_37();
  FigSignalErrorAtGM(v2);
  *a1 = v3;
}

void figVTTSpan_copyNodeDocumentSerialization_cold_2(_DWORD *a1)
{
  OUTLINED_FUNCTION_1_37();
  FigSignalErrorAtGM(v2);
  *a1 = v3;
}

uint64_t favd_UpdateImageQueuesToMatchOutputsArray(uint64_t a1, uint64_t a2, const __CFArray *a3)
{
  v188 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v165 = a2;
  if (dword_1EAF17228)
  {
    v13 = OUTLINED_FUNCTION_14_29(qword_1EAF17220, v6, v7, v8, v9, v10, v11, v12, v132, v135, v138, v141, v144, v147, v150, allocator, DerivedStorage, v161, a2, v168, v171, 0, *&type[2], 0);
    if (os_log_type_enabled(v13, type[0]))
    {
      v14 = theArray;
    }

    else
    {
      v14 = theArray & 0xFFFFFFFE;
    }

    if (v14)
    {
      v180 = 136315650;
      OUTLINED_FUNCTION_8_32();
      v183 = a1;
      v184 = 2112;
      *v185 = a3;
      OUTLINED_FUNCTION_145();
      OUTLINED_FUNCTION_2_83();
      OUTLINED_FUNCTION_12_32();
      _os_log_send_and_compose_impl(v15, v16, v17, v18, v19, v20, v21, v22);
    }

    OUTLINED_FUNCTION_7();
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    a2 = v165;
  }

  FigSimpleMutexLock();
  CMBaseObjectGetDerivedStorage();
  CMBaseObjectGetDerivedStorage();
  v23 = MEMORY[0x1E695E480];
  v162 = a3;
  if (!a2 || !a3 || !CFArrayGetCount(a3))
  {
    goto LABEL_44;
  }

  v24 = FigCFDictionaryCopyArrayOfKeys();
  if (!favd_areOutputsEqual(v24, a3))
  {
    if (dword_1EAF17228)
    {
      v53 = OUTLINED_FUNCTION_14_29(qword_1EAF17220, v25, v26, v27, v28, v29, v30, v31, v132, v135, v138, v141, v144, v147, v150, allocator, DerivedStorage, a3, v165, v168, v171, 0, *&type[2], 0);
      v61 = OUTLINED_FUNCTION_17_24(v53, v54, v55, v56, v57, v58, v59, v60, v133, v136, v139, v142, v145, v148, v151, allocatorc, v159, v163, v166, v169, v172, typea, theArray);
      if (OUTLINED_FUNCTION_124_0(v61))
      {
        v180 = 136315650;
        v181 = "favd_reuseImageQueuesFromPreviousDestination";
        v182 = 2112;
        v183 = v24;
        v184 = 2112;
        *v185 = a3;
        OUTLINED_FUNCTION_145();
        OUTLINED_FUNCTION_2_83();
        OUTLINED_FUNCTION_12_32();
        _os_log_send_and_compose_impl(v62, v63, v64, v65, v66, v67, v68, v69);
      }

      goto LABEL_39;
    }

LABEL_40:
    v39 = 0;
    goto LABEL_41;
  }

  if (!FigCFEqual())
  {
    if (dword_1EAF17228)
    {
      v70 = OUTLINED_FUNCTION_14_29(qword_1EAF17220, v32, v33, v34, v35, v36, v37, v38, v132, v135, v138, v141, v144, v147, v150, allocator, DerivedStorage, a3, v165, v168, v171, 0, *&type[2], 0);
      v78 = OUTLINED_FUNCTION_17_24(v70, v71, v72, v73, v74, v75, v76, v77, v134, v137, v140, v143, v146, v149, v152, allocatord, v160, v164, v167, v170, v173, typeb, theArray);
      if (OUTLINED_FUNCTION_124_0(v78))
      {
        v180 = 136315138;
        v181 = "favd_reuseImageQueuesFromPreviousDestination";
        OUTLINED_FUNCTION_145();
        OUTLINED_FUNCTION_2_83();
        OUTLINED_FUNCTION_12_32();
        _os_log_send_and_compose_impl(v79, v80, v81, v82, v83, v84, v85, v86);
      }

LABEL_39:
      OUTLINED_FUNCTION_7();
      fig_log_call_emit_and_clean_up_after_send_and_compose();
      goto LABEL_40;
    }

    goto LABEL_40;
  }

  favd_cleanupOldOutputs(a1, 0);
  v39 = 0;
  v40 = 0;
  allocatora = *v23;
  if (!v24)
  {
    goto LABEL_15;
  }

LABEL_14:
  for (i = CFArrayGetCount(v24); v40 < i; i = 0)
  {
    v42 = v24;
    ValueAtIndex = CFArrayGetValueAtIndex(v24, v40);
    v44 = CMBaseObjectGetDerivedStorage();
    v45 = CMBaseObjectGetDerivedStorage();
    Value = CFDictionaryGetValue(*(v45 + 72), ValueAtIndex);
    theArray = 0;
    MutableCopy = CFArrayCreateMutableCopy(allocatora, 0, Value);
    if (MutableCopy)
    {
      v48 = MutableCopy;
      v49 = favd_copyImageQueuesForOutput(v165, ValueAtIndex, &theArray);
      if (v49)
      {
        v39 = v49;
      }

      else
      {
        for (j = 0; ; ++j)
        {
          Count = theArray;
          if (theArray)
          {
            Count = CFArrayGetCount(theArray);
          }

          if (j >= Count)
          {
            break;
          }

          CFArrayGetValueAtIndex(theArray, j);
          CMNotificationCenterGetDefaultLocalCenter();
          FigNotificationCenterAddWeakListener();
          CMNotificationCenterGetDefaultLocalCenter();
          FigNotificationCenterAddWeakListener();
        }

        CFDictionarySetValue(*(v44 + 72), ValueAtIndex, v48);
        if (dword_1EAF17228)
        {
          *type = 0;
          HIBYTE(v171) = 0;
          os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
          OUTLINED_FUNCTION_7();
          fig_log_call_emit_and_clean_up_after_send_and_compose();
        }

        v39 = 0;
      }

      CFRelease(v48);
      if (theArray)
      {
        CFRelease(theArray);
      }
    }

    else
    {
      v39 = 4294948255;
    }

    v24 = v42;
    ++v40;
    if (v42)
    {
      goto LABEL_14;
    }

LABEL_15:
    ;
  }

LABEL_41:
  if (v24)
  {
    CFRelease(v24);
  }

  a3 = v162;
  v23 = MEMORY[0x1E695E480];
  if (!v39)
  {
LABEL_44:
    v87 = 0;
    allocatorb = *v23;
    v88 = DerivedStorage;
    if (!a3)
    {
      goto LABEL_46;
    }

LABEL_45:
    for (k = CFArrayGetCount(a3); ; k = 0)
    {
      if (v87 >= k)
      {
        favd_cleanupOldOutputs(a1, a3);
        v130 = CMBaseObjectGetDerivedStorage();
        CFDictionaryApplyFunction(*(v130 + 72), favd_reconnectVisualContextToTimebaseApplierFn, *(v130 + 80));
        v39 = 0;
        break;
      }

      v90 = CFArrayGetValueAtIndex(a3, v87);
      v91 = *(v88 + 72);
      if (!CFDictionaryGetValue(v91, v90))
      {
        callBacks = *byte_1F0AE6D90;
        v92 = CFArrayCreateMutable(allocatorb, 0, &callBacks);
        if (!v92)
        {
          v39 = 4294948255;
          break;
        }

        v93 = v92;
        CFDictionarySetValue(v91, v90, v92);
        CFRelease(v93);
      }

      v94 = CFGetTypeID(v90);
      if (v94 == FigVideoTargetGetTypeID())
      {
        v95 = CMBaseObjectGetDerivedStorage();
        v96 = CFDictionaryGetValue(*(v95 + 72), v90);
        theArray = 0;
        v178 = 0;
        v179 = 0;
        v97 = *(v95 + 64);
        if (!v97 || (v98 = CFArrayGetCount(v97)) == 0)
        {
          v98 = 1;
        }

        if (v96)
        {
          v99 = CFArrayGetCount(v96);
          v100 = CFArrayGetCount(v96);
          v101 = v100;
          if (v99 >= v98)
          {
            if (v100 > v98)
            {
              OUTLINED_FUNCTION_4_68();
              v120 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
              if (os_log_type_enabled(v120, HIBYTE(v171)))
              {
                v121 = *type;
              }

              else
              {
                v121 = *type & 0xFFFFFFFE;
              }

              if (v121)
              {
                CFArrayGetCount(v96);
                v180 = 136315906;
                OUTLINED_FUNCTION_8_32();
                v183 = a1;
                v184 = 1024;
                *v185 = v122;
                *&v185[4] = 1024;
                *&v185[6] = v98;
                OUTLINED_FUNCTION_145();
                OUTLINED_FUNCTION_108();
                OUTLINED_FUNCTION_12_32();
                _os_log_send_and_compose_impl(v123, v124, v125, v126, v127, v128, v129, "<<<< FAVD >>>> %s: [%p] More destinations(%d) than layers (%d)", v132, v135, v138, v141);
              }

              fig_log_call_emit_and_clean_up_after_send_and_compose();
            }
          }

          else if (v100 < v98)
          {
            while (1)
            {
              v102 = favd_populateVideoDestination(a1, v90, v101, &theArray);
              if (v102)
              {
                break;
              }

              if (dword_1EAF17228)
              {
                OUTLINED_FUNCTION_4_68();
                v103 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
                if (os_log_type_enabled(v103, HIBYTE(v171)))
                {
                  v104 = *type;
                }

                else
                {
                  v104 = *type & 0xFFFFFFFE;
                }

                if (v104)
                {
                  v180 = 136315906;
                  v181 = "favd_updateFVTDestinationsArrayToMatchLayers";
                  v182 = 2048;
                  v183 = a1;
                  v184 = 2112;
                  *v185 = v179;
                  *&v185[8] = 2112;
                  v186 = v90;
                  OUTLINED_FUNCTION_145();
                  OUTLINED_FUNCTION_2_83();
                  _os_log_send_and_compose_impl(v105, v106, v107, v108, &dword_1962D5000, v103, HIBYTE(v171), "<<<< FAVD >>>> %s: [%p] Add video destination for collection %@ %@");
                }

                OUTLINED_FUNCTION_7();
                fig_log_call_emit_and_clean_up_after_send_and_compose();
              }

              CFArrayAppendValue(v96, &theArray);
              favd_cleanupVideoDestination(&theArray);
              if (v98 == ++v101)
              {
                goto LABEL_83;
              }
            }

LABEL_87:
            v39 = v102;
            break;
          }

LABEL_83:
          v88 = DerivedStorage;
        }

        else
        {
          FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v132, v135, v138);
          v88 = DerivedStorage;
          if (v102)
          {
            goto LABEL_87;
          }
        }
      }

      else
      {
        v109 = CFDictionaryGetValue(*(v88 + 72), v90);
        v110 = v109;
        theArray = 0;
        v178 = 0;
        v179 = 0;
        if (!v109 || !CFArrayGetCount(v109))
        {
          v102 = favd_populateVideoDestination(a1, v90, 0, &theArray);
          if (v102)
          {
            goto LABEL_87;
          }

          CFArrayAppendValue(v110, &theArray);
          if (dword_1EAF17228)
          {
            OUTLINED_FUNCTION_4_68();
            v111 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            v112 = os_log_type_enabled(v111, HIBYTE(v171));
            if (OUTLINED_FUNCTION_124_0(v112))
            {
              v180 = 136315906;
              v181 = "favd_UpdateImageQueuesToMatchOutputsArray";
              v182 = 2048;
              v183 = a1;
              v184 = 2112;
              *v185 = v179;
              *&v185[8] = 2112;
              v186 = v90;
              OUTLINED_FUNCTION_145();
              OUTLINED_FUNCTION_2_83();
              OUTLINED_FUNCTION_12_32();
              _os_log_send_and_compose_impl(v113, v114, v115, v116, v117, v118, v119, "<<<< FAVD >>>> %s: [%p] Add video destination for collection %@ %@");
            }

            OUTLINED_FUNCTION_7();
            fig_log_call_emit_and_clean_up_after_send_and_compose();
            v88 = DerivedStorage;
          }

          favd_cleanupVideoDestination(&theArray);
        }
      }

      ++v87;
      a3 = v162;
      if (v162)
      {
        goto LABEL_45;
      }

LABEL_46:
      ;
    }
  }

  FigSimpleMutexUnlock();
  return v39;
}

void favd_handleTimebaseEffectiveRateChanged(uint64_t a1, uint64_t a2)
{
  theArray[22] = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  CMTimebaseGetRate(*(DerivedStorage + 80));
  theArray[0] = 0;
  FigSimpleMutexLock();
  if (!favd_copyAllImageQueuesAndOptions(a2, theArray, 0))
  {
    if (dword_1EAF17228)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      OUTLINED_FUNCTION_7();
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    v5 = 0;
    do
    {
      Count = theArray[0];
      if (theArray[0])
      {
        Count = CFArrayGetCount(theArray[0]);
      }

      if (v5 >= Count)
      {
        break;
      }

      ValueAtIndex = CFArrayGetValueAtIndex(theArray[0], v5++);
    }

    while (!favd_setupImageQueue(ValueAtIndex, *(DerivedStorage + 80)));
  }

  FigSimpleMutexUnlock();
  if (theArray[0])
  {
    CFRelease(theArray[0]);
  }
}

uint64_t favddq_UpdateDataQueuesToMatchOutputsArray(uint64_t a1, uint64_t a2, const __CFArray *a3)
{
  v91 = *MEMORY[0x1E69E9840];
  value = 0;
  v86 = **&MEMORY[0x1E6960C70];
  v85 = v86;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FPSupport_getDataQueueWaterLevels(&v86, &v85);
  FigSimpleMutexLock();
  v6 = CMBaseObjectGetDerivedStorage();
  v7 = CMBaseObjectGetDerivedStorage();
  if (a2)
  {
    if (a3)
    {
      v8 = v7;
      if (CFArrayGetCount(a3))
      {
        v9 = FigCFDictionaryCopyArrayOfKeys();
        v10 = favd_areOutputsEqual(v9, a3);
        if (v10)
        {
          v18 = CMFormatDescriptionEqual(*(v6 + 24), *(v8 + 24));
          if (v18)
          {
            v26 = 0;
            if (!v9)
            {
              goto LABEL_8;
            }

LABEL_7:
            for (i = CFArrayGetCount(v9); v26 < i; i = 0)
            {
              ValueAtIndex = CFArrayGetValueAtIndex(v9, v26);
              v29 = CFDictionaryGetValue(*(v8 + 32), ValueAtIndex);
              CFDictionarySetValue(*(v6 + 32), ValueAtIndex, v29);
              ++v26;
              if (v9)
              {
                goto LABEL_7;
              }

LABEL_8:
              ;
            }

            goto LABEL_25;
          }

          if (!dword_1EAF17228)
          {
LABEL_25:
            if (v9)
            {
              CFRelease(v9);
            }

            goto LABEL_27;
          }

          v38 = OUTLINED_FUNCTION_11_35(v18, v19, v20, v21, v22, v23, v24, v25, v72, v73, type, type_8, v79, v80, v81);
          if (os_log_type_enabled(v38, typeb))
          {
            v39 = v83;
          }

          else
          {
            v39 = v83 & 0xFFFFFFFE;
          }

          if (v39)
          {
            v40 = *(v6 + 24);
            v41 = *(v8 + 24);
            LODWORD(v88.value) = 136315650;
            *(&v88.value + 4) = "favddq_reuseDataQueuesFromPreviousDestination";
            LOWORD(v88.flags) = 2112;
            *(&v88.flags + 2) = v40;
            HIWORD(v88.epoch) = 2112;
            v89 = v41;
            OUTLINED_FUNCTION_16_25();
            OUTLINED_FUNCTION_2_83();
            _os_log_send_and_compose_impl(v42, v43, v44, v45, v46, v38, typeb, v47);
          }
        }

        else
        {
          if (!dword_1EAF17228)
          {
            goto LABEL_25;
          }

          v30 = OUTLINED_FUNCTION_11_35(v10, v11, v12, v13, v14, v15, v16, v17, v72, v73, type, type_8, v79, v80, v81);
          if (os_log_type_enabled(v30, typea))
          {
            v31 = v82;
          }

          else
          {
            v31 = v82 & 0xFFFFFFFE;
          }

          if (v31)
          {
            LODWORD(v88.value) = 136315650;
            *(&v88.value + 4) = "favddq_reuseDataQueuesFromPreviousDestination";
            LOWORD(v88.flags) = 2112;
            *(&v88.flags + 2) = v9;
            HIWORD(v88.epoch) = 2112;
            v89 = a3;
            OUTLINED_FUNCTION_16_25();
            OUTLINED_FUNCTION_2_83();
            _os_log_send_and_compose_impl(v32, v33, v34, v35, v36, v30, typea, v37);
          }
        }

        OUTLINED_FUNCTION_7();
        fig_log_call_emit_and_clean_up_after_send_and_compose();
        goto LABEL_25;
      }
    }
  }

LABEL_27:
  v48 = 0;
  if (!a3)
  {
    goto LABEL_29;
  }

LABEL_28:
  for (j = CFArrayGetCount(a3); v48 < j; j = 0)
  {
    v50 = CFArrayGetValueAtIndex(a3, v48);
    v51 = CFGetTypeID(v50);
    if (v51 == FigVideoTargetGetTypeID())
    {
      MediaSubType = CMFormatDescriptionGetMediaSubType(*(DerivedStorage + 24));
      if (FPSupport_fvtSupportsMetadataTrack(v50, MediaSubType, v53, v54, v55, v56, v57, v58))
      {
        value = CFDictionaryGetValue(*(DerivedStorage + 32), v50);
        if (value)
        {
          goto LABEL_40;
        }

        v84 = v85;
        typec = v86;
        v59 = *(*(CMBaseObjectGetVTable() + 16) + 32);
        if (!v59)
        {
          goto LABEL_51;
        }

        v90 = v84;
        v88 = typec;
        v60 = v59(v50, 0, &v90, &v88, &value);
        if (v60)
        {
          goto LABEL_55;
        }

        v61 = *(DerivedStorage + 8);
        FigDataQueueGetCMBaseObject();
        v63 = v62;
        v64 = *(*(CMBaseObjectGetVTable() + 8) + 56);
        if (!v64)
        {
LABEL_51:
          v70 = 4294954514;
          goto LABEL_52;
        }

        v60 = v64(v63, @"ControlTimebase", v61);
        if (v60)
        {
LABEL_55:
          v70 = v60;
          goto LABEL_52;
        }

        CFDictionarySetValue(*(DerivedStorage + 32), v50, value);
        if (value)
        {
          CFRelease(value);
LABEL_40:
          value = 0;
        }
      }
    }

    ++v48;
    if (a3)
    {
      goto LABEL_28;
    }

LABEL_29:
    ;
  }

  v65 = CMBaseObjectGetDerivedStorage();
  v66 = FigCFDictionaryCopyArrayOfKeys();
  if (v66)
  {
    v67 = v66;
    if (CFArrayGetCount(v66) >= 1)
    {
      v68 = 0;
      do
      {
        v69 = CFArrayGetValueAtIndex(v67, v68);
        if (!FigCFArrayContainsValue())
        {
          CFDictionaryRemoveValue(*(v65 + 32), v69);
        }

        ++v68;
      }

      while (v68 < CFArrayGetCount(v67));
    }

    CFRelease(v67);
  }

  v70 = 0;
LABEL_52:
  if (value)
  {
    CFRelease(value);
  }

  FigSimpleMutexUnlock();
  return v70;
}

uint64_t favd_copyImageQueuesFromDestination(uint64_t a1, uint64_t a2, __CFArray **a3)
{
  OUTLINED_FUNCTION_15_28();
  v6 = *MEMORY[0x1E695E480];
  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  if (!Mutable)
  {
    return 4294948255;
  }

  v8 = Mutable;
  if (!a3)
  {
    v9 = 0;
LABEL_6:
    v11 = 0;
    if (!v4)
    {
      goto LABEL_8;
    }

LABEL_7:
    for (i = CFArrayGetCount(v4); v11 < i; i = 0)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(v4, v11);
      CFArrayAppendValue(v8, *ValueAtIndex);
      if (v9)
      {
        v14 = ValueAtIndex[1];
        if (v14)
        {
          CFArrayAppendValue(v9, v14);
        }
      }

      ++v11;
      if (v4)
      {
        goto LABEL_7;
      }

LABEL_8:
      ;
    }

    if (v3)
    {
      *v3 = v8;
      v8 = 0;
    }

    if (a3)
    {
      *a3 = v9;
      v9 = 0;
    }

    v10 = 0;
    v15 = 0;
    if (!v8)
    {
      goto LABEL_21;
    }

    goto LABEL_20;
  }

  v9 = CFArrayCreateMutable(v6, 0, MEMORY[0x1E695E9C0]);
  if (v9)
  {
    goto LABEL_6;
  }

  v10 = 4294948255;
LABEL_20:
  CFRelease(v8);
  v15 = v10;
LABEL_21:
  if (v9)
  {
    CFRelease(v9);
  }

  return v15;
}

void favd_handleFirstFrameEnqueued(uint64_t a1, uint64_t a2, uint64_t a3, const void *a4)
{
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (Mutable)
  {
    v6 = Mutable;
    CFDictionarySetValue(Mutable, @"OriginatingFigImageQueue", a4);
    CMNotificationCenterGetDefaultLocalCenter();
    CMNotificationCenterPostNotification();

    CFRelease(v6);
  }
}

void favd_handleDisplaySizeChanged(uint64_t a1, uint64_t a2, uint64_t a3, const void *a4, uint64_t a5)
{
  v6 = MEMORY[0x1E695F060];
  v10 = *MEMORY[0x1E695F060];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (Mutable)
  {
    v8 = Mutable;
    CFDictionarySetValue(Mutable, @"OriginatingFigImageQueue", a4);
    FigCFDictionaryGetCGSizeIfPresent();
    if (*&v10 != *v6 || *(&v10 + 1) != v6[1])
    {
      FigCFDictionarySetCGSize();
    }

    CMNotificationCenterGetDefaultLocalCenter();
    CMNotificationCenterPostNotification();
    CFRelease(v8);
  }
}

uint64_t favd_copyAllImageQueuesAndOptions(uint64_t a1, __CFArray **a2, __CFArray **a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v7 = FigCFDictionaryCopyArrayOfValues();
  if (!v7)
  {
    return 4294948255;
  }

  v8 = v7;
  Count = CFArrayGetCount(v7);
  v10 = *MEMORY[0x1E695E480];
  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  if (Mutable)
  {
    v12 = Mutable;
    v13 = CFArrayCreateMutable(v10, 0, MEMORY[0x1E695E9C0]);
    if (v13)
    {
      if (Count >= 1)
      {
        v14 = 0;
        do
        {
          ValueAtIndex = CFArrayGetValueAtIndex(v8, v14);
          v22 = 0;
          theArray = 0;
          v16 = favd_copyImageQueuesFromDestination(ValueAtIndex, &theArray, &v22);
          if (v16)
          {
            goto LABEL_36;
          }

          v17 = theArray;
          v24.length = CFArrayGetCount(theArray);
          v24.location = 0;
          CFArrayAppendArray(v12, v17, v24);
          v18 = v22;
          if (v22)
          {
            v25.length = CFArrayGetCount(v22);
            v25.location = 0;
            CFArrayAppendArray(v13, v18, v25);
          }

          if (theArray)
          {
            CFRelease(theArray);
          }

          if (v22)
          {
            CFRelease(v22);
          }
        }

        while (Count != ++v14);
      }

      if (*(DerivedStorage + 64))
      {
        v19 = CFArrayGetCount(v12);
        if (v19 != CFArrayGetCount(v13))
        {
          FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF17220, 4294948253, "<<<< FAVD >>>>", 904, v3);
LABEL_36:
          v20 = v16;
          goto LABEL_27;
        }
      }

      else if (CFArrayGetCount(v13))
      {
        FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF17220, 4294948253, "<<<< FAVD >>>>", 909, v3);
        goto LABEL_36;
      }

      if (a2)
      {
        *a2 = v12;
        v12 = 0;
      }

      if (a3)
      {
        v20 = 0;
        if (!CFArrayGetCount(v13))
        {
          *a3 = 0;
          if (!v12)
          {
            goto LABEL_28;
          }

          goto LABEL_27;
        }

        *a3 = v13;
        v13 = 0;
        if (!v12)
        {
LABEL_28:
          if (v13)
          {
            CFRelease(v13);
          }

          goto LABEL_30;
        }
      }

      else
      {
        v20 = 0;
        if (!v12)
        {
          goto LABEL_28;
        }
      }
    }

    else
    {
      v20 = 4294948255;
    }

LABEL_27:
    CFRelease(v12);
    goto LABEL_28;
  }

  v20 = 4294948255;
LABEL_30:
  CFRelease(v8);
  return v20;
}

uint64_t favd_UpdateDataChannelConfigForVideoTarget(uint64_t a1, const void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v75 = a5;
  v76 = a4;
  v78 = a2;
  v89 = *MEMORY[0x1E69E9840];
  v77 = a1;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  cf = 0;
  v6 = FigSimpleMutexLock();
  v14 = &dword_1EAF17000;
  if (dword_1EAF17228)
  {
    v15 = OUTLINED_FUNCTION_6_55(v6, v7, v8, v9, v10, v11, v12, v13, v65, v66, v67, v69, v71, v73, v74, v75, v76, v77, v78, DerivedStorage, 0, v81, type, type_4, v84);
    if (os_log_type_enabled(v15, type))
    {
      v16 = v85;
    }

    else
    {
      v16 = v85 & 0xFFFFFFFE;
    }

    if (v16)
    {
      OUTLINED_FUNCTION_8_32();
      OUTLINED_FUNCTION_145();
      OUTLINED_FUNCTION_108();
      _os_log_send_and_compose_impl(v17, v18, v19, v20, v21, v15, type, v22);
    }

    OUTLINED_FUNCTION_7();
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (!v78 || !v76)
  {
    OUTLINED_FUNCTION_7_43();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
    v25 = v62;
LABEL_58:
    v28 = 0;
    goto LABEL_49;
  }

  v23 = *MEMORY[0x1E695E480];
  if (*(DerivedStorage + 88))
  {
    MutableCopy = FigTagCollectionCreateMutableCopy();
  }

  else
  {
    MutableCopy = FigTagCollectionCreateMutable();
  }

  v25 = MutableCopy;
  if (MutableCopy)
  {
    goto LABEL_58;
  }

  *&values[0].category = 0;
  v26 = CMBaseObjectGetDerivedStorage();
  MutableFromFormatDescription = MTSidebandVideoPropertiesCreateMutableFromFormatDescription(v23, *(v26 + 48), values);
  if (MutableFromFormatDescription)
  {
    v25 = MutableFromFormatDescription;
    v28 = 0;
  }

  else
  {
    v28 = CFArrayCreate(v23, values, 1, MEMORY[0x1E695E9C0]);
    if (v28)
    {
      v25 = 0;
    }

    else
    {
      OUTLINED_FUNCTION_7_43();
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v65, v66, v67);
      v25 = v63;
    }
  }

  if (*&values[0].category)
  {
    CFRelease(*&values[0].category);
  }

  if (!v25)
  {
    v29 = *(CMBaseObjectGetDerivedStorage() + 64);
    if (v29 && CFArrayGetCount(v29))
    {
      *&values[0].category = 0;
      values[0].value = 0;
      CMTagCollectionGetCountOfCategory(cf, kCMTagCategory_StereoView);
      FigTagCollectionGetTagsWithCategory();
      CMTagCollectionRemoveTag(cf, values[0]);
    }

    Value = CFDictionaryGetValue(*(DerivedStorage + 72), v78);
    if (Value)
    {
      v31 = Value;
      if (CFArrayGetCount(Value) < 1)
      {
LABEL_48:
        v25 = 0;
      }

      else
      {
        v33 = 0;
        *&v32 = 136316418;
        v72 = v32;
        v68 = v28;
        v70 = a3;
        while (1)
        {
          v34 = v31;
          ValueAtIndex = CFArrayGetValueAtIndex(v31, v33);
          v36 = ValueAtIndex[2];
          v86 = 0;
          v37 = FigTagCollectionCreateMutableCopy();
          if (v37)
          {
            v25 = v37;
            goto LABEL_49;
          }

          if (v36)
          {
            values[0] = 0uLL;
            FigTagCollectionGetTagsWithCategory();
            v25 = 4294948254;
            goto LABEL_49;
          }

          *&v90.category = FigTagMakeWithSInt64Value();
          OUTLINED_FUNCTION_13_24(v90);
          VideoLayoutLoggingStringFromCollection = FigAlternateCreateVideoLayoutLoggingStringFromCollection(0);
          v46 = VideoLayoutLoggingStringFromCollection;
          if (v14[138])
          {
            v47 = OUTLINED_FUNCTION_6_55(VideoLayoutLoggingStringFromCollection, v39, v40, v41, v42, v43, v44, v45, v65, v66, v68, v70, v72, *(&v72 + 1), v74, v75, v76, v77, v78, DerivedStorage, cf, v81, type, type_4, 0);
            if (os_log_type_enabled(v47, type))
            {
              v48 = v86;
            }

            else
            {
              v48 = v86 & 0xFFFFFFFE;
            }

            if (v48)
            {
              OUTLINED_FUNCTION_5_59();
              OUTLINED_FUNCTION_145();
              OUTLINED_FUNCTION_108();
              _os_log_send_and_compose_impl(v49, v50, v51, v52, &dword_1962D5000, v47, type, "<<<< FAVD >>>> %s: [%p][%@] FVT %@ FIQ:%p LayerChannelTags %{public}@");
            }

            OUTLINED_FUNCTION_7();
            VideoLayoutLoggingStringFromCollection = fig_log_call_emit_and_clean_up_after_send_and_compose();
            v28 = v68;
          }

          if (v46)
          {
            CFRelease(v46);
          }

          v53 = *ValueAtIndex;
          if (*ValueAtIndex)
          {
            if (v14[138])
            {
              v54 = OUTLINED_FUNCTION_6_55(VideoLayoutLoggingStringFromCollection, v53, v40, v41, v42, v43, v44, v45, v65, v66, v68, v70, v72, *(&v72 + 1), v74, v75, v76, v77, v78, DerivedStorage, cf, v81, type, type_4, v86);
              if (os_log_type_enabled(v54, type))
              {
                v55 = v87;
              }

              else
              {
                v55 = v87 & 0xFFFFFFFE;
              }

              if (v55)
              {
                OUTLINED_FUNCTION_5_59();
                OUTLINED_FUNCTION_145();
                OUTLINED_FUNCTION_108();
                _os_log_send_and_compose_impl(v56, v57, v58, v59, &dword_1962D5000, v54, type, "<<<< FAVD >>>> %s: [%p][%@] FVT %@ Adding FIQ (%p) to data config: %@");
              }

              OUTLINED_FUNCTION_7();
              fig_log_call_emit_and_clean_up_after_send_and_compose();
              v53 = *ValueAtIndex;
              v14 = &dword_1EAF17000;
            }

            v60 = FigDataChannelConfigurationAddFigImageQueueWithSidebandVideoProperties(v76, v53, 0, *(DerivedStorage + 96), v28);
            if (v60)
            {
              break;
            }
          }

          ++v33;
          v31 = v34;
          if (v33 >= CFArrayGetCount(v34))
          {
            goto LABEL_48;
          }
        }

        v25 = v60;
      }
    }

    else
    {
      OUTLINED_FUNCTION_7_43();
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v65, v66, v67);
      v25 = v64;
    }
  }

LABEL_49:
  FigSimpleMutexUnlock();
  if (cf)
  {
    CFRelease(cf);
  }

  if (v28)
  {
    CFRelease(v28);
  }

  return v25;
}

uint64_t favd_createDataChannelConfigID(uint64_t a1, CFStringRef *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  OUTLINED_FUNCTION_19_25(DerivedStorage);
  if (a2)
  {
    v5 = CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"C/%s.%d", v2 + 8, *(v2 + 40));
    if (v5)
    {
      v6 = 0;
      ++*(v2 + 40);
      *a2 = v5;
    }

    else
    {
      v6 = 4294948255;
    }
  }

  else
  {
    v6 = 4294948256;
  }

  FigSimpleMutexUnlock();
  return v6;
}

uint64_t favd_CopyFigImageQueueForCAImageQueue(uint64_t a1, uint64_t a2, void *a3)
{
  OUTLINED_FUNCTION_15_28();
  CMBaseObjectGetDerivedStorage();
  theArray = 0;
  FigSimpleMutexLock();
  if (!v3 || !a3)
  {
    OUTLINED_FUNCTION_239();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
    goto LABEL_12;
  }

  v6 = favd_copyImageQueuesForOutput(v4, v3, &theArray);
  if (v6)
  {
LABEL_12:
    v8 = v6;
    goto LABEL_13;
  }

  if (!theArray || !CFArrayGetCount(theArray) || !theArray || CFArrayGetCount(theArray) != 1)
  {
    OUTLINED_FUNCTION_239();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
    goto LABEL_12;
  }

  ValueAtIndex = CFArrayGetValueAtIndex(theArray, 0);
  if (ValueAtIndex)
  {
    ValueAtIndex = CFRetain(ValueAtIndex);
  }

  v8 = 0;
  *a3 = ValueAtIndex;
LABEL_13:
  FigSimpleMutexUnlock();
  if (theArray)
  {
    CFRelease(theArray);
  }

  return v8;
}

uint64_t favd_CopyFigImageQueueForVisualContext(uint64_t a1, uint64_t a2, void *a3)
{
  OUTLINED_FUNCTION_15_28();
  theArray = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  OUTLINED_FUNCTION_19_25(DerivedStorage);
  if (!v3 || !a3)
  {
    OUTLINED_FUNCTION_239();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
    goto LABEL_12;
  }

  v7 = favd_copyImageQueuesForOutput(v4, v3, &theArray);
  if (v7)
  {
LABEL_12:
    v9 = v7;
    goto LABEL_13;
  }

  if (!theArray || !CFArrayGetCount(theArray) || !theArray || CFArrayGetCount(theArray) != 1)
  {
    OUTLINED_FUNCTION_239();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
    goto LABEL_12;
  }

  ValueAtIndex = CFArrayGetValueAtIndex(theArray, 0);
  if (ValueAtIndex)
  {
    ValueAtIndex = CFRetain(ValueAtIndex);
  }

  v9 = 0;
  *a3 = ValueAtIndex;
LABEL_13:
  FigSimpleMutexUnlock();
  if (theArray)
  {
    CFRelease(theArray);
  }

  return v9;
}

uint64_t favd_flushFramesFollowingCurrentFrame(uint64_t a1)
{
  theArray[21] = *MEMORY[0x1E69E9840];
  theArray[0] = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  OUTLINED_FUNCTION_19_25(DerivedStorage);
  v3 = favd_copyAllImageQueuesAndOptions(a1, theArray, 0);
  if (v3)
  {
    v10 = v3;
  }

  else
  {
    v4 = 0;
    while (1)
    {
      Count = theArray[0];
      if (theArray[0])
      {
        Count = CFArrayGetCount(theArray[0]);
      }

      if (v4 >= Count)
      {
        break;
      }

      ValueAtIndex = CFArrayGetValueAtIndex(theArray[0], v4);
      if (dword_1EAF17228)
      {
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      v8 = *(*(CMBaseObjectGetVTable() + 16) + 112);
      if (!v8)
      {
        v10 = 4294954514;
        goto LABEL_13;
      }

      v9 = v8(ValueAtIndex);
      ++v4;
      if (v9)
      {
        v10 = v9;
        goto LABEL_13;
      }
    }

    v10 = 0;
  }

LABEL_13:
  FigSimpleMutexUnlock();
  if (theArray[0])
  {
    CFRelease(theArray[0]);
  }

  return v10;
}

uint64_t favd_setCAImageQueueFlagsForDestination(uint64_t a1, int a2, int a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  theArray = 0;
  FigSimpleMutexLock();
  v7 = *(DerivedStorage + 108) | a3;
  *(DerivedStorage + 104) |= a2;
  *(DerivedStorage + 108) = v7;
  v8 = favd_copyAllImageQueuesAndOptions(a1, &theArray, 0);
  if (!v8)
  {
    for (i = 0; ; ++i)
    {
      Count = theArray;
      if (theArray)
      {
        Count = CFArrayGetCount(theArray);
      }

      if (i >= Count)
      {
        break;
      }

      ValueAtIndex = CFArrayGetValueAtIndex(theArray, i);
      favd_setCAImageQueueFlags(ValueAtIndex, *(DerivedStorage + 104), *(DerivedStorage + 108));
    }
  }

  FigSimpleMutexUnlock();
  if (theArray)
  {
    CFRelease(theArray);
  }

  return v8;
}

void favd_isAnyOutputReadyToRenderApplierFn(int a1, CFArrayRef theArray, _BYTE *a3)
{
  if (!*a3)
  {
    v5 = 0;
    v6 = *MEMORY[0x1E695E4C0];
    v7 = *MEMORY[0x1E695E480];
    v8 = *MEMORY[0x1E695E4D0];
    if (!theArray)
    {
      goto LABEL_4;
    }

LABEL_3:
    for (i = CFArrayGetCount(theArray); v5 < i; i = 0)
    {
      CFArrayGetValueAtIndex(theArray, v5);
      cf = v6;
      FigImageQueueGetFigBaseObject();
      v11 = v10;
      v12 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      if (v12)
      {
        v12(v11, @"FigImageQueueProperty_FirstImageEnqueued", v7, &cf);
      }

      if (cf != v8)
      {
        return;
      }

      if (v8)
      {
        CFRelease(cf);
      }

      ++v5;
      if (theArray)
      {
        goto LABEL_3;
      }

LABEL_4:
      ;
    }

    *a3 = 1;
  }
}

uint64_t favd_areOutputsEqual(CFArrayRef theArray, const __CFArray *a2)
{
  if (!theArray)
  {
    Count = 0;
    if (a2)
    {
      goto LABEL_3;
    }

LABEL_5:
    v5 = 0;
    goto LABEL_6;
  }

  Count = CFArrayGetCount(theArray);
  if (!a2)
  {
    goto LABEL_5;
  }

LABEL_3:
  v5 = CFArrayGetCount(a2);
LABEL_6:
  if (theArray == a2)
  {
    return 1;
  }

  if (Count != v5)
  {
    return 0;
  }

  if (Count < 1)
  {
    return 1;
  }

  v6 = 0;
  while (1)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(theArray, v6);
    v9.location = 0;
    v9.length = Count;
    result = CFArrayContainsValue(a2, v9, ValueAtIndex);
    if (!result)
    {
      break;
    }

    if (Count == ++v6)
    {
      return 1;
    }
  }

  return result;
}

uint64_t favd_setupImageQueue(uint64_t a1, CMTimebaseRef timebase)
{
  Rate = CMTimebaseGetRate(timebase);
  v4 = *(*(CMBaseObjectGetVTable() + 16) + 40);
  if (!v4)
  {
    return 4294954514;
  }

  result = v4(a1, Rate != 0.0);
  if (result)
  {
    return result;
  }

  v6 = *(*(CMBaseObjectGetVTable() + 16) + 48);
  if (!v6)
  {
    return 4294954514;
  }

  v7.n128_f32[0] = Rate;

  return v6(a1, v7);
}

uint64_t favddq_UpdateDataChannelConfigForVideoTarget(uint64_t a1, uint64_t a2, uint64_t a3, const void *a4, uint64_t a5)
{
  v57 = a5;
  v9 = a3;
  OUTLINED_FUNCTION_15_28();
  v76 = *MEMORY[0x1E69E9840];
  cf = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  if (!v5)
  {
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF17220, 4294948256, "<<<< FAVD >>>>", 2297, v7);
    goto LABEL_32;
  }

  if (!a4)
  {
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF17220, 4294948256, "<<<< FAVD >>>>", 2298, v7);
    goto LABEL_32;
  }

  Mutable = FigTagCollectionCreateMutable();
  if (Mutable)
  {
LABEL_32:
    v27 = Mutable;
    goto LABEL_26;
  }

  v59 = DerivedStorage;
  v12 = CMBaseObjectGetDerivedStorage();
  AllocatorForMedia = FigGetAllocatorForMedia();
  v14 = CFArrayCreateMutable(AllocatorForMedia, 0, MEMORY[0x1E695E9C0]);
  if (!v14)
  {
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v54, v55, v57);
    v27 = v36;
    goto LABEL_18;
  }

  v15 = v14;
  CFArrayAppendValue(v14, *(v12 + 24));
  Value = CFDictionaryGetValue(*(v12 + 32), v5);
  if (Value)
  {
    v17 = Value;
    *&v77.category = FigTagMakeWithSInt64Value();
    v18 = OUTLINED_FUNCTION_13_24(v77);
    if (v18 || (v18 = CMTagCollectionAddTag(0, *MEMORY[0x1E6963148]), v18))
    {
      v27 = v18;
      goto LABEL_17;
    }

    v19 = FigDataChannelConfigurationAddFigDataQueue(a4, v17, 0, 0, v15);
    v27 = v19;
    if (v19 || !dword_1EAF17228)
    {
      goto LABEL_17;
    }

    v28 = OUTLINED_FUNCTION_18_23(v19, v20, v21, v22, v23, v24, v25, v26, v54, v55, v57, v59, 0, *v61, v61[2], 0, 0);
    if (os_log_type_enabled(v28, type))
    {
      v29 = v64;
    }

    else
    {
      v29 = v64 & 0xFFFFFFFE;
    }

    if (v29)
    {
      v66 = 136316674;
      v67 = "favddq_updateDataChannelConfigWithDataQueues";
      v68 = 2048;
      v69 = v6;
      v70 = 2082;
      v71 = v12 + 40;
      v72 = 2048;
      v73 = v17;
      v74 = 1024;
      *v75 = v9;
      *&v75[4] = 2114;
      *&v75[6] = v57;
      *&v75[14] = 2048;
      *&v75[16] = v5;
      LODWORD(v55) = 68;
      v54 = &v66;
      OUTLINED_FUNCTION_108();
      _os_log_send_and_compose_impl(v30, v31, v32, v33, v34, v28, type, v35);
    }

    OUTLINED_FUNCTION_7();
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v27 = 0;
LABEL_17:
  CFRelease(v15);
LABEL_18:
  v44 = v59;
  if (!v27 && dword_1EAF17228)
  {
    v45 = OUTLINED_FUNCTION_18_23(v36, v37, v38, v39, v40, v41, v42, v43, v54, v55, v57, v59, cf, *v61, v61[2], 0, 0);
    if (os_log_type_enabled(v45, typea))
    {
      v46 = v65;
    }

    else
    {
      v46 = v65 & 0xFFFFFFFE;
    }

    if (v46)
    {
      v66 = 136316418;
      v67 = "favddq_UpdateDataChannelConfigForVideoTarget";
      v68 = 2048;
      v69 = v6;
      v70 = 2082;
      v71 = v44 + 40;
      v72 = 2114;
      v73 = v58;
      v74 = 2048;
      *v75 = v5;
      *&v75[8] = 2114;
      *&v75[10] = a4;
      LODWORD(v56) = 62;
      OUTLINED_FUNCTION_108();
      _os_log_send_and_compose_impl(v47, v48, v49, v50, v51, v45, typea, v52, &v66, v56);
    }

    OUTLINED_FUNCTION_7();
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    v27 = 0;
  }

LABEL_26:
  FigSimpleMutexUnlock();
  if (cf)
  {
    CFRelease(cf);
  }

  return v27;
}

uint64_t favddq_createDataChannelConfigID(uint64_t a1, CFStringRef *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  OUTLINED_FUNCTION_19_25(DerivedStorage);
  if (a2)
  {
    v5 = CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"%s.%d", v2 + 40, *(v2 + 16));
    if (v5)
    {
      v6 = 0;
      ++*(v2 + 16);
      *a2 = v5;
    }

    else
    {
      v6 = 4294948255;
    }
  }

  else
  {
    v6 = 4294948256;
  }

  FigSimpleMutexUnlock();
  return v6;
}

uint64_t favd_ImageQueueArraySetPropertyForOutputs_cold_1(uint64_t *a1, _DWORD *a2)
{
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v5, v6, vars0);
  *a2 = v3;

  return FigSimpleMutexUnlock();
}

uint64_t serverXPCFigCaptionGroupConverter_replyingMessageHandler(uint64_t a1, void *a2, void *a3)
{
  OpCode = FigXPCMessageGetOpCode();
  if (OpCode)
  {
    return OpCode;
  }

  else
  {
    return 4294951138;
  }
}

uint64_t serverXPCFigCaptionGroupConverter_Callback(uint64_t a1, __int128 *a2, xpc_connection_t *a3)
{
  v4 = FigXPCCreateBasicMessage();
  if (!v4)
  {
    v4 = FigXPCServerLookupAndRetainAssociatedObject();
    if (!v4)
    {
      fig_log_get_emitter();
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v7, v8, v9);
    }
  }

  v5 = v4;
  xpc_connection_send_message(*a3, 0);
  FigXPCRelease();
  return v5;
}

uint64_t FigSteeringManifestCreateInProcess(CFAllocatorRef blockAllocator, OpaqueCMBlockBuffer *a2, const __CFURL *a3, int a4, char a5, __CFArray *a6, const __CFDictionary **a7)
{
  v123 = a6;
  cf = 0;
  blockBufferOut = 0;
  lengthAtOffsetOut = 0;
  dataPointerOut = 0;
  v124 = 0;
  BYTE1(v124) = a4;
  LOBYTE(v124) = a5;
  DataPointer = CMBlockBufferCreateContiguous(blockAllocator, a2, blockAllocator, 0, 0, 0, 0, &blockBufferOut);
  if (DataPointer)
  {
    goto LABEL_108;
  }

  DataPointer = CMBlockBufferGetDataPointer(blockBufferOut, 0, &lengthAtOffsetOut, 0, &dataPointerOut);
  if (DataPointer)
  {
    goto LABEL_108;
  }

  if (!dataPointerOut || !lengthAtOffsetOut)
  {
    OUTLINED_FUNCTION_0_91();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v113, v115, v118);
LABEL_108:
    v40 = DataPointer;
    v12 = 0;
LABEL_110:
    MutableCopy = 0;
LABEL_111:
    v21 = 0;
    v18 = 0;
    goto LABEL_92;
  }

  v12 = CFDataCreate(blockAllocator, dataPointerOut, lengthAtOffsetOut);
  if (!v12)
  {
    OUTLINED_FUNCTION_0_91();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v113, v115, v118);
    v40 = v96;
    goto LABEL_110;
  }

  v13 = FigJSONObjectCreateWithData();
  if (v13)
  {
    v97 = @"failed to parse manifest JSON format";
LABEL_114:
    v98 = &v123;
    v99 = 4294951543;
LABEL_116:
    _SteeringLogError(v13, v99, v98, v97);
    MutableCopy = 0;
    v21 = 0;
    v18 = 0;
    v40 = 4294951544;
    goto LABEL_92;
  }

  v13 = cf;
  if (!cf)
  {
    v97 = @"manifest JSON parser returned NULL";
    goto LABEL_114;
  }

  v14 = CFGetTypeID(cf);
  if (v14 != CFDictionaryGetTypeID())
  {
    OUTLINED_FUNCTION_1_87();
    goto LABEL_116;
  }

  Count = CFDictionaryGetCount(cf);
  MutableCopy = CFDictionaryCreateMutableCopy(blockAllocator, Count, cf);
  if (!MutableCopy)
  {
    OUTLINED_FUNCTION_0_91();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v113, v115, v118);
    v40 = v100;
    goto LABEL_111;
  }

  Value = CFDictionaryGetValue(cf, @"RELOAD-URI");
  v18 = Value;
  if (Value)
  {
    v19 = CFGetTypeID(Value);
    if (v19 == CFStringGetTypeID())
    {
      v18 = CFURLCreateWithString(blockAllocator, v18, a3);
      if (!v18)
      {
        OUTLINED_FUNCTION_0_91();
        FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v113, v115, v118);
        v40 = v112;
        goto LABEL_91;
      }

      CFDictionarySetValue(MutableCopy, @"RELOAD-URI", v18);
    }

    else
    {
      v18 = 0;
    }
  }

  Copy = CFDictionaryCreateCopy(blockAllocator, MutableCopy);
  v21 = Copy;
  if (!Copy)
  {
    OUTLINED_FUNCTION_0_91();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v113, v115, v118);
    v40 = v101;
    goto LABEL_92;
  }

  v119 = a4;
  valuePtr = 0;
  v22 = CFDictionaryGetValue(Copy, @"VERSION");
  v121 = a7;
  v122 = MutableCopy;
  v120 = v18;
  if (!v22)
  {
    v102 = @"Steering Manifest: missing VERSION";
LABEL_124:
    v103 = &v123;
    v104 = 4294951541;
LABEL_137:
    _SteeringLogError(v22, v104, v103, v102);
    v40 = 4294951544;
    goto LABEL_86;
  }

  v23 = v22;
  v24 = CFGetTypeID(v22);
  if (v24 != CFNumberGetTypeID() || CFNumberIsFloatType(v23) || (CFNumberGetValue(v23, kCFNumberCFIndexType, &valuePtr), valuePtr != 1))
  {
LABEL_136:
    OUTLINED_FUNCTION_1_87();
    goto LABEL_137;
  }

  v22 = CFDictionaryGetValue(v21, @"TTL");
  if (!v22)
  {
    v102 = @"Steering Manifest: missing TTL";
    goto LABEL_124;
  }

  v25 = CFGetTypeID(v22);
  if (v25 != CFNumberGetTypeID())
  {
    goto LABEL_136;
  }

  v26 = CFDictionaryGetValue(v21, @"RELOAD-URI");
  if (v26)
  {
    v27 = CFGetTypeID(v26);
    if (v27 != CFURLGetTypeID())
    {
      goto LABEL_136;
    }
  }

  v28 = CFDictionaryGetValue(v21, @"UNIVERSAL");
  if (v28)
  {
    v29 = CFGetTypeID(v28);
    if (v29 != CFBooleanGetTypeID())
    {
      goto LABEL_136;
    }
  }

  v30 = CFDictionaryGetValue(v21, @"PATHWAY-PRIORITY");
  v31 = MEMORY[0x1E695E480];
  if (!v30)
  {
    _SteeringLogError(0, 4294951541, &v123, @"Steering Manifest: missing PATHWAY-PRIORITY");
LABEL_129:
    v40 = 4294951544;
    goto LABEL_44;
  }

  v32 = v30;
  v33 = CFGetTypeID(v30);
  if (v33 != CFArrayGetTypeID())
  {
    OUTLINED_FUNCTION_1_87();
    _SteeringLogError(v105, v106, v107, v108);
    goto LABEL_129;
  }

  Mutable = CFSetCreateMutable(*v31, 0, MEMORY[0x1E695E9F8]);
  if (!Mutable)
  {
    OUTLINED_FUNCTION_0_91();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v113, v115, v118);
    v40 = v110;
    if (v110)
    {
      goto LABEL_44;
    }

LABEL_45:
    v52 = CFDictionaryGetValue(v21, @"PATHWAY-CLONES");
    if (!v52)
    {
      v40 = 0;
      v89 = v121;
      MutableCopy = v122;
      v18 = v120;
      goto LABEL_90;
    }

    v53 = v52;
    v54 = *v31;
    v55 = CFSetCreateMutable(*v31, 0, MEMORY[0x1E695E9F8]);
    if (!v55)
    {
      OUTLINED_FUNCTION_0_91();
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v113, v115, v118);
      v40 = v109;
      goto LABEL_86;
    }

    v56 = v55;
    v116 = v12;
    v57 = CFSetCreateMutable(v54, 0, MEMORY[0x1E695E9F8]);
    if (!v57)
    {
      OUTLINED_FUNCTION_0_91();
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v113, v12, v118);
      v40 = v111;
      CFRelease(v56);
      v12 = v117;
      goto LABEL_86;
    }

    v58 = v57;
    v114 = v21;
    v59 = CFGetTypeID(v53);
    if (v59 != CFArrayGetTypeID())
    {
LABEL_106:
      OUTLINED_FUNCTION_1_87();
      _SteeringLogError(v92, v93, v94, v95);
      v40 = 4294951544;
LABEL_85:
      CFRelease(v56);
      CFRelease(v58);
      v21 = v114;
      v12 = v116;
      goto LABEL_86;
    }

    v60 = CFArrayGetCount(v53);
    if (v60 < 1)
    {
      v40 = 0;
      goto LABEL_85;
    }

    v61 = v60;
    v62 = 0;
    v40 = 0;
    while (1)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(v53, v62);
      if (!ValueAtIndex)
      {
        OUTLINED_FUNCTION_0_91();
        FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v114, v116, v118);
        v40 = v91;
        goto LABEL_85;
      }

      v64 = ValueAtIndex;
      v65 = CFGetTypeID(ValueAtIndex);
      if (v65 != CFDictionaryGetTypeID())
      {
        goto LABEL_106;
      }

      v66 = CFDictionaryGetValue(v64, @"BASE-ID");
      if (v66)
      {
        v67 = v66;
        v68 = CFGetTypeID(v66);
        if (v68 != CFStringGetTypeID())
        {
          goto LABEL_106;
        }

        CFSetAddValue(v56, v67);
      }

      else
      {
        OUTLINED_FUNCTION_0_91();
        FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v114, v116, v118);
        v40 = v69;
        if (!BYTE1(v124))
        {
          goto LABEL_85;
        }
      }

      v70 = CFDictionaryGetValue(v64, @"ID");
      if (v70)
      {
        break;
      }

      OUTLINED_FUNCTION_0_91();
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v114, v116, v118);
      v40 = v73;
      if (!BYTE1(v124))
      {
        goto LABEL_85;
      }

LABEL_63:
      v74 = CFDictionaryGetValue(v64, @"URI-REPLACEMENT");
      if (!v74)
      {
        OUTLINED_FUNCTION_0_91();
        FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v114, v116, v118);
        v40 = v82;
LABEL_77:
        if (!BYTE1(v124))
        {
          goto LABEL_85;
        }

        goto LABEL_78;
      }

      v75 = v74;
      v76 = CFGetTypeID(v74);
      if (v76 != CFDictionaryGetTypeID())
      {
        goto LABEL_106;
      }

      v77 = CFDictionaryGetValue(v75, @"HOST");
      if (v77)
      {
        v78 = CFGetTypeID(v77);
        if (v78 != CFStringGetTypeID())
        {
          goto LABEL_106;
        }
      }

      v79 = CFDictionaryGetValue(v75, @"PARAMS");
      if (v79)
      {
        v40 = validateStringToStringDictionary(v79, "Pathway Clone PARAMS", &v123);
        if (v40)
        {
          if (!BYTE1(v124))
          {
            goto LABEL_85;
          }
        }
      }

      v80 = CFDictionaryGetValue(v75, @"PER-VARIANT-URIS");
      if (v80)
      {
        v40 = validateStringToStringDictionary(v80, "Pathway Clone PER-VARIANT-URIS", &v123);
        if (v40)
        {
          if (!BYTE1(v124))
          {
            goto LABEL_85;
          }
        }
      }

      v81 = CFDictionaryGetValue(v75, @"PER-RENDITION-URIS");
      if (v81)
      {
        v40 = validateStringToStringDictionary(v81, "Pathway Clone PER-RENDITION-URIS", &v123);
        if (v40)
        {
          goto LABEL_77;
        }
      }

LABEL_78:
      if (v61 == ++v62)
      {
        goto LABEL_85;
      }
    }

    v71 = v70;
    v72 = CFGetTypeID(v70);
    if (v72 != CFStringGetTypeID())
    {
      goto LABEL_106;
    }

    if (CFSetContainsValue(v58, v71))
    {
      OUTLINED_FUNCTION_1_87();
      _SteeringLogError(v83, v84, v85, @"Steering Manifest: duplicated IDs in Pathway Clone", v114);
    }

    else
    {
      if (!CFSetContainsValue(v56, v71))
      {
LABEL_61:
        CFSetAddValue(v58, v71);
        goto LABEL_63;
      }

      OUTLINED_FUNCTION_1_87();
      _SteeringLogError(v86, v87, v88, @"Steering Manifest: Pathway Clone ID defined after use", v114);
    }

    v40 = 4294951544;
    if (!BYTE1(v124))
    {
      goto LABEL_85;
    }

    goto LABEL_61;
  }

  v35 = Mutable;
  v36 = v21;
  v37 = CFArrayGetCount(v32);
  if (v37 < 1)
  {
    _SteeringLogError(v37, 4294951541, &v123, @"Steering Manifest: PATHWAY-PRIORITY MUST contain at least one Pathway ID");
    goto LABEL_42;
  }

  v38 = v37;
  v39 = 0;
  v40 = 0;
  while (1)
  {
    v41 = CFArrayGetValueAtIndex(v32, v39);
    if (!v41)
    {
      OUTLINED_FUNCTION_0_91();
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v113, v115, v118);
      v40 = v47;
      goto LABEL_43;
    }

    v42 = v41;
    v43 = CFGetTypeID(v41);
    if (v43 != CFStringGetTypeID() || CFStringGetLength(v42) <= 0)
    {
      break;
    }

    if (CFSetContainsValue(v35, v42))
    {
      OUTLINED_FUNCTION_1_87();
      _SteeringLogError(v44, v45, v46, @"Steering Manifest: duplicated Pathway IDs in PATHWAY-PRIORITY");
      v40 = 4294951544;
LABEL_36:
      if (!BYTE1(v124))
      {
        goto LABEL_43;
      }

      goto LABEL_37;
    }

    CFSetAddValue(v35, v42);
    if (v40)
    {
      goto LABEL_36;
    }

LABEL_37:
    if (v38 == ++v39)
    {
      goto LABEL_43;
    }
  }

  OUTLINED_FUNCTION_1_87();
  _SteeringLogError(v48, v49, v50, v51);
LABEL_42:
  v40 = 4294951544;
LABEL_43:
  CFRelease(v35);
  v21 = v36;
  v31 = MEMORY[0x1E695E480];
  if (!v40)
  {
    goto LABEL_45;
  }

LABEL_44:
  if (BYTE1(v124))
  {
    goto LABEL_45;
  }

LABEL_86:
  v18 = v120;
  v89 = v121;
  if (v119)
  {
    MutableCopy = v122;
    goto LABEL_90;
  }

  MutableCopy = v122;
  if (!v40)
  {
LABEL_90:
    *v89 = v21;
LABEL_91:
    v21 = 0;
  }

LABEL_92:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v18)
  {
    CFRelease(v18);
  }

  if (v12)
  {
    CFRelease(v12);
  }

  if (MutableCopy)
  {
    CFRelease(MutableCopy);
  }

  if (v21)
  {
    CFRelease(v21);
  }

  if (blockBufferOut)
  {
    CFRelease(blockBufferOut);
  }

  return v40;
}

void _SteeringLogError(uint64_t a1, uint64_t a2, CFMutableArrayRef *a3, CFStringRef format, ...)
{
  va_start(va, format);
  LODWORD(v14) = 0;
  if (format)
  {
    va_copy(v14, va);
    v5 = *MEMORY[0x1E695E480];
    v6 = CFStringCreateWithFormatAndArguments(*MEMORY[0x1E695E480], 0, format, va);
  }

  else
  {
    v5 = *MEMORY[0x1E695E480];
    v6 = CFStringCreateWithCString(*MEMORY[0x1E695E480], "Format Error", 0x8000100u);
  }

  v7 = v6;
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v13, v14, v15);
  if (*a3)
  {
    Mutable = CFDictionaryCreateMutable(v5, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    if (Mutable)
    {
      v9 = Mutable;
      Current = CFAbsoluteTimeGetCurrent();
      v11 = CFDateCreate(v5, Current);
      if (v11)
      {
        v12 = v11;
        CFDictionarySetValue(v9, @"date", v11);
        CFRelease(v12);
      }

      CFDictionarySetValue(v9, @"domain", @"CoreMediaErrorDomain");
      FigCFDictionarySetInt32();
      FigCFDictionarySetInt32();
      if (v7)
      {
        CFDictionarySetValue(v9, @"comment", v7);
      }

      if (*a3)
      {
        CFArrayAppendValue(*a3, v9);
      }

      CFRelease(v9);
    }
  }

  if (v7)
  {
    CFRelease(v7);
  }
}

void validateStringToStringDictionary_callback(const void *a1, const void *a2, uint64_t a3)
{
  if (!**a3)
  {
    v5 = CFGetTypeID(a1);
    TypeID = CFStringGetTypeID();
    if (v5 == TypeID)
    {
      v7 = CFGetTypeID(a2);
      v8 = CFStringGetTypeID();
      if (v7 == v8)
      {
        return;
      }

      _SteeringLogError(v8, 4294951542, *(a3 + 16), @"%s: invalid dictionary value data type", *(a3 + 8));
    }

    else
    {
      _SteeringLogError(TypeID, 4294951542, *(a3 + 16), @"%s: invalid dictionary key data type", *(a3 + 8));
    }

    **a3 = -15752;
  }
}

uint64_t fcgcfs_webvtt_addSampleBuffer(uint64_t a1, opaqueCMSampleBuffer *a2)
{
  v184 = *MEMORY[0x1E69E9840];
  v172 = 0;
  v173 = 0;
  v4 = *(MEMORY[0x1E6960C98] + 16);
  *&v171.start.value = *MEMORY[0x1E6960C98];
  *&v171.start.epoch = v4;
  *&v171.duration.timescale = *(MEMORY[0x1E6960C98] + 32);
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!DerivedStorage)
  {
    goto LABEL_13;
  }

  if (!a2)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_2_10();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v122, v124, v126);
    value_low = v121;
    goto LABEL_246;
  }

  FormatDescription = CMSampleBufferGetFormatDescription(a2);
  v7 = FormatDescription;
  if (!FormatDescription)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_2_10();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v122, v124, v126);
    OUTLINED_FUNCTION_7_44();
    goto LABEL_247;
  }

  if (CMFormatDescriptionGetMediaType(FormatDescription) != 1952807028 && CMFormatDescriptionGetMediaType(v7) != 1935832172 || ((MediaSubType = CMFormatDescriptionGetMediaSubType(v7), MediaSubType != 1937142900) ? (v9 = MediaSubType == 2004251764) : (v9 = 1), !v9 ? (v10 = MediaSubType == 2021028980) : (v10 = 1), !v10 || !*DerivedStorage || !*(DerivedStorage + 8)))
  {
LABEL_13:
    fig_log_get_emitter();
    OUTLINED_FUNCTION_2_10();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
LABEL_245:
    OUTLINED_FUNCTION_7_44();
LABEL_246:
    v7 = 0;
LABEL_247:
    Mutable = 0;
    goto LABEL_248;
  }

  if (!CMSampleBufferGetNumSamples(a2))
  {
    goto LABEL_261;
  }

  memset(&v170, 0, sizeof(v170));
  CMSampleBufferGetOutputPresentationTimeStamp(&v170, a2);
  memset(&v169, 0, sizeof(v169));
  CMSampleBufferGetOutputDuration(&v169, a2);
  if (WebVTTCreateAttributedStringArrayFromSampleBuffer(*(DerivedStorage + 16), a2, *(DerivedStorage + 24), &v172))
  {
    goto LABEL_245;
  }

  a2 = MEMORY[0x1E695E480];
  if (!v172)
  {
    cf.start = v169;
    effectiveRange = **&MEMORY[0x1E6960CC0];
    if (CMTimeCompare(&cf.start, &effectiveRange))
    {
      Empty = FigCaptionGroupCreateEmpty();
      a2 = 0;
      if (Empty)
      {
        value_low = Empty;
        v7 = 0;
        Mutable = 0;
        goto LABEL_248;
      }

      v7 = 0;
      Mutable = 0;
LABEL_243:
      cf.start = v170;
      effectiveRange = v169;
      CMTimeRangeMake(&v171, &cf.start, &effectiveRange);
LABEL_244:
      value_low = 0;
      goto LABEL_248;
    }

LABEL_261:
    a2 = 0;
    v7 = 0;
    Mutable = 0;
    goto LABEL_244;
  }

  v145 = DerivedStorage;
  v11 = *MEMORY[0x1E695E480];
  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  if (!Mutable)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_2_10();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v122, v124, v126);
    OUTLINED_FUNCTION_7_44();
    v7 = 0;
    goto LABEL_248;
  }

  v7 = CFDataCreateMutable(v11, 0);
  if (!v7 || (v162 = CFDataCreateMutable(v11, 0)) == 0)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_2_10();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
    OUTLINED_FUNCTION_7_44();
    goto LABEL_248;
  }

  theData = v7;
  Count = CFArrayGetCount(v172);
  if (!Count)
  {
    goto LABEL_238;
  }

  v13 = 0;
  key = *MEMORY[0x1E69607B0];
  v156 = *MEMORY[0x1E69607A0];
  v151 = *MEMORY[0x1E6960790];
  v137 = *MEMORY[0x1E6960788];
  v129 = *MEMORY[0x1E6960798];
  v123 = *MEMORY[0x1E6961568];
  v150 = *MEMORY[0x1E6961278];
  v155 = *MEMORY[0x1E69607C0];
  v149 = *MEMORY[0x1E6961208];
  theString2 = *MEMORY[0x1E6960B78];
  v165 = *MEMORY[0x1E6960B70];
  v146 = *MEMORY[0x1E6961258];
  v147 = *MEMORY[0x1E6961368];
  v148 = *MEMORY[0x1E6961338];
  v153 = *MEMORY[0x1E6960998];
  v143 = *MEMORY[0x1E69609A0];
  v144 = *MEMORY[0x1E69613B8];
  v141 = *MEMORY[0x1E6960838];
  v142 = *MEMORY[0x1E6960978];
  v136 = *MEMORY[0x1E6960A08];
  v133 = *MEMORY[0x1E6960A00];
  v139 = *MEMORY[0x1E69608D8];
  v140 = *MEMORY[0x1E69608E0];
  v138 = *MEMORY[0x1E6960830];
  v135 = *MEMORY[0x1E69609F0];
  v132 = *MEMORY[0x1E69609E8];
  v128 = *MEMORY[0x1E69609E0];
  v127 = *MEMORY[0x1E6961328];
  v131 = *MEMORY[0x1E6961390];
  v130 = *MEMORY[0x1E69612D8];
  v125 = *MEMORY[0x1E69613B0];
  v134 = *MEMORY[0x1E6961240];
  v14 = *MEMORY[0x1E6960930];
  v167 = *MEMORY[0x1E6960938];
  v164 = *MEMORY[0x1E6961248];
  v163 = *MEMORY[0x1E6960948];
  v158 = *MEMORY[0x1E6961250];
  v152 = *MEMORY[0x1E69614E0];
  theArray = Mutable;
  do
  {
    v166 = v13;
    ValueAtIndex = CFArrayGetValueAtIndex(v172, v13);
    v174.length = 0;
    v175 = 0;
    v174.location = 0;
    Length = CFAttributedStringGetLength(ValueAtIndex);
    if (!ValueAtIndex)
    {
      fig_log_get_emitter();
      OUTLINED_FUNCTION_0_92();
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v123, v125, v127);
LABEL_222:
      value_low = v18;
LABEL_40:
      if (v175)
      {
        CFRelease(v175);
      }

      Mutable = theArray;
      if (!value_low)
      {
        v27 = 0;
        goto LABEL_213;
      }

      DerivedStorage = v145;
      v7 = theData;
      goto LABEL_260;
    }

    v17 = Length;
    if (Length < 1)
    {
      value_low = 0;
      goto LABEL_40;
    }

    v18 = FigCaptionDataCreateMutable();
    if (v18)
    {
      goto LABEL_222;
    }

    v19 = v175;
    String = CFAttributedStringGetString(ValueAtIndex);
    v21 = *(*(CMBaseObjectGetVTable() + 16) + 16);
    if (!v21)
    {
      value_low = 4294954514;
      goto LABEL_40;
    }

    v18 = v21(v19, String);
    if (v18)
    {
      goto LABEL_222;
    }

    CMBaseObject = v175;
    effectiveRange.value = 0;
    *&cf.start.timescale = 0;
    cf.start.value = 0;
    if (!v175)
    {
      fig_log_get_emitter();
      OUTLINED_FUNCTION_0_92();
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v123, v125, v127);
      goto LABEL_38;
    }

    v23 = OUTLINED_FUNCTION_8_33();
    CFDictionaryGetValue(v23, key);
    if (!FigCFEqual() && !FigCFEqual() && !FigCFEqual() && !FigCFEqual())
    {
      FigCFEqual();
    }

    v24 = FigCaptionDynamicStyleCreate();
    if (v24)
    {
      goto LABEL_38;
    }

    value = effectiveRange.value;
    CMBaseObject = FigCaptionDataGetCMBaseObject();
    v26 = *(*(CMBaseObjectGetVTable() + 8) + 56);
    if (v26)
    {
      v24 = v26(CMBaseObject, v150, value);
LABEL_38:
      value_low = v24;
      goto LABEL_45;
    }

    value_low = 4294954514;
LABEL_45:
    if (effectiveRange.value)
    {
      CFRelease(effectiveRange.value);
    }

    if (value_low)
    {
      goto LABEL_40;
    }

    v182 = 0;
    *&cf.start.timescale = 0;
    cf.start.value = 0;
    if (v175)
    {
      v28 = OUTLINED_FUNCTION_8_33();
      CMBaseObject = CFDictionaryGetValue(v28, v155);
      if (CMBaseObject)
      {
        v29 = 0;
        effectiveRange.value = 0;
        *&effectiveRange.timescale = 0;
        p_effectiveRange = &effectiveRange;
        do
        {
          FigCFArrayGetFloatAtIndex();
          ++v29;
          p_effectiveRange = (p_effectiveRange + 4);
        }

        while (v29 != 4);
        CGColorSRGB = FigCreateCGColorSRGB();
        v32 = OUTLINED_FUNCTION_4_69(CGColorSRGB);
        if (v32)
        {
          goto LABEL_55;
        }

        v33 = v182;
        v34 = FigCaptionDataGetCMBaseObject();
        v35 = *(*(CMBaseObjectGetVTable() + 8) + 56);
        if (v35)
        {
          v32 = v35(v34, v149, v33);
LABEL_55:
          value_low = v32;
          goto LABEL_57;
        }

        value_low = 4294954514;
      }

      else
      {
        value_low = 0;
      }
    }

    else
    {
      fig_log_get_emitter();
      OUTLINED_FUNCTION_0_92();
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v123, v125, v127);
      OUTLINED_FUNCTION_7_44();
    }

LABEL_57:
    if (v182)
    {
      CFRelease(v182);
    }

    if (CMBaseObject)
    {
      CFRelease(CMBaseObject);
    }

    if (value_low)
    {
      goto LABEL_40;
    }

    v36 = v175;
    v182 = 0;
    effectiveRange.value = 0;
    *&cf.start.timescale = 0;
    cf.start.value = 0;
    OUTLINED_FUNCTION_5_60();
    FigGeometryDimensionMake();
    if (!v36)
    {
      fig_log_get_emitter();
      OUTLINED_FUNCTION_0_92();
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v123, v125, v127);
      goto LABEL_73;
    }

    v37 = OUTLINED_FUNCTION_8_33();
    v38 = CFDictionaryGetValue(v37, *MEMORY[0x1E6960950]);
    if (v38)
    {
      v39 = CFDictionaryGetValue(v38, *MEMORY[0x1E6960B90]);
      if (v39)
      {
        v40 = v39;
        if (CFStringCompare(v39, theString2, 0))
        {
          if (CFStringCompare(v40, v165, 0) && CFStringCompare(v40, *MEMORY[0x1E6960B88], 0))
          {
            CFStringCompare(v40, *MEMORY[0x1E6960B80], 0);
          }
        }
      }

      v41 = FigCaptionRubyReserveCreate();
      if (v41)
      {
        goto LABEL_73;
      }

      v41 = FigCaptionDynamicStyleCreate();
      if (v41)
      {
        goto LABEL_73;
      }

      v42 = effectiveRange.value;
      v43 = FigCaptionDataGetCMBaseObject();
      v44 = *(*(CMBaseObjectGetVTable() + 8) + 56);
      if (v44)
      {
        v41 = v44(v43, v146, v42);
LABEL_73:
        value_low = v41;
        goto LABEL_75;
      }

      value_low = 4294954514;
    }

    else
    {
      value_low = 0;
    }

LABEL_75:
    if (effectiveRange.value)
    {
      CFRelease(effectiveRange.value);
    }

    if (v182)
    {
      CFRelease(v182);
    }

    if (value_low)
    {
      goto LABEL_40;
    }

    v176 = 0;
    v177 = 0;
    if (!v175)
    {
      fig_log_get_emitter();
      OUTLINED_FUNCTION_0_92();
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v123, v125, v127);
      goto LABEL_170;
    }

    v45 = FigCaptionRegionCreateMutable();
    if (!v45)
    {
      v46 = FigCaptionRegionGetCMBaseObject();
      v47 = *(*(CMBaseObjectGetVTable() + 8) + 56);
      if (!v47)
      {
        goto LABEL_171;
      }

      v45 = v47(v46, v148, v147);
      if (!v45)
      {
        effectiveRange.value = 0;
        *&effectiveRange.timescale = 0;
        Attributes = CFAttributedStringGetAttributes(ValueAtIndex, 0, &effectiveRange);
        CFDictionaryGetValue(Attributes, v153);
        if (!FigCFEqual())
        {
          FigCFEqual();
        }

        v45 = FigCaptionDynamicStyleCreate();
        if (!v45)
        {
          v49 = v176;
          v50 = FigCaptionRegionGetCMBaseObject();
          v51 = *(*(CMBaseObjectGetVTable() + 8) + 56);
          if (!v51)
          {
            goto LABEL_171;
          }

          v45 = v51(v50, v144, v49);
          if (!v45)
          {
            v180 = 50.0;
            valuePtr = 100.0;
            v179 = 100.0;
            v178 = 0;
            if (!v177)
            {
              goto LABEL_230;
            }

            v52 = CFDictionaryGetValue(Attributes, v143);
            if (v52)
            {
              CFNumberGetValue(v52, kCFNumberCGFloatType, &valuePtr);
              if (valuePtr < 0.0)
              {
                goto LABEL_230;
              }
            }

            v53 = CFDictionaryGetValue(Attributes, v142);
            v54 = CFDictionaryGetValue(Attributes, key);
            v55 = CFDictionaryGetValue(Attributes, v141);
            v56 = v55;
            if (v53)
            {
              CFNumberGetValue(v53, kCFNumberCGFloatType, &v180);
              if (v180 >= 0.0)
              {
                goto LABEL_94;
              }

LABEL_230:
              fig_log_get_emitter();
              OUTLINED_FUNCTION_0_92();
              FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
LABEL_168:
              v93 = v177;
              v94 = FigCaptionDataGetCMBaseObject();
              v95 = *(*(CMBaseObjectGetVTable() + 8) + 56);
              if (!v95)
              {
LABEL_171:
                value_low = 4294954514;
                goto LABEL_172;
              }

              v45 = v95(v94, v134, v93);
              goto LABEL_170;
            }

            if (v54)
            {
              if (CFStringCompare(v54, v137, 0))
              {
                if (CFStringCompare(v54, v151, 0))
                {
                  if (CFStringCompare(v54, v129, 0) == kCFCompareEqualTo)
                  {
                    v180 = 100.0;
                  }
                }

                else
                {
                  v180 = 50.0;
                }
              }

              else
              {
                v180 = 0.0;
              }

LABEL_94:
              if (v56)
              {
LABEL_95:
                if (CFStringCompare(v56, v136, 0))
                {
                  v57 = CFStringCompare(v56, v133, 0);
                  v58 = MEMORY[0x1E69609F8];
                  if (v57)
                  {
                    goto LABEL_97;
                  }
                }
              }

              else if (v54)
              {
                if (CFStringCompare(v54, v137, 0))
                {
                  if (CFStringCompare(v54, v151, 0))
                  {
                    if (CFStringCompare(v54, v129, 0))
                    {
                      v59 = CFStringCompare(v54, v156, 0);
                      v58 = MEMORY[0x1E6960780];
                      v56 = v54;
                      if (v59)
                      {
LABEL_97:
                        CFStringCompare(v56, *v58, 0);
                      }
                    }
                  }
                }
              }
            }

            else if (v55)
            {
              goto LABEL_95;
            }

            v60 = CFDictionaryGetValue(Attributes, v140);
            v61 = CFDictionaryGetValue(Attributes, v139);
            v62 = CFDictionaryGetValue(Attributes, v138);
            if (v60)
            {
              CFNumberGetValue(v60, kCFNumberCGFloatType, &v179);
              if (v179 < 0.0)
              {
                goto LABEL_230;
              }

LABEL_113:
              v63 = 1;
            }

            else
            {
              if (!v61)
              {
                goto LABEL_113;
              }

              CFNumberGetValue(v61, kCFNumberIntType, &v178);
              v63 = 0;
            }

            if (v62 && CFStringCompare(v62, v135, 0) && CFStringCompare(v62, v132, 0))
            {
              CFStringCompare(v62, v128, 0);
            }

            OUTLINED_FUNCTION_5_60();
            FigGeometryDimensionMake();
            OUTLINED_FUNCTION_5_60();
            FigGeometryDimensionMake();
            OUTLINED_FUNCTION_5_60();
            FigGeometryDimensionMake();
            if (v63)
            {
              OUTLINED_FUNCTION_5_60();
              goto LABEL_123;
            }

            if (v178 < 0)
            {
              FigGeometryDimensionMakeReversed();
            }

            else
            {
LABEL_123:
              FigGeometryDimensionMake();
            }

            OUTLINED_FUNCTION_5_60();
            FigGeometryDimensionMake();
            v65 = v64;
            if (CFDictionaryGetValue(Attributes, v153))
            {
              if (FigCFEqual())
              {
                FigGeometryDimensionMakeMirrored();
                FigGeometryDimensionMakeMirrored();
              }

              v71 = OUTLINED_FUNCTION_11_36();
              if (v71)
              {
                if (OUTLINED_FUNCTION_9_35(v71))
                {
                  v75 = 0;
                }

                else
                {
                  v72 = cf.start.value;
                  v73 = FigCaptionRegionGetCMBaseObject();
                  v74 = *(*(CMBaseObjectGetVTable() + 8) + 56);
                  if (v74)
                  {
                    v75 = v74(v73, v127, v72) == 0;
                  }

                  else
                  {
                    v75 = 0;
                  }
                }

                if (cf.start.value)
                {
                  CFRelease(cf.start.value);
                }

                CFRelease(v65);
                if (!v75)
                {
                  goto LABEL_168;
                }
              }

              OUTLINED_FUNCTION_10_34();
              FigGeometryPointMake();
              v76 = FigGeometryPointCopyAsDictionary();
              if (v76)
              {
                v77 = OUTLINED_FUNCTION_4_69(v76);
                v78 = v182;
                if (v77)
                {
                  v81 = 0;
                  if (v182)
                  {
                    goto LABEL_145;
                  }
                }

                else
                {
                  v79 = FigCaptionRegionGetCMBaseObject();
                  v80 = *(*(CMBaseObjectGetVTable() + 8) + 56);
                  if (v80)
                  {
                    v81 = v80(v79, v131, v78) == 0;
                  }

                  else
                  {
                    v81 = 0;
                  }

                  v78 = v182;
                  if (v182)
                  {
LABEL_145:
                    CFRelease(v78);
                  }
                }

                CFRelease(v65);
                if (!v81)
                {
                  goto LABEL_168;
                }
              }

LABEL_160:
              OUTLINED_FUNCTION_10_34();
              FigGeometryPointMake();
              v88 = FigGeometryPointCopyAsDictionary();
              if (v88)
              {
                v89 = OUTLINED_FUNCTION_4_69(v88);
                v90 = v182;
                if (!v89)
                {
                  v91 = FigCaptionRegionGetCMBaseObject();
                  v92 = *(*(CMBaseObjectGetVTable() + 8) + 56);
                  if (v92)
                  {
                    v92(v91, v130, v90);
                  }

                  v90 = v182;
                }

                if (v90)
                {
                  CFRelease(v90);
                }

                CFRelease(v65);
              }

              goto LABEL_168;
            }

            v66 = OUTLINED_FUNCTION_11_36();
            if (v66)
            {
              v70 = !OUTLINED_FUNCTION_9_35(v66) && (v67 = cf.start.value, v68 = FigCaptionRegionGetCMBaseObject(), (v69 = *(*(CMBaseObjectGetVTable() + 8) + 56)) != 0) && v69(v68, v125, v67) == 0;
              if (cf.start.value)
              {
                CFRelease(cf.start.value);
              }

              CFRelease(v65);
              if (!v70)
              {
                goto LABEL_168;
              }
            }

            OUTLINED_FUNCTION_10_34();
            FigGeometryPointMake();
            v82 = FigGeometryPointCopyAsDictionary();
            if (!v82)
            {
              goto LABEL_160;
            }

            v83 = OUTLINED_FUNCTION_4_69(v82);
            v84 = v182;
            if (v83)
            {
              v87 = 0;
              if (v182)
              {
                goto LABEL_158;
              }
            }

            else
            {
              v85 = FigCaptionRegionGetCMBaseObject();
              v86 = *(*(CMBaseObjectGetVTable() + 8) + 56);
              if (v86)
              {
                v87 = v86(v85, v131, v84) == 0;
              }

              else
              {
                v87 = 0;
              }

              v84 = v182;
              if (v182)
              {
LABEL_158:
                CFRelease(v84);
              }
            }

            CFRelease(v65);
            if (!v87)
            {
              goto LABEL_168;
            }

            goto LABEL_160;
          }
        }
      }
    }

LABEL_170:
    value_low = v45;
LABEL_172:
    if (v176)
    {
      CFRelease(v176);
    }

    if (v177)
    {
      CFRelease(v177);
    }

    if (value_low)
    {
      goto LABEL_40;
    }

    v96 = 0;
    v174.location = 0;
    v174.length = 0;
    do
    {
      v97 = CFAttributedStringGetAttributes(ValueAtIndex, v96, &v174);
      if (FigCFDictionaryGetCount() < 1)
      {
        goto LABEL_209;
      }

      *&cf.start.value = v174;
      *&cf.start.epoch = v175;
      CFDictionaryApplyFunction(v97, fcgcfs_webvtt_attribute_applier, &cf);
      value_low = LODWORD(cf.duration.value);
      if (LODWORD(cf.duration.value))
      {
        goto LABEL_40;
      }

      v99 = v174.length;
      v98 = v175;
      location = v174.location;
      valuePtr = 0.0;
      v182 = 0;
      if (!v175)
      {
        fig_log_get_emitter();
        OUTLINED_FUNCTION_0_92();
        FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v123, v125, v127);
        goto LABEL_202;
      }

      if (CFDictionaryContainsKey(v97, v14))
      {
        v101 = FigCaptionDataCreateMutable();
        if (v101)
        {
          goto LABEL_202;
        }

        v102 = CFDictionaryGetValue(v97, v14);
        v103 = v182;
        v104 = CFAttributedStringGetString(v102);
        v105 = *(*(CMBaseObjectGetVTable() + 16) + 16);
        if (v105)
        {
          v101 = v105(v103, v104);
          if (v101)
          {
            goto LABEL_202;
          }

          effectiveRange.value = 0;
          *&effectiveRange.timescale = 0;
          v106 = CFAttributedStringGetAttributes(v102, 0, &effectiveRange);
          CFDictionaryGetValue(v106, v167);
          if (!FigCFEqual() && !FigCFEqual() && !FigCFEqual() && !FigCFEqual())
          {
            FigCFEqual();
          }

          v101 = FigCaptionDynamicStyleCreate();
          if (v101)
          {
            goto LABEL_202;
          }

          v107 = valuePtr;
          v108 = FigCaptionDataGetCMBaseObject();
          v109 = *(*(CMBaseObjectGetVTable() + 8) + 56);
          if (v109)
          {
            v101 = v109(v108, v164, *&v107);
            if (v101)
            {
              goto LABEL_202;
            }

            CFDictionaryGetValue(v106, v163);
            if (!FigCFEqual())
            {
              FigCFEqual();
            }

            if (valuePtr != 0.0)
            {
              CFRelease(*&valuePtr);
              valuePtr = 0.0;
            }

            v101 = FigCaptionDynamicStyleCreate();
            if (v101)
            {
              goto LABEL_202;
            }

            v110 = valuePtr;
            v111 = FigCaptionDataGetCMBaseObject();
            v112 = *(*(CMBaseObjectGetVTable() + 8) + 56);
            if (v112)
            {
              v101 = v112(v111, v158, *&v110);
              if (v101)
              {
                goto LABEL_202;
              }

              v113 = v182;
              v114 = *(*(CMBaseObjectGetVTable() + 16) + 32);
              if (v114)
              {
                v101 = v114(v98, v152, v113, location, v99);
LABEL_202:
                value_low = v101;
                goto LABEL_204;
              }
            }
          }
        }

        value_low = 4294954514;
      }

      else
      {
        value_low = 0;
      }

LABEL_204:
      if (valuePtr != 0.0)
      {
        CFRelease(*&valuePtr);
      }

      if (v182)
      {
        CFRelease(v182);
      }

      if (value_low)
      {
        goto LABEL_40;
      }

LABEL_209:
      v96 = v174.length + v174.location;
    }

    while (v174.length + v174.location < v17);
    v27 = v175;
    Mutable = theArray;
LABEL_213:
    CFArrayAppendValue(Mutable, v27);
    v115 = MEMORY[0x1E6960CC0];
    CFDataAppendBytes(theData, MEMORY[0x1E6960CC0], 24);
    CFDataAppendBytes(v162, v115, 24);
    if (v27)
    {
      CFRelease(v27);
    }

    v13 = v166 + 1;
  }

  while (v166 + 1 != Count);
LABEL_238:
  v7 = theData;
  CFDataGetMutableBytePtr(theData);
  CFDataGetMutableBytePtr(v162);
  v116 = FigCaptionGroupCreate();
  if (!v116)
  {
    DerivedStorage = v145;
    a2 = v162;
    goto LABEL_243;
  }

  value_low = v116;
  DerivedStorage = v145;
LABEL_260:
  a2 = v162;
LABEL_248:
  v119 = *DerivedStorage;
  v118 = *(DerivedStorage + 8);
  cf = v171;
  v119(v173, &cf, v118);
  if (a2)
  {
    CFRelease(a2);
  }

  if (v7)
  {
    CFRelease(v7);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  if (v172)
  {
    CFRelease(v172);
  }

  if (v173)
  {
    CFRelease(v173);
  }

  return value_low;
}

void fcgcfs_webvtt_attribute_applier(uint64_t a1, const __CFString *a2, uint64_t *a3)
{
  v69 = *MEMORY[0x1E69E9840];
  cf = 0;
  v66 = 0;
  if (*(a3 + 6))
  {
    goto LABEL_26;
  }

  v5 = FigCFEqual();
  v6 = MEMORY[0x1E695E480];
  if (v5)
  {
    v7 = 0;
    v8 = *MEMORY[0x1E69614E8];
    valuePtr = 0uLL;
    p_valuePtr = &valuePtr;
    while (1)
    {
      FloatAtIndex = FigCFArrayGetFloatAtIndex();
      if (!FloatAtIndex)
      {
        goto LABEL_20;
      }

      ++v7;
      p_valuePtr = (p_valuePtr + 4);
      if (v7 == 4)
      {
        v19 = OUTLINED_FUNCTION_6_56(v11, v12, v13, v14, v15, v16, v17, v18, v61, v62, *&v63, *(&v63 + 1), *&v64, *(&v64 + 1), *&cf, *&v66, *&valuePtr, *(&valuePtr + 1), *(&valuePtr + 2), *(&valuePtr + 3));
        cf = v19;
        if (v19)
        {
          v20 = CFGetTypeID(v19);
          if (v20 == CGColorGetTypeID())
          {
            goto LABEL_15;
          }
        }

        goto LABEL_8;
      }
    }
  }

  if (FigCFEqual())
  {
    v21 = 0;
    v8 = *MEMORY[0x1E6961458];
    valuePtr = 0uLL;
    v22 = &valuePtr;
    while (1)
    {
      FloatAtIndex = FigCFArrayGetFloatAtIndex();
      if (!FloatAtIndex)
      {
        goto LABEL_20;
      }

      ++v21;
      v22 = (v22 + 4);
      if (v21 == 4)
      {
        v31 = OUTLINED_FUNCTION_6_56(v23, v24, v25, v26, v27, v28, v29, v30, v61, v62, *&v63, *(&v63 + 1), *&v64, *(&v64 + 1), *&cf, *&v66, *&valuePtr, *(&valuePtr + 1), *(&valuePtr + 2), *(&valuePtr + 3));
        cf = v31;
        if (!v31)
        {
          goto LABEL_8;
        }

        v32 = CFGetTypeID(v31);
        if (v32 != CGColorGetTypeID())
        {
          goto LABEL_8;
        }

        goto LABEL_15;
      }
    }
  }

  if (FigCFEqual())
  {
    if (a2)
    {
      v39 = CFGetTypeID(a2);
      if (v39 == CFBooleanGetTypeID())
      {
        LODWORD(valuePtr) = CFBooleanGetValue(a2) != 0;
        cf = CFNumberCreate(*v6, kCFNumberSInt32Type, &valuePtr);
        if (!cf)
        {
LABEL_8:
          fig_log_get_emitter();
          OUTLINED_FUNCTION_20_0();
          FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
          goto LABEL_20;
        }

        v40 = MEMORY[0x1E6961460];
        goto LABEL_34;
      }
    }

LABEL_119:
    fig_log_get_emitter();
    OUTLINED_FUNCTION_20_0();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
    goto LABEL_20;
  }

  if (FigCFEqual())
  {
    if (!a2)
    {
      goto LABEL_119;
    }

    v41 = CFGetTypeID(a2);
    if (v41 != CFBooleanGetTypeID())
    {
      goto LABEL_119;
    }

    v8 = *MEMORY[0x1E6961480];
    Value = CFBooleanGetValue(a2);
    v43 = MEMORY[0x1E6961488];
    v44 = MEMORY[0x1E6961490];
    goto LABEL_43;
  }

  if (FigCFEqual())
  {
    if (!a2)
    {
      goto LABEL_119;
    }

    v45 = CFGetTypeID(a2);
    if (v45 != CFBooleanGetTypeID())
    {
      goto LABEL_119;
    }

    v8 = *MEMORY[0x1E69614A0];
    Value = CFBooleanGetValue(a2);
    v43 = MEMORY[0x1E69614A8];
    v44 = MEMORY[0x1E69614B0];
LABEL_43:
    if (!Value)
    {
      v43 = v44;
    }

    v33 = *v43;
    cf = *v43;
LABEL_16:
    if (!v33)
    {
      goto LABEL_24;
    }

    goto LABEL_17;
  }

  if (FigCFEqual())
  {
    *&valuePtr = 0;
    if (!a2)
    {
      goto LABEL_119;
    }

    v46 = CFGetTypeID(a2);
    if (v46 != CFNumberGetTypeID())
    {
      goto LABEL_119;
    }

    v8 = *MEMORY[0x1E6961478];
    CFNumberGetValue(a2, kCFNumberCGFloatType, &valuePtr);
    v47 = FigCaptionGeometryCopyCellBasedSizeAsDictionary();
    goto LABEL_59;
  }

  if (FigCFEqual())
  {
    LODWORD(v62) = 0;
    if (!a2)
    {
      goto LABEL_119;
    }

    v48 = CFGetTypeID(a2);
    if (v48 != CFNumberGetTypeID())
    {
      goto LABEL_119;
    }

    v8 = *MEMORY[0x1E6961478];
    CFNumberGetValue(a2, kCFNumberIntType, &v62);
    OUTLINED_FUNCTION_5_60();
    goto LABEL_58;
  }

  if (FigCFEqual())
  {
    v62 = 0.0;
    if (!a2)
    {
      goto LABEL_119;
    }

    v49 = CFGetTypeID(a2);
    if (v49 != CFNumberGetTypeID())
    {
      goto LABEL_119;
    }

    v8 = *MEMORY[0x1E6961478];
    CFNumberGetValue(a2, kCFNumberCGFloatType, &v62);
LABEL_58:
    FigGeometryDimensionMake();
    valuePtr = 0u;
    v68 = 0u;
    FigGeometrySizeMake();
    v63 = valuePtr;
    v64 = v68;
    v47 = FigGeometrySizeCopyAsDictionary();
LABEL_59:
    v33 = v47;
    cf = v47;
    goto LABEL_16;
  }

  if (FigCFEqual())
  {
    if (!a2)
    {
      goto LABEL_119;
    }

    v50 = CFGetTypeID(a2);
    if (v50 != CFStringGetTypeID() || !fcgcfs_webvtt_getGenericFontFamilyNameFromGenericWebVTTFontName(a2))
    {
      goto LABEL_119;
    }

    FloatAtIndex = FigCaptionFontFamilyNameListCreateMutable();
    if (FloatAtIndex)
    {
      goto LABEL_23;
    }

    FloatAtIndex = FigCaptionFontFamilyNameListAppend();
    if (FloatAtIndex)
    {
      goto LABEL_23;
    }

    v51 = MEMORY[0x1E6961470];
    goto LABEL_67;
  }

  if (FigCFEqual())
  {
    if (a2)
    {
      v52 = CFGetTypeID(a2);
      if (v52 == CFStringGetTypeID())
      {
        FloatAtIndex = FigCaptionFontFamilyNameListCreateMutable();
        if (FloatAtIndex)
        {
          goto LABEL_23;
        }

        FloatAtIndex = FigCaptionFontFamilyNameListAppend();
        goto LABEL_20;
      }
    }

    goto LABEL_119;
  }

  if (FigCFEqual())
  {
    *&valuePtr = 0;
    if (!a2)
    {
      goto LABEL_119;
    }

    v53 = CFGetTypeID(a2);
    if (v53 != CFNumberGetTypeID())
    {
      goto LABEL_119;
    }

    v8 = *MEMORY[0x1E6961540];
    CFNumberGetValue(a2, kCFNumberCGFloatType, &valuePtr);
    OUTLINED_FUNCTION_5_60();
    FigGeometryDimensionMake();
    v47 = FigGeometryDimensionCopyAsDictionary();
    goto LABEL_59;
  }

  if (!FigCFEqual())
  {
    if (FigCFEqual())
    {
      LODWORD(valuePtr) = 1;
      if (!a2)
      {
        goto LABEL_119;
      }

      v55 = CFGetTypeID(a2);
      if (v55 != CFNumberGetTypeID())
      {
        goto LABEL_119;
      }

      v8 = *MEMORY[0x1E69614F0];
      CFNumberGetValue(a2, kCFNumberSInt32Type, &valuePtr);
      switch(valuePtr)
      {
        case -1:
          v56 = MEMORY[0x1E69614F8];
          goto LABEL_104;
        case 1:
          v56 = MEMORY[0x1E6961510];
          goto LABEL_104;
        case 2:
          v56 = MEMORY[0x1E6961520];
          goto LABEL_104;
        case 3:
          v56 = MEMORY[0x1E6961518];
          goto LABEL_104;
        case 4:
          v56 = MEMORY[0x1E6961500];
LABEL_104:
          cf = CFRetain(*v56);
          break;
        default:
          goto LABEL_15;
      }

      goto LABEL_15;
    }

    if (!FigCFEqual())
    {
      v8 = 0;
      goto LABEL_15;
    }

    v57 = CFDictionaryGetValue(a2, *MEMORY[0x1E6960BE8]);
    v58 = CFDictionaryGetValue(a2, *MEMORY[0x1E6960BC8]);
    v59 = CFDictionaryGetValue(a2, *MEMORY[0x1E6960BA8]);
    v60 = CFDictionaryGetValue(a2, *MEMORY[0x1E6960BE0]);
    if (v57 && CFStringCompare(v57, *MEMORY[0x1E6960BF0], 0) && CFStringCompare(v57, *MEMORY[0x1E6960C00], 0))
    {
      CFStringCompare(v57, *MEMORY[0x1E6960BF8], 0);
    }

    if (v58 && CFStringCompare(v58, *MEMORY[0x1E6960BD0], 0))
    {
      CFStringCompare(v58, *MEMORY[0x1E6960BD8], 0);
    }

    if (v59 && CFStringCompare(v59, *MEMORY[0x1E6960BB0], 0) && CFStringCompare(v59, *MEMORY[0x1E6960BB8], 0))
    {
      CFStringCompare(v59, *MEMORY[0x1E6960BC0], 0);
    }

    if (v60 && CFStringCompare(v60, *MEMORY[0x1E6960B70], 0))
    {
      CFStringCompare(v60, *MEMORY[0x1E6960B88], 0);
    }

    FloatAtIndex = FigCaptionTextEmphasisCreate();
    if (FloatAtIndex)
    {
      goto LABEL_23;
    }

    v51 = MEMORY[0x1E6961528];
LABEL_67:
    v8 = *v51;
LABEL_15:
    v33 = cf;
    goto LABEL_16;
  }

  if (!a2)
  {
    goto LABEL_119;
  }

  v54 = CFGetTypeID(a2);
  if (v54 != CFStringGetTypeID())
  {
    goto LABEL_119;
  }

  cf = CFStringCreateCopy(*v6, a2);
  if (!cf)
  {
    goto LABEL_119;
  }

  v40 = MEMORY[0x1E6961468];
LABEL_34:
  v8 = *v40;
LABEL_17:
  FloatAtIndex = FigCaptionDynamicStyleCreate();
  if (FloatAtIndex)
  {
LABEL_23:
    *(a3 + 6) = FloatAtIndex;
    goto LABEL_24;
  }

  v34 = a3[1];
  v35 = a3[2];
  v36 = v66;
  v37 = *a3;
  v38 = *(*(CMBaseObjectGetVTable() + 16) + 32);
  if (!v38)
  {
    FloatAtIndex = -12782;
    goto LABEL_23;
  }

  FloatAtIndex = v38(v35, v8, v36, v37, v34);
LABEL_20:
  if (FloatAtIndex)
  {
    goto LABEL_23;
  }

LABEL_24:
  if (cf)
  {
    CFRelease(cf);
  }

LABEL_26:
  if (v66)
  {
    CFRelease(v66);
  }
}

void FigWebVTTCaptionGroupConverterFromSampleBufferCreate_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FigWebVTTCaptionGroupConverterFromSampleBufferCreate_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FigWebVTTCaptionGroupConverterFromSampleBufferCreate_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FigWebVTTCaptionGroupConverterFromSampleBufferCreate_cold_4(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void fcgcfs_webvtt_copyProperty_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void fcgcfs_webvtt_copyProperty_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void fcgcfs_webvtt_copyProperty_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void fcgcfs_webvtt_setProperty_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void fcgcfs_webvtt_setProperty_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void fcgcfs_webvtt_setProperty_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

double FigVirtualDisplaySourceConduitCreate_cold_1()
{
  v0 = OUTLINED_FUNCTION_1_31(*MEMORY[0x1E69E9840], v25, v28, v31, v34, SWORD2(v34), SBYTE6(v34), SHIBYTE(v34));
  v8 = OUTLINED_FUNCTION_103_0(v0, v1, v2, v3, v4, v5, v6, v7, v26, v29, v32, v35, v37, v38, v39);
  v9 = OUTLINED_FUNCTION_77_0(v8);
  if (v9)
  {
    OUTLINED_FUNCTION_2_25(v41, 4.8151e-34);
    OUTLINED_FUNCTION_8_7(v16);
    OUTLINED_FUNCTION_1_24(v17, v18, v19, v20, &dword_1962D5000, v21, v22, "<<<< FigVirtualDisplaySourceConduit >>>> %s: %d: false condition", v27, v30, v33, v36);
    OUTLINED_FUNCTION_192_0();
  }

  else
  {
    v23 = 0;
  }

  return OUTLINED_FUNCTION_0_34(v9, v10, v11, v23, v12, v13, v14, v15, v27, v30, v33, v36, v40);
}

double FigVirtualDisplaySourceConduitCreate_cold_2()
{
  v0 = OUTLINED_FUNCTION_1_31(*MEMORY[0x1E69E9840], v25, v28, v31, v34, SWORD2(v34), SBYTE6(v34), SHIBYTE(v34));
  v8 = OUTLINED_FUNCTION_103_0(v0, v1, v2, v3, v4, v5, v6, v7, v26, v29, v32, v35, v37, v38, v39);
  v9 = OUTLINED_FUNCTION_77_0(v8);
  if (v9)
  {
    OUTLINED_FUNCTION_2_25(v41, 4.8151e-34);
    OUTLINED_FUNCTION_8_7(v16);
    OUTLINED_FUNCTION_1_24(v17, v18, v19, v20, &dword_1962D5000, v21, v22, "<<<< FigVirtualDisplaySourceConduit >>>> %s: %d: false condition", v27, v30, v33, v36);
    OUTLINED_FUNCTION_192_0();
  }

  else
  {
    v23 = 0;
  }

  return OUTLINED_FUNCTION_0_34(v9, v10, v11, v23, v12, v13, v14, v15, v27, v30, v33, v36, v40);
}

double FigVirtualDisplaySourceConduitCreate_cold_3()
{
  v0 = OUTLINED_FUNCTION_1_31(*MEMORY[0x1E69E9840], v25, v28, v31, v34, SWORD2(v34), SBYTE6(v34), SHIBYTE(v34));
  v8 = OUTLINED_FUNCTION_103_0(v0, v1, v2, v3, v4, v5, v6, v7, v26, v29, v32, v35, v37, v38, v39);
  v9 = OUTLINED_FUNCTION_77_0(v8);
  if (v9)
  {
    OUTLINED_FUNCTION_2_25(v41, 4.8151e-34);
    OUTLINED_FUNCTION_8_7(v16);
    OUTLINED_FUNCTION_1_24(v17, v18, v19, v20, &dword_1962D5000, v21, v22, "<<<< FigVirtualDisplaySourceConduit >>>> %s: %d: false condition", v27, v30, v33, v36);
    OUTLINED_FUNCTION_192_0();
  }

  else
  {
    v23 = 0;
  }

  return OUTLINED_FUNCTION_0_34(v9, v10, v11, v23, v12, v13, v14, v15, v27, v30, v33, v36, v40);
}

double FigVirtualDisplaySourceConduitCreate_cold_4()
{
  v0 = OUTLINED_FUNCTION_1_31(*MEMORY[0x1E69E9840], v25, v28, v31, v34, SWORD2(v34), SBYTE6(v34), SHIBYTE(v34));
  v8 = OUTLINED_FUNCTION_103_0(v0, v1, v2, v3, v4, v5, v6, v7, v26, v29, v32, v35, v37, v38, v39);
  v9 = OUTLINED_FUNCTION_77_0(v8);
  if (v9)
  {
    OUTLINED_FUNCTION_2_25(v41, 4.8151e-34);
    OUTLINED_FUNCTION_8_7(v16);
    OUTLINED_FUNCTION_1_24(v17, v18, v19, v20, &dword_1962D5000, v21, v22, "<<<< FigVirtualDisplaySourceConduit >>>> %s: %d: false condition", v27, v30, v33, v36);
    OUTLINED_FUNCTION_192_0();
  }

  else
  {
    v23 = 0;
  }

  return OUTLINED_FUNCTION_0_34(v9, v10, v11, v23, v12, v13, v14, v15, v27, v30, v33, v36, v40);
}

double __FigVirtualDisplaySourceConduitCreate_block_invoke_cold_1()
{
  v0 = OUTLINED_FUNCTION_1_31(*MEMORY[0x1E69E9840], v25, v28, v31, v34, SWORD2(v34), SBYTE6(v34), SHIBYTE(v34));
  v8 = OUTLINED_FUNCTION_103_0(v0, v1, v2, v3, v4, v5, v6, v7, v26, v29, v32, v35, v37, v38, v39);
  v9 = OUTLINED_FUNCTION_77_0(v8);
  if (v9)
  {
    OUTLINED_FUNCTION_2_25(v41, 4.8151e-34);
    OUTLINED_FUNCTION_8_7(v16);
    OUTLINED_FUNCTION_1_24(v17, v18, v19, v20, &dword_1962D5000, v21, v22, "<<<< FigVirtualDisplaySourceConduit >>>> %s: %d: false condition", v27, v30, v33, v36);
    OUTLINED_FUNCTION_192_0();
  }

  else
  {
    v23 = 0;
  }

  return OUTLINED_FUNCTION_0_34(v9, v10, v11, v23, v12, v13, v14, v15, v27, v30, v33, v36, v40);
}

void optimizeRegionStyleAttributesAux(uint64_t a1, uint64_t a2)
{
  Attribute = FigTTMLDocumentWriterElementGetAttribute(a1, @"http://www.w3.org/XML/1998/namespace id");
  *a2 = Attribute;
  if (Attribute)
  {
    v5 = CFGetTypeID(Attribute);
    if (v5 == CFStringGetTypeID() && !FigTTMLDocumentWriterElementGetAttribute(a1, *(a2 + 8)))
    {
      CFDictionaryRemoveAllValues(*(a2 + 24));
      OUTLINED_FUNCTION_0_93(*(a2 + 16));
      v7[0] = *MEMORY[0x1E695E738];
      v6 = v7[0];
      v7[1] = 0;
      CFDictionaryApplyFunction(*(a2 + 24), findMostCommonStyleValue_0, v7);
      if (v7[0] != v6)
      {
        FigTTMLDocumentWriterElementSetAttribute(a1, *(a2 + 8), v7[0]);
        *(a2 + 32) = v7[0];
        OUTLINED_FUNCTION_0_93(*(a2 + 16));
      }
    }
  }
}

uint64_t accumulateAttributeValueCount(uint64_t a1, uint64_t a2)
{
  FigTTMLDocumentWriterElementGetAttribute(a1, @"region");
  if (FigCFEqual() && FigTTMLDocumentWriterElementGetElementType(a1) == 4)
  {
    Attribute = FigTTMLDocumentWriterElementGetAttribute(a1, *(a2 + 8));
    v5 = *(a2 + 24);
    if (Attribute)
    {
      v6 = CFDictionaryGetValue(v5, Attribute) + 1;
      v5 = *(a2 + 24);
      v7 = Attribute;
    }

    else
    {
      v7 = *MEMORY[0x1E695E738];
      v6 = 0x7FFFFFFFLL;
    }

    CFDictionarySetValue(v5, v7, v6);
  }

  return 0;
}

uint64_t removeUnnecesaryAttribute(uint64_t a1, uint64_t a2)
{
  FigTTMLDocumentWriterElementGetAttribute(a1, @"region");
  if (FigCFEqual())
  {
    FigTTMLDocumentWriterElementGetAttribute(a1, *(a2 + 8));
    if (FigCFEqual())
    {
      FigTTMLDocumentWriterElementRemoveAttribute(a1, *(a2 + 8));
    }
  }

  return 0;
}

double FigAttributePartitionGeneratorPerformPartitioning(uint64_t a1, CFMutableDictionaryRef *a2)
{
  if (a1)
  {
    *(a1 + 32) = 1;
    FigCFArrayApplyFunction();
    context[1] = 0;
    v11 = 0;
    context[0] = a1;
    CFDictionaryApplyFunction(*(a1 + 64), fapg_eachUniquenesEntry, context);
    if (!v11)
    {
      FigCFArrayApplyFunction();
      v5 = CFGetAllocator(a1);
      Mutable = CFDictionaryCreateMutable(v5, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      if (Mutable)
      {
        v7 = Mutable;
        FigCFArrayApplyFunction();
        *a2 = v7;
      }

      else
      {
        OUTLINED_FUNCTION_239();
        OUTLINED_FUNCTION_0_27();
        return FigSignalErrorAtGM(v9);
      }
    }
  }

  else
  {
    OUTLINED_FUNCTION_239();
    OUTLINED_FUNCTION_0_94();

    return FigSignalErrorAtGM(v8);
  }

  return result;
}

void fapg_applyElementPassOne(void *a1, uint64_t a2)
{
  if (!*(a2 + 8))
  {
    v4 = *a2;
    if (a1)
    {
      v5 = a1[3];
      if (v5)
      {
        v6 = CFRetain(v5);
        if (v6)
        {
          v7 = v6;
          CFGetAllocator(a1);
          MutableCopy = FigCFDictionaryCreateMutableCopy();
          if (MutableCopy)
          {
            v9 = MutableCopy;
            v10 = a1[4];
            a1[4] = MutableCopy;
            CFRetain(MutableCopy);
            if (v10)
            {
              CFRelease(v10);
            }

            CFRelease(v9);
          }

          else
          {
            OUTLINED_FUNCTION_239();
            OUTLINED_FUNCTION_0_94();
            FigSignalErrorAtGM(v23);
            v13 = v24;
            if (v24)
            {
              goto LABEL_29;
            }
          }

LABEL_11:
          v14 = CFGetAllocator(v4);
          Mutable = CFDictionaryCreateMutable(v14, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
          context[1] = Mutable;
          v26 = 0;
          context[0] = v4;
          CFDictionaryApplyFunction(v7, fapg_buildUniquenessMapApplierFunction, context);
          v13 = v26;
          if (!v26)
          {
            if (a1)
            {
              if (Mutable)
              {
                CFGetAllocator(a1);
                v16 = FigCFDictionaryCreateMutableCopy();
                if (v16)
                {
                  v17 = v16;
                  v18 = a1[5];
                  a1[5] = v16;
                  CFRetain(v16);
                  if (v18)
                  {
                    CFRelease(v18);
                  }

                  CFRelease(v17);
                  goto LABEL_18;
                }
              }
            }

            OUTLINED_FUNCTION_239();
            OUTLINED_FUNCTION_0_94();
            FigSignalErrorAtGM(v21);
            v13 = v22;
            if (!v22)
            {
LABEL_31:
              if (!Mutable)
              {
LABEL_19:
                if (v7)
                {
                  CFRelease(v7);
                }

                return;
              }

LABEL_18:
              CFRelease(Mutable);
              goto LABEL_19;
            }

LABEL_30:
            *(a2 + 8) = v13;
            goto LABEL_31;
          }

          if (Mutable)
          {
            CFRelease(Mutable);
          }

LABEL_29:
          Mutable = 0;
          goto LABEL_30;
        }
      }

      OUTLINED_FUNCTION_239();
      OUTLINED_FUNCTION_0_94();
    }

    else
    {
      OUTLINED_FUNCTION_0_94();
      FigSignalErrorAtGM(v19);
      if (v20)
      {
        v13 = v20;
        Mutable = 0;
        v7 = 0;
        goto LABEL_30;
      }

      OUTLINED_FUNCTION_0_94();
    }

    FigSignalErrorAtGM(v11);
    v13 = v12;
    v7 = 0;
    if (v12)
    {
      goto LABEL_29;
    }

    goto LABEL_11;
  }
}

void fapg_applyElementPassTwo(void *a1, uint64_t *a2)
{
  if (*(a2 + 2))
  {
    return;
  }

  v4 = *a2;
  if (a1)
  {
    v5 = a1[4];
    if (v5)
    {
      v6 = CFRetain(v5);
    }

    else
    {
      v6 = 0;
    }

    v7 = a1[5];
    if (v7)
    {
      v8 = CFRetain(v7);
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    OUTLINED_FUNCTION_0_94();
    FigSignalErrorAtGM(v14);
    if (v12)
    {
      v11 = 0;
      v8 = 0;
      v6 = 0;
      goto LABEL_25;
    }

    OUTLINED_FUNCTION_0_94();
    FigSignalErrorAtGM(v19);
    v8 = 0;
    v6 = 0;
    v11 = 0;
    if (v12)
    {
      goto LABEL_25;
    }
  }

  v9 = CFGetAllocator(a1);
  Mutable = CFArrayCreateMutable(v9, 0, MEMORY[0x1E695E9C0]);
  v11 = Mutable;
  if (!Mutable)
  {
    OUTLINED_FUNCTION_111();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", 0, 4294949346, "(Fig)", 880);
    goto LABEL_24;
  }

  context[1] = Mutable;
  v21 = 0;
  context[0] = v4;
  CFDictionaryApplyFunction(v8, fapg_updateEachReference, context);
  v12 = v21;
  if (v21)
  {
LABEL_25:
    *(a2 + 2) = v12;
LABEL_26:
    if (!v11)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

  if (!a1)
  {
    OUTLINED_FUNCTION_111();
    OUTLINED_FUNCTION_0_94();
    FigSignalErrorAtGM(v15, v16, v17, v18, 248);
LABEL_24:
    if (!v12)
    {
      goto LABEL_26;
    }

    goto LABEL_25;
  }

  v13 = a1[6];
  a1[6] = v11;
  CFRetain(v11);
  if (v13)
  {
    CFRelease(v13);
  }

LABEL_14:
  CFRelease(v11);
LABEL_15:
  if (v8)
  {
    CFRelease(v8);
  }

  if (v6)
  {
    CFRelease(v6);
  }
}

void fapg_buildPartitionCollection(void *cf, uint64_t a2)
{
  if (*(a2 + 16))
  {
    return;
  }

  if (cf && (v4 = CFGetTypeID(cf), OUTLINED_FUNCTION_1_88(), v4 == sFigAttributePartitionID))
  {
    v5 = cf[2];
    if (v5)
    {
      v6 = CFRetain(v5);
      v7 = v6;
      if (v6)
      {
        v8 = CFGetTypeID(v6);
        if (v8 == CFStringGetTypeID())
        {
          v9 = cf[3];
          if (v9)
          {
            v10 = CFRetain(v9);
            CFDictionarySetValue(*(a2 + 8), v7, v10);
            if (v10)
            {
              CFRelease(v10);
            }
          }

          else
          {
            CFDictionarySetValue(*(a2 + 8), v7, 0);
          }

LABEL_16:

          CFRelease(v7);
          return;
        }
      }
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  OUTLINED_FUNCTION_239();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v12, v13, v14);
  if (v11)
  {
    *(a2 + 16) = v11;
  }

  if (v7)
  {
    goto LABEL_16;
  }
}

void fapg_buildUniquenessMapApplierFunction(CFTypeRef cf, const void *a2, uint64_t a3)
{
  if (*(a3 + 16))
  {
    return;
  }

  if (!cf || (v6 = *a3, v7 = CFGetTypeID(cf), v7 != CFStringGetTypeID()))
  {
    OUTLINED_FUNCTION_0_94();
    FigSignalErrorAtGM(v25);
    v23 = v26;
    UInt64 = 0;
    if (!v26)
    {
      goto LABEL_23;
    }

LABEL_30:
    *(a3 + 16) = v23;
    if (!UInt64)
    {
      return;
    }

    goto LABEL_24;
  }

  v9 = v6[7];
  v8 = v6[8];
  Value = CFDictionaryGetValue(v9, cf);
  if (Value)
  {
    Mutable = Value;
    CFRetain(Value);
    Count = CFArrayGetCount(Mutable);
    if (Count >= 1)
    {
      v13 = Count;
      v14 = 0;
      while (1)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(Mutable, v14);
        if (ValueAtIndex)
        {
          v16 = ValueAtIndex;
          CFDictionaryGetValue(ValueAtIndex, @"value");
          if (FigCFEqual())
          {
            break;
          }
        }

        if (v13 == ++v14)
        {
          goto LABEL_12;
        }
      }

      v24 = CFDictionaryGetValue(v16, @"uniqueID");
      if (v24)
      {
        UInt64 = v24;
        CFRetain(v24);
        v19 = 0;
        goto LABEL_15;
      }
    }
  }

  else
  {
    v17 = CFGetAllocator(v6);
    Mutable = CFArrayCreateMutable(v17, 0, MEMORY[0x1E695E9C0]);
    CFDictionarySetValue(v9, cf, Mutable);
  }

LABEL_12:
  v18 = CFGetAllocator(v6);
  v19 = CFDictionaryCreateMutable(v18, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (v6)
  {
    ++v6[6];
    UInt64 = FigCFNumberCreateUInt64();
LABEL_14:
    CFDictionarySetValue(v19, @"value", a2);
    CFDictionarySetValue(v19, @"uniqueID", UInt64);
    CFArrayAppendValue(Mutable, v19);
LABEL_15:
    if (!CFDictionaryContainsKey(v8, UInt64))
    {
      v21 = CFGetAllocator(v6);
      v22 = CFDictionaryCreateMutable(v21, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      CFDictionarySetValue(v22, cf, a2);
      CFDictionarySetValue(v8, UInt64, v22);
      if (v22)
      {
        CFRelease(v22);
      }
    }

    v23 = 0;
    if (v19)
    {
      goto LABEL_19;
    }

    goto LABEL_20;
  }

  OUTLINED_FUNCTION_0_94();
  FigSignalErrorAtGM(v27);
  UInt64 = 0;
  if (!v28)
  {
    goto LABEL_14;
  }

  v23 = v28;
  if (v19)
  {
LABEL_19:
    CFRelease(v19);
  }

LABEL_20:
  if (Mutable)
  {
    CFRelease(Mutable);
  }

  if (v23)
  {
    goto LABEL_30;
  }

LABEL_23:
  CFDictionarySetValue(*(a3 + 8), cf, UInt64);
  if (!UInt64)
  {
    return;
  }

LABEL_24:

  CFRelease(UInt64);
}

void fapg_eachUniquenesEntry(const void *a1, const __CFDictionary *a2, uint64_t a3)
{
  if (*(a3 + 16))
  {
    return;
  }

  v6 = *a3;
  CFGetAllocator(*a3);
  OUTLINED_FUNCTION_1_88();
  Instance = _CFRuntimeCreateInstance();
  v8 = Instance;
  if (Instance)
  {
    Instance[3] = 0;
    if (a2)
    {
      v9 = CFGetAllocator(Instance);
      MutableCopy = CFDictionaryCreateMutableCopy(v9, 0, a2);
      v11 = MutableCopy;
      v12 = v8[3];
      v8[3] = MutableCopy;
      if (MutableCopy)
      {
        CFRetain(MutableCopy);
      }

      if (v12)
      {
        CFRelease(v12);
      }

      if (v11)
      {
        CFRelease(v11);
      }
    }
  }

  else
  {
    OUTLINED_FUNCTION_0_27();
    FigSignalErrorAtGM(v17);
    if (v18 || (OUTLINED_FUNCTION_0_94(), FigSignalErrorAtGM(v19), v18))
    {
LABEL_25:
      *(a3 + 16) = v18;
      goto LABEL_16;
    }
  }

  v13 = CFGetAllocator(v6);
  v14 = CFStringCreateWithFormat(v13, 0, @"style_%ld", *(a3 + 8) + 1);
  if (v14)
  {
    v15 = v14;
    if (v8)
    {
      v16 = v8[2];
      v8[2] = v14;
      CFRetain(v14);
      if (v16)
      {
        CFRelease(v16);
      }
    }

    else
    {
      OUTLINED_FUNCTION_111();
      OUTLINED_FUNCTION_0_94();
      FigSignalErrorAtGM(v20);
      if (v21)
      {
        *(a3 + 16) = v21;
        goto LABEL_15;
      }
    }

    CFDictionarySetValue(v6[9], a1, v15);
    CFArrayAppendValue(v6[5], v8);
    ++*(a3 + 8);
LABEL_15:
    CFRelease(v15);
    goto LABEL_16;
  }

  OUTLINED_FUNCTION_111();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v22, v23, v24);
  if (v18)
  {
    goto LABEL_25;
  }

LABEL_16:
  if (v8)
  {

    CFRelease(v8);
  }
}

void fapg_updateEachReference(uint64_t a1, const void *a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    Value = CFDictionaryGetValue(*(*a3 + 72), a2);
    if (Value)
    {
      v5 = Value;
      v6 = *(a3 + 8);

      CFArrayAppendValue(v6, v5);
    }
  }
}

void FigAttributePartitionGeneratorAddElement_cold_2(const void *a1, _DWORD *a2)
{
  OUTLINED_FUNCTION_0_27();
  FigSignalErrorAtGM(v4);
  *a2 = v5;

  CFRelease(a1);
}

void FigAttributePartitionGeneratorAddElement_cold_3(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_27();
  FigSignalErrorAtGM(v2);
  *a1 = v3;
}

void FigAttributePartitionGeneratorAddElement_cold_4(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_94();
  FigSignalErrorAtGM(v2);
  *a1 = v3;
}

void FigAttributePartitionGeneratorAddElement_cold_5(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_94();
  FigSignalErrorAtGM(v2);
  *a1 = v3;
}

void FigAttributePartitionGeneratorCopyPartitionReferences_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_94();
  FigSignalErrorAtGM(v2);
  *a1 = v3;
}

void FigAttributePartitionGeneratorCopyPartitionReferences_cold_3(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_94();
  FigSignalErrorAtGM(v2);
  *a1 = v3;
}

void FigAttributePartitionGeneratorCopyPartitionReferences_cold_4(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_94();
  FigSignalErrorAtGM(v2);
  *a1 = v3;
}

void FigAttributePartitionGeneratorCopyPartitionReferences_cold_5(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_94();
  FigSignalErrorAtGM(v2);
  *a1 = v3;
}

void FigAttributePartitionGeneratorCreate_cold_1(const void *a1, _DWORD *a2)
{
  OUTLINED_FUNCTION_0_27();
  FigSignalErrorAtGM(v4);
  *a2 = v5;

  CFRelease(a1);
}

void FigAttributePartitionGeneratorCreate_cold_2(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_27();
  FigSignalErrorAtGM(v2);
  *a1 = v3;
}

void FigAttributePartitionGeneratorCreate_cold_3(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_94();
  FigSignalErrorAtGM(v2);
  *a1 = v3;
}

void FigAttributePartitionGeneratorCreate_cold_4(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_94();
  FigSignalErrorAtGM(v2);
  *a1 = v3;
}

double lockLockFile(uint64_t a1, uint64_t a2)
{
  if (!*(a1 + 120))
  {
    AllocatorForMedia = FigGetAllocatorForMedia();
    v4 = CFURLCreateCopyAppendingPathComponent(AllocatorForMedia, *(a1 + 24), @"StreamInfoRoot.xml", 0);
    v5 = FigFileForkOpenMainByCFURL();
    if (v5 == -17913)
    {
      fig_log_get_emitter();
      OUTLINED_FUNCTION_0_4();
      result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v10, v11, v12);
      v5 = v9;
      if (!v4)
      {
LABEL_5:
        if (v5)
        {
          return result;
        }

        goto LABEL_6;
      }
    }

    else if (!v4)
    {
      goto LABEL_5;
    }

    CFRelease(v4);
    goto LABEL_5;
  }

LABEL_6:
  v7 = FigFileLock();
  if (v7 == -12206)
  {
    v8 = -16934;
  }

  else
  {
    v8 = v7;
  }

  if (v8 == -17913)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_0_4();

    return FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
  }

  return result;
}

void HLSPersistentStreamInfo_SetProperty(uint64_t a1, const void *a2, const void *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (DerivedStorage)
  {
    if (!OUTLINED_FUNCTION_5_61(DerivedStorage))
    {
      if (!a2)
      {
        goto LABEL_90;
      }

      if (*(v3 + 8))
      {
        goto LABEL_90;
      }

      OUTLINED_FUNCTION_2_85();
      if (!v7)
      {
        goto LABEL_90;
      }

      if (CFEqual(@"StreamInfoCompleteState", a2))
      {
        if (a3)
        {
          v8 = CFGetTypeID(a3);
          if (v8 == CFBooleanGetTypeID())
          {
            Value = CFBooleanGetValue(a3);
            v10 = *(v3 + 80);
            FigXMLNodeGetTag(v10);
            v11 = FigCFEqual();
            if (!v10 || !v11)
            {
              fig_log_get_emitter();
              OUTLINED_FUNCTION_20_0();
              FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v36, v37, v38);
              v18 = v35;
              goto LABEL_30;
            }

            Child = FigXMLNodeGetChild(v10, @"Complete");
            if (Child)
            {
              v13 = CFRetain(Child);
              cf = v13;
              if (v13)
              {
LABEL_23:
                if (Value == 1)
                {
                  v16 = @"YES";
                }

                else
                {
                  v16 = @"NO";
                }

                v17 = FigXMLNodeContentSetCFString(v13, v16);
                goto LABEL_27;
              }
            }

            else
            {
              cf = 0;
            }

            AllocatorForMedia = FigGetAllocatorForMedia();
            FigXMLNodeCreateChildNode(AllocatorForMedia, v10, @"Complete", &cf);
            v13 = cf;
            goto LABEL_23;
          }
        }
      }

      else
      {
        if (CFEqual(@"StreamInfoMediaPlaylistNetworkURL", a2))
        {
          if (a3)
          {
            v14 = CFGetTypeID(a3);
            if (v14 == CFStringGetTypeID())
            {
              if (xmlSetMediaPlaylist(*(v3 + 80), a3, @"NetworkURL"))
              {
                goto LABEL_91;
              }

              goto LABEL_31;
            }
          }

          goto LABEL_90;
        }

        if (CFEqual(@"StreamInfoMediaTypeList", a2))
        {
          if (a3)
          {
            v19 = CFGetTypeID(a3);
            if (v19 == CFArrayGetTypeID())
            {
              v38 = 0;
              cf = 0;
              v20 = *(v3 + 80);
              FigXMLNodeGetTag(v20);
              v21 = FigCFEqual();
              if (v20 && v21)
              {
                cf = FigXMLNodeGetChild(v20, @"MediaTypeList");
                if (cf)
                {
                  FigXMLNodeRemoveAndClearChild(v20, &cf);
                }

                v22 = FigGetAllocatorForMedia();
                v17 = FigXMLNodeCreateChildNode(v22, v20, @"MediaTypeList", &cf);
                if (!v17)
                {
                  Count = CFArrayGetCount(a3);
                  if (Count < 1)
                  {
LABEL_47:
                    v18 = 0;
                  }

                  else
                  {
                    v24 = Count + 1;
                    while (1)
                    {
                      FigCFArrayGetInt32AtIndex();
                      CFStringForOSTypeValue = FigGetCFStringForOSTypeValue();
                      v26 = FigGetAllocatorForMedia();
                      v27 = FigXMLNodeCreateChildNode(v26, cf, @"MediaType", &v38);
                      if (v27)
                      {
                        break;
                      }

                      v27 = FigXMLNodeAttributeSetCFString(v38, @"type", CFStringForOSTypeValue);
                      if (v27)
                      {
                        break;
                      }

                      if (v38)
                      {
                        CFRelease(v38);
                        v38 = 0;
                      }

                      if (--v24 <= 1)
                      {
                        goto LABEL_47;
                      }
                    }

                    v18 = v27;
                    if (v38)
                    {
                      CFRelease(v38);
                    }
                  }

                  goto LABEL_28;
                }
              }

              else
              {
                fig_log_get_emitter();
                OUTLINED_FUNCTION_20_0();
                FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v36, v37, v38);
              }

LABEL_27:
              v18 = v17;
LABEL_28:
              if (cf)
              {
                CFRelease(cf);
              }

LABEL_30:
              if (v18)
              {
LABEL_91:
                FigReadWriteLockUnlockForWrite();
                return;
              }

LABEL_31:
              OUTLINED_FUNCTION_6_57();
              goto LABEL_91;
            }
          }
        }

        else
        {
          if (!CFEqual(@"StreamInfoStreamType", a2))
          {
            if (CFEqual(@"StreamInfoPeakBandwidth", a2))
            {
              if (!a3)
              {
                goto LABEL_90;
              }

              v30 = CFGetTypeID(a3);
              if (v30 != CFNumberGetTypeID())
              {
                goto LABEL_90;
              }

              v31 = @"PeakBandwidth";
            }

            else
            {
              if (!CFEqual(@"StreamInfoAverageBandwidth", a2))
              {
                if (CFEqual(@"StreamInfoEvictionPolicy", a2))
                {
                  if (a3)
                  {
                    v33 = CFGetTypeID(a3);
                    if (v33 == CFStringGetTypeID())
                    {
                      if (xmlSetEvictionPolicy(v3, a3))
                      {
                        goto LABEL_91;
                      }

                      goto LABEL_31;
                    }
                  }
                }

                else
                {
                  if (!CFEqual(@"StreamInfoUniqueIdentifier", a2))
                  {
                    goto LABEL_31;
                  }

                  if (a3)
                  {
                    v34 = CFGetTypeID(a3);
                    if (v34 == CFStringGetTypeID())
                    {
                      if (xmlSetUniqueIdentifier(v3, a3))
                      {
                        goto LABEL_91;
                      }

                      goto LABEL_31;
                    }
                  }
                }

                goto LABEL_90;
              }

              if (!a3)
              {
                goto LABEL_90;
              }

              v32 = CFGetTypeID(a3);
              if (v32 != CFNumberGetTypeID())
              {
                goto LABEL_90;
              }

              v31 = @"AverageBandwidth";
            }

            if (xmlSetStreamBandwidth(v3, a3, v31))
            {
              goto LABEL_91;
            }

            goto LABEL_31;
          }

          if (a3)
          {
            v28 = CFGetTypeID(a3);
            if (v28 == CFStringGetTypeID())
            {
              if (CFEqual(a3, @"StreamInfoMainStream"))
              {
                v29 = @"Main";
              }

              else
              {
                if (!CFEqual(a3, @"StreamInfoSupplementalStream"))
                {
                  fig_log_get_emitter();
                  OUTLINED_FUNCTION_20_0();
                  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v36, v37, v38);
                  goto LABEL_31;
                }

                v29 = @"Supplemental";
              }

              if (xmlSetStreamType(v3, v29))
              {
                goto LABEL_91;
              }

              goto LABEL_31;
            }
          }
        }
      }

LABEL_90:
      fig_log_get_emitter();
      OUTLINED_FUNCTION_20_0();
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
      goto LABEL_91;
    }
  }

  else
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_20_0();

    FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
  }
}

uint64_t streamInfo_Invalidate(uint64_t a1)
{
  v2 = FigReadWriteLockLockForWrite();
  if (!v2)
  {
    if (!*(a1 + 8))
    {
      *(a1 + 8) = 1;
      if (*(a1 + 120))
      {
        v3 = FigFileUnlock();
        FigFileForkClose();
        *(a1 + 120) = 0;
        if (v3 == -17913)
        {
          fig_log_get_emitter();
          FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v16, v17, v18);
        }
      }

      v4 = *(a1 + 48);
      if (v4)
      {
        CFRelease(v4);
        *(a1 + 48) = 0;
      }

      v5 = *(a1 + 56);
      if (v5)
      {
        CFRelease(v5);
        *(a1 + 56) = 0;
      }

      v6 = *(a1 + 40);
      if (v6)
      {
        CFRelease(v6);
        *(a1 + 40) = 0;
      }

      v7 = *(a1 + 24);
      if (v7)
      {
        CFRelease(v7);
        *(a1 + 24) = 0;
      }

      v8 = *(a1 + 64);
      if (v8)
      {
        CFRelease(v8);
        *(a1 + 64) = 0;
      }

      v9 = *(a1 + 96);
      if (v9)
      {
        CFRelease(v9);
        *(a1 + 96) = 0;
      }

      v10 = *(a1 + 16);
      if (v10)
      {
        CFRelease(v10);
        *(a1 + 16) = 0;
      }

      v11 = *(a1 + 104);
      if (v11)
      {
        CFRelease(v11);
        *(a1 + 104) = 0;
      }

      v12 = *(a1 + 200);
      if (v12)
      {
        CFRelease(v12);
        *(a1 + 200) = 0;
      }

      v13 = *(a1 + 88);
      if (v13)
      {
        CFRelease(v13);
        *(a1 + 88) = 0;
      }

      v14 = *(a1 + 80);
      if (v14)
      {
        CFRelease(v14);
        *(a1 + 80) = 0;
      }
    }

    FigReadWriteLockUnlockForWrite();
  }

  return v2;
}