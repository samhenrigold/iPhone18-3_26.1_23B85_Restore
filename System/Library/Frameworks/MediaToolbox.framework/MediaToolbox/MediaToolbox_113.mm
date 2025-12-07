uint64_t __FigHapticQueueStart_block_invoke(uint64_t a1)
{
  v2 = FigHapticEngineStart(*(*(a1 + 40) + 24));
  result = OUTLINED_FUNCTION_12_7(v2);
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    v4 = fhq_scheduleWaitingHapticPlayers(*(a1 + 40));
    return OUTLINED_FUNCTION_12_7(v4);
  }

  return result;
}

void __FigHapticQueuePause_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  dispatch_assert_queue_V2(*(v2 + 16));
  OUTLINED_FUNCTION_9_30(MEMORY[0x1E6960C68], v4, v5);
  OUTLINED_FUNCTION_2_71();
  *(&v4 + 1) = 0x40000000;
  v5 = __fhq_pauseSubmittedPlayers_block_invoke;
  v6 = &__block_descriptor_tmp_46;
  v7 = v2;
  v3 = fhq_applyBlockToSubmittedPlayers(v2, &v4);
  if (!v3)
  {
    CFArrayRemoveAllValues(*(v2 + 80));
  }

  *(*(*(a1 + 32) + 8) + 24) = v3;
}

uint64_t __FigHapticQueueStop_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  dispatch_assert_queue_V2(*(v1 + 16));
  OUTLINED_FUNCTION_9_30(MEMORY[0x1E6960C68], v4, v5);
  OUTLINED_FUNCTION_2_71();
  *(&v4 + 1) = 0x40000000;
  v5 = __fhq_removeAllPlayers_block_invoke;
  v6 = &__block_descriptor_tmp_47;
  v7 = v1;
  v2 = fhq_applyBlockToSubmittedPlayers(v1, &v4);
  if (!v2)
  {
    CFArrayRemoveAllValues(*(v1 + 80));
    v2 = CMBufferQueueReset(*(v1 + 64));
  }

  return OUTLINED_FUNCTION_12_7(v2);
}

uint64_t __FigHapticQueueEnqueueSamples_block_invoke(uint64_t a1, CMSampleBufferRef sbuf)
{
  v104 = *MEMORY[0x1E69E9840];
  v91 = 0;
  v92 = &v91;
  v93 = 0x2000000000;
  v94 = 0;
  v89.epoch = 0;
  cf = 0;
  if (*(*(a1 + 32) + 88) < 10)
  {
    v6 = 1;
  }

  else
  {
    v6 = 2;
  }

  v89.value = 0;
  *&v89.timescale = 0;
  CMSampleBufferGetOutputPresentationTimeStamp(&v89, sbuf);
  memset(&v88, 0, sizeof(v88));
  CMSampleBufferGetOutputDuration(&v88, sbuf);
  v7 = CFGetAllocator(*(a1 + 32));
  v8 = FigHapticPlayerCreate(v7, sbuf, *(*(a1 + 32) + 24), &cf);
  *(v92 + 6) = v8;
  v9 = &dword_1EAF17000;
  if (v8)
  {
    goto LABEL_17;
  }

  if (!cf)
  {
    goto LABEL_26;
  }

  FigHapticPlayerSetIsMuted(cf, *(*(a1 + 32) + 40) != 0);
  active = FigHapticPlayerSetActiveChannelIndexNow(cf, *(*(a1 + 32) + 48));
  *(v92 + 6) = active;
  if (active)
  {
    goto LABEL_17;
  }

  v11 = FigHapticPlayerSetVolumeNow(cf, *(*(a1 + 32) + 56));
  *(v92 + 6) = v11;
  if (v11)
  {
    goto LABEL_17;
  }

  v12 = *(a1 + 32);
  v13 = *(v12 + 16);
  block = MEMORY[0x1E69E9820];
  v82 = 0x40000000;
  v83 = __FigHapticQueueEnqueueSamples_block_invoke_2;
  v84 = &unk_1E7485B68;
  v85 = &v91;
  v86 = v12;
  v87 = cf;
  dispatch_sync(v13, &block);
  v14 = *(v92 + 6);
  if (!v14 && v6 <= dword_1EAF17040)
  {
    OUTLINED_FUNCTION_12_26();
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    OUTLINED_FUNCTION_465(os_log_and_send_and_compose_flags_and_os_log_type, v16, v17, v18, v19, v20, v21, v22, p_lhs, v77, rhs.value, *&rhs.timescale, rhs.epoch, v80, SBYTE2(v80), BYTE3(v80), SHIDWORD(v80));
    OUTLINED_FUNCTION_121();
    if (v24)
    {
      v25 = v23;
    }

    else
    {
      v25 = v2;
    }

    if (v25)
    {
      v26 = *(a1 + 32);
      v27 = cf;
      v28 = *(v26 + 88);
      time = v89;
      CMTimeGetSeconds(&time);
      OUTLINED_FUNCTION_6_47(v29, v30, v31, v32, v33, v34, v35, v36, p_lhs, v77, rhs.value, *&rhs.timescale, rhs.epoch, v80, block, v82, v83, v84, v85, v86, v87, *&v88.value);
      CMTimeAdd(&time, &lhs, &rhs);
      Seconds = CMTimeGetSeconds(&time);
      LODWORD(lhs.value) = 136316674;
      *(&lhs.value + 4) = "FigHapticQueueEnqueueSamples_block_invoke";
      LOWORD(lhs.flags) = 2112;
      *(&lhs.flags + 2) = v26;
      HIWORD(lhs.epoch) = 2112;
      v96 = v27;
      v97 = 2048;
      v98 = sbuf;
      v99 = 1024;
      *v100 = v28;
      *&v100[4] = 2048;
      *&v100[6] = v3;
      v101 = 2048;
      v102 = Seconds;
      LODWORD(v77) = 68;
      p_lhs = &lhs;
      v9 = &dword_1EAF17000;
      OUTLINED_FUNCTION_18_3(v25, v38, &time, v39, &dword_1962D5000, v40, v41, "<<< FigHapticQueue >>> %s: %@ player:%@ sbuf:%p enqueued #%d from %1.3f to %1.3f");
      v2 = HIDWORD(v80);
    }

    OUTLINED_FUNCTION_7();
    OUTLINED_FUNCTION_414(v42, v43, v44, v45, v46);
    v14 = *(v92 + 6);
  }

  if (v14)
  {
LABEL_17:
    OUTLINED_FUNCTION_12_26();
    v47 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    OUTLINED_FUNCTION_465(v47, v48, v49, v50, v51, v52, v53, v54, p_lhs, v77, rhs.value, *&rhs.timescale, rhs.epoch, v80, SBYTE2(v80), BYTE3(v80), SHIDWORD(v80));
    OUTLINED_FUNCTION_121();
    if (v24)
    {
      v56 = v55;
    }

    else
    {
      v56 = v2;
    }

    if (v56)
    {
      v57 = *(a1 + 32);
      time = v89;
      CMTimeGetSeconds(&time);
      OUTLINED_FUNCTION_6_47(v58, v59, v60, v61, v62, v63, v64, v65, v76, v78, rhs.value, *&rhs.timescale, rhs.epoch, v80, block, v82, v83, v84, v85, v86, v87, *&v88.value);
      CMTimeAdd(&time, &lhs, &rhs);
      v66 = CMTimeGetSeconds(&time);
      v67 = *(v92 + 6);
      LODWORD(lhs.value) = 136316418;
      *(&lhs.value + 4) = "FigHapticQueueEnqueueSamples_block_invoke";
      LOWORD(lhs.flags) = 2112;
      *(&lhs.flags + 2) = v57;
      HIWORD(lhs.epoch) = 2048;
      v96 = sbuf;
      v97 = 2048;
      v98 = v3;
      v99 = 2048;
      *v100 = v66;
      *&v100[8] = 1024;
      *&v100[10] = v67;
      v72 = OUTLINED_FUNCTION_18_3(v56, v68, &time, v69, &dword_1962D5000, v70, v71, "<<< FigHapticQueue >>> %s: %@ sbuf:%p failed to enqueue from %1.3f to %1.3f with error: %d");
    }

    else
    {
      v72 = 0;
    }

    OUTLINED_FUNCTION_414(*(v9 + 7), 0, 1, v72, v72 != &time);
  }

  if (cf)
  {
    CFRelease(cf);
  }

LABEL_26:
  v73 = *(v92 + 6);
  _Block_object_dispose(&v91, 8);
  return v73;
}

uint64_t fhq_scheduleHapticPlayer(uint64_t a1, const void *a2, BOOL *a3)
{
  v304 = *MEMORY[0x1E69E9840];
  dispatch_assert_queue_V2(*(a1 + 16));
  Rate = CMTimebaseGetRate(*(a1 + 32));
  if (Rate <= 0.0)
  {
    goto LABEL_15;
  }

  v8 = Rate;
  memset(&v294, 0, sizeof(v294));
  HostTimeClock = CMClockGetHostTimeClock();
  CMSyncGetTime(&v294, HostTimeClock);
  memset(&v293, 0, sizeof(v293));
  v10 = CMClockGetHostTimeClock();
  v11 = *(a1 + 32);
  time[0].start = v294;
  CMSyncConvertTime(&v293, &time[0].start, v10, v11);
  memset(&v292, 0, sizeof(v292));
  FigHapticPlayerGetOutputTimeRange(a2, &v292);
  OUTLINED_FUNCTION_7_35(v12, v13, v14, v15, v16, v17, v18, v19, v243, v261, v279.value, *&v279.timescale, v279.epoch, v280, rhs.value, *&rhs.timescale, rhs.epoch, v282, type.value, *&type.timescale, type.epoch, v284, time1.value, *&time1.timescale, time1.epoch, v286, *(&v286 + 1), v287, 0, 0, 0, v289, 0, 0, 0, v291, v292.start.value, *&v292.start.timescale, v292.start.epoch, v292.duration.value, *&v292.duration.timescale, v292.duration.epoch, *&v293.value);
  OUTLINED_FUNCTION_17_19(v20, v21, v22, v23, v24, v25, v26, v27, v244, v262, v279.value, *&v279.timescale, v279.epoch, v280, rhs.value, *&rhs.timescale, rhs.epoch, v282, type.value, *&type.timescale, type.epoch, v284, time1.value, *&time1.timescale, time1.epoch, v286, *(&v286 + 1), v287, v288.value, *&v288.timescale, v288.epoch, v289, v290.value, *&v290.timescale, v290.epoch, v291, *&v292.start.value);
  v36 = OUTLINED_FUNCTION_11_29(v28, v29, v30, v31, v32, v33, v34, v35, v245, v263, v279.value, *&v279.timescale, v279.epoch, v280, rhs.value, *&rhs.timescale, rhs.epoch, v282, type.value, *&type.timescale, type.epoch, v284, time1.value, *&time1.timescale, time1.epoch, v286, *(&v286 + 1), v287, v288.value, *&v288.timescale, v288.epoch, v289, v290.value, *&v290.timescale, v290.epoch, v291, v292.start.value, *&v292.start.timescale, v292.start.epoch, v292.duration.value, *&v292.duration.timescale, v292.duration.epoch, v293.value, *&v293.timescale, v293.epoch, v294.value, *&v294.timescale, v294.epoch, v295.value, *&v295.timescale, v295.epoch, v296, v297, v298, *v299, *&v299[8], *&v299[16], *&v299[24], v300, v301, *(&v301 + 1), v302, time[0].start.value);
  v38 = CMTimeCompare(v36, v37);
  if ((v38 & 0x80000000) == 0)
  {
    *&time[0].start.timescale = *&v292.start.timescale;
    *&time[0].start.epoch = *&v292.start.epoch;
    *&time[0].duration.timescale = *&v292.duration.timescale;
    v46 = OUTLINED_FUNCTION_11_29(v38, v39, v40, v41, v42, v43, v44, v45, v246, v264, v279.value, *&v279.timescale, v279.epoch, v280, rhs.value, *&rhs.timescale, rhs.epoch, v282, type.value, *&type.timescale, type.epoch, v284, time1.value, *&time1.timescale, time1.epoch, v286, *(&v286 + 1), v287, v288.value, *&v288.timescale, v288.epoch, v289, v290.value, *&v290.timescale, v290.epoch, v291, v292.start.value, *&v292.start.timescale, v292.start.epoch, v292.duration.value, *&v292.duration.timescale, v292.duration.epoch, v293.value, *&v293.timescale, v293.epoch, v294.value, *&v294.timescale, v294.epoch, v293.value, *&v293.timescale, v293.epoch, v296, v297, v298, *v299, *&v299[8], *&v299[16], *&v299[24], v300, v301, *(&v301 + 1), v302, v292.start.value);
    v48 = CMTimeRangeContainsTime(v46, v47);
    if (v48)
    {
      OUTLINED_FUNCTION_7_35(v48, v49, v50, v51, v52, v53, v54, v55, v247, v265, v279.value, *&v279.timescale, v279.epoch, v280, rhs.value, *&rhs.timescale, rhs.epoch, v282, type.value, *&type.timescale, type.epoch, v284, time1.value, *&time1.timescale, time1.epoch, v286, *(&v286 + 1), v287, v294.value, *&v294.timescale, v294.epoch, v289, v290.value, *&v290.timescale, v290.epoch, v291, v292.start.value, *&v292.start.timescale, v292.start.epoch, v292.duration.value, *&v292.duration.timescale, v292.duration.epoch, *&v293.value);
      OUTLINED_FUNCTION_17_19(v56, v57, v58, v59, v60, v61, v62, v63, v248, v266, v279.value, *&v279.timescale, v279.epoch, v280, rhs.value, *&rhs.timescale, rhs.epoch, v282, type.value, *&type.timescale, type.epoch, v284, time1.value, *&time1.timescale, time1.epoch, v286, *(&v286 + 1), v287, v288.value, *&v288.timescale, v288.epoch, v289, v290.value, *&v290.timescale, v290.epoch, v291, *&v292.start.value);
      v72 = OUTLINED_FUNCTION_11_29(v64, v65, v66, v67, v68, v69, v70, v71, v249, v267, v279.value, *&v279.timescale, v279.epoch, v280, rhs.value, *&rhs.timescale, rhs.epoch, v282, type.value, *&type.timescale, type.epoch, v284, time1.value, *&time1.timescale, time1.epoch, v286, *(&v286 + 1), v287, v288.value, *&v288.timescale, v288.epoch, v289, v290.value, *&v290.timescale, v290.epoch, v291, v292.start.value, *&v292.start.timescale, v292.start.epoch, v292.duration.value, *&v292.duration.timescale, v292.duration.epoch, v293.value, *&v293.timescale, v293.epoch, v294.value, *&v294.timescale, v294.epoch, v295.value, *&v295.timescale, v295.epoch, v296, v297, v298, *v299, *&v299[8], *&v299[16], *&v299[24], v300, v301, *(&v301 + 1), v302, time[0].start.value);
      v75 = CMTimeSubtract(v74, v72, v73);
      goto LABEL_6;
    }

LABEL_15:
    v157 = 0;
    started = 0;
    if (!a3)
    {
      return started;
    }

    goto LABEL_36;
  }

  v83 = *(a1 + 32);
  v84 = CMClockGetHostTimeClock();
  OUTLINED_FUNCTION_16_20(v84, v85, v84, v86, v87, v88, v89, v90, v246, v264, v279.value, *&v279.timescale, v279.epoch, v280, rhs.value, *&rhs.timescale, rhs.epoch, v282, type.value, *&type.timescale, type.epoch, v284, time1.value, *&time1.timescale, time1.epoch, v286, *(&v286 + 1), v287, v288.value, *&v288.timescale, v288.epoch, v289, v290.value, *&v290.timescale, v290.epoch, v291, *&v292.start.value);
  v75 = CMSyncConvertTime(&v288, &time[0].start, v83, v91);
  v290 = **&MEMORY[0x1E6960CC0];
LABEL_6:
  OUTLINED_FUNCTION_5_52(v75, v76, v77, v78, v79, v80, v81, v82, v250, v268, v279.value, *&v279.timescale, v279.epoch, v280, rhs.value, *&rhs.timescale, rhs.epoch, v282, type.value, *&type.timescale, type.epoch, v284, time1.value, *&time1.timescale, time1.epoch, 0, 0, 0, *&v288.value);
  v100 = OUTLINED_FUNCTION_11_29(v92, v93, v94, v95, v96, v97, v98, v99, v251, v269, v279.value, *&v279.timescale, v279.epoch, v280, rhs.value, *&rhs.timescale, rhs.epoch, v282, type.value, *&type.timescale, type.epoch, v284, time1.value, *&time1.timescale, time1.epoch, v286, *(&v286 + 1), v287, v288.value, *&v288.timescale, v288.epoch, v289, v290.value, *&v290.timescale, v290.epoch, v291, v292.start.value, *&v292.start.timescale, v292.start.epoch, v292.duration.value, *&v292.duration.timescale, v292.duration.epoch, v293.value, *&v293.timescale, v293.epoch, v294.value, *&v294.timescale, v294.epoch, v294.value, *&v294.timescale, v294.epoch, v296, v297, v298, *v299, *&v299[8], *&v299[16], *&v299[24], v300, v301, *(&v301 + 1), v302, time[0].start.value);
  v103 = CMTimeSubtract(v102, v100, v101);
  v111 = *(a1 + 88);
  if (v111 < 10)
  {
    v112 = 1;
  }

  else
  {
    v112 = 2;
  }

  *(a1 + 88) = v111 + 1;
  if (v112 <= dword_1EAF17040)
  {
    v113 = OUTLINED_FUNCTION_1_73(v103, v104, v105, v106, v107, v108, v109, v110, v252, v270, v279.value, *&v279.timescale, v279.epoch, v280, rhs.value, *&rhs.timescale, rhs.epoch, v282, type.value, *&type.timescale, type.epoch, v284, time1.value);
    v114 = os_log_type_enabled(v113, type.value);
    if (v114)
    {
      value_low = LODWORD(time1.value);
    }

    else
    {
      value_low = time1.value & 0xFFFFFFFE;
    }

    if (value_low)
    {
      v122 = *(a1 + 88);
      OUTLINED_FUNCTION_16_20(v114, v115, v116, v117, v118, v119, v120, v121, v252, v270, v279.value, *&v279.timescale, v279.epoch, v280, rhs.value, *&rhs.timescale, rhs.epoch, v282, type.value, *&type.timescale, type.epoch, v284, time1.value, *&time1.timescale, time1.epoch, v286, *(&v286 + 1), v287, v288.value, *&v288.timescale, v288.epoch, v289, v290.value, *&v290.timescale, v290.epoch, v291, *&v292.start.value);
      Seconds = CMTimeGetSeconds(&time[0].start);
      time[0] = v292;
      CMTimeRangeGetEnd(&v295, time);
      v124 = CMTimeGetSeconds(&v295);
      OUTLINED_FUNCTION_5_52(v125, v126, v127, v128, v129, v130, v131, v132, v253, v271, v279.value, *&v279.timescale, v279.epoch, v280, rhs.value, *&rhs.timescale, rhs.epoch, v282, type.value, *&type.timescale, type.epoch, v284, time1.value, *&time1.timescale, time1.epoch, v286, *(&v286 + 1), v287, *&v288.value);
      v133 = CMTimeGetSeconds(&time[0].start);
      OUTLINED_FUNCTION_13_21(v134, v135, v136, v137, v138, v139, v140, v141, v254, v272, v279.value, *&v279.timescale, v279.epoch, v280, rhs.value, *&rhs.timescale, rhs.epoch, v282, type.value, *&type.timescale, type.epoch, v284, time1.value, *&time1.timescale, time1.epoch, v286);
      v142 = CMTimeGetSeconds(&time[0].start) * 1000.0;
      OUTLINED_FUNCTION_7_35(v143, v144, v145, v146, v147, v148, v149, v150, v255, v273, v279.value, *&v279.timescale, v279.epoch, v280, rhs.value, *&rhs.timescale, rhs.epoch, v282, type.value, *&type.timescale, type.epoch, v284, time1.value, *&time1.timescale, time1.epoch, v286, *(&v286 + 1), v287, v288.value, *&v288.timescale, v288.epoch, v289, v290.value, *&v290.timescale, v290.epoch, v291, v292.start.value, *&v292.start.timescale, v292.start.epoch, v292.duration.value, *&v292.duration.timescale, v292.duration.epoch, *&v293.value);
      v151 = CMTimeGetSeconds(&time[0].start);
      time[0].start = v290;
      v152 = CMTimeGetSeconds(&time[0].start);
      LODWORD(v295.value) = 136317442;
      *(&v295.value + 4) = "fhq_scheduleHapticPlayer";
      LOWORD(v295.flags) = 2112;
      *(&v295.flags + 2) = a1;
      HIWORD(v295.epoch) = 2112;
      v296 = a2;
      LOWORD(v297) = 1024;
      *(&v297 + 2) = v122;
      HIWORD(v297) = 2048;
      v298 = *&Seconds;
      *v299 = 2048;
      *&v299[2] = v124;
      *&v299[10] = 2048;
      *&v299[12] = v133;
      *&v299[20] = 2048;
      *&v299[22] = v142;
      *&v299[30] = 2048;
      v300 = *&v151;
      LOWORD(v301) = 2048;
      *(&v301 + 2) = v152 * 1000.0;
      LODWORD(v270) = 98;
      v252 = &v295;
      OUTLINED_FUNCTION_7_1(value_low, v153, time, v154, &dword_1962D5000, v155, v156, "<<< FigHapticQueue >>> %s: %@ player:%@ enqueued #%d from %1.3f to %1.3f; start time: %.3f (in %+.3fms); media time: %.3f (%+.3fms)");
    }

    OUTLINED_FUNCTION_7();
    v103 = fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  OUTLINED_FUNCTION_13_21(v103, v104, v105, v106, v107, v108, v109, v110, v252, v270, v279.value, *&v279.timescale, v279.epoch, v280, rhs.value, *&rhs.timescale, rhs.epoch, v282, type.value, *&type.timescale, type.epoch, v284, time1.value, *&time1.timescale, time1.epoch, v286);
  v167 = OUTLINED_FUNCTION_11_29(v159, v160, v161, v162, v163, v164, v165, v166, v256, v274, v279.value, *&v279.timescale, v279.epoch, v280, rhs.value, *&rhs.timescale, rhs.epoch, v282, type.value, *&type.timescale, type.epoch, v284, time1.value, *&time1.timescale, time1.epoch, v286, *(&v286 + 1), v287, v288.value, *&v288.timescale, v288.epoch, v289, v290.value, *&v290.timescale, v290.epoch, v291, v292.start.value, *&v292.start.timescale, v292.start.epoch, v292.duration.value, *&v292.duration.timescale, v292.duration.epoch, v293.value, *&v293.timescale, v293.epoch, v294.value, *&v294.timescale, v294.epoch, kFigHapticQueue_HowFarIntoTheFutureToSubmit, *(&kFigHapticQueue_HowFarIntoTheFutureToSubmit + 1), 0, v296, v297, v298, *v299, *&v299[8], *&v299[16], *&v299[24], v300, v301, *(&v301 + 1), v302, time[0].start.value);
  v169 = CMTimeCompare(v167, v168);
  if (v169 <= 0)
  {
    if (dword_1EAF17040 >= 2)
    {
      v193 = OUTLINED_FUNCTION_1_73(v169, v170, v171, v172, v173, v174, v175, v176, v257, v275, v279.value, *&v279.timescale, v279.epoch, v280, rhs.value, *&rhs.timescale, rhs.epoch, v282, type.value, *&type.timescale, type.epoch, v284, time1.value);
      OUTLINED_FUNCTION_19_22(v193, v194, v195, v196, v197, v198, v199, v200, v259, v277, v279.value, *&v279.timescale, v279.epoch, v280, rhs.value, *&rhs.timescale, rhs.epoch, v282, type.value, *&type.timescale, type.epoch, v284, time1.value);
      OUTLINED_FUNCTION_121();
      if (v186)
      {
        v202 = v201;
      }

      else
      {
        v202 = value_low;
      }

      if (v202)
      {
        LODWORD(v295.value) = 136315650;
        OUTLINED_FUNCTION_4_58("fhq_scheduleHapticPlayer");
        OUTLINED_FUNCTION_7_1(v203, v204, time, v205, &dword_1962D5000, v206, v207, "<<< FigHapticQueue >>> %s: FigHapticQueue:%p starting playback of FigHapticPlayer:%p");
      }

      OUTLINED_FUNCTION_7();
      OUTLINED_FUNCTION_414(v230, v231, v232, v233, v234);
    }

    FigHapticPlayerSetPlaybackRate(a2, v8);
    OUTLINED_FUNCTION_5_52(*(a1 + 24), v235, v236, v237, v238, v239, v240, v241, v257, v275, v279.value, *&v279.timescale, v279.epoch, v280, rhs.value, *&rhs.timescale, rhs.epoch, v282, type.value, *&type.timescale, type.epoch, v284, time1.value, *&time1.timescale, time1.epoch, v286, *(&v286 + 1), v287, *&v288.value);
    v295 = v290;
    started = FigHapticEngineStartPlayerAtHostTimeWithOffset(v242, a2, &time[0].start.value, &v295.value);
    if (!started)
    {
      CFArrayAppendValue(*(a1 + 80), a2);
    }

    v157 = 0;
    if (a3)
    {
      goto LABEL_36;
    }
  }

  else
  {
    if (dword_1EAF17040 >= 2)
    {
      v177 = OUTLINED_FUNCTION_1_73(v169, v170, v171, v172, v173, v174, v175, v176, v257, v275, v279.value, *&v279.timescale, v279.epoch, v280, rhs.value, *&rhs.timescale, rhs.epoch, v282, type.value, *&type.timescale, type.epoch, v284, time1.value);
      OUTLINED_FUNCTION_19_22(v177, v178, v179, v180, v181, v182, v183, v184, v258, v276, v279.value, *&v279.timescale, v279.epoch, v280, rhs.value, *&rhs.timescale, rhs.epoch, v282, type.value, *&type.timescale, type.epoch, v284, time1.value);
      OUTLINED_FUNCTION_121();
      if (v186)
      {
        v187 = v185;
      }

      else
      {
        v187 = value_low;
      }

      if (v187)
      {
        LODWORD(v295.value) = 136315650;
        OUTLINED_FUNCTION_4_58("fhq_scheduleHapticPlayer");
        OUTLINED_FUNCTION_7_1(v188, v189, time, v190, &dword_1962D5000, v191, v192, "<<< FigHapticQueue >>> %s: FigHapticQueue:%p deferring playback of FigHapticPlayer:%p");
      }

      OUTLINED_FUNCTION_7();
      OUTLINED_FUNCTION_414(v208, v209, v210, v211, v212);
    }

    memset(time, 0, 24);
    CMBufferQueueGetFirstPresentationTimeStamp(&time[0].start, *(a1 + 64));
    started = CMBufferQueueEnqueue(*(a1 + 64), a2);
    v157 = started == 0;
    if (!started)
    {
      memset(&v295, 0, sizeof(v295));
      FirstPresentationTimeStamp = CMBufferQueueGetFirstPresentationTimeStamp(&v295, *(a1 + 64));
      OUTLINED_FUNCTION_15_23(FirstPresentationTimeStamp, v214, v215, v216, v217, v218, v219, v220, v257, v275, v279.value, *&v279.timescale, v279.epoch, v280, rhs.value, *&rhs.timescale, rhs.epoch, v282, type.value, *&type.timescale, type.epoch, v284, time[0].start.value, *&time[0].start.timescale, time[0].start.epoch, v286, *(&v286 + 1), v287, v288.value, *&v288.timescale, v288.epoch, v289, v290.value, *&v290.timescale, v290.epoch, v291, v292.start.value, *&v292.start.timescale, v292.start.epoch, v292.duration.value, *&v292.duration.timescale, v292.duration.epoch, v293.value, *&v293.timescale, v293.epoch, v294.value, *&v294.timescale, v294.epoch, *&v295.value);
      v221 = CMTimeCompare(&time1, &type);
      if (v221)
      {
        OUTLINED_FUNCTION_15_23(v221, v222, v223, v224, v225, v226, v227, v228, v260, v278, v279.value, *&v279.timescale, v279.epoch, v280, rhs.value, *&rhs.timescale, rhs.epoch, v282, type.value, *&type.timescale, type.epoch, v284, 0, 0, 0, v286, *(&v286 + 1), v287, v288.value, *&v288.timescale, v288.epoch, v289, v290.value, *&v290.timescale, v290.epoch, v291, v292.start.value, *&v292.start.timescale, v292.start.epoch, v292.duration.value, *&v292.duration.timescale, v292.duration.epoch, v293.value, *&v293.timescale, v293.epoch, v294.value, *&v294.timescale, v294.epoch, *&v295.value);
        rhs = v293;
        CMTimeSubtract(&time1, &type, &rhs);
        memset(&type, 0, sizeof(type));
        rhs = time1;
        *&v279.value = kFigHapticQueue_HowEarlyToWakeup;
        v279.epoch = 0;
        CMTimeSubtract(&type, &rhs, &v279);
        rhs = type;
        fhq_rescheduleWaitingPlayersAfterTime(a1, &rhs);
      }
    }

    if (a3)
    {
LABEL_36:
      *a3 = v157;
    }
  }

  return started;
}

uint64_t FigQuickTimeMetadataHasKey(const void *a1, const __CFString *a2, void *a3)
{
  values[1] = *MEMORY[0x1E69E9840];
  v17 = 0;
  theArray = 0;
  cf = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!DerivedStorage || !a3 || !a2 || (v7 = DerivedStorage, CFStringGetLength(a2) != 4))
  {
    OUTLINED_FUNCTION_239();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
LABEL_20:
    v14 = 0;
    goto LABEL_21;
  }

  if (metadataCreateNativeKeySpaceAndKeys(a2, a3, &v17, &theArray))
  {
    goto LABEL_20;
  }

  v8 = theArray;
  if (!CFArrayGetCount(theArray))
  {
    goto LABEL_20;
  }

  Count = CFArrayGetCount(v8);
  if (!Count)
  {
    goto LABEL_20;
  }

  v10 = Count;
  v11 = 0;
  v12 = v17;
  while (1)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(v8, v11);
    if (cf)
    {
      CFRelease(cf);
      cf = 0;
    }

    if (!FigQuickTimeMetadataCopyKeyPosSet(a1, v12, ValueAtIndex, &cf) && CFSetGetCount(cf) == 1)
    {
      CFSetGetValues(cf, values);
      if (FigQuickTimeMetadataIsKeyPosInUse(v7, values[0], 0))
      {
        break;
      }
    }

    if (v10 == ++v11)
    {
      v14 = 0;
      goto LABEL_17;
    }
  }

  v14 = 1;
LABEL_17:
  if (cf)
  {
    CFRelease(cf);
  }

LABEL_21:
  if (v17)
  {
    CFRelease(v17);
  }

  if (theArray)
  {
    CFRelease(theArray);
  }

  return v14;
}

uint64_t FigQuickTimeMetadataGetKeyCount(uint64_t a1, const __CFString *a2)
{
  v14 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!DerivedStorage)
  {
    goto LABEL_27;
  }

  v4 = DerivedStorage;
  if (a2)
  {
    if (CFStringGetLength(a2) == 4 && !CFEqual(a2, @"comn"))
    {
      v5 = FigQuickTimeMetadataStringToOSType(a2);
      goto LABEL_7;
    }

LABEL_27:
    OUTLINED_FUNCTION_239();
    v6 = 0;
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
    if (!v13)
    {
      return v6;
    }

    return 0;
  }

  v5 = 0;
LABEL_7:
  OUTLINED_FUNCTION_11_30();
  if (!*(v4 + 48))
  {
    inited = FigQuickTimeMetadataInitKeyListAtomStreamAndEntryCount(v4, v15, &v14);
    v6 = 0;
    v16 = inited;
    if (inited || !v14)
    {
LABEL_25:
      if (!inited)
      {
        return v6;
      }
    }

    else
    {
      v6 = 0;
      v10 = 1;
      while (1)
      {
        v16 = OUTLINED_FUNCTION_14_23(inited, v9);
        if (v16)
        {
          break;
        }

        if (!a2 || HIDWORD(v14) == v5)
        {
          IsKeyPosInUse = FigQuickTimeMetadataIsKeyPosInUse(v4, v10, &v16);
          if (v16)
          {
            return 0;
          }

          v6 += IsKeyPosInUse;
        }

        inited = FigAtomStreamAdvanceToNextAtom();
        if (inited == -12890)
        {
          LODWORD(inited) = v16;
LABEL_24:
          *(v4 + 48) = 1;
          *(v4 + 40) = v6;
          goto LABEL_25;
        }

        v16 = inited;
        if (!inited && v10++ <= v14)
        {
          continue;
        }

        goto LABEL_24;
      }
    }

    return 0;
  }

  return *(v4 + 40);
}

uint64_t FigQuickTimeMetadataCopyKeyAtIndex(uint64_t a1, const __CFString *a2, uint64_t a3, const __CFAllocator *a4, CFTypeRef *a5)
{
  memset(v26, 0, sizeof(v26));
  v24 = 0;
  v25 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!DerivedStorage || !a5)
  {
    goto LABEL_32;
  }

  v10 = DerivedStorage;
  if (a2)
  {
    if (CFStringGetLength(a2) == 4 && !CFEqual(a2, @"comn"))
    {
      v11 = FigQuickTimeMetadataStringToOSType(a2);
      goto LABEL_7;
    }

LABEL_32:
    OUTLINED_FUNCTION_376();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
    goto LABEL_33;
  }

  v11 = 0;
