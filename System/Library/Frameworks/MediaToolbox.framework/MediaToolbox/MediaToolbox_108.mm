void fbapspManager_startDataFlowIfRateIsValid(const void *a1, double a2)
{
  CMBaseObjectGetDerivedStorage();
  if (a2 != -999999.875)
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    v5 = *(DerivedStorage + 72);
    switch(v5)
    {
      case 3:
        if (a2 != 0.0)
        {
          v6 = 2;
          goto LABEL_12;
        }

        break;
      case 2:
        if (a2 == 0.0)
        {
          v6 = 3;
LABEL_12:
          *(DerivedStorage + 72) = v6;
        }

        break;
      case 1:
        if (a2 == 0.0)
        {
          v6 = 3;
        }

        else
        {
          v6 = 2;
        }

        goto LABEL_12;
      default:
        OUTLINED_FUNCTION_303();
        FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v8, v9, v10);
        if (v7)
        {
          return;
        }

        break;
    }

    CMBaseObjectGetDerivedStorage();
    fbapspManager_dataFlowIsAllowed(a1);
    fbapspManager_scheduleProcessingDataIfPossible(a1);
  }
}

uint64_t fbapspManager_isRetransmitForOverlapRequired(uint64_t a1)
{
  CMBaseObjectGetDerivedStorage();
  OUTLINED_FUNCTION_59_2(MEMORY[0x1E6960C70]);
  if ((v1[34].n128_u8[12] & 1) == 0)
  {
    return 0;
  }

  v2 = v1;
  if ((v1[15].n128_u8[4] & 1) == 0)
  {
    return 0;
  }

  v3 = v1 + 34;
  if (v1[22].n128_u8[12])
  {
    OUTLINED_FUNCTION_106(v3);
    v6 = *v2[22].n128_u8;
    CMTimeSubtract(&v8, &lhs, &v6);
  }

  else
  {
    OUTLINED_FUNCTION_59_2(v3);
  }

  lhs = *&v2[14].n128_i8[8];
  v6 = v8;
  v4 = CMTimeCompare(&lhs, &v6) >> 31;
  if (v2[37].n128_u8[0])
  {
    OUTLINED_FUNCTION_106(v2[36].n128_i64 + 4);
    v6 = *&v2[14].n128_i8[8];
    if (CMTimeCompare(&lhs, &v6))
    {
      return v4;
    }

    else
    {
      return 0;
    }
  }

  return v4;
}

uint64_t fbapspManager_setRateAndAnchorTime(const void *a1, __int128 *a2, double a3)
{
  if (!*(CMBaseObjectGetDerivedStorage() + 456))
  {
    v13 = *a2;
    OUTLINED_FUNCTION_44_7();
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    v7 = MEMORY[0x19A8CC720](*MEMORY[0x1E695E480], 64, 0x1020040EB82741ALL, 0);
    if (v7)
    {
      v8 = v7;
      if (a1)
      {
        v9 = CFRetain(a1);
      }

      else
      {
        v9 = 0;
      }

      *v8 = v9;
      *(v8 + 7) = a3;
      *(v8 + 8) = v13;
      *(v8 + 3) = v14;
      *(v8 + 2) = v11;
      *(v8 + 6) = v12;
      dispatch_async_f(*(DerivedStorage + 80), v8, fbapspManager_setRateAndAnchorTimeDispatch);
    }
  }

  return 0;
}

void fbapspManager_setRateAndAnchorTimeDispatch(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(a1 + 7);
  v18 = *(a1 + 1);
  v19 = a1[3];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!*(DerivedStorage + 456))
  {
    if ((v5 = DerivedStorage, v6 = CMBaseObjectGetDerivedStorage(), v7 = v6, !*(v6 + 120)) && *(v6 + 56) != -999999.875 || fbapspManager_isSubPipeStarted(v2) && ((v12 = *(v7 + 72), v3 != 0.0) ? (v13 = v12 == 3) : (v13 = 0), v13 || (v3 == 0.0 ? (v14 = v12 == 2) : (v14 = 0), v14)) || ((v8 = *(v7 + 56), v3 != 0.0) || v8 != -999999.875) && (v3 != 0.0 && v8 == -999999.875 || (v3 != 0.0 || v8 != 0.0) && ((v9 = v3 == 0.0, v8 != 0.0) ? (v10 = 1) : (v9 = 0, v10 = v3 == 0.0), v10 ? (v11 = !v9) : (v11 = 0), !v11)))
    {
      *(v5 + 56) = v3;
      fbapspManager_startDataFlowIfRateIsValid(v2, v3);
      if (!v15)
      {
        v16 = *(v5 + 56);
        v20 = v18;
        v21 = v19;
        fbapspManager_startAudioChainForSubPipe(v2, &v20, v16);
      }
    }
  }

  fbapspManager_releaseAsync(*a1);
  v17 = *MEMORY[0x1E695E480];

  CFAllocatorDeallocate(v17, a1);
}

uint64_t __fbapspManager_reset_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(a1 + 48);
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 456))
  {
    v5 = 0;
    return OUTLINED_FUNCTION_12_7(v5);
  }

  v4 = DerivedStorage;
  v5 = fbapspManager_disconnectSbufBridge(v1);
  if (!v5)
  {
    if (v2)
    {
      v5 = fbapspManager_flushAllSampleBufferConsumers(v1);
      if (v5)
      {
        return OUTLINED_FUNCTION_12_7(v5);
      }

      v5 = CMBufferQueueReset(*(v4 + 200));
      if (v5)
      {
        return OUTLINED_FUNCTION_12_7(v5);
      }

      v5 = fbapspManager_processPendingSbufsOnSubPipeFinished(v1);
      if (v5)
      {
        return OUTLINED_FUNCTION_12_7(v5);
      }

      v19 = *(v4 + 120);
      if (v19)
      {
        v20 = *(*(CMBaseObjectGetVTable() + 16) + 48);
        if (!v20)
        {
          goto LABEL_32;
        }

        v22 = *MEMORY[0x1E6960CC0];
        v23 = *(MEMORY[0x1E6960CC0] + 16);
        v5 = v20(v19, &v22);
        if (v5)
        {
          return OUTLINED_FUNCTION_12_7(v5);
        }
      }
    }

    v6 = *(v4 + 120);
    if (!v6)
    {
LABEL_17:
      v14 = MEMORY[0x1E6960C70];
      fbapspManager_setProcessingState(v1, 1);
      fbapspManager_setSubPipeTerminationInFlight(v1, 0);
      fbapspManager_scheduleProcessingDataIfPossible(v1);
      if (*(v4 + 568))
      {
        FigDeferCFRelease();
        *(v4 + 568) = 0;
      }

      v15 = *v14;
      *(v4 + 544) = *v14;
      v16 = *(v14 + 2);
      *(v4 + 560) = v16;
      *(v4 + 520) = v15;
      *(v4 + 536) = v16;
      *(v4 + 352) = v15;
      *(v4 + 368) = v16;
      *(v4 + 580) = v15;
      *(v4 + 596) = v16;
      v17 = *(v4 + 608);
      if (v17)
      {
        CFRelease(v17);
        *(v4 + 608) = 0;
      }

      v18 = *(v4 + 616);
      if (v18)
      {
        CFRelease(v18);
        *(v4 + 616) = 0;
      }

      v5 = *(v4 + 192);
      if (v5)
      {
        CFRelease(v5);
        v5 = 0;
        *(v4 + 192) = 0;
      }

      return OUTLINED_FUNCTION_12_7(v5);
    }

    v7 = *(*(CMBaseObjectGetVTable() + 16) + 16);
    if (v7)
    {
      v5 = v7(v6, v2);
      if (v5)
      {
        return OUTLINED_FUNCTION_12_7(v5);
      }

      v8 = *(v4 + 120);
      v9 = *(*(CMBaseObjectGetVTable() + 16) + 40);
      if (v9)
      {
        v5 = v9(v8, v2);
        if (v5)
        {
          return OUTLINED_FUNCTION_12_7(v5);
        }

        v5 = fbapspManager_removeListenersForSubPipe(v1, *(v4 + 120));
        if (v5)
        {
          return OUTLINED_FUNCTION_12_7(v5);
        }

        if (*(v4 + 160) && *(v4 + 153))
        {
          v5 = fbapspManager_setTimelineMilestoneOnSubPipe(v1);
          if (v5)
          {
            return OUTLINED_FUNCTION_12_7(v5);
          }

          *(v4 + 153) = 0;
        }

        FigBufferedAirPlayAudioChainSubPipeGetCMBaseObject();
        if (!v10)
        {
          v5 = 4294954516;
          return OUTLINED_FUNCTION_12_7(v5);
        }

        v11 = v10;
        v12 = *(*(CMBaseObjectGetVTable() + 8) + 24);
        if (v12)
        {
          v5 = v12(v11);
          if (v5)
          {
            return OUTLINED_FUNCTION_12_7(v5);
          }

          v13 = *(v4 + 120);
          if (v13)
          {
            CFRelease(v13);
            *(v4 + 120) = 0;
          }

          goto LABEL_17;
        }
      }
    }

LABEL_32:
    v5 = 4294954514;
  }

  return OUTLINED_FUNCTION_12_7(v5);
}

uint64_t fbapspManager_flushAllSampleBufferConsumers(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 456))
  {
    return 0;
  }

  v2 = DerivedStorage;
  v3 = *(DerivedStorage + 96);
  v4 = *(*(CMBaseObjectGetVTable() + 16) + 72);
  if (!v4)
  {
    return 4294954514;
  }

  result = v4(v3);
  if (result)
  {
    return result;
  }

  v6 = *(v2 + 104);
  v7 = *(*(CMBaseObjectGetVTable() + 16) + 72);
  if (!v7)
  {
    return 4294954514;
  }

  return v7(v6);
}

uint64_t __fbapspManager_flush_block_invoke(uint64_t result)
{
  if (!*(*(result + 40) + 456))
  {
    v1 = result;
    v2 = fbapspManager_flushAllSampleBufferConsumers(*(result + 48));
    result = OUTLINED_FUNCTION_0_5(v2);
    if (!v3)
    {
      v4 = *(*(v1 + 40) + 120);
      if (v4)
      {
        v7 = *(v1 + 56);
        v8 = *(v1 + 72);
        v5 = *(*(CMBaseObjectGetVTable() + 16) + 48);
        if (v5)
        {
          v9 = v7;
          v10 = v8;
          v6 = v5(v4, &v9);
        }

        else
        {
          v6 = 4294954514;
        }

        return OUTLINED_FUNCTION_12_7(v6);
      }
    }
  }

  return result;
}

void __fbapspManager_flushFromTime_block_invoke_210(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v107 = *MEMORY[0x1E69E9840];
  *(*(a1 + 48) + 576) = 1;
  if (dword_1EAF16F18)
  {
    v10 = OUTLINED_FUNCTION_39_6(a1, a2, a3, a4, a5, a6, a7, a8, v67, v70, v73, v76, v77, v78, v79, v80, v81, block, v83, v84, v85, v86, v87, v88, *(&v88 + 1), v89, *(&v89 + 1), v90, *(&v90 + 1), v91, *(&v91 + 1), v92, v93, v94, v95);
    OUTLINED_FUNCTION_63_3(v10, v11, v12, v13, v14, v15, v16, v17, v68, v71, v74, v76, v77, v78, v79, v80, v81, block, v83, v84, v85, v86, v87, v88, *(&v88 + 1), v89, *(&v89 + 1), v90, *(&v90 + 1), v91, *(&v91 + 1), v92, v93, v94, v95);
    OUTLINED_FUNCTION_7_22();
    if (p_block)
    {
      v22 = *(a1 + 56);
      if (v22)
      {
        DerivedStorage = CMBaseObjectGetDerivedStorage();
      }

      else
      {
        DerivedStorage = "";
      }

      v24 = *(a1 + 48);
      v25 = *(v24 + 156);
      if ((v25 - 1) >= 4)
      {
        v27 = v25 == 5;
        v26 = "StopMixing";
        if (!v27)
        {
          v26 = "UNKNONW";
        }
      }

      else
      {
        v26 = off_1E7482E38[v25 - 1];
      }

      v28 = *(v24 + 456);
      v96 = 136316162;
      v97 = "fbapspManager_flushFromTime_block_invoke";
      v98 = 2048;
      v99 = v22;
      v100 = 2082;
      v101 = DerivedStorage;
      v102 = 2080;
      v103 = v26;
      v104 = 1024;
      v105 = v28;
      LODWORD(v70) = 48;
      v67 = &v96;
      OUTLINED_FUNCTION_4_41(DerivedStorage, v18, v106, v19, &dword_1962D5000, v20, v21, "<<<< FigBufferedAirPlaySubPipeManager >>>> %s: [%p] %{public}s BEGIN fbapspManager_flushFromTime called. processUntilFlushRangeEnd. processingState=%s, storage->invalidated=%d");
    }

    OUTLINED_FUNCTION_7();
    OUTLINED_FUNCTION_524(v29, v30, v31, v32, v33);
  }

  v34 = *(a1 + 32);
  if (!*(*(v34 + 8) + 24))
  {
    p_block = &block;
    v35 = MEMORY[0x1E69E9820];
    do
    {
      v36 = *(a1 + 64);
      v88 = *(a1 + 48);
      v37 = *(v88 + 80);
      v38 = *(a1 + 96);
      v90 = *(a1 + 80);
      v91 = v38;
      block = v35;
      v83 = 0x40000000;
      v84 = __fbapspManager_flushFromTime_block_invoke_211;
      v85 = &unk_1E7482CB8;
      v89 = v36;
      v39 = *(a1 + 40);
      v86 = v34;
      v87 = v39;
      dispatch_sync(v37, &block);
      v34 = *(a1 + 32);
    }

    while (!*(*(v34 + 8) + 24));
  }

  if (dword_1EAF16F18)
  {
    v40 = OUTLINED_FUNCTION_39_6(a1, a2, a3, a4, a5, a6, a7, a8, v67, v70, v73, v76, v77, v78, v79, v80, v81, block, v83, v84, v85, v86, v87, v88, *(&v88 + 1), v89, *(&v89 + 1), v90, *(&v90 + 1), v91, *(&v91 + 1), v92, v93, v94, v95);
    OUTLINED_FUNCTION_63_3(v40, v41, v42, v43, v44, v45, v46, v47, v69, v72, v75, v76, v77, v78, v79, v80, v81, block, v83, v84, v85, v86, v87, v88, *(&v88 + 1), v89, *(&v89 + 1), v90, *(&v90 + 1), v91, *(&v91 + 1), v92, v93, v94, v95);
    OUTLINED_FUNCTION_7_22();
    if (p_block)
    {
      v48 = *(a1 + 56);
      if (v48)
      {
        CMBaseObjectGetDerivedStorage();
      }

      OUTLINED_FUNCTION_27_9();
      if (v56)
      {
        v27 = v54 == 5;
        v57 = "StopMixing";
        if (!v27)
        {
          v57 = "UNKNONW";
        }
      }

      else
      {
        v57 = off_1E7482E38[v55];
      }

      v96 = 136315906;
      v97 = "fbapspManager_flushFromTime_block_invoke";
      v98 = 2048;
      v99 = v48;
      v100 = 2082;
      v101 = v49;
      v102 = 2080;
      v103 = v57;
      OUTLINED_FUNCTION_4_41(v49, v50, v106, v51, &dword_1962D5000, v52, v53, "<<<< FigBufferedAirPlaySubPipeManager >>>> %s: [%p] %{public}s END. processingState=%s");
    }

    OUTLINED_FUNCTION_7();
    OUTLINED_FUNCTION_524(v58, v59, v60, v61, v62);
  }

  v63 = *(a1 + 56);
  if (v63)
  {
    CFRetain(v63);
    v64 = *(a1 + 56);
  }

  else
  {
    v64 = 0;
  }

  v65 = *(a1 + 48);
  v66 = *(v65 + 80);
  v76 = MEMORY[0x1E69E9820];
  v77 = 0x40000000;
  v78 = __fbapspManager_flushFromTime_block_invoke_213;
  v79 = &__block_descriptor_tmp_214;
  v80 = v65;
  v81 = v64;
  dispatch_async(v66, &v76);
  fbapspManager_releaseAsync(*(a1 + 56));
}

void __fbapspManager_flushFromTime_block_invoke_213(uint64_t a1)
{
  OUTLINED_FUNCTION_46_4((*(a1 + 32) + 580));
  fbapspManager_scheduleProcessingDataIfPossible(*(v2 + 40));
  v3 = *(a1 + 40);

  fbapspManager_releaseAsync(v3);
}

void __fbapspManager_prepareMixingData_block_invoke(uint64_t a1)
{
  v46 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 40);
  if (!*(v2 + 456))
  {
    if (dword_1EAF16F18)
    {
      LODWORD(rhs.value) = 0;
      LOBYTE(value) = 0;
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      OUTLINED_FUNCTION_40();
      if (v1)
      {
        v5 = *(a1 + 48);
        if (v5)
        {
          CMBaseObjectGetDerivedStorage();
        }

        OUTLINED_FUNCTION_27_9();
        if (v9)
        {
          if (v7 == 5)
          {
            v10 = "StopMixing";
          }

          else
          {
            v10 = "UNKNONW";
          }
        }

        else
        {
          v10 = off_1E7482E38[v8];
        }

        LODWORD(lhs.value) = 136315906;
        *(&lhs.value + 4) = "fbapspManager_prepareMixingData_block_invoke";
        LOWORD(lhs.flags) = 2048;
        *(&lhs.flags + 2) = v5;
        HIWORD(lhs.epoch) = 2082;
        v38 = v6;
        v39 = 2080;
        v40 = v10;
        OUTLINED_FUNCTION_108();
        _os_log_send_and_compose_impl(v11, v12, v13, v14, v15, os_log_and_send_and_compose_flags_and_os_log_type, 0, v16, &lhs, 42, rhs.value);
      }

      OUTLINED_FUNCTION_7();
      OUTLINED_FUNCTION_414(v17, v18, v19, v20, v21);
      v2 = *(a1 + 40);
    }

    if (*(v2 + 156) == 3)
    {
      v22 = *(a1 + 48);
      DerivedStorage = CMBaseObjectGetDerivedStorage();
      v42 = *MEMORY[0x1E6960C70];
      v43 = *(MEMORY[0x1E6960C70] + 8);
      v24 = *(DerivedStorage + 608);
      if (v24)
      {
        v25 = CFRetain(v24);
      }

      else
      {
        v25 = CMBufferQueueCopyHead(*(DerivedStorage + 128));
      }

      v26 = v25;
      CMSampleBufferGetOutputPresentationTimeStamp(&v41, v25);
      value = v41.value;
      flags = v41.flags;
      timescale = v41.timescale;
      epoch = v41.epoch;
      CMSampleBufferGetOutputDuration(&v41, v26);
      if ((flags & 1) == 0)
      {
        FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v34, v35, LODWORD(rhs.value));
        goto LABEL_41;
      }

      if ((*(DerivedStorage + 340) & 1) != 0 && (*(DerivedStorage + 364) & 1) == 0)
      {
        lhs = *(DerivedStorage + 328);
        rhs.value = value;
        rhs.timescale = timescale;
        rhs.flags = flags;
        rhs.epoch = epoch;
        CMTimeSubtract(&v41, &lhs, &rhs);
        *(DerivedStorage + 352) = v41;
      }

      if (*(DerivedStorage + 120))
      {
        if (fbapspManager_outputRequiresSubPipeChange(v22, v26))
        {
          v33 = fbapspManager_prepareSubPipeToStop(v22, v26, 1);
          if (v33)
          {
            v31 = v33;
          }

          else
          {
            v31 = -19760;
          }

          goto LABEL_32;
        }
      }

      else
      {
        started = fbapspManager_createAndInitializeSubPipe(v22, v26, @"SubPipeTypeTranscode");
        if (started)
        {
          goto LABEL_41;
        }

        fbapspManager_enqueueMarkerSampleBuffer(v22);
      }

      fbapspManager_setPropertiesOnSubPipe(v22);
      if (!started)
      {
        if (*(DerivedStorage + 364))
        {
          lhs.value = value;
          lhs.timescale = timescale;
          lhs.flags = flags;
          lhs.epoch = epoch;
          rhs = *(DerivedStorage + 352);
          CMTimeAdd(&v41, &lhs, &rhs);
          v42 = v41.value;
          flags = v41.flags;
          v43 = v41.timescale;
          epoch = v41.epoch;
        }

        else
        {
          v42 = value;
          v43 = timescale;
        }

        v30 = *(DerivedStorage + 56);
        v41.value = v42;
        v41.timescale = v43;
        v41.flags = flags;
        v41.epoch = epoch;
        started = fbapspManager_startAudioChainForSubPipe(v22, &v41.value, v30);
        if (!started)
        {
          if (*(DerivedStorage + 384) != 2)
          {
            v31 = 0;
LABEL_32:
            if (v26)
            {
              CFRelease(v26);
            }

            OUTLINED_FUNCTION_2_4();
            *(v32 + 24) = v31;
            goto LABEL_35;
          }

          started = fbapspManager_setTimelineMilestoneOnSubPipeWithOverlapEndTime(v22);
        }
      }

LABEL_41:
      v31 = started;
      goto LABEL_32;
    }
  }

LABEL_35:
  OUTLINED_FUNCTION_372();
}

void __fbapspManager_sourceDataBecameReady_block_invoke(uint64_t a1)
{
  fbapspManager_scheduleProcessingDataIfPossible(*(a1 + 32));
  v2 = *(a1 + 32);

  fbapspManager_releaseAsync(v2);
}

void __fbapspManager_mediatorLowWaterTriggerCallback_block_invoke(uint64_t a1)
{
  fbapspManager_scheduleProcessingDataIfPossible(*(a1 + 32));
  v2 = *(a1 + 32);

  fbapspManager_releaseAsync(v2);
}

CFDictionaryRef fbapspManager_createAndInitializeSubPipe_cold_2(CFDictionaryRef *a1)
{
  result = CFDictionaryCreate(*MEMORY[0x1E695E480], kFigBufferedAirPlaySubPipeManagerProperty_ProcessingMode, kFigBufferedAirPlaySubPipeManagerProcessingMode_Passthrough, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  *a1 = result;
  return result;
}

double fbapspManager_createAndInitializeSubPipe_cold_3(uint64_t a1)
{
  if (*(a1 + 508) != 1)
  {
    *(a1 + 508) = 2;
  }

  *&result = OUTLINED_FUNCTION_46_4((a1 + 460)).n128_u64[0];
  return result;
}

CMAttachmentBearerRef FigBufferedAirPlayAudioChainSubPipeSampleBufferCreateWithTimeStampAndMarker_cold_2(CFStringRef key, void *a2, CMAttachmentBearerRef *a3, CFTypeRef value)
{
  if (key)
  {
    CMSetAttachment(*a3, key, value, 1u);
  }

  result = *a3;
  if (*a3)
  {
    result = CFRetain(result);
  }

  *a2 = result;
  return result;
}

__n128 FigBufferedAirPlayAudioChainSubPipeSampleBufferCreateWithTimeStampAndMarker_cold_3(uint64_t a1, __int128 *a2)
{
  CMTimeMake(&v7, 0, 1);
  *a1 = v7;
  v4 = *a2;
  *(a1 + 40) = *(a2 + 2);
  *(a1 + 24) = v4;
  v5 = MEMORY[0x1E6960C70];
  result = *MEMORY[0x1E6960C70];
  *(a1 + 48) = *MEMORY[0x1E6960C70];
  *(a1 + 64) = *(v5 + 16);
  return result;
}

uint64_t fbapspManager_processOverlapRange_cold_1(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 153))
  {
    *(a1 + 154) = 1;
  }

  result = fbapspManager_setTimelineMilestoneOnSubPipe(a2);
  *(a1 + 153) = 0;
  return result;
}

uint64_t __fbapspManager_flushFromTime_block_invoke_211_cold_1(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  *(*(*(a1 + 40) + 8) + 24) = fbapspManager_setTimelineMilestoneOnSubPipe(*(a1 + 56));
  if (*(*(*(a1 + 40) + 8) + 24))
  {
    return 1;
  }

  result = 0;
  v7 = *a2;
  *a3 = *a2;
  *(v7 + 153) = 0;
  return result;
}

uint64_t __fbapspManager_flushFromTime_block_invoke_211_cold_2(const void *a1, uint64_t a2)
{
  CMSetAttachment(a1, @"SBUFForAutoOrder", *MEMORY[0x1E695E4D0], 0);
  v3 = fbapspManager_disconnectSbufBridge(*(a2 + 56));
  OUTLINED_FUNCTION_32_7(v3);
  if (v4)
  {
    v7 = 1;
  }

  else
  {
    v5 = fbapspManager_clearCurrentSubPipe(*(a2 + 56), 0, 0);
    OUTLINED_FUNCTION_32_7(v5);
    if (v6)
    {
      v7 = -1;
    }

    else
    {
      v7 = 0;
    }
  }

  return v7 & 1;
}

uint64_t faf_mediaValidationFilterFn()
{
  OUTLINED_FUNCTION_369();
  if (FigAlternateHasVideoFormat(v2, 2) && FigAlternateGetVideoRange(v0) == 3)
  {
    return 0;
  }

  if (!FigAlternateGetCodecString(v0))
  {
    return 1;
  }

  result = FigAlternateHasValidCodecs(v0);
  if (!result)
  {
    return result;
  }

  return *MEMORY[0x1E695E4D0] == v1 || !FigAlternateHasUnknownCodecs(v0);
}

uint64_t fappf_PathwayFilterFn(int a1, const __CFData *a2)
{
  v3 = OUTLINED_FUNCTION_25_11(a1, a2);
  PathwayID = FigAlternateGetPathwayID(v2);
  if (!PathwayID)
  {
    return 1;
  }

  if (!*(v3 + 2) && !*(v3 + 1))
  {
    *(v3 + 2) = PathwayID;
    CFRetain(PathwayID);
    return 1;
  }

  return FigCFEqual();
}

uint64_t FigAlternateOfflinePlayableForMediaSelectionFilterCreate(void *a1, uint64_t a2, const __CFArray *a3, int a4, CFTypeRef *a5)
{
  v13 = 0;
  __src = 0u;
  v12 = 0u;
  result = FigStreamingCacheCopyCompletedMediaStreamURLs(a2, &__src, &__src + 8);
  if (!result)
  {
    if (a4)
    {
      v10 = 0;
    }

    else
    {
      v10 = faf_allEqualMinSortingFn;
    }

    *&v12 = faf_copyMediaSelectionPersistentIDForMediaType(a3, 1986618469);
    *(&v12 + 1) = faf_copyMediaSelectionPersistentIDForMediaType(a3, 1936684398);
    v13 = faf_copyMediaSelectionPersistentIDForMediaType(a3, 1935832172);
    return fsaf_createWithBytes(a1, @"OfflinePlayable", 1050, faf_offlinePlayableFilterFn, v10, 0, 0, 0, &__src, 40, faf_offlinePlayableForMediaSelectionFilterBytesDeallocateCallback, a5);
  }

  return result;
}

uint64_t faf_offlinePlayableFilterFn(int a1, const __CFData *a2)
{
  OUTLINED_FUNCTION_7_23(a1, a2);
  v4 = OUTLINED_FUNCTION_199();
  if (FigAlternateIsAudioOnly(v4) && (!FigAlternateIsAudioOnly(v2) || v3[3] || v3[2]))
  {
    v5 = 1;
  }

  else
  {
    v6 = OUTLINED_FUNCTION_177();
    v5 = 0;
    if (!faf_isMediaSelectionOptionOfflinePlayable(v6, v7, 1986618469))
    {
LABEL_18:
      v14 = 0;
      goto LABEL_17;
    }
  }

  v8 = v3[3];
  if (v8)
  {
    v9 = OUTLINED_FUNCTION_177();
    if (!faf_isMediaSelectionOptionOfflinePlayable(v9, v10, 1936684398))
    {
      goto LABEL_18;
    }
  }

  v11 = FigAlternateIsAudioOnly(v2) ? v5 : 0;
  if (!v8 && (v11 & 1) != 0)
  {
    goto LABEL_18;
  }

  if (v3[4])
  {
    v12 = OUTLINED_FUNCTION_177();
    if (!faf_isMediaSelectionOptionOfflinePlayable(v12, v13, 1935832172))
    {
      goto LABEL_18;
    }
  }

  v14 = 1;
LABEL_17:
  FigAlternateSetLastKnownValueForIsFullyCached(v2, v14);
  return v14;
}

BOOL faf_allowableMediaSubtypeIsAlternateMediaSubtypesAllowed(int a1, const __CFData *a2)
{
  v3 = OUTLINED_FUNCTION_7_23(a1, a2);
  v4 = *(v3 + 1);
  if ((!v4 || CFArrayGetCount(v4) <= 0) && (!*v3 || CFArrayGetCount(*v3) < 1))
  {
    return 1;
  }

  if (FigAlternateHasUnknownCodecs(v2))
  {
    return 0;
  }

  v5 = *(v3 + 1);
  if (v5 && CFArrayGetCount(v5) >= 1)
  {
    CountOfValidMediaSubTypes = FigAlternateGetCountOfValidMediaSubTypes(v2, 1936684398);
    if (!v3[16])
    {
      CountOfValidMediaSubTypes += FigAlternateHasAudioFormat(v2, 7);
    }

    v7 = 0;
    for (i = 0; ; ++i)
    {
      Count = *(v3 + 1);
      if (Count)
      {
        Count = CFArrayGetCount(Count);
      }

      if (i >= Count)
      {
        break;
      }

      FigCFArrayGetInt32AtIndex();
      v7 += FigAlternateHasAudioFormatID(v2, 0);
    }

    if (v7 != CountOfValidMediaSubTypes)
    {
      return 0;
    }
  }

  if (!*v3 || CFArrayGetCount(*v3) < 1)
  {
    return 1;
  }

  v10 = FigAlternateGetCountOfValidMediaSubTypes(v2, 1986618469);
  v11 = 0;
  for (j = 0; ; ++j)
  {
    v13 = *v3;
    if (*v3)
    {
      v13 = CFArrayGetCount(v13);
    }

    if (j >= v13)
    {
      break;
    }

    FigCFArrayGetInt32AtIndex();
    v11 += FigAlternateHasVideoCodecType(v2, 0);
  }

  return v11 == v10;
}

