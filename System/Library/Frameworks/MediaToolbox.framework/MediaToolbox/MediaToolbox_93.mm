uint64_t fpfsi_RTCReportingUpdateCompletedDecodeForPrerollTime(uint64_t a1)
{
  result = FigGetUpTimeNanoseconds();
  v4 = *(a1 + 2072);
  if (v4)
  {
    v5 = *(a1 + 2568);
    if (v5)
    {
      OUTLINED_FUNCTION_199();
      VTable = CMBaseObjectGetVTable();
      v7 = *(VTable + 16);
      result = VTable + 16;
      v8 = *(v7 + 56);
      if (v8)
      {

        return v8(v5, 0x1F0B64678, 0x1F0B67798, (v1 - v4) / 0xF4240uLL, 1);
      }
    }
  }

  return result;
}

void fpfs_ExternalProtectionStatusChangedGuts(uint64_t a1, uint64_t a2, int a3, int a4, int a5, int a6, int a7, int a8)
{
  NotificationPayloadForProperties = fpfs_CreateNotificationPayloadForProperties(a1, 0, a3, a4, a5, a6, a7, a8, @"ExternalProtectionStatus", 0);
  OUTLINED_FUNCTION_403();
  fpfs_EnqueueNotification(v9, v10, v11, v12);
  if (NotificationPayloadForProperties)
  {

    CFRelease(NotificationPayloadForProperties);
  }
}

void fpfs_PushSampleBuffer()
{
  OUTLINED_FUNCTION_182();
  v2 = v1;
  v4 = v3;
  LODWORD(v507) = v5;
  v7 = v6;
  v592 = *MEMORY[0x1E69E9840];
  v505 = *(v6 + 16);
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  OUTLINED_FUNCTION_258(DerivedStorage);
  v9 = CMBaseObjectGetDerivedStorage();
  memset(&v517, 0, sizeof(v517));
  CMSampleBufferGetPresentationTimeStamp(&v517, v4);
  epoch_high = 0;
  v585 = 0;
  memset(&v516, 0, sizeof(v516));
  v514[0] = 0;
  v514[1] = 0;
  v515 = 0;
  memset(&v513, 0, sizeof(v513));
  CMSampleBufferGetDuration(&v513, v4);
  memset(&v512, 0, sizeof(v512));
  fpfs_GetTimeOffsetIntoSegment(v4, &v512);
  if (v4)
  {
    CFRetain(v4);
  }

  *(v7 + 204) = 1;
  v10 = *MEMORY[0x1E6962DF0];
  OUTLINED_FUNCTION_607();
  v14 = CMGetAttachment(v11, v12, v13);
  if (v14)
  {
    v15 = v14;
    v16 = CFGetTypeID(v14);
    if (v16 == CFDictionaryGetTypeID())
    {
      v17 = *(v7 + 480);
      *(v7 + 480) = v15;
      CFRetain(v15);
      if (v17)
      {
        CFRelease(v17);
      }

      v18 = OUTLINED_FUNCTION_184();
      fpfsi_applyLoudnessInfo(v18, v19, 1);
    }

    if (CMSampleBufferGetNumSamples(v4) < 1)
    {
      goto LABEL_406;
    }

    CMRemoveAttachment(v4, v10);
  }

  CMBufferQueueEnqueue(*(v7 + 96), v4);
  if (*(v9 + 32))
  {
    v20 = &unk_1EAF16000;
    if (*(v7 + 56))
    {
      if (*(v7 + 400))
      {
        FigBasicAESCPECryptorGetClassID();
        OUTLINED_FUNCTION_399();
        if (!CMBaseObjectIsMemberOfClass() || (LODWORD(outputPresentationTimeStamp.value) = 0, v21 = *(v7 + 400), (v22 = *(*(CMBaseObjectGetVTable() + 16) + 16)) == 0) || (v23 = v22(v21, &outputPresentationTimeStamp), v23 | LODWORD(outputPresentationTimeStamp.value)))
        {
          FigSampleBufferSetDecryptor();
        }
      }

      OUTLINED_FUNCTION_196();
      v501 = v2;
      LOBYTE(v26) = *(v7 + 48) == v25 && *(v7 + 168) != 6;
      p_cf = &cf;
      v508 = *MEMORY[0x1E6960C70];
      v510 = (v7 + 412);
      v511 = v0 + 64;
      v477 = v0 + 92;
      v474 = @"Suspended";
      v509 = &v0[61];
      v496 = &v0[15].n128_i64[1];
      v473 = *MEMORY[0x1E695E4D0];
      v476 = 0x1F0B1F618;
      key = *MEMORY[0x1E6962E18];
      allocator = *MEMORY[0x1E695E480];
      v506 = @"FMFD_HintForStartTime";
      *&v24 = 136316674;
      *v492 = v24;
      *&v24 = 136317698;
      *v478 = v24;
      *&v24 = 136317954;
      *v475 = v24;
      *&v24 = 136320770;
      *v499 = v24;
      HIDWORD(v507) = *(MEMORY[0x1E6960C70] + 8);
      LODWORD(v493) = *(MEMORY[0x1E6960C70] + 12);
      HIDWORD(v493) = *(MEMORY[0x1E6960CC0] + 8);
      v494 = *MEMORY[0x1E6960CC0];
      v495 = *(MEMORY[0x1E6960C70] + 16);
      v504 = v0;
      while (1)
      {
        OUTLINED_FUNCTION_29();
        if (v49)
        {
          *&cf.value = *&v517.value;
          OUTLINED_FUNCTION_5(v517.epoch, p_outputPresentationTimeStamp, v472, v473, v474, v475[0], v475[1], v476, v477, v478[0], v478[1], v479, v480, v481, v482, v483, v484, v485, v486, v487, v488, v490, key, v492[0], v492[1], v493, v494, v495, v496, v497, v498, v499[0], v499[1], allocator, v501, v502[0], v502[1], v503, v504, v505, v506, v507, v508, v509, v510);
          CMTimeSubtract(v30, v28, v29);
          cf = *(v7 + 144);
          v31 = OUTLINED_FUNCTION_183();
          CMTimeAdd(v33, v31, v32);
          value = type.value;
          timescale = type.timescale;
          OUTLINED_FUNCTION_714();
          if (*(v7 + 200))
          {
            OUTLINED_FUNCTION_17();
            if (v49)
            {
              outputPresentationTimeStamp.value = value;
              outputPresentationTimeStamp.timescale = timescale;
              OUTLINED_FUNCTION_94();
              cf = **&MEMORY[0x1E6960CC0];
              v34 = OUTLINED_FUNCTION_183();
              if (CMTimeCompare(v34, v35) < 0)
              {
                OUTLINED_FUNCTION_358();
                timescale = HIDWORD(v493);
                value = v494;
              }
            }
          }

          outputPresentationTimeStamp.value = value;
          outputPresentationTimeStamp.timescale = timescale;
          OUTLINED_FUNCTION_94();
          CMSampleBufferSetOutputPresentationTimeStamp(v4, &outputPresentationTimeStamp);
        }

        else
        {
          OUTLINED_FUNCTION_358();
          timescale = HIDWORD(v507);
          value = v508;
        }

        if (v26)
        {
          break;
        }

LABEL_46:
        v26 = 0;
        switch(*(v7 + 168))
        {
          case 0:
            goto LABEL_53;
          case 1:
          case 5:
            if ((v507 & 2) != 0)
            {
              *(v7 + 472) = 1;
            }

            if (!*(v7 + 200) || (OUTLINED_FUNCTION_17(), !v49))
            {
              memset(&v524, 0, sizeof(v524));
              v65 = *(v7 + 16);
              v66 = CMBaseObjectGetDerivedStorage();
              OUTLINED_FUNCTION_248(v66);
              v490 = CMBaseObjectGetDerivedStorage();
              CMSampleBufferGetPresentationTimeStamp(&type, v4);
              if ((*(v7 + 156) & 1) == 0)
              {
                v590 = v508;
                v591 = HIDWORD(v507);
                v522 = 0uLL;
                v523 = 0;
                fpfs_GetTime(0, &v522);
                v67 = MEMORY[0x400];
                if (MEMORY[0x400])
                {
                  v68 = 0;
                  v69 = v493;
                  v502[0] = v495;
                  do
                  {
                    if (v67 != v7)
                    {
                      OUTLINED_FUNCTION_29();
                      if (v49 && !*(v67 + 472) && *(v67 + 80) == *(v7 + 80))
                      {
                        v70 = *(v67 + 144);
                        *(v7 + 160) = *(v67 + 160);
                        *(v7 + 144) = v70;
                        v68 = v67;
                      }

                      if ((*(v67 + 244) & 1) != 0 && *(v67 + 80) <= *(v7 + 80))
                      {
                        v71 = OUTLINED_FUNCTION_171();
                        if (FigStreamTrackCanTracksBeSyncPairsIgnoringDiscontinuity(v71, v72))
                        {
                          v590 = *(v67 + 232);
                          v69 = *(v67 + 244);
                          v591 = *(v67 + 240);
                          v502[0] = *(v67 + 248);
                        }
                      }
                    }

                    v67 = *(v67 + 24);
                  }

                  while (v67);
                }

                else
                {
                  v68 = 0;
                  v502[0] = v495;
                  v69 = v493;
                }

                *(v7 + 208) = v590;
                *(v7 + 216) = v591;
                *(v7 + 220) = v69;
                *(v7 + 224) = v502[0];
                LOBYTE(v127) = v69;
                if ((v69 & 0x1D) != 1)
                {
                  LOBYTE(v127) = v69;
                  if ((*(v7 + 156) & 0x1D) == 1)
                  {
                    OUTLINED_FUNCTION_55();
                    OUTLINED_FUNCTION_5(v128, p_outputPresentationTimeStamp, v472, v473, v474, v475[0], v475[1], v476, v477, v478[0], v478[1], v479, v480, v481, v482, v483, v484, v485, v486, v487, v488, v490, key, v492[0], v492[1], v493, v494, v495, v496, v497, v498, v499[0], v499[1], allocator, v501, v502[0], v502[1], v503, v504, v505, v506, v507, v508, v509, v510);
                    CMTimeSubtract(v131, v129, v130);
                    OUTLINED_FUNCTION_43();
                    v132 = OUTLINED_FUNCTION_183();
                    CMTimeAdd(v134, v132, v133);
                    *(v7 + 208) = rhs;
                    v127 = *(v7 + 220);
                  }
                }

                if ((v127 & 0x1D) != 1 || (outputPresentationTimeStamp = *(v7 + 208), OUTLINED_FUNCTION_739(), v135 = OUTLINED_FUNCTION_183(), CMTimeCompare(v135, v136) < 0))
                {
                  *(v7 + 208) = v522;
                  *(v7 + 224) = v523;
                }

                OUTLINED_FUNCTION_63();
                if (v49)
                {
                  OUTLINED_FUNCTION_194();
                  TrackOfType = fpfs_LastTrackOfType(v137, v138, v7);
                  if (TrackOfType)
                  {
                    if (fpfs_canCrossfade(v490, TrackOfType, v7))
                    {
                      OUTLINED_FUNCTION_155();
                      OUTLINED_FUNCTION_8(gFSPAudioCrossfadeDuration);
                      CMTimeSubtract(v142, v140, v141);
                      OUTLINED_FUNCTION_657();
                      *&p_cf->value = *(v7 + 208);
                      cf.epoch = v143;
                      *&rhs.value = kAudioRampingDownSilenceDuration;
                      rhs.epoch = 0;
                      CMTimeSubtract(&outputPresentationTimeStamp, &cf, &rhs);
                      OUTLINED_FUNCTION_657();
                    }
                  }
                }

                v144 = *(v7 + 156);
                v497 = v65;
                v498 = 0;
                v503 = v4;
                if (v144)
                {
                  v521 = *(v7 + 208);
                  v587 = 0;
                  v588 = 0;
                  v589 = 0;
                  valuePtr = 0;
                  number = 0;
                  AllocatorForMedia = FigGetAllocatorForMedia();
                  FigBytePumpGetFigBaseObject();
                  v147 = v146;
                  v148 = *(*(CMBaseObjectGetVTable() + 8) + 48);
                  if (v148 && !v148(v147, v476, AllocatorForMedia, &number) && number)
                  {
                    CFNumberGetValue(number, kCFNumberSInt32Type, &valuePtr);
                    CFRelease(number);
                  }

                  v26 = 0;
                  fpfs_GetTime(0, &outputPresentationTimeStamp);
                  epoch = outputPresentationTimeStamp.epoch;
                  v523 = outputPresentationTimeStamp.epoch;
                  v150 = *&outputPresentationTimeStamp.value;
                  v522 = *&outputPresentationTimeStamp.value;
                  outputPresentationTimeStamp = v521;
                  *&p_cf->value = v150;
                  cf.epoch = epoch;
                  v151 = OUTLINED_FUNCTION_183();
                  if (CMTimeCompare(v151, v152) >= 1)
                  {
                    *&v521.value = v522;
                    v521.epoch = v523;
                  }

                  if (valuePtr <= MEMORY[0x8D0])
                  {
                    CMTimeMake(&cf, 2 * MEMORY[0x8D0], 1);
                    rhs = v521;
                    CMTimeSubtract(&outputPresentationTimeStamp, &rhs, &cf);
                    v521 = outputPresentationTimeStamp;
                  }

                  else
                  {
                    CMTimeMake(&outputPresentationTimeStamp, 2 * valuePtr, 1);
                    OUTLINED_FUNCTION_161();
                    v153 = OUTLINED_FUNCTION_716();
                    CMTimeSubtract(v155, v153, v154);
                  }

                  CMTimeMake(&outputPresentationTimeStamp, MEMORY[0x8D0], 1);
                  OUTLINED_FUNCTION_155();
                  v157 = OUTLINED_FUNCTION_716();
                  CMTimeAdd(v159, v157, v158);
                  OUTLINED_FUNCTION_55();
                  OUTLINED_FUNCTION_5(v160, p_outputPresentationTimeStamp, v472, v473, v474, v475[0], v475[1], v476, v477, v478[0], v478[1], v479, v480, v481, v482, v483, v484, v485, v486, v487, v488, v490, key, v492[0], v492[1], v493, v494, v495, v496, v65, 0, v499[0], v499[1], allocator, v501, v502[0], v502[1], v4, v504, v505, v506, v507, v508, v509, v510);
                  CMTimeSubtract(v163, v161, v162);
                  OUTLINED_FUNCTION_43();
                  v164 = OUTLINED_FUNCTION_183();
                  CMTimeAdd(v166, v164, v165);
                  if (dword_1EAF169F0)
                  {
                    LODWORD(rhs.value) = 0;
                    v518 = OS_LOG_TYPE_DEFAULT;
                    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
                    v168 = rhs.value;
                    v169 = v518;
                    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, v518);
                    OUTLINED_FUNCTION_121();
                    if (v49)
                    {
                      v171 = v170;
                    }

                    else
                    {
                      v171 = v168;
                    }

                    if (v171)
                    {
                      isa = v498->isa;
                      if (v498->isa)
                      {
                        v173 = (CMBaseObjectGetDerivedStorage() + 888);
                      }

                      else
                      {
                        v173 = "";
                      }

                      v488 = v173;
                      if (v65)
                      {
                        v203 = (CMBaseObjectGetDerivedStorage() + 3096);
                      }

                      else
                      {
                        v203 = "";
                      }

                      v487 = v203;
                      v204 = *(v7 + 32);
                      *&outputPresentationTimeStamp.value = *(v7 + 208);
                      OUTLINED_FUNCTION_244(*(v7 + 224));
                      Seconds = CMTimeGetSeconds(v205);
                      *&outputPresentationTimeStamp.value = *(v7 + 144);
                      OUTLINED_FUNCTION_244(*(v7 + 160));
                      v208 = CMTimeGetSeconds(v207);
                      if (v68)
                      {
                        v209 = *(v68 + 32);
                      }

                      else
                      {
                        v209 = -1;
                      }

                      *&outputPresentationTimeStamp.value = *&v524.value;
                      OUTLINED_FUNCTION_244(v524.epoch);
                      v211 = CMTimeGetSeconds(v210);
                      OUTLINED_FUNCTION_55();
                      OUTLINED_FUNCTION_244(v212);
                      v214 = CMTimeGetSeconds(v213);
                      v215 = "";
                      if (*(v7 + 472))
                      {
                        v215 = "(gap track)";
                      }

                      LODWORD(cf.value) = v475[0];
                      *(&cf.value + 4) = "fpfs_SyncSampleBuffer";
                      LOWORD(cf.flags) = 2048;
                      *(&cf.flags + 2) = isa;
                      HIWORD(cf.epoch) = 2082;
                      v570 = v488;
                      v571 = 2048;
                      v65 = v497;
                      v572 = v497;
                      v573 = 2082;
                      v574 = v487;
                      p_cf = &cf;
                      v575 = 1024;
                      *v576 = v204;
                      *&v576[4] = 2048;
                      *&v576[6] = Seconds;
                      v577 = 2048;
                      v578 = v208;
                      v579 = 1024;
                      *v580 = v209;
                      *&v580[4] = 2048;
                      *&v580[6] = v211;
                      v581 = 2048;
                      v582 = v214;
                      v583 = 2080;
                      v584 = v215;
                      OUTLINED_FUNCTION_101();
                      OUTLINED_FUNCTION_108();
                      _os_log_send_and_compose_impl(v216, v217, v218, v219, &dword_1962D5000, os_log_and_send_and_compose_flags_and_os_log_type, v169, "<<<< FigStreamPlayer >>>> %s: [%p|%{public}s] <%p|%{public}s>: track %d start time is %g, gets discontinuityOffset %g from track %d, first sample is %f, raw: %f %s");
                      v20 = &unk_1EAF16000;
                    }

                    OUTLINED_FUNCTION_1();
                    fig_log_call_emit_and_clean_up_after_send_and_compose();
                    v4 = v503;
                    v26 = v498;
                  }

                  if (!*(v7 + 200))
                  {
                    OUTLINED_FUNCTION_571();
                    OUTLINED_FUNCTION_161();
                    v220 = OUTLINED_FUNCTION_183();
                    if (CMTimeCompare(v220, v221) < 0 || (OUTLINED_FUNCTION_571(), OUTLINED_FUNCTION_708(), v222 = OUTLINED_FUNCTION_183(), CMTimeCompare(v222, v223) >= 1))
                    {
                      *(v7 + 144) = *MEMORY[0x1E6960C70];
                      *(v7 + 160) = v495;
                    }
                  }

                  v144 = *(v7 + 156);
                }

                if ((v144 & 1) == 0)
                {
                  OUTLINED_FUNCTION_155();
                  *&rhs.value = OUTLINED_FUNCTION_259();
                  OUTLINED_FUNCTION_14(type.epoch);
                  CMTimeSubtract(v226, v224, v225);
                  *(v7 + 144) = outputPresentationTimeStamp;
                  if (dword_1EAF169F0)
                  {
                    LODWORD(rhs.value) = 0;
                    LOBYTE(v521.value) = 0;
                    v227 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
                    v228 = rhs.value;
                    value_low = LOBYTE(v521.value);
                    os_log_type_enabled(v227, v521.value);
                    OUTLINED_FUNCTION_202();
                    if (v49)
                    {
                      v231 = v230;
                    }

                    else
                    {
                      v231 = v228;
                    }

                    if (v231)
                    {
                      v232 = v498->isa;
                      if (v498->isa)
                      {
                        v233 = (CMBaseObjectGetDerivedStorage() + 888);
                        if (v65)
                        {
                          goto LABEL_246;
                        }

LABEL_249:
                        v234 = "";
                      }

                      else
                      {
                        v233 = "";
                        if (!v65)
                        {
                          goto LABEL_249;
                        }

LABEL_246:
                        v234 = (CMBaseObjectGetDerivedStorage() + 3096);
                      }

                      v235 = *(v7 + 32);
                      *&outputPresentationTimeStamp.value = *(v7 + 144);
                      OUTLINED_FUNCTION_244(*(v7 + 160));
                      v237 = CMTimeGetSeconds(v236);
                      LODWORD(cf.value) = v492[0];
                      *(&cf.value + 4) = "fpfs_SyncSampleBuffer";
                      LOWORD(cf.flags) = 2048;
                      *(&cf.flags + 2) = v232;
                      HIWORD(cf.epoch) = 2082;
                      v570 = v233;
                      p_cf = &cf;
                      v571 = 2048;
                      v572 = v65;
                      v573 = 2082;
                      v574 = v234;
                      v575 = 1024;
                      *v576 = v235;
                      *&v576[4] = 2048;
                      *&v576[6] = v237;
                      OUTLINED_FUNCTION_101();
                      v238 = OUTLINED_FUNCTION_27();
                      _os_log_send_and_compose_impl(v238, v239, v240, v241, &dword_1962D5000, v227, value_low, "<<<< FigStreamPlayer >>>> %s: [%p|%{public}s] <%p|%{public}s>: track %d discontinuityOffset cannot be set from previous track - set to %g so sbuf lands at startTime");
                      v20 = &unk_1EAF16000;
                    }

                    OUTLINED_FUNCTION_7();
                    OUTLINED_FUNCTION_454(v242, v243, v244, v245, v246);
                    v4 = v503;
                    v26 = v498;
                  }
                }

                if (v69)
                {
                  OUTLINED_FUNCTION_17();
                  if (v49)
                  {
                    p_cf = (v26 + 2776);
                    cf = *(v26 + 2776);
                    rhs.value = v590;
                    rhs.timescale = v591;
                    rhs.flags = v69;
                    OUTLINED_FUNCTION_14(v502[0]);
                    CMTimeMaximum(v260, v258, v259);
                    OUTLINED_FUNCTION_583();
                    *(v26 + 2792) = v261;
                    OUTLINED_FUNCTION_55();
                    OUTLINED_FUNCTION_5(v262, p_outputPresentationTimeStamp, v472, v473, v474, v475[0], v475[1], v476, v477, v478[0], v478[1], v479, v480, v481, v482, v483, v484, v485, v486, v487, v488, v490, key, v492[0], v492[1], v493, v494, v495, v496, v497, v498, v499[0], v499[1], allocator, v501, v502[0], v502[1], v503, v504, v505, v506, v507, v508, v509, v510);
                    CMTimeSubtract(v265, v263, v264);
                    OUTLINED_FUNCTION_43();
                    v266 = OUTLINED_FUNCTION_183();
                    CMTimeAdd(v268, v266, v267);
                    *(v26 + 2752) = rhs;
                  }

                  else
                  {
                    OUTLINED_FUNCTION_63();
                    if (v49)
                    {
                      p_cf = (v26 + 2728);
                      cf = *(v26 + 2728);
                      rhs.value = v590;
                      rhs.timescale = v591;
                      rhs.flags = v69;
                      OUTLINED_FUNCTION_14(v502[0]);
                      CMTimeMaximum(v249, v247, v248);
                      OUTLINED_FUNCTION_583();
                      *(v26 + 2744) = v250;
                      OUTLINED_FUNCTION_55();
                      OUTLINED_FUNCTION_5(v251, p_outputPresentationTimeStamp, v472, v473, v474, v475[0], v475[1], v476, v477, v478[0], v478[1], v479, v480, v481, v482, v483, v484, v485, v486, v487, v488, v490, key, v492[0], v492[1], v493, v494, v495, v496, v497, v498, v499[0], v499[1], allocator, v501, v502[0], v502[1], v503, v504, v505, v506, v507, v508, v509, v510);
                      CMTimeSubtract(v254, v252, v253);
                      OUTLINED_FUNCTION_43();
                      v255 = OUTLINED_FUNCTION_183();
                      CMTimeAdd(v257, v255, v256);
                      *(v26 + 2704) = rhs;
                    }
                  }
                }

                v269 = v20;
                if (dword_1EAF169F0)
                {
                  LODWORD(v521.value) = 0;
                  LOBYTE(v587) = 0;
                  v270 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
                  v271 = v521.value;
                  os_log_type_enabled(v270, v587);
                  OUTLINED_FUNCTION_121();
                  if (v49)
                  {
                    v273 = v272;
                  }

                  else
                  {
                    v273 = v271;
                  }

                  if (v273)
                  {
                    v274 = v498->isa;
                    if (v498->isa)
                    {
                      v502[0] = CMBaseObjectGetDerivedStorage() + 888;
                      v275 = "";
                    }

                    else
                    {
                      v275 = "";
                      v502[0] = "";
                    }

                    v276 = v497;
                    if (v497)
                    {
                      v275 = (CMBaseObjectGetDerivedStorage() + 3096);
                    }

                    v489 = *(v7 + 32);
                    *&cf.value = OUTLINED_FUNCTION_259();
                    *&rhs.value = OUTLINED_FUNCTION_54(v277, v278, v279, v280, v281, v282, v283, v284, p_outputPresentationTimeStamp, v472, v473, v474, v475[0], v475[1], v476, v477, v478[0], v478[1], v479, v480, v481, v482, v483, v484, v485, v486, v487, v489, v490, key, v492[0], v492[1], v493, v494, v495, v496, v497, v498, v499[0], v499[1], allocator, v501, v502[0], v502[1], v503, v504, v505, v506, v507, v508, v509, v510);
                    OUTLINED_FUNCTION_11(v285);
                    CMTimeSubtract(v288, v286, v287);
                    cf = *(v7 + 144);
                    v289 = OUTLINED_FUNCTION_183();
                    CMTimeAdd(v291, v289, v290);
                    v292 = CMTimeGetSeconds(&rhs);
                    *&outputPresentationTimeStamp.value = *(v7 + 208);
                    OUTLINED_FUNCTION_244(*(v7 + 224));
                    v294 = CMTimeGetSeconds(v293);
                    *&outputPresentationTimeStamp.value = OUTLINED_FUNCTION_259();
                    OUTLINED_FUNCTION_244(type.epoch);
                    v296 = CMTimeGetSeconds(v295);
                    v297 = *(v7 + 80);
                    fpfs_GetTime(v498, &outputPresentationTimeStamp);
                    v298 = CMTimeGetSeconds(&outputPresentationTimeStamp);
                    LODWORD(cf.value) = v478[0];
                    *(&cf.value + 4) = "fpfs_SyncSampleBuffer";
                    LOWORD(cf.flags) = 2048;
                    *(&cf.flags + 2) = v274;
                    HIWORD(cf.epoch) = 2082;
                    v570 = v502[0];
                    v571 = 2048;
                    v572 = v276;
                    v573 = 2082;
                    v574 = v275;
                    p_cf = &cf;
                    v575 = 1024;
                    *v576 = v488;
                    *&v576[4] = 2048;
                    *&v576[6] = v292;
                    v577 = 2048;
                    v578 = v294;
                    v579 = 2048;
                    *v580 = v296;
                    *&v580[8] = 1024;
                    *&v580[10] = v297;
                    v581 = 2048;
                    v582 = v298;
                    OUTLINED_FUNCTION_101();
                    OUTLINED_FUNCTION_108();
                    OUTLINED_FUNCTION_772();
                    _os_log_send_and_compose_impl(v299, v300, v301, v302, v303, v304, v305, "<<<< FigStreamPlayer >>>> %s: [%p|%{public}s] <%p|%{public}s>: first sample of syncing track %d is %f, startTime %f, raw: %f, discDomain %d. Now %1.5g");
                  }

                  OUTLINED_FUNCTION_1();
                  fig_log_call_emit_and_clean_up_after_send_and_compose();
                  v4 = v503;
                  v26 = v498;
                }

                v306 = *(v7 + 64);
                v307 = *(v7 + 196);
                if (v306 == *(v26 + 976 + 16 * v307) || v306 == *(v26 + 976 + 16 * v307 + 8))
                {
                  v308 = *(v7 + 144);
                  v309 = v26 + 24 * *(v7 + 196);
                  *(v309 + 264) = *(v7 + 160);
                  *(v309 + 248) = v308;
                }

                v20 = v269;
                v65 = v497;
                if (fpfs_UseTrackToSetPumpOffset(v7))
                {
                  v310 = CMGetAttachment(v4, key, 0);
                  memset(&v521, 0, sizeof(v521));
                  if (v310)
                  {
                    CMTimeMakeFromDictionary(&v521, v310);
                  }

                  else
                  {
                    *&v521.value = OUTLINED_FUNCTION_259();
                    v521.epoch = type.epoch;
                  }

                  v587 = 0;
                  v588 = 0;
                  v589 = 0;
                  OUTLINED_FUNCTION_161();
                  OUTLINED_FUNCTION_317();
                  OUTLINED_FUNCTION_14(v311);
                  CMTimeSubtract(v314, v312, v313);
                  OUTLINED_FUNCTION_43();
                  v315 = OUTLINED_FUNCTION_183();
                  CMTimeAdd(v317, v315, v316);
                  OUTLINED_FUNCTION_142();
                  OUTLINED_FUNCTION_708();
                  OUTLINED_FUNCTION_317();
                  OUTLINED_FUNCTION_14(v318);
                  CMTimeAdd(v321, v319, v320);
                  OUTLINED_FUNCTION_343((v26 + 24 * *(v7 + 196)), *&outputPresentationTimeStamp.value);
                  fpfs_UpdatePumpOffset(v497, v322, v323);
                  if (*(v26 + 1568))
                  {
                    OUTLINED_FUNCTION_309();
                    updated = fpfs_UpdateDateInfo();
                    if (updated)
                    {
LABEL_288:
                      v336 = updated;
                      goto LABEL_302;
                    }
                  }
                }

                OUTLINED_FUNCTION_63();
                if (v49)
                {
                  OUTLINED_FUNCTION_194();
                  if (!fpfs_LastTrackOfType(v324, v325, v7))
                  {
                    OUTLINED_FUNCTION_746();
                    if (!v49)
                    {
                      if (*(v7 + 112) || *(v26 + 2904) || !fpfs_CanRenderAudio(*v26) || (fpfs_EnsureRenderChainForTrack(), !updated))
                      {
                        *&p_cf->value = OUTLINED_FUNCTION_259();
                        *&rhs.value = OUTLINED_FUNCTION_54(v390, v391, v392, v393, v394, v395, v396, v397, p_outputPresentationTimeStamp, v472, v473, v474, v475[0], v475[1], v476, v477, v478[0], v478[1], v479, v480, v481, v482, v483, v484, v485, v486, v487, v488, v490, key, v492[0], v492[1], v493, v494, v495, v496, v497, v498, v499[0], v499[1], allocator, v501, v502[0], v502[1], v503, v504, v505, v506, v507, v508, v509, v510);
                        OUTLINED_FUNCTION_11(v398);
                        CMTimeSubtract(v401, v399, v400);
                        OUTLINED_FUNCTION_43();
                        v402 = OUTLINED_FUNCTION_183();
                        CMTimeAdd(v404, v402, v403);
                        v524 = rhs;
                        OUTLINED_FUNCTION_837(rhs.epoch, *&rhs.value);
                        fpfs_ChangeTrackState(v7, 4u);
                        OUTLINED_FUNCTION_309();
                        fpfs_PushToNonVideoLateJoiner();
                      }

                      goto LABEL_288;
                    }
                  }
                }
              }

              OUTLINED_FUNCTION_55();
              OUTLINED_FUNCTION_5(v326, p_outputPresentationTimeStamp, v472, v473, v474, v475[0], v475[1], v476, v477, v478[0], v478[1], v479, v480, v481, v482, v483, v484, v485, v486, v487, v488, v490, key, v492[0], v492[1], v493, v494, v495, v496, v497, v498, v499[0], v499[1], allocator, v501, v502[0], v502[1], v503, v504, v505, v506, v507, v508, v509, v510);
              CMTimeSubtract(v329, v327, v328);
              OUTLINED_FUNCTION_43();
              v330 = OUTLINED_FUNCTION_183();
              CMTimeAdd(v332, v330, v331);
              v524 = rhs;
              OUTLINED_FUNCTION_837(rhs.epoch, *&rhs.value);
              OUTLINED_FUNCTION_17();
              if (!v49)
              {
                OUTLINED_FUNCTION_63();
                if (v49)
                {
                  v333 = OUTLINED_FUNCTION_245();
                  fpfs_SyncAudioBuffer(v333, v334, v4);
                  goto LABEL_288;
                }

                if (*(v7 + 200))
                {
                  OUTLINED_FUNCTION_142();
                  v339 = OUTLINED_FUNCTION_584();
                  fpfs_GetEndOutputPresentationTimeStamp(v339, v340);
                  OUTLINED_FUNCTION_210(*&outputPresentationTimeStamp.value);
                  rhs = *(v7 + 208);
                  if (CMTimeCompare(&cf, &rhs) >= 1)
                  {
                    fpfs_GetTime(v26, &cf);
                    *&rhs.value = *&outputPresentationTimeStamp.value;
                    OUTLINED_FUNCTION_246(outputPresentationTimeStamp.epoch);
                    if ((CMTimeCompare(v341, &cf) & 0x80000000) == 0)
                    {
                      OUTLINED_FUNCTION_632();
                      *&p_cf->value = *&v524.value;
                      cf.epoch = v524.epoch;
                      *&rhs.value = *MEMORY[0x1E6960C70];
                      rhs.epoch = v495;
                      OUTLINED_FUNCTION_245();
                      fpfs_StartTrackPlaying();
                      if (updated)
                      {
                        goto LABEL_288;
                      }
                    }
                  }

                  v336 = 0;
LABEL_302:
                  v342 = v336 == -12863 || v336 == -12785;
                  if (!v342 && v336)
                  {
                    v453 = CMBaseObjectGetDerivedStorage();
                    fpfs_StopPlayingItemWithOSStatus(v453, v65, v336);
                    goto LABEL_406;
                  }

                  if (v336)
                  {
                    goto LABEL_406;
                  }
                }

LABEL_376:
                OUTLINED_FUNCTION_586();
                v0 = v504;
                goto LABEL_377;
              }

              IsVideoSync = fpfs_IsVideoSync(v4);
              if (!*(v7 + 112))
              {
                fpfs_PreallocateVideoRendering(v7);
              }

              if (IsVideoSync && (*(v7 + 300) & 1) == 0)
              {
                *(v7 + 288) = v524;
              }

              Head = CMBufferQueueGetHead(*(v7 + 88));
              if (IsVideoSync || Head)
              {
                if (IsVideoSync)
                {
                  fpfs_GetTime(v26, &outputPresentationTimeStamp);
                  *&p_cf->value = *&v524.value;
                  cf.epoch = v524.epoch;
                  if (!fpfs_TimeIsAtOrAfter(v490, &cf, &outputPresentationTimeStamp))
                  {
                    CMBufferQueueReset(*(v7 + 88));
                    v343 = *(v7 + 112);
                    if (v343)
                    {
                      if (*(v343 + 56))
                      {
                        CMBufferQueueReset(*(v343 + 40));
                      }

                      else
                      {
                        OUTLINED_FUNCTION_277();
                        MEMORY[0x19A8CE710]();
                      }
                    }

                    *(v7 + 201) = 1;
                  }
                }
              }

              else if (!*(v7 + 199))
              {
                goto LABEL_376;
              }

              OUTLINED_FUNCTION_632();
              if (*(v7 + 64) == *(v26 + 16 * *(v7 + 196) + 984))
              {
                v383 = OUTLINED_FUNCTION_245();
                fpfs_IsTrialReadyToComplete(v383, v384);
                if (IsVideoSync)
                {
                  goto LABEL_390;
                }
              }

              else if (IsVideoSync)
              {
LABEL_390:
                fpfs_CheckVideoSyncQueue();
                if (v389)
                {
                  fpfs_FinishVideoSync();
                  if (updated)
                  {
                    goto LABEL_288;
                  }

                  goto LABEL_373;
                }
              }

              *(v26 + 1152) = *(v7 + 32);
LABEL_373:
              if (*(v7 + 200) && *(v7 + 168) != 6)
              {
                *(v26 + 1540) = 1;
              }

              goto LABEL_376;
            }

            v44 = v7;
            v45 = 2;
LABEL_152:
            fpfs_ChangeTrackState(v44, v45);
LABEL_153:
            LOBYTE(v26) = 0;
            break;
          case 2:
            OUTLINED_FUNCTION_17();
            if (v49)
            {
              if (*(v7 + 200))
              {
                v363 = *(v7 + 16);
                v364 = CMBaseObjectGetDerivedStorage();
                OUTLINED_FUNCTION_724(v364);
                CMBaseObjectGetDerivedStorage();
                OUTLINED_FUNCTION_142();
                v365 = OUTLINED_FUNCTION_584();
                CMSampleBufferGetOutputPresentationTimeStamp(v366, v365);
                v367 = *(value + 1024);
                if (v367)
                {
                  do
                  {
                    v368 = *(v367 + 24);
                    if (v367 != v7)
                    {
                      if (!*(v367 + 200) || (OUTLINED_FUNCTION_33(), !v49))
                      {
                        fpfs_DeleteTrack(v363, v367);
                      }
                    }

                    if (!v368)
                    {
                      break;
                    }

                    v367 = v368;
                  }

                  while (*(value + 1024));
                }

                *(value + 1536) = 1044549468;
                *v502 = *MEMORY[0x1E6960C70];
                *(value + 1496) = *MEMORY[0x1E6960C70];
                LOBYTE(v26) = v495;
                *(value + 1512) = v495;
                OUTLINED_FUNCTION_632();
                v369 = OUTLINED_FUNCTION_618();
                if (!fpfs_CanRenderVideo(v369, v370))
                {
                  v371 = OUTLINED_FUNCTION_410();
                  fpfs_ChangeTrackState(v371, v372);
                  p_cf = &cf;
                  goto LABEL_362;
                }

                p_cf = &cf;
                OUTLINED_FUNCTION_210(*&outputPresentationTimeStamp.value);
                *&rhs.value = *v502;
                rhs.epoch = v495;
                fpfs_StartTrackPlaying();
                if (!v380)
                {
                  if ((*(value + 332) & 1) != 0 && !*(v7 + 120))
                  {
                    OUTLINED_FUNCTION_210(*&outputPresentationTimeStamp.value);
                    fpfs_SetTime(v363, &cf);
                    OUTLINED_FUNCTION_210(*&outputPresentationTimeStamp.value);
                    OUTLINED_FUNCTION_305();
                    fpfs_SeekDidComplete();
                    *(value + 2216) = 0;
                  }

LABEL_362:
                  v381 = OUTLINED_FUNCTION_765();
                  fpfs_UpdateDimensions(v381, v382);
                  OUTLINED_FUNCTION_210(*&outputPresentationTimeStamp.value);
                  fpfs_StepIFrame();
                  if (!v380)
                  {
                    fpfs_CheckIfLikelyToKeepUpAndNotify();
                  }
                }

                v0 = v504;
                if (v380)
                {
                  goto LABEL_406;
                }

                goto LABEL_365;
              }

              if ((v507 & 1) == 0)
              {
                goto LABEL_196;
              }

              if (OUTLINED_FUNCTION_632())
              {
                goto LABEL_406;
              }

              fpfs_ChangeTrackState(v7, 3u);
LABEL_365:
              OUTLINED_FUNCTION_586();
            }

            else
            {
              if (CMSampleBufferGetNumSamples(v4) > 0 || *(v7 + 472) == 1)
              {
                v44 = v7;
                v45 = 3;
                goto LABEL_152;
              }

LABEL_196:
              LOBYTE(v26) = 0;
LABEL_197:
              v99 = 0;
            }

            goto LABEL_377;
          case 3:
            if (v0[92].n128_u8[12])
            {
              OUTLINED_FUNCTION_29();
              if (v49)
              {
                OUTLINED_FUNCTION_390(v477);
                OUTLINED_FUNCTION_5(v73, p_outputPresentationTimeStamp, v472, v473, v474, v475[0], v475[1], v476, v477, v478[0], v478[1], v479, v480, v481, v482, v483, v484, v485, v486, v487, v488, v490, key, v492[0], v492[1], v493, v494, v495, v496, v497, v498, v499[0], v499[1], allocator, v501, v502[0], v502[1], v503, v504, v505, v506, v507, v508, v509, v510);
                CMTimeSubtract(v76, v74, v75);
                cf.value = value;
                cf.timescale = timescale;
                *&cf.flags = v585;
                HIDWORD(cf.epoch) = epoch_high;
                v77 = OUTLINED_FUNCTION_716();
                if (CMTimeCompare(v77, v78) <= 0)
                {
                  OUTLINED_FUNCTION_17();
                  if (v193)
                  {
                    v194 = 1;
                  }

                  else
                  {
                    v194 = 0;
                  }

                  if (v193)
                  {
                    v195 = v507 & v194;
                  }

                  else
                  {
                    v344 = *(v7 + 80);
                    v345 = CMBaseObjectGetDerivedStorage();
                    v346 = *(v345 + 1024);
                    if (v346)
                    {
                      v195 = 0;
                      v347 = 0;
                      do
                      {
                        if (*(v346 + 80) == v344 && (*(v346 + 156) & 0x1D) == 1)
                        {
                          v348 = *(v346 + 48);
                          if (v348 == 1936684398)
                          {
                            v347 = 1;
                          }

                          if (v348 == 1986618469)
                          {
                            v195 = 1;
                          }
                        }

                        v346 = *(v346 + 24);
                      }

                      while (v346);
                    }

                    else
                    {
                      v347 = 0;
                      v195 = 0;
                    }

                    if (*(v345 + 1088))
                    {
                      v195 = v347;
                    }

                    p_cf = &cf;
                  }

                  if (v195)
                  {
                    if (*(v7 + 436))
                    {
                      outputPresentationTimeStamp.value = value;
                      outputPresentationTimeStamp.timescale = timescale;
                      OUTLINED_FUNCTION_94();
                      fpfs_TrimAudioTrack(v7, &outputPresentationTimeStamp);
                    }

                    else
                    {
                      CMBufferQueueReset(*(v7 + 88));
                    }
                  }
                }
              }
            }

            v79 = CMBufferQueueGetHead(*(v7 + 88));
            if (!v79)
            {
              goto LABEL_103;
            }

            CMSampleBufferGetPresentationTimeStamp(&v516, v79);
            CMTimeMake(&outputPresentationTimeStamp, 100, 1000);
            *&p_cf->value = *&v516.value;
            cf.epoch = v516.epoch;
            v80 = OUTLINED_FUNCTION_716();
            CMTimeAdd(v82, v80, v81);
            *&p_cf->value = *v514;
            OUTLINED_FUNCTION_5(v515, p_outputPresentationTimeStamp, v472, v473, v474, v475[0], v475[1], v476, v477, v478[0], v478[1], v479, v480, v481, v482, v483, v484, v485, v486, v487, v488, v490, key, v492[0], v492[1], v493, v494, v495, v496, v497, v498, v499[0], v499[1], allocator, v501, v502[0], v502[1], v503, v504, v505, v506, v507, v508, v509, v510);
            CMTimeAdd(v85, v83, v84);
            v86 = outputPresentationTimeStamp.epoch;
            v515 = outputPresentationTimeStamp.epoch;
            *v514 = *&outputPresentationTimeStamp.value;
            v87 = *&outputPresentationTimeStamp.value;
            outputPresentationTimeStamp = v517;
            *&p_cf->value = v87;
            cf.epoch = v86;
            v88 = OUTLINED_FUNCTION_183();
            if (CMTimeCompare(v88, v89) < 0)
            {
              goto LABEL_103;
            }

            fpfs_AreTracksReadyToPlay();
            if (!v349)
            {
              goto LABEL_103;
            }

            if (fpfs_PerformInitialResolveOfAllWaitingTracks(v505))
            {
              goto LABEL_406;
            }

            v350 = *(v7 + 168);
            if (v350 <= 8 && ((1 << v350) & 0x1D0) != 0)
            {
              goto LABEL_153;
            }

LABEL_103:
            OUTLINED_FUNCTION_632();
            goto LABEL_196;
          case 4:
            OUTLINED_FUNCTION_17();
            if (v49 && !*(v7 + 472))
            {
              fpfs_ChangeTrackState(v7, 5u);
              LOBYTE(v26) = 0;
              v0[29].n128_u8[6] = 0;
              break;
            }

            OUTLINED_FUNCTION_309();
            fpfs_PushToNonVideoLateJoiner();
            if (v192)
            {
              goto LABEL_406;
            }

            goto LABEL_365;
          case 6:
            if (!*(v7 + 200))
            {
              goto LABEL_195;
            }

            OUTLINED_FUNCTION_17();
            if (!v49)
            {
              goto LABEL_195;
            }

            if (v0[96].n128_u8[4])
            {
              goto LABEL_406;
            }

            if (fpfs_IsVideoSync(v4))
            {
              outputPresentationTimeStamp.value = value;
              outputPresentationTimeStamp.timescale = timescale;
              LOBYTE(v26) = timescale;
              *&outputPresentationTimeStamp.flags = v585;
              HIDWORD(outputPresentationTimeStamp.epoch) = epoch_high;
              OUTLINED_FUNCTION_390(MEMORY[0x1E6960CC0]);
              cf.epoch = v373;
              v374 = OUTLINED_FUNCTION_183();
              if (CMTimeCompare(v374, v375) < 0)
              {
                OUTLINED_FUNCTION_358();
                LOBYTE(v26) = BYTE4(v493);
              }

              OUTLINED_FUNCTION_431();
              CMSampleBufferSetOutputPresentationTimeStamp(v4, v376);
              v377 = OUTLINED_FUNCTION_309();
              fpfs_RenderBuffer(v377, v378);
              OUTLINED_FUNCTION_431();
              fpfs_StepIFrame();
              if (v379)
              {
                goto LABEL_406;
              }

              goto LABEL_365;
            }

            if (dword_1EAF169F0 < 2)
            {
              goto LABEL_196;
            }

            v503 = v4;
            OUTLINED_FUNCTION_212();
            v95 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            OUTLINED_FUNCTION_466(v95);
            OUTLINED_FUNCTION_125();
            if (v49)
            {
              LODWORD(v26) = v96;
            }

            else
            {
              LODWORD(v26) = v4;
            }

            if (v26)
            {
              v97 = v0->n128_u64[0];
              if (v0->n128_u64[0])
              {
                v98 = (CMBaseObjectGetDerivedStorage() + 888);
              }

              else
              {
                v98 = "";
              }

              v351 = *(v7 + 16);
              if (v351)
              {
                v352 = (CMBaseObjectGetDerivedStorage() + 3096);
              }

              else
              {
                v352 = "";
              }

              *&outputPresentationTimeStamp.value = *&v517.value;
              OUTLINED_FUNCTION_244(v517.epoch);
              v354 = CMTimeGetSeconds(v353);
              v355 = *(v504 + 928);
              LODWORD(cf.value) = v492[0];
              *(&cf.value + 4) = "fpfs_PushSampleBuffer";
              LOWORD(cf.flags) = 2048;
              *(&cf.flags + 2) = v97;
              HIWORD(cf.epoch) = 2082;
              v570 = v98;
              p_cf = &cf;
              v571 = 2048;
              v572 = v351;
              v573 = 2082;
              v574 = v352;
              v0 = v504;
              v575 = 2048;
              *v576 = v354;
              *&v576[8] = 1024;
              *&v576[10] = v355;
              OUTLINED_FUNCTION_101();
              OUTLINED_FUNCTION_30();
              OUTLINED_FUNCTION_566();
              _os_log_send_and_compose_impl(v356, v357, v358, v359, v360, v361, v362, "<<<< FigStreamPlayer >>>> %s: [%p|%{public}s] <%p|%{public}s>: Warning: ignoring a non i-frame %1.5g; current step %d");
            }

            OUTLINED_FUNCTION_2();
            fig_log_call_emit_and_clean_up_after_send_and_compose();
            OUTLINED_FUNCTION_586();
            v4 = v503;
            goto LABEL_377;
          case 7:
            v90 = OUTLINED_FUNCTION_584();
            fpfs_GetEndOutputPresentationTimeStamp(v90, v91);
            OUTLINED_FUNCTION_155();
            v92 = OUTLINED_FUNCTION_183();
            if (CMTimeCompare(v92, v93) < 0)
            {
              if (fpfs_IsVideoSync(v4))
              {
                v94 = *(v7 + 112);
                if (v94)
                {
                  if (*(v94 + 56))
                  {
                    CMBufferQueueReset(*(v94 + 40));
                  }

                  else
                  {
                    OUTLINED_FUNCTION_277();
                    MEMORY[0x19A8CE710]();
                  }
                }

                *(v7 + 201) = 1;
              }

              fpfs_DoNotDisplay(v4);
LABEL_195:
              v190 = OUTLINED_FUNCTION_309();
              fpfs_RenderBuffer(v190, v191);
              goto LABEL_196;
            }

            LOBYTE(v26) = v0;
            v196 = *(v7 + 112);
            if (v196)
            {
              v197 = v511->n128_u64[0];
              if (v511->n128_u64[0] != v7 && v197)
              {
                do
                {
                  if (*(v197 + 112) == v196)
                  {
                    break;
                  }

                  v197 = *(v197 + 24);
                }

                while (v197 != v7 && v197 != 0);
              }

              if (v197 == v7)
              {
                FigRenderPipelineGetFigBaseObject();
                v200 = v199;
                v201 = *(*(CMBaseObjectGetVTable() + 8) + 56);
                if (v201)
                {
                  v201(v200, v474, v473);
                }
              }
            }

            OUTLINED_FUNCTION_632();
            outputPresentationTimeStamp = *(v7 + 208);
            *&p_cf->value = *MEMORY[0x1E6960C70];
            cf.epoch = v495;
            OUTLINED_FUNCTION_245();
            fpfs_StartTrackPlaying();
            if (v202)
            {
              goto LABEL_406;
            }

            goto LABEL_365;
          case 8:
            v99 = dword_1EAF169F0;
            if (dword_1EAF169F0)
            {
              v20 = timescale;
              v503 = v4;
              LODWORD(rhs.value) = 0;
              LOBYTE(type.value) = 0;
              v100 = OUTLINED_FUNCTION_823();
              OUTLINED_FUNCTION_466(v100);
              OUTLINED_FUNCTION_125();
              if (v49)
              {
                LODWORD(v26) = v101;
              }

              else
              {
                LODWORD(v26) = v4;
              }

              if (v26)
              {
                v102 = v0->n128_u64[0];
                if (v0->n128_u64[0])
                {
                  v103 = value;
                  v104 = (CMBaseObjectGetDerivedStorage() + 888);
                }

                else
                {
                  v103 = value;
                  v104 = "";
                }

                v502[0] = v104;
                v174 = *(v7 + 16);
                if (v174)
                {
                  v175 = (CMBaseObjectGetDerivedStorage() + 3096);
                }

                else
                {
                  v175 = "";
                }

                v176 = *(v7 + 32);
                outputPresentationTimeStamp.value = v103;
                outputPresentationTimeStamp.timescale = timescale;
                *&outputPresentationTimeStamp.flags = v585;
                HIDWORD(outputPresentationTimeStamp.epoch) = epoch_high;
                v177 = CMTimeGetSeconds(&outputPresentationTimeStamp);
                LODWORD(cf.value) = v492[0];
                *(&cf.value + 4) = "fpfs_PushSampleBuffer";
                LOWORD(cf.flags) = 2048;
                *(&cf.flags + 2) = v102;
                HIWORD(cf.epoch) = 2082;
                v570 = v502[0];
                v571 = 2048;
                v572 = v174;
                v573 = 2082;
                v574 = v175;
                v575 = 1024;
                *v576 = v176;
                p_cf = &cf;
                *&v576[4] = 2048;
                *&v576[6] = v177;
                OUTLINED_FUNCTION_101();
                OUTLINED_FUNCTION_30();
                OUTLINED_FUNCTION_566();
                _os_log_send_and_compose_impl(v178, v179, v180, v181, v182, v183, v184, "<<<< FigStreamPlayer >>>> %s: [%p|%{public}s] <%p|%{public}s>: track %d is dead; ignoring sample %f");
                v156 = v504;
              }

              else
              {
                v156 = v0;
              }

              OUTLINED_FUNCTION_279();
              OUTLINED_FUNCTION_110();
              OUTLINED_FUNCTION_417(v185, v186, v187, v188, v189);
              OUTLINED_FUNCTION_586();
              v4 = v503;
              v0 = v156;
            }

            else
            {
              LOBYTE(v26) = 0;
            }

            goto LABEL_377;
          default:
            goto LABEL_197;
        }

LABEL_154:
        v99 = 1;
LABEL_377:
        v385 = v511;
        do
        {
          v386 = v385->n128_u64[0];
          v385 = (v385->n128_u64[0] + 24);
          if (v386)
          {
            v387 = v386 == v7;
          }

          else
          {
            v387 = 1;
          }
        }

        while (!v387);
        if (!v386)
        {
          v388 = v0[65].n128_u64[0];
          if (!v388)
          {
LABEL_400:
            OUTLINED_FUNCTION_212();
            v405 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            v406 = rhs.value;
            v407 = LOBYTE(type.value);
            if (os_log_type_enabled(v405, type.value))
            {
              v408 = v406;
            }

            else
            {
              v408 = v406 & 0xFFFFFFFE;
            }

            if (v408)
            {
              LODWORD(cf.value) = 136315138;
              *(&p_cf->value + 4) = "fpfs_PushSampleBuffer";
              LODWORD(v472) = 12;
              OUTLINED_FUNCTION_65();
              _os_log_send_and_compose_impl(v409, v410, v411, v412, v413, v414, v407, v415, &cf, v472);
            }

            OUTLINED_FUNCTION_16();
            fig_log_call_emit_and_clean_up_after_send_and_compose();
            OUTLINED_FUNCTION_120();
            FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
            goto LABEL_406;
          }

          while (v388 != v7)
          {
            v388 = *(v388 + 24);
            if (!v388)
            {
              goto LABEL_400;
            }
          }
        }

        if ((v99 & 1) == 0)
        {
          OUTLINED_FUNCTION_29();
          if (!v416)
          {
            goto LABEL_435;
          }

          v417 = v0;
          LODWORD(v588) = 0;
          v587 = 0;
          memset(&type, 0, sizeof(type));
          CMSampleBufferGetOutputDuration(&type, v4);
          v418 = OUTLINED_FUNCTION_584();
          CMSampleBufferGetOutputPresentationTimeStamp(v419, v418);
          v420 = outputPresentationTimeStamp.value;
          v585 = *&outputPresentationTimeStamp.flags;
          v421 = outputPresentationTimeStamp.timescale;
          epoch_high = HIDWORD(outputPresentationTimeStamp.epoch);
          if (v507)
          {
            OUTLINED_FUNCTION_17();
            if (v49)
            {
              if ((v417[94].n128_u8[4] & 1) != 0 && !*(v7 + 200))
              {
                OUTLINED_FUNCTION_142();
                cf.value = v420;
                *&cf.flags = v585;
                cf.timescale = v421;
                HIDWORD(cf.epoch) = epoch_high;
                OUTLINED_FUNCTION_8(v422);
                CMTimeSubtract(v425, v423, v424);
                v426 = v417[95].n128_f64[1];
                cf = outputPresentationTimeStamp;
                v417[95].n128_f64[1] = (fabs(CMTimeGetSeconds(&cf)) + v426 * 4.0) / 5.0;
              }

              v417[93].n128_u64[1] = v420;
              v417[94].n128_u32[0] = v421;
              *(v417[94].n128_u64 + 4) = v585;
              v417[94].n128_u32[3] = epoch_high;
              p_cf = &cf;
            }
          }

          OUTLINED_FUNCTION_29();
          if (v49)
          {
            cf.value = v420;
            *&p_cf->flags = v585;
            cf.timescale = v421;
            HIDWORD(cf.epoch) = epoch_high;
            *&rhs.value = OUTLINED_FUNCTION_259();
            OUTLINED_FUNCTION_14(type.epoch);
            CMTimeAdd(v429, v427, v428);
            v420 = outputPresentationTimeStamp.value;
            v587 = *&outputPresentationTimeStamp.flags;
            v421 = outputPresentationTimeStamp.timescale;
            v430 = HIDWORD(outputPresentationTimeStamp.epoch);
          }

          else
          {
            v587 = v585;
            v430 = epoch_high;
          }

          LODWORD(v588) = v430;
          v431 = (v7 + 232);
          if ((*(v7 + 244) & 1) == 0 || (*&outputPresentationTimeStamp.value = *v431, outputPresentationTimeStamp.epoch = *(v7 + 248), cf.value = v420, *&cf.flags = v587, cf.timescale = v421, HIDWORD(cf.epoch) = v588, v432 = OUTLINED_FUNCTION_183(), CMTimeCompare(v432, v433) < 0))
          {
            *(v7 + 232) = v420;
            *(v7 + 240) = v421;
            *(v7 + 244) = v587;
            *(v7 + 252) = v588;
          }

          v0 = v417;
          if (v417[30].n128_u8[12])
          {
            *&outputPresentationTimeStamp.value = *v431;
            outputPresentationTimeStamp.epoch = *(v7 + 248);
            cf = *v417[30].n128_u8;
            v434 = OUTLINED_FUNCTION_183();
            if (CMTimeCompare(v434, v435) >= 1)
            {
              v417[30] = *MEMORY[0x1E6960C70];
              v417[31].n128_u64[0] = v495;
              fpfsi_EnqueueEndTimeChangedNotification(v505);
            }
          }

          if (!fpfs_UseTrackToSetPumpOffset(v7))
          {
            goto LABEL_435;
          }

          memset(&v524, 0, sizeof(v524));
          CMSampleBufferGetPresentationTimeStamp(&v524, v4);
          v522 = 0uLL;
          v523 = 0;
          outputPresentationTimeStamp = v524;
          cf = v512;
          v436 = OUTLINED_FUNCTION_183();
          CMTimeSubtract(v438, v436, v437);
          memset(&v521, 0, sizeof(v521));
          OUTLINED_FUNCTION_739();
          OUTLINED_FUNCTION_317();
          OUTLINED_FUNCTION_14(v439);
          CMTimeSubtract(v442, v440, v441);
          OUTLINED_FUNCTION_43();
          v443 = OUTLINED_FUNCTION_183();
          CMTimeAdd(v445, v443, v444);
          OUTLINED_FUNCTION_142();
          OUTLINED_FUNCTION_161();
          OUTLINED_FUNCTION_317();
          v0 = v417;
          OUTLINED_FUNCTION_14(v446);
          CMTimeAdd(v449, v447, v448);
          OUTLINED_FUNCTION_17();
          if (!v49 || !*(v7 + 200) || fpfs_IsVideoSync(v4))
          {
            OUTLINED_FUNCTION_343((v417 + 24 * *(v7 + 196)), *&outputPresentationTimeStamp.value);
            fpfs_UpdatePumpOffset(v505, v450, v451);
          }

          if (!v417[98].n128_u64[0] && !v417[98].n128_u64[1] || (OUTLINED_FUNCTION_309(), !fpfs_UpdateDateInfo()))
          {
LABEL_435:
            OUTLINED_FUNCTION_17();
            if (v49)
            {
              v452 = *(v7 + 24);
              if (v452)
              {
                while (*(v452 + 48) != 1986618469 || *(v452 + 168) != 1 || *(v452 + 64) != *(v509 + 16 * *(v452 + 196) + 8))
                {
                  v452 = *(v452 + 24);
                  if (!v452)
                  {
                    goto LABEL_444;
                  }
                }

                v0[72].n128_u64[0] = *(v452 + 32);
              }
            }

LABEL_444:
            if (v0[33].n128_u8[1])
            {
              fpfs_CallDispatchHandlerWithItemAndTrack(v505, 0, fpfs_endTimerProc);
            }
          }

          goto LABEL_406;
        }
      }

      if (!*(v7 + 168))
      {
LABEL_53:
        LODWORD(v502[0]) = timescale;
        if ((v507 & 2) != 0)
        {
          *(v7 + 472) = 1;
        }

        OUTLINED_FUNCTION_29();
        if (v49)
        {
          *&outputPresentationTimeStamp.value = *&v517.value;
          OUTLINED_FUNCTION_244(v517.epoch);
          v47 = CMTimeCopyAsDictionary(v46, allocator);
          for (i = v511->n128_u64[0]; i; i = *(i + 24))
          {
            if (*(i + 80) == *(v7 + 80))
            {
              v49 = (*(i + 244) & 0x1D) == 1 || v47 == 0;
              if (!v49)
              {
                v50 = *(i + 64);
                v51 = *(*(CMBaseObjectGetVTable() + 8) + 56);
                if (v51)
                {
                  v51(v50, v506, v47);
                }
              }
            }
          }

          p_cf = &cf;
          if (v47)
          {
            CFRelease(v47);
          }
        }

        v52 = OUTLINED_FUNCTION_309();
        if (fpfs_SetTrackStartTimeAndTimeOffset(v52, v53, 1))
        {
          goto LABEL_406;
        }

        v54 = *(v7 + 64);
        v55 = *(v7 + 196);
        if ((v54 == *(v509 + 16 * v55) || v54 == *(v509 + 16 * v55 + 8)) && (*(v7 + 156) & 0x1D) == 1)
        {
          v56 = *(v7 + 144);
          v57 = v496 + 24 * *(v7 + 196);
          *(v57 + 16) = *(v7 + 160);
          *v57 = v56;
        }

        if (!*(v7 + 168))
        {
          fpfs_ChangeTrackState(v7, 2u);
        }

        v58 = OUTLINED_FUNCTION_584();
        CMSampleBufferGetDuration(v59, v58);
        v513 = outputPresentationTimeStamp;
        if (dword_1EAF169F0)
        {
          OUTLINED_FUNCTION_212();
          v60 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          v61 = rhs.value;
          v498 = v60;
          LODWORD(v497) = LOBYTE(type.value);
          os_log_type_enabled(v60, type.value);
          OUTLINED_FUNCTION_233();
          if (v49)
          {
            v63 = v62;
          }

          else
          {
            v63 = v61;
          }

          if (v63)
          {
            v64 = v0->n128_u64[0];
            if (v0->n128_u64[0])
            {
              v490 = (CMBaseObjectGetDerivedStorage() + 888);
            }

            else
            {
              v490 = "";
            }

            v503 = v4;
            if (v505)
            {
              v488 = (CMBaseObjectGetDerivedStorage() + 3096);
            }

            else
            {
              v488 = "";
            }

            v485 = *(v7 + 32);
            v486 = v517.value;
            LODWORD(v487) = v517.timescale;
            *&outputPresentationTimeStamp.value = *&v517.value;
            OUTLINED_FUNCTION_244(v517.epoch);
            v106 = CMTimeGetSeconds(v105);
            outputPresentationTimeStamp.value = value;
            outputPresentationTimeStamp.timescale = v502[0];
            OUTLINED_FUNCTION_94();
            v107 = CMTimeGetSeconds(&outputPresentationTimeStamp);
            v108 = "(gap track)";
            if (!*(v7 + 472))
            {
              v108 = "";
            }

            v481 = v108;
            v482 = v513.value;
            v483 = *(v7 + 80);
            HIDWORD(v484) = v513.timescale;
            *&outputPresentationTimeStamp.value = *&v513.value;
            OUTLINED_FUNCTION_244(v513.epoch);
            v110 = CMTimeGetSeconds(v109);
            HIDWORD(v480) = *(v7 + 216);
            *&outputPresentationTimeStamp.value = *(v7 + 208);
            v111 = outputPresentationTimeStamp.value;
            OUTLINED_FUNCTION_244(*(v7 + 224));
            v113 = CMTimeGetSeconds(v112);
            v115 = *(v7 + 152);
            *&outputPresentationTimeStamp.value = *(v7 + 144);
            v114 = outputPresentationTimeStamp.value;
            OUTLINED_FUNCTION_244(*(v7 + 160));
            v117 = CMTimeGetSeconds(v116);
            LODWORD(outputPresentationTimeStamp.value) = v499[0];
            *(&outputPresentationTimeStamp.value + 4) = "fpfs_PushSampleBuffer";
            LOWORD(outputPresentationTimeStamp.flags) = 2048;
            *(&outputPresentationTimeStamp.flags + 2) = v64;
            HIWORD(outputPresentationTimeStamp.epoch) = 2082;
            v528 = v490;
            v529 = 2048;
            v530 = v505;
            v531 = 2082;
            v532 = v488;
            v533 = 1024;
            v534 = v485;
            v535 = 2048;
            v536 = v486;
            v537 = 1024;
            v538 = v487;
            v539 = 2048;
            v540 = v106;
            v541 = 2048;
            v542 = value;
            v543 = 1024;
            v544 = v502[0];
            v545 = 2048;
            v546 = v107;
            v547 = 1024;
            v548 = v483;
            v549 = 2082;
            v550 = v481;
            v551 = 2048;
            v552 = v482;
            v553 = 1024;
            v554 = HIDWORD(v484);
            v555 = 2048;
            v556 = v110;
            v557 = 2048;
            v558 = v111;
            v559 = 1024;
            v560 = HIDWORD(v480);
            v561 = 2048;
            v562 = v113;
            v563 = 2048;
            v564 = v114;
            v565 = 1024;
            v566 = v115;
            v567 = 2048;
            v568 = v117;
            LODWORD(v472) = 204;
            p_outputPresentationTimeStamp = &outputPresentationTimeStamp;
            v118 = OUTLINED_FUNCTION_34();
            _os_log_send_and_compose_impl(v118, v119, v120, v121, &dword_1962D5000, v498, v497, "<<<< FigStreamPlayer >>>> %s: [%p|%{public}s] <%p|%{public}s>: first sample of track %d, PTS L1: {%lld/%d=%1.3f}, Output PTS L2: {%lld/%d=%1.3f}, discDomain %d %{public}s, raw duration: {%lld/%d=%1.3f}, startTime L2: {%lld/%d=%1.3f}, discontinuityOffset: {%lld/%d=%1.3f}");
            v4 = v503;
            v0 = v504;
            p_cf = &cf;
            v20 = &unk_1EAF16000;
          }

          OUTLINED_FUNCTION_7();
          OUTLINED_FUNCTION_467(v122, v123, v124, v125, v126);
        }

        if (!*(v7 + 168))
        {
          if (dword_1EAF169F0)
          {
            LODWORD(rhs.value) = 0;
            LOBYTE(type.value) = 0;
            v454 = OUTLINED_FUNCTION_823();
            OUTLINED_FUNCTION_466(v454);
            OUTLINED_FUNCTION_125();
            if (v49)
            {
              v456 = v455;
            }

            else
            {
              v456 = v4;
            }

            if (v456)
            {
              v457 = v0->n128_u64[0];
              if (v457)
              {
                v458 = (CMBaseObjectGetDerivedStorage() + 888);
              }

              else
              {
                v458 = "";
              }

              v459 = v505;
              if (v505)
              {
                v460 = CMBaseObjectGetDerivedStorage();
                v459 = v505;
                v461 = (v460 + 3096);
              }

              else
              {
                v461 = "";
              }

              v462 = *(v7 + 32);
              LODWORD(cf.value) = 136316418;
              *(&cf.value + 4) = "fpfs_PushSampleBuffer";
              LOWORD(cf.flags) = 2048;
              *(&cf.flags + 2) = v457;
              HIWORD(cf.epoch) = 2082;
              v570 = v458;
              v571 = 2048;
              v572 = v459;
              v573 = 2082;
              v574 = v461;
              v575 = 1024;
              *v576 = v462;
              LODWORD(v472) = 58;
              OUTLINED_FUNCTION_30();
              OUTLINED_FUNCTION_566();
              _os_log_send_and_compose_impl(v463, v464, v465, v466, v467, v468, v469, v470, &cf, v472);
            }

            OUTLINED_FUNCTION_2();
            fig_log_call_emit_and_clean_up_after_send_and_compose();
          }

          goto LABEL_406;
        }

        goto LABEL_154;
      }

      if (!v4)
      {
        goto LABEL_408;
      }

      CMBaseObjectGetDerivedStorage();
      if (!*(v7 + 436) || (CMBufferQueueGetMinPresentationTimeStamp(&outputPresentationTimeStamp, *(v7 + 88)), (outputPresentationTimeStamp.flags & 1) != 0))
      {
        v38 = timescale;
      }

      else
      {
        v38 = timescale;
        cf.value = 0;
        v39 = OUTLINED_FUNCTION_615();
        if (FigCreateReplacementAudioSBufByOmittingLeadingDependentPackets(v39, v40, v41))
        {
          v42 = cf.value;
          if (cf.value)
          {
            CFRetain(cf.value);
          }

          CFRelease(v4);
          if (cf.value)
          {
            CFRelease(cf.value);
          }

          if (!v42)
          {
            goto LABEL_408;
          }

          goto LABEL_43;
        }
      }

      v42 = v4;
LABEL_43:
      CMSampleBufferGetPresentationTimeStamp(&outputPresentationTimeStamp, v42);
      v517 = outputPresentationTimeStamp;
      OUTLINED_FUNCTION_29();
      if (v49)
      {
        CMSampleBufferGetOutputPresentationTimeStamp(&outputPresentationTimeStamp, v42);
        value = outputPresentationTimeStamp.value;
        OUTLINED_FUNCTION_714();
        v4 = v42;
        timescale = v43;
      }

      else
      {
        v4 = v42;
        timescale = v38;
      }

      goto LABEL_46;
    }

    OUTLINED_FUNCTION_376();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
  }

LABEL_406:
  if (v4)
  {
    CFRelease(v4);
  }

LABEL_408:
  OUTLINED_FUNCTION_181();
}

void fpfs_PushToNonVideoLateJoiner()
{
  OUTLINED_FUNCTION_261();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  memset(&v84, 0, sizeof(v84));
  fpfs_GetEndOutputPresentationTimeStamp(v1, &v84);
  v82 = *(v0 + 208);
  v83 = *(v0 + 224);
  OUTLINED_FUNCTION_744();
  fpfs_GetTime(DerivedStorage, &v80);
  OUTLINED_FUNCTION_33();
  if (!v3 || *(v0 + 472))
  {
    OUTLINED_FUNCTION_688();
    if ((OUTLINED_FUNCTION_268(v81, v53, v57, v61, v65, v80.n128_i64[0], v80.n128_i64[1], v73, v76, time2.value) & 0x80000000) != 0)
    {
      v82 = v80;
      v83 = v81;
    }

    OUTLINED_FUNCTION_658();
    if (OUTLINED_FUNCTION_268(v81, v54, v58, v62, v66, v80.n128_i64[0], v80.n128_i64[1], v74, v77, time2.value) > 0 || (v70 = v82.n128_u8[0], OUTLINED_FUNCTION_107(v0 + 412), v12 = OUTLINED_FUNCTION_137(v4, v5, v6, v7, v8, v9, v10, v11, v55, v59, v63, v67, v70), CMTimeSubtract(v14, v12, v13), value = v84.value, OUTLINED_FUNCTION_269(), CMTimeCompare(v15, &time2) >= 1))
    {
      if (*(v0 + 48) != 1936684398)
      {
        v71 = v82.n128_u8[0];
        v75 = v83;
        OUTLINED_FUNCTION_107(v0 + 412);
        v24 = OUTLINED_FUNCTION_137(v16, v17, v18, v19, v20, v21, v22, v23, v55, v59, v63, v67, v71);
        CMTimeSubtract(v26, v24, v25);
        v72 = *&v84.value;
        OUTLINED_FUNCTION_269();
        if (CMTimeCompare(v27, &time2) < 1)
        {
          return;
        }

        CMBufferQueueEnqueue(*(v0 + 88), v1);
        OUTLINED_FUNCTION_658();
        OUTLINED_FUNCTION_154();
        v36 = OUTLINED_FUNCTION_281(v28, v29, v30, v31, v32, v33, v34, v35, v56, v60, v64, v68, v72, *(&v72 + 1), v75, v78, time2.value);
        if (CMTimeCompare(v36, v37) <= 0)
        {
          return;
        }

        goto LABEL_11;
      }

      OUTLINED_FUNCTION_335();
      CMTimeMake(&time2, 250, 1000);
      OUTLINED_FUNCTION_401();
      if (!v3)
      {
        OUTLINED_FUNCTION_154();
        v48 = OUTLINED_FUNCTION_175(v40, v41, v42, v43, v44, v45, v46, v47, time2.value, *&time2.timescale, time2.epoch, v67, value);
        CMTimeAdd(v50, v48, v49);
      }

      OUTLINED_FUNCTION_154();
      v51 = OUTLINED_FUNCTION_412();
      if (fpfs_IsAudioTrackReadyToStart(v51, v1, v52, 0))
      {
LABEL_11:
        OUTLINED_FUNCTION_688();
        OUTLINED_FUNCTION_106(MEMORY[0x1E6960C70]);
        OUTLINED_FUNCTION_177();
        fpfs_StartTrackPlaying();
        if (!v38)
        {
          for (i = *(CMBaseObjectGetDerivedStorage() + 1024); i; i = *(i + 24))
          {
            if (*(i + 48) == 1936684398 && *(i + 112))
            {
              break;
            }
          }

          if (i == v0)
          {
            fpfs_SetRateOnTrack();
          }
        }
      }
    }
  }
}

uint64_t fpfs_UpdateDateInfo()
{
  OUTLINED_FUNCTION_400();
  v134 = *MEMORY[0x1E69E9840];
  CMBaseObjectGetDerivedStorage();
  OUTLINED_FUNCTION_29();
  if (v4)
  {
    v5 = v3;
    if (*(v3 + 1568))
    {
      v2 = *(v0 + 16);
      v6 = (v3 + 1160);
      CMSampleBufferGetPresentationTimeStamp(&time1, v1);
      lhs = *(v5 + 1544);
      *&rhs.value = *v6;
      rhs.epoch = *(v5 + 1176);
      v121 = *(v0 + 144);
      v7 = OUTLINED_FUNCTION_502();
      result = fpfsi_AddDateToQueue(v7, v8, v9, v10, v11, v12, v13, 0, 1);
      if (result)
      {
        return result;
      }

      v15 = *(v5 + 1568);
      if (v15)
      {
        CFRelease(v15);
        *(v5 + 1568) = 0;
      }
    }

    if (*(v5 + 1576) && (*(v5 + 1484) & 1) != 0)
    {
      v16 = (v5 + 1472);
      memset(&v121, 0, sizeof(v121));
      CMSampleBufferGetPresentationTimeStamp(&v133, v1);
      lhs = v133;
      OUTLINED_FUNCTION_104(v0 + 412);
      CMTimeSubtract(&time1, &lhs, &rhs);
      lhs = *(v0 + 144);
      CMTimeAdd(&v121, &time1, &lhs);
      OUTLINED_FUNCTION_514();
      time1 = v121;
      lhs = *(v5 + 1160);
      CMTimeAdd(&rhs, &time1, &lhs);
      lhs = rhs;
      OUTLINED_FUNCTION_774();
      fpfs_GetTimeForDate();
      v133.value = time1.value;
      flags = time1.flags;
      v133.timescale = time1.timescale;
      if (time1.flags)
      {
        epoch = time1.epoch;
        *v16 = v133.value;
        *(v5 + 1480) = v133.timescale;
        *(v5 + 1484) = flags;
        *(v5 + 1488) = epoch;
      }

      time1 = *(v0 + 208);
      *&lhs.value = *v16;
      lhs.epoch = *(v5 + 1488);
      if (CMTimeCompare(&time1, &lhs) < 1)
      {
        if (!dword_1EAF169F0)
        {
          goto LABEL_36;
        }

        OUTLINED_FUNCTION_427();
        v36 = OUTLINED_FUNCTION_279();
        v44 = OUTLINED_FUNCTION_371(v36, v37, v38, v39, v40, v41, v42, v43, v94, v98, v102, v106, v110, v114, SBYTE2(v114), SBYTE3(v114), SBYTE4(v114));
        OUTLINED_FUNCTION_465(v44, v45, v46, v47, v48, v49, v50, v51, v96, v100, v104, v107, v111, v116, v118, v119, v120);
        OUTLINED_FUNCTION_40();
        if (v2)
        {
          if (*v5)
          {
            DerivedStorage = CMBaseObjectGetDerivedStorage();
            v60 = (DerivedStorage + 888);
          }

          else
          {
            v60 = "";
          }

          v113 = v60;
          v80 = *(v0 + 16);
          if (v80)
          {
            DerivedStorage = CMBaseObjectGetDerivedStorage();
            v81 = (DerivedStorage + 3096);
          }

          else
          {
            v81 = "";
          }

          OUTLINED_FUNCTION_553(DerivedStorage, v53, v54, v55, v56, v57, v58, v59, v97, v101, v105, v108, v113, v117, v121.value, *&v121.timescale, v121.epoch, v122, rhs.value, *&rhs.timescale, rhs.epoch, v124, lhs.value, *&lhs.timescale, lhs.epoch, v126, *v127, *&v127[8], *&v127[16], v128, *&v129, v130, *(&v130 + 1), v131, time1.value);
          LODWORD(lhs.value) = 136316674;
          OUTLINED_FUNCTION_336();
          *&v127[2] = v80;
          *&v127[10] = v82;
          *&v127[12] = v81;
          OUTLINED_FUNCTION_787(v83);
          v129 = *&v84;
          OUTLINED_FUNCTION_66();
          v85 = OUTLINED_FUNCTION_31();
          OUTLINED_FUNCTION_456(v85, v86, v87, v88, v89, v90, v91, v92);
        }

        OUTLINED_FUNCTION_109();
        v79 = 1;
      }

      else
      {
        OUTLINED_FUNCTION_427();
        OUTLINED_FUNCTION_279();
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        OUTLINED_FUNCTION_465(os_log_and_send_and_compose_flags_and_os_log_type, v20, v21, v22, v23, v24, v25, v26, v94, v98, v102, v106, v110, v114, SBYTE2(v114), BYTE3(v114), SHIDWORD(v114));
        OUTLINED_FUNCTION_40();
        if (v2)
        {
          if (*v5)
          {
            v27 = CMBaseObjectGetDerivedStorage();
            v35 = (v27 + 888);
          }

          else
          {
            v35 = "";
          }

          v112 = v35;
          v61 = *(v0 + 16);
          if (v61)
          {
            v27 = CMBaseObjectGetDerivedStorage();
            v62 = (v27 + 3096);
          }

          else
          {
            v62 = "";
          }

          v63 = OUTLINED_FUNCTION_553(v27, v28, v29, v30, v31, v32, v33, v34, v95, v99, v103, v62, v112, v115, v121.value, *&v121.timescale, v121.epoch, v122, rhs.value, *&rhs.timescale, rhs.epoch, v124, lhs.value, *&lhs.timescale, lhs.epoch, v126, *v127, *&v127[8], *&v127[16], v128, *&v129, v130, *(&v130 + 1), v131, time1.value);
          time1 = *(v0 + 208);
          CMTimeGetSeconds(&time1);
          LODWORD(lhs.value) = 136316930;
          OUTLINED_FUNCTION_336();
          *&v127[2] = v61;
          *&v127[10] = v64;
          *&v127[12] = v109;
          OUTLINED_FUNCTION_787(v65);
          v129 = v63;
          LOWORD(v130) = v66;
          *(&v130 + 2) = v67;
          OUTLINED_FUNCTION_66();
          v68 = OUTLINED_FUNCTION_31();
          OUTLINED_FUNCTION_456(v68, v69, v70, v71, v72, v73, v74, v75);
        }

        OUTLINED_FUNCTION_109();
        v79 = 0;
      }

      OUTLINED_FUNCTION_414(v76, v79, 1, v77, v78);
LABEL_36:
      v93 = *(v5 + 1576);
      if (v93)
      {
        CFRelease(v93);
        *(v5 + 1576) = 0;
      }
    }
  }

  return 0;
}

uint64_t fpfsi_CanReuseRenderChainForTrack()
{
  OUTLINED_FUNCTION_400();
  CMBaseObjectGetDerivedStorage();
  if (!v0)
  {
    return 0;
  }

  if (*(v1 + 112) == v0 && fpfs_FormatsAreCompatible(*(v1 + 16), *(v0 + 16), *(v1 + 56)))
  {
    return 1;
  }

  OUTLINED_FUNCTION_63();
  if (v2)
  {
    FigGetAllocatorForMedia();
    OUTLINED_FUNCTION_413();
    FigRenderPipelineGetFigBaseObject();
    if (*(*(CMBaseObjectGetVTable() + 8) + 48))
    {
      v3 = OUTLINED_FUNCTION_308();
      v4(v3);
    }

    return *(CMBaseObjectGetDerivedStorage() + 504) && !*MEMORY[0x1E695E4D0] && (_os_feature_enabled_impl() & 1) != 0;
  }

  v6 = *(v1 + 16);
  v7 = *(v0 + 16);
  v8 = *(v1 + 56);

  return fpfs_FormatsAreCompatible(v6, v7, v8);
}

void fpfs_createMetadataOutputRenderChainsAndAttachToPrimary()
{
  OUTLINED_FUNCTION_629();
  v22 = v0;
  v23 = v1;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v8 = *(v6 + 16);
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  theArray = 0;
  if (!FPSupport_CreateAndAddMetadataOutputRenderPipelinesForTrackWithID(*(DerivedStorage + 1888), *(v7 + 32), &theArray) && CFArrayGetCount(theArray) >= 1)
  {
    for (i = 0; i < CFArrayGetCount(theArray); ++i)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(theArray, i);
      v12 = malloc_type_calloc(1uLL, 0x90uLL, 0x1060040EF867D01uLL);
      v13 = v12;
      if (v12)
      {
        ++*v12;
        v12[4] = CFRetain(ValueAtIndex);
        v13[2] = CFRetain(v5);
        AllocatorForMedia = FigGetAllocatorForMedia();
        FigRenderPipelineGetFigBaseObject();
        v16 = v15;
        v17 = *(*(CMBaseObjectGetVTable() + 8) + 48);
        if (!v17 || v17(v16, @"SourceSampleBufferQueue", AllocatorForMedia, v13 + 5))
        {
          fpfs_releaseRenderChain(v8, v13);
          continue;
        }
      }

      else
      {
        OUTLINED_FUNCTION_376();
        FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v19, theArray, v21);
        if (v18)
        {
          continue;
        }
      }

      v3[11] = v13;
      v3 = v13;
    }
  }

  if (theArray)
  {
    CFRelease(theArray);
  }

  OUTLINED_FUNCTION_320();
}

uint64_t fpfs_createLegibleOutputRenderChainsAndAttachToPrimary(uint64_t a1, uint64_t a2, const void *a3, void *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v31 = 0;
  if (!*(DerivedStorage + 1872))
  {
    return 0;
  }

  v10 = DerivedStorage;
  if (!*(DerivedStorage + 1880))
  {
    return 0;
  }

  fpfsi_GetDimensions(a2, &v31 + 1, &v31);
  FigLegibleOutputManagerSetVideoDisplaySize(*(v10 + 1872), *(&v31 + 1), *&v31);
  v11 = FigLegibleOutputManagerCreateAndRegisterRenderPipelinesForFormat(*(v10 + 1872), a3);
  if (!v11)
  {
    return 0;
  }

  v12 = v11;
  v28 = a1;
  v29 = a4;
  Count = CFArrayGetCount(v11);
  if (Count < 1)
  {
LABEL_17:
    CFRelease(v12);
    return 0;
  }

  v14 = Count;
  v15 = 0;
  while (1)
  {
    v16 = malloc_type_calloc(1uLL, 0x90uLL, 0x1060040EF867D01uLL);
    if (!v16)
    {
      break;
    }

    v17 = v16;
    a4[11] = v16;
    ++*v16;
    ValueAtIndex = CFArrayGetValueAtIndex(v12, v15);
    v17[4] = ValueAtIndex;
    CFRetain(ValueAtIndex);
    if (CMFormatDescriptionGetMediaType(a3) == 1935832172)
    {
      v19 = fpfsi_prepareSubtitleRenderPipeline(a2);
      if (v19)
      {
        goto LABEL_16;
      }
    }

    else if (CMFormatDescriptionGetMediaType(a3) == 1668047728)
    {
      v19 = fpfs_prepareClosedCaptionRenderPipeline(v28, a2);
      if (v19)
      {
LABEL_16:
        v23 = v19;
LABEL_21:
        CFRelease(v12);
        v25 = v29;
        goto LABEL_22;
      }
    }

    FigGetAllocatorForMedia();
    OUTLINED_FUNCTION_758();
    FigRenderPipelineGetFigBaseObject();
    v21 = v20;
    v22 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (!v22)
    {
      v23 = 4294954514;
      goto LABEL_21;
    }

    v19 = v22(v21, @"SourceSampleBufferQueue", v4, v17 + 5);
    if (v19)
    {
      goto LABEL_16;
    }

    v17[2] = FigFormatDescriptionRetain();
    ++v15;
    a4 = v17;
    if (v14 == v15)
    {
      goto LABEL_17;
    }
  }

  OUTLINED_FUNCTION_120();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v4, v28, v29);
  v23 = v27;
  CFRelease(v12);
  v25 = v30;
  if (!v23)
  {
    return v23;
  }

LABEL_22:
  v26 = v25[11];
  if (v26)
  {
    fpfs_releaseRenderChain(a2, v26);
    v25[11] = 0;
  }

  return v23;
}

void fpfsi_createOutputDestinationForMetadata()
{
  OUTLINED_FUNCTION_653();
  v2 = v1;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  OUTLINED_FUNCTION_173(DerivedStorage);
  v4 = CMBaseObjectGetDerivedStorage();
  v5 = FigStreamingPlayerCombinedVideoDestinationCopyFVTs(*(v4 + 376));
  OUTLINED_FUNCTION_217();
  if (v8 && fpfs_canSendMetadataTrackToVideoTargets(*v0))
  {
    v6 = *(v0 + 1024);
    if (v6)
    {
      v7 = 0;
      do
      {
        v8 = *(v6 + 112) != *(v2 + 112) || v6 == v2;
        if (!v8)
        {
          v7 = v6;
        }

        v6 = *(v6 + 24);
      }

      while (v6);
    }

    else
    {
      v7 = 0;
    }

    AllocatorForMedia = FigGetAllocatorForMedia();
    v10 = CFStringCreateWithFormat(AllocatorForMedia, 0, @"M.%d");
    if (v10)
    {
      Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      FigCFDictionarySetValue();
    }

    else
    {
      Mutable = 0;
    }

    v12 = FigGetAllocatorForMedia();
    if (v7)
    {
      v13 = *(v7 + 104);
    }

    else
    {
      v13 = 0;
    }

    FigAggregateVideoDestinationForDataQueueCreate(v12, v5, *(v0 + 576), *(v2 + 56), v13, Mutable, (v2 + 104));
    if (v5)
    {
      goto LABEL_21;
    }
  }

  else
  {
    Mutable = 0;
    v10 = 0;
    if (v5)
    {
LABEL_21:
      CFRelease(v5);
    }
  }

  if (v10)
  {
    CFRelease(v10);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  OUTLINED_FUNCTION_652();
}

uint64_t fpfs_prepareClosedCaptionRenderPipeline(uint64_t a1, uint64_t a2)
{
  fpfsi_GetClosedCaptionType(a2);
  OUTLINED_FUNCTION_519();
  if (*(CMBaseObjectGetDerivedStorage() + 210))
  {
    v2 = MEMORY[0x1E695E4D0];
  }

  else
  {
    v2 = MEMORY[0x1E695E4C0];
  }

  FigRenderPipelineGetFigBaseObject();
  v4 = v3;
  v5 = *(*(CMBaseObjectGetVTable() + 8) + 56);
  if (!v5)
  {
    return 4294954514;
  }

  result = v5(v4, @"DisplayClosedCaptions", *v2);
  if (result)
  {
    return result;
  }

  FigRenderPipelineGetFigBaseObject();
  if (!*(*(CMBaseObjectGetVTable() + 8) + 56))
  {
    return 4294954514;
  }

  v7 = OUTLINED_FUNCTION_228();

  return v8(v7);
}

void fpfs_postClosedCaptionNotificationIfEnabled(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, CFTypeRef cf, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_653();
  a17 = v18;
  a18 = v21;
  if (!v22)
  {
    goto LABEL_7;
  }

  v23 = v20;
  v24 = v19;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v26 = *DerivedStorage;
  v27 = CMBaseObjectGetDerivedStorage();
  if (*(v27 + 208))
  {
    cf = 0;
    if (!FigCaptionCommandCreatePropertyList(v24, v23, &cf))
    {
      fpfs_EnqueueNotification(v26, @"ClosedCaptionCommand", *DerivedStorage, cf);
      CFRelease(cf);
    }

LABEL_7:
    OUTLINED_FUNCTION_652();
    return;
  }

  v28 = v27;
  if (!*(v27 + 210) || *(DerivedStorage + 846) || !*(v27 + 80) || !*(CMBaseObjectGetDerivedStorage() + 1024))
  {
    goto LABEL_7;
  }

  while (1)
  {
    OUTLINED_FUNCTION_247();
    if (v30)
    {
      if (*(v29 + 112))
      {
        break;
      }
    }

    if (!*(v29 + 24))
    {
      goto LABEL_7;
    }
  }

  FigSimpleMutexLock();
  v31 = *(v28 + 216);
  if (v31)
  {
    Count = CFArrayGetCount(v31);
    v33 = objc_autoreleasePoolPush();
    if (Count >= 1)
    {
      for (i = 0; i != Count; ++i)
      {
        [CFArrayGetValueAtIndex(*(v28 + 216) i)];
      }
    }
  }

  else
  {
    v33 = objc_autoreleasePoolPush();
  }

  objc_autoreleasePoolPop(v33);
  OUTLINED_FUNCTION_652();

  FigSimpleMutexUnlock();
}

uint64_t fpfs_setRateOnPrimaryAndAuxRenderPipelines()
{
  OUTLINED_FUNCTION_471();
  OUTLINED_FUNCTION_659();
  v2 = *(v1 + 88);
  v36 = *v3;
  v38 = *(v3 + 16);
  v30 = *v4;
  v32 = *(v4 + 2);
  VTable = CMBaseObjectGetVTable();
  v14 = *(VTable + 16);
  v13 = VTable + 16;
  if (!*(v14 + 8))
  {
    return 4294954514;
  }

  v15 = OUTLINED_FUNCTION_250(v13, v6, v7, v8, v9, v10, v11, v12, v30, *(&v30 + 1), v32, v34, v36, v38);
  result = v16(v15);
  if (!result && v2)
  {
    do
    {
      OUTLINED_FUNCTION_73();
      v31 = *v0;
      v33 = *(v0 + 2);
      v18 = CMBaseObjectGetVTable();
      v27 = *(v18 + 16);
      v26 = v18 + 16;
      if (*(v27 + 8))
      {
        v28 = OUTLINED_FUNCTION_250(v26, v19, v20, v21, v22, v23, v24, v25, v31, *(&v31 + 1), v33, v35, v37, v39);
        v29(v28);
      }

      v2 = *(v2 + 88);
    }

    while (v2);
    return 0;
  }

  return result;
}

uint64_t fpfs_ConfigureRatePlan(uint64_t a1, int a2, uint64_t a3, int a4, uint64_t a5, float a6, float a7)
{
  if (a3)
  {
    *&a4 = 2.1;
  }

  if (a6 < 0.0)
  {
    return 0;
  }

  *(a5 + 8) = 0;
  *a5 = a6;
  if (a1 && *(&a1 + 1) > a7 || (a1 & 0xFF00) != 0 && *&a2 < a7)
  {
    goto LABEL_8;
  }

  if (*&a4 >= a7)
  {
    if (a7 > 0.0 && a3)
    {
      v9 = FPSupport_ConfigSnapRateForLQZL((a5 + 4), a5, a7);
    }

    else
    {
      if (a7 == 0.0)
      {
        *(a5 + 4) = 1065353216;
      }

      else
      {
        if (*(&a3 + 1) > a7)
        {
LABEL_8:
          v9 = 1;
          *(a5 + 8) = 1;
          *(a5 + 4) = 1065353216;
          goto LABEL_9;
        }

        *(a5 + 4) = a7;
      }

      v9 = 1;
    }
  }

  else
  {
    v9 = 0;
    *a5 = 0;
  }

LABEL_9:
  if (dword_1EAF169F0)
  {
    OUTLINED_FUNCTION_147();
    v17 = OUTLINED_FUNCTION_126(qword_1EAF169E8, v10, v11, v12, v13, v14, v15, v16, v34, v35, v36, *v37, v37[2], v37[3], v37[4]);
    os_log_type_enabled(v17, type);
    OUTLINED_FUNCTION_189();
    if (v19)
    {
      v20 = v18;
    }

    else
    {
      v20 = v39;
    }

    if (v20)
    {
      OUTLINED_FUNCTION_39();
      OUTLINED_FUNCTION_38();
      _os_log_send_and_compose_impl(v21, v22, v23, v24, v25, v26, type, v27);
    }

    OUTLINED_FUNCTION_7();
    OUTLINED_FUNCTION_524(v28, v29, v30, v31, v32);
  }

  return v9;
}

uint64_t fpfsi_SetLastTimestampClientDidPauseOnContentSteeringMonitor(uint64_t a1, uint64_t a2)
{
  valuePtr = a2;
  if (!*(CMBaseObjectGetDerivedStorage() + 120))
  {
    return 0;
  }

  v2 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt64Type, &valuePtr);
  if (v2)
  {
    v3 = v2;
    if (*(*(CMBaseObjectGetVTable() + 8) + 56))
    {
      v4 = OUTLINED_FUNCTION_228();
      v6 = v5(v4);
    }

    else
    {
      v6 = 4294954514;
    }

    CFRelease(v3);
  }

  else
  {
    OUTLINED_FUNCTION_303();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v9, valuePtr, v11);
    return v8;
  }

  return v6;
}

void fpfs_copyFirstConcurrentMetadataTrackInDiscontinuityDomainNeededForVideo(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, __int128 a11, __int16 a12, char a13, os_log_type_t type, int a15, const opaqueCMFormatDescription **cf, CFTypeRef a17, CFTypeRef a18, __int128 a19, int a20, __int16 a21, __int16 a22, uint64_t a23, __int128 a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54)
{
  OUTLINED_FUNCTION_253();
  a53 = v57;
  a54 = v58;
  OUTLINED_FUNCTION_261();
  a41 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  a17 = 0;
  a18 = 0;
  cf = 0;
  LoggingIDForTrackList = fpfsi_createLoggingIDForTrackList(v54, @":MetadataForVideo");
  AllocatorForMedia = FigGetAllocatorForMedia();
  if (!FigStreamTrackListCreate(AllocatorForMedia, LoggingIDForTrackList, &a17))
  {
    v62 = FigGetAllocatorForMedia();
    if (!FigStreamTrackListCreateIterator(v62, a17, &a18) && !fpfsi_findTracksInListOfMediaType(1835365473, DerivedStorage[128], DerivedStorage[129], v55, a17, 0))
    {
      FigStreamTrackListIteratorResetAndCopyTrack(a18, &cf);
      v63 = cf;
      if (cf)
      {
        v64 = 0;
        while (1)
        {
          if (!fpfs_isKnownMebxMetadataForRendering(v63[7]))
          {
            goto LABEL_19;
          }

          if (v64)
          {
            break;
          }

          if (cf)
          {
            v64 = CFRetain(cf);
LABEL_19:
            if (cf)
            {
              CFRelease(cf);
            }

            goto LABEL_21;
          }

          v64 = 0;
LABEL_21:
          cf = 0;
          FigStreamTrackListIteratorCopyNextTrack(a18, &cf);
          v63 = cf;
          if (!cf)
          {
            if (LoggingIDForTrackList)
            {
              goto LABEL_23;
            }

            goto LABEL_24;
          }
        }

        if (!FigStreamTrackAreTracksSyncPairs(v64, cf))
        {
          os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
          OUTLINED_FUNCTION_37();
          if (v56)
          {
            v66 = *DerivedStorage;
            if (*DerivedStorage)
            {
              v67 = (CMBaseObjectGetDerivedStorage() + 888);
            }

            else
            {
              v67 = "";
            }

            TrackNumber = FigStreamTrackGetTrackNumber(cf);
            LODWORD(a19) = 136315906;
            *(&a19 + 4) = "fpfs_copyFirstConcurrentMetadataTrackInDiscontinuityDomainNeededForVideo";
            WORD6(a19) = 2048;
            *(&a19 + 14) = v66;
            a22 = 2082;
            a23 = v67;
            LOWORD(a24) = 2048;
            *(&a24 + 2) = TrackNumber;
            OUTLINED_FUNCTION_100();
            OUTLINED_FUNCTION_27();
            OUTLINED_FUNCTION_200();
            _os_log_send_and_compose_impl(v69, v70, v71, v72, v73, v74, v75, "<<<< FigStreamPlayer >>>> %s:  [%p|%{public}s] Multiple metadataForRendering tracks found track %ld");
          }

          OUTLINED_FUNCTION_16();
          OUTLINED_FUNCTION_449(v76, v77, v78, v79, v80);
        }

        goto LABEL_19;
      }
    }
  }

  if (LoggingIDForTrackList)
  {
LABEL_23:
    CFRelease(LoggingIDForTrackList);
  }

LABEL_24:
  if (a18)
  {
    CFRelease(a18);
  }

  if (a17)
  {
    CFRelease(a17);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  OUTLINED_FUNCTION_252();
}

void fpfsi_scheduleFVTTransitionForTracks()
{
  OUTLINED_FUNCTION_193();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v110 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  OUTLINED_FUNCTION_172(DerivedStorage);
  v10 = CMBaseObjectGetDerivedStorage();
  cf = 0;
  v81 = *MEMORY[0x1E6960C70];
  *&v83.value = *MEMORY[0x1E6960C70];
  v11 = *(MEMORY[0x1E6960C70] + 16);
  v83.epoch = v11;
  if (FigStreamingPlayerCombinedVideoDestinationContainsBufferDeliveryFVR(*(v10 + 376)) && !*(v0 + 760))
  {
    if (dword_1EAF169F0)
    {
      LODWORD(value) = 0;
      OUTLINED_FUNCTION_201();
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      OUTLINED_FUNCTION_121();
      if (v65)
      {
        v66 = v64;
      }

      else
      {
        v66 = 0;
      }

      if (v66)
      {
        v67 = *v0;
        if (v67)
        {
          v68 = (CMBaseObjectGetDerivedStorage() + 888);
        }

        else
        {
          v68 = "";
        }

        if (v8)
        {
          CMBaseObjectGetDerivedStorage();
        }

        v85 = 136316162;
        OUTLINED_FUNCTION_545();
        v88 = v67;
        v89 = 2082;
        v90 = v68;
        v91 = v69;
        v92 = v8;
        v93 = 2082;
        v94 = v70;
        OUTLINED_FUNCTION_145();
        v71 = OUTLINED_FUNCTION_25();
        _os_log_send_and_compose_impl(v71, v72, v73, v74, v75, os_log_and_send_and_compose_flags_and_os_log_type, 0, v76);
      }

      OUTLINED_FUNCTION_1();
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    goto LABEL_47;
  }

  FigGetAllocatorForMedia();
  OUTLINED_FUNCTION_178();
  fpfs_createDataChannelConfigurationAndSetIdentifiers();
  if (v12)
  {
    goto LABEL_47;
  }

  if (v6)
  {
    v13 = *(v6 + 104);
    if (v4)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v13 = 0;
    if (v4)
    {
LABEL_6:
      v14 = *(v4 + 104);
      if (!v14)
      {
        goto LABEL_47;
      }

      if (v2)
      {
LABEL_8:
        if (!dword_1EAF169F0)
        {
LABEL_33:
          v39 = *(v10 + 376);
          v40 = *(v0 + 760);
          v41 = cf;
          *&time.value = v81;
          time.epoch = v11;
          v42 = v13;
          v43 = v14;
LABEL_46:
          FigStreamingPlayerCombinedVideoDestinationSendFVTConfigAtHostTime(v39, v42, v43, v40, v41, &time);
          goto LABEL_47;
        }

        v80 = v14;
        LODWORD(value) = 0;
        v15 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT);
        OUTLINED_FUNCTION_69();
        if (!v13)
        {
LABEL_32:
          OUTLINED_FUNCTION_7();
          OUTLINED_FUNCTION_420(v34, v35, v36, v37, v38);
          v14 = v80;
          goto LABEL_33;
        }

        v16 = *v0;
        if (*v0)
        {
          v17 = (CMBaseObjectGetDerivedStorage() + 888);
        }

        else
        {
          v17 = "";
        }

        v78 = v17;
        if (v8)
        {
          v23 = (CMBaseObjectGetDerivedStorage() + 3096);
          if (v6)
          {
            goto LABEL_26;
          }
        }

        else
        {
          v23 = "";
          if (v6)
          {
LABEL_26:
            v24 = *(v6 + 32);
            if (v4)
            {
LABEL_27:
              v25 = *(v4 + 32);
LABEL_31:
              v85 = 136316930;
              v86 = "fpfsi_scheduleFVTTransitionForTracks";
              v87 = 2048;
              v88 = v16;
              v89 = 2082;
              v90 = v78;
              v91 = 2048;
              v92 = v8;
              v93 = 2082;
              v94 = v23;
              v95 = 1024;
              v96 = v24;
              v97 = 1024;
              v98 = v25;
              v99 = 2112;
              v100 = 0.0;
              OUTLINED_FUNCTION_145();
              OUTLINED_FUNCTION_34();
              OUTLINED_FUNCTION_282();
              _os_log_send_and_compose_impl(v26, v27, v28, v29, v30, v31, v32, v33);
              goto LABEL_32;
            }

LABEL_30:
            v25 = -1;
            goto LABEL_31;
          }
        }

        v24 = -1;
        if (v4)
        {
          goto LABEL_27;
        }

        goto LABEL_30;
      }

      goto LABEL_14;
    }
  }

  v14 = 0;
  if (v2)
  {
    goto LABEL_8;
  }

LABEL_14:
  if (v6 && *(v6 + 168) == 6 && (*(v6 + 500) & 1) != 0 && CMTimebaseGetRate(*(v0 + 576)) != 0.0)
  {
    OUTLINED_FUNCTION_387(v6 + 488);
    FPSTimelineConverterL2TimeToL4(&time);
    value = time.value;
    flags = time.flags;
    timescale = time.timescale;
    epoch = time.epoch;
    fpfs_GetTime(v0, &time);
    FPSTimelineConverterL2TimeToL4(&v83);
    if (dword_1EAF169F0)
    {
      v82 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v82, OS_LOG_TYPE_DEFAULT);
      OUTLINED_FUNCTION_69();
      if (v13)
      {
        v20 = epoch;
        v21 = *v0;
        if (*v0)
        {
          v22 = (CMBaseObjectGetDerivedStorage() + 888);
        }

        else
        {
          v22 = "";
        }

        v79 = v22;
        if (v8)
        {
          v44 = (CMBaseObjectGetDerivedStorage() + 3096);
        }

        else
        {
          v44 = "";
        }

        v77 = v44;
        v45 = *(v6 + 32);
        if (v4)
        {
          v46 = *(v4 + 32);
        }

        else
        {
          v46 = -1;
        }

        OUTLINED_FUNCTION_707();
        time.epoch = v20;
        Seconds = CMTimeGetSeconds(&time);
        time = v83;
        v48 = CMTimeGetSeconds(&time);
        fpfs_GetTime(v0, &time);
        CMTimeGetSeconds(&time);
        v85 = 136317698;
        OUTLINED_FUNCTION_545();
        v88 = v21;
        epoch = v20;
        v89 = 2082;
        v90 = v79;
        v91 = v49;
        v92 = v8;
        v93 = 2082;
        v94 = v77;
        v95 = 1024;
        v96 = v45;
        v97 = 1024;
        v98 = v46;
        v99 = v49;
        v100 = Seconds;
        v101 = v49;
        v102 = v48;
        v103 = v49;
        v104 = v50;
        v105 = 2112;
        v106 = v51;
        OUTLINED_FUNCTION_145();
        v52 = OUTLINED_FUNCTION_34();
        _os_log_send_and_compose_impl(v52, v53, v54, v55, v56, v82, 0, v57);
      }

      OUTLINED_FUNCTION_7();
      OUTLINED_FUNCTION_420(v58, v59, v60, v61, v62);
    }

    if (flags)
    {
      OUTLINED_FUNCTION_707();
      time.epoch = epoch;
      v42 = v13;
      goto LABEL_46;
    }
  }

LABEL_47:
  if (cf)
  {
    CFRelease(cf);
  }

  OUTLINED_FUNCTION_191();
}

void fpfsi_networkActivitySubmitMetricsForInitialStartupIfAvailable(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v2 = *(DerivedStorage + 3264);
  if (v2)
  {
    v3 = *(DerivedStorage + 2040);
    if (v3 != 0.0)
    {
      v4 = *(DerivedStorage + 3016);
      if (v4 != 0.0)
      {
        v5 = *(DerivedStorage + 2088);
        if (v5 != 0.0)
        {
          FigNWActivitySubmitMetricsForInitialStartup(v2, v3, v4, v5);
          v6 = *(DerivedStorage + 3264);
          if (v6)
          {
            CFRelease(v6);
            *(DerivedStorage + 3264) = 0;
          }
        }
      }
    }
  }
}

uint64_t fpfs_PlayerResourceBudgetChanged(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_645(a1, a2);
  OUTLINED_FUNCTION_199();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  OUTLINED_FUNCTION_173(DerivedStorage);
  FigSimpleMutexLock();
  OUTLINED_FUNCTION_45();
  if (!v5 && *(v3 + 80))
  {
    v6 = OUTLINED_FUNCTION_270();
    fpfs_PlayQueueCallForEachItem(v6, v7, v8);
  }

  return fpfs_UnlockAndPostNotificationsWithCaller(v2);
}

void fpfsi_HandleResourceBudgetChange(uint64_t a1)
{
  if (*(CMBaseObjectGetDerivedStorage() + 40))
  {
    OUTLINED_FUNCTION_251();
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    if (*(DerivedStorage + 40))
    {
      if (*(DerivedStorage + 48))
      {
        if (*(DerivedStorage + 49))
        {
          fpfsi_SetupResolutionCapFilter();
          if (!v3 && !fpfsi_UpdatePixelPerSecondsCapFilter())
          {
            v4 = *(v1 + 40);

            FigAlternateSelectionBossApplyFilters(v4);
          }
        }
      }
    }
  }
}

uint64_t fpfs_handleAvailableAudioFormatChange_Apply(int a1, unsigned __int8 *a2, uint64_t a3, int a4, int a5, int a6, int a7, int a8, int a9, uint64_t a10, int a11, __int16 a12, char a13, os_log_type_t a14, int a15, os_log_type_t a16, uint64_t a17, const void *a18, int a19, uint64_t a20, uint64_t a21, uint64_t a22, __int16 a23, uint64_t a24, uint64_t a25, uint64_t a26, size_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56)
{
  if (a2)
  {
    LODWORD(a2) = *a2;
  }

  return fpfsi_handleAvailableAudioFormatChange(a1, a2, 0, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48, a49, a50, a51, a52, a53, a54, a55, a56);
}

void fpfs_InvalidateGuts(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, CFTypeRef cf, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_653();
  a17 = v18;
  a18 = v19;
  v21 = v20;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  a10 = 0;
  v23 = objc_autoreleasePoolPush();
  cf = 0;
  v24 = OUTLINED_FUNCTION_383();
  fpfs_RemoveFromPlayQueueGuts(v24, v25, 0);
  v26 = CMBaseObjectGetDerivedStorage();
  OUTLINED_FUNCTION_258(v26);
  FigSimpleMutexLock();
  OUTLINED_FUNCTION_547();
  if (*(DerivedStorage + 52))
  {
    fpfs_UnlockWithCaller(v21);
    v27 = 0;
  }

  else
  {
    DefaultLocalCenter = CMNotificationCenterGetDefaultLocalCenter();
    JNvfYIDgz(DefaultLocalCenter, v30);
    OUTLINED_FUNCTION_184();
    FigNotificationCenterRemoveWeakListener();
    v31 = CMNotificationCenterGetDefaultLocalCenter();
    JNvfYIDgz(v31, v32);
    OUTLINED_FUNCTION_577();
    CMNotificationCenterBarrier();
    if (*(DerivedStorage + 762))
    {
      v33 = CMNotificationCenterGetDefaultLocalCenter();
      FigGetNotifyingObjectForSelectionCriteriaChanged(v33, v34);
      OUTLINED_FUNCTION_184();
      FigNotificationCenterRemoveWeakListener();
      *(DerivedStorage + 762) = 0;
      v35 = CMNotificationCenterGetDefaultLocalCenter();
      FigGetNotifyingObjectForSelectionCriteriaChanged(v35, v36);
      OUTLINED_FUNCTION_577();
      CMNotificationCenterBarrier();
    }

    v37 = *(DerivedStorage + 64);
    if (v37)
    {
      v38 = CFGetAllocator(v37);
      Copy = CFSetCreateCopy(v38, *(DerivedStorage + 64));
      if (Copy)
      {
        v40 = Copy;
        CFSetApplyFunction(Copy, fpfs_InvalidateItem, 0);
        CFRelease(v40);
      }

      CFRelease(*(DerivedStorage + 64));
      *(DerivedStorage + 64) = 0;
    }

    v41 = *(DerivedStorage + 72);
    if (v41)
    {
      CFRelease(v41);
      *(DerivedStorage + 72) = 0;
    }

    v42 = *(DerivedStorage + 976);
    if (v42)
    {
      CFRelease(v42);
      *(DerivedStorage + 976) = 0;
    }

    fpfs_ResetAudioHardwareFormat(v21);
    v43 = *(DerivedStorage + 536);
    if (v43)
    {
      CFRelease(v43);
      *(DerivedStorage + 536) = 0;
    }

    v44 = *(DerivedStorage + 576);
    if (v44)
    {
      CFRelease(v44);
      *(DerivedStorage + 576) = 0;
    }

    v45 = *(DerivedStorage + 528);
    if (v45)
    {
      CFRelease(v45);
      *(DerivedStorage + 528) = 0;
    }

    AllocatorForMedia = FigGetAllocatorForMedia();
    FigDeferredTransactionCreate(AllocatorForMedia, &cf);
    v47 = *(DerivedStorage + 392);
    if (v47)
    {
      FPSupport_AppendDeferredTransactionChangeForClearingFigVideoLayers(0, v47, 1);
      v48 = *(DerivedStorage + 392);
      *(DerivedStorage + 392) = 0;
    }

    else
    {
      v48 = 0;
    }

    v49 = *(DerivedStorage + 384);
    if (v49)
    {
      FPSupport_AppendDeferredTransactionChangeToRelease(cf, v49);
      *(DerivedStorage + 384) = 0;
    }

    v50 = *(DerivedStorage + 200);
    if (v50)
    {
      FPSupport_AppendDeferredTransactionChangeToRelease(cf, v50);
      *(DerivedStorage + 200) = 0;
    }

    fpfs_releaseTransitionImageQueuesAndSlots(v21);
    OUTLINED_FUNCTION_68();
    FigStreamingPlayerCombinedVideoDestinationRemoveFVTNotificationListeners(v51, v52, v53, v21);
    OUTLINED_FUNCTION_67();
    FigStreamingPlayerCombinedVideoDestinationRemoveFVTNotificationListeners(v54, v55, v56, v21);
    fpfs_sendEmptyConfigurationToEachVideoTarget(v21);
    v57 = *(DerivedStorage + 176);
    if (v57)
    {
      CFRelease(v57);
      *(DerivedStorage + 176) = 0;
    }

    v58 = *(DerivedStorage + 184);
    if (v58)
    {
      CFRelease(v58);
      *(DerivedStorage + 184) = 0;
    }

    v59 = *(DerivedStorage + 640);
    if (v59)
    {
      CFRelease(v59);
      *(DerivedStorage + 640) = 0;
    }

    v60 = *(DerivedStorage + 744);
    if (v60)
    {
      CFRelease(v60);
      *(DerivedStorage + 744) = 0;
    }

    v61 = *(DerivedStorage + 752);
    if (v61)
    {
      CFRelease(v61);
      *(DerivedStorage + 752) = 0;
    }

    v62 = *(DerivedStorage + 768);
    if (v62)
    {
      CFRelease(v62);
      *(DerivedStorage + 768) = 0;
    }

    fpfs_ReleasePlayerHDRPlaybackBaton(v21);
    fpfs_ReleasePlayer4kPlaybackBaton(v21);
    v63 = *(DerivedStorage + 720);
    if (v63)
    {
      CFRelease(v63);
      *(DerivedStorage + 720) = 0;
    }

    v64 = *(DerivedStorage + 728);
    if (v64)
    {
      CFRelease(v64);
      *(DerivedStorage + 728) = 0;
    }

    v65 = *(DerivedStorage + 960);
    if (v65)
    {
      CFRelease(v65);
      *(DerivedStorage + 960) = 0;
    }

    v66 = *(DerivedStorage + 944);
    if (v66)
    {
      while (1)
      {
        Count = CFArrayGetCount(v66);
        v68 = *(DerivedStorage + 944);
        if (!Count)
        {
          break;
        }

        CFArrayGetValueAtIndex(v68, 0);
        CMNotificationCenterGetDefaultLocalCenter();
        OUTLINED_FUNCTION_272();
        FigNotificationCenterRemoveWeakListener();
        CFArrayRemoveValueAtIndex(*(DerivedStorage + 944), 0);
        v66 = *(DerivedStorage + 944);
        if (!v66)
        {
          goto LABEL_55;
        }
      }

      if (v68)
      {
        CFRelease(v68);
        *(DerivedStorage + 944) = 0;
      }
    }

LABEL_55:
    v69 = *(DerivedStorage + 952);
    if (v69)
    {
      CFRelease(v69);
      *(DerivedStorage + 952) = 0;
    }

    CMNotificationCenterGetDefaultLocalCenter();
    OUTLINED_FUNCTION_488();
    FigNotificationCenterRemoveWeakListener();
    CMNotificationCenterGetDefaultLocalCenter();
    OUTLINED_FUNCTION_488();
    v70 = FigNotificationCenterRemoveWeakListener();
    if (FPSupport_GetAudioSpatializationPreferencesMonitor(v70, v71))
    {
      v72 = CMNotificationCenterGetDefaultLocalCenter();
      FPSupport_GetAudioSpatializationPreferencesMonitor(v72, v73);
      OUTLINED_FUNCTION_373();
      FigNotificationCenterRemoveWeakListener();
    }

    v74 = *(DerivedStorage + 480);
    if (v74)
    {
      CFRelease(v74);
      *(DerivedStorage + 480) = 0;
    }

    v75 = *(DerivedStorage + 488);
    if (v75)
    {
      CFRelease(v75);
      *(DerivedStorage + 488) = 0;
    }

    if (*(CMBaseObjectGetDerivedStorage() + 504))
    {
      CMNotificationCenterGetDefaultLocalCenter();
      OUTLINED_FUNCTION_488();
      FigNotificationCenterRemoveWeakListener();
      v76 = *(DerivedStorage + 504);
      if (v76)
      {
        CFRelease(v76);
        *(DerivedStorage + 504) = 0;
      }
    }

    v77 = *(DerivedStorage + 56);
    if (v77)
    {
      CFRelease(v77);
      *(DerivedStorage + 56) = 0;
    }

    v78 = *(DerivedStorage + 592);
    if (v78)
    {
      CFRelease(v78);
      *(DerivedStorage + 592) = 0;
    }

    v79 = *(DerivedStorage + 616);
    if (v79)
    {
      CFRelease(v79);
      *(DerivedStorage + 616) = 0;
    }

    v80 = *(DerivedStorage + 608);
    if (v80)
    {
      CFRelease(v80);
      *(DerivedStorage + 608) = 0;
    }

    v81 = *(DerivedStorage + 792);
    if (v81)
    {
      CFRelease(v81);
      *(DerivedStorage + 792) = 0;
    }

    v82 = *(DerivedStorage + 840);
    if (v82)
    {

      *(DerivedStorage + 840) = 0;
    }

    v83 = *(DerivedStorage + 376);
    if (v83)
    {
      CFRelease(v83);
      *(DerivedStorage + 376) = 0;
    }

    v84 = *(DerivedStorage + 656);
    if (v84)
    {
      CFRelease(v84);
      *(DerivedStorage + 656) = 0;
    }

    v85 = *(DerivedStorage + 912);
    if (v85)
    {
      CFRelease(v85);
      *(DerivedStorage + 912) = 0;
    }

    v86 = *(DerivedStorage + 920);
    if (v86)
    {
      CFRelease(v86);
      *(DerivedStorage + 920) = 0;
    }

    v87 = *(DerivedStorage + 696);
    if (v87)
    {
      CFRelease(v87);
      *(DerivedStorage + 696) = 0;
    }

    FigPropertyStorageInvalidate(*(DerivedStorage + 16));
    FigPlayerResourceArbiterGetGlobalSingleton(&a10);
    if (a10)
    {
      FigPlayerResourceArbiterUnregisterConsumer(a10, *(DerivedStorage + 928));
      CMNotificationCenterGetDefaultLocalCenter();
      OUTLINED_FUNCTION_488();
      FigNotificationCenterRemoveWeakListener();
    }

    *(DerivedStorage + 52) = 1;
    fpfs_UnlockWithCaller(v21);
    v27 = cf;
    if (v48)
    {
      FPSupport_AppendDeferredTransactionChangeToRelease(cf, v48);
      v27 = cf;
    }
  }

  FigDeferredTransactionCommit(v27, 0);
  if (cf)
  {
    CFRelease(cf);
  }

  objc_autoreleasePoolPop(v23);
  v28 = *(DerivedStorage + 984);
  if (v28)
  {
    CFRelease(v28);
    *(DerivedStorage + 984) = 0;
  }

  OUTLINED_FUNCTION_652();
}

void fpfs_deferredClientRenderOptionChanged(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_645(a1, a2);
  OUTLINED_FUNCTION_199();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  OUTLINED_FUNCTION_173(DerivedStorage);
  FigSimpleMutexLock();
  OUTLINED_FUNCTION_45();
  if (!v4)
  {
    v5 = OUTLINED_FUNCTION_270();
    fpfs_PlayQueueCallForEachItem(v5, v6, v7);
  }

  fpfs_UnlockAndPostNotificationsWithCaller(v2);
  if (v2)
  {

    CFRelease(v2);
  }
}

uint64_t fpfsi_handleFVTClientRenderOptionChanged(uint64_t a1)
{
  if (!*(CMBaseObjectGetDerivedStorage() + 40))
  {
    return 0;
  }

  OUTLINED_FUNCTION_251();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!*(DerivedStorage + 40) || !*(DerivedStorage + 48) || !*(DerivedStorage + 49))
  {
    return 0;
  }

  result = fpfsi_updateSupportedFramerateBucketCapMonitorFromFVT(a1);
  if (!result)
  {
    v5 = *(v1 + 40);

    return FigAlternateSelectionBossApplyFilters(v5);
  }

  return result;
}

void fpfs_deferredFVTPreferredDataChannelChanged(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_645(a1, a2);
  OUTLINED_FUNCTION_199();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  OUTLINED_FUNCTION_173(DerivedStorage);
  FigSimpleMutexLock();
  OUTLINED_FUNCTION_45();
  if (!v5)
  {
    FigStreamingPlayerCombinedVideoDestinationReevaluateCanSendMetadataToFVT(*(v3 + 376));
    v6 = OUTLINED_FUNCTION_270();
    fpfs_PlayQueueCallForEachItem(v6, v7, v8);
  }

  fpfs_UnlockAndPostNotificationsWithCaller(v2);
  if (v2)
  {

    CFRelease(v2);
  }
}

uint64_t fpfsi_handleVideoLayoutPreferenceChanged(uint64_t a1)
{
  if (!*(CMBaseObjectGetDerivedStorage() + 40))
  {
    return 0;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!*(DerivedStorage + 40) || !*(DerivedStorage + 48) || !*(DerivedStorage + 49))
  {
    return 0;
  }

  result = fpfsi_setUpVideoLayoutFilters(a1);
  if (!result)
  {
    v4 = OUTLINED_FUNCTION_203();

    return fpfsi_ApplyFiltersAndSwitchVariantIfNecessary(v4);
  }

  return result;
}

void fpfs_CopyExternalProtectionStatus(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, int a17, __int16 a18, char a19, os_log_type_t type, int a21, int a22, __int128 a23, int a24, __int16 a25, __int16 a26, uint64_t a27, __int128 a28, int a29, int a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61)
{
  OUTLINED_FUNCTION_809();
  a60 = v64;
  a61 = v65;
  OUTLINED_FUNCTION_207();
  a48 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v67 = CMBaseObjectGetDerivedStorage();
  if (v67)
  {
    v99 = v62;
    v100 = v61;
    v68 = 1;
    if (*(DerivedStorage + 462))
    {
      v69 = *(v67 + 1712) != 0;
    }

    else
    {
      v69 = 1;
    }

    a22 = 1;
    v71 = *(v67 + 1024);
    if (v71)
    {
      v101 = DerivedStorage;
      v102 = v63;
      v72 = &unk_1EAF16000;
      v73 = &unk_1EAF16000;
      OUTLINED_FUNCTION_340();
      do
      {
        if (v69 || *(v71 + 48) == v63)
        {
          v74 = *(v71 + 400);
          if (v74)
          {
            v75 = *(*(CMBaseObjectGetVTable() + 16) + 24);
            if (v75)
            {
              v70 = v75(v74, 7, &a22);
            }

            else
            {
              v70 = -12782;
            }

            if (v72[636] >= 2u)
            {
              os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
              os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
              OUTLINED_FUNCTION_189();
              if (v95)
              {
                v78 = v77;
              }

              else
              {
                v78 = 0;
              }

              if (v78)
              {
                v63 = v73;
                v79 = v72;
                if (v102)
                {
                  v80 = (CMBaseObjectGetDerivedStorage() + 888);
                }

                else
                {
                  v80 = "";
                }

                v81 = *(v101 + 80);
                if (v81)
                {
                  v82 = (CMBaseObjectGetDerivedStorage() + 3096);
                }

                else
                {
                  v82 = "";
                }

                LODWORD(a23) = 136316418;
                *(&a23 + 4) = "fpfs_CopyStatus";
                WORD6(a23) = 2048;
                *(&a23 + 14) = v102;
                a26 = 2082;
                a27 = v80;
                LOWORD(a28) = 2048;
                *(&a28 + 2) = v81;
                WORD5(a28) = 2082;
                *(&a28 + 12) = v82;
                LOWORD(a30) = 1024;
                *(&a30 + 2) = a22;
                OUTLINED_FUNCTION_146();
                OUTLINED_FUNCTION_34();
                OUTLINED_FUNCTION_282();
                _os_log_send_and_compose_impl(v83, v84, v85, v86, v87, v88, v89, "<<<< FigStreamPlayer >>>> %s: [%p|%{public}s] <%p|%{public}s>: GetAggregateStatus = %d");
                v72 = v79;
                v73 = v63;
                OUTLINED_FUNCTION_340();
              }

              OUTLINED_FUNCTION_7();
              OUTLINED_FUNCTION_524(v90, v91, v92, v93, v94);
            }

            v68 = a22;
            if (v70)
            {
              goto LABEL_36;
            }

            v95 = a22 == 4 || a22 == 1;
            if (!v95)
            {
              break;
            }
          }
        }

        v71 = *(v71 + 24);
      }

      while (v71);
    }

    v70 = 0;
LABEL_36:
    v62 = v99;
    v61 = v100;
  }

  else
  {
    v70 = 0;
    v68 = 1;
    a22 = 1;
  }

  if (v68 == 1 || v68 == 4)
  {
    v97 = &kFigPlayerExternalProtectionStatus_Protected;
  }

  else
  {
    v97 = &kFigPlayerExternalProtectionStatus_NotProtected;
  }

  v98 = CFDictionaryCreate(v62, &kFigPlayerExternalProtectionStatusKey_Video, v97, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (v98 && v70)
  {
    CFRelease(v98);
    v98 = 0;
  }

  *v61 = v98;
  OUTLINED_FUNCTION_808();
}

uint64_t fpfs_setMuted()
{
  OUTLINED_FUNCTION_261();
  v17 = v3;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!v1)
  {
    return 4294954436;
  }

  v5 = DerivedStorage;
  CFBooleanGetTypeID();
  v6 = OUTLINED_FUNCTION_398();
  if (v2 != CFGetTypeID(v6))
  {
    return 4294954436;
  }

  Value = CFBooleanGetValue(v1);
  if (*(v5 + 521) == Value)
  {
    return 0;
  }

  v9 = Value;
  *(v5 + 521) = Value;
  result = fpfsi_UpdateResourceSpecifierOnResourceArbiter(*(v5 + 80));
  if (!result)
  {
    result = fpfs_PlayQueueCallForEachItem(v0, fpfsi_setMutedApply, &v17);
    if (!result)
    {
      AllocatorForMedia = FigGetAllocatorForMedia();
      Mutable = CFDictionaryCreateMutable(AllocatorForMedia, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      v12 = Mutable;
      v13 = MEMORY[0x1E695E4C0];
      if (v9)
      {
        v13 = MEMORY[0x1E695E4D0];
      }

      CFDictionarySetValue(Mutable, @"CurrentMuted", *v13);
      FigPropertyStorageSetValue(*(v5 + 16), @"PlayerMuted", v17);
      v14 = OUTLINED_FUNCTION_805();
      fpfs_EnqueueNotification(v14, v15, v16, v12);
      if (v12)
      {
        CFRelease(v12);
      }

      return 0;
    }
  }

  return result;
}

void fpfs_AdvanceToNextItemIfNecessary(uint64_t a1)
{
  v23 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  Next = fpfs_getNext(DerivedStorage, 0);
  if (Next)
  {
    v3 = Next;
    v4 = CMBaseObjectGetDerivedStorage();
    fpfs_GetNextTimeToPlay(v4, 0, &time1);
    value = time1.value;
    flags = time1.flags;
    timescale = time1.timescale;
    epoch = time1.epoch;
    fpfsi_PredictedEndTime(v3, &time1);
    v19 = time1.value;
    v7 = time1.flags;
    v20 = time1.timescale;
    v8 = time1.epoch;
    v9 = *(DerivedStorage + 688);
    v10 = *(DerivedStorage + 80);
    Count = CFArrayGetCount(*(DerivedStorage + 72));
    v12 = v10 ? Count + 1 : Count;
    if (!FigPlaybackGetEffectiveActionAtEnd(v9, v12))
    {
      v13 = (flags & 0x1F) == 3 || (v7 & 0x1F) == 3;
      if (v13 && (OUTLINED_FUNCTION_514(), rhs.epoch = v8, lhs.value = value, lhs.timescale = timescale, lhs.flags = flags, lhs.epoch = epoch, rhs.value = v19, rhs.timescale = v20, rhs.flags = v7, CMTimeSubtract(&time, &lhs, &rhs), CMTimeAbsoluteValue(&time1, &time), CMTimeMake(&time, 1, 1000000000), *&lhs.value = *&time1.value, OUTLINED_FUNCTION_269(), CMTimeCompare(v14, &time) < 1) || (time.epoch = v8, time1.value = value, time1.timescale = timescale, time1.flags = flags, time1.epoch = epoch, time.value = v19, time.timescale = v20, time.flags = v7, (CMTimeCompare(&time1, &time) & 0x80000000) == 0) || fpfs_isPlaybackBeyondReverseEndTime(v3))
      {
        OUTLINED_FUNCTION_298();
        fpfs_StopPlayingItem();
      }
    }
  }
}

void fpfs_FetchClientBundleIdentifierFromAudioSession(const void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 536))
  {
    v3 = DerivedStorage;
    v4 = malloc_type_calloc(1uLL, 0x10uLL, 0x20040A4A59CD2uLL);
    if (v4)
    {
      v5 = v4;
      if (a1)
      {
        v6 = CFRetain(a1);
      }

      else
      {
        v6 = 0;
      }

      *v5 = v6;
      v7 = *(v3 + 536);
      if (v7)
      {
        v7 = CFRetain(v7);
      }

      v5[1] = v7;
      v8 = OUTLINED_FUNCTION_802();
      global_queue = dispatch_get_global_queue(v8, v9);

      dispatch_async_f(global_queue, v5, fpfs_FetchClientBundleIdentifierFromAudioSessionDispatch);
    }

    else
    {
      OUTLINED_FUNCTION_243();

      FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
    }
  }
}

uint64_t fpfsi_updateNeroChange(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  OUTLINED_FUNCTION_180(DerivedStorage);
  v4 = CMBaseObjectGetDerivedStorage();
  if (!*(v1 + 40) || !*(v1 + 56))
  {
    return 0;
  }

  v5 = v4;
  result = fpfsi_ConfigureAlternateSelectionBossForNeroSupportedVideoFormat(v1, *(v4 + 462));
  if (!result)
  {
    result = FigAlternateFilterMonitorForHDCPNeedsNewExternalProtectionMonitorIfNecessary(*(v1 + 56), *(v5 + 462), *(v5 + 488));
    if (!result)
    {
      fpfsi_ConfigurePumpForPlayerAndRelock(a1);
      v7 = OUTLINED_FUNCTION_198();
      result = fpfsi_ApplyFiltersAndSwitchVariantIfNecessary(v7);
      if (!result)
      {
        v8 = OUTLINED_FUNCTION_475();
        fpfs_stopResetDisturbReprepareAndResume(v8, v9, 1);
        return 0;
      }
    }
  }

  return result;
}

const __CFArray *fpfs_RTCReportingSetSendingVisualsToNero(uint64_t a1)
{
  result = fpfs_getNext(a1, 0);
  if (result)
  {
    result = CMBaseObjectGetDerivedStorage();
    v2 = *(result + 321);
    if (v2)
    {
      VTable = CMBaseObjectGetVTable();
      v4 = *(VTable + 16);
      result = (VTable + 16);
      v5 = *(v4 + 56);
      if (v5)
      {

        return v5(v2, @"playerStats", 0x1F0B66598, 1, 0);
      }
    }
  }

  return result;
}

uint64_t fpfsi_updateDisplayListForVideoRangeMonitors(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  OUTLINED_FUNCTION_172(DerivedStorage);
  CMBaseObjectGetDerivedStorage();
  if (v1[11])
  {
    if (!*(*(CMBaseObjectGetVTable() + 8) + 56))
    {
      return 4294954514;
    }

    v3 = OUTLINED_FUNCTION_444();
    result = v4(v3);
    if (result)
    {
      return result;
    }
  }

  if (v1[10])
  {
    if (!*(*(CMBaseObjectGetVTable() + 8) + 56))
    {
      return 4294954514;
    }

    v6 = OUTLINED_FUNCTION_444();
    result = v7(v6);
    if (result)
    {
      return result;
    }
  }

  if (!v1[8])
  {
    goto LABEL_10;
  }

  if (!*(*(CMBaseObjectGetVTable() + 8) + 56))
  {
    return 4294954514;
  }

  v8 = OUTLINED_FUNCTION_444();
  result = v9(v8);
  if (result)
  {
    return result;
  }

LABEL_10:
  if (!v1[9])
  {
    return 0;
  }

  if (!*(*(CMBaseObjectGetVTable() + 8) + 56))
  {
    return 4294954514;
  }

  v10 = OUTLINED_FUNCTION_236();

  return v11(v10);
}

double fpfs_UpdatePlayerOverrideForAllItems()
{
  OUTLINED_FUNCTION_187();
  if (!*(v3 + 80) || !v0(v1))
  {
    v4 = *(v1 + 72);
    if (v4)
    {
      Count = CFArrayGetCount(v4);
      v6 = Count - 1;
      if (Count >= 1)
      {
        AllocatorForMedia = FigGetAllocatorForMedia();
        Copy = CFArrayCreateCopy(AllocatorForMedia, *(v1 + 72));
        if (Copy)
        {
          v9 = Copy;
          v10 = 0;
          do
          {
            v11 = OUTLINED_FUNCTION_184();
            CFArrayGetValueAtIndex(v11, v12);
            v13 = OUTLINED_FUNCTION_399();
            if (v0(v13))
            {
              break;
            }
          }

          while (v6 != v10++);
          CFRelease(v9);
        }

        else
        {
          OUTLINED_FUNCTION_239();

          return FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
        }
      }
    }
  }

  return result;
}

double fpfs_SetReleaseResourcesWhenPaused(uint64_t a1, int a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 824) != a2)
  {
    v5 = DerivedStorage;
    *(DerivedStorage + 824) = a2;
    if (*(DerivedStorage + 80))
    {
      v6 = CMBaseObjectGetDerivedStorage();
      if (fpfs_shouldReleaseRenderChainForPausing(*(v5 + 80)))
      {
        if (*(v6 + 464))
        {
          return fpfsi_ReleaseRenderChainsForPausing(*(v5 + 80));
        }
      }
    }
  }

  return result;
}

uint64_t fpfs_SetResourceConservationLevelWhenPaused()
{
  OUTLINED_FUNCTION_369();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v4 = *(DerivedStorage + 828);
  if (v4 == v1)
  {
    return 0;
  }

  *(DerivedStorage + 828) = v1;
  return fpfs_PlayQueueCallForEachItem(v0, fpfsi_setAndPerformResourceConservation, &v4);
}

uint64_t fpfs_SetPlayerRole(uint64_t a1, int a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v5 = *(DerivedStorage + 872);
  if (v5 == a2)
  {
    return 0;
  }

  v6 = DerivedStorage;
  *(DerivedStorage + 872) = a2;
  fpfsi_UpdateResourceSpecifierOnResourceArbiter(*(DerivedStorage + 80));
  v7 = &fpfsi_EnsureIFrameModeForScanningPlayer;
  if (a2 != 1 && v5 != 1)
  {
    v7 = fpfsi_EnsureVideoModeForPIPPlayer;
    if (a2 != 2 && v5 != 2)
    {
      return 0;
    }
  }

  return fpfs_PlayQueueCallForEachItem(a1, v7, v6 + 872);
}

void fpfs_setVideoTargetArray(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, __int16 a11, char a12, os_log_type_t type, int a14, CFArrayRef a15, CFArrayRef theArray, uint64_t TypeID, uint64_t a18, uint64_t a19, int a20, int a21, __int128 a22, uint64_t a23, __int128 a24, uint64_t a25, uint64_t a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55)
{
  OUTLINED_FUNCTION_253();
  a53 = v58;
  a54 = v59;
  OUTLINED_FUNCTION_565();
  a42 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  TypeID = 0;
  a18 = 0;
  a19 = 0;
  a15 = 0;
  theArray = 0;
  FVTCount = FigStreamingPlayerCombinedVideoDestinationGetFVTCount(*(DerivedStorage + 376));
  if (dword_1EAF169F0)
  {
    OUTLINED_FUNCTION_225();
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    OUTLINED_FUNCTION_28();
    if (v57)
    {
      if (v55)
      {
        CMBaseObjectGetDerivedStorage();
      }

      a20 = 136315906;
      OUTLINED_FUNCTION_318();
      *(&a22 + 6) = v55;
      HIWORD(a22) = 2082;
      a23 = v63;
      LOWORD(a24) = 2114;
      *(&a24 + 2) = v56;
      OUTLINED_FUNCTION_100();
      OUTLINED_FUNCTION_23();
      _os_log_send_and_compose_impl(v64, v65, v66, v67, v68, v69, 0, v70);
    }

    OUTLINED_FUNCTION_2();
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  *(DerivedStorage + 456) = 1;
  OUTLINED_FUNCTION_68();
  FigStreamingPlayerCombinedVideoDestinationRemoveFVTNotificationListeners(v71, @"ClientRenderOptionChanged", v72, v55);
  OUTLINED_FUNCTION_67();
  FigStreamingPlayerCombinedVideoDestinationRemoveFVTNotificationListeners(v73, @"PreferredDataChannelGroupsChanged", v74, v55);
  if (!FigStreamingPlayerCombinedVideoDestinationSetFVTs(*(DerivedStorage + 376), v56, &a15, &theArray))
  {
    OUTLINED_FUNCTION_68();
    FigStreamingPlayerCombinedVideoDestinationAddFVTNotificationListeners(v75);
    OUTLINED_FUNCTION_67();
    FigStreamingPlayerCombinedVideoDestinationAddFVTNotificationListeners(v76);
    for (i = 0; ; ++i)
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

      ValueAtIndex = CFArrayGetValueAtIndex(theArray, i);
      fpfs_traceVideoTargetEvent(v55, ValueAtIndex, 537526320);
    }

    for (j = 0; ; ++j)
    {
      v81 = a15;
      if (a15)
      {
        v81 = CFArrayGetCount(a15);
      }

      if (j >= v81)
      {
        break;
      }

      v82 = CFArrayGetValueAtIndex(a15, j);
      fpfs_traceVideoTargetEvent(v55, v82, 537526316);
    }

    if (theArray && CFArrayGetCount(theArray) > 0)
    {
      FigStreamingPlayerCombinedVideoDestinationSendEmptyConfigToGivenFVTsImmediately(theArray);
    }

    fpfsi_ensureLayerSyncForItem(*(DerivedStorage + 80));
    v83 = OUTLINED_FUNCTION_270();
    fpfs_PlayQueueCallForEachItem(v83, v84, v85);
    v86 = OUTLINED_FUNCTION_270();
    fpfs_PlayQueueCallForEachItem(v86, v87, v88);
    v89 = OUTLINED_FUNCTION_270();
    fpfs_PlayQueueCallForEachItem(v89, v90, v91);
    v92 = OUTLINED_FUNCTION_270();
    fpfs_PlayQueueCallForEachItem(v92, v93, v94);
    TypeID = FigVideoTargetGetTypeID();
    a18 = FigStreamingPlayerCombinedVideoDestinationGetFVTCount(*(DerivedStorage + 376)) - FVTCount;
    fpfs_PlayQueueCallForEachItem(v55, fpfsi_handleVideoOutputsChanged, &TypeID);
  }

  if (theArray)
  {
    CFRelease(theArray);
  }

  if (a15)
  {
    CFRelease(a15);
  }

  OUTLINED_FUNCTION_252();
}

void fpfs_FetchClientBundleIdentifierFromAudioSessionDispatch(const void **a1)
{
  v2 = *a1;
  v3 = a1[1];
  FigGetAllocatorForMedia();
  if (v3)
  {
    OUTLINED_FUNCTION_398();
    v4 = *(CMBaseObjectGetVTable() + 16);
    if (v4 && *(v4 + 48))
    {
      v5 = OUTLINED_FUNCTION_444();
      v6(v5);
    }

    CFRelease(v3);
  }

  if (v2)
  {
    CFRelease(v2);
  }

  free(a1);
}

void fpfs_CreatePlaybackItemFromAsset()
{
  OUTLINED_FUNCTION_649();
  v161 = *MEMORY[0x1E69E9840];
  if (!v1)
  {
    OUTLINED_FUNCTION_111();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v120, v122, v126);
    goto LABEL_111;
  }

  v3 = v2;
  v4 = v1;
  v5 = v0;
  CFGetAllocator(v1);
  OUTLINED_FUNCTION_576();
  FigAssetGetCMBaseObject();
  v7 = v6;
  if (*(*(CMBaseObjectGetVTable() + 8) + 48))
  {
    v8 = OUTLINED_FUNCTION_620();
    if (!v9(v8))
    {
      DerivedStorage = CMBaseObjectGetDerivedStorage();
      v137 = 0;
      value = 0;
      v11 = gNextItemOrdinal++;
      cf = 0;
      theString = 0;
      v133 = 0;
      v134 = 0;
      v132 = 0;
      memset(v160, 0, 80);
      memset(buffer, 0, sizeof(buffer));
      if (!v5 || !v3)
      {
        OUTLINED_FUNCTION_111();
        FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v120, v122, v126);
        v33 = v32;
LABEL_109:
        if (!v33)
        {
          FigStartForwardingMediaServicesProcessDeathNotification();
        }

        goto LABEL_111;
      }

      v131 = DerivedStorage;
      v12 = CMBaseObjectGetDerivedStorage();
      OUTLINED_FUNCTION_180(v12);
      FigSimpleMutexLock();
      ++*(v7 + 8);
      CFGetAllocator(v5);
      FigPlaybackItemGetClassID();
      CMDerivedObjectCreate();
      v13 = value;
      v14 = MEMORY[0x1E695FF40];
      if (!value)
      {
        OUTLINED_FUNCTION_120();
        FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v120, v122, v126);
        v33 = v118;
LABEL_101:
        if (v137)
        {
          CFRelease(v137);
        }

        if (*MEMORY[0x1E695FF50])
        {
          v108 = fig_log_handle();
          if (os_signpost_enabled(v108))
          {
            *buf = 134218752;
            v152 = v5;
            v153 = 2048;
            v154 = value;
            v155 = 2048;
            v156 = v11;
            v157 = 2048;
            v158 = v33;
            OUTLINED_FUNCTION_546();
            _os_signpost_emit_with_name_impl(v109, v108, OS_SIGNPOST_INTERVAL_END, v110, v111, v112, buf, 0x2Au);
          }
        }

        if (*MEMORY[0x1E695FF40])
        {
          v125 = value;
          OUTLINED_FUNCTION_439();
          fig_gm_ktrace_wrapper(v113, v114, v115, v116, 0, 0, v117, v5, v125, v11, v33);
        }

        fpfs_UnlockAndPostNotificationsWithCaller(v5);
        goto LABEL_109;
      }

      if (*MEMORY[0x1E695FF50])
      {
        v15 = fig_log_handle();
        v16 = os_signpost_enabled(v15);
        v13 = value;
        if (v16)
        {
          *buf = 134218496;
          v152 = v5;
          v153 = 2048;
          v154 = value;
          v155 = 2048;
          v156 = v11;
          OUTLINED_FUNCTION_546();
          _os_signpost_emit_with_name_impl(v17, v15, OS_SIGNPOST_INTERVAL_BEGIN, v18, v19, v20, buf, 0x20u);
          v13 = value;
        }
      }

      v129 = v3;
      if (*v14)
      {
        v123 = v13;
        OUTLINED_FUNCTION_296();
        fig_gm_ktrace_wrapper(v21, v22, v23, 0, 0, 3, v24, v5, v123, v11);
      }

      v25 = v131;
      v26 = CMBaseObjectGetDerivedStorage();
      *v26 = v5;
      v27 = FigSimpleMutexCreate();
      *(v26 + 8) = v27;
      if (!v27)
      {
        v33 = -12786;
        goto LABEL_119;
      }

      FigGetAllocatorForMedia();
      started = FigRetainProxyCreate();
      if (started || (*(v26 + 160) = v11, (started = FigStartForwardingMediaServicesProcessDeathNotification()) != 0))
      {
        v33 = started;
        goto LABEL_119;
      }

      *(v26 + 3096) = 0;
      if (FigCFDictionaryGetStringIfPresent())
      {
        CFStringGetCString(theString, (v26 + 3096), 10, 0x600u);
      }

      if (dword_1EAF169F0)
      {
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
        OUTLINED_FUNCTION_221();
        if (v11)
        {
          v30 = CMBaseObjectGetDerivedStorage() + 888;
          if (value)
          {
            v31 = (CMBaseObjectGetDerivedStorage() + 3096);
          }

          else
          {
            v31 = "";
          }

          v139 = 136316418;
          v140 = "fpfs_CreatePlaybackItem";
          v141 = 2048;
          v142 = v5;
          v143 = 2082;
          v144 = v30;
          v145 = 2048;
          v146 = value;
          v147 = 2082;
          v148 = v31;
          v149 = 1024;
          v150 = v11;
          OUTLINED_FUNCTION_117();
          v34 = OUTLINED_FUNCTION_25();
          _os_log_send_and_compose_impl(v34, v35, v36, v37, v38, os_log_and_send_and_compose_flags_and_os_log_type, 0, v39);
        }

        OUTLINED_FUNCTION_7();
        OUTLINED_FUNCTION_467(v40, v41, v42, v43, v44);
        v25 = v131;
      }

      if (FigCFDictionaryGetValueIfPresent())
      {
        v45 = cf;
        if (cf)
        {
          v45 = CFRetain(cf);
        }

        *(v26 + 3392) = v45;
      }

      if (FigCFDictionaryGetValueIfPresent())
      {
        v46 = v134;
        if (v134)
        {
          v46 = CFRetain(v134);
        }

        *(v26 + 3216) = v46;
      }

      if (FigCFDictionaryGetValueIfPresent())
      {
        *(v26 + 3224) = *MEMORY[0x1E695E4D0] == v133;
      }

      FigCFDictionaryGetStringValue();
      AllocatorForMedia = FigGetAllocatorForMedia();
      FigPropertyStorageCreate(AllocatorForMedia, (v26 + 168));
      v128 = v11;
      if (FigIsItOKToLogURLs())
      {
        FPSupport_GetAssetDoNotLogURLs(v4);
        OUTLINED_FUNCTION_786();
      }

      else
      {
        v48 = 0;
      }

      *(v26 + 25) = v48;
      *(v26 + 32) = CFRetain(v4);
      FigGetAllocatorForMedia();
      OUTLINED_FUNCTION_611();
      FigAssetGetCMBaseObject();
      if (*(*(CMBaseObjectGetVTable() + 8) + 48))
      {
        v49 = OUTLINED_FUNCTION_620();
        v50(v49);
      }

      v51 = FigGetAllocatorForMedia();
      OnlyTimebase = FPSTimelineConverterCreate(v51, (v26 + 3376));
      if (!OnlyTimebase)
      {
        *(v26 + 869) = 1;
        *(v26 + 871) = 0;
        v53 = *(v25 + 536);
        if (v53)
        {
          *(v26 + 870) = FPSupport_CopyAndCheckClientOnAllowListForPrefDomainKey(v53, 1, 0x1F0B2FBF8, &v132);
        }

        if (v132)
        {
          CFRelease(v132);
        }

        FigGetAllocatorForMedia();
        OUTLINED_FUNCTION_611();
        FigAssetGetCMBaseObject();
        if (*(*(CMBaseObjectGetVTable() + 8) + 48))
        {
          v54 = OUTLINED_FUNCTION_516();
          v55(v54);
        }

        *(v26 + 1592) = 0;
        *(v26 + 1600) = v26 + 1592;
        fpfsi_ResetPlaybackItem(value);
        if (*(v26 + 400))
        {
          DataValue = FigCFDictionaryGetDataValue();
          if (DataValue)
          {
            v57 = FigCFHTTPCopyClientProcessName(DataValue);
            if (v57)
            {
              v58 = v57;
              CFStringGetCString(v57, buffer, 128, 0x8000100u);
              CFRelease(v58);
            }
          }
        }

        if (value)
        {
          v59 = (CMBaseObjectGetDerivedStorage() + 3096);
        }

        else
        {
          v59 = "";
        }

        snprintf(v160, 0x50uLL, "com.apple.coremedia.fpfs.timer(%s).%s", buffer, v59);
        v60 = FigDispatchQueueCreateWithPriority();
        *(v26 + 600) = v60;
        if (!v60)
        {
          goto LABEL_118;
        }

        *(v26 + 1024) = 0;
        *(v26 + 1032) = v26 + 1024;
        *(v26 + 1056) = 0;
        *(v26 + 1064) = v26 + 1056;
        *(v26 + 1040) = 0;
        *(v26 + 1048) = v26 + 1040;
        v61 = CFGetAllocator(v5);
        Mutable = CFArrayCreateMutable(v61, 0, MEMORY[0x1E695E9C0]);
        *(v26 + 1920) = Mutable;
        if (!Mutable)
        {
          goto LABEL_118;
        }

        v63 = FigGetAllocatorForMedia();
        OnlyTimebase = FigStreamingItemCombinedVideoDestinationCreate(v63, 0, (v26 + 656));
        if (!OnlyTimebase)
        {
          *(v26 + 2912) = 0;
          *(v26 + 2920) = v26 + 2912;
          CelestialGetStreamingBackBufferDuration();
          *(v26 + 2296) = v64;
          *(v26 + 2300) = v64;
          *(v26 + 2304) = -1;
          *(v26 + 1840) = 1065353216;
          *(v26 + 2512) = 0u;
          v127 = *MEMORY[0x1E695F060];
          *(v26 + 2528) = *MEMORY[0x1E695F060];
          *(v26 + 2648) = -1;
          *(v26 + 2120) = 0;
          *(v26 + 1960) = 0u;
          *(v26 + 1728) = -1;
          *(v26 + 2884) = -1;
          *(v26 + 2800) = 0;
          *(v26 + 2656) = 0u;
          *(v26 + 2672) = 0u;
          v65 = MEMORY[0x1E6960C70];
          *(v26 + 2688) = 0;
          v130 = *v65;
          v66 = *v65;
          v67 = *(v65 + 2);
          *(v26 + 2720) = v67;
          *(v26 + 2704) = v66;
          v68 = MEMORY[0x1E6960C80];
          v69 = *MEMORY[0x1E6960C80];
          *(v26 + 2728) = *MEMORY[0x1E6960C80];
          v70 = *(v68 + 16);
          *(v26 + 2744) = v70;
          *(v26 + 2752) = v66;
          *(v26 + 2768) = v67;
          *(v26 + 2776) = v69;
          *(v26 + 2792) = v70;
          *(v26 + 2852) = -1;
          *(v26 + 2824) = -1;
          *(v26 + 2832) = 0;
          *(v26 + 2840) = 0;
          *(v26 + 2844) = 0;
          *(v26 + 2848) = 0;
          *(v26 + 2868) = 0;
          *(v26 + 2696) = 0;
          *(v26 + 2808) = 0u;
          *(v26 + 2880) = 0;
          *(v26 + 2896) = 0;
          *(v26 + 1712) = 0;
          *(v26 + 557) = 1;
          *(v26 + 2892) = -1;
          *(v26 + 560) = 0;
          *(v26 + 564) = 1;
          *(v26 + 848) = 0;
          *(v26 + 856) = CFRetain(@"TimeDomain");
          *(v26 + 864) = 1065353216;
          *(v26 + 844) = 257;
          *(v26 + 1352) = v130;
          *(v26 + 1368) = v67;
          *(v26 + 1376) = v130;
          *(v26 + 1392) = v67;
          *(v26 + 2544) = 0;
          *(v26 + 2224) = 0;
          *(v26 + 3272) = v130;
          *(v26 + 3288) = v67;
          v71 = *(v26 + 2560);
          if (v71)
          {
            CFRelease(v71);
            *(v26 + 2560) = 0;
          }

          FigGetAllocatorForMedia();
          OUTLINED_FUNCTION_611();
          FigAssetGetCMBaseObject();
          if (*(*(CMBaseObjectGetVTable() + 8) + 48))
          {
            v72 = OUTLINED_FUNCTION_516();
            v73(v72);
          }

          *(v26 + 2560) = 0;
          v74 = (v26 + 2568);
          FigReportingAgentCreateFromAsset(*(v26 + 32));
          if (*(v26 + 2568))
          {
            if (*(*(CMBaseObjectGetVTable() + 16) + 56))
            {
              OUTLINED_FUNCTION_396();
              OUTLINED_FUNCTION_446();
              v75();
            }

            FigGetAllocatorForMedia();
            OUTLINED_FUNCTION_611();
            FigAssetGetCMBaseObject();
            if (*(*(CMBaseObjectGetVTable() + 8) + 48))
            {
              v76 = OUTLINED_FUNCTION_516();
              v77(v76);
            }

            if (*v74 && *(*(CMBaseObjectGetVTable() + 16) + 56))
            {
              OUTLINED_FUNCTION_396();
              OUTLINED_FUNCTION_504();
              v78();
            }
          }

          *(v26 + 2592) = 0;
          *(v26 + 2040) = CFAbsoluteTimeGetCurrent();
          if (FigRenderedLegibleOutputManagerIsSupported())
          {
            v79 = FigGetAllocatorForMedia();
            v33 = FigLegibleOutputManagerCreate(v79, &fpfs_postLegibleOutputNotification, fpfs_postLegibleOutputFlushNotification, *(v26 + 16), (v26 + 1872));
            OUTLINED_FUNCTION_757();
            FigLegibleOutputManagerSetCaptionPipelineStrategy(v80, v81);
            OUTLINED_FUNCTION_757();
            FigLegibleOutputManagerSetCaptionRenderingStrategy(v82, v83);
            if (v33)
            {
              goto LABEL_114;
            }
          }

          OnlyTimebase = FigMetadataStorageCreate(&v137);
          if (!OnlyTimebase)
          {
            v84 = v137;
            *(v26 + 1888) = v137;
            v137 = 0;
            FPSupport_SetMetadataOutputCallbacks(v84, fpfsi_postMetadataOutputChanged, &fpfsi_postMetadataOutputFlushed, *(v26 + 16));
            v85 = FigSimpleMutexCreate();
            *(v26 + 680) = v85;
            if (v85)
            {
              v86 = *(v26 + 1872);
              if (v86)
              {
                FigLegibleOutputManagerSetNonForcedEnabledForMediaType(v86, 1668047728, *(v25 + 210));
              }

              if (CelestialGetSystemMemorySize() >= 0x10000001)
              {
                v87 = 0x2000000;
              }

              else
              {
                v87 = 0x1000000;
              }

              OUTLINED_FUNCTION_494();
              CFPreferenceNumberWithDefault = FigGetCFPreferenceNumberWithDefault();
              v89 = CFPreferenceNumberWithDefault << 20;
              if (!CFPreferenceNumberWithDefault)
              {
                v89 = v87;
              }

              *(v26 + 536) = v89;
              FigGetCFPreferenceOrOptionDoubleWithDefault();
              v91 = v90;
              if (v91 < 0.0)
              {
                v91 = 3.0;
              }

              *(v26 + 904) = v91;
              if (FigRECGCommandsContextCreate())
              {
                CMNotificationCenterGetDefaultLocalCenter();
                FigRECGCommandsContextCreate();
                OUTLINED_FUNCTION_186();
                FigNotificationCenterAddWeakListener();
              }

              OnlyTimebase = fpfs_EstablishTimebase(value);
              if (!OnlyTimebase)
              {
                FigGetAllocatorForMedia();
                OnlyTimebase = CMTimebaseCreateReadOnlyTimebase();
                if (!OnlyTimebase)
                {
                  if (*v74 && *(*(CMBaseObjectGetVTable() + 8) + 56))
                  {
                    v92 = OUTLINED_FUNCTION_516();
                    v93(v92);
                  }

                  *(v26 + 592) = 256;
                  *(v26 + 3000) = 0;
                  *(v26 + 3048) = v130;
                  *(v26 + 3064) = v67;
                  *(v26 + 3208) = FPSupport_InitialSeekIDForSource(1);
                  *(v26 + 3432) = 0x7FFFFFFFFFFFFFFFLL;
                  *(v26 + 3440) = 0u;
                  OUTLINED_FUNCTION_494();
                  FigGetCFPreferenceNumberWithDefault();
                  OUTLINED_FUNCTION_381();
                  *(v26 + 554) = v94;
                  OUTLINED_FUNCTION_494();
                  FigGetCFPreferenceNumberWithDefault();
                  OUTLINED_FUNCTION_381();
                  *(v26 + 555) = v95;
                  OUTLINED_FUNCTION_494();
                  FigGetCFPreferenceNumberWithDefault();
                  OUTLINED_FUNCTION_381();
                  *(v26 + 556) = v96;
                  OUTLINED_FUNCTION_494();
                  FigGetCFPreferenceNumberWithDefault();
                  OUTLINED_FUNCTION_381();
                  *(v26 + 465) = v97;
                  *(v26 + 768) = v127;
                  v98 = FigSimpleMutexCreate();
                  *(v26 + 784) = v98;
                  if (v98)
                  {
                    *(v26 + 3200) = 257;
                    *(v26 + 3256) = 1;
                    fpfsi_UpdateHighWaterSecs();
                    if ((*(v25 + 906) || *(v25 + 872) == 1) && *v74 && *(*(CMBaseObjectGetVTable() + 16) + 48))
                    {
                      OUTLINED_FUNCTION_717();
                      v99();
                    }

                    FigCFDictionaryGetValueIfPresent();
                    *(v26 + 3400) = 0;
                    v11 = v128;
                    FigGetAllocatorForMedia();
                    FigMetricEventTimelineCreate();
                    v100 = FigGetAllocatorForMedia();
                    FigMetricEventPlaybackSummarySubscriberCreate(v100, *(v26 + 3400), (v26 + 3408));
                    v101 = FigGetAllocatorForMedia();
                    FigMetricEventInitialLikelyToKeepUpSubscriberCreate(v101, *(v26 + 3400), (v26 + 3416), v102, v103, v104, v105, v106);
                    CFSetAddValue(*(v131 + 64), value);
                    if (*(v26 + 2568) && *(*(CMBaseObjectGetVTable() + 16) + 56))
                    {
                      OUTLINED_FUNCTION_446();
                      v107();
                    }

                    fpfsi_CheckSpeedRampCompatibility(value);
                    v33 = 0;
                    *v129 = value;
                    value = 0;
                    goto LABEL_101;
                  }

                  goto LABEL_118;
                }
              }

              goto LABEL_113;
            }

LABEL_118:
            v11 = v128;
            OUTLINED_FUNCTION_120();
            FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v121, v124, v126);
            v33 = v119;
LABEL_119:
            if (value)
            {
              CFRelease(value);
            }

            goto LABEL_101;
          }
        }
      }

LABEL_113:
      v33 = OnlyTimebase;
LABEL_114:
      v11 = v128;
      goto LABEL_119;
    }
  }

LABEL_111:
  OUTLINED_FUNCTION_651();
}

uint64_t fpfs_RemoveExternalStartupTask()
{
  OUTLINED_FUNCTION_187();
  CMBaseObjectGetDerivedStorage();
  if (!v0)
  {
    return 0;
  }

  v3 = OUTLINED_FUNCTION_297();
  CFRetain(v3);
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  OUTLINED_FUNCTION_294(DerivedStorage);
  FigSimpleMutexLock();
  OUTLINED_FUNCTION_224();
  if (*(v2 + 52))
  {
    OUTLINED_FUNCTION_243();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v12, v13, v14);
    v9 = v11;
  }

  else
  {
    Count = CFArrayGetCount(*(v2 + 944));
    v6 = OUTLINED_FUNCTION_455(Count);
    if (v6 != -1)
    {
      CFArrayRemoveValueAtIndex(*(v2 + 944), v6);
      v7 = CFArrayGetCount(*(v2 + 952));
      v8 = OUTLINED_FUNCTION_455(v7);
      if (v8 != -1)
      {
        CFArrayRemoveValueAtIndex(*(v2 + 952), v8);
      }

      CMNotificationCenterGetDefaultLocalCenter();
      OUTLINED_FUNCTION_272();
      FigNotificationCenterRemoveWeakListener();
    }

    v9 = 0;
  }

  fpfs_UnlockAndPostNotificationsWithCaller(v1);
  CFRelease(v0);
  return v9;
}

void fpfs_DuckVolume()
{
  OUTLINED_FUNCTION_659();
  OUTLINED_FUNCTION_369();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (dword_1EAF169F0)
  {
    OUTLINED_FUNCTION_147();
    v14 = OUTLINED_FUNCTION_102(v6, v7, v8, v9, v10, v11, v12, v13, v38, v40, v42, *v44, v44[2], v44[3], v44[4]);
    OUTLINED_FUNCTION_130(v14, v15, v16, v17, v18, v19, v20, v21, v39, v41, v43, v45, v46, v47, v48);
    OUTLINED_FUNCTION_28();
    if (v3)
    {
      if (v0)
      {
        CMBaseObjectGetDerivedStorage();
      }

      OUTLINED_FUNCTION_114();
      OUTLINED_FUNCTION_407();
      OUTLINED_FUNCTION_39();
      OUTLINED_FUNCTION_23();
      _os_log_send_and_compose_impl(v22, v23, v24, v25, v26, v27, v2, v28);
      OUTLINED_FUNCTION_408();
    }

    OUTLINED_FUNCTION_2();
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v29 = CMBaseObjectGetDerivedStorage();
  OUTLINED_FUNCTION_294(v29);
  FigSimpleMutexLock();
  OUTLINED_FUNCTION_224();
  if (*(DerivedStorage + 52))
  {
    OUTLINED_FUNCTION_243();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v38, v40, v42);
    goto LABEL_22;
  }

  if (!v1)
  {
    v35 = 0;
    if (!*(DerivedStorage + 512))
    {
      goto LABEL_22;
    }

    goto LABEL_17;
  }

  OUTLINED_FUNCTION_484();
  if (v32 != v33 && v30 == 0)
  {
    *(DerivedStorage + 516) = v31;
    v35 = 1;
LABEL_17:
    *(DerivedStorage + 512) = v35;
    v36 = *(DerivedStorage + 80);
    if (v36)
    {
      fpfsi_applySoftwareVolume(v36, 2);
      if (v1)
      {
        if (v4 > 0.0 && !v37)
        {
          usleep((v4 * 1000.0 * 1000.0));
        }
      }
    }
  }

LABEL_22:
  fpfs_UnlockAndPostNotificationsWithCaller(v0);
  OUTLINED_FUNCTION_628();
}

void fpfs_enqueuePrerollWasCancelledNotificationIfNeeded_cold_2()
{
  OUTLINED_FUNCTION_369();
  AllocatorForMedia = FigGetAllocatorForMedia();
  Mutable = CFDictionaryCreateMutable(AllocatorForMedia, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (!FigCFDictionarySetInt32())
  {
    fpfs_EnqueueNotification(*v1, @"PrerollWasCancelled", *v1, Mutable);
    *v0 = 0;
  }

  if (Mutable)
  {

    CFRelease(Mutable);
  }
}

BOOL fpfsi_scheduleFVTTransitionsForItem_cold_1(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  FigGetAllocatorForMedia();
  OUTLINED_FUNCTION_179();
  FigRenderPipelineGetFigBaseObject();
  if (*(*(CMBaseObjectGetVTable() + 8) + 48))
  {
    v3 = OUTLINED_FUNCTION_188();
    v4(v3);
  }

  v5 = FigCFEqual();
  return OUTLINED_FUNCTION_616(v5);
}

uint64_t fpfs_canCrossfade_cold_1()
{
  OUTLINED_FUNCTION_207();
  result = fpfs_WantAudioHardwarePassthroughForTrack(v3, 0);
  v5 = 0;
  if (!result)
  {
    v6 = OUTLINED_FUNCTION_265();
    result = fpfs_WantAudioHardwarePassthroughForTrack(v6, v7);
    if (!result)
    {
      CMBaseObjectGetDerivedStorage();
      result = CMBaseObjectGetDerivedStorage();
      if (!*(result + 568) || (result = CMAudioFormatDescriptionIsAtmos(*(v2 + 56)), !result) && (result = CMAudioFormatDescriptionIsAtmos(*(v1 + 56)), !result))
      {
        v5 = 1;
      }
    }
  }

  *v0 = v5;
  return result;
}

void fpfs_RenderBuffer_cold_1(opaqueCMSampleBuffer *a1, void *a2)
{
  memset(&v10, 0, sizeof(v10));
  CMSampleBufferGetOutputDuration(&v10, a1);
  v11 = *&v10.value;
  OUTLINED_FUNCTION_269();
  v4 = CMTimeGetSeconds(v3) * 1000.0;
  v5 = v4;
  v6 = a2[430];
  if (v6 <= v4)
  {
    v6 = v4;
  }

  a2[430] = v6;
  v7 = a2[429];
  if (v7 >= v5)
  {
    v7 = v4;
  }

  a2[429] = v7;
  if (a2[431] != v5)
  {
    a2[431] = v5;
  }

  v8 = a2[321];
  if (v8)
  {
    v9 = *(*(CMBaseObjectGetVTable() + 16) + 40);
    if (v9)
    {
      v9(v8, @"playerStats", 0x1F0B43A78, v5);
    }
  }
}

void fpfs_RenderBuffer_cold_2(uint64_t a1)
{
  OUTLINED_FUNCTION_806(a1);
  fpfs_setPropertyOnPrimaryAndAuxRenderPipelines();
  CFRelease(v1);
}

void fpfs_SetAlternateWithContext_cold_1()
{
  OUTLINED_FUNCTION_261();
  idx = 0;
  AllocatorForMedia = FigGetAllocatorForMedia();
  Count = CFArrayGetCount(*(v0 + 1768));
  MutableCopy = CFArrayCreateMutableCopy(AllocatorForMedia, Count, *(v0 + 1768));
  *v1 = MutableCopy;
  if (MutableCopy)
  {
    v5 = MutableCopy;
    v6 = OUTLINED_FUNCTION_563();
    fpfs_FindMediaTypeInMediaArray(v5, v6, &idx);
    CFArrayRemoveValueAtIndex(v5, idx);
    v7 = *(v0 + 1800);
    if (v7)
    {
      CFArrayAppendValue(v5, v7);
    }
  }
}

BOOL fpfs_SetAlternateWithContext_cold_2(uint64_t a1, uint64_t a2, uint64_t *a3, _DWORD *a4)
{
  OUTLINED_FUNCTION_369();
  AllocatorForMedia = FigGetAllocatorForMedia();
  v9 = FigAlternateVideoLayoutPinningFilterCreate(AllocatorForMedia, v4, v5);
  *a4 = v9;
  v10 = *v5;
  if (!v9)
  {
    FigAlternateSelectionBossAddFilter(*a3, v10);
    v10 = *v5;
  }

  if (v10)
  {
    CFRelease(v10);
  }

  return v9 == 0;
}

uint64_t fpfs_FormatsAreCompatible_cold_1(int a1, void *a2)
{
  if (a1)
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    v4 = 1;
    if (a1 == 1633889587 && *(DerivedStorage + 536))
    {
      OUTLINED_FUNCTION_689();
      if (v5)
      {
        v4 = -1;
      }

      else
      {
        v4 = 0;
      }
    }
  }

  else
  {
    v4 = 1;
  }

  return v4 & 1;
}

uint64_t fpfs_PullNextCallback_cold_1()
{
  OUTLINED_FUNCTION_349();
  fpfsi_UpdateSourceFormatInfoIfNecessary(v4);
  fpfsi_MakeNextItemReadyForInspectionIfItemEndedOrBeyondFwdEnd(v3);
  FigPlayerResourceArbiterAssignReportingAgentForConsumer(*v2, *(v1 + 928), *v0);
  return fpfsi_UpdateResourceSpecifierOnResourceArbiter(v3);
}

void fpfsi_ResumeAllWaitingVideoTracks_cold_1(CMTime *a1, CMSampleBufferRef *a2)
{
  CMSampleBufferGetOutputPresentationTimeStamp(&v4, *a2);
  a1[12] = v4;
  if (!a1[4].epoch)
  {
    fpfs_PreallocateVideoRendering(a1);
  }

  OUTLINED_FUNCTION_198();
  fpfs_CheckVideoSyncQueue();
  if (v3)
  {
    fpfs_FinishVideoSync();
  }
}

void fpfsi_ConfigurePlaybackMonitorForBandwidthCap_cold_1(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  OUTLINED_FUNCTION_400();
  v6 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt32Type, v3);
  v7 = *(v4 + 96);
  if (v7)
  {
    v8 = *(*(CMBaseObjectGetVTable() + 8) + 56);
    if (!v8)
    {
      LODWORD(v7) = -12782;
      if (!v6)
      {
        goto LABEL_6;
      }

      goto LABEL_5;
    }

    LODWORD(v7) = v8(v7, @"AfmfpbProperty_BandwidthCap", v6);
  }

  if (v6)
  {
LABEL_5:
    CFRelease(v6);
  }

LABEL_6:
  if (*(v4 + 2568) && *(*(CMBaseObjectGetVTable() + 16) + 56))
  {
    OUTLINED_FUNCTION_446();
    v9();
  }

  *a3 = v7;
}

void fpfsi_setPlaybackRateMonitorPendingSeekTime_cold_1(uint64_t a1, CFTypeRef cf)
{
  if (*(a1 + 96) && *(*(CMBaseObjectGetVTable() + 8) + 56))
  {
    v3 = OUTLINED_FUNCTION_228();
    v4(v3);
  }

  CFRelease(cf);
}

uint64_t fpfs_StopPlaybackByStalledTrack_cold_2(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  OUTLINED_FUNCTION_807();
  FigGetAllocatorForMedia();
  OUTLINED_FUNCTION_179();
  FigBytePumpGetFigBaseObject();
  if (*(*(CMBaseObjectGetVTable() + 8) + 48))
  {
    v5 = OUTLINED_FUNCTION_188();
    v6(v5);
  }

  result = *a3;
  if (*a3)
  {
    OUTLINED_FUNCTION_681();
    result = CFNumberGetValue(v8, v9, v10);
    if (*v3)
    {
      VTable = CMBaseObjectGetVTable();
      v12 = *(VTable + 16);
      result = VTable + 16;
      if (*(v12 + 40))
      {
        v13 = OUTLINED_FUNCTION_626();
        return v14(v13);
      }
    }
  }

  return result;
}

BOOL fpfs_getPlaybackState_cold_1(uint64_t a1)
{
  fpfs_GetNextTimeToPlay(a1, 0, v4);
  v2 = fpfsi_atOrAfterTimeToPausePlayback(a1);
  return OUTLINED_FUNCTION_616(v2);
}

void fpfs_FreeDeadTracks_cold_1(const __CFAllocator *a1, void *valuePtr, const void *a3)
{
  if (CFNumberCreate(a1, kCFNumberSInt32Type, valuePtr))
  {
    v5 = OUTLINED_FUNCTION_297();
    CFDictionaryRemoveValue(v5, v3);
    v6 = OUTLINED_FUNCTION_228();
    FigPropertyStorageSetValue(v6, v7, v8);
    CFRelease(v3);
  }

  CFRelease(a3);
}

void fpfs_BytePumpFn_cold_3(uint64_t a1, uint64_t a2, int a3, int a4, int a5, int a6, int a7, int a8)
{
  NotificationPayloadForProperties = fpfs_CreateNotificationPayloadForProperties(a1, a2, a3, a4, a5, a6, a7, a8, @"CurrentDuration", 0);
  v9 = OUTLINED_FUNCTION_308();
  fpfs_EnqueueNotification(v9, v10, v11, NotificationPayloadForProperties);
  if (NotificationPayloadForProperties)
  {
    CFRelease(NotificationPayloadForProperties);
  }
}

void fpfs_BytePumpFn_cold_4(uint64_t a1)
{
  OUTLINED_FUNCTION_806(a1);
  CMBaseObjectGetDerivedStorage();
  fpfs_StopPlayingItem();
}

void fpfs_BytePumpFn_cold_5(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_388(a1 + 1448);
  if (fpfsi_PlaybackHasBufferedBeyondTime())
  {
    fpfs_SignalImageQueueGaugeEnqueueingCompleteAfterClampTime(a2);
  }
}

void fpfs_BytePumpFn_cold_6()
{
  OUTLINED_FUNCTION_369();
  memset(&v3, 0, sizeof(v3));
  fpfsi_LastNonSparseSampleEnd(v2, &v3);
  if (v3.flags)
  {
    v1[20] = v3;
    fpfsi_EnqueueEndTimeChangedNotification(v0);
  }
}

uint64_t fpfs_EndCurrentDiscontinuity_cold_1(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  OUTLINED_FUNCTION_400();
  OUTLINED_FUNCTION_385();
  fpfs_FinishAudioSyncAndStart();
  v4 = 1;
  if (v5 != -16042)
  {
    v7 = OUTLINED_FUNCTION_171();
    if (fpfsi_isTrackInLists(v7, v8, 1u))
    {
      if (*a3 == 6)
      {
        v4 = -1;
      }

      else
      {
        v4 = 0;
      }
    }
  }

  return v4 & 1;
}

uint64_t fpfs_NewTrackNote_cold_2(int a1, uint64_t *a2)
{
  if (a1 != 1936684398)
  {
    v4 = 1;
    return v4 & 1;
  }

  v2 = *a2;
  if (!*a2)
  {
    goto LABEL_11;
  }

  if (!FigAlternateIsIFrameOnly(*a2))
  {
    if (FigAlternateHasVideo(v2))
    {
      v3 = FigAlternateHasAudio(v2) == 0;
      goto LABEL_8;
    }

LABEL_11:
    v4 = 1;
    return v4 & 1;
  }

  v3 = 1;
LABEL_8:
  if (!dword_1EAF169F0)
  {
    v3 = 0;
  }

  v4 = v3 - 1;
  return v4 & 1;
}

uint64_t fpfs_NewTrackNote_cold_3(uint64_t a1)
{
  v1 = *(a1 + 1680);
  if (v1)
  {
    if (FigAlternateIsAudioOnly(v1))
    {
      v2 = dword_1EAF169F0 == 0;
    }

    else
    {
      v2 = 1;
    }

    v3 = v2;
    v4 = v3 << 31 >> 31;
  }

  else
  {
    LOBYTE(v4) = 1;
  }

  return v4 & 1;
}

void fpfs_PreallocateVideoRendering_cold_1(uint64_t a1)
{
  OUTLINED_FUNCTION_806(a1);
  fpfs_EnsureRenderChainForTrack();
  if (!v1)
  {
    OUTLINED_FUNCTION_713();
    FigRenderPipelineGetFigBaseObject();
    v3 = v2;
    v4 = *(*(CMBaseObjectGetVTable() + 8) + 56);
    if (v4)
    {
      v4(v3, @"Suspended", *MEMORY[0x1E695E4C0]);
    }

    fpfs_setPropertyOnPrimaryAndAuxRenderPipelines();
  }
}

void fpfs_endTimerProc_cold_2(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_107(MEMORY[0x1E6960C70]);
  fpfs_scheduleForwardEndTimeForTrack();
  if (v3)
  {
    fpfs_EndTrackPlayback(a2);
  }
}

uint64_t fpfsi_CopyProperty_cold_4()
{
  OUTLINED_FUNCTION_207();
  CurrentAudioPersistentIDFromMediaOption = fpfsi_GetCurrentAudioPersistentIDFromMediaOption(v3);
  SpecializedAudioChannelUsage = FigAlternateGetSpecializedAudioChannelUsage(*(v1 + 456), CurrentAudioPersistentIDFromMediaOption);
  result = fpfsi_GetSpatializationConfiguration(v2);
  v7 = SpecializedAudioChannelUsage == 3 || result == 1;
  v8 = MEMORY[0x1E695E4C0];
  if (v7)
  {
    v8 = MEMORY[0x1E695E4D0];
  }

  *v0 = v8;
  return result;
}

BOOL fpfsi_SeekToDateWithID_cold_2(int *a1)
{
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v4, v5, vars0);
  *a1 = v2;
  return OUTLINED_FUNCTION_616(v2);
}

void fpfsi_CheckSpeedRampCompatibility_cold_1()
{
  OUTLINED_FUNCTION_471();
  cf = 0;
  FPSTimelineConverterCopyProperty(*(v0 + 3376), @"SpeedRampData", *MEMORY[0x1E695E480], &cf);
  if (cf)
  {
    v1 = OUTLINED_FUNCTION_177();
    fpfs_StopPlayingItemWithOSStatus(v1, v2, 4294951598);
    CFRelease(cf);
  }
}

void fpfs_enqueuePrerollDidCompleteNotificationIfNeeded_cold_1()
{
  OUTLINED_FUNCTION_369();
  AllocatorForMedia = FigGetAllocatorForMedia();
  Mutable = CFDictionaryCreateMutable(AllocatorForMedia, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (!FigCFDictionarySetInt32())
  {
    fpfs_EnqueueNotification(*v1, @"PrerollDidComplete", *v1, Mutable);
    *v0 = 0;
  }

  if (Mutable)
  {

    CFRelease(Mutable);
  }
}

const void *fpfs_handleSetProperty_cold_18()
{
  OUTLINED_FUNCTION_187();
  FigVisualContextGetTypeID(v0, v1);
  return fpfsi_handleVideoOutputsChanged();
}

uint64_t fpfs_handleSetProperty_cold_21(uint64_t a1)
{
  OUTLINED_FUNCTION_806(a1);
  *(v1 + 936) = FigCFNumberGetSInt32();
  return fpfsi_UpdateResourceSpecifierOnResourceArbiter(*(v1 + 80));
}

void fpfs_handleSetProperty_cold_26(const __CFArray *a1, CFTypeRef *a2, uint64_t a3, void *a4)
{
  Count = CFArrayGetCount(a1);
  if (Count >= 1)
  {
    v6 = Count;
    for (i = 0; i != v6; ++i)
    {
      FigCFArrayGetValueAtIndex();
      if (!FigCFArrayContainsValue())
      {
        fpfs_RemoveFromPrebufferArrayGuts();
      }
    }
  }

  if (*a2)
  {
    CFRelease(*a2);
    *a2 = 0;
  }
}

CFTypeID fpfs_handleSetProperty_cold_28(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  result = OUTLINED_FUNCTION_173(a1);
  if (result)
  {
    v6 = v5;
    v7 = CFGetTypeID(result);
    result = CFNumberGetTypeID();
    if (v7 == result)
    {
      OUTLINED_FUNCTION_681();
      result = CFNumberGetValue(v8, v9, v10);
      if (*(v6 + 232))
      {
        *(v6 + 232) = 0;
        result = FPSupport_updateClosedCaptionLayer(v6 + 208, *(v6 + 200));
      }
    }
  }

  *a3 = 0;
  return result;
}

uint64_t fpfs_handleSetProperty_cold_29(const void **a1, const void **a2, uint64_t a3)
{
  v5 = *a1;
  v6 = *a2;
  *a1 = *a2;
  if (v6)
  {
    CFRetain(v6);
  }

  if (v5)
  {
    CFRelease(v5);
  }

  fpfs_setCachedRouteInfo(a3);
  return OUTLINED_FUNCTION_271(v7, v8, v9, v10, v11, v12, v13, v14, v16, v17, SWORD2(v17), SBYTE6(v17), SHIBYTE(v17));
}

void fpfs_handleSetProperty_cold_30(const void **a1, const void **a2)
{
  v3 = *a1;
  v4 = *a2;
  *a1 = *a2;
  if (v4)
  {
    CFRetain(v4);
  }

  if (v3)
  {
    CFRelease(v3);
  }

  v5 = OUTLINED_FUNCTION_520();
  fpfs_stopResetDisturbReprepareAndResume(v5, v6, v7);
}

void fpfs_handleSetProperty_cold_31(const void **a1, uint64_t a2, _DWORD *a3)
{
  v4 = *a1;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!FigCFEqual())
  {
    v6 = *(DerivedStorage + 200);
    if (v4)
    {
      v7 = CFRetain(v4);
    }

    else
    {
      v7 = 0;
    }

    *(DerivedStorage + 200) = v7;
    FPSupport_updateClosedCaptionLayer(DerivedStorage + 208, v7);
    FPSupport_AppendDeferredTransactionChangeToRelease(*(DerivedStorage + 880), v6);
  }

  *a3 = 0;
}

void fpfs_handleSetProperty_cold_32(CFBooleanRef *a1, uint64_t a2, _DWORD *a3)
{
  if (*a1 && (TypeID = CFBooleanGetTypeID(), TypeID == CFGetTypeID(*a1)))
  {
    Value = CFBooleanGetValue(*a1);
    if (Value == *(a2 + 712) || (*(a2 + 712) = Value, Value))
    {
      LODWORD(v8) = 0;
    }

    else
    {
      v8 = *(a2 + 720);
      if (v8)
      {
        CFRelease(v8);
        LODWORD(v8) = 0;
        *(a2 + 720) = 0;
      }
    }
  }

  else
  {
    OUTLINED_FUNCTION_239();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v9, v10, v11);
  }

  *a3 = v8;
}

const void *fpfs_handleSetProperty_cold_33()
{
  OUTLINED_FUNCTION_471();
  result = OUTLINED_FUNCTION_173(v3);
  if (result)
  {
    v5 = CFGetTypeID(result);
    result = CFBooleanGetTypeID();
    if (v5 != result)
    {
      v7 = -12780;
      goto LABEL_9;
    }

    if (*v2 == *MEMORY[0x1E695E4C0])
    {
      v6 = 2;
    }

    else
    {
      v6 = 1;
    }
  }

  else
  {
    v6 = 0;
  }

  v7 = 0;
  *(v1 + 648) = v6;
LABEL_9:
  *v0 = v7;
  return result;
}

uint64_t fpfs_handleSetProperty_cold_34(CFTypeRef *a1)
{
  if (!*a1)
  {
    return 0;
  }

  TypeID = CFStringGetTypeID();
  if (TypeID == CFGetTypeID(*a1))
  {
    return 1;
  }

  else
  {
    return 2;
  }
}

uint64_t fpfs_handleSetProperty_cold_35(CFTypeRef *a1)
{
  if (*a1)
  {
    TypeID = CFStringGetTypeID();
    if (TypeID == CFGetTypeID(*a1))
    {
      v3 = -1;
    }

    else
    {
      v3 = 0;
    }
  }

  else
  {
    v3 = 1;
  }

  return v3 & 1;
}

uint64_t fpfsi_UpdateActiveStateForPlaybackItem_cold_1()
{
  OUTLINED_FUNCTION_187();
  v1 = MEMORY[0x1E6960C98];
  v2 = *(MEMORY[0x1E6960C98] + 16);
  *v3 = *MEMORY[0x1E6960C98];
  v3[1] = v2;
  v3[2] = *(v1 + 32);
  fpfsi_getPumpAvailableTimeRange(v4, v0);
  if (v5 || (*(v0 + 12) & 1) != 0 && (*(v0 + 36) & 1) != 0 && !*(v0 + 40) && (*(v0 + 24) & 0x8000000000000000) == 0)
  {
    return 0;
  }

  v6 = 1;
  OUTLINED_FUNCTION_677();
  fpfs_FlowControlPump(v7, v8, v9, 0);
  return v6;
}

uint64_t fpfs_CopyDisplayedCVPixelBuffer_cold_1()
{
  OUTLINED_FUNCTION_471();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v4, v5, vars0);
  *v0 = v2;

  return fpfs_UnlockAndPostNotificationsWithCaller(v1);
}

uint64_t itemfig_createCoalescedClientAndAutomaticSelectedMediaArray()
{
  OUTLINED_FUNCTION_327_0();
  v56 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  MutableCopy = 0;
  v2 = FigCFWeakReferenceHolderCopyReferencedObject();
  if (!v2)
  {
    OUTLINED_FUNCTION_81_0();
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    v27 = OUTLINED_FUNCTION_180_0(os_log_and_send_and_compose_flags_and_os_log_type, v20, v21, v22, v23, v24, v25, v26, v49, v50, v51, v52, SBYTE2(v52), BYTE3(v52), SHIDWORD(v52));
    if (OUTLINED_FUNCTION_124_0(v27))
    {
      goto LABEL_28;
    }

    goto LABEL_31;
  }

  v3 = CMBaseObjectGetDerivedStorage();
  if (*v3)
  {
    OUTLINED_FUNCTION_81_0();
    v28 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    v36 = OUTLINED_FUNCTION_180_0(v28, v29, v30, v31, v32, v33, v34, v35, v49, v50, v51, v52, SBYTE2(v52), BYTE3(v52), SHIDWORD(v52));
    if (OUTLINED_FUNCTION_124_0(v36))
    {
LABEL_28:
      v54 = 136315138;
      v55 = "itemfig_createCoalescedClientAndAutomaticSelectedMediaArray";
      OUTLINED_FUNCTION_32();
      OUTLINED_FUNCTION_65();
      _os_log_send_and_compose_impl(v37, v38, v39, v40, v41, v42, DerivedStorage, v43);
    }

LABEL_31:
    OUTLINED_FUNCTION_16();
    OUTLINED_FUNCTION_345_0(v44, v45, v46, v47, v48);
    v16 = 0;
    goto LABEL_17;
  }

  v4 = v3;
  if (!v3[800])
  {
    OUTLINED_FUNCTION_489();
    itemfig_createSelectedMediaArray();
    if (v18 || (MutableCopy = FigCFArrayCreateMutableCopy(), FigAutomaticMediaSelectionCoalesceSelectedMediaArrays(MutableCopy, *(DerivedStorage + 1864), 1), v18))
    {
      v16 = v18;
      goto LABEL_17;
    }

    v8 = 0;
    v6 = 0;
LABEL_11:
    v16 = 0;
    if (v0)
    {
      *v0 = MutableCopy;
      MutableCopy = 0;
    }

    if (!v6)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

  FigSimpleMutexLock();
  v5 = *(v4 + 96);
  if (v5)
  {
    v6 = CFRetain(v5);
  }

  else
  {
    v6 = 0;
  }

  v7 = *(v4 + 97);
  if (v7)
  {
    v8 = CFRetain(v7);
  }

  else
  {
    v8 = 0;
  }

  FigSimpleMutexUnlock();
  OUTLINED_FUNCTION_197();
  v15 = FigAutomaticMediaSelectionCreateSelectedMediaArrayForCriteriaWithLegibleFallbackCriteria(v9, v10, v11, v12, v13, v8, 0, v14, 0, &MutableCopy);
  if (!v15)
  {
    goto LABEL_11;
  }

  v16 = v15;
  if (v6)
  {
LABEL_14:
    CFRelease(v6);
  }

LABEL_15:
  if (v8)
  {
    CFRelease(v8);
  }

LABEL_17:
  if (MutableCopy)
  {
    CFRelease(MutableCopy);
  }

  if (v2)
  {
    CFRelease(v2);
  }

  return v16;
}

__CFDictionary *playerfig_createNotificationPayloadForProperties(int a1, uint64_t a2, int a3, int a4, int a5, int a6, int a7, int a8, void *value, uint64_t a10)
{
  OUTLINED_FUNCTION_279_0();
  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  v20 = &a10;
  v13 = value;
  if (value)
  {
    do
    {
      CFArrayAppendValue(Mutable, v13);
      v14 = v20++;
      v13 = *v14;
    }

    while (*v14);
  }

  if (v10 || !a2)
  {
    if (!v10)
    {
      goto LABEL_14;
    }

    CFRetain(v10);
LABEL_9:
    v15 = OUTLINED_FUNCTION_198_0();
    NotificationPayloadForProperties = FPSupport_CreateNotificationPayloadForProperties(v15, v16, Mutable);
    v18 = 0;
    if (!Mutable)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  CMBaseObjectGetDerivedStorage();
  v10 = FigCFWeakReferenceHolderCopyReferencedObject();
  if (v10)
  {
    goto LABEL_9;
  }

LABEL_14:
  NotificationPayloadForProperties = 0;
  v18 = 1;
  if (Mutable)
  {
LABEL_10:
    CFRelease(Mutable);
  }

LABEL_11:
  if ((v18 & 1) == 0)
  {
    CFRelease(v10);
  }

  return NotificationPayloadForProperties;
}

void itemfig_createSelectedMediaArray()
{
  OUTLINED_FUNCTION_649();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v98[16] = *MEMORY[0x1E69E9840];
  if (itemfig_assureBasicsReadyForInspection(v2))
  {
    goto LABEL_102;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 1840))
  {
    v7 = DerivedStorage;
    v8 = OUTLINED_FUNCTION_249();
    Mutable = CFArrayCreateMutable(v8, v9, v10);
    if (!Mutable)
    {
      goto LABEL_102;
    }

    v12 = Mutable;
    Count = CFArrayGetCount(*(v7 + 1840));
    if (Count >= 1)
    {
      v14 = Count;
      v87 = v1;
      v88 = v3;
      allocator = v5;
      theArray = v12;
      v15 = 0;
      v92 = 0;
      v16 = @"MediaSelectionGroupID";
      v83 = *MEMORY[0x1E695E4D0];
      v89 = Count;
      while (1)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(*(v7 + 1840), v15);
        if (!ValueAtIndex)
        {
          break;
        }

        v18 = ValueAtIndex;
        v19 = CFGetTypeID(ValueAtIndex);
        if (v19 != CFDictionaryGetTypeID())
        {
          break;
        }

        Value = CFDictionaryGetValue(v18, v16);
        v21 = CFDictionaryGetValue(v18, @"MediaSelectionGroupMediaType");
        v22 = CFDictionaryGetValue(v18, @"MediaSelectionGroupMediaCharacteristics");
        if (v22 && (v23 = v22, v24 = CFGetTypeID(v22), v24 == CFArrayGetTypeID()) && CFArrayGetCount(v23) >= 1)
        {
          CFArrayGetCount(v23);
          v25 = OUTLINED_FUNCTION_312();
          v26 = CFArrayContainsValue(v25, v99, @"public.legible") != 0;
        }

        else
        {
          v26 = 0;
        }

        v91 = Value;
        if (v92 || (v34 = *(v7 + 1896), v34 == 0 || !v26))
        {
          v27 = CFDictionaryGetValue(v18, @"MediaSelectionGroupOptions");
          if (!v27)
          {
            break;
          }

          v28 = v27;
          v29 = CFGetTypeID(v27);
          if (v29 != CFArrayGetTypeID())
          {
            break;
          }

          v86 = v21;
          v30 = CFArrayGetCount(v28);
          if (v30)
          {
            v31 = v30;
            if (v30 >= 1)
            {
              v32 = 0;
              v85 = v16;
              do
              {
                v98[0] = 0;
                valuePtr = -1;
                v33 = CFArrayGetValueAtIndex(v28, v32);
                if (!v33)
                {
                  goto LABEL_88;
                }

                v34 = v33;
                v35 = CFGetTypeID(v33);
                if (v35 != CFDictionaryGetTypeID())
                {
                  goto LABEL_88;
                }

                v36 = CFDictionaryGetValue(v34, @"MediaSelectionOptionsPersistentID");
                if (v36)
                {
                  v37 = v36;
                  v38 = CFGetTypeID(v36);
                  if (v38 != CFNumberGetTypeID())
                  {
                    goto LABEL_88;
                  }

                  CFNumberGetValue(v37, kCFNumberSInt32Type, &valuePtr);
                  TrackStorage = itemfig_getTrackStorage(v88, valuePtr, v98);
                  if (TrackStorage)
                  {
                    goto LABEL_89;
                  }

                  if (valuePtr == *(v7 + 1048))
                  {
                    v14 = v89;
                    v16 = v85;
                    if (*(v7 + 1052))
                    {
                      goto LABEL_87;
                    }
                  }

                  else
                  {
                    *v95 = -1;
                    v42 = v98[0];
                    OUTLINED_FUNCTION_63();
                    if (v43)
                    {
                      FigCFDictionaryGetCFIndexIfPresent();
                      ArrayValue = FigCFDictionaryGetArrayValue();
                    }

                    else
                    {
                      ArrayValue = 0;
                    }

                    if (!*(v42 + 8))
                    {
                      v49 = CFDictionaryGetValue(v34, @"MediaSelectionOptionsFallbackIDs");
                      if (v49)
                      {
                        v82 = CFArrayGetCount(v49);
                        if (v82 >= 1)
                        {
                          v50 = 0;
                          while (1)
                          {
                            OUTLINED_FUNCTION_198_0();
                            FigCFArrayGetInt32AtIndex();
                            if (itemfig_getTrackStorage(v88, valuePtr, v98))
                            {
                              v12 = theArray;
                              goto LABEL_100;
                            }

                            v42 = v98[0];
                            if (*(v98[0] + 8))
                            {
                              break;
                            }

                            if (v82 == ++v50)
                            {
                              goto LABEL_34;
                            }
                          }

                          if (ArrayValue)
                          {
                            OUTLINED_FUNCTION_373();
                            FigCFArrayGetCFIndexAtIndex();
                          }
                        }
                      }
                    }

LABEL_34:
                    if (*(v42 + 8))
                    {
                      OUTLINED_FUNCTION_63();
                      if (v43)
                      {
                        v51 = -1;
                        v93 = -1;
                        v52 = *(v42 + 144);
                        if (v52)
                        {
                          CFNumberGetValue(v52, kCFNumberCFIndexType, &v93);
                          v51 = v93;
                        }

                        if (v51 == *v95)
                        {
LABEL_86:
                          v16 = v85;
LABEL_87:
                          Value = v91;
                          v21 = v86;
                          goto LABEL_60;
                        }
                      }

                      else
                      {
                        OUTLINED_FUNCTION_544();
                        if (!v43)
                        {
                          goto LABEL_86;
                        }

                        if (!*(v7 + 1062))
                        {
                          v45 = CFDictionaryGetValue(v34, @"MediaSelectionOptionsDisplaysNonForcedSubtitles");
                          if (v45)
                          {
                            v46 = v45;
                            v47 = CFGetTypeID(v45);
                            if (v47 == CFBooleanGetTypeID())
                            {
                              v48 = *(v7 + 1060);
                              if (v48 == CFBooleanGetValue(v46))
                              {
                                goto LABEL_86;
                              }
                            }
                          }
                        }
                      }
                    }

                    v14 = v89;
                    v16 = v85;
                  }
                }

                else
                {
                  v40 = CFDictionaryGetValue(v34, @"MediaSelectionOptionsUniqueOutOfBandID");
                  if (!v40)
                  {
                    goto LABEL_88;
                  }

                  v41 = CFGetTypeID(v40);
                  if (v41 != CFNumberGetTypeID())
                  {
                    goto LABEL_88;
                  }
                }
              }

              while (++v32 != v31);
            }
          }

          else
          {
            LODWORD(v93) = 0;
            LOBYTE(valuePtr) = 0;
            os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            v68 = v93;
            v69 = valuePtr;
            os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, valuePtr);
            OUTLINED_FUNCTION_425();
            if (v43)
            {
              v71 = v70;
            }

            else
            {
              v71 = v68;
            }

            if (v71)
            {
              *v95 = 136315394;
              *&v95[4] = "itemfig_createSelectedMediaArray";
              v96 = 2114;
              v97 = v18;
              OUTLINED_FUNCTION_36_0();
              OUTLINED_FUNCTION_108();
              _os_log_send_and_compose_impl(v72, v73, v74, v75, &dword_1962D5000, os_log_and_send_and_compose_flags_and_os_log_type, v69, "<<<< FigFilePlayer >>>> %s: Warning: media selection group %{public}@ has 0 options");
            }

            OUTLINED_FUNCTION_16();
            OUTLINED_FUNCTION_635(v76, v77, v78, v79, v80);
          }
        }

        else
        {
          v92 = 1;
LABEL_60:
          MutableCopy = CFDictionaryCreateMutableCopy(allocator, 0, v34);
          if (!MutableCopy)
          {
            break;
          }

          v54 = MutableCopy;
          if (Value)
          {
            v55 = OUTLINED_FUNCTION_618();
            CFDictionaryAddValue(v55, v56, Value);
          }

          v57 = v16;
          if (v21)
          {
            CFDictionaryAddValue(v54, @"MediaSelectionGroupMediaType", v21);
          }

          v58 = FigCFWeakReferenceHolderCopyReferencedObject();
          v59 = CMBaseObjectGetDerivedStorage();
          if (v59 && *(v59 + 800))
          {
            v60 = *(v7 + 1864);
            if (v60 && (v61 = CFArrayGetCount(*(v7 + 1864)), v61 >= 1))
            {
              v62 = v61;
              v63 = 0;
              while (1)
              {
                v64 = CFArrayGetValueAtIndex(v60, v63);
                if (v64)
                {
                  v65 = v64;
                  v66 = CFGetTypeID(v64);
                  if (v66 == CFDictionaryGetTypeID())
                  {
                    CFDictionaryGetValue(v65, v57);
                    if (FigCFEqual())
                    {
                      break;
                    }
                  }
                }

                if (v62 == ++v63)
                {
                  goto LABEL_74;
                }
              }
            }

            else
            {
LABEL_74:
              CFDictionaryAddValue(v54, @"AutomaticallySelected", v83);
            }
          }

          if (v58)
          {
            CFRelease(v58);
          }

          CFArrayAppendValue(theArray, v54);
          CFRelease(v54);
          v14 = v89;
          v16 = v57;
        }

        if (++v15 == v14)
        {
          v81 = 0;
          goto LABEL_90;
        }
      }

LABEL_88:
      OUTLINED_FUNCTION_120();
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
LABEL_89:
      v81 = TrackStorage;
LABEL_90:
      v1 = v87;
      v12 = theArray;
      if (!v87)
      {
        goto LABEL_100;
      }

LABEL_95:
      if (!v81)
      {
        *v1 = v12;
        goto LABEL_102;
      }

      goto LABEL_100;
    }
  }

  else
  {
    v12 = 0;
  }

  v81 = 0;
  if (v1)
  {
    goto LABEL_95;
  }

LABEL_100:
  if (v12)
  {
    CFRelease(v12);
  }

LABEL_102:
  OUTLINED_FUNCTION_651();
}

double itemfig_setFormatReader(const void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!*(DerivedStorage + 1240))
  {
    v4 = DerivedStorage;
    if (!*(DerivedStorage + 1008))
    {
      CFGetAllocator(a1);
      OUTLINED_FUNCTION_179();
      FigAssetGetCMBaseObject();
      if (*(*(CMBaseObjectGetVTable() + 8) + 48))
      {
        v5 = (v4 + 1008);
        v6 = OUTLINED_FUNCTION_188();
        if (!v7(v6) && !*v5)
        {
          OUTLINED_FUNCTION_376();

          return FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
        }
      }
    }
  }

  return result;
}

void itemfig_ConnectionStateChanged(uint64_t a1, const void *a2, uint64_t a3, uint64_t a4, const void *a5)
{
  values[16] = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v9 = OUTLINED_FUNCTION_442_0(DerivedStorage);
  if (v9)
  {
    v10 = v9;
    CMBaseObjectGetDerivedStorage();
    if (a5)
    {
      v11 = CFGetTypeID(a5);
      if (v11 == CFDictionaryGetTypeID())
      {
        if (FigCFDictionaryGetInt32IfPresent())
        {
          values[0] = @"Connected";
          FigSimpleMutexLock();
          if (@"Connected" == *(v5 + 1464))
          {
            FigSimpleMutexUnlock();
          }

          else
          {
            *(v5 + 1464) = values[0];
            v12 = CFDictionaryCreate(*MEMORY[0x1E695E480], &kFigPlaybackItemParameter_ConnectionState, values, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
            FigSimpleMutexUnlock();
            if (v12)
            {
              CFRetain(a2);
              FigDeferNotificationToDispatchQueue();
            }
          }
        }
      }
    }

    CFRelease(v10);
  }
}

void itemfig_checkForShortAudioTrack(uint64_t a1)
{
  v34 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v30 = 0;
  v31 = 0;
  v28 = 0;
  v29 = 0;
  memset(v27, 0, sizeof(v27));
  dictionaryRepresentation = 0;
  memset(&v25, 0, sizeof(v25));
  *(DerivedStorage + 1032) = 0;
  if (!*(DerivedStorage + 1036))
  {
    goto LABEL_32;
  }

  v2 = DerivedStorage;
  v3 = *(DerivedStorage + 1008);
  v4 = *(*(CMBaseObjectGetVTable() + 16) + 8);
  if (!v4)
  {
    goto LABEL_32;
  }

  if (v4(v3, &v31) || v31 == 1)
  {
    goto LABEL_32;
  }

  v6 = *(v2 + 1008);
  v7 = *(v2 + 1036);
  v8 = *(*(CMBaseObjectGetVTable() + 16) + 56);
  if (!v8 || v8(v6, v7, &v30, 0))
  {
    goto LABEL_32;
  }

  FigTrackReaderGetFigBaseObject();
  if (*(*(CMBaseObjectGetVTable() + 8) + 48))
  {
    v9 = OUTLINED_FUNCTION_308();
    v10(v9);
  }

  if (v29)
  {
    v13 = *(*(CMBaseObjectGetVTable() + 16) + 8);
    if (!v13)
    {
      goto LABEL_32;
    }

    *&range.start.value = *MEMORY[0x1E6960C88];
    range.start.epoch = *(MEMORY[0x1E6960C88] + 16);
    v14 = v13(v29, &range, &v28);
    if (v14 == -12521)
    {
      goto LABEL_17;
    }

    if (v14)
    {
      goto LABEL_32;
    }

    v15 = v28;
    v16 = *(*(CMBaseObjectGetVTable() + 16) + 24);
    if (!v16 || v16(v15, v27))
    {
      goto LABEL_32;
    }

    range = v27[1];
    CMTimeRangeGetEnd(&v25, &range);
  }

  else
  {
    FigTrackReaderGetFigBaseObject();
    if (*(*(CMBaseObjectGetVTable() + 8) + 48))
    {
      v11 = OUTLINED_FUNCTION_308();
      v12(v11);
    }

    FigTrackReaderGetFigBaseObject();
    if (!*(*(CMBaseObjectGetVTable() + 8) + 48))
    {
      goto LABEL_32;
    }

    v17 = OUTLINED_FUNCTION_308();
    if (v18(v17))
    {
      goto LABEL_32;
    }

    CMTimeMakeFromDictionary(&v25, dictionaryRepresentation);
    if (dictionaryRepresentation)
    {
      CFRelease(dictionaryRepresentation);
      dictionaryRepresentation = 0;
    }
  }

  value = *(v2 + 140);
  flags = *(v2 + 152);
  timescale = *(v2 + 148);
  if ((flags & 0x1D) == 1)
  {
    epoch = *(v2 + 156);
    goto LABEL_31;
  }

  FigFormatReaderGetFigBaseObject();
  if (*(*(CMBaseObjectGetVTable() + 8) + 48))
  {
    v21 = OUTLINED_FUNCTION_308();
    if (!v22(v21))
    {
      CMTimeMakeFromDictionary(&range.start, dictionaryRepresentation);
      value = range.start.value;
      flags = range.start.flags;
      timescale = range.start.timescale;
      epoch = range.start.epoch;
LABEL_31:
      range.start = v25;
      time2.value = value;
      time2.timescale = timescale;
      time2.flags = flags;
      time2.epoch = epoch;
      if ((CMTimeCompare(&range.start, &time2) & 0x80000000) == 0)
      {
        goto LABEL_32;
      }

LABEL_17:
      *(v2 + 1032) = 1;
    }
  }

LABEL_32:
  if (v29)
  {
    CFRelease(v29);
  }

  if (v28)
  {
    CFRelease(v28);
  }

  if (dictionaryRepresentation)
  {
    CFRelease(dictionaryRepresentation);
  }

  if (v30)
  {
    CFRelease(v30);
  }
}

uint64_t FigReportingAgentStatsSetIntValue(uint64_t result)
{
  if (result)
  {
    OUTLINED_FUNCTION_216_0();
    VTable = CMBaseObjectGetVTable();
    v2 = *(VTable + 16);
    result = VTable + 16;
    if (*(v2 + 56))
    {
      OUTLINED_FUNCTION_184();
      OUTLINED_FUNCTION_151_0();

      return v3();
    }
  }

  return result;
}

uint64_t FigReportingAgentStatsSetCFTypeValue_0(uint64_t result)
{
  if (result)
  {
    OUTLINED_FUNCTION_216_0();
    VTable = CMBaseObjectGetVTable();
    v2 = *(VTable + 16);
    result = VTable + 16;
    if (*(v2 + 48))
    {
      OUTLINED_FUNCTION_184();
      OUTLINED_FUNCTION_151_0();

      return v3();
    }
  }

  return result;
}

void itemfig_updateHasEnabledVideo(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v3 = OUTLINED_FUNCTION_283_0(DerivedStorage);
  v4 = CMBaseObjectGetDerivedStorage();
  if (v3)
  {
    v5 = v4;
    v6 = *(v1 + 2066);
    v7 = *(v1 + 1040);
    *(v1 + 2066) = v7 != 0;
    if (v7)
    {
      v8 = 1;
    }

    else
    {
      v8 = *(v1 + 656) != 0;
      *(v1 + 2066) = v8;
    }

    if (v6 != v8)
    {
      Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      v10 = Mutable;
      v11 = MEMORY[0x1E695E4D0];
      if (!*(v1 + 2066))
      {
        v11 = MEMORY[0x1E695E4C0];
      }

      CFDictionarySetValue(Mutable, @"HasEnabledVideo", *v11);
      CMNotificationCenterGetDefaultLocalCenter();
      FigDispatchAsyncPostNotification();
      if (v10)
      {
        CFRelease(v10);
      }
    }

    if (!*(v1 + 2067) && *(v1 + 2066))
    {
      *(v1 + 2067) = 1;
      v12 = *(v5 + 104);
      DefaultLocalCenter = CMNotificationCenterGetDefaultLocalCenter();
      OUTLINED_FUNCTION_348_0(v12, DefaultLocalCenter, @"HasDiscoveredVideo");
    }

    CFRelease(v3);
  }
}

void itemfig_updateListenersForVideoTrack(uint64_t a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v10 = 0;
  cf = 0;
  v4 = *(DerivedStorage + 1008);
  if (v4)
  {
    v5 = DerivedStorage;
    v6 = *(DerivedStorage + 1044);
    if (v6)
    {
      v7 = *(*(CMBaseObjectGetVTable() + 16) + 56);
      if (!v7 || v7(v4, v6, &cf, 0))
      {
        goto LABEL_10;
      }

      CMNotificationCenterGetDefaultLocalCenter();
      OUTLINED_FUNCTION_169_0();
      FigNotificationCenterRemoveWeakListener();
      *(v5 + 1044) = 0;
    }

    if (a2)
    {
      v8 = *(v5 + 1008);
      v9 = *(*(CMBaseObjectGetVTable() + 16) + 56);
      if (v9)
      {
        if (!v9(v8, a2, &v10, 0))
        {
          CMNotificationCenterGetDefaultLocalCenter();
          OUTLINED_FUNCTION_169_0();
          OUTLINED_FUNCTION_186();
          FigNotificationCenterAddWeakListener();
          *(v5 + 1044) = a2;
        }
      }
    }
  }

LABEL_10:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v10)
  {
    CFRelease(v10);
  }

  OUTLINED_FUNCTION_652();
}

void itemfig_copyTrackFormatDescription(void *a1, uint64_t a2, uint64_t *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  cf = 0;
  if (*DerivedStorage || !a2)
  {
    OUTLINED_FUNCTION_239();
    OUTLINED_FUNCTION_652();

    FigSignalErrorAtGM(v12);
  }

  else
  {
    v7 = DerivedStorage;
    if (!itemfig_assureBasicsReadyForInspection(a1))
    {
      v8 = *(v7 + 126);
      v9 = *(*(CMBaseObjectGetVTable() + 16) + 56);
      if (v9)
      {
        v10 = v9(v8, a2, &cf, 0);
        v11 = cf;
        if (!v10)
        {
          itemfig_copyFormatDescription(cf, a3);
          v11 = cf;
        }

        if (v11)
        {
          CFRelease(v11);
        }
      }
    }

    OUTLINED_FUNCTION_652();
  }
}

uint64_t itemfig_IsThereMediaTrack(uint64_t result)
{
  if (result)
  {
    if (*(result + 1008) && *(*(CMBaseObjectGetVTable() + 16) + 64))
    {
      v1 = OUTLINED_FUNCTION_265();
      v2(v1);
      return 0;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void fp_checkForCinematicAudioParametersInAudioCurves(uint64_t a1, uint64_t a2, uint64_t a3, BOOL *a4)
{
  OUTLINED_FUNCTION_216_0();
  if (v7)
  {
    v8 = FigCFDictionaryGetValue() != 0;
    v9 = FigCFDictionaryGetValue() != 0;
    if (!v5)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = 0;
  v9 = 0;
  if (v5)
  {
LABEL_3:
    *v5 = v8 || v9;
  }

LABEL_4:
  if (v4)
  {
    *v4 = v8;
  }

  if (a4)
  {
    *a4 = v9;
  }
}

uint64_t itemfig_updateDefaultTrackID(uint64_t a1, uint64_t a2, char *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v23 = 0;
  v24 = 0;
  *a3 = 0;
  v7 = FigCFWeakReferenceHolderCopyReferencedObject();
  if (!v7)
  {
    return 0;
  }

  v8 = v7;
  v9 = CMBaseObjectGetDerivedStorage();
  if (*v9)
  {
    goto LABEL_30;
  }

  v10 = v9;
  v11 = OUTLINED_FUNCTION_403_0();
  TrackStorage = itemfig_getTrackStorage(v11, a2, v12);
  if (TrackStorage)
  {
    goto LABEL_36;
  }

  if (*(v24 + 4) == 1668047728)
  {
    v15 = (DerivedStorage + 1048);
    goto LABEL_17;
  }

  OUTLINED_FUNCTION_289_0();
  if (v19)
  {
    v17 = 0;
    v15 = (DerivedStorage + 1080);
    goto LABEL_18;
  }

  OUTLINED_FUNCTION_544();
  if (v19)
  {
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_63();
  if (v19)
  {
    v15 = (DerivedStorage + 1036);
    v16 = v10[128];
    goto LABEL_14;
  }

  if (v14 == 1952807028)
  {
LABEL_12:
    v15 = (DerivedStorage + 1056);
LABEL_17:
    v17 = 1;
    goto LABEL_18;
  }

  OUTLINED_FUNCTION_33();
  if (v19)
  {
    v15 = (DerivedStorage + 1040);
    v16 = v10[129];
LABEL_14:
    v17 = v16 == 0;
LABEL_18:
    v18 = *v15;
    if (!*(v24 + 8))
    {
      if (v18 != a2)
      {
        goto LABEL_28;
      }

      v19 = a2 == 0;
      LODWORD(a2) = 0;
LABEL_24:
      v20 = !v19;
      *a3 = v20;
      *v15 = a2;
      goto LABEL_28;
    }

    if (!v18 || v18 == a2)
    {
LABEL_21:
      v19 = *v15 == a2;
      goto LABEL_24;
    }

    TrackStorage = itemfig_getTrackStorage(a1, v18, &v23);
    if (!TrackStorage)
    {
      if (v17)
      {
        itemfig_setTrackEnabled(a1, v23, 0);
      }

      goto LABEL_21;
    }

LABEL_36:
    v21 = TrackStorage;
    goto LABEL_31;
  }

LABEL_28:
  OUTLINED_FUNCTION_33();
  if (v19)
  {
    itemfig_updateHasEnabledVideo(a1);
    itemfig_updateListenersForVideoTrack(a1, *(DerivedStorage + 1040));
  }

LABEL_30:
  v21 = 0;
LABEL_31:
  CFRelease(v8);
  return v21;
}

void itemfig_applyLoudnessInfo(const void *a1, uint64_t a2, int a3, int a4)
{
  v134 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v11 = OUTLINED_FUNCTION_354_0(DerivedStorage);
  v12 = CMBaseObjectGetDerivedStorage();
  if (v11)
  {
    if (!*v12)
    {
      if (*(v12 + 536) != a1 || !*(v12 + 584))
      {
        if (dword_1EAF16A10)
        {
          OUTLINED_FUNCTION_202_0();
          os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          OUTLINED_FUNCTION_436_0(os_log_and_send_and_compose_flags_and_os_log_type, v14, v15, v16, v17, v18, v19, v20, v107, v110, v113, v116, OS_LOG_TYPE_DEFAULT, *&v125[4], 0);
          OUTLINED_FUNCTION_46();
          if (a4)
          {
            v21 = CMBaseObjectGetDerivedStorage() + 972;
            if (!a1)
            {
LABEL_25:
              v127 = 136316418;
              OUTLINED_FUNCTION_24_0();
              v128 = v21;
              OUTLINED_FUNCTION_91_0();
              v129 = 1024;
              LODWORD(v130) = a2;
              OUTLINED_FUNCTION_32();
              OUTLINED_FUNCTION_36();
              _os_log_send_and_compose_impl(v49, v50, v51, v52, v53, v54, v4, v55);
              OUTLINED_FUNCTION_393_0();
              goto LABEL_30;
            }

LABEL_7:
            CMBaseObjectGetDerivedStorage();
            goto LABEL_25;
          }

LABEL_30:
          OUTLINED_FUNCTION_7();
          OUTLINED_FUNCTION_238_0(v58, v59, v60, v61, v62);
        }

LABEL_31:
        CFRelease(v11);
        goto LABEL_32;
      }

      if (a3 && CFArrayGetValueAtIndex(*(v12 + 528), 0) != a1)
      {
        if (dword_1EAF16A10)
        {
          OUTLINED_FUNCTION_202_0();
          v22 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          OUTLINED_FUNCTION_436_0(v22, v23, v24, v25, v26, v27, v28, v29, v107, v110, v113, v116, OS_LOG_TYPE_DEFAULT, *&v125[4], 0);
          OUTLINED_FUNCTION_46();
          if (a4)
          {
            v21 = CMBaseObjectGetDerivedStorage() + 972;
            if (!a1)
            {
              goto LABEL_25;
            }

            goto LABEL_7;
          }

          goto LABEL_30;
        }

        goto LABEL_31;
      }

      *v126 = 0;
      if (a2 || (a2 = *(v4 + 1036), a2))
      {
        itemfig_getTrackStorage(a1, a2, v126);
        v30 = *v126;
        if (*v126 && *(*v126 + 16))
        {
          *v125 = 0;
          itemfig_copyCombinedLoudnessInfoDictionary(a1, a2, v125);
          v31 = *v125;
          if (*v125)
          {
            v32 = FigCFCopyCompactDescription();
            if (a4 == 1)
            {
              if (dword_1EAF16A10)
              {
                OUTLINED_FUNCTION_147();
                v88 = OUTLINED_FUNCTION_126(qword_1EAF16A08, v81, v82, v83, v84, v85, v86, v87, v107, v110, v113, v116, SBYTE2(v116), SBYTE3(v116), SBYTE4(v116));
                OUTLINED_FUNCTION_830(v88, v89, v90, v91, v92, v93, v94, v95, v109, v112, v115, v118, v120, v122, typea);
                OUTLINED_FUNCTION_37();
                if (v5)
                {
                  v96 = CMBaseObjectGetDerivedStorage() + 972;
                  if (a1)
                  {
                    CMBaseObjectGetDerivedStorage();
                  }

                  v127 = 136316674;
                  OUTLINED_FUNCTION_24_0();
                  v128 = v96;
                  OUTLINED_FUNCTION_91_0();
                  v129 = 2114;
                  v130 = v32;
                  v131 = 1024;
                  v132 = a2;
                  OUTLINED_FUNCTION_32();
                  OUTLINED_FUNCTION_43_0(v97, v98, v133, v99, &dword_1962D5000, v100, v101, "<<<< FigFilePlayer >>>> %s: [%p] %{public}s item [%p] %{public}s is sending loudness info %{public}@ via marker sample buffer for track %d");
                  OUTLINED_FUNCTION_179_0();
                }

                OUTLINED_FUNCTION_7();
                OUTLINED_FUNCTION_449(v102, v103, v104, v105, v106);
              }

              fp_sendLoudnessInfoMarkerSampleBufferToAudioRenderPipeline(*(v30 + 16), v31);
            }

            else
            {
              if (dword_1EAF16A10)
              {
                OUTLINED_FUNCTION_147();
                v40 = OUTLINED_FUNCTION_126(qword_1EAF16A08, v33, v34, v35, v36, v37, v38, v39, v107, v110, v113, v116, SBYTE2(v116), SBYTE3(v116), SBYTE4(v116));
                OUTLINED_FUNCTION_830(v40, v41, v42, v43, v44, v45, v46, v47, v108, v111, v114, v117, v119, v121, type);
                OUTLINED_FUNCTION_37();
                if (v5)
                {
                  v48 = CMBaseObjectGetDerivedStorage() + 972;
                  if (a1)
                  {
                    CMBaseObjectGetDerivedStorage();
                  }

                  v127 = 136316674;
                  OUTLINED_FUNCTION_24_0();
                  v128 = v48;
                  OUTLINED_FUNCTION_91_0();
                  v129 = 2114;
                  v130 = v32;
                  v131 = 1024;
                  v132 = a2;
                  OUTLINED_FUNCTION_32();
                  OUTLINED_FUNCTION_43_0(v70, v71, v133, v72, &dword_1962D5000, v73, v74, "<<<< FigFilePlayer >>>> %s: [%p] %{public}s item [%p] %{public}s is setting loudness info %{public}@ on render pipeline for track %d");
                  OUTLINED_FUNCTION_179_0();
                }

                OUTLINED_FUNCTION_7();
                OUTLINED_FUNCTION_449(v75, v76, v77, v78, v79);
              }

              FigRenderPipelineGetFigBaseObject();
              CMBaseObjectSetProperty(v80, @"LoudnessInfo", v31);
            }

            CFRelease(v31);
            if (v32)
            {
              CFRelease(v32);
            }
          }

          goto LABEL_31;
        }

        if (dword_1EAF16A10)
        {
          *v125 = 0;
          OUTLINED_FUNCTION_202_0();
          v56 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          os_log_type_enabled(v56, OS_LOG_TYPE_DEFAULT);
          OUTLINED_FUNCTION_46();
          if (a4)
          {
            v57 = CMBaseObjectGetDerivedStorage() + 972;
            if (a1)
            {
              CMBaseObjectGetDerivedStorage();
            }

            v127 = 136316418;
            OUTLINED_FUNCTION_24_0();
            v128 = v57;
            OUTLINED_FUNCTION_91_0();
            v129 = 1024;
            LODWORD(v130) = a2;
            OUTLINED_FUNCTION_32();
            OUTLINED_FUNCTION_36();
            _os_log_send_and_compose_impl(v63, v64, v65, v66, v67, v68, 0, v69);
          }

          goto LABEL_30;
        }

        goto LABEL_31;
      }
    }

    OUTLINED_FUNCTION_243();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
    goto LABEL_31;
  }

LABEL_32:
  OUTLINED_FUNCTION_372();
}

void itemfig_setSweepFilterConfgurationPropertyInternal(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_845();
  v11 = v10;
  v13 = v12;
  v15 = v14;
  CMBaseObjectGetDerivedStorage();
  OUTLINED_FUNCTION_279_0();
  *v13 = 0;
  v16 = OUTLINED_FUNCTION_489();
  if (itemfig_getTrackStorage(v16, v17, v18))
  {
    goto LABEL_31;
  }

  v19 = FigCFWeakReferenceHolderCopyReferencedObject();
  if (v19)
  {
    v20 = v19;
    CMBaseObjectGetDerivedStorage();
    OUTLINED_FUNCTION_63();
    if (v21)
    {
      if (v15)
      {
        v22 = CFGetTypeID(v15);
        if (v22 == CFDictionaryGetTypeID())
        {
          v23 = OUTLINED_FUNCTION_797();
          if (CFDictionaryContainsKey(v23, v24))
          {
            v25 = OUTLINED_FUNCTION_797();
            Value = CFDictionaryGetValue(v25, v26);
            if (Value)
            {
              v28 = Value;
              v29 = CFGetTypeID(Value);
              if (v29 == CFBooleanGetTypeID())
              {
                if (!CFBooleanGetValue(v28))
                {
                  if (!*(a10 + 120))
                  {
                    goto LABEL_30;
                  }

                  OUTLINED_FUNCTION_342_0();
                  if (v11)
                  {
                    CFRelease(v11);
                  }

                  *(a10 + 120) = 0;
                  goto LABEL_25;
                }

                v30 = OUTLINED_FUNCTION_622();
                if (CFDictionaryContainsKey(v30, v31))
                {
                  v32 = OUTLINED_FUNCTION_331_0();
                  if (CFDictionaryContainsKey(v32, v33))
                  {
                    v34 = OUTLINED_FUNCTION_797();
                    if (CFDictionaryContainsKey(v34, v35))
                    {
                      if (!*(a10 + 120))
                      {
                        *(a10 + 120) = 1;
                        OUTLINED_FUNCTION_342_0();
                        if (v11)
                        {
                          CFRelease(v11);
                        }

                        *v13 = 1;
                        goto LABEL_30;
                      }

                      v36 = OUTLINED_FUNCTION_622();
                      v38 = CFDictionaryGetValue(v36, v37);
                      CFDictionaryGetValue(*(a10 + 128), @"MinimumCutOffFrequency");
                      OUTLINED_FUNCTION_577();
                      if (FigCFEqual())
                      {
                        v39 = OUTLINED_FUNCTION_331_0();
                        v38 = CFDictionaryGetValue(v39, v40);
                        CFDictionaryGetValue(*(a10 + 128), @"MaximumCutOffFrequency");
                        OUTLINED_FUNCTION_577();
                        if (FigCFEqual())
                        {
                          v41 = OUTLINED_FUNCTION_797();
                          v38 = CFDictionaryGetValue(v41, v42);
                          CFDictionaryGetValue(*(a10 + 128), @"BypassThreshold");
                          OUTLINED_FUNCTION_577();
                          if (FigCFEqual())
                          {
LABEL_30:
                            CFRelease(v20);
LABEL_31:
                            OUTLINED_FUNCTION_843();
                            return;
                          }
                        }
                      }

                      OUTLINED_FUNCTION_342_0();
                      if (v38)
                      {
                        CFRelease(v38);
                      }

LABEL_25:
                      *v13 = 1;
                      goto LABEL_30;
                    }
                  }
                }
              }
            }
          }
        }
      }
    }

    OUTLINED_FUNCTION_243();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
    goto LABEL_30;
  }

  OUTLINED_FUNCTION_243();
  OUTLINED_FUNCTION_843();

  FigSignalErrorAtGM(v43);
}

uint64_t itemfig_applyEnhancementFilterOptions()
{
  OUTLINED_FUNCTION_313_0();
  result = itemfig_getTrackStorage(v0, v1, v2);
  if (!result && v10)
  {
    if (*(v10 + 16))
    {
      FigRenderPipelineGetFigBaseObject();
      if (*(*(CMBaseObjectGetVTable() + 8) + 56))
      {
        v4 = OUTLINED_FUNCTION_123_0();
        v5(v4);
      }
    }

    result = *(v10 + 248);
    if (result)
    {
      FigRenderPipelineGetFigBaseObject();
      VTable = CMBaseObjectGetVTable();
      v7 = *(VTable + 8);
      result = VTable + 8;
      if (*(v7 + 56))
      {
        v8 = OUTLINED_FUNCTION_123_0();

        return v9(v8);
      }
    }
  }

  return result;
}

uint64_t itemfig_applyDisableColorMatching()
{
  OUTLINED_FUNCTION_313_0();
  result = itemfig_getTrackStorage(v0, v1, v2);
  if (!result && v10)
  {
    if (*(v10 + 16))
    {
      FigRenderPipelineGetFigBaseObject();
      if (*(*(CMBaseObjectGetVTable() + 8) + 56))
      {
        v4 = OUTLINED_FUNCTION_123_0();
        v5(v4);
      }
    }

    result = *(v10 + 248);
    if (result)
    {
      FigRenderPipelineGetFigBaseObject();
      VTable = CMBaseObjectGetVTable();
      v7 = *(VTable + 8);
      result = VTable + 8;
      if (*(v7 + 56))
      {
        v8 = OUTLINED_FUNCTION_123_0();

        return v9(v8);
      }
    }
  }

  return result;
}

void fp_sendLoudnessInfoMarkerSampleBufferToAudioRenderPipeline(uint64_t a1, const void *a2)
{
  target = 0;
  OUTLINED_FUNCTION_312();
  OUTLINED_FUNCTION_19();
  if (!CMSampleBufferCreate(v3, v4, v5, v6, v7, v8, v9, v10, 0, 0, 0, &target))
  {
    CMSetAttachment(target, *MEMORY[0x1E6962DF0], a2, 0);
    FigRenderPipelineGetFigBaseObject();
    if (*(*(CMBaseObjectGetVTable() + 8) + 48))
    {
      v11 = OUTLINED_FUNCTION_228();
      if (!v12(v11))
      {
        CMBufferQueueEnqueue(0, target);
      }
    }
  }

  if (target)
  {
    CFRelease(target);
  }
}

void itemfig_autoSelectionCriteriaChangedForItemAsync(const void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v4 = OUTLINED_FUNCTION_283_0(DerivedStorage);
  if (v4)
  {
    v5 = v4;
    v6 = CMBaseObjectGetDerivedStorage();
    if (!*v1 && *(v6 + 800))
    {
      v7 = OUTLINED_FUNCTION_312();
      itemfig_updateSelectedMediaArrayInternal(v7, v8, 0, 0);
    }

    CFRelease(v5);
  }

  if (a1)
  {

    CFRelease(a1);
  }
}

double itemfig_getDurationIfReady(uint64_t a1, uint64_t a2)
{
  v19 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v18 = 0;
  v17 = 0;
  if (*DerivedStorage || !a2)
  {
    OUTLINED_FUNCTION_239();

    *&v4 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
  }

  else
  {
    v5 = DerivedStorage;
    OUTLINED_FUNCTION_29();
    if (v6)
    {
      time1 = *(v5 + 236);
      v14 = *MEMORY[0x1E6960CC0];
      *&time2.value = *MEMORY[0x1E6960CC0];
      v7 = *(MEMORY[0x1E6960CC0] + 16);
      time2.epoch = v7;
      if ((CMTimeCompare(&time1, &time2) & 0x80000000) == 0)
      {
        OUTLINED_FUNCTION_29();
        if (v6)
        {
          OUTLINED_FUNCTION_132_0((v5 + 260));
          *&time2.value = v14;
          time2.epoch = v7;
          if (CMTimeCompare(&time1, &time2) >= 1)
          {
            v8 = MEMORY[0x1E6960C88];
LABEL_24:
            v4 = *v8;
            *a2 = *v8;
            *(a2 + 16) = *(v8 + 2);
            return *&v4;
          }
        }
      }
    }

    if (*(v5 + 157))
    {
      if (*(*(CMBaseObjectGetVTable() + 16) + 8))
      {
        v9 = OUTLINED_FUNCTION_184();
        if (!v10(v9))
        {
          if (v17 != 2)
          {
            v8 = MEMORY[0x1E6960C68];
            goto LABEL_24;
          }

          FigAssetGetCMBaseObject();
          if (*(*(CMBaseObjectGetVTable() + 8) + 48))
          {
            v11 = OUTLINED_FUNCTION_266();
            if (!v12(v11))
            {
              CMTimeMakeFromDictionary(&time1, v18);
              *&v4 = time1.value;
              *a2 = time1;
              if (v18)
              {
                CFRelease(v18);
              }
            }
          }
        }
      }
    }

    else
    {
      OUTLINED_FUNCTION_239();
      *&v4 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v14, DWORD2(v14), LODWORD(time2.value));
    }
  }

  return *&v4;
}

uint64_t itemfig_getTrackHintLocationForTime(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v77 = *MEMORY[0x1E69E9840];
  v70 = 0;
  valuePtr = 0;
  v8 = *(CMBaseObjectGetDerivedStorage() + 1008);
  if (!v8)
  {
    return 0;
  }

  v9 = *(*(CMBaseObjectGetVTable() + 16) + 56);
  if (!v9)
  {
    return 0;
  }

  cf = 0;
  v69 = 0;
  number[1] = 0;
  if (v9(v8, a2, &v70, 0))
  {
    return 0;
  }

  v10 = v70;
  v11 = *(*(CMBaseObjectGetVTable() + 16) + 32);
  if (!v11 || v11(v10, &v69))
  {
    v41 = 0;
    goto LABEL_36;
  }

  v12 = v69;
  *v71 = *a3;
  *&v71[16] = *(a3 + 16);
  if (*(*(CMBaseObjectGetVTable() + 16) + 16))
  {
    v75 = *v71;
    v76 = *&v71[16];
    OUTLINED_FUNCTION_156_0();
    if (!v13())
    {
      if (*(*(CMBaseObjectGetVTable() + 16) + 152) && (v55 = 0, v57 = 0, OUTLINED_FUNCTION_383(), OUTLINED_FUNCTION_156_0(), v15 = v14(), v15 != -12782) || *(*(CMBaseObjectGetVTable() + 16) + 144) && (OUTLINED_FUNCTION_197(), v15 = v18(v16, v17), v15 != -12782))
      {
        v22 = v15;
LABEL_32:
        if (v22)
        {
          v41 = 0;
        }

        else
        {
          *a4 = valuePtr;
          v41 = 1;
        }

        CFRelease(cf);
        goto LABEL_35;
      }

      number[0] = 0;
      FigSampleCursorGetFigBaseObject();
      v20 = v19;
      v21 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      if (v21)
      {
        v22 = v21(v20, @"ApproximateSampleLocation", 0, number);
        v23 = number[0];
        if (v22 || !number[0])
        {
LABEL_30:
          if (v23)
          {
            CFRelease(v23);
          }

          goto LABEL_32;
        }

        Value = CFNumberGetValue(number[0], kCFNumberSInt64Type, &valuePtr);
        if (dword_1EAF16A10)
        {
          v32 = OUTLINED_FUNCTION_30_0(Value, v25, v26, v27, v28, v29, v30, v31, v55, v57, v59, v61, SBYTE2(v61), SBYTE3(v61), SHIDWORD(v61));
          OUTLINED_FUNCTION_311(v32, v33, v34, v35, v36, v37, v38, v39, v56, v58, v60, v62, v63, v64, v65);
          OUTLINED_FUNCTION_40();
          if (v8)
          {
            if (a1)
            {
              v40 = (CMBaseObjectGetDerivedStorage() + 2096);
            }

            else
            {
              v40 = "";
            }

            *v71 = 136315906;
            *&v71[4] = "itemfig_getTrackHintLocationForTime";
            *&v71[12] = 2048;
            *&v71[14] = a1;
            *&v71[22] = 2082;
            v72 = v40;
            v73 = 2048;
            v74 = valuePtr;
            OUTLINED_FUNCTION_146();
            OUTLINED_FUNCTION_38();
            _os_log_send_and_compose_impl(v42, v43, v44, v45, v46, v47, v12, v48);
            OUTLINED_FUNCTION_612();
          }

          OUTLINED_FUNCTION_7();
          OUTLINED_FUNCTION_414(v49, v50, v51, v52, v53);
        }

        v22 = 0;
      }

      else
      {
        v22 = -12782;
      }

      v23 = number[0];
      goto LABEL_30;
    }
  }

  v41 = 0;
LABEL_35:
  CFRelease(v69);
LABEL_36:
  if (v70)
  {
    CFRelease(v70);
  }

  return v41;
}

void itemfig_ensureTrackStorageArray(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, CFTypeRef a11, CFTypeRef cf, CFTypeRef a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  OUTLINED_FUNCTION_298_0();
  a25 = v26;
  a26 = v27;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  a13 = 0;
  a14 = 0;
  FigSimpleMutexLock();
  if (!*(DerivedStorage + 648))
  {
    if (*(DerivedStorage + 1008))
    {
      v29 = *MEMORY[0x1E695E480];
      v30 = OUTLINED_FUNCTION_383();
      Mutable = CFArrayCreateMutable(v30, v31, 0);
      *(DerivedStorage + 648) = Mutable;
      if (Mutable)
      {
        v33 = *(DerivedStorage + 1008);
        v34 = *(*(CMBaseObjectGetVTable() + 16) + 8);
        if (!v34 || v34(v33, &a14) || a14 < 1)
        {
          goto LABEL_28;
        }

        v35 = 0;
        v36 = *MEMORY[0x1E695E4C0];
        v37 = *MEMORY[0x1E695E4D0];
        while (1)
        {
          cf = 0;
          v38 = malloc_type_calloc(0x140uLL, 1uLL, 0xB2F3FDC6uLL);
          if (!v38)
          {
            break;
          }

          v39 = v38;
          CFArrayAppendValue(*(DerivedStorage + 648), v38);
          v40 = *(DerivedStorage + 1008);
          v41 = *(*(CMBaseObjectGetVTable() + 16) + 48);
          if (v41 && !v41(v40, v35, &a13, v39 + 4, v39))
          {
            FigTrackReaderGetFigBaseObject();
            v43 = v42;
            v44 = *(*(CMBaseObjectGetVTable() + 8) + 48);
            if (v44)
            {
              v44(v43, @"TrackEnabled", v29, &cf);
            }

            v45 = cf;
            if (v36 != cf)
            {
              v39[8] = 1;
            }

            if (v45)
            {
              CFRelease(v45);
            }

            v39[9] = 0;
            if (*(v39 + 1) == 1986618469)
            {
              a11 = 0;
              FigTrackReaderGetFigBaseObject();
              v47 = v46;
              v48 = *(*(CMBaseObjectGetVTable() + 8) + 48);
              if (v48)
              {
                v48(v47, @"ContainsChapters", v29, &a11);
              }

              v49 = a11;
              if (v37 == a11)
              {
                v39[72] = 1;
              }

              if (v49)
              {
                CFRelease(v49);
              }
            }

            if (a13)
            {
              CFRelease(a13);
              a13 = 0;
            }

            if (++v35 < a14)
            {
              continue;
            }
          }

          goto LABEL_28;
        }
      }
    }

    OUTLINED_FUNCTION_303();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
  }

LABEL_28:
  FigSimpleMutexUnlock();
  if (a13)
  {
    CFRelease(a13);
  }

  OUTLINED_FUNCTION_297_0();
}

void itemfig_setDisplayNonForcedSubtitlesEnabled(uint64_t a1, int a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v5 = OUTLINED_FUNCTION_337_0(DerivedStorage);
  v6 = CMBaseObjectGetDerivedStorage();
  if (v5)
  {
    if (*v6)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v22 = os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      if (OUTLINED_FUNCTION_124_0(v22))
      {
        OUTLINED_FUNCTION_32();
        OUTLINED_FUNCTION_65();
        _os_log_send_and_compose_impl(v23, v24, v25, v26, v27, v28, 0, v29);
      }

      OUTLINED_FUNCTION_16();
      OUTLINED_FUNCTION_345_0(v30, v31, v32, v33, v34);
    }

    else if (*(v2 + 1060) != a2)
    {
      *(v2 + 1060) = a2;
      if (*(v2 + 1792))
      {
        OUTLINED_FUNCTION_394_0();
        FigLegibleOutputManagerSetNonForcedEnabledForMediaType(v7, v8, a2);
      }

      if (*(v2 + 1824))
      {
        OUTLINED_FUNCTION_394_0();
        FigRenderedLegibleOutputManagerSetNonForcedEnabledForMediaType(v9, v10, v11);
      }

      v12 = OUTLINED_FUNCTION_298();
      NotificationPayloadForProperties = playerfig_createNotificationPayloadForProperties(v12, v13, v14, v15, v16, v17, v18, v19, @"DisplayNonForcedSubtitles", @"SelectedMediaArray");
      CMNotificationCenterGetDefaultLocalCenter();
      OUTLINED_FUNCTION_171_0();
      FigDispatchAsyncPostNotification();
      if (NotificationPayloadForProperties)
      {
        CFRelease(NotificationPayloadForProperties);
      }
    }

    CFRelease(v5);
  }
}

void itemfig_postSelectedMediaOptionsDidChangeNotification(uint64_t a1)
{
  CMBaseObjectGetDerivedStorage();
  v1 = FigCFWeakReferenceHolderCopyReferencedObject();
  CMBaseObjectGetDerivedStorage();
  if (v1)
  {
    OUTLINED_FUNCTION_601();
    v2 = OUTLINED_FUNCTION_298();
    NotificationPayloadForProperties = playerfig_createNotificationPayloadForProperties(v2, v3, v4, v5, v6, v7, v8, v9, v11, v12);
    CMNotificationCenterGetDefaultLocalCenter();
    OUTLINED_FUNCTION_406_0();
    FigDispatchAsyncPostNotification();
    if (NotificationPayloadForProperties)
    {
      CFRelease(NotificationPayloadForProperties);
    }

    CFRelease(v1);
  }
}

uint64_t itemfig_isAC3PassthroughSupported(uint64_t a1)
{
  BOOLean[16] = *MEMORY[0x1E69E9840];
  CMBaseObjectGetDerivedStorage();
  v1 = FigCFWeakReferenceHolderCopyReferencedObject();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!v1)
  {
    return 0;
  }

  v3 = DerivedStorage;
  if (*DerivedStorage)
  {
    OUTLINED_FUNCTION_81_0();
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    v20 = OUTLINED_FUNCTION_180_0(os_log_and_send_and_compose_flags_and_os_log_type, v13, v14, v15, v16, v17, v18, v19, v33, v34, v35, v36, SBYTE2(v36), BYTE3(v36), SHIDWORD(v36));
    if (OUTLINED_FUNCTION_124_0(v20))
    {
      OUTLINED_FUNCTION_39();
      OUTLINED_FUNCTION_65();
      _os_log_send_and_compose_impl(v21, v22, v23, v24, v25, v26, v3, v27);
    }

    OUTLINED_FUNCTION_16();
    OUTLINED_FUNCTION_345_0(v28, v29, v30, v31, v32);
  }

  else
  {
    FigSimpleMutexLock();
    v4 = *(v3 + 472);
    if (v4)
    {
      v5 = CFRetain(v4);
      FigSimpleMutexUnlock();
      if (v5)
      {
        BOOLean[0] = 0;
        v6 = *(CMBaseObjectGetVTable() + 16);
        if (v6 && (v7 = *(v6 + 48)) != 0)
        {
          v8 = v7(v5, *MEMORY[0x1E69AFC28], *MEMORY[0x1E695E480], BOOLean);
          Value = 0;
          v10 = BOOLean[0];
          if (!v8 && BOOLean[0])
          {
            Value = CFBooleanGetValue(BOOLean[0]);
            v10 = BOOLean[0];
          }

          if (v10)
          {
            CFRelease(v10);
          }
        }

        else
        {
          Value = 0;
        }

        CFRelease(v5);
        goto LABEL_16;
      }
    }

    else
    {
      FigSimpleMutexUnlock();
    }
  }

  Value = 0;
LABEL_16:
  CFRelease(v1);
  return Value;
}

uint64_t itemfig_isAtmosSupported(uint64_t a1)
{
  v158[16] = *MEMORY[0x1E69E9840];
  CMBaseObjectGetDerivedStorage();
  v4 = FigCFWeakReferenceHolderCopyReferencedObject();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!v4)
  {
    return 0;
  }

  if (*DerivedStorage)
  {
    goto LABEL_48;
  }

  isMATAtmosEnabled = playerfig_isMATAtmosEnabled(v4);
  if (isMATAtmosEnabled)
  {
    if (dword_1EAF16A10)
    {
      v14 = OUTLINED_FUNCTION_30_0(isMATAtmosEnabled, v7, v8, v9, v10, v11, v12, v13, v108, v115, v122, v129, SBYTE2(v129), SBYTE3(v129), SHIDWORD(v129));
      OUTLINED_FUNCTION_311(v14, v15, v16, v17, v18, v19, v20, v21, v109, v116, v123, v130, v136, v141, v146);
      OUTLINED_FUNCTION_40();
      if (!v2)
      {
LABEL_34:
        OUTLINED_FUNCTION_109();
        v86 = 1;
        OUTLINED_FUNCTION_70_0();
        fig_log_call_emit_and_clean_up_after_send_and_compose();
        goto LABEL_35;
      }

      CMBaseObjectGetDerivedStorage();
      if (!a1)
      {
        goto LABEL_8;
      }

LABEL_7:
      CMBaseObjectGetDerivedStorage();
LABEL_8:
      OUTLINED_FUNCTION_2_0();
LABEL_9:
      OUTLINED_FUNCTION_38();
      _os_log_send_and_compose_impl(v22, v23, v24, v25, v26, v27, v1, v28);
      OUTLINED_FUNCTION_612();
      goto LABEL_34;
    }

    goto LABEL_33;
  }

  v29 = OUTLINED_FUNCTION_234();
  itemfig_isSpatializationAllowed(v29, v30, 0, v31, v32, v33, v34, v35, v108, v115, v122, v129, v151, SWORD2(v151), SBYTE6(v151), HIBYTE(v151), v152, v153, v154, v155, v156, v157, v158[0], v158[1], v158[2], v158[3], v158[4], v158[5], v158[6]);
  if (!v36)
  {
    LOBYTE(v158[0]) = 0;
    v52 = fp_bufferedAirPlayActiveAndSupportsAtmos(v4, v158);
    if (v52 && LOBYTE(v158[0]))
    {
      if (!dword_1EAF16A10)
      {
        goto LABEL_33;
      }

      v60 = OUTLINED_FUNCTION_30_0(v52, v53, v54, v55, v56, v57, v58, v59, v110, v117, v124, v131, SBYTE2(v131), SBYTE3(v131), SHIDWORD(v131));
      OUTLINED_FUNCTION_311(v60, v61, v62, v63, v64, v65, v66, v67, v112, v119, v126, v133, v138, v143, v148);
      OUTLINED_FUNCTION_40();
      if (!v2)
      {
        goto LABEL_34;
      }

      CMBaseObjectGetDerivedStorage();
      if (a1)
      {
        goto LABEL_20;
      }

      goto LABEL_37;
    }

    LODWORD(v158[0]) = 0;
    CMBaseObjectGetDerivedStorage();
    v68 = FigCFWeakReferenceHolderCopyReferencedObject();
    v69 = CMBaseObjectGetDerivedStorage();
    if (v68)
    {
      v1 = v69;
      if (*v69)
      {
        CFRelease(v68);
      }

      else
      {
        FigSimpleMutexLock();
        v77 = *(v1 + 472);
        if (v77)
        {
          v2 = FPSupport_GetAudioSessionOutputChannelCount(v77, v158) != 0;
        }

        else
        {
          v2 = 0;
        }

        FigSimpleMutexUnlock();
        v1 = LODWORD(v158[0]);
        CFRelease(v68);
        if (!v2 && v1 == 16)
        {
          if (!dword_1EAF16A10)
          {
            goto LABEL_33;
          }

          v78 = OUTLINED_FUNCTION_30_0(v69, v70, v71, v72, v73, v74, v75, v76, v110, v117, v124, v131, SBYTE2(v131), SBYTE3(v131), SHIDWORD(v131));
          OUTLINED_FUNCTION_311(v78, v79, v80, v81, v82, v83, v84, v85, v113, v120, v127, v134, v139, v144, v149);
          OUTLINED_FUNCTION_40();
          if (!v2)
          {
            goto LABEL_34;
          }

          CMBaseObjectGetDerivedStorage();
          if (a1)
          {
LABEL_20:
            CMBaseObjectGetDerivedStorage();
          }

LABEL_37:
          OUTLINED_FUNCTION_2_0();
          goto LABEL_9;
        }
      }
    }

    if (dword_1EAF16A10)
    {
      v88 = OUTLINED_FUNCTION_30_0(v69, v70, v71, v72, v73, v74, v75, v76, v110, v117, v124, v131, SBYTE2(v131), SBYTE3(v131), SHIDWORD(v131));
      OUTLINED_FUNCTION_311(v88, v89, v90, v91, v92, v93, v94, v95, v114, v121, v128, v135, v140, v145, v150);
      OUTLINED_FUNCTION_40();
      if (v2)
      {
        CMBaseObjectGetDerivedStorage();
        if (a1)
        {
          CMBaseObjectGetDerivedStorage();
        }

        OUTLINED_FUNCTION_2_0();
        OUTLINED_FUNCTION_38();
        _os_log_send_and_compose_impl(v96, v97, v98, v99, v100, v101, v1, v102);
        OUTLINED_FUNCTION_612();
      }

      OUTLINED_FUNCTION_7();
      OUTLINED_FUNCTION_414(v103, v104, v105, v106, v107);
    }

LABEL_48:
    v86 = 0;
    goto LABEL_35;
  }

  if (dword_1EAF16A10)
  {
    v44 = OUTLINED_FUNCTION_30_0(v36, v37, v38, v39, v40, v41, v42, v43, v110, v117, v124, v131, SBYTE2(v131), SBYTE3(v131), SHIDWORD(v131));
    OUTLINED_FUNCTION_311(v44, v45, v46, v47, v48, v49, v50, v51, v111, v118, v125, v132, v137, v142, v147);
    OUTLINED_FUNCTION_40();
    if (!v2)
    {
      goto LABEL_34;
    }

    CMBaseObjectGetDerivedStorage();
    if (!a1)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

LABEL_33:
  v86 = 1;
LABEL_35:
  CFRelease(v4);
  return v86;
}

BOOL itemfig_isTrackDecodable(uint64_t a1, uint64_t a2)
{
  CMBaseObjectGetDerivedStorage();
  desc = 0;
  cf = 0;
  if (!*(*(CMBaseObjectGetVTable() + 16) + 56) || (v3 = OUTLINED_FUNCTION_403_0(), v4(v3, a2)))
  {
    v7 = 0;
  }

  else
  {
    v5 = itemfig_copyFormatDescription(cf, &desc);
    v6 = desc;
    if (!v5)
    {
      v7 = CMAudioFormatDescriptionGetRichestDecodableFormat(desc) != 0;
      if (!v6)
      {
        goto LABEL_7;
      }

      goto LABEL_5;
    }

    v7 = 0;
    if (desc)
    {
LABEL_5:
      CFRelease(v6);
    }
  }

LABEL_7:
  if (cf)
  {
    CFRelease(cf);
  }

  return v7;
}

void playerfig_getDeviceMaximumNumberOfPhysicalOutputChannels()
{
  OUTLINED_FUNCTION_471();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  valuePtr = 2;
  cf = 0;
  if (!FigCFEqual())
  {
    FigSimpleMutexLock();
    v6 = *(DerivedStorage + 176);
    if (v6)
    {
      v5 = CFRetain(v6);
      FigSimpleMutexUnlock();
      if (v5)
      {
        FigBufferedAirPlayOutputGetCMBaseObject();
        v8 = v7;
        v9 = *(*(CMBaseObjectGetVTable() + 8) + 48);
        if (!v9)
        {
          v4 = 0;
          goto LABEL_6;
        }

        if (v9(v8, @"MaximumNumberOfOutputChannels", *MEMORY[0x1E695E480], &cf))
        {
          v4 = 0;
          goto LABEL_6;
        }

        CFNumberGetValue(cf, kCFNumberSInt32Type, &valuePtr);
        v4 = 0;
        v3 = 1;
        goto LABEL_4;
      }
    }

    else
    {
      FigSimpleMutexUnlock();
    }

    FigSimpleMutexLock();
    v10 = *(DerivedStorage + 472);
    if (v10)
    {
      v4 = CFRetain(v10);
      FigSimpleMutexUnlock();
      if (v4)
      {
        v11 = *(CMBaseObjectGetVTable() + 16);
        if (!v11)
        {
          v5 = 0;
          goto LABEL_6;
        }

        v12 = *(v11 + 48);
        if (!v12)
        {
          v5 = 0;
          goto LABEL_6;
        }

        if (v12(v4, *MEMORY[0x1E69B0120], *MEMORY[0x1E695E480], &cf))
        {
          v5 = 0;
          goto LABEL_6;
        }

        if (cf)
        {
          CFNumberGetValue(cf, kCFNumberSInt32Type, &valuePtr);
        }
      }

      v3 = 0;
      goto LABEL_3;
    }

    FigSimpleMutexUnlock();
  }

  v3 = 0;
  v4 = 0;
LABEL_3:
  v5 = 0;
LABEL_4:
  *v1 = valuePtr;
  if (v0)
  {
    *v0 = v3;
  }

LABEL_6:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v4)
  {
    CFRelease(v4);
  }

  if (v5)
  {
    CFRelease(v5);
  }

  OUTLINED_FUNCTION_652();
}

void itemfig_isSpatializationAllowed(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, int a13, __int16 a14, char a15, unsigned __int8 a16, const __CFDictionary *a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29)
{
  OUTLINED_FUNCTION_298_0();
  a28 = v30;
  a29 = v31;
  v33 = v32;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v35 = OUTLINED_FUNCTION_354_0(DerivedStorage);
  v36 = CMBaseObjectGetDerivedStorage();
  if (v35)
  {
    if (!*v36)
    {
      if (FPSupport_HasTrackOfType(*(v29 + 1008), 1986618469))
      {
        v37 = 1836019574;
      }

      else
      {
        v37 = 1936684398;
      }

      v38 = CMBaseObjectGetDerivedStorage();
      a17 = 0;
      FigSimpleMutexLock();
      v39 = *(v38 + 472);
      if (v39)
      {
        v40 = CFRetain(v39);
        FigSimpleMutexUnlock();
        if (v40)
        {
          if (FPSupport_CreateAudioSessionSpatializationCapabilities(v40, v37, &a17))
          {
            CFRelease(v40);
          }

          else
          {
            v41 = a17;
            CFRelease(v40);
            if (v41)
            {
              Value = CFDictionaryGetValue(v41, @"SpatialCapabilitiesKey_spatialAudioSources");
              if (Value)
              {
                v43 = Value;
                FigCFDictionaryGetBooleanIfPresent();
                if (CFArrayGetCount(v43) >= 1)
                {
                  v44 = 0;
                  do
                  {
                    OUTLINED_FUNCTION_732();
                    FigCFArrayGetInt32AtIndex();
                    ++v44;
                  }

                  while (v44 < CFArrayGetCount(v43));
                }

                if (!v33)
                {
                  if (*(v29 + 1440))
                  {
                    CMBaseObjectGetDerivedStorage();
                    if (!FigCFEqual() && !FigCFEqual())
                    {
                      FigCFEqual();
                    }
                  }
                }
              }

              CFRelease(v41);
            }
          }
        }
      }

      else
      {
        FigSimpleMutexUnlock();
      }
    }

    CFRelease(v35);
  }

  OUTLINED_FUNCTION_297_0();
}

CFIndex itemfig_rebuildRenderPipelinesAndBossGuts(const void *a1, int a2, int a3, uint64_t i, uint64_t a5, uint64_t a6, uint64_t a7, CFIndex p_duration)
{
  LODWORD(v2079) = a3;
  LODWORD(v1842) = a2;
  OctaviaClosedCaptionsRenderPipeline = cf;
  v2195 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v1859 = *(DerivedStorage + 1);
  OctaviaSubtitleRenderPipeline = CMBaseObjectGetDerivedStorage();
  v2168 = 0;
  RenderTriplesForVideoComposition = *(DerivedStorage + 2065);
  v2190 = 0u;
  v2191 = 0u;
  v2188 = 0u;
  v2189 = 0u;
  v2186 = 0u;
  v2187 = 0u;
  *v2185 = 0u;
  context = objc_autoreleasePoolPush();
  v1893 = OctaviaSubtitleRenderPipeline;
  HIDWORD(v1910) = a7;
  HIDWORD(v1842) = RenderTriplesForVideoComposition;
  if (!a6 && !a7)
  {
    v18 = FigDeferredTransactionCreate(*MEMORY[0x1E695E480], &v2168);
    if (v18)
    {
      v21 = v18;
      OUTLINED_FUNCTION_67_0();
      OUTLINED_FUNCTION_26_0();
      LODWORD(v1825) = 0;
      goto LABEL_1182;
    }

    a6 = v2168;
    goto LABEL_5;
  }

  if (!a7)
  {
LABEL_5:
    FigSimpleMutexLock();
    v19 = *(OctaviaSubtitleRenderPipeline + 928);
    if (v19)
    {
      CFRelease(v19);
      *(OctaviaSubtitleRenderPipeline + 928) = 0;
    }

    LODWORD(theSet) = 1;
    *(OctaviaSubtitleRenderPipeline + 936) = 1;
    FigSimpleMutexUnlock();
    goto LABEL_8;
  }

  if (!*(DerivedStorage + 44))
  {
    LODWORD(v1825) = a6;
    OUTLINED_FUNCTION_67_0();
    OUTLINED_FUNCTION_26_0();
    v21 = 4294954433;
    goto LABEL_1182;
  }

  LODWORD(theSet) = 0;
LABEL_8:
  v20 = *(OctaviaSubtitleRenderPipeline + 528);
  LODWORD(v1718) = v20 && CFArrayGetCount(v20) && OUTLINED_FUNCTION_233_0() == a1;
  v22 = itemfig_assureBasicsReadyForInspection(a1);
  v1825 = a6;
  if (v22)
  {
    goto LABEL_1299;
  }

  if (!*(DerivedStorage + 44))
  {
    PlayableDurationAtCurrentTime = itemfig_getPlayableDurationAtCurrentTime(a1);
    itemfig_monitorPlayability(a1, v31, v32, v33, v34, v35, v36, v37, v1454, v1473, SHIDWORD(v1473), v1493, v1512, SBYTE2(v1512), BYTE3(v1512), SHIDWORD(v1512), v1531, SHIDWORD(v1531), v1548, SWORD2(v1548), key, v1582, v1599, v1616, v1633, v1650, SHIDWORD(v1650), v1667, v1684, v1701, v1718, v1735, v1754, v1772, v1790, v1808, a6, v1842, v1859, context, OctaviaSubtitleRenderPipeline, v1910, v1927, v1947, allocator, v1981[0], v1981[1], v2012, v2028, alloc, theArray, v2079, v2097, v2120, *(&v2120 + 1), theSet, v2168);
    *(DerivedStorage + 212) = PlayableDurationAtCurrentTime;
    FigSimpleMutexLock();
    OctaviaSubtitleRenderPipeline = *(DerivedStorage + 244);
    if (OctaviaSubtitleRenderPipeline && *(*(CMBaseObjectGetVTable() + 16) + 56))
    {
      v38 = OUTLINED_FUNCTION_285_0();
      v39(v38);
    }

    FigSimpleMutexUnlock();
  }

  itemfig_ensureTrackStorageArray(a1, v23, v24, v25, v26, v27, v28, v29, v1454, v1473, v1493, v1512, v1531, v1548, key, v1582, v1599, v1616, v1633, v1650, v1667, v1684, v1701, v1718, v1735, v1754);
  if (v22)
  {
LABEL_1299:
    v21 = v22;
    OUTLINED_FUNCTION_67_0();
    OUTLINED_FUNCTION_26_0();
    goto LABEL_1182;
  }

  *&v2120 = a5;
  LODWORD(v1981[0]) = p_duration;
  if (!a7 && DerivedStorage[1745])
  {
    itemfig_accumulateFrameDropCountFromAllVideoPipelines(a1);
  }

  OctaviaClosedCaptionsRenderPipeline = CMBaseObjectGetDerivedStorage();
  v40 = *(OctaviaClosedCaptionsRenderPipeline + 8);
  a6 = CMBaseObjectGetDerivedStorage();
  v2175 = 0;
  v2176 = 0;
  v2193 = 0;
  memset(value, 0, sizeof(value));
  v41 = *(a6 + 1137);
  v2174 = 0;
  FigSimpleMutexLock();
  v42 = *(a6 + 472);
  v2029 = DerivedStorage;
  if (v42)
  {
    OctaviaSubtitleRenderPipeline = CFRetain(v42);
  }

  else
  {
    OctaviaSubtitleRenderPipeline = 0;
  }

  FigSimpleMutexUnlock();
  IsAnAudioDeviceAvailable = FPSupport_IsAnAudioDeviceAvailable(OctaviaSubtitleRenderPipeline);
  *(a6 + 1138) = IsAnAudioDeviceAvailable;
  v1928 = a1;
  if (!IsAnAudioDeviceAvailable && !*(a6 + 176))
  {
    if (dword_1EAF16A10)
    {
      OUTLINED_FUNCTION_362_0();
      v54 = OUTLINED_FUNCTION_252_0(qword_1EAF16A08, v47, v48, v49, v50, v51, v52, v53, v1454, v1473, v1493, v1512, v1531, v1548, key, v1582, v1599, v1616, v1633, v1650, v1667, v1684, v1701, v1718, v1736[0], v1736[1], v1772, v1790, v1808, v1825, v1842, v1859, context, v1893, v1910, a1, v1947, allocator, v1981[0], v1981[1], v2012, DerivedStorage, alloc, theArray, v2079, OctaviaSubtitleRenderPipeline, v2120, *(&v2120 + 1), theSet, v2168, v2169, *v2170, type[0], v2172, valuePtr);
      a6 = valuePtr;
      v55 = type[0];
      os_log_type_enabled(v54, type[0]);
      OUTLINED_FUNCTION_134();
      if (v58)
      {
        a7 = v56;
      }

      else
      {
        a7 = a6;
      }

      if (a7)
      {
        if (v40)
        {
          v57 = (CMBaseObjectGetDerivedStorage() + 972);
        }

        else
        {
          v57 = "";
        }

        if (a1)
        {
          CMBaseObjectGetDerivedStorage();
        }

        OUTLINED_FUNCTION_32_0();
        *&cf[14] = v40;
        *&cf[22] = 2082;
        *&cf[24] = v57;
        *&cf[32] = v116;
        *&cf[34] = a1;
        *v2178 = 2082;
        *&v2178[2] = v117;
        OUTLINED_FUNCTION_52_0();
        OUTLINED_FUNCTION_44_0();
        _os_log_send_and_compose_impl(v118, v119, v120, v121, v122, v123, v55, v124);
        a6 = valuePtr;
      }

      DerivedStorage = v2029;
      OUTLINED_FUNCTION_7();
      OUTLINED_FUNCTION_238_0(v125, v126, v127, v128, v129);
      OUTLINED_FUNCTION_258_0();
      v21 = 0;
      RenderTriplesForVideoComposition = 2;
      i = HIDWORD(v1910);
      OctaviaSubtitleRenderPipeline = v2098;
      p_duration = v2120;
      if (v2098)
      {
        goto LABEL_205;
      }

      goto LABEL_206;
    }

    goto LABEL_83;
  }

  if (*(OctaviaClosedCaptionsRenderPipeline + 2016) == 0.0)
  {
    *(OctaviaClosedCaptionsRenderPipeline + 2016) = CFAbsoluteTimeGetCurrent();
  }

  if (!*(a6 + 128))
  {
    v46 = 0;
    a7 = 1;
    goto LABEL_53;
  }

  if (CFArrayGetCount(*(OctaviaClosedCaptionsRenderPipeline + 648)) < 1)
  {
    v46 = 0;
    a7 = 1;
    goto LABEL_53;
  }

  v44 = 0;
  while (1)
  {
    CFArrayGetValueAtIndex(*(OctaviaClosedCaptionsRenderPipeline + 648), 0);
    OUTLINED_FUNCTION_363_0();
    if (!v58 || !*(v45 + 8))
    {
      goto LABEL_40;
    }

    if (v44 >= 1)
    {
      break;
    }

    ++v44;
LABEL_40:
    OUTLINED_FUNCTION_378_0();
    if (v58)
    {
      v46 = 0;
      a7 = 1;
      goto LABEL_53;
    }
  }

  CMNotificationCenterGetDefaultLocalCenter();
  v46 = 1;
  FigDispatchAsyncPostNotification();
  a7 = 0;
LABEL_53:
  if (OctaviaSubtitleRenderPipeline)
  {
    v58 = 0;
  }

  else
  {
    v58 = v41 == 0;
  }

  if (v58)
  {
    v41 = 1;
  }

  if ((theSet & 1) == 0)
  {
    if (v41)
    {
LABEL_83:
      OUTLINED_FUNCTION_258_0();
      v21 = 0;
      goto LABEL_84;
    }

    p_duration = v2120;
    if (!a7 || *(a6 + 664))
    {
      goto LABEL_98;
    }

    v108 = *(OctaviaClosedCaptionsRenderPipeline + 1036);
    if (!v108)
    {
      OUTLINED_FUNCTION_258_0();
      v21 = 0;
      goto LABEL_99;
    }

    if (!itemfig_canTrackPassthrough(a1, v108))
    {
      goto LABEL_113;
    }

    v109 = OUTLINED_FUNCTION_302_0();
    if (itemfig_isTrackAtmos(v109, v110))
    {
      itemfig_isEC3PassthroughSupported(a1);
    }

    v111 = OUTLINED_FUNCTION_302_0();
    if (itemfig_isTrackEnhancedAC3(v111, v112))
    {
      itemfig_isEC3PassthroughSupported(a1);
    }

    v113 = OUTLINED_FUNCTION_302_0();
    if (itemfig_isTrackAC3(v113, v114))
    {
      isAC3PassthroughSupported = itemfig_isAC3PassthroughSupported(a1);
      a7 = isAC3PassthroughSupported != 0;
      if (isAC3PassthroughSupported)
      {
        v115 = 1633889587;
      }

      else
      {
        v115 = 0;
      }

      if (!OctaviaSubtitleRenderPipeline)
      {
        goto LABEL_114;
      }
    }

    else
    {
LABEL_113:
      v115 = 0;
      a7 = 0;
      if (!OctaviaSubtitleRenderPipeline)
      {
LABEL_114:
        v21 = 0;
LABEL_115:
        if (*(a6 + 960) != a7 || *(a6 + 964) != v115)
        {
LABEL_98:
          OUTLINED_FUNCTION_258_0();
          v21 = 4294954433;
          goto LABEL_99;
        }

        OUTLINED_FUNCTION_258_0();
LABEL_99:
        RenderTriplesForVideoComposition = 2;
        i = HIDWORD(v1910);
        if (OctaviaSubtitleRenderPipeline)
        {
          goto LABEL_205;
        }

        goto LABEL_206;
      }
    }

    LODWORD(valuePtr) = 2;
    formatDescriptionOut[0].start.value = 0;
    v21 = FigAudioSessionCopyMXSessionProperty(OctaviaSubtitleRenderPipeline, *MEMORY[0x1E69B0120], *MEMORY[0x1E695E480], formatDescriptionOut);
    if (!v21 && formatDescriptionOut[0].start.value)
    {
      v1090 = OUTLINED_FUNCTION_302_0();
      TrackAudioChannelCount = itemfig_getTrackAudioChannelCount(v1090, v1091, 1);
      CFNumberGetValue(formatDescriptionOut[0].start.value, kCFNumberSInt32Type, &valuePtr);
      v1093 = valuePtr;
      if (valuePtr < 3 || ((v1094 = *(a6 + 968), TrackAudioChannelCount <= 2) ? (v1095 = v1094 < 3) : (v1095 = 0), v1095))
      {
        v21 = 0;
      }

      else
      {
        if (TrackAudioChannelCount < valuePtr)
        {
          v1093 = TrackAudioChannelCount;
        }

        if (v1094 == v1093)
        {
          v21 = 0;
        }

        else
        {
          v21 = 4294954433;
        }
      }
    }

    v1143 = OUTLINED_FUNCTION_302_0();
    if (itemfig_isTrackDecodable(v1143, v1144))
    {
      *cf = 0;
      if (itemfig_getMaximumNumberOfSpatializedOutputChannels(a1, cf))
      {
        v1145 = 1;
      }

      else
      {
        v1145 = *cf < 3;
      }

      if (v1145)
      {
        a7 = a7;
      }

      else
      {
        v115 = 0;
        a7 = 0;
      }
    }

    if (formatDescriptionOut[0].start.value)
    {
      CFRelease(formatDescriptionOut[0].start.value);
    }

    goto LABEL_115;
  }

  DerivedStorage = *MEMORY[0x1E695E480];
  v59 = OUTLINED_FUNCTION_173_0();
  theArray = CFArrayCreateMutable(v59, v60, v61);
  if (!theArray)
  {
    OUTLINED_FUNCTION_39_0();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v1454, v1473, v1493);
    v21 = v1203;
    OUTLINED_FUNCTION_258_0();
LABEL_84:
    RenderTriplesForVideoComposition = 2;
    i = HIDWORD(v1910);
    DerivedStorage = v2029;
    p_duration = v2120;
    if (OctaviaSubtitleRenderPipeline)
    {
      goto LABEL_205;
    }

    goto LABEL_206;
  }

  v2099 = OctaviaSubtitleRenderPipeline;
  if (!*(OctaviaClosedCaptionsRenderPipeline + 960) && !*(OctaviaClosedCaptionsRenderPipeline + 968))
  {
    if (*(OctaviaClosedCaptionsRenderPipeline + 1256))
    {
      FigAssetGetCMBaseObject();
      if (*(*(CMBaseObjectGetVTable() + 8) + 48))
      {
        v106 = OUTLINED_FUNCTION_319_0();
        v107(v106);
      }
    }
  }

  v63 = *(a6 + 664);
  if (v63)
  {
    if (CFArrayGetCount(v63) >= 1)
    {
      do
      {
        ValueAtIndex = CFArrayGetValueAtIndex(*(a6 + 664), 0);
        playerfig_removeAudioRenderPipelineListeners(v40, ValueAtIndex);
        CFArrayRemoveValueAtIndex(*(a6 + 664), 0);
      }

      while (CFArrayGetCount(*(a6 + 664)) > 0);
    }

    v65 = *(a6 + 664);
    if (v65)
    {
      CFRelease(v65);
      *(a6 + 664) = 0;
    }
  }

  *(OctaviaClosedCaptionsRenderPipeline + 1874) = 1;
  if (v41)
  {
    v66 = 1;
  }

  else
  {
    v66 = a7;
  }

  OctaviaSubtitleRenderPipeline = kFigRenderPipelineProperty_LoggingIdentifier;
  if ((v66 & 1) == 0)
  {
    if (*(a6 + 584))
    {
      FigRenderPipelineGetFigBaseObject();
      v87 = v86;
      v88 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      if (v88)
      {
        v88(v87, @"LoggingIdentifier", DerivedStorage, &v2174);
      }

      if (dword_1EAF16A10 >= 2)
      {
        OUTLINED_FUNCTION_362_0();
        v96 = OUTLINED_FUNCTION_252_0(qword_1EAF16A08, v89, v90, v91, v92, v93, v94, v95, v1454, v1473, v1493, v1512, v1531, v1548, key, v1582, v1599, v1616, v1633, v1650, v1667, v1684, v1701, v1718, v1736[0], v1736[1], v1772, v1790, v1808, v1825, v1842, v1859, context, v1893, v1910, a1, v1947, allocator, v1981[0], v1981[1], v2012, v2029, alloc, theArray, v2079, v2099, v2120, *(&v2120 + 1), theSet, v2168, v2169, *v2170, type[0], v2172, valuePtr);
        OUTLINED_FUNCTION_244_0(v96, v97, v98, v99, v100, v101, v102, v103, v1456, v1475, v1495, v1514, v1533, v1550, keyb, v1584, v1601, v1618, v1635, v1652, v1669, v1686, v1703, v1720, v1738, v1756, v1774, v1792, v1810, v1827, v1844, v1861, contextb, v1895, v1912, v1930, v1949, allocatorc, v1983, v1998, v2014, v2031, allocc, theArrayc, v2081, v2101, v2122, v2139, theSetc, v2168, v2169, *v2170, type[0], v2172, valuePtr);
        OUTLINED_FUNCTION_125();
        if (v58)
        {
          v105 = v104;
        }

        else
        {
          v105 = v41;
        }

        if (v105)
        {
          if (a1)
          {
            CMBaseObjectGetDerivedStorage();
          }

          *cf = 136315906;
          *&cf[4] = "itemfig_createRenderTriplesForAudio";
          OUTLINED_FUNCTION_215_0();
          *&cf[32] = 2114;
          OUTLINED_FUNCTION_301_0();
          OUTLINED_FUNCTION_52_0();
          OUTLINED_FUNCTION_44_0();
          _os_log_send_and_compose_impl(v130, v131, v132, v133, v134, v135, kFigRenderPipelineProperty_LoggingIdentifier, v136);
        }

        OUTLINED_FUNCTION_2();
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      playerfig_removeAudioRenderPipelineListeners(v40, *(a6 + 584));
      v137 = *(a6 + 584);
      if (v137)
      {
        CFRelease(v137);
        *(a6 + 584) = 0;
      }

      v138 = *(a6 + 688);
      if (v138)
      {
        CFRelease(v138);
        *(a6 + 688) = 0;
      }

      v139 = *(a6 + 632);
      if (v139)
      {
        CFRelease(v139);
        *(a6 + 632) = 0;
      }

      v140 = *(a6 + 624);
      if (v140)
      {
        CFRelease(v140);
        *(a6 + 624) = 0;
      }

      v141 = *(a6 + 640);
      if (v141)
      {
        CFRelease(v141);
        *(a6 + 640) = 0;
      }

      v142 = *(a6 + 648);
      if (v142)
      {
        CFRelease(v142);
        *(a6 + 648) = 0;
      }
    }

    FPSupport_ReleasePassthroughHelper(*(a6 + 952), v62);
    *(a6 + 952) = 0;
    v143 = OUTLINED_FUNCTION_173_0();
    *(a6 + 664) = CFArrayCreateMutable(v143, v144, v145);
    Count = CFArrayGetCount(*(OctaviaClosedCaptionsRenderPipeline + 648));
    if (Count < 1)
    {
      LOBYTE(a1) = 0;
      OUTLINED_FUNCTION_286_0();
    }

    else
    {
      v147 = Count;
      LOBYTE(a1) = 0;
      v148 = 0;
      v1947 = @"TrackID";
      allocator = DerivedStorage;
      v1790 = @"AudioSubmixID";
      LODWORD(alloc) = 2;
      v1736[0] = @"AudioProcessingTap";
      DerivedStorage = v2029;
      do
      {
        v149 = CFArrayGetValueAtIndex(*(OctaviaClosedCaptionsRenderPipeline + 648), v148);
        if (v149[1] == 1936684398)
        {
          v150 = v149;
          if (*(v149 + 8))
          {
            itemfig_shouldEnableSpatializationForTrack(v1928, *v149);
            v151 = v150[2];
            if (v151)
            {
              CFRelease(v151);
              v150[2] = 0;
            }

            fp_buildAudioRenderPipelineForTrack();
            DerivedStorage = v2029;
            if (!v152)
            {
              alloc = (v150 + 2);
              CFArrayAppendValue(*(a6 + 664), v150[2]);
              *value = *v150;
              *&value[8] = 0;
              *&value[24] = CFRetain(v150[2]);
              v2193 = 0;
              itemfig_updateVolumeOffset(v1928);
              OUTLINED_FUNCTION_439();
              itemfig_applyLoudnessInfo(v153, v154, v155, v156);
              v157 = OUTLINED_FUNCTION_245();
              itemfig_applyAudioProcessingUnitsToTrack(v157, v158);
              v159 = OUTLINED_FUNCTION_245();
              itemfig_applyAllAudioCurvesToTrack(v159, v160);
              itemfig_applyAdjustTargetLevel(v1928);
              itemfig_applyAdjustCompressionProfile(v1928);
              v161 = CFNumberCreate(allocator, kCFNumberSInt32Type, v150);
              FigRenderPipelineGetFigBaseObject();
              v163 = v162;
              v164 = *(*(CMBaseObjectGetVTable() + 8) + 56);
              if (v164)
              {
                v164(v163, @"TrackID", v161);
              }

              if (v161)
              {
                CFRelease(v161);
              }

              OUTLINED_FUNCTION_416_0();
              v165 = OUTLINED_FUNCTION_331_0();
              playerfig_determineAudioProcessingTapRoles(v165, v166, v167, v168);
              if (formatDescriptionOut[0].start.value)
              {
                v1701 = formatDescriptionOut[0].start.value;
                v169 = 0;
              }

              else if (*cf)
              {
                v1701 = *cf;
                v169 = *(a6 + 632);
                if (!v169)
                {
                  v169 = CFUUIDCreate(allocator);
                  *(a6 + 632) = v169;
                }
              }

              else
              {
                v169 = 0;
                v1701 = 0;
              }

              FigRenderPipelineGetFigBaseObject();
              v171 = v170;
              v172 = *(*(CMBaseObjectGetVTable() + 8) + 56);
              if (v172)
              {
                v172(v171, @"AudioSubmixID", v169);
              }

              FigRenderPipelineGetFigBaseObject();
              v174 = v173;
              v175 = *(*(CMBaseObjectGetVTable() + 8) + 56);
              if (v175)
              {
                v175(v174, @"AudioProcessingTap", v1701);
              }

              v176 = *(a6 + 624);
              v177 = *cf;
              *(a6 + 624) = *cf;
              if (v177)
              {
                CFRetain(v177);
              }

              if (v176)
              {
                CFRelease(v176);
              }

              OUTLINED_FUNCTION_373();
              itemfig_applyTimePitchAlgorithmToTrack();
              LOBYTE(a1) = 1;
              fp_createAudioRenderPipelineOptionsForTrack();
              CFArrayAppendValue(theArray, value);
              itemfig_resetRenderTriple(value);
              LODWORD(alloc) = 0;
              DerivedStorage = v2029;
            }
          }
        }

        ++v148;
      }

      while (v147 != v148);
    }

    playerfig_applyEQPreset(v40);
    playerfig_applySoftwareVolume(v40, @"SoftwareVolume1", 0, *(a6 + 804), 0.0);
    if (*(a6 + 812))
    {
      playerfig_applySoftwareVolume(v40, @"SoftwareVolume2", 1, *(a6 + 808), 0.0);
    }

    v178 = 1.0;
    if (*(a6 + 813))
    {
      v178 = 0.0;
    }

    playerfig_applySoftwareVolume(v40, @"SoftwareVolume5", 1, v178, 0.0);
    OctaviaSubtitleRenderPipeline = v2099;
    goto LABEL_203;
  }

  allocator = (OctaviaClosedCaptionsRenderPipeline + 1036);
  v67 = *(OctaviaClosedCaptionsRenderPipeline + 1036);
  if (!v67 || v41)
  {
    OUTLINED_FUNCTION_359_0();
    if (v68)
    {
      if (dword_1EAF16A10 >= 2)
      {
        OUTLINED_FUNCTION_362_0();
        v76 = OUTLINED_FUNCTION_252_0(qword_1EAF16A08, v69, v70, v71, v72, v73, v74, v75, v1454, v1473, v1493, v1512, v1531, v1548, key, v1582, v1599, v1616, v1633, v1650, v1667, v1684, v1701, v1718, v1736[0], v1736[1], v1772, v1790, v1808, v1825, v1842, v1859, context, v1893, v1910, a1, v1947, allocator, v1981[0], v1981[1], v2012, v2029, alloc, theArray, v2079, v2099, v2120, *(&v2120 + 1), theSet, v2168, v2169, *v2170, type[0], v2172, valuePtr);
        OUTLINED_FUNCTION_244_0(v76, v77, v78, v79, v80, v81, v82, v83, v1455, v1474, v1494, v1513, v1532, v1549, keya, v1583, v1600, v1617, v1634, v1651, v1668, v1685, v1702, v1719, v1737, v1755, v1773, v1791, v1809, v1826, v1843, v1860, contexta, v1894, v1911, v1929, v1948, allocatorb, v1982, v1997, v2013, v2030, allocb, theArrayb, v2080, v2100, v2121, v2138, theSetb, v2168, v2169, *v2170, type[0], v2172, valuePtr);
        OUTLINED_FUNCTION_125();
        if (v58)
        {
          v85 = v84;
        }

        else
        {
          v85 = v41;
        }

        if (v85)
        {
          if (a1)
          {
            CMBaseObjectGetDerivedStorage();
          }

          *cf = 136315650;
          *&cf[4] = "itemfig_createRenderTriplesForAudio";
          OUTLINED_FUNCTION_17_0();
          OUTLINED_FUNCTION_52_0();
          OUTLINED_FUNCTION_44_0();
          _os_log_send_and_compose_impl(v179, v180, v181, v182, v183, v184, kFigRenderPipelineProperty_LoggingIdentifier, v185);
          v41 = valuePtr;
        }

        OUTLINED_FUNCTION_2();
        fig_log_call_emit_and_clean_up_after_send_and_compose();
        OUTLINED_FUNCTION_359_0();
      }

      playerfig_removeAudioRenderPipelineListeners(v40, v68);
      v186 = *(a6 + 584);
      if (v186)
      {
        CFRelease(v186);
        *(a6 + 584) = 0;
      }

      v187 = *(a6 + 688);
      if (v187)
      {
        CFRelease(v187);
        *(a6 + 688) = 0;
      }
    }

    if (*(a6 + 1137) && ((*allocator == 0) & ~v46) == 0)
    {
      if (dword_1EAF16A10)
      {
        OUTLINED_FUNCTION_362_0();
        v195 = OUTLINED_FUNCTION_252_0(qword_1EAF16A08, v188, v189, v190, v191, v192, v193, v194, v1454, v1473, v1493, v1512, v1531, v1548, key, v1582, v1599, v1616, v1633, v1650, v1667, v1684, v1701, v1718, v1736[0], v1736[1], v1772, v1790, v1808, v1825, v1842, v1859, context, v1893, v1910, v1928, v1947, allocator, v1981[0], v1981[1], v2012, v2029, alloc, theArray, v2079, v2099, v2120, *(&v2120 + 1), theSet, v2168, v2169, *v2170, type[0], v2172, valuePtr);
        OUTLINED_FUNCTION_244_0(v195, v196, v197, v198, v199, v200, v201, v202, v1457, v1476, v1496, v1515, v1534, v1551, keyc, v1585, v1602, v1619, v1636, v1653, v1670, v1687, v1704, v1721, v1739, v1757, v1775, v1793, v1811, v1828, v1845, v1862, contextc, v1896, v1913, v1931, v1950, allocatord, v1984, v1999, v2015, v2032, allocd, theArrayd, v2082, v2102, v2123, v2140, theSetd, v2168, v2169, *v2170, type[0], v2172, valuePtr);
        OUTLINED_FUNCTION_125();
        if (v58)
        {
          v204 = v203;
        }

        else
        {
          v204 = v41;
        }

        if (v204)
        {
          if (a1)
          {
            CMBaseObjectGetDerivedStorage();
          }

          *cf = 136315650;
          *&cf[4] = "itemfig_createRenderTriplesForAudio";
          OUTLINED_FUNCTION_17_0();
          OUTLINED_FUNCTION_52_0();
          OUTLINED_FUNCTION_44_0();
          _os_log_send_and_compose_impl(v232, v233, v234, v235, v236, v237, kFigRenderPipelineProperty_LoggingIdentifier, v238);
        }

        OUTLINED_FUNCTION_2();
        fig_log_call_emit_and_clean_up_after_send_and_compose();
        OctaviaSubtitleRenderPipeline = v2103;
      }

      playerfig_removeAudioRenderPipelineListeners(v40, *(a6 + 584));
    }

    goto LABEL_202;
  }

  valuePtr = 0;
  isTrackAC3 = itemfig_isTrackAC3(a1, v67);
  v206 = OUTLINED_FUNCTION_411_0();
  LODWORD(v1947) = itemfig_isTrackEnhancedAC3(v206, v207);
  v208 = OUTLINED_FUNCTION_411_0();
  LODWORD(v1790) = itemfig_isTrackAtmos(v208, v209);
  v210 = OUTLINED_FUNCTION_411_0();
  canTrackPassthrough = itemfig_canTrackPassthrough(v210, v211);
  v213 = OUTLINED_FUNCTION_411_0();
  isTrackDecodable = itemfig_isTrackDecodable(v213, v214);
  LODWORD(formatDescriptionOut[0].start.value) = 0;
  MaximumNumberOfSpatializedOutputChannels = itemfig_getMaximumNumberOfSpatializedOutputChannels(a1, formatDescriptionOut);
  v217 = v2099;
  LODWORD(alloc) = isTrackAC3;
  v218 = 0;
  if (v2099)
  {
    v721 = !isTrackDecodable || MaximumNumberOfSpatializedOutputChannels != 0 || SLODWORD(formatDescriptionOut[0].start.value) < 3;
    if (!isTrackAC3 || !v721)
    {
      v217 = 0;
      goto LABEL_191;
    }

    v217 = 0;
    v219 = 1;
    if (canTrackPassthrough)
    {
      if (!itemfig_isAC3PassthroughSupported(a1))
      {
        v218 = 0;
        v217 = 0;
        goto LABEL_191;
      }

      v219 = 0;
      v217 = 1;
      v218 = 1633889587;
    }
  }

  else
  {
LABEL_191:
    v219 = 1;
  }

  LODWORD(v1736[0]) = v217;
  LODWORD(v1701) = v218;
  if (dword_1EAF16A10 <= 1)
  {
    if (isTrackDecodable)
    {
      OctaviaSubtitleRenderPipeline = 0;
    }

    else
    {
      OctaviaSubtitleRenderPipeline = v219;
    }
  }

  else
  {
    LODWORD(v1684) = v219;
    LODWORD(v1667) = isTrackDecodable;
    OUTLINED_FUNCTION_230_0();
    v227 = OUTLINED_FUNCTION_177_0(qword_1EAF16A08, v220, v221, v222, v223, v224, v225, v226, v1454, v1473, v1493, v1512, v1531, v1548, key, v1582, v1599, v1616, v1633, v1650, v1667, v1684, v1701, v1718, v1736[0], v1736[1], v1772, v1790, v1808, v1825, v1842, v1859, context, v1893, v1910, a1, v1947, allocator, v1981[0], v1981[1], v2012, v2029, alloc, theArray, v2079, v2099, v2120, *(&v2120 + 1), theSet, v2168, v2169, v2170[0], *&v2170[4], type[0]);
    v228 = *type;
    os_log_type_enabled(v227, v2170[0]);
    OUTLINED_FUNCTION_125();
    if (v58)
    {
      v230 = v229;
    }

    else
    {
      v230 = v228;
    }

    if (v230)
    {
      if (a1)
      {
        v963 = (CMBaseObjectGetDerivedStorage() + 2096);
      }

      else
      {
        v963 = "";
      }

      *cf = 136316418;
      *&cf[4] = "itemfig_createRenderTriplesForAudio";
      *&cf[12] = 2082;
      *&cf[14] = v963;
      *&cf[22] = 1024;
      *&cf[24] = v1667;
      *&cf[28] = 1024;
      *&cf[30] = alloc;
      *&cf[34] = 1024;
      *&cf[36] = v1947;
      *&cf[40] = 1024;
      *v2178 = v1790;
      OUTLINED_FUNCTION_52_0();
      OUTLINED_FUNCTION_108();
      _os_log_send_and_compose_impl(v1005, v1006, v1007, v1008, v1009, v1010, v1011, v1012);
      v231 = v1667;
      v228 = *type;
    }

    else
    {
      v231 = v1667;
    }

    OUTLINED_FUNCTION_2();
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    if (v231)
    {
      OctaviaSubtitleRenderPipeline = 0;
    }

    else
    {
      OctaviaSubtitleRenderPipeline = v1684;
    }

    if (OctaviaSubtitleRenderPipeline == 1 && dword_1EAF16A10 >= 2)
    {
      OUTLINED_FUNCTION_230_0();
      v1021 = OUTLINED_FUNCTION_177_0(qword_1EAF16A08, v1014, v1015, v1016, v1017, v1018, v1019, v1020, v1454, v1473, v1493, v1512, v1531, v1548, key, v1582, v1599, v1616, v1633, v1650, v1667, v1684, v1701, v1718, v1736[0], v1736[1], v1772, v1790, v1808, v1825, v1842, v1859, context, v1893, v1910, v1928, v1947, allocator, v1981[0], v1981[1], v2012, v2029, alloc, theArray, v2079, v2099, v2120, *(&v2120 + 1), theSet, v2168, v2169, v2170[0], *&v2170[4], type[0]);
      OUTLINED_FUNCTION_182_0(v1021, v1022, v1023, v1024, v1025, v1026, v1027, v1028, v1465, v1485, v1504, v1523, v1541, v1558, keyj, v1592, v1609, v1626, v1643, v1660, v1677, v1694, v1711, v1728, v1747, v1765, v1783, v1801, v1818, v1835, v1852, v1869, contextj, v1903, v1920, v1938, v1958, allocatork, v1991, v2006, v2022, v2039, allock, theArrayk, v2090, v2114, v2132, v2147, theSeti, v2168, v2169, v2170[0], *&v2170[4], *type);
      OUTLINED_FUNCTION_125();
      if (v58)
      {
        v1030 = v1029;
      }

      else
      {
        v1030 = v228;
      }

      if (v1030)
      {
        *cf = 136315138;
        *&cf[4] = "itemfig_createRenderTriplesForAudio";
        OUTLINED_FUNCTION_52_0();
        OUTLINED_FUNCTION_38();
        _os_log_send_and_compose_impl(v1031, v1032, v1033, v1034, v1035, v1036, OctaviaSubtitleRenderPipeline, v1037);
        OUTLINED_FUNCTION_322_0();
      }

      OUTLINED_FUNCTION_109();
      OctaviaSubtitleRenderPipeline = 1;
      OUTLINED_FUNCTION_72_0(v1038, v1039, v1040, v1041, v1042);
    }
  }

  TrackStorage = itemfig_getTrackStorage(a1, *allocator, &valuePtr);
  if (TrackStorage)
  {
    goto LABEL_1651;
  }

  v1044 = valuePtr;
  v1045 = *(valuePtr + 2);
  if (v1045)
  {
    CFRelease(v1045);
    v1044[2] = 0;
  }

  if ((OctaviaSubtitleRenderPipeline & 1) == 0)
  {
    *value = *allocator;
    fp_createAudioRenderPipelineOptionsForTrack();
    if (!TrackStorage)
    {
      v1084 = *(OctaviaClosedCaptionsRenderPipeline + 1008);
      v1085 = *(OctaviaClosedCaptionsRenderPipeline + 1036);
      v1086 = *(*(CMBaseObjectGetVTable() + 16) + 56);
      if (!v1086)
      {
        v21 = 4294954514;
LABEL_1357:
        RenderTriplesForVideoComposition = 2;
        goto LABEL_1358;
      }

      TrackStorage = v1086(v1084, v1085, &v2176, 0);
      if (!TrackStorage)
      {
        TrackStorage = itemfig_copyFormatDescription(v2176, &v2175);
        if (!TrackStorage)
        {
          v1087 = *(OctaviaClosedCaptionsRenderPipeline + 368);
          if (v1087)
          {
            itemfig_reuseExistingRenderPipeline(v1087, value);
          }

          if (*&value[24])
          {
            OUTLINED_FUNCTION_286_0();
            OctaviaSubtitleRenderPipeline = v2099;
LABEL_1584:
            v1044[2] = CFRetain(v1088);
LABEL_1585:
            CFArrayAppendValue(theArray, value);
            itemfig_resetRenderTriple(value);
            LOBYTE(a1) = 1;
            goto LABEL_203;
          }

          v1947 = v40;
          if (*(a6 + 584))
          {
            if (i && playerfig_doingGapless(v40) && itemfig_canItemAudioTrackReusePreviousItemAudioRenderPipeline(v1928))
            {
              FigRenderPipelineGetFigBaseObject();
              CMBaseObjectCopyProperty(v1394, @"LoggingIdentifier", DerivedStorage, &v2174);
              if (dword_1EAF16A10)
              {
                OUTLINED_FUNCTION_230_0();
                v1402 = OUTLINED_FUNCTION_177_0(qword_1EAF16A08, v1395, v1396, v1397, v1398, v1399, v1400, v1401, v1454, v1473, v1493, v1512, v1531, v1548, key, v1582, v1599, v1616, v1633, v1650, v1667, v1684, v1701, v1718, v1736[0], v1736[1], v1772, v1790, v1808, v1825, v1842, v1859, context, v1893, v1910, v1928, v40, allocator, v1981[0], v1981[1], v2012, v2029, alloc, theArray, v2079, v2099, v2120, *(&v2120 + 1), theSet, v2168, v2169, v2170[0], *&v2170[4], type[0]);
                OUTLINED_FUNCTION_182_0(v1402, v1403, v1404, v1405, v1406, v1407, v1408, v1409, v1472, v1492, v1511, v1530, v1547, v1564, keyp, v1598, v1615, v1632, v1649, v1666, v1683, v1700, v1717, v1734, v1753, v1771, v1789, v1807, v1824, v1841, v1858, v1875, contextp, v1909, v1926, v1946, v1963, allocatorp, v1996, v2011, v2027, v2044, allocp, theArrayp, v2096, v2119, v2137, v2152, theSetn, v2168, v2169, v2170[0], *&v2170[4], *type);
                OUTLINED_FUNCTION_125();
                if (v58)
                {
                  v1411 = v1410;
                }

                else
                {
                  v1411 = v1085;
                }

                if (v1411)
                {
                  if (v1928)
                  {
                    v1443 = (CMBaseObjectGetDerivedStorage() + 2096);
                  }

                  else
                  {
                    v1443 = "";
                  }

                  *cf = 136316162;
                  *&cf[4] = "itemfig_createRenderTriplesForAudio";
                  *&cf[12] = 2048;
                  *&cf[14] = v1928;
                  *&cf[22] = 2082;
                  *&cf[24] = v1443;
                  *&cf[32] = 2048;
                  OUTLINED_FUNCTION_301_0();
                  *v2178 = 2114;
                  *&v2178[2] = v1444;
                  OUTLINED_FUNCTION_52_0();
                  OUTLINED_FUNCTION_38();
                  _os_log_send_and_compose_impl(v1445, v1446, v1447, v1448, v1449, v1450, v1084, v1451);
                  OUTLINED_FUNCTION_322_0();
                }

                OUTLINED_FUNCTION_2();
                fig_log_call_emit_and_clean_up_after_send_and_compose();
              }

              if (v2174)
              {
                CFRelease(v2174);
                v2174 = 0;
              }

              *&value[24] = CFRetain(*(a6 + 584));
              v1452 = *(a6 + 688);
              v1453 = v2175;
              *(a6 + 688) = v2175;
              if (v1453)
              {
                CFRetain(v1453);
              }

              if (v1452)
              {
                CFRelease(v1452);
              }

              LODWORD(alloc) = 1;
              fp_createAudioRenderPipelineOptionsForTrack();
              if (!TrackStorage)
              {
                *(OctaviaClosedCaptionsRenderPipeline + 1772) = 1;
                goto LABEL_1582;
              }

              goto LABEL_1651;
            }

            if (dword_1EAF16A10 >= 2)
            {
              OUTLINED_FUNCTION_230_0();
              v1218 = OUTLINED_FUNCTION_177_0(qword_1EAF16A08, v1211, v1212, v1213, v1214, v1215, v1216, v1217, v1454, v1473, v1493, v1512, v1531, v1548, key, v1582, v1599, v1616, v1633, v1650, v1667, v1684, v1701, v1718, v1736[0], v1736[1], v1772, v1790, v1808, v1825, v1842, v1859, context, v1893, v1910, v1928, v40, allocator, v1981[0], v1981[1], v2012, v2029, alloc, theArray, v2079, v2099, v2120, *(&v2120 + 1), theSet, v2168, v2169, v2170[0], *&v2170[4], type[0]);
              OUTLINED_FUNCTION_182_0(v1218, v1219, v1220, v1221, v1222, v1223, v1224, v1225, v1468, v1488, v1507, v1526, v1543, v1560, keyl, v1594, v1611, v1628, v1645, v1662, v1679, v1696, v1713, v1730, v1749, v1767, v1785, v1803, v1820, v1837, v1854, v1871, contextl, v1905, v1922, v1940, v1959, allocatorl, v1992, v2007, v2023, v2040, allocl, theArrayl, v2091, v2115, v2133, v2148, theSetj, v2168, v2169, v2170[0], *&v2170[4], *type);
              OUTLINED_FUNCTION_125();
              if (v58)
              {
                v1227 = v1226;
              }

              else
              {
                v1227 = v1085;
              }

              if (v1227)
              {
                if (v1928)
                {
                  CMBaseObjectGetDerivedStorage();
                }

                *cf = 136315650;
                OUTLINED_FUNCTION_97_0();
                *&cf[14] = v1928;
                OUTLINED_FUNCTION_25_0();
                OUTLINED_FUNCTION_38();
                _os_log_send_and_compose_impl(v1365, v1366, v1367, v1368, v1369, v1370, v1084, v1371);
                OUTLINED_FUNCTION_322_0();
              }

              OUTLINED_FUNCTION_2();
              fig_log_call_emit_and_clean_up_after_send_and_compose();
            }

            playerfig_removeAudioRenderPipelineListeners(v1947, *(a6 + 584));
            v1372 = *(a6 + 584);
            if (v1372)
            {
              CFRelease(v1372);
              *(a6 + 584) = 0;
            }
          }

          else if (dword_1EAF16A10 >= 2)
          {
            OUTLINED_FUNCTION_230_0();
            v1304 = OUTLINED_FUNCTION_177_0(qword_1EAF16A08, v1297, v1298, v1299, v1300, v1301, v1302, v1303, v1454, v1473, v1493, v1512, v1531, v1548, key, v1582, v1599, v1616, v1633, v1650, v1667, v1684, v1701, v1718, v1736[0], v1736[1], v1772, v1790, v1808, v1825, v1842, v1859, context, v1893, v1910, v1928, v40, allocator, v1981[0], v1981[1], v2012, v2029, alloc, theArray, v2079, v2099, v2120, *(&v2120 + 1), theSet, v2168, v2169, v2170[0], *&v2170[4], type[0]);
            OUTLINED_FUNCTION_182_0(v1304, v1305, v1306, v1307, v1308, v1309, v1310, v1311, v1471, v1491, v1510, v1529, v1546, v1563, keyo, v1597, v1614, v1631, v1648, v1665, v1682, v1699, v1716, v1733, v1752, v1770, v1788, v1806, v1823, v1840, v1857, v1874, contexto, v1908, v1925, v1945, v1962, allocatoro, v1995, v2010, v2026, v2043, alloco, theArrayo, v2095, v2118, v2136, v2151, theSetm, v2168, v2169, v2170[0], *&v2170[4], *type);
            OUTLINED_FUNCTION_125();
            if (v58)
            {
              v1313 = v1312;
            }

            else
            {
              v1313 = v1085;
            }

            if (v1313)
            {
              if (v1928)
              {
                CMBaseObjectGetDerivedStorage();
              }

              *cf = 136315650;
              OUTLINED_FUNCTION_97_0();
              *&cf[14] = v1928;
              OUTLINED_FUNCTION_25_0();
              OUTLINED_FUNCTION_38();
              _os_log_send_and_compose_impl(v1373, v1374, v1375, v1376, v1377, v1378, v1084, v1379);
              OUTLINED_FUNCTION_322_0();
            }

            OUTLINED_FUNCTION_2();
            fig_log_call_emit_and_clean_up_after_send_and_compose();
          }

          LODWORD(alloc) = 2;
LABEL_1582:
          v1088 = *&value[24];
          if (*&value[24])
          {
            DerivedStorage = v2029;
            OctaviaSubtitleRenderPipeline = v2099;
            v40 = v1947;
            goto LABEL_1584;
          }

          LODWORD(v1790) = itemfig_shouldEnableSpatializationForTrack(v1928, *allocator);
          fp_createAudioRenderPipelineOptionsForTrack();
          if (!v1380)
          {
            fp_buildAudioRenderPipelineForTrack();
            if (!v1380)
            {
              FigRenderPipelineGetFigBaseObject();
              CMBaseObjectCopyProperty(v1381, @"LoggingIdentifier", DerivedStorage, &v2174);
              if (dword_1EAF16A10)
              {
                OUTLINED_FUNCTION_230_0();
                v1389 = OUTLINED_FUNCTION_177_0(qword_1EAF16A08, v1382, v1383, v1384, v1385, v1386, v1387, v1388, v1454, v1473, v1493, v1512, v1531, v1548, key, v1582, v1599, v1616, v1633, v1650, v1667, v1684, v1701, v1718, v1736[0], v1736[1], v1772, v1790, v1808, v1825, v1842, v1859, context, v1893, v1910, v1928, v1947, allocator, v1981[0], v1981[1], v2012, v2029, alloc, theArray, v2079, v2099, v2120, *(&v2120 + 1), theSet, v2168, v2169, v2170[0], *&v2170[4], type[0]);
                v1390 = *type;
                v1391 = v2170[0];
                os_log_type_enabled(v1389, v2170[0]);
                OUTLINED_FUNCTION_425();
                if (v58)
                {
                  v1393 = v1392;
                }

                else
                {
                  v1393 = v1390;
                }

                if (v1393)
                {
                  if (v1928)
                  {
                    v1412 = (CMBaseObjectGetDerivedStorage() + 2096);
                  }

                  else
                  {
                    v1412 = "";
                  }

                  *cf = 136316162;
                  *&cf[4] = "itemfig_createRenderTriplesForAudio";
                  *&cf[12] = 2048;
                  *&cf[14] = v1928;
                  *&cf[22] = 2082;
                  *&cf[24] = v1412;
                  *&cf[32] = 2048;
                  OUTLINED_FUNCTION_301_0();
                  *v2178 = 2114;
                  *&v2178[2] = v1413;
                  OUTLINED_FUNCTION_52_0();
                  v1414 = OUTLINED_FUNCTION_27();
                  _os_log_send_and_compose_impl(v1414, v1415, v1416, v1417, v1418, v1389, v1391, v1419);
                }

                OUTLINED_FUNCTION_7();
                OUTLINED_FUNCTION_635(v1420, v1421, v1422, v1423, v1424);
              }

              v1425 = *&value[24];
              if (*&value[24])
              {
                v1425 = CFRetain(*&value[24]);
              }

              *(a6 + 584) = v1425;
              *(a6 + 960) = v1736[0];
              *(a6 + 964) = v1701;
              v1426 = *(a6 + 688);
              v1427 = v2175;
              *(a6 + 688) = v2175;
              if (v1427)
              {
                CFRetain(v1427);
              }

              if (v1426)
              {
                CFRelease(v1426);
              }

              playerfig_applyEQPreset(v1947);
              playerfig_applySoftwareVolume(v1947, @"SoftwareVolume1", 0, *(a6 + 804), 0.0);
              if (*(a6 + 812))
              {
                playerfig_applySoftwareVolume(v1947, @"SoftwareVolume2", 1, *(a6 + 808), 0.0);
              }

              v1428 = 1.0;
              if (*(a6 + 813))
              {
                v1428 = 0.0;
              }

              playerfig_applySoftwareVolume(v1947, @"SoftwareVolume5", 1, v1428, 0.0);
              v1429 = *&value[24];
              if (*&value[24])
              {
                v1429 = CFRetain(*&value[24]);
              }

              v1044[2] = v1429;
              *(OctaviaClosedCaptionsRenderPipeline + 1874) = 0;
              OUTLINED_FUNCTION_439();
              itemfig_applyLoudnessInfo(v1430, v1431, v1432, v1433);
              itemfig_updateVolumeOffset(v1928);
              itemfig_applyAudioProcessingUnitsToTrack(OctaviaClosedCaptionsRenderPipeline, v1044);
              itemfig_applyAllAudioCurvesToTrack(OctaviaClosedCaptionsRenderPipeline, v1044);
              itemfig_applyAdjustTargetLevel(v1928);
              itemfig_applyAdjustCompressionProfile(v1928);
              v1434 = CFNumberCreate(DerivedStorage, kCFNumberSInt32Type, allocator);
              FigRenderPipelineGetFigBaseObject();
              CMBaseObjectSetProperty(v1435, @"TrackID", v1434);
              if (v1434)
              {
                CFRelease(v1434);
              }

              OUTLINED_FUNCTION_416_0();
              playerfig_determineAudioProcessingTapRoles(v1044, OctaviaClosedCaptionsRenderPipeline, v1436, v1437);
              v1438 = formatDescriptionOut[0].start.value;
              if (!formatDescriptionOut[0].start.value && (v1438 = *cf) != 0)
              {
                v1439 = *(a6 + 632);
                if (!v1439)
                {
                  v1439 = CFUUIDCreate(DerivedStorage);
                  *(a6 + 632) = v1439;
                }
              }

              else
              {
                v1439 = 0;
              }

              FigRenderPipelineGetFigBaseObject();
              CMBaseObjectSetProperty(v1440, @"AudioSubmixID", v1439);
              FigRenderPipelineGetFigBaseObject();
              CMBaseObjectSetProperty(v1441, @"AudioProcessingTap", v1438);
              v1442 = *(a6 + 624);
              *(a6 + 624) = v1438;
              if (v1438)
              {
                CFRetain(v1438);
              }

              if (v1442)
              {
                CFRelease(v1442);
              }

              *(a6 + 656) = v1790;
              itemfig_applyTimePitchAlgorithmToTrack();
              itemfig_applyAudioSceneCompositionPresetToTrack(v1044);
              LODWORD(alloc) = 0;
              DerivedStorage = v2029;
              OctaviaSubtitleRenderPipeline = v2099;
              v40 = v1947;
              goto LABEL_1585;
            }
          }

          v21 = v1380;
          RenderTriplesForVideoComposition = alloc;
LABEL_1358:
          LOBYTE(a1) = 0;
          i = HIDWORD(v1910);
          DerivedStorage = v2029;
          OctaviaSubtitleRenderPipeline = v2099;
          p_duration = v2120;
          a7 = theArray;
          if (v2099)
          {
            goto LABEL_205;
          }

          goto LABEL_206;
        }
      }
    }

LABEL_1651:
    v21 = TrackStorage;
    goto LABEL_1357;
  }

  OUTLINED_FUNCTION_359_0();
  if (v68)
  {
    if (dword_1EAF16A10 >= 2)
    {
      OUTLINED_FUNCTION_230_0();
      v1053 = OUTLINED_FUNCTION_177_0(qword_1EAF16A08, v1046, v1047, v1048, v1049, v1050, v1051, v1052, v1454, v1473, v1493, v1512, v1531, v1548, key, v1582, v1599, v1616, v1633, v1650, v1667, v1684, v1701, v1718, v1736[0], v1736[1], v1772, v1790, v1808, v1825, v1842, v1859, context, v1893, v1910, v1928, v1947, allocator, v1981[0], v1981[1], v2012, v2029, alloc, theArray, v2079, v2099, v2120, *(&v2120 + 1), theSet, v2168, v2169, v2170[0], *&v2170[4], type[0]);
      v1054 = *type;
      OctaviaSubtitleRenderPipeline = v2170[0];
      os_log_type_enabled(v1053, v2170[0]);
      OUTLINED_FUNCTION_125();
      if (v58)
      {
        v1056 = v1055;
      }

      else
      {
        v1056 = v1054;
      }

      if (v1056)
      {
        if (a1)
        {
          CMBaseObjectGetDerivedStorage();
        }

        *cf = 136315650;
        *&cf[4] = "itemfig_createRenderTriplesForAudio";
        OUTLINED_FUNCTION_17_0();
        OUTLINED_FUNCTION_52_0();
        OUTLINED_FUNCTION_44_0();
        _os_log_send_and_compose_impl(v1075, v1076, v1077, v1078, v1079, v1080, OctaviaSubtitleRenderPipeline, v1081);
        OUTLINED_FUNCTION_322_0();
      }

      OUTLINED_FUNCTION_2();
      fig_log_call_emit_and_clean_up_after_send_and_compose();
      OUTLINED_FUNCTION_359_0();
    }

    playerfig_removeAudioRenderPipelineListeners(v40, v68);
    v1082 = *(a6 + 584);
    if (v1082)
    {
      CFRelease(v1082);
      *(a6 + 584) = 0;
    }

    v1083 = *(a6 + 688);
    if (v1083)
    {
      CFRelease(v1083);
      *(a6 + 688) = 0;
    }
  }

LABEL_202:
  FPSupport_ReleasePassthroughHelper(*(a6 + 952), v68);
  LOBYTE(a1) = 0;
  *(a6 + 952) = 0;
  OUTLINED_FUNCTION_286_0();
LABEL_203:
  if (v1718)
  {
    if (*(a6 + 60) == 2)
    {
      playerfig_UpdateAudioSessionPreferredDeviceFormat(v40);
      playerfig_UpdateAudioSessionPreferredDeviceSampleRate(v40);
      playerfig_UpdateAudioSessionPreferredNumberOfAudioOutputChannels(v40);
    }

    itemfig_InformStakeholdersOfBestAvailableAudioContentType(v1928);
  }

  v21 = 0;
  i = HIDWORD(v1910);
  p_duration = v2120;
  a7 = theArray;
  RenderTriplesForVideoComposition = alloc;
  if (OctaviaSubtitleRenderPipeline)
  {
LABEL_205:
    CFRelease(OctaviaSubtitleRenderPipeline);
  }

LABEL_206:
  v2185[0] = a7;
  itemfig_resetRenderTriple(value);
  if (v2176)
  {
    CFRelease(v2176);
  }

  if (v2175)
  {
    CFRelease(v2175);
  }

  if (v2174)
  {
    CFRelease(v2174);
  }

  if (!i && !v21)
  {
    *(OctaviaClosedCaptionsRenderPipeline + 2065) = a1;
  }

  if (p_duration)
  {
    *p_duration = RenderTriplesForVideoComposition;
  }

  a1 = v1928;
  if (*(OctaviaClosedCaptionsRenderPipeline + 2024) == 0.0)
  {
    *(OctaviaClosedCaptionsRenderPipeline + 2024) = CFAbsoluteTimeGetCurrent();
  }

  if (v21)
  {
    goto LABEL_1362;
  }

  i = CMBaseObjectGetDerivedStorage();
  v239 = *(i + 648);
  if (v239)
  {
    OctaviaSubtitleRenderPipeline = CFArrayGetCount(v239);
  }

  else
  {
    OctaviaSubtitleRenderPipeline = 0;
  }

  memset(cf, 0, 40);
  if ((theSet & 1) == 0)
  {
    FigXMLNodeGetTag(*(i + 1808));
    a7 = 0;
    if (FigCFDictionaryGetCount() < 1 || OctaviaSubtitleRenderPipeline < 1)
    {
      goto LABEL_258;
    }

    while (*(CFArrayGetValueAtIndex(*(i + 648), 0) + 1) != 1835365473)
    {
      OUTLINED_FUNCTION_378_0();
      if (v58)
      {
        a7 = 0;
        DerivedStorage = v2029;
        goto LABEL_258;
      }
    }

    itemfig_resetRenderTriple(cf);
    OUTLINED_FUNCTION_16_0();
    OUTLINED_FUNCTION_189_0();
    v2185[1] = 0;
    v21 = 4294954433;
    goto LABEL_749;
  }

  RenderTriplesForVideoComposition = *MEMORY[0x1E695E480];
  v240 = OUTLINED_FUNCTION_249();
  Mutable = CFArrayCreateMutable(v240, v241, v242);
  if (!Mutable)
  {
    OUTLINED_FUNCTION_39_0();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v1454, v1473, v1493);
    v21 = v1189;
    itemfig_resetRenderTriple(cf);
    v2185[1] = 0;
    if (!v21)
    {
      goto LABEL_259;
    }

    goto LABEL_1362;
  }

  a7 = Mutable;
  FigXMLNodeGetTag(*(i + 1808));
  if (FigCFDictionaryGetCount() >= 1)
  {
    v244 = OUTLINED_FUNCTION_249();
    MutableCopy = CFArrayCreateMutableCopy(v244, v245, v246);
    if (OctaviaSubtitleRenderPipeline >= 1)
    {
      v249 = 0;
      *&v248 = 136315394;
      v2120 = v248;
      do
      {
        v250 = *CFArrayGetValueAtIndex(*(i + 648), v249);
        v2176 = 0;
        OUTLINED_FUNCTION_303_0();
        if (v58)
        {
          v251 = FPSupport_CreateAndAddMetadataOutputRenderPipelinesForTrackWithID(*(i + 1808), v250, &v2176);
          if (v251)
          {
            v252 = v251;
            LODWORD(v2175) = 0;
            LOBYTE(v2174) = 0;
            os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            v254 = v2174;
            v255 = os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, v2174);
            if (OUTLINED_FUNCTION_71_0(v255))
            {
              *value = v2120;
              *&value[4] = "itemfig_createRenderTriplesForMetadataOutputs";
              *&value[12] = 1024;
              *&value[14] = v252;
              OUTLINED_FUNCTION_108();
              _os_log_send_and_compose_impl(v256, v257, v258, v259, &dword_1962D5000, os_log_and_send_and_compose_flags_and_os_log_type, v254, "<<<< FigFilePlayer >>>> %s: FPSupport_CreateAndAddMetadataOutputRenderPipelinesForTrackWithID failed: %d", value, 18);
            }

            OUTLINED_FUNCTION_16();
            OUTLINED_FUNCTION_449(v265, v266, v267, v268, v269);
          }

          else if (CFArrayGetCount(v2176) >= 1)
          {
            v260 = 0;
            do
            {
              v261 = CFArrayGetValueAtIndex(v2176, v260);
              v262 = OUTLINED_FUNCTION_502();
              CFArrayAppendValue(v262, v263);
              *cf = v250;
              if (v261)
              {
                v264 = CFRetain(v261);
              }

              else
              {
                v264 = 0;
              }

              *&cf[24] = v264;
              CFArrayAppendValue(a7, cf);
              itemfig_resetRenderTriple(cf);
              ++v260;
            }

            while (v260 < CFArrayGetCount(v2176));
          }

          DerivedStorage = v2029;
          if (v2176)
          {
            CFRelease(v2176);
          }
        }

        ++v249;
      }

      while (v249 != OctaviaSubtitleRenderPipeline);
    }

    v270 = *(i + 1816);
    *(i + 1816) = MutableCopy;
    if (MutableCopy)
    {
      CFRetain(MutableCopy);
    }

    a1 = v1928;
    if (v270)
    {
      CFRelease(v270);
    }

    if (MutableCopy)
    {
      CFRelease(MutableCopy);
    }
  }

LABEL_258:
  itemfig_resetRenderTriple(cf);
  v2185[1] = a7;
LABEL_259:
  a7 = CMBaseObjectGetDerivedStorage();
  RenderTriplesForVideoComposition = CMBaseObjectGetDerivedStorage();
  OctaviaClosedCaptionsRenderPipeline = CFArrayGetCount(*(a7 + 648));
  i = *(a7 + 1063);
  FigSimpleMutexLock();
  v272 = *(RenderTriplesForVideoComposition + 472);
  if (v272)
  {
    OctaviaSubtitleRenderPipeline = CFRetain(v272);
  }

  else
  {
    OctaviaSubtitleRenderPipeline = 0;
  }

  a6 = 1751216244;
  FigSimpleMutexUnlock();
  if (OctaviaSubtitleRenderPipeline)
  {
    v273 = 1;
  }

  else
  {
    v273 = i == 0;
  }

  if (v273)
  {
    v274 = i;
  }

  else
  {
    v274 = 0;
  }

  if (HIDWORD(v1910) && OctaviaClosedCaptionsRenderPipeline >= 1)
  {
    for (i = 0; OctaviaClosedCaptionsRenderPipeline != i; ++i)
    {
      CFArrayGetValueAtIndex(*(a7 + 648), i);
      OUTLINED_FUNCTION_303_0();
      if (v58)
      {
        if (v274 && *(v275 + 8))
        {
          if (!*(v275 + 16))
          {
            goto LABEL_1175;
          }
        }

        else if (*(v275 + 16))
        {
LABEL_1175:
          p_duration = 0;
          v2124 = 0;
          v21 = 4294954433;
          goto LABEL_325;
        }
      }
    }
  }

  alloc = OctaviaSubtitleRenderPipeline;
  if (OctaviaClosedCaptionsRenderPipeline < 1)
  {
    i = 0;
  }

  else
  {
    OUTLINED_FUNCTION_164_0();
    do
    {
      CFArrayGetValueAtIndex(*(a7 + 648), OctaviaSubtitleRenderPipeline);
      OUTLINED_FUNCTION_303_0();
      if (v58)
      {
        v277 = v276;
        if (v274 && *(v276 + 8))
        {
          ++i;
        }

        else
        {
          v278 = *(v276 + 16);
          if (v278)
          {
            CFRelease(v278);
            *(v277 + 16) = 0;
          }
        }
      }

      ++OctaviaSubtitleRenderPipeline;
    }

    while (OctaviaClosedCaptionsRenderPipeline != OctaviaSubtitleRenderPipeline);
  }

  v279 = *(RenderTriplesForVideoComposition + 680);
  if (v279)
  {
    CFRelease(v279);
    *(RenderTriplesForVideoComposition + 680) = 0;
  }

  v2104 = *MEMORY[0x1E695E480];
  DerivedStorage = v2029;
  OctaviaSubtitleRenderPipeline = alloc;
  v2124 = CFArrayCreateMutable(*MEMORY[0x1E695E480], i, &_MergedGlobals);
  if (v2124)
  {
    if (i <= 0)
    {
      v1141 = *(a7 + 1064);
      if (!v1141)
      {
        goto LABEL_298;
      }

      CFRelease(v1141);
      p_duration = 0;
      v21 = 0;
      *(a7 + 1064) = 0;
    }

    else
    {
      v280 = CFArrayCreateMutable(v2104, i, MEMORY[0x1E695E9C0]);
      *(RenderTriplesForVideoComposition + 680) = v280;
      if (v280)
      {
        i = a7 + 1064;
        if (*(a7 + 1064))
        {
          if (OctaviaClosedCaptionsRenderPipeline < 1)
          {
LABEL_298:
            p_duration = 0;
            v21 = 0;
            goto LABEL_325;
          }

LABEL_301:
          theArray = (a7 + 1064);
          v281 = 0;
          p_duration = 0;
          v1701 = @"STSLabel";
          allocator = @"ActiveHapticChannelIndex";
          v1947 = @"SoftwareVolume1";
          v1790 = @"Muted";
          v1736[0] = *MEMORY[0x1E695E4D0];
          do
          {
            CFArrayGetValueAtIndex(*(a7 + 648), v281);
            OUTLINED_FUNCTION_303_0();
            if (v58)
            {
              i = v282;
              if (*(v282 + 8))
              {
                if (*(v282 + 16) || !FigHapticRenderPipelineCreate(v2104, 0, *theArray, (v282 + 16)))
                {
                  FigSimpleMutexLock();
                  v283 = *(RenderTriplesForVideoComposition + 16);
                  if (v283)
                  {
                    p_duration = CFRetain(v283);
                    FigSimpleMutexUnlock();
                    if (p_duration)
                    {
                      FigRenderPipelineGetFigBaseObject();
                      v285 = v284;
                      v286 = *(*(CMBaseObjectGetVTable() + 8) + 56);
                      if (v286)
                      {
                        v286(v285, @"STSLabel", p_duration);
                      }
                    }
                  }

                  else
                  {
                    FigSimpleMutexUnlock();
                    p_duration = 0;
                  }

                  v287 = *(i + 176);
                  if (v287)
                  {
                    FigRenderPipelineGetFigBaseObject();
                    v289 = v288;
                    v290 = *(*(CMBaseObjectGetVTable() + 8) + 56);
                    if (v290)
                    {
                      v290(v289, @"ActiveHapticChannelIndex", v287);
                    }
                  }

                  v291 = *(i + 184);
                  if (v291)
                  {
                    FigRenderPipelineGetFigBaseObject();
                    v293 = v292;
                    v294 = *(*(CMBaseObjectGetVTable() + 8) + 56);
                    if (v294)
                    {
                      v294(v293, @"SoftwareVolume1", v291);
                    }
                  }

                  if (*(i + 9))
                  {
                    FigRenderPipelineGetFigBaseObject();
                    v296 = v295;
                    v297 = *(*(CMBaseObjectGetVTable() + 8) + 56);
                    if (v297)
                    {
                      v297(v296, @"Muted", v1736[0]);
                    }
                  }

                  CFArrayAppendValue(*(RenderTriplesForVideoComposition + 680), *(i + 16));
                  memset(formatDescriptionOut, 0, 40);
                  LODWORD(formatDescriptionOut[0].start.value) = *i;
                  formatDescriptionOut[0].duration.value = *(i + 16);
                  CFArrayAppendValue(v2124, formatDescriptionOut);
                  a1 = v1928;
                  DerivedStorage = v2029;
                }
              }
            }

            ++v281;
          }

          while (OctaviaClosedCaptionsRenderPipeline != v281);
          v21 = 0;
          OctaviaSubtitleRenderPipeline = alloc;
        }

        else
        {
          p_duration = 0;
          v21 = FigHapticEngineCreate(v2104, alloc, *(a7 + 1072), (a7 + 1064));
          if (!v21 && OctaviaClosedCaptionsRenderPipeline > 0)
          {
            goto LABEL_301;
          }
        }
      }

      else
      {
        OUTLINED_FUNCTION_39_0();
        FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v1454, v1473, v1493);
        v21 = v1142;
        p_duration = 0;
      }
    }
  }

  else
  {
    OUTLINED_FUNCTION_39_0();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v1454, v1473, v1493);
    v21 = v1140;
    p_duration = 0;
    v2124 = 0;
  }

LABEL_325:
  if (OctaviaSubtitleRenderPipeline)
  {
    CFRelease(OctaviaSubtitleRenderPipeline);
  }

  if (p_duration)
  {
    CFRelease(p_duration);
  }

  *&v2186 = v2124;
  if (v21)
  {
    goto LABEL_1362;
  }

  OctaviaSubtitleRenderPipeline = v1981[0] & 1;
  i = CMBaseObjectGetDerivedStorage();
  v298 = *(i + 8);
  CMBaseObjectGetDerivedStorage();
  valuePtr = 0;
  v2174 = 0;
  *v2170 = 0;
  *type = 0;
  OUTLINED_FUNCTION_80_0();
  v2169 = 0;
  LODWORD(theArray) = v1981[0] & 1;
  if ((theSet & 1) == 0)
  {
    OctaviaClosedCaptionsRenderPipeline = 0;
    v21 = 0;
    v2105 = 0;
    *&v2120 = 0;
    p_duration = 0;
    v302 = *(i + 656);
    i = 0;
    if (v302)
    {
      v303 = v1981[0] & 1;
    }

    else
    {
      v303 = 1;
    }

    OctaviaSubtitleRenderPipeline = 0;
    if (v303)
    {
      RenderTriplesForVideoComposition = 0;
    }

    else
    {
      RenderTriplesForVideoComposition = 4294954433;
    }

    goto LABEL_340;
  }

  v300 = v299;
  a7 = *MEMORY[0x1E695E480];
  if (!*(v299 + 972))
  {
    alloc = 0;
    v21 = 0;
    goto LABEL_342;
  }

  v21 = CFStringCreateWithCString(*MEMORY[0x1E695E480], (v299 + 972), 0x600u);
  v301 = CFDictionaryCreateMutable(a7, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (!v301)
  {
    OUTLINED_FUNCTION_39_0();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v1454, v1473, v1493);
    RenderTriplesForVideoComposition = v1208;
    OctaviaClosedCaptionsRenderPipeline = 0;
    OUTLINED_FUNCTION_368_0();
    v2105 = 0;
    *&v2120 = 0;
    p_duration = 0;
    goto LABEL_340;
  }

  alloc = v301;
  FigCFDictionarySetValue();
LABEL_342:
  v304 = OUTLINED_FUNCTION_383();
  OctaviaSubtitleRenderPipeline = CFArrayCreateMutable(v304, v305, v306);
  if (!OctaviaSubtitleRenderPipeline || (v307 = OUTLINED_FUNCTION_383(), (allocator = CFArrayCreateMutable(v307, v308, v309)) == 0))
  {
    OUTLINED_FUNCTION_39_0();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
    RenderTriplesForVideoComposition = v1201;
    i = 0;
    v2105 = 0;
    *&v2120 = 0;
    p_duration = 0;
    a6 = v1893;
    OctaviaClosedCaptionsRenderPipeline = alloc;
    goto LABEL_479;
  }

  FigSimpleMutexLock();
  v310 = *(i + 1776);
  if (v310)
  {
    *&v2120 = CFRetain(v310);
  }

  else
  {
    *&v2120 = 0;
  }

  FigSimpleMutexUnlock();
  if (FigUseVideoReceiverForCALayer())
  {
    v2105 = 0;
  }

  else
  {
    FigSimpleMutexLock();
    v311 = *(v300 + 216);
    if (v311)
    {
      v2105 = CFRetain(v311);
    }

    else
    {
      v2105 = 0;
    }

    FigSimpleMutexUnlock();
  }

  v1701 = a7;
  FigSimpleMutexLock();
  v313 = *(v300 + 264);
  v1981[0] = v21;
  if (v313)
  {
    p_duration = CFRetain(v313);
  }

  else
  {
    p_duration = 0;
  }

  FigSimpleMutexUnlock();
  shouldEnableMainVideo = itemfig_shouldEnableMainVideo(a1);
  v315 = *(v300 + 592);
  if (v315)
  {
    CFRelease(v315);
    *(v300 + 592) = 0;
  }

  v316 = *(v300 + 672);
  if (v316)
  {
    CFRelease(v316);
    *(v300 + 672) = 0;
  }

  v317 = *(v300 + 616);
  if (v317)
  {
    CFRelease(v317);
    *(v300 + 616) = 0;
  }

  v318 = *(i + 656);
  LODWORD(v1790) = v318 != 0;
  LODWORD(v1736[0]) = *(i + 832) != 0;
  if (!v318)
  {
    playeritemfig_releaseVideoCompositionObjects(a1);
  }

  if (v2079 && shouldEnableMainVideo)
  {
    v1947 = OctaviaSubtitleRenderPipeline;
    if (v2120)
    {
      v319 = CFArrayGetCount(v2120) > 0;
    }

    else
    {
      v319 = 0;
    }

    v320 = 0;
    if (p_duration)
    {
      goto LABEL_380;
    }

LABEL_381:
    for (j = 0; v320 < j; j = CFArrayGetCount(p_duration))
    {
      CFArrayGetValueAtIndex(p_duration, v320);
      v321 = CFGetAllocator(v298);
      FigVideoTargetGetCMBaseObject();
      a7 = v322;
      v323 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      if (v323)
      {
        v323(a7, 0x1F0B32AB8, v321, &v2174);
      }

      if (v2174)
      {
        if (CFBooleanGetValue(v2174))
        {
          v319 = 1;
        }

        if (v2174)
        {
          CFRelease(v2174);
          v2174 = 0;
        }
      }

      ++v320;
      if (!p_duration)
      {
        goto LABEL_381;
      }

LABEL_380:
      ;
    }

    FigSimpleMutexLock();
    v325 = *(v300 + 504);
    if (v325)
    {
      v326 = CFRetain(v325);
    }

    else
    {
      v326 = 0;
    }

    a1 = v1928;
    FigSimpleMutexUnlock();
    RenderTriplesForVideoComposition = FPSupport_CopyDestinationPixelBufferAttributesWithIOSurfaceSupport(v326, v319, &valuePtr);
    if (v326)
    {
      CFRelease(v326);
    }

    DerivedStorage = v2029;
    OctaviaSubtitleRenderPipeline = v1947;
    if (RenderTriplesForVideoComposition)
    {
LABEL_389:
      a6 = v1893;
      v21 = v1981[0];
      goto LABEL_477;
    }
  }

  FigUseVideoReceiverForCALayer();
  OUTLINED_FUNCTION_786();
  if (shouldEnableMainVideo)
  {
    if ((v327 & (v1790 ^ LODWORD(v1736[0]))) != 0)
    {
      v328 = *(i + 1144);
      if (v328)
      {
        if (CFArrayGetCount(v328) >= 1)
        {
          a7 = OctaviaSubtitleRenderPipeline;
          CMNotificationCenterGetDefaultLocalCenter();
          FigDispatchAsyncPostNotification();
          itemfig_handleReadyToDisplayVideoLatch(a1, 1, v1825);
          if (*(v300 + 224) < 1)
          {
            FigSimpleMutexLock();
            v329 = *(i + 1144);
            if (v329)
            {
              CFRelease(v329);
              *(i + 1144) = 0;
            }

            v330 = *(i + 1152);
            if (v330)
            {
              CFRelease(v330);
              *(i + 1152) = 0;
            }

            FigSimpleMutexUnlock();
          }

          else
          {
            itemfig_stashTransitionImageQueuesAndSlots(a1);
          }
        }
      }
    }
  }

  v331 = _os_feature_enabled_impl();
  if (!shouldEnableMainVideo || !v331)
  {
    if (shouldEnableMainVideo)
    {
      a7 = 0;
      v332 = theArray;
      v21 = v1981[0];
      goto LABEL_415;
    }

    v21 = v1981[0];
    if (*(v300 + 129))
    {
      goto LABEL_475;
    }

    goto LABEL_423;
  }

  if (itemfig_countOfEnabledVideoTracks(a1) == 1)
  {
    RenderTriplesForVideoTrackSampleAttachmentCollectors = itemfig_createRenderTriplesForVideoTrackSampleAttachmentCollectors(a1, *(i + 1040), (i + 2208), type);
    if (RenderTriplesForVideoTrackSampleAttachmentCollectors)
    {
      RenderTriplesForVideoComposition = RenderTriplesForVideoTrackSampleAttachmentCollectors;
      goto LABEL_389;
    }
  }

  v21 = v1981[0];
  if (*type)
  {
    a7 = CFArrayGetCount(*type) > 0;
  }

  else
  {
    a7 = 0;
  }

  v332 = theArray;
LABEL_415:
  if (!*(i + 656))
  {
    if (*(v300 + 129))
    {
LABEL_475:
      RenderTriplesForVideoComposition = 0;
      goto LABEL_476;
    }

    v340 = *(i + 1040);
    if (!v340)
    {
LABEL_423:
      if (FigUseVideoReceiverForCALayer())
      {
        itemfig_clearAllImageQueueTables(a1);
      }

      else
      {
        itemfig_removeAllImageQueues(a1);
        playerfig_freeTransitionImageQueueAndSlot(v298);
      }

      goto LABEL_475;
    }

    *value = 0;
    v967 = itemfig_getTrackStorage(a1, v340, value);
    if (v967)
    {
      RenderTriplesForVideoComposition = v967;
      a1 = v1928;
LABEL_476:
      a6 = v1893;
LABEL_477:
      OctaviaClosedCaptionsRenderPipeline = alloc;
      goto LABEL_478;
    }

    v971 = *value;
    v972 = *(*value + 16);
    if (v972)
    {
      FigStopForwardingMediaServicesProcessDeathNotification();
      v967 = *(v971 + 16);
      if (v967)
      {
        CFRelease(v967);
        *(v971 + 16) = 0;
      }
    }

    v974 = *(v971 + 48);
    v973 = (v971 + 48);
    if (!v974)
    {
      v967 = FigImageQueueTableCreateWithOptions(v1701, alloc, v973);
    }

    v975 = *(i + 1040);
    LODWORD(formatDescriptionOut[0].start.value) = *(i + 1040);
    v1947 = OctaviaSubtitleRenderPipeline;
    v976 = a7;
    if (!*(v300 + 130))
    {
      goto LABEL_1222;
    }

    a7 = formatDescriptionOut;
    *v1736 = *MEMORY[0x1E6960C70];
    *cf = *MEMORY[0x1E6960C70];
    v1059 = *(MEMORY[0x1E6960C70] + 16);
    *&cf[16] = v1059;
    OUTLINED_FUNCTION_263_0();
    CommonRenderPipelineOptionsForTrack = fp_createCommonRenderPipelineOptionsForTrack(v1060, v1061, v1062, v1063, v1064, 0, v1065);
    if (CommonRenderPipelineOptionsForTrack)
    {
      goto LABEL_1603;
    }

    itemfig_reuseExistingRenderPipeline(*(i + 392), formatDescriptionOut);
    v984 = formatDescriptionOut[0].duration.value;
    if (formatDescriptionOut[0].duration.value)
    {
      goto LABEL_1496;
    }

    v2176 = 0;
    *cf = *v1736;
    *&cf[16] = v1059;
    OUTLINED_FUNCTION_263_0();
    v1072 = fp_createCommonRenderPipelineOptionsForTrack(v1066, v1067, v1068, v1069, v1070, 1, v1071);
    if (v1072)
    {
      RenderTriplesForVideoComposition = v1072;
      a1 = v1928;
      a6 = v1893;
      goto LABEL_1634;
    }

    v1073 = *(i + 1144);
    if (v1073)
    {
      v1073 = CFRetain(v1073);
    }

    *v2170 = v1073;
    v1074 = *(i + 1152);
    if (v1074)
    {
      v1074 = CFRetain(v1074);
    }

    v2169 = v1074;
    if (*(i + 1872))
    {
      OUTLINED_FUNCTION_156_0();
    }

    OUTLINED_FUNCTION_380_0();
    v1161 = OUTLINED_FUNCTION_356_0(v1154, v1155, v1156, v1157, v1158, v1159, v2170, &v2169, 0, v1160, v1493, v1512, v1531, v1548, key, v1582, v1599, v1616, v1633, v1650, v1667, v1684, v1701, v1718, v1736[0], v1736[1], v1772, v1790, v1808, v1825, v1842, v1859, context, v1893, v1910, v1928);
    if (fp_createFigImageQueueArrayForVideoRenderPipeline(v1161, v1162, 1, v1163, v1164, v1165, v1166, v1167, v1467, v1487, v1506, v1525))
    {
      if (v2176)
      {
        CFRelease(v2176);
      }
    }

    else
    {
      v1168 = fp_buildVideoRenderPipelineForTrack(v298, 0, *(i + 1040), valuePtr, 1, *(*value + 24), *(v300 + 904), 1, v2176, 0, 0, &formatDescriptionOut[0].duration);
      if (v2176)
      {
        CFRelease(v2176);
      }

      if (!v1168)
      {
        FigSimpleMutexLock();
        v1169 = *(i + 1144);
        v1170 = *v2170;
        *(i + 1144) = *v2170;
        if (v1170)
        {
          CFRetain(v1170);
        }

        if (v1169)
        {
          CFRelease(v1169);
        }

        v1171 = *(i + 1152);
        v1172 = v2169;
        *(i + 1152) = v2169;
        if (v1172)
        {
          CFRetain(v1172);
        }

        if (v1171)
        {
          CFRelease(v1171);
        }

        FigSimpleMutexUnlock();
        v1173 = FigUseVideoReceiverForCALayer();
        if (v1173)
        {
          v1242 = OUTLINED_FUNCTION_356_0(v1173, v1174, v1175, v1176, v1177, v1178, v1179, v1180, v1454, v1473, v1493, v1512, v1531, v1548, key, v1582, v1599, v1616, v1633, v1650, v1667, v1684, v1701, v1718, v1736[0], v1736[1], v1772, v1790, v1808, v1825, v1842, v1859, context, v1893, v1910, v1928);
          itemfig_clearAllImageQueueTables(v1242);
        }

        else
        {
          v1181 = OUTLINED_FUNCTION_356_0(v1173, v1174, v1175, v1176, v1177, v1178, v1179, v1180, v1454, v1473, v1493, v1512, v1531, v1548, key, v1582, v1599, v1616, v1633, v1650, v1667, v1684, v1701, v1718, v1736[0], v1736[1], v1772, v1790, v1808, v1825, v1842, v1859, context, v1893, v1910, v1928);
          itemfig_removeAllImageQueues(v1181);
          playerfig_freeTransitionImageQueueAndSlot(v298);
        }

        *(v300 + 131) = 1;
        NotificationPayloadForProperties = playerfig_createNotificationPayloadForProperties(v298, v1171, v1182, v1183, v1184, v1185, v1186, v1187, @"IsNeroPlaybackActive", 0);
        CMNotificationCenterGetDefaultLocalCenter();
        FigDispatchAsyncPostNotification();
        if (NotificationPayloadForProperties)
        {
          CFRelease(NotificationPayloadForProperties);
        }

        v967 = *(v300 + 584);
        v21 = v1981[0];
        if (!v967)
        {
          goto LABEL_1494;
        }

        v1188 = MEMORY[0x1E695E4C0];
LABEL_1493:
        v1244 = *v1188;
        FigRenderPipelineGetFigBaseObject();
        v967 = CMBaseObjectSetProperty(v1245, @"ShouldCompensateForNeroScreenLatency", v1244);
LABEL_1494:
        v984 = formatDescriptionOut[0].duration.value;
        if (formatDescriptionOut[0].duration.value)
        {
          goto LABEL_1496;
        }

        v975 = *(i + 1040);
LABEL_1222:
        *v1981 = *MEMORY[0x1E6960C70];
        *cf = *MEMORY[0x1E6960C70];
        a7 = *(MEMORY[0x1E6960C70] + 16);
        *&cf[16] = a7;
        OUTLINED_FUNCTION_420_0(v967, v972, cf, v975, v968, v969, &formatDescriptionOut[0].start.timescale, v970, v1454, v1473, v1493, v1512, v1531, v1548, key, v1582, v1599, v1616, v1633, v1650, v1667, v1684, v1701, v1718, v1736[0], v1736[1], v1772, v1790, v1808, v1825, v1842, v1859, context, v1893, v1910, v1928);
        OUTLINED_FUNCTION_263_0();
        CommonRenderPipelineOptionsForTrack = fp_createCommonRenderPipelineOptionsForTrack(v977, v978, v979, v980, v981, 0, v982);
        if (!CommonRenderPipelineOptionsForTrack)
        {
          itemfig_reuseExistingRenderPipeline(*(i + 392), formatDescriptionOut);
          v984 = formatDescriptionOut[0].duration.value;
          if (!formatDescriptionOut[0].duration.value)
          {
            v2176 = 0;
            *cf = *v1981;
            *&cf[16] = a7;
            a1 = v1928;
            OUTLINED_FUNCTION_263_0();
            FigImageQueueArrayForVideoRenderPipeline = fp_createCommonRenderPipelineOptionsForTrack(v985, v986, v987, v988, v989, 1, v990);
            if (FigImageQueueArrayForVideoRenderPipeline)
            {
              goto LABEL_1632;
            }

            v992 = *(i + 1144);
            if (v992)
            {
              v992 = CFRetain(v992);
            }

            *v2170 = v992;
            v993 = *(i + 1152);
            if (v993)
            {
              v993 = CFRetain(v993);
            }

            v2169 = v993;
            if (*(i + 1872))
            {
              OUTLINED_FUNCTION_156_0();
            }

            OUTLINED_FUNCTION_380_0();
            FigImageQueueArrayForVideoRenderPipeline = fp_createFigImageQueueArrayForVideoRenderPipeline(v1928, v1190, 0, v1191, v1192, v1193, v2170, &v2169, p_duration, v1194, v1493, v1512);
            if (FigImageQueueArrayForVideoRenderPipeline)
            {
LABEL_1632:
              a6 = v1893;
              RenderTriplesForVideoComposition = FigImageQueueArrayForVideoRenderPipeline;
            }

            else
            {
              a7 = *value;
              if (v976)
              {
                v1195 = *(*value + 4) == 1986618469;
              }

              else
              {
                v1195 = 0;
              }

              RenderTriplesForVideoComposition = fp_buildVideoRenderPipelineForTrack(v298, v1928, *(i + 1040), valuePtr, 0, *(*value + 24), *(v300 + 904), 1, v2176, 0, v1195, &formatDescriptionOut[0].duration);
              if (v2176)
              {
                CFRelease(v2176);
              }

              a6 = v1893;
              if (!RenderTriplesForVideoComposition)
              {
                FigSimpleMutexLock();
                v1196 = *(i + 1144);
                v1197 = *v2170;
                *(i + 1144) = *v2170;
                if (v1197)
                {
                  CFRetain(v1197);
                }

                if (v1196)
                {
                  CFRelease(v1196);
                }

                v1198 = *(i + 1152);
                v1199 = v2169;
                *(i + 1152) = v2169;
                if (v1199)
                {
                  CFRetain(v1199);
                }

                if (v1198)
                {
                  CFRelease(v1198);
                }

                FigSimpleMutexUnlock();
                v984 = formatDescriptionOut[0].duration.value;
                FigStartForwardingMediaServicesProcessDeathNotification();
                if (!v984)
                {
                  v1200 = 0;
                  *(a7 + 16) = 0;
                  goto LABEL_1498;
                }

LABEL_1497:
                v1246 = CFRetain(v984);
                a7 = *value;
                *(*value + 16) = v1246;
                v1200 = CFRetain(v984);
LABEL_1498:
                *(v300 + 592) = v1200;
                v1247 = *(a7 + 48);
                if (v1247)
                {
                  v1247 = CFRetain(v1247);
                }

                *(v300 + 616) = v1247;
                CFArrayAppendValue(v1947, formatDescriptionOut);
                itemfig_resetRenderTriple(formatDescriptionOut);
                v1248 = *(v300 + 616);
                if (v1248)
                {
                  *cf = 0;
                  FigImageQueueTableCopyFigImageQueueArray(v1248, cf);
                  v1249 = MEMORY[0x1E695E4D0];
                  if (!*(i + 1176))
                  {
                    v1249 = MEMORY[0x1E695E4C0];
                  }

                  FigImageQueueArraySetProperty(*cf, @"FigImageQueueProperty_BlendsVideoFrames", *v1249);
                  FigImageQueueArraySetProperty(*cf, @"FigImageQueueProperty_ImageQueueInterpolationCurve", *(i + 1168));
                  itemfig_enableImageQueueTimingAndSetDurationOnFigImageQueueArray();
                  if (*cf)
                  {
                    CFRelease(*cf);
                  }
                }

                if (v1842)
                {
                  FigImageQueueTableSetTimebase(*(v300 + 616), *(i + 328));
                }

                v1250 = *(i + 2208);
                FigRenderPipelineGetFigBaseObject();
                CMBaseObjectSetProperty(v1251, @"AttachmentCollectorMetadataSourceBuffers", v1250);
                if (*(v300 + 240))
                {
                  v1252 = *MEMORY[0x1E695E4D0];
                }

                else
                {
                  v1252 = *MEMORY[0x1E695E4C0];
                }

                FigRenderPipelineGetFigBaseObject();
                CMBaseObjectSetProperty(v1253, @"PreventDisplaySleepDuringVideoPlayback", v1252);
                v1254 = *(i + 1184);
                if (v1254)
                {
                  FigRenderPipelineGetFigBaseObject();
                  CMBaseObjectSetProperty(v1255, @"VideoEnhancementMode", v1254);
                }

                FigRenderPipelineGetFigBaseObject();
                OUTLINED_FUNCTION_206_0();
                CMBaseObjectSetProperty(v1256, v1257, v1258);
                a7 = @"PropagatePerFrameHDRDisplayMetadata";
                FigRenderPipelineGetFigBaseObject();
                OUTLINED_FUNCTION_206_0();
                CMBaseObjectSetProperty(v1259, v1260, v1261);
                itemfig_updateRotationOnVideoRenderPipeline(a1, *(i + 1040));
                itemfig_applyEnhancementFilterOptions();
                itemfig_applyDisableColorMatching();
                itemfig_updatePriorImageQueueGaugeOnRenderPipelines(a1);
                v1262 = FigUseVideoReceiverForCALayer();
                RenderTriplesForVideoComposition = 0;
                if (v1718)
                {
                  DerivedStorage = v2029;
                  OctaviaClosedCaptionsRenderPipeline = alloc;
                  OctaviaSubtitleRenderPipeline = v1947;
                  i = allocator;
                  if (!v1262)
                  {
                    itemfig_handleReadyToDisplayVideoLatch(a1, 3, v1825);
                    RenderTriplesForVideoComposition = 0;
                  }

                  goto LABEL_479;
                }
              }
            }

LABEL_1634:
            DerivedStorage = v2029;
            goto LABEL_1635;
          }

LABEL_1496:
          a1 = v1928;
          FigStartForwardingMediaServicesProcessDeathNotification();
          a6 = v1893;
          goto LABEL_1497;
        }

LABEL_1603:
        a1 = v1928;
        a6 = v1893;
        DerivedStorage = v2029;
        RenderTriplesForVideoComposition = CommonRenderPipelineOptionsForTrack;
LABEL_1635:
        OctaviaClosedCaptionsRenderPipeline = alloc;
        OctaviaSubtitleRenderPipeline = v1947;
LABEL_478:
        i = allocator;
        goto LABEL_479;
      }
    }

    if (*&formatDescriptionOut[0].start.timescale)
    {
      CFRelease(*&formatDescriptionOut[0].start.timescale);
      *&formatDescriptionOut[0].start.timescale = 0;
    }

    if (*&formatDescriptionOut[0].duration.timescale)
    {
      CFRelease(*&formatDescriptionOut[0].duration.timescale);
      *&formatDescriptionOut[0].duration.timescale = 0;
    }

    if (formatDescriptionOut[0].duration.value)
    {
      CFRelease(formatDescriptionOut[0].duration.value);
      formatDescriptionOut[0].duration.value = 0;
    }

    v967 = *(v300 + 584);
    if (!v967)
    {
      goto LABEL_1494;
    }

    v1188 = MEMORY[0x1E695E4D0];
    goto LABEL_1493;
  }

  OctaviaClosedCaptionsRenderPipeline = alloc;
  if (v332 && *(i + 824))
  {
    i = allocator;
    RenderTriplesForVideoComposition = itemfig_reuseRenderTriplesForVideoComposition(a1, OctaviaSubtitleRenderPipeline, allocator, v1842);
LABEL_340:
    a6 = v1893;
    goto LABEL_479;
  }

  v1947 = OctaviaSubtitleRenderPipeline;
  playeritemfig_releaseVideoCompositionObjects(a1);
  v333 = CMBaseObjectGetDerivedStorage();
  v334 = CMBaseObjectGetDerivedStorage();
  v2175 = 0;
  v2176 = 0;
  v335 = *(v333 + 720);
  v336 = *(v333 + 736);
  v337 = *(v333 + 728);
  v2172 = 0;
  itemfig_getImageQueueFlagsAndMask(a1, &v2172 + 1, &v2172);
  CFGetAllocator(a1);
  fp_visualContextArrayIfVideoOutputAllowed(v2120, *(v333 + 1200));
  v338 = FigCFArrayCreateMutableCopy();
  if (!v338)
  {
    OUTLINED_FUNCTION_39_0();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v1454, v1473, v1493);
    RenderTriplesForVideoComposition = v1237;
    a6 = v1893;
    i = allocator;
    v21 = v1981[0];
    goto LABEL_470;
  }

  v339 = v338;
  LODWORD(v1790) = a7;
  if (FigUseVideoReceiverForCALayer() || (!v2105 || CFArrayGetCount(v2105) <= 0) && *(v334 + 224) < 1)
  {
    v1736[0] = 0;
    goto LABEL_442;
  }

  v341 = *(v333 + 1144);
  if (v341)
  {
    v341 = CFRetain(v341);
  }

  v2176 = v341;
  v342 = *(v333 + 1152);
  if (v342)
  {
    v342 = CFRetain(v342);
  }

  v2175 = v342;
  v343 = fp_buildImageQueueArray((v335 * v336), (v337 * v336), v2105, *(v334 + 224), &v2176, &v2175);
  if (v343)
  {
    RenderTriplesForVideoComposition = v343;
    v1736[0] = v2176;
    goto LABEL_1469;
  }

  FigSimpleMutexLock();
  v344 = *(v333 + 1144);
  v345 = v2176;
  *(v333 + 1144) = v2176;
  OctaviaClosedCaptionsRenderPipeline = alloc;
  if (v345)
  {
    CFRetain(v345);
  }

  v1736[0] = v345;
  if (v344)
  {
    CFRelease(v344);
  }

  v346 = *(v333 + 1152);
  v347 = v2175;
  *(v333 + 1152) = v2175;
  if (v347)
  {
    CFRetain(v347);
  }

  if (v346)
  {
    CFRelease(v346);
  }

  FigSimpleMutexUnlock();
  FigCFArrayAppendArray();
LABEL_442:
  FigCFArrayAppendArray();
  v348 = (v333 + 848);
  if (!*(v333 + 848) && (matched = FigImageQueueTableCreateWithOptions(v1701, OctaviaClosedCaptionsRenderPipeline, (v333 + 848)), matched) || (OUTLINED_FUNCTION_75_0(), matched = FigImageQueueTableUpdateToMatchOutputsArray(v350, v339, v351, v352, fp_imageQueueTableWillReleaseImageQueueCallback, v1928), matched))
  {
    RenderTriplesForVideoComposition = matched;
LABEL_1469:
    CFRelease(v339);
    v21 = v1981[0];
    OctaviaClosedCaptionsRenderPipeline = alloc;
    goto LABEL_468;
  }

  FigImageQueueTableSetFlagsAndMask(*(v333 + 848), SHIDWORD(v2172), v2172);
  v353 = *MEMORY[0x1E695E4D0];
  FigImageQueueTableSetPropertyOnImageQueues(*(v333 + 848), @"FigImageQueueProperty_EnqueueResetsSystemSleepTimer", *MEMORY[0x1E695E4D0]);
  if (*(v334 + 240))
  {
    v354 = v353;
  }

  else
  {
    v354 = *MEMORY[0x1E695E4C0];
  }

  FigImageQueueTableSetPropertyOnImageQueues(*(v333 + 848), @"PreventDisplaySleepDuringVideoPlayback", v354);
  v355 = *(v333 + 1184);
  if (v355)
  {
    FigImageQueueTableSetPropertyOnImageQueues(*v348, @"VideoEnhancementMode", v355);
  }

  v356 = *v348;
  FigImageQueueTableSetPropertyOnImageQueues(*v348, @"EnableImageQueueTiming", v353);
  OUTLINED_FUNCTION_95_0(MEMORY[0x1E6960C70]);
  itemfig_getDurationIfReady(v1928, cf);
  if (!v357 && (cf[12] & 1) != 0)
  {
    *value = *cf;
    *&value[16] = *&cf[16];
    v358 = CMTimeCopyAsDictionary(value, v1701);
    FigImageQueueTableSetPropertyOnImageQueues(v356, @"Duration", v358);
    if (v358)
    {
      CFRelease(v358);
    }
  }

  CFRelease(v339);
  v359 = (v333 + 832);
  v360 = *(v333 + 832);
  if (v360)
  {
    CFRelease(v360);
    *v359 = 0;
  }

  v361 = *(v333 + 840);
  v21 = v1981[0];
  OctaviaClosedCaptionsRenderPipeline = alloc;
  if (v361)
  {
    CFRelease(v361);
    *(v333 + 840) = 0;
  }

  FigImageQueueTableCopyFigImageQueueArray(*v348, (v333 + 832));
  if (*v359 && (v362 = CFArrayGetCount(*v359), v362 >= 1))
  {
    v363 = v362;
    for (k = 0; k != v363; ++k)
    {
      v365 = CFArrayGetValueAtIndex(*v359, k);
      v366 = *(v334 + 48) != 0.0;
      v367 = *(*(CMBaseObjectGetVTable() + 16) + 40);
      if (v367)
      {
        v367(v365, v366);
      }

      v368 = *(*(CMBaseObjectGetVTable() + 16) + 48);
      if (v368)
      {
        v368(v365, 1.0);
      }
    }

    RenderTriplesForVideoComposition = 0;
    DerivedStorage = v2029;
  }

  else
  {
    RenderTriplesForVideoComposition = 0;
  }

LABEL_468:
  a1 = v1928;
  OctaviaSubtitleRenderPipeline = v1947;
  a6 = v1893;
  i = allocator;
  a7 = v1790;
  if (v1736[0])
  {
    CFRelease(v1736[0]);
  }

LABEL_470:
  if (v2175)
  {
    CFRelease(v2175);
  }

  if (!RenderTriplesForVideoComposition)
  {
    RenderTriplesForVideoComposition = itemfig_createRenderTriplesForVideoComposition(a1, v1842, valuePtr, a7, OctaviaClosedCaptionsRenderPipeline, OctaviaSubtitleRenderPipeline, i);
  }

LABEL_479:
  itemfig_resetRenderTriple(formatDescriptionOut);
  *(&v2186 + 1) = OctaviaSubtitleRenderPipeline;
  *&v2189 = i;
  *&v2191 = *type;
  if (*v2170)
  {
    CFRelease(*v2170);
  }

  if (v2169)
  {
    CFRelease(v2169);
  }

  if (v2120)
  {
    CFRelease(v2120);
  }

  if (valuePtr)
  {
    CFRelease(valuePtr);
  }

  if (v2105)
  {
    dispatch_async_f(MEMORY[0x1E69E96A0], v2105, itemfig_releaseVideoLayerArray);
  }

  if (p_duration)
  {
    CFRelease(p_duration);
  }

  if (v2174)
  {
    CFRelease(v2174);
  }

  if (OctaviaClosedCaptionsRenderPipeline)
  {
    CFRelease(OctaviaClosedCaptionsRenderPipeline);
  }

  if (v21)
  {
    CFRelease(v21);
  }

  if (RenderTriplesForVideoComposition)
  {
    v21 = RenderTriplesForVideoComposition;
LABEL_1362:
    OUTLINED_FUNCTION_16_0();
    OUTLINED_FUNCTION_189_0();
    goto LABEL_1179;
  }

  if (!FigRenderedLegibleOutputManagerIsSupported())
  {
    goto LABEL_542;
  }

  a7 = CMBaseObjectGetDerivedStorage();
  CMBaseObjectGetDerivedStorage();
  OUTLINED_FUNCTION_79_0();
  if (!theSet)
  {
    i = 0;
    goto LABEL_515;
  }

  RenderTriplesForVideoComposition = v369;
  i = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, &_MergedGlobals);
  if (!i)
  {
    OUTLINED_FUNCTION_39_0();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v1454, v1473, v1493);
LABEL_1442:
    v21 = ClosedCaptionRenderPipeline;
    goto LABEL_516;
  }

  v370 = *(RenderTriplesForVideoComposition + 600);
  if (v370)
  {
    CFRelease(v370);
    *(RenderTriplesForVideoComposition + 600) = 0;
  }

  FPSupport_resetClosedCaptionLayer(RenderTriplesForVideoComposition + 304);
  if (!*(a7 + 1048) || *(a7 + 1873))
  {
    goto LABEL_515;
  }

  LODWORD(formatDescriptionOut[0].start.value) = *(a7 + 1048);
  OUTLINED_FUNCTION_155_0(MEMORY[0x1E6960C70]);
  v371 = OUTLINED_FUNCTION_188_0();
  ClosedCaptionRenderPipeline = fp_createCommonRenderPipelineOptionsForTrack(v371, v372, v373, v374, v375, 0, v376);
  if (ClosedCaptionRenderPipeline)
  {
    goto LABEL_1578;
  }

  itemfig_reuseExistingRenderPipeline(*(a7 + 400), formatDescriptionOut);
  v384 = formatDescriptionOut[0].duration.value;
  if (*(RenderTriplesForVideoComposition + 130) && formatDescriptionOut[0].duration.value)
  {
    CFRelease(formatDescriptionOut[0].duration.value);
    formatDescriptionOut[0].duration.value = 0;
  }

  else if (formatDescriptionOut[0].duration.value)
  {
    goto LABEL_509;
  }

  OUTLINED_FUNCTION_249_0(v384, v378, v379, *(a7 + 1048), v380, v381, v382, v383, v1454, v1473, v1493, v1512, v1531, v1548, key, v1582, v1599, v1616, v1633, v1650, v1667, v1684, v1701, v1718, v1736[0], v1736[1], v1772, v1790, v1808, v1825, v1842, v1859, context, v1893, v1910, v1928, v1947, allocator, v1981[0], v1981[1], v2012, v2029, alloc, theArray, v2079, v2105, v2120);
  v1096 = OUTLINED_FUNCTION_188_0();
  ClosedCaptionRenderPipeline = fp_createCommonRenderPipelineOptionsForTrack(v1096, v1097, v1098, v1099, v1100, 1, v1101);
  if (ClosedCaptionRenderPipeline)
  {
    goto LABEL_1578;
  }

  OctaviaSubtitleRenderPipeline = *(a7 + 1008);
  OctaviaClosedCaptionsRenderPipeline = *(a7 + 1048);
  if (!*(*(CMBaseObjectGetVTable() + 16) + 56))
  {
    v21 = 4294954514;
    a6 = v1893;
    goto LABEL_516;
  }

  v1102 = OUTLINED_FUNCTION_309_0();
  ClosedCaptionRenderPipeline = v1103(v1102, OctaviaClosedCaptionsRenderPipeline);
  if (ClosedCaptionRenderPipeline)
  {
    goto LABEL_1578;
  }

  ClosedCaptionRenderPipeline = OUTLINED_FUNCTION_438_0(ClosedCaptionRenderPipeline, v1104, v1105, v1106, v1107, v1108, v1109, v1110, v1454, v1473, v1493, v1512, v1531, v1548, key, v1582, v1599, v1616, v1633, v1650, v1667, v1684, v1701, v1718, v1736[0], v1736[1], v1772, v1790, v1808, v1825, v1842, v1859, context, v1893, v1910, v1928, v1947, allocator, v1981[0], v1981[1], v2012, v2029, alloc, theArray, v2079, v2105, v2120, *(&v2120 + 1), theSet, v2168, v2169, *v2170, *type, v2172, valuePtr, v2174, v2175, v2176);
  if (ClosedCaptionRenderPipeline)
  {
    goto LABEL_1578;
  }

  if (*(RenderTriplesForVideoComposition + 130) && *(RenderTriplesForVideoComposition + 131))
  {
    FigSimpleMutexLock();
    v1111 = *(RenderTriplesForVideoComposition + 168);
    if (v1111)
    {
      v1112 = CFRetain(v1111);
    }

    else
    {
      v1112 = 0;
    }

    FigSimpleMutexUnlock();
    OctaviaSubtitleRenderPipeline = v2176;
    v1238 = OUTLINED_FUNCTION_265();
    OctaviaClosedCaptionsRenderPipeline = FigCreateOctaviaClosedCaptionsRenderPipeline(v1238, v1239, v1112, v1240);
    if (v1112)
    {
      CFRelease(v1112);
    }

    if (OctaviaClosedCaptionsRenderPipeline || !formatDescriptionOut[0].duration.value)
    {
      a1 = v1928;
      DerivedStorage = v2029;
      ClosedCaptionRenderPipeline = OctaviaClosedCaptionsRenderPipeline;
    }

    else
    {
      a1 = v1928;
      ClosedCaptionRenderPipeline = fp_setDisplaySizeAndItemVideoSizeOnTextRenderPipeline(*(RenderTriplesForVideoComposition + 136), *(RenderTriplesForVideoComposition + 144), formatDescriptionOut[0].duration.value, *(RenderTriplesForVideoComposition + 152), v1928);
      DerivedStorage = v2029;
    }
  }

  else
  {
    OctaviaSubtitleRenderPipeline = v2176;
    OUTLINED_FUNCTION_95_0(MEMORY[0x1E6960CC0]);
    OUTLINED_FUNCTION_197();
    ClosedCaptionRenderPipeline = FigCreateClosedCaptionRenderPipeline(v1147, v1148, v1149, v1150, v1151, v1152, 0, v1153);
  }

  if (ClosedCaptionRenderPipeline)
  {
LABEL_1578:
    a6 = v1893;
    goto LABEL_1442;
  }

  ClosedCaptionRenderPipeline = itemfig_prepareClosedCaptionRenderPipeline(formatDescriptionOut[0].duration.value, OctaviaSubtitleRenderPipeline);
  if (ClosedCaptionRenderPipeline)
  {
    a6 = v1893;
    DerivedStorage = v2029;
    goto LABEL_1442;
  }

  v1241 = *(RenderTriplesForVideoComposition + 696);
  *(RenderTriplesForVideoComposition + 696) = OctaviaSubtitleRenderPipeline;
  if (OctaviaSubtitleRenderPipeline)
  {
    CFRetain(OctaviaSubtitleRenderPipeline);
  }

  if (v1241)
  {
    CFRelease(v1241);
  }

  v384 = formatDescriptionOut[0].duration.value;
  DerivedStorage = v2029;
  if (formatDescriptionOut[0].duration.value)
  {
LABEL_509:
    v384 = CFRetain(v384);
  }

  *(RenderTriplesForVideoComposition + 600) = v384;
  OUTLINED_FUNCTION_353_0();
  OctaviaSubtitleRenderPipeline = *(a7 + 1888);
  a6 = v1893;
  if (OctaviaSubtitleRenderPipeline)
  {
    FigRenderPipelineGetFigBaseObject();
    a7 = v385;
    if (*(*(CMBaseObjectGetVTable() + 8) + 56))
    {
      v386 = OUTLINED_FUNCTION_308();
      v387(v386);
    }
  }

  itemfig_resetRenderTriple(formatDescriptionOut);
LABEL_515:
  v21 = 0;
LABEL_516:
  itemfig_resetRenderTriple(formatDescriptionOut);
  *&v2187 = i;
  if (*value)
  {
    CFRelease(*value);
  }

  if (v2176)
  {
    CFRelease(v2176);
  }

  if (v21)
  {
    goto LABEL_1362;
  }

  CMBaseObjectGetDerivedStorage();
  OUTLINED_FUNCTION_79_0();
  if (!theSet)
  {
    OUTLINED_FUNCTION_164_0();
LABEL_533:
    v21 = 0;
    goto LABEL_534;
  }

  a7 = v388;
  i = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, &_MergedGlobals);
  if (!i)
  {
    OUTLINED_FUNCTION_39_0();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v1454, v1473, v1493);
    goto LABEL_1444;
  }

  v389 = *(a7 + 408);
  if (v389)
  {
    v390 = CFArrayGetCount(v389);
    if (v390 >= 1)
    {
      v391 = v390;
      for (RenderTriplesForVideoComposition = 0; RenderTriplesForVideoComposition != v391; ++RenderTriplesForVideoComposition)
      {
        v392 = CFArrayGetValueAtIndex(*(a7 + 408), RenderTriplesForVideoComposition);
        if (*v392 != *(a7 + 1048))
        {
          FigLegibleOutputManagerForgetAboutLegibleOutputRenderPipeline(*(a7 + 1792), v392[3]);
        }
      }
    }
  }

  if (!*(a7 + 1800) || !*(a7 + 1048))
  {
    OctaviaSubtitleRenderPipeline = 0;
    goto LABEL_533;
  }

  OUTLINED_FUNCTION_404_0();
  itemfig_GetDimensions();
  FigLegibleOutputManagerSetVideoDisplaySize(*(a7 + 1792), *&v2175, *&v2174);
  OUTLINED_FUNCTION_261_0();
  v697 = OUTLINED_FUNCTION_188_0();
  v703 = fp_createCommonRenderPipelineOptionsForTrack(v697, v698, v699, v700, v701, 1, v702);
  if (v703)
  {
    goto LABEL_1444;
  }

  RenderTriplesForVideoComposition = *(a7 + 1048);
  if (!*(*(CMBaseObjectGetVTable() + 16) + 56))
  {
    v21 = 4294954514;
LABEL_1005:
    OctaviaSubtitleRenderPipeline = 0;
    goto LABEL_534;
  }

  v704 = OUTLINED_FUNCTION_309_0();
  v703 = v705(v704, RenderTriplesForVideoComposition);
  if (v703 || (v703 = OUTLINED_FUNCTION_438_0(v703, v706, v707, v708, v709, v710, v711, v712, v1454, v1473, v1493, v1512, v1531, v1548, key, v1582, v1599, v1616, v1633, v1650, v1667, v1684, v1701, v1718, v1736[0], v1736[1], v1772, v1790, v1808, v1825, v1842, v1859, context, v1893, v1910, v1928, v1947, allocator, v1981[0], v1981[1], v2012, v2029, alloc, theArray, v2079, v2105, v2120, *(&v2120 + 1), theSet, v2168, v2169, *v2170, *type, v2172, valuePtr, v2174, v2175, v2176), v703))
  {
LABEL_1444:
    v21 = v703;
    goto LABEL_1005;
  }

  RenderTriplesForVideoComposition = v2176;
  v713 = FigLegibleOutputManagerEnsureRenderPipelinesForFormat(*(a7 + 1792), v2176);
  OctaviaSubtitleRenderPipeline = v713;
  if (!v713 || CFArrayGetCount(v713) < 1)
  {
    goto LABEL_533;
  }

  OUTLINED_FUNCTION_402_0();
  while (1)
  {
    LODWORD(formatDescriptionOut[0].start.value) = *(a7 + 1048);
    v714 = OUTLINED_FUNCTION_389_0();
    v716 = CFArrayGetValueAtIndex(v714, v715);
    if (v716)
    {
      v716 = CFRetain(v716);
    }

    formatDescriptionOut[0].duration.value = v716;
    v717 = itemfig_prepareClosedCaptionRenderPipeline(v716, RenderTriplesForVideoComposition);
    if (v717)
    {
      break;
    }

    OUTLINED_FUNCTION_353_0();
    itemfig_resetRenderTriple(formatDescriptionOut);
    if (OctaviaClosedCaptionsRenderPipeline == ++a6)
    {
      v21 = 0;
      a6 = v1893;
      goto LABEL_534;
    }
  }

  a6 = v1893;
  v21 = v717;
LABEL_534:
  itemfig_resetRenderTriple(formatDescriptionOut);
  *(&v2187 + 1) = i;
  if (*value)
  {
    CFRelease(*value);
  }

  if (v2176)
  {
    CFRelease(v2176);
  }

  if (OctaviaSubtitleRenderPipeline)
  {
    CFRelease(OctaviaSubtitleRenderPipeline);
  }

  if (v21)
  {
    goto LABEL_1362;
  }

  playerfig_updateClosedCaptionsDisplayForItem(v1859, a1);
LABEL_542:
  if (!FigRenderedLegibleOutputManagerIsSupported())
  {
    goto LABEL_594;
  }

  RenderTriplesForVideoComposition = CMBaseObjectGetDerivedStorage();
  a6 = *(RenderTriplesForVideoComposition + 8);
  CMBaseObjectGetDerivedStorage();
  OUTLINED_FUNCTION_79_0();
  if (!theSet)
  {
    i = 0;
    goto LABEL_556;
  }

  a7 = v393;
  OctaviaClosedCaptionsRenderPipeline = *MEMORY[0x1E695E480];
  v394 = OUTLINED_FUNCTION_266_0();
  i = CFArrayCreateMutable(v394, v395, v396);
  if (!i)
  {
    OUTLINED_FUNCTION_39_0();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v1454, v1473, v1493);
LABEL_1446:
    OctaviaSubtitleRenderPipeline = v409;
    goto LABEL_557;
  }

  v397 = *(a7 + 608);
  if (v397)
  {
    CFRelease(v397);
    *(a7 + 608) = 0;
  }

  if (!*(RenderTriplesForVideoComposition + 1056) || *(RenderTriplesForVideoComposition + 1873))
  {
    goto LABEL_556;
  }

  LODWORD(formatDescriptionOut[0].start.value) = *(RenderTriplesForVideoComposition + 1056);
  v21 = formatDescriptionOut;
  OUTLINED_FUNCTION_155_0(MEMORY[0x1E6960C70]);
  v404 = OUTLINED_FUNCTION_420_0(v398, v399, cf, v400, v401, v402, &formatDescriptionOut[0].start.timescale, v403, v1454, v1473, v1493, v1512, v1531, v1548, key, v1582, v1599, v1616, v1633, v1650, v1667, v1684, v1701, v1718, v1736[0], v1736[1], v1772, v1790, v1808, v1825, v1842, v1859, context, v1893, v1910, v1928);
  v409 = fp_createCommonRenderPipelineOptionsForTrack(v404, v405, v406, v407, 1935832172, 0, v408);
  if (v409)
  {
    goto LABEL_1446;
  }

  itemfig_reuseExistingRenderPipeline(*(RenderTriplesForVideoComposition + 416), formatDescriptionOut);
  v416 = formatDescriptionOut[0].duration.value;
  if (*(a7 + 130) && formatDescriptionOut[0].duration.value)
  {
    CFRelease(formatDescriptionOut[0].duration.value);
    formatDescriptionOut[0].duration.value = 0;
  }

  else if (formatDescriptionOut[0].duration.value)
  {
    goto LABEL_553;
  }

  v2175 = 0;
  OUTLINED_FUNCTION_249_0(v416, v410, v411, *(RenderTriplesForVideoComposition + 1056), v412, v413, v414, v415, v1454, v1473, v1493, v1512, v1531, v1548, key, v1582, v1599, v1616, v1633, v1650, v1667, v1684, v1701, v1718, v1736[0], v1736[1], v1772, v1790, v1808, v1825, v1842, v1859, context, v1893, v1910, v1928, v1947, allocator, v1981[0], v1981[1], v2012, v2029, alloc, theArray, v2079, v2105, v2120);
  v1121 = OUTLINED_FUNCTION_420_0(v1113, v1114, v1115, v1116, v1117, v1118, v1119, v1120, v1466, v1486, v1505, v1524, v1542, v1559, keyk, v1593, v1610, v1627, v1644, v1661, v1678, v1695, v1712, v1729, v1748, v1766, v1784, v1802, v1819, v1836, v1853, v1870, contextk, v1904, v1921, v1939);
  v409 = fp_createCommonRenderPipelineOptionsForTrack(v1121, v1122, v1123, v1124, 1935832172, 1, v1125);
  if (v409)
  {
    goto LABEL_1446;
  }

  p_duration = *(RenderTriplesForVideoComposition + 1056);
  if (!*(*(CMBaseObjectGetVTable() + 16) + 56))
  {
    OctaviaSubtitleRenderPipeline = 4294954514;
    goto LABEL_557;
  }

  v1126 = OUTLINED_FUNCTION_309_0();
  v409 = v1127(v1126, p_duration);
  if (v409)
  {
    goto LABEL_1446;
  }

  v1135 = OUTLINED_FUNCTION_438_0(v409, v1128, v1129, v1130, v1131, v1132, v1133, v1134, v1454, v1473, v1493, v1512, v1531, v1548, key, v1582, v1599, v1616, v1633, v1650, v1667, v1684, v1701, v1718, v1736[0], v1736[1], v1772, v1790, v1808, v1825, v1842, v1859, context, v1893, v1910, v1928, v1947, allocator, v1981[0], v1981[1], v2012, v2029, alloc, theArray, v2079, v2105, v2120, *(&v2120 + 1), theSet, v2168, v2169, *v2170, *type, v2172, valuePtr, v2174, v2175, v2176);
  if (v1135)
  {
    OctaviaSubtitleRenderPipeline = v1135;
    DerivedStorage = v2029;
    goto LABEL_557;
  }

  v1136 = *(a7 + 704);
  v1137 = v2176;
  *(a7 + 704) = v2176;
  if (v1137)
  {
    CFRetain(v1137);
  }

  p_duration = &formatDescriptionOut[0].duration;
  if (v1136)
  {
    CFRelease(v1136);
  }

  if ((!*(a7 + 130) || !*(a7 + 131)) && !*(a7 + 194))
  {
    if (*(a7 + 821))
    {
      OUTLINED_FUNCTION_95_0(MEMORY[0x1E6960CC0]);
      OUTLINED_FUNCTION_19();
      SubtitleRenderPipeline = FigCreateSubtitleRenderPipeline(v1228, v1229, v1230, v1231, v1232, v1233, v1234, v1235, cf, 0, &formatDescriptionOut[0].duration);
    }

    else
    {
      OUTLINED_FUNCTION_95_0(MEMORY[0x1E6960CC0]);
      OUTLINED_FUNCTION_19();
      SubtitleRenderPipeline = FigCreateCaptionRenderPipeline(v1314, v1315, v1316, v1317, v1318, v1319, v1320, v1321, cf, 0, &formatDescriptionOut[0].duration);
    }

    OctaviaSubtitleRenderPipeline = SubtitleRenderPipeline;
LABEL_1536:
    DerivedStorage = v2029;
    goto LABEL_1537;
  }

  FigSimpleMutexLock();
  v1138 = *(a7 + 168);
  if (v1138)
  {
    v1139 = CFRetain(v1138);
  }

  else
  {
    v1139 = 0;
  }

  FigSimpleMutexUnlock();
  v1209 = OUTLINED_FUNCTION_265();
  OctaviaSubtitleRenderPipeline = FigCreateOctaviaSubtitleRenderPipeline(v1209, v1210, v1139, &formatDescriptionOut[0].duration);
  if (v1139)
  {
    CFRelease(v1139);
  }

  if (OctaviaSubtitleRenderPipeline)
  {
    goto LABEL_1536;
  }

  DerivedStorage = v2029;
  if (formatDescriptionOut[0].duration.value)
  {
    OctaviaSubtitleRenderPipeline = fp_setDisplaySizeAndItemVideoSizeOnTextRenderPipeline(*(a7 + 136), *(a7 + 144), formatDescriptionOut[0].duration.value, *(a7 + 152), v1928);
  }

LABEL_1537:
  if (!OctaviaSubtitleRenderPipeline)
  {
    if (*(a7 + 720) && *(RenderTriplesForVideoComposition + 1060))
    {
      v1322 = MEMORY[0x1E695E4D0];
    }

    else
    {
      v1322 = MEMORY[0x1E695E4C0];
    }

    v1323 = *v1322;
    FigRenderPipelineGetFigBaseObject();
    a6 = v1324;
    v1325 = *(*(CMBaseObjectGetVTable() + 8) + 56);
    if (v1325)
    {
      v1325(a6, @"DisplayNonForcedSubtitles", v1323);
    }

    FigTrackReaderGetFigBaseObject();
    v1327 = v1326;
    v1328 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v1328)
    {
      v1328(v1327, @"ExtendedLanguageTagString", OctaviaClosedCaptionsRenderPipeline, &v2175);
      v1329 = v2175;
      if (v2175)
      {
        if (*(a7 + 821))
        {
          v1330 = kFigSubtitleRenderPipelineProperty_ExtendedLanguageTagString;
        }

        else
        {
          v1330 = &kFigCaptionRenderPipelineProperty_ExtendedLanguageTagString;
        }

        v1331 = *v1330;
        FigRenderPipelineGetFigBaseObject();
        v1332 = v1331;
        DerivedStorage = v2029;
        CMBaseObjectSetProperty(v1333, v1332, v1329);
        CFRelease(v2175);
      }
    }

    v1334 = *(RenderTriplesForVideoComposition + 1880);
    if (v1334)
    {
      if (*(a7 + 821))
      {
        v1335 = &kFigSubtitleRenderPipelineProperty_TextMarkupArray;
      }

      else
      {
        v1335 = &kFigCaptionRenderPipelineProperty_TextMarkupArray;
      }

      v1336 = *v1335;
      FigRenderPipelineGetFigBaseObject();
      v1337 = v1336;
      DerivedStorage = v2029;
      CMBaseObjectSetProperty(v1338, v1337, v1334);
    }

    v416 = formatDescriptionOut[0].duration.value;
    if (formatDescriptionOut[0].duration.value)
    {
LABEL_553:
      v416 = CFRetain(v416);
    }

    *(a7 + 608) = v416;
    OUTLINED_FUNCTION_353_0();
    itemfig_resetRenderTriple(formatDescriptionOut);
LABEL_556:
    OctaviaSubtitleRenderPipeline = 0;
  }

LABEL_557:
  itemfig_resetRenderTriple(formatDescriptionOut);
  *&v2188 = i;
  if (*value)
  {
    CFRelease(*value);
  }

  if (v2176)
  {
    CFRelease(v2176);
  }

  if (OctaviaSubtitleRenderPipeline)
  {
    v21 = OctaviaSubtitleRenderPipeline;
    OUTLINED_FUNCTION_16_0();
    OUTLINED_FUNCTION_189_0();
LABEL_1178:
    a1 = v1928;
    goto LABEL_1179;
  }

  CMBaseObjectGetDerivedStorage();
  OUTLINED_FUNCTION_79_0();
  if (!theSet)
  {
    v21 = 0;
    a6 = 0;
    OctaviaClosedCaptionsRenderPipeline = 0;
    i = 0;
LABEL_583:
    a7 = 0;
    goto LABEL_584;
  }

  RenderTriplesForVideoComposition = v417;
  v418 = *MEMORY[0x1E695E480];
  v419 = OUTLINED_FUNCTION_266_0();
  i = CFArrayCreateMutable(v419, v420, v421);
  if (!i)
  {
    OUTLINED_FUNCTION_39_0();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v1454, v1473, v1493);
    OUTLINED_FUNCTION_141_0();
    OctaviaClosedCaptionsRenderPipeline = 0;
    goto LABEL_583;
  }

  v422 = OUTLINED_FUNCTION_266_0();
  a7 = CFArrayCreateMutable(v422, v423, v424);
  if (!a7)
  {
    OUTLINED_FUNCTION_39_0();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v1454, v1473, v1493);
    goto LABEL_1449;
  }

  v425 = *(RenderTriplesForVideoComposition + 424);
  if (v425)
  {
    v426 = CFArrayGetCount(v425);
    if (v426 >= 1)
    {
      OctaviaSubtitleRenderPipeline = v426;
      for (m = 0; m != OctaviaSubtitleRenderPipeline; ++m)
      {
        v428 = CFArrayGetValueAtIndex(*(RenderTriplesForVideoComposition + 424), m);
        if (*v428 != *(RenderTriplesForVideoComposition + 1056))
        {
          FigLegibleOutputManagerForgetAboutLegibleOutputRenderPipeline(*(RenderTriplesForVideoComposition + 1792), v428[3]);
        }
      }
    }
  }

  v429 = *(RenderTriplesForVideoComposition + 472);
  if (v429)
  {
    v430 = CFArrayGetCount(v429);
    if (v430 >= 1)
    {
      OctaviaSubtitleRenderPipeline = v430;
      for (n = 0; n != OctaviaSubtitleRenderPipeline; ++n)
      {
        v432 = CFArrayGetValueAtIndex(*(RenderTriplesForVideoComposition + 472), n);
        if (*v432 != *(RenderTriplesForVideoComposition + 1056))
        {
          FigRenderedLegibleOutputManagerForgetAboutRenderedLegibleOutputRenderPipeline(*(RenderTriplesForVideoComposition + 1824), v432[3]);
        }
      }
    }
  }

  if (!*(RenderTriplesForVideoComposition + 1800) && !*(RenderTriplesForVideoComposition + 1832) || !*(RenderTriplesForVideoComposition + 1056))
  {
    v21 = 0;
    goto LABEL_581;
  }

  OUTLINED_FUNCTION_404_0();
  OUTLINED_FUNCTION_356_0(v671, v672, v673, v674, v675, v676, v677, v678, v1454, v1473, v1493, v1512, v1531, v1548, key, v1582, v1599, v1616, v1633, v1650, v1667, v1684, v1701, v1718, v1736[0], v1736[1], v1772, v1790, v1808, v1825, v1842, v1859, context, v1893, v1910, v1928);
  itemfig_GetDimensions();
  v679 = *&v2175;
  v680 = *&v2174;
  OUTLINED_FUNCTION_261_0();
  v681 = OUTLINED_FUNCTION_234();
  v686 = fp_createCommonRenderPipelineOptionsForTrack(v681, v682, v683, v684, 1935832172, 1, v685);
  if (v686)
  {
    goto LABEL_1449;
  }

  OctaviaSubtitleRenderPipeline = *(RenderTriplesForVideoComposition + 1008);
  v687 = *(RenderTriplesForVideoComposition + 1056);
  if (!*(*(CMBaseObjectGetVTable() + 16) + 56))
  {
    v21 = 4294954514;
LABEL_581:
    a6 = 0;
    OctaviaClosedCaptionsRenderPipeline = 0;
LABEL_584:
    a1 = v1928;
    goto LABEL_585;
  }

  v688 = OUTLINED_FUNCTION_309_0();
  v686 = v689(v688, v687);
  if (v686 || (v686 = OUTLINED_FUNCTION_438_0(v686, v690, v691, v692, v693, v694, v695, v696, v1454, v1473, v1493, v1512, v1531, v1548, key, v1582, v1599, v1616, v1633, v1650, v1667, v1684, v1701, v1718, v1736[0], v1736[1], v1772, v1790, v1808, v1825, v1842, v1859, context, v1893, v1910, v1928, v1947, allocator, v1981[0], v1981[1], v2012, v2029, alloc, theArray, v2079, v2105, v2120, *(&v2120 + 1), theSet, v2168, v2169, *v2170, *type, v2172, valuePtr, v2174, v2175, v2176), v686))
  {
LABEL_1449:
    v21 = v686;
    goto LABEL_581;
  }

  if (*(RenderTriplesForVideoComposition + 1800))
  {
    FigLegibleOutputManagerSetVideoDisplaySize(*(RenderTriplesForVideoComposition + 1792), v679, v680);
    a6 = FigLegibleOutputManagerEnsureRenderPipelinesForFormat(*(RenderTriplesForVideoComposition + 1792), v2176);
  }

  else
  {
    a6 = 0;
  }

  if (*(RenderTriplesForVideoComposition + 1832))
  {
    *cf = 0;
    FigTrackReaderGetFigBaseObject();
    OctaviaSubtitleRenderPipeline = v994;
    v995 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v995)
    {
      v995(OctaviaSubtitleRenderPipeline, @"ExtendedLanguageTagString", v418, cf);
      v996 = *cf;
    }

    else
    {
      v996 = 0;
    }

    a1 = v1928;
    OctaviaClosedCaptionsRenderPipeline = FigRenderedLegibleOutputManagerEnsureRenderPipelinesForFormat(*(RenderTriplesForVideoComposition + 1824), v2176, *(RenderTriplesForVideoComposition + 1880), v996);
    if (*cf)
    {
      CFRelease(*cf);
    }
  }

  else
  {
    OctaviaClosedCaptionsRenderPipeline = 0;
    a1 = v1928;
  }

  if (a6)
  {
    v997 = CFArrayGetCount(a6);
    if (v997 >= 1)
    {
      OctaviaSubtitleRenderPipeline = v997;
      p_duration = 0;
      do
      {
        LODWORD(formatDescriptionOut[0].start.value) = *(RenderTriplesForVideoComposition + 1056);
        v998 = OUTLINED_FUNCTION_396();
        v1000 = CFArrayGetValueAtIndex(v998, v999);
        if (v1000)
        {
          v1000 = CFRetain(v1000);
        }

        formatDescriptionOut[0].duration.value = v1000;
        OUTLINED_FUNCTION_353_0();
        itemfig_resetRenderTriple(formatDescriptionOut);
        ++p_duration;
      }

      while (OctaviaSubtitleRenderPipeline != p_duration);
    }
  }

  if (OctaviaClosedCaptionsRenderPipeline)
  {
    v1001 = CFArrayGetCount(OctaviaClosedCaptionsRenderPipeline);
    if (v1001 >= 1)
    {
      OctaviaSubtitleRenderPipeline = v1001;
      p_duration = 0;
      do
      {
        LODWORD(formatDescriptionOut[0].start.value) = *(RenderTriplesForVideoComposition + 1056);
        v1002 = OUTLINED_FUNCTION_204_0();
        v1004 = CFArrayGetValueAtIndex(v1002, v1003);
        if (v1004)
        {
          v1004 = CFRetain(v1004);
        }

        formatDescriptionOut[0].duration.value = v1004;
        CFArrayAppendValue(a7, formatDescriptionOut);
        itemfig_resetRenderTriple(formatDescriptionOut);
        ++p_duration;
      }

      while (OctaviaSubtitleRenderPipeline != p_duration);
    }
  }

  v21 = 0;
LABEL_585:
  itemfig_resetRenderTriple(formatDescriptionOut);
  *(&v2188 + 1) = i;
  *(&v2191 + 1) = a7;
  if (a6)
  {
    CFRelease(a6);
  }

  if (OctaviaClosedCaptionsRenderPipeline)
  {
    CFRelease(OctaviaClosedCaptionsRenderPipeline);
  }

  a6 = v1893;
  if (*value)
  {
    CFRelease(*value);
  }

  if (v2176)
  {
    CFRelease(v2176);
  }

  if (v21)
  {
    goto LABEL_1362;
  }

LABEL_594:
  FigSimpleMutexLock();
  v433 = *(a6 + 272);
  if (!v433)
  {
    FigSimpleMutexUnlock();
    v434 = HIDWORD(v1910);
    goto LABEL_724;
  }

  i = CFArrayGetCount(v433);
  FigSimpleMutexUnlock();
  v434 = HIDWORD(v1910);
  if (i < 1)
  {
    goto LABEL_724;
  }

  if (!*(v2029 + 656))
  {
    v435 = CMBaseObjectGetDerivedStorage();
    v2176 = 0;
    *cf = 0;
    *value = 0;
    v2174 = 0;
    v2175 = 0;
    valuePtr = 0;
    if (*(v435 + 648))
    {
      i = v435;
      FigSimpleMutexLock();
      v436 = CFArrayGetCount(*(i + 648));
      if (v436 >= 1)
      {
        OctaviaClosedCaptionsRenderPipeline = v436;
        RenderTriplesForVideoComposition = 0;
        v437 = *MEMORY[0x1E695E480];
        v1650 = *(MEMORY[0x1E6963148] + 8);
        v1667 = *MEMORY[0x1E6963148];
        v1616 = *(MEMORY[0x1E6963140] + 8);
        v1633 = *MEMORY[0x1E6963140];
        v1582 = *(MEMORY[0x1E6963150] + 8);
        v1599 = *MEMORY[0x1E6963150];
        a7 = 1635088502;
        *&v2120 = @"TrackFormatDescriptionArray";
        v1701 = *MEMORY[0x1E6962790];
        key = *MEMORY[0x1E69600D0];
        v1548 = *MEMORY[0x1E69600C8];
        v1790 = 1;
        v1531 = @"rndr";
        v1736[0] = 1;
        v1718 = 1;
        v1684 = v436;
        while (1)
        {
          v438 = CFArrayGetValueAtIndex(*(i + 648), RenderTriplesForVideoComposition);
          if (!v438[24])
          {
            break;
          }

LABEL_672:
          if (++RenderTriplesForVideoComposition == OctaviaClosedCaptionsRenderPipeline)
          {
            goto LABEL_685;
          }
        }

        p_duration = v438;
        OUTLINED_FUNCTION_173_0();
        v439 = FigTagCollectionCreateMutable();
        if (v439)
        {
          goto LABEL_1314;
        }

        v440 = *cf;
        FigTagMakeWithSInt64Value();
        OUTLINED_FUNCTION_260_0();
        OUTLINED_FUNCTION_219_0();
        CMTagCollectionAddTag(v441, v2196);
        v442 = *(p_duration + 4);
        if (v442 != 1635088502)
        {
          switch(v442)
          {
            case 1835365473:
              FigTagMakeWithSInt64Value();
              OUTLINED_FUNCTION_287_0();
              v440 = v1650;
              a6 = v1667;
              goto LABEL_613;
            case 1935832172:
              OUTLINED_FUNCTION_372_0();
              OUTLINED_FUNCTION_394_0();
              FigTagMakeWithOSTypeValue();
              OUTLINED_FUNCTION_131_0();
              a7 = 1;
              FigTagMakeWithSInt64Value();
              OUTLINED_FUNCTION_191_0();
              goto LABEL_613;
            case 1936684398:
              FigTagMakeWithSInt64Value();
              OUTLINED_FUNCTION_287_0();
              v440 = v1616;
              a6 = v1633;
              goto LABEL_613;
            case 1986618469:
              FigTagMakeWithSInt64Value();
              OUTLINED_FUNCTION_287_0();
              v440 = v1582;
              a6 = v1599;
              goto LABEL_613;
          }
        }

        OUTLINED_FUNCTION_372_0();
        FigTagMakeWithOSTypeValue();
        OUTLINED_FUNCTION_131_0();
        a7 = 1;
        FigTagMakeWithSInt64Value();
        OUTLINED_FUNCTION_191_0();
LABEL_613:
        *&v2197.category = a6;
        v2197.value = v440;
        CMTagCollectionAddTag(*cf, v2197);
        *&v2198.category = v21;
        v2198.value = a1;
        CMTagCollectionAddTag(*cf, v2198);
        OctaviaSubtitleRenderPipeline = *(i + 1008);
        a6 = *p_duration;
        if (!*(*(CMBaseObjectGetVTable() + 16) + 56))
        {
          a6 = 0;
          v21 = 4294954514;
LABEL_896:
          a1 = v1928;
          goto LABEL_686;
        }

        a1 = v1928;
        v443 = OUTLINED_FUNCTION_309_0();
        v439 = v444(v443, a6);
        if (v439)
        {
          goto LABEL_1314;
        }

        FigTrackReaderGetFigBaseObject();
        OctaviaSubtitleRenderPipeline = v445;
        v446 = *(*(CMBaseObjectGetVTable() + 8) + 48);
        if (v446)
        {
          v446(OctaviaSubtitleRenderPipeline, @"TrackFormatDescriptionArray", v437, &v2176);
        }

        FirstValue = FigCFArrayGetFirstValue();
        v21 = FirstValue;
        if (FirstValue && CMFormatDescriptionGetMediaSubType(FirstValue))
        {
          OctaviaSubtitleRenderPipeline = *cf;
          FigTagMakeWithOSTypeValue();
          OUTLINED_FUNCTION_260_0();
          OUTLINED_FUNCTION_219_0();
          CMTagCollectionAddTag(v448, v2199);
        }

        OUTLINED_FUNCTION_33();
        if (!v58)
        {
          if (v449 == 1835365473 && itemfig_hasTrackReference(v1928, @"rndr", *p_duration, 0, 0))
          {
            OctaviaSubtitleRenderPipeline = valuePtr;
            if (!valuePtr)
            {
              v464 = OUTLINED_FUNCTION_173_0();
              v439 = FigSampleAttachmentCollectionRulesCopyForFilePlayback(v464, v465, v466);
              if (v439)
              {
LABEL_1314:
                a6 = 0;
                v21 = v439;
                goto LABEL_686;
              }

              OctaviaSubtitleRenderPipeline = valuePtr;
            }

            v467 = *(*(CMBaseObjectGetVTable() + 16) + 8);
            if (v467 && v467(OctaviaSubtitleRenderPipeline, v21))
            {
              MEMORY[0x19A8D3360](*cf);
            }
          }

          a6 = 0;
          goto LABEL_623;
        }

        if (!v21)
        {
          OUTLINED_FUNCTION_39_0();
          FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v1454, v1473, v1493);
          OUTLINED_FUNCTION_141_0();
          goto LABEL_686;
        }

        a7 = v437;
        if (CMFormatDescriptionGetMediaSubType(v21) == 1768972832)
        {
          LOBYTE(formatDescriptionOut[0].start.value) = 0;
          type[0] = OS_LOG_TYPE_DEFAULT;
          OctaviaSubtitleRenderPipeline = CMFormatDescriptionGetExtensions(v21);
          v450 = 0;
          if (FigCFDictionaryGetBooleanIfPresent() && LOBYTE(formatDescriptionOut[0].start.value))
          {
            BooleanIfPresent = FigCFDictionaryGetBooleanIfPresent();
            if (type[0])
            {
              v452 = BooleanIfPresent == 0;
            }

            else
            {
              v452 = 1;
            }

            v450 = !v452;
          }

          a6 = 0;
          if (FigGetCFPreferenceNumberWithDefault() >= 2 && !v450)
          {
            formatDescriptionOut[0].start.value = 0;
            Dimensions = CMVideoFormatDescriptionGetDimensions(v21);
            CMFormatDescriptionGetExtensions(v21);
            v454 = FigCFDictionaryCreateMutableCopy();
            if (v454)
            {
              OctaviaSubtitleRenderPipeline = v454;
              CFDictionaryRemoveValue(v454, key);
              CFDictionaryRemoveValue(OctaviaSubtitleRenderPipeline, v1548);
              FigCFDictionarySetBoolean();
              FigCFDictionarySetBoolean();
              v455 = CMVideoFormatDescriptionCreate(a7, 0x69706220u, Dimensions.width, Dimensions.height, OctaviaSubtitleRenderPipeline, formatDescriptionOut);
              a6 = formatDescriptionOut[0].start.value;
              if (v455)
              {
                OctaviaClosedCaptionsRenderPipeline = v1684;
                if (formatDescriptionOut[0].start.value)
                {
                  CFRelease(formatDescriptionOut[0].start.value);
                  a6 = 0;
                }
              }

              else
              {
                formatDescriptionOut[0].start.value = 0;
                OctaviaClosedCaptionsRenderPipeline = v1684;
              }

              CFRelease(OctaviaSubtitleRenderPipeline);
            }

            else
            {
              OUTLINED_FUNCTION_39_0();
              FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v1454, v1473, v1493);
              a6 = 0;
              OctaviaClosedCaptionsRenderPipeline = v1684;
            }

            v450 = a6 != 0;
            if (a6)
            {
              v21 = a6;
            }
          }
        }

        else
        {
          a6 = 0;
          v450 = 0;
        }

        if (!VTIsStereoMVHEVCDecodeSupported() && !v450)
        {
          if (!FPSupport_CreateTagCollectionFromVideoFormatDescriptionExtensionsWithDefaults(0, &v2174))
          {
            OctaviaSubtitleRenderPipeline = 0;
            v437 = a7;
            goto LABEL_666;
          }

          v437 = a7;
          if (v2174)
          {
            CFRelease(v2174);
            OctaviaSubtitleRenderPipeline = 0;
            v2174 = 0;
            goto LABEL_666;
          }

LABEL_623:
          OctaviaSubtitleRenderPipeline = 0;
LABEL_666:
          a7 = 1635088502;
          v462 = *cf;
          *cf = 0;
          v463 = v2175;
          *(p_duration + 200) = v2174;
          *(p_duration + 208) = v463;
          v2174 = 0;
          v2175 = 0;
          *(p_duration + 192) = v462;
          *(p_duration + 280) = OctaviaSubtitleRenderPipeline;
          if (*value)
          {
            CFRelease(*value);
            *value = 0;
          }

          if (v2176)
          {
            CFRelease(v2176);
            v2176 = 0;
          }

          if (a6)
          {
            CFRelease(a6);
          }

          goto LABEL_672;
        }

        if (CMVideoFormatDescriptionCopyTagCollectionArray(v21, &v2175) && v2175)
        {
          CFRelease(v2175);
          v2175 = 0;
        }

        v437 = a7;
        if (FPSupport_CreateTagCollectionFromVideoFormatDescriptionExtensionsWithDefaults(v21, &v2174) && v2174)
        {
          CFRelease(v2174);
          v2174 = 0;
        }

        v456 = v2176;
        if (v2176)
        {
          v21 = CFArrayGetCount(v2176);
          v457 = CFDictionaryCreateMutable(a7, v21, MEMORY[0x1E6960F10], MEMORY[0x1E695E9E8]);
          if (v457)
          {
            OctaviaSubtitleRenderPipeline = v457;
            if (v21 >= 1)
            {
              for (ii = 0; ii != v21; ++ii)
              {
                MTSidebandVideoPropertiesAcquireNextAvailableSidebandVideoPropertiesLookupID();
                CFArrayGetValueAtIndex(v456, ii);
                FigCFDictionarySetInt16();
              }

LABEL_661:
              a1 = v1928;
              v437 = a7;
              OctaviaClosedCaptionsRenderPipeline = v1684;
              goto LABEL_666;
            }

LABEL_664:
            a1 = v1928;
            goto LABEL_666;
          }
        }

        else
        {
          v459 = OUTLINED_FUNCTION_173_0();
          v461 = CFDictionaryCreateMutable(v459, v460, MEMORY[0x1E6960F10], MEMORY[0x1E695E9E8]);
          if (v461)
          {
            OctaviaSubtitleRenderPipeline = v461;
            goto LABEL_664;
          }
        }

        OUTLINED_FUNCTION_39_0();
        FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v1454, v1473, v1493);
        if (v468)
        {
          v21 = v468;
          goto LABEL_896;
        }

        OctaviaSubtitleRenderPipeline = 0;
        goto LABEL_661;
      }

LABEL_685:
      a6 = 0;
      v21 = 0;
LABEL_686:
      FigSimpleMutexUnlock();
      if (*cf)
      {
        CFRelease(*cf);
      }
    }

    else
    {
      OUTLINED_FUNCTION_39_0();
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v1454, v1473, v1493);
      OUTLINED_FUNCTION_141_0();
    }

    if (*value)
    {
      CFRelease(*value);
    }

    if (v2176)
    {
      CFRelease(v2176);
    }

    if (v2175)
    {
      CFRelease(v2175);
    }

    if (v2174)
    {
      CFRelease(v2174);
    }

    if (a6)
    {
      CFRelease(a6);
    }

    if (valuePtr)
    {
      CFRelease(valuePtr);
    }

    v434 = HIDWORD(v1910);
    if (v21)
    {
      goto LABEL_1433;
    }
  }

  v469 = CMBaseObjectGetDerivedStorage();
  formatDescriptionOut[0].start.value = 0;
  LOBYTE(v2176) = 0;
  *cf = 0;
  *value = 0;
  if (*v469)
  {
    OUTLINED_FUNCTION_39_0();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v1454, v1473, v1493);
    goto LABEL_712;
  }

  i = v469;
  if (!v469[1096])
  {
    OctaviaSubtitleRenderPipeline = *MEMORY[0x1E695E480];
    FigAssetGetCMBaseObject();
    a7 = v470;
    if (*(*(CMBaseObjectGetVTable() + 8) + 48))
    {
      v471 = OUTLINED_FUNCTION_308();
      v472(v471);
    }

    FigCFDictionaryGetBooleanIfPresent();
    if (!v2176)
    {
      *(i + 1096) = 1;
      goto LABEL_712;
    }

    if (itemfig_assureBasicsReadyForInspection(a1))
    {
      goto LABEL_712;
    }

    FigFormatReaderGetFigBaseObject();
    a7 = v473;
    v474 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v474)
    {
      v475 = OUTLINED_FUNCTION_308();
      v476(v475);
      a7 = *cf;
      if (*cf)
      {
        v474 = *(*(CMBaseObjectGetVTable() + 16) + 8);
        if (!v474)
        {
          goto LABEL_711;
        }

        v474(a7, @"mdta", @"com.apple.quicktime.aime-data", 0, OctaviaSubtitleRenderPipeline, value, 0);
        if (*value)
        {
          FigCFDictionaryGetInt64IfPresent();
          OctaviaSubtitleRenderPipeline = i + 1112;
          FigCFDictionaryGetInt64IfPresent();
          if ((*(i + 1104) & 0x8000000000000000) != 0 || *OctaviaSubtitleRenderPipeline < 1)
          {
            goto LABEL_712;
          }

          LOBYTE(v474) = 1;
          goto LABEL_711;
        }
      }

      LOBYTE(v474) = 0;
    }

LABEL_711:
    *(i + 1097) = v474;
    *(i + 1096) = 1;
  }

LABEL_712:
  if (*cf)
  {
    CFRelease(*cf);
  }

  if (*value)
  {
    CFRelease(*value);
  }

  if (formatDescriptionOut[0].start.value)
  {
    CFRelease(formatDescriptionOut[0].start.value);
  }

  formatDescriptionOut[0].start.value = 0;
  itemfig_createRenderTriplesForMultichannelVideoTargets();
  if (v477)
  {
    v21 = v477;
    goto LABEL_1433;
  }

  ConcatenationOfTwoArrays = FigCFArrayCreateConcatenationOfTwoArrays();
  if (v2191)
  {
    CFRelease(v2191);
  }

  if (formatDescriptionOut[0].start.value)
  {
    CFRelease(formatDescriptionOut[0].start.value);
  }

  *&v2191 = ConcatenationOfTwoArrays;
LABEL_724:
  CMBaseObjectGetDerivedStorage();
  i = 0;
  OUTLINED_FUNCTION_80_0();
  if (!theSet)
  {
LABEL_746:
    itemfig_resetRenderTriple(formatDescriptionOut);
    *(&v2190 + 1) = i;
    goto LABEL_747;
  }

  a7 = v479;
  theSet = *MEMORY[0x1E695E480];
  v480 = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, &_MergedGlobals);
  if (v480)
  {
    i = v480;
    if (CFArrayGetCount(*(a7 + 648)) >= 1)
    {
      OUTLINED_FUNCTION_402_0();
      v2106 = v481;
      DerivedStorage = v2029;
      *&v2120 = a7;
      while (1)
      {
        v482 = CFArrayGetValueAtIndex(*(a7 + 648), a6);
        v483 = *(v482 + 21);
        if (v483)
        {
          v484 = CFArrayGetCount(v483);
          if (v484 >= 1)
          {
            break;
          }
        }

LABEL_744:
        if (++a6 == OctaviaClosedCaptionsRenderPipeline)
        {
          a1 = v1928;
          v434 = HIDWORD(v1910);
          goto LABEL_746;
        }
      }

      v485 = v484;
      p_duration = 0;
      while (1)
      {
        OctaviaSubtitleRenderPipeline = CFArrayGetValueAtIndex(*(v482 + 21), p_duration);
        v486 = *(OctaviaSubtitleRenderPipeline + 28);
        LODWORD(formatDescriptionOut[0].start.value) = *v482;
        LODWORD(formatDescriptionOut[0].start.epoch) = v486;
        v487 = *(OctaviaSubtitleRenderPipeline + 48);
        if (v487)
        {
          CFRelease(v487);
          *(OctaviaSubtitleRenderPipeline + 48) = 0;
        }

        OUTLINED_FUNCTION_95_0(MEMORY[0x1E6960C70]);
        v494 = OUTLINED_FUNCTION_420_0(v488, v489, cf, v490, v491, v492, &formatDescriptionOut[0].duration.timescale, v493, v1454, v1473, v1493, v1512, v1531, v1548, key, v1582, v1599, v1616, v1633, v1650, v1667, v1684, v1701, v1718, v1736[0], v1736[1], v1772, v1790, v1808, v1825, v1842, v1859, context, v1893, v1910, v1928);
        v499 = fp_createCommonRenderPipelineOptionsForTrack(v494, v495, v496, v497, 0, 0, v498);
        if (v499)
        {
          break;
        }

        itemfig_reuseExistingRenderPipeline(*(a7 + 456), formatDescriptionOut);
        v500 = formatDescriptionOut[0].duration.value;
        if (formatDescriptionOut[0].duration.value)
        {
          goto LABEL_742;
        }

        OctaviaClosedCaptionsRenderPipeline = FigCFNumberCreateSInt32();
        if (FigCFDictionaryGetValue())
        {
          v501 = OUTLINED_FUNCTION_312();
          v503 = CFDictionaryCreateMutable(v501, v502, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
          FigCFDictionarySetValue();
        }

        else
        {
          v503 = 0;
        }

        FigRenderPipelineCreateForBufferQueue(theSet, *(OctaviaSubtitleRenderPipeline + 32), v503, &formatDescriptionOut[0].duration);
        RenderTriplesForVideoComposition = v504;
        if (OctaviaClosedCaptionsRenderPipeline)
        {
          CFRelease(OctaviaClosedCaptionsRenderPipeline);
        }

        DerivedStorage = v2029;
        if (RenderTriplesForVideoComposition)
        {
          goto LABEL_1177;
        }

        v500 = formatDescriptionOut[0].duration.value;
        OctaviaClosedCaptionsRenderPipeline = v2106;
        a7 = v2120;
        if (formatDescriptionOut[0].duration.value)
        {
LABEL_742:
          v500 = CFRetain(v500);
        }

        *(OctaviaSubtitleRenderPipeline + 48) = v500;
        OUTLINED_FUNCTION_353_0();
        itemfig_resetRenderTriple(formatDescriptionOut);
        if (v485 == ++p_duration)
        {
          goto LABEL_744;
        }
      }

      RenderTriplesForVideoComposition = v499;
LABEL_1177:
      v21 = RenderTriplesForVideoComposition;
      itemfig_resetRenderTriple(formatDescriptionOut);
      OUTLINED_FUNCTION_67_0();
      a7 = 0;
      OctaviaSubtitleRenderPipeline = 0;
      OUTLINED_FUNCTION_189_0();
      *(&v2190 + 1) = i;
      i = 0;
      goto LABEL_1178;
    }

    goto LABEL_746;
  }

  OUTLINED_FUNCTION_39_0();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v1454, v1473, v1493);
  i = v1202;
  itemfig_resetRenderTriple(formatDescriptionOut);
  *(&v2190 + 1) = 0;
  if (i)
  {
    v21 = i;
LABEL_1433:
    OUTLINED_FUNCTION_16_0();
    OUTLINED_FUNCTION_189_0();
    goto LABEL_749;
  }

LABEL_747:
  if (!v434)
  {
    DerivedStorage = v2029;
    v505 = *(v2029 + 648);
    if (v505)
    {
      a6 = CFArrayGetCount(v505);
      LODWORD(v2120) = a6 > 0;
      if (a6 < 1)
      {
        LODWORD(v2120) = 0;
      }

      else
      {
        i = 0;
        do
        {
          v506 = CFArrayGetValueAtIndex(*(DerivedStorage + 81), i);
          OctaviaSubtitleRenderPipeline = v506;
          v507 = v506[2];
          if (v507)
          {
            v508 = *(v506 + 1);
            v509 = v508 == 1986618469 || v508 == 1635088502;
            if (!v509 || (FigStopForwardingMediaServicesProcessDeathNotification(), (v507 = *(OctaviaSubtitleRenderPipeline + 16)) != 0))
            {
              CFRelease(v507);
              *(OctaviaSubtitleRenderPipeline + 16) = 0;
            }
          }

          v510 = *(OctaviaSubtitleRenderPipeline + 248);
          if (v510)
          {
            CFRelease(v510);
            *(OctaviaSubtitleRenderPipeline + 248) = 0;
          }

          v511 = *(OctaviaSubtitleRenderPipeline + 264);
          if (v511)
          {
            CFRelease(v511);
            *(OctaviaSubtitleRenderPipeline + 264) = 0;
          }

          v512 = *(OctaviaSubtitleRenderPipeline + 168);
          if (v512)
          {
            v513 = CFArrayGetCount(v512);
            if (v513 >= 1)
            {
              v514 = v513;
              for (jj = 0; jj != v514; ++jj)
              {
                RenderTriplesForVideoComposition = CFArrayGetValueAtIndex(*(OctaviaSubtitleRenderPipeline + 168), jj);
                v516 = *(RenderTriplesForVideoComposition + 48);
                if (v516)
                {
                  CFRelease(v516);
                  *(RenderTriplesForVideoComposition + 48) = 0;
                }
              }
            }
          }

          ++i;
          DerivedStorage = v2029;
        }

        while (i != a6);
      }
    }

    else
    {
      LODWORD(v2120) = 0;
      a6 = 0;
    }

    OUTLINED_FUNCTION_164_0();
    a7 = v2185;
    do
    {
      v517 = *(v2185 + OctaviaSubtitleRenderPipeline);
      if (v517)
      {
        v517 = CFArrayGetCount(v517);
      }

      i += v517;
      OctaviaSubtitleRenderPipeline += 8;
    }

    while (OctaviaSubtitleRenderPipeline != 112);
    OctaviaSubtitleRenderPipeline = 0x100004052888210;
    OctaviaClosedCaptionsRenderPipeline = malloc_type_calloc(i, 4uLL, 0x100004052888210uLL);
    if (!OctaviaClosedCaptionsRenderPipeline)
    {
      OUTLINED_FUNCTION_39_0();
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v1454, v1473, v1493);
      v21 = v1204;
      v312 = OUTLINED_FUNCTION_16_0();
      p_duration = 0;
      goto LABEL_1179;
    }

    a7 = 0x2004093837F09;
    p_duration = malloc_type_calloc(i, 8uLL, 0x2004093837F09uLL);
    if (!p_duration)
    {
      OUTLINED_FUNCTION_39_0();
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v1454, v1473, v1493);
      v21 = v1205;
      v312 = OUTLINED_FUNCTION_16_0();
      goto LABEL_1179;
    }

    OctaviaSubtitleRenderPipeline = malloc_type_calloc(i, 4uLL, 0x100004052888210uLL);
    if (!OctaviaSubtitleRenderPipeline)
    {
      OUTLINED_FUNCTION_39_0();
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v1454, v1473, v1493);
      v21 = v1206;
      v312 = OUTLINED_FUNCTION_23_0();
      a7 = 0;
      goto LABEL_1179;
    }

    a7 = malloc_type_calloc(i, 8uLL, 0x2004093837F09uLL);
    if (!a7 || (OUTLINED_FUNCTION_185_0(), (v2107 = malloc_type_calloc(i, 8uLL, v518)) == 0))
    {
      OUTLINED_FUNCTION_39_0();
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
      v21 = v1207;
      v312 = OUTLINED_FUNCTION_23_0();
      goto LABEL_1179;
    }

    v1951 = OctaviaSubtitleRenderPipeline;
    allocatora = a7;
    v2083 = p_duration;
    v519 = 0;
    formatDescriptionOut[0].start.value = 0;
    alloca = *MEMORY[0x1E695E480];
    v21 = 88;
    v1981[0] = OctaviaClosedCaptionsRenderPipeline;
    do
    {
      if (v2185[v519])
      {
        v520 = CFArrayGetCount(v2185[v519]);
      }

      else
      {
        v520 = 0;
      }

      if (v519 <= 6 && ((1 << v519) & 0x58) != 0 && v520 >= 1)
      {
        v521 = 0;
        do
        {
          while (1)
          {
            v522 = OUTLINED_FUNCTION_618();
            if (*(CFArrayGetValueAtIndex(v522, v523) + 3))
            {
              FigRenderPipelineGetFigBaseObject();
              v525 = v524;
              v526 = *(*(CMBaseObjectGetVTable() + 8) + 48);
              if (v526)
              {
                break;
              }
            }

            if (++v521 >= v520)
            {
              goto LABEL_803;
            }
          }

          v527 = v526(v525, @"HDRCrossTalker", alloca, formatDescriptionOut);
          if (formatDescriptionOut[0].start.value)
          {
            v528 = v527 == 0;
          }

          else
          {
            v528 = 0;
          }

          ++v521;
        }

        while (!v528 && v521 < v520);
      }

LABEL_803:
      OctaviaClosedCaptionsRenderPipeline = v1981[0];
      if (v519 > 0xC)
      {
        break;
      }

      ++v519;
    }

    while (!formatDescriptionOut[0].start.value);
    v530 = v2029;
    if (formatDescriptionOut[0].start.value || (FigCrossTalkerCreate(alloca, formatDescriptionOut), formatDescriptionOut[0].start.value))
    {
      v531 = 0;
      v21 = 88;
      do
      {
        if (v2185[v531])
        {
          v532 = CFArrayGetCount(v2185[v531]);
        }

        else
        {
          v532 = 0;
        }

        if (v531 <= 6 && ((1 << v531) & 0x58) != 0 && v532 >= 1)
        {
          do
          {
            v533 = OUTLINED_FUNCTION_618();
            if (*(CFArrayGetValueAtIndex(v533, v534) + 3))
            {
              v535 = formatDescriptionOut[0].start.value;
              FigRenderPipelineGetFigBaseObject();
              v537 = v536;
              v538 = *(*(CMBaseObjectGetVTable() + 8) + 56);
              if (v538)
              {
                v538(v537, @"HDRCrossTalker", v535);
              }
            }

            OUTLINED_FUNCTION_314_0();
          }

          while (!v58);
        }

        ++v531;
        v530 = v2029;
        OctaviaClosedCaptionsRenderPipeline = v1981[0];
      }

      while (v531 != 14);
      if (formatDescriptionOut[0].start.value)
      {
        CFRelease(formatDescriptionOut[0].start.value);
      }
    }

    v539 = 0;
    v540 = 0;
    theArraya = 0;
    p_duration = v2083;
    v541 = v2107;
    do
    {
      v542 = v2185[v539];
      if (v542)
      {
        theSeta = CFArrayGetCount(v2185[v539]);
        if (theSeta >= 1)
        {
          for (kk = 0; kk != theSeta; ++kk)
          {
            v544 = CFArrayGetValueAtIndex(v542, kk);
            *(OctaviaClosedCaptionsRenderPipeline + 4 * v540) = *v544;
            *(p_duration + 8 * v540) = v544[3];
            *(v541 + v540) = v544[4];
            if (v2120)
            {
              v21 = v544;
              v545 = 0;
              while (1)
              {
                v546 = CFArrayGetValueAtIndex(v530[81], v545);
                if (*v546 == *v21)
                {
                  break;
                }

                if (a6 == ++v545)
                {
                  goto LABEL_830;
                }
              }

              v547 = v546;
              if (v539 == 12 || *(v546 + 1) != 1835365473)
              {
                v1951[theArraya] = *v546;
                allocatora[theArraya++] = *(v21 + 24);
              }

              v541 = v2107;
              switch(v539)
              {
                case 0xB:
                  v550 = v546[21];
                  if (v550)
                  {
                    v551 = CFArrayGetCount(v550);
                    if (v551 >= 1)
                    {
                      OctaviaClosedCaptionsRenderPipeline = v551;
                      for (mm = 0; mm != OctaviaClosedCaptionsRenderPipeline; ++mm)
                      {
                        v553 = CFArrayGetValueAtIndex(v547[21], mm);
                        if (*(v553 + 7) == *(v21 + 16))
                        {
                          v530 = v553;
                          if (!v553[6])
                          {
                            v554 = *(v21 + 24);
                            if (v554)
                            {
                              v554 = CFRetain(v554);
                            }

                            v530[6] = v554;
                          }
                        }
                      }

                      OUTLINED_FUNCTION_251_0();
LABEL_830:
                      p_duration = v2083;
                      v541 = v2107;
                      goto LABEL_867;
                    }

                    OctaviaClosedCaptionsRenderPipeline = v1981[0];
                  }

                  break;
                case 0xA:
                  if (!v546[33])
                  {
                    v549 = *(v21 + 24);
                    if (v549)
                    {
                      v549 = CFRetain(v549);
                    }

                    v547[33] = v549;
                  }

                  break;
                case 9:
                  if (!v546[31])
                  {
                    v548 = *(v21 + 24);
                    if (v548)
                    {
                      v548 = CFRetain(v548);
                    }

                    v547[31] = v548;
                  }

                  break;
                default:
                  if (!v546[2])
                  {
                    v555 = *(v21 + 24);
                    if (v555)
                    {
                      v556 = CFRetain(v555);
                      v547[2] = v556;
                      if (v556)
                      {
                        OUTLINED_FUNCTION_33();
                        if (v58 || v557 == 1635088502)
                        {
                          FigStartForwardingMediaServicesProcessDeathNotification();
                        }
                      }
                    }

                    else
                    {
                      v547[2] = 0;
                    }
                  }

                  break;
              }

              p_duration = v2083;
            }

LABEL_867:
            ++v540;
          }
        }
      }

      ++v539;
    }

    while (v539 != 14);
    IsMemberOfClass = CFSetCreateMutable(alloca, 0, MEMORY[0x1E695E9F8]);
    theSet = IsMemberOfClass;
    a1 = v1928;
    LODWORD(v567) = v1893;
    if (v540 >= 1)
    {
      v568 = p_duration;
      v569 = v540;
      do
      {
        v560 = *v568;
        if (*v568)
        {
          CFSetAddValue(theSet, v560);
        }

        ++v568;
        --v569;
      }

      while (v569);
    }

    if (*(v1893 + 176))
    {
      IsMemberOfClass = v530[16];
      if (IsMemberOfClass)
      {
        CMByteStreamGetCMBaseObject();
        FigCRABSGetClassID();
        OUTLINED_FUNCTION_201_0();
        IsMemberOfClass = CMBaseObjectIsMemberOfClass();
        if (IsMemberOfClass)
        {
          SInt32 = FigCFNumberCreateSInt32();
          CMBaseObject = CMByteStreamGetCMBaseObject();
          VTable = CMBaseObjectGetVTable();
          v573 = *(VTable + 8);
          IsMemberOfClass = VTable + 8;
          v574 = *(v573 + 56);
          if (v574)
          {
            IsMemberOfClass = v574(CMBaseObject, *MEMORY[0x1E6960E18], SInt32);
          }

          if (SInt32)
          {
            CFRelease(SInt32);
          }
        }
      }
    }

    v575 = OUTLINED_FUNCTION_305_0(IsMemberOfClass, v560, v561, v562, v563, v564, v565, v566, v1454, v1473, v1493, v1512, v1531, v1548, key, v1582, v1599, v1616, v1633, v1650, v1667, v1684, v1701, v1718, v1736[0], v1736[1], v1772, v2029 + 352);
    DerivedStorage = "itemfig_rebuildRenderPipelinesAndBossGuts";
    if (v575)
    {
      i = v2107;
      v576 = FigPlaybackBossSetTrackList(v575, v540, OctaviaClosedCaptionsRenderPipeline, p_duration, v2107);
      a6 = 0;
      if (v576)
      {
        v21 = v576;
        RenderTriplesForVideoComposition = 0;
        v312 = 0;
        DerivedStorage = v2029;
        OctaviaSubtitleRenderPipeline = v1951;
        a7 = allocatora;
        goto LABEL_1179;
      }

      v584 = 0;
      v1740 = 0;
LABEL_1018:
      if (*(v2029 + 284))
      {
        v752 = OUTLINED_FUNCTION_305_0(v576, v577, v578, v579, v580, v581, v582, v583, v1454, v1473, v1493, v1512, v1531, v1548, key, v1582, v1599, v1616, v1633, v1650, v1667, v1684, v1701, v1718, v1740, v1758, v1776, v1794);
        FigPlaybackBossSetReversalLimits(v752, 10, 3);
      }

      *&v2120 = v584;
      v753 = CMBaseObjectGetDerivedStorage();
      v754 = CMBaseObjectGetDerivedStorage();
      v755 = *(v754 + 844);
      v756 = *(v754 + 848);
      v757 = 1.0;
      v758 = fmaxf(v755, 1.0);
      if (!*(v754 + 841))
      {
        v758 = 1.0;
      }

      v759 = fminf(v756, 1.0);
      if (*(v754 + 842))
      {
        v757 = v759;
      }

      if (*(v754 + 960))
      {
        v760 = 1;
      }

      else
      {
        v760 = *(v754 + 841);
      }

      if (*(v754 + 960))
      {
        v761 = 1;
      }

      else
      {
        v761 = *(v754 + 842);
      }

      if (*(v754 + 960))
      {
        v755 = v758;
        v756 = v757;
      }

      FigPlaybackBossSetAudibleRateRange(*(v753 + 352), v760, v761, v755, v756);
      v762 = CMBaseObjectGetDerivedStorage();
      if (CFArrayGetCount(*(v762 + 648)) < 1)
      {
        v763 = 0;
      }

      else
      {
        v763 = 0;
        LODWORD(v567) = 0;
        while (1)
        {
          v764 = CFArrayGetValueAtIndex(*(v762 + 648), 0);
          if (*(v764 + 1) == 1936684398 && *(v764 + 8))
          {
            v765 = *(v764 + 14);
            if (!v765)
            {
              v765 = *(v762 + 1512);
            }

            v766 = v763 ? v763 : v765;
            v767 = @"LowQualityZeroLatency" == v765 || @"LowQualityZeroLatency" == v763;
            v763 = v767 ? @"LowQualityZeroLatency" : v766;
            if (v763 == @"LowQualityZeroLatency")
            {
              break;
            }
          }

          OUTLINED_FUNCTION_314_0();
          if (v58)
          {
            goto LABEL_1053;
          }
        }

        v763 = @"LowQualityZeroLatency";
      }

LABEL_1053:
      if (v763 == @"TimeDomain" || v763 == @"Spectral" || v763 == @"Varispeed")
      {
        FigPlaybackBossSetRateSnapping(*(v762 + 352), 0, 0.03125, 32.0);
        a7 = allocatora;
      }

      else
      {
        v770 = *(v762 + 352);
        a7 = allocatora;
        if (v763 != @"LowQualityZeroLatency")
        {
          FigPlaybackBossSetRateSnapping(v770, 0, 0.03125, 32.0);
          OctaviaClosedCaptionsRenderPipeline = theArraya;
          if (v763)
          {
            OUTLINED_FUNCTION_213_0();
            v778 = OUTLINED_FUNCTION_209_0(qword_1EAF16A08, v771, v772, v773, v774, v775, v776, v777, v1454, v1473, v1493, v1512, v1531, v1548, key, v1582, v1599, v1616, v1633, v1650, v1667, v1684, v1701, v1718, v1740, v1758, v1776, v1794, v1808, v1825, v1842, v1859, context, v1893, v1910, v1928, v1951, allocatora, v1981[0], v1981[1], v2012, v2029, alloca, theArraya, v2083, v2107, v2120, *(&v2120 + 1), theSet, v2168, v2169, *v2170, *type, v2172, valuePtr, v2174, v2175, v2176);
            v779 = v2176;
            v780 = os_log_type_enabled(v778, v2176);
            if (OUTLINED_FUNCTION_77_0(v780))
            {
              *cf = 136315138;
              *&cf[4] = "itemfig_setRateSnappingOnBoss";
              OUTLINED_FUNCTION_52_0();
              OUTLINED_FUNCTION_44_0();
              _os_log_send_and_compose_impl(v781, v782, v783, v784, v785, v786, v779, v787);
            }

            OUTLINED_FUNCTION_16();
            OUTLINED_FUNCTION_420(v788, v789, v790, v791, v792);
            a7 = allocatora;
          }

LABEL_1069:
          FigPlaybackBossSetContinuePlayingDuringPrerollForSeek(*(v2029 + 352), *(v2029 + 287));
          FigPlaybackBossSetContinuePlayingDuringPrerollForRateChange(*(v2029 + 352), *(v2029 + 288));
          if (*(v2029 + 290))
          {
            FigPlaybackBossSetIFrameOnlySpeedThreshold(*(v2029 + 352), *(v2029 + 292));
          }

          FigPlaybackBossSetUseIFrameOnlyPlaybackForHighRateScaledEdits(*(v2029 + 352), *(v2029 + 289));
          *&formatDescriptionOut[0].start.value = *(v2029 + 296);
          OUTLINED_FUNCTION_364_0(*(v2029 + 312));
          FigPlaybackBossSetMinimumIntervalForIFrameOnlyPlayback(v793, v794);
          FigPlaybackBossSetThoroughlyRefreshClosedCaptionsWhenSeeking(*(v2029 + 352), *(v2029 + 320));
          v795 = *(v2029 + 360);
          *(v2029 + 360) = theSet;
          if (theSet)
          {
            CFRetain(theSet);
          }

          if (v795)
          {
            CFRelease(v795);
          }

          v796 = 0;
          v797 = v2029 + 368;
          do
          {
            v798 = *(v797 + v796 * 8);
            *(v797 + v796 * 8) = v2185[v796];
            v2185[v796++] = v798;
          }

          while (v796 != 14);
          if (OctaviaClosedCaptionsRenderPipeline >= 1)
          {
            if (*(v2029 + 128))
            {
              FigSimpleMutexLock();
              v799 = (v2029 + 600);
              v800 = *(v2029 + 600);
              if (!v800 || !FigPlayabilityMonitorCanReuse(v800, *(v2029 + 1008), v1951, OctaviaClosedCaptionsRenderPipeline, *(v2029 + 128)) || (v801 = FigPlayabilityMonitorSetRenderPipelines(*v799, OctaviaClosedCaptionsRenderPipeline, a7), !v801) || (v809 = OUTLINED_FUNCTION_305_0(v801, v802, v803, v804, v805, v806, v807, v808, v1454, v1473, v1493, v1512, v1531, v1548, key, v1582, v1599, v1616, v1633, v1650, v1667, v1684, v1701, v1718, v1740, v1758, v1776, v1794), FigPlaybackBossGetTimebase(v809), v810 = OUTLINED_FUNCTION_201_0(), !FigPlayabilityMonitorSetPlaybackTimebase(v810, v811)))
              {
                itemfig_unregisterAndDestroyPlayabilityMonitorNotification(a1);
              }

              if (*v799)
              {
                v21 = 0;
              }

              else
              {
                LODWORD(v567) = v2029;
                v814 = *(v2029 + 1008);
                v815 = *(v2029 + 128);
                Timebase = FigPlaybackBossGetTimebase(*(v2029 + 352));
                v817 = v815;
                a7 = allocatora;
                v21 = FigPlayabilityMonitorCreate(v814, v1951, allocatora, OctaviaClosedCaptionsRenderPipeline, v817, Timebase, *(v2029 + 1392), v799);
              }

              if (dword_1EAF16A10)
              {
                OUTLINED_FUNCTION_213_0();
                v818 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
                OctaviaClosedCaptionsRenderPipeline = *value;
                v819 = v2176;
                os_log_type_enabled(v818, v2176);
                OUTLINED_FUNCTION_40();
                if (v567)
                {
                  if (a1)
                  {
                    v820 = (CMBaseObjectGetDerivedStorage() + 2096);
                  }

                  else
                  {
                    v820 = "";
                  }

                  *cf = 136316162;
                  *&cf[4] = "itemfig_rebuildRenderPipelinesAndBossGuts";
                  *&cf[12] = 2048;
                  *&cf[14] = a1;
                  *&cf[22] = 2082;
                  *&cf[24] = v820;
                  *&cf[32] = 2048;
                  OUTLINED_FUNCTION_301_0();
                  *v2178 = 1024;
                  *&v2178[2] = v21;
                  OUTLINED_FUNCTION_52_0();
                  OUTLINED_FUNCTION_44_0();
                  _os_log_send_and_compose_impl(v821, v822, v823, v824, v825, v826, v819, v827);
                  OctaviaClosedCaptionsRenderPipeline = *value;
                }

                OUTLINED_FUNCTION_7();
                OUTLINED_FUNCTION_414(v828, v829, v830, v831, v832);
                a7 = allocatora;
              }

              FigSimpleMutexUnlock();
              if (v21)
              {
                OUTLINED_FUNCTION_213_0();
                v1287 = OUTLINED_FUNCTION_209_0(qword_1EAF16A08, v1280, v1281, v1282, v1283, v1284, v1285, v1286, v1454, v1473, v1493, v1512, v1531, v1548, key, v1582, v1599, v1616, v1633, v1650, v1667, v1684, v1701, v1718, v1740, v1758, v1776, v1794, v1808, v1825, v1842, v1859, context, v1893, v1910, v1928, v1951, allocatora, v1981[0], v1981[1], v2012, v2029, alloca, theArraya, v2083, v2107, v2120, *(&v2120 + 1), theSet, v2168, v2169, *v2170, *type, v2172, valuePtr, v2174, v2175, v2176);
                OUTLINED_FUNCTION_243_0(v1287, v1288, v1289, v1290, v1291, v1292, v1293, v1294, v1470, v1490, v1509, v1528, v1545, v1562, keyn, v1596, v1613, v1630, v1647, v1664, v1681, v1698, v1715, v1732, v1751, v1769, v1787, v1805, v1822, v1839, v1856, v1873, contextn, v1907, v1924, v1943, v1961, allocatorn, v1994, v2009, v2025, v2042, allocn, theArrayn, v2094, v2117, v2135, v2150, theSetl, v2168, v2169, *v2170, *type, v2172, valuePtr, v2174, v2175, v2176);
                OUTLINED_FUNCTION_189();
                if (v58)
                {
                  v1296 = v1295;
                }

                else
                {
                  v1296 = v567;
                }

                if (v1296)
                {
                  if (v1944)
                  {
                    CMBaseObjectGetDerivedStorage();
                  }

                  OUTLINED_FUNCTION_32_0();
                  *&cf[14] = v1944;
                  OUTLINED_FUNCTION_55_0();
                  *(v1352 + 255) = v21;
                  OUTLINED_FUNCTION_52_0();
                  OUTLINED_FUNCTION_44_0();
                  _os_log_send_and_compose_impl(v1353, v1354, v1355, v1356, v1357, v1358, v799, v1359);
                }

                OUTLINED_FUNCTION_16();
                OUTLINED_FUNCTION_524(v1360, v1361, v1362, v1363, v1364);
                a6 = 0;
                a1 = v1944;
LABEL_1571:
                OUTLINED_FUNCTION_251_0();
                p_duration = v2083;
                goto LABEL_1572;
              }

              itemfig_registerPlayabilityMonitorNotification(a1);
            }

            else
            {
              CMNotificationCenterGetDefaultLocalCenter();
              OUTLINED_FUNCTION_197();
              itemfig_LikelyToKeepUp(v812, v813);
            }
          }

          v833 = (v2029 + 1912);
          v834 = *(v2029 + 1912);
          if (v834)
          {
            FigSyncMomentSourceDestroy(v834);
            *v833 = 0;
          }

          a6 = v2029 + 1904;
          v835 = *(v2029 + 1904);
          DictionaryRepresentation = &__block_descriptor_96_e8_32r_e5_v8__0lr32l8;
          if (v835)
          {
            FigOutOfBandTrackControllerInvalidate(v835);
            CMNotificationCenterGetDefaultLocalCenter();
            OUTLINED_FUNCTION_168_0();
            FigNotificationCenterRemoveWeakListener();
            CMNotificationCenterGetDefaultLocalCenter();
            OUTLINED_FUNCTION_167_0();
            FigNotificationCenterRemoveWeakListener();
            if (*a6)
            {
              CFRelease(*a6);
              *a6 = 0;
            }
          }

          v837 = *(v2029 + 1896);
          if (!v837)
          {
            goto LABEL_1147;
          }

          if (*(v1893 + 130))
          {
            OctaviaClosedCaptionsRenderPipeline = *(v1893 + 131) != 0;
            if (*(v1893 + 193))
            {
              goto LABEL_1109;
            }
          }

          else
          {
            OctaviaClosedCaptionsRenderPipeline = 0;
            if (*(v1893 + 193))
            {
              goto LABEL_1109;
            }
          }

          if (!OctaviaClosedCaptionsRenderPipeline)
          {
            goto LABEL_1147;
          }

LABEL_1109:
          v838 = CFDictionaryGetValue(v837, @"MediaSelectionOptionsURL");
          if (v838)
          {
            v839 = v838;
            if (CFStringFind(v838, @"://", 0).location != -1)
            {
              v840 = CFURLCreateWithString(alloca, v839, 0);
              if (v840)
              {
                v841 = v840;
                *value = 0;
                v842 = itemfig_buildOutOfBandTrackControllerOptions(a1, value);
                if (!*value)
                {
                  v857 = v842;
                  v921 = OUTLINED_FUNCTION_347_0(qword_1EAF16A08, v843, 0, v844, v845, v846, v847, v848, v1454, v1473, v1493, v1512, v1531, v1548, key, v1582, v1599, v1616, v1633, v1650, v1667, v1684, v1701, v1718, v1740, v1758, v1776, v1794, v1808, v1825, v1842, v1859, context, v1893, v1910, v1928, v1951, allocatora, v1981[0], v1981[1], v2012, v2029, alloca, theArraya, v2083, v2107, v2120, *(&v2120 + 1), theSet, v2168, v2169, *v2170, *type, v2172, valuePtr, v2174, 0, SHIDWORD(v2175), 0);
                  OUTLINED_FUNCTION_240_0(v921, v922, v923, v924, v925, v926, v927, v928, v1463, v1483, v1502, v1521, v1539, v1556, keyh, v1590, v1607, v1624, v1641, v1658, v1675, v1692, v1709, v1726, v1745, v1763, v1781, v1799, v1816, v1833, v1850, v1867, contexth, v1901, v1918, v1936, v1956, allocatori, v1989, v2004, v2020, v2037, alloci, theArrayi, v2088, v2112, v2129, v2145, theSetg, v2168, v2169, *v2170, *type, v2172, valuePtr, v2174, v2175, SHIDWORD(v2175), v2176);
                  OUTLINED_FUNCTION_46();
                  if (!OctaviaClosedCaptionsRenderPipeline)
                  {
                    goto LABEL_1144;
                  }

                  if (!a1)
                  {
                    goto LABEL_1143;
                  }

                  goto LABEL_1142;
                }

                FigOutOfBandTrackControllerCreate(alloca, v841, *value, a6);
                v857 = v856;
                if (*value)
                {
                  CFRelease(*value);
                }

                if (!*a6)
                {
                  v929 = OUTLINED_FUNCTION_347_0(qword_1EAF16A08, v849, v850, v851, v852, v853, v854, v855, v1454, v1473, v1493, v1512, v1531, v1548, key, v1582, v1599, v1616, v1633, v1650, v1667, v1684, v1701, v1718, v1740, v1758, v1776, v1794, v1808, v1825, v1842, v1859, context, v1893, v1910, v1928, v1951, allocatora, v1981[0], v1981[1], v2012, v2029, alloca, theArraya, v2083, v2107, v2120, *(&v2120 + 1), theSet, v2168, v2169, *v2170, *type, v2172, valuePtr, v2174, 0, SHIDWORD(v2175), 0);
                  OUTLINED_FUNCTION_240_0(v929, v930, v931, v932, v933, v934, v935, v936, v1464, v1484, v1503, v1522, v1540, v1557, keyi, v1591, v1608, v1625, v1642, v1659, v1676, v1693, v1710, v1727, v1746, v1764, v1782, v1800, v1817, v1834, v1851, v1868, contexti, v1902, v1919, v1937, v1957, allocatorj, v1990, v2005, v2021, v2038, allocj, theArrayj, v2089, v2113, v2130, v2146, theSeth, v2168, v2169, *v2170, *type, v2172, valuePtr, v2174, v2175, SHIDWORD(v2175), v2176);
                  OUTLINED_FUNCTION_46();
                  if (!OctaviaClosedCaptionsRenderPipeline)
                  {
                    goto LABEL_1144;
                  }

                  if (!a1)
                  {
                    goto LABEL_1143;
                  }

                  goto LABEL_1142;
                }

                CMNotificationCenterGetDefaultLocalCenter();
                OUTLINED_FUNCTION_167_0();
                OUTLINED_FUNCTION_186();
                FigNotificationCenterAddWeakListener();
                CMNotificationCenterGetDefaultLocalCenter();
                OUTLINED_FUNCTION_168_0();
                OUTLINED_FUNCTION_186();
                FigNotificationCenterAddWeakListener();
                OUTLINED_FUNCTION_29();
                if (v58)
                {
                  *&formatDescriptionOut[0].start.value = *(v2029 + 24);
                  OUTLINED_FUNCTION_364_0(*(v2029 + 40));
                  FigOutOfBandTrackControllerSetCurrentTime(v858, v859);
                }

                v860 = *(v2029 + 1880);
                if (v860)
                {
                  FigOutOfBandTrackControllerSetProperty(*a6, @"TextMarkupArray", v860);
                }

                if (!OctaviaClosedCaptionsRenderPipeline)
                {
LABEL_1137:
                  v865 = FigOutOfBandTrackControllerPrepare(*a6);
                  if (!v865)
                  {
                    v873 = FigPlaybackBossGetTimebase(*(v2029 + 352));
                    v865 = FigSyncMomentSourceCreateWithDispatchQueue(itemfig_synchronizeOOBSController, a1, v873, *(v2029 + 104), v833);
                    if (!v865)
                    {
                      goto LABEL_1145;
                    }
                  }

                  v857 = v865;
                  v874 = OUTLINED_FUNCTION_347_0(qword_1EAF16A08, v866, v867, v868, v869, v870, v871, v872, v1454, v1473, v1493, v1512, v1531, v1548, key, v1582, v1599, v1616, v1633, v1650, v1667, v1684, v1701, v1718, v1740, v1758, v1776, v1794, v1808, v1825, v1842, v1859, context, v1893, v1910, v1928, v1951, allocatora, v1981[0], v1981[1], v2012, v2029, alloca, theArraya, v2083, v2107, v2120, *(&v2120 + 1), theSet, v2168, v2169, *v2170, *type, v2172, valuePtr, v2174, 0, SHIDWORD(v2175), 0);
                  OUTLINED_FUNCTION_240_0(v874, v875, v876, v877, v878, v879, v880, v881, v1461, v1481, v1500, v1519, v1537, v1554, keyf, v1588, v1605, v1622, v1639, v1656, v1673, v1690, v1707, v1724, v1743, v1761, v1779, v1797, v1814, v1831, v1848, v1865, contextf, v1899, v1916, v1934, v1954, allocatorg, v1987, v2002, v2018, v2035, allocg, theArrayg, v2086, v2110, v2127, v2143, theSete, v2168, v2169, *v2170, *type, v2172, valuePtr, v2174, v2175, SHIDWORD(v2175), v2176);
                  OUTLINED_FUNCTION_46();
                  if (!OctaviaClosedCaptionsRenderPipeline)
                  {
LABEL_1144:
                    OUTLINED_FUNCTION_16();
                    OUTLINED_FUNCTION_238_0(v890, v891, v892, v893, v894);
LABEL_1145:
                    CFRelease(v841);
LABEL_1146:
                    a7 = allocatora;
LABEL_1147:
                    v21 = itemfig_setMuted(a1, *(v1893 + 814));
                    playerfig_updateCaptionOrSubtitleHintOnVideoPipeline(v1859, a1);
                    if (*(v1893 + 52) == 4 && *(v1893 + 48) != 0.0)
                    {
                      itemfig_ReportAudioPlaybackThroughFigLog(a1);
                    }

                    playerfig_updateResourceUsageOnGlobalResourceArbiter(v1859, a1);
                    a6 = 0;
                    OUTLINED_FUNCTION_251_0();
                    p_duration = v2083;
                    OctaviaSubtitleRenderPipeline = v1951;
                    goto LABEL_1151;
                  }

                  if (!a1)
                  {
LABEL_1143:
                    *cf = 136315906;
                    *&cf[4] = "itemfig_rebuildRenderPipelinesAndBossGuts";
                    OUTLINED_FUNCTION_17_0();
                    OUTLINED_FUNCTION_146_0();
                    *(v882 + 255) = v857;
                    OUTLINED_FUNCTION_52_0();
                    OUTLINED_FUNCTION_65();
                    _os_log_send_and_compose_impl(v883, v884, v885, v886, v887, v888, DictionaryRepresentation, v889);
                    goto LABEL_1144;
                  }

LABEL_1142:
                  CMBaseObjectGetDerivedStorage();
                  goto LABEL_1143;
                }

                LODWORD(formatDescriptionOut[0].start.value) = 0;
                *cf = 0;
                v861 = CFDictionaryCreateMutable(alloca, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
                if (v861)
                {
                  v862 = v861;
                  v863 = *MEMORY[0x1E695E4D0];
                  if (*(v1893 + 130))
                  {
                    v864 = *MEMORY[0x1E695E4D0];
                  }

                  else
                  {
                    v864 = *MEMORY[0x1E695E4C0];
                  }

                  CFDictionarySetValue(v861, @"Visuals", v864);
                  FigSimpleMutexLock();
                  if (*(v1893 + 130))
                  {
                    CFDictionarySetValue(v862, @"NeroTransport", *(v1893 + 168));
                  }

                  FigSimpleMutexUnlock();
                  FigOutOfBandTrackControllerSetProperty(*a6, @"UsingNeroVideo", v863);
                  itemfig_GetDimensions();
                  v2200.width = *&formatDescriptionOut[0].start.value;
                  v2200.height = *cf;
                  DictionaryRepresentation = CGSizeCreateDictionaryRepresentation(v2200);
                  if (DictionaryRepresentation)
                  {
                    FigOutOfBandTrackControllerSetProperty(*a6, @"NeroVideoDimensions", DictionaryRepresentation);
                  }

                  OctaviaClosedCaptionsRenderPipeline = CGSizeCreateDictionaryRepresentation(*(v1893 + 136));
                  if (OctaviaClosedCaptionsRenderPipeline)
                  {
                    FigOutOfBandTrackControllerSetProperty(*a6, @"NeroDisplaySize", OctaviaClosedCaptionsRenderPipeline);
                  }

                  FigOutOfBandTrackControllerSetProperty(*a6, @"NeroVideoGravity", *(v1893 + 152));
                  if (DictionaryRepresentation)
                  {
                    CFRelease(DictionaryRepresentation);
                  }

                  if (OctaviaClosedCaptionsRenderPipeline)
                  {
                    CFRelease(OctaviaClosedCaptionsRenderPipeline);
                  }

                  CFRelease(v862);
                  goto LABEL_1137;
                }

                OUTLINED_FUNCTION_39_0();
                FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v1454, v1473, v1493);
                OUTLINED_FUNCTION_141_0();
                goto LABEL_1571;
              }
            }

            OUTLINED_FUNCTION_213_0();
            v902 = OUTLINED_FUNCTION_209_0(qword_1EAF16A08, v895, v896, v897, v898, v899, v900, v901, v1454, v1473, v1493, v1512, v1531, v1548, key, v1582, v1599, v1616, v1633, v1650, v1667, v1684, v1701, v1718, v1740, v1758, v1776, v1794, v1808, v1825, v1842, v1859, context, v1893, v1910, v1928, v1951, allocatora, v1981[0], v1981[1], v2012, v2029, alloca, theArraya, v2083, v2107, v2120, *(&v2120 + 1), theSet, v2168, v2169, *v2170, *type, v2172, valuePtr, v2174, v2175, v2176);
            OctaviaClosedCaptionsRenderPipeline = *value;
            v903 = v2176;
            os_log_type_enabled(v902, v2176);
            OUTLINED_FUNCTION_40();
            if (&__block_descriptor_96_e8_32r_e5_v8__0lr32l8)
            {
              if (a1)
              {
                CMBaseObjectGetDerivedStorage();
              }

              *cf = 136315907;
              *&cf[4] = "itemfig_rebuildRenderPipelinesAndBossGuts";
              OUTLINED_FUNCTION_215_0();
              *&cf[32] = 2113;
              OUTLINED_FUNCTION_301_0();
              OUTLINED_FUNCTION_52_0();
              OUTLINED_FUNCTION_44_0();
              _os_log_send_and_compose_impl(v937, v938, v939, v940, v941, v942, v903, v943);
              OctaviaClosedCaptionsRenderPipeline = *value;
            }
          }

          else
          {
            OUTLINED_FUNCTION_213_0();
            v911 = OUTLINED_FUNCTION_209_0(qword_1EAF16A08, v904, v905, v906, v907, v908, v909, v910, v1454, v1473, v1493, v1512, v1531, v1548, key, v1582, v1599, v1616, v1633, v1650, v1667, v1684, v1701, v1718, v1740, v1758, v1776, v1794, v1808, v1825, v1842, v1859, context, v1893, v1910, v1928, v1951, allocatora, v1981[0], v1981[1], v2012, v2029, alloca, theArraya, v2083, v2107, v2120, *(&v2120 + 1), theSet, v2168, v2169, *v2170, *type, v2172, valuePtr, v2174, v2175, v2176);
            OUTLINED_FUNCTION_243_0(v911, v912, v913, v914, v915, v916, v917, v918, v1462, v1482, v1501, v1520, v1538, v1555, keyg, v1589, v1606, v1623, v1640, v1657, v1674, v1691, v1708, v1725, v1744, v1762, v1780, v1798, v1815, v1832, v1849, v1866, contextg, v1900, v1917, v1935, v1955, allocatorh, v1988, v2003, v2019, v2036, alloch, theArrayh, v2087, v2111, v2128, v2144, theSetf, v2168, v2169, *v2170, *type, v2172, valuePtr, v2174, v2175, v2176);
            OUTLINED_FUNCTION_189();
            if (v58)
            {
              v920 = v919;
            }

            else
            {
              v920 = &__block_descriptor_96_e8_32r_e5_v8__0lr32l8;
            }

            if (v920)
            {
              if (a1)
              {
                CMBaseObjectGetDerivedStorage();
              }

              *cf = 136315650;
              *&cf[4] = "itemfig_rebuildRenderPipelinesAndBossGuts";
              OUTLINED_FUNCTION_17_0();
              OUTLINED_FUNCTION_52_0();
              OUTLINED_FUNCTION_44_0();
              _os_log_send_and_compose_impl(v944, v945, v946, v947, v948, v949, v833, v950);
            }
          }

          OUTLINED_FUNCTION_16();
          fig_log_call_emit_and_clean_up_after_send_and_compose();
          goto LABEL_1146;
        }

        FigPlaybackBossSetRateSnapping(v770, 1, 0.0, 0.0);
      }

      OctaviaClosedCaptionsRenderPipeline = theArraya;
      goto LABEL_1069;
    }

    v585 = *(v1893 + 78) != 0;
    v586 = CMBaseObjectGetDerivedStorage();
    formatDescriptionOut[0].start.value = 0;
    v587 = *(v586 + 128);
    if (theSet && v587)
    {
      *cf = 0;
      CFSetApplyFunction(theSet, fp_interrogateRenderPipeline, cf);
      if (cf[0])
      {
        goto LABEL_894;
      }

      v588 = (*cf >> 1) & 1;
    }

    else
    {
      if (!v587)
      {
        goto LABEL_894;
      }

      LOBYTE(v588) = 0;
    }

    *cf = 0;
    CMByteStreamGetCMBaseObject();
    if (*(*(CMBaseObjectGetVTable() + 8) + 48))
    {
      v589 = OUTLINED_FUNCTION_270();
      v590(v589);
      v591 = *cf;
      v592 = *MEMORY[0x1E695E4D0];
      if (*cf)
      {
        CFRelease(*cf);
      }

      if (v592 == v591)
      {
        goto LABEL_894;
      }

LABEL_898:
      CMByteStreamGetCMBaseObject();
      if (*(*(CMBaseObjectGetVTable() + 8) + 48))
      {
        v593 = OUTLINED_FUNCTION_270();
        if (!v594(v593))
        {
          if (formatDescriptionOut[0].start.value)
          {
            if (v592 == formatDescriptionOut[0].start.value)
            {
              CMByteStreamGetCMBaseObject();
              FigCachedFileByteStreamGetClassID();
              OUTLINED_FUNCTION_201_0();
              v964 = CMBaseObjectIsMemberOfClass();
              if (v964)
              {
                v965 = v588;
              }

              else
              {
                v965 = 1;
              }

              if (v965)
              {
                v966 = v964;
                CFRelease(formatDescriptionOut[0].start.value);
                if (!v966)
                {
                  goto LABEL_904;
                }

                goto LABEL_903;
              }

              v1057 = CMBaseObjectGetDerivedStorage();
              if (CFArrayGetCount(*(v1057 + 648)) < 1)
              {
LABEL_1288:
                playerfig_setReadCacheEnabled(v1928);
                CFRelease(formatDescriptionOut[0].start.value);
                goto LABEL_904;
              }

              while (1)
              {
                CFArrayGetValueAtIndex(*(v1057 + 648), 0);
                OUTLINED_FUNCTION_303_0();
                if (v58 && !*(v1058 + 72))
                {
                  break;
                }

                OUTLINED_FUNCTION_314_0();
                if (v58)
                {
                  goto LABEL_1288;
                }
              }
            }

            CFRelease(formatDescriptionOut[0].start.value);
          }
        }
      }

LABEL_903:
      v585 |= 8u;
      goto LABEL_904;
    }

    v592 = *MEMORY[0x1E695E4D0];
    if (*MEMORY[0x1E695E4D0])
    {
      goto LABEL_898;
    }

LABEL_894:
    playerfig_setReadCacheEnabled(v1928);
LABEL_904:
    v1740 = CFDictionaryCreateMutable(alloca, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    v595 = v2029;
    OUTLINED_FUNCTION_29();
    if (v58)
    {
      OUTLINED_FUNCTION_312_0();
      *cf = *MEMORY[0x1E6960CC0];
      v596 = *(MEMORY[0x1E6960CC0] + 16);
      *&cf[16] = v596;
      if ((OUTLINED_FUNCTION_439_0(v597, v598, v599, v600, v601, v602, v603, v604, v1454, v1473, v1493, v1512, v1531, v1548, key, v1582, v1599, v1616, v1633, v1650, v1667, v1684, v1701, v1718, v1740, v1758, v1776, v1794, v1808, v1825, v1842, v1859, context, v1893, v1910, v1928, v1951, allocatora, v1981[0], v1981[1], v2012, v2029, alloca, theArraya, v2083, v2107, *cf, *&cf[8], theSet, v2168, v2169, *v2170, *type, v2172, valuePtr, v2174, v2175, v2176, *cf) & 0x80000000) == 0)
      {
        OUTLINED_FUNCTION_29();
        if (v58)
        {
          OUTLINED_FUNCTION_229_0(v595 + 260, v1458, v1477, v1497, v1516, v1531, v1548, key, v1582, v1599, v1616, v1633, v1650, v1667, v1684, v1701, v1718, v1740, v1758, v1776, v1794, v1808, v1825, v1842, v1859, context, v1893, v1910, v1928, v1951, allocatora, v1981[0], v1981[1], v2012, v2029, alloca, theArraya, v2083, v2107, v2120);
          *&cf[16] = v596;
          if (OUTLINED_FUNCTION_439_0(v605, v606, v607, v608, v609, v610, v611, v612, v1459, v1478, v1498, v1517, v1535, v1552, keyd, v1586, v1603, v1620, v1637, v1654, v1671, v1688, v1705, v1722, v1741, v1759, v1777, v1795, v1812, v1829, v1846, v1863, contextd, v1897, v1914, v1932, v1952, allocatore, v1985, v2000, v2016, v2033, alloce, theArraye, v2084, v2108, v2125, v2141, theSet, v2168, v2169, *v2170, *type, v2172, valuePtr, v2174, v2175, v2176, *cf) >= 1)
          {
            OUTLINED_FUNCTION_304_0();
            FigCFDictionarySetCMTimeRange();
          }
        }
      }
    }

    v613 = v1893;
    if (*(v595 + 2096))
    {
      v614 = CFStringCreateWithCString(alloca, (v595 + 2096), 0x600u);
      if (v614)
      {
        v615 = v614;
        CFDictionarySetValue(v1740, @"Boss_ItemIdentifier", v614);
        CFRelease(v615);
      }
    }

    v616 = *(v595 + 1008);
    v617 = *(v595 + 1016);
    if (v1842)
    {
      v618 = *(v595 + 328);
    }

    else
    {
      v618 = 1;
    }

    a6 = v1794;
    v1479 = v585;
    OctaviaClosedCaptionsRenderPipeline = v1981[0];
    FigPlaybackBossCreate(alloca, v616, v540, v1981[0], p_duration, v2107, v617, v618, *(v1893 + 88), v1479, v1740, v1794);
    if (v619)
    {
      v21 = v619;
      OUTLINED_FUNCTION_213_0();
      v1270 = OUTLINED_FUNCTION_209_0(qword_1EAF16A08, v1263, v1264, v1265, v1266, v1267, v1268, v1269, v1454, v1473, v1493, v1512, v1531, v1548, key, v1582, v1599, v1616, v1633, v1650, v1667, v1684, v1701, v1718, v1740, v1758, v1776, v1794, v1808, v1825, v1842, v1859, context, v1893, v1910, v1928, v1951, allocatora, v1981[0], v1981[1], v2012, v2029, alloca, theArraya, v2083, v2107, v2120, *(&v2120 + 1), theSet, v2168, v2169, *v2170, *type, v2172, valuePtr, v2174, v2175, v2176);
      OUTLINED_FUNCTION_243_0(v1270, v1271, v1272, v1273, v1274, v1275, v1276, v1277, v1469, v1489, v1508, v1527, v1544, v1561, keym, v1595, v1612, v1629, v1646, v1663, v1680, v1697, v1714, v1731, v1750, v1768, v1786, v1804, v1821, v1838, v1855, v1872, contextm, v1906, v1923, v1941, v1960, allocatorm, v1993, v2008, v2024, v2041, allocm, theArraym, v2092, v2116, v2134, v2149, theSetk, v2168, v2169, *v2170, *type, v2172, valuePtr, v2174, v2175, v2176);
      OUTLINED_FUNCTION_189();
      if (v58)
      {
        v1279 = v1278;
      }

      else
      {
        v1279 = v613;
      }

      if (v1279)
      {
        if (v1942)
        {
          CMBaseObjectGetDerivedStorage();
        }

        OUTLINED_FUNCTION_32_0();
        *&cf[14] = v1942;
        OUTLINED_FUNCTION_55_0();
        *(v1339 + 255) = v21;
        OUTLINED_FUNCTION_52_0();
        OUTLINED_FUNCTION_44_0();
        _os_log_send_and_compose_impl(v1340, v1341, v1342, v1343, v1344, v1345, v540, v1346);
      }

      OUTLINED_FUNCTION_16();
      OUTLINED_FUNCTION_524(v1347, v1348, v1349, v1350, v1351);
      a6 = 0;
      RenderTriplesForVideoComposition = 0;
      a1 = v1942;
      OUTLINED_FUNCTION_251_0();
      p_duration = v2093;
    }

    else
    {
      CMBaseObjectGetDerivedStorage();
      CMNotificationCenterGetDefaultLocalCenter();
      OUTLINED_FUNCTION_186();
      FigNotificationCenterAddWeakListeners();
      CMNotificationCenterGetDefaultLocalCenter();
      FigPlaybackBossGetTimebase(*v1794);
      OUTLINED_FUNCTION_186();
      FigNotificationCenterAddWeakListener();
      FigSimpleMutexLock();
      v620 = *(v1893 + 472);
      if (v620)
      {
        a6 = CFRetain(v620);
        FigSimpleMutexUnlock();
        OctaviaSubtitleRenderPipeline = v1951;
        if (a6)
        {
          v621 = CFNumberCreate(alloca, kCFNumberSInt32Type, (v1893 + 480));
          v629 = OUTLINED_FUNCTION_305_0(v621, v622, v623, v624, v625, v626, v627, v628, v1454, v1473, v1493, v1512, v1531, v1548, key, v1582, v1599, v1616, v1633, v1650, v1667, v1684, v1701, v1718, v1740, v1758, v1776, v1794);
          FigPlaybackBossSetClientPID(v629, v621);
          v21 = v630;
          if (v621)
          {
            CFRelease(v621);
          }

          if (v21)
          {
            RenderTriplesForVideoComposition = 0;
            DerivedStorage = v2029;
LABEL_924:
            a7 = allocatora;
            i = v2107;
LABEL_1152:
            v312 = v1740;
            goto LABEL_1179;
          }

          CFRelease(a6);
        }
      }

      else
      {
        FigSimpleMutexUnlock();
      }

      itemfig_bumpBossControlTokenAndMarkBossAsNonIdle(a1, 0);
      if (!*(v2029 + 824))
      {
        *&v2120 = 0;
        v567 = v1893;
        goto LABEL_947;
      }

      v639 = OUTLINED_FUNCTION_305_0(v631, v632, v633, v634, v635, v636, v637, v638, v1454, v1473, v1493, v1512, v1531, v1548, key, v1582, v1599, v1616, v1633, v1650, v1667, v1684, v1701, v1718, v1740, v1758, v1776, v1794);
      FigPlaybackBossGetTimebase(v639);
      v640 = OUTLINED_FUNCTION_298();
      FigVideoCompositionProcessorSetProperty(v640, v641, v642);
      v567 = v1893;
      if (v643)
      {
        OUTLINED_FUNCTION_141_0();
        RenderTriplesForVideoComposition = 0;
      }

      else
      {
        OctaviaClosedCaptionsRenderPipeline = v2029;
        if ((*(v2029 + 248) & 0x1D) == 1)
        {
          OUTLINED_FUNCTION_312_0();
          OUTLINED_FUNCTION_155_0(MEMORY[0x1E6960CC0]);
          if ((OUTLINED_FUNCTION_439_0(v644, v645, v646, v647, v648, v649, v650, v651, v1454, v1473, v1493, v1512, v1531, v1548, key, v1582, v1599, v1616, v1633, v1650, v1667, v1684, v1701, v1718, v1740, v1758, v1776, v1794, v1808, v1825, v1842, v1859, context, v1893, v1910, v1928, v1951, allocatora, v1981[0], v1981[1], v2012, v2029, alloca, theArraya, v2083, v2107, v2120, *(&v2120 + 1), theSet, v2168, v2169, *v2170, *type, v2172, valuePtr, v2174, v2175, v2176, *cf) & 0x80000000) == 0)
          {
            OUTLINED_FUNCTION_29();
            if (v58)
            {
              OUTLINED_FUNCTION_229_0(OctaviaClosedCaptionsRenderPipeline + 260, v1454, v1473, v1493, v1512, v1531, v1548, key, v1582, v1599, v1616, v1633, v1650, v1667, v1684, v1701, v1718, v1740, v1758, v1776, v1794, v1808, v1825, v1842, v1859, context, v1893, v1910, v1928, v1951, allocatora, v1981[0], v1981[1], v2012, v2029, alloca, theArraya, v2083, v2107, v2120);
              *&cf[16] = @"VideoCompositionProcessorProperty_Timebase";
              if (OUTLINED_FUNCTION_439_0(v652, v653, v654, v655, v656, v657, v658, v659, v1460, v1480, v1499, v1518, v1536, v1553, keye, v1587, v1604, v1621, v1638, v1655, v1672, v1689, v1706, v1723, v1742, v1760, v1778, v1796, v1813, v1830, v1847, v1864, contexte, v1898, v1915, v1933, v1953, allocatorf, v1986, v2001, v2017, v2034, allocf, theArrayf, v2085, v2109, v2126, v2142, theSet, v2168, v2169, *v2170, *type, v2172, valuePtr, v2174, v2175, v2176, *cf) >= 1)
              {
                OUTLINED_FUNCTION_304_0();
                *&v2120 = CMTimeRangeCopyAsDictionary(formatDescriptionOut, alloca);
                FigVideoCompositionProcessorSetProperty(*(OctaviaClosedCaptionsRenderPipeline + 824), @"VideoCompositionProcessorProperty_LoopTimeRange", v2120);
                if (v660)
                {
                  OUTLINED_FUNCTION_141_0();
                  OUTLINED_FUNCTION_251_0();
LABEL_1572:
                  OctaviaSubtitleRenderPipeline = v1951;
                  a7 = allocatora;
LABEL_1151:
                  i = v2107;
                  RenderTriplesForVideoComposition = v2120;
                  goto LABEL_1152;
                }

                goto LABEL_943;
              }
            }
          }
        }

        FigVideoCompositionProcessorSetProperty(*(OctaviaClosedCaptionsRenderPipeline + 824), @"VideoCompositionProcessorProperty_LoopTimeRange", 0);
        a6 = 0;
        if (!v661)
        {
          *&v2120 = 0;
          v567 = v1893;
LABEL_943:
          OctaviaClosedCaptionsRenderPipeline = v1981[0];
          if (FigPlaybackBossSetVideoCompositionProcessor(*(v2029 + 352), *(v2029 + 824)) || FigPlaybackBossSetSeekingWaitsForVideoCompositionRendering(*(v2029 + 352), *(v2029 + 545)))
          {
            OUTLINED_FUNCTION_141_0();
            DerivedStorage = v2029;
            goto LABEL_1572;
          }

LABEL_947:
          v662 = v2029;
          OUTLINED_FUNCTION_29();
          if (v58)
          {
            if (*(v2029 + 128))
            {
              CMByteStreamGetCMBaseObject();
              FigCRABSGetClassID();
              OUTLINED_FUNCTION_201_0();
              if (CMBaseObjectIsMemberOfClass())
              {
                *cf = *(v2029 + 24);
                *&cf[16] = *(v2029 + 40);
                *value = *MEMORY[0x1E6960CC0];
                *&value[16] = *(MEMORY[0x1E6960CC0] + 16);
                CMTimeRangeMake(formatDescriptionOut, cf, value);
                itemfig_HintStreamForTimeRange(a1, &formatDescriptionOut[0].start.value);
              }
            }

            v663 = (*(v2029 + 96) & 0xF) - 1;
            if (v663 >= 5)
            {
              if (*(v567 + 48) >= 0.0)
              {
                v664 = 1;
              }

              else
              {
                v664 = 2;
              }
            }

            else
            {
              v664 = dword_196E727A8[v663];
            }

            if (dword_1EAF16A10 >= 2)
            {
              OUTLINED_FUNCTION_213_0();
              v665 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
              v666 = *value;
              v667 = v2176;
              os_log_type_enabled(v665, v2176);
              OUTLINED_FUNCTION_425();
              if (v58)
              {
                v669 = v668;
              }

              else
              {
                v669 = v666;
              }

              if (v669)
              {
                if (v1859)
                {
                  v670 = (CMBaseObjectGetDerivedStorage() + 972);
                }

                else
                {
                  v670 = "";
                }

                if (a1)
                {
                  v722 = (CMBaseObjectGetDerivedStorage() + 2096);
                }

                else
                {
                  v722 = "";
                }

                v21 = cf;
                *&formatDescriptionOut[0].start.value = *(v2029 + 24);
                formatDescriptionOut[0].start.epoch = *(v2029 + 40);
                Seconds = CMTimeGetSeconds(&formatDescriptionOut[0].start);
                *&formatDescriptionOut[0].start.value = *(v2029 + 48);
                formatDescriptionOut[0].start.epoch = *(v2029 + 64);
                v724 = CMTimeGetSeconds(&formatDescriptionOut[0].start);
                *&formatDescriptionOut[0].start.value = *(v2029 + 72);
                formatDescriptionOut[0].start.epoch = *(v2029 + 88);
                *&v725 = CMTimeGetSeconds(&formatDescriptionOut[0].start);
                *cf = 136317186;
                DerivedStorage = "itemfig_rebuildRenderPipelinesAndBossGuts";
                *&cf[4] = "itemfig_rebuildRenderPipelinesAndBossGuts";
                *&cf[12] = 2048;
                *&cf[14] = v1859;
                *&cf[22] = 2082;
                *&cf[24] = v670;
                *&cf[32] = 2048;
                *&cf[34] = a1;
                *v2178 = 2082;
                *&v2178[2] = v722;
                v2179 = 2048;
                v2180 = Seconds;
                v2181 = 1024;
                *v2182 = v664;
                *&v2182[4] = 2048;
                *&v2182[6] = v724;
                v2183 = 2048;
                v2184 = v725;
                OUTLINED_FUNCTION_52_0();
                OUTLINED_FUNCTION_38();
                _os_log_send_and_compose_impl(v726, v727, v728, v729, v730, v731, v667, v732);
              }

              OUTLINED_FUNCTION_7();
              OUTLINED_FUNCTION_635(v733, v734, v735, v736, v737);
              v567 = v1893;
            }

            v738 = *(v2029 + 352);
            v739 = *(v2029 + 512);
            v740 = *(v2029 + 524);
            *&formatDescriptionOut[0].start.value = *(v2029 + 24);
            formatDescriptionOut[0].start.epoch = *(v2029 + 40);
            *cf = *(v2029 + 48);
            *&cf[16] = *(v2029 + 64);
            *value = *(v2029 + 72);
            *&value[16] = *(v2029 + 88);
            FigPlaybackBossSetTimeWithRange(v738, &formatDescriptionOut[0].start, v664, cf, value, v739, v740);
            if (*(v2029 + 1745))
            {
              v741 = 0.0;
              if (*(v567 + 52) == 4)
              {
                v741 = *(v567 + 48);
              }

              itemfig_updateAccessLogEntry(v1859, a1, v741);
            }

            itemfig_reportingAgentReportPlayStartMovieTime(a1);
            v662 = v2029;
          }

          itemfig_setEndTimeOnBoss(a1);
          *&formatDescriptionOut[0].start.value = *(v662 + 164);
          OUTLINED_FUNCTION_364_0(*(v662 + 180));
          FigPlaybackBossSetReverseEndTime(v742, v743);
          FigPlaybackBossSetStopAtEnd(*(v662 + 352), *(v567 + 816) == 1);
          *&formatDescriptionOut[0].start.value = *(v662 + 188);
          OUTLINED_FUNCTION_364_0(*(v662 + 204));
          FigPlaybackBossSetAdvanceTimeForOverlappedPlayback(v744, v745, v746, v747, v748, v749, v750, v751);
          v584 = v2120;
          goto LABEL_1018;
        }

        v21 = v661;
        RenderTriplesForVideoComposition = 0;
      }

      OUTLINED_FUNCTION_251_0();
    }

    OctaviaSubtitleRenderPipeline = v1951;
    goto LABEL_924;
  }

  OUTLINED_FUNCTION_16_0();
  OUTLINED_FUNCTION_189_0();
  v21 = 0;
LABEL_749:
  DerivedStorage = v2029;
LABEL_1179:
  if (!DerivedStorage[1745])
  {
    if (!v312)
    {
      goto LABEL_1182;
    }

    goto LABEL_1181;
  }

  v2131 = RenderTriplesForVideoComposition;
  v962 = v312;
  itemfig_getFrameDropCountFromAllVideoPipelines(a1, DerivedStorage + 215);
  v312 = v962;
  RenderTriplesForVideoComposition = v2131;
  if (v312)
  {
LABEL_1181:
    CFRelease(v312);
  }

LABEL_1182:
  free(OctaviaClosedCaptionsRenderPipeline);
  free(p_duration);
  free(OctaviaSubtitleRenderPipeline);
  free(a7);
  free(i);
  if (theSet)
  {
    CFRelease(theSet);
  }

  if (RenderTriplesForVideoComposition)
  {
    CFRelease(RenderTriplesForVideoComposition);
  }

  for (nn = 0; nn != 14; ++nn)
  {
    v952 = v2185[nn];
    if (v952)
    {
      CFRelease(v952);
    }
  }

  if (v21)
  {
    itemfig_unregisterAndDestroyPlayabilityMonitorNotification(a1);
    playeritemfig_releaseRenderPipelines(v1859, a1, v1825, v957, v958, v959, v960, v961, v1454, v1473, v1493, v1512, v1531, v1548, key, v1582, v1599, v1616, v1633, v1650, v1667, v1684, v1701, v1718);
  }

  FigDeferredTransactionCommit(v2168, 0);
  if (v2168)
  {
    CFRelease(v2168);
  }

  objc_autoreleasePoolPop(context);
  if (!HIDWORD(v1910) && HIDWORD(v1842) != *(DerivedStorage + 2065))
  {
    v953 = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    v954 = v953;
    v955 = MEMORY[0x1E695E4D0];
    if (!DerivedStorage[2065])
    {
      v955 = MEMORY[0x1E695E4C0];
    }

    CFDictionarySetValue(v953, @"HasEnabledAudio", *v955);
    CMNotificationCenterGetDefaultLocalCenter();
    FigDispatchAsyncPostNotification();
    if (v954)
    {
      CFRelease(v954);
    }
  }

  if (a6)
  {
    CFRelease(a6);
  }

  return v21;
}