LABEL_7:
  v27[0] = FigQuickTimeMetadataInitKeyListAtomStreamAndEntryCount(v10, v26, &v24 + 1);
  if (v27[0])
  {
    return v27[0];
  }

  if (HIDWORD(v24) <= a3)
  {
LABEL_27:
    OUTLINED_FUNCTION_376();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
LABEL_33:
    v27[0] = v22;
    return v27[0];
  }

  v12 = 0;
  v13 = 1;
  while (1)
  {
    v27[0] = FigAtomStreamGetCurrentAtomTypeAndDataLength();
    if (v27[0])
    {
      return v27[0];
    }

    if (!a2 || v24 == v11)
    {
      IsKeyPosInUse = FigQuickTimeMetadataIsKeyPosInUse(v10, v13, v27);
      if (v27[0])
      {
        return v27[0];
      }

      if (IsKeyPosInUse)
      {
        if (v12 == a3)
        {
          if (v25 < 1)
          {
            *a5 = CFRetain(&stru_1F0B1AFB8);
            return v27[0];
          }

          OUTLINED_FUNCTION_613();
          v27[0] = FigAtomStreamReadCurrentAtomDataAndCreateBBuf();
          if (v27[0])
          {
            return v27[0];
          }

          OUTLINED_FUNCTION_613();
          v27[0] = CMBlockBufferGetDataPointer(v17, v18, v19, 0, v20);
          if (v27[0])
          {
            return v27[0];
          }

          v21 = OUTLINED_FUNCTION_9_29(a4, 0, v25);
          *a5 = v21;
          if (v21)
          {
            return v27[0];
          }

          goto LABEL_27;
        }

        ++v12;
      }
    }

    Atom = FigAtomStreamAdvanceToNextAtom();
    if (Atom != -12890)
    {
      v27[0] = Atom;
      if (!Atom && v13++ <= HIDWORD(v24))
      {
        continue;
      }
    }

    return v27[0];
  }
}

uint64_t FigQuickTimeMetadataGetItemCount(const void *a1, const __CFString *a2, void *a3)
{
  v24 = 0;
  v25[0] = 0;
  v23 = 0;
  memset(v22, 0, sizeof(v22));
  memset(&value[4], 0, 112);
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!DerivedStorage)
  {
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v19, v20, *&value[4]);
    goto LABEL_22;
  }

  v7 = DerivedStorage;
  if (*(DerivedStorage + 32) < 1 || metadataCreateNativeKeySpaceAndKeys(a2, a3, &v24, v25))
  {
    goto LABEL_22;
  }

  v8 = v25[0];
  v9 = 0;
  if (!CFArrayGetCount(v25[0]) || !v8)
  {
    goto LABEL_23;
  }

  Count = CFArrayGetCount(v8);
  if (!Count)
  {
LABEL_22:
    v9 = 0;
    goto LABEL_23;
  }

  v11 = Count;
  v12 = 0;
  v9 = 0;
  v13 = *MEMORY[0x1E695E738];
  v14 = v24;
  while (1)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(v8, v12);
    if (CFEqual(ValueAtIndex, v13))
    {
      ValueAtIndex = 0;
    }

    if (v23)
    {
      CFRelease(v23);
      v23 = 0;
    }

    if (!FigQuickTimeMetadataCopyKeyPosSet(a1, v14, ValueAtIndex, &v23))
    {
      break;
    }

LABEL_13:
    if (++v12 == v11)
    {
      goto LABEL_23;
    }
  }

  ItemListAtomStream = FigQuickTimeMetadataGetItemListAtomStream(v7, v22, &value[4]);
  if (!ItemListAtomStream)
  {
    while (!OUTLINED_FUNCTION_14_23(ItemListAtomStream, v17))
    {
      if (CFSetContainsValue(v23, 0))
      {
        ++v9;
      }

      ItemListAtomStream = FigAtomStreamAdvanceToNextAtom();
      if (ItemListAtomStream)
      {
        goto LABEL_13;
      }
    }
  }

LABEL_23:
  if (v23)
  {
    CFRelease(v23);
  }

  if (v24)
  {
    CFRelease(v24);
  }

  if (v25[0])
  {
    CFRelease(v25[0]);
  }

  return v9;
}

unint64_t FigQuickTimeMetadataCopyItemWithKeyAndIndex(const void *a1, const __CFString *a2, void *a3, CFLocaleRef a4, const __CFAllocator *a5, CFTypeRef *a6, uint64_t a7)
{
  theArray = 0;
  v152 = 0;
  cf = 0;
  memset(v150, 0, sizeof(v150));
  memset(&v149[1] + 4, 0, 116);
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v149[0] = 0;
  if (!DerivedStorage)
  {
    goto LABEL_311;
  }

  if (!(a6 | a7))
  {
    OUTLINED_FUNCTION_10_29();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v129, v130, v131);
    goto LABEL_310;
  }

  v16 = DerivedStorage;
  if (*(DerivedStorage + 32) <= 0)
  {
LABEL_311:
    OUTLINED_FUNCTION_10_29();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
    i = v126;
    Count = 0;
    v27 = 0;
    Mutable = 0;
    if (v126)
    {
      goto LABEL_315;
    }

    goto LABEL_298;
  }

  ItemListAtomStream = metadataCreateNativeKeySpaceAndKeys(a2, a3, &v152, &theArray);
  if (ItemListAtomStream)
  {
LABEL_310:
    i = ItemListAtomStream;
    Count = 0;
    v27 = 0;
    goto LABEL_302;
  }

  v145 = v16;
  v147 = a6;
  v18 = theArray;
  if (!CFArrayGetCount(theArray))
  {
    Count = 0;
    goto LABEL_314;
  }

  Count = CFArrayGetCount(v18);
  if (!Count)
  {
LABEL_314:
    v27 = 0;
    Mutable = 0;
    i = 4294954689;
    goto LABEL_315;
  }

  v141 = v7;
  v142 = a3;
  allocator = a5;
  v143 = a7;
  v20 = 0;
  LODWORD(i) = 0;
  v22 = 0;
  v23 = *MEMORY[0x1E695E738];
  v24 = v152;
LABEL_8:
  ValueAtIndex = CFArrayGetValueAtIndex(v18, v20);
  v148 = ValueAtIndex;
  if (CFEqual(ValueAtIndex, v23))
  {
    ValueAtIndex = 0;
  }

  if (cf)
  {
    CFRelease(cf);
    cf = 0;
  }

  if (FigQuickTimeMetadataCopyKeyPosSet(a1, v24, ValueAtIndex, &cf))
  {
    goto LABEL_13;
  }

  v144 = ValueAtIndex;
  ItemListAtomStream = FigQuickTimeMetadataGetItemListAtomStream(v145, v150, &v149[2]);
  if (ItemListAtomStream)
  {
    goto LABEL_310;
  }

  while (1)
  {
    ItemListAtomStream = FigAtomStreamGetCurrentAtomTypeAndDataLength();
    if (ItemListAtomStream)
    {
      goto LABEL_310;
    }

    if (!CFSetContainsValue(cf, HIDWORD(v149[1])))
    {
      goto LABEL_20;
    }

    if (v22 == a4)
    {
      break;
    }

    v22 = (v22 + 1);
LABEL_20:
    Atom = FigAtomStreamAdvanceToNextAtom();
    if (Atom)
    {
      if (Atom == -12890)
      {
        LODWORD(i) = 0;
      }

      else
      {
        LODWORD(i) = Atom;
      }

LABEL_13:
      if (++v20 == Count)
      {
        Count = 0;
        v27 = 0;
        Mutable = 0;
        if (i)
        {
          i = i;
        }

        else
        {
          i = 4294954689;
        }

        goto LABEL_315;
      }

      goto LABEL_8;
    }
  }

  v29 = FigAtomStreamInitWithParent();
  if (v29)
  {
    i = v29;
    goto LABEL_247;
  }

  v30 = allocator;
  i = v147;
  valuePtr = 0;
  v31 = v149;
  if (!v147)
  {
    v31 = 0;
  }

  v134 = v31;
  v161 = 0;
  *&v162[0] = 0;
  v159 = 0;
  v160 = 0;
  a7 = v143;
  if (v143)
  {
    Mutable = CFDictionaryCreateMutable(allocator, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    if (v147)
    {
      goto LABEL_32;
    }
  }

  else
  {
    Mutable = 0;
    if (v147)
    {
LABEL_32:
      v149[0] = 0;
    }
  }

  v32 = 0;
  v33 = 0;
  OUTLINED_FUNCTION_6_48();
  v140 = *v34;
  v139 = @"dataTypeNamespace";
  v138 = @"com.apple.quicktime.mdta";
  v136 = @"extendedLanguageTag";
  key = @"name";
  v35 = *MEMORY[0x1E695E480];
  v135 = @"locale";
  v133 = @"dataLength";
  while (2)
  {
    CurrentAtomTypeAndDataLength = FigAtomStreamGetCurrentAtomTypeAndDataLength();
    if (CurrentAtomTypeAndDataLength)
    {
      goto LABEL_233;
    }

    if (HIDWORD(valuePtr) == a4)
    {
      v155 = 0;
      if (*&v162[0] < 8uLL)
      {
        goto LABEL_228;
      }

      OUTLINED_FUNCTION_613();
      BBuf = FigAtomStreamReadCurrentAtomDataAndCreateBBuf();
      if (BBuf)
      {
        goto LABEL_331;
      }

      BBuf = OUTLINED_FUNCTION_3_56();
      if (BBuf)
      {
        goto LABEL_331;
      }

      v44 = v160;
      v45 = *v160;
      v46 = *(v160 + 2);
      v47 = *(v160 + 3);
      v48 = bswap32(*v160);
      LODWORD(valuePtr) = v48;
      if (!v147 || HIBYTE(v48))
      {
        if (v147)
        {
          goto LABEL_228;
        }

        goto LABEL_159;
      }

      a4 = (v160 + 8);
      v49 = *&v162[0] - 8;
      v155 = *&v162[0] - 8;
      switch(v48)
      {
        case 'A':
          if (*&v162[0] != 9)
          {
            goto LABEL_228;
          }

          SInt8 = FigCFNumberCreateSInt8();
          goto LABEL_142;
        case 'B':
          if (*&v162[0] != 10)
          {
            goto LABEL_228;
          }

          SInt8 = OUTLINED_FUNCTION_17_20();
          goto LABEL_142;
        case 'C':
          if (*&v162[0] != 12)
          {
            goto LABEL_228;
          }

          OUTLINED_FUNCTION_1_74();
          SInt8 = FigCFNumberCreateSInt32();
          goto LABEL_142;
        case 'D':
        case 'E':
        case 'I':
        case 'R':
          goto LABEL_110;
        case 'F':
          if (*&v162[0] != 16)
          {
            goto LABEL_228;
          }

          v164.x = OUTLINED_FUNCTION_2_72();
          SInt8 = CGPointCreateDictionaryRepresentation(v164);
          if (!SInt8)
          {
            goto LABEL_330;
          }

          goto LABEL_142;
        case 'G':
          if (*&v162[0] != 16)
          {
            goto LABEL_228;
          }

          v165.width = OUTLINED_FUNCTION_2_72();
          SInt8 = CGSizeCreateDictionaryRepresentation(v165);
          if (!SInt8)
          {
            goto LABEL_330;
          }

          goto LABEL_142;
        case 'H':
          if (*&v162[0] != 24)
          {
            goto LABEL_228;
          }

          v166.origin.x = COERCE_FLOAT(bswap32(*(v160 + 2)));
          v166.origin.y = COERCE_FLOAT(bswap32(*(v160 + 3)));
          v166.size.width = COERCE_FLOAT(bswap32(*(v160 + 4)));
          v166.size.height = COERCE_FLOAT(bswap32(*(v160 + 5)));
          SInt8 = CGRectCreateDictionaryRepresentation(v166);
          if (!SInt8)
          {
            goto LABEL_330;
          }

          goto LABEL_142;
        case 'J':
          if (*&v162[0] != 16)
          {
            goto LABEL_228;
          }

          OUTLINED_FUNCTION_5_53();
          SInt8 = FigCFNumberCreateSInt64();
          goto LABEL_142;
        case 'K':
          if (*&v162[0] != 9)
          {
            goto LABEL_228;
          }

          SInt8 = FigCFNumberCreateUInt8();
          goto LABEL_142;
        case 'L':
          if (*&v162[0] != 10)
          {
            goto LABEL_228;
          }

          OUTLINED_FUNCTION_12_27();
          SInt8 = FigCFNumberCreateUInt16();
          goto LABEL_142;
        case 'M':
          if (*&v162[0] != 12)
          {
            goto LABEL_228;
          }

          OUTLINED_FUNCTION_1_74();
          SInt8 = FigCFNumberCreateUInt32();
          goto LABEL_142;
        case 'N':
          if (*&v162[0] != 16)
          {
            goto LABEL_228;
          }

          OUTLINED_FUNCTION_5_53();
          SInt8 = FigCFNumberCreateUInt64();
LABEL_142:
          v149[0] = SInt8;
          goto LABEL_158;
        case 'O':
        case 'S':
          if (*&v162[0] != 80)
          {
            goto LABEL_228;
          }

          v154 = 0;
          v32 = CFArrayCreateMutable(allocator, 9, MEMORY[0x1E695E9C0]);
          if (!v32)
          {
            goto LABEL_330;
          }

          a4 = 8;
          while (1)
          {
            v154 = bswap64(*(a4 + v44));
            v50 = OUTLINED_FUNCTION_15_24();
            v52 = CFNumberCreate(v50, kCFNumberDoubleType, v51);
            if (!v52)
            {
              goto LABEL_330;
            }

            i = v52;
            CFArrayAppendValue(v32, v52);
            CFRelease(i);
            a4 = (a4 + 8);
            if (a4 == 80)
            {
              goto LABEL_156;
            }
          }

        case 'P':
        case 'Q':
          if (((v49 >> 1) & 0x7FFFFFFFFFFFFFFCLL) == v49)
          {
            goto LABEL_228;
          }

          if ((v45 != 1342177280 || v49 <= 0x17) && (v45 != 1358954496 || v49 < 0x10))
          {
            goto LABEL_228;
          }

          i = v49 >> 3;
          v32 = CFArrayCreateMutable(allocator, v49 >> 3, MEMORY[0x1E695E9C0]);
          if (!v32)
          {
            goto LABEL_330;
          }

          do
          {
            v163.x = OUTLINED_FUNCTION_2_72();
            DictionaryRepresentation = CGPointCreateDictionaryRepresentation(v163);
            if (!DictionaryRepresentation)
            {
              goto LABEL_330;
            }

            v70 = DictionaryRepresentation;
            CFArrayAppendValue(v32, DictionaryRepresentation);
            CFRelease(v70);
            LODWORD(a4) = a4 + 8;
            --i;
          }

          while (i);
LABEL_156:
          v79 = v32;
          goto LABEL_157;
        case 'T':
          if (*&v162[0] != 20)
          {
            goto LABEL_228;
          }

          v32 = CFArrayCreateMutable(allocator, 6, MEMORY[0x1E695E9C0]);
          if (!v32)
          {
            goto LABEL_330;
          }

          for (i = 0; i != 12; i += 2)
          {
            OUTLINED_FUNCTION_12_27();
            FigCFArrayAppendInt32();
          }

          goto LABEL_156;
        case 'U':
          if (v49 < 0xC)
          {
            goto LABEL_228;
          }

          v32 = CFArrayCreateMutable(allocator, 6, MEMORY[0x1E695E9C0]);
          if (!v32)
          {
            goto LABEL_330;
          }

          for (i = 0; i != 12; i += 2)
          {
            OUTLINED_FUNCTION_12_27();
            FigCFArrayAppendInt32();
          }

          if (v155 < 0xD)
          {
            goto LABEL_156;
          }

          v75 = v44[20];
          i = v75 >> 4;
          LODWORD(a4) = v75 & 0xF;
          if (i == 1 || a4 == 1)
          {
            goto LABEL_330;
          }

          FigCFArrayAppendInt32();
          FigCFArrayAppendInt32();
          v77 = i + a4;
          if (v155 < (4 * (i + a4) + 13))
          {
            goto LABEL_330;
          }

          if (v77)
          {
            i = (2 * v77);
            v78 = v44 + 21;
            do
            {
              v78 += 2;
              OUTLINED_FUNCTION_12_27();
              FigCFArrayAppendInt32();
              --i;
            }

            while (i);
          }

          goto LABEL_156;
        default:
          switch(v48)
          {
            case 0x15u:
              i = 4294954687;
              switch(*&v162[0])
              {
                case 9:
                  SInt32 = FigCFNumberCreateSInt8();
                  break;
                case 0xALL:
                  SInt32 = OUTLINED_FUNCTION_17_20();
                  break;
                case 0xCLL:
                  OUTLINED_FUNCTION_1_74();
                  SInt32 = FigCFNumberCreateSInt32();
                  break;
                case 0x10:
                  OUTLINED_FUNCTION_5_53();
                  SInt32 = FigCFNumberCreateSInt64();
                  break;
                default:
                  goto LABEL_229;
              }

              v149[0] = SInt32;
              OUTLINED_FUNCTION_6_48();
              if (!v107)
              {
                goto LABEL_330;
              }

              goto LABEL_159;
            case 0x16u:
              i = 4294954687;
              switch(*&v162[0])
              {
                case 9:
                  UInt8 = FigCFNumberCreateUInt8();
                  break;
                case 0xALL:
                  OUTLINED_FUNCTION_12_27();
                  UInt8 = FigCFNumberCreateUInt16();
                  break;
                case 0xCLL:
                  OUTLINED_FUNCTION_1_74();
                  UInt8 = FigCFNumberCreateUInt32();
                  break;
                case 0x10:
                  OUTLINED_FUNCTION_5_53();
                  UInt8 = FigCFNumberCreateUInt64();
                  break;
                default:
                  goto LABEL_229;
              }

              v149[0] = UInt8;
              OUTLINED_FUNCTION_6_48();
              if (!v108)
              {
                goto LABEL_330;
              }

              goto LABEL_159;
            case 0x17u:
              if (*&v162[0] != 12)
              {
                goto LABEL_228;
              }

              LODWORD(v154) = bswap32(*a4);
              v92 = OUTLINED_FUNCTION_15_24();
              v149[0] = CFNumberCreate(v92, kCFNumberFloat32Type, v93);
              if (!v149[0])
              {
                goto LABEL_330;
              }

              goto LABEL_158;
            case 0x18u:
              if (*&v162[0] != 16)
              {
                goto LABEL_228;
              }

              v154 = bswap64(*a4);
              v94 = OUTLINED_FUNCTION_15_24();
              v149[0] = CFNumberCreate(v94, kCFNumberFloat64Type, v95);
              if (!v149[0])
              {
                goto LABEL_330;
              }

              goto LABEL_158;
            case 0x19u:
            case 0x1Au:
            case 0x1Bu:
            case 0x1Du:
              goto LABEL_110;
            case 0x1Cu:
              BBuf = FigAtomStreamGetCurrentAtomDataGlobalOffset();
              if (BBuf)
              {
                goto LABEL_331;
              }

              FigMetadataReaderCreateForQuickTimeMetadata(allocator, *v145, v159, v149);
              OUTLINED_FUNCTION_6_48();
              if (BBuf)
              {
                goto LABEL_331;
              }

              goto LABEL_159;
            case 0x1Eu:
              if (*&v162[0] != 24)
              {
                goto LABEL_228;
              }

              LODWORD(v154) = 0;
              v33 = CFDictionaryCreateMutable(allocator, 4, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
              if (!v33)
              {
                goto LABEL_330;
              }

              for (j = 0; j != 4; ++j)
              {
                LODWORD(v154) = bswap32(*(a4 + j));
                v98 = OUTLINED_FUNCTION_15_24();
                v100 = CFNumberCreate(v98, kCFNumberSInt32Type, v99);
                if (!v100)
                {
                  goto LABEL_330;
                }

                i = v100;
                CFDictionarySetValue(v33, off_1E7485E30[j], v100);
                CFRelease(i);
              }

              v79 = v33;
LABEL_157:
              *v134 = CFRetain(v79);
              goto LABEL_158;
            default:
              if (v48 == 3)
              {
                v104 = OUTLINED_FUNCTION_16_21(BBuf, v38, v49, v39, v40, v41, v42, v43, v129, v130, v131, v132, v133, v134, v135, v136, key, v138, v139, v140, v141, v142, v143, v144, v145, allocator);
                v149[0] = CFStringCreateWithBytes(v104, v105, v106, 0, 0);
                if (v149[0])
                {
LABEL_158:
                  OUTLINED_FUNCTION_6_48();
LABEL_159:
                  if (Mutable)
                  {
                    if (v46 | v47)
                    {
                      LODWORD(v154) = 0;
                      i = bswap32(v47) >> 16;
                      v158 = 0;
                      v157 = 0;
                      if (i >= 0x100)
                      {
                        LOBYTE(v154) = (i >> 10) | 0x60;
                        BYTE1(v154) = (i >> 5) & 0x1F | 0x60;
                        BYTE2(v154) = i & 0x1F | 0x60;
                      }

                      v80 = __rev16(v46);
                      if (v80 >= 0x100)
                      {
                        v157 = __rev16(v80);
                      }

                      v81 = "";
                      v82 = &v154;
                      if (v47)
                      {
                        v83 = v46 == 0;
                      }

                      else
                      {
                        v82 = "";
                        v83 = 1;
                      }

                      v84 = "_";
                      if (v83)
                      {
                        v84 = "";
                      }

                      if (v46)
                      {
                        v81 = &v157;
                      }

                      v131 = v81;
                      v85 = CFStringCreateWithFormat(allocator, 0, @"%s%s%s", v82, v84);
                      if (v85)
                      {
                        v86 = v85;
                        a4 = CFLocaleCreate(allocator, v85);
                        CFRelease(v86);
                        if (a4)
                        {
                          CFDictionaryAddValue(Mutable, v135, a4);
                          CFRelease(a4);
                        }
                      }

                      FigQuickTimeMetadataCreateExtendedLanguageTag(allocator, v80, i);
                      OUTLINED_FUNCTION_6_48();
                      if (v87)
                      {
                        v88 = OUTLINED_FUNCTION_29_1();
                        CFDictionaryAddValue(v88, v136, i);
                        CFRelease(i);
                      }
                    }

                    if (!BYTE3(valuePtr))
                    {
                      if (CFNumberCreate(v35, kCFNumberSInt32Type, &valuePtr))
                      {
                        v89 = OUTLINED_FUNCTION_29_1();
                        CFDictionaryAddValue(v89, v140, i);
                        CFDictionaryAddValue(Mutable, v139, v138);
                        CFRelease(i);
                        if (v155 >= 1 && (valuePtr - 21) <= 1 && CFNumberCreate(v35, kCFNumberSInt64Type, &v155))
                        {
                          v90 = OUTLINED_FUNCTION_29_1();
                          CFDictionaryAddValue(v90, v133, i);
                          CFRelease(i);
                        }
                      }
                    }
                  }

                  v30 = allocator;
                  goto LABEL_185;
                }

LABEL_330:
                OUTLINED_FUNCTION_9_22();
                FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
LABEL_331:
                i = BBuf;
              }

              else
              {
                if (v48 != 2)
                {
                  if (v48 == 1)
                  {
                    v64 = OUTLINED_FUNCTION_16_21(BBuf, v38, v49, v39, v40, v41, v42, v43, v129, v130, v131, v132, v133, v134, v135, v136, key, v138, v139, v140, v141, v142, v143, v144, v145, allocator);
                    v149[0] = OUTLINED_FUNCTION_9_29(v64, v65, v66);
                    if (!v149[0])
                    {
                      goto LABEL_330;
                    }
                  }

                  else
                  {
LABEL_110:
                    v71 = OUTLINED_FUNCTION_16_21(BBuf, v38, v49, v39, v40, v41, v42, v43, v129, v130, v131, v132, v133, v134, v135, v136, key, v138, v139, v140, v141, v142, v143, v144, v145, allocator);
                    v149[0] = CFDataCreate(v71, v72, v73);
                    if (!v149[0])
                    {
                      goto LABEL_330;
                    }
                  }

                  goto LABEL_158;
                }

                if (v49 >= 2)
                {
                  v101 = OUTLINED_FUNCTION_16_21(BBuf, v38, v49, v39, v40, v41, v42, v43, v129, v130, v131, v132, v133, v134, v135, v136, key, v138, v139, v140, v141, v142, v143, v144, v145, allocator);
                  v149[0] = CFStringCreateWithBytes(v101, v102, v103, 0x10000100u, 0);
                  if (!v149[0])
                  {
                    goto LABEL_330;
                  }

                  goto LABEL_158;
                }

LABEL_228:
                i = 4294954687;
              }

LABEL_229:
              v30 = allocator;
              goto LABEL_234;
          }
      }
    }

    if (Mutable && HIDWORD(valuePtr) == 1851878757)
    {
      if (*&v162[0] < 4uLL)
      {
        i = 4294954687;
        goto LABEL_234;
      }

      if (*&v162[0] != 4)
      {
        CurrentAtomTypeAndDataLength = FigAtomStreamReadCurrentAtomDataAndCreateBBuf();
        if (CurrentAtomTypeAndDataLength)
        {
          goto LABEL_233;
        }

        CurrentAtomTypeAndDataLength = OUTLINED_FUNCTION_3_56();
        if (CurrentAtomTypeAndDataLength)
        {
          goto LABEL_233;
        }

        if (!OUTLINED_FUNCTION_9_29(v30, v160, *&v162[0] - 4))
        {
          goto LABEL_232;
        }

        v53 = OUTLINED_FUNCTION_29_1();
        CFDictionaryAddValue(v53, key, i);
        CFRelease(i);
      }

LABEL_185:
      if (v161)
      {
        CFRelease(v161);
      }

      v161 = 0;
      v91 = FigAtomStreamAdvanceToNextAtom();
      if (v91)
      {
        i = v91;
        if (v91 == -12890)
        {
          if (v147)
          {
            if (v149[0])
            {
              i = 0;
            }

            else
            {
              i = 4294954689;
            }
          }

          else
          {
            i = 0;
          }
        }

        goto LABEL_234;
      }

      continue;
    }

    break;
  }

  if (HIDWORD(valuePtr) != a4 + 196608)
  {
    goto LABEL_185;
  }

  if (*&v162[0] <= 0xBuLL)
  {
    goto LABEL_232;
  }

  OUTLINED_FUNCTION_613();
  CurrentAtomTypeAndDataLength = FigAtomStreamReadCurrentAtomDataAndCreateBBuf();
  if (CurrentAtomTypeAndDataLength)
  {
    goto LABEL_233;
  }

  CurrentAtomTypeAndDataLength = OUTLINED_FUNCTION_3_56();
  if (CurrentAtomTypeAndDataLength)
  {
    goto LABEL_233;
  }

  v54 = *v160;
  LODWORD(a4) = *(v160 + 2);
  v55 = *(v160 + 3);
  v56 = v160[8];
  v57 = *(v160 + 9);
  LODWORD(valuePtr) = bswap32(*v160);
  if (!v54 && !v57)
  {
    v58 = v56 >> 4;
    v59 = v56 < 0x10u || v58 == 4;
    if (v59 || v58 == 8)
    {
      v61 = v56 & 0xF;
      if (v61 <= 8 && ((1 << v61) & 0x111) != 0 && *&v162[0] - 11 >= v58 + v61)
      {
        if (v58 == 8)
        {
          i = bswap64(*(v160 + 11));
        }

        else if (v58 == 4)
        {
          i = bswap32(*(v160 + 11));
        }

        else
        {
          i = 0;
        }

        if (v147)
        {
          v33 = CFDictionaryCreateMutable(v30, 2, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
          if (!v33)
          {
            goto LABEL_232;
          }

          FigCFDictionarySetInt64();
          FigCFDictionarySetInt64();
          v149[0] = CFRetain(v33);
        }

        if (Mutable)
        {
          FigCFDictionarySetInt32();
          FigCFDictionarySetValue();
          if (a4 | v55)
          {
            if (FigQuickTimeMetadataCreateExtendedLanguageTag(v30, __rev16(a4), __rev16(v55)))
            {
              v63 = OUTLINED_FUNCTION_29_1();
              CFDictionaryAddValue(v63, v136, i);
              CFRelease(i);
            }
          }
        }

        OUTLINED_FUNCTION_6_48();
        goto LABEL_185;
      }
    }
  }

LABEL_232:
  OUTLINED_FUNCTION_9_22();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
LABEL_233:
  i = CurrentAtomTypeAndDataLength;
LABEL_234:
  if (v161)
  {
    CFRelease(v161);
  }

  if (v33)
  {
    CFRelease(v33);
  }

  if (v32)
  {
    CFRelease(v32);
  }

  if (!i)
  {
    if (!Mutable)
    {
      Count = 0;
LABEL_294:
      v27 = 0;
LABEL_297:
      a6 = v147;
LABEL_298:
      if (a6)
      {
        *a6 = v149[0];
        v149[0] = 0;
      }

      i = 0;
      if (!a7)
      {
        goto LABEL_315;
      }

      *a7 = Mutable;
LABEL_302:
      Mutable = 0;
      goto LABEL_315;
    }

    v109 = v152;
    if (v144 && v152)
    {
      v110 = 0;
      Count = 0;
      goto LABEL_291;
    }

    v110 = HIDWORD(v149[1]);
    memset(v162, 0, 112);
    v160 = 0;
    v161 = 0;
    LODWORD(v155) = 0;
    LODWORD(v154) = 0;
    v159 = 0;
    if (v142 && v152)
    {
      OUTLINED_FUNCTION_9_22();
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v129, v130, v131);
      v122 = v144;
      i = v128;
      v110 = 0;
      Count = 0;
LABEL_286:
      a7 = v143;
      if (v160)
      {
        CFRelease(v160);
        v122 = v144;
      }

      if (i)
      {
        goto LABEL_248;
      }

      if (!(v122 | Count))
      {
        Count = 0;
        if (v109)
        {
          goto LABEL_293;
        }

        goto LABEL_296;
      }

      v123 = Count;
      if (!v122)
      {
LABEL_292:
        CFDictionaryAddValue(Mutable, @"key", v123);
        v109 = v152;
        if (v152)
        {
LABEL_293:
          CFDictionaryAddValue(Mutable, @"keyspace", v109);
          goto LABEL_294;
        }

LABEL_296:
        v124 = bswap32(v110);
        v27 = CFStringCreateWithFormat(v30, 0, @"%c%c%c%c", v124, BYTE1(v124), BYTE2(v124), HIBYTE(v124));
        CFDictionaryAddValue(Mutable, @"keyspace", v27);
        goto LABEL_297;
      }

LABEL_291:
      v123 = v148;
      goto LABEL_292;
    }

    if (HIDWORD(v149[1]))
    {
      inited = FigQuickTimeMetadataInitKeyListAtomStreamAndEntryCount(v145, v162, &v155);
      if (!inited)
      {
        if (v155)
        {
          v112 = 0;
          v113 = v110 - 1;
          while (1)
          {
            v114 = v112;
            inited = FigAtomStreamGetCurrentAtomTypeAndDataLength();
            if (inited)
            {
              goto LABEL_345;
            }

            if (v113 == v114)
            {
              break;
            }

            v115 = FigAtomStreamAdvanceToNextAtom();
            if (v115 == -12890)
            {
              v110 = 0;
              goto LABEL_277;
            }

            Count = 0;
            v110 = 0;
            if (!v115)
            {
              v112 = v114 + 1;
              if (v114 < v155)
              {
                continue;
              }
            }

            goto LABEL_279;
          }

          if (v109)
          {
            v110 = 0;
          }

          else
          {
            v110 = v154;
          }

          if (v142)
          {
LABEL_277:
            Count = 0;
          }

          else
          {
            if (v161 >= 1)
            {
              OUTLINED_FUNCTION_613();
              DataPointer = FigAtomStreamReadCurrentAtomDataAndCreateBBuf();
              if (!DataPointer)
              {
                OUTLINED_FUNCTION_613();
                DataPointer = CMBlockBufferGetDataPointer(v117, v118, v119, 0, v120);
                if (!DataPointer)
                {
                  if (v154 == 1835299937)
                  {
                    Count = OUTLINED_FUNCTION_9_29(v30, v159, v161);
                    if (!Count)
                    {
                      goto LABEL_305;
                    }
                  }

                  else
                  {
                    Count = CFDataCreate(v30, v159, v161);
                    if (!Count)
                    {
LABEL_305:
                      OUTLINED_FUNCTION_9_22();
                      FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
                      i = v125;
                      goto LABEL_285;
                    }
                  }

                  goto LABEL_278;
                }
              }

              goto LABEL_343;
            }

            Count = CFRetain(&stru_1F0B1AFB8);
          }

LABEL_278:
          v115 = 0;
LABEL_279:
          if (v115)
          {
            v121 = 1;
          }

          else
          {
            v121 = v113 == v114;
          }

          if (v121)
          {
            i = v115;
          }

          else
          {
            i = 4294954692;
          }

          goto LABEL_285;
        }

        OUTLINED_FUNCTION_9_22();
        FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v129, v130, v131);
      }

LABEL_345:
      i = inited;
      v110 = 0;
      goto LABEL_346;
    }

    OUTLINED_FUNCTION_9_22();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v129, v130, v131);
LABEL_343:
    i = DataPointer;
LABEL_346:
    Count = 0;
LABEL_285:
    v122 = v144;
    goto LABEL_286;
  }

  if (v147 && v149[0])
  {
    CFRelease(v149[0]);
    v149[0] = 0;
  }

  if (a7 && Mutable)
  {
    CFRelease(Mutable);
  }