uint64_t faf_videoFormatFilterFirstPassFn(int a1, const __CFData *a2)
{
  OUTLINED_FUNCTION_7_23(a1, a2);
  v5 = OUTLINED_FUNCTION_199();
  result = FigAlternateIsAudioOnly(v5);
  if (!(*(v3 + 16) | result))
  {
    VideoRange = FigAlternateGetVideoRange(v2);
    result = FigAlternateGetBestVideoFormat(v2);
    if (VideoRange == *v3 && result == *(v3 + 4))
    {
      *(v3 + 16) = 1;
    }

    else
    {
      v8 = *(v3 + 8);
      if (!v8 || (result = faf_videoFormatPreferenceFilterMinSortingFn(v2, v8, a2), result == -1))
      {
        *(v3 + 8) = v2;
      }
    }
  }

  return result;
}

uint64_t faf_videoRangeFirstPassFn(int a1, const __CFData *a2)
{
  OUTLINED_FUNCTION_7_23(a1, a2);
  v4 = OUTLINED_FUNCTION_199();
  result = FigAlternateIsAudioOnly(v4);
  if (!(*(v3 + 16) | result))
  {
    result = FigAlternateGetVideoRange(v2);
    if (result == *v3)
    {
      *(v3 + 16) = 1;
    }

    else
    {
      v6 = *(v3 + 8);
      if (!v6 || (result = faf_videoRangeMinSortingFn(v2, v6, v3), result == -1))
      {
        *(v3 + 8) = v2;
      }
    }
  }

  return result;
}

uint64_t FigAlternatePixelsPerSecondCapFilterCreate(uint64_t a1, uint64_t a2, CFTypeRef *a3)
{
  SInt64 = FigCFNumberCreateSInt64();
  if (!SInt64)
  {
    return 4294951685;
  }

  v6 = SInt64;
  v7 = FigSimpleAlternateFilterCreate(a1, @"PixelsPerSecondBudget", 852, &unk_1F0AE08E0, SInt64, a3);
  CFRelease(v6);
  return v7;
}

uint64_t faf_audioFormatFilterFirstPassFn(int a1, const __CFData *a2)
{
  v4 = OUTLINED_FUNCTION_7_23(a1, a2);
  v10 = 0;
  v11 = 0;
  v12 = 0;
  memset(v8, 0, sizeof(v8));
  result = FigAlternateHasVideo(v2);
  if (result)
  {
    result = FigAlternateHasAudio(v2);
    v6 = result == 0;
  }

  else
  {
    v6 = 0;
  }

  if (!v4[32] && !v6)
  {
    v9 = *v4;
    LODWORD(v10) = 0;
    BYTE4(v10) = v4[16];
    v11 = 0;
    LODWORD(v12) = 0x80000000;
    faf_populateAudioFormatAlternateComparatorRec(v2, *(v4 + 2), v8);
    result = faf_audioFormatPreferenceComparator(v8, &v9, v4);
    if (result)
    {
      v7 = *(v4 + 3);
      if (!v7 || (result = faf_audioFormatPreferenceFilterMinSortingFn(v2, v7, a2), result == -1))
      {
        *(v4 + 3) = v2;
      }
    }

    else
    {
      v4[32] = 1;
    }
  }

  return result;
}

uint64_t faf_ImmersiveAudioPreferenceFirstPassFn(int a1, const __CFData *a2)
{
  OUTLINED_FUNCTION_7_23(a1, a2);
  v5 = OUTLINED_FUNCTION_199();
  SpecializedChannelUsage = faf_GetSpecializedChannelUsage(v5, a2);
  result = FigAlternateGetAverageBitRate(v2);
  if (!*(v3 + 8))
  {
    v8 = *(v3 + 4);
    if (v8 == -1 || result < v8)
    {
      if (SpecializedChannelUsage == *(v3 + 24))
      {
        *(v3 + 8) = 1;
      }

      else
      {
        v10 = *(v3 + 16);
        if (!v10 || (result = faf_ImmersiveAudioComparator(v2, v10, a2), result == 1))
        {
          *(v3 + 16) = v2;
        }
      }
    }
  }

  return result;
}

BOOL faf_ImmersiveAudioPreferenceFilterFn(int a1, const __CFData *a2)
{
  v4 = OUTLINED_FUNCTION_25_11(a1, a2);
  v5 = OUTLINED_FUNCTION_177();
  SpecializedChannelUsage = faf_GetSpecializedChannelUsage(v5, v6);
  AverageBitRate = FigAlternateGetAverageBitRate(v2);
  if (FigAlternateHasVideo(v2))
  {
    v9 = FigAlternateHasAudio(v2) == 0;
  }

  else
  {
    v9 = 0;
  }

  v10 = *(v4 + 1);
  if (v10 != -1 && AverageBitRate >= v10)
  {
    return 0;
  }

  if (v4[8])
  {
    return v9 || SpecializedChannelUsage == *(v4 + 6);
  }

  else
  {
    if (v4[28])
    {
      return 0;
    }

    return !faf_ImmersiveAudioComparator(v2, *(v4 + 2), a2) || v9;
  }
}

void faf_maximumSampleRatePreferenceFirstPassFn(uint64_t a1, CFDataRef theData)
{
  BytePtr = CFDataGetBytePtr(theData);
  if ((*BytePtr & 0x80000000) != 0)
  {
    v4 = 0;
  }

  else
  {
    v4 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt32Type, BytePtr);
  }

  AudioSampleRate = FigAlternateGetAudioSampleRate(a1, v4);
  if (AudioSampleRate != 0.0)
  {
    if (AudioSampleRate <= *(BytePtr + 1))
    {
      *(BytePtr + 16) = 1;
    }

    v6 = *(BytePtr + 3);
    if (v6 == 0.0 || AudioSampleRate < v6)
    {
      *(BytePtr + 3) = AudioSampleRate;
    }
  }

  if (v4)
  {

    CFRelease(v4);
  }
}

BOOL faf_maximumSampleRatePreferenceFilterFn(uint64_t a1, CFDataRef theData)
{
  BytePtr = CFDataGetBytePtr(theData);
  if ((*BytePtr & 0x80000000) != 0)
  {
    v4 = 0;
  }

  else
  {
    v4 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt32Type, BytePtr);
  }

  AudioSampleRate = FigAlternateGetAudioSampleRate(a1, v4);
  if (AudioSampleRate == 0.0)
  {
    v6 = 1;
    if (!v4)
    {
      return v6;
    }

    goto LABEL_9;
  }

  if (BytePtr[16])
  {
    v6 = AudioSampleRate <= *(BytePtr + 1);
    if (!v4)
    {
      return v6;
    }

    goto LABEL_9;
  }

  v6 = AudioSampleRate == *(BytePtr + 3);
  if (v4)
  {
LABEL_9:
    CFRelease(v4);
  }

  return v6;
}

void faf_MultichannelAudioFilterFnForMultiFirstPassFn(int a1, const __CFData *a2)
{
  v3 = OUTLINED_FUNCTION_25_11(a1, a2);
  if (!v3[4])
  {
    v4 = v3;
    if ((*v3 & 0x80000000) != 0)
    {
      AudioChannelCounts = FigAlternateGetAudioChannelCounts(v2, 0, 0, 0);
    }

    else
    {
      v5 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt32Type, v3);
      AudioChannelCounts = FigAlternateGetAudioChannelCounts(v2, v5, 0, 0);
      if (v5)
      {
        CFRelease(v5);
      }
    }

    if (AudioChannelCounts >= 3)
    {
      *(v4 + 4) = 1;
    }
  }
}

uint64_t FigAlternateCombinedAudioPreferenceFilterCreate(int a1, int a2, unsigned int a3, const void *a4, uint64_t a5, int a6, char a7, uint64_t a8, CFArrayRef a9, CFTypeRef *a10)
{
  *v155 = 0u;
  *v156 = 0u;
  v14 = *(a5 + 4);
  v15 = *(a5 + 8);
  *v157 = 0u;
  v157[2] = v14;
  v158 = v15;
  *theArray = 0u;
  theArray[0] = *(a5 + 24);
  LOBYTE(v155[0]) = *a5;
  HIDWORD(v155[0]) = a2;
  v155[1] = a3;
  v156[1] = a4;
  v156[0] = faf_copyMediaSelectionPersistentIDForMediaType(a9, 1936684398);
  v157[0] = a6;
  LOBYTE(v157[1]) = a7;
  v16 = *MEMORY[0x1E695E480];
  if (a8)
  {
    v152 = FigAlternateOfflinePlayableForMediaSelectionFilterCreate(*MEMORY[0x1E695E480], a8, a9, 1, &theArray[1]);
    if (v152)
    {
      Filter = v152;
      goto LABEL_276;
    }
  }

  v162 = 0;
  v163 = 0;
  v161 = 0;
  v17 = FigAlternateFilterTreeCreate(v16, &v161);
  if (v17)
  {
    goto LABEL_269;
  }

  if (!v161)
  {
    OUTLINED_FUNCTION_40_0();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v153, v154, LODWORD(v155[0]));
    goto LABEL_269;
  }

  v17 = faf_CombinedAudioPreferenceAlternateFilterForChannels(v155, 2, 0, &v162);
  if (v17)
  {
LABEL_269:
    Filter = v17;
    goto LABEL_270;
  }

  v18 = v162;
  OUTLINED_FUNCTION_5_37();
  inserted = OUTLINED_FUNCTION_11_18();
  if (inserted)
  {
    goto LABEL_292;
  }

  if (!v184)
  {
    OUTLINED_FUNCTION_40_0();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v153, v154, LODWORD(v155[0]));
LABEL_292:
    Filter = inserted;
    goto LABEL_293;
  }

  inserted = OUTLINED_FUNCTION_23_12(inserted, v20, v21, v22, v23, v24, v25, v26, v153, v154, v155[0], v155[1], v156[0]);
  if (inserted)
  {
    goto LABEL_292;
  }

  inserted = FigAlternateFilterTreeInsertLeaf(v184, v177, 510);
  if (inserted)
  {
    goto LABEL_292;
  }

  v27 = OUTLINED_FUNCTION_9_20();
  inserted = OUTLINED_FUNCTION_12_18(v27, a9, 4, v28, v29, v30);
  if (inserted)
  {
    goto LABEL_292;
  }

  inserted = FigAlternateFilterTreeInsertLeaf(v184, v183, 500);
  if (inserted)
  {
    goto LABEL_292;
  }

  inserted = OUTLINED_FUNCTION_3_39(0, v31, v32, v33, v34, v35, v36, v37, v153, v154, v155[0], HIDWORD(v155[0]), v155[1], v156[0], v156[1], v157[0], v157[1]);
  if (inserted)
  {
    goto LABEL_292;
  }

  v38 = OUTLINED_FUNCTION_13_12();
  inserted = FigAlternateFilterTreeInsertLeaf(v38, v39, 490);
  if (inserted)
  {
    goto LABEL_292;
  }

  if (v18)
  {
    inserted = FigAlternateFilterTreeSetFallbackBranch(v184, v18);
    if (inserted)
    {
      goto LABEL_292;
    }
  }

  Filter = FigAlternateFilterTreeCreateFilter(v184, @"ImmersiveAudioFilterTree", 760, &v178);
  if (!Filter)
  {
    v41 = v178;
    v163 = v178;
    *&v178 = 0;
    goto LABEL_17;
  }

LABEL_293:
  v41 = 0;
LABEL_17:
  if (v184)
  {
    CFRelease(v184);
  }

  if (v178)
  {
    CFRelease(v178);
  }

  if (v183)
  {
    CFRelease(v183);
  }

  if (v182)
  {
    CFRelease(v182);
  }

  if (v177)
  {
    CFRelease(v177);
  }

  if (Filter)
  {
LABEL_270:
    v124 = v163;
    if (!v163)
    {
      goto LABEL_272;
    }

    goto LABEL_271;
  }

  if (v41)
  {
    v162 = v41;
    CFRetain(v41);
    if (v18)
    {
      CFRelease(v18);
    }

    CFRelease(v41);
    v163 = 0;
  }

  else
  {
    v41 = v18;
  }

  if (!LOBYTE(v155[0]) && (v155[1] > 2 || !v155[1]))
  {
    v17 = faf_CombinedAudioPreferenceAlternateFilterForChannels(v155, v155[1], v41, &v163);
    if (!v17)
    {
      v18 = v163;
      if (v163)
      {
        v162 = v163;
        CFRetain(v163);
        if (v41)
        {
          CFRelease(v41);
        }

        CFRelease(v18);
        v163 = 0;
      }

      goto LABEL_36;
    }

    goto LABEL_269;
  }

LABEL_36:
  if (theArray[0] && CFArrayGetCount(theArray[0]) >= 1)
  {
    v42 = 0;
    OUTLINED_FUNCTION_18_9();
    v44 = v43 + 1;
    v45 = 1835824233;
    while (1)
    {
      v160 = v10;
      FigCFArrayGetInt32AtIndex();
      if (v160 == 1651076712)
      {
        break;
      }

      if (v160 == 1835824233)
      {
        v46 = v162;
        v174 = 0;
        v175 = 0;
        v172 = 0;
        cf = 0;
        v170 = 0;
        v171 = 0;
        v168 = 0;
        v169 = 0;
        v166 = 0;
        v167 = 0;
        v164 = 0;
        v165 = 0;
        if (!FigAlternateFilterTreeCreate(v16, &v171))
        {
          if (!v171)
          {
            goto LABEL_155;
          }

          if (FigAlternateFilterTreeCreate(v16, &cf))
          {
            goto LABEL_156;
          }

          if (!cf)
          {
LABEL_155:
            OUTLINED_FUNCTION_40_0();
            FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
            goto LABEL_156;
          }

          v47 = v157[2];
          if (v157[2] != 1836019574 || !FigAlternateResolutionLowerLimitFilterCreate(v16, &v166, *&v158, *(&v158 + 1)) && !FigAlternateFilterTreeInsertLeaf(v171, v166, 520))
          {
            v10 = v156[0];
            v48 = OUTLINED_FUNCTION_620();
            if (!FigAlternateEligibleLosslessAudioFilterCreate(v48, v49, v50) && !FigAlternateFilterTreeInsertLeaf(v171, v165, 510))
            {
              v51 = OUTLINED_FUNCTION_620();
              if (!FigAlternateMultichannelAudioFilterCreate(v51, v52, 1, 1, v53) && !FigAlternateFilterTreeInsertLeaf(v171, v168, 480))
              {
                v54 = OUTLINED_FUNCTION_620();
                if (!OUTLINED_FUNCTION_12_18(v54, v55, 1, v56, v57, v58) && !FigAlternateFilterTreeInsertLeaf(v171, v169, 500))
                {
                  v18 = v156[1];
                  v41 = LOBYTE(v157[1]);
                  v45 = v157[0];
                  if (!OUTLINED_FUNCTION_24_8(v16, HIDWORD(v155[0]), v155[1], v59, v60, v61, v62, &v167) && !FigAlternateFilterTreeInsertLeaf(v171, v167, 490) && !FigAlternateAmbisonicOrderFilterCreate(v16, 0, 0x7FFFFFFF, v10, 0, &v170) && !FigAlternateFilterTreeInsertLeaf(v171, v170, 505))
                  {
                    OUTLINED_FUNCTION_15_14();
                    if (!FigAlternateFilterTreeCreateFilter(v63, v64, v65, v66))
                    {
                      OUTLINED_FUNCTION_5_37();
                      v176 = 0;
                      v67 = OUTLINED_FUNCTION_11_18();
                      if (!v67)
                      {
                        if (v184)
                        {
                          if (v47 != 1836019574 || (v67 = FigAlternateResolutionUpperLimitFilterCreate(v16, &v182, *&v158 + -1.0, *(&v158 + 1) + -1.0), !v67) && (v68 = OUTLINED_FUNCTION_13_12(), v67 = FigAlternateFilterTreeInsertLeaf(v68, v69, 520), !v67))
                          {
                            v70 = OUTLINED_FUNCTION_620();
                            v67 = FigAlternateEligibleLosslessAudioFilterCreate(v70, v71, v72);
                            if (!v67)
                            {
                              v67 = FigAlternateFilterTreeInsertLeaf(v184, v176, 510);
                              if (!v67)
                              {
                                v73 = OUTLINED_FUNCTION_620();
                                v67 = FigAlternateImmersiveAudioPreferenceFilterCreate(v73, v74, 2, -1, 0, v75);
                                if (!v67)
                                {
                                  v67 = FigAlternateFilterTreeInsertLeaf(v184, v183, 500);
                                  if (!v67)
                                  {
                                    v67 = OUTLINED_FUNCTION_24_8(v16, 0, 2u, v76, v77, v78, v79, &v177);
                                    if (!v67)
                                    {
                                      v67 = FigAlternateFilterTreeInsertLeaf(v184, v177, 490);
                                      if (!v67)
                                      {
                                        OUTLINED_FUNCTION_14_16();
                                        OUTLINED_FUNCTION_15_14();
                                        Filter = FigAlternateFilterTreeCreateFilter(v80, v81, v82, v83);
                                        v45 = v178;
                                        if (!Filter)
                                        {
                                          *&v178 = 0;
                                          goto LABEL_72;
                                        }

                                        if (v178)
                                        {
                                          CFRelease(v178);
LABEL_161:
                                          v45 = 0;
                                        }

LABEL_72:
                                        if (v184)
                                        {
                                          CFRelease(v184);
                                        }

                                        if (v183)
                                        {
                                          CFRelease(v183);
                                        }

                                        if (v182)
                                        {
                                          CFRelease(v182);
                                        }

                                        if (v177)
                                        {
                                          CFRelease(v177);
                                        }

                                        if (v176)
                                        {
                                          CFRelease(v176);
                                        }

                                        if (Filter)
                                        {
                                          v18 = 0;
                                        }

                                        else
                                        {
                                          OUTLINED_FUNCTION_15_14();
                                          FigAlternateMergeFilterCreate(v84, v85, v86, v87, v45, 1, v88);
                                          v18 = v175;
                                          v89 = FigAlternateFilterTreeInsertLeaf(cf, v175, 760);
                                          if (!v89)
                                          {
                                            if (v47 == 1936684398 && ((v90 = OUTLINED_FUNCTION_620(), v93 = FigAlternateStereoCapForMultichannelFilterCreate(v90, v91, v92), v93) || (v93 = FigAlternateFilterTreeInsertLeaf(cf, v172, 750), v93)) || v46 && (v93 = FigAlternateFilterTreeSetFallbackBranch(cf, v46), v93))
                                            {
                                              Filter = v93;
                                              OUTLINED_FUNCTION_18_9();
                                            }

                                            else
                                            {
                                              OUTLINED_FUNCTION_15_14();
                                              Filter = FigAlternateFilterTreeCreateFilter(v94, v95, v96, v97);
                                              OUTLINED_FUNCTION_18_9();
                                              if (!v98)
                                              {
                                                v163 = v174;
                                                v174 = 0;
                                              }
                                            }

LABEL_91:
                                            if (cf)
                                            {
                                              CFRelease(cf);
                                            }

                                            if (v18)
                                            {
                                              CFRelease(v18);
                                            }

                                            if (v174)
                                            {
                                              CFRelease(v174);
                                            }

                                            if (v164)
                                            {
                                              CFRelease(v164);
                                            }

                                            if (v45)
                                            {
                                              CFRelease(v45);
                                            }

                                            if (v171)
                                            {
                                              CFRelease(v171);
                                            }

                                            v45 = 1835824233;
                                            if (v172)
                                            {
                                              CFRelease(v172);
                                            }

                                            if (v169)
                                            {
                                              CFRelease(v169);
                                            }

                                            if (v170)
                                            {
                                              CFRelease(v170);
                                            }

                                            if (v168)
                                            {
                                              CFRelease(v168);
                                            }

                                            if (v166)
                                            {
                                              CFRelease(v166);
                                            }

                                            if (v167)
                                            {
                                              CFRelease(v167);
                                            }

                                            if (v165)
                                            {
                                              CFRelease(v165);
                                            }

                                            if (Filter)
                                            {
                                              goto LABEL_270;
                                            }

                                            v42 = v163;
                                            v18 = v163;
LABEL_142:
                                            if (v18)
                                            {
                                              v41 = v162;
                                              v162 = v18;
                                              CFRetain(v18);
                                              if (v41)
                                              {
                                                CFRelease(v41);
                                              }

                                              CFRelease(v18);
                                              v42 = 0;
                                              v163 = 0;
                                            }

                                            goto LABEL_146;
                                          }

                                          Filter = v89;
                                        }

LABEL_149:
                                        OUTLINED_FUNCTION_18_9();
                                        goto LABEL_91;
                                      }
                                    }
                                  }
                                }
                              }
                            }
                          }
                        }

                        else
                        {
                          OUTLINED_FUNCTION_40_0();
                          FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v153, v154, LODWORD(v155[0]));
                        }
                      }

                      Filter = v67;
                      goto LABEL_161;
                    }
                  }
                }
              }
            }

            OUTLINED_FUNCTION_6_32();
            goto LABEL_149;
          }
        }

LABEL_156:
        OUTLINED_FUNCTION_6_32();
        goto LABEL_91;
      }

LABEL_146:
      if (--v44 <= 1)
      {
        goto LABEL_166;
      }
    }

    v99 = v162;
    OUTLINED_FUNCTION_5_37();
    v100 = OUTLINED_FUNCTION_11_18();
    if (!v100)
    {
      if (v184)
      {
        v100 = OUTLINED_FUNCTION_23_12(v100, v101, v102, v103, v104, v105, v106, v107, v153, v154, v155[0], v155[1], v156[0]);
        if (!v100)
        {
          v100 = FigAlternateFilterTreeInsertLeaf(v184, v177, 510);
          if (!v100)
          {
            v108 = OUTLINED_FUNCTION_9_20();
            v100 = OUTLINED_FUNCTION_12_18(v108, v41, 3, v109, v110, v111);
            if (!v100)
            {
              v100 = FigAlternateFilterTreeInsertLeaf(v184, v183, 500);
              if (!v100)
              {
                v100 = OUTLINED_FUNCTION_3_39(0, v112, v113, v114, v115, v116, v117, v118, v153, v154, v155[0], HIDWORD(v155[0]), v155[1], v156[0], v156[1], v157[0], v157[1]);
                if (!v100)
                {
                  v119 = OUTLINED_FUNCTION_13_12();
                  v100 = FigAlternateFilterTreeInsertLeaf(v119, v120, 490);
                  if (!v100)
                  {
                    if (!v99 || (v100 = FigAlternateFilterTreeSetFallbackBranch(v184, v99), !v100))
                    {
                      v121 = OUTLINED_FUNCTION_14_16();
                      Filter = FigAlternateFilterTreeCreateFilter(v121, @"BinauralAudioFilterTree", 760, v122);
                      if (!Filter)
                      {
                        v163 = v178;
                        v42 = v178;
                        *&v178 = 0;
                        v18 = v42;
                        goto LABEL_131;
                      }

LABEL_154:
                      v18 = 0;
LABEL_131:
                      if (v184)
                      {
                        CFRelease(v184);
                      }

                      if (v178)
                      {
                        CFRelease(v178);
                      }

                      if (v183)
                      {
                        CFRelease(v183);
                      }

                      if (v182)
                      {
                        CFRelease(v182);
                      }

                      if (v177)
                      {
                        CFRelease(v177);
                      }

                      if (Filter)
                      {
                        goto LABEL_270;
                      }

                      goto LABEL_142;
                    }
                  }
                }
              }
            }
          }
        }
      }

      else
      {
        OUTLINED_FUNCTION_40_0();
        FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v153, v154, LODWORD(v155[0]));
      }
    }

    Filter = v100;
    goto LABEL_154;
  }

  v42 = 0;
LABEL_166:
  v123 = theArray[1];
  if (!theArray[1])
  {
    v124 = v162;
LABEL_267:
    v17 = FigAlternateFilterTreeInsertLeaf(v161, v124, 760);
    if (!v17)
    {
      v17 = FigAlternateFilterTreeCreateFilter(v161, @"CombinedAudioPreference", 760, a10);
    }

    goto LABEL_269;
  }

  v124 = v162;
  if (v155[1] > 2)
  {
    goto LABEL_188;
  }

  v183 = 0;
  v184 = 0;
  v182 = 0;
  v125 = FigAlternateFilterTreeCreate(v16, &v183);
  if (v125)
  {
    goto LABEL_297;
  }

  if (!v183)
  {
    OUTLINED_FUNCTION_40_0();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v153, v154, LODWORD(v155[0]));
LABEL_297:
    Filter = v125;
    v126 = 0;
    goto LABEL_174;
  }

  FigAlternateFilterTreeInsertLeaf(v183, v123, 540);
  if (v124)
  {
    v125 = FigAlternateFilterTreeSetFallbackBranch(v183, v124);
    if (v125)
    {
      goto LABEL_297;
    }
  }

  v178 = 0uLL;
  v180 = 0;
  v181 = 0;
  v179 = faf_losslessAudioOnlyFilterFn;
  FigSimpleAlternateFilterCreate(v16, @"LosslessAudioPreference", 760, &v178, 0, &v182);
  v126 = v182;
  FigAlternateFilterTreeInsertLeaf(v183, v182, 510);
  Filter = FigAlternateFilterTreeCreateFilter(v183, @"OfflinePlayableLosslessTree", 760, &v184);
  if (!Filter)
  {
    v42 = v184;
    v163 = v184;
    v184 = 0;
  }

LABEL_174:
  if (v183)
  {
    CFRelease(v183);
  }

  if (v184)
  {
    CFRelease(v184);
  }

  if (v126)
  {
    CFRelease(v126);
  }

  if (Filter)
  {
    goto LABEL_270;
  }

  v162 = v42;
  if (v42)
  {
    CFRetain(v42);
  }

  if (v124)
  {
    CFRelease(v124);
  }

  if (v42)
  {
    CFRelease(v42);
    v163 = 0;
  }

  v123 = theArray[1];
  v124 = v162;
  if (!theArray[1])
  {
    goto LABEL_267;
  }

LABEL_188:
  *&v178 = 0;
  v183 = 0;
  v184 = 0;
  v127 = OUTLINED_FUNCTION_11_18();
  if (v127)
  {
LABEL_295:
    Filter = v127;
    goto LABEL_196;
  }

  if (!v184)
  {
    OUTLINED_FUNCTION_40_0();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v153, v154, LODWORD(v155[0]));
    goto LABEL_295;
  }

  v127 = FigAlternateFilterTreeInsertLeaf(v184, v123, 540);
  if (v127)
  {
    goto LABEL_295;
  }

  v128 = OUTLINED_FUNCTION_9_20();
  v127 = OUTLINED_FUNCTION_12_18(v128, v129, 4, v130, v131, v132);
  if (v127)
  {
    goto LABEL_295;
  }

  FigAlternateFilterTreeInsertLeaf(v184, v183, 530);
  if (v124)
  {
    v127 = FigAlternateFilterTreeSetFallbackBranch(v184, v124);
    if (v127)
    {
      goto LABEL_295;
    }
  }

  Filter = FigAlternateFilterTreeCreateFilter(v184, @"OfflinePlayableImmersiveAudioTree", 760, &v178);
  if (!Filter)
  {
    v163 = v178;
    *&v178 = 0;
  }

LABEL_196:
  if (v184)
  {
    CFRelease(v184);
  }

  if (v178)
  {
    CFRelease(v178);
  }

  if (v183)
  {
    CFRelease(v183);
  }

  if (Filter)
  {
    goto LABEL_270;
  }

  v133 = v163;
  v162 = v163;
  if (v163)
  {
    CFRetain(v163);
  }

  if (v124)
  {
    CFRelease(v124);
  }

  if (v133)
  {
    CFRelease(v133);
    v163 = 0;
  }

  if (!theArray[0] || (Count = CFArrayGetCount(theArray[0]), Count < 1))
  {
    v124 = v133;
LABEL_266:
    v162 = v124;
    v163 = 0;
    goto LABEL_267;
  }

  v135 = Count + 1;
  while (1)
  {
    LODWORD(v177) = 1064530531;
    FigCFArrayGetInt32AtIndex();
    if (v177 != 1651076712)
    {
      if (v177 != 1835824233)
      {
        goto LABEL_238;
      }

      *&v178 = 0;
      v183 = 0;
      v184 = 0;
      v182 = 0;
      v124 = theArray[1];
      if (!theArray[1])
      {
        Filter = 0;
        goto LABEL_225;
      }

      v136 = OUTLINED_FUNCTION_11_18();
      if (!v136)
      {
        if (v184)
        {
          v136 = FigAlternateFilterTreeInsertLeaf(v184, v124, 540);
          if (!v136)
          {
            v137 = v156[0];
            v136 = FigAlternatePreferredAudioFormatFilterCreate(v16, HIDWORD(v155[0]), v155[1], v156[1], v157[1], v156[0], v157[0], &v183);
            if (!v136)
            {
              v136 = FigAlternateFilterTreeInsertLeaf(v184, v183, 490);
              if (!v136)
              {
                v136 = FigAlternateMultichannelAudioFilterCreate(v16, v137, 1, 1, &v182);
                if (!v136)
                {
                  v138 = OUTLINED_FUNCTION_13_12();
                  FigAlternateFilterTreeInsertLeaf(v138, v139, 480);
                  if (!v133 || (v136 = FigAlternateFilterTreeSetFallbackBranch(v184, v133), !v136))
                  {
                    v140 = OUTLINED_FUNCTION_14_16();
                    Filter = FigAlternateFilterTreeCreateFilter(v140, @"OfflinePlayableMultiTree", 760, v141);
                    if (!Filter)
                    {
                      v124 = v178;
                      *&v178 = 0;
                      goto LABEL_225;
                    }

                    goto LABEL_260;
                  }
                }
              }
            }
          }
        }

        else
        {
          OUTLINED_FUNCTION_40_0();
          FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v153, v154, LODWORD(v155[0]));
        }
      }

      Filter = v136;
LABEL_260:
      v124 = 0;
LABEL_225:
      if (v184)
      {
        CFRelease(v184);
      }

      if (v178)
      {
        CFRelease(v178);
      }

      if (v183)
      {
        CFRelease(v183);
      }

      v142 = v182;
      if (v182)
      {
        goto LABEL_232;
      }

      goto LABEL_233;
    }

    *&v178 = 0;
    v183 = 0;
    v184 = 0;
    v124 = theArray[1];
    if (!theArray[1])
    {
      Filter = 0;
      goto LABEL_252;
    }

    v143 = OUTLINED_FUNCTION_11_18();
    if (v143)
    {
      goto LABEL_262;
    }

    if (!v184)
    {
      OUTLINED_FUNCTION_40_0();
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v153, v154, LODWORD(v155[0]));
LABEL_262:
      Filter = v143;
      goto LABEL_263;
    }

    v143 = FigAlternateFilterTreeInsertLeaf(v184, v124, 540);
    if (v143)
    {
      goto LABEL_262;
    }

    v144 = OUTLINED_FUNCTION_9_20();
    v143 = OUTLINED_FUNCTION_12_18(v144, v145, 3, v146, v147, v148);
    if (v143)
    {
      goto LABEL_262;
    }

    FigAlternateFilterTreeInsertLeaf(v184, v183, 530);
    if (v133)
    {
      v143 = FigAlternateFilterTreeSetFallbackBranch(v184, v133);
      if (v143)
      {
        goto LABEL_262;
      }
    }

    v149 = OUTLINED_FUNCTION_14_16();
    Filter = FigAlternateFilterTreeCreateFilter(v149, @"OfflinePlayableBinauralTree", 760, v150);
    if (!Filter)
    {
      v124 = v178;
      *&v178 = 0;
      goto LABEL_250;
    }

