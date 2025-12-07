void videopipelineSetTimebase(uint64_t a1, const void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 128))
  {
    CMNotificationCenterGetDefaultLocalCenter();
    FigNotificationCenterRemoveWeakListener();
    CFRelease(*(DerivedStorage + 128));
  }

  *(DerivedStorage + 128) = a2;
  if (a2)
  {
    CFRetain(a2);
    CMNotificationCenterGetDefaultLocalCenter();
    FigNotificationCenterAddWeakListener();
    v5 = *(DerivedStorage + 128);
  }

  else
  {
    v5 = 0;
  }

  FigImageQueueArraySetProperty(*(DerivedStorage + 40), @"FigImageQueueProperty_Timebase", v5);
  if (!*DerivedStorage)
  {
    v6 = *(DerivedStorage + 16);
    if (v6)
    {
      VMC2SetTimebase(v6, *(DerivedStorage + 128));
    }
  }

  videopipelineUpdateVideoPlaybackStateForClient(a1);
}

void VMC2SetTimebase(uint64_t a1, const void *a2)
{
  if (a1 && !*(a1 + 16))
  {
    FigSimpleMutexLock();
    FigSimpleMutexLock();
    if (*(a1 + 584))
    {
      CMNotificationCenterGetDefaultLocalCenter();
      FigNotificationCenterRemoveWeakListener();
      v6 = *(a1 + 584);
    }

    else
    {
      v6 = 0;
    }

    *(a1 + 584) = a2;
    if (a2)
    {
      CFRetain(a2);
    }

    if (v6)
    {
      CFRelease(v6);
    }

    v7 = *(a1 + 584);
    if (v7)
    {
      CMNotificationCenterGetDefaultLocalCenter();
      FigNotificationCenterAddWeakListener();
      v7 = *(a1 + 584);
      if (v7)
      {
        v7 = *(a1 + 600);
        if (v7)
        {
          LOBYTE(v7) = *(a1 + 624) != 0;
        }
      }
    }

    *(a1 + 625) = v7;
    FigSimpleMutexUnlock();
    FigSimpleMutexUnlock();
  }

  else
  {
    emitter = fig_log_get_emitter();

    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 4294954511, "<<<< VMC >>>>", 7915, v2);
  }
}

double VideoMentorNew(const void *a1, const void *a2, const void *a3, const __CFDictionary *a4, void *a5)
{
  values = @"com.apple.coremedia.videomentor";
  HIDWORD(v24) = 0;
  if (VideoMentorNew_onceToken == -1)
  {
    if (a1)
    {
      goto LABEL_3;
    }

LABEL_28:
    v15 = qword_1EAF16DF0;
    v16 = v5;
    v17 = 4294954464;
    v18 = 9377;
    goto LABEL_29;
  }

  VideoMentorNew_cold_1();
  if (!a1)
  {
    goto LABEL_28;
  }

LABEL_3:
  if (a2)
  {
    if (a3)
    {
      if (a5)
      {
        v11 = malloc_type_calloc(0x3C0uLL, 1uLL, 0x10E0040E3B063F7uLL);
        if (v11)
        {
          v12 = v11;
          v11[1] = CFRetain(a1);
          v12[2] = CFRetain(a2);
          v12[3] = CFRetain(a3);
          *(v12 + 41) = 0;
          if (a4)
          {
            v13 = *MEMORY[0x1E695E4D0];
            if (v13 == CFDictionaryGetValue(a4, @"SpeculativelySaveFrames"))
            {
              *(v12 + 549) = 1;
            }

            if (_os_feature_enabled_impl())
            {
              v14 = v13 == CFDictionaryGetValue(a4, @"OptimizeSampleCursorIPCForPower");
            }

            else
            {
              v14 = 0;
            }

            *(v12 + 41) = v14;
            Value = CFDictionaryGetValue(a4, @"SampleBufferCryptor");
            v12[6] = Value;
            if (Value)
            {
              CFRetain(Value);
            }
          }

          FigCFDictionaryGetInt32IfPresent();
          v12[11] = FigSemaphoreCreate();
          v12[12] = FigSimpleMutexCreate();
          v12[10] = FigSimpleMutexCreate();
          v12[33] = FigSimpleMutexCreate();
          v12[15] = FigSemaphoreCreate();
          *(v12 + 11) = 0;
          v12[69] = 0;
          *(v12 + 92) = 1065353216;
          fig_note_initialize_category_with_default_work_cf();
          fig_note_initialize_category_with_default_work_cf();
          CMNotificationCenterGetDefaultLocalCenter();
          CMNotificationCenterAddListener();
          v20 = v12[3];
          v21 = *(*(CMBaseObjectGetVTable() + 16) + 32);
          if (!v21 || v21(v20, videoMentorLowWaterTrigger, v12, v12 + 4))
          {
            FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v24, values, v26);
          }

          else
          {
            *(v12 + 40) = 1;
            *(v12 + 136) = -2;
            *(v12 + 28) = 0;
            v22 = CFDictionaryCreate(*MEMORY[0x1E695E480], MEMORY[0x1E69631F0], &values, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
            if (!FigThreadCreate())
            {
              *a5 = v12;
              v12 = 0;
            }

            if (v22)
            {
              CFRelease(v22);
            }
          }

          VideoMentorDispose(v12);
          return result;
        }

        v15 = qword_1EAF16DF0;
        v16 = v5;
        v17 = 4294954463;
        v18 = 9388;
      }

      else
      {
        v15 = qword_1EAF16DF0;
        v16 = v5;
        v17 = 4294954464;
        v18 = 9383;
      }
    }

    else
    {
      v15 = qword_1EAF16DF0;
      v16 = v5;
      v17 = 4294954464;
      v18 = 9381;
    }
  }

  else
  {
    v15 = qword_1EAF16DF0;
    v16 = v5;
    v17 = 4294954464;
    v18 = 9379;
  }

LABEL_29:

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v15, v17, "<<<< VideoMentor >>>>", v18, v16);
}

uint64_t videoMentorThread(uint64_t a1)
{
  cf = 0;
  if (*(a1 + 41))
  {
    FigFormatReaderXPCRemoteEnsureEfficientIPCFromCurrentThread(*(a1 + 44), &cf);
  }

  if (*(a1 + 112) != 5)
  {
    v131 = (a1 + 552);
    allocator = *MEMORY[0x1E695E480];
    key = *MEMORY[0x1E6960518];
    v134 = *MEMORY[0x1E6960598];
    v133 = *MEMORY[0x1E69605A0];
    v135 = *MEMORY[0x1E69604F8];
    v137 = *MEMORY[0x1E695E4D0];
    v132 = *MEMORY[0x1E69604B8];
    v148 = *(MEMORY[0x1E6960C70] + 16);
    v147 = *MEMORY[0x1E6960C70];
    while (1)
    {
      FigSimpleMutexLock();
      v5 = *(a1 + 112);
      v6 = *(a1 + 128);
      v162 = *(a1 + 136);
      v163 = *(a1 + 152);
      v7 = *(a1 + 160);
      v152 = v6;
      v153 = *(a1 + 168);
      v160 = *(a1 + 176);
      v149 = *(a1 + 200);
      v161 = *(a1 + 192);
      *(a1 + 176) = v147;
      v8 = *(a1 + 208);
      v159 = *(a1 + 224);
      v158 = v8;
      *(a1 + 224) = v148;
      *(a1 + 208) = v147;
      v9 = *(a1 + 500);
      v11 = *(a1 + 232);
      v10 = *(a1 + 236);
      v13 = *(a1 + 240);
      v12 = *(a1 + 244);
      v14 = *(a1 + 248);
      v15 = *(a1 + 252);
      v16 = *(a1 + 256);
      v17 = *(a1 + 260);
      v18 = *(a1 + 372);
      v19 = *(a1 + 373);
      v20 = *(a1 + 374);
      v21 = *(a1 + 377);
      v22 = *(a1 + 378);
      v23 = *(a1 + 464);
      v151 = *(a1 + 456);
      v24 = *(a1 + 375);
      v25 = *(a1 + 428);
      v156.epoch = *(a1 + 444);
      v157 = v23;
      *&v156.value = v25;
      v26 = *(a1 + 376);
      v154 = *(a1 + 472);
      v150 = *(a1 + 480);
      *(a1 + 488) = *(a1 + 452);
      *(a1 + 492) = 0;
      *(a1 + 128) = 0;
      *(a1 + 168) = 0;
      *(a1 + 192) = v148;
      *(a1 + 200) = 0;
      *(a1 + 520) = 0;
      *(a1 + 116) = 0;
      *(a1 + 484) = 0;
      *(a1 + 452) = 0u;
      *(a1 + 468) = 0u;
      if (!v5)
      {
        v48 = v23;
        if (*(a1 + 117))
        {
          *(a1 + 117) = 0;
          FigSemaphoreSignal();
        }

        FigMemoryBarrier();
        FigSimpleMutexUnlock();
        v29 = v149;
        v28 = v150;
        v30 = v154;
        if (v48)
        {
          CFRelease(v48);
          v157 = 0;
        }

        if (v154)
        {
          audioMentorEnqueueBufferConsumedMarker(a1, v154);
        }

        goto LABEL_134;
      }

      v142 = v14;
      v143 = v19;
      v139 = v9;
      v140 = v7;
      v141 = v23;
      v144 = v18;
      v145 = v12;
      *v146 = v20;
      FigMemoryBarrier();
      FigSimpleMutexUnlock();
      if (v5 <= 2)
      {
        break;
      }

      if (v5 != 3)
      {
        v27 = v5 == 4;
        v29 = v149;
        v28 = v150;
        v30 = v154;
        if (!v27)
        {
          goto LABEL_134;
        }

        if (v141)
        {
          CFRelease(v141);
          v157 = 0;
        }

        time1.value = 0;
        *(a1 + 496) = v13;
        *(a1 + 492) = *(a1 + 488) != 0;
        if ((v13 & 0xFFFFFFFD) == 1 && *MEMORY[0x1E695FF58] == 1)
        {
          kdebug_trace();
        }

        *(a1 + 524) = 0;
        v31 = *(a1 + 536);
        if (v31)
        {
          CFRelease(v31);
          *(a1 + 536) = 0;
        }

        *(a1 + 560) = v147;
        *(a1 + 576) = v148;
        *(a1 + 680) = 0;
        videoMentorThrottlingStateStartNewOrder(a1 + 584, MEMORY[0x1E6960C70], MEMORY[0x1E6960C70], MEMORY[0x1E6960C70], 0);
        if ((v145 - 3) >= 0xFFFFFFFE)
        {
          if (*(*(CMBaseObjectGetVTable() + 16) + 72))
          {
            v32 = *(a1 + 24);
            v33 = *(*(CMBaseObjectGetVTable() + 16) + 72);
            if (v33)
            {
              v33(v32);
            }
          }

          v34 = *(a1 + 528);
          if (v34)
          {
            CFRelease(v34);
            *(a1 + 528) = 0;
          }

          *(a1 + 544) = -2;
          ++*(a1 + 504);
          values.value = CFNumberCreate(allocator, kCFNumberIntType, (a1 + 504));
          v35 = CFDictionaryCreate(allocator, MEMORY[0x1E6960580], &values, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
          *&v175.duration.value = *MEMORY[0x1E6960CC0];
          v175.duration.epoch = *(MEMORY[0x1E6960CC0] + 16);
          *&v175.presentationTimeStamp.value = v147;
          v175.presentationTimeStamp.epoch = v148;
          *&v175.decodeTimeStamp.value = v147;
          v175.decodeTimeStamp.epoch = v148;
          if (v151)
          {
            CMSampleBufferGetOutputPresentationTimeStamp(&time2.start, v151);
            v175.presentationTimeStamp = time2.start;
          }

          v36 = CMSampleBufferCreate(allocator, 0, 1u, 0, 0, 0, 0, 1, &v175, 0, 0, &time1);
          if (v36)
          {
            FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF16DF0, v36, "<<<< VideoMentor >>>>", 9027);
          }

          else
          {
            CMSetAttachment(time1.value, key, values.value, 1u);
            v37 = *(a1 + 24);
            v38 = *(*(CMBaseObjectGetVTable() + 16) + 64);
            if (v38)
            {
              v38(v37, v134, v35, 0);
            }

            v39 = *(a1 + 24);
            v40 = *(*(CMBaseObjectGetVTable() + 16) + 64);
            if (v40)
            {
              v40(v39, v133, 0, 0);
            }

            if (values.value)
            {
              CFRelease(values.value);
            }

            if (v35)
            {
              CFRelease(v35);
            }

            v41 = *(a1 + 24);
            value = time1.value;
            v43 = *(*(CMBaseObjectGetVTable() + 16) + 8);
            if (v43)
            {
              v44 = v43(v41, value);
              if (!v44)
              {
                goto LABEL_43;
              }

              v63 = v44;
            }

            else
            {
              v63 = 4294954514;
            }

            FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF16DF0, v63, "<<<< VideoMentor >>>>", 9044);
          }

LABEL_114:
          v75 = v64;
          v77 = v154;
LABEL_117:
          if (*(a1 + 492))
          {
            videoMentorPostCollectorCoherenceConduitNotification(a1);
            *(a1 + 492) = 0;
            if (*v146)
            {
              goto LABEL_119;
            }
          }

          else if (*v146)
          {
LABEL_119:
            if (v75 + 1 <= 1)
            {
              videoMentorPostMinAndMaxUpcomingOutputPTS(a1, MEMORY[0x1E6960C70], MEMORY[0x1E6960C70]);
            }
          }

          videoMentorThreadFinishPreroll(a1, 0, v150);
          if (!*a1)
          {
            v78 = @"MentorStoppingDueToCompletion";
            if (v75)
            {
              v78 = @"MentorStoppingDueToError";
            }

            if (v75 == -1)
            {
              v79 = 0;
            }

            else
            {
              v79 = v75;
            }

            if (v75 == -1)
            {
              v80 = @"MentorResettingDueToModeSwitch";
            }

            else
            {
              v80 = v78;
            }

            v81 = FigMentorNotificationPayloadCreate(v80, v150, v79, *(a1 + 520), v77, 0);
            CMNotificationCenterGetDefaultLocalCenter();
            v30 = v154;
            CMNotificationCenterPostNotification();
            if (v81)
            {
              CFRelease(v81);
            }
          }

          videoMentorThrottlingStateFree(a1 + 584);
          v70 = time1.value;
          if (!time1.value)
          {
            goto LABEL_134;
          }

LABEL_133:
          CFRelease(v70);
          goto LABEL_134;
        }

LABEL_43:
        if (v151)
        {
          if (CMGetAttachment(v151, v135, 0) == v137)
          {
            if (v137 == CMGetAttachment(v151, v132, 0))
            {
              CMSampleBufferGetOutputPresentationTimeStamp(&v175.duration, v151);
              v47 = &v175;
              v46 = a1;
              v45 = MEMORY[0x1E6960C80];
            }

            else
            {
              CMSampleBufferGetOutputPresentationTimeStamp(&v175.duration, v151);
              v45 = &v175;
              v46 = a1;
              v47 = MEMORY[0x1E6960C88];
            }

            v71 = videoMentorEnqueueTimestampIntervalMarker(v46, v45, v47);
            if (v71)
            {
              FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF16DF0, v71, "<<<< VideoMentor >>>>", 9059);
              goto LABEL_114;
            }
          }

          v72 = *(a1 + 24);
          v73 = *(*(CMBaseObjectGetVTable() + 16) + 8);
          if (v73)
          {
            v74 = v73(v72, v151);
            if (!v74)
            {
              goto LABEL_110;
            }

            v76 = v74;
          }

          else
          {
            v76 = 4294954514;
          }

          FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF16DF0, v76, "<<<< VideoMentor >>>>", 9063);
          goto LABEL_114;
        }

LABEL_110:
        if (v154)
        {
          v75 = audioMentorEnqueueBufferConsumedMarker(a1, v154);
        }

        else
        {
          v75 = 0;
        }

        v77 = 0;
        goto LABEL_117;
      }

      *&v175.duration.value = v160;
      v175.duration.epoch = v161;
      *&time2.start.value = v158;
      time2.start.epoch = v159;
      v29 = v149;
      v57 = v11;
      v28 = v150;
      v58 = v10;
      v30 = v154;
      videoMentorThreadReversePlayback(a1, v153, &v175.duration, v149, &time2.start, v57, v58, v13, v145, v142, v144, v143, v146[0], &v157, v154, v150);
LABEL_134:
      *(a1 + 380) = v160;
      *(a1 + 396) = v161;
      *(a1 + 404) = v158;
      *(a1 + 420) = v159;
      if (v152)
      {
        CFRelease(v152);
      }

      if (v153)
      {
        CFRelease(v153);
      }

      if (v29)
      {
        CFRelease(v29);
      }

      if (v151)
      {
        CFRelease(v151);
      }

      if (v157)
      {
        CFRelease(v157);
      }

      if (v30)
      {
        CFRelease(v30);
      }

      if (v28)
      {
        CFRelease(v28);
      }

      if (*(a1 + 112) != 5)
      {
        if (*(a1 + 116))
        {
          continue;
        }

        do
        {
          FigSemaphoreWaitRelative();
        }

        while (!*(a1 + 116));
        if (*(a1 + 112) != 5)
        {
          continue;
        }
      }

      goto LABEL_4;
    }

    if (v5 != 1)
    {
      v27 = v5 == 2;
      v29 = v149;
      v28 = v150;
      v30 = v154;
      if (v27)
      {
        *&v175.duration.value = v160;
        v175.duration.epoch = v161;
        *&time2.start.value = v158;
        time2.start.epoch = v159;
        videoMentorThreadForwardPlayback(a1, v153, &v175.duration, v149, &time2.start, v13, v139, v145, v15, v16, v142, v17, v144, v143, v146[0], v21, v22, 0, &v157, v154, v24, v26, v150);
      }

      goto LABEL_134;
    }

    v49 = 0;
    v155.epoch = v163;
    ++*(a1 + 916);
    *(a1 + 492) = *(a1 + 488) != 0;
    *&v155.value = v162;
    v173 = 0;
    v174 = v152;
    v172 = 1;
    v171 = 0;
    v170 = 0;
    *(a1 + 496) = 2;
    v29 = v149;
    v30 = v154;
    if (!v152)
    {
      *&v175.duration.value = v162;
      v175.duration.epoch = v163;
      CursorForPresentationTimeStamp = videoMentorCreateCursorForPresentationTimeStamp(a1, v144, &v175.duration.value, &v174);
      if (CursorForPresentationTimeStamp)
      {
        LODWORD(v52) = CursorForPresentationTimeStamp;
        v61 = 0;
        v49 = 0;
        goto LABEL_79;
      }

      v49 = 1;
    }

    if ((v155.flags & 0x1D) == 1)
    {
LABEL_56:
      if (v140 != 2)
      {
        goto LABEL_162;
      }

      *&time1.value = v147;
      time1.epoch = v148;
      v50 = v174;
      v51 = *(*(CMBaseObjectGetVTable() + 16) + 40);
      if (v51)
      {
        LODWORD(v52) = v51(v50, &time1);
        if (!v52)
        {
          v175.duration = time1;
          time2.start = v155;
          if (CMTimeCompare(&v175.duration, &time2.start))
          {
            *&values.value = v147;
            values.epoch = v148;
            *&rhs.value = v147;
            rhs.epoch = v148;
            v53 = *(MEMORY[0x1E6960C98] + 16);
            *&v175.duration.value = *MEMORY[0x1E6960C98];
            *&v175.duration.epoch = v53;
            *&v175.presentationTimeStamp.timescale = *(MEMORY[0x1E6960C98] + 32);
            v54 = v174;
            v55 = *(*(CMBaseObjectGetVTable() + 16) + 40);
            if (v55)
            {
              v56 = v55(v54, &values);
              if (!v56)
              {
                CursorPTSRange = FigSampleCursorStepInPresentationOrderAndReportStepsTaken(v174, 1, &v170);
                v30 = v154;
                if (!CursorPTSRange)
                {
                  CursorPTSRange = videoMentorGetCursorPTSRange(v174, &v175);
                  if (!CursorPTSRange)
                  {
                    *&time2.start.value = *&v175.duration.value;
                    *&time2.start.epoch = *&v175.duration.epoch;
                    *&time2.duration.timescale = *&v175.presentationTimeStamp.timescale;
                    CMTimeRangeGetEnd(&rhs, &time2);
                    time2.start = values;
                    v165 = rhs;
                    videoMentorThreadForwardPlayback(a1, 0, &time2.start, 0, &v165, v139, v139, v145, 0.0, 0.0, 0, 0, v144, v143, 0, 0, 0, 1, &v157, v154, 0, 0, v150);
                    v61 = 0;
                    ++*(a1 + 920);
                    if (!v49)
                    {
LABEL_101:
                      if (v173)
                      {
                        CFRelease(v173);
                        v173 = 0;
                      }

                      v28 = v150;
                      if (!v61)
                      {
                        goto LABEL_134;
                      }

                      v70 = v61;
                      goto LABEL_133;
                    }

LABEL_99:
                    if (v174)
                    {
                      CFRelease(v174);
                      v174 = 0;
                    }

                    goto LABEL_101;
                  }
                }

                LODWORD(v52) = CursorPTSRange;
                goto LABEL_157;
              }

              LODWORD(v52) = v56;
            }

            else
            {
              LODWORD(v52) = -12782;
            }

            v30 = v154;
LABEL_157:
            v61 = 0;
            goto LABEL_79;
          }

          v30 = v154;
LABEL_162:
          if (*MEMORY[0x1E695FF58] == 1)
          {
            kdebug_trace();
          }

          if (v141)
          {
            if (CFArrayGetCount(v141) < 1 || (v83 = v174, (v84 = *(*(CMBaseObjectGetVTable() + 16) + 8)) == 0) || v84(v83, &v173))
            {
              v61 = 0;
            }

            else
            {
              CachedVideoFrameForCursor = videoMentorGetCachedVideoFrameForCursor(a1, v173, v141, v150);
              v61 = CachedVideoFrameForCursor;
              if (CachedVideoFrameForCursor)
              {
                CFRetain(CachedVideoFrameForCursor);
                v86 = v174;
                v174 = v173;
                if (v173)
                {
                  CFRetain(v173);
                }

                if (v86)
                {
                  CFRelease(v86);
                }
              }

              if (v173)
              {
                CFRelease(v173);
                v173 = 0;
              }
            }

            CFRelease(v141);
            v157 = 0;
          }

          else
          {
            v61 = 0;
          }

          videoMentorDependencyStateStartNewOrder(a1, (a1 + 744));
          if (v87)
          {
            goto LABEL_180;
          }

          LOBYTE(v165.value) = 0;
          v175.duration = v155;
          time2.start = v155;
          time1 = v155;
          values = v156;
          v87 = videoMentorDependencyStateCopyCursorForDecodeWalk(a1, a1 + 744, 1, v150, v145, &v175, &time2, &time1, 0, MEMORY[0x1E6960C70], MEMORY[0x1E6960C70], MEMORY[0x1E6960C70], v174, 0, &values.value, &v165, &v171, &v172, 0, &v173);
          if (v87)
          {
            goto LABEL_180;
          }

          v88 = LOBYTE(v165.value) == 0;
          if (!v171)
          {
            time1 = v155;
            v95 = (a1 + 552);
            while (1)
            {
              v95 = *v95;
              if (!v95)
              {
                break;
              }

              v96 = *(v95 + 2);
              *&v175.duration.value = *(v95 + 1);
              *&v175.duration.epoch = v96;
              *&v175.presentationTimeStamp.timescale = *(v95 + 3);
              time2.start = time1;
              if (CMTimeRangeContainsTime(&v175, &time2.start))
              {
                LODWORD(v52) = videoMentorThreadGenerateAndEnqueueFrame(a1, v95[1], 3, 2, v172, 1, 0, v88, v143, MEMORY[0x1E6960C70], MEMORY[0x1E6960C70], MEMORY[0x1E6960C70], v150);
                if (v52)
                {
                  v65 = v30;
                  v29 = v149;
                  goto LABEL_80;
                }

                v172 = 0;
                v29 = v149;
                goto LABEL_265;
              }
            }

            v97 = *v131;
            if (*v131)
            {
              v98 = *(a1 + 528);
              if (v98)
              {
                while (1)
                {
                  v99 = v97[1];
                  v100 = *(CMBaseObjectGetVTable() + 16);
                  v101 = v100 ? v100 : 0;
                  if (v98 && (v102 = *(CMBaseObjectGetVTable() + 16)) != 0)
                  {
                    v103 = v102;
                  }

                  else
                  {
                    v103 = 0;
                  }

                  if (v101 != v103 || !*(v101 + 32) || (*(v103 + 32))(v99, v98) != 1)
                  {
                    v104 = *(v97 + 2);
                    *&v175.duration.value = *(v97 + 1);
                    *&v175.duration.epoch = v104;
                    *&v175.presentationTimeStamp.timescale = *(v97 + 3);
                    CMTimeRangeGetEnd(&time2.start, &v175);
                    v175.duration = v155;
                    if (CMTimeCompare(&time2.start, &v175.duration) > 0)
                    {
                      break;
                    }
                  }

                  v97 = *v97;
                  if (!v97)
                  {
                    goto LABEL_215;
                  }

                  v98 = *(a1 + 528);
                }
              }

              else
              {
LABEL_215:
                videoMentorResetSavedListAndEnqueueMarker(a1);
              }
            }

            v105 = v173;
            if (!v173)
            {
              LODWORD(v52) = 0;
              v29 = v149;
              v30 = v154;
              goto LABEL_265;
            }

            v106 = v174;
            if (!v61)
            {
              v107 = *(CMBaseObjectGetVTable() + 16);
              if (v107)
              {
                v108 = v107;
              }

              else
              {
                v108 = 0;
              }

              if (v106 && (v109 = *(CMBaseObjectGetVTable() + 16)) != 0)
              {
                v110 = v109;
              }

              else
              {
                v110 = 0;
              }

              if (v108 == v110 && *(v108 + 32))
              {
                v111 = (*(v110 + 32))(v105, v106);
                if (v111 == 1)
                {
                  LODWORD(v52) = 0;
                  v29 = v149;
                  v30 = v154;
LABEL_264:
                  videoMentorEnqueueDrainAfterDecodingMarker(a1);
                  goto LABEL_265;
                }
              }

              else
              {
                v111 = 0;
              }

              v30 = v154;
              while (1)
              {
                values.value = 0;
                NodeForCursor = videoMentorDependencyStateGetNodeForCursor(a1, a1 + 744, v173, v150, 0, &values);
                if (NodeForCursor)
                {
LABEL_286:
                  LODWORD(v52) = NodeForCursor;
                  goto LABEL_280;
                }

                v113 = values.value;
                if (!values.value)
                {
                  videoMentorThread_cold_1(&v175);
                  LODWORD(v52) = v175.duration.value;
                  goto LABEL_280;
                }

                if (*(values.value + 76) == 2)
                {
                  v114 = 0;
                  if (v111 && *(a1 + 549))
                  {
                    v115 = *(MEMORY[0x1E6960C98] + 16);
                    *&v175.duration.value = *MEMORY[0x1E6960C98];
                    *&v175.duration.epoch = v115;
                    *&v175.presentationTimeStamp.timescale = *(MEMORY[0x1E6960C98] + 32);
                    if (videoMentorGetCursorPTSRange(v173, &v175))
                    {
                      v114 = 0;
                    }

                    else
                    {
                      *&time2.start.value = *&v175.duration.value;
                      *&time2.start.epoch = *&v175.duration.epoch;
                      *&time2.duration.timescale = *&v175.presentationTimeStamp.timescale;
                      CMTimeRangeGetEnd(&time1, &time2);
                      time2.start = v155;
                      v114 = CMTimeCompare(&time1, &time2.start) > 0;
                    }
                  }

                  if (v111)
                  {
                    v117 = 2;
                  }

                  else
                  {
                    v117 = 3;
                  }

                  NodeForCursor = videoMentorThreadGenerateAndEnqueueFrame(a1, v173, v117, v114, v172, 1, 0, v88, v143, MEMORY[0x1E6960C70], MEMORY[0x1E6960C70], MEMORY[0x1E6960C70], v150);
                  if (NodeForCursor)
                  {
                    goto LABEL_286;
                  }

                  LOBYTE(v88) = 0;
                  v172 = 0;
                  v116 = 1;
                }

                else
                {
                  v116 = 0;
                }

                videoMentorUpdateDecoderState(a1, v113, v116);
                if (!v111)
                {
                  goto LABEL_262;
                }

                v118 = v173;
                v119 = *(*(CMBaseObjectGetVTable() + 16) + 168);
                if (!v119)
                {
                  LODWORD(v52) = -12782;
                  goto LABEL_279;
                }

                v120 = v119(v118, 1, &v170);
                if (v120)
                {
                  break;
                }

                if (v170 != 1)
                {
                  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", sampleTimingArray, v129, sampleSizeArray);
                  LODWORD(v52) = v127;
                  goto LABEL_263;
                }

                v121 = v173;
                v122 = v174;
                v123 = *(CMBaseObjectGetVTable() + 16);
                if (v123)
                {
                  v124 = v123;
                }

                else
                {
                  v124 = 0;
                }

                if (v122 && (v125 = *(CMBaseObjectGetVTable() + 16)) != 0)
                {
                  v126 = v125;
                }

                else
                {
                  v126 = 0;
                }

                if (v124 == v126 && *(v124 + 32))
                {
                  v111 = (*(v126 + 32))(v121, v122);
                }

                else
                {
                  v111 = 0;
                }

                v30 = v154;
                if (v111 == 1)
                {
LABEL_262:
                  LODWORD(v52) = 0;
LABEL_263:
                  v29 = v149;
                  goto LABEL_264;
                }
              }

              LODWORD(v52) = v120;
LABEL_279:
              FigSignalErrorAtGM("%s signalled err=%d at <>:%d", sampleTimingArray, v129, sampleSizeArray);
LABEL_280:
              v29 = v149;
              goto LABEL_157;
            }

            LODWORD(v52) = videoMentorThreadResendCachedSampleBuffer(a1, v174, v61, 3, v172, 0, v143, MEMORY[0x1E6960C70], MEMORY[0x1E6960C70], MEMORY[0x1E6960C70], v150);
            v29 = v149;
            v30 = v154;
            if (v52)
            {
              goto LABEL_79;
            }

LABEL_265:
            v65 = v30;
            if (v30 && !v52)
            {
              LODWORD(v52) = audioMentorEnqueueBufferConsumedMarker(a1, v30);
              v65 = 0;
            }

            ++*(a1 + 920);
LABEL_80:
            if (*(a1 + 492))
            {
              videoMentorPostCollectorCoherenceConduitNotification(a1);
              *(a1 + 492) = 0;
            }

            if (*MEMORY[0x1E695FF58] == 1)
            {
              kdebug_trace();
            }

            if (v157)
            {
              CFRelease(v157);
              v157 = 0;
            }

            if (!*a1)
            {
              v66 = @"MentorStoppingDueToCompletion";
              if (v52)
              {
                v66 = @"MentorStoppingDueToError";
              }

              if (v52 == -1)
              {
                v67 = 0;
              }

              else
              {
                v67 = v52;
              }

              if (v52 == -1)
              {
                v68 = @"MentorResettingDueToModeSwitch";
              }

              else
              {
                v68 = v66;
              }

              v69 = FigMentorNotificationPayloadCreate(v68, v150, v67, *(a1 + 520), v65, 0);
              CMNotificationCenterGetDefaultLocalCenter();
              CMNotificationCenterPostNotification();
              if (v69)
              {
                CFRelease(v69);
              }

              v30 = v154;
            }

            if (!v49)
            {
              goto LABEL_101;
            }

            goto LABEL_99;
          }

          memset(&v175, 0, 24);
          memset(&time2, 0, 24);
          memset(&time1, 0, sizeof(time1));
          v89 = v174;
          v90 = *(*(CMBaseObjectGetVTable() + 16) + 40);
          if (v90)
          {
            v29 = v149;
            v52 = v90(v89, &v175);
            if (!v52)
            {
              if ((v175.duration.flags & 0x1D) == 1)
              {
                v91 = v174;
                v92 = *(*(CMBaseObjectGetVTable() + 16) + 56);
                if (!v92)
                {
LABEL_188:
                  *&time2.start.value = *MEMORY[0x1E6960CC0];
                  time2.start.epoch = *(MEMORY[0x1E6960CC0] + 16);
LABEL_189:
                  values = v175.duration;
                  rhs = time2.start;
                  CMTimeAdd(&time1, &values, &rhs);
                  FigSimpleMutexLock();
                  v94 = *(a1 + 64);
                  if (v94)
                  {
                    v94(*(a1 + 72), v150, 0, &v175, &time1);
                  }

                  FigSimpleMutexUnlock();
                  values = v175.duration;
                  rhs = time1;
                  videoMentorEnqueueTimestampIntervalMarker(a1, &values.value, &rhs.value);
                  LODWORD(v52) = 0;
                  goto LABEL_265;
                }

                v93 = v92(v91, &time2);
                if (v93)
                {
                  LODWORD(v52) = v93;
                  if (v93 != -12782)
                  {
                    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF16DF0, v93, "<<<< VideoMentor >>>>", 6389);
                    goto LABEL_79;
                  }

                  goto LABEL_188;
                }

                if ((time2.start.flags & 0x1D) == 1)
                {
                  goto LABEL_189;
                }

                FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF16DF0, 4294967294, "<<<< VideoMentor >>>>", 6389);
              }

              else
              {
                FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF16DF0, 4294967294, "<<<< VideoMentor >>>>", 6388);
              }

LABEL_180:
              LODWORD(v52) = v87;
              goto LABEL_79;
            }
          }

          else
          {
            v52 = 4294954514;
            v29 = v149;
          }

          FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF16DF0, v52, "<<<< VideoMentor >>>>", 6388);
          goto LABEL_79;
        }
      }

      else
      {
        LODWORD(v52) = -12782;
      }

      goto LABEL_78;
    }

    v59 = v174;
    v60 = *(*(CMBaseObjectGetVTable() + 16) + 40);
    if (v60)
    {
      LODWORD(v52) = v60(v59, &v155);
      if (!v52)
      {
        v30 = v154;
        if ((v155.flags & 0x1D) == 1)
        {
          goto LABEL_56;
        }

        videoMentorThread_cold_2(&v175);
        v61 = 0;
        LODWORD(v52) = v175.duration.value;
LABEL_79:
        v65 = v30;
        goto LABEL_80;
      }
    }

    else
    {
      LODWORD(v52) = -12782;
    }

    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", sampleTimingArray, v129, sampleSizeArray);
