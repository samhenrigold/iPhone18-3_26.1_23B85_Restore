uint64_t subaq_setCinematicAudioBulkParameters(uint64_t a1, uint64_t a2, const __CFData *a3)
{
  subaq_ensureCinematicAudioEnabled(a1, a2, 0);
  v6 = *(a2 + 40);
  CFDataGetBytePtr(a3);
  v7 = OUTLINED_FUNCTION_411();
  Length = CFDataGetLength(v7);
  v9 = FigAudioQueueTimingShimSetProperty(v6, 0x715F636Du, v3, Length);
  if (v9 == -66684)
  {
    CFDataGetLength(a3);
    CFDataGetBytePtr(a3);
    v10 = FigAtomStreamInitWithMemoryBlock();
    if (!v10)
    {
      FigAtomStreamGetCurrentAtomTypeAndDataLength();
      OUTLINED_FUNCTION_303();
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v12, 0, 0);
    }

    v9 = v10;
    free(0);
  }

  return v9;
}

double parseCinematicAudioHeaderAtom()
{
  OUTLINED_FUNCTION_147();
  if (!FigAtomStreamGetCurrentAtomTypeAndDataLength())
  {
    OUTLINED_FUNCTION_303();
    return FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
  }

  return result;
}

double parseCinematicAudioParametersAtom()
{
  OUTLINED_FUNCTION_147();
  if (!FigAtomStreamGetCurrentAtomTypeAndDataLength())
  {
    OUTLINED_FUNCTION_303();
    return FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
  }

  return result;
}

void subaq_scheduleVolumeCurvesForMediaTimeRange(uint64_t a1, uint64_t a2, CFDictionaryRef theDict, _OWORD *a4, int a5, int a6)
{
  HIDWORD(v198) = a5;
  v241 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    return;
  }

  if (!theDict)
  {
    return;
  }

  v6 = a1;
  if (*(a1 + 16))
  {
    return;
  }

  Value = CFDictionaryGetValue(theDict, @"AudioCurve_Volume");
  if (!Value)
  {
    return;
  }

  v11 = Value;
  v12 = a4[1];
  *&v222.start.value = *a4;
  *&v222.start.epoch = v12;
  *&v222.duration.timescale = a4[2];
  memset(&v229, 0, sizeof(v229));
  Count = CFArrayGetCount(Value);
  v14 = MEMORY[0x1E6960C70];
  v217 = a2;
  if (Count != 3 * (Count / 3))
  {
    OUTLINED_FUNCTION_40_0();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v184, v189, v193);
    if (v183)
    {
      return;
    }

    goto LABEL_120;
  }

  v15 = Count;
  if (!Count)
  {
    Mutable = CFRetain(v11);
    goto LABEL_54;
  }

  v193 = v6;
  LODWORD(v203) = a6;
  Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C0]);
  range = v222;
  CMTimeRangeGetEnd(&v229, &range);
  v236.value = *v14;
  v236.timescale = *(v14 + 2);
  v17 = CFArrayGetCount(v11);
  if (v17 < 4)
  {
    v23 = 0;
  }

  else
  {
    v18 = v17;
    v19 = 0;
    v20 = 0;
    v21 = (v17 - 1) / 3uLL;
    while (1)
    {
      memset(&range, 0, 24);
      v22 = (v19 + v21) / 2;
      v23 = 3 * v22;
      CMTimeAtIndex = FigCFArrayGetCMTimeAtIndex();
      if (!CMTimeAtIndex)
      {
        break;
      }

      time1 = range.start;
      OUTLINED_FUNCTION_15_6(CMTimeAtIndex, v25, v26, v27, v28, v29, v30, v31, v184, v189, v193, v198, v203, v209, v213, v217, *&v222.start.value);
      v32 = CMTimeCompare(&time1, &time2);
      if ((v32 & 0x80000000) != 0)
      {
        v19 = v22 + 1;
        v20 = 3 * v22;
      }

      else
      {
        time1 = range.start;
        OUTLINED_FUNCTION_15_6(v32, v33, v34, v35, v36, v37, v38, v39, v184, v189, v193, v198, v203, v209, v213, v217, *&v222.start.value);
        if (CMTimeCompare(&time1, &time2) <= 0)
        {
          memset(&time1, 0, sizeof(time1));
          if (v18 <= v23 + 3)
          {
LABEL_24:
            v20 = v23;
          }

          else
          {
            v20 = 3 * v22;
            while (1)
            {
              v40 = FigCFArrayGetCMTimeAtIndex();
              if (!v40)
              {
                break;
              }

              OUTLINED_FUNCTION_15_6(v40, v41, v42, v43, v44, v45, v46, v47, v184, v189, v193, v198, v203, v209, v213, v217, *&v222.start.value);
              v231 = time1;
              if (CMTimeCompare(&time2, &v231) < 0)
              {
                v23 = v20;
                goto LABEL_24;
              }

              memset(&time1, 0, sizeof(time1));
              v23 = v20 + 3;
              v48 = v20 + 6;
              v20 += 3;
              if (v18 <= v48)
              {
                goto LABEL_24;
              }
            }
          }

          break;
        }

        v21 = v22 - 1;
        v23 = v20;
      }

      if (v21 < v19)
      {
        goto LABEL_26;
      }
    }

    v23 = v20;
  }

LABEL_26:
  v49 = (v23 + 2);
  if (v23 + 2 >= v15)
  {
    goto LABEL_49;
  }

  v50 = 0;
  v51 = *(MEMORY[0x1E6960C70] + 12);
  v52 = @"Linear";
  v53 = NAN;
  while (1)
  {
    v54 = v52;
    memset(&time1, 0, sizeof(time1));
    time.value = 0;
    if (!FigCFArrayGetCMTimeAtIndex() || !FigCFArrayGetDoubleAtIndex() || (ValueAtIndex = CFArrayGetValueAtIndex(v11, v49)) == 0 || (v52 = ValueAtIndex, v49 = CFGetTypeID(ValueAtIndex), v49 != CFStringGetTypeID()))
    {
      OUTLINED_FUNCTION_40_0();
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v184, v189, v193);
      v182 = v181;
      a6 = v203;
      v6 = v193;
      v14 = MEMORY[0x1E6960C70];
      if (Mutable)
      {
        CFRelease(Mutable);
      }

      if (v182)
      {
        return;
      }

LABEL_120:
      Mutable = 0;
      goto LABEL_54;
    }

    OUTLINED_FUNCTION_48_2();
    OUTLINED_FUNCTION_15_6(v56, v57, v58, v59, v60, v61, v62, v63, v184, v189, v193, v198, v203, v209, v213, v217, *&v222.start.value);
    v64 = CMTimeCompare(&range.start, &time2);
    if ((v64 & 0x80000000) != 0)
    {
      break;
    }

    OUTLINED_FUNCTION_48_2();
    OUTLINED_FUNCTION_15_6(v72, v73, v74, v75, v76, v77, v78, v79, v184, v189, v193, v198, v203, v209, v213, v217, *&v222.start.value);
    v80 = CMTimeCompare(&range.start, &time2);
    if (v80)
    {
      if (v50 && (v203 || v53 != *&time.value))
      {
        v88 = OUTLINED_FUNCTION_38_1(v80, v81, v82, v83, v84, v85, v86, v87, v184, v189, v193, v198, v203, v209, v213, v217, v222.start.value, *&v222.start.timescale, v222.start.epoch, v222.duration.value, *&v222.duration.timescale, v222.duration.epoch, time.value, *&time.timescale, time.epoch, v224, range.start.value, *&range.start.timescale, range.start.epoch, range.duration.value, *&range.duration.timescale, range.duration.epoch, v226, *(&v226 + 1), *&v227, *&v228, v229.value, *&v229.timescale, v229.epoch, v230, *&v231.value, v231.epoch, v232, time2.value, time2.timescale, time2.flags, time2.epoch);
        OUTLINED_FUNCTION_15_6(v88, v89, v90, v91, v92, v93, v94, v95, v185, v190, v194, v199, v204, v210, v214, v218, *&v222.start.value);
        faq_getLinearlyInterpolatedVolumeAtTimeInRange(&range.start, &time2, v53, v96);
        OUTLINED_FUNCTION_761(v97, v98, v99, v100, v101, v102, v103, v104, v186, v191, v195, v200, v205, v211, v215, v219, *&v222.start.value);
        FigCFArrayAppendCMTime();
        FigCFArrayAppendDouble();
        CFArrayAppendValue(Mutable, v54);
      }

      *&v105 = OUTLINED_FUNCTION_48_2().n128_u64[0];
      OUTLINED_FUNCTION_64_2(v105, v106, v107, v108, v109, v110, v111, v112, *&v184, *&v189, *&v193, *&v198, *&v203, *&v209, *&v213, *&v217, *&v222.start.value, *&v222.start.timescale, *&v222.start.epoch, *&v222.duration.value, *&v222.duration.timescale, *&v222.duration.epoch, *&time.value, *&time.timescale, *&time.epoch, *&v224, *&range.start.value, *&range.start.timescale, *&range.start.epoch, *&range.duration.value, *&range.duration.timescale, *&range.duration.epoch, *&v226, *(&v226 + 1), v227, v228, *&v229.value);
      v115 = CMTimeCompare(v113, v114);
      if (v115 >= 1)
      {
        if ((v51 & 1) != 0 && v53 != *&time.value)
        {
          OUTLINED_FUNCTION_38_1(v115, v116, v117, v118, v119, v120, v121, v122, v184, v189, v193, v198, v203, v209, v213, v217, v222.start.value, *&v222.start.timescale, v222.start.epoch, v222.duration.value, *&v222.duration.timescale, v222.duration.epoch, time.value, *&time.timescale, time.epoch, v224, range.start.value, *&range.start.timescale, range.start.epoch, range.duration.value, *&range.duration.timescale, range.duration.epoch, v226, *(&v226 + 1), *&v227, *&v228, v229.value, *&v229.timescale, v229.epoch, v230, *&v231.value, v231.epoch, v232, time2.value, time2.timescale, time2.flags, time2.epoch);
          OUTLINED_FUNCTION_64_2(v128, *&time.value, v129, v130, v131, v132, v133, v134, v187, v192, v196, v201, v206, v212, v216, v220, *&v222.start.value, *&v222.start.timescale, *&v222.start.epoch, *&v222.duration.value, *&v222.duration.timescale, *&v222.duration.epoch, *&time.value, *&time.timescale, *&time.epoch, *&v224, *&range.start.value, *&range.start.timescale, *&range.start.epoch, *&range.duration.value, *&range.duration.timescale, *&range.duration.epoch, *&v226, *(&v226 + 1), v227, v228, *&v229.value);
          faq_getLinearlyInterpolatedVolumeAtTimeInRange(v135, v136, v53, v137);
          range.start = v229;
          FigCFArrayAppendCMTime();
          FigCFArrayAppendDouble();
          goto LABEL_48;
        }

        goto LABEL_49;
      }
    }

    CFArrayGetValueAtIndex(v11, v23);
    v123 = OUTLINED_FUNCTION_577();
    CFArrayAppendValue(v123, v124);
    CFArrayGetValueAtIndex(v11, v23 + 1);
    v125 = OUTLINED_FUNCTION_577();
    CFArrayAppendValue(v125, v126);
    CFArrayAppendValue(Mutable, v52);
    v50 = 0;
    v127 = v23 + 3;
LABEL_42:
    v236.value = time1.value;
    LOBYTE(v51) = time1.flags;
    v236.timescale = time1.timescale;
    v53 = *&time.value;
    v49 = (v23 + 5);
    v23 = v127;
    if (v49 >= v15)
    {
      goto LABEL_49;
    }
  }

  v127 = v23 + 3;
  v50 = 1;
  if (!v203 || v127 != v15)
  {
    goto LABEL_42;
  }

  OUTLINED_FUNCTION_761(v64, v65, v66, v67, v68, v69, v70, v71, v184, v189, v193, v198, v203, v209, v213, v217, *&v222.start.value);
  FigCFArrayAppendCMTime();
  CFArrayGetValueAtIndex(v11, v23 + 1);
  v138 = OUTLINED_FUNCTION_577();
  CFArrayAppendValue(v138, v139);
LABEL_48:
  CFArrayAppendValue(Mutable, v52);
LABEL_49:
  a6 = v203;
  if (v203)
  {
    v140 = CFArrayGetCount(Mutable);
    v14 = MEMORY[0x1E6960C70];
    if (v140 >= 4)
    {
      CFArrayGetValueAtIndex(Mutable, 0);
      v141 = OUTLINED_FUNCTION_54_2();
      v142 = CFArrayGetValueAtIndex(v141, 1);
      v143 = CFArrayGetValueAtIndex(Mutable, 2);
      CFArrayInsertValueAtIndex(Mutable, 0, v49);
      CFArrayInsertValueAtIndex(Mutable, 1, v142);
      CFArrayInsertValueAtIndex(Mutable, 2, v143);
    }

    v6 = v193;
  }

  else
  {
    v6 = v193;
    v14 = MEMORY[0x1E6960C70];
  }

LABEL_54:
  v235 = -1.0;
  v144 = *MEMORY[0x1E6960CC0];
  *&v222.start.value = *MEMORY[0x1E6960CC0];
  v145 = *(MEMORY[0x1E6960CC0] + 16);
  v222.start.epoch = v145;
  if (!Mutable || *(v6 + 16))
  {
LABEL_113:
    if (Mutable)
    {
      goto LABEL_114;
    }
  }

  else
  {
    v207 = v144;
    v146 = CFArrayGetCount(Mutable);
    if (v146 >= 1)
    {
      v153 = v146;
      if (v146 == 3 * (v146 / 3uLL))
      {
        v154 = 1.0;
        if ((*(v6 + 48) & 2) != 0)
        {
          goto LABEL_67;
        }

        OUTLINED_FUNCTION_97_2();
        if (v166)
        {
          v157 = v155;
        }

        else
        {
          v157 = v156;
        }

        if (*(v6 + 236))
        {
          v158 = *(v6 + 232);
          v166 = v158 == 0.0;
          v155 = v158;
          if (v166)
          {
            v155 = 1.0;
          }
        }

        v159 = v157 / v155;
        if (v159 != 0.0)
        {
          v154 = v159;
LABEL_67:
          if (*(v217 + 48))
          {
            v160 = v217;
            subaq_getCurrentQueueTime(v217, &v222.start);
          }

          else
          {
            *&v222.start.value = v207;
            v222.start.epoch = v145;
            v160 = v217;
          }

          OUTLINED_FUNCTION_761(v146, *(v160 + 100), v147, v148, v149, v150, v151, v152, v184, v189, v193, v198, v207, *(&v207 + 1), v213, v217, *&v222.start.value);
          CMTimeConvertScale(&time1, &range.start, v161, kCMTimeRoundingMethod_RoundHalfAwayFromZero);
          v197 = time1.value;
          *&range.start.value = *(v6 + 528);
          range.start.epoch = *(v6 + 544);
          CMTimeConvertScale(&time2, &range.start, *(v160 + 100), kCMTimeRoundingMethod_RoundHalfAwayFromZero);
          v162 = time2.value;
          v163 = *(v160 + 100);
          *&range.start.value = *(v6 + 456);
          range.start.epoch = *(v6 + 472);
          CMTimeConvertScale(&v231, &range.start, v163, kCMTimeRoundingMethod_RoundHalfAwayFromZero);
          v164 = 0;
          v165 = v231.value;
          if (a6)
          {
            v166 = 1;
          }

          else
          {
            v166 = v153 == 3;
          }

          v167 = v166;
          v188 = v167;
          v208 = *v14;
          v168 = *(v14 + 2);
          v169 = v153;
          while (2)
          {
            *&v229.value = v208;
            v229.epoch = v168;
            v227 = 0.0;
            v228 = 0.0;
            v226 = 0u;
            memset(&range, 0, sizeof(range));
            v240 = 0.0;
            v239 = 0;
            v238 = 18;
            v237 = 0xB0000000CLL;
            if (!v202)
            {
              v237 = 0x1A0000001BLL;
              v238 = 28;
            }

            if (v154 <= 0.0)
            {
              v170 = v221;
              if (!FigCFArrayGetCMTimeAtIndex() || !FigCFArrayGetDoubleAtIndex())
              {
                goto LABEL_113;
              }

              v171 = v169 - 1;
            }

            else
            {
              v170 = v221;
              if (!FigCFArrayGetCMTimeAtIndex() || !FigCFArrayGetDoubleAtIndex())
              {
                goto LABEL_113;
              }

              v171 = v164 + 2;
            }

            v172 = CFArrayGetValueAtIndex(Mutable, v171);
            if (!v172)
            {
              goto LABEL_113;
            }

            v173 = CFEqual(v172, @"EqualPower") ? 1.0 : 0.0;
            v240 = v173;
            if (FigAudioQueueTimingShimSetParameter(*(v170 + 40), v238, v173))
            {
              goto LABEL_113;
            }

            v174 = *(v170 + 100);
            time = v229;
            CMTimeConvertScale(&v236, &time, v174, kCMTimeRoundingMethod_RoundHalfAwayFromZero);
            v175 = v235;
            if (v165 + (v236.value - v162) * v154 >= 0.0)
            {
              v176 = v165 + (v236.value - v162) * v154;
            }

            else
            {
              v176 = 0.0;
            }

            v228 = v176;
            if (v176 <= v235)
            {
              subaq_incrementSampleTime(v170, &v228, v235);
              if (v180)
              {
                goto LABEL_113;
              }

              v176 = v228;
            }

            v177 = v227;
            *(&v239 + 1) = v177;
            if (v164)
            {
              if (a6 || v176 >= v197)
              {
                v178 = (v176 - v175) / *(v170 + 100);
                *&v239 = v178;
                *&range.start.value = v175;
LABEL_105:
                DWORD2(v226) = 1;
                if (FigAudioQueueTimingShimScheduleParameters(*(v170 + 40), &range.start.value, 3, &v237, &v239))
                {
                  goto LABEL_113;
                }

                goto LABEL_106;
              }
            }

            else if (v188)
            {
              LODWORD(v239) = 0;
              if (a6 || v176 >= v197)
              {
                if (!a6 || *(v170 + 48) || *(v170 + 632))
                {
                  *&range.start.value = v176;
                  goto LABEL_105;
                }

                *&range.start.value = v197;
                DWORD2(v226) = 0;
                FigAudioQueueTimingShimScheduleParameters(*(v170 + 40), &range.start.value, 1, &v237 + 1, &v239 + 1);
LABEL_106:
                *(v170 + 632) = 1;
              }
            }

            subaq_incrementSampleTime(v170, &v235, v176);
            if (v179)
            {
              goto LABEL_113;
            }

            v164 += 3;
            v169 -= 3;
            if (v164 >= v153)
            {
              goto LABEL_113;
            }

            continue;
          }
        }
      }

      else
      {
        OUTLINED_FUNCTION_40_0();
        FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v184, v189, v193);
      }
    }

LABEL_114:
    CFRelease(Mutable);
  }
}

void subaq_scheduleCinematicForMediaTimeRange(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, __int16 a12, char a13, os_log_type_t type, unsigned int a15, __int128 a16, int a17, __int16 a18, __int16 a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, const char *a52)
{
  OUTLINED_FUNCTION_458();
  v85 = v55;
  if (!v52)
  {
    goto LABEL_11;
  }

  v56 = v54;
  if (!v54)
  {
    goto LABEL_11;
  }

  v57 = v52;
  if (*(v52 + 16))
  {
    goto LABEL_11;
  }

  v58 = v53;
  Value = CFDictionaryGetValue(v54, @"AudioCurves_AmbienceLevel");
  v60 = CFDictionaryGetValue(v56, @"AudioCurves_DialogLevel");
  v61 = CFDictionaryGetValue(v56, @"AudioCurves_DialogMixBias");
  v62 = CFDictionaryGetValue(v56, @"AudioCurves_DialogLoudness");
  v63 = CFDictionaryGetValue(v56, @"AudioCurves_AmbienceLoudness");
  v64 = CFDictionaryGetValue(v56, @"AudioCurves_RecordingLoudness");
  v65 = CFDictionaryGetValue(v56, @"AudioCurves_RenderingStyle");
  v66 = v65;
  if (!Value && !v61 && !v60 && !v62 && !v63 && !v64 && !v65)
  {
    goto LABEL_11;
  }

  subaq_ensureCinematicAudioEnabled(v57, v58, 0);
  if (!*(v57 + 792))
  {
    OUTLINED_FUNCTION_147();
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    if (os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, type))
    {
      v78 = a15;
    }

    else
    {
      v78 = a15 & 0xFFFFFFFE;
    }

    if (v78)
    {
      OUTLINED_FUNCTION_52_2();
      OUTLINED_FUNCTION_45_3();
      OUTLINED_FUNCTION_39();
      OUTLINED_FUNCTION_9_6();
      _os_log_send_and_compose_impl(v79, v80, v81, v82, v83, os_log_and_send_and_compose_flags_and_os_log_type, type, v84);
    }

    OUTLINED_FUNCTION_16();
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    goto LABEL_11;
  }

  if (Value && (CFArrayGetValueAtIndex(Value, 1), FigCFNumberGetFloat32(), FigAudioQueueTimingShimSetParameter(*(v58 + 40), 0x20u, v67)) || v60 && (CFArrayGetValueAtIndex(v60, 1), FigCFNumberGetFloat32(), FigAudioQueueTimingShimSetParameter(*(v58 + 40), 0x1Fu, v68)) || v61 && (CFArrayGetValueAtIndex(v61, 1), FigCFNumberGetFloat32(), FigAudioQueueTimingShimSetParameter(*(v58 + 40), 0x1Eu, v69)) || v62 && (CFArrayGetValueAtIndex(v62, 1), FigCFNumberGetFloat32(), FigAudioQueueTimingShimSetParameter(*(v58 + 40), 0x21u, v70)) || v63 && (CFArrayGetValueAtIndex(v63, 1), FigCFNumberGetFloat32(), FigAudioQueueTimingShimSetParameter(*(v58 + 40), 0x22u, v71)) || v64 && (CFArrayGetValueAtIndex(v64, 1), FigCFNumberGetFloat32(), FigAudioQueueTimingShimSetParameter(*(v58 + 40), 0x23u, v72)) || !v66)
  {
LABEL_11:
    OUTLINED_FUNCTION_457(v85);
    return;
  }

  CFArrayGetValueAtIndex(v66, 1);
  FigCFNumberGetFloat32();
  OUTLINED_FUNCTION_457(*(v58 + 40));

  FigAudioQueueTimingShimSetParameter(v73, v74, v75);
}

void subaq_scheduleAudioProcessingUnitForMediaTimeRange(uint64_t a1, uint64_t a2, uint64_t a3, __int128 *a4, uint64_t a5, unsigned __int8 a6, uint64_t a7)
{
  *&v29.value = *MEMORY[0x1E6960C70];
  v7 = a4[1];
  v21 = *a4;
  v31 = 0;
  v30 = 0;
  v29.epoch = *(MEMORY[0x1E6960C70] + 16);
  context[0] = &v31;
  context[1] = a1;
  context[2] = a2;
  v22 = v7;
  v23 = a4[2];
  v24 = 1065353216;
  memset(&v25, 0, sizeof(v25));
  v27 = a5;
  v26 = a6;
  BYTE2(v26) = 0;
  v28 = a7;
  if (*(a1 + 16))
  {
    return;
  }

  v11 = 1.0;
  if ((*(a1 + 48) & 2) != 0)
  {
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_97_2();
  if (v14)
  {
    v15 = v12;
  }

  else
  {
    v15 = v13;
  }

  if (*(a1 + 236))
  {
    v16 = *(a1 + 232);
    v14 = v16 == 0.0;
    v12 = v16;
    if (v14)
    {
      v12 = 1.0;
    }
  }

  v11 = v15 / v12;
  v24 = LODWORD(v11);
  if (v11 != 0.0)
  {
    if (v11 <= 0.0)
    {
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v18.value, v18.timescale, LODWORD(v18.epoch));
      return;
    }

LABEL_11:
    if (FigCFDictionaryGetValueIfPresent())
    {
      if (*(a2 + 48))
      {
        subaq_getCurrentQueueTime(a2, &v29);
        range.start = v29;
        faqTimelineWrangler_convertAQTimeToMediaTime(a1 + 424, &range.start, &v25, v11);
      }

      else
      {
        v25 = *(a1 + 528);
      }

      v17 = a4[1];
      *&range.start.value = *a4;
      *&range.start.epoch = v17;
      *&range.duration.timescale = a4[2];
      v18 = v25;
      BYTE1(v26) = CMTimeRangeContainsTime(&range, &v18);
      CFDictionaryApplyFunction(v30, subaq_fapuCurveApplier, context);
    }
  }
}

double subaq_incrementSampleTime(uint64_t a1, void *a2, double a3)
{
  v10 = 0u;
  v9 = 0u;
  v8 = 0u;
  v6 = 0u;
  memset(v5, 0, sizeof(v5));
  v7 = a3;
  v11 = 1;
  DWORD2(v6) = 1;
  if (!FigAudioQueueTimingShimGetIncrementedSampleTime(*(a1 + 40), &v7, v5))
  {
    result = *v5;
    *a2 = *&v5[0];
  }

  return result;
}

void subaq_fapuCurveApplier(const void *a1, void *a2, uint64_t a3)
{
  v68 = *MEMORY[0x1E69E9840];
  v5 = *(a3 + 8);
  Snapshot = **a3;
  v61 = 0;
  v62 = 0;
  v7 = *(a3 + 101);
  v8 = *(a3 + 100);
  v9 = *(a3 + 16);
  v59 = *MEMORY[0x1E6960C70];
  v60 = *(MEMORY[0x1E6960C70] + 16);
  value = 0;
  v58 = 0;
  v55 = 0;
  v56 = 0;
  v54 = 0;
  if (Snapshot)
  {
    goto LABEL_31;
  }

  if (*(a3 + 104) == 1 && FigCFDictionaryGetValueIfPresent() && CFDictionaryContainsKey(0, a1))
  {
    OUTLINED_FUNCTION_2_24();
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    if (os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, type))
    {
      v44 = v53;
    }

    else
    {
      v44 = v53 & 0xFFFFFFFE;
    }

    if (v44)
    {
      LODWORD(v63.value) = 136315906;
      *(&v63.value + 4) = "subaq_fapuCurveApplier";
      LOWORD(v63.flags) = 2048;
      *(&v63.flags + 2) = v5;
      HIWORD(v63.epoch) = 2048;
      v64 = v9;
      v65 = 2114;
      v66 = a1;
      OUTLINED_FUNCTION_90_1();
      OUTLINED_FUNCTION_36();
      _os_log_send_and_compose_impl(v45, v46, v47, v48, v49, v50, type, v51);
    }

    OUTLINED_FUNCTION_16();
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    Snapshot = 0;
  }

  else
  {
    if (FigCFDictionaryGetValueIfPresent())
    {
      if (*(v9 + 776) || (Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]), (*(v9 + 776) = Mutable) != 0))
      {
        if (FigCFDictionaryGetValueIfPresent() && *v56)
        {
          v12 = *(CMBaseObjectGetVTable() + 16);
          if (!*(v12 + 8))
          {
            goto LABEL_30;
          }

          Snapshot = (*(v12 + 24))(v62);
          if (Snapshot)
          {
            goto LABEL_31;
          }

          CFDictionaryRemoveValue(*(v9 + 776), a1);
          v8 = 1;
          v7 = 1;
        }

        if (FigCFDictionaryGetValueIfPresent())
        {
          OUTLINED_FUNCTION_85_1();
          Snapshot = FigAudioProcessingUnitPackedCurveIteratorSeekTo(v13, &range, v14, v15, v16, v17, v18, v19);
          if (Snapshot)
          {
            goto LABEL_31;
          }

          v24 = v58;
          if (v8)
          {
            goto LABEL_16;
          }
        }

        else
        {
          CFGetAllocator(v5);
          OUTLINED_FUNCTION_85_1();
          Snapshot = FigAudioProcessingUnitPackedCurveIteratorCreate(v31, a2, &range.start.value, &value);
          if (Snapshot)
          {
            goto LABEL_31;
          }

          CFDictionarySetValue(*(v9 + 776), a1, value);
          v24 = value;
          v58 = value;
          if (v8)
          {
LABEL_16:
            Snapshot = FigAudioProcessingUnitPackedCurveIteratorGetSnapshot(v24, &v55, &v54, &v61);
            if (Snapshot)
            {
              goto LABEL_31;
            }

            v25 = *(a3 + 72);
            *&range.start.value = *(a3 + 24);
            range.start.epoch = *(a3 + 40);
            faqTimelineWrangler_convertMediaTimeToAQTime(v5 + 424, &range.start, &v59, v25);
            v27 = v61;
            v26 = v62;
            v29 = v54;
            v28 = v55;
            v30 = *(*(CMBaseObjectGetVTable() + 16) + 8);
            if (v30)
            {
              *&range.start.value = v59;
              range.start.epoch = v60;
              Snapshot = v30(v26, &range, v28, v29, v27);
              if (Snapshot)
              {
                goto LABEL_31;
              }

              v24 = v58;
              if (!v7)
              {
                goto LABEL_29;
              }

LABEL_24:
              *&range.start.value = *(a3 + 76);
              range.start.epoch = *(a3 + 92);
              Snapshot = subaq_fapuIterateAndScheduleParameters(v62, v24, &range.start, a3, v20, v21, v22, v23);
              if (Snapshot)
              {
                goto LABEL_31;
              }

              Snapshot = FigAudioProcessingUnitPackedCurveIteratorGetSnapshot(v58, &v55, &v54, &v61);
              if (Snapshot)
              {
                goto LABEL_31;
              }

              v33 = v61;
              v32 = v62;
              v35 = v54;
              v34 = v55;
              v36 = *(CMBaseObjectGetVTable() + 16);
              if (*(v36 + 8))
              {
                Snapshot = (*(v36 + 16))(v32, v34, v35, v33);
                if (Snapshot)
                {
                  goto LABEL_31;
                }

                v24 = v58;
                goto LABEL_29;
              }
            }

LABEL_30:
            Snapshot = -12782;
            goto LABEL_31;
          }
        }

        if (!v7)
        {
LABEL_29:
          v37 = v62;
          v38 = *(a3 + 40);
          *&range.start.value = *(a3 + 24);
          *&range.start.epoch = v38;
          *&range.duration.timescale = *(a3 + 56);
          CMTimeRangeGetEnd(&v63, &range);
          Snapshot = subaq_fapuIterateAndScheduleParameters(v37, v24, &v63, a3, v39, v40, v41, v42);
          goto LABEL_31;
        }

        goto LABEL_24;
      }
    }

    OUTLINED_FUNCTION_111();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
  }