LABEL_263:
    v124 = 0;
LABEL_250:
    if (v184)
    {
      CFRelease(v184);
    }

LABEL_252:
    if (v178)
    {
      CFRelease(v178);
    }

    v142 = v183;
    if (v183)
    {
LABEL_232:
      CFRelease(v142);
    }

LABEL_233:
    if (Filter)
    {
      break;
    }

    if (v124)
    {
      CFRetain(v124);
      if (v133)
      {
        CFRelease(v133);
      }

      CFRelease(v124);
      goto LABEL_239;
    }

LABEL_238:
    v124 = v133;
LABEL_239:
    --v135;
    v133 = v124;
    if (v135 <= 1)
    {
      goto LABEL_266;
    }
  }

  v162 = v133;
  v163 = v124;
  if (v124)
  {
LABEL_271:
    CFRelease(v124);
  }

LABEL_272:
  if (v161)
  {
    CFRelease(v161);
  }

  if (v162)
  {
    CFRelease(v162);
  }

LABEL_276:
  if (theArray[1])
  {
    CFRelease(theArray[1]);
  }

  if (v156[0])
  {
    CFRelease(v156[0]);
  }

  return Filter;
}

BOOL faf_startupScoreFilterFn(uint64_t a1, const __CFData *a2)
{
  PeakBitRate = FigAlternateGetPeakBitRate(a1);
  BytePtr = CFDataGetBytePtr(a2);
  if (!*BytePtr)
  {
    if (BytePtr[16] && BytePtr[1])
    {
      v5 = *(BytePtr + 9);
      return v5 + 1 >= PeakBitRate;
    }

    if (BytePtr[2])
    {
      v5 = *(BytePtr + 8);
      return v5 + 1 >= PeakBitRate;
    }
  }

  return 0;
}

__CFString *faf_startupScoreFilterDescAddendum(int a1, CFDataRef theData)
{
  BytePtr = CFDataGetBytePtr(theData);
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  if (Mutable)
  {
    v4 = "IFrameOnly ";
    v5 = "";
    if (!*BytePtr)
    {
      v4 = "";
    }

    if (BytePtr[1])
    {
      v6 = "AudioOnly ";
    }

    else
    {
      v6 = "";
    }

    if (BytePtr[16])
    {
      v7 = "hasAudioScore ";
    }

    else
    {
      v7 = "";
    }

    if (BytePtr[2])
    {
      v5 = "hasVideoScore ";
    }

    v14 = v7;
    v15 = v5;
    v12 = v4;
    v13 = v6;
    v8 = OUTLINED_FUNCTION_312();
    CFStringAppendFormat(v8, v9, v10, v12, v13, v14, v15);
    CFStringTrimWhitespace(Mutable);
  }

  return Mutable;
}

uint64_t faf_HighestAtmosBitrateFirstPassFn(int a1, const __CFData *a2)
{
  OUTLINED_FUNCTION_7_23(a1, a2);
  v4 = OUTLINED_FUNCTION_199();
  result = FigAlternateGetPeakBitRate(v4);
  if (!*v3)
  {
    v6 = result;
    if (FigAlternateHasVideo(v2))
    {
      *v3 = 1;
    }

    result = FigAlternateHasAudioFormat(v2, 7);
    if (result)
    {
      result = *(v3 + 8);
      if (!result || (result = FigAlternateGetPeakBitRate(result), v6 > result))
      {
        *(v3 + 8) = v2;
      }
    }
  }

  return result;
}

void fiv_copyFilteringSupportedTagCollectionArray(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, CFTypeRef cf, __int128 a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27)
{
  OUTLINED_FUNCTION_22_10();
  a26 = v27;
  a27 = v30;
  a15 = *MEMORY[0x1E69E9840];
  if (v29)
  {
    v31 = v29;
    v32 = v28;
    v33 = *MEMORY[0x1E695E480];
    Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
    if (Mutable)
    {
      v35 = Mutable;
      v36 = CFSetCreateMutable(v33, 0, MEMORY[0x1E695E9F8]);
      if (v36)
      {
        v37 = 0;
        if (!v32)
        {
          goto LABEL_6;
        }

LABEL_5:
        for (i = CFArrayGetCount(v32); v37 < i; i = 0)
        {
          ValueAtIndex = CFArrayGetValueAtIndex(v32, v37);
          cf = 0;
          qmemcpy(&a14, "kcapseyejorp", 12);
          v40 = MEMORY[0x19A8D32A0](v33, ValueAtIndex, &a14, 3, &cf);
          if (v40)
          {
            v41 = v40;
          }

          else
          {
            if (MEMORY[0x19A8D3320](cf) == 3)
            {
              FigTagCollectionGetTagsWithCategory();
            }

            v41 = 0;
          }

          if (cf)
          {
            CFRelease(cf);
          }

          if (v41)
          {
            goto LABEL_24;
          }

          ++v37;
          if (v32)
          {
            goto LABEL_5;
          }

LABEL_6:
          ;
        }

        *v31 = v35;
      }

      else
      {
LABEL_24:
        CFRelease(v35);
        if (!v36)
        {
          goto LABEL_21;
        }
      }

      CFRelease(v36);
    }
  }

LABEL_21:
  OUTLINED_FUNCTION_21_9();
}

uint64_t fivc_filterFn(__CFArray *a1, CFDataRef theData)
{
  BytePtr = CFDataGetBytePtr(theData);
  v4 = *BytePtr;
  IsAudioOnly = FigAlternateIsAudioOnly(a1);
  v6 = 0;
  if (IsAudioOnly || !v4)
  {
    return IsAudioOnly || v6;
  }

  if (CFArrayGetCount(v4))
  {
    v7 = *(BytePtr + 1);
    VideoLayoutTags = FigAlternateGetVideoLayoutTags(a1);
    if (VideoLayoutTags)
    {
      v9 = VideoLayoutTags;
      Count = CFArrayGetCount(VideoLayoutTags);
      if (Count >= 1)
      {
        v11 = 0;
        v12 = 0;
        v13 = *MEMORY[0x1E695E4C0];
        v14 = *MEMORY[0x1E695E4D0];
        do
        {
          ValueAtIndex = CFArrayGetValueAtIndex(v9, v12);
          value = v13;
          if (CFDictionaryGetValueIfPresent(v7, ValueAtIndex, &value))
          {
            if (v14 != value)
            {
              break;
            }

            ++v11;
          }

          else
          {
            v16 = 0;
            while (v16 < CFArrayGetCount(v4))
            {
              CFArrayGetValueAtIndex(v4, v16++);
              if (FigCFEqual())
              {
                ++v11;
                v17 = v14;
                goto LABEL_15;
              }
            }

            v17 = v13;
LABEL_15:
            CFDictionarySetValue(v7, ValueAtIndex, v17);
          }

          ++v12;
        }

        while (v12 != Count);
        IsAudioOnly = 0;
        goto LABEL_20;
      }
    }

    else
    {
      Count = 0;
    }

    v11 = 0;
LABEL_20:
    v6 = v11 == Count;
    return IsAudioOnly || v6;
  }

  v6 = 0;
  return IsAudioOnly || v6;
}

uint64_t faf_stereoCapForMultichannelFirstPassFn(const void *a1, CFDataRef theData)
{
  v5 = 0;
  BytePtr = CFDataGetBytePtr(theData);
  result = FigAlternateGetAudioChannelCounts(a1, *BytePtr, &v5, 0);
  if (result - v5 >= 3)
  {
    result = FigAlternateGetExpectedAverageBitrate(a1);
    if (result < *(BytePtr + 2))
    {
      *(BytePtr + 2) = result;
    }
  }

  return result;
}

uint64_t fsaf_firstPassCFArrayApplierFn()
{
  OUTLINED_FUNCTION_369();
  result = CMBaseObjectGetDerivedStorage();
  if (!*(v1 + 24))
  {
    v3 = *(result + 24);
    if (v3)
    {
      v4 = *(result + 72);

      return v3(v0, v4);
    }
  }

  return result;
}

void fsaf_applyCFArrayApplierFn()
{
  OUTLINED_FUNCTION_369();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!*(v1 + 24))
  {
    v3 = *(DerivedStorage + 32);
    if (v3)
    {
      if (v3(v0, *(DerivedStorage + 72)))
      {
        v4 = *(v1 + 16);

        CFArrayAppendValue(v4, v0);
      }
    }
  }
}

CFStringRef faf_mergeFilterCopyDebugDescription(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v3 = *MEMORY[0x1E695E480];
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  if (!Mutable)
  {
    return 0;
  }

  v5 = Mutable;
  CFStringAppendFormat(Mutable, 0, @"[FigAlternateMergeFilter <%@:%p> priority:%d]", *DerivedStorage, a1, *(DerivedStorage + 8));
  v6 = CFCopyDescription(*(DerivedStorage + 16));
  v7 = CFCopyDescription(*(DerivedStorage + 24));
  if (v6)
  {
    v8 = FigCFStringCopyWithIndent();
    v9 = v8;
    if (!v8)
    {
      Copy = 0;
      goto LABEL_10;
    }

    v19 = v8;
    v10 = OUTLINED_FUNCTION_312();
    CFStringAppendFormat(v10, v11, v12, v19);
    CFRelease(v9);
  }

  if (v7)
  {
    v13 = FigCFStringCopyWithIndent();
    v9 = v13;
    if (!v13)
    {
      Copy = 0;
      if (!v6)
      {
        goto LABEL_11;
      }

      goto LABEL_10;
    }

    v20 = v13;
    v14 = OUTLINED_FUNCTION_312();
    CFStringAppendFormat(v14, v15, v16, v20);
  }

  else
  {
    v9 = 0;
  }

  Copy = CFStringCreateCopy(v3, v5);
  if (v6)
  {
LABEL_10:
    CFRelease(v6);
  }

LABEL_11:
  if (v7)
  {
    CFRelease(v7);
  }

  CFRelease(v5);
  if (v9)
  {
    CFRelease(v9);
  }

  return Copy;
}

uint64_t faf_alternateVideoVertResolutionBucket(uint64_t a1)
{
  Resolution = FigAlternateGetResolution(a1);
  if (v2 * Resolution <= 0.0)
  {
    return -1;
  }

  for (result = 0; result != 7; ++result)
  {
    if (v2 <= kFigAlternateVertResolutionLimits[result])
    {
      break;
    }
  }

  return result;
}

uint64_t faf_defaultAudioPreferenceApply(const void *a1, const __CFArray *a2, CFTypeRef *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v29 = 0;
  v28 = 0;
  v7 = *MEMORY[0x1E695E480];
  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  theArray = Mutable;
  if (Mutable)
  {
    v9 = Mutable;
    Count = CFArrayGetCount(a2);
    if (Count < 1)
    {
      goto LABEL_22;
    }

    v11 = Count;
    v12 = 0;
    v13 = 0;
    do
    {
      ValueAtIndex = CFArrayGetValueAtIndex(a2, v12);
      if (!FigAlternateHasVideo(ValueAtIndex) || FigAlternateHasAudio(ValueAtIndex))
      {
        v15 = FigAlternateGetAudioChannelCount(ValueAtIndex, *DerivedStorage, &v28) - 1;
        if ((v28 & 6) == 0 && v15 <= 1)
        {
          CFArrayAppendValue(v9, ValueAtIndex);
          v13 = 1;
        }
      }

      ++v12;
    }

    while (v11 != v12);
    for (i = 0; i != v11; ++i)
    {
      v18 = CFArrayGetValueAtIndex(a2, i);
      if (FigAlternateHasVideo(v18) && !FigAlternateHasAudio(v18))
      {
        CFArrayAppendValue(v9, v18);
      }
    }

    if (v13)
    {
      v19 = 0;
    }

    else
    {
LABEL_22:
      CFRelease(v9);
      theArray = 0;
      v22 = FigAlternatePreferredAudioFormatFilterCreate(v7, 7u, 0, 0, 0, *DerivedStorage, 0, &v29);
      v19 = v29;
      if (v22)
      {
        v21 = v22;
        goto LABEL_27;
      }

      v23 = *(*(CMBaseObjectGetVTable() + 16) + 24);
      if (!v23)
      {
        v21 = 4294954514;
        goto LABEL_27;
      }

      v21 = v23(v19, a2, &theArray);
      if (v21)
      {
        goto LABEL_27;
      }
    }
  }

  else
  {
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v26, v27, v29);
    v21 = v25;
    v19 = 0;
    if (v25)
    {
      goto LABEL_27;
    }
  }

  if (*a3)
  {
    CFRelease(*a3);
  }

  v20 = CFGetAllocator(a1);
  v21 = 0;
  *a3 = CFArrayCreateCopy(v20, theArray);
LABEL_27:
  if (v19)
  {
    CFRelease(v19);
  }

  if (theArray)
  {
    CFRelease(theArray);
  }

  return v21;
}

uint64_t faf_CombinedAudioPreferenceAlternateFilterForChannels(uint64_t a1, signed int a2, const void *a3, CFTypeRef *a4)
{
  cf = 0;
  v20 = 0;
  v17 = 0;
  v18 = 0;
  v15 = 0;
  v16 = 0;
  v8 = *MEMORY[0x1E695E480];
  inserted = FigAlternateFilterTreeCreate(*MEMORY[0x1E695E480], &cf);
  if (inserted)
  {
    goto LABEL_35;
  }

  if (!cf)
  {
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v15, v16, v17);
LABEL_35:
    v13 = inserted;
    v10 = 0;
    goto LABEL_20;
  }

  inserted = FigAlternateEligibleLosslessAudioFilterCreate(v8, *(a1 + 16), &v15);
  if (inserted)
  {
    goto LABEL_35;
  }

  inserted = FigAlternateFilterTreeInsertLeaf(cf, v15, 510);
  if (inserted)
  {
    goto LABEL_35;
  }

  inserted = FigAlternateImmersiveAudioPreferenceFilterCreate(v8, *(a1 + 16), 1, -1, 0, &v18);
  if (inserted)
  {
    goto LABEL_35;
  }

  inserted = FigAlternateFilterTreeInsertLeaf(cf, v18, 500);
  if (inserted)
  {
    goto LABEL_35;
  }

  inserted = FigAlternatePreferredAudioFormatFilterCreate(v8, *(a1 + 4), a2, *(a1 + 24), *(a1 + 36), *(a1 + 16), *(a1 + 32), &v17);
  if (inserted)
  {
    goto LABEL_35;
  }

  inserted = FigAlternateFilterTreeInsertLeaf(cf, v17, 490);
  if (inserted)
  {
    goto LABEL_35;
  }

  if (a2 < 3)
  {
    v10 = 0;
    if (!a3)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

  FigAlternateMultichannelAudioFilterCreate(v8, *(a1 + 16), 1, 1, &v16);
  v10 = v16;
  v11 = FigAlternateFilterTreeInsertLeaf(cf, v16, 480);
  if (v11)
  {
    goto LABEL_33;
  }

  if (a3)
  {
LABEL_14:
    v11 = FigAlternateFilterTreeSetFallbackBranch(cf, a3);
    if (!v11)
    {
      goto LABEL_15;
    }

LABEL_33:
    v13 = v11;
    goto LABEL_20;
  }

LABEL_15:
  if (a2 <= 2)
  {
    v12 = @"StereoAudioFilterTree";
  }

  else
  {
    v12 = @"DiscreteMultichannelAudioFilterTree";
  }

  v13 = FigAlternateFilterTreeCreateFilter(cf, v12, 760, &v20);
  if (!v13)
  {
    *a4 = v20;
    v20 = 0;
  }

LABEL_20:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v20)
  {
    CFRelease(v20);
  }

  if (v18)
  {
    CFRelease(v18);
  }

  if (v17)
  {
    CFRelease(v17);
  }

  if (v10)
  {
    CFRelease(v10);
  }

  if (v15)
  {
    CFRelease(v15);
  }

  return v13;
}

BOOL fivp_filterFn(int a1, const __CFData *a2)
{
  v3 = OUTLINED_FUNCTION_7_23(a1, a2);
  v4 = v3;
  v5 = *(v3 + 1);
  if (v5 == 0xFFFFFFFFLL)
  {
    v5 = *(v3 + 2);
  }

  v6 = *v3;
  if (!*v4)
  {
    return 1;
  }

  v7 = !CFArrayGetCount(v6) || v5 == 0xFFFFFFFFLL;
  return v7 || FigAlternateIsAudioOnly(v2) || fiv_getAlternatePlayableAtPreferenceForChannelCapability(v2, *v4, *(v4 + 3)) == v5;
}

const __CFArray *fivp_firstPassFn(int a1, const __CFData *a2)
{
  v3 = OUTLINED_FUNCTION_25_11(a1, a2);
  result = *v3;
  if (*v3)
  {
    result = CFArrayGetCount(result);
    if (result)
    {
      result = FigAlternateIsAudioOnly(v2);
      if (!result)
      {
        AlternatePlayableAtPreferenceForChannelCapability = fiv_getAlternatePlayableAtPreferenceForChannelCapability(v2, *v3, *(v3 + 3));
        result = FigAlternateIsIFrameOnly(v2);
        if (result)
        {
          v8 = *(v3 + 2);
          v7 = (v3 + 16);
          v6 = v8;
        }

        else
        {
          v9 = *(v3 + 1);
          v7 = (v3 + 8);
          v6 = v9;
        }

        if (AlternatePlayableAtPreferenceForChannelCapability < v6)
        {
          *v7 = AlternatePlayableAtPreferenceForChannelCapability;
        }
      }
    }
  }

  return result;
}

void FigAlternateAOCPFilterCreate_cold_1(const __CFAllocator *a1, void *a2, const void *a3, _DWORD *a4)
{
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v9, v10, v11);
  *a4 = v8;
  CFAllocatorDeallocate(a1, a2);
  CFRelease(a3);
}

void FigAlternateAOCPFilterCreate_cold_2(const void *a1, _DWORD *a2)
{
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v5, v6, vars0);
  *a2 = v4;
  CFRelease(a1);
}

void FigAlternatePathwayPreferenceFilterCreate_cold_1(const __CFAllocator *a1, void *a2, const void *a3, _DWORD *a4)
{
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v9, v10, v11);
  *a4 = v8;
  CFAllocatorDeallocate(a1, a2);
  CFRelease(a3);
}

void FigAlternatePathwayPreferenceFilterCreate_cold_2(const void *a1, _DWORD *a2)
{
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v5, v6, vars0);
  *a2 = v4;
  CFRelease(a1);
}

void fsaf_createWithBytes_cold_1(const void *a1, _DWORD *a2)
{
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v5, v6, vars0);
  *a2 = v4;
  CFRelease(a1);
}

BOOL faf_HDCPAlternateFilterApply_cold_3(_DWORD *a1)
{
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v4, v5, vars0);
  *a1 = v2;
  return v2 == 0;
}

uint64_t dqr_HandleRemoteMessagesFromServer(uint64_t a1, uint64_t a2)
{
  result = FigXPCMessageGetOpCode();
  if (!result)
  {
    return 4294951138;
  }

  return result;
}

uint64_t dqr_finalize(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v2 = *(DerivedStorage + 32);
  if (v2)
  {
    CFRelease(v2);
    *(DerivedStorage + 32) = 0;
  }

  v3 = *(DerivedStorage + 40);
  if (v3)
  {
    CFRelease(v3);
    *(DerivedStorage + 40) = 0;
  }

  v4 = *(DerivedStorage + 48);
  if (v4)
  {
    CFRelease(v4);
    *(DerivedStorage + 48) = 0;
  }

  v5 = *(DerivedStorage + 144);
  if (v5)
  {
    CFRelease(v5);
    *(DerivedStorage + 144) = 0;
  }

  v6 = *(DerivedStorage + 152);
  if (v6)
  {
    FigSyncMomentSourceDestroy(v6);
    *(DerivedStorage + 152) = 0;
  }

  v7 = *(DerivedStorage + 160);
  if (v7)
  {
    dispatch_release(v7);
    *(DerivedStorage + 160) = 0;
  }

  v8 = *(DerivedStorage + 136);
  if (v8)
  {
    dispatch_release(v8);
    *(DerivedStorage + 136) = 0;
  }

  v9 = *(DerivedStorage + 128);
  if (v9)
  {
    CFRelease(v9);
    *(DerivedStorage + 128) = 0;
  }

  v10 = *(DerivedStorage + 168);
  if (v10)
  {
    CFRelease(v10);
    *(DerivedStorage + 168) = 0;
  }

  FigSimpleMutexDestroy();
  FigSimpleMutexDestroy();
  if (*DerivedStorage)
  {
    FigXPCRemoteClientDisassociateObject();
    if (*(DerivedStorage + 176) || (OUTLINED_FUNCTION_1_48(), !FigXPCCreateBasicMessage()) && (OUTLINED_FUNCTION_2_50(), !FigXPCRemoteClientSendSyncMessage()))
    {
      CMNotificationCenterGetDefaultLocalCenter();
      FigNotificationCenterRemoveWeakListener();
      if (*DerivedStorage)
      {
        CFRelease(*DerivedStorage);
        *DerivedStorage = 0;
      }
    }
  }

  return FigXPCRelease();
}

void dqr_SyncServerTimebaseToMoment(uint64_t a1, void *__s1)
{
  v19 = 0;
  v18 = 0;
  v17 = 0u;
  v16 = 0u;
  v15 = 0u;
  v14 = 0u;
  v13 = 0u;
  v12 = 0u;
  v11 = 0u;
  __s2 = 120;
  v4 = memcmp(__s1, &__s2, 0x78uLL);
  v5 = FigCFWeakReferenceHolderCopyReferencedObject();
  if (v5)
  {
    v6 = v5;
    if (*(CMBaseObjectGetDerivedStorage() + 176))
    {
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d", blockBufferOut, __s2, DWORD1(v11));
    }

    else
    {
      if (*(a1 + 8))
      {
        *(__s1 + 1) |= 4u;
        *(a1 + 8) = 0;
      }

      if (FigXPCCreateBasicMessage())
      {
        goto LABEL_17;
      }

      if (v4)
      {
        if (FigXPCMessageSetCFBoolean())
        {
          goto LABEL_17;
        }

        v20 = 0;
        v7 = CMBlockBufferCreateWithMemoryBlock(*MEMORY[0x1E695E480], 0, 0x78uLL, *MEMORY[0x1E695E480], 0, 0, 0x78uLL, 1u, &v20);
        if (!v7)
        {
          v7 = CMBlockBufferReplaceDataBytes(__s1, v20, 0, 0x78uLL);
          if (!v7)
          {
            v7 = FigXPCMessageSetBlockBuffer();
          }
        }

        v8 = v7;
        if (v20)
        {
          CFRelease(v20);
        }

        if (v8)
        {
          goto LABEL_17;
        }
      }

      else if (FigXPCMessageSetCFBoolean())
      {
        goto LABEL_17;
      }

      FigXPCRemoteClientSendSyncMessage();
    }

LABEL_17:
    FigXPCRemoteClientKillServerOnTimeout();
    CFRelease(v6);
    if (v19)
    {
      CFRelease(v19);
    }
  }
}

uint64_t dqr_EnqueueSampleBuffer(uint64_t a1, opaqueCMSampleBuffer *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v8 = 0;
  if (!a2)
  {
    goto LABEL_14;
  }

  if (!CMSampleBufferGetDataBuffer(a2))
  {
    v5 = 0;
    goto LABEL_9;
  }

  if (*(DerivedStorage + 176))
  {
LABEL_14:
    OUTLINED_FUNCTION_303();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
LABEL_15:
    v5 = v4;
    goto LABEL_9;
  }

  OUTLINED_FUNCTION_1_48();
  v4 = FigXPCCreateBasicMessage();
  if (v4)
  {
    goto LABEL_15;
  }

  v4 = FigXPCMessageAddCMSampleBuffer();
  if (v4)
  {
    goto LABEL_15;
  }

  FigSimpleMutexLock();
  OUTLINED_FUNCTION_2_50();
  v5 = FigXPCRemoteClientSendSyncMessageCreatingReply();
  if (!v5)
  {
    v6 = CMBaseObjectGetDerivedStorage();
    *(v6 + 56) = FigXPCMessageGetInt32();
  }

  FigSimpleMutexUnlock();
LABEL_9:
  FigXPCRemoteClientKillServerOnTimeout();
  if (v8)
  {
    CFRelease(v8);
  }

  return v5;
}

uint64_t dqr_RemoveLowWaterTrigger(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  if (!*(DerivedStorage + 120) || *(DerivedStorage + 176))
  {
    OUTLINED_FUNCTION_303();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
  }

  else
  {
    *(DerivedStorage + 120) = 0;
    v2 = *(DerivedStorage + 128);
    if (v2)
    {
      CFRelease(v2);
      *(DerivedStorage + 128) = 0;
    }

    v3 = *(DerivedStorage + 136);
    if (v3)
    {
      dispatch_release(v3);
      *(DerivedStorage + 136) = 0;
    }

    OUTLINED_FUNCTION_1_48();
    v4 = FigXPCCreateBasicMessage();
    if (!v4)
    {
      OUTLINED_FUNCTION_2_50();
      v4 = FigXPCRemoteClientSendSyncMessage();
    }
  }

  v5 = v4;
  FigSimpleMutexUnlock();
  FigXPCRemoteClientKillServerOnTimeout();
  return v5;
}

uint64_t dqr_Flush(uint64_t a1)
{
  v5 = 0;
  cf = 0;
  if (*(CMBaseObjectGetDerivedStorage() + 176))
  {
    OUTLINED_FUNCTION_303();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", 0, 0, v7);
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_1_48();
  v1 = FigXPCCreateBasicMessage();
  if (v1)
  {
LABEL_12:
    v2 = v1;
    goto LABEL_6;
  }

  FigSimpleMutexLock();
  OUTLINED_FUNCTION_2_50();
  v2 = FigXPCRemoteClientSendSyncMessageCreatingReply();
  if (!v2)
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    *(DerivedStorage + 56) = FigXPCMessageGetInt32();
  }

  FigSimpleMutexUnlock();
LABEL_6:
  FigXPCRemoteClientKillServerOnTimeout();
  if (cf)
  {
    CFRelease(cf);
  }

  if (v5)
  {
    CFRelease(v5);
  }

  return v2;
}

void FigDataQueueRemoteCreateWithObjectID_cold_5(uint64_t a1, int a2, _DWORD *a3)
{
  *a1 = 0;
  *(a1 + 8) = a2;
  FigSimpleMutexUnlock();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v5, v6, vars0);
  *a3 = v4;
}

BOOL dqr_setProperty_cold_2(uint64_t a1, const void **a2)
{
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v6, v7, vars0);
  v4 = v3;
  dqr_DestroyTimebaseSyncState(a2);
  return v4 == 0;
}

double FigVideoTargetCreateWithVideoReceiver(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  cf1 = 0;
  if (a4 && a2)
  {
    if (!videoTarget_getInstanceTypeFromCreationOptions(a3, &cf1))
    {
      if (CFEqual(cf1, @"Remote"))
      {
        v5 = OUTLINED_FUNCTION_1_49();
        FigVideoTargetCreateRemoteWithVideoReceiver(v5, v6, v7, v8);
      }

      else
      {
        v9 = OUTLINED_FUNCTION_1_49();
        FigVideoTargetCreateLocalWithVideoReceiver(v9, v10, v11, v12);
      }
    }
  }

  else
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_1_4();

    return FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
  }

  return result;
}

double FigVideoTargetCreateWithVideoReceiverEndpointID(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  cf1 = 0;
  if (a4)
  {
    if (a2)
    {
      if (!videoTarget_getInstanceTypeFromCreationOptions(a3, &cf1))
      {
        v8 = CFEqual(cf1, @"Remote");
        v9 = *MEMORY[0x1E695E480];
        if (v8)
        {
          FigVideoTargetCreateRemoteWithVideoReceiverEndpointID(v9, a2, 0, a4);
        }

        else
        {
          FigVideoTargetCreateLocalWithVideoReceiverEndpointID(v9, a2, 0, a4);
        }
      }

      return result;
    }

    emitter = fig_log_get_emitter();
    v11 = v4;
    v12 = 239;
  }

  else
  {
    emitter = fig_log_get_emitter();
    v11 = v4;
    v12 = 238;
  }

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 4294951734, "<< FigVideoTargetCommon >>", v12, v11);
}