LABEL_78:
    v61 = 0;
    v30 = v154;
    goto LABEL_79;
  }

LABEL_4:
  v2 = *(a1 + 528);
  if (v2)
  {
    CFRelease(v2);
    *(a1 + 528) = 0;
  }

  v3 = *(a1 + 536);
  if (v3)
  {
    CFRelease(v3);
    *(a1 + 536) = 0;
  }

  if (cf)
  {
    CFRelease(cf);
  }

  return 0;
}

void VideoMentorDispose(uint64_t *a1)
{
  if (a1)
  {
    VideoMentorInvalidate(a1);
    if (a1[11])
    {
      FigSemaphoreDestroy();
      a1[11] = 0;
    }

    if (a1[12])
    {
      FigSimpleMutexDestroy();
      a1[12] = 0;
    }

    if (a1[10])
    {
      FigSimpleMutexDestroy();
      a1[10] = 0;
    }

    if (a1[33])
    {
      FigSimpleMutexDestroy();
      a1[33] = 0;
    }

    if (a1[15])
    {
      FigSemaphoreDestroy();
      a1[15] = 0;
    }

    v2 = a1[16];
    if (v2)
    {
      CFRelease(v2);
    }

    v3 = a1[21];
    if (v3)
    {
      CFRelease(v3);
    }

    v4 = a1[25];
    if (v4)
    {
      CFRelease(v4);
    }

    v5 = a1[57];
    if (v5)
    {
      CFRelease(v5);
    }

    v6 = a1[58];
    if (v6)
    {
      CFRelease(v6);
    }

    v7 = a1[59];
    if (v7)
    {
      CFRelease(v7);
    }

    v8 = a1[60];
    if (v8)
    {
      CFRelease(v8);
    }

    videoMentorDependencyStateReset(a1 + 93);
    v9 = a1[1];
    if (v9)
    {
      CFRelease(v9);
    }

    v10 = a1[2];
    if (v10)
    {
      CFRelease(v10);
    }

    v11 = a1[3];
    if (v11)
    {
      CFRelease(v11);
    }

    v12 = a1[6];
    if (v12)
    {
      CFRelease(v12);
    }

    free(a1);
  }
}

uint64_t VideoMentorSetTimeRemapCallback(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  FigSimpleMutexLock();
  a1[7] = a2;
  a1[8] = a3;
  a1[9] = a4;
  FigSimpleMutexUnlock();
  return 0;
}

void vmc2DecodeUntilHighWaterMet(uint64_t a1)
{
  valuePtr = 0;
  propertyValueOut = 0;
  FigSimpleMutexLock();
  v2 = MEMORY[0x1E695FF58];
  if (*MEMORY[0x1E695FF58] == 1)
  {
    kdebug_trace();
  }

  if (!*(a1 + 288))
  {
    goto LABEL_319;
  }

  v3 = 0;
  v143 = *MEMORY[0x1E6983968];
  allocator = *MEMORY[0x1E695E480];
  v4 = (a1 + 192);
  key = *MEMORY[0x1E6960458];
  v128 = *MEMORY[0x1E6960460];
  v139 = *MEMORY[0x1E695E4D0];
  v127 = *MEMORY[0x1E6960438];
  v138 = *MEMORY[0x1E69604B0];
  v125 = *MEMORY[0x1E69604F8];
  v137 = *MEMORY[0x1E6960490];
  v136 = *MEMORY[0x1E6962E00];
  v135 = *MEMORY[0x1E6962E20];
  v134 = *MEMORY[0x1E6962E08];
  v126 = *MEMORY[0x1E6962DC8];
  v145 = (a1 + 392);
  v124 = (a1 + 344);
  v133 = *MEMORY[0x1E6960518];
  v142 = *MEMORY[0x1E6960500];
  v132 = (a1 + 224);
  v140 = *MEMORY[0x1E69605B0];
  v141 = *MEMORY[0x1E6962E10];
  while (vmc2GetWaterLevelState(a1) != 2)
  {
    v5 = *(a1 + 64);
    if (v5)
    {
      VTSessionCopyProperty(v5, v143, allocator, &propertyValueOut);
    }

    if (propertyValueOut)
    {
      CFNumberGetValue(propertyValueOut, kCFNumberSInt32Type, &valuePtr);
      if (propertyValueOut)
      {
        CFRelease(propertyValueOut);
        propertyValueOut = 0;
      }
    }

    else
    {
      valuePtr = 0;
    }

    FigReadWriteLockLockForRead();
    if (!*(a1 + 249))
    {
      vmc2DecodeUntilHighWaterMet_cold_1();
LABEL_14:
      v6 = 99;
      goto LABEL_16;
    }

    if (!*v4)
    {
      goto LABEL_14;
    }

    v6 = (*v4)(*(a1 + 152));
LABEL_16:
    FigReadWriteLockUnlockForRead();
    v7 = valuePtr;
    v8 = *(a1 + 592);
    WaterLevelState = vmc2GetWaterLevelState(a1);
    if (v6 <= v7)
    {
      v112 = WaterLevelState == 2 && *(a1 + 440) == 0;
      v115 = a1;
      v114 = v8;
      v116 = 0;
      goto LABEL_318;
    }

    if (WaterLevelState)
    {
      v10 = *(a1 + 440) != 0;
    }

    else
    {
      v10 = 1;
    }

    v11 = vmc2GetWaterLevelState(a1) == 2 && *(a1 + 440) == 0;
    v12 = 1;
    vmc2UpdateTroubleMonitor(a1, v8, v10, v11, 1);
    v155 = 0;
    pixelBufferOut = 0;
    v153 = 0;
    cf = 0;
    context = 0;
    if (*(a1 + 880))
    {
      v13 = 8;
    }

    else
    {
      v13 = 9;
    }

    FigSimpleMutexLock();
    v14 = *(a1 + 88);
    v15 = *(*(CMBaseObjectGetVTable() + 16) + 8);
    if (v15)
    {
      v12 = v15(v14) == 0;
    }

    *(a1 + 312) = v12;
    v16 = *(a1 + 88);
    v17 = *(*(CMBaseObjectGetVTable() + 16) + 24);
    if (v17)
    {
      v18 = v17(v16);
      v19 = v18 != 0;
      *(a1 + 592) = v19;
      if (v18)
      {
        v20 = v18;
        SampleAttachmentsArray = CMSampleBufferGetSampleAttachmentsArray(v18, 0);
        if (SampleAttachmentsArray)
        {
          ValueAtIndex = CFArrayGetValueAtIndex(SampleAttachmentsArray, 0);
          v23 = v139;
          if (ValueAtIndex)
          {
            v24 = ValueAtIndex;
            v25 = CFDictionaryGetValue(ValueAtIndex, key);
            HIDWORD(v119) = v25 != v139;
            v26 = CFDictionaryGetValue(v24, v128) == v139 || v25 != v139;
            value.value = 0;
            LODWORD(v160.value) = 0;
            CFDictionaryGetValueIfPresent(v24, v127, &value);
            LODWORD(time1.value) = 0;
            FigCFDictionaryGetIntIfPresent();
            if (value.value)
            {
              FigCFDictionaryGetIntIfPresent();
            }

            v27 = v160.value;
            v28 = *(a1 + 620);
            if (SLODWORD(v160.value) > v28)
            {
              *(a1 + 620) = v160.value;
              v28 = v27;
            }

            if (v26)
            {
              v29 = *(a1 + 616);
              if (v28 < v29)
              {
                v28 = v29 - 1;
              }

              *(a1 + 616) = v28;
              *(a1 + 620) = 0;
            }

            if (v25 != v139 && (LODWORD(time1.value) == 21 || LODWORD(time1.value) == 16))
            {
              *(a1 + 1089) = 1;
            }
          }

          else
          {
            HIDWORD(v119) = 0;
          }
        }

        else
        {
          HIDWORD(v119) = 0;
          v23 = v139;
        }

        if (*(a1 + 440))
        {
          CompressedFrameOutputMode = vmcGetCompressedFrameOutputMode(v20);
          if ((CompressedFrameOutputMode & 3) != 1)
          {
            *(a1 + 441) = 1;
          }
        }

        else
        {
          CompressedFrameOutputMode = 0;
        }

        if (CMGetAttachment(v20, v138, 0) == v23)
        {
          v48 = CMGetAttachment(v20, v125, 0) == v23;
          v47 = v48;
        }

        else
        {
          v47 = 0;
          LOBYTE(v48) = 1;
        }

        v120 = CMGetAttachment(v20, v137, 0);
        v122 = CMGetAttachment(v20, v136, 0);
        v49 = CMGetAttachment(v20, v135, 0);
        v130 = CMGetAttachment(v20, v134, 0) == v23;
        v50 = CMSampleBufferGetSampleAttachmentsArray(v20, 0);
        v121 = v49;
        v123 = v48;
        if (v50 && (v51 = CFArrayGetValueAtIndex(v50, 0)) != 0 && CFDictionaryGetValue(v51, v126))
        {
          v52 = (a1 + 800);
          do
          {
            v52 = *v52;
          }

          while (v52 && !FigCFEqual());
        }

        else
        {
          v52 = 0;
        }

        context = a1;
        v153 = v20;
        dispatch_sync_f(*(a1 + 816), &context, vmc2UpdateCPECryptor);
        *(a1 + 730) = v47;
        if (v47)
        {
          vmc2RecalculateUpcomingImageTimes(a1);
        }

        NumSamples = CMSampleBufferGetNumSamples(v20);
        if (NumSamples < 1)
        {
          v55 = 0;
        }

        else
        {
          CompressedFrameOutputMode = vmcGetCompressedFrameOutputMode(v20);
          memset(&value, 0, sizeof(value));
          CMSampleBufferGetOutputPresentationTimeStamp(&value, v20);
          if ((CompressedFrameOutputMode & 3) == 1)
          {
            v54 = MEMORY[0x1E6960C70];
            *v145 = *MEMORY[0x1E6960C70];
            *(a1 + 408) = *(v54 + 16);
          }

          else
          {
            *v145 = *&value.value;
            *(a1 + 408) = value.epoch;
            if (*(a1 + 64))
            {
              memset(&v160, 0, sizeof(v160));
              CMSampleBufferGetOutputDuration(&v160, v20);
              time1 = value;
              time2 = *(a1 + 320);
              if (CMTimeCompare(&time1, &time2) < 0)
              {
                *(a1 + 320) = value;
                v56 = 1;
              }

              else
              {
                v56 = 0;
              }

              if (value.flags)
              {
                time1 = value;
                *&time2.value = *v124;
                time2.epoch = *(a1 + 360);
                if (CMTimeCompare(&time1, &time2) > 0 || (*(a1 + 356) & 1) == 0)
                {
                  *v124 = *&value.value;
                  *(a1 + 360) = value.epoch;
                  v56 = 1;
                }
              }

              if (value.flags)
              {
                if (v160.flags & 1) == 0 || (time2 = value, rhs = v160, CMTimeAdd(&time1, &time2, &rhs), value = time1, (time1.flags))
                {
                  if ((*(a1 + 380) & 1) == 0 || (time1 = value, time2 = *(a1 + 368), CMTimeCompare(&time1, &time2) >= 1))
                  {
                    *(a1 + 368) = value;
                  }
                }
              }

              if (v56)
              {
                ++*(a1 + 316);
                vmc2RecalculateUpcomingImageTimes(a1);
              }
            }
          }

          *(a1 + 312) = 0;
          v55 = 1;
        }

        v131 = v55;
        FigSimpleMutexUnlock();
        v57 = CMGetAttachment(v20, v133, 0);
        if (v57)
        {
          v58 = *(a1 + 64);
          if (v58)
          {
            VTDecompressionSessionWaitForAsynchronousFrames(v58);
          }
        }

        FigSimpleMutexLock();
        v59 = *(a1 + 792);
        v60 = *(a1 + 784);
        if (v60)
        {
          v61 = 0;
        }

        else
        {
          v61 = *(a1 + 792);
        }

        v146 = v61;
        if (v57 && v60)
        {
          if (CFEqual(v57, v60))
          {
            v62 = *(a1 + 784);
            if (v62)
            {
              CFRelease(v62);
              *(a1 + 784) = 0;
            }

            v146 = v59;
          }

          else
          {
            v146 = 0;
          }
        }

        FigSimpleMutexUnlock();
        if (!*(a1 + 728))
        {
          v2 = MEMORY[0x1E695FF58];
          goto LABEL_154;
        }

        v2 = MEMORY[0x1E695FF58];
        if (v123)
        {
          v63 = v131;
          if (v47)
          {
            v63 = 1;
          }

          v131 = v63;
LABEL_154:
          if (NumSamples < 1)
          {
            SourceFrameInfo = 0;
            goto LABEL_171;
          }

          SourceFrameInfo = vmcCreateSourceFrameInfo(a1, CompressedFrameOutputMode, v20, v146);
          vmcCreateAttachmentsDictionaryForSourceFrameInfo(a1, SourceFrameInfo, v20);
          if ((CompressedFrameOutputMode & 7) == 1)
          {
            v13 |= 2u;
          }

          FigSimpleMutexLock();
          v64 = *(a1 + 584);
          if (v64)
          {
            v65 = CFRetain(v64);
          }

          else
          {
            v65 = 0;
          }

          FigSimpleMutexUnlock();
          if ((CompressedFrameOutputMode & 3) != 0 || *(a1 + 608) || !v65)
          {
            if (v65)
            {
              goto LABEL_169;
            }
          }

          else
          {
            if (!*(a1 + 877) && CMTimebaseGetRate(v65) > 0.9 && CMTimebaseGetRate(v65) < 1.1)
            {
              CFRelease(v65);
              v13 |= 4u;
              ++*(a1 + 1140);
LABEL_171:
              ImageBuffer = CMSampleBufferGetImageBuffer(v20);
              pixelBufferOut = ImageBuffer;
              if (ImageBuffer)
              {
                CFRetain(ImageBuffer);
                if (!VTPixelBufferConformerCopyConformedPixelBuffer())
                {
                  v70 = pixelBufferOut;
                  pixelBufferOut = cf;
                  if (cf)
                  {
                    CFRetain(cf);
                  }

                  if (v70)
                  {
                    CFRelease(v70);
                  }

                  v30 = 1;
                  if ((v13 & 2) == 0)
                  {
                    vmc2UpdateSessionMinAndMaxOutputPTS(a1);
                    v71 = pixelBufferOut;
                    CMSampleBufferGetOutputPresentationTimeStamp(&value, v20);
                    CMSampleBufferGetOutputDuration(&v160, v20);
                    vmc2OutputFrameInternal(a1, SourceFrameInfo, 0, 0, v71, 0, &value, &v160.value, 1);
                  }

                  v31 = 0;
                  SourceFrameInfo = 0;
LABEL_199:
                  v19 = 1;
                  v32 = v130;
LABEL_200:
                  v33 = v131;
                  goto LABEL_51;
                }

LABEL_253:
                v31 = 0;
LABEL_198:
                v30 = 1;
                goto LABEL_199;
              }

              TaggedBufferGroup = FigSampleBufferGetTaggedBufferGroup();
              if (TaggedBufferGroup)
              {
                v31 = TaggedBufferGroup;
                CFRetain(TaggedBufferGroup);
                if (VTPixelBufferConformerCopyConformedTaggedBufferGroup())
                {
                  goto LABEL_198;
                }

                CFRelease(v31);
                if ((v13 & 2) == 0)
                {
                  vmc2UpdateSessionMinAndMaxOutputPTS(a1);
                  v73 = v155;
                  CMSampleBufferGetOutputPresentationTimeStamp(&value, v20);
                  CMSampleBufferGetOutputDuration(&v160, v20);
                  vmc2OutputFrameInternal(a1, SourceFrameInfo, 0, 0, 0, v73, &value, &v160.value, 1);
                }

                if (v155)
                {
                  CFRelease(v155);
                  v31 = 0;
                  SourceFrameInfo = 0;
                  v155 = 0;
                  goto LABEL_198;
                }

LABEL_197:
                v31 = 0;
                SourceFrameInfo = 0;
                goto LABEL_198;
              }

              if (v52)
              {
                v74 = vmcGetCompressedFrameOutputMode(v20);
                if (!SourceFrameInfo)
                {
                  SourceFrameInfo = vmcCreateSourceFrameInfo(a1, v74, v20, v146);
                  vmcCreateAttachmentsDictionaryForSourceFrameInfo(a1, SourceFrameInfo, v20);
                }

                vmc2UpdateSessionMinAndMaxOutputPTS(a1);
                v75 = *(v52 + 4);
                v76 = *(v52 + 5);
                v77 = v52[3];
                v78 = v52[4];
                value = *(v52 + 5);
                v160 = *(v52 + 8);
                vmc2OutputFrameInternal(a1, SourceFrameInfo, v75, v76, v77, v78, &value, &v160.value, 0);
                goto LABEL_197;
              }

              if (NumSamples < 1)
              {
                v32 = v130;
                goto LABEL_283;
              }

              FormatDescription = CMSampleBufferGetFormatDescription(v20);
              if (*(a1 + 32) != FormatDescription && FigCFEqual())
              {
                vmc2SetVideoFormatDescription(a1, FormatDescription);
              }

              if (*(a1 + 64) && *(a1 + 32) == FormatDescription)
              {
                goto LABEL_249;
              }

              *(a1 + 1089) = 0;
              FigSimpleMutexLock();
              *(a1 + 1204) = CMFormatDescriptionGetMediaSubType(FormatDescription);
              FigSimpleMutexUnlock();
              v93 = *(a1 + 64);
              if (v93)
              {
                if (VTDecompressionSessionCanAcceptFormatDescription(v93, FormatDescription))
                {
                  vmc2SetVideoFormatDescription(a1, FormatDescription);
                  vmc2BroadcastHDRStatus(a1);
                  goto LABEL_249;
                }

                v94 = *(a1 + 64);
                if (v94)
                {
                  VTDecompressionSessionWaitForAsynchronousFrames(v94);
                }
              }

              FigSimpleMutexLock();
              vmc2RemoveDecompressionSession(a1);
              *(a1 + 1088) = 0;
              vmc2SetVideoFormatDescription(a1, FormatDescription);
              vmc2BroadcastHDRStatus(a1);
              if (!*(a1 + 32))
              {
                FigSimpleMutexUnlock();
                goto LABEL_249;
              }

              v95 = vmc2BuildDecompressionSession(a1);
              FigSimpleMutexUnlock();
              if (!v95)
              {
LABEL_249:
                if (*(a1 + 1058))
                {
                  goto LABEL_250;
                }

                if (!*(a1 + 1057))
                {
                  v97 = BYTE4(v119);
                  if (*(a1 + 64))
                  {
                    v97 = 0;
                  }

                  if (v97)
                  {
                    goto LABEL_260;
                  }

                  goto LABEL_262;
                }

                if (!HIDWORD(v119))
                {
                  goto LABEL_262;
                }

LABEL_260:
                if (*(a1 + 1089) && !*(a1 + 808))
                {
LABEL_262:
                  DataBuffer = CMSampleBufferGetDataBuffer(v20);
                  if (DataBuffer)
                  {
                    if (CMBlockBufferIsRangeContiguous(DataBuffer, 0, 0))
                    {
                      ++*(a1 + 1172);
                    }

                    else
                    {
                      ++*(a1 + 1176);
                    }
                  }

                  v99 = VTDecompressionSessionDecodeFrame(*(a1 + 64), v20, v13, SourceFrameInfo, 0);
                  if (v99)
                  {
                    v100 = v99;
                    v32 = v130;
                    if (v99 == -17690)
                    {
                      v101 = *(a1 + 1080);
                      v102 = *(a1 + 1072);
                      *(a1 + 1080) = v102;
                      if (v102)
                      {
                        CFRetain(v102);
                      }

                      if (v101)
                      {
                        CFRelease(v101);
                      }

                      v103 = *(a1 + 1064);
                      if (v103)
                      {
                        CFRelease(v103);
                        *(a1 + 1064) = 0;
                      }

                      v104 = *(a1 + 1072);
                      if (v104)
                      {
                        CFRelease(v104);
                        *(a1 + 1072) = 0;
                      }

                      v105 = vmc2RebuildDecompressionSession(a1);
                      if (v105)
                      {
                        v106 = v105;
                        CMSampleBufferGetOutputPresentationTimeStamp(&value, v20);
                        vmc2PostDecodeError(a1, &value.value, v106);
                        v31 = 0;
                        SourceFrameInfo = 0;
LABEL_300:
                        v30 = 1;
                        v19 = 1;
                        goto LABEL_200;
                      }

                      SourceFrameInfo = 0;
                    }

                    else
                    {
                      CMSampleBufferGetOutputPresentationTimeStamp(&value, v20);
                      vmc2PostDecodeError(a1, &value.value, v100);
                    }
                  }

                  else
                  {
                    SourceFrameInfo = 0;
                    v32 = v130;
                  }

                  vmc2UpdateSessionMinAndMaxOutputPTS(a1);
LABEL_283:
                  if (*(a1 + 64))
                  {
                    if (v120 == v139 || v122 == v139 || v121)
                    {
                      FigSimpleMutexLock();
                      VTDecompressionSessionFinishDelayedFrames(*(a1 + 64));
                      if (v122 == v139 || v121)
                      {
                        VTDecompressionSessionWaitForAsynchronousFrames(*(a1 + 64));
                      }

                      if (v122 == v139)
                      {
                        vmc2RemoveDecompressionSession(a1);
                      }

                      FigSimpleMutexUnlock();
                      goto LABEL_293;
                    }
                  }

                  else
                  {
LABEL_293:
                    if (v121)
                    {
                      value.value = 0;
                      *&value.timescale = &value;
                      value.epoch = 0x2000000000;
                      v151 = 0;
                      v107 = *(a1 + 984);
                      block[0] = MEMORY[0x1E69E9820];
                      block[1] = 0x40000000;
                      block[2] = __vmc2DequeueAndDecodeFrame_block_invoke;
                      block[3] = &unk_1E7479B28;
                      block[4] = &value;
                      block[5] = a1;
                      dispatch_sync(v107, block);
                      if (*(*&value.timescale + 24))
                      {
                        VTTemporalFilterSessionCompleteFrames();
                      }

                      FigImageQueueGaugeSetEnqueueingComplete(v121);
                      v108 = *(*&value.timescale + 24);
                      if (v108)
                      {
                        CFRelease(v108);
                      }

                      _Block_object_dispose(&value, 8);
                    }
                  }

LABEL_299:
                  v31 = 0;
                  goto LABEL_300;
                }

LABEL_250:
                v96 = vmc2RebuildDecompressionSession(a1);
                if (!v96)
                {
                  goto LABEL_262;
                }

                v95 = v96;
              }

              CMSampleBufferGetOutputPresentationTimeStamp(&value, v20);
              vmc2PostDecodeError(a1, &value.value, v95);
              goto LABEL_253;
            }

LABEL_169:
            CFRelease(v65);
          }

          ++*(a1 + 1136);
          goto LABEL_171;
        }

        v66 = vmcGetCompressedFrameOutputMode(v20);
        SourceFrameInfo = vmcCreateSourceFrameInfo(a1, v66, v20, v146);
        vmcCreateAttachmentsDictionaryForSourceFrameInfo(a1, SourceFrameInfo, v20);
        v67 = *(a1 + 64);
        if (v67)
        {
          VTDecompressionSessionWaitForAsynchronousFrames(v67);
        }

        v32 = v130;
        if (*(a1 + 729))
        {
          v68 = *(a1 + 64);
          if (v68)
          {
            if (VTDecompressionSessionCopyBlackPixelBuffer(v68, &pixelBufferOut))
            {
              goto LABEL_299;
            }
          }

          else if (*(a1 + 80))
          {
            VTPixelBufferConformerCopyBlackPixelBuffer();
          }

          ++*(a1 + 1152);
          ++*(a1 + 1412);
        }

        else
        {
          FigCreateNullPixelBuffer(allocator, &pixelBufferOut);
        }

        v79 = *(a1 + 256);
        if (v79 && CFArrayGetCount(v79) >= 1)
        {
          v80 = pixelBufferOut;
          v81 = *(a1 + 256);
          v160.value = 0;
          time1.value = 0;
          v82 = MEMORY[0x1E695E9C0];
          Mutable = CFArrayCreateMutable(allocator, 0, MEMORY[0x1E695E9C0]);
          v84 = CFArrayCreateMutable(allocator, 0, v82);
          v85 = v84;
          if (Mutable && v84)
          {
            if (v81 && (Count = CFArrayGetCount(v81), Count >= 1))
            {
              v87 = Count;
              v88 = 0;
              while (1)
              {
                LODWORD(time2.value) = 0;
                FigCFArrayGetInt32AtIndex();
                value.value = 0;
                *&value.timescale = 0;
                value.value = FigTagMakeWithSInt64Value();
                *&value.timescale = v89;
                FigTagCollectionCreate();
                if (!time1.value)
                {
                  break;
                }

                CFArrayAppendValue(Mutable, time1.value);
                CFArrayAppendValue(v85, v80);
                if (time1.value)
                {
                  CFRelease(time1.value);
                  time1.value = 0;
                }

                if (v87 == ++v88)
                {
                  goto LABEL_215;
                }
              }

              fig_log_get_emitter();
              FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v119, v120, v121);
              v90 = v109;
LABEL_302:
              v31 = 0;
            }

            else
            {
LABEL_215:
              v90 = MEMORY[0x19A8D33F0](allocator, Mutable, v85, &v160);
              if (v90)
              {
                goto LABEL_302;
              }

              v31 = v160.value;
              v160.value = 0;
            }
          }

          else
          {
            vmc2DecodeUntilHighWaterMet_cold_2(&value);
            v31 = 0;
            v90 = value.value;
          }

          if (time1.value)
          {
            CFRelease(time1.value);
          }

          if (Mutable)
          {
            CFRelease(Mutable);
          }

          if (v85)
          {
            CFRelease(v85);
          }

          if (v160.value)
          {
            CFRelease(v160.value);
          }

          v32 = v130;
          if (v90)
          {
            v30 = 1;
            v19 = 1;
            v2 = MEMORY[0x1E695FF58];
            goto LABEL_200;
          }

          CMSampleBufferGetOutputPresentationTimeStamp(&v160, v20);
          value = v160;
          vmc2OutputFrameInternal(a1, SourceFrameInfo, 0, 0, 0, v31, &value, MEMORY[0x1E6960C70], 0);
          v2 = MEMORY[0x1E695FF58];
          if (v31)
          {
            CFRelease(v31);
          }
        }

        else
        {
          v91 = pixelBufferOut;
          CMSampleBufferGetOutputPresentationTimeStamp(&v160, v20);
          value = v160;
          vmc2OutputFrameInternal(a1, SourceFrameInfo, 0, 0, v91, 0, &value, MEMORY[0x1E6960C70], 0);
        }

        if (pixelBufferOut)
        {
          CFRelease(pixelBufferOut);
          v31 = 0;
          SourceFrameInfo = 0;
          pixelBufferOut = 0;
        }

        else
        {
          v31 = 0;
          SourceFrameInfo = 0;
        }

        v30 = 1;
        v19 = 1;
        v33 = 1;
        goto LABEL_51;
      }
    }

    else
    {
      v19 = 0;
      *(a1 + 592) = 0;
    }

    *(a1 + 312) = 0;
    if (*v2 == 1)
    {
      kdebug_trace();
    }

    FigSimpleMutexLock();
    ++*(a1 + 1408);
    FigSimpleMutexUnlock();
    FigSimpleMutexUnlock();
    vmc2CheckForEnd(a1);
    v30 = 0;
    v20 = 0;
    v31 = 0;
    v146 = 0;
    v32 = 0;
    v33 = 0;
    SourceFrameInfo = 0;
LABEL_51:
    FigSimpleMutexLock();
    *(a1 + 312) = 0;
    v35 = MEMORY[0x1E6960C70];
    *v145 = *MEMORY[0x1E6960C70];
    *(a1 + 408) = *(v35 + 16);
    FigSimpleMutexUnlock();
    if (v33)
    {
      vmc2RecalculateUpcomingImageTimes(a1);
    }

    if (v32)
    {
      vmc2ClearSavedList(a1);
      if (!v19)
      {
LABEL_55:
        if (!SourceFrameInfo)
        {
          goto LABEL_84;
        }

LABEL_69:
        v39 = *(SourceFrameInfo + 1);
        if (v39)
        {
          CFRelease(v39);
        }

        v40 = *(SourceFrameInfo + 2);
        if (v40)
        {
          CFRelease(v40);
        }

        v41 = *(SourceFrameInfo + 3);
        if (v41)
        {
          CFRelease(v41);
        }

        v42 = *(SourceFrameInfo + 4);
        if (v42)
        {
          CFRelease(v42);
        }

        v43 = *(SourceFrameInfo + 5);
        if (v43)
        {
          CFRelease(v43);
        }

        v44 = *(SourceFrameInfo + 6);
        if (v44)
        {
          CFRelease(v44);
        }

        v45 = *(SourceFrameInfo + 7);
        if (v45)
        {
          CFRelease(v45);
        }

        free(SourceFrameInfo);
        goto LABEL_84;
      }
    }

    else if (!v19)
    {
      goto LABEL_55;
    }

    v36 = CMGetAttachment(v20, v142, 0);
    if (v36)
    {
      v37 = v36;
      v38 = *(a1 + 64);
      if (v38)
      {
        VTDecompressionSessionWaitForAsynchronousFrames(v38);
      }

      CMNotificationCenterGetDefaultLocalCenter();
      CMNotificationCenterPostNotification();
      if (v146 == *(a1 + 792))
      {
        FigReadWriteLockLockForRead();
        if (*(a1 + 249))
        {
          if (*v132)
          {
            (*v132)(*(a1 + 152), v140, v37);
          }
        }

        else
        {
          vmc2DecodeUntilHighWaterMet_cold_3();
        }

        FigReadWriteLockUnlockForRead();
      }
    }

    if (CMGetAttachment(v20, v141, 0))
    {
      CMNotificationCenterGetDefaultLocalCenter();
      CMNotificationCenterPostNotification();
    }

    CFRelease(v20);
    if (SourceFrameInfo)
    {
      goto LABEL_69;
    }

LABEL_84:
    if (cf)
    {
      CFRelease(cf);
    }

    v4 = (a1 + 192);
    if (pixelBufferOut)
    {
      CFRelease(pixelBufferOut);
    }

    if (v31)
    {
      CFRelease(v31);
    }

    if (v155)
    {
      CFRelease(v155);
    }

    if ((v30 & 1) == 0)
    {
      v117 = *(a1 + 592);
      if (vmc2GetWaterLevelState(a1))
      {
        v118 = *(a1 + 440) != 0;
      }

      else
      {
        v118 = 1;
      }

      v112 = vmc2GetWaterLevelState(a1) == 2 && *(a1 + 440) == 0;
      v115 = a1;
      v114 = v117;
      v116 = v118;
      goto LABEL_318;
    }

    ++v3;
    if (!*(a1 + 288))
    {
      goto LABEL_319;
    }
  }

  v110 = *(a1 + 592);
  if (vmc2GetWaterLevelState(a1))
  {
    v111 = *(a1 + 440) != 0;
  }

  else
  {
    v111 = 1;
  }

  v113 = vmc2GetWaterLevelState(a1) == 2 && *(a1 + 440) == 0;
  vmc2UpdateTroubleMonitor(a1, v110, v111, v113, 1);
  v114 = *(a1 + 592);
  v115 = a1;
  v116 = 0;
  v112 = 1;
