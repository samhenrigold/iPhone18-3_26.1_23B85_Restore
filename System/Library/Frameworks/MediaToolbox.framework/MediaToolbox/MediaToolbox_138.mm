void fpic_passImageQueueGaugeBetweenPlayers(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_187();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v40 = 0;
  v39 = 0uLL;
  v5 = *(DerivedStorage + 160);
  if (!v5)
  {
    goto LABEL_20;
  }

  if (v5 == v3)
  {
    LastCurrentItem = fpic_GetLastCurrentItem();
    if (!v3)
    {
      goto LABEL_20;
    }

    goto LABEL_15;
  }

  v7 = DerivedStorage;
  v8 = OUTLINED_FUNCTION_36_25();
  fpic_findEventAndItemIndexForItemOnQueue(v8, v9, v10, v11, v12);
  FigCFArrayGetValueAtIndex();
  OUTLINED_FUNCTION_399();
  v13 = fpic_UnwrapEvent();
  if (v39 != 0)
  {
    goto LABEL_20;
  }

  v14 = v13;
  v38 = 0;
  v36 = 0u;
  v37 = 0u;
  fpic_GetEffectiveCurrentItemMoment(&v36);
  v35 = 0;
  v33 = 0u;
  v34 = 0u;
  fpic_EventDateTimeMoment(v14, &v33);
  memset(&v32, 0, sizeof(v32));
  if (v35)
  {
    *&v32.value = v33;
    v23 = v34;
  }

  else
  {
    if (BYTE1(v35))
    {
      *time1 = v36;
      *&time1[16] = v37;
      v42 = v38;
      v15 = FigCreateTimeWithDateAndMoment(time1, &v32, *(&v34 + 1));
      goto LABEL_11;
    }

    OUTLINED_FUNCTION_77_10(MEMORY[0x1E6960C70]);
  }

  v32.epoch = v23;
LABEL_11:
  *time1 = v36;
  *&time1[16] = v37;
  OUTLINED_FUNCTION_123_3(v15, v16, v17, v18, v19, v20, v21, v22, v30.value, *&v30.timescale, v30.epoch, v31, *&v32.value);
  v30.epoch = v24;
  if ((CMTimeCompare(time1, &v30) & 0x80000000) == 0 || FigPlayerInterstitialEventIsPreRoll(v14) || *(CMBaseObjectGetDerivedStorage() + 896))
  {
    LastCurrentItem = 0;
    if (!v3)
    {
      goto LABEL_20;
    }
  }

  else
  {
    LastCurrentItem = *(v7 + 160);
    if (!v3)
    {
      goto LABEL_20;
    }
  }

LABEL_15:
  if (LastCurrentItem)
  {
    FigPlaybackItemGetFigBaseObject();
    v26 = v25;
    v27 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v27)
    {
      if (!v27(v26, @"ImageQueueGauge", *MEMORY[0x1E695E480], &v40))
      {
        FigPlaybackItemGetFigBaseObject();
        if (*(*(CMBaseObjectGetVTable() + 8) + 56))
        {
          v28 = OUTLINED_FUNCTION_236();
          v29(v28);
        }
      }
    }
  }

LABEL_20:
  if (v40)
  {
    CFRelease(v40);
  }
}

uint64_t fpic_GetLastCurrentItem()
{
  OUTLINED_FUNCTION_187();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  Count = CFArrayGetCount(*(DerivedStorage + 656));
  if (Count < 1)
  {
    return 0;
  }

  v3 = fpic_CopyPerAssetPerEventTrackedObjects(DerivedStorage, Count - 1, @"PlaybackItem");
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  if (CFArrayGetCount(v3) < 1)
  {
    v8 = 0;
  }

  else
  {
    v5 = CFArrayGetCount(v4);
    CFArrayGetValueAtIndex(v4, v5 - 1);
    v6 = OUTLINED_FUNCTION_399();
    v8 = fpic_UnwrapPlaybackItem(v6, v7, v0);
  }

  CFRelease(v4);
  return v8;
}

double fpic_copyInterstitialPlayer(uint64_t a1, uint64_t a2, void *a3)
{
  OUTLINED_FUNCTION_180_1();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a3)
  {
    if (*(DerivedStorage + 48))
    {
      v6 = OUTLINED_FUNCTION_171();
      v8 = v7(v6);
      if (v8)
      {
        v8 = CFRetain(v8);
      }

      *a3 = v8;
    }
  }

  else
  {
    OUTLINED_FUNCTION_243();

    return FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
  }

  return result;
}

void fpic_FinishInitiatedSeek()
{
  OUTLINED_FUNCTION_172_2();
  v103 = v0;
  v104 = v1;
  v3 = v2;
  v5 = v4;
  v102 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (v3)
  {
    v7 = @"fpiInitiatedSeekWasCanceled";
  }

  else
  {
    v7 = @"fpiInitiatedSeekDidComplete";
  }

  if (*(CMBaseObjectGetDerivedStorage() + 896))
  {
    v8 = FPSupport_SeekIDGetSource(*(DerivedStorage + 896));
    CMBaseObjectGetDerivedStorage();
    v9 = FigCFWeakReferenceHolderCopyReferencedObject();
    cf = 0;
    v10 = MEMORY[0x1E695E480];
    if (v9)
    {
      v11 = v9;
      v12 = OUTLINED_FUNCTION_193_0();
      if (v13(v12))
      {
        FigPlayerGetFigBaseObject();
        v15 = v14;
        v16 = *(*(CMBaseObjectGetVTable() + 8) + 48);
        if (v16)
        {
          if (!v16(v15, @"ActionAtEnd", *v10, &cf) && FigCFEqual())
          {
            if (dword_1EAF178D0)
            {
              v91 = OUTLINED_FUNCTION_42_2(qword_1EAF178C8, v17, v18, v19, v20, v21, v22, v23, v88, v89, v90, v91, v92, SBYTE2(v92), 0, 0);
              os_log_type_enabled(v91, BYTE3(v92));
              OUTLINED_FUNCTION_202();
              if (v25)
              {
                v26 = v24;
              }

              else
              {
                v26 = HIDWORD(v92);
              }

              if (v26)
              {
                v96 = 136315394;
                OUTLINED_FUNCTION_28_29();
                v99 = v5;
                OUTLINED_FUNCTION_32();
                OUTLINED_FUNCTION_108();
                _os_log_send_and_compose_impl(v27, v28, v29, v30, v31, v91, BYTE3(v92), v32);
              }

              OUTLINED_FUNCTION_7();
              fig_log_call_emit_and_clean_up_after_send_and_compose();
            }

            v33 = OUTLINED_FUNCTION_193_0();
            fpic_SetInterstitialActionAtEnd(v33, v34, v35);
          }
        }
      }

      CFRelease(v11);
      if (cf)
      {
        CFRelease(cf);
      }
    }

    else
    {
      OUTLINED_FUNCTION_111();
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v88, v89, v90);
    }

    v36 = fpic_UnwrapEvent();
    v37 = FigPlayerInterstitialEventIsPostRoll(v36);
    if (!v3 && v37)
    {
      *(DerivedStorage + 1145) = 1;
    }

    if ((v8 & 0xFFFFFFFE) == 4)
    {
      CMBaseObjectGetDerivedStorage();
      Mutable = CFDictionaryCreateMutable(*v10, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      if (Mutable)
      {
        v46 = FigCFDictionarySetInt32();
        if (v46)
        {
LABEL_42:
          CFRelease(Mutable);
          goto LABEL_45;
        }
      }

      else
      {
        OUTLINED_FUNCTION_111();
        FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v88, v89, v90);
        if (v46)
        {
          goto LABEL_45;
        }
      }

      if (dword_1EAF178D0)
      {
        v54 = OUTLINED_FUNCTION_134_2(v46, v47, v48, v49, v50, v51, v52, v53, v88, v89, v90, v91, v92, SBYTE4(v92), cf);
        v55 = cf;
        os_log_type_enabled(v54, v93);
        OUTLINED_FUNCTION_125();
        if (v25)
        {
          v57 = v56;
        }

        else
        {
          v57 = v55;
        }

        if (v57)
        {
          v58 = "was canceled";
          v59 = *(DerivedStorage + 896);
          v97 = "fpic_FinishInitiatedSeek";
          v96 = 136315906;
          v98 = 2048;
          if (!v3)
          {
            v58 = "did complete";
          }

          v99 = v5;
          v100 = 2080;
          *v101 = v58;
          *&v101[8] = 1024;
          *&v101[10] = v59;
          OUTLINED_FUNCTION_32();
          OUTLINED_FUNCTION_23();
          _os_log_send_and_compose_impl(v60, v61, v62, v63, v64, v65, v93, v66);
        }

        OUTLINED_FUNCTION_7();
        OUTLINED_FUNCTION_417(v78, v79, v80, v81, v82);
      }

      fpic_PostNotification(v5, v7, Mutable);
      fpic_clearIntentionToSeekIntoEventState(v5);
      if (Mutable)
      {
        goto LABEL_42;
      }
    }

    else
    {
      if (v8 == 3 && dword_1EAF178D0)
      {
        v67 = OUTLINED_FUNCTION_134_2(v37, v38, v39, v40, v41, v42, v43, v44, v88, v89, v90, v91, v92, SBYTE4(v92), cf);
        v68 = os_log_type_enabled(v67, v94);
        if (OUTLINED_FUNCTION_115_1(v68))
        {
          v69 = *(DerivedStorage + 896);
          v70 = "was canceled";
          v97 = "fpic_FinishInitiatedSeek";
          v96 = 136315906;
          v98 = 2048;
          if (!v3)
          {
            v70 = "completed";
          }

          v99 = v5;
          v100 = 1024;
          *v101 = v69;
          *&v101[4] = 2080;
          *&v101[6] = v70;
          OUTLINED_FUNCTION_32();
          OUTLINED_FUNCTION_65();
          _os_log_send_and_compose_impl(v71, v72, v73, v74, v75, v76, v94, v77);
        }

        OUTLINED_FUNCTION_7();
        OUTLINED_FUNCTION_414(v83, v84, v85, v86, v87);
      }

      fpic_clearIntentionToSeekIntoEventState(v5);
    }
  }

LABEL_45:
  OUTLINED_FUNCTION_171_2();
}

double fpic_removeAllCurrentEventsAfterEvent(uint64_t a1, uint64_t a2, uint64_t a3, int a4, int a5)
{
  OUTLINED_FUNCTION_433();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v11 = *(DerivedStorage + 656);
  if (v11)
  {
    Count = CFArrayGetCount(v11);
    v25 = 0;
    result = 0.0;
    v23 = 0u;
    v24 = 0u;
    if (v5)
    {
      v13 = Count - 1;
      if (Count >= 1)
      {
        CMBaseObjectGetDerivedStorage();
        FirstIndexOfValue = FigCFArrayGetFirstIndexOfValue();
        v15 = FirstIndexOfValue;
        if (!a3 || FirstIndexOfValue != -1)
        {
          if (!a3)
          {
            FigCFArrayGetFirstValue();
          }

          OUTLINED_FUNCTION_16_13();
          v16 = fpic_UnwrapEvent();
          fpic_GetEventStartMoment(v16, &v23);
          for (; v13 > v15; --v13)
          {
            CFArrayGetValueAtIndex(*(DerivedStorage + 656), v13);
            OUTLINED_FUNCTION_313_1();
            v17 = fpic_UnwrapEvent();
            v22 = 0;
            v20 = 0u;
            v21 = 0u;
            fpic_GetEventStartMoment(v17, &v20);
            if (!a5)
            {
              v28[0] = v20;
              v28[1] = v21;
              v29 = v22;
              v26[0] = v23;
              v26[1] = v24;
              v27 = v25;
              if (!fpic_MomentsAreCloseWithTolerance(v28, v26, &kMomentsAreCloseThreshold))
              {
                continue;
              }
            }

            v18 = OUTLINED_FUNCTION_313_1();
            fpic_RemoveEvent(v18, v19, v5, 0, a4, 0);
          }
        }
      }

      return result;
    }
  }

  else if (v5)
  {
    return result;
  }

  OUTLINED_FUNCTION_429();

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
}

void fpic_setLocalizedStringsBundle()
{
  OUTLINED_FUNCTION_108_3();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v2 = FigCFEqual();
  if (!v2)
  {
    if (dword_1EAF178D0)
    {
      v10 = OUTLINED_FUNCTION_18_43(v2, v3, v4, v5, v6, v7, v8, v9, v33, v35, v37, v39, SBYTE2(v39), SBYTE3(v39), SHIDWORD(v39));
      v18 = OUTLINED_FUNCTION_19_4(v10, v11, v12, v13, v14, v15, v16, v17, v34, v36, v38, v40, v41, v42, v43);
      if (OUTLINED_FUNCTION_115_1(v18))
      {
        OUTLINED_FUNCTION_240_1();
        OUTLINED_FUNCTION_39();
        OUTLINED_FUNCTION_108();
        OUTLINED_FUNCTION_448(v19, v20, v21, v22, v23, v24, v25, v26);
        OUTLINED_FUNCTION_612();
      }

      OUTLINED_FUNCTION_7();
      OUTLINED_FUNCTION_414(v27, v28, v29, v30, v31);
    }

    v32 = *(DerivedStorage + 1264);
    *(DerivedStorage + 1264) = v0;
    if (v0)
    {
      CFRetain(v0);
    }

    if (v32)
    {
      CFRelease(v32);
    }
  }
}

void fpic_setLocalizedStringsTableName()
{
  OUTLINED_FUNCTION_108_3();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v2 = FigCFEqual();
  if (!v2)
  {
    if (dword_1EAF178D0)
    {
      v10 = OUTLINED_FUNCTION_18_43(v2, v3, v4, v5, v6, v7, v8, v9, v33, v35, v37, v39, SBYTE2(v39), SBYTE3(v39), SHIDWORD(v39));
      v18 = OUTLINED_FUNCTION_19_4(v10, v11, v12, v13, v14, v15, v16, v17, v34, v36, v38, v40, v41, v42, v43);
      if (OUTLINED_FUNCTION_115_1(v18))
      {
        OUTLINED_FUNCTION_240_1();
        OUTLINED_FUNCTION_39();
        OUTLINED_FUNCTION_108();
        OUTLINED_FUNCTION_448(v19, v20, v21, v22, v23, v24, v25, v26);
        OUTLINED_FUNCTION_612();
      }

      OUTLINED_FUNCTION_7();
      OUTLINED_FUNCTION_414(v27, v28, v29, v30, v31);
    }

    v32 = *(DerivedStorage + 1272);
    *(DerivedStorage + 1272) = v0;
    if (v0)
    {
      CFRetain(v0);
    }

    if (v32)
    {
      CFRelease(v32);
    }
  }
}

void fpic_updateIntegratedTimelineOffsetTimesOnItemForEvent()
{
  OUTLINED_FUNCTION_649();
  v1 = v0;
  v3 = v2;
  v81 = v4;
  v6 = v5;
  CMBaseObjectGetDerivedStorage();
  OUTLINED_FUNCTION_184();
  fpic_UnwrapEvent();
  OUTLINED_FUNCTION_392(MEMORY[0x1E6960C70]);
  v68 = v7;
  v8 = FigPlayerInterstitialEventCopyIdentifier(v7);
  CMBaseObjectGetDerivedStorage();
  FirstIndexOfValue = FigCFArrayGetFirstIndexOfValue();
  v10 = OUTLINED_FUNCTION_204_0();
  PerEventTrackingCount = fpic_GetPerEventTrackingCount(v10, v11);
  OUTLINED_FUNCTION_624();
  FigCFDictionaryGetCMTimeIfPresent();
  cf = v8;
  if (v93.flags)
  {
    if (!FirstIndexOfValue)
    {
      memset(v91, 0, 24);
      DerivedStorage = CMBaseObjectGetDerivedStorage();
      v96[0] = *(DerivedStorage + 432);
      *&rhs.source.start.value = *(DerivedStorage + 480);
      rhs.source.start.epoch = *(DerivedStorage + 496);
      CMTimeAdd(v91, v96, &rhs.source.start);
      rhs.source.start = v93;
      v95 = *v91;
      OUTLINED_FUNCTION_216_2(*&v91[16]);
      CMTimeAdd(v16, v14, v15);
      OUTLINED_FUNCTION_230_2();
    }

    if (PerEventTrackingCount >= 1)
    {
      v60 = v1;
      v62 = v3;
      v17 = 0;
      v18 = *MEMORY[0x1E695E480];
      v64 = @"IntegratedTimelineTimeOffsets";
      do
      {
        v19 = OUTLINED_FUNCTION_204_0();
        fpic_GetPerAssetPerEventTrackedObject(v19, v20, v17, @"PlaybackItem");
        v21 = OUTLINED_FUNCTION_577();
        if (!fpic_UnwrapPlaybackItem(v21, v22, v81))
        {
          goto LABEL_20;
        }

        v73 = *(MEMORY[0x1E6960C98] + 16);
        v76 = *MEMORY[0x1E6960C98];
        *v91 = *MEMORY[0x1E6960C98];
        *&v91[16] = v73;
        v70 = *(MEMORY[0x1E6960C98] + 32);
        v92 = v70;
        if (FigPlayerInterstitialEventGetTimelineOccupancy(v68))
        {
          memset(&rhs, 0, 24);
          fpic_GetEventItemDurationOnEventTimeline(v6, v81, v62, v17, &rhs);
          OUTLINED_FUNCTION_29();
          if (v42)
          {
            v43 = OUTLINED_FUNCTION_58_10(v34, v35, v36, v37, v38, v39, v40, v41, v58, v60, v62, v64, cf, v68, v70, *(&v70 + 1), v73, *(&v73 + 1), v76, *(&v76 + 1), v79, v81, v83, v85, v87, v89, *v91, *&v91[8], *&v91[16], *&v91[24], v92, *(&v92 + 1), *&v93.value, v93.epoch);
            v46 = CMTimeRangeMake(v45, v43, v44);
            v54 = OUTLINED_FUNCTION_58_10(v46, v47, v48, v49, v50, v51, v52, v53, v59, v61, v63, v65, cfa, v69, v71, v72, v74, v75, v77, v78, v80, v82, v84, v86, v88, v90, v96[0].value, *&v96[0].timescale, v96[0].epoch, v96[1].value, *&v96[1].timescale, v96[1].epoch, *&v93.value, v93.epoch);
            CMTimeAdd(v56, v54, v55);
            OUTLINED_FUNCTION_230_2();
          }
        }

        else
        {
          v96[0] = v93;
          OUTLINED_FUNCTION_146_3();
          CMTimeRangeMake(v23, v96, &rhs.source.start);
        }

        *&v96[0].value = v76;
        *&v96[0].epoch = v73;
        *&v96[1].timescale = v70;
        *&v96[2].value = *v91;
        *&v96[2].epoch = *&v91[16];
        *&v96[3].timescale = v92;
        OUTLINED_FUNCTION_146_3();
        v95 = *(v24 + 24);
        OUTLINED_FUNCTION_216_2(*(v24 + 40));
        CMTimeRangeMake(v27, v25, v26);
        memcpy(&rhs, v96, sizeof(rhs));
        rhs.source.start.value = CMTimeMappingCopyAsDictionary(&rhs, v18);
        if (rhs.source.start.value)
        {
          v28 = CFArrayCreate(v18, &rhs, 1, MEMORY[0x1E695E9C0]);
          if (!v28)
          {
            OUTLINED_FUNCTION_120();
            FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v58, v60, v62);
            goto LABEL_13;
          }

          FigPlaybackItemGetFigBaseObject();
          v30 = v29;
          v31 = *(*(CMBaseObjectGetVTable() + 8) + 56);
          if (v31)
          {
            v32 = v31(v30, v64, v28);
LABEL_13:
            v33 = v32;
            goto LABEL_15;
          }

          v33 = -12782;
        }

        else
        {
          OUTLINED_FUNCTION_120();
          FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v58, v60, v62);
          v33 = v57;
          v28 = 0;
        }

LABEL_15:
        if (rhs.source.start.value)
        {
          CFRelease(rhs.source.start.value);
        }

        if (v28)
        {
          CFRelease(v28);
        }

        if (v33)
        {
          break;
        }

LABEL_20:
        ++v17;
      }

      while (PerEventTrackingCount != v17);
    }
  }

  if (cf)
  {
    CFRelease(cf);
  }

  OUTLINED_FUNCTION_651();
}

void __fpic_cancelCurrentEventPlaybackWithReason_block_invoke()
{
  OUTLINED_FUNCTION_193();
  v1 = v0;
  v171 = *MEMORY[0x1E69E9840];
  CurrentlyPlayingEvent = fpic_GetCurrentlyPlayingEvent(*(v0 + 80));
  v3 = fpic_UnwrapEvent();
  v4 = FigCFEqual();
  if (!CurrentlyPlayingEvent)
  {
    goto LABEL_2;
  }

  v5 = v4;
  v6 = *(v1 + 124);
  v151 = 0;
  v149 = 0u;
  v150 = 0u;
  fpic_GetEventStartMoment(v3, &v149);
  v147 = 0;
  v145 = 0u;
  v146 = 0u;
  v143 = 0;
  v141 = 0u;
  v142 = 0u;
  v7 = OUTLINED_FUNCTION_150_3(MEMORY[0x1E6960C70]);
  v9 = *(v8 + 16);
  v139.epoch = v9;
  v128 = v7;
  v136 = v7;
  v137 = v9;
  if (dword_1EAF178D0)
  {
    LODWORD(v163) = 0;
    type[0] = OS_LOG_TYPE_DEFAULT;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    v11 = type[0];
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, type[0]);
    OUTLINED_FUNCTION_28();
    if (&dword_1EAF17000)
    {
      if (*(v1 + 136))
      {
        v12 = "and remove ";
      }

      else
      {
        v12 = "";
      }

      v168 = *(v1 + 112);
      v13 = OUTLINED_FUNCTION_137_2(*(v1 + 128));
      *v166 = 136315906;
      *&v166[4] = "fpic_cancelCurrentEventPlaybackWithReason_block_invoke";
      *&v166[12] = 2080;
      *&v166[14] = v12;
      *&v166[22] = 2048;
      *&v166[24] = v13;
      LOWORD(v167[0]) = 2112;
      *(v167 + 2) = CurrentlyPlayingEvent;
      OUTLINED_FUNCTION_95_1();
      v124 = v166;
      OUTLINED_FUNCTION_38();
      _os_log_send_and_compose_impl(v14, v15, v16, v17, v18, v19, v11, v20);
    }

    OUTLINED_FUNCTION_7();
    OUTLINED_FUNCTION_417(v21, v22, v23, v24, v25);
  }

  fpic_GetCurrentlyPlayingEventPlayoutDuration();
  v26 = *(v1 + 80);
  v168 = v136;
  *&v169 = v137;
  fpic_PostInterstitialDidFinishNotification(v26, CurrentlyPlayingEvent, &v168, 0, v27, v28, v29, v30, v124, SHIDWORD(v124), v126, v128.n128_i64[0], v128.n128_i64[1], v130, v131, v132, SHIDWORD(v132), v133, v134, v135, v136, *(&v136 + 1), v137, v138, v139.value, *&v139.timescale, v139.epoch, v140, v141, *(&v141 + 1), v142, *(&v142 + 1), v143, v144, v145, *(&v145 + 1), v146, *(&v146 + 1), v147, v148, v149, *(&v149 + 1), v150, *(&v150 + 1), v151);
  v31 = *(v1 + 80);
  if (v5)
  {
    v32 = *(v1 + 96);
    OUTLINED_FUNCTION_81_5();
    v34 = *(v33 + 24);
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    v160 = v129;
    v161 = v9;
    v157 = v129;
    v158 = v9;
    v165 = 0;
    v163 = 0u;
    v164 = 0u;
    v155 = 0;
    *type = 0u;
    v154 = 0u;
    if (v34)
    {
      v36 = DerivedStorage;
      fpic_UngatePrimaryBuffering(v31);
      OUTLINED_FUNCTION_245_2();
      fpic_ApplyResumptionOffset();
      if (!v37)
      {
        v38 = OUTLINED_FUNCTION_235();
        fpic_PredictEventDurationOnPrimary(v38, v39, v32, v40);
        v41 = *(v36 + 656);
        if (v41)
        {
          if (CFArrayGetCount(v41) >= 2)
          {
            FigCFArrayGetValueAtIndex();
            v67 = fpic_UnwrapEvent();
            fpic_GetEventStartMoment(v67, type);
            OUTLINED_FUNCTION_235();
            v68 = fpic_UnwrapEvent();
            fpic_GetEventStartMoment(v68, &v163);
            v168 = *type;
            v169 = v154;
            v170 = v155;
            OUTLINED_FUNCTION_198_2(v69, v70, v71, v72, v73, v74, v75, v76, v125, v127, v129, *(&v129 + 1), v130, v131, v132, v133, v134, v135, v136, *(&v136 + 1), v137, v138, v139.value, *&v139.timescale, v139.epoch, v140, v141, *(&v141 + 1), v142, *(&v142 + 1), v143, v144, v145, *(&v145 + 1), v146, *(&v146 + 1), v147, v148, v149, *(&v149 + 1), v150, *(&v150 + 1), v151, v152, *type, *&type[8], v154, *(&v154 + 1), v155, v156, v157, *(&v157 + 1), v158, v159, v160, *(&v160 + 1), v161, v162, v163);
            v77 = OUTLINED_FUNCTION_250_1();
            if (fpic_MomentsAreCloseWithTolerance(v77, v78, v79))
            {
              CMBaseObjectGetDerivedStorage();
              FigCFArrayGetFirstIndexOfValue();
              v80 = OUTLINED_FUNCTION_235();
              fpic_GetProjectedDuration(v80, v81, v82, v32);
              v83 = v36 + 408;
              v168 = v160;
              *&v169 = v161;
              fpic_AccumulateDuration((v36 + 408), &v168);
              v84 = v36 + 456;
              v168 = v157;
              *&v169 = v158;
              fpic_AccumulateDuration((v36 + 456), &v168);
              if (dword_1EAF178D0)
              {
                HIDWORD(v152) = 0;
                BYTE3(v152) = 0;
                v85 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
                v86 = HIDWORD(v152);
                v87 = BYTE3(v152);
                if (os_log_type_enabled(v85, BYTE3(v152)))
                {
                  v88 = v86;
                }

                else
                {
                  v88 = v86 & 0xFFFFFFFE;
                }

                if (v88)
                {
                  v168 = *v83;
                  v89 = OUTLINED_FUNCTION_137_2(*(v83 + 16));
                  v168 = *v84;
                  OUTLINED_FUNCTION_137_2(*(v84 + 16));
                  *v166 = 136315906;
                  OUTLINED_FUNCTION_211_0("fpic_cancelCurrentEventPlaybackForSkipControlReason");
                  *&v166[12] = v90;
                  *(v91 + 14) = v31;
                  *&v166[22] = v90;
                  *&v166[24] = v89;
                  LOWORD(v167[0]) = v90;
                  *(v91 + 34) = v92;
                  OUTLINED_FUNCTION_95_1();
                  OUTLINED_FUNCTION_108();
                  _os_log_send_and_compose_impl(v93, v94, v95, v96, v97, v85, v87, v98, v166);
                }

                OUTLINED_FUNCTION_7();
                fig_log_call_emit_and_clean_up_after_send_and_compose();
              }
            }
          }
        }

        OUTLINED_FUNCTION_235();
        OUTLINED_FUNCTION_126_3();
        fpic_RemoveEvent(v42, v43, v44, v45, v46, v47);
      }
    }

    else
    {
      OUTLINED_FUNCTION_111();
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v125, v127, v129);
    }

    goto LABEL_2;
  }

  v48 = CMBaseObjectGetDerivedStorage();
  v165 = 0;
  v163 = 0u;
  v164 = 0u;
  if (*(v48 + 656))
  {
    v49 = v48;
    Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
    if (Mutable)
    {
      FigCFArrayGetFirstValue();
      v51 = fpic_UnwrapEvent();
      fpic_GetEventStartMoment(v51, &v163);
      for (i = 1; ; ++i)
      {
        Count = *(v49 + 656);
        if (Count)
        {
          Count = CFArrayGetCount(Count);
        }

        if (i >= Count)
        {
          break;
        }

        FigCFArrayGetValueAtIndex();
        v54 = fpic_UnwrapEvent();
        fpic_GetEventStartMoment(v54, &v168);
        OUTLINED_FUNCTION_198_2(v55, v56, v57, v58, v59, v60, v61, v62, v125, v127, v129, *(&v129 + 1), v130, v131, v132, v133, v134, v135, v136, *(&v136 + 1), v137, v138, v139.value, *&v139.timescale, v139.epoch, v140, v141, *(&v141 + 1), v142, *(&v142 + 1), v143, v144, v145, *(&v145 + 1), v146, *(&v146 + 1), v147, v148, v149, *(&v149 + 1), v150, *(&v150 + 1), v151, v152, *type, *&type[8], v154, *(&v154 + 1), v155, v156, v157, *(&v157 + 1), v158, v159, v160, *(&v160 + 1), v161, v162, v163);
        v63 = OUTLINED_FUNCTION_250_1();
        if (!fpic_MomentsAreCloseWithTolerance(v63, v64, &kMomentsAreCloseThreshold))
        {
          v65 = OUTLINED_FUNCTION_16_13();
          CFArrayAppendValue(v65, v66);
        }
      }
    }

    else
    {
      OUTLINED_FUNCTION_111();
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v125, v127, v129);
    }
  }

  else
  {
    Mutable = 0;
  }

  fpic_StopInterstitialPlayerAtCurrentItem();
  OUTLINED_FUNCTION_29();
  if (v99)
  {
    v139 = *(v1 + 112);
  }

  else
  {
    fpic_CurrentResumptionOffset(*(v1 + 80), (v6 & 1) == 0, *(v1 + 96), (v6 & 1) == 0, 0, 0, &v139);
  }

  OUTLINED_FUNCTION_81_5();
  fpic_removeAllCurrentEventsAfterEvent(v101, *(v100 + 24), CurrentlyPlayingEvent, 1, 0);
  v102 = *(v1 + 104);
  v103 = *(v102 + 360);
  v168 = *(v102 + 344);
  v169 = v103;
  v170 = *(v102 + 376);
  *v166 = v139;
  v104 = OUTLINED_FUNCTION_250_1();
  fpic_AddTimeToMoment(v104, v105, v106);
  OUTLINED_FUNCTION_81_5();
  fpic_RemoveEvent(v108, CurrentlyPlayingEvent, *(v107 + 24), *(v1 + 136), 1, 0);
  v109 = *(v1 + 80);
  v110 = *(*(v1 + 40) + 8);
  v111 = *(*(v1 + 48) + 8);
  v168 = v145;
  v169 = v146;
  v170 = v147;
  if (!fpic_FindEventStraddlingPrimaryMoment(v109, &v168, (v110 + 24), (v111 + 32)) || (OUTLINED_FUNCTION_62_14(), v118 = fpic_UnwrapEvent(), fpic_GetEventStartMoment(v118, &v141), v168 = v141, v169 = v142, v170 = v143, *v166 = v149, *&v166[16] = v150, v167[0] = v151, v119 = OUTLINED_FUNCTION_250_1(), fpic_MomentsAreCloseWithTolerance(v119, v120, v121)))
  {
    FirstValue = FigCFArrayGetFirstValue();
    OUTLINED_FUNCTION_81_5();
    fpic_removeAllCurrentEventsAfterEvent(v114, *(v113 + 24), 0, 1, 1);
    if (FirstValue)
    {
      OUTLINED_FUNCTION_124_4();
      OUTLINED_FUNCTION_235();
      v115 = fpic_UnwrapEvent();
      fpic_GetEventStartMoment(v115, &v130);
      v168 = v145;
      v169 = v146;
      v170 = v147;
      if (fpic_MomentGreaterThan(&v130, &v168))
      {
        fpic_RescheduleEvents(*(v1 + 80), Mutable);
      }
    }

    *(*(v1 + 104) + 408) = v139;
    fpic_UngatePrimaryBuffering(*(v1 + 80));
    fpic_ApplyResumptionOffset();
    OUTLINED_FUNCTION_30_8(v116, *(v1 + 72));
    if (Mutable)
    {
      OUTLINED_FUNCTION_50_14();
      if (!v117)
      {
        goto LABEL_50;
      }
    }
  }

  else
  {
    *(*(*(v1 + 56) + 8) + 24) = 1;
    v122 = CMBaseObjectGetDerivedStorage();
    v123 = *(v122 + 892);
    *(v122 + 892) = FPSupport_IncrementSeekID(v123);
    *(*(*(v1 + 64) + 8) + 24) = v123;
    OUTLINED_FUNCTION_62_14();
    if (FigCFArrayGetFirstIndexOfValue() != -1)
    {
      fpic_HopNextMomentIfNecessary();
    }

    if (Mutable)
    {
LABEL_50:
      CFRelease(Mutable);
    }
  }

LABEL_2:
  OUTLINED_FUNCTION_191();
}

void fpic_StopInterstitialPlayerAtCurrentItem()
{
  OUTLINED_FUNCTION_180_1();
  CMBaseObjectGetDerivedStorage();
  OUTLINED_FUNCTION_77_10(MEMORY[0x1E6960C70]);
  v0 = OUTLINED_FUNCTION_171();
  fpic_CopyNextItemFromInterstitialPlayer(v0, v1, v2);
}

uint64_t fpic_recordSeekIDAndShowInterstitialLayer(uint64_t a1, uint64_t a2, int a3, uint64_t a4, int a5)
{
  OUTLINED_FUNCTION_108_3();
  result = CMBaseObjectGetDerivedStorage();
  if (v5)
  {
    *(result + 1216) = a3;
    if (a5)
    {
      v11 = OUTLINED_FUNCTION_151_2();

      return fpic_flipInterstitialAndPrimaryVisibility(v6, a4, v5, v11);
    }
  }

  return result;
}

