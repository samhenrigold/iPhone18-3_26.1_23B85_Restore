@interface ScheduleNextPreload
@end

@implementation ScheduleNextPreload

void __fpic_ScheduleNextPreload_block_invoke(void *a1)
{
  v2 = a1;
  v246 = *MEMORY[0x1E69E9840];
  v3 = *(a1[5] + 704);
  if (v3)
  {
    Count = CFArrayGetCount(v3);
    if (Count >= 1)
    {
      v5 = Count;
      v6 = 0;
      LODWORD(v195) = 0;
      HIDWORD(v175) = *(MEMORY[0x1E6960C70] + 12);
      v209 = *(MEMORY[0x1E6960C70] + 16);
      v185 = v2;
      v190 = Count;
      do
      {
        ValueAtIndex = CFArrayGetValueAtIndex(*(v2[5] + 704), v6);
        FigPlayerInterstitialPreloadCopyTargetID(ValueAtIndex);
        OUTLINED_FUNCTION_251();
        DerivedStorage = CMBaseObjectGetDerivedStorage();
        v9 = CFDictionaryContainsKey(*(DerivedStorage + 712), v1);
        if (v1)
        {
          CFRelease(v1);
        }

        if (v9)
        {
          goto LABEL_60;
        }

        v10 = v2[6];
        v11 = FigPlayerInterstitialPreloadCopyTargetID(ValueAtIndex);
        started = FigPlayerInterstitialPreloadCopyEffectiveStartDate(ValueAtIndex);
        v13 = FigPlayerInterstitialPreloadCopyEffectiveEndDate(ValueAtIndex);
        cf = started;
        v14 = MEMORY[0x19A8CCD90](started);
        TriggerOffset = FigPlayerInterstitialPreloadGetTriggerOffset(ValueAtIndex);
        v219 = v13;
        v16 = MEMORY[0x19A8CCD90](v13) + 0.5;
        v17 = CMBaseObjectGetDerivedStorage();
        v200 = *MEMORY[0x1E6960C70];
        *&v230.value = *MEMORY[0x1E6960C70];
        v231 = 0.0;
        v232 = 0;
        v230.epoch = v209;
        v225 = ValueAtIndex;
        if (!*(v17 + 160))
        {
          goto LABEL_13;
        }

        v18 = v17;
        CMBaseObjectGetDerivedStorage();
        OUTLINED_FUNCTION_2_166();
        if (v19)
        {
          v62 = FigCFWeakReferenceHolderCopyReferencedObject();
          memset(&v240, 0, sizeof(v240));
          fpic_GetCurrentlyPlayingEventPlayoutDuration();
          memset(&v238, 0, sizeof(v238));
          *lhs = v240;
          rhs = *(v18 + 456);
          v63 = CMTimeAdd(&v238, lhs, &rhs);
          v64 = *(v18 + 360);
          *lhs = *(v18 + 344);
          *&lhs[16] = v64;
          v243 = *(v18 + 376);
          OUTLINED_FUNCTION_342(v63, v65, v66, v67, v68, v69, v70, v71, v170, v175, v180, v185, v190, v195, v200, *(&v200 + 1), v209, started, v219, v225, v230.value, *&v230.timescale, v230.epoch, *&v231, v232, v233, v234.value, *&v234.timescale, v234.epoch, v235, rhs.value, *&rhs.timescale, rhs.epoch, v237, *&v238.value);
          fpic_AddTimeToMoment(lhs, &rhs, &v230);
          if (v62)
          {
            CFRelease(v62);
          }
        }

        else
        {
          fpic_CurrentItemMoment(&v230);
        }

        if (BYTE1(v232))
        {
          v20 = v14 + TriggerOffset + -0.5 > v231;
          if (v231 > v16)
          {
            v20 = 1;
          }
        }

        else
        {
LABEL_13:
          v20 = 1;
        }

        HIDWORD(v195) = v20;
        v21 = CMBaseObjectGetDerivedStorage();
        v22 = FigCFWeakReferenceHolderCopyReferencedObject();
        v23 = CFArrayGetCount(*(v21 + 656));
        if (v23 < 1)
        {
          v30 = 1;
          if (v22)
          {
            goto LABEL_21;
          }
        }

        else
        {
          v24 = v23;
          v25 = 1;
          do
          {
            v26 = CFArrayGetValueAtIndex(*(v21 + 656), v25 - 1);
            v27 = (*(v21 + 88))(v10, v22, v26);
            v28 = FigPlayerInterstitialEventCopyIdentifier(v27);
            v29 = FigCFEqual();
            if (v28)
            {
              CFRelease(v28);
            }

            v30 = v29 == 0;
            if (v25 >= v24)
            {
              break;
            }

            ++v25;
          }

          while (!v29);
          if (v22)
          {
LABEL_21:
            CFRelease(v22);
          }
        }

        v2 = v185;
        v5 = v190;
        if (v30)
        {
          v31 = BYTE1(v232) != 0;
          LODWORD(v32) = HIDWORD(v195);
        }

        else
        {
          v31 = 0;
          BYTE1(v232) = 0;
          LODWORD(v32) = 1;
        }

        v1 = v231 <= v16 && v31;
        if (v11)
        {
          CFRelease(v11);
        }

        if (cf)
        {
          CFRelease(cf);
        }

        if (v219)
        {
          CFRelease(v219);
        }

        if ((v32 & 1) == 0)
        {
          v60 = fpic_IssuePreloadRequest(*(v185 + 48), v225);
          OUTLINED_FUNCTION_30_8(v60, *(v185 + 32));
          OUTLINED_FUNCTION_50_14();
          if (v61)
          {
            return;
          }

          goto LABEL_60;
        }

        if (v195)
        {
          v33 = 0;
        }

        else
        {
          v33 = v1;
        }

        if (v33 != 1)
        {
          goto LABEL_60;
        }

        v34 = *(v185 + 48);
        v35 = CMBaseObjectGetDerivedStorage();
        value = *MEMORY[0x1E6960C70];
        timescale = *(MEMORY[0x1E6960C70] + 8);
        v36 = FigPlayerInterstitialPreloadCopyEffectiveStartDate(v225);
        v37 = MEMORY[0x19A8CCD90]();
        v38.n128_f64[0] = FigPlayerInterstitialPreloadGetTriggerOffset(v225);
        HIWORD(v243) = 0;
        v39 = v37 + v38.n128_f64[0];
        *(&v243 + 2) = 0;
        OUTLINED_FUNCTION_227_1(v40, v41, v42, v43, v44, v45, v46, v47, v38, v170, v175, v180, v185, v190, v195, v48, v200);
        v49 = CMBaseObjectGetDerivedStorage();
        v241 = 0;
        memset(&v240, 0, sizeof(v240));
        *&lhs[24] = v39;
        LOWORD(v243) = 256;
        if (!fpic_FindEventStraddlingPrimaryMoment(v34, lhs, &v241, &v240))
        {
          v51 = *(v49 + 160);
          if (v51)
          {
            v52 = CFRetain(v51);
          }

          else
          {
            v52 = 0;
          }

          v53 = *(v49 + 320);
          *lhs = *(v49 + 304);
          *&lhs[16] = v53;
          v243 = *(v49 + 336);
          FigCreateTimeWithDateAndMoment(lhs, &v230, v39);
          v1 = 0;
          value = v230.value;
          LODWORD(v32) = v230.flags;
          timescale = v230.timescale;
          epoch = v230.epoch;
          goto LABEL_48;
        }

        CMBaseObjectGetDerivedStorage();
        FirstIndexOfValue = FigCFArrayGetFirstIndexOfValue();
        if (FirstIndexOfValue == -1)
        {
          v1 = 0;
          goto LABEL_56;
        }

        v72 = FirstIndexOfValue;
        epoch = FigCFWeakReferenceHolderCopyReferencedObject();
        v73 = OUTLINED_FUNCTION_415_0();
        PerEventTrackingCount = fpic_GetPerEventTrackingCount(v73, v74);
        v238 = **&MEMORY[0x1E6960CC0];
        rhs = v238;
        if (epoch)
        {
          v32 = PerEventTrackingCount;
          if (!v72)
          {
            v76 = CMBaseObjectGetDerivedStorage();
            *lhs = *(v76 + 432);
            *&lhs[16] = *(v76 + 448);
            v230 = *(v76 + 480);
            v77 = CMTimeAdd(&v238, lhs, &v230);
            OUTLINED_FUNCTION_342(v77, v78, v79, v80, v81, v82, v83, v84, v170, v175, v180, v185, v190, v195, v200, *(&v200 + 1), v209, cf, v219, v225, v230.value, *&v230.timescale, v230.epoch, *&v231, v232, v233, v234.value, *&v234.timescale, v234.epoch, v235, rhs.value, *&rhs.timescale, rhs.epoch, v237, *&v238.value);
          }

          v220 = epoch;
          if (v32 < 1)
          {
LABEL_74:
            v52 = 0;
            v1 = 4294954622;
          }

          else
          {
            v85 = 0;
            while (1)
            {
              memset(lhs, 0, 24);
              fpic_GetEventItemDurationOnEventTimeline(v34, epoch, v241, v85, lhs);
              *&v230.timescale = *&rhs.timescale;
              v230.epoch = rhs.epoch;
              v234 = *lhs;
              v94 = OUTLINED_FUNCTION_176_2(v86, v87, v88, v89, v90, v91, v92, v93, v170, v175, v180, v185, v190, v195, v200, *(&v200 + 1), v209, cf, v220, v225, rhs.value);
              v97 = CMTimeAdd(v96, v94, v95);
              *&v230.timescale = *&v238.timescale;
              v230.epoch = v238.epoch;
              v234 = v240;
              v105 = OUTLINED_FUNCTION_176_2(v97, v98, v99, v100, v101, v102, v103, v104, v171, v176, v181, v186, v191, v196, v201, v205, v210, cfa, v221, v226, v238.value);
              v107 = CMTimeCompare(v105, v106);
              if (v107 <= 0)
              {
                OUTLINED_FUNCTION_205_1(v107, v108, v109, v110, v111, v112, v113, v114, v170, v175, v180, v185, v190, v195, v200, *(&v200 + 1), v209, cf, v220, v225, v230.value, *&v230.timescale, v230.epoch, *&v231, v232, v233, v234.value, *&v234.timescale, v234.epoch, v235, rhs.value, *&rhs.timescale, rhs.epoch, v237, v238.value, *&v238.timescale, v238.epoch, v239, *&v240.value);
                v234 = rhs;
                v123 = OUTLINED_FUNCTION_176_2(v115, v116, v117, v118, v119, v120, v121, v122, v172, v177, v182, v187, v192, v197, v202, v206, v211, cfb, v222, v227, v230.value);
                if (CMTimeCompare(v123, v124) < 0)
                {
                  break;
                }
              }

              v238 = rhs;
              if (v32 == ++v85)
              {
                goto LABEL_74;
              }
            }

            v138 = OUTLINED_FUNCTION_415_0();
            PerAssetPerEventTrackedObject = fpic_GetPerAssetPerEventTrackedObject(v138, v139, v85, @"PlaybackItem");
            CMBaseObjectGetDerivedStorage();
            v52 = 0;
            v1 = 4294954622;
            if (PerAssetPerEventTrackedObject)
            {
              OUTLINED_FUNCTION_178_3();
              if (PerAssetPerEventTrackedObject != @"DummyItem")
              {
                v142 = (*(v141 + 80))(v34, v220, PerAssetPerEventTrackedObject);
                if (v142)
                {
                  v52 = CFRetain(v142);
                  OUTLINED_FUNCTION_205_1(v52, v143, v144, v145, v146, v147, v148, v149, v170, v175, v180, v185, v190, v195, v200, *(&v200 + 1), v209, cf, v220, v225, v230.value, *&v230.timescale, v230.epoch, *&v231, v232, v233, v234.value, *&v234.timescale, v234.epoch, v235, rhs.value, *&rhs.timescale, rhs.epoch, v237, v238.value, *&v238.timescale, v238.epoch, v239, *&v240.value);
                  OUTLINED_FUNCTION_224_0(v150, v151, v152, v153, v154, v155, v156, v157, v173, v178, v183, v188, v193, v198, v203, v207, v212, cfc, v223, v228, v230.value, *&v230.timescale, v230.epoch, *&v231, v232, v233, v234.value, *&v234.timescale, v234.epoch, v235, rhs.value, *&rhs.timescale, rhs.epoch, v237, *&v238.value);
                  v166 = OUTLINED_FUNCTION_176_2(v158, v159, v160, v161, v162, v163, v164, v165, v174, v179, v184, v189, v194, v199, v204, v208, v213, cfd, v224, v229, v230.value);
                  CMTimeSubtract(v168, v166, v167);
                  v1 = 0;
                  value = *lhs;
                  LODWORD(v32) = *&lhs[12];
                  timescale = *&lhs[8];
                  epoch = *&lhs[16];
                }

                else
                {
                  v52 = 0;
                  OUTLINED_FUNCTION_178_3();
                }

                v2 = v185;
              }

              goto LABEL_76;
            }
          }

          OUTLINED_FUNCTION_178_3();
LABEL_76:
          CFRelease(v220);
          goto LABEL_77;
        }

        OUTLINED_FUNCTION_120();
        FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v170, v175, v180);
        v1 = v169;
        v52 = 0;
        OUTLINED_FUNCTION_178_3();
LABEL_77:
        v5 = v190;
        if (v1 == -12674)
        {
          goto LABEL_53;
        }

LABEL_48:
        if (!v1 && (v32 & 1) != 0)
        {
          v55 = (v35 + 720);
          *lhs = value;
          *&lhs[8] = timescale;
          *&lhs[12] = v32;
          *&lhs[16] = epoch;
          v56 = OUTLINED_FUNCTION_415_0();
          if (!fpic_isTimelineTimerScheduledForItemTime(v56, v57, v58))
          {
            StopAndReleaseTimer((v35 + 752));
            *(v35 + 744) = 0;
            *v55 = v200;
            *(v35 + 736) = v209;
          }

          if (!*(v35 + 752))
          {
            v125 = FigPlayerInterstitialPreloadCopyTargetID(v225);
            v126 = FigPlayerInterstitialPreloadCopyEffectiveEndDate(v225);
            OUTLINED_FUNCTION_227_1(v126, v127, v128, v129, v130, v131, v132, v133, v134, v170, v175, v180, v185, v190, v195, v135, v200);
            v136 = *(*(CMBaseObjectGetVTable() + 16) + 32);
            if (v136)
            {
              v136(v52, lhs);
            }

            v230.value = value;
            v230.timescale = timescale;
            v230.flags = v32;
            v230.epoch = epoch;
            fpic_scheduleTimelineTimer(v34, v55, v52, &v230);
            v1 = v137;
            if (v125)
            {
              CFRelease(v125);
            }

            if (v126)
            {
              CFRelease(v126);
            }

            v5 = v190;
            if (!v52)
            {
              goto LABEL_56;
            }

LABEL_55:
            CFRelease(v52);
            goto LABEL_56;
          }

LABEL_53:
          v1 = 0;
        }

        if (v52)
        {
          goto LABEL_55;
        }

LABEL_56:
        if (v36)
        {
          CFRelease(v36);
        }

        *(*(v2[4] + 8) + 24) = v1;
        OUTLINED_FUNCTION_50_14();
        if (v59)
        {
          return;
        }

        LODWORD(v195) = 1;
LABEL_60:
        ++v6;
      }

      while (v6 != v5);
    }
  }
}

@end