LABEL_318:
  vmc2UpdateTroubleMonitor(v115, v114, v116, v112, 1);
LABEL_319:
  if (*v2 == 1)
  {
    kdebug_trace();
  }

  FigSimpleMutexUnlock();
  FigSemaphoreSignal();
  vmc2PostCompletedDecodeForPrerollIfPreviouslyRequestedAndMaybeRecordNewRequest(a1, 0, 0);
}

CMTime *piqca_getSafeDisplayDuration@<X0>(CMTime *a1@<X0>, CMTime *a2@<X8>)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v5 = *(DerivedStorage + 216);
  v6 = *(DerivedStorage + 160);
  time = *(DerivedStorage + 164);
  v8 = *(DerivedStorage + 188);
  result = FigImageQueueCalculateSafeDisplayDuration(a1, v5, v6, &time, &v8, a2);
  if (*MEMORY[0x1E695FF58] == 1)
  {
    time = *a2;
    CMTimeGetSeconds(&time);
    return kdebug_trace();
  }

  return result;
}

CMTime *FigImageQueueCalculateSafeDisplayDuration@<X0>(CMTime *result@<X0>, int a2@<W1>, int a3@<W2>, CMTime *a4@<X3>, CMTime *a5@<X4>, uint64_t a6@<X8>)
{
  v29 = *MEMORY[0x1E69E9840];
  value = *MEMORY[0x1E6960C70];
  timescale = *(MEMORY[0x1E6960C70] + 8);
  epoch = *(MEMORY[0x1E6960C70] + 16);
  *&v25.value = *MEMORY[0x1E6960C70];
  v25.epoch = epoch;
  *&v24.value = *&v25.value;
  v24.epoch = epoch;
  if (!result)
  {
    v18 = MEMORY[0x1E6960CC0];
    *a6 = *MEMORY[0x1E6960CC0];
    *(a6 + 16) = *(v18 + 16);
    return result;
  }

  v12 = result;
  flags = *(MEMORY[0x1E6960C70] + 12);
  VTable = CMBaseObjectGetVTable();
  v15 = *(VTable + 16);
  result = (VTable + 16);
  v16 = *(v15 + 64);
  if (v16)
  {
    v26 = 0;
    result = v16(v12, &v26, &v25, &v24);
    if (!result)
    {
      v17 = MEMORY[0x1E6960CC0];
      if (!v26)
      {
        value = *MEMORY[0x1E6960CC0];
        flags = *(MEMORY[0x1E6960CC0] + 12);
        timescale = *(MEMORY[0x1E6960CC0] + 8);
        epoch = *(MEMORY[0x1E6960CC0] + 16);
LABEL_13:
        if ((flags & 0x1D) != 1 || (time1.value = value, time1.timescale = timescale, time1.flags = flags, time1.epoch = epoch, lhs = *v17, result = CMTimeCompare(&time1, &lhs), (result & 0x80000000) != 0))
        {
          value = v17->value;
          flags = v17->flags;
          timescale = v17->timescale;
          epoch = v17->epoch;
        }

        goto LABEL_16;
      }

      if (a3 == 2)
      {
        if (a2 < 1)
        {
          time1 = v25;
          v21 = *a5;
          CMTimeMaximum(&lhs, &time1, &v21);
          v21 = v24;
          v19 = &v21;
          p_lhs = &lhs;
          goto LABEL_12;
        }

        time1 = *a4;
        v21 = v24;
        CMTimeMinimum(&lhs, &time1, &v21);
      }

      else
      {
        lhs = v24;
      }

      v21 = v25;
      v19 = &lhs;
      p_lhs = &v21;
LABEL_12:
      result = CMTimeSubtract(&time1, v19, p_lhs);
      value = time1.value;
      flags = time1.flags;
      timescale = time1.timescale;
      epoch = time1.epoch;
      goto LABEL_13;
    }
  }

LABEL_16:
  *a6 = value;
  *(a6 + 8) = timescale;
  *(a6 + 12) = flags;
  *(a6 + 16) = epoch;
  return result;
}

uint64_t piqca_getOccupancyInfo(uint64_t a1, _DWORD *a2, CMTime *a3, CMTime *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v11 = **&MEMORY[0x1E6960CC0];
  v10 = v11;
  FigSimpleMutexLock();
  if (*(DerivedStorage + 50))
  {
    UnconsumedImageCount = 0;
  }

  else
  {
    UnconsumedImageCount = CAImageQueueGetUnconsumedImageCount();
    CMTimeMakeWithSeconds(&v11, 0.0 + 0.000833333333, 600);
    CMTimeMakeWithSeconds(&v10, 0.0 + 0.000833333333, 600);
  }

  ++*(DerivedStorage + 2472);
  FigSimpleMutexUnlock();
  if (a2)
  {
    *a2 = UnconsumedImageCount;
  }

  if (a3)
  {
    *a3 = v11;
  }

  if (a4)
  {
    *a4 = v10;
  }

  return 0;
}

uint64_t piqca_canEnqueueImage(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  piqca_evictExpiredFramesFromCAImageQueueIfEvictionNotDoneRecently(a1);
  if (*(DerivedStorage + 50))
  {
    return 99;
  }

  v4 = *(DerivedStorage + 64);
  if (v4)
  {
    return (v4 - 1);
  }

  else
  {
    return 0;
  }
}

void vmc2UpdateTroubleMonitor(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (*(a1 + 626))
  {
    v5 = a5;
    v6 = a4;
    v7 = a3;
    v8 = a2;
    if (FigSimpleMutexTryLock())
    {
      vmc2UpdateTroubleMonitor2(a1, v8, v7, v6, v5);

      FigSimpleMutexUnlock();
    }

    else if (*(a1 + 456))
    {
      v10 = malloc_type_malloc(0x10uLL, 0x10200405F07FB98uLL);
      if (v10)
      {
        v11 = v10;
        CFRetain(a1);
        *v11 = a1;
        v11[8] = v5;
        v12 = *(a1 + 456);

        dispatch_async_f(v12, v11, vmc2WhileHoldingSessionVTMutexUpdateTroubleMonitor);
      }
    }
  }
}

CMBufferRef sbp_bq_getAndRetainNextSampleBufferIfReady(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*DerivedStorage)
  {
    fig_log_get_emitter();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v4, v5, vars0);
    return 0;
  }

  else
  {
    v3 = *(DerivedStorage + 8);

    return CMBufferQueueDequeueIfDataReadyAndRetain(v3);
  }
}

uint64_t vmc2CheckForEnd(uint64_t result)
{
  if (!*(result + 520))
  {
    v1 = result;
    result = VMC2IsAtEndOfOutputData(result);
    if (result)
    {
      if (!*(v1 + 312))
      {
        vmc2RecalculateUpcomingImageTimes(v1);
        FigSimpleMutexLock();
        *(v1 + 520) = 1;
        FigSimpleMutexUnlock();
        CMNotificationCenterGetDefaultLocalCenter();

        return CMNotificationCenterPostNotification();
      }
    }
  }

  return result;
}

uint64_t VMC2IsAtEndOfOutputData(uint64_t a1)
{
  v2 = *(a1 + 88);
  v3 = *(*(CMBaseObjectGetVTable() + 16) + 16);
  if (!v3)
  {
    return 0;
  }

  result = v3(v2);
  if (!result)
  {
    return result;
  }

  v5 = *(a1 + 64);
  if (v5 && (propertyValueOut = 0, VTSessionCopyProperty(v5, *MEMORY[0x1E6983968], *MEMORY[0x1E695E480], &propertyValueOut), propertyValueOut) && (valuePtr = 0, CFNumberGetValue(propertyValueOut, kCFNumberIntType, &valuePtr), CFRelease(propertyValueOut), valuePtr > 0))
  {
    return 0;
  }

  else
  {
    return 1;
  }
}

uint64_t sbp_bq_isAtEndOfData(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*DerivedStorage)
  {
    fig_log_get_emitter();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v4, v5, vars0);
    return 1;
  }

  else
  {
    v3 = *(DerivedStorage + 8);

    return CMBufferQueueIsAtEndOfData(v3);
  }
}

uint64_t bossGetTimeOfNextIFrameInDirection(uint64_t a1, CMTime *a2, int a3, int a4, CMTimeFlags a5, CMTime *a6, char *a7, BOOL *a8)
{
  v58 = *MEMORY[0x1E69E9840];
  v55 = **&MEMORY[0x1E6960C70];
  v54 = 0;
  v53 = 0;
  v16 = *(MEMORY[0x1E6960C78] + 48);
  *&v51.duration.timescale = *(MEMORY[0x1E6960C78] + 32);
  *&v52.start.value = v16;
  v17 = *(MEMORY[0x1E6960C78] + 80);
  *&v52.start.epoch = *(MEMORY[0x1E6960C78] + 64);
  *&v52.duration.timescale = v17;
  v18 = *(MEMORY[0x1E6960C78] + 16);
  *&v51.start.value = *MEMORY[0x1E6960C78];
  *&v51.start.epoch = v18;
  v50 = v55;
  *&v49.start.value = v16;
  *&v49.start.epoch = *&v52.start.epoch;
  *&v49.duration.timescale = v17;
  *&v48.start.value = *&v51.start.value;
  *&v48.start.epoch = v18;
  *&v48.duration.timescale = *&v51.duration.timescale;
  cf = 0;
  v46 = 0;
  v45 = v55;
  v44 = v55;
  if (a3 < 1)
  {
    v19 = -1;
  }

  else
  {
    v19 = 1;
  }

  fromRange.start = *a2;
  PresentationTimeStamp = bossScanForEditSegmentContainingTrackTime(a1, &fromRange, &v53 + 1, &v53, &v51, v19, &v50, &v48);
  if (PresentationTimeStamp)
  {
    goto LABEL_5;
  }

  if (HIBYTE(v53) && !v53)
  {
    goto LABEL_8;
  }

  if (HIBYTE(v53) && v53)
  {
    if ((v51.start.flags & 0x1D) != 1)
    {
      if (a4 != 1 && !a5 || (v50.flags & 0x1D) != 1)
      {
        goto LABEL_8;
      }

      v22 = 0;
      v55 = v50;
      v51 = v48;
      v52 = v49;
      goto LABEL_15;
    }

    *&v43.value = *&a2->value;
    fromRange = v52;
    *&toRange.start.value = *&v51.start.value;
    *&toRange.start.epoch = *&v51.start.epoch;
    v43.epoch = a2->epoch;
    *&toRange.duration.timescale = *&v51.duration.timescale;
    CMTimeMapTimeFromRangeToRange(&v55, &v43, &fromRange, &toRange);
  }

  else
  {
    v55 = *a2;
  }

  v22 = 1;
LABEL_15:
  v23 = *(*(CMBaseObjectGetVTable() + 16) + 32);
  if (!v23)
  {
    goto LABEL_44;
  }

  v41 = v22;
  PresentationTimeStamp = v23(a1, &v54);
  if (PresentationTimeStamp)
  {
LABEL_5:
    v21 = PresentationTimeStamp;
    goto LABEL_45;
  }

  v24 = v54;
  toRange.start = v55;
  v25 = *(*(CMBaseObjectGetVTable() + 16) + 8);
  if (!v25)
  {
LABEL_44:
    v21 = 4294954514;
    goto LABEL_45;
  }

  *&fromRange.start.value = *&toRange.start.value;
  fromRange.start.epoch = toRange.start.epoch;
  PresentationTimeStamp = v25(v24, &fromRange, &cf, &v46 + 1, &v46);
  if (PresentationTimeStamp)
  {
    goto LABEL_5;
  }

  if (a4 == 1)
  {
    fromRange.start.value = 0;
    v21 = FigSampleCursorStepInPresentationOrderAndReportStepsTaken(cf, a3, &fromRange);
    if (v21 || fromRange.start.value != a3)
    {
      goto LABEL_45;
    }

    v40 = a3;
    v39 = 0;
  }

  else
  {
    v40 = a3;
    v39 = 1;
  }

  for (i = 10001; ; --i)
  {
    v42 = 0;
    v43.value = 0;
    v27 = cf;
    v28 = *(*(CMBaseObjectGetVTable() + 16) + 64);
    if (v28)
    {
      v21 = v28(v27, &v42 + 1, &v42, 0, 0);
      if (!v21)
      {
        v29 = v42 != 0;
        goto LABEL_37;
      }
    }

    else
    {
      v21 = 4294954514;
    }

    LOBYTE(fromRange.start.value) = 0;
    if (!*(*(CMBaseObjectGetVTable() + 16) + 72))
    {
      goto LABEL_45;
    }

    v30 = cf;
    v31 = *(*(CMBaseObjectGetVTable() + 16) + 72);
    if (!v31)
    {
      goto LABEL_44;
    }

    PresentationTimeStamp = v31(v30, &fromRange, 0, 0);
    if (PresentationTimeStamp)
    {
      goto LABEL_5;
    }

    v29 = LOBYTE(fromRange.start.value) == 73;
    LOBYTE(v42) = v29;
LABEL_37:
    if (HIBYTE(v42) || v29)
    {
      break;
    }

    v32 = cf;
    v33 = *(*(CMBaseObjectGetVTable() + 16) + 176);
    if (!v33)
    {
      goto LABEL_44;
    }

    PresentationTimeStamp = v33(v32, v40, &v43);
    if (PresentationTimeStamp)
    {
      goto LABEL_5;
    }

    if (v43.value != v40)
    {
      goto LABEL_8;
    }

    if (!i)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
      v21 = 4294954923;
      goto LABEL_45;
    }

    v39 = 0;
  }

  v35 = v39;
  if (!v41)
  {
    v35 = 0;
  }

  if (HIBYTE(v46) | v46)
  {
    v36 = 0;
  }

  else
  {
    v36 = v35;
  }

  if (a4 == 2 || !v36)
  {
    PresentationTimeStamp = FigSampleCursorGetPresentationTimeStamp(cf, &v45);
    if (!PresentationTimeStamp)
    {
      v37 = v53;
      if (v53)
      {
        toRange.start = v45;
        fromRange = v51;
        CMTimeClampToRange(&v43, &toRange.start, &fromRange);
        fromRange = v51;
        toRange = v52;
        CMTimeMapTimeFromRangeToRange(&v44, &v43, &fromRange, &toRange);
        if ((v45.flags & 0x1D) == 1)
        {
          fromRange = v51;
          toRange.start = v45;
          v37 = CMTimeRangeContainsTime(&fromRange, &toRange.start) != 0;
        }

        else
        {
          v37 = 0;
        }
      }

      else
      {
        v44 = v45;
      }

      if (a6)
      {
        *a6 = v44;
      }

      goto LABEL_58;
    }

    goto LABEL_5;
  }

  v37 = 1;
LABEL_58:
  if (a7)
  {
    *a7 = v36;
  }

  if (a8)
  {
    v21 = 0;
    *a8 = v37;
    goto LABEL_45;
  }

LABEL_8:
  v21 = 0;
LABEL_45:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v54)
  {
    CFRelease(v54);
  }

  return v21;
}

uint64_t bossScanForEditSegmentContainingTrackTime(uint64_t a1, uint64_t a2, char *a3, _BYTE *a4, void *a5, unsigned int a6, uint64_t a7, unint64_t a8)
{
  v33[2] = *MEMORY[0x1E69E9840];
  v32 = 0;
  v33[0] = 0;
  v33[1] = 0;
  v13 = *MEMORY[0x1E695E480];
  FigTrackReaderGetFigBaseObject();
  v15 = v14;
  v16 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v16)
  {
    v16(v15, @"SecondaryEditCursorService", v13, v33);
    v17 = v33[0] != 0;
  }

  else
  {
    v17 = 0;
  }

  FigTrackReaderGetFigBaseObject();
  v19 = v18;
  v20 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v20)
  {
    v20(v19, @"EditCursorService", v13, &v33[v17]);
  }

  if (v17)
  {
    v21 = 2;
  }

  else
  {
    v21 = 1;
  }

  if (v33[v17])
  {
    v22 = v21;
  }

  else
  {
    v22 = v17;
  }

  if (!v22)
  {
    v23 = 0;
    v24 = 0;
    goto LABEL_14;
  }

  OUTLINED_FUNCTION_37_5();
  EditSegmentContainingTrackTime = bossUsingEditCursorServiceArrayFindEditSegmentContainingTrackTime(v33, v22, v31, &v32, a5);
  if (EditSegmentContainingTrackTime)
  {
    v23 = EditSegmentContainingTrackTime;
  }

  else
  {
    OUTLINED_FUNCTION_29();
    if (v28)
    {
      v23 = 0;
      goto LABEL_14;
    }

    if (a7 | a8)
    {
      OUTLINED_FUNCTION_37_5();
      NextNonEmptyTrackTime = bossUsingEditCursorServiceArrayFindNextNonEmptyTrackTime(v33, v22, v31, a6, MEMORY[0x1E6960C70], a7, a8);
      if (NextNonEmptyTrackTime == -12520)
      {
        v23 = 0;
      }

      else
      {
        v23 = NextNonEmptyTrackTime;
      }
    }

    else
    {
      v23 = 0;
    }
  }

  v24 = 1;
LABEL_14:
  if (a3)
  {
    *a3 = v24;
  }

  if (a4)
  {
    *a4 = v32;
  }

  if (v22)
  {
    v25 = v33;
    do
    {
      if (*v25)
      {
        CFRelease(*v25);
        *v25 = 0;
      }

      ++v25;
      --v22;
    }

    while (v22);
  }

  return v23;
}

uint64_t VideoMentorSetModeToDoNothing(uint64_t a1, CFDictionaryRef theDict, const void *a3)
{
  if (theDict)
  {
    v6 = *MEMORY[0x1E695E4D0];
    Value = CFDictionaryGetValue(theDict, @"AbortReading");
    v8 = v6 == CFDictionaryGetValue(theDict, @"SynchronouslyAbortReading");
    v9 = v6 == Value || v8;
  }

  else
  {
    LOBYTE(v8) = 0;
    v9 = 0;
  }

  FigSimpleMutexLock();
  if (!*a1)
  {
    v10 = *(a1 + 472);
    *(a1 + 472) = a3;
    if (a3)
    {
      CFRetain(a3);
    }

    if (v10)
    {
      CFRelease(v10);
    }

    *(a1 + 112) = 0;
    *(a1 + 116) = 1;
    *(a1 + 117) = v9;
    FigMemoryBarrier();
  }

  FigSimpleMutexUnlock();
  FigSemaphoreSignal();
  if (v9)
  {
    v11 = 0;
    do
    {
      if (!*(a1 + 116))
      {
        break;
      }

      FigThreadAbort();
      if (*(a1 + 116))
      {
        FigSemaphoreWaitRelative();
      }

      v12 = v11++ >= 4;
    }

    while (!v12 || v8);
  }

  return 0;
}

uint64_t VideoMentorSetModeToScrub(uint64_t a1, uint64_t a2, __int128 *a3, CFDictionaryRef theDict, const void *a5, const void *a6, const void *a7)
{
  cf = 0;
  if (theDict && (Value = CFDictionaryGetValue(theDict, @"ScrubPolicy")) != 0 && (v12 = Value, !CFEqual(Value, @"FrameAccurate")))
  {
    if (CFEqual(v12, @"NearestIFrame"))
    {
      v13 = 1;
    }

    else
    {
      v13 = 2 * (CFEqual(v12, @"BlendFrames") != 0);
    }
  }

  else
  {
    v13 = 0;
  }

  v14 = audioMentorGetModeChangePolicy(theDict);
  IsCursorAccuracyExact = videoMentorIsCursorAccuracyExact(theDict);
  FigCFDictionaryGetBooleanIfPresent();
  FigCFDictionaryGetInt32IfPresent();
  v30 = *MEMORY[0x1E6960C70];
  v31 = *(MEMORY[0x1E6960C70] + 16);
  if (theDict)
  {
    FigCFDictionaryGetCMTimeIfPresent();
  }

  if (a2 && ((v16 = *(*(CMBaseObjectGetVTable() + 16) + 8)) == 0 || v16(a2, &cf)))
  {
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v26, a3, a6);
    v23 = v24;
  }

  else
  {
    FigSimpleMutexLock();
    if (!*a1)
    {
      v17 = *(a1 + 128);
      v18 = cf;
      *(a1 + 128) = cf;
      if (v18)
      {
        CFRetain(v18);
      }

      if (v17)
      {
        CFRelease(v17);
      }

      v19 = *a3;
      *(a1 + 152) = *(a3 + 2);
      *(a1 + 136) = v19;
      *(a1 + 160) = v13;
      *(a1 + 244) = v14;
      *(a1 + 372) = IsCursorAccuracyExact;
      *(a1 + 373) = 1;
      *(a1 + 428) = v30;
      *(a1 + 444) = v31;
      *(a1 + 452) = 0;
      v20 = *(a1 + 464);
      *(a1 + 464) = a5;
      if (a5)
      {
        CFRetain(a5);
      }

      if (v20)
      {
        CFRelease(v20);
      }

      v21 = *(a1 + 472);
      *(a1 + 472) = a6;
      if (a6)
      {
        CFRetain(a6);
      }

      if (v21)
      {
        CFRelease(v21);
      }

      v22 = *(a1 + 480);
      *(a1 + 480) = a7;
      if (a7)
      {
        CFRetain(a7);
      }

      if (v22)
      {
        CFRelease(v22);
      }

      *(a1 + 112) = 1;
      *(a1 + 116) = 1;
      FigMemoryBarrier();
    }

    FigSimpleMutexUnlock();
    FigSemaphoreSignal();
    v23 = 0;
  }

  if (cf)
  {
    CFRelease(cf);
  }

  return v23;
}

BOOL videoMentorIsCursorAccuracyExact(const __CFDictionary *a1)
{
  result = 0;
  if (a1)
  {
    CFDictionaryGetValue(a1, @"CursorAccuracy");
    if (FigCFEqual())
    {
      return 1;
    }
  }

  return result;
}