uint64_t FigVideoTargetCreateSharingVideoReceiverFromVideoTarget(const __CFAllocator *a1, uint64_t a2, uint64_t a3, void *a4)
{
  cf = 0;
  v22 = 0;
  cf2 = 0;
  cf1 = 0;
  if (!a4 || !a2)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_1_4();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
    goto LABEL_11;
  }

  FigVideoTargetGetCMBaseObject();
  v9 = v8;
  v10 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v10)
  {
    goto LABEL_15;
  }

  RemoteSharingVideoReceiverFromRemoteVideoTarget = v10(v9, @"InstanceType", a1, &cf2);
  if (RemoteSharingVideoReceiverFromRemoteVideoTarget)
  {
LABEL_11:
    v14 = RemoteSharingVideoReceiverFromRemoteVideoTarget;
    goto LABEL_16;
  }

  FigCFDictionaryGetValueIfPresent();
  FigCFDictionaryGetBooleanIfPresent();
  if (v22)
  {
    v12 = @"Local";
    cf1 = @"Local";
  }

  else
  {
    v12 = cf1;
    if (!cf1)
    {
      v13 = cf2;
      cf1 = cf2;
      goto LABEL_9;
    }
  }

  CFEqual(v12, cf2);
  v13 = cf1;
LABEL_9:
  if (CFEqual(v13, @"Remote"))
  {
    RemoteSharingVideoReceiverFromRemoteVideoTarget = FigVideoTargetCreateRemoteSharingVideoReceiverFromRemoteVideoTarget(a1, a2, a3, a4);
    goto LABEL_11;
  }

  FigVideoTargetGetCMBaseObject();
  v16 = v15;
  v17 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v17)
  {
    v18 = *MEMORY[0x1E695E480];
    RemoteSharingVideoReceiverFromRemoteVideoTarget = v17(v16, @"VideoReceiver", *MEMORY[0x1E695E480], &cf);
    if (!RemoteSharingVideoReceiverFromRemoteVideoTarget)
    {
      RemoteSharingVideoReceiverFromRemoteVideoTarget = FigVideoTargetCreateLocalWithVideoReceiver(v18, cf, 0, a4);
    }

    goto LABEL_11;
  }

LABEL_15:
  v14 = 4294954514;
LABEL_16:
  if (cf2)
  {
    CFRelease(cf2);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  return v14;
}

void videoTarget_getInstanceTypeFromCreationOptions_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

uint64_t figVTTCaptionWriterForDocument_AddCaption(const void *a1, uint64_t a2, __int128 *a3)
{
  v144 = *a3;
  v147 = a3[1];
  v150 = a3[2];
  FigBytePumpGetFigBaseObject();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v153 = 0;
  v5 = CFGetAllocator(a1);
  *&time.start.value = v144;
  time.start.epoch = v147;
  v6 = CMTimeCopyAsDictionary(&time.start, v5);
  OUTLINED_FUNCTION_4_42(v6, v7, v8, v9, v10, v11, v12, v13, v117, v119, v121, v123, v126, v129, v132, v135, a2, theArray, v144, *(&v144 + 1), v147, *(&v147 + 1), v150);
  CMTimeRangeGetEnd(&context, &time);
  v14 = CFGetAllocator(a1);
  v15 = CMTimeCopyAsDictionary(&context, v14);
  v16 = FigVTTDocumentWriterCreateAndAddNode(*DerivedStorage, 3, 1, &v153);
  if (v16 || (v16 = FigVTTNodeSetAttribute(v153, @"starttime", v6), v16) || (v16 = FigVTTNodeSetAttribute(v153, @"endtime", v15), v16))
  {
    value_low = v16;
    goto LABEL_202;
  }

  v17 = CFGetAllocator(a1);
  context.value = 0;
  v168 = 0;
  v169[0] = 0;
  FigCaptionDataGetCMBaseObject();
  v133 = v15;
  if (!*(*(CMBaseObjectGetVTable() + 8) + 48))
  {
    goto LABEL_78;
  }

  v18 = OUTLINED_FUNCTION_5_38();
  v20 = v19(v18);
  if (v20)
  {
    goto LABEL_231;
  }

  if (v168)
  {
    v21 = CFGetTypeID(v168);
    if (v21 != FigCaptionRegionGetTypeID())
    {
      goto LABEL_230;
    }
  }

  FigCaptionDataGetCMBaseObject();
  if (*(*(CMBaseObjectGetVTable() + 8) + 48))
  {
    v22 = OUTLINED_FUNCTION_5_38();
    value_low = v23(v22);
  }

  else
  {
    value_low = 4294954514;
  }

  if (context.value)
  {
    v25 = CFGetTypeID(context.value);
    if (v25 != FigCaptionDynamicStyleGetTypeID())
    {
      goto LABEL_230;
    }

    if (context.value)
    {
      InitialValue = FigCaptionDynamicStyleGetInitialValue();
      v169[0] = InitialValue;
      if (InitialValue)
      {
        InitialValue = CFRetain(InitialValue);
      }

      v169[0] = InitialValue;
    }
  }

  if (value_low)
  {
LABEL_232:
    v29 = 0;
    goto LABEL_79;
  }

  v27 = v169[0];
  if (v169[0] && (v27 = CFEqual(v169[0], *MEMORY[0x1E6961550]), !v27))
  {
    v27 = CFEqual(v169[0], *MEMORY[0x1E6961570]);
    if (v27)
    {
      v28 = kFigVTT_AttributeValue_cue_textAlign_start;
    }

    else
    {
      v27 = CFEqual(v169[0], *MEMORY[0x1E6961558]);
      if (v27)
      {
        v28 = kFigVTT_AttributeValue_cue_textAlign_end;
      }

      else
      {
        v27 = CFEqual(v169[0], *MEMORY[0x1E6961560]);
        if (v27)
        {
          v28 = kFigVTT_AttributeValue_cue_textAlign_left;
        }

        else
        {
          v27 = CFEqual(v169[0], *MEMORY[0x1E6961568]);
          if (!v27)
          {
            v29 = 0;
            goto LABEL_33;
          }

          v28 = kFigVTT_AttributeValue_cue_textAlign_right;
        }
      }
    }
  }

  else
  {
    v28 = kFigVTT_AttributeValue_cue_textAlign_center;
  }

  v29 = *v28;
  if (!*v28)
  {
LABEL_33:
    v31 = 1;
    goto LABEL_34;
  }

  v30 = OUTLINED_FUNCTION_3_40(v27, @"align");
  if (v30)
  {
    goto LABEL_64;
  }

  v31 = 0;
LABEL_34:
  if (v169[0])
  {
    CFRelease(v169[0]);
    v169[0] = 0;
  }

  if ((v31 & 1) == 0)
  {
    CFRelease(v29);
  }

  if (!v168)
  {
    goto LABEL_49;
  }

  FigCaptionRegionGetCMBaseObject();
  if (!*(*(CMBaseObjectGetVTable() + 8) + 48))
  {
    goto LABEL_78;
  }

  v32 = OUTLINED_FUNCTION_5_38();
  v20 = v33(v32);
  if (v20)
  {
    goto LABEL_231;
  }

  if (!v169[0])
  {
    goto LABEL_54;
  }

  v34 = CFGetTypeID(v169[0]);
  if (v34 != FigCaptionDynamicStyleGetTypeID())
  {
    goto LABEL_230;
  }

  if (!v169[0])
  {
    goto LABEL_54;
  }

  FigCaptionDynamicStyleGetInitialValue();
  FigGeometryPointMakeFromDictionary();
  value = time.duration.value;
  if ((*&time.start.timescale & 0x1FFFFFFFFLL) == 0x125202020)
  {
    v29 = FigGeometryDimensionCopyAsDictionary();
    v30 = OUTLINED_FUNCTION_3_40(v29, @"position");
    if (!v30)
    {
      if (v29)
      {
        CFRelease(v29);
      }

      goto LABEL_48;
    }

LABEL_64:
    value_low = v30;
    goto LABEL_79;
  }

LABEL_48:
  if ((value & 0x100000000) != 0)
  {
    if (value == 1818848869 || value == 622862368)
    {
      v29 = FigGeometryDimensionCopyAsDictionary();
      v110 = OUTLINED_FUNCTION_3_40(v29, @"line");
      if (v110)
      {
        value_low = v110;
        goto LABEL_235;
      }
    }

    else
    {
      v29 = 0;
    }

    goto LABEL_50;
  }

LABEL_49:
  v29 = 0;
LABEL_50:
  if (v169[0])
  {
    CFRelease(v169[0]);
    v169[0] = 0;
  }

  if (v29)
  {
    CFRelease(v29);
  }

LABEL_54:
  FigGeometryDimensionMake();
  if (v168)
  {
    CMBaseObject = FigCaptionRegionGetCMBaseObject();
    v37 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (!v37)
    {
      goto LABEL_78;
    }

    v20 = v37(CMBaseObject, *MEMORY[0x1E69613B0], v17, v169);
    if (!v20)
    {
      if (!v169[0])
      {
        goto LABEL_70;
      }

      v38 = CFGetTypeID(v169[0]);
      if (v38 == FigCaptionDynamicStyleGetTypeID())
      {
        if (!v169[0])
        {
          goto LABEL_70;
        }

        v39 = FigCaptionDynamicStyleGetInitialValue();
        if (v39)
        {
          v40 = CFGetTypeID(v39);
          if (v40 == CFDictionaryGetTypeID())
          {
            FigGeometryDimensionMakeFromDictionary();
            v41 = FigGeometryDimensionCopyAsDictionary();
            v29 = v41;
            v15 = v133;
            if (v41)
            {
              v30 = OUTLINED_FUNCTION_3_40(v41, @"size");
              if (v30)
              {
                goto LABEL_64;
              }
            }

            goto LABEL_66;
          }
        }

        OUTLINED_FUNCTION_49_0();
        OUTLINED_FUNCTION_0_38();
        FigSignalErrorAtGM(v115);
        value_low = v116;
        v29 = 0;
LABEL_235:
        v15 = v133;
        goto LABEL_79;
      }

LABEL_230:
      OUTLINED_FUNCTION_49_0();
      OUTLINED_FUNCTION_0_38();
      FigSignalErrorAtGM(v114);
    }

LABEL_231:
    value_low = v20;
    goto LABEL_232;
  }

  v29 = 0;
LABEL_66:
  if (v169[0])
  {
    CFRelease(v169[0]);
    v169[0] = 0;
  }

  if (v29)
  {
    CFRelease(v29);
  }

LABEL_70:
  if (!v168)
  {
    goto LABEL_226;
  }

  FigCaptionRegionGetCMBaseObject();
  if (!*(*(CMBaseObjectGetVTable() + 8) + 48))
  {
LABEL_78:
    v29 = 0;
    value_low = 4294954514;
    goto LABEL_79;
  }

  v42 = OUTLINED_FUNCTION_5_38();
  v20 = v43(v42);
  if (v20)
  {
    goto LABEL_231;
  }

  if (!v169[0])
  {
    v29 = 0;
    goto LABEL_228;
  }

  v44 = FigCaptionDynamicStyleGetInitialValue();
  if (!v44)
  {
    goto LABEL_230;
  }

  v45 = v44;
  v46 = CFGetTypeID(v44);
  if (v46 != CFStringGetTypeID())
  {
    goto LABEL_230;
  }

  v47 = CFEqual(v169[0], *MEMORY[0x1E69613D8]);
  if (v47)
  {
LABEL_77:
    v48 = kFigVTT_AttributeValue_cue_writingMode_TopToBottom;
    goto LABEL_220;
  }

  v47 = CFEqual(v45, *MEMORY[0x1E69613F0]);
  if (v47)
  {
    v48 = kFigVTT_AttributeValue_cue_writingMode_RightToLeft;
  }

  else
  {
    v47 = CFEqual(v45, *MEMORY[0x1E69613E8]);
    if (!v47)
    {
      v47 = CFEqual(v45, *MEMORY[0x1E69613E0]);
      if (!v47)
      {
LABEL_226:
        v29 = 0;
        v111 = v169[0];
        if (v169[0])
        {
LABEL_227:
          CFRelease(v111);
          value_low = 0;
          v169[0] = 0;
          goto LABEL_79;
        }

LABEL_228:
        value_low = 0;
        goto LABEL_79;
      }

      goto LABEL_77;
    }

    v48 = kFigVTT_AttributeValue_cue_writingMode_LeftToRight;
  }

LABEL_220:
  v29 = *v48;
  if (!*v48)
  {
    goto LABEL_226;
  }

  value_low = OUTLINED_FUNCTION_3_40(v47, @"writingMode");
  if (!value_low)
  {
    v111 = v169[0];
    if (v169[0])
    {
      goto LABEL_227;
    }
  }

LABEL_79:
  if (v168)
  {
    CFRelease(v168);
  }

  if (v29)
  {
    CFRelease(v29);
  }

  if (v169[0])
  {
    CFRelease(v169[0]);
  }

  if (context.value)
  {
    CFRelease(context.value);
  }

  if (!value_low)
  {
    v49 = v153;
    v157 = 0;
    v158 = 0;
    v156 = 0;
    cf = 0;
    v136 = *MEMORY[0x1E695E480];
    Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
    if (!Mutable || (v51 = CFGetAllocator(a1), (v52 = CFArrayCreateMutable(v51, 0, MEMORY[0x1E695E9C0])) == 0))
    {
      OUTLINED_FUNCTION_49_0();
      OUTLINED_FUNCTION_2_35();
      FigSignalErrorAtGM(v112);
      value_low = v113;
LABEL_194:
      if (cf)
      {
        CFRelease(cf);
      }

      if (v158)
      {
        CFRelease(v158);
      }

      if (v156)
      {
        CFRelease(v156);
      }

      if (Mutable)
      {
        CFRelease(Mutable);
      }

      goto LABEL_202;
    }

    v53 = v52;
    v54 = CFGetAllocator(a1);
    OUTLINED_FUNCTION_4_42(v54, v55, v56, v57, v58, v59, v60, v61, v118, v120, v122, v124, v127, v130, v133, v136, v139, theArraya, v145, v146, v148, v149, v151);
    v63 = FigCaptionStyleSegmentGeneratorCreate(v62, v140, &time.start.value, &v158);
    v128 = Mutable;
    v131 = v6;
    theArrayb = v53;
    if (v63)
    {
      goto LABEL_190;
    }

    v63 = FigCaptionStyleSegmentGeneratorPerform(v158);
    if (v63)
    {
      goto LABEL_190;
    }

    v125 = v49;
    SegmentCount = FigCaptionStyleSegmentGeneratorGetSegmentCount(v158);
    if (SegmentCount >= 1)
    {
      v65 = SegmentCount;
      v66 = 0;
      v67 = MEMORY[0x1E695E9D8];
      v68 = MEMORY[0x1E695E9E8];
      while (1)
      {
        SegmentAtIndex = FigCaptionStyleSegmentGeneratorGetSegmentAtIndex(v158, v66);
        if (v156)
        {
          CFRelease(v156);
          v156 = 0;
        }

        if (cf)
        {
          CFRelease(cf);
          cf = 0;
        }

        v63 = FigCaptionStyleSegmentCopyText(SegmentAtIndex, &v156);
        if (v63)
        {
          goto LABEL_190;
        }

        v63 = FigCaptionStyleSegmentCopyAttributes(SegmentAtIndex, &cf);
        if (v63)
        {
          goto LABEL_190;
        }

        if (v157)
        {
          CFRelease(v157);
          v157 = 0;
        }

        v70 = CFGetAllocator(a1);
        v63 = FigVTTSpanCreate(v70, &v157);
        if (v63)
        {
          goto LABEL_190;
        }

        v63 = FigVTTNodeSetValue(v157, v156);
        if (v63)
        {
          goto LABEL_190;
        }

        v71 = cf;
        v72 = v157;
        MEMORY[0x19A8D3660](&fcwvtt_getCaptionStylePropertyToVTTAttributesMapping_once, fcwvtt_initCaptionStylePropertyToVTTAttributesMapping);
        v73 = sCaptionStylePropertyToVTTAttributesMapping;
        v74 = CFGetAllocator(a1);
        v75 = CFDictionaryCreateMutable(v74, 0, v67, v68);
        if (v75)
        {
          v76 = v75;
          time.start.epoch = v72;
          time.duration.value = 0;
          time.start.value = v73;
          *&time.start.timescale = v75;
          CFDictionaryApplyFunction(v71, fcwvtt_mapOneCaptionStylePropertyToAttribute, &time);
          value_low = LODWORD(time.duration.value);
          if (!LODWORD(time.duration.value))
          {
            context.value = v72;
            *&context.timescale = 0;
            CFDictionaryApplyFunction(v76, fcwvtt_copyOneAttributeToNode, &context);
            value_low = context.timescale;
          }

          CFRelease(v76);
          if (value_low)
          {
            goto LABEL_191;
          }
        }

        else
        {
          OUTLINED_FUNCTION_49_0();
          OUTLINED_FUNCTION_2_35();
          FigSignalErrorAtGM(v84);
          value_low = v85;
          if (v85)
          {
            goto LABEL_191;
          }
        }

        v77 = v157;
        FigBytePumpGetFigBaseObject();
        v78 = CMBaseObjectGetDerivedStorage();
        time.start.value = 0;
        v79 = (v78 + 8);
        if (!*(v78 + 8))
        {
          v80 = CFGetAllocator(a1);
          v81 = FigAttributePartitionGeneratorCreate(v80, v79);
          if (v81)
          {
            goto LABEL_122;
          }

          v82 = CFGetAllocator(a1);
          v83 = CFArrayCreateMutable(v82, 0, MEMORY[0x1E695E9C0]);
          *(v78 + 16) = v83;
          if (!v83)
          {
            break;
          }
        }

        v81 = FigVTTNodeCopyAttributes(v77, &time);
        if (v81)
        {
          goto LABEL_122;
        }

        value_low = FigAttributePartitionGeneratorAddElement(*v79, v77, time.start.value);
        if (!value_low)
        {
          CFArrayAppendValue(*(v78 + 16), v77);
        }

LABEL_114:
        if (time.start.value)
        {
          CFRelease(time.start.value);
        }

        if (value_low)
        {
          goto LABEL_191;
        }

        CFArrayAppendValue(theArrayb, v157);
        if (v65 == ++v66)
        {
          goto LABEL_123;
        }
      }

      OUTLINED_FUNCTION_49_0();
      OUTLINED_FUNCTION_2_35();
      FigSignalErrorAtGM(v86);
LABEL_122:
      value_low = v81;
      goto LABEL_114;
    }

LABEL_123:
    time.start.value = 0;
    *&time.start.timescale = 0;
    context.value = 0;
    v87 = CFGetAllocator(a1);
    v168 = 0;
    v169[0] = 0;
    v166 = 0;
    v167 = 0;
    v164 = 0;
    v165 = 0;
    v88 = FigCaptionDataGetCMBaseObject();
    v89 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v89)
    {
      v90 = v89(v88, *MEMORY[0x1E6961268], v137, &v164);
      if (v90)
      {
LABEL_171:
        value_low = v90;
LABEL_174:
        if (v169[0])
        {
          CFRelease(v169[0]);
        }

        if (v168)
        {
          CFRelease(v168);
        }

        if (v167)
        {
          CFRelease(v167);
        }

        if (v166)
        {
          CFRelease(v166);
        }

        if (v165)
        {
          CFRelease(v165);
        }

        if (context.value)
        {
          CFRelease(context.value);
        }

        if (v164)
        {
          CFRelease(v164);
        }

        if (value_low)
        {
          goto LABEL_191;
        }

        v63 = FigVTTNodeSetChildNodeArray(v125, theArrayb);
LABEL_190:
        value_low = v63;
LABEL_191:
        CFRelease(theArrayb);
        if (v157)
        {
          CFRelease(v157);
        }

        v6 = v131;
        v15 = v134;
        Mutable = v128;
        goto LABEL_194;
      }

      v91 = *MEMORY[0x1E69614E0];
      if (!FigCFArrayContainsValue() || ((v92 = *(*(CMBaseObjectGetVTable() + 16) + 8)) == 0 ? (v93 = &stru_1F0B1AFB8) : (v93 = v92(v140)), (Length = CFStringGetLength(v93)) == 0))
      {
LABEL_173:
        value_low = 0;
        goto LABEL_174;
      }

      v95 = Length;
      v96 = 0;
      while (1)
      {
        if (context.value)
        {
          CFRelease(context.value);
          context.value = 0;
        }

        v97 = *(*(CMBaseObjectGetVTable() + 16) + 24);
        if (!v97)
        {
          break;
        }

        v90 = v97(v140, v96, v91, v137, &context, &time);
        if (v90)
        {
          goto LABEL_171;
        }

        if (context.value)
        {
          v162 = -1;
          v163 = -1;
          v160 = 0;
          v161 = 0;
          v159 = 0;
          if (v169[0])
          {
            CFRelease(v169[0]);
            v169[0] = 0;
          }

          if (v168)
          {
            CFRelease(v168);
            v168 = 0;
          }

          if (v167)
          {
            CFRelease(v167);
            v167 = 0;
          }

          if (v166)
          {
            CFRelease(v166);
            v166 = 0;
          }

          if (v165)
          {
            CFRelease(v165);
            v165 = 0;
          }

          v90 = fcwtt_mapOffsetToSpanAndSpanOffset(v140, time.start.value, theArrayb, &v163, &v161, &v159 + 1);
          if (v90)
          {
            goto LABEL_171;
          }

          if (v161 >= 1)
          {
            v90 = fcwtt_splitSpanNode(theArrayb, v163, v161);
            if (v90)
            {
              goto LABEL_171;
            }
          }

          v90 = fcwtt_mapOffsetToSpanAndSpanOffset(v140, *&time.start.timescale + time.start.value, theArrayb, &v162, &v160, &v159);
          if (v90)
          {
            goto LABEL_171;
          }

          if (v160 >= 1)
          {
            v90 = fcwtt_splitSpanNode(theArrayb, v162, v160);
            if (v90)
            {
              goto LABEL_171;
            }
          }

          v90 = FigVTTSpanCreate(v87, v169);
          if (v90)
          {
            goto LABEL_171;
          }

          v90 = FigVTTNodeSetProperty(v169[0], @"WebVTTSpanNode_MarkupElement", @"RubyStart");
          if (v90)
          {
            goto LABEL_171;
          }

          v90 = FigVTTSpanCreate(v87, &v168);
          if (v90)
          {
            goto LABEL_171;
          }

          v90 = FigVTTNodeSetProperty(v168, @"WebVTTSpanNode_MarkupElement", @"RubyEnd");
          if (v90)
          {
            goto LABEL_171;
          }

          v90 = FigVTTSpanCreate(v87, &v167);
          if (v90)
          {
            goto LABEL_171;
          }

          v90 = FigVTTNodeSetProperty(v167, @"WebVTTSpanNode_MarkupElement", @"RubyTextStart");
          if (v90)
          {
            goto LABEL_171;
          }

          v90 = FigVTTSpanCreate(v87, &v165);
          if (v90)
          {
            goto LABEL_171;
          }

          v90 = FigVTTNodeSetProperty(v165, @"WebVTTSpanNode_MarkupElement", @"RubyTextEnd");
          if (v90)
          {
            goto LABEL_171;
          }

          v90 = FigVTTSpanCreate(v87, &v166);
          if (v90)
          {
            goto LABEL_171;
          }

          v90 = FigVTTNodeSetProperty(v166, @"WebVTTSpanNode_MarkupElement", @"RubyText");
          if (v90)
          {
            goto LABEL_171;
          }

          v98 = context.value;
          v99 = *(*(CMBaseObjectGetVTable() + 16) + 8);
          v100 = v99 ? v99(v98) : &stru_1F0B1AFB8;
          v90 = FigVTTNodeSetValue(v166, v100);
          if (v90)
          {
            goto LABEL_171;
          }

          CFArrayInsertValueAtIndex(theArrayb, v163, v169[0]);
          if (v159)
          {
            Count = CFArrayGetCount(theArrayb);
          }

          OUTLINED_FUNCTION_6_33(Count, v102, v168);
          OUTLINED_FUNCTION_6_33(v103, v104, v165);
          OUTLINED_FUNCTION_6_33(v105, v106, v166);
          OUTLINED_FUNCTION_6_33(v107, v108, v167);
        }

        v96 = *&time.start.timescale + time.start.value;
        if (*&time.start.timescale + time.start.value == v95)
        {
          goto LABEL_173;
        }
      }
    }

    value_low = 4294954514;
    goto LABEL_174;
  }

LABEL_202:
  if (v153)
  {
    CFRelease(v153);
  }

  if (v15)
  {
    CFRelease(v15);
  }

  if (v6)
  {
    CFRelease(v6);
  }

  return value_low;
}

uint64_t figVTTCaptionWriterForDocument_Finish(uint64_t a1)
{
  FigBytePumpGetFigBaseObject();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigBytePumpGetFigBaseObject();
  v3 = CMBaseObjectGetDerivedStorage();
  cf = 0;
  theDict = 0;
  v13 = 0;
  v14 = 0;
  v11 = a1;
  v12 = 0;
  v4 = *(v3 + 8);
  if (!v4)
  {
    v6 = 0;
    goto LABEL_18;
  }

  FigAttributePartitionGeneratorPerformPartitioning(v4, &theDict);
  if (!v5)
  {
    CFDictionaryApplyFunction(theDict, fcwvtt_addOnePartitionAsStyleNode, &v11);
    v6 = v14;
    if (v14)
    {
      goto LABEL_16;
    }

    if (!v12 || (v5 = FigVTTNodeSetChildNodeArray(v12, v13), !v5))
    {
      v7 = 0;
      while (1)
      {
        Count = *(v3 + 16);
        if (Count)
        {
          Count = CFArrayGetCount(Count);
        }

        if (v7 >= Count)
        {
          break;
        }

        ValueAtIndex = CFArrayGetValueAtIndex(*(v3 + 16), v7);
        if (cf)
        {
          CFRelease(cf);
          cf = 0;
        }

        v5 = FigAttributePartitionGeneratorCopyPartitionReferences(*(v3 + 8), ValueAtIndex, &cf);
        if (!v5)
        {
          v5 = FigVTTNodeSetProperty(ValueAtIndex, @"WebVTTSpanNode_StyleReferences", cf);
          ++v7;
          if (!v5)
          {
            continue;
          }
        }

        goto LABEL_14;
      }

      v6 = 0;
      goto LABEL_16;
    }
  }

LABEL_14:
  v6 = v5;
LABEL_16:
  if (v12)
  {
    CFRelease(v12);
  }

LABEL_18:
  if (v13)
  {
    CFRelease(v13);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (theDict)
  {
    CFRelease(theDict);
  }

  if (!v6)
  {
    return FigVTTDocumentWriterFlush(*DerivedStorage);
  }

  return v6;
}

const void *fcwvtt_mapOneCaptionStylePropertyToAttribute(const void *key, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 24))
  {
    key = CFDictionaryGetValue(*a3, key);
    if (key)
    {
      key = (key)(a2, *(a3 + 8));
      if (key)
      {
        *(a3 + 24) = key;
      }
    }
  }

  return key;
}

uint64_t fcwvtt_copyOneAttributeToNode(uint64_t cf, const void *a2, uint64_t a3)
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

uint64_t fcwtt_mapOffsetToSpanAndSpanOffset(uint64_t a1, CFIndex a2, const __CFArray *a3, CFIndex *a4, CFIndex *a5, BOOL *a6)
{
  cf = 0;
  v31 = 0;
  v12 = *(*(CMBaseObjectGetVTable() + 16) + 8);
  if (v12)
  {
    v13 = v12(a1);
    if (!v13)
    {
      v14 = 0;
      v15 = 0;
      v16 = -1;
LABEL_33:
      if (a4)
      {
        *a4 = v16;
      }

      if (a5)
      {
        *a5 = v14;
      }

      v25 = 0;
      if (a6)
      {
        *a6 = v15;
      }

      goto LABEL_39;
    }
  }

  else
  {
    v13 = &stru_1F0B1AFB8;
  }

  Length = CFStringGetLength(v13);
  if ((a2 & 0x8000000000000000) == 0 && Length >= a2)
  {
    v16 = 0;
    v18 = 0;
    if (!a3)
    {
      goto LABEL_9;
    }

LABEL_8:
    for (i = CFArrayGetCount(a3); v16 < i; i = 0)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(a3, v16);
      if (cf)
      {
        CFRelease(cf);
        cf = 0;
      }

      v21 = CFGetAllocator(ValueAtIndex);
      v22 = FigVTTNodeCopyProperty(ValueAtIndex, @"WebVTTSpanNode_MarkupElement", v21, &cf);
      if (v22)
      {
        goto LABEL_45;
      }

      if (!cf || !CFEqual(cf, @"RubyStart") && !CFEqual(cf, @"RubyEnd") && !CFEqual(cf, @"RubyTextStart") && !CFEqual(cf, @"RubyTextEnd") && !CFEqual(cf, @"RubyText"))
      {
        if (v31)
        {
          CFRelease(v31);
          v31 = 0;
        }

        v22 = FigVTTNodeCopyValue(ValueAtIndex, &v31);
        if (v22)
        {
          goto LABEL_45;
        }

        if (v31)
        {
          v23 = CFStringGetLength(v31);
          v14 = a2 - v18;
          v24 = a2 < v18;
          v18 += v23;
          v24 = v24 || v18 <= a2;
          if (!v24)
          {
            goto LABEL_32;
          }
        }
      }

      ++v16;
      if (a3)
      {
        goto LABEL_8;
      }

LABEL_9:
      ;
    }

    v14 = 0;
    v16 = -1;
LABEL_32:
    v15 = v16 == -1;
    goto LABEL_33;
  }

  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v27, v28, cf2);
