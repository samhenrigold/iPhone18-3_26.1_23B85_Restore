@interface EnsureNextEventWillPlay
@end

@implementation EnsureNextEventWillPlay

void __fpic_EnsureNextEventWillPlay_block_invoke()
{
  OUTLINED_FUNCTION_182();
  v1 = v0;
  v307 = *MEMORY[0x1E69E9840];
  v2 = v0[5];
  if (*(v2 + 1146))
  {
    v3 = *(v2 + 1145) != 0;
  }

  else
  {
    v3 = 1;
  }

  if (*(v2 + 160))
  {
    CMBaseObjectGetDerivedStorage();
    OUTLINED_FUNCTION_75_9();
    if (!v5)
    {
      OUTLINED_FUNCTION_14_59();
      if (v7)
      {
        v4 = v6;
      }
    }

    v8 = v4[1];
    v280 = *v4;
    v281 = v8;
    v9 = *(v4 + 32);
    v10 = *(v4 + 33);
    LODWORD(v279) = *(v4 + 34);
    WORD2(v279) = *(v4 + 19);
    if (v9 | v10)
    {
      DerivedStorage = CMBaseObjectGetDerivedStorage();
      if (*(DerivedStorage + 1142))
      {
        if (*(DerivedStorage + 1141))
        {
          CMBaseObjectGetDerivedStorage();
          OUTLINED_FUNCTION_2_166();
          if (!v12)
          {
            v278 = 0;
            v276 = 0u;
            v277 = 0u;
            *v301 = v280;
            v302 = v281;
            v303 = v9;
            v304 = v10;
            v305 = v279;
            v306 = WORD2(v279);
            fpic_SubtractTimeFromMoment(v301, &kLiveInterstitialAdvanceInterval, &v276);
            v13 = v1[6];
            v14 = CMBaseObjectGetDerivedStorage();
            OUTLINED_FUNCTION_71_10(v14, v15, v16, v17, v18, v19, v20, v21, v236, v242, v249, v256, v263, v269, v276);
            v29 = OUTLINED_FUNCTION_143_0(v22, v23, &kMomentsAreCloseThreshold, v24, v25, v26, v27, v28, v237, v243, v250, v257, v264, v270, v276, *(&v276 + 1), v277, *(&v277 + 1), v278, v279, v280, *(&v280 + 1), v281, *(&v281 + 1), cf, v283, time2.value, *&time2.timescale, time2.epoch, v285, rhs.value, *&rhs.timescale, rhs.epoch, v287, v288, *(&v288 + 1), v289, v290, *(&v290 + 1), v291, v292.value, *&v292.timescale, v292.epoch, type, *(&type + 1), v294, *v295, *&v295[8], *&v295[16], v296, v14[105], v14[106], v14[107], v14[108], *(v22 + 872), *&lhs[40], *&lhs[48], *&lhs[56], v298, *(&v298 + 1), v299, *(&v299 + 1), v300);
            if (!fpic_MomentsAreCloseWithTolerance(v29, v30, v31))
            {
              LODWORD(v300) = 0;
              v298 = 0u;
              v299 = 0u;
              memset(lhs, 0, sizeof(lhs));
              v49 = CMBaseObjectGetDerivedStorage();
              StopAndReleaseTimer((v49 + 816));
              *(v49 + 872) = 0;
              OUTLINED_FUNCTION_71_10(v50, v51, v52, v53, v54, v55, v56, v57, v236, v242, v249, v256, v263, v269, v276);
              OUTLINED_FUNCTION_266();
              fpic_CreateAndPrimeItemTimer();
              if (!v58)
              {
                v59 = v277;
                *(v14 + 105) = v276;
                *(v14 + 107) = v59;
                v14[109] = v278;
                if (dword_1EAF178D0)
                {
                  LODWORD(type) = 0;
                  LOBYTE(v292.value) = 0;
                  os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
                  value_low = LOBYTE(v292.value);
                  os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, v292.value);
                  OUTLINED_FUNCTION_40();
                  if (&dword_1EAF17000)
                  {
                    OUTLINED_FUNCTION_71_10(v62, v63, v64, v65, v66, v67, v68, v69, v236, v242, v249, v256, v263, v269, v276);
                    v78 = OUTLINED_FUNCTION_143_0(v70, v71, v72, v73, v74, v75, v76, v77, v238, v244, v251, v258, v265, v271, v276, *(&v276 + 1), v277, *(&v277 + 1), v278, v279, v280, *(&v280 + 1), v281, *(&v281 + 1), cf, v283, time2.value, *&time2.timescale, time2.epoch, v285, rhs.value, *&rhs.timescale, rhs.epoch, v287, v288, *(&v288 + 1), v289, v290, *(&v290 + 1), v291, v292.value, *&v292.timescale, v292.epoch, type, *(&type + 1), v294, *v295, *&v295[8], *&v295[16], v296, *lhs, *&lhs[8], *&lhs[16], *&lhs[24], *&lhs[32], *&lhs[40], *&lhs[48], *&lhs[56], v298, *(&v298 + 1), v299, *(&v299 + 1), v300);
                    fpic_getMomentDesc(v78, v79);
                    *v295 = 136315650;
                    *&v295[4] = "fpic_PrimeLiveBufferTimer";
                    *&v295[12] = 2048;
                    *&v295[14] = v13;
                    *&v295[22] = 2080;
                    v296 = lhs;
                    OUTLINED_FUNCTION_82_1();
                    v236 = v295;
                    OUTLINED_FUNCTION_38();
                    _os_log_send_and_compose_impl(v80, v81, v82, v83, v84, v85, value_low, v86);
                  }

                  OUTLINED_FUNCTION_7();
                  OUTLINED_FUNCTION_414(v87, v88, v89, v90, v91);
                }
              }
            }
          }
        }
      }

      v32 = *(CMBaseObjectGetDerivedStorage() + 1144);
      v33 = v1[5];
      if ((v32 || *(v33 + 1145) && *(v33 + 1146)) && fpic_GetPerAssetPerEventTrackedObject(v33, 0, 0, @"PlaybackItem") != 0 && v3)
      {
        CMBaseObjectGetDerivedStorage();
        OUTLINED_FUNCTION_2_166();
        if (!v34 && !*(CMBaseObjectGetDerivedStorage() + 896))
        {
          v35 = fpic_TransitionPlayback(v1[6], v1[7], 0, v1[8]);
          OUTLINED_FUNCTION_12_7(v35);
          OUTLINED_FUNCTION_2_4();
          if (*(v36 + 24))
          {
            goto LABEL_19;
          }

          v37 = OUTLINED_FUNCTION_196_2();
          fpic_SignalCurrentEvent(v37, v38);
        }
      }

      if (fpic_GetCurrentlyPlayingEvent(v1[6]))
      {
        OUTLINED_FUNCTION_29();
        if (!v7 && !*(CMBaseObjectGetDerivedStorage() + 896))
        {
          v39 = (*(v1[5] + 72))(v1[6], v1[8], *(v1[5] + 48));
          if (!v39)
          {
LABEL_86:
            OUTLINED_FUNCTION_196_2();
            fpic_PruneCurrentEventsToQueue();
            goto LABEL_19;
          }

          v40 = v39;
          v41 = v1[6];
          v42 = CMBaseObjectGetDerivedStorage();
          cf = 0;
          fpic_CopyNextItem(v40, &cf);
          v43 = cf;
          if ((*(v42 + 540) & 0x1D) == 1 || !cf)
          {
            if (!cf)
            {
LABEL_69:
              OUTLINED_FUNCTION_29();
              if (v7)
              {
                v146 = CMBaseObjectGetDerivedStorage();
                if (CFArrayGetCount(*(v146 + 656)))
                {
                  if (CFArrayGetValueAtIndex(*(v146 + 656), 0))
                  {
                    v147 = OUTLINED_FUNCTION_284();
                    v149 = v148(v147);
                    v150 = FigPlayerInterstitialEventCopyIdentifier(v149);
                    LODWORD(v301[0]) = 0;
                    FigCFDictionaryGetInt32IfPresent();
                    FigCFDictionarySetInt32();
                    if (v150)
                    {
                      CFRelease(v150);
                    }
                  }
                }

                v151 = OUTLINED_FUNCTION_196_2();
                fpic_SetInterstitialActionAtEnd(v151, v152, @"StopAtEndOfQueue");
                fpic_UnpauseInterstitialPlayer(v1[6], v40, v1[8]);
                Count = CFArrayGetCount(*(v1[5] + 656));
                if (Count >= 1)
                {
                  v153 = 0;
                  v259 = *MEMORY[0x1E695E480];
                  do
                  {
                    PerEventTrackingCount = fpic_GetPerEventTrackingCount(v1[5], v153);
                    if (PerEventTrackingCount >= 1)
                    {
                      v155 = PerEventTrackingCount;
                      for (i = 0; i != v155; ++i)
                      {
                        PerAssetPerEventTrackedObject = fpic_GetPerAssetPerEventTrackedObject(v1[5], v153, i, @"PlaybackItem");
                        if (fpic_UnwrapPlaybackItem(v1[6], PerAssetPerEventTrackedObject, v1[8]))
                        {
                          v301[0] = 0;
                          FigPlaybackItemGetFigBaseObject();
                          v159 = v158;
                          v160 = *(*(CMBaseObjectGetVTable() + 8) + 48);
                          if (v160)
                          {
                            v160(v159, @"Timebase", v259, v301);
                          }

                          v161 = OUTLINED_FUNCTION_284();
                          fpic_UnregisterInterstitialItemNotifications(v161, v162, v163);
                          CMNotificationCenterGetDefaultLocalCenter();
                          FigNotificationCenterAddWeakListener();
                          if (v301[0])
                          {
                            CMNotificationCenterGetDefaultLocalCenter();
                            FigNotificationCenterAddWeakListener();
                            CMNotificationCenterGetDefaultLocalCenter();
                            OUTLINED_FUNCTION_766();
                            FigNotificationCenterAddWeakListener();
                            CFRelease(v301[0]);
                          }
                        }
                      }
                    }

                    ++v153;
                  }

                  while (v153 != Count);
                }
              }

              goto LABEL_86;
            }
          }

          else
          {
            OUTLINED_FUNCTION_284();
            if (v43 == fpic_GetFirstCurrentItem())
            {
              v44 = (v42 + 528);
              v45 = *(*(CMBaseObjectGetVTable() + 16) + 32);
              if (v45)
              {
                v45(v43, v42 + 528);
              }

              if (dword_1EAF178D0)
              {
                *v295 = 0;
                LOBYTE(type) = 0;
                OUTLINED_FUNCTION_186_1();
                v46 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
                v47 = *v295;
                v269 = v46;
                LODWORD(v263) = type;
                if (os_log_type_enabled(v46, type))
                {
                  v48 = v47;
                }

                else
                {
                  v48 = v47 & 0xFFFFFFFE;
                }

                if (v48)
                {
                  *v301 = *v44;
                  OUTLINED_FUNCTION_104_4();
                  CMTimeGetSeconds(v101);
                  *lhs = 136315650;
                  OUTLINED_FUNCTION_182_3("fpic_StartRecordingActiveInterstitialItemPlayoutTime");
                  *&lhs[22] = 2048;
                  *&lhs[24] = v102;
                  OUTLINED_FUNCTION_82_1();
                  v236 = lhs;
                  OUTLINED_FUNCTION_108();
                  _os_log_send_and_compose_impl(v103, v104, v105, v106, v107, v269, v263, v108);
                }

                OUTLINED_FUNCTION_7();
                OUTLINED_FUNCTION_524(v109, v110, v111, v112, v113);
              }

              v114 = CMBaseObjectGetDerivedStorage();
              if (*(v114 + 1142) && *(v114 + 1141))
              {
                v115 = CMBaseObjectGetDerivedStorage();
                v294 = 0;
                memset(v295, 0, sizeof(v295));
                type = 0uLL;
                OUTLINED_FUNCTION_186_1();
                fpic_GetSeekableRange(v116, 0, v117, v118);
                memset(&v292, 0, sizeof(v292));
                v119 = CMBaseObjectGetDerivedStorage();
                if (*(v119 + 376))
                {
                  OUTLINED_FUNCTION_231_0();
                  v292.epoch = v164;
                  *&v292.value = *v165;
                }

                else if (*(v119 + 377))
                {
                  v166 = OUTLINED_FUNCTION_149_2(v119);
                  v119 = FigCreateTimeWithDateAndMoment(v301, &v292, v166);
                }

                else
                {
                  v292 = **&MEMORY[0x1E6960C70];
                }

                *v301 = type;
                *&v302 = v294;
                v167 = OUTLINED_FUNCTION_143_0(v119, v120, v121, v122, v123, v124, v125, v126, v236, v242, v249, v256, v263, v269, v276, *(&v276 + 1), v277, *(&v277 + 1), v278, v279, v280, *(&v280 + 1), v281, *(&v281 + 1), cf, v283, time2.value, *&time2.timescale, time2.epoch, v285, rhs.value, *&rhs.timescale, rhs.epoch, v287, v288, *(&v288 + 1), v289, 0, 0, 0, v292.value, *&v292.timescale, v292.epoch, type, *(&type + 1), v294, *v295, *&v295[8], *&v295[16], v296, v292.value, *&v292.timescale, v292.epoch, *&lhs[24], *&lhs[32], *&lhs[40], *&lhs[48], *&lhs[56], v298, *(&v298 + 1), v299, *(&v299 + 1), v300);
                v170 = CMTimeSubtract(v169, v167, v168);
                v289 = 0;
                v288 = 0uLL;
                *v301 = *(v115 + 408);
                *&v302 = *(v115 + 424);
                v178 = OUTLINED_FUNCTION_143_0(v170, v171, v172, v173, v174, v175, v176, v177, v239, v245, v253, v260, v266, v273, v276, *(&v276 + 1), v277, *(&v277 + 1), v278, v279, v280, *(&v280 + 1), v281, *(&v281 + 1), cf, v283, time2.value, *&time2.timescale, time2.epoch, v285, rhs.value, *&rhs.timescale, rhs.epoch, v287, 0, 0, 0, v290, *(&v290 + 1), v291, v292.value, *&v292.timescale, v292.epoch, type, *(&type + 1), v294, *v295, *&v295[8], *&v295[16], v296, *(v115 + 432), *(v115 + 440), *(v115 + 448), *&lhs[24], *&lhs[32], *&lhs[40], *&lhs[48], *&lhs[56], v298, *(&v298 + 1), v299, *(&v299 + 1), v300);
                CMTimeAdd(v180, v178, v179);
                *lhs = v288;
                *&lhs[16] = v289;
                rhs = *(v115 + 480);
                v181 = CMTimeAdd(v301, lhs, &rhs);
                v288 = *v301;
                v289 = v302;
                *v301 = v290;
                *&v302 = v291;
                v189 = OUTLINED_FUNCTION_143_0(v181, v182, v183, v184, v185, v186, v187, v188, v240, v246, v254, v261, v267, v274, v276, *(&v276 + 1), v277, *(&v277 + 1), v278, v279, v280, *(&v280 + 1), v281, *(&v281 + 1), cf, v283, time2.value, *&time2.timescale, time2.epoch, v285, 0, 0, 0, v287, v288, *(&v288 + 1), v289, v290, *(&v290 + 1), v291, v292.value, *&v292.timescale, v292.epoch, type, *(&type + 1), v294, *v295, *&v295[8], *&v295[16], v296, v288, *(&v288 + 1), v289, *&lhs[24], *&lhs[32], *&lhs[40], *&lhs[48], *&lhs[56], v298, *(&v298 + 1), v299, *(&v299 + 1), v300);
                v192 = CMTimeSubtract(v191, v189, v190);
                OUTLINED_FUNCTION_67_13(v192, v193, v194, v195, v196, v197, v198, v199, v241, v247, v255, v262, v268, v275, v276, *(&v276 + 1), v277, *(&v277 + 1), v278, v279, v280, *(&v280 + 1), v281, *(&v281 + 1), cf, v283, time2.value, *&time2.timescale, time2.epoch, v285, *&rhs.value);
                time2 = **&MEMORY[0x1E6960CC0];
                CMTimeMaximum(v301, lhs, &time2);
                *&rhs.value = *v301;
                rhs.epoch = v302;
                if (dword_1EAF178D0 >= 2)
                {
                  LODWORD(time2.value) = 0;
                  HIBYTE(v283) = 0;
                  v200 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
                  value = time2.value;
                  v202 = HIBYTE(v283);
                  os_log_type_enabled(v200, HIBYTE(v283));
                  OUTLINED_FUNCTION_125();
                  if (v7)
                  {
                    v204 = v203;
                  }

                  else
                  {
                    v204 = value;
                  }

                  if (v204)
                  {
                    *v301 = *v295;
                    OUTLINED_FUNCTION_104_4();
                    Seconds = CMTimeGetSeconds(v205);
                    *v301 = type;
                    OUTLINED_FUNCTION_104_4();
                    v208 = CMTimeGetSeconds(v207);
                    v209 = CMBaseObjectGetDerivedStorage();
                    if (*(v209 + 376))
                    {
                      OUTLINED_FUNCTION_231_0();
                      *&lhs[16] = v210;
                      *lhs = *v211;
                    }

                    else if (*(v209 + 377))
                    {
                      v212 = OUTLINED_FUNCTION_149_2(v209);
                      FigCreateTimeWithDateAndMoment(v301, lhs, v212);
                    }

                    else
                    {
                      *lhs = *MEMORY[0x1E6960C70];
                      *&lhs[16] = *(MEMORY[0x1E6960C70] + 16);
                    }

                    v213 = CMTimeGetSeconds(lhs);
                    *v301 = v288;
                    OUTLINED_FUNCTION_104_4();
                    v215 = CMTimeGetSeconds(v214);
                    *v301 = *&rhs.value;
                    OUTLINED_FUNCTION_104_4();
                    v217 = CMTimeGetSeconds(v216);
                    *lhs = 136316418;
                    *&lhs[4] = "fpic_SetLiveHorizonOnInterstitialItem";
                    *&lhs[12] = 2048;
                    *&lhs[14] = Seconds;
                    *&lhs[22] = 2048;
                    *&lhs[24] = v208;
                    *&lhs[32] = 2048;
                    *&lhs[34] = v213;
                    *&lhs[42] = 2048;
                    *&lhs[44] = v215;
                    *&lhs[52] = 2048;
                    *&lhs[54] = v217;
                    LODWORD(v248) = 62;
                    OUTLINED_FUNCTION_23();
                    _os_log_send_and_compose_impl(v218, v219, v220, v221, v222, v223, v202, v224, lhs, v248);
                  }

                  OUTLINED_FUNCTION_7();
                  OUTLINED_FUNCTION_417(v225, v226, v227, v228, v229);
                }

                *v301 = *&rhs.value;
                OUTLINED_FUNCTION_104_4();
                v232 = CMTimeCopyAsDictionary(v230, v231);
                FigPlaybackItemGetFigBaseObject();
                v234 = v233;
                v235 = *(*(CMBaseObjectGetVTable() + 8) + 56);
                if (v235)
                {
                  v235(v234, @"interstitialLiveHorizon", v232);
                }

                if (v232)
                {
                  CFRelease(v232);
                }
              }

              goto LABEL_68;
            }

            if (*(CMBaseObjectGetDerivedStorage() + 1032) != v43)
            {
              *v295 = 0;
              LOBYTE(type) = 0;
              OUTLINED_FUNCTION_186_1();
              v97 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
              v98 = *v295;
              v272 = type;
              os_log_type_enabled(v97, type);
              OUTLINED_FUNCTION_125();
              if (v7)
              {
                v100 = v99;
              }

              else
              {
                v100 = v98;
              }

              if (v100)
              {
                OUTLINED_FUNCTION_284();
                fpic_GetFirstCurrentItem();
                *lhs = 136315650;
                OUTLINED_FUNCTION_182_3("fpic_StartRecordingActiveInterstitialItemPlayoutTime");
                *&lhs[22] = v127;
                *&lhs[24] = v128;
                OUTLINED_FUNCTION_82_1();
                OUTLINED_FUNCTION_108();
                _os_log_send_and_compose_impl(v129, v130, v131, v132, v133, v97, v272, v134, lhs);
              }

              OUTLINED_FUNCTION_109();
              v138 = 0;
              goto LABEL_67;
            }

            if (dword_1EAF178D0)
            {
              *v295 = 0;
              LOBYTE(type) = 0;
              OUTLINED_FUNCTION_186_1();
              v92 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
              v93 = *v295;
              v94 = type;
              os_log_type_enabled(v92, type);
              OUTLINED_FUNCTION_125();
              if (v7)
              {
                v96 = v95;
              }

              else
              {
                v96 = v93;
              }

              if (v96)
              {
                v139 = *(v42 + 1032);
                *lhs = 136315650;
                *&lhs[4] = "fpic_StartRecordingActiveInterstitialItemPlayoutTime";
                *&lhs[12] = 2048;
                *&lhs[14] = v41;
                *&lhs[22] = 2048;
                *&lhs[24] = v139;
                OUTLINED_FUNCTION_82_1();
                OUTLINED_FUNCTION_108();
                _os_log_send_and_compose_impl(v140, v141, v142, v143, v144, v92, v94, v145, lhs);
              }

              OUTLINED_FUNCTION_109();
              v138 = 1;
LABEL_67:
              OUTLINED_FUNCTION_417(v135, v138, 1, v136, v137);
            }
          }

LABEL_68:
          CFRelease(v43);
          goto LABEL_69;
        }
      }
    }
  }

LABEL_19:
  OUTLINED_FUNCTION_181();
}

@end