LABEL_247:
  Count = 0;
  Mutable = 0;
LABEL_248:
  v27 = 0;
LABEL_315:
  if (v149[0])
  {
    CFRelease(v149[0]);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  if (Count)
  {
    CFRelease(Count);
  }

  if (v27)
  {
    CFRelease(v27);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (theArray)
  {
    CFRelease(theArray);
  }

  if (v152)
  {
    CFRelease(v152);
  }

  return i;
}

uint64_t FigQuickTimeMetadataIsKeyPosInUse(void *a1, uint64_t a2, _DWORD *a3)
{
  if (a2 <= 0)
  {
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v7, v8, LODWORD(v9[0]));
  }

  else if (a1[4] < 1)
  {
    LODWORD(ItemListAtomStream) = 0;
  }

  else
  {
    memset(v10, 0, sizeof(v10));
    memset(v9, 0, sizeof(v9));
    ItemListAtomStream = FigQuickTimeMetadataGetItemListAtomStream(a1, v10, v9);
    if (!ItemListAtomStream)
    {
      while (1)
      {
        LODWORD(ItemListAtomStream) = OUTLINED_FUNCTION_14_23(ItemListAtomStream, v5);
        if (ItemListAtomStream)
        {
          break;
        }

        ItemListAtomStream = FigAtomStreamAdvanceToNextAtom();
        if (ItemListAtomStream)
        {
          if (ItemListAtomStream == -12890)
          {
            LODWORD(ItemListAtomStream) = 0;
          }

          break;
        }
      }
    }
  }

  if (a3)
  {
    *a3 = ItemListAtomStream;
  }

  return 0;
}

uint64_t FigQuickTimeMetadataInitKeyListAtomStreamAndEntryCount(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  if (*(a1 + 24) < 1 || (OUTLINED_FUNCTION_11_30(), result = FigAtomStreamInitWithByteStream(), !result) && (result = FigAtomStreamGetCurrentAtomTypeAndDataLength(), !result))
  {
    result = 0;
    if (a3)
    {
      *a3 = 0;
    }
  }

  return result;
}

uint64_t FigQuickTimeMetadataGetItemListAtomStream(void *a1, uint64_t a2, uint64_t a3)
{
  if (a1[4] < 1)
  {
    return 0;
  }

  result = FigAtomStreamInitWithByteStream();
  if (!result)
  {

    return FigAtomStreamInitWithParent();
  }

  return result;
}

uint64_t ArrayQTMetadataGetItemCount(uint64_t a1, const __CFString *a2, void *a3)
{
  cf = 0;
  theArray = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v6 = metadataCreateNativeKeySpaceAndKeys(a2, a3, &cf, &theArray);
  v7 = theArray;
  if (v6 || (Count = CFArrayGetCount(theArray)) == 0)
  {
    v11 = 0;
    if (v7)
    {
LABEL_9:
      CFRelease(v7);
    }
  }

  else
  {
    v9 = Count;
    v10 = 0;
    v11 = 0;
    v12 = *MEMORY[0x1E695E738];
    v13 = cf;
    do
    {
      ValueAtIndex = CFArrayGetValueAtIndex(v7, v10);
      if (CFEqual(ValueAtIndex, v12))
      {
        v15 = 0;
      }

      else
      {
        v15 = ValueAtIndex;
      }

      v11 += FigMetadataArrayGetItemCount(*DerivedStorage, v15, v13, 0, 0, 0);
      ++v10;
    }

    while (v9 != v10);
    if (v7)
    {
      goto LABEL_9;
    }
  }

  if (cf)
  {
    CFRelease(cf);
  }

  return v11;
}

void sadc_registerAssetForDownloaderDispatch(uint64_t **a1)
{
  v4 = *a1;
  v3 = a1[1];
  v6 = a1[2];
  v5 = a1[3];
  v8 = a1[4];
  v7 = a1[5];
  key = 0;
  cf = 0;
  WeakAssetKey = sadc_getWeakAssetKey(v3, &key);
  if (WeakAssetKey || (v10 = sadc_copyAssetWeakReference(v4, v3, &cf), WeakAssetKey))
  {
    v20 = WeakAssetKey;
    v12 = 0;
    v11 = 0;
    goto LABEL_29;
  }

  v11 = MEMORY[0x19A8CCA80](*(v4 + 56), cf, v10) > 0;
  v12 = FigCFWeakReferenceTableCopyValue();
  if (v6 && FigCFEqual())
  {
LABEL_26:
    v20 = 0;
    goto LABEL_29;
  }

  value = v8;
  v13 = key;
  FigSimpleMutexLock();
  LODWORD(v13) = CFDictionaryContainsKey(*(v4 + 24), v13);
  FigSimpleMutexUnlock();
  v25 = v13;
  if (v13)
  {
    FigSimpleMutexLock();
    CFDictionaryGetValue(*(v4 + 24), key);
    FigSimpleMutexUnlock();
    v14 = CFDictionaryGetValue(*(v4 + 32), key);
    if (!FigCFEqual())
    {
      fig_log_get_emitter();
      OUTLINED_FUNCTION_6_3();
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v1, v24, value);
      v20 = v22;
      goto LABEL_29;
    }

    if (v14 && !FigCFEqual())
    {
      fig_log_get_emitter();
      OUTLINED_FUNCTION_6_3();
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v1, v24, value);
      goto LABEL_28;
    }
  }

  if (!v6 || !v12)
  {
    v18 = v5;
    if (!v6)
    {
      goto LABEL_23;
    }

LABEL_22:
    v21 = FigCFWeakReferenceTableAddValueAssociatedWithKey();
    if (!v21)
    {
LABEL_23:
      FigSimpleMutexLock();
      CFDictionarySetValue(*(v4 + 24), key, v18);
      FigSimpleMutexUnlock();
      if (value)
      {
        CFDictionarySetValue(*(v4 + 32), key, value);
      }

      CFDictionarySetValue(*(v4 + 40), key, v7);
      if (v25)
      {
        goto LABEL_26;
      }

      CMNotificationCenterGetDefaultLocalCenter();
      v21 = FigDispatchAsyncPostNotification();
    }

LABEL_28:
    v20 = v21;
    goto LABEL_29;
  }

  BOOLean = *MEMORY[0x1E695E4C0];
  FigAssetDownloaderGetCMBaseObject();
  v16 = v15;
  v17 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  v18 = v5;
  if (v17)
  {
    v19 = v17(v16, @"AssetDownloaderProperty_HasAccessToDestinationURL", *MEMORY[0x1E695E480], &BOOLean);
    if (v19)
    {
      v20 = v19;
      if (v19 == -16651)
      {
        v20 = 0;
      }

      v18 = v5;
    }

    else if (CFBooleanGetValue(BOOLean))
    {
      fig_log_get_emitter();
      OUTLINED_FUNCTION_6_3();
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v1, v24, value);
      v20 = v23;
    }

    else
    {
      v20 = 0;
    }
  }

  else
  {
    v20 = -12782;
  }

  if (BOOLean)
  {
    CFRelease(BOOLean);
  }

  if (!v20)
  {
    v21 = FigCFWeakReferenceTableRemoveValue();
    if (v21)
    {
      goto LABEL_28;
    }

    goto LABEL_22;
  }

LABEL_29:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v12)
  {
    CFRelease(v12);
  }

  *(a1 + 13) = v20;
  *(a1 + 48) = v11;
}

double FigAssetDownloadCoordinatorCopyDestinationURLForAsset(uint64_t a1, void *a2)
{
  if (_MergedGlobals_52 != -1)
  {
    OUTLINED_FUNCTION_2_73();
    dispatch_once_f(v6, v7, v8);
  }

  v4 = qword_1ED4CA980;
  v9 = 0;
  if (a1 && a2)
  {
    if (!sadc_getWeakAssetKey(a1, &v9))
    {
      sadc_copyDestinationURLForAssetKey(v4, v9, a2);
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

double FigAssetDownloadCoordinatorCopyClientBundleIdentifierForAsset(uint64_t a1, void *a2)
{
  if (_MergedGlobals_52 != -1)
  {
    OUTLINED_FUNCTION_2_73();
    dispatch_once_f(v5, v6, v7);
  }

  v9 = 0;
  v10 = 0;
  if (a1 && a2)
  {
    v8[0] = qword_1ED4CA980;
    v8[1] = a1;
    dispatch_sync_f(*(qword_1ED4CA980 + 8), v8, sadc_copyClientBundleIdentifierForAssetDispatch);
    if (!v10)
    {
      *a2 = v9;
    }
  }

  else
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_20_0();

    return FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
  }

  return result;
}

void sadc_copyClientBundleIdentifierForAssetDispatch(uint64_t *a1)
{
  v3 = *a1;
  v2 = a1[1];
  key = 0;
  if (v2)
  {
    WeakAssetKey = sadc_getWeakAssetKey(v2, &key);
    if (!WeakAssetKey)
    {
      Value = CFDictionaryGetValue(*(v3 + 32), key);
      if (Value)
      {
        v6 = CFRetain(Value);
      }

      else
      {
        v6 = 0;
      }

      WeakAssetKey = 0;
      a1[2] = v6;
    }
  }

  else
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_20_0();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v7, key, v9);
  }

  *(a1 + 6) = WeakAssetKey;
}

void sads_relinquishAccessToURLDispatch(void *key)
{
  if (qword_1ED4CA988 != -1)
  {
    dispatch_once_f(&qword_1ED4CA988, 0, sads_downloadSchedulerCreateInitOnce);
  }

  v2 = qword_1ED4CA990;
  Value = CFDictionaryGetValue(*(qword_1ED4CA990 + 16), key);
  if (Value)
  {
    v4 = CFRetain(Value);
    if (v4)
    {
      v5 = v4;
      sads_cleanupScheduledAccessToURL(v2, key, v4);
      v6 = CFDictionaryGetValue(v2[5], v5);
      if (v6)
      {
        v7 = v6;
        if (CFArrayGetCount(v6) >= 1)
        {
          while (1)
          {
            ValueAtIndex = CFArrayGetValueAtIndex(v7, 0);
            v9 = CFDictionaryGetValue(v2[3], ValueAtIndex);
            if (!v9)
            {
              break;
            }

            v10 = v9;
            v11 = CFDictionaryGetValue(v2[4], ValueAtIndex);
            if (!v11)
            {
              break;
            }

            v12 = v11;
            v13 = FigCFWeakReferenceTableCopyValue();
            if (v13)
            {
              v14 = v13;
              sads_dispatchScheduledCallbackFn(v13, 1, ValueAtIndex, v10, v12);
              goto LABEL_14;
            }

            sads_cleanupScheduledAccessToURL(v2, ValueAtIndex, v5);
            if (CFArrayGetCount(v7) <= 0)
            {
              goto LABEL_11;
            }
          }

LABEL_17:

          CFRelease(v5);
          return;
        }

LABEL_11:
        v14 = 0;
LABEL_14:
        if (CFArrayGetCount(v7))
        {
LABEL_16:
          CFRelease(v5);
          v5 = v14;
          if (!v14)
          {
            return;
          }

          goto LABEL_17;
        }
      }

      else
      {
        v14 = 0;
      }

      CFDictionaryRemoveValue(v2[5], v5);
      goto LABEL_16;
    }
  }
}

double sadc_copyAssetWeakReference(uint64_t a1, uint64_t a2, CFTypeRef *a3)
{
  v10 = 0;
  if (a2 && a3)
  {
    if (sadc_getWeakAssetKey(a2, &v10))
    {
      return result;
    }

    v5 = FigCFWeakReferenceTableCopyValue();
    if (v5)
    {
      v6 = v5;
      v7 = FigCFWeakReferenceHolderCopyReferencedObject();
      if (!FigCFEqual())
      {
        fig_log_get_emitter();
        OUTLINED_FUNCTION_0_4();
        FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v9, v10, v11);
        goto LABEL_10;
      }
    }

    else
    {
      v8 = FigCFWeakReferenceHolderCreateWithReferencedObject();
      if (!v8)
      {
        fig_log_get_emitter();
        OUTLINED_FUNCTION_0_4();
        return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v9, v10, v11);
      }

      v6 = v8;
      FigCFWeakReferenceTableAddValueAssociatedWithKey();
      v7 = 0;
    }

    *a3 = CFRetain(v6);
LABEL_10:
    CFRelease(v6);
    if (v7)
    {
      CFRelease(v7);
    }

    return result;
  }

  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
}

double sadc_copyAssetDownloaderForAsset(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = 0;
  if (a2 && a3)
  {
    if (!sadc_getWeakAssetKey(a2, &v5))
    {
      *a3 = FigCFWeakReferenceTableCopyValue();
    }
  }

  else
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_20_0();

    return FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
  }

  return result;
}

void sads_cleanupScheduledAccessToURL(CFMutableDictionaryRef *a1, const void *a2, void *key)
{
  Value = CFDictionaryGetValue(a1[5], key);
  if (Value)
  {
    v6 = Value;
    v8.length = CFArrayGetCount(Value);
    v8.location = 0;
    if (!CFArrayGetFirstIndexOfValue(v6, v8, a2))
    {
      CFDictionaryRemoveValue(a1[2], a2);
      CFDictionaryRemoveValue(a1[3], a2);
      CFDictionaryRemoveValue(a1[4], a2);

      CFArrayRemoveValueAtIndex(v6, 0);
    }
  }
}

void FigAssetDownloadCoordinatorMarkAssetForInteractivity_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FigAssetDownloadCoordinatorUnmarkAssetForInteractivity_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FigAssetDownloadCoordinatorUnmarkAssetForInteractivity_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

uint64_t sadc_unmarkAssetForInteractivityDispatch_cold_1(CFBagRef *a1, const void **a2, uint64_t *a3)
{
  result = CFBagContainsValue(*a1, *a2);
  if (!result)
  {
    v5 = *a3;
    VTable = CMBaseObjectGetVTable();
    v7 = *(VTable + 16);
    result = VTable + 16;
    v8 = *(v7 + 40);
    if (v8)
    {
      return v8(v5);
    }
  }

  return result;
}

void FigAssetDownloadCoordinatorRegisterAssetForDownloader_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FigAssetDownloadCoordinatorRegisterAssetForDownloader_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void sadc_getWeakAssetKey_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void sadc_getWeakAssetKey_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void sadc_getWeakAssetKey_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void sadc_copyDestinationURLForAssetKey_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FigAssetDownloadCoordinatorCopyDestinationURLForDownloadToken_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FigAssetDownloadCoordinatorUnregisterAssetWithDownloadTokenForAllDownloaders_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FigAssetDownloadCoordinatorScheduleAccessToURL_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FigAssetDownloadCoordinatorScheduleAccessToURL_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FigAssetDownloadCoordinatorScheduleAccessToURL_cold_4(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FigAssetDownloadCoordinatorScheduleAccessToURL_cold_5(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FigAssetDownloadCoordinatorScheduleAccessToURL_cold_6(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FigAssetDownloadCoordinatorRequestImmediateAccessToURL_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FigAssetDownloadCoordinatorRequestImmediateAccessToURL_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FigAssetDownloadCoordinatorRelinquishAccessToURL_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

BOOL sadc_globalDownloadCoordinatorInitOnce_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, v3, vars0);
  return v0 == 0;
}

double sads_scheduleAccessToURLDispatchGuts_cold_2()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v1, v2, vars0);
}

double sads_scheduleAccessToURLDispatchGuts_cold_3()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
}

double sads_dispatchScheduledCallbackFn_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
}

double sads_performDispatchScheduledCallbackFn_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
}

uint64_t FigCaptionRendererStackLayoutRegionCreate(void *a1)
{
  *a1 = 0;
  v8 = 0;
  MEMORY[0x19A8D3660](&FigCaptionRendererStackLayoutRegionGetClassID_sRegisterFigCaptionRendererStackLayoutRegionBaseTypeOnce, RegisterFigCaptionRendererStackLayoutRegionBaseType);
  v2 = CMDerivedObjectCreate();
  if (!v2)
  {
    v3 = v8;
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    *DerivedStorage = 1;
    *(DerivedStorage + 24) = 0x3FAB4A2339C0EBEELL;
    *(DerivedStorage + 32) = 0x300000064;
    v5 = vdupq_n_s64(0x4049000000000000uLL);
    *(DerivedStorage + 56) = v5;
    *(DerivedStorage + 40) = v5;
    v7 = 0;
    FigCaptionRendererNodeCreate(&v7);
    *(DerivedStorage + 8) = v7;
    *a1 = v3;
  }

  return v2;
}

double captionConverter_processSampleBuffer(uint64_t a1, opaqueCMSampleBuffer *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*DerivedStorage)
  {
    goto LABEL_44;
  }

  v5 = DerivedStorage;
  if (!*(DerivedStorage + 32) || !a2)
  {
    goto LABEL_44;
  }

  FormatDescription = CMSampleBufferGetFormatDescription(a2);
  MediaType = CMFormatDescriptionGetMediaType(FormatDescription);
  MediaSubType = CMFormatDescriptionGetMediaSubType(FormatDescription);
  if (*(v5 + 4) != MediaType || *(v5 + 8) != MediaSubType)
  {
    *(v5 + 4) = MediaType;
    *(v5 + 8) = MediaSubType;
    if (*(v5 + 20))
    {
      *(v5 + 12) = MediaType;
    }

    if (*(v5 + 21))
    {
      *(v5 + 16) = MediaSubType;
    }

    v10 = *(v5 + 48);
    if (v10)
    {
      v11 = *(*(CMBaseObjectGetVTable() + 16) + 16);
      if (!v11 || v11(v10))
      {
        return result;
      }
    }

    v12 = *(v5 + 40);
    if (v12)
    {
      v13 = *(*(CMBaseObjectGetVTable() + 16) + 16);
      if (!v13 || v13(v12))
      {
        return result;
      }
    }

    if (!CMSampleBufferGetNumSamples(a2))
    {
      goto LABEL_48;
    }

    v14 = *(v5 + 4);
    v15 = *(v5 + 12);
    if (v14 == v15 && *(v5 + 8) == *(v5 + 16))
    {
      goto LABEL_48;
    }

    if (v14 != 1668310898)
    {
      *(v5 + 22) = 0;
      goto LABEL_27;
    }

    v16 = *(v5 + 8);
    if (v15 != 1952807028 || v16 != 1668310898)
    {
      *(v5 + 22) = 0;
      if (v16 == 1668310898)
      {
LABEL_50:
        v41 = CMBaseObjectGetDerivedStorage();
        v42 = *(v41 + 48);
        if (v42)
        {
          CFRelease(v42);
          *(v41 + 48) = 0;
        }

        if (*(v41 + 12) == 1668047728)
        {
          *&v90[8] = a1;
          v43 = OUTLINED_FUNCTION_2_74(v42, *MEMORY[0x1E695E480], v35, v36, v37, v38, v39, v40, v79, v81, v82, v84, v85, v87, v88, *(&v88 + 1), *v89, *&v89[8], *&v89[16], *&v89[24], captionConverter_ToSbufOutputCallback);
          v69 = FigCLCPCaptionGroupConverterToSampleBufferCreate(v43, v44, v45);
          goto LABEL_62;
        }

LABEL_42:
        fig_log_get_emitter();
        OUTLINED_FUNCTION_0_4();
        result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
        goto LABEL_62;
      }

LABEL_27:
      if (v15 == 1668310898 && *(v5 + 16) == 1668310898)
      {
        v18 = CMBaseObjectGetDerivedStorage();
        v19 = *(v18 + 40);
        if (v19)
        {
          CFRelease(v19);
          *(v18 + 40) = 0;
        }

        v20 = *(v18 + 4);
        if (v20 != 1952807028 && v20 != 1935832172)
        {
          if (v20 != 1668047728)
          {
            goto LABEL_42;
          }

          OUTLINED_FUNCTION_1_75();
          v53 = OUTLINED_FUNCTION_2_74(v46, *MEMORY[0x1E695E480], v47, v48, v49, v50, v51, v52, v79, v81, v82, v84, v85, v87, v88, *(&v88 + 1), *v89, *&v89[8], *&v89[16], *&v89[24], v90[0]);
          v69 = FigCLCPCaptionGroupConverterFromSampleBufferCreate(v53, v54, v55);
          if (!v69)
          {
            FigCaptionGroupConverterFromSampleBufferGetCMBaseObject();
            v57 = v56;
            v58 = *(*(CMBaseObjectGetVTable() + 8) + 56);
            if (v58)
            {
              v69 = v58(v57, 0x1F0B206B8, *MEMORY[0x1E695E4C0]);
            }

            else
            {
              v69 = -12782;
            }
          }

LABEL_62:
          if (v69)
          {
            return result;
          }

          goto LABEL_63;
        }

        v22 = *(v18 + 8);
        if (v22 != 1937142900)
        {
          if (v22 == 1954034535)
          {
            OUTLINED_FUNCTION_1_75();
            v66 = OUTLINED_FUNCTION_2_74(v59, *MEMORY[0x1E695E480], v60, v61, v62, v63, v64, v65, v79, v81, v82, v84, v85, v87, v88, *(&v88 + 1), *v89, *&v89[8], *&v89[16], *&v89[24], v90[0]);
            v69 = FigTX3GCaptionGroupConverterFromSampleBufferCreate(v66, v67, v68);
            goto LABEL_62;
          }

          if (v22 != 2021028980 && v22 != 2004251764)
          {
            goto LABEL_42;
          }
        }

        OUTLINED_FUNCTION_1_75();
        v31 = OUTLINED_FUNCTION_2_74(v24, *MEMORY[0x1E695E480], v25, v26, v27, v28, v29, v30, v79, v81, v82, v84, v85, v87, v88, *(&v88 + 1), *v89, *&v89[8], *&v89[16], *&v89[24], v90[0]);
        v69 = FigWebVTTCaptionGroupConverterFromSampleBufferCreate(v31, v32, v33);
        goto LABEL_62;
      }

LABEL_44:
      fig_log_get_emitter();
      OUTLINED_FUNCTION_0_4();

      return FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
    }

    v34 = *(v5 + 16);
    if (v34 == 1634301044)
    {
LABEL_48:
      *(v5 + 22) = 1;
    }

    else
    {
      *(v5 + 22) = v34 == 2004251764;
      if (v34 != 2004251764)
      {
        goto LABEL_50;
      }
    }
  }

LABEL_63:
  if (*(v5 + 22))
  {
    (*(v5 + 32))(*(v5 + 24), 0, a2);
    return result;
  }

  if (*(v5 + 48))
  {
    v70 = *(MEMORY[0x1E6960C98] + 16);
    v88 = *MEMORY[0x1E6960C98];
    *v89 = v70;
    *&v89[16] = *(MEMORY[0x1E6960C98] + 32);
    v71 = CMBaseObjectGetDerivedStorage();
    if (*(v71 + 48))
    {
      v72 = v71;
      CaptionGroup = FigSampleBufferGetCaptionGroup();
      if (CaptionGroup)
      {
        v74 = CaptionGroup;
        CMSampleBufferGetOutputPresentationTimeStamp(&v88, a2);
        CMSampleBufferGetOutputDuration(v90, a2);
        *&v89[24] = *&v90[16];
        *&v89[8] = *v90;
        v75 = *(v72 + 48);
        v80 = v88;
        v83 = *v89;
        v86 = *&v89[16];
        v76 = *(*(CMBaseObjectGetVTable() + 16) + 8);
        if (v76)
        {
          *v90 = v80;
          *&v90[16] = v83;
          v91 = v86;
          v76(v75, v74, v90);
        }

        return result;
      }
    }

LABEL_79:
    fig_log_get_emitter();
    OUTLINED_FUNCTION_0_4();
    return FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
  }

  if (!*(v5 + 40))
  {
    return result;
  }

  v77 = *(CMBaseObjectGetDerivedStorage() + 40);
  if (!v77)
  {
    goto LABEL_79;
  }

  v78 = *(*(CMBaseObjectGetVTable() + 16) + 8);
  if (v78)
  {
    v78(v77, a2);
  }

  return result;
}

void FigSampleBufferProcessorCreateForCaptionConverter_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void captionConverter_setOutputCallback_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void captionConverter_finishPendingProcessing_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void captionConverter_finishPendingProcessing_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void captionConverter_FromSbufOutputCallback_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

uint64_t FigFormatReaderRemoteWithLoopbackServerCreateForURL(int a1, int a2, int a3, int a4)
{
  v27 = 0;
  v28[0] = 0;
  cf = 0;
  v22 = 1;
  xdict = CommonFormatReaderObjectDeadConnectionCallback;
  v24 = CommonFormatReaderObjectNotificationFilter;
  *v25 = 0u;
  v26 = 0u;
  v8 = remoteFormatReader_ensureLoopbackConnectionAndCopyRemote_sRemoteClient;
  if (remoteFormatReader_ensureLoopbackConnectionAndCopyRemote_sRemoteClient)
  {
    v11 = 0;
    v13 = 0;
    goto LABEL_7;
  }

  started = FigFormatReaderServerStartLoopbackServerAndCopyXPCEndpoint(v28);
  if (started)
  {
    v13 = started;
    v11 = 0;
  }

  else
  {
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    v11 = Mutable;
    if (Mutable)
    {
      CFDictionarySetValue(Mutable, *MEMORY[0x1E69633B0], @"FormatReader_ServerConnectionDied");
      v12 = FigXPCRemoteClientCreateWithXPCEndpoint();
    }

    else
    {
      OUTLINED_FUNCTION_429();
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d", cf, v22, xdict);
    }

    v13 = v12;
  }

  v8 = remoteFormatReader_ensureLoopbackConnectionAndCopyRemote_sRemoteClient;
  if (remoteFormatReader_ensureLoopbackConnectionAndCopyRemote_sRemoteClient)
  {
LABEL_7:
    v14 = CFRetain(v8);
    if (!v11)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  v14 = 0;
  if (v11)
  {
LABEL_8:
    CFRelease(v11);
  }

LABEL_9:
  FigXPCRelease();
  if (v13)
  {
    v16 = cf;
    if (cf)
    {
LABEL_15:
      CFRelease(v16);
    }
  }

  else
  {
    v15 = remoteFormatReaderClient_CopyConnection(v14, 1, &cf);
    v16 = cf;
    if (!v15)
    {
      if (!FigServer_IsServerProcess() || (v15 = FigXPCConnectionSetCustomServerTimeoutPerConnection(), !v15))
      {
        v15 = remoteFormatReader_CreateForURLAndConnection(a1, a2, v16, a3, a4, v17, v18, v19, cf, v22, xdict, v24, v25[0], v25[1], v26, *(&v26 + 1), v27, v28[0], v28[1], v28[2]);
      }
    }

    v13 = v15;
    if (v16)
    {
      goto LABEL_15;
    }
  }

  if (v14)
  {
    CFRelease(v14);
  }

  return v13;
}

uint64_t FigFormatReaderXPCRemoteRetainCopiedPlaybackProcessFormatReader(uint64_t a1, void *a2)
{
  v25 = 0;
  v26 = 0;
  if (!a1)
  {
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1ED4CBDE8, 4294954516, "<< FFRRemoteXPC >>", 8141, v3);
    goto LABEL_36;
  }

  if (!a2)
  {
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1ED4CBDE8, 4294954516, "<< FFRRemoteXPC >>", 8142, v3);
    goto LABEL_36;
  }

  v6 = remoteFormatReaderClient_EnsureClientEstablishedAndCopyRemoteClient(0, &v25);
  if (v6)
  {
LABEL_36:
    v2 = v6;
    goto LABEL_29;
  }

  v7 = FigXPCRemoteClientRetainCopiedObject();
  v15 = OUTLINED_FUNCTION_22_14(v7, v8, v9, v10, v11, v12, v13, v14, v25, v26);
  if (!v2)
  {
    if (v15)
    {
      FigFormatReaderXPCRemoteGetObjectID(v15, &v30);
      v15 = v26;
LABEL_28:
      v2 = 0;
      *a2 = v15;
      v26 = 0;
      goto LABEL_29;
    }

    v29 = 0;
    v30 = 0;
    cf = 0;
    v28 = 0;
    v16 = remoteFormatReaderClient_EnsureClientEstablishedAndCopyRemoteClient(0, &v29);
    if (v16)
    {
      goto LABEL_17;
    }

    v16 = remoteFormatReaderClient_CopyConnection(v29, 0, &v28);
    if (v16)
    {
      goto LABEL_17;
    }

    v17 = v28;
    if (FigServer_IsServerProcess())
    {
      v16 = FigXPCConnectionSetCustomServerTimeoutPerConnection();
      if (v16)
      {
        goto LABEL_17;
      }
    }

    AllocatorForMedia = FigGetAllocatorForMedia();
    v16 = CreateRemoteFormatReader(AllocatorForMedia, &v30);
    if (v16)
    {
      goto LABEL_17;
    }

    v19 = v30;
    v16 = CommonFormatReaderObjectCompleteObjectSetup(v30, a1, v17);
    if (v16)
    {
      goto LABEL_17;
    }

    FigFormatReaderGetFigBaseObject();
    v21 = v20;
    v22 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v22)
    {
      v22(v21, @"CanMutate", *MEMORY[0x1E695E480], &cf);
      v22 = cf;
    }

    if (v22 != *MEMORY[0x1E695E4D0] && (DerivedStorage = CMBaseObjectGetDerivedStorage(), v16 = SetupCommonFormatReaderPropertyCache((DerivedStorage + 24)), v16))
    {
LABEL_17:
      v2 = v16;
    }

    else
    {
      v2 = 0;
      v26 = v19;
      v30 = 0;
    }

    if (cf)
    {
      CFRelease(cf);
    }

    if (v30)
    {
      CFRelease(v30);
    }

    if (v29)
    {
      CFRelease(v29);
    }

    if (v28)
    {
      CFRelease(v28);
    }

    v15 = v26;
    if (!v2)
    {
      goto LABEL_28;
    }
  }

  if (v15)
  {
    CFRelease(v15);
  }

LABEL_29:
  if (v25)
  {
    CFRelease(v25);
  }

  return v2;
}

void FigFormatReaderXPCRemoteCreateWithObjectID(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void (*cf)(uint64_t, __CFString *, void, CFTypeRef *), CFTypeRef a10, CFTypeRef a11, CFTypeRef a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_47_5();
  a19 = v21;
  a20 = v22;
  v24 = v23;
  v26 = v25;
  OUTLINED_FUNCTION_43_9();
  v27 = (v26 | FigRemote_ShouldConnectToMediaparserdForFileParsing()) != 0;
  if (v20 && v24)
  {
    if (!remoteFormatReaderClient_EnsureClientEstablishedAndCopyRemoteClient(v27, &a11) && !remoteFormatReaderClient_CopyConnection(a11, 0, &a10))
    {
      v28 = a10;
      if (!FigServer_IsServerProcess() || !FigXPCConnectionSetCustomServerTimeoutPerConnection())
      {
        AllocatorForMedia = FigGetAllocatorForMedia();
        if (!CreateRemoteFormatReader(AllocatorForMedia, &a12))
        {
          v30 = a12;
          if (!CommonFormatReaderObjectCompleteObjectSetup(a12, v20, v28))
          {
            FigFormatReaderGetFigBaseObject();
            v32 = v31;
            v33 = *(*(CMBaseObjectGetVTable() + 8) + 48);
            if (v33)
            {
              v33(v32, @"CanMutate", *MEMORY[0x1E695E480], &cf);
              v33 = cf;
            }

            if (v33 == *MEMORY[0x1E695E4D0] || (DerivedStorage = CMBaseObjectGetDerivedStorage(), !SetupCommonFormatReaderPropertyCache((DerivedStorage + 24))))
            {
              *v24 = v30;
              a12 = 0;
            }
          }
        }
      }
    }
  }

  else
  {
    OUTLINED_FUNCTION_303();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (a12)
  {
    CFRelease(a12);
  }

  if (a11)
  {
    CFRelease(a11);
  }

  if (a10)
  {
    CFRelease(a10);
  }

  OUTLINED_FUNCTION_860();
}

uint64_t FigFormatReaderXPCRemoteCopyTrackReaderForObjectIDFromOtherProcess()
{
  OUTLINED_FUNCTION_570();
  if (!v0 || (v2 = v1) == 0)
  {
    OUTLINED_FUNCTION_111();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
LABEL_28:
    v14 = v6;
    goto LABEL_24;
  }

  v3 = v0;
  ShouldConnectToMediaparserdForFileParsing = FigRemote_ShouldConnectToMediaparserdForFileParsing();
  v5 = OUTLINED_FUNCTION_41_9(ShouldConnectToMediaparserdForFileParsing);
  v6 = remoteFormatReaderClient_EnsureClientEstablishedAndCopyRemoteClient(v5, &v19);
  if (v6)
  {
    goto LABEL_28;
  }

  v6 = FigXPCCreateBasicMessage();
  if (v6)
  {
    goto LABEL_28;
  }

  xpc_dictionary_set_uint64(xdict, "OtherProcessObjectID", v3);
  v7 = v19;
  OUTLINED_FUNCTION_2_22();
  v8 = FigXPCRemoteClientSendSyncMessageCreatingReply();
  if (v8)
  {
    v14 = v8;
    if (!v7)
    {
      goto LABEL_26;
    }

    goto LABEL_25;
  }

  v9 = v20;
  v24 = 0;
  cf = 0;
  v23 = 0;
  if (!xpc_dictionary_get_uint64(v20, *MEMORY[0x1E69615A0]))
  {
    OUTLINED_FUNCTION_111();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v18, v19, v20);
    goto LABEL_11;
  }

  v10 = FigRemote_ShouldConnectToMediaparserdForFileParsing();
  v11 = OUTLINED_FUNCTION_41_9(v10);
  ObjectID = remoteFormatReaderClient_EnsureClientEstablishedAndCopyRemoteClient(v11, &v24);
  if (ObjectID)
  {
    goto LABEL_11;
  }

  v13 = v24;
  ObjectID = FigXPCRemoteClientRetainCopiedObject();
  if (ObjectID)
  {
    goto LABEL_11;
  }

  if (cf)
  {
    ObjectID = remoteTrackReader_GetObjectID(cf, &v22);
    if (ObjectID)
    {
LABEL_11:
      v14 = ObjectID;
      if (cf)
      {
        CFRelease(cf);
      }

      v15 = 0;
      goto LABEL_18;
    }
  }

  else
  {
    ObjectID = remoteFormatReaderClient_CopyConnection(v13, 1, &v23);
    if (ObjectID)
    {
      goto LABEL_11;
    }

    AllocatorForMedia = FigGetAllocatorForMedia();
    ObjectID = CreateRemoteTrackReader(AllocatorForMedia, 0, &cf);
    if (ObjectID)
    {
      goto LABEL_11;
    }

    xpc_dictionary_get_int64(v9, "TrackID");
    xpc_dictionary_get_uint64(v9, "MediaType");
    xpc_dictionary_get_BOOL(v9, "AllowsPropertyCaching");
    CompleteTrackReaderCopy();
    if (ObjectID)
    {
      goto LABEL_11;
    }
  }

  v14 = 0;
  v15 = cf;
  cf = 0;
LABEL_18:
  if (v23)
  {
    CFRelease(v23);
  }

  if (v24)
  {
    CFRelease(v24);
  }

  if (v14)
  {
    if (v15)
    {
      CFRelease(v15);
    }
  }

  else
  {
    *v2 = v15;
  }

LABEL_24:
  v7 = v19;
  if (v19)
  {
LABEL_25:
    CFRelease(v7);
  }

LABEL_26:
  FigXPCRelease();
  FigXPCRelease();
  return v14;
}

