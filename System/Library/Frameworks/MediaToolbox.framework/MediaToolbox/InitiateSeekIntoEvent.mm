@interface InitiateSeekIntoEvent
@end

@implementation InitiateSeekIntoEvent

void __fpic_InitiateSeekIntoEvent_block_invoke_217(void *a1)
{
  v13 = *MEMORY[0x1E69E9840];
  if (*(CMBaseObjectGetDerivedStorage() + 896))
  {
    v2 = fpic_UnwrapEvent();
    v3 = a1[7];
    if (*(v3 + 1028) || (v4 = *(a1[4] + 8), v5 = *(v4 + 48), v9[0] = *(v4 + 32), v9[1] = v5, v10 = *(v4 + 64), v6 = *(v3 + 240), v11[0] = *(v3 + 224), v11[1] = v6, v12 = *(v3 + 256), !fpic_MomentsAreCloseWithTolerance(v9, v11, &kMomentsAreCloseThreshold)))
    {
      if (fpic_isEventResolvableOnPrimaryTimeline())
      {
        v7 = FigPlayerInterstitialEventCopyIdentifier(v2);
        if (dword_1EAF178D0)
        {
          os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
          fig_log_call_emit_and_clean_up_after_send_and_compose();
        }

        fpic_ForceCancelInitiatedSeek(a1[5]);
        if (v7)
        {
          CFRelease(v7);
        }
      }
    }
  }
}