LABEL_45:
  v25 = v22;
LABEL_39:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v31)
  {
    CFRelease(v31);
  }

  return v25;
}

uint64_t fcwtt_splitSpanNode(const __CFArray *a1, CFIndex a2, CFIndex a3)
{
  cf = 0;
  value = 0;
  theString = 0;
  ValueAtIndex = CFArrayGetValueAtIndex(a1, a2);
  CopyWithValueRange = FigVTTNodeCopyValue(ValueAtIndex, &theString);
  if (CopyWithValueRange)
  {
    goto LABEL_14;
  }

  Length = CFStringGetLength(theString);
  v9 = Length - a3;
  if (Length <= a3)
  {
    v10 = 0;
    goto LABEL_7;
  }

  CopyWithValueRange = FigVTTSpanCreateCopyWithValueRange(ValueAtIndex, 0, a3, &value);
  if (CopyWithValueRange)
  {
LABEL_14:
    v10 = CopyWithValueRange;
  }

  else
  {
    v10 = FigVTTSpanCreateCopyWithValueRange(ValueAtIndex, a3, v9, &cf);
    if (!v10)
    {
      CFArrayRemoveValueAtIndex(a1, a2);
      CFArrayInsertValueAtIndex(a1, a2, value);
      CFArrayInsertValueAtIndex(a1, a2 + 1, cf);
    }
  }

LABEL_7:
  if (value)
  {
    CFRelease(value);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (theString)
  {
    CFRelease(theString);
  }

  return v10;
}

void fcwvtt_addOnePartitionAsStyleNode(const void *a1, const __CFDictionary *a2, uint64_t a3)
{
  value = 0;
  FigBytePumpGetFigBaseObject();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(a3 + 24))
  {
    goto LABEL_8;
  }

  if (*(a3 + 8))
  {
LABEL_5:
    v11 = CFGetAllocator(*a3);
    v8 = FigVTTStyleCreate(v11, a1, &value);
    if (!v8)
    {
      v13[0] = *(a3 + 8);
      v13[1] = value;
      v14 = 0;
      CFDictionaryApplyFunction(a2, fcwvtt_applyOneAttributeToStyleNode, v13);
      v8 = v14;
      if (!v14)
      {
        CFArrayAppendValue(*(a3 + 16), value);
        goto LABEL_8;
      }
    }

    goto LABEL_12;
  }

  v7 = DerivedStorage;
  v8 = FigVTTDocumentWriterCreateAndAddNode(*DerivedStorage, 2, 7, a3 + 8);
  if (!v8)
  {
    v9 = CFGetAllocator(*v7);
    Mutable = CFArrayCreateMutable(v9, 0, MEMORY[0x1E695E9C0]);
    *(a3 + 16) = Mutable;
    if (!Mutable)
    {
      OUTLINED_FUNCTION_2_35();
      FigSignalErrorAtGM(v12);
      if (!v8)
      {
        goto LABEL_8;
      }

      goto LABEL_12;
    }

    goto LABEL_5;
  }

LABEL_12:
  *(a3 + 24) = v8;
LABEL_8:
  if (value)
  {
    CFRelease(value);
  }
}

const void *fcwvtt_applyOneAttributeToStyleNode(const void *result, const void *a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    result = FigVTTNodeSetAttribute(*(a3 + 8), result, a2);
    if (result)
    {
      *(a3 + 16) = result;
    }
  }

  return result;
}

uint64_t FigByteFlumeCreateWithHTTP(uint64_t a1, const __CFURL *a2, const void *a3, const void *a4, const void *a5, NSObject *a6, unsigned int a7, const __CFDictionary *a8, void *a9)
{
  valuePtr[16] = *MEMORY[0x1E69E9840];
  number = 0;
  v126 = 0;
  v124 = 0;
  if (FigNote_AllowInternalDefaultLogs())
  {
    FigNote_AllowInternalDefaultLogs();
  }

  OUTLINED_FUNCTION_33_9();
  fig_note_initialize_category_with_default_work_cf();
  FigNote_AllowInternalDefaultLogs();
  OUTLINED_FUNCTION_33_9();
  fig_note_initialize_category_with_default_work_cf();
  if (!a2 || !a9)
  {
    OUTLINED_FUNCTION_49_0();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
LABEL_138:
    v91 = v27;
    goto LABEL_139;
  }

  v14 = MEMORY[0x1E695E480];
  if (!a4)
  {
    goto LABEL_20;
  }

  v15 = FigCFHTTPCreateURLString(a2);
  TypeID = CFDictionaryGetTypeID();
  if (TypeID != CFGetTypeID(a4) || (Value = CFDictionaryGetValue(a4, @"Version")) == 0 || (v18 = Value, v19 = CFNumberGetTypeID(), v19 != CFGetTypeID(v18)) || (LODWORD(valuePtr[0]) = 0, !CFNumberGetValue(v18, kCFNumberSInt32Type, valuePtr)) || LODWORD(valuePtr[0]) != 1 || (v20 = CFDictionaryGetValue(a4, @"URL")) == 0)
  {
LABEL_97:
    a4 = 0;
    if (!v15)
    {
      goto LABEL_20;
    }

    goto LABEL_19;
  }

  if (!a7)
  {
    if (CFStringCompare(v20, v15, 0))
    {
      goto LABEL_97;
    }

    goto LABEL_16;
  }

  v21 = CFURLCreateWithString(*v14, v20, 0);
  if (v21)
  {
    v22 = v21;
    v23 = FigCFURLCreateCacheKey();
    CFRelease(v22);
  }

  else
  {
    v23 = 0;
  }

  v92 = OUTLINED_FUNCTION_184();
  v94 = CFURLCreateWithString(v92, v93, 0);
  if (!v94)
  {
    v96 = 0;
LABEL_93:
    if (v23)
    {
      CFRelease(v23);
    }

    if (v96)
    {
      CFRelease(v96);
    }

    goto LABEL_97;
  }

  v95 = v94;
  v96 = FigCFURLCreateCacheKey();
  CFRelease(v95);
  if (!v23 || !v96)
  {
    goto LABEL_93;
  }

  v97 = CFStringCompare(v23, v96, 0);
  CFRelease(v23);
  CFRelease(v96);
  if (v97)
  {
    goto LABEL_97;
  }

LABEL_16:
  v24 = CFDictionaryGetValue(a4, @"Size");
  if (!v24)
  {
    goto LABEL_97;
  }

  v25 = v24;
  v26 = CFNumberGetTypeID();
  if (v26 != CFGetTypeID(v25))
  {
    goto LABEL_97;
  }

  if (v15)
  {
LABEL_19:
    CFRelease(v15);
  }

LABEL_20:
  FigByteFlumeGetClassID();
  v27 = CMDerivedObjectCreate();
  if (v27)
  {
    goto LABEL_138;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigNetworkUrgencyMonitorCreate(a1, (DerivedStorage + 624));
  v29.n128_f64[0] = FigByteFlumeBaseInitialize(a1, DerivedStorage, v126);
  if (v27)
  {
    goto LABEL_138;
  }

  v30 = MEMORY[0x1E695E4D0];
  if (a8)
  {
    v31 = CFDictionaryGetValue(a8, @"FBFCreateOption_MaxSizeAllowedForCellularAccess");
    if (v31)
    {
      v32 = v31;
      v33 = CFGetTypeID(v31);
      if (v33 == CFNumberGetTypeID())
      {
        *(DerivedStorage + 152) = CFNumberGetValue(v32, kCFNumberSInt64Type, (DerivedStorage + 160));
      }
    }

    CFDictionaryGetValue(a8, @"FBFCreateOption_DisallowsExpensiveNetworkAccess");
    OUTLINED_FUNCTION_32_8();
    *(DerivedStorage + 153) = v34;
    CFDictionaryGetValue(a8, @"FBFCreateOption_DisallowsConstrainedNetworkAccess");
    OUTLINED_FUNCTION_32_8();
    *(DerivedStorage + 154) = v35;
    CFDictionaryGetValue(a8, @"FBFCreateOption_UseAWDL");
    OUTLINED_FUNCTION_32_8();
    *(DerivedStorage + 532) = v36;
    CFDictionaryGetValue(a8, @"FBFCreateOption_DisableLargeDownload");
    OUTLINED_FUNCTION_32_8();
    *(DerivedStorage + 248) = v37;
    v38 = CFDictionaryGetValue(a8, @"FBFCreateOption_HTTPRequestOptions");
    if (v38)
    {
      v38 = CFRetain(v38);
    }

    *(DerivedStorage + 568) = v38;
    v120 = CFDictionaryGetValue(a8, @"FBFCreateOption_AlternativeConfigurationOptions");
    CFDictionaryGetValue(a8, @"FBFCreateOption_AlwaysFollowRedirects");
    OUTLINED_FUNCTION_32_8();
    *(DerivedStorage + 184) = v39;
    v40 = CFDictionaryGetValue(a8, @"FBFCreateOption_ParentNetworkActivity");
    if (v40)
    {
      v40 = CFRetain(v40);
    }

    *(DerivedStorage + 640) = v40;
    FigCFDictionaryGetBooleanIfPresent();
    *(DerivedStorage + 533) = 0;
    *(DerivedStorage + 616) = 0;
    FigCFDictionaryGetBooleanIfPresent();
    v41 = CFDictionaryGetValue(a8, @"FBFCreateOption_StoreBagConfiguration");
    *(DerivedStorage + 632) = FigRCLGetNumberWithDefault(v41, @"enableHTTP3Connection", 1) != 0;
    *(DerivedStorage + 633) = FigRCLGetNumberWithDefault(v41, @"enableL4S", 1) != 0;
  }

  else
  {
    v120 = 0;
  }

  v42 = *(DerivedStorage + 568);
  if (v42)
  {
    v43 = CFDictionaryGetValue(v42, @"FHRP_InterfaceName");
    if (v43)
    {
      v43 = CFRetain(v43);
    }

    *(DerivedStorage + 536) = v43;
    v44 = CFDictionaryGetValue(*(DerivedStorage + 568), @"FHRP_StorageSession");
    if (v44)
    {
      v44 = CFRetain(v44);
    }

    *(DerivedStorage + 232) = v44;
    v45 = CFDictionaryGetValue(*(DerivedStorage + 568), @"FHRP_ClientAuditToken");
    if (v45)
    {
      v45 = CFRetain(v45);
    }

    *(DerivedStorage + 544) = v45;
    v46 = CFDictionaryGetValue(*(DerivedStorage + 568), @"FHRP_ClientBundleIdentifier");
    if (v46)
    {
      v46 = CFRetain(v46);
    }

    *(DerivedStorage + 552) = v46;
    *(DerivedStorage + 560) = FigCFHTTPCopyClientProcessName(*(DerivedStorage + 544));
  }

  v47 = FigHTTPSchedulerRetain(a6, v29);
  v48 = *(DerivedStorage + 240);
  *(DerivedStorage + 48) = v47;
  if (v48)
  {
    Mutable = 0;
    goto LABEL_44;
  }

  if (*(DerivedStorage + 232))
  {
    v53 = *v14;
    goto LABEL_112;
  }

  if (*(DerivedStorage + 568))
  {
    LOBYTE(valuePtr[0]) = 0;
    Mutable = CFDictionaryCreateMutable(*v14, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    if (!Mutable)
    {
      goto LABEL_140;
    }

    FigCFDictionarySetValueFromKeyInDict();
    FigCFDictionarySetValueFromKeyInDict();
    FigCFDictionarySetValueFromKeyInDict();
    FigCFDictionarySetValueFromKeyInDict();
    FigCFDictionarySetValueFromKeyInDict();
    FigCFDictionarySetValueFromKeyInDict();
    FigCFDictionaryGetBooleanIfPresent();
    *(DerivedStorage + 633) = LOBYTE(valuePtr[0]) == 0;
    if (*(DerivedStorage + 532))
    {
      CFDictionarySetValue(Mutable, @"FUSS_UseAWDL", *v30);
    }

    if (*(DerivedStorage + 533))
    {
      CFDictionarySetValue(Mutable, @"FUSS_EnableMultiPath", *v30);
    }

    v91 = FigURLStorageSessionCreate(Mutable, (DerivedStorage + 232));
    CFRelease(Mutable);
    if (v91)
    {
LABEL_139:
      Mutable = 0;
      goto LABEL_125;
    }
  }

  else
  {
    v91 = FigURLStorageSessionCreate(0, (DerivedStorage + 232));
    if (v91)
    {
      goto LABEL_139;
    }
  }

  v53 = *v14;
  if (*(DerivedStorage + 568))
  {
    v98 = OUTLINED_FUNCTION_265();
    MutableCopy = CFDictionaryCreateMutableCopy(v98, v99, v100);
    CFRelease(*(DerivedStorage + 568));
  }

  else
  {
    v102 = OUTLINED_FUNCTION_265();
    MutableCopy = CFDictionaryCreateMutable(v102, v103, v104, v105);
  }

  CFDictionarySetValue(MutableCopy, @"FHRP_StorageSession", *(DerivedStorage + 232));
  *(DerivedStorage + 568) = MutableCopy;
  if (!*(DerivedStorage + 232))
  {
    OUTLINED_FUNCTION_49_0();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
    goto LABEL_138;
  }

LABEL_112:
  v106 = OUTLINED_FUNCTION_265();
  v110 = CFDictionaryCreateMutable(v106, v107, v108, v109);
  Mutable = v110;
  if (!v110)
  {
LABEL_140:
    OUTLINED_FUNCTION_49_0();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
    goto LABEL_141;
  }

  if (*(DerivedStorage + 533))
  {
    v111 = v30;
  }

  else
  {
    v111 = MEMORY[0x1E695E4C0];
  }

  CFDictionarySetValue(v110, @"FHRSP_EnableMultiPath", *v111);
  v112 = *(DerivedStorage + 232);
  v113 = *(DerivedStorage + 48);
  v114 = *(*(CMBaseObjectGetVTable() + 16) + 40);
  if (!v114)
  {
    v91 = 4294954514;
    goto LABEL_125;
  }

  v51 = v114(v112, v113, Mutable, DerivedStorage + 240);
  if (v51)
  {
    goto LABEL_141;
  }

  v115 = *(DerivedStorage + 240);
  v116 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v116 && !v116(v115, 0x1F0B5F658, v53, &number) && number)
  {
    CFNumberGetValue(number, kCFNumberSInt64Type, &v124);
  }

  if (v124)
  {
    v117 = 3;
  }

  else
  {
    if (*(DerivedStorage + 616) < 3)
    {
      goto LABEL_44;
    }

    v117 = 2;
  }

  *(DerivedStorage + 616) = v117;
LABEL_44:
  *(DerivedStorage + 528) = a7;
  *(DerivedStorage + 72) = 0;
  if (a4)
  {
    v50 = CFDictionaryGetValue(a4, @"FileName");
    if (v50)
    {
      *(DerivedStorage + 208) = CFRetain(v50);
    }

    *(DerivedStorage + 272) = CFRetain(a4);
  }

  v51 = FigByteRateHistoryCreate((DerivedStorage + 344));
  if (v51)
  {
    goto LABEL_141;
  }

  v51 = FigByteRateHistoryAllocSampleArray(*(DerivedStorage + 344), 64);
  if (v51)
  {
    goto LABEL_141;
  }

  if (a3)
  {
    v52 = CFRetain(a3);
  }

  else
  {
    v52 = FigCFHTTPCreateUserAgent();
  }

  *(DerivedStorage + 200) = v52;
  *(DerivedStorage + 168) = CFRetain(a2);
  *(DerivedStorage + 192) = FigCFHTTPCreateURLString(a2);
  v54 = a5;
  if (a5)
  {
    v54 = CFRetain(a5);
  }

  *(DerivedStorage + 56) = 0;
  *(DerivedStorage + 224) = v54;
  *(DerivedStorage + 64) = DerivedStorage + 56;
  *(DerivedStorage + 464) = 60000000000;
  FigHTTPCreateTimer(*DerivedStorage, fbf_NetworkMonitorTimerProc, *(DerivedStorage + 48), (DerivedStorage + 456), 8073216000.0);
  if (v55)
  {
    OUTLINED_FUNCTION_49_0();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
LABEL_141:
    v91 = v51;
    goto LABEL_125;
  }

  valuePtr[0] = 0x4014000000000000;
  v56 = CFNumberCreate(*v14, kCFNumberDoubleType, valuePtr);
  v57 = OUTLINED_FUNCTION_249();
  v61 = CFDictionaryCreateMutable(v57, v58, v59, v60);
  v119 = v126;
  v62 = OUTLINED_FUNCTION_249();
  v65 = CFStringCreateWithFormat(v62, v63, v64, v119);
  CFDictionarySetValue(v61, *MEMORY[0x1E69628C8], v65);
  CFDictionarySetValue(v61, *MEMORY[0x1E69601E0], v56);
  *(DerivedStorage + 368) = CMMemoryPoolCreate(v61);
  if (v65)
  {
    CFRelease(v65);
  }

  if (v56)
  {
    CFRelease(v56);
  }

  if (v61)
  {
    CFRelease(v61);
  }

  *(DerivedStorage + 592) = FigNetworkInterfaceReporterCreate();
  FigByteFlumeCreateReportingAgent(DerivedStorage, v120, *(DerivedStorage + 224), *(DerivedStorage + 560), *(DerivedStorage + 552), 0, 0);
  if (*(DerivedStorage + 32) && *(*(CMBaseObjectGetVTable() + 16) + 56))
  {
    v66 = OUTLINED_FUNCTION_45_5();
    v67(v66);
  }

  if (*(DerivedStorage + 32))
  {
    if (*(*(CMBaseObjectGetVTable() + 16) + 56))
    {
      v68 = OUTLINED_FUNCTION_45_5();
      v69(v68);
    }

    if (*(DerivedStorage + 32) && *(*(CMBaseObjectGetVTable() + 16) + 56))
    {
      OUTLINED_FUNCTION_408_0();
      v70();
    }
  }

  OUTLINED_FUNCTION_408_0();
  FigNetworkInterfaceReporterSamplePhysicalStatistics(v71, v72, v73, v74, v75);
  if (FigGetCFPreferenceNumberWithDefault() == 1)
  {
    *(DerivedStorage + 184) = 1;
  }

  v76 = nw_activity_create();
  *(DerivedStorage + 600) = v76;
  if (v76)
  {
    if (!*(DerivedStorage + 640) || (nw_activity_set_parent_activity(), *(DerivedStorage + 600)))
    {
      nw_activity_activate();
    }
  }

  if (dword_1EAF16F58)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    v78 = os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    if (OUTLINED_FUNCTION_109_0(v78))
    {
      v127 = 136315906;
      v128 = "FigByteFlumeCreateWithHTTP";
      v129 = 2048;
      v130 = DerivedStorage;
      v131 = 2048;
      v132 = v126;
      v133 = 2048;
      v134 = a2;
      OUTLINED_FUNCTION_108();
      _os_log_send_and_compose_impl(v79, v80, v81, v82, v83, os_log_and_send_and_compose_flags_and_os_log_type, 0, v84, &v127, 42);
    }

    OUTLINED_FUNCTION_7();
    OUTLINED_FUNCTION_524(v85, v86, v87, v88, v89);
  }

  v90 = v126;
  if (v126)
  {
    v90 = CFRetain(v126);
  }

  v91 = 0;
  *a9 = v90;
LABEL_125:
  if (v126)
  {
    CFRelease(v126);
  }

  if (number)
  {
    CFRelease(number);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  return v91;
}

uint64_t fbf_NetworkMonitorTimerProc(uint64_t a1, uint64_t a2)
{
  FigRetainProxyLockMutex();
  if (!FigRetainProxyIsInvalidated())
  {
    FigRetainProxyGetOwner();
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    v10 = DerivedStorage;
    if (*(DerivedStorage + 448))
    {
      fbf_CancelReconnect(DerivedStorage);
      v11 = *(v10 + 480);
      v12 = *(v10 + 320);
      UpTimeNanoseconds = FigGetUpTimeNanoseconds();
      if (v11 == v12)
      {
        v21 = *(v10 + 472);
        v22 = v21 <= UpTimeNanoseconds;
        v23 = v21 - UpTimeNanoseconds;
        if (!v22)
        {
LABEL_23:
          FigHTTPRescheduleTimer(v23 / 1000000000.0, *(v10 + 48), *(v10 + 456));
          return FigRetainProxyUnlockMutex();
        }

        if (*(v10 + 17) || ((*(v10 + 17) = 1, OUTLINED_FUNCTION_29_9(), !v87) ? (v87 = v86 == 1) : (v87 = 0), !v87 ? (v88 = v86 == 2) : (v88 = 1), !v88 ? (v89 = 0) : (v89 = 1), FigNetworkInterfaceReporterSamplePhysicalStatistics(*(v10 + 592), 0, v84, v85, v89), fbf_ReleaseAndCreateLastError(v10, -12661, @"CoreMediaErrorDomain", @"Host unavailable - inactivity detected"), fbf_ReportingAgentReportErrorEvent(v10, @"CoreMediaErrorDomain", @"Host unavailable - inactivity detected", 2u, -12661), FigByteFlumePostHostUnavailableNotification(v10), FigRetainProxyRetainOwner(), FigCFHTTPStopAllReads(v10, -12935), FigRetainProxyReleaseOwner(), UpTimeNanoseconds = FigRetainProxyIsInvalidated(), !UpTimeNanoseconds))
        {
          if (*(v10 + 18) != 1 && !*(v10 + 392))
          {
            if (*(v10 + 512))
            {
              if (dword_1EAF16F58)
              {
                v24 = OUTLINED_FUNCTION_11_19(UpTimeNanoseconds, v14, v15, v16, v17, v18, v19, v20, v103, v107, v111, v115, SBYTE2(v115), SBYTE3(v115), SHIDWORD(v115));
                v32 = OUTLINED_FUNCTION_116_0(v24, v25, v26, v27, v28, v29, v30, v31, v104, v108, v112, v116, v119, v122, v125);
                if (OUTLINED_FUNCTION_109_0(v32))
                {
                  OUTLINED_FUNCTION_2_6();
                  OUTLINED_FUNCTION_6_34();
                  OUTLINED_FUNCTION_108();
                  OUTLINED_FUNCTION_456(v33, v34, v35, v36, v37, v38, v39, v40);
                  OUTLINED_FUNCTION_329_0();
                }

                OUTLINED_FUNCTION_7();
                OUTLINED_FUNCTION_524(v90, v91, v92, v93, v94);
              }
            }

            else
            {
              if (dword_1EAF16F58)
              {
                v67 = OUTLINED_FUNCTION_11_19(UpTimeNanoseconds, v14, v15, v16, v17, v18, v19, v20, v103, v107, v111, v115, SBYTE2(v115), SBYTE3(v115), SHIDWORD(v115));
                v75 = OUTLINED_FUNCTION_116_0(v67, v68, v69, v70, v71, v72, v73, v74, v106, v110, v114, v118, v121, v124, v127);
                if (OUTLINED_FUNCTION_109_0(v75))
                {
                  OUTLINED_FUNCTION_2_6();
                  OUTLINED_FUNCTION_6_34();
                  OUTLINED_FUNCTION_108();
                  OUTLINED_FUNCTION_456(v76, v77, v78, v79, v80, v81, v82, v83);
                  OUTLINED_FUNCTION_329_0();
                }

                OUTLINED_FUNCTION_7();
                OUTLINED_FUNCTION_524(v95, v96, v97, v98, v99);
              }

              *(v10 + 512) = FigGetUpTimeNanoseconds();
            }

            goto LABEL_44;
          }
        }
      }

      else
      {
        v58 = *(v10 + 464);
        v59 = *(v10 + 320) - UpTimeNanoseconds;
        if (*(v10 + 17) == 1)
        {
          *(v10 + 17) = 0;
          if (FigByteFlumePostHostAvailableNotification(v10))
          {
            fbf_ReportingAgentResetErrorStats(v10);
          }
        }

        *(v10 + 496) = 0;
        fbf_SetInactivityMonitorTimer(v10, v59 + v58);
      }
    }

    else
    {
      if (!*(DerivedStorage + 392))
      {
        if (*(DerivedStorage + 488))
        {
          v60 = FigGetUpTimeNanoseconds();
          v61 = *(v10 + 520);
          v22 = v61 <= v60;
          v23 = v61 - v60;
          if (v22)
          {
            fbf_CancelReconnect(v10);
            ++*(v10 + 496);
            *(v10 + 512) = 0;
            fbf_postConnectionToHostLostNotification(v10);
            return FigRetainProxyUnlockMutex();
          }

          goto LABEL_23;
        }

LABEL_44:
        v100 = OUTLINED_FUNCTION_265();
        fbf_ResumeRetryAttempt(v100, v101);
        return FigRetainProxyUnlockMutex();
      }

      if (dword_1EAF16F58)
      {
        v41 = OUTLINED_FUNCTION_11_19(DerivedStorage, v3, v4, v5, v6, v7, v8, v9, v103, v107, v111, v115, SBYTE2(v115), SBYTE3(v115), SHIDWORD(v115));
        v49 = OUTLINED_FUNCTION_116_0(v41, v42, v43, v44, v45, v46, v47, v48, v105, v109, v113, v117, v120, v123, v126);
        if (OUTLINED_FUNCTION_109_0(v49))
        {
          OUTLINED_FUNCTION_2_6();
          OUTLINED_FUNCTION_6_34();
          OUTLINED_FUNCTION_108();
          OUTLINED_FUNCTION_456(v50, v51, v52, v53, v54, v55, v56, v57);
          OUTLINED_FUNCTION_329_0();
        }

        OUTLINED_FUNCTION_7();
        OUTLINED_FUNCTION_524(v62, v63, v64, v65, v66);
      }

      FigHTTPRescheduleTimer(8073216000.0, *(v10 + 48), *(v10 + 456));
      fbf_CancelReconnect(v10);
    }
  }

  return FigRetainProxyUnlockMutex();
}

uint64_t FigCFHTTPResetURLAndRead(uint64_t a1, const void *a2, const __CFDictionary *a3, uint64_t a4, uint64_t a5, uint64_t a6, const void *a7, uint64_t a8, void *a9)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  OUTLINED_FUNCTION_172(DerivedStorage);
  FigRetainProxyLockMutex();
  if (FigRetainProxyIsInvalidated())
  {
    v21 = 4294954511;
  }

  else
  {
    if (a2)
    {
      v25 = a8;
      v19 = *(v9 + 176);
      *(v9 + 176) = a2;
      CFRetain(a2);
      if (v19)
      {
        CFRelease(v19);
      }

      *(v9 + 378) = 1;
      v20 = FigCFHTTPReadWithAdditionalHeaders(a1, a3, a4, a5, 0, a6, a7, v25, a9);
    }

    else
    {
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v23, v24, v26);
    }

    v21 = v20;
  }

  FigRetainProxyUnlockMutex();
  return v21;
}

uint64_t FigByteFlumeSetAdditionalOpenRequestHeaders(uint64_t a1, const void *a2)
{
  FigByteFlumeGetFigBaseObject();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  OUTLINED_FUNCTION_172(DerivedStorage);
  FigRetainProxyLockMutex();
  if (FigRetainProxyIsInvalidated())
  {
    v6 = 4294954511;
  }

  else
  {
    v5 = *(v2 + 112);
    *(v2 + 112) = a2;
    if (a2)
    {
      CFRetain(a2);
    }

    if (v5)
    {
      CFRelease(v5);
    }

    v6 = 0;
  }

  FigRetainProxyUnlockMutex();
  return v6;
}

uint64_t fbf_ReleaseAndRetainLastErrorFromCFError(uint64_t result, CFTypeRef cf)
{
  if (result)
  {
    v3 = result;
    v4 = *(result + 24);
    if (v4)
    {
      CFRelease(v4);
      *(v3 + 24) = 0;
    }

    *(v3 + 328) = 0;
    if (cf)
    {
      v5 = CFRetain(cf);
    }

    else
    {
      v5 = 0;
    }

    *(v3 + 24) = v5;
    result = FigGetUpTimeNanoseconds();
    *(v3 + 328) = result;
  }

  return result;
}

uint64_t fbf_ReportingAgentResetErrorStats(uint64_t result)
{
  if (result)
  {
    v1 = result;
    if (*(result + 32))
    {
      VTable = CMBaseObjectGetVTable();
      v3 = *(VTable + 16);
      result = VTable + 16;
      if (*(v3 + 48))
      {
        v4 = OUTLINED_FUNCTION_235();
        result = v5(v4);
      }

      if (*(v1 + 32))
      {
        v6 = CMBaseObjectGetVTable();
        v7 = *(v6 + 16);
        result = v6 + 16;
        if (*(v7 + 56))
        {
          OUTLINED_FUNCTION_235();
          OUTLINED_FUNCTION_408_0();
          result = v8();
        }

        if (*(v1 + 32))
        {
          v9 = CMBaseObjectGetVTable();
          v10 = *(v9 + 16);
          result = v9 + 16;
          if (*(v10 + 48))
          {
            v11 = OUTLINED_FUNCTION_235();
            result = v12(v11);
          }

          if (*(v1 + 32))
          {
            v13 = CMBaseObjectGetVTable();
            v14 = *(v13 + 16);
            result = v13 + 16;
            if (*(v14 + 56))
            {
              OUTLINED_FUNCTION_408_0();

              return v15();
            }
          }
        }
      }
    }
  }

  return result;
}