uint64_t FigFormatReaderXPCRemoteCopySampleCursorForObjectIDFromOtherProcess()
{
  v35 = 0;
  xdict = 0;
  OUTLINED_FUNCTION_570();
  if (!v2 || (v4 = v3) == 0 || (v5 = v1, !(v0 | v1)))
  {
    OUTLINED_FUNCTION_243();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
    goto LABEL_42;
  }

  v6 = v2;
  ShouldConnectToMediaparserdForFileParsing = FigRemote_ShouldConnectToMediaparserdForFileParsing();
  v8 = OUTLINED_FUNCTION_41_9(ShouldConnectToMediaparserdForFileParsing);
  ObjectID = remoteFormatReaderClient_EnsureClientEstablishedAndCopyRemoteClient(v8, &v33);
  if (ObjectID)
  {
    goto LABEL_42;
  }

  ObjectID = FigXPCCreateBasicMessage();
  if (ObjectID)
  {
    goto LABEL_42;
  }

  xpc_dictionary_set_uint64(xdict, "OtherProcessObjectID", v6);
  if (v5)
  {
    ObjectID = remoteTrackReader_GetObjectID(v5, v34);
    if (!ObjectID)
    {
      v10 = xdict;
      v11 = "TrackReaderObjectID";
      v12 = v34[0];
      goto LABEL_11;
    }

LABEL_42:
    v23 = ObjectID;
    goto LABEL_38;
  }

  v13 = OUTLINED_FUNCTION_62_4();
  ObjectID = remoteFormatReader_GetObjectID(v13, v14);
  if (ObjectID)
  {
    goto LABEL_42;
  }

  v10 = xdict;
  v11 = "FormatReaderObjectID";
  v12 = v34[1];
LABEL_11:
  xpc_dictionary_set_uint64(v10, v11, v12);
  v15 = v33;
  OUTLINED_FUNCTION_16_14();
  v16 = FigXPCRemoteClientSendSyncMessageCreatingReply();
  if (v16)
  {
    v23 = v16;
    if (!v15)
    {
      goto LABEL_40;
    }

    goto LABEL_39;
  }

  uint64 = xpc_dictionary_get_uint64(v35, *MEMORY[0x1E69615A0]);
  v18 = v35;
  v37 = 0;
  cf = 0;
  if (!uint64)
  {
    OUTLINED_FUNCTION_243();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v32, v33, LODWORD(v34[0]));
    goto LABEL_17;
  }

  v19 = uint64;
  v20 = FigRemote_ShouldConnectToMediaparserdForFileParsing();
  v21 = OUTLINED_FUNCTION_41_9(v20);
  updated = remoteFormatReaderClient_EnsureClientEstablishedAndCopyRemoteClient(v21, &v37);
  if (updated)
  {
    goto LABEL_17;
  }

  updated = FigXPCRemoteClientRetainCopiedObject();
  if (updated)
  {
    goto LABEL_17;
  }

  if (cf)
  {
    updated = remoteSampleCursor_GetObjectID(cf, &v39);
    if (updated)
    {
      goto LABEL_17;
    }

    goto LABEL_33;
  }

  v25 = xpc_dictionary_get_uint64(v18, "SampleCursorOptionalMethods");
  v42 = 0;
  v43 = 0;
  *v40 = 0u;
  v41 = 0u;
  v39 = 0u;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v27 = *(DerivedStorage + 8);
  if (!v27)
  {
    OUTLINED_FUNCTION_243();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v32, v33, LODWORD(v34[0]));
LABEL_49:
    v23 = v30;
    goto LABEL_26;
  }

  v28 = DerivedStorage;
  v29 = *MEMORY[0x1E695E480];
  v30 = FigServerSampleCursorSubscriptionCreate(*MEMORY[0x1E695E480], v27, v19, 0, &v42);
  if (v30)
  {
    goto LABEL_49;
  }

  v30 = FigPartialSampleTableOutOfBandObjectRegistryCreate(v29, &v40[1]);
  if (v30)
  {
    goto LABEL_49;
  }

  v23 = CreateRemoteSampleCursor(v29, *(v28 + 40), v25, &v39, v42, 0, 0, &v43);
  if (v23)
  {
    if (v43)
    {
      CFRelease(v43);
    }
  }

  else
  {
    cf = v43;
  }

LABEL_26:
  if (v42)
  {
    CFRelease(v42);
  }

  if (v40[1])
  {
    CFRelease(v40[1]);
  }

  if (v23)
  {
    goto LABEL_18;
  }

  remoteSampleCursor_updateSimpleCache(cf, v18);
  if (updated || (updated = remoteSampleCursor_updateUpcomingSamplesCache(cf, v18), updated))
  {
LABEL_17:
    v23 = updated;
LABEL_18:
    if (cf)
    {
      CFRelease(cf);
    }

    v24 = 0;
    goto LABEL_34;
  }

LABEL_33:
  v23 = 0;
  v24 = cf;
  cf = 0;
LABEL_34:
  if (v37)
  {
    CFRelease(v37);
  }

  if (v23)
  {
    if (v24)
    {
      CFRelease(v24);
    }
  }

  else
  {
    *v4 = v24;
  }

LABEL_38:
  v15 = v33;
  if (v33)
  {
LABEL_39:
    CFRelease(v15);
  }

LABEL_40:
  FigXPCRelease();
  FigXPCRelease();
  return v23;
}

uint64_t FigFormatReaderXPCRemoteCopyFormatReaderForObjectIDFromOtherProcess(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v32 = 0;
  xdict = 0;
  cf = 0;
  v31 = 0;
  if (!a1)
  {
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1ED4CBDE8, 4294954516, "<< FFRRemoteXPC >>", 8561, v9, a7, a8);
LABEL_13:
    v8 = v14;
    goto LABEL_8;
  }

  if (!a2)
  {
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1ED4CBDE8, 4294954516, "<< FFRRemoteXPC >>", 8562, v9, a7, a8);
    goto LABEL_13;
  }

  ShouldConnectToMediaparserdForFileParsing = FigRemote_ShouldConnectToMediaparserdForFileParsing();
  v13 = OUTLINED_FUNCTION_41_9(ShouldConnectToMediaparserdForFileParsing);
  v14 = remoteFormatReaderClient_EnsureClientEstablishedAndCopyRemoteClient(v13, &cf);
  if (v14)
  {
    goto LABEL_13;
  }

  v14 = OUTLINED_FUNCTION_81_2(v14, v15, v16);
  if (v14)
  {
    goto LABEL_13;
  }

  xpc_dictionary_set_uint64(xdict, "OtherProcessObjectID", a1);
  v17 = cf;
  OUTLINED_FUNCTION_2_22();
  v18 = FigXPCRemoteClientSendSyncMessageCreatingReply();
  if (v18)
  {
    v8 = v18;
    if (!v17)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  uint64 = xpc_dictionary_get_uint64(v32, *MEMORY[0x1E69615A0]);
  v20 = FigFormatReaderXPCRemoteRetainCopiedFormatReader(uint64, 0, &v31);
  v28 = OUTLINED_FUNCTION_22_14(v20, v21, v22, v23, v24, v25, v26, v27, cf, v31);
  if (v8)
  {
    if (v28)
    {
      CFRelease(v28);
    }
  }

  else
  {
    *a2 = v28;
    v31 = 0;
  }

LABEL_8:
  v17 = cf;
  if (cf)
  {
LABEL_9:
    CFRelease(v17);
  }

LABEL_10:
  FigXPCRelease();
  FigXPCRelease();
  return v8;
}

uint64_t FigFormatReaderXPCRemoteCopyFormatReaderForObjectIDFromMediaserverd(uint64_t a1, void *a2)
{
  v24 = 0;
  xdict = 0;
  cf = 0;
  v23 = 0;
  if (!a1)
  {
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1ED4CBDE8, 4294954516, "<< FFRRemoteXPC >>", 8605, v3);
LABEL_13:
    v2 = v6;
    goto LABEL_8;
  }

  if (!a2)
  {
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1ED4CBDE8, 4294954516, "<< FFRRemoteXPC >>", 8606, v3);
    goto LABEL_13;
  }

  v6 = remoteFormatReaderClient_EnsureClientEstablishedAndCopyRemoteClient(0, &cf);
  if (v6)
  {
    goto LABEL_13;
  }

  v6 = OUTLINED_FUNCTION_81_2(v6, v7, v8);
  if (v6)
  {
    goto LABEL_13;
  }

  xpc_dictionary_set_uint64(xdict, "OtherProcessObjectID", a1);
  v9 = cf;
  OUTLINED_FUNCTION_2_22();
  v10 = FigXPCRemoteClientSendSyncMessageCreatingReply();
  if (v10)
  {
    v2 = v10;
    if (!v9)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  uint64 = xpc_dictionary_get_uint64(v24, *MEMORY[0x1E69615A0]);
  v12 = FigFormatReaderXPCRemoteRetainCopiedPlaybackProcessFormatReader(uint64, &v23);
  v20 = OUTLINED_FUNCTION_22_14(v12, v13, v14, v15, v16, v17, v18, v19, cf, v23);
  if (v2)
  {
    if (v20)
    {
      CFRelease(v20);
    }
  }

  else
  {
    *a2 = v20;
    v23 = 0;
  }

LABEL_8:
  v9 = cf;
  if (cf)
  {
LABEL_9:
    CFRelease(v9);
  }

LABEL_10:
  FigXPCRelease();
  FigXPCRelease();
  return v2;
}

uint64_t FigFormatReaderRemoteCreateForStreamReturningResults(const void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, CFTypeRef *a6, _DWORD *a7, CFTypeRef *a8)
{
  v33 = 0;
  xdict = 0;
  v31 = 0;
  v32 = 0;
  value = 0;
  cf = 0;
  v28 = 0;
  v26 = 0;
  v27 = 0;
  v25 = 0;
  if (!a1)
  {
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1ED4CBDE8, 4294954516, "<< FFRRemoteXPC >>", 8683, v8, a7, a8);
LABEL_42:
    v22 = ServerPID;
    goto LABEL_27;
  }

  if (!a5)
  {
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1ED4CBDE8, 4294954516, "<< FFRRemoteXPC >>", 8684, v8, a7, a8);
    goto LABEL_42;
  }

  DefaultRemoteClientSelector_PrefersRemote = remoteFormatReaderClient_GetDefaultRemoteClientSelector_PrefersRemote(a1, a2, a3, a4, a5, a6, a7, a8);
  ServerPID = remoteFormatReaderClient_EnsureClientEstablishedAndCopyRemoteClient(DefaultRemoteClientSelector_PrefersRemote, &v26);
  if (ServerPID)
  {
    goto LABEL_42;
  }

  ServerPID = remoteFormatReaderClient_CopyConnection(v26, 1, &v25);
  if (ServerPID)
  {
    goto LABEL_42;
  }

  v24 = a7;
  v17 = v25;
  if (FigServer_IsServerProcess())
  {
    ServerPID = FigXPCConnectionSetCustomServerTimeoutPerConnection();
    if (ServerPID)
    {
      goto LABEL_42;
    }
  }

  ServerPID = FigXPCCreateBasicMessage();
  if (ServerPID)
  {
    goto LABEL_42;
  }

  ServerPID = FigXPCRemoteClientGetServerPID();
  if (ServerPID)
  {
    goto LABEL_42;
  }

  ServerPID = FigXPCRemoteClientCopyMemoryOrigin();
  if (ServerPID)
  {
    goto LABEL_42;
  }

  ServerPID = FigByteStreamServerCreateByteStreamDetails(v27, v28, a1, &value);
  if (ServerPID)
  {
    goto LABEL_42;
  }

  xpc_dictionary_set_value(xdict, "ByteStreamDetails", value);
  ServerPID = FigXPCMessageSetCFDictionary();
  if (ServerPID)
  {
    goto LABEL_42;
  }

  ServerPID = FigXPCMessageSetCFDictionary();
  if (ServerPID)
  {
    goto LABEL_42;
  }

  ServerPID = CreateRemoteFormatReader(a3, &v32);
  if (ServerPID)
  {
    goto LABEL_42;
  }

  ServerPID = FigXPCConnectionSendSyncMessageCreatingReply();
  if (ServerPID)
  {
    goto LABEL_42;
  }

  uint64 = xpc_dictionary_get_uint64(v33, *MEMORY[0x1E69615A0]);
  v19 = v32;
  ServerPID = CommonFormatReaderObjectCompleteObjectSetup(v32, uint64, v17);
  if (ServerPID)
  {
    goto LABEL_42;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (xpc_dictionary_get_BOOL(v33, "AllowsPropertyCaching"))
  {
    ServerPID = SetupCommonFormatReaderPropertyCache((DerivedStorage + 24));
    if (ServerPID)
    {
      goto LABEL_42;
    }
  }

  ServerPID = FigXPCMessageCopyCFObject();
  if (ServerPID)
  {
    goto LABEL_42;
  }

  v21 = xpc_dictionary_get_uint64(v33, "ContainerLabelType");
  ServerPID = FigXPCMessageCopyCFArray();
  if (ServerPID)
  {
    goto LABEL_42;
  }

  if (a8)
  {
    *a8 = cf;
    cf = 0;
  }

  if (a6)
  {
    *a6 = v31;
    v31 = 0;
  }

  if (v24)
  {
    *v24 = v21;
  }

  v22 = 0;
  *(DerivedStorage + 40) = CFRetain(a1);
  *a5 = v19;
  v32 = 0;
LABEL_27:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v31)
  {
    CFRelease(v31);
  }

  if (v26)
  {
    CFRelease(v26);
  }

  if (v25)
  {
    CFRelease(v25);
  }

  if (v32)
  {
    CFRelease(v32);
  }

  if (v27)
  {
    CFRelease(v27);
  }

  FigXPCRelease();
  FigXPCRelease();
  FigXPCRelease();
  return v22;
}

CFMutableDictionaryRef *CommonFormatReaderObjectRemovePropertyFromCache(CFMutableDictionaryRef *result, const void *a2)
{
  if (*result)
  {
    v3 = result;
    FigSimpleMutexLock();
    CFDictionaryRemoveValue(*v3, a2);

    return FigSimpleMutexUnlock();
  }

  return result;
}

uint64_t remoteFormatReader_Finalize(uint64_t a1)
{
  CMBaseObjectGetDerivedStorage();
  OUTLINED_FUNCTION_279_0();
  v3 = *(v2 + 40);
  if (v3)
  {
    CFRelease(v3);
  }

  TeardownCommonFormatReaderPropertyCache(v1 + 24);
  if (*v1)
  {
    FigXPCConnectionDisassociateObject();
    if (!*(v1 + 16))
    {
      OUTLINED_FUNCTION_14_24();
      v4 = FigXPCCreateBasicMessage();
      if (!v4)
      {
        OUTLINED_FUNCTION_52_7(v4, v5, v6, v7, v8, v9, v10, v11, v15, v16);
      }
    }
  }

  v12 = *(v1 + 48);
  if (v12)
  {
    CFRelease(v12);
    *(v1 + 48) = 0;
  }

  v13 = *(v1 + 8);
  if (v13)
  {
    CFRelease(v13);
  }

  return FigXPCRelease();
}

double remoteFormatReader_CopyProperty(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, xpc_object_t xdict, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_47_5();
  a19 = v23;
  a20 = v24;
  OUTLINED_FUNCTION_74_5();
  a9 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (v20 && v21)
  {
    v26 = DerivedStorage;
    *v21 = 0;
    if (remoteFormatReader_GetObjectID(v22, &a9) || CommonFormatReaderObjectTryCopyPropertyFromCache((v26 + 24), v20, v21))
    {
      goto LABEL_23;
    }

    if (!CFEqual(v20, @"QuickTimeUserDataReader") && !CFEqual(v20, @"ISOUserDataReader") && !CFEqual(v20, @"FormatSpecificMetadataReader") && !CFEqual(v20, @"QuickTimeMetadataReader") && !CFEqual(v20, @"iTunesMetadataReader") && !CFEqual(v20, @"ID3MetadataReader") && !CFEqual(v20, @"VorbisCommentMetadataReader") && !CFEqual(v20, @"MetadataReader"))
    {
      if (CFEqual(v20, @"MetadataReaders"))
      {
        v38 = SendFormatReaderCopyMetadataReadersMessage();
      }

      else
      {
        v38 = SendFormatReaderCopyPropertyMessage(v22, a9, v20, v21);
      }

      if (v38)
      {
        goto LABEL_23;
      }

LABEL_34:
      CommonFormatReaderObjectStorePropertyInCache((v26 + 24), v20, *v21);
LABEL_23:
      OUTLINED_FUNCTION_860();
      return result;
    }

    OUTLINED_FUNCTION_570();
    v27 = CMBaseObjectGetDerivedStorage();
    v28 = FigXPCCreateBasicMessage();
    if (v28)
    {
      v34 = v28;
    }

    else
    {
      RemoteMetadataReader = FigXPCMessageSetCFString();
      if (RemoteMetadataReader || (v30 = OUTLINED_FUNCTION_73_3(), (RemoteMetadataReader = CreateRemoteMetadataReader(v30, v31)) != 0) || (OUTLINED_FUNCTION_2_22(), (RemoteMetadataReader = FigXPCConnectionSendSyncMessageCreatingReply()) != 0))
      {
        v34 = RemoteMetadataReader;
        v33 = a10;
LABEL_20:
        FigXPCRelease();
        FigXPCRelease();
        if (v33)
        {
          CFRelease(v33);
        }

        FigXPCConnectionKillServerOnTimeout();
        if (v34)
        {
          goto LABEL_23;
        }

        goto LABEL_34;
      }

      uint64 = xpc_dictionary_get_uint64(xdict, *MEMORY[0x1E69615A0]);
      v33 = a10;
      v34 = CommonFormatReaderObjectCompleteObjectSetup(a10, uint64, *(v27 + 8));
      if (v34)
      {
        goto LABEL_20;
      }

      *v21 = v33;
    }

    v33 = 0;
    goto LABEL_20;
  }

  OUTLINED_FUNCTION_429();
  OUTLINED_FUNCTION_860();

  return FigSignalErrorAtGM(v36);
}

uint64_t CommonFormatReaderObjectTryCopyPropertyFromCache(CFDictionaryRef *a1, const void *a2, void *a3)
{
  if (!*a1)
  {
    return 0;
  }

  FigSimpleMutexLock();
  if (CFDictionaryContainsKey(*a1, a2))
  {
    if (a3)
    {
      Value = CFDictionaryGetValue(*a1, a2);
      v7 = 0;
      if (Value && Value != *MEMORY[0x1E695E738])
      {
        v7 = CFRetain(Value);
      }

      *a3 = v7;
    }

    v8 = 1;
  }

  else
  {
    v8 = 0;
  }

  FigSimpleMutexUnlock();
  return v8;
}

uint64_t SendFormatReaderCopyMetadataReadersMessage()
{
  v4 = v3;
  OUTLINED_FUNCTION_27_14();
  OUTLINED_FUNCTION_570();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (FigXPCCreateBasicMessage() || (OUTLINED_FUNCTION_2_22(), FigXPCConnectionSendSyncMessageCreatingReply()))
  {
    OUTLINED_FUNCTION_332_0();
    goto LABEL_16;
  }

  value = xpc_dictionary_get_value(xdict, "ObjectIDArray");
  if (!value)
  {
    Mutable = 0;
LABEL_15:
    v4 = 0;
    v2 = 0;
    *v0 = Mutable;
LABEL_16:
    Mutable = 0;
    goto LABEL_17;
  }

  v7 = value;
  count = xpc_array_get_count(value);
  if (!count)
  {
    v4 = 0;
    Mutable = 0;
    v2 = 0;
    goto LABEL_17;
  }

  v9 = count;
  Mutable = CFArrayCreateMutable(v1, count, MEMORY[0x1E695E9C0]);
  if (!Mutable)
  {
    OUTLINED_FUNCTION_429();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v17, v18, xdict);
    OUTLINED_FUNCTION_332_0();
    goto LABEL_17;
  }

  if (v9 < 1)
  {
    goto LABEL_15;
  }

  v11 = 0;
  while (1)
  {
    uint64 = xpc_array_get_uint64(v7, v11);
    RemoteMetadataReader = CreateRemoteMetadataReader(v1, &v18);
    v4 = v18;
    if (RemoteMetadataReader)
    {
      break;
    }

    RemoteMetadataReader = CommonFormatReaderObjectCompleteObjectSetup(v18, uint64, *(DerivedStorage + 8));
    if (RemoteMetadataReader)
    {
      break;
    }

    v14 = OUTLINED_FUNCTION_182_1();
    CFArrayAppendValue(v14, v15);
    if (v4)
    {
      CFRelease(v4);
      v18 = 0;
    }

    if (v9 == ++v11)
    {
      goto LABEL_15;
    }
  }

  v2 = RemoteMetadataReader;
LABEL_17:
  FigXPCRelease();
  FigXPCRelease();
  if (v4)
  {
    CFRelease(v4);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  FigXPCConnectionKillServerOnTimeout();
  return v2;
}

uint64_t SendFormatReaderCopyPropertyMessage(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  CMBaseObjectGetDerivedStorage();
  v4 = FigXPCCreateBasicMessage();
  if (v4 || (v4 = FigXPCMessageSetCFString(), v4))
  {
    v5 = v4;
  }

  else
  {
    v5 = FigXPCConnectionSendSyncMessageCreatingReply();
    if (!v5)
    {
      v5 = FigXPCMessageCopyCFObject();
    }
  }

  FigXPCRelease();
  FigXPCRelease();
  FigXPCConnectionKillServerOnTimeout();
  return v5;
}

CFMutableDictionaryRef *CommonFormatReaderObjectStorePropertyInCache(CFMutableDictionaryRef *result, const void *a2, const void *a3)
{
  if (*result)
  {
    v4 = result;
    if (a3)
    {
      v5 = a3;
    }

    else
    {
      v5 = *MEMORY[0x1E695E738];
    }

    FigSimpleMutexLock();
    CFDictionarySetValue(*v4, a2, v5);

    return FigSimpleMutexUnlock();
  }

  return result;
}

uint64_t remoteMetadataReader_Finalize(uint64_t a1)
{
  CMBaseObjectGetDerivedStorage();
  OUTLINED_FUNCTION_279_0();
  if (*v2)
  {
    FigXPCConnectionDisassociateObject();
    if (!*(v1 + 16))
    {
      OUTLINED_FUNCTION_14_24();
      v3 = FigXPCCreateBasicMessage();
      if (!v3)
      {
        OUTLINED_FUNCTION_52_7(v3, v4, v5, v6, v7, v8, v9, v10, v13, v14);
      }
    }
  }

  v11 = *(v1 + 8);
  if (v11)
  {
    CFRelease(v11);
  }

  return FigXPCRelease();
}