LABEL_31:
  **a3 = Snapshot;
  if (value)
  {
    CFRelease(value);
  }
}

uint64_t subaq_setTapTimelineInfo(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (result)
  {
    v3 = result;
    if (!*(result + 16) && (*(a2 + 648) || *(a2 + 664)))
    {
      v24 = *(result + 528);
      v6 = *(a2 + 100);
      time = *(result + 528);
      CMTimeConvertScale(&v23, &time, v6, kCMTimeRoundingMethod_RoundHalfAwayFromZero);
      v7 = 1.0;
      v8 = 1.0;
      if ((*(v3 + 48) & 2) == 0)
      {
        v8 = *(v3 + 416);
      }

      value = v23.value;
      v10 = v3 + 456;
      v11 = *(a2 + 100);
      time = *(v3 + 456);
      CMTimeConvertScale(&v22, &time, v11, kCMTimeRoundingMethod_RoundHalfAwayFromZero);
      if (*(v3 + 236) && *(v3 + 232) != 0.0)
      {
        v7 = *(v3 + 232);
      }

      v12 = *(a2 + 648);
      if (v12)
      {
        v13 = v22.value;
        v14 = *(a2 + 640);
        AudioQueue = FigAudioQueueTimingShimGetAudioQueue(*(a2 + 40));
        v16 = *(*(CMBaseObjectGetVTable() + 16) + 32);
        if (v16)
        {
          result = v16(v14, v12, AudioQueue, value, v13, v8, v7);
          goto LABEL_16;
        }
      }

      else
      {
        v17 = *(a2 + 664);
        if (v17)
        {
          v18 = *(a2 + 640);
          v20 = *v10;
          v21 = *(v10 + 16);
          v19 = *(*(CMBaseObjectGetVTable() + 16) + 80);
          if (v19)
          {
            time = v24;
            v25 = v20;
            v26 = v21;
            result = v19(v18, v17, &time, &v25, a3, v8, v7);
LABEL_16:
            if (result != -12782)
            {
              return result;
            }
          }
        }
      }
    }

    return 0;
  }

  return result;
}

void faq_convertAudioProcessingUnitCurvesToPackedCurvesAndCopyInspectionResultsApplier(const void *a1, const __CFArray *a2, uint64_t a3)
{
  v4 = *(a3 + 8);
  value = 0;
  if (!*a3)
  {
    v7 = CFGetAllocator(v4);
    FigAudioProcessingUnitPackedCurveCreate(v7, a2, &value);
    *a3 = v8;
    if (!v8)
    {
      v9 = malloc_type_calloc(1uLL, 1uLL, 0x100004077774924uLL);
      if (v9)
      {
        v10 = v9;
        OUTLINED_FUNCTION_41_2();
        FigCFDictionaryGetValueIfPresent();
        if (!FigCFEqual())
        {
          *v10 = 1;
        }

        CFDictionarySetValue(*(a3 + 32), a1, value);
        CFDictionarySetValue(*(a3 + 24), a1, v10);
      }

      else
      {
        OUTLINED_FUNCTION_239();
        FigSignalErrorAtGM("%s signalled err=%d at <>:%d", 0, value, v13);
        *a3 = v11;
      }
    }

    if (value)
    {
      CFRelease(value);
    }
  }
}

void faq_Finalize(uint64_t a1)
{
  FigAudioQueueInvalidate(a1);
  if (*(a1 + 24))
  {
    FigSimpleMutexDestroy();
    *(a1 + 24) = 0;
  }

  v2 = *(a1 + 40);
  if (v2)
  {
    dispatch_release(v2);
    *(a1 + 40) = 0;
  }

  v3 = *(a1 + 32);
  if (v3)
  {
    dispatch_release(v3);
    *(a1 + 32) = 0;
  }

  if (*(a1 + 296))
  {
    FigSemaphoreDestroy();
    *(a1 + 296) = 0;
  }

  MediaSampleTimingGeneratorDisposeMediaSampleTimingInfoArray(*(a1 + 168));
  *(a1 + 168) = 0;
  v4 = *(a1 + 80);
  if (v4)
  {
    CFRelease(v4);
  }

  v5 = *(a1 + 408);
  if (v5)
  {

    CFRelease(v5);
  }
}

__CFString *faq_CopyDebugDesc(uint64_t a1)
{
  v2 = CFGetAllocator(a1);
  Mutable = CFStringCreateMutable(v2, 0);
  v20 = CFGetRetainCount(a1);
  v4 = OUTLINED_FUNCTION_265();
  CFStringAppendFormat(v4, v5, v6, a1, v20);
  if (a1)
  {
    if (!*(a1 + 16))
    {
      Count = CFArrayGetCount(*(a1 + 176));
      if (Count)
      {
        v8 = Count;
        v9 = OUTLINED_FUNCTION_265();
        CFStringAppendFormat(v9, v10, v11);
        if (v8 >= 1)
        {
          for (i = 0; i != v8; ++i)
          {
            if (*(a1 + 16))
            {
              ValueAtIndex = 0;
            }

            else
            {
              ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 176), i);
            }

            v14 = OUTLINED_FUNCTION_265();
            CFStringAppendFormat(v14, v15, @"  ");
            subaq_appendDebugDesc(Mutable, ValueAtIndex);
          }
        }
      }
    }
  }

  v16 = OUTLINED_FUNCTION_265();
  CFStringAppendFormat(v16, v17, v18);
  return Mutable;
}

uint64_t FigAudioQueueSetProperty_cold_2(uint64_t a1, CFArrayRef *a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_417_0();
  do
  {
    if (*v4)
    {
      ValueAtIndex = 0;
    }

    else
    {
      ValueAtIndex = CFArrayGetValueAtIndex(*a2, v5);
    }

    result = faq_disconnectFromOfflineMixer(a3, ValueAtIndex);
    ++v5;
  }

  while (a4 != v5);
  return result;
}

uint64_t FigAudioQueueSetParameter_cold_3(uint64_t a1)
{
  FigAudioQueuePause(a1);
  FigSimpleMutexLock();
  faq_reset(a1, v2);

  return FigSimpleMutexUnlock();
}

double subaq_deferredAudioQueueStartupCompleted_cold_1(uint64_t a1)
{
  v1 = MEMORY[0x1E6960C70];
  v2 = *MEMORY[0x1E6960C70];
  *(a1 + 528) = *MEMORY[0x1E6960C70];
  v3 = *(v1 + 16);
  *(a1 + 544) = v3;
  *(a1 + 480) = v2;
  *(a1 + 496) = v3;
  return faq_reset(a1, *&v2);
}

void subaq_applyOneCachedProperty_cold_1()
{
  OUTLINED_FUNCTION_471();
  v3 = *v2;
  v4 = v2[1];
  if (FigCFEqual())
  {
    v5 = 0;
  }

  else
  {
    v5 = v1;
  }

  subaq_setProperty(v3, v4, v0, v5);
}

void vmc2TimebaseRateChangedCallback(uint64_t a1, uint64_t a2, uint64_t a3, OpaqueCMTimebase *a4)
{
  if (a2)
  {
    FigSimpleMutexLock();
    if (*(a2 + 16) || *(a2 + 584) != a4)
    {

      FigSimpleMutexUnlock();
    }

    else
    {
      CMTimebaseGetTime(&time, a4);
      Seconds = CMTimeGetSeconds(&time);
      Rate = CMTimebaseGetRate(a4);
      FigSimpleMutexUnlock();
      if (Rate == 0.0)
      {
        *(a2 + 1192) = mach_absolute_time();
        vmc2GMFigLogDumpStats(a2, Seconds, Rate);
      }
    }
  }
}

uint64_t vmc2InvokeOutputCallback_InstallOccupancyChangedCallback(uint64_t a1)
{
  FigReadWriteLockLockForRead();
  if (*(a1 + 249))
  {
    v2 = *(a1 + 176);
    if (v2)
    {
      v3 = v2(*(a1 + 152), a1, vmc2OutputOccupancyChanged, a1 + 240);
      if (!v3)
      {
        *(a1 + 248) = 1;
      }
    }

    else
    {
      v3 = 0;
    }
  }

  else
  {
    fig_log_get_emitter();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v6, v7, vars0);
    v3 = v5;
  }

  FigReadWriteLockUnlockForRead();
  return v3;
}

void vmcCreateTaggedBufferGroupSubstitutingImageBufferInTaggedBufferGroup(const void *a1, OpaqueCMTaggedBufferGroup *a2, CFTypeRef *a3)
{
  cf = 0;
  v7 = *MEMORY[0x1E695E480];
  v8 = MEMORY[0x1E695E9C0];
  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  v10 = CFArrayCreateMutable(v7, 0, v8);
  v11 = v10;
  if (Mutable && v10)
  {
    Count = CMTaggedBufferGroupGetCount(a2);
    if (Count < 1)
    {
LABEL_7:
      if (!MEMORY[0x19A8D33F0](v7, Mutable, v11, &cf))
      {
        *a3 = cf;
        cf = 0;
      }

      goto LABEL_9;
    }

    v13 = Count;
    v14 = 0;
    while (1)
    {
      TagCollectionAtIndex = CMTaggedBufferGroupGetTagCollectionAtIndex(a2, v14);
      if (!TagCollectionAtIndex)
      {
        break;
      }

      CFArrayAppendValue(Mutable, TagCollectionAtIndex);
      CFArrayAppendValue(v11, a1);
      if (v13 == ++v14)
      {
        goto LABEL_7;
      }
    }

    emitter = fig_log_get_emitter();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 4294954472, "<<<< VMC >>>>", 5553, v3);
  }

  else
  {
    v17 = fig_log_get_emitter();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v17, 4294954472, "<<<< VMC >>>>", 5548, v3);
  }

  if (Mutable)
  {
LABEL_9:
    CFRelease(Mutable);
  }

  if (v11)
  {
    CFRelease(v11);
  }

  if (cf)
  {
    CFRelease(cf);
  }
}

void vmc2WhileHoldingSessionVTMutexUpdateTroubleMonitor(unsigned __int8 *a1)
{
  v2 = *a1;
  if (!*(*a1 + 16))
  {
    v3 = a1[8];
    FigSimpleMutexLock();
    v4 = v2[592];
    if (vmc2GetWaterLevelState(v2))
    {
      v5 = v2[440] != 0;
    }

    else
    {
      v5 = 1;
    }

    v6 = vmc2GetWaterLevelState(v2) == 2 && v2[440] == 0;
    vmc2UpdateTroubleMonitor2(v2, v4, v5, v6, v3);
    FigSimpleMutexUnlock();
  }

  CFRelease(v2);

  free(a1);
}

double VMC2Invalidate_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
}

void VMC2CreateWithQueues2_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void VMC2CreateWithQueues2_cold_2(uint64_t a1, _DWORD *a2)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v4, v5, vars0);
  *a2 = v3;
}

double vmc2DecodeUntilHighWaterMet_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v1, v2, vars0);
}

void vmc2DecodeUntilHighWaterMet_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

double vmc2DecodeUntilHighWaterMet_cold_3()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v1, v2, vars0);
}

double vmc2RecalculateUpcomingImageTimes_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v1, v2, vars0);
}

double vmc2InvokeOutputCallback_FlushOutput_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
}

void vmc2OutputFrameInternal_cold_1(uint64_t a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *(*a1 + 24) = v2;
}

double vmc2OutputFrameInternal_cold_2()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v1, v2, vars0);
}

double vmc2OutputFrameInternal_cold_3()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v1, v2, vars0);
}

BOOL vmc2OutputFrameInternal_cold_4(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v4, v5, vars0);
  *a1 = v2;
  return v2 == 0;
}

double vmc2CreateImageEnhancementFilter_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
}

double vmc2CreateImageEnhancementFilter_cold_2()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
}

double vmc2CreateImageEnhancementFilter_cold_3()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
}

double vmc2InvokeOutputCallback_OutputImage_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
}

void vmc2CopyFrameBaggageForPTS_cold_1(uint64_t a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *(*a1 + 24) = v2;
}

void vmc2CopyFrameBaggageForPTS_cold_2(uint64_t a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *(*a1 + 24) = v2;
}

double vmc2GetWaterLevelState_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
}

double vmcCreateAttachmentsDictionaryForSourceFrameInfo_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
}

double vmcCreateAttachmentsDictionaryForSourceFrameInfo_cold_2()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
}

void FigVisualContextCreateBasic_cold_2(uint64_t a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, v3, vars0);
  *(a1 + 152) = 0;
}

void FigVisualContextCreateBasic_cold_3(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v5, v6, v7);
  *a3 = v4;
}

void lvcCreateCommon_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void lvcCreateCommon_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void lvcCopyProperty_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

uint64_t FigMediaparserdUtilities_EnsureProcessLaunched()
{
  if ((_MergedGlobals_24 & 1) == 0)
  {
    if (qword_1ED4CA570 != -1)
    {
      dispatch_once(&qword_1ED4CA570, &__block_literal_global_9);
    }

    dispatch_async_f(qword_1ED4CA578, 0, figMediaParserdUtilities_KickStartProcess);
  }

  return 0;
}

uint64_t figMediaParserdUtilities_KickStartProcess()
{
  if (qword_1ED4CA580 != -1)
  {
    dispatch_once(&qword_1ED4CA580, &__block_literal_global_4);
  }

  if (!dword_1ED4CA56C && !FigXPCCreateBasicMessage() && !FigXPCRemoteClientSendAsyncMessage())
  {
    _MergedGlobals_24 = 1;
  }

  return FigXPCRelease();
}

void FBLSupportAppendDeferredTransactionChangeToSetContentsScaleForFigCALayer_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_27();
  FigSignalErrorAtGM(v2);
  *a1 = v3;
}

void FBLSupportAppendDeferredTransactionChangeToSetAllowsDisplayCompositing_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_27();
  FigSignalErrorAtGM(v2);
  *a1 = v3;
}

void FBLSupportAppendDeferredTransactionChangeToSetPreferredCADynamicRange_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_27();
  FigSignalErrorAtGM(v2);
  *a1 = v3;
}

void FBLSupportAppendDeferredTransactionChangeToSetGeometryFlipped_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_27();
  FigSignalErrorAtGM(v2);
  *a1 = v3;
}

uint64_t remoteXPCImageQueueGauge_Finalize(uint64_t a1)
{
  CMBaseObjectGetDerivedStorage();
  FigXPCRemoteClientDisassociateObject();
  if (!FigXPCCreateBasicMessage())
  {
    FigXPCRemoteClientSendAsyncMessage();
  }

  FigXPCRelease();
  return FigXPCRemoteClientKillServerOnTimeout();
}

void FigImageQueueGaugeXPCRemoteGetObjectID_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FigImageQueueGaugeXPCRemoteGetObjectID_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FigImageQueueGaugeXPCRemoteRetainCopiedImageQueueGauge_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FigImageQueueGaugeXPCRemoteRetainCopiedImageQueueGauge_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FigImageQueueGaugeXPCRemoteStartAsSubClient_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FigImageQueueGaugeXPCRemoteStartAsSubClient_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

uint64_t FigReportingModeratorCreateForHLS(uint64_t a1, const void *a2, const __CFDictionary *a3, CFTypeRef *a4)
{
  OUTLINED_FUNCTION_8_8();
  fig_note_initialize_category_with_default_work_cf();
  OUTLINED_FUNCTION_8_8();
  fig_note_initialize_category_with_default_work_cf();
  if (!a4)
  {
    return 4294949785;
  }

  FigReportingModeratorGetClassID();
  v7 = CMDerivedObjectCreate();
  if (!v7)
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    *(DerivedStorage + 8) = 0;
    *DerivedStorage = FigGetUpTimeNanoseconds();
    if (a2)
    {
      v9 = CFRetain(a2);
    }

    else
    {
      v9 = 0;
    }

    *(DerivedStorage + 168) = v9;
    *(DerivedStorage + 176) = 0x1F0B645F8;
    *(DerivedStorage + 64) = -1;
    if (a3)
    {
      Value = CFDictionaryGetValue(a3, @"FRM_BundleName");
    }

    else
    {
      Value = 0;
    }

    FigUserExperienceScorerCreate(Value, (DerivedStorage + 216));
    v7 = 0;
    *a4 = 0;
  }

  return v7;
}

void streamReportingModeratorFinalize(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (DerivedStorage)
  {
    v2 = DerivedStorage;
    v3 = *(DerivedStorage + 208);
    if (v3)
    {
      CFRelease(v3);
    }

    v4 = v2[12];
    if (v4)
    {
      CFRelease(v4);
    }

    v5 = v2[11];
    if (v5)
    {
      CFRelease(v5);
    }

    v6 = v2[21];
    if (v6)
    {
      CFRelease(v6);
    }

    v7 = v2[27];
    if (v7)
    {

      CFRelease(v7);
    }
  }
}

uint64_t streamReportingModeratorSetProperty(uint64_t a1, const void *a2, const void *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!DerivedStorage)
  {
    return 4294949785;
  }

  v6 = DerivedStorage;
  result = CFEqual(a2, @"Timebase");
  if (!result)
  {
    return result;
  }

  if (!a3)
  {
    return 4294949785;
  }

  v8 = CFGetTypeID(a3);
  if (v8 != CMTimebaseGetTypeID())
  {
    return 4294949785;
  }

  v9 = *(v6 + 208);
  *(v6 + 208) = a3;
  CFRetain(a3);
  if (v9)
  {
    CFRelease(v9);
  }

  return 0;
}