void fbf_ReportingAgentReportErrorEvent(uint64_t a1, CFErrorDomain Domain, CFStringRef a3, unsigned int a4, CFIndex Code)
{
  if (a1 && *(a1 + 32))
  {
    v10 = *(a1 + 24);
    cf = 0;
    if (*(a1 + 648))
    {
      AllocatorForMedia = FigGetAllocatorForMedia();
      if (!FigMetricErrorEventCreate(AllocatorForMedia, a4 == 2, v10, &cf) && *(*(CMBaseObjectGetVTable() + 16) + 40))
      {
        v12 = OUTLINED_FUNCTION_249();
        v13(v12);
      }

      if (cf)
      {
        CFRelease(cf);
      }
    }

    v14 = *(a1 + 24);
    if (v14)
    {
      Code = CFErrorGetCode(v14);
      Domain = CFErrorGetDomain(*(a1 + 24));
      v15 = CFErrorCopyDescription(*(a1 + 24));
    }

    else
    {
      v15 = 0;
    }

    v16 = *(a1 + 32);
    if (v15)
    {
      a3 = v15;
    }

    if (v16)
    {
      v17 = *(*(CMBaseObjectGetVTable() + 16) + 48);
      if (v17)
      {
        v17(v16, 0x1F0B645B8, 0x1F0B3F878, a3, 0);
      }
    }

    v18 = *(a1 + 32);
    if (v18)
    {
      v19 = *(*(CMBaseObjectGetVTable() + 16) + 56);
      if (v19)
      {
        v19(v18, 0x1F0B645B8, 0x1F0B3F858, Code, 0);
      }

      v20 = *(a1 + 32);
      if (v20)
      {
        v21 = *(*(CMBaseObjectGetVTable() + 16) + 48);
        if (v21)
        {
          v21(v20, 0x1F0B645B8, 0x1F0B3F898, Domain, 0);
        }

        v22 = *(a1 + 32);
        if (v22)
        {
          v23 = *(*(CMBaseObjectGetVTable() + 16) + 56);
          if (v23)
          {
            v23(v22, 0x1F0B645B8, 0x1F0B3F8B8, a4, 0);
          }

          v24 = *(a1 + 32);
          if (v24)
          {
            v25 = *(*(CMBaseObjectGetVTable() + 16) + 8);
            if (v25)
            {
              v25(v24, 0x1F0B645B8, 502, 0, 0);
            }
          }
        }
      }
    }

    if (v15)
    {
      CFRelease(v15);
    }
  }
}

uint64_t fbf_CreateAccessLog(double *a1, const __CFAllocator *a2, __CFDictionary **a3)
{
  valuePtr = 0.0;
  FigRetainProxyLockMutex();
  if (FigRetainProxyIsInvalidated())
  {
    v51 = 4294954511;
  }

  else
  {
    Mutable = CFDictionaryCreateMutable(a2, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    if (Mutable)
    {
      v7 = Mutable;
      CFDictionaryAddValue(Mutable, @"s-playback-type", @"FILE");
      v8 = *(a1 + 70);
      if (v8)
      {
        CFDictionarySetValue(v7, @"c-client-name", v8);
      }

      v9 = *(a1 + 17);
      v10 = MEMORY[0x1E695E480];
      if (v9)
      {
        v11 = FigCFHTTPCreateAddressString(v9);
        if (v11)
        {
          v12 = v11;
          v13 = OUTLINED_FUNCTION_444();
          CFDictionaryAddValue(v13, v14, v15);
          CFRelease(v12);
        }

        v16 = *v10;
        v17 = CFNumberCreate(*v10, kCFNumberCFIndexType, a1 + 18);
        if (v17)
        {
          v18 = v17;
          OUTLINED_FUNCTION_36_6(v17, @"s-ip-changes");
          CFRelease(v18);
        }
      }

      else
      {
        v16 = *MEMORY[0x1E695E480];
      }

      valuePtr = *(a1 + 39) / 1000000000.0;
      v19 = CFNumberCreate(v16, kCFNumberDoubleType, &valuePtr);
      if (v19)
      {
        v21 = v19;
        OUTLINED_FUNCTION_36_6(v19, @"c-transfer-duration");
        CFRelease(v21);
      }

      v22 = OUTLINED_FUNCTION_39_7(v19, v20, a1 + 36);
      if (v22)
      {
        v24 = v22;
        OUTLINED_FUNCTION_36_6(v22, @"bytes");
        CFRelease(v24);
      }

      if (*(a1 + 37) >= 1)
      {
        v22 = OUTLINED_FUNCTION_39_7(v22, v23, a1 + 37);
        if (v22)
        {
          v25 = v22;
          OUTLINED_FUNCTION_36_6(v22, @"bytes-cellular");
          CFRelease(v25);
        }

        if (*(a1 + 38) >= 1)
        {
          v22 = OUTLINED_FUNCTION_39_7(v22, v23, a1 + 38);
          if (v22)
          {
            v26 = v22;
            OUTLINED_FUNCTION_36_6(v22, @"bytes-cellular-fallback");
            CFRelease(v26);
          }
        }
      }

      v27 = OUTLINED_FUNCTION_39_7(v22, v23, a1 + 44);
      if (v27)
      {
        v29 = v27;
        OUTLINED_FUNCTION_36_6(v27, @"sc-count");
        CFRelease(v29);
      }

      v30 = OUTLINED_FUNCTION_39_7(v27, v28, a1 + 45);
      if (v30)
      {
        v31 = v30;
        v32 = OUTLINED_FUNCTION_444();
        CFDictionaryAddValue(v32, v33, v34);
        CFRelease(v31);
      }

      v35 = *(a1 + 22);
      if (!v35)
      {
        v35 = *(a1 + 21);
      }

      v36 = FigCFHTTPCreateURLString(v35);
      if (v36)
      {
        v37 = v36;
        v38 = OUTLINED_FUNCTION_444();
        CFDictionaryAddValue(v38, v39, v40);
        CFRelease(v37);
      }

      v41 = *(a1 + 28);
      if (v41)
      {
        Value = CFDictionaryGetValue(v41, @"X-Playback-Session-Id");
        if (Value)
        {
          CFDictionaryAddValue(v7, @"cs-guid", Value);
        }
      }

      if (a1[72] > 0.0)
      {
        FigCFDictionarySetDouble();
      }

      if (a1[73] > 0.0)
      {
        FigCFDictionarySetDouble();
      }

      if (*(a1 + 42) >= 1)
      {
        FigCFDictionarySetInt32();
      }

      v43 = FigNetworkInterfaceReporterCopyPhysicalStatistics(*(a1 + 74));
      if (v43)
      {
        v50 = v43;
        FigAccessLogUpdateWithPhysicalStatistcs(v7, v43, v44, v45, v46, v47, v48, v49);
        CFRelease(v50);
      }

      v51 = 0;
      *a3 = v7;
    }

    else
    {
      v51 = 4294954510;
    }
  }

  FigRetainProxyUnlockMutex();
  return v51;
}

const void *FigCFHTTPMatchesIdentifier(int a1, CFTypeRef cf)
{
  if (!cf)
  {
    return 0;
  }

  v3 = CFGetTypeID(cf);
  if (v3 != CFDictionaryGetTypeID())
  {
    return 0;
  }

  FigByteFlumeGetFigBaseObject();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v5 = *(DerivedStorage + 216);
  v6 = *(DerivedStorage + 192);
  v7 = *(DerivedStorage + 528);
  v8 = *(DerivedStorage + 264);

  return FigCFHTTPMatchCacheHeaders(cf, v5, v6, v7, v8);
}

void *fbf_ReleaseAndCreateLastError(void *result, int a2, uint64_t a3, uint64_t a4)
{
  if (result)
  {
    v7 = result;
    v8 = result[3];
    if (v8)
    {
      CFRelease(v8);
      v7[3] = 0;
    }

    v7[41] = 0;
    v7[3] = FigCreateCFError(a3, a2, a4, 0, 0, v7[21], 0);
    result = FigGetUpTimeNanoseconds();
    v7[41] = result;
  }

  return result;
}

void fbf_ConfigurePathEvaluator(uint64_t a1)
{
  if (!*(a1 + 400))
  {
    OptionsFromHTTPRequestOptions = FigByteFlumeCreateNetworkPathEvaluatorCreateOptionsFromHTTPRequestOptions(*(a1 + 568));
    if (!FigNetworkPathEvaluatorCreate())
    {
      v3 = *(a1 + 408);
      if (v3)
      {
        CFRelease(v3);
        *(a1 + 408) = 0;
      }

      v4 = *(a1 + 400);
      v12 = *(*(CMBaseObjectGetVTable() + 16) + 8);
      if (v12)
      {
        v13 = v12(v4);
      }

      else
      {
        v13 = 0;
      }

      *(a1 + 408) = v13;
      *(a1 + 416) = 0;
      if (dword_1EAF16F58)
      {
        v14 = OUTLINED_FUNCTION_11_19(v13, v5, v6, v7, v8, v9, v10, v11, v36, v38, v40, v42, SBYTE2(v42), SBYTE3(v42), SHIDWORD(v42));
        v22 = OUTLINED_FUNCTION_116_0(v14, v15, v16, v17, v18, v19, v20, v21, v37, v39, v41, v43, v44, v45, v46);
        if (OUTLINED_FUNCTION_109_0(v22))
        {
          OUTLINED_FUNCTION_39();
          OUTLINED_FUNCTION_108();
          OUTLINED_FUNCTION_456(v23, v24, v25, v26, v27, v28, v29, v30);
          OUTLINED_FUNCTION_329_0();
        }

        OUTLINED_FUNCTION_7();
        OUTLINED_FUNCTION_524(v31, v32, v33, v34, v35);
      }
    }

    if (OptionsFromHTTPRequestOptions)
    {
      CFRelease(OptionsFromHTTPRequestOptions);
    }
  }
}

void fbf_ReportingAgentSetCDNHeaders(uint64_t a1, uint64_t a2)
{
  cf = 0;
  if (a1)
  {
    if (a2)
    {
      if (*(a1 + 32))
      {
        v4 = *(*(CMBaseObjectGetVTable() + 8) + 48);
        if (v4)
        {
          v4(a2, @"FHRP_HTTPResponseHeaders", *MEMORY[0x1E695E480], &cf);
          if (cf)
          {
            fbf_ReportingAgentSetHTTPHeaderField(a1, cf, @"Via", 0x1F0B66578);
            fbf_ReportingAgentSetHTTPHeaderField(a1, cf, @"CDN-Server", 0x1F0B66878);
            if (cf)
            {
              CFRelease(cf);
            }
          }
        }
      }
    }
  }
}

void fbf_ReleaseAndSetLastErrorFromHTTPRequest(void *a1, uint64_t a2, int a3, _BYTE *a4)
{
  if (a1 && a2 && a4)
  {
    *a4 = 0;
    if (*(*(CMBaseObjectGetVTable() + 8) + 48))
    {
      v6 = OUTLINED_FUNCTION_444();
      v7(v6);
    }

    if (*(*(CMBaseObjectGetVTable() + 8) + 48))
    {
      v8 = OUTLINED_FUNCTION_444();
      v9(v8);
    }

    fbf_ReleaseAndCreateLastError(a1, a3, @"CoreMediaErrorDomain", 0);
  }
}

uint64_t fbf_UpdateAndReportMultiPathActivity(uint64_t result, int a2)
{
  v2 = *(result + 616);
  switch(v2)
  {
    case 5:
      if (!a2)
      {
        return result;
      }

      break;
    case 4:
      if (a2)
      {
        return result;
      }

      break;
    case 3:
      if (a2)
      {
        v3 = 4;
      }

      else
      {
        v3 = 5;
      }

      goto LABEL_11;
    default:
      return result;
  }

  v3 = 6;
LABEL_11:
  *(result + 616) = v3;
  v4 = *(result + 32);
  if (v4)
  {
    VTable = CMBaseObjectGetVTable();
    v6 = *(VTable + 16);
    result = VTable + 16;
    v7 = *(v6 + 56);
    if (v7)
    {

      return v7(v4, 0x1F0B645B8, 0x1F0B66678, v3, 0);
    }
  }

  return result;
}

uint64_t fbf_ParseResponseHeadersAndSetLastError(uint64_t a1, uint64_t a2, int a3)
{
  v60 = 0;
  v61 = 0;
  valuePtr = 0;
  v58 = 0;
  v5 = *(a2 + 256);
  if (!v5 || !*(a2 + 176))
  {
    OUTLINED_FUNCTION_303();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v52, number, v55);
    v17 = v35;
    v18 = @"no response or URL";
    v19 = a2;
    v20 = -12931;
    goto LABEL_29;
  }

  ResponseStatusCode = CFHTTPMessageGetResponseStatusCode(v5);
  if (ResponseStatusCode == 200)
  {
LABEL_6:
    if (a3)
    {
      if (!FigCFHTTPGetContentRangeFromHTTPResponse(*(a2 + 256), &v61, &v60, &valuePtr, &v58) || !v58 || v61 || v60 != 1)
      {
        OUTLINED_FUNCTION_303();
        FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v52, number, v55);
        v17 = v16;
        v18 = @"HTTP response has bad Content-Range";
LABEL_12:
        v19 = a2;
        v20 = v17;
LABEL_29:
        fbf_ReleaseAndCreateLastError(v19, v20, @"CoreMediaErrorDomain", v18);
        return v17;
      }

      goto LABEL_32;
    }

    v23 = FigCFHTTPIsDataURL(*(a2 + 168));
    if (v23)
    {
      number = 0;
      AllocatorForMedia = FigGetAllocatorForMedia();
      v32 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      if (v32)
      {
        v33 = v32(a1, @"FHRP_PayloadLength", AllocatorForMedia, &number);
        v34 = number;
        if (!v33)
        {
          CFNumberGetValue(number, kCFNumberSInt64Type, &valuePtr);
          v34 = number;
        }

        if (v34)
        {
          CFRelease(v34);
        }
      }

      v58 = 1;
      goto LABEL_32;
    }

    if (OUTLINED_FUNCTION_35_7(v23, v24, v25, v26, v27, v28, v29, v30, v52, number, v55, v56, v57, v58, valuePtr))
    {
      if (v58)
      {
LABEL_32:
        v36 = valuePtr;
        *(a2 + 216) = valuePtr;
        v37 = *(a2 + 264);
        if (v37)
        {
          *(a2 + 264) = 0;
          CFRelease(v37);
          v36 = *(a2 + 216);
        }

        v38 = *(a2 + 192);
        v39 = *(a2 + 256);
        v40 = (a2 + 264);
        v41 = 0;
LABEL_40:
        v43 = FigCFHTTPCreateCacheHeaders(v38, v36, v39, v41, v40);
        if (v43)
        {
          v17 = v43;
          v18 = @"Unable to create Cache Headers";
          v19 = a2;
          v20 = -12936;
          goto LABEL_29;
        }

        v17 = *(a2 + 32);
        if (!v17)
        {
          return v17;
        }

        v44 = *(a2 + 216);
        v45 = *(*(CMBaseObjectGetVTable() + 16) + 56);
        if (v45)
        {
          v45(v17, 0x1F0B645B8, 0x1F0B3F218, (round(v44 / 1000.0) * 1000.0), 0);
        }

        return 0;
      }
    }

    else
    {
      v47 = FigCFHTTPGetContentLengthFromHTTPResponse(*(a2 + 256), &valuePtr);
      v58 = v47;
      if (v47)
      {
        goto LABEL_32;
      }
    }

    OUTLINED_FUNCTION_303();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v53, number, v55);
    v17 = v48;
    v18 = @"HTTP response has bad Content-Length";
    goto LABEL_12;
  }

  v15 = ResponseStatusCode;
  if (ResponseStatusCode == 304)
  {
    if (OUTLINED_FUNCTION_35_7(304, v8, v9, v10, v11, v12, v13, v14, v52, number, v55, v56, v57, v58, valuePtr) && v58)
    {
      *(a2 + 216) = valuePtr;
    }

    v21 = *(a2 + 272);
    if (v21)
    {
      Value = CFDictionaryGetValue(v21, @"Size");
      if (!Value)
      {
LABEL_20:
        fbf_ReleaseAndCreateLastError(a2, -12936, @"CoreMediaErrorDomain", @"Unable to get Cache Headers");
        return 0;
      }

      CFNumberGetValue(Value, kCFNumberSInt64Type, &valuePtr);
      if (v58)
      {
        if (valuePtr != *(a2 + 216))
        {
          goto LABEL_20;
        }
      }

      else
      {
        *(a2 + 216) = valuePtr;
      }

      *(a2 + 280) = 1;
    }

    v42 = *(a2 + 264);
    if (v42)
    {
      *(a2 + 264) = 0;
      CFRelease(v42);
    }

    v38 = *(a2 + 192);
    v36 = *(a2 + 216);
    v39 = *(a2 + 256);
    v41 = *(a2 + 272);
    v40 = (a2 + 264);
    goto LABEL_40;
  }

  if (ResponseStatusCode == 206)
  {
    goto LABEL_6;
  }

  OUTLINED_FUNCTION_303();
  v49 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v52, number, v55);
  v17 = v50;
  v51 = CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"HTTP response code: %ld", v49, v15);
  fbf_ReleaseAndCreateLastError(a2, v15, @"CoreMediaErrorDomain", v51);
  if (v51)
  {
    CFRelease(v51);
  }

  return v17;
}

uint64_t fbf_UpdatePathEvaluation(uint64_t result, const void *a2)
{
  v246 = *MEMORY[0x1E69E9840];
  if (result)
  {
    FigRetainProxyRetain();
    FigRetainProxyLockMutex();
    if (FigRetainProxyIsInvalidated())
    {
LABEL_82:
      FigRetainProxyUnlockMutex();
      return FigRetainProxyRelease();
    }

    FigRetainProxyGetOwner();
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    v4 = *(DerivedStorage + 388);
    IsCellular = FigNetworkInterfaceIsCellular(v4);
    HIDWORD(v203) = FigNetworkPathInformationGetInterfaceType(a2);
    DoesUseCellular = FigNetworkPathInformationDoesUseCellular(a2);
    if (dword_1EAF16F58)
    {
      HIDWORD(v212) = 0;
      BYTE3(v212) = 0;
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      OUTLINED_FUNCTION_7();
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    if (!*(DerivedStorage + 448))
    {
      FigHTTPRescheduleTimer(8073216000.0, *(DerivedStorage + 48), *(DerivedStorage + 456));
    }

    fbf_CancelReconnect(DerivedStorage);
    if (*(DerivedStorage + 152))
    {
      v8 = *(DerivedStorage + 160);
      if (v8)
      {
        v9 = *(DerivedStorage + 216) <= v8;
      }

      else
      {
        v9 = 0;
      }
    }

    else
    {
      v9 = 1;
    }

    IsHostReachable = FigNetworkPathInformationIsHostReachable(a2, v9);
    v18 = *(DerivedStorage + 392);
    if (!IsHostReachable)
    {
      if (!*(DerivedStorage + 392))
      {
        if (dword_1EAF16F58)
        {
          v52 = OUTLINED_FUNCTION_5_39(IsHostReachable, v11, v12, v13, v14, v15, v16, v17, v185, v194, v203, v212, SBYTE2(v212), SBYTE3(v212), SHIDWORD(v212));
          v60 = OUTLINED_FUNCTION_19_4(v52, v53, v54, v55, v56, v57, v58, v59, v188, v197, v206, v215, v223, typeb, v239);
          if (OUTLINED_FUNCTION_115_1(v60))
          {
            OUTLINED_FUNCTION_2_51();
            OUTLINED_FUNCTION_14_17();
            OUTLINED_FUNCTION_448(v61, v62, v63, v64, v65, v66, v67, v68);
            OUTLINED_FUNCTION_612();
          }

          OUTLINED_FUNCTION_7();
          OUTLINED_FUNCTION_414(v162, v163, v164, v165, v166);
        }

        *(DerivedStorage + 392) = 1;
        *(DerivedStorage + 424) = FigGetUpTimeNanoseconds();
        if (!*(DerivedStorage + 17))
        {
          FigByteFlumePostHostUnavailableNotification(DerivedStorage);
        }

        goto LABEL_78;
      }

      if (dword_1EAF16F58)
      {
        v28 = OUTLINED_FUNCTION_5_39(IsHostReachable, v11, v12, v13, v14, v15, v16, v17, v185, v194, v203, v212, SBYTE2(v212), SBYTE3(v212), SHIDWORD(v212));
        v36 = OUTLINED_FUNCTION_19_4(v28, v29, v30, v31, v32, v33, v34, v35, v186, v195, v204, v213, v221, type, v237);
        if (OUTLINED_FUNCTION_115_1(v36))
        {
          OUTLINED_FUNCTION_2_51();
LABEL_55:
          OUTLINED_FUNCTION_14_17();
          OUTLINED_FUNCTION_448(v107, v108, v109, v110, v111, v112, v113, v114);
          OUTLINED_FUNCTION_612();
        }

LABEL_63:
        OUTLINED_FUNCTION_7();
        OUTLINED_FUNCTION_414(v140, v141, v142, v143, v144);
      }

LABEL_78:
      v179 = *(DerivedStorage + 408);
      *(DerivedStorage + 408) = a2;
      if (a2)
      {
        CFRetain(a2);
      }

      if (v179)
      {
        CFRelease(v179);
      }

      goto LABEL_82;
    }

    if (*(DerivedStorage + 392))
    {
      IsHostReachable = FigGetUpTimeNanoseconds();
      v19 = IsHostReachable - *(DerivedStorage + 424);
      if (dword_1EAF16F58)
      {
        v20 = OUTLINED_FUNCTION_5_39(IsHostReachable, v11, v12, v13, v14, v15, v16, v17, v185, v194, v203, v212, SBYTE2(v212), SBYTE3(v212), SHIDWORD(v212));
        if (os_log_type_enabled(v20, BYTE3(v212)))
        {
          v21 = HIDWORD(v212);
        }

        else
        {
          v21 = HIDWORD(v212) & 0xFFFFFFFE;
        }

        if (v21)
        {
          OUTLINED_FUNCTION_4_43();
          OUTLINED_FUNCTION_39();
          OUTLINED_FUNCTION_14_17();
          _os_log_send_and_compose_impl(v22, v23, v24, v25, v26, v20, BYTE3(v212), v27);
        }

        OUTLINED_FUNCTION_7();
        IsHostReachable = fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      *(DerivedStorage + 392) = 0;
      *(DerivedStorage + 440) += v19;
      *(DerivedStorage + 520) += v19;
      goto LABEL_51;
    }

    if (*(DerivedStorage + 533) && (*(DerivedStorage + 616) - 5) >= 0xFFFFFFFFFFFFFFFELL)
    {
      if (!dword_1EAF16F58)
      {
        goto LABEL_51;
      }

      v69 = OUTLINED_FUNCTION_5_39(IsHostReachable, v11, v12, v13, v14, v15, v16, v17, v185, v194, v203, v212, SBYTE2(v212), SBYTE3(v212), SHIDWORD(v212));
      v77 = OUTLINED_FUNCTION_441_1(v69, v70, v71, v72, v73, v74, v75, v76, v189, v198, v207, v216, v224, typec, v240);
      if (!OUTLINED_FUNCTION_28_1(v77))
      {
        goto LABEL_50;
      }

      OUTLINED_FUNCTION_4_43();
      OUTLINED_FUNCTION_39();
      v83 = "<<< CFByteFlume >>> %s: [%p] The Network is switching from %d to %d, but connection handles multipath. Not posting HostAvailableOnBetterInterface";
    }

    else
    {
      if (!*(DerivedStorage + 384) || *(DerivedStorage + 385))
      {
        v37 = *(DerivedStorage + 56);
        if (!v37)
        {
LABEL_32:
          if (*(DerivedStorage + 16) == 1)
          {
            if (!IsCellular || DoesUseCellular)
            {
              if (v4 && v4 != HIDWORD(v203))
              {
                v172 = OUTLINED_FUNCTION_235();
                fbf_checkAndPostHostAvailableOnBetterInterfaceNotificationIfNeeded(v172, v173);
              }
            }

            else
            {
              if (dword_1EAF16F58)
              {
                v38 = OUTLINED_FUNCTION_5_39(IsHostReachable, v11, v12, v13, v14, v15, v16, v17, v185, v194, v203, v212, SBYTE2(v212), SBYTE3(v212), SHIDWORD(v212));
                v46 = OUTLINED_FUNCTION_441_1(v38, v39, v40, v41, v42, v43, v44, v45, v187, v196, v205, v214, v222, typea, v238);
                if (OUTLINED_FUNCTION_28_1(v46))
                {
                  OUTLINED_FUNCTION_4_43();
                  OUTLINED_FUNCTION_39();
                  OUTLINED_FUNCTION_13_13(v47, v48, v245, v49, &dword_1962D5000, v50, v51, "<<< CFByteFlume >>> %s: [%p] The Network is switching from %d to %d. Posting HostAvailableOnBetterInterface immediately");
                }

                OUTLINED_FUNCTION_7();
                OUTLINED_FUNCTION_417(v180, v181, v182, v183, v184);
              }

              IsHostReachable = fbf_postHostAvailableOnBetterInterfaceNotification(DerivedStorage);
            }
          }

LABEL_51:
          if (*(DerivedStorage + 18) != 1)
          {
            if (*(DerivedStorage + 17) == 1)
            {
              IsProxied = FigNetworkInterfaceIsProxied(SHIDWORD(v203));
              if (!IsProxied)
              {
                if (dword_1EAF16F58)
                {
                  v145 = OUTLINED_FUNCTION_5_39(IsProxied, v116, v117, v118, v119, v120, v121, v122, v185, v194, v203, v212, SBYTE2(v212), SBYTE3(v212), SHIDWORD(v212));
                  v153 = OUTLINED_FUNCTION_19_4(v145, v146, v147, v148, v149, v150, v151, v152, v193, v202, v211, v220, v228, typeg, v244);
                  if (OUTLINED_FUNCTION_115_1(v153))
                  {
                    OUTLINED_FUNCTION_2_51();
                    OUTLINED_FUNCTION_14_17();
                    OUTLINED_FUNCTION_448(v154, v155, v156, v157, v158, v159, v160, v161);
                    OUTLINED_FUNCTION_612();
                  }

                  OUTLINED_FUNCTION_7();
                  OUTLINED_FUNCTION_414(v174, v175, v176, v177, v178);
                }

                fbf_ResumeRetryAttempt(DerivedStorage, 1000000000);
                goto LABEL_78;
              }

              if (dword_1EAF16F58)
              {
                v123 = OUTLINED_FUNCTION_5_39(IsProxied, v116, v117, v118, v119, v120, v121, v122, v185, v194, v203, v212, SBYTE2(v212), SBYTE3(v212), SHIDWORD(v212));
                v131 = OUTLINED_FUNCTION_19_4(v123, v124, v125, v126, v127, v128, v129, v130, v192, v201, v210, v219, v227, typef, v243);
                if (OUTLINED_FUNCTION_115_1(v131))
                {
                  OUTLINED_FUNCTION_2_51();
                  OUTLINED_FUNCTION_14_17();
                  OUTLINED_FUNCTION_448(v132, v133, v134, v135, v136, v137, v138, v139);
                  OUTLINED_FUNCTION_612();
                }

                OUTLINED_FUNCTION_7();
                OUTLINED_FUNCTION_414(v167, v168, v169, v170, v171);
              }
            }

            else if (!v18)
            {
              goto LABEL_78;
            }

            if (FigByteFlumePostHostAvailableNotification(DerivedStorage))
            {
              fbf_ReportingAgentResetErrorStats(DerivedStorage);
            }

            goto LABEL_78;
          }

          if (dword_1EAF16F58)
          {
            v98 = OUTLINED_FUNCTION_5_39(IsHostReachable, v11, v12, v13, v14, v15, v16, v17, v185, v194, v203, v212, SBYTE2(v212), SBYTE3(v212), SHIDWORD(v212));
            v106 = OUTLINED_FUNCTION_19_4(v98, v99, v100, v101, v102, v103, v104, v105, v191, v200, v209, v218, v226, typee, v242);
            if (OUTLINED_FUNCTION_115_1(v106))
            {
              OUTLINED_FUNCTION_2_51();
              goto LABEL_55;
            }

            goto LABEL_63;
          }

          goto LABEL_78;
        }

        while (!*(v37 + 24) || *(v37 + 104))
        {
          v37 = *(v37 + 128);
          if (!v37)
          {
            goto LABEL_32;
          }
        }
      }

      if (!dword_1EAF16F58)
      {
        goto LABEL_51;
      }

      v84 = OUTLINED_FUNCTION_5_39(IsHostReachable, v11, v12, v13, v14, v15, v16, v17, v185, v194, v203, v212, SBYTE2(v212), SBYTE3(v212), SHIDWORD(v212));
      v92 = OUTLINED_FUNCTION_441_1(v84, v85, v86, v87, v88, v89, v90, v91, v190, v199, v208, v217, v225, typed, v241);
      if (!OUTLINED_FUNCTION_28_1(v92))
      {
LABEL_50:
        OUTLINED_FUNCTION_7();
        OUTLINED_FUNCTION_417(v93, v94, v95, v96, v97);
        goto LABEL_51;
      }

      OUTLINED_FUNCTION_4_43();
      OUTLINED_FUNCTION_39();
      v83 = "<<< CFByteFlume >>> %s: [%p] The Network is switching from %d to %d, but waiting for outstanding response.  Not posting HostAvailableOnBetterInterface";
    }

    OUTLINED_FUNCTION_13_13(v78, v79, v245, v80, &dword_1962D5000, v81, v82, v83);
    goto LABEL_50;
  }

  return result;
}

uint64_t __fbf_checkAndPostHostAvailableOnBetterInterfaceNotificationIfNeeded_block_invoke(uint64_t a1)
{
  FigRetainProxyLockMutex();
  if (!FigRetainProxyIsInvalidated())
  {
    FigRetainProxyGetOwner();
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    if (FigByteFlumePostHostAvailableOnBetterInterfaceNotification(DerivedStorage))
    {
      fbf_ReportingAgentResetErrorStats(DerivedStorage);
    }
  }

  FigRetainProxyUnlockMutex();

  return FigRetainProxyRelease();
}

void fbf_ReportingAgentSetServerAddress(uint64_t a1)
{
  if (a1)
  {
    if (*(a1 + 32))
    {
      v2 = *(a1 + 136);
      if (v2)
      {
        v3 = FigCFHTTPCreateAddressString(v2);
        if (v3)
        {
          v4 = v3;
          v5 = *(a1 + 32);
          if (v5)
          {
            v6 = *(*(CMBaseObjectGetVTable() + 16) + 48);
            if (v6)
            {
              v6(v5, 0x1F0B645B8, 0x1F0B65718, v4, 0);
            }
          }

          CFRelease(v4);
        }
      }
    }
  }
}

void fbf_ReportingAgentSetHTTPHeaderField(uint64_t a1, CFHTTPMessageRef message, CFStringRef headerField, uint64_t a4)
{
  if (message)
  {
    if (headerField)
    {
      v6 = CFHTTPMessageCopyHeaderFieldValue(message, headerField);
      if (v6)
      {
        v7 = v6;
        v8 = *(a1 + 32);
        if (v8)
        {
          v9 = *(*(CMBaseObjectGetVTable() + 16) + 48);
          if (v9)
          {
            v9(v8, 0x1F0B645B8, a4, v7, 0);
          }
        }

        CFRelease(v7);
      }
    }
  }
}

uint64_t fbf_CreateHTTPRequest(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v29 = *MEMORY[0x1E69E9840];
  v6 = a1[16];
  if (*(a1 + 378))
  {
    v7 = *(a2 + 80);
    v8 = a1[22];
    *(a2 + 80) = v8;
    if (v8)
    {
      CFRetain(v8);
    }

    if (v7)
    {
      CFRelease(v7);
    }
  }

  if (!v6)
  {
    if (*(a1 + 184) && (v13 = a1[22]) != 0)
    {
      v14 = *(a2 + 80);
      *(a2 + 80) = v13;
      CFRetain(v13);
      if (v14)
      {
        CFRelease(v14);
      }
    }

    else if (!*(a2 + 80))
    {
      v25 = a1[21];
      *(a2 + 80) = v25;
      if (v25)
      {
        CFRetain(v25);
      }
    }
  }

  FigCFDictionaryGetIntIfPresent();
  OptionsAndSetNWActivity = fbf_CopyHttpRequestCreateOptionsAndSetNWActivity(a1, 0);
  v10 = a1[30];
  v11 = a1[16];
  if (v11)
  {
    v12 = 0;
  }

  else
  {
    v12 = a1[25];
  }

  v16 = *(a2 + 80);
  v15 = *(a2 + 88);
  v17 = *(a2 + 36);
  v18 = *a1;
  v19 = *(*(CMBaseObjectGetVTable() + 16) + 8);
  if (v19)
  {
    v20 = *MEMORY[0x1E695E480];
    memset(v28, 0, 112);
    v21 = v19(v10, v20, v11, v16, v12, v15, OptionsAndSetNWActivity, v17, v28, a3, a4, 0, FigCFHTTPReadResponse, v18, a2 + 24, a2 + 32);
    if (!v21)
    {
      FigNetworkUrgencyMonitorAddHTTPRequest(a1[78]);
    }
  }

  else
  {
    v21 = 4294954514;
  }

  v22 = a1[16];
  if (v22)
  {
    CFRelease(v22);
    a1[16] = 0;
  }

  if (OptionsAndSetNWActivity)
  {
    CFRelease(OptionsAndSetNWActivity);
  }

  if (dword_1EAF16F58)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    OUTLINED_FUNCTION_7();
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  return v21;
}

uint64_t FigReportingAgentStatsAddToCountValue_1(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (result)
  {
    v5 = result;
    VTable = CMBaseObjectGetVTable();
    v7 = *(VTable + 16);
    result = VTable + 16;
    v8 = *(v7 + 32);
    if (v8)
    {

      return v8(v5, a2, a3, 1);
    }
  }

  return result;
}

void FigCFHTTPGoInactiveIfUnreachable(uint64_t a1, uint64_t *a2)
{
  *a2 = 0;
  if (!*(a1 + 392) && *(a1 + 400))
  {
    v3 = *(a1 + 408);
    if (v3 && (!*(a1 + 152) ? (v6 = 1) : (v5 = *(a1 + 160)) == 0 ? (v6 = 0) : (v6 = *(a1 + 216) <= v5), UpTimeNanoseconds = FigNetworkPathInformationIsHostReachable(v3, v6), UpTimeNanoseconds))
    {
      if (*(a1 + 496) || !*(a1 + 416))
      {
        UpTimeNanoseconds = FigGetUpTimeNanoseconds();
        v15 = *(a1 + 320) + 30000000000;
        v16 = v15 <= UpTimeNanoseconds;
        v17 = v15 - UpTimeNanoseconds;
        if (v16)
        {
          v17 = 0;
        }
      }

      else
      {
        v17 = 1000000000;
      }

      *a2 = v17;
      if (dword_1EAF16F58)
      {
        v18 = OUTLINED_FUNCTION_11_19(UpTimeNanoseconds, v8, v9, v10, v11, v12, v13, v14, v41, v43, v45, v47, SBYTE2(v47), SBYTE3(v47), SHIDWORD(v47));
        v26 = OUTLINED_FUNCTION_116_0(v18, v19, v20, v21, v22, v23, v24, v25, v42, v44, v46, v48, v49, type, v51);
        if (OUTLINED_FUNCTION_109_0(v26))
        {
          OUTLINED_FUNCTION_39();
          OUTLINED_FUNCTION_108();
          OUTLINED_FUNCTION_456(v27, v28, v29, v30, v31, v32, v33, v34);
          OUTLINED_FUNCTION_329_0();
        }

        OUTLINED_FUNCTION_7();
        OUTLINED_FUNCTION_524(v35, v36, v37, v38, v39);
      }
    }

    else
    {
      if (dword_1EAF16F58)
      {
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
        OUTLINED_FUNCTION_7();
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      *(a1 + 392) = 1;
      *(a1 + 424) = FigGetUpTimeNanoseconds();
      FigHTTPRescheduleTimer(8073216000.0, *(a1 + 48), *(a1 + 456));
      fbf_CancelReconnect(a1);
      fbf_ReportingAgentReportErrorEvent(a1, @"CoreMediaErrorDomain", @"Host unavailable", 2u, -12661);
      FigByteFlumePostHostUnavailableNotification(a1);
    }

    *(a1 + 416) = 0;
  }
}

void FigCFHTTPCopyIdentifier_cold_1(uint64_t a1, const void *a2, _DWORD *a3)
{
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v6, v7, vars0);
  *a3 = v5;

  CFRelease(a2);
}

void FigPlayerStartupTaskCopyRequiredParameters_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_1_51();
  FigSignalErrorAtGM(v2);
  *a1 = v3;
}

void FigPlayerStartupTaskCreateWithCallbacks_cold_3(_DWORD *a1)
{
  OUTLINED_FUNCTION_1_51();
  FigSignalErrorAtGM(v2);
  *a1 = v3;
}

void FigPlayerStartupTaskCreateWithCallbacks_cold_5(_DWORD *a1)
{
  OUTLINED_FUNCTION_1_51();
  FigSignalErrorAtGM(v2);
  *a1 = v3;
}

void FigPlayerStartupTaskCreateWithCallbacks_cold_6(_DWORD *a1)
{
  OUTLINED_FUNCTION_1_51();
  FigSignalErrorAtGM(v2);
  *a1 = v3;
}

void FigPlayerStartupTaskCreateWithCallbacks_cold_7(_DWORD *a1)
{
  OUTLINED_FUNCTION_1_51();
  FigSignalErrorAtGM(v2);
  *a1 = v3;
}

uint64_t FigCachedFileByteStreamCreateFromByteStream(const void *a1, uint64_t a2, CFAllocatorRef Default, CFTypeRef *a4)
{
  v19 = 0;
  v20 = 0;
  if (!a1 || !a4)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_2_10();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
    goto LABEL_16;
  }

  FigReadCacheAddOpenByteStream(1, a1);
  if (v7)
  {
LABEL_16:
    v9 = v7;
    CacheNewRequestCompletion = 0;
    goto LABEL_14;
  }

  CacheNewRequestCompletion = FigReadCacheNewRequestCompletion();
  if (CacheNewRequestCompletion)
  {
    FigReadCacheCopyContainerForByteStream(a1, CacheNewRequestCompletion, &v19);
    if (v19)
    {
      number = 0;
      MEMORY[0x19A8D3660](&FigCachedFileByteStreamGetClassID_sRegisterFigCachedFileByteStreamClassOnce, RegisterFigCachedFileByteStreamClass);
      v9 = CMDerivedObjectCreate();
      if (!v9)
      {
        DerivedStorage = CMBaseObjectGetDerivedStorage();
        if (!Default)
        {
          Default = CFAllocatorGetDefault();
        }

        *DerivedStorage = Default;
        *DerivedStorage = CFRetain(Default);
        *(DerivedStorage + 32) = CacheNewRequestCompletion;
        v11 = CFRetain(a1);
        v12 = v19;
        *(DerivedStorage + 16) = 0;
        *(DerivedStorage + 24) = v12;
        *(DerivedStorage + 8) = v11;
        *(DerivedStorage + 112) = FigSimpleMutexCreate();
        *(DerivedStorage + 120) = 0;
        FigByteStreamStatsSetupWorker();
        CMBaseObject = CMByteStreamGetCMBaseObject();
        v14 = *(*(CMBaseObjectGetVTable() + 8) + 48);
        if (v14 && !v14(CMBaseObject, *MEMORY[0x1E695FF78], *MEMORY[0x1E695E480], &number))
        {
          CFNumberGetValue(number, kCFNumberSInt64Type, (DerivedStorage + 40));
          CFRelease(number);
        }

        CacheNewRequestCompletion = 0;
        *a4 = v20;
        v20 = 0;
      }
    }

    else
    {
      v9 = 0;
      *a4 = CFRetain(a1);
    }
  }

  else
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_2_10();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v17, number, v19);
    v9 = v16;
  }