void fpic_AllowIntendedEventToSeekIntoToBeBeRescheduled(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  cf = 0;
  theArray = 0;
  v3 = *(DerivedStorage + 904);
  if (v3)
  {
    if (CFSetContainsValue(*(DerivedStorage + 688), v3))
    {
      v4 = fpic_UnwrapEvent();
      fpic_copyEventsScheduledAtSameMomentAsEvent(a1, v4, &theArray);
      LastValue = FigCFArrayGetLastValue();
      fpic_copyAbuttingEventsForEvent(a1, LastValue, &cf);
      for (i = FigCFArrayGetFirstIndexOfValue(); ; ++i)
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

        CFArrayGetValueAtIndex(theArray, i);
        fpic_ForgetPastEvent();
      }

      for (j = 0; ; ++j)
      {
        v9 = cf;
        if (cf)
        {
          v9 = CFArrayGetCount(cf);
        }

        if (j >= v9)
        {
          break;
        }

        CFArrayGetValueAtIndex(cf, j);
        fpic_ForgetPastEvent();
      }

      if (theArray)
      {
        CFRelease(theArray);
      }
    }

    if (cf)
    {
      CFRelease(cf);
    }
  }
}

void fpic_PruneCurrentEvents(uint64_t a1, uint64_t a2, char a3)
{
  CMBaseObjectGetDerivedStorage();
  v6 = FigCFWeakReferenceHolderCopyReferencedObject();
  if (v6)
  {
    v7 = v6;
    OUTLINED_FUNCTION_0_52();
    v9[1] = 3221225472;
    v9[2] = __fpic_PruneCurrentEvents_block_invoke;
    v9[3] = &__block_descriptor_57_e5_v8__0l;
    v9[4] = a1;
    v9[5] = v7;
    v9[6] = a2;
    v10 = a3;
    dispatch_sync(v8, v9);
    CFRelease(v7);
  }
}

void fpic_coordinationIdentifierChanged(uint64_t a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 160) == a2)
  {
    v5 = *DerivedStorage;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __fpic_coordinationIdentifierChanged_block_invoke;
    block[3] = &__block_descriptor_56_e5_v8__0l;
    block[4] = DerivedStorage;
    block[5] = a2;
    block[6] = a1;
    dispatch_sync(v5, block);
  }
}

void fpic_ReportInterstitialPlaybackDeadTime(uint64_t a1, OpaqueCMTimebase *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v4 = FigCFWeakReferenceHolderCopyReferencedObject();
  if (!v4)
  {
    return;
  }

  v5 = v4;
  v6 = OUTLINED_FUNCTION_235();
  v8 = v7(v6);
  if (*(DerivedStorage + 160) && v8)
  {
    UpTimeNanoseconds = FigGetUpTimeNanoseconds();
    OUTLINED_FUNCTION_235();
    v10 = fpic_CopyCurrentInterstitialItemTimebase();
    Rate = CMTimebaseGetRate(*(DerivedStorage + 1224));
    if (v10)
    {
      v12 = CMTimebaseGetRate(v10) > 0.0;
    }

    else
    {
      v12 = 0;
    }

    if (*(DerivedStorage + 1224) == a2 && Rate > 0.0 && (v13 = *(DerivedStorage + 1184)) != 0)
    {
      v14 = (DerivedStorage + 1184);
    }

    else
    {
      if (a2)
      {
        v15 = v10 == a2;
      }

      else
      {
        v15 = 0;
      }

      v16 = v15;
      if ((v16 & v12) != 1 || (v13 = *(DerivedStorage + 1176)) == 0)
      {
LABEL_24:
        if (v10)
        {
          CFRelease(v10);
        }

        goto LABEL_4;
      }

      v14 = (DerivedStorage + 1176);
    }

    v17 = *(DerivedStorage + 1192) + (UpTimeNanoseconds - v13) / 0xF4240uLL;
    *(DerivedStorage + 1192) = v17;
    fpic_setItemPropertyInt32(*(DerivedStorage + 160), @"interstitialPlaybackDeadTime", v17);
    *v14 = 0;
    goto LABEL_24;
  }

LABEL_4:

  CFRelease(v5);
}

void __fpic_checkForSnappedTimeToPauseBuffering_block_invoke(uint64_t a1)
{
  v4 = *(a1 + 32);
  if (*(v4 + 160))
  {
    if (*(v4 + 1052))
    {
      OUTLINED_FUNCTION_158_3(a1);
      if (!*(CMBaseObjectGetDerivedStorage() + 1088) && !*(*(v1 + 32) + 1146))
      {
        OUTLINED_FUNCTION_210_1();
        v5 = FigCFCopyPropertyAsTime();
        if (!v5 && (BYTE12(v103) & 1) != 0)
        {
          v139 = *(*(v1 + 32) + 1040);
          OUTLINED_FUNCTION_16_48(v5, v6, v7, v8, v9, v10, v11, v12, v76, v84, v92, v103);
          v20 = OUTLINED_FUNCTION_33_20(v13, v14, &kMomentsAreCloseThreshold, v15, v16, v17, v18, v19, v77, v85, v93, v104, v109, v111, v115, v119, v123, v127, v131, v135, v139);
          IsWithinTolerance = faqrp_timeDifferenceIsWithinTolerance(v20, v21, v22);
          if (!IsWithinTolerance)
          {
            v140 = *(*(v1 + 32) + 628);
            OUTLINED_FUNCTION_16_48(IsWithinTolerance, v24, v25, v26, v27, v28, v29, v30, v78, v86, v94, v105);
            v39 = OUTLINED_FUNCTION_33_20(v31, v32, v33, v34, v35, v36, v37, v38, v79, v87, v95, v106, v110, v112, v116, v120, v124, v128, v132, v136, v140);
            if (CMTimeCompare(v39, v40))
            {
              if (dword_1EAF178D0)
              {
                OUTLINED_FUNCTION_197_2();
                v49 = OUTLINED_FUNCTION_97_9(v41, v42, v43, v44, v45, v46, v47, v48, v80, v88, *v96, v96[2], v96[3], v96[4]);
                OUTLINED_FUNCTION_22_20(v49, v50, v51, v52, v53, v54, v55, v56, v81, v89, v97, v100, v101, v102);
                OUTLINED_FUNCTION_7_22();
                if (v3)
                {
                  OUTLINED_FUNCTION_135_3(*(*(v1 + 32) + 1056), v82, v90, v98, v107, *(&v107 + 1), v113, v117, v121, v125, v129, v133, v137, *(*(v1 + 32) + 1040), *(*(v1 + 32) + 1048), v142);
                  OUTLINED_FUNCTION_52_18(v57, v58, v59, v144, v60, v61, v62, v83, v91, v99, v108, v114, v118, v122, v126, v130, v134, v138, v141, v143);
                  OUTLINED_FUNCTION_28_29();
                  OUTLINED_FUNCTION_32();
                  OUTLINED_FUNCTION_65();
                  _os_log_send_and_compose_impl(v63, v64, v65, v66, v67, v68, v2, v69);
                }

                OUTLINED_FUNCTION_7();
                OUTLINED_FUNCTION_524(v70, v71, v72, v73, v74);
              }

              v75 = *(v1 + 32) + 628;
              *v75 = v107;
              *(v75 + 16) = v113;
            }
          }
        }
      }
    }
  }
}

void __fpic_checkForSnapOut_block_invoke()
{
  OUTLINED_FUNCTION_649();
  v80 = *MEMORY[0x1E69E9840];
  v3 = *(v2 + 32);
  if (*(v3 + 160))
  {
    v4 = v2;
    if (*(v3 + 256) || *(v3 + 257))
    {
      CMBaseObjectGetDerivedStorage();
      OUTLINED_FUNCTION_2_166();
      if (!v5 && !*(CMBaseObjectGetDerivedStorage() + 1088) && !*(*(v4 + 32) + 1146))
      {
        v60 = 0uLL;
        v61 = 0;
        if (!FigCFCopyPropertyAsTime() && (BYTE12(v60) & 1) != 0)
        {
          v57 = 0u;
          v58 = 0u;
          v6 = *(v4 + 32);
          v73 = v60;
          v7 = *(v6 + 240);
          v68 = *(v6 + 224);
          v59 = 0;
          *&v74 = v61;
          OUTLINED_FUNCTION_119_3(v6, v7);
          fpic_MakeMomentFromTime(&v73, &v68, &v57);
          v8 = *(v4 + 32);
          if ((!v59 || !*(v8 + 256)) && (!BYTE1(v59) || !*(v8 + 257)))
          {
            fpic_CurrentItemMoment(&v68);
            v73 = v60;
            *&v74 = v61;
            fpic_MakeMomentFromTime(&v73, &v68, &v57);
            v8 = *(v4 + 32);
          }

          v9 = *(v8 + 240);
          v68 = *(v8 + 224);
          OUTLINED_FUNCTION_119_3(v8, v9);
          if (!fpic_MomentsAreCloseWithTolerance(&v57, &v68, &kMomentsAreCloseThreshold))
          {
            v10 = *(v4 + 32);
            v68 = v57;
            v69 = v58;
            v70 = v59;
            v11 = *(v10 + 280);
            v73 = *(v10 + 264);
            v74 = v11;
            *&v75 = *(v10 + 296);
            v12 = fpic_MomentsAreCloseWithTolerance(&v68, &v73, &kMomentsAreCloseThreshold);
            if (!v12)
            {
              v79 = 0;
              v77 = 0u;
              v78 = 0u;
              v75 = 0u;
              v76 = 0u;
              v73 = 0u;
              v74 = 0u;
              v72 = 0;
              memset(v71, 0, sizeof(v71));
              if (dword_1EAF178D0)
              {
                v20 = OUTLINED_FUNCTION_18_43(v12, v13, v14, v15, v16, v17, v18, v19, v46, v48, v50, v52, SBYTE2(v52), SBYTE3(v52), SHIDWORD(v52));
                OUTLINED_FUNCTION_86_2(v20, v21, v22, v23, v24, v25, v26, v27, v47, v49, v51, v53, v54, v55, v56);
                OUTLINED_FUNCTION_7_22();
                if (v1)
                {
                  v28 = *(v4 + 32);
                  v29 = *(v4 + 40);
                  v30 = *(v28 + 240);
                  v68 = *(v28 + 224);
                  OUTLINED_FUNCTION_119_3(v28, v30);
                  fpic_getMomentDesc(&v68, &v73);
                  v68 = v57;
                  v69 = v58;
                  v70 = v59;
                  fpic_getMomentDesc(&v68, v71);
                  v62[0] = 136315906;
                  OUTLINED_FUNCTION_120_2();
                  v63 = v29;
                  v64 = 2080;
                  v65 = &v73;
                  v66 = 2080;
                  v67 = v71;
                  OUTLINED_FUNCTION_95_1();
                  OUTLINED_FUNCTION_65();
                  _os_log_send_and_compose_impl(v31, v32, v33, v34, v35, v36, v0, v37, v62);
                  OUTLINED_FUNCTION_329_0();
                }

                OUTLINED_FUNCTION_7();
                OUTLINED_FUNCTION_524(v38, v39, v40, v41, v42);
              }

              v43 = *(v4 + 32);
              *(v43 + 296) = v59;
              v44 = v58;
              *(v43 + 264) = v57;
              *(v43 + 280) = v44;
              v45 = *(v4 + 32);
              *(v45 + 1080) = v61;
              *(v45 + 1064) = v60;
              fpic_EnsureCurrentEventsHaveResolvedProperties(*(v4 + 40));
            }
          }
        }
      }
    }
  }

  OUTLINED_FUNCTION_651();
}

void fpic_scheduleInterstitialAudioTransition(uint64_t a1, __int128 *a2, int a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v7 = FigCFWeakReferenceHolderCopyReferencedObject();
  OUTLINED_FUNCTION_27_16();
  FirstCurrentItem = fpic_GetFirstCurrentItem();
  OUTLINED_FUNCTION_27_16();
  v9 = fpic_CopyCurrentInterstitialItemTimebase();
  v10 = v9;
  if (a3)
  {
    v11 = *(DerivedStorage + 1224);
    v12 = 1092;
  }

  else
  {
    v12 = 1116;
    v11 = v9;
  }

  v64 = *(DerivedStorage + v12);
  if (*(a2 + 12))
  {
    if (v11)
    {
      if (*(DerivedStorage + 160))
      {
        if (FirstCurrentItem)
        {
          time1 = v64;
          OUTLINED_FUNCTION_189_1();
          if (CMTimeCompare(&time1, &time2))
          {
            v13 = CMBaseObjectGetDerivedStorage();
            time2.value = 0;
            PrimaryPlayerAndCopyWrapper = fpic_GetPrimaryPlayerAndCopyWrapper(a1, &time2);
            if (a3)
            {
              v51 = OUTLINED_FUNCTION_27_16();
              v52(v51);
              OUTLINED_FUNCTION_27_16();
              v15 = fpic_GetFirstCurrentItem();
            }

            else
            {
              v15 = *(v13 + 160);
            }

            if (*(CMBaseObjectGetDerivedStorage() + 1256))
            {
              goto LABEL_12;
            }

            v53 = PrimaryPlayerAndCopyWrapper;
            time1.value = *MEMORY[0x1E695E4C0];
            value = time1.value;
            v54 = *MEMORY[0x1E695E480];
            FigPlayerGetFigBaseObject();
            v22 = v21;
            v23 = *(*(CMBaseObjectGetVTable() + 8) + 48);
            v24 = value;
            if (v23)
            {
              v23(v22, @"IsBufferedAirPlayActive", v54, &time1);
              v24 = time1.value;
            }

            v25 = *MEMORY[0x1E695E4D0];
            if (v24 == *MEMORY[0x1E695E4D0])
            {
              goto LABEL_12;
            }

            time1.value = value;
            v26 = value;
            if (v15)
            {
              FigPlaybackItemGetFigBaseObject();
              v28 = v27;
              v29 = *(*(CMBaseObjectGetVTable() + 8) + 48);
              v26 = value;
              if (v29)
              {
                v29(v28, @"HasEnabledAudio", v54, &time1);
                v26 = time1.value;
              }
            }

            if (v26 != v25)
            {
LABEL_12:
              v16 = 1;
            }

            else
            {
              time1.value = value;
              FigPlayerGetFigBaseObject();
              v31 = v30;
              v32 = *(*(CMBaseObjectGetVTable() + 8) + 48);
              if (v32)
              {
                v32(v31, @"IsNeroPlaybackActive", v54, &time1);
                value = time1.value;
              }

              v16 = value == v25;
            }

            if (time2.value)
            {
              CFRelease(time2.value);
            }

            if (!v16)
            {
              cf = 0;
              if (a3)
              {
                v17 = OUTLINED_FUNCTION_27_16();
                v19 = v18(v17);
              }

              else
              {
                v19 = fpic_GetPrimaryPlayerAndCopyWrapper(a1, &cf);
              }

              v33 = v19;
              Rate = CMTimebaseGetRate(v11);
              memset(&time1, 0, sizeof(time1));
              CMTimebaseGetTime(&time1, v11);
              OUTLINED_FUNCTION_189_1();
              lhs = time1;
              if (CMTimeCompare(&time2, &lhs) >= 1 && Rate > 0.0)
              {
                OUTLINED_FUNCTION_228_1();
                lhs = *a2;
                rhs = time1;
                CMTimeSubtract(&time2, &lhs, &rhs);
                memset(&lhs, 0, sizeof(lhs));
                rhs = time2;
                CMTimeMultiplyByFloat64(&lhs, &rhs, 1.0 / Rate);
                memset(&rhs, 0, sizeof(rhs));
                HostTimeClock = CMClockGetHostTimeClock();
                Time = CMClockGetTime(&rhs, HostTimeClock);
                OUTLINED_FUNCTION_192_2(Time, v37, v38, v39, v40, v41, v42, v43, v53, v54, v55.value, *&v55.timescale, v55.epoch, v56, v57.value, *&v57.timescale, v57.epoch, 0, 0, 0, *&rhs.value);
                v55 = lhs;
                CMTimeAdd(&v58, &v57, &v55);
                v55.value = 0;
                if (a3)
                {
                  v44 = 42;
                }

                else
                {
                  v44 = 43;
                }

                FPSupport_CreateSetRateOptions(*MEMORY[0x1E695E480], v44, &v55);
                v57 = v58;
                FigCFDictionarySetCMTime();
                FigCFDictionarySetInt32();
                v45 = v55.value;
                v46 = *(*(CMBaseObjectGetVTable() + 16) + 104);
                if (v46)
                {
                  v47 = Rate;
                  if (!v46(v33, v45, v47))
                  {
                    v48 = 1092;
                    if (!a3)
                    {
                      v48 = 1116;
                    }

                    v49 = *a2;
                    v50 = DerivedStorage + v48;
                    *(v50 + 16) = *(a2 + 2);
                    *v50 = v49;
                  }
                }

                if (v55.value)
                {
                  CFRelease(v55.value);
                }
              }

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

  if (v10)
  {
    CFRelease(v10);
  }

  if (v7)
  {
    CFRelease(v7);
  }
}

void fpic_updateCurrentResumptionTimeIfPlayingPostroll()
{
  OUTLINED_FUNCTION_172_2();
  v56 = v3;
  v57 = v4;
  v6 = v5;
  v55 = *MEMORY[0x1E69E9840];
  if (*(CMBaseObjectGetDerivedStorage() + 1146))
  {
    v7 = OUTLINED_FUNCTION_251();
    if (fpic_GetCurrentlyPlayingEvent(v7))
    {
      if (*(v0 + 568))
      {
        OUTLINED_FUNCTION_180_3();
        time2 = *(v0 + 384);
        v8 = CMTimeCompare(&time1, &time2);
        if (v8 >= 1)
        {
          if (dword_1EAF178D0)
          {
            v16 = OUTLINED_FUNCTION_19_42(v8, v9, v10, v11, v12, v13, v14, v15, v39, v41, v43, v45, SBYTE2(v45), SBYTE3(v45), SHIDWORD(v45));
            OUTLINED_FUNCTION_167_3(v16, v17, v18, v19, v20, v21, v22, v23, v40, v42, v44, v46, v47, v48, v49);
            OUTLINED_FUNCTION_40();
            if (v2)
            {
              OUTLINED_FUNCTION_180_3();
              Seconds = CMTimeGetSeconds(&time1);
              time1 = *(v0 + 384);
              CMTimeGetSeconds(&time1);
              LODWORD(time2.value) = 136315906;
              OUTLINED_FUNCTION_2_6();
              *(&time2.flags + 2) = v6;
              HIWORD(time2.epoch) = v25;
              v51 = Seconds;
              v52 = v25;
              v53 = v26;
              OUTLINED_FUNCTION_39();
              OUTLINED_FUNCTION_38();
              _os_log_send_and_compose_impl(v27, v28, v29, v30, v31, v32, v1, v33);
              OUTLINED_FUNCTION_612();
            }

            OUTLINED_FUNCTION_7();
            OUTLINED_FUNCTION_414(v34, v35, v36, v37, v38);
          }

          *(v0 + 556) = *(v0 + 384);
          *(v0 + 572) = *(v0 + 400);
        }
      }
    }
  }

  OUTLINED_FUNCTION_171_2();
}

double __fpic_mediaAccessibilityChanged_block_invoke()
{
  OUTLINED_FUNCTION_649();
  if (!*(*(v0 + 40) + 1160))
  {
    goto LABEL_23;
  }

  v1 = v0;
  FigCFDictionaryCreateMutableCopy();
  OUTLINED_FUNCTION_2_4();
  *(v3 + 24) = v2;
  OUTLINED_FUNCTION_2_4();
  v5 = *(v4 + 24);
  if (!v5)
  {
LABEL_24:
    OUTLINED_FUNCTION_111();
    OUTLINED_FUNCTION_651();

    return FigSignalErrorAtGM(v28);
  }

  if (*(v1 + 48) == 2 || (CFDictionaryRemoveValue(v5, @"public.legible"), OUTLINED_FUNCTION_2_4(), fpic_setCoordinationMediaSelectionCriteria(v7, *(v6 + 24)), *(v1 + 48) != 1))
  {
LABEL_23:
    OUTLINED_FUNCTION_651();
    return result;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v9 = FigCFWeakReferenceHolderCopyReferencedObject();
  Count = CFArrayGetCount(*(DerivedStorage + 656));
  if (!v9)
  {
    goto LABEL_24;
  }

  v11 = Count;
  if (!fpic_applyAutomaticLegibleMediaSelectionForItem(*(DerivedStorage + 160)) && v11 >= 1)
  {
    v12 = 0;
    while (1)
    {
      v13 = OUTLINED_FUNCTION_618();
      PerEventTrackingCount = fpic_GetPerEventTrackingCount(v13, v14);
      if (PerEventTrackingCount >= 1)
      {
        break;
      }

LABEL_19:
      if (++v12 == v11)
      {
        goto LABEL_20;
      }
    }

    v16 = PerEventTrackingCount;
    v17 = 0;
    while (1)
    {
      v18 = OUTLINED_FUNCTION_618();
      PerAssetPerEventTrackedObject = fpic_GetPerAssetPerEventTrackedObject(v18, v19, v17, @"PlaybackItem");
      CMBaseObjectGetDerivedStorage();
      if (!PerAssetPerEventTrackedObject || PerAssetPerEventTrackedObject == @"DummyItem")
      {
        v24 = 0;
      }

      else
      {
        v22 = OUTLINED_FUNCTION_198_0();
        v24 = v23(v22);
      }

      if (fpic_applyAutomaticLegibleMediaSelectionForItem(v24))
      {
        break;
      }

      if (v16 == ++v17)
      {
        goto LABEL_19;
      }
    }
  }

LABEL_20:
  OUTLINED_FUNCTION_651();

  CFRelease(v25);
  return result;
}

uint64_t fpic_applyAutomaticLegibleMediaSelectionForItem(uint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  v1 = *MEMORY[0x1E695E480];
  v2 = OUTLINED_FUNCTION_265();
  Mutable = CFDictionaryCreateMutable(v2, v3, v4, v5);
  values = Mutable;
  if (Mutable)
  {
    v7 = Mutable;
    FigGetCFStringForOSTypeValue();
    v8 = OUTLINED_FUNCTION_284();
    CFDictionarySetValue(v8, v9, v10);
    CFDictionarySetValue(v7, @"AutomaticSelection", *MEMORY[0x1E695E4D0]);
    v11 = CFArrayCreate(v1, &values, 1, MEMORY[0x1E695E9C0]);
    if (v11)
    {
      v12 = 0;
    }

    else
    {
      OUTLINED_FUNCTION_239();
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v18, values, v20);
      v12 = v17;
    }
  }

  else
  {
    OUTLINED_FUNCTION_239();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v18, 0, v20);
    v12 = v16;
    v11 = 0;
  }

  if (values)
  {
    CFRelease(values);
  }

  if (v12)
  {
    goto LABEL_10;
  }

  FigPlaybackItemGetFigBaseObject();
  if (*(*(CMBaseObjectGetVTable() + 8) + 56))
  {
    v13 = OUTLINED_FUNCTION_236();
    v12 = v14(v13);
LABEL_10:
    if (!v11)
    {
      return v12;
    }

    goto LABEL_13;
  }

  v12 = 4294954514;
  if (v11)
  {
LABEL_13:
    CFRelease(v11);
  }

  return v12;
}

void __fpic_checkScheduledTransition_block_invoke(uint64_t a1)
{
  v161 = *MEMORY[0x1E69E9840];
  v2 = FigCFWeakReferenceHolderCopyReferencedObject();
  v3 = fpic_CopyCurrentInterstitialItemTimebase();
  Rate = CMTimebaseGetRate(*(a1 + 48));
  memset(&v154, 0, sizeof(v154));
  v5 = CMTimebaseGetTime(&v154, *(a1 + 48));
  v13 = *(a1 + 48);
  v14 = *(a1 + 32);
  if (v13 == *(v14 + 1224) && (*(a1 + 56) || Rate == 0.0))
  {
    v151 = 0uLL;
    v152 = 0;
    if (*(v14 + 1076))
    {
      v152 = *(v14 + 1080);
      v151 = *(v14 + 1064);
    }

    else
    {
      v5 = fpic_TimeToGatePrimaryPlaybackAtCurrentEvent(0, 0, &v151);
    }

    OUTLINED_FUNCTION_3_136(v5, v6, v7, v8, v9, v10, v11, v12, v107, v114, v122, v130, v137, v144, v151);
    v62 = OUTLINED_FUNCTION_187_2(v54, v55, v56, v57, v58, v59, v60, v61, v111, v118, v126, v134, v141, v148, v151, *(&v151 + 1), v152, v153, v154.value, *&v154.timescale, v154.epoch, v155, *v156, *&v156[8], *&v156[16], v157, *v158, *&v158[8], *&v158[16], v159, time.value);
    v64 = CMTimeCompare(v62, v63);
    if ((v64 & 0x80000000) != 0)
    {
      OUTLINED_FUNCTION_3_136(v64, v65, v66, v67, v68, v69, v70, v71, v112, v119, v127, v135, v142, v149, v151);
      v79 = OUTLINED_FUNCTION_187_2(v72, v73, &kMomentsAreCloseThreshold, v74, v75, v76, v77, v78, v113, v120, v128, v136, v143, v150, v151, *(&v151 + 1), v152, v153, v154.value, *&v154.timescale, v154.epoch, v155, *v156, *&v156[8], *&v156[16], v157, *v158, *&v158[8], *&v158[16], v159, time.value);
      if (!faqrp_timeDifferenceIsWithinTolerance(v79, v80, v81))
      {
        v82 = *(a1 + 40);
        v83 = *(a1 + 56);
        v129 = v154;
        DerivedStorage = CMBaseObjectGetDerivedStorage();
        if (*(DerivedStorage + 1232))
        {
          v85 = DerivedStorage;
          if (FigGetUpTimeNanoseconds() < *(DerivedStorage + 1232))
          {
            if (dword_1EAF178D0)
            {
              HIDWORD(v155) = 0;
              BYTE3(v155) = 0;
              os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
              v87 = HIDWORD(v155);
              v88 = BYTE3(v155);
              os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, BYTE3(v155));
              OUTLINED_FUNCTION_101_0();
              if (v90)
              {
                v91 = v89;
              }

              else
              {
                v91 = v87;
              }

              if (v91)
              {
                if (v83)
                {
                  v92 = "jump";
                }

                else
                {
                  v92 = "rate change";
                }

                time = v129;
                Seconds = CMTimeGetSeconds(&time);
                *v156 = 136316162;
                *&v156[4] = "fpic_cancelScheduledInterstitialFlip";
                *&v156[12] = 2048;
                *&v156[14] = v82;
                *&v156[22] = 2080;
                v157 = v92;
                *v158 = 2048;
                *&v158[2] = Rate;
                *&v158[10] = 2048;
                *&v158[12] = Seconds;
                LODWORD(v121) = 52;
                OUTLINED_FUNCTION_108();
                _os_log_send_and_compose_impl(v94, v95, v96, v97, v98, os_log_and_send_and_compose_flags_and_os_log_type, v88, v99, v156, v121);
              }

              OUTLINED_FUNCTION_7();
              OUTLINED_FUNCTION_449(v100, v101, v102, v103, v104);
            }

            CMBaseObjectGetDerivedStorage();
            OUTLINED_FUNCTION_2_166();
            v105 = OUTLINED_FUNCTION_151_2();
            fpic_flipInterstitialAndPrimaryVisibility(v82, v106, v2, v105);
          }

          *(v85 + 1232) = 0;
        }

        v52 = *(a1 + 40);
        v53 = 1;
        goto LABEL_32;
      }
    }
  }

  else if (v13 == v3 && (*(a1 + 56) || Rate == 0.0))
  {
    v151 = 0uLL;
    v152 = 0;
    if (fpic_GetLastCurrentItem())
    {
      fpic_GetItemEndTime();
    }

    else
    {
      OUTLINED_FUNCTION_219_1(MEMORY[0x1E6960C80]);
      v152 = *(v23 + 16);
    }

    OUTLINED_FUNCTION_3_136(v15, v16, v17, v18, v19, v20, v21, v22, v107, v114, v122, v130, v137, v144, v151);
    v32 = OUTLINED_FUNCTION_187_2(v24, v25, v26, v27, v28, v29, v30, v31, v108, v115, v123, v131, v138, v145, v151, *(&v151 + 1), v152, v153, v154.value, *&v154.timescale, v154.epoch, v155, *v156, *&v156[8], *&v156[16], v157, *v158, *&v158[8], *&v158[16], v159, time.value);
    v34 = CMTimeCompare(v32, v33);
    if ((v34 & 0x80000000) != 0)
    {
      OUTLINED_FUNCTION_3_136(v34, v35, v36, v37, v38, v39, v40, v41, v109, v116, v124, v132, v139, v146, v151);
      v49 = OUTLINED_FUNCTION_187_2(v42, v43, &kMomentsAreCloseThreshold, v44, v45, v46, v47, v48, v110, v117, v125, v133, v140, v147, v151, *(&v151 + 1), v152, v153, v154.value, *&v154.timescale, v154.epoch, v155, *v156, *&v156[8], *&v156[16], v157, *v158, *&v158[8], *&v158[16], v159, time.value);
      if (!faqrp_timeDifferenceIsWithinTolerance(v49, v50, v51))
      {
        v52 = *(a1 + 40);
        v53 = 0;
LABEL_32:
        fpic_cancelScheduledAudioTransition(v52, v53, v2);
      }
    }
  }

  if (v3)
  {
    CFRelease(v3);
  }

  if (v2)
  {
    CFRelease(v2);
  }
}

const void *fpirc_CreateWrappedEvent()
{
  OUTLINED_FUNCTION_187();
  CMBaseObjectGetDerivedStorage();
  result = FigCFWeakReferenceHolderCopyReferencedObject();
  if (result)
  {
    v1 = result;
    v2 = OUTLINED_FUNCTION_36_25();
    v3(v2);
    CFRelease(v1);
    return 0;
  }

  return result;
}

const void *fpirc_UnwrapEvent()
{
  OUTLINED_FUNCTION_187();
  CMBaseObjectGetDerivedStorage();
  result = FigCFWeakReferenceHolderCopyReferencedObject();
  if (result)
  {
    v1 = result;
    v2 = OUTLINED_FUNCTION_36_25();
    v4 = v3(v2);
    CFRelease(v1);
    return v4;
  }

  return result;
}

uint64_t fpirc_CancelCurrentEventPlaybackWithReason(uint64_t a1, uint64_t a2)
{
  v2 = fpirc_CopyCurrentEvent(a1);
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  if (FigCFEqual())
  {
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    if (!Mutable)
    {
      OUTLINED_FUNCTION_239();
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v9, v10, v11);
      v6 = v8;
      goto LABEL_6;
    }

    v5 = Mutable;
    FigCFDictionarySetValue();
    CMNotificationCenterGetDefaultLocalCenter();
    CMNotificationCenterPostNotification();
    CFRelease(v5);
  }

  v6 = 0;
LABEL_6:
  CFRelease(v3);
  return v6;
}

uint64_t __fpic_customURLIssuePreloadCallback_block_invoke_cold_1()
{
  OUTLINED_FUNCTION_108_3();
  if (!fpic_copyRedirectURLFromCustomURLResponse(*(v2 + 32), v3))
  {
    return 1;
  }

  v4 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt64Type, v1 + 5);
  context = v4;
  key = 0;
  CFDictionaryApplyFunction(*(v1[6] + 712), fpic_FindPreloadApplier, &context);
  if (key)
  {
    Value = CFDictionaryGetValue(*(v1[6] + 712), key);
    attachmentModeOut = 0;
    v7 = CMGetAttachment(Value, @"Preload_PreloadRef", &attachmentModeOut);
    fpic_IssuePreloadRequest(v1[7], v7);
  }

  if (*v0)
  {
    CFRelease(*v0);
  }

  if (v4)
  {
    CFRelease(v4);
  }

  return 0;
}

BOOL fpic_setEventsInAddOrderForPlayerItem_cold_1(_DWORD *a1)
{
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v4, v5, vars0);
  *a1 = v2;
  return v2 == 0;
}

void fpic_EnsureCurrentEventsHaveResolvedProperties_cold_1(uint64_t a1, uint64_t a2)
{
  fpic_UpdatePlaybackItemEventList();

  fpic_PostNotification(a2, @"fpiResolvePropertiesChange", 0);
}

uint64_t FigPKDCPEProtectorCreate(const __CFAllocator *a1, uint64_t a2, CFTypeRef *a3)
{
  if (!a3)
  {
    return 4294955146;
  }

  MEMORY[0x19A8D3660](&FigPKDCPEProtectorGetClassID_sRegisterFigPKDCPEProtectorTypeOnce, RegisterFigPKDCPEProtectorType);
  v6 = CMDerivedObjectCreate();
  if (v6)
  {
    return v6;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!DerivedStorage)
  {
    return 4294955145;
  }

  v8 = DerivedStorage;
  if (a2)
  {
    FigCFDictionaryGetBooleanIfPresent();
    FigCFDictionaryGetBooleanIfPresent();
  }

  v9 = FigReadWriteLockCreate();
  *v8 = v9;
  if (!v9)
  {
    return 4294955145;
  }

  FigDispatchOnceInitWithinObject();
  FigDispatchOnceInitWithinObject();
  FigDispatchOnceInitWithinObject();
  v10 = FigReentrantMutexCreate();
  *(v8 + 16) = v10;
  if (!v10)
  {
    return 4294955145;
  }

  Mutable = CFSetCreateMutable(a1, 0, 0);
  *(v8 + 24) = Mutable;
  if (!Mutable)
  {
    return 4294955145;
  }

  if (!*(v8 + 96))
  {
    v6 = FigCPEExternalProtectionMonitorCreateForMethods(a1, 4u, 0, 0, (v8 + 88));
    if (v6)
    {
      return v6;
    }

    CMNotificationCenterGetDefaultLocalCenter();
    v6 = FigNotificationCenterAddWeakListener();
    if (v6)
    {
      return v6;
    }
  }

  v12 = 0;
  *a3 = 0;
  return v12;
}

uint64_t FigPKDCPEProtectorCopyProperty(uint64_t a1, const void *a2, uint64_t a3, CFDataRef *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  result = 4294955146;
  if (a2 && a4)
  {
    if (CFEqual(a2, @"ExternalProtectionRequiredForPlayback"))
    {
      if (!*(DerivedStorage + 96))
      {
        if (FigCPEExternalProtectionMonitorGetMethods(*(DerivedStorage + 88)))
        {
          v9 = MEMORY[0x1E695E4D0];
        }

        else
        {
          v9 = MEMORY[0x1E695E4C0];
        }

        if (!*v9)
        {
          v13 = 0;
          goto LABEL_20;
        }

        v12 = CFRetain(*v9);
LABEL_18:
        v13 = v12;
LABEL_20:
        result = 0;
LABEL_21:
        *a4 = v13;
        return result;
      }

      return 4294954509;
    }

    if (CFEqual(a2, @"ExternalProtectionMethodsRequiredForPlayback"))
    {
      if (!*(DerivedStorage + 96))
      {
        Methods = FigCPEExternalProtectionMonitorGetMethods(*(DerivedStorage + 88));
        v11 = Methods & 1;
        if ((Methods & 2) != 0)
        {
          v11 = 2;
        }

        valuePtr = v11;
        v12 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt32Type, &valuePtr);
        goto LABEL_18;
      }

      return 4294954509;
    }

    if (CFEqual(a2, @"DisplayList"))
    {
      if (*(DerivedStorage + 96))
      {
        return 4294954509;
      }

      v14 = *(DerivedStorage + 88);

      return FigCPEExternalProtectionMonitorCopyProperty(v14, @"DisplayList", a3, a4);
    }

    else
    {
      if (CFEqual(a2, @"ApplicationAuthorizationChallengeProvider"))
      {
        result = 0;
        v13 = @"ApplicationAuthorizationChallengeProviderNone";
        goto LABEL_21;
      }

      if (CFEqual(a2, @"SessionID"))
      {
        v15 = *(DerivedStorage + 80);

        return PKDKeyManagerCopySessionID(v15, a4);
      }

      else
      {
        return 4294954512;
      }
    }
  }

  return result;
}