void remoteMetadataReader_CopyProperty(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, CFTypeRef cf, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_47_5();
  a19 = v20;
  a20 = v21;
  v23 = v22;
  v25 = v24;
  a11 = 0;
  a12 = 0;
  cf = 0;
  a10 = 0;
  CMBaseObjectGetDerivedStorage();
  if (v25)
  {
    if (v23)
    {
      v26 = OUTLINED_FUNCTION_62_4();
      if (!remoteMetadataReader_GetObjectID(v26, v27))
      {
        OUTLINED_FUNCTION_2_22();
        if (!FigXPCCreateBasicMessage() && !FigXPCMessageSetCFString())
        {
          CMBaseObjectGetDerivedStorage();
          if (!FigXPCConnectionSendSyncMessageWithNoTimeoutCreatingReply() && !FigXPCMessageCopyCFObject())
          {
            if (CFEqual(v25, @"containerByteStream"))
            {
              UInt64 = FigCFNumberGetUInt64();
              if (!remoteSampleCursor_copyByteStreamTranslatedFromOutOfBandID(UInt64, UInt64, &cf, v29, v30, v31, v32, v33))
              {
                v34 = *v23;
                v35 = cf;
                *v23 = cf;
                if (v35)
                {
                  CFRetain(v35);
                }

                if (v34)
                {
                  CFRelease(v34);
                }
              }
            }
          }
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
    OUTLINED_FUNCTION_243();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
  }

  if (cf)
  {
    CFRelease(cf);
  }

  FigXPCRelease();
  FigXPCRelease();
  FigXPCConnectionKillServerOnTimeout();
  OUTLINED_FUNCTION_860();
}

uint64_t remoteFormatReader_GetTrackCount()
{
  OUTLINED_FUNCTION_180_1();
  OUTLINED_FUNCTION_570();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v3 = DerivedStorage;
  theArray = 0;
  if (v0)
  {
    if (CommonFormatReaderObjectTryCopyPropertyFromCache((DerivedStorage + 24), @"Cache_Tracks", &theArray))
    {
      Count = theArray;
      if (theArray)
      {
        Count = CFArrayGetCount(theArray);
      }

      v5 = 0;
LABEL_10:
      *v0 = Count;
      goto LABEL_11;
    }

    ObjectID = remoteFormatReader_GetObjectID(v1, &v10);
    if (!ObjectID)
    {
      ObjectID = FigXPCCreateBasicMessage();
      if (!ObjectID)
      {
        OUTLINED_FUNCTION_2_22();
        v5 = FigXPCConnectionSendSyncMessageCreatingReply();
        if (v5)
        {
          goto LABEL_11;
        }

        Count = xpc_dictionary_get_int64(xdict, "TrackCount");
        goto LABEL_10;
      }
    }
  }

  else
  {
    OUTLINED_FUNCTION_243();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", theArray, v10, xdict);
  }

  v5 = ObjectID;
LABEL_11:
  if (theArray)
  {
    CFRelease(theArray);
  }

  FigXPCRelease();
  FigXPCRelease();
  OUTLINED_FUNCTION_59_4(*(v3 + 8), v7, "remoteFormatReader_GetTrackCount");
  return v5;
}

uint64_t remoteFormatReader_EstablishCombinedDataRateProfileForTracks(uint64_t a1, uint64_t a2, void *a3, unsigned int a4, uint64_t a5)
{
  v14 = 0;
  xdict = 0;
  length = 0;
  v13 = 0;
  CMBaseObjectGetDerivedStorage();
  ObjectID = remoteFormatReader_GetObjectID(a1, &v13);
  if (!ObjectID)
  {
    ObjectID = FigXPCCreateBasicMessage();
    if (!ObjectID)
    {
      ObjectID = FigXPCMessageSetCFArray();
      if (!ObjectID)
      {
        xpc_dictionary_set_uint64(xdict, "ProfileBucketCount", a4);
        ObjectID = FigXPCConnectionSendSyncMessageCreatingReply();
        if (!ObjectID)
        {
          data = xpc_dictionary_get_data(v14, "DataRateProfile", &length);
          if (data)
          {
            if (length == 8 * a4)
            {
              memcpy(a3, data, length);
              if (*MEMORY[0x1E695FF58] == 1)
              {
                strncpy(__dst, "DataRateProfile", 8uLL);
                kdebug_trace();
              }

              ObjectID = FigXPCMessageGetCMTime();
            }

            else
            {
              OUTLINED_FUNCTION_239();
              FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
            }
          }

          else
          {
            OUTLINED_FUNCTION_239();
            FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
          }
        }
      }
    }
  }

  v10 = ObjectID;
  FigXPCRelease();
  FigXPCRelease();
  FigXPCConnectionKillServerOnTimeout();
  return v10;
}

void remoteFormatReader_copyTrackByIndexFromServer(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, CFTypeRef cf, uint64_t a10, xpc_object_t a11, xpc_object_t xdict, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_47_5();
  a19 = v21;
  a20 = v22;
  v24 = v23;
  v26 = v25;
  OUTLINED_FUNCTION_43_9();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v28 = OUTLINED_FUNCTION_73_3();
  if (!remoteFormatReader_GetObjectID(v28, v29))
  {
    if (FigXPCCreateBasicMessage() || (xpc_dictionary_set_int64(xdict, "TrackIndex", v26), v24) && (xpc_dictionary_set_BOOL(xdict, "TrackReaderDesired", 1), v30 = CFGetAllocator(v20), CreateRemoteTrackReader(v30, *(DerivedStorage + 40), &cf)) || (OUTLINED_FUNCTION_2_22(), FigXPCConnectionSendSyncMessageCreatingReply()) || (xpc_dictionary_get_int64(a11, "TrackID"), xpc_dictionary_get_uint64(a11, "MediaType"), xpc_dictionary_get_BOOL(a11, "AllowsPropertyCaching"), !v24) || (xpc_dictionary_get_uint64(a11, *MEMORY[0x1E69615A0]), CompleteTrackReaderCopy(), v32))
    {
      if (cf)
      {
        CFRelease(cf);
      }
    }

    else
    {
      *v24 = cf;
    }
  }

  FigXPCRelease();
  FigXPCRelease();
  OUTLINED_FUNCTION_59_4(*(DerivedStorage + 8), v31, "remoteFormatReader_copyTrackByIndexFromServer");
  OUTLINED_FUNCTION_860();
}

void CompleteTrackReaderCopy()
{
  OUTLINED_FUNCTION_845();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v12 = *v8;
  if (!FigXPCConnectionRetainCopiedObject())
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    *(DerivedStorage + 24) = v3;
    *(DerivedStorage + 28) = v1;
    if ((!v7 || !SetupCommonFormatReaderPropertyCache((DerivedStorage + 40))) && !CommonFormatReaderObjectCompleteObjectSetup(v12, v5, v11))
    {
      *v9 = v12;
    }
  }

  OUTLINED_FUNCTION_843();
}

uint64_t remoteTrackReader_Finalize(uint64_t a1)
{
  CMBaseObjectGetDerivedStorage();
  OUTLINED_FUNCTION_279_0();
  v3 = *(v2 + 56);
  if (v3)
  {
    CFRelease(v3);
  }

  v4 = *(v1 + 32);
  if (v4)
  {
    CFRelease(v4);
  }

  TeardownCommonFormatReaderPropertyCache(v1 + 40);
  if (*v1)
  {
    FigXPCConnectionDisassociateObject();
    if (!*(v1 + 16))
    {
      OUTLINED_FUNCTION_14_24();
      v5 = FigXPCCreateBasicMessage();
      if (!v5)
      {
        OUTLINED_FUNCTION_52_7(v5, v6, v7, v8, v9, v10, v11, v12, v15, v16);
      }
    }
  }

  v13 = *(v1 + 8);
  if (v13)
  {
    CFRelease(v13);
  }

  return FigXPCRelease();
}

uint64_t remoteTrackReader_CopyProperty()
{
  OUTLINED_FUNCTION_74_5();
  cf = 0;
  *v26 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!v0 || !v1)
  {
    OUTLINED_FUNCTION_429();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
    goto LABEL_37;
  }

  v5 = DerivedStorage;
  *v1 = 0;
  ObjectID = remoteTrackReader_GetObjectID(v3, v26);
  if (!ObjectID)
  {
    if (CommonFormatReaderObjectTryCopyPropertyFromCache((v5 + 40), v0, v1))
    {
LABEL_5:
      v7 = 0;
      goto LABEL_20;
    }

    if (CFEqual(v0, @"QuickTimeUserDataReader") || CFEqual(v0, @"ISOUserDataReader") || CFEqual(v0, @"QuickTimeMetadataReader"))
    {
      xdict = 0;
      v29 = 0;
      v27 = 0;
      v8 = CMBaseObjectGetDerivedStorage();
      v9 = FigXPCCreateBasicMessage();
      if (v9)
      {
        v7 = v9;
      }

      else
      {
        v10 = FigXPCMessageSetCFString();
        if (v10 || (v10 = CreateRemoteMetadataReader(v2, &v27), v10) || (OUTLINED_FUNCTION_16_14(), v10 = FigXPCConnectionSendSyncMessageCreatingReply(), v10))
        {
          v7 = v10;
          v12 = v27;
          goto LABEL_16;
        }

        uint64 = xpc_dictionary_get_uint64(xdict, *MEMORY[0x1E69615A0]);
        v12 = v27;
        v7 = CommonFormatReaderObjectCompleteObjectSetup(v27, uint64, *(v8 + 8));
        if (v7)
        {
LABEL_16:
          FigXPCRelease();
          FigXPCRelease();
          if (v12)
          {
            CFRelease(v12);
          }

          FigXPCConnectionKillServerOnTimeout();
LABEL_19:
          if (v7)
          {
            goto LABEL_20;
          }

LABEL_42:
          CommonFormatReaderObjectStorePropertyInCache((v5 + 40), v0, *v1);
          goto LABEL_5;
        }

        *v1 = v12;
      }

      v12 = 0;
      goto LABEL_16;
    }

    if (CFEqual(v0, @"MetadataReaders"))
    {
      MetadataItemArrayFromBinaryPListData = SendTrackReaderCopyMetadataReadersMessage();
      goto LABEL_40;
    }

    if (CFEqual(v0, @"EditCursorService"))
    {
      v21 = v26[0];
      v22 = v3;
      v23 = 1415930673;
    }

    else
    {
      if (!CFEqual(v0, @"SecondaryEditCursorService"))
      {
        if (CFEqual(v0, @"SupportsMetadataArrays"))
        {
          *v1 = CFRetain(*MEMORY[0x1E695E4D0]);
          goto LABEL_42;
        }

        if (CFEqual(v0, @"QuickTimeUserDataArray") || CFEqual(v0, @"ISOUserDataArray") || CFEqual(v0, @"QuickTimeMetadataArray") || CFEqual(v0, @"CommonMetadataArray"))
        {
          v7 = SendTrackReaderCopyPropertyMessage(v3, *v26, v0, &cf);
          if (v7 || !cf)
          {
            goto LABEL_19;
          }

          MetadataItemArrayFromBinaryPListData = FigRemote_CreateMetadataItemArrayFromBinaryPListData(cf, v2, 0, v1);
LABEL_40:
          v7 = MetadataItemArrayFromBinaryPListData;
          goto LABEL_19;
        }

        if (!CFEqual(v0, @"CaptionSampleCursorService"))
        {
          MetadataItemArrayFromBinaryPListData = SendTrackReaderCopyPropertyMessage(v3, *v26, v0, v1);
          goto LABEL_40;
        }

        SendTrackReaderCreateCursorServiceMessage(v3, v26[0], 1415799667, v2, v1, v17, v18, v19, v24, cf, *v26, v27, xdict, v29, v30, v31, v32, v33, v34, v35);
        if (!ObjectID)
        {
          goto LABEL_42;
        }

        goto LABEL_37;
      }

      v21 = v26[0];
      v23 = 1415930674;
      v22 = v3;
    }

    MetadataItemArrayFromBinaryPListData = SendTrackReaderCreateEditCursorServiceMessage(v22, v21, v23, v2, v1, v14, v15, v16, v24, cf, *v26, v27, xdict, v29, v30, v31, v32, v33, v34, v35);
    goto LABEL_40;
  }

LABEL_37:
  v7 = ObjectID;
LABEL_20:
  if (cf)
  {
    CFRelease(cf);
  }

  return v7;
}

uint64_t SendTrackReaderCopyMetadataReadersMessage()
{
  v4 = v3;
  OUTLINED_FUNCTION_27_14();
  OUTLINED_FUNCTION_570();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (FigXPCCreateBasicMessage() || (OUTLINED_FUNCTION_2_22(), FigXPCConnectionSendSyncMessageCreatingReply()))
  {
    OUTLINED_FUNCTION_332_0();
    goto LABEL_16;
  }

  value = xpc_dictionary_get_value(xdict, "ObjectIDArray");
  if (!value)
  {
    Mutable = 0;
LABEL_15:
    v4 = 0;
    v2 = 0;
    *v0 = Mutable;
LABEL_16:
    Mutable = 0;
    goto LABEL_17;
  }

  v7 = value;
  count = xpc_array_get_count(value);
  if (!count)
  {
    v4 = 0;
    Mutable = 0;
    v2 = 0;
    goto LABEL_17;
  }

  v9 = count;
  Mutable = CFArrayCreateMutable(v1, count, MEMORY[0x1E695E9C0]);
  if (!Mutable)
  {
    OUTLINED_FUNCTION_429();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v17, v18, xdict);
    OUTLINED_FUNCTION_332_0();
    goto LABEL_17;
  }

  if (v9 < 1)
  {
    goto LABEL_15;
  }

  v11 = 0;
  while (1)
  {
    uint64 = xpc_array_get_uint64(v7, v11);
    RemoteMetadataReader = CreateRemoteMetadataReader(v1, &v18);
    v4 = v18;
    if (RemoteMetadataReader)
    {
      break;
    }

    RemoteMetadataReader = CommonFormatReaderObjectCompleteObjectSetup(v18, uint64, *(DerivedStorage + 8));
    if (RemoteMetadataReader)
    {
      break;
    }

    v14 = OUTLINED_FUNCTION_182_1();
    CFArrayAppendValue(v14, v15);
    if (v4)
    {
      CFRelease(v4);
      v18 = 0;
    }

    if (v9 == ++v11)
    {
      goto LABEL_15;
    }
  }

  v2 = RemoteMetadataReader;
LABEL_17:
  FigXPCRelease();
  FigXPCRelease();
  if (v4)
  {
    CFRelease(v4);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  FigXPCConnectionKillServerOnTimeout();
  return v2;
}

uint64_t SendTrackReaderCopyPropertyMessage(uint64_t a1, uint64_t a2, const void *a3, void *a4)
{
  CMBaseObjectGetDerivedStorage();
  v6 = FigXPCCreateBasicMessage();
  if (v6)
  {
    goto LABEL_8;
  }

  v6 = FigXPCMessageSetCFString();
  if (v6)
  {
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_2_22();
  v6 = FigXPCConnectionSendSyncMessageCreatingReply();
  if (v6)
  {
    goto LABEL_8;
  }

  if (!CFEqual(a3, @"TrackFormatDescriptionArray"))
  {
    v6 = FigXPCMessageCopyCFObject();
LABEL_8:
    v7 = v6;
    goto LABEL_9;
  }

  v7 = FigXPCMessageCopyFormatDescriptionArray();
  if (!v7)
  {
    *a4 = 0;
  }

LABEL_9:
  FigXPCRelease();
  FigXPCRelease();
  FigXPCConnectionKillServerOnTimeout();
  return v7;
}

void SendTrackReaderCreateCursorServiceMessage(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, xpc_object_t xdict, uint64_t a11, CFTypeRef cf, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_47_5();
  v21 = v20;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!FigXPCCreateBasicMessage())
  {
    v23 = *(DerivedStorage + 32);
    v24 = *(DerivedStorage + 56);
    FigSampleCursorServiceGetClassID();
    if (!CMDerivedObjectCreate())
    {
      v25 = CMBaseObjectGetDerivedStorage();
      if (v24)
      {
        v26 = CFRetain(v24);
      }

      else
      {
        v26 = 0;
      }

      *(v25 + 24) = v26;
      if (v23)
      {
        v27 = CFRetain(v23);
      }

      else
      {
        v27 = 0;
      }

      *(v25 + 32) = v27;
      if (!FigXPCConnectionSendSyncMessageCreatingReply())
      {
        uint64 = xpc_dictionary_get_uint64(0, *MEMORY[0x1E69615A0]);
        if (!CommonFormatReaderObjectCompleteObjectSetup(0, uint64, *(DerivedStorage + 8)))
        {
          *v21 = 0;
        }
      }
    }
  }

  FigXPCRelease();
  FigXPCRelease();
  OUTLINED_FUNCTION_59_4(*(DerivedStorage + 8), v29, "SendTrackReaderCreateCursorServiceMessage");
  OUTLINED_FUNCTION_860();
}

uint64_t remoteEditCursorService_Finalize(uint64_t a1)
{
  CMBaseObjectGetDerivedStorage();
  OUTLINED_FUNCTION_279_0();
  if (*v2)
  {
    FigXPCConnectionDisassociateObject();
    if (!*(v1 + 16))
    {
      OUTLINED_FUNCTION_14_24();
      v3 = FigXPCCreateBasicMessage();
      if (!v3)
      {
        OUTLINED_FUNCTION_52_7(v3, v4, v5, v6, v7, v8, v9, v10, v13, v14);
      }
    }
  }

  v11 = *(v1 + 8);
  if (v11)
  {
    CFRelease(v11);
  }

  return FigXPCRelease();
}

uint64_t remoteEditCursor_Finalize(uint64_t a1)
{
  CMBaseObjectGetDerivedStorage();
  OUTLINED_FUNCTION_279_0();
  if (*v2)
  {
    FigXPCConnectionDisassociateObject();
    if (!*(v1 + 16))
    {
      v3 = FigXPCCreateBasicMessage();
      if (!v3)
      {
        OUTLINED_FUNCTION_52_7(v3, v4, v5, v6, v7, v8, v9, v10, v13, v14);
      }
    }
  }

  v11 = *(v1 + 8);
  if (v11)
  {
    CFRelease(v11);
  }

  return FigXPCRelease();
}

uint64_t remoteEditCursor_Step(uint64_t a1, int a2)
{
  v7 = 0;
  CMBaseObjectGetDerivedStorage();
  ObjectID = remoteEditCursor_GetObjectID(a1, &v7);
  if (ObjectID)
  {
    v5 = ObjectID;
  }

  else
  {
    v5 = FigXPCCreateBasicMessage();
    if (!v5)
    {
      xpc_dictionary_set_int64(0, "EditCursorStepCount", a2);
      v5 = FigXPCConnectionSendSyncMessage();
    }
  }

  FigXPCRelease();
  FigXPCConnectionKillServerOnTimeout();
  return v5;
}

uint64_t remoteEditCursor_GetEditSegment()
{
  OUTLINED_FUNCTION_180_1();
  OUTLINED_FUNCTION_570();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  ObjectID = remoteEditCursor_GetObjectID(v0, &v16);
  if (ObjectID || (OUTLINED_FUNCTION_2_22(), ObjectID = FigXPCCreateBasicMessage(), ObjectID))
  {
    CMTimeMapping = ObjectID;
  }

  else
  {
    CMTimeMapping = OUTLINED_FUNCTION_61_6(*(DerivedStorage + 8), v3, v4, v5, v6, v7, v8, v9, v13, v14, v15);
    if (!CMTimeMapping)
    {
      CMTimeMapping = FigXPCMessageGetCMTimeMapping();
    }
  }

  FigXPCRelease();
  FigXPCRelease();
  OUTLINED_FUNCTION_59_4(*(DerivedStorage + 8), v11, "remoteEditCursor_GetEditSegment");
  return CMTimeMapping;
}

uint64_t remoteSampleCursorService_Finalize(uint64_t a1)
{
  CMBaseObjectGetDerivedStorage();
  OUTLINED_FUNCTION_279_0();
  v3 = *(v2 + 24);
  if (v3)
  {
    CFRelease(v3);
    *(v1 + 24) = 0;
  }

  v4 = *(v1 + 32);
  if (v4)
  {
    CFRelease(v4);
    *(v1 + 32) = 0;
  }

  if (*v1)
  {
    FigXPCConnectionDisassociateObject();
    if (!*(v1 + 16))
    {
      OUTLINED_FUNCTION_14_24();
      v5 = FigXPCCreateBasicMessage();
      if (!v5)
      {
        OUTLINED_FUNCTION_52_7(v5, v6, v7, v8, v9, v10, v11, v12, v15, v16);
      }
    }
  }

  v13 = *(v1 + 8);
  if (v13)
  {
    CFRelease(v13);
    *(v1 + 8) = 0;
  }

  return FigXPCRelease();
}

uint64_t CreateCursorWithPresentationTimeStamp(const void *a1, __int128 *a2, uint64_t a3, int a4, void *a5, BOOL *a6, BOOL *a7)
{
  v31 = 0;
  v32 = 0;
  v30 = 0;
  v29 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v27 = 0;
  cf = 0;
  v26 = 0;
  if (!a5)
  {
    OUTLINED_FUNCTION_429();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
LABEL_29:
    v21 = ObjectID;
    goto LABEL_18;
  }

  ObjectID = remoteSampleCursorService_GetObjectID(a1, &v32);
  if (ObjectID)
  {
    goto LABEL_29;
  }

  ObjectID = FigXPCCreateBasicMessage();
  if (ObjectID)
  {
    goto LABEL_29;
  }

  if (remoteFigSampleCursor_getEventLinkAssertionFromCurrentThread(v25))
  {
    xpc_dictionary_set_BOOL(v31, "UseSimpleCache", 1);
  }

  v23[3] = *a2;
  v24 = *(a2 + 2);
  ObjectID = FigXPCMessageSetCMTime();
  if (ObjectID)
  {
    goto LABEL_29;
  }

  xpc_dictionary_set_BOOL(v31, "SampleCursorAllowCreationAfterPTS", a4 != 0);
  ObjectID = FigXPCConnectionCopyMemoryOriginForConnectedProcess();
  if (ObjectID)
  {
    goto LABEL_29;
  }

  ObjectID = FigXPCConnectionCopyMemoryRecipientForConnectedProcess();
  if (ObjectID)
  {
    goto LABEL_29;
  }

  ObjectID = FigXPCConnectionSendSyncMessageCreatingReply();
  if (ObjectID)
  {
    goto LABEL_29;
  }

  uint64 = xpc_dictionary_get_uint64(v30, *MEMORY[0x1E69615A0]);
  if (!uint64)
  {
    OUTLINED_FUNCTION_429();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
    goto LABEL_29;
  }

  v16 = uint64;
  v17 = xpc_dictionary_get_uint64(v30, "SampleCursorOptionalMethods");
  v18 = CFGetAllocator(a1);
  ObjectID = FigServerSampleCursorSubscriptionCreate(v18, DerivedStorage[1], v16, DerivedStorage[3], &cf);
  if (ObjectID)
  {
    goto LABEL_29;
  }

  OUTLINED_FUNCTION_47_6();
  v19 = CFGetAllocator(a1);
  ObjectID = CreateRemoteSampleCursor(v19, DerivedStorage[4], v17, v23, cf, v27, v26, &v29);
  if (ObjectID)
  {
    goto LABEL_29;
  }

  v20 = v29;
  remoteSampleCursor_updateSimpleCache(v29, v30);
  if (ObjectID)
  {
    goto LABEL_29;
  }

  remoteSampleCursor_updateUpcomingSamplesCache(v20, v30);
  *a5 = v20;
  v29 = 0;
  if (a6)
  {
    *a6 = xpc_dictionary_get_BOOL(v30, "SampleCursorCreatedBeforeStart");
  }

  v21 = 0;
  if (a7)
  {
    *a7 = xpc_dictionary_get_BOOL(v30, "SampleCursorCreatedAfterEnd");
  }

LABEL_18:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v29)
  {
    CFRelease(v29);
  }

  FigXPCRelease();
  FigXPCRelease();
  if (v27)
  {
    CFRelease(v27);
  }

  if (v26)
  {
    CFRelease(v26);
  }

  FigXPCConnectionKillServerOnTimeout();
  return v21;
}

uint64_t remoteFigSampleCursor_getEventLinkAssertionFromCurrentThread(uint64_t *a1)
{
  if (qword_1EAF19468 != -1)
  {
    dispatch_once(&qword_1EAF19468, &__block_literal_global_55);
  }

  if (!remoteSampleCursor_useEventLink_prefersEventLink)
  {
    return 0;
  }

  result = _MergedGlobals_157;
  if (_MergedGlobals_157)
  {
    v3 = MEMORY[0x19A8D3620]();
    result = v3 != 0;
  }

  else
  {
    v3 = 0;
  }

  *a1 = v3;
  return result;
}

double remoteSampleCursor_updateSimpleCache(uint64_t a1, void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (remoteFigSampleCursor_getEventLinkAssertionFromCurrentThread(&v16))
  {
    if (a2)
    {
      length = 0;
      data = xpc_dictionary_get_data(a2, "SampleCursorSyncInfo", &length);
      if (data && length == 8)
      {
        v6 = data;
        __n = 0;
        v7 = xpc_dictionary_get_data(a2, "SampleCursorSampleTimingInfo", &__n);
        if (v7 && __n == 72)
        {
          v8 = v7;
          FigSimpleMutexLock();
          memcpy((DerivedStorage + 152), v6, length);
          memcpy((DerivedStorage + 80), v8, __n);
          *(DerivedStorage + 160) = 0u;
          *(DerivedStorage + 176) = 0u;
          *(DerivedStorage + 192) = 0u;
          v9 = MEMORY[0x1E6960C98];
          v10 = *(MEMORY[0x1E6960C98] + 16);
          *(DerivedStorage + 212) = *MEMORY[0x1E6960C98];
          *(DerivedStorage + 208) = 0;
          *(DerivedStorage + 228) = v10;
          *(DerivedStorage + 244) = *(v9 + 32);
          v11 = MEMORY[0x1E6960C70];
          v12 = *MEMORY[0x1E6960C70];
          *(DerivedStorage + 260) = *MEMORY[0x1E6960C70];
          v13 = *(v11 + 16);
          *(DerivedStorage + 276) = v13;
          *(DerivedStorage + 300) = v13;
          *(DerivedStorage + 284) = v12;
          *(DerivedStorage + 308) = 0;
          *(DerivedStorage + 312) = v12;
          *(DerivedStorage + 328) = v13;
          *(DerivedStorage + 336) = v12;
          *(DerivedStorage + 352) = v13;
          FigSimpleMutexUnlock();
        }

        else
        {
          OUTLINED_FUNCTION_303();
          return FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
        }
      }

      else
      {
        OUTLINED_FUNCTION_303();
        return FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
      }
    }

    else
    {
      OUTLINED_FUNCTION_303();

      return FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
    }
  }

  return result;
}

uint64_t remoteSampleCursor_updateUpcomingSamplesCache(const void *a1, void *Instance)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v38 = 0;
  v39 = 0;
  v36 = 0;
  cf = 0;
  v34 = 0;
  v35 = 0;
  v5 = CFGetAllocator(a1);
  v33 = 0;
  FigPartialSampleTableAccessorDestroy(*(DerivedStorage + 24));
  v6 = *(DerivedStorage + 56);
  *(DerivedStorage + 56) = 0;
  v7 = *(DerivedStorage + 16);
  *(DerivedStorage + 16) = 0;
  *(DerivedStorage + 24) = 0;
  *(DerivedStorage + 32) = 0;
  if (qword_1EAF19470 != -1)
  {
    dispatch_once(&qword_1EAF19470, &__block_literal_global_82);
  }

  OUTLINED_FUNCTION_17_21();
  if (!v8 || remoteFigSampleCursor_getEventLinkAssertionFromCurrentThread(&v33))
  {
    Instance = 0;
    v23 = 0;
    goto LABEL_36;
  }

  if (!Instance)
  {
    OUTLINED_FUNCTION_111();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v27, v28, v29);
    goto LABEL_56;
  }

  v46 = 0;
  v47 = &v46;
  v48 = 0x2000000000;
  v49 = 0;
  v9 = CMBaseObjectGetDerivedStorage();
  if (xpc_dictionary_get_array(Instance, "SampleCursorFormatDescriptionArray"))
  {
    OUTLINED_FUNCTION_19_23();
    v41 = 0x40000000;
    v42 = __remoteSampleCursor_registerNewFormatDescriptionsFromMessage_block_invoke;
    v43 = &unk_1E7486518;
    v44 = &v46;
    v45 = v9;
    xpc_array_apply(v10, applier);
  }

  _Block_object_dispose(&v46, 8);
  v46 = 0;
  v47 = &v46;
  v48 = 0x2000000000;
  v49 = 0;
  v11 = CMBaseObjectGetDerivedStorage();
  if (xpc_dictionary_get_array(Instance, "SampleCursorDataSourceArray"))
  {
    OUTLINED_FUNCTION_19_23();
    v41 = 0x40000000;
    v42 = __remoteSampleCursor_registerNewDataSourcesFromMessage_block_invoke;
    v43 = &unk_1E7486540;
    v44 = &v46;
    v45 = v11;
    xpc_array_apply(v12, applier);
  }

  _Block_object_dispose(&v46, 8);
  OUTLINED_FUNCTION_182_1();
  BlockBufferData = FigXPCMessageCreateBlockBufferData();
  if (!BlockBufferData)
  {
    int64 = xpc_dictionary_get_int64(Instance, "SampleCursorSampleIndex");
    v28 = 0;
    v29 = remoteSampleCursor_copyByteStreamTranslatedFromOutOfBandID;
    v30 = remoteSampleCursor_copyDataSourceTranslatedFromOutOfBandID;
    v31 = remoteSampleCursor_copyFormatDescriptionTranslatedFromOutOfBandID;
    v32 = remoteSampleCursor_copySampleDependencyAttributesFromOutOfBandID;
    OUTLINED_FUNCTION_182_1();
    BlockBufferData = FigXPCMessageCreateBlockBufferData();
    if (!BlockBufferData)
    {
      if (!v36 || (BlockBufferData = FigRemote_CreateCFTypeFromSerializedAtomDataBlockBuffer(), !BlockBufferData))
      {
        v15 = cf;
        v16 = *(DerivedStorage + 40);
        if (qword_1EAF19478 != -1)
        {
          dispatch_once_f(&qword_1EAF19478, 0, registerRemoteSampleCursorOutOfBandStorageType);
        }

        Instance = _CFRuntimeCreateInstance();
        if (Instance)
        {
          if (v15)
          {
            v17 = CFRetain(v15);
          }

          else
          {
            v17 = 0;
          }

          Instance[3] = v17;
          if (v16)
          {
            v18 = CFRetain(v16);
          }

          else
          {
            v18 = 0;
          }

          Instance[2] = v18;
LABEL_24:
          AccessorAtIndex = FigPartialSampleTableCreateFromBlockBufferUsingTranslationCallbacks(v5, v39, &v28, Instance, &v38);
          if (!AccessorAtIndex)
          {
            AccessorAtIndex = FigPartialSampleTableCreateAccessorAtIndex(v38, int64, &v34);
            if (!AccessorAtIndex)
            {
              v21 = (DerivedStorage + 48);
              v20 = *(DerivedStorage + 48);
              if (v20)
              {
LABEL_32:
                AccessorAtIndex = FigPartialSampleTableBrokerOfferNewPartialSampleTable(v20, v38);
                if (!AccessorAtIndex)
                {
                  AccessorAtIndex = FigPartialSampleTableBrokerCopyInterestTokenForAdjacentTables(*v21, v38, &v35);
                  if (!AccessorAtIndex)
                  {
                    v22 = v35;
LABEL_35:
                    v23 = 0;
                    v24 = v38;
                    v38 = 0;
                    v25 = v34;
                    *(DerivedStorage + 16) = v24;
                    *(DerivedStorage + 24) = v25;
                    v34 = 0;
                    v35 = 0;
                    *(DerivedStorage + 56) = v22;
                    goto LABEL_36;
                  }
                }

                goto LABEL_56;
              }

              if (qword_1EAF19488 != -1)
              {
                dispatch_once(&qword_1EAF19488, &__block_literal_global_150);
              }

              if (!byte_1ED4CA101 || (AccessorAtIndex = FigPartialSampleTableBrokerCreate(v5, (DerivedStorage + 48)), !AccessorAtIndex))
              {
                v20 = *v21;
                if (!*v21)
                {
                  v22 = 0;
                  goto LABEL_35;
                }

                goto LABEL_32;
              }
            }
          }

LABEL_56:
          v23 = AccessorAtIndex;
          goto LABEL_36;
        }

        OUTLINED_FUNCTION_111();
        FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v27, v28, v29);
        if (!BlockBufferData)
        {
          goto LABEL_24;
        }
      }
    }
  }

  v23 = BlockBufferData;
  Instance = 0;
LABEL_36:
  if (cf)
  {
    CFRelease(cf);
  }

  if (Instance)
  {
    CFRelease(Instance);
  }

  if (v38)
  {
    CFRelease(v38);
  }

  if (v39)
  {
    CFRelease(v39);
  }

  if (v35)
  {
    CFRelease(v35);
  }

  if (v6)
  {
    CFRelease(v6);
  }

  if (v7)
  {
    CFRelease(v7);
  }

  if (v36)
  {
    CFRelease(v36);
  }

  FigPartialSampleTableAccessorDestroy(v34);
  return v23;
}

int64_t remoteSampleCursor_CompareInDecodeOrder()
{
  OUTLINED_FUNCTION_187();
  v45 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v3 = CMBaseObjectGetDerivedStorage();
  v42 = 0;
  if (!v1)
  {
    OUTLINED_FUNCTION_111();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", p_time2, v28, v29);
    goto LABEL_20;
  }

  if (!int64)
  {
    OUTLINED_FUNCTION_111();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", p_time2, v28, v29);
    goto LABEL_12;
  }

  v4 = v3;
  if (!remoteFigSampleCursor_getEventLinkAssertionFromCurrentThread(&v41))
  {
    if (qword_1EAF19470 != -1)
    {
      dispatch_once(&qword_1EAF19470, &__block_literal_global_82);
    }

    OUTLINED_FUNCTION_17_21();
    if (v9)
    {
      memset(&v40, 0, sizeof(v40));
      *v38 = 0u;
      v39 = 0u;
      *v37 = 0u;
      v35 = 0;
      *v33 = 0u;
      v34 = 0u;
      *xdict = 0u;
      v32 = 0u;
      SampleTiming = FigPartialSampleTableAccessorGetSampleTiming(*(DerivedStorage + 24), v37);
      if (!SampleTiming)
      {
        SampleTiming = FigPartialSampleTableAccessorGetSampleTiming(*(v4 + 24), xdict);
        if (!SampleTiming)
        {
          time1 = v40;
          *&time2.value = v34;
          time2.epoch = v35;
          p_time1 = &time1;
          goto LABEL_11;
        }
      }

      v12 = SampleTiming;
      OUTLINED_FUNCTION_33_12();
      if (!v13)
      {
        HIDWORD(v30) = 0;
        BYTE3(v30) = 0;
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        v15 = os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
        if (OUTLINED_FUNCTION_115_1(v15))
        {
          LODWORD(time2.value) = 136315394;
          *(&time2.value + 4) = "remoteSampleCursor_CompareInDecodeOrder";
          LOWORD(time2.flags) = 1024;
          *(&time2.flags + 2) = v12;
          OUTLINED_FUNCTION_25_17();
          p_time2 = &time2;
          OUTLINED_FUNCTION_108();
          _os_log_send_and_compose_impl(v16, v17, v18, v19, v20, os_log_and_send_and_compose_flags_and_os_log_type, 0, v21);
          OUTLINED_FUNCTION_612();
        }

        OUTLINED_FUNCTION_16();
        OUTLINED_FUNCTION_414(v22, v23, v24, v25, v26);
      }
    }

    if (!remoteSampleCursor_internalEnsureMatchingAndIndependentThenPerformOperation(v1, int64, 1935895920, &v42, &__block_literal_global_79, v6, v7, v8, p_time2, v28, v29, v30, xdict[0], xdict[1], v32, *(&v32 + 1), v33[0], v33[1], v34, *(&v34 + 1), v35, v36, v37[0], v37[1], v38[0], v38[1]))
    {
      int64 = xpc_dictionary_get_int64(v42, "SampleCursorComparisonResult");
      goto LABEL_12;
    }

LABEL_20:
    int64 = 0;
    goto LABEL_12;
  }

  FigSimpleMutexLock();
  time1 = *(DerivedStorage + 128);
  FigSimpleMutexUnlock();
  FigSimpleMutexLock();
  *v37 = *(v4 + 128);
  v38[0] = *(v4 + 144);
  FigSimpleMutexUnlock();
  *xdict = *&time1.value;
  *&v32 = time1.epoch;
  *&time2.value = *v37;
  time2.epoch = v38[0];
  p_time1 = xdict;
LABEL_11:
  int64 = CMTimeCompare(p_time1, &time2);
LABEL_12:
  FigXPCRelease();
  return int64;
}