uint64_t streamModeratorProcessEventAndCopyKeyArray(uint64_t a1, int a2, unint64_t a3, void *a4)
{
  v157 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  result = 4294949785;
  if (!a3 || !DerivedStorage)
  {
    return result;
  }

  v149 = 0;
  HIDWORD(v148) = 0;
  v147 = a3;
  switch(a2)
  {
    case 106:
      result = fsrm_getInt32FromAggregatedSessionStats(*(DerivedStorage + 168), 0x1F0B5A678, &v148 + 1);
      if (result)
      {
        return result;
      }

      goto LABEL_34;
    case 101:
LABEL_34:
      fsrm_updateProcessMemoryAndCPUSession(DerivedStorage);
      break;
    case 105:
      v10 = *(DerivedStorage + 168);
      v11 = qword_1ED4CA5B8;
      goto LABEL_31;
    case 115:
      v10 = *(DerivedStorage + 168);
      v11 = qword_1ED4CA5C0;
LABEL_31:
      v22 = *(*(CMBaseObjectGetVTable() + 16) + 200);
      if (v22)
      {
        v22(v10, 0x1F0B64678, v11);
      }

      break;
    case 1001:
      Current = CFAbsoluteTimeGetCurrent();
      if (Current - *(DerivedStorage + 184) >= 30.0)
      {
        bzero(buffer, 0x1D0uLL);
        v13 = getpid();
        if (!proc_pid_rusage(v13, 6, buffer))
        {
          v14 = v156;
          if (qword_1ED4CA5C8 != -1)
          {
            dispatch_once(&qword_1ED4CA5C8, &__block_literal_global_10);
          }

          v15 = *&mach_absolute_time_to_s_tmscale * v14 / 1000000000.0;
          v16 = *(DerivedStorage + 192);
          if (v16 == 0.0 || (*(DerivedStorage + 184) != 0.0 ? (v17 = v15 < v16) : (v17 = 1), v17))
          {
            *(DerivedStorage + 184) = Current;
            *(DerivedStorage + 192) = v15;
          }

          else if (*(*(CMBaseObjectGetVTable() + 16) + 72))
          {
            v137 = OUTLINED_FUNCTION_292();
            v138(v137);
          }

          if (*(*(CMBaseObjectGetVTable() + 16) + 72))
          {
            v18 = OUTLINED_FUNCTION_292();
            v19(v18);
          }

          *(DerivedStorage + 184) = Current;
          *(DerivedStorage + 192) = v15;
        }
      }

      break;
    case 2001:
    case 2002:
      if (*(*(CMBaseObjectGetVTable() + 16) + 96))
      {
        v20 = OUTLINED_FUNCTION_292();
        v21(v20);
      }

      break;
    case 3001:
      fsrm_updateExpensiveNetworkStats(DerivedStorage);
      break;
    default:
      v9 = 0;
      goto LABEL_36;
  }

  v9 = HIDWORD(v148);
LABEL_36:
  UpTimeNanoseconds = FigGetUpTimeNanoseconds();
  v24 = UpTimeNanoseconds;
  v25 = *(DerivedStorage + 8);
  if (*DerivedStorage)
  {
    v26 = (UpTimeNanoseconds - *DerivedStorage) / 0xF4240uLL;
    switch(v25)
    {
      case 0:
        v27 = 0x1F0B65998;
        goto LABEL_45;
      case 1:
        v27 = 0x1F0B65978;
        goto LABEL_45;
      case 2:
        LODWORD(v28) = *(DerivedStorage + 12);
        if (v28 >= 0)
        {
          v28 = v28;
        }

        else
        {
          v28 = -v28;
        }

        v29 = v26 * v28 / 0x64;
        fsrm_addToSessionStatsCountValue(DerivedStorage, 0x1F0B658D8, v26);
        fsrm_addToSessionStatsCountValue(DerivedStorage, 0x1F0B658F8, v29);
        v30.i64[0] = v29;
        v30.i64[1] = v26;
        v31 = vaddq_s64(*(DerivedStorage + 120), v30);
        *(DerivedStorage + 104) = vaddq_s64(*(DerivedStorage + 104), v30);
        *(DerivedStorage + 120) = v31;
        break;
      case 3:
        fsrm_addToSessionStatsCountValue(DerivedStorage, 0x1F0B65958, v26);
        v27 = 0x1F0B434F8;
LABEL_45:
        fsrm_addToSessionStatsCountValue(DerivedStorage, v27, v26);
        break;
      default:
        break;
    }
  }

  *DerivedStorage = v24;
  v32 = a2 - 101;
  v145 = a4;
  switch(a2)
  {
    case 'e':
      if (*(*(CMBaseObjectGetVTable() + 16) + 88))
      {
        v33 = OUTLINED_FUNCTION_396();
        v34(v33);
      }

      if (*(*(CMBaseObjectGetVTable() + 16) + 88))
      {
        v35 = OUTLINED_FUNCTION_396();
        v36(v35);
      }

      *(DerivedStorage + 104) = 0;
      *(DerivedStorage + 112) = 0;
      goto LABEL_113;
    case 'f':
    case 'h':
    case 'l':
      goto LABEL_113;
    case 'g':
      *(DerivedStorage + 32) = v24;
      v25 = 3;
      goto LABEL_113;
    case 'i':
      if (*(*(OUTLINED_FUNCTION_10_8() + 16) + 64))
      {
        v39 = OUTLINED_FUNCTION_396();
        v40(v39);
      }

      if (!*(DerivedStorage + 88) && !*(DerivedStorage + 96))
      {
        fsrm_copyPlayerIndicatedBitrate(*(DerivedStorage + 168), DerivedStorage);
      }

      if (*(DerivedStorage + 64) != -1)
      {
        goto LABEL_62;
      }

      LODWORD(buffer[0]) = 0;
      if (!fsrm_getInt32FromAggregatedSessionStats(*(DerivedStorage + 168), 0x1F0B422D8, buffer))
      {
        *(DerivedStorage + 64) = buffer[0];
LABEL_62:
        if (*(DerivedStorage + 68) == -1)
        {
          LODWORD(buffer[0]) = 0;
          if (!fsrm_getInt32FromAggregatedSessionStats(*(DerivedStorage + 168), 0x1F0B42B78, buffer))
          {
            *(DerivedStorage + 68) = buffer[0];
          }
        }
      }

LABEL_113:
      v82 = 0;
      *(DerivedStorage + 8) = v25;
      goto LABEL_114;
    case 'j':
      if (v9)
      {
        *(DerivedStorage + 12) = v9;
        v25 = 2;
        v43 = 16;
      }

      else
      {
        v25 = 1;
        v43 = 40;
      }

      *(DerivedStorage + v43) = v24;
      if (*(*(CMBaseObjectGetVTable() + 16) + 88))
      {
        v78 = OUTLINED_FUNCTION_396();
        v79(v78);
      }

      if (*(*(CMBaseObjectGetVTable() + 16) + 88))
      {
        v80 = OUTLINED_FUNCTION_396();
        v81(v80);
      }

      *(DerivedStorage + 120) = 0;
      *(DerivedStorage + 128) = 0;
      goto LABEL_113;
    case 'k':
      fsrm_setSessionEndReasonIfFatalError(DerivedStorage, *(DerivedStorage + 176), 0, 0x1F0B65A58, 0x1F0B65A98, 0x1F0B65A78);
      if (*(*(OUTLINED_FUNCTION_10_8() + 16) + 64))
      {
        v41 = OUTLINED_FUNCTION_396();
        v42(v41);
      }

      goto LABEL_113;
    case 'm':
      buffer[0] = 0;
      v44 = *(DerivedStorage + 168);
      v45 = *(DerivedStorage + 176);
      v46 = *(DerivedStorage + 88);
      v47 = *(*(CMBaseObjectGetVTable() + 16) + 80);
      if (v47)
      {
        v47(v44, v45, 0x1F0B423F8, v46);
      }

      v48 = *(DerivedStorage + 168);
      v49 = *(DerivedStorage + 176);
      v50 = *(DerivedStorage + 96);
      v51 = *(*(CMBaseObjectGetVTable() + 16) + 80);
      if (v51)
      {
        v51(v48, v49, 0x1F0B42418, v50);
      }

      v52 = *(*(OUTLINED_FUNCTION_12_6() + 16) + 144);
      if (v52 && !v52(v50, 0, 0x1F0B42498, buffer))
      {
        v53 = buffer[0];
        *(DerivedStorage + 80) = buffer[0];
        if (!v53)
        {
          goto LABEL_80;
        }

        if (*(*(OUTLINED_FUNCTION_18_5() + 16) + 64))
        {
          v54 = OUTLINED_FUNCTION_784();
          v55(v54);
        }

        if (!buffer[0])
        {
LABEL_80:
          fsrm_copyPlayerIndicatedBitrate(*(DerivedStorage + 168), DerivedStorage);
          if (*(*(OUTLINED_FUNCTION_18_5() + 16) + 64))
          {
            v56 = OUTLINED_FUNCTION_784();
            v57(v56);
          }

          fsrm_calculatePlayTimeAndUpdateTimeWeightedStats(DerivedStorage, DerivedStorage);
        }
      }

      if (*(*(CMBaseObjectGetVTable() + 16) + 88))
      {
        v58 = OUTLINED_FUNCTION_784();
        v59(v58);
      }

      if (*(*(CMBaseObjectGetVTable() + 16) + 88))
      {
        v60 = OUTLINED_FUNCTION_784();
        v61(v60);
      }

      *(DerivedStorage + 104) = 0;
      *(DerivedStorage + 112) = 0;
      *(DerivedStorage + 24) = v24;
      goto LABEL_113;
    case 'n':
      result = fsrm_calculatePlayTimeAndUpdateTimeWeightedStats(DerivedStorage, DerivedStorage);
      *(DerivedStorage + 8) = v25;
      if (result)
      {
        return result;
      }

      buffer[0] = 0;
      *&v152 = 0;
      Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      if (!Mutable)
      {
        return 4294949786;
      }

      v131 = Mutable;
      if (*(*(CMBaseObjectGetVTable() + 16) + 8))
      {
        v132 = OUTLINED_FUNCTION_396();
        v133(v132);
      }

      FigCFDictionaryGetInt64IfPresent();
      FigCFDictionaryGetInt64IfPresent();
      v134 = buffer[0];
      v135 = v152;
      CFRelease(v131);
      if (v134 <= 0 && v135 < 1)
      {
        return 4294949783;
      }

      v82 = 1;
LABEL_114:
      FigGetUpTimeNanoseconds();
      *buffer = *MEMORY[0x1E6960C70];
      v156 = *(MEMORY[0x1E6960C70] + 16);
      if (*(DerivedStorage + 208))
      {
        v83 = fsrm_copyEventKeyArray(a2);
        if (v83)
        {
          v84 = v83;
          if (FigCFArrayContainsValue())
          {
            TimeClampedAboveAnchorTime = CMTimebaseGetTimeClampedAboveAnchorTime();
            v86 = *(DerivedStorage + 168);
            v94 = OUTLINED_FUNCTION_11_8(TimeClampedAboveAnchorTime, v87, v88, v89, v90, v91, v92, v93, v139, v141, v143, v145, v147, v148, v149, v150, v151, v152, v153, v154, *buffer, v156);
            VTable = CMBaseObjectGetVTable();
            v104 = *(VTable + 16);
            v103 = VTable + 16;
            v105 = *(v104 + 88);
            if (v105)
            {
              v103 = v105(v86, @"playerStats", 0x1F0B43538, v94);
            }

            v106 = *(DerivedStorage + 168);
            v107 = OUTLINED_FUNCTION_11_8(v103, v96, v97, v98, v99, v100, v101, v102, v140, v142, v144, v146, v147, v148, v149, v150, v151, v152, v153, v154, *buffer, v156);
            v108 = *(*(CMBaseObjectGetVTable() + 16) + 88);
            if (v108)
            {
              v108(v106, @"playerStats", 0x1F0B43558, (v107 * 1000.0));
            }
          }

          CFRelease(v84);
        }
      }

      if ((a2 & 0xFFFFFFFB) == 0x69)
      {
        LODWORD(buffer[0]) = 0;
        if (!fsrm_getInt32FromAggregatedSessionStats(*(DerivedStorage + 168), 0x1F0B42B78, buffer))
        {
          FigUserExperienceSetCurrentRank(*(DerivedStorage + 216), buffer[0]);
        }

LABEL_127:
        v109 = 0;
        if (a2 != 106 || !HIDWORD(v148))
        {
LABEL_135:
          if ((a2 | 2) != 0x67 && (a2 != 106 || !HIDWORD(v148)))
          {
            goto LABEL_142;
          }

          v112 = 0;
LABEL_137:
          if (*(DerivedStorage + 40))
          {
            if (*(*(OUTLINED_FUNCTION_10_8() + 16) + 88))
            {
              v113 = OUTLINED_FUNCTION_1_25();
              v114(v113);
            }

            *(DerivedStorage + 40) = 0;
          }

          if (v112)
          {
LABEL_144:
            v115 = *(DerivedStorage + 168);
            v116 = *(*(CMBaseObjectGetVTable() + 16) + 152);
            if (v116)
            {
              v116(v115, 0, 0x1F0B42478, &v149);
            }

            if (*(*(OUTLINED_FUNCTION_18_5() + 16) + 80))
            {
              v117 = OUTLINED_FUNCTION_784();
              v118(v117);
            }

            goto LABEL_148;
          }

LABEL_142:
          if (a2 != 106 || !HIDWORD(v148))
          {
            goto LABEL_148;
          }

          goto LABEL_144;
        }

LABEL_131:
        if (*(DerivedStorage + 32))
        {
          if (*(*(OUTLINED_FUNCTION_10_8() + 16) + 88))
          {
            v110 = OUTLINED_FUNCTION_1_25();
            v111(v110);
          }

          *(DerivedStorage + 32) = 0;
        }

        goto LABEL_135;
      }

      if (a2 == 101)
      {
        FigUserExperienceReportSessionEnd(*(DerivedStorage + 216));
        FigUserExperienceCalculateScore(*(DerivedStorage + 216));
        v109 = 1;
        goto LABEL_131;
      }

      if (a2 == 103)
      {
        LODWORD(buffer[0]) = 0;
        FigUserExperienceReportStall(*(DerivedStorage + 216));
        if (!fsrm_getInt32FromAggregatedSessionStats(*(DerivedStorage + 168), 0x1F0B42B78, buffer))
        {
          FigUserExperienceSetCurrentRank(*(DerivedStorage + 216), buffer[0]);
        }

        if (*(DerivedStorage + 24) && *(*(OUTLINED_FUNCTION_10_8() + 16) + 88))
        {
          v122 = OUTLINED_FUNCTION_1_25();
          v123(v122);
        }

        if (*(DerivedStorage + 16))
        {
          if (*(*(OUTLINED_FUNCTION_10_8() + 16) + 88))
          {
            v124 = OUTLINED_FUNCTION_1_25();
            v125(v124);
          }

          *(DerivedStorage + 16) = 0;
        }

        v126 = *(DerivedStorage + 168);
        v127 = *(*(CMBaseObjectGetVTable() + 16) + 144);
        if (v127)
        {
          v127(v126, 0, 0x1F0B66AB8, &v147 + 8);
          v109 = BYTE8(v147);
          if (!*(&v147 + 1))
          {
LABEL_183:
            v112 = 1;
            goto LABEL_137;
          }

          if (*(*(OUTLINED_FUNCTION_10_8() + 16) + 88))
          {
            v128 = OUTLINED_FUNCTION_1_25();
            v129(v128);
          }
        }

        v109 = 0;
        goto LABEL_183;
      }

      if (a2 != 111)
      {
        if (a2 == 106)
        {
          LODWORD(buffer[0]) = 0;
          LODWORD(v152) = 0;
          if (!fsrm_getInt32FromAggregatedSessionStats(*(DerivedStorage + 168), 0x1F0B5A678, buffer) && !fsrm_getInt32FromAggregatedSessionStats(*(DerivedStorage + 168), 0x1F0B42B78, &v152))
          {
            FigUserExperienceReportRateChange(*(DerivedStorage + 216), v152, buffer[0]);
          }
        }

        goto LABEL_127;
      }

      LODWORD(buffer[0]) = 0;
      LODWORD(v152) = 0;
      if (!fsrm_getInt32FromAggregatedSessionStats(*(DerivedStorage + 168), 0x1F0B42B98, buffer) && !fsrm_getInt32FromAggregatedSessionStats(*(DerivedStorage + 168), 0x1F0B429F8, &v152))
      {
        FigUserExperienceReportVariantCompleted(*(DerivedStorage + 216), buffer[0], v152);
      }

      v109 = 0;
LABEL_148:
      if (!*(*(OUTLINED_FUNCTION_10_8() + 16) + 88))
      {
        return 4294954514;
      }

      v119 = OUTLINED_FUNCTION_396();
      result = v120(v119);
      if (!result)
      {
        if ((v82 | v109))
        {
          fsrm_reportAggregatedTimeWeightedStats(DerivedStorage);
        }

        *v147 = fsrm_copyEventKeyArray(a2);
        if (v145 && (v32 > 0xC || ((1 << v32) & 0x1801) == 0))
        {
          if (_MergedGlobals_25)
          {
            v121 = CFRetain(_MergedGlobals_25);
          }

          else
          {
            v121 = 0;
          }

          result = 0;
          *v145 = v121;
        }

        else
        {
          return 0;
        }
      }

      return result;
    case 'o':
      buffer[0] = 0;
      v151 = 0;
      *&v152 = 0;
      v150 = 0;
      v62 = *(DerivedStorage + 168);
      if (*(*(CMBaseObjectGetVTable() + 16) + 144))
      {
        v63 = OUTLINED_FUNCTION_783();
        if (!v64(v63))
        {
          if (*(*(OUTLINED_FUNCTION_12_6() + 16) + 144))
          {
            v65 = OUTLINED_FUNCTION_783();
            if (!v66(v65) && *(DerivedStorage + 144) * *(DerivedStorage + 136) < v152 * buffer[0])
            {
              v67 = *(*(OUTLINED_FUNCTION_12_6() + 16) + 48);
              if (v67)
              {
                if (!v67(v62, 1, 0x1F0B658F8, &v151))
                {
                  if (*(*(OUTLINED_FUNCTION_12_6() + 16) + 144))
                  {
                    v68 = OUTLINED_FUNCTION_783();
                    if (!v69(v68))
                    {
                      v70 = v152;
                      *(DerivedStorage + 136) = buffer[0];
                      *(DerivedStorage + 144) = v70;
                      v62 = *(DerivedStorage + 168);
                      v71 = v150;
                      v141 = v151;
                      v143 = *(DerivedStorage + 176);
                      v72 = *(*(CMBaseObjectGetVTable() + 16) + 88);
                      if (v72)
                      {
                        v72(v62, v143, 0x1F0B43158, v141 - v71);
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }

      buffer[0] = 0;
      *&v152 = 0;
      v73 = *(*(OUTLINED_FUNCTION_12_6() + 16) + 48);
      if (v73)
      {
        if (!v73(v62, 1, 0x1F0B658F8, buffer))
        {
          if (*(*(OUTLINED_FUNCTION_12_6() + 16) + 144))
          {
            v74 = OUTLINED_FUNCTION_783();
            if (!v75(v74))
            {
              if (*(*(CMBaseObjectGetVTable() + 16) + 88))
              {
                v76 = OUTLINED_FUNCTION_396();
                v77(v76);
              }
            }
          }
        }
      }

      goto LABEL_113;
    default:
      if (a2 == 202)
      {
        fsrm_setSessionEndReasonIfFatalError(DerivedStorage, *(DerivedStorage + 176), 0x1F0B65858, 0x1F0B657D8, 0x1F0B65818, 0x1F0B657F8);
        if (*(*(OUTLINED_FUNCTION_18_5() + 16) + 64))
        {
          v37 = OUTLINED_FUNCTION_784();
          v38(v37);
        }

        *(DerivedStorage + 72) = v24;
      }

      goto LABEL_113;
  }
}

uint64_t streamModeratorResetStatsForEvent(uint64_t a1, int a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!DerivedStorage)
  {
    return 4294949785;
  }

  v5 = DerivedStorage;
  result = 0;
  switch(a2)
  {
    case 'g':
      v7 = *(v5 + 168);
      v8 = *(v5 + 176);
      v9 = *(*(CMBaseObjectGetVTable() + 16) + 104);
      if (v9)
      {
        v9(v7, v8, 0x1F0B66438);
      }

      v10 = *(v5 + 168);
      v11 = *(*(CMBaseObjectGetVTable() + 16) + 128);
      if (v11)
      {
        v11(v10, 0x1F0B66438);
      }

      if (!*(*(CMBaseObjectGetVTable() + 16) + 176))
      {
        return 0;
      }

      v12 = OUTLINED_FUNCTION_298();
      goto LABEL_36;
    case 'j':
      if (*(*(OUTLINED_FUNCTION_9_7() + 16) + 104))
      {
        v21 = OUTLINED_FUNCTION_266();
        v22(v21);
      }

      if (*(*(OUTLINED_FUNCTION_9_7() + 16) + 104))
      {
        v23 = OUTLINED_FUNCTION_266();
        v24(v23);
      }

      v25 = *(v5 + 168);
      v26 = *(v5 + 176);
      v27 = *(*(CMBaseObjectGetVTable() + 16) + 104);
      if (v27)
      {
        v27(v25, v26, 0x1F0B66458);
      }

      v28 = *(v5 + 168);
      v29 = *(v5 + 176);
      v30 = *(*(CMBaseObjectGetVTable() + 16) + 104);
      if (v30)
      {
        v30(v28, v29, 0x1F0B66478);
      }

      v31 = *(*(OUTLINED_FUNCTION_14_6() + 16) + 128);
      if (v31)
      {
        v31(v28, 0x1F0B66458);
      }

      v32 = *(*(OUTLINED_FUNCTION_14_6() + 16) + 128);
      if (v32)
      {
        v32(v28, 0x1F0B66478);
      }

      v33 = *(*(OUTLINED_FUNCTION_14_6() + 16) + 176);
      if (v33)
      {
        v33(v28, 0x1F0B66458);
      }

      v34 = *(v5 + 168);
      v14 = *(*(CMBaseObjectGetVTable() + 16) + 176);
      if (v14)
      {
        v12 = v34;
        v13 = 0x1F0B66478;
LABEL_36:
        v14(v12, v13);
      }

      return 0;
    case 'm':
      goto LABEL_39;
    case 'n':
      if (*(*(CMBaseObjectGetVTable() + 16) + 136))
      {
        v35 = OUTLINED_FUNCTION_266();
        v36(v35);
      }

LABEL_39:
      if (*(*(OUTLINED_FUNCTION_9_7() + 16) + 104))
      {
        v37 = OUTLINED_FUNCTION_266();
        v38(v37);
      }

      v40 = *(v5 + 168);
      v39 = *(v5 + 176);
      v41 = *(*(CMBaseObjectGetVTable() + 16) + 104);
      if (!v41)
      {
        return 0;
      }

      v42 = 0x1F0B658D8;
      break;
    case 'o':
      if (*(*(OUTLINED_FUNCTION_9_7() + 16) + 104))
      {
        v43 = OUTLINED_FUNCTION_266();
        v44(v43);
      }

      if (*(*(OUTLINED_FUNCTION_9_7() + 16) + 104))
      {
        v45 = OUTLINED_FUNCTION_266();
        v46(v45);
      }

      if (*(*(OUTLINED_FUNCTION_9_7() + 16) + 104))
      {
        v47 = OUTLINED_FUNCTION_266();
        v48(v47);
      }

      if (*(*(OUTLINED_FUNCTION_9_7() + 16) + 104))
      {
        v49 = OUTLINED_FUNCTION_266();
        v50(v49);
      }

      if (*(*(OUTLINED_FUNCTION_9_7() + 16) + 104))
      {
        v51 = OUTLINED_FUNCTION_266();
        v52(v51);
      }

      if (*(*(OUTLINED_FUNCTION_9_7() + 16) + 104))
      {
        v53 = OUTLINED_FUNCTION_266();
        v54(v53);
      }

      if (*(*(OUTLINED_FUNCTION_9_7() + 16) + 104))
      {
        v55 = OUTLINED_FUNCTION_266();
        v56(v55);
      }

      if (*(*(OUTLINED_FUNCTION_9_7() + 16) + 104))
      {
        v57 = OUTLINED_FUNCTION_266();
        v58(v57);
      }

      v40 = *(v5 + 168);
      v39 = *(v5 + 176);
      v41 = *(*(CMBaseObjectGetVTable() + 16) + 104);
      if (!v41)
      {
        return 0;
      }

      v42 = 0x1F0B434F8;
      break;
    case 'p':
      if (CFArrayGetCount(qword_1ED4CA5A8) >= 1)
      {
        v15 = 0;
        do
        {
          v16 = *CFArrayGetValueAtIndex(qword_1ED4CA5A8, v15);
          v17 = *(*(OUTLINED_FUNCTION_14_6() + 16) + 112);
          if (v17)
          {
            v17(v2, v16);
          }

          ++v15;
        }

        while (v15 < CFArrayGetCount(qword_1ED4CA5A8));
      }

      if (CFArrayGetCount(qword_1ED4CA5B0) >= 1)
      {
        v18 = 0;
        do
        {
          v19 = *CFArrayGetValueAtIndex(qword_1ED4CA5B0, v18);
          v20 = *(*(OUTLINED_FUNCTION_14_6() + 16) + 112);
          if (v20)
          {
            v20(v2, v19);
          }

          ++v18;
        }

        while (v18 < CFArrayGetCount(qword_1ED4CA5B0));
      }

      return 0;
    default:
      return result;
  }

  v41(v40, v39, v42);
  return 0;
}

uint64_t streamModeratorPostProcessPayloadForEvent(int a1, int a2, CFDictionaryRef theDict)
{
  if (a2 != 112 || !theDict || CFDictionaryGetCount(theDict) < 1)
  {
    return 0;
  }

  ArrayNameFromKey = fsrm_createArrayNameFromKey(@"SST");
  v5 = fsrm_createArrayNameFromKey(@"AudSST");
  Value = CFDictionaryGetValue(theDict, ArrayNameFromKey);
  v7 = Value;
  if (Value && CFArrayGetCount(Value) >= 1)
  {
    v8 = 0;
    do
    {
      Int64AtIndex = FigCFArrayGetInt64AtIndex();
      v10 = Int64AtIndex != 0;
      if (Int64AtIndex)
      {
        break;
      }

      ++v8;
    }

    while (v8 < CFArrayGetCount(v7));
  }

  else
  {
    v10 = 0;
  }

  v11 = OUTLINED_FUNCTION_298();
  v13 = CFDictionaryGetValue(v11, v12);
  v14 = v13;
  if (v13)
  {
    if (CFArrayGetCount(v13) < 1)
    {
      v17 = 0;
      goto LABEL_19;
    }

    v15 = 0;
    do
    {
      OUTLINED_FUNCTION_292();
      v16 = FigCFArrayGetInt64AtIndex();
      v17 = v16 != 0;
      if (v16)
      {
        break;
      }

      ++v15;
    }

    while (v15 < CFArrayGetCount(v14));
  }

  else
  {
    v17 = 0;
  }

  if (v7 | v14)
  {
LABEL_19:
    if (v10 || v17)
    {
      v18 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v18 = 0;
    }

    FigCFDictionarySetInt64();
    fsrm_replaceTimestampWithDelta(theDict, ArrayNameFromKey, 0x1F0B663F8, v18);
    v19 = OUTLINED_FUNCTION_298();
    fsrm_replaceTimestampWithDelta(v19, v20, v21, v18);
  }

  if (ArrayNameFromKey)
  {
    CFRelease(ArrayNameFromKey);
  }

  if (v5)
  {
    CFRelease(v5);
  }

  Copy = CFDictionaryCreateCopy(*MEMORY[0x1E695E480], theDict);
  if (Copy)
  {
    v23 = Copy;
    CFDictionaryApplyFunction(Copy, fsrm_stringifyArrayFunc, theDict);
    CFRelease(v23);
  }

  return 0;
}

uint64_t streamModeratorGetFollowupEventForEvent(uint64_t a1, int a2, _DWORD *a3, void *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a3 && a4)
  {
    *a3 = 0;
    *a4 = 0;
    if ((a2 - 2001) <= 1)
    {
      v8 = DerivedStorage;
      MaxArrayCount = fsrm_getMaxArrayCount(*(DerivedStorage + 168), qword_1ED4CA5A8);
      if (fsrm_getMaxArrayCount(*(v8 + 168), qword_1ED4CA5B0) + MaxArrayCount <= 49)
      {
        return 0;
      }

      goto LABEL_7;
    }

    if (a2 == 103)
    {
LABEL_7:
      *a3 = 112;
      *a4 = 0;
    }
  }

  return 0;
}

uint64_t fsrm_getInt32FromAggregatedSessionStats(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  result = 4294949785;
  if (a1 && a3)
  {
    if (*(*(CMBaseObjectGetVTable() + 16) + 40))
    {
      v6 = OUTLINED_FUNCTION_16_6();
      result = v7(v6);
      if (!result)
      {
        *a3 = 0;
      }
    }

    else
    {
      return 4294954514;
    }
  }

  return result;
}

uint64_t fsrm_updateExpensiveNetworkStats(uint64_t a1)
{
  result = FigGetUpTimeNanoseconds();
  v15 = 0;
  if (a1)
  {
    v3 = result;
    v4 = *(a1 + 152);
    if (v4)
    {
      v5 = (result - v4) / 0xF4240uLL;
      if (*(a1 + 160))
      {
        v6 = &kFigReportingEventKey_TimeWeightedIndicatedBitsExpensive;
      }

      else
      {
        v6 = &kFigReportingEventKey_TimeWeightedIndicatedBitsInexpensive;
      }

      if (*(a1 + 160))
      {
        v7 = &kFigReportingEventKey_TimeWeightedIndicatedAverageBitsExpensive;
      }

      else
      {
        v7 = &kFigReportingEventKey_TimeWeightedIndicatedAverageBitsInexpensive;
      }

      if (*(a1 + 160))
      {
        v8 = &kFigReportingEventKey_TimeWeightedVariantRankInPlayTimeExpensive;
      }

      else
      {
        v8 = &kFigReportingEventKey_TimeWeightedVariantRankInPlayTimeInexpensive;
      }

      if (*(a1 + 160))
      {
        v9 = &kFigReportingEventKey_TimeWeightedVariantBitrateRankInPlayTimeExpensive;
      }

      else
      {
        v9 = &kFigReportingEventKey_TimeWeightedVariantBitrateRankInPlayTimeInexpensive;
      }

      if (*(a1 + 160))
      {
        v10 = &kFigReportingEventKey_ExpensivePlayTimeWC;
      }

      else
      {
        v10 = &kFigReportingEventKey_InexpensivePlayTimeWC;
      }

      fsrm_addToSessionStatsCountValue(a1, *v6, v5 * *(a1 + 56));
      fsrm_addToSessionStatsCountValue(a1, *v7, v5 * *(a1 + 60));
      fsrm_addToSessionStatsCountValue(a1, *v8, v5 * *(a1 + 64));
      fsrm_addToSessionStatsCountValue(a1, *v9, v5 * *(a1 + 68));
      fsrm_addToSessionStatsCountValue(a1, *v10, v5);
    }

    *(a1 + 152) = v3;
    v11 = *(a1 + 168);
    VTable = CMBaseObjectGetVTable();
    v13 = *(VTable + 16);
    result = VTable + 16;
    v14 = *(v13 + 144);
    if (v14)
    {
      result = v14(v11, 0, 0x1F0B66238, &v15);
      LOBYTE(v14) = v15;
    }

    *(a1 + 160) = v14;
  }

  return result;
}

uint64_t fsrm_reportAggregatedTimeWeightedStats(uint64_t a1)
{
  fsrm_updateExpensiveNetworkStats(a1);
  if (*(*(CMBaseObjectGetVTable() + 16) + 48))
  {
    v1 = OUTLINED_FUNCTION_198_0();
    v2(v1);
  }

  if (*(*(CMBaseObjectGetVTable() + 16) + 48))
  {
    v3 = OUTLINED_FUNCTION_198_0();
    v4(v3);
  }

  if (*(*(CMBaseObjectGetVTable() + 16) + 48))
  {
    v5 = OUTLINED_FUNCTION_198_0();
    v6(v5);
  }

  if (*(*(CMBaseObjectGetVTable() + 16) + 48))
  {
    v7 = OUTLINED_FUNCTION_198_0();
    v8(v7);
  }

  VTable = CMBaseObjectGetVTable();
  v11 = *(VTable + 16);
  result = VTable + 16;
  if (*(v11 + 48))
  {
    v12 = OUTLINED_FUNCTION_198_0();
    return v13(v12);
  }

  return result;
}

uint64_t fsrm_calculatePlayTimeAndUpdateTimeWeightedStats(uint64_t a1, uint64_t a2)
{
  v24 = 0;
  v25 = 0;
  valuePtr = 0;
  number = 0;
  v21 = 0;
  v4 = *(a1 + 168);
  v5 = *(*(CMBaseObjectGetVTable() + 16) + 160);
  if (!v5 || v5(v4, 0, 0x1F0B658D8, &v25))
  {
    v25 = 1;
  }

  if (*(*(CMBaseObjectGetVTable() + 16) + 56))
  {
    v6 = OUTLINED_FUNCTION_16_6();
    v7(v6);
  }

  if (*(*(CMBaseObjectGetVTable() + 16) + 56))
  {
    v8 = OUTLINED_FUNCTION_16_6();
    Int32FromAggregatedSessionStats = v9(v8);
    if (!Int32FromAggregatedSessionStats)
    {
      if (!v24 || (CFNumberGetValue(v24, kCFNumberSInt32Type, &valuePtr + 4), !HIDWORD(valuePtr)))
      {
LABEL_23:
        v19 = 0;
        goto LABEL_25;
      }

      Int32FromAggregatedSessionStats = fsrm_getInt32FromAggregatedSessionStats(*(a1 + 168), 0x1F0B422D8, &v21 + 1);
      if (!Int32FromAggregatedSessionStats)
      {
        Int32FromAggregatedSessionStats = fsrm_getInt32FromAggregatedSessionStats(*(a1 + 168), 0x1F0B42B78, &v21);
        if (!Int32FromAggregatedSessionStats)
        {
          fsrm_updateExpensiveNetworkStats(a1);
          v11 = v25;
          v13 = valuePtr;
          v12 = HIDWORD(valuePtr);
          v15 = v21;
          v14 = HIDWORD(v21);
          v26 = 0;
          if (a2 && v25 >= 1)
          {
            v16 = *(a2 + 88);
            if (v16)
            {
              CFNumberGetValue(v16, kCFNumberSInt32Type, &v26 + 4);
            }

            v17 = *(a2 + 96);
            if (v17)
            {
              CFNumberGetValue(v17, kCFNumberSInt32Type, &v26);
            }

            v18 = *(a2 + 56);
            if (!v18)
            {
              *(a2 + 56) = v12;
              v18 = v12;
            }

            if (!*(a2 + 60))
            {
              *(a2 + 60) = v13;
            }

            OUTLINED_FUNCTION_13_5(0x1F0B66138, v18);
            OUTLINED_FUNCTION_13_5(0x1F0B66158, *(a2 + 60));
            OUTLINED_FUNCTION_13_5(0x1F0B66178, *(a2 + 64));
            OUTLINED_FUNCTION_13_5(0x1F0B66218, *(a2 + 68));
            OUTLINED_FUNCTION_13_5(0x1F0B66198, SHIDWORD(v26));
            OUTLINED_FUNCTION_13_5(0x1F0B661B8, v26);
            fsrm_addToSessionStatsCountValue(a1, 0x1F0B661F8, v11);
            *(a2 + 48) = v11;
            *(a2 + 56) = v12;
            *(a2 + 60) = v13;
            *(a2 + 64) = v14;
            *(a2 + 68) = v15;
          }

          goto LABEL_23;
        }
      }
    }

    v19 = Int32FromAggregatedSessionStats;
  }

  else
  {
    v19 = 4294954514;
  }

LABEL_25:
  if (number)
  {
    CFRelease(number);
  }

  if (v24)
  {
    CFRelease(v24);
  }

  return v19;
}

uint64_t fsrm_copyPlayerIndicatedBitrate(uint64_t a1, uint64_t a2)
{
  result = fsrm_copyCFTypeValueFromAggregatedStats(a1, 0x1F0B42678, a2 + 88);
  if (!result)
  {

    return fsrm_copyCFTypeValueFromAggregatedStats(a1, 0x1F0B42658, a2 + 96);
  }

  return result;
}

uint64_t fsrm_copyCFTypeValueFromAggregatedStats(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a3)
  {
    return 4294949785;
  }

  if (!*(*(CMBaseObjectGetVTable() + 16) + 56))
  {
    return 4294954514;
  }

  v3 = OUTLINED_FUNCTION_16_6();
  v5 = v4(v3);
  if (v5)
  {
    return v5;
  }

  else
  {
    return 4294949781;
  }
}

uint64_t fsrm_setTimeWeightedValue(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v20 = 0;
  VTable = CMBaseObjectGetVTable();
  v14 = *(VTable + 16);
  result = VTable + 16;
  v15 = *(v14 + 48);
  if (v15)
  {
    result = v15(a1, a3, a4, &v20);
    if (!result)
    {
      if (a6)
      {
        v16 = v20;
        if (v20)
        {
          v17 = CMBaseObjectGetVTable();
          v18 = *(v17 + 16);
          result = v17 + 16;
          v19 = *(v18 + 88);
          if (v19)
          {
            return v19(a1, a2, a5, v16 / a6);
          }
        }
      }
    }
  }

  return result;
}

CFArrayRef fsrm_createStaticDataStructuresFromEventKeys()
{
  v52 = *MEMORY[0x1E69E9840];
  memcpy(v51, &off_1E7479C38, sizeof(v51));
  v0 = OUTLINED_FUNCTION_4_9();
  result = CFArrayCreate(v0, v1, 398, 0);
  qword_1ED4CA5D8 = result;
  if (result)
  {
    memcpy(v51, off_1E747A8A8, 0x650uLL);
    v3 = OUTLINED_FUNCTION_4_9();
    result = CFArrayCreate(v3, v4, 202, 0);
    qword_1ED4CA5E8 = result;
    if (result)
    {
      memcpy(v51, off_1E747AEF8, 0x300uLL);
      v5 = OUTLINED_FUNCTION_4_9();
      result = CFArrayCreate(v5, v6, 96, 0);
      qword_1ED4CA5F8 = result;
      if (result)
      {
        memcpy(v51, off_1E747B1F8, 0x430uLL);
        v7 = OUTLINED_FUNCTION_4_9();
        result = CFArrayCreate(v7, v8, 134, 0);
        qword_1ED4CA5E0 = result;
        if (result)
        {
          memcpy(v51, off_1E747B628, 0x1E0uLL);
          v9 = OUTLINED_FUNCTION_4_9();
          result = CFArrayCreate(v9, v10, 60, 0);
          qword_1ED4CA5F0 = result;
          if (result)
          {
            memcpy(v51, &off_1E747B808, 0x678uLL);
            v11 = OUTLINED_FUNCTION_4_9();
            result = CFArrayCreate(v11, v12, 207, 0);
            qword_1ED4CA608 = result;
            if (result)
            {
              memcpy(v51, off_1E747BE80, 0x4E0uLL);
              v13 = OUTLINED_FUNCTION_4_9();
              result = CFArrayCreate(v13, v14, 156, 0);
              qword_1ED4CA600 = result;
              if (result)
              {
                memcpy(v51, off_1E747C360, 0x3A8uLL);
                v15 = OUTLINED_FUNCTION_4_9();
                result = CFArrayCreate(v15, v16, 117, 0);
                qword_1ED4CA610 = result;
                if (result)
                {
                  memcpy(v51, off_1E747C708, 0x430uLL);
                  v17 = OUTLINED_FUNCTION_4_9();
                  result = CFArrayCreate(v17, v18, 134, 0);
                  qword_1ED4CA618 = result;
                  if (result)
                  {
                    memcpy(v51, &off_1E747CB38, 0x48uLL);
                    v19 = OUTLINED_FUNCTION_4_9();
                    result = CFArrayCreate(v19, v20, 9, 0);
                    qword_1ED4CA630 = result;
                    if (result)
                    {
                      v51[0] = xmmword_1E747CB80;
                      *&v51[1] = 0;
                      v21 = OUTLINED_FUNCTION_4_9();
                      result = CFArrayCreate(v21, v22, 3, 0);
                      qword_1ED4CA640 = result;
                      if (result)
                      {
                        v51[0] = xmmword_1E747CB98;
                        v51[1] = *&off_1E747CBA8;
                        v51[2] = xmmword_1E747CBB8;
                        v23 = OUTLINED_FUNCTION_4_9();
                        result = CFArrayCreate(v23, v24, 6, 0);
                        qword_1ED4CA648 = result;
                        if (result)
                        {
                          v51[0] = xmmword_1E747CBC8;
                          v25 = OUTLINED_FUNCTION_4_9();
                          result = CFArrayCreate(v25, v26, 2, 0);
                          qword_1ED4CA650 = result;
                          if (result)
                          {
                            memcpy(v51, off_1E747CBD8, 0x3B8uLL);
                            v27 = OUTLINED_FUNCTION_4_9();
                            result = CFArrayCreate(v27, v28, 119, 0);
                            qword_1ED4CA620 = result;
                            if (result)
                            {
                              memcpy(v51, off_1E747CF90, 0x2B0uLL);
                              v29 = OUTLINED_FUNCTION_4_9();
                              result = CFArrayCreate(v29, v30, 86, 0);
                              qword_1ED4CA628 = result;
                              if (result)
                              {
                                memcpy(v51, off_1E747D240, 0xC8uLL);
                                v31 = OUTLINED_FUNCTION_4_9();
                                result = CFArrayCreate(v31, v32, 25, 0);
                                _MergedGlobals_25 = result;
                                if (result)
                                {
                                  memcpy(v51, off_1E747D308, 0x3A0uLL);
                                  v33 = OUTLINED_FUNCTION_4_9();
                                  result = CFArrayCreate(v33, v34, 116, 0);
                                  qword_1ED4CA678 = result;
                                  if (result)
                                  {
                                    v51[0] = xmmword_1E747D6A8;
                                    v35 = OUTLINED_FUNCTION_4_9();
                                    result = CFArrayCreate(v35, v36, 2, 0);
                                    qword_1ED4CA5D0 = result;
                                    if (result)
                                    {
                                      memcpy(v51, off_1E747D6B8, 0x358uLL);
                                      v37 = OUTLINED_FUNCTION_4_9();
                                      result = CFArrayCreate(v37, v38, 107, 0);
                                      qword_1ED4CA638 = result;
                                      if (result)
                                      {
                                        memcpy(v51, off_1E747DA10, 0x230uLL);
                                        v39 = OUTLINED_FUNCTION_4_9();
                                        result = CFArrayCreate(v39, v40, 70, 0);
                                        qword_1ED4CA658 = result;
                                        if (result)
                                        {
                                          memcpy(v51, off_1E747DC40, 0x370uLL);
                                          v41 = OUTLINED_FUNCTION_4_9();
                                          result = CFArrayCreate(v41, v42, 110, 0);
                                          qword_1ED4CA668 = result;
                                          if (result)
                                          {
                                            memcpy(v51, &off_1E747DFB0, 0x2D0uLL);
                                            v43 = OUTLINED_FUNCTION_4_9();
                                            result = CFArrayCreate(v43, v44, 90, 0);
                                            qword_1ED4CA670 = result;
                                            if (result)
                                            {
                                              memcpy(v51, off_1E747E280, 0x218uLL);
                                              v45 = OUTLINED_FUNCTION_4_9();
                                              result = CFArrayCreate(v45, v46, 67, 0);
                                              qword_1ED4CA5A8 = result;
                                              if (result)
                                              {
                                                memcpy(v51, off_1E747E498, 0x168uLL);
                                                v47 = OUTLINED_FUNCTION_4_9();
                                                result = CFArrayCreate(v47, v48, 45, 0);
                                                qword_1ED4CA5B0 = result;
                                                if (result)
                                                {
                                                  memcpy(v51, off_1E747E600, 0x238uLL);
                                                  v49 = OUTLINED_FUNCTION_4_9();
                                                  result = CFArrayCreate(v49, v50, 71, 0);
                                                  qword_1ED4CA660 = result;
                                                  if (result)
                                                  {
                                                    result = fsrm_createStaticKeySetFromEventKeys(off_1E747E838, 0x27uLL);
                                                    qword_1ED4CA5B8 = result;
                                                    if (result)
                                                    {
                                                      result = fsrm_createStaticKeySetFromEventKeys(off_1E747E970, 0xAuLL);
                                                      qword_1ED4CA5C0 = result;
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
    }
  }

  return result;
}

const void **fsrm_createStaticKeySetFromEventKeys(const void ***a1, size_t count)
{
  v2 = count;
  v4 = count;
  result = malloc_type_calloc(count, 8uLL, 0x80040B8603338uLL);
  if (result)
  {
    v6 = result;
    if (v2 >= 1)
    {
      v7 = v4;
      v8 = result;
      do
      {
        v9 = *a1++;
        *v8++ = *v9;
        --v7;
      }

      while (v7);
    }

    v10 = CFSetCreate(*MEMORY[0x1E695E480], result, v4, MEMORY[0x1E695E9F8]);
    free(v6);
    return v10;
  }

  return result;
}

__CFString *fsrm_createArrayNameFromKey(CFStringRef theString)
{
  MutableCopy = CFStringCreateMutableCopy(*MEMORY[0x1E695E480], 0, theString);
  v2 = MutableCopy;
  if (MutableCopy)
  {
    CFStringAppend(MutableCopy, @"_Array");
  }

  return v2;
}

void fsrm_replaceTimestampWithDelta(const __CFDictionary *a1, const void *a2, uint64_t a3, uint64_t a4)
{
  Value = CFDictionaryGetValue(a1, a2);
  if (Value)
  {
    v7 = Value;
    Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
    if (Mutable)
    {
      v9 = Mutable;
      if (CFArrayGetCount(v7) >= 1)
      {
        v10 = 0;
        do
        {
          if (FigCFArrayGetInt64AtIndex())
          {
            FigCFArrayAppendInt64();
          }

          else
          {
            CFArrayAppendValue(v9, @"-");
          }

          ++v10;
        }

        while (v10 < CFArrayGetCount(v7));
      }

      OUTLINED_FUNCTION_266();
      FigCFDictionarySetValue();
      CFRelease(v9);
    }
  }

  CFDictionaryRemoveValue(a1, a2);
}

void fsrm_stringifyArrayFunc(uint64_t a1, const __CFArray *a2, uint64_t a3)
{
  if (a3)
  {
    TypeID = CFArrayGetTypeID();
    if (TypeID == CFGetTypeID(a2))
    {
      Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
      if (Mutable)
      {
        v6 = Mutable;
        if (CFArrayGetCount(a2) >= 1)
        {
          v7 = 0;
          do
          {
            ValueAtIndex = CFArrayGetValueAtIndex(a2, v7);
            if (ValueAtIndex && (v9 = ValueAtIndex, v10 = CFNumberGetTypeID(), v10 == CFGetTypeID(v9)))
            {
              valuePtr = 0;
              CFNumberGetValue(v9, kCFNumberSInt64Type, &valuePtr);
              CFStringAppendFormat(v6, 0, @"%lld", valuePtr);
            }

            else
            {
              CFStringAppend(v6, @"-");
            }

            if (++v7 < CFArrayGetCount(a2))
            {
              CFStringAppend(v6, @",");
            }
          }

          while (v7 < CFArrayGetCount(a2));
        }

        v11 = OUTLINED_FUNCTION_298();
        CFDictionarySetValue(v11, v12, v6);
        CFRelease(v6);
      }
    }
  }
}

uint64_t HandleMutableCompositionMessage(uint64_t a1, void *a2, void *a3)
{
  OpCode = FigXPCMessageGetOpCode();
  if (OpCode)
  {
    return OpCode;
  }

  v11 = 0;
  xpc_dictionary_get_uint64(a2, *MEMORY[0x1E69615A0]);
  v5 = OUTLINED_FUNCTION_283();
  v8 = LookupMutableCompositionByObjectIDForConnection(v5, v6, v7);
  if (v8)
  {
    return v8;
  }

  else
  {
    return 4294951138;
  }
}

uint64_t HandleMutableCompositionCreateMutableCopyMessage(uint64_t a1, uint64_t a2, void *a3)
{
  OUTLINED_FUNCTION_8_9();
  v6 = *(*(CMBaseObjectGetVTable() + 16) + 8);
  if (v6)
  {
    v7 = v6(*MEMORY[0x1E695E480], v4, cf);
    if (v7)
    {
      v10 = v7;
LABEL_6:
      v9 = 0;
      goto LABEL_8;
    }

    v8 = CreateServedMutableCompositionState(v3, &v12);
    v9 = v12;
    if (!v8)
    {
      OUTLINED_FUNCTION_7_8();
      v10 = FigXPCServerAssociateObjectWithConnection();
      if (v10)
      {
        goto LABEL_8;
      }

      xpc_dictionary_set_uint64(a3, *MEMORY[0x1E69615A0], cf[1]);
      goto LABEL_6;
    }

    v10 = v8;
  }

  else
  {
    v9 = 0;
    v10 = 4294954514;
  }

LABEL_8:
  DisposeServedMutableCompositionState(v9);
  if (cf[0])
  {
    CFRelease(cf[0]);
  }

  return v10;
}

uint64_t HandleMutableCompositionCopyFormatReaderMessage(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  OUTLINED_FUNCTION_8_9();
  xpc_dictionary_get_BOOL(v6, "MakeImmutableSnapshot");
  v7 = FigXPCMessageCopyCFDictionary();
  if (v7)
  {
    goto LABEL_12;
  }

  if (!*(*(CMBaseObjectGetVTable() + 16) + 16))
  {
    v10 = 4294954514;
    goto LABEL_7;
  }

  v8 = OUTLINED_FUNCTION_11_9();
  v7 = v9(v8);
  if (v7)
  {
LABEL_12:
    v10 = v7;
  }

  else
  {
    v10 = FigXPCFormatReaderServerAssociateCopiedNeighborFormatReader(v4, v13, &value);
    if (!v10)
    {
      xpc_dictionary_set_uint64(a4, "FormatReader", value);
    }
  }

LABEL_7:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v13)
  {
    CFRelease(v13);
  }

  return v10;
}

uint64_t HandleMutableCompositionCopyAssetMessage(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  OUTLINED_FUNCTION_8_9();
  xpc_dictionary_get_BOOL(v6, "MakeImmutableSnapshot");
  v7 = FigXPCMessageCopyCFDictionary();
  if (v7)
  {
    goto LABEL_12;
  }

  if (!*(*(CMBaseObjectGetVTable() + 16) + 208))
  {
    v10 = 4294954514;
    goto LABEL_7;
  }

  v8 = OUTLINED_FUNCTION_11_9();
  v7 = v9(v8);
  if (v7)
  {
LABEL_12:
    v10 = v7;
  }

  else
  {
    v10 = FigXPCAssetServerAssociateCopiedNeighborAsset(v4, cf, &value);
    if (!v10)
    {
      xpc_dictionary_set_uint64(a4, "Asset", value);
    }
  }

LABEL_7:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v14)
  {
    CFRelease(v14);
  }

  return v10;
}

uint64_t HandleMutableCompositionGetTrackCompatibleWithAssetTrackMessage(uint64_t a1, int a2, xpc_object_t xdict, void *a4)
{
  LODWORD(value) = 0;
  int64 = xpc_dictionary_get_int64(xdict, "AssetTrackID");
  v7 = FigXPCMessageCopyCFURL();
  if (v7)
  {
    return v7;
  }

  OUTLINED_FUNCTION_10_9();
  v7 = mutableCompositionServer_checkSourceURLAccess(v8, v9);
  if (v7)
  {
    return v7;
  }

  v10 = *(*(CMBaseObjectGetVTable() + 16) + 24);
  if (!v10)
  {
    return 4294954514;
  }

  v11 = v10(a1, 0, int64, &value);
  if (!v11)
  {
    xpc_dictionary_set_int64(a4, "TrackID", value);
  }

  return v11;
}

uint64_t HandleMutableCompositionAddTrackMessage(uint64_t a1, xpc_object_t xdict, void *a3)
{
  LODWORD(value) = 0;
  int64 = xpc_dictionary_get_int64(xdict, "TrackID");
  uint64 = xpc_dictionary_get_uint64(xdict, "MediaType");
  v8 = FigXPCMessageCopyCFDictionary();
  if (v8)
  {
    return v8;
  }

  v9 = *(*(CMBaseObjectGetVTable() + 16) + 32);
  if (!v9)
  {
    return 4294954514;
  }

  v10 = v9(a1, uint64, 0, int64, &value);
  if (!v10)
  {
    xpc_dictionary_set_int64(a3, "TrackID", value);
  }

  return v10;
}

uint64_t HandleMutableCompositionCopyTrackEditListMessage(uint64_t a1, xpc_object_t xdict, void *a3)
{
  theData = 0;
  count = 0;
  int64 = xpc_dictionary_get_int64(xdict, "TrackID");
  v6 = *(*(CMBaseObjectGetVTable() + 16) + 56);
  if (!v6)
  {
    return 4294954514;
  }

  v7 = v6(a1, int64, &count, 0, 0);
  if (v7)
  {
    return v7;
  }

  v8 = malloc_type_calloc(count, 0x6CuLL, 0x1060040CB727B4DuLL);
  if (!v8)
  {
    fig_log_get_emitter();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", theData, count, v22);
    return v7;
  }

  v9 = v8;
  v10 = count;
  v11 = *(*(CMBaseObjectGetVTable() + 16) + 56);
  if (v11)
  {
    v12 = v11(a1, int64, 0, v10, v9);
    if (v12 || (v12 = FigRemote_CreateEditArrayData(count, v9, *MEMORY[0x1E695E480], &theData), v12))
    {
      v15 = v12;
    }

    else
    {
      if (theData)
      {
        BytePtr = CFDataGetBytePtr(theData);
        Length = CFDataGetLength(theData);
        xpc_dictionary_set_data(a3, "EditListData", BytePtr, Length);
      }

      xpc_dictionary_set_int64(a3, "EditCount", count);
      v15 = 0;
    }
  }

  else
  {
    v15 = 4294954514;
  }

  v16 = count;
  if (count >= 1)
  {
    v17 = 0;
    v18 = v9 + 12;
    do
    {
      if (*v18)
      {
        CFRelease(*v18);
        v16 = count;
      }

      ++v17;
      v18 = (v18 + 108);
    }

    while (v16 > v17);
  }

  free(v9);
  if (theData)
  {
    CFRelease(theData);
  }

  return v15;
}

uint64_t HandleMutableCompositionAddFormatReaderForURLMessage(uint64_t a1, int a2, xpc_object_t xdict)
{
  cf = 0;
  v12 = 0;
  uint64 = xpc_dictionary_get_uint64(xdict, "FormatReader");
  v4 = FigXPCFormatReaderServerCopyFormatReaderForID(uint64, &cf);
  if (v4)
  {
    goto LABEL_6;
  }

  v4 = FigXPCMessageCopyCFURL();
  if (v4)
  {
    goto LABEL_6;
  }

  OUTLINED_FUNCTION_10_9();
  v4 = mutableCompositionServer_checkSourceURLAccess(v5, v6);
  if (v4)
  {
    goto LABEL_6;
  }

  if (*(*(CMBaseObjectGetVTable() + 16) + 64))
  {
    v7 = OUTLINED_FUNCTION_298();
    v4 = v8(v7);
LABEL_6:
    v9 = v4;
    goto LABEL_8;
  }

  v9 = 4294954514;
LABEL_8:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v12)
  {
    CFRelease(v12);
  }

  return v9;
}

uint64_t HandleMutableCompositionCopyTrackPropertyMessage(uint64_t a1, xpc_object_t xdict, uint64_t a3)
{
  v8 = 0;
  cf1 = 0;
  v6 = 0;
  cf = 0;
  xpc_dictionary_get_int64(xdict, "TrackID");
  v3 = FigXPCMessageCopyCFString();
  if (!v3)
  {
    fig_log_get_emitter();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v6, cf, v8);
  }

  v5 = v3;
  if (v8)
  {
    CFRelease(v8);
  }

  if (cf1)
  {
    CFRelease(cf1);
  }

  return v5;
}

uint64_t HandleMutableCompositionSetTrackPropertyMessage(uint64_t a1, xpc_object_t xdict)
{
  v6 = 0;
  cf1 = 0;
  cf = 0;
  xpc_dictionary_get_int64(xdict, "TrackID");
  v2 = FigXPCMessageCopyCFString();
  if (!v2)
  {
    fig_log_get_emitter();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", 0, 0, v6);
  }

  v3 = v2;
  if (cf)
  {
    CFRelease(cf);
  }

  if (v6)
  {
    CFRelease(v6);
  }

  if (cf1)
  {
    CFRelease(cf1);
  }

  return v3;
}

uint64_t HandleMutableCompositionInsertAssetSegmentIntoTrackMessage(uint64_t a1, uint64_t a2, xpc_object_t xdict)
{
  v28 = 0;
  v26 = *MEMORY[0x1E6960CC0];
  v27 = *(MEMORY[0x1E6960CC0] + 16);
  v24 = v26;
  v25 = v27;
  v22 = v26;
  v23 = v27;
  int64 = xpc_dictionary_get_int64(xdict, "DestTrackID");
  v7 = xpc_dictionary_get_int64(xdict, "AssetTrackID");
  FigXPCMessageGetCMTime();
  FigXPCMessageGetCMTime();
  FigXPCMessageGetCMTime();
  v8 = FigXPCMessageCopyCFURL();
  if (v8)
  {
    goto LABEL_5;
  }

  v9 = *(a2 + 32);
  v20 = *(a2 + 16);
  v21 = v9;
  v8 = mutableCompositionServer_checkSourceURLAccess(v28, &v20);
  if (v8)
  {
    goto LABEL_5;
  }

  v10 = v28;
  v18 = v26;
  v19 = v27;
  v16 = v24;
  v17 = v25;
  v14 = v22;
  v15 = v23;
  v11 = *(*(CMBaseObjectGetVTable() + 16) + 88);
  if (v11)
  {
    v20 = v18;
    *&v21 = v19;
    v31 = v16;
    v32 = v17;
    v29 = v14;
    v30 = v15;
    v8 = v11(a1, int64, v10, v7, &v20, &v31, &v29);
LABEL_5:
    v12 = v8;
    goto LABEL_7;
  }

  v12 = 4294954514;
LABEL_7:
  if (v28)
  {
    CFRelease(v28);
  }

  return v12;
}

uint64_t HandleMutableCompositionInsertAssetSegmentMessage(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_4_20(MEMORY[0x1E6960CC0]);
  FigXPCMessageGetCMTime();
  FigXPCMessageGetCMTime();
  FigXPCMessageGetCMTime();
  v2 = FigXPCMessageCopyCFURL();
  if (!v2)
  {
    if (!*(*(OUTLINED_FUNCTION_1_26() + 16) + 96))
    {
      return 4294954514;
    }

    v3 = OUTLINED_FUNCTION_298();
    return v4(v3);
  }

  return v2;
}

uint64_t HandleMutableCompositionInsertSegmentArrayIntoTrackMessage(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  FigXPCMessageGetCMTime();
  FigXPCMessageCopyCFArray();
  return 4294954516;
}

uint64_t HandleMutableCompositionAddAssetForURLMessage(uint64_t a1, uint64_t a2, void *a3)
{
  v12 = 0;
  cf = 0;
  FigXPCMessageCopyCFURL();
  uint64 = xpc_dictionary_get_uint64(a3, "Asset");
  v5 = FigXPCAssetServerCopyAssetForID(uint64, &v12);
  if (v5)
  {
    goto LABEL_5;
  }

  OUTLINED_FUNCTION_10_9();
  v5 = mutableCompositionServer_checkSourceURLAccess(v6, v7);
  if (v5)
  {
    goto LABEL_5;
  }

  if (*(*(CMBaseObjectGetVTable() + 16) + 176))
  {
    v8 = OUTLINED_FUNCTION_298();
    v5 = v9(v8);
LABEL_5:
    v10 = v5;
    goto LABEL_7;
  }

  v10 = 4294954514;
LABEL_7:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v12)
  {
    CFRelease(v12);
  }

  return v10;
}

uint64_t HandleMutableCompositionGetTrackCompatibleWithMutableCompositionTrackMessage(uint64_t a1, uint64_t a2, xpc_object_t xdict, void *a4)
{
  memset(value, 0, sizeof(value));
  int64 = xpc_dictionary_get_int64(xdict, "AssetTrackID");
  uint64 = xpc_dictionary_get_uint64(xdict, "SourceCompositionID");
  v10 = LookupMutableCompositionByObjectIDForConnection(a1, uint64, &value[1]);
  v11 = *&value[1];
  if (v10)
  {
    v13 = v10;
    if (!*&value[1])
    {
      return v13;
    }

    goto LABEL_8;
  }

  v12 = *(*(CMBaseObjectGetVTable() + 16) + 200);
  if (v12)
  {
    v13 = v12(a2, v11, int64, value);
    if (!v13)
    {
      xpc_dictionary_set_int64(a4, "TrackID", value[0]);
      if (!v11)
      {
        return v13;
      }

      goto LABEL_8;
    }
  }

  else
  {
    v13 = 4294954514;
  }

  if (v11)
  {
LABEL_8:
    CFRelease(v11);
  }

  return v13;
}

uint64_t HandleMutableCompositionInsertMutableCompositionSegmentIntoTrackMessage(uint64_t a1, uint64_t a2, void *a3)
{
  v21 = 0;
  OUTLINED_FUNCTION_4_20(MEMORY[0x1E6960CC0]);
  int64 = xpc_dictionary_get_int64(v6, "AssetTrackID");
  v8 = xpc_dictionary_get_int64(a3, "DestTrackID");
  uint64 = xpc_dictionary_get_uint64(a3, "SourceCompositionID");
  FigXPCMessageGetCMTime();
  FigXPCMessageGetCMTime();
  FigXPCMessageGetCMTime();
  v10 = LookupMutableCompositionByObjectIDForConnection(a1, uint64, &v21);
  v11 = v21;
  if (v10)
  {
LABEL_4:
    v13 = v10;
    if (!v11)
    {
      return v13;
    }

    goto LABEL_7;
  }

  v12 = *(*(OUTLINED_FUNCTION_1_26() + 16) + 184);
  if (v12)
  {
    v26 = v19;
    v27 = v20;
    v24 = v17;
    v25 = v18;
    v22 = v15;
    v23 = v16;
    v10 = v12(a2, v8, v11, int64, &v26, &v24, &v22);
    goto LABEL_4;
  }

  v13 = 4294954514;
  if (v11)
  {
LABEL_7:
    CFRelease(v11);
  }

  return v13;
}

uint64_t HandleMutableCompositionInsertMutableCompositionSegmentMessage(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v18 = 0;
  OUTLINED_FUNCTION_4_20(MEMORY[0x1E6960CC0]);
  uint64 = xpc_dictionary_get_uint64(v4, "SourceCompositionID");
  FigXPCMessageGetCMTime();
  FigXPCMessageGetCMTime();
  FigXPCMessageGetCMTime();
  v6 = LookupMutableCompositionByObjectIDForConnection(a1, uint64, &v18);
  v7 = v18;
  if (v6)
  {
LABEL_4:
    v10 = v6;
    if (!v7)
    {
      return v10;
    }

    goto LABEL_7;
  }

  if (*(*(OUTLINED_FUNCTION_1_26() + 16) + 192))
  {
    v23 = v16;
    v24 = v17;
    v21 = v14;
    v22 = v15;
    v19 = v12;
    v20 = v13;
    v8 = OUTLINED_FUNCTION_298();
    v6 = v9(v8);
    goto LABEL_4;
  }

  v10 = 4294954514;
  if (v7)
  {
LABEL_7:
    CFRelease(v7);
  }

  return v10;
}

uint64_t CreateServedMutableCompositionState(uint64_t a1, void *a2)
{
  v4 = malloc_type_calloc(1uLL, 0x38uLL, 0x1020040B683858BuLL);
  if (!v4)
  {
    emitter = fig_log_get_emitter();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 4294954510, "<< FigMutableCompositionXPCServer >>", 158, v2);
    goto LABEL_8;
  }

  xpc_connection_get_audit_token();
  FigServer_GetClientPIDFromAuditToken();
  v5 = FigSandboxAssertionCreateForPID();
  if (v5)
  {
LABEL_8:
    v9 = v5;
    goto LABEL_5;
  }

  v4[1] = 0u;
  v4[2] = 0u;
  OUTLINED_FUNCTION_10_9();
  *(v4 + 1) = SecTaskCreateWithAuditToken(v6, v7);
  v8 = FigOSTransactionCreate();
  *(v4 + 6) = v8;
  if (!v8)
  {
    v12 = fig_log_get_emitter();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v12, 4294954510, "<< FigMutableCompositionXPCServer >>", 170, v2);
    goto LABEL_8;
  }

  v9 = 0;
  *a2 = v4;
  v4 = 0;
LABEL_5:
  DisposeServedMutableCompositionState(v4);
  return v9;
}

void LookupMutableCompositionByObjectIDForConnection_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void HandleMutableCompositionSetTrackEditListMessage_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void HandleMutableCompositionSetTrackEditListMessage_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void HandleMutableCompositionSetTrackEditListMessage_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void mutableCompositionServer_checkSourceURLAccess_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

const __CFArray *FigVCPGetTimedSampleAtTimeFromOrderedArray(const __CFArray *result)
{
  if (result)
  {
    v1 = result;
    Count = CFArrayGetCount(result);
    if (Count < 1)
    {
      return 0;
    }

    else
    {
      v3 = Count;
      v4 = 0;
      v22 = *MEMORY[0x1E6960C70];
      v21 = *MEMORY[0x1E6960C80];
      do
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v1, v4);
        *&v26 = v22;
        if (ValueAtIndex)
        {
          v26 = ValueAtIndex[1];
        }

        else
        {
          FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v21, DWORD2(v21), v22);
        }

        v27 = v26;
        v13 = OUTLINED_FUNCTION_1_27(ValueAtIndex, v6, v7, v8, v9, v10, v11, v12, v21, *(&v21 + 1), v22, *(&v22 + 1), v23, v24, v25, v21);
        if (v13 <= 0 && OUTLINED_FUNCTION_1_27(v13, v14, v15, v16, v17, v18, v19, v20, v21, *(&v21 + 1), v22, *(&v22 + 1), v23, v24, v25, v27) >= 1)
        {
          break;
        }

        ++v4;
      }

      while (v3 != v4);
      return FigCFArrayGetValueAtIndex();
    }
  }

  return result;
}

uint64_t manifoldServer_replyingMessageHandler(_xpc_connection_s *a1, void *a2, void *a3)
{
  v83 = 0;
  v80 = 0;
  v81 = 0;
  OpCode = FigXPCMessageGetOpCode();
  if (OpCode)
  {
    goto LABEL_37;
  }

  OpCode = manifoldServer_copyManifoldAndCompanion(a1, a2, &v81, &v80);
  if (OpCode)
  {
    goto LABEL_37;
  }

  switch(v83)
  {
    case 1920300146:
      v43 = v80;
      v47 = v81;
      v48 = *(CMBaseObjectGetVTable() + 16);
      if (*v48 < 2uLL)
      {
        goto LABEL_68;
      }

      v49 = v48[7];
      if (!v49)
      {
        goto LABEL_68;
      }

      v46 = v49(v47);
      goto LABEL_65;
    case 779314548:
      OpCode = FigXPCHandleStdSetPropertyMessage();
      goto LABEL_37;
    case 1668310628:
      v50 = v81;
      cf = 0;
      Int32 = FigXPCMessageGetInt32();
      v52 = *(*(CMBaseObjectGetVTable() + 16) + 24);
      if (v52)
      {
        v53 = v52(v50, Int32, &cf);
        if (v53)
        {
          v19 = v53;
        }

        else
        {
          v19 = FigXPCMessageSetFormatDescription();
          if (!v19)
          {
            v54 = OUTLINED_FUNCTION_198_0();
            manifoldServer_copyPendingCallbacksIntoReply(v54, v55);
          }
        }
      }

      else
      {
        v19 = 4294954514;
      }

LABEL_4:
      v7 = cf;
      if (!cf)
      {
        goto LABEL_6;
      }

      goto LABEL_5;
  }

  if (v83 != 1668575856)
  {
    if (v83 != 1718383464)
    {
      if (v83 == 1768121972)
      {
        v36 = v80;
        v37 = v81;
        cf = 0;
        v85 = 0;
        v86 = 0;
        v38 = FigXPCMessageGetInt32();
        if (xpc_dictionary_get_BOOL(a2, "installFormatDescriptionOrDecryptorChangedCallback"))
        {
          cf = manifoldServer_formatDescriptionOrDecryptorChangedCallback;
        }

        if (xpc_dictionary_get_BOOL(a2, "installPushSampleBufferCallback"))
        {
          v85 = manifoldServer_pushSampleBufferCallback;
        }

        if (xpc_dictionary_get_BOOL(a2, "installTrackEndedCallback"))
        {
          OUTLINED_FUNCTION_3_19();
          v86 = v39;
        }

        v40 = *(*(CMBaseObjectGetVTable() + 16) + 32);
        if (v40)
        {
          v24 = v40(v37, v38, &cf, v36);
          goto LABEL_58;
        }

LABEL_68:
        v19 = 4294954514;
        goto LABEL_6;
      }

      if (v83 != 1768186228)
      {
        if (v83 != 1768846945)
        {
          if (v83 != 1853056356)
          {
            if (v83 != 778268793)
            {
              v19 = 4294951138;
              goto LABEL_6;
            }

            v9 = v81;
            cf = 0;
            v89 = 0;
            blockBufferOut = 0;
            value = 0;
            v10 = FigXPCMessageCopyCFString();
            if (!v10)
            {
              v11 = cf;
              if (cf)
              {
                AllocatorForMedia = FigGetAllocatorForMedia();
                v13 = *(*(CMBaseObjectGetVTable() + 8) + 48);
                if (!v13)
                {
                  goto LABEL_73;
                }

                v10 = v13(v9, v11, AllocatorForMedia, &blockBufferOut);
                if (!v10)
                {
                  if (FigCFEqual())
                  {
                    if (blockBufferOut)
                    {
                      v14 = CFGetTypeID(blockBufferOut);
                      if (v14 == FigAssetGetTypeID())
                      {
                        v15 = FigGetAllocatorForMedia();
                        FigAssetGetCMBaseObject();
                        v17 = v16;
                        v18 = *(*(CMBaseObjectGetVTable() + 8) + 48);
                        if (v18)
                        {
                          v10 = v18(v17, @"assetProperty_FormatReader", v15, &v89);
                          if (!v10)
                          {
                            if (!v89)
                            {
                              v19 = 0;
                              goto LABEL_138;
                            }

                            v19 = FigXPCFormatReaderServerAssociateCopiedNeighborFormatReader(a1, v89, &value);
                            if (!v19)
                            {
                              xpc_dictionary_set_uint64(a3, "formatReader", value);
                            }

                            goto LABEL_136;
                          }

                          goto LABEL_143;
                        }

LABEL_73:
                        v19 = 4294954514;
                        goto LABEL_136;
                      }
                    }

LABEL_135:
                    v19 = 0;
                    goto LABEL_136;
                  }

                  if (FigCFEqual())
                  {
                    if (blockBufferOut)
                    {
                      v79 = CFGetTypeID(blockBufferOut);
                      if (v79 == CMBlockBufferGetTypeID())
                      {
                        FigXPCMessageSetBlockBuffer();
                      }
                    }

                    goto LABEL_135;
                  }

                  v10 = FigXPCMessageSetCFObject();
                }
              }

              else
              {
                fig_log_get_emitter();
                OUTLINED_FUNCTION_1_11();
                FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v80, v81, v82);
              }
            }

LABEL_143:
            v19 = v10;
LABEL_136:
            if (v89)
            {
              CFRelease(v89);
            }

            goto LABEL_138;
          }

          v21 = v81;
          OSStatus = FigXPCMessageGetOSStatus();
          v23 = *(*(CMBaseObjectGetVTable() + 16) + 16);
          if (v23)
          {
            v24 = v23(v21, OSStatus);
LABEL_58:
            v19 = v24;
            if (v24)
            {
              goto LABEL_6;
            }

            v41 = OUTLINED_FUNCTION_198_0();
LABEL_67:
            manifoldServer_copyPendingCallbacksIntoReply(v41, v42);
            goto LABEL_6;
          }

          goto LABEL_68;
        }

        FigManifoldGetFigBaseObject();
        if (!v25)
        {
          v19 = 4294954516;
          goto LABEL_6;
        }

        v26 = v25;
        v27 = *(*(CMBaseObjectGetVTable() + 8) + 24);
        if (!v27)
        {
          goto LABEL_68;
        }

        OpCode = v27(v26);
LABEL_37:
        v19 = OpCode;
        goto LABEL_6;
      }

      if (v80)
      {
        CFArrayRemoveAllValues(*(v80 + 11));
        v20 = v80;
      }

      else
      {
        v20 = 0;
      }

      v56 = v81;
      cf = 0;
      v89 = 0;
      blockBufferOut = 0;
      v87 = 0;
      value = 0;
      int64 = xpc_dictionary_get_int64(a2, "dataStartReference");
      uint64 = xpc_dictionary_get_uint64(a2, "injectFlags");
      if (xpc_dictionary_get_value(a2, "emptyData"))
      {
        v59 = FigGetAllocatorForMedia();
        Empty = CMBlockBufferCreateEmpty(v59, 0, 0, &cf);
      }

      else
      {
        if (!xpc_dictionary_get_value(a2, "data"))
        {
          goto LABEL_82;
        }

        FigGetAllocatorForMedia();
        Empty = FigXPCMessageCopyBlockBufferUsingMemoryRecipient();
      }

      v19 = Empty;
      if (Empty)
      {
LABEL_123:
        if (value)
        {
          CFRelease(value);
        }

        if (v87)
        {
          CFRelease(v87);
        }

        if (blockBufferOut)
        {
          CFRelease(blockBufferOut);
        }

        if (v89)
        {
          CFRelease(v89);
        }

        goto LABEL_4;
      }

LABEL_82:
      if (xpc_dictionary_get_BOOL(a2, "UseAESCryptor"))
      {
        if (xpc_dictionary_get_BOOL(a2, "UseExistingAESCryptor"))
        {
          v61 = v20[14];
          if (v61)
          {
            v61 = CFRetain(v61);
          }

          blockBufferOut = v61;
LABEL_103:
          if (!v61)
          {
            goto LABEL_112;
          }

          updated = FigXPCMessageCopyCFData();
          if (!updated)
          {
            updated = FigXPCMessageCopyCFData();
            if (!updated)
            {
              v69 = value;
              if (!value)
              {
                goto LABEL_109;
              }

              v70 = blockBufferOut;
              v71 = *(*(CMBaseObjectGetVTable() + 8) + 56);
              if (!v71)
              {
                goto LABEL_122;
              }

              updated = v71(v70, *MEMORY[0x1E69610D8], v69);
              if (!updated)
              {
LABEL_109:
                v72 = v87;
                if (!v87)
                {
                  goto LABEL_112;
                }

                v73 = blockBufferOut;
                v74 = *(*(CMBaseObjectGetVTable() + 8) + 56);
                if (!v74)
                {
                  goto LABEL_122;
                }

                updated = v74(v73, *MEMORY[0x1E69610C8], v72);
                if (!updated)
                {
                  goto LABEL_112;
                }
              }
            }
          }

          goto LABEL_121;
        }

        v63 = v20[13];
        if (!v63)
        {
          v64 = FigGetAllocatorForMedia();
          updated = FigCPEProtectorCreateForScheme(v64, @"com.apple.basicAES", 0, (v20 + 13));
          if (updated)
          {
            goto LABEL_121;
          }

          v63 = v20[13];
        }

        v65 = FigGetAllocatorForMedia();
        v66 = *(*(CMBaseObjectGetVTable() + 16) + 104);
        if (!v66)
        {
          goto LABEL_122;
        }

        updated = v66(v63, v65, 1, 0, &blockBufferOut);
        if (!updated)
        {
          v67 = v20[14];
          v68 = blockBufferOut;
          v20[14] = blockBufferOut;
          if (v68)
          {
            CFRetain(v68);
          }

          if (v67)
          {
            CFRelease(v67);
          }

          v61 = blockBufferOut;
          goto LABEL_103;
        }
      }

      else if (!xpc_dictionary_get_uint64(a2, "cryptorObjectID") || (FigGetAllocatorForMedia(), updated = FigCPECryptorRemoteRetainCopiedCryptor(), !updated))
      {
        if (!xpc_dictionary_get_uint64(a2, "audioCryptorObjectID") || (FigGetAllocatorForMedia(), updated = FigCPECryptorRemoteRetainCopiedCryptor(), !updated))
        {
LABEL_112:
          if (blockBufferOut)
          {
            CMSetAttachment(cf, @"FMFD_BufferDecryptor", blockBufferOut, 1u);
            if (v89)
            {
              CMSetAttachment(cf, @"FMFD_BufferAudioDecryptor", v89, 1u);
            }
          }

          if (xpc_dictionary_get_BOOL(a2, "timedMetadata"))
          {
            CMSetAttachment(cf, @"FBPAKey_TimedData", @"FBPA_TimedData_ICY", 1u);
          }

          updated = FigMemoryOriginUpdateRecipientStateFromXPCMessage();
          if (updated)
          {
            goto LABEL_121;
          }

          v75 = cf;
          v76 = *(*(CMBaseObjectGetVTable() + 16) + 8);
          if (v76)
          {
            updated = v76(v56, int64, uint64, v75);
            if (!updated)
            {
              v77 = OUTLINED_FUNCTION_198_0();
              manifoldServer_copyPendingCallbacksIntoReply(v77, v78);
              updated = FigMemoryRecipientAppendRecipientStateUpdateToXPCMessage();
            }

            goto LABEL_121;
          }

LABEL_122:
          v19 = 4294954514;
          goto LABEL_123;
        }
      }

LABEL_121:
      v19 = updated;
      goto LABEL_123;
    }

    v43 = v80;
    v44 = v81;
    v45 = *(*(CMBaseObjectGetVTable() + 16) + 40);
    if (!v45)
    {
      goto LABEL_68;
    }

    v46 = v45(v44);
LABEL_65:
    v19 = v46;
    if (v46)
    {
      goto LABEL_6;
    }

    v41 = a3;
    v42 = v43;
    goto LABEL_67;
  }

  v28 = v81;
  cf = 0;
  blockBufferOut = 0;
  v29 = FigXPCMessageCopyCFString();
  if (v29)
  {
LABEL_145:
    v19 = v29;
    goto LABEL_138;
  }

  if (!cf)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_1_11();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v80, v81, v82);
    goto LABEL_145;
  }

  v30 = FigXPCMessageGetInt32();
  v31 = cf;
  v32 = FigGetAllocatorForMedia();
  v33 = *(*(CMBaseObjectGetVTable() + 16) + 48);
  if (!v33)
  {
    v19 = 4294954514;
    goto LABEL_138;
  }

  v29 = v33(v28, v30, v31, v32, &blockBufferOut);
  if (v29)
  {
    goto LABEL_145;
  }

  v19 = FigXPCMessageSetCFObject();
  if (!v19)
  {
    v34 = OUTLINED_FUNCTION_198_0();
    manifoldServer_copyPendingCallbacksIntoReply(v34, v35);
  }

LABEL_138:
  if (cf)
  {
    CFRelease(cf);
  }

  v7 = blockBufferOut;
  if (blockBufferOut)
  {
LABEL_5:
    CFRelease(v7);
  }

LABEL_6:
  if (v80)
  {
    CFRelease(v80);
  }

  if (v81)
  {
    CFRelease(v81);
  }

  return v19;
}

uint64_t manifoldServer_noReplyMessageHandler(uint64_t a1, void *a2)
{
  v13 = 0;
  cf = 0;
  v12 = 0;
  OpCode = manifoldServer_copyManifoldAndCompanion(a1, a2, &v12, &cf);
  if (OpCode || (OpCode = FigXPCMessageGetOpCode(), OpCode))
  {
    v5 = OpCode;
  }

  else if (v13 == 1684632432)
  {
    v14 = 0;
    v15 = 0;
    xpc_dictionary_get_uint64(a2, *MEMORY[0x1E69615A0]);
    v7 = manifoldServer_copyManifoldAndCompanion(a1, a2, &v15, &v14);
    if (!v7)
    {
      FigManifoldGetFigBaseObject();
      if (v8)
      {
        v9 = v8;
        v10 = *(*(CMBaseObjectGetVTable() + 8) + 24);
        if (v10)
        {
          v10(v9);
        }
      }

      OUTLINED_FUNCTION_198_0();
      v7 = FigXPCServerDisassociateObjectWithConnection();
    }

    v5 = v7;
    if (v14)
    {
      CFRelease(v14);
    }

    if (v15)
    {
      CFRelease(v15);
    }
  }

  else
  {
    v5 = 4294951138;
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (v12)
  {
    CFRelease(v12);
  }

  return v5;
}

uint64_t manifoldServer_copyManifoldAndCompanion(uint64_t a1, xpc_object_t xdict, CFTypeRef *a3, void *a4)
{
  v9 = 0;
  if (!xpc_dictionary_get_uint64(xdict, *MEMORY[0x1E69615A0]))
  {
    fig_log_get_emitter();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", 0, 0, v10);
    goto LABEL_11;
  }

  v6 = FigXPCServerLookupAndRetainAssociatedObject();
  if (v6)
  {
LABEL_11:
    v7 = v6;
    goto LABEL_7;
  }

  if (a3)
  {
    *a3 = 0;
    v9 = 0;
  }

  v7 = 0;
  if (a4)
  {
    *a4 = 0;
  }

LABEL_7:
  if (v9)
  {
    CFRelease(v9);
  }

  return v7;
}

uint64_t manifoldServer_newTrackCallback(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16 = manifoldServer_formatDescriptionOrDecryptorChangedCallback;
  v17 = manifoldServer_pushSampleBufferCallback;
  OUTLINED_FUNCTION_3_19();
  v18 = v7;
  v8 = *(*(CMBaseObjectGetVTable() + 16) + 32);
  if (v8)
  {
    v9 = v8(a1, a4, &v16, a2);
    if (v9 || (manifoldServer_ensurePendingCallbacksState(a2), v9))
    {
      v12 = v9;
    }

    else
    {
      empty = xpc_dictionary_create_empty();
      v11 = empty;
      if (empty)
      {
        xpc_dictionary_set_uint64(empty, "callbackType", 1uLL);
        FigXPCMessageSetInt32();
        FigXPCMessageSetInt32();
        xpc_array_append_value(*(a2 + 64), v11);
        v12 = 0;
      }

      else
      {
        fig_log_get_emitter();
        FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v15, v16, v17);
        v12 = v14;
      }
    }
  }

  else
  {
    v12 = 4294954514;
  }

  FigXPCRelease();
  return v12;
}

uint64_t manifoldServer_allNewTracksReadyCallback(uint64_t a1, uint64_t a2)
{
  manifoldServer_ensurePendingCallbacksState(a2);
  if (!v2)
  {
    empty = xpc_dictionary_create_empty();
    if (empty)
    {
      xpc_dictionary_set_uint64(empty, "callbackType", 0);
      OUTLINED_FUNCTION_5_15();
    }

    else
    {
      fig_log_get_emitter();
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v5, v6, v7);
    }
  }

  return FigXPCRelease();
}

uint64_t manifoldServer_errorCallback(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  manifoldServer_ensurePendingCallbacksState(a3);
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    empty = xpc_dictionary_create_empty();
    if (empty)
    {
      xpc_dictionary_set_uint64(empty, "callbackType", 2uLL);
      FigXPCMessageSetInt32();
      FigXPCMessageSetOSStatus();
      FigXPCMessageSetCFDictionary();
      OUTLINED_FUNCTION_5_15();
      v6 = 0;
    }

    else
    {
      fig_log_get_emitter();
      OUTLINED_FUNCTION_1_11();
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v9, v10, v11);
      v6 = v8;
    }
  }

  FigXPCRelease();
  return v6;
}

uint64_t manifoldServer_formatDescriptionOrDecryptorChangedCallback(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  manifoldServer_ensurePendingCallbacksState(a3);
  if (v7)
  {
    v11 = v7;
    goto LABEL_11;
  }

  empty = xpc_dictionary_create_empty();
  v9 = empty;
  if (!empty)
  {
    fig_log_get_emitter();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v13, 0, v14);
    goto LABEL_14;
  }

  xpc_dictionary_set_uint64(empty, "callbackType", 3uLL);
  FigXPCMessageSetInt32();
  if (a4)
  {
    ID = FigXPCMessageSetFormatDescription();
    if (ID)
    {
      goto LABEL_14;
    }
  }

  if (a5)
  {
    FigBasicAESCPECryptorGetClassID();
    if (CMBaseObjectIsMemberOfClass())
    {
      xpc_dictionary_set_BOOL(v9, "useDummyAESCryptor", 1);
LABEL_9:
      xpc_dictionary_set_uint64(v9, "cryptorObjectID", 0);
      goto LABEL_10;
    }

    ID = FigCPECryptorRemoteGetID();
    if (!ID)
    {
      goto LABEL_9;
    }

LABEL_14:
    v11 = ID;
    goto LABEL_11;
  }

LABEL_10:
  OUTLINED_FUNCTION_5_15();
  v11 = 0;
LABEL_11:
  FigXPCRelease();
  return v11;
}

uint64_t manifoldServer_pushSampleBufferCallback(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4, int64_t a5, const void *a6)
{
  manifoldServer_ensurePendingCallbacksState(a3);
  if (v10)
  {
    v13 = v10;
  }

  else
  {
    empty = xpc_dictionary_create_empty();
    v12 = empty;
    if (empty)
    {
      xpc_dictionary_set_uint64(empty, "callbackType", 4uLL);
      FigXPCMessageSetInt32();
      xpc_dictionary_set_uint64(v12, "pushSampleFlags", a4);
      xpc_dictionary_set_int64(v12, "dataStartReference", a5);
      v13 = FigXPCMessageAddCMSampleBuffer();
      if (!v13)
      {
        xpc_array_append_value(*(a3 + 64), v12);
        CFArrayAppendValue(*(a3 + 88), a6);
      }
    }

    else
    {
      fig_log_get_emitter();
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v16, v17, v18);
      v13 = v15;
    }
  }

  FigXPCRelease();
  return v13;
}

uint64_t manifoldServer_trackEndedCallback(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  manifoldServer_ensurePendingCallbacksState(a3);
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    empty = xpc_dictionary_create_empty();
    if (empty)
    {
      xpc_dictionary_set_uint64(empty, "callbackType", 5uLL);
      FigXPCMessageSetInt32();
      FigXPCMessageSetOSStatus();
      OUTLINED_FUNCTION_5_15();
      v6 = 0;
    }

    else
    {
      fig_log_get_emitter();
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v9, v10, v11);
      v6 = v8;
    }
  }

  FigXPCRelease();
  return v6;
}

double manifoldServer_ensurePendingCallbacksState(uint64_t a1)
{
  if (!*(a1 + 64))
  {
    empty = xpc_array_create_empty();
    *(a1 + 64) = empty;
    if (!empty)
    {
      fig_log_get_emitter();
      OUTLINED_FUNCTION_0_4();

      return FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
    }
  }

  return result;
}

void __FigManifoldStartServer_block_invoke_cold_1(uint64_t a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *(*(*a1 + 8) + 24) = v2;
}

BOOL FigAlternateRejectSwitchDueToStallRisk(uint64_t a1, uint64_t a2, uint64_t a3, CMTime *a4, CMTime *a5, double a6)
{
  v12 = *(a1 + 8);
  if (v12 || (v12 = *a1) != 0)
  {
    PeakBitRate = FigAlternateGetPeakBitRate(v12);
  }

  else
  {
    PeakBitRate = 0;
  }

  v13 = FigAlternateGetPeakBitRate(a3);
  IsIFrameOnly = FigAlternateIsIFrameOnly(a3);
  IsAudioOnly = FigAlternateIsAudioOnly(a3);
  v16 = 1.0;
  v17 = 0.0;
  if (!a2)
  {
    goto LABEL_42;
  }

  v18 = IsAudioOnly;
  v59 = *a1;
  v19 = *(a1 + 52);
  PlaylistType = FigMediaPlaylistGetPlaylistType(a2);
  FigMediaPlaylistGetMediaSegmentSpecifiers(a2);
  FirstValue = FigCFArrayGetFirstValue();
  if (FirstValue)
  {
    v21 = FigMediaSegmentSpecifierGetBitRate(FirstValue) != 0.0;
    if (IsIFrameOnly)
    {
      goto LABEL_42;
    }
  }

  else
  {
    v21 = 0;
    if (IsIFrameOnly)
    {
      goto LABEL_42;
    }
  }

  time = *a4;
  Seconds = CMTimeGetSeconds(&time);
  v23 = 0.0;
  if ((a5->flags & 0x1D) == 1)
  {
    time = *a5;
    v23 = CMTimeGetSeconds(&time);
  }

  DateStampCount = FigMediaPlaylistGetDateStampCount(a2);
  v25 = DateStampCount;
  if (v13 > PeakBitRate && !*(a1 + 53))
  {
    goto LABEL_42;
  }

  if (!v19)
  {
    v16 = 13.0;
    v17 = 14.0;
LABEL_41:
    if (v13 <= PeakBitRate)
    {
      v35 = v13 > a6 && v19 != 0;
      return v17 < v16 || v35;
    }

LABEL_42:
    v35 = 0;
    return v17 < v16 || v35;
  }

  v16 = fmpu_bitsRequiredToSwitch(a1, a2, v13, DateStampCount, Seconds, v23);
  if ((*(a1 + 80) != 0 || !v21) && v13 > a6)
  {
    v26 = PeakBitRate;
    if (v13 <= PeakBitRate)
    {
      v26 = a6;
    }

    v16 = *(a1 + 56) * fmpu_bitsRequiredToSwitch(a1, a2, v26, v25, Seconds, v23) + v16;
  }

  if (v18)
  {
    v17 = v23 * a6 * 0.5;
  }

  else
  {
    v17 = v23 * a6;
  }

  if (v17 < v16)
  {
    goto LABEL_42;
  }

  if (!v21)
  {
    goto LABEL_41;
  }

  v61 = 0;
  time.value = 0;
  v27 = FigAlternateCopyStreamBitrateCurve(a3, 0);
  v28 = 1.0;
  if (!v27)
  {
    AverageBitRate = FigAlternateGetAverageBitRate(v59);
    v30 = FigAlternateGetAverageBitRate(a3);
    if (!AverageBitRate || !v30)
    {
      AverageBitRate = FigAlternateGetPeakBitRate(v59);
      v30 = FigAlternateGetPeakBitRate(a3);
    }

    if (AverageBitRate && v30)
    {
      v28 = v30 / AverageBitRate;
    }
  }

  if (*(a1 + 8))
  {
    v31 = v13 <= PeakBitRate;
  }

  else
  {
    v31 = 1;
  }

  v32 = !v31;
  if (v31)
  {
    v34 = PlaylistType;
    v33 = *(a1 + 76) || FigMediaPlaylistGetPlaylistType(a2) != 2 || !FigMediaPlaylistHasIndependentSegments(a2) || *(a1 + 54) == 0;
  }

  else
  {
    v33 = 0;
    v34 = PlaylistType;
  }

  v38 = 0.0;
  if (v34 != 2)
  {
    v39 = v32;
    UpTimeNanoseconds = FigGetUpTimeNanoseconds();
    v41 = UpTimeNanoseconds - FigMediaPlaylistGetLastModifiedTime(a2);
    v32 = v39;
    v38 = v41;
  }

  if (*(a1 + 81))
  {
    v42 = 0;
  }

  else
  {
    v42 = v13 > PeakBitRate && *(a1 + 8) == 0;
  }

  v44 = *(a1 + 24);
  v45 = *(a1 + 32);
  v58 = v38;
  if (!*(a1 + 76))
  {
    v42 = (a6 >= 2 * v13) & v42;
  }

  v46 = *(a1 + 16);
  v47 = *(a1 + 82);
  v48 = *(a1 + 40) / 1000000000.0;
  v49 = FigAlternateIsIFrameOnly(v59);
  v50 = 1.0;
  if (!v49)
  {
    v50 = fabsf(*(a1 + 48));
  }

  v16 = 0.0;
  FigMediaPlaylistUtilityDetermineSegmentToSwitchTo(a2, v27, 0, v44, v45, 0, v42, v32, Seconds + v23, v23, PeakBitRate, a6 / v28, v58, v48, 0.0, v50, v33, 0, v46, v47, 0, &v61, &time);
  value = time.value;
  if (time.value)
  {
    v52 = v23 < 30.0 && v23 > 0.0;
    v53 = 0.0;
    v17 = 0.0;
    while (1)
    {
      v17 = v17 + FigMediaSegmentSpecifierGetTimeInSeconds(value) * a6;
      TimeInSeconds = FigMediaSegmentSpecifierGetTimeInSeconds(value);
      v16 = v16 + TimeInSeconds * FigMediaSegmentSpecifierGetBitRate(value) * v28;
      if (v17 < v16)
      {
        v35 = 0;
        goto LABEL_84;
      }

      if (v28 * FigMediaSegmentSpecifierGetBitRate(value) > a6 && v52)
      {
        break;
      }

      v55 = FigMediaSegmentSpecifierGetTimeInSeconds(value);
      NextSegment = FigMediaSegmentSpecifierGetNextSegment(value);
      v35 = 0;
      if (NextSegment)
      {
        value = NextSegment;
        v53 = v53 + v55;
        if (v53 < 30.0)
        {
          continue;
        }
      }

      goto LABEL_84;
    }

    v35 = 1;
  }

  else
  {
    v35 = 0;
    v17 = 0.0;
  }

LABEL_84:
  if (v27)
  {
    CFRelease(v27);
  }

  return v17 < v16 || v35;
}

const __CFData *FigMediaPlaylistUtilityGetBitrateCurveDataPointCount(const __CFData *result)
{
  if (result)
  {
    return (CFDataGetLength(result) >> 3);
  }

  return result;
}

CFDataRef FigMediaPlaylistUtilityGetBitrateCurveDataPoints(CFDataRef theData)
{
  if (theData)
  {
    return CFDataGetBytePtr(theData);
  }

  return theData;
}

void FigMediaPlaylistUtilityDetermineSegmentToSwitchTo_cold_1(const void *a1, _DWORD *a2)
{
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v5, v6, vars0);
  *a2 = v4;
  CFRelease(a1);
}

uint64_t FigPlayerAsyncCreateWithOptions(const __CFAllocator *a1, const void *a2, const __CFDictionary *a3, void *a4)
{
  cf = 0;
  v19 = 0;
  value = 0;
  if (!a4 || (*a4 = 0, !a2))
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_20_0();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
LABEL_19:
    v11 = v7;
    goto LABEL_15;
  }

  v7 = playerasync_createCommon(a1, a3, &v19);
  if (v7)
  {
    goto LABEL_19;
  }

  v8 = v19;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  *(DerivedStorage + 16) = CFRetain(a2);
  CMNotificationCenterGetDefaultLocalCenter();
  v7 = FigNotificationCenterAddWeakListener();
  if (v7)
  {
    goto LABEL_19;
  }

  *(DerivedStorage + 5) = 1;
  v7 = fpa_checkSubPlayerHealth();
  if (v7)
  {
    goto LABEL_19;
  }

  if (a3)
  {
    CFDictionaryGetValueIfPresent(a3, @"InterstitialPrimaryPlayerName", &value);
    v10 = value != 0;
  }

  else
  {
    v10 = 0;
  }

  *(DerivedStorage + 144) = v10;
  v11 = FigDispatchQueueHolderCreateWithDispatchQueue();
  v12 = cf;
  if (!v11)
  {
    FigPlayerGetFigBaseObject();
    v14 = v13;
    v15 = *(*(CMBaseObjectGetVTable() + 8) + 56);
    if (v15)
    {
      v15(v14, @"AsynchronousControlQueueHolder", v12);
    }

    *a4 = v8;
    v19 = 0;
    v12 = cf;
  }

  if (v12)
  {
    CFRelease(v12);
  }

LABEL_15:
  if (v19)
  {
    CFRelease(v19);
  }

  return v11;
}

uint64_t itemasync_SetProperties(const void *a1, const __CFDictionary *a2, CFTypeRef *a3)
{
  cf = 0;
  v18 = 0;
  v16 = 0;
  v15 = 0;
  if (*CMBaseObjectGetDerivedStorage() || !a2)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_3_5();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
    v12 = v14;
    v11 = 0;
    v6 = 0;
    goto LABEL_13;
  }

  v6 = FigCFWeakReferenceHolderCopyReferencedObject();
  if (!v6 || *CMBaseObjectGetDerivedStorage())
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_3_5();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
    goto LABEL_22;
  }

  v7 = FPSupport_HandlePlaybackItemSetPropertiesAndCopyModification(a1, a2, 0, itemasync_handleSetProperty, &v16, &cf, &v15);
  if (v7)
  {
LABEL_22:
    v12 = v7;
    v11 = 0;
    goto LABEL_13;
  }

  if (v16)
  {
LABEL_12:
    v11 = 0;
    v12 = 0;
    goto LABEL_13;
  }

  v8 = playerasync_createCommand(v6, 27, a1, &v18);
  if (!v8)
  {
    v9 = cf;
    if (cf)
    {
      v9 = CFRetain(cf);
    }

    v10 = v18;
    v18[4] = v9;
    v10[5] = 0;
    playerasync_runAsynchronousCommand(v6, v10);
    if (a3)
    {
      v11 = 0;
      v12 = 0;
      *a3 = v15;
      v15 = 0;
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  v12 = v8;
  v11 = v18;
LABEL_13:
  fpa_releaseCommand(v11);
  if (cf)
  {
    CFRelease(cf);
  }

  if (v15)
  {
    CFRelease(v15);
  }

  if (v6)
  {
    CFRelease(v6);
  }

  return v12;
}

uint64_t playerasync_BeginInterruption(const void *a1)
{
  v7 = 0;
  v1 = playerasync_createCommand(a1, 20, 0, &v7);
  v2 = v7;
  if (v1)
  {
    v5 = v1;
  }

  else
  {
    v3 = OUTLINED_FUNCTION_298();
    playerasync_runSynchronousCommand(v3, v4);
    v5 = *(v2 + 28);
  }

  fpa_releaseCommand(v2);
  return v5;
}

uint64_t playerasync_SetConnectionActive(const void *a1, char a2)
{
  v9 = 0;
  v3 = playerasync_createCommand(a1, 22, 0, &v9);
  v4 = v9;
  if (v3)
  {
    v7 = v3;
  }

  else
  {
    *(v9 + 32) = a2;
    v5 = OUTLINED_FUNCTION_298();
    playerasync_runSynchronousCommand(v5, v6);
    v7 = *(v4 + 28);
  }

  fpa_releaseCommand(v4);
  return v7;
}

void playerasync_createCommon_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void playerasync_createCommon_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void playerasync_createCommon_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void playerasync_createCommon_cold_4(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void playerasync_createCommon_cold_5(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void playerasync_createCommon_cold_6(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void playerasync_createCommon_cold_7(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void playerasync_createCommon_cold_8(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void playerasync_createCommon_cold_9(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void playerasync_createCommon_cold_10(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FigPlayerAsyncCreateWithEngineTopologyAndOptions_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, v3, vars0);
  v1 = OUTLINED_FUNCTION_4_21(v0);

  fpa_releaseCommand(v1);
}

void playerasync_createCommand_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void playerasync_runSynchronousCommand_cold_1(uint64_t a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *(a1 + 28) = v2;
}

void FigPlayerAsyncDispatchToPlayerQueue_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void playerasync_runImmediateCommand_cold_1(uint64_t a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *(a1 + 28) = v2;
}

void playerasync_runOneCommand_cold_1()
{
  OUTLINED_FUNCTION_180_1();
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_28();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, v3, v4);
  *v0 = v1;
}

void playerasync_runOneCommand_cold_2()
{
  OUTLINED_FUNCTION_180_1();
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_28();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, v3, v4);
  *v0 = v1;
}

void playerasync_postPlayerStatusChanged_cold_1()
{
  OUTLINED_FUNCTION_5_16();
  if (!FigCFDictionarySetInt32())
  {
    DefaultLocalCenter = CMNotificationCenterGetDefaultLocalCenter();
    OUTLINED_FUNCTION_6_14(DefaultLocalCenter, @"StatusChangedToError");
  }

  CFRelease(v0);
}

double playerasync_postPlayerStatusChanged_cold_2()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
}

void playerasync_runCopyPropertyCommand_cold_1()
{
  OUTLINED_FUNCTION_180_1();
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_28();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, v3, v4);
  *v0 = v1;
}

void playerasync_runCopyPlayQueueItemCommand_cold_1()
{
  OUTLINED_FUNCTION_180_1();
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_28();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, v3, v4);
  *v0 = v1;
}

void playerasync_createSubItem_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void playerasync_createSubItem_cold_2()
{
  OUTLINED_FUNCTION_180_1();
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_28();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, v3, v4);
  *v0 = v1;
}

void itemasync_postItemStatusChanged_cold_1()
{
  OUTLINED_FUNCTION_5_16();
  if (!FigCFDictionarySetInt32())
  {
    DefaultLocalCenter = CMNotificationCenterGetDefaultLocalCenter();
    OUTLINED_FUNCTION_6_14(DefaultLocalCenter, @"StatusChangedToError");
  }

  CFRelease(v0);
}

double itemasync_postItemStatusChanged_cold_2()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
}

void playerasync_handleSetProperty_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void playerasync_handleSetProperty_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void playerasync_handleSetProperty_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void playerasync_handleSetProperty_cold_4(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void playerasync_handleSetProperty_cold_5(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void itemasync_CopyProperty_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void itemasync_CopyProperty_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void itemasync_CopyProperty_cold_3()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, v3, vars0);
  v1 = OUTLINED_FUNCTION_4_21(v0);

  fpa_releaseCommand(v1);
}

void itemasync_handleSetProperty_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void itemasync_handleSetProperty_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void itemasync_handleSetProperty_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void itemasync_handleSetProperty_cold_4(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void itemasync_GetDimensions_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void itemasync_GetDimensions_cold_2()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, v3, vars0);
  v1 = OUTLINED_FUNCTION_4_21(v0);

  fpa_releaseCommand(v1);
}

void itemasync_GetDuration_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void itemasync_GetDuration_cold_2()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, v3, vars0);
  v1 = OUTLINED_FUNCTION_4_21(v0);

  fpa_releaseCommand(v1);
}

void itemasync_SetCurrentTime_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void itemasync_SetCurrentTime_cold_2()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, v3, vars0);
  v1 = OUTLINED_FUNCTION_4_21(v0);

  fpa_releaseCommand(v1);
}