uint64_t FigPKDCPEProtectorSetProperty(uint64_t a1, const void *a2, const __CFArray *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!a2)
  {
    return 4294955146;
  }

  v6 = DerivedStorage;
  if (CFEqual(a2, @"DisplayList"))
  {
    if (*(v6 + 96))
    {
      return 4294954509;
    }

    else
    {
      LODWORD(result) = FigCPEExternalProtectionMonitorSetProperty(*(v6 + 88), @"DisplayList", a3);
      if (result == -12152)
      {
        return 0;
      }

      else
      {
        return result;
      }
    }
  }

  else if (CFEqual(a2, @"NeroTransport"))
  {
    v8 = *(v6 + 72);
    *(v6 + 72) = a3;
    if (a3)
    {
      CFRetain(a3);
    }

    if (v8)
    {
      CFRelease(v8);
    }

    return 0;
  }

  else
  {
    return 4294954512;
  }
}

uint64_t FigPKDCPEProtectorGetAggregateExternalProtectionStatus(uint64_t a1, _DWORD *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  result = 4294955146;
  if (a2 && DerivedStorage)
  {
    if (*(DerivedStorage + 96))
    {
      return 4294954509;
    }

    else
    {
      Status = FigCPEExternalProtectionMonitorGetStatus(*(DerivedStorage + 88));
      result = 0;
      *a2 = Status;
    }
  }

  return result;
}

uint64_t FigPKDCPEProtectorCreateCryptor(const void *a1, const __CFAllocator *a2, unsigned int a3, const __CFDictionary *a4, CFTypeRef *a5)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  cf = 0;
  if (*(DerivedStorage + 9))
  {
    return 4294954511;
  }

  if (!a5)
  {
    v16 = 0;
    v28 = 4294955146;
    goto LABEL_21;
  }

  if (a3 > 3)
  {
    v16 = 0;
    goto LABEL_52;
  }

  if (!a4)
  {
    v16 = 0;
    goto LABEL_20;
  }

  v11 = DerivedStorage;
  Value = CFDictionaryGetValue(a4, @"AuditToken");
  if (Value && (v13 = Value, v14 = CFGetTypeID(Value), v14 == CFDataGetTypeID()))
  {
    Mutable = CFDictionaryCreateMutable(a2, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    v16 = Mutable;
    if (!Mutable)
    {
      v28 = 4294955145;
LABEL_21:
      if (cf)
      {
        CFRelease(cf);
      }

      goto LABEL_46;
    }

    CFDictionarySetValue(Mutable, @"AuditToken", v13);
  }

  else
  {
    v16 = 0;
  }

  v17 = CFDictionaryGetValue(a4, @"Destination");
  v18 = CFDictionaryGetValue(a4, @"FormatType");
  v19 = CFDictionaryGetValue(a4, @"SecureStopManager");
  if (!v18)
  {
LABEL_20:
    v28 = 4294955141;
    goto LABEL_21;
  }

  v20 = v19;
  if (v17 && !CFEqual(v17, @"DestinationLocal"))
  {
    if (CFEqual(v17, @"DestinationNero"))
    {
      if (CFEqual(v18, @"FormatTypePastis"))
      {
        if (*(v11 + 32) != -1)
        {
          dispatch_once_f((v11 + 32), v11, InitMovieIDForPastis);
        }

        if (*(v11 + 56) != -1)
        {
          dispatch_once_f((v11 + 56), v11, InitOctaviaMovieIDForPastis);
        }

        v27 = FigCPEOctaviaPKDCryptorCreate(a1, *(v11 + 64), *(v11 + 88), a4, a2, *(v11 + 72), &cf);
        goto LABEL_41;
      }

      if (CFEqual(v18, @"FormatTypeMSE"))
      {
        v29 = *(v11 + 32);
        context = v11 + 80;
        v32 = v16;
        if (v29 != -1)
        {
          dispatch_once_f((v11 + 32), &context, InitKeyManagerForMSE);
        }

        if (*(v11 + 56) != -1)
        {
          dispatch_once_f((v11 + 56), v11, InitOctaviaMovieIDForMSE);
        }

        v27 = FigCPEOctaviaPKDCryptorCreateForMSE(a1, *(v11 + 64), *(v11 + 80), *(v11 + 88), a4, a2, *(v11 + 72), &cf);
        goto LABEL_41;
      }

      goto LABEL_20;
    }

    if (CFEqual(v17, @"DestinationAirPlayReceiver"))
    {
      v26 = *(v11 + 48);
      v24 = *(v11 + 88);
      v25 = a1;
      v23 = 0;
      goto LABEL_18;
    }

LABEL_52:
    v28 = 4294955136;
    goto LABEL_21;
  }

  v21 = *(v11 + 40);
  context = v11 + 80;
  v32 = v16;
  if (v21 == -1)
  {
    if (!v20)
    {
      goto LABEL_16;
    }
  }

  else
  {
    dispatch_once_f((v11 + 40), &context, InitKeyManagerForPastis);
    if (!v20)
    {
      goto LABEL_16;
    }
  }

  v22 = KeyManagerSetSecureStopManager(*(v11 + 80), v20);
  if (v22)
  {
LABEL_53:
    v28 = v22;
    goto LABEL_21;
  }

LABEL_16:
  if (CFEqual(v18, @"FormatTypePastis"))
  {
    v23 = *(v11 + 80);
    v24 = *(v11 + 88);
    v25 = a1;
    v26 = 0;
LABEL_18:
    v27 = FigPKDCPECryptorCreate(v25, v26, v23, v24, a2, a4, &cf);
    goto LABEL_41;
  }

  if (!CFEqual(v18, @"FormatTypeMSE"))
  {
    v28 = 4294955141;
    goto LABEL_42;
  }

  v27 = FigPKDMSECPECryptorCreate(a1, *(v11 + 80), *(v11 + 88), a2, a4, &cf);
LABEL_41:
  v28 = v27;
LABEL_42:
  if (v28)
  {
    goto LABEL_21;
  }

  CFSetAddValue(*(v11 + 24), cf);
  if (!*(v11 + 96))
  {
    CMNotificationCenterGetDefaultLocalCenter();
    v22 = FigNotificationCenterAddWeakListener();
    if (v22)
    {
      goto LABEL_53;
    }
  }

  v28 = 0;
  *a5 = cf;
  cf = 0;
LABEL_46:
  if (v16)
  {
    CFRelease(v16);
  }

  return v28;
}

void __FigInstallVirtualDisplay_block_invoke(uint64_t a1)
{
  __dst[9] = *MEMORY[0x1E69E9840];
  v1 = *MEMORY[0x1E695E4D0];
  value = *MEMORY[0x1E695E4D0];
  MaxCount = FigVirtualFramebufferGetMaxCount(a1);
  if (MaxCount)
  {
    v3 = MaxCount;
    ModelSpecificPropertyList = FigCreateModelSpecificPropertyList();
    v12 = ModelSpecificPropertyList;
    if (ModelSpecificPropertyList)
    {
      ModelSpecificPropertyList = CFDictionaryGetValueIfPresent(ModelSpecificPropertyList, @"StartWirelessDisplayServer", &value);
      if (ModelSpecificPropertyList)
      {
        if (value != v1)
        {
LABEL_17:
          CFRelease(v12);
          return;
        }
      }

      else
      {
        value = v1;
      }
    }

    memset(__dst, 0, 64);
    if (v3 >= 9)
    {
      v25 = OUTLINED_FUNCTION_1_175(ModelSpecificPropertyList, v5, v6, v7, v8, v9, v10, v11, v28, v30, v32, SBYTE2(v32), SBYTE3(v32), SHIDWORD(v32));
      if (os_log_type_enabled(v25, BYTE3(v32)))
      {
        v26 = HIDWORD(v32);
      }

      else
      {
        v26 = HIDWORD(v32) & 0xFFFFFFFE;
      }

      if (v26)
      {
        OUTLINED_FUNCTION_2_167();
        v36 = 405;
        OUTLINED_FUNCTION_3_137();
        _os_log_send_and_compose_impl(v27, 0, v37, 128, &dword_1962D5000, v25, BYTE3(v32), "<<<< FigVirtualFramebufferInstallation >>>> %s: %d: check failed", v28, v30);
      }

      OUTLINED_FUNCTION_0_188();
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    if (FigVirtualFramebufferGetFramebufs(__dst, 8uLL))
    {
      v13 = IOMobileFramebufferInstallVirtualDisplays();
      if (v13)
      {
        v21 = v13;
        v22 = OUTLINED_FUNCTION_1_175(v13, v14, v15, v16, v17, v18, v19, v20, v28, v30, v32, SBYTE2(v32), SBYTE3(v32), SHIDWORD(v32));
        if (os_log_type_enabled(v22, type))
        {
          v23 = v34;
        }

        else
        {
          v23 = v34 & 0xFFFFFFFE;
        }

        if (v23)
        {
          OUTLINED_FUNCTION_2_167();
          v36 = v21;
          OUTLINED_FUNCTION_3_137();
          _os_log_send_and_compose_impl(v24, 0, v37, 128, &dword_1962D5000, v22, type, "<<<< FigVirtualFramebufferInstallation >>>> %s: IOMobileFramebufferInstallVirtualDisplay failed: %d", v29, v31);
        }

        OUTLINED_FUNCTION_0_188();
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }
    }

    if (v12)
    {
      goto LABEL_17;
    }
  }
}

uint64_t FigMetricItemPlaybackSummaryEventDeserializeAndCopy(void *a1, void *a2)
{
  v23 = *MEMORY[0x1E6960C70];
  v24 = *(MEMORY[0x1E6960C70] + 16);
  v21 = 0;
  cf = 0;
  v20 = 0;
  if (a1)
  {
    if (a2)
    {
      int64 = xpc_dictionary_get_int64(a1, "RecoverableErrorCount");
      v6 = xpc_dictionary_get_int64(a1, "StallCount");
      v7 = xpc_dictionary_get_int64(a1, "VariantSwitchCount");
      v8 = xpc_dictionary_get_int64(a1, "PlaybackDuration");
      v9 = xpc_dictionary_get_int64(a1, "MediaResourceRequestCount");
      v10 = xpc_dictionary_get_double(a1, "TimeSpentRecoveringFromStall");
      v11 = xpc_dictionary_get_double(a1, "TimeSpentInInitialStartup");
      v12 = xpc_dictionary_get_int64(a1, "TimeWeightedAverageBitrate");
      v13 = xpc_dictionary_get_int64(a1, "TimeWeightedPeakBitrate");
      CMTime = FigXPCMessageGetCMTime();
      if (!CMTime)
      {
        CMTime = FigXPCMessageCopyCFDate();
        if (!CMTime)
        {
          CMTime = FigXPCMessageCopyCFString();
          if (!CMTime)
          {
            if (!xpc_dictionary_get_value(a1, "ErrorEvent") || (CMTime = FigMetricEventDeserializeEventAndCopy(), !CMTime))
            {
              AllocatorForMedia = FigGetAllocatorForMedia();
              v18 = v23;
              v19 = v24;
              CMTime = FigMetricItemPlaybackSummaryEventCreate(AllocatorForMedia, &v18, cf, v21, v20, int64, v6, v7, v10, v11, v8, v9, v12, v13, a2);
            }
          }
        }
      }
    }

    else
    {
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF178E8, 4294947836, "metricevent", 317, v2);
    }
  }

  else
  {
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF178E8, 4294947836, "metricevent", 316, v2);
  }

  v16 = CMTime;
  if (cf)
  {
    CFRelease(cf);
  }

  if (v21)
  {
    CFRelease(v21);
  }

  if (v20)
  {
    CFRelease(v20);
  }

  return v16;
}

double mes_serialize(uint64_t a1, void *a2)
{
  if (a1)
  {
    if (a2)
    {
      v5 = *(*(CMBaseObjectGetVTable() + 16) + 24);
      if (v5)
      {
        v6 = v5(a1);
      }

      else
      {
        v6 = -12782;
      }

      xpc_dictionary_set_int64(a2, "EventID", v6);
      v7 = *(*(CMBaseObjectGetVTable() + 16) + 56);
      if (v7)
      {
        v7(&v38, a1);
      }

      else
      {
        v38 = *MEMORY[0x1E6960C70];
        v39 = *(MEMORY[0x1E6960C70] + 16);
      }

      if (!FigXPCMessageSetCMTime())
      {
        v9 = *(*(CMBaseObjectGetVTable() + 16) + 32);
        if (v9)
        {
          v9(a1);
        }

        if (!FigXPCMessageSetCFDate())
        {
          v10 = *(*(CMBaseObjectGetVTable() + 16) + 40);
          if (v10)
          {
            v11 = v10(a1);
          }

          else
          {
            v11 = 0;
          }

          if (FigXPCMessageSetCFString())
          {
            empty = 0;
          }

          else
          {
            v12 = *(*(CMBaseObjectGetVTable() + 72) + 16);
            if (v12)
            {
              v13 = v12(a1);
            }

            else
            {
              v13 = 0;
            }

            xpc_dictionary_set_int64(a2, "RecoverableErrorCount", v13);
            v14 = *(*(CMBaseObjectGetVTable() + 72) + 24);
            if (v14)
            {
              v15 = v14(a1);
            }

            else
            {
              v15 = 0;
            }

            xpc_dictionary_set_int64(a2, "StallCount", v15);
            v16 = *(*(CMBaseObjectGetVTable() + 72) + 32);
            if (v16)
            {
              v17 = v16(a1);
            }

            else
            {
              v17 = 0;
            }

            xpc_dictionary_set_int64(a2, "VariantSwitchCount", v17);
            v18 = *(*(CMBaseObjectGetVTable() + 72) + 40);
            if (v18)
            {
              v19 = v18(a1);
            }

            else
            {
              v19 = 0;
            }

            xpc_dictionary_set_int64(a2, "PlaybackDuration", v19);
            v20 = *(*(CMBaseObjectGetVTable() + 72) + 48);
            if (v20)
            {
              v21 = v20(a1);
            }

            else
            {
              v21 = 0;
            }

            xpc_dictionary_set_int64(a2, "MediaResourceRequestCount", v21);
            v22 = *(*(CMBaseObjectGetVTable() + 72) + 56);
            v23 = 0.0;
            v24.n128_u64[0] = 0;
            if (v22)
            {
              v24.n128_f64[0] = v22(a1, v24);
            }

            xpc_dictionary_set_double(a2, "TimeSpentRecoveringFromStall", v24.n128_f64[0]);
            v25 = *(*(CMBaseObjectGetVTable() + 72) + 64);
            if (v25)
            {
              v23 = v25(a1);
            }

            xpc_dictionary_set_double(a2, "TimeSpentInInitialStartup", v23);
            v26 = *(*(CMBaseObjectGetVTable() + 72) + 72);
            if (v26)
            {
              v27 = v26(a1);
            }

            else
            {
              v27 = 0;
            }

            xpc_dictionary_set_int64(a2, "TimeWeightedAverageBitrate", v27);
            v28 = *(*(CMBaseObjectGetVTable() + 72) + 80);
            if (v28)
            {
              v29 = v28(a1);
            }

            else
            {
              v29 = 0;
            }

            xpc_dictionary_set_int64(a2, "TimeWeightedPeakBitrate", v29);
            empty = xpc_dictionary_create_empty();
            v31 = *(*(CMBaseObjectGetVTable() + 72) + 8);
            if (v31)
            {
              v32 = v31(a1);
              if (v32)
              {
                v33 = v32;
                v34 = *(*(CMBaseObjectGetVTable() + 16) + 80);
                if (v34)
                {
                  if (!v34(v33, empty))
                  {
                    xpc_dictionary_set_value(a2, "ErrorEvent", empty);
                  }
                }
              }
            }
          }

          if (v11)
          {
            CFRelease(v11);
          }

          if (empty)
          {
            CFRelease(empty);
          }
        }
      }

      return result;
    }

    v35 = qword_1EAF178E8;
    v36 = v2;
    v37 = 250;
  }

  else
  {
    v35 = qword_1EAF178E8;
    v36 = v2;
    v37 = 249;
  }

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v35, 4294947835, "metricevent", v37, v36);
}

uint64_t FigIcyMetadataHasKey(uint64_t a1, uint64_t a2, __CFString *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v8 = a3;
  if (!DerivedStorage || !a3)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_0_4();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
    return 0;
  }

  v6 = DerivedStorage;
  if (FigIcyMetadataMapKeyToIcyKeyspace(a2, a3, &v8))
  {
    return 0;
  }

  result = *(v6 + 8);
  if (result)
  {
    return FigCFDictionaryGetValueForCaseInsensitiveKeyIfPresent() != 0;
  }

  return result;
}

double FigIcyMetadataCopyItemWithKeyAndIndex(uint64_t a1, const void *a2, __CFString *a3, CFIndex a4, uint64_t a5, unint64_t a6, unint64_t a7)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v29 = 0;
  theDict = 0;
  if (!(a6 | a7))
  {
    emitter = fig_log_get_emitter();

    return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 4294954696, "<<<< FMDR_ICY >>>>", 327, v7);
  }

  v15 = DerivedStorage;
  if (FigIcyMetadataMapKeyToIcyKeyspace(a2, a3, &v29))
  {
    return result;
  }

  v17 = v29;
  if (FigIcyMetadataGetItemCount(a1, a2, v29) <= a4)
  {
    return result;
  }

  v19 = 0;
  cf = 0;
  if (!v17)
  {
    FigIcyMetadataCopyKeyAtIndex(a1, @"icy", a4, v18, &cf);
    v19 = cf;
    v29 = cf;
  }

  if (*(v15 + 8))
  {
    v20 = FigCFDictionaryGetValueForCaseInsensitiveKeyIfPresent() == 0;
    v19 = cf;
    if (!cf)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  v20 = 1;
  if (v19)
  {
LABEL_8:
    CFRelease(v19);
  }

LABEL_9:
  if (theDict)
  {
    v21 = v20;
  }

  else
  {
    v21 = 1;
  }

  if ((v21 & 1) == 0)
  {
    if (a7)
    {
      MutableCopy = FigCFDictionaryCreateMutableCopy();
      if (!MutableCopy)
      {
        fig_log_get_emitter();
        return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v27, cf, v29);
      }

      v23 = MutableCopy;
      CFDictionaryRemoveValue(MutableCopy, @"value");
      *a7 = v23;
    }

    if (a6)
    {
      Value = CFDictionaryGetValue(theDict, @"value");
      if (Value)
      {
        v25 = CFRetain(Value);
      }

      else
      {
        v25 = 0;
      }

      *a6 = v25;
    }
  }

  return result;
}

void FigIcyMetadataCopyValue_cold_1(uint64_t a1, _DWORD *a2)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v4, v5, v6);
  *a2 = v3;
}

double FigIcyMetadataGetKeyCount_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
}

double FigIcyMetadataGetKeyCount_cold_2()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
}

void FigIcyMetadataCopyKeyAtIndex_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FigIcyMetadataCopyKeyAtIndex_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FigIcyMetadataCopyKeyAtIndex_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void fiqcfo_MemoryPressureHandler(uint64_t a1)
{
  v1 = FigCFWeakReferenceHolderCopyReferencedObject();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (v1)
  {
    dispatch_sync_f(*(DerivedStorage + 40), v1, fiqcfo_MemoryPressureHandlerNoLock);

    CFRelease(v1);
  }
}

uint64_t fiqcfo_MemoryPressureHandlerNoLock(uint64_t a1)
{
  result = CMBaseObjectGetDerivedStorage();
  if (a1)
  {
    *(result + 112) = dispatch_source_get_data(*(result + 104));

    return fiqcfo_UpdateCacheIsEnabledNoLock(a1);
  }

  return result;
}

double FigCaptionRendererCALayerOutputNodeCreate(CFTypeRef *a1)
{
  if (a1)
  {
    *a1 = 0;
    v9 = 0;
    MEMORY[0x19A8D3660](&FigCaptionRendererCALayerOutputNodeGetClassID_sRegisterFigCaptionRendererCALayerOutputNodeBaseTypeOnce, RegisterFigCaptionRendererCALayerOutputNodeBaseType);
    if (!CMDerivedObjectCreate())
    {
      v4 = v9;
      DerivedStorage = CMBaseObjectGetDerivedStorage();
      v8 = 0;
      FigCaptionRendererOutputNodeCreate(v9, &v8);
      *DerivedStorage = v8;
      CFRetain(v4);
      v7[0] = MEMORY[0x1E69E9820];
      v7[1] = 3221225472;
      v7[2] = __FigCaptionRendererCALayerOutputNodeCreate_block_invoke;
      v7[3] = &__block_descriptor_48_e5_v8__0l;
      v7[4] = DerivedStorage;
      v7[5] = v4;
      dispatch_async(MEMORY[0x1E69E96A0], v7);
      *a1 = 0;
    }
  }

  else
  {
    emitter = fig_log_get_emitter();

    return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 4294950096, "<<<< FigCaptionRendererCALayerOutputNode >>>>", 1429, v1);
  }

  return result;
}

uint64_t FigSampleBufferConsumerForDataQueueCreate(const void *a1, uint64_t a2, uint64_t a3, CFTypeRef *a4)
{
  cf = 0;
  v4 = 4294951506;
  if (!a1 || !a4)
  {
    return v4;
  }

  OUTLINED_FUNCTION_0_189();
  fig_note_initialize_category_with_default_work_cf();
  OUTLINED_FUNCTION_0_189();
  fig_note_initialize_category_with_default_work_cf();
  FigSampleBufferConsumerGetClassID();
  v7 = CMDerivedObjectCreate();
  if (!v7)
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    v9 = FigReentrantMutexCreate();
    DerivedStorage[1] = v9;
    if (!v9)
    {
      v4 = 4294951505;
      goto LABEL_13;
    }

    *DerivedStorage = CFRetain(a1);
    BooleanValue = FigCFDictionaryGetBooleanValue();
    if (!BooleanValue || !CFBooleanGetValue(BooleanValue) || (v11 = FigDispatchQueueCreateWithPriority(), (DerivedStorage[6] = v11) != 0))
    {
      v4 = 0;
      *a4 = 0;
      return v4;
    }

    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v13, 0, v15);
  }

  v4 = v7;
LABEL_13:
  if (cf)
  {
    CFRelease(cf);
  }

  return v4;
}

uint64_t sbcdq_InstallLowWaterTrigger(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  if (*(DerivedStorage + 16))
  {
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF177C8, 4294954529, "<<<< SBC-DQ >>>>", 154, v4);
LABEL_15:
    v14 = v16;
    goto LABEL_12;
  }

  if (!a2)
  {
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF177C8, 4294954535, "<<<< SBC-DQ >>>>", 155, v4);
    goto LABEL_15;
  }

  *(DerivedStorage + 16) = a2;
  *(DerivedStorage + 24) = a3;
  if (a4)
  {
    *a4 = DerivedStorage + 16;
  }

  v9 = *(DerivedStorage + 32);
  if (!v9)
  {
    v10 = FigCFWeakReferenceHolderCreateWithReferencedObject();
    if (!v10)
    {
      v14 = 4294954536;
      goto LABEL_12;
    }

    v9 = v10;
    *(DerivedStorage + 32) = v10;
  }

  v11 = *DerivedStorage;
  v12 = *(DerivedStorage + 48);
  v13 = *(*(CMBaseObjectGetVTable() + 16) + 24);
  if (v13)
  {
    v14 = v13(v11, sbcdq_LowWaterTriggerCallbackAsync, v9, v12);
    if (!v14)
    {
      *(DerivedStorage + 40) = 1;
    }
  }

  else
  {
    v14 = 4294954514;
  }

LABEL_12:
  FigSimpleMutexUnlock();
  return v14;
}

uint64_t sbcdq_RemoveLowWaterTrigger(uint64_t a1, void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  v4 = (DerivedStorage + 16);
  if (a2 && v4 != a2)
  {
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v10, v11, v12);
    v7 = v9;
  }

  else
  {
    *v4 = 0;
    *(DerivedStorage + 24) = 0;
    v5 = *DerivedStorage;
    v6 = *(*(CMBaseObjectGetVTable() + 16) + 32);
    if (v6)
    {
      v7 = v6(v5);
      if (!v7)
      {
        *(DerivedStorage + 40) = 0;
      }
    }

    else
    {
      v7 = 4294954514;
    }
  }

  FigSimpleMutexUnlock();
  return v7;
}

uint64_t remoteGlobalRoutingRegistry_unRegisterClient(uint64_t a1, uint64_t a2, const __CFString *a3)
{
  v12 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!a3)
  {
    v7 = 0;
    goto LABEL_8;
  }

  v7 = 4294949576;
  if (!a1 || !a2)
  {
    goto LABEL_7;
  }

  if (!*DerivedStorage)
  {
    v7 = 4294951137;
    goto LABEL_7;
  }

  v8 = FigXPCCreateBasicMessage();
  if (v8)
  {
    v7 = v8;
    goto LABEL_7;
  }

  CFStringGetCString(a3, buffer, 64, 0x600u);
  xpc_dictionary_set_string(0, "RoutingContextUUID", buffer);
  xpc_dictionary_set_uint64(0, "ClientID", a2);
  xpc_dictionary_set_uint64(0, "RemoteClientID", a1);
  v7 = FigXPCRemoteClientSendSyncMessageCreatingReply();
  if (v7)
  {
LABEL_7:
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

LABEL_8:
  FigXPCRelease();
  FigXPCRelease();
  FigXPCRemoteClientKillServerOnTimeout();
  return v7;
}

