@interface WillSeekTo
@end

@implementation WillSeekTo

void __fpic_WillSeekTo_block_invoke(uint64_t a1)
{
  v75 = *MEMORY[0x1E69E9840];
  if (*(*(a1 + 32) + 1216) >= 1 && dword_1EAF178D0 != 0)
  {
    LODWORD(v69.value) = 0;
    LOBYTE(type.value) = 0;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    v4 = os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    if (OUTLINED_FUNCTION_124_0(v4))
    {
      v5 = *(a1 + 56);
      v6 = *(*(a1 + 32) + 1216);
      LODWORD(v73[0]) = 136315650;
      *(v73 + 4) = "fpic_WillSeekTo_block_invoke";
      WORD6(v73[0]) = 1024;
      *(v73 + 14) = v5;
      WORD1(v73[1]) = 1024;
      DWORD1(v73[1]) = v6;
      LODWORD(v65) = 24;
      v64 = v73;
      OUTLINED_FUNCTION_108();
      _os_log_send_and_compose_impl(v7, v8, v9, v10, v11, os_log_and_send_and_compose_flags_and_os_log_type, 0, v12);
    }

    OUTLINED_FUNCTION_7();
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if ((*(a1 + 72) & 1) == 0)
  {
    v14 = *(a1 + 40);
    v13 = *(a1 + 48);
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    if (v13)
    {
      *(DerivedStorage + 1216) = -1;
      v16 = OUTLINED_FUNCTION_151_2();
      fpic_flipInterstitialAndPrimaryVisibility(v14, 0, v13, v16);
    }

    return;
  }

  v17 = *(a1 + 40);
  v18 = *(a1 + 56);
  v67 = *(a1 + 60);
  v19 = CMBaseObjectGetDerivedStorage();
  v20 = FigCFWeakReferenceHolderCopyReferencedObject();
  v21 = *(v19 + 208);
  if (v21)
  {
    Count = CFArrayGetCount(v21);
    if (v20)
    {
      goto LABEL_13;
    }

LABEL_33:
    OUTLINED_FUNCTION_111();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v64, v65, v67);
    return;
  }

  Count = 0;
  if (!v20)
  {
    goto LABEL_33;
  }

LABEL_13:
  HIDWORD(v65) = v18;
  if (!*(v19 + 336))
  {
    goto LABEL_39;
  }

  if (!*(v19 + 337) || Count < 1)
  {
    goto LABEL_39;
  }

  v24 = 0;
  v25 = MEMORY[0x1E6960C70];
  while (1)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(*(v19 + 208), v24);
    v27 = (*(v19 + 88))(v17, v20, ValueAtIndex);
    v74 = 0;
    memset(v73, 0, sizeof(v73));
    fpic_EventDateTimeMoment(v27, v73);
    memset(&type, 0, sizeof(type));
    if (v74)
    {
      *&type.value = v73[0];
      v28 = *&v73[1];
LABEL_21:
      type.epoch = v28;
      goto LABEL_24;
    }

    if (!BYTE1(v74))
    {
      *&type.value = *v25;
      v28 = *(v25 + 16);
      goto LABEL_21;
    }

    v29 = *(v19 + 320);
    time[0] = *(v19 + 304);
    time[1] = v29;
    v72 = *(v19 + 336);
    FigCreateTimeWithDateAndMoment(time, &type, *(&v73[1] + 1));
LABEL_24:
    v30 = FigPlayerInterstitialEventCueOnce(v27);
    Int32IfPresent = FigPlayerInterstitialEventCopyIdentifier(v27);
    v39 = Int32IfPresent;
    if (!v30 || (LODWORD(time[0]) = 0, Int32IfPresent = FigCFDictionaryGetInt32IfPresent(), SLODWORD(time[0]) <= 0))
    {
      OUTLINED_FUNCTION_243_2(Int32IfPresent, v32, v33, v34, v35, v36, v37, v38, v64, v65, v67);
      v69 = type;
      if (faqrp_timeDifferenceIsWithinTolerance(time, &v69, &kMomentsAreCloseThreshold))
      {
        break;
      }
    }

    if (v39)
    {
      CFRelease(v39);
    }

    if (Count == ++v24)
    {
      goto LABEL_39;
    }
  }

  v40 = HIDWORD(v65);
  if (dword_1EAF178D0)
  {
    v41 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT);
    OUTLINED_FUNCTION_40();
    if (v24)
    {
      OUTLINED_FUNCTION_243_2(v42, v43, v44, v45, v46, v47, v48, v49, v64, v65, v67);
      Seconds = CMTimeGetSeconds(time);
      LODWORD(v69.value) = 136315650;
      *(&v69.value + 4) = "fpic_showInterstitialLayerIfTimeAtAdBoundaryOnQueue";
      LOWORD(v69.flags) = 2048;
      *(&v69.flags + 2) = Seconds;
      HIWORD(v69.epoch) = 1024;
      v70 = v40;
      LODWORD(v66) = 28;
      OUTLINED_FUNCTION_38();
      _os_log_send_and_compose_impl(v51, v52, v53, v54, v55, v56, 0, v57, &v69, v66);
    }

    OUTLINED_FUNCTION_7();
    OUTLINED_FUNCTION_414(v58, v59, v60, v61, v62);
  }

  *(CMBaseObjectGetDerivedStorage() + 1216) = v40;
  v63 = OUTLINED_FUNCTION_151_2();
  fpic_flipInterstitialAndPrimaryVisibility(v17, 1, v20, v63);
LABEL_39:
  CFRelease(v20);
}

void __fpirc_WillSeekTo_block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v15 = *MEMORY[0x1E6960C70];
  v16 = *(MEMORY[0x1E6960C70] + 8);
  v1 = *(a1 + 48);
  CMBaseObjectGetDerivedStorage();
  v2 = FigCFWeakReferenceHolderCopyReferencedObject();
  v3 = v2;
  cf[0] = 0;
  if (v1)
  {
    if (!v2)
    {
      v8 = 0;
      goto LABEL_9;
    }

    v4 = OUTLINED_FUNCTION_284();
    if (v5(v4))
    {
      if (*(*(CMBaseObjectGetVTable() + 16) + 32))
      {
        v6 = OUTLINED_FUNCTION_265();
        v8 = v7(v6);
        if (!v8)
        {
          cf[0] = 0;
        }
      }

      else
      {
        v8 = -12782;
      }
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    OUTLINED_FUNCTION_303();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v11, v12, v13);
    v8 = v10;
    if (!v3)
    {
      goto LABEL_9;
    }
  }

  CFRelease(v3);
LABEL_9:
  OUTLINED_FUNCTION_2_4();
  *(v9 + 24) = v8;
  OUTLINED_FUNCTION_2_4();
}

@end