void __fpic_InitiateSeekIntoEvent_block_invoke()
{
  OUTLINED_FUNCTION_193();
  v1 = v0;
  v271 = *MEMORY[0x1E69E9840];
  v2 = fpic_UnwrapEvent();
  v3 = FigPlayerInterstitialEventCopyIdentifier(v2);
  CMBaseObjectGetDerivedStorage();
  FirstIndexOfValue = FigCFArrayGetFirstIndexOfValue();
  CMBaseObjectGetDerivedStorage();
  v5 = FigCFArrayGetFirstIndexOfValue();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v257 = 0u;
  v258 = 0u;
  v259 = 0;
  fpic_GetEventStartMoment(v2, &v257);
  if (v259)
  {
    if (BYTE1(v259))
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v27 = BYTE1(v259);
  if (BYTE1(v259))
  {
    v28 = *(DerivedStorage + 320);
    v268 = *(DerivedStorage + 304);
    v269 = v28;
    v270 = *(DerivedStorage + 336);
    TimeWithDateAndMoment = FigCreateTimeWithDateAndMoment(&v268, rhs, *(&v258 + 1));
  }

  else
  {
    OUTLINED_FUNCTION_392(MEMORY[0x1E6960C70]);
  }

  v257 = *rhs;
  *&v258 = *&rhs[16];
  LOBYTE(v259) = 1;
  if (!v27)
  {
LABEL_3:
    OUTLINED_FUNCTION_73_9(TimeWithDateAndMoment, v8, v9, v10, v11, v12, v13, v14, v235, v236, v238, v240, v241, v243, v244, v245, *(&v245 + 1), v248, cf, v253, v254.value, *&v254.timescale, v254.epoch, type, *(&type + 1), v256, v257);
    v15 = *(DerivedStorage + 320);
    v268 = *(DerivedStorage + 304);
    v269 = v15;
    v270 = *(DerivedStorage + 336);
    fpic_MakeMomentFromTime(rhs, &v268, &v257);
  }

LABEL_4:
  OUTLINED_FUNCTION_81_5();
  v16 = v258;
  *(v17 + 32) = v257;
  *(v17 + 48) = v16;
  *(v17 + 64) = v259;
  if (v5 == -1)
  {
    if (dword_1EAF178D0)
    {
      *lhs = 0;
      LOBYTE(type) = 0;
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v19 = os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      if (OUTLINED_FUNCTION_115_1(v19))
      {
        *rhs = 136315394;
        *&rhs[4] = "fpic_InitiateSeekIntoEvent_block_invoke";
        OUTLINED_FUNCTION_6_107();
        OUTLINED_FUNCTION_38();
        _os_log_send_and_compose_impl(v20, v21, v22, v23, v24, v25, 0, v26);
      }

      OUTLINED_FUNCTION_7();
      OUTLINED_FUNCTION_414(v29, v30, v31, v32, v33);
    }

    OUTLINED_FUNCTION_243();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v235, v236, v238);
    Copy = 0;
    OUTLINED_FUNCTION_30_8(v35, *(v1 + 40));
    goto LABEL_12;
  }

  cfa = fpic_GetCurrentlyPlayingEvent(*(v1 + 56));
  HIDWORD(v248) = fpic_isEventInSameGroupAsAnotherEvent(*(v1 + 56), *(v1 + 64), cfa, 1);
  type = 0uLL;
  v256 = 0;
  v36 = CMBaseObjectGetDerivedStorage();
  v268 = *(v36 + 432);
  *&v269 = *(v36 + 448);
  OUTLINED_FUNCTION_177_2(v36);
  v37 = OUTLINED_FUNCTION_96_6();
  CMTimeAdd(v39, v37, v38);
  fpic_FinishInitiatedSeek();
  *(CMBaseObjectGetDerivedStorage() + 900) = 0;
  v40 = *(v1 + 72);
  v41 = *(v1 + 104);
  *(v40 + 912) = *(v1 + 88);
  *(v40 + 928) = v41;
  ValueAtIndex = CFArrayGetValueAtIndex(*(*(v1 + 72) + 200), v5);
  *(*(v1 + 72) + 904) = ValueAtIndex;
  v50 = *(v1 + 72);
  v51 = *(v1 + 128);
  *(v50 + 976) = *(v1 + 112);
  *(v50 + 992) = v51;
  v52 = *(v1 + 72);
  v53 = *(v1 + 136);
  *(v52 + 1016) = *(v1 + 152);
  *(v52 + 1000) = v53;
  v54 = *(v1 + 72);
  *(v54 + 1024) = *(v1 + 160);
  *(v54 + 1028) = 1;
  if (dword_1EAF178D0)
  {
    *lhs = 0;
    LOBYTE(v254.value) = 0;
    v55 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    v56 = *lhs;
    os_log_type_enabled(v55, OS_LOG_TYPE_DEFAULT);
    OUTLINED_FUNCTION_202();
    if (v58)
    {
      v59 = v57;
    }

    else
    {
      v59 = v56;
    }

    if (v59)
    {
      v60 = *(v1 + 56);
      v61 = *(v1 + 72);
      v268 = *(v61 + 912);
      v62 = OUTLINED_FUNCTION_137_2(*(v61 + 928));
      v63 = *(v1 + 72);
      v268 = *(v63 + 976);
      v64 = OUTLINED_FUNCTION_137_2(*(v63 + 992));
      v65 = *(v1 + 72);
      v268 = *(v65 + 1000);
      v66 = OUTLINED_FUNCTION_137_2(*(v65 + 1016));
      v67 = *(v1 + 164);
      v68 = *(*(v1 + 72) + 1024);
      *rhs = 136316930;
      *&rhs[4] = "fpic_InitiateSeekIntoEvent_block_invoke";
      *&rhs[12] = 2048;
      *&rhs[14] = v60;
      *&rhs[22] = 2112;
      *&rhs[24] = v3;
      *&rhs[32] = 2048;
      *&rhs[34] = v62;
      *&rhs[42] = 2048;
      *&rhs[44] = v64;
      *&rhs[52] = 2048;
      *&rhs[54] = v66;
      *&rhs[62] = 1024;
      LODWORD(v262) = v67;
      WORD2(v262) = 1024;
      *(&v262 + 6) = v68;
      OUTLINED_FUNCTION_87();
      OUTLINED_FUNCTION_38();
      _os_log_send_and_compose_impl(v69, v70, v71, v72, v73, v74, 0, v75);
    }

    OUTLINED_FUNCTION_7();
    ValueAtIndex = fig_log_call_emit_and_clean_up_after_send_and_compose();
    v54 = *(v1 + 72);
  }

  v76 = *(v54 + 904);
  v77 = MEMORY[0x1E695E480];
  if (cfa == v76)
  {
    v268 = 0uLL;
    *&v269 = 0;
    fpic_GetCurrentlyPlayingEventPlayoutDuration();
    FigPlayerInterstitialEventGetFirstItemStartOffset(v2, rhs);
    *lhs = v268;
    *&lhs[16] = v269;
    CMTimeAdd(&v268, lhs, rhs);
    *lhs = *(v1 + 88);
    *&lhs[16] = *(v1 + 104);
    *&v254.value = v268;
    v254.epoch = v269;
    CMTimeSubtract(rhs, lhs, &v254);
    *lhs = *MEMORY[0x1E6960CC0];
    *&lhs[16] = *(MEMORY[0x1E6960CC0] + 16);
    ValueAtIndex = CMTimeCompare(rhs, lhs);
    v79 = ValueAtIndex >= 0;
    if (!cfa)
    {
      v78 = 0;
      HIDWORD(v253) = 0;
      v80 = &dword_1EAF17000;
      if (FirstIndexOfValue == -1)
      {
        goto LABEL_83;
      }

      goto LABEL_77;
    }

    ValueAtIndex = OUTLINED_FUNCTION_83_9(ValueAtIndex, v43, v44, v45, v46, v47, v48, v49, v235, v236, v238, v240, v241, v243, v244, v245, v248, cfa, v253, v254.value, *&v254.timescale, v254.epoch, type, v256, v257, *(&v257 + 1), v258, *(&v258 + 1), v259, v260, *rhs, *&rhs[16]);
    if ((ValueAtIndex & 0x80000000) == 0)
    {
      HIDWORD(v253) = 0;
      v80 = &dword_1EAF17000;
      if (FirstIndexOfValue == -1)
      {
        goto LABEL_83;
      }

      v78 = 1;
      goto LABEL_77;
    }

LABEL_72:
    fpic_StopInterstitialPlayerAtCurrentItem();
    if (FirstIndexOfValue == -1)
    {
      HIDWORD(v253) = 1;
      v80 = &dword_1EAF17000;
      goto LABEL_83;
    }

    v78 = 1;
    HIDWORD(v253) = 1;
    v58 = cfa == v76;
    v80 = &dword_1EAF17000;
    if (!v58)
    {
      goto LABEL_30;
    }

LABEL_77:
    v160 = v78;
    ValueAtIndex = OUTLINED_FUNCTION_83_9(ValueAtIndex, v43, v44, v45, v46, v47, v48, v49, v235, v236, v238, v240, v241, v243, v244, v245, v248, cfa, v253, v254.value, *&v254.timescale, v254.epoch, type, v256, v257, *(&v257 + 1), v258, *(&v258 + 1), v259, v260, *rhs, *&rhs[16]);
    if ((ValueAtIndex & 0x80000000) == 0)
    {
      v78 = v160;
      goto LABEL_30;
    }

    if (v80[564])
    {
      v161 = OUTLINED_FUNCTION_51_20(ValueAtIndex, v43, v44, v45, v46, v47, v48, v49, v235, v236, v238, v240, v241, v243, v244, v245, *(&v245 + 1), v248, cfa, v253, v254.value, *&v254.timescale, v254.epoch, type, *(&type + 1), v256, v257, *(&v257 + 1), v258, *(&v258 + 1), v259, v260, *rhs, *&rhs[8], *&rhs[16], *&rhs[24], *&rhs[32], *&rhs[40], *&rhs[48], *&rhs[56], v262, *(&v262 + 1), v263, *(&v263 + 1), v264, v265, *lhs);
      value_low = LOBYTE(v254.value);
      v163 = os_log_type_enabled(v161, v254.value);
      if (OUTLINED_FUNCTION_109_0(v163))
      {
        *rhs = 136315394;
        *&rhs[4] = "fpic_InitiateSeekIntoEvent_block_invoke";
        OUTLINED_FUNCTION_6_107();
        OUTLINED_FUNCTION_38();
        _os_log_send_and_compose_impl(v220, v221, v222, v223, v224, v225, value_low, v226);
      }

      OUTLINED_FUNCTION_7();
      OUTLINED_FUNCTION_524(v227, v228, v229, v230, v231);
    }

    fpic_removeAllCurrentEventsAfterEvent(*(v1 + 56), *(*(*(v1 + 48) + 8) + 24), 0, SHIDWORD(v253), 1);
    OUTLINED_FUNCTION_62_14();
    *(v232 + 24) = 0;
    OUTLINED_FUNCTION_50_14();
    if (v233)
    {
      goto LABEL_131;
    }

    fpic_AllowIntendedEventToSeekIntoToBeBeRescheduled(*(v1 + 56));
    Copy = 0;
    *(*(v1 + 72) + 1029) = 1;
LABEL_126:
    v80 = &dword_1EAF17000;
    goto LABEL_55;
  }

  if (cfa)
  {
    v79 = 0;
    goto LABEL_72;
  }

  v78 = 0;
  v79 = 0;
  HIDWORD(v253) = 0;
  v80 = &dword_1EAF17000;
  if (FirstIndexOfValue != -1)
  {
LABEL_30:
    if (FirstIndexOfValue < 1)
    {
      Copy = 0;
LABEL_55:
      OUTLINED_FUNCTION_59_14();
      v126 = OUTLINED_FUNCTION_96_6();
      if (!fpic_MomentsAreCloseWithTolerance(v126, v127, v128) || (fpic_CurrentItemMoment(lhs), OUTLINED_FUNCTION_81_5(), v130 = *(v129 + 48), *rhs = *(v129 + 32), *&rhs[16] = v130, *&rhs[32] = *(v129 + 64), v268 = *lhs, v269 = *&lhs[16], v270 = v267, v131 = OUTLINED_FUNCTION_96_6(), !(fpic_MomentsAreCloseWithTolerance(v131, v132, v133) | BYTE4(v248))))
      {
        LODWORD(v264) = 0;
        v262 = 0u;
        v263 = 0u;
        memset(rhs, 0, sizeof(rhs));
        v134 = *(v1 + 72);
        v135 = *(*(v1 + 32) + 8);
        v136 = *(v135 + 32);
        v137 = *(v135 + 48);
        *(v134 + 968) = *(v135 + 64);
        *(v134 + 936) = v136;
        *(v134 + 952) = v137;
        if (v80[564])
        {
          LODWORD(v254.value) = 0;
          HIBYTE(v260) = 0;
          v138 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          value = v254.value;
          v140 = HIBYTE(v260);
          os_log_type_enabled(v138, HIBYTE(v260));
          OUTLINED_FUNCTION_134();
          if (v58)
          {
            v142 = v141;
          }

          else
          {
            v142 = value;
          }

          if (v142)
          {
            v143 = *(v1 + 56);
            v144 = *(v1 + 72);
            v145 = *(v144 + 952);
            v268 = *(v144 + 936);
            v269 = v145;
            v270 = *(v144 + 968);
            v146 = OUTLINED_FUNCTION_96_6();
            fpic_getMomentDesc(v146, v147);
            *lhs = 136315650;
            *&lhs[4] = "fpic_InitiateSeekIntoEvent_block_invoke";
            *&lhs[12] = 2048;
            *&lhs[14] = v143;
            *&lhs[22] = 2080;
            *&lhs[24] = rhs;
            OUTLINED_FUNCTION_82_1();
            OUTLINED_FUNCTION_38();
            _os_log_send_and_compose_impl(v148, v149, v150, v151, v152, v153, v140, v154, lhs);
          }

          OUTLINED_FUNCTION_7();
          OUTLINED_FUNCTION_238_0(v155, v156, v157, v158, v159);
        }
      }

      if ((v79 & 1) == 0)
      {
        fpic_GatePrimaryBufferingAtCurrentEvent(*(v1 + 56), 0);
      }

      fpic_GatePrimaryPlaybackAtCurrentEvent(*(v1 + 56), *(v1 + 80));
      *(*(v1 + 72) + 896) = *(v1 + 164);
      goto LABEL_12;
    }

    DWORD2(v245) = v78;
    if (v80[564])
    {
      v81 = OUTLINED_FUNCTION_51_20(ValueAtIndex, v43, v44, v45, v46, v47, v48, v49, v235, v236, v238, v240, v241, v243, v244, v245, *(&v245 + 1), v248, cfa, v253, v254.value, *&v254.timescale, v254.epoch, type, *(&type + 1), v256, v257, *(&v257 + 1), v258, *(&v258 + 1), v259, v260, *rhs, *&rhs[8], *&rhs[16], *&rhs[24], *&rhs[32], *&rhs[40], *&rhs[48], *&rhs[56], v262, *(&v262 + 1), v263, *(&v263 + 1), v264, v265, *lhs);
      v82 = LOBYTE(v254.value);
      v83 = os_log_type_enabled(v81, v254.value);
      if (OUTLINED_FUNCTION_115_1(v83))
      {
        *rhs = 136315394;
        *&rhs[4] = "fpic_InitiateSeekIntoEvent_block_invoke";
        OUTLINED_FUNCTION_6_107();
        OUTLINED_FUNCTION_38();
        _os_log_send_and_compose_impl(v84, v85, v86, v87, v88, v89, v82, v90);
      }

      OUTLINED_FUNCTION_7();
      OUTLINED_FUNCTION_414(v91, v92, v93, v94, v95);
    }

    v96 = *(v1 + 56);
    v97 = *(*(v1 + 48) + 8);
    v98 = CMBaseObjectGetDerivedStorage();
    CMBaseObjectGetDerivedStorage();
    if (FigCFArrayGetFirstIndexOfValue() == -1)
    {
      v124 = 0;
      v80 = &dword_1EAF17000;
    }

    else
    {
      v99 = *(v97 + 24);
      if (v99 && (v100 = CFGetTypeID(v99), v100 == CFArrayGetTypeID()))
      {
        Mutable = *(v97 + 24);
      }

      else
      {
        Mutable = CFArrayCreateMutable(*v77, 0, MEMORY[0x1E695E9C0]);
      }

      *&v245 = v97;
      v80 = &dword_1EAF17000;
      if (Mutable)
      {
        v102 = fpic_UnwrapEvent();
        cfb = FigPlayerInterstitialEventCopyIdentifier(v102);
        if (FigCFArrayGetFirstValue() != *(v98 + 904))
        {
          *&v103 = 136315906;
          v242 = v103;
          do
          {
            OUTLINED_FUNCTION_183_2();
            v104 = fpic_UnwrapEvent();
            v105 = FigPlayerInterstitialEventCopyIdentifier(v104);
            v113 = v105;
            if (dword_1EAF178D0)
            {
              v114 = OUTLINED_FUNCTION_51_20(v105, v106, v107, v108, v109, v110, v111, v112, v235, v236, v238, v240, v242, *(&v242 + 1), v244, v245, *(&v245 + 1), v248, cfb, v253, v254.value, *&v254.timescale, v254.epoch, type, *(&type + 1), v256, v257, *(&v257 + 1), v258, *(&v258 + 1), v259, v260, *rhs, *&rhs[8], *&rhs[16], *&rhs[24], *&rhs[32], *&rhs[40], *&rhs[48], *&rhs[56], v262, *(&v262 + 1), v263, *(&v263 + 1), v264, v265, *lhs);
              v115 = LOBYTE(v254.value);
              v116 = os_log_type_enabled(v114, v254.value);
              if (OUTLINED_FUNCTION_124_0(v116))
              {
                *rhs = v242;
                OUTLINED_FUNCTION_132_1();
                *&rhs[14] = v96;
                *&rhs[22] = 2112;
                *&rhs[24] = v113;
                *&rhs[32] = 2112;
                *&rhs[34] = cfb;
                OUTLINED_FUNCTION_87();
                OUTLINED_FUNCTION_108();
                _os_log_send_and_compose_impl(v117, v118, v119, v120, &dword_1962D5000, v114, v115, "<<<< FigPlayerInterstitial >>>> %s: %p: removing current event ID %@ up to the intended event to seek into (%@)");
              }

              OUTLINED_FUNCTION_7();
              fig_log_call_emit_and_clean_up_after_send_and_compose();
              v80 = &dword_1EAF17000;
            }

            v121 = OUTLINED_FUNCTION_183_2();
            fpic_RemoveEvent(v121, v122, Mutable, 0, SHIDWORD(v253), 1);
            FirstValue = FigCFArrayGetFirstValue();
            if (v113)
            {
              CFRelease(v113);
            }
          }

          while (FirstValue != *(v98 + 904));
        }

        *(v245 + 24) = Mutable;
        v124 = cfb;
        if (cfb)
        {
          CFRelease(cfb);
          v124 = 0;
        }
      }

      else
      {
        OUTLINED_FUNCTION_243();
        FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v235, v236, v238);
      }
    }

    OUTLINED_FUNCTION_30_8(v124, *(v1 + 40));
    OUTLINED_FUNCTION_50_14();
    if (!v125)
    {
      Copy = 0;
      v79 = BYTE8(v245);
      goto LABEL_55;
    }

LABEL_131:
    Copy = 0;
    goto LABEL_12;
  }