void digestSubtitleSampleDo_1(uint64_t *a1)
{
  v326 = *MEMORY[0x1E69E9840];
  v3 = *a1;
  v4 = a1[1];
  theDict = 0;
  v313 = 0;
  cf = 0;
  if (FigSubtitleSampleCreateFromPropertyListAndInsertInfoForRenderer(v4, &theDict, &v313, *MEMORY[0x1E695F050], *(MEMORY[0x1E695F050] + 8), *(MEMORY[0x1E695F050] + 16), *(MEMORY[0x1E695F050] + 24)))
  {
    goto LABEL_11;
  }

  if (!theDict || !CFDictionaryGetCount(theDict))
  {
    v229 = v3;
LABEL_207:
    outputCueAsFigCaptionRendererCaption_0(v229, 5, 0, 0);
    goto LABEL_11;
  }

  cueHighlightFocusIndexStart = 0;
  if (CFDictionaryContainsKey(theDict, @"SubtitleTextHighlightArray"))
  {
    v5 = CFDictionaryGetValue(theDict, @"SubtitleTextHighlightArray");
    v6 = v5;
    if (v5)
    {
      v7 = CFGetTypeID(v5);
      if (v7 == CFArrayGetTypeID())
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v6, 0);
        CFDictionaryGetValue(ValueAtIndex, @"CMTextHighlightAttributeKey_StringToHighlight");
      }

      else
      {
        v6 = 0;
      }
    }

    (*(v3 + 32))(v6, *(v3 + 40));
    goto LABEL_11;
  }

  valuePtr = 0;
  v310 = -1;
  FigCFDictionaryGetInt32IfPresent();
  v301 = v3;
  v267 = v4;
  v248 = v1;
  v9 = CFDictionaryGetValue(theDict, @"SubtitleFormat");
  CFNumberGetValue(v9, kCFNumberSInt32Type, &valuePtr);
  if (valuePtr == 1937142900 || valuePtr == 2004251764 || valuePtr == 2021028980)
  {
    HIDWORD(v257) = 4;
    v237 = 1;
  }

  else
  {
    v237 = 0;
    HIDWORD(v257) = 3;
  }

  value = 0;
  ValueIfPresent = CFDictionaryGetValueIfPresent(theDict, @"SubtitleSerializedCaptionGroup", &value);
  v13 = MEMORY[0x1E6960A90];
  v14 = &kFigPlaybackItemProperty_IsAuthorizationRequired;
  if (ValueIfPresent)
  {
    if (FigCaptionSerializerCreateCaptionGroupFromCFData())
    {
      goto LABEL_11;
    }

    v15 = cf;
    if (cf)
    {
      v16 = theDict;
      v322 = 0;
      v17 = *MEMORY[0x1E695E480];
      Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
      if (Mutable)
      {
        v19 = Mutable;
        v324 = 0;
        *&v325 = 0;
        CMTimeMake(&v324, 0, 0);
        memset(v323, 0, 24);
        CMTimeMake(v323, 0, 0);
        v20 = CFDictionaryGetValue(v16, @"SubtitleTimeRange");
        v21 = v16;
        if (v20)
        {
          v22 = v20;
          v23 = CFArrayGetValueAtIndex(v20, 0);
          v24 = CFArrayGetValueAtIndex(v22, 1);
          memset(&v321, 0, sizeof(v321));
          CMTimeMakeFromDictionary(&v321, v23);
          memset(&v320, 0, sizeof(v320));
          CMTimeMakeFromDictionary(&v320, v24);
          v324 = *&v321.value;
          *&v325 = v321.epoch;
          *v323 = v320;
        }

        SliceCount = FigCaptionGroupGetSliceCount();
        v26 = CFDictionaryCreateMutable(v17, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
        if (v26 && (v27 = CFDictionaryCreateMutable(v17, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8])) != 0)
        {
          v28 = v27;
          v246 = v21;
          if (SliceCount >= 1)
          {
            v29 = 0;
            key = *MEMORY[0x1E6960A90];
            v298 = *MEMORY[0x1E6961368];
            v296 = *MEMORY[0x1E6960AF0];
            v286 = *MEMORY[0x1E6960800];
            v284 = *MEMORY[0x1E69607E8];
            v282 = *MEMORY[0x1E69607F0];
            v280 = *MEMORY[0x1E69607F8];
            v278 = *MEMORY[0x1E69607D8];
            v276 = *MEMORY[0x1E69607E0];
            attrName = *MEMORY[0x1E6960998];
            v266 = *MEMORY[0x1E6960C38];
            v264 = *MEMORY[0x1E69609A0];
            v262 = *MEMORY[0x1E6960978];
            name = *MEMORY[0x1E6960838];
            v241 = *MEMORY[0x1E69609F8];
            v244 = *MEMORY[0x1E6960A00];
            v260 = *MEMORY[0x1E6960A08];
            v251 = *MEMORY[0x1E69608D8];
            v249 = *MEMORY[0x1E69608E0];
            v253 = *MEMORY[0x1E6960830];
            v240 = *MEMORY[0x1E69609E0];
            v242 = *MEMORY[0x1E69609E8];
            v258 = *MEMORY[0x1E69609F0];
            v292 = v15;
            v294 = v19;
            v288 = v27;
            v290 = v17;
            v268 = SliceCount;
            v270 = v26;
            LODWORD(v272) = v237;
            while (1)
            {
              CaptionData = FigCaptionGroupGetCaptionData();
              if (CaptionData)
              {
                break;
              }

LABEL_92:
              if (SliceCount == ++v29)
              {
                goto LABEL_93;
              }
            }

            v31 = CaptionData;
            if (v322)
            {
              CFRelease(v322);
              v322 = 0;
            }

            memset(&v321, 0, sizeof(v321));
            FigCaptionGroupGetDurationBeforeSlice();
            memset(&v320, 0, sizeof(v320));
            FigCaptionGroupGetDurationAfterSlice();
            effectiveRange = v324;
            v319 = v325;
            v317 = *v323;
            v316 = v321;
            v315 = v320;
            FigCaptionDataToMarkupBasedAttributedString(v17, v31, &effectiveRange, &v317, &v316, &v315, &v322, v26, v28);
            if (!v237 || (aStr = v322, (v32 = CFDictionaryGetValue(v26, key)) == 0) || (v33 = CFDictionaryGetValue(v32, v298)) == 0 || (v34 = CFDictionaryGetValue(v33, v296)) == 0)
            {
LABEL_91:
              CFArrayAppendValue(v19, v322);
              goto LABEL_92;
            }

            v35 = v34;
            v36 = CFDictionaryGetValue(v34, v286);
            v37 = CFDictionaryGetValue(v35, v284);
            v38 = CFDictionaryGetValue(v35, v282);
            v39 = CFDictionaryGetValue(v35, v280);
            v40 = CFDictionaryGetValue(v35, v278);
            v41 = CFDictionaryGetValue(v35, v276);
            OUTLINED_FUNCTION_7_93();
            v43 = v42;
            OUTLINED_FUNCTION_7_93();
            v302 = v44;
            *&v45 = COERCE_DOUBLE(OUTLINED_FUNCTION_7_93());
            v303 = v46;
            v47 = *&v45;
            OUTLINED_FUNCTION_7_93();
            OUTLINED_FUNCTION_9_69();
            OUTLINED_FUNCTION_7_93();
            OUTLINED_FUNCTION_8_78();
            effectiveRange.location = 0;
            effectiveRange.length = 0;
            if (CFAttributedStringGetAttribute(aStr, 0, attrName, &effectiveRange))
            {
              if (v37)
              {
                FigTextMarkupDimensionMakeFromSimplifiedDictionary();
                v43 = v48;
              }

              if (v38)
              {
                FigTextMarkupDimensionMakeFromSimplifiedDictionary();
                OUTLINED_FUNCTION_9_69();
              }

              v237 = v272;
              if (v39)
              {
                FigTextMarkupDimensionMakeFromSimplifiedDictionary();
                v302 = v49;
              }

              if (v40)
              {
                FigTextMarkupDimensionMakeFromSimplifiedDictionary();
                OUTLINED_FUNCTION_8_78();
              }

              v19 = v294;
              if (v41)
              {
                *&v50 = COERCE_DOUBLE(FigTextMarkupDimensionMakeFromSimplifiedDictionary());
                v303 = v51;
                v47 = *&v50;
              }

              v17 = v290;
              if (FigCFEqual())
              {
                FigGeometryDimensionMakeMirrored();
                OUTLINED_FUNCTION_9_69();
                FigGeometryDimensionMakeMirrored();
                OUTLINED_FUNCTION_8_78();
              }

              SliceCount = v268;
              v26 = v270;
            }

            else
            {
              if (v36)
              {
                FigTextMarkupDimensionMakeFromSimplifiedDictionary();
                v43 = v52;
              }

              v237 = v272;
              SliceCount = v268;
              if (v38)
              {
                FigTextMarkupDimensionMakeFromSimplifiedDictionary();
                v302 = v53;
              }

              if (v39)
              {
                FigTextMarkupDimensionMakeFromSimplifiedDictionary();
                OUTLINED_FUNCTION_9_69();
              }

              if (v40)
              {
                *&v54 = COERCE_DOUBLE(FigTextMarkupDimensionMakeFromSimplifiedDictionary());
                v303 = v55;
                v47 = *&v54;
              }

              v19 = v294;
              if (v41)
              {
                FigTextMarkupDimensionMakeFromSimplifiedDictionary();
                OUTLINED_FUNCTION_8_78();
              }

              v17 = v290;
              v26 = v270;
            }

            OUTLINED_FUNCTION_6_108();
            if (v56 == v43)
            {
              Float32 = FigCFNumberCreateFloat32();
              v65 = OUTLINED_FUNCTION_5_120(Float32, v58, v59, v60, v61, v62, v63, v64, v238, v239, v240, v241, v242, v244, v246, v248, v249, v251, v253, name, v257, v258, v260, v262, v264, v266, v267, v268, v270, v272, attrName, v276, v278, v280, v282, v284, v286, v288, v290, v292, v294, v296, v298, key, v301, v302, v303, v305, aStr);
              CFAttributedStringSetAttribute(v65, v327, v264, Float32);
              if (Float32)
              {
                CFRelease(Float32);
              }
            }

            OUTLINED_FUNCTION_6_108();
            if (v66 == v302)
            {
              v67 = FigCFNumberCreateFloat32();
              v75 = OUTLINED_FUNCTION_5_120(v67, v68, v69, v70, v71, v72, v73, v74, v238, v239, v240, v241, v242, v244, v246, v248, v249, v251, v253, name, v257, v258, v260, v262, v264, v266, v267, v268, v270, v272, attrName, v276, v278, v280, v282, v284, v286, v288, v290, v292, v294, v296, v298, key, v301, v302, v303, v305, aStr);
              CFAttributedStringSetAttribute(v75, v328, v262, v67);
              if (v67)
              {
                CFRelease(v67);
              }
            }

            OUTLINED_FUNCTION_6_108();
            if (v83 == v303)
            {
              v84 = v260;
              if (v47 == 0.0 || (v84 = v244, v47 == 50.0) || (v85 = OUTLINED_FUNCTION_10_69(), v84 = v241, v47 == v85))
              {
                v86 = OUTLINED_FUNCTION_5_120(v76, v77, v78, v79, v84, v80, v81, v82, v238, v239, v240, v241, v242, v244, v246, v248, v249, v251, v253, name, v257, v258, v260, v262, v264, v266, v267, v268, v270, v272, attrName, v276, v278, v280, v282, v284, v286, v288, v290, v292, v294, v296, v298, key, v301, v302, v303, v305, aStr);
                CFAttributedStringSetAttribute(v86, v329, name, v87);
              }
            }

            v28 = v288;
            if (v35 == 1818848869)
            {
              v89 = FigCFNumberCreateFloat32();
              v97 = OUTLINED_FUNCTION_5_120(v89, v100, v101, v102, v103, v104, v105, v106, v238, v239, v240, v241, v242, v244, v246, v248, v249, v251, v253, name, v257, v258, v260, v262, v264, v266, v267, v268, v270, v272, attrName, v276, v278, v280, v282, v284, v286, v288, v290, v292, v294, v296, v298, key, v301, v302, v303, v305, aStr);
              v99 = v251;
            }

            else
            {
              OUTLINED_FUNCTION_6_108();
              if (v35 != v88)
              {
LABEL_86:
                OUTLINED_FUNCTION_6_108();
                if (v114 == v305)
                {
                  v115 = v258;
                  if (v2 == 0.0 || (v115 = v242, v2 == 50.0) || (v116 = OUTLINED_FUNCTION_10_69(), v115 = v240, v2 == v116))
                  {
                    v117 = OUTLINED_FUNCTION_5_120(v107, v108, v109, v110, v115, v111, v112, v113, v238, v239, v240, v241, v242, v244, v246, v248, v249, v251, v253, name, v257, v258, v260, v262, v264, v266, v267, v268, v270, v272, attrName, v276, v278, v280, v282, v284, v286, v288, v290, v292, v294, v296, v298, key, v301, v302, v303, v305, aStr);
                    CFAttributedStringSetAttribute(v117, v330, v253, v118);
                  }
                }

                goto LABEL_91;
              }

              v89 = FigCFNumberCreateFloat32();
              v97 = OUTLINED_FUNCTION_5_120(v89, v90, v91, v92, v93, v94, v95, v96, v238, v239, v240, v241, v242, v244, v246, v248, v249, v251, v253, name, v257, v258, v260, v262, v264, v266, v267, v268, v270, v272, attrName, v276, v278, v280, v282, v284, v286, v288, v290, v292, v294, v296, v298, key, v301, v302, v303, v305, aStr);
              v99 = v249;
            }

            CFAttributedStringSetAttribute(v97, v98, v99, v89);
            if (v89)
            {
              CFRelease(v89);
            }

            goto LABEL_86;
          }

LABEL_93:
          v14 = &kFigPlaybackItemProperty_IsAuthorizationRequired;
          CFDictionarySetValue(v246, @"SubtitleContent", v19);
          if (!v26)
          {
            goto LABEL_95;
          }
        }

        else
        {
          v28 = 0;
          v14 = &kFigPlaybackItemProperty_IsAuthorizationRequired;
          if (!v26)
          {
            goto LABEL_95;
          }
        }

        CFRelease(v26);
LABEL_95:
        if (v28)
        {
          CFRelease(v28);
        }

        v13 = MEMORY[0x1E6960A90];
        if (v322)
        {
          CFRelease(v322);
        }

        CFRelease(v19);
      }
    }
  }

  v119 = CFDictionaryGetValue(theDict, @"SubtitleContentMetadata");
  if (v119)
  {
    v120 = CFDictionaryGetValue(v119, *v13);
    if (v120)
    {
      v121 = v120;
      Count = CFDictionaryGetCount(v120);
      if (Count >= 1)
      {
        v123 = Count;
        v124 = malloc_type_calloc(Count, 8uLL, 0xC0040B8AA526DuLL);
        v125 = malloc_type_calloc(v123, 8uLL, 0xC0040B8AA526DuLL);
        CFDictionaryGetKeysAndValues(v121, v124, v125);
        v126 = 0;
        v127 = *MEMORY[0x1E6960AF0];
        v128 = *MEMORY[0x1E6960900];
        v306 = *MEMORY[0x1E695E4D0];
        v299 = *MEMORY[0x1E6960840];
        v297 = *MEMORY[0x1E6960848];
        v295 = *MEMORY[0x1E69608E8];
        v265 = *MEMORY[0x1E6960AC8];
        v263 = *MEMORY[0x1E6960AC0];
        v261 = *MEMORY[0x1E6960AD8];
        v259 = *MEMORY[0x1E6960AD0];
        v293 = *MEMORY[0x1E6960820];
        v291 = *MEMORY[0x1E69609B0];
        v289 = *MEMORY[0x1E6960808];
        v287 = *MEMORY[0x1E69609A8];
        v285 = *MEMORY[0x1E6960960];
        aStra = *MEMORY[0x1E69607C0];
        namea = *MEMORY[0x1E695F1C0];
        v252 = *MEMORY[0x1E69608D0];
        v283 = *MEMORY[0x1E6960910];
        v281 = *MEMORY[0x1E6960800];
        v279 = *MEMORY[0x1E69607E8];
        v277 = *MEMORY[0x1E69607F0];
        attrNamea = *MEMORY[0x1E69607F8];
        v269 = *MEMORY[0x1E6960B18];
        v271 = *MEMORY[0x1E6960B00];
        v254 = *MEMORY[0x1E6960B08];
        while (1)
        {
          v129 = v125[v126];
          if (!v129)
          {
            goto LABEL_203;
          }

          v130 = CFGetTypeID(v129);
          if (v130 != CFDictionaryGetTypeID())
          {
            goto LABEL_203;
          }

          v131 = v124[v126];
          if (!v131)
          {
            goto LABEL_203;
          }

          v132 = CFGetTypeID(v131);
          if (v132 != CFStringGetTypeID())
          {
            goto LABEL_203;
          }

          v133 = v124[v126];
          v134 = v125[v126];
          if (!CFDictionaryGetValue(v134, v127))
          {
            v174 = v14;
            v324.location = 0;
            FigCaptionRendererStackLayoutRegionCreate(&v324);
            *v323 = 0;
            LODWORD(v316.value) = 0;
            v321.value = 0;
            v320.value = 0;
            effectiveRange.location = 0;
            v317.value = 0;
            location = v324.location;
            FigCaptionRendererRegionProtocolGetProtocolID();
            ProtocolVTable = CMBaseObjectGetProtocolVTable();
            if (ProtocolVTable)
            {
              v177 = *(ProtocolVTable + 16);
              if (v177)
              {
                v178 = *(v177 + 8);
                if (v178)
                {
                  v178(location, v133);
                }
              }
            }

            v14 = v174;
            if (FigCFDictionaryGetCGFloatIfPresent())
            {
              v179 = v324.location;
              v180 = *v323;
              FigCaptionRendererRegionProtocolGetProtocolID();
              v181 = CMBaseObjectGetProtocolVTable();
              if (v181)
              {
                v182 = *(v181 + 16);
                if (v182)
                {
                  v183 = *(v182 + 24);
                  if (v183)
                  {
                    v183(v179, v180);
                  }
                }
              }

              v184 = CFDictionaryGetValue(v134, v271);
              if (v184)
              {
                CFNumberGetValue(v184, kCFNumberIntType, &v316);
                v185 = v324.location;
                value_low = LODWORD(v316.value);
                FigCaptionRendererRegionProtocolGetProtocolID();
                v187 = CMBaseObjectGetProtocolVTable();
                if (v187)
                {
                  v188 = *(v187 + 16);
                  if (v188)
                  {
                    v189 = *(v188 + 40);
                    if (v189)
                    {
                      v189(v185, value_low);
                    }
                  }
                }

                v14 = v174;
                if (CFDictionaryGetValue(v134, v269) && FigCFDictionaryGetCGFloatIfPresent() && FigCFDictionaryGetCGFloatIfPresent())
                {
                  v190 = v324.location;
                  v191 = *&v321.value;
                  v192 = *&v320.value;
                  FigCaptionRendererRegionProtocolGetProtocolID();
                  v193 = CMBaseObjectGetProtocolVTable();
                  if (v193)
                  {
                    v194 = *(v193 + 16);
                    if (v194)
                    {
                      v195 = *(v194 + 72);
                      if (v195)
                      {
                        v195(v190, v191, 100.0 - v192);
                      }
                    }
                  }

                  if (CFDictionaryGetValue(v134, v254) && FigCFDictionaryGetCGFloatIfPresent() && FigCFDictionaryGetCGFloatIfPresent())
                  {
                    v196 = v324.location;
                    v197 = *&effectiveRange.location;
                    v198 = *&v317.value;
                    FigCaptionRendererRegionProtocolGetProtocolID();
                    v199 = CMBaseObjectGetProtocolVTable();
                    if (v199)
                    {
                      v200 = *(v199 + 16);
                      if (v200)
                      {
                        v201 = *(v200 + 56);
                        if (v201)
                        {
                          v201(v196, v197, v198);
                        }
                      }
                    }

                    (*(v301 + 24))(v324.location, *(v301 + 40));
                  }
                }
              }
            }

            v202 = v324.location;
            if (!v324.location)
            {
              goto LABEL_203;
            }

LABEL_202:
            CFRelease(v202);
            goto LABEL_203;
          }

          v321.value = 0;
          v135 = CFDictionaryGetValue(v134, v127);
          v136 = CFDictionaryGetValue(v135, v128);
          if (!v136 || v136 != v306)
          {
            break;
          }

LABEL_201:
          v202 = v321.value;
          if (v321.value)
          {
            goto LABEL_202;
          }

LABEL_203:
          if (++v126 == v123)
          {
            free(v124);
            free(v125);
            goto LABEL_208;
          }
        }

        if (FigCaptionRendererTTMLRegionCreate(&v321))
        {
          fig_log_get_emitter();
          FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v238, v239, v240);
          goto LABEL_201;
        }

        v137 = v321.value;
        FigCaptionRendererRegionProtocolGetProtocolID();
        v138 = CMBaseObjectGetProtocolVTable();
        if (v138)
        {
          v139 = *(v138 + 16);
          if (v139)
          {
            v140 = *(v139 + 8);
            if (v140)
            {
              v140(v137, v133);
            }
          }
        }

        if (CFDictionaryGetValue(v135, v299))
        {
          v141 = OUTLINED_FUNCTION_4_135();
          FigCaptionRendererTTMLRegionSetDisplayAlignment(v141, v142);
        }

        v304 = v128;
        v273 = v127;
        if (CFDictionaryGetValue(v135, v297))
        {
          FigTextMarkupAspectRatioMakeFromSimplifiedDictionary();
          v143 = OUTLINED_FUNCTION_4_135();
          FigCaptionRendererTTMLRegionSetDisplayAspectRatio(v143, v144);
        }

        v145 = CFDictionaryGetValue(v135, v295);
        if (v145)
        {
          v146 = v145;
          CFDictionaryGetValue(v145, v265);
          v250 = FigTextMarkupDimensionMakeFromSimplifiedDictionary();
          v247 = v147;
          CFDictionaryGetValue(v146, v263);
          v148 = FigTextMarkupDimensionMakeFromSimplifiedDictionary();
          v243 = v149;
          v245 = v148;
          CFDictionaryGetValue(v146, v261);
          v150 = FigTextMarkupDimensionMakeFromSimplifiedDictionary();
          v152 = v151;
          CFDictionaryGetValue(v146, v259);
          FigTextMarkupDimensionMakeFromSimplifiedDictionary();
          OUTLINED_FUNCTION_3_138();
          v153 = v321.value;
          FigCaptionRendererNodeProtocolGetProtocolID();
          v154 = CMBaseObjectGetProtocolVTable();
          if (v154)
          {
            v155 = *(v154 + 16);
            if (v155)
            {
              v156 = *(v155 + 144);
              if (v156)
              {
                v238 = v245;
                LODWORD(v239) = v243;
                v156(v153, v150, v152, v146, v133, v250, v247);
              }
            }
          }
        }

        if (CFDictionaryGetValue(v135, v293))
        {
          v157 = OUTLINED_FUNCTION_4_135();
          FigCaptionRendererTTMLRegionSetClipOverflow(v157, v158);
        }

        v159 = CFDictionaryGetValue(v135, v291);
        if (v159)
        {
          v324.location = 0;
          CFNumberGetValue(v159, kCFNumberCGFloatType, &v324);
          v160 = v321.value;
          v161 = *&v324.location;
          FigCaptionRendererNodeProtocolGetProtocolID();
          v162 = CMBaseObjectGetProtocolVTable();
          if (v162)
          {
            v163 = *(v162 + 16);
            if (v163)
            {
              v164 = *(v163 + 256);
              if (v164)
              {
                v164(v160, v161);
              }
            }
          }
        }

        if (CFDictionaryGetValue(v135, v289))
        {
          v165 = *(MEMORY[0x1E6962830] + 16);
          v324 = *MEMORY[0x1E6962830];
          v325 = v165;
          FigTextMarkupSizeMakeFromSimplifiedDictionary();
          *v323 = v324;
          *&v323[16] = v325;
          FigCaptionRendererTTMLRegionSetCellResolution(v321.value, v323);
        }

        v14 = &kFigPlaybackItemProperty_IsAuthorizationRequired;
        v127 = v273;
        v128 = v304;
        if (CFDictionaryGetValue(v135, v287))
        {
          v166 = OUTLINED_FUNCTION_4_135();
          FigCaptionRendererTTMLRegionSetWritingMode(v166, v167);
        }

        if (CFDictionaryGetValue(v135, v285))
        {
          v168 = OUTLINED_FUNCTION_4_135();
          FigCaptionRendererTTMLRegionSetShowBackground(v168, v169);
        }

        if (!v135 || !aStra || !CFDictionaryContainsKey(v135, aStra))
        {
          goto LABEL_190;
        }

        v170 = CFDictionaryGetValue(v135, aStra);
        v171 = CFGetTypeID(v170);
        if (v171 == CGColorGetTypeID())
        {
          v172 = CGColorRetain(v170);
          if (v172)
          {
            v173 = v172;
            v128 = v304;
LABEL_181:
            v209 = CFDictionaryGetValue(v135, v252);
            if (v209)
            {
              *v323 = 0x3FF0000000000000;
              CFNumberGetValue(v209, kCFNumberCGFloatType, v323);
              v210 = CGColorSpaceCreateWithName(namea);
              Components = CGColorGetComponents(v173);
              for (i = 0; i != 3; ++i)
              {
                *(&v324.location + i * 8) = Components[i];
              }

              *(&v325 + 1) = *v323;
              if (v210)
              {
                CFRelease(v173);
                v173 = CGColorCreate(v210, &v324.location);
                CGColorSpaceRelease(v210);
              }

              FigCaptionRendererTTMLRegionSetColor(v321.value, v173);
              if (!v173)
              {
                goto LABEL_190;
              }
            }

            else
            {
              FigCaptionRendererTTMLRegionSetColor(v321.value, v173);
            }

            CFRelease(v173);
LABEL_190:
            if (CFDictionaryGetValue(v135, v283))
            {
              v213 = OUTLINED_FUNCTION_4_135();
              FigCaptionRendererTTMLRegionSetInvisible(v213, v214);
            }

            v215 = OUTLINED_FUNCTION_10_69();
            OUTLINED_FUNCTION_40_4(v215);
            OUTLINED_FUNCTION_3_138();
            if (CFDictionaryGetValue(v135, v281))
            {
              FigTextMarkupDimensionMakeFromSimplifiedDictionary();
              OUTLINED_FUNCTION_3_138();
            }

            v216 = OUTLINED_FUNCTION_2_168();
            FigCaptionRendererTTMLRegionSetWidth(v216, v217, v218);
            v219 = OUTLINED_FUNCTION_10_69();
            OUTLINED_FUNCTION_40_4(v219);
            OUTLINED_FUNCTION_3_138();
            if (CFDictionaryGetValue(v135, v279))
            {
              FigTextMarkupDimensionMakeFromSimplifiedDictionary();
              OUTLINED_FUNCTION_3_138();
            }

            v220 = OUTLINED_FUNCTION_2_168();
            FigCaptionRendererTTMLRegionSetHeight(v220, v221, v222);
            OUTLINED_FUNCTION_40_4(0.0);
            OUTLINED_FUNCTION_3_138();
            if (CFDictionaryGetValue(v135, v277))
            {
              FigTextMarkupDimensionMakeFromSimplifiedDictionary();
              OUTLINED_FUNCTION_3_138();
            }

            v223 = OUTLINED_FUNCTION_2_168();
            FigCaptionRendererTTMLRegionSetPositionX(v223, v224, v225);
            OUTLINED_FUNCTION_40_4(0.0);
            OUTLINED_FUNCTION_3_138();
            if (CFDictionaryGetValue(v135, attrNamea))
            {
              FigTextMarkupDimensionMakeFromSimplifiedDictionary();
              OUTLINED_FUNCTION_3_138();
            }

            v226 = OUTLINED_FUNCTION_2_168();
            FigCaptionRendererTTMLRegionSetPositionY(v226, v227, v228);
            (*(v301 + 24))(v321.value, *(v301 + 40));
            goto LABEL_201;
          }
        }

        else
        {
          v203 = CFGetTypeID(v170);
          if (v203 == CFArrayGetTypeID())
          {
            for (j = 0; j != 4; ++j)
            {
              v205 = CFArrayGetValueAtIndex(v170, j);
              *v323 = 0;
              v206 = CFGetTypeID(v205);
              if (v206 != CFNumberGetTypeID())
              {
                break;
              }

              CFNumberGetValue(v205, kCFNumberCGFloatType, v323);
              *(&v324.location + ((j - 1) & 3)) = *v323;
            }
          }
        }

        v207 = CGColorSpaceCreateWithName(namea);
        v14 = &kFigPlaybackItemProperty_IsAuthorizationRequired;
        v128 = v304;
        if (!v207)
        {
          goto LABEL_190;
        }

        v208 = v207;
        v173 = CGColorCreate(v207, &v324.location);
        CGColorSpaceRelease(v208);
        if (!v173)
        {
          goto LABEL_190;
        }

        goto LABEL_181;
      }
    }
  }

LABEL_208:
  v230 = CFDictionaryGetValue(theDict, v14[443]);
  v4 = v267;
  if (!v230)
  {
    goto LABEL_11;
  }

  v231 = v230;
  v232 = CFArrayGetCount(v230);
  if (!v232)
  {
    v229 = v301;
    goto LABEL_207;
  }

  v233 = v232;
  if (v232 >= 1)
  {
    for (k = 0; k != v233; ++k)
    {
      v235 = CFArrayGetValueAtIndex(v231, k);
      if (v235)
      {
        v236 = v235;
        if (CFAttributedStringGetLength(v235))
        {
          outputCueAsFigCaptionRendererCaption_0(v301, HIDWORD(v257), v236, theDict);
        }
      }
    }
  }

LABEL_11:
  if (theDict)
  {
    CFRelease(theDict);
  }

  if (v4)
  {
    CFRelease(v4);
  }

  if (cf)
  {
    CFRelease(cf);
  }
}

void outputCueAsFigCaptionRendererCaption_0(uint64_t a1, uint64_t a2, uint64_t a3, CFDictionaryRef theDict)
{
  v4 = theDict;
  cf[0] = 0;
  if (theDict)
  {
    Value = CFDictionaryGetValue(theDict, @"SubtitleTimeRange");
    v9 = CFDictionaryGetValue(v4, @"kFigSubtitleRenderer_TextBox");
    v10 = CFDictionaryGetValue(v4, @"SubtitleExtendedLanguageTag");
    v4 = CFDictionaryGetValue(v4, @"kFigSubtitleRenderer_ObeySubtitleFormatting");
  }

  else
  {
    v10 = 0;
    v9 = 0;
    Value = 0;
  }

  cf[1] = 0;
  cf[2] = 0;
  if (a3)
  {
    v11 = OUTLINED_FUNCTION_0_190();
    Attribute = CFAttributedStringGetAttribute(v11, v12, v13, v14);
    if (Attribute && Attribute == *MEMORY[0x1E695E4D0])
    {
      goto LABEL_15;
    }
  }

  FigCaptionRendererCaptionCreate(cf);
  v17 = cf[0];
  FigCaptionRendererCaptionProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (ProtocolVTable)
  {
    v19 = *(ProtocolVTable + 16);
    if (v19)
    {
      v20 = *(v19 + 40);
      if (v20)
      {
        v20(v17, a2);
      }
    }
  }

  if (a2 == 5)
  {
    (*(a1 + 16))(cf[0], *(a1 + 40));
LABEL_15:
    Mutable = 0;
    goto LABEL_69;
  }

  if (!a3)
  {
    goto LABEL_15;
  }

  if (Value)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(Value, 0);
    v23 = CFArrayGetValueAtIndex(Value, 1);
    memset(&v111, 0, sizeof(v111));
    CMTimeMakeFromDictionary(&v111, ValueAtIndex);
    memset(&v110, 0, sizeof(v110));
    CMTimeMakeFromDictionary(&v110, v23);
    v109 = v111;
    CMTimeGetSeconds(&v109);
    v109 = v110;
    CMTimeGetSeconds(&v109);
  }

  v24 = cf[0];
  FigBytePumpGetFigBaseObject();
  v26 = v25;
  v28 = v27;
  FigCaptionRendererIntervalProtocolGetProtocolID();
  v29 = CMBaseObjectGetProtocolVTable();
  if (v29)
  {
    v30 = *(v29 + 16);
    if (v30)
    {
      v31 = *(v30 + 16);
      if (v31)
      {
        v31(v24, v26, v28);
      }
    }
  }

  v32 = cf[0];
  FigCaptionRendererCaptionProtocolGetProtocolID();
  v33 = CMBaseObjectGetProtocolVTable();
  if (v33)
  {
    v34 = *(v33 + 16);
    if (v34)
    {
      v35 = *(v34 + 56);
      if (v35)
      {
        v35(v32, v10);
      }
    }
  }

  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v36 = cf[0];
  FigCaptionRendererCaptionProtocolGetProtocolID();
  v37 = CMBaseObjectGetProtocolVTable();
  if (v37)
  {
    v38 = *(v37 + 16);
    if (v38)
    {
      v39 = *(v38 + 8);
      if (v39)
      {
        v39(v36, Mutable);
      }
    }
  }

  v40 = OUTLINED_FUNCTION_0_190();
  v44 = CFAttributedStringGetAttribute(v40, v41, v42, v43);
  if (v44 || (v45 = OUTLINED_FUNCTION_0_190(), v49 = CFAttributedStringGetAttribute(v45, v46, v47, v48), a2 == 7) && (v44 = v49) != 0)
  {
    CFDictionarySetValue(Mutable, @"region", v44);
  }

  if (v9)
  {
    CFDictionarySetValue(Mutable, @"textbox", v9);
  }

  if (v4)
  {
    CFDictionarySetValue(Mutable, @"obeysubtitleformat", v4);
  }

  v50 = *MEMORY[0x1E69607B0];
  v51 = OUTLINED_FUNCTION_0_190();
  v54 = CFAttributedStringGetAttribute(v51, v52, v50, v53);
  if (v54)
  {
    CFDictionarySetValue(Mutable, v50, v54);
  }

  if (a2 == 7)
  {
    v95 = OUTLINED_FUNCTION_0_190();
    v99 = CFAttributedStringGetAttribute(v95, v96, v97, v98);
    if (v99)
    {
      v100 = v99;
      v101 = cf[0];
      FigCaptionRendererCaptionProtocolGetProtocolID();
      v102 = CMBaseObjectGetProtocolVTable();
      if (v102)
      {
        v103 = *(v102 + 16);
        if (v103)
        {
          v104 = *(v103 + 88);
          if (v104)
          {
            v104(v101, v100);
          }
        }
      }
    }
  }

  else if (a2 == 4)
  {
    v55 = *MEMORY[0x1E6960998];
    v56 = OUTLINED_FUNCTION_0_190();
    v59 = CFAttributedStringGetAttribute(v56, v57, v55, v58);
    if (v59)
    {
      OUTLINED_FUNCTION_1_10(v59);
    }

    v60 = *MEMORY[0x1E6960978];
    v61 = OUTLINED_FUNCTION_0_190();
    v64 = CFAttributedStringGetAttribute(v61, v62, v60, v63);
    if (v64)
    {
      OUTLINED_FUNCTION_1_10(v64);
    }

    v65 = *MEMORY[0x1E69608E0];
    v66 = OUTLINED_FUNCTION_0_190();
    v69 = CFAttributedStringGetAttribute(v66, v67, v65, v68);
    if (v69)
    {
      OUTLINED_FUNCTION_1_10(v69);
    }

    v70 = *MEMORY[0x1E69608D8];
    v71 = OUTLINED_FUNCTION_0_190();
    v74 = CFAttributedStringGetAttribute(v71, v72, v70, v73);
    if (v74)
    {
      OUTLINED_FUNCTION_1_10(v74);
    }

    v75 = *MEMORY[0x1E6960830];
    v76 = OUTLINED_FUNCTION_0_190();
    v79 = CFAttributedStringGetAttribute(v76, v77, v75, v78);
    if (v79)
    {
      OUTLINED_FUNCTION_1_10(v79);
    }

    v80 = *MEMORY[0x1E6960838];
    v81 = OUTLINED_FUNCTION_0_190();
    v84 = CFAttributedStringGetAttribute(v81, v82, v80, v83);
    if (v84)
    {
      OUTLINED_FUNCTION_1_10(v84);
    }

    v85 = *MEMORY[0x1E69609A0];
    v86 = OUTLINED_FUNCTION_0_190();
    v89 = CFAttributedStringGetAttribute(v86, v87, v85, v88);
    if (v89)
    {
      OUTLINED_FUNCTION_1_10(v89);
    }

    v90 = *MEMORY[0x1E6960968];
    v91 = OUTLINED_FUNCTION_0_190();
    v94 = CFAttributedStringGetAttribute(v91, v92, v90, v93);
    if (v94)
    {
      OUTLINED_FUNCTION_1_10(v94);
    }
  }

  v105 = cf[0];
  FigCaptionRendererCaptionProtocolGetProtocolID();
  v106 = CMBaseObjectGetProtocolVTable();
  if (v106)
  {
    v107 = *(v106 + 16);
    if (v107)
    {
      v108 = *(v107 + 24);
      if (v108)
      {
        v108(v105, a3);
      }
    }
  }

  (*(a1 + 16))(cf[0], *(a1 + 40));
LABEL_69:
  if (cf[0])
  {
    CFRelease(cf[0]);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }
}

void FigCaptionRendererNotificationInputCreate_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FigCaptionRendererNotificationInputCreate_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void speedramptimer_eventHandler(uint64_t a1)
{
  v23 = *MEMORY[0x1E69E9840];
  v2 = FigCFWeakReferenceHolderCopyReferencedObject();
  if (!v2)
  {
    return;
  }

  v3 = v2;
  FigSimpleMutexLock();
  if ((*(v3 + 124) & 0x1D) != 1)
  {
    goto LABEL_11;
  }

  CMTimebaseGetTime(&v18, *(v3 + 32));
  v17 = v18;
  v21 = *(v3 + 112);
  v4 = *(v3 + 124);
  v22 = *(v3 + 120);
  v5 = *(v3 + 128);
  Rate = CMTimebaseGetRate(*(v3 + 32));
  if ((v4 & 0x1D) != 1 || ((v7 = Rate, Rate < 0.0) || (time1.value = v21, time1.timescale = v22, time1.flags = v4, time1.epoch = v5, time2 = v17, CMTimeCompare(&time1, &time2) > 0)) && (v7 >= 0.0 || (time1 = v17, time2.value = v21, time2.timescale = v22, time2.flags = v4, time2.epoch = v5, CMTimeCompare(&time1, &time2) > 0)))
  {
    if (*(v3 + 64))
    {
      emitter = fig_log_get_emitter();
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 4294947583, "<<<< SpeedRampTimer >>>>", 102, v1);
    }

    else
    {
      v8 = *(v3 + 32);
      v9 = *(v3 + 40);
      time1 = *(v3 + 112);
      v10 = CMTimebaseSetTimerDispatchSourceNextFireTime(v8, v9, &time1, *(v3 + 160));
      if (v10)
      {
        v15 = v10;
        v16 = fig_log_get_emitter();
        FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v16, v15, "<<<< SpeedRampTimer >>>>", 107, v1);
      }
    }

LABEL_11:
    v11 = 0;
    goto LABEL_12;
  }

  *(v3 + 136) = v18;
  v11 = *(v3 + 72);
  v13 = *(v3 + 24);
  if (v13)
  {
    v12 = CFRetain(v13);
    goto LABEL_13;
  }

LABEL_12:
  v12 = 0;
LABEL_13:
  FigSimpleMutexUnlock();
  CFRelease(v3);
  if (v11)
  {
    v11(v12);
  }

  if (v12)
  {
    CFRelease(v12);
  }
}

void speedramptimer_cancelHandler(uint64_t a1)
{
  v1 = FigCFWeakReferenceHolderCopyReferencedObject();
  if (!v1)
  {
    return;
  }

  v2 = v1;
  FigSimpleMutexLock();
  if (*(v2 + 65))
  {
    v3 = 0;
  }

  else
  {
    *(v2 + 65) = 1;
    v3 = *(v2 + 80);
    v5 = *(v2 + 24);
    if (v5)
    {
      v4 = CFRetain(v5);
      goto LABEL_7;
    }
  }

  v4 = 0;
LABEL_7:
  FigSimpleMutexUnlock();
  CFRelease(v2);
  if (v3)
  {
    v3(v4);
  }

  if (v4)
  {

    CFRelease(v4);
  }
}

double FigSpeedRampTimerScheduleForL2Time_cold_1(uint64_t a1, void *a2)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  *a2 = v3;
  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v5, v6, v7);
}

void FigSpeedRampTimerScheduleToFireImmediately_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

double FigSpeedRampTimerScheduleToFireImmediately_cold_2()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v1, v2, vars0);
}

double FigSpeedRampTimerCreate_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
}

