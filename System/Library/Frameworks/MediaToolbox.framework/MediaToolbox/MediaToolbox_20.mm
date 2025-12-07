uint64_t fpm_updateCacheAndNotify(uint64_t a1)
{
  v166 = *MEMORY[0x1E69E9840];
  v2 = *(MEMORY[0x1E6960C98] + 16);
  v141 = *MEMORY[0x1E6960C98];
  *v142 = v2;
  *&v142[16] = *(MEMORY[0x1E6960C98] + 32);
  v3 = MEMORY[0x1E695E4C0];
  UpTimeNanoseconds = FigGetUpTimeNanoseconds();
  *(a1 + 312) = 0;
  if (*(a1 + 96) != *(a1 + 184) || *(a1 + 313))
  {
    fpm_durationAhead(a1, &v141);
    *time = *&v142[8];
    *&time[16] = *&v142[24];
    Seconds = CMTimeGetSeconds(time);
    updated = fpm_updateCache(a1);
    fpm_durationAhead(a1, &v141);
    *time = *&v142[8];
    *&time[16] = *&v142[24];
    v5 = CMTimeGetSeconds(time);
  }

  else
  {
    fpm_durationAhead(a1, &v141);
    *time = *&v142[8];
    *&time[16] = *&v142[24];
    v5 = CMTimeGetSeconds(time);
    Seconds = v5;
    updated = 0;
  }

  v8 = v5;
  v9 = *v3;
  if (Seconds != v5)
  {
    *(a1 + 316) = 1;
  }

  if (Seconds < v5 && !*(a1 + 315))
  {
    *(a1 + 314) = 0;
    v9 = *MEMORY[0x1E695E4D0];
  }

  if (*(a1 + 316) && (*(a1 + 315) || UpTimeNanoseconds - *(a1 + 208) >= 500000000))
  {
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    if (Mutable)
    {
      CFDictionarySetValue(Mutable, @"FPM_IsFilling", v9);
    }

    FigRetainProxyRetain();
    CMNotificationCenterGetDefaultLocalCenter();
    FigDeferNotificationToDispatchQueue();
    *(a1 + 208) = UpTimeNanoseconds;
    *(a1 + 316) = 0;
  }

  if (UpTimeNanoseconds - *(a1 + 200) > 449999999 || fpm_shouldUpdateAggressively(a1))
  {
    v11 = *(a1 + 314);
    v12 = *(a1 + 112);
    if (v12 <= 1)
    {
      if (v12)
      {
        if (v12 == 1)
        {
          v151 = **&MEMORY[0x1E6960C70];
          number = 0;
          BOOLean = 0;
          valuePtr = 0.0;
          *&theDict = 0.0;
          v145 = 0.0;
          v146 = 0.0;
          v13 = *(a1 + 144);
          v14 = *(a1 + 116);
          if (!FigFormatReaderUtilityGetDuration(*(a1 + 8), 1, &v151) && (v151.flags & 0x1D) == 1)
          {
            v15 = *MEMORY[0x1E695E480];
            CMBaseObject = CMByteStreamGetCMBaseObject();
            v17 = *(*(CMBaseObjectGetVTable() + 8) + 48);
            if (!v17 || v17(CMBaseObject, *MEMORY[0x1E695FF80], v15, &BOOLean))
            {
              v19 = 1;
            }

            else
            {
              Value = CFBooleanGetValue(BOOLean);
              CFRelease(BOOLean);
              v19 = Value == 0;
            }

            *time = v151;
            v30 = CMTimeGetSeconds(time);
            CMTimebaseGetTime(time, *(a1 + 24));
            time2 = **&MEMORY[0x1E6960CC0];
            CMTimeMaximum(&v144, time, &time2);
            v31 = CMTimeGetSeconds(&v144);
            v32 = 0.0;
            if (v30 <= v31)
            {
              v33 = 0.0;
            }

            else
            {
              v33 = v30 - v31;
            }

            v34 = CMByteStreamGetCMBaseObject();
            v35 = *(*(CMBaseObjectGetVTable() + 8) + 48);
            if (!v35 || v35(v34, *MEMORY[0x1E695FF98], v15, &theDict))
            {
              v37 = 0;
            }

            else
            {
              FigCFDictionaryGetDoubleIfPresent();
              FigCFDictionaryGetDoubleIfPresent();
              v36 = CFDictionaryGetValue(theDict, *MEMORY[0x1E6960E10]);
              if (v36)
              {
                v37 = CFRetain(v36);
              }

              else
              {
                v37 = 0;
              }

              CFRelease(theDict);
            }

            v38 = v30 > 0.0 && v19;
            if (v38 && (v39 = CMByteStreamGetCMBaseObject(), (v40 = *(*(CMBaseObjectGetVTable() + 8) + 48)) != 0) && !v40(v39, *MEMORY[0x1E695FF78], v15, &number))
            {
              CFNumberGetValue(number, kCFNumberFloat64Type, &valuePtr);
              CFRelease(number);
              v41 = 0;
              v32 = valuePtr / v30;
              v42 = v33 - v8;
              if (v33 - v8 < 0.0)
              {
                v42 = 0.0;
              }

              v43 = v42 * v32;
              if (v145 > 0.0 && v32 > 0.0)
              {
                v44 = v145 / v32;
                if (v145 / v32 >= *(a1 + 124))
                {
                  if (v44 <= *(a1 + 128))
                  {
                    if (*(a1 + 104) != 1)
                    {
                      v13 = *(a1 + 136);
                      v43 = 0.0;
                    }

                    v41 = 2;
                  }

                  else if (v44 <= *(a1 + 132))
                  {
                    if (v44 <= *(a1 + 128))
                    {
                      v41 = 0;
                    }

                    else
                    {
                      if (*(a1 + 104) != 1)
                      {
                        v13 = *(a1 + 144);
                        v43 = 0.0;
                      }

                      v41 = 3;
                    }
                  }

                  else
                  {
                    if (*(a1 + 104) != 1)
                    {
                      v13 = *(a1 + 152);
                      v43 = 0.0;
                    }

                    v41 = 4;
                  }
                }

                else
                {
                  if (v30 > 300.0)
                  {
                    v14 = *(a1 + 120);
                  }

                  v41 = 1;
                }
              }
            }

            else
            {
              v41 = 0;
              v43 = 0.0;
            }

            if ((v151.flags & 0x1D) != 1)
            {
              goto LABEL_212;
            }

            if (v43 < 1.0 || (v45 = v33 * v145, v33 * v145 >= v43 * v14))
            {
              if (*(a1 + 104) == 1)
              {
                goto LABEL_212;
              }

              if (v13 >= v33)
              {
                v80 = v33;
              }

              else
              {
                v80 = v13;
              }

              if (v80 > v8)
              {
                v81 = v8 / v80;
                *(a1 + 108) = v81;
                goto LABEL_212;
              }

              itemfig_createDurationDictionary(v8);
              *(a1 + 104) = 0x3F80000000000001;
              if (dword_1EAF16BF0)
              {
                LODWORD(v144.value) = 0;
                type = OS_LOG_TYPE_DEFAULT;
                os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
                v88 = v144.value;
                v89 = type;
                if (os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, type))
                {
                  v90 = v88;
                }

                else
                {
                  v90 = v88 & 0xFFFFFFFE;
                }

                if (v90)
                {
                  v114 = fpm_likelyToKeepUpUsingBucketAlgorithm_bandwidthType[v41];
                  LODWORD(time2.value) = 136316930;
                  v115 = *(a1 + 108);
                  *(&time2.value + 4) = "fpm_likelyToKeepUpUsingBucketAlgorithm";
                  LOWORD(time2.flags) = 2048;
                  *(&time2.flags + 2) = a1;
                  HIWORD(time2.epoch) = 2082;
                  v153 = *&v114;
                  v154 = 2048;
                  v155 = v145 * 8.0 / 1000.0;
                  v156 = 2048;
                  v157 = v43 / 1000.0;
                  v158 = 2048;
                  v159 = v33 * (v145 / 1000.0);
                  v160 = 2048;
                  v161 = v33;
                  v162 = 2048;
                  v163 = v115;
                  _os_log_send_and_compose_impl(v90, 0, time, 128, &dword_1962D5000, os_log_and_send_and_compose_flags_and_os_log_type, v89, "<< FigPlayMonitor >> %s: [%p] (%{public}s) sending kfpmStreamLikelyToKeepUp; smoothedBandwidth=%.2f kbps bytesStillNeeded=%.2f KB bytesPossible=%.2f KB dur=%.2f (progress %1.5f)", &time2, 82);
                }

                fig_log_call_emit_and_clean_up_after_send_and_compose();
              }
            }

            else
            {
              v46 = *(a1 + 104);
              if (v46 == 1)
              {
                if (v45 >= v43)
                {
LABEL_212:
                  if (v11)
                  {
                    if (*(a1 + 104) != 1)
                    {
                      *(a1 + 104) = 2;
                      v118 = *(a1 + 96);
                      if (*(a1 + 100) != v118)
                      {
                        *(a1 + 100) = v118;
                        if (dword_1EAF16BF0)
                        {
                          LODWORD(v144.value) = 0;
                          type = OS_LOG_TYPE_DEFAULT;
                          v119 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
                          v120 = v144.value;
                          v121 = type;
                          if (os_log_type_enabled(v119, type))
                          {
                            v122 = v120;
                          }

                          else
                          {
                            v122 = v120 & 0xFFFFFFFE;
                          }

                          if (v122)
                          {
                            v123 = fpm_likelyToKeepUpUsingBucketAlgorithm_bandwidthType[v41];
                            LODWORD(time2.value) = 136316930;
                            v124 = *(a1 + 108);
                            *(&time2.value + 4) = "fpm_likelyToKeepUpUsingBucketAlgorithm";
                            LOWORD(time2.flags) = 2048;
                            *(&time2.flags + 2) = a1;
                            HIWORD(time2.epoch) = 2082;
                            v153 = *&v123;
                            v154 = 2048;
                            v155 = v145 * 8.0 / 1000.0;
                            v156 = 2048;
                            v157 = v43 / 1000.0;
                            v158 = 2048;
                            v159 = v33 * (v145 / 1000.0);
                            v160 = 2048;
                            v161 = v33;
                            v162 = 2048;
                            v163 = v124;
                            LODWORD(v138) = 82;
                            _os_log_send_and_compose_impl(v122, 0, time, 128, &dword_1962D5000, v119, v121, "<< FigPlayMonitor >> %s: [%p] (%{public}s) sending StreamBufferFull (quiescent); smoothedBandwidth=%.2f kbps bytesStillNeeded=%.2f KB bytesPossible=%.2f KB dur=%.2f (progress %1.5f)", &time2, v138);
                          }

                          fig_log_call_emit_and_clean_up_after_send_and_compose();
                        }

                        FigRetainProxyRetain();
                        CMNotificationCenterGetDefaultLocalCenter();
                        FigDeferNotificationToDispatchQueue();
                      }
                    }
                  }

                  FigSimpleMutexLock();
                  *(a1 + 8576) = v43;
                  *(a1 + 8584) = v33;
                  v125 = v145;
                  v126 = v146;
                  *(a1 + 8592) = v145;
                  *(a1 + 8600) = v126;
                  *(a1 + 8608) = v14;
                  v112 = v43 * v14 / v125 - v33;
LABEL_244:
                  if (v112 < 0.0)
                  {
                    v112 = 0.0;
                  }

                  *(a1 + 8616) = v112;
                  v136 = *(a1 + 8624);
                  if (v136 != v37)
                  {
                    *(a1 + 8624) = v37;
                    if (v37)
                    {
                      CFRetain(v37);
                    }

                    if (v136)
                    {
                      CFRelease(v136);
                    }
                  }

                  if (v37)
                  {
                    CFRelease(v37);
                  }

                  FigSimpleMutexUnlock();
                  goto LABEL_254;
                }
              }

              else
              {
                v91 = v8 / (v33 * (1.0 - v145 / (v32 * v14)));
                *(a1 + 108) = v91;
                if (v45 >= v43 || v46 == 2)
                {
                  goto LABEL_212;
                }
              }

              *(a1 + 104) = 2;
              if (dword_1EAF16BF0)
              {
                LODWORD(v144.value) = 0;
                type = OS_LOG_TYPE_DEFAULT;
                v92 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
                v93 = v144.value;
                v94 = type;
                if (os_log_type_enabled(v92, type))
                {
                  v95 = v93;
                }

                else
                {
                  v95 = v93 & 0xFFFFFFFE;
                }

                if (v95)
                {
                  v116 = fpm_likelyToKeepUpUsingBucketAlgorithm_bandwidthType[v41];
                  LODWORD(time2.value) = 136316930;
                  v117 = *(a1 + 108);
                  *(&time2.value + 4) = "fpm_likelyToKeepUpUsingBucketAlgorithm";
                  LOWORD(time2.flags) = 2048;
                  *(&time2.flags + 2) = a1;
                  HIWORD(time2.epoch) = 2082;
                  v153 = *&v116;
                  v154 = 2048;
                  v155 = v145 * 8.0 / 1000.0;
                  v156 = 2048;
                  v157 = v43 / 1000.0;
                  v158 = 2048;
                  v159 = v33 * (v145 / 1000.0);
                  v160 = 2048;
                  v161 = v33;
                  v162 = 2048;
                  v163 = v117;
                  _os_log_send_and_compose_impl(v95, 0, time, 128, &dword_1962D5000, v92, v94, "<< FigPlayMonitor >> %s: [%p] (%{public}s) sending kfpmStreamUnlikelyToKeepUp; smoothedBandwidth=%.2f kbps bytesStillNeeded=%.2f KB bytesPossible=%.2f KB dur=%.2f (progress %1.5f)", &time2, 82);
                }

                fig_log_call_emit_and_clean_up_after_send_and_compose();
              }
            }

            FigRetainProxyRetain();
            CMNotificationCenterGetDefaultLocalCenter();
            FigDeferNotificationToDispatchQueue();
            goto LABEL_212;
          }
        }

LABEL_254:
        *(a1 + 200) = UpTimeNanoseconds;
        goto LABEL_255;
      }

      v151 = **&MEMORY[0x1E6960C70];
      number = 0;
      BOOLean = 0;
      valuePtr = 0.0;
      *&theDict = 0.0;
      v145 = 0.0;
      v146 = 0.0;
      if (FigFormatReaderUtilityGetDuration(*(a1 + 8), 1, &v151) || (v151.flags & 0x1D) != 1)
      {
        goto LABEL_254;
      }

      v20 = *MEMORY[0x1E695E480];
      v21 = CMByteStreamGetCMBaseObject();
      v22 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      if (!v22 || v22(v21, *MEMORY[0x1E695FF80], v20, &BOOLean))
      {
        v24 = 1;
      }

      else
      {
        v23 = CFBooleanGetValue(BOOLean);
        CFRelease(BOOLean);
        v24 = v23 == 0;
      }

      CMTimebaseGetTime(time, *(a1 + 24));
      time2 = **&MEMORY[0x1E6960CC0];
      CMTimeMaximum(&v144, time, &time2);
      v47 = CMTimeGetSeconds(&v144);
      *time = v151;
      v48 = CMTimeGetSeconds(time);
      v49 = v48 - v47;
      v50 = 0.0;
      if (v48 <= v47)
      {
        v49 = 0.0;
      }

      if (v49 <= 900.0)
      {
        v51 = v49;
      }

      else
      {
        v51 = 900.0;
      }

      if (v24 && v48 > 0.0 && (v52 = CMByteStreamGetCMBaseObject(), (v53 = *(*(CMBaseObjectGetVTable() + 8) + 48)) != 0))
      {
        v54 = 0.0;
        if (!v53(v52, *MEMORY[0x1E695FF78], v20, &theDict))
        {
          CFNumberGetValue(theDict, kCFNumberFloat64Type, &valuePtr);
          CFRelease(theDict);
          v54 = (v51 - v8) * (valuePtr / v48);
          v50 = valuePtr / v48 + valuePtr / v48;
        }
      }

      else
      {
        v54 = 0.0;
      }

      v55 = CMByteStreamGetCMBaseObject();
      v56 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      if (!v56 || v56(v55, *MEMORY[0x1E695FF98], v20, &number))
      {
        v37 = 0;
      }

      else
      {
        FigCFDictionaryGetDoubleIfPresent();
        DoubleIfPresent = FigCFDictionaryGetDoubleIfPresent();
        v59 = v145 > 0.0 && DoubleIfPresent != 0;
        *(a1 + 8555) = v59;
        v60 = CFDictionaryGetValue(number, *MEMORY[0x1E6960E10]);
        if (v60)
        {
          v37 = CFRetain(v60);
        }

        else
        {
          v37 = 0;
        }

        CFRelease(number);
      }

      if ((v151.flags & 0x1D) == 1)
      {
        if (v54 < 1.0 || (v68 = v51 * v145, v51 * v145 >= v54 + v54))
        {
          if (*(a1 + 104) == 1)
          {
            goto LABEL_232;
          }

          if (v8 < 10.0 && v51 > 10.0)
          {
            v82 = v8 / 10.0;
            *(a1 + 108) = v82;
            goto LABEL_232;
          }

          itemfig_createDurationDictionary(v8);
          *(a1 + 104) = 0x3F80000000000001;
          if (dword_1EAF16BF0)
          {
            LODWORD(v144.value) = 0;
            type = OS_LOG_TYPE_DEFAULT;
            v83 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            v84 = v144.value;
            v85 = type;
            if (os_log_type_enabled(v83, type))
            {
              v86 = v84;
            }

            else
            {
              v86 = v84 & 0xFFFFFFFE;
            }

            if (v86)
            {
              v113 = *(a1 + 108);
              LODWORD(time2.value) = 136316418;
              *(&time2.value + 4) = "fpm_likelyToKeepUpUsingLegacyAlgorithm";
              LOWORD(time2.flags) = 2048;
              *(&time2.flags + 2) = a1;
              HIWORD(time2.epoch) = 2048;
              v153 = v145 * 8.0 / 1000.0;
              v154 = 2048;
              v155 = v54 / 1000.0;
              v156 = 2048;
              v157 = v51;
              v158 = 2048;
              v159 = v113;
              _os_log_send_and_compose_impl(v86, 0, time, 128, &dword_1962D5000, v83, v85, "<< FigPlayMonitor >> %s: [%p] sending kfpmStreamLikelyToKeepUp; smoothedBandwidth=%.2f kbps bytesStillNeeded=%.2f KB dur=%.2f (progress %1.5f)", &time2, 62, v139, v140, *&v141, *(&v141 + 1));
            }

            fig_log_call_emit_and_clean_up_after_send_and_compose();
          }
        }

        else
        {
          if (!*(a1 + 8555))
          {
            fpm_likelyToKeepUpUsingLivePlaybackAlgorithm(a1, v11, v8);
            goto LABEL_232;
          }

          v96 = *(a1 + 104);
          if (v96 == 1)
          {
            if (v68 >= v54)
            {
              goto LABEL_232;
            }
          }

          else
          {
            v106 = v8 / (v51 * (1.0 - v145 / v50));
            *(a1 + 108) = v106;
            if (v68 >= v54 || v96 == 2)
            {
              goto LABEL_232;
            }
          }

          *(a1 + 104) = 2;
          if (dword_1EAF16BF0)
          {
            LODWORD(v144.value) = 0;
            type = OS_LOG_TYPE_DEFAULT;
            v107 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            v108 = v144.value;
            v109 = type;
            if (os_log_type_enabled(v107, type))
            {
              v110 = v108;
            }

            else
            {
              v110 = v108 & 0xFFFFFFFE;
            }

            if (v110)
            {
              v127 = *(a1 + 108);
              LODWORD(time2.value) = 136316418;
              *(&time2.value + 4) = "fpm_likelyToKeepUpUsingLegacyAlgorithm";
              LOWORD(time2.flags) = 2048;
              *(&time2.flags + 2) = a1;
              HIWORD(time2.epoch) = 2048;
              v153 = v145 * 8.0 / 1000.0;
              v154 = 2048;
              v155 = v54 / 1000.0;
              v156 = 2048;
              v157 = v51;
              v158 = 2048;
              v159 = v127;
              _os_log_send_and_compose_impl(v110, 0, time, 128, &dword_1962D5000, v107, v109, "<< FigPlayMonitor >> %s: [%p] sending kfpmStreamUnlikelyToKeepUp; smoothedBandwidth=%.2f kbps bytesStillNeeded=%.2f KB dur=%.2f (progress %1.5f)", &time2, 62, v139, v140, *&v141, *(&v141 + 1));
            }

            fig_log_call_emit_and_clean_up_after_send_and_compose();
          }
        }

        FigRetainProxyRetain();
        CMNotificationCenterGetDefaultLocalCenter();
        FigDeferNotificationToDispatchQueue();
      }

LABEL_232:
      if (v11)
      {
        if (*(a1 + 104) != 1)
        {
          *(a1 + 104) = 2;
          v128 = *(a1 + 96);
          if (*(a1 + 100) != v128)
          {
            *(a1 + 100) = v128;
            if (dword_1EAF16BF0)
            {
              LODWORD(v144.value) = 0;
              type = OS_LOG_TYPE_DEFAULT;
              v129 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
              v130 = v144.value;
              v131 = type;
              if (os_log_type_enabled(v129, type))
              {
                v132 = v130;
              }

              else
              {
                v132 = v130 & 0xFFFFFFFE;
              }

              if (v132)
              {
                v133 = *(a1 + 108);
                LODWORD(time2.value) = 136316418;
                *(&time2.value + 4) = "fpm_likelyToKeepUpUsingLegacyAlgorithm";
                LOWORD(time2.flags) = 2048;
                *(&time2.flags + 2) = a1;
                HIWORD(time2.epoch) = 2048;
                v153 = v145 * 8.0 / 1000.0;
                v154 = 2048;
                v155 = v54 / 1000.0;
                v156 = 2048;
                v157 = v51;
                v158 = 2048;
                v159 = v133;
                LODWORD(v138) = 62;
                _os_log_send_and_compose_impl(v132, 0, time, 128, &dword_1962D5000, v129, v131, "<< FigPlayMonitor >> %s: [%p] sending StreamBufferFull (quiescent); smoothedBandwidth=%.2f kbps bytesStillNeeded=%.2f KB dur=%.2f (progress %1.5f)", &time2, v138, v139, v140, *&v141, *(&v141 + 1));
              }

              fig_log_call_emit_and_clean_up_after_send_and_compose();
            }

            FigRetainProxyRetain();
            CMNotificationCenterGetDefaultLocalCenter();
            FigDeferNotificationToDispatchQueue();
          }
        }
      }

      FigSimpleMutexLock();
      *(a1 + 8576) = v54;
      *(a1 + 8584) = v51;
      v134 = v145;
      v135 = v146;
      *(a1 + 8592) = v145;
      *(a1 + 8600) = v135;
      *(a1 + 8608) = 0x4000000000000000;
      v112 = (v54 + v54) / v134 - v51;
      goto LABEL_244;
    }

    if (v12 != 2)
    {
      if (v12 == 3)
      {
        fpm_likelyToKeepUpUsingLivePlaybackAlgorithm(a1, *(a1 + 314), v8);
      }

      goto LABEL_254;
    }

    v151 = **&MEMORY[0x1E6960C70];
    number = 0;
    BOOLean = 0;
    valuePtr = 0.0;
    *&theDict = 0.0;
    v145 = 0.0;
    v146 = 0.0;
    if (FigFormatReaderUtilityGetDuration(*(a1 + 8), 1, &v151) || (v151.flags & 0x1D) != 1)
    {
      goto LABEL_254;
    }

    v25 = *MEMORY[0x1E695E480];
    v26 = CMByteStreamGetCMBaseObject();
    v27 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (!v27 || v27(v26, *MEMORY[0x1E695FF80], v25, &BOOLean))
    {
      v29 = 1;
    }

    else
    {
      v28 = CFBooleanGetValue(BOOLean);
      CFRelease(BOOLean);
      v29 = v28 == 0;
    }

    CMTimebaseGetTime(time, *(a1 + 24));
    time2 = **&MEMORY[0x1E6960CC0];
    CMTimeMaximum(&v144, time, &time2);
    v61 = CMTimeGetSeconds(&v144);
    *time = v151;
    v62 = CMTimeGetSeconds(time);
    if (v62 <= v61)
    {
      v63 = 0.0;
    }

    else
    {
      v63 = v62 - v61;
    }

    v64 = CMByteStreamGetCMBaseObject();
    v65 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    v66 = 1.0;
    if (!v65 || v65(v64, *MEMORY[0x1E695FF98], v25, &number))
    {
      v37 = 0;
    }

    else
    {
      FigCFDictionaryGetDoubleIfPresent();
      FigCFDictionaryGetDoubleIfPresent();
      FigCFDictionaryGetDoubleIfPresent();
      v67 = CFDictionaryGetValue(number, *MEMORY[0x1E6960E10]);
      if (v67)
      {
        v37 = CFRetain(v67);
      }

      else
      {
        v37 = 0;
      }

      if (*&theDict != 0.0)
      {
        v66 = v146 / *&theDict + 1.0;
      }

      CFRelease(number);
    }

    v69 = v63 - v8 > 0.1 && v29;
    v70 = &unk_1EAF16000;
    if (!v69 || (valuePtr <= 0.0 ? (v71 = theDict) : COERCE_CFDICTIONARYREF(*&v71 = valuePtr), fpm_isLikelyToKeepUp(a1, &v145, v61, v8, *&v71, v66)))
    {
      if (*(a1 + 104) != 1)
      {
        itemfig_createDurationDictionary(v8);
        *(a1 + 104) = 0x3F80000000000001;
        if (dword_1EAF16BF0)
        {
          LODWORD(v140) = updated;
          LODWORD(v144.value) = 0;
          type = OS_LOG_TYPE_DEFAULT;
          v76 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          v77 = v144.value;
          v78 = type;
          if (os_log_type_enabled(v76, type))
          {
            v79 = v77;
          }

          else
          {
            v79 = v77 & 0xFFFFFFFE;
          }

          if (v79)
          {
            LODWORD(time2.value) = 136315906;
            *(&time2.value + 4) = "fpm_likelyToKeepUpUsingDynamicAlgorithm";
            LOWORD(time2.flags) = 2048;
            *(&time2.flags + 2) = a1;
            HIWORD(time2.epoch) = 2048;
            v153 = valuePtr * 8.0 / 1000.0;
            v154 = 2048;
            v155 = v63;
            _os_log_send_and_compose_impl(v79, 0, time, 128, &dword_1962D5000, v76, v78, "<< FigPlayMonitor >> %s: [%p] sending kfpmStreamLikelyToKeepUp; smoothedBandwidth=%.2f kbps dur=%.2f", &time2, 42, v139, v140);
          }

          fig_log_call_emit_and_clean_up_after_send_and_compose();
          v70 = &unk_1EAF16000;
          updated = LODWORD(v140);
        }

        goto LABEL_174;
      }
    }

    else if (*(a1 + 104) != 2)
    {
      *(a1 + 104) = 2;
      if (dword_1EAF16BF0)
      {
        LODWORD(v144.value) = 0;
        type = OS_LOG_TYPE_DEFAULT;
        v72 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        v73 = v144.value;
        v74 = type;
        if (os_log_type_enabled(v72, type))
        {
          v75 = v73;
        }

        else
        {
          v75 = v73 & 0xFFFFFFFE;
        }

        if (v75)
        {
          LODWORD(time2.value) = 136316162;
          *(&time2.value + 4) = "fpm_likelyToKeepUpUsingDynamicAlgorithm";
          LOWORD(time2.flags) = 2048;
          *(&time2.flags + 2) = a1;
          HIWORD(time2.epoch) = 2048;
          v153 = valuePtr * 8.0 / 1000.0;
          v154 = 2048;
          v155 = v63;
          v156 = 2048;
          v157 = v145;
          _os_log_send_and_compose_impl(v75, 0, time, 128, &dword_1962D5000, v72, v74, "<< FigPlayMonitor >> %s: [%p] sending kfpmStreamUnlikelyToKeepUp; smoothedBandwidth=%.2f kbps dur=%.2f timeToLikelyToKeepUp=%.2f s", &time2, 52, v139, v140, *&v141);
        }

        fig_log_call_emit_and_clean_up_after_send_and_compose();
        v70 = &unk_1EAF16000;
      }

LABEL_174:
      FigRetainProxyRetain();
      CMNotificationCenterGetDefaultLocalCenter();
      FigDeferNotificationToDispatchQueue();
    }

    if (v70[764])
    {
      LODWORD(v144.value) = 0;
      type = OS_LOG_TYPE_DEFAULT;
      v97 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v98 = v144.value;
      v99 = type;
      if (os_log_type_enabled(v97, type))
      {
        v100 = v98;
      }

      else
      {
        v100 = v98 & 0xFFFFFFFE;
      }

      if (v100)
      {
        LODWORD(time2.value) = 136316930;
        *(&time2.value + 4) = "fpm_likelyToKeepUpUsingDynamicAlgorithm";
        LOWORD(time2.flags) = 2048;
        *(&time2.flags + 2) = a1;
        HIWORD(time2.epoch) = 2048;
        v153 = *&theDict * 8.0 / 1000.0;
        v154 = 2048;
        v155 = valuePtr * 8.0 / 1000.0;
        v156 = 2048;
        v157 = v66;
        v158 = 2048;
        v159 = v62 - v63;
        v160 = 2048;
        v161 = v8;
        v162 = 2048;
        v163 = v145;
        LODWORD(v138) = 82;
        _os_log_send_and_compose_impl(v100, 0, time, 128, &dword_1962D5000, v97, v99, "<< FigPlayMonitor >> %s: [%p] bandwidth: %.0f kbps; smoothedBandwidth: %.0f kbps; bwInflationFactor: %.2f; (movieDuration - durToPlayThrough): %.2f; durationAhead: %.2f; timeToLikelyToKeepUp: %.2f", &time2, v138, v139, v140, *&v141, *(&v141 + 1), *v142, *&v142[8]);
      }

      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    if (v11)
    {
      if (*(a1 + 104) != 1)
      {
        *(a1 + 104) = 2;
        v101 = *(a1 + 96);
        if (*(a1 + 100) != v101)
        {
          *(a1 + 100) = v101;
          if (v70[764])
          {
            LODWORD(v144.value) = 0;
            type = OS_LOG_TYPE_DEFAULT;
            v102 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            v103 = v144.value;
            v104 = type;
            if (os_log_type_enabled(v102, type))
            {
              v105 = v103;
            }

            else
            {
              v105 = v103 & 0xFFFFFFFE;
            }

            if (v105)
            {
              LODWORD(time2.value) = 136316162;
              *(&time2.value + 4) = "fpm_likelyToKeepUpUsingDynamicAlgorithm";
              LOWORD(time2.flags) = 2048;
              *(&time2.flags + 2) = a1;
              HIWORD(time2.epoch) = 2048;
              v153 = valuePtr * 8.0 / 1000.0;
              v154 = 2048;
              v155 = v63;
              v156 = 2048;
              v157 = v145;
              LODWORD(v138) = 52;
              _os_log_send_and_compose_impl(v105, 0, time, 128, &dword_1962D5000, v102, v104, "<< FigPlayMonitor >> %s: [%p] sending StreamBufferFull (quiescent); smoothedBandwidth=%.2f kbps dur=%.2f timeToLikelyToKeepUp=%.2f s", &time2, v138, v139, v140, *&v141);
            }

            fig_log_call_emit_and_clean_up_after_send_and_compose();
          }

          FigRetainProxyRetain();
          CMNotificationCenterGetDefaultLocalCenter();
          FigDeferNotificationToDispatchQueue();
        }
      }
    }

    FigSimpleMutexLock();
    *(a1 + 8584) = v63;
    v111 = theDict;
    *(a1 + 8592) = valuePtr;
    *(a1 + 8600) = v111;
    *(a1 + 8608) = v66;
    v112 = v145;
    goto LABEL_244;
  }

LABEL_255:
  *time = v141;
  *&time[16] = *v142;
  v165 = *&v142[16];
  fpm_updateStreamBufferDurationAhead(a1, time);
  *(a1 + 315) = 0;
  return updated;
}

uint64_t FigPlayabilityMonitorGetPlaythroughInfo(uint64_t a1, _DWORD *a2, BOOL *a3, _DWORD *a4)
{
  FigSimpleMutexLock();
  if (a2)
  {
    *a2 = *(a1 + 104);
  }

  if (a3)
  {
    *a3 = *(a1 + 314) == 0;
  }

  if (a4)
  {
    *a4 = *(a1 + 108);
  }

  FigSimpleMutexUnlock();
  return 0;
}

uint64_t FigPlayabilityMonitorGetPlayabilityMetrics(void *a1, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7)
{
  FigSimpleMutexLock();
  *a2 = a1[1072];
  *a3 = a1[1073];
  *a4 = a1[1074];
  *a5 = a1[1075];
  *a6 = a1[1076];
  *a7 = a1[1077];
  FigSimpleMutexUnlock();
  return 0;
}

uint64_t FigPlayabilityMonitorCopyRemoteIPAddress(uint64_t a1, void *a2)
{
  FigSimpleMutexLock();
  v4 = *(a1 + 8624);
  if (v4)
  {
    v4 = CFRetain(v4);
  }

  *a2 = v4;
  FigSimpleMutexUnlock();
  return 0;
}

void fpm_postDeferredNotification(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const void *a5)
{
  FigRetainProxyLockMutex();
  if (!FigRetainProxyIsInvalidated())
  {
    Owner = FigRetainProxyGetOwner();
    CFDataGetMutableBytePtr(Owner);
    CMNotificationCenterPostNotification();
  }

  FigRetainProxyUnlockMutex();
  FigRetainProxyRelease();
  if (a5)
  {

    CFRelease(a5);
  }
}

uint64_t FigCRABSUnhintActiveRanges_0(uint64_t a1, uint64_t a2)
{
  VTable = CMBaseObjectGetVTable();
  v6 = *(VTable + 24);
  result = VTable + 24;
  v7 = *(v6 + 16);
  if (v7)
  {

    return v7(a1, 1, a2);
  }

  return result;
}

uint64_t fpm_getPlayableDurationForTrack(uint64_t a1, uint64_t a2, CMTime *a3, CMTime *a4, Boolean *a5, CMTimeValue *a6, CMTimeValue *a7)
{
  memset(&v50, 0, sizeof(v50));
  v12 = *(a1 + 80);
  v13 = *(a1 + 88) + 48 * a2;
  v14 = *(a1 + 8);
  BOOLean = 0;
  dictionaryRepresentation = 0;
  memset(&v51, 0, sizeof(v51));
  v15 = MEMORY[0x1E6960C68];
  v16 = *(MEMORY[0x1E6960C68] + 16);
  a4->epoch = v16;
  v48 = *v15;
  *&a4->value = *v15;
  ++*(a1 + 64);
  FigSimpleMutexUnlock();
  FigSimpleMutexLock();
  v17 = *(v13 + 16);
  v18 = *(*(CMBaseObjectGetVTable() + 16) + 40);
  if (!v18)
  {
    goto LABEL_11;
  }

  v19 = v18(v17, &v50);
  if (v19)
  {
    v20 = v19;
    goto LABEL_12;
  }

  time1 = v50;
  time2 = *a3;
  if (!CMTimeCompare(&time1, &time2))
  {
    goto LABEL_8;
  }

  v21 = *(v13 + 16);
  time1 = *a3;
  rhs = v50;
  CMTimeSubtract(&time2, &time1, &rhs);
  v22 = *(*(CMBaseObjectGetVTable() + 16) + 128);
  if (!v22)
  {
LABEL_11:
    v20 = 4294954514;
    goto LABEL_12;
  }

  time1 = time2;
  v23 = v22(v21, &time1);
  if (v23)
  {
    v20 = v23;
    if (v23 != -12840)
    {
      goto LABEL_12;
    }
  }

LABEL_8:
  v46 = *MEMORY[0x1E695E480];
  FigSampleCursorGetFigBaseObject();
  v25 = v24;
  v26 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v26)
  {
    v20 = v26(v25, @"CursorPlayableHorizon", v46, &dictionaryRepresentation);
    if (!v20)
    {
      CMTimeMakeFromDictionary(&time1, dictionaryRepresentation);
      *a4 = time1;
      CFRelease(dictionaryRepresentation);
      goto LABEL_17;
    }
  }

  else
  {
    v20 = 4294954514;
  }

  *(a1 + 8554) = 0;
LABEL_17:
  if (a5)
  {
    v47 = a7;
    FigSampleCursorGetFigBaseObject();
    v30 = v29;
    v31 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v31 && !v31(v30, @"CursorPlayableThroughEndOfTrack", v46, &BOOLean))
    {
      *a5 = CFBooleanGetValue(BOOLean);
      CFRelease(BOOLean);
      v38 = *a5;
      a7 = v47;
LABEL_45:
      v39 = a6;
      if (v38)
      {
        v20 = 0;
      }

      goto LABEL_36;
    }

    if ((~a4->flags & 0x11) != 0)
    {
      v32 = *(v13 + 24);
      *&v51.value = v48;
      v51.epoch = v16;
      if (v12 == 1)
      {
        LOBYTE(v33) = FigFormatReaderUtilityGetDuration(v14, 0, &v51) != 0;
      }

      else
      {
        memset(&time2, 0, sizeof(time2));
        v34 = *(*(CMBaseObjectGetVTable() + 16) + 128);
        if (v34)
        {
          time1 = **&MEMORY[0x1E6960C88];
          v34(v32, &time1);
        }

        v35 = *(*(CMBaseObjectGetVTable() + 16) + 40);
        if (v35)
        {
          v35(v32, &v51);
        }

        v33 = *(*(CMBaseObjectGetVTable() + 16) + 56);
        if (v33)
        {
          v33 = *(*(CMBaseObjectGetVTable() + 16) + 56);
          if (v33)
          {
            if (v33(v32, &time2))
            {
              LOBYTE(v33) = 0;
            }

            else
            {
              rhs = v51;
              v54 = time2;
              CMTimeAdd(&time1, &rhs, &v54);
              LOBYTE(v33) = 0;
              v51 = time1;
            }
          }
        }
      }

      if ((v51.flags & 0x1D) == 1 && (v33 & 1) == 0)
      {
        time2 = v51;
        rhs = *a3;
        CMTimeSubtract(&time1, &time2, &rhs);
        v51 = time1;
        epoch = time1.epoch;
        v37 = *&time1.value;
        time1 = *a4;
        *&time2.value = v37;
        time2.epoch = epoch;
        v38 = CMTimeCompare(&time1, &time2) >= 0;
        *a5 = v38;
        a7 = v47;
        goto LABEL_45;
      }
    }

    *a5 = 0;
    a7 = v47;
  }

  v39 = a6;
LABEL_36:
  if (v39)
  {
    if (a7)
    {
      *v39 = 0x7FFFFFFFFFFFFFFFLL;
      *a7 = 0;
      v40 = *(v13 + 16);
      time2 = *a4;
      v41 = *(*(CMBaseObjectGetVTable() + 16) + 128);
      if (!v41 || (time1 = time2, v41(v40, &time1) != -12840))
      {
        time1.value = 0;
        time2.value = 0;
        v42 = *(v13 + 16);
        v43 = *(*(CMBaseObjectGetVTable() + 16) + 152);
        if (v43 && !v43(v42, 0, 0, &time1, &time2, 0, 0, 0, 0, 0))
        {
          *v39 = time1.value;
          *a7 = time2.value;
        }

        else
        {
          v44 = *(v13 + 16);
          v45 = *(*(CMBaseObjectGetVTable() + 16) + 144);
          if (v45)
          {
            v45(v44, v39, a7, 0, 0);
          }
        }
      }
    }
  }

LABEL_12:
  FigSimpleMutexUnlock();
  FigSimpleMutexLock();
  v27 = *(a1 + 64) - 1;
  *(a1 + 64) = v27;
  if (!v27)
  {
    MEMORY[0x19A8D12E0](*(a1 + 72));
  }

  return v20;
}

BOOL fpm_shouldUpdateAggressively(uint64_t a1)
{
  v1 = *(a1 + 104);
  if (!v1)
  {
    return 1;
  }

  v2 = *(a1 + 112);
  if (v2 == 3)
  {
    return v1 != 1 || *(a1 + 315);
  }

  if (*(a1 + 315))
  {
    return 1;
  }

  if (v1 == 1 || v2 != 0)
  {
    return 0;
  }

  return *(a1 + 8555) == 0;
}

uint64_t fpm_deferredTimebaseJumpedCallback(uint64_t a1, uint64_t a2)
{
  FigRetainProxyLockMutex();
  if (!FigRetainProxyIsInvalidated())
  {
    Owner = FigRetainProxyGetOwner();
    MutableBytePtr = CFDataGetMutableBytePtr(Owner);
    FigSimpleMutexLock();
    fpm_ensureUpdatePrimed(MutableBytePtr);
    FigSimpleMutexUnlock();
  }

  FigRetainProxyUnlockMutex();

  return FigRetainProxyRelease();
}

uint64_t fpm_isLikelyToKeepUp(uint64_t a1, double *a2, double a3, double a4, double a5, float a6)
{
  if (a5 <= 0.0)
  {
    LOBYTE(v23) = 0;
  }

  else
  {
    v31 = v11;
    v32 = v10;
    v33 = v9;
    v34 = v8;
    v35 = v6;
    v36 = v7;
    if (!*(a1 + 8552) && fpm_prepareDataRateProfile(a1) || (v30 = *(a1 + 8528), Seconds = CMTimeGetSeconds(&v30), Seconds == 0.0))
    {
      LOBYTE(v23) = 0;
    }

    else
    {
      v19 = 0;
      v20 = 0.0;
      do
      {
        v20 = Seconds + v20;
        if (v20 > a3)
        {
          break;
        }

        ++v19;
      }

      while (v19 != 1023);
      v21 = 0;
      v22 = 0.0;
      while (1)
      {
        v22 = Seconds + v22;
        if (v22 > a3 + a4)
        {
          break;
        }

        if (++v21 == 1023)
        {
          goto LABEL_15;
        }
      }

      if (v21 > 0x3FF)
      {
        v24 = 0.0;
        LOBYTE(v23) = 1;
        if (a2)
        {
LABEL_24:
          *a2 = v24;
        }
      }

      else
      {
LABEL_15:
        v24 = 0.0;
        v25 = Seconds * (v21 - v19) * a5 + 0.0;
        v26 = 8 * v21;
        v23 = 1;
        do
        {
          v27 = *(a1 + 336 + v26);
          if (!v27)
          {
            break;
          }

          v28 = (v27 * a6);
          if (v23 && v25 > v28)
          {
            v23 = 1;
          }

          else
          {
            v23 = 0;
            if (v25 < v28)
            {
              v24 = v24 + (v28 - v25) / a5;
              v25 = (v27 * a6);
            }
          }

          v26 += 8;
          v25 = v25 - (v27 - Seconds * a5);
        }

        while (v26 != 0x2000);
        if (a2)
        {
          goto LABEL_24;
        }
      }
    }
  }

  return v23;
}

uint64_t OUTLINED_FUNCTION_3_13(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, int a15)
{

  return fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
}

__n128 OUTLINED_FUNCTION_5_11()
{
  result = v0[15];
  v1[7] = result;
  v1[8].n128_u64[0] = v0[16].n128_u64[0];
  return result;
}

void OUTLINED_FUNCTION_7_7()
{
  *(v2 - 240) = *(v2 - 112);
  *(v2 - 232) = *(v2 - 104);
  *(v2 - 228) = v0;
  *(v2 - 224) = v1;
}

uint64_t OUTLINED_FUNCTION_14_4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, __int128 a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, __int128 a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, CMTime *time2, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t time2a)
{
  *(v38 + 144) = *(v37 + 240);
  *(v38 + 160) = *(v37 + 256);
  *(v38 + 112) = a24;
  *(v38 + 128) = *(v38 + 16);

  return CMTimeCompare((v39 - 224), &time2a);
}

uint64_t OUTLINED_FUNCTION_18_3(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, const char *a8)
{

  return _os_log_send_and_compose_impl(a1, 0, a3, 128, a5, v8, v9, a8);
}

uint64_t OUTLINED_FUNCTION_22_4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, CMTime *time2, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, __int128 time2a, uint64_t time2_16, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, __int128 a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, __int128 a63)
{
  time2a = a63;
  time2_16 = a64;

  return CMTimeCompare((v64 - 240), &time2a);
}

__n128 OUTLINED_FUNCTION_24_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __n128 a28, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, __n128 a29, unint64_t a30)
{
  result = a29;
  v30[8] = a29;
  v30[9].n128_u64[0] = a30;
  return result;
}

uint64_t OUTLINED_FUNCTION_29_3(uint64_t a1, uint64_t a2, CMTime *a3, CMTime *a4, Boolean *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, CMTimeValue a46, CMTimeValue a47)
{

  return fpm_getPlayableDurationForTrack(v47, v48, a3, a4, a5, &a47, &a46);
}

uint64_t figTTMLNodeRegisterFigTTMLNodeBaseType()
{
  CMBaseGetClassID();

  return FigBaseClassRegisterClass();
}

uint64_t FigTTMLNodeGetTypeID()
{
  MEMORY[0x19A8D3660](&FigTTMLNodeGetClassID_sRegisterFigTTMLNodeBaseTypeOnce, figTTMLNodeRegisterFigTTMLNodeBaseType);

  return CMBaseClassGetCFTypeID();
}

const void *FigTTMLNodeGetXMLID(uint64_t a1)
{
  v1 = *(CMBaseObjectGetDerivedStorage() + 24);

  return CFDictionaryGetValue(v1, @"http://www.w3.org/XML/1998/namespace id");
}

uint64_t FigTTMLNodeGetTimeContainerSemantics(uint64_t a1, __CFString **a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a2)
  {
    cf1 = 0;
    result = CFDictionaryGetValueIfPresent(*(DerivedStorage + 24), @"timeContainer", &cf1);
    if (result)
    {
      if (!CFEqual(cf1, @"par") && !CFEqual(cf1, @"seq"))
      {
        return 4294950725;
      }

      result = 0;
      v5 = cf1;
    }

    else
    {
      v5 = @"par";
    }

    *a2 = v5;
  }

  else
  {
    FigTTMLNodeGetTimeContainerSemantics_cold_1(&v7);
    return v7;
  }

  return result;
}

uint64_t FigTTMLNodeCopyChildNodeArray(uint64_t a1, uint64_t a2)
{
  v4 = *(*(CMBaseObjectGetVTable() + 16) + 8);
  if (!v4)
  {
    return 4294954514;
  }

  return v4(a1, a2);
}

uint64_t FigTTMLNodeGetNodeType(uint64_t a1, uint64_t a2)
{
  v4 = *(*(CMBaseObjectGetVTable() + 16) + 16);
  if (!v4)
  {
    return 4294954514;
  }

  return v4(a1, a2);
}

uint64_t FigTTMLNodeGetRegionAttributeValue(uint64_t a1, void *a2)
{
  v5 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a2)
  {
    CFDictionaryGetValueIfPresent(*(DerivedStorage + 24), @"region", &v5);
    result = 0;
    *a2 = v5;
  }

  else
  {
    FigTTMLNodeGetRegionAttributeValue_cold_1(&v6);
    return v6;
  }

  return result;
}

uint64_t FigTTMLNodeIsAssociatedWithRegionID(const void *a1, const void *a2)
{
  if (CFEqual(&stru_1F0B1AFB8, a2))
  {
    return 1;
  }

  value = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  CFDictionaryGetValueIfPresent(*(DerivedStorage + 24), @"region", &value);
  v6 = value;
  if (value)
  {
    return CFEqual(v6, a2);
  }

  if (a1)
  {
    do
    {
      value = 0;
      v7 = CMBaseObjectGetDerivedStorage();
      CFDictionaryGetValueIfPresent(*(v7 + 24), @"region", &value);
      v6 = value;
      if (value)
      {
        return CFEqual(v6, a2);
      }
    }

    while (*CMBaseObjectGetDerivedStorage());
  }

  v10 = a2;
  v11 = 0;
  v8 = FigTTMLTreeWalkFromNode(a1, figTTMLNodeIsAssociatedWithRegionIDCallback, 0, &v10);
  return v11 && v8 == 0;
}

uint64_t figTTMLNodeIsAssociatedWithRegionIDCallback(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 8))
  {
    return 4294950723;
  }

  value[3] = v2;
  value[4] = v3;
  value[0] = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  CFDictionaryGetValueIfPresent(*(DerivedStorage + 24), @"region", value);
  result = value[0];
  if (value[0])
  {
    result = CFEqual(value[0], *a2);
    if (result)
    {
      result = 0;
      *(a2 + 8) = 1;
    }
  }

  return result;
}

uint64_t FigTTMLNodeCopyAttributes(uint64_t a1, void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a2)
  {
    v4 = *(DerivedStorage + 24);
    if (v4)
    {
      v5 = CFRetain(v4);
    }

    else
    {
      v5 = 0;
    }

    result = 0;
    *a2 = v5;
  }

  else
  {
    FigTTMLNodeCopyAttributes_cold_1(&v7);
    return v7;
  }

  return result;
}

uint64_t FigTTMLNodeCopySkippedElementLocalNames(uint64_t a1, void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a2)
  {
    v4 = *(DerivedStorage + 128);
    if (v4)
    {
      v5 = CFRetain(v4);
    }

    else
    {
      v5 = 0;
    }

    result = 0;
    *a2 = v5;
  }

  else
  {
    FigTTMLNodeCopySkippedElementLocalNames_cold_1(&v7);
    return v7;
  }

  return result;
}

double OUTLINED_FUNCTION_0_21(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, double a9, double a10, double a11, double a12, double a13, double a14, double a15, double a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, int a28, uint64_t a29, uint64_t a30, double a31)
{
  *(v31 - 112) = a27;
  *(v31 - 104) = a28;
  return a31;
}

CMTime *OUTLINED_FUNCTION_2_19(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, __int128 range, __int128 range_16, __int128 range_32, __int128 a18, __int128 a19, __int128 a20)
{
  range = a18;
  range_16 = a19;
  range_32 = a20;

  return CMTimeRangeGetEnd(&a9, &range);
}

uint64_t FigTTMLDocumentWriterCreateFrameRateParameterInserter(uint64_t a1, const void *a2, CFTypeRef *a3)
{
  if (!a2)
  {
    FigTTMLDocumentWriterCreateFrameRateParameterInserter_cold_2(&v8);
    return v8;
  }

  if (!a3)
  {
    FigTTMLDocumentWriterCreateFrameRateParameterInserter_cold_1(&v8);
    return v8;
  }

  FigTTMLDocumentWriterGetClassID();
  v5 = CMDerivedObjectCreate();
  if (!v5)
  {
    FigTTMLDocumentWriterGetCMBaseObject();
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    *DerivedStorage = CFRetain(a2);
    DerivedStorage[1] = @"nonDrop";
    *a3 = 0;
  }

  return v5;
}

void figTTMLDocumentWriterFrameRateParameterInserter_Finalize(uint64_t a1)
{
  FigTTMLDocumentWriterGetCMBaseObject();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*DerivedStorage)
  {
    CFRelease(*DerivedStorage);
    *DerivedStorage = 0;
  }
}

uint64_t figTTMLDocumentWriterFrameRateParameterInserter_CopyProperty(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
    if (a4)
    {
      return 4294954512;
    }

    v7 = 70;
  }

  else
  {
    v7 = 69;
  }

  v9 = v4;
  v10 = v5;
  figTTMLDocumentWriterFrameRateParameterInserter_CopyProperty_cold_1(v7, &v8);
  return v8;
}

uint64_t figTTMLDocumentWriterFrameRateParameterInserter_SetProperty(uint64_t a1, const void *a2, const void *a3)
{
  v50 = *MEMORY[0x1E69E9840];
  FigTTMLDocumentWriterGetCMBaseObject();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!a2)
  {
    figTTMLDocumentWriterFrameRateParameterInserter_SetProperty_cold_4(&v17);
    return LODWORD(v17.value);
  }

  if (!a3)
  {
    figTTMLDocumentWriterFrameRateParameterInserter_SetProperty_cold_3(&v17);
    return LODWORD(v17.value);
  }

  v6 = DerivedStorage;
  if (!CFEqual(@"timeCodeFrameDuration", a2))
  {
    if (!CFEqual(@"useDropFrame", a2))
    {
      return 4294954512;
    }

    v10 = CFGetTypeID(a3);
    if (v10 == CFBooleanGetTypeID())
    {
      result = CFBooleanGetValue(a3);
      if (result)
      {
        result = 0;
        *(v6 + 8) = @"dropNTSC";
      }

      return result;
    }

    figTTMLDocumentWriterFrameRateParameterInserter_SetProperty_cold_2(&v17);
    return LODWORD(v17.value);
  }

  v7 = CFGetTypeID(a3);
  if (v7 != CFDictionaryGetTypeID())
  {
    figTTMLDocumentWriterFrameRateParameterInserter_SetProperty_cold_1(&v17);
    return LODWORD(v17.value);
  }

  memset(&v14, 0, sizeof(v14));
  CMTimeMakeFromDictionary(&v14, a3);
  v13 = v14;
  CMTimeMake(&v17, 1, 24);
  v18 = 24;
  CMTimeMake(&v19, 1, 1);
  CMTimeMake(&v20, 1, 25);
  v21 = 25;
  CMTimeMake(&v22, 1, 1);
  CMTimeMake(&v23, 1, 30);
  v24 = 30;
  CMTimeMake(&v25, 1, 1);
  CMTimeMake(&v26, 1, 50);
  v27 = 50;
  CMTimeMake(&v28, 1, 1);
  CMTimeMake(&v29, 1, 60);
  v30 = 60;
  CMTimeMake(&v31, 1, 1);
  CMTimeMake(&v32, 1001, 24000);
  v33 = 24;
  CMTimeMake(&v34, 1000, 1001);
  CMTimeMake(&v35, 1001, 30000);
  v36 = 30;
  CMTimeMake(&v37, 1000, 1001);
  CMTimeMake(&v38, 1001, 60000);
  v39 = 60;
  CMTimeMake(&v40, 1000, 1001);
  CMTimeMake(&v41, 1000, 23976);
  v42 = 24;
  CMTimeMake(&v43, 999, 1000);
  CMTimeMake(&v44, 1000, 29970);
  v45 = 30;
  CMTimeMake(&v46, 999, 1000);
  CMTimeMake(&v47, 1000, 59940);
  v48 = 60;
  CMTimeMake(&v49, 999, 1000);
  v8 = 0;
  *(v6 + 16) = 0;
  v9 = MEMORY[0x1E6960C70];
  *(v6 + 20) = *MEMORY[0x1E6960C70];
  *(v6 + 36) = *(v9 + 16);
  while (1)
  {
    time1 = v13;
    time2 = *(&v17 + v8);
    if (!CMTimeCompare(&time1, &time2))
    {
      break;
    }

    v8 += 52;
    if (v8 == 572)
    {
      return 0;
    }
  }

  *(v6 + 16) = *(&v17 + v8 + 24);
  v12 = *(&v19.value + v8);
  *(v6 + 36) = *(&v19.epoch + v8);
  *(v6 + 20) = v12;
  return 0;
}

uint64_t figTTMLDocumentWriterFrameRateParameterInserter_StartElement(uint64_t a1, uint64_t a2)
{
  FigTTMLDocumentWriterGetCMBaseObject();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  started = FigTTMLDocumentWriterStartElement(*DerivedStorage, a2);
  v6 = started;
  if (a2 == 7 && !started)
  {
    if (!*(DerivedStorage + 16))
    {
      goto LABEL_10;
    }

    v7 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt32Type, (DerivedStorage + 16));
    v6 = FigTTMLDocumentWriterSetAttribute(a1, @"http://www.w3.org/ns/ttml#parameter frameRate", v7);
    if (v7)
    {
      CFRelease(v7);
    }

    if (!v6)
    {
LABEL_10:
      if ((*(DerivedStorage + 32) & 0x1D) != 1)
      {
        goto LABEL_11;
      }

      v8 = *MEMORY[0x1E695E480];
      v12 = *(DerivedStorage + 20);
      v9 = CMTimeCopyAsDictionary(&v12, v8);
      v6 = FigTTMLDocumentWriterSetAttribute(a1, @"http://www.w3.org/ns/ttml#parameter frameRateMultiplier", v9);
      if (v9)
      {
        CFRelease(v9);
      }

      if (!v6)
      {
LABEL_11:
        v10 = *(DerivedStorage + 8);
        if (v10 == @"nonDrop")
        {
          return 0;
        }

        else
        {
          return FigTTMLDocumentWriterSetAttribute(a1, @"http://www.w3.org/ns/ttml#parameter dropMode", v10);
        }
      }
    }
  }

  return v6;
}

uint64_t figTTMLDocumentWriterFrameRateParameterInserter_EndElement(uint64_t a1)
{
  FigTTMLDocumentWriterGetCMBaseObject();
  v1 = *CMBaseObjectGetDerivedStorage();

  return FigTTMLDocumentWriterEndElement(v1);
}

uint64_t figTTMLDocumentWriterFrameRateParameterInserter_AddCaptionData(uint64_t a1, uint64_t a2)
{
  FigTTMLDocumentWriterGetCMBaseObject();
  v3 = *CMBaseObjectGetDerivedStorage();

  return FigTTMLDocumentWriterAddCaptionData(v3, a2);
}

uint64_t figTTMLDocumentWriterFrameRateParameterInserter_SetAttribute(uint64_t a1, uint64_t a2, uint64_t a3)
{
  FigTTMLDocumentWriterGetCMBaseObject();
  v5 = *CMBaseObjectGetDerivedStorage();

  return FigTTMLDocumentWriterSetAttribute(v5, a2, a3);
}

uint64_t figTTMLDocumentWriterFrameRateParameterInserter_Flush(uint64_t a1)
{
  FigTTMLDocumentWriterGetCMBaseObject();
  v1 = *CMBaseObjectGetDerivedStorage();

  return FigTTMLDocumentWriterFlush(v1);
}

uint64_t figtimebase_getSyncMomentInternal(OpaqueCMTimebase *a1, int a2, uint64_t a3)
{
  v28 = *MEMORY[0x1E69E9840];
  *&v26.value = *MEMORY[0x1E6960C70];
  v3 = *(MEMORY[0x1E6960C70] + 16);
  v26.epoch = v3;
  *&outOfClockOrTimebaseAnchorTime.value = *&v26.value;
  outOfClockOrTimebaseAnchorTime.epoch = v3;
  if (!a1)
  {
    figtimebase_getSyncMomentInternal_cold_2(&v24);
    return LODWORD(v24.value);
  }

  v19 = *&v26.value;
  v7 = CMTimebaseCopyUltimateSourceClock(a1);
  if (!v7)
  {
    figtimebase_getSyncMomentInternal_cold_1(&v24);
    return LODWORD(v24.value);
  }

  v8 = v7;
  *(a3 + 112) = 0;
  *(a3 + 64) = 0u;
  *(a3 + 80) = 0u;
  *(a3 + 32) = 0u;
  *(a3 + 48) = 0u;
  *a3 = 0u;
  *(a3 + 16) = 0u;
  *(a3 + 96) = 0u;
  *a3 = 120;
  *(a3 + 8) = CMTimebaseGetEffectiveRate(a1);
  *(a3 + 4) = 0;
  HostTimeClock = CMClockGetHostTimeClock();
  CMClockGetTime(&v26, HostTimeClock);
  v10 = CMClockGetHostTimeClock();
  time = v26;
  CMSyncConvertTime(&v24, &time, v10, a1);
  *(a3 + 16) = v24;
  *(a3 + 40) = v26;
  v11 = CMClockGetHostTimeClock();
  *(a3 + 64) = CMSyncGetRelativeRate(v8, v11);
  *(a3 + 72) = v19;
  *(a3 + 88) = v3;
  *(a3 + 96) = v19;
  *(a3 + 112) = v3;
  if (!a2)
  {
    goto LABEL_15;
  }

  v12 = CMTimebaseCopySource(a1);
  if (!v12)
  {
    goto LABEL_15;
  }

  v13 = v12;
  v21 = 0.0;
  outRelativeRate = 0.0;
  memset(&time, 0, sizeof(time));
  CMSyncGetRelativeRateAndAnchorTime(a1, v8, &outRelativeRate, 0, 0);
  CMSyncGetRelativeRateAndAnchorTime(a1, v13, 0, &outOfClockOrTimebaseAnchorTime, &time);
  CMSyncGetRelativeRateAndAnchorTime(v13, v8, &v21, 0, 0);
  CMSyncGetTime(&v24, v13);
  if (outRelativeRate != 0.0)
  {
    v14 = v21;
    if (v21 > 0.0)
    {
      time1 = time;
      time2 = v24;
      if (CMTimeCompare(&time1, &time2) > 0)
      {
        goto LABEL_11;
      }

      v14 = v21;
    }

    if (v14 < 0.0)
    {
      time1 = time;
      time2 = v24;
      if (CMTimeCompare(&time1, &time2) < 0)
      {
LABEL_11:
        v15 = CMClockGetHostTimeClock();
        time2 = time;
        CMSyncConvertTime(&time1, &time2, v13, v15);
        time2.value = time1.value;
        time2.timescale = time1.timescale;
        if (outOfClockOrTimebaseAnchorTime.flags)
        {
          flags = time1.flags;
          if (time1.flags)
          {
            epoch = time1.epoch;
            *(a3 + 72) = outOfClockOrTimebaseAnchorTime;
            *(a3 + 96) = time2.value;
            *(a3 + 104) = time2.timescale;
            *(a3 + 108) = flags;
            *(a3 + 112) = epoch;
            *(a3 + 4) |= 8u;
          }
        }
      }
    }
  }

  CFRelease(v13);
LABEL_15:
  CFRelease(v8);
  return 0;
}

void figSyncMomentSource_UpdateToCurrentTimebaseRate(uint64_t a1)
{
  EffectiveRate = CMTimebaseGetEffectiveRate(*(a1 + 64));
  if (EffectiveRate == 0.0 && *(a1 + 72) != 0.0)
  {
    v3 = *(a1 + 224);
    v4 = -1;
    v5 = -1;
    v6 = 0;
LABEL_7:
    dispatch_source_set_timer(v3, v4, v5, v6);
    goto LABEL_8;
  }

  if (EffectiveRate != 0.0 && *(a1 + 72) == 0.0)
  {
    v7 = *(a1 + 224);
    v4 = dispatch_time(0, 1000000000);
    v3 = v7;
    v5 = 1000000000;
    v6 = 10000000;
    goto LABEL_7;
  }

LABEL_8:
  *(a1 + 72) = EffectiveRate;
}

double FigSyncMomentSourceChangeFlagsMask(uint64_t a1, int a2, int a3, _DWORD *a4)
{
  if (a1)
  {
    v5 = *(a1 + 232);
    if (a4)
    {
      *a4 = v5;
    }

    *(a1 + 232) = v5 & ~a2 | a3 & a2;
  }

  else
  {
    emitter = fig_log_get_emitter();

    return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 4294954946, "<<<< TimebaseSync >>>>", 865, v4);
  }

  return result;
}

uint64_t figSyncMomentSource_registerClass()
{
  result = _CFRuntimeRegisterClass();
  sFigSyncMomentSourceID = result;
  return result;
}

uint64_t figSyncMomentSource_createInternal(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t), const void *a5, NSObject *a6, uint64_t *a7)
{
  if (!(a1 | a2))
  {
    figSyncMomentSource_createInternal_cold_8(v25);
LABEL_20:
    Instance = 0;
    goto LABEL_21;
  }

  if (!a5)
  {
    figSyncMomentSource_createInternal_cold_7(v25);
    goto LABEL_20;
  }

  if (!a7)
  {
    figSyncMomentSource_createInternal_cold_6(v25);
    goto LABEL_20;
  }

  if (!a6)
  {
    figSyncMomentSource_createInternal_cold_5(v25);
    goto LABEL_20;
  }

  MEMORY[0x19A8D3660](&FigSyncMomentSourceGetTypeID_sRegisterFigSyncMomentSourceOnce, figSyncMomentSource_registerClass);
  Instance = _CFRuntimeCreateInstance();
  if (Instance)
  {
    v15 = FigCFWeakReferenceHolderCreateWithReferencedObject();
    *(Instance + 16) = v15;
    if (v15)
    {
      *(Instance + 232) = -1;
      v16 = FigReentrantMutexCreate();
      *(Instance + 24) = v16;
      if (v16)
      {
        FigSimpleMutexLock();
        v17 = *(Instance + 24);
        *(Instance + 32) = a1;
        *(Instance + 40) = a2;
        *(Instance + 48) = a3;
        *(Instance + 56) = a4;
        *(Instance + 80) = FigDispatchQueueCreateWithPriority();
        *(Instance + 216) = a6;
        dispatch_retain(a6);
        v18 = *(Instance + 80);
        if (v18)
        {
          v19 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, v18);
          *(Instance + 224) = v19;
          if (v19)
          {
            dispatch_source_set_timer(v19, 0xFFFFFFFFFFFFFFFFLL, 0xFFFFFFFFFFFFFFFFLL, 0);
            dispatch_set_context(*(Instance + 224), *(Instance + 16));
            CFRetain(*(Instance + 16));
            dispatch_set_finalizer_f(*(Instance + 224), figSyncMomentSource_QueueTimerFinalizer);
            dispatch_source_set_event_handler_f(*(Instance + 224), figSyncMomentSource_QueueTimerCallback);
            *(Instance + 240) = voucher_copy();
            dispatch_resume(*(Instance + 224));
LABEL_12:
            if (v17)
            {
              FigSimpleMutexUnlock();
            }

            FigSyncMomentSourceSetTimebase(Instance, a5);
            v21 = 0;
            *a7 = Instance;
            return v21;
          }

          figSyncMomentSource_createInternal_cold_1(v25);
          v21 = v25[0];
          if (!v25[0])
          {
            goto LABEL_12;
          }
        }

        else
        {
          fig_log_get_emitter();
          FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v23, v24, v25[1]);
          v21 = v20;
          if (!v20)
          {
            goto LABEL_12;
          }
        }

        if (v17)
        {
          FigSimpleMutexUnlock();
        }

LABEL_24:
        CFRelease(Instance);
        return v21;
      }

      figSyncMomentSource_createInternal_cold_2(v25);
    }

    else
    {
      figSyncMomentSource_createInternal_cold_3(v25);
    }
  }

  else
  {
    figSyncMomentSource_createInternal_cold_4(v25);
  }

LABEL_21:
  v21 = v25[0];
  if (a4)
  {
    a4(a3);
  }

  if (Instance)
  {
    goto LABEL_24;
  }

  return v21;
}

__n128 figSyncMomentSource_updatePendingMoment(__n128 *a1)
{
  v1 = a1->n128_u64[0];
  v2 = a1->n128_u32[3];
  v9 = a1[5];
  v10 = a1[6];
  v11 = a1[7];
  v5 = a1[1];
  v6 = a1[2];
  v7 = a1[3];
  v8 = a1[4];
  v3 = *(a1->n128_u64[0] + 208);
  if (*(a1->n128_u64[0] + 208))
  {
    v2 |= *(v1 + 92);
  }

  *(v1 + 88) = a1->n128_u32[2];
  *(v1 + 92) = v2;
  *(v1 + 160) = v9;
  *(v1 + 176) = v10;
  *(v1 + 192) = v11;
  *(v1 + 96) = v5;
  *(v1 + 112) = v6;
  result = v8;
  *(v1 + 128) = v7;
  *(v1 + 144) = v8;
  a1[8].n128_u8[0] = v3 == 0;
  *(v1 + 208) = 1;
  return result;
}

void figSyncMomentSource_retrievePendingMoment(uint64_t *result)
{
  v2 = *result;
  if (*(*result + 208))
  {
    v3 = 0;
    v4 = *(v2 + 88);
    v5 = *(v2 + 104);
    v6 = *(v2 + 120);
    *(result + 7) = *(v2 + 136);
    *(result + 5) = v6;
    *(result + 3) = v5;
    *(result + 1) = v4;
    v7 = *(v2 + 152);
    v8 = *(v2 + 168);
    v9 = *(v2 + 184);
    result[15] = *(v2 + 200);
    *(result + 13) = v9;
    *(result + 11) = v8;
    *(result + 9) = v7;
    *(v2 + 208) = 0;
  }

  else
  {
    figSyncMomentSource_retrievePendingMoment_cold_1(&v10);
    v3 = v10;
  }

  *(result + 32) = v3;
}

double figSyncMomentSource_Init(uint64_t a1)
{
  *(a1 + 240) = 0;
  result = 0.0;
  *(a1 + 208) = 0u;
  *(a1 + 224) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  return result;
}

uint64_t figSyncMomentSource_Finalize(uint64_t a1)
{
  *(a1 + 236) = 1;
  if (*(a1 + 64))
  {
    CMNotificationCenterGetDefaultLocalCenter();
    FigNotificationCenterRemoveWeakListener();
    CMNotificationCenterGetDefaultLocalCenter();
    FigNotificationCenterRemoveWeakListener();
    CFRelease(*(a1 + 64));
  }

  v2 = *(a1 + 224);
  if (v2)
  {
    dispatch_async_f(*(a1 + 80), v2, figSyncMomentSource_DestroyPeriodicTimer);
    *(a1 + 224) = 0;
  }

  v3 = *(a1 + 16);
  if (v3)
  {
    CFRelease(v3);
  }

  v4 = *(a1 + 80);
  if (v4)
  {
    dispatch_release(v4);
    *(a1 + 80) = 0;
  }

  v5 = *(a1 + 216);
  if (v5)
  {
    dispatch_release(v5);
    *(a1 + 216) = 0;
  }

  v6 = *(a1 + 240);
  if (v6)
  {
    os_release(v6);
    *(a1 + 240) = 0;
  }

  v7 = *(a1 + 56);
  if (v7)
  {
    v7(*(a1 + 48));
  }

  result = FigSimpleMutexDestroy();
  *(a1 + 24) = 0;
  return result;
}

__CFString *figSyncMomentSource_CopyDebugDesc(uint64_t a1)
{
  v2 = CFGetAllocator(a1);
  Mutable = CFStringCreateMutable(v2, 0);
  v4 = Mutable;
  v5 = "(INVALID) ";
  if (!*(a1 + 236))
  {
    v5 = "";
  }

  v6 = "YES";
  if (!*(a1 + 208))
  {
    v6 = "NO";
  }

  CFStringAppendFormat(Mutable, 0, @"FigSyncMomentSource: %p %stimebase: %p timebaseEffectiveRate: %f pendingQueue: %p queueTimer: %p signallingQueue: %p momentPending: %s flagsMask: %x callbacks: %p %p refcon: %p\n", a1, v5, *(a1 + 64), *(a1 + 72), *(a1 + 80), *(a1 + 224), *(a1 + 216), v6, *(a1 + 232), *(a1 + 32), *(a1 + 40), *(a1 + 48));
  return v4;
}

void figSyncMomentSource_DestroyPeriodicTimer(NSObject *a1)
{
  if (a1)
  {
    dispatch_source_cancel(a1);

    dispatch_release(a1);
  }
}

void figSyncMomentSource_QueueTimerCallback(uint64_t a1)
{
  v1 = FigCFWeakReferenceHolderCopyReferencedObject();
  if (v1)
  {
    v2 = v1;
    if (!*(v1 + 236))
    {
      figSyncMomentSource_QueueTimerCallback_cold_1(v3, v1);
    }

    CFRelease(v2);
  }
}

uint64_t FigLayerSynchronizerConfigurationGetTypeID(uint64_t a1, uint64_t a2)
{
  if (_MergedGlobals_20 != -1)
  {
    FigLayerSynchronizerConfigurationGetTypeID_cold_1();
  }

  return qword_1ED4CA4A0;
}

uint64_t registerLayerSynchronizerConfigurationOnce(uint64_t *a1)
{
  result = _CFRuntimeRegisterClass();
  *a1 = result;
  return result;
}

uint64_t FigLayerSynchronizerConfigurationCreate(const __CFAllocator *a1, void *a2)
{
  if (a2)
  {
    if (_MergedGlobals_20 != -1)
    {
      FigLayerSynchronizerConfigurationGetTypeID_cold_1();
    }

    Instance = _CFRuntimeCreateInstance();
    if (Instance)
    {
      v5 = Instance;
      Mutable = CFArrayCreateMutable(a1, 0, MEMORY[0x1E695E9C0]);
      v5[4] = Mutable;
      if (Mutable)
      {
        v7 = CFArrayCreateMutable(a1, 0, MEMORY[0x1E695E9C0]);
        v5[3] = v7;
        if (v7)
        {
          v8 = FigSimpleMutexCreate();
          v5[2] = v8;
          if (v8)
          {
            result = 0;
            *a2 = v5;
            return result;
          }

          v10 = 502;
        }

        else
        {
          v10 = 500;
        }
      }

      else
      {
        v10 = 498;
      }

      FigLayerSynchronizerConfigurationCreate_cold_2(v10, v5, &v11);
      return v11;
    }

    else
    {
      FigLayerSynchronizerConfigurationCreate_cold_3(&v12);
      return v12;
    }
  }

  else
  {
    FigLayerSynchronizerConfigurationCreate_cold_4(&v13);
    return v13;
  }
}

uint64_t FigLayerSynchronizerConfigurationAddLayersSubjectToImageQueueTiming(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    FigSimpleMutexLock();
    FigCFArrayAppendArray();
    FigSimpleMutexUnlock();
    return 0;
  }

  else
  {
    FigLayerSynchronizerConfigurationAddLayersSubjectToImageQueueTiming_cold_1(&v3);
    return v3;
  }
}

uint64_t FigLayerSynchronizerConfigurationAddLayersNotSubjectToImageQueueTiming(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    FigSimpleMutexLock();
    FigCFArrayAppendArray();
    FigSimpleMutexUnlock();
    return 0;
  }

  else
  {
    FigLayerSynchronizerConfigurationAddLayersNotSubjectToImageQueueTiming_cold_1(&v3);
    return v3;
  }
}

uint64_t FigLayerSynchronizerConfigurationCopyLayers(void *a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  if (a1)
  {
    FigSimpleMutexLock();
    if (a3)
    {
      *a3 = FigCFArrayCreateCopy();
    }

    if (a4)
    {
      *a4 = FigCFArrayCreateCopy();
    }

    FigSimpleMutexUnlock();
    return 0;
  }

  else
  {
    FigLayerSynchronizerConfigurationCopyLayers_cold_1(&v7);
    return v7;
  }
}

uint64_t registerLayerSynchronizerType()
{
  result = _CFRuntimeRegisterClass();
  sLayerSynchronizerID = result;
  return result;
}

uint64_t FigLayerSynchronizerCreate(void *a1)
{
  FigNote_AllowInternalDefaultLogs();
  fig_note_initialize_category_with_default_work_cf();
  fig_note_initialize_category_with_default_work_cf();
  if (a1)
  {
    if (FigLayerSynchronizerGetTypeID_sRegisterLayerSynchronizerTypeOnce != -1)
    {
      FigLayerSynchronizerCreate_cold_1();
    }

    Instance = _CFRuntimeCreateInstance();
    if (Instance)
    {
      v3 = Instance;
      *(Instance + 88) = 1;
      v4 = FigReentrantMutexCreate();
      v3[3] = v4;
      if (v4)
      {
        result = 0;
        *a1 = v3;
      }

      else
      {
        CFRelease(v3);
        return 4294954935;
      }
    }

    else
    {
      FigLayerSynchronizerCreate_cold_2(&v6);
      return v6;
    }
  }

  else
  {
    FigLayerSynchronizerCreate_cold_3(&v7);
    return v7;
  }

  return result;
}

void figlayersync_disposeSetLayerTimingContext(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = a1[1];
  if (v3)
  {
    CFRelease(v3);
  }

  free(a1);
}

__CFString *figlayersync_copyDescriptionSetLayerTimingContext(void *a1)
{
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  CFStringAppendFormat(Mutable, 0, @"Set layer timing");
  v2 = FigCFCopyCompactDescription();
  CFStringAppendFormat(Mutable, 0, @"\nwith: %@", v2);
  if (v2)
  {
    CFRelease(v2);
  }

  return Mutable;
}

uint64_t figlayersync_setLayerArrays(uint64_t a1, const __CFArray *a2, const __CFArray *a3, char a4, uint64_t a5)
{
  if (a1)
  {
    v10 = objc_autoreleasePoolPush();
    FigSimpleMutexLock();
    if (*(a1 + 16))
    {
      Count = 0;
      v12 = 0;
      Mutable = 0;
      v14 = 0;
      v15 = 4294954934;
LABEL_82:
      FigSimpleMutexUnlock();
      if ((a4 & 2) != 0 && v14)
      {
        [MEMORY[0x1E6979518] begin];
        if (!pthread_main_np())
        {
          [MEMORY[0x1E6979518] activateBackground:1];
        }

        [MEMORY[0x1E6979518] setValue:*MEMORY[0x1E695E4D0] forKey:*MEMORY[0x1E697A020]];
        if (Count >= 1)
        {
          for (i = 0; i != Count; ++i)
          {
            if (fabs(v12[i]) != INFINITY)
            {
              ValueAtIndex = CFArrayGetValueAtIndex(v14, i);
              [ValueAtIndex duration];
              if (v48 == v12[i])
              {
                [ValueAtIndex setDuration:INFINITY];
              }
            }
          }
        }

        CFRelease(v14);
        [MEMORY[0x1E6979518] commit];
        if (!Mutable)
        {
          goto LABEL_99;
        }
      }

      else
      {
        if (Mutable && CFArrayGetCount(Mutable))
        {
          v61 = *MEMORY[0x1E6960C88];
          v62 = *(MEMORY[0x1E6960C88] + 16);
          FPSupport_AppendDeferredTransactionChangeForSettingDurationOnLayers(a5, &v61, Mutable);
        }

        FPSupport_AppendDeferredTransactionChangeToRelease(a5, v14);
        if (!Mutable)
        {
          goto LABEL_99;
        }
      }

      CFRelease(Mutable);
LABEL_99:
      free(v12);
      objc_autoreleasePoolPop(v10);
      return v15;
    }

    v60 = a4;
    v16 = *MEMORY[0x1E695E480];
    Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
    if (!Mutable)
    {
      Count = 0;
      v12 = 0;
      v14 = 0;
      goto LABEL_27;
    }

    v14 = *(a1 + 64);
    *(a1 + 64) = 0;
    if (v14)
    {
      Count = CFArrayGetCount(v14);
    }

    else
    {
      Count = 0;
    }

    v12 = *(a1 + 72);
    *(a1 + 72) = 0;
    *(a1 + 89) = 0;
    v17 = *(a1 + 40);
    if (v17)
    {
      *(a1 + 40) = 0;
      free(v17);
    }

    v18 = *(a1 + 48);
    if (v18)
    {
      *(a1 + 48) = 0;
      free(v18);
    }

    v19 = *(a1 + 56);
    if (v19)
    {
      *(a1 + 56) = 0;
      free(v19);
    }

    v20 = *(a1 + 80);
    if (v20)
    {
      *(a1 + 80) = 0;
      free(v20);
    }

    if (!(a2 | a3))
    {
      goto LABEL_80;
    }

    v57 = a5;
    if (a2)
    {
      v21 = CFArrayGetCount(a2);
      if (a3)
      {
LABEL_20:
        v22 = CFArrayGetCount(a3);
LABEL_23:
        if (!(v22 + v21))
        {
          v15 = 0;
          a5 = v57;
          goto LABEL_81;
        }

        size = v22 + v21;
        v23 = malloc_type_calloc(1uLL, v22 + v21, 0x100004077774924uLL);
        *(a1 + 80) = v23;
        a5 = v57;
        v52 = v23;
        if (!v23)
        {
LABEL_27:
          v15 = 4294954935;
LABEL_81:
          a4 = v60;
          goto LABEL_82;
        }

        if (!(a2 | a3))
        {
          *(a1 + 64) = 0;
          goto LABEL_27;
        }

        if (a2)
        {
          v24 = CFArrayGetCount(a2);
        }

        else
        {
          v24 = 0;
        }

        v56 = v24;
        if (a3)
        {
          v25 = CFArrayGetCount(a3);
          v24 = v56;
        }

        else
        {
          v25 = 0;
        }

        if (v25 + v24 == 1)
        {
          if (v24 < 1)
          {
            MutableCopy = CFArrayCreateMutableCopy(v16, 0, a3);
            *v52 = 0;
          }

          else
          {
            MutableCopy = CFArrayCreateMutableCopy(v16, 0, a2);
            *v52 = 1;
          }

          a4 = v60;
        }

        else
        {
          v51 = Mutable;
          v27 = MEMORY[0x1E695E9C0];
          capacity = v25 + v24;
          theArray = CFArrayCreateMutable(v16, v25 + v24, MEMORY[0x1E695E9C0]);
          v28 = CFArrayCreateMutable(v16, capacity, v27);
          if (capacity >= 1 && theArray)
          {
            v29 = v28;
            v50 = v10;
            v30 = 0;
            v54 = *MEMORY[0x1E695E4C0];
            v53 = *MEMORY[0x1E695E4D0];
            do
            {
              LayerFrom2Arrays = figlayersync_getLayerFrom2Arrays(a2, a3, v30);
              v32 = 0;
              if (v30)
              {
                do
                {
                  v33 = figlayersync_getLayerFrom2Arrays(a2, a3, v32);
                  while (1)
                  {
                    v33 = [v33 superlayer];
                    if (!v33)
                    {
                      break;
                    }

                    if (v33 == LayerFrom2Arrays)
                    {
                      goto LABEL_48;
                    }
                  }

                  ++v32;
                }

                while (v32 != v30);
                v32 = v30;
              }

LABEL_48:
              CFArrayInsertValueAtIndex(theArray, v32, LayerFrom2Arrays);
              if (v30 >= v56)
              {
                v34 = v54;
              }

              else
              {
                v34 = v53;
              }

              CFArrayInsertValueAtIndex(v29, v32, v34);
              ++v30;
            }

            while (v30 != capacity);
            v35 = 0;
            v10 = v50;
            do
            {
              v36 = v54 == CFArrayGetValueAtIndex(v29, v35);
              v28 = v29;
              v37 = !v36;
              v52[v35++] = v37;
            }

            while (capacity != v35);
          }

          if (v28)
          {
            CFRelease(v28);
          }

          a5 = v57;
          a4 = v60;
          MutableCopy = theArray;
          Mutable = v51;
        }

        *(a1 + 64) = MutableCopy;
        if (!MutableCopy)
        {
          v15 = 4294954935;
          goto LABEL_82;
        }

        v38 = malloc_type_calloc(8uLL, size, 0x100004000313F17uLL);
        *(a1 + 40) = v38;
        if (!v38)
        {
          goto LABEL_27;
        }

        v39 = malloc_type_calloc(8uLL, size, 0x100004000313F17uLL);
        *(a1 + 48) = v39;
        if (!v39)
        {
          goto LABEL_27;
        }

        v40 = malloc_type_calloc(8uLL, size, 0x100004000313F17uLL);
        *(a1 + 56) = v40;
        if (!v40)
        {
          goto LABEL_27;
        }

        v41 = malloc_type_calloc(8uLL, size, 0x100004000313F17uLL);
        *(a1 + 72) = v41;
        if (!v41)
        {
          goto LABEL_27;
        }

        a4 = v60;
        if (size >= 1)
        {
          memset_pattern16(v41, &unk_196E73030, 8 * size);
        }

        if (Count < 1)
        {
          v15 = 0;
          goto LABEL_82;
        }

        for (j = 0; j != Count; ++j)
        {
          if (fabs(v12[j]) != INFINITY)
          {
            v43 = v10;
            v44 = CFArrayGetValueAtIndex(v14, j);
            if (size < 1)
            {
LABEL_76:
              CFArrayAppendValue(Mutable, v44);
            }

            else
            {
              v45 = 0;
              while (v44 != CFArrayGetValueAtIndex(*(a1 + 64), v45))
              {
                if (size == ++v45)
                {
                  goto LABEL_76;
                }
              }

              *(*(a1 + 72) + 8 * v45) = v12[j];
              v12[j] = INFINITY;
            }

            v10 = v43;
            a5 = v57;
          }
        }

LABEL_80:
        v15 = 0;
        goto LABEL_81;
      }
    }

    else
    {
      v21 = 0;
      if (a3)
      {
        goto LABEL_20;
      }
    }

    v22 = 0;
    goto LABEL_23;
  }

  return 4294954936;
}

uint64_t FigLayerSynchronizerSetConfigurationWithDeferredTransaction(_BYTE *cf, void *a2, uint64_t a3)
{
  v12 = 0;
  cfa = 0;
  if (!cf)
  {
    FigLayerSynchronizerSetConfigurationWithDeferredTransaction_cold_2(&v14);
LABEL_14:
    v10 = v14;
    goto LABEL_9;
  }

  if (cf[16])
  {
    FigLayerSynchronizerSetConfigurationWithDeferredTransaction_cold_1(&v14);
    goto LABEL_14;
  }

  if (!a2)
  {
    v9 = 0;
    v8 = 0;
LABEL_7:
    v10 = figlayersync_setLayerArrays(cf, v8, v9, 0, a3);
    v8 = cfa;
    if (!cfa)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  v6 = CFGetAllocator(cf);
  v7 = FigLayerSynchronizerConfigurationCopyLayers(a2, v6, &cfa, &v12);
  v8 = cfa;
  if (!v7)
  {
    v9 = v12;
    goto LABEL_7;
  }

  v10 = v7;
  if (cfa)
  {
LABEL_8:
    CFRelease(v8);
  }

LABEL_9:
  if (v12)
  {
    CFRelease(v12);
  }

  return v10;
}

uint64_t FigLayerSynchronizerSetCompensateForDisplayLatency(uint64_t a1, char a2)
{
  v6 = *MEMORY[0x1E69E9840];
  if (dword_1ED4CBD50)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  *(a1 + 88) = a2;
  *(a1 + 89) = 0;
  return 0;
}

uint64_t FigLayerSynchronizerSetLayerArray(uint64_t a1, const __CFArray *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  if (dword_1ED4CBD50)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  return figlayersync_setLayerArrays(a1, 0, a2, 2, 0);
}

uint64_t FigLayerSynchronizerSetLayerArrays(uint64_t a1, const __CFArray *a2, const __CFArray *a3)
{
  v8 = *MEMORY[0x1E69E9840];
  if (dword_1ED4CBD50)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  return figlayersync_setLayerArrays(a1, a2, a3, 2, 0);
}

uint64_t figlayersync_synchronizeToMoment(uint64_t a1, uint64_t a2, char a3)
{
  if (!a1)
  {
    return 4294954936;
  }

  v6 = *(a1 + 24);
  v7 = objc_autoreleasePoolPush();
  FigSimpleMutexLock();
  if (*(a1 + 16))
  {
    if (*(a1 + 24) == v6)
    {
      FigSimpleMutexUnlock();
    }

    v8 = 4294954934;
  }

  else
  {
    if ((a3 & 2) != 0)
    {
      [MEMORY[0x1E6979518] begin];
      if (!pthread_main_np())
      {
        [MEMORY[0x1E6979518] activateBackground:1];
      }

      figlayersync_setLayerTimingToMoment(a1, a2);
      FigSimpleMutexUnlock();
      [MEMORY[0x1E6979518] commit];
      [MEMORY[0x1E6979518] flush];
    }

    else
    {
      figlayersync_setLayerTimingToMoment(a1, a2);
      FigSimpleMutexUnlock();
    }

    v8 = 0;
  }

  objc_autoreleasePoolPop(v7);
  return v8;
}

uint64_t FigLayerSynchronizerDestroy(const void *a1)
{
  if (a1)
  {
    CFRelease(a1);
  }

  return 0;
}

void *layerSynchronizerConfiguration_init(void *result)
{
  result[2] = 0;
  result[3] = 0;
  result[4] = 0;
  return result;
}

void layerSynchronizerConfiguration_finalize(void *a1)
{
  FigSimpleMutexDestroy();
  v2 = a1[4];
  if (v2)
  {
    CFRelease(v2);
    a1[4] = 0;
  }

  v3 = a1[3];
  if (v3)
  {
    CFRelease(v3);
    a1[3] = 0;
  }
}

double LayerSynchronizer_init(_OWORD *a1)
{
  result = 0.0;
  a1[4] = 0u;
  a1[5] = 0u;
  a1[2] = 0u;
  a1[3] = 0u;
  a1[1] = 0u;
  return result;
}

void LayerSynchronizer_finalize(uint64_t a1)
{
  if (a1)
  {
    v2 = objc_autoreleasePoolPush();
    FigSimpleMutexLock();
    *(a1 + 16) = 1;
    FigSimpleMutexUnlock();
    free(*(a1 + 40));
    free(*(a1 + 48));
    free(*(a1 + 56));
    free(*(a1 + 72));
    free(*(a1 + 80));
    if (*(a1 + 64))
    {
      [MEMORY[0x1E6979518] begin];
      if (!pthread_main_np())
      {
        [MEMORY[0x1E6979518] activateBackground:1];
      }

      v3 = *(a1 + 64);
      if (v3)
      {
        CFRelease(v3);
      }

      [MEMORY[0x1E6979518] commit];
    }

    FigSimpleMutexDestroy();
    *(a1 + 24) = 0;

    objc_autoreleasePoolPop(v2);
  }
}

__CFString *LayerSynchronizer_CopyDescription(const void *a1)
{
  v2 = CFGetAllocator(a1);
  Mutable = CFStringCreateMutable(v2, 0);
  CFStringAppendFormat(Mutable, 0, @"<LayerSynchronizer %p>", a1);
  return Mutable;
}

const void *figlayersync_getLayerFrom2Arrays(CFArrayRef theArray, const __CFArray *a2, CFIndex a3)
{
  if (!theArray)
  {
    Count = 0;
    if (a2)
    {
      goto LABEL_3;
    }

LABEL_5:
    v7 = 0;
    goto LABEL_6;
  }

  Count = CFArrayGetCount(theArray);
  if (!a2)
  {
    goto LABEL_5;
  }

LABEL_3:
  v7 = CFArrayGetCount(a2);
LABEL_6:
  if (!(v7 + Count) || v7 + Count <= a3)
  {
    return 0;
  }

  v8 = a3 - Count;
  if (a3 >= Count)
  {
    v9 = a2;
  }

  else
  {
    v9 = theArray;
    v8 = a3;
  }

  return CFArrayGetValueAtIndex(v9, v8);
}

void figlayersync_setLayerTimingToMoment(uint64_t a1, uint64_t a2)
{
  v103 = *MEMORY[0x1E69E9840];
  memset(&v81, 0, sizeof(v81));
  if (!*(a1 + 64))
  {
    goto LABEL_125;
  }

  v3 = a2;
  if (!*(a1 + 89) || (*(a2 + 4) & 1) != 0)
  {
    HIDWORD(v74) = 0;
    *(a1 + 32) = *(a2 + 8);
    v4 = 1;
  }

  else
  {
    v4 = 0;
    HIDWORD(v74) = 1;
  }

  memset(&time, 0, sizeof(time));
  HostTimeClock = CMClockGetHostTimeClock();
  CMClockGetTime(&time, HostTimeClock);
  memset(&v92, 0, sizeof(v92));
  *lhs = time;
  rhs = *(v3 + 40);
  CMTimeSubtract(&v92, lhs, &rhs);
  memset(lhs, 0, 24);
  v6 = *(v3 + 8) * *(v3 + 64);
  rhs = v92;
  CMTimeMultiplyByFloat64(lhs, &rhs, v6);
  rhs = *(v3 + 16);
  v80 = *lhs;
  CMTimeAdd(&v81, &rhs, &v80);
  v7 = MEMORY[0x1E695FF58];
  v8 = *MEMORY[0x1E695FF58];
  if (v4 && v8 == 1)
  {
    kdebug_trace();
    v8 = *v7;
  }

  if ((*(v3 + 4) & 2) != 0 && v8 == 1)
  {
    time = *(v3 + 16);
    CMTimeGetSeconds(&time);
    kdebug_trace();
  }

  Count = CFArrayGetCount(*(a1 + 64));
  v9 = BYTE4(v74);
  if (Count >= 1)
  {
    v10 = 0;
    v11 = 0;
    v75 = sel_displayId;
    HIDWORD(v76) = v4;
    v73 = *&v3;
    while (1)
    {
      time = v81;
      Seconds = CMTimeGetSeconds(&time);
      v13 = *(*(a1 + 40) + 8 * v10);
      v14 = *(*(a1 + 48) + 8 * v10);
      ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 64), v10);
      v79 = *(*(a1 + 80) + v10);
      [ValueAtIndex convertTime:0 fromLayer:CACurrentMediaTime()];
      v17 = v16;
      if (objc_opt_respondsToSelector())
      {
        [ValueAtIndex setInheritsTiming:0];
        v18 = CACurrentMediaTime();
        [ValueAtIndex beginTime];
        v20 = v18 - v19;
        [ValueAtIndex speed];
        v22 = v21;
        [ValueAtIndex timeOffset];
        v17 = v23 + v20 * v22;
      }

      else
      {
        v24 = [ValueAtIndex superlayer];
        v25 = CACurrentMediaTime();
        v18 = v25;
        if (v24)
        {
          [v24 convertTime:0 fromLayer:v25];
          v18 = v26;
        }
      }

      if (!v4)
      {
        goto LABEL_47;
      }

      [ValueAtIndex duration];
      v28 = v27;
      if ((objc_opt_respondsToSelector() & 1) == 0 || (v29 = 1.0, [ValueAtIndex inheritsTiming]))
      {
        v30 = [ValueAtIndex superlayer];
        if ((objc_opt_respondsToSelector() & 1) == 0 || (v29 = 1.0, [v30 inheritsTiming]))
        {
          v31 = [v30 superlayer];
          if (v31)
          {
            v32 = v31;
            v14 = 1.0;
            v29 = 1.0;
            while (1)
            {
              [v32 speed];
              v29 = v29 * v33;
              if (v29 == 0.0)
              {
                break;
              }

              if ((objc_opt_respondsToSelector() & 1) == 0 || [v32 inheritsTiming])
              {
                v32 = [v32 superlayer];
                if (v32)
                {
                  continue;
                }
              }

              goto LABEL_31;
            }

            v13 = 1.0;
LABEL_40:
            v35 = *(a1 + 72);
            if (fabs(v28) == INFINITY || v28 != *(v35 + 8 * v10))
            {
              goto LABEL_47;
            }

            *(v35 + 8 * v10) = 0x7FF0000000000000;
            v34 = INFINITY;
            goto LABEL_46;
          }

          v29 = 1.0;
        }
      }

LABEL_31:
      v13 = *(v3 + 8) / v29;
      if (v13 == 0.0)
      {
        v14 = 1.0;
      }

      else
      {
        v14 = 1.0 / v13;
      }

      if (v13 >= 0.0)
      {
        goto LABEL_40;
      }

      if (fabs(v28) != INFINITY)
      {
        goto LABEL_47;
      }

      v34 = v17 + 0.1;
      *(*(a1 + 72) + 8 * v10) = v17 + 0.1;
      if (*(*(a1 + 80) + v10))
      {
        v34 = INFINITY;
      }

LABEL_46:
      [ValueAtIndex setDuration:v34];
LABEL_47:
      if (!*(a1 + 89) || (*(v3 + 4) & 3) != 0 || vabdd_f64(Seconds + v13 * *(*(a1 + 56) + 8 * v10), v17) >= 0.005)
      {
        if (*(a1 + 88))
        {
          v78 = v11;
          v37 = [ValueAtIndex context];
          v38 = 0.0;
          if (v37 && (objc_opt_respondsToSelector() & 1) != 0)
          {
            v39 = [v37 displayId];
            if (v39)
            {
              v84 = 0u;
              v85 = 0u;
              memset(lhs, 0, sizeof(lhs));
              v40 = [MEMORY[0x1E6979328] displays];
              v41 = [v40 countByEnumeratingWithState:lhs objects:&time count:16];
              if (v41)
              {
                v42 = v41;
                v43 = **&lhs[16];
LABEL_56:
                v44 = 0;
                while (1)
                {
                  if (**&lhs[16] != v43)
                  {
                    objc_enumerationMutation(v40);
                  }

                  v45 = *(*&lhs[8] + 8 * v44);
                  if ([v45 displayId] == v39)
                  {
                    break;
                  }

                  if (v42 == ++v44)
                  {
                    v42 = [v40 countByEnumeratingWithState:lhs objects:&time count:16];
                    if (v42)
                    {
                      goto LABEL_56;
                    }

                    goto LABEL_102;
                  }
                }

                [v45 latency];
                if (v63 < 0.0)
                {
LABEL_102:
                  *&v3 = v73;
                  v9 = BYTE4(v74);
                  goto LABEL_64;
                }

                *&v3 = v73;
                v9 = BYTE4(v74);
                if (v63 <= 1.0)
                {
                  v38 = v63;
                }
              }
            }
          }

          else
          {
            v39 = 0;
          }

LABEL_64:
          if (dword_1ED4CBD50)
          {
            LODWORD(v80.value) = 0;
            type = OS_LOG_TYPE_DEFAULT;
            os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            value = v80.value;
            v48 = type;
            if (os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, type))
            {
              v49 = value;
            }

            else
            {
              v49 = value & 0xFFFFFFFE;
            }

            if (v49)
            {
              LODWORD(rhs.value) = 136316162;
              *(&rhs.value + 4) = "figlayersync_getLayerDisplayLatency";
              LOWORD(rhs.flags) = 2048;
              *(&rhs.flags + 2) = ValueAtIndex;
              HIWORD(rhs.epoch) = 2048;
              v87 = v37;
              v88 = 1024;
              v89 = v39;
              v90 = 2048;
              v91 = v38;
              LODWORD(v71) = 48;
              _os_log_send_and_compose_impl(v49, 0, &v92, 128, &dword_1962D5000, os_log_and_send_and_compose_flags_and_os_log_type, v48, "<<<< LayerSync >>>> %s: layer %p, context %p, displayID %u: latency %1.3f", &rhs, v71, v72, LODWORD(v73), v74);
            }

            fig_log_call_emit_and_clean_up_after_send_and_compose();
          }

          v4 = HIDWORD(v76);
          v11 = v78;
        }

        else
        {
          v38 = 0.0;
        }

        if (v79)
        {
          if (dword_1ED4CBD50)
          {
            *lhs = 0;
            LOBYTE(rhs.value) = 0;
            v50 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            v51 = *lhs;
            value_low = LOBYTE(rhs.value);
            if (os_log_type_enabled(v50, rhs.value))
            {
              v53 = v51;
            }

            else
            {
              v53 = v51 & 0xFFFFFFFE;
            }

            if (v53)
            {
              LODWORD(v92.value) = 136315906;
              *(&v92.value + 4) = "figlayersync_setLayerTiming";
              LOWORD(v92.flags) = 2048;
              *(&v92.flags + 2) = ValueAtIndex;
              HIWORD(v92.epoch) = 2048;
              v93 = v38;
              v94 = 2048;
              v95 = v18;
              LODWORD(v71) = 42;
              _os_log_send_and_compose_impl(v53, 0, &time, 128, &dword_1962D5000, v50, value_low, "<<<< LayerSync >>>> %s: (layer %p) only set layer timeOffset: %f at hostTime %f", &v92, v71, *&v72, v73);
            }

            fig_log_call_emit_and_clean_up_after_send_and_compose();
          }

          [ValueAtIndex setTimeOffset:v38];
        }

        else
        {
          if (v13 == 0.0)
          {
            [ValueAtIndex duration];
            if (v54 <= Seconds)
            {
              Seconds = v54 + -0.000001;
            }

            else if (Seconds < 0.0)
            {
              Seconds = 0.0;
            }

            if (dword_1ED4CBD50)
            {
              *lhs = 0;
              LOBYTE(rhs.value) = 0;
              v59 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
              v60 = *lhs;
              v61 = LOBYTE(rhs.value);
              if (os_log_type_enabled(v59, rhs.value))
              {
                v62 = v60;
              }

              else
              {
                v62 = v60 & 0xFFFFFFFE;
              }

              if (v62)
              {
                LODWORD(v92.value) = 136315906;
                *(&v92.value + 4) = "figlayersync_setLayerTiming";
                LOWORD(v92.flags) = 2048;
                *(&v92.flags + 2) = ValueAtIndex;
                HIWORD(v92.epoch) = 2048;
                v93 = Seconds;
                v94 = 2048;
                v95 = v18;
                LODWORD(v71) = 42;
                _os_log_send_and_compose_impl(v62, 0, &time, 128, &dword_1962D5000, v59, v61, "<<<< LayerSync >>>> %s: (layer %p) pause; set layer timeOffset: %f at hostTime %f", &v92, v71, *&v72, v73);
              }

              fig_log_call_emit_and_clean_up_after_send_and_compose();
            }
          }

          else if (v13 <= 0.0)
          {
            [ValueAtIndex duration];
            v65 = v64;
            [ValueAtIndex setBeginTime:v18 - (Seconds - v64) * v14 - v38];
            Seconds = v65;
          }

          else
          {
            if (dword_1ED4CBD50)
            {
              *lhs = 0;
              LOBYTE(rhs.value) = 0;
              v55 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
              v56 = *lhs;
              v57 = LOBYTE(rhs.value);
              if (os_log_type_enabled(v55, rhs.value))
              {
                v58 = v56;
              }

              else
              {
                v58 = v56 & 0xFFFFFFFE;
              }

              if (v58)
              {
                LODWORD(v92.value) = 136316674;
                *(&v92.value + 4) = "figlayersync_setLayerTiming";
                LOWORD(v92.flags) = 2048;
                *(&v92.flags + 2) = ValueAtIndex;
                HIWORD(v92.epoch) = 2048;
                v93 = v18 - Seconds * v14 - v38;
                v94 = 2048;
                v95 = v18;
                v96 = 2048;
                v97 = Seconds;
                v98 = 2048;
                v99 = v13;
                v100 = 2048;
                v101 = v38;
                LODWORD(v71) = 72;
                _os_log_send_and_compose_impl(v58, 0, &time, 128, &dword_1962D5000, v55, v57, "<<<< LayerSync >>>> %s: (layer %p) forward; set layer begin time: %f (%f - (%f / %f) - latency(%f))", &v92, v71, *&v72, v73, v74, *&v75, v76);
              }

              fig_log_call_emit_and_clean_up_after_send_and_compose();
            }

            [ValueAtIndex setBeginTime:v18 - Seconds * v14 - v38];
            Seconds = 0.0;
          }

          [ValueAtIndex setTimeOffset:Seconds];
          if ((v9 & 1) == 0)
          {
            if (dword_1ED4CBD50)
            {
              *lhs = 0;
              LOBYTE(rhs.value) = 0;
              v67 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
              v68 = *lhs;
              v69 = LOBYTE(rhs.value);
              if (os_log_type_enabled(v67, rhs.value))
              {
                v70 = v68;
              }

              else
              {
                v70 = v68 & 0xFFFFFFFE;
              }

              if (v70)
              {
                LODWORD(v92.value) = 136315650;
                *(&v92.value + 4) = "figlayersync_setLayerTiming";
                LOWORD(v92.flags) = 2048;
                *(&v92.flags + 2) = ValueAtIndex;
                HIWORD(v92.epoch) = 2048;
                v93 = v13;
                LODWORD(v71) = 32;
                _os_log_send_and_compose_impl(v70, 0, &time, 128, &dword_1962D5000, v67, v69, "<<<< LayerSync >>>> %s: (layer %p) set layer speed: %f", &v92, v71, *&v72);
              }

              fig_log_call_emit_and_clean_up_after_send_and_compose();
            }

            *&v66 = v13;
            [ValueAtIndex setSpeed:v66];
          }
        }

        *(*(a1 + 56) + 8 * v10) = v38;
        ++v11;
        if (v4)
        {
          *(*(a1 + 40) + 8 * v10) = v13;
          *(*(a1 + 48) + 8 * v10) = v14;
        }
      }

      if (++v10 == Count)
      {
        goto LABEL_124;
      }
    }
  }

  v11 = 0;
LABEL_124:
  if (v11 == Count)
  {
LABEL_125:
    *(a1 + 89) = 1;
  }
}

void *OUTLINED_FUNCTION_3_15()
{

  return malloc_type_calloc(1uLL, 0x60uLL, 0x102004037358F12uLL);
}

uint64_t FigVTTRegionBlockCreate(uint64_t a1, CFTypeRef *a2)
{
  if (a2)
  {
    FigVTTNodeGetClassID();
    v3 = CMDerivedObjectCreate();
    if (!v3)
    {
      DerivedStorage = CMBaseObjectGetDerivedStorage();
      v3 = FigVTTInitializeNodeBaseStorage(DerivedStorage);
      if (!v3)
      {
        *a2 = 0;
      }
    }
  }

  else
  {
    FigVTTRegionBlockCreate_cold_1(&v6);
    return v6;
  }

  return v3;
}

void figVTTRegionBlock_Finalize(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();

  FigVTTReleaseNodeBaseStorage(DerivedStorage);
}

CFStringRef figVTTRegionBlock_CopyDebugDesc(uint64_t a1)
{
  CMBaseObjectGetDerivedStorage();
  v1 = FigCFCopyCompactDescription();
  v2 = CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"regionblock: %@", v1);
  if (v1)
  {
    CFRelease(v1);
  }

  return v2;
}

uint64_t figVTTRegionBlock_GetNodeType(uint64_t a1, _DWORD *a2)
{
  if (a2)
  {
    result = 0;
    *a2 = 4;
  }

  else
  {
    v6 = v2;
    v7 = v3;
    figVTTRegionBlock_GetNodeType_cold_1(&v5);
    return v5;
  }

  return result;
}

uint64_t figVTTRegionBlock_copyNodeDocumentSerialization(const void *a1, CFStringRef *a2)
{
  v4 = CFGetAllocator(a1);
  v23 = 0;
  if (!a2)
  {
    figVTTRegionBlock_copyNodeDocumentSerialization_cold_2(&v21);
    return v21;
  }

  v5 = v4;
  *a2 = 0;
  Mutable = CFStringCreateMutable(v4, 0);
  if (!Mutable)
  {
    figVTTRegionBlock_copyNodeDocumentSerialization_cold_1(&v21);
    return v21;
  }

  v7 = Mutable;
  v8 = FigVTTNodeCopyAttributes(a1, &v23);
  if (!v8 && FigCFDictionaryGetCount() >= 1)
  {
    Value = CFDictionaryGetValue(v23, @"id");
    if (Value)
    {
      CFStringAppendFormat(v7, 0, @"id:%@", Value);
      CFStringAppendFormat(v7, 0, @"\n");
      v10 = 1;
    }

    else
    {
      v10 = 0;
    }

    v11 = CFDictionaryGetValue(v23, @"lines");
    if (v11)
    {
      CFStringAppendFormat(v7, 0, @"lines:%@", v11);
      CFStringAppendFormat(v7, 0, @"\n");
      ++v10;
    }

    if (CFDictionaryGetValue(v23, @"width"))
    {
      v12 = FigGeometryDimensionMakeFromDictionary();
      v14 = v13;
      CFStringAppendFormat(v7, 0, @"%@:", @"width");
      FigVTTStringifyFigGeometryDimensionAndAppend(v7, v12, v14);
      CFStringAppendFormat(v7, 0, @"\n");
      ++v10;
    }

    if (CFDictionaryGetValue(v23, @"regionanchor"))
    {
      v21 = 0u;
      v22 = 0u;
      FigGeometryPointMakeFromDictionary();
      CFStringAppendFormat(v7, 0, @"%@:", @"regionanchor");
      v19 = 0u;
      v20 = 0u;
      FigVTTStringifyFigGeometryPointAndAppend(v7, &v19);
      CFStringAppendFormat(v7, 0, @"\n");
      ++v10;
    }

    if (CFDictionaryGetValue(v23, @"viewportanchor"))
    {
      v21 = 0u;
      v22 = 0u;
      FigGeometryPointMakeFromDictionary();
      CFStringAppendFormat(v7, 0, @"%@:", @"viewportanchor");
      v19 = v21;
      v20 = v22;
      FigVTTStringifyFigGeometryPointAndAppend(v7, &v19);
      CFStringAppendFormat(v7, 0, @"\n");
      v10 = 1;
    }

    v15 = CFDictionaryGetValue(v23, @"scroll");
    if (v15)
    {
      CFStringAppendFormat(v7, 0, @"scroll:%@", v15);
      CFStringAppendFormat(v7, 0, @"\n");
    }

    else if (!v10)
    {
      v16 = CFStringCreateWithFormat(v5, 0, &stru_1F0B1AFB8, v18);
      goto LABEL_20;
    }

    v16 = CFStringCreateWithFormat(v5, 0, @"%@\n%@\n", @"REGION", v7);
LABEL_20:
    *a2 = v16;
  }

  CFRelease(v7);
  if (v23)
  {
    CFRelease(v23);
  }

  return v8;
}

uint64_t FigCLCPCaptionGroupConverterToSampleBufferCreate(_OWORD *a1, const void *a2, CFTypeRef *a3)
{
  v22 = 0;
  if (!a1)
  {
    FigCLCPCaptionGroupConverterToSampleBufferCreate_cold_4(&values);
LABEL_31:
    v15 = values;
    goto LABEL_33;
  }

  if (!a3)
  {
    FigCLCPCaptionGroupConverterToSampleBufferCreate_cold_3(&values);
    goto LABEL_31;
  }

  FigCaptionGroupConverterToSampleBufferGetClassID();
  v6 = CMDerivedObjectCreate();
  if (v6)
  {
    v15 = v6;
    FigCLCPCaptionGroupConverterToSampleBufferCreate_cold_1();
    goto LABEL_33;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a2)
  {
    v8 = CFRetain(a2);
  }

  else
  {
    v8 = 0;
  }

  *DerivedStorage = v8;
  *(DerivedStorage + 144) = *a1;
  ClosedCaptionChannel = FigCEA608DataGeneratorCreate(clcpcgctsbCEA608DataGeneratorCallback, v22, a2, (DerivedStorage + 8));
  if (ClosedCaptionChannel || (v21 = 0, ClosedCaptionChannel = FigCEA608DataGeneratorGetClosedCaptionChannel(*(DerivedStorage + 8), &v21), ClosedCaptionChannel))
  {
    v15 = ClosedCaptionChannel;
    goto LABEL_33;
  }

  v10 = 0;
  v11 = v21;
  cf = 0;
  values = 0;
  formatDescriptionOut = 0;
  if (v21 != 1)
  {
    Mutable = CFDataCreateMutable(a2, 8);
    values = Mutable;
    if (!Mutable)
    {
      FigCLCPCaptionGroupConverterToSampleBufferCreate_cold_2(&keys);
      v15 = keys;
      goto LABEL_18;
    }

    v13 = Mutable;
    *bytes = 942683748;
    CFDataAppendBytes(Mutable, bytes, 4);
    *v24 = bswap32(v11);
    CFDataAppendBytes(v13, v24, 4);
    keys = @"cccc";
    cf = CFDictionaryCreate(a2, &keys, &values, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    if (!cf || (v14 = CFDictionaryCreate(a2, MEMORY[0x1E69600A0], &cf, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8])) == 0)
    {
      fig_log_get_emitter();
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v19, v20, v22);
      v15 = v18;
      goto LABEL_18;
    }

    v10 = v14;
  }

  v15 = CMFormatDescriptionCreate(a2, 0x636C6370u, 0x63363038u, v10, &formatDescriptionOut);
  if (!v15)
  {
    *(DerivedStorage + 24) = formatDescriptionOut;
  }

  if (v10)
  {
    CFRelease(v10);
  }

LABEL_18:
  if (cf)
  {
    CFRelease(cf);
  }

  if (values)
  {
    CFRelease(values);
  }

  if (!v15)
  {
    if (v21 - 3 >= 2)
    {
      v16 = 1667522932;
    }

    else
    {
      v16 = 1667527730;
    }

    *(DerivedStorage + 20) = v16;
    *a3 = v22;
    return v15;
  }

LABEL_33:
  if (v22)
  {
    CFRelease(v22);
  }

  return v15;
}

uint64_t FigCLCPCaptionConversionValidatorCreate(_OWORD *a1, uint64_t a2, const void *a3, CFTypeRef *a4)
{
  if (!a1)
  {
    FigCLCPCaptionConversionValidatorCreate_cold_3(&v13);
    return v13;
  }

  if (!a4)
  {
    FigCLCPCaptionConversionValidatorCreate_cold_2(&v13);
    return v13;
  }

  FigCaptionConversionValidatorGetClassID();
  v7 = CMDerivedObjectCreate();
  if (v7)
  {
    ShouldAdjustOverlappedDataTime = v7;
    FigCLCPCaptionConversionValidatorCreate_cold_1();
  }

  else
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    if (a3)
    {
      v9 = CFRetain(a3);
    }

    else
    {
      v9 = 0;
    }

    *DerivedStorage = v9;
    *(DerivedStorage + 104) = *a1;
    v10 = FigCEA608DataGeneratorCreate(clcpccvCEA608DataGeneratorCallback, 0, a3, (DerivedStorage + 8));
    if (v10)
    {
      return v10;
    }

    else
    {
      ShouldAdjustOverlappedDataTime = FigCEA608DataGeneratorSetShouldAdjustOverlappedDataTime(*(DerivedStorage + 8), 0);
      if (!ShouldAdjustOverlappedDataTime)
      {
        *a4 = 0;
      }
    }
  }

  return ShouldAdjustOverlappedDataTime;
}

void clcpcgctsb_Finalize(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigCEA608DataGeneratorRelease(*(DerivedStorage + 8));
  v2 = *(DerivedStorage + 32);
  if (v2)
  {
    CFRelease(v2);
    *(DerivedStorage + 32) = 0;
  }

  v3 = *(DerivedStorage + 24);
  if (v3)
  {
    CFRelease(v3);
    *(DerivedStorage + 24) = 0;
  }

  v4 = *(DerivedStorage + 88);
  if (v4)
  {
    CFRelease(v4);
    *(DerivedStorage + 88) = 0;
  }

  if (*DerivedStorage)
  {
    CFRelease(*DerivedStorage);
    *DerivedStorage = 0;
  }
}

__CFString *clcpcgctsb_CopyDebugDescription(uint64_t a1)
{
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  CFStringAppendFormat(Mutable, 0, @"<FigCLCPCaptionGroupConverterToSampleBufferf %p>", a1);
  return Mutable;
}

uint64_t clcpcgctsb_CopyProperty(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
    if (a4)
    {
      return 4294954512;
    }

    v7 = 708;
  }

  else
  {
    v7 = 707;
  }

  v9 = v4;
  v10 = v5;
  clcpcgctsb_CopyProperty_cold_1(v7, &v8);
  return v8;
}

uint64_t clcpcgctsb_SetProperty(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    return 4294954512;
  }

  v6 = v2;
  v7 = v3;
  clcpcgctsb_SetProperty_cold_1(&v5);
  return v5;
}

void clcpcgctsb_AddCaptionGroup(uint64_t a1, uint64_t a2, uint64_t a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a2)
  {
    if ((*(a3 + 12) & 1) == 0 || (*(a3 + 36) & 1) == 0 || *(a3 + 40) || (*(a3 + 24) & 0x8000000000000000) != 0)
    {
      clcpcgctsb_AddCaptionGroup_cold_2(&time1);
    }

    else
    {
      v7 = DerivedStorage;
      if (*(DerivedStorage + 16) == 2)
      {
        clcpcgctsb_AddCaptionGroup_cold_1(&time1);
      }

      else
      {
        v22 = v3;
        SliceCount = FigCaptionGroupGetSliceCount();
        if (SliceCount >= 1)
        {
          v9 = SliceCount;
          v10 = 0;
          v23 = *MEMORY[0x1E6960CC0];
          v11 = MEMORY[0x1E6960CA8];
          v12 = MEMORY[0x1E695E9C0];
          v13 = *(MEMORY[0x1E6960CC0] + 16);
          do
          {
            v29 = 0uLL;
            v30 = 0;
            FigCaptionGroupGetDurationBeforeSlice();
            *&time1.start.value = v29;
            time1.start.epoch = v30;
            *&time2.start.value = v23;
            time2.start.epoch = v13;
            if (!CMTimeCompare(&time1.start, &time2.start))
            {
              v27 = 0uLL;
              v28 = 0;
              FigCaptionGroupGetDurationAfterSlice();
              memset(&v26, 0, sizeof(v26));
              *&time1.start.value = *(a3 + 24);
              time1.start.epoch = *(a3 + 40);
              *&time2.start.value = v27;
              time2.start.epoch = v28;
              CMTimeAdd(&v26, &time1.start, &time2.start);
              memset(&v25, 0, sizeof(v25));
              *&time1.start.value = *a3;
              time1.start.epoch = *(a3 + 16);
              time2.start = v26;
              CMTimeRangeMake(&v25, &time1.start, &time2.start);
              CaptionData = FigCaptionGroupGetCaptionData();
              v24 = v25;
              v15 = *(v7 + 56);
              *&time1.start.value = *(v7 + 40);
              *&time1.start.epoch = v15;
              *&time1.duration.timescale = *(v7 + 72);
              time2 = v25;
              if (CMTimeRangeEqual(&time1, &time2))
              {
                CFArrayAppendValue(*(v7 + 32), CaptionData);
              }

              else
              {
                v16 = *(v7 + 56);
                *&time2.start.value = *(v7 + 40);
                *&time2.start.epoch = v16;
                *&time2.duration.timescale = *(v7 + 72);
                memset(&time1, 0, sizeof(time1));
                otherRange = v24;
                CMTimeRangeGetIntersection(&time1, &time2, &otherRange);
                v17 = v11[1];
                *&time2.start.value = *v11;
                *&time2.start.epoch = v17;
                *&time2.duration.timescale = v11[2];
                otherRange = time1;
                if (!CMTimeRangeEqual(&time2, &otherRange))
                {
                  *&otherRange.start.value = *(v7 + 64);
                  otherRange.start.epoch = *(v7 + 80);
                  rhs = time1.duration;
                  CMTimeSubtract(&time2.start, &otherRange.start, &rhs);
                  *(v7 + 64) = *&time2.start.value;
                  *(v7 + 80) = time2.start.epoch;
                }

                if (clcpcgctsbAddCaptionDataWithSameTimeRange(v7))
                {
                  return;
                }

                v18 = *(v7 + 32);
                if (v18)
                {
                  CFRelease(v18);
                  *(v7 + 32) = 0;
                }

                Mutable = CFArrayCreateMutable(*v7, 0, v12);
                *(v7 + 32) = Mutable;
                if (Mutable)
                {
                  CFArrayAppendValue(Mutable, CaptionData);
                  *(v7 + 40) = v24;
                }

                else
                {
                  fig_log_get_emitter();
                  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v21, v22, v23);
                  if (v20)
                  {
                    return;
                  }
                }
              }
            }

            ++v10;
          }

          while (v9 != v10);
        }

        *(v7 + 16) = 1;
      }
    }
  }

  else
  {
    clcpcgctsb_AddCaptionGroup_cold_3(&time1);
  }
}

uint64_t clcpcgctsbAddCaptionDataWithSameTimeRange(uint64_t a1)
{
  v2 = *a1;
  v1 = *(a1 + 8);
  v3 = *(a1 + 32);
  v4 = *(a1 + 56);
  v34 = *(a1 + 40);
  v35 = v4;
  v36 = *(a1 + 72);
  if (!v3)
  {
    v32 = 0;
    v33 = 0;
    v31 = 0;
    goto LABEL_30;
  }

  Count = CFArrayGetCount(v3);
  v32 = 0;
  v33 = 0;
  aStr = 0;
  v31 = 0;
  if (!Count)
  {
LABEL_30:
    FigCEA608DataGeneratorCaptionInfoRelease(0);
    v21 = 0;
    goto LABEL_31;
  }

  v6 = Count;
  if (Count >= 1)
  {
    v7 = 0;
    v8 = 0;
    v9 = 0;
    while (1)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(v3, v8);
      v11 = clcpcgctsbDoesCaptioDataHaveText(ValueAtIndex);
      v29 = 0;
      v28 = 0;
      if (v11)
      {
        v13 = clcpcgctsbCopyCaptionAnimationAndRegionInformation(ValueAtIndex, v2, &v33, &v32, &v29 + 1, &v29, &v28);
        if (v13)
        {
          goto LABEL_26;
        }

        cf = v32;
        v24 = v33;
        FigCEA608DataGeneratorClosedCaptionMode = clcpcgctsbGetFigCEA608DataGeneratorClosedCaptionMode(v33, v32);
        v12 = FigCEA608DataGeneratorClosedCaptionMode;
        if (v9 && v9 != FigCEA608DataGeneratorClosedCaptionMode)
        {
          clcpcgctsbAddCaptionDataWithSameTimeRange_cold_1(&v25);
          v21 = v25;
          goto LABEL_28;
        }

        if (!v7)
        {
          v25 = v34;
          v26 = v35;
          v27 = v36;
          v13 = FigCEA608DataGeneratorCaptionInfoCreate(FigCEA608DataGeneratorClosedCaptionMode, v28, &v25, v2, &v31);
          if (v13)
          {
            goto LABEL_26;
          }

          v25 = *MEMORY[0x1E6960C70];
          *&v26 = *(MEMORY[0x1E6960C70] + 16);
          FigCEA608DataGeneratorBeginCaption(v1, &v25, 0, v31, v15, v16, v17, v18);
          if (v13)
          {
            goto LABEL_26;
          }
        }

        v19 = clcpcgctsbCreateCEA608DataGeneratorAttributedString(ValueAtIndex, v2, &aStr);
        v20 = aStr;
        if (v19 || (FigCEA608DataGeneratorAddCaptionLine(v1, HIDWORD(v29), v29, aStr), v19))
        {
          v21 = v19;
          FigCEA608DataGeneratorCaptionInfoRelease(v31);
          if (v20)
          {
            CFRelease(v20);
          }

          goto LABEL_31;
        }

        if (v20)
        {
          CFRelease(v20);
          aStr = 0;
        }

        if (cf)
        {
          CFRelease(cf);
          v32 = 0;
        }

        if (v24)
        {
          CFRelease(v24);
          v33 = 0;
        }

        v7 = 1;
      }

      else
      {
        v12 = v9;
      }

      ++v8;
      v9 = v12;
      if (v6 == v8)
      {
        if (!v7)
        {
          break;
        }

        v13 = FigCEA608DataGeneratorEndCaption(v1, 0, 0, 0);
LABEL_26:
        v21 = v13;
        goto LABEL_28;
      }
    }
  }

  v21 = 0;
LABEL_28:
  FigCEA608DataGeneratorCaptionInfoRelease(v31);
LABEL_31:
  if (v32)
  {
    CFRelease(v32);
  }

  if (v33)
  {
    CFRelease(v33);
  }

  return v21;
}

uint64_t clcpcgctsbGetFigCEA608DataGeneratorClosedCaptionMode(uint64_t a1, uint64_t a2)
{
  if (FigCFEqual())
  {
    return 3;
  }

  if (FigCFEqual())
  {
    return 2;
  }

  return 1;
}

unint64_t clcpcgctsbOutputAndReleaseLastCCData(uint64_t a1, uint64_t a2)
{
  value_low = *(a1 + 88);
  if (!value_low)
  {
    return value_low;
  }

  v20 = *(a1 + 96);
  memset(&v19, 0, sizeof(v19));
  if ((~*(a2 + 12) & 0x11) != 0)
  {
    *&lhs.duration.value = *a2;
    lhs.duration.epoch = *(a2 + 16);
    rhs = *(a1 + 96);
    CMTimeSubtract(&v19, &lhs.duration, &rhs);
    value_low = *(a1 + 88);
  }

  else
  {
    v19 = *(a1 + 120);
  }

  v4 = *(a1 + 20);
  v5 = *(a1 + 24);
  v6 = *a1;
  rhs = v19;
  v24 = 0;
  blockBufferOut = 0;
  sourceBytes = 0;
  BytePtr = CFDataGetBytePtr(value_low);
  Length = CFDataGetLength(value_low);
  v9 = Length + 8;
  sampleSizeArray = Length + 8;
  if ((Length + 8) >> 32)
  {
    clcpcgctsbOutputAndReleaseLastCCData_cold_1(&lhs);
    v12 = 0;
    value_low = LODWORD(lhs.duration.value);
    goto LABEL_11;
  }

  v10 = Length;
  v11 = CMBlockBufferCreateWithMemoryBlock(v6, 0, v9, v6, 0, 0, v9, 1u, &blockBufferOut);
  if (v11 || (sourceBytes = _byteswap_uint64(__PAIR64__(v9, v4)), v11 = CMBlockBufferReplaceDataBytes(&sourceBytes, blockBufferOut, 0, 8uLL), v11) || (v11 = CMBlockBufferReplaceDataBytes(BytePtr, blockBufferOut, 8uLL, v10), v11))
  {
    value_low = v11;
LABEL_23:
    v12 = 0;
    goto LABEL_11;
  }

  lhs.duration = rhs;
  lhs.presentationTimeStamp = v20;
  lhs.decodeTimeStamp = **&MEMORY[0x1E6960C70];
  value_low = CMSampleBufferCreate(v6, blockBufferOut, 1u, 0, 0, v5, 1, 1, &lhs, 1, &sampleSizeArray, &v24);
  v12 = v24;
  if (value_low)
  {
    if (!v24)
    {
      goto LABEL_11;
    }

    CFRelease(v24);
    goto LABEL_23;
  }

  v24 = 0;
LABEL_11:
  if (blockBufferOut)
  {
    CFRelease(blockBufferOut);
  }

  if (!value_low)
  {
    v13 = (*(a1 + 144))(v12, *(a1 + 152));
    if (v13)
    {
      value_low = v13;
      if (!v12)
      {
        return value_low;
      }

      goto LABEL_20;
    }

    v14 = MEMORY[0x1E6960C98];
    v15 = *(MEMORY[0x1E6960C98] + 16);
    *(a1 + 96) = *MEMORY[0x1E6960C98];
    *(a1 + 112) = v15;
    *(a1 + 128) = *(v14 + 32);
    v16 = *(a1 + 88);
    if (v16)
    {
      CFRelease(v16);
      value_low = 0;
      *(a1 + 88) = 0;
      if (!v12)
      {
        return value_low;
      }

      goto LABEL_20;
    }

    value_low = 0;
  }

  if (v12)
  {
LABEL_20:
    CFRelease(v12);
  }

  return value_low;
}

void clcpccv_Finalize(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigCEA608DataGeneratorRelease(*(DerivedStorage + 8));
  v2 = *(DerivedStorage + 32);
  if (v2)
  {
    CFRelease(v2);
    *(DerivedStorage + 32) = 0;
  }

  if (*DerivedStorage)
  {
    CFRelease(*DerivedStorage);
    *DerivedStorage = 0;
  }
}

__CFString *clcpccv_CopyDebugDescription(uint64_t a1)
{
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  CFStringAppendFormat(Mutable, 0, @"<FigCLCPCaptionConversionValidator %p>", a1);
  return Mutable;
}

uint64_t clcpccv_CopyProperty(uint64_t a1, const void *a2, const __CFAllocator *a3, CFDictionaryRef *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!a2)
  {
    clcpccv_CopyProperty_cold_2(&v13);
    return LODWORD(v13.start.value);
  }

  if (!a4)
  {
    clcpccv_CopyProperty_cold_1(&v13);
    return LODWORD(v13.start.value);
  }

  v8 = DerivedStorage;
  if (!CFEqual(@"TimeRange", a2))
  {
    return 4294954512;
  }

  v9 = *(MEMORY[0x1E6960C98] + 16);
  *&v13.start.value = *MEMORY[0x1E6960C98];
  *&v13.start.epoch = v9;
  *&v13.duration.timescale = *(MEMORY[0x1E6960C98] + 32);
  TimeLineRange = FigCEA608DataGeneratorGetTimeLineRange(*(v8 + 8), &v13);
  if (!TimeLineRange)
  {
    v12 = v13;
    *a4 = CMTimeRangeCopyAsDictionary(&v12, a3);
  }

  return TimeLineRange;
}

void clcpccv_SetProperty(uint64_t a1, const void *a2, const __CFDictionary *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a2)
  {
    v6 = DerivedStorage;
    if (CFEqual(@"TimeRange", a2))
    {
      if (a3 && (v7 = CFGetTypeID(a3), v7 == CFDictionaryGetTypeID()))
      {
        memset(&v10, 0, sizeof(v10));
        CMTimeRangeMakeFromDictionary(&v10, a3);
        if ((v10.start.flags & 1) == 0 || (v10.duration.flags & 1) == 0 || v10.duration.epoch || v10.duration.value < 0)
        {
          fig_log_get_emitter();
          FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v9.start.value, v9.start.timescale, LODWORD(v9.start.epoch));
        }

        else if (*(v6 + 16) == 1)
        {
          clcpccv_SetProperty_cold_1(&v9);
        }

        else
        {
          v8 = *(v6 + 8);
          v9 = v10;
          FigCEA608DataGeneratorSetTimeLineRange(v8, &v9.start.value);
        }
      }

      else
      {
        clcpccv_SetProperty_cold_2(&v10);
      }
    }
  }

  else
  {
    clcpccv_SetProperty_cold_3(&v10);
  }
}

uint64_t clcpccv_AppendAndValidateCaptionData(uint64_t a1, const void *a2, __int128 *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!a2)
  {
    clcpccv_AppendAndValidateCaptionData_cold_4(&range1);
    return LODWORD(range1.start.value);
  }

  if ((*(a3 + 12) & 1) == 0 || (*(a3 + 36) & 1) == 0 || *(a3 + 5) || (*(a3 + 3) & 0x8000000000000000) != 0)
  {
    clcpccv_AppendAndValidateCaptionData_cold_3(&range1);
    return LODWORD(range1.start.value);
  }

  v6 = DerivedStorage;
  if (*(DerivedStorage + 16) == 2)
  {
    clcpccv_AppendAndValidateCaptionData_cold_2(&range1);
    return LODWORD(range1.start.value);
  }

  *&v20.start.value = *a3;
  *&v20.start.epoch = a3[1];
  *&v20.duration.timescale = a3[2];
  v7 = *(MEMORY[0x1E6960C98] + 16);
  *&range1.start.value = *MEMORY[0x1E6960C98];
  *&range1.start.epoch = v7;
  *&range1.duration.timescale = *(MEMORY[0x1E6960C98] + 32);
  result = FigCEA608DataGeneratorGetTimeLineRange(*(DerivedStorage + 8), &range1);
  if (result)
  {
    return result;
  }

  memset(&range2, 0, sizeof(range2));
  range = range1;
  otherRange = v20;
  CMTimeRangeGetIntersection(&range2, &range, &otherRange);
  v18 = *(MEMORY[0x1E6960CA8] + 16);
  v19 = *MEMORY[0x1E6960CA8];
  *&range.start.value = *MEMORY[0x1E6960CA8];
  *&range.start.epoch = v18;
  v17 = *(MEMORY[0x1E6960CA8] + 32);
  *&range.duration.timescale = v17;
  otherRange = range2;
  if (CMTimeRangeEqual(&range, &otherRange))
  {
    goto LABEL_20;
  }

  v9 = *(v6 + 56);
  *&range1.start.value = *(v6 + 40);
  *&range1.start.epoch = v9;
  *&range1.duration.timescale = *(v6 + 72);
  v10 = a3[1];
  *&range2.start.value = *a3;
  *&range2.start.epoch = v10;
  *&range2.duration.timescale = a3[2];
  if (CMTimeRangeEqual(&range1, &range2))
  {
    CFArrayAppendValue(*(v6 + 32), a2);
    ++*(v6 + 96);
LABEL_20:
    result = 0;
    ++*(v6 + 24);
    *(v6 + 16) = 1;
    return result;
  }

  v11 = *(v6 + 56);
  *&range2.start.value = *(v6 + 40);
  *&range2.start.epoch = v11;
  *&range2.duration.timescale = *(v6 + 72);
  memset(&range1, 0, sizeof(range1));
  v12 = a3[1];
  *&range.start.value = *a3;
  *&range.start.epoch = v12;
  *&range.duration.timescale = a3[2];
  CMTimeRangeGetIntersection(&range1, &range2, &range);
  *&range2.start.value = v19;
  *&range2.start.epoch = v18;
  *&range2.duration.timescale = v17;
  range = range1;
  if (!CMTimeRangeEqual(&range2, &range))
  {
    *&range.start.value = *(v6 + 64);
    range.start.epoch = *(v6 + 80);
    otherRange.start = range1.duration;
    CMTimeSubtract(&range2.start, &range.start, &otherRange.start);
    *(v6 + 64) = *&range2.start.value;
    *(v6 + 80) = range2.start.epoch;
  }

  result = cclcpccvAppendCaptionDataWithSameTimeRange(v6);
  if (!result)
  {
    v13 = *(v6 + 32);
    if (v13)
    {
      CFRelease(v13);
      *(v6 + 32) = 0;
    }

    Mutable = CFArrayCreateMutable(*v6, 0, MEMORY[0x1E695E9C0]);
    *(v6 + 32) = Mutable;
    if (!Mutable)
    {
      clcpccv_AppendAndValidateCaptionData_cold_1(&range2);
      return LODWORD(range2.start.value);
    }

    CFArrayAppendValue(Mutable, a2);
    v15 = *a3;
    v16 = a3[1];
    *(v6 + 72) = a3[2];
    *(v6 + 56) = v16;
    *(v6 + 40) = v15;
    *(v6 + 88) = *(v6 + 24);
    *(v6 + 96) = 1;
    goto LABEL_20;
  }

  return result;
}

uint64_t cclcpccvAppendCaptionDataWithSameTimeRange(uint64_t a1)
{
  v2 = *a1;
  v1 = *(a1 + 8);
  v3 = *(a1 + 32);
  v4 = *(a1 + 56);
  v50 = *(a1 + 40);
  v51 = v4;
  v52 = *(a1 + 72);
  if (v3)
  {
    Count = CFArrayGetCount(v3);
    v48 = 0;
    v49 = 0;
    v46 = 0;
    v47 = 0;
    if (Count)
    {
      v7 = Count;
      v8 = MEMORY[0x1E6960CC0];
      if (Count < 1)
      {
        cclcpccvAppendCaptionDataWithSameTimeRange_cold_5(&v42, &v41);
      }

      else
      {
        v9 = 0;
        v10 = 0;
        v11 = 0;
        do
        {
          ValueAtIndex = CFArrayGetValueAtIndex(v3, v9);
          v13 = clcpcgctsbDoesCaptioDataHaveText(ValueAtIndex);
          LODWORD(time2.value) = 0;
          v45 = 0;
          if (v13)
          {
            v15 = clcpcgctsbCopyCaptionAnimationAndRegionInformation(ValueAtIndex, v2, &v49, &v48, &time2, &v45 + 1, &v45);
            if (v15)
            {
              goto LABEL_54;
            }

            cf = v48;
            v36 = v49;
            FigCEA608DataGeneratorClosedCaptionMode = clcpcgctsbGetFigCEA608DataGeneratorClosedCaptionMode(v49, v48);
            v14 = FigCEA608DataGeneratorClosedCaptionMode;
            if (v10 && v10 != FigCEA608DataGeneratorClosedCaptionMode)
            {
              cclcpccvAppendCaptionDataWithSameTimeRange_cold_1(time1);
              goto LABEL_56;
            }

            if (!v11)
            {
              *time1 = v50;
              *&time1[16] = v51;
              v44 = v52;
              v15 = FigCEA608DataGeneratorCaptionInfoCreate(FigCEA608DataGeneratorClosedCaptionMode, v45, time1, v2, &v47);
              if (v15)
              {
                goto LABEL_54;
              }

              *time1 = *MEMORY[0x1E6960C70];
              *&time1[16] = *(MEMORY[0x1E6960C70] + 16);
              FigCEA608DataGeneratorBeginCaption(v1, time1, 0, v47, v17, v18, v19, v20);
              if (v15)
              {
                goto LABEL_54;
              }
            }

            v21 = clcpcgctsbCreateCEA608DataGeneratorAttributedString(ValueAtIndex, v2, &v46);
            v22 = v46;
            if (v21 || (FigCEA608DataGeneratorAddCaptionLine(v1, LODWORD(time2.value), HIDWORD(v45), v46), v21))
            {
              v33 = v21;
              FigCEA608DataGeneratorCaptionInfoRelease(v47);
              if (v22)
              {
                CFRelease(v22);
              }

              goto LABEL_45;
            }

            if (v22)
            {
              CFRelease(v22);
              v46 = 0;
            }

            if (cf)
            {
              CFRelease(cf);
              v48 = 0;
            }

            if (v36)
            {
              CFRelease(v36);
              v49 = 0;
            }

            v11 = 1;
          }

          else
          {
            v14 = v10;
          }

          ++v9;
          v10 = v14;
        }

        while (v7 != v9);
        v8 = MEMORY[0x1E6960CC0];
        v42 = **&MEMORY[0x1E6960CC0];
        v41 = v42;
        if (v11)
        {
          v15 = FigCEA608DataGeneratorEndCaption(v1, &v42, &v41, 0);
          if (v15)
          {
LABEL_54:
            v33 = v15;
            goto LABEL_42;
          }
        }
      }

      *time1 = v42;
      v37 = *v8;
      *&time2.value = *v8;
      v23 = *(v8 + 2);
      time2.epoch = v23;
      if (!CMTimeCompare(time1, &time2) && (*time1 = v41, *&time2.value = v37, time2.epoch = v23, !CMTimeCompare(time1, &time2)) || (v39 = v42, v38 = v41, !*(a1 + 104)))
      {
        v33 = 0;
        goto LABEL_42;
      }

      v24 = *a1;
      Mutable = CFDictionaryCreateMutable(*a1, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      if (!Mutable)
      {
        cclcpccvAppendCaptionDataWithSameTimeRange_cold_4(time1);
LABEL_56:
        v33 = *time1;
        goto LABEL_42;
      }

      v26 = Mutable;
      v27 = FigCFDictionarySetInt32();
      if (v27)
      {
        v33 = v27;
        goto LABEL_41;
      }

      v28 = CFDictionaryCreateMutable(v24, 2, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      if (!v28)
      {
        cclcpccvAppendCaptionDataWithSameTimeRange_cold_3(time1);
        v33 = *time1;
        goto LABEL_41;
      }

      v29 = v28;
      v30 = FigCFDictionarySetCFIndex();
      if (v30 || (v30 = FigCFDictionarySetCFIndex(), v30))
      {
        v33 = v30;
        goto LABEL_40;
      }

      CFDictionarySetValue(v26, @"CaptionRange", v29);
      v31 = CFDictionaryCreateMutable(v24, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      if (v31)
      {
        v32 = FigCFDictionarySetInt32();
        if (v32 || (*time1 = v39, v32 = FigCFDictionarySetCMTime(), v32) || (*time1 = v38, v32 = FigCFDictionarySetCMTime(), v32))
        {
          v33 = v32;
          goto LABEL_39;
        }
      }

      else if (!cclcpccvAppendCaptionDataWithSameTimeRange_cold_2(time1))
      {
        v33 = *time1;
        goto LABEL_40;
      }

      CFDictionarySetValue(v26, @"Adjustment", v31);
      v33 = (*(a1 + 104))(v26, *(a1 + 112));
      if (!v31)
      {
LABEL_40:
        CFRelease(v29);
LABEL_41:
        CFRelease(v26);
LABEL_42:
        FigCEA608DataGeneratorCaptionInfoRelease(v47);
        goto LABEL_45;
      }

LABEL_39:
      CFRelease(v31);
      goto LABEL_40;
    }
  }

  else
  {
    v48 = 0;
    v49 = 0;
    v47 = 0;
  }

  FigCEA608DataGeneratorCaptionInfoRelease(0);
  v33 = 0;
LABEL_45:
  if (v48)
  {
    CFRelease(v48);
  }

  if (v49)
  {
    CFRelease(v49);
  }

  return v33;
}

double OUTLINED_FUNCTION_4_17(uint64_t a1, void x1_0, void x2_0, void x3_0, void a5, void a6, void a7, void a8, __int128 a3, uint64_t a4)
{

  return FigCEA608DataGeneratorFinish(a1);
}

uint64_t GetElapsedTime(void *a1)
{
  result = mach_absolute_time();
  v3 = result;
  v4 = dword_1ED4CA4F4;
  if (!dword_1ED4CA4F4)
  {
    result = mach_timebase_info(&dword_1ED4CA4F0);
    v4 = dword_1ED4CA4F4;
  }

  v5 = ((v3 * dword_1ED4CA4F0) / v4 * 0x20C49BA5E353F7CFLL) >> 64;
  *a1 = (v5 >> 7) + (v5 >> 63);
  return result;
}

uint64_t instrum_malloc(uint64_t a1, uint64_t a2)
{
  result = _MergedGlobals_21(a1);
  if (result)
  {
    qword_1ED4CA4D8 += a2;
    if (qword_1ED4CA4E8 < qword_1ED4CA4D8)
    {
      qword_1ED4CA4E8 = qword_1ED4CA4D8;
    }

    qword_1ED4CA4E0 += a2;
  }

  return result;
}

uint64_t instrum_calloc(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = off_1ED4CA4B8(a1);
  if (result)
  {
    v6 = qword_1ED4CA4D8 + a3 * a2;
    qword_1ED4CA4D8 = v6;
    if (qword_1ED4CA4E8 < v6)
    {
      qword_1ED4CA4E8 = v6;
    }

    qword_1ED4CA4E0 += a3 * a2;
  }

  return result;
}

uint64_t instrum_valloc(uint64_t a1, uint64_t a2)
{
  result = off_1ED4CA4C0(a1);
  if (result)
  {
    qword_1ED4CA4D8 += a2;
    if (qword_1ED4CA4E8 < qword_1ED4CA4D8)
    {
      qword_1ED4CA4E8 = qword_1ED4CA4D8;
    }

    qword_1ED4CA4E0 += a2;
  }

  return result;
}

uint64_t instrum_free(uint64_t a1, void *ptr)
{
  if (ptr)
  {
    v4 = malloc_size(ptr);
    v5 = qword_1ED4CA4D8 - v4;
    if (qword_1ED4CA4D8 < v4)
    {
      v5 = 0;
    }

    qword_1ED4CA4D8 = v5;
  }

  v6 = off_1ED4CA4C8;

  return v6(a1, ptr);
}

uint64_t instrum_realloc(uint64_t a1, void *ptr, uint64_t a3)
{
  if (ptr)
  {
    v6 = malloc_size(ptr);
  }

  else
  {
    v6 = 0;
  }

  result = off_1ED4CA4D0(a1, ptr, a3);
  if (result)
  {
    v8 = a3 - v6 + qword_1ED4CA4D8;
    if (qword_1ED4CA4D8 + a3 <= v6)
    {
      v8 = 0;
    }

    qword_1ED4CA4D8 = v8;
    if (qword_1ED4CA4E8 < v8)
    {
      qword_1ED4CA4E8 = v8;
    }

    qword_1ED4CA4E0 += a3;
  }

  return result;
}

uint64_t AddTotalForVMObject(uint64_t a1, vm_address_t a2, natural_t a3, int64x2_t *a4, vm_address_t *a5)
{
  nesting_depth = a3;
  v25 = 0u;
  memset(v26, 0, sizeof(v26));
  *info = 0u;
  v24 = 0u;
  infoCnt = 19;
  address = a2;
  size = 0;
  v19 = vdupq_n_s64(1uLL);
  v9 = MEMORY[0x1E69E9AC8];
  while (1)
  {
    v10 = vm_region_recurse_64(a1, &address, &size, &nesting_depth, info, &infoCnt);
    if (v10)
    {
      break;
    }

    if (nesting_depth < a3)
    {
      v11 = 0;
      *a5 = address;
      return v11;
    }

    if (v26[0])
    {
      v11 = AddTotalForVMObject(a1, address, nesting_depth + 1, a4, &address);
      if (v11)
      {
        return v11;
      }
    }

    else
    {
      v12 = HIBYTE(v25);
      v13 = size;
      if (HIBYTE(v25) == 3)
      {
        goto LABEL_15;
      }

      v14.i64[1] = v19.i64[1];
      v14.i64[0] = size;
      *a4 = vaddq_s64(*a4, v14);
      v15 = *v9;
      a4[1].i64[0] += *v9 * DWORD2(v24);
      if ((v12 - 4) < 2 || v12 == 1)
      {
        v16 = v15 * HIDWORD(v24);
        v17 = a4[2].i64[0] + v16;
        a4[1].i64[1] = a4[1].i64[1] + v13 - v16;
        a4[2].i64[0] = v17;
        if ((info[0] & 2) == 0)
        {
          goto LABEL_15;
        }

LABEL_14:
        a4[2].i64[1] += v16;
        goto LABEL_15;
      }

      if (v12 == 2)
      {
        a4[2].i64[0] += v13;
        v16 = v13;
        if ((info[0] & 2) != 0)
        {
          goto LABEL_14;
        }
      }

LABEL_15:
      address += v13;
    }
  }

  v11 = v10;
  if (v10 != 1)
  {
    FigSignalErrorAt();
  }

  return v11;
}

double FigTextSampleBufferCopyText(opaqueCMSampleBuffer *a1, CFStringRef *a2)
{
  FormatDescription = CMSampleBufferGetFormatDescription(a1);
  DataBuffer = CMSampleBufferGetDataBuffer(a1);
  if (FormatDescription)
  {
    v8 = DataBuffer;
    if (DataBuffer)
    {
      MediaSubType = CMFormatDescriptionGetMediaSubType(FormatDescription);
      if (MediaSubType == 1954034535 || MediaSubType == 1952807028)
      {
        bytes = 0;
        if (CMBlockBufferAccessDataBytes(v8, 0, 2uLL, temporaryBlock, &bytes))
        {
          return result;
        }

        v10 = 134217984;
        v11 = __rev16(*bytes);
        if (v11 >= 3 && !CMBlockBufferAccessDataBytes(v8, 2uLL, 2uLL, temporaryBlock, &bytes) && *bytes == 254)
        {
          if (bytes[1] == 255)
          {
            v10 = 256;
          }

          else
          {
            v10 = 134217984;
          }
        }

        if (CMBlockBufferGetDataLength(v8) < (v11 + 2))
        {
          emitter = fig_log_get_emitter();
          return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 4294954516, "<<<< TMC >>>>", 286, v2);
        }

        if (CMBlockBufferIsRangeContiguous(v8, 2uLL, v11))
        {
          if (CMBlockBufferGetDataPointer(v8, 2uLL, 0, 0, &bytes))
          {
            return result;
          }

          v14 = 0;
          v15 = bytes;
        }

        else
        {
          v16 = malloc_type_malloc(v11, 0xA1EC907DuLL);
          if (!v16)
          {
            v18 = fig_log_get_emitter();
            return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v18, 4294954510, "<<<< TMC >>>>", 299, v2);
          }

          v15 = v16;
          CMBlockBufferCopyDataBytes(v8, 2uLL, v11, v16);
          bytes = v15;
          v14 = v15;
        }

        v17 = CFStringCreateWithBytes(*MEMORY[0x1E695E480], v15, v11, v10, 1u);
        if (a2)
        {
          *a2 = v17;
        }

        else if (v17)
        {
          CFRelease(v17);
        }

        if (v14)
        {
          free(v14);
        }
      }

      else
      {
        v13 = fig_log_get_emitter();

        return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v13, 4294954516, "<<<< TMC >>>>", 311, v2);
      }
    }
  }

  return result;
}

uint64_t TMCCreateWithCallbacksAndOptions(uint64_t a1, const void *a2, __int128 *a3, void *a4, const void *a5, uint64_t a6, uint64_t *a7)
{
  v30 = *MEMORY[0x1E69E9840];
  HIBYTE(v24) = 0;
  v28 = 0u;
  memset(v29, 0, sizeof(v29));
  *__str = 0u;
  v27 = 0u;
  if (!a2)
  {
    TMCCreateWithCallbacksAndOptions_cold_6(&v25);
    goto LABEL_20;
  }

  if (!a4)
  {
    TMCCreateWithCallbacksAndOptions_cold_5(&v25);
    return v25;
  }

  if (!a4[2])
  {
    TMCCreateWithCallbacksAndOptions_cold_4(&v25);
    goto LABEL_20;
  }

  if (!a5)
  {
    TMCCreateWithCallbacksAndOptions_cold_3(&v25);
    goto LABEL_20;
  }

  if ((*(a3 + 3) & 0x1D) != 1)
  {
    TMCCreateWithCallbacksAndOptions_cold_1(&v25);
    goto LABEL_20;
  }

  if (!a7)
  {
    TMCCreateWithCallbacksAndOptions_cold_2(&v25);
LABEL_20:
    v18 = v25;
    if (!a4)
    {
      return v18;
    }

    goto LABEL_16;
  }

  MEMORY[0x19A8D3660](&sRegisterTMCTypeOnce, RegisterTMCType);
  Instance = _CFRuntimeCreateInstance();
  if (Instance)
  {
    v13 = Instance;
    __copy_assignment_8_8_t0w16_pa0_44489_16_pa0_25850_24_pa0_65440_32(Instance + 56, a4);
    v14 = *a3;
    *(v13 + 112) = *(a3 + 2);
    *(v13 + 96) = v14;
    *(v13 + 120) = CFRetain(a5);
    v15 = MEMORY[0x1E6960C70];
    *(v13 + 144) = *MEMORY[0x1E6960C70];
    *(v13 + 160) = *(v15 + 16);
    FigCFDictionaryGetBooleanIfPresent();
    *(v13 + 188) = 0;
    snprintf(__str, 0x46uLL, "com.apple.coremedia.textmediaconverter.%p", v13);
    *(v13 + 24) = dispatch_queue_create(__str, 0);
    snprintf(__str, 0x46uLL, "com.apple.coremedia.textmediaconverter.jumpseed.%p", v13);
    *(v13 + 32) = dispatch_queue_create(__str, 0);
    snprintf(__str, 0x46uLL, "com.apple.coremedia.textmediaconverter.callback.%p", v13);
    *(v13 + 40) = dispatch_queue_create(__str, 0);
    *(v13 + 168) = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, *(v13 + 24));
    v16 = FigCFWeakReferenceHolderCreateWithReferencedObject();
    dispatch_source_set_cancel_handler_f(*(v13 + 168), tmcSendingTimerCanceled);
    dispatch_source_set_event_handler_f(*(v13 + 168), tmcSendingTimerFired);
    dispatch_set_context(*(v13 + 168), v16);
    dispatch_source_set_timer(*(v13 + 168), 0xFFFFFFFFFFFFFFFFLL, 0xFFFFFFFFFFFFFFFFLL, 0);
    *(v13 + 176) = voucher_copy();
    dispatch_resume(*(v13 + 168));
    v17 = CMTimebaseAddTimerDispatchSource(*(v13 + 120), *(v13 + 168));
    if (v17 || (CMNotificationCenterGetDefaultLocalCenter(), v17 = FigNotificationCenterAddWeakListener(), v17) || (*(v13 + 48) = CFRetain(a2), CMNotificationCenterGetDefaultLocalCenter(), v17 = FigNotificationCenterAddWeakListener(), v17) || (CMNotificationCenterGetDefaultLocalCenter(), v17 = FigNotificationCenterAddWeakListener(), v17))
    {
      v18 = v17;
    }

    else
    {
      CMNotificationCenterGetDefaultLocalCenter();
      v18 = FigNotificationCenterAddWeakListener();
      if (!v18)
      {
        *a7 = v13;
        return v18;
      }
    }

    CFRelease(v13);
    return v18;
  }

  fig_log_get_emitter();
  v20.n128_f64[0] = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v23, v24, *__str);
  v18 = v21;
  if (!a4)
  {
    return v18;
  }

LABEL_16:
  if (v18)
  {
    v22 = a4[3];
    if (v22)
    {
      v22(a4[1], v20);
    }
  }

  return v18;
}

void TMCInvalidate(void *a1)
{
  if (a1)
  {
    tmcInvalidateInternal(a1);
    CFRetain(a1);
    v2 = a1[3];

    dispatch_async_f(v2, a1, tmcReleaseObjectsAndConsumeTMC);
  }
}

void tmcInvalidateInternal(uint64_t a1)
{
  if (!*(a1 + 16))
  {
    *(a1 + 16) = 1;
    if (*(a1 + 48))
    {
      CMNotificationCenterGetDefaultLocalCenter();
      FigNotificationCenterRemoveWeakListener();
      CMNotificationCenterGetDefaultLocalCenter();
      FigNotificationCenterRemoveWeakListener();
      CMNotificationCenterGetDefaultLocalCenter();
      FigNotificationCenterRemoveWeakListener();
      FigSampleBufferProviderGetFigBaseObject();
      if (v2)
      {
        v3 = v2;
        v4 = *(*(CMBaseObjectGetVTable() + 8) + 24);
        if (v4)
        {
          v4(v3);
        }
      }
    }

    v5 = *(a1 + 168);
    if (v5)
    {
      CMTimebaseRemoveTimerDispatchSource(*(a1 + 120), v5);
      dispatch_source_cancel(*(a1 + 168));
    }

    if (*(a1 + 120))
    {
      CMNotificationCenterGetDefaultLocalCenter();

      FigNotificationCenterRemoveWeakListener();
    }
  }
}

void tmcReleaseObjectsAndConsumeTMC(const void *a1)
{
  tmcReleaseObjects(a1);

  CFRelease(a1);
}

uint64_t RegisterTMCType()
{
  result = _CFRuntimeRegisterClass();
  sTMCID = result;
  return result;
}

uint64_t __copy_assignment_8_8_t0w16_pa0_44489_16_pa0_25850_24_pa0_65440_32(uint64_t result, uint64_t a2)
{
  *result = *a2;
  *(result + 16) = *(a2 + 16);
  *(result + 24) = *(a2 + 24);
  *(result + 32) = *(a2 + 32);
  return result;
}

uint64_t tmcTimeJumped(int a1, CFTypeRef cf)
{
  if (!*(cf + 16))
  {
    CFRetain(cf);
    CFGetAllocator(cf);

    return FigDeferNotificationToDispatchQueue();
  }

  return result;
}

uint64_t tmcInputDataBecameReady(int a1, CFTypeRef cf)
{
  if (!*(cf + 16))
  {
    CFRetain(cf);
    CFGetAllocator(cf);

    return FigDeferNotificationToDispatchQueue();
  }

  return result;
}

void tmcInhibitOutputUntil(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const __CFDictionary *a5)
{
  if (!*(a2 + 16))
  {
    v7 = malloc_type_calloc(1uLL, 0x10uLL, 0xE0040E685C293uLL);
    if (v7)
    {
      v8 = v7;
      *v7 = a2;
      v9 = a2;
      if (!a5 || (Value = CFDictionaryGetValue(a5, *MEMORY[0x1E6960580]), v8[1] = Value, (v9 = *v8) != 0))
      {
        CFRetain(v9);
        Value = v8[1];
      }

      if (Value)
      {
        CFRetain(Value);
      }

      v11 = *(a2 + 32);

      dispatch_async_f(v11, v8, tmcInhibitOutputUntilSerialized);
    }

    else
    {
      tmcInhibitOutputUntil_cold_1();
    }
  }
}

void tmcResetOutput(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    FigAtomicIncrement32();
    CFRetain(a2);
    v4 = *(a2 + 24);

    dispatch_async_f(v4, a2, tmcResetOutputSerialized);
  }
}

uint64_t TMCGetEndPresentationTimeForDecodedSamples(dispatch_queue_t *cf, uint64_t a2)
{
  context = cf;
  v6 = *MEMORY[0x1E6960C70];
  v7 = *(MEMORY[0x1E6960C70] + 16);
  if (!a2)
  {
    TMCGetEndPresentationTimeForDecodedSamples_cold_2(&v8);
    return v8;
  }

  if (*(cf + 16))
  {
    TMCGetEndPresentationTimeForDecodedSamples_cold_1(&v8);
    return v8;
  }

  CFRetain(cf);
  dispatch_sync_f(cf[3], &context, tmcSerializedGetEndPresentationTimeForDecodedSamples);
  result = 0;
  *a2 = v6;
  *(a2 + 16) = v7;
  return result;
}

void tmcSerializedGetEndPresentationTimeForDecodedSamples(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  v2 = *a1;
  v3 = *(*a1 + 160);
  *(a1 + 8) = *(*a1 + 144);
  *(a1 + 24) = v3;
  v4 = v2[16];
  if (v4)
  {
    CMSampleBufferGetOutputPresentationTimeStamp(&v9, v4);
    value = v9.value;
    flags = v9.flags;
    timescale = v9.timescale;
    if ((v9.flags & 0x1D) == 1)
    {
      epoch = v9.epoch;
      *(a1 + 8) = value;
      *(a1 + 16) = timescale;
      *(a1 + 20) = flags;
      *(a1 + 24) = epoch;
      CMSampleBufferGetOutputDuration(&v9, v2[16]);
      v10 = v9.value;
      v11 = v9.timescale;
      if ((v9.flags & 0x1D) == 1)
      {
        lhs = *(a1 + 8);
        rhs.value = v10;
        rhs.timescale = v11;
        rhs.flags = v9.flags;
        rhs.epoch = v9.epoch;
        CMTimeAdd(&v9, &lhs, &rhs);
        *(a1 + 8) = v9;
      }
    }
  }

  CFRelease(v2);
}

void tmcReleaseObjects(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    CFRelease(v2);
    *(a1 + 48) = 0;
  }

  v3 = *(a1 + 120);
  if (v3)
  {
    CFRelease(v3);
    *(a1 + 120) = 0;
  }

  v4 = *(a1 + 128);
  if (v4)
  {
    CFRelease(v4);
    *(a1 + 128) = 0;
  }

  v5 = *(a1 + 136);
  if (v5)
  {
    CFRelease(v5);
    *(a1 + 136) = 0;
  }

  v6 = *(a1 + 168);
  if (v6)
  {
    dispatch_release(v6);
    *(a1 + 168) = 0;
  }

  v7 = *(a1 + 176);
  if (v7)
  {
    os_release(v7);
    *(a1 + 176) = 0;
  }

  v8 = *(a1 + 40);
  if (v8)
  {
    v9 = *(a1 + 80);
    if (v9)
    {
      dispatch_async_f(v8, *(a1 + 64), v9);
      v8 = *(a1 + 40);
      *(a1 + 72) = 0;
      *(a1 + 80) = 0;
      if (!v8)
      {
        return;
      }
    }

    else
    {
      *(a1 + 72) = 0;
    }

    dispatch_release(v8);
    *(a1 + 40) = 0;
  }
}

double tmcInit(_OWORD *a1)
{
  result = 0.0;
  a1[10] = 0u;
  a1[11] = 0u;
  a1[8] = 0u;
  a1[9] = 0u;
  a1[6] = 0u;
  a1[7] = 0u;
  a1[4] = 0u;
  a1[5] = 0u;
  a1[2] = 0u;
  a1[3] = 0u;
  a1[1] = 0u;
  return result;
}

void tmcFinalize(uint64_t a1)
{
  tmcInvalidateInternal(a1);
  tmcReleaseObjects(a1);
  v2 = *(a1 + 32);
  if (v2)
  {
    dispatch_release(v2);
    *(a1 + 32) = 0;
  }

  v3 = *(a1 + 24);
  if (v3)
  {
    dispatch_release(v3);
    *(a1 + 24) = 0;
  }
}

CFTypeRef tmcCopyFormattingDesc(uint64_t a1)
{
  if (*(a1 + 16))
  {
    return CFRetain(@"[TMC (invalidated)]");
  }

  else
  {
    return CFRetain(@"[TMC]");
  }
}

__CFString *tmcCopyDebugDesc(_BYTE *a1)
{
  v2 = CFGetAllocator(a1);
  Mutable = CFStringCreateMutable(v2, 0);
  v4 = CFGetRetainCount(a1);
  if (a1[16])
  {
    v5 = " (invalidated)";
  }

  else
  {
    v5 = "";
  }

  v6 = CFGetAllocator(a1);
  CFStringAppendFormat(Mutable, 0, @"TMC %p retainCount: %d%s allocator: %p\n", a1, v4, v5, v6);
  return Mutable;
}

void tmcSendingTimerCanceled(CFTypeRef cf)
{
  if (cf)
  {
    CFRelease(cf);
  }
}

void tmcSendingTimerFired(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v1 = FigCFWeakReferenceHolderCopyReferencedObject();
  if (v1)
  {
    v2 = v1;
    os_retain(*(v1 + 176));
    voucher_adopt();
    if (!*(v2 + 16) && *(v2 + 128))
    {
      v3 = malloc_type_malloc(0x10uLL, 0x20040A4A59CD2uLL);
      *v3 = CFRetain(v2);
      v3[1] = CFRetain(*(v2 + 128));
      dispatch_async_f(*(v2 + 40), v3, tmcSendSampleToCallback);
      CMSampleBufferGetOutputPresentationTimeStamp(&v8, *(v2 + 128));
      *(v2 + 144) = v8;
      CMSampleBufferGetOutputDuration(&v8, *(v2 + 128));
      value = v8.value;
      timescale = v8.timescale;
      if ((v8.flags & 0x1D) == 1)
      {
        lhs = *(v2 + 144);
        rhs.value = value;
        rhs.timescale = timescale;
        rhs.flags = v8.flags;
        rhs.epoch = v8.epoch;
        CMTimeAdd(&v8, &lhs, &rhs);
        *(v2 + 144) = v8;
      }

      v4 = *(v2 + 128);
      if (v4)
      {
        CFRelease(v4);
        *(v2 + 128) = 0;
      }
    }

    tmcPrepareToSendNextSample(v2);
    CFRelease(v2);
    v5 = voucher_adopt();
    os_release(v5);
  }
}

void tmcSendSampleToCallback(CFTypeRef *a1)
{
  v2 = *a1;
  v3 = *(*a1 + 9);
  if (v3)
  {
    if (!*(v2 + 16) && v3 != 0)
    {
      v3(v2[8], a1[1]);
      if (*(v2 + 188))
      {
        if (FigSampleBufferGetCaptionGroup())
        {
          FigCaptionGroupGetSliceCount();
        }
      }
    }
  }

  CFRelease(a1[1]);
  CFRelease(v2);

  free(a1);
}

void tmcHandleIgnoreSamplesUntilThisJumpSeed(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  if (*(a1 + 136))
  {
    v2 = CMGetAttachment(*(a1 + 128), *MEMORY[0x1E6960518], 0);
    if (FigCFEqual())
    {
      v3 = *(a1 + 136);
      if (v3)
      {
        CFRelease(v3);
        *(a1 + 136) = 0;
      }
    }

    else
    {
      if (!v2)
      {
        CMSampleBufferGetOutputPresentationTimeStamp(&v7, *(a1 + 128));
        *(a1 + 144) = v7;
        CMSampleBufferGetOutputDuration(&v7, *(a1 + 128));
        value = v7.value;
        timescale = v7.timescale;
        if ((v7.flags & 0x1D) == 1)
        {
          lhs = *(a1 + 144);
          rhs.value = value;
          rhs.timescale = timescale;
          rhs.flags = v7.flags;
          rhs.epoch = v7.epoch;
          CMTimeAdd(&v7, &lhs, &rhs);
          *(a1 + 144) = v7;
        }
      }

      v4 = *(a1 + 128);
      if (v4)
      {
        CFRelease(v4);
        *(a1 + 128) = 0;
      }
    }
  }
}

const __CFArray *tmcShouldDisplaySampleImmediately(opaqueCMSampleBuffer *a1)
{
  result = CMSampleBufferGetSampleAttachmentsArray(a1, 0);
  if (result)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(result, 0);
    return (ValueAtIndex && *MEMORY[0x1E695E4D0] == CFDictionaryGetValue(ValueAtIndex, *MEMORY[0x1E6960408]));
  }

  return result;
}

void tmcDeferredInputDataBecameReady(int a1, _BYTE *cf)
{
  if (!cf[16])
  {
    tmcPrepareToSendNextSample(cf);
  }

  CFRelease(cf);
}

void tmcResetOutputSerialized(_BYTE *cf)
{
  if (!cf[16])
  {
    tmcResetOutputSerialized_cold_1(cf);
  }

  CFRelease(cf);
}

void tmcInhibitOutputUntilSerialized(void *a1)
{
  v2 = *a1;
  if (*(*a1 + 16))
  {
    goto LABEL_7;
  }

  v3 = *(v2 + 136);
  if (v3)
  {
    CFRelease(v3);
    *(v2 + 136) = 0;
  }

  v4 = a1[1];
  if (v4)
  {
    *(v2 + 136) = CFRetain(v4);
  }

  CFRetain(v2);
  dispatch_async_f(*(v2 + 24), v2, tmcPrepareToSendNextSampleAndConsumeTMC);
  v2 = *a1;
  if (*a1)
  {
LABEL_7:
    CFRelease(v2);
  }

  v5 = a1[1];
  if (v5)
  {
    CFRelease(v5);
  }

  free(a1);
}

void tmcDeferredTimeJumped(int a1, CFTypeRef cf)
{
  v27 = *MEMORY[0x1E69E9840];
  memset(&v22, 0, sizeof(v22));
  memset(&v21, 0, sizeof(v21));
  memset(&v20, 0, sizeof(v20));
  if (!*(cf + 16))
  {
    v4 = *(cf + 16);
    if (v4)
    {
      if (!tmcShouldDisplaySampleImmediately(v4))
      {
        v5 = CMGetAttachment(*(cf + 16), *MEMORY[0x1E69604B0], 0);
        CMSampleBufferGetOutputPresentationTimeStamp(&lhs, *(cf + 16));
        value = lhs.value;
        flags = lhs.flags;
        timescale = lhs.timescale;
        if ((lhs.flags & 0x1D) == 1)
        {
          epoch = lhs.epoch;
          if (!v5 && (CMSampleBufferGetOutputDuration(&lhs, *(cf + 16)), v23 = lhs.value, v8 = lhs.flags, v24 = lhs.timescale, (lhs.flags & 1) != 0))
          {
            v9 = lhs.epoch;
          }

          else
          {
            v23 = *MEMORY[0x1E6960CC0];
            v8 = *(MEMORY[0x1E6960CC0] + 12);
            v24 = *(MEMORY[0x1E6960CC0] + 8);
            v9 = *(MEMORY[0x1E6960CC0] + 16);
          }

          lhs.value = value;
          lhs.timescale = timescale;
          lhs.flags = flags;
          lhs.epoch = epoch;
          v18 = *(cf + 4);
          CMTimeSubtract(&v22, &lhs, &v18);
          lhs.value = value;
          lhs.timescale = timescale;
          lhs.flags = flags;
          lhs.epoch = epoch;
          v18.value = v23;
          v18.timescale = v24;
          v18.flags = v8;
          v18.epoch = v9;
          CMTimeAdd(&v21, &lhs, &v18);
          CMTimebaseGetTime(&v20, *(cf + 15));
          Rate = CMTimebaseGetRate(*(cf + 15));
          lhs = v20;
          v18 = v22;
          if (CMTimeCompare(&lhs, &v18) < 0 || (lhs = v20, v18 = v21, CMTimeCompare(&lhs, &v18) > 0))
          {
            if (Rate > 0.0 && (lhs = v20, v18 = v21, CMTimeCompare(&lhs, &v18) > 0) || Rate < 0.0 && (lhs = v20, v18 = v22, CMTimeCompare(&lhs, &v18) < 0))
            {
              if (!v5)
              {
                v11 = *(cf + 16);
                if (v11)
                {
                  CFRelease(v11);
                  *(cf + 16) = 0;
                }
              }

              v12 = CMTimebaseSetTimerDispatchSourceToFireImmediately(*(cf + 15), *(cf + 21));
              if (v12)
              {
                v13 = v12;
                emitter = fig_log_get_emitter();
                FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, v13, "<<<< TMC >>>>", 1305, v2);
              }
            }
          }

          else
          {
            v15 = CMTimebaseSetTimerDispatchSourceToFireImmediately(*(cf + 15), *(cf + 21));
            if (v15)
            {
              v16 = v15;
              v17 = fig_log_get_emitter();
              FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v17, v16, "<<<< TMC >>>>", 1288, v2);
            }
          }
        }
      }
    }
  }

  CFRelease(cf);
}

uint64_t FigByteStreamServerStart(uint64_t a1, uint64_t a2)
{
  if (qword_1ED4CA508 != -1)
  {
    FigByteStreamServerStart_cold_1();
  }

  return _MergedGlobals_22;
}

void __FigByteStreamServerStart_block_invoke()
{
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  FigCFDictionarySetValue();
  FigCFDictionarySetValue();
  FigCFDictionarySetValue();
  if (FigServer_IsMediaparserd())
  {
    fig_log_get_emitter();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", 1, byteStreamServer_HandleMessage, 0);
  }

  else
  {
    FigServer_IsMediaplaybackd();
    v1 = FigXPCServerStart();
  }

  _MergedGlobals_22 = v1;
  if (Mutable)
  {
    CFRelease(Mutable);
  }
}

uint64_t FigByteStreamServerCopyByteStreamForID(uint64_t a1, uint64_t a2, CFTypeRef *a3)
{
  if (!a3)
  {
    FigByteStreamServerCopyByteStreamForID_cold_2(v11);
    return v11[0];
  }

  if (!a2)
  {
    FigByteStreamServerCopyByteStreamForID_cold_1(v11);
    return v11[0];
  }

  v4 = FigXPCServerRetainNeighborObjectFromIDWithProcessID();
  v5 = 0;
  if (!v4)
  {
    v6 = CFGetTypeID(0);
    if (v6 == CMByteStreamBaseGetTypeID())
    {
      v4 = 0;
      *a3 = 0;
      return v4;
    }

    fig_log_get_emitter();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", 0, v10, v11[1]);
    v4 = v8;
    v5 = cf;
  }

  if (v5)
  {
    CFRelease(v5);
  }

  return v4;
}

uint64_t __FigServedByteStreamStateGetTypeID_block_invoke()
{
  result = _CFRuntimeRegisterClass();
  qword_1ED4CA530 = result;
  return result;
}

uint64_t servedByteStreamState_Init(uint64_t result)
{
  *(result + 16) = 0;
  *(result + 24) = 0;
  return result;
}

void servedByteStreamState_Finalize(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    CFRelease(v2);
    *(a1 + 16) = 0;
  }

  v3 = *(a1 + 24);
  if (v3)
  {
    CFRelease(v3);
    *(a1 + 24) = 0;
  }
}

__CFString *servedByteStreamState_CopyDebugDesc(uint64_t a1)
{
  Mutable = CFStringCreateMutable(0, 0);
  CFStringAppendFormat(Mutable, 0, @"FigServedByteStreamState %p", a1);
  return Mutable;
}

__CFString *fssm_remote_copyDebugDescription(const void *a1)
{
  v2 = CFGetAllocator(a1);
  Mutable = CFStringCreateMutable(v2, 0);
  v4 = CFGetRetainCount(a1);
  v5 = CFGetAllocator(a1);
  CFStringAppendFormat(Mutable, 0, @"<FigSecureStopManager_Remote %p retainCount: %ld allocator: %p, ", a1, v4, v5);
  CFStringAppendFormat(Mutable, 0, @">");
  return Mutable;
}

uint64_t fssm_remote_getObjectID(uint64_t a1, void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a2)
  {
    v4 = DerivedStorage;
    if (*DerivedStorage)
    {
      fssm_remote_getObjectID_cold_1(&v6);
      return v6;
    }

    else
    {
      result = 0;
      *a2 = *(v4 + 1);
    }
  }

  else
  {
    fssm_remote_getObjectID_cold_2(&v7);
    return v7;
  }

  return result;
}

uint64_t figCSSTokenWalkerRegisterFigCSSTokenWalker()
{
  result = _CFRuntimeRegisterClass();
  sFigCSSTokenWalkerID = result;
  return result;
}

uint64_t FigCSSTokenWalkerCreate(uint64_t a1, const void *a2, uint64_t *a3)
{
  if (a2)
  {
    if (a3)
    {
      MEMORY[0x19A8D3660](&FigCSSTokenWalkerGetTypeID_sRegisterFigCSSTokenWalkerOnce, figCSSTokenWalkerRegisterFigCSSTokenWalker);
      Instance = _CFRuntimeCreateInstance();
      if (Instance)
      {
        v7 = Instance;
        *(Instance + 16) = CFRetain(a2);
        *(v7 + 24) = CFArrayGetCount(a2);
        *(v7 + 32) = -1;
        v8 = FigCSSEOFTokenCreate(a1, (v7 + 48));
        if (v8)
        {
          CFRelease(v7);
        }

        else
        {
          *a3 = v7;
        }
      }

      else
      {
        FigCSSTokenWalkerCreate_cold_1(&v10);
        return v10;
      }
    }

    else
    {
      FigCSSTokenWalkerCreate_cold_2(&v11);
      return v11;
    }
  }

  else
  {
    FigCSSTokenWalkerCreate_cold_3(&v12);
    return v12;
  }

  return v8;
}

uint64_t FigCSSTokenWalkerGetCurrentInputToken(uint64_t a1, void *a2, _DWORD *a3)
{
  if (!a1)
  {
    FigCSSTokenWalkerGetCurrentInputToken_cold_1(&v10);
    return v10;
  }

  v5 = *(a1 + 32);
  if (v5 == -1)
  {
    ValueAtIndex = 0;
    if (!a2)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  if (v5 < *(a1 + 24))
  {
    ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 16), v5);
    if (!a2)
    {
      goto LABEL_8;
    }

LABEL_7:
    *a2 = ValueAtIndex;
    goto LABEL_8;
  }

  ValueAtIndex = *(a1 + 48);
  if (a2)
  {
    goto LABEL_7;
  }

LABEL_8:
  if (!a3)
  {
    return 0;
  }

  v9 = 0;
  if (ValueAtIndex)
  {
    result = FigCSSTokenGetTokenType(ValueAtIndex, &v9);
    if (result)
    {
      return result;
    }

    v8 = v9;
  }

  else
  {
    v8 = 0;
  }

  result = 0;
  *a3 = v8;
  return result;
}

double FigCSSTokenWalkerReconsumeInputToken(uint64_t a1)
{
  if (a1)
  {
    if (*(a1 + 32) == -1)
    {

      return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", 0, 4294949485, "(Fig)", 291, v1);
    }

    else
    {
      *(a1 + 40) = 1;
    }
  }

  else
  {
    FigCSSTokenWalkerReconsumeInputToken_cold_1(&v3);
  }

  return result;
}

double figCSSTokenWalker_Init(uint64_t a1)
{
  *(a1 + 48) = 0;
  result = 0.0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  return result;
}

void figCSSTokenWalker_Finalize(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    CFRelease(v2);
    *(a1 + 16) = 0;
  }

  v3 = *(a1 + 48);
  if (v3)
  {
    CFRelease(v3);
    *(a1 + 48) = 0;
  }
}

void fnum_updateExpectedProgressTargets(uint64_t a1)
{
  ExpectedProgressTarget = fnum_createExpectedProgressTarget(a1);
  FigCFWeakReferenceTableApplyFunction();
  if (ExpectedProgressTarget)
  {

    CFRelease(ExpectedProgressTarget);
  }
}

uint64_t fnum_scheduleDeadlineCleanup(uint64_t a1, int64_t a2)
{
  v3 = FigCFWeakReferenceHolderCreateWithReferencedObject();
  if (v3)
  {
    v4 = v3;
    v5 = dispatch_time(0, a2);
    GlobalNetworkBufferingQueue = FigThreadGetGlobalNetworkBufferingQueue();
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 0x40000000;
    v8[2] = __fnum_scheduleDeadlineCleanup_block_invoke;
    v8[3] = &__block_descriptor_tmp_7;
    v8[4] = v4;
    dispatch_after(v5, GlobalNetworkBufferingQueue, v8);
    return 0;
  }

  else
  {
    fnum_scheduleDeadlineCleanup_cold_1(&v9);
    return v9;
  }
}

uint64_t FigNetworkUrgencyCancelDeadline(uint64_t result, uint64_t a2)
{
  if (result)
  {
    if (a2)
    {
      return FigNetworkUrgencyCancelDeadline_cold_1(result);
    }
  }

  return result;
}

uint64_t fnum_createExpectedProgressTarget(uint64_t a1)
{
  v1 = *(a1 + 160);
  if (v1)
  {
    v2 = 0x7FFFFFFFFFFFFFFFLL;
    do
    {
      if (v2 >= v1[2])
      {
        v2 = v1[2];
      }

      v1 = *v1;
    }

    while (v1);
    if (*(a1 + 120))
    {
      return FigCFNumberCreateSInt64();
    }
  }

  else
  {
    v2 = *(a1 + 120);
  }

  if (v2)
  {
    return FigCFNumberCreateSInt64();
  }

  return 0;
}

uint64_t fnum_setHTTPRequestExpectedProgressTarget(uint64_t a1, uint64_t a2)
{
  VTable = CMBaseObjectGetVTable();
  v6 = *(VTable + 8);
  result = VTable + 8;
  v7 = *(v6 + 56);
  if (v7)
  {

    return v7(a1, @"FHRP_ExpectedProgressTarget", a2);
  }

  return result;
}

uint64_t __FigNetworkUrgencyMonitorGetClassID_block_invoke()
{
  result = _CFRuntimeRegisterClass();
  sFigNetworkUrgencyMonitorID = result;
  return result;
}

double fnum_Init(_OWORD *a1)
{
  result = 0.0;
  a1[9] = 0u;
  a1[10] = 0u;
  a1[7] = 0u;
  a1[8] = 0u;
  a1[5] = 0u;
  a1[6] = 0u;
  a1[3] = 0u;
  a1[4] = 0u;
  a1[1] = 0u;
  a1[2] = 0u;
  return result;
}

uint64_t FigNetworkUrgencyMonitorCreate(uint64_t a1, uint64_t *a2)
{
  MEMORY[0x19A8D3660](&sFigPlayerInitializeBufferDurationParameters, fnum_initializeBufferDurationParameters);
  *a2 = 0;
  if (FigNetworkUrgencyMonitorGetClassID_sRegisterFigNetworkUrgencyMonitorTypeOnce != -1)
  {
    FigNetworkUrgencyMonitorCreate_cold_1();
  }

  Instance = _CFRuntimeCreateInstance();
  if (!Instance)
  {
    FigNetworkUrgencyMonitorCreate_cold_3(&v18);
    return v18;
  }

  v4 = Instance;
  v5 = FigReentrantMutexCreate();
  *(v4 + 112) = v5;
  if (!v5)
  {
    v16 = 1069;
LABEL_18:
    if (FigNetworkUrgencyMonitorCreate_cold_2(v16, &v18))
    {
      return 0;
    }

    v14 = v18;
LABEL_20:
    CFRelease(v4);
    return v14;
  }

  *(v4 + 160) = 0;
  *(v4 + 104) = 0x7FFFFFFFFFFFFFFFLL;
  v6 = MEMORY[0x1E6960C70];
  *(v4 + 132) = *MEMORY[0x1E6960C70];
  *(v4 + 148) = *(v6 + 16);
  *(v4 + 168) = v4 + 160;
  v7 = FigCFWeakReferenceTableCreate();
  if (v7)
  {
    v14 = v7;
    goto LABEL_20;
  }

  v8 = FigReentrantMutexCreate();
  *(v4 + 40) = v8;
  if (!v8)
  {
    v16 = 1079;
    goto LABEL_18;
  }

  GlobalNetworkBufferingQueue = FigThreadGetGlobalNetworkBufferingQueue();
  v10 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, GlobalNetworkBufferingQueue);
  *(v4 + 48) = v10;
  if (!v10)
  {
    v16 = 1082;
    goto LABEL_18;
  }

  v11 = FigCFWeakReferenceHolderCreateWithReferencedObject();
  if (!v11)
  {
    v16 = 1086;
    goto LABEL_18;
  }

  v12 = v11;
  dispatch_set_context(*(v4 + 48), v11);
  dispatch_source_set_timer(*(v4 + 48), 0xFFFFFFFFFFFFFFFFLL, 0xFFFFFFFFFFFFFFFFLL, 0);
  dispatch_source_set_event_handler_f(*(v4 + 48), fnum_bufferDepletionUpdateTimerProc);
  CFRetain(v12);
  v13 = *(v4 + 48);
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 0x40000000;
  v17[2] = __FigNetworkUrgencyMonitorCreate_block_invoke;
  v17[3] = &__block_descriptor_tmp_4;
  v17[4] = v12;
  dispatch_source_set_cancel_handler(v13, v17);
  FigSimpleMutexLock();
  FigSimpleMutexLock();
  *(v4 + 120) = 0;
  FigSimpleMutexUnlock();
  fnum_updateExpectedProgressTargets(v4);
  *(v4 + 128) = 1;
  fnum_rescheduleBufferDepletionUpdateTimer(v4, sFigNetworkUrgencyMonitorBufferDepletionGracePeriodNanoseconds);
  FigSimpleMutexUnlock();
  dispatch_resume(*(v4 + 48));
  *a2 = v4;
  CFRelease(v12);
  return 0;
}

double fnum_initializeBufferDurationParameters(uint64_t a1)
{
  FigNote_AllowInternalDefaultLogs();
  fig_note_initialize_category_with_default_work_cf();
  fig_note_initialize_category_with_default_work_cf();
  FigGetCFPreferenceDoubleWithDefault();
  if (v1 != *&_MergedGlobals_1)
  {
    _MergedGlobals_1 = *&v1;
  }

  FigGetCFPreferenceDoubleWithDefault();
  if (v2 != *&qword_1ED4C9F68)
  {
    qword_1ED4C9F68 = *&v2;
  }

  FigGetCFPreferenceDoubleWithDefault();
  v4 = *&sFigNetworkUrgencyMonitorBufferDepletionGracePeriod;
  if (v3 != *&sFigNetworkUrgencyMonitorBufferDepletionGracePeriod)
  {
    sFigNetworkUrgencyMonitorBufferDepletionGracePeriod = *&v3;
    v4 = v3;
  }

  sFigNetworkUrgencyMonitorBufferDepletionUpdatePeriodNanoseconds = (*&qword_1ED4C9F68 * 1000000000.0);
  result = v4 * 1000000000.0;
  sFigNetworkUrgencyMonitorBufferDepletionGracePeriodNanoseconds = (v4 * 1000000000.0);
  return result;
}

void __FigNetworkUrgencyMonitorCreate_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    CFRelease(v1);
  }
}

void fnum_timebaseRateChangedCallback(int a1, CFTypeRef cf)
{
  if (cf)
  {
    CFRetain(cf);
  }

  GlobalNetworkBufferingQueue = FigThreadGetGlobalNetworkBufferingQueue();
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = __fnum_timebaseRateChangedCallback_block_invoke;
  block[3] = &__block_descriptor_tmp_5;
  block[4] = cf;
  dispatch_async(GlobalNetworkBufferingQueue, block);
}

void fnum_timebaseJumpedCallback(int a1, CFTypeRef cf)
{
  if (cf)
  {
    CFRetain(cf);
  }

  GlobalNetworkBufferingQueue = FigThreadGetGlobalNetworkBufferingQueue();
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = __fnum_timebaseJumpedCallback_block_invoke;
  block[3] = &__block_descriptor_tmp_6;
  block[4] = cf;
  dispatch_async(GlobalNetworkBufferingQueue, block);
}

void fnum_releaseReadOnlyTimebase(uint64_t a1)
{
  if (*(a1 + 16))
  {
    CMNotificationCenterGetDefaultLocalCenter();
    FigNotificationCenterRemoveWeakListener();
    CMNotificationCenterGetDefaultLocalCenter();
    FigNotificationCenterRemoveWeakListener();
    v2 = *(a1 + 16);
    if (v2)
    {
      CFRelease(v2);
      *(a1 + 16) = 0;
    }
  }
}

void fnum_uninstallTimelineConverter(uint64_t a1)
{
  CMNotificationCenterGetDefaultLocalCenter();
  FigNotificationCenterRemoveWeakListener();
  v2 = *(a1 + 24);
  if (v2)
  {
    CFRelease(v2);
    *(a1 + 24) = 0;
  }
}

void fnum_handleL2L3TimelineMappingChangedNotification(int a1, CFTypeRef cf)
{
  if (cf)
  {
    CFRetain(cf);
  }

  GlobalNetworkBufferingQueue = FigThreadGetGlobalNetworkBufferingQueue();
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = __fnum_handleL2L3TimelineMappingChangedNotification_block_invoke;
  block[3] = &__block_descriptor_tmp_8_1;
  block[4] = cf;
  dispatch_async(GlobalNetworkBufferingQueue, block);
}

uint64_t OUTLINED_FUNCTION_0_24(uint64_t a1)
{

  return FigSimpleMutexLock();
}

uint64_t OUTLINED_FUNCTION_3_17(uint64_t a1)
{

  return FigNotificationCenterAddWeakListener();
}

void VMC2MakeOutputCallbacksForImageQueueArray(const __CFArray *a1, const __CFArray *a2, uint64_t a3, void *a4)
{
  if (a1)
  {
    if (a4)
    {
      if (a3 == 96)
      {
        v8 = malloc_type_calloc(1uLL, 0x20uLL, 0x700402B80F0C4uLL);
        if (!v8)
        {
          v18 = 0;
          goto LABEL_44;
        }

        Count = CFArrayGetCount(a1);
        if (a2)
        {
          v10 = CFArrayGetCount(a2);
        }

        else
        {
          v10 = 0;
        }

        if (Count != v10)
        {
          VMC2MakeOutputCallbacksForImageQueueArray_cold_1(&value);
          v18 = 0;
          goto LABEL_44;
        }

        cf = a1;
        if (Count)
        {
          v14 = *MEMORY[0x1E695E480];
          v15 = MEMORY[0x1E695E9C0];
          Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], Count, MEMORY[0x1E695E9C0]);
          v17 = CFArrayCreateMutable(v14, Count, v15);
          v18 = v17;
          if (!Mutable)
          {
            VMC2MakeOutputCallbacksForImageQueueArray_cold_3(&value);
            if (!v18)
            {
              goto LABEL_44;
            }

            goto LABEL_46;
          }

          v29 = v8;
          if (!v17)
          {
            VMC2MakeOutputCallbacksForImageQueueArray_cold_2(&value);
            goto LABEL_45;
          }

          if (Count >= 1)
          {
            v19 = 0;
            v20 = *MEMORY[0x1E695E4C0];
            v31 = *MEMORY[0x1E695E4D0];
            while (1)
            {
              ValueAtIndex = CFArrayGetValueAtIndex(a2, v19);
              value = 0;
              if (ValueAtIndex && (v22 = ValueAtIndex, v23 = CFGetTypeID(ValueAtIndex), v23 == CFDictionaryGetTypeID()))
              {
                CFDictionaryGetValue(v22, @"DestinationPixelBufferAttributes");
                v24 = CFDictionaryGetValue(v22, @"EnsureModifiableImageBuffers") == v31 ? v31 : v20;
              }

              else
              {
                v24 = v20;
              }

              if (VTPixelBufferConformerCreateWithAttributes())
              {
                break;
              }

              CFArrayAppendValue(v18, value);
              CFArrayAppendValue(Mutable, v24);
              if (Count == ++v19)
              {
                goto LABEL_28;
              }
            }

LABEL_45:
            CFRelease(Mutable);
            v8 = v29;
            if (v18)
            {
LABEL_46:
              CFRelease(v18);
              v18 = 0;
            }

LABEL_44:
            free(v18);
            free(v8);
            return;
          }

LABEL_28:
          v8 = v29;
        }

        else
        {
          Mutable = 0;
          v18 = 0;
        }

        v8[1] = Mutable;
        v8[2] = v18;
        v18 = malloc_type_calloc(Count, 4uLL, 0x100004052888210uLL);
        if (!v18)
        {
          VMC2MakeOutputCallbacksForImageQueueArray_cold_5(&value);
          goto LABEL_44;
        }

        if (Count < 1)
        {
          if (Count)
          {
            goto LABEL_43;
          }
        }

        else
        {
          v25 = 0;
          v26 = 0;
          do
          {
            v27 = CFArrayGetValueAtIndex(a2, v25);
            if (v27)
            {
              v28 = CFGetTypeID(v27);
              if (v28 == CFDictionaryGetTypeID())
              {
                LODWORD(value) = 0;
                if (FigCFDictionaryGetInt32IfPresent())
                {
                  *(v18 + v25) = value;
                  ++v26;
                }
              }
            }

            ++v25;
          }

          while (Count != v25);
          if (v26 != Count)
          {
            if (v26)
            {
              VMC2MakeOutputCallbacksForImageQueueArray_cold_4(&value);
              goto LABEL_44;
            }

LABEL_43:
            *v8 = CFRetain(cf);
            *a4 = 0;
            a4[1] = v8;
            a4[2] = vmciqa_setSourceInfo;
            a4[3] = vmciqa_getSafeDisplayDuration;
            a4[4] = vmciqa_installOccupancyChangedCallback;
            a4[5] = vmciqa_removeOccupancyChangedCallback;
            a4[6] = vmciqa_canOutputImage;
            a4[7] = vmciqa_outputImage;
            a4[8] = vmciqa_flushOutput;
            a4[9] = vmciqa_releaseOutput;
            a4[10] = vmciqa_postNotification;
            a4[11] = vmciqa_copyGPURegistryID;
            v8 = 0;
            goto LABEL_44;
          }
        }

        v8[3] = v18;
        v18 = 0;
        goto LABEL_43;
      }

      emitter = fig_log_get_emitter();
      v12 = v4;
      v13 = 539;
    }

    else
    {
      emitter = fig_log_get_emitter();
      v12 = v4;
      v13 = 536;
    }
  }

  else
  {
    emitter = fig_log_get_emitter();
    v12 = v4;
    v13 = 534;
  }

  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 4294954473, "<<<< VMC2OutputToPreparedImageQueue >>>>", v13, v12);
}

CFIndex vmciqa_setSourceInfo(CFArrayRef *a1, int a2, int a3, __int128 *a4, __int128 *a5)
{
  v9 = *a1;
  result = CFArrayGetCount(*a1);
  v11 = result;
  if (a2)
  {
    if (a3)
    {
      v12 = 3;
    }

    else
    {
      v12 = 1;
    }
  }

  else if (*(a4 + 3) & 0x1D) == 1 && (*(a5 + 12))
  {
    v12 = 2;
  }

  else
  {
    v12 = 0;
  }

  if (result >= 1)
  {
    v13 = 0;
    do
    {
      ValueAtIndex = CFArrayGetValueAtIndex(v9, v13);
      v20 = *a4;
      v21 = *(a4 + 2);
      v18 = *a5;
      v19 = *(a5 + 2);
      VTable = CMBaseObjectGetVTable();
      v16 = *(VTable + 16);
      result = VTable + 16;
      v17 = *(v16 + 56);
      if (v17)
      {
        v24 = v20;
        v25 = v21;
        v22 = v18;
        v23 = v19;
        result = v17(ValueAtIndex, v12, &v24, &v22);
      }

      ++v13;
    }

    while (v11 != v13);
  }

  return result;
}

uint64_t vmciqa_getSafeDisplayDuration@<X0>(CFArrayRef *a1@<X0>, CMTime *a2@<X8>)
{
  v3 = *a1;
  result = CFArrayGetCount(*a1);
  *a2 = **&MEMORY[0x1E6960C88];
  if (result >= 1)
  {
    v5 = result;
    v6 = 0;
    v7 = MEMORY[0x1E6960C70];
    do
    {
      ValueAtIndex = CFArrayGetValueAtIndex(v3, v6);
      memset(&v12, 0, sizeof(v12));
      v9 = *(*(CMBaseObjectGetVTable() + 16) + 80);
      if (v9)
      {
        v9(&v12, ValueAtIndex);
      }

      else
      {
        v12 = *v7;
      }

      time1 = *a2;
      v10 = v12;
      result = CMTimeMinimum(a2, &time1, &v10);
      ++v6;
    }

    while (v5 != v6);
  }

  return result;
}

uint64_t vmciqa_installOccupancyChangedCallback(CFArrayRef *a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v6 = *a1;
  Count = CFArrayGetCount(*a1);
  if (sRegisterOccupancyChangedBlobTypeOnce != -1)
  {
    vmciqa_installOccupancyChangedCallback_cold_1();
  }

  Instance = _CFRuntimeCreateInstance();
  if (Instance)
  {
    v9 = Instance;
    FigCFWeakReferenceStore();
    *(v9 + 24) = a3;
    if (Count >= 1)
    {
      for (i = 0; i != Count; ++i)
      {
        CFArrayGetValueAtIndex(v6, i);
        CMNotificationCenterGetDefaultLocalCenter();
        FigNotificationCenterAddWeakListener();
      }
    }

    result = 0;
    *a4 = v9;
  }

  else
  {
    vmciqa_installOccupancyChangedCallback_cold_2(&v12);
    return v12;
  }

  return result;
}

uint64_t vmciqa_removeOccupancyChangedCallback(CFArrayRef *a1, const void *a2)
{
  v3 = *a1;
  Count = CFArrayGetCount(*a1);
  if (Count >= 1)
  {
    v5 = Count;
    for (i = 0; i != v5; ++i)
    {
      CFArrayGetValueAtIndex(v3, i);
      CMNotificationCenterGetDefaultLocalCenter();
      FigNotificationCenterRemoveWeakListener();
      FigImageQueueGetFigBaseObject();
      v8 = v7;
      v9 = *(CMBaseObjectGetVTable() + 8);
      if (*v9 >= 2uLL)
      {
        v10 = v9[8];
        if (v10)
        {
          v10(v8);
        }
      }
    }
  }

  if (a2)
  {
    CFRelease(a2);
  }

  return 0;
}

uint64_t vmciqa_canOutputImage(CFArrayRef *a1)
{
  v1 = *a1;
  Count = CFArrayGetCount(*a1);
  if (Count < 1)
  {
    return 100;
  }

  v3 = Count;
  v4 = 0;
  LODWORD(v5) = 100;
  do
  {
    ValueAtIndex = CFArrayGetValueAtIndex(v1, v4);
    v7 = *(*(CMBaseObjectGetVTable() + 16) + 24);
    if (v7)
    {
      v8 = v7(ValueAtIndex);
    }

    else
    {
      v8 = 0;
    }

    if (v8 >= v5)
    {
      v5 = v5;
    }

    else
    {
      v5 = v8;
    }

    ++v4;
  }

  while (v3 != v4);
  return v5;
}

uint64_t vmciqa_outputImage(const __CFArray **a1, __CVBuffer *a2, OpaqueCMTaggedBufferGroup *a3, char a4, uint64_t a5, __int128 *a6, unsigned int a7)
{
  v7 = *a1;
  if (!*a1)
  {
    return 0;
  }

  Count = CFArrayGetCount(*a1);
  v36 = Count - 1;
  if (Count < 1)
  {
    return 0;
  }

  v9 = Count;
  v10 = 0;
  v11 = 0;
  v12 = 0;
  theArray = a1[2];
  v35 = a1[1];
  if (a2)
  {
    v13 = 1;
  }

  else
  {
    v13 = a3 == 0;
  }

  v14 = v13;
  do
  {
    ValueAtIndex = CFArrayGetValueAtIndex(v7, v11);
    CVPixelBufferForTag = a2;
    if ((v14 & 1) != 0 || (v17 = FigTagMakeWithSInt64Value(), v19 = v18, *&v43.category = v17, v43.value = v19, (CVPixelBufferForTag = CMTaggedBufferGroupGetCVPixelBufferForTag(a3, v43, 0)) != 0))
    {
      CFArrayGetValueAtIndex(theArray, v11);
      CFArrayGetValueAtIndex(v35, v11);
      v22 = (a4 & 1) == 0 || v12 != 0 || v11 < v36;
      v23 = VTPixelBufferConformerCopyConformedPixelBuffer();
      if (v23)
      {
        if (v10)
        {
          v10 = v10;
        }

        else
        {
          v10 = v23;
        }
      }

      else
      {
        if (!CVPixelBufferForTag)
        {
          v12 = 1;
        }

        if (v22 && CVPixelBufferForTag == 0)
        {
          v24 = 0;
        }

        else
        {
          v24 = 0x10000;
        }

        v39 = *a6;
        v40 = *(a6 + 2);
        v25 = *(*(CMBaseObjectGetVTable() + 16) + 32);
        if (v25)
        {
          v41 = v39;
          v42 = v40;
          v26 = v25(ValueAtIndex, 0, a5, &v41, v24 | a7);
        }

        else
        {
          v26 = -12782;
        }

        if (v10)
        {
          v27 = 1;
        }

        else
        {
          v27 = v26 == 0;
        }

        if (v27)
        {
          v10 = v10;
        }

        else
        {
          v10 = v26;
        }
      }
    }

    ++v11;
  }

  while (v9 != v11);
  return v10;
}

CFIndex vmciqa_flushOutput(CFArrayRef *a1)
{
  v1 = *a1;
  result = CFArrayGetCount(*a1);
  if (result >= 1)
  {
    v3 = result;
    for (i = 0; i != v3; ++i)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(v1, i);
      VTable = CMBaseObjectGetVTable();
      v7 = *(VTable + 16);
      result = VTable + 16;
      v8 = *(v7 + 16);
      if (v8)
      {
        result = v8(ValueAtIndex);
      }
    }
  }

  return result;
}

void vmciqa_releaseOutput(void *a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = *(a1 + 1);
  if (v3)
  {
    CFRelease(v3);
  }

  v4 = *(a1 + 2);
  if (v4)
  {
    CFRelease(v4);
  }

  free(*(a1 + 3));

  free(a1);
}

uint64_t vmciqa_postNotification(CFArrayRef *a1, uint64_t a2, uint64_t a3)
{
  v5 = *a1;
  Count = CFArrayGetCount(*a1);
  if (Count < 1)
  {
    return 0;
  }

  v7 = Count;
  LODWORD(v8) = 0;
  for (i = 0; i != v7; ++i)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(v5, i);
    v11 = *(*(CMBaseObjectGetVTable() + 16) + 88);
    if (v11)
    {
      v12 = v11(ValueAtIndex, a2, a3);
    }

    else
    {
      v12 = -12782;
    }

    if (v8)
    {
      v13 = 1;
    }

    else
    {
      v13 = v12 == 0;
    }

    if (v13)
    {
      v8 = v8;
    }

    else
    {
      v8 = v12;
    }
  }

  return v8;
}

__CFArray *vmciqa_copyGPURegistryID(CFArrayRef *a1)
{
  v1 = *a1;
  Count = CFArrayGetCount(*a1);
  v3 = *MEMORY[0x1E695E480];
  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], Count, MEMORY[0x1E695E9C0]);
  if (Mutable)
  {
    v5 = Count < 1;
  }

  else
  {
    v5 = 1;
  }

  if (!v5)
  {
    v6 = 0;
    v7 = *MEMORY[0x1E695E738];
    do
    {
      CFArrayGetValueAtIndex(v1, v6);
      cf = 0;
      FigImageQueueGetFigBaseObject();
      v9 = v8;
      v10 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      if (v10)
      {
        v10(v9, @"FigImageQueueProperty_GPURegistryID", v3, &cf);
      }

      if (cf)
      {
        v11 = cf;
      }

      else
      {
        v11 = v7;
      }

      CFArrayAppendValue(Mutable, v11);
      if (cf)
      {
        CFRelease(cf);
      }

      ++v6;
    }

    while (Count != v6);
  }

  return Mutable;
}

void vmciqa_OccupancyMonitorCallback(uint64_t a1, uint64_t a2)
{
  v3 = MEMORY[0x19A8D0E00](a2 + 16);
  if (v3)
  {
    v4 = v3;
    (*(a2 + 24))();

    CFRelease(v4);
  }
}

uint64_t RegisterVMC2OutputCallbacksType()
{
  result = _CFRuntimeRegisterClass();
  sOccupancyChangedBlobID = result;
  return result;
}

uint64_t InitOccupancyChangedBlob(uint64_t result)
{
  *(result + 16) = 0;
  *(result + 24) = 0;
  return result;
}

void FinalizeOccupancyChangedBlob(uint64_t a1)
{
  v2 = *(a1 + 16);
  v1 = (a1 + 16);
  if (v2)
  {
    objc_destroyWeak(v1);
  }
}

uint64_t FigMetricPlaybackEventInstallDeserializationHandler(uint64_t result)
{
  switch(result)
  {
    case 0:
    case 1:
    case 2:
    case 3:
    case 5:
    case 6:
    case 7:
    case 8:
    case 9:
    case 10:
    case 11:
    case 12:
    case 13:
    case 14:
    case 15:
      result = FigMetricEventClassInstallEventDeserializeHandler();
      break;
    default:
      return result;
  }

  return result;
}

uint64_t FigMetricInstallAllPlaybackDeserializationHandlers()
{
  FigMetricEventClassInstallEventDeserializeHandler();
  FigMetricEventClassInstallEventDeserializeHandler();
  FigMetricEventClassInstallEventDeserializeHandler();
  FigMetricEventClassInstallEventDeserializeHandler();
  FigMetricEventClassInstallEventDeserializeHandler();
  FigMetricEventClassInstallEventDeserializeHandler();
  FigMetricEventClassInstallEventDeserializeHandler();
  FigMetricEventClassInstallEventDeserializeHandler();
  FigMetricEventClassInstallEventDeserializeHandler();
  FigMetricEventClassInstallEventDeserializeHandler();
  FigMetricEventClassInstallEventDeserializeHandler();
  FigMetricEventClassInstallEventDeserializeHandler();
  FigMetricEventClassInstallEventDeserializeHandler();

  return FigMetricEventClassInstallEventDeserializeHandler();
}

uint64_t FigAudioQueueCreateWithOptions(const __CFAllocator *a1, const opaqueCMFormatDescription *a2, uint64_t a3, int a4, uint64_t a5, uint64_t *a6)
{
  v58 = *MEMORY[0x1E69E9840];
  v45 = 0;
  v55 = 0u;
  v56 = 0u;
  v53 = 0u;
  v54 = 0u;
  *__str = 0u;
  MEMORY[0x19A8D3660](&faq_oneTimeInitialization_sInitializationOnce, faq_oneTimeInitializationWork);
  if (!a2)
  {
    FigAudioQueueCreateWithOptions_cold_10(&time);
    return LODWORD(time.value);
  }

  if (!a3)
  {
    FigAudioQueueCreateWithOptions_cold_9(&time);
    return LODWORD(time.value);
  }

  if (!a6)
  {
    FigAudioQueueCreateWithOptions_cold_8(&time);
    return LODWORD(time.value);
  }

  if ((a4 & 0x402) == 0x400)
  {
    FigAudioQueueCreateWithOptions_cold_7(&time);
    return LODWORD(time.value);
  }

  MEMORY[0x19A8D3660](&FigAudioQueueGetTypeID_sRegisterFAQTypeOnce, faq_registerFAQType);
  Instance = _CFRuntimeCreateInstance();
  if (!Instance)
  {
    FigAudioQueueCreateWithOptions_cold_6(&time);
    return LODWORD(time.value);
  }

  v13 = Instance;
  v14 = (Instance + 800);
  *(Instance + 800) = 0;
  theString = 0;
  cf = 0;
  v48 = 0;
  v49 = 0;
  Value = FigCFDictionaryGetValue();
  if (Value)
  {
    v16 = a2;
    v47 = 0;
    type = OS_LOG_TYPE_DEFAULT;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    a2 = v16;
  }

  if (FigCFDictionaryGetValueIfPresent())
  {
    *(v13 + 264) = cf;
  }

  if (FigCFDictionaryGetValueIfPresent())
  {
    CFStringGetCString(theString, v14, 16, 0x600u);
  }

  if (FigCFDictionaryGetValueIfPresent())
  {
    DispatchQueue = FigDispatchQueueHolderGetDispatchQueue();
    *(v13 + 32) = DispatchQueue;
    if (DispatchQueue)
    {
      dispatch_retain(DispatchQueue);
    }
  }

  if (FigCFDictionaryGetValueIfPresent())
  {
    v19 = v48;
    if (v48)
    {
      v19 = CFRetain(v48);
    }

    *(v13 + 272) = v19;
  }

  v20 = FigReentrantMutexCreate();
  *(v13 + 24) = v20;
  if (!v20)
  {
    FigAudioQueueCreateWithOptions_cold_5(&time);
LABEL_66:
    value_low = LODWORD(time.value);
    goto LABEL_36;
  }

  snprintf(__str, 0x50uLL, "com.apple.coremedia.faq.asyncQueue.%s", v14);
  if (!*(v13 + 32))
  {
    v21 = FigDispatchQueueCreateWithPriority();
    *(v13 + 32) = v21;
    if (!v21)
    {
      FigAudioQueueCreateWithOptions_cold_4(&time);
      goto LABEL_66;
    }
  }

  snprintf(__str, 0x50uLL, "com.apple.coremedia.faq.deferredAQPropertyHandler.%s", v14);
  v22 = FigDispatchQueueCreateWithPriority();
  *(v13 + 40) = v22;
  if (!v22)
  {
    FigAudioQueueCreateWithOptions_cold_3(&time);
    goto LABEL_66;
  }

  v23 = FigCFWeakReferenceHolderCreateWithReferencedObject();
  *(v13 + 80) = v23;
  if (!v23)
  {
    value_low = 4294954355;
    goto LABEL_36;
  }

  *(v13 + 48) = a4;
  *(v13 + 64) = FigBufferQueueRetain();
  *(v13 + 72) = (*(v13 + 48) & 0x40) != 0;
  *(v13 + 176) = CFArrayCreateMutable(a1, 0, MEMORY[0x1E695E9C0]);
  *(v13 + 184) = 0;
  *(v13 + 208) = 1065353216;
  *(v13 + 216) = 1065353216;
  *(v13 + 224) = 1065353216;
  *(v13 + 280) = 1065353216;
  *(v13 + 352) = 1953064047;
  *(v13 + 672) = faq_scaledEditRateSupportValidator_one32nd_to_32;
  CFRetain(*(v13 + 80));
  v24 = *(v13 + 64);
  v25 = *(v13 + 80);
  v44 = *MEMORY[0x1E6960CC0];
  *&time.value = *MEMORY[0x1E6960CC0];
  v26 = *(MEMORY[0x1E6960CC0] + 16);
  time.epoch = v26;
  v27 = CMBufferQueueInstallTrigger(v24, faq_sourceDataBecameReady, v25, 7, &time, (v13 + 88));
  if (v27)
  {
    goto LABEL_51;
  }

  if ((*(v13 + 48) & 2) != 0)
  {
    v28 = *(v13 + 64);
    v29 = *(v13 + 80);
    time = **&MEMORY[0x1E6960C70];
    v27 = CMBufferQueueInstallTrigger(v28, faq_sourceEndOfDataReached, v29, 8, &time, (v13 + 96));
    if (v27)
    {
      goto LABEL_51;
    }
  }

  CMNotificationCenterGetDefaultLocalCenter();
  v27 = FigNotificationCenterAddWeakListener();
  if (v27)
  {
    goto LABEL_51;
  }

  CMNotificationCenterGetDefaultLocalCenter();
  v27 = FigNotificationCenterAddWeakListener();
  if (v27)
  {
    goto LABEL_51;
  }

  *(v13 + 128) = v44;
  *(v13 + 144) = v26;
  v30 = FigSemaphoreCreate();
  *(v13 + 296) = v30;
  if (!v30)
  {
    FigAudioQueueCreateWithOptions_cold_2(&time);
    goto LABEL_66;
  }

  AudioSampleBufferSplitterCreate((v13 + 168));
  if (v27 || (v27 = AudioSampleBufferSplitterSetSplitMethod(*(v13 + 168), 3), v27) || (v27 = AudioSampleBufferSplitterSetMaxNumberOfSplitSampleBuffers(*(v13 + 168), 3), v27))
  {
LABEL_51:
    value_low = v27;
    goto LABEL_36;
  }

  FigSimpleMutexLock();
  FigSubAudioQueueCreate(v13, a2, Value, MEMORY[0x1E6960CC0], &v45);
  if (v31)
  {
    value_low = v31;
    FigSimpleMutexUnlock();
    if (v45)
    {
      CFRelease(v45);
    }

    goto LABEL_36;
  }

  v33 = v45;
  if (!*(v13 + 16))
  {
    CFArrayInsertValueAtIndex(*(v13 + 176), 0, v45);
  }

  FigSimpleMutexUnlock();
  if (v33)
  {
    CFRelease(v33);
  }

  time.value = @"com.apple.coremedia.audioqueue.source";
  v34 = CFDictionaryCreate(*MEMORY[0x1E695E480], MEMORY[0x1E69631F0], &time, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  value_low = FigThreadCreate();
  if (!value_low)
  {
    if (!v34)
    {
      goto LABEL_44;
    }

    goto LABEL_43;
  }

  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v42, v43, v6);
  if (v34)
  {
LABEL_43:
    CFRelease(v34);
  }

LABEL_44:
  if (value_low)
  {
LABEL_36:
    CFRelease(v13);
    return value_low;
  }

  *(v13 + 424) = v13;
  v35 = MEMORY[0x1E6960C70];
  v36 = *MEMORY[0x1E6960C70];
  *(v13 + 432) = *MEMORY[0x1E6960C70];
  v37 = *(v35 + 16);
  *(v13 + 448) = v37;
  *(v13 + 456) = v36;
  *(v13 + 472) = v37;
  *(v13 + 480) = v36;
  *(v13 + 496) = v37;
  *(v13 + 520) = v37;
  *(v13 + 504) = v36;
  *(v13 + 528) = v36;
  *(v13 + 544) = v37;
  *(v13 + 568) = v37;
  *(v13 + 552) = v36;
  *(v13 + 336) = v37;
  *(v13 + 320) = v36;
  v38 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, *(v13 + 32));
  *(v13 + 344) = v38;
  if (!v38)
  {
    FigAudioQueueCreateWithOptions_cold_1(&time);
    goto LABEL_66;
  }

  dispatch_source_set_timer(v38, 0xFFFFFFFFFFFFFFFFLL, 0, 0);
  v39 = *(v13 + 80);
  if (v39)
  {
    CFRetain(v39);
    v40 = *(v13 + 80);
  }

  else
  {
    v40 = 0;
  }

  dispatch_set_context(*(v13 + 344), v40);
  dispatch_set_finalizer_f(*(v13 + 344), faq_releaseWeakReferenceHolderToFaq);
  dispatch_source_set_event_handler_f(*(v13 + 344), faq_wakeupToDiscardTimerFired);
  *(v13 + 776) = voucher_copy();
  dispatch_resume(*(v13 + 344));
  *(v13 + 768) = 1;
  value_low = 0;
  *(v13 + 796) = FigAtomicIncrement32();
  *a6 = v13;
  return value_low;
}

void faq_releaseWeakReferenceHolderToFaq(CFTypeRef cf)
{
  if (cf)
  {
    CFRelease(cf);
  }
}

void faq_wakeupToDiscardTimerFired(uint64_t a1)
{
  v1 = FigCFWeakReferenceHolderCopyReferencedObject();
  if (v1)
  {
    v2 = v1;
    faq_wakeupToDiscard(v1);

    CFRelease(v2);
  }
}

uint64_t faq_disconnectFromOfflineMixer(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 702) || !*(a1 + 720))
  {
    return 0;
  }

  v4 = FigCFWeakReferenceHolderCopyReferencedObject();
  if (v4)
  {
    v5 = v4;
    AudioQueue = FigAudioQueueTimingShimGetAudioQueue(*(a2 + 40));
    v7 = FigAudioQueueOfflineMixerDisconnectAudioQueue(v5, a1, AudioQueue);
    CFRelease(v5);
    *(a1 + 648) = 0;
  }

  else
  {
    v7 = 0;
  }

  *(a2 + 702) = 0;
  return v7;
}

void faq_removeOfflineMixer(uint64_t a1)
{
  if (*(a1 + 728))
  {
    CMNotificationCenterGetDefaultLocalCenter();
    FigNotificationCenterRemoveWeakListener();
    *(a1 + 728) = 0;
  }

  v2 = *(a1 + 720);
  if (v2)
  {
    CFRelease(v2);
    *(a1 + 720) = 0;
  }
}

void faq_destroyTransitionRecord(void *a1)
{
  v2 = a1[10];
  if (v2)
  {
    CFRelease(v2);
    a1[10] = 0;
  }

  v3 = a1[11];
  if (v3)
  {
    CFRelease(v3);
  }

  free(a1);
}

uint64_t faq_removeAudioProcessingTapListeners(uint64_t result)
{
  if (*(result + 744))
  {
    v1 = result;
    CMNotificationCenterGetDefaultLocalCenter();
    FigNotificationCenterRemoveWeakListener();
    CMNotificationCenterGetDefaultLocalCenter();
    FigNotificationCenterRemoveWeakListener();
    CMNotificationCenterGetDefaultLocalCenter();
    FigNotificationCenterRemoveWeakListener();
    v2 = *(v1 + 744);
    VTable = CMBaseObjectGetVTable();
    v5 = *(VTable + 8);
    result = VTable + 8;
    v4 = v5;
    if (*v5 >= 2uLL)
    {
      v6 = v4[8];
      if (v6)
      {

        return v6(v2);
      }
    }
  }

  return result;
}

uint64_t FigAudioQueueRequestTransitionCallback(uint64_t a1, __int128 *a2, const void *a3, uint64_t a4, uint64_t a5)
{
  if (!a1)
  {
    FigAudioQueueRequestTransitionCallback_cold_5(&v16);
    return v16;
  }

  if ((*(a2 + 3) & 0x1D) != 1)
  {
    FigAudioQueueRequestTransitionCallback_cold_1(&v16);
    return v16;
  }

  if (!a3)
  {
    FigAudioQueueRequestTransitionCallback_cold_4(&v16);
    return v16;
  }

  if (!a4)
  {
    FigAudioQueueRequestTransitionCallback_cold_3(&v16);
    return v16;
  }

  FigSimpleMutexLock();
  if (*(a1 + 16))
  {
    FigAudioQueueRequestTransitionCallback_cold_2(&v16);
    v14 = v16;
  }

  else
  {
    v10 = malloc_type_calloc(1uLL, 0x68uLL, 0x10E0040F567B0A4uLL);
    if (v10)
    {
      v11 = v10;
      *(v10 + 1) = a4;
      *(v10 + 2) = a5;
      v12 = *a2;
      *(v10 + 5) = *(a2 + 2);
      *(v10 + 24) = v12;
      v13 = MEMORY[0x1E6960C70];
      *(v10 + 3) = *MEMORY[0x1E6960C70];
      *(v10 + 8) = *(v13 + 16);
      *(v10 + 18) = 0;
      *(v10 + 10) = a3;
      CFRetain(a3);
      v14 = 0;
      v11[96] = 0;
      *v11 = *(a1 + 184);
      *(a1 + 184) = v11;
      ++*(a1 + 192);
    }

    else
    {
      v14 = 4294954355;
    }
  }

  FigSimpleMutexUnlock();
  return v14;
}

uint64_t FigAudioQueueSetPropertiesToUpdateAtTransition(uint64_t a1, uint64_t a2, CFTypeRef cf)
{
  if (cf && (v6 = CFGetTypeID(cf), v6 != CFDictionaryGetTypeID()))
  {
    FigAudioQueueSetPropertiesToUpdateAtTransition_cold_1(v14);
    return v14[0];
  }

  else
  {
    FigSimpleMutexLock();
    v7 = (a1 + 184);
    do
    {
      v7 = *v7;
      if (!v7)
      {
        FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v12, v13, v14[1]);
        v9 = v10;
        goto LABEL_12;
      }
    }

    while (v7[10] != a2);
    v8 = v7[11];
    v7[11] = cf;
    if (cf)
    {
      CFRetain(cf);
    }

    if (v8)
    {
      CFRelease(v8);
    }

    v9 = 0;
LABEL_12:
    FigSimpleMutexUnlock();
  }

  return v9;
}

void faq_enqueueSourceData(uint64_t a1, int a2)
{
  v512 = *MEMORY[0x1E69E9840];
  FigSimpleMutexLock();
  if (!*(a1 + 16) && *(a1 + 64) && *(a1 + 305))
  {
    v466 = 0;
    v5 = 0;
    v6 = 0;
    *&v4 = 136315906;
    v431 = v4;
    *&v4 = 136315650;
    v420 = v4;
    *&v4 = 136316418;
    v427 = v4;
    v7 = vdupq_n_s64(4uLL);
    v479 = v7;
    v7.i64[0] = 136317186;
    v413 = v7;
    v7.i64[0] = 136317954;
    v428 = v7;
    key = *MEMORY[0x1E6962DF0];
    v8 = 1.0;
    v439 = *MEMORY[0x1E69604B0];
    v9 = 1.0;
    v436 = *MEMORY[0x1E6960510];
    v437 = *MEMORY[0x1E6960518];
    v430 = *MEMORY[0x1E6962E00];
    v432 = *MEMORY[0x1E6960490];
    v433 = *MEMORY[0x1E6960550];
    allocator = *MEMORY[0x1E695E480];
    v422 = *MEMORY[0x1E6962E10];
    v423 = *MEMORY[0x1E6960540];
    v415 = *MEMORY[0x1E6962DD8];
    v417 = *MEMORY[0x1E6960500];
    v418 = *MEMORY[0x1E6962E60];
    v449 = *MEMORY[0x1E6960560];
    v448 = *MEMORY[0x1E6960558];
    v443 = *MEMORY[0x1E69604D0];
    v455 = (a1 + 308);
    v419 = a1 + 456;
    v438 = (a1 + 184);
    v444 = (a1 + 552);
    v441 = (a1 + 528);
    v442 = *MEMORY[0x1E695E4D0];
    v435 = (a1 + 360);
    v446 = (a1 + 320);
    v416 = &block[16];
    v426 = (a1 + 424);
    v10 = MEMORY[0x1E6960C70];
    v434 = *(MEMORY[0x1E6960C70] + 12);
    v453 = *(MEMORY[0x1E6960C70] + 16);
    HIDWORD(v425) = *(MEMORY[0x1E6960CC0] + 12);
    v470 = *(MEMORY[0x1E6960CC0] + 16);
    v454 = a2;
    while (1)
    {
      if (*(a1 + 16))
      {
        goto LABEL_773;
      }

      ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 176), 0);
      if (!ValueAtIndex)
      {
        goto LABEL_773;
      }

      v12 = ValueAtIndex;
      if (ValueAtIndex[701])
      {
        goto LABEL_773;
      }

      if (a2)
      {
        if (!ValueAtIndex[104])
        {
          v6 = *(a1 + 312);
          if (FigAtomicCompareAndSwap32())
          {
            if (!v6)
            {
              *(v12 + 593) = 1;
            }
          }
        }
      }

      if (*(a1 + 16))
      {
        v13 = 0;
        goto LABEL_654;
      }

      if (!*(a1 + 306) && (*v455 > 7 || *v455 >= 2 && !*(a1 + 356) && *(v12 + 480) >= *(v12 + 100)))
      {
        v13 = 0;
        v25 = 0;
        v15 = 0;
        goto LABEL_643;
      }

      v14 = CMBufferQueueCopyHead(*(a1 + 64));
      v15 = v14;
      if (!v14 || (*(a1 + 48) & 2) != 0 && !CMSampleBufferDataIsReady(v14))
      {
        if ((*(a1 + 48) & 2) != 0 && CMBufferQueueIsAtEndOfData(*(a1 + 64)))
        {
          if (dword_1EAF16C30)
          {
            v19 = v15;
            v20 = v5;
            *block = 0;
            rhs[0] = 0;
            os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            v22 = *block;
            v23 = rhs[0];
            if (os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, rhs[0]))
            {
              v24 = v22;
            }

            else
            {
              v24 = v22 & 0xFFFFFFFE;
            }

            if (v24)
            {
              *time2 = v431;
              *&time2[4] = "subaq_enqueueOneSourceSBuf";
              *&time2[12] = 2048;
              *&time2[14] = a1;
              *&time2[22] = 2048;
              *&time2[24] = v12;
              *v498 = 2082;
              *&v498[2] = a1 + 800;
              LODWORD(v398) = 42;
              v397 = time2;
              _os_log_send_and_compose_impl(v24, 0, &time1, 128, &dword_1962D5000, os_log_and_send_and_compose_flags_and_os_log_type, v23, "<<<< FAQ >>>> %s: [%p:%p] %{public}s End of data reached -- calling FigAudioQueueStopOffline");
            }

            fig_log_call_emit_and_clean_up_after_send_and_compose();
            v5 = v20;
            a2 = v454;
            v15 = v19;
          }

          faq_stopAllAudioQueues(a1, 0, 0);
          v13 = 0;
          goto LABEL_96;
        }

LABEL_92:
        v13 = 0;
LABEL_93:
        v25 = 0;
        goto LABEL_643;
      }

      v468 = *MEMORY[0x1E6960CC0];
      *&duration.value = *MEMORY[0x1E6960CC0];
      duration.epoch = v470;
      if (*(a1 + 16))
      {
        v18 = 0;
        *&v480.value = v468;
        v480.epoch = v470;
        goto LABEL_38;
      }

      CMSampleBufferGetOutputPresentationTimeStamp(&time1.duration, v15);
      CMSampleBufferGetOutputDuration(rhs, v15);
      lhs = time1.duration;
      CMTimeAdd(time2, &lhs, rhs);
      subaq_getCurrentQueueTime(v12, rhs);
      subaq_convertAQTimeToMediaTime(a1, block);
      if ((*(a1 + 48) & 2) != 0 || (v16 = *(a1 + 416), v16 > 0.0))
      {
        *rhs = *time2;
        *&rhs[16] = *&time2[16];
        *&lhs.value = *block;
        epoch = *&block[16];
      }

      else
      {
        if (v16 >= 0.0)
        {
          *&duration.value = v468;
          duration.epoch = v470;
          goto LABEL_24;
        }

        *rhs = *block;
        *&rhs[16] = *&block[16];
        *&lhs.value = *&time1.duration.value;
        epoch = time1.duration.epoch;
      }

      lhs.epoch = epoch;
      CMTimeSubtract(&duration, rhs, &lhs);
LABEL_24:
      v480 = duration;
      if (*(a1 + 16) || (*(a1 + 48) & 2) != 0)
      {
        v18 = 0;
      }

      else
      {
        time1.duration = duration;
        *time2 = v468;
        *&time2[16] = v470;
        v18 = CMTimeCompare(&time1.duration, time2) >> 31;
      }

LABEL_38:
      if (!CMSampleBufferDataIsReady(v15) && (v18 & 1) == 0)
      {
        if (*(a1 + 73) || *(a1 + 576))
        {
          v26 = 1;
          if (FigAtomicCompareAndSwap32())
          {
            v27 = v6;
            memset(block, 0, 24);
            v28 = *(a1 + 416);
            v29 = 1.0;
            if (v28 == 0.0)
            {
              v30 = 1.0;
            }

            else
            {
              v30 = v28;
            }

            if (*(a1 + 236))
            {
              v31 = *(a1 + 232);
              v110 = v31 == 0.0;
              v29 = v31;
              if (v110)
              {
                v29 = v8;
              }
            }

            time1.duration = v480;
            CMTimeMultiplyByFloat64(time2, &time1.duration, v30 / v29);
            CMTimeAbsoluteValue(&time1.duration, time2);
            CMTimeMake(time2, 5, 1);
            CMTimeMinimum(block, &time1.duration, time2);
            if (dword_1EAF16C30)
            {
              v32 = v15;
              v33 = v5;
              *rhs = 0;
              LOBYTE(lhs.value) = 0;
              v34 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
              v35 = *rhs;
              value_low = LOBYTE(lhs.value);
              if (os_log_type_enabled(v34, lhs.value))
              {
                v37 = v35;
              }

              else
              {
                v37 = v35 & 0xFFFFFFFE;
              }

              if (v37)
              {
                v38 = *(a1 + 73);
                v39 = *(a1 + 576);
                time1.duration = v480;
                Seconds = CMTimeGetSeconds(&time1.duration);
                *&time1.duration.value = *block;
                time1.duration.epoch = *&block[16];
                v41 = CMTimeGetSeconds(&time1.duration);
                *time2 = 136316930;
                *&time2[4] = "subaq_enqueueOneSourceSBuf";
                *&time2[12] = 2048;
                *&time2[14] = a1;
                *&time2[22] = 2048;
                *&time2[24] = v12;
                *v498 = 2082;
                *&v498[2] = a1 + 800;
                *&v498[10] = 1024;
                *&v498[12] = v38;
                *&v498[16] = 1024;
                *&v498[18] = v39;
                *&v498[22] = 2048;
                *&v498[24] = Seconds;
                *&v498[32] = 2048;
                *&v498[34] = v41;
                LODWORD(v398) = 74;
                v397 = time2;
                _os_log_send_and_compose_impl(v37, 0, &time1, 128, &dword_1962D5000, v34, value_low, "<<<< FAQ >>>> %s: [%p:%p] %{public}s sbuf data isn't ready; bailing. faq->isPlaying: %d; faq->startingUp: %d; howFarAhead: %.3f, howLongToSleep: %.3f");
              }

              fig_log_call_emit_and_clean_up_after_send_and_compose();
              v5 = v33;
              a2 = v454;
              v15 = v32;
            }

            CFRetain(a1);
            *&time1.duration.value = *block;
            time1.duration.epoch = *&block[16];
            v64 = CMTimeGetSeconds(&time1.duration);
            v65 = dispatch_time(0, (v64 * 1000000000.0));
            global_queue = dispatch_get_global_queue(0, 0);
            dispatch_after_f(v65, global_queue, a1, faq_scheduledWakeupRetainedToDiscard);
            v13 = 0;
            v25 = 0;
            v26 = 1;
            v6 = v27;
            v10 = MEMORY[0x1E6960C70];
            goto LABEL_644;
          }

LABEL_154:
          v13 = 0;
          v25 = 0;
          goto LABEL_644;
        }

        goto LABEL_92;
      }

      if (!CMSampleBufferDataIsReady(v15) && *(a1 + 196))
      {
        if (dword_1EAF16C30)
        {
          v58 = v15;
          v59 = v5;
          *block = 0;
          rhs[0] = 0;
          v60 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          v61 = *block;
          v62 = rhs[0];
          if (os_log_type_enabled(v60, rhs[0]))
          {
            v63 = v61;
          }

          else
          {
            v63 = v61 & 0xFFFFFFFE;
          }

          if (v63)
          {
            *time2 = 136316162;
            *&time2[4] = "subaq_enqueueOneSourceSBuf";
            *&time2[12] = 2048;
            *&time2[14] = a1;
            *&time2[22] = 2048;
            *&time2[24] = v12;
            *v498 = 2082;
            *&v498[2] = a1 + 800;
            *&v498[10] = 2048;
            *&v498[12] = v58;
            LODWORD(v398) = 52;
            v397 = time2;
            _os_log_send_and_compose_impl(v63, 0, &time1, 128, &dword_1962D5000, v60, v62, "<<<< FAQ >>>> %s: [%p:%p] %{public}s sbuf(%p) data isn't ready; bail and wait since data needs to be ready for first buffer at transition point");
          }

          a2 = v454;
          v26 = 1;
          fig_log_call_emit_and_clean_up_after_send_and_compose();
          v13 = 0;
          v25 = 0;
          v5 = v59;
          v15 = v58;
          goto LABEL_644;
        }

        goto LABEL_92;
      }

      if (!*(a1 + 16))
      {
        Decryptor = FigSampleBufferGetDecryptor();
        v43 = *(a1 + 56);
        if (Decryptor != v43)
        {
          v67 = Decryptor;
          if (Decryptor)
          {
            v68 = CFGetTypeID(Decryptor);
            if (v68 == FigCPECryptorGetTypeID())
            {
              v43 = *(a1 + 56);
              *(a1 + 56) = v67;
              CFRetain(v67);
LABEL_234:
              if (v43)
              {
                CFRelease(v43);
              }

              subaq_setCPECryptorPropertyOnAudioQueue(a1);
              goto LABEL_58;
            }

            v79 = v6;
            v80 = v15;
            v81 = v5;
            *block = 0;
            rhs[0] = 0;
            v82 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            v83 = *block;
            v84 = rhs[0];
            if (os_log_type_enabled(v82, rhs[0]))
            {
              v85 = v83;
            }

            else
            {
              v85 = v83 & 0xFFFFFFFE;
            }

            if (v85)
            {
              *time2 = v420;
              *&time2[4] = "subaq_handleAttachmentIfPresent_Decryptor";
              *&time2[12] = 2048;
              *&time2[14] = a1;
              *&time2[22] = 2048;
              *&time2[24] = v67;
              LODWORD(v398) = 32;
              _os_log_send_and_compose_impl(v85, 0, &time1, 128, &dword_1962D5000, v82, v84, "<<<< FAQ >>>> %s: [%p] new cryptor[%p] does not conform to expected TypeID. Converting to NULL cryptor!", time2, v398, v399);
            }

            v5 = v81;
            v15 = v80;
            fig_log_call_emit_and_clean_up_after_send_and_compose();
            v43 = *(a1 + 56);
            v6 = v79;
            v10 = MEMORY[0x1E6960C70];
          }

          *(a1 + 56) = 0;
          goto LABEL_234;
        }
      }

LABEL_58:
      v44 = CMGetAttachment(v15, key, 0);
      if (v44)
      {
        FigAudioQueueSetProperty(a1, @"LoudnessInfo", v44);
      }

      a2 = v454;
      if (CMGetAttachment(v15, v439, 0))
      {
        FigSimpleMutexLock();
        if (!*(a1 + 16))
        {
          v45 = CFArrayGetValueAtIndex(*(a1 + 176), 0);
          if (v45[145] != v9)
          {
            v69 = v45;
            memset(&time1, 0, 24);
            CMSampleBufferGetOutputPresentationTimeStamp(&time1.duration, v15);
            memset(time2, 0, 24);
            *block = *&time1.duration.value;
            *&block[16] = time1.duration.epoch;
            subaq_convertMediaTimeToAQTime(a1, time2);
            subaq_schedulePlayRate2ValueForTime(a1, v69, time2, 1.0);
            *(v69 + 580) = 1065353216;
          }
        }

        FigSimpleMutexUnlock();
      }

      if (*(a1 + 104))
      {
        v46 = CMGetAttachment(v15, v437, 0);
        v47 = *(a1 + 104);
        if (v46)
        {
          v48 = CFEqual(v46, v47);
          v47 = *(a1 + 104);
          if (v48)
          {
            if (v47)
            {
              CFRelease(*(a1 + 104));
              *(a1 + 104) = 0;
            }

            if (!*(a1 + 652))
            {
              goto LABEL_122;
            }

            FigSimpleMutexLock();
            if (!*(a1 + 16))
            {
              v49 = CFArrayGetValueAtIndex(*(a1 + 176), 0);
              *(a1 + 576) = 1;
              if (dword_1EAF16C30)
              {
                v450 = v6;
                v50 = v15;
                v51 = v5;
                *block = 0;
                rhs[0] = 0;
                v52 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
                v53 = *block;
                v54 = rhs[0];
                if (os_log_type_enabled(v52, rhs[0]))
                {
                  v55 = v53;
                }

                else
                {
                  v55 = v53 & 0xFFFFFFFE;
                }

                if (v55)
                {
                  v56 = *(v49 + 5);
                  *&time1.duration.value = *v419;
                  time1.duration.epoch = *(v419 + 16);
                  v57 = CMTimeGetSeconds(&time1.duration);
                  *time2 = v427;
                  *&time2[4] = "faq_restartIfPausedDueToReset";
                  *&time2[12] = 2048;
                  *&time2[14] = a1;
                  *&time2[22] = 2048;
                  *&time2[24] = v49;
                  *v498 = 2048;
                  *&v498[2] = v56;
                  *&v498[10] = 2082;
                  *&v498[12] = a1 + 800;
                  *&v498[20] = 2048;
                  *&v498[22] = v57;
                  LODWORD(v398) = 62;
                  v397 = time2;
                  _os_log_send_and_compose_impl(v55, 0, &time1, 128, &dword_1962D5000, v52, v54, "<<<< FAQ >>>> %s: [%p:%p:%p] %{public}s restarting active audio queue that was started at aqTime_SampleTimeAtTrackStart:%1.3f because it was paused by faq_reset");
                }

                fig_log_call_emit_and_clean_up_after_send_and_compose();
                v5 = v51;
                v10 = MEMORY[0x1E6960C70];
                v15 = v50;
                v6 = v450;
              }

              CFRetain(*(v49 + 3));
              started = FigAudioQueueTimingShimStartAsync(*(v49 + 5), 0, 0, subaq_audioQueueStartupCompleted, *(v49 + 3));
              if (started)
              {
                v71 = started;
                v72 = v15;
                v73 = v5;
                CFRelease(*(v49 + 3));
                *block = 0;
                rhs[0] = 0;
                v74 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
                v75 = *block;
                v76 = rhs[0];
                if (os_log_type_enabled(v74, rhs[0]))
                {
                  v77 = v75;
                }

                else
                {
                  v77 = v75 & 0xFFFFFFFE;
                }

                if (v77)
                {
                  v78 = *(v49 + 5);
                  *time2 = v427;
                  *&time2[4] = "faq_restartIfPausedDueToReset";
                  *&time2[12] = 2048;
                  *&time2[14] = a1;
                  *&time2[22] = 2048;
                  *&time2[24] = v49;
                  *v498 = 2048;
                  *&v498[2] = v78;
                  *&v498[10] = 2082;
                  *&v498[12] = a1 + 800;
                  *&v498[20] = 1024;
                  *&v498[22] = v71;
                  LODWORD(v398) = 58;
                  v397 = time2;
                  _os_log_send_and_compose_impl(v77, 0, &time1, 128, &dword_1962D5000, v74, v76, "<<<< FAQ >>>> %s: [%p:%p:%p] %{public}s restart of active audio queue failed (err = %d).");
                }

                v5 = v73;
                a2 = v454;
                v15 = v72;
                v13 = 1;
                fig_log_call_emit_and_clean_up_after_send_and_compose();
                FigSimpleMutexUnlock();
                goto LABEL_93;
              }

              subaq_startListener(a1, v49);
              *(a1 + 652) = 0;
              *(a1 + 580) = 0;
            }

            FigSimpleMutexUnlock();
            v47 = *(a1 + 104);
            a2 = v454;
          }
        }

        if (v47)
        {
          v86 = FigBufferQueueDequeueIfMatchingAndRetain();
          if (v86)
          {
            CFRelease(v86);
          }

          v25 = 0;
          v13 = 1;
          goto LABEL_643;
        }
      }

LABEL_122:
      if (!*(a1 + 16) && CMGetAttachment(v15, v436, 0) && !*(a1 + 578))
      {
        subaq_flushAudioQueue(a1, v12);
      }

      v87 = *(a1 + 192);
      if (v87 >= 1)
      {
        v88 = CMGetAttachment(v15, v433, 0);
        if (v88)
        {
          v89 = v88;
          for (i = *v438; i; i = *i)
          {
            if (v89 == i[10])
            {
              if (*(a1 + 576) || !*(a1 + 653))
              {
                v13 = 0;
                v25 = 0;
LABEL_144:
                v26 = 1;
                a2 = v454;
                goto LABEL_644;
              }

              *(i + 96) = 1;
              *(a1 + 196) = 1;
              if (*(a1 + 140))
              {
                *&time1.duration.value = *(a1 + 128);
                time1.duration.epoch = *(a1 + 144);
                *time2 = v468;
                *&time2[16] = v470;
                if (CMTimeCompare(&time1.duration, time2) >= 1)
                {
                  *time2 = *(i + 3);
                  *&time2[16] = i[5];
                  *block = *(a1 + 128);
                  *&block[16] = *(a1 + 144);
                  CMTimeSubtract(&time1.duration, time2, block);
                  *(i + 3) = *&time1.duration.value;
                  i[5] = time1.duration.epoch;
                  *(a1 + 128) = v468;
                  *(a1 + 144) = v470;
                }
              }

              v91 = *(i + 3);
              *(a1 + 568) = i[5];
              *v444 = v91;
              v92 = *(i + 3);
              *(a1 + 544) = i[5];
              *v441 = v92;
              *(a1 + 480) = *v10;
              *(a1 + 496) = v453;
            }
          }

          a2 = v454;
          if (!*(a1 + 196))
          {
            v451 = v6;
            v93 = v15;
            v94 = v5;
            *block = 0;
            rhs[0] = 0;
            v95 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            v96 = *block;
            v97 = rhs[0];
            if (os_log_type_enabled(v95, rhs[0]))
            {
              v98 = v96;
            }

            else
            {
              v98 = v96 & 0xFFFFFFFE;
            }

            if (v98)
            {
              *time2 = 136316162;
              *&time2[4] = "faq_handleAttachmentIfPresent_TransitionID";
              *&time2[12] = 2048;
              *&time2[14] = a1;
              *&time2[22] = 2082;
              *&time2[24] = a1 + 800;
              *v498 = 2048;
              *&v498[2] = v89;
              *&v498[10] = 2048;
              *&v498[12] = v93;
              LODWORD(v398) = 52;
              v397 = time2;
              _os_log_send_and_compose_impl(v98, 0, &time1, 128, &dword_1962D5000, v95, v97, "<<<< FAQ >>>> %s: [%p] %{public}s unexpected transitionID %p seen, buf = %p");
            }

            fig_log_call_emit_and_clean_up_after_send_and_compose();
            v5 = v94;
            a2 = v454;
            v10 = MEMORY[0x1E6960C70];
            v15 = v93;
            v6 = v451;
          }
        }
      }

      if (*(a1 + 72))
      {
        v99 = CMGetAttachment(v15, v430, 0);
        if (!CMSampleBufferGetDataBuffer(v15))
        {
          if (v99)
          {
            if (subaq_doesAudioQueueHaveBuffersToFlush(v12) || *(v12 + 672))
            {
              subaq_flushAudioQueue(a1, v12);
              v26 = 1;
              *(v12 + 700) = 1;
            }

            else
            {
              v26 = 0;
            }

            v100 = FigBufferQueueDequeueIfMatchingAndRetain();
            if (v100)
            {
              CFRelease(v100);
            }

            goto LABEL_154;
          }
        }
      }

      v101 = CMGetAttachment(v15, v432, 0);
      if (!CMSampleBufferGetDataBuffer(v15))
      {
        if (v101 && !*(a1 + 578))
        {
          subaq_flushAudioQueue(a1, v12);
        }

        if (!*(a1 + 16) && (v106 = CMGetAttachment(v15, v422, 0), CMTimeRangeMakeFromDictionary(&time1, v106), (time1.duration.flags & 1) != 0))
        {
          v25 = 0;
          v13 = 1;
          if ((time1.presentationTimeStamp.flags & 1) != 0 && !time1.presentationTimeStamp.epoch && (time1.presentationTimeStamp.value & 0x8000000000000000) == 0)
          {
            CMNotificationCenterGetDefaultLocalCenter();
            CMNotificationCenterPostNotification();
            if ((*(a1 + 48) & 2) != 0)
            {
              faq_stopAllAudioQueues(a1, 0, 0);
              v13 = 0;
              v25 = 1;
            }

            else
            {
              v25 = 0;
            }
          }
        }

        else
        {
          v25 = 0;
          v13 = 1;
        }

        v125 = FigBufferQueueDequeueIfMatchingAndRetain();
        if (v125)
        {
          CFRelease(v125);
        }

        goto LABEL_643;
      }

      v404 = v101;
      *rhs = 0;
      v452 = v6;
      v407 = v15;
      if (*(a1 + 16))
      {
        goto LABEL_163;
      }

      if (CMSampleBufferGetNumSamples(v15) < 1)
      {
        goto LABEL_163;
      }

      FormatDescription = CMSampleBufferGetFormatDescription(v15);
      if (!FormatDescription)
      {
        goto LABEL_163;
      }

      v103 = FormatDescription;
      if (CMAudioFormatDescriptionEqual(FormatDescription, *(v12 + 56), 0xFu, rhs))
      {
        goto LABEL_163;
      }

      if ((~*rhs & 5) == 0)
      {
        if ((rhs[0] & 2) == 0)
        {
          time1.duration.value = 0;
          MagicCookie = CMAudioFormatDescriptionGetMagicCookie(v103, &time1);
          subaq_flushAudioQueue(a1, v12);
          v133 = MagicCookie;
          a2 = v454;
          FigAudioQueueTimingShimSetProperty(*(v12 + 40), 0x61716D63u, v133, time1.duration.value);
          subaq_setupForDecode(v12, v103);
        }

        goto LABEL_163;
      }

      *block = 0;
      LODWORD(lhs.value) = 8;
      if (dword_1EAF16C30)
      {
        v126 = v15;
        v127 = v5;
        LODWORD(duration.value) = 0;
        LOBYTE(type.value) = 0;
        v128 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        v129 = duration.value;
        v130 = LOBYTE(type.value);
        if (os_log_type_enabled(v128, type.value))
        {
          v131 = v129;
        }

        else
        {
          v131 = v129 & 0xFFFFFFFE;
        }

        if (v131)
        {
          *time2 = v431;
          *&time2[4] = "subaq_handleFormatChangeIfNecessary";
          *&time2[12] = 2048;
          *&time2[14] = a1;
          *&time2[22] = 2048;
          *&time2[24] = v12;
          *v498 = 2082;
          *&v498[2] = a1 + 800;
          LODWORD(v398) = 42;
          v397 = time2;
          _os_log_send_and_compose_impl(v131, 0, &time1, 128, &dword_1962D5000, v128, v130, "<<<< FAQ >>>> %s: [%p:%p] %{public}s format changed");
        }

        fig_log_call_emit_and_clean_up_after_send_and_compose();
        v5 = v127;
        v15 = v126;
      }

      if (*(a1 + 72) == 1 && (subaq_doesAudioQueueHaveBuffersToFlush(v12) || *(v12 + 672) >= 1))
      {
        if ((*(a1 + 48) & 2) != 0)
        {
          if (*(a1 + 720))
          {
            v369 = FigCFWeakReferenceHolderCopyReferencedObject();
            if (v369)
            {
              v370 = v369;
              CMSampleBufferGetOutputPresentationTimeStamp(&time1.duration, v15);
              FigAudioQueueOfflineMixerStartDrainingSampleBuffersUntilTime(v370, &time1.duration);
              CFRelease(v370);
            }
          }
        }

        v371 = (*(a1 + 48) & 2) != 0 && *(a1 + 306) != 0;
      }

      else
      {
        v371 = 1;
      }

      v372 = v5;
      if (FigAudioQueueTimingShimGetProperty(*(v12 + 40), 0x61716364u, block, &lhs))
      {
        *block = 0;
      }

      v373 = *(v12 + 640);
      if (v373)
      {
        v374 = *(v12 + 48) == 0;
        if (*(v12 + 48))
        {
          FigAudioQueueTimingShimStop(*(v12 + 40), 1u);
          *(v12 + 48) = 0;
        }

        subaq_setProperty(a1, v12, @"AudioProcessingTap", 0);
      }

      else
      {
        v374 = 1;
      }

      *&time1.duration.value = *v419;
      time1.duration.epoch = *(v419 + 16);
      *time2 = 0;
      v375 = FigSubAudioQueueCreate(a1, v103, *block, &time1, time2);
      v376 = *time2;
      if (v377)
      {
        v381 = 0;
        if (!*time2)
        {
          goto LABEL_712;
        }

        goto LABEL_711;
      }

      if (*(a1 + 16))
      {
        *(*time2 + 594) = 1;
        *(v376 + 600) = 0;
      }

      else
      {
        v378 = *(a1 + 240);
        if (v378)
        {
          time1.duration.epoch = 1;
          time1.duration.value = a1;
          *&time1.duration.timescale = *time2;
          MutableCopy = CFDictionaryCreateMutableCopy(allocator, 0, v378);
          if (CFDictionaryContainsKey(MutableCopy, @"AudioProcessingTap"))
          {
            CFDictionaryGetValue(MutableCopy, @"AudioProcessingTap");
            subaq_setProperty(a1, v376, @"AudioProcessingTap", *(a1 + 744));
            CFDictionaryRemoveValue(MutableCopy, @"AudioProcessingTap");
          }

          CFDictionaryApplyFunction(MutableCopy, subaq_applyOneCachedProperty, &time1);
          if (MutableCopy)
          {
            CFRelease(MutableCopy);
          }
        }

        if (*(a1 + 236))
        {
          FigAudioQueueTimingShimSetParameter(*(v376 + 40), 2u, *(a1 + 232));
        }

        if (*(a1 + 204))
        {
          FigAudioQueueTimingShimSetParameter(*(v376 + 40), 1u, *(a1 + 200));
        }

        if (*(a1 + 212))
        {
          FigAudioQueueTimingShimSetParameter(*(v376 + 40), 5u, *(a1 + 208));
        }

        if (*(a1 + 220))
        {
          FigAudioQueueTimingShimSetParameter(*(v376 + 40), 9u, *(a1 + 216));
        }

        if (*(a1 + 228))
        {
          FigAudioQueueTimingShimSetParameter(*(v376 + 40), 0xEu, *(a1 + 224));
        }

        if (*(a1 + 716))
        {
          FigAudioQueueTimingShimSetParameter(*(v376 + 40), 0x16u, *(a1 + 712));
        }

        v380 = *(a1 + 16);
        *(v376 + 594) = 1;
        v381 = v376;
        *(v376 + 600) = 0;
        if (v380)
        {
          goto LABEL_711;
        }

        CFArrayInsertValueAtIndex(*(a1 + 176), 0, v376);
      }

      v381 = v376;
LABEL_711:
      CFRelease(v376);
LABEL_712:
      if (*block)
      {
        CFRelease(*block);
      }

      if (v381)
      {
        if (v373)
        {
          *(a1 + 752) = 0;
          v382 = *(v381 + 640);
          if (v382)
          {
            v383 = *(v381 + 648);
            if (!v383)
            {
              v383 = *(v381 + 664);
            }

            v384 = *(*(CMBaseObjectGetVTable() + 16) + 8);
            if (v384)
            {
              v384(v382, v383);
            }
          }

          if (!v374)
          {
            FigAudioQueueTimingShimStart(*(v12 + 40), 0, 0);
          }
        }

        v10 = MEMORY[0x1E6960C70];
        if (*(a1 + 640) & 2) != 0 && !*(a1 + 576) && *(a1 + 73) && (*(v12 + 544) & 1) != 0 && (*(v12 + 568))
        {
          v385 = *(v12 + 532);
          *(a1 + 544) = *(v12 + 548);
          *v441 = v385;
          *(a1 + 480) = *v10;
          *(a1 + 496) = v453;
          *&time1.duration.value = *(v12 + 556);
          time1.duration.epoch = *(v12 + 572);
          *(a1 + 592) = CMClockConvertHostTimeToSystemUnits(&time1.duration);
        }

        v5 = v372;
        if (v371)
        {
          v6 = v452;
          if (*(a1 + 73) || (*(a1 + 48) & 2) != 0)
          {
            subaq_startSubAudioQueue(a1);
            subaq_stopAudioQueue(a1, v12, 0);
          }
        }

        else
        {
          *(v381 + 701) = 1;
          subaq_flushAudioQueue(a1, v12);
          *(v12 + 700) = 1;
          v6 = v452;
        }

        v15 = v407;
        if (!*(a1 + 579))
        {
          v13 = 1;
          v25 = 1;
          goto LABEL_144;
        }

        a2 = v454;
        if (*(v12 + 496))
        {
          faq_reset(a1, v375);
        }

        v13 = 1;
LABEL_96:
        v25 = 1;
        goto LABEL_643;
      }

      v5 = v372;
      a2 = v454;
      v6 = v452;
      v10 = MEMORY[0x1E6960C70];
      v15 = v407;
LABEL_163:
      LODWORD(time1.duration.value) = 1065353216;
      v104 = CMGetAttachment(v15, v423, 0);
      if (v104)
      {
        CFNumberGetValue(v104, kCFNumberFloat32Type, &time1);
        v105 = *&time1.duration.value;
      }

      else
      {
        v105 = 1.0;
      }

      if (*(a1 + 788) == 0.0)
      {
        v107 = v105;
      }

      else
      {
        v107 = *(a1 + 788);
      }

      v108 = (*(a1 + 672))(a1, v107);
      v109 = v108;
      if (!v108)
      {
        *(v12 + 594) = 1;
      }

      if (*(v12 + 104) || (!v6 ? (v110 = v108 == 0) : (v110 = 1), !v110 ? (v111 = 0) : (v111 = 1), ((v111 | v18) & 1) == 0))
      {
        HIDWORD(v412) = 1;
      }

      else
      {
        if (!*(a1 + 196))
        {
          subaq_getCurrentQueueTime(v12, time2);
          subaq_convertAQTimeToMediaTime(a1, &time1);
          memset(time2, 0, 24);
          CMSampleBufferGetOutputPresentationTimeStamp(time2, v15);
          memset(block, 0, 24);
          CMSampleBufferGetOutputDuration(rhs, v15);
          lhs = *time2;
          CMTimeAdd(block, &lhs, rhs);
          if (v109)
          {
            v386 = v18;
          }

          else
          {
            v386 = 1;
          }

          if (v87 > 0 || v386)
          {
            v387 = FigBufferQueueDequeueIfMatchingAndRetain();
            v9 = 1.0;
            if (v387)
            {
              CFRelease(v387);
            }

            if ((*(a1 + 48) & 2) != 0 || *(a1 + 416) > 0.0)
            {
              v388 = block;
            }

            else
            {
              v388 = time2;
            }

            *v446 = *v388;
            *(a1 + 336) = *(v388 + 2);
            v13 = 1;
            *(v12 + 593) = 1;
          }

          else
          {
            v13 = 0;
            v9 = 1.0;
          }

          goto LABEL_93;
        }

        HIDWORD(v412) = 0;
      }

      v403 = v5;
      if (!*(a1 + 120))
      {
        SampleAttachmentsArray = CMSampleBufferGetSampleAttachmentsArray(v15, 0);
        if (SampleAttachmentsArray)
        {
          v113 = SampleAttachmentsArray;
          if (CFArrayGetCount(SampleAttachmentsArray) >= 1)
          {
            v114 = CFArrayGetCount(v113);
            v115 = CFArrayGetValueAtIndex(v113, v114 - 1);
            v116 = CFDictionaryGetValue(v115, v415);
            if (v116)
            {
              v117 = v116;
              if (!FigCFEqual())
              {
                if (dword_1EAF16C30)
                {
                  v118 = v15;
                  *block = 0;
                  rhs[0] = 0;
                  v119 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
                  v120 = *block;
                  v121 = rhs[0];
                  if (os_log_type_enabled(v119, rhs[0]))
                  {
                    v122 = v120;
                  }

                  else
                  {
                    v122 = v120 & 0xFFFFFFFE;
                  }

                  if (v122)
                  {
                    BufferCount = CMBufferQueueGetBufferCount(*(a1 + 64));
                    CMSampleBufferGetOutputPresentationTimeStamp(&time1.duration, v118);
                    v124 = CMTimeGetSeconds(&time1.duration);
                    *time2 = v427;
                    *&time2[4] = "faq_handleSampleAttachmentsIfPresent_SeamIdentifier";
                    *&time2[12] = 2048;
                    *&time2[14] = a1;
                    *&time2[22] = 2082;
                    *&time2[24] = a1 + 800;
                    *v498 = 2112;
                    *&v498[2] = v117;
                    *&v498[10] = 1024;
                    *&v498[12] = BufferCount;
                    *&v498[16] = 2048;
                    *&v498[18] = v124;
                    LODWORD(v398) = 58;
                    v397 = time2;
                    _os_log_send_and_compose_impl(v122, 0, &time1, 128, &dword_1962D5000, v119, v121, "<<<< FAQ >>>> %s: [%p] %{public}s seam with identifier %@ detected while %d sbufs are in queue at %1.3f");
                  }

                  fig_log_call_emit_and_clean_up_after_send_and_compose();
                }

                *block = v468;
                *&block[16] = v470;
                lhs.value = 0;
                v134 = FigValidateSampleSeamInSampleBufferQueue(*(a1 + 64), v117, v433, &lhs, block);
                if (v134 <= 4)
                {
                  if (v134 > 1)
                  {
                    if (v134 == 2)
                    {
                      v135 = "No samples are present before transition";
                    }

                    else if (v134 == 3)
                    {
                      v135 = "More than one transitions found";
                    }

                    else
                    {
                      v135 = "Seam samples do not extend till the start of transition";
                    }

                    goto LABEL_249;
                  }

                  if (!v134)
                  {
                    memset(rhs, 0, 24);
                    v136 = *(v12 + 100);
                    *&time1.duration.value = *block;
                    time1.duration.epoch = *&block[16];
                    CMTimeConvertScale(rhs, &time1.duration, v136, kCMTimeRoundingMethod_RoundTowardZero);
                    if (dword_1EAF16C30)
                    {
                      LODWORD(duration.value) = 0;
                      LOBYTE(type.value) = 0;
                      v137 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
                      v138 = duration.value;
                      v139 = LOBYTE(type.value);
                      if (os_log_type_enabled(v137, type.value))
                      {
                        v140 = v138;
                      }

                      else
                      {
                        v140 = v138 & 0xFFFFFFFE;
                      }

                      if (v140)
                      {
                        *time2 = v427;
                        *&time2[4] = "faq_handleSampleAttachmentsIfPresent_SeamIdentifier";
                        *&time2[12] = 2048;
                        *&time2[14] = a1;
                        *&time2[22] = 2082;
                        *&time2[24] = a1 + 800;
                        *v498 = 2112;
                        *&v498[2] = v117;
                        *&v498[10] = 1024;
                        *&v498[12] = lhs.value;
                        *&v498[16] = 2048;
                        *&v498[18] = *rhs;
                        LODWORD(v398) = 58;
                        v397 = time2;
                        _os_log_send_and_compose_impl(v140, 0, &time1, 128, &dword_1962D5000, v137, v139, "<<<< FAQ >>>> %s: [%p] %{public}s seam with identifier %@ is valid with %d samples, with the item transition occurring at an offset of %lld output frames");
                      }

                      fig_log_call_emit_and_clean_up_after_send_and_compose();
                    }

                    *(a1 + 112) = lhs.value;
                    *(a1 + 120) = CFRetain(v117);
                    *(a1 + 128) = *block;
                    v389 = lhs.value;
                    *(a1 + 144) = *&block[16];
                    *(a1 + 152) = v389;
                    v390 = *(a1 + 160);
                    *(a1 + 160) = v117;
                    CFRetain(v117);
                    if (v390)
                    {
                      CFRelease(v390);
                    }

                    goto LABEL_256;
                  }

                  v135 = "Samples with matching seam ID not found";
                  if (v134 == 1)
                  {
                    goto LABEL_249;
                  }
                }

                else
                {
                  if (v134 <= 7)
                  {
                    if (v134 == 5)
                    {
                      v135 = "Specified start trim is too long before transition";
                    }

                    else if (v134 == 6)
                    {
                      v135 = "Specified end trim is too long before transition";
                    }

                    else
                    {
                      v135 = "Specified start trim is too long after transition";
                    }

                    goto LABEL_249;
                  }

                  switch(v134)
                  {
                    case 8:
                      v135 = "Specified end trim is too long after transition";
                      goto LABEL_249;
                    case 9:
                      v135 = "Not enough seam samples present after transition";
                      goto LABEL_249;
                    case 10:
                      v135 = "Trim duration is not equal on both sides of transition";
LABEL_249:
                      if (dword_1EAF16C30)
                      {
                        *rhs = 0;
                        LOBYTE(duration.value) = 0;
                        v141 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
                        v142 = *rhs;
                        v143 = LOBYTE(duration.value);
                        if (os_log_type_enabled(v141, duration.value))
                        {
                          v144 = v142;
                        }

                        else
                        {
                          v144 = v142 & 0xFFFFFFFE;
                        }

                        if (v144)
                        {
                          *time2 = 136316162;
                          *&time2[4] = "faq_handleSampleAttachmentsIfPresent_SeamIdentifier";
                          *&time2[12] = 2048;
                          *&time2[14] = a1;
                          *&time2[22] = 2082;
                          *&time2[24] = a1 + 800;
                          *v498 = 2112;
                          *&v498[2] = v117;
                          *&v498[10] = 2080;
                          *&v498[12] = v135;
                          LODWORD(v398) = 52;
                          v397 = time2;
                          _os_log_send_and_compose_impl(v144, 0, &time1, 128, &dword_1962D5000, v141, v143, "<<<< FAQ >>>> %s: [%p] %{public}s seam with identifier %@ is invalid: %s");
                        }

                        fig_log_call_emit_and_clean_up_after_send_and_compose();
                      }

LABEL_256:
                      v15 = v407;
                      goto LABEL_257;
                  }
                }

                v135 = "Unknown";
                goto LABEL_249;
              }
            }
          }
        }
      }

LABEL_257:
      v484 = 0;
      values = v15;
      v482 = 0;
      theArray = 0;
      v145 = *(v12 + 592);
      v146 = *(a1 + 120);
      if (v146)
      {
        *(&v401 + 1) = FigGetCountOfSequentialSamplesWithSeamIdentifier(v15, v146, 0, 0);
        if (*(&v401 + 1) > *(a1 + 112))
        {
          v358 = v15;
          *block = 0;
          rhs[0] = 0;
          v359 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          v360 = *block;
          v361 = rhs[0];
          if (os_log_type_enabled(v359, rhs[0]))
          {
            v362 = v360;
          }

          else
          {
            v362 = v360 & 0xFFFFFFFE;
          }

          if (v362)
          {
            v363 = DWORD2(v401) - *(a1 + 112);
            v364 = *(a1 + 120);
            *time2 = v427;
            *&time2[4] = "subaq_splitSBufIntoEndTrimmablePiecesAndEnqueueThemAllIntoAudioQueue";
            *&time2[12] = 2048;
            *&time2[14] = a1;
            *&time2[22] = 2048;
            *&time2[24] = v12;
            *v498 = 2082;
            *&v498[2] = a1 + 800;
            *&v498[10] = 1024;
            *&v498[12] = v363;
            *&v498[16] = 2112;
            *&v498[18] = v364;
            LODWORD(v398) = 58;
            _os_log_send_and_compose_impl(v362, 0, &time1, 128, &dword_1962D5000, v359, v361, "<<<< FAQ >>>> %s: [%p:%p] %{public}s unexpected surplus of %d seam samples prior to transition marker for seam with identifier %@; abandoning seam handling", time2, v398);
          }
        }

        else
        {
          if (FigCreateReplacementSBufByOmittingTrailingSeamSamples(v15, *(a1 + 120), &v484))
          {
            v147 = v484;
            values = v484;
            if (!v484)
            {
              goto LABEL_269;
            }

            goto LABEL_261;
          }

          v358 = v15;
          *block = 0;
          rhs[0] = 0;
          v365 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          v366 = *block;
          v367 = rhs[0];
          if (os_log_type_enabled(v365, rhs[0]))
          {
            v368 = v366;
          }

          else
          {
            v368 = v366 & 0xFFFFFFFE;
          }

          if (v368)
          {
            *time2 = v431;
            *&time2[4] = "subaq_splitSBufIntoEndTrimmablePiecesAndEnqueueThemAllIntoAudioQueue";
            *&time2[12] = 2048;
            *&time2[14] = a1;
            *&time2[22] = 2048;
            *&time2[24] = v12;
            *v498 = 2082;
            *&v498[2] = a1 + 800;
            LODWORD(v398) = 42;
            _os_log_send_and_compose_impl(v368, 0, &time1, 128, &dword_1962D5000, v365, v367, "<<<< FAQ >>>> %s: [%p:%p] %{public}s FPSupport_CreateReplacementSBufByOmittingTrailingSeamSamples failed! Abandoning seam handling.", time2, v398);
          }
        }

        fig_log_call_emit_and_clean_up_after_send_and_compose();
        faq_clearSeamHandlingState(a1);
        v147 = values;
        v15 = v358;
        if (!values)
        {
LABEL_269:
          v150 = 0;
          goto LABEL_282;
        }
      }

      else
      {
        *(&v401 + 1) = 0;
        v147 = v15;
        if (!v15)
        {
          goto LABEL_269;
        }
      }

LABEL_261:
      v148 = *(v12 + 592);
      if (*(v12 + 592))
      {
        AudioSampleBufferSplitterCreateSplitSampleBufferArray(*(a1 + 168), v147, &v482, &theArray);
        v150 = v149;
        if (!v149 && theArray && CFArrayGetCount(theArray))
        {
          v159 = 0;
        }

        else
        {
          v151 = v145;
          v152 = v10;
          v153 = v6;
          v154 = v15;
          *block = 0;
          rhs[0] = 0;
          v155 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          v156 = *block;
          v157 = rhs[0];
          if (os_log_type_enabled(v155, rhs[0]))
          {
            v158 = v156;
          }

          else
          {
            v158 = v156 & 0xFFFFFFFE;
          }

          if (v158)
          {
            *time2 = v431;
            *&time2[4] = "subaq_splitSBufIntoEndTrimmablePiecesAndEnqueueThemAllIntoAudioQueue";
            *&time2[12] = 2048;
            *&time2[14] = a1;
            *&time2[22] = 2048;
            *&time2[24] = v12;
            *v498 = 2082;
            *&v498[2] = a1 + 800;
            LODWORD(v398) = 42;
            v397 = time2;
            _os_log_send_and_compose_impl(v158, 0, &time1, 128, &dword_1962D5000, v155, v157, "<<<< FAQ >>>> %s: [%p:%p] %{public}s AudioSampleBufferSplitter failed! Audio might crackle slightly during the next second or two.");
          }

          v159 = 1;
          fig_log_call_emit_and_clean_up_after_send_and_compose();
          v15 = v154;
          v6 = v153;
          v10 = v152;
          v145 = v151;
        }

        v160 = v482;
        if (v482)
        {
          *(v12 + 592) = 0;
          v148 = 1;
        }

        else
        {
          v148 = 0;
        }

        if ((v160 & 2) != 0)
        {
          *(v12 + 592) = 0;
LABEL_285:
          if (theArray)
          {
            CFRelease(theArray);
          }

          v161 = CFArrayCreate(allocator, &values, 1, MEMORY[0x1E695E9C0]);
          v150 = 0;
          theArray = v161;
          if (!v161)
          {
LABEL_346:
            v408 = 0;
            v445 = 0;
            count = 0;
            goto LABEL_347;
          }

          goto LABEL_288;
        }
      }

      else
      {
        v159 = 0;
        v150 = 0;
      }

      if (v148 || !v145 || v159)
      {
        goto LABEL_285;
      }

LABEL_282:
      v161 = theArray;
      if (!theArray)
      {
        goto LABEL_346;
      }

LABEL_288:
      if (CFArrayGetCount(v161) < 1)
      {
        goto LABEL_346;
      }

      v162 = theArray;
      if (theArray)
      {
        v162 = CFArrayGetCount(theArray);
      }

      count = v162;
      v445 = malloc_type_calloc(v162, 8uLL, 0x2004093837F09uLL);
      v408 = malloc_type_calloc(count, 1uLL, 0x100004077774924uLL);
      if (count < 1)
      {
        goto LABEL_347;
      }

      v163 = 0;
      v164 = v12 + 344;
      while (1)
      {
        v165 = CFArrayGetValueAtIndex(theArray, v163);
        *rhs = 0;
        lhs.value = 0;
        duration.value = 0;
        type.value = 0;
        if (!*(a1 + 16))
        {
          break;
        }

LABEL_341:
        if (++v163 == count)
        {
          v150 = 0;
          goto LABEL_347;
        }
      }

      v166 = v165;
      if (!CMSampleBufferDataIsReady(v165))
      {
        v150 = -12947;
        goto LABEL_768;
      }

      DataBuffer = CMSampleBufferGetDataBuffer(v166);
      DataPointer = CMBlockBufferGetDataPointer(DataBuffer, 0, &type, &duration, &lhs);
      if (DataPointer)
      {
        v395 = DataPointer;
        faq_enqueueSourceData_cold_1();
        v396 = 0;
        goto LABEL_765;
      }

      if (!lhs.value || (v169 = duration.value) == 0)
      {
        faq_enqueueSourceData_cold_5();
        v6 = v452;
        v10 = MEMORY[0x1E6960C70];
        v15 = v407;
        goto LABEL_341;
      }

      v170 = type.value;
      FigSimpleMutexLock();
      v171 = 0;
      while (1)
      {
        v172 = v12 + v171;
        if (!*(v12 + v171 + 160))
        {
          break;
        }

        v171 += 24;
        if (v171 == 192)
        {
          FigSimpleMutexUnlock();
          v305 = 0;
          v6 = v452;
          v9 = 1.0;
          goto LABEL_557;
        }
      }

      *(v172 + 160) = 1;
      FigSimpleMutexUnlock();
      *(v172 + 144) = CFRetain(v166);
      v173 = (v172 + 144);
      v174 = CMGetAttachment(v166, v417, 0);
      v173[1] = v174;
      if (v174)
      {
        CFRetain(v174);
      }

      *block = MEMORY[0x1E69E9820];
      *&block[8] = 0x40000000;
      *&block[16] = __subaq_acquireAndPrepareAQBuffer_block_invoke;
      *&block[24] = &__block_descriptor_tmp_329;
      *&v490 = v12;
      if (subaq_acquireAndPrepareAQBuffer_sAudioQueueCheckPIDOnce != -1)
      {
        dispatch_once(&subaq_acquireAndPrepareAQBuffer_sAudioQueueCheckPIDOnce, block);
      }

      if (v170 == v169 && subaq_acquireAndPrepareAQBuffer_sAudioQueueCanAllocateBufferWithMemory)
      {
        BufferWithMemory = FigAudioQueueTimingShimAllocateBufferWithMemory(*(v12 + 40));
        if (BufferWithMemory)
        {
          v395 = BufferWithMemory;
          faq_enqueueSourceData_cold_4();
          v396 = v12 + v171 + 144;
LABEL_765:
          subaq_returnAQBufferInfoPtr(v12, v396);
          if (v395 == -12946)
          {
            valueb = 0;
            hostTime = 0;
            v464 = 0;
            v13 = 0;
            LODWORD(v412) = 0;
            v6 = v452;
            v8 = 1.0;
            v9 = 1.0;
            v10 = MEMORY[0x1E6960C70];
            v15 = v407;
            goto LABEL_558;
          }

          v150 = -12947;
          v6 = v452;
          v8 = 1.0;
          v10 = MEMORY[0x1E6960C70];
LABEL_768:
          v15 = v407;
LABEL_347:
          v188 = FigBufferQueueDequeueIfMatchingAndRetain();
          if (v188)
          {
            CFRelease(v188);
          }

          v13 = 1;
          v189 = count;
          if (count < 1 || v150)
          {
            valueb = 0;
            hostTime = 0;
            v464 = 0;
            LODWORD(v412) = 0;
            v9 = 1.0;
            v193 = v445;
            goto LABEL_559;
          }

          *&v401 = v107;
          hostTime = 0;
          v190 = 0;
          v191 = 0;
          LODWORD(v412) = 0;
          v462 = (v12 + 408);
          v405 = (v12 + 456);
          v406 = v12 + 432;
          v424 = v12 + 484;
          v410 = v12 + 556;
          v411 = (v12 + 532);
          v192 = 0.0;
          v193 = v445;
          while (2)
          {
            v463 = v190;
            v194 = v193[v191];
            v195 = **(v194 + 24);
            v507 = *MEMORY[0x1E6960C98];
            timescale = *(MEMORY[0x1E6960C98] + 8);
            v490 = 0u;
            v491 = 0u;
            memset(block, 0, sizeof(block));
            v487 = 0u;
            v488 = 0u;
            memset(rhs, 0, sizeof(rhs));
            v196 = *(v12 + 594);
            if (*(v12 + 594))
            {
              v197 = *(v12 + 64);
              if (*(v197 + 20))
              {
                v198 = 0;
              }

              else
              {
                v198 = *(v197 + 8) == 1987015266;
              }

              *(v12 + 600) = v198;
            }

            packetDescriptionsSizeOut.value = 0;
            packetDescriptionsPointerOut = 0;
            memset(time2, 0, 24);
            v459 = v194;
            if (faq_getFigTimeAttachment(v195, v449, time2))
            {
              if (*(v12 + 600) < 1)
              {
                v199 = 0;
              }

              else
              {
                v199 = 0;
                do
                {
                  memset(&time1, 0, sizeof(time1));
                  if (CMSampleBufferGetSampleTimingInfo(v195, v199, &time1))
                  {
                    break;
                  }

                  lhs = *time2;
                  duration = time1.duration;
                  if (CMTimeCompare(&lhs, &duration) < 0)
                  {
                    *(v12 + 600) = 0;
                    break;
                  }

                  lhs = *time2;
                  duration = time1.duration;
                  CMTimeSubtract(time2, &lhs, &duration);
                  v200 = *(v12 + 600);
                  ++v199;
                  *(v12 + 600) = v200 - 1;
                }

                while (v200 > 1);
              }

              v201 = *(v12 + 100);
              *&time1.duration.value = *time2;
              time1.duration.epoch = *&time2[16];
              CMTimeConvertScale(&lhs, &time1.duration, v201, kCMTimeRoundingMethod_RoundTowardZero);
              v465 = lhs.value;
            }

            else
            {
              v465 = 0;
              v199 = 0;
            }

            memset(time2, 0, 24);
            memset(&duration, 0, sizeof(duration));
            if (faq_getFigTimeAttachment(v195, v448, time2))
            {
              v202 = *(v12 + 100);
              *&time1.duration.value = *time2;
              time1.duration.epoch = *&time2[16];
              CMTimeConvertScale(&type, &time1.duration, v202, kCMTimeRoundingMethod_RoundTowardZero);
              v458 = type.value;
            }

            else
            {
              v458 = 0;
            }

            if (*(v12 + 592) && (v203 = *(*(v12 + 64) + 20), v203) && (memset(&end, 0, sizeof(end)), CMTimeMake(&end, v203, *(v12 + 100)), v204 = *(MEMORY[0x1E6960CF0] + 48), *&time1.presentationTimeStamp.timescale = *(MEMORY[0x1E6960CF0] + 32), *&time1.decodeTimeStamp.value = v204, time1.decodeTimeStamp.epoch = *(MEMORY[0x1E6960CF0] + 64), v205 = *MEMORY[0x1E6960CF0], *&time1.duration.epoch = *(MEMORY[0x1E6960CF0] + 16), *&time1.duration.value = v205, NumSamples = CMSampleBufferGetNumSamples(v195), !CMSampleBufferGetSampleTimingInfo(v195, NumSamples - 1, &time1)) && (time1.duration.flags & 0x1D) == 1 && (v509 = time1.duration, time = end, CMTimeCompare(&v509, &time) < 0))
            {
              v509 = end;
              time = time1.duration;
              CMTimeSubtract(&duration, &v509, &time);
              v290 = *(v12 + 100);
              time = duration;
              CMTimeConvertScale(&v509, &time, v290, kCMTimeRoundingMethod_RoundTowardZero);
              v456 = v509.value;
            }

            else
            {
              v456 = 0;
            }

            if (CMSampleBufferGetAudioStreamPacketDescriptionsPtr(v195, &packetDescriptionsPointerOut, &packetDescriptionsSizeOut))
            {
              v460 = 0;
              LODWORD(v457) = 0;
              packetDescriptionsPointerOut = 0;
              goto LABEL_379;
            }

            v208 = packetDescriptionsSizeOut.value;
            v457 = packetDescriptionsSizeOut.value >> 4;
            if (v199 >= 1 && (v209 = CFGetAllocator(v12), (v210 = MEMORY[0x19A8CC720](v209, v208 & 0xFFFFFFFF0, 2972345053, 0)) != 0))
            {
              v211 = v210;
              memcpy(v210, packetDescriptionsPointerOut, v208 & 0xFFFFFFFF0);
              v212 = (v199 + 3) & 0xFFFFFFFFFFFFFFFCLL;
              v213 = vdupq_n_s64(v199 - 1);
              p_mVariableFramesInPacket = &v211[2].mVariableFramesInPacket;
              v215 = xmmword_196E73090;
              v216 = xmmword_196E73080;
              v6 = v452;
              v207 = v12 + 408;
              do
              {
                v217 = vmovn_s64(vcgeq_u64(v213, v215));
                if (vuzp1_s16(v217, *v213.i8).u8[0])
                {
                  *(p_mVariableFramesInPacket - 8) = 0;
                }

                if (vuzp1_s16(v217, *&v213).i8[2])
                {
                  *(p_mVariableFramesInPacket - 4) = 0;
                }

                if (vuzp1_s16(*&v213, vmovn_s64(vcgeq_u64(v213, *&v216))).i32[1])
                {
                  *p_mVariableFramesInPacket = 0;
                  p_mVariableFramesInPacket[4] = 0;
                }

                v216 = vaddq_s64(v216, v479);
                v215 = vaddq_s64(v215, v479);
                p_mVariableFramesInPacket += 16;
                v212 -= 4;
              }

              while (v212);
              packetDescriptionsPointerOut = v211;
              v460 = 1;
            }

            else
            {
              v460 = 0;
              v6 = v452;
LABEL_379:
              v207 = v12 + 408;
            }

            v218 = *(a1 + 160);
            if (v218 && !*(a1 + 112))
            {
              CountOfSequentialSamplesWithSeamIdentifier = FigGetCountOfSequentialSamplesWithSeamIdentifier(v195, v218, 1, 0);
              if (CountOfSequentialSamplesWithSeamIdentifier)
              {
                v465 = 0;
                v220 = *(a1 + 152);
                if (CountOfSequentialSamplesWithSeamIdentifier >= v220)
                {
                  v221 = *(a1 + 152);
                }

                else
                {
                  v221 = CountOfSequentialSamplesWithSeamIdentifier;
                }

                *(a1 + 152) = v220 - v221;
                if (v220 > CountOfSequentialSamplesWithSeamIdentifier)
                {
                  goto LABEL_398;
                }
              }

              else
              {
                LODWORD(lhs.value) = 0;
                LOBYTE(duration.value) = 0;
                v294 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
                v295 = lhs.value;
                v296 = LOBYTE(duration.value);
                if (os_log_type_enabled(v294, duration.value))
                {
                  v297 = v295;
                }

                else
                {
                  v297 = v295 & 0xFFFFFFFE;
                }

                if (v297)
                {
                  v298 = *(a1 + 152);
                  v299 = *(a1 + 160);
                  *time2 = 136316162;
                  *&time2[4] = "subaq_enqueueAQBufferIntoAudioQueue";
                  *&time2[12] = 2048;
                  *&time2[14] = a1;
                  *&time2[22] = 2048;
                  *&time2[24] = v12;
                  *v498 = 1024;
                  *&v498[2] = v298;
                  *&v498[6] = 2112;
                  *&v498[8] = v299;
                  LODWORD(v398) = 48;
                  v397 = time2;
                  _os_log_send_and_compose_impl(v297, 0, &time1, 128, &dword_1962D5000, v294, v296, "<<<< FAQ >>>> %s: [%p:%p] unexpected shortfall of %d seam samples after transition marker for seam with identifier %@; abandoning seam handling");
                }

                fig_log_call_emit_and_clean_up_after_send_and_compose();
                v207 = v12 + 408;
              }

              faq_clearSeamHandlingState(a1);
            }

LABEL_398:
            CMSampleBufferGetOutputPresentationTimeStamp(time2, v195);
            CMSampleBufferGetOutputDuration(&lhs, v195);
            CMTimeRangeMake(&time1, time2, &lhs);
            v507 = time1.duration.value;
            cfa = time1.duration.flags;
            timescale = time1.duration.timescale;
            v467 = time1.duration.epoch;
            v471 = time1.presentationTimeStamp.value;
            v222 = *&time1.presentationTimeStamp.timescale;
            v469 = time1.presentationTimeStamp.epoch;
            if (*(v12 + 594))
            {
              memset(&time1, 0, 24);
              *time2 = v507;
              *&time2[8] = timescale;
              *&time2[12] = cfa;
              *&time2[16] = v467;
              subaq_convertMediaTimeToAQTime(a1, &time1);
              memset(block, 0, sizeof(block));
              v490 = 0u;
              v491 = 0u;
              v276 = *(v12 + 100);
              *time2 = *&time1.duration.value;
              *&time2[16] = time1.duration.epoch;
              CMTimeConvertScale(&packetDescriptionsSizeOut, time2, v276, kCMTimeRoundingMethod_RoundHalfAwayFromZero);
              v223 = 0;
              *block = packetDescriptionsSizeOut.value;
              DWORD2(v491) = 1;
              *(v12 + 594) = 0;
              v224 = block;
            }

            else
            {
              if (*(a1 + 16))
              {
                goto LABEL_404;
              }

              if ((*(v12 + 420) & 1) == 0)
              {
                goto LABEL_401;
              }

              if (CMGetAttachment(v195, v443, 0) == v442 || *(v12 + 593))
              {
LABEL_404:
                v509.value = v507;
                v509.timescale = timescale;
                if ((v412 & 0x100000000) != 0)
                {
                  time1.duration.value = v507;
                  time1.duration.timescale = timescale;
                  v225 = cfa;
                  time1.duration.flags = cfa;
                  v226 = v467;
                  time1.duration.epoch = v467;
                  *time2 = *v207;
                  *&time2[16] = *(v207 + 16);
                  CMTimeCompare(&time1.duration, time2);
                  goto LABEL_408;
                }

                v225 = *(a1 + 332);
LABEL_407:
                v509.value = *v446;
                v509.timescale = *(a1 + 328);
                v226 = *(a1 + 336);
LABEL_408:
                time1.duration.value = v509.value;
                time1.duration.timescale = v509.timescale;
                time1.duration.flags = v225;
                time1.duration.epoch = v226;
                *time2 = *v207;
                *&time2[16] = *(v207 + 16);
                if (CMTimeCompare(&time1.duration, time2))
                {
                  memset(&lhs, 0, sizeof(lhs));
                  CMTimeMake(&lhs, 2, *(v12 + 100));
                  memset(&duration, 0, sizeof(duration));
                  *time2 = v509.value;
                  *&time2[8] = v509.timescale;
                  *&time2[12] = v225;
                  *&time2[16] = v226;
                  type = *v207;
                  CMTimeSubtract(&time1.duration, time2, &type);
                  CMTimeAbsoluteValue(&duration, &time1.duration);
                  time1.duration = lhs;
                  *time2 = duration;
                  v227 = CMTimeCompare(&time1.duration, time2);
                  v224 = 0;
                  if ((v227 & 0x80000000) != 0)
                  {
                    memset(&type, 0, sizeof(type));
                    *time2 = *v406;
                    *&time2[16] = *(v406 + 16);
                    end = *v405;
                    CMTimeAdd(&time1.duration, time2, &end);
                    *time2 = duration;
                    CMTimeAdd(&type, &time1.duration, time2);
                    if (dword_1EAF16C30)
                    {
                      LODWORD(end.value) = 0;
                      LOBYTE(time.value) = 0;
                      v291 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
                      v292 = end.value;
                      v409 = v291;
                      HIDWORD(v400) = LOBYTE(time.value);
                      if (os_log_type_enabled(v291, time.value))
                      {
                        v293 = v292;
                      }

                      else
                      {
                        v293 = v292 & 0xFFFFFFFE;
                      }

                      if (v293)
                      {
                        v300 = duration.value;
                        HIDWORD(v399) = duration.timescale;
                        LODWORD(v400) = v293;
                        time1.duration = duration;
                        v301 = CMTimeGetSeconds(&time1.duration);
                        time1.duration.value = v509.value;
                        time1.duration.timescale = v509.timescale;
                        time1.duration.flags = v225;
                        time1.duration.epoch = v226;
                        v302 = CMTimeGetSeconds(&time1.duration);
                        *&time1.duration.value = *v462;
                        time1.duration.epoch = *(v12 + 424);
                        v303 = CMTimeGetSeconds(&time1.duration);
                        *time2 = v413.i32[0];
                        *&time2[4] = "subaq_enqueueAQBufferIntoAudioQueue";
                        *&time2[12] = 2048;
                        *&time2[14] = a1;
                        *&time2[22] = 2048;
                        *&time2[24] = v12;
                        *v498 = 2082;
                        *&v498[2] = a1 + 800;
                        *&v498[10] = 2048;
                        *&v498[12] = v300;
                        *&v498[20] = 1024;
                        *&v498[22] = HIDWORD(v399);
                        *&v498[26] = 2048;
                        *&v498[28] = v301;
                        *&v498[36] = 2048;
                        *&v498[38] = v302;
                        v499 = 2048;
                        v500 = v303;
                        LODWORD(v398) = 88;
                        v397 = time2;
                        _os_log_send_and_compose_impl(v400, 0, &time1, 128, &dword_1962D5000, v409, HIDWORD(v400), "<<<< FAQ >>>> %s: [%p:%p] %{public}s Resyncing AQ timeline - time diff is %lld/%u (%1.3f = |%1.3f - %1.3f|)");
                      }

                      fig_log_call_emit_and_clean_up_after_send_and_compose();
                    }

                    subaq_flushAudioQueue(a1, v12);
                    v490 = 0u;
                    v491 = 0u;
                    memset(block, 0, sizeof(block));
                    v304 = *(v12 + 100);
                    time1.duration = type;
                    CMTimeConvertScale(&packetDescriptionsSizeOut, &time1.duration, v304, kCMTimeRoundingMethod_RoundHalfAwayFromZero);
                    *block = packetDescriptionsSizeOut.value;
                    DWORD2(v491) = 1;
                    v224 = block;
                  }

                  v223 = v227 >> 31;
                }

                else
                {
                  v223 = 0;
                  v224 = 0;
                }

                v6 = v452;
                if (cfa)
                {
                  v228 = 0;
                  if ((v222 & 0x100000000) != 0 && !v469 && (v471 & 0x8000000000000000) == 0)
                  {
                    time1.duration.value = v471;
                    *&time1.duration.timescale = v222;
                    time1.duration.epoch = 0;
                    *time2 = v468;
                    *&time2[16] = v470;
                    v228 = CMTimeCompare(&time1.duration, time2) == 0;
                  }
                }

                else
                {
                  v228 = 0;
                }

                *(v12 + 593) = v228;
              }

              else if ((v412 & 0x100000000) != 0)
              {
LABEL_401:
                v223 = 0;
                v224 = 0;
              }

              else
              {
                v225 = *(a1 + 332);
                if (v225)
                {
                  goto LABEL_407;
                }

                v223 = 0;
                v224 = 0;
                v6 = v452;
              }
            }

            if ((cfa & 1) != 0 && (v222 & 0x100000000) != 0 && !v469 && (v471 & 0x8000000000000000) == 0)
            {
              time1.duration.value = v471;
              *&time1.duration.timescale = v222;
              time1.duration.epoch = 0;
              *time2 = v468;
              *&time2[16] = v470;
              v231 = v196 | CMTimeCompare(&time1.duration, time2) ? 1 : v223;
              if (v231 != 1)
              {
                v232 = 0;
                goto LABEL_442;
              }
            }

            if (!*(a1 + 16))
            {
              if (*(v12 + 580) == v107)
              {
                v229 = 1;
                goto LABEL_423;
              }

              memset(&time1, 0, 24);
              if (v224)
              {
                CMTimeMake(&time1.duration, *v224, *(v12 + 100));
              }

              else
              {
                v277 = *(a1 + 416);
                v278 = 1.0;
                if (v277 == 0.0)
                {
                  v279 = 1.0;
                }

                else
                {
                  v279 = v277;
                }

                if (*(a1 + 236))
                {
                  v280 = *(a1 + 232);
                  v110 = v280 == 0.0;
                  v278 = v280;
                  if (v110)
                  {
                    v278 = v8;
                  }
                }

                *time2 = v507;
                *&time2[8] = timescale;
                *&time2[12] = cfa;
                *&time2[16] = v467;
                faqTimelineWrangler_convertMediaTimeToAQTime(v426, time2, &time1, v279 / v278);
              }

              *time2 = *&time1.duration.value;
              *&time2[16] = time1.duration.epoch;
              if (!subaq_schedulePlayRate2ValueForTime(a1, v12, time2, *&v401))
              {
                v229 = *(a1 + 16) == 0;
                goto LABEL_423;
              }

LABEL_473:
              v253 = 0;
LABEL_521:
              v10 = MEMORY[0x1E6960C70];
              goto LABEL_522;
            }

            v229 = 0;
LABEL_423:
            *(v12 + 580) = v107;
            memset(&lhs, 0, sizeof(lhs));
            memset(&duration, 0, sizeof(duration));
            memset(&type, 0, sizeof(type));
            memset(&time1, 0, 48);
            if (v229)
            {
              CMSampleBufferGetOutputPresentationTimeStamp(&lhs, v195);
              CMSampleBufferGetOutputDuration(time2, v195);
              end = lhs;
              CMTimeAdd(&duration, &end, time2);
              if (v224)
              {
                memset(time2, 0, 24);
                CMTimeMake(&end, 3, 10);
                v509 = lhs;
                CMTimeSubtract(time2, &v509, &end);
                if (*(v12 + 496))
                {
                  *&end.value = *v424;
                  v230 = *(v424 + 16);
                }

                else
                {
                  *&end.value = v468;
                  v230 = v470;
                }

                end.epoch = v230;
                v509 = *time2;
                *&time.value = *&end.value;
                time.epoch = v230;
                CMTimeMaximum(&type, &v509, &time);
              }

              else
              {
                type = lhs;
              }

              *time2 = type;
              end = duration;
              CMTimeRangeFromTimeToTime(&time1, time2, &end);
              v233 = *(a1 + 656);
              *time2 = *&time1.duration.value;
              *&time2[16] = *&time1.duration.epoch;
              *v498 = *&time1.presentationTimeStamp.timescale;
              subaq_scheduleVolumeCurvesForMediaTimeRange(a1, v12, v233, time2, 1, v224 != 0);
              v234 = *(a1 + 664);
              *time2 = *&time1.duration.value;
              *&time2[16] = *&time1.duration.epoch;
              *v498 = *&time1.presentationTimeStamp.timescale;
              subaq_scheduleVolumeCurvesForMediaTimeRange(a1, v12, v234, time2, 0, v224 != 0);
              subaq_scheduleCinematicForMediaTimeRange(a1, v12, *(a1 + 656), v235, v236, v237, v238, v239, v397, v398, v399, v400, SBYTE2(v400), BYTE3(v400), HIDWORD(v400), v401, v402, v403, SHIWORD(v403), v404, v405, v406, v407, v408, v409, v410, v411, v412, v413.i64[0], v413.i64[1], v414, v415, v416, v417, v418, v419, v420, *(&v420 + 1), allocator, v422, v423, v424, v425, v426, v427, *(&v427 + 1), v428.i64[0], v428.i64[1], v429, v430, v431, *(&v431 + 1));
              v240 = *(a1 + 656);
              *time2 = *&time1.duration.value;
              *&time2[16] = *&time1.duration.epoch;
              *v498 = *&time1.presentationTimeStamp.timescale;
              subaq_scheduleAudioProcessingUnitForMediaTimeRange(a1, v12, v240, time2, 0, v224 != 0, 0);
              v241 = *(a1 + 664);
              *time2 = *&time1.duration.value;
              *&time2[16] = *&time1.duration.epoch;
              *v498 = *&time1.presentationTimeStamp.timescale;
              subaq_scheduleAudioProcessingUnitForMediaTimeRange(a1, v12, v241, time2, 1, v224 != 0, 0);
            }

            if ((cfa & 1) == 0)
            {
              v242 = 0;
              goto LABEL_457;
            }

            v232 = (v222 & 0x100000000) == 0;
LABEL_442:
            v242 = 0;
            if (v232 || v469 || v471 < 0 || ((time1.duration.value = v471, *&time1.duration.timescale = v222, time1.duration.epoch = 0, *time2 = v468, *&time2[16] = v470, !CMTimeCompare(&time1.duration, time2)) ? (v242 = (*(v12 + 420) & 1) == 0) : (v242 = 0), (time1.duration.value = v471, *&time1.duration.timescale = v222, time1.duration.epoch = 0, *time2 = v468, *&time2[16] = v470, CMTimeCompare(&time1.duration, time2)) ? (v243 = 1) : (v243 = v223), (v243 & 1) != 0 || v242))
            {
LABEL_457:
              if ((*(a1 + 48) & 2) != 0 || *(a1 + 416) >= 0.0)
              {
                time1.duration.value = v507;
                time1.duration.timescale = timescale;
                time1.duration.flags = cfa;
                time1.duration.epoch = v467;
                time1.presentationTimeStamp.value = v471;
                *&time1.presentationTimeStamp.timescale = v222;
                time1.presentationTimeStamp.epoch = v469;
                CMTimeRangeGetEnd(time2, &time1);
                v244 = v12 + 408;
                *v462 = *time2;
                v245 = *&time2[16];
              }

              else
              {
                *time2 = v507;
                *&time2[8] = timescale;
                *&time2[12] = cfa;
                *&time2[16] = v467;
                lhs.value = v471;
                *&lhs.timescale = v222;
                lhs.epoch = v469;
                CMTimeSubtract(&time1.duration, time2, &lhs);
                v244 = v12 + 408;
                *v462 = *&time1.duration.value;
                v245 = time1.duration.epoch;
              }

              *(v244 + 16) = v245;
              if (dword_1EAF16C30)
              {
                v246 = v242;
              }

              else
              {
                v246 = 0;
              }

              if (v246)
              {
                LODWORD(lhs.value) = 0;
                LOBYTE(duration.value) = 0;
                v247 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
                v248 = lhs.value;
                v249 = LOBYTE(duration.value);
                if (os_log_type_enabled(v247, duration.value))
                {
                  v250 = v248;
                }

                else
                {
                  v250 = v248 & 0xFFFFFFFE;
                }

                if (v250)
                {
                  *&time1.duration.value = *v462;
                  time1.duration.epoch = *(v12 + 424);
                  v251 = CMTimeGetSeconds(&time1.duration);
                  *time2 = 136316162;
                  *&time2[4] = "subaq_enqueueAQBufferIntoAudioQueue";
                  *&time2[12] = 2048;
                  *&time2[14] = a1;
                  *&time2[22] = 2048;
                  *&time2[24] = v12;
                  *v498 = 2082;
                  *&v498[2] = a1 + 800;
                  *&v498[10] = 2048;
                  *&v498[12] = v251;
                  LODWORD(v398) = 52;
                  _os_log_send_and_compose_impl(v250, 0, &time1, 128, &dword_1962D5000, v247, v249, "<<<< FAQ >>>> %s: [%p:%p] %{public}s SBuf output duration is zero and nextBufferPTS is never set; initializing nextBufferPTS (%1.3f) with PTS from the SBuf", time2, v398);
                }

                fig_log_call_emit_and_clean_up_after_send_and_compose();
                v6 = v452;
              }
            }

            CMSampleBufferGetOutputDuration(&time1.duration, v195);
            CMTimeConvertScale(&duration, &time1.duration, *(v12 + 100), kCMTimeRoundingMethod_RoundHalfAwayFromZero);
            v252 = duration.value;
            *(a1 + 736) += CMSampleBufferGetNumSamples(v195);
            *(a1 + 306) = 0;
            if (FigAudioQueueTimingShimEnqueueBufferWithParameters(*(v12 + 40), v459, v457, packetDescriptionsPointerOut, v465, v456 + v458, 0, 0, v224, rhs))
            {
              FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v397, v398, v399);
              v13 = 0;
              goto LABEL_473;
            }

            *(a1 + 578) = 0;
            v254 = *rhs;
            v255 = BYTE8(v488);
            v256 = *(MEMORY[0x1E6960C98] + 16);
            *&time1.duration.value = *MEMORY[0x1E6960C98];
            *&time1.duration.epoch = v256;
            *&time1.presentationTimeStamp.timescale = *(MEMORY[0x1E6960C98] + 32);
            v10 = MEMORY[0x1E6960C70];
            type.value = *MEMORY[0x1E6960C70];
            type.timescale = *(MEMORY[0x1E6960C70] + 8);
            if (*(a1 + 16))
            {
              goto LABEL_484;
            }

            CMSampleBufferGetOutputPresentationTimeStamp(time2, v195);
            CMSampleBufferGetOutputDuration(&lhs, v195);
            CMTimeRangeMake(&time1, time2, &lhs);
            if ((*(a1 + 48) & 2) != 0)
            {
              *time2 = time1.presentationTimeStamp;
              *&lhs.value = v468;
              lhs.epoch = v470;
              if (!CMTimeCompare(time2, &lhs) && !v224)
              {
                v257 = v434;
                v258 = v453;
                if (*(v12 + 444))
                {
                  if (v434)
                  {
                    goto LABEL_483;
                  }

                  goto LABEL_484;
                }
              }

              lhs = time1.duration;
              subaq_convertMediaTimeToAQTime(a1, time2);
            }

            else
            {
              if ((v255 & 1) == 0)
              {
                type.value = *MEMORY[0x1E6960CC0];
                type.timescale = *(MEMORY[0x1E6960CC0] + 8);
                v257 = HIDWORD(v425);
                v258 = v470;
                if ((v425 & 0x100000000) == 0)
                {
                  goto LABEL_484;
                }

LABEL_483:
                *v406 = type.value;
                *(v406 + 8) = type.timescale;
                *(v12 + 444) = v257;
                *(v12 + 448) = v258;
                *v405 = time1.presentationTimeStamp;
LABEL_484:
                time1.duration.value = v507;
                time1.duration.timescale = timescale;
                time1.duration.flags = cfa;
                time1.duration.epoch = v467;
                time1.presentationTimeStamp.value = v471;
                *&time1.presentationTimeStamp.timescale = v222;
                time1.presentationTimeStamp.epoch = v469;
                CMTimeRangeGetEnd(time2, &time1);
                *v424 = *time2;
                *(v424 + 16) = *&time2[16];
                if ((BYTE8(v488) & 2) != 0)
                {
                  v261 = 1.0;
                  LODWORD(v409) = v252;
                  if (*(a1 + 236))
                  {
                    v262 = *(a1 + 232);
                    if (v262 != 0.0)
                    {
                      v261 = v262;
                    }
                  }

                  v263 = fabs(v261 * *(v12 + 580));
                  memset(time2, 0, 24);
                  time1.duration.value = v471;
                  *&time1.duration.timescale = v222;
                  time1.duration.epoch = v469;
                  CMTimeMultiplyByFloat64(time2, &time1.duration, v8 / v263);
                  time1.duration.value = v507;
                  time1.duration.timescale = timescale;
                  time1.duration.flags = cfa;
                  time1.duration.epoch = v467;
                  time1.presentationTimeStamp.value = v471;
                  *&time1.presentationTimeStamp.timescale = v222;
                  time1.presentationTimeStamp.epoch = v469;
                  CMTimeRangeGetEnd(&lhs, &time1);
                  *v411 = lhs;
                  CMClockMakeHostTimeFromSystemUnits(&lhs, *&rhs[8]);
                  type = *time2;
                  CMTimeAdd(&time1.duration, &lhs, &type);
                  *v410 = *&time1.duration.value;
                  *(v410 + 16) = time1.duration.epoch;
                  v260 = v453;
                  v10 = MEMORY[0x1E6960C70];
                }

                else
                {
                  v259 = *v10;
                  *&v411->value = *v10;
                  v260 = v453;
                  v411->epoch = v453;
                  *v410 = v259;
                  *(v410 + 16) = v453;
                }

                *v446 = *v10;
                *(a1 + 336) = v260;
                v264 = 1;
                FigAtomicAdd32();
                FigAtomicAdd32();
                v265 = *(v12 + 612);
                *(v12 + 612) = v265 + 1;
                if (v265 >= 10)
                {
                  v266 = v252 / *(v12 + 100) + *(v12 + 616);
                  *(v12 + 616) = v266;
                  v267 = v266;
                  if (v267 >= 0.2)
                  {
                    v268 = v267 + -0.2;
                    *(v12 + 616) = v268;
                  }

                  else
                  {
                    v264 = 3;
                  }
                }

                if (v264 <= dword_1EAF16C30)
                {
                  LODWORD(lhs.value) = 0;
                  LOBYTE(type.value) = 0;
                  v269 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
                  v270 = lhs.value;
                  v271 = LOBYTE(type.value);
                  if (os_log_type_enabled(v269, type.value))
                  {
                    v272 = v270;
                  }

                  else
                  {
                    v272 = v270 & 0xFFFFFFFE;
                  }

                  if (v272)
                  {
                    v472 = *(v12 + 40);
                    valuea = *(v12 + 612);
                    time1.duration.value = v507;
                    time1.duration.timescale = timescale;
                    time1.duration.flags = cfa;
                    time1.duration.epoch = v467;
                    v273 = CMTimeGetSeconds(&time1.duration);
                    *&time1.duration.value = *v424;
                    time1.duration.epoch = *(v424 + 16);
                    v274 = CMTimeGetSeconds(&time1.duration);
                    if (v224)
                    {
                      v275 = *v224 / **(v12 + 64);
                    }

                    else
                    {
                      v275 = NAN;
                    }

                    v281 = *(v12 + 100);
                    v282 = *(v12 + 480);
                    if ((BYTE8(v488) & 2) != 0)
                    {
                      CMClockMakeHostTimeFromSystemUnits(&time1.duration, *&rhs[8]);
                      v283 = CMTimeGetSeconds(&time1.duration);
                    }

                    else
                    {
                      v283 = NAN;
                    }

                    *time2 = v428.i32[0];
                    *&time2[4] = "subaq_enqueueAQBufferIntoAudioQueue";
                    *&time2[12] = 2048;
                    *&time2[14] = a1;
                    *&time2[22] = 2048;
                    *&time2[24] = v12;
                    *v498 = 2048;
                    *&v498[2] = v472;
                    *&v498[10] = 2082;
                    *&v498[12] = a1 + 800;
                    *&v498[20] = 1024;
                    *&v498[22] = valuea;
                    *&v498[26] = 2048;
                    *&v498[28] = v273;
                    *&v498[36] = 2048;
                    *&v498[38] = v274;
                    v499 = 2048;
                    v500 = v252 / v281;
                    v501 = 2048;
                    v502 = v282 / v281;
                    v503 = 2048;
                    v504 = v275;
                    v505 = 2048;
                    v506 = v283;
                    LODWORD(v398) = 118;
                    _os_log_send_and_compose_impl(v272, 0, &time1, 128, &dword_1962D5000, v269, v271, "<<<< FAQ >>>> %s: [%p:%p:%p] %{public}s enqueueing #%d from %.3f to %.3f (duration: %.6f, total: %.6f) start time:(requested media: %.3f, actual host: %.3f)", time2, v398);
                    v6 = v452;
                    v8 = 1.0;
                  }

                  else
                  {
                    v6 = v452;
                  }

                  LODWORD(v412) = 1;
                  fig_log_call_emit_and_clean_up_after_send_and_compose();
                  v253 = 1;
                  goto LABEL_521;
                }

                LODWORD(v412) = 1;
                v253 = 1;
LABEL_522:
                v193 = v445;
                v284 = hostTime;
                v285 = v460;
                if (!packetDescriptionsPointerOut)
                {
                  v285 = 0;
                }

                if (v285 == 1)
                {
                  v286 = CFGetAllocator(v12);
                  CFAllocatorDeallocate(v286, packetDescriptionsPointerOut);
                }

                v287 = *rhs;
                v288 = *&rhs[8];
                v289 = DWORD2(v488);
                if (!v253)
                {
                  v289 = 0;
                  v288 = 0;
                  v287 = 0.0;
                }

                v445[v191] = 0;
                if (!v191)
                {
                  v192 = v287;
                  v284 = v288;
                }

                hostTime = v284;
                v190 = v463;
                if (!v191)
                {
                  v190 = v289;
                }

                ++v191;
                v189 = count;
                if (v191 == count)
                {
                  v464 = v190;
                  valueb = (v192 + 0.5);
                  v9 = 1.0;
                  v15 = v407;
                  goto LABEL_559;
                }

                continue;
              }

              CMTimeMake(time2, v254, *(v12 + 100));
            }

            break;
          }

          type.value = *time2;
          v257 = *&time2[12];
          type.timescale = *&time2[8];
          v258 = *&time2[16];
          if ((time2[12] & 1) == 0)
          {
            goto LABEL_484;
          }

          goto LABEL_483;
        }

        v176 = 1;
        *(v12 + v171 + 161) = 1;
        v177 = *rhs;
        v15 = v407;
        v178 = v445;
        goto LABEL_340;
      }

      value = v170;
      v179 = duration.value;
      cf = MEMORY[0x19A8D0E00](v12 + 16);
      FigSimpleMutexLock();
      v180 = 0;
      v181 = -1;
      v182 = -1;
      do
      {
        v177 = *(v164 + 8 * v180);
        if (!v177 || v177->mUserData)
        {
          goto LABEL_315;
        }

        if (v179 <= v177->mAudioDataBytesCapacity)
        {
          goto LABEL_330;
        }

        if (v181 == -1)
        {
          v181 = v180;
        }

        else
        {
LABEL_315:
          if (v177)
          {
            v183 = 0;
          }

          else
          {
            v183 = v182 == -1;
          }

          if (v183)
          {
            v182 = v180;
          }
        }

        ++v180;
      }

      while (v180 != 8);
      v184 = (v179 + 4095) & 0xFFFFF000;
      if (v181 == -1)
      {
        if (v182 != -1)
        {
          v185 = (v164 + 8 * v182);
          if (!FigAudioQueueTimingShimAllocateBuffer(*(v12 + 40), v184, v185))
          {
LABEL_329:
            v177 = *v185;
LABEL_330:
            v177->mUserData = v173;
            *rhs = v177;
            v186 = 1;
            goto LABEL_331;
          }

          faq_enqueueSourceData_cold_3();
        }
      }

      else
      {
        v185 = (v164 + 8 * v181);
        FigAudioQueueTimingShimFreeBuffer(*(v12 + 40), *v185);
        *v185 = 0;
        if (!FigAudioQueueTimingShimAllocateBuffer(*(v12 + 40), v184, v185))
        {
          goto LABEL_329;
        }

        faq_enqueueSourceData_cold_2();
      }

      v177 = 0;
      v186 = 0;
LABEL_331:
      if (cf)
      {
        CFRelease(cf);
      }

      FigSimpleMutexUnlock();
      if (v186)
      {
        if (value == v169)
        {
          memcpy(v177->mAudioData, lhs.value, duration.value);
        }

        else
        {
          v187 = CMSampleBufferGetDataBuffer(v166);
          CMBlockBufferCopyDataBytes(v187, 0, duration.value, v177->mAudioData);
        }

        v15 = v407;
        v178 = v445;
        if (*MEMORY[0x1E695FF58] == 1)
        {
          kdebug_trace();
        }

        v176 = 0;
        *(v12 + v171 + 161) = 0;
LABEL_340:
        v177->mAudioDataByteSize = duration.value;
        v177->mUserData = v173;
        v178[v163] = v177;
        v408[v163] = v176;
        v6 = v452;
        v10 = MEMORY[0x1E6960C70];
        goto LABEL_341;
      }

      LODWORD(end.value) = 0;
      LOBYTE(v509.value) = 0;
      v391 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v392 = end.value;
      v393 = LOBYTE(v509.value);
      if (os_log_type_enabled(v391, v509.value))
      {
        v394 = v392;
      }

      else
      {
        v394 = v392 & 0xFFFFFFFE;
      }

      if (v394)
      {
        *time2 = v431;
        *&time2[4] = "subaq_acquireAndPrepareAQBuffer";
        *&time2[12] = 2048;
        *&time2[14] = a1;
        *&time2[22] = 2048;
        *&time2[24] = v12;
        *v498 = 2082;
        *&v498[2] = a1 + 800;
        LODWORD(v398) = 42;
        v397 = time2;
        _os_log_send_and_compose_impl(v394, 0, &time1, 128, &dword_1962D5000, v391, v393, "<<<< FAQ >>>> %s: [%p:%p] %{public}s couldn't do anything with this sbuf; releasing it");
      }

      v6 = v452;
      v9 = 1.0;
      v305 = v12 + v171 + 144;
      fig_log_call_emit_and_clean_up_after_send_and_compose();
LABEL_557:
      v15 = v407;
      subaq_returnAQBufferInfoPtr(v12, v305);
      valueb = 0;
      hostTime = 0;
      v464 = 0;
      v13 = 0;
      LODWORD(v412) = 0;
      v10 = MEMORY[0x1E6960C70];
LABEL_558:
      v193 = v445;
      v189 = count;
LABEL_559:
      v306 = v193;
      v307 = v193;
      v308 = v408;
      if (v189 >= 1)
      {
        do
        {
          if (*v307)
          {
            v309 = v189;
            subaq_returnAQBufferInfoPtr(v12, (*v307)->mUserData);
            if (*v308)
            {
              FigAudioQueueTimingShimFreeBuffer(*(v12 + 40), *v307);
            }

            else
            {
              v310 = *v307;
              v310->mAudioDataByteSize = 0;
              v310->mUserData = 0;
            }

            v189 = v309;
          }

          ++v308;
          ++v307;
          --v189;
        }

        while (v189);
      }

      v311 = *(a1 + 120);
      if (v311)
      {
        v312 = *(a1 + 112);
        v313 = *(&v401 + 1) >= v312 ? *(a1 + 112) : *(&v401 + 1);
        *(a1 + 112) = v312 - v313;
        if (v312 <= *(&v401 + 1))
        {
          CFRelease(v311);
          *(a1 + 120) = 0;
        }
      }

      a2 = v454;
      if (v484)
      {
        CFRelease(v484);
      }

      if (theArray)
      {
        CFRelease(theArray);
      }

      free(v306);
      free(v408);
      if (v404 && !*(a1 + 578))
      {
        subaq_flushAudioQueue(a1, v12);
      }

      if (*(a1 + 196))
      {
        v314 = *(v12 + 100);
        *cfb = *v10;
        *block = *v10;
        *&block[16] = v453;
        if ((v464 & 2) != 0)
        {
          CMClockMakeHostTimeFromSystemUnits(block, hostTime);
          memset(rhs, 0, 24);
          HostTimeClock = CMClockGetHostTimeClock();
          CMClockGetTime(rhs, HostTimeClock);
          v323 = valueb;
          if (dword_1EAF16C30)
          {
            LODWORD(duration.value) = 0;
            LOBYTE(type.value) = 0;
            v324 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            v325 = duration.value;
            v326 = LOBYTE(type.value);
            if (os_log_type_enabled(v324, type.value))
            {
              v327 = v325;
            }

            else
            {
              v327 = v325 & 0xFFFFFFFE;
            }

            if (v327)
            {
              *&time1.duration.value = *block;
              time1.duration.epoch = *&block[16];
              v328 = CMTimeGetSeconds(&time1.duration);
              *&time1.duration.value = *rhs;
              time1.duration.epoch = *&rhs[16];
              v329 = CMTimeGetSeconds(&time1.duration);
              *time2 = *block;
              *&time2[16] = *&block[16];
              lhs = *rhs;
              CMTimeSubtract(&time1.duration, time2, &lhs);
              v330 = CMTimeGetSeconds(&time1.duration);
              *time2 = v427;
              *&time2[4] = "faq_processTransitions";
              *&time2[12] = 2048;
              *&time2[14] = a1;
              *&time2[22] = 2082;
              *&time2[24] = a1 + 800;
              *v498 = 2048;
              *&v498[2] = v328;
              *&v498[10] = 2048;
              *&v498[12] = v329;
              *&v498[20] = 2048;
              *&v498[22] = v330;
              LODWORD(v398) = 62;
              v397 = time2;
              _os_log_send_and_compose_impl(v327, 0, &time1, 128, &dword_1962D5000, v324, v326, "<<<< FAQ >>>> %s: [%p %{public}s] actualStartTime %1.3f == %1.3f (now) + %1.3f");
            }

            fig_log_call_emit_and_clean_up_after_send_and_compose();
            a2 = v454;
            v10 = MEMORY[0x1E6960C70];
            v15 = v407;
          }
        }

        else
        {
          v315 = v10;
          v316 = v6;
          v317 = v15;
          *rhs = 0;
          LOBYTE(lhs.value) = 0;
          v318 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          v319 = *rhs;
          v320 = LOBYTE(lhs.value);
          if (os_log_type_enabled(v318, lhs.value))
          {
            v321 = v319;
          }

          else
          {
            v321 = v319 & 0xFFFFFFFE;
          }

          if (v321)
          {
            *time2 = v420;
            *&time2[4] = "faq_processTransitions";
            *&time2[12] = 2048;
            *&time2[14] = a1;
            *&time2[22] = 2082;
            *&time2[24] = a1 + 800;
            LODWORD(v398) = 32;
            v397 = time2;
            _os_log_send_and_compose_impl(v321, 0, &time1, 128, &dword_1962D5000, v318, v320, "<<<< FAQ >>>> %s: [%p %{public}s] ERROR: AudioQueueEnqueueBuffer did not provide a host time, assuming NOW instead (this may cause sync and gapless problems)");
          }

          fig_log_call_emit_and_clean_up_after_send_and_compose();
          v331 = CMClockGetHostTimeClock();
          CMClockGetTime(&time1.duration, v331);
          *block = *&time1.duration.value;
          *&block[16] = time1.duration.epoch;
          a2 = v454;
          v15 = v317;
          v6 = v316;
          v10 = v315;
          v323 = valueb;
        }

        if (v464)
        {
          CMTimeMake(&time1.duration, v323, v314);
          faqTimelineWrangler_setAQTimeInFAQProcessTransitions(v426, &time1.duration.value);
          v336 = (a1 + 184);
        }

        else
        {
          *rhs = 0;
          LOBYTE(lhs.value) = 0;
          v332 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          v333 = *rhs;
          v334 = LOBYTE(lhs.value);
          if (os_log_type_enabled(v332, lhs.value))
          {
            v335 = v333;
          }

          else
          {
            v335 = v333 & 0xFFFFFFFE;
          }

          if (v335)
          {
            *time2 = v420;
            *&time2[4] = "faq_processTransitions";
            *&time2[12] = 2048;
            *&time2[14] = a1;
            *&time2[22] = 2082;
            *&time2[24] = a1 + 800;
            LODWORD(v398) = 32;
            v397 = time2;
            _os_log_send_and_compose_impl(v335, 0, &time1, 128, &dword_1962D5000, v332, v334, "<<<< FAQ >>>> %s: [%p %{public}s] ERROR: AudioQueueEnqueueBuffer did not provide a sample time, assuming ZERO instead (this may cause sync and gapless problems)");
          }

          a2 = v454;
          v336 = (a1 + 184);
          fig_log_call_emit_and_clean_up_after_send_and_compose();
          faqTimelineWrangler_setAQTimeInFAQProcessTransitions(v426, MEMORY[0x1E6960CC0]);
        }

        v337 = v336;
        while (1)
        {
          v337 = *v337;
          if (!v337)
          {
            break;
          }

          if (v337[96])
          {
            memset(rhs, 0, 24);
            memset(&lhs, 0, sizeof(lhs));
            if (*(a1 + 16))
            {
              v338 = 0;
            }

            else
            {
              v338 = CFArrayGetValueAtIndex(*(a1 + 176), 0);
            }

            v339 = *v336;
            if (*v336 == v337)
            {
              v340 = v336;
            }

            else
            {
              do
              {
                v340 = v339;
                v339 = *v339;
              }

              while (v339 != v337);
            }

            *v340 = *v339;
            --*(a1 + 192);
            v341 = *(v337 + 24);
            *(a1 + 568) = *(v337 + 5);
            *v444 = v341;
            if (dword_1EAF16C30)
            {
              v342 = v15;
              LODWORD(duration.value) = 0;
              LOBYTE(type.value) = 0;
              v343 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
              v344 = duration.value;
              v345 = LOBYTE(type.value);
              if (os_log_type_enabled(v343, type.value))
              {
                v346 = v344;
              }

              else
              {
                v346 = v344 & 0xFFFFFFFE;
              }

              if (v346)
              {
                *&time1.duration.value = *v444;
                time1.duration.epoch = *(a1 + 568);
                v347 = CMTimeGetSeconds(&time1.duration);
                *time2 = 136316162;
                *&time2[4] = "faq_processTransitions";
                *&time2[12] = 2048;
                *&time2[14] = a1;
                *&time2[22] = 2082;
                *&time2[24] = a1 + 800;
                *v498 = 2048;
                *&v498[2] = v426;
                *&v498[10] = 2048;
                *&v498[12] = v347;
                LODWORD(v398) = 52;
                v397 = time2;
                _os_log_send_and_compose_impl(v346, 0, &time1, 128, &dword_1962D5000, v343, v345, "<<<< FAQ >>>> %s: [%p %{public}s] TimelineWrangler %p: mediaTime_StartTimeAtFirstStart = %.3f");
              }

              fig_log_call_emit_and_clean_up_after_send_and_compose();
              v10 = MEMORY[0x1E6960C70];
              v15 = v342;
              v6 = v452;
            }

            v348 = *(v337 + 24);
            *(a1 + 544) = *(v337 + 5);
            *v441 = v348;
            *(a1 + 480) = *cfb;
            *(a1 + 496) = v453;
            v349 = *(v337 + 11);
            if (v349)
            {
              v350 = CFGetTypeID(v349);
              if (v350 == CFDictionaryGetTypeID())
              {
                CFDictionaryApplyFunction(*(v337 + 11), &faq_updatePropertyAtTransition, a1);
              }
            }

            v336 = (a1 + 184);
            if (v338)
            {
              subaq_setTapTimelineInfo(a1, v338, 1);
            }

            *&lhs.value = v468;
            lhs.epoch = v470;
            subaq_getAudioQueueLatencyFigTime();
            *&time1.duration.value = *(v337 + 24);
            time1.duration.epoch = *(v337 + 5);
            *time2 = lhs;
            CMTimeSubtract(rhs, &time1.duration, time2);
            if (dword_1EAF16C30)
            {
              LODWORD(duration.value) = 0;
              LOBYTE(type.value) = 0;
              v351 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
              v352 = duration.value;
              v353 = LOBYTE(type.value);
              if (os_log_type_enabled(v351, type.value))
              {
                v354 = v352;
              }

              else
              {
                v354 = v352 & 0xFFFFFFFE;
              }

              if (v354)
              {
                *&time1.duration.value = *(v337 + 24);
                time1.duration.epoch = *(v337 + 5);
                v355 = CMTimeGetSeconds(&time1.duration);
                *&time1.duration.value = *rhs;
                time1.duration.epoch = *&rhs[16];
                v356 = CMTimeGetSeconds(&time1.duration);
                time1.duration = lhs;
                v357 = CMTimeGetSeconds(&time1.duration);
                *time2 = v427;
                *&time2[4] = "faq_processTransitions";
                *&time2[12] = 2048;
                *&time2[14] = a1;
                *&time2[22] = 2082;
                *&time2[24] = a1 + 800;
                *v498 = 2048;
                *&v498[2] = v355;
                *&v498[10] = 2048;
                *&v498[12] = v356;
                *&v498[20] = 2048;
                *&v498[22] = v357;
                LODWORD(v398) = 62;
                v397 = time2;
                _os_log_send_and_compose_impl(v354, 0, &time1, 128, &dword_1962D5000, v351, v353, "<<<< FAQ >>>> %s: [%p %{public}s] transitionMediaStartTime %.3f is adjusted to %.3f by deviceLatencyTime %.3f");
              }

              fig_log_call_emit_and_clean_up_after_send_and_compose();
              v336 = (a1 + 184);
              v15 = v407;
            }

            *(v337 + 24) = *rhs;
            *(v337 + 5) = *&rhs[16];
            *(v337 + 3) = *block;
            *(v337 + 8) = *&block[16];
            *(v337 + 18) = *(a1 + 416);
            dispatch_async_f(*(a1 + 32), v337, faq_fireTransitionCallback);
            v337 = v336;
            a2 = v454;
          }
        }

        *(a1 + 196) = 0;
      }

      if (*(*(v12 + 64) + 8) == 1819304813)
      {
        memset(&time1, 0, 24);
        CMSampleBufferGetOutputDuration(&time1.duration, v15);
        v5 = v403;
        v25 = v412;
        if (*(a1 + 356))
        {
          goto LABEL_637;
        }

        *time2 = *&time1.duration.value;
        *&time2[16] = time1.duration.epoch;
        *block = v468;
        *&block[16] = v470;
        if (CMTimeCompare(time2, block) >= 1 && (CMTimeMake(time2, 100, 1000), *block = *&time1.duration.value, *&block[16] = time1.duration.epoch, CMTimeCompare(block, time2) < 0))
        {
          *(a1 + 356) = 1;
          *v435 = *&time1.duration.value;
          *(a1 + 376) = time1.duration.epoch;
        }

        else if (*(a1 + 356))
        {
LABEL_637:
          *time2 = *&time1.duration.value;
          *&time2[16] = time1.duration.epoch;
          *block = v468;
          *&block[16] = v470;
          if (CMTimeCompare(time2, block) >= 1)
          {
            *block = *v435;
            *&block[16] = *(a1 + 376);
            *rhs = *&time1.duration.value;
            *&rhs[16] = time1.duration.epoch;
            CMTimeAdd(time2, block, rhs);
            *v435 = *time2;
            *(a1 + 376) = *&time2[16];
            CMTimeMake(time2, 200, 1000);
            *block = *v435;
            *&block[16] = *(a1 + 376);
            if (CMTimeCompare(block, time2) >= 1)
            {
              *(a1 + 356) = 0;
              *v435 = v468;
              *(a1 + 376) = v470;
            }
          }
        }

LABEL_643:
        v26 = 1;
      }

      else
      {
        v5 = v403;
        v25 = v412;
        if (!*(a1 + 356))
        {
          goto LABEL_643;
        }

        *(a1 + 356) = 0;
        *v435 = v468;
        v26 = 1;
        *(a1 + 376) = v470;
      }

LABEL_644:
      if (!*(a1 + 16))
      {
        if (v15)
        {
          CFRelease(v15);
        }

        if (!v13)
        {
          v13 = 0;
          if (!*(a1 + 16))
          {
            *(a1 + 356) = 0;
            *v435 = *MEMORY[0x1E6960CC0];
            *(a1 + 376) = v470;
          }
        }
      }

      if (v25)
      {
        v5 = 1;
      }

      if (!v26)
      {
        v466 = 1;
      }

LABEL_654:
      if (!v13)
      {
LABEL_773:
        FigSimpleMutexUnlock();
        if (v466)
        {
          CMNotificationCenterGetDefaultLocalCenter();
          CMNotificationCenterPostNotification();
        }

        if (v5)
        {
          faq_wakeupOfflineMixer(a1);
        }

        return;
      }
    }
  }

  FigSimpleMutexUnlock();
}