double remoteSampleCursor_GetPresentationTimeStamp()
{
  OUTLINED_FUNCTION_187();
  v69 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  memcpy(__dst, MEMORY[0x1E6960CF0], sizeof(__dst));
  if (v1)
  {
    if (remoteFigSampleCursor_getEventLinkAssertionFromCurrentThread(&v65))
    {
      v3 = FigSimpleMutexLock();
      OUTLINED_FUNCTION_54_8(v3, v4, v5, v6, v7, v8, v9, v10, v54, v56, v58, v60, v65);
      SampleTiming = FigSimpleMutexUnlock();
LABEL_8:
      OUTLINED_FUNCTION_67_6(SampleTiming, v12, v13, v14, v15, v16, v17, v18, v19, v54, v56, v58, v60, v65, __dst[0], __dst[1], __dst[2], v20);
      *(v0 + 16) = v22;
LABEL_9:
      OUTLINED_FUNCTION_46_6();
      return result;
    }

    if (qword_1EAF19470 != -1)
    {
      dispatch_once(&qword_1EAF19470, &__block_literal_global_82);
    }

    OUTLINED_FUNCTION_17_21();
    if (v21)
    {
      SampleTiming = FigPartialSampleTableAccessorGetSampleTiming(*(DerivedStorage + 24), __dst);
      if (!SampleTiming)
      {
        goto LABEL_8;
      }

      OUTLINED_FUNCTION_33_12();
      if (!v32)
      {
        v33 = OUTLINED_FUNCTION_12_28(v24, v25, v26, v27, v28, v29, v30, v31, v54, v56, v58, v60, SBYTE2(v60), SBYTE3(v60), SHIDWORD(v60));
        v41 = OUTLINED_FUNCTION_19_4(v33, v34, v35, v36, v37, v38, v39, v40, v55, v57, v59, v61, v62, v63, v64);
        if (OUTLINED_FUNCTION_115_1(v41))
        {
          v67 = 136315394;
          OUTLINED_FUNCTION_5_54();
          OUTLINED_FUNCTION_7_1(v42, v43, v68, v44, &dword_1962D5000, v45, v46, "<< FFRRemoteXPC >> %s: Encountered err %d when accessing partial sample table");
          OUTLINED_FUNCTION_612();
        }

        OUTLINED_FUNCTION_16();
        OUTLINED_FUNCTION_414(v47, v48, v49, v50, v51);
      }
    }

    OUTLINED_FUNCTION_65_5();
    SampleTiming = remoteSampleCursor_getSampleTimingInfoFromServer();
    if (SampleTiming)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  OUTLINED_FUNCTION_243();
  OUTLINED_FUNCTION_46_6();

  return FigSignalErrorAtGM(v52);
}

double remoteSampleCursor_GetDecodeTimeStamp()
{
  OUTLINED_FUNCTION_187();
  v69 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  memcpy(__dst, MEMORY[0x1E6960CF0], sizeof(__dst));
  if (v1)
  {
    if (remoteFigSampleCursor_getEventLinkAssertionFromCurrentThread(&v65))
    {
      v3 = FigSimpleMutexLock();
      OUTLINED_FUNCTION_54_8(v3, v4, v5, v6, v7, v8, v9, v10, v54, v56, v58, v60, v65);
      SampleTiming = FigSimpleMutexUnlock();
    }

    else
    {
      if (qword_1EAF19470 != -1)
      {
        dispatch_once(&qword_1EAF19470, &__block_literal_global_82);
      }

      OUTLINED_FUNCTION_17_21();
      if (v21)
      {
        SampleTiming = FigPartialSampleTableAccessorGetSampleTiming(*(DerivedStorage + 24), __dst);
        if (!SampleTiming)
        {
          goto LABEL_8;
        }

        OUTLINED_FUNCTION_33_12();
        if (!v32)
        {
          v33 = OUTLINED_FUNCTION_12_28(v24, v25, v26, v27, v28, v29, v30, v31, v54, v56, v58, v60, SBYTE2(v60), SBYTE3(v60), SHIDWORD(v60));
          v41 = OUTLINED_FUNCTION_19_4(v33, v34, v35, v36, v37, v38, v39, v40, v55, v57, v59, v61, v62, v63, v64);
          if (OUTLINED_FUNCTION_115_1(v41))
          {
            v67 = 136315394;
            OUTLINED_FUNCTION_5_54();
            OUTLINED_FUNCTION_7_1(v42, v43, v68, v44, &dword_1962D5000, v45, v46, "<< FFRRemoteXPC >> %s: Encountered err %d when accessing partial sample table");
            OUTLINED_FUNCTION_612();
          }

          OUTLINED_FUNCTION_16();
          OUTLINED_FUNCTION_414(v47, v48, v49, v50, v51);
        }
      }

      OUTLINED_FUNCTION_65_5();
      SampleTiming = remoteSampleCursor_getSampleTimingInfoFromServer();
      if (SampleTiming)
      {
LABEL_12:
        OUTLINED_FUNCTION_46_6();
        return result;
      }
    }

LABEL_8:
    if (__dst[60])
    {
      *v0 = *&__dst[48];
      v22 = *&__dst[64];
    }

    else
    {
      OUTLINED_FUNCTION_67_6(SampleTiming, v12, v13, v14, v15, v16, v17, v18, v19, v54, v56, v58, v60, v65, *__dst, *&__dst[8], *&__dst[16], v20);
    }

    *(v0 + 16) = v22;
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_243();
  OUTLINED_FUNCTION_46_6();

  return FigSignalErrorAtGM(v52);
}

double remoteSampleCursor_GetDuration()
{
  OUTLINED_FUNCTION_187();
  v58 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  memcpy(__dst, MEMORY[0x1E6960CF0], sizeof(__dst));
  if (v1)
  {
    if (remoteFigSampleCursor_getEventLinkAssertionFromCurrentThread(&v54))
    {
      v3 = FigSimpleMutexLock();
      OUTLINED_FUNCTION_54_8(v3, v4, v5, v6, v7, v8, v9, v10, v43, v45, v47, v49, v54);
      FigSimpleMutexUnlock();
LABEL_8:
      *v0 = *__dst;
      *(v0 + 16) = *&__dst[16];
LABEL_9:
      OUTLINED_FUNCTION_46_6();
      return result;
    }

    if (qword_1EAF19470 != -1)
    {
      dispatch_once(&qword_1EAF19470, &__block_literal_global_82);
    }

    OUTLINED_FUNCTION_17_21();
    if (v11)
    {
      if (!FigPartialSampleTableAccessorGetSampleTiming(*(DerivedStorage + 24), __dst))
      {
        goto LABEL_8;
      }

      OUTLINED_FUNCTION_33_12();
      if (!v21)
      {
        v22 = OUTLINED_FUNCTION_12_28(v13, v14, v15, v16, v17, v18, v19, v20, v43, v45, v47, v49, SBYTE2(v49), SBYTE3(v49), SHIDWORD(v49));
        v30 = OUTLINED_FUNCTION_19_4(v22, v23, v24, v25, v26, v27, v28, v29, v44, v46, v48, v50, v51, v52, v53);
        if (OUTLINED_FUNCTION_115_1(v30))
        {
          v56 = 136315394;
          OUTLINED_FUNCTION_5_54();
          OUTLINED_FUNCTION_7_1(v31, v32, v57, v33, &dword_1962D5000, v34, v35, "<< FFRRemoteXPC >> %s: Encountered err %d when accessing partial sample table");
          OUTLINED_FUNCTION_612();
        }

        OUTLINED_FUNCTION_16();
        OUTLINED_FUNCTION_414(v36, v37, v38, v39, v40);
      }
    }

    OUTLINED_FUNCTION_65_5();
    if (remoteSampleCursor_getSampleTimingInfoFromServer())
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  OUTLINED_FUNCTION_243();
  OUTLINED_FUNCTION_46_6();

  return FigSignalErrorAtGM(v41);
}

double remoteSampleCursor_GetDependencyInfo(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, _BYTE *a5)
{
  OUTLINED_FUNCTION_27_14();
  v10 = v9;
  v40[16] = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (v10)
  {
    v12 = DerivedStorage;
    if (remoteFigSampleCursor_getEventLinkAssertionFromCurrentThread(&v34))
    {
      FigSimpleMutexLock();
      if (v7)
      {
        *v7 = *(v12 + 156);
      }

      if (v6)
      {
        *v6 = *(v12 + 157);
      }

      if (v5)
      {
        *v5 = *(v12 + 152);
      }

      if (a5)
      {
        *a5 = *(v12 + 158);
      }

      FigSimpleMutexUnlock();
      return result;
    }

    if (qword_1EAF19470 != -1)
    {
      dispatch_once(&qword_1EAF19470, &__block_literal_global_82);
    }

    OUTLINED_FUNCTION_17_21();
    if (v14)
    {
      xdict = 0;
      FigPartialSampleTableAccessorGetSyncInfo(*(v12 + 24), &xdict);
      OUTLINED_FUNCTION_33_12();
      if (!v16)
      {
        v17 = v15;
        if (!v15)
        {
          if (v7)
          {
            *v7 = xdict;
          }

          if (v6)
          {
            *v6 = BYTE1(xdict);
          }

          if (v5)
          {
            *v5 = HIDWORD(xdict);
          }

          if (a5)
          {
            *a5 = BYTE2(xdict);
          }

          return result;
        }

        LODWORD(length) = 0;
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        v19 = length;
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
          *v37 = 136315394;
          *&v37[4] = "remoteSampleCursor_GetDependencyInfo";
          v38 = 1024;
          v39 = v17;
          OUTLINED_FUNCTION_25_17();
          OUTLINED_FUNCTION_108();
          _os_log_send_and_compose_impl(v21, v22, v23, v24, v25, os_log_and_send_and_compose_flags_and_os_log_type, 0, v26, v37);
        }

        OUTLINED_FUNCTION_16();
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }
    }

    CMBaseObjectGetDerivedStorage();
    v40[0] = 0;
    xdict = 0;
    *v37 = 0;
    length = 0;
    ObjectID = remoteSampleCursor_GetObjectID(v10, v40);
    if (!ObjectID)
    {
      ObjectID = FigXPCCreateBasicMessage();
      if (!ObjectID)
      {
        ObjectID = FigXPCConnectionSendSyncMessageCreatingReply();
        if (!ObjectID)
        {
          data = xpc_dictionary_get_data(xdict, "SampleCursorSyncInfo", &length);
          if (data && length == 8)
          {
            v29 = 0;
            v30 = *data;
            v31 = HIDWORD(*data);
            v32 = *data >> 40;
            v33 = HIWORD(*data);
            goto LABEL_38;
          }

          OUTLINED_FUNCTION_111();
          FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
        }
      }
    }

    v29 = ObjectID;
    LOBYTE(v33) = 0;
    LOBYTE(v32) = 0;
    LOBYTE(v31) = 0;
    LODWORD(v30) = 0;
LABEL_38:
    FigXPCRelease();
    FigXPCRelease();
    if (!v29)
    {
      if (v7)
      {
        *v7 = v31;
      }

      if (v6)
      {
        *v6 = v32;
      }

      if (v5)
      {
        *v5 = v30;
      }

      if (a5)
      {
        *a5 = v33;
      }
    }

    return result;
  }

  OUTLINED_FUNCTION_111();

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
}

uint64_t remoteSampleCursor_TestReorderingBoundary(uint64_t a1, uint64_t a2, unsigned int a3)
{
  OUTLINED_FUNCTION_187();
  xdict[20] = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v7 = CMBaseObjectGetDerivedStorage();
  xdict[0] = 0;
  v59 = 0;
  v60 = &v59;
  v61 = 0x2000000000;
  v62 = 0;
  memcpy(__dst, MEMORY[0x1E6960CF0], sizeof(__dst));
  memcpy(v57, MEMORY[0x1E6960CF0], sizeof(v57));
  v52 = OUTLINED_FUNCTION_75_4(MEMORY[0x1E6960C70]);
  v53 = v8;
  v50 = 0;
  v51 = 0;
  v49 = 0;
  if (!v4 || !v3 || a3 >= 2)
  {
    OUTLINED_FUNCTION_429();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
    goto LABEL_49;
  }

  v9 = &off_196E72000;
  if (!remoteFigSampleCursor_getEventLinkAssertionFromCurrentThread(&v49))
  {
    if (qword_1EAF19470 != -1)
    {
      dispatch_once(&qword_1EAF19470, &__block_literal_global_82);
    }

    OUTLINED_FUNCTION_17_21();
    if (!v15)
    {
      goto LABEL_50;
    }

    FigPartialSampleTableAccessorGetDecodeToPresentationTimeDeltaRange(*(DerivedStorage + 24), &v54, &v52);
    if (SampleTiming || (SampleTiming = FigPartialSampleTableAccessorGetSampleTiming(*(DerivedStorage + 24), __dst)) != 0 || (SampleTiming = FigPartialSampleTableAccessorGetSampleTiming(*(v7 + 24), v57)) != 0)
    {
      v14 = SampleTiming;
      v25 = 0;
      goto LABEL_45;
    }

    if (v55 == v52.n128_u32[2])
    {
      v17 = v55 == LODWORD(__dst[7]) && LODWORD(__dst[7]) == LODWORD(v57[4]);
      if (v17)
      {
        if (a3)
        {
          OUTLINED_FUNCTION_72_4();
          v21 = v19 == v20;
        }

        else
        {
          OUTLINED_FUNCTION_72_4();
          if (v19 ^ v20 | v17)
          {
            v21 = 1;
          }

          else
          {
            v21 = 0;
          }
        }

        *(v18 + 24) = v21;
        goto LABEL_49;
      }
    }

    goto LABEL_50;
  }

  FigSimpleMutexLock();
  memcpy(__dst, (DerivedStorage + 80), sizeof(__dst));
  OUTLINED_FUNCTION_75_4((DerivedStorage + 260));
  v52 = *(DerivedStorage + 284);
  v53 = *(DerivedStorage + 300);
  FigSimpleMutexUnlock();
  if ((v56 & 1) == 0 || (v52.n128_u8[12] & 1) == 0)
  {
    if (remoteSampleCursor_GetObjectID(v4, &v51) || remoteSampleCursor_GetObjectID(v3, &v50))
    {
      goto LABEL_49;
    }

    OUTLINED_FUNCTION_2_75();
    OUTLINED_FUNCTION_40_9();
    v44 = __remoteSampleCursor_TestReorderingBoundary_block_invoke;
    v45 = &__block_descriptor_tmp_86;
    v46 = v51;
    v47 = v50;
    v48 = a3;
    v37 = MEMORY[0x1E69E9820];
    v38 = v10;
    v39 = __remoteSampleCursor_TestReorderingBoundary_block_invoke_2;
    v40 = &unk_1E7486030;
    v41 = &v59;
    v14 = FigOSEventLinkRemoteFillMessageBufferThenSendItAndHandleReply();
    goto LABEL_44;
  }

  FigSimpleMutexLock();
  memcpy(v57, (v7 + 80), sizeof(v57));
  FigSimpleMutexUnlock();
  if (v55 != v52.n128_u32[2] || (v55 == LODWORD(__dst[7]) ? (v22 = LODWORD(__dst[7]) == LODWORD(v57[4])) : (v22 = 0), !v22))
  {
LABEL_50:
    v33 = MEMORY[0x1E69E9820];
    v34 = *(v9 + 312);
    LODWORD(v35) = a3;
    if (!remoteSampleCursor_internalEnsureMatchingAndIndependentThenPerformOperation(v4, v3, 1935830628, xdict, &v33, v11, v12, v13, v30, v31, v32, MEMORY[0x1E69E9820], v34, __remoteSampleCursor_TestReorderingBoundary_block_invoke_88, &__block_descriptor_tmp_89, v35, v36, v37, v38, v39, v40, v41, v42, v43, v44, v45))
    {
      v29 = xpc_dictionary_get_BOOL(xdict[0], "SampleCursorTestReorderingBoundaryResult");
      *(v60 + 24) = v29;
    }

    goto LABEL_49;
  }

  v14 = 0;
  if (a3)
  {
    OUTLINED_FUNCTION_72_4();
    v24 = v19 == v20;
  }

  else
  {
    OUTLINED_FUNCTION_72_4();
    if (v19 ^ v20 | v17)
    {
      v24 = 1;
    }

    else
    {
      v24 = 0;
    }
  }

  *(v23 + 24) = v24;
LABEL_44:
  v25 = v14 == 0;
LABEL_45:
  if (v14 != -17712 && v14)
  {
    HIDWORD(v36) = 0;
    BYTE3(v36) = 0;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    OUTLINED_FUNCTION_16();
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    v9 = &off_196E72000;
  }

  if (!v25)
  {
    goto LABEL_50;
  }

LABEL_49:
  FigXPCRelease();
  v27 = *(v60 + 24);
  _Block_object_dispose(&v59, 8);
  return v27;
}

uint64_t remoteSampleCursor_CreateSampleBuffer(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_180_1();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  CMBaseObjectGetDerivedStorage();
  v32 = 0;
  v33 = 0;
  v30 = 0;
  v31 = 0;
  v29 = 0;
  if (!v4)
  {
    OUTLINED_FUNCTION_111();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v16, v17, v18);
    goto LABEL_17;
  }

  if (a3)
  {
    if (remoteFigSampleCursor_getEventLinkAssertionFromCurrentThread(&v29))
    {
      ObjectID = remoteSampleCursor_GetObjectID(v4, &v33);
      if (ObjectID)
      {
        goto LABEL_17;
      }

      if (v3)
      {
        ObjectID = remoteSampleCursor_GetObjectID(v3, &v32);
        if (ObjectID)
        {
          goto LABEL_17;
        }

        v11 = v32;
      }

      else
      {
        v11 = 0;
      }

      v23 = MEMORY[0x1E69E9820];
      v24 = 0x40000000;
      v25 = __remoteSampleCursor_CreateSampleBuffer_block_invoke;
      v26 = &__block_descriptor_tmp_90_0;
      v27 = v33;
      v28 = v11;
      OUTLINED_FUNCTION_2_49();
      OUTLINED_FUNCTION_43_7();
      v19 = __remoteSampleCursor_CreateSampleBuffer_block_invoke_2;
      v20 = &__block_descriptor_tmp_91_0;
      v21 = DerivedStorage;
      v22 = a3;
      if (!FigOSEventLinkRemoteFillMessageBufferThenSendItAndHandleReply())
      {
        goto LABEL_10;
      }
    }

    ObjectID = remoteSampleCursor_internalEnsureMatchingAndIndependentThenPerformOperation(v4, v3, 1936941670, &v31, &__block_literal_global_94, v7, v8, v9, v16, v17, v18, v19, v20, v21, v22, v23, v24, v25, v26, v27, v28, v29, v30, v31, v32, v33);
    if (!ObjectID)
    {
      BlockBufferData = FigXPCMessageCreateBlockBufferData();
      v15 = v30;
      if (BlockBufferData)
      {
        SampleBufferFromSerializedAtomDataBlockBuffer = BlockBufferData;
        if (!v30)
        {
          goto LABEL_11;
        }
      }

      else
      {
        SampleBufferFromSerializedAtomDataBlockBuffer = FigRemote_CreateSampleBufferFromSerializedAtomDataBlockBuffer();
        v15 = v30;
        if (!v30)
        {
          goto LABEL_11;
        }
      }

      CFRelease(v15);
      goto LABEL_11;
    }

LABEL_17:
    SampleBufferFromSerializedAtomDataBlockBuffer = ObjectID;
    goto LABEL_11;
  }

LABEL_10:
  SampleBufferFromSerializedAtomDataBlockBuffer = 0;
LABEL_11:
  FigXPCRelease();
  return SampleBufferFromSerializedAtomDataBlockBuffer;
}

uint64_t remoteSampleCursor_StepByDecodeTime(const void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v47 = 0;
  v48 = 0;
  v43 = 0;
  v44 = &v43;
  v45 = 0x2000000000;
  v46 = 0;
  v42 = 0;
  if (a1)
  {
    v3 = DerivedStorage;
    if (!remoteSampleCursor_GetObjectID(a1, &v48))
    {
      if (!remoteFigSampleCursor_getEventLinkAssertionFromCurrentThread(&v42) || (OUTLINED_FUNCTION_2_75(), OUTLINED_FUNCTION_40_9(), v40 = __remoteSampleCursor_StepByDecodeTime_block_invoke, v41 = &__block_descriptor_tmp_95_0, OUTLINED_FUNCTION_1_76(), v34 = __remoteSampleCursor_StepByDecodeTime_block_invoke_2, v35 = &unk_1E74860F8, OUTLINED_FUNCTION_80_3(v4, v5, v6, v7, v8, v9, v10, v11, v26)))
      {
        OUTLINED_FUNCTION_2_49();
        OUTLINED_FUNCTION_43_7();
        v17 = OUTLINED_FUNCTION_30_13();
        if (!remoteSampleCursor_internalEnsureMatchingAndIndependentThenPerformOperation(v17, v18, 1936942196, v19, v20, v21, v22, v23, v26, v27, v28, __remoteSampleCursor_StepByDecodeTime_block_invoke_3, &__block_descriptor_tmp_97, v29, v30, v31, v32, v33, v34, v35, v36, v37, v38, v39, v40, v41))
        {
          v24 = xpc_dictionary_get_BOOL(v47, "SampleCursorPositionWasPinned");
          *(v44 + 24) = v24;
          v25 = *(v3 + 48);
          if (v25)
          {
            CFRelease(v25);
            *(v3 + 48) = 0;
          }

          remoteSampleCursor_updateUpcomingSamplesCache(a1, v47);
        }
      }
    }
  }

  else
  {
    OUTLINED_FUNCTION_243();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v26, v27, v28);
  }

  OUTLINED_FUNCTION_68_5();
  if (v14)
  {
    v15 = v12;
  }

  else
  {
    v15 = v13;
  }

  FigXPCRelease();
  _Block_object_dispose(&v43, 8);
  return v15;
}

uint64_t remoteSampleCursor_StepByPresentationTime(const void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v47 = 0;
  v48 = 0;
  v43 = 0;
  v44 = &v43;
  v45 = 0x2000000000;
  v46 = 0;
  v42 = 0;
  if (a1)
  {
    v3 = DerivedStorage;
    if (!remoteFigSampleCursor_getEventLinkAssertionFromCurrentThread(&v42) || !remoteSampleCursor_GetObjectID(a1, &v48) && (OUTLINED_FUNCTION_2_75(), OUTLINED_FUNCTION_40_9(), v40 = __remoteSampleCursor_StepByPresentationTime_block_invoke, v41 = &__block_descriptor_tmp_98, OUTLINED_FUNCTION_1_76(), v34 = __remoteSampleCursor_StepByPresentationTime_block_invoke_2, v35 = &unk_1E7486160, OUTLINED_FUNCTION_80_3(v4, v5, v6, v7, v8, v9, v10, v11, v26)))
    {
      OUTLINED_FUNCTION_2_49();
      OUTLINED_FUNCTION_43_7();
      v17 = OUTLINED_FUNCTION_30_13();
      if (!remoteSampleCursor_internalEnsureMatchingAndIndependentThenPerformOperation(v17, v18, 1936945268, v19, v20, v21, v22, v23, v26, v27, v28, __remoteSampleCursor_StepByPresentationTime_block_invoke_3, &__block_descriptor_tmp_100, v29, v30, v31, v32, v33, v34, v35, v36, v37, v38, v39, v40, v41))
      {
        v24 = xpc_dictionary_get_BOOL(v47, "SampleCursorPositionWasPinned");
        *(v44 + 24) = v24;
        v25 = *(v3 + 48);
        if (v25)
        {
          CFRelease(v25);
          *(v3 + 48) = 0;
        }

        remoteSampleCursor_updateUpcomingSamplesCache(a1, v47);
      }
    }
  }

  else
  {
    OUTLINED_FUNCTION_243();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v26, v27, v28);
  }

  OUTLINED_FUNCTION_68_5();
  if (v14)
  {
    v15 = v12;
  }

  else
  {
    v15 = v13;
  }

  FigXPCRelease();
  _Block_object_dispose(&v43, 8);
  return v15;
}

uint64_t remoteSampleCursor_CopySampleLocation(uint64_t a1, void *a2, void *a3, CFTypeRef *a4, CFTypeRef *a5)
{
  length[5] = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v54 = 0;
  cf = 0;
  if (!a1)
  {
    OUTLINED_FUNCTION_429();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
    goto LABEL_54;
  }

  v11 = DerivedStorage;
  if (remoteFigSampleCursor_getEventLinkAssertionFromCurrentThread(&v54))
  {
    FigSimpleMutexLock();
    *v52 = *(v11 + 160);
    v12 = *(v11 + 176);
    v13 = *(v11 + 184);
    v14 = FigSimpleMutexUnlock();
    if (v13 | v12)
    {
      if (!a5 || !v13)
      {
LABEL_10:
        if (a4)
        {
          if (v12)
          {
            ObjectID = remoteSampleCursor_copyByteStreamTranslatedFromOutOfBandID(v14, v12, a4, v15, v16, v17, v18, v19);
            if (ObjectID)
            {
              goto LABEL_54;
            }
          }
        }

        goto LABEL_19;
      }

      ObjectID = FigPartialSampleTableOutOfBandObjectRegistryLookupAndRetainObjectForID(*(*v11 + 48), @"DataSourceURL", v13, &cf);
      if (!ObjectID)
      {
        if (cf)
        {
          v21 = CFGetTypeID(cf);
          v14 = CFURLGetTypeID();
          if (v21 == v14)
          {
            *a5 = cf;
            cf = 0;
            goto LABEL_10;
          }
        }

        OUTLINED_FUNCTION_429();
        FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
      }

LABEL_54:
      v27 = ObjectID;
      goto LABEL_24;
    }

    v50 = 0;
    v56 = 0;
    if (remoteFigSampleCursor_getEventLinkAssertionFromCurrentThread(&v56))
    {
      ObjectID = remoteSampleCursor_GetObjectID(a1, &v50);
      if (ObjectID)
      {
        goto LABEL_54;
      }

      OUTLINED_FUNCTION_22_19();
      length[0] = v34;
      length[1] = 0x40000000;
      length[2] = __remoteSampleCursor_copySampleLocationFromEventLinkServer_block_invoke;
      length[3] = &__block_descriptor_tmp_101;
      length[4] = v50;
      xdict = MEMORY[0x1E69E9820];
      v58 = 0x40000000;
      v59 = &__remoteSampleCursor_copySampleLocationFromEventLinkServer_block_invoke_2;
      v60 = &__block_descriptor_tmp_102;
      v61 = v52;
      v62 = a1;
      v63 = a5;
      v64 = a4;
      ObjectID = FigOSEventLinkRemoteFillMessageBufferThenSendItAndHandleReply();
      if (ObjectID)
      {
        goto LABEL_54;
      }
    }

LABEL_19:
    if (a2)
    {
      *a2 = v52[0];
    }

    if (a3)
    {
      *a3 = v52[1];
    }

    goto LABEL_23;
  }

  if (qword_1EAF19470 != -1)
  {
    dispatch_once(&qword_1EAF19470, &__block_literal_global_82);
  }

  OUTLINED_FUNCTION_17_21();
  if (v25)
  {
    v52[0] = 0;
    v52[1] = 0;
    v50 = 0;
    v51 = 0;
    v26 = FigPartialSampleTableAccessorCopyUnrefinedSampleLocationInTranslatedByteStreamOrDataSourceURL(*(v11 + 24), v52, &v50, a4, a5);
    if (!v26)
    {
      if (v51)
      {
        OUTLINED_FUNCTION_429();
        FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
        goto LABEL_54;
      }

      goto LABEL_19;
    }

    v29 = v26;
    OUTLINED_FUNCTION_33_12();
    if (!v30)
    {
      LODWORD(v56) = 0;
      HIBYTE(v49) = 0;
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v32 = v56;
      value = os_log_and_send_and_compose_flags_and_os_log_type;
      if (os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT))
      {
        v33 = v32;
      }

      else
      {
        v33 = v32 & 0xFFFFFFFE;
      }

      if (v33)
      {
        LODWORD(length[0]) = 136315394;
        *(length + 4) = "remoteSampleCursor_CopySampleLocation";
        WORD2(length[1]) = 1024;
        *(&length[1] + 6) = v29;
        OUTLINED_FUNCTION_25_17();
        v46 = length;
        OUTLINED_FUNCTION_108();
        _os_log_send_and_compose_impl(v35, v36, v37, v38, v39, value, 0, v40);
      }

      OUTLINED_FUNCTION_16();
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }
  }

  length[0] = 0;
  v27 = remoteSampleCursor_internalEnsureMatchingAndIndependentThenPerformOperation(a1, 0, 1936944227, &xdict, &__block_literal_global_105_0, v22, v23, v24, v46, v47, value, v49, v50, v51, v52[0], v52[1], v53, v54, cf, v56, 0, v58, v59, v60, v61, v62);
  if (v27)
  {
    FigXPCRelease();
  }

  else
  {
    data = xpc_dictionary_get_data(xdict, "SampleCursorSampleStorageRange", length);
    if (data && length[0] == 16)
    {
      v43 = *data;
      v42 = data[1];
      if (!(a4 | a5))
      {
        FigXPCRelease();
        goto LABEL_44;
      }

      v44 = CMBaseObjectGetDerivedStorage();
      v27 = CopyByteStreamOrDataSource(v44, xdict, a4, a5);
    }

    else
    {
      OUTLINED_FUNCTION_429();
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
      v27 = v45;
      v43 = 0;
      v42 = 0;
    }

    FigXPCRelease();
    if (!v27)
    {
LABEL_44:
      if (a2)
      {
        *a2 = v43;
      }

      if (a3)
      {
        v27 = 0;
        *a3 = v42;
        goto LABEL_24;
      }

LABEL_23:
      v27 = 0;
    }
  }

LABEL_24:
  if (cf)
  {
    CFRelease(cf);
  }

  return v27;
}

double remoteSampleCursor_CopyChunkDetails(uint64_t a1, CFTypeRef *a2, CFTypeRef *a3, void *a4, void *a5, void *a6, int64_t *a7, _BYTE *a8, _BYTE *a9, _BYTE *a10)
{
  v83 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v67 = 0;
  if (a1)
  {
    v17 = DerivedStorage;
    v57 = a8;
    if (remoteFigSampleCursor_getEventLinkAssertionFromCurrentThread(&v67))
    {
      v66 = 0uLL;
      v65 = 0uLL;
      *type = 0;
      v69 = 0;
      if (remoteFigSampleCursor_getEventLinkAssertionFromCurrentThread(type) && (remoteSampleCursor_GetObjectID(a1, &v69) || (OUTLINED_FUNCTION_22_19(), *length = v44, *&length[8] = 0x40000000, *&length[16] = __remoteSampleCursor_copySampleChunkInfoFromEventLinkServer_block_invoke, v81 = &__block_descriptor_tmp_106, v82 = v69, OUTLINED_FUNCTION_20_14(), v71 = v45, v72 = &__remoteSampleCursor_copySampleChunkInfoFromEventLinkServer_block_invoke_2, v73 = &__block_descriptor_tmp_107, v74 = &v65, v75 = &v66, v76 = a7, v77 = a1, v78 = a3, v79 = a2, FigOSEventLinkRemoteFillMessageBufferThenSendItAndHandleReply())))
      {
        v25 = 1;
      }

      else
      {
        if (a4)
        {
          *a4 = v66.n128_u64[0];
        }

        if (a5)
        {
          *a5 = v66.n128_u64[1];
        }

        if (a6)
        {
          *a6 = v65.n128_u64[0];
        }

        if (a8)
        {
          *a8 = v65.n128_u8[8];
        }

        if (a9)
        {
          *a9 = v65.n128_u8[9];
        }

        v25 = 0;
        if (a10)
        {
          *a10 = v65.n128_u8[10];
        }
      }
    }

    else
    {
      if (qword_1EAF19470 != -1)
      {
        dispatch_once(&qword_1EAF19470, &__block_literal_global_82);
      }

      OUTLINED_FUNCTION_17_21();
      if (!v21)
      {
        goto LABEL_29;
      }

      v66 = 0uLL;
      v65 = 0uLL;
      FigPartialSampleTableAccessorCopyChunkDetailsInTranslatedByteStreamOrDataSourceURL(*(v17 + 24), &v66, a2, a3, &v65, a7);
      OUTLINED_FUNCTION_33_12();
      if (v23)
      {
        v25 = 1;
      }

      else
      {
        v24 = v22;
        if (v22)
        {
          LODWORD(v69) = 0;
          type[0] = OS_LOG_TYPE_DEFAULT;
          os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          v27 = v69;
          v28 = type[0];
          if (os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, type[0]))
          {
            v29 = v27;
          }

          else
          {
            v29 = v27 & 0xFFFFFFFE;
          }

          if (v29)
          {
            *length = 136315394;
            *&length[4] = "remoteSampleCursor_CopyChunkDetails";
            *&length[12] = 1024;
            *&length[14] = v24;
            OUTLINED_FUNCTION_25_17();
            v52 = length;
            OUTLINED_FUNCTION_108();
            _os_log_send_and_compose_impl(v30, v31, v32, v33, v34, os_log_and_send_and_compose_flags_and_os_log_type, v28, v35);
          }

          v25 = 1;
          fig_log_call_emit_and_clean_up_after_send_and_compose();
        }

        else
        {
          if (a4)
          {
            *a4 = v66.n128_u64[0];
          }

          if (a5)
          {
            *a5 = v66.n128_u64[1];
          }

          if (a6)
          {
            *a6 = v65.n128_u64[0];
          }

          if (a8)
          {
            *a8 = v65.n128_u8[8];
          }

          if (a9)
          {
            *a9 = v65.n128_u8[9];
          }

          v25 = 0;
          if (a10)
          {
            *a10 = v65.n128_u8[10];
          }
        }
      }
    }

    if (!v25)
    {
LABEL_28:
      OUTLINED_FUNCTION_116_1();
      return result;
    }

LABEL_29:
    *length = 0;
    if (remoteSampleCursor_internalEnsureMatchingAndIndependentThenPerformOperation(a1, 0, 1935894635, &xdict, &__block_literal_global_110, v18, v19, v20, v52, v53, v54, v55, v57, a10, a5, a6, a9, v65.n128_i64[0], v65.n128_i64[1], v66.n128_i64[0], v66.n128_i64[1], v67, *type, v69, 0, v71))
    {
      FigXPCRelease();
      goto LABEL_28;
    }

    data = xpc_dictionary_get_data(xdict, "SampleCursorChunkInfo", length);
    if (data && *length == 16)
    {
      v38 = *data;
      LOBYTE(v56) = data[8];
      BYTE4(v56) = data[9];
      v39 = data[10];
      v40 = xpc_dictionary_get_data(xdict, "SampleCursorSampleStorageRange", length);
      if (v40 && *length == 16)
      {
        v41 = *v40;
        v42 = v40[1];
        if (a7)
        {
          *a7 = xpc_dictionary_get_int64(xdict, "SampleCursorSampleIndex");
        }

        v43 = v39;
        if (!(a2 | a3))
        {
          FigXPCRelease();
          goto LABEL_38;
        }

        v46 = CMBaseObjectGetDerivedStorage();
        v47 = CopyByteStreamOrDataSource(v46, xdict, a2, a3);
      }

      else
      {
        v43 = v39;
        OUTLINED_FUNCTION_723();
        FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
        v47 = v51;
        v41 = 0;
        v42 = 0;
      }
    }

    else
    {
      OUTLINED_FUNCTION_723();
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
      v47 = v50;
      v41 = 0;
      v42 = 0;
      v38 = 0;
      v56 = 0;
      v43 = 0;
    }

    FigXPCRelease();
    if (v47)
    {
      goto LABEL_28;
    }

LABEL_38:
    if (a4)
    {
      *a4 = v41;
    }

    if (v61)
    {
      *v61 = v42;
    }

    if (v63)
    {
      *v63 = v38;
    }

    if (v58)
    {
      *v58 = v56;
    }

    if (v64)
    {
      *v64 = BYTE4(v56);
    }

    if (v59)
    {
      *v59 = v43;
    }

    goto LABEL_28;
  }

  OUTLINED_FUNCTION_723();
  OUTLINED_FUNCTION_116_1();

  return FigSignalErrorAtGM(v48);
}

