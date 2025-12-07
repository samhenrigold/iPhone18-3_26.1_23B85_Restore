uint64_t cs_pulseGeneratorFrameRate(void *a1)
{
  v1 = [a1 cameraConfiguration];
  v2 = [v1 lockedFrameRate];
  if (FigCaptureFrameRateIsValidRational(v2, v3))
  {
    return [v1 lockedFrameRate];
  }

  v5 = [v1 externalSyncFrameRate];
  if (FigCaptureFrameRateIsValidRational(v5, v6))
  {
    return [v1 externalSyncFrameRate];
  }

  else
  {
    return 0;
  }
}

uint64_t cs_timeOfFlightAssistedAutoFocusEnabled(void *a1)
{
  BoolAttribute = FigCaptureSourceGetBoolAttribute([a1 source], 0x1F219F9D0, 0);
  v3 = BoolAttribute;
  if ([&unk_1F2248D18 containsObject:{objc_msgSend(FigCaptureDeviceCoreRepairStatusesByKeys(BoolAttribute), "objectForKeyedSubscript:", @"RearCameraAssembly"}])
  {
    if (dword_1ED844050)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }
  }

  else if (v3)
  {
    [objc_msgSend(a1 "requiredFormat")];
    return 1;
  }

  return 0;
}

void captureSession_stopGraph(const void *a1, int a2, unsigned int a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7)
{
  v211 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v141 = DerivedStorage;
  if (dword_1ED844050)
  {
    v210 = 0;
    type = OS_LOG_TYPE_DEFAULT;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (*MEMORY[0x1E695FF58] == 1)
  {
    kdebug_trace();
  }

  if ((*(DerivedStorage + 769) & 1) == 0)
  {
    captureSession_waitForGraphToStart(a1, 1);
    os_unfair_lock_lock((DerivedStorage + 384));
    v136 = *(DerivedStorage + 456);
    if (v136 == 2)
    {
      v14 = a5;
      *(DerivedStorage + 472) = mach_absolute_time();
      [objc_msgSend(objc_msgSend(*(DerivedStorage + 584) objectForKeyedSubscript:{objc_msgSend(objc_msgSend(*(DerivedStorage + 584), "allKeys"), "firstObject")), "previewStitcherNode"), "primaryCameraAspectRatio"}];
      v16 = v15;
      os_unfair_lock_unlock((DerivedStorage + 384));
      v208 = 0u;
      v207 = 0u;
      v206 = 0u;
      v205 = 0u;
      v17 = [*(DerivedStorage + 784) cameraSourcePipelines];
      v18 = [v17 countByEnumeratingWithState:&v205 objects:v204 count:16];
      if (v18)
      {
        v19 = v18;
        v20 = v16;
        v21 = *v206;
        do
        {
          for (i = 0; i != v19; ++i)
          {
            if (*v206 != v21)
            {
              objc_enumerationMutation(v17);
            }

            v23 = *(*(&v205 + 1) + 8 * i);
            [-[FigCaptureCameraSourcePipeline captureDevice](v23) setStoppingForTrueVideoTransition:a3];
            v24 = [(FigCaptureCameraSourcePipeline *)v23 captureDevice];
            *&v25 = v20;
            [v24 setAspectRatioForTrueVideoTransition:v25];
          }

          v19 = [v17 countByEnumeratingWithState:&v205 objects:v204 count:16];
        }

        while (v19);
      }

      v203 = 0u;
      v202 = 0u;
      v201 = 0u;
      v200 = 0u;
      v26 = [*(v141 + 784) previewSinkPipelines];
      v27 = [v26 countByEnumeratingWithState:&v200 objects:v199 count:16];
      a5 = v14;
      if (v27)
      {
        v28 = v27;
        v29 = *v201;
        do
        {
          for (j = 0; j != v28; ++j)
          {
            if (*v201 != v29)
            {
              objc_enumerationMutation(v26);
            }

            [*(*(&v200 + 1) + 8 * j) setStoppingForModeSwitch:1 parallelGraphRebuildEnabled:a3 ispFastSwitchEnabled:a4 smartStyleRenderingEnabledInTrueVideoGraph:a7];
          }

          v28 = [v26 countByEnumeratingWithState:&v200 objects:v199 count:16];
        }

        while (v28);
      }
    }

    else
    {
      os_unfair_lock_unlock((DerivedStorage + 384));
    }

    v137 = a5;
    if (a5)
    {
      if ((a4 & 1) == 0)
      {
        v198 = 0u;
        v197 = 0u;
        v196 = 0u;
        v195 = 0u;
        v31 = *(v141 + 776);
        v32 = [v31 countByEnumeratingWithState:&v195 objects:v194 count:16];
        if (v32)
        {
          v33 = v32;
          v34 = *v196;
          do
          {
            for (k = 0; k != v33; ++k)
            {
              if (*v196 != v34)
              {
                objc_enumerationMutation(v31);
              }

              v36 = [*(v141 + 776) objectForKeyedSubscript:{*(*(&v195 + 1) + 8 * k), v132, v134}];
              if (v36)
              {
                v36 = v36[2];
              }

              [objc_msgSend(objc_msgSend(v36 "captureStream")];
            }

            v33 = [v31 countByEnumeratingWithState:&v195 objects:v194 count:16];
          }

          while (v33);
        }
      }

      v193 = 0u;
      v192 = 0u;
      v191 = 0u;
      v190 = 0u;
      v37 = [*(v141 + 784) stillImageSinkPipelineSessionStorages];
      v38 = [v37 countByEnumeratingWithState:&v190 objects:v189 count:16];
      if (v38)
      {
        v39 = v38;
        v40 = *v191;
        do
        {
          for (m = 0; m != v39; ++m)
          {
            if (*v191 != v40)
            {
              objc_enumerationMutation(v37);
            }

            v42 = *(*(&v190 + 1) + 8 * m);
            if ([objc_msgSend(objc_msgSend(v42 "primaryStillImageSinkPipeline")])
            {
              [*(v141 + 752) setGraphStateTransitionTimeoutSeconds:30];
            }

            [objc_msgSend(objc_msgSend(v42 "primaryStillImageSinkPipeline")];
          }

          v39 = [v37 countByEnumeratingWithState:&v190 objects:v189 count:16];
        }

        while (v39);
      }
    }

    if (a2 == -16403)
    {
      v188 = 0u;
      v187 = 0u;
      v186 = 0u;
      v185 = 0u;
      v43 = [*(v141 + 784) previewSinkPipelines];
      v44 = [v43 countByEnumeratingWithState:&v185 objects:v184 count:16];
      if (v44)
      {
        v45 = v44;
        v46 = *v186;
        do
        {
          for (n = 0; n != v45; ++n)
          {
            if (*v186 != v46)
            {
              objc_enumerationMutation(v43);
            }

            [*(*(&v185 + 1) + 8 * n) setStoppingForClientBackgrounded:{1, v132, v134}];
          }

          v45 = [v43 countByEnumeratingWithState:&v185 objects:v184 count:16];
        }

        while (v45);
      }
    }

    v183 = 0u;
    v182 = 0u;
    v181 = 0u;
    v180 = 0u;
    obj = [*(v141 + 784) movieFileSinkPipelines];
    v140 = [obj countByEnumeratingWithState:&v180 objects:v179 count:16];
    v144 = a1;
    if (v140)
    {
      v139 = *v181;
      v48 = 0x1E695D000uLL;
      do
      {
        v49 = 0;
        do
        {
          if (*v181 != v139)
          {
            objc_enumerationMutation(obj);
          }

          v142 = v49;
          v50 = *(*(&v180 + 1) + 8 * v49);
          v175 = 0u;
          v176 = 0u;
          v177 = 0u;
          v178 = 0u;
          v51 = [(FigCaptureMovieFileSinkPipeline *)v50 movieFileSinkNodes];
          v52 = [v51 countByEnumeratingWithState:&v175 objects:v174 count:16];
          if (v52)
          {
            v53 = v52;
            v54 = *v176;
            v145 = *v176;
            v146 = v51;
            do
            {
              for (ii = 0; ii != v53; ++ii)
              {
                if (*v176 != v54)
                {
                  objc_enumerationMutation(v51);
                }

                v56 = *(*(&v175 + 1) + 8 * ii);
                if ([v56 irisMovieProcessingSuspended])
                {
                  [v56 setIrisMovieProcessingSuspended:0];
                  v57 = [v50 sinkID];
                  *&v213[0] = @"SectionID";
                  v212[0] = v57;
                  captureSession_postNotificationWithPayload(a1, @"DidResumeIrisMovieProcessing", [*(v48 + 3872) dictionaryWithObjects:v212 forKeys:v213 count:1]);
                }

                if ([(FigCaptureMovieFileSinkPipeline *)v50 irisStagingNode])
                {
                  v58 = [(FigCaptureMovieFileSinkPipeline *)v50 irisStagingNode];
                  if (v58)
                  {
                    objc_msgSend_endIrisMovieCaptureTime(v58);
                    if ((v172 & 0x100000000) != 0)
                    {
                      v59 = [v50 sinkID];
                      v60 = CMBaseObjectGetDerivedStorage();
                      if (!_FigIsCurrentDispatchQueue())
                      {
                        captureSession_stopGraph_cold_1();
                      }

                      os_unfair_lock_lock((v60 + 384));
                      v61 = *(v60 + 504);
                      os_unfair_lock_unlock((v60 + 384));
                      v214 = 0u;
                      v215 = 0u;
                      memset(v213, 0, sizeof(v213));
                      v62 = [v61 connectionConfigurations];
                      v63 = [v62 countByEnumeratingWithState:v213 objects:v212 count:16];
                      if (v63)
                      {
                        v64 = v63;
                        v65 = **&v213[1];
LABEL_70:
                        v66 = 0;
                        while (1)
                        {
                          if (**&v213[1] != v65)
                          {
                            objc_enumerationMutation(v62);
                          }

                          v67 = [*(*(&v213[0] + 1) + 8 * v66) irisSinkConfiguration];
                          if ([objc_msgSend(v67 "sinkID")])
                          {
                            break;
                          }

                          if (v64 == ++v66)
                          {
                            v64 = [v62 countByEnumeratingWithState:v213 objects:v212 count:16];
                            if (v64)
                            {
                              goto LABEL_70;
                            }

                            goto LABEL_76;
                          }
                        }

                        v68 = [v67 preservesIrisMovieCaptureSuspendedOnSessionStop];

                        a1 = v144;
                        v48 = 0x1E695D000uLL;
                        v54 = v145;
                        v51 = v146;
                        if (v68)
                        {
                          continue;
                        }
                      }

                      else
                      {
LABEL_76:

                        a1 = v144;
                        v48 = 0x1E695D000;
                        v54 = v145;
                        v51 = v146;
                      }

                      captureSession_updateInflightConfigurationWithIrisSinkPropertyForKey(a1, [v50 sinkID], @"BeginIrisMovieCaptureHostTime", 0);
                      v69 = [v50 sinkID];
                      *&v213[0] = @"SectionID";
                      v212[0] = v69;
                      captureSession_postNotificationWithPayload(a1, @"DidResumeIrisMovieCapture", [*(v48 + 3872) dictionaryWithObjects:v212 forKeys:v213 count:1]);
                    }
                  }

                  else
                  {
                    v172 = 0;
                    v171 = 0;
                    v173 = 0;
                  }
                }
              }

              v53 = [v51 countByEnumeratingWithState:&v175 objects:v174 count:16];
            }

            while (v53);
          }

          if (a3)
          {
            mach_absolute_time();
            v70 = [(FigCaptureMovieFileSinkPipeline *)v50 fileCoordinatorNode];
            LODWORD(v71) = 1036831949;
            [v70 waitForRecordingToStopWithTimeout:v71];
            mach_absolute_time();
            v72 = (FigHostTimeToNanoseconds() / 1000) / 1000000.0;
            v73 = [(FigCaptureMovieFileSinkPipeline *)v50 primaryCaptureDevice];
            *&v74 = v72;
            [v73 setDurationAlreadyWaitedForRecordingStop:v74];
          }

          v49 = v142 + 1;
        }

        while (v142 + 1 != v140);
        v140 = [obj countByEnumeratingWithState:&v180 objects:v179 count:16];
      }

      while (v140);
    }

    DerivedStorage = v141;
    os_unfair_lock_lock((v141 + 384));
    v75 = *(v141 + 744);
    os_unfair_lock_unlock((v141 + 384));
    if (v75)
    {
      mach_absolute_time();
      v76 = dispatch_time(0, 400000000);
      v77 = dispatch_group_wait(v75, v76);
      mach_absolute_time();
      v78 = (FigHostTimeToNanoseconds() / 1000) / 1000000.0;
      v79 = -[FigCaptureMovieFileSinkPipeline primaryCaptureDevice]([objc_msgSend(*(v141 + 784) "movieFileSinkPipelines")]);
      [v79 durationAlreadyWaitedForRecordingStop];
      *&v81 = v78 + v80;
      [v79 setDurationAlreadyWaitedForRecordingStop:v81];
      if (dword_1ED844050)
      {
        v210 = 0;
        type = OS_LOG_TYPE_DEFAULT;
        v82 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        v83 = v210;
        if (os_log_type_enabled(v82, type))
        {
          v84 = v83;
        }

        else
        {
          v84 = v83 & 0xFFFFFFFE;
        }

        if (v84)
        {
          v85 = *(v141 + 104);
          LODWORD(v213[0]) = 136315906;
          *(v213 + 4) = "captureSession_stopGraph";
          WORD6(v213[0]) = 2114;
          *(v213 + 14) = v85;
          WORD3(v213[1]) = 2048;
          *(&v213[1] + 1) = v78 * 1000.0;
          LOWORD(v214) = 1024;
          *(&v214 + 2) = v77 != 0;
          LODWORD(v135) = 38;
          v133 = v213;
          _os_log_send_and_compose_impl();
        }

        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      DerivedStorage = v141;
    }

    if ([*(DerivedStorage + 784) stillImageSinkPipelineSessionStorages])
    {
      mach_absolute_time();
      v167 = 0u;
      v168 = 0u;
      v169 = 0u;
      v170 = 0u;
      v147 = [*(DerivedStorage + 784) stillImageSinkPipelineSessionStorages];
      v86 = [v147 countByEnumeratingWithState:&v167 objects:v166 count:16];
      if (v86)
      {
        v87 = v86;
        v88 = *v168;
        do
        {
          for (jj = 0; jj != v87; ++jj)
          {
            if (*v168 != v88)
            {
              objc_enumerationMutation(v147);
            }

            v90 = *(*(&v167 + 1) + 8 * jj);
            v162 = 0u;
            v163 = 0u;
            v164 = 0u;
            v165 = 0u;
            v91 = [v90 stillImageSinkPipelines];
            v92 = [v91 countByEnumeratingWithState:&v162 objects:v161 count:16];
            if (v92)
            {
              v93 = v92;
              v94 = *v163;
              do
              {
                for (kk = 0; kk != v93; ++kk)
                {
                  if (*v163 != v94)
                  {
                    objc_enumerationMutation(v91);
                  }

                  [objc_msgSend(*(*(&v162 + 1) + 8 * kk) "stillImageCoordinatorNode")];
                }

                v93 = [v91 countByEnumeratingWithState:&v162 objects:v161 count:16];
              }

              while (v93);
            }

            v159 = 0u;
            v160 = 0u;
            v157 = 0u;
            v158 = 0u;
            v96 = [v90 cameraSourcePipelines];
            v97 = [v96 countByEnumeratingWithState:&v157 objects:v156 count:16];
            if (v97)
            {
              v98 = v97;
              v99 = *v158;
              do
              {
                for (mm = 0; mm != v98; ++mm)
                {
                  if (*v158 != v99)
                  {
                    objc_enumerationMutation(v96);
                  }

                  [-[FigCaptureCameraSourcePipeline captureDevice](*(*(&v157 + 1) + 8 * mm)) setAdaptiveUnifiedBracketingController:0];
                }

                v98 = [v96 countByEnumeratingWithState:&v157 objects:v156 count:16];
              }

              while (v98);
            }
          }

          v87 = [v147 countByEnumeratingWithState:&v167 objects:v166 count:16];
        }

        while (v87);
      }

      mach_absolute_time();
      v101 = (FigHostTimeToNanoseconds() / 1000) / 1000000.0;
      DerivedStorage = v141;
      v102 = -[FigCaptureMovieFileSinkPipeline primaryCaptureDevice]([objc_msgSend(*(v141 + 784) "movieFileSinkPipelines")]);
      [v102 durationAlreadyWaitedForRecordingStop];
      *&v104 = v101 + v103;
      [v102 setDurationAlreadyWaitedForRecordingStop:v104];
      a1 = v144;
    }

    v105 = *(DerivedStorage + 752);
    if (!a3)
    {
      goto LABEL_137;
    }

    if (v137 && !*(DerivedStorage + 848))
    {
      *(DerivedStorage + 848) = [objc_msgSend(*(DerivedStorage + 752) "memoryPool")];
    }

    mach_absolute_time();
    if (dword_1ED844050)
    {
      v210 = 0;
      type = OS_LOG_TYPE_DEFAULT;
      v106 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v107 = v210;
      if (os_log_type_enabled(v106, type))
      {
        v108 = v107;
      }

      else
      {
        v108 = v107 & 0xFFFFFFFE;
      }

      if (v108)
      {
        v109 = *(v141 + 104);
        LODWORD(v213[0]) = 136315394;
        *(v213 + 4) = "captureSession_stopGraph";
        WORD6(v213[0]) = 2114;
        *(v213 + 14) = v109;
        LODWORD(v134) = 22;
        v132 = v213;
        _os_log_send_and_compose_impl();
      }

      fig_log_call_emit_and_clean_up_after_send_and_compose();
      DerivedStorage = v141;
    }

    [-[FigCaptureMicSourcePipeline sourceNode](objc_msgSend(*(DerivedStorage + 784) micSourcePipeline];
    [v105 stopSources:&v211];
    [-[FigCaptureMicSourcePipeline sourceNode](objc_msgSend(*(DerivedStorage + 784) "micSourcePipeline"))];
    mach_absolute_time();
    v110 = FigHostTimeToNanoseconds();
    if (dword_1ED844050)
    {
      v111 = v110;
      v210 = 0;
      type = OS_LOG_TYPE_DEFAULT;
      v112 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v113 = v210;
      if (os_log_type_enabled(v112, type))
      {
        v114 = v113;
      }

      else
      {
        v114 = v113 & 0xFFFFFFFE;
      }

      if (v114)
      {
        v115 = *(v141 + 104);
        LODWORD(v213[0]) = 136315650;
        *(v213 + 4) = "captureSession_stopGraph";
        WORD6(v213[0]) = 2114;
        *(v213 + 14) = v115;
        WORD3(v213[1]) = 2048;
        *(&v213[1] + 1) = ((v111 / 1000) / 1000.0);
        LODWORD(v134) = 32;
        v132 = v213;
        _os_log_send_and_compose_impl();
      }

      fig_log_call_emit_and_clean_up_after_send_and_compose();
      DerivedStorage = v141;
    }

    if (v137)
    {
LABEL_137:
      captureSession_resumeTrueVideoVISProcessingForSemaphore(a1, 0);
    }

    if (v136 != 2 || (a3 & 1) == 0)
    {
      os_unfair_lock_lock((DerivedStorage + 384));
      v116 = [*(DerivedStorage + 584) objectForKeyedSubscript:{objc_msgSend(objc_msgSend(*(DerivedStorage + 584), "allKeys"), "firstObject")}];
      [*(DerivedStorage + 584) removeAllObjects];
      os_unfair_lock_unlock((DerivedStorage + 384));
      if (v116)
      {
        [objc_msgSend(v116 "previewStitcherNode")];

        if (dword_1ED844050)
        {
          v210 = 0;
          type = OS_LOG_TYPE_DEFAULT;
          v117 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          v118 = v210;
          if (os_log_type_enabled(v117, type))
          {
            v119 = v118;
          }

          else
          {
            v119 = v118 & 0xFFFFFFFE;
          }

          if (v119)
          {
            v120 = *(v141 + 104);
            LODWORD(v213[0]) = 136316162;
            *(v213 + 4) = "captureSession_stopGraph";
            WORD6(v213[0]) = 2114;
            *(v213 + 14) = v120;
            WORD3(v213[1]) = 2048;
            *(&v213[1] + 1) = v116;
            LOWORD(v214) = 1024;
            *(&v214 + 2) = v136 == 2;
            WORD3(v214) = 1024;
            DWORD2(v214) = a3;
            LODWORD(v134) = 44;
            v132 = v213;
            _os_log_send_and_compose_impl();
          }

          fig_log_call_emit_and_clean_up_after_send_and_compose();
          DerivedStorage = v141;
        }
      }
    }

    os_unfair_lock_lock((DerivedStorage + 384));
    *(DerivedStorage + 600) = 0;
    os_unfair_lock_unlock((DerivedStorage + 384));
    if (a3 && (v137 & 1) != 0)
    {
      v121 = 0;
    }

    else
    {
      v121 = *(DerivedStorage + 848);
      *(DerivedStorage + 848) = 0;
    }

    v122 = *(DerivedStorage + 832);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __captureSession_stopGraph_block_invoke;
    block[3] = &unk_1E7998E20;
    v155 = a3;
    block[4] = v105;
    block[5] = v122;
    block[6] = v121;
    if (a3)
    {
      dispatch_async(*(DerivedStorage + 144), block);
    }

    else
    {
      __captureSession_stopGraph_block_invoke(block);
    }
  }

  *(DerivedStorage + 768) = 0;
  *(DerivedStorage + 770) = 0;
  *(DerivedStorage + 772) = 0;
  if (*(DerivedStorage + 824))
  {
    v123 = mach_absolute_time();
    v124 = *(DerivedStorage + 824);
    v150 = 0u;
    v151 = 0u;
    v152 = 0u;
    v153 = 0u;
    v125 = [*(DerivedStorage + 784) cameraSourcePipelines];
    v126 = [v125 countByEnumeratingWithState:&v150 objects:v149 count:16];
    if (v126)
    {
      v127 = v126;
      v128 = v123 - v124;
      v129 = *v151;
      do
      {
        for (nn = 0; nn != v127; ++nn)
        {
          if (*v151 != v129)
          {
            objc_enumerationMutation(v125);
          }

          -[FigCaptureCameraSourcePipeline logCameraStreamingInformationToAggd:applicationID:](*(*(&v150 + 1) + 8 * nn), v128, [*(v141 + 752) clientApplicationID]);
        }

        v127 = [v125 countByEnumeratingWithState:&v150 objects:v149 count:16];
      }

      while (v127);
    }

    DerivedStorage = v141;
    *(v141 + 824) = 0;
  }

  os_unfair_lock_lock((DerivedStorage + 384));
  v131 = *(DerivedStorage + 520);
  *(DerivedStorage + 520) = 0;
  *(DerivedStorage + 601) = 0;
  *(DerivedStorage + 603) = 0;
  *(DerivedStorage + 616) = 0;
  os_unfair_lock_unlock((DerivedStorage + 384));
}

void __captureSession_updateGraphConfiguration_block_invoke_776(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
    if (dword_1ED844050)
    {
      v7 = 0;
      v6 = 0;
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    captureSession_makeCommittedConfigurationLive(*(a1 + 40), [*(a1 + 32) configurationID], @"True Video exit");
  }
}

uint64_t captureSession_getSystemStyleFromDefaults(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  result = FigCaptureSmartStyleSettingsGetSystemStyle(*(DerivedStorage + 88));
  if (!result)
  {
    v3 = [0 isEqual:{objc_msgSend(MEMORY[0x1E695DFB0], "null")}];
    result = 0;
    if ((v3 & 1) == 0)
    {
      v4 = FigCaptureSmartStyleSettingsSystemStyle;

      return FigCaptureSmartStyleSettingsGetSystemStyle(v4);
    }
  }

  return result;
}

uint64_t cs_stereoVideoCaptureEnabled(void *a1)
{
  v10 = 0u;
  v11 = 0u;
  v8 = 0u;
  v9 = 0u;
  v1 = [a1 videoCaptureConnectionConfigurations];
  result = [v1 countByEnumeratingWithState:&v8 objects:v7 count:16];
  if (result)
  {
    v3 = result;
    v4 = *v9;
    while (2)
    {
      v5 = 0;
      do
      {
        if (*v9 != v4)
        {
          objc_enumerationMutation(v1);
        }

        v6 = *(*(&v8 + 1) + 8 * v5);
        objc_opt_class();
        if (objc_opt_isKindOfClass() & 1) != 0 && ([v6 stereoVideoCaptureEnabled])
        {
          return 1;
        }

        ++v5;
      }

      while (v3 != v5);
      result = [v1 countByEnumeratingWithState:&v8 objects:v7 count:16];
      v3 = result;
      if (result)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

uint64_t cs_initMemoryPoolSize(uint64_t a1, void *a2)
{
  v4 = FigCaptureClientApplicationIDIsCameraOrDerivative(a2, a2);
  if ([objc_msgSend(MEMORY[0x1E696AE30] "processInfo")] >> 32)
  {
    v5 = 200;
  }

  else
  {
    v5 = 1;
  }

  v6 = +[BWMemoryPool sharedMemoryPool];

  return [(BWMemoryPool *)v6 ensureMemoryAsyncWithSize:v5 withMaximizeSystemMemory:a1 useOptimizedMemorySizeDistributionsIfAvailable:v4 forClientBundleId:a2];
}

void captureSession_startMonitoringForFigAssetWriterWritingVideoNotificationIfNecessary(const void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (cs_initializeVideoRecordingWhileMultitaskingStatics_onceToken != -1)
  {
    captureSession_showRecordingVideoWhileMultitaskingDialogIfNecessary_cold_1();
  }

  if (!_FigIsCurrentDispatchQueue())
  {
    captureSession_startMonitoringForFigAssetWriterWritingVideoNotificationIfNecessary_cold_2();
  }

  os_unfair_lock_lock((DerivedStorage + 384));
  if (notify_is_valid_token(*(DerivedStorage + 664)))
  {
    LODWORD(state64) = 0;
    type[0] = OS_LOG_TYPE_DEFAULT;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    goto LABEL_19;
  }

  v3 = (DerivedStorage + 664);
  v4 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"com.apple.coremedia.figassetwriter.writing-video-%d", *(DerivedStorage + 16)];
  *(DerivedStorage + 656) = v4;
  if (dword_1ED844050)
  {
    LODWORD(state64) = 0;
    type[0] = OS_LOG_TYPE_DEFAULT;
    v5 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    v6 = *(DerivedStorage + 656);
  }

  else
  {
    v6 = v4;
  }

  global_queue = dispatch_get_global_queue(0, 0);
  v8 = [v6 UTF8String];
  handler[0] = MEMORY[0x1E69E9820];
  handler[1] = 3221225472;
  handler[2] = __captureSession_startMonitoringForFigAssetWriterWritingVideoNotificationIfNecessary_block_invoke;
  handler[3] = &__block_descriptor_48_e8_v12__0i8l;
  handler[4] = DerivedStorage;
  handler[5] = a1;
  if (notify_register_dispatch(v8, (DerivedStorage + 664), global_queue, handler))
  {
    LODWORD(state64) = 0;
    type[0] = OS_LOG_TYPE_DEFAULT;
    v11 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);
  }

  else
  {
    state64 = 0;
    if (!notify_get_state(*v3, &state64))
    {
      v9 = state64;
      if (state64 < 2)
      {
        *(DerivedStorage + 672) = state64;
        if (v9 == 1)
        {
          *(DerivedStorage + 680) = *(DerivedStorage + 401);
          v14[0] = MEMORY[0x1E69E9820];
          v14[1] = 3221225472;
          v14[2] = __captureSession_startMonitoringForFigAssetWriterWritingVideoNotificationIfNecessary_block_invoke_1197;
          v14[3] = &__block_descriptor_40_e5_v8__0l;
          v14[4] = a1;
          captureSession_performBlockOnWorkerQueue(a1, v14);
        }

        goto LABEL_14;
      }

      *type = 0;
      v15 = OS_LOG_TYPE_DEFAULT;
      v13 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT);
LABEL_19:
      fig_log_call_emit_and_clean_up_after_send_and_compose();
      goto LABEL_14;
    }

    *type = 0;
    v15 = OS_LOG_TYPE_DEFAULT;
    v12 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT);
  }

  fig_log_call_emit_and_clean_up_after_send_and_compose();

  *(DerivedStorage + 656) = 0;
  if (notify_is_valid_token(*(DerivedStorage + 664)))
  {
    notify_cancel(*v3);
    *v3 = -1;
  }

  *(DerivedStorage + 672) = 0;
LABEL_14:
  os_unfair_lock_unlock((DerivedStorage + 384));
}

FigCaptureDepthDataPipelineConfiguration *captureSession_createDepthDataPipelineConfiguration(uint64_t a1, void *a2, void *a3, char a4, uint64_t a5)
{
  v5 = a5;
  v25 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v9 = [a2 depthDataConnectionConfiguration];
  v10 = [a2 metadataObjectConnectionConfiguration];
  v11 = [a2 videoDataConnectionConfiguration];
  v12 = [v9 sourceConfiguration];
  if (!v12)
  {
    v12 = [v11 sourceConfiguration];
    if (!v12)
    {
      v12 = [v10 sourceConfiguration];
    }
  }

  v13 = v12;
  v14 = FigCaptureMetadataObjectConfigurationRequiresFaceTracking(v10);
  v15 = +[BWPipelineStage pipelineStageWithName:priority:](BWPipelineStage, "pipelineStageWithName:priority:", FigCaptureBuildPipelineStageName(@"com.apple.coremedia.capture.depthdata", [v9 sourceConfiguration]), 13);
  v16 = objc_alloc_init(FigCaptureDepthDataPipelineConfiguration);
  [(FigCaptureMovieFileSinkPipelineConfiguration *)v16 setPrimaryCameraConfiguration:v9];
  [(FigCaptureMovieFileSinkPipelineConfiguration *)v16 setPrimaryVideoConnectionConfiguration:v11];
  [(FigCaptureMovieFileSinkPipelineConfiguration *)v16 setVideoConnectionConfigurations:v10];
  [(FigCaptureMetadataSinkPipelineConfiguration *)v16 setMrcLowPowerModeEnabled:v5];
  [(FigCaptureDepthDataPipelineConfiguration *)v16 setVideoAndConvertedDepthDataOutputEnabled:v14];
  -[FigCaptureDepthDataPipelineConfiguration setDepthDataBaseRotationDegrees:](v16, [a3 depthDataBaseRotation]);
  [(FigCaptureMovieFileSinkPipelineConfiguration *)v16 setCameraDebugInfoMetadataConnectionConfiguration:v15];
  v17 = *(DerivedStorage + 36);
  v23 = *(DerivedStorage + 20);
  v24 = v17;
  v22[0] = v23;
  v22[1] = v17;
  v18 = [a3 cameraInfoByPortType];
  [(FigCaptureDepthDataPipelineConfiguration *)v16 setCameraInfoByPortType:v18];
  -[FigCaptureDepthDataPipelineConfiguration setRequiredFormat:](v16, [v13 requiredFormat]);
  [(FigCaptureMetadataSinkPipelineConfiguration *)v16 setUseSceneClassifierToGateMetadataDetection:a4];
  IntAttribute = FigCaptureSourceGetIntAttribute([v13 source], @"PearlModuleType", &v25);
  [(FigCaptureDepthDataPipelineConfiguration *)v16 setPearlModuleType:?];
  if (v25)
  {
    captureSession_createDepthDataPipelineConfiguration_cold_1(v25, &v25, v16, v22);
    return *&v22[0];
  }

  return v16;
}

uint64_t captureSession_createMultiCamClientCompositingCallback(uint64_t a1, uint64_t a2)
{
  v3 = [FigWeakReference weakReferenceToObject:a1];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __captureSession_createMultiCamClientCompositingCallback_block_invoke;
  v5[3] = &unk_1E7998F28;
  v5[4] = v3;
  v5[5] = a2;
  return [v5 copy];
}

void *__captureSession_buildMicSourcePipeline_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  *(v2 + 336) = 0;
  v3 = *(v2 + 280);
  if (v3)
  {
    v5 = 0;
    return [v3 setMXSessionProperty:*MEMORY[0x1E69B04D0] value:MEMORY[0x1E695E110] error:&v5];
  }

  else
  {
    result = *(v2 + 288);
    if (result)
    {

      return CMSessionSetProperty();
    }
  }

  return result;
}

void __captureSession_startObservingForAudiomxdDeath_block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = [*(a1 + 32) referencedObject];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (v3)
  {
    __captureSession_startObservingForAudiomxdDeath_block_invoke_cold_1(v3, DerivedStorage, v5, a1);
  }

  objc_autoreleasePoolPop(v2);
}

void __captureSession_startObservingForAudiomxdDeath_block_invoke_971(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = [*(a1 + 32) referencedObject];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (v3 && !*DerivedStorage && *(DerivedStorage + 280))
  {
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __captureSession_startObservingForAudiomxdDeath_block_invoke_2_972;
    v7[3] = &__block_descriptor_64_e5_v8__0l;
    v5 = *(a1 + 40);
    v6 = *(a1 + 48);
    v7[4] = DerivedStorage;
    v7[5] = v5;
    v7[6] = v3;
    v7[7] = v6;
    captureSession_performBlockOnWorkerQueueSynchronously(v3, v7);
  }

  objc_autoreleasePoolPop(v2);
}

uint64_t __captureSession_configureStillImageSinkNode_block_invoke(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  captureSession_handleCapturedStillImage(*(a1 + 64), *(a1 + 32), *(a1 + 40), a2, a3, a4);
  [*(a1 + 48) clientReceivedPayloadForSettings:a4 status:a3 clientIsMidStillImageGraph:0];
  v7 = *(a1 + 56);

  return [v7 clientReceivedPayloadForSettings:a4 status:a3 clientIsMidStillImageGraph:0];
}

void captureSession_handleCapturedStillImage(const void *a1, void *a2, void *a3, void *a4, unsigned int a5, void *a6)
{
  v559[0] = a5;
  v557 = 0;
  v558 = 0;
  v555 = 0;
  v556 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v511 = a2;
  v521 = a3;
  v12 = [a2 stillImageSinkPipelineSessionStorageWithSinkID:a3];
  v13 = [v12 primaryStillImageSinkPipeline];
  v523 = [v12 primaryCameraSourcePipeline];
  pixelBuffer = [(FigCaptureCameraSourcePipeline *)v523 captureSourceVideoFormat];
  v527 = [a6 outputFormat];
  LODWORD(v507) = FigCapturePixelFormatIsBayerRaw([a6 rawOutputFormat]);
  v14 = v507 | FigCapturePixelFormatIsDemosaicedRaw([a6 rawOutputFormat]);
  objc_opt_class();
  HIDWORD(v506) = objc_opt_isKindOfClass();
  v518 = a1;
  v519 = v12;
  v529 = a6;
  v520 = v13;
  target = a4;
  if (a5)
  {
    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", a5, v499, v480, v482, v484, v485, v486, v487);
    v517 = 0;
    HIDWORD(v510) = 0;
    v236 = 0;
    goto LABEL_292;
  }

  if (!a4)
  {
    v346 = v499;
    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", 0, v499, v480, v482, v484, v485, v486, v487);
    v349 = qword_1ED844048;
    v350 = 7765;
LABEL_435:
    v351 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v349, 0xFFFFBFE0, "<<<< FigCaptureSession >>>>", v350, v346, v347, v348, v478);
    v517 = 0;
    HIDWORD(v510) = 0;
    v236 = 0;
    v559[0] = v351;
    goto LABEL_292;
  }

  if (!a6)
  {
    v346 = v499;
    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", 0, v499, v480, v482, v484, v485, v486, v487);
    v349 = qword_1ED844048;
    v350 = 7766;
    goto LABEL_435;
  }

  v515 = v14;
  v517 = [CMGetAttachment(a4 @"StillImageProcessingFlags"];
  isEqualToString = objc_msgSend_isEqualToString_(*(DerivedStorage + 88));
  if (([v12 stillImagesAreOptimizedForOfflineVideoStabilization] & 1) != 0 || isEqualToString)
  {
    v16 = *off_1E798A318;
    v17 = [objc_alloc(MEMORY[0x1E695DF90]) initWithDictionary:{CMGetAttachment(a4, *off_1E798A318, 0)}];
    if ([v12 stillImagesAreOptimizedForOfflineVideoStabilization])
    {
      ClientSpecifiedMetadataForOfflineStillImageVideoStabilization = FigCaptureMetadataUtilitiesCreateClientSpecifiedMetadataForOfflineStillImageVideoStabilization(a4);
      if (ClientSpecifiedMetadataForOfflineStillImageVideoStabilization)
      {
        [v17 addEntriesFromDictionary:ClientSpecifiedMetadataForOfflineStillImageVideoStabilization];

        LODWORD(ClientSpecifiedMetadataForOfflineStillImageVideoStabilization) = 1;
      }

      if (!isEqualToString)
      {
        goto LABEL_13;
      }
    }

    else
    {
      LODWORD(ClientSpecifiedMetadataForOfflineStillImageVideoStabilization) = 0;
      if (!isEqualToString)
      {
        goto LABEL_13;
      }
    }

    ClientSpecifiedMetadataForAggd = FigCaptureMetadataUtilitiesCreateClientSpecifiedMetadataForAggd(a4);
    if (ClientSpecifiedMetadataForAggd)
    {
      v20 = ClientSpecifiedMetadataForAggd;
      [v17 addEntriesFromDictionary:ClientSpecifiedMetadataForAggd];

LABEL_16:
      CMSetAttachment(a4, v16, v17, 1u);
LABEL_17:

      goto LABEL_18;
    }

LABEL_13:
    if (!ClientSpecifiedMetadataForOfflineStillImageVideoStabilization)
    {
      goto LABEL_17;
    }

    goto LABEL_16;
  }

LABEL_18:
  v514 = [CMGetAttachment(a4 @"PhotoManifest"];
  LODWORD(v510) = FigCaptureMetadataUtilitiesShouldIncludeDiagnosticMetadata() != 0;
  IsCameraOrDerivative = captureSession_clientIsCameraOrDerivative(a1);
  v22 = [(FigCaptureCameraSourcePipeline *)v523 captureSource];
  v23 = cs_cameraSensorOrientationCompensationDegreesCW(v22, [objc_msgSend(v12 "primaryStillImageConnectionConfiguration")]);
  v516 = BWCameraSensorOrientationCompensationDegreesCWForRequestedSettings(a6, v23, IsCameraOrDerivative);
  if (v516 && dword_1ED844050)
  {
    LODWORD(v553.value) = 0;
    type[0] = OS_LOG_TYPE_DEFAULT;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v25 = v517 & 0x1000;
  HIDWORD(v507) = v25;
  if (!v527)
  {
    v48 = 0;
    v528 = 0;
    v14 = v515;
    goto LABEL_245;
  }

  v26 = [a6 outputFileType];
  v27 = [a6 outputRotationDegrees];
  v28 = [a6 outputMirroring];
  v29 = [-[FigCaptureCameraSourcePipeline captureDevice](v523) hasFlash];
  v30 = a4;
  v31 = [a6 flashMode];
  StillImageMetadataInSettingsForSampleBuffer = FigCaptureMetadataUtilitiesGetStillImageMetadataInSettingsForSampleBuffer(a6, v30);
  IrisAssetIdentifierForSettingsAndSampleBuffer = FigCaptureMetadataUtilitiesGetIrisAssetIdentifierForSettingsAndSampleBuffer(a6, v30);
  v34 = [v529 imageGroupIdentifier];
  v35 = objc_msgSend_time(v514);
  v481 = IrisAssetIdentifierForSettingsAndSampleBuffer;
  a6 = v529;
  MetadataAttachments = FigCaptureMetadataUtilitiesCreateMetadataAttachments(v30, v26, v27, v28, v29, 1, v31, v510, 1, 0, 1, 1, 0, 0, 0, StillImageMetadataInSettingsForSampleBuffer, v481, v34, 0, v35, v516);
  v37 = [MEMORY[0x1E695DF90] dictionary];
  [v37 setObject:v521 forKeyedSubscript:@"SectionID"];
  [v37 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithLongLong:", objc_msgSend(v529, "settingsID")), @"SettingsID"}];
  v38 = [v529 outputWidth];
  v39 = [v529 outputHeight];
  v512 = MetadataAttachments;
  v528 = v37;
  if ([v529 outputFormat] == 1785750887 || objc_msgSend(v529, "outputFormat") == 1752589105)
  {
    a4 = target;
    v40 = CMGetAttachment(target, @"EncodedImageSurface", 0);
    v41 = CMGetAttachment(target, @"EncodedImageSurfaceSize", 0);
    if ([v529 payloadType] == 1)
    {
      v42 = CMGetAttachment(target, @"EncodedImageCodecType", 0);
      v43 = CMGetAttachment(target, @"EncodedImageFileType", 0);
      v44 = kFigCaptureSessionNotificationPayloadKey_Surface;
      if ((v517 & 0x1000) != 0)
      {
        v44 = kFigCaptureSessionNotificationPayloadKey_DeferredPhotoProxySurface;
        v45 = kFigCaptureSessionNotificationPayloadKey_DeferredPhotoProxySurfaceSize;
      }

      else
      {
        v45 = kFigCaptureSessionNotificationPayloadKey_SurfaceSize;
      }

      if ((v517 & 0x1000) != 0)
      {
        v46 = kFigCaptureSessionNotificationPayloadKey_DeferredPhotoProxyCodec;
      }

      else
      {
        v46 = kFigCaptureSessionNotificationPayloadKey_PhotoCodec;
      }

      if ((v517 & 0x1000) != 0)
      {
        v47 = kFigCaptureSessionNotificationPayloadKey_DeferredPhotoProxyFileType;
      }

      else
      {
        v47 = kFigCaptureSessionNotificationPayloadKey_PhotoFileType;
      }

      [v528 setObject:v40 forKeyedSubscript:*v44];
      [v528 setObject:v41 forKeyedSubscript:*v45];
      [v528 setObject:v42 forKeyedSubscript:*v46];
      [v528 setObject:v43 forKeyedSubscript:*v47];
      a1 = v518;
      v48 = v512;
      if (v512)
      {
        [v528 setObject:v512 forKeyedSubscript:@"Metadata"];
      }

      memset(&v553, 0, sizeof(v553));
      a4 = target;
      CMSampleBufferGetPresentationTimeStamp(&v553, target);
      v49 = *MEMORY[0x1E695E480];
      time = v553;
      v50 = CMTimeCopyAsDictionary(&time, v49);
      a6 = v529;
      v14 = v515;
      if (v50)
      {
        v51 = v50;
        [v528 setObject:v50 forKeyedSubscript:@"PresentationTimestamp"];
      }

      [v528 setObject:objc_msgSend(v529 forKeyedSubscript:{"captureRequestIdentifier"), @"CaptureRequestIdentifier"}];
      [v528 setObject:objc_msgSend(v514 forKeyedSubscript:{"photoIdentifier"), @"PhotoIdentifier"}];
      v12 = v519;
      if (![v529 depthDataDeliveryEnabled] || (objc_msgSend(v529, "embedsDepthDataInImage") & 1) != 0)
      {
        goto LABEL_52;
      }

      AttachedMedia = BWSampleBufferGetAttachedMedia(target, @"Depth");
      if (!AttachedMedia || (v53 = CMSampleBufferGetImageBuffer(AttachedMedia)) == 0)
      {
LABEL_48:
        v56 = CMGetAttachment(target, *off_1E798D2B8, 0);
        if (v56)
        {
          v57 = v56;
          if (v516)
          {
            v57 = cs_rotateDepthMetadata(v56, v516);
          }

          [v528 setObject:v57 forKeyedSubscript:@"DepthMetadata"];
        }

LABEL_52:
        if ([v529 portraitEffectsMatteDeliveryEnabled] && (objc_msgSend(v529, "embedsPortraitEffectsMatteInImage") & 1) == 0)
        {
          v58 = BWSampleBufferGetAttachedMedia(target, 0x1F21AABB0);
          v59 = v58;
          if (v58)
          {
            ImageBuffer = CMSampleBufferGetImageBuffer(v58);
            if (ImageBuffer)
            {
              v61 = ImageBuffer;
              *type = 0;
              if (v516)
              {
                v559[0] = cs_rotatePixelBuffer(ImageBuffer, v516, @"PortraitEffectsMatte", &v555, type);
                if (v559[0])
                {
                  *v551 = 0;
                  v550 = OS_LOG_TYPE_DEFAULT;
                  v441 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
                  v442 = *v551;
                  if (os_log_type_enabled(v441, v550))
                  {
                    v443 = v442;
                  }

                  else
                  {
                    v443 = v442 & 0xFFFFFFFE;
                  }

                  if (!v443)
                  {
                    goto LABEL_645;
                  }

                  goto LABEL_643;
                }

                v61 = *type;
              }

              IOSurface = CVPixelBufferGetIOSurface(v61);
              if (IOSurface)
              {
                [v528 setObject:IOSurface forKeyedSubscript:@"PortraitEffectsMatteSurface"];
              }

              CVPixelBufferRelease(*type);
            }
          }

          v63 = CMGetAttachment(v59, *off_1E798D2D8, 0);
          if (v63)
          {
            [v528 setObject:v63 forKeyedSubscript:@"PortraitEffectsMatteMetadata"];
          }
        }

        if (![objc_msgSend(v529 "enabledSemanticSegmentationMatteURNs")] || (objc_msgSend(v529, "embedsSemanticSegmentationMattesInImage") & 1) != 0)
        {
          goto LABEL_110;
        }

        v64 = [v529 enabledSemanticSegmentationMatteURNs];
        if ([v64 containsObject:*MEMORY[0x1E69917E0]])
        {
          v65 = BWSampleBufferGetAttachedMedia(target, @"PersonSemanticsHair");
          v66 = v65;
          if (v65)
          {
            v67 = CMSampleBufferGetImageBuffer(v65);
            if (v67)
            {
              v68 = v67;
              *type = 0;
              if (v516)
              {
                v559[0] = cs_rotatePixelBuffer(v67, v516, @"HairMatte", &v555, type);
                if (v559[0])
                {
                  *v551 = 0;
                  v550 = OS_LOG_TYPE_DEFAULT;
                  v444 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
                  v445 = *v551;
                  if (os_log_type_enabled(v444, v550))
                  {
                    v446 = v445;
                  }

                  else
                  {
                    v446 = v445 & 0xFFFFFFFE;
                  }

                  if (!v446)
                  {
                    goto LABEL_645;
                  }

                  goto LABEL_643;
                }

                v68 = *type;
              }

              v69 = CVPixelBufferGetIOSurface(v68);
              if (v69)
              {
                [v528 setObject:v69 forKeyedSubscript:@"HairSegmentationMatteSurface"];
              }

              CVPixelBufferRelease(*type);
            }
          }

          v70 = CMGetAttachment(v66, *off_1E798D2E0, 0);
          if (v70)
          {
            [v528 setObject:v70 forKeyedSubscript:@"HairSegmentationMatteMetadata"];
          }
        }

        v71 = [v529 enabledSemanticSegmentationMatteURNs];
        if ([v71 containsObject:*MEMORY[0x1E69917E8]])
        {
          v72 = BWSampleBufferGetAttachedMedia(target, @"PersonSemanticsSkin");
          v73 = v72;
          if (v72)
          {
            v74 = CMSampleBufferGetImageBuffer(v72);
            if (v74)
            {
              v75 = v74;
              *type = 0;
              if (v516)
              {
                v559[0] = cs_rotatePixelBuffer(v74, v516, @"SkinMatte", &v555, type);
                if (v559[0])
                {
                  *v551 = 0;
                  v550 = OS_LOG_TYPE_DEFAULT;
                  v447 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
                  v448 = *v551;
                  if (os_log_type_enabled(v447, v550))
                  {
                    v449 = v448;
                  }

                  else
                  {
                    v449 = v448 & 0xFFFFFFFE;
                  }

                  if (!v449)
                  {
                    goto LABEL_645;
                  }

                  goto LABEL_643;
                }

                v75 = *type;
              }

              v76 = CVPixelBufferGetIOSurface(v75);
              if (v76)
              {
                [v528 setObject:v76 forKeyedSubscript:@"SkinSegmentationMatteSurface"];
              }

              CVPixelBufferRelease(*type);
            }
          }

          v77 = CMGetAttachment(v73, *off_1E798D2E0, 0);
          if (v77)
          {
            [v528 setObject:v77 forKeyedSubscript:@"SkinSegmentationMatteMetadata"];
          }
        }

        v78 = [v529 enabledSemanticSegmentationMatteURNs];
        if ([v78 containsObject:*MEMORY[0x1E69917F8]])
        {
          v79 = BWSampleBufferGetAttachedMedia(target, @"PersonSemanticsTeeth");
          v80 = v79;
          if (v79)
          {
            v81 = CMSampleBufferGetImageBuffer(v79);
            if (v81)
            {
              v82 = v81;
              *type = 0;
              if (v516)
              {
                v559[0] = cs_rotatePixelBuffer(v81, v516, @"TeethMatte", &v555, type);
                if (v559[0])
                {
                  *v551 = 0;
                  v550 = OS_LOG_TYPE_DEFAULT;
                  v450 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
                  v451 = *v551;
                  if (os_log_type_enabled(v450, v550))
                  {
                    v452 = v451;
                  }

                  else
                  {
                    v452 = v451 & 0xFFFFFFFE;
                  }

                  if (!v452)
                  {
                    goto LABEL_645;
                  }

                  goto LABEL_643;
                }

                v82 = *type;
              }

              v83 = CVPixelBufferGetIOSurface(v82);
              if (v83)
              {
                [v528 setObject:v83 forKeyedSubscript:@"TeethSegmentationMatteSurface"];
              }

              CVPixelBufferRelease(*type);
            }
          }

          v84 = CMGetAttachment(v80, *off_1E798D2E0, 0);
          if (v84)
          {
            [v528 setObject:v84 forKeyedSubscript:@"TeethSegmentationMatteMetadata"];
          }
        }

        v85 = [v529 enabledSemanticSegmentationMatteURNs];
        if (![v85 containsObject:*MEMORY[0x1E69917D8]])
        {
          goto LABEL_110;
        }

        v86 = BWSampleBufferGetAttachedMedia(target, @"PersonSemanticsGlasses");
        v87 = v86;
        if (!v86)
        {
          goto LABEL_108;
        }

        v88 = CMSampleBufferGetImageBuffer(v86);
        if (!v88)
        {
          goto LABEL_108;
        }

        v89 = v88;
        *type = 0;
        if (!v516)
        {
LABEL_105:
          v90 = CVPixelBufferGetIOSurface(v89);
          if (v90)
          {
            [v528 setObject:v90 forKeyedSubscript:@"GlassesSegmentationMatteSurface"];
          }

          CVPixelBufferRelease(*type);
LABEL_108:
          v91 = CMGetAttachment(v87, *off_1E798D2E0, 0);
          if (v91)
          {
            [v528 setObject:v91 forKeyedSubscript:@"GlassesSegmentationMatteMetadata"];
          }

LABEL_110:
          if ([v529 cameraCalibrationDataDeliveryEnabled])
          {
            if (![v528 objectForKeyedSubscript:@"DepthMetadata"])
            {
              v92 = CMGetAttachment(target, @"CameraCalibrationDataMetadata", 0);
              if (v92)
              {
                v93 = v92;
                v94 = v528;
                v95 = @"DepthMetadata";
LABEL_114:
                [v94 setObject:v93 forKeyedSubscript:v95];
                goto LABEL_115;
              }
            }
          }

          goto LABEL_115;
        }

        v559[0] = cs_rotatePixelBuffer(v88, v516, @"GlassesMatte", &v555, type);
        if (!v559[0])
        {
          v89 = *type;
          goto LABEL_105;
        }

        *v551 = 0;
        v550 = OS_LOG_TYPE_DEFAULT;
        v453 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        v454 = *v551;
        if (os_log_type_enabled(v453, v550))
        {
          v455 = v454;
        }

        else
        {
          v455 = v454 & 0xFFFFFFFE;
        }

        if (!v455)
        {
          goto LABEL_645;
        }

LABEL_643:
        v474 = BWStringFromPixelBuffer();
        *&v475 = COERCE_DOUBLE([v529 settingsID]);
        LODWORD(cf.value) = 136315650;
        *(&cf.value + 4) = "captureSession_handleCapturedStillImage";
        LOWORD(cf.flags) = 2112;
        *(&cf.flags + 2) = v474;
        HIWORD(cf.epoch) = 2048;
        v537 = *&v475;
        LODWORD(v479) = 32;
        p_cf = &cf;
        goto LABEL_644;
      }

      v54 = v53;
      *type = 0;
      if (!v516)
      {
LABEL_45:
        v55 = CVPixelBufferGetIOSurface(v54);
        if (v55)
        {
          [v528 setObject:v55 forKeyedSubscript:@"DepthDataSurface"];
        }

        CVPixelBufferRelease(*type);
        goto LABEL_48;
      }

      v559[0] = cs_rotatePixelBuffer(v53, v516, @"DepthData", &v555, type);
      if (!v559[0])
      {
        v54 = *type;
        goto LABEL_45;
      }

      *v551 = 0;
      v550 = OS_LOG_TYPE_DEFAULT;
      v436 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v437 = *v551;
      if (os_log_type_enabled(v436, v550))
      {
        v438 = v437;
      }

      else
      {
        v438 = v437 & 0xFFFFFFFE;
      }

      if (!v438)
      {
        goto LABEL_645;
      }

LABEL_585:
      v439 = BWStringFromPixelBuffer();
      *&v440 = COERCE_DOUBLE([v529 settingsID]);
      LODWORD(cf.value) = 136315650;
      *(&cf.value + 4) = "captureSession_handleCapturedStillImage";
      LOWORD(cf.flags) = 2112;
      *(&cf.flags + 2) = v439;
      HIWORD(cf.epoch) = 2048;
      v537 = *&v440;
      LODWORD(v479) = 32;
      p_cf = &cf;
LABEL_644:
      _os_log_send_and_compose_impl();
LABEL_645:
      fig_log_call_emit_and_clean_up_after_send_and_compose();
      a1 = v518;
      v12 = v519;
      a6 = v529;
      a4 = target;
      goto LABEL_291;
    }

    a1 = v518;
    v12 = v519;
    if ([v529 payloadType])
    {
      v14 = v515;
      v48 = v512;
      goto LABEL_244;
    }

    memset(&time, 0, sizeof(time));
    CMSampleBufferGetPresentationTimeStamp(&time, target);
    v553.value = __PAIR64__(v39, v38);
    v101 = [v41 longValue];
    v102 = [v529 outputFormat];
    v103 = [v519 stillImageFormatDescriptionPtr];
    cf = time;
    v104 = BWSampleBufferCreateFromEncodedImageSurface(v40, v101, v102, v553.value, &cf, v103, &v558);
    v559[0] = v104;
    if (v104)
    {
      LODWORD(p_cf) = v104;
      FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", p_cf, v499, v480, v482, v484, v485, v486, v487);
LABEL_291:
      HIDWORD(v510) = HIDWORD(v507) >> 12;
      v14 = v515;
      v236 = v512;
LABEL_292:

      v237 = 0;
      v528 = 0;
      v238 = 0;
      v239 = 0;
      goto LABEL_358;
    }

    v105 = [(FigCaptureCameraSourcePipeline *)v523 captureSource];
    v48 = v512;
    captureSession_transferAndSanitizeOutputBufferAttachments(v105, target, v558, v512, v529);
    [v528 setObject:v558 forKeyedSubscript:@"SampleBuffer"];
LABEL_152:
    v14 = v515;
    goto LABEL_244;
  }

  if ([v529 bracketType])
  {
    v100 = [v529 bracketImageCount];
  }

  else
  {
    v100 = 1;
  }

  if ([objc_msgSend(v529 "bravoConstituentImageDeliveryDeviceTypes")])
  {
    v100 = v100 * [objc_msgSend(v529 "bravoConstituentImageDeliveryDeviceTypes")];
  }

  if ([v529 constantColorEnabled])
  {
    v100 = v100 + [v529 constantColorFallbackPhotoDeliveryEnabled];
  }

  v106 = cs_figCaptureColorSpaceFromSourcePipeline(v523);
  v107 = +[BWVideoFormat colorSpacePropertiesForSourceThatSupportsWideColor:sourceColorSpace:sourcePixelFormat:sourceDimensions:requestedPixelFormat:](BWVideoFormat, "colorSpacePropertiesForSourceThatSupportsWideColor:sourceColorSpace:sourcePixelFormat:sourceDimensions:requestedPixelFormat:", [-[FigCaptureCameraSourcePipeline captureDevice](v523) supportsWideColor], v106, -[__CVBuffer format](pixelBuffer, "format"), -[__CVBuffer dimensions](pixelBuffer, "dimensions"), objc_msgSend(v529, "outputFormat"));
  [v529 outputFormat];
  v12 = v519;
  v559[0] = [objc_msgSend(v519 "pixelConverter")];
  a1 = v518;
  a4 = target;
  if (v559[0])
  {
    goto LABEL_291;
  }

  v108 = [v519 pixelConverter];
  v559[0] = [v108 convertSampleBuffer:target cropRect:&v558 outputSampleBuffer:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
  if (v559[0])
  {
    goto LABEL_291;
  }

  value = v558;
  v48 = v512;
  if (!v558)
  {
    goto LABEL_152;
  }

  if (v516)
  {
    time.value = 0;
    cf.value = 0;
    v553.value = 0;
    v110 = CMSampleBufferGetImageBuffer(v558);
    if (v110)
    {
      v111 = cs_rotatePixelBuffer(v110, v516, @"MainImage", &v555, &time);
      if (v111)
      {
        v113 = v111;
        LODWORD(p_cf) = v111;
        FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", qword_1ED844048, "<<<< FigCaptureSession >>>> Fig", "err == 0 ", "bail", 0, "FigCaptureSession.m", 7684, p_cf);
      }

      else
      {
        CopyWithNewPixelBuffer = BWCMSampleBufferCreateCopyWithNewPixelBuffer(value, time.value, &v553, &cf);
        v113 = CopyWithNewPixelBuffer;
        if (CopyWithNewPixelBuffer)
        {
          LODWORD(p_cf) = CopyWithNewPixelBuffer;
          FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", qword_1ED844048, "<<<< FigCaptureSession >>>> Fig", "err == 0 ", "bail", 0, "FigCaptureSession.m", 7687, p_cf);
        }
      }
    }

    else
    {
      LODWORD(p_cf) = 0;
      FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", p_cf, v499, v480, v482, v484, v485, v486, v487);
      v113 = -12780;
    }

    CVPixelBufferRelease(time.value);
    if (v553.value)
    {
      CFRelease(v553.value);
    }

    value = cf.value;
    if (v113)
    {
      if (cf.value)
      {
        CFRelease(cf.value);
      }

      v559[0] = v113;
      LODWORD(v553.value) = 0;
      type[0] = OS_LOG_TYPE_DEFAULT;
      v114 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v115 = v553.value;
      if (os_log_type_enabled(v114, type[0]))
      {
        v116 = v115;
      }

      else
      {
        v116 = v115 & 0xFFFFFFFE;
      }

      if (v116)
      {
        CMSampleBufferGetImageBuffer(v558);
        v117 = BWStringFromPixelBuffer();
        *&v118 = COERCE_DOUBLE([v529 settingsID]);
        LODWORD(cf.value) = 136315650;
        *(&cf.value + 4) = "captureSession_handleCapturedStillImage";
        LOWORD(cf.flags) = 2112;
        *(&cf.flags + 2) = v117;
        HIWORD(cf.epoch) = 2048;
        v537 = *&v118;
        LODWORD(v479) = 32;
        p_cf = &cf;
        _os_log_send_and_compose_impl();
      }

      a4 = target;
      fig_log_call_emit_and_clean_up_after_send_and_compose();
      goto LABEL_291;
    }

    v559[0] = 0;
    if (v558)
    {
      CFRelease(v558);
    }

    v558 = value;
  }

  FigCaptureMetadataUtilitiesAddSampleBufferMetadataUsedByVideoEncoderToPixelBuffer(value);
  v119 = CMSampleBufferGetImageBuffer(v558);
  if (v119)
  {
    v120 = v119;
    if ([v519 colorInfo])
    {
      if (!v107)
      {
        CVBufferSetAttachments(v120, [v519 colorInfo], kCVAttachmentMode_ShouldPropagate);
      }
    }
  }

  v14 = v515;
  if ([v529 payloadType])
  {
    if ([v529 payloadType] == 1)
    {
      v121 = CMSampleBufferGetImageBuffer(v558);
      v122 = CVPixelBufferGetIOSurface(v121);
      AllocSize = IOSurfaceGetAllocSize(v122);
      memset(&v553, 0, sizeof(v553));
      CMSampleBufferGetPresentationTimeStamp(&v553, v558);
      v124 = *MEMORY[0x1E695E480];
      time = v553;
      v125 = CMTimeCopyAsDictionary(&time, v124);
      if (v122)
      {
        [v528 setObject:v122 forKeyedSubscript:@"Surface"];
      }

      if (AllocSize)
      {
        [v528 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithUnsignedLong:", AllocSize), @"SurfaceSize"}];
      }

      v14 = v515;
      if (v512)
      {
        [v528 setObject:v512 forKeyedSubscript:@"Metadata"];
      }

      if (v125)
      {
        [v528 setObject:v125 forKeyedSubscript:@"PresentationTimestamp"];
      }

      if ([v529 depthDataDeliveryEnabled])
      {
        v126 = BWSampleBufferGetAttachedMedia(target, @"Depth");
        if (v126)
        {
          v127 = CMSampleBufferGetImageBuffer(v126);
          if (v127)
          {
            v128 = v127;
            *type = 0;
            if (v516)
            {
              v559[0] = cs_rotatePixelBuffer(v127, v516, @"DepthData", &v555, type);
              if (v559[0])
              {
                *v551 = 0;
                v550 = OS_LOG_TYPE_DEFAULT;
                v456 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
                v457 = *v551;
                if (os_log_type_enabled(v456, v550))
                {
                  v458 = v457;
                }

                else
                {
                  v458 = v457 & 0xFFFFFFFE;
                }

                if (!v458)
                {
                  goto LABEL_645;
                }

                goto LABEL_585;
              }

              v128 = *type;
            }

            v129 = CVPixelBufferGetIOSurface(v128);
            if (v129)
            {
              [v528 setObject:v129 forKeyedSubscript:@"DepthDataSurface"];
            }

            CVPixelBufferRelease(*type);
          }
        }

        v130 = CMGetAttachment(target, *off_1E798D2B8, 0);
        if (v130)
        {
          v131 = v130;
          if (v516)
          {
            v131 = cs_rotateDepthMetadata(v130, v516);
          }

          [v528 setObject:v131 forKeyedSubscript:@"DepthMetadata"];
        }
      }

      if ([v529 cameraCalibrationDataDeliveryEnabled])
      {
        if (![v528 objectForKeyedSubscript:@"DepthMetadata"])
        {
          v132 = CMGetAttachment(target, @"CameraCalibrationDataMetadata", 0);
          if (v132)
          {
            [v528 setObject:v132 forKeyedSubscript:@"DepthMetadata"];
          }
        }
      }

      if ([v529 portraitEffectsMatteDeliveryEnabled])
      {
        v133 = BWSampleBufferGetAttachedMedia(target, 0x1F21AABB0);
        v134 = v133;
        if (v133)
        {
          v135 = CMSampleBufferGetImageBuffer(v133);
          if (v135)
          {
            v136 = v135;
            *type = 0;
            if (v516)
            {
              v559[0] = cs_rotatePixelBuffer(v135, v516, @"PortraitEffectsMatte", &v555, type);
              if (v559[0])
              {
                *v551 = 0;
                v550 = OS_LOG_TYPE_DEFAULT;
                v459 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
                v460 = *v551;
                if (os_log_type_enabled(v459, v550))
                {
                  v461 = v460;
                }

                else
                {
                  v461 = v460 & 0xFFFFFFFE;
                }

                if (!v461)
                {
                  goto LABEL_645;
                }

                goto LABEL_643;
              }

              v136 = *type;
            }

            v137 = CVPixelBufferGetIOSurface(v136);
            if (v137)
            {
              [v528 setObject:v137 forKeyedSubscript:@"PortraitEffectsMatteSurface"];
            }

            CVPixelBufferRelease(*type);
          }
        }

        v138 = CMGetAttachment(v134, *off_1E798D2D8, 0);
        if (v138)
        {
          [v528 setObject:v138 forKeyedSubscript:@"PortraitEffectsMatteMetadata"];
        }
      }

      if (![objc_msgSend(v529 "enabledSemanticSegmentationMatteURNs")])
      {
        goto LABEL_115;
      }

      v139 = [v529 enabledSemanticSegmentationMatteURNs];
      if ([v139 containsObject:*MEMORY[0x1E69917E0]])
      {
        v140 = BWSampleBufferGetAttachedMedia(target, @"PersonSemanticsHair");
        v141 = v140;
        if (v140)
        {
          v142 = CMSampleBufferGetImageBuffer(v140);
          if (v142)
          {
            v143 = v142;
            *type = 0;
            if (v516)
            {
              v559[0] = cs_rotatePixelBuffer(v142, v516, @"HairMatte", &v555, type);
              if (v559[0])
              {
                *v551 = 0;
                v550 = OS_LOG_TYPE_DEFAULT;
                v462 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
                v463 = *v551;
                if (os_log_type_enabled(v462, v550))
                {
                  v464 = v463;
                }

                else
                {
                  v464 = v463 & 0xFFFFFFFE;
                }

                if (!v464)
                {
                  goto LABEL_645;
                }

                goto LABEL_643;
              }

              v143 = *type;
            }

            v144 = CVPixelBufferGetIOSurface(v143);
            if (v144)
            {
              [v528 setObject:v144 forKeyedSubscript:@"HairSegmentationMatteSurface"];
            }

            CVPixelBufferRelease(*type);
          }
        }

        v145 = CMGetAttachment(v141, *off_1E798D2E0, 0);
        if (v145)
        {
          [v528 setObject:v145 forKeyedSubscript:@"HairSegmentationMatteMetadata"];
        }
      }

      v146 = [v529 enabledSemanticSegmentationMatteURNs];
      if ([v146 containsObject:*MEMORY[0x1E69917E8]])
      {
        v147 = BWSampleBufferGetAttachedMedia(target, @"PersonSemanticsSkin");
        v148 = v147;
        if (v147)
        {
          v149 = CMSampleBufferGetImageBuffer(v147);
          if (v149)
          {
            v150 = v149;
            *type = 0;
            if (v516)
            {
              v559[0] = cs_rotatePixelBuffer(v149, v516, @"SkinMatte", &v555, type);
              if (v559[0])
              {
                *v551 = 0;
                v550 = OS_LOG_TYPE_DEFAULT;
                v465 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
                v466 = *v551;
                if (os_log_type_enabled(v465, v550))
                {
                  v467 = v466;
                }

                else
                {
                  v467 = v466 & 0xFFFFFFFE;
                }

                if (!v467)
                {
                  goto LABEL_645;
                }

                goto LABEL_643;
              }

              v150 = *type;
            }

            v151 = CVPixelBufferGetIOSurface(v150);
            if (v151)
            {
              [v528 setObject:v151 forKeyedSubscript:@"SkinSegmentationMatteSurface"];
            }

            CVPixelBufferRelease(*type);
          }
        }

        v152 = CMGetAttachment(v148, *off_1E798D2E0, 0);
        if (v152)
        {
          [v528 setObject:v152 forKeyedSubscript:@"SkinSegmentationMatteMetadata"];
        }
      }

      v153 = [v529 enabledSemanticSegmentationMatteURNs];
      if ([v153 containsObject:*MEMORY[0x1E69917F8]])
      {
        v154 = BWSampleBufferGetAttachedMedia(target, @"PersonSemanticsTeeth");
        v155 = v154;
        if (v154)
        {
          v156 = CMSampleBufferGetImageBuffer(v154);
          if (v156)
          {
            v157 = v156;
            *type = 0;
            if (v516)
            {
              v559[0] = cs_rotatePixelBuffer(v156, v516, @"TeethMatte", &v555, type);
              if (v559[0])
              {
                *v551 = 0;
                v550 = OS_LOG_TYPE_DEFAULT;
                v468 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
                v469 = *v551;
                if (os_log_type_enabled(v468, v550))
                {
                  v470 = v469;
                }

                else
                {
                  v470 = v469 & 0xFFFFFFFE;
                }

                if (!v470)
                {
                  goto LABEL_645;
                }

                goto LABEL_643;
              }

              v157 = *type;
            }

            v158 = CVPixelBufferGetIOSurface(v157);
            if (v158)
            {
              [v528 setObject:v158 forKeyedSubscript:@"TeethSegmentationMatteSurface"];
            }

            CVPixelBufferRelease(*type);
          }
        }

        v159 = CMGetAttachment(v155, *off_1E798D2E0, 0);
        if (v159)
        {
          [v528 setObject:v159 forKeyedSubscript:@"TeethSegmentationMatteMetadata"];
        }
      }

      v160 = [v529 enabledSemanticSegmentationMatteURNs];
      if (![v160 containsObject:*MEMORY[0x1E69917D8]])
      {
        goto LABEL_115;
      }

      v161 = BWSampleBufferGetAttachedMedia(target, @"PersonSemanticsGlasses");
      v162 = v161;
      if (v161)
      {
        v163 = CMSampleBufferGetImageBuffer(v161);
        if (v163)
        {
          v164 = v163;
          *type = 0;
          if (v516)
          {
            v559[0] = cs_rotatePixelBuffer(v163, v516, @"GlassesMatte", &v555, type);
            if (v559[0])
            {
              *v551 = 0;
              v550 = OS_LOG_TYPE_DEFAULT;
              v471 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
              v472 = *v551;
              if (os_log_type_enabled(v471, v550))
              {
                v473 = v472;
              }

              else
              {
                v473 = v472 & 0xFFFFFFFE;
              }

              if (!v473)
              {
                goto LABEL_645;
              }

              goto LABEL_643;
            }

            v164 = *type;
          }

          v165 = CVPixelBufferGetIOSurface(v164);
          if (v165)
          {
            [v528 setObject:v165 forKeyedSubscript:@"GlassesSegmentationMatteSurface"];
          }

          CVPixelBufferRelease(*type);
        }
      }

      v166 = CMGetAttachment(v162, *off_1E798D2E0, 0);
      if (v166)
      {
        v93 = v166;
        v95 = @"GlassesSegmentationMatteMetadata";
        v94 = v528;
        goto LABEL_114;
      }

LABEL_115:
      if ([a6 constantColorEnabled])
      {
        v96 = BWSampleBufferGetAttachedMedia(a4, 0x1F21AB170);
        if (v96)
        {
          v97 = CMSampleBufferGetImageBuffer(v96);
          if (v97)
          {
            v98 = CVPixelBufferGetIOSurface(v97);
            if (v98)
            {
              [v528 setObject:v98 forKeyedSubscript:@"ConstantColorConfidenceMapSurface"];
            }
          }
        }

        v99 = CMGetAttachment(a4, *off_1E798D2A0, 0);
        if (v99)
        {
          [v528 setObject:v99 forKeyedSubscript:@"ConstantColorMetadata"];
        }
      }
    }
  }

  else
  {
    v167 = [(FigCaptureCameraSourcePipeline *)v523 captureSource];
    captureSession_transferAndSanitizeOutputBufferAttachments(v167, target, v558, v512, v529);
    [v528 setObject:v558 forKeyedSubscript:@"SampleBuffer"];
  }

LABEL_244:
  v25 = v517 & 0x1000;
LABEL_245:
  HIDWORD(v510) = v25 >> 12;
  if ((v14 & 1) == 0)
  {
    pixelBuffera = 0;
    v184 = 0;
    v524 = 0;
    v185 = v528;
LABEL_332:
    if (![a6 previewEnabled])
    {
LABEL_350:
      if (([a6 thumbnailEnabled] & 1) != 0 || objc_msgSend(a6, "rawThumbnailEnabled"))
      {
        v298 = CMGetAttachment(a4, @"ThumbnailSurface", 0);
        if (v298)
        {
          [v185 setObject:v298 forKeyedSubscript:@"ThumbnailSurface"];
        }
      }

      v237 = 0;
      goto LABEL_355;
    }

    if (v185)
    {
      *type = 0;
      if ([a6 payloadType] != 1)
      {
        if ([a6 payloadType])
        {
LABEL_349:
          CVPixelBufferRelease(*type);
          goto LABEL_350;
        }

        v286 = v48;
        v287 = a1;
        v288 = v13;
        v293 = v185;
        v294 = CMGetAttachment(a4, @"PreviewPixelBuffer", 0);
        if (v294)
        {
          v295 = v294;
          if (v516)
          {
            v559[0] = cs_rotatePixelBuffer(v294, v516, @"Preview", &v555, type);
            if (v559[0])
            {
              v502 = v184;
              v513 = v286;
              LODWORD(v553.value) = 0;
              v551[0] = OS_LOG_TYPE_DEFAULT;
              v419 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
              v420 = v553.value;
              if (os_log_type_enabled(v419, v551[0]))
              {
                v421 = v420;
              }

              else
              {
                v421 = v420 & 0xFFFFFFFE;
              }

              if (v421)
              {
                v422 = BWStringFromPixelBuffer();
                *&v423 = COERCE_DOUBLE([v529 settingsID]);
                LODWORD(cf.value) = 136315650;
                *(&cf.value + 4) = "captureSession_handleCapturedStillImage";
                LOWORD(cf.flags) = 2112;
                *(&cf.flags + 2) = v422;
                HIWORD(cf.epoch) = 2048;
                v537 = *&v423;
                LODWORD(v479) = 32;
                p_cf = &cf;
                _os_log_send_and_compose_impl();
              }

              goto LABEL_497;
            }

            v295 = *type;
          }

          memset(&cf, 0, sizeof(cf));
          CMSampleBufferGetPresentationTimeStamp(&cf, a4);
          v296 = [v12 previewFormatDescriptionPtr];
          time = cf;
          v297 = BWSampleBufferCreateFromPixelBuffer(v295, &time, v296, &v556);
          if (v556)
          {
            v185 = v293;
            [v293 setObject:v556 forKeyedSubscript:@"PreviewSampleBuffer"];
            goto LABEL_348;
          }

          v399 = v297;
          v502 = v184;
          v513 = v286;
          LODWORD(p_cf) = 0;
          FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", p_cf, v499, v480, v482, v484, v485, v486, v487);
          FrameworkRadarComponent = FigCaptureGetFrameworkRadarComponent();
          *v551 = 0;
          v550 = OS_LOG_TYPE_DEFAULT;
          v401 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          v402 = *v551;
          if (os_log_type_enabled(v401, v550))
          {
            v403 = v402;
          }

          else
          {
            v403 = v402 & 0xFFFFFFFE;
          }

          if (v403)
          {
            LODWORD(v553.value) = 136315394;
            *(&v553.value + 4) = "captureSession_handleCapturedStillImage";
            LOWORD(v553.flags) = 1024;
            *(&v553.flags + 2) = v399;
            _os_log_send_and_compose_impl();
          }

          fig_log_call_emit_and_clean_up_after_send_and_compose();
          LODWORD(time.value) = 67109120;
          HIDWORD(time.value) = v399;
          v429 = _os_log_send_and_compose_impl();
          v479 = 0;
          FigCapturePleaseFileRadar(FrameworkRadarComponent, v429, 0, 0, "/Library/Caches/com.apple.xbs/Sources/CameraCapture/CMCapture/Sources/CaptureSession/FigCaptureSession.m", 8889, @"LastShownDate:FigCaptureSession.m:8889", @"LastShownBuild:FigCaptureSession.m:8889", 0);
          v425 = v429;
        }

        else
        {
          v502 = v184;
          v513 = v286;
          LODWORD(p_cf) = 0;
          FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", p_cf, v499, v480, v482, v484, v485, v486, v487);
          v394 = FigCaptureGetFrameworkRadarComponent();
          LODWORD(v553.value) = 0;
          v551[0] = OS_LOG_TYPE_DEFAULT;
          v395 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          v396 = v553.value;
          if (os_log_type_enabled(v395, v551[0]))
          {
            v397 = v396;
          }

          else
          {
            v397 = v396 & 0xFFFFFFFE;
          }

          if (v397)
          {
            LODWORD(cf.value) = 136315138;
            *(&cf.value + 4) = "captureSession_handleCapturedStillImage";
            _os_log_send_and_compose_impl();
          }

          fig_log_call_emit_and_clean_up_after_send_and_compose();
          LOWORD(time.value) = 0;
          v424 = _os_log_send_and_compose_impl();
          v479 = 0;
          FigCapturePleaseFileRadar(v394, v424, 0, 0, "/Library/Caches/com.apple.xbs/Sources/CameraCapture/CMCapture/Sources/CaptureSession/FigCaptureSession.m", 8875, @"LastShownDate:FigCaptureSession.m:8875", @"LastShownBuild:FigCaptureSession.m:8875", 0);
          v425 = v424;
        }

        free(v425);
        goto LABEL_564;
      }

      v286 = v48;
      v287 = a1;
      v288 = v13;
      v289 = v185;
      v290 = CMGetAttachment(a4, @"PreviewSurface", 0);
      if (!v290)
      {
        v502 = v184;
        v513 = v286;
        LODWORD(p_cf) = 0;
        FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", p_cf, v499, v480, v482, v484, v485, v486, v487);
        v377 = FigCaptureGetFrameworkRadarComponent();
        LODWORD(v553.value) = 0;
        v551[0] = OS_LOG_TYPE_DEFAULT;
        v378 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        v379 = v553.value;
        if (os_log_type_enabled(v378, v551[0]))
        {
          v380 = v379;
        }

        else
        {
          v380 = v379 & 0xFFFFFFFE;
        }

        if (v380)
        {
          LODWORD(cf.value) = 136315138;
          *(&cf.value + 4) = "captureSession_handleCapturedStillImage";
          _os_log_send_and_compose_impl();
        }

        fig_log_call_emit_and_clean_up_after_send_and_compose();
        LOWORD(time.value) = 0;
        v398 = _os_log_send_and_compose_impl();
        v479 = 0;
        FigCapturePleaseFileRadar(v377, v398, 0, 0, "/Library/Caches/com.apple.xbs/Sources/CameraCapture/CMCapture/Sources/CaptureSession/FigCaptureSession.m", 8847, @"LastShownDate:FigCaptureSession.m:8847", @"LastShownBuild:FigCaptureSession.m:8847", 0);
        free(v398);
        a1 = v518;
        v12 = v519;
        a6 = v529;
        goto LABEL_565;
      }

      v291 = v290;
      if (!v516)
      {
LABEL_340:
        [v289 setObject:v291 forKeyedSubscript:@"PreviewSurface"];
        v292 = v291;
        v185 = v289;
        [v289 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithUnsignedLong:", IOSurfaceGetAllocSize(v292)), @"PreviewSurfaceSize"}];
        v14 = v515;
LABEL_348:
        v13 = v288;
        a1 = v287;
        v48 = v286;
        goto LABEL_349;
      }

      v553.value = 0;
      v559[0] = CVPixelBufferCreateWithIOSurface(*MEMORY[0x1E695E480], v290, 0, &v553);
      if (v559[0])
      {
        v502 = v184;
        v513 = v286;
        *v551 = 0;
        v550 = OS_LOG_TYPE_DEFAULT;
        v385 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        v386 = *v551;
        if (os_log_type_enabled(v385, v550))
        {
          v387 = v386;
        }

        else
        {
          v387 = v386 & 0xFFFFFFFE;
        }

        if (!v387)
        {
          goto LABEL_497;
        }
      }

      else
      {
        v559[0] = cs_rotatePixelBuffer(v553.value, v516, @"Preview", &v555, type);
        CVPixelBufferRelease(v553.value);
        if (!v559[0])
        {
          v291 = CVPixelBufferGetIOSurface(*type);
          goto LABEL_340;
        }

        v502 = v184;
        v513 = v286;
        *v551 = 0;
        v550 = OS_LOG_TYPE_DEFAULT;
        v388 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        v389 = *v551;
        if (os_log_type_enabled(v388, v550))
        {
          v390 = v389;
        }

        else
        {
          v390 = v389 & 0xFFFFFFFE;
        }

        if (!v390)
        {
          goto LABEL_497;
        }
      }

      v391 = BWStringFromPixelBuffer();
      *&v392 = COERCE_DOUBLE([v529 settingsID]);
      LODWORD(cf.value) = 136315650;
      *(&cf.value + 4) = "captureSession_handleCapturedStillImage";
      LOWORD(cf.flags) = 2112;
      *(&cf.flags + 2) = v391;
      HIWORD(cf.epoch) = 2048;
      v537 = *&v392;
      LODWORD(v479) = 32;
      p_cf = &cf;
      _os_log_send_and_compose_impl();
LABEL_497:
      fig_log_call_emit_and_clean_up_after_send_and_compose();
LABEL_564:
      a1 = v518;
      v12 = v519;
      a6 = v529;
LABEL_565:
      v13 = v520;
      a4 = target;
      v14 = v515;
      v184 = v502;
      v237 = 0;
      goto LABEL_566;
    }

    v501 = v184;
    v513 = v48;
    LODWORD(p_cf) = 0;
    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", p_cf, v499, v480, v482, v484, v485, v486, v487);
    v352 = FigCaptureGetFrameworkRadarComponent();
    LODWORD(v553.value) = 0;
    type[0] = OS_LOG_TYPE_DEFAULT;
    v353 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    v354 = v553.value;
    if (os_log_type_enabled(v353, type[0]))
    {
      v355 = v354;
    }

    else
    {
      v355 = v354 & 0xFFFFFFFE;
    }

    if (v355)
    {
      LODWORD(cf.value) = 136315138;
      *(&cf.value + 4) = "captureSession_handleCapturedStillImage";
      _os_log_send_and_compose_impl();
    }

    fig_log_call_emit_and_clean_up_after_send_and_compose();
    LOWORD(time.value) = 0;
    v384 = _os_log_send_and_compose_impl();
    v479 = 0;
    FigCapturePleaseFileRadar(v352, v384, 0, 0, "/Library/Caches/com.apple.xbs/Sources/CameraCapture/CMCapture/Sources/CaptureSession/FigCaptureSession.m", 8841, @"LastShownDate:FigCaptureSession.m:8841", @"LastShownBuild:FigCaptureSession.m:8841", 0);
    free(v384);
    v237 = 0;
    v13 = v520;
LABEL_579:
    v14 = v515;
    v48 = v513;
    v184 = v501;
    goto LABEL_355;
  }

  v168 = *off_1E798A3C8;
  v498 = CMGetAttachment(a4, *off_1E798A3C8, 0);
  v513 = v48;
  if (v507)
  {
    v169 = BWSampleBufferGetAttachedMedia(a4, 0x1F21AAB30);
    if (v169)
    {
      v170 = v169;
      v171 = CMSampleBufferGetImageBuffer(v169);
      Width = CVPixelBufferGetWidth(v171);
      Height = CVPixelBufferGetHeight(v171);
      if (Width < 1 || (v174 = Height, Height <= 0))
      {
        LODWORD(v553.value) = 0;
        type[0] = OS_LOG_TYPE_DEFAULT;
        v365 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        v366 = v553.value;
        if (os_log_type_enabled(v365, type[0]))
        {
          v367 = v366;
        }

        else
        {
          v367 = v366 & 0xFFFFFFFE;
        }

        if (v367)
        {
          LODWORD(cf.value) = 136315138;
          *(&cf.value + 4) = "captureSession_handleCapturedStillImage";
          _os_log_send_and_compose_impl();
        }

        fig_log_call_emit_and_clean_up_after_send_and_compose();
        LOWORD(time.value) = 0;
        v393 = _os_log_send_and_compose_impl();
        v479 = 0;
        FigCapturePleaseFileRadar(7, v393, 0, 0, "/Library/Caches/com.apple.xbs/Sources/CameraCapture/CMCapture/Sources/CaptureSession/FigCaptureSession.m", 8582, @"LastShownDate:FigCaptureSession.m:8582", @"LastShownBuild:FigCaptureSession.m:8582", 0);
      }

      else
      {
        PixelFormatType = CVPixelBufferGetPixelFormatType(v171);
        if (PixelFormatType)
        {
          v176 = PixelFormatType;
          v177 = CVPixelBufferGetIOSurface(v171);
          if (v177)
          {
            v178 = v177;
            v179 = IOSurfaceGetAllocSize(v177);
            if (v179)
            {
              v487 = v179;
              v488 = v178;
              v180 = Width | (v174 << 32);
              v489 = v171;
              if (FigCaptureSushiRawDNGDictionaryCreatedInGraph())
              {
                v181 = CMGetAttachment(v170, @"RawDNGDictionary", 0);
                v183 = pixelBuffer;
                goto LABEL_265;
              }

              if ([v519 rawDNGColorCalibrations])
              {
                goto LABEL_263;
              }

              v189 = [(FigCaptureCameraSourcePipeline *)v523 captureSource];
              Attribute = FigCaptureSourceGetAttribute(v189, @"WhiteBalanceCalibrations", v559);
              if (Attribute)
              {
                [v519 setRawDNGColorCalibrations:{BWDNGColorCalibrations(Attribute, 0)}];
                if ([v519 rawDNGColorCalibrations])
                {
LABEL_263:
                  v191 = [v529 outputWidth];
                  v192 = [v529 outputHeight];
                  v183 = pixelBuffer;
                  v193 = [(__CVBuffer *)pixelBuffer rawLensShadingCorrection];
                  v194 = CMGetAttachment(v170, v168, 0);
                  if (v194)
                  {
                    v195 = v194;
                    v196 = [objc_msgSend(-[FigCaptureCameraSourcePipeline captureDevice](v523) "sensorIDDictionaryByPortType")];
                    LODWORD(v482) = 0;
                    LOBYTE(v477) = 0;
                    BWCreateSushiRawDNGDictionary(v180, v176, v191 | (v192 << 32), 0, v195, [v519 rawDNGColorCalibrations], v193, -[__CVBuffer sushiRawBlackBorderingEnabled](pixelBuffer, "sushiRawBlackBorderingEnabled"), v477, v196, 0, v482, v484, v485, v486, v487, v488, v489, v490, v491, v494, v496, v498, v499, v500, v503, v506, v507, pixelBuffer, v510, v511, v513);
                    a1 = v518;
                    if (v181)
                    {
LABEL_265:
                      v501 = v181;
                      v197 = BWRawDenormalizedActiveRectFromDNGDictionary(v181, v182);
                      v199 = v198;
                      v201 = v200;
                      v203 = v202;
                      v204 = [(__CVBuffer *)v183 sushiRawDimensions];
                      v560.origin.x = v197;
                      v560.origin.y = v199;
                      v560.size.width = v201;
                      v560.size.height = v203;
                      IsNull = CGRectIsNull(v560);
                      v207 = v204 > 0 && SHIDWORD(v204) > 0;
                      if (IsNull && !v207)
                      {
                        pixelBuffera = 0;
                        v492 = 128;
                        a6 = v529;
LABEL_308:
                        v188 = target;
                        goto LABEL_310;
                      }

                      v208 = IsNull | v207;
                      HIDWORD(v209) = MEMORY[0x1E695F054];
                      v504 = *MEMORY[0x1E695F050];
                      v495 = *(MEMORY[0x1E695F050] + 16);
                      v497 = *(MEMORY[0x1E695F050] + 8);
                      v493 = *(MEMORY[0x1E695F050] + 24);
                      if ((v208 & 1) == 0 || v180 == v204)
                      {
                        LODWORD(v208) = llround(v201);
                        LODWORD(v209) = llround(v203);
                        v232 = FigCaptureNumberOfPixelsForDimensions(v208 | (v209 << 32));
                        v218 = v489;
                        if (v232 / FigCaptureNumberOfPixelsForDimensions(v180) >= 0.8)
                        {
                          a6 = v529;
                          pixelBuffera = 0;
                          v184 = v501;
LABEL_298:
                          if (FigCapturePlatformIdentifier() <= 11)
                          {
                            LODWORD(v250) = llround(v201);
                            LODWORD(v251) = llround(v203);
                            if ((v250 | (v251 << 32)) != [a6 outputDimensions])
                            {
                              v524 = 0;
                              v237 = 4294950881;
                              v12 = v519;
                              a4 = target;
                              v14 = v515;
                              goto LABEL_566;
                            }
                          }

                          mach_absolute_time();
                          v559[0] = VTFillPixelBufferBorderWithBlack();
                          v501 = v184;
                          if (!v559[0])
                          {
                            v489 = v218;
                            if (dword_1ED844050)
                            {
                              LODWORD(v553.value) = 0;
                              type[0] = OS_LOG_TYPE_DEFAULT;
                              v252 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
                              v253 = v553.value;
                              if (os_log_type_enabled(v252, type[0]))
                              {
                                v254 = v253;
                              }

                              else
                              {
                                v254 = v253 & 0xFFFFFFFE;
                              }

                              if (v254)
                              {
                                mach_absolute_time();
                                v255 = FigHostTimeToNanoseconds();
                                LODWORD(cf.value) = 136315650;
                                *(&cf.value + 4) = "captureSession_handleCapturedStillImage";
                                LOWORD(cf.flags) = 2114;
                                *(&cf.flags + 2) = @"Black-fill SushiRAW";
                                HIWORD(cf.epoch) = 2048;
                                v537 = (v255 / 1000) / 1000.0;
                                LODWORD(v479) = 32;
                                p_cf = &cf;
                                _os_log_send_and_compose_impl();
                              }

                              fig_log_call_emit_and_clean_up_after_send_and_compose();
                              v492 = 128;
                              v188 = target;
                              goto LABEL_310;
                            }

                            v492 = 128;
                            goto LABEL_308;
                          }

                          LODWORD(v553.value) = 0;
                          type[0] = OS_LOG_TYPE_DEFAULT;
                          v410 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
                          v411 = v553.value;
                          if (os_log_type_enabled(v410, type[0]))
                          {
                            v412 = v411;
                          }

                          else
                          {
                            v412 = v411 & 0xFFFFFFFE;
                          }

                          if (v412)
                          {
                            LODWORD(cf.value) = 136315394;
                            *(&cf.value + 4) = "captureSession_handleCapturedStillImage";
                            LOWORD(cf.flags) = 1024;
                            *(&cf.flags + 2) = v559[0];
                            _os_log_send_and_compose_impl();
                          }

                          fig_log_call_emit_and_clean_up_after_send_and_compose();
                          LODWORD(time.value) = 67109120;
                          HIDWORD(time.value) = v559[0];
                          v433 = _os_log_send_and_compose_impl();
                          v479 = 0;
                          FigCapturePleaseFileRadar(7, v433, 0, 0, "/Library/Caches/com.apple.xbs/Sources/CameraCapture/CMCapture/Sources/CaptureSession/FigCaptureSession.m", 8704, @"LastShownDate:FigCaptureSession.m:8704", @"LastShownBuild:FigCaptureSession.m:8704", 0);
                          free(v433);
                          v524 = 0;
                          v237 = 0;
LABEL_578:
                          a1 = v518;
                          v12 = v519;
                          a6 = v529;
                          a4 = target;
                          goto LABEL_579;
                        }

                        ValidBufferRectForProcessedRaw = FigCaptureMetadataUtilitiesGetValidBufferRectForProcessedRaw(v498);
                        v212 = v233;
                        v214 = v234;
                        v216 = v235;
                        a6 = v529;
                        if (![v529 aspectRatio])
                        {
LABEL_278:
                          LODWORD(v217) = llround(v216);
                          v223 = llround(v214) | (v217 << 32);
                          v561.origin.x = v197;
                          v561.origin.y = v199;
                          v561.size.width = v201;
                          v561.size.height = v203;
                          v562.origin.x = ValidBufferRectForProcessedRaw;
                          v562.origin.y = v212;
                          v562.size.width = v214;
                          v562.size.height = v216;
                          v224 = CGRectContainsRect(v561, v562);
                          v225 = [+[BWOnDemandPixelBufferAllocator onDemandAllocatorWithoutMemoryPoolWithDimensions:dimensionAlignment:pixelFormat:name:](BWOnDemandPixelBufferAllocator onDemandAllocatorWithoutMemoryPoolWithDimensions:v223 dimensionAlignment:2 pixelFormat:v176 name:@"On-demand SushiRaw crop output", "newPixelBuffer"];
                          if (v225)
                          {
                            v226 = v225;
                            mach_absolute_time();
                            pixelBuffera = v226;
                            v227 = v501;
                            if (BWMemcpyPixelBuffer(v218, v226, ValidBufferRectForProcessedRaw, v212, v214, v216))
                            {
                              if (dword_1ED844050)
                              {
                                LODWORD(v553.value) = 0;
                                type[0] = OS_LOG_TYPE_DEFAULT;
                                v228 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
                                v229 = v553.value;
                                if (os_log_type_enabled(v228, type[0]))
                                {
                                  v230 = v229;
                                }

                                else
                                {
                                  v230 = v229 & 0xFFFFFFFE;
                                }

                                if (v230)
                                {
                                  mach_absolute_time();
                                  v231 = FigHostTimeToNanoseconds();
                                  LODWORD(cf.value) = 136315650;
                                  *(&cf.value + 4) = "captureSession_handleCapturedStillImage";
                                  LOWORD(cf.flags) = 2114;
                                  *(&cf.flags + 2) = @"Cropping SushiRAW";
                                  HIWORD(cf.epoch) = 2048;
                                  v537 = (v231 / 1000) / 1000.0;
                                  LODWORD(v479) = 32;
                                  p_cf = &cf;
                                  _os_log_send_and_compose_impl();
                                }

                                fig_log_call_emit_and_clean_up_after_send_and_compose();
                                a1 = v518;
                                a6 = v529;
                                v227 = v501;
                              }

                              v240 = [MEMORY[0x1E695DF90] dictionaryWithDictionary:{v227, p_cf, v479}];
                              if (!v224)
                              {
                                v241 = FigCaptureTransformRectToCoordinateSpaceOfRect(v197, v199, v201, v203, ValidBufferRectForProcessedRaw, v212, v214);
                                FigCaptureDenormalizeCropRect(v223, v241, v242, v243, v244);
                                v504 = round(v245);
                                v497 = round(v246);
                                v493 = round(v248);
                                v495 = round(v247);
                              }

                              v201 = v495;
                              v203 = v493;
                              BWSetRawDenormalizedActiveRectToDNGDictionary(v240, v504, v497, v495, v493);
                              v218 = pixelBuffera;
                              v488 = CVPixelBufferGetIOSurface(pixelBuffera);

                              v249 = [v240 copy];
                              v184 = v249;
                              if (v224)
                              {
                                v501 = v249;
                                v492 = 128;
                                v489 = pixelBuffera;
                                goto LABEL_308;
                              }

                              goto LABEL_298;
                            }

                            LODWORD(v553.value) = 0;
                            type[0] = OS_LOG_TYPE_DEFAULT;
                            v416 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
                            v417 = v553.value;
                            if (os_log_type_enabled(v416, type[0]))
                            {
                              v418 = v417;
                            }

                            else
                            {
                              v418 = v417 & 0xFFFFFFFE;
                            }

                            if (v418)
                            {
                              LODWORD(cf.value) = 136315138;
                              *(&cf.value + 4) = "captureSession_handleCapturedStillImage";
                              _os_log_send_and_compose_impl();
                            }

                            fig_log_call_emit_and_clean_up_after_send_and_compose();
                            LOWORD(time.value) = 0;
                            v435 = _os_log_send_and_compose_impl();
                            v479 = 0;
                            FigCapturePleaseFileRadar(7, v435, 0, 0, "/Library/Caches/com.apple.xbs/Sources/CameraCapture/CMCapture/Sources/CaptureSession/FigCaptureSession.m", 8680, @"LastShownDate:FigCaptureSession.m:8680", @"LastShownBuild:FigCaptureSession.m:8680", 0);
                            free(v435);
                          }

                          else
                          {
                            LODWORD(v553.value) = 0;
                            type[0] = OS_LOG_TYPE_DEFAULT;
                            v413 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
                            v414 = v553.value;
                            if (os_log_type_enabled(v413, type[0]))
                            {
                              v415 = v414;
                            }

                            else
                            {
                              v415 = v414 & 0xFFFFFFFE;
                            }

                            if (v415)
                            {
                              LODWORD(cf.value) = 136315138;
                              *(&cf.value + 4) = "captureSession_handleCapturedStillImage";
                              _os_log_send_and_compose_impl();
                            }

                            fig_log_call_emit_and_clean_up_after_send_and_compose();
                            LOWORD(time.value) = 0;
                            v434 = _os_log_send_and_compose_impl();
                            v479 = 0;
                            FigCapturePleaseFileRadar(7, v434, 0, 0, "/Library/Caches/com.apple.xbs/Sources/CameraCapture/CMCapture/Sources/CaptureSession/FigCaptureSession.m", 8676, @"LastShownDate:FigCaptureSession.m:8676", @"LastShownBuild:FigCaptureSession.m:8676", 0);
                            free(v434);
                            pixelBuffera = 0;
                          }

                          v524 = 0;
                          v237 = 4294950881;
                          goto LABEL_578;
                        }
                      }

                      else
                      {
                        ValidBufferRectForProcessedRaw = FigCaptureMakeCenteredRectWithDimensionsInsideDimensions(v204, v180);
                        v212 = v211;
                        v214 = v213;
                        v216 = v215;
                        a6 = v529;
                        v218 = v489;
                        if (![v529 aspectRatio])
                        {
                          goto LABEL_278;
                        }
                      }

                      v219 = BWAspectRatioValueFromAspectRatio([a6 aspectRatio]);
                      ValidBufferRectForProcessedRaw = FigCaptureMetadataUtilitiesRectByCroppingRectToAspectRatio(ValidBufferRectForProcessedRaw, v212, v214, v216, v219);
                      v212 = v220;
                      v214 = v221;
                      v216 = v222;
                      goto LABEL_278;
                    }

                    LODWORD(v553.value) = 0;
                    type[0] = OS_LOG_TYPE_DEFAULT;
                    v407 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
                    v408 = v553.value;
                    if (os_log_type_enabled(v407, type[0]))
                    {
                      v409 = v408;
                    }

                    else
                    {
                      v409 = v408 & 0xFFFFFFFE;
                    }

                    if (v409)
                    {
                      LODWORD(cf.value) = 136315138;
                      *(&cf.value + 4) = "captureSession_handleCapturedStillImage";
                      _os_log_send_and_compose_impl();
                    }

                    fig_log_call_emit_and_clean_up_after_send_and_compose();
                    LOWORD(time.value) = 0;
                    v393 = _os_log_send_and_compose_impl();
                    v479 = 0;
                    FigCapturePleaseFileRadar(7, v393, 0, 0, "/Library/Caches/com.apple.xbs/Sources/CameraCapture/CMCapture/Sources/CaptureSession/FigCaptureSession.m", 8631, @"LastShownDate:FigCaptureSession.m:8631", @"LastShownBuild:FigCaptureSession.m:8631", 0);
                  }

                  else
                  {
                    LODWORD(v553.value) = 0;
                    type[0] = OS_LOG_TYPE_DEFAULT;
                    v404 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
                    v405 = v553.value;
                    if (os_log_type_enabled(v404, type[0]))
                    {
                      v406 = v405;
                    }

                    else
                    {
                      v406 = v405 & 0xFFFFFFFE;
                    }

                    if (v406)
                    {
                      LODWORD(cf.value) = 136315138;
                      *(&cf.value + 4) = "captureSession_handleCapturedStillImage";
                      _os_log_send_and_compose_impl();
                    }

                    fig_log_call_emit_and_clean_up_after_send_and_compose();
                    LOWORD(time.value) = 0;
                    v393 = _os_log_send_and_compose_impl();
                    v479 = 0;
                    FigCapturePleaseFileRadar(7, v393, 0, 0, "/Library/Caches/com.apple.xbs/Sources/CameraCapture/CMCapture/Sources/CaptureSession/FigCaptureSession.m", 8613, @"LastShownDate:FigCaptureSession.m:8613", @"LastShownBuild:FigCaptureSession.m:8613", 0);
                  }

                  goto LABEL_593;
                }

                LODWORD(v553.value) = 0;
                type[0] = OS_LOG_TYPE_DEFAULT;
                v430 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
                v431 = v553.value;
                if (os_log_type_enabled(v430, type[0]))
                {
                  v432 = v431;
                }

                else
                {
                  v432 = v431 & 0xFFFFFFFE;
                }

                if (v432)
                {
                  LODWORD(cf.value) = 136315138;
                  *(&cf.value + 4) = "captureSession_handleCapturedStillImage";
                  _os_log_send_and_compose_impl();
                }

                fig_log_call_emit_and_clean_up_after_send_and_compose();
                LOWORD(time.value) = 0;
                v393 = _os_log_send_and_compose_impl();
                v479 = 0;
                FigCapturePleaseFileRadar(7, v393, 0, 0, "/Library/Caches/com.apple.xbs/Sources/CameraCapture/CMCapture/Sources/CaptureSession/FigCaptureSession.m", 8605, @"LastShownDate:FigCaptureSession.m:8605", @"LastShownBuild:FigCaptureSession.m:8605", 0);
              }

              else
              {
                LODWORD(v553.value) = 0;
                type[0] = OS_LOG_TYPE_DEFAULT;
                v426 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
                v427 = v553.value;
                if (os_log_type_enabled(v426, type[0]))
                {
                  v428 = v427;
                }

                else
                {
                  v428 = v427 & 0xFFFFFFFE;
                }

                if (v428)
                {
                  LODWORD(cf.value) = 136315138;
                  *(&cf.value + 4) = "captureSession_handleCapturedStillImage";
                  _os_log_send_and_compose_impl();
                }

                fig_log_call_emit_and_clean_up_after_send_and_compose();
                LOWORD(time.value) = 0;
                v393 = _os_log_send_and_compose_impl();
                v479 = 0;
                FigCapturePleaseFileRadar(7, v393, 0, 0, "/Library/Caches/com.apple.xbs/Sources/CameraCapture/CMCapture/Sources/CaptureSession/FigCaptureSession.m", 8602, @"LastShownDate:FigCaptureSession.m:8602", @"LastShownBuild:FigCaptureSession.m:8602", 0);
              }

LABEL_593:
              a1 = v518;
              v12 = v519;
              a6 = v529;
              goto LABEL_514;
            }

            LODWORD(v553.value) = 0;
            type[0] = OS_LOG_TYPE_DEFAULT;
            v381 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            v382 = v553.value;
            if (os_log_type_enabled(v381, type[0]))
            {
              v383 = v382;
            }

            else
            {
              v383 = v382 & 0xFFFFFFFE;
            }

            if (v383)
            {
              LODWORD(cf.value) = 136315138;
              *(&cf.value + 4) = "captureSession_handleCapturedStillImage";
              _os_log_send_and_compose_impl();
            }

            fig_log_call_emit_and_clean_up_after_send_and_compose();
            LOWORD(time.value) = 0;
            v393 = _os_log_send_and_compose_impl();
            v479 = 0;
            FigCapturePleaseFileRadar(7, v393, 0, 0, "/Library/Caches/com.apple.xbs/Sources/CameraCapture/CMCapture/Sources/CaptureSession/FigCaptureSession.m", 8591, @"LastShownDate:FigCaptureSession.m:8591", @"LastShownBuild:FigCaptureSession.m:8591", 0);
          }

          else
          {
            LODWORD(v553.value) = 0;
            type[0] = OS_LOG_TYPE_DEFAULT;
            v374 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            v375 = v553.value;
            if (os_log_type_enabled(v374, type[0]))
            {
              v376 = v375;
            }

            else
            {
              v376 = v375 & 0xFFFFFFFE;
            }

            if (v376)
            {
              LODWORD(cf.value) = 136315138;
              *(&cf.value + 4) = "captureSession_handleCapturedStillImage";
              _os_log_send_and_compose_impl();
            }

            fig_log_call_emit_and_clean_up_after_send_and_compose();
            LOWORD(time.value) = 0;
            v393 = _os_log_send_and_compose_impl();
            v479 = 0;
            FigCapturePleaseFileRadar(7, v393, 0, 0, "/Library/Caches/com.apple.xbs/Sources/CameraCapture/CMCapture/Sources/CaptureSession/FigCaptureSession.m", 8588, @"LastShownDate:FigCaptureSession.m:8588", @"LastShownBuild:FigCaptureSession.m:8588", 0);
          }
        }

        else
        {
          LODWORD(v553.value) = 0;
          type[0] = OS_LOG_TYPE_DEFAULT;
          v368 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          v369 = v553.value;
          if (os_log_type_enabled(v368, type[0]))
          {
            v370 = v369;
          }

          else
          {
            v370 = v369 & 0xFFFFFFFE;
          }

          if (v370)
          {
            LODWORD(cf.value) = 136315138;
            *(&cf.value + 4) = "captureSession_handleCapturedStillImage";
            _os_log_send_and_compose_impl();
          }

          fig_log_call_emit_and_clean_up_after_send_and_compose();
          LOWORD(time.value) = 0;
          v393 = _os_log_send_and_compose_impl();
          v479 = 0;
          FigCapturePleaseFileRadar(7, v393, 0, 0, "/Library/Caches/com.apple.xbs/Sources/CameraCapture/CMCapture/Sources/CaptureSession/FigCaptureSession.m", 8585, @"LastShownDate:FigCaptureSession.m:8585", @"LastShownBuild:FigCaptureSession.m:8585", 0);
        }
      }
    }

    else
    {
      LODWORD(v553.value) = 0;
      type[0] = OS_LOG_TYPE_DEFAULT;
      v356 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v357 = v553.value;
      if (os_log_type_enabled(v356, type[0]))
      {
        v358 = v357;
      }

      else
      {
        v358 = v357 & 0xFFFFFFFE;
      }

      if (v358)
      {
        LODWORD(cf.value) = 136315138;
        *(&cf.value + 4) = "captureSession_handleCapturedStillImage";
        _os_log_send_and_compose_impl();
      }

      fig_log_call_emit_and_clean_up_after_send_and_compose();
      LOWORD(time.value) = 0;
      v393 = _os_log_send_and_compose_impl();
      v479 = 0;
      FigCapturePleaseFileRadar(7, v393, 0, 0, "/Library/Caches/com.apple.xbs/Sources/CameraCapture/CMCapture/Sources/CaptureSession/FigCaptureSession.m", 8576, @"LastShownDate:FigCaptureSession.m:8576", @"LastShownBuild:FigCaptureSession.m:8576", 0);
    }

LABEL_513:
    a1 = v518;
    v12 = v519;
    a6 = v529;
LABEL_514:
    a4 = target;
    v48 = v513;
    goto LABEL_515;
  }

  v488 = CMGetAttachment(a4, @"RawImageSurface", 0);
  if (!v488)
  {
    LODWORD(v553.value) = 0;
    type[0] = OS_LOG_TYPE_DEFAULT;
    v359 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    v360 = v553.value;
    if (os_log_type_enabled(v359, type[0]))
    {
      v361 = v360;
    }

    else
    {
      v361 = v360 & 0xFFFFFFFE;
    }

    if (v361)
    {
      LODWORD(cf.value) = 136315138;
      *(&cf.value + 4) = "captureSession_handleCapturedStillImage";
      _os_log_send_and_compose_impl();
    }

    fig_log_call_emit_and_clean_up_after_send_and_compose();
    LOWORD(time.value) = 0;
    v393 = _os_log_send_and_compose_impl();
    v479 = 0;
    FigCapturePleaseFileRadar(7, v393, 0, 0, "/Library/Caches/com.apple.xbs/Sources/CameraCapture/CMCapture/Sources/CaptureSession/FigCaptureSession.m", 8719, @"LastShownDate:FigCaptureSession.m:8719", @"LastShownBuild:FigCaptureSession.m:8719", 0);
    goto LABEL_501;
  }

  v186 = [objc_msgSend(CMGetAttachment(a4 @"RawImageAssetSizes"];
  if (!v186)
  {
    LODWORD(v553.value) = 0;
    type[0] = OS_LOG_TYPE_DEFAULT;
    v362 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    v363 = v553.value;
    if (os_log_type_enabled(v362, type[0]))
    {
      v364 = v363;
    }

    else
    {
      v364 = v363 & 0xFFFFFFFE;
    }

    if (v364)
    {
      LODWORD(cf.value) = 136315138;
      *(&cf.value + 4) = "captureSession_handleCapturedStillImage";
      _os_log_send_and_compose_impl();
    }

    fig_log_call_emit_and_clean_up_after_send_and_compose();
    LOWORD(time.value) = 0;
    v393 = _os_log_send_and_compose_impl();
    v479 = 0;
    FigCapturePleaseFileRadar(7, v393, 0, 0, "/Library/Caches/com.apple.xbs/Sources/CameraCapture/CMCapture/Sources/CaptureSession/FigCaptureSession.m", 8723, @"LastShownDate:FigCaptureSession.m:8723", @"LastShownBuild:FigCaptureSession.m:8723", 0);
LABEL_501:
    a1 = v518;
    v12 = v519;
    a6 = v529;
    a4 = target;
LABEL_515:
    free(v393);

    v238 = 0;
    v239 = 0;
    v237 = 4294950881;
    v14 = v515;
    goto LABEL_358;
  }

  v187 = v186;
  v501 = CMGetAttachment(a4, @"RawDNGDictionary", 0);
  if (!v501)
  {
    LODWORD(v553.value) = 0;
    type[0] = OS_LOG_TYPE_DEFAULT;
    v371 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    v372 = v553.value;
    if (os_log_type_enabled(v371, type[0]))
    {
      v373 = v372;
    }

    else
    {
      v373 = v372 & 0xFFFFFFFE;
    }

    if (v373)
    {
      LODWORD(cf.value) = 136315138;
      *(&cf.value + 4) = "captureSession_handleCapturedStillImage";
      _os_log_send_and_compose_impl();
    }

    fig_log_call_emit_and_clean_up_after_send_and_compose();
    LOWORD(time.value) = 0;
    v393 = _os_log_send_and_compose_impl();
    v479 = 0;
    FigCapturePleaseFileRadar(7, v393, 0, 0, "/Library/Caches/com.apple.xbs/Sources/CameraCapture/CMCapture/Sources/CaptureSession/FigCaptureSession.m", 8726, @"LastShownDate:FigCaptureSession.m:8726", @"LastShownBuild:FigCaptureSession.m:8726", 0);
    goto LABEL_513;
  }

  v487 = v187;
  [CMGetAttachment(a4 @"RawImageContainsDepthData"];
  [CMGetAttachment(a4 @"RawImageContainsSemanticSegmentationMattes"];
  v492 = 0;
  v489 = 0;
  pixelBuffera = 0;
  v188 = a4;
LABEL_310:
  v256 = [MEMORY[0x1E695DF90] dictionary];
  [v256 setObject:v521 forKeyedSubscript:@"SectionID"];
  [v256 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithLongLong:", objc_msgSend(a6, "settingsID")), @"SettingsID"}];
  [v256 setObject:objc_msgSend(a6 forKeyedSubscript:{"captureRequestIdentifier"), @"CaptureRequestIdentifier"}];
  v505 = v256;
  [v256 setObject:objc_msgSend(v514 forKeyedSubscript:{"photoIdentifier"), @"PhotoIdentifier"}];
  [a6 rawOutputFileCodec];
  v257 = [a6 outputFileType];
  v258 = [a6 outputRotationDegrees];
  v259 = [a6 outputMirroring];
  LODWORD(v256) = [-[FigCaptureCameraSourcePipeline captureDevice](v523) hasFlash];
  v260 = [a6 flashMode];
  v261 = FigCaptureMetadataUtilitiesGetStillImageMetadataInSettingsForSampleBuffer(a6, v188);
  v262 = FigCaptureMetadataUtilitiesGetIrisAssetIdentifierForSettingsAndSampleBuffer(a6, v188);
  v263 = [a6 imageGroupIdentifier];
  v264 = objc_msgSend_time(v514);
  v483 = v263;
  a6 = v529;
  v265 = FigCaptureMetadataUtilitiesCreateMetadataAttachments(v188, v257, v258, v259, v256, 1, v260, v510, 1, 0, 1, 1, 0, 0, 0, v261, v262, v483, 0, v264, 0);
  v184 = v501;
  v266 = BWCreateRawMetadataFromMetadata(v265, v501, v492, [v498 objectForKeyedSubscript:*off_1E798B1E0]);
  if ([v529 payloadType] == 1)
  {
    a1 = v518;
    v12 = v519;
    v13 = v520;
    if (v507)
    {
      v267 = v505;
      [v505 setObject:v488 forKeyedSubscript:@"Surface"];
      v268 = [MEMORY[0x1E696AD98] numberWithUnsignedLong:v487];
      v269 = kFigCaptureSessionNotificationPayloadKey_SurfaceSize;
      a4 = target;
      v14 = v515;
    }

    else
    {
      v276 = [v529 rawOutputFormat];
      a4 = target;
      v277 = [CMGetAttachment(target @"RawImageFileType"];
      v267 = v505;
      if (HIDWORD(v507))
      {
        [v505 setObject:v488 forKeyedSubscript:@"DeferredPhotoProxySurface"];
        [v505 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithUnsignedLong:", v487), @"DeferredPhotoProxySurfaceSize"}];
        [v505 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithUnsignedInt:", v276), @"DeferredPhotoProxyCodec"}];
        v268 = [MEMORY[0x1E696AD98] numberWithInt:v277];
        v269 = kFigCaptureSessionNotificationPayloadKey_DeferredPhotoProxyFileType;
      }

      else
      {
        [v505 setObject:v488 forKeyedSubscript:@"Surface"];
        [v505 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithUnsignedLong:", v487), @"SurfaceSize"}];
        [v505 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithUnsignedInt:", v276), @"PhotoCodec"}];
        v268 = [MEMORY[0x1E696AD98] numberWithInt:v277];
        v269 = kFigCaptureSessionNotificationPayloadKey_PhotoFileType;
      }

      v14 = v515;
      v13 = v520;
      a1 = v518;
    }

    [v267 setObject:v268 forKeyedSubscript:*v269];
    memset(&time, 0, sizeof(time));
    CMSampleBufferGetPresentationTimeStamp(&time, a4);
    v278 = *MEMORY[0x1E695E480];
    cf = time;
    v279 = CMTimeCopyAsDictionary(&cf, v278);
    v280 = v267;
    v281 = v279;
    [v280 setObject:v279 forKeyedSubscript:@"PresentationTimestamp"];

    if ([v529 depthDataDeliveryEnabled])
    {
      v282 = BWSampleBufferGetAttachedMedia(a4, @"Depth");
      if (v282)
      {
        v283 = CMSampleBufferGetImageBuffer(v282);
        if (v283)
        {
          [v505 setObject:CVPixelBufferGetIOSurface(v283) forKeyedSubscript:@"DepthDataSurface"];
        }
      }

      v284 = CMGetAttachment(a4, *off_1E798D2B8, 0);
      if (v284)
      {
        [v505 setObject:v284 forKeyedSubscript:@"DepthMetadata"];
      }
    }

    if (![v529 cameraCalibrationDataDeliveryEnabled])
    {
      goto LABEL_331;
    }

    if ([v505 objectForKeyedSubscript:@"DepthMetadata"])
    {
      goto LABEL_331;
    }

    v285 = CMGetAttachment(a4, @"CameraCalibrationDataMetadata", 0);
    if (!v285)
    {
      goto LABEL_331;
    }

    v273 = v285;
    v275 = v505;
    v274 = @"DepthMetadata";
    goto LABEL_330;
  }

  a1 = v518;
  v12 = v519;
  v13 = v520;
  a4 = target;
  v14 = v515;
  if ([v529 payloadType])
  {
LABEL_331:
    v185 = v505;
    [v505 setObject:v266 forKeyedSubscript:@"Metadata"];
    v524 = v505;
    v48 = v513;
    goto LABEL_332;
  }

  memset(&time, 0, sizeof(time));
  CMSampleBufferGetPresentationTimeStamp(&time, target);
  v270 = [v519 rawFormatDescriptionPtr];
  cf = time;
  v271 = BWSampleBufferCreateFromPixelBuffer(v489, &cf, v270, &v557);
  if (!v271)
  {
    v272 = [(FigCaptureCameraSourcePipeline *)v523 captureSource];
    captureSession_transferAndSanitizeOutputBufferAttachments(v272, target, v557, v266, v529);
    v273 = v557;
    v274 = @"SampleBuffer";
    v275 = v505;
LABEL_330:
    [v275 setObject:v273 forKeyedSubscript:v274];
    goto LABEL_331;
  }

  v237 = v271;
  LODWORD(p_cf) = v271;
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", p_cf, v499, v480, v482, v484, v485, v486, v487);
  v524 = 0;
LABEL_566:
  v48 = v513;
LABEL_355:

  if (v184)
  {
    CFRelease(v184);
  }

  v239 = pixelBuffera;
  v238 = v524;
LABEL_358:
  if (v558)
  {
    CFRelease(v558);
  }

  if (v557)
  {
    CFRelease(v557);
  }

  if (v556)
  {
    CFRelease(v556);
  }

  if (v239)
  {
    CFRelease(v239);
  }

  if (v555)
  {
    CFRelease(v555);
  }

  v299 = v559[0];
  if (!v559[0] || v237 || ((v14 ^ 1) & 1) != 0 || v238)
  {
    if (!v237)
    {
      goto LABEL_375;
    }
  }

  else
  {
    v237 = v559[0];
  }

  v238 = cs_notificationPayloadWithSectionIDAndSettingsIDAndErrorStatus(v521, [a6 settingsID], v237);
  v299 = v559[0];
LABEL_375:
  if (v299)
  {
    v300 = [a6 settingsID];
    v528 = cs_notificationPayloadWithSectionIDAndSettingsIDAndErrorStatus(v521, v300, v559[0]);
    v301 = [v13 portraitHDRStagingNode];
    [v301 bufferReceivedWithFlags:0 error:v559[0]];
  }

  if (![objc_msgSend(v13 "stillImageCoordinatorNode")])
  {
    if (!(v14 & 1 | (v527 != 0)))
    {
      goto LABEL_382;
    }

    goto LABEL_381;
  }

  if ((([a6 resolutionFlavor] == 2) & (v14 | (v527 != 0))) != 0)
  {
LABEL_381:
    v302 = cs_notificationPayloadWithSectionIDAndSettingsIDAndErrorStatus([objc_msgSend(v12 primaryStillImageSinkPipeline], objc_msgSend(a6, "settingsID"), 0);
    captureSession_postNotificationWithPayload(a1, @"ReadyForResponsiveRequest", v302);
  }

LABEL_382:
  if (v14)
  {
    v303 = [v238 objectForKeyedSubscript:@"CaptureRequestIdentifier"];
    v304 = [v238 objectForKeyedSubscript:@"PhotoIdentifier"];
    v305 = kFigCaptureSessionIrisStillImageSinkNotification_RawStillImageComplete;
    if (HIDWORD(v510))
    {
      v305 = kFigCaptureSessionIrisStillImageSinkNotification_DeferredPhotoProxyImageComplete;
    }

    v306 = *v305;
    v307 = [v238 objectForKeyedSubscript:{@"Metadata", p_cf}];
    v308 = [objc_msgSend(objc_msgSend(v307 objectForKeyedSubscript:{*MEMORY[0x1E696DE30]), "objectForKeyedSubscript:", *off_1E7989D10), "unsignedIntValue"}];
    if (dword_1ED844050)
    {
      v309 = v308;
      v525 = v238;
      LODWORD(v553.value) = 0;
      type[0] = OS_LOG_TYPE_DEFAULT;
      v310 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v311 = v553.value;
      if (os_log_type_enabled(v310, type[0]))
      {
        v312 = v311;
      }

      else
      {
        v312 = v311 & 0xFFFFFFFE;
      }

      if (v312)
      {
        v313 = *(DerivedStorage + 104);
        v314 = FigAppleMakerNoteStillImageProcessingFlagsToShortString(v309);
        v315 = [v529 settingsID];
        LODWORD(cf.value) = 136317187;
        *(&cf.value + 4) = "captureSession_handleCapturedStillImage";
        LOWORD(cf.flags) = 2114;
        *(&cf.flags + 2) = v313;
        HIWORD(cf.epoch) = 2113;
        v537 = *&v306;
        v538 = 1024;
        v539 = v309;
        v540 = 2113;
        v541 = v314;
        v542 = 1024;
        v543 = v237;
        v544 = 2048;
        *v545 = v315;
        *&v545[8] = 2114;
        *v546 = v303;
        *&v546[8] = 2114;
        *v547 = v304;
        LODWORD(v479) = 84;
        p_cf = &cf;
        _os_log_send_and_compose_impl();
      }

      fig_log_call_emit_and_clean_up_after_send_and_compose();
      a1 = v518;
      v12 = v519;
      a6 = v529;
      v238 = v525;
    }

    captureSession_postNotificationWithPayload(a1, v306, v238);
    a4 = target;
  }

  if (v527)
  {
    v316 = [v528 objectForKeyedSubscript:@"CaptureRequestIdentifier"];
    v317 = [v528 objectForKeyedSubscript:@"PhotoIdentifier"];
    v318 = kFigCaptureSessionIrisStillImageSinkNotification_StillImageComplete;
    if (HIDWORD(v510))
    {
      v318 = kFigCaptureSessionIrisStillImageSinkNotification_DeferredPhotoProxyImageComplete;
    }

    if ((v506 & 0x100000000) == 0)
    {
      v318 = kFigCaptureSessionStillImageSinkNotification_StillImageComplete;
    }

    v319 = *v318;
    if (dword_1ED844050)
    {
      v320 = v317;
      LODWORD(v553.value) = 0;
      type[0] = OS_LOG_TYPE_DEFAULT;
      v321 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v322 = v553.value;
      if (os_log_type_enabled(v321, type[0]))
      {
        v323 = v322;
      }

      else
      {
        v323 = v322 & 0xFFFFFFFE;
      }

      if (v323)
      {
        v324 = *(DerivedStorage + 104);
        v325 = FigAppleMakerNoteStillImageProcessingFlagsToShortString(v517);
        v326 = [v529 outputWidth];
        v327 = [v529 outputHeight];
        v328 = v559[0];
        v329 = [v529 settingsID];
        LODWORD(cf.value) = 136317699;
        *(&cf.value + 4) = "captureSession_handleCapturedStillImage";
        LOWORD(cf.flags) = 2114;
        *(&cf.flags + 2) = v324;
        HIWORD(cf.epoch) = 2113;
        v537 = *&v319;
        v538 = 1024;
        v539 = v517;
        v540 = 2113;
        v541 = v325;
        v542 = 1024;
        v543 = v326;
        v544 = 1024;
        *v545 = v327;
        a1 = v518;
        *&v545[4] = 1024;
        *&v545[6] = v328;
        *v546 = 2048;
        *&v546[2] = v329;
        *v547 = 2114;
        *&v547[2] = v316;
        v548 = 2114;
        v549 = v320;
        LODWORD(v479) = 96;
        p_cf = &cf;
        _os_log_send_and_compose_impl();
      }

      fig_log_call_emit_and_clean_up_after_send_and_compose();
      v12 = v519;
      a6 = v529;
      a4 = target;
    }

    memset(&cf, 0, sizeof(cf));
    if (a4)
    {
      CMSampleBufferGetPresentationTimeStamp(&cf, a4);
    }

    else
    {
      cf = **&MEMORY[0x1E6960C70];
    }

    v330 = MEMORY[0x1E695FF58];
    v331 = *MEMORY[0x1E695FF58];
    if (*MEMORY[0x1E695FF58] == 1)
    {
      [a6 settingsID];
      time = cf;
      Seconds = CMTimeGetSeconds(&time);
      if (a6)
      {
        objc_msgSend_stillImageUserInitiatedRequestPTS(a6, Seconds);
      }

      else
      {
        memset(&v553, 0, sizeof(v553));
      }

      time = v553;
      CMTimeGetSeconds(&time);
      kdebug_trace();
      v331 = *v330;
    }

    if (v331)
    {
      v333 = fig_log_handle();
      if (os_signpost_enabled(v333))
      {
        time = cf;
        v334 = CMTimeGetSeconds(&time);
        v335 = LODWORD(v334);
        if (a6)
        {
          objc_msgSend_stillImageUserInitiatedRequestPTS(a6);
        }

        else
        {
          memset(&v553, 0, sizeof(v553));
        }

        time = v553;
        v336 = CMTimeGetSeconds(&time);
        LODWORD(time.value) = 67240448;
        HIDWORD(time.value) = v335;
        LOWORD(time.timescale) = 1026;
        *(&time.timescale + 2) = LODWORD(v336);
        _os_signpost_emit_with_name_impl(&dword_1AC90E000, v333, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "StillImageCaptureNow", " enableTelemetry=YES N1=%{public,signpost.telemetry:number1}d N2=%{public,signpost.telemetry:number2}d", &time, 0xEu);
      }
    }

    captureSession_postNotificationWithPayload(a1, v319, v528);
    [objc_msgSend(v520 "portraitHDRStagingNode")];
  }

  v534 = 0u;
  v535 = 0u;
  v532 = 0u;
  v533 = 0u;
  v337 = [v511 metadataSinkPipelines];
  v338 = [v337 countByEnumeratingWithState:&v532 objects:v531 count:16];
  if (v338)
  {
    v339 = v338;
    v340 = 0;
    v341 = *v533;
    do
    {
      for (i = 0; i != v339; ++i)
      {
        if (*v533 != v341)
        {
          objc_enumerationMutation(v337);
        }

        v340 |= [(FigCaptureMetadataSinkPipeline *)*(*(&v532 + 1) + 8 * i) mrcLowPowerModeEnabled];
      }

      v339 = [v337 countByEnumeratingWithState:&v532 objects:v531 count:16];
    }

    while (v339);
    if (([a6 burstQualityCaptureEnabled] & v340) == 1)
    {
      v343 = [a6 settingsID];
      os_unfair_lock_lock((DerivedStorage + 384));
      v344 = [v12 mostRecentBurstSettingsID];
      os_unfair_lock_unlock((DerivedStorage + 384));
      if (v344 <= v343)
      {
        v530[0] = MEMORY[0x1E69E9820];
        v530[1] = 3221225472;
        v530[2] = __captureSession_handleCapturedStillImage_block_invoke;
        v530[3] = &unk_1E7998B98;
        v530[4] = v12;
        v530[5] = v511;
        v530[6] = v343;
        v345 = CMBaseObjectGetDerivedStorage();
        captureSession_dispatchGraphCalloutWithGraphIDToWorkerQueueAfter(a1, *(v345 + 760), v530, 0.266);
      }
    }
  }

  else
  {
    [a6 burstQualityCaptureEnabled];
  }
}

uint64_t cs_rotatePixelBuffer(__CVBuffer *a1, uint64_t a2, uint64_t a3, VTPixelRotationSessionRef *a4, __CVBuffer **a5)
{
  if (a4)
  {
    v9 = *a4;
  }

  else
  {
    v9 = 0;
  }

  pixelRotationSessionOut = 0;
  if (!a1)
  {
    cs_rotatePixelBuffer_cold_6(0, a2);
    goto LABEL_21;
  }

  HIDWORD(v10) = -1527099483 * a2 + 47721858;
  LODWORD(v10) = HIDWORD(v10);
  if ((v10 >> 1) > 0x2D82D82)
  {
LABEL_21:
    v16 = 0;
    v24 = 4294954516;
    goto LABEL_27;
  }

  v11 = FigCaptureNormalizeAngle(a2);
  Width = CVPixelBufferGetWidth(a1);
  v13 = Width | (CVPixelBufferGetHeight(a1) << 32);
  PixelFormatType = CVPixelBufferGetPixelFormatType(a1);
  v15 = __ROR8__(v13, 32);
  if (v11 % 180 == 90)
  {
    v13 = v15;
  }

  v16 = [+[BWOnDemandPixelBufferAllocator onDemandAllocatorWithoutMemoryPoolWithDimensions:dimensionAlignment:pixelFormat:name:](BWOnDemandPixelBufferAllocator onDemandAllocatorWithoutMemoryPoolWithDimensions:v13 dimensionAlignment:0 pixelFormat:PixelFormatType name:objc_msgSend(MEMORY[0x1E696AEC0], "stringWithFormat:", @"OnDemand-CaptureSessionRotationOutput-%@", a3)), "newPixelBuffer"];
  if (v16)
  {
    if (FigCapturePixelFormatIsDepthData(PixelFormatType))
    {
      v17 = FigCaptureConvertRotationAndMirroringToExifOrientation(v11, 0);
      v23 = FigDepthRotateBuffer(a1, v16, v17, v18, v19, v20, v21, v22, v33);
      v24 = v23;
      if (!v23)
      {
        v25 = 1;
        goto LABEL_30;
      }

      cs_rotatePixelBuffer_cold_4(v23);
      goto LABEL_27;
    }

    if (!v9)
    {
      v26 = VTPixelRotationSessionCreate(*MEMORY[0x1E695E480], &pixelRotationSessionOut);
      if (v26)
      {
        v24 = v26;
        cs_rotatePixelBuffer_cold_1();
        goto LABEL_27;
      }

      v9 = pixelRotationSessionOut;
    }

    v27 = *MEMORY[0x1E6983D98];
    v28 = FigCaptureVTRotationFromDegrees(v11);
    v29 = VTSessionSetProperty(v9, v27, v28);
    if (v29)
    {
      v24 = v29;
      cs_rotatePixelBuffer_cold_2();
    }

    else
    {
      v30 = VTPixelRotationSessionRotateImage(v9, a1, v16);
      v24 = v30;
      if (!v30)
      {
        v31 = pixelRotationSessionOut;
        v25 = 1;
        if (a4 && pixelRotationSessionOut)
        {
          v24 = 0;
          *a4 = pixelRotationSessionOut;
          goto LABEL_30;
        }

        goto LABEL_28;
      }

      cs_rotatePixelBuffer_cold_3(v30);
    }
  }

  else
  {
    cs_rotatePixelBuffer_cold_5();
    v24 = 4294954510;
  }

LABEL_27:
  v25 = 0;
  v31 = pixelRotationSessionOut;
LABEL_28:
  if (v31)
  {
    CFRelease(v31);
  }

LABEL_30:
  if (a5 && v25)
  {
    *a5 = v16;
  }

  else
  {
    CVPixelBufferRelease(v16);
  }

  return v24;
}

void *cs_rotateDepthMetadata(uint64_t a1, int a2)
{
  v3 = [MEMORY[0x1E695DF90] dictionaryWithDictionary:a1];
  v4 = FigCaptureNormalizeAngle(a2);
  v5 = FigCaptureExifOrientationFromRotationDegreesAndMirroring(v4, 0);
  FigDepthRotateMetadataDictionary(v3, v5, 0, v6, v7, v8, v9, v10, v12);
  return v3;
}

void captureSession_transferAndSanitizeOutputBufferAttachments(uint64_t a1, const void *a2, CMAttachmentBearerRef target, void *a4, void *a5)
{
  CMRemoveAllAttachments(target);
  v10 = *MEMORY[0x1E696D8B0];
  v11 = [a4 objectForKeyedSubscript:*MEMORY[0x1E696D8B0]];
  if (v11)
  {
    [a4 setObject:v11 forKeyedSubscript:@"FaceRegions"];
    [a4 removeObjectForKey:v10];
  }

  CMSetAttachments(target, a4, 1u);
  if (a1)
  {
    v19 = 0;
    v12 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v12)
    {
      v12(a1, @"AttributesDictionary", *MEMORY[0x1E695E480], &v19);
      v13 = v19;
    }

    else
    {
      v13 = 0;
    }

    v14 = [objc_msgSend(v13 objectForKeyedSubscript:{@"Sphere", "BOOLValue"}];

    if (v14)
    {
      if ([a5 bracketType])
      {
        if ([a5 lensStabilizationDuringBracketEnabled])
        {
          v15 = CMGetAttachment(a2, *off_1E798A3C8, 0);
          v16 = [v15 objectForKeyedSubscript:*off_1E798B6B0];
          if (([objc_msgSend(v15 objectForKeyedSubscript:{*off_1E798B6C0), "unsignedIntValue"}] & 6) != 0)
          {
            v17 = MEMORY[0x1E69605E8];
          }

          else if (objc_msgSend_isEqualToString_(v16) & 1) != 0 || (objc_msgSend_isEqualToString_(v16))
          {
            v17 = MEMORY[0x1E69605D8];
          }

          else
          {
            isEqualToString = objc_msgSend_isEqualToString_(v16);
            v17 = MEMORY[0x1E69605D8];
            if ((isEqualToString & 1) == 0 && !objc_msgSend_isEqualToString_(v16))
            {
              v17 = MEMORY[0x1E69605F0];
            }
          }
        }

        else
        {
          v17 = MEMORY[0x1E69605E0];
        }

        if (*v17)
        {
          CMSetAttachment(target, *MEMORY[0x1E6960548], *v17, 1u);
        }
      }
    }
  }
}

id *__captureSession_handleCapturedStillImage_block_invoke(id *result, char a2)
{
  if ((a2 & 1) == 0)
  {
    v2 = result;
    result = [result[4] mostRecentBurstSettingsID];
    if (result <= v2[6])
    {
      v11 = 0u;
      v12 = 0u;
      v9 = 0u;
      v10 = 0u;
      v3 = [v2[5] metadataSinkPipelines];
      result = [v3 countByEnumeratingWithState:&v9 objects:v8 count:16];
      if (result)
      {
        v4 = result;
        v5 = *v10;
        do
        {
          v6 = 0;
          do
          {
            if (*v10 != v5)
            {
              objc_enumerationMutation(v3);
            }

            v7 = *(*(&v9 + 1) + 8 * v6);
            if ([(FigCaptureMetadataSinkPipeline *)v7 mrcLowPowerModeEnabled])
            {
              [(FigCaptureMetadataSinkPipeline *)v7 setMrcSuspended:?];
            }

            v6 = (v6 + 1);
          }

          while (v4 != v6);
          result = [v3 countByEnumeratingWithState:&v9 objects:v8 count:16];
          v4 = result;
        }

        while (result);
      }
    }
  }

  return result;
}

void __captureSession_startMonitoringForFigAssetWriterWritingVideoNotificationIfNecessary_block_invoke(uint64_t a1, int token)
{
  state64[0] = 0;
  state = notify_get_state(token, state64);
  v4 = state64[0];
  if (state || state64[0] > 1)
  {
    v19 = 0;
    v18 = 0;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  else
  {
    v5 = state64[0] == 1;
    v6 = LOBYTE(state64[0]) ^ 1;
    os_unfair_lock_lock((*(a1 + 32) + 384));
    v7 = *(a1 + 32);
    v8 = state64[0];
    if (*(v7 + 672) == state64[0])
    {
      v9 = 0;
      v8 = *(v7 + 672);
    }

    else if (state64[0])
    {
      if (state64[0] == 1)
      {
        v11 = *(a1 + 40);
        v20[0] = MEMORY[0x1E69E9820];
        v20[1] = 3221225472;
        v20[2] = __captureSession_startMonitoringForFigAssetWriterWritingVideoNotificationIfNecessary_block_invoke_2;
        v20[3] = &__block_descriptor_40_e8_v12__0B8l;
        v20[4] = v7;
        DerivedStorage = CMBaseObjectGetDerivedStorage();
        captureSession_dispatchGraphCalloutWithGraphIDToWorkerQueueAfter(v11, *(DerivedStorage + 760), v20, 0.0);
        v9 = 0;
        v7 = *(a1 + 32);
        *(v7 + 680) = *(v7 + 401);
        v8 = state64[0];
      }

      else
      {
        v9 = 0;
      }
    }

    else
    {
      v9 = *(v7 + 680);
      *(v7 + 680) = 0;
    }

    *(v7 + 672) = v8;
    if (dword_1ED844050)
    {
      v19 = 0;
      v18 = 0;
      v13 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
      v7 = *(a1 + 32);
    }

    os_unfair_lock_unlock((v7 + 384));
    v14 = *(a1 + 40);
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __captureSession_startMonitoringForFigAssetWriterWritingVideoNotificationIfNecessary_block_invoke_1193;
    v15[3] = &__block_descriptor_42_e5_v8__0l;
    v16 = v5;
    v15[4] = v14;
    v17 = v6;
    captureSession_performBlockOnWorkerQueue(v14, v15);
    if (((v4 == 0) & v9) == 1)
    {
      captureSession_showRecordingVideoWhileMultitaskingDialogIfNecessary(*(a1 + 40));
    }
  }
}

void *__captureSession_startMonitoringForFigAssetWriterWritingVideoNotificationIfNecessary_block_invoke_2(void *result, char a2)
{
  if ((a2 & 1) == 0)
  {
    v2 = -[FigCaptureCameraSourcePipeline captureDevice]([objc_msgSend(*(result[4] + 784) "cameraSourcePipelines")]);
    result = [v2 captureInitiatedOnce];
    if ((result & 1) == 0)
    {

      return [v2 setCaptureInitiatedOnce:1];
    }
  }

  return result;
}

void __captureSession_startMonitoringForFigAssetWriterWritingVideoNotificationIfNecessary_block_invoke_1193(uint64_t a1)
{
  if (*(a1 + 40))
  {
    v1 = kFigCaptureSessionNotification_DidStartFigAssetWriterRecording;
  }

  else
  {
    if (*(a1 + 41) != 1)
    {
      return;
    }

    v1 = kFigCaptureSessionNotification_DidStopFigAssetWriterRecording;
  }

  captureSession_postNotificationWithPayload(*(a1 + 32), *v1, 0);
}

void __captureSession_startMonitoringAudioPlaybackAndRouteChangeNotifications_block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) referencedObject];
  if (v1)
  {
    v2[0] = MEMORY[0x1E69E9820];
    v2[1] = 3221225472;
    v2[2] = __captureSession_startMonitoringAudioPlaybackAndRouteChangeNotifications_block_invoke_2;
    v2[3] = &__block_descriptor_40_e5_v8__0l;
    v2[4] = v1;
    captureSession_performBlockOnWorkerQueue(v1, v2);
  }
}

void __captureSession_startMonitoringAudioPlaybackAndRouteChangeNotifications_block_invoke_3(uint64_t a1)
{
  v1 = [*(a1 + 32) referencedObject];
  if (v1)
  {
    v2[0] = MEMORY[0x1E69E9820];
    v2[1] = 3221225472;
    v2[2] = __captureSession_startMonitoringAudioPlaybackAndRouteChangeNotifications_block_invoke_4;
    v2[3] = &__block_descriptor_40_e5_v8__0l;
    v2[4] = v1;
    captureSession_performBlockOnWorkerQueue(v1, v2);
  }
}

void __captureSession_ensureAVAudioSessionForIsUsingCameraIfNecessary_block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  if (!*(*(a1 + 32) + 192))
  {
    *(*(a1 + 32) + 192) = [objc_alloc(MEMORY[0x1E698D710]) initAuxiliarySession];
  }

  objc_autoreleasePoolPop(v2);
  v3 = *(a1 + 40);
  if (v3)
  {

    CFRelease(v3);
  }
}

void cs_cancelPocketDetectionTimeoutTimer()
{
  if (qword_1EB58E938)
  {
    dispatch_source_cancel(qword_1EB58E938);

    qword_1EB58E938 = 0;
  }
}

uint64_t __captureSession_showCinematicFramingAlertIfApplicable_block_invoke(uint64_t a1)
{
  v15 = 0;
  v16 = &v15;
  v17 = 0x3052000000;
  v18 = __Block_byref_object_copy__27;
  v2 = getBMStreamsClass_softClass;
  v19 = __Block_byref_object_dispose__27;
  v20 = getBMStreamsClass_softClass;
  if (!getBMStreamsClass_softClass)
  {
    v10 = MEMORY[0x1E69E9820];
    v11 = 3221225472;
    v12 = __getBMStreamsClass_block_invoke;
    v13 = &unk_1E798FC38;
    v14 = &v15;
    __getBMStreamsClass_block_invoke(&v10);
    v2 = v16[5];
  }

  _Block_object_dispose(&v15, 8);
  v3 = [objc_msgSend(v2 "discoverabilitySignal")];
  IsCameracaptured = FigCaptureCurrentProcessIsCameracaptured();
  v5 = &FigCaptureClientApplicationIdentifierCameracaptured;
  if (!IsCameracaptured)
  {
    v5 = &FigCaptureClientApplicationIdentifierMediaserverd;
  }

  v6 = *v5;
  v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.centerstage-discovered", *v5];
  v15 = 0;
  v16 = &v15;
  v17 = 0x3052000000;
  v18 = __Block_byref_object_copy__27;
  v8 = getBMDiscoverabilitySignalEventClass_softClass;
  v19 = __Block_byref_object_dispose__27;
  v20 = getBMDiscoverabilitySignalEventClass_softClass;
  if (!getBMDiscoverabilitySignalEventClass_softClass)
  {
    v10 = MEMORY[0x1E69E9820];
    v11 = 3221225472;
    v12 = __getBMDiscoverabilitySignalEventClass_block_invoke;
    v13 = &unk_1E798FC38;
    v14 = &v15;
    __getBMDiscoverabilitySignalEventClass_block_invoke(&v10);
    v8 = v16[5];
  }

  _Block_object_dispose(&v15, 8);
  return [v3 sendEvent:{objc_msgSend([v8 alloc], "initWithIdentifier:bundleID:context:", v7, v6, *(a1 + 32))}];
}

void sub_1ACB2C380(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __captureSession_showCinematicFramingAlertIfApplicable_block_invoke_1254(uint64_t a1)
{
  if (dword_1ED844050)
  {
    v7 = 0;
    v6 = 0;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  return [*(a1 + 32) activateWithContext:{*(a1 + 40), v4, v5}];
}

Class __getBMStreamsClass_block_invoke(uint64_t a1)
{
  BiomeStreamsLibrary();
  result = objc_getClass("BMStreams");
  *(*(*(a1 + 32) + 8) + 40) = result;
  if (!*(*(*(a1 + 32) + 8) + 40))
  {
    __getBMStreamsClass_block_invoke_cold_1();
  }

  getBMStreamsClass_softClass = *(*(*(a1 + 32) + 8) + 40);
  return result;
}

void BiomeStreamsLibrary()
{
  v0[0] = 0;
  if (!BiomeStreamsLibraryCore_frameworkLibrary)
  {
    v0[1] = MEMORY[0x1E69E9820];
    v0[2] = 3221225472;
    v0[3] = __BiomeStreamsLibraryCore_block_invoke;
    v0[4] = &__block_descriptor_40_e5_v8__0l;
    v0[5] = v0;
    v1 = xmmword_1E7998F48;
    v2 = 0;
    BiomeStreamsLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  if (!BiomeStreamsLibraryCore_frameworkLibrary)
  {
    BiomeStreamsLibrary_cold_1(v0);
  }

  if (v0[0])
  {
    free(v0[0]);
  }
}

uint64_t __BiomeStreamsLibraryCore_block_invoke(uint64_t a1)
{
  result = _sl_dlopen();
  BiomeStreamsLibraryCore_frameworkLibrary = result;
  return result;
}

Class __getBMDiscoverabilitySignalEventClass_block_invoke(uint64_t a1)
{
  BiomeStreamsLibrary();
  result = objc_getClass("BMDiscoverabilitySignalEvent");
  *(*(*(a1 + 32) + 8) + 40) = result;
  if (!*(*(*(a1 + 32) + 8) + 40))
  {
    __getBMDiscoverabilitySignalEventClass_block_invoke_cold_1();
  }

  getBMDiscoverabilitySignalEventClass_softClass = *(*(*(a1 + 32) + 8) + 40);
  return result;
}

void __captureSession_prepareCellularRadioForNetworkConnection_block_invoke()
{
  v0 = SymptomReporterLibraryCore(0);
  if (v0)
  {
    inited = getsymptom_framework_initSymbolLoc(v0);
    if (inited)
    {
      v2 = getsymptom_framework_initSymbolLoc(inited);
      if (!v2)
      {
        __captureSession_prepareCellularRadioForNetworkConnection_block_invoke_cold_4();
      }

      v3 = v2(110, "com.apple.barcodesupport");
      v12 = 0;
      v13 = &v12;
      v14 = 0x2020000000;
      v4 = getsymptom_newSymbolLoc_ptr;
      v15 = getsymptom_newSymbolLoc_ptr;
      if (!getsymptom_newSymbolLoc_ptr)
      {
        v5 = SymptomReporterLibrary();
        v13[3] = dlsym(v5, "symptom_new");
        getsymptom_newSymbolLoc_ptr = v13[3];
        v4 = v13[3];
      }

      _Block_object_dispose(&v12, 8);
      if (!v4)
      {
        __captureSession_prepareCellularRadioForNetworkConnection_block_invoke_cold_3();
      }

      v6 = v4(v3, 450561);
      v12 = 0;
      v13 = &v12;
      v14 = 0x2020000000;
      v7 = getsymptom_set_qualifierSymbolLoc_ptr;
      v15 = getsymptom_set_qualifierSymbolLoc_ptr;
      if (!getsymptom_set_qualifierSymbolLoc_ptr)
      {
        v8 = SymptomReporterLibrary();
        v13[3] = dlsym(v8, "symptom_set_qualifier");
        getsymptom_set_qualifierSymbolLoc_ptr = v13[3];
        v7 = v13[3];
      }

      _Block_object_dispose(&v12, 8);
      if (!v7)
      {
        __captureSession_prepareCellularRadioForNetworkConnection_block_invoke_cold_2();
      }

      v7(v6, 1, 0);
      v12 = 0;
      v13 = &v12;
      v14 = 0x2020000000;
      v9 = getsymptom_sendSymbolLoc_ptr;
      v15 = getsymptom_sendSymbolLoc_ptr;
      if (!getsymptom_sendSymbolLoc_ptr)
      {
        v10 = SymptomReporterLibrary();
        v13[3] = dlsym(v10, "symptom_send");
        getsymptom_sendSymbolLoc_ptr = v13[3];
        v9 = v13[3];
      }

      _Block_object_dispose(&v12, 8);
      if (!v9)
      {
        __captureSession_prepareCellularRadioForNetworkConnection_block_invoke_cold_1();
      }

      v9(v6);
      if (dword_1ED844050)
      {
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }
    }
  }
}

uint64_t SymptomReporterLibraryCore(uint64_t a1)
{
  if (!SymptomReporterLibraryCore_frameworkLibrary)
  {
    SymptomReporterLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  return SymptomReporterLibraryCore_frameworkLibrary;
}

uint64_t getsymptom_framework_initSymbolLoc(uint64_t a1)
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2020000000;
  v1 = getsymptom_framework_initSymbolLoc_ptr;
  v7 = getsymptom_framework_initSymbolLoc_ptr;
  if (!getsymptom_framework_initSymbolLoc_ptr)
  {
    v2 = SymptomReporterLibrary();
    v5[3] = dlsym(v2, "symptom_framework_init");
    getsymptom_framework_initSymbolLoc_ptr = v5[3];
    v1 = v5[3];
  }

  _Block_object_dispose(&v4, 8);
  return v1;
}

void sub_1ACB2CB90(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __SymptomReporterLibraryCore_block_invoke(uint64_t a1)
{
  result = _sl_dlopen();
  SymptomReporterLibraryCore_frameworkLibrary = result;
  return result;
}

void *__getsymptom_framework_initSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = SymptomReporterLibrary();
  result = dlsym(v2, "symptom_framework_init");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getsymptom_framework_initSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t SymptomReporterLibrary()
{
  v3 = 0;
  v0 = SymptomReporterLibraryCore(&v3);
  if (!v0)
  {
    SymptomReporterLibrary_cold_1(&v3);
  }

  v1 = v0;
  if (v3)
  {
    free(v3);
  }

  return v1;
}

void *__getsymptom_newSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = SymptomReporterLibrary();
  result = dlsym(v2, "symptom_new");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getsymptom_newSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getsymptom_set_qualifierSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = SymptomReporterLibrary();
  result = dlsym(v2, "symptom_set_qualifier");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getsymptom_set_qualifierSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getsymptom_sendSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = SymptomReporterLibrary();
  result = dlsym(v2, "symptom_send");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getsymptom_sendSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void captureSession_startDeferredGraphSetupOnWorkerQueueAfter(const void *a1, float a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v5 = DerivedStorage;
  if (*(DerivedStorage + 112) == 1)
  {
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __captureSession_startDeferredGraphSetupOnWorkerQueueAfter_block_invoke;
    v9[3] = &__block_descriptor_40_e8_v12__0B8l;
    v9[4] = DerivedStorage;
    v6 = CMBaseObjectGetDerivedStorage();
    captureSession_dispatchGraphCalloutWithGraphIDToWorkerQueueAfter(a1, *(v6 + 760), v9, 0.0);
  }

  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __captureSession_startDeferredGraphSetupOnWorkerQueueAfter_block_invoke_2;
  v8[3] = &__block_descriptor_48_e8_v12__0B8l;
  v8[4] = v5;
  v8[5] = a1;
  v7 = CMBaseObjectGetDerivedStorage();
  captureSession_dispatchGraphCalloutWithGraphIDToWorkerQueueAfter(a1, *(v7 + 760), v8, a2);
}

void __captureSession_startDeferredGraphSetupOnWorkerQueueAfter_block_invoke(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
    os_unfair_lock_lock((*(a1 + 32) + 384));
    v3 = *(a1 + 32);
    if (*(v3 + 601) != 1 || (*(v3 + 400) & 1) != 0 || (*(v3 + 603) & 1) != 0 || *(v3 + 112) == 1 && *(v3 + 602) != 1)
    {

      os_unfair_lock_unlock((v3 + 384));
    }

    else
    {
      if (*(v3 + 184) == 1)
      {
        os_unfair_lock_unlock((v3 + 384));
      }

      else
      {
        v4 = *(v3 + 604);
        os_unfair_lock_unlock((v3 + 384));
        if (v4 != 1)
        {
          return;
        }
      }

      v5 = *(*(a1 + 32) + 752);

      [v5 startDeferredSourceNodesIfNeeded];
    }
  }
}

void __captureSession_startDeferredGraphSetupOnWorkerQueueAfter_block_invoke_2(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
    os_unfair_lock_lock((*(a1 + 32) + 384));
    v3 = *(a1 + 32);
    if (*(v3 + 601) != 1 || (*(v3 + 400) & 1) != 0 || (*(v3 + 603) & 1) != 0 || *(v3 + 112) == 1 && *(v3 + 602) != 1)
    {

      os_unfair_lock_unlock((v3 + 384));
    }

    else
    {
      if (*(v3 + 184) == 1)
      {
        os_unfair_lock_unlock((v3 + 384));
      }

      else
      {
        v4 = *(v3 + 604);
        os_unfair_lock_unlock((v3 + 384));
        if (v4 != 1)
        {
          return;
        }
      }

      v5 = *(a1 + 40);

      captureSession_startDeferredGraphSetup(v5);
    }
  }
}

uint64_t __initializeGlobals_block_invoke(uint64_t a1, uint64_t a2)
{
  FigNote_AllowInternalDefaultLogs();
  fig_note_initialize_category_with_default_work_cf();

  return fig_note_initialize_category_with_default_work_cf();
}

void __captureSession_updatePreviewSinkConnectionEnabledState_block_invoke(uint64_t a1)
{
  os_unfair_lock_lock((*(a1 + 32) + 384));
  v3 = *(*(a1 + 32) + 512);
  os_unfair_lock_unlock((*(a1 + 32) + 384));
  if (v3)
  {
    if (*(*(a1 + 32) + 752))
    {
      v2 = [[FigCaptureSessionParsedConfiguration alloc] initWithSessionConfiguration:v3 clientSetsUserInitiatedCaptureRequestTime:captureSession_clientSetsUserInitiatedCaptureRequestTime(*(a1 + 40)) restrictions:*(*(a1 + 32) + 496)];
      if (v2)
      {
        captureSession_updateGraphConnectionEnabledState(*(a1 + 40), v2);
      }
    }
  }
}

void *__captureSession_updateSessionStateWithApplicationAndLayoutState_block_invoke(uint64_t a1)
{
  v10 = 0u;
  v11 = 0u;
  v8 = 0u;
  v9 = 0u;
  v1 = [*(*(a1 + 32) + 784) movieFileSinkPipelines];
  result = [v1 countByEnumeratingWithState:&v8 objects:v7 count:16];
  if (result)
  {
    v3 = result;
    v4 = *v9;
    do
    {
      v5 = 0;
      do
      {
        if (*v9 != v4)
        {
          objc_enumerationMutation(v1);
        }

        v6 = *(*(&v8 + 1) + 8 * v5);
        if ([v6 recording])
        {
          [v6 setRecordedWhileMultitasking:1];
        }

        v5 = v5 + 1;
      }

      while (v3 != v5);
      result = [v1 countByEnumeratingWithState:&v8 objects:v7 count:16];
      v3 = result;
    }

    while (result);
  }

  return result;
}

void __captureSession_updateSessionStateWithApplicationAndLayoutState_block_invoke_1301(uint64_t a1)
{
  os_unfair_lock_lock((*(a1 + 32) + 384));
  v2 = *(a1 + 32);
  v3 = *(v2 + 337);
  os_unfair_lock_unlock((v2 + 384));
  v4 = *(a1 + 32);
  if (*(v4 + 288))
  {
    if (!v3)
    {
      return;
    }

    v5 = *(v4 + 280);
    if (!v5)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v5 = *(v4 + 280);
    if (!v5 || (v3 & 1) == 0)
    {
      return;
    }
  }

  v6 = *(v4 + 336);
  v10 = 0;
  [v5 setActive:0 withOptions:v6 error:&v10];
  v7 = *(a1 + 32);
  if (*(v7 + 288))
  {
LABEL_8:
    CMSessionEndInterruption();
    v7 = *(a1 + 32);
  }

  v8 = *(v7 + 328);
  if (v8)
  {
    dispatch_source_cancel(v8);

    v7 = *(a1 + 32);
    *(v7 + 328) = 0;
  }

  *(v7 + 336) = 0;
  os_unfair_lock_lock((v7 + 384));
  v9 = *(a1 + 32);
  *(v9 + 337) = 0;
  os_unfair_lock_unlock((v9 + 384));
}

uint64_t __captureSession_updateSessionStateWithApplicationAndLayoutState_block_invoke_2(uint64_t a1)
{
  v2 = +[BWFigCaptureDeviceVendor sharedCaptureDeviceVendor];
  v3 = *(a1 + 32);

  return [v2 unregisterClient:v3];
}

void __captureSession_startObservingAVAudioSessionInterruptionNotification_block_invoke(uint64_t a1, void *a2)
{
  v4 = objc_autoreleasePoolPush();
  v5 = [*(a1 + 32) referencedObject];
  if (!v5)
  {
    goto LABEL_18;
  }

  v6 = v5;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if ((objc_msgSend_isEqualToString_([a2 name]) & 1) == 0)
  {
    goto LABEL_8;
  }

  if (*DerivedStorage)
  {
    goto LABEL_18;
  }

  v8 = [a2 userInfo];
  v9 = [objc_msgSend(v8 objectForKeyedSubscript:{*MEMORY[0x1E698D588]), "integerValue"}];
  v10 = [a2 userInfo];
  v11 = [objc_msgSend(v10 objectForKeyedSubscript:{*MEMORY[0x1E698D570]), "integerValue"}];
  v12 = [a2 userInfo];
  [objc_msgSend(v12 objectForKeyedSubscript:{*MEMORY[0x1E698D560]), "integerValue"}];
  if (!v9)
  {
LABEL_11:
    v14 = [a2 userInfo];
    [v14 objectForKeyedSubscript:*MEMORY[0x1E698D590]];
    v15 = [a2 userInfo];
    [v15 objectForKeyedSubscript:*MEMORY[0x1E698D598]];
    if (v9)
    {
      if (dword_1ED844050)
      {
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
LABEL_16:
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }
    }

    else if (dword_1ED844050)
    {
      v17 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT);
      goto LABEL_16;
    }

    captureSession_updateSessionStateWithNewInputCondition(v6, DerivedStorage + 433, v9, 0, 0);
    goto LABEL_18;
  }

  if (v9 != 1)
  {
    goto LABEL_8;
  }

  if (!v11)
  {
    LODWORD(v9) = 1;
    goto LABEL_11;
  }

  if (dword_1ED844050)
  {
LABEL_8:
    v13 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

LABEL_18:
  objc_autoreleasePoolPop(v4);
}

void __captureSession_startObservingCMSessionInterruptionNotification_block_invoke(uint64_t a1, void *a2)
{
  v4 = objc_autoreleasePoolPush();
  v5 = [*(a1 + 32) referencedObject];
  if (!v5)
  {
    goto LABEL_13;
  }

  v6 = v5;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if ((objc_msgSend_isEqualToString_([a2 name]) & 1) == 0)
  {
LABEL_11:
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    goto LABEL_13;
  }

  if (*DerivedStorage)
  {
    goto LABEL_13;
  }

  v8 = [a2 userInfo];
  v9 = [objc_msgSend(v8 objectForKeyedSubscript:{*MEMORY[0x1E69AF9E0]), "intValue"}];
  if (!v9)
  {
    v10 = 1;
    goto LABEL_8;
  }

  if (v9 != 1)
  {
    if (!dword_1ED844050)
    {
      goto LABEL_13;
    }

    goto LABEL_11;
  }

  v10 = 0;
LABEL_8:
  v11 = [a2 userInfo];
  [v11 objectForKeyedSubscript:*MEMORY[0x1E69AF9F0]];
  v12 = [a2 userInfo];
  [v12 objectForKeyedSubscript:*MEMORY[0x1E69AF9F8]];
  if (dword_1ED844050)
  {
    v13 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  captureSession_updateSessionStateWithNewInputCondition(v6, DerivedStorage + 433, v10, 0, 0);
LABEL_13:
  objc_autoreleasePoolPop(v4);
}

dispatch_group_t __cs_prewarmSystemOverride_block_invoke()
{
  v0 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INITIATED, 0);
  cs_prewarmSystemOverride_overrideQueue = dispatch_queue_create("capture-session-prewarm-system-override", v0);
  result = dispatch_group_create();
  cs_prewarmSystemOverride_overrideGroup = result;
  return result;
}

void __captureSession_primeMemoryPoolPrewarmTimer_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  os_unfair_lock_lock(&sFigCaptureSessionPrewarming);
  captureSession_cancelMemoryPoolPrewarmingLocked(v1, 1);

  os_unfair_lock_unlock(&sFigCaptureSessionPrewarming);
}

uint64_t captureSession_Invalidate(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!*DerivedStorage)
  {
    v3 = DerivedStorage;
    *DerivedStorage = 1;
    [+[FigCaptureSessionObservatory sharedObservatory](FigCaptureSessionObservatory "sharedObservatory")];
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __captureSession_Invalidate_block_invoke;
    v5[3] = &__block_descriptor_48_e5_v8__0l;
    v5[4] = v3;
    v5[5] = a1;
    captureSession_performBlockOnWorkerQueueSynchronously(a1, v5);
  }

  return 0;
}

void captureSession_Finalize(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  captureSession_Invalidate(a1);
  v3 = *(DerivedStorage + 136);
  if (v3)
  {
    dispatch_release(v3);
    *(DerivedStorage + 136) = 0;
  }

  v4 = *(DerivedStorage + 144);
  if (v4)
  {
    dispatch_release(v4);
    *(DerivedStorage + 144) = 0;
  }

  v5 = *(DerivedStorage + 152);
  if (v5)
  {
    dispatch_release(v5);
    *(DerivedStorage + 152) = 0;
  }

  v6 = *(DerivedStorage + 160);
  if (v6)
  {
    dispatch_release(v6);
    *(DerivedStorage + 160) = 0;
  }

  v7 = *(DerivedStorage + 256);
  if (v7)
  {
    dispatch_release(v7);
    *(DerivedStorage + 256) = 0;
  }

  v8 = *(DerivedStorage + 176);
  if (v8)
  {
    dispatch_release(v8);
    *(DerivedStorage + 176) = 0;
  }

  v9 = *(DerivedStorage + 200);
  if (v9)
  {
    dispatch_release(v9);
    *(DerivedStorage + 200) = 0;
  }

  *(DerivedStorage + 192) = 0;
  v10 = *(DerivedStorage + 88);
  if (v10)
  {
    CFRelease(v10);
    *(DerivedStorage + 88) = 0;
  }

  v11 = *(DerivedStorage + 96);
  if (v11)
  {
    CFRelease(v11);
    *(DerivedStorage + 96) = 0;
  }

  v12 = *(DerivedStorage + 104);
  if (v12)
  {
    CFRelease(v12);
    *(DerivedStorage + 104) = 0;
  }

  v13 = *(DerivedStorage + 8);
  if (v13)
  {
    CFRelease(v13);
    *(DerivedStorage + 8) = 0;
  }

  v14 = *(DerivedStorage + 720);
  if (v14)
  {
    CFRelease(v14);
    *(DerivedStorage + 720) = 0;
  }

  v15 = *(DerivedStorage + 728);
  if (v15)
  {
    CFRelease(v15);
    *(DerivedStorage + 728) = 0;
  }

  v16 = *(DerivedStorage + 736);
  if (v16)
  {
    CFRelease(v16);
    *(DerivedStorage + 736) = 0;
  }

  *(DerivedStorage + 856) = 0;
  *(DerivedStorage + 872) = 0;

  *(DerivedStorage + 952) = 0;
}

__CFString *captureSession_CopyDebugDescription(const void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v3 = CFGetAllocator(a1);
  Mutable = CFStringCreateMutable(v3, 0);
  v5 = *(DerivedStorage + 104);
  v6 = CFGetRetainCount(a1);
  if (*DerivedStorage)
  {
    v7 = " (invalidated)";
  }

  else
  {
    v7 = "";
  }

  v8 = CFGetAllocator(a1);
  CFStringAppendFormat(Mutable, 0, @"<FigCaptureSession %@ retainCount: %ld%s allocator: %p>", v5, v6, v7, v8);
  return Mutable;
}

void captureSession_runDeferredStartWhenNeeded(const void *a1)
{
  v2 = (CMBaseObjectGetDerivedStorage() + 604);

  captureSession_updateDeferredGraphSetupStartCondition(a1, v2, 1);
}

uint64_t captureSession_CopySectionProperty(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v34 = 0;
  v35 = &v34;
  v36 = 0x2020000000;
  v37 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!*DerivedStorage)
  {
    if (a2)
    {
      if (a3)
      {
        v24 = MEMORY[0x1E69E9820];
        v25 = 3221225472;
        v26 = __captureSession_CopySectionProperty_block_invoke;
        v27 = &unk_1E7999008;
        v30 = a2;
        v31 = a3;
        v32 = a5;
        v33 = a4;
        v28 = &v34;
        v29 = DerivedStorage;
        captureSession_performBlockOnWorkerQueueSynchronously(a1, &v24);
        v14 = *(v35 + 6);
        goto LABEL_6;
      }

      FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", 0, v5, v24, v25, v26, v27, v28, v29);
      v18 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1ED844048, 0xFFFFCE14, "<<<< FigCaptureSession >>>>", 0x5E6D, v5, v19, v20, v23);
    }

    else
    {
      FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", 0, v5, v24, v25, v26, v27, v28, v29);
      v18 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1ED844048, 0xFFFFBFF0, "<<<< FigCaptureSession >>>>", 0x5E6C, v5, v16, v17, v22);
    }

    v14 = v18;
    *(v35 + 6) = v18;
    goto LABEL_6;
  }

  v14 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1ED844048, 0xFFFFCE0FLL, "<<<< FigCaptureSession >>>>", 0x5E69, v5, v12, v13, v21);
LABEL_6:
  _Block_object_dispose(&v34, 8);
  return v14;
}

void captureSession_StopRunning(const void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (dword_1ED844050)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (!*DerivedStorage)
  {
    captureSession_updateSessionStateWithNewInputCondition(a1, DerivedStorage + 396, 0, 0, 1);
  }
}

void captureSession_FileSinkStartRecording(const void *a1, void *a2, void *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (dword_1ED844050)
  {
    v17 = 0;
    v16 = 0;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (!*DerivedStorage)
  {
    if (a2)
    {
      if (a3)
      {
        if ([a3 settingsID])
        {
          v13[0] = MEMORY[0x1E69E9820];
          v13[1] = 3221225472;
          v13[2] = __captureSession_FileSinkStartRecording_block_invoke;
          v13[3] = &unk_1E798FE50;
          v13[5] = a2;
          v13[6] = a1;
          v13[4] = a3;
          captureSession_performBlockOnWorkerQueue(a1, v13);
          v9 = objc_autoreleasePoolPush();
LABEL_8:
          objc_autoreleasePoolPop(v9);
          return;
        }

        captureSession_FileSinkStartRecording_cold_1(v15);
      }

      else
      {
        captureSession_FileSinkStartRecording_cold_2(v15);
      }

      v12 = v15[0];
      v9 = objc_autoreleasePoolPush();
      if (!v12)
      {
        goto LABEL_8;
      }

      v11 = cs_notificationPayloadWithSectionIDAndSettingsIDAndErrorStatus(a2, [a3 settingsID], v12);
    }

    else
    {
      started = captureSession_FileSinkStartRecording_cold_3(a1, v14, v15, v7);
      v9 = *v14;
      if (started)
      {
        goto LABEL_8;
      }

      v11 = *v15;
    }

    captureSession_postNotificationWithPayload(a1, @"DidStopRecording", v11);
    goto LABEL_8;
  }
}

void captureSession_FileSinkStopRecording(const void *a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (dword_1ED844050)
  {
    v9 = 0;
    v8 = 0;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (!*DerivedStorage)
  {
    if (a2)
    {
      v7[0] = MEMORY[0x1E69E9820];
      v7[1] = 3221225472;
      v7[2] = __captureSession_FileSinkStopRecording_block_invoke;
      v7[3] = &unk_1E7990178;
      v7[4] = a2;
      v7[5] = a1;
      captureSession_performBlockOnWorkerQueue(a1, v7);
    }

    else
    {
      captureSession_FileSinkStopRecording_cold_1(v5);
    }
  }
}

void captureSession_FileSinkPauseRecording(const void *a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (dword_1ED844050)
  {
    v9 = 0;
    v8 = 0;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (!*DerivedStorage)
  {
    if (a2)
    {
      v7[0] = MEMORY[0x1E69E9820];
      v7[1] = 3221225472;
      v7[2] = __captureSession_FileSinkPauseRecording_block_invoke;
      v7[3] = &unk_1E7990178;
      v7[4] = a2;
      v7[5] = a1;
      captureSession_performBlockOnWorkerQueue(a1, v7);
    }

    else
    {
      captureSession_FileSinkPauseRecording_cold_1(v5);
    }
  }
}

void captureSession_FileSinkResumeRecording(const void *a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (dword_1ED844050)
  {
    v9 = 0;
    v8 = 0;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (!*DerivedStorage)
  {
    if (a2)
    {
      v7[0] = MEMORY[0x1E69E9820];
      v7[1] = 3221225472;
      v7[2] = __captureSession_FileSinkResumeRecording_block_invoke;
      v7[3] = &unk_1E7990178;
      v7[4] = a2;
      v7[5] = a1;
      captureSession_performBlockOnWorkerQueue(a1, v7);
    }

    else
    {
      captureSession_FileSinkResumeRecording_cold_1(v5);
    }
  }
}

void captureSession_StillImageSinkCaptureImage(const void *a1, void *a2, void *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (dword_1ED844050)
  {
    v19 = 0;
    v18 = 0;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (!*DerivedStorage)
  {
    if (a2)
    {
      if (a3)
      {
        if ([a3 settingsID])
        {
          if (!*(DerivedStorage + 368))
          {
            [a3 setStillImageRequestTime:mach_absolute_time()];
            v9 = MEMORY[0x1E695FF58];
            v10 = *MEMORY[0x1E695FF58];
            if (*MEMORY[0x1E695FF58] == 1)
            {
              kdebug_trace();
              v10 = *v9;
            }

            if (v10)
            {
              v11 = fig_log_handle();
              if (os_signpost_enabled(v11))
              {
                LOWORD(buf[0]) = 0;
                _os_signpost_emit_with_name_impl(&dword_1AC90E000, v11, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "StillImageCaptureNow", &unk_1AD0FC9CB, buf, 2u);
              }
            }

            v15[0] = MEMORY[0x1E69E9820];
            v15[1] = 3221225472;
            v15[2] = __captureSession_StillImageSinkCaptureImage_block_invoke;
            v15[3] = &unk_1E798FE50;
            v15[5] = a2;
            v15[6] = a1;
            v15[4] = a3;
            captureSession_performBlockOnWorkerQueue(a1, v15);
            return;
          }

          captureSession_StillImageSinkCaptureImage_cold_1(buf);
        }

        else
        {
          captureSession_StillImageSinkCaptureImage_cold_2(buf);
        }
      }

      else
      {
        captureSession_StillImageSinkCaptureImage_cold_3(buf);
      }

      v14 = buf[0];
      if (!buf[0])
      {
        return;
      }

      v12 = objc_autoreleasePoolPush();
      v13 = cs_notificationPayloadWithSectionIDAndSettingsIDAndErrorStatus(a2, [a3 settingsID], v14);
    }

    else
    {
      if (captureSession_StillImageSinkCaptureImage_cold_4(a1, v16, buf, v7))
      {
        return;
      }

      v12 = *v16;
      v13 = *buf;
    }

    captureSession_postNotificationWithPayload(a1, @"StillImageComplete", v13);
    objc_autoreleasePoolPop(v12);
  }
}

void captureSession_StillImageSinkPrepareToCaptureBracket(const void *a1, void *a2, void *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (dword_1ED844050)
  {
    v16 = 0;
    v15 = 0;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (!*DerivedStorage)
  {
    if (a2)
    {
      if (a3)
      {
        if ([a3 settingsID])
        {
          v12[0] = MEMORY[0x1E69E9820];
          v12[1] = 3221225472;
          v12[2] = __captureSession_StillImageSinkPrepareToCaptureBracket_block_invoke;
          v12[3] = &unk_1E798FE50;
          v12[5] = a3;
          v12[6] = a1;
          v12[4] = a2;
          captureSession_performBlockOnWorkerQueue(a1, v12);
          return;
        }

        captureSession_StillImageSinkPrepareToCaptureBracket_cold_1(v14);
      }

      else
      {
        captureSession_StillImageSinkPrepareToCaptureBracket_cold_2(v14);
      }

      v11 = v14[0];
      if (v14[0])
      {
        v9 = objc_autoreleasePoolPush();
        v10 = cs_notificationPayloadWithSectionIDAndSettingsIDAndErrorStatus(a2, [a3 settingsID], v11);
        goto LABEL_15;
      }
    }

    else if ((captureSession_StillImageSinkPrepareToCaptureBracket_cold_3(a1, v13, v14, v7) & 1) == 0)
    {
      v9 = *v13;
      v10 = *v14;
LABEL_15:
      captureSession_postNotificationWithPayload(a1, @"BracketPreparationComplete", v10);
      objc_autoreleasePoolPop(v9);
    }
  }
}

void captureSession_IrisStillImageSinkCaptureImage(const void *a1, void *a2, void *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (dword_1ED844050)
  {
    v19 = 0;
    v18 = 0;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (!*DerivedStorage)
  {
    if (a2)
    {
      if (a3)
      {
        if ([a3 settingsID])
        {
          [a3 setStillImageRequestTime:mach_absolute_time()];
          v9 = MEMORY[0x1E695FF58];
          v10 = *MEMORY[0x1E695FF58];
          if (*MEMORY[0x1E695FF58] == 1)
          {
            kdebug_trace();
            v10 = *v9;
          }

          if (v10)
          {
            v11 = fig_log_handle();
            if (os_signpost_enabled(v11))
            {
              LOWORD(buf[0]) = 0;
              _os_signpost_emit_with_name_impl(&dword_1AC90E000, v11, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "StillImageCaptureNow", &unk_1AD0FC9CB, buf, 2u);
            }
          }

          v15[0] = MEMORY[0x1E69E9820];
          v15[1] = 3221225472;
          v15[2] = __captureSession_IrisStillImageSinkCaptureImage_block_invoke;
          v15[3] = &unk_1E798FE50;
          v15[5] = a3;
          v15[6] = a1;
          v15[4] = a2;
          captureSession_performBlockOnWorkerQueue(a1, v15);
          return;
        }

        captureSession_IrisStillImageSinkCaptureImage_cold_1(buf);
      }

      else
      {
        captureSession_IrisStillImageSinkCaptureImage_cold_2(buf);
      }

      v14 = buf[0];
      if (!buf[0])
      {
        return;
      }

      v12 = objc_autoreleasePoolPush();
      v13 = cs_notificationPayloadWithSectionIDAndSettingsIDAndErrorStatus(a2, [a3 settingsID], v14);
    }

    else
    {
      if (captureSession_IrisStillImageSinkCaptureImage_cold_3(a1, v16, buf, v7))
      {
        return;
      }

      v12 = *v16;
      v13 = *buf;
    }

    captureSession_postNotificationWithPayload(a1, @"IrisWillBeginCapture", v13);
    objc_autoreleasePoolPop(v12);
  }
}

void captureSession_IrisStillImageSinkPrepareToCapture(const void *a1, void *a2, void *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (dword_1ED844050)
  {
    v16 = 0;
    v15 = 0;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (!*DerivedStorage)
  {
    if (a2)
    {
      if (a3)
      {
        if ([a3 settingsID])
        {
          v12[0] = MEMORY[0x1E69E9820];
          v12[1] = 3221225472;
          v12[2] = __captureSession_IrisStillImageSinkPrepareToCapture_block_invoke;
          v12[3] = &unk_1E798FE50;
          v12[5] = a3;
          v12[6] = a1;
          v12[4] = a2;
          captureSession_performBlockOnWorkerQueue(a1, v12);
          return;
        }

        captureSession_IrisStillImageSinkPrepareToCapture_cold_1(v14);
      }

      else
      {
        captureSession_IrisStillImageSinkPrepareToCapture_cold_2(v14);
      }

      v11 = v14[0];
      if (v14[0])
      {
        v9 = objc_autoreleasePoolPush();
        v10 = cs_notificationPayloadWithSectionIDAndSettingsIDAndErrorStatus(a2, [a3 settingsID], v11);
        goto LABEL_15;
      }
    }

    else if ((captureSession_IrisStillImageSinkPrepareToCapture_cold_3(a1, v13, v14, v7) & 1) == 0)
    {
      v9 = *v13;
      v10 = *v14;
LABEL_15:
      captureSession_postNotificationWithPayload(a1, @"IrisPreparationComplete", v10);
      objc_autoreleasePoolPop(v9);
    }
  }
}

void captureSession_IrisStillImageSinkBeginMomentCapture(const void *a1, void *a2, void *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (dword_1ED844050)
  {
    v34 = 0;
    v33 = OS_LOG_TYPE_DEFAULT;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (!*DerivedStorage)
  {
    if (a2)
    {
      if (a3)
      {
        if ([a3 settingsID])
        {
          if (!*(DerivedStorage + 368))
          {
            *(DerivedStorage + 368) = a3;
            v9 = MEMORY[0x1E695FF58];
            if (*MEMORY[0x1E695FF58] == 1)
            {
              kdebug_trace();
            }

            v10 = mach_absolute_time();
            if (*v9)
            {
              v11 = fig_log_handle();
              if (os_signpost_enabled(v11))
              {
                *buf = 0;
                _os_signpost_emit_with_name_impl(&dword_1AC90E000, v11, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "BeginMomentCapture", &unk_1AD0FC9CB, buf, 2u);
              }
            }

            captureSession_SetSectionProperty(a1, a2, @"UserInitiatedCaptureRequestTime", [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{objc_msgSend(a3, "userInitiatedCaptureTime", v19, v20)}]);
            v27[0] = MEMORY[0x1E69E9820];
            v27[1] = 3221225472;
            v27[2] = __captureSession_IrisStillImageSinkBeginMomentCapture_block_invoke;
            v27[3] = &unk_1E7998380;
            v27[4] = a2;
            v27[5] = a3;
            v27[6] = a1;
            v27[7] = v10;
            captureSession_performBlockOnWorkerQueue(a1, v27);
            v12 = objc_autoreleasePoolPush();
            v13 = 0;
            goto LABEL_14;
          }

          FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", 0, v3, v21, v22, v23, v24, v25, v26);
          v34 = 0;
          v33 = OS_LOG_TYPE_DEFAULT;
          v15 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          v16 = v34;
          if (os_log_type_enabled(v15, v33))
          {
            v17 = v16;
          }

          else
          {
            v17 = v16 & 0xFFFFFFFE;
          }

          if (v17)
          {
            v18 = [*(DerivedStorage + 368) settingsID];
            v28 = 136315394;
            v29 = "captureSession_IrisStillImageSinkBeginMomentCapture";
            v30 = 2050;
            v31 = v18;
            LODWORD(v20) = 22;
            v19 = &v28;
            _os_log_send_and_compose_impl();
          }

          fig_log_call_emit_and_clean_up_after_send_and_compose();
          v13 = 4294950895;
          goto LABEL_28;
        }

        captureSession_IrisStillImageSinkBeginMomentCapture_cold_1(buf);
      }

      else
      {
        captureSession_IrisStillImageSinkBeginMomentCapture_cold_2(buf);
      }
    }

    else
    {
      captureSession_IrisStillImageSinkBeginMomentCapture_cold_3(buf);
    }

    v13 = *buf;
    if (!*buf)
    {
LABEL_29:
      v12 = objc_autoreleasePoolPush();
      if (!a2)
      {
        v14 = captureSession_notificationPayloadWithErrorStatus(a1, v13);
        goto LABEL_15;
      }

LABEL_14:
      v14 = cs_notificationPayloadWithSectionIDAndSettingsIDAndErrorStatus(a2, [a3 settingsID], v13);
LABEL_15:
      captureSession_postNotificationWithPayload(a1, @"DidBeginMomentCapture", v14);
      objc_autoreleasePoolPop(v12);
      return;
    }

LABEL_28:
    v21 = MEMORY[0x1E69E9820];
    v22 = 3221225472;
    v23 = __captureSession_IrisStillImageSinkBeginMomentCapture_block_invoke_2;
    v24 = &__block_descriptor_44_e5_v8__0l;
    v25 = a1;
    v26 = v13;
    captureSession_performBlockOnWorkerQueue(a1, &v21);
    goto LABEL_29;
  }
}

void captureSession_IrisStillImageSinkCommitMomentCaptureToStillImageCapture(const void *a1, void *a2, void *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (dword_1ED844050)
  {
    v45 = 0;
    v44 = OS_LOG_TYPE_DEFAULT;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (!*DerivedStorage)
  {
    if (a2)
    {
      if (a3)
      {
        if ([a3 settingsID])
        {
          v9 = [a3 settingsID];
          if (v9 == [*(DerivedStorage + 368) settingsID])
          {
            v10 = *(DerivedStorage + 368);
            if (v10)
            {
              CFRelease(v10);
              *(DerivedStorage + 368) = 0;
            }

            [a3 setStillImageRequestTime:mach_absolute_time()];
            v11 = MEMORY[0x1E695FF58];
            v12 = *MEMORY[0x1E695FF58];
            if (*MEMORY[0x1E695FF58] == 1)
            {
              kdebug_trace();
              v12 = *v11;
            }

            if (v12)
            {
              v13 = fig_log_handle();
              if (os_signpost_enabled(v13))
              {
                *buf = 0;
                _os_signpost_emit_with_name_impl(&dword_1AC90E000, v13, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "StillImageCaptureNow", &unk_1AD0FC9CB, buf, 2u);
              }
            }

            v33[0] = MEMORY[0x1E69E9820];
            v33[1] = 3221225472;
            v33[2] = __captureSession_IrisStillImageSinkCommitMomentCaptureToStillImageCapture_block_invoke;
            v33[3] = &unk_1E7999050;
            v33[6] = a1;
            v33[7] = DerivedStorage;
            v33[4] = a2;
            v33[5] = a3;
            v33[8] = a2;
            v34 = 0;
            captureSession_performBlockOnWorkerQueue(a1, v33);
            return;
          }

          FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", 0, v3, v27, v28, v29, v30, v31, v32);
          v45 = 0;
          v44 = OS_LOG_TYPE_DEFAULT;
          v15 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          v16 = v45;
          if (os_log_type_enabled(v15, v44))
          {
            v17 = v16;
          }

          else
          {
            v17 = v16 & 0xFFFFFFFE;
          }

          if (v17)
          {
            v18 = [a3 settingsID];
            v19 = [*(DerivedStorage + 368) settingsID];
            v35 = 136315650;
            v36 = "captureSession_IrisStillImageSinkCommitMomentCaptureToStillImageCapture";
            v37 = 2050;
            v38 = v18;
            v39 = 2050;
            v40 = v19;
            _os_log_send_and_compose_impl();
          }

          fig_log_call_emit_and_clean_up_after_send_and_compose();
          v14 = 4294950896;
          goto LABEL_28;
        }

        captureSession_IrisStillImageSinkCommitMomentCaptureToStillImageCapture_cold_1(buf);
      }

      else
      {
        captureSession_IrisStillImageSinkCommitMomentCaptureToStillImageCapture_cold_2(buf);
      }
    }

    else
    {
      captureSession_IrisStillImageSinkCommitMomentCaptureToStillImageCapture_cold_3(buf);
    }

    v14 = *buf;
    if (!*buf)
    {
      return;
    }

LABEL_28:
    v45 = 0;
    v44 = OS_LOG_TYPE_DEFAULT;
    v20 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    v21 = v45;
    if (os_log_type_enabled(v20, v44))
    {
      v22 = v21;
    }

    else
    {
      v22 = v21 & 0xFFFFFFFE;
    }

    if (v22)
    {
      v23 = *(DerivedStorage + 104);
      v24 = [a3 settingsID];
      v35 = 136315906;
      v36 = "captureSession_IrisStillImageSinkCommitMomentCaptureToStillImageCapture";
      v37 = 2114;
      v38 = v23;
      v39 = 2048;
      v40 = v24;
      v41 = 1024;
      LODWORD(v42) = v14;
      _os_log_send_and_compose_impl();
    }

    fig_log_call_emit_and_clean_up_after_send_and_compose();
    v28 = MEMORY[0x1E69E9820];
    v29 = 3221225472;
    v30 = __captureSession_IrisStillImageSinkCommitMomentCaptureToStillImageCapture_block_invoke_1412;
    v31 = &__block_descriptor_40_e5_v8__0l;
    v32 = a1;
    captureSession_performBlockOnWorkerQueue(a1, &v28);
    v25 = objc_autoreleasePoolPush();
    if (a2)
    {
      v26 = cs_notificationPayloadWithSectionIDAndSettingsIDAndErrorStatus(a2, [a3 settingsID], v14);
    }

    else
    {
      v26 = captureSession_notificationPayloadWithErrorStatus(a1, v14);
    }

    captureSession_postNotificationWithPayload(a1, @"IrisWillBeginCapture", v26);
    objc_autoreleasePoolPop(v25);
  }
}

void captureSession_IrisStillImageSinkCommitMomentCaptureToMovieRecording(const void *a1, void *a2, void *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (dword_1ED844050)
  {
    v32 = 0;
    v31 = OS_LOG_TYPE_DEFAULT;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (!*DerivedStorage)
  {
    if (a2)
    {
      if (a3)
      {
        if ([a3 settingsID])
        {
          v8 = [a3 settingsID];
          if (v8 == [*(DerivedStorage + 368) settingsID])
          {
            v9 = [*(DerivedStorage + 368) userInitiatedCaptureTime];
            v10 = [*(DerivedStorage + 368) torchMode];
            v11 = *(DerivedStorage + 368);
            if (v11)
            {
              CFRelease(v11);
              *(DerivedStorage + 368) = 0;
            }

            if (*MEMORY[0x1E695FF58] == 1)
            {
              kdebug_trace();
            }

            v20[0] = MEMORY[0x1E69E9820];
            v20[1] = 3221225472;
            v20[2] = __captureSession_IrisStillImageSinkCommitMomentCaptureToMovieRecording_block_invoke;
            v20[3] = &unk_1E7999078;
            v20[4] = a2;
            v20[5] = a3;
            v20[6] = a1;
            v20[7] = v9;
            v21 = v10;
            v20[8] = DerivedStorage;
            v20[9] = a2;
            captureSession_performBlockOnWorkerQueue(a1, v20);
            return;
          }

          captureSession_IrisStillImageSinkCommitMomentCaptureToMovieRecording_cold_1(v30);
        }

        else
        {
          captureSession_IrisStillImageSinkCommitMomentCaptureToMovieRecording_cold_2(v30);
        }
      }

      else
      {
        captureSession_IrisStillImageSinkCommitMomentCaptureToMovieRecording_cold_3(v30);
      }
    }

    else
    {
      captureSession_IrisStillImageSinkCommitMomentCaptureToMovieRecording_cold_4(v30);
    }

    v12 = v30[0];
    if (v30[0])
    {
      v32 = 0;
      v31 = OS_LOG_TYPE_DEFAULT;
      v13 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v14 = v32;
      if (os_log_type_enabled(v13, v31))
      {
        v15 = v14;
      }

      else
      {
        v15 = v14 & 0xFFFFFFFE;
      }

      if (v15)
      {
        v16 = *(DerivedStorage + 104);
        v22 = 136315906;
        v23 = "captureSession_IrisStillImageSinkCommitMomentCaptureToMovieRecording";
        v24 = 2114;
        v25 = v16;
        v26 = 2048;
        v27 = [a3 settingsID];
        v28 = 1024;
        LODWORD(v29) = v12;
        _os_log_send_and_compose_impl();
      }

      fig_log_call_emit_and_clean_up_after_send_and_compose();
      v19[0] = MEMORY[0x1E69E9820];
      v19[1] = 3221225472;
      v19[2] = __captureSession_IrisStillImageSinkCommitMomentCaptureToMovieRecording_block_invoke_1416;
      v19[3] = &__block_descriptor_40_e5_v8__0l;
      v19[4] = a1;
      captureSession_performBlockOnWorkerQueue(a1, v19);
      v17 = objc_autoreleasePoolPush();
      if (a2)
      {
        v18 = cs_notificationPayloadWithSectionIDAndSettingsIDAndErrorStatus(a2, [a3 settingsID], v12);
      }

      else
      {
        v18 = captureSession_notificationPayloadWithErrorStatus(a1, v12);
      }

      captureSession_postNotificationWithPayload(a1, @"DidBeginRecordingMomentCaptureMovie", v18);
      objc_autoreleasePoolPop(v17);
    }
  }
}

void captureSession_IrisStillImageSinkCancelMomentCapture(const void *a1, void *a2, void *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (dword_1ED844050)
  {
    v35 = 0;
    v34 = OS_LOG_TYPE_DEFAULT;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (!*DerivedStorage)
  {
    if (a2)
    {
      if ([*(DerivedStorage + 368) settingsID] == a3)
      {
        v15 = *(DerivedStorage + 368);
        if (v15)
        {
          CFRelease(v15);
          *(DerivedStorage + 368) = 0;
        }

        if (*MEMORY[0x1E695FF58] == 1)
        {
          kdebug_trace();
        }

        v24[0] = MEMORY[0x1E69E9820];
        v24[1] = 3221225472;
        v24[2] = __captureSession_IrisStillImageSinkCancelMomentCapture_block_invoke;
        v24[3] = &unk_1E79914E0;
        v24[4] = a2;
        v24[5] = a1;
        v24[6] = DerivedStorage;
        v24[7] = a3;
        v24[8] = a2;
        captureSession_performBlockOnWorkerQueue(a1, v24);
        return;
      }

      captureSession_IrisStillImageSinkCancelMomentCapture_cold_1(v33);
    }

    else
    {
      captureSession_IrisStillImageSinkCancelMomentCapture_cold_2(v33, v6, v7, v8, v9, v10, v11, v12);
    }

    v16 = v33[0];
    if (v33[0])
    {
      v35 = 0;
      v34 = OS_LOG_TYPE_DEFAULT;
      v17 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v18 = v35;
      if (os_log_type_enabled(v17, v34))
      {
        v19 = v18;
      }

      else
      {
        v19 = v18 & 0xFFFFFFFE;
      }

      if (v19)
      {
        v20 = *(DerivedStorage + 104);
        v25 = 136315906;
        v26 = "captureSession_IrisStillImageSinkCancelMomentCapture";
        v27 = 2114;
        v28 = v20;
        v29 = 2048;
        v30 = a3;
        v31 = 1024;
        LODWORD(v32) = v16;
        _os_log_send_and_compose_impl();
      }

      fig_log_call_emit_and_clean_up_after_send_and_compose();
      v23[0] = MEMORY[0x1E69E9820];
      v23[1] = 3221225472;
      v23[2] = __captureSession_IrisStillImageSinkCancelMomentCapture_block_invoke_1418;
      v23[3] = &__block_descriptor_40_e5_v8__0l;
      v23[4] = a1;
      captureSession_performBlockOnWorkerQueue(a1, v23);
      v21 = objc_autoreleasePoolPush();
      if (a2)
      {
        v22 = cs_notificationPayloadWithSectionIDAndSettingsIDAndErrorStatus(a2, a3, v16);
      }

      else
      {
        v22 = captureSession_notificationPayloadWithErrorStatus(a1, v16);
      }

      captureSession_postNotificationWithPayload(a1, @"DidCancelMomentCapture", v22);
      objc_autoreleasePoolPop(v21);
    }
  }
}

void captureSession_IrisStillImageSinkEndMomentCapture(const void *a1, uint64_t a2, uint64_t a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v14 = DerivedStorage;
  if (dword_1ED844050)
  {
    v18 = 0;
    v17 = 0;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    DerivedStorage = fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (!*v14)
  {
    if (a2)
    {
      if (*MEMORY[0x1E695FF58] == 1)
      {
        kdebug_trace();
      }

      v16[0] = MEMORY[0x1E69E9820];
      v16[1] = 3221225472;
      v16[2] = __captureSession_IrisStillImageSinkEndMomentCapture_block_invoke;
      v16[3] = &unk_1E7990150;
      v16[4] = a2;
      v16[5] = a1;
      v16[6] = v14;
      v16[7] = a3;
      captureSession_performBlockOnWorkerQueue(a1, v16);
    }

    else
    {
      captureSession_IrisStillImageSinkEndMomentCapture_cold_1(DerivedStorage, v7, v8, v9, v10, v11, v12, v13);
    }
  }
}

void captureSession_VisionDataSinkTriggerBurst(const void *a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (dword_1ED844050)
  {
    v9 = 0;
    v8 = 0;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (!*DerivedStorage)
  {
    if (a2)
    {
      v7[0] = MEMORY[0x1E69E9820];
      v7[1] = 3221225472;
      v7[2] = __captureSession_VisionDataSinkTriggerBurst_block_invoke;
      v7[3] = &unk_1E7990178;
      v7[4] = a2;
      v7[5] = a1;
      captureSession_performBlockOnWorkerQueue(a1, v7);
    }

    else
    {
      captureSession_VisionDataSinkTriggerBurst_cold_1(v5);
    }
  }
}

void *__cs_shouldCachePreviewSinkSessionPropertyWithKey_block_invoke()
{
  result = [objc_alloc(MEMORY[0x1E695DEC8]) initWithObjects:{@"PreviewFilters", @"PortraitLightingEffectStrength", @"SemanticStyles", @"PrimaryCaptureRect", 0}];
  cs_shouldCachePreviewSinkSessionPropertyWithKey_cachedPreviewSinkPropertyKeys = result;
  return result;
}

void captureSession_updateInflightConfigurationWithVideoDataSinkPropertyForKey(uint64_t a1, uint64_t a2, const void *a3, void *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!_FigIsCurrentDispatchQueue())
  {
    captureSession_updateInflightConfigurationWithVideoDataSinkPropertyForKey_cold_1();
  }

  os_unfair_lock_lock((DerivedStorage + 384));
  v6 = *(DerivedStorage + 504);
  v20 = DerivedStorage;
  os_unfair_lock_unlock((DerivedStorage + 384));
  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v19 = v6;
  v7 = [v6 connectionConfigurations];
  v8 = [v7 countByEnumeratingWithState:&v32 objects:v31 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v33;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v33 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = [*(*(&v32 + 1) + 8 * i) videoDataSinkConfiguration];
        if ([objc_msgSend(v12 "sinkID")] && CFEqual(a3, @"CaptureSessionVideoDataSinkProperty_PreservesDynamicHDRMetadata"))
        {
          if (dword_1ED844050)
          {
            v30 = 0;
            type = OS_LOG_TYPE_DEFAULT;
            os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            v14 = v30;
            if (os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, type))
            {
              v15 = v14;
            }

            else
            {
              v15 = v14 & 0xFFFFFFFE;
            }

            if (v15)
            {
              v16 = *(v20 + 104);
              v23 = 136315650;
              v24 = "captureSession_updateInflightConfigurationWithVideoDataSinkPropertyForKey";
              v25 = 2114;
              v26 = v16;
              v27 = 2114;
              v28 = a3;
              LODWORD(v18) = 32;
              v17 = &v23;
              _os_log_send_and_compose_impl();
            }

            fig_log_call_emit_and_clean_up_after_send_and_compose();
          }

          [v12 setPreservesDynamicHDRMetadata:{objc_msgSend(a4, "BOOLValue", v17, v18)}];
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v32 objects:v31 count:16];
    }

    while (v9);
  }
}

os_log_t __getCameraCaptureExcessiveLog_block_invoke_0()
{
  result = os_log_create("com.apple.cameracapture", "excessive");
  getCameraCaptureExcessiveLog_cameraCaptureExcessiveLog_0 = result;
  return result;
}

uint64_t cs_updateSmartStyleSupport(uint64_t a1, void *a2, void *a3)
{
  if (a2)
  {
    result = [a2 constantColorEnabled];
    if (result)
    {
      return result;
    }

    result = [a2 burstQualityCaptureEnabled];
    if (result)
    {
      return result;
    }

    result = FigCapturePixelFormatIsDemosaicedRaw([a2 rawOutputFormat]);
    if (result)
    {
      return result;
    }

    result = [a2 bracketType];
    if (result)
    {
      return result;
    }
  }

  CurrentSmartStyle = cs_getCurrentSmartStyle(a1);
  result = [objc_msgSend(+[FigCaptureSourceBackingsProvider sharedCaptureSourceBackingsProvider](FigCaptureSourceBackingsProvider "sharedCaptureSourceBackingsProvider")];
  if (!result)
  {
    return result;
  }

  v8 = CurrentSmartStyle != 0;
  v9 = CurrentSmartStyle;
  if (!CurrentSmartStyle)
  {
    result = +[FigCaptureSmartStyle identityStyle];
    v9 = result;
  }

  v10 = CurrentSmartStyle != 0;
  if (!a2)
  {
LABEL_13:
    if (!a3)
    {
      goto LABEL_17;
    }

    goto LABEL_14;
  }

  [a2 setSmartStyle:v9];
  result = [a2 clientQualityPrioritization];
  if (result == 1 || (result = FigCapturePixelFormatIsDemosaicedRaw([a2 rawOutputFormat]), (result & 1) != 0))
  {
    v10 = 0;
    goto LABEL_13;
  }

  result = [a2 outputFileType];
  if (CurrentSmartStyle)
  {
    v11 = result == 1785096550;
  }

  else
  {
    v11 = 1;
  }

  v10 = !v11;
  if (a3)
  {
LABEL_14:
    result = [objc_msgSend(a3 videoSettings];
    if (result)
    {
      result = BWOSTypeForString(result);
      v8 = result == 1752589105;
    }

    else
    {
      v8 = 1;
    }
  }

LABEL_17:
  if (v10 && v8)
  {
    [a2 setSmartStyleReversibilitySupported:1];

    return [a3 setSmartStyleReversibilitySupported:1];
  }

  return result;
}

uint64_t captureSession_captureStillImageNow(const void *a1, void *a2, void *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v7 = [*(DerivedStorage + 784) stillImageSinkPipelineSessionStorageWithSinkID:a2];
  v8 = [v7 primaryStillImageSinkPipeline];
  v9 = [v8 stillImageCoordinatorNode];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v67 = [a3 isBeginMomentCaptureSettings];
  v73 = v7;
  obj = [v7 primaryCameraSourcePipeline];
  if (isKindOfClass)
  {
    v11 = [*(DerivedStorage + 784) movieFileSinkPipelineWithSinkID:{objc_msgSend(v8, "sinkID")}];
  }

  else
  {
    v11 = 0;
  }

  v12 = [(FigCaptureCameraSourcePipeline *)obj captureDevice];
  if (!_FigIsCurrentDispatchQueue())
  {
    captureSession_captureStillImageNow_cold_1();
  }

  v64 = a2;
  if (!v8)
  {
    if (captureSession_captureStillImageNow_cold_9(DerivedStorage, &v112))
    {
      return 0;
    }

    LODWORD(v40) = v112;
    goto LABEL_120;
  }

  if (!v9)
  {
    captureSession_captureStillImageNow_cold_8(&v112);
    goto LABEL_116;
  }

  [v8 sinkID];
  if ((objc_msgSend_isEqualToString_(a2) & 1) == 0)
  {
    captureSession_captureStillImageNow_cold_2(&v112);
    goto LABEL_116;
  }

  if (captureSession_isPrewarming(a1))
  {
    captureSession_captureStillImageNow_cold_7(&v112);
    goto LABEL_116;
  }

  if ((*(DerivedStorage + 768) & 1) == 0)
  {
    captureSession_captureStillImageNow_cold_3(&v112);
LABEL_116:
    LODWORD(v40) = v112;
    if (!v112)
    {
      return 0;
    }

    goto LABEL_120;
  }

  v72 = a3;
  v65 = isKindOfClass;
  v66 = DerivedStorage;
  if ([*(DerivedStorage + 752) resumesConnectionsAsNodesArePrepared])
  {
    v13 = CMBaseObjectGetDerivedStorage();
    if (!_FigIsCurrentDispatchQueue())
    {
      captureSession_captureStillImageNow_cold_4();
    }

    if (dword_1ED844050)
    {
      v115 = 0;
      v114 = OS_LOG_TYPE_DEFAULT;
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    if ((*(v13 + 769) & 1) == 0)
    {
      captureSession_startDeferredGraphSetupWork(a1);
      [*(v13 + 752) waitForNonDeferredSourceNodesToStart];
    }
  }

  else
  {
    captureSession_waitForGraphToStart(a1, 0);
  }

  if (captureSession_clientIsCameraOrDerivative(a1) && [-[FigCaptureCameraSourcePipeline captureDevice](obj) softISPEnabled] && (*(DerivedStorage + 771) & 1) == 0 && objc_msgSend(a3, "qualityPrioritization") == 3)
  {
    [objc_msgSend(*(DerivedStorage + 752) "memoryPool")];
  }

  if ((*(DerivedStorage + 771) & 1) == 0 && [v12 trueVideoCaptureEnabled])
  {
    os_unfair_lock_lock((DerivedStorage + 384));
    if (!*(DerivedStorage + 744))
    {
      v15 = dispatch_group_create();
      *(DerivedStorage + 744) = v15;
      dispatch_group_enter(v15);
    }

    os_unfair_lock_unlock((DerivedStorage + 384));
  }

  *(DerivedStorage + 771) = 1;
  if ((isKindOfClass & 1) != 0 && [(FigCaptureMovieFileSinkPipeline *)v11 irisStagingNode])
  {
    v16 = [*(DerivedStorage + 752) resumesConnectionsAsNodesArePrepared] ? 2.0 : 1.0;
    v17 = [(FigCaptureMovieFileSinkPipeline *)v11 irisStagingNode];
    *&v18 = v16;
    if (([v17 waitUntilReadyToReceiveRequestsWithTimeout:v18] & 1) == 0)
    {
      v115 = 0;
      v114 = OS_LOG_TYPE_DEFAULT;
      v19 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v20 = v115;
      if (os_log_type_enabled(v19, v114))
      {
        v21 = v20;
      }

      else
      {
        v21 = v20 & 0xFFFFFFFE;
      }

      if (v21)
      {
        v22 = *(v66 + 104);
        *v107 = 136315650;
        *&v107[4] = "captureSession_captureStillImageNow";
        v108 = 2114;
        v109 = v22;
        v110 = 2048;
        v111 = v16;
        LODWORD(v63) = 32;
        v62 = v107;
        _os_log_send_and_compose_impl();
      }

      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }
  }

  v23 = v73;
  if ([v73 videoStabilizationOverscanCropEnabled])
  {
    [v73 videoStabilizationOverscanCropMultiplier];
    [a3 setVideoStabilizationOverscanCropMultiplier:?];
  }

  [v12 zoomFactor];
  v106 = v24;
  v25 = stillImageSinkPipelineSessionStorage_stillImageOutputDimensionsForSettings(v73, v8, a3, &v106);
  captureSession_updateOutputDimensionsAndResolutionFlavor(v25, obj, a3);
  BWUpdateThumbnailAndPreviewDimensionsForRequestedSettings(a3, v26, v106);
  v68 = a1;
  if ((isKindOfClass & 1) != 0 && -[FigCaptureMovieFileSinkPipeline movieFileSinkNodes](v11) && [a3 movieMode])
  {
    obja = v12;
    v104 = 0u;
    v105 = 0u;
    v102 = 0u;
    v103 = 0u;
    v27 = [(FigCaptureMovieFileSinkPipeline *)v11 movieFileSinkNodes];
    v28 = [v27 countByEnumeratingWithState:&v102 objects:v101 count:16];
    if (v28)
    {
      v29 = v28;
      v30 = *v103;
      do
      {
        for (i = 0; i != v29; ++i)
        {
          if (*v103 != v30)
          {
            objc_enumerationMutation(v27);
          }

          v32 = *(*(&v102 + 1) + 8 * i);
          if ([v32 irisMovieProcessingSuspended])
          {
            [v32 setIrisMovieProcessingSuspended:0];
            v33 = [v11 sinkID];
            *v107 = @"SectionID";
            *&v112 = v33;
            captureSession_postNotificationWithPayload(a1, @"DidResumeIrisMovieProcessing", [MEMORY[0x1E695DF20] dictionaryWithObjects:&v112 forKeys:v107 count:1]);
          }
        }

        v29 = [v27 countByEnumeratingWithState:&v102 objects:v101 count:16];
      }

      while (v29);
    }

    v12 = obja;
    [obja nonDestructiveCropSize];
    a3 = v72;
    [v72 setNonDestructiveCropSize:?];
    v23 = v73;
  }

  v34 = [v23 previewSinkNode];
  if (!v34)
  {
    goto LABEL_79;
  }

  v35 = v34;
  v36 = v12;
  v37 = [a3 stillImageUserInitiatedRequestTime];
  if ([v36 zeroShutterLagEnabled])
  {
    if ([v36 unifiedBracketingMode])
    {
      if (!v37)
      {
        mach_absolute_time();
      }

      objc_msgSend_previewPTSDisplayedAtHostTime_allowingExtrapolation_(v35);
      v112 = v92;
      v113 = v93;
      [a3 setStillImageUserInitiatedRequestPTS:&v112];
      goto LABEL_70;
    }

    if ([v23 currentUserInitiatedRequestHostTime])
    {
      if (v23)
      {
        objc_msgSend_currentUserInitiatedRequestPTS(v23);
        if ((v99 & 0x100000000) != 0)
        {
          v38 = [a3 stillImageUserInitiatedRequestTime];
          if (v38 == [v23 currentUserInitiatedRequestHostTime])
          {
            objc_msgSend_currentUserInitiatedRequestPTS(v23);
            v112 = v96;
            v39 = v97;
LABEL_109:
            v113 = v39;
            [a3 setStillImageUserInitiatedRequestPTS:&v112];
            goto LABEL_69;
          }

          if ([a3 burstQualityCaptureEnabled])
          {
            [a3 setStillImageUserInitiatedRequestTime:{objc_msgSend(v23, "currentUserInitiatedRequestHostTime")}];
            objc_msgSend_currentUserInitiatedRequestPTS(v23);
            v112 = v94;
            v39 = v95;
            goto LABEL_109;
          }

LABEL_69:
          [v23 setCurrentUserInitiatedRequestHostTime:0];
          v112 = *MEMORY[0x1E6960C70];
          v113 = *(MEMORY[0x1E6960C70] + 16);
          [v23 setCurrentUserInitiatedRequestPTS:&v112];
          goto LABEL_70;
        }
      }

      else
      {
        v99 = 0;
        v98 = 0;
        v100 = 0;
      }
    }

    [a3 burstQualityCaptureEnabled];
    [a3 stillImageUserInitiatedRequestTime];
    goto LABEL_69;
  }

LABEL_70:
  if ([a3 stillImageUserInitiatedRequestTime])
  {
    if (a3)
    {
      objc_msgSend_stillImageUserInitiatedRequestPTS(a3);
      if ((v90 & 0x100000000) != 0)
      {
        goto LABEL_77;
      }
    }

    else
    {
      v90 = 0;
      v89 = 0;
      v91 = 0;
    }

    [a3 stillImageUserInitiatedRequestTime];
    objc_msgSend_previewPTSDisplayedAtHostTime_allowingExtrapolation_(v35);
    v112 = v87;
    v113 = v88;
    [a3 setStillImageUserInitiatedRequestPTS:&v112];
  }

  if (!a3)
  {
    v84 = 0;
    v85 = 0;
    v86 = 0;
    goto LABEL_79;
  }

LABEL_77:
  objc_msgSend_stillImageUserInitiatedRequestPTS(a3);
LABEL_79:
  if (v67)
  {
    if (cs_touchDownMomentStillCaptureEnabled_onceToken != -1)
    {
      captureSession_didCaptureIrisStill_cold_1();
    }

    v40 = [v9 beginStillImageMomentCaptureWithSettings:a3];
  }

  else
  {
    v82 = 0u;
    v83 = 0u;
    v80 = 0u;
    v81 = 0u;
    objb = [v23 stillImageSinkPipelines];
    v41 = [objb countByEnumeratingWithState:&v80 objects:v79 count:16];
    if (!v41)
    {
      goto LABEL_96;
    }

    v42 = v41;
    LODWORD(v40) = 0;
    v43 = *v81;
    do
    {
      for (j = 0; j != v42; ++j)
      {
        if (*v81 != v43)
        {
          objc_enumerationMutation(objb);
        }

        v45 = *(*(&v80 + 1) + 8 * j);
        v46 = [v45 stillImageCoordinatorNode];
        v47 = a3;
        if (v9 != v46)
        {
          v47 = [a3 copy];
          [v47 resetDimensions];
          v48 = [v73 cameraSourcePipelineForStillImageSinkPipeline:v45];
          [-[FigCaptureCameraSourcePipeline captureDevice](v48) zoomFactor];
          LODWORD(v112) = v49;
          v50 = stillImageSinkPipelineSessionStorage_stillImageOutputDimensionsForSettings(v73, v45, v47, &v112);
          v51 = v48;
          a3 = v72;
          captureSession_updateOutputDimensionsAndResolutionFlavor(v50, v51, v47);
          BWUpdateThumbnailAndPreviewDimensionsForRequestedSettings(v47, v52, *&v112);
        }

        v53 = [objc_msgSend(v45 "stillImageCoordinatorNode")];
        if (v9 == v46)
        {
          v40 = v53;
        }

        else
        {
          v40 = v40;
        }
      }

      v42 = [objb countByEnumeratingWithState:&v80 objects:v79 count:16];
    }

    while (v42);
  }

  if (!v40)
  {
LABEL_96:
    if ([a3 burstQualityCaptureEnabled])
    {
      os_unfair_lock_lock((v66 + 384));
      [v73 setMostRecentBurstSettingsID:{objc_msgSend(a3, "settingsID")}];
      os_unfair_lock_unlock((v66 + 384));
      v77 = 0u;
      v78 = 0u;
      v75 = 0u;
      v76 = 0u;
      v54 = [*(v66 + 784) metadataSinkPipelines];
      v55 = [v54 countByEnumeratingWithState:&v75 objects:v74 count:16];
      if (v55)
      {
        v56 = *v76;
        do
        {
          for (k = 0; k != v55; ++k)
          {
            if (*v76 != v56)
            {
              objc_enumerationMutation(v54);
            }

            v58 = *(*(&v75 + 1) + 8 * k);
            if ([(FigCaptureMetadataSinkPipeline *)v58 mrcLowPowerModeEnabled])
            {
              [(FigCaptureMetadataSinkPipeline *)v58 setMrcSuspended:?];
            }
          }

          v55 = [v54 countByEnumeratingWithState:&v75 objects:v74 count:16];
        }

        while (v55);
      }

      return v55;
    }

    return 0;
  }

  captureSession_captureStillImageNow_cold_6(v40);
  a1 = v68;
  isKindOfClass = v65;
LABEL_120:
  if (v40 == -12773)
  {
    v55 = 4294951755;
  }

  else
  {
    v55 = v40;
  }

  if ((v67 & 1) == 0)
  {
    v60 = cs_notificationPayloadWithSectionIDAndSettingsIDAndErrorStatus(v64, [a3 settingsID], v55);
    v61 = kFigCaptureSessionIrisStillImageSinkNotification_WillBeginCapture;
    if ((isKindOfClass & 1) == 0)
    {
      v61 = kFigCaptureSessionStillImageSinkNotification_StillImageComplete;
    }

    captureSession_postNotificationWithPayload(a1, *v61, v60);
  }

  return v55;
}

double cs_IrisStillImageSinkPrepareMovieRecording(uint64_t a1, uint64_t a2, void *a3)
{
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && [a3 movieMode])
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    if (!_FigIsCurrentDispatchQueue())
    {
      cs_IrisStillImageSinkPrepareMovieRecording_cold_1();
    }

    v7 = [*(DerivedStorage + 784) movieFileSinkPipelineWithSinkID:a2];
    v8 = +[BWPendingIrisRecordingRequest irisRecordingRequestWithFigCaptureMovieFileRecordingSettings:](BWPendingIrisRecordingRequest, "irisRecordingRequestWithFigCaptureMovieFileRecordingSettings:", [objc_msgSend(a3 "movieRecordingSettings")]);
    if (![v7 pendingIrisRecordings])
    {
      [v7 setPendingIrisRecordings:{objc_msgSend(MEMORY[0x1E695DF70], "array")}];
    }

    v9 = [objc_msgSend(objc_msgSend(objc_msgSend(v7 "pendingIrisRecordings")];
    if (v9 >= [(FigCaptureRecordingSettings *)[(BWPendingIrisRecordingRequest *)v8 settings] settingsID])
    {
      v24 = 0;
      v23 = OS_LOG_TYPE_DEFAULT;
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    [objc_msgSend(v7 pendingIrisRecordings];
    [(BWPendingIrisRecordingRequest *)v8 setEnqueuedHostTime:mach_absolute_time()];
    if (dword_1ED844050)
    {
      v24 = 0;
      v23 = OS_LOG_TYPE_DEFAULT;
      v11 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v12 = v24;
      if (os_log_type_enabled(v11, v23))
      {
        v13 = v12;
      }

      else
      {
        v13 = v12 & 0xFFFFFFFE;
      }

      if (v13)
      {
        v14 = *(DerivedStorage + 104);
        v17 = 136315650;
        v18 = "cs_IrisStillImageSinkPrepareMovieRecording";
        v19 = 2114;
        v20 = v14;
        v21 = 2112;
        v22 = v8;
        _os_log_send_and_compose_impl();
      }

      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }
  }

  return result;
}

BOOL OUTLINED_FUNCTION_112_4(NSObject *a1)
{
  v2 = STACK[0x80B];

  return os_log_type_enabled(a1, v2);
}

uint64_t FigImageControl_LockFocus(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 7612) != 3)
  {
    *(DerivedStorage + 7612) = 3;
    *(DerivedStorage + 7580) = 0;
  }

  return 0;
}

uint64_t FigImageControl_ContinuousAutoFocusWithSmoothFocus(uint64_t a1, int a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 7583) != a2)
  {
    *(DerivedStorage + 7583) = a2;
    *(DerivedStorage + 7580) = 0;
  }

  return 0;
}

uint64_t FigImageControl_SetContinuousAutoFocusAreaOfInterest(uint64_t a1, int a2, int a3, int a4, int a5)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (DerivedStorage[1903] != 1)
  {
    return 4294954516;
  }

  v11 = DerivedStorage;
  if (DerivedStorage[1905] == a2 && DerivedStorage[1906] == a3 && DerivedStorage[1907] == a4 && DerivedStorage[1908] == a5)
  {
    return 0;
  }

  DerivedStorage[1905] = a2;
  DerivedStorage[1906] = a3;
  DerivedStorage[1907] = a4;
  DerivedStorage[1908] = a5;
  v12 = CMBaseObjectGetDerivedStorage();
  v13 = 274877907 * v12[4536] * a4;
  LODWORD(v13) = (v13 >> 38) + (v13 >> 63);
  v14 = 274877907 * v12[4537] * a5;
  LODWORD(v14) = (v14 >> 38) + (v14 >> 63);
  v15 = __OFSUB__(v14, v13);
  v16 = v14 - v13;
  v18 = v16 < 0 != v15 || v16 < 5;
  if (v18)
  {
    v19 = 5;
  }

  else
  {
    v19 = 3;
  }

  if (v18)
  {
    v20 = 3;
  }

  else
  {
    v20 = 5;
  }

  v12[1909] = v19;
  v12[1910] = v20;
  if (*(v11 + 625) == 1)
  {
    setupFocusWindowMatrix(a1, v11[1905], v11[1906], v11[1907], v11[1908], *(v11 + 560), v11[1909], v11[1910], 1);
    return 0;
  }

  result = 0;
  *(v11 + 7581) = 1;
  return result;
}

void setupFocusWindowMatrix(uint64_t a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, char a9)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v15 = (DerivedStorage + 7585);
  v75 = 0u;
  v76 = 0u;
  v73 = 0u;
  v74 = 0u;
  v71 = 0u;
  v72 = 0u;
  *v69 = 0u;
  v70 = 0u;
  if (*(DerivedStorage + 9085))
  {
    return;
  }

  v16 = DerivedStorage;
  v17 = *(DerivedStorage + 9048);
  *(DerivedStorage + 468) = 0uLL;
  *(DerivedStorage + 484) = 0uLL;
  *(DerivedStorage + 436) = 0uLL;
  *(DerivedStorage + 452) = 0uLL;
  v54 = DerivedStorage + 436;
  v18 = (a8 * a7);
  if (v18 >= 17)
  {
    setupFocusWindowMatrix_cold_1();
  }

  valuePtr = 0;
  v68 = 0;
  *(DerivedStorage + 176) = v18;
  v19 = *MEMORY[0x1E695E480];
  if (v18 <= 0)
  {
    v33 = CFArrayCreate(*MEMORY[0x1E695E480], v69, v18, MEMORY[0x1E695E9C0]);
    v66 = 0;
    goto LABEL_33;
  }

  v38 = (DerivedStorage + 7585);
  v20 = 0;
  v53 = 1000 - v17;
  v52 = *off_1E798A280;
  v50 = *off_1E798A2C0;
  v51 = *off_1E798A2B0;
  v48 = *off_1E798A2B8;
  v49 = *off_1E798A288;
  v42 = *off_1E798A1D8;
  v47 = DerivedStorage + 180;
  v46 = DerivedStorage + 244;
  v41 = *off_1E798A278;
  v39 = DerivedStorage;
  v44 = DerivedStorage + 372;
  v45 = DerivedStorage + 308;
  v40 = *MEMORY[0x1E695E4D0];
  do
  {
    v65 = 0;
    v63 = 0u;
    v64 = 0u;
    *keys = 0u;
    v61 = 0;
    v59 = 0u;
    v60 = 0u;
    *values = 0u;
    v66 = 1;
    v21 = (v20 % a7) * a4 / a7 + a2;
    v22 = ((v20 % a7) * a4 / a7 + a2);
    HIWORD(valuePtr) = (v20 % a7) * a4 / a7 + a2;
    v23 = (v20 / a7) * a5 / a8 + a3;
    LOWORD(valuePtr) = (v20 / a7) * a5 / a8 + a3;
    v24 = (a4 + v22 * a4) / a7 - v22 * a4 / a7;
    HIWORD(v68) = (a4 + v22 * a4) / a7 - v22 * a4 / a7;
    v25 = valuePtr;
    v26 = (a5 + valuePtr * a5) / a8;
    v27 = v26 - valuePtr * a5 / a8;
    LOWORD(v68) = v26 - valuePtr * a5 / a8;
    if ((v21 & 0x8000) != 0)
    {
      v22 = 0;
      LOWORD(v24) = v24 + v21;
      HIWORD(v68) = v24;
      HIWORD(valuePtr) = 0;
      if ((v23 & 0x8000) == 0)
      {
        goto LABEL_7;
      }
    }

    else if ((v23 & 0x8000) == 0)
    {
      goto LABEL_7;
    }

    v25 = 0;
    LOWORD(v27) = v27 + v23;
    LOWORD(v68) = v27;
    LOWORD(valuePtr) = 0;
LABEL_7:
    if (v22 + v24 >= 1001)
    {
      LOWORD(v24) = 1000 - v22;
      HIWORD(v68) = 1000 - v22;
    }

    if (v25 + v27 >= 1001)
    {
      LOWORD(v27) = 1000 - v25;
      LOWORD(v68) = 1000 - v25;
    }

    if (v17 > v24)
    {
      HIWORD(v68) = v17;
      if (v53 < v22)
      {
        HIWORD(valuePtr) = 1000 - v17;
      }
    }

    if (v17 > v27)
    {
      LOWORD(v68) = v17;
      if (v53 < v25)
      {
        LOWORD(valuePtr) = 1000 - v17;
      }
    }

    keys[0] = v52;
    values[0] = CFNumberCreate(v19, kCFNumberSInt16Type, &valuePtr + 2);
    keys[1] = v51;
    values[1] = CFNumberCreate(v19, kCFNumberSInt16Type, &valuePtr);
    *&v63 = v50;
    *&v59 = CFNumberCreate(v19, kCFNumberSInt16Type, &v68 + 2);
    *(&v63 + 1) = v49;
    *(&v59 + 1) = CFNumberCreate(v19, kCFNumberSInt16Type, &v68);
    *&v64 = v48;
    *&v60 = CFNumberCreate(v19, kCFNumberIntType, &v66);
    v28 = 5;
    if (!v20 && a6)
    {
      v57 = 4096;
      *(&v64 + 1) = v42;
      v29 = CFNumberCreate(v19, kCFNumberIntType, &v57);
      v65 = v41;
      *(&v60 + 1) = v29;
      v61 = v40;
      v28 = 7;
    }

    *(v47 + 4 * v20) = SHIWORD(valuePtr);
    *(v46 + 4 * v20) = valuePtr;
    *(v45 + 4 * v20) = SHIWORD(v68);
    *(v44 + 4 * v20) = v68;
    *(v54 + 4 * v20) = v66;
    v30 = CFDictionaryCreate(v19, keys, values, v28, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    v31 = 0;
    v69[v20] = v30;
    v66 = 0;
    do
    {
      v32 = values[v31];
      if (v32)
      {
        CFRelease(v32);
        v31 = v66;
      }

      v66 = ++v31;
    }

    while (v31 < v28);
    ++v20;
  }

  while (v20 != v18);
  v33 = CFArrayCreate(v19, v69, (a8 * a7), MEMORY[0x1E695E9C0]);
  v34 = 0;
  v66 = 0;
  v16 = v39;
  do
  {
    v35 = v69[v34];
    if (v35)
    {
      CFRelease(v35);
      v34 = v66;
    }

    v66 = ++v34;
  }

  while (v34 < v18);
  v15 = v38;
LABEL_33:
  v36 = *(v16 + 9040);
  if (v36)
  {
    CFRelease(v36);
  }

  *(v16 + 9040) = v33;
  if (*v15 == 1)
  {
    v37 = *off_1E798BC50;
    if (a9)
    {
      captureStreamSetPropertyOnActivityScheduler(a1, v37, v33);
    }

    else
    {
      af_sbp_setPropertyOnStandaloneOrSynchronizedStreams(a1, v37, v33);
    }
  }

  else
  {
    atomic_fetch_add_explicit((v16 + 7604), 1u, memory_order_relaxed);
  }
}

uint64_t FigImageControl_FocusScan(uint64_t a1, int a2, int a3, int a4, int a5, unsigned int a6, unsigned int a7, unsigned int a8, id *a9, void *a10)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if ((a7 | a6) >= 0x100)
  {
    emitter = fig_log_get_emitter();

    return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 0xFFFFCE14, "|___ fsbp_IC_Focus ___|", 0xA1A, v39, v26, v27, a9);
  }

  else
  {
    v18 = DerivedStorage;
    v19 = (DerivedStorage + 4096);
    if (a7 <= a6)
    {
      v20 = a6;
    }

    else
    {
      v20 = a7;
    }

    if (a7 >= a6)
    {
      a7 = a6;
    }

    if (*(DerivedStorage + 7612) != 2 || *(DerivedStorage + 7620) != a2 || *(DerivedStorage + 7624) != a3 || *(DerivedStorage + 7628) != a4 || *(DerivedStorage + 7632) != a5 || *(DerivedStorage + 7644) != a7 || *(DerivedStorage + 7648) != v20 || __PAIR64__(*(DerivedStorage + 7584), *(DerivedStorage + 7583)) != __PAIR64__(a9, a8) || (v21 = v20, v22 = [*(DerivedStorage + 9064) isEqualToDictionary:a10], v20 = v21, (v22 & 1) == 0))
    {
      v23 = *(v18 + 521);
      if (v23 == 1)
      {
        v24 = *(v18 + 624);
      }

      else
      {
        v24 = 0;
      }

      v29 = *(v18 + 7596);
      if (!v29)
      {
        v23 = 0;
      }

      if (v29 == -1)
      {
        v23 = v24;
      }

      if (*(v18 + 621) == 1 && *(v18 + 656) < 120)
      {
        v30 = 0;
      }

      else
      {
        v30 = *(v18 + 622) ^ 1;
      }

      v31 = 0;
      if ((v30 & 1) == 0 && ((v23 ^ 1) & 1) == 0)
      {
        v31 = *(v18 + 623);
      }

      v32 = *(v18 + 7600);
      v33 = v32 == -1;
      v34 = (v32 == -1) & v31;
      *(v18 + 7612) = 2;
      *(v18 + 7620) = a2;
      *(v18 + 7624) = a3;
      v35 = v23 & (v32 != 0);
      *(v18 + 7628) = a4;
      if ((v30 | v33))
      {
        v36 = v34;
      }

      else
      {
        v36 = v35;
      }

      *(v18 + 7632) = a5;
      *(v18 + 7644) = a7;
      *(v18 + 7648) = v20;
      if (a7)
      {
        v37 = 0;
      }

      else
      {
        v37 = v20 == 255;
      }

      v38 = !v37;
      v19[3486] = v38;
      v19[3488] = a9;
      v19[3487] = a8;
      v19[3490] = v23 & 1;
      v19[3489] = v36;
      v19[3484] = 0;

      *(v18 + 9064) = a10;
      *(v18 + 7636) = 0x400000004;
    }

    return 0;
  }
}

uint64_t FigImageControl_ManualFocus(uint64_t a1, int a2, int a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a3 || *(DerivedStorage + 7612) != 4 || *(DerivedStorage + 7652) != a2)
  {
    *(DerivedStorage + 7612) = 4;
    *(DerivedStorage + 7652) = a2;
    *(DerivedStorage + 7660) = a3;
    *(DerivedStorage + 7585) = 0;
    *(DerivedStorage + 7580) = 0;
  }

  return 0;
}

CFDictionaryRef FigImageControl_CopyPreFlashAFParameters(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!*(DerivedStorage + 648))
  {
    return 0;
  }

  v3 = DerivedStorage;
  if (*(DerivedStorage + 7612) != 1)
  {
    return 0;
  }

  keys[3] = 0;
  v30 = 0;
  v4 = *(DerivedStorage + 6220);
  if (v4 >= 1)
  {
    v5 = *(DerivedStorage + 644);
    if (v5 < 1)
    {
      v5 = 85;
    }

    v6 = *(DerivedStorage + 652);
    if (v6)
    {
      LOBYTE(v6) = *(DerivedStorage + 7712) > *(DerivedStorage + 7840);
    }

    v7 = 0;
    v8 = DerivedStorage + 5896;
    v9 = *(DerivedStorage + 5896);
    v10 = -1;
    do
    {
      if (*(v8 + 8 * v7) < v9)
      {
        v9 = *(v8 + 8 * v7);
      }

      if (*(DerivedStorage + 6280) == *(v8 + 4 * v7 - 160))
      {
        v10 = v7;
      }

      ++v7;
    }

    while (v4 != v7);
    if ((v10 & 0x80000000) == 0 && !((100 * v9 >= *(v8 + 8 * v10) * v5) | v6 & 1))
    {
      v21 = (*(DerivedStorage + 656) * 3.0);
      os_unfair_lock_lock((DerivedStorage + 7576));
      v3[1902]._os_unfair_lock_opaque = v21;
      os_unfair_lock_unlock(v3 + 1894);
      return 0;
    }
  }

  if (*(DerivedStorage + 636) < 1)
  {
    return 0;
  }

  v25 = 0;
  v24 = 0;
  v23 = 0;
  getDefaultFocusScanRange(a1, &v25, &v24 + 1, &v24, &v23);
  v11 = computeAFSearchPositions(a1, v25, SHIDWORD(v24), v24, v23, v24 == v25);
  v12 = *MEMORY[0x1E695E480];
  v13 = MEMORY[0x1E695E9D8];
  v14 = MEMORY[0x1E695E9E8];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 4, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  valuePtr = 2;
  v16 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
  CFDictionaryAddValue(Mutable, *off_1E798A1A8, v16);
  CFRelease(v16);
  valuePtr = 56;
  v17 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
  CFDictionaryAddValue(Mutable, *off_1E798A198, v17);
  CFRelease(v17);
  v18 = *MEMORY[0x1E695E4D0];
  CFDictionaryAddValue(Mutable, *off_1E798A1A0, *MEMORY[0x1E695E4D0]);
  CFDictionaryAddValue(Mutable, *off_1E798A190, v18);
  v19 = *off_1E798BC38;
  keys[0] = *off_1E798BC48;
  keys[1] = v19;
  values = v11;
  cf = Mutable;
  keys[2] = *off_1E798BC40;
  v29 = v18;
  v20 = CFDictionaryCreate(v12, keys, &values, 3, v13, v14);
  CFRelease(values);
  CFRelease(cf);
  sendFocusStartNotification(a1, 0);
  return v20;
}

uint64_t doLockFocusNow(uint64_t a1)
{
  result = CMBaseObjectGetDerivedStorage();
  if ((*(result + 8297) & 1) == 0)
  {
    v3 = result;
    if (*(result + 515) == 1)
    {
      result = captureStreamSetPropertyOnActivityScheduler(a1, *off_1E798BF98, 0);
    }

    *(v3 + 8297) = 1;
  }

  return result;
}

uint64_t FigImageControl_CurrentFocusRect(uint64_t a1, _DWORD *a2, _DWORD *a3, _DWORD *a4, _DWORD *a5)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v10 = *(DerivedStorage + 7612);
  if (v10 > 1)
  {
    if ((v10 - 2) < 2)
    {
      goto LABEL_3;
    }

    if (v10 != 4)
    {
      return 0;
    }

LABEL_10:
    *a3 = 0;
    *a2 = 0;
    *a5 = 0;
    *a4 = 0;
    return 0;
  }

  if (!v10)
  {
    goto LABEL_10;
  }

  if (v10 != 1)
  {
    return 0;
  }

  if (*(DerivedStorage + 7672) == 1)
  {
    *a2 = *(DerivedStorage + 7676);
    *a3 = *(DerivedStorage + 7680);
    *a4 = *(DerivedStorage + 7684);
    v11 = *(DerivedStorage + 7688);
    goto LABEL_4;
  }

LABEL_3:
  *a2 = *(DerivedStorage + 7620);
  *a3 = *(DerivedStorage + 7624);
  *a4 = *(DerivedStorage + 7628);
  v11 = *(DerivedStorage + 7632);
LABEL_4:
  *a5 = v11;
  return 0;
}

void setupFocusWindows(uint64_t a1, int a2, float a3, float a4, float a5, float a6)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v12 = 0uLL;
  v75 = 0u;
  v76 = 0u;
  v73 = 0u;
  v74 = 0u;
  v71 = 0u;
  v72 = 0u;
  *v69 = 0u;
  v70 = 0u;
  v64 = 0;
  if ((*(DerivedStorage + 9085) & 1) == 0)
  {
    v13 = 0;
    v14 = *(DerivedStorage + 9048);
    *(DerivedStorage + 468) = 0uLL;
    *(DerivedStorage + 484) = 0uLL;
    *(DerivedStorage + 436) = 0uLL;
    *(DerivedStorage + 452) = 0uLL;
    v54 = DerivedStorage + 436;
    if (a2)
    {
      v15 = 2;
    }

    else
    {
      v15 = 1;
    }

    *(DerivedStorage + 176) = v15;
    v16 = (v15 - 1);
    v53 = *off_1E798A280;
    v17 = *MEMORY[0x1E695E480];
    v52 = 1000 - v14;
    v51 = *off_1E798A2B0;
    v49 = *off_1E798A288;
    v50 = *off_1E798A2C0;
    v48 = *off_1E798A2B8;
    v47 = DerivedStorage + 180;
    v45 = *off_1E798A1D8;
    v46 = DerivedStorage + 244;
    v18 = DerivedStorage + 308;
    v42 = DerivedStorage;
    v19 = DerivedStorage + 372;
    v44 = *off_1E798A278;
    v43 = *MEMORY[0x1E695E4D0];
    while (1)
    {
      v63 = 0;
      v61 = v12;
      v62 = v12;
      *keys = v12;
      v59 = 0;
      v57 = v12;
      v58 = v12;
      *values = v12;
      if (v13)
      {
        v20 = v13 >= v16;
      }

      else
      {
        v20 = 0;
      }

      v21 = (5 * v13);
      if (v20)
      {
        v21 = a6 * 1400.0;
      }

      v22 = v21;
      v23 = v21;
      v24 = (v23 + (a6 * 1000.0));
      v67 = v24;
      v25 = (v23 + (a5 * 1000.0));
      v26 = (v22 >> 1);
      v27 = -(v26 - (a3 * 1000.0));
      v68 = v25;
      valuePtr = v27;
      v28 = -(v26 - (a4 * 1000.0));
      v65 = v28;
      if (v27 < 0)
      {
        LOWORD(v25) = v27 + v25;
        v68 = v25;
        valuePtr = 0;
        v27 = 0;
        if (v28 < 0)
        {
LABEL_38:
          LOWORD(v24) = v28 + v24;
          v67 = v24;
          v65 = 0;
          v28 = 0;
        }
      }

      else if (v28 < 0)
      {
        goto LABEL_38;
      }

      if (v27 + v25 >= 1001)
      {
        LOWORD(v25) = 1000 - v27;
        v68 = 1000 - v27;
      }

      if (v28 + v24 >= 1001)
      {
        LOWORD(v24) = 1000 - v28;
        v67 = 1000 - v28;
      }

      if (v14 > v25)
      {
        v68 = v14;
        v29 = (v27 - ((v14 - v25 + (((v14 - v25) & 0x8000) >> 15)) >> 1));
        v30 = v29 & ~(v29 >> 31);
        if (v52 < v30)
        {
          LOWORD(v30) = 1000 - v14;
        }

        valuePtr = v30;
      }

      if (v14 > v24)
      {
        v67 = v14;
        v31 = (v28 - ((v14 - v24 + (((v14 - v24) & 0x8000) >> 15)) >> 1));
        v32 = v31 & ~(v31 >> 31);
        if (v52 < v32)
        {
          LOWORD(v32) = 1000 - v14;
        }

        v65 = v32;
      }

      keys[0] = v53;
      values[0] = CFNumberCreate(v17, kCFNumberSInt16Type, &valuePtr);
      keys[1] = v51;
      values[1] = CFNumberCreate(v17, kCFNumberSInt16Type, &v65);
      *&v61 = v50;
      *&v57 = CFNumberCreate(v17, kCFNumberSInt16Type, &v68);
      *(&v61 + 1) = v49;
      *(&v57 + 1) = CFNumberCreate(v17, kCFNumberSInt16Type, &v67);
      v33 = ((a6 * 100000.0) / v67);
      v34 = v33 >> 2;
      if (a2)
      {
        v34 = 3;
      }

      if (v13 == v16)
      {
        v33 = v34;
      }

      v64 = v33;
      *&v62 = v48;
      *&v58 = CFNumberCreate(v17, kCFNumberIntType, &v64);
      v35 = 5;
      if (!v13 && a2)
      {
        v55 = 4096;
        *(&v62 + 1) = v45;
        v36 = CFNumberCreate(v17, kCFNumberSInt16Type, &v55);
        v63 = v44;
        *(&v58 + 1) = v36;
        v59 = v43;
        v35 = 7;
      }

      *(v47 + 4 * v13) = valuePtr;
      *(v46 + 4 * v13) = v65;
      *(v18 + 4 * v13) = v68;
      *(v19 + 4 * v13) = v67;
      *(v54 + 4 * v13) = v64;
      v37 = CFDictionaryCreate(v17, keys, values, v35, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      v38 = 0;
      v69[v13] = v37;
      v64 = 0;
      do
      {
        CFRelease(values[v38]);
        v38 = v64 + 1;
        v64 = v38;
      }

      while (v38 < v35);
      ++v13;
      v12 = 0uLL;
      if (v13 == v15)
      {
        v39 = CFArrayCreate(v17, v69, v15, MEMORY[0x1E695E9C0]);
        v40 = 0;
        v64 = 0;
        do
        {
          CFRelease(v69[v40]);
          v40 = v64 + 1;
          v64 = v40;
        }

        while (v40 < v15);
        v41 = *(v42 + 9040);
        if (v41)
        {
          CFRelease(v41);
        }

        *(v42 + 9040) = v39;
        atomic_fetch_add_explicit((v42 + 7604), 1u, memory_order_relaxed);
        return;
      }
    }
  }
}

uint64_t doManualFocusNow(uint64_t a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  keys[0] = @"FocusMode";
  keys[1] = @"LensPosition";
  v8[0] = @"FixedFocusPoints";
  v8[1] = @"LensPositionInfinity";
  v5 = CFDictionaryCreate(*MEMORY[0x1E695E480], keys, v8, 2, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v6 = af_sbp_setPropertyOnStandaloneOrSynchronizedStreams(a1, *off_1E798BFF0, a2);
  *(DerivedStorage + 80) = 0;
  if (v5)
  {
    CFRelease(v5);
  }

  return v6;
}

float currentGain(const void *a1)
{
  v1 = CMGetAttachment(a1, *off_1E798A3C8, 0);
  v8 = 256;
  valuePtr = 256;
  v7 = 256;
  Value = CFDictionaryGetValue(v1, *off_1E798B0B8);
  if (Value)
  {
    CFNumberGetValue(Value, kCFNumberIntType, &valuePtr);
  }

  v3 = CFDictionaryGetValue(v1, *off_1E798B7D0);
  if (v3)
  {
    CFNumberGetValue(v3, kCFNumberIntType, &v8);
  }

  v4 = CFDictionaryGetValue(v1, *off_1E798B7B8);
  if (v4)
  {
    CFNumberGetValue(v4, kCFNumberIntType, &v7);
    v5 = v7;
  }

  else
  {
    v5 = 256.0;
  }

  return ((valuePtr * v8) * v5) * 0.000000059605;
}

void doPeakTrackingAutofocusNow(uint64_t a1, int a2)
{
  valuePtr = a2;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 81) == 1)
  {
    doPeakTrackingAutofocusNow_cold_2();
    return;
  }

  v4 = DerivedStorage;
  storePreviousFocusState(DerivedStorage);
  *(v4 + 6220) = 0;
  *(v4 + 5496) = 0;
  *(v4 + 80) = 256;
  *(v4 + 8297) = 0;
  v5 = *MEMORY[0x1E695E480];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 2, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v7 = CFNumberCreate(v5, kCFNumberIntType, &valuePtr);
  CFDictionaryAddValue(Mutable, *off_1E798BB48, v7);
  CFRelease(v7);
  sendFocusStartNotification(a1, 0);
  if (captureStreamSetPropertyOnActivityScheduler(a1, *off_1E798C0D0, Mutable))
  {
    doPeakTrackingAutofocusNow_cold_1();
    if (!Mutable)
    {
      return;
    }
  }

  else if (!Mutable)
  {
    return;
  }

  CFRelease(Mutable);
}

uint64_t doAutofocusNow(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 81) == 1)
  {
    doAutofocusNow_cold_2();
    return 0;
  }

  else
  {
    v3 = DerivedStorage;
    storePreviousFocusState(DerivedStorage);
    *(v3 + 6220) = 0;
    *(v3 + 5496) = 0;
    *(v3 + 80) = 256;
    *(v3 + 8297) = 0;
    sendFocusStartNotification(a1, 0);
    v4 = captureStreamSetPropertyOnActivityScheduler(a1, *off_1E798BCB0, *MEMORY[0x1E695E4D0]);
    result = 0;
    if (v4)
    {
      doAutofocusNow_cold_1(v4);
      return v4;
    }
  }

  return result;
}

uint64_t sisn_createSampleBufferProcessorFunction(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = FigSampleBufferProcessorCreateForCustom();
  if (v4)
  {
    sisn_createSampleBufferProcessorFunction_cold_1();
  }

  return v4;
}

uint64_t BWTrackEditListArrayForRegularTrackInIrisTrimmedMovie(void *a1, const char *a2)
{
  memset(&v11, 0, sizeof(v11));
  if (a1)
  {
    objc_msgSend_movieTrimStartTime(a1, a2);
    objc_msgSend_movieStartTime(a1);
    CMTimeSubtract(&v5, &lhs, &rhs);
    lhs = v5;
    objc_msgSend_movieTrimEndTime(a1);
    objc_msgSend_movieTrimStartTime(a1);
  }

  else
  {
    memset(&lhs, 0, sizeof(lhs));
    memset(&rhs, 0, sizeof(rhs));
    CMTimeSubtract(&v5, &lhs, &rhs);
    lhs = v5;
    memset(&v5, 0, sizeof(v5));
    memset(&rhs, 0, sizeof(rhs));
  }

  CMTimeSubtract(&v11, &v5, &rhs);
  v5 = lhs;
  v6 = v11;
  v7 = *MEMORY[0x1E6960C70];
  v8 = *(MEMORY[0x1E6960C70] + 16);
  v9 = v11;
  v4 = mfeu_figFormatWriterTrackEditSegmentDictionaryForTimeMapping(&v5);
  return [MEMORY[0x1E695DEC8] arrayWithObjects:&v4 count:1];
}

uint64_t mfeu_figFormatWriterTrackEditSegmentDictionaryForTimeMapping(CMTime *a1)
{
  v2 = *MEMORY[0x1E695E480];
  time = *a1;
  v3 = CMTimeCopyAsDictionary(&time, v2);
  time = a1[1];
  v4 = CMTimeCopyAsDictionary(&time, v2);
  time = a1[2];
  v5 = CMTimeCopyAsDictionary(&time, v2);
  time = a1[3];
  v6 = CMTimeCopyAsDictionary(&time, v2);
  v7 = *MEMORY[0x1E6971C80];
  v11[0] = *MEMORY[0x1E6971C98];
  v11[1] = v7;
  v12[0] = v3;
  v12[1] = v4;
  v8 = *MEMORY[0x1E6971CA8];
  v11[2] = *MEMORY[0x1E6971CB0];
  v11[3] = v8;
  v12[2] = v5;
  v12[3] = v6;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:v11 count:4];

  return v9;
}

uint64_t BWTrackEditListArrayForStillImageDisplayTimeTrackInIrisTrimmedMovie(void *a1, int32_t a2)
{
  v17 = *MEMORY[0x1E6960C70];
  v4 = *(MEMORY[0x1E6960C70] + 16);
  *&v18[8] = v17;
  *v18 = v4;
  *&v18[24] = v4;
  CMTimeMake(&v19, 0, a2);
  if (a1)
  {
    objc_msgSend_stillImageCaptureTime(a1);
    objc_msgSend_movieTrimStartTime(a1);
  }

  else
  {
    lhs = 0uLL;
    *lhs_16 = 0;
    memset(&rhs, 0, sizeof(rhs));
  }

  CMTimeSubtract(&v16, &lhs, &rhs);
  CMTimeMake(&rhs, 0, a2);
  CMTimeMake(&v14, 1, a2);
  v13 = v16;
  v12 = v14;
  v10 = v19;
  *&lhs_16[16] = *&v18[16];
  lhs = v17;
  *lhs_16 = *v18;
  v11 = v16;
  v5 = mfeu_figFormatWriterTrackEditSegmentDictionaryForTimeMapping(&lhs);
  lhs = *&rhs.value;
  *lhs_16 = rhs.epoch;
  *&lhs_16[8] = v14;
  v10 = v13;
  v11 = v12;
  v7[0] = v5;
  v7[1] = mfeu_figFormatWriterTrackEditSegmentDictionaryForTimeMapping(&lhs);
  return [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:2];
}

uint64_t BWTrackEditListArrayForRegularTrackInIrisMovie(__int128 *a1, CMTime *a2)
{
  v4 = *a2;
  v5 = *a1;
  v6 = *(a1 + 2);
  v7 = *MEMORY[0x1E6960C70];
  v8 = *(MEMORY[0x1E6960C70] + 16);
  v10 = v6;
  v9 = v5;
  v3 = mfeu_figFormatWriterTrackEditSegmentDictionaryForTimeMapping(&v4);
  return [MEMORY[0x1E695DEC8] arrayWithObjects:&v3 count:1];
}

__CFString *FigCaptureVideoOrientationToString(unsigned int a1)
{
  if (a1 > 4)
  {
    return @"Unknown";
  }

  else
  {
    return off_1E7999188[a1];
  }
}

__CFString *FigCaptureVideoStabilizationStrengthToString(unsigned int a1)
{
  if (a1 > 4)
  {
    return @"Unknown";
  }

  else
  {
    return off_1E79991B0[a1];
  }
}

uint64_t FigCaptureVideoStabilizationStrengthStringToEnum(void *a1, const char *a2)
{
  if (objc_msgSend_isEqualToString_(a1, a2, @"None"))
  {
    return 0;
  }

  if (objc_msgSend_isEqualToString_(a1))
  {
    return 1;
  }

  if (objc_msgSend_isEqualToString_(a1))
  {
    return 2;
  }

  if (objc_msgSend_isEqualToString_(a1))
  {
    return 3;
  }

  if (objc_msgSend_isEqualToString_(a1))
  {
    return 4;
  }

  return 0;
}

uint64_t FigCaptureSmartFramingFieldOfViewStringFromType(int a1)
{
  if ((a1 - 1) > 3)
  {
    v1 = &FigCaptureSmartFramingFieldOfViewNone;
  }

  else
  {
    v1 = off_1E79991D8[a1 - 1];
  }

  return *v1;
}

void *FigCaptureGetCaptureDeviceCreateFunction()
{
  if (fcc_probeCameraDriverService_onceToken != -1)
  {
    FigCaptureGetCaptureDeviceCreateFunction_cold_1();
  }

  if (!fcc_probeCameraDriverService_cameraDriverInfo)
  {
    goto LABEL_7;
  }

  v0 = *(fcc_probeCameraDriverService_cameraDriverInfo + 16);
  v1 = dlopen(*(fcc_probeCameraDriverService_cameraDriverInfo + 8), 4);
  if (!v1 || (result = dlsym(v1, v0)) == 0)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
LABEL_7:
    v4 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    return 0;
  }

  return result;
}

uint64_t FigCaptureGetCameraDriverService()
{
  if (fcc_probeCameraDriverService_onceToken != -1)
  {
    FigCaptureGetCaptureDeviceCreateFunction_cold_1();
  }

  if (!fcc_probeCameraDriverService_cameraDriverInfo)
  {
    return 0;
  }

  v0 = *MEMORY[0x1E696CD60];
  v1 = IOServiceMatching(*fcc_probeCameraDriverService_cameraDriverInfo);

  return IOServiceGetMatchingService(v0, v1);
}

uint64_t FigCaptureReleaseCameraDriverService(uint64_t object)
{
  if (object)
  {
    return IOObjectRelease(object);
  }

  return object;
}

uint64_t FigCaptureGetCameraDriverServiceName()
{
  if (fcc_probeCameraDriverService_onceToken != -1)
  {
    FigCaptureGetCaptureDeviceCreateFunction_cold_1();
  }

  if (!fcc_probeCameraDriverService_cameraDriverInfo)
  {
    return 0;
  }

  v0 = MEMORY[0x1E696AEC0];
  v1 = *fcc_probeCameraDriverService_cameraDriverInfo;

  return [v0 stringWithUTF8String:v1];
}

uint64_t FigCaptureTCCAccessPreflight(uint64_t a1, uint64_t a2)
{
  tcc_service_singleton_for_CF_name();
  tcc_credential_singleton_for_self();
  v2 = tcc_message_options_create();
  tcc_message_options_set_reply_handler_policy();
  tcc_message_options_set_request_prompt_policy();
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  tcc_server_message_request_authorization();

  v3 = v8[3];
  if (v3 >= 4)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    v4 = 1;
  }

  else
  {
    v4 = dword_1AD056050[v3];
  }

  _Block_object_dispose(&v7, 8);
  return v4;
}

void FigCaptureTCCAccessRequest(uint64_t a1, uint64_t a2, uint64_t a3)
{
  tcc_service_singleton_for_CF_name();
  tcc_credential_singleton_for_self();
  v3 = tcc_message_options_create();
  tcc_message_options_set_request_prompt_policy();
  tcc_server_message_request_authorization();
}

uint64_t __FigCaptureTCCAccessRequest_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a2 || a3)
  {
    goto LABEL_12;
  }

  authorization_right = tcc_authorization_record_get_authorization_right();
  if (authorization_right < 2 || authorization_right == 3)
  {
    v5 = *(*(a1 + 32) + 16);
    goto LABEL_9;
  }

  if (authorization_right != 2)
  {
LABEL_12:
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    return (*(*(a1 + 32) + 16))(*(a1 + 32), 0, v8, v9, v10);
  }

  v5 = *(*(a1 + 32) + 16);
LABEL_9:

  return v5();
}

uint64_t FigCaptureFrontDepthDataToRGBRotationAngle(uint64_t a1, uint64_t a2)
{
  if (BWDeviceModelHasCharleston(a1, a2))
  {
    result = 0;
    FigCaptureFrontDepthDataToRGBRotationAngle_sFrontDepthDataToRGBRotationAngle = 1;
  }

  else if (FigCaptureFrontDepthDataToRGBRotationAngle_sFrontDepthDataToRGBRotationAngle)
  {
    return 0;
  }

  else
  {
    return 90;
  }

  return result;
}

void __fcc_probeCameraDriverService_block_invoke(uint64_t a1, uint64_t a2)
{
  FigNote_AllowInternalDefaultLogs();
  fig_note_initialize_category_with_default_work_cf();
  fig_note_initialize_category_with_default_work_cf();
  v19[1] = 0;
  refCon = dispatch_queue_create("ProbeCameraDriverService", 0);
  v18 = dispatch_semaphore_create(0);
  v19[0] = 0;
  v2 = IONotificationPortCreate(*MEMORY[0x1E696CD60]);
  IONotificationPortSetDispatchQueue(v2, refCon);
  v3 = 0;
  v15[0] = 0;
  v15[1] = 0;
  v4 = &sCameraDriverInfo;
  v16 = 0;
  do
  {
    v5 = IOServiceMatching(*v4);
    if (IOServiceAddMatchingNotification(v2, "IOServiceFirstMatch", v5, fcc_cameraDriverServiceMatchingCallback, &refCon, (v15 + v3)))
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    fcc_cameraDriverServiceMatchingCallback(&refCon, *(v15 + v3));
    v4 += 3;
    v3 += 4;
  }

  while (v3 != 20);
  v7 = v18;
  v8 = dispatch_time(0, 5000000000);
  if (dispatch_semaphore_wait(v7, v8))
  {
    v9 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v10 = 0;
  v11 = atomic_load(v19);
  v12 = &sCameraDriverInfo;
  do
  {
    v13 = *(v15 + v10);
    if (v13 == v11)
    {
      fcc_probeCameraDriverService_cameraDriverInfo = v12;
      v13 = v11;
      if (dword_1EB58DFA0)
      {
        v14 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
        v13 = *(v15 + v10);
      }
    }

    IOObjectRelease(v13);
    v12 += 3;
    v10 += 4;
  }

  while (v10 != 20);
  IONotificationPortDestroy(v2);
  dispatch_release(v18);
  dispatch_release(refCon);
}

uint64_t fcc_cameraDriverServiceMatchingCallback(uint64_t a1, io_iterator_t iterator)
{
  result = IOIteratorNext(iterator);
  if (result)
  {
    v5 = result;
    do
    {
      v6 = 0;
      atomic_compare_exchange_strong((a1 + 16), &v6, iterator);
      if (v6)
      {
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      else
      {
        dispatch_semaphore_signal(*(a1 + 8));
      }

      IOObjectRelease(v5);
      result = IOIteratorNext(iterator);
      v5 = result;
    }

    while (result);
  }

  return result;
}

void ubn_mergeInferenceMetadata(const void *a1, const void *a2, const void *a3)
{
  v5 = CMGetAttachment(a1, @"Inferences", 0);
  v6 = MEMORY[0x1E695E0F8];
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = MEMORY[0x1E695E0F8];
  }

  v8 = CMGetAttachment(a2, @"Inferences", 0);
  if (v8)
  {
    v9 = v8;
  }

  else
  {
    v9 = v6;
  }

  v10 = [MEMORY[0x1E695DF90] dictionaryWithDictionary:v9];
  [v10 addEntriesFromDictionary:v7];

  CMSetAttachment(a3, @"Inferences", v10, 1u);
}

void *ubn_mergeInferenceAttachedMedia(uint64_t a1, void *a2, const void *a3)
{
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  result = [a2 countByEnumeratingWithState:&v13 objects:v12 count:16];
  if (result)
  {
    v7 = result;
    v8 = *v14;
    do
    {
      v9 = 0;
      do
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(a2);
        }

        v10 = *(*(&v13 + 1) + 8 * v9);
        v11 = [BWInferenceEngineController inferenceMaskSbufFromSbuf:a1 attachedMediaKey:v10];
        if (v11)
        {
          BWSampleBufferSetAttachedMedia(a3, v10, v11);
        }

        v9 = v9 + 1;
      }

      while (v7 != v9);
      result = [a2 countByEnumeratingWithState:&v13 objects:v12 count:16];
      v7 = result;
    }

    while (result);
  }

  return result;
}

void sub_1ACB44F14(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1ACB45234(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1ACB45F64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __ubn_dispatch_sync_block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  (*(*(a1 + 32) + 16))();

  objc_autoreleasePoolPop(v2);
}

void __ubn_dispatch_async_block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  (*(*(a1 + 32) + 16))();

  objc_autoreleasePoolPop(v2);
}

void __ubn_dispatch_group_async_block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  (*(*(a1 + 32) + 16))();

  objc_autoreleasePoolPop(v2);
}

BOOL OUTLINED_FUNCTION_91_6(NSObject *a1)
{
  v3 = *(v1 - 117);

  return os_log_type_enabled(a1, v3);
}

uint64_t OUTLINED_FUNCTION_151(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{

  return [v65 countByEnumeratingWithState:v66 - 208 objects:&a65 count:{16, a6, a7, a8}];
}

uint64_t OUTLINED_FUNCTION_152(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, ...)
{
  va_start(va, a38);

  return [v38 countByEnumeratingWithState:v39 - 208 objects:va count:{16, a6, a7, a8}];
}

uint64_t OUTLINED_FUNCTION_154()
{
  v2 = *(v0 + 40);

  return [v2 stillImageSettings];
}

uint64_t cimn_registerLivePhotosMetadata_once()
{
  v1 = *MEMORY[0x1E6960260];
  CMMetadataDataTypeRegistryRegisterDataType(@"com.apple.quicktime.com.apple.quicktime.live-photo-info", @"Live Photos Private Metadata", [MEMORY[0x1E695DEC8] arrayWithObjects:&v1 count:1]);
  return FigLivePhotoMetadataCreateSoftwareVersionSetupDataWithAtomHeader(&sLivePhotoMetadataSoftwareVersionSetupDataWithAtomHeader);
}

id cimn_createCorrectedDetectedObjects(void *a1, _DWORD *a2, double a3, double a4, double a5, double a6)
{
  if (!a1)
  {
    v15 = 0;
    *a2 = 0;
    return v15;
  }

  v11 = *off_1E798ACE8;
  v12 = [a1 objectForKeyedSubscript:*off_1E798ACE8];
  *a2 = [v12 count];
  if (![v12 count])
  {
    return 0;
  }

  if (a5 != 1.0 || a6 != 1.0)
  {
    v14 = BWCreateCorrectedDetectedObjectsArray(v12, a3, a4, a5, a6, a3, a4, a5, a6);
    v15 = [objc_alloc(MEMORY[0x1E695DF90]) initWithDictionary:a1];
    *a2 = [v14 count];
    [v15 setObject:v14 forKeyedSubscript:v11];

    return v15;
  }

  return a1;
}

void sub_1ACB4E0E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1ACB4E4F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, ...)
{
  va_start(va, a48);
  _Block_object_dispose(&a43, 8);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v48 - 256), 8);
  _Block_object_dispose((v48 - 208), 8);
  _Block_object_dispose((v48 - 176), 8);
  _Block_object_dispose((v48 - 128), 8);
  _Unwind_Resume(a1);
}

void sub_1ACB4FB44(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v18 - 96), 8);
  _Block_object_dispose((v18 - 48), 8);
  _Unwind_Resume(a1);
}

void sub_1ACB50B0C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v18 - 48), 8);
  _Unwind_Resume(a1);
}

void sub_1ACB51098(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1ACB51E84(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1ACB52000(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1ACB52138(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1ACB52350(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1ACB52474(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1ACB5255C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1ACB52734(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1ACB52854(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1ACB52A34(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1ACB52B54(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t OUTLINED_FUNCTION_98_6(void x0_0, const char *a1)
{

  return objc_msgSend_isEqualToString_(v2, a1, v3);
}

uint64_t mv2ip_inputAttachedMediaKeyForMattingOutputType(int a1)
{
  result = 0;
  if (a1 > 127)
  {
    if (a1 > 2047)
    {
      switch(a1)
      {
        case 0x800:
          return 0x1F219E870;
        case 0x1000:
          return 0x1F219E890;
        case 0x2000:
          return 0x1F219E8B0;
      }
    }

    else
    {
      switch(a1)
      {
        case 128:
          return 0x1F219E750;
        case 512:
          return 0x1F219E850;
        case 1024:
          return 0x1F219E830;
      }
    }
  }

  else
  {
    if (a1 <= 15)
    {
      if (a1 != 2)
      {
        if (a1 == 4)
        {
          return 0x1F219E770;
        }

        if (a1 == 8)
        {
          return 0x1F219E7B0;
        }

        return result;
      }

      return 0x1F219E750;
    }

    switch(a1)
    {
      case 16:
        return 0x1F219E7D0;
      case 32:
        return 0x1F219E7F0;
      case 64:
        return 0x1F219E810;
    }
  }

  return result;
}

__CFString *mv2ip_outputAttachedMediaKeyForMattingOutputType(int a1)
{
  result = 0;
  if (a1 <= 63)
  {
    if (a1 > 7)
    {
      switch(a1)
      {
        case 8:
          return @"PersonSemanticsSkin";
        case 16:
          return @"PersonSemanticsTeeth";
        case 32:
          return @"PersonSemanticsGlasses";
      }
    }

    else
    {
      switch(a1)
      {
        case 1:
          return @"RefinedDepth";
        case 2:
          return @"PersonSegmentationMask";
        case 4:
          return @"PersonSemanticsHair";
      }
    }
  }

  else if (a1 <= 1023)
  {
    switch(a1)
    {
      case 64:
        return @"PersonSemanticsSky";
      case 128:
        return @"LowResPersonSegmentationMaskClone";
      case 512:
        return @"PersonSemanticsFoliage";
    }
  }

  else if (a1 > 4095)
  {
    if (a1 == 4096)
    {
      return @"PersonSemanticsCat";
    }

    else if (a1 == 0x2000)
    {
      return @"PersonSemanticsDog";
    }
  }

  else if (a1 == 1024)
  {
    return @"PersonSemanticsWater";
  }

  else if (a1 == 2048)
  {
    return @"PersonSemanticsBeard";
  }

  return result;
}

id fcdlm_createLayoutMonitorForMainDisplay(uint64_t a1)
{
  v2 = [MEMORY[0x1E699FAF8] configurationForDefaultMainDisplayMonitor];
  [v2 setNeedsUserInteractivePriority:1];
  [v2 setTransitionHandler:a1];
  v3 = [MEMORY[0x1E699FAE0] monitorWithConfiguration:v2];

  return v3;
}

id fcdlm_createLayoutMonitorForExternalDisplay(uint64_t a1)
{
  v2 = objc_alloc_init(MEMORY[0x1E699FB10]);
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v3 = [v2 connectedIdentities];
  v4 = [v3 countByEnumeratingWithState:&v20 objects:v19 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v21;
LABEL_3:
    v7 = 0;
    while (1)
    {
      if (*v21 != v6)
      {
        objc_enumerationMutation(v3);
      }

      if ([*(*(&v20 + 1) + 8 * v7) isExternal])
      {
        break;
      }

      if (v5 == ++v7)
      {
        v5 = [v3 countByEnumeratingWithState:&v20 objects:v19 count:16];
        if (v5)
        {
          goto LABEL_3;
        }

        goto LABEL_13;
      }
    }

    v8 = SBSCreateLayoutServiceEndpointForExternalDisplay();
    if (!v8)
    {
      goto LABEL_13;
    }

    v9 = v8;
    if (dword_1ED8440F0)
    {
      v18 = 0;
      type = OS_LOG_TYPE_DEFAULT;
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    v13 = [MEMORY[0x1E699FAF8] configurationWithEndpoint:{v9, v15, v16}];
    [v13 setNeedsUserInteractivePriority:1];
    [v13 setTransitionHandler:a1];
    v12 = [MEMORY[0x1E699FAE0] monitorWithConfiguration:v13];
  }

  else
  {
LABEL_13:
    if (dword_1ED8440F0)
    {
      v18 = 0;
      type = OS_LOG_TYPE_DEFAULT;
      v11 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    v12 = 0;
  }

  [v2 invalidate];

  return v12;
}

id fcdlm_createLayoutMonitorForContinuityDisplay(uint64_t a1)
{
  v2 = [MEMORY[0x1E699FAF8] configurationForContinuityDisplay];
  [v2 setNeedsUserInteractivePriority:1];
  [v2 setTransitionHandler:a1];
  v3 = [MEMORY[0x1E699FAE0] monitorWithConfiguration:v2];

  return v3;
}

void sub_1ACB55168(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

float *ColorsWheelContext_create(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, float a9)
{
  v17 = malloc_type_malloc(0x18uLL, 0x10200405AF6BDC9uLL);
  if (a2 < 0)
  {
    ColorsWheelContext_create_cold_13();
  }

  if (a3 < 0)
  {
    ColorsWheelContext_create_cold_12();
  }

  if (a4 < 0)
  {
    ColorsWheelContext_create_cold_11();
  }

  if (a5 < 0)
  {
    ColorsWheelContext_create_cold_10();
  }

  if (a6 < 0)
  {
    ColorsWheelContext_create_cold_9();
  }

  if (a7 < 0)
  {
    ColorsWheelContext_create_cold_8();
  }

  v18 = a2 * a1;
  v19 = (a2 * a1 / 100);
  v20 = a3 * a1;
  v21 = a3 * a1 / 100;
  v110[0] = v19;
  v110[1] = v21;
  v22 = a4 * a1;
  v23 = a4 * a1 / 100;
  v24 = a5 * a1;
  v25 = a5 * a1 / 100;
  v110[2] = v23;
  v110[3] = v25;
  v26 = a6 * a1;
  v27 = a6 * a1 / 100;
  v28 = a7 * a1;
  v29 = a7 * a1 / 100;
  v110[4] = v27;
  v110[5] = v29;
  v30 = v21 + v19 + v23 + v25;
  v31 = v30 + v27 + v29;
  if (v31 <= 0)
  {
    ColorsWheelContext_create_cold_7();
  }

  v32 = v17;
  v107 = v24;
  v108 = v22;
  v105 = v28;
  v106 = v26;
  *(v17 + 2) = v31;
  v33 = v30 + v27 + v29;
  *v17 = malloc_type_malloc(3 * v33, 0x100004033FC2DF1uLL);
  *(v32 + 3) = a8;
  if (v18 < 100)
  {
    v39 = 0;
    v37 = v33;
  }

  else
  {
    v34 = 0;
    v35 = 0;
    v36 = 1;
    v37 = v33;
    do
    {
      if (v35 >= *(v32 + 2))
      {
        ColorsWheelContext_create_cold_1();
      }

      ++v35;
      v38 = (*v32 + v36);
      *(v38 - 1) = 0;
      *v38 = v34 / v19;
      v38[1] = -1;
      v36 += 3;
      v34 += 255;
    }

    while (v19 != v35);
    v39 = v18 / 100;
  }

  if (v20 >= 100)
  {
    v40 = 0;
    v41 = v39;
    v42 = v20 / 100;
    v43 = 3 * v39;
    do
    {
      if (v41 >= *(v32 + 2))
      {
        ColorsWheelContext_create_cold_1();
      }

      ++v41;
      v44 = *v32 + v43;
      *v44 = -256;
      *(v44 + 2) = ~(v40 / v21);
      v43 += 3;
      v40 += 255;
      --v42;
    }

    while (v42);
    v39 = v41;
  }

  if (v108 >= 100)
  {
    v45 = 0;
    v46 = v39;
    v47 = 3 * v39;
    v48 = v23;
    do
    {
      if (v46 >= *(v32 + 2))
      {
        ColorsWheelContext_create_cold_1();
      }

      ++v46;
      v49 = *v32 + v47;
      *v49 = v45 / v23;
      *(v49 + 1) = 255;
      v47 += 3;
      v45 += 255;
      --v48;
    }

    while (v48);
    v39 = v46;
  }

  if (v107 >= 100)
  {
    v50 = 0;
    v51 = v39;
    v52 = 3 * v39;
    v53 = v25;
    do
    {
      if (v51 >= *(v32 + 2))
      {
        ColorsWheelContext_create_cold_1();
      }

      ++v51;
      v54 = *v32 + v52;
      *v54 = -1;
      *(v54 + 1) = ~(v50 / v25);
      v52 += 3;
      v50 += 255;
      --v53;
    }

    while (v53);
    v39 = v51;
  }

  if (v106 >= 100)
  {
    v55 = 0;
    v56 = v39;
    v57 = 3 * v39;
    v58 = v27;
    do
    {
      if (v56 >= *(v32 + 2))
      {
        ColorsWheelContext_create_cold_1();
      }

      ++v56;
      v59 = *v32 + v57;
      *v59 = 255;
      *(v59 + 2) = v55 / v27;
      v57 += 3;
      v55 += 255;
      --v58;
    }

    while (v58);
    v39 = v56;
  }

  if (v105 >= 100)
  {
    v60 = 0;
    v61 = v39;
    v62 = 3 * v39;
    v63 = v29;
    do
    {
      if (v61 >= *(v32 + 2))
      {
        ColorsWheelContext_create_cold_1();
      }

      ++v61;
      v64 = *v32 + v62;
      *v64 = ~(v60 / v29);
      *(v64 + 1) = -256;
      v62 += 3;
      v60 += 255;
      --v63;
    }

    while (v63);
  }

  if (a8 < 0 && v37 != 1)
  {
    v65 = 0;
    LODWORD(v66) = v37 >> 1;
    if (v37 >> 1 <= 1)
    {
      v66 = 1;
    }

    else
    {
      v66 = v66;
    }

    v67 = v66 + 2 * v66;
    v68 = 3 * v37 - 3;
    do
    {
      v69 = (*v32 + v65);
      v70 = *v32 + v68;
      v71 = *(v69 + 2);
      v72 = *v69;
      v73 = *(v70 + 2);
      *v69 = *v70;
      *(v69 + 2) = v73;
      *v70 = v72;
      *(v70 + 2) = v71;
      v65 += 3;
      v68 -= 3;
    }

    while (v67 != v65);
  }

  if (a8 >= 0)
  {
    v74 = a8;
  }

  else
  {
    v74 = -a8;
  }

  v75 = v74 - 1;
  LODWORD(v76) = 6 - v74;
  if (a8 < 0)
  {
    v76 = v76;
  }

  else
  {
    v76 = v75;
  }

  if (v76 >= 1)
  {
    v77 = 0;
    v78 = v110;
    do
    {
      v79 = v77;
      v81 = *v78++;
      v80 = v81;
      v77 += v81;
      --v76;
    }

    while (v76);
    if (v77 > 0)
    {
      v82 = *v32;
      v83 = v37 - 1;
      if (v77 != 1)
      {
        v84 = 0;
        v85 = (v82 + 3 * (v77 - 1));
        v86 = v79 + v80 - 2;
        v87 = *v32;
        do
        {
          v88 = *(v87 + 2);
          v89 = *v87;
          v90 = *(v85 + 2);
          *v87 = *v85;
          *(v87 + 2) = v90;
          *v85 = v89;
          *(v85 + 2) = v88;
          v87 = (v87 + 3);
          v85 = (v85 - 3);
          v91 = ++v84 < v86--;
        }

        while (v91);
      }

      if (v77 < v83)
      {
        v92 = (v82 + 3 * v83);
        v93 = (v82 + 3 * v77);
        v94 = v19 + v21 + v23 + v25 + v27 + v29 - 2;
        do
        {
          v95 = *(v93 + 2);
          v96 = *v93;
          v97 = *(v92 + 2);
          *v93 = *v92;
          *(v93 + 2) = v97;
          *v92 = v96;
          *(v92 + 2) = v95;
          v93 = (v93 + 3);
          v92 = (v92 - 3);
          v91 = ++v77 < v94--;
        }

        while (v91);
      }

      if (v37 != 1)
      {
        v98 = 0;
        v99 = (v82 + 3 * (v37 - 1));
        v100 = v19 + v21 + v23 + v25 + v27 + v29 - 2;
        do
        {
          v101 = *(v82 + 2);
          v102 = *v82;
          v103 = *(v99 + 2);
          *v82 = *v99;
          *(v82 + 2) = v103;
          *v99 = v102;
          *(v99 + 2) = v101;
          v82 = (v82 + 3);
          v99 = (v99 - 3);
          v91 = ++v98 < v100--;
        }

        while (v91);
      }
    }
  }

  v32[4] = a9;
  return v32;
}

void ColorsWheelContext_destroy(void ***a1)
{
  if (a1)
  {
    free(**a1);
    free(*a1);
    *a1 = 0;
  }
}

uint64_t ColorsWheelContext_computeColorComponent(uint64_t a1, uint64_t a2, float a3, double a4, double a5, float a6)
{
  if (a3 < 0.0 || a3 > 1.0)
  {
    ColorsWheelContext_computeColorComponent_cold_1();
  }

  v7 = *(a1 + 8);
  v8 = *(a1 + 16);
  if (v8 != 0.0)
  {
    v9 = v8 / 6.28318531;
    a3 = v9 + a3;
    v10 = 1.0;
    if (a3 < 0.0)
    {
LABEL_9:
      a3 = a3 + v10;
      goto LABEL_10;
    }

    if (a3 > 1.0)
    {
      v10 = -1.0;
      goto LABEL_9;
    }
  }

LABEL_10:
  v11 = a3 * (v7 - 1);
  v12 = v11;
  v13 = (v11 + 1) % v7;
  *&v14 = v11;
  v15 = v11 - *&v14;
  LOBYTE(v14) = *(*a1 + 3 * v12 + a2);
  LOBYTE(a6) = *(*a1 + 3 * v13 + a2);
  return (((v15 * (LODWORD(a6) / 255.0)) + ((1.0 - v15) * (v14 / 255.0))) * 255.0);
}

uint64_t ColorsWheelContext_drawMatrix_f32(uint64_t result, unsigned int a2, unsigned int a3, float *a4, int a5, int a6, uint64_t a7, int a8, double a9, double a10, double a11, float a12, int a13)
{
  if (a3 >= 1)
  {
    v13 = a4;
    v14 = result;
    v15 = 0;
    v16 = a6;
    v17 = 1.1755e-38;
    v18 = 3.4028e38;
    v19 = a4;
    v20 = a2;
    do
    {
      v21 = a2;
      v22 = v19;
      if (a2 >= 1)
      {
        do
        {
          *&a10 = *v22;
          if (*v22 < v18)
          {
            v18 = *v22;
          }

          if (*&a10 > v17)
          {
            v17 = *v22;
          }

          v22 = (v22 + a6);
          --v21;
        }

        while (v21);
      }

      ++v15;
      v19 = (v19 + a5);
    }

    while (v15 != a3);
    v23 = 0;
    v24 = v17 - v18;
    v35 = a8;
    v25 = (a7 + 1);
    v36 = a3;
    v37 = a5;
    do
    {
      v26 = v13;
      v27 = v25;
      if (a2 >= 1)
      {
        do
        {
          v28 = fmaxf(fminf((*v26 - v18) / v24, 1.0), 0.0);
          *(v27 - 1) = ColorsWheelContext_computeColorComponent(v14, 0, v28, a10, a11, a12);
          *v27 = ColorsWheelContext_computeColorComponent(v14, 1, v28, v29, v30, v31);
          result = ColorsWheelContext_computeColorComponent(v14, 2, v28, v32, v33, v34);
          v27[1] = result;
          v27[2] = -1;
          v27 += a13;
          v26 = (v26 + v16);
          --v20;
        }

        while (v20);
      }

      ++v23;
      v20 = a2;
      v25 += v35;
      v13 = (v13 + v37);
    }

    while (v23 != v36);
  }

  return result;
}

double FigCaptureUpdateToDisplayCoordinates(void *a1, uint64_t a2, uint64_t a3)
{
  if (FigCFDictionaryGetCGRectIfPresent())
  {
    [a1 warpCGRect:{0.0, 0.0, 0.0, 0.0}];
    FigCFDictionarySetCGRect();
  }

  return result;
}

double ss_conformRectForMSR420vfPixelBuffer(__CVBuffer *a1, int a2, double a3, double a4, double a5, double a6)
{
  v7 = psn_pixelBufferRect(a1);
  v9 = v8;
  v11 = v10;
  v13 = v12;
  if (a2)
  {
    v15 = 2;
  }

  else
  {
    v15 = 1;
  }

  v14 = v7;
  v16 = FigCaptureCeilFloatToMultipleOf(v15, v14);
  v17 = v9;
  v18 = FigCaptureCeilFloatToMultipleOf(v15, v17);
  v19 = v11;
  v20 = FigCaptureFloorFloatToMultipleOf(2, v19);
  v21 = v13;
  v22 = FigCaptureFloorFloatToMultipleOf(2, v21);
  v41.origin.x = v16;
  v36 = v18;
  v41.origin.y = v18;
  v41.size.width = v20;
  v41.size.height = v22;
  MaxX = CGRectGetMaxX(v41);
  v42.origin.x = v7;
  v42.origin.y = v9;
  v42.size.width = v11;
  v42.size.height = v13;
  if (MaxX > CGRectGetMaxX(v42))
  {
    v43.origin.x = v7;
    v43.origin.y = v9;
    v43.size.width = v11;
    v43.size.height = v13;
    v20 = CGRectGetMaxX(v43) - v16;
  }

  v44.origin.x = v16;
  v44.origin.y = v36;
  v44.size.width = v20;
  v44.size.height = v22;
  MaxY = CGRectGetMaxY(v44);
  v45.origin.x = v7;
  v45.origin.y = v9;
  v45.size.width = v11;
  v45.size.height = v13;
  if (MaxY > CGRectGetMaxY(v45))
  {
    v46.origin.x = v7;
    v46.origin.y = v9;
    v46.size.width = v11;
    v46.size.height = v13;
    v22 = CGRectGetMaxY(v46) - v36;
  }

  v25 = a5;
  v26 = FigCaptureRoundFloatToMultipleOf(2, v25);
  v27 = a6;
  FigCaptureRoundFloatToMultipleOf(2, v27);
  if (v20 >= v26)
  {
    v28 = v26;
  }

  else
  {
    v28 = v20;
  }

  v29 = fmax(v28, 0.0);
  v30 = a3;
  v31 = FigCaptureRoundFloatToMultipleOf(v15, v30);
  v32 = a4;
  FigCaptureRoundFloatToMultipleOf(v15, v32);
  v47.origin.x = v16;
  v47.origin.y = v36;
  v47.size.width = v20;
  v47.size.height = v22;
  MinX = CGRectGetMinX(v47);
  v48.origin.x = v16;
  v48.origin.y = v36;
  v48.size.width = v20;
  v48.size.height = v22;
  v34 = CGRectGetMaxX(v48) - v29;
  if (v34 >= v31)
  {
    v34 = v31;
  }

  if (MinX < v34)
  {
    MinX = v34;
  }

  v49.origin.x = v16;
  v49.origin.y = v36;
  v49.size.width = v20;
  v49.size.height = v22;
  CGRectGetMinY(v49);
  v50.origin.x = v16;
  v50.origin.y = v36;
  v50.size.width = v20;
  v50.size.height = v22;
  CGRectGetMaxY(v50);
  return MinX;
}