LABEL_14:
  FigReadCacheDisposeRequestCompletion(CacheNewRequestCompletion);
  return v9;
}

void FigCachedFileByteStreamCreate_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FigCachedFileByteStreamCreate_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FigCachedFileByteStreamSetProperty_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FigCachedFileByteStreamRead_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FigCachedFileByteStreamRead_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FigCachedFileByteStreamGetAvailableLengthAtOffset_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FigCachedFileByteStreamReadAndCreateBlockBuffer_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FigCachedFileByteStreamReadAndCreateBlockBuffer_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

double FigReadCacheAddOpenByteStream(uint64_t a1, const void *a2)
{
  if (a2)
  {
    v4 = a1;
    if (gFigReadCache && *gFigReadCache || !OUTLINED_FUNCTION_2_52(a1))
    {
      v6 = OUTLINED_FUNCTION_1_52();
      v6[4] = v4 & 1 | 6;
      *(v6 + 3) = CFRetain(a2);
      IssueFigReadCacheRequest(v6);
    }
  }

  else
  {
    emitter = fig_log_get_emitter();

    return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 4294954516, "<<< FigReadCache >>>", 2672, v2);
  }

  return result;
}

size_t FigReadCacheAddOneFileAndCopyContainer(uint64_t a1, const void *a2, void *a3, void *a4)
{
  v7 = a1;
  if (!gFigReadCache || !*gFigReadCache)
  {
    v8 = OUTLINED_FUNCTION_2_52(a1);
    if (v8)
    {
      return v8;
    }
  }

  v9 = malloc_type_calloc(1uLL, 0x40uLL, 0x1062040E84F1957uLL);
  v10 = v9;
  if (v7)
  {
    v11 = 10;
  }

  else
  {
    v11 = 9;
  }

  v9[4] = v11;
  *(v9 + 3) = CFRetain(a2);
  *(v10 + 4) = 0;
  *(v10 + 40) = 0;
  *(v10 + 6) = a3;
  FigSimpleMutexLock();
  IssueFigReadCacheRequest(v10);
  FigSemaphoreWaitRelative();
  FigSimpleMutexUnlock();
  v12 = *(v10 + 7);
  if (!v12)
  {
    goto LABEL_14;
  }

  if (!*(v12 + 88))
  {
    if (FigCanTriggerTapToRadar())
    {
      RadarDescriptionString = FigTapToRadarCreateRadarDescriptionString();
      FigTriggerTapToRadar();
      if (RadarDescriptionString)
      {
        CFRelease(RadarDescriptionString);
      }
    }

    v15 = malloc_type_calloc(1uLL, 0x40uLL, 0x1062040E84F1957uLL);
    v15[4] = 4;
    *(v15 + 3) = v12;
    IssueFigReadCacheRequest(v15);
LABEL_14:
    v13 = 4294955044;
    goto LABEL_15;
  }

  v13 = 0;
  *a4 = v12;
LABEL_15:
  v16 = *(v10 + 3);
  if (v16)
  {
    CFRelease(v16);
  }

  free(v10);
  return v13;
}

uint64_t HandleAddOneFileAndCopyContainer(unint64_t *a1, char a2)
{
  v7 = 0;
  cf = 0;
  memset(v6, 0, sizeof(v6));
  v4 = a1[3];
  if (!FigFileGetFileInfo())
  {
    if (FindFileInCacheAndCopyContainer(a1[3], v6, &cf))
    {
      a1[7] = cf;
      cf = 0;
    }

    else
    {
      CreateAndLoadNewContainerInCacheAndReturnContainer(v4, 0, v6, a2, &cf);
      if (cf)
      {
        a1[7] = CFRetain(cf);
        cf = 0;
        ++*(gFigReadCache + 160);
      }
    }
  }

  return FigSemaphoreSignal();
}

uint64_t FindFileInCacheAndCopyContainer(CFTypeRef cf2, uint64_t a2, CFTypeRef *a3)
{
  v3 = *(gFigReadCache + 120);
  if (!v3)
  {
    return 0;
  }

  while (!CFEqual(*(v3 + 40), cf2) || !FigFileInfoEqual())
  {
    v3 = *(v3 + 136);
    if (!v3)
    {
      return 0;
    }
  }

  if (AssureContainerFileIsOpen(v3))
  {
    return 0;
  }

  LoadContainerInCache(v3);
  if (a3)
  {
    *a3 = CFRetain(v3);
    ++*(gFigReadCache + 160);
  }

  return 1;
}

void FigReadCacheContainerShowInterestInCaching_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FigReadCacheContainerShowDisinterestInCaching_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void AssureContainerFileIsOpen_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

BOOL CreateAndLoadNewContainerInCacheAndReturnContainer_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, v3, vars0);
  return v0 == 0;
}

BOOL CreateAndLoadNewContainerInCacheAndReturnContainer_cold_2()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, v3, vars0);
  return v0 == 0;
}

uint64_t FigXMLReadMemory(OpaqueCMBlockBuffer *a1, const __CFURL *BytesFromCFString, uint64_t a3, uint64_t a4)
{
  v19 = 0;
  dataPointerOut = 0;
  lengthAtOffsetOut = 0;
  blockBufferOut = 0;
  totalLengthOut = 0;
  if (figXMLEnsureLibraryIsInitialized())
  {
    goto LABEL_19;
  }

  if (BytesFromCFString)
  {
    if (!CFURLGetString(BytesFromCFString) || (FigGetAllocatorForMedia(), OUTLINED_FUNCTION_6_35(), (BytesFromCFString = FigCreateBytesFromCFString()) == 0))
    {
      fig_log_get_emitter();
      OUTLINED_FUNCTION_0_4();
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
LABEL_19:
      Memory = 0;
      goto LABEL_12;
    }
  }

  if (!CMBlockBufferGetDataPointer(a1, 0, &lengthAtOffsetOut, &totalLengthOut, &dataPointerOut))
  {
    if (lengthAtOffsetOut >= totalLengthOut || (AllocatorForMedia = FigGetAllocatorForMedia(), v10 = FigGetAllocatorForMedia(), !CMBlockBufferCreateContiguous(AllocatorForMedia, a1, v10, 0, 0, 0, 1u, &blockBufferOut)) && !CMBlockBufferGetDataPointer(blockBufferOut, 0, &lengthAtOffsetOut, &totalLengthOut, &dataPointerOut))
    {
      v11 = OUTLINED_FUNCTION_9_21(a3, v8, &v19);
      if (v11)
      {
        Memory = s_ps_xmlReadMemory(dataPointerOut, totalLengthOut, BytesFromCFString, v11, a4);
        if (!BytesFromCFString)
        {
          goto LABEL_12;
        }

        goto LABEL_11;
      }

      fig_log_get_emitter();
      OUTLINED_FUNCTION_0_4();
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v15, totalLengthOut, lengthAtOffsetOut);
    }
  }

  Memory = 0;
  if (BytesFromCFString)
  {
LABEL_11:
    v13 = FigGetAllocatorForMedia();
    CFAllocatorDeallocate(v13, BytesFromCFString);
  }

LABEL_12:
  if (blockBufferOut)
  {
    CFRelease(blockBufferOut);
  }

  free(v19);
  return Memory;
}

uint64_t FigXMLFreeDoc(uint64_t a1)
{
  IsInitialized = figXMLEnsureLibraryIsInitialized();
  if (!IsInitialized)
  {
    _MergedGlobals_41(a1);
  }

  return IsInitialized;
}

uint64_t FigXMLReadFromByteStream(uint64_t a1)
{
  blockBufferOut = 0;
  v38 = 0;
  valuePtr = 0;
  number = 0;
  dataPointerOut = 0;
  dataLength = 0;
  lengthAtOffsetOut = 0;
  v32 = 0;
  v30 = 0;
  if (!figXMLEnsureLibraryIsInitialized())
  {
    if (a1)
    {
      AllocatorForMedia = FigGetAllocatorForMedia();
      CMBaseObject = CMByteStreamGetCMBaseObject();
      v4 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      if (v4)
      {
        if (!v4(CMBaseObject, *MEMORY[0x1E695FF78], AllocatorForMedia, &number))
        {
          CFNumberGetValue(number, kCFNumberSInt64Type, &valuePtr);
          v5 = valuePtr;
          v6 = *(*(CMBaseObjectGetVTable() + 16) + 32);
          if (v6)
          {
            if (!v6(a1, v5, 0, &v38, &dataLength) && !OUTLINED_FUNCTION_10_20(v38, v7, v8, v9, v10, v11, v12, v13, v28, v30, lengthAtOffsetOut, v32, dataPointerOut))
            {
              if (lengthAtOffsetOut >= v32 || (v15 = FigGetAllocatorForMedia(), v16 = v38, v17 = FigGetAllocatorForMedia(), !CMBlockBufferCreateContiguous(v15, v16, v17, 0, 0, dataLength, 1u, &blockBufferOut)) && !OUTLINED_FUNCTION_10_20(blockBufferOut, v18, v19, v20, v21, v22, v23, v24, v29, v30, lengthAtOffsetOut, v32, dataPointerOut))
              {
                v25 = OUTLINED_FUNCTION_9_21(@"UTF-8", v14, &v30);
                if (v25)
                {
                  Memory = s_ps_xmlReadMemory(dataPointerOut, v32, 0, v25, 0);
                  goto LABEL_15;
                }

                fig_log_get_emitter();
                OUTLINED_FUNCTION_0_4();
                FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
              }
            }
          }
        }
      }
    }

    else
    {
      fig_log_get_emitter();
      OUTLINED_FUNCTION_0_4();
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
    }
  }

  Memory = 0;
LABEL_15:
  if (v38)
  {
    CFRelease(v38);
  }

  if (blockBufferOut)
  {
    CFRelease(blockBufferOut);
  }

  if (number)
  {
    CFRelease(number);
  }

  free(v30);
  return Memory;
}

uint64_t FigXMLReadFileFromURL(uint64_t a1)
{
  if (figXMLEnsureLibraryIsInitialized())
  {
    return 0;
  }

  FigGetAllocatorForMedia();
  if (CMByteStreamCreateForFileURL())
  {
    return 0;
  }

  else
  {
    return FigXMLReadFromByteStream(0);
  }
}

double FigXMLWriteFileDirectlyFromBlockBufferAtURL(OpaqueCMBlockBuffer *a1, const __CFURL *a2)
{
  if (!figXMLEnsureLibraryIsInitialized())
  {
    if (a1 && a2 && (v5 = CFURLCopyLastPathComponent(a2)) != 0)
    {
      v6 = v5;
      AllocatorForMedia = FigGetAllocatorForMedia();
      PathComponent = CFURLCreateCopyDeletingLastPathComponent(AllocatorForMedia, a2);
      if (PathComponent)
      {
        v9 = PathComponent;
        v10 = FigXMLReadMemory(a1, a2, @"UTF-8", 0);
        if (!v10)
        {
          goto LABEL_17;
        }

        v11 = v10;
        v12 = ps_writeXMLDocToFileAtomically(v9, v6, v10);
        if (!figXMLEnsureLibraryIsInitialized())
        {
          _MergedGlobals_41(v11);
        }

        if (v12)
        {
LABEL_17:
          fig_log_get_emitter();
          OUTLINED_FUNCTION_20_0();
          FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
        }

        CFRelease(v6);
        v13 = v9;
      }

      else
      {
        fig_log_get_emitter();
        OUTLINED_FUNCTION_20_0();
        FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v14, v15, v16);
        v13 = v6;
      }

      CFRelease(v13);
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

double FigXMLNodeCreateWithDoc(uint64_t a1, uint64_t a2, void *a3)
{
  cf = 0;
  if (!figXMLEnsureLibraryIsInitialized())
  {
    if (a2)
    {
      v6 = *(a2 + 24);
      if (v6)
      {
        while (!figXMLNode_processNode(v6, &cf))
        {
          v6 = v6[6];
          if (!v6)
          {
            v7 = cf;
            goto LABEL_8;
          }
        }

        v7 = cf;
      }

      else
      {
        v7 = 0;
LABEL_8:
        if (a3)
        {
          *a3 = v7;
          return result;
        }
      }

      if (v7)
      {
        CFRelease(v7);
      }
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

uint64_t figXMLNode_processNode(void *a1, CFTypeRef *a2)
{
  v37 = 0;
  theString = 0;
  if (figXMLEnsureLibraryIsInitialized())
  {
    OUTLINED_FUNCTION_5_40();
    v17 = 0;
    v2 = 0xFFFFFFFFLL;
    goto LABEL_54;
  }

  if (a1[2])
  {
    FigGetAllocatorForMedia();
    OUTLINED_FUNCTION_6_35();
    v11 = CFStringCreateWithCString(v8, v9, v10);
    if (v11)
    {
      v12 = v11;
      AllocatorForMedia = FigGetAllocatorForMedia();
      v14 = FigXMLNodeCreateNode(AllocatorForMedia, v12, &v37);
      if (v14)
      {
        v2 = v14;
        OUTLINED_FUNCTION_5_40();
        v17 = 0;
      }

      else
      {
        v15 = a1[9];
        if (v15 && (v16 = a1[5]) != 0 && *(v16 + 8) == 9)
        {
          v17 = *(v15 + 16);
          if (v17)
          {
            FigGetAllocatorForMedia();
            OUTLINED_FUNCTION_6_35();
            v17 = CFStringCreateWithCString(v18, v19, v20);
            if (!v17)
            {
              fig_log_get_emitter();
              OUTLINED_FUNCTION_6_3();
              FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v35, cf, v37);
              goto LABEL_72;
            }

            if (FigXMLNodeAttributeSetCFString(v37, @"xmlns", v17) || FigXMLNodeAttributeSetCFString(v37, @"xmlns:xsi", @"http://www.w3.org/2001/XMLSchema-instance"))
            {
LABEL_72:
              OUTLINED_FUNCTION_417_0();
LABEL_73:
              v5 = 0;
              data = 0;
              goto LABEL_50;
            }
          }
        }

        else
        {
          v17 = 0;
        }

        v21 = a1[11];
        if (v21)
        {
          MutableCopy = &off_1ED4CA000;
          while (1)
          {
            v2 = *(v21 + 16);
            FigGetAllocatorForMedia();
            OUTLINED_FUNCTION_6_35();
            data = CFStringCreateWithCString(v22, v23, v24);
            if (!data)
            {
              fig_log_get_emitter();
              OUTLINED_FUNCTION_6_3();
              FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v35, cf, v37);
              OUTLINED_FUNCTION_417_0();
              v5 = 0;
              goto LABEL_50;
            }

            v25 = off_1ED4CA840(a1, v2);
            if (v25)
            {
              v2 = v25;
              FigGetAllocatorForMedia();
              OUTLINED_FUNCTION_6_35();
              v5 = CFStringCreateWithCString(v26, v27, v28);
              off_1ED4CA838(v2);
            }

            else
            {
              fig_log_get_emitter();
              OUTLINED_FUNCTION_6_3();
              FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v35, cf, v37);
              v5 = 0;
            }

            if (FigXMLNodeAttributeSetCFString(v37, data, v5))
            {
              break;
            }

            CFRelease(data);
            if (v5)
            {
              CFRelease(v5);
            }

            v21 = *(v21 + 48);
            if (!v21)
            {
              goto LABEL_25;
            }
          }

          OUTLINED_FUNCTION_417_0();
          goto LABEL_50;
        }

LABEL_25:
        data = a1[3];
        if (data)
        {
          do
          {
            info = data->info;
            if (data->length)
            {
              v30 = 0;
            }

            else
            {
              v30 = info == 3;
            }

            if (v30)
            {
              if (ps_xmlNodeCopyContentAsCFString(data, &theString))
              {
                goto LABEL_72;
              }

              v31 = FigGetAllocatorForMedia();
              MutableCopy = CFStringCreateMutableCopy(v31, 0, theString);
              CFStringTrimWhitespace(MutableCopy);
              if (CFStringCompare(&stru_1F0B1AFB8, MutableCopy, 0))
              {
                v32 = FigXMLNodeContentSetCFString(v37, theString);
                if (v32)
                {
                  v2 = v32;
                  goto LABEL_73;
                }
              }

              if (MutableCopy)
              {
                CFRelease(MutableCopy);
              }

              if (theString)
              {
                CFRelease(theString);
                theString = 0;
              }
            }

            else if (info == 1)
            {
              if (figXMLNode_processNode(data, &cf) || figXMLNodeAddChild(v37, cf))
              {
                goto LABEL_72;
              }

              if (cf)
              {
                CFRelease(cf);
                cf = 0;
              }
            }

            data = data[1].data;
          }

          while (data);
          if (a2)
          {
            goto LABEL_48;
          }

          OUTLINED_FUNCTION_5_40();
          v2 = 0;
          goto LABEL_50;
        }

        if (ps_xmlNodeCopyContentAsCFString(a1, &theString))
        {
          goto LABEL_72;
        }

        FigXMLNodeContentSetCFString(v37, theString);
        OUTLINED_FUNCTION_417_0();
        if (!a2 || v2)
        {
          v5 = MutableCopy;
          data = MutableCopy;
        }

        else
        {
LABEL_48:
          OUTLINED_FUNCTION_5_40();
          v2 = 0;
          *a2 = v37;
          v37 = 0;
        }
      }

LABEL_50:
      CFRelease(v12);
      if (v37)
      {
        CFRelease(v37);
      }

      goto LABEL_52;
    }
  }

  fig_log_get_emitter();
  OUTLINED_FUNCTION_6_3();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
  v2 = v34;
  v17 = 0;
  data = 0;
  v5 = 0;
  MutableCopy = 0;
LABEL_52:
  if (cf)
  {
    CFRelease(cf);
  }

LABEL_54:
  if (theString)
  {
    CFRelease(theString);
  }

  if (MutableCopy)
  {
    CFRelease(MutableCopy);
  }

  if (v17)
  {
    CFRelease(v17);
  }

  if (data)
  {
    CFRelease(data);
  }

  if (v5)
  {
    CFRelease(v5);
  }

  return v2;
}

uint64_t FigXMLNodeCreateDocFromNode(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  IsInitialized = figXMLEnsureLibraryIsInitialized();
  if (!IsInitialized)
  {
    v6 = off_1ED4CA818("1.0");
    v7 = figXMLNode_convertNodeToLibXMLNode(a2);
    off_1ED4CA820(v6, v7);
    if (a3)
    {
      *a3 = v6;
    }
  }

  return IsInitialized;
}

uint64_t figXMLNode_convertNodeToLibXMLNode(uint64_t a1)
{
  v33 = 0;
  v34 = 0;
  if (figXMLEnsureLibraryIsInitialized())
  {
    v13 = 0;
    Mutable = 0;
    v4 = 0;
    goto LABEL_21;
  }

  v3 = OUTLINED_FUNCTION_9_21(*(a1 + 16), v2, &v34);
  v4 = off_1ED4CA848(0, v3);
  if (*(a1 + 24))
  {
    FigGetAllocatorForMedia();
    OUTLINED_FUNCTION_6_35();
    BytesFromCFString = FigCreateBytesFromCFString();
    if (BytesFromCFString)
    {
      v6 = BytesFromCFString;
      v7 = off_1ED4CA860(*(v4 + 64), BytesFromCFString);
      if (v7)
      {
        v8 = v7;
        off_1ED4CA858(v4, v7);
        off_1ED4CA838(v8);
        v9 = 0;
      }

      else
      {
        fig_log_get_emitter();
        OUTLINED_FUNCTION_3_5();
        FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v33, v34, v35);
        v9 = v32;
      }

      AllocatorForMedia = FigGetAllocatorForMedia();
      CFAllocatorDeallocate(AllocatorForMedia, v6);
      if (!v9)
      {
        goto LABEL_7;
      }
    }

    else
    {
      fig_log_get_emitter();
      OUTLINED_FUNCTION_3_5();
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v33, v34, v35);
      if (!v31)
      {
        goto LABEL_7;
      }
    }

    v13 = 0;
    Mutable = 0;
    goto LABEL_21;
  }

LABEL_7:
  v11 = *(a1 + 32);
  if (v11)
  {
    Count = CFDictionaryGetCount(v11);
    v13 = malloc_type_calloc(Count, 8uLL, 0xC0040B8AA526DuLL);
    CFDictionaryGetKeysAndValues(*(a1 + 32), v13, 0);
    v14 = FigGetAllocatorForMedia();
    Mutable = CFArrayCreateMutable(v14, 0, MEMORY[0x1E695E9C0]);
    if (!Mutable)
    {
      fig_log_get_emitter();
      OUTLINED_FUNCTION_3_5();
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v33, v34, v35);
      goto LABEL_21;
    }

    if (Count < 1)
    {
      OUTLINED_FUNCTION_3_42();
    }

    else
    {
      for (i = 0; i != Count; ++i)
      {
        CFArrayAppendValue(Mutable, v13[i]);
      }

      OUTLINED_FUNCTION_3_42();
      for (j = 0; j != Count; ++j)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(Mutable, j);
        CFDictionaryGetValue(*(a1 + 32), ValueAtIndex);
        v20 = OUTLINED_FUNCTION_9_21(ValueAtIndex, v19, &v33);
        FigGetAllocatorForMedia();
        OUTLINED_FUNCTION_6_35();
        v21 = FigCreateBytesFromCFString();
        if (v21)
        {
          v22 = v21;
          off_1ED4CA850(v4, v20, v21);
          v23 = FigGetAllocatorForMedia();
          CFAllocatorDeallocate(v23, v22);
        }

        else
        {
          fig_log_get_emitter();
          OUTLINED_FUNCTION_3_5();
          FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v33, v34, v35);
          if (v25)
          {
            goto LABEL_21;
          }
        }

        v24 = v33;
        if (v33)
        {
          v33 = 0;
          free(v24);
        }
      }
    }
  }

  else
  {
    v13 = 0;
    Mutable = 0;
  }

  for (k = 0; ; ++k)
  {
    v28 = *(a1 + 40);
    if (v28)
    {
      v28 = CFArrayGetCount(v28);
    }

    if (k >= v28)
    {
      break;
    }

    v29 = CFArrayGetValueAtIndex(*(a1 + 40), k);
    v30 = figXMLNode_convertNodeToLibXMLNode(v29);
    off_1ED4CA830(v4, v30);
  }