uint64_t videoMentorCreateCursorForPresentationTimeStamp(uint64_t a1, int a2, __int128 *a3, uint64_t a4)
{
  v6 = *(a1 + 8);
  if (a2)
  {
    v11 = *a3;
    v13 = *(a3 + 2);
    v7 = *(*(CMBaseObjectGetVTable() + 16) + 8);
    if (v7)
    {
      v15 = v11;
      v16 = v13;
      v8 = v7(v6, &v15, a4, 0, 0);
      if (!v8)
      {
        return v8;
      }
    }

    else
    {
      v8 = 4294954514;
    }

    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF16DF0, v8, "<<<< VideoMentor >>>>", 6124, v4);
  }

  else
  {
    v12 = *a3;
    v14 = *(a3 + 2);
    v9 = *(*(CMBaseObjectGetVTable() + 16) + 16);
    if (v9)
    {
      v15 = v12;
      v16 = v14;
      v8 = v9(v6, &v15, 1, a4, 0, 0);
      if (!v8)
      {
        return v8;
      }
    }

    else
    {
      v8 = 4294954514;
    }

    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF16DF0, v8, "<<<< VideoMentor >>>>", 6130, v4);
  }

  return v8;
}

uint64_t FigSampleCursorGetDependencyInfo(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = *(*(CMBaseObjectGetVTable() + 16) + 64);
  if (!v10)
  {
    return 4294954514;
  }

  return v10(a1, a2, a3, a4, a5);
}

uint64_t videoMentorSimulateFrame(uint64_t a1, _BYTE *a2, uint64_t a3, _BYTE *a4, _BYTE *a5)
{
  v26 = 0;
  v25 = 0;
  v24 = 0;
  if (*(*(CMBaseObjectGetVTable() + 16) + 72))
  {
    v11 = *(*(CMBaseObjectGetVTable() + 16) + 72);
    if (v11)
    {
      v12 = v11(a1, &v26 + 1, &v26, 0);
      if (!v12)
      {
        v13 = HIBYTE(v26);
        if (HIBYTE(v26) != 66)
        {
          if (HIBYTE(v26) == 73)
          {
            if (v26)
            {
              v14 = a2;
            }

            else
            {
              v14 = a5;
            }
          }

          else
          {
            if (HIBYTE(v26) != 80)
            {
              FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF16DF0, 4294967294, "<<<< VideoMentor >>>>", 5812, v5);
              return v19;
            }

            v14 = a5;
            if (!*a2)
            {
              goto LABEL_26;
            }
          }

          *v14 = 1;
        }

LABEL_26:
        v24 = v13 == 66;
        goto LABEL_27;
      }
    }

    else
    {
      v12 = 4294954514;
    }

    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF16DF0, v12, "<<<< VideoMentor >>>>", 5812, v5);
    return v12;
  }

  v15 = *(*(CMBaseObjectGetVTable() + 16) + 64);
  if (!v15)
  {
    v12 = 4294954514;
    goto LABEL_18;
  }

  v12 = v15(a1, &v25 + 1, &v25, 0, &v24);
  if (v12)
  {
LABEL_18:
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF16DF0, v12, "<<<< VideoMentor >>>>", 5825, v5);
    return v12;
  }

  if (HIBYTE(v25))
  {
    if (*a5)
    {
      goto LABEL_33;
    }

    if (!videoMentorSyncFrameIsOpenGOP())
    {
      goto LABEL_16;
    }

    if ((*(a3 + 12) & 0x1D) == 1)
    {
      v16 = MEMORY[0x1E6960C70];
      *a3 = *MEMORY[0x1E6960C70];
      *(a3 + 16) = *(v16 + 16);
LABEL_16:
      *a5 = 1;
      goto LABEL_33;
    }

    PresentationTimeStamp = FigSampleCursorGetPresentationTimeStamp(a1, a3);
    if (PresentationTimeStamp)
    {
      v12 = PresentationTimeStamp;
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF16DF0, PresentationTimeStamp, "<<<< VideoMentor >>>>", 5834, v5);
      return v12;
    }

    if ((*(a3 + 12) & 0x1D) != 1)
    {
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF16DF0, 4294967294, "<<<< VideoMentor >>>>", 5834, v5);
      return v19;
    }
  }

LABEL_27:
  if (!*a5 && (*(a3 + 12) & 0x1D) == 1)
  {
    v23 = **&MEMORY[0x1E6960C70];
    v18 = *(*(CMBaseObjectGetVTable() + 16) + 40);
    if (v18)
    {
      v12 = v18(a1, &v23);
      if (!v12)
      {
        if ((v23.flags & 0x1D) == 1)
        {
          time1 = v23;
          v21 = *a3;
          if (CMTimeCompare(&time1, &v21) < 0)
          {
            v12 = 0;
            *a4 = 0;
            return v12;
          }

          goto LABEL_33;
        }

        FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF16DF0, 4294967294, "<<<< VideoMentor >>>>", 5863, v5);
        return v19;
      }
    }

    else
    {
      v12 = 4294954514;
    }

    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF16DF0, v12, "<<<< VideoMentor >>>>", 5863, v5);
    return v12;
  }

LABEL_33:
  v12 = 0;
  if (!v24)
  {
    *a4 = 1;
  }

  return v12;
}

uint64_t videoMentorThreadGenerateAndEnqueueFrame(uint64_t a1, const void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unsigned __int8 a9, __int128 *a10, __int128 *a11, __int128 *a12, const void *a13)
{
  v13 = a8;
  v14 = a7;
  v15 = a6;
  v16 = a5;
  v17 = a4;
  v18 = a3;
  v30 = 0;
  if (videoMentorThreadWaitForOutputQueueToDropBelowHighWater(a1, a13))
  {
    return 0xFFFFFFFFLL;
  }

  v28 = *a10;
  v29 = *(a10 + 2);
  v26 = *a11;
  v27 = *(a11 + 2);
  v24 = *a12;
  v25 = *(a12 + 2);
  videoMentorThreadCreateSampleBuffer(a1, a2, v18, a9, &v28, &v26, &v24, v14, a13, &v30);
  if (v22)
  {
    v21 = v22;
  }

  else
  {
    if (v14)
    {
      CMSetAttachment(v30, *MEMORY[0x1E6960520], *MEMORY[0x1E695E4D0], 1u);
    }

    v21 = videoMentorThreadSendSampleBuffer(a1, v30, a2, v18, v17, v16, v15, v13);
    if (!v21)
    {
      ++*(a1 + 524);
    }
  }

  if (v30)
  {
    CFRelease(v30);
  }

  return v21;
}

uint64_t videoMentorThreadWaitForOutputQueueToDropBelowHighWater(uint64_t a1, const void *a2)
{
  if (*(a1 + 116))
  {
    return 0xFFFFFFFFLL;
  }

  if ((*(a1 + 496) | 2) == 3)
  {
    v5 = *(a1 + 24);
    v6 = *(*(CMBaseObjectGetVTable() + 16) + 24);
    if (!v6 || !v6(v5))
    {
      videoMentorThreadFinishPreroll(a1, 2, a2);
    }
  }

  v7 = *(a1 + 24);
  v8 = *(*(CMBaseObjectGetVTable() + 16) + 16);
  if (v8)
  {
    result = v8(v7);
    if (!result)
    {
      return result;
    }

    if (!*a1)
    {
      v9 = FigMentorNotificationPayloadCreate(@"MentorPausingDueToHighWaterLevel", a2, 0, *(a1 + 520), 0, 0);
      CMNotificationCenterGetDefaultLocalCenter();
      CMNotificationCenterPostNotification();
      if (v9)
      {
        CFRelease(v9);
      }
    }

    v10 = MEMORY[0x1E695FF58];
    if (*MEMORY[0x1E695FF58] == 1)
    {
      kdebug_trace();
    }

    do
    {
      FigSemaphoreWaitRelative();
      if (*(a1 + 116))
      {
        return 0xFFFFFFFFLL;
      }

      v11 = *(a1 + 24);
      v12 = *(*(CMBaseObjectGetVTable() + 16) + 16);
    }

    while (v12 && v12(v11));
    if (*v10 == 1)
    {
      kdebug_trace();
    }

    *(a1 + 524) = 0;
    if (!*a1)
    {
      v13 = FigMentorNotificationPayloadCreate(@"MentorResumingAfterHighWaterLevel", a2, 0, *(a1 + 520), 0, 0);
      CMNotificationCenterGetDefaultLocalCenter();
      CMNotificationCenterPostNotification();
      if (v13)
      {
        CFRelease(v13);
      }
    }
  }

  return 0;
}

double videoMentorThreadCreateSampleBuffer(uint64_t a1, uint64_t a2, int a3, int a4, __int128 *a5, __int128 *a6, __int128 *a7, char a8, uint64_t a9, void *a10)
{
  if (!*(a1 + 116))
  {
    v31 = v10;
    v32 = v11;
    v23 = a1;
    v14 = a3 == 1;
    if (!a4)
    {
      v14 = 0;
    }

    v29 = *(a7 + 2);
    v30 = v14;
    if (a4)
    {
      v15 = a3 == 0;
    }

    else
    {
      v15 = 0;
    }

    BYTE1(v30) = v15;
    v24 = *a5;
    v25 = *(a5 + 2);
    v26 = *a6;
    v27 = *(a6 + 2);
    v28 = *a7;
    BYTE2(v30) = a8;
    v16 = *(a1 + 16);
    v17 = *(a1 + 496);
    v18 = *(*(CMBaseObjectGetVTable() + 16) + 8);
    if (!v18 || v18(v16, a2, 1, 1, 0, 0, v17, 0, videoMentorRemapSBufTiming, &v23, a9, a10))
    {
      return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v20, v21, v22);
    }

    else
    {
      if (*(a1 + 48))
      {
        FigSampleBufferSetDecryptor();
      }

      ++*(a1 + 896);
    }
  }

  return result;
}

uint64_t sgffr_generateSingleSampleBuffer(const void *a1, uint64_t a2, unsigned int a3, char a4, uint64_t (*a5)(uint64_t, uint64_t, CMSampleBufferRef), uint64_t a6, uint64_t a7, uint64_t a8, opaqueCMSampleBuffer **a9)
{
  v95[0] = a3;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v93 = 0;
  v94 = 0;
  memset(&v92, 0, sizeof(v92));
  v90 = 0;
  v91 = 0;
  v88 = 0;
  blockBufferOut = 0;
  v86 = 0;
  v87 = 0;
  v85 = 0;
  v84 = 0;
  v82 = 0;
  cf = 0;
  v80 = 0;
  v81 = 0;
  v79 = 0;
  v77 = 0;
  v78 = 0;
  v16 = *(DerivedStorage + 32);
  v76 = 0;
  v17 = *(*(CMBaseObjectGetVTable() + 16) + 160);
  if (!v17)
  {
    v18 = 4294954514;
LABEL_3:
    sgffr_generateSingleSampleBuffer_cold_5();
    goto LABEL_4;
  }

  v71 = a4;
  v18 = v17(a2, &v82);
  if (v18)
  {
    goto LABEL_3;
  }

  v69 = a8;
  v70 = v16;
  if (*(DerivedStorage + 33) || !*(DerivedStorage + 34) || CMFormatDescriptionGetMediaType(v82) != 1986618469 || (CMFormatDescriptionGetMediaSubType(v82), (DescriptionWithPixelFormatType = CVPixelFormatDescriptionGetDescriptionWithPixelFormatType()) == 0))
  {
    v21 = 1;
LABEL_33:
    v22 = 1;
    goto LABEL_34;
  }

  Value = CFDictionaryGetValue(DescriptionWithPixelFormatType, *MEMORY[0x1E69662D8]);
  if (!Value || (v36 = Value, v37 = CFGetTypeID(Value), v37 != CFArrayGetTypeID()) || CFArrayGetCount(v36) != 2 || (ValueAtIndex = CFArrayGetValueAtIndex(v36, 0)) == 0 || (v39 = CFGetTypeID(ValueAtIndex), v39 != CFDictionaryGetTypeID()) || (v40 = CFArrayGetValueAtIndex(v36, 1)) == 0 || (v41 = CFGetTypeID(v40), v41 != CFDictionaryGetTypeID()))
  {
    v21 = 0;
    goto LABEL_33;
  }

  LODWORD(v75.duration.value) = 0;
  FigCFDictionaryGetInt32IfPresent();
  if (FigCFDictionaryGetInt32IfPresent())
  {
    v62 = LODWORD(v75.duration.value) == 0;
  }

  else
  {
    v62 = 1;
  }

  v22 = !v62;
  v21 = 0;
LABEL_34:
  v23 = v21;
  PTSAndDTSAndDuration = sgffr_copyCursorSampleLocationAndDataSource(a1, a2, v21, &v94, &v91, &v79, &v93, &v90, &cf, &v80, &v81);
  if (PTSAndDTSAndDuration)
  {
    goto LABEL_36;
  }

  v67 = v22;
  v68 = a5;
  v25 = v94;
  v26 = v91;
  PTSAndDTSAndDuration = sgffr_getPTSAndDTSAndDuration(DerivedStorage, a2, &v92.duration);
  if (PTSAndDTSAndDuration)
  {
    goto LABEL_36;
  }

  v66 = v26;
  if (!*(DerivedStorage + 33))
  {
    PTSAndDTSAndDuration = sgffr_checkByteRangeForByteStream(DerivedStorage, v80, v25, v26);
    if (PTSAndDTSAndDuration)
    {
      goto LABEL_36;
    }
  }

  v62 = a3 == 3;
  v27 = v25;
  if (v62)
  {
    sgffr_checkDataAvailability(a1, v81, v80, v25, v26, v95);
  }

  if ((v23 & 1) == 0)
  {
    if (v79)
    {
      fig_log_get_emitter();
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d", sampleTimingArray, v64, sampleSizeArray);
      if (PTSAndDTSAndDuration)
      {
        goto LABEL_36;
      }
    }

    v30 = v69;
    if (v67)
    {
      if (v70)
      {
        if (v95[0] == 4)
        {
          v32 = CFGetAllocator(a1);
          PTSAndDTSAndDuration = SampleGeneratorMakeDataReadyInfoCreateForScheduledIORead(v32, a1, v81, &v76);
          if (PTSAndDTSAndDuration)
          {
            goto LABEL_36;
          }

          v33 = sgffr_makeDataReady_deferUntilMakeDataReadyPolicyOnly;
          v34 = v76;
        }

        else
        {
          v34 = 0;
          v33 = 0;
        }

        v75 = v92;
        v31 = v66;
        v18 = createSampleBufferForUncompressed(a1, v66, v82, 0, v34, v33, &v75, &v86, &blockBufferOut);
        if (v34)
        {
          CMSampleBufferSetShouldReleaseMakeDataReadyRefcon();
          CFRetain(v34);
        }

        if (v18)
        {
          goto LABEL_4;
        }

        v29 = 1;
        goto LABEL_83;
      }

      v75 = v92;
      v31 = v66;
      PTSAndDTSAndDuration = createSampleBufferForUncompressed(a1, v66, v82, 1u, 0, 0, &v75, &v86, 0);
      if (PTSAndDTSAndDuration)
      {
        goto LABEL_36;
      }

      ImageBuffer = CMSampleBufferGetImageBuffer(v86);
      if (ImageBuffer)
      {
        v58 = ImageBuffer;
        PTSAndDTSAndDuration = CVPixelBufferLockBaseAddress(ImageBuffer, 0);
        if (PTSAndDTSAndDuration)
        {
          goto LABEL_36;
        }

        BaseAddress = CVPixelBufferGetBaseAddress(v58);
        if (BaseAddress)
        {
          v60 = CMByteStreamRead(v80, v66, v25, BaseAddress);
          if (!v60)
          {
            CVPixelBufferUnlockBaseAddress(v58, 0);
            v34 = 0;
            v29 = 0;
            v30 = v69;
            v27 = v25;
            goto LABEL_83;
          }

          v18 = v60;
          sgffr_generateSingleSampleBuffer_cold_1();
        }

        else
        {
          v18 = 4294954744;
        }

        CVPixelBufferUnlockBaseAddress(v58, 0);
        goto LABEL_4;
      }
    }

    else
    {
      PTSAndDTSAndDuration = CMByteStreamReadAndCreateBlockBuffer(v80, v66, v25, &v78);
      if (PTSAndDTSAndDuration)
      {
        goto LABEL_36;
      }

      v75 = v92;
      PTSAndDTSAndDuration = createSampleBufferForUncompressed(a1, v66, v82, 1u, 0, 0, &v75, &v86, 0);
      if (PTSAndDTSAndDuration)
      {
        goto LABEL_36;
      }

      v31 = v66;
      v49 = CMSampleBufferGetImageBuffer(v86);
      if (v49)
      {
        sgffr_transferBiPlanarDataFromBlockBufferToPixelBuffer(v78, v49);
        if (PTSAndDTSAndDuration)
        {
          goto LABEL_36;
        }

LABEL_82:
        v34 = 0;
        v29 = 0;
        goto LABEL_83;
      }
    }

    v18 = 4294954744;
    goto LABEL_4;
  }

  v28 = v95[0];
  v29 = v70;
  if (!v70 && v95[0] != 4)
  {
    v30 = v69;
    if (*(DerivedStorage + 33))
    {
      v31 = v66;
      if (!v79)
      {
        goto LABEL_81;
      }

      v74 = 0;
      v75.duration.value = 0;
      PTSAndDTSAndDuration = CMByteStreamReadAndCreateBlockBuffer(v80, v90, v93, &v88);
      if (PTSAndDTSAndDuration)
      {
        goto LABEL_36;
      }

      sgffr_refineAndVerifySampleLocation(a2, 0, v88, v94, v91, v93, v90, &v75.duration.value, &v74);
      if (PTSAndDTSAndDuration)
      {
        goto LABEL_36;
      }
    }

    else
    {
      v31 = v66;
      v50 = sgffr_readFromByteStreamCreatingBlockBuffer(DerivedStorage, v80, v66, v25, &blockBufferOut);
      if (!v79)
      {
        v18 = v50;
        if (v50)
        {
          sgffr_generateSingleSampleBuffer_cold_4();
          goto LABEL_4;
        }

LABEL_81:
        PTSAndDTSAndDuration = CMSampleBufferCreate(*DerivedStorage, blockBufferOut, 1u, 0, 0, v82, 1, 1, &v92, 1, &v91, &v86);
        if (PTSAndDTSAndDuration)
        {
          goto LABEL_36;
        }

        goto LABEL_82;
      }

      v74 = 0;
      v75.duration.value = 0;
      sgffr_refineAndVerifySampleLocation(a2, blockBufferOut, 0, v94, v91, v93, v90, &v75.duration.value, &v74);
      if (PTSAndDTSAndDuration)
      {
        goto LABEL_36;
      }

      PTSAndDTSAndDuration = sgffr_createBlockBufferWithBufferReference(*DerivedStorage, blockBufferOut, v75.duration.value - v94, v74, &v87);
      if (PTSAndDTSAndDuration)
      {
        goto LABEL_36;
      }

      v61 = blockBufferOut;
      blockBufferOut = v87;
      if (v87)
      {
        CFRetain(v87);
      }

      if (v61)
      {
        CFRelease(v61);
      }
    }

    v31 = v74;
    v27 = v75.duration.value;
    v94 = v75.duration.value;
    v91 = v74;
    goto LABEL_81;
  }

  PTSAndDTSAndDuration = CMBlockBufferCreateEmpty(*DerivedStorage, 0, 0, &blockBufferOut);
  if (PTSAndDTSAndDuration)
  {
    goto LABEL_36;
  }

  v42 = v79;
  if (v28 == 4)
  {
    v43 = CFGetAllocator(a1);
    PTSAndDTSAndDuration = SampleGeneratorMakeDataReadyInfoCreateForScheduledIORead(v43, a1, v81, &v76);
    v31 = v66;
    if (PTSAndDTSAndDuration)
    {
      goto LABEL_36;
    }

    v34 = v76;
    v44 = *DerivedStorage;
    v45 = sgffr_makeDataReady_deferUntilMakeDataReadyPolicyOnly;
    if (!v42)
    {
      goto LABEL_73;
    }
  }

  else
  {
    v45 = 0;
    v34 = 0;
    v44 = *DerivedStorage;
    v31 = v66;
    if (!v79)
    {
LABEL_73:
      v46 = v42;
      v47 = v42 == 0;
      v48 = blockBufferOut;
      goto LABEL_99;
    }
  }

  v48 = 0;
  v46 = v42;
  v47 = v42 == 0;
LABEL_99:
  if (v46)
  {
    v30 = v69;
    v56 = 0;
  }

  else
  {
    v56 = &v91;
    v30 = v69;
  }

  PTSAndDTSAndDuration = CMSampleBufferCreate(v44, v48, 0, v45, v34, v82, 1, 1, &v92, v47, v56, &v86);
  if (PTSAndDTSAndDuration)
  {
    goto LABEL_36;
  }

  if (v34)
  {
    PTSAndDTSAndDuration = CMSampleBufferSetShouldReleaseMakeDataReadyRefcon();
    if (PTSAndDTSAndDuration)
    {
      goto LABEL_36;
    }

    CFRetain(v34);
  }

LABEL_83:
  if (v68)
  {
    v51 = v68(a6, a7, v86);
    if (v51)
    {
      v18 = v51;
      sgffr_generateSingleSampleBuffer_cold_3();
      goto LABEL_4;
    }
  }

  if (!v29)
  {
LABEL_94:
    sgffr_attachMediaSampleAttachmentsToSampleBuffer(DerivedStorage, a2, v86, 0);
    sgffr_setSampleBufferAttachments(DerivedStorage, v86, cf, v27);
    v18 = 0;
    *a9 = v86;
    v86 = 0;
    goto LABEL_6;
  }

  v52 = CFGetAllocator(a1);
  PTSAndDTSAndDuration = SampleGeneratorReadCompletionInfoCreate(v52, v86, v79, a2, v93, v90, v94, v91, &v77);
  if (PTSAndDTSAndDuration)
  {
LABEL_36:
    v18 = PTSAndDTSAndDuration;
    goto LABEL_4;
  }

  TimeNeededInNanosecondsAndReadSchedulerFlags = sgffr_getTimeNeededInNanosecondsAndReadSchedulerFlags(DerivedStorage, v86, v95[0], v71, a2, &v84);
  sgffr_rememberScheduledIOForSampleBuffer(v81, v86);
  if (v30)
  {
    v54 = FigScheduledIOBatchAddRead(v30, v27, v31, blockBufferOut, a1, v77, TimeNeededInNanosecondsAndReadSchedulerFlags, v84, &v85);
  }

  else
  {
    v54 = FigScheduledIORequestRead(v81, v27, v31, blockBufferOut, a1, v77, TimeNeededInNanosecondsAndReadSchedulerFlags, v84, &v85);
  }

  v18 = v54;
  if (!v54)
  {
    v77 = 0;
    v55 = v85;
    if (v34)
    {
      v34[4] = v85;
    }

    CMSampleBufferSetInvalidateCallback(v86, sgffr_invalidateSampleBuffer, v55);
    goto LABEL_94;
  }

  sgffr_generateSingleSampleBuffer_cold_2(v54, &v86);
LABEL_4:
  if (v86)
  {
    CFRelease(v86);
  }

LABEL_6:
  if (blockBufferOut)
  {
    CFRelease(blockBufferOut);
  }

  if (v87)
  {
    CFRelease(v87);
  }

  if (v88)
  {
    CFRelease(v88);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (v80)
  {
    CFRelease(v80);
  }

  if (v81)
  {
    CFRelease(v81);
  }

  if (v82)
  {
    CFRelease(v82);
  }

  if (v76)
  {
    CFRelease(v76);
  }

  if (v77)
  {
    CFRelease(v77);
  }

  if (v78)
  {
    CFRelease(v78);
  }

  return v18;
}

uint64_t videoMentorRemapSBufTiming(uint64_t a1, uint64_t a2, void *target)
{
  v6 = *a1;
  memset(&v25, 0, sizeof(v25));
  memset(&v24, 0, sizeof(v24));
  memset(&v23, 0, sizeof(v23));
  v7 = MEMORY[0x1E695E4D0];
  v8 = MEMORY[0x1E6960520];
  if (*(a1 + 82))
  {
    CMSetAttachment(target, *MEMORY[0x1E6960520], *MEMORY[0x1E695E4D0], 1u);
  }

  if ((*(a1 + 68) & 0x1D) == 1)
  {
    time1 = *(a1 + 56);
    time2 = **&MEMORY[0x1E6960CC0];
    if (CMTimeCompare(&time1, &time2))
    {
      memset(&time1, 0, sizeof(time1));
      CMSampleBufferGetOutputPresentationTimeStamp(&time1, target);
      lhs = time1;
      videoMentorRemapTime(v6, a2, 0, &lhs.value, &time2);
      time1 = time2;
      lhs = time2;
      v19 = *(a1 + 56);
      CMTimeAdd(&time2, &lhs, &v19);
      time1 = time2;
      lhs = time2;
      videoMentorRemapTime(v6, a2, 1, &lhs.value, &time2);
      time1 = time2;
      CMSampleBufferSetOutputPresentationTimeStamp(target, &time2);
    }
  }

  if (!*(a1 + 81))
  {
    if (!*(a1 + 80))
    {
      goto LABEL_31;
    }

    CMSampleBufferGetOutputDuration(&v23, target);
    goto LABEL_29;
  }

  CMSampleBufferGetOutputDuration(&v23, target);
  v9 = *v7;
  if (v9 == CMGetAttachment(target, *v8, 0))
  {
    CMSampleBufferGetOutputPresentationTimeStamp(&v24, target);
    time1 = v24;
    time2 = v23;
    CMTimeSubtract(&v25, &time1, &time2);
  }

  else
  {
    CMSampleBufferGetOutputPresentationTimeStamp(&v25, target);
    time1 = v25;
    time2 = v23;
    CMTimeAdd(&v24, &time1, &time2);
  }

  if ((*(a1 + 20) & 0x1D) == 1)
  {
    time1 = v25;
    time2 = *(a1 + 8);
    if (CMTimeCompare(&time1, &time2) < 0)
    {
      v11 = 0;
      goto LABEL_18;
    }
  }

  if ((*(a1 + 44) & 0x1D) != 1)
  {
    v11 = 1;
LABEL_18:
    v10 = 1;
    goto LABEL_19;
  }

  time1 = *(a1 + 32);
  time2 = v25;
  v10 = CMTimeCompare(&time1, &time2) > 0;
  v11 = 1;
LABEL_19:
  if ((*(a1 + 44) & 0x1D) == 1)
  {
    time1 = *(a1 + 32);
    time2 = v24;
    if (CMTimeCompare(&time1, &time2) < 0)
    {
      v12 = 0;
      if (v10)
      {
        goto LABEL_24;
      }

LABEL_29:
      v16 = *MEMORY[0x1E6960560];
      time1 = v23;
      v15 = target;
      goto LABEL_30;
    }
  }

  if ((*(a1 + 20) & 0x1D) == 1)
  {
    time1 = v24;
    time2 = *(a1 + 8);
    if (CMTimeCompare(&time1, &time2) < 1)
    {
      goto LABEL_29;
    }
  }

  v12 = 1;
  if (!v10)
  {
    goto LABEL_29;
  }

LABEL_24:
  if ((v11 & 1) == 0)
  {
    v13 = *MEMORY[0x1E6960560];
    time2 = *(a1 + 8);
    lhs = v25;
    CMTimeSubtract(&time1, &time2, &lhs);
    audioMentorSetAttachmentAsFigTimeDictionary(target, v13, &time1);
  }

  if ((v12 & 1) == 0)
  {
    v14 = *MEMORY[0x1E6960558];
    time2 = v24;
    lhs = *(a1 + 32);
    CMTimeSubtract(&time1, &time2, &lhs);
    v15 = target;
    v16 = v14;
LABEL_30:
    audioMentorSetAttachmentAsFigTimeDictionary(v15, v16, &time1);
  }

LABEL_31:
  FigSimpleMutexLock();
  v17 = v6[7];
  if (v17)
  {
    v17(v6[9], a2, target);
  }

  FigSimpleMutexUnlock();
  return 0;
}

uint64_t FigScheduledIORequestRead(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8, uint64_t a9)
{
  v17 = *(*(CMBaseObjectGetVTable() + 16) + 16);
  if (v17)
  {
    return v17(a1, a2, a3, a4, sgffr_markSampleBufferReady, a5, a6, a7, a8, a9);
  }

  else
  {
    return 4294954514;
  }
}

double FigCRABSScheduledIORequestRead(uint64_t a1, uint64_t a2, uint64_t a3, const void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9, void *a10)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v25[0] = a2;
  v25[1] = a3;
  v17 = *DerivedStorage;
  v18 = *(*(CMBaseObjectGetVTable() + 24) + 8);
  if (v18 && !v18(v17, 4 * ((a9 & 0xC) != 0), 1, v25))
  {
    v20 = malloc_type_calloc(1uLL, 0x50uLL, 0x10A0040CC388DE2uLL);
    if (v20)
    {
      v21 = v20;
      v22 = FigAtomicIncrement32();
      *(v21 + 8) = v22;
      *v21 = DerivedStorage;
      *(v21 + 24) = a2;
      *(v21 + 32) = a3;
      *(v21 + 40) = a5;
      *(v21 + 48) = a6;
      *(v21 + 56) = a7;
      *(v21 + 64) = a9;
      *(v21 + 72) = a4;
      if (a4)
      {
        CFRetain(a4);
        v22 = *(v21 + 8);
      }

      *a10 = v22;
      if ((a9 & 0xC) != 0)
      {
        if (!FigSimpleMutexLock())
        {
          *(v21 + 16) = 0;
          **(DerivedStorage + 32) = v21;
          *(DerivedStorage + 32) = v21 + 16;
          *(DerivedStorage + 12) = 1;
          FigSimpleMutexUnlock();
        }
      }

      else
      {
        siocrabsFinishUnlocked(DerivedStorage, 0, 0);
        siocrabsFinish(DerivedStorage, v21, 0, 0);
      }
    }

    else
    {
      fig_log_get_emitter();
      return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v23, v24, LODWORD(v25[0]));
    }
  }

  return result;
}