void itemasync_GetCurrentTime_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void itemasync_GetCurrentTime_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void itemasync_CopyTrackProperty_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void itemasync_CopyTrackProperty_cold_2()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, v3, vars0);
  v1 = OUTLINED_FUNCTION_4_21(v0);

  fpa_releaseCommand(v1);
}

void itemasync_MakeReadyForInspection_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void itemasync_MakeReadyForInspection_cold_2()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, v3, vars0);
  v1 = OUTLINED_FUNCTION_4_21(v0);

  fpa_releaseCommand(v1);
}

void itemasync_CopyCommonMetadata_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void itemasync_CopyCommonMetadata_cold_2()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, v3, vars0);
  v1 = OUTLINED_FUNCTION_4_21(v0);

  fpa_releaseCommand(v1);
}

void itemasync_CopyChapterImageData_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void itemasync_CopyChapterImageData_cold_2()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, v3, vars0);
  v1 = OUTLINED_FUNCTION_4_21(v0);

  fpa_releaseCommand(v1);
}

void itemasync_GetNextThumbnailTime_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void itemasync_GetNextThumbnailTime_cold_2()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, v3, vars0);
  v1 = OUTLINED_FUNCTION_4_21(v0);

  fpa_releaseCommand(v1);
}

void itemasync_SetCurrentTimeWithRange_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void itemasync_SetCurrentTimeWithRange_cold_2()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, v3, vars0);
  v1 = OUTLINED_FUNCTION_4_21(v0);

  fpa_releaseCommand(v1);
}