LABEL_21:
  free(v13);
  free(v34);
  free(v33);
  if (Mutable)
  {
    CFRelease(Mutable);
  }

  return v4;
}

double FigXMLNodeCreateFromBlockBuffer(uint64_t a1, OpaqueCMBlockBuffer *a2, void *a3)
{
  v4 = FigXMLReadMemory(a2, 0, @"UTF-8", 0);
  if (v4)
  {
    v5 = v4;
    FigXMLNodeCreateWithDoc(v4, v4, a3);
    if (!figXMLEnsureLibraryIsInitialized())
    {
      _MergedGlobals_41(v5);
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

uint64_t FigXMLNodeCreateFromURL(uint64_t a1, uint64_t a2, CFTypeRef *a3)
{
  if (_os_feature_enabled_impl())
  {

    return FigXMLServiceReadAndCopyParsedXML(a2, a3);
  }

  else
  {
    v6 = FigXMLReadFileFromURL(a2);
    FigXMLNodeCreateWithDoc(v6, v6, a3);
    v8 = v7;
    if (v6 && !figXMLEnsureLibraryIsInitialized())
    {
      _MergedGlobals_41(v6);
    }

    return v8;
  }
}

uint64_t FigXMLNodeGetAttributeAsInt64(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v11 = 0;
  __errstrp = 0;
  if (!a1 || !a2)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_20_0();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
    v8 = v10;
    goto LABEL_9;
  }

  Value = FigCFDictionaryGetValue();
  if (!Value)
  {
    goto LABEL_8;
  }

  v6 = OUTLINED_FUNCTION_9_21(Value, v5, &v11);
  v7 = strtonum(v6, 0, 0x7FFFFFFFFFFFFFFFLL, &__errstrp);
  if (!__errstrp)
  {
    if (a3)
    {
      v8 = 0;
      *a3 = v7;
      goto LABEL_9;
    }

LABEL_8:
    v8 = 0;
    goto LABEL_9;
  }

  v8 = 4294950371;
LABEL_9:
  free(v11);
  return v8;
}

uint64_t FigXMLNodeGetAttributeAsDouble(uint64_t a1, uint64_t a2, double *a3)
{
  Value = FigCFDictionaryGetValue();
  if (Value)
  {
    DoubleValue = CFStringGetDoubleValue(Value);
    if (a3)
    {
      *a3 = DoubleValue;
    }
  }

  return 0;
}

uint64_t FigXMLNodeRemoveAndClearChild(uint64_t a1, const void **a2)
{
  if (a1 && *a2)
  {
    v4 = *(a1 + 40);
    v7.length = CFArrayGetCount(v4);
    v7.location = 0;
    FirstIndexOfValue = CFArrayGetFirstIndexOfValue(v4, v7, *a2);
    if ((FirstIndexOfValue & 0x8000000000000000) == 0)
    {
      CFArrayRemoveValueAtIndex(*(a1 + 40), FirstIndexOfValue);
    }

    *a2 = 0;
  }

  return 0;
}

uint64_t FigXMLNodeWriteToFilePath(uint64_t a1, const __CFURL *a2)
{
  v17 = 0;
  AllocatorForMedia = FigGetAllocatorForMedia();
  if (FigXMLNodeCreateDocFromNode(AllocatorForMedia, a1, &v17))
  {
    v10 = 0xFFFFFFFFLL;
  }

  else
  {
    PathComponent = CFURLCopyLastPathComponent(a2);
    if (PathComponent)
    {
      v6 = PathComponent;
      v7 = FigGetAllocatorForMedia();
      v8 = CFURLCreateCopyDeletingLastPathComponent(v7, a2);
      if (v8)
      {
        v9 = v8;
        v10 = ps_writeXMLDocToFileAtomically(v8, v6, v17);
        CFRelease(v6);
        v11 = v9;
      }

      else
      {
        fig_log_get_emitter();
        OUTLINED_FUNCTION_0_4();
        FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v16, v17, v18);
        v10 = v15;
        v11 = v6;
      }

      CFRelease(v11);
    }

    else
    {
      fig_log_get_emitter();
      OUTLINED_FUNCTION_0_4();
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v16, v17, v18);
      v10 = v14;
    }
  }

  v12 = v17;
  if (v17 && !figXMLEnsureLibraryIsInitialized())
  {
    _MergedGlobals_41(v12);
  }

  return v10;
}

__CFString *xmlNode_copyDesc(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    return 0;
  }

  AllocatorForMedia = FigGetAllocatorForMedia();
  Mutable = CFStringCreateMutable(AllocatorForMedia, 0);
  if (Mutable)
  {
    v6 = *(a1 + 16);
    v40 = *(a1 + 24);
    v8 = *(a1 + 32);
    v7 = *(a1 + 40);
    if (v7)
    {
      Count = CFArrayGetCount(v7);
    }

    else
    {
      Count = 0;
    }

    if (a2 < 1)
    {
      v12 = 0;
      if (v6)
      {
LABEL_11:
        v14 = OUTLINED_FUNCTION_312();
        CFStringAppendFormat(v14, v15, v16, a1, v6);
      }
    }

    else
    {
      v10 = FigGetAllocatorForMedia();
      v11 = CFStringCreateMutable(v10, 0);
      if (!v11)
      {
        return Mutable;
      }

      v12 = v11;
      v13 = a2;
      do
      {
        CFStringAppend(v12, @"\t");
        --v13;
      }

      while (v13);
      CFStringAppend(Mutable, v12);
      if (v6)
      {
        goto LABEL_11;
      }
    }

    if (v8)
    {
      v17 = FigCFDictionaryCopyArrayOfKeys();
      v18 = 0;
      if (!v17)
      {
        goto LABEL_15;
      }

LABEL_14:
      for (i = CFArrayGetCount(v17); v18 < i; i = 0)
      {
        ValueAtIndex = FigCFArrayGetValueAtIndex();
        Value = FigCFDictionaryGetValue();
        v21 = OUTLINED_FUNCTION_312();
        CFStringAppendFormat(v21, v22, @" %@=%@", ValueAtIndex, Value);
        ++v18;
        if (v17)
        {
          goto LABEL_14;
        }

LABEL_15:
        ;
      }
    }

    else
    {
      v17 = 0;
    }

    CFStringAppend(Mutable, @">");
    if (v40)
    {
      v23 = OUTLINED_FUNCTION_312();
      CFStringAppendFormat(v23, v24, v25, v40);
    }

    if (Count && (CFStringAppend(Mutable, @"\n"), Count >= 1))
    {
      v26 = v6;
      for (j = 0; j != Count; ++j)
      {
        v28 = CFArrayGetValueAtIndex(*(a1 + 40), j);
        v29 = a2;
        v30 = xmlNode_copyDesc(v28, (a2 + 1));
        v31 = OUTLINED_FUNCTION_312();
        CFStringAppendFormat(v31, v32, @"%@", v30);
        if (v30)
        {
          CFRelease(v30);
        }

        a2 = v29;
      }

      v33 = 1;
      v6 = v26;
      if (!v26)
      {
        goto LABEL_39;
      }
    }

    else
    {
      v33 = 0;
      if (!v6)
      {
LABEL_39:
        if (v12)
        {
          CFRelease(v12);
        }

        if (v17)
        {
          CFRelease(v17);
        }

        return Mutable;
      }
    }

    v34 = v33 ^ 1;
    if (!v12)
    {
      v34 = 1;
    }

    if ((v34 & 1) == 0)
    {
      CFStringAppend(Mutable, v12);
    }

    v35 = OUTLINED_FUNCTION_312();
    CFStringAppendFormat(v35, v36, v37, v6);
    goto LABEL_39;
  }

  return Mutable;
}

double ps_writeXMLDocToFileAtomically_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v1, v2, vars0);
}

double ps_writeXMLDocToFileAtomically_cold_2()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v1, v2, vars0);
}

void ps_writeXMLDocToFileAtomically_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void ps_writeXMLDocToFileAtomically_cold_4(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void ps_writeXMLDocToFileAtomically_cold_5(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void ps_writeXMLDocToFileAtomically_cold_6(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void ps_writeXMLDocToFileAtomically_cold_7(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void ps_writeXMLDocToFileAtomically_cold_8(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void ps_writeXMLDocToFileAtomically_cold_9(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void ps_writeXMLDocToFileAtomically_cold_10(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FigXMLNodeWriteXMLFileFromBlockBufferAtURL_cold_1(const void *a1, _DWORD *a2)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v5, v6, v7);
  *a2 = v4;

  CFRelease(a1);
}

void FigXMLNodeWriteXMLFileFromBlockBufferAtURL_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FigXMLNodeCreateNode_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void figXMLNodeCreateNode_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FigXMLNodeCreateChildNode_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void figXMLNodeAddChild_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void figXMLNodeAddChild_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void figXMLNodeAddChild_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FigXMLNodeContentSetCFString_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FigXMLNodeContentSetCFString_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FigXMLNodeContentSetInt64_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FigXMLNodeContentSetInt64_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FigXMLNodeGetContentAsInt64_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FigXMLNodeCopyContentAsCFString_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FigXMLNodeSetAttributes_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FigXMLNodeAttributeSetCFString_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FigXMLNodeAttributeSetCFString_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FigXMLNodeAttributeSetCFString_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FigXMLNodeAttributeSetCFString_cold_4(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FigXMLNodeAttributeSetInt64_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FigXMLNodeAttributeSetInt64_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FigXMLNodeAttributeSetInt64_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FigXMLNodeAttributeSetDouble_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FigXMLNodeAttributeSetDouble_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FigXMLNodeAttributeSetDouble_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void ps_xmlNodeCopyContentAsCFString_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void ps_xmlNodeCopyContentAsCFString_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

BOOL ps_xmlNodeCopyContentAsCFString_cold_3(uint64_t a1, _DWORD *a2)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v6, v7, v8);
  *a2 = v4;
  return a1 == 0;
}

void cea608dec_rendererCallback(uint64_t a1, const __CFDictionary *a2, CMTime *a3, const void *a4)
{
  if (a4)
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    if (*(DerivedStorage + 16))
    {
      v8 = DerivedStorage;
      v9 = FigCFWeakReferenceHolderCopyReferencedObject();
      if (v9)
      {
        v10 = v9;
        v11 = *(v8 + 16);
        v12 = *&a3->value;
        epoch = a3->epoch;
        v11(a1, a2, &v12, v9);
        CFRelease(v10);
      }
    }
  }
}

uint64_t FigCEA608PushSample(uint64_t a1, opaqueCMSampleBuffer *a2)
{
  v129 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v5 = (DerivedStorage + 32);
  if (*(DerivedStorage + 32))
  {
    destination = **&MEMORY[0x1E6960C88];
    v6 = FigCEA608RenderToTime(a1, &destination, 0);
    if (v6)
    {
      return v6;
    }
  }

  if (!a2)
  {
    return 0;
  }

  FormatDescription = CMSampleBufferGetFormatDescription(a2);
  MediaSubType = CMFormatDescriptionGetMediaSubType(FormatDescription);
  v9 = MediaSubType;
  if (MediaSubType == 1635017571 || MediaSubType == 1664495672 || MediaSubType == 1664561208 || MediaSubType == 1882599480)
  {
    v19 = 0;
  }

  else
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_0_58();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v118, blockAllocator, v121);
    v19 = v18;
  }

  Decryptor = FigSampleBufferGetDecryptor();
  if (Decryptor)
  {
    v14 = Decryptor;
    if (Decryptor != *(DerivedStorage + 80))
    {
      v15 = CFGetTypeID(Decryptor);
      TypeID = FigCPECryptorGetTypeID();
      v17 = *(DerivedStorage + 80);
      if (v15 == TypeID)
      {
        *(DerivedStorage + 80) = v14;
        CFRetain(v14);
        if (v17)
        {
          CFRelease(v17);
        }
      }

      else if (v17)
      {
        CFRelease(*(DerivedStorage + 80));
        *(DerivedStorage + 80) = 0;
      }
    }
  }

  if (v9 == 1882599480 && !*(DerivedStorage + 80))
  {
    return 4294955138;
  }

  DataBuffer = CMSampleBufferGetDataBuffer(a2);
  if (DataBuffer)
  {
    v21 = CFRetain(DataBuffer);
  }

  else
  {
    v21 = 0;
  }

  v22 = *(DerivedStorage + 80);
  v23 = MEMORY[0x1E695E480];
  if (v22)
  {
    DataLength = CMBlockBufferGetDataLength(v21);
    blockBufferOut = 0;
    destination.value = 0;
    IsRangeContiguous = CMBlockBufferIsRangeContiguous(v21, 0, DataLength);
    v26 = v21;
    v122 = DerivedStorage;
    v27 = a2;
    if (IsRangeContiguous)
    {
      if (v26)
      {
        v28 = (DerivedStorage + 32);
        v29 = v26;
        v30 = CFRetain(v26);
      }

      else
      {
        v29 = 0;
        v28 = v5;
        v30 = 0;
      }

      blockBufferOut = v30;
      v31 = v23;
      v32 = *v23;
    }

    else
    {
      v28 = (DerivedStorage + 32);
      v31 = v23;
      v32 = *v23;
      v29 = v26;
      v33 = CMBlockBufferCreateContiguous(v32, v26, v32, 0, 0, 0, 0, &blockBufferOut);
      if (v33)
      {
        v19 = v33;
        v21 = v29;
        if (!v29)
        {
          return v19;
        }

        goto LABEL_189;
      }
    }

    v34 = CMBlockBufferCreateWithMemoryBlock(v32, 0, DataLength, v32, 0, 0, DataLength, 1u, &destination);
    if (v34)
    {
      v19 = v34;
      v39 = 0;
      v23 = v31;
      v5 = v28;
      a2 = v27;
      v21 = v29;
      goto LABEL_43;
    }

    v35 = blockBufferOut;
    value = destination.value;
    v37 = *(CMBaseObjectGetVTable() + 16);
    v23 = v31;
    if (*v37 < 4uLL)
    {
      v19 = 4294954514;
      v5 = v28;
    }

    else
    {
      v38 = v37[4];
      v5 = v28;
      if (v38)
      {
        a2 = v27;
        v19 = v38(v22, v35, value);
        v21 = v29;
        if (!v19)
        {
          v39 = destination.value;
          destination.value = 0;
LABEL_43:
          DerivedStorage = v122;
LABEL_50:
          if (blockBufferOut)
          {
            CFRelease(blockBufferOut);
          }

          if (v19)
          {
            goto LABEL_186;
          }

          if (v21)
          {
            CFRelease(v21);
          }

          v19 = 0;
          v21 = v39;
          goto LABEL_56;
        }

LABEL_47:
        DerivedStorage = v122;
        if (destination.value)
        {
          CFRelease(destination.value);
        }

        v39 = 0;
        goto LABEL_50;
      }

      v19 = 4294954514;
    }

    a2 = v27;
    v21 = v29;
    goto LABEL_47;
  }

LABEL_56:
  if (v21)
  {
    switch(v9)
    {
      case 0x70363038u:
      case 0x63363038u:
        v47 = CMBlockBufferGetDataLength(v21);
        v48 = 0;
        if ((*(DerivedStorage + 120) - 3) >= 2)
        {
          v49 = 1667522932;
        }

        else
        {
          v49 = 1667527730;
        }

        v50 = bswap32(v49);
        *(DerivedStorage + 32) = 0;
        while (1)
        {
          v51 = v48 + 8;
          if (v48 + 8 > v47)
          {
            v19 = 0;
            goto LABEL_175;
          }

          Contiguous = CMBlockBufferCopyDataBytes(v21, v48, 8uLL, &destination);
          if (Contiguous)
          {
            goto LABEL_75;
          }

          v53 = bswap32(destination.value);
          if (v53 <= 7)
          {
            break;
          }

          v48 += v53;
          if (v48 > v47)
          {
            break;
          }

          if (HIDWORD(destination.value) == v50)
          {
            Contiguous = CMBlockBufferCreateContiguous(*v23, v21, *v23, 0, v51, v53 - 8, 0, v5);
            goto LABEL_75;
          }
        }

        fig_log_get_emitter();
        OUTLINED_FUNCTION_0_58();
        FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
        break;
      case 0x63373038u:
        v54 = CMBlockBufferGetDataLength(v21);
        targetBBuf = 0;
        blockBufferOut = 0;
        v124 = 0;
        theBuffer = 0;
        v123 = 0;
        *v5 = 0;
        if (CMBlockBufferIsRangeContiguous(v21, 0, v54))
        {
          blockBufferOut = CFRetain(v21);
LABEL_110:
          OUTLINED_FUNCTION_613();
          DataPointer = CMBlockBufferGetDataPointer(v78, v79, v80, 0, v81);
          if (DataPointer || (blockAllocatora = *v23, DataPointer = CMBlockBufferCreateEmpty(*v23, 0, 0, &theBuffer), DataPointer))
          {
            v19 = DataPointer;
            goto LABEL_173;
          }

          if (v54 >= 9)
          {
            v83 = targetBBuf;
            while (1)
            {
              v84 = bswap32(*v83);
              v85 = v54 - v84;
              if (v54 < v84)
              {
                break;
              }

              v86 = v84 - 8;
              v87 = v83[1] == 1885627235 && v86 >= 0xC;
              if (v87)
              {
                v88 = (v83 + 2);
                while (*v88 == 150)
                {
                  if (v88[1] != 105)
                  {
                    break;
                  }

                  v89 = v88[2];
                  v87 = v86 >= v89;
                  v86 -= v89;
                  if (!v87)
                  {
                    break;
                  }

                  v90 = v88[3] >> 4;
                  if (v90 != *(DerivedStorage + 116))
                  {
                    switch(v90)
                    {
                      case 1:
                        p_destination = &destination;
                        v92 = 1001;
                        v93 = 24000;
                        break;
                      case 2:
                        v92 = OUTLINED_FUNCTION_3_43();
                        v93 = 24;
                        break;
                      case 3:
                        v92 = OUTLINED_FUNCTION_3_43();
                        v93 = 25;
                        break;
                      case 4:
                        p_destination = &destination;
                        v92 = 1001;
                        v93 = 30000;
                        break;
                      case 5:
                        v92 = OUTLINED_FUNCTION_3_43();
                        v93 = 30;
                        break;
                      case 6:
                        v92 = OUTLINED_FUNCTION_3_43();
                        v93 = 50;
                        break;
                      case 7:
                        p_destination = &destination;
                        v92 = 1001;
                        v93 = 60000;
                        break;
                      case 8:
                        v92 = OUTLINED_FUNCTION_3_43();
                        v93 = 60;
                        break;
                      default:
                        goto LABEL_156;
                    }

                    CMTimeMake(p_destination, v92, v93);
                    *(DerivedStorage + 92) = destination;
                    *(DerivedStorage + 116) = v90;
                  }

                  v94 = 7;
                  if ((v88[4] & 0x80u) != 0)
                  {
                    v94 = 12;
                  }

                  if ((v88[4] & 0x40) != 0)
                  {
                    v95 = &v88[v94];
                    if (*v95 != 114)
                    {
                      goto LABEL_156;
                    }

                    v96 = 3 * (v95[1] & 0x1F) + 2;
                    if (v96 > v89 || &v95[v96] > targetBBuf + v54)
                    {
                      goto LABEL_156;
                    }

                    v98 = createBBufFromCCData((v95 + 2), v95[1] & 0x1F, *(DerivedStorage + 120), &v124);
                    if (v98)
                    {
                      goto LABEL_157;
                    }

                    if (v124)
                    {
                      appended = CMBlockBufferAppendBufferReference(theBuffer, v124, 0, 0, 0);
                      if (appended)
                      {
                        goto LABEL_196;
                      }

                      if (v124)
                      {
                        CFRelease(v124);
                        v124 = 0;
                      }
                    }
                  }

                  v88 += v89;
                  if (v86 <= 0xB)
                  {
                    v83 = targetBBuf;
                    v85 = v54 - v84;
                    goto LABEL_151;
                  }
                }

                break;
              }

LABEL_151:
              v83 = (v83 + v84);
              targetBBuf = v83;
              v54 = v85;
              if (v85 <= 8)
              {
                goto LABEL_152;
              }
            }

LABEL_156:
            fig_log_get_emitter();
            OUTLINED_FUNCTION_0_58();
            FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
LABEL_157:
            v19 = v98;
            goto LABEL_171;
          }

LABEL_152:
          if (CMBlockBufferIsEmpty(theBuffer))
          {
            v19 = 0;
          }

          else
          {
            OUTLINED_FUNCTION_613();
            if (CMBlockBufferIsRangeContiguous(v100, v101, v102))
            {
              if (theBuffer)
              {
                v108 = CFRetain(theBuffer);
              }

              else
              {
                v108 = 0;
              }

              goto LABEL_168;
            }

            appended = OUTLINED_FUNCTION_2_53(blockAllocatora, theBuffer, v103, v104, v105, v106, v107, &v123);
            if (!appended)
            {
              v108 = v123;
LABEL_168:
              v19 = 0;
              *v5 = v108;
              v123 = 0;
              goto LABEL_169;
            }

LABEL_196:
            v19 = appended;
          }

LABEL_169:
          if (v124)
          {
            CFRelease(v124);
          }

LABEL_171:
          v109 = theBuffer;
          if (theBuffer)
          {
LABEL_172:
            CFRelease(v109);
          }

LABEL_173:
          if (blockBufferOut)
          {
            CFRelease(blockBufferOut);
          }

          goto LABEL_175;
        }

        Contiguous = OUTLINED_FUNCTION_2_53(*v23, v21, v55, v56, v57, v58, v59, &blockBufferOut);
        if (!Contiguous)
        {
          goto LABEL_110;
        }

        break;
      case 0x61746363u:
        blockBufferOut = 0;
        destination.value = 0;
        theBuffer = 0;
        targetBBuf = 0;
        v41 = CMBlockBufferGetDataLength(v21);
        *v5 = 0;
        if (CMBlockBufferIsRangeContiguous(v21, 0, v41))
        {
          blockBufferOut = CFRetain(v21);
        }

        else
        {
          v60 = OUTLINED_FUNCTION_2_53(*v23, v21, v42, v43, v44, v45, v46, &blockBufferOut);
          if (v60)
          {
            goto LABEL_200;
          }
        }

        OUTLINED_FUNCTION_613();
        v60 = CMBlockBufferGetDataPointer(v61, v62, v63, 0, v64);
        if (!v60)
        {
          if (v41 >= 8)
          {
            v65 = 0;
            v66 = destination.value;
            while (1)
            {
              if (*v66 != 71 || v66[1] != 65 || v66[2] != 57 || v66[3] != 52 || v66[4] != 3)
              {
                destination.value = ++v66;
                --v41;
                goto LABEL_94;
              }

              destination.value = (v66 + 5);
              v67 = 3 * (v66[5] & 0x1F) + 2;
              v87 = v41 - 5 >= v67;
              v41 = v41 - 5 - v67;
              if (!v87)
              {
                fig_log_get_emitter();
                OUTLINED_FUNCTION_0_58();
                FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v118, blockAllocator, v121);
LABEL_202:
                v19 = v117;
                goto LABEL_163;
              }

              if ((v66[5] & 0x40) != 0)
              {
                v117 = createBBufFromCCData((v66 + 7), v66[5] & 0x1F, *(DerivedStorage + 120), &targetBBuf);
                if (v117)
                {
                  goto LABEL_202;
                }

                v68 = targetBBuf;
                if (targetBBuf)
                {
                  if (!v65)
                  {
                    targetBBuf = 0;
                    goto LABEL_92;
                  }

                  v117 = CMBlockBufferAppendBufferReference(v65, targetBBuf, 0, 0, 0);
                  if (v117)
                  {
                    goto LABEL_202;
                  }

                  if (targetBBuf)
                  {
                    CFRelease(targetBBuf);
                    targetBBuf = 0;
                  }
                }
              }

              v68 = v65;
LABEL_92:
              v66 = (destination.value + v67);
              destination.value += v67;
              v65 = v68;
LABEL_94:
              if (v41 <= 7)
              {
                if (v65 && !CMBlockBufferIsEmpty(v65))
                {
                  OUTLINED_FUNCTION_613();
                  if (CMBlockBufferIsRangeContiguous(v69, v70, v71))
                  {
                    v77 = CFRetain(v65);
LABEL_162:
                    v19 = 0;
                    *v5 = v77;
                    theBuffer = 0;
                    goto LABEL_163;
                  }

                  v117 = OUTLINED_FUNCTION_2_53(*v23, v65, v72, v73, v74, v75, v76, &theBuffer);
                  if (!v117)
                  {
                    v77 = theBuffer;
                    goto LABEL_162;
                  }

                  goto LABEL_202;
                }

                v19 = 0;
LABEL_163:
                if (targetBBuf)
                {
                  CFRelease(targetBBuf);
                }

                if (v65)
                {
                  v109 = v65;
                  goto LABEL_172;
                }

                goto LABEL_173;
              }
            }
          }

          v19 = 0;
LABEL_104:
          v65 = 0;
          goto LABEL_163;
        }

LABEL_200:
        v19 = v60;
        goto LABEL_104;
      default:
LABEL_175:
        if (!v19)
        {
          if (!*v5)
          {
            v19 = 0;
LABEL_189:
            CFRelease(v21);
            return v19;
          }

          *(DerivedStorage + 40) = 0;
          CMSampleBufferGetOutputPresentationTimeStamp(&destination, a2);
          *(DerivedStorage + 48) = destination;
          SampleAttachmentsArray = CMSampleBufferGetSampleAttachmentsArray(a2, 0);
          LOBYTE(destination.value) = 0;
          if (SampleAttachmentsArray && (v111 = SampleAttachmentsArray, CFArrayGetCount(SampleAttachmentsArray) >= 1))
          {
            CFArrayGetValueAtIndex(v111, 0);
            FigCFDictionaryGetBooleanIfPresent();
            v112 = destination.value;
          }

          else
          {
            v112 = 0;
          }

          *(DerivedStorage + 72) = v112;
          v113 = CMSampleBufferGetSampleAttachmentsArray(a2, 0);
          LOBYTE(destination.value) = 0;
          if (v113 && (v114 = v113, CFArrayGetCount(v113) >= 1))
          {
            CFArrayGetValueAtIndex(v114, 0);
            FigCFDictionaryGetBooleanIfPresent();
            v115 = destination.value;
          }

          else
          {
            v115 = 0;
          }

          v19 = 0;
          *(DerivedStorage + 73) = v115;
        }

LABEL_186:
        if (!v21)
        {
          return v19;
        }

        goto LABEL_189;
    }

LABEL_75:
    v19 = Contiguous;
    goto LABEL_175;
  }

  return v19;
}

uint64_t createBBufFromCCData(uint64_t a1, uint64_t a2, int a3, CMBlockBufferRef *a4)
{
  v6 = a2;
  v8 = *MEMORY[0x1E695E488];
  v9 = 2 * a2;
  v10 = MEMORY[0x19A8CC720](*MEMORY[0x1E695E488], 2 * a2, 0x100004077774924, 0);
  if (!v10)
  {
    return 12;
  }

  v11 = v10;
  if (v6 < 1)
  {
    goto LABEL_14;
  }

  v12 = 0;
  v13 = (a1 + 2);
  do
  {
    v14 = *(v13 - 2);
    if (v14 >= 0xFC)
    {
      v15 = v14 & 3;
      v16 = v15 > 1;
      v17 = ((a3 - 3) < 2) ^ (v15 != 1);
      if (!v16 && v17 != 0)
      {
        v19 = &v10[v12];
        *v19 = *(v13 - 1);
        v19[1] = *v13;
        v12 += 2;
      }
    }

    v13 += 3;
    --v6;
  }

  while (v6);
  if (v12 < 1)
  {
LABEL_14:
    v20 = 0;
  }

  else
  {
    v20 = CMBlockBufferCreateWithMemoryBlock(*MEMORY[0x1E695E480], v10, v9, v8, 0, 0, v12, 0, a4);
    if (!v20)
    {
      return v20;
    }
  }

  CFAllocatorDeallocate(v8, v11);
  return v20;
}