uint64_t siocrabsFinish(uint64_t *a1, uint64_t a2, int a3, int a4)
{
  lengthAtOffsetOut = 0;
  dataLength = 0;
  targetBBuf = 0;
  dataPointerOut = 0;
  if (a3)
  {
    v35 = *(a2 + 24);
    v8 = *a1;
    v9 = *(*(CMBaseObjectGetVTable() + 24) + 16);
    if (v9)
    {
      DataPointer = v9(v8, 1, &v35);
LABEL_4:
      appended = DataPointer;
      goto LABEL_25;
    }

    goto LABEL_24;
  }

  FigCRABSGetByteStream();
  v13 = v12;
  v14 = *(a2 + 72);
  if (!v14 || CMBlockBufferIsEmpty(v14))
  {
    while (1)
    {
      v16 = *(a2 + 24);
      v15 = *(a2 + 32);
      v17 = *(*(CMBaseObjectGetVTable() + 16) + 32);
      if (!v17)
      {
        break;
      }

      v18 = v17(v13, v15, v16, &targetBBuf, &dataLength);
      if (v18 != -12792)
      {
        appended = v18;
        if (!v18)
        {
          v19 = *(a2 + 72);
          if (v19)
          {
            appended = CMBlockBufferAppendBufferReference(v19, targetBBuf, 0, dataLength, 0);
            if (targetBBuf)
            {
              CFRelease(targetBBuf);
            }
          }

          else
          {
            appended = 0;
            *(a2 + 72) = targetBBuf;
          }
        }

        goto LABEL_25;
      }
    }

LABEL_24:
    appended = -12782;
    goto LABEL_25;
  }

  DataPointer = CMBlockBufferAssureBlockMemory(*(a2 + 72));
  if (DataPointer)
  {
    goto LABEL_4;
  }

  if (*(a2 + 32))
  {
    v20 = 0;
LABEL_16:
    DataPointer = CMBlockBufferGetDataPointer(*(a2 + 72), v20, &lengthAtOffsetOut, 0, &dataPointerOut);
    if (DataPointer)
    {
      goto LABEL_4;
    }

    if (lengthAtOffsetOut > *(a2 + 32) - v20)
    {
      lengthAtOffsetOut = *(a2 + 32) - v20;
    }

    while (1)
    {
      v22 = dataPointerOut;
      v21 = lengthAtOffsetOut;
      v23 = *(a2 + 24);
      v24 = *(*(CMBaseObjectGetVTable() + 16) + 8);
      if (!v24)
      {
        goto LABEL_24;
      }

      v25 = v24(v13, v21, v20 + v23, v22, 0);
      if (v25 != -12792)
      {
        appended = v25;
        if (!v25)
        {
          v20 += lengthAtOffsetOut;
          dataLength = v20;
          if (v20 < *(a2 + 32))
          {
            goto LABEL_16;
          }
        }

        goto LABEL_25;
      }
    }
  }

  appended = 0;
LABEL_25:
  if (appended)
  {
    v26 = 1;
  }

  else
  {
    v26 = a3 == 0;
  }

  if (v26)
  {
    v27 = appended;
  }

  else
  {
    v27 = 4294954425;
  }

  v28 = *(a2 + 48);
  v29 = *(a2 + 56);
  v30 = *(a2 + 72);
  if (v30)
  {
    v31 = CFRetain(v30);
    v32 = *(a2 + 72);
    targetBBuf = v31;
    v33 = *(a2 + 40);
    if (v32)
    {
      CFRelease(v32);
      v31 = targetBBuf;
    }
  }

  else
  {
    v31 = 0;
    targetBBuf = 0;
    v33 = *(a2 + 40);
  }

  free(a2);
  if (a4 || !v27)
  {
    v33(v28, v29, v31, dataLength, v27);
    v31 = targetBBuf;
  }

  if (v31)
  {
    CFRelease(v31);
  }

  if (!FigSimpleMutexLock())
  {
    if (!a1[3])
    {
      *(a1 + 12) = 0;
    }

    FigSimpleMutexUnlock();
  }

  return v27;
}

void sgffr_markSampleBufferReady(int a1, uint64_t a2, OpaqueCMBlockBuffer *a3, int a4, OSStatus status)
{
  v8 = *(a2 + 16);
  v9 = *(a2 + 24);
  dataBuffer = 0;
  if (v9)
  {
    CVPixelBufferUnlockBaseAddress(v9, 0);
  }

  if (status == -19283)
  {
    if (!CMSampleBufferIsValid(v8))
    {
      goto LABEL_18;
    }

    v10 = v8;
    v11 = -16751;
    goto LABEL_17;
  }

  if (status)
  {
    goto LABEL_16;
  }

  if (v9)
  {
    goto LABEL_8;
  }

  if (!CMSampleBufferIsValid(v8))
  {
    goto LABEL_18;
  }

  if (!*(a2 + 40))
  {
LABEL_8:
    CMSampleBufferSetDataReady(v8);
    goto LABEL_18;
  }

  v13 = 0;
  v14 = 0;
  if (CMSampleBufferGetNumSamples(v8) != 1)
  {
    if (sgffr_markSampleBufferReady_cold_1())
    {
      goto LABEL_18;
    }

LABEL_16:
    v10 = v8;
    v11 = status;
LABEL_17:
    CMSampleBufferSetDataFailed(v10, v11);
    goto LABEL_18;
  }

  sgffr_refineAndVerifySampleLocation(*(a2 + 32), a3, 0, *(a2 + 64), *(a2 + 72), *(a2 + 48), *(a2 + 56), &v14, &v13);
  if (v12 || sgffr_createBlockBufferWithBufferReference(*MEMORY[0x1E695E480], a3, v14 - *(a2 + 64), v13, &dataBuffer) || CMSampleBufferSetDataBuffer(v8, dataBuffer) || CMSampleBufferSetDataReadyWithNewSize())
  {
    goto LABEL_16;
  }

LABEL_18:
  sgffr_forgetScheduledIOForSampleBuffer(v8);
  if (dataBuffer)
  {
    CFRelease(dataBuffer);
  }

  CFRelease(a2);
}

uint64_t videoMentorThreadSendSampleBuffer(uint64_t a1, CMSampleBufferRef sbuf, const void *a3, int a4, int a5, int a6, int a7, int a8)
{
  HIDWORD(v42) = a7;
  values = 0;
  SampleAttachmentsArray = CMSampleBufferGetSampleAttachmentsArray(sbuf, 0);
  if (SampleAttachmentsArray && (v15 = SampleAttachmentsArray, CFArrayGetCount(SampleAttachmentsArray) >= 1) && (ValueAtIndex = CFArrayGetValueAtIndex(v15, 0)) != 0 && *MEMORY[0x1E695E4D0] == CFDictionaryGetValue(ValueAtIndex, *MEMORY[0x1E6960410]))
  {
    if (a5 == 1)
    {
      a5 = 0;
    }

    a4 = 4;
  }

  else
  {
    if ((a4 - 1) < 2)
    {
      v17 = MEMORY[0x1E6960410];
      goto LABEL_11;
    }

    if (a4 == 3)
    {
      v17 = MEMORY[0x1E6960408];
      goto LABEL_11;
    }

    if (a4 == 5)
    {
      v17 = MEMORY[0x1E6962DC0];
LABEL_11:
      videoMentorSetAttachmentOnSample(sbuf, *v17, *MEMORY[0x1E695E4D0]);
    }
  }

  v18 = MEMORY[0x1E695E480];
  if ((a5 - 1) <= 1)
  {
    v47 = **&MEMORY[0x1E6960C70];
    CMSampleBufferGetPresentationTimeStamp(&v47, sbuf);
    v19 = *v18;
    time = v47;
    v20 = CMTimeCopyAsDictionary(&time, v19);
    if (v20)
    {
      v21 = v20;
      if (a5 == 1)
      {
        if (a3)
        {
          v22 = malloc_type_calloc(1uLL, 0x40uLL, 0x1020040038FC326uLL);
          if (!v22)
          {
            goto LABEL_28;
          }

          v23 = *(*(CMBaseObjectGetVTable() + 16) + 8);
          if (v23 && !v23(a3, v22 + 1) && !videoMentorGetCursorPTSRange(a3, v22 + 1))
          {
            videoMentorSetAttachmentOnSample(sbuf, *MEMORY[0x1E6962DD0], v21);
LABEL_28:
            CFRelease(v21);
            if (!a6)
            {
              goto LABEL_29;
            }

            goto LABEL_22;
          }

          videoMentorSavedFrameDestroy(v22);
        }
      }

      else
      {
        videoMentorSetAttachmentOnSample(sbuf, *MEMORY[0x1E6962DC8], v20);
      }

      v22 = 0;
      goto LABEL_28;
    }
  }

  v22 = 0;
  if (!a6)
  {
LABEL_29:
    v25 = 0;
    goto LABEL_30;
  }

LABEL_22:
  ++*(a1 + 504);
  v24 = *v18;
  values = CFNumberCreate(*v18, kCFNumberIntType, (a1 + 504));
  v25 = CFDictionaryCreate(v24, MEMORY[0x1E6960580], &values, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  CMSetAttachment(sbuf, *MEMORY[0x1E6960518], values, 1u);
  v26 = *(a1 + 24);
  v27 = *(*(CMBaseObjectGetVTable() + 16) + 64);
  if (v27)
  {
    v27(v26, *MEMORY[0x1E6960598], v25, 0);
  }

  v28 = *(a1 + 24);
  v29 = *(*(CMBaseObjectGetVTable() + 16) + 64);
  if (v29)
  {
    v29(v28, *MEMORY[0x1E69605A0], 0, 0);
  }

LABEL_30:
  if (*(a1 + 492))
  {
    videoMentorPostCollectorCoherenceConduitNotification(a1);
    *(a1 + 492) = 0;
    if (!a8)
    {
      goto LABEL_33;
    }

    goto LABEL_32;
  }

  if (a8)
  {
LABEL_32:
    CMSetAttachment(sbuf, *MEMORY[0x1E6960510], *MEMORY[0x1E695E4D0], 1u);
  }

LABEL_33:
  v30 = *(a1 + 24);
  v31 = *(*(CMBaseObjectGetVTable() + 16) + 8);
  if (!v31 || v31(v30, sbuf))
  {
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v42, a3, LODWORD(lhs.value));
    v33 = v34;
  }

  else
  {
    *(a1 + 520) = 1;
    ++*(a1 + 900);
    if (v22)
    {
      *v22 = *(a1 + 552);
      *(a1 + 552) = v22;
      ++*(a1 + 904);
    }

    if (a5 == 2)
    {
      ++*(a1 + 908);
    }

    if (a4 == 3 && (memset(&v47, 0, sizeof(v47)), CMSampleBufferGetOutputPresentationTimeStamp(&v47, sbuf), memset(&time, 0, sizeof(time)), CMSampleBufferGetOutputDuration(&rhs, sbuf), lhs = v47, CMTimeAdd(&time, &lhs, &rhs), rhs = v47, lhs = time, v32 = videoMentorEnqueueTimestampIntervalMarker(a1, &rhs.value, &lhs.value), v32))
    {
      v33 = v32;
    }

    else
    {
      v35 = *(a1 + 536);
      if (v35)
      {
        CFRelease(v35);
        *(a1 + 536) = 0;
      }

      if (a3)
      {
        v36 = HIDWORD(v42) == 0;
      }

      else
      {
        v36 = 1;
      }

      v37 = !v36;
      if (!v36 && (a4 == 3 || !a4))
      {
        v38 = *(*(CMBaseObjectGetVTable() + 16) + 8);
        if (v38)
        {
          v38(a3, a1 + 536);
        }
      }

      if ((a5 - 4) <= 0xFFFFFFFD)
      {
        v39 = *(a1 + 528);
        if (v39)
        {
          CFRelease(v39);
          *(a1 + 528) = 0;
        }

        if (v37)
        {
          v40 = *(*(CMBaseObjectGetVTable() + 16) + 8);
          if (v40)
          {
            v40(a3, a1 + 528);
          }
        }
      }

      v33 = 0;
    }

    v22 = 0;
  }

  if (values)
  {
    CFRelease(values);
  }

  if (v25)
  {
    CFRelease(v25);
  }

  videoMentorSavedFrameDestroy(v22);
  return v33;
}

void videoMentorSetAttachmentOnSample(opaqueCMSampleBuffer *a1, const void *a2, const void *a3)
{
  SampleAttachmentsArray = CMSampleBufferGetSampleAttachmentsArray(a1, 1u);
  if (SampleAttachmentsArray)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(SampleAttachmentsArray, 0);
    if (ValueAtIndex)
    {

      CFDictionarySetValue(ValueAtIndex, a2, a3);
    }
  }
}

_BYTE *sbp_bq_InhibitOutputUntil(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  result = CMBaseObjectGetDerivedStorage();
  if (!*result)
  {
    CMNotificationCenterGetDefaultLocalCenter();

    return CMNotificationCenterPostNotification();
  }

  return result;
}

void vmc2InhibitOutputUntil(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const __CFDictionary *a5)
{
  if (!*(a2 + 16))
  {
    FigSimpleMutexLock();
    v8 = *(a2 + 784);
    if (v8)
    {
      CFRelease(v8);
      *(a2 + 784) = 0;
    }

    if (a5)
    {
      Value = CFDictionaryGetValue(a5, *MEMORY[0x1E6960580]);
      if (Value)
      {
        ++*(a2 + 792);
        *(a2 + 784) = Value;
        CFRetain(Value);
      }
    }

    FigSimpleMutexUnlock();
  }
}

_BYTE *sbp_bq_ResetOutput(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  result = CMBaseObjectGetDerivedStorage();
  if (!*result)
  {
    CMNotificationCenterGetDefaultLocalCenter();

    return CMNotificationCenterPostNotification();
  }

  return result;
}

void vmc2ResetOutput(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    vmc2InvokeOutputCallback_FlushOutput(a2);
    ++*(a2 + 524);
    FigSimpleMutexLock();
    v4 = MEMORY[0x1E6960C70];
    *(a2 + 368) = *MEMORY[0x1E6960C70];
    *(a2 + 384) = *(v4 + 16);
    FigSimpleMutexUnlock();

    vmc2ResetTroubleMonitorTimers(a2);
  }
}

uint64_t piqca_flush(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  ++*(DerivedStorage + 24);
  *(DerivedStorage + 135) = 0;
  if (*(DerivedStorage + 52))
  {
    CAImageQueueFlush();
  }

  *(DerivedStorage + 50) = 1;
  piqca_postOccupancyChanged(a1);
  return 0;
}

_BYTE *sbp_bq_dataBecameReady(uint64_t a1)
{
  result = CMBaseObjectGetDerivedStorage();
  if (!*result)
  {
    CMNotificationCenterGetDefaultLocalCenter();

    return CMNotificationCenterPostNotification();
  }

  return result;
}

void vmc2InputDataBecameReady(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    *(a2 + 592) = 1;
    vmc2TriggerSchedulingIfOutputIsLow(a2);
  }
}

uint64_t vmc2TriggerSchedulingIfOutputIsLow(uint64_t a1)
{
  result = vmc2GetWaterLevelState(a1);
  if (!result || *(a1 + 440))
  {
    v3 = *(a1 + 264);
    VTable = CMBaseObjectGetVTable();
    v5 = *(VTable + 16);
    result = VTable + 16;
    v6 = *(v5 + 16);
    if (v6)
    {

      return v6(v3);
    }
  }

  return result;
}

uint64_t editMentorStartNewChildOrder(uint64_t a1, uint64_t a2)
{
  v6 = *MEMORY[0x1E69E9840];
  dispatch_assert_queue_V2(*(a1 + 304));
  FigSimpleMutexLock();
  if (*(a1 + 568) == a2)
  {
    editMentorBumpChildOrder(a1);
  }

  if (dword_1EAF16E38)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  return FigSimpleMutexUnlock();
}

void editMentorPostOrderCompletionNotification(uint64_t a1, const char *a2, uint64_t a3)
{
  v10 = *MEMORY[0x1E69E9840];
  v5 = FigMentorNotificationPayloadCreate(@"MentorStoppingDueToCompletion", a2, 0, *(a1 + 288), 0, a3);
  if (dword_1EAF16E38)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (*(a1 + 680))
  {
    editMentorPostSyntheticPrerollCompleteNotification(a1, a2, 0);
  }

  v7 = *(a1 + 672);
  if (v7)
  {
    editMentorSetChildMentorModeToDoNothing(a1, 0, v7);
    v8 = *(a1 + 672);
    if (v8)
    {
      CFRelease(v8);
      *(a1 + 672) = 0;
    }
  }

  if (dword_1EAF16E38 >= 2)
  {
    v9 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  CMNotificationCenterGetDefaultLocalCenter();
  CMNotificationCenterPostNotification();
  if (v5)
  {
    CFRelease(v5);
  }
}

uint64_t vmc2RecalculateUpcomingImageTimes(uint64_t a1)
{
  v17 = **&MEMORY[0x1E6960C88];
  v16 = **&MEMORY[0x1E6960C80];
  FigSimpleMutexLock();
  v2 = *(a1 + 88);
  v3 = *(*(CMBaseObjectGetVTable() + 16) + 8);
  if (v3 && v3(v2))
  {
    v4 = *(a1 + 88);
    v5 = *(*(CMBaseObjectGetVTable() + 16) + 16);
    v6 = v5 && v5(v4) || *(a1 + 730) != 0;
  }

  else
  {
    v6 = 0;
  }

  LOBYTE(v15.value) = 0;
  memset(&time1, 0, sizeof(time1));
  memset(&time2, 0, sizeof(time2));
  v7 = *(a1 + 88);
  v8 = *(*(CMBaseObjectGetVTable() + 16) + 32);
  if (v8 && (v8(v7, &v15, &time1, &time2), LOBYTE(v15.value)) && (time1.flags & 1) != 0)
  {
    v9 = 0;
    v17 = time1;
    v16 = time2;
  }

  else
  {
    v9 = 1;
  }

  if ((*(a1 + 332) & 0x1D) == 1)
  {
    time1 = v17;
    time2 = *(a1 + 320);
    CMTimeMinimum(&v17, &time1, &time2);
    time1 = v16;
    time2 = *(a1 + 320);
    CMTimeMaximum(&v16, &time1, &time2);
    v9 = 0;
    v6 = 0;
  }

  if ((*(a1 + 356) & 0x1D) == 1)
  {
    time2 = v17;
    v15 = *(a1 + 344);
    CMTimeMinimum(&time1, &time2, &v15);
    v17 = time1;
    time2 = v16;
    v15 = *(a1 + 344);
    CMTimeMaximum(&time1, &time2, &v15);
    v16 = time1;
    if ((*(a1 + 404) & 0x1D) != 1)
    {
      v9 = 0;
      goto LABEL_18;
    }

    goto LABEL_17;
  }

  if ((*(a1 + 404) & 0x1D) == 1)
  {
LABEL_17:
    time2 = v17;
    v15 = *(a1 + 392);
    CMTimeMinimum(&time1, &time2, &v15);
    v17 = time1;
    time2 = v16;
    v15 = *(a1 + 392);
    CMTimeMaximum(&time1, &time2, &v15);
    v9 = 0;
    v16 = time1;
    goto LABEL_18;
  }

  if (!v6)
  {
LABEL_18:
    if ((*(a1 + 428) & 0x1D) == 1)
    {
      time2 = v17;
      v15 = *(a1 + 416);
      CMTimeMinimum(&time1, &time2, &v15);
      v17 = time1;
      time2 = v16;
      v15 = *(a1 + 416);
      CMTimeMaximum(&time1, &time2, &v15);
      v9 = 0;
      v10 = 0;
      v16 = time1;
    }

    else
    {
      v10 = 0;
    }

    goto LABEL_21;
  }

  if (*(a1 + 312))
  {
    goto LABEL_25;
  }

  v10 = 1;
LABEL_21:
  v15 = v17;
  v14 = v16;
  FigReadWriteLockLockForRead();
  if (*(a1 + 249))
  {
    v11 = *(a1 + 160);
    if (v11)
    {
      v12 = *(a1 + 152);
      time1 = v15;
      time2 = v14;
      v11(v12, v9, v10, &time1, &time2);
    }
  }

  else
  {
    vmc2RecalculateUpcomingImageTimes_cold_1();
  }

  FigReadWriteLockUnlockForRead();
  ++*(a1 + 524);
LABEL_25:
  FigSimpleMutexUnlock();
  return vmc2TriggerSchedulingIfOutputIsLow(a1);
}

uint64_t sbp_bq_isEmpty(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*DerivedStorage)
  {
    fig_log_get_emitter();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v4, v5, vars0);
    return 1;
  }

  else
  {
    v3 = *(DerivedStorage + 8);

    return CMBufferQueueIsEmpty(v3);
  }
}

double piqca_setUpcomingImageInfo(uint64_t a1, unsigned int a2, __int128 *a3, __int128 *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a2 < 4)
  {
    if (a2 != 2 || (*(a3 + 3) & 0x1D) == 1 && (*(a4 + 3) & 0x1D) == 1)
    {
      v13 = *a3;
      *(DerivedStorage + 180) = *(a3 + 2);
      *(DerivedStorage + 164) = v13;
      v14 = *a4;
      *(DerivedStorage + 204) = *(a4 + 2);
      *(DerivedStorage + 188) = v14;
      *(DerivedStorage + 160) = a2;
      piqca_updateReducedPollingTimeRange(a1);
      return result;
    }

    v10 = qword_1EAF170D8;
    v11 = v4;
    v12 = 5343;
  }

  else
  {
    v10 = qword_1EAF170D8;
    v11 = v4;
    v12 = 5337;
  }

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v10, 4294954486, "<<<< IQ-CA >>>>", v12, v11);
}