void itemasync_SetTrackProperty_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void itemasync_SetTrackProperty_cold_2()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, v3, vars0);
  v1 = OUTLINED_FUNCTION_4_21(v0);

  fpa_releaseCommand(v1);
}

void itemasync_CopyFormatReader_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void itemasync_CopyFormatReader_cold_2()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, v3, vars0);
  v1 = OUTLINED_FUNCTION_4_21(v0);

  fpa_releaseCommand(v1);
}

void itemasync_SeekToDateWithID_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void itemasync_SeekToDateWithID_cold_2()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, v3, vars0);
  v1 = OUTLINED_FUNCTION_4_21(v0);

  fpa_releaseCommand(v1);
}

void itemasync_SetCurrentTimeWithRangeAndID_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void itemasync_SetCurrentTimeWithRangeAndID_cold_2()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, v3, vars0);
  v1 = OUTLINED_FUNCTION_4_21(v0);

  fpa_releaseCommand(v1);
}

void itemasync_CopyAsset_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void itemasync_CopyAsset_cold_2()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, v3, vars0);
  v1 = OUTLINED_FUNCTION_4_21(v0);

  fpa_releaseCommand(v1);
}

void itemasync_ExtractAndRetainNextSampleBuffer_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void itemasync_ExtractAndRetainNextSampleBuffer_cold_2()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, v3, vars0);
  v1 = OUTLINED_FUNCTION_4_21(v0);

  fpa_releaseCommand(v1);
}