LABEL_83:
  v164 = *v77;
  Copy = CFArrayCreateCopy(*v77, *(*(v1 + 72) + 656));
  if (v80[564])
  {
    *lhs = 0;
    LOBYTE(v254.value) = 0;
    v165 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    v166 = *lhs;
    v167 = LOBYTE(v254.value);
    os_log_type_enabled(v165, v254.value);
    OUTLINED_FUNCTION_101_0();
    if (v58)
    {
      v169 = v168;
    }

    else
    {
      v169 = v166;
    }

    if (v169)
    {
      *rhs = 136315394;
      *&rhs[4] = "fpic_InitiateSeekIntoEvent_block_invoke";
      OUTLINED_FUNCTION_6_107();
      OUTLINED_FUNCTION_38();
      _os_log_send_and_compose_impl(v170, v171, v172, v173, v174, v175, v167, v176);
    }

    OUTLINED_FUNCTION_7();
    OUTLINED_FUNCTION_449(v177, v178, v179, v180, v181);
  }

  fpic_removeAllCurrentEventsAfterEvent(*(v1 + 56), *(*(*(v1 + 48) + 8) + 24), 0, SHIDWORD(v253), 1);
  OUTLINED_FUNCTION_62_14();
  *(v182 + 24) = 0;
  OUTLINED_FUNCTION_50_14();
  if (!v183)
  {
    OUTLINED_FUNCTION_59_14();
    v184 = OUTLINED_FUNCTION_96_6();
    if (fpic_MomentGreaterThan(v184, v185))
    {
      fpic_RescheduleEvents(*(v1 + 56), Copy);
    }

    v186 = *(v1 + 56);
    v187 = *(*(v1 + 48) + 8);
    v188 = CMBaseObjectGetDerivedStorage();
    *lhs = 0;
    if (!*(v188 + 904))
    {
      v215 = 0;
LABEL_124:
      OUTLINED_FUNCTION_62_14();
      *(v218 + 24) = v215;
      OUTLINED_FUNCTION_50_14();
      if (v219)
      {
        goto LABEL_12;
      }

      fpic_AllowIntendedEventToSeekIntoToBeBeRescheduled(*(v1 + 56));
      *(*(v1 + 72) + 1029) = 1;
      goto LABEL_126;
    }

    v189 = v188;
    v190 = *(v187 + 24);
    if (v190 && (v191 = CFGetTypeID(v190), v191 == CFArrayGetTypeID()))
    {
      v192 = *(v187 + 24);
    }

    else
    {
      v192 = CFArrayCreateMutable(v164, 0, MEMORY[0x1E695E9C0]);
    }

    cfc = v192;
    if (v192)
    {
      v193 = fpic_UnwrapEvent();
      v247 = FigPlayerInterstitialEventCopyIdentifier(v193);
      v194 = fpic_copyEventsScheduledAtSameMomentAsEvent(v186, v193, lhs);
      if (v194)
      {
LABEL_134:
        v215 = v194;
        v216 = cfc;
        goto LABEL_118;
      }

      for (i = 0; ; ++i)
      {
        Count = *lhs;
        if (*lhs)
        {
          Count = CFArrayGetCount(*lhs);
        }

        if (i >= Count)
        {
          break;
        }

        v197 = CFArrayGetValueAtIndex(*lhs, i);
        CMBaseObjectGetDerivedStorage();
        v198 = FigCFArrayGetFirstIndexOfValue();
        if (*(v189 + 904) == v197)
        {
          break;
        }

        v199 = v198;
        if (!CFSetContainsValue(*(v189 + 688), v197))
        {
          OUTLINED_FUNCTION_214_2();
          v200 = fpic_UnwrapEvent();
          v246 = FigPlayerInterstitialEventCopyIdentifier(v200);
          if (dword_1EAF178D0)
          {
            LODWORD(v254.value) = 0;
            HIBYTE(v260) = 0;
            v239 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            v237 = HIBYTE(v260);
            v201 = os_log_type_enabled(v239, HIBYTE(v260));
            if (OUTLINED_FUNCTION_109_0(v201))
            {
              *rhs = 136315906;
              OUTLINED_FUNCTION_132_1();
              *&rhs[14] = v186;
              *&rhs[22] = 2112;
              *&rhs[24] = v246;
              *&rhs[32] = 2112;
              *&rhs[34] = v247;
              OUTLINED_FUNCTION_87();
              OUTLINED_FUNCTION_108();
              _os_log_send_and_compose_impl(v202, v203, v204, v205, &dword_1962D5000, v239, v237, "<<<< FigPlayerInterstitial >>>> %s: %p: removing event ID %@ at same moment but before the intended event to seek into (%@)");
            }

            OUTLINED_FUNCTION_7();
            OUTLINED_FUNCTION_524(v206, v207, v208, v209, v210);
          }

          if (v199 == -1)
          {
            CFSetSetValue(*(v189 + 688), v197);
            v213 = OUTLINED_FUNCTION_214_2();
            v194 = fpic_RecordPastCurrentEventDuration(v213, v214);
            if (v194)
            {
              goto LABEL_134;
            }
          }

          else
          {
            v211 = OUTLINED_FUNCTION_214_2();
            fpic_RemoveEvent(v211, v212, cfc, 0, SHIDWORD(v253), 0);
          }

          if (v246)
          {
            CFRelease(v246);
          }
        }
      }

      v215 = 0;
      *(v187 + 24) = cfc;
    }

    else
    {
      OUTLINED_FUNCTION_243();
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v235, v236, v238);
      v215 = v234;
      v247 = 0;
    }

    v216 = 0;
LABEL_118:
    if (*lhs)
    {
      v217 = v216;
      CFRelease(*lhs);
      v216 = v217;
    }

    if (v216)
    {
      CFRelease(v216);
    }

    if (v247)
    {
      CFRelease(v247);
    }

    goto LABEL_124;
  }

LABEL_12:
  if (v3)
  {
    CFRelease(v3);
  }

  if (Copy)
  {
    CFRelease(Copy);
  }

  OUTLINED_FUNCTION_191();
}

@end