void FigSpeedRampTimerCreate_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FigSpeedRampTimerCreate_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FigSpeedRampTimerCreate_cold_4(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FigSpeedRampTimerCreate_cold_5(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FigSpeedRampTimerCreate_cold_6(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FigSpeedRampTimerCreate_cold_7(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FigSpeedRampTimerCreate_cold_8(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

double MTSampleBufferCopyClosedCaptionSEIBlockBuffer(opaqueCMSampleBuffer *a1, CMBlockBufferRef *a2)
{
  FormatDescription = CMSampleBufferGetFormatDescription(a1);
  MediaSubType = CMFormatDescriptionGetMediaSubType(FormatDescription);
  v32 = 0;
  UnitTypesForCodecType = ccu_getUnitTypesForCodecType(MediaSubType);
  if (FormatDescription && a1 && a2 && (v7 = UnitTypesForCodecType, UnitTypesForCodecType) && (DataBuffer = CMSampleBufferGetDataBuffer(a1)) != 0)
  {
    v9 = DataBuffer;
    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    DataLength = CMBlockBufferGetDataLength(DataBuffer);
    result = UnitIteratorInit(FormatDescription, v9, DataLength, &v28);
    v33 = v12;
    if (v12)
    {
      return result;
    }

    if ((*(&v31 + 1))(&v28, &v33, result))
    {
      v19 = BYTE1(v7);
      v20 = BYTE2(v7);
      while (v28 != v19 && v28 != v20)
      {
LABEL_13:
        if (!(*(&v31 + 1))(&v28, &v33))
        {
          v22 = v32;
          goto LABEL_25;
        }
      }

      v23 = 0;
      v24 = v29;
      v25 = 0;
      v26 = *(&v29 + 1) + v29;
      v27 = v31;
      while (SEIIteratorNextMessage(&v23, &v33, v13, v14, v15, v16, v17, v18))
      {
        if (SEIIteratorIsT35ATSC1Data(&v23, &v33))
        {
          v33 = ccu_createOrAppendFromBuffer(&v32, v9, v24 + 3, v25 - 3);
          if (v33)
          {
            goto LABEL_23;
          }
        }

        else if (v33)
        {
          goto LABEL_23;
        }
      }

      if (!v33)
      {
        goto LABEL_13;
      }

LABEL_23:
      v22 = v32;
    }

    else
    {
      v22 = 0;
LABEL_25:
      if (!v33)
      {
        *a2 = v22;
        return result;
      }
    }

    if (v22)
    {
      CFRelease(v22);
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

double UnitIteratorInit(const opaqueCMFormatDescription *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  MediaSubType = CMFormatDescriptionGetMediaSubType(a1);
  Extensions = CMFormatDescriptionGetExtensions(a1);
  if (!Extensions || (Value = CFDictionaryGetValue(Extensions, *MEMORY[0x1E69600A0])) == 0 || (v8 = Value, v9 = CFGetTypeID(Value), v9 != CFDictionaryGetTypeID()))
  {
LABEL_72:
    fig_log_get_emitter();
    OUTLINED_FUNCTION_2_10();

    return FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
  }

  v10 = @"avcC";
  v11 = 1635148593;
  if (MediaSubType != 1635148593 && MediaSubType != 1635148595 && MediaSubType != 1667331683)
  {
    switch(MediaSubType)
    {
      case 0x63646831u:
      case 0x63687663u:
      case 0x646D7578u:
        goto LABEL_61;
      case 0x64726D69u:
        goto LABEL_62;
      case 0x64766831u:
      case 0x64766865u:
        goto LABEL_61;
      case 0x65617663u:
      case 0x66747663u:
        goto LABEL_62;
    }

    v18 = MediaSubType == 1718908520 || MediaSubType == 1718908528;
    v19 = v18 || MediaSubType == 1751479857;
    v20 = v19 || MediaSubType == 1752589105;
    v21 = v20 || MediaSubType == 1836415073;
    if (v21 || MediaSubType == 1869117027)
    {
LABEL_61:
      v11 = 1752589105;
      v10 = @"hvcC";
      goto LABEL_62;
    }

    if (MediaSubType != 1902212707 && MediaSubType != 1902212709)
    {
      if (MediaSubType != 1902405681 && MediaSubType != 1902405733 && MediaSubType != 1902407032 && MediaSubType != 1902667126 && MediaSubType != 1902671459)
      {
        if (MediaSubType == 2053207651)
        {
          goto LABEL_62;
        }

        if (MediaSubType != 1902998904)
        {
          goto LABEL_72;
        }
      }

      goto LABEL_61;
    }
  }

LABEL_62:
  v28 = CFDictionaryGetValue(v8, v10);
  if (!v28)
  {
    goto LABEL_72;
  }

  ValueAtIndex = v28;
  v30 = CFGetTypeID(v28);
  if (v30 == CFArrayGetTypeID() && CFArrayGetCount(ValueAtIndex) >= 1)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(ValueAtIndex, 0);
    if (!ValueAtIndex)
    {
      goto LABEL_72;
    }
  }

  if (v11 == 1635148593)
  {
    CFDataGetBytePtr(ValueAtIndex);
    CFDataGetLength(ValueAtIndex);
    FigH264Bridge_GetNALUnitHeaderLengthFromAVCC();
  }

  else
  {
    FigHEVCBridge_GetNALUnitHeaderLengthFromHVCC();
  }

  fig_log_get_emitter();
  OUTLINED_FUNCTION_2_10();
  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
}

uint64_t SEIIteratorNextMessage(void *a1, uint64_t a2, int a3, int a4, int a5, int a6, int a7, int a8)
{
  v32 = a2;
  v8 = a1;
  v36 = *MEMORY[0x1E69E9840];
  HIBYTE(destination) = 0;
  v9 = a1[2];
  v10 = a1[3];
  v11 = a1[1];
  v12 = v9 + v11;
  if (v9)
  {
    v13 = 2;
    if (v11)
    {
      v13 = 3;
    }

    v14 = v13 + v9;
    if ((v13 + v9) >= 4)
    {
      v25 = v11 != 0;
      v15 = v11 - 1;
      if (v25)
      {
        v16 = v15;
      }

      else
      {
        v16 = 0;
      }

      do
      {
        if (v12 + 3 >= v8[3])
        {
          break;
        }

        returnedPointerOut = 0;
        if (v14 >= 0x100)
        {
          v17 = 256;
        }

        else
        {
          v17 = v14;
        }

        LODWORD(a1) = CMBlockBufferAccessDataBytes(v8[4], v16, v17, temporaryBlock, &returnedPointerOut);
        if (a1)
        {
          goto LABEL_46;
        }

        v18 = 0;
        v19 = returnedPointerOut;
        v20 = v17 - 1;
        v21 = 2;
        do
        {
          a1 = memchr(&v19[v21], 3, v17 + ~v21);
          if (!a1)
          {
            break;
          }

          if (!*(a1 - 2) && !*(a1 - 1) && *(a1 + 1) < 4u)
          {
            ++v18;
          }

          v21 = a1 - v19 + 3;
        }

        while (v21 < v20);
        v22 = v17 - 3;
        if (v19[v20] != 3)
        {
          v22 = v17;
        }

        v23 = v19[v20] ? v22 : v17 - 2;
        v16 += v23;
        v14 = v18 + v14 - v23;
        v12 += v18;
      }

      while (v14 > 3);
    }
  }

  if (v12 + 3 >= v10)
  {
    LODWORD(a1) = 0;
  }

  else
  {
    v24 = 0;
    while (1)
    {
      LODWORD(a1) = OUTLINED_FUNCTION_6_109(a1, a2, a3, a4, a5, a6, a7, a8, v31, v32, destination, SWORD2(destination), SBYTE6(destination), SHIBYTE(destination));
      if (a1)
      {
        break;
      }

      v24 += HIBYTE(destination);
      v25 = HIBYTE(destination) != 255 || ++v12 >= v10;
      if (v25)
      {
        v26 = 0;
        while (1)
        {
          LODWORD(a1) = OUTLINED_FUNCTION_6_109(0, a2, a3, a4, a5, a6, a7, a8, v31, v32, destination, SWORD2(destination), SBYTE6(destination), SHIBYTE(destination));
          if (a1)
          {
            goto LABEL_46;
          }

          v26 += HIBYTE(destination);
          ++v12;
          if (HIBYTE(destination) != 255 || v12 >= v10)
          {
            v28 = v32;
            LODWORD(a1) = 0;
            if (v26 + v12 <= v10)
            {
              *v8 = v24;
              v29 = 1;
              v8[1] = v12;
              v8[2] = v26;
            }

            else
            {
              v29 = 0;
            }

            goto LABEL_44;
          }
        }
      }
    }
  }

LABEL_46:
  v29 = 0;
  v28 = v32;
LABEL_44:
  *v28 = a1;
  return v29;
}

BOOL SEIIteratorIsT35ATSC1Data(uint64_t a1, OSStatus *a2)
{
  v6[1] = *MEMORY[0x1E69E9840];
  if (*a1 != 4 || *(a1 + 16) < 0xAuLL)
  {
    v3 = 0;
    goto LABEL_7;
  }

  v6[0] = 0;
  v3 = CMBlockBufferCopyDataBytes(*(a1 + 32), *(a1 + 8), 8uLL, v6);
  if (v3)
  {
LABEL_7:
    v4 = 0;
    goto LABEL_5;
  }

  v4 = v6[0] == 0x3343941473100B5;
LABEL_5:
  *a2 = v3;
  return v4;
}

uint64_t ccu_createOrAppendFromBuffer(CMBlockBufferRef *a1, CFTypeRef cf, uint64_t a3, uint64_t a4)
{
  if (!a1)
  {
    return 0;
  }

  if (*a1)
  {
    if (a4)
    {
      OUTLINED_FUNCTION_2_150();

      return CMBlockBufferAppendBufferReference(v6, v7, v8, v9, v10);
    }

    return 0;
  }

  v12 = CFGetAllocator(cf);
  if (a4)
  {
    OUTLINED_FUNCTION_2_150();

    return CMBlockBufferCreateWithBufferReference(v13, v14, v15, v16, v17, a1);
  }

  else
  {

    return CMBlockBufferCreateEmpty(v12, 0, 0, a1);
  }
}

uint64_t MTSampleBufferCreateCopyIncorporatingClosedCaptionSEI(opaqueCMSampleBuffer *a1, OpaqueCMBlockBuffer *a2, CFTypeRef *a3)
{
  v61 = 0u;
  *v62 = 0u;
  v59 = 0u;
  v60 = 0u;
  FormatDescription = CMSampleBufferGetFormatDescription(a1);
  MediaSubType = CMFormatDescriptionGetMediaSubType(FormatDescription);
  UnitTypesForCodecType = ccu_getUnitTypesForCodecType(MediaSubType);
  theBuffer = 0;
  cf = 0;
  if (!a1)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_20_0();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v38, 4294947696, "(Fig)", 888, v39);
LABEL_63:
    v63[0] = v40;
    goto LABEL_46;
  }

  if (!FormatDescription)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_20_0();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v41, 4294947696, "(Fig)", 889, v42);
    goto LABEL_63;
  }

  if (!a3)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_20_0();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v43, 4294947696, "(Fig)", 890, v44);
    goto LABEL_63;
  }

  v10 = UnitTypesForCodecType;
  if (CMSampleBufferGetNumSamples(a1) != 1)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_20_0();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v45, 4294947696, "(Fig)", 891, v46);
    goto LABEL_63;
  }

  HIDWORD(v51) = v10;
  if (!v10)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_20_0();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v47, 4294947695, "(Fig)", 894, v48);
    goto LABEL_63;
  }

  DataBuffer = CMSampleBufferGetDataBuffer(a1);
  if (!DataBuffer)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_20_0();
    v36 = 4294947696;
    v37 = 897;
LABEL_62:
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, v36, "(Fig)", v37, v35, v49);
    goto LABEL_63;
  }

  v12 = DataBuffer;
  v49 = v3;
  DataLength = CMBlockBufferGetDataLength(DataBuffer);
  if (a2)
  {
    v14 = CMBlockBufferGetDataLength(a2) > 7;
  }

  else
  {
    v14 = 0;
  }

  v15.n128_f64[0] = UnitIteratorInit(FormatDescription, v12, DataLength, &v59);
  v63[0] = v16;
  if (!v16)
  {
    HIDWORD(v50) = MediaSubType;
    v17 = 0;
    v18 = 0;
    v19 = HIBYTE(v10);
    LODWORD(v51) = BYTE1(v10);
    v20 = BYTE2(v10);
    while (1)
    {
      v21 = (v62[1])(&v59, v63, v15);
      if (!v21)
      {
        break;
      }

      if (v19 > v59)
      {
        if (HIDWORD(v51) == v59)
        {
          v17 = v61;
        }

        else if (v51 == v59 || v20 == v59)
        {
          v52 = 0;
          v53 = v60;
          v54 = 0;
          v55 = *(&v60 + 1) + v60;
          v56 = v62[0];
          while (SEIIteratorNextMessage(&v52, v63, v23, v24, v25, v26, v27, v28))
          {
            IsT35ATSC1Data = SEIIteratorIsT35ATSC1Data(&v52, v63);
            if (IsT35ATSC1Data)
            {
              v63[0] = OUTLINED_FUNCTION_3_139(IsT35ATSC1Data, v31, v23, *(&v59 + 1) - v18, v25, v26, v27, v28, v49, v50, v51, v52, v53, v54, v55, v56);
              if (v63[0])
              {
                goto LABEL_46;
              }

              if (!v17)
              {
                v17 = v61;
              }

              if (v14)
              {
                v63[0] = ccu_appendCaptionBuffer(SHIDWORD(v50), theBuffer, a2, v17);
                if (v63[0])
                {
                  goto LABEL_46;
                }
              }

              v14 = 0;
              v18 = *(&v60 + 1) + v60;
            }
          }

          if (v63[0])
          {
            goto LABEL_46;
          }
        }

        else
        {
          if (v14)
          {
            v63[0] = OUTLINED_FUNCTION_3_139(v21, v22, v23, *(&v59 + 1) - v18, v25, v26, v27, v28, v49, v50, v51, v52, v53, v54, v55, v56);
            if (v63[0])
            {
              goto LABEL_46;
            }

            if (!v17)
            {
              v17 = v61;
            }

            v63[0] = ccu_appendCaptionBuffer(SHIDWORD(v50), theBuffer, a2, v17);
            if (v63[0])
            {
              goto LABEL_46;
            }

            v18 = *(&v59 + 1);
          }

          v14 = 0;
          if (v51 == v20)
          {
            if (v63[0])
            {
              goto LABEL_46;
            }

            goto LABEL_41;
          }
        }
      }
    }

    if (v63[0])
    {
      goto LABEL_46;
    }

    if (v14)
    {
      emitter = fig_log_get_emitter();
      v35 = v49;
      v36 = 4294947694;
      v37 = 985;
      goto LABEL_62;
    }

LABEL_41:
    v32 = theBuffer;
    if (!theBuffer)
    {
      CFRetain(a1);
      *a3 = a1;
      goto LABEL_46;
    }

    if (DataLength > v18)
    {
      v63[0] = OUTLINED_FUNCTION_3_139(theBuffer, v22, v23, DataLength - v18, v25, v26, v27, v28, v49, v50, v51, v52, v53, v54, v55, v56);
      if (v63[0])
      {
        goto LABEL_46;
      }

      v32 = theBuffer;
    }

    v52 = CMBlockBufferGetDataLength(v32);
    CFGetAllocator(a1);
    v63[0] = FigSampleBufferCreateCopyWithNewSizesAndDataBuffer();
    if (!v63[0])
    {
      *a3 = cf;
      cf = 0;
    }
  }

LABEL_46:
  if (theBuffer)
  {
    CFRelease(theBuffer);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  return v63[0];
}

uint64_t ui_iteratorHEVC(void *a1, _DWORD *a2, int a3, int a4, int a5, int a6, int a7, int a8)
{
  v10 = a1[3] + a1[2];
  if ((v10 + 6) > a1[5])
  {
    v11 = 0;
    goto LABEL_12;
  }

  v11 = OUTLINED_FUNCTION_4_136(a1, a2, a3, a4, a5, a6, a7, a8, v18);
  if (v11)
  {
    goto LABEL_12;
  }

  v12 = bswap32(0);
  *destination = v12;
  v13 = *(v8 + 40);
  v14 = v13 >= v12;
  v15 = v13 - v12;
  if (!v14 || v10 + 4 > v15 || v12 <= 1)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_20_0();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
    goto LABEL_12;
  }

  v11 = CMBlockBufferCopyDataBytes(*(v8 + 48), v10 + 4, 2uLL, (v8 + 32));
  if (v11)
  {
LABEL_12:
    v16 = 0;
    goto LABEL_9;
  }

  *v8 = (*(v8 + 32) >> 1) & 0x3F;
  *(v8 + 8) = v10;
  *(v8 + 16) = v10 + 6;
  *(v8 + 24) = *destination - 2;
  v16 = 1;
LABEL_9:
  *a2 = v11;
  return v16;
}

uint64_t ui_iteratorAVC(void *a1, _DWORD *a2, int a3, int a4, int a5, int a6, int a7, int a8)
{
  if ((a1[3] + a1[2] + 5) > a1[5])
  {
    v9 = 0;
  }

  else
  {
    v9 = OUTLINED_FUNCTION_4_136(a1, a2, a3, a4, a5, a6, a7, a8, v11);
    if (!v9)
    {
      fig_log_get_emitter();
      OUTLINED_FUNCTION_20_0();
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
    }
  }

  *a2 = v9;
  return 0;
}

uint64_t figVideoReceiverServer_handleRemoteMessage(_xpc_connection_s *a1, void *a2, void *a3)
{
  result = FigXPCMessageGetOpCode();
  if (!result)
  {
    xpc_dictionary_get_uint64(a2, *MEMORY[0x1E69615A0]);
    OUTLINED_FUNCTION_3_140();
    if (v5)
    {
      return FigXPCServerDisassociateObjectWithConnection();
    }

    else
    {
      result = FigXPCServerLookupAndRetainAssociatedObject();
      if (!result)
      {
        fig_log_get_emitter();
        OUTLINED_FUNCTION_1_11();
        FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
      }
    }
  }

  return result;
}

uint64_t figVideoReceiverServer_handleRemoteNoReplyMessage(uint64_t a1, void *a2)
{
  cf = 0;
  if (!a2)
  {
    goto LABEL_7;
  }

  OpCode = FigXPCMessageGetOpCode();
  if (!OpCode)
  {
    xpc_dictionary_get_uint64(a2, *MEMORY[0x1E69615A0]);
    OUTLINED_FUNCTION_3_140();
    if (v4)
    {
      FigXPCServerDisassociateObjectWithConnection();
      v5 = 0;
      goto LABEL_9;
    }

    OpCode = FigXPCServerLookupAndRetainAssociatedObject();
    if (!OpCode)
    {
LABEL_7:
      fig_log_get_emitter();
      OUTLINED_FUNCTION_3_5();
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
    }
  }

  v5 = OpCode;
LABEL_9:
  if (cf)
  {
    CFRelease(cf);
  }

  return v5;
}

uint64_t videoReceiverServer_createImageQueue(uint64_t a1, xpc_object_t xdict)
{
  uint64 = xpc_dictionary_get_uint64(xdict, "ImageQueueID");
  if (uint64)
  {
    v6 = uint64;
    v7 = FigXPCMessageCopyCFDictionary();
    if (!v7)
    {
      value = xpc_dictionary_get_value(xdict, "ImageQueueMessage");
      if (value)
      {
        v9 = value;
        v10 = *(*(CMBaseObjectGetVTable() + 24) + 16);
        if (!v10)
        {
          return 4294954514;
        }

        return v10(a1, v6, 0, v9);
      }

      else
      {
        emitter = fig_log_get_emitter();
        FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 4294951724, "<< FigVideoReceiverXPCServer >>", 242, v2);
      }
    }
  }

  else
  {
    v13 = fig_log_get_emitter();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v13, 4294951724, "<< FigVideoReceiverXPCServer >>", 236, v2);
  }

  return v7;
}

uint64_t videoReceiverServer_addConfiguration(uint64_t a1, uint64_t a2, void *a3)
{
  v26 = *MEMORY[0x1E6960C70];
  v27 = *(MEMORY[0x1E6960C70] + 16);
  cf = 0;
  v30[0] = 0;
  v24[0] = 0;
  v28 = 0;
  if (a3)
  {
    v6 = FigXPCMessageCopyCFDictionary();
    if (!v6)
    {
      v6 = FigDataChannelConfigurationCreateFromDictionary(*MEMORY[0x1E695E480], v30[0], v24);
      if (!v6)
      {
        ChannelCount = FigDataChannelConfigurationGetChannelCount(v24[0]);
        if (ChannelCount >= 1)
        {
          v8 = ChannelCount;
          for (i = 0; v8 != i; ++i)
          {
            if (FigDataChannelConfigurationGetOutputQueueTypeAtIndex(v24[0], i) == 2)
            {
              FigDataQueueObjectIDAtIndex = FigDataChannelConfigurationGetFigDataQueueObjectIDAtIndex();
              if (!FigDataQueueObjectIDAtIndex)
              {
                goto LABEL_42;
              }

              v6 = FigDataQueueServer_CopyDataQueueForID(a1, FigDataQueueObjectIDAtIndex, &cf);
              if (v6)
              {
                goto LABEL_43;
              }

              FigDataChannelConfigurationSetFigDataQueueAtIndex(v24[0], i);
              if (v6)
              {
                goto LABEL_43;
              }

              if (cf)
              {
                CFRelease(cf);
                cf = 0;
              }
            }
          }
        }

        ResourceCount = FigDataChannelConfigurationGetResourceCount(v24[0]);
        if (ResourceCount < 1)
        {
LABEL_23:
          v15 = 0;
          v16 = v24[0];
          v24[0] = 0;
          goto LABEL_24;
        }

        v12 = ResourceCount;
        v13 = 0;
        while (FigDataChannelConfigurationGetFigDataChannelResourceObjectIDAtIndex())
        {
          v6 = FigXPCServerLookupAndRetainAssociatedObject();
          if (v6)
          {
            goto LABEL_43;
          }

          if (!v28)
          {
            break;
          }

          v14 = CFGetTypeID(v28);
          if (v14 != FigDataChannelResourceGetTypeID())
          {
            break;
          }

          FigDataChannelConfigurationSetFigDataChannelResourceAtIndex(v24[0], v13, v28);
          if (v6)
          {
            goto LABEL_43;
          }

          if (v28)
          {
            CFRelease(v28);
            v28 = 0;
          }

          if (v12 == ++v13)
          {
            goto LABEL_23;
          }
        }

LABEL_42:
        fig_log_get_emitter();
        OUTLINED_FUNCTION_3_5();
        FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
      }
    }
  }

  else
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_3_5();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
  }

LABEL_43:
  v15 = v6;
  v16 = 0;
LABEL_24:
  if (v30[0])
  {
    CFRelease(v30[0]);
  }

  if (v24[0])
  {
    CFRelease(v24[0]);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (v28)
  {
    CFRelease(v28);
  }

  if (v15)
  {
LABEL_45:
    if (!v16)
    {
      return v15;
    }

    goto LABEL_40;
  }

  if (!v16 || (v17 = CFGetTypeID(v16), v17 != FigDataChannelConfigurationGetTypeID(v17, v18)))
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_3_5();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v24[0], LODWORD(v24[1]), v25);
    v15 = v23;
    goto LABEL_45;
  }

  v19 = xpc_dictionary_get_BOOL(a3, "Immediate");
  CMTime = FigXPCMessageGetCMTime();
  if (!CMTime)
  {
    *v24 = v26;
    v25 = v27;
    v21 = *(*(CMBaseObjectGetVTable() + 24) + 8);
    if (!v21)
    {
      v15 = 4294954514;
      goto LABEL_40;
    }

    *v30 = *v24;
    v31 = v25;
    CMTime = v21(a2, v16, v19, v30);
  }

  v15 = CMTime;
LABEL_40:
  CFRelease(v16);
  return v15;
}

void FigVideoReceiverConnectionHelperCopyBootstrapEndpoint_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FigVideoReceiverConnectionHelperCopyBootstrapEndpoint_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FigVideoReceiverConnectionHelperCopyBootstrapEndpoint_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FigVideoReceiverConnectionHelperCreate_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

uint64_t __connectionHelper_handleNewBootstrapConnection_block_invoke_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v4, v5, vars0);
  *a1 = v2;
  return FigSimpleMutexUnlock();
}

void __connectionHelper_handleNewBootstrapConnection_block_invoke_cold_4(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

BOOL __connectionHelper_handleNewBootstrapConnection_block_invoke_cold_5(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v4, v5, vars0);
  *a1 = v2;
  return v2 == 0;
}

void __connectionHelper_handleNewBootstrapConnection_block_invoke_cold_6(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void __connectionHelper_handleNewBootstrapConnection_block_invoke_cold_7(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void videoReceiverServer_releaseImageQueue_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void videoReceiverServer_setImageQueueMessage_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void videoReceiverServer_setImageQueueMessage_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

uint64_t FigVideoReceiverRemoteDisassociateAndDisposeObjectID(uint64_t a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (DerivedStorage)
  {
    v3 = DerivedStorage;
    if (*(DerivedStorage + 8))
    {
      FigXPCRemoteClientDisassociateObject();
      if (!*(v3 + 24))
      {
        v4 = FigXPCCreateBasicMessage();
        if (v4)
        {
          v5 = v4;
          goto LABEL_9;
        }

        if (*(CMBaseObjectGetDerivedStorage() + 25))
        {
          OUTLINED_FUNCTION_266();
          FigXPCRemoteClientSendAsyncMessage();
        }

        else
        {
          OUTLINED_FUNCTION_266();
          FigXPCRemoteClientSendSyncMessage();
        }
      }
    }
  }

  v5 = 0;
LABEL_9:
  FigXPCRelease();
  return v5;
}

void __FigVideoReceiverCreateRemoteAsync_block_invoke(uint64_t a1, _DWORD *a2)
{
  v5 = 0;
  if (*a2)
  {
    v3 = 0;
  }

  else
  {
    videoReceiverCreateRemoteCommon(*(a1 + 40), *(a1 + 48), a2, &v5);
    v3 = v5;
  }

  (*(*(a1 + 32) + 16))();
  v4 = *(a1 + 48);
  if (v4)
  {
    CFRelease(v4);
  }

  if (v3)
  {

    CFRelease(v3);
  }
}

int64_t vr_handleConnectionEstablishedResponseCommon(void *a1, uint64_t a2)
{
  BOOLean = 0;
  cf = 0;
  v17 = 0;
  v18 = 0;
  v15 = 0;
  v16 = 0;
  int64 = xpc_dictionary_get_int64(a1, *MEMORY[0x1E6961590]);
  if (int64)
  {
    goto LABEL_14;
  }

  uint64 = xpc_dictionary_get_uint64(a1, *MEMORY[0x1E69615A0]);
  if (!xpc_dictionary_get_value(a1, kFigVideoReceiverEndpoint) || MEMORY[0x19A8D7060]() != MEMORY[0x1E69E9E90] || (v6 = xpc_dictionary_get_uint64(a1, kFigVideoReceiverServerPID)) == 0 || (v7 = v6, (UInt32 = FigXPCMessageGetUInt32()) == 0))
  {
    OUTLINED_FUNCTION_39_4();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
LABEL_28:
    int64 = v10;
    goto LABEL_14;
  }

  v9 = UInt32;
  v10 = FigXPCMessageCopyCFString();
  if (v10)
  {
    goto LABEL_28;
  }

  v10 = FigXPCMessageCopyCFBoolean();
  if (v10)
  {
    goto LABEL_28;
  }

  v10 = FigXPCMessageCopyCFDictionary();
  if (v10)
  {
    goto LABEL_28;
  }

  v10 = FigDataChannelGroupsArrayCreateFromDictionary(*MEMORY[0x1E695E480], v18, &v17);
  if (v10)
  {
    goto LABEL_28;
  }

  v10 = FigXPCMessageCopyCFArray();
  if (v10)
  {
    goto LABEL_28;
  }

  v10 = FigVideoReceiverDataChannelSettingsCopyDeserialized(v16, &v15);
  if (v10)
  {
    goto LABEL_28;
  }

  int64 = FigXPCMessageCopyCFDictionary();
  if (!int64)
  {
    *(a2 + 8) = FigXPCRetain();
    *(a2 + 24) = v7;
    *(a2 + 32) = uint64;
    *(a2 + 40) = v9;
    v11 = cf;
    cf = 0;
    *(a2 + 80) = 0;
    v12 = v17;
    v17 = 0;
    v13 = v15;
    *(a2 + 48) = v12;
    *(a2 + 56) = v13;
    *(a2 + 64) = v11;
    *(a2 + 72) = 0;
    v15 = 0;
  }

LABEL_14:
  if (cf)
  {
    CFRelease(cf);
  }

  if (BOOLean)
  {
    CFRelease(BOOLean);
  }

  if (v16)
  {
    CFRelease(v16);
  }

  if (v15)
  {
    CFRelease(v15);
  }

  if (v18)
  {
    CFRelease(v18);
  }

  if (v17)
  {
    CFRelease(v17);
  }

  return int64;
}

uint64_t videoReceiverRemote_handleImageQueueSlotEvent(uint64_t a1, uint64_t a2)
{
  v27 = 0;
  OUTLINED_FUNCTION_3_141();
  ClientAndObjectID = videoReceiverRemote_GetClientAndObjectID(v3, v4, v5);
  if (ClientAndObjectID)
  {
    v2 = ClientAndObjectID;
  }

  else
  {
    OUTLINED_FUNCTION_23_39();
    v7 = FigXPCCreateBasicMessage();
    OUTLINED_FUNCTION_5_122(v7, v8, v9, v10, v11, v12, v13, v14, v25, 0, 0, 0);
    if (!v2)
    {
      FigXPCMessageSetUInt32();
      FigXPCMessageSetCFString();
      FigXPCMessageSetCFDictionary();
      v15 = FigXPCRemoteClientSendAsyncMessage();
      OUTLINED_FUNCTION_5_122(v15, v16, v17, v18, v19, v20, v21, v22, v26, v27, v28, v29);
    }
  }

  FigXPCRelease();
  if (v27)
  {
    OUTLINED_FUNCTION_22_13(v27, v23, "videoReceiverRemote_handleImageQueueSlotEvent");
  }

  return v2;
}

double videoReceiverRemote_CopyProperty(uint64_t a1, const void *a2, const __CFAllocator *a3, CVPixelBufferRef *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v22 = 0;
  v23 = 0;
  if (!a2 || !a4)
  {
    goto LABEL_40;
  }

  v9 = DerivedStorage;
  *a4 = 0;
  if (CFEqual(a2, @"LastSampledCVPixelBuffer"))
  {
    v10 = CMBaseObjectGetDerivedStorage();
    if (a1)
    {
      v11 = v10;
      FigSimpleMutexLock();
      v12 = *(v11 + 40);
      if (v12)
      {
        v13 = CFRetain(v12);
        FigSimpleMutexUnlock();
        if (v13)
        {
          FigVideoReceiverCommonCopyLastSampledPixelBufferFromConfiguration(v13, a3, a4);
          CFRelease(v13);
        }

        return result;
      }

LABEL_10:
      FigSimpleMutexUnlock();
      return result;
    }

    goto LABEL_40;
  }

  if (CFEqual(a2, @"LoggingIdentifier"))
  {
    SInt32 = CFStringCreateWithCString(a3, (v9 + 160), 0x600u);
LABEL_16:
    *a4 = SInt32;
    return result;
  }

  if (CFEqual(a2, @"RequiresCPUToReadVideo"))
  {
    v16 = MEMORY[0x1E695E4D0];
    if (!*(v9 + 26))
    {
      v16 = MEMORY[0x1E695E4C0];
    }

    SInt32 = CFRetain(*v16);
    goto LABEL_16;
  }

  if (CFEqual(a2, @"RefreshRate"))
  {
    FigSimpleMutexLock();
    v17 = *(v9 + 80);
    if (!v17)
    {
LABEL_21:
      *a4 = v17;
      goto LABEL_10;
    }

LABEL_20:
    v17 = CFRetain(v17);
    goto LABEL_21;
  }

  if (CFEqual(a2, @"DesiredPixelCount"))
  {
    FigSimpleMutexLock();
    v17 = *(v9 + 88);
    if (!v17)
    {
      goto LABEL_21;
    }

    goto LABEL_20;
  }

  if (CFEqual(a2, @"PlaybackStartupPreventionAssertionInfo"))
  {
    Mutable = CFDictionaryCreateMutable(a3, 2, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    if (Mutable)
    {
      v19 = Mutable;
      FigSimpleMutexLock();
      FigCFDictionarySetBoolean();
      FigCFDictionarySetValue();
      FigSimpleMutexUnlock();
      *a4 = v19;
      return result;
    }

    goto LABEL_40;
  }

  if (CFEqual(a2, @"ClientPreferredDataChannelGroups"))
  {
    FigSimpleMutexLock();
    v17 = *(v9 + 96);
    if (!v17)
    {
      goto LABEL_21;
    }

    goto LABEL_20;
  }

  if (CFEqual(a2, @"ClientDataChannelSettings"))
  {
    FigSimpleMutexLock();
    v17 = *(v9 + 104);
    if (!v17)
    {
      goto LABEL_21;
    }

    goto LABEL_20;
  }

  if (CFEqual(a2, @"ResponsibleProcessID"))
  {
    SInt32 = FigCFNumberCreateSInt32();
    goto LABEL_16;
  }

  if (*(v9 + 25))
  {
LABEL_40:
    OUTLINED_FUNCTION_243();

    return FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
  }

  ClientAndObjectID = videoReceiverRemote_GetClientAndObjectID(a1, &v22, &v23);
  v21 = v22;
  if (!ClientAndObjectID)
  {
    FigXPCSendStdCopyPropertyMessage();
    v21 = v22;
  }

  if (v21)
  {
    FigXPCRemoteClientKillServerOnTimeout();
  }

  return result;
}

uint64_t videoReceiverForCALayerRemote_InformRendererThatContentsChanged()
{
  OUTLINED_FUNCTION_3_141();
  ClientAndObjectID = videoReceiverRemote_GetClientAndObjectID(v0, v1, v2);
  if (ClientAndObjectID)
  {
    v5 = ClientAndObjectID;
  }

  else
  {
    OUTLINED_FUNCTION_23_39();
    v4 = FigXPCCreateBasicMessage();
    if (v4)
    {
      v5 = v4;
    }

    else
    {
      v5 = FigXPCRemoteClientSendAsyncMessage();
    }
  }

  FigXPCRelease();
  return v5;
}

uint64_t videoReceiverForCALayerRemote_UpdateDurationWithDeferredTransaction(uint64_t a1, __int128 *a2)
{
  v10[1] = 0;
  v9 = 0;
  v10[0] = 0;
  if (!a1)
  {
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v6, v7, v8);
    goto LABEL_9;
  }

  ClientAndObjectID = videoReceiverRemote_GetClientAndObjectID(a1, &v9, v10);
  if (ClientAndObjectID)
  {
LABEL_9:
    v4 = ClientAndObjectID;
    goto LABEL_6;
  }

  v3 = FigXPCCreateBasicMessage();
  if (v3 || (v3 = FigXPCMessageSetCMTime(), v3))
  {
    v4 = v3;
  }

  else
  {
    v4 = FigXPCRemoteClientSendAsyncMessage();
  }

LABEL_6:
  FigXPCRelease();
  FigXPCRemoteClientKillServerOnTimeout();
  return v4;
}

uint64_t videoReceiverForBufferDeliveryRemote_CreateImageQueueReceiver(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (a2)
  {
    if (a4)
    {
      OUTLINED_FUNCTION_3_141();
      ClientAndObjectID = videoReceiverRemote_GetClientAndObjectID(v8, v9, v10);
      if (!ClientAndObjectID)
      {
        OUTLINED_FUNCTION_23_39();
        ClientAndObjectID = FigXPCCreateBasicMessage();
        if (!ClientAndObjectID)
        {
          xpc_dictionary_set_uint64(0, "ImageQueueID", a2);
          ClientAndObjectID = FigXPCMessageSetCFDictionary();
          if (!ClientAndObjectID)
          {
            xpc_dictionary_set_value(0, "ImageQueueMessage", a4);
            if (*(OUTLINED_FUNCTION_4_137() + 25))
            {
              OUTLINED_FUNCTION_266();
              ClientAndObjectID = FigXPCRemoteClientSendAsyncMessage();
            }

            else
            {
              OUTLINED_FUNCTION_266();
              ClientAndObjectID = FigXPCRemoteClientSendSyncMessage();
            }
          }
        }
      }
    }

    else
    {
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1ED4CBE88, 4294951724, "<< FigVideoReceiverRemoteXPC >>", 835, v5);
    }
  }

  else
  {
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1ED4CBE88, 4294951724, "<< FigVideoReceiverRemoteXPC >>", 834, v5);
  }

  OUTLINED_FUNCTION_5_122(ClientAndObjectID, v12, v13, v14, v15, v16, v17, v18, v21, 0, 0, 0);
  FigXPCRelease();
  if (v22)
  {
    OUTLINED_FUNCTION_22_13(v22, v19, "videoReceiverForBufferDeliveryRemote_CreateImageQueueReceiver");
  }

  return v4;
}