double remoteSampleCursor_CopyFormatDescription()
{
  OUTLINED_FUNCTION_187();
  v55 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (v1)
  {
    if (!v0)
    {
      return result;
    }

    v4 = DerivedStorage;
    if (!remoteFigSampleCursor_getEventLinkAssertionFromCurrentThread(&v35))
    {
      if (qword_1EAF19470 != -1)
      {
        dispatch_once(&qword_1EAF19470, &__block_literal_global_82);
      }

      OUTLINED_FUNCTION_17_21();
      if (v11)
      {
        result = FigPartialSampleTableAccessorCopyTranslatedFormatDescription(*(v4 + 24), v0, v5, v6, v7, v8, v9, v10, v32);
        v13 = v12;
        if (!v12)
        {
          return result;
        }

        if (v12 != -17712)
        {
          LODWORD(v41) = 0;
          type[0] = OS_LOG_TYPE_DEFAULT;
          os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          v15 = os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, type[0]);
          if (OUTLINED_FUNCTION_115_1(v15))
          {
            *v52 = 136315394;
            *&v52[4] = "remoteSampleCursor_CopyFormatDescription";
            *&v52[12] = 1024;
            *&v52[14] = v13;
            OUTLINED_FUNCTION_25_17();
            v32 = v52;
            OUTLINED_FUNCTION_7_1(v21, v22, v46, v23, &dword_1962D5000, v24, v25, "<< FFRRemoteXPC >> %s: Encountered err %d when accessing partial sample table");
          }

          OUTLINED_FUNCTION_16();
          OUTLINED_FUNCTION_414(v26, v27, v28, v29, v30);
        }
      }

LABEL_19:
      *v52 = 0;
      if (!remoteSampleCursor_internalEnsureMatchingAndIndependentThenPerformOperation(v1, 0, 1935962979, v46, &__block_literal_global_115, v8, v9, v10, v32, v33, v34, v35, v36, *type, v38, v39, v40, v41, v42, v43, v44, v45, 0, v46[1], v47, v48) && !FigXPCMessageCopyFormatDescription())
      {
        *v0 = *v52;
        *v52 = 0;
      }

      FigXPCRelease();
      if (*v52)
      {
        CFRelease(*v52);
      }

      return result;
    }

    v45 = 0;
    v16 = CMBaseObjectGetDerivedStorage();
    v41 = 0;
    v42 = &v41;
    v43 = 0x2000000000;
    v44 = 0;
    *type = 0;
    v38 = type;
    v39 = 0x2000000000;
    v40 = 0;
    v36 = 0;
    if (remoteFigSampleCursor_getEventLinkAssertionFromCurrentThread(&v36))
    {
      ObjectID = remoteSampleCursor_GetObjectID(v1, &v45);
      if (ObjectID)
      {
LABEL_16:
        v20 = ObjectID;
        goto LABEL_26;
      }

      FigSimpleMutexLock();
      *(v38 + 3) = *(v16 + 192);
      FigSimpleMutexUnlock();
      if (*(v38 + 3))
      {
        v18 = OUTLINED_FUNCTION_36_11();
        ObjectID = FigPartialSampleTableOutOfBandObjectRegistryLookupAndRetainObjectForID(v18, @"FormatDescription", v19, v42 + 3);
        goto LABEL_16;
      }

      *v52 = MEMORY[0x1E69E9820];
      *&v52[8] = 0x40000000;
      *&v52[16] = __remoteSampleCursor_copyFormatDescriptionFromEventLinkServer_block_invoke;
      v53 = &__block_descriptor_tmp_111;
      v54 = v45;
      OUTLINED_FUNCTION_2_75();
      OUTLINED_FUNCTION_40_9();
      v47 = __remoteSampleCursor_copyFormatDescriptionFromEventLinkServer_block_invoke_2;
      v48 = &unk_1E7486288;
      v49 = type;
      v50 = &v41;
      v51 = v1;
      v20 = FigOSEventLinkRemoteFillMessageBufferThenSendItAndHandleReply();
      FigSimpleMutexLock();
      *(v16 + 192) = *(v38 + 3);
      FigSimpleMutexUnlock();
    }

    else
    {
      v20 = 0;
    }

LABEL_26:
    v31 = v42;
    *v0 = v42[3];
    v31[3] = 0;
    _Block_object_dispose(type, 8);
    _Block_object_dispose(&v41, 8);
    if (!v20)
    {
      return result;
    }

    goto LABEL_19;
  }

  OUTLINED_FUNCTION_243();

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
}

uint64_t remoteSampleCursor_StepInDecodeOrderAndReportStepsTaken(const void *a1, uint64_t a2, uint64_t *a3)
{
  CMBaseObjectGetDerivedStorage();
  v40 = 0;
  v41 = 0;
  v39 = 0;
  if (!a1)
  {
    OUTLINED_FUNCTION_111();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v26, v27, v28);
    goto LABEL_21;
  }

  if (a2)
  {
    if (!remoteFigSampleCursor_getEventLinkAssertionFromCurrentThread(&v39))
    {
      if (qword_1EAF19470 != -1)
      {
        dispatch_once(&qword_1EAF19470, &__block_literal_global_82);
      }

      OUTLINED_FUNCTION_17_21();
      if (v15)
      {
        v33[0] = 0;
        if (!remoteSampleCursor_stepInCacheAndReportStepsTaken(a1, 1, a2, v33) && v33[0] == a2)
        {
          if (a3)
          {
            *a3 = a2;
          }

          goto LABEL_18;
        }
      }

      goto LABEL_14;
    }

    ObjectID = remoteSampleCursor_GetObjectID(a1, &v40);
    if (ObjectID)
    {
      goto LABEL_21;
    }

    OUTLINED_FUNCTION_2_75();
    OUTLINED_FUNCTION_40_9();
    v34 = __remoteSampleCursor_StepInDecodeOrderAndReportStepsTaken_block_invoke;
    v35 = &__block_descriptor_tmp_116;
    v36 = v40;
    v37 = a2;
    v38 = a1;
    OUTLINED_FUNCTION_1_76();
    if (OUTLINED_FUNCTION_79_3(v7, v8, v9, v10, v11, v12, v13, v14, v26))
    {
LABEL_14:
      OUTLINED_FUNCTION_2_49();
      OUTLINED_FUNCTION_43_7();
      v16 = OUTLINED_FUNCTION_37_11();
      ObjectID = remoteSampleCursor_internalEnsureMatchingAndIndependentThenPerformOperation(v16, v18, v17 | 0x73640000u, v19, v20, v21, v22, v23, v26, v27, v28, v29, v30, v31, v32, v33[0], v33[1], v33[2], v33[3], v33[4], v33[5], v33[6], v33[7], v33[8], v34, v35);
      if (!ObjectID)
      {
        if (a3)
        {
          *a3 = xpc_dictionary_get_int64(v41, "SampleCursorStepsTaken");
        }

        remoteSampleCursor_updateUpcomingSamplesCache(a1, v41);
        goto LABEL_18;
      }

LABEL_21:
      v24 = ObjectID;
      goto LABEL_19;
    }
  }

LABEL_18:
  v24 = 0;
LABEL_19:
  FigXPCRelease();
  return v24;
}

uint64_t remoteSampleCursor_StepInPresentationOrderAndReportStepsTaken(const void *a1, uint64_t a2, uint64_t *a3)
{
  CMBaseObjectGetDerivedStorage();
  v41 = 0;
  if (qword_1EAF19470 != -1)
  {
    dispatch_once(&qword_1EAF19470, &__block_literal_global_82);
  }

  v6 = _MergedGlobals_4;
  v39 = 0;
  v40 = 0;
  if (!a1)
  {
    OUTLINED_FUNCTION_111();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v26, v27, v28);
    goto LABEL_21;
  }

  if (a2)
  {
    if (!remoteFigSampleCursor_getEventLinkAssertionFromCurrentThread(&v39))
    {
      if (v6)
      {
        v33[0] = 0;
        if (!remoteSampleCursor_stepInCacheAndReportStepsTaken(a1, 0, a2, v33) && v33[0] == a2)
        {
          if (a3)
          {
            *a3 = a2;
          }

          goto LABEL_18;
        }
      }

      goto LABEL_14;
    }

    ObjectID = remoteSampleCursor_GetObjectID(a1, &v40);
    if (ObjectID)
    {
      goto LABEL_21;
    }

    OUTLINED_FUNCTION_2_75();
    OUTLINED_FUNCTION_40_9();
    v34 = __remoteSampleCursor_StepInPresentationOrderAndReportStepsTaken_block_invoke;
    v35 = &__block_descriptor_tmp_119_0;
    v36 = v40;
    v37 = a2;
    v38 = a1;
    OUTLINED_FUNCTION_1_76();
    if (OUTLINED_FUNCTION_79_3(v8, v9, v10, v11, v12, v13, v14, v15, v26))
    {
LABEL_14:
      OUTLINED_FUNCTION_2_49();
      OUTLINED_FUNCTION_43_7();
      v16 = OUTLINED_FUNCTION_37_11();
      ObjectID = remoteSampleCursor_internalEnsureMatchingAndIndependentThenPerformOperation(v16, v18, v17 | 0x73700000u, v19, v20, v21, v22, v23, v26, v27, v28, v29, v30, v31, v32, v33[0], v33[1], v33[2], v33[3], v33[4], v33[5], v33[6], v33[7], v33[8], v34, v35);
      if (!ObjectID)
      {
        if (a3)
        {
          *a3 = xpc_dictionary_get_int64(v41, "SampleCursorStepsTaken");
        }

        remoteSampleCursor_updateUpcomingSamplesCache(a1, v41);
        goto LABEL_18;
      }

LABEL_21:
      v24 = ObjectID;
      goto LABEL_19;
    }
  }

LABEL_18:
  v24 = 0;
LABEL_19:
  FigXPCRelease();
  return v24;
}

double remoteSampleCursor_getMinimumUpcomingPresentationTime(uint64_t a1, uint64_t a2, uint64_t a3, CMTime *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v22 = *MEMORY[0x1E6960C70];
  v9 = *(MEMORY[0x1E6960C70] + 16);
  v23 = v9;
  *&v21.value = v22;
  v21.epoch = v9;
  if (a1 && a3 && a4)
  {
    v10 = DerivedStorage;
    v16 = v22;
    if (remoteFigSampleCursor_getEventLinkAssertionFromCurrentThread(&v20))
    {
      FigSimpleMutexLock();
      v22 = *(v10 + 312);
      v23 = *(v10 + 328);
      v21 = *(v10 + 336);
      v11 = *(v10 + 308);
      FigSimpleMutexUnlock();
      if (!v11)
      {
        return result;
      }

      if (a2 && (v21.flags & 1) != 0)
      {
        v13 = CMBaseObjectGetDerivedStorage();
        FigSimpleMutexLock();
        memcpy(__dst, (v13 + 80), sizeof(__dst));
        FigSimpleMutexUnlock();
        time1 = v21;
        time2 = __dst[2];
        if (CMTimeCompare(&time1, &time2) >= 1)
        {
          v22 = *MEMORY[0x1E6960C88];
          v23 = *(MEMORY[0x1E6960C88] + 16);
          *&v21.value = v16;
          v21.epoch = v9;
        }
      }
    }

    else
    {
      if (qword_1EAF19470 != -1)
      {
        dispatch_once(&qword_1EAF19470, &__block_literal_global_82);
      }

      OUTLINED_FUNCTION_17_21();
      if (v14)
      {
        if (a2)
        {
          v15 = *(CMBaseObjectGetDerivedStorage() + 24);
        }

        else
        {
          v15 = 0;
        }

        FigPartialSampleTableAccessorGetMinimumUpcomingPresentationTime(*(v10 + 24), v15, &v22, &v21);
        OUTLINED_FUNCTION_33_12();
      }
    }

    *a3 = v22;
    *(a3 + 16) = v23;
    result = *&v21.value;
    *a4 = v21;
  }

  else
  {
    OUTLINED_FUNCTION_111();

    return FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
  }

  return result;
}

uint64_t remoteSampleCursor_getBatchSampleTimingAndSizes(uint64_t a1, int64_t a2, uint64_t a3, int64_t *a4, int64_t *a5, void *a6, int64_t *a7, void *a8)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v52 = 0;
  v53 = 0;
  v50 = 0;
  v51 = 0;
  v48 = 0;
  v49 = 0;
  if (!a1)
  {
    OUTLINED_FUNCTION_374();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
    goto LABEL_9;
  }

  v17 = DerivedStorage;
  if (remoteFigSampleCursor_getEventLinkAssertionFromCurrentThread(&v48))
  {
    ObjectID = remoteSampleCursor_GetObjectID(a1, &v53);
    if (!ObjectID)
    {
      if (!a3)
      {
        v19 = 0;
        goto LABEL_8;
      }

      ObjectID = remoteSampleCursor_GetObjectID(a3, &v52);
      if (!ObjectID)
      {
        v19 = v52;
LABEL_8:
        v39 = MEMORY[0x1E69E9820];
        v40 = 0x40000000;
        v41 = __remoteSampleCursor_getBatchSampleTimingAndSizes_block_invoke;
        v42 = &__block_descriptor_tmp_122;
        v43 = v53;
        v44 = v19;
        v45 = a2;
        v46 = a8;
        v47 = a6;
        OUTLINED_FUNCTION_1_76();
        v31 = __remoteSampleCursor_getBatchSampleTimingAndSizes_block_invoke_2;
        v32 = &__block_descriptor_tmp_123_0;
        v33 = a8;
        v34 = v17;
        v35 = a7;
        v36 = a6;
        v37 = a5;
        v38 = a4;
        ObjectID = FigOSEventLinkRemoteFillMessageBufferThenSendItAndHandleReply();
      }
    }

LABEL_9:
    v20 = ObjectID;
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_2_49();
  OUTLINED_FUNCTION_43_7();
  ObjectID = remoteSampleCursor_internalEnsureMatchingAndIndependentThenPerformOperation(a1, a3, 1936941671, &v51, v30, v22, v23, v24, v29, v30[0], v30[1], __remoteSampleCursor_getBatchSampleTimingAndSizes_block_invoke_3, &__block_descriptor_tmp_124, a2, a8, a6, v30[7], v30[8], v31, v32, v33, v34, v35, v36, v37, v38);
  if (ObjectID)
  {
    goto LABEL_9;
  }

  int64 = xpc_dictionary_get_int64(v51, "SampleCursorBatchNumSampleSizeEntries");
  v26 = xpc_dictionary_get_int64(v51, "SampleCursorBatchNumSampleTimingEntries");
  if (a8 && int64)
  {
    ObjectID = FigXPCMessageCreateBlockBufferData();
    if (ObjectID)
    {
      goto LABEL_9;
    }

    if (v50)
    {
      DataLength = CMBlockBufferGetDataLength(v50);
      if (int64 > a2 || DataLength != 8 * int64)
      {
        goto LABEL_38;
      }

      ObjectID = CMBlockBufferCopyDataBytes(v50, 0, DataLength, a8);
      if (ObjectID)
      {
        goto LABEL_9;
      }

      if (a7)
      {
        *a7 = int64;
      }
    }
  }

  if (a6 && v26)
  {
    ObjectID = FigXPCMessageCreateBlockBufferData();
    if (ObjectID)
    {
      goto LABEL_9;
    }

    if (v49)
    {
      v28 = CMBlockBufferGetDataLength(v49);
      if (v26 <= a2 && v28 == 72 * v26)
      {
        ObjectID = CMBlockBufferCopyDataBytes(v49, 0, v28, a6);
        if (ObjectID)
        {
          goto LABEL_9;
        }

        if (a5)
        {
          *a5 = v26;
        }

        goto LABEL_34;
      }

LABEL_38:
      OUTLINED_FUNCTION_374();
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
      goto LABEL_9;
    }
  }

LABEL_34:
  v20 = 0;
  if (a4)
  {
    *a4 = xpc_dictionary_get_int64(v51, "SampleCursorBatchNumSamplesIncluded");
  }

LABEL_10:
  FigXPCRelease();
  if (v50)
  {
    CFRelease(v50);
  }

  if (v49)
  {
    CFRelease(v49);
  }

  return v20;
}

double remoteSampleCursor_GetPresentationTimeRange()
{
  OUTLINED_FUNCTION_187();
  v15 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v11 = 0;
  v12 = 0;
  if (v1)
  {
    v3 = DerivedStorage;
    if (remoteFigSampleCursor_getEventLinkAssertionFromCurrentThread(&v11))
    {
      FigSimpleMutexLock();
      v13 = *(v3 + 212);
      v5 = *(v3 + 224);
      v14 = *(v3 + 220);
      v6 = *(v3 + 228);
      v7 = *(v3 + 236);
      v8 = *(v3 + 244);
      v9 = *(v3 + 248);
      v10 = *(v3 + 252);
      FigSimpleMutexUnlock();
      if ((v5 & 1) == 0 || (v9 & 1) == 0 || v10 || v7 < 0)
      {
        if (!remoteSampleCursor_GetObjectID(v1, &v12))
        {
          OUTLINED_FUNCTION_2_49();
          OUTLINED_FUNCTION_43_7();
          FigOSEventLinkRemoteFillMessageBufferThenSendItAndHandleReply();
        }
      }

      else
      {
        *v0 = v13;
        *(v0 + 8) = v14;
        *(v0 + 12) = v5;
        *(v0 + 16) = v6;
        *(v0 + 24) = v7;
        *(v0 + 32) = v8;
        *(v0 + 36) = v9;
        *(v0 + 40) = 0;
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

uint64_t remoteSampleCursor_finishCopy(const void *a1, uint64_t a2, const void *a3)
{
  cf = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v15 = 0;
  if (!a2)
  {
    OUTLINED_FUNCTION_111();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v15, cf, v17);
LABEL_19:
    v12 = v9;
    goto LABEL_10;
  }

  v7 = DerivedStorage;
  if (*DerivedStorage)
  {
    v14 = remoteFigSampleCursor_getEventLinkAssertionFromCurrentThread(&v15) ? FigServerSampleCursorSubscriptionUnsubscribeViaEventLink(a1, v15, *v7) : FigServerSampleCursorSubscriptionUnsubscribe(*v7);
    v12 = v14;
    if (v14)
    {
      goto LABEL_10;
    }
  }

  v8 = CFGetAllocator(a1);
  v9 = FigServerSampleCursorSubscriptionCreate(v8, a3, a2, *(*v7 + 48), &cf);
  if (v9)
  {
    goto LABEL_19;
  }

  v9 = FigServerSampleCursorSubscriptionSubscribe(cf);
  if (v9)
  {
    goto LABEL_19;
  }

  v10 = *v7;
  v11 = cf;
  *v7 = cf;
  if (v11)
  {
    CFRetain(v11);
  }

  if (v10)
  {
    CFRelease(v10);
  }

  v12 = 0;
LABEL_10:
  if (cf)
  {
    CFRelease(cf);
  }

  return v12;
}

uint64_t FigServerSampleCursorSubscriptionUnsubscribeViaEventLink(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a3)
  {
    return 0;
  }

  OUTLINED_FUNCTION_187();
  if (FigAtomicDecrement32())
  {
    return 0;
  }

  FigXPCConnectionDisassociateObject();
  if (*(a3 + 24))
  {
    return 0;
  }

  v5 = OUTLINED_FUNCTION_65_5();
  result = remoteSampleCursor_GetObjectID(v5, v6);
  if (!result)
  {
    OUTLINED_FUNCTION_0_52();
    return FigOSEventLinkRemoteFillMessageBufferThenSendItAndHandleReply();
  }

  return result;
}

uint64_t FigServerSampleCursorSubscriptionUnsubscribe(uint64_t a1)
{
  if (!a1 || FigAtomicDecrement32() || (FigXPCConnectionDisassociateObject(), *(a1 + 24)))
  {
    v2 = 0;
  }

  else
  {
    v4 = FigXPCCreateBasicMessage();
    if (v4)
    {
      v2 = v4;
    }

    else
    {
      v2 = FigXPCConnectionSendAsyncMessage();
      if (!v2)
      {
        *(a1 + 16) = 0;
      }
    }
  }

  FigXPCRelease();
  return v2;
}

uint64_t remoteSampleCursor_getSampleTimingInfoFromServer()
{
  OUTLINED_FUNCTION_180_1();
  CMBaseObjectGetDerivedStorage();
  OUTLINED_FUNCTION_43_9();
  ObjectID = remoteSampleCursor_GetObjectID(v1, &v18);
  if (ObjectID)
  {
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_2_22();
  ObjectID = FigXPCCreateBasicMessage();
  if (ObjectID)
  {
    goto LABEL_12;
  }

  ObjectID = OUTLINED_FUNCTION_61_6(*(*v2 + 32), v5, v6, v7, v8, v9, v10, v11, v15, xdict, v17);
  if (ObjectID)
  {
    goto LABEL_12;
  }

  data = xpc_dictionary_get_data(xdict, "SampleCursorSampleTimingInfo", &v15);
  if (!data)
  {
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1ED4CBDE8, 4294954447, "<< FFRRemoteXPC >>", 3097, v3);
LABEL_12:
    v13 = ObjectID;
    goto LABEL_9;
  }

  if (v15 != 72)
  {
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1ED4CBDE8, 4294954447, "<< FFRRemoteXPC >>", 3099, v3);
    goto LABEL_12;
  }

  if (v0)
  {
    memcpy(v0, data, 0x48uLL);
  }

  v13 = 0;
LABEL_9:
  FigXPCRelease();
  FigXPCRelease();
  return v13;
}

uint64_t CopyByteStreamOrDataSource(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = FigXPCMessageCopyCFURL();
  if (v6)
  {
    return v6;
  }

  v6 = FigXPCMessageCopyCFURL();
  if (v6)
  {
    return v6;
  }

  if (a4)
  {
    *a4 = 0;
    if (!a3)
    {
      return 0;
    }
  }

  else if (!a3)
  {
    return 0;
  }

  v7 = 0;
  *a3 = 0;
  return v7;
}

void __remoteSampleCursor_getBatchSampleTimingAndSizes_block_invoke_2(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, const __CFData *a9, const __CFData *cf, size_t lengthAtOffsetOut, char *dataPointerOut, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_47_5();
  a19 = v20;
  a20 = v21;
  v23 = v22;
  lengthAtOffsetOut = 0;
  dataPointerOut = 0;
  if (CMBlockBufferGetDataPointer(v24, 0, &lengthAtOffsetOut, 0, &dataPointerOut))
  {
    goto LABEL_2;
  }

  v25 = dataPointerOut;
  if ((dataPointerOut & 7) != 0 || lengthAtOffsetOut <= 0x197)
  {
    goto LABEL_2;
  }

  if (*(v23 + 32) && *(dataPointerOut + 42) && *(dataPointerOut + 44))
  {
    if (FigInMemoryDeserializerCopyCFType())
    {
      goto LABEL_2;
    }

    BytePtr = CFDataGetBytePtr(0);
    Length = CFDataGetLength(0);
    v28 = *(v25 + 44);
    if (Length < 8 * v28)
    {
      goto LABEL_22;
    }

    memcpy(*(v23 + 32), BytePtr, 8 * v28);
    v29 = *(v23 + 48);
    if (v29)
    {
      *v29 = *(v25 + 44);
    }
  }

  if (*(v23 + 56) && *(v25 + 43) && *(v25 + 45))
  {
    if (FigInMemoryDeserializerCopyCFType())
    {
      goto LABEL_2;
    }

    v30 = CFDataGetBytePtr(0);
    if (CFDataGetLength(0) >= (72 * *(v25 + 45)))
    {
      memcpy(*(v23 + 56), v30, 72 * *(v25 + 45));
      v31 = *(v23 + 64);
      if (v31)
      {
        *v31 = *(v25 + 45);
      }

      goto LABEL_19;
    }

LABEL_22:
    OUTLINED_FUNCTION_303();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
    goto LABEL_2;
  }

LABEL_19:
  v32 = *(v23 + 72);
  if (v32)
  {
    *v32 = *(v25 + 46);
  }

LABEL_2:
  OUTLINED_FUNCTION_860();
}

void remoteSampleCursor_Finalize(uint64_t a1)
{
  CMBaseObjectGetDerivedStorage();
  OUTLINED_FUNCTION_279_0();
  FigSimpleMutexDestroy();
  v3 = *(v1 + 64);
  if (v3)
  {
    CFRelease(v3);
    *(v1 + 64) = 0;
  }

  if (remoteFigSampleCursor_getEventLinkAssertionFromCurrentThread(&v11))
  {
    FigServerSampleCursorSubscriptionUnsubscribeViaEventLink(a1, v11, *v1);
  }

  else
  {
    FigServerSampleCursorSubscriptionUnsubscribe(*v1);
  }

  if (*v1)
  {
    CFRelease(*v1);
    *v1 = 0;
  }

  v4 = *(v1 + 16);
  if (v4)
  {
    CFRelease(v4);
    *(v1 + 16) = 0;
  }

  FigPartialSampleTableAccessorDestroy(*(v1 + 24));
  *(v1 + 24) = 0;
  v5 = *(v1 + 40);
  if (v5)
  {
    CFRelease(v5);
    *(v1 + 40) = 0;
  }

  v6 = *(v1 + 48);
  if (v6)
  {
    CFRelease(v6);
    *(v1 + 48) = 0;
  }

  v7 = *(v1 + 56);
  if (v7)
  {
    CFRelease(v7);
    *(v1 + 56) = 0;
  }

  v8 = *(v1 + 360);
  if (v8)
  {
    CFRelease(v8);
    *(v1 + 360) = 0;
  }

  v9 = *(v1 + 368);
  if (v9)
  {
    CFRelease(v9);
    *(v1 + 368) = 0;
  }

  v10 = *(v1 + 376);
  if (v10)
  {
    CFRelease(v10);
    *(v1 + 376) = 0;
  }
}

void remoteSampleCursor_CopyProperty(uint64_t a1, CMTimeEpoch a2, const __CFAllocator *a3, CMTimeValue *a4)
{
  v54 = *MEMORY[0x1E69E9840];
  v39 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v38 = 0;
  if (!a2)
  {
    OUTLINED_FUNCTION_429();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
    goto LABEL_51;
  }

  if (!a4)
  {
    OUTLINED_FUNCTION_429();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
    goto LABEL_51;
  }

  v9 = DerivedStorage;
  *a4 = 0;
  if (!remoteFigSampleCursor_getEventLinkAssertionFromCurrentThread(&v38))
  {
    if (qword_1EAF19470 != -1)
    {
      dispatch_once(&qword_1EAF19470, &__block_literal_global_82);
    }

    OUTLINED_FUNCTION_17_21();
    if (v10)
    {
      if (FigCFEqual())
      {
        v11 = *(v9 + 24);
        if (v11)
        {
          cf.start.value = 0;
          if (FigPartialSampleTableAccessorCopyTranslatedSampleDependencyAttributes(v11, &cf))
          {
            goto LABEL_51;
          }

          value = cf.start.value;
          if (cf.start.value)
          {
            v13 = CFGetTypeID(cf.start.value);
            TypeID = CFNullGetTypeID();
            value = cf.start.value;
            if (v13 == TypeID)
            {
              if (cf.start.value)
              {
                CFRelease(cf.start.value);
              }

              goto LABEL_51;
            }
          }

LABEL_23:
          *a4 = value;
          goto LABEL_51;
        }
      }

      if (FigCFEqual())
      {
        v15 = *(v9 + 24);
        if (!v15)
        {
          goto LABEL_51;
        }

        v16 = *(MEMORY[0x1E6960C98] + 16);
        *&cf.start.value = *MEMORY[0x1E6960C98];
        *&cf.start.epoch = v16;
        *&cf.duration.timescale = *(MEMORY[0x1E6960C98] + 32);
        if (FigPartialSampleTableAccessorGetPresentationTimeRange(v15, &cf) || (cf.start.flags & 1) == 0 || (cf.duration.flags & 1) == 0 || cf.duration.epoch || cf.duration.value < 0)
        {
          goto LABEL_51;
        }

        range = cf;
        value = CMTimeRangeCopyAsDictionary(&range, a3);
        goto LABEL_23;
      }
    }

    goto LABEL_49;
  }

  v17 = CMBaseObjectGetDerivedStorage();
  v50 = 0;
  v51 = 0;
  v47 = 0;
  v48 = &v47;
  v49 = 0x2000000000;
  v46 = 0;
  if (!remoteFigSampleCursor_getEventLinkAssertionFromCurrentThread(&v46))
  {
    v20 = 0;
    goto LABEL_38;
  }

  ObjectID = remoteSampleCursor_GetObjectID(a1, &v51);
  if (ObjectID)
  {
    goto LABEL_37;
  }

  if (FigCFEqual())
  {
    FigSimpleMutexLock();
    v19 = *(v17 + 200);
    FigSimpleMutexUnlock();
    if (v19)
    {
      if (v19 == -1)
      {
        v20 = 0;
        v48[3] = 0;
        goto LABEL_38;
      }

      ObjectID = FigPartialSampleTableOutOfBandObjectRegistryLookupAndRetainObjectForID(*(*v17 + 48), @"SampleDependencyAttributes", v19, v48 + 3);
      goto LABEL_37;
    }

LABEL_35:
    OUTLINED_FUNCTION_20_14();
    *&range.start.timescale = 0x40000000;
    range.start.epoch = __remoteSampleCursor_copyPropertyViaEventLink_block_invoke;
    range.duration.value = &__block_descriptor_tmp_131_0;
    *&range.duration.timescale = v51;
    range.duration.epoch = a2;
    v44 = v17;
    OUTLINED_FUNCTION_1_76();
    cf.start.epoch = __remoteSampleCursor_copyPropertyViaEventLink_block_invoke_2;
    cf.duration.value = &unk_1E7486470;
    *&cf.duration.timescale = &v47;
    cf.duration.epoch = a2;
    v41 = a1;
    v42 = v17;
    ObjectID = FigOSEventLinkRemoteFillMessageBufferThenSendItAndHandleReply();
LABEL_37:
    v20 = ObjectID;
    goto LABEL_38;
  }

  if (!FigCFEqual())
  {
    goto LABEL_35;
  }

  FigSimpleMutexLock();
  v52 = *(v17 + 212);
  v21 = *(v17 + 224);
  v53 = *(v17 + 220);
  v36 = *(v17 + 228);
  v22 = *(v17 + 236);
  v23 = *(v17 + 244);
  v24 = *(v17 + 248);
  v25 = *(v17 + 252);
  FigSimpleMutexUnlock();
  if ((v21 & 1) == 0 || (v24 & 1) == 0 || v25 || v22 < 0)
  {
    goto LABEL_35;
  }

  v34 = *MEMORY[0x1E695E480];
  v45.start.value = v52;
  v45.start.timescale = v53;
  v45.start.flags = v21;
  v45.start.epoch = v36;
  v45.duration.value = v22;
  v45.duration.timescale = v23;
  v45.duration.flags = v24;
  v45.duration.epoch = 0;
  v35 = CMTimeRangeCopyAsDictionary(&v45, v34);
  v20 = 0;
  v48[3] = v35;
LABEL_38:
  v26 = v48[3];
  if (v26)
  {
    v27 = CFGetTypeID(v26);
    v28 = CFNullGetTypeID();
    v29 = v48;
    v30 = v48[3];
    if (v27 == v28)
    {
      if (!v20)
      {
        v20 = -12783;
      }

      if (v30)
      {
        CFRelease(v30);
      }
    }

    else
    {
      *a4 = v30;
      v29[3] = 0;
    }
  }

  else if (!v20)
  {
    _Block_object_dispose(&v47, 8);
    goto LABEL_51;
  }

  _Block_object_dispose(&v47, 8);
  if ((v20 + 12784) >= 2 && v20)
  {
LABEL_49:
    OUTLINED_FUNCTION_2_49();
    OUTLINED_FUNCTION_43_7();
    if (!remoteSampleCursor_internalEnsureMatchingAndIndependentThenPerformOperation(a1, 0, 1935896697, &v39, v37, v31, v32, v33, v36, v37[0], v37[1], __remoteSampleCursor_CopyProperty_block_invoke, &__block_descriptor_tmp_130, a2, v38, v39, cf.start.value, *&cf.start.timescale, cf.start.epoch, cf.duration.value, *&cf.duration.timescale, cf.duration.epoch, v41, v42, range.start.value, *&range.start.timescale))
    {
      FigXPCMessageCopyCFObject();
    }
  }

LABEL_51:
  FigXPCRelease();
  OUTLINED_FUNCTION_116_1();
}

double remoteSampleCursor_SetProperty(uint64_t a1, uint64_t a2, const __CFBoolean *a3)
{
  v11 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v10 = 0;
  if (remoteFigSampleCursor_getEventLinkAssertionFromCurrentThread(&v10) && FigCFEqual())
  {
    if (a3 && (v7 = CFGetTypeID(a3), v7 == CFBooleanGetTypeID()))
    {
      Value = CFBooleanGetValue(a3);
      FigSimpleMutexLock();
      v9 = *(DerivedStorage + 208);
      *(DerivedStorage + 208) = Value;
      FigSimpleMutexUnlock();
      if (v9 != Value && !remoteSampleCursor_GetObjectID(a1, &v11))
      {
        OUTLINED_FUNCTION_0_52();
        FigOSEventLinkRemoteFillMessageBufferThenSendItAndHandleReply();
      }
    }

    else
    {
      OUTLINED_FUNCTION_243();

      return FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
    }
  }

  return result;
}

BOOL __remoteSampleCursor_registerNewFormatDescriptionsFromMessage_block_invoke(uint64_t a1, int a2, xpc_object_t xdict)
{
  v24 = 0;
  cf = 0;
  uint64 = xpc_dictionary_get_uint64(xdict, "SampleCursorFormatDescriptionOutOfBandID");
  if (uint64)
  {
    v6 = uint64;
    value = xpc_dictionary_get_value(xdict, "SampleCursorFormatDescription");
    v8 = *MEMORY[0x1E695E480];
    bytes_ptr = xpc_data_get_bytes_ptr(value);
    length = xpc_data_get_length(value);
    v11 = *MEMORY[0x1E695E498];
    v12 = xpc_data_get_length(value);
    v13 = CMBlockBufferCreateWithMemoryBlock(v8, bytes_ptr, length, v11, 0, 0, v12, 0, &v24);
    OUTLINED_FUNCTION_12_7(v13);
    OUTLINED_FUNCTION_3_38();
    if (!v14)
    {
      FormatDescriptionFromSerializedAtomDataBlockBuffer = FigRemote_CreateFormatDescriptionFromSerializedAtomDataBlockBuffer();
      OUTLINED_FUNCTION_12_7(FormatDescriptionFromSerializedAtomDataBlockBuffer);
      OUTLINED_FUNCTION_3_38();
      v16 = cf;
      if (!v17)
      {
        v18 = FigPartialSampleTableOutOfBandObjectRegistryRegisterObjectForKnownID(*(*(a1 + 40) + 40), @"FormatDescription", v6, cf);
        OUTLINED_FUNCTION_12_7(v18);
        v16 = cf;
      }

      if (v16)
      {
        CFRelease(v16);
      }
    }
  }

  else
  {
    OUTLINED_FUNCTION_243();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", blockBufferOut, v23, v24);
    OUTLINED_FUNCTION_12_7(v21);
  }

  if (v24)
  {
    CFRelease(v24);
  }

  OUTLINED_FUNCTION_3_38();
  return v19 == 0;
}

uint64_t CreateCursorAtSampleInDecodeOrder(const void *a1, uint64_t a2, void *a3)
{
  v25 = 0;
  v26 = 0;
  v24 = 0;
  v23 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v21 = 0;
  cf = 0;
  v20 = 0;
  ObjectID = remoteSampleCursorService_GetObjectID(a1, &v26);
  if (ObjectID)
  {
    goto LABEL_25;
  }

  ObjectID = FigXPCCreateBasicMessage();
  if (ObjectID)
  {
    goto LABEL_25;
  }

  if (remoteFigSampleCursor_getEventLinkAssertionFromCurrentThread(&v19))
  {
    xpc_dictionary_set_BOOL(v25, "UseSimpleCache", 1);
  }

  ObjectID = FigXPCConnectionCopyMemoryOriginForConnectedProcess();
  if (ObjectID)
  {
    goto LABEL_25;
  }

  ObjectID = FigXPCConnectionCopyMemoryRecipientForConnectedProcess();
  if (ObjectID)
  {
    goto LABEL_25;
  }

  ObjectID = FigXPCConnectionSendSyncMessageCreatingReply();
  if (ObjectID)
  {
    goto LABEL_25;
  }

  uint64 = xpc_dictionary_get_uint64(v24, *MEMORY[0x1E69615A0]);
  if (!uint64)
  {
    OUTLINED_FUNCTION_111();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v16, v17, v18);
LABEL_25:
    v14 = ObjectID;
    goto LABEL_13;
  }

  v8 = uint64;
  v9 = xpc_dictionary_get_uint64(v24, "SampleCursorOptionalMethods");
  v10 = CFGetAllocator(a1);
  ObjectID = FigServerSampleCursorSubscriptionCreate(v10, DerivedStorage[1], v8, DerivedStorage[3], &cf);
  if (ObjectID)
  {
    goto LABEL_25;
  }

  OUTLINED_FUNCTION_47_6();
  v11 = CFGetAllocator(a1);
  ObjectID = CreateRemoteSampleCursor(v11, DerivedStorage[4], v9, &v16, cf, v21, v20, &v23);
  if (ObjectID)
  {
    goto LABEL_25;
  }

  v12 = v23;
  remoteSampleCursor_updateSimpleCache(v23, v24);
  v14 = v13;
  if (!v13)
  {
    remoteSampleCursor_updateUpcomingSamplesCache(v12, v24);
    *a3 = v12;
    v23 = 0;
  }

LABEL_13:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v23)
  {
    CFRelease(v23);
  }

  FigXPCRelease();
  FigXPCRelease();
  if (v21)
  {
    CFRelease(v21);
  }

  if (v20)
  {
    CFRelease(v20);
  }

  if (DerivedStorage)
  {
    FigXPCConnectionKillServerOnTimeout();
  }

  return v14;
}

