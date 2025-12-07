@interface EnsurePrimaryWillResumePlaying
@end

@implementation EnsurePrimaryWillResumePlaying

void __fpic_EnsurePrimaryWillResumePlaying_block_invoke(uint64_t a1)
{
  v188 = *MEMORY[0x1E69E9840];
  CMBaseObjectGetDerivedStorage();
  OUTLINED_FUNCTION_2_166();
  if (!v5 || *(CMBaseObjectGetDerivedStorage() + 896) || *(CMBaseObjectGetDerivedStorage() + 900) || CFArrayGetCount(*(*(a1 + 48) + 656)) && fpic_DoesNextMomentBelongToCurrentDepartureMoment(*(a1 + 40)))
  {
    if ((*(*(a1 + 48) + 1076) & 1) != 0 && !*(CMBaseObjectGetDerivedStorage() + 1088))
    {
      OUTLINED_FUNCTION_210_1();
      v6 = fpic_TimeToGatePrimaryPlaybackAtCurrentEvent(0, 0, &v181);
      *&time.value = *(*(a1 + 48) + 1064);
      OUTLINED_FUNCTION_16_48(v6, v7, v8, v9, v10, v11, v12, v13, v145, v155, v165, v181);
      v21 = OUTLINED_FUNCTION_33_20(v14, v15, &kMomentsAreCloseThreshold, v16, v17, v18, v19, v20, v146, v156, v166, v181, *(&v181 + 1), v182, v183, v184, *(&v184 + 1), v185, v186, *(&v186 + 1), time.value);
      if (!faqrp_timeDifferenceIsWithinTolerance(v21, v22, v23))
      {
        if (dword_1EAF178D0)
        {
          OUTLINED_FUNCTION_197_2();
          v32 = OUTLINED_FUNCTION_97_9(v24, v25, v26, v27, v28, v29, v30, v31, v147, v157, *v167, v167[2], v167[3], v167[4]);
          OUTLINED_FUNCTION_22_20(v32, v33, v34, v35, v36, v37, v38, v39, v148, v158, v168, v175, v177, type);
          OUTLINED_FUNCTION_7_22();
          if (v2)
          {
            v40 = *(a1 + 40);
            OUTLINED_FUNCTION_135_3(*(*(a1 + 48) + 1080), v149, v159, v169, v181, *(&v181 + 1), v182, v183, v184, *(&v184 + 1), v185, v186, *(&v186 + 1), *(*(a1 + 48) + 1064), *(*(a1 + 48) + 1072), time.epoch);
            OUTLINED_FUNCTION_52_18(v41, v42, v43, v189, v44, v45, v46, v150, v160, v170, v181, v182, v183, v184, *(&v184 + 1), v185, v186, *(&v186 + 1), *&time.value, time.epoch);
            LODWORD(v183) = 136315906;
            OUTLINED_FUNCTION_28_29();
            *(&v184 + 6) = v40;
            HIWORD(v184) = v47;
            v185 = v3;
            LOWORD(v186) = v47;
            *(&v186 + 2) = v48;
            OUTLINED_FUNCTION_32();
            OUTLINED_FUNCTION_65();
            _os_log_send_and_compose_impl(v49, v50, v51, v52, v53, v54, v1, v55);
          }

          OUTLINED_FUNCTION_7();
          OUTLINED_FUNCTION_524(v58, v59, v60, v61, v62);
        }

        fpic_UngatePrimaryPlayback(*(a1 + 40));
      }
    }
  }

  else
  {
    v56 = *(a1 + 48);
    if (!*(v56 + 1184) && CMTimebaseGetRate(*(v56 + 1224)) == 0.0)
    {
      *(*(a1 + 48) + 1184) = FigGetUpTimeNanoseconds();
    }

    if (!*(CMBaseObjectGetDerivedStorage() + 888))
    {
      if (dword_1EAF178D0)
      {
        LODWORD(v181) = 0;
        BYTE4(v165) = 0;
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        v1 = 0;
        os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
        OUTLINED_FUNCTION_7_22();
        if (v2)
        {
          v64 = *(a1 + 40);
          v63 = *(a1 + 48);
          v65 = *(v63 + 160);
          OUTLINED_FUNCTION_169(v63 + 556);
          CMTimeGetSeconds(&time);
          LODWORD(v183) = 136315906;
          OUTLINED_FUNCTION_28_29();
          *(&v184 + 6) = v64;
          HIWORD(v184) = v66;
          v185 = v65;
          LOWORD(v186) = v66;
          *(&v186 + 2) = v67;
          OUTLINED_FUNCTION_32();
          OUTLINED_FUNCTION_65();
          _os_log_send_and_compose_impl(v68, v69, v70, v71, v72, v73, 0, v74);
        }

        OUTLINED_FUNCTION_7();
        OUTLINED_FUNCTION_524(v75, v76, v77, v78, v79);
      }

      v80 = fpic_TransitionPlayback(*(a1 + 40), *(a1 + 56), 1, *(a1 + 64));
      OUTLINED_FUNCTION_12_7(v80);
      OUTLINED_FUNCTION_2_4();
      if (!*(v81 + 24))
      {
        if (*(CMBaseObjectGetDerivedStorage() + 160))
        {
          OUTLINED_FUNCTION_251();
          DerivedStorage = CMBaseObjectGetDerivedStorage();
          if (*(DerivedStorage + 1142))
          {
            if (!*(DerivedStorage + 1141) && (*(a1 + 568) & 1) != 0)
            {
              OUTLINED_FUNCTION_210_1();
              fpic_GetItemEndTime();
              if (dword_1EAF178D0)
              {
                OUTLINED_FUNCTION_197_2();
                v99 = OUTLINED_FUNCTION_97_9(v91, v92, v93, v94, v95, v96, v97, v98, v145, v155, v165, SBYTE2(v165), SBYTE3(v165), SBYTE4(v165));
                OUTLINED_FUNCTION_22_20(v99, v100, v101, v102, v103, v104, v105, v106, v151, v161, v171, v176, v178, typea);
                OUTLINED_FUNCTION_7_22();
                if (v2)
                {
                  OUTLINED_FUNCTION_135_3(*(a1 + 572), v145, v155, v165, v181, *(&v181 + 1), v182, v183, v184, *(&v184 + 1), v185, v186, *(&v186 + 1), *(a1 + 556), *(a1 + 564), time.epoch);
                  OUTLINED_FUNCTION_52_18(v107, v108, v109, v190, v110, v111, v112, v152, v162, v172, v181, v182, v183, v184, *(&v184 + 1), v185, v186, *(&v186 + 1), *&time.value, time.epoch);
                  LODWORD(v183) = 136315650;
                  OUTLINED_FUNCTION_28_29();
                  *(&v184 + 6) = v3;
                  HIWORD(v184) = v113;
                  v185 = v114;
                  OUTLINED_FUNCTION_32();
                  OUTLINED_FUNCTION_65();
                  _os_log_send_and_compose_impl(v115, v116, v117, v118, v119, v120, v1, v121);
                }

                OUTLINED_FUNCTION_7();
                OUTLINED_FUNCTION_524(v122, v123, v124, v125, v126);
              }

              *&time.value = *(a1 + 556);
              OUTLINED_FUNCTION_16_48(v83, v84, v85, v86, v87, v88, v89, v90, v145, v155, v165, v181);
              v135 = OUTLINED_FUNCTION_33_20(v127, v128, v129, v130, v131, v132, v133, v134, v153, v163, v173, v181, *(&v181 + 1), v182, v183, v184, *(&v184 + 1), v185, v186, *(&v186 + 1), time.value);
              if (CMTimeCompare(v135, v136) >= 1)
              {
                OUTLINED_FUNCTION_169(MEMORY[0x1E6960C70]);
                FigCFCopyPropertyAsTime();
                OUTLINED_FUNCTION_219_1(MEMORY[0x1E6960CC0]);
                *(&v184 + 1) = *(v137 + 16);
                FigCFSetPropertyToTime();
                OUTLINED_FUNCTION_192_2(*(a1 + 160), v138, v139, v140, v141, v142, v143, v144, v154, v164, v174, v181, *(&v181 + 1), v182, v183, v184, *(&v184 + 1), v185, v186, *(&v186 + 1), *&time.value);
                FigCFSetPropertyToTime();
              }
            }
          }
        }
      }
    }
  }
}

@end