uint64_t videoReceiverForBufferDeliveryRemote_ReleaseImageQueueReceiver(uint64_t a1, uint64_t a2)
{
  v11 = 0;
  if (a2)
  {
    OUTLINED_FUNCTION_3_141();
    ClientAndObjectID = videoReceiverRemote_GetClientAndObjectID(v3, v4, v5);
    if (!ClientAndObjectID)
    {
      OUTLINED_FUNCTION_23_39();
      ClientAndObjectID = FigXPCCreateBasicMessage();
      if (!ClientAndObjectID)
      {
        xpc_dictionary_set_uint64(0, "ImageQueueID", a2);
        if (*(OUTLINED_FUNCTION_4_137() + 25))
        {
          OUTLINED_FUNCTION_266();
          ClientAndObjectID = FigXPCRemoteClientSendAsyncMessage();
        }

        else
        {
          OUTLINED_FUNCTION_266();
          ClientAndObjectID = FigXPCRemoteClientSendSyncMessage();
        }
      }
    }
  }

  else
  {
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v10, 0, 0);
  }

  v7 = ClientAndObjectID;
  FigXPCRelease();
  if (v11)
  {
    OUTLINED_FUNCTION_6_18(v11, v8, "videoReceiverForBufferDeliveryRemote_ReleaseImageQueueReceiver");
  }

  return v7;
}

uint64_t videoReceiverForBufferDeliveryRemote_SetImageQueueMessage(uint64_t a1, uint64_t a2, void *a3)
{
  if (a2)
  {
    if (a3)
    {
      CAXPCImageQueueCommandForMessage();
      OUTLINED_FUNCTION_3_141();
      ClientAndObjectID = videoReceiverRemote_GetClientAndObjectID(a1, v8, v9);
      if (!ClientAndObjectID)
      {
        OUTLINED_FUNCTION_23_39();
        ClientAndObjectID = FigXPCCreateBasicMessage();
        if (!ClientAndObjectID)
        {
          xpc_dictionary_set_uint64(0, "ImageQueueID", a2);
          xpc_dictionary_set_value(0, "ImageQueueMessage", a3);
          if (*(OUTLINED_FUNCTION_4_137() + 25))
          {
            OUTLINED_FUNCTION_266();
            ClientAndObjectID = FigXPCRemoteClientSendAsyncMessage();
          }

          else
          {
            OUTLINED_FUNCTION_266();
            ClientAndObjectID = FigXPCRemoteClientSendSyncMessage();
          }
        }
      }
    }

    else
    {
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1ED4CBE88, 4294951724, "<< FigVideoReceiverRemoteXPC >>", 911, v4);
    }
  }

  else
  {
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1ED4CBE88, 4294951724, "<< FigVideoReceiverRemoteXPC >>", 910, v4);
  }

  OUTLINED_FUNCTION_5_122(ClientAndObjectID, v11, v12, v13, v14, v15, v16, v17, v20, 0, 0, 0);
  FigXPCRelease();
  if (v21)
  {
    OUTLINED_FUNCTION_22_13(v21, v18, "videoReceiverForBufferDeliveryRemote_SetImageQueueMessage");
  }

  return v3;
}