void itemasync_SetCurrentTimeWithOptions_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void itemasync_SetCurrentTimeWithOptions_cold_2()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, v3, vars0);
  v1 = OUTLINED_FUNCTION_4_21(v0);

  fpa_releaseCommand(v1);
}

void itemasync_postSeekWasCanceled_cold_1()
{
  OUTLINED_FUNCTION_5_16();
  if (!FigCFDictionarySetInt32())
  {
    DefaultLocalCenter = CMNotificationCenterGetDefaultLocalCenter();
    OUTLINED_FUNCTION_6_14(DefaultLocalCenter, @"SeekWasCanceled");
  }

  CFRelease(v0);
}

double itemasync_postSeekWasCanceled_cold_2()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
}

void playerasync_AddToPlayQueue_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void playerasync_RemoveFromPlayQueue_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void playerasync_CopyPlayQueueItem_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void playerasync_SetRate_cold_1(void *a1, uint64_t *a2, _DWORD *a3, float a4)
{
  playerasync_cancelQueuedCommandsMatching(a1, 9u, 0, 0);
  Command = playerasync_createCommand(a1, 9, 0, a2);
  *a3 = Command;
  v9 = *a2;
  if (!Command)
  {
    *(v9 + 32) = a4;
    playerasync_runAsynchronousCommand(a1, v9);
    v9 = 0;
  }

  fpa_releaseCommand(v9);
}

void playerasync_CreatePlaybackItemFromAsset_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void playerasync_CreatePlaybackItemFromAsset_cold_2(uint64_t a1, _DWORD *a2)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v4, v5, v6);
  *a2 = v3;
}

void playerasync_SetProperties_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void playerasync_SetProperties_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void playerasync_AddExternalStartupTask_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void playerasync_AddExternalStartupTask_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void playerasync_RemoveExternalStartupTask_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void playerasync_RemoveExternalStartupTask_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void playerasync_SilentMute_cold_1(uint64_t a1, uint64_t a2, char a3, _DWORD *a4)
{
  OUTLINED_FUNCTION_180_1();
  Command = playerasync_createCommand(v8, 24, 0, v4);
  v10 = *v4;
  if (!Command)
  {
    *(v10 + 32) = a3;
    playerasync_runImmediateCommand(v5, v10, 0);
    Command = *(v10 + 28);
  }

  *a4 = Command;

  fpa_releaseCommand(v10);
}

void playerasync_runSynchronousCommandOnQueue_cold_1(uint64_t a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *(a1 + 28) = v2;
}

void playerasync_runAsynchronousCommandOnQueue_cold_1()
{
  OUTLINED_FUNCTION_5_16();
  if (!FigCFDictionarySetInt32())
  {
    DefaultLocalCenter = CMNotificationCenterGetDefaultLocalCenter();
    OUTLINED_FUNCTION_6_14(DefaultLocalCenter, @"PrerollWasCancelled");
  }

  CFRelease(v0);
}

double playerasync_runAsynchronousCommandOnQueue_cold_2()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
}

void FigAirPlayCryptorUtilHandleStreamingKeyResponse(const void *a1, const void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (DerivedStorage)
  {
    v5 = DerivedStorage;
    if (!*DerivedStorage)
    {
      if (a2)
      {
        CFRetain(a2);
      }

      if (a1)
      {
        CFRetain(a1);
      }

      v6 = *(v5 + 18);
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 0x40000000;
      block[2] = __FigAirPlayCryptorUtilHandleStreamingKeyResponse_block_invoke;
      block[3] = &__block_descriptor_tmp_14;
      block[4] = v5;
      block[5] = a2;
      block[6] = a1;
      dispatch_async(v6, block);
    }
  }
}

void __FigAirPlayCryptorUtilHandleStreamingKeyResponse_block_invoke(void *a1)
{
  if (!*a1[4])
  {
    FigSimpleMutexLock();
    v2 = a1[4];
    if (*(v2 + 112))
    {
      v3 = *(v2 + 104);
      v4 = a1[5];
      *(v2 + 104) = v4;
      if (v4)
      {
        CFRetain(v4);
      }

      if (v3)
      {
        CFRelease(v3);
      }

      dispatch_semaphore_signal(*(a1[4] + 112));
      v5 = a1[4];
      v6 = *(v5 + 112);
      if (v6)
      {
        dispatch_release(v6);
        v5 = a1[4];
      }

      *(v5 + 112) = 0;
    }

    FigSimpleMutexUnlock();
  }

  v7 = a1[5];
  if (v7)
  {
    CFRelease(v7);
  }

  v8 = a1[6];
  if (v8)
  {

    CFRelease(v8);
  }
}

uint64_t airplayCryptor_CopyProperty(uint64_t a1, const void *a2, uint64_t a3, void *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!a2)
  {
    v7 = 4294954516;
    goto LABEL_10;
  }

  FigSimpleMutexLock();
  if (*DerivedStorage)
  {
    goto LABEL_3;
  }

  if (CFEqual(a2, *MEMORY[0x1E6961138]))
  {
    v8 = MEMORY[0x1E695E4D0];
    if (*(DerivedStorage + 40) != 1)
    {
      v8 = MEMORY[0x1E695E4C0];
    }

    v9 = *v8;
    if (!*v8)
    {
      goto LABEL_9;
    }

LABEL_8:
    v9 = CFRetain(v9);
LABEL_9:
    v7 = 0;
    *a4 = v9;
    goto LABEL_10;
  }

  if (CFEqual(a2, *MEMORY[0x1E6960D00]))
  {
    v9 = *(DerivedStorage + 64);
    if (!v9)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  if (CFEqual(a2, *MEMORY[0x1E6960D10]))
  {
    v9 = *(DerivedStorage + 48);
    if (!v9)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

LABEL_3:
  v7 = 0;
LABEL_10:
  FigSimpleMutexUnlock();
  return v7;
}

uint64_t airplayCryptor_SetProperty(uint64_t a1, const void *a2, const __CFBoolean *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!a2)
  {
    return 4294954516;
  }

  v6 = DerivedStorage;
  FigSimpleMutexLock();
  if (*v6)
  {
    v7 = 4294954511;
    goto LABEL_26;
  }

  if (CFEqual(a2, *MEMORY[0x1E6961138]))
  {
    v7 = 0;
    *(v6 + 40) = CFBooleanGetValue(a3);
    goto LABEL_26;
  }

  if (!CFEqual(a2, *MEMORY[0x1E69610F0]))
  {
    if (CFEqual(a2, @"AirPlayReceiverCapabilities"))
    {
      v7 = *(v6 + 96);
      *(v6 + 96) = a3;
      if (!a3)
      {
        goto LABEL_16;
      }

      goto LABEL_15;
    }

    if (CFEqual(a2, *MEMORY[0x1E6962AC0]))
    {
      v7 = *(v6 + 88);
      *(v6 + 88) = a3;
      if (!a3)
      {
        goto LABEL_16;
      }
    }

    else
    {
      if (!CFEqual(a2, *MEMORY[0x1E6962B00]))
      {
        v7 = 4294954512;
        goto LABEL_26;
      }

      v7 = *(v6 + 80);
      *(v6 + 80) = a3;
      if (!a3)
      {
LABEL_16:
        if (v7)
        {
          CFRelease(v7);
          v7 = 0;
        }

        goto LABEL_26;
      }
    }

LABEL_15:
    CFRetain(a3);
    goto LABEL_16;
  }

  v8 = CMBaseObjectGetDerivedStorage();
  if (a3)
  {
    v9 = v8;
    v10 = *(v8 + 56);
    *(v8 + 56) = a3;
    CFRetain(a3);
    if (v10)
    {
      CFRelease(v10);
    }

    v11 = CFPropertyListCreateWithData(*MEMORY[0x1E695E480], *(v9 + 56), 0, 0, 0);
    v12 = v11;
    if (v11 && (v14 = CFGetTypeID(v11), v14 == CFDictionaryGetTypeID()))
    {
      Value = CFDictionaryGetValue(v12, *MEMORY[0x1E6962AF8]);
      if (Value && (v17 = Value, v18 = CFGetTypeID(Value), v18 == CFDataGetTypeID()))
      {
        v19 = *(v9 + 48);
        *(v9 + 48) = v17;
        CFRetain(v17);
        if (v19)
        {
          CFRelease(v19);
        }

        v7 = 0;
        *(v9 + 40) = 1;
      }

      else
      {
        FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v21, v22, v23);
        v7 = v16;
      }
    }

    else
    {
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v21, v22, v23);
      v7 = v13;
      if (!v12)
      {
        goto LABEL_26;
      }
    }

    CFRelease(v12);
  }

  else
  {
    v7 = 4294954516;
  }

LABEL_26:
  FigSimpleMutexUnlock();
  return v7;
}

uint64_t airplayCryptor_StartKeyExchangeForAirPlay(uint64_t a1, UInt8 **a2, CFDataRef *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v15 = 0;
  *bytes = 0u;
  *length = 0u;
  v6 = 4294955146;
  if (a3)
  {
    if (a2)
    {
      v7 = DerivedStorage;
      if (DerivedStorage)
      {
        FigSimpleMutexLock();
        v8 = *(v7 + 96);
        if (v8)
        {
          LODWORD(v15) = CFDataGetLength(v8);
          length[1] = CFDataGetBytePtr(*(v7 + 96));
        }

        hYNpsn7dXgySzQR(bytes);
        if (v9)
        {
          v6 = v9;
        }

        else
        {
          v10 = CFDataCreate(*MEMORY[0x1E695E480], bytes[1], LODWORD(length[0]));
          if (v10)
          {
            v6 = 0;
            v11 = bytes[0];
            *(v7 + 32) = bytes[0];
            *a2 = v11;
            *a3 = v10;
          }

          else
          {
            v6 = 4294955145;
          }
        }

        FigSimpleMutexUnlock();
      }
    }
  }

  return v6;
}

uint64_t airplayCryptor_CreateKeyResponseForAirPlay(uint64_t a1, uint64_t a2, const __CFData *a3, CFDataRef *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v8 = 0;
  *length = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v9 = 4294955146;
  v27 = 0;
  if (!a3)
  {
    goto LABEL_23;
  }

  if (!a2)
  {
    goto LABEL_23;
  }

  if (!a4)
  {
    goto LABEL_23;
  }

  v10 = DerivedStorage;
  if (!DerivedStorage)
  {
    goto LABEL_23;
  }

  if (!DerivedStorage[9] || !DerivedStorage[10] || !DerivedStorage[11])
  {
    OUTLINED_FUNCTION_243();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
    v9 = v25;
    v8 = 0;
    goto LABEL_23;
  }

  FigSimpleMutexLock();
  *(&v29 + 1) = v10[4];
  *&v30 = CFDataGetBytePtr(a3);
  if (!v30 || (DWORD2(v30) = CFDataGetLength(a3)) == 0)
  {
    v8 = 0;
    v9 = 4294955136;
    goto LABEL_22;
  }

  *&v31 = CFDataGetBytePtr(v10[6]);
  DWORD2(v31) = CFDataGetLength(v10[6]);
  *(&v28 + 1) = CFDataGetBytePtr(v10[9]);
  LODWORD(v29) = CFDataGetLength(v10[9]);
  v11 = v10[10];
  if (!v11 || (Count = CFArrayGetCount(v11), (v13 = Count) == 0))
  {
    OUTLINED_FUNCTION_243();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v26, v27, v28);
    v9 = v23;
    v8 = 0;
    goto LABEL_22;
  }

  v8 = malloc_type_calloc(Count, 4uLL, 0x100004052888210uLL);
  v14 = 0;
  v15 = v8;
  do
  {
    ValueAtIndex = CFArrayGetValueAtIndex(v10[10], v14);
    if (!ValueAtIndex || (v17 = ValueAtIndex, v18 = CFGetTypeID(ValueAtIndex), v18 != CFNumberGetTypeID()) || !CFNumberGetValue(v17, kCFNumberSInt32Type, v15))
    {
      OUTLINED_FUNCTION_243();
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
LABEL_25:
      v9 = v21;
      goto LABEL_22;
    }

    ++v14;
    v15 += 4;
  }

  while (v13 != v14);
  BytePtr = CFDataGetBytePtr(v10[11]);
  v20 = CFDataGetLength(v10[11]);
  v21 = V2qUlL4PZ5VKVXDsUHg5z(BytePtr, v20, v8, v13, &v27);
  if (v21)
  {
    goto LABEL_25;
  }

  *&v28 = v27;
  tgrNklBQEZq9N92(&v28);
  if (v21)
  {
    goto LABEL_25;
  }

  v22 = CFDataCreate(*MEMORY[0x1E695E480], length[0], LODWORD(length[1]));
  if (v22)
  {
    v9 = 0;
    *a4 = v22;
  }

  else
  {
    v9 = 4294955145;
  }

LABEL_22:
  FigSimpleMutexUnlock();
LABEL_23:
  free(v8);
  return v9;
}

void airplayCryptor_CreateKeyRequest_cold_3(const void *a1, _DWORD *a2)
{
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v5, v6, vars0);
  *a2 = v4;

  CFRelease(a1);
}

uint64_t audioRendererCentral_setFigAudioSession(uint64_t a1, const void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v26 = 0;
  cf = 0;
  v5 = *MEMORY[0x1E695E480];
  SInt32 = FigCFNumberCreateSInt32();
  if (!a2)
  {
    goto LABEL_22;
  }

  v7 = *(CMBaseObjectGetVTable() + 16);
  if (!v7)
  {
    goto LABEL_22;
  }

  v8 = *(v7 + 56);
  if (!v8)
  {
LABEL_28:
    v22 = 4294948071;
    goto LABEL_23;
  }

  v9 = v8(a2, *MEMORY[0x1E69AFDC8], SInt32);
  if (v9)
  {
LABEL_33:
    v22 = v9;
    goto LABEL_23;
  }

  audioRendererCentral_removeAudioSessionListeners(a1);
  if (!audioRendererCentral_maybeSetAudioSessionStateToNotPlaying(a1))
  {
    v10 = CMBaseObjectGetDerivedStorage();
    if (*(v10 + 81) == 1)
    {
      if (*(v10 + 64))
      {
        *(v10 + 81) = 0;
      }
    }
  }

  v11 = *(DerivedStorage + 64);
  *(DerivedStorage + 64) = a2;
  CFRetain(a2);
  if (v11)
  {
    CFRelease(v11);
  }

  v12 = *(CMBaseObjectGetVTable() + 16);
  if (!v12)
  {
LABEL_22:
    v22 = 4294948075;
    goto LABEL_23;
  }

  v13 = *(v12 + 16);
  if (!v13)
  {
    goto LABEL_28;
  }

  v9 = v13(a2, @"FAS_AudioSessionID", v5, &v26);
  if (v9)
  {
    goto LABEL_33;
  }

  *(DerivedStorage + 48) = FigCFNumberGetSInt32();
  v14 = *DerivedStorage;
  v15 = *(*(CMBaseObjectGetVTable() + 8) + 56);
  if (v15)
  {
    v15(v14, @"FigAudioSession", a2);
  }

  audioRendererCentral_updateBufferedAirPlayAudioInUseFromSubRenderer(a1);
  audioRendererCentral_updateRoutingContextFromAudioSession(a1);
  if (*(CMBaseObjectGetDerivedStorage() + 64))
  {
    CMNotificationCenterGetDefaultLocalCenter();
    OUTLINED_FUNCTION_8_10();
    FigNotificationCenterAddWeakListener();
    CMNotificationCenterGetDefaultLocalCenter();
    FigNotificationCenterAddWeakListener();
    CMNotificationCenterGetDefaultLocalCenter();
    OUTLINED_FUNCTION_7_9();
    FigNotificationCenterAddWeakListener();
    DefaultLocalCenter = CMNotificationCenterGetDefaultLocalCenter();
    OUTLINED_FUNCTION_13_6(DefaultLocalCenter);
    CMNotificationCenterGetDefaultLocalCenter();
    OUTLINED_FUNCTION_6_15();
    FigNotificationCenterAddWeakListener();
    v17 = CMNotificationCenterGetDefaultLocalCenter();
    OUTLINED_FUNCTION_13_6(v17);
  }

  v18 = *(DerivedStorage + 64);
  if (v18 && (v19 = *(CMBaseObjectGetVTable() + 16)) != 0 && (v20 = *(v19 + 8)) != 0)
  {
    v20(v18, @"FAS_IsActive", v5, &cf);
    v21 = cf;
  }

  else
  {
    v21 = 0;
  }

  v24 = *DerivedStorage;
  v25 = *(*(CMBaseObjectGetVTable() + 8) + 56);
  if (v25)
  {
    v25(v24, @"IsActiveAudioSessionApp", v21);
  }

  v22 = 0;
LABEL_23:
  if (cf)
  {
    CFRelease(cf);
  }

  if (SInt32)
  {
    CFRelease(SInt32);
  }

  return v22;
}

void audioRendererCentral_Finalize(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*DerivedStorage)
  {
    CMNotificationCenterGetDefaultLocalCenter();
    FigNotificationCenterRemoveWeakListener();
    CMNotificationCenterGetDefaultLocalCenter();
    FigNotificationCenterRemoveWeakListener();
    if (*DerivedStorage)
    {
      CFRelease(*DerivedStorage);
      *DerivedStorage = 0;
    }
  }

  audioRendererCentral_removeAudioSessionListeners(a1);
  if (!audioRendererCentral_maybeSetAudioSessionStateToNotPlaying(a1))
  {
    v3 = CMBaseObjectGetDerivedStorage();
    if (*(v3 + 81) == 1)
    {
      if (*(v3 + 64))
      {
        *(v3 + 81) = 0;
      }
    }
  }

  v4 = *(DerivedStorage + 64);
  if (v4)
  {
    CFRelease(v4);
    *(DerivedStorage + 64) = 0;
  }

  v5 = *(DerivedStorage + 56);
  if (v5)
  {
    dispatch_release(v5);
    *(DerivedStorage + 56) = 0;
  }

  v6 = *(DerivedStorage + 88);
  if (v6)
  {

    *(DerivedStorage + 88) = 0;
  }

  v7 = *(DerivedStorage + 8);
  if (v7)
  {
    dispatch_release(v7);
    *(DerivedStorage + 8) = 0;
  }
}

uint64_t audioRendererCentral_removeAudioSessionListeners(uint64_t a1)
{
  result = CMBaseObjectGetDerivedStorage();
  if (*(result + 64))
  {
    CMNotificationCenterGetDefaultLocalCenter();
    OUTLINED_FUNCTION_8_10();
    FigNotificationCenterRemoveWeakListener();
    CMNotificationCenterGetDefaultLocalCenter();
    FigNotificationCenterRemoveWeakListener();
    CMNotificationCenterGetDefaultLocalCenter();
    OUTLINED_FUNCTION_7_9();
    FigNotificationCenterRemoveWeakListener();
    CMNotificationCenterGetDefaultLocalCenter();
    FigNotificationCenterRemoveWeakListener();
    CMNotificationCenterGetDefaultLocalCenter();
    OUTLINED_FUNCTION_6_15();
    FigNotificationCenterRemoveWeakListener();
    CMNotificationCenterGetDefaultLocalCenter();

    return FigNotificationCenterRemoveWeakListener();
  }

  return result;
}

void audioRendererCentral_interruptionNotificationListener(uint64_t a1, const void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a5)
  {
    if (*(DerivedStorage + 64) == a4)
    {
      Int32IfPresent = FigCFDictionaryGetInt32IfPresent();
      if (Int32IfPresent)
      {
        if (dword_1EAF16C90)
        {
          v18 = OUTLINED_FUNCTION_2_27(Int32IfPresent, v11, v12, v13, v14, v15, v16, v17, v32, v35, SWORD2(v35), SBYTE6(v35), SHIBYTE(v35), v41);
          OUTLINED_FUNCTION_9_8(v18, v19, v20, v21, v22, v23, v24, v25, v33, v36, v38, v39, v40, v42);
          OUTLINED_FUNCTION_40();
          if (v5)
          {
            if (a2)
            {
              CMBaseObjectGetDerivedStorage();
            }

            LODWORD(v44) = 136315906;
            OUTLINED_FUNCTION_0_31();
            OUTLINED_FUNCTION_4_22(v26, v27, v28, v29, &dword_1962D5000, v30, v31, "<< FigSBARCentral >> %s: [%p] %{public}s Audio session %p posted StopNow", v34, v37, v43, 0, v44, v45, v46, v47, v48, v49, v50);
          }

          OUTLINED_FUNCTION_1_29();
          fig_log_call_emit_and_clean_up_after_send_and_compose();
        }

        audioRendererCentral_postNotification(a2, @"Interrupted");
      }
    }
  }
}

void audioRendererCentral_commonFigAudioSessionPropertyDidChangeNotificationListener(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(CMBaseObjectGetDerivedStorage() + 64) == a4)
  {

    audioRendererCentral_updateRoutingContextFromAudioSession(a2);
  }
}

uint64_t *audioRendererCentral_isActiveDidChangeNotificationListener(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const __CFDictionary *a5)
{
  result = CMBaseObjectGetDerivedStorage();
  if (a5)
  {
    v8 = result;
    if (result[8] == a4)
    {
      result = CFDictionaryGetValue(a5, *MEMORY[0x1E69AFA78]);
      if (result)
      {
        v9 = result;
        v10 = CFGetTypeID(result);
        result = CFBooleanGetTypeID();
        if (v10 == result)
        {
          v11 = *v8;
          VTable = CMBaseObjectGetVTable();
          v13 = *(VTable + 8);
          result = (VTable + 8);
          v14 = *(v13 + 56);
          if (v14)
          {

            return v14(v11, @"IsActiveAudioSessionApp", v9);
          }
        }
      }
    }
  }

  return result;
}

double audioRendererCentral_applicationStateDidChangeNotificationListener(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v23 = *MEMORY[0x1E69E9840];
  HIDWORD(v19) = 0;
  if (*(CMBaseObjectGetDerivedStorage() + 64) == a4)
  {
    FigCFDictionaryGetInt32IfPresent();
    if (dword_1EAF16C90)
    {
      LODWORD(v19) = 0;
      HIBYTE(v18) = 0;
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      OUTLINED_FUNCTION_40();
      if (v5)
      {
        if (a2)
        {
          DerivedStorage = CMBaseObjectGetDerivedStorage();
          v16 = (DerivedStorage + 96);
        }

        else
        {
          v16 = "";
        }

        *v20 = 136316162;
        *&v20[4] = "audioRendererCentral_applicationStateDidChangeNotificationListener";
        *&v20[12] = 2048;
        *&v20[14] = a2;
        *&v20[22] = 2082;
        LOWORD(v21) = 2112;
        *(&v21 + 2) = a4;
        WORD5(v21) = 1024;
        HIDWORD(v21) = 0;
        LODWORD(v17) = 48;
        OUTLINED_FUNCTION_4_22(DerivedStorage, v11, v12, v13, &dword_1962D5000, v14, v15, "<< FigSBARCentral >> %s: [%p] %{public}s %@ notified application state change to %u", v20, v17, v18, v19, *v20, *&v20[8], *&v20[16], v16, v21, *(&v21 + 1), v22);
      }

      OUTLINED_FUNCTION_1_29();
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }
  }

  return result;
}

void audioRendererCentral_updateRoutingContextFromAudioSession(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v27 = 0;
  v28 = 0;
  CFPreferenceNumberWithDefault = FigGetCFPreferenceNumberWithDefault();
  v3 = MEMORY[0x1E69B0370];
  if (!CFPreferenceNumberWithDefault)
  {
    if (!DerivedStorage[8])
    {
      goto LABEL_37;
    }

    valuePtr = 8;
    v4 = *(CMBaseObjectGetDerivedStorage() + 64);
    v5 = *MEMORY[0x1E695E480];
    Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
    v7 = Mutable;
    cf = 0;
    v29 = 0;
    if (v4 && Mutable)
    {
      CFArrayAppendValue(Mutable, *MEMORY[0x1E69AFCC0]);
      CFArrayAppendValue(v7, *MEMORY[0x1E69B0020]);
      CFArrayAppendValue(v7, *MEMORY[0x1E69AFF80]);
      CFArrayAppendValue(v7, *MEMORY[0x1E69B02C0]);
      CFArrayAppendValue(v7, *v3);
      v8 = *(CMBaseObjectGetVTable() + 16);
      if (v8)
      {
        v9 = *(v8 + 112);
        if (v9)
        {
          v9(v4, v7, &cf, 0);
        }
      }

      FigCFDictionaryGetValue();
      Value = FigCFDictionaryGetValue();
      if (Value)
      {
        CFNumberGetValue(Value, kCFNumberSInt32Type, &valuePtr);
      }

      FigCFDictionaryGetValue();
      v11 = FigCFDictionaryGetValue();
      FigCFDictionaryGetBooleanIfPresent();
      v12 = 0;
      if ((valuePtr == 32 || valuePtr == 16) && v11 == 0)
      {
LABEL_29:
        CFRelease(v7);
        if (cf)
        {
          CFRelease(cf);
        }

        if (!v12)
        {
          goto LABEL_37;
        }

        goto LABEL_32;
      }

      if (FigCFEqual() || FigCFEqual() && !v11 || FigCFEqual() || FigCFEqual() || FigCFEqual() || FigCFEqual())
      {
        v12 = 0;
        goto LABEL_29;
      }
    }

    else if (!Mutable)
    {
LABEL_32:
      v15 = DerivedStorage[8];
      if (v15)
      {
        v16 = *(CMBaseObjectGetVTable() + 16);
        if (v16)
        {
          v17 = *(v16 + 8);
          if (v17)
          {
            v17(v15, @"FAS_RoutingContext", v5, &v28);
          }
        }
      }

      goto LABEL_37;
    }

    v12 = 1;
    goto LABEL_29;
  }

  if (FigServer_IsAirplayd() || FigServer_IsMediaplaybackd())
  {
    if (FigRoutingContextRemoteCopySystemMusicContext())
    {
      goto LABEL_43;
    }
  }

  else if (FigRoutingContextCopySystemMusicContext())
  {
    goto LABEL_43;
  }

LABEL_37:
  v18 = DerivedStorage[8];
  if (!v18 || (v19 = *(CMBaseObjectGetVTable() + 16)) == 0 || (v20 = *(v19 + 48)) == 0 || v20(v18, *v3, 0, &v27) || (v24 = *DerivedStorage, v25 = v27, (v26 = *(*(CMBaseObjectGetVTable() + 8) + 56)) != 0) && !v26(v24, @"RemoteDeviceID", v25))
  {
    v21 = *DerivedStorage;
    v22 = v28;
    v23 = *(*(CMBaseObjectGetVTable() + 8) + 56);
    if (v23)
    {
      v23(v21, @"RoutingContext", v22);
    }
  }

LABEL_43:
  if (v27)
  {
    CFRelease(v27);
  }

  if (v28)
  {
    CFRelease(v28);
  }
}

uint64_t audioRendererCentral_maybeSetAudioSessionStateToNotPlaying(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 80) != 1)
  {
    return 0;
  }

  v2 = DerivedStorage;
  v3 = *(DerivedStorage + 64);
  if (!v3)
  {
    return 0;
  }

  v4 = *(CMBaseObjectGetVTable() + 16);
  if (!v4)
  {
    return 4294948075;
  }

  v5 = *(v4 + 56);
  if (!v5)
  {
    return 4294948071;
  }

  result = v5(v3, *MEMORY[0x1E69B00C0], *MEMORY[0x1E695E4C0]);
  if (!result)
  {
    *(v2 + 80) = 0;
  }

  return result;
}

uint64_t audioRendererCentral_EnqueueSampleBuffer(uint64_t a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v5 = *DerivedStorage;
  v6 = *(*(CMBaseObjectGetVTable() + 16) + 16);
  if (!v6)
  {
    return 4294954514;
  }

  result = v6(v5, a2);
  if (!result)
  {
    v8 = DerivedStorage[7];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __audioRendererCentral_EnqueueSampleBuffer_block_invoke;
    block[3] = &__block_descriptor_40_e5_v8__0l;
    block[4] = a1;
    dispatch_sync(v8, block);
    return 0;
  }

  return result;
}

uint64_t audioRendererCentral_AttachToSynchronizer(uint64_t a1, uint64_t a2, uint64_t a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!a2)
  {
    goto LABEL_8;
  }

  timebase = 0;
  v7 = *(*(CMBaseObjectGetVTable() + 16) + 32);
  if (!v7)
  {
    return 4294954514;
  }

  v8 = v7(a2, &timebase);
  v9 = timebase;
  if (!v8)
  {
    Rate = CMTimebaseGetRate(timebase);
    v8 = audioRendererCentral_ProcessRateChange(a1, 1, Rate);
    v9 = timebase;
  }

  if (v9)
  {
    CFRelease(v9);
  }

  if (!v8)
  {
LABEL_8:
    v11 = *DerivedStorage;
    v12 = *(*(CMBaseObjectGetVTable() + 16) + 32);
    if (v12)
    {
      v13 = v12(v11, a2, a3);
      v8 = v13;
      if (!a2 && !v13)
      {
        return audioRendererCentral_ProcessRateChange(a1, 0, 0.0);
      }

      return v8;
    }

    return 4294954514;
  }

  return v8;
}