void figPlaybackBoss_MentorStopping(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const __CFDictionary *a5)
{
  v51 = *MEMORY[0x1E69E9840];
  v7 = FigCFWeakReferenceHolderCopyReferencedObject();
  v8 = FigCFEqual();
  if (a5)
  {
    Value = CFDictionaryGetValue(a5, @"Mentor_Order");
    v10 = CFDictionaryGetValue(a5, @"Mentor_OSStatus");
    v11 = v10;
    if (v10)
    {
      CFRetain(v10);
    }

    a5 = CFDictionaryGetValue(a5, @"Mentor_NotificationThatWasRequestedButDropped");
    if (!v7)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v11 = 0;
    Value = 0;
    if (!v7)
    {
LABEL_10:
      v12 = 0;
      goto LABEL_11;
    }
  }

  if (*(v7 + 16))
  {
    goto LABEL_10;
  }

  FigSimpleMutexLock();
  if (*(a2 + 224) != Value)
  {
    goto LABEL_9;
  }

  if (a5)
  {
    v13 = CFGetTypeID(a5);
    if (v13 == CFDictionaryGetTypeID())
    {
      if (CFDictionaryGetValue(a5, @"BossScrubOrder"))
      {
        if (FigCFEqual())
        {
          v14 = *(v7 + 784);
          if (v14)
          {
            *(v7 + 788) = 0;
            *(v7 + 784) = 0;
            FigSimpleMutexUnlock();
            value_low = 0xFFFFFFFFLL;
            LODWORD(valuePtr[0].start.value) = -1;
            if (v11)
            {
              CFNumberGetValue(v11, kCFNumberSInt32Type, valuePtr);
              value_low = LODWORD(valuePtr[0].start.value);
            }

            figPlaybackBossPostSeekDidComplete(v7, v14, value_low, v15, v16, v17, v18, v19);
            goto LABEL_10;
          }
        }

        goto LABEL_9;
      }
    }
  }

  if (!*(a2 + 236))
  {
LABEL_9:
    FigSimpleMutexUnlock();
    goto LABEL_10;
  }

  if (v8)
  {
    v21 = dword_1EAF16E78 == 0;
  }

  else
  {
    v21 = 1;
  }

  if (!v21)
  {
    LODWORD(end.value) = 0;
    type[0] = OS_LOG_TYPE_DEFAULT;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v23 = *(v7 + 432);
  if (v23 == 1886151033)
  {
    v45 = 0;
  }

  else
  {
    if (v23 == 1920298606)
    {
      v24 = *(v7 + 436) != 0;
      v25 = *(v7 + 436) == 0;
      v45 = 1;
      goto LABEL_38;
    }

    v45 = 1;
  }

  v25 = 1;
  v24 = 1;
LABEL_38:
  *(a2 + 236) = 0;
  FigSimpleMutexLock();
  if (*(v7 + 848))
  {
    LODWORD(end.value) = 0;
    type[0] = OS_LOG_TYPE_DEFAULT;
    v26 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (*(v7 + 80) < 1)
  {
LABEL_44:
    FigSimpleMutexUnlock();
    v28 = 0;
    v29 = *(v7 + 424);
    *(v7 + 424) = 0;
    if (!v8)
    {
      goto LABEL_53;
    }

LABEL_47:
    if (v11)
    {
      *(v7 + 556) = 1;
      v30 = *(v7 + 560);
      *(v7 + 560) = v11;
    }

    else
    {
      LODWORD(valuePtr[0].start.value) = -12373;
      v11 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt32Type, valuePtr);
      *(v7 + 556) = 1;
      v30 = *(v7 + 560);
      *(v7 + 560) = v11;
      if (!v11)
      {
        goto LABEL_51;
      }
    }

    CFRetain(v11);
LABEL_51:
    if (v30)
    {
      CFRelease(v30);
    }

    goto LABEL_53;
  }

  v27 = 0;
  while (!*(CFArrayGetValueAtIndex(*(v7 + 72), v27) + 236))
  {
    if (*(v7 + 80) <= ++v27)
    {
      goto LABEL_44;
    }
  }

  FigSimpleMutexUnlock();
  v29 = 0;
  v28 = 1;
  if (v8)
  {
    goto LABEL_47;
  }

LABEL_53:
  v31 = FigSimpleMutexUnlock();
  if (!v25)
  {
    *type = 0;
    if (!*(a2 + 104))
    {
      figPlaybackBoss_MentorStopping_cold_1(v31);
      if (v24)
      {
        goto LABEL_64;
      }

      goto LABEL_62;
    }

    start = *(v7 + 248);
    end = *(v7 + 272);
    CMTimeRangeFromTimeToTime(valuePtr, &start, &end);
    v32 = *MEMORY[0x1E695E480];
    v33 = CMTimeRangeCopyAsDictionary(valuePtr, *MEMORY[0x1E695E480]);
    v34 = CMSampleBufferCreate(v32, 0, 1u, 0, 0, 0, 0, 0, 0, 0, 0, type);
    v35 = *type;
    if (!v34)
    {
      CMSetAttachment(*type, *MEMORY[0x1E6962E10], v33, 1u);
      CMBufferQueueEnqueue(*(a2 + 104), *type);
      v35 = *type;
    }

    if (v35)
    {
      CFRelease(v35);
    }

    if (v33)
    {
      CFRelease(v33);
    }
  }

  if (v24)
  {
    goto LABEL_64;
  }

LABEL_62:
  v36 = *(a2 + 104);
  if (v36)
  {
    CMBufferQueueMarkEndOfData(v36);
  }

  else
  {
    figPlaybackBoss_MentorStopping_cold_2();
  }

LABEL_64:
  if (v45)
  {
    if (v28)
    {
LABEL_66:
      v12 = 0;
      goto LABEL_90;
    }
  }

  else
  {
    figPlaybackBoss_MentorStopping_cold_3();
    if (v28)
    {
      goto LABEL_66;
    }
  }

  if (dword_1EAF16E78)
  {
    LODWORD(end.value) = 0;
    type[0] = OS_LOG_TYPE_DEFAULT;
    v37 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    v38 = end.value;
    v39 = type[0];
    if (os_log_type_enabled(v37, type[0]))
    {
      v40 = v38;
    }

    else
    {
      v40 = v38 & 0xFFFFFFFE;
    }

    if (v40)
    {
      LODWORD(start.value) = 136315650;
      *(&start.value + 4) = "figPlaybackBoss_MentorStopping";
      LOWORD(start.flags) = 2048;
      *(&start.flags + 2) = v7;
      HIWORD(start.epoch) = 2082;
      v49 = v7 + 850;
      LODWORD(v44) = 32;
      _os_log_send_and_compose_impl(v40, 0, valuePtr, 128, &dword_1962D5000, v37, v39, "<<<< Boss >>>> %s: <%p|%{public}s> all mentors are now idle", &start, v44);
    }

    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (*(v7 + 592))
  {
    *(v7 + 592) = 0;
    if (*(v7 + 440) != 0.0)
    {
      bossScheduleReachedEndCallbackUsingRenderPipelineQueueEndPTS(v7);
    }
  }

  if (*(v7 + 432) == 1920298606)
  {
    *(v7 + 432) = 1768189029;
  }

  if (v29)
  {
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    v12 = Mutable;
    if (Mutable)
    {
      CFDictionarySetValue(Mutable, @"ControlToken", v29);
LABEL_85:
      v42 = *(v7 + 560);
      if (v42)
      {
        CFDictionarySetValue(v12, @"OSStatus", v42);
        v43 = *(v7 + 560);
        if (v43)
        {
          CFRelease(v43);
          *(v7 + 560) = 0;
        }
      }
    }
  }

  else if (*(v7 + 560))
  {
    v12 = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    if (v12)
    {
      goto LABEL_85;
    }
  }

  else
  {
    v12 = 0;
  }

  figPlaybackBoss_sendBecameIdleNotificationIfNowIdle(v7, v12);
LABEL_90:
  if (v29)
  {
    CFRelease(v29);
  }

LABEL_11:
  if (v11)
  {
    CFRelease(v11);
  }

  if (v12)
  {
    CFRelease(v12);
  }

  if (v7)
  {
    CFRelease(v7);
  }
}

uint64_t FigCRABS_GetRangeInCache(const void *a1, uint64_t a2, unint64_t *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!a3)
  {
    FigCRABS_GetRangeInCache_cold_3(&v22);
    return v22;
  }

  if (a2 < 0)
  {
    FigCRABS_GetRangeInCache_cold_2(&v21);
    v15 = 0;
    result = v21;
  }

  else
  {
    v7 = DerivedStorage;
    if (*(DerivedStorage + 56) <= a2)
    {
      FigCRABS_GetRangeInCache_cold_1(&v20);
      v15 = 0;
      result = v20;
    }

    else
    {
      result = crabsEnsureInitialized(a1);
      if (!result)
      {
        result = FigRetainProxyLockMutex();
        if (!result)
        {
          v9 = *(v7 + 96);
          if (v9 == 0x4000)
          {
            v10 = a2 >> 14;
          }

          else if (v9 == 0x10000)
          {
            v10 = a2 >> 16;
          }

          else
          {
            v10 = a2 / v9;
          }

          if (v10 < *(v7 + 88))
          {
            v11 = *(*(v7 + 80) + 8 * v10);
            if (v11)
            {
              v19 = 0;
              if ((*(v7 + 504) & 3) == 0)
              {
                crabsEnsureBlockNotPurged(v7, v11, &v19);
              }

              if (v10 < *(v7 + 224))
              {
                *(v7 + 128) = 1;
              }

              v12 = v11[1];
              v13 = *(v7 + 96);
              v14 = a2 - v13 * *v11;
              v15 = v12 - v14;
              if (v12 <= v14)
              {
                v15 = 0;
              }

              else if (v13 == v12)
              {
                v16 = v10 + 1;
                do
                {
                  if (v16 >= *(v7 + 88))
                  {
                    break;
                  }

                  v17 = *(*(v7 + 80) + 8 * v16);
                  if (!v17)
                  {
                    break;
                  }

                  if ((*(v7 + 504) & 3) == 0)
                  {
                    crabsEnsureBlockNotPurged(v7, v17, &v19);
                    v12 = *(v7 + 96);
                  }

                  v18 = v17[1];
                  v15 += v18;
                  ++v16;
                }

                while (v12 == v18);
              }

              crabsUnlockWithActions(v7);
              result = 0;
              goto LABEL_30;
            }
          }

          crabsUnlockWithActions(v7);
          result = 0;
        }
      }

      v15 = 0;
    }
  }

LABEL_30:
  *a3 = v15;
  return result;
}

void crabsEnsureBlockNotPurged(void *a1, int *a2, _BYTE *a3)
{
  if (a1[28] > *a2 || *a3)
  {

    crabsCleanupBlockIfPurged(a1, a2);
  }

  else
  {
    v5 = *(a2 + 4);
    *(a2 + 4) = v5 | 0x400;
    crabsPurgeCompletionSweep(a1);
    *a3 = 1;
    *(a2 + 4) = a2[2] & 0xFBFF | v5 & 0x400;
  }
}

uint64_t stepDownEntry(uint64_t a1)
{
  if (*(a1 + 120))
  {
    v2 = *(a1 + 112);
    v3 = *(a1 + 8);
    v4 = *(a1 + 88);
    destination = 0;
    CMBlockBufferCopyDataBytes(*(v3 + 416), 8 * v4, 8uLL, &destination);
    v5 = bswap32(destination);
    *(a1 + 112) = v5;
    v6 = *(a1 + 88) + 1;
    v7 = *(a1 + 8);
    v8 = *(v7 + 408);
    *(a1 + 120) = v6 == v8;
    v9 = *(v7 + 244);
    if (v9)
    {
      v5 /= v9;
      *(a1 + 112) = v5;
    }

    if (v2 != v5)
    {
      return 0;
    }
  }

  else
  {
    v7 = *(a1 + 8);
    v8 = *(v7 + 408);
    v6 = *(a1 + 88) + 1;
  }

  if (v6 == v8)
  {
    return 4294954456;
  }

  v11 = *(a1 + 112);
  v12 = *(a1 + 116);
  *(a1 + 96) += *(a1 + 104) * v11;
  *(a1 + 116) = v12 + v11;
  *(a1 + 88) = v6;
  destination = 0;
  CMBlockBufferCopyDataBytes(*(v7 + 416), 8 * v6, 8uLL, &destination);
  v13 = bswap32(destination);
  *(a1 + 112) = v13;
  v14 = *(a1 + 8);
  v15 = *(*a1 + 24);
  if (v15)
  {
    LOBYTE(v15) = *(a1 + 88) + 1 == *(v14 + 408);
  }

  *(a1 + 120) = v15;
  v16 = *(v14 + 244);
  if (v16)
  {
    *(a1 + 112) = v13 / v16;
  }

  else
  {
    v17 = *(a1 + 88);
    destination = 0;
    CMBlockBufferCopyDataBytes(*(v14 + 416), 8 * v17, 8uLL, &destination);
    v16 = bswap32(HIDWORD(destination));
  }

  result = 0;
  *(a1 + 104) = v16;
  *(a1 + 80) = *(a1 + 116);
  return result;
}

uint64_t FigByteRateHistoryReportAverage(uint64_t result, double *a2, double *a3)
{
  if (a2)
  {
    v3 = *(result + 24);
    v4 = *(result + 32);
    v5 = 0.0;
    if (v3 > 499999999 || v4 >= 1000000)
    {
      v5 = v4 * 1000000000.0 / v3;
    }

    *a2 = v5;
  }

  if (a3)
  {
    v7 = *(result + 56);
    if (v7)
    {
      v8 = sqrt(*(result + 48) / v7);
    }

    else
    {
      v8 = 0.0;
    }

    *a3 = v8;
  }

  return result;
}

uint64_t itemfig_copyPlayableTime(uint64_t a1, CFArrayRef *a2)
{
  v29 = *MEMORY[0x1E69E9840];
  v24 = 0;
  *keys = 0u;
  v28 = 0u;
  *values = 0u;
  v26 = 0u;
  v23 = **&MEMORY[0x1E6960CC0];
  v4 = *(MEMORY[0x1E6960CA8] + 16);
  *&v22.start.value = *MEMORY[0x1E6960CA8];
  *&v22.start.epoch = v4;
  *&v22.duration.timescale = *(MEMORY[0x1E6960CA8] + 32);
  itemfig_getNonNegativeCurrentTime(a1, &v23);
  v18.start = v23;
  itemfig_getPlayableRangeAtTime(a1, &v18.start, &v22);
  *&v18.start.value = *&v22.start.value;
  v18.start.epoch = v22.start.epoch;
  valuePtr = CMTimeGetSeconds(&v18.start);
  v5 = *MEMORY[0x1E695E480];
  v6 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberDoubleType, &valuePtr);
  if (v6)
  {
    v7 = v6;
    keys[0] = @"start";
    values[0] = v6;
    v18 = v22;
    CMTimeRangeGetEnd(&time, &v18);
    Seconds = CMTimeGetSeconds(&time);
    v8 = CFNumberCreate(v5, kCFNumberDoubleType, &Seconds);
    if (v8)
    {
      v9 = v8;
      keys[1] = @"end";
      values[1] = v8;
      *&v18.start.value = *&v22.start.value;
      v18.start.epoch = v22.start.epoch;
      v10 = CMTimeCopyAsDictionary(&v18.start, v5);
      if (v10)
      {
        v11 = v10;
        *&v28 = @"startTime";
        *&v26 = v10;
        v18 = v22;
        CMTimeRangeGetEnd(&time, &v18);
        v12 = CMTimeCopyAsDictionary(&time, v5);
        if (v12)
        {
          v13 = v12;
          *(&v28 + 1) = @"endTime";
          *(&v26 + 1) = v12;
          v24 = CFDictionaryCreate(v5, keys, values, 4, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
          if (v24)
          {
            v14 = CFArrayCreate(v5, &v24, 1, MEMORY[0x1E695E9C0]);
            if (v14)
            {
              value_low = 0;
              *a2 = v14;
            }

            else
            {
              FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v18.start.value, v18.start.timescale, LODWORD(v18.start.epoch));
              value_low = v16;
            }

            if (v24)
            {
              CFRelease(v24);
            }
          }

          else
          {
            itemfig_copyPlayableTime_cold_1(&v18);
            value_low = LODWORD(v18.start.value);
          }

          CFRelease(v13);
        }

        else
        {
          itemfig_copyPlayableTime_cold_2(&v18);
          value_low = LODWORD(v18.start.value);
        }

        CFRelease(v11);
      }

      else
      {
        itemfig_copyPlayableTime_cold_3(&v18);
        value_low = LODWORD(v18.start.value);
      }

      CFRelease(v9);
    }

    else
    {
      itemfig_copyPlayableTime_cold_4(&v18);
      value_low = LODWORD(v18.start.value);
    }

    CFRelease(v7);
  }

  else
  {
    itemfig_copyPlayableTime_cold_5(&v18);
    return LODWORD(v18.start.value);
  }

  return value_low;
}

uint64_t FigPlayabilityMonitorGetPlayableRange(uint64_t a1, uint64_t a2, CMTime *a3)
{
  FigSimpleMutexLock();
  CMTimebaseGetTime(&time1, *(a1 + 24));
  v10 = *MEMORY[0x1E6960CC0];
  *&time2.value = *MEMORY[0x1E6960CC0];
  v6 = *(MEMORY[0x1E6960CC0] + 16);
  time2.epoch = v6;
  CMTimeMaximum(&v12, &time1, &time2);
  if (*(a1 + 184) == *(a1 + 96) && !*(a1 + 313) && (time1 = v12, time2 = *(a1 + 216), (CMTimeCompare(&time1, &time2) & 0x80000000) == 0) && (time1 = v12, time2 = *(a1 + 240), CMTimeCompare(&time1, &time2) < 1) || (updated = fpm_updateCacheAndNotify(a1), !updated))
  {
    v8 = *(a1 + 216);
    *(a2 + 16) = *(a1 + 232);
    *a2 = v8;
    time1 = *(a1 + 216);
    time2 = *(a1 + 240);
    if (CMTimeCompare(&time1, &time2) < 0)
    {
      time2 = *(a1 + 240);
      rhs = *(a1 + 216);
      CMTimeSubtract(&time1, &time2, &rhs);
      updated = 0;
      *a3 = time1;
    }

    else
    {
      updated = 0;
      *&a3->value = v10;
      a3->epoch = v6;
    }
  }

  FigSimpleMutexUnlock();
  return updated;
}

void vmc2OutputFrame(uint64_t a1, unsigned __int8 *a2, uint64_t a3, uint64_t a4, uint64_t a5, __int128 *a6, __int128 *a7)
{
  v9 = *a6;
  v7 = *a7;
  v8 = *(a7 + 2);
  vmc2OutputFrameInternal(a1, a2, a3, a4, a5, 0, &v9, &v7, 0);
}

uint64_t piqca_enqueueImage(uint64_t a1, __CVBuffer *a2, const void *a3, __int128 *a4, uint64_t a5)
{
  v6 = *a4;
  v7 = *(a4 + 2);
  return piqca_enqueueImageWithRotation(a1, a2, a3, &v6, 0, a5);
}

uint64_t piqca_postOccupancyChanged(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  CMNotificationCenterGetDefaultLocalCenter();
  result = CMNotificationCenterPostNotification();
  v4 = *(DerivedStorage + 3224);
  if (v4)
  {
    v5 = *(*(CMBaseObjectGetVTable() + 16) + 80);
    if (v5)
    {
      v5(&v9, a1);
    }

    else
    {
      v9 = *MEMORY[0x1E6960C70];
      v10 = *(MEMORY[0x1E6960C70] + 16);
    }

    VTable = CMBaseObjectGetVTable();
    v7 = *(VTable + 16);
    result = VTable + 16;
    v8 = *(v7 + 8);
    if (v8)
    {
      v11 = v9;
      v12 = v10;
      return v8(v4, &v11);
    }
  }

  return result;
}

uint64_t vmc2OutputOccupancyChanged(uint64_t result)
{
  if (!*(result + 16))
  {
    v2 = result;
    ++*(result + 524);
    v3 = *(result + 592);
    if (vmc2GetWaterLevelState(result))
    {
      v4 = *(v2 + 440) != 0;
    }

    else
    {
      v4 = 1;
    }

    v5 = vmc2GetWaterLevelState(v2) == 2 && *(v2 + 440) == 0;
    vmc2UpdateTroubleMonitor(v2, v3, v4, v5, 0);

    return vmc2TriggerSchedulingIfOutputIsLow(v2);
  }

  return result;
}

uint64_t vmc2FrameDecodeCompleted(uint64_t a1, uint64_t a2)
{
  vmc2UpdateSessionMinAndMaxOutputPTS(a2);

  return vmc2CheckForEnd(a2);
}

uint64_t piqca_setDirection(uint64_t a1, float a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v5 = DerivedStorage;
  if (a2 >= 0.0)
  {
    v6 = 0;
  }

  else
  {
    v6 = -1;
  }

  if (a2 > 0.0)
  {
    v6 = 1;
  }

  *(DerivedStorage + 212) = v6;
  if (v6 && *(DerivedStorage + 216) != v6)
  {
    *(DerivedStorage + 216) = v6;
    CAImageQueueSetFlags();
    bzero((v5 + 368), 0x4B0uLL);
  }

  *(v5 + 220) = a2 == 1.0;
  piqca_updateReducedPollingTimeRange(a1);
  return 0;
}

uint64_t VideoMentorSetModeToForwardPlayback(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, __int128 *a5, const __CFDictionary *a6, const void *a7, const void *a8, CFTypeRef a9)
{
  v41 = 0;
  cf = 0;
  Policy = videoMentorGetReadPolicyAfterPrerollFromMentorReadPolicy(a6);
  v16 = Policy;
  PolicyFromPrerollPolicy = audioMentorGetInitialReadPolicyFromPrerollPolicy(a6, Policy);
  v36 = audioMentorGetModeChangePolicy(a6);
  IsCursorAccuracyExact = videoMentorIsCursorAccuracyExact(a6);
  FigCFDictionaryGetBooleanIfPresent();
  FigCFDictionaryGetBooleanIfPresent();
  FigCFDictionaryGetBooleanIfPresent();
  FigCFDictionaryGetBooleanIfPresent();
  v43 = 0;
  FigCFDictionaryGetInt32IfPresent();
  if (a6)
  {
    FigCFDictionaryGetBooleanIfPresent();
    FigCFDictionaryGetFloat32IfPresent();
    FigCFDictionaryGetInt32IfPresent();
    FigCFDictionaryGetFloat32IfPresent();
    FigCFDictionaryGetBooleanIfPresent();
    FigCFDictionaryGetBooleanIfPresent();
  }

  if (a2)
  {
    v17 = *(*(CMBaseObjectGetVTable() + 16) + 8);
    if (v17)
    {
      v18 = v17(a2, &cf);
      if (!v18)
      {
        goto LABEL_6;
      }

      v31 = v18;
    }

    else
    {
      v31 = 4294954514;
    }

    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF16DF0, v31, "<<<< VideoMentor >>>>", 9884, v9);
    goto LABEL_36;
  }

LABEL_6:
  if (a4)
  {
    v19 = *(*(CMBaseObjectGetVTable() + 16) + 8);
    if (v19)
    {
      v20 = v19(a4, &v41);
      if (!v20)
      {
        goto LABEL_9;
      }

      v33 = v20;
    }

    else
    {
      v33 = 4294954514;
    }

    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF16DF0, v33, "<<<< VideoMentor >>>>", 9888, v9);
LABEL_36:
    v30 = v32;
    goto LABEL_37;
  }

LABEL_9:
  FigSimpleMutexLock();
  if (!*a1)
  {
    v21 = *(a1 + 168);
    v22 = cf;
    *(a1 + 168) = cf;
    if (v22)
    {
      CFRetain(v22);
    }

    if (v21)
    {
      CFRelease(v21);
    }

    v23 = *(a3 + 16);
    *(a1 + 176) = *a3;
    v24 = *(a1 + 200);
    v25 = v41;
    *(a1 + 192) = v23;
    *(a1 + 200) = v25;
    if (v25)
    {
      CFRetain(v25);
    }

    if (v24)
    {
      CFRelease(v24);
    }

    v26 = *a5;
    *(a1 + 224) = *(a5 + 2);
    *(a1 + 208) = v26;
    *(a1 + 500) = v16;
    *(a1 + 240) = PolicyFromPrerollPolicy;
    *(a1 + 244) = v36;
    *(a1 + 248) = 0;
    *(a1 + 260) = 0;
    *(a1 + 252) = 0;
    *(a1 + 256) = 1065353216;
    *(a1 + 372) = IsCursorAccuracyExact;
    *(a1 + 373) = 1;
    *(a1 + 374) = 0;
    *(a1 + 375) = v43;
    *(a1 + 376) = 1;
    *(a1 + 452) = 0;
    *(a1 + 377) = 0;
    *(a1 + 378) = 0;
    v27 = *(a1 + 464);
    *(a1 + 464) = a7;
    if (a7)
    {
      CFRetain(a7);
    }

    if (v27)
    {
      CFRelease(v27);
    }

    v28 = *(a1 + 472);
    *(a1 + 472) = a8;
    if (a8)
    {
      CFRetain(a8);
    }

    if (v28)
    {
      CFRelease(v28);
    }

    v29 = *(a1 + 480);
    *(a1 + 480) = a9;
    if (a9)
    {
      CFRetain(a9);
    }

    if (v29)
    {
      CFRelease(v29);
    }

    *(a1 + 112) = 2;
    *(a1 + 116) = 1;
    FigMemoryBarrier();
  }

  FigSimpleMutexUnlock();
  FigSemaphoreSignal();
  v30 = 0;
LABEL_37:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v41)
  {
    CFRelease(v41);
  }

  return v30;
}

uint64_t sbcbq_getPendingSampleBufferCount(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  refcon = 0;
  FigSimpleMutexLock();
  v2 = 136;
  if (!*(DerivedStorage + 8))
  {
    v2 = 144;
  }

  CMBufferQueueCallForEachBuffer(*(DerivedStorage + v2), sbcbq_countNonMarkerOnlySampleBuffers, &refcon);
  FigSimpleMutexUnlock();
  return refcon;
}

uint64_t sbcbq_setAttachmentOnPendingSampleBuffersInPTSRange(uint64_t a1, uint64_t a2, uint64_t a3, __int128 *a4, __int128 *a5)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v13[0] = a2;
  v13[1] = a3;
  v14 = *a4;
  v15 = *(a4 + 2);
  v16 = *a5;
  v17 = *(a5 + 2);
  FigSimpleMutexLock();
  v10 = 136;
  if (!*(DerivedStorage + 8))
  {
    v10 = 144;
  }

  v11 = CMBufferQueueCallForEachBuffer(*(DerivedStorage + v10), sbcbq_setAttachmentIfSampleBufferInPTSRange, v13);
  FigSimpleMutexUnlock();
  return v11;
}

void videoMentorThreadFinishPreroll(uint64_t a1, uint64_t a2, const void *a3)
{
  if ((*(a1 + 496) | 2) == 3)
  {
    v4 = FigMentorPrerollCompletePayloadCreate(a3, a2);
    if (!*a1)
    {
      CMNotificationCenterGetDefaultLocalCenter();
      CMNotificationCenterPostNotification();
    }

    if (v4)
    {
      CFRelease(v4);
    }

    *(a1 + 496) = *(a1 + 500);
    if (*MEMORY[0x1E695FF58] == 1)
    {

      kdebug_trace();
    }
  }
}

uint64_t FigCRABS_ResolveActiveHints(const void *a1, CMTime *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  HostTimeClock = CMClockGetHostTimeClock();
  memset(&v41, 0, sizeof(v41));
  v6 = DerivedStorage[95];
  if (!v6)
  {
    v7 = 0;
    if (!a1)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v7 = CFRetain(v6);
  if (a1)
  {
LABEL_3:
    CFRetain(a1);
  }

LABEL_4:
  v8 = crabsEnsureInitialized(a1);
  if (v8 || (CMClockGetTime(&lhs, HostTimeClock), rhs = *a2, CMTimeAdd(&v41, &lhs, &rhs), v8 = FigRetainProxyLockMutex(), v8))
  {
    v10 = v8;
  }

  else if (FigRetainProxyIsInvalidated())
  {
    v10 = 4294954511;
  }

  else
  {
    v9 = DerivedStorage[29];
    if (v9 >= DerivedStorage[11])
    {
      crabsUnlockWithActions(DerivedStorage);
    }

    else
    {
      v10 = crabsDoJump(DerivedStorage, v9);
      DerivedStorage[29] = DerivedStorage[11];
      crabsUnlockWithActions(DerivedStorage);
      if (v10)
      {
        goto LABEL_21;
      }
    }

    v11 = MEMORY[0x1E6960CC0];
    do
    {
      memset(&lhs, 0, sizeof(lhs));
      v10 = FigRetainProxyLockMutex();
      if (v10)
      {
        break;
      }

      v12 = DerivedStorage[31];
      if (!v12)
      {
        FigRetainProxyUnlockMutex();
        break;
      }

      v13 = DerivedStorage[12] * *v12;
      FigRetainProxyUnlockMutex();
      if (v13 == -1)
      {
        break;
      }

      CMClockGetTime(&rhs, HostTimeClock);
      cf = v41;
      v14 = CMTimeSubtract(&lhs, &cf, &rhs);
      OUTLINED_FUNCTION_80(v14, v15, v16, v17, v18, v19, v20, v21, cf.value, *&cf.timescale, cf.epoch, v37, rhs.value, *&rhs.timescale, rhs.epoch, v39, *&lhs.value);
      cf = *v11;
      v22 = CMTimeCompare(&rhs, &cf);
      if (v22 <= 0)
      {
        v10 = 4294954421;
        break;
      }

      OUTLINED_FUNCTION_80(v22, v23, v24, v25, v26, v27, v28, v29, 0, *&cf.timescale, cf.epoch, v37, rhs.value, *&rhs.timescale, rhs.epoch, v39, *&lhs.value);
      CMTimeGetSeconds(&rhs);
      v30 = OUTLINED_FUNCTION_20_1();
      v10 = readOrRef(v30, v31, v32, 0, v33, 0, v34);
      if (cf.value)
      {
        CFRelease(cf.value);
      }
    }

    while (!v10);
  }

LABEL_21:
  if (a1)
  {
    CFRelease(a1);
  }

  if (v7)
  {
    CFRelease(v7);
  }

  return v10;
}

uint64_t crabsDoJump(uint64_t a1, uint64_t a2)
{
  v16 = 0;
  v4 = *(a1 + 760);
  if (v4)
  {
    v5 = CFRetain(v4);
  }

  else
  {
    v5 = 0;
  }

  if (*(a1 + 88) == a2)
  {
    if (*(a1 + 560) == 1 && !*(a1 + 568))
    {
      v6 = 4294954511;
      if (crabsCancelRead(a1, (a1 + 512), -12932) == -12785)
      {
        goto LABEL_20;
      }
    }

    *(a1 + 129) = 1;
  }

  else
  {
    *(a1 + 200) = 0;
    v7 = *(a1 + 192);
    *v7 = a2;
    v8 = *(a1 + 184);
    if (v8 >= 2)
    {
      v9 = *(a1 + 88);
      for (i = 1; i < v8; ++i)
      {
        v7[i] = v9;
        v8 = *(a1 + 184);
      }
    }

    *(a1 + 208) = a2;
    *(a1 + 216) = v8;
    if (*(a1 + 224) != a2)
    {
      v17 = 0;
      crabsMoveAnchor(a1, a2);
      if (!crabsSelectNextFill(a1, &v17))
      {
        v14 = v17;
        if (v17)
        {
          if (!crabsEvaluateFirehose(a1, v17, 0, &v16))
          {
            if (v16)
            {
              v15 = crabsMoveFirehose(a1, *(a1 + 96) * *v14, "crabsDoJump", 8814);
              v6 = 4294954511;
              if (v15 == -12785)
              {
                goto LABEL_20;
              }
            }
          }
        }
      }
    }
  }

  v11 = *(a1 + 248);
  while (v11)
  {
    while (1)
    {
      v12 = v11;
      v11 = *(v11 + 2);
      if (*v12 < a2 && (v12[2] & 0x810) == 0)
      {
        break;
      }

      if (!v11)
      {
        goto LABEL_19;
      }
    }

    crabsUnhint(a1, v12);
  }

LABEL_19:
  v6 = 0;
  *(a1 + 128) = 0;
LABEL_20:
  if (v5)
  {
    CFRelease(v5);
  }

  return v6;
}

void crabsMoveAnchor(void *result, uint64_t a2)
{
  v4 = result[28];
  if (v4 >= a2)
  {
    if (!*(result + 130))
    {
      *(result + 131) = 0;
    }

    if (v4 > a2)
    {
      v16 = v4 - 1;
      do
      {
        v17 = *(result[10] + 8 * v16);
        if (v17)
        {
          v18 = *(v17 + 8);
          v19 = (v18 & 0x200) != 0 ? (v18 >> 8) & 1 : *(v17 + 88) != 0;
          if ((v18 & 0x11) == 0 && v19)
          {
            v21 = *(v17 + 48);
            v22 = *(v17 + 56);
            if (*(v17 + 48) != 0)
            {
              v23 = (v21 + 56);
              if (!v21)
              {
                v23 = result + 36;
              }

              *v23 = v22;
              *v22 = v21;
              *(v17 + 48) = 0;
              *(v17 + 56) = 0;
            }

            addToAscendingBackedBlockList(result, result + 33, v17);
            if ((*(v17 + 8) & 0x80) != 0)
            {
              crabsMakeBackingNonvolatile(result, v17, 1);
            }
          }
        }

        if ((result[63] & 3) == 0)
        {
          if (*(result + 133))
          {
            v25 = v16 + result[59];
            if (v25 < result[11])
            {
              v26 = *(result[10] + 8 * v25);
              if (v26)
              {
                if (!*(v26 + 80))
                {
                  v27 = *(v26 + 8);
                  v28 = (v27 & 0x200) != 0 ? (v27 >> 8) & 1 : *(v26 + 88) != 0;
                  v29 = (v27 & 0x11) != 0 || !v28;
                  if (!v29 && !crabsChangeBlockVolatility(result, v26, 0, 1))
                  {
                    crabsRemovePurgedBacking(result, v26, 1);
                  }
                }
              }
            }
          }
        }
      }

      while (v16-- > a2);
    }

LABEL_75:
    result[30] = a2;
    goto LABEL_76;
  }

  v5 = result[33];
  if (v5)
  {
    v6 = result + 35;
    do
    {
      if (*v5 >= a2)
      {
        break;
      }

      if ((result[63] & 3) == 0)
      {
        if (!*(v5 + 10))
        {
          v14 = *(v5 + 4);
          v15 = (v14 & 0x200) != 0 ? (v14 >> 8) & 1 : *(v5 + 11) != 0;
          if ((v14 & 0x11) == 0 && v15 && !crabsChangeBlockVolatility(result, v5, 2, 1))
          {
            crabsRemovePurgedBacking(result, v5, 1);
          }
        }

        if ((v5[2] & 0x80) != 0)
        {
          crabsAdjustGroupBoundariesToRemoval(result, v5);
        }
      }

      v7 = *(v5 + 4);
      if ((v7 & 0x200) != 0)
      {
        if ((v7 >> 8))
        {
LABEL_13:
          v9 = *(v5 + 6);
          v10 = *(v5 + 7);
          v8 = v5 + 12;
          if (*(v5 + 3) != 0)
          {
            v11 = (v9 + 56);
            if (!v9)
            {
              v11 = result + 34;
            }

            *v11 = v10;
            *v10 = v9;
            *v8 = 0;
            *(v5 + 7) = 0;
            *(v5 + 4) = v7 & 0xEFFF;
          }

          v12 = *v6;
          *(v5 + 6) = *v6;
          if (v12)
          {
            v13 = (v12 + 56);
          }

          else
          {
            v13 = result + 36;
          }

          *v13 = v8;
          *v6 = v5;
          *(v5 + 7) = v6;
        }
      }

      else if (*(v5 + 11))
      {
        goto LABEL_13;
      }

      v5 = result[33];
    }

    while (v5);
  }

  if ((result[63] & 3) == 0)
  {
    v30 = result[28];
    if (v30 < a2)
    {
      v31 = result[59];
      v32 = v31 + v30;
      do
      {
        if (v32 >= result[11])
        {
          break;
        }

        v33 = *(result[10] + 8 * v32);
        if (v33 && (*(v33 + 8) & 0x80) != 0)
        {
          crabsMakeBackingNonvolatile(result, v33, 1);
          v31 = result[59];
        }

        ++v32;
      }

      while (v32 < v31 + a2);
    }
  }

  v34 = result[30];
  if (v34 < a2 && v34 >= result[28])
  {
    goto LABEL_75;
  }

LABEL_76:
  result[28] = a2;
}

void sbp_bq_getUpcomingPTSInfo(uint64_t a1, char *a2, uint64_t a3, uint64_t a4)
{
  v45 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v43 = *MEMORY[0x1E6960C70];
  v44 = *(MEMORY[0x1E6960C70] + 8);
  v41 = v43;
  v42 = v44;
  value = v43;
  timescale = v44;
  v37 = v43;
  v38 = v44;
  if (!*DerivedStorage)
  {
    v10 = DerivedStorage;
    v11 = *(MEMORY[0x1E6960C70] + 12);
    v12 = *(MEMORY[0x1E6960C70] + 16);
    v29 = a2;
    if (CMBufferQueueIsEmpty(*(DerivedStorage + 8)) || (v14 = *(v10 + 8), LOBYTE(refcon.value) = 0, CMBufferQueueCallForEachBuffer(v14, sbp_bq_scanForSampleBufferThatWillBeDisplayed, &refcon), !LOBYTE(refcon.value)))
    {
      v13 = 1;
      flags = v11;
      epoch = v12;
      v28 = v11;
      v27 = v12;
    }

    else
    {
      CMBufferQueueGetMinPresentationTimeStamp(&refcon, *(v10 + 8));
      value = refcon.value;
      flags = refcon.flags;
      timescale = refcon.timescale;
      epoch = refcon.epoch;
      CMBufferQueueGetMaxPresentationTimeStamp(&refcon, *(v10 + 8));
      v13 = 0;
      v37 = refcon.value;
      v28 = refcon.flags;
      v38 = refcon.timescale;
      v27 = refcon.epoch;
    }

    FigSimpleMutexLock();
    v15 = *(v10 + 48);
    v35 = *(v10 + 52);
    v16 = *(v10 + 64);
    v36 = *(v10 + 60);
    v17 = *(v10 + 68);
    v33 = *(v10 + 76);
    v18 = *(v10 + 88);
    v34 = *(v10 + 84);
    v24 = *(v10 + 92);
    FigSimpleMutexUnlock();
    if (v13)
    {
      if (v15)
      {
        v19 = &v35;
        if (v16)
        {
          v11 = v16;
        }

        else
        {
          v19 = &v33;
          v11 = v18;
        }

        if (v16)
        {
          v12 = v17;
        }

        else
        {
          v12 = v24;
        }

        v43 = *v19;
        v44 = *(v19 + 2);
        v20 = v29;
        if (v18)
        {
          v41 = v33;
          v42 = v34;
          v21 = 1;
          v22 = v18;
          v23 = v24;
        }

        else
        {
          v41 = v35;
          v42 = v36;
          v21 = 1;
          v22 = v16;
          v23 = v17;
        }

        goto LABEL_29;
      }

      v21 = 0;
      v22 = v11;
      v23 = v12;
    }

    else
    {
      if (v15)
      {
        v22 = v11;
        v23 = v12;
        v20 = v29;
        if (v16)
        {
          time2.epoch = v17;
          time1.value = value;
          time1.timescale = timescale;
          time1.flags = flags;
          time1.epoch = epoch;
          time2.value = v35;
          time2.timescale = v36;
          time2.flags = v16;
          CMTimeMinimum(&refcon, &time1, &time2);
          v43 = refcon.value;
          v11 = refcon.flags;
          v44 = refcon.timescale;
          v12 = refcon.epoch;
          time2.epoch = v17;
          time1.value = v37;
          time1.timescale = v38;
          time1.flags = v28;
          time1.epoch = v27;
          time2.value = v35;
          time2.timescale = v36;
          time2.flags = v16;
          CMTimeMaximum(&refcon, &time1, &time2);
          v41 = refcon.value;
          v22 = refcon.flags;
          v42 = refcon.timescale;
          v23 = refcon.epoch;
        }

        if (v18)
        {
          time1.timescale = timescale;
          time1.flags = flags;
          time1.epoch = epoch;
          time2.value = v33;
          time2.timescale = v34;
          time2.flags = v18;
          time2.epoch = v24;
          time1.value = value;
          CMTimeMinimum(&refcon, &time1, &time2);
          v43 = refcon.value;
          v11 = refcon.flags;
          v44 = refcon.timescale;
          time2.epoch = v24;
          time1.value = v37;
          time1.timescale = v38;
          time1.flags = v28;
          time1.epoch = v27;
          v12 = refcon.epoch;
          time2.value = v33;
          time2.timescale = v34;
          time2.flags = v18;
          CMTimeMaximum(&refcon, &time1, &time2);
          v41 = refcon.value;
          v22 = refcon.flags;
          v42 = refcon.timescale;
          v23 = refcon.epoch;
        }

        v21 = 1;
        goto LABEL_29;
      }

      v43 = value;
      v44 = timescale;
      v41 = v37;
      v21 = 1;
      v42 = v38;
      v11 = flags;
      v12 = epoch;
      v22 = v28;
      v23 = v27;
    }

    v20 = v29;
LABEL_29:
    *v20 = v21;
    *a3 = v43;
    *(a3 + 8) = v44;
    *(a3 + 12) = v11;
    *(a3 + 16) = v12;
    *a4 = v41;
    *(a4 + 8) = v42;
    *(a4 + 12) = v22;
    *(a4 + 16) = v23;
    return;
  }

  emitter = fig_log_get_emitter();

  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 4294954511, "<<<< SBP-BQ >>>>", 224, v4);
}