uint64_t videoReceiverForBufferDeliveryRemote_CreateDataQueue(const void *a1, uint64_t a2, uint64_t a3, CMTime *a4, CFTypeRef *a5)
{
  v21 = 0;
  v19 = 0;
  xdict = 0;
  v18 = 0;
  v17 = 0;
  if (a5)
  {
    ClientAndObjectID = videoReceiverRemote_GetClientAndObjectID(a1, &v19, &v18);
    if (!ClientAndObjectID)
    {
      ClientAndObjectID = FigXPCRemoteClientGetServerPID();
      if (!ClientAndObjectID)
      {
        v10 = CFGetAllocator(a1);
        ClientAndObjectID = FigDataQueueRemoteSetupRemoteXPCClientIfNecessary(v10, v17, videoReceiverRemote_startDataQueueServerAndCreateEndpoint, a1);
        if (!ClientAndObjectID)
        {
          ClientAndObjectID = FigXPCCreateBasicMessage();
          if (!ClientAndObjectID)
          {
            ClientAndObjectID = FigXPCMessageSetCFDictionary();
            if (!ClientAndObjectID)
            {
              OUTLINED_FUNCTION_21_23();
              ClientAndObjectID = FigXPCMessageSetCMTime();
              if (!ClientAndObjectID)
              {
                v16 = *a4;
                ClientAndObjectID = FigXPCMessageSetCMTime();
                if (!ClientAndObjectID)
                {
                  ClientAndObjectID = FigXPCRemoteClientSendSyncMessageCreatingReply();
                  if (!ClientAndObjectID)
                  {
                    uint64 = xpc_dictionary_get_uint64(xdict, *MEMORY[0x1E69615A0]);
                    CFGetAllocator(a1);
                    OUTLINED_FUNCTION_21_23();
                    v15 = *a4;
                    ClientAndObjectID = FigDataQueueRemoteCreateWithObjectID(v17, uint64, v12, a2, &v16, &v15, a5);
                  }
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
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v15.value, v15.timescale, LODWORD(v15.epoch));
  }

  v13 = ClientAndObjectID;
  FigXPCRelease();
  FigXPCRelease();
  if (v19)
  {
    FigXPCRemoteClientKillServerOnTimeout();
  }

  return v13;
}

uint64_t videoReceiverForBufferDeliveryRemote_CreateDataChannelResource(uint64_t a1, uint64_t a2, const void *a3, CFTypeRef *a4)
{
  xdict = 0;
  v18 = 0;
  v15 = 0;
  v16 = 0;
  cf = 0;
  CMBaseObjectGetDerivedStorage();
  if (!a4)
  {
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v13, cf, v15);
LABEL_20:
    v11 = ClientAndObjectID;
    a3 = 0;
    goto LABEL_12;
  }

  ClientAndObjectID = videoReceiverRemote_GetClientAndObjectID(a1, &v16, &v15);
  if (ClientAndObjectID)
  {
    goto LABEL_20;
  }

  ClientAndObjectID = FigXPCCreateBasicMessage();
  if (ClientAndObjectID)
  {
    goto LABEL_20;
  }

  ClientAndObjectID = FigXPCMessageSetCFDictionary();
  if (ClientAndObjectID)
  {
    goto LABEL_20;
  }

  if (a3)
  {
    a3 = MEMORY[0x19A8D3280](a3, *MEMORY[0x1E695E480]);
    if (a3)
    {
      v9 = FigXPCMessageSetCFDictionary();
      if (!v9)
      {
        goto LABEL_8;
      }
    }

    else
    {
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v13, cf, v15);
    }

LABEL_22:
    v11 = v9;
    goto LABEL_12;
  }

LABEL_8:
  v9 = FigXPCRemoteClientSendSyncMessageCreatingReply();
  if (v9)
  {
    goto LABEL_22;
  }

  uint64 = xpc_dictionary_get_uint64(xdict, *MEMORY[0x1E69615A0]);
  v9 = FigDataChannelResourceRemoteCreate(0, a2, uint64, a1, &cf);
  if (v9)
  {
    goto LABEL_22;
  }

  v11 = FigXPCRemoteClientAssociateObject();
  if (!v11)
  {
    FigCFArrayAppendInt64();
    *a4 = cf;
    cf = 0;
  }

LABEL_12:
  FigXPCRelease();
  FigXPCRelease();
  if (cf)
  {
    CFRelease(cf);
  }

  if (a3)
  {
    CFRelease(a3);
  }

  if (v16)
  {
    FigXPCRemoteClientKillServerOnTimeout();
  }

  return v11;
}

uint64_t videoReceiverForBufferDeliveryRemote_ProvideDataChannelResourcePayload(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v11 = 0;
  xdict = 0;
  CMBaseObjectGetDerivedStorage();
  v10 = 0;
  ClientAndObjectID = videoReceiverRemote_GetClientAndObjectID(a1, &v11, &v10);
  if (ClientAndObjectID)
  {
    v7 = ClientAndObjectID;
  }

  else
  {
    v6 = FigXPCCreateBasicMessage();
    if (v6 || (xpc_dictionary_set_uint64(xdict, "DataChannelResourceID", a2), v6 = FigXPCMessageSetBlockBufferUsingMemoryOrigin(), v6))
    {
      v7 = v6;
    }

    else
    {
      v7 = FigXPCRemoteClientSendSyncMessage();
    }
  }

  FigXPCRelease();
  if (v11)
  {
    OUTLINED_FUNCTION_6_18(v11, v8, "videoReceiverForBufferDeliveryRemote_ProvideDataChannelResourcePayload");
  }

  return v7;
}

uint64_t videoReceiverForBufferDeliveryRemote_SetDataChannelResourcePayloadState(uint64_t a1, uint64_t a2)
{
  v8 = 0;
  xdict = 0;
  v7 = 0;
  ClientAndObjectID = videoReceiverRemote_GetClientAndObjectID(a1, &v8, &v7);
  if (ClientAndObjectID)
  {
    v4 = ClientAndObjectID;
  }

  else
  {
    v4 = FigXPCCreateBasicMessage();
    if (!v4)
    {
      xpc_dictionary_set_uint64(xdict, "DataChannelResourceID", a2);
      FigXPCMessageSetInt32();
      v4 = FigXPCRemoteClientSendSyncMessage();
    }
  }

  FigXPCRelease();
  if (v8)
  {
    OUTLINED_FUNCTION_6_18(v8, v5, "videoReceiverForBufferDeliveryRemote_SetDataChannelResourcePayloadState");
  }

  return v4;
}

uint64_t videoReceiverForBufferDeliveryRemote_GetDataChannelResourceProcessingState(uint64_t a1, uint64_t a2, _DWORD *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = OUTLINED_FUNCTION_8_79(a1, a2, a3, a4, a5, a6, a7, a8, v14, v15, v17, xdict);
  if (v10 || (v10 = FigXPCCreateBasicMessage(), v10))
  {
    v11 = v10;
  }

  else
  {
    xpc_dictionary_set_uint64(xdicta, "DataChannelResourceID", a2);
    v11 = FigXPCRemoteClientSendSyncMessageCreatingReply();
    if (!v11)
    {
      *a3 = xpc_dictionary_get_int64(v18, "DataChannelResourceProcessingState");
    }
  }

  FigXPCRelease();
  FigXPCRelease();
  if (v16)
  {
    OUTLINED_FUNCTION_6_18(v16, v12, "videoReceiverForBufferDeliveryRemote_GetDataChannelResourceProcessingState");
  }

  return v11;
}

uint64_t videoReceiverRemote_startDataQueueServerAndCreateEndpoint(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = OUTLINED_FUNCTION_8_79(a1, a2, a3, a4, a5, a6, a7, a8, v14, v15, xdict, v19);
  if (!v10)
  {
    v10 = FigXPCCreateBasicMessage();
    if (!v10)
    {
      v10 = FigXPCRemoteClientSendSyncMessageCreatingReply();
      if (!v10)
      {
        if (xpc_dictionary_get_value(xdicta, "Endpoint"))
        {
          if (MEMORY[0x19A8D7060]() == MEMORY[0x1E69E9E90])
          {
            v11 = 0;
            *a2 = FigXPCRetain();
            goto LABEL_7;
          }

          FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1ED4CBE88, 4294951502, "<< FigVideoReceiverRemoteXPC >>", 961, v8);
        }

        else
        {
          FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1ED4CBE88, 4294951502, "<< FigVideoReceiverRemoteXPC >>", 960, v8);
        }
      }
    }
  }

  v11 = v10;
LABEL_7:
  FigXPCRelease();
  FigXPCRelease();
  if (v16)
  {
    OUTLINED_FUNCTION_22_13(v16, v12, "videoReceiverRemote_startDataQueueServerAndCreateEndpoint");
  }

  return v11;
}

uint64_t remoteVideoReceiver_NotificationFilter_cold_3(uint64_t a1, void *a2)
{
  FigSimpleMutexLock();
  v4 = *(a1 + 96);
  if (v4)
  {
    CFRelease(v4);
  }

  *(a1 + 96) = *a2;
  *a2 = 0;
  return FigSimpleMutexUnlock();
}

uint64_t remoteVideoReceiver_NotificationFilter_cold_5(uint64_t a1, void *a2)
{
  FigSimpleMutexLock();
  v4 = *(a1 + 104);
  if (v4)
  {
    CFRelease(v4);
  }

  *(a1 + 104) = *a2;
  *a2 = 0;
  return FigSimpleMutexUnlock();
}

uint64_t figTTMLDocumentWriterForIMSC_StartElement(void *a1, uint64_t a2)
{
  FigTTMLDocumentWriterGetCMBaseObject();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  CurrentElementType = FigTTMLDocumentWriterStateGetCurrentElementType(DerivedStorage[1]);
  started = FigTTMLDocumentWriterStateStartTagClosed(DerivedStorage[1]);
  if (CurrentElementType)
  {
    if (CurrentElementType == 7 && started == 0)
    {
      FigTTMLDocumentWriterGetCMBaseObject();
      v8 = CMBaseObjectGetDerivedStorage();
      Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      CFDictionaryAddValue(Mutable, @"http://www.w3.org/ns/ttml#parameter profile", @"http://www.w3.org/ns/ttml/profile/imsc1/text");
      CFDictionaryAddValue(Mutable, @"http://www.w3.org/ns/ttml#parameter timeBase", @"media");
      *(v8 + 24) = 0;
      CFDictionaryApplyFunction(Mutable, writeAttributesIfNotWrittenYet, a1);
      v10 = *(v8 + 24);
      if (Mutable)
      {
        CFRelease(Mutable);
      }

      if (v10)
      {
        return v10;
      }
    }

    FigTTMLDocumentWriterStateCloseStartTag(DerivedStorage[1]);
  }

  v11 = FigTTMLDocumentWriterStartElement(*DerivedStorage, a2);
  if (v11)
  {
    return v11;
  }

  v12 = DerivedStorage[1];

  return FigTTMLDocumentWriterStateStartElement(v12, a2);
}

uint64_t figTTMLDocumentWriterForIMSC_EndElement()
{
  FigTTMLDocumentWriterGetCMBaseObject();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  result = FigTTMLDocumentWriterEndElement(*DerivedStorage);
  if (!result)
  {
    v2 = DerivedStorage[1];

    return FigTTMLDocumentWriterStateEndElement(v2);
  }

  return result;
}

uint64_t figTTMLDocumentWriterForIMSC_AddCaptionData(uint64_t a1, uint64_t a2)
{
  FigTTMLDocumentWriterGetCMBaseObject();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  result = FigTTMLDocumentWriterStateCloseStartTag(DerivedStorage[1]);
  if (!result)
  {
    v5 = *DerivedStorage;

    return FigTTMLDocumentWriterAddCaptionData(v5, a2);
  }

  return result;
}

uint64_t figTTMLDocumentWriterForIMSC_SetAttribute(uint64_t a1, const __CFString *a2, const void *a3)
{
  FigTTMLDocumentWriterGetCMBaseObject();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  MEMORY[0x19A8D3660](&getAttributeValidatorDict_sOnce_0, initAttributeValidatorDict_0);
  v7 = sAttributeValidatorDict_0;
  if (CFDictionaryContainsKey(sAttributeValidatorDict_0, a2))
  {
    Value = CFDictionaryGetValue(v7, a2);
    if (Value)
    {
      result = Value(a1, a3);
      if (!result)
      {
        return result;
      }
    }
  }

  else
  {
    result = CFStringHasPrefix(a2, @"xmlns:");
    if (!result)
    {
      return result;
    }
  }

  result = FigTTMLDocumentWriterSetAttribute(*DerivedStorage, a2, a3);
  if (!result)
  {
    v10 = DerivedStorage[1];

    return FigTTMLDocumentWriterStateSetAttribute(v10, a2, a3);
  }

  return result;
}

uint64_t writeAttributesIfNotWrittenYet(const void *a1, uint64_t a2, uint64_t a3)
{
  FigTTMLDocumentWriterGetCMBaseObject();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  result = FigTTMLDocumentWriterStateGetAttributes(*(DerivedStorage + 8));
  if (!*(DerivedStorage + 24))
  {
    result = CFDictionaryContainsKey(result, a1);
    if (!result)
    {
      result = FigTTMLDocumentWriterSetAttribute(a3, a1, a2);
      if (result)
      {
        *(DerivedStorage + 24) = result;
      }
    }
  }

  return result;
}

uint64_t EC_GetEncryptionScheme(uint64_t a1, _DWORD *a2)
{
  result = 4294951916;
  if (a1)
  {
    if (a2)
    {
      result = 0;
      *a2 = *(a1 + 16);
    }
  }

  return result;
}

void *EC_HasWidevineInfo(uint64_t a1)
{
  result = ec_GetEncryptionRange(a1, *(a1 + 40));
  if (result)
  {
    return OUTLINED_FUNCTION_5_123(result[9]);
  }

  return result;
}

void *EC_HasPlayReadyInfo(uint64_t a1)
{
  result = ec_GetEncryptionRange(a1, *(a1 + 40));
  if (result)
  {
    return OUTLINED_FUNCTION_5_123(result[8]);
  }

  return result;
}

void *EC_HasLegacyConfigInfo(void *result)
{
  if (result)
  {
    result = ec_GetEncryptionRange(result, result[5]);
    if (result)
    {
      return OUTLINED_FUNCTION_5_123(result[6]);
    }
  }

  return result;
}

void *EC_GetLegacyConfigKeyIdentifier(void *result)
{
  if (result)
  {
    result = ec_GetEncryptionRange(result, result[5]);
    if (result)
    {
      v1 = result[6];
      if (v1)
      {
        return *v1;
      }

      else
      {
        return 0;
      }
    }
  }

  return result;
}

const void *ec_GetEncryptionRange(uint64_t a1, CFIndex a2)
{
  if (!a1)
  {
    return 0;
  }

  v3 = *(a1 + 32);
  if (!v3 || CFArrayGetCount(v3) <= a2)
  {
    return 0;
  }

  v5 = *(a1 + 32);

  return CFArrayGetValueAtIndex(v5, a2);
}

void *EC_GetPlayReadyKeyIdentifierForRange(void *result, CFIndex a2)
{
  if (result)
  {
    result = ec_GetEncryptionRange(result, a2);
    if (result)
    {
      v2 = result[8];
      if (v2)
      {
        return *v2;
      }

      else
      {
        return 0;
      }
    }
  }

  return result;
}

void *EC_GetPlayReadyKeyIdentifier(uint64_t a1)
{
  result = ec_GetEncryptionRange(a1, *(a1 + 40));
  if (result)
  {
    v2 = result[8];
    if (v2)
    {
      return *v2;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void *EC_ShouldWritePlayReadyPSSHAtom(void *result)
{
  if (result)
  {
    result = ec_GetEncryptionRange(result, result[5]);
    if (result)
    {
      v1 = result[8];
      if (v1)
      {
        return *(v1 + 16);
      }

      else
      {
        return 0;
      }
    }
  }

  return result;
}

void *EC_GetWidevineKeyIdentifierForRange(void *result, CFIndex a2)
{
  if (result)
  {
    result = ec_GetEncryptionRange(result, a2);
    if (result)
    {
      v2 = result[9];
      if (v2)
      {
        return *v2;
      }

      else
      {
        return 0;
      }
    }
  }

  return result;
}

void *EC_GetWidevineKeyIdentifier(uint64_t a1)
{
  result = ec_GetEncryptionRange(a1, *(a1 + 40));
  if (result)
  {
    v2 = result[9];
    if (v2)
    {
      return *v2;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void *EC_ShouldWriteWidevinePSSHAtom(void *result)
{
  if (result)
  {
    result = ec_GetEncryptionRange(result, result[5]);
    if (result)
    {
      v1 = result[9];
      if (v1)
      {
        return *(v1 + 16);
      }

      else
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t EncryptionConfigCreateFromDictionary(uint64_t a1, uint64_t a2, void *a3)
{
  v9 = 0;
  cf = 0;
  v3 = 4294951916;
  v8 = 0;
  if (a1 && a3)
  {
    v4 = FigJSONObjectCreateWithData();
    if (!v4)
    {
      v5 = CFGetTypeID(cf);
      if (v5 == CFDictionaryGetTypeID())
      {
        LODWORD(v11) = 0;
        FigCFDictionaryGetInt32IfPresent();
        OUTLINED_FUNCTION_303();
        FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
      }

      else
      {
        OUTLINED_FUNCTION_303();
        OUTLINED_FUNCTION_3_142();
        FigSignalErrorAtGM(v6);
      }
    }

    v3 = v4;
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (v9)
  {
    CFRelease(v9);
  }

  return v3;
}

uint64_t ec_AddEncryptionRangeFromDictionary(uint64_t a1, const void *a2)
{
  cf = 0;
  value = 0;
  v2 = 4294951916;
  if (!a1 || !a2)
  {
    goto LABEL_54;
  }

  ec_EncryptionRangeCreate(&value);
  if (HexDataFromDictionaryEntry)
  {
    goto LABEL_63;
  }

  FigCFDictionaryGetBooleanIfPresent();
  HexDataFromDictionaryEntry = ec_CreateHexDataFromDictionaryEntry(a2, @"initialization-vector", &cf);
  if (HexDataFromDictionaryEntry)
  {
    goto LABEL_63;
  }

  if (cf)
  {
    v6 = CFRetain(cf);
    *(value + 3) = v6;
    if (cf)
    {
      CFRelease(cf);
      cf = 0;
    }
  }

  FigCFDictionaryGetBooleanIfPresent();
  HexDataFromDictionaryEntry = ec_CreateHexDataFromDictionaryEntry(a2, @"key", &cf);
  if (HexDataFromDictionaryEntry)
  {
    goto LABEL_63;
  }

  if (cf)
  {
    v7 = CFRetain(cf);
    *(value + 5) = v7;
    if (cf)
    {
      CFRelease(cf);
      cf = 0;
    }
  }

  v8 = value;
  v46 = 0;
  ec_GetProtectionSystemInfo(a2, @"fairplay", &v46);
  if (HexDataFromDictionaryEntry)
  {
    goto LABEL_63;
  }

  if (v46)
  {
    v9 = OUTLINED_FUNCTION_2_169();
    if (v9)
    {
      v10 = v9;
      v11 = FigCFDictionaryGetValue();
      if (v11)
      {
        v11 = CFRetain(v11);
      }

      *v10 = v11;
      v8[7] = v10;
    }

    else
    {
      OUTLINED_FUNCTION_303();
      OUTLINED_FUNCTION_4_138();
      FigSignalErrorAtGM(v36);
      if (HexDataFromDictionaryEntry)
      {
        goto LABEL_63;
      }
    }
  }

  v12 = value;
  v45 = 0;
  v46 = 0;
  ec_GetProtectionSystemInfo(a2, @"playready", &v46);
  if (HexDataFromDictionaryEntry)
  {
LABEL_63:
    v2 = HexDataFromDictionaryEntry;
    goto LABEL_54;
  }

  if (v46)
  {
    v13 = malloc_type_calloc(1uLL, 0x18uLL, 0x1060040285832E9uLL);
    if (v13)
    {
      v14 = v13;
      v15 = ec_CreateHexDataFromDictionaryEntry(v46, @"key-identifier", v13);
      if (!v15)
      {
        if (*v14 && CFDataGetLength(*v14) == 16)
        {
          v16 = FigCFDictionaryGetValue();
          if (v16)
          {
            v17 = v16;
            if (CFStringGetLength(v16) < 1 || (Length = CFStringGetLength(v17), CFStringGetCharacterAtIndex(v17, Length - 1) == 59))
            {
              MutableCopy = CFRetain(v17);
            }

            else
            {
              MutableCopy = CFStringCreateMutableCopy(0, 0, v17);
              CFStringAppend(MutableCopy, @";");
            }

            v14[1] = MutableCopy;
          }

          if (!FigCFDictionaryGetValueIfPresent())
          {
            v21 = 1;
            goto LABEL_33;
          }

          v20 = CFGetTypeID(v45);
          if (v20 == CFBooleanGetTypeID())
          {
            v21 = CFBooleanGetValue(v45) == 0;
LABEL_33:
            *(v14 + 16) = v21;
            v12[8] = v14;
            goto LABEL_34;
          }

          OUTLINED_FUNCTION_303();
          OUTLINED_FUNCTION_3_142();
        }

        else
        {
          OUTLINED_FUNCTION_303();
          OUTLINED_FUNCTION_9_70();
        }

        FigSignalErrorAtGM(v41, cf);
      }

      v2 = v15;
      free(v14);
    }

    else
    {
      OUTLINED_FUNCTION_303();
      OUTLINED_FUNCTION_4_138();
      FigSignalErrorAtGM(v37);
      v2 = v38;
    }

    if (v2)
    {
      goto LABEL_54;
    }
  }

LABEL_34:
  v22 = value;
  v45 = 0;
  v46 = 0;
  ec_GetProtectionSystemInfo(a2, @"widevine", &v46);
  if (HexDataFromDictionaryEntry)
  {
    goto LABEL_63;
  }

  if (!v46)
  {
    goto LABEL_50;
  }

  v23 = malloc_type_calloc(1uLL, 0x18uLL, 0x1060040285832E9uLL);
  if (!v23)
  {
    OUTLINED_FUNCTION_303();
    OUTLINED_FUNCTION_4_138();
    FigSignalErrorAtGM(v39);
    v2 = v40;
    goto LABEL_82;
  }

  v24 = v23;
  v25 = ec_CreateHexDataFromDictionaryEntry(v46, @"key-identifier", v23);
  if (v25)
  {
LABEL_81:
    v2 = v25;
    free(v24);
LABEL_82:
    if (v2)
    {
      goto LABEL_54;
    }

    goto LABEL_50;
  }

  if (!*v24 || CFDataGetLength(*v24) != 16)
  {
    OUTLINED_FUNCTION_303();
    OUTLINED_FUNCTION_9_70();
LABEL_80:
    FigSignalErrorAtGM(v42, cf);
    goto LABEL_81;
  }

  v26 = FigCFDictionaryGetValue();
  if (v26)
  {
    v27 = v26;
    if (CFStringGetLength(v26) < 1 || (v28 = CFStringGetLength(v27), CFStringGetCharacterAtIndex(v27, v28 - 1) == 59))
    {
      v29 = CFRetain(v27);
    }

    else
    {
      v29 = CFStringCreateMutableCopy(0, 0, v27);
      CFStringAppend(v29, @";");
    }

    v24[1] = v29;
  }

  if (!FigCFDictionaryGetValueIfPresent())
  {
    v31 = 1;
    goto LABEL_49;
  }

  v30 = CFGetTypeID(v45);
  if (v30 != CFBooleanGetTypeID())
  {
    OUTLINED_FUNCTION_303();
    OUTLINED_FUNCTION_3_142();
    goto LABEL_80;
  }

  v31 = CFBooleanGetValue(v45) == 0;
LABEL_49:
  *(v24 + 16) = v31;
  v22[9] = v24;
LABEL_50:
  FigCFDictionaryGetInt64IfPresent();
  CFArrayAppendValue(*(a1 + 32), value);
  v32 = OUTLINED_FUNCTION_7_94();
  if (v32)
  {
    if (v32[8])
    {
      v34 = OUTLINED_FUNCTION_7_94();
      if (v34)
      {
        if (v34[9])
        {
          OUTLINED_FUNCTION_7_94();
          OUTLINED_FUNCTION_7_94();
          if (!FigCFEqual())
          {
            OUTLINED_FUNCTION_303();
            OUTLINED_FUNCTION_9_70();
            FigSignalErrorAtGM(v35);
            goto LABEL_63;
          }
        }
      }
    }
  }

  v2 = 0;
  if (CFArrayGetCount(*(a1 + 32)) == 1)
  {
    *(a1 + 40) = 0;
  }

LABEL_54:
  if (value)
  {
    CFRelease(value);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  return v2;
}

double ec_EncryptionRangeCreate(uint64_t *a1)
{
  if (a1)
  {
    if (_MergedGlobals_127 != -1)
    {
      dispatch_once_f(&_MergedGlobals_127, 0, RegisterEncryptionRangeType);
    }

    Instance = _CFRuntimeCreateInstance();
    if (Instance)
    {
      *(Instance + 16) = 1;
      *(Instance + 24) = 0;
      *(Instance + 32) = 0;
      result = 0.0;
      *(Instance + 40) = 0u;
      *(Instance + 56) = 0u;
      *(Instance + 72) = 0u;
      *a1 = Instance;
    }

    else
    {
      OUTLINED_FUNCTION_303();

      return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", 0, 4294954510, "(Fig)", 648);
    }
  }

  return result;
}

uint64_t ec_CreateHexDataFromDictionaryEntry(const void *a1, uint64_t a2, __CFData **a3)
{
  theString = 0;
  result = 4294951916;
  if (a1 && a3)
  {
    if (ec_CFDictionaryGetStringIfPresent(a1, a2, &theString))
    {
      __str[2] = 0;
      if (!theString)
      {
        return 4294951916;
      }

      v6 = *MEMORY[0x1E695E480];
      MutableCopy = CFStringCreateMutableCopy(*MEMORY[0x1E695E480], 0, theString);
      if (!MutableCopy)
      {
        return 4294954510;
      }

      v8 = MutableCopy;
      bytes = 0;
      CFStringLowercase(MutableCopy, 0);
      v16.length = CFStringGetLength(v8);
      v16.location = 0;
      CFStringFindAndReplace(v8, @" ", &stru_1F0B1AFB8, v16, 0);
      Mutable = CFDataCreateMutable(v6, 0);
      Length = CFStringGetLength(v8);
      if (Length >= 2)
      {
        v11 = 1;
        v12 = Length / 2;
        do
        {
          __str[0] = CFStringGetCharacterAtIndex(v8, v11 - 1);
          __str[1] = CFStringGetCharacterAtIndex(v8, v11);
          bytes = strtol(__str, 0, 16);
          CFDataAppendBytes(Mutable, &bytes, 1);
          v11 += 2;
          --v12;
        }

        while (v12);
      }

      CFRelease(v8);
    }

    else
    {
      Mutable = 0;
    }

    result = 0;
    *a3 = Mutable;
  }

  return result;
}

double ec_GetProtectionSystemInfo(uint64_t a1, uint64_t a2, CFTypeRef *a3)
{
  if (a1 && a2 && a3)
  {
    if (FigCFDictionaryGetValueIfPresent() && (v4 = CFGetTypeID(0), v4 == CFDictionaryGetTypeID()) && (!FigCFDictionaryGetValueIfPresent() || (v6 = CFGetTypeID(0), v6 == CFDictionaryGetTypeID())))
    {
      *a3 = 0;
    }

    else
    {
      OUTLINED_FUNCTION_3_142();
      return FigSignalErrorAtGM(v7);
    }
  }

  return result;
}

uint64_t FigManifoldFactoryCreateManifold(int a1, int a2, int a3, int a4, int a5, uint64_t a6, uint64_t a7, uint64_t a8, CFArrayRef theArray, uint64_t a10, uint64_t a11, void *a12)
{
  if (!a10)
  {
    v52 = v12;
    v53 = 149;
    goto LABEL_28;
  }

  if (a10)
  {
    v16 = OUTLINED_FUNCTION_0_192();
    v18 = v17;
    manifoldFactory_createManifold(v16, v19, v20, v21, v22, v23, a7, 1, v54, v55);
    a12 = v18;
    v15 = 4294951252;
    if (v24 != -16044)
    {
LABEL_20:
      v15 = v24;
      goto LABEL_10;
    }
  }

  else
  {
    v15 = 0;
  }

  if ((a10 & 2) != 0)
  {
    v56 = a12;
    if (manifoldFactory_isManifoldAllowable(@"com.apple.coremedia.formatreader.webvtt", theArray))
    {
      v27 = OUTLINED_FUNCTION_0_192();
      manifoldFactory_createManifold(v27, v28, v29, v30, v31, a6, a7, 2, v54, v55);
      if (v32 != -16044)
      {
        goto LABEL_29;
      }

      v25 = 1;
      v15 = 4294951252;
    }

    else
    {
      v25 = 0;
    }

    a12 = v56;
    if ((a10 & 4) == 0)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v25 = 0;
    if ((a10 & 4) == 0)
    {
      goto LABEL_7;
    }
  }

  v56 = a12;
  isManifoldAllowable = manifoldFactory_isManifoldAllowable(@"com.apple.coremedia.formatreader.mpeg", theArray);
  a12 = v56;
  if (isManifoldAllowable)
  {
    v47 = OUTLINED_FUNCTION_0_192();
    manifoldFactory_createManifold(v47, v48, v49, v50, v51, a6, a7, 4, v54, v55);
    if (v32 != -16044)
    {
      goto LABEL_29;
    }

    v25 = 1;
    v15 = 4294951252;
    a12 = v56;
  }

LABEL_7:
  if ((a10 & 8) != 0)
  {
    v56 = a12;
    v33 = manifoldFactory_isManifoldAllowable(@"com.apple.coremedia.formatreader.quicktime-iso", theArray);
    a12 = v56;
    if (v33)
    {
      v34 = OUTLINED_FUNCTION_0_192();
      manifoldFactory_createManifold(v34, v35, v36, v37, v38, a6, a7, 8, v54, v55);
      if (v32 == -16044)
      {
        v25 = 1;
        v15 = 4294951252;
        a12 = v56;
        goto LABEL_8;
      }

LABEL_29:
      v15 = v32;
      a12 = v56;
      goto LABEL_10;
    }
  }

LABEL_8:
  if ((a10 & 0x10) != 0)
  {
    v39 = a12;
    v40 = manifoldFactory_isManifoldAllowable(@"com.apple.coremedia.formatreader.audiofilestream", theArray);
    a12 = v39;
    if (v40)
    {
      v41 = OUTLINED_FUNCTION_0_192();
      manifoldFactory_createManifold(v41, v42, v43, v44, v45, a6, a7, 16, v54, v55);
LABEL_19:
      a12 = v39;
      goto LABEL_20;
    }
  }

  if (!v25)
  {
    v52 = v57;
    v53 = 190;
LABEL_28:
    v39 = a12;
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", 0, 4294948165, "(Fig)", v53, v52, a7, a8);
    goto LABEL_19;
  }

LABEL_10:
  *a12 = 0;
  return v15;
}

uint64_t manifoldFactory_isManifoldAllowable(const void *a1, CFArrayRef theArray)
{
  if (!theArray || CFArrayGetCount(theArray) < 1)
  {
    return 1;
  }

  v4 = FigCopyUTITypesForFormatReaderIdentifier(a1);
  if (CFArrayGetCount(theArray) < 1)
  {
LABEL_7:
    v6 = 0;
    if (!v4)
    {
      return v6;
    }

    goto LABEL_11;
  }

  v5 = 0;
  while (1)
  {
    CFArrayGetValueAtIndex(theArray, v5);
    if (FigCFArrayContainsValue())
    {
      break;
    }

    if (++v5 >= CFArrayGetCount(theArray))
    {
      goto LABEL_7;
    }
  }

  v6 = 1;
  if (v4)
  {
LABEL_11:
    CFRelease(v4);
  }

  return v6;
}

uint64_t FigStreamingNetworkErrorGetActionForIndexFileNetworkError(__CFError *a1, char a2, uint64_t *a3, void *a4)
{
  Code = CFErrorGetCode(a1);
  v9 = CFErrorCopyUserInfo(a1);
  v15 = 0;
  v16 = 0;
  cf = 0;
  if (Code == -16839)
  {
    v10 = 3;
    v15 = 2;
    v16 = 3;
    goto LABEL_11;
  }

  if (Code == -17633)
  {
    v10 = 3;
    v15 = 3;
    v16 = 3;
    goto LABEL_11;
  }

  RecommendedAction = FigStreamingNetworkErrorGetRecommendedAction(a1, &v16, &v15);
  if (RecommendedAction)
  {
LABEL_25:
    v12 = RecommendedAction;
    goto LABEL_20;
  }

  v10 = v16;
  if ((a2 & 2) != 0 && v16 == 1)
  {
    RecommendedAction = FigCFHTTPCreateCFErrorFromHTTPStatusCode(404, &cf);
    if (!RecommendedAction)
    {
      RecommendedAction = FigStreamingNetworkErrorGetRecommendedAction(cf, &v16, 0);
      if (!RecommendedAction)
      {
        v10 = v16;
        goto LABEL_11;
      }
    }

    goto LABEL_25;
  }

LABEL_11:
  if ((a2 & 4) != 0 && v10 == 3 || (a2 & 1) == 0 && v10 == 3)
  {
    v10 = 2;
    v16 = 2;
  }

  if (a3)
  {
    *a3 = v10;
  }

  v12 = 0;
  if (a4)
  {
    *a4 = v15;
  }

LABEL_20:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v9)
  {
    CFRelease(v9);
  }

  return v12;
}

uint64_t FigStreamingNetworkErrorGetActionForSessionDataNetworkError(__CFError *a1, char a2, uint64_t *a3, void *a4)
{
  v12 = 0;
  v13 = 0;
  cf = 0;
  RecommendedAction = FigStreamingNetworkErrorGetRecommendedAction(a1, &v13, &v12);
  if (RecommendedAction)
  {
    goto LABEL_19;
  }

  v8 = v13;
  if ((a2 & 2) == 0 || v13 != 1)
  {
    goto LABEL_7;
  }

  RecommendedAction = FigCFHTTPCreateCFErrorFromHTTPStatusCode(404, &cf);
  if (RecommendedAction || (RecommendedAction = FigStreamingNetworkErrorGetRecommendedAction(cf, &v13, 0), RecommendedAction))
  {
LABEL_19:
    v9 = RecommendedAction;
    goto LABEL_16;
  }

  v8 = v13;
LABEL_7:
  if ((v8 & 0xFFFFFFFFFFFFFFFDLL) == 1)
  {
    if ((a2 & 1) == 0 && v8 == 3)
    {
      v8 = 2;
      v13 = 2;
    }
  }

  else
  {
    v8 = 0;
    v13 = 0;
  }

  if (a3)
  {
    *a3 = v8;
  }

  v9 = 0;
  if (a4)
  {
    *a4 = v12;
  }

LABEL_16:
  if (cf)
  {
    CFRelease(cf);
  }

  return v9;
}

void OVCGLObjectCacheGetObjectForSurfaceAndPlane_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void ovcgloc_getObjectForSurfaceOrAttributes_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void ovcgloc_getObjectForSurfaceOrAttributes_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void OVCGLObjectCacheGetObjectForAttributesAndPlane_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void OVCGLObjectCacheGetObjectForAttributesAndPlane_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void OVCGLObjectCacheGetObjectForAttributesAndPlane_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void OVCGLObjectCacheCreate_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void OVCGLObjectCacheCreate_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void OVCGLObjectCacheCreate_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void OVCGLObjectCacheCreate_cold_4(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void OVCGLObjectCacheCreate_cold_5(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void OVCGLObjectCacheFlushObjectsForSurface_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void OVCGLObjectCacheFlushObjectsForSurface_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

uint64_t FigCaptionDataToMarkupBasedAttributedString(const __CFAllocator *a1, uint64_t a2, uint64_t a3, CMTime *a4, uint64_t Copy, uint64_t a6, __CFAttributedString **a7, const __CFDictionary *a8, const __CFDictionary *a9)
{
  v443 = 0;
  v16 = *(MEMORY[0x1E6960CA8] + 16);
  *&v442.start.value = *MEMORY[0x1E6960CA8];
  *&v442.start.epoch = v16;
  *&v442.duration.timescale = *(MEMORY[0x1E6960CA8] + 32);
  v441 = **&MEMORY[0x1E6960CC0];
  v440 = v441;
  *&start.start.value = *a3;
  start.start.epoch = *(a3 + 16);
  duration = *a4;
  CMTimeRangeMake(&v442, &start.start, &duration);
  *&start.start.value = *&v442.start.value;
  start.start.epoch = v442.start.epoch;
  duration = *Copy;
  CMTimeSubtract(&v441, &start.start, &duration);
  start = v442;
  CMTimeRangeGetEnd(&duration, &start);
  *&start.start.value = *a6;
  start.start.epoch = *(a6 + 16);
  CMTimeAdd(&v440, &duration, &start.start);
  duration = v441;
  end = v440;
  CMTimeRangeFromTimeToTime(&start, &duration, &end);
  alloc = a1;
  Mutable = CFAttributedStringCreateMutable(a1, 0);
  if (!Mutable)
  {
    goto LABEL_583;
  }

  v18 = *(*(CMBaseObjectGetVTable() + 16) + 8);
  if (v18)
  {
    v19 = v18(a2);
  }

  else
  {
    v19 = &stru_1F0B1AFB8;
  }

  v448.location = 0;
  v448.length = 0;
  CFAttributedStringReplaceString(Mutable, v448, v19);
  CMBaseObject = FigCaptionDataGetCMBaseObject();
  v21 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v21)
  {
    v47 = 4294954514;
    goto LABEL_571;
  }

  v406 = a8;
  v416 = a7;
  v22 = v21(CMBaseObject, *MEMORY[0x1E6961240], alloc, &v443);
  if (v22)
  {
    goto LABEL_584;
  }

  duration.value = 0;
  OUTLINED_FUNCTION_2_170();
  Value = CFDictionaryGetValue(sCAPRPCaptionPropertyInfoDictionary, @"caption");
  aStr = Mutable;
  Length = CFAttributedStringGetLength(Mutable);
  OUTLINED_FUNCTION_7_95();
  v25 = 0;
  v26 = 0;
  v27 = *MEMORY[0x1E6961208];
  cf = *MEMORY[0x1E69607C0];
  v28 = *MEMORY[0x1E6961278];
  v434 = *MEMORY[0x1E69607B0];
  cf2 = *MEMORY[0x1E6961570];
  v423 = *MEMORY[0x1E69607A0];
  v420 = *MEMORY[0x1E6961558];
  v413 = *MEMORY[0x1E6960780];
  v407 = *MEMORY[0x1E6961550];
  v398 = *MEMORY[0x1E6960790];
  v392 = *MEMORY[0x1E6961560];
  v387 = *MEMORY[0x1E6960788];
  v375 = *MEMORY[0x1E6961568];
  v369 = *MEMORY[0x1E6960798];
  v427 = *MEMORY[0x1E6961228];
  range = *MEMORY[0x1E69608B8];
  v417 = *MEMORY[0x1E6961230];
  v410 = *MEMORY[0x1E69608C0];
  v401 = *MEMORY[0x1E6961220];
  v395 = *MEMORY[0x1E6960828];
  v389 = *MEMORY[0x1E6961238];
  v384 = *MEMORY[0x1E69608C8];
  v381 = *MEMORY[0x1E69611F8];
  v378 = *MEMORY[0x1E6960AB8];
  v366 = *MEMORY[0x1E69611E8];
  v363 = *MEMORY[0x1E6960AA8];
  v360 = *MEMORY[0x1E69611F0];
  v357 = *MEMORY[0x1E6960AB0];
  v354 = *MEMORY[0x1E69611E0];
  v351 = *MEMORY[0x1E6960AA0];
  v372 = *MEMORY[0x1E6961258];
  if (!Value)
  {
    goto LABEL_9;
  }

LABEL_8:
  for (i = CFArrayGetCount(Value); v25 < i; i = 0)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(Value, v25);
    if (duration.value)
    {
      CFRelease(duration.value);
      duration.value = 0;
    }

    if (Copy)
    {
      CFRelease(Copy);
    }

    if (v9)
    {
      CFRelease(v9);
    }

    Copy = FigCaptionDataGetCMBaseObject();
    v31 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (!v31)
    {
      OUTLINED_FUNCTION_7_95();
      v26 = 4294954514;
      goto LABEL_21;
    }

    v32 = v31(Copy, ValueAtIndex, alloc, &duration);
    if (v32)
    {
      v26 = v32;
      OUTLINED_FUNCTION_7_95();
      goto LABEL_21;
    }

    Copy = duration.value;
    if (!duration.value)
    {
      v9 = 0;
LABEL_87:
      v26 = 0;
      goto LABEL_21;
    }

    start.start.value = 0;
    if (!ValueAtIndex)
    {
LABEL_68:
      fig_log_get_emitter();
      OUTLINED_FUNCTION_0_193();
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
      v26 = v45;
      OUTLINED_FUNCTION_7_95();
      goto LABEL_81;
    }

    if (CFEqual(ValueAtIndex, v27))
    {
      ValueAtIndex = CFRetain(cf);
      ColorRGBAFromColorStyleDynamicProperty = fcctx_createColorRGBAFromColorStyleDynamicProperty(Copy, &start.start.value);
      if (ColorRGBAFromColorStyleDynamicProperty)
      {
        goto LABEL_27;
      }

      goto LABEL_72;
    }

    if (CFEqual(ValueAtIndex, v28))
    {
      InitialValue = FigCaptionDynamicStyleGetInitialValue();
      Copy = InitialValue;
      if (!InitialValue)
      {
        goto LABEL_44;
      }

      ValueAtIndex = CFGetTypeID(InitialValue);
      if (ValueAtIndex != CFStringGetTypeID())
      {
        OUTLINED_FUNCTION_7_95();
        v26 = 0xFFFFFFFFLL;
        goto LABEL_81;
      }

      CFRetain(v434);
      v35 = OUTLINED_FUNCTION_798();
      if (CFEqual(v35, cf2))
      {
        v36 = v423;
      }

      else if (CFEqual(Copy, v420))
      {
        v36 = v413;
      }

      else
      {
        if (!CFEqual(Copy, v407))
        {
          if (CFEqual(Copy, v392))
          {
            v36 = v387;
            goto LABEL_71;
          }

          if (CFEqual(Copy, v375))
          {
            v36 = v369;
            goto LABEL_71;
          }
        }

        v36 = v398;
      }

LABEL_71:
      start.start.value = CFRetain(v36);
      goto LABEL_72;
    }

    if (CFEqual(ValueAtIndex, v427))
    {
      Copy = FigCaptionDynamicStyleGetInitialValue();
      if (!Copy)
      {
        goto LABEL_44;
      }

      v37 = range;
LABEL_42:
      CFRetain(v37);
      OUTLINED_FUNCTION_798();
      FigGeometryDimensionMakeFromDictionary();
      v38 = FigTextMarkupDimensionCopyAsSimplifiedDictionary();
      if (v38)
      {
        v39 = v38;
        start.start.value = CFRetain(v38);
        CFRelease(v39);
      }

      else
      {
        start.start.value = 0;
      }

      goto LABEL_72;
    }

    if (CFEqual(ValueAtIndex, v417))
    {
      Copy = FigCaptionDynamicStyleGetInitialValue();
      if (!Copy)
      {
LABEL_44:
        ValueAtIndex = 0;
        goto LABEL_75;
      }

      v37 = v410;
      goto LABEL_42;
    }

    if (CFEqual(ValueAtIndex, v401))
    {
      v40 = FigCaptionDynamicStyleGetInitialValue();
      ValueAtIndex = CFRetain(v395);
      if (v40)
      {
        v36 = v40;
        goto LABEL_71;
      }
    }

    else
    {
      if (!CFEqual(ValueAtIndex, v389))
      {
        if (!CFEqual(ValueAtIndex, v372))
        {
          ValueAtIndex = 0;
LABEL_74:
          Copy = 0;
          goto LABEL_75;
        }

        v43 = FigCaptionDynamicStyleGetInitialValue();
        if (!v43)
        {
          goto LABEL_68;
        }

        Copy = v43;
        v44 = CFGetTypeID(v43);
        if (v44 != FigCaptionRubyReserveGetTypeID())
        {
          goto LABEL_68;
        }

        ValueAtIndex = CFRetain(*MEMORY[0x1E6960950]);
        ColorRGBAFromColorStyleDynamicProperty = FigTextMarkupCreateTextMarkupFromRubyReserve();
        if (ColorRGBAFromColorStyleDynamicProperty)
        {
LABEL_27:
          v26 = ColorRGBAFromColorStyleDynamicProperty;
          OUTLINED_FUNCTION_7_95();
          goto LABEL_79;
        }

        goto LABEL_72;
      }

      v41 = FigCaptionDynamicStyleGetInitialValue();
      CFRetain(v384);
      v42 = OUTLINED_FUNCTION_798();
      if (CFEqual(v42, v381))
      {
        v36 = v378;
        goto LABEL_71;
      }

      if (CFEqual(v41, v366))
      {
        v36 = v363;
        goto LABEL_71;
      }

      if (CFEqual(v41, v360))
      {
        v36 = v357;
        goto LABEL_71;
      }

      if (CFEqual(v41, v354))
      {
        v36 = v351;
        goto LABEL_71;
      }
    }

LABEL_72:
    if (!ValueAtIndex)
    {
      goto LABEL_74;
    }

    Copy = CFRetain(ValueAtIndex);
LABEL_75:
    if (start.start.value)
    {
      v9 = CFRetain(start.start.value);
    }

    else
    {
      v9 = 0;
    }

    v26 = 0;
LABEL_79:
    if (ValueAtIndex)
    {
      CFRelease(ValueAtIndex);
    }

LABEL_81:
    if (start.start.value)
    {
      CFRelease(start.start.value);
    }

    if (!v26 && Copy && v9)
    {
      v46 = OUTLINED_FUNCTION_10_70();
      v449.length = Length;
      CFAttributedStringSetAttribute(v46, v449, Copy, v9);
      goto LABEL_87;
    }

LABEL_21:
    v25 = (v25 + 1);
    if (Value)
    {
      goto LABEL_8;
    }

LABEL_9:
    ;
  }

  if (duration.value)
  {
    CFRelease(duration.value);
    duration.value = 0;
  }

  Mutable = aStr;
  if (Copy)
  {
    CFRelease(Copy);
  }

  if (v9)
  {
    CFRelease(v9);
  }

  if (v26)
  {
    goto LABEL_583;
  }

  v444 = 0;
  v445 = 0;
  v48 = *(*(CMBaseObjectGetVTable() + 16) + 8);
  v49 = v48 ? v48(a2) : &stru_1F0B1AFB8;
  v50 = CFStringGetLength(v49);
  v51 = FigCaptionDataGetCMBaseObject();
  v52 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v52)
  {
    v53 = v52(v51, *MEMORY[0x1E6961268], alloc, &v445);
    if (v53)
    {
      v54 = v53;
      OUTLINED_FUNCTION_1_176();
    }

    else
    {
      Count = CFArrayGetCount(v445);
      if (Count)
      {
        v54 = 0;
        v55 = 0;
        v25 = 0;
        Copy = 0;
        v435 = *MEMORY[0x1E69614E8];
        cf2a = *MEMORY[0x1E6960878];
        v424 = *MEMORY[0x1E6961458];
        v421 = *MEMORY[0x1E6960810];
        v418 = *MEMORY[0x1E69614A0];
        v411 = *MEMORY[0x1E69607D0];
        v408 = *MEMORY[0x1E69614B0];
        v414 = *MEMORY[0x1E695E4C0];
        v396 = *MEMORY[0x1E69614A8];
        v399 = *MEMORY[0x1E695E4D0];
        v402 = *MEMORY[0x1E6961460];
        v393 = *MEMORY[0x1E6960990];
        v382 = *MEMORY[0x1E6961480];
        v379 = *MEMORY[0x1E69608A8];
        v376 = *MEMORY[0x1E6961490];
        v364 = *MEMORY[0x1E6961488];
        v352 = *MEMORY[0x1E6961498];
        v367 = *MEMORY[0x1E6961470];
        v335 = *MEMORY[0x1E6960880];
        v373 = *MEMORY[0x1E6961190];
        v370 = *MEMORY[0x1E6960A38];
        v361 = *MEMORY[0x1E69611D0];
        v358 = *MEMORY[0x1E6960A78];
        v347 = *MEMORY[0x1E69611C8];
        v345 = *MEMORY[0x1E6960A70];
        v339 = *MEMORY[0x1E69611A0];
        v337 = *MEMORY[0x1E6960A48];
        v327 = *MEMORY[0x1E69611C0];
        v325 = *MEMORY[0x1E6960A68];
        v321 = *MEMORY[0x1E69611B8];
        v319 = *MEMORY[0x1E6960A60];
        v311 = *MEMORY[0x1E69611B0];
        v309 = *MEMORY[0x1E6960A58];
        v299 = *MEMORY[0x1E69611A8];
        v297 = *MEMORY[0x1E6960A50];
        v289 = *MEMORY[0x1E6961180];
        v287 = *MEMORY[0x1E6960A28];
        v281 = *MEMORY[0x1E6961188];
        v279 = *MEMORY[0x1E6960A30];
        v273 = *MEMORY[0x1E6961198];
        v272 = *MEMORY[0x1E6960A40];
        v262 = *MEMORY[0x1E69611D8];
        v261 = *MEMORY[0x1E6960A80];
        v333 = *MEMORY[0x1E6960858];
        v390 = *MEMORY[0x1E695E480];
        v385 = *MEMORY[0x1E6961178];
        v349 = *MEMORY[0x1E6960860];
        v355 = *MEMORY[0x1E6961478];
        v343 = *MEMORY[0x1E6960868];
        v341 = *MEMORY[0x1E69614D0];
        v331 = *MEMORY[0x1E69614B8];
        v329 = *MEMORY[0x1E6960870];
        v323 = *MEMORY[0x1E69614F0];
        v317 = *MEMORY[0x1E6961508];
        v307 = *MEMORY[0x1E69614F8];
        v305 = *MEMORY[0x1E6960890];
        v295 = *MEMORY[0x1E6961510];
        v285 = *MEMORY[0x1E6961520];
        v277 = *MEMORY[0x1E6961518];
        v271 = *MEMORY[0x1E6961500];
        v315 = *MEMORY[0x1E69614C0];
        v313 = *MEMORY[0x1E6960888];
        v303 = *MEMORY[0x1E69614C8];
        v301 = *MEMORY[0x1E69608A0];
        v293 = *MEMORY[0x1E69614D8];
        v291 = *MEMORY[0x1E69608F0];
        v283 = *MEMORY[0x1E6961530];
        v274 = *MEMORY[0x1E6960818];
        v275 = *MEMORY[0x1E6961468];
        v269 = *MEMORY[0x1E6961248];
        v270 = *MEMORY[0x1E69614E0];
        v259 = *MEMORY[0x1E6960B38];
        v268 = *MEMORY[0x1E6960B68];
        v256 = *MEMORY[0x1E6960B58];
        v254 = *MEMORY[0x1E6960B40];
        v251 = *MEMORY[0x1E6960B48];
        key = *MEMORY[0x1E6960938];
        v266 = *MEMORY[0x1E6961250];
        v258 = *MEMORY[0x1E6960B78];
        v264 = *MEMORY[0x1E6960958];
        v265 = *MEMORY[0x1E6960948];
        v263 = *MEMORY[0x1E6960930];
        v260 = *MEMORY[0x1E6961528];
        v257 = *MEMORY[0x1E6961538];
        v255 = *MEMORY[0x1E6961548];
        v252 = *MEMORY[0x1E6961540];
        v253 = *MEMORY[0x1E6960898];
        v250 = *MEMORY[0x1E6960988];
        while (1)
        {
          v56 = CFArrayGetValueAtIndex(v445, v55);
          if (v50)
          {
            break;
          }

LABEL_333:
          if (++v55 == Count)
          {
            goto LABEL_336;
          }
        }

        v57 = v56;
        v58 = 0;
        while (2)
        {
          *&end.timescale = 0;
          end.value = 0;
          if (v444)
          {
            CFRelease(v444);
            v444 = 0;
          }

          if (Copy)
          {
            CFRelease(Copy);
          }

          if (v25)
          {
            CFRelease(v25);
          }

          v59 = *(*(CMBaseObjectGetVTable() + 16) + 24);
          if (!v59)
          {
            OUTLINED_FUNCTION_1_176();
            v54 = -12782;
            goto LABEL_117;
          }

          v60 = v59(a2, v58, v57, alloc, &v444, &end);
          if (v60)
          {
            v54 = v60;
            OUTLINED_FUNCTION_1_176();
            goto LABEL_117;
          }

          v61 = v444;
          if (!v444)
          {
            goto LABEL_216;
          }

          Copy = end.value;
          v446 = 0;
          if (!v57)
          {
            fig_log_get_emitter();
            OUTLINED_FUNCTION_0_193();
            FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v247, v249, v250);
            v54 = v103;
            OUTLINED_FUNCTION_1_176();
            goto LABEL_252;
          }

          if (CFEqual(v57, v435))
          {
            v62 = cf2a;
            goto LABEL_125;
          }

          if (CFEqual(v57, v424))
          {
            v62 = v421;
LABEL_125:
            v26 = CFRetain(v62);
            v63 = fcctx_createColorRGBAFromColorStyleDynamicProperty(v61, &v446);
            Copy = 0;
            if (!v63)
            {
              UInt32 = 0;
              goto LABEL_127;
            }

            v54 = v63;
            v25 = 0;
            UInt32 = 0;
            if (!v26)
            {
LABEL_248:
              if (v446)
              {
                CFRelease(v446);
                v446 = 0;
              }

              if (UInt32)
              {
                CFRelease(UInt32);
              }

LABEL_252:
              if (v54)
              {
                goto LABEL_336;
              }

              if (Copy && v25)
              {
                v450.location = end.value;
                v450.length = *&end.timescale;
                CFAttributedStringSetAttribute(aStr, v450, Copy, v25);
              }

LABEL_256:
              v54 = 0;
              v58 += *&end.timescale;
LABEL_117:
              if (v58 == v50)
              {
                goto LABEL_333;
              }

              continue;
            }

LABEL_247:
            CFRelease(v26);
            goto LABEL_248;
          }

          break;
        }

        if (CFEqual(v57, v418))
        {
          v65 = FigCaptionDynamicStyleGetInitialValue();
          if (v65)
          {
            v66 = v65;
            Copy = CFGetTypeID(v65);
            if (Copy == CFStringGetTypeID())
            {
              CFRetain(v411);
              v67 = OUTLINED_FUNCTION_11_68();
              if (!CFEqual(v67, v408) && CFEqual(v66, v396))
              {
                goto LABEL_144;
              }

LABEL_133:
              v68 = v414;
              goto LABEL_145;
            }
          }

LABEL_320:
          OUTLINED_FUNCTION_1_176();
          UInt32 = 0;
          v54 = -1;
          goto LABEL_248;
        }

        if (CFEqual(v57, v402))
        {
          LODWORD(start.start.value) = 0;
          v69 = FigCaptionDynamicStyleGetInitialValue();
          if (!v69)
          {
            goto LABEL_320;
          }

          Copy = CFGetTypeID(v69);
          if (Copy != CFNumberGetTypeID())
          {
            goto LABEL_320;
          }

          v26 = CFRetain(v393);
          v70 = OUTLINED_FUNCTION_12_65();
          CFNumberGetValue(v70, kCFNumberSInt32Type, v71);
          v72 = start.start.value;
          if (!LODWORD(start.start.value))
          {
            goto LABEL_141;
          }

          if (start.start.value)
          {
            v446 = CFRetain(v399);
            v72 = start.start.value;
          }

          if ((v72 & 6) != 0)
          {
LABEL_141:
            v446 = CFRetain(v414);
          }

LABEL_142:
          UInt32 = 0;
LABEL_127:
          if (v26)
          {
            Copy = CFRetain(v26);
            goto LABEL_243;
          }

LABEL_242:
          Copy = 0;
LABEL_243:
          if (v446)
          {
            v25 = CFRetain(v446);
          }

          else
          {
            v25 = 0;
          }

          v54 = 0;
          if (!v26)
          {
            goto LABEL_248;
          }

          goto LABEL_247;
        }

        if (CFEqual(v57, v382))
        {
          v74 = FigCaptionDynamicStyleGetInitialValue();
          if (!v74)
          {
            goto LABEL_320;
          }

          v75 = v74;
          Copy = CFGetTypeID(v74);
          if (Copy != CFStringGetTypeID())
          {
            goto LABEL_320;
          }

          CFRetain(v379);
          v76 = OUTLINED_FUNCTION_11_68();
          if (CFEqual(v76, v376))
          {
            goto LABEL_133;
          }

          if (!CFEqual(v75, v364))
          {
            CFEqual(v75, v352);
          }

LABEL_144:
          v68 = v399;
LABEL_145:
          SInt8 = CFRetain(v68);
          goto LABEL_146;
        }

        if (CFEqual(v57, v367))
        {
          v77 = FigCaptionDynamicStyleGetInitialValue();
          if (!v77)
          {
            goto LABEL_320;
          }

          Copy = CFGetTypeID(v77);
          if (Copy != FigCaptionFontFamilyNameListGetTypeID())
          {
            goto LABEL_320;
          }

          v78 = FigCaptionFontFamilyNameListGetCount();
          Copy = v78;
          if (!v78)
          {
            v26 = 0;
            UInt32 = 0;
            goto LABEL_243;
          }

          if (v78 == 1)
          {
            LODWORD(duration.value) = 0;
            start.start.value = 0;
            if (!FigCaptionFontFamilyNameListCopyFamilyKindAndNameAtIndex())
            {
              if (LODWORD(duration.value))
              {
                if (LODWORD(duration.value) == 1)
                {
                  v26 = CFRetain(v333);
                  goto LABEL_162;
                }

                v26 = 0;
LABEL_323:
                v102 = start.start.value;
                if (!start.start.value)
                {
                  goto LABEL_142;
                }

LABEL_324:
                CFRelease(v102);
                goto LABEL_142;
              }

              v26 = CFRetain(v335);
              if (CFEqual(start.start.value, v373))
              {
                v79 = v370;
              }

              else if (CFEqual(start.start.value, v361))
              {
                v79 = v358;
              }

              else if (CFEqual(start.start.value, v347))
              {
                v79 = v345;
              }

              else if (CFEqual(start.start.value, v339))
              {
                v79 = v337;
              }

              else if (CFEqual(start.start.value, v327))
              {
                v79 = v325;
              }

              else if (CFEqual(start.start.value, v321))
              {
                v79 = v319;
              }

              else if (CFEqual(start.start.value, v311))
              {
                v79 = v309;
              }

              else if (CFEqual(start.start.value, v299))
              {
                v79 = v297;
              }

              else if (CFEqual(start.start.value, v289))
              {
                v79 = v287;
              }

              else if (CFEqual(start.start.value, v281))
              {
                v79 = v279;
              }

              else if (CFEqual(start.start.value, v273))
              {
                v79 = v272;
              }

              else if (CFEqual(start.start.value, v262))
              {
                v79 = v261;
              }

              else
              {
                v79 = v399;
              }

LABEL_322:
              v446 = CFRetain(v79);
              goto LABEL_323;
            }

LABEL_227:
            OUTLINED_FUNCTION_1_176();
LABEL_228:
            v54 = 0;
LABEL_229:
            UInt32 = 0;
            goto LABEL_248;
          }

          v84 = OUTLINED_FUNCTION_6_111();
          v25 = CFArrayCreateMutable(v84, v85, MEMORY[0x1E695E9C0]);
          if (!v25)
          {
            Copy = 0;
            goto LABEL_228;
          }

          if (Copy < 1)
          {
LABEL_193:
            v26 = CFRetain(v349);
            UInt32 = 0;
            v446 = v25;
            goto LABEL_127;
          }

          v86 = 0;
          while (2)
          {
            LODWORD(duration.value) = 0;
            start.start.value = 0;
            v87 = CFDictionaryCreateMutable(v390, 2, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
            if (!v87)
            {
              goto LABEL_227;
            }

            v26 = v87;
            FigCaptionFontFamilyNameListCopyFamilyKindAndNameAtIndex();
            if (LODWORD(duration.value))
            {
              if (LODWORD(duration.value) == 1)
              {
                FigCFDictionarySetInt32();
                v88 = start.start.value;
                goto LABEL_189;
              }
            }

            else
            {
              FigCFDictionarySetInt32();
              v89 = CFEqual(start.start.value, v373);
              v88 = v370;
              if (!v89)
              {
                v90 = CFEqual(start.start.value, v361);
                v88 = v358;
                if (!v90)
                {
                  v91 = CFEqual(start.start.value, v347);
                  v88 = v345;
                  if (!v91)
                  {
                    v92 = CFEqual(start.start.value, v339);
                    v88 = v337;
                    if (!v92)
                    {
                      v93 = CFEqual(start.start.value, v327);
                      v88 = v325;
                      if (!v93)
                      {
                        v94 = CFEqual(start.start.value, v321);
                        v88 = v319;
                        if (!v94)
                        {
                          v95 = CFEqual(start.start.value, v311);
                          v88 = v309;
                          if (!v95)
                          {
                            v96 = CFEqual(start.start.value, v299);
                            v88 = v297;
                            if (!v96)
                            {
                              v97 = CFEqual(start.start.value, v289);
                              v88 = v287;
                              if (!v97)
                              {
                                v98 = CFEqual(start.start.value, v281);
                                v88 = v279;
                                if (!v98)
                                {
                                  v99 = CFEqual(start.start.value, v273);
                                  v88 = v272;
                                  if (!v99)
                                  {
                                    if (CFEqual(start.start.value, v262))
                                    {
                                      v88 = v261;
                                    }

                                    else
                                    {
                                      v88 = v399;
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

LABEL_189:
              CFDictionaryAddValue(v26, v385, v88);
            }

            CFArrayAppendValue(v25, v26);
            CFRelease(v26);
            if (start.start.value)
            {
              CFRelease(start.start.value);
            }

            if (Copy == ++v86)
            {
              goto LABEL_193;
            }

            continue;
          }
        }

        if (CFEqual(v57, v355))
        {
          if (FigCaptionDynamicStyleGetInitialValue())
          {
            v80 = *(MEMORY[0x1E6962830] + 16);
            *&start.start.value = *MEMORY[0x1E6962830];
            *&start.start.epoch = v80;
            v26 = CFRetain(v343);
            FigGeometrySizeMakeFromDictionary();
            OUTLINED_FUNCTION_14_60();
            v81 = FigTextMarkupSizeCopyAsSimplifiedDictionary();
            if (v81)
            {
              v82 = v81;
              v83 = CFRetain(v81);
              CFRelease(v82);
            }

            else
            {
              v83 = 0;
            }

            UInt32 = 0;
            v446 = v83;
            goto LABEL_127;
          }

          goto LABEL_241;
        }

        if (CFEqual(v57, v341))
        {
          if (FigCaptionDynamicStyleGetInitialValue())
          {
            CFRetain(range);
            OUTLINED_FUNCTION_11_68();
            FigGeometryDimensionMakeFromDictionary();
            v100 = FigTextMarkupDimensionCopyAsSimplifiedDictionary();
            if (!v100)
            {
              UInt32 = 0;
              v446 = 0;
              goto LABEL_127;
            }

            goto LABEL_197;
          }

          goto LABEL_241;
        }

        if (CFEqual(v57, v331))
        {
          v104 = FigCaptionDynamicStyleGetInitialValue();
          v105 = v329;
LABEL_208:
          v26 = CFRetain(v105);
          if (!v104)
          {
            goto LABEL_142;
          }

LABEL_209:
          v68 = v104;
          goto LABEL_145;
        }

        if (CFEqual(v57, v323))
        {
          v106 = FigCaptionDynamicStyleGetInitialValue();
          if (!v106)
          {
            goto LABEL_241;
          }

          v107 = v106;
          if (!CFEqual(v106, v317))
          {
            if (CFEqual(v107, v307) || CFEqual(v107, v295) || CFEqual(v107, v285) || CFEqual(v107, v277) || CFEqual(v107, v271))
            {
              CFRetain(v305);
              OUTLINED_FUNCTION_8_80();
              SInt8 = FigCFNumberCreateSInt8();
LABEL_146:
              UInt32 = 0;
              v446 = SInt8;
              goto LABEL_127;
            }

            goto LABEL_241;
          }

LABEL_216:
          v25 = 0;
          Copy = 0;
          goto LABEL_256;
        }

        if (CFEqual(v57, v315))
        {
          v104 = FigCaptionDynamicStyleGetInitialValue();
          v105 = v313;
          goto LABEL_208;
        }

        if (CFEqual(v57, v303))
        {
          v104 = FigCaptionDynamicStyleGetInitialValue();
          v105 = v301;
          goto LABEL_208;
        }

        if (CFEqual(v57, v293))
        {
          v104 = FigCaptionDynamicStyleGetInitialValue();
          v105 = v291;
          goto LABEL_208;
        }

        if (CFEqual(v57, v283))
        {
          goto LABEL_241;
        }

        if (CFEqual(v57, v275))
        {
          v104 = FigCaptionDynamicStyleGetInitialValue();
          v105 = v274;
          goto LABEL_208;
        }

        if (CFEqual(v57, v270))
        {
          FigCaptionDataGetCaptionText(v61);
          v108 = OUTLINED_FUNCTION_8_80();
          v25 = CFDictionaryCreateMutable(v108, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
          if (v25)
          {
            start.start.value = 0;
            v109 = FigCaptionDataGetCMBaseObject();
            CMBaseObjectCopyProperty_0(v109, v269, v390, &start);
            FigCaptionDynamicStyleGetInitialValue();
            if (start.start.value)
            {
              CFRelease(start.start.value);
              start.start.value = 0;
            }

            v110 = FigCFEqual();
            v111 = v268;
            if (!v110)
            {
              v112 = FigCFEqual();
              v111 = v259;
              if (!v112)
              {
                v113 = FigCFEqual();
                v111 = v256;
                if (!v113)
                {
                  v114 = FigCFEqual();
                  v111 = v254;
                  if (!v114)
                  {
                    v115 = FigCFEqual();
                    v111 = v251;
                    if (!v115)
                    {
                      v116 = FigCFEqual();
                      v111 = v259;
                      if (v116)
                      {
                        v111 = *MEMORY[0x1E6960B50];
                      }
                    }
                  }
                }
              }
            }

            CFDictionarySetValue(v25, key, v111);
            v117 = FigCaptionDataGetCMBaseObject();
            CMBaseObjectCopyProperty_0(v117, v266, v390, &start);
            FigCaptionDynamicStyleGetInitialValue();
            if (start.start.value)
            {
              CFRelease(start.start.value);
              start.start.value = 0;
            }

            v118 = FigCFEqual();
            v119 = MEMORY[0x1E6960B70];
            if (v118 || (v120 = FigCFEqual(), v119 = MEMORY[0x1E6960B88], v121 = v258, v120))
            {
              v121 = *v119;
            }

            CFDictionarySetValue(v25, v265, v121);
            UInt32 = FigCFNumberCreateUInt32();
            if (UInt32)
            {
              CFDictionarySetValue(v25, v264, UInt32);
              v122 = CFAttributedStringCreate(v390, v26, v25);
              if (v122)
              {
                v123 = v122;
                CFRelease(v25);
                CFRetain(v263);
                v124 = OUTLINED_FUNCTION_11_68();
                v446 = CFRetain(v124);
                CFRelease(v123);
                goto LABEL_127;
              }

              fig_log_get_emitter();
              OUTLINED_FUNCTION_0_193();
              FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v247, v249, v250);
              v54 = v136;
            }

            else
            {
              v54 = 0;
            }

            OUTLINED_FUNCTION_1_176();
            goto LABEL_248;
          }

          fig_log_get_emitter();
          OUTLINED_FUNCTION_0_193();
          FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v247, v249, v250);
          v54 = v135;
          Copy = 0;
          goto LABEL_229;
        }

        if (CFEqual(v57, v260))
        {
          v125 = FigCaptionDynamicStyleGetInitialValue();
          start.start.value = 0;
          v26 = CFRetain(*MEMORY[0x1E6960970]);
          if (!v125)
          {
            goto LABEL_142;
          }

          Copy = CFGetTypeID(v125);
          if (Copy != FigCaptionTextEmphasisGetTypeID())
          {
            goto LABEL_142;
          }

          OUTLINED_FUNCTION_12_65();
          TextMarkupFromTextEmphasis = FigTextMarkupCreateTextMarkupFromTextEmphasis();
          if (TextMarkupFromTextEmphasis)
          {
            goto LABEL_300;
          }
        }

        else
        {
          if (!CFEqual(v57, v257))
          {
            if (!CFEqual(v57, v255))
            {
              if (CFEqual(v57, v252))
              {
                v133 = FigCaptionDynamicStyleGetInitialValue();
                if (!v133)
                {
                  goto LABEL_320;
                }

                Copy = CFGetTypeID(v133);
                if (Copy != CFDictionaryGetTypeID())
                {
                  goto LABEL_320;
                }

                start.start.value = FigGeometryDimensionMakeFromDictionary();
                *&start.start.timescale = v134;
                if ((v134 & 0x1FFFFFFFFLL) != 0x125202020)
                {
                  v26 = 0;
                  goto LABEL_142;
                }

                v26 = CFRetain(v250);
                v100 = CFNumberCreate(v390, kCFNumberCGFloatType, &start);
                if (!v100)
                {
                  v446 = 0;
                  goto LABEL_142;
                }

LABEL_197:
                v101 = v100;
                v446 = CFRetain(v100);
                v102 = v101;
                goto LABEL_324;
              }

LABEL_241:
              v26 = 0;
              UInt32 = 0;
              goto LABEL_242;
            }

            v104 = FigCaptionDynamicStyleGetInitialValue();
            v26 = CFRetain(v253);
            if (!v104)
            {
              goto LABEL_142;
            }

            v128 = CFGetTypeID(v104);
            if (v128 != CFArrayGetTypeID())
            {
              goto LABEL_142;
            }

            if (CFArrayGetCount(v104) >= 1)
            {
              v129 = 0;
              v130 = 0;
              do
              {
                LODWORD(start.start.value) = 0;
                OUTLINED_FUNCTION_12_65();
                if (FigCFArrayGetInt32AtIndex())
                {
                  if (!v129)
                  {
                    v131 = OUTLINED_FUNCTION_6_111();
                    v129 = CFArrayCreateMutable(v131, v132, MEMORY[0x1E695E9C0]);
                  }

                  FigCFArrayAppendInt32();
                }

                ++v130;
              }

              while (v130 < CFArrayGetCount(v104));
            }

            goto LABEL_209;
          }

          v127 = FigCaptionDynamicStyleGetInitialValue();
          start.start.value = 0;
          v26 = CFRetain(*MEMORY[0x1E6960980]);
          if (!v127)
          {
            goto LABEL_142;
          }

          Copy = CFGetTypeID(v127);
          if (Copy != FigCaptionTextShadowGetTypeID())
          {
            goto LABEL_142;
          }

          OUTLINED_FUNCTION_12_65();
          TextMarkupFromTextEmphasis = FigTextMarkupCreateTextMarkupFromTextShadowList();
          if (TextMarkupFromTextEmphasis)
          {
LABEL_300:
            v54 = TextMarkupFromTextEmphasis;
            OUTLINED_FUNCTION_1_176();
            UInt32 = 0;
            if (!v26)
            {
              goto LABEL_248;
            }

            goto LABEL_247;
          }
        }

LABEL_162:
        v79 = start.start.value;
        goto LABEL_322;
      }

      OUTLINED_FUNCTION_1_176();
      v54 = 0;
    }
  }

  else
  {
    OUTLINED_FUNCTION_1_176();
    v54 = -12782;
  }

LABEL_336:
  if (v444)
  {
    CFRelease(v444);
    v444 = 0;
  }

  v137 = cf;
  if (Copy)
  {
    CFRelease(Copy);
  }

  if (v25)
  {
    CFRelease(v25);
  }

  if (v445)
  {
    CFRelease(v445);
  }

  Mutable = aStr;
  if (v54)
  {
    goto LABEL_583;
  }

  v138 = v443;
  v445 = 0;
  v446 = 0;
  v139 = CFAttributedStringGetLength(aStr);
  if (!v138)
  {
    OUTLINED_FUNCTION_4_139();
    v150 = 0;
    v148 = 0;
    goto LABEL_558;
  }

  v140 = v139;
  OUTLINED_FUNCTION_2_170();
  v141 = CFDictionaryGetValue(sCAPRPCaptionPropertyInfoDictionary, @"region");
  v142 = v141;
  v143 = MEMORY[0x1E69607B8];
  Copy = MEMORY[0x1E6961338];
  rangea = v140;
  if (v141)
  {
    v144 = CFArrayGetCount(v141);
    v436 = *Copy;
    if (v144 < 1)
    {
      v425 = 0;
      v148 = 0;
    }

    else
    {
      v145 = FigCaptionRegionGetCMBaseObject();
      v146 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      if (v146)
      {
        v147 = v146(v145, v436, alloc, &v445);
        if (v147)
        {
          v148 = v147;
          v149 = 1;
          goto LABEL_354;
        }

        v151 = a9;
        if (CFStringGetLength(v445))
        {
          v148 = 0;
          v149 = CFStringCompare(v445, *MEMORY[0x1E6961368], 0) != kCFCompareEqualTo;
        }

        else
        {
          if (v445)
          {
            CFRelease(v445);
            v148 = 0;
            v445 = 0;
          }

          else
          {
            v148 = 0;
          }

          v149 = 1;
        }
      }

      else
      {
        v149 = 1;
        v148 = -12782;
LABEL_354:
        v151 = a9;
      }

      Copy = CFDictionaryGetValue(v151, v138);
      if (Copy)
      {
        v152 = v149;
      }

      else
      {
        v152 = 0;
      }

      if (v152)
      {
        goto LABEL_368;
      }

      if (v445)
      {
        v153 = CFRetain(v445);
        v154 = a9;
      }

      else
      {
        v154 = a9;
        v248 = CFDictionaryGetCount(a9);
        v155 = OUTLINED_FUNCTION_6_111();
        v153 = CFStringCreateWithFormat(v155, v156, v157, v248);
      }

      CFDictionarySetValue(v154, v138, v153);
      if (v153)
      {
        CFRelease(v153);
      }

      v137 = cf;
      if (Copy || (Copy = CFDictionaryGetValue(a9, v138)) != 0)
      {
LABEL_368:
        v425 = v152;
        v158 = OUTLINED_FUNCTION_10_70();
        v451.length = v140;
        CFAttributedStringSetAttribute(v158, v451, v159, Copy);
      }

      else
      {
        v425 = 0;
      }
    }
  }

  else
  {
    v425 = 0;
    v148 = 0;
    v436 = *MEMORY[0x1E6961338];
  }

  OUTLINED_FUNCTION_4_139();
  v160 = 0;
  v150 = 0;
  cf2b = *MEMORY[0x1E69612E8];
  v429 = *MEMORY[0x1E69613B8];
  v419 = *MEMORY[0x1E69613D8];
  v412 = *MEMORY[0x1E6960C10];
  v403 = *MEMORY[0x1E69613E0];
  v397 = *MEMORY[0x1E6960C18];
  v388 = *MEMORY[0x1E69613F0];
  v380 = *MEMORY[0x1E6960C28];
  v383 = *MEMORY[0x1E6960998];
  v377 = *MEMORY[0x1E6960C38];
  v374 = *MEMORY[0x1E69613E8];
  v368 = *MEMORY[0x1E6960C20];
  v365 = *MEMORY[0x1E6960C30];
  v409 = *MEMORY[0x1E69609A8];
  v415 = *MEMORY[0x1E6961390];
  v394 = *MEMORY[0x1E69607F0];
  v391 = *MEMORY[0x1E69607F8];
  v400 = *MEMORY[0x1E69612C8];
  v386 = *MEMORY[0x1E69613B0];
  v359 = *MEMORY[0x1E6960800];
  v371 = *MEMORY[0x1E6961328];
  v353 = *MEMORY[0x1E69607E8];
  v362 = *MEMORY[0x1E69612D8];
  v344 = *MEMORY[0x1E69607D8];
  v342 = *MEMORY[0x1E69607E0];
  v356 = *MEMORY[0x1E69612F0];
  v348 = *MEMORY[0x1E6960808];
  v350 = *MEMORY[0x1E6961300];
  v346 = *MEMORY[0x1E6961308];
  v340 = *MEMORY[0x1E6961298];
  v334 = *MEMORY[0x1E6961290];
  v330 = *MEMORY[0x1E69612A0];
  v336 = *MEMORY[0x1E6960840];
  v338 = *MEMORY[0x1E6961320];
  v328 = *MEMORY[0x1E69608F8];
  v332 = *MEMORY[0x1E6961330];
  v326 = *MEMORY[0x1E6960900];
  v422 = *v143;
  v324 = *MEMORY[0x1E6961370];
  v320 = *MEMORY[0x1E6960910];
  v322 = *MEMORY[0x1E69612F8];
  v316 = *MEMORY[0x1E6960820];
  v318 = *MEMORY[0x1E6961310];
  v312 = *MEMORY[0x1E6960848];
  v314 = *MEMORY[0x1E69613A0];
  v310 = *MEMORY[0x1E69613C8];
  v306 = *MEMORY[0x1E6960960];
  v308 = *MEMORY[0x1E6961380];
  v304 = *MEMORY[0x1E69608D0];
  v302 = *MEMORY[0x1E6961388];
  v300 = *MEMORY[0x1E69612B0];
  v298 = *MEMORY[0x1E6960AC8];
  v296 = *MEMORY[0x1E69612A8];
  v294 = *MEMORY[0x1E6960AC0];
  v292 = *MEMORY[0x1E69612C0];
  v290 = *MEMORY[0x1E6960AD8];
  v288 = *MEMORY[0x1E69612B8];
  v286 = *MEMORY[0x1E6960AD0];
  v284 = *MEMORY[0x1E69608E8];
  v282 = *MEMORY[0x1E69613C0];
  v280 = *MEMORY[0x1E69609B0];
  v278 = *MEMORY[0x1E6961378];
  v276 = *MEMORY[0x1E69613A8];
  if (!v142)
  {
    goto LABEL_371;
  }

  while (2)
  {
    v161 = CFArrayGetCount(v142);
LABEL_372:
    if (v160 < v161)
    {
      v162 = CFArrayGetValueAtIndex(v142, v160);
      if (v446)
      {
        CFRelease(v446);
        v446 = 0;
      }

      if (Copy)
      {
        CFRelease(Copy);
      }

      if (v26)
      {
        CFRelease(v26);
      }

      Copy = FigCaptionRegionGetCMBaseObject();
      v163 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      if (!v163)
      {
        OUTLINED_FUNCTION_4_139();
        v148 = -12782;
        goto LABEL_383;
      }

      v164 = v163(Copy, v162, alloc, &v446);
      if (v164)
      {
        v148 = v164;
        OUTLINED_FUNCTION_4_139();
LABEL_383:
        ++v160;
        if (v142)
        {
          continue;
        }

LABEL_371:
        v161 = 0;
        goto LABEL_372;
      }

      if (!CFEqual(v162, v436) || CFStringGetLength(v446))
      {
        Copy = v446;
        if (v446)
        {
          goto LABEL_388;
        }

LABEL_395:
        v26 = 0;
        v148 = 0;
        goto LABEL_383;
      }

      if (v446)
      {
        CFRelease(v446);
        v446 = 0;
      }

      v169 = CFDictionaryGetValue(a9, v138);
      Copy = CFStringCreateCopy(alloc, v169);
      v446 = Copy;
      if (!Copy)
      {
        goto LABEL_395;
      }

LABEL_388:
      end.value = 0;
      if (!v162)
      {
        fig_log_get_emitter();
        OUTLINED_FUNCTION_0_193();
        FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v247, v249, v250);
        OUTLINED_FUNCTION_3_143();
        v167 = 0;
        goto LABEL_460;
      }

      v165 = OUTLINED_FUNCTION_6_111();
      v167 = CFDictionaryCreateMutable(v165, v166, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      if (CFEqual(v162, cf2b))
      {
        v168 = CFRetain(v137);
        if (!fcctx_createColorRGBAFromColorStyleDynamicProperty(Copy, &end.value))
        {
          CFDictionaryAddValue(v167, v137, end.value);
LABEL_446:
          if (!FigCFDictionaryGetCount() && v167)
          {
            CFRelease(v167);
            v167 = 0;
          }

          if (v168)
          {
            Copy = CFRetain(v168);
          }

          else
          {
            Copy = 0;
          }

          if (end.value)
          {
            v26 = CFRetain(end.value);
            if (v167)
            {
              goto LABEL_454;
            }

LABEL_456:
            v137 = 0;
          }

          else
          {
            v26 = 0;
            if (!v167)
            {
              goto LABEL_456;
            }

LABEL_454:
            v137 = CFRetain(v167);
          }

          v148 = 0;
LABEL_458:
          if (v168)
          {
            CFRelease(v168);
          }

LABEL_460:
          if (end.value)
          {
            CFRelease(end.value);
            end.value = 0;
          }

          if (v167)
          {
            CFRelease(v167);
          }

          if (!v148)
          {
            *&start.start.timescale = 0;
            start.start.value = 0;
            v192 = OUTLINED_FUNCTION_10_70();
            Attributes = CFAttributedStringGetAttributes(v192, v193, v194);
            if (Copy)
            {
              if (v26 && !CFDictionaryContainsKey(Attributes, Copy))
              {
                v196 = OUTLINED_FUNCTION_10_70();
                v452.length = rangea;
                CFAttributedStringSetAttribute(v196, v452, Copy, v26);
              }
            }
          }

          if (v137)
          {
            if (!v150)
            {
              v190 = OUTLINED_FUNCTION_6_111();
              v150 = CFDictionaryCreateMutable(v190, v191, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
            }

            start.start.value = v150;
            CFDictionaryApplyFunction(v137, addOneKeyAndValueApplyFunction, &start);
            CFRelease(v137);
          }

          v137 = cf;
          goto LABEL_383;
        }

LABEL_416:
        OUTLINED_FUNCTION_3_143();
        goto LABEL_458;
      }

      if (CFEqual(v162, v429))
      {
        v170 = FigCaptionDynamicStyleGetInitialValue();
        if (!v170)
        {
          goto LABEL_445;
        }

        Copy = v170;
        v171 = CFGetTypeID(v170);
        if (v171 == CFStringGetTypeID())
        {
          if (CFEqual(Copy, v419))
          {
            v172 = v412;
LABEL_410:
            v176 = CFRetain(v172);
            v168 = 0;
            if (!v176)
            {
              goto LABEL_446;
            }

LABEL_411:
            CFDictionaryAddValue(v167, v409, v176);
            CFRelease(v176);
            goto LABEL_446;
          }

          if (CFEqual(Copy, v403))
          {
            v172 = v397;
            goto LABEL_410;
          }

          if (CFEqual(Copy, v388))
          {
            v176 = CFRetain(v380);
            v168 = CFRetain(v383);
            v179 = v377;
            goto LABEL_426;
          }

          if (CFEqual(Copy, v374))
          {
            v176 = CFRetain(v368);
            v168 = CFRetain(v383);
            v179 = v365;
LABEL_426:
            end.value = CFRetain(v179);
            if (!v176)
            {
              goto LABEL_446;
            }

            goto LABEL_411;
          }

LABEL_445:
          v168 = 0;
          goto LABEL_446;
        }

LABEL_489:
        v137 = 0;
        OUTLINED_FUNCTION_4_139();
        v148 = -1;
        goto LABEL_460;
      }

      if (CFEqual(v162, v415))
      {
        if (!FigCaptionDynamicStyleGetInitialValue())
        {
          goto LABEL_445;
        }

        memset(&start, 0, 32);
        FigGeometryPointMakeFromDictionary();
        OUTLINED_FUNCTION_14_60();
        Copy = FigGeometryPointCopyDescription();
        if ((start.start.flags & 1) != 0 || (start.duration.value & 0x100000000) != 0)
        {
          OUTLINED_FUNCTION_15_53();
          v173 = OUTLINED_FUNCTION_16_49();
          if (v173)
          {
            CFDictionaryAddValue(v167, v394, v162);
            v174 = v167;
            v175 = v391;
            goto LABEL_407;
          }

          goto LABEL_440;
        }

        goto LABEL_443;
      }

      if (CFEqual(v162, v400))
      {
        v177 = FigCaptionDynamicStyleGetInitialValue();
        if (!v177 || (Copy = v177, v178 = CFGetTypeID(v177), v178 != FigCaptionPositionGetTypeID()))
        {
          fig_log_get_emitter();
          OUTLINED_FUNCTION_0_193();
          FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v247, v249, v250);
          OUTLINED_FUNCTION_3_143();
          goto LABEL_460;
        }

        v168 = CFRetain(*MEMORY[0x1E69607A8]);
        if (!FigTextMarkupCreateTextMarkupFromAbstractPosition())
        {
          goto LABEL_446;
        }

        goto LABEL_416;
      }

      if (CFEqual(v162, v386))
      {
        if (!FigCaptionDynamicStyleGetInitialValue())
        {
          goto LABEL_445;
        }

        v180 = FigGeometryDimensionMakeFromDictionary();
        Copy = OUTLINED_FUNCTION_9_71(v180, v181);
        if ((v137 & 0x100000000) == 0)
        {
          goto LABEL_443;
        }

        v182 = FigTextMarkupDimensionCopyAsSimplifiedDictionary();
        if (!v182)
        {
          goto LABEL_443;
        }

        v183 = v182;
        v184 = v167;
        v185 = v359;
LABEL_433:
        CFDictionaryAddValue(v184, v185, v183);
        v189 = v183;
LABEL_442:
        CFRelease(v189);
        goto LABEL_443;
      }

      if (CFEqual(v162, v371))
      {
        if (!FigCaptionDynamicStyleGetInitialValue())
        {
          goto LABEL_445;
        }

        v186 = FigGeometryDimensionMakeFromDictionary();
        Copy = OUTLINED_FUNCTION_9_71(v186, v187);
        if ((v137 & 0x100000000) == 0)
        {
          goto LABEL_443;
        }

        v188 = FigTextMarkupDimensionCopyAsSimplifiedDictionary();
        if (!v188)
        {
          goto LABEL_443;
        }

        v183 = v188;
        v184 = v167;
        v185 = v353;
        goto LABEL_433;
      }

      if (CFEqual(v162, v362))
      {
        if (!FigCaptionDynamicStyleGetInitialValue())
        {
          goto LABEL_445;
        }

        memset(&start, 0, 32);
        FigGeometryPointMakeFromDictionary();
        OUTLINED_FUNCTION_14_60();
        Copy = FigGeometryPointCopyDescription();
        if ((start.start.flags & 1) != 0 && (start.duration.value & 0x100000000) != 0)
        {
          OUTLINED_FUNCTION_15_53();
          v173 = OUTLINED_FUNCTION_16_49();
          if (v173)
          {
            CFDictionaryAddValue(v167, v344, v162);
            v174 = v167;
            v175 = v342;
LABEL_407:
            CFDictionaryAddValue(v174, v175, v173);
          }

LABEL_440:
          CFRelease(v162);
          if (v173)
          {
            v189 = v173;
            goto LABEL_442;
          }
        }

LABEL_443:
        if (!Copy)
        {
          goto LABEL_445;
        }

LABEL_444:
        CFRelease(Copy);
        goto LABEL_445;
      }

      if (CFEqual(v162, v356))
      {
        v197 = CFGetTypeID(Copy);
        if (v197 != CFDictionaryGetTypeID())
        {
          goto LABEL_445;
        }

        v198 = *(MEMORY[0x1E6962830] + 16);
        *&start.start.value = *MEMORY[0x1E6962830];
        *&start.start.epoch = v198;
        FigGeometrySizeMakeFromDictionary();
        OUTLINED_FUNCTION_14_60();
        if (!FigTextMarkupSizeCopyAsSimplifiedDictionary())
        {
          goto LABEL_445;
        }

        v199 = OUTLINED_FUNCTION_413();
        v200 = v348;
        goto LABEL_478;
      }

      if (CFEqual(v162, v350))
      {
        goto LABEL_445;
      }

      if (CFEqual(v162, v346))
      {
        v201 = FigCaptionDynamicStyleGetInitialValue();
        if (!v201)
        {
          goto LABEL_445;
        }

        Copy = v201;
        v202 = CFGetTypeID(v201);
        if (v202 != CFStringGetTypeID())
        {
          goto LABEL_489;
        }

        v203 = CFEqual(Copy, v340);
        v204 = MEMORY[0x1E6960A18];
        if (!v203)
        {
          v205 = CFEqual(Copy, v334);
          v204 = MEMORY[0x1E6960A10];
          if (!v205)
          {
            CFEqual(Copy, v330);
            v204 = MEMORY[0x1E6960A20];
          }
        }

        if (!CFRetain(*v204))
        {
          goto LABEL_445;
        }

        v199 = OUTLINED_FUNCTION_413();
        v200 = v336;
        goto LABEL_478;
      }

      if (CFEqual(v162, v338))
      {
        v206 = FigCaptionDynamicStyleGetInitialValue();
        if (!v206)
        {
          goto LABEL_445;
        }

        Copy = v206;
        v207 = CFGetTypeID(v206);
        if (v207 != CFBooleanGetTypeID() || !CFRetain(Copy))
        {
          goto LABEL_445;
        }

        v199 = OUTLINED_FUNCTION_413();
        v200 = v328;
        goto LABEL_478;
      }

      if (CFEqual(v162, v332))
      {
        v208 = FigCaptionDynamicStyleGetInitialValue();
        if (!v208 || !CFRetain(v208))
        {
          goto LABEL_445;
        }

        v199 = OUTLINED_FUNCTION_413();
        v200 = v326;
        goto LABEL_478;
      }

      if (CFEqual(v162, v436))
      {
        v209 = v167;
        v210 = v422;
LABEL_502:
        CFDictionaryAddValue(v209, v210, Copy);
        goto LABEL_445;
      }

      if (CFEqual(v162, v324))
      {
        v211 = FigCaptionDynamicStyleGetInitialValue();
        if (!v211 || !CFRetain(v211))
        {
          goto LABEL_445;
        }

        v199 = OUTLINED_FUNCTION_413();
        v200 = v320;
      }

      else if (CFEqual(v162, v322))
      {
        v212 = FigCaptionDynamicStyleGetInitialValue();
        if (!v212 || !CFRetain(v212))
        {
          goto LABEL_445;
        }

        v199 = OUTLINED_FUNCTION_413();
        v200 = v316;
      }

      else if (CFEqual(v162, v318))
      {
        v213 = CFGetTypeID(Copy);
        if (v213 != CFDictionaryGetTypeID())
        {
          goto LABEL_445;
        }

        FigGeometryAspectRatioMakeFromDictionary();
        if (!FigTextMarkupAspectRatioCopyAsSimplifiedDictionary())
        {
          goto LABEL_445;
        }

        v199 = OUTLINED_FUNCTION_413();
        v200 = v312;
      }

      else if (CFEqual(v162, v314))
      {
        v214 = FigCaptionDynamicStyleGetInitialValue();
        if (!v214)
        {
          goto LABEL_445;
        }

        Copy = v214;
        v215 = CFEqual(v214, v310);
        v216 = MEMORY[0x1E6960B98];
        if (!v215)
        {
          v217 = CFEqual(Copy, v306);
          v216 = MEMORY[0x1E6960BA0];
          if (!v217)
          {
            goto LABEL_445;
          }
        }

        if (!CFRetain(*v216))
        {
          goto LABEL_445;
        }

        v199 = OUTLINED_FUNCTION_413();
        v200 = v306;
      }

      else
      {
        if (CFEqual(v162, v308))
        {
          v218 = FigCaptionDynamicStyleGetInitialValue();
          if (!v218)
          {
            goto LABEL_445;
          }

          Copy = v218;
          v219 = CFGetTypeID(v218);
          if (v219 != CFNumberGetTypeID())
          {
            goto LABEL_445;
          }

          v209 = v167;
          v210 = v304;
          goto LABEL_502;
        }

        if (CFEqual(v162, v302))
        {
          v168 = FigCaptionDynamicStyleGetInitialValue();
          if (!v168)
          {
            goto LABEL_446;
          }

          Copy = CFDictionaryCreateMutable(alloc, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
          CFDictionaryGetValue(v168, v300);
          FigGeometryDimensionMakeFromDictionary();
          v220 = FigTextMarkupDimensionCopyAsSimplifiedDictionary();
          CFDictionaryAddValue(Copy, v298, v220);
          if (v220)
          {
            CFRelease(v220);
          }

          CFDictionaryGetValue(v168, v296);
          FigGeometryDimensionMakeFromDictionary();
          v221 = FigTextMarkupDimensionCopyAsSimplifiedDictionary();
          CFDictionaryAddValue(Copy, v294, v221);
          if (v221)
          {
            CFRelease(v221);
          }

          CFDictionaryGetValue(v168, v292);
          FigGeometryDimensionMakeFromDictionary();
          v222 = FigTextMarkupDimensionCopyAsSimplifiedDictionary();
          CFDictionaryAddValue(Copy, v290, v222);
          if (v222)
          {
            CFRelease(v222);
          }

          CFDictionaryGetValue(v168, v288);
          FigGeometryDimensionMakeFromDictionary();
          FigTextMarkupDimensionCopyAsSimplifiedDictionary();
          v223 = OUTLINED_FUNCTION_798();
          CFDictionaryAddValue(v223, v286, v168);
          CFRelease(v168);
          if (!Copy)
          {
            goto LABEL_445;
          }

          v199 = v167;
          v200 = v284;
        }

        else
        {
          if (CFEqual(v162, v282))
          {
            v224 = FigCaptionDynamicStyleGetInitialValue();
            if (!v224)
            {
              goto LABEL_445;
            }

            Copy = v224;
            v225 = CFGetTypeID(v224);
            if (v225 != CFNumberGetTypeID())
            {
              goto LABEL_445;
            }

            v209 = v167;
            v210 = v280;
            goto LABEL_502;
          }

          if (CFEqual(v162, v278))
          {
            v226 = FigCaptionDynamicStyleGetInitialValue();
            if (!v226)
            {
              goto LABEL_445;
            }

            Copy = v226;
            v227 = CFGetTypeID(v226);
            if (v227 != CFNumberGetTypeID())
            {
              goto LABEL_445;
            }

            v210 = *MEMORY[0x1E6960918];
            v209 = v167;
            goto LABEL_502;
          }

          if (!CFEqual(v162, v276))
          {
            goto LABEL_445;
          }

          v228 = FigCaptionDynamicStyleGetInitialValue();
          if (!v228)
          {
            goto LABEL_445;
          }

          v229 = CFGetTypeID(v228);
          if (v229 != CFDictionaryGetTypeID())
          {
            goto LABEL_445;
          }

          FigGeometryDimensionMakeFromDictionary();
          v230 = FigTextMarkupDimensionCopyAsSimplifiedDictionary();
          if (!v230)
          {
            goto LABEL_445;
          }

          Copy = v230;
          v200 = *MEMORY[0x1E6960920];
          v199 = v167;
        }
      }

LABEL_478:
      CFDictionaryAddValue(v199, v200, Copy);
      goto LABEL_444;
    }

    break;
  }

  v231 = v425;
  if (!v150)
  {
    v231 = 1;
  }

  if ((v231 & 1) == 0)
  {
    v232 = CFDictionaryGetValue(v150, v422);
    v233 = *MEMORY[0x1E6960A90];
    v234 = CFDictionaryGetValue(v406, *MEMORY[0x1E6960A90]);
    if (!v234)
    {
      v235 = OUTLINED_FUNCTION_6_111();
      v239 = CFDictionaryCreateMutable(v235, v236, v237, v238);
      if (v239)
      {
        v240 = v239;
        CFDictionaryAddValue(v406, v233, v239);
        CFRelease(v240);
      }

      v234 = CFDictionaryGetValue(v406, v233);
    }

    v241 = OUTLINED_FUNCTION_6_111();
    v245 = CFDictionaryCreateMutable(v241, v242, v243, v244);
    CFDictionaryAddValue(v245, *MEMORY[0x1E6960AF8], v232);
    CFDictionaryAddValue(v245, *MEMORY[0x1E6960AF0], v150);
    CFDictionarySetValue(v234, v232, v245);
    if (v245)
    {
      CFRelease(v245);
    }
  }

  Mutable = aStr;
LABEL_558:
  if (v446)
  {
    CFRelease(v446);
    v446 = 0;
  }

  if (Copy)
  {
    CFRelease(Copy);
  }

  if (v26)
  {
    CFRelease(v26);
  }

  if (v150)
  {
    CFRelease(v150);
  }

  if (v445)
  {
    CFRelease(v445);
  }

  if (v148)
  {
LABEL_583:
    fig_log_get_emitter();
    OUTLINED_FUNCTION_0_193();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
LABEL_584:
    v47 = v22;
    goto LABEL_571;
  }

  v47 = 0;
  if (v416)
  {
    *v416 = Mutable;
    Mutable = 0;
  }

LABEL_571:
  if (v443)
  {
    CFRelease(v443);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  return v47;
}