BOOL remoteEditCursorService_CreateCursorAtTrackTime_cold_1(_DWORD *a1)
{
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v4, v5, vars0);
  *a1 = v2;
  return v2 == 0;
}

uint64_t figTTMLCaptionWriterForDocument_AddCaption(uint64_t a1, uint64_t a2, _OWORD *a3)
{
  FigBytePumpGetFigBaseObject();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!*(DerivedStorage + 8))
  {
    v7 = DerivedStorage;
    FigBytePumpGetFigBaseObject();
    v8 = CMBaseObjectGetDerivedStorage();
    started = FigTTMLDocumentWriterStartElement(*v8, 7);
    if (started)
    {
      return started;
    }

    started = FigTTMLDocumentWriterStartElement(*v8, 2);
    if (started)
    {
      return started;
    }

    started = FigTTMLDocumentWriterStartElement(*v8, 3);
    if (started)
    {
      return started;
    }

    *(v7 + 8) = 1;
  }

  cf.start.value = 0;
  v10 = *MEMORY[0x1E695E480];
  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  CMBaseObject = FigCaptionDataGetCMBaseObject();
  v13 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v13)
  {
    v13(CMBaseObject, *MEMORY[0x1E6961240], v10, &cf);
    if (cf.start.value)
    {
      matched = figTTMLCaptionWriterForDocument_addImplicitRegionIdentifierToArrayRecursively(cf.start.value, Mutable);
      if (matched)
      {
        goto LABEL_44;
      }
    }
  }

  FigBytePumpGetFigBaseObject();
  v15 = CMBaseObjectGetDerivedStorage();
  if (Mutable)
  {
    Count = CFArrayGetCount(Mutable);
  }

  else
  {
    Count = 0;
  }

  v17 = *(v15 + 16);
  if (v17)
  {
    v17 = CFArrayGetCount(v17);
  }

  v18 = 0;
  v19 = v17 >= Count ? Count : v17;
  v20 = v19 & ~(v19 >> 63);
  while (v20 != v18)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(*(v15 + 16), v18);
    v22 = CFArrayGetValueAtIndex(Mutable, v18++);
    if (!CFEqual(ValueAtIndex, v22))
    {
      v20 = v18 - 1;
      break;
    }
  }

  matched = figTTMLCaptionWriterForDocument_closeDivElementsToMatchRegionHierarchy(a1, v20);
  if (matched)
  {
    goto LABEL_44;
  }

  FigBytePumpGetFigBaseObject();
  v23 = CMBaseObjectGetDerivedStorage();
  if (Mutable)
  {
    v24 = CFArrayGetCount(Mutable);
  }

  else
  {
    v24 = 0;
  }

  if (v24 > v20)
  {
    while (1)
    {
      v25 = CFArrayGetValueAtIndex(Mutable, v20);
      matched = FigTTMLDocumentWriterStartElement(*v23, 3);
      if (matched)
      {
        break;
      }

      CFArrayAppendValue(*(v23 + 16), v25);
      if (v24 == ++v20)
      {
        goto LABEL_28;
      }
    }

LABEL_44:
    v26 = matched;
    goto LABEL_29;
  }

LABEL_28:
  v26 = 0;
LABEL_29:
  if (cf.start.value)
  {
    CFRelease(cf.start.value);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  if (!v26)
  {
    *&v32.start.value = *a3;
    *&v32.start.epoch = a3[1];
    *&v32.duration.timescale = a3[2];
    FigBytePumpGetFigBaseObject();
    v27 = CMBaseObjectGetDerivedStorage();
    *&cf.start.value = *&v32.start.value;
    cf.start.epoch = v32.start.epoch;
    v28 = CMTimeCopyAsDictionary(&cf.start, v10);
    cf = v32;
    CMTimeRangeGetEnd(&time, &cf);
    v29 = CMTimeCopyAsDictionary(&time, v10);
    v30 = FigTTMLDocumentWriterStartElement(*v27, 4);
    if (!v30)
    {
      v30 = FigTTMLDocumentWriterSetAttribute(*v27, @"begin", v28);
      if (!v30)
      {
        v30 = FigTTMLDocumentWriterSetAttribute(*v27, @"end", v29);
        if (!v30)
        {
          v30 = FigTTMLDocumentWriterAddCaptionData(*v27, a2);
          if (!v30)
          {
            v30 = FigTTMLDocumentWriterEndElement(*v27);
          }
        }
      }
    }

    v26 = v30;
    if (v29)
    {
      CFRelease(v29);
    }

    if (v28)
    {
      CFRelease(v28);
    }
  }

  return v26;
}

uint64_t figTTMLCaptionWriterForDocument_Finish(uint64_t a1)
{
  FigBytePumpGetFigBaseObject();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  result = figTTMLCaptionWriterForDocument_closeDivElementsToMatchRegionHierarchy(a1, 0);
  if (!result)
  {
    if (*(DerivedStorage + 8))
    {
      FigBytePumpGetFigBaseObject();
      v4 = CMBaseObjectGetDerivedStorage();
      result = FigTTMLDocumentWriterEndElement(*v4);
      if (!result)
      {
        result = FigTTMLDocumentWriterEndElement(*v4);
        if (!result)
        {
          result = FigTTMLDocumentWriterEndElement(*v4);
          if (!result)
          {
            result = FigTTMLDocumentWriterFlush(*v4);
            if (!result)
            {
              *(DerivedStorage + 8) = 0;
            }
          }
        }
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t figTTMLCaptionWriterForDocument_addImplicitRegionIdentifierToArrayRecursively(uint64_t a1, __CFArray *a2)
{
  cf1 = 0;
  cf = 0;
  value = 0;
  CMBaseObject = FigCaptionRegionGetCMBaseObject();
  v4 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v4)
  {
    goto LABEL_14;
  }

  v5 = *MEMORY[0x1E695E480];
  v6 = v4(CMBaseObject, *MEMORY[0x1E6961318], *MEMORY[0x1E695E480], &cf1);
  if (v6)
  {
    goto LABEL_21;
  }

  if (cf1 && !CFEqual(cf1, *MEMORY[0x1E695E4C0]))
  {
    v9 = 0;
    goto LABEL_15;
  }

  v7 = FigCaptionRegionGetCMBaseObject();
  v8 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v8)
  {
LABEL_14:
    v9 = 4294954514;
    goto LABEL_15;
  }

  v9 = v8(v7, *MEMORY[0x1E6961300], v5, &cf);
  if (v9 || !cf)
  {
    goto LABEL_15;
  }

  v6 = figTTMLCaptionWriterForDocument_addImplicitRegionIdentifierToArrayRecursively(cf, a2);
  if (v6)
  {
LABEL_21:
    v9 = v6;
    goto LABEL_15;
  }

  v10 = FigCaptionRegionGetCMBaseObject();
  v11 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v11)
  {
    goto LABEL_14;
  }

  v9 = v11(v10, *MEMORY[0x1E6961338], v5, &value);
  v12 = value;
  if (!v9)
  {
    CFArrayAppendValue(a2, value);
    v12 = value;
  }

  if (v12)
  {
    CFRelease(v12);
  }

LABEL_15:
  if (cf1)
  {
    CFRelease(cf1);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  return v9;
}

uint64_t figTTMLCaptionWriterForDocument_closeDivElementsToMatchRegionHierarchy(uint64_t a1, CFIndex a2)
{
  FigBytePumpGetFigBaseObject();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  Count = *(DerivedStorage + 16);
  if (Count)
  {
    Count = CFArrayGetCount(Count);
  }

  v5 = Count - a2;
  if (Count - a2 < 1)
  {
LABEL_7:
    v8.location = a2;
    v8.length = v5;
    CFArrayReplaceValues(*(DerivedStorage + 16), v8, 0, 0);
    return 0;
  }

  else
  {
    v6 = Count - a2;
    while (1)
    {
      result = FigTTMLDocumentWriterEndElement(*DerivedStorage);
      if (result)
      {
        break;
      }

      if (!--v6)
      {
        goto LABEL_7;
      }
    }
  }

  return result;
}

double FigMetadataReaderCreateForUserData(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a3 && a5 && (a4 & 0x8000000000000000) == 0)
  {
    if (!FigAtomStreamInitWithByteStream() && !FigAtomStreamGetCurrentAtomTypeAndDataLength())
    {
      fig_log_get_emitter();
      OUTLINED_FUNCTION_20_0();
      return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v6, v7, 0);
    }
  }

  else
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_20_0();

    return FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
  }

  return result;
}

CFIndex FigUserDataGetKeyCount(const void *a1, const void *a2)
{
  Mutable = v4;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!DerivedStorage)
  {
    emitter = fig_log_get_emitter();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 4294954696, "<<<< FMDR_UserData >>>>", 1193, v4);
    return 0;
  }

  v9 = DerivedStorage;
  OUTLINED_FUNCTION_4_59();
  if (a2)
  {
    if (*(v9 + 16))
    {
      if (CFEqual(a2, @"udta"))
      {
        goto LABEL_8;
      }

      if (*(v9 + 16))
      {
LABEL_6:
        v10 = fig_log_get_emitter();
        FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v10, 4294954695, "<<<< FMDR_UserData >>>>", 1197, v4);
        return 0;
      }
    }

    if (!CFEqual(a2, @"uiso"))
    {
      goto LABEL_6;
    }
  }

LABEL_8:
  if (*(v9 + 32))
  {
    return *(v9 + 24);
  }

  if (FigAtomStreamInitWithByteStream() || FigAtomStreamInitWithParent())
  {
    return 0;
  }

  OUTLINED_FUNCTION_7_37();
  v12 = v3 | 0x736B0000u;
  do
  {
    CurrentAtomTypeAndDataLength = FigAtomStreamGetCurrentAtomTypeAndDataLength();
    if (CurrentAtomTypeAndDataLength)
    {
      goto LABEL_27;
    }

    if (v2)
    {
      v14 = v12 == 0;
    }

    else
    {
      v14 = 1;
    }

    if (!v14)
    {
      if (!Mutable)
      {
        CFGetAllocator(a1);
        OUTLINED_FUNCTION_613();
        Mutable = CFSetCreateMutable(v15, v16, v17);
      }

      CFSetAddValue(Mutable, 0);
    }

    Atom = FigAtomStreamAdvanceToNextAtom();
  }

  while (!Atom);
  if (Atom == -12890 || Atom == -12893)
  {
LABEL_27:
    if (!Mutable)
    {
      return 0;
    }

    if (CurrentAtomTypeAndDataLength)
    {
      Count = 0;
    }

    else
    {
      Count = CFSetGetCount(Mutable);
      *(v9 + 24) = Count;
      *(v9 + 32) = 1;
    }

    goto LABEL_34;
  }

  Count = 0;
  if (!Mutable)
  {
    return Count;
  }

LABEL_34:
  CFRelease(Mutable);
  return Count;
}

void FigUserDataCopyKeyAtIndex(const void *a1, const void *a2, uint64_t a3, uint64_t a4, CFNumberRef *a5)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!DerivedStorage || !a5)
  {
LABEL_7:
    fig_log_get_emitter();
    OUTLINED_FUNCTION_2_10();

    FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
    return;
  }

  v10 = DerivedStorage;
  OUTLINED_FUNCTION_4_59();
  if (a2)
  {
    if (*(v10 + 16))
    {
      if (CFEqual(a2, @"udta"))
      {
        goto LABEL_11;
      }

      if (*(v10 + 16))
      {
        goto LABEL_7;
      }
    }

    if (!CFEqual(a2, @"uiso"))
    {
      goto LABEL_7;
    }
  }

LABEL_11:
  if (*(v10 + 32) && *(v10 + 24) <= a3)
  {
    goto LABEL_7;
  }

  valuePtr = 0;
  if (!FigAtomStreamInitWithByteStream() && !FigAtomStreamInitWithParent())
  {
    Mutable = 0;
    while (!FigAtomStreamGetCurrentAtomTypeAndDataLength())
    {
      v12 = valuePtr;
      if (valuePtr != 1936419184)
      {
        if (!Mutable)
        {
          CFGetAllocator(a1);
          OUTLINED_FUNCTION_613();
          Mutable = CFSetCreateMutable(v13, v14, v15);
          v12 = valuePtr;
        }

        CFSetAddValue(Mutable, v12);
        if (CFSetGetCount(Mutable) - 1 == a3)
        {
          *a5 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt32Type, &valuePtr);
          break;
        }
      }

      if (FigAtomStreamAdvanceToNextAtom())
      {
        break;
      }
    }

    if (Mutable)
    {
      CFRelease(Mutable);
    }
  }
}

char *FigUserDataGetItemCount(uint64_t a1, char *a2, uint64_t a3)
{
  v6 = a1;
  v37 = 0;
  v38 = 0;
  v36.location = 0;
  v36.length = 0;
  v35 = 0;
  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v19 = 0;
  cf = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (DerivedStorage)
  {
    v8 = DerivedStorage;
    v9 = CMBaseObjectGetDerivedStorage();
    if (!UserDataCopyKeysInfoCommon(*(v9 + 16), a2, a3, &v38, &v37, &v36) && !FigAtomStreamInitWithByteStream() && !FigAtomStreamInitWithParent())
    {
      OUTLINED_FUNCTION_7_37();
      v11 = v3 | 0x736B0000;
      while (1)
      {
        if (FigAtomStreamGetCurrentAtomTypeAndDataLength())
        {
          goto LABEL_4;
        }

        v12 = HIDWORD(v38);
        if (HIDWORD(v38) != v6 && HIDWORD(v38) != v11)
        {
          if (v37)
          {
            if (!CFArrayContainsValue(v37, v36, HIDWORD(v38)))
            {
              goto LABEL_18;
            }

            v12 = HIDWORD(v38);
          }

          else if (a3 && v38 != HIDWORD(v38))
          {
            goto LABEL_18;
          }

          if (*(v8 + 16) && (v12 & 0xFF000000) == 0xA9000000)
          {
            v14 = v35;
            if (v35 >= 4)
            {
              OUTLINED_FUNCTION_613();
              if (!FigAtomStreamReadCurrentAtomDataAndCreateBBuf())
              {
                v15 = 0;
                while (!CMBlockBufferGetDataPointer(cf, v15, 0, 0, &v19))
                {
                  v16 = bswap32(*v19) >> 16;
                  v17 = v16 + 4;
                  if (v16 <= 0xFFFB && v17 <= (v14 - v15))
                  {
                    ++a2;
                    v15 += v17;
                    if (v15 + 4 <= v14)
                    {
                      continue;
                    }
                  }

                  if (cf)
                  {
                    CFRelease(cf);
                  }

                  cf = 0;
                  goto LABEL_18;
                }
              }

              goto LABEL_4;
            }
          }

          else
          {
            ++a2;
          }
        }

LABEL_18:
        if (FigAtomStreamAdvanceToNextAtom())
        {
          goto LABEL_4;
        }
      }
    }
  }

  else
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_2_10();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v19, cf, v21);
  }

  a2 = 0;
LABEL_4:
  if (v37)
  {
    CFRelease(v37);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  return a2;
}

uint64_t FigUserDataCopyItemWithKeyAndIndex(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const __CFAllocator *a5, uint64_t *a6, uint64_t a7)
{
  v153 = 0;
  v151.length = 0;
  v152 = 0;
  v150 = 0;
  v151.location = 0;
  v148 = 0u;
  v149 = 0u;
  v146 = 0u;
  v147 = 0u;
  v144 = 0u;
  v145 = 0u;
  v143 = 0u;
  v141 = 0u;
  v142 = 0u;
  v139 = 0u;
  v140 = 0u;
  v137 = 0u;
  v138 = 0u;
  v136 = 0u;
  dataPointerOut = 0;
  theBuffer = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!DerivedStorage)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_0_4();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v96, v98, v101);
    OUTLINED_FUNCTION_37_9();
    goto LABEL_83;
  }

  if (!(a6 | a7))
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_0_4();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v96, v98, v101);
    goto LABEL_148;
  }

  v16 = DerivedStorage;
  v17 = CMBaseObjectGetDerivedStorage();
  CurrentAtomTypeAndDataLength = UserDataCopyKeysInfoCommon(*(v17 + 16), a2, a3, &v153, &v152, &v151);
  if (CurrentAtomTypeAndDataLength || (CurrentAtomTypeAndDataLength = FigAtomStreamInitWithByteStream(), CurrentAtomTypeAndDataLength) || (CurrentAtomTypeAndDataLength = FigAtomStreamInitWithParent(), CurrentAtomTypeAndDataLength))
  {
LABEL_148:
    v7 = CurrentAtomTypeAndDataLength;
LABEL_149:
    a2 = 0;
    goto LABEL_88;
  }

  v125 = a5;
  v127 = a7;
  v99 = v8;
  v102 = a1;
  v19 = 0;
  key = @"locale";
  v106 = @"extendedLanguageTag";
  allocator = *MEMORY[0x1E695E480];
  v104 = @"languageCode";
  v113 = @"dataType";
  v116 = @"dataTypeNamespace";
  value = @"com.apple.quicktime.udta";
  v119 = @"key";
  v121 = @"keyspace";
  while (1)
  {
    CurrentAtomTypeAndDataLength = FigAtomStreamGetCurrentAtomTypeAndDataLength();
    if (CurrentAtomTypeAndDataLength)
    {
      goto LABEL_148;
    }

    v20 = HIDWORD(v153);
    if (HIDWORD(v153) == 1718773093 || HIDWORD(v153) == 1936419184)
    {
      goto LABEL_13;
    }

    if (!v152)
    {
      break;
    }

    if (CFArrayContainsValue(v152, v151, HIDWORD(v153)))
    {
      v20 = HIDWORD(v153);
      goto LABEL_18;
    }

LABEL_13:
    if (FigAtomStreamAdvanceToNextAtom())
    {
      OUTLINED_FUNCTION_37_9();
      if (v54 != -12890 && v54 != -12893)
      {
        goto LABEL_88;
      }

LABEL_82:
      v7 = 0;
      goto LABEL_83;
    }
  }

  if (a3 && v153 != HIDWORD(v153))
  {
    goto LABEL_13;
  }

LABEL_18:
  if (*(v16 + 16) && (v20 & 0xFF000000) == 0xA9000000)
  {
    v22 = v150;
    if (v150 < 4)
    {
      goto LABEL_13;
    }

    OUTLINED_FUNCTION_613();
    CurrentAtomTypeAndDataLength = FigAtomStreamReadCurrentAtomDataAndCreateBBuf();
    if (!CurrentAtomTypeAndDataLength)
    {
      v123 = v16;
      v131 = a6;
      v23 = 0;
      while (1)
      {
        CurrentAtomTypeAndDataLength = CMBlockBufferGetDataPointer(theBuffer, v23, 0, 0, &dataPointerOut);
        if (CurrentAtomTypeAndDataLength)
        {
          goto LABEL_148;
        }

        v29 = dataPointerOut;
        v30 = bswap32(*dataPointerOut) >> 16;
        v31 = v30 + 4;
        if (v30 > 0xFFFB || v31 > (v22 - v23))
        {
LABEL_37:
          a2 = 1;
          a6 = v131;
          v16 = v123;
          goto LABEL_70;
        }

        if (a4 == v19)
        {
          break;
        }

        v23 += v31;
        ++v19;
        if (v23 + 4 > v22)
        {
          goto LABEL_37;
        }
      }

      LODWORD(v157[0]) = 0;
      v33 = bswap32(*(dataPointerOut + 1));
      v34 = HIWORD(v33);
      LOWORD(valuePtr) = HIWORD(v33);
      v35 = v131;
      if (v131)
      {
        v36 = v125;
        CurrentAtomTypeAndDataLength = FigCFStringCreateWithBytesAndMovieLangCode();
        v7 = CurrentAtomTypeAndDataLength;
        v37 = v127;
        if (CurrentAtomTypeAndDataLength == -12993)
        {
          CurrentAtomTypeAndDataLength = CFDataCreate(v125, v29 + 4, v30);
          if (CurrentAtomTypeAndDataLength)
          {
            v7 = 0;
            *v131 = CurrentAtomTypeAndDataLength;
            goto LABEL_42;
          }

          fig_log_get_emitter();
          OUTLINED_FUNCTION_3_2();
          FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v96, v99, v102);
          v7 = CurrentAtomTypeAndDataLength;
          if (CurrentAtomTypeAndDataLength)
          {
            goto LABEL_149;
          }

LABEL_63:
          a6 = v131;
          v16 = v123;
          if (v37)
          {
            a2 = *v37;
            if (*v37)
            {
              v52 = OUTLINED_FUNCTION_10_30(CurrentAtomTypeAndDataLength, v24, &v153 + 4, v25, v26, v35, v27, v28, v96, v99, v102, v104, v106, key, value, v113, v116, v119, v121, v123, v125, v127, allocator);
              if (v52)
              {
                v53 = v52;
                CFDictionaryAddValue(a2, v119, v52);
                CFRelease(v53);
              }

              CFDictionaryAddValue(a2, v121, @"udta");
              a2 = 0;
              v19 = a4;
              a6 = v131;
              v16 = v123;
LABEL_70:
              if (theBuffer)
              {
                CFRelease(theBuffer);
              }

              theBuffer = 0;
              if (a2)
              {
                goto LABEL_13;
              }

              goto LABEL_133;
            }
          }

          else
          {
            a2 = 0;
          }

          v19 = a4;
          goto LABEL_70;
        }

LABEL_42:
        if (!v127 || v7)
        {
          if (v7)
          {
            goto LABEL_149;
          }

          goto LABEL_63;
        }
      }

      else
      {
        v36 = v125;
        v37 = v127;
        if (!v127)
        {
          goto LABEL_63;
        }
      }

      CurrentAtomTypeAndDataLength = CFDictionaryCreateMutable(v36, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      if (!CurrentAtomTypeAndDataLength)
      {
        goto LABEL_63;
      }

      v7 = CurrentAtomTypeAndDataLength;
      if (FigCFLocaleCreateWithMovieLangCode())
      {
        v38 = OUTLINED_FUNCTION_8_26();
        CFDictionaryAddValue(v38, key, v30);
        CFRelease(v30);
      }

      if (FigUserDataExtendedLanguageTagCreateWithMovieLangCode(v36, v34))
      {
        v39 = OUTLINED_FUNCTION_8_26();
        CFDictionaryAddValue(v39, v106, v30);
        CFRelease(v30);
      }

      v40 = CFNumberCreate(allocator, kCFNumberSInt16Type, &valuePtr);
      if (v40)
      {
        v47 = OUTLINED_FUNCTION_8_26();
        CFDictionaryAddValue(v47, v104, v30);
        CFRelease(v30);
      }

      HIDWORD(v49) = LODWORD(v157[0]) - 256;
      LODWORD(v49) = LODWORD(v157[0]) - 256;
      v48 = v49 >> 26;
      if ((v48 - 4) >= 2 && v48)
      {
        if (v48 == 2)
        {
          v50 = 2;
          goto LABEL_59;
        }

        LODWORD(v155) = 1;
      }

      else
      {
        v50 = 3;
LABEL_59:
        LODWORD(v155) = v50;
      }

      CurrentAtomTypeAndDataLength = OUTLINED_FUNCTION_10_30(v40, v41, &v155, v42, v43, v44, v45, v46, v96, v99, v102, v104, v106, key, value, v113, v116, v119, v121, v123, v125, v127, allocator);
      if (CurrentAtomTypeAndDataLength)
      {
        v51 = OUTLINED_FUNCTION_8_26();
        CFDictionaryAddValue(v51, v113, v30);
        CFDictionaryAddValue(v7, v116, value);
        CFRelease(v30);
      }

      *v37 = v7;
      goto LABEL_63;
    }

    goto LABEL_148;
  }

  if (v19 != a4)
  {
    ++v19;
    goto LABEL_13;
  }

  v133 = 0;
  v157[0] = 0;
  v156 = 0;
  valuePtr = 0;
  v155 = 0;
  if (FigAtomStreamGetCurrentAtomTypeAndDataLength())
  {
    OUTLINED_FUNCTION_37_9();
    v57 = v127;
    v58 = v102;
  }

  else
  {
    OUTLINED_FUNCTION_613();
    v57 = v127;
    v58 = v102;
    if (FigAtomStreamReadCurrentAtomDataAndCreateBBuf() || CMBlockBufferGetDataPointer(v157[0], 0, &valuePtr, 0, &v155))
    {
      OUTLINED_FUNCTION_37_9();
    }

    else
    {
      a2 = CFDataCreate(v125, v155, valuePtr);
      if (a2)
      {
        v7 = 0;
      }

      else
      {
        fig_log_get_emitter();
        OUTLINED_FUNCTION_3_2();
        FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v96, v99, v102);
        v7 = v95;
      }
    }
  }

  if (v157[0])
  {
    CFRelease(v157[0]);
  }

  if (v7)
  {
    goto LABEL_83;
  }

  if (!*(v16 + 16))
  {
    goto LABEL_106;
  }

  LODWORD(ItemTextFromData) = FigUserDataWeKnowIsISOText(SHIDWORD(v153));
  if (ItemTextFromData)
  {
LABEL_107:
    v133 = 2;
    if (*(v16 + 16) || HIDWORD(v153) != 1819239273)
    {
      LODWORD(v157[0]) = 0;
      v68 = OUTLINED_FUNCTION_104_0();
      ItemTextFromData = FigISOUserDataCreateItemTextFromData(v68, v69, v70, a6, v57);
      if (ItemTextFromData)
      {
        goto LABEL_162;
      }

      HIDWORD(v72) = LODWORD(v157[0]) - 256;
      LODWORD(v72) = LODWORD(v157[0]) - 256;
      v71 = v72 >> 26;
      if (v71 > 5)
      {
        v73 = 2;
      }

      else
      {
        v73 = dword_196E771D0[v71];
      }

      v133 = v73;
    }

    else
    {
      v66 = OUTLINED_FUNCTION_104_0();
      ItemTextFromData = FigISOUserDataCreateItemTextFromLocation(v66, v67, a6, v57);
      if (ItemTextFromData)
      {
        goto LABEL_162;
      }
    }

    goto LABEL_121;
  }

  if (!*(v16 + 16))
  {
LABEL_106:
    LODWORD(ItemTextFromData) = FigISOUserDataWeKnowIsISOText(SHIDWORD(v153));
    if (ItemTextFromData)
    {
      goto LABEL_107;
    }
  }

  if (!a6)
  {
    goto LABEL_121;
  }

  v133 = 0;
  if (!*(v16 + 16) && HIDWORD(v153) == 2037543523)
  {
    ItemTextFromData = FigISOUserDataCreateItemFromRecordingYear(a2, a6);
    if (ItemTextFromData)
    {
      goto LABEL_162;
    }

LABEL_121:
    if (a2)
    {
LABEL_122:
      CFRelease(a2);
    }

    goto LABEL_123;
  }

  if (!*(v16 + 16) && HIDWORD(v153) == 1684108389)
  {
    v87 = OUTLINED_FUNCTION_104_0();
    ItemTextFromData = FigISOUserDataCreateItemFromDate(v87, v88, a6);
    if (!ItemTextFromData)
    {
      goto LABEL_121;
    }

    goto LABEL_162;
  }

  if (!*(v16 + 16) && HIDWORD(v153) == 1970430324)
  {
    ItemTextFromData = FigISOUserDataCreateItemFromUserRating(a2, a6);
    if (!ItemTextFromData)
    {
      goto LABEL_121;
    }

    goto LABEL_162;
  }

  if (*(v16 + 16) || HIDWORD(v153) != 1953000802)
  {
    if (HIDWORD(v153) == 1952540515)
    {
      if (CFDataGetLength(a2) > 0)
      {
        v91 = OUTLINED_FUNCTION_104_0();
        ItemTextFromData = CFStringCreateFromExternalRepresentation(v91, v92, 0x600u);
        *a6 = ItemTextFromData;
        goto LABEL_121;
      }

LABEL_161:
      fig_log_get_emitter();
      OUTLINED_FUNCTION_3_2();
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
      goto LABEL_162;
    }

    if (*(v16 + 16) && HIDWORD(v153) == 1851878757)
    {
      if (a2)
      {
        v93 = OUTLINED_FUNCTION_104_0();
        *a6 = CFStringCreateFromExternalRepresentation(v93, v94, 0);
        goto LABEL_122;
      }
    }

    else
    {
      *a6 = a2;
    }

LABEL_123:
    if (v57)
    {
      a2 = *v57;
      if (!*v57)
      {
        v74 = CFGetAllocator(v58);
        ItemTextFromData = CFDictionaryCreateMutable(v74, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
        a2 = ItemTextFromData;
        *v57 = ItemTextFromData;
        if (!ItemTextFromData)
        {
          goto LABEL_161;
        }
      }

      v75 = OUTLINED_FUNCTION_10_30(ItemTextFromData, v60, &v153 + 4, v61, v62, v63, v64, v65, v96, v99, v102, v104, v106, key, value, v113, v116, v119, v121, v123, v125, v127, allocator);
      if (v75)
      {
        v76 = v75;
        CFDictionaryAddValue(a2, v120, v75);
        CFRelease(v76);
      }

      if (*(v16 + 16))
      {
        v77 = @"udta";
      }

      else
      {
        v77 = @"uiso";
      }

      CFDictionaryAddValue(a2, v122, v77);
      v85 = OUTLINED_FUNCTION_10_30(v78, v79, &v133, v80, v81, v82, v83, v84, v97, v100, v103, v105, v107, keya, valuea, v114, v117, v120, v122, v124, v126, v128, allocatora);
      if (v85)
      {
        v86 = v85;
        CFDictionaryAddValue(a2, v115, v85);
        CFDictionaryAddValue(a2, v118, valueb);
        CFRelease(v86);
      }
    }

LABEL_133:
    a2 = 0;
    goto LABEL_82;
  }

  v89 = OUTLINED_FUNCTION_104_0();
  ItemTextFromData = FigISOUserDataCreateItemFromThumbnailData(v89, v90, a6, v57);
  if (!ItemTextFromData)
  {
    goto LABEL_121;
  }

LABEL_162:
  v7 = ItemTextFromData;
LABEL_83:
  if (a6 && !v7)
  {
    if (*a6)
    {
      v7 = 0;
    }

    else
    {
      v7 = 4294954689;
    }
  }

LABEL_88:
  if (v152)
  {
    CFRelease(v152);
  }

  if (a2)
  {
    CFRelease(a2);
  }

  if (theBuffer)
  {
    CFRelease(theBuffer);
  }

  return v7;
}