uint64_t FigCRABSScheduledIOFinish(uint64_t a1, uint64_t a2, int a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a3 == 4)
  {
    v6 = 0;
  }

  else
  {
    v6 = a3;
  }

  return siocrabsFinishUnlocked(DerivedStorage, a2, v6);
}

uint64_t piqca_setAsync(uint64_t a1, int a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v4 = DerivedStorage;
  if (a2)
  {
    *(DerivedStorage + 72) = 0x400000000;
    *(DerivedStorage + 49) = 1;
    CAImageQueueSetFlags();
    v5 = FigMemoryBarrier();
    piqca_WakeupSharedPollingThread(v5);
    CMNotificationCenterGetDefaultLocalCenter();
    CMNotificationCenterPostNotification();
    DerivedStorage = v4;
    v6 = 0;
  }

  else
  {
    *(DerivedStorage + 72) = 300;
    v6 = 1;
  }

  piqca_updateEDRDeadline(DerivedStorage, v6);
  return 0;
}

uint64_t videopipelineSynchronousFrameEnqueued(uint64_t a1, uint64_t a2)
{
  CMNotificationCenterGetDefaultLocalCenter();

  return CMNotificationCenterPostNotification();
}

void playerfig_SynchronousFrameEnqueued(uint64_t a1, void *a2)
{
  if (a2)
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    if (!DerivedStorage || !*DerivedStorage)
    {
      CMNotificationCenterGetDefaultLocalCenter();
      CMNotificationCenterPostNotification();
      CFRetain(a2);
      v4 = MEMORY[0x1E69E96A0];

      dispatch_async_f(v4, a2, playerfig_DeferredSynchronousFrameEnqueued);
    }
  }
}

uint64_t sgffr_timebaseNotifierRateOrTimeChanged(uint64_t a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigReadWriteLockLockForRead();
  v3 = *(*(DerivedStorage + 48) + 40);
  if (v3)
  {
    CFDictionaryApplyFunction(v3, sgffr_expediteAllClientRequestsForScheduledIO, 0);
  }

  return FigReadWriteLockUnlockForRead();
}

uint64_t FigImageQueueFrameRateIncrementCounter(uint64_t *a1)
{
  UpTimeNanoseconds = FigGetUpTimeNanoseconds();
  FigSimpleMutexLock();
  v3 = a1[3];
  if (v3 + 1000000000 >= UpTimeNanoseconds)
  {
    v4 = *(a1 + 8) + 1;
  }

  else
  {
    a1[1] = v3;
    *(a1 + 4) = *(a1 + 8);
    a1[3] = UpTimeNanoseconds;
    v4 = 1;
  }

  *(a1 + 8) = v4;
  a1[5] = UpTimeNanoseconds;

  return FigSimpleMutexUnlock();
}

void piqca_decrementSnapLatchCount(void **a1)
{
  if (!FigAtomicDecrement32())
  {
    FigSimpleMutexDestroy();
    free(*a1);
    *a1 = 0;
  }
}

uint64_t videopipelineCopyNextNonJerkyStopTime(uint64_t a1, uint64_t a2, uint64_t a3)
{
  theArray = 0;
  figVideoRenderPipelineCopyVideoImageQueueArray(a1, &theArray, 0);
  if (!theArray)
  {
    return 0;
  }

  Count = CFArrayGetCount(theArray);
  if (Count >= 1)
  {
    v6 = Count;
    v7 = 0;
    while (1)
    {
      CFArrayGetValueAtIndex(theArray, v7);
      FigImageQueueGetFigBaseObject();
      v9 = v8;
      v10 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      if (v10)
      {
        v11 = v10(v9, @"FigImageQueueProperty_NextNonJerkyStopTime", a2, a3);
        v12 = v11;
        if (v11 == -12783 || v11 == 0)
        {
          goto LABEL_16;
        }
      }

      else
      {
        v12 = 4294954514;
      }

      if (v6 == ++v7)
      {
        goto LABEL_16;
      }
    }
  }

  v12 = 0;
LABEL_16:
  if (theArray)
  {
    CFRelease(theArray);
  }

  return v12;
}

BOOL crabsChangeBlockVolatility(void *a1, int *a2, int a3, int a4)
{
  if (!*(a2 + 11))
  {
    return 0;
  }

  if ((a2[2] & 0x11) != 0)
  {
    return 0;
  }

  crabsAdjustGroupBoundariesToRemoval(a1, a2);
  if ((a3 & 0xFFFFFFFE) != 2)
  {
    v9 = *(a2 + 11);
    if (!a3)
    {
      if (a4 == 1)
      {
        v13 = 1281;
      }

      else
      {
        v13 = 1089;
      }

      v16 = v13;
      if (MEMORY[0x19A8D6C80](*MEMORY[0x1E69E9A60], v9, 0, &v16))
      {
        v14 = 1;
      }

      else
      {
        v14 = (v16 & 3) == 2;
      }

      if (v14)
      {
        return 0;
      }

      v15 = *a2;
      if (a1[53] == -1)
      {
        a1[54] = v15;
      }

      else if (a4 != 1)
      {
        a1[54] = v15;
        goto LABEL_33;
      }

      a1[53] = v15;
      goto LABEL_33;
    }

    if (a4 == 1)
    {
      v10 = 769;
    }

    else
    {
      v10 = 577;
    }

    v17 = v10;
    if (MEMORY[0x19A8D6C80](*MEMORY[0x1E69E9A60], v9, 0, &v17))
    {
      v11 = 1;
    }

    else
    {
      v11 = (v17 & 3) == 2;
    }

    if (v11)
    {
      return 0;
    }

    v12 = *a2;
    if (a1[55] == -1)
    {
      a1[56] = v12;
    }

    else if (a4 != 1)
    {
      a1[56] = v12;
      goto LABEL_33;
    }

    a1[55] = v12;
    goto LABEL_33;
  }

  result = crabsMakeVolatile(*(a2 + 11), a3, a4);
  if (result)
  {
LABEL_33:
    *(a2 + 4) |= 0x80u;
    return 1;
  }

  return result;
}

void *crabsAdjustGroupBoundariesToRemoval(void *result, int *a2)
{
  v2 = *a2;
  v3 = result + 53;
  v4 = result[53];
  v5 = result[54];
  if (v5 == v2)
  {
    if (v4 < v2)
    {
      do
      {
        if (v2 <= v4)
        {
          break;
        }

        a2 = **(*(a2 + 7) + 8);
        v2 = *a2;
        result[54] = v2;
      }

      while ((a2[2] & 0x80) == 0);
      return result;
    }

LABEL_15:
    *v3 = -1;
    v3[1] = -1;
    return result;
  }

  if (v4 == v2)
  {
    do
    {
      if (v2 >= v5)
      {
        break;
      }

      a2 = *(a2 + 6);
      v2 = *a2;
      *v3 = v2;
    }

    while ((a2[2] & 0x80) == 0);
  }

  else
  {
    v3 = result + 55;
    v6 = result[55];
    v7 = result[56];
    if (v7 == v2)
    {
      if (v6 >= v2)
      {
        goto LABEL_15;
      }

      do
      {
        if (v2 <= v6)
        {
          break;
        }

        a2 = **(*(a2 + 7) + 8);
        v2 = *a2;
        result[56] = v2;
      }

      while ((a2[2] & 0x80) == 0);
    }

    else if (v6 == v2)
    {
      do
      {
        if (v2 >= v7)
        {
          break;
        }

        a2 = *(a2 + 6);
        v2 = *a2;
        *v3 = v2;
      }

      while ((a2[2] & 0x80) == 0);
    }
  }

  return result;
}

CFIndex bossSwitchMentorsToSideQueues(uint64_t a1, CFIndex a2, uint64_t a3)
{
  result = FigCFRangeGetLimit();
  if (a2 < result)
  {
    v6 = a2;
    do
    {
      v7 = *(CFArrayGetValueAtIndex(*(a1 + 72), v6) + 12);
      v8 = *(*(CMBaseObjectGetVTable() + 16) + 80);
      if (v8)
      {
        v8(v7);
      }

      ++v6;
      result = FigCFRangeGetLimit();
    }

    while (v6 < result);
  }

  return result;
}

uint64_t sbcbq_switchToSideQueue(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  *(DerivedStorage + 8) = 0;
  *(DerivedStorage + 152) = 0;
  FigSimpleMutexUnlock();
  FigSimpleMutexLock();
  v2 = *(DerivedStorage + 112);
  if (v2)
  {
    v2(*(DerivedStorage + 120));
  }

  FigSimpleMutexUnlock();
  return 0;
}

void crabsRemovePurgedBacking(uint64_t a1, int *a2, int a3)
{
  v6 = a2[1];
  *(a2 + 4) &= ~0x80u;
  crabsAdjustGroupBoundariesToRemoval(a1, a2);
  CFAllocatorDeallocate(*a1, *(a2 + 11));
  *(a2 + 11) = 0;
  if (!*(a2 + 10))
  {
    crabsMarkBlockUnfilled(a1, a2);
  }

  v7 = *(a1 + 96);
  qword_1EAF189E8 -= v7;
  *(a1 + 864) -= v7;
  ++*(a1 + 408);
  v8 = *(a2 + 4);
  if ((v8 & 0x11) == 0)
  {
    v9 = *(a2 + 6);
    v10 = *(a2 + 7);
    if (*(a2 + 3) != 0)
    {
      v11 = 264;
      if (!a3)
      {
        v11 = 280;
      }

      v12 = (a1 + v11 + 8);
      if (v9)
      {
        v12 = (v9 + 56);
      }

      *v12 = v10;
      *v10 = v9;
      *(a2 + 6) = 0;
      *(a2 + 7) = 0;
      if (a3)
      {
        *(a2 + 4) = v8 & 0xEFEE;
      }
    }
  }

  v13 = *a2;
  v14 = *(a1 + 224);
  if (v14 <= v13)
  {
    v15 = *(a1 + 240);
    if (v15 < v14 || v15 > v13)
    {
      *(a1 + 240) = v13;
    }
  }

  if (v6)
  {
    if (*(a1 + 128))
    {
      v16 = 1;
    }

    else
    {
      v16 = v14 <= v13;
    }

    if (v16)
    {
      v17 = 2;
    }

    else
    {
      v17 = 1;
    }

    *(a1 + 176) |= v17;
    *(a1 + 128) = 0;
  }
}

uint64_t crabsMarkBlockUnfilled(uint64_t a1, uint64_t a2)
{
  *(a2 + 8) &= 0xFFB3u;
  FigSimpleMutexLock();
  v4 = *(a1 + 64) - *(a2 + 4);
  *(a1 + 64) = v4;
  v5 = *(a1 + 920);
  if (v5)
  {
    v6 = *(*(CMBaseObjectGetVTable() + 16) + 56);
    if (v6)
    {
      v6(v5, 0x1F0B64598, 0x1F0B65638, v4, 0);
    }
  }

  result = FigSimpleMutexUnlock();
  *(a2 + 4) = 0;
  *(a1 + 130) = 0;
  return result;
}

uint64_t fpm_streamCacheChangedCallback(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  FigRetainProxyLockMutex();
  if (!FigRetainProxyIsInvalidated())
  {
    Owner = FigRetainProxyGetOwner();
    MutableBytePtr = CFDataGetMutableBytePtr(Owner);
    FigSimpleMutexLock();
    ++*(MutableBytePtr + 24);
    if (!a5)
    {
      MutableBytePtr[313] = 1;
      CMTimebaseGetTime(&time1, *(MutableBytePtr + 3));
      time2 = **&MEMORY[0x1E6960CC0];
      CMTimeMaximum(&v10, &time1, &time2);
      *(MutableBytePtr + 9) = v10;
    }

    v8 = *(MutableBytePtr + 28);
    if (v8)
    {
      if (v8 != 3 || !a5 || *(MutableBytePtr + 26) == 1)
      {
LABEL_11:
        fpm_ensureUpdatePrimed(MutableBytePtr);
LABEL_13:
        FigSimpleMutexUnlock();
        return FigRetainProxyUnlockMutex();
      }
    }

    else if (*(MutableBytePtr + 26) == 1 || MutableBytePtr[8555] | (a5 == 0))
    {
      goto LABEL_11;
    }

    fpm_updateCacheAndNotify(MutableBytePtr);
    goto LABEL_13;
  }

  return FigRetainProxyUnlockMutex();
}

uint64_t bossReplaceMainQueuesWithSideQueuesAndSwitchMentorsToMainQueues(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  FigSimpleMutexLock();
  if (*(a1 + 848))
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (*(a1 + 80) >= 1)
  {
    v3 = 0;
    do
    {
      v4 = *(CFArrayGetValueAtIndex(*(a1 + 72), v3) + 12);
      v5 = *(*(CMBaseObjectGetVTable() + 16) + 88);
      if (v5)
      {
        v5(v4);
      }

      ++v3;
    }

    while (v3 < *(a1 + 80));
  }

  return FigSimpleMutexUnlock();
}

uint64_t sbcbq_replaceMainQueueWithSideQueueAndSwitchToMainQueue(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  if (*(DerivedStorage + 152))
  {
    CMBufferQueueReset(*(DerivedStorage + 136));
  }

  FigSimpleMutexUnlock();
  v2 = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  if (CFArrayGetCount(*(v2 + 160)) <= 0)
  {
    FigSimpleMutexUnlock();
  }

  else
  {
    v3 = *(v2 + 160);
    *(v2 + 160) = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
    FigSimpleMutexUnlock();
    if (v3)
    {
      Count = CFArrayGetCount(v3);
      if (Count >= 2)
      {
        v5 = 0;
        v6 = Count - 1;
        do
        {
          CFArrayGetValueAtIndex(v3, v5);
          CFArrayGetValueAtIndex(v3, v5 + 1);
          CMNotificationCenterGetDefaultLocalCenter();
          CMNotificationCenterPostNotification();
          v5 += 2;
        }

        while (v5 < v6);
      }

      CFRelease(v3);
    }
  }

  FigSimpleMutexLock();
  v7 = CMBufferQueueDequeueAndRetain(*(DerivedStorage + 144));
  if (v7)
  {
    v8 = v7;
    do
    {
      CMBufferQueueEnqueue(*(DerivedStorage + 136), v8);
      CFRelease(v8);
      v8 = CMBufferQueueDequeueAndRetain(*(DerivedStorage + 144));
    }

    while (v8);
  }

  *(DerivedStorage + 8) = 1;
  FigSimpleMutexUnlock();
  FigSimpleMutexLock();
  v9 = *(DerivedStorage + 112);
  if (v9)
  {
    v9(*(DerivedStorage + 120));
  }

  FigSimpleMutexUnlock();
  return 0;
}

uint64_t crabsMakeBackingNonvolatile(void *a1, uint64_t a2, int a3)
{
  v6 = *(a2 + 88);
  v11 = 0;
  if (MEMORY[0x19A8D6C80](*MEMORY[0x1E69E9A60], v6, 0, &v11))
  {
    v7 = 1;
  }

  else
  {
    v7 = (v11 & 3) == 2;
  }

  v8 = !v7;
  if (v7)
  {
    crabsRemovePurgedBacking(a1, a2, a3);
  }

  else
  {
    *(a2 + 8) &= ~0x80u;
    crabsAdjustGroupBoundariesToRemoval(a1, a2);
    v9 = a1[12];
    qword_1EAF189E8 -= v9;
    a1[108] -= v9;
  }

  return v8;
}

uint64_t stepUpEntry(uint64_t a1)
{
  v1 = *(a1 + 88);
  if (!v1)
  {
    return 4294954456;
  }

  v3 = v1 - 1;
  *(a1 + 88) = v3;
  v4 = *(a1 + 8);
  destination = 0;
  CMBlockBufferCopyDataBytes(*(v4 + 416), 8 * v3, 8uLL, &destination);
  v5 = bswap32(destination);
  *(a1 + 112) = v5;
  *(a1 + 120) = 0;
  v6 = *(a1 + 8);
  v7 = *(v6 + 244);
  if (v7)
  {
    v8 = v5 / v7;
    *(a1 + 112) = v8;
    *(a1 + 104) = v7;
  }

  else
  {
    v10 = *(a1 + 88);
    destination = 0;
    CMBlockBufferCopyDataBytes(*(v6 + 416), 8 * v10, 8uLL, &destination);
    v7 = bswap32(HIDWORD(destination));
    *(a1 + 104) = v7;
    v8 = *(a1 + 112);
  }

  result = 0;
  *(a1 + 96) -= v7 * v8;
  v11 = *(a1 + 116);
  *(a1 + 116) = v11 - v8;
  *(a1 + 80) = v11 - 1;
  return result;
}

void *VideoMentorInvalidate(void *result)
{
  if (!*result)
  {
    v1 = result;
    *result = 1;
    if (result[13])
    {
      FigSimpleMutexLock();
      *(v1 + 28) = 5;
      *(v1 + 116) = 1;
      FigMemoryBarrier();
      FigSimpleMutexUnlock();
      FigSemaphoreSignal();
      FigThreadAbortForTeardown();
      FigThreadJoin();
      v1[13] = 0;
    }

    v2 = v1[3];
    if (v2)
    {
      if (*(v1 + 40))
      {
        v3 = v1[4];
        v4 = *(*(CMBaseObjectGetVTable() + 16) + 40);
        if (v4)
        {
          v4(v2, v3);
        }
      }
    }

    if (v1[2])
    {
      CMNotificationCenterGetDefaultLocalCenter();
      CMNotificationCenterRemoveListener();
    }

    result = v1[69];
    v1[69] = 0;
    if (result)
    {
      do
      {
        v5 = *result;
        videoMentorSavedFrameDestroy(result);
        result = v5;
      }

      while (v5);
    }
  }

  return result;
}

void figVideoRenderPipelineFinalize(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  figVideoRenderPipelineInvalidate(a1);
  v3 = *(DerivedStorage + 16);
  if (v3)
  {
    CFRelease(v3);
    *(DerivedStorage + 16) = 0;
  }

  v4 = *(DerivedStorage + 40);
  if (v4)
  {
    CFRelease(v4);
    *(DerivedStorage + 40) = 0;
  }

  v5 = *(DerivedStorage + 48);
  if (v5)
  {
    CFRelease(v5);
    *(DerivedStorage + 48) = 0;
  }

  v6 = *(DerivedStorage + 56);
  if (v6)
  {
    CFRelease(v6);
    *(DerivedStorage + 56) = 0;
  }

  v7 = *(DerivedStorage + 64);
  if (v7)
  {
    CFRelease(v7);
    *(DerivedStorage + 64) = 0;
  }

  v8 = *(DerivedStorage + 8);
  if (v8)
  {
    CFRelease(v8);
    *(DerivedStorage + 8) = 0;
  }

  v9 = *(DerivedStorage + 24);
  if (v9)
  {
    CFRelease(v9);
    *(DerivedStorage + 24) = 0;
  }

  v10 = *(DerivedStorage + 32);
  if (v10)
  {
    CFRelease(v10);
    *(DerivedStorage + 32) = 0;
  }

  v11 = *(DerivedStorage + 112);
  if (v11)
  {
    CFRelease(v11);
    *(DerivedStorage + 112) = 0;
  }

  v12 = *(DerivedStorage + 120);
  if (v12)
  {
    CFRelease(v12);
    *(DerivedStorage + 120) = 0;
  }

  v13 = *(DerivedStorage + 96);
  if (v13)
  {
    CFRelease(v13);
    *(DerivedStorage + 96) = 0;
  }

  if (*(DerivedStorage + 80))
  {
    FigSimpleMutexDestroy();
    *(DerivedStorage + 80) = 0;
  }

  v14 = *(DerivedStorage + 200);
  if (v14)
  {
    dispatch_release(v14);
    *(DerivedStorage + 200) = 0;
  }

  FigSimpleMutexDestroy();
  v15 = *(DerivedStorage + 192);
  if (v15)
  {
    CFRelease(v15);
    *(DerivedStorage + 192) = 0;
  }

  v16 = *(DerivedStorage + 176);
  if (v16)
  {
    CFRelease(v16);
    *(DerivedStorage + 176) = 0;
  }

  *(DerivedStorage + 4) = 0;

  videopipelineUpdateVideoPlaybackStateForClient(a1);
}

uint64_t figVideoRenderPipelineInvalidate(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  theArray = 0;
  cf = 0;
  if (DerivedStorage)
  {
    v3 = DerivedStorage;
    if (!*DerivedStorage)
    {
      *DerivedStorage = 1;
      if (*(DerivedStorage + 16))
      {
        FigStopForwardingMediaServicesProcessDeathNotification();
        CMNotificationCenterGetDefaultLocalCenter();
        FigNotificationCenterRemoveWeakListeners();
        VMC2Invalidate(*(v3 + 16));
        v4 = *(v3 + 32);
        if (v4)
        {
          v5 = *(*(CMBaseObjectGetVTable() + 8) + 24);
          if (v5)
          {
            v5(v4);
          }
        }
      }

      figVideoRenderPipelineCopyVideoImageQueueArray(a1, &theArray, &cf);
      if (theArray)
      {
        Count = CFArrayGetCount(theArray);
        if (Count >= 1)
        {
          v7 = Count;
          for (i = 0; i != v7; ++i)
          {
            CFArrayGetValueAtIndex(theArray, i);
            CMNotificationCenterGetDefaultLocalCenter();
            FigNotificationCenterRemoveWeakListeners();
          }
        }
      }

      videopipelineRemoveListenersOnFirstImageQueue(a1);
      v9 = *(v3 + 40);
      if (v9)
      {
        v10 = CFArrayGetCount(v9);
        if (v10 >= 1)
        {
          v11 = v10;
          for (j = 0; j != v11; ++j)
          {
            CFArrayGetValueAtIndex(*(v3 + 40), j);
            CMNotificationCenterGetDefaultLocalCenter();
            FigNotificationCenterRemoveWeakListeners();
          }
        }
      }

      videopipelineSetTimebase(a1, 0);
      FigSimpleMutexLock();
      v13 = *(v3 + 56);
      if (v13)
      {
        CFRelease(v13);
        *(v3 + 56) = 0;
      }

      v14 = *(v3 + 64);
      if (v14)
      {
        CFRelease(v14);
        *(v3 + 64) = 0;
      }

      FigSimpleMutexUnlock();
      if (theArray)
      {
        CFRelease(theArray);
      }

      if (cf)
      {
        CFRelease(cf);
      }

      v15 = *(v3 + 136);
      if (v15)
      {
        CFRelease(v15);
        *(v3 + 136) = 0;
      }
    }
  }

  return 0;
}