uint64_t FigSampleBufferConsumerSbufInspectorCreate(uint64_t a1, const void *a2, uint64_t a3, uint64_t a4, const char *a5, void *a6)
{
  FigNote_AllowInternalDefaultLogs();
  OUTLINED_FUNCTION_0_32();
  fig_note_initialize_category_with_default_work_cf();
  OUTLINED_FUNCTION_0_32();
  fig_note_initialize_category_with_default_work_cf();
  v10 = 4294954535;
  if (a3)
  {
    if (a2)
    {
      if (a6)
      {
        FigSampleBufferConsumerGetClassID();
        v10 = CMDerivedObjectCreate();
        if (!v10)
        {
          DerivedStorage = CMBaseObjectGetDerivedStorage();
          v12 = CFRetain(a2);
          v13 = MEMORY[0x1E695E480];
          *DerivedStorage = v12;
          v14 = *v13;
          if (a5)
          {
            v15 = a5;
          }

          else
          {
            v15 = "-";
          }

          v16 = CFStringCreateWithCString(v14, v15, 0x8000100u);
          DerivedStorage[4] = v16;
          if (v16)
          {
            Mutable = CFArrayCreateMutable(v14, 0, MEMORY[0x1E695E9C0]);
            DerivedStorage[3] = Mutable;
            if (Mutable)
            {
              v10 = 0;
              DerivedStorage[1] = a3;
              DerivedStorage[2] = a4;
              *a6 = 0;
            }

            else
            {
              return 4294954536;
            }
          }

          else
          {
            return 4294954536;
          }
        }
      }
    }
  }

  return v10;
}

uint64_t sbcins_SendSampleBuffer(uint64_t a1, const void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigEndpointStreamAudioEngineSbufTracerDebugPrint(a2);
  v4 = CMBaseObjectGetDerivedStorage();
  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  if (Mutable)
  {
    v6 = Mutable;
    if (CFArrayGetCount(*(v4 + 24)) >= 1)
    {
      FigCFArrayApplyBlock();
      FigCFArrayRemoveAllValues();
      FigCFArrayAppendArray();
    }

    CFRelease(v6);
  }

  v7 = (*(DerivedStorage + 8))(a2, *(DerivedStorage + 16));
  if (v7 == 3)
  {
    return 0;
  }

  if (v7 == 2)
  {
    CFArrayAppendValue(*(DerivedStorage + 24), a2);
    return 0;
  }

  if (v7 == 1 && (v8 = *DerivedStorage, (v9 = *(*(CMBaseObjectGetVTable() + 16) + 8)) != 0))
  {
    return v9(v8, a2);
  }

  else
  {
    return 4294954514;
  }
}

double FigContentKeyBossCreateRemoteWithObjectID(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    OUTLINED_FUNCTION_471();
    if (!ckbremote_ensureClientEstablished())
    {
      AllocatorForMedia = FigGetAllocatorForMedia();
      FigContentKeyBossGetClassID(AllocatorForMedia, v8);
      v9 = CMDerivedObjectCreate();
      v17 = OUTLINED_FUNCTION_10_11(v9, v10, v11, v12, v13, v14, v15, v16, v20, 0);
      if (AllocatorForMedia)
      {
        if (v17)
        {
LABEL_15:
          CFRelease(v17);
        }
      }

      else
      {
        DerivedStorage = CMBaseObjectGetDerivedStorage();
        DerivedStorage[2] = FigSimpleMutexCreate();
        *DerivedStorage = v4;
        if (!FigXPCRemoteClientAssociateObject())
        {
          *v3 = v21;
          return result;
        }

        if (v21)
        {
          v17 = v21;
          goto LABEL_15;
        }
      }
    }
  }

  else
  {
    emitter = fig_log_get_emitter();

    return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 4294948146, "ckb_r", 1196, v5);
  }

  return result;
}

uint64_t FigContentKeyBossCreateRemote(uint64_t a1, uint64_t a2)
{
  xdict = 0;
  if (a2)
  {
    v4 = ckbremote_ensureClientEstablished();
    if (!v4)
    {
      v4 = FigXPCCreateBasicMessage();
      if (!v4)
      {
        v2 = 0;
        v12 = dyld_program_sdk_at_least();
        xpc_dictionary_set_BOOL(0, ".isClientSDKVersion2025AndLater", v12);
        v4 = OUTLINED_FUNCTION_9_9(gFigContentKeyBossRemoteClient);
        if (!v4)
        {
          uint64 = xpc_dictionary_get_uint64(0, *MEMORY[0x1E69615A0]);
          if (uint64)
          {
            FigContentKeyBossCreateRemoteWithObjectID(uint64, uint64, a2);
          }

          else
          {
            fig_log_get_emitter();
            OUTLINED_FUNCTION_0_4();
            FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
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

  OUTLINED_FUNCTION_10_11(v4, v5, v6, v7, v8, v9, v10, v11, xdict, 0);
  FigXPCRelease();
  FigXPCRelease();
  return v2;
}

uint64_t ckbremote_handleServerMessage(const void *a1, void *a2)
{
  OpCode = FigXPCMessageGetOpCode();
  if (OpCode)
  {
    return OpCode;
  }

  else
  {
    return 4294951138;
  }
}

uint64_t ckbremote_finalize(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigXPCRemoteClientDisassociateObject();
  if (!*(DerivedStorage + 8) && !FigXPCCreateBasicMessage())
  {
    FigXPCRemoteClientSendAsyncMessage();
  }

  FigSimpleMutexDestroy();
  FigXPCRelease();
  v2 = *(DerivedStorage + 88);
  if (v2)
  {
    dispatch_release(v2);
  }

  v3 = *(DerivedStorage + 80);
  if (v3)
  {
    CFRelease(v3);
  }

  v4 = *(DerivedStorage + 144);
  if (v4)
  {
    dispatch_release(v4);
  }

  v5 = *(DerivedStorage + 136);
  if (v5)
  {
    CFRelease(v5);
  }

  return FigXPCRemoteClientKillServerOnTimeout();
}

uint64_t ckbremote_processRequestEntry(uint64_t a1, uint64_t a2, int64_t a3, int a4, uint64_t a5, uint64_t a6, void *a7, uint64_t a8, uint64_t a9, int64_t *a10)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  OUTLINED_FUNCTION_3_20();
  v15 = FigXPCCreateBasicMessage();
  if (v15 || (FigContentKeyBossClientServerXPC_SerializeKeyRequestParams(xdict, a2), v15))
  {
    v16 = v15;
  }

  else
  {
    xpc_dictionary_set_int64(xdict, ".groupID", a3);
    xpc_dictionary_set_BOOL(xdict, ".reuseExistingKeyFromAnyGroup", a4 != 0);
    FigSimpleMutexLock();
    if (*(DerivedStorage + 96))
    {
      fig_log_get_emitter();
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v18, xdict, v20);
    }

    else
    {
      if (a7)
      {
        *(DerivedStorage + 96) = 1;
        __copy_assignment_8_8_t0w8_pa0_16609_8_pa0_37959_16_pa0_51628_24((DerivedStorage + 104), a7);
      }

      if (!*(DerivedStorage + 136))
      {
        *(DerivedStorage + 136) = FigCFWeakReferenceHolderCreateWithReferencedObject();
      }

      if (!*(DerivedStorage + 144))
      {
        *(DerivedStorage + 144) = FigXPCRetain();
      }
    }

    FigSimpleMutexUnlock();
    if (a7)
    {
      if (a7[1])
      {
        xpc_dictionary_set_BOOL(xdict, ".installDidSucceed", 1);
      }

      if (a7[2])
      {
        xpc_dictionary_set_BOOL(xdict, ".installDidFail", 1);
      }

      if (a7[3])
      {
        xpc_dictionary_set_BOOL(xdict, ".installDidUpdateContentKeyBossToNewBoss", 1);
      }
    }

    v16 = OUTLINED_FUNCTION_9_9(gFigContentKeyBossRemoteClient);
    if (!v16)
    {
      *a10 = xpc_dictionary_get_int64(v18, ".requestID");
    }
  }

  FigXPCRelease();
  FigXPCRelease();
  return v16;
}

uint64_t ckb_createRequestDataEntry(uint64_t a1, int64_t a2, uint64_t a3)
{
  CMBaseObjectGetDerivedStorage();
  OUTLINED_FUNCTION_3_20();
  v5 = FigXPCCreateBasicMessage();
  if (v5 || (xpc_dictionary_set_int64(xdict, ".requestID", a2), FigContentKeyBossClientServerXPC_SerializeKeyRequestDataParams(xdict, a3), v5))
  {
    v6 = v5;
  }

  else
  {
    v6 = OUTLINED_FUNCTION_9_9(gFigContentKeyBossRemoteClient);
    if (!v6)
    {
      FigXPCMessageCopyCFData();
    }
  }

  FigXPCRelease();
  FigXPCRelease();
  return v6;
}

uint64_t ckb_createPersistableKeyDataEntry(uint64_t a1, int64_t a2)
{
  CMBaseObjectGetDerivedStorage();
  OUTLINED_FUNCTION_3_20();
  v3 = FigXPCCreateBasicMessage();
  if (v3 || (xpc_dictionary_set_int64(xdict, ".requestID", a2), v3 = FigXPCMessageSetCFData(), v3))
  {
    v4 = v3;
  }

  else
  {
    v4 = OUTLINED_FUNCTION_9_9(gFigContentKeyBossRemoteClient);
    if (!v4)
    {
      FigXPCMessageCopyCFData();
    }
  }

  FigXPCRelease();
  FigXPCRelease();
  return v4;
}

uint64_t ckb_processResponseEntry()
{
  OUTLINED_FUNCTION_471();
  CMBaseObjectGetDerivedStorage();
  OUTLINED_FUNCTION_4_23();
  v3 = FigXPCCreateBasicMessage();
  if (!v3)
  {
    xpc_dictionary_set_int64(xdict, ".requestID", v1);
    FigContentKeyBossClientServerXPC_SerializeKeyResponseSpecifier(xdict, v0);
    if (!v3)
    {
      v3 = FigXPCRemoteClientSendAsyncMessage();
    }
  }

  OUTLINED_FUNCTION_10_11(v3, v4, v5, v6, v7, v8, v9, v10, v12, xdict);
  FigXPCRelease();
  return v2;
}

uint64_t ckb_processResponseErrorEntry()
{
  OUTLINED_FUNCTION_471();
  CMBaseObjectGetDerivedStorage();
  OUTLINED_FUNCTION_4_23();
  v2 = FigXPCCreateBasicMessage();
  if (!v2)
  {
    xpc_dictionary_set_int64(xdict, ".requestID", v0);
    v2 = FigXPCMessageSetCFError();
    if (!v2)
    {
      v2 = FigXPCRemoteClientSendSyncMessage();
    }
  }

  OUTLINED_FUNCTION_10_11(v2, v3, v4, v5, v6, v7, v8, v9, v11, xdict);
  FigXPCRelease();
  return v1;
}

uint64_t ckb_renewEntry(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v9 = FigXPCCreateBasicMessage();
  if (v9 || (FigContentKeyBossClientServerXPC_SerializeKeySpecifier(0, a2), v9))
  {
    v11 = v9;
  }

  else
  {
    FigSimpleMutexLock();
    if (*(DerivedStorage + 96))
    {
      fig_log_get_emitter();
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v13, v14, 0);
    }

    FigSimpleMutexUnlock();
    v10 = FigXPCRemoteClientSendSyncMessageCreatingReply();
    v11 = v10;
    if (a6)
    {
      if (!v10)
      {
        v11 = FigXPCMessageCopyCFArray();
        if (!v11)
        {
          *a6 = 0;
        }
      }
    }
  }

  FigXPCRelease();
  FigXPCRelease();
  return v11;
}

uint64_t ckb_setRequestHandlingCallbacksEntry(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  OUTLINED_FUNCTION_4_23();
  v6 = FigXPCCreateBasicMessage();
  if (v6)
  {
    goto LABEL_25;
  }

  FigSimpleMutexLock();
  v7 = FigCFWeakReferenceHolderCreateWithReferencedObject();
  if (!v7)
  {
    fig_log_get_emitter();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v13, xdict, v15);
LABEL_25:
    v11 = v6;
    goto LABEL_23;
  }

  v8 = v7;
  v9 = DerivedStorage[10];
  DerivedStorage[10] = v7;
  CFRetain(v7);
  if (v9)
  {
    CFRelease(v9);
  }

  if (a2)
  {
    __copy_assignment_8_8_t0w8_pa0_18803_8_pa0_11926_16_pa0_32929_24_pa0_16857_32_pa0_23185_40_pa0_3293_48(DerivedStorage + 3, a2);
  }

  v10 = DerivedStorage[11];
  if (v10)
  {
    DerivedStorage[11] = 0;
    xpc_release(v10);
  }

  DerivedStorage[11] = FigXPCRetain();
  FigSimpleMutexUnlock();
  if (a2)
  {
    if (a2[1])
    {
      xpc_dictionary_set_BOOL(xdict, ".installDidProvideKR", 1);
    }

    if (a2[2])
    {
      xpc_dictionary_set_BOOL(xdict, ".installDidProvideRKR", 1);
    }

    if (a2[3])
    {
      xpc_dictionary_set_BOOL(xdict, ".installDidUPK", 1);
    }

    if (a2[4])
    {
      xpc_dictionary_set_BOOL(xdict, ".installDidSucceed", 1);
    }

    if (a2[5])
    {
      xpc_dictionary_set_BOOL(xdict, ".installDidFail", 1);
    }

    if (a2[6])
    {
      xpc_dictionary_set_BOOL(xdict, ".installDidExternalProtectionStatusChange", 1);
    }
  }

  v11 = FigXPCRemoteClientSendSyncMessage();
  CFRelease(v8);
LABEL_23:
  FigXPCRelease();
  return v11;
}

uint64_t ckb_createGroupEntry(uint64_t a1, int64_t *a2)
{
  CMBaseObjectGetDerivedStorage();
  OUTLINED_FUNCTION_3_20();
  v3 = FigXPCCreateBasicMessage();
  if (v3)
  {
    v4 = v3;
  }

  else
  {
    v4 = OUTLINED_FUNCTION_9_9(gFigContentKeyBossRemoteClient);
    if (!v4)
    {
      *a2 = xpc_dictionary_get_int64(xdict, ".groupID");
    }
  }

  FigXPCRelease();
  FigXPCRelease();
  return v4;
}

uint64_t ckb_destroyGroupEntry(uint64_t a1, int64_t a2)
{
  CMBaseObjectGetDerivedStorage();
  OUTLINED_FUNCTION_4_23();
  v4 = FigXPCCreateBasicMessage();
  if (!v4)
  {
    xpc_dictionary_set_int64(xdict, ".groupID", a2);
    v4 = FigXPCRemoteClientSendSyncMessage();
  }

  OUTLINED_FUNCTION_14_8(v4, v5, v6, v7, v8, v9, v10, v11, v13, xdict);
  return v2;
}

uint64_t ckb_associateRequestWithGroupEntry()
{
  OUTLINED_FUNCTION_471();
  CMBaseObjectGetDerivedStorage();
  OUTLINED_FUNCTION_4_23();
  v3 = FigXPCCreateBasicMessage();
  if (!v3)
  {
    xpc_dictionary_set_int64(xdict, ".requestID", v1);
    xpc_dictionary_set_int64(xdict, ".groupID", v0);
    v3 = FigXPCRemoteClientSendSyncMessage();
  }

  OUTLINED_FUNCTION_10_11(v3, v4, v5, v6, v7, v8, v9, v10, v12, xdict);
  FigXPCRelease();
  return v2;
}

uint64_t ckb_setClientManagedBossEntry(uint64_t a1, uint64_t *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  CMBaseObjectGetDerivedStorage();
  OUTLINED_FUNCTION_12_8();
  v4 = FigXPCCreateBasicMessage();
  if (!v4)
  {
    xpc_dictionary_set_uint64(xdict, ".clientManagedBossObjectID", *a2);
    v4 = FigXPCRemoteClientSendSyncMessage();
  }

  OUTLINED_FUNCTION_14_8(v4, v5, v6, v7, v8, v9, v10, v11, v13, xdict);
  return DerivedStorage;
}

uint64_t ckb_createSecureTokenDataEntry(uint64_t a1, uint64_t a2)
{
  CMBaseObjectGetDerivedStorage();
  OUTLINED_FUNCTION_3_20();
  v3 = FigXPCCreateBasicMessage();
  if (v3 || (FigContentKeyBossClientServerXPC_SerializeSecureTokenRequestSpecifier(v6, a2), v3))
  {
    v4 = v3;
  }

  else
  {
    v4 = OUTLINED_FUNCTION_9_9(gFigContentKeyBossRemoteClient);
    if (!v4)
    {
      FigXPCMessageCopyCFData();
    }
  }

  FigXPCRelease();
  FigXPCRelease();
  return v4;
}

uint64_t ckb_getExternalProtectionStatusEntry(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  CMBaseObjectGetDerivedStorage();
  if (!a2 || !a3)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_20_0();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
LABEL_9:
    v6 = v5;
    goto LABEL_7;
  }

  v5 = FigXPCCreateBasicMessage();
  if (v5)
  {
    goto LABEL_9;
  }

  FigContentKeyBossClientServerXPC_SerializeKeySpecifier(0, a2);
  if (v5)
  {
    goto LABEL_9;
  }

  v6 = OUTLINED_FUNCTION_9_9(gFigContentKeyBossRemoteClient);
  if (!v6)
  {
    *a3 = xpc_dictionary_get_uint64(0, ".externalProtectionStatus");
  }

LABEL_7:
  FigXPCRelease();
  FigXPCRelease();
  return v6;
}

uint64_t ckb_revokeEntry(uint64_t a1, uint64_t a2)
{
  CMBaseObjectGetDerivedStorage();
  if (a2)
  {
    v3 = FigXPCCreateBasicMessage();
    if (v3 || (FigContentKeyBossClientServerXPC_SerializeKeySpecifier(0, a2), v3))
    {
      v4 = v3;
    }

    else
    {
      v4 = FigXPCRemoteClientSendSyncMessage();
    }
  }

  else
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_0_4();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v7, 0, v8);
    v4 = v6;
  }

  FigXPCRelease();
  return v4;
}

uint64_t ckb_getLoggingIdentifierEntry(uint64_t a1, uint64_t a2)
{
  CMBaseObjectGetDerivedStorage();
  v13 = 0;
  v14 = 0;
  if (a2)
  {
    v4 = FigXPCCreateBasicMessage();
    if (!v4)
    {
      v4 = OUTLINED_FUNCTION_9_9(gFigContentKeyBossRemoteClient);
      if (!v4)
      {
        v4 = FigXPCMessageCopyCFString();
      }
    }
  }

  else
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_20_0();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", 0, 0, v15);
  }

  OUTLINED_FUNCTION_14_8(v4, v5, v6, v7, v8, v9, v10, v11, v13, v14);
  FigXPCRelease();
  return v2;
}

uint64_t ckb_mergeBossFromAssetIntoClientManagedBossEntry(uint64_t a1, uint64_t *a2)
{
  if (a1)
  {
    if (a2)
    {
      goto LABEL_3;
    }
  }

  else
  {
    FigUserCrashWithMessage("[💥 CKB assert]: { NULL != bossFromAsset } : Should not attempt to merge a null bossFromAsset into a clientManaged boss");
    if (a2)
    {
      goto LABEL_3;
    }
  }

  FigUserCrashWithMessage("[💥 CKB assert]: { NULL != clientManagedBoss } : Should not attempt to merge bossFromAsset into a null clientManaged boss");
LABEL_3:
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  CMBaseObjectGetDerivedStorage();
  OUTLINED_FUNCTION_12_8();
  v4 = FigXPCCreateBasicMessage();
  if (!v4)
  {
    xpc_dictionary_set_uint64(xdict, ".clientManagedBossObjectID", *a2);
    v4 = FigXPCRemoteClientSendSyncMessage();
  }

  OUTLINED_FUNCTION_14_8(v4, v5, v6, v7, v8, v9, v10, v11, v13, xdict);
  return DerivedStorage;
}

void ckbremote_copyProperty_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void ckbremote_copyProperty_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void ckbremote_setProperty_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void ckbremote_setProperty_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

double FigGaplessAudioEditCursorCreate_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v1, v2, vars0);
}

void FigGaplessAudioEditCursorCreate_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FigGaplessAudioEditCursorCreate_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FigGaplessAudioEditCursorCreate_cold_4(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FigGaplessAudioEditCursorCreate_cold_5(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FigGaplessAudioEditCursorCreate_cold_6(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

double gaec_Copy_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v1, v2, vars0);
}

void gaec_Copy_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FigMediaServerStart_cold_1(int a1)
{
  v2 = *MEMORY[0x1E69E9840];
  v1[0] = 67109120;
  v1[1] = a1;
  _os_log_error_impl(&dword_1962D5000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failed to register startup work with watchdog. err = %d", v1, 8u);
}

uint64_t ckb_destroyGroupWithMutex(const void *a1, const void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (_os_feature_enabled_impl() && *(CMBaseObjectGetDerivedStorage() + 192))
  {
    OUTLINED_FUNCTION_140_0();
    v7 = ckb_replaceBossStorageAndCopyUpdatedBossWhenBossStaleWithBossMutex(a1, v5, v6);
    if (v7)
    {
      v31 = v7;
      v8 = 0;
      goto LABEL_22;
    }

    v8 = 1;
  }

  else
  {
    v8 = 0;
  }

  if (!CFDictionaryGetValue(*(DerivedStorage + 104), a2))
  {
    OUTLINED_FUNCTION_239();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v35, v36, v37);
    v31 = v34;
LABEL_22:
    v9 = 0;
    goto LABEL_12;
  }

  v9 = ckbutil_keyGroupID_copyLoggingDescription(a2);
  if (dword_1EAF16CF0)
  {
    OUTLINED_FUNCTION_147();
    v17 = OUTLINED_FUNCTION_126(qword_1EAF16CE8, v10, v11, v12, v13, v14, v15, v16, v35, v36, v37, *v38, v38[2], v38[3], v38[4]);
    v18 = os_log_type_enabled(v17, type);
    if (OUTLINED_FUNCTION_16_1(v18))
    {
      OUTLINED_FUNCTION_44_4();
      OUTLINED_FUNCTION_32();
      OUTLINED_FUNCTION_36();
      _os_log_send_and_compose_impl(v19, v20, v21, v22, v23, v24, type, v25);
      OUTLINED_FUNCTION_507();
    }

    OUTLINED_FUNCTION_7();
    OUTLINED_FUNCTION_238_0(v26, v27, v28, v29, v30);
  }

  CFDictionaryRemoveValue(*(DerivedStorage + 104), a2);
  v31 = 0;
LABEL_12:
  v32 = _os_feature_enabled_impl();
  if (v8 && v32 && v31 && a1)
  {
    CFRelease(a1);
  }

  if (v9)
  {
    CFRelease(v9);
  }

  return v31;
}

uint64_t ckb_processRequest(void *a1, char *a2, char *a3, int a4, const void *a5, const void *a6, char *a7, const void *a8, NSObject *a9, void *a10)
{
  v276 = a5;
  v282 = a6;
  v288 = a8;
  LODWORD(v304) = a4;
  v13 = a1;
  v14 = a10;
  v354 = *MEMORY[0x1E69E9840];
  v338 = a1;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v336 = 0;
  v337 = DerivedStorage;
  v334 = 0;
  v335 = 0;
  v332 = 0;
  v333 = 0;
  cf = 0;
  FigSimpleMutexLock();
  v16 = &unk_1EAF16000;
  v17 = &unk_1EAF16000;
  v310 = a3;
  if (dword_1EAF16CF0)
  {
    OUTLINED_FUNCTION_201_1();
    v26 = OUTLINED_FUNCTION_49_2(v18, v19, v20, v21, v22, v23, v24, v25, v252, v258, v264, v270, v276, v282, v288, v294, v299, v304, a3, v316, SBYTE2(v316), SBYTE3(v316), SBYTE4(v316));
    if (os_log_type_enabled(v26, BYTE3(v316)))
    {
      v27 = HIDWORD(v316);
    }

    else
    {
      v27 = HIDWORD(v316) & 0xFFFFFFFE;
    }

    if (v27)
    {
      v28 = *(DerivedStorage + 184);
      *v339 = 136315650;
      *&v339[4] = "ckb_processRequest";
      *&v339[12] = 2114;
      *&v339[14] = v28;
      *&v339[22] = 2082;
      v340 = "ckb_processRequest";
      OUTLINED_FUNCTION_47_0();
      OUTLINED_FUNCTION_45_0();
      _os_log_send_and_compose_impl(v29, v30, v31, v32, v33, v34, BYTE3(v316), v35);
    }

    OUTLINED_FUNCTION_7();
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    a3 = v310;
  }

  if (!a2 || !a10)
  {
    OUTLINED_FUNCTION_26_5();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
    started = v251;
    v202 = 0;
    goto LABEL_102;
  }

  v300 = a10;
  if (_os_feature_enabled_impl())
  {
    if (a2[65])
    {
      v351 = 0;
      v349 = 0u;
      v350 = 0u;
      v348 = 0u;
      __copy_assignment_8_8_t0w8_pa0_18803_8_pa0_11926_16_pa0_32929_24_pa0_16857_32_pa0_23185_40_pa0_3293_48(&v348, (DerivedStorage + 32));
      if (!v350)
      {
        FigUserCrashWithMessage("[💥 CKB assert]: { applicationRequestHandlingCallbacks.didSucceed != NULL } : Application attempted a preload but did not provide a callback for preload success");
      }

      if (!*(&v350 + 1))
      {
        FigUserCrashWithMessage("[💥 CKB assert]: { applicationRequestHandlingCallbacks.didFail != NULL } : Application attempted a preload but did not provide a callback for preload failure");
      }

      a3 = v310;
    }

    else
    {
      if (!a7)
      {
        FigUserCrashWithMessage("[💥 CKB assert]: { statusCallbacks != NULL } : Fig client of FigContentKeyBoss failed to specify a non-NULL set of callbacks");
      }

      if (!*(a7 + 1))
      {
        FigUserCrashWithMessage("[💥 CKB assert]: { statusCallbacks->didSucceed != NULL } : Fig client of FigContentKeyBoss failed to specify a key-request-success callback");
      }

      if (!*(a7 + 2))
      {
        FigUserCrashWithMessage("[💥 CKB assert]: { statusCallbacks->didFail != NULL } : Fig client of FigContentKeyBoss failed to specify a key-request-failure callback");
      }

      if (!*(a7 + 3))
      {
        FigUserCrashWithMessage("[💥 CKB assert]: { statusCallbacks->didUpdateContentKeyBossToNewBoss != NULL } : Fig client of FigContentKeyBoss failed to provide a update-boss callback");
      }
    }
  }

  ckbutil_contentKeySpecifier_copyLoggingArguments(*(a2 + 2), &v333, &v332, &cf);
  if (_os_feature_enabled_impl() && *(CMBaseObjectGetDerivedStorage() + 192))
  {
    v36 = ckb_replaceBossStorageAndCopyUpdatedBossWhenBossStaleWithBossMutex(v13, &v338, &v337);
    if (v36)
    {
      started = v36;
      v202 = 1;
      v14 = a10;
      goto LABEL_102;
    }

    v295 = 0x100000001;
    v37 = v338;
  }

  else
  {
    v295 = 0;
    v37 = v13;
    v13 = 0;
  }

  if ((a3 - 6) >= 0xFFFFFFFFFFFFFFFBLL)
  {
    GroupWithBossMutex = ckb_ensureAndGetGroupWithBossMutex(v37, a3);
    if (GroupWithBossMutex)
    {
LABEL_129:
      started = GroupWithBossMutex;
      goto LABEL_116;
    }
  }

  v39 = *(a2 + 2);
  v40 = CMBaseObjectGetDerivedStorage();
  *&v348 = 0;
  v41 = *(v40 + 104);
  if (v304)
  {
    v42 = FigCFDictionaryCopyArrayOfValues();
    Count = CFArrayGetCount(v42);
    if (Count < 1)
    {
      started = 0;
      if (v42)
      {
LABEL_49:
        CFRelease(v42);
      }

LABEL_50:
      if (started)
      {
        goto LABEL_116;
      }

      goto LABEL_51;
    }

    v17 = Count;
    v16 = a2;
    a2 = a7;
    a7 = v13;
    v13 = 0;
    while (1)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(v42, v13);
      RequestByKeySpecifier = ckg_getRequestByKeySpecifier(ValueAtIndex, v39, &v348);
      if (RequestByKeySpecifier)
      {
        started = RequestByKeySpecifier;
        goto LABEL_39;
      }

      if (v348)
      {
        break;
      }

      v13 = (v13 + 1);
      if (v17 == v13)
      {
        started = 0;
LABEL_39:
        OUTLINED_FUNCTION_90_2();
        goto LABEL_48;
      }
    }

    OUTLINED_FUNCTION_90_2();
LABEL_47:
    started = 0;
    v334 = Count;
    v336 = ValueAtIndex;
LABEL_48:
    a3 = v310;
    if (v42)
    {
      goto LABEL_49;
    }

    goto LABEL_50;
  }

  Value = CFDictionaryGetValue(v41, a3);
  if (Value)
  {
    ValueAtIndex = Value;
    Count = CFDictionaryGetValue(Value[7], v39);
    *&v348 = Count;
    if (Count)
    {
      v42 = 0;
      goto LABEL_47;
    }

    a3 = v310;
  }

  else
  {
    OUTLINED_FUNCTION_26_5();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v252, v258, v264);
    started = Count;
    a3 = v310;
    if (Count)
    {
      goto LABEL_116;
    }
  }