void VMC2Invalidate(uint64_t result)
{
  if (result && !*(result + 16))
  {
    VMC2Stop(result);
    VMC2WaitUntilCompletelyStopped(result);
    *(result + 16) = 1;
    vmc2FinishAndDestroyImageEnhancementFilter(result);
    FigSimpleMutexLock();
    if (*(result + 1520))
    {
      CMNotificationCenterGetDefaultLocalCenter();
      FigNotificationCenterRemoveWeakListener();
      CMNotificationCenterGetDefaultLocalCenter();
      FigNotificationCenterRemoveWeakListener();
      v2 = *(result + 1520);
      if (v2)
      {
        CFRelease(v2);
        *(result + 1520) = 0;
      }
    }

    FigSimpleMutexUnlock();
    FigSimpleMutexLock();
    if (*(result + 584))
    {
      CMNotificationCenterGetDefaultLocalCenter();
      FigNotificationCenterRemoveWeakListener();
    }

    FigSimpleMutexUnlock();
    v3 = *(result + 448);
    if (v3)
    {
      dispatch_sync_f(v3, 0, vmc2noop);
      dispatch_release(*(result + 448));
      *(result + 448) = 0;
    }

    if (*(result + 72))
    {
      FigSimpleMutexLock();
      vmc2RemoveDecompressionSession(result);
      FigSimpleMutexUnlock();
    }

    *(result + 626) = 0;
    if (*(result + 248))
    {
      FigReadWriteLockLockForRead();
      if (*(result + 249))
      {
        v4 = *(result + 184);
        if (v4)
        {
          v4(*(result + 152), *(result + 240));
        }

        *(result + 184) = 0;
        *(result + 240) = 0;
        *(result + 248) = 0;
      }

      else
      {
        VMC2Invalidate_cold_1();
      }

      FigReadWriteLockUnlockForRead();
    }

    v5 = *(result + 264);
    if (v5)
    {
      if (!*(result + 272))
      {
        goto LABEL_24;
      }

      v6 = *(*(CMBaseObjectGetVTable() + 16) + 8);
      if (v6)
      {
        v6(v5, 0, 0);
      }

      *(result + 272) = 0;
      if (*(result + 264))
      {
LABEL_24:
        FigActivitySchedulerGetFigBaseObject();
        if (v7)
        {
          v8 = v7;
          v9 = *(*(CMBaseObjectGetVTable() + 8) + 24);
          if (v9)
          {
            v9(v8);
          }
        }
      }
    }

    if (*(result + 88))
    {
      CMNotificationCenterGetDefaultLocalCenter();
      CMNotificationCenterRemoveListener();
      CMNotificationCenterGetDefaultLocalCenter();
      CMNotificationCenterRemoveListener();
      CMNotificationCenterGetDefaultLocalCenter();
      CMNotificationCenterRemoveListener();
      CMNotificationCenterGetDefaultLocalCenter();
      CMNotificationCenterRemoveListener();
      FigSampleBufferProviderGetFigBaseObject();
      if (v10)
      {
        v11 = v10;
        v12 = *(*(CMBaseObjectGetVTable() + 8) + 24);
        if (v12)
        {
          v12(v11);
        }
      }
    }

    CMNotificationCenterGetDefaultLocalCenter();
    FPSupport_GetDisplayVideoRangeNotificationSingleton();
    FigNotificationCenterRemoveWeakListener();
    v13 = *(result + 120);
    if (v13)
    {
      v13(*(result + 104));
      *(result + 120) = 0;
    }

    FigReadWriteLockLockForWrite();
    v14 = *(result + 216);
    if (v14)
    {
      v14(*(result + 152));
      *(result + 216) = 0;
    }

    *(result + 249) = 0;
    FigReadWriteLockUnlockForWrite();
    v15 = *(result + 824);
    if (v15)
    {
      if (!*(result + 832))
      {
        dispatch_resume(v15);
        v15 = *(result + 824);
      }

      dispatch_source_cancel(v15);
      dispatch_release(*(result + 824));
      *(result + 824) = 0;
    }

    v16 = *(result + 816);
    if (v16)
    {
      dispatch_sync_f(v16, 0, vmc2noop);
      dispatch_release(*(result + 816));
      *(result + 816) = 0;
    }

    vmc2ClearSavedList(result);
  }
}

void VMC2Stop(uint64_t a1)
{
  if (*(a1 + 16))
  {
    emitter = fig_log_get_emitter();

    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 4294954511, "<<<< VMC >>>>", 7986, v1);
  }

  else
  {
    *(a1 + 288) = 0;
    FigMemoryBarrier();
  }
}

void VMC2WaitUntilCompletelyStopped(uint64_t a1)
{
  if (*(a1 + 16))
  {
    emitter = fig_log_get_emitter();

    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 4294954511, "<<<< VMC >>>>", 7997, v1);
  }

  else
  {
    FigSimpleMutexLock();
    FigSimpleMutexUnlock();
    v4 = *(a1 + 64);
    if (v4)
    {
      VTDecompressionSessionWaitForAsynchronousFrames(v4);
    }
  }
}

uint64_t activityOnThread_invalidate(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  *DerivedStorage = 1;
  FigSimpleMutexLock();
  v2 = *(DerivedStorage + 8);
  *(DerivedStorage + 8) = 0;
  FigSimpleMutexUnlock();
  if (v2)
  {
    *(DerivedStorage + 56) = 256;
    FigMemoryBarrier();
    FigSemaphoreSignal();
    FigThreadJoin();
  }

  return 0;
}

uint64_t activityOnThread_finalize(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a1)
  {
    v3 = *(*(CMBaseObjectGetVTable() + 8) + 24);
    if (v3)
    {
      v3(a1);
    }
  }

  FigSimpleMutexDestroy();
  DerivedStorage[6] = 0;
  FigSemaphoreDestroy();
  DerivedStorage[3] = 0;
  result = FigSimpleMutexDestroy();
  DerivedStorage[2] = 0;
  return result;
}

uint64_t sbp_bq_invalidate(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!*DerivedStorage)
  {
    v2 = DerivedStorage;
    *DerivedStorage = 1;
    v3 = *(DerivedStorage + 16);
    if (v3)
    {
      CMBufferQueueRemoveTrigger(*(DerivedStorage + 8), v3);
      *(v2 + 16) = 0;
    }

    v4 = *(v2 + 24);
    if (v4)
    {
      CMBufferQueueRemoveTrigger(*(v2 + 8), v4);
      *(v2 + 24) = 0;
    }

    v5 = *(v2 + 32);
    if (v5)
    {
      CMBufferQueueRemoveTrigger(*(v2 + 8), v5);
      *(v2 + 32) = 0;
    }

    CMNotificationCenterGetDefaultLocalCenter();
    FigNotificationCenterRemoveWeakListener();
    CMNotificationCenterGetDefaultLocalCenter();
    FigNotificationCenterRemoveWeakListener();
    CMNotificationCenterGetDefaultLocalCenter();
    FigNotificationCenterRemoveWeakListener();
    CMNotificationCenterGetDefaultLocalCenter();
    FigNotificationCenterRemoveWeakListener();
  }

  return 0;
}

uint64_t sbp_bq_finalize(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a1)
  {
    v3 = *(*(CMBaseObjectGetVTable() + 8) + 24);
    if (v3)
    {
      v3(a1);
    }
  }

  v4 = *(DerivedStorage + 8);
  if (v4)
  {
    CFRelease(v4);
    *(DerivedStorage + 8) = 0;
  }

  result = *(DerivedStorage + 40);
  if (result)
  {
    result = FigSimpleMutexDestroy();
    *(DerivedStorage + 40) = 0;
  }

  return result;
}

uint64_t vmc2Finalize(void *a1)
{
  v43 = *MEMORY[0x1E69E9840];
  VMC2Invalidate(a1);
  v2 = a1[57];
  if (v2)
  {
    dispatch_release(v2);
    a1[57] = 0;
  }

  if (a1[9])
  {
    FigSimpleMutexDestroy();
    a1[9] = 0;
  }

  v3 = a1[10];
  if (v3)
  {
    CFRelease(v3);
    a1[10] = 0;
  }

  v4 = a1[90];
  if (v4)
  {
    CFRelease(v4);
    a1[90] = 0;
  }

  FigSimpleMutexDestroy();
  v5 = a1[75];
  if (v5)
  {
    CFRelease(v5);
    a1[75] = 0;
  }

  FigSimpleMutexDestroy();
  a1[79] = 0;
  v6 = a1[33];
  if (v6)
  {
    CFRelease(v6);
    a1[33] = 0;
  }

  v7 = a1[11];
  if (v7)
  {
    CFRelease(v7);
    a1[11] = 0;
  }

  FigSimpleMutexDestroy();
  a1[35] = 0;
  FigSimpleMutexDestroy();
  a1[37] = 0;
  FigSemaphoreDestroy();
  a1[38] = 0;
  FigSimpleMutexDestroy();
  a1[67] = 0;
  FigReadWriteLockDestroy();
  v8 = a1[3];
  if (v8)
  {
    CFRelease(v8);
    a1[3] = 0;
  }

  v9 = a1[4];
  if (v9)
  {
    CFRelease(v9);
    a1[4] = 0;
  }

  v10 = a1[6];
  if (v10)
  {
    CFRelease(v10);
    a1[6] = 0;
  }

  v11 = a1[7];
  if (v11)
  {
    CFRelease(v11);
    a1[7] = 0;
  }

  v12 = a1[73];
  if (v12)
  {
    CFRelease(v12);
    a1[73] = 0;
  }

  v13 = a1[92];
  if (v13)
  {
    CFRelease(v13);
    a1[92] = 0;
  }

  v14 = a1[93];
  if (v14)
  {
    CFRelease(v14);
    a1[93] = 0;
  }

  v15 = a1[94];
  if (v15)
  {
    CFRelease(v15);
    a1[94] = 0;
  }

  v16 = a1[95];
  if (v16)
  {
    CFRelease(v16);
    a1[95] = 0;
  }

  v17 = a1[124];
  if (v17)
  {
    CFRelease(v17);
    a1[124] = 0;
  }

  v18 = a1[125];
  if (v18)
  {
    CFRelease(v18);
    a1[125] = 0;
  }

  v19 = a1[126];
  if (v19)
  {
    CFRelease(v19);
    a1[126] = 0;
  }

  v20 = a1[96];
  if (v20)
  {
    CFRelease(v20);
    a1[96] = 0;
  }

  v21 = a1[127];
  if (v21)
  {
    CFRelease(v21);
    a1[127] = 0;
  }

  v22 = a1[128];
  if (v22)
  {
    CFRelease(v22);
    a1[128] = 0;
  }

  v23 = a1[129];
  if (v23)
  {
    CFRelease(v23);
    a1[129] = 0;
  }

  v24 = a1[130];
  if (v24)
  {
    CFRelease(v24);
    a1[130] = 0;
  }

  v25 = a1[133];
  if (v25)
  {
    CFRelease(v25);
    a1[133] = 0;
  }

  v26 = a1[134];
  if (v26)
  {
    CFRelease(v26);
    a1[134] = 0;
  }

  v27 = a1[135];
  if (v27)
  {
    CFRelease(v27);
    a1[135] = 0;
  }

  v28 = a1[180];
  if (v28)
  {
    CFRelease(v28);
    a1[180] = 0;
  }

  v29 = a1[123];
  if (v29)
  {
    dispatch_release(v29);
    a1[123] = 0;
  }

  v30 = a1[114];
  if (v30)
  {
    CFRelease(v30);
    a1[114] = 0;
  }

  v31 = a1[32];
  if (v31)
  {
    CFRelease(v31);
    a1[32] = 0;
  }

  FigSimpleMutexDestroy();
  a1[189] = 0;
  v32 = a1[190];
  if (v32)
  {
    CFRelease(v32);
    a1[190] = 0;
  }

  if (a1[72])
  {
    FigSimpleMutexDestroy();
    a1[72] = 0;
  }

  if (dword_1EAF18AC0)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (a1[148])
  {
    FigSimpleMutexDestroy();
    a1[148] = 0;
  }

  if (a1[97])
  {
    FigSimpleMutexDestroy();
    a1[97] = 0;
  }

  v34 = a1[98];
  if (v34)
  {
    CFRelease(v34);
    a1[98] = 0;
  }

  v35 = a1[101];
  if (v35)
  {
    CFRelease(v35);
    a1[101] = 0;
  }

  v36 = a1[106];
  if (v36)
  {
    CFRelease(v36);
    a1[106] = 0;
  }

  v37 = a1[178];
  if (v37)
  {
    os_release(v37);
    a1[178] = 0;
  }

  v38 = a1[137];
  if (v38)
  {
    CFRelease(v38);
    a1[137] = 0;
  }

  v39 = a1[108];
  if (v39)
  {
    CFRelease(v39);
    a1[108] = 0;
  }

  v40 = a1[58];
  if (v40)
  {
    dispatch_release(v40);
    a1[58] = 0;
  }

  v41 = a1[192];
  if (v41)
  {
    CFRelease(v41);
  }

  result = FigSimpleMutexDestroy();
  a1[191] = 0;
  return result;
}

void piqca_finalize(const void *a1)
{
  v20 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  *(DerivedStorage + 2544) = mach_absolute_time();
  piqca_gmstats_dump(a1);
  if (_MergedGlobals_54 != -1)
  {
    piqca_WakeupSharedPollingThread_cold_1();
  }

  FigSimpleMutexLock();
  if (CFDictionaryGetValue(qword_1ED4CAA40, a1))
  {
    CFDictionaryRemoveValue(qword_1ED4CAA40, a1);
  }

  FigSimpleMutexUnlock();
  if (*(DerivedStorage + 3224))
  {
    FigImageQueueGaugeGetCMBaseObject();
    if (v3)
    {
      v4 = v3;
      v5 = *(*(CMBaseObjectGetVTable() + 8) + 24);
      if (v5)
      {
        v5(v4);
      }
    }

    v6 = *(DerivedStorage + 3224);
    if (v6)
    {
      CFRelease(v6);
      *(DerivedStorage + 3224) = 0;
    }
  }

  if (*DerivedStorage)
  {
    FigSimpleMutexLock();
    **(DerivedStorage + 16) = 0;
    FigSimpleMutexUnlock();
    piqca_decrementSnapLatchCount((DerivedStorage + 16));
    CFRelease(*DerivedStorage);
    *DerivedStorage = 0;
  }

  v7 = *(DerivedStorage + 3208);
  if (v7)
  {
    CFRelease(v7);
    *(DerivedStorage + 3208) = 0;
  }

  FigSimpleMutexDestroy();
  v8 = *(DerivedStorage + 3184);
  if (v8)
  {
    CFRelease(v8);
    *(DerivedStorage + 3184) = 0;
  }

  FigSimpleMutexDestroy();
  v9 = *(DerivedStorage + 3216);
  if (v9)
  {
    dispatch_release(v9);
    *(DerivedStorage + 3216) = 0;
  }

  FigImageQueueDisplayCountHistory_FinishTracingDisplayCount(*(DerivedStorage + 2984));
  v10 = *(DerivedStorage + 2984);
  if (v10)
  {
    CFRelease(v10);
    *(DerivedStorage + 2984) = 0;
  }

  v11 = *(DerivedStorage + 120);
  if (v11)
  {
    CFRelease(v11);
    *(DerivedStorage + 120) = 0;
  }

  if (*(DerivedStorage + 8))
  {
    FigSimpleMutexDestroy();
  }

  if (*(DerivedStorage + 2912))
  {
    FigSimpleMutexDestroy();
  }

  if (*(DerivedStorage + 2536))
  {
    FigSimpleMutexDestroy();
    *(DerivedStorage + 2536) = 0;
  }

  if (dword_1EAF19510)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v13 = *(DerivedStorage + 2560);
  if (v13)
  {
    CFRelease(v13);
    *(DerivedStorage + 2560) = 0;
  }

  v14 = *(DerivedStorage + 3072);
  if (v14)
  {
    FigSyncMomentSourceDestroy(v14);
    *(DerivedStorage + 3072) = 0;
  }

  v15 = *(DerivedStorage + 3064);
  if (v15)
  {
    dispatch_release(v15);
  }

  v16 = *(DerivedStorage + 3000);
  if (v16)
  {
    os_release(v16);
    *(DerivedStorage + 3000) = 0;
  }

  v17 = *(DerivedStorage + 3144);
  if (v17)
  {
    CFRelease(v17);
    *(DerivedStorage + 3144) = 0;
  }

  v18 = *(DerivedStorage + 3152);
  if (v18)
  {
    CFRelease(v18);
    *(DerivedStorage + 3152) = 0;
  }

  v19 = *(DerivedStorage + 144);
  if (v19)
  {
    CFRelease(v19);
    *(DerivedStorage + 144) = 0;
  }
}

void FigCRABSScheduledIOFinalize(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v2 = CMBaseObjectGetDerivedStorage();
  siocrabsFinishUnlocked(v2, 0, 1);
  FigSimpleMutexDestroy();
  v3 = *DerivedStorage;

  CFRelease(v3);
}

void FPSupport_DeleteCASlot(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  if (a1)
  {
    Context = fpSupport_getContext();
    [MEMORY[0x1E6979518] begin];
    if (!pthread_main_np())
    {
      [MEMORY[0x1E6979518] activateBackground:1];
    }

    [Context deleteSlot:a1];
    [MEMORY[0x1E6979518] commit];
  }

  objc_autoreleasePoolPop(v2);
}

uint64_t FigCRABSInvalidate(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v2 = *(DerivedStorage + 760);
  if (v2)
  {
    v3 = CFRetain(v2);
  }

  else
  {
    v3 = 0;
  }

  v4 = FigRetainProxyLockMutex();
  if (v4)
  {
    v5 = v4;
    if (!v3)
    {
      return v5;
    }

    goto LABEL_12;
  }

  if (*(DerivedStorage + 104) == 1)
  {
    *(DerivedStorage + 104) = 0;
    FigRetainProxyInvalidate();
    FigMemoryBarrier();
    if (*(DerivedStorage + 32))
    {
      CMNotificationCenterGetDefaultLocalCenter();
      FigNotificationCenterRemoveWeakListeners();
    }

    crabsCancelRead(DerivedStorage, (DerivedStorage + 512), -12932);
    crabsCancelRead(DerivedStorage, (DerivedStorage + 616), -12932);
    crabsWaitForReadCancel(DerivedStorage, DerivedStorage + 512);
    crabsWaitForReadCancel(DerivedStorage, DerivedStorage + 616);
    if (*(DerivedStorage + 504))
    {
      crabsCompleteLazySync(DerivedStorage, 1);
      crabsCompleteLazyPagein(DerivedStorage, 1);
    }

    v5 = crabsSyncCache(DerivedStorage);
    v6 = malloc_type_calloc(1uLL, 0x10uLL, 0x20040A4A59CD2uLL);
    *v6 = *(DerivedStorage + 8);
    v6[1] = os_retain(*(DerivedStorage + 936));
    global_queue = dispatch_get_global_queue(0, 0);
    dispatch_async_f(global_queue, v6, crabsReleaseDiskCacheProviderAsync);
    *(DerivedStorage + 8) = 0;
  }

  else
  {
    v5 = 0;
  }

  crabsRetainProxyUnlockWithActions(v3);
  if (v3)
  {
LABEL_12:
    CFRelease(v3);
  }

  return v5;
}

uint64_t crabsWaitForReadCancel(uint64_t result, uint64_t a2)
{
  if (*(a2 + 56) >= 1)
  {
    do
    {
      MEMORY[0x19A8D12E0](*(a2 + 40));
      FigRetainProxyLockMutex();
      usleep(0x2710u);
      v3 = FigRetainProxyUnlockMutex();
    }

    while (*(a2 + 56) > 0);
  }

  return v3;
}

uint64_t FigCFHTTPCopyIdentifier(uint64_t a1, const __CFDictionary **a2)
{
  if (!a2)
  {
    FigCFHTTPCopyIdentifier_cold_4(&v10);
    return v10;
  }

  FigByteFlumeGetFigBaseObject();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 72) == 1)
  {
    v4 = DerivedStorage;
    if (*(DerivedStorage + 264))
    {
      AllocatorForMedia = FigGetAllocatorForMedia();
      MutableCopy = CFDictionaryCreateMutableCopy(AllocatorForMedia, 0, *(v4 + 264));
      if (MutableCopy)
      {
        v7 = MutableCopy;
        if (CFDictionaryContainsKey(MutableCopy, @"URL"))
        {
          if (!CFDictionaryContainsKey(v7, @"MIME Type"))
          {
            FigCFHTTPIsDataURL(*(v4 + 168));
            FigCFDictionarySetValue();
          }

          if (CFDictionaryContainsKey(*(v4 + 264), @"Size"))
          {
            result = 0;
            *a2 = v7;
            return result;
          }

          v9 = 4397;
        }

        else
        {
          v9 = 4390;
        }

        FigCFHTTPCopyIdentifier_cold_1(v9, v7, &v10);
      }

      else
      {
        FigCFHTTPCopyIdentifier_cold_2(&v10);
      }
    }

    else
    {
      FigCFHTTPCopyIdentifier_cold_3(&v10);
    }

    return v10;
  }

  return 4294954513;
}

void FigDiskCacheRepositoryCheckIn(uint64_t a1, const __CFString *a2, const void *a3)
{
  if (a1 && a2 && a3)
  {
    FigSimpleMutexLock();
    if (!FigCFURLCreateDirectory())
    {
      if (!FigFileForkOpenMainByCFURL())
      {
        fdcr_ReadRepositoryPlist(a1, 0);
        fdcr_CheckInResource(a1, a2, a3, 0);
        v8 = CFDictionaryGetCount(*(a1 + 80)) == 0;
        fdcr_WriteRepositoryPlist(a1, 0, 1, v8);
        FigFileForkClose();
      }

      if (*(a1 + 56))
      {
        CFDictionaryApplyFunction(*(a1 + 72), markDiskCacheRepositoryPurgeable, 0);
      }
    }

    FigSimpleMutexUnlock();
  }

  else
  {
    emitter = fig_log_get_emitter();

    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 4294954670, "<<< FigDiskCacheRepository >>>", 889, v3);
  }
}

void *FigCRABSFinalize(uint64_t a1)
{
  v70 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (dword_1EAF16BD0)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (*(DerivedStorage + 760))
  {
    FigCRABSInvalidate(a1);
    *v68 = 0;
    v69 = 0;
    v5 = *(DerivedStorage + 920);
    if (v5)
    {
      v6 = *(DerivedStorage + 840);
      v7 = *(*(CMBaseObjectGetVTable() + 16) + 56);
      if (v7)
      {
        v7(v5, 0x1F0B64598, 0x1F0B3F558, v6, 0);
      }
    }

    v8 = *(DerivedStorage + 920);
    if (v8)
    {
      v9 = *(DerivedStorage + 848);
      v10 = *(*(CMBaseObjectGetVTable() + 16) + 56);
      if (v10)
      {
        v10(v8, 0x1F0B64598, 0x1F0B3F578, v9, 0);
      }

      v11 = *(DerivedStorage + 920);
      if (v11)
      {
        v12 = *(DerivedStorage + 856);
        v13 = *(*(CMBaseObjectGetVTable() + 16) + 56);
        if (v13)
        {
          v13(v11, 0x1F0B64598, 0x1F0B3F598, v12, 0);
        }

        v14 = *(DerivedStorage + 920);
        if (v14)
        {
          v15 = *(DerivedStorage + 864);
          v16 = *(*(CMBaseObjectGetVTable() + 16) + 56);
          if (v16)
          {
            v16(v14, 0x1F0B64598, 0x1F0B3F5B8, v15, 0);
          }

          v17 = *(DerivedStorage + 920);
          if (v17)
          {
            v18 = *(DerivedStorage + 872);
            v19 = *(*(CMBaseObjectGetVTable() + 16) + 56);
            if (v19)
            {
              v19(v17, 0x1F0B64598, 0x1F0B3F5D8, v18, 0);
            }

            v20 = *(DerivedStorage + 920);
            if (v20)
            {
              v21 = *(DerivedStorage + 880);
              v22 = *(*(CMBaseObjectGetVTable() + 16) + 56);
              if (v22)
              {
                v22(v20, 0x1F0B64598, 0x1F0B3F5F8, v21, 0);
              }

              v23 = *(DerivedStorage + 920);
              if (v23)
              {
                v24 = *(DerivedStorage + 888);
                v25 = *(*(CMBaseObjectGetVTable() + 16) + 56);
                if (v25)
                {
                  v25(v23, 0x1F0B64598, 0x1F0B3F618, v24, 0);
                }

                v26 = *(DerivedStorage + 920);
                if (v26)
                {
                  v27 = *(DerivedStorage + 896);
                  v28 = *(*(CMBaseObjectGetVTable() + 16) + 56);
                  if (v28)
                  {
                    v28(v26, 0x1F0B64598, 0x1F0B3F638, v27, 0);
                  }
                }
              }
            }
          }
        }
      }
    }

    StatsDictionary = FigByteStreamStatsCreateStatsDictionary();
    if (FigCFDictionaryGetInt32IfPresent())
    {
      v30 = *(DerivedStorage + 920);
      if (v30)
      {
        v31 = *(*(CMBaseObjectGetVTable() + 16) + 56);
        if (v31)
        {
          v31(v30, 0x1F0B64598, 0x1F0B3F698, 0, 0);
        }
      }
    }

    if (FigCFDictionaryGetInt64IfPresent())
    {
      v32 = *(DerivedStorage + 920);
      if (v32)
      {
        v33 = v69;
        v34 = *(*(CMBaseObjectGetVTable() + 16) + 56);
        if (v34)
        {
          v34(v32, 0x1F0B64598, 0x1F0B3F6B8, v33, 0);
        }
      }
    }

    if (FigCFDictionaryGetInt32IfPresent())
    {
      v35 = *(DerivedStorage + 920);
      if (v35)
      {
        v36 = *(*(CMBaseObjectGetVTable() + 16) + 56);
        if (v36)
        {
          v36(v35, 0x1F0B64598, 0x1F0B23278, 0, 0);
        }
      }
    }

    if (FigCFDictionaryGetInt32IfPresent())
    {
      v37 = *(DerivedStorage + 920);
      if (v37)
      {
        v38 = *(*(CMBaseObjectGetVTable() + 16) + 56);
        if (v38)
        {
          v38(v37, 0x1F0B64598, 0x1F0B3F6D8, 0, 0);
        }
      }
    }

    if (FigCFDictionaryGetDoubleIfPresent())
    {
      v39 = *(DerivedStorage + 920);
      if (v39)
      {
        v40 = *v68;
        v41 = *(*(CMBaseObjectGetVTable() + 16) + 56);
        if (v41)
        {
          v41(v39, 0x1F0B64598, 0x1F0B3F6F8, (v40 * 1000.0), 0);
        }
      }
    }

    if (FigCFDictionaryGetDoubleIfPresent())
    {
      v42 = *(DerivedStorage + 920);
      if (v42)
      {
        v43 = *(*(CMBaseObjectGetVTable() + 16) + 56);
        if (v43)
        {
          v43(v42, 0x1F0B64598, 0x1F0B3F718, (0.0 * 1000.0), 0);
        }
      }
    }

    if (FigCFDictionaryGetDoubleIfPresent())
    {
      v44 = *(DerivedStorage + 920);
      if (v44)
      {
        v45 = *(*(CMBaseObjectGetVTable() + 16) + 56);
        if (v45)
        {
          v45(v44, 0x1F0B64598, 0x1F0B3F738, (0.0 * 1000.0), 0);
        }
      }
    }

    if (FigCFDictionaryGetInt32IfPresent())
    {
      v46 = *(DerivedStorage + 920);
      if (v46)
      {
        v47 = *(*(CMBaseObjectGetVTable() + 16) + 56);
        if (v47)
        {
          v47(v46, 0x1F0B64598, 0x1F0B3F758, 0, 0);
        }
      }
    }

    if (FigCFDictionaryGetInt32IfPresent())
    {
      v48 = *(DerivedStorage + 920);
      if (v48)
      {
        v49 = *(*(CMBaseObjectGetVTable() + 16) + 56);
        if (v49)
        {
          v49(v48, 0x1F0B64598, 0x1F0B3F778, 0, 0);
        }
      }
    }

    if (StatsDictionary)
    {
      CFRelease(StatsDictionary);
    }

    v50 = *(DerivedStorage + 920);
    if (v50)
    {
      CFRelease(v50);
      *(DerivedStorage + 920) = 0;
    }

    v51 = *(DerivedStorage + 936);
    if (v51)
    {
      os_release(v51);
      *(DerivedStorage + 936) = 0;
    }

    FigByteFlumeGetFigBaseObject();
    if (v52)
    {
      v53 = v52;
      v54 = *(*(CMBaseObjectGetVTable() + 8) + 24);
      if (v54)
      {
        v54(v53);
      }
    }

    FigRetainProxyLockMutex();
    v55 = *(DerivedStorage + 88);
    if (v55 >= 1)
    {
      for (i = 0; i < v55; ++i)
      {
        v57 = *(DerivedStorage + 80);
        v58 = *(v57 + 8 * i);
        if (v58)
        {
          crabsReleaseWorkingBlock(DerivedStorage, *(v57 + 8 * i));
          v59 = v58[11];
          if (v59)
          {
            CFAllocatorDeallocate(*DerivedStorage, v59);
          }

          free(v58);
          v55 = *(DerivedStorage + 88);
        }
      }
    }

    v60 = *(DerivedStorage + 456);
    if (v60)
    {
      CFAllocatorDeallocate(*DerivedStorage, v60);
    }

    free(*(DerivedStorage + 80));
    free(*(DerivedStorage + 192));
    free(*(DerivedStorage + 152));
    FigReadWriteLockDestroy();
    v61 = *(DerivedStorage + 960);
    if (v61)
    {
      CFRelease(v61);
    }

    if (*DerivedStorage)
    {
      CFRelease(*DerivedStorage);
    }

    v62 = *(DerivedStorage + 952);
    if (v62)
    {
      CFRelease(v62);
    }

    v63 = *(DerivedStorage + 968);
    if (v63)
    {
      CFRelease(v63);
    }

    FigRetainProxyUnlockMutex();
    v64 = *(DerivedStorage + 144);
    if (v64)
    {
      CFRelease(v64);
    }

    v65 = *(DerivedStorage + 32);
    if (v65)
    {
      CFRelease(v65);
    }

    v66 = *(DerivedStorage + 720);
    if (v66)
    {
      FigAIOClientRelease(v66);
    }

    if (*(DerivedStorage + 656))
    {
      FigConditionVariableDestroy();
    }

    if (*(DerivedStorage + 552))
    {
      FigConditionVariableDestroy();
    }

    if (*(DerivedStorage + 72))
    {
      FigSimpleMutexDestroy();
    }

    if (*(DerivedStorage + 384))
    {
      FigSimpleMutexDestroy();
    }

    FigByteStreamStatsTeardownWorker();
    v67 = *(DerivedStorage + 976);
    if (v67)
    {
      CFRelease(v67);
    }

    FigRetainProxyRelease();
  }

  return memset(DerivedStorage, 70, 0x3D8uLL);
}