LABEL_51:
  v55 = a9;
  if (v334)
  {
    if (*(v334 + 56) < 4u)
    {
      if (*(v16 + 828))
      {
        OUTLINED_FUNCTION_201_1();
        v64 = OUTLINED_FUNCTION_49_2(v56, v57, v58, v59, v60, v61, v62, v63, v252, v258, v264, v270, v276, v282, v288, v295, a10, a7, a2, v316, SBYTE2(v316), SBYTE3(v316), SBYTE4(v316));
        OUTLINED_FUNCTION_126_2(v64, v65, v66, v67, v68, v69, v70, v71, v253, v259, v265, v271, v277, v283, v289, v296, v301, v305, v311, v317, v322, type, v328);
        OUTLINED_FUNCTION_28();
        if (v17)
        {
          v72 = *(v337 + 184);
          v73 = *(v334 + 248);
          FigContentKeySpecifierGetIdentifier(*(v334 + 16));
          CMBaseObjectGetDerivedStorage();
          *v339 = 136317186;
          OUTLINED_FUNCTION_84_1();
          *&v339[14] = v72;
          *&v339[22] = 2082;
          v340 = "MATCHES";
          LOWORD(v341) = v74;
          *(&v341 + 2) = v73;
          OUTLINED_FUNCTION_9_10();
          OUTLINED_FUNCTION_44_0();
          _os_log_send_and_compose_impl(v75, v76, v77, v78, v79, v80, a3, v81);
        }

        OUTLINED_FUNCTION_7();
        OUTLINED_FUNCTION_417(v97, v98, v99, v100, v101);
        a2 = v310;
      }

      if (!a2[65])
      {
        OUTLINED_FUNCTION_68_2(Count, v44, v45, v46, v47, v48, v49, v50, v252, v258, v264, v270, v276, v282, v288, v295, v300, v304, v310, v316, cf, v332, v333, v334);
      }

      _os_feature_enabled_impl();
      OUTLINED_FUNCTION_82_3();
      v14 = v300;
      if (v102)
      {
        OUTLINED_FUNCTION_93_2();
        ckb_sendRedirectCallbackOnRequestWithBossMutex(v13, v288, v103, a9, v104);
      }

      started = 0;
      goto LABEL_101;
    }

    OUTLINED_FUNCTION_26_5();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v252, v258, v264);
    goto LABEL_129;
  }

  v82 = v338;
  GroupWithBossMutex = ckb_getExistingKeyIfAnyWithBossMutex(v338, *(a2 + 2), a3, v304, &v335, &v336);
  if (GroupWithBossMutex)
  {
    goto LABEL_129;
  }

  if (!v335)
  {
    goto LABEL_90;
  }

  v264 = v13;
  *&v348 = 0;
  v83 = *(v335 + 72);
  AllocatorForMedia = FigGetAllocatorForMedia();
  VTable = CMBaseObjectGetVTable();
  v92 = *(VTable + 8);
  v91 = VTable + 8;
  v93 = *(v92 + 48);
  v94 = MEMORY[0x1E695E4D0];
  if (v93)
  {
    v91 = v93(v83, *MEMORY[0x1E69610D0], AllocatorForMedia, &v348);
    v95 = v348;
    v96 = *v94;
    if (v348)
    {
      CFRelease(v348);
    }
  }

  else
  {
    v95 = 0;
    v96 = *MEMORY[0x1E695E4D0];
  }

  a3 = v310;
  v102 = v95 == v96;
  v13 = v264;
  v16 = &unk_1EAF16000;
  if (v102)
  {
LABEL_72:
    if (dword_1EAF16CF0)
    {
      OUTLINED_FUNCTION_201_1();
      v114 = OUTLINED_FUNCTION_49_2(v106, v107, v108, v109, v110, v111, v112, v113, v252, v258, v264, v270, v276, v282, v288, v295, a10, v304, v310, v316, SBYTE2(v316), SBYTE3(v316), SBYTE4(v316));
      if (os_log_type_enabled(v114, BYTE3(v316)))
      {
        v115 = HIDWORD(v316);
      }

      else
      {
        v115 = HIDWORD(v316) & 0xFFFFFFFE;
      }

      if (v115)
      {
        v116 = *(v337 + 184);
        v304 = a9;
        v117 = *(v335 + 96);
        FigContentKeySpecifierGetIdentifier(*(a2 + 2));
        CMBaseObjectGetDerivedStorage();
        v13 = v264;
        *v339 = 136317186;
        OUTLINED_FUNCTION_84_1();
        *&v339[14] = v116;
        *&v339[22] = 2082;
        v340 = "MATCHES";
        LOWORD(v341) = v118;
        *(&v341 + 2) = v117;
        v55 = a9;
        OUTLINED_FUNCTION_9_10();
        OUTLINED_FUNCTION_44_0();
        _os_log_send_and_compose_impl(v119, v120, v121, v122, v123, v124, BYTE3(v316), v125);
      }

      OUTLINED_FUNCTION_7();
      fig_log_call_emit_and_clean_up_after_send_and_compose();
      a3 = v310;
    }

    v144 = v335;
    if (!v335)
    {
      OUTLINED_FUNCTION_26_5();
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v252, v258, v264);
      v16 = &unk_1EAF16000;
      goto LABEL_90;
    }

    ck_removeListenersOnCryptor(v335);
    v152 = *(v144 + 72);
    if (v152)
    {
      v153 = *(*(CMBaseObjectGetVTable() + 8) + 24);
      if (v153)
      {
        v153(v152);
      }

      v154 = *(v144 + 72);
      if (v154)
      {
        CFRelease(v154);
        *(v144 + 72) = 0;
      }
    }

    *(v144 + 32) = 0;
    v155 = ck_ensureCryptor(v144, v145, v146, v147, v148, v149, v150, v151, v252, v258, v264, v270, SBYTE2(v270), BYTE3(v270), SHIDWORD(v270), v276, v282, v288, SHIDWORD(v288), v295, SWORD1(v295), SHIDWORD(v295), v300, v304, v310, SWORD1(v310), SWORD2(v310), v316, cf, SBYTE4(cf), v332, v333, v334, v335, v336, v337, v338, *v339, *&v339[8], *&v339[16], v340, v341, *(&v341 + 1), v342, v343, v344, v345, v346, v347, v348, *(&v348 + 1), v349, *(&v349 + 1), v350, *(&v350 + 1), v351, v352, v353);
    v16 = &unk_1EAF16000;
    a3 = v310;
    if (!v155)
    {
LABEL_90:
      v156 = v337;
      v336 = CFDictionaryGetValue(*(v337 + 104), a3);
      GroupWithBossMutex = OUTLINED_FUNCTION_100_2(v336, v157, v336, v158, v159, *(v156 + 136), v160, v161, v252, v258, v264, v270, v276, v282, v288, v295, v300, v304, v310, v316, cf, v332, v333);
      if (!GroupWithBossMutex)
      {
        if (*(v16 + 828))
        {
          OUTLINED_FUNCTION_201_1();
          v177 = OUTLINED_FUNCTION_49_2(v169, v170, v171, v172, v173, v174, v175, v176, v256, v262, v268, v274, v280, v286, v292, v295, v300, v308, v314, v320, SBYTE2(v320), SBYTE3(v320), SBYTE4(v320));
          v185 = OUTLINED_FUNCTION_127_2(v177, v178, v179, v180, v181, v182, v183, v184, v257, v263, v269, v275, v281, v287, v293, v298, v303, v309, v315, v321, v324, typeb, v330);
          if (OUTLINED_FUNCTION_16_1(v185))
          {
            v186 = *(v156 + 184);
            v187 = *(v334 + 248);
            *v339 = 136315650;
            *&v339[4] = "ckb_processRequest";
            *&v339[12] = 2114;
            *&v339[14] = v186;
            *&v339[22] = 2114;
            v340 = v187;
            OUTLINED_FUNCTION_47_0();
            OUTLINED_FUNCTION_44_0();
            _os_log_send_and_compose_impl(v188, v189, v190, v191, v192, v193, a3, v194);
          }

          OUTLINED_FUNCTION_7();
          OUTLINED_FUNCTION_238_0(v195, v196, v197, v198, v199);
        }

        if (!a2[65])
        {
          OUTLINED_FUNCTION_68_2(GroupWithBossMutex, v162, v163, v164, v165, v166, v167, v168, v256, v262, v268, v274, v280, v286, v292, v295, v300, v308, v314, v320, cf, v332, v333, v334);
        }

        _os_feature_enabled_impl();
        OUTLINED_FUNCTION_82_3();
        v14 = v300;
        if (v102)
        {
          OUTLINED_FUNCTION_93_2();
          ckb_sendRedirectCallbackOnRequestWithBossMutex(v13, v292, v200, v55, v201);
        }

        started = ckb_startRequestWithMutexWithBossMutex(v82, v336, v334);
        goto LABEL_101;
      }

      goto LABEL_129;
    }

    started = v155;
    ckg_removeContentKey(v336, *(a2 + 2));
LABEL_116:
    v14 = v300;
LABEL_101:
    v202 = HIDWORD(v295);
    goto LABEL_102;
  }

  v105 = *(v335 + 32);
  if (v105 != 2)
  {
    if (v105 != 3)
    {
      goto LABEL_90;
    }

    goto LABEL_72;
  }

  v126 = v337;
  GroupWithBossMutex = OUTLINED_FUNCTION_100_2(v91, v86, v336, v87, v88, *(v337 + 136), v89, v90, v252, v258, v264, v270, v276, v282, v288, v295, a10, v304, v310, v316, cf, v332, v333);
  if (GroupWithBossMutex)
  {
    goto LABEL_129;
  }

  if (dword_1EAF16CF0)
  {
    OUTLINED_FUNCTION_201_1();
    v135 = OUTLINED_FUNCTION_49_2(v127, v128, v129, v130, v131, v132, v133, v134, v254, v260, v266, v272, v278, v284, v290, v295, v300, v306, v312, v318, SBYTE2(v318), SBYTE3(v318), SBYTE4(v318));
    v143 = OUTLINED_FUNCTION_127_2(v135, v136, v137, v138, v139, v140, v141, v142, v255, v261, v267, v273, v279, v285, v291, v297, v302, v307, v313, v319, v323, typea, v329);
    if (OUTLINED_FUNCTION_16_1(v143))
    {
      v204 = *(v126 + 184);
      v205 = *(v334 + 248);
      *v339 = 136315650;
      *&v339[4] = "ckb_processRequest";
      *&v339[12] = 2114;
      *&v339[14] = v204;
      *&v339[22] = 2114;
      v340 = v205;
      OUTLINED_FUNCTION_47_0();
      OUTLINED_FUNCTION_44_0();
      _os_log_send_and_compose_impl(v206, v207, v208, v209, v210, v211, a3, v212);
      LODWORD(v17) = HIDWORD(v318);
    }

    OUTLINED_FUNCTION_7();
    OUTLINED_FUNCTION_238_0(v213, v214, v215, v216, v217);
    if (dword_1EAF16CF0)
    {
      OUTLINED_FUNCTION_201_1();
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      OUTLINED_FUNCTION_126_2(os_log_and_send_and_compose_flags_and_os_log_type, v219, v220, v221, v222, v223, v224, v225, v254, v260, v266, v272, v278, v284, v290, v295, v300, a7, a2, v318, SBYTE2(v318), BYTE3(v318), SHIDWORD(v318));
      OUTLINED_FUNCTION_28();
      if (v17)
      {
        v226 = *(v334 + 248);
        v227 = *(v335 + 96);
        FigContentKeySpecifierGetIdentifier(*(v334 + 16));
        *v339 = 136317186;
        OUTLINED_FUNCTION_84_1();
        *&v339[14] = v226;
        *&v339[22] = 2082;
        v340 = "MATCHES";
        LOWORD(v341) = v228;
        *(&v341 + 2) = v227;
        OUTLINED_FUNCTION_9_10();
        OUTLINED_FUNCTION_44_0();
        _os_log_send_and_compose_impl(v229, v230, v231, v232, v233, v234, a3, v235);
      }

      OUTLINED_FUNCTION_7();
      OUTLINED_FUNCTION_417(v236, v237, v238, v239, v240);
      a2 = v312;
    }
  }

  FigCFDictionarySetBoolean();
  GroupWithBossMutex = ckg_ensureContentKeyForRequest(v336, v334, v82, *(v126 + 152));
  if (GroupWithBossMutex)
  {
    goto LABEL_129;
  }

  v14 = v300;
  v248 = v266;
  v202 = HIDWORD(v295);
  if (!a2[65])
  {
    OUTLINED_FUNCTION_68_2(GroupWithBossMutex, v241, v242, v243, v244, v245, v246, v247, v254, v260, v266, v272, v278, v284, v290, v295, v300, v306, v312, v318, cf, v332, v333, v334);
  }

  _os_feature_enabled_impl();
  OUTLINED_FUNCTION_82_3();
  if (v102)
  {
    OUTLINED_FUNCTION_93_2();
    ckb_sendRedirectCallbackOnRequestWithBossMutex(v248, v290, v249, a9, v250);
  }

  ckb_transitionRequestToTerminalStateWithOSStatusWithBossMutex(v82, v336, v334, 0);
  started = 0;
LABEL_102:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v202 && v338)
  {
    CFRelease(v338);
  }

  if (v14 && v334)
  {
    *v14 = *(v334 + 32);
  }

  FigSimpleMutexUnlock();
  return started;
}

uint64_t ckb_createPersistableKeyData(uint64_t a1, const void *a2, uint64_t a3, const void **a4)
{
  v140 = *MEMORY[0x1E69E9840];
  v123 = 0;
  v124 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v9 = FigSimpleMutexLock();
  if (dword_1EAF16CF0)
  {
    v17 = OUTLINED_FUNCTION_86_1(v9, v10, v11, v12, v13, v14, v15, v16, v117, v120, v123, v124, v125, v126, cf);
    v25 = OUTLINED_FUNCTION_117_2(v17, v18, v19, v20, v21, v22, v23, v24, v118, v121, v123, v124, v125, v126, cf);
    if (OUTLINED_FUNCTION_71_0(v25))
    {
      v128 = 136315650;
      v129 = "ckb_createPersistableKeyData";
      OUTLINED_FUNCTION_47_2();
      v133 = v26;
      OUTLINED_FUNCTION_32();
      OUTLINED_FUNCTION_108();
      OUTLINED_FUNCTION_129_2(v27, v28, v29, v30, v31, v32, v33, v34);
    }

    OUTLINED_FUNCTION_7();
    OUTLINED_FUNCTION_449(v35, v36, v37, v38, v39);
  }

  if (!a3 || !a4)
  {
    OUTLINED_FUNCTION_52_3();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
    goto LABEL_54;
  }

  v40 = ckb_copyGroupAndRequestFromIDWithBossMutex(a1, a2, &v123, &v124);
  if (v40)
  {
    goto LABEL_54;
  }

  if (FigContentKeySpecifierGetKeySystem(*(v124 + 2)) != 1 || *(v124 + 14) != 1)
  {
    OUTLINED_FUNCTION_52_3();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
    goto LABEL_54;
  }

  v40 = ckg_ensureContentKeyForRequest(v123, v124, a1, *(DerivedStorage + 152));
  if (v40)
  {
LABEL_54:
    v71 = v40;
    goto LABEL_33;
  }

  v48 = v124;
  if (!v124)
  {
    FigUserCrashWithMessage("[💥 CKB assert]: { request != NULL } : Passed a NULL request from which to extract a FigContentKey");
  }

  v49 = v48[8];
  cf = 0;
  if (!v49)
  {
    OUTLINED_FUNCTION_52_3();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v117, v120, v123);
    if (!v52)
    {
      v59 = 0;
      goto LABEL_22;
    }

    goto LABEL_56;
  }

  v50 = v49[9];
  v51 = *(*(CMBaseObjectGetVTable() + 8) + 56);
  if (v51)
  {
    v52 = v51(v50, *MEMORY[0x1E6961138], *MEMORY[0x1E695E4D0]);
    if (v52)
    {
      goto LABEL_56;
    }

    v53 = v49[9];
    v54 = *(CMBaseObjectGetVTable() + 16);
    if (*v54 < 4uLL)
    {
      goto LABEL_25;
    }

    v55 = v54[12];
    if (!v55)
    {
      goto LABEL_25;
    }

    v52 = v55(v53, a3, 0);
    if (v52)
    {
LABEL_56:
      v71 = v52;
      goto LABEL_26;
    }

    v56 = v49[9];
    v57 = CFGetAllocator(v49);
    v58 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v58)
    {
      v52 = v58(v56, *MEMORY[0x1E69610F0], v57, &cf);
      if (!v52)
      {
        v59 = cf;
        cf = 0;
LABEL_22:
        if (dword_1EAF16CF0)
        {
          OUTLINED_FUNCTION_97_3();
          os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          v61 = HIBYTE(v125);
          v62 = os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, HIBYTE(v125));
          if (OUTLINED_FUNCTION_71_0(v62))
          {
            v128 = 136315906;
            OUTLINED_FUNCTION_44_4();
            v132 = 2048;
            v133 = v63;
            v134 = 2048;
            v135 = v59;
            OUTLINED_FUNCTION_32();
            OUTLINED_FUNCTION_23();
            _os_log_send_and_compose_impl(v64, v65, v66, v67, v68, v69, v61, v70);
          }

          OUTLINED_FUNCTION_7();
          OUTLINED_FUNCTION_449(v112, v113, v114, v115, v116);
        }

        v71 = 0;
        goto LABEL_29;
      }

      goto LABEL_56;
    }
  }

LABEL_25:
  v71 = 4294954514;
LABEL_26:
  OUTLINED_FUNCTION_97_3();
  v72 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
  v73 = HIBYTE(v125);
  v74 = os_log_type_enabled(v72, HIBYTE(v125));
  if (OUTLINED_FUNCTION_71_0(v74))
  {
    v128 = 136315906;
    OUTLINED_FUNCTION_44_4();
    v132 = 2048;
    v133 = v75;
    v134 = 1024;
    LODWORD(v135) = v71;
    OUTLINED_FUNCTION_32();
    OUTLINED_FUNCTION_45_0();
    _os_log_send_and_compose_impl(v76, v77, v78, v79, v80, v81, v73, v82);
  }

  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_449(v83, v84, v85, v86, v87);
  v59 = 0;
LABEL_29:
  v40 = cf;
  if (cf)
  {
    CFRelease(cf);
  }

  if (!v71)
  {
    *(v124 + 14) = 2;
    *a4 = v59;
LABEL_33:
    v59 = 0;
  }

  if (dword_1EAF16CF0)
  {
    v88 = OUTLINED_FUNCTION_86_1(v40, v41, v42, v43, v44, v45, v46, v47, v117, v120, v123, v124, v125, v126, cf);
    v96 = OUTLINED_FUNCTION_117_2(v88, v89, v90, v91, v92, v93, v94, v95, v119, v122, v123, v124, v125, v126, cf);
    if (OUTLINED_FUNCTION_71_0(v96))
    {
      if (a4)
      {
        v97 = *a4;
      }

      else
      {
        v97 = 0;
      }

      v128 = 136316418;
      v129 = "ckb_createPersistableKeyData";
      v130 = 2048;
      v131 = a1;
      v132 = 2114;
      v133 = v124;
      v134 = 2048;
      v135 = v97;
      v136 = 2048;
      v137 = a3;
      v138 = 1024;
      v139 = v71;
      OUTLINED_FUNCTION_32();
      OUTLINED_FUNCTION_108();
      OUTLINED_FUNCTION_129_2(v98, v99, v100, v101, v102, v103, v104, v105);
    }

    OUTLINED_FUNCTION_7();
    OUTLINED_FUNCTION_449(v106, v107, v108, v109, v110);
  }

  FigSimpleMutexUnlock();
  if (v59)
  {
    CFRelease(v59);
  }

  if (v124)
  {
    CFRelease(v124);
  }

  if (v123)
  {
    CFRelease(v123);
  }

  return v71;
}

uint64_t ckb_processResponseError(uint64_t a1, const void *a2, uint64_t a3)
{
  v72 = *MEMORY[0x1E69E9840];
  CMBaseObjectGetDerivedStorage();
  v62 = 0;
  cf = 0;
  FigSimpleMutexLock();
  OUTLINED_FUNCTION_63_1();
  if (v8)
  {
    OUTLINED_FUNCTION_4_24();
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    v17 = OUTLINED_FUNCTION_441_1(os_log_and_send_and_compose_flags_and_os_log_type, v10, v11, v12, v13, v14, v15, v16, v58, v59, v60, v61, SBYTE2(v61), BYTE3(v61), SHIDWORD(v61));
    if (OUTLINED_FUNCTION_28_1(v17))
    {
      v64 = 136315650;
      v65 = "ckb_processResponseError";
      OUTLINED_FUNCTION_47_2();
      v67 = v18;
      OUTLINED_FUNCTION_32();
      OUTLINED_FUNCTION_45_0();
      _os_log_send_and_compose_impl(v19, v20, v21, v22, v23, v24, v3, v25);
      OUTLINED_FUNCTION_408();
    }

    OUTLINED_FUNCTION_7();
    OUTLINED_FUNCTION_417(v26, v27, v28, v29, v30);
  }

  if (!a3)
  {
    OUTLINED_FUNCTION_28_6();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
    goto LABEL_20;
  }

  v31 = ckb_copyGroupAndRequestFromIDWithBossMutex(a1, a2, &v62, &cf);
  if (v31)
  {
LABEL_20:
    v56 = v31;
    goto LABEL_13;
  }

  v32 = cf;
  if (*(cf + 14) >= 3u)
  {
    OUTLINED_FUNCTION_28_6();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
    goto LABEL_20;
  }

  if (*(v4 + 3312))
  {
    OUTLINED_FUNCTION_4_24();
    v33 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    v41 = OUTLINED_FUNCTION_19_4(v33, v34, v35, v36, v37, v38, v39, v40, v58, v59, v60, v61, SBYTE2(v61), BYTE3(v61), SHIDWORD(v61));
    if (OUTLINED_FUNCTION_115_1(v41))
    {
      v64 = 136316162;
      OUTLINED_FUNCTION_44_4();
      v66 = v42;
      v67 = v43;
      v68 = v42;
      v69 = @"Callbacks to AVContentKeySession";
      v70 = 2112;
      v71 = a3;
      OUTLINED_FUNCTION_32();
      OUTLINED_FUNCTION_36();
      _os_log_send_and_compose_impl(v44, v45, v46, v47, v48, v49, a2, v50);
      OUTLINED_FUNCTION_612();
    }

    OUTLINED_FUNCTION_7();
    OUTLINED_FUNCTION_414(v51, v52, v53, v54, v55);
    v32 = cf;
  }

  ckb_transitionRequestToTerminalStateWithBossMutex(a1, v62, v32, a3);
  v56 = 0;
LABEL_13:
  FigSimpleMutexUnlock();
  if (cf)
  {
    CFRelease(cf);
  }

  if (v62)
  {
    CFRelease(v62);
  }

  return v56;
}

uint64_t ckb_renew(const void *a1, uint64_t a2, uint64_t a3, uint64_t a4, const void *a5, __CFArray **a6)
{
  v105 = a6;
  v116 = a5;
  v112 = a3;
  v113 = a4;
  v124 = a2;
  v148[16] = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v128 = 0;
  v129 = 0;
  cf = 0;
  v127 = 0;
  v8 = FigSimpleMutexLock();
  if (dword_1EAF16CF0)
  {
    v16 = OUTLINED_FUNCTION_53_2(v8, v9, v10, v11, v12, v13, v14, v15, v102, v103, v104, v105, v106, v108, v109, v111, v112, v113, v114, v116, theArray, v119, theDict, v123, v124, v125, SBYTE2(v125), SBYTE3(v125), SHIDWORD(v125));
    v17 = os_log_type_enabled(v16, BYTE3(v125));
    if (OUTLINED_FUNCTION_124_0(v17))
    {
      v18 = *(DerivedStorage + 184);
      v130 = 136315650;
      v131 = "ckb_renew";
      v132 = 2114;
      v133 = v18;
      v134 = 2082;
      v135 = "ckb_renew";
      OUTLINED_FUNCTION_59();
      OUTLINED_FUNCTION_108();
      OUTLINED_FUNCTION_128_0(v19, v20, v21, v22, v23, v24, v25, v26);
    }

    OUTLINED_FUNCTION_7();
    OUTLINED_FUNCTION_345_0(v27, v28, v29, v30, v31);
  }

  ckbutil_contentKeySpecifier_copyLoggingArguments(v124, &v128, &v127, &cf);
  CMBaseObjectGetDerivedStorage();
  AllocatorForMedia = FigGetAllocatorForMedia();
  Mutable = CFDictionaryCreateMutable(AllocatorForMedia, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (!Mutable)
  {
    OUTLINED_FUNCTION_25_4();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v102, v103, v104);
    v39 = v99;
    v40 = 0;
    goto LABEL_17;
  }

  v34 = Mutable;
  v35 = FigCFDictionaryCopyArrayOfValues();
  if (CFArrayGetCount(v35) >= 1)
  {
    v36 = 0;
    while (1)
    {
      v148[0] = 0;
      ValueAtIndex = CFArrayGetValueAtIndex(v35, v36);
      ContentKey = ckg_getContentKey(ValueAtIndex, v124, v148);
      if (ContentKey)
      {
        break;
      }

      if (v148[0])
      {
        FigCFDictionarySetValue();
      }

      if (++v36 >= CFArrayGetCount(v35))
      {
        v39 = 0;
        v40 = v34;
        v34 = 0;
        goto LABEL_13;
      }
    }

    v39 = ContentKey;
    v40 = 0;
LABEL_13:
    if (!v35)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

  v39 = 0;
  v40 = v34;
  v34 = 0;
  if (v35)
  {
LABEL_14:
    CFRelease(v35);
  }

LABEL_15:
  if (v34)
  {
    CFRelease(v34);
  }

LABEL_17:
  v41 = v113;
  if (v39)
  {
LABEL_70:
    v84 = 0;
    v43 = 0;
LABEL_72:
    v120 = 0;
    goto LABEL_51;
  }

  if (CFDictionaryGetCount(v40) <= 0)
  {
    OUTLINED_FUNCTION_25_4();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v102, v103, v104);
    v39 = v100;
    goto LABEL_70;
  }

  v42 = FigGetAllocatorForMedia();
  v43 = CFArrayCreateMutable(v42, 0, MEMORY[0x1E695E9C0]);
  if (!v43 || (v44 = FigCFDictionaryCopyArrayOfKeys()) == 0)
  {
    OUTLINED_FUNCTION_25_4();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
    v39 = v101;
    v84 = 0;
    goto LABEL_72;
  }

  theArraya = v43;
  theDicta = v40;
  v120 = v44;
  if (CFArrayGetCount(v44) >= 1)
  {
    v46 = 0;
    *&v45 = 136315650;
    v107 = v45;
    *&v45 = 136317186;
    v110 = v45;
    v115 = a1;
    do
    {
      v47 = OUTLINED_FUNCTION_184();
      v49 = CFArrayGetValueAtIndex(v47, v48);
      Value = CFDictionaryGetValue(theDicta, v49);
      if (Value[8] == 2)
      {
        v58 = Value;
        Value[8] = 1;
        if (dword_1EAF16CF0)
        {
          v59 = OUTLINED_FUNCTION_53_2(Value, v51, v52, v53, v54, v55, v56, v57, v102, v103, v104, v105, v107, *(&v107 + 1), v110, *(&v110 + 1), v112, v113, v115, v116, theArraya, v120, theDicta, v49, v124, v125, SBYTE2(v125), SBYTE3(v125), SHIDWORD(v125));
          if (os_log_type_enabled(v59, BYTE3(v125)))
          {
            v60 = HIDWORD(v125);
          }

          else
          {
            v60 = HIDWORD(v125) & 0xFFFFFFFE;
          }

          if (v60)
          {
            v61 = *(DerivedStorage + 184);
            v62 = DerivedStorage;
            v63 = *(v58 + 12);
            Identifier = FigContentKeySpecifierGetIdentifier(v124);
            v65 = CMBaseObjectGetDerivedStorage();
            v66 = @"[]";
            if (*(v65 + 152))
            {
              v66 = Identifier;
            }

            v130 = v110;
            v131 = "ckb_renew";
            v132 = 2114;
            v133 = v61;
            v134 = 2082;
            v135 = "MATCHES";
            v136 = 2114;
            v137 = v63;
            DerivedStorage = v62;
            v138 = 2048;
            v41 = v113;
            v139 = v112;
            v140 = 2112;
            v141 = v66;
            v142 = 2112;
            v143 = v128;
            v144 = 2112;
            v145 = v127;
            v146 = 2112;
            v147 = cf;
            OUTLINED_FUNCTION_59();
            OUTLINED_FUNCTION_108();
            _os_log_send_and_compose_impl(v67, v68, v69, v70, &dword_1962D5000, v59, BYTE3(v125), " %s: 🔗 [%{public}@ =[%{public}s OBJECT]=> %{public}@]: KEY RENEWAL: A client { %p } wants to renew this key specifier: %@ {\n\tKey system: %@\n\tEncrypt method: %@\n\tSpecified loading protocols: %@\n} ... which matches this key. Setting up renewal request for this key");
          }

          v71 = OUTLINED_FUNCTION_104_2();
          OUTLINED_FUNCTION_64_3(v71, v72, v73, v74);
          a1 = v115;
          v49 = v123;
        }

        NewRequestWithBossMutex = ckb_registerAndGetNewRequestWithBossMutex(a1, *(v58 + 3), v49, v41, v116, *(DerivedStorage + 136), 1, &v129);
        if (NewRequestWithBossMutex)
        {
          v39 = NewRequestWithBossMutex;
          v84 = 0;
          goto LABEL_50;
        }

        FigGetAllocatorForMedia();
        UInt64 = FigCFNumberCreateUInt64();
        v84 = UInt64;
        if (!UInt64)
        {
          OUTLINED_FUNCTION_25_4();
          FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v102, v103, v104);
LABEL_67:
          v39 = started;
LABEL_50:
          v40 = theDicta;
          v43 = theArraya;
          goto LABEL_51;
        }

        if (dword_1EAF16CF0)
        {
          v85 = OUTLINED_FUNCTION_53_2(UInt64, v77, v78, v79, v80, v81, v82, v83, v102, v103, v104, v105, v107, *(&v107 + 1), v110, *(&v110 + 1), v112, v113, v115, v116, theArraya, v120, theDicta, v123, v124, v125, SBYTE2(v125), SBYTE3(v125), SHIDWORD(v125));
          if (os_log_type_enabled(v85, BYTE3(v125)))
          {
            v86 = HIDWORD(v125);
          }

          else
          {
            v86 = HIDWORD(v125) & 0xFFFFFFFE;
          }

          if (v86)
          {
            v87 = *(DerivedStorage + 184);
            v88 = *(v129 + 31);
            v130 = v107;
            v131 = "ckb_renew";
            v132 = 2114;
            v133 = v87;
            v134 = 2114;
            v135 = v88;
            OUTLINED_FUNCTION_59();
            OUTLINED_FUNCTION_108();
            _os_log_send_and_compose_impl(v89, v90, v91, v92, &dword_1962D5000, v85, BYTE3(v125), " %s: ▶️ [%{public}@ =[INITIATING REQUEST]=> %{public}@]");
          }

          v93 = OUTLINED_FUNCTION_104_2();
          OUTLINED_FUNCTION_64_3(v93, v94, v95, v96);
        }

        started = ckb_startRequestWithMutexWithBossMutex(a1, v49, v129);
        if (started)
        {
          goto LABEL_67;
        }

        CFArrayAppendValue(theArraya, v84);
        v129 = 0;
        CFRelease(v84);
      }

      ++v46;
    }

    while (v46 < CFArrayGetCount(v120));
  }

  if (!v105)
  {
    v84 = 0;
    v39 = 0;
    goto LABEL_50;
  }

  v84 = 0;
  v39 = 0;
  *v105 = theArraya;
  v43 = 0;
  v40 = theDicta;
LABEL_51:
  FigSimpleMutexUnlock();
  if (cf)
  {
    CFRelease(cf);
  }

  if (v129)
  {
    CFRelease(v129);
  }

  if (v84)
  {
    CFRelease(v84);
  }

  if (v43)
  {
    CFRelease(v43);
  }

  if (v40)
  {
    CFRelease(v40);
  }

  if (v120)
  {
    CFRelease(v120);
  }

  return v39;
}