uint64_t bufferedAudioEngine_handleSetRateToOne_sendAnchorToAllHoses(const void *a1)
{
  v84 = **&MEMORY[0x277CC0898];
  v82 = 0uLL;
  v83 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  *v81 = *MEMORY[0x277CEA038];
  *&v81[12] = *(MEMORY[0x277CEA038] + 12);
  *v80 = *MEMORY[0x277CEA038];
  *&v80[12] = *&v81[12];
  if (*(DerivedStorage + 884) != 8)
  {
    return 0;
  }

  v3 = DerivedStorage;
  CMBaseObjectGetDerivedStorage();
  *(v3 + 840) = 0;
  *(v3 + 936) = 0;
  *(v3 + 928) = 0;
  HostTimeClock = CMClockGetHostTimeClock();
  CMSyncGetTime(&v84, HostTimeClock);
  v5 = *(v3 + 328);
  v6 = OUTLINED_FUNCTION_11_5();
  v7 = CMClockConvertHostTimeToSystemUnits(v6);
  v8 = *(*(CMBaseObjectGetVTable() + 16) + 16);
  if (v8)
  {
    v9 = v8(v5, v7, &v82);
    if (!v9)
    {
LABEL_35:
      *(v3 + 832) = 0;
      v25 = CMClockGetHostTimeClock();
      v26 = *(v3 + 872);
      *time = v84;
      CMSyncConvertTime(v88, time, v25, v26);
      v27 = *&v88[12];
      if ((v88[12] & 0x1D) != 1)
      {
        OUTLINED_FUNCTION_7_4();
        APSLogErrorAt();
        return APSSignalErrorAt();
      }

      v28 = *v88;
      v29 = *&v88[8];
      v30 = *&v88[16];
      MaxFirstAvailableTransportTimestampForStartUp = bufferedAudioEngine_getMaxFirstAvailableTransportTimestampForStartUp();
      if (MaxFirstAvailableTransportTimestampForStartUp)
      {
        v19 = MaxFirstAvailableTransportTimestampForStartUp;
        APSLogErrorAt();
        return v19;
      }

      *v88 = *v81;
      *&v88[12] = *&v81[12];
      cf = APSAudioTransportTimeCopyDebugDesc();
      if (gLogCategory_APAudioEngineBuffered <= 50 && (gLogCategory_APAudioEngineBuffered != -1 || OUTLINED_FUNCTION_4(&gLogCategory_APAudioEngineBuffered)))
      {
        if (a1)
        {
          v32 = (CMBaseObjectGetDerivedStorage() + 392);
        }

        else
        {
          v32 = "";
        }

        v74 = v32;
        v33 = *(v3 + 530);
        *v88 = v28;
        *&v88[8] = v29;
        *&v88[12] = v27;
        *&v88[16] = v30;
        Seconds = CMTimeGetSeconds(v88);
        *v88 = *(v3 + 780);
        *&v88[16] = *(v3 + 796);
        v35 = CMTimeGetSeconds(v88);
        v36 = *(v3 + 780);
        v37 = *(v3 + 788);
        v38 = OUTLINED_FUNCTION_11_5();
        v39 = CMTimeGetSeconds(v38);
        v40 = CMClockGetHostTimeClock();
        CMClockGetTime(v88, v40);
        v41 = CMTimeGetSeconds(v88);
        v71 = v82;
        v69 = v41;
        v70 = v83 + *(&v82 + 1) * 5.42101086e-20;
        OUTLINED_FUNCTION_2_0();
        LogPrintF(v42, v43, v44, v45, a1, v74, v33, *&Seconds, v28, v29, cf, *&v35, v36, v37, *&v39, *&v69, *&v70, v71);
      }

      if (*(v3 + 576))
      {
        *v88 = v28;
        *&v88[8] = v29;
        *&v88[12] = v27;
        *&v88[16] = v30;
        APSAudioTransportTimeMakeWithMediaTime();
      }

      else
      {
        SampleRateFromTransportAudioFormat = bufferedAudioEngine_getSampleRateFromTransportAudioFormat(a1);
        *time = v28;
        *&time[8] = v29;
        *&time[12] = v27;
        *&time[16] = v30;
        CMTimeConvertScale(v88, time, SampleRateFromTransportAudioFormat, kCMTimeRoundingMethod_RoundHalfAwayFromZero);
        APSAudioTransportTimeMakeWithRTPTime();
        *v80 = *v88;
        *&v80[12] = *&v88[12];
      }

      v47 = *(v3 + 640);
      if (v47)
      {
        v75 = *MEMORY[0x277CE9FB8];
        v73 = *MEMORY[0x277CBED28];
        while (1)
        {
          v48 = *(v3 + 888);
          if (v47[9] == v48)
          {
            break;
          }

          v49 = gLogCategory_APAudioEngineBuffered;
          if (*(v47 + 37) != 2)
          {
            goto LABEL_57;
          }

          v50 = v48;
          if (gLogCategory_APAudioEngineBuffered <= 50 && (gLogCategory_APAudioEngineBuffered != -1 || OUTLINED_FUNCTION_4(&gLogCategory_APAudioEngineBuffered)))
          {
            if (a1)
            {
              CMBaseObjectGetDerivedStorage();
            }

            OUTLINED_FUNCTION_127();
            OUTLINED_FUNCTION_102();
            OUTLINED_FUNCTION_2_0();
            LogPrintF(v54, v55, v56, "BAE [%{ptr}] %s[0x%04X] SetRateToOne Handler: setting rate for hose [%{ptr}] (%@) to %u\n");
          }

          if (a1)
          {
            CFRetain(a1);
          }

          v57 = LogCategoryCopyOSLogHandle();
          if (v57)
          {
            v58 = v57;
          }

          else
          {
            v58 = MEMORY[0x277D86220];
          }

          v59 = CUObfuscatedPtr();
          if (v59)
          {
            v60 = v59;
            if (os_signpost_enabled(v58))
            {
              *v88 = 0;
              _os_signpost_emit_with_name_impl(&dword_221FFA000, v58, OS_SIGNPOST_INTERVAL_BEGIN, v60, "AIRPLAY_SIGNPOST_AUDIOENGINE_HOSE_SETRATE_1", &unk_2222A918B, v88, 2u);
            }
          }

          v61 = *(v47 + 2);
          v79 = *v80;
          HIDWORD(v79) = *&v80[12];
          v77 = v82;
          v78 = v83;
          v76 = *v81;
          HIDWORD(v76) = *&v81[12];
          ProtocolID = APSAudioProtocolDriverHoseControlProtocolGetProtocolID();
          v63 = OUTLINED_FUNCTION_111(ProtocolID);
          if (v63)
          {
            v64 = *(v63 + 16);
            if (v64)
            {
              if (*(v64 + 40))
              {
                *v88 = v79;
                *&v88[12] = *&v80[12];
                v86 = v77;
                v87 = v78;
                *time = v76;
                *&time[12] = *&v81[12];
                OUTLINED_FUNCTION_41_0();
                v65(v61, v50, v88, &v86, time);
              }

              else
              {
                bufferedAudioEngine_hoseSetRateAndAnchorTimeCallbackCompletionHandler(v61, 0, MEMORY[0x277CEA038], MEMORY[0x277CEA280], MEMORY[0x277CEA038], MEMORY[0x277CEA280], -12782, a1);
              }
            }
          }

          v66 = *(v47 + 2);
          v67 = *(*(CMBaseObjectGetVTable() + 8) + 56);
          if (v67)
          {
            v67(v66, v75, v73);
          }

          v47[9] = *(v3 + 888);
          *(v47 + 37) = 3;
          bufferedAudioEngine_getCurrentRemoteMediaTimeInternal(0, v88);
          APSAudioHoseMetricCollectorSetPlaybackStateForHose();
LABEL_83:
          v47 = *v47;
          if (!v47)
          {
            goto LABEL_84;
          }
        }

        v49 = gLogCategory_APAudioEngineBuffered;
LABEL_57:
        if (v49 <= 50 && (v49 != -1 || OUTLINED_FUNCTION_4(&gLogCategory_APAudioEngineBuffered)))
        {
          if (a1)
          {
            CMBaseObjectGetDerivedStorage();
          }

          OUTLINED_FUNCTION_26_1();
          OUTLINED_FUNCTION_102();
          OUTLINED_FUNCTION_2_0();
          LogPrintF(v51, v52, v53, "BAE [%{ptr}] %s[0x%04X] SetRateToOne Handler: skipping hose [%{ptr}] (%@) rate (%f) currentRate (%f) state (%d)\n", a1);
        }

        goto LABEL_83;
      }

LABEL_84:
      if ((*(v3 + 1332) & 1) == 0)
      {
        v68 = CMClockGetHostTimeClock();
        CMClockGetTime(v88, v68);
        *(v3 + 1320) = *v88;
        *(v3 + 1336) = *&v88[16];
      }

      if (cf)
      {
        CFRelease(cf);
      }

      return 0;
    }
  }

  else
  {
    v9 = 4294954514;
  }

  if (gLogCategory_APAudioEngineBuffered <= 90)
  {
    OUTLINED_FUNCTION_8_8();
    if (!v10 || _LogCategory_Initialize())
    {
      if (a1)
      {
        v11 = (CMBaseObjectGetDerivedStorage() + 392);
      }

      else
      {
        v11 = "";
      }

      v12 = *(v3 + 530);
      v13 = OUTLINED_FUNCTION_11_5();
      v14 = CMTimeGetSeconds(v13);
      v15 = OUTLINED_FUNCTION_11_5();
      v16 = CMClockConvertHostTimeToSystemUnits(v15);
      LogPrintF(&gLogCategory_APAudioEngineBuffered, "OSStatus bufferedAudioEngine_handleSetRateToOne_sendAnchorToAllHoses(FigEndpointStreamAudioEngineRef)", (v7 + 40), "BAE [%{ptr}] %s[0x%04X] ### APSNetworkClockConvertUpTicksToNetworkTime returned an error: %d for anchorTimeHostTime = %1.3f, anchorTimeHostTimeTicks = %llu\n", a1, v11, v12, v9, *&v14, v16);
    }
  }

  v17 = mach_absolute_time();
  v18 = *(v3 + 832);
  if (!v18)
  {
    v18 = MillisecondsToUpTicks() + v17;
    *(v3 + 832) = v18;
  }

  if (v17 >= v18)
  {
    v21 = CMBaseObjectGetDerivedStorage();
    v22 = *(v21 + 640);
    if (gLogCategory_APAudioEngineBuffered <= 90 && (gLogCategory_APAudioEngineBuffered != -1 || _LogCategory_Initialize()))
    {
      if (a1)
      {
        v23 = (CMBaseObjectGetDerivedStorage() + 392);
      }

      else
      {
        v23 = "";
      }

      LogPrintF(&gLogCategory_APAudioEngineBuffered, "void bufferedAudioEngine_setRateToOnePendingClockLockHitTimeout(FigEndpointStreamAudioEngineRef, OSStatus)", 33554522, "BAE [%{ptr}] %s### [0x%04X] Audio Engine waited %d ms trying to resolve clock errors(%d), dissociating remote endpoints...\n", a1, v23, *(v21 + 530), *(v21 + 336), v9);
    }

    Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    if (Mutable)
    {
      FigCFDictionarySetInt32();
      CFDictionarySetValue(Mutable, *MEMORY[0x277CC17E0], @"Network clock failed to lock");
    }

    for (; v22; v22 = *v22)
    {
      if (!*(v22 + 32))
      {
        CMNotificationCenterGetDefaultLocalCenter();
        FigDispatchAsyncPostNotification();
      }
    }

    bufferedAudioEngine_sendSessionFailureEvent(a1, @"Network clock failed to lock", v9);
    bufferedAudioEngine_maybeTriggerTTR(a1, 0, 0, v9);
    if (Mutable)
    {
      CFRelease(Mutable);
    }

    if (*(v3 + 1160))
    {
      goto LABEL_35;
    }

    return 0;
  }

  v19 = 0;
  *(v3 + 840) = 1;
  return v19;
}

void bufferedAudioEngine_hoseSetRateCallbackCompletionHandlerInternal(uint64_t a1)
{
  OUTLINED_FUNCTION_44(a1);
  if (*CMBaseObjectGetDerivedStorage())
  {
    goto LABEL_37;
  }

  v4 = OUTLINED_FUNCTION_112();
  if (!v4)
  {
    if (gLogCategory_APAudioEngineBuffered > 90 || gLogCategory_APAudioEngineBuffered == -1 && !OUTLINED_FUNCTION_4_3(&gLogCategory_APAudioEngineBuffered))
    {
      goto LABEL_37;
    }

    if (v1->n128_u64[0])
    {
      CMBaseObjectGetDerivedStorage();
    }

    OUTLINED_FUNCTION_4_16();
    OUTLINED_FUNCTION_2_1();
    goto LABEL_36;
  }

  v5 = v4;
  if (*(v2 + 882))
  {
    if (gLogCategory_APAudioEngineBuffered <= 50)
    {
      OUTLINED_FUNCTION_10_4();
      if (!v7 || _LogCategory_Initialize())
      {
        v9 = v1->n128_u64[0];
        if (v1->n128_u64[0])
        {
          CMBaseObjectGetDerivedStorage();
        }

        OUTLINED_FUNCTION_31_0();
        OUTLINED_FUNCTION_26_1();
        LogPrintF(&gLogCategory_APAudioEngineBuffered, "void bufferedAudioEngine_hoseSetRateCallbackCompletionHandlerInternal(void *)", v33, "BAE [%{ptr}] %s[0x%04X] Cancel pending SetRate 1 [%{ptr}] (%@)\n", v9);
      }
    }

    bufferedAudioEngine_updatePlaybackState(v1->n128_u64[0], 2);
    v34 = LogCategoryCopyOSLogHandle();
    if (v34)
    {
      v35 = v34;
    }

    else
    {
      v35 = MEMORY[0x277D86220];
    }

    v36 = CUObfuscatedPtr();
    if (v36)
    {
      v37 = v36;
      if (os_signpost_enabled(v35))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_221FFA000, v35, OS_SIGNPOST_INTERVAL_BEGIN, v37, "AIRPLAY_SIGNPOST_AUDIOENGINE_HOSE_SETRATE_0", &unk_2222A918B, buf, 2u);
      }
    }

    LODWORD(v28) = bufferedAudioEngine_handleSetRateToZero(v1->n128_u64[0]);
    *(v2 + 882) = 0;
    goto LABEL_38;
  }

  v6 = v1[4].n128_i32[2];
  if (v6 == -17580)
  {
    if (gLogCategory_APAudioEngineBuffered > 50)
    {
      goto LABEL_37;
    }

    OUTLINED_FUNCTION_10_4();
    if (v7)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_37;
      }
    }

    v8 = v1->n128_u64[0];
    if (v1->n128_u64[0])
    {
      CMBaseObjectGetDerivedStorage();
    }

    OUTLINED_FUNCTION_14_7();
    OUTLINED_FUNCTION_70();
    v24 = &gLogCategory_APAudioEngineBuffered;
    v25 = "void bufferedAudioEngine_hoseSetRateCallbackCompletionHandlerInternal(void *)";
    v64 = v8;
    v65 = v26;
    v27 = "BAE [%{ptr}] %s[0x%04X] SetRate 1 not processed by hose [%{ptr}] (%@) err = %d\n ";
LABEL_36:
    LogPrintF(v24, v25, v23, v27, v64, v65);
LABEL_37:
    LODWORD(v28) = 0;
    goto LABEL_38;
  }

  if (v6)
  {
    if (v6 != 200501)
    {
      ++*(v4 + 43);
      if (gLogCategory_APAudioEngineBuffered <= 90 && (gLogCategory_APAudioEngineBuffered != -1 || OUTLINED_FUNCTION_4_3(&gLogCategory_APAudioEngineBuffered)))
      {
        if (v1->n128_u64[0])
        {
          CMBaseObjectGetDerivedStorage();
        }

        OUTLINED_FUNCTION_14_7();
        OUTLINED_FUNCTION_52();
        OUTLINED_FUNCTION_135();
        OUTLINED_FUNCTION_2_1();
        LogPrintF(v10, v11, v12, v13);
      }

      v14 = LogCategoryCopyOSLogHandle();
      v15 = v14;
      if (v14)
      {
        v16 = v14;
      }

      else
      {
        v16 = MEMORY[0x277D86220];
      }

      v17 = CUObfuscatedPtr();
      if (v17)
      {
        v18 = v17;
        if (os_signpost_enabled(v16))
        {
          *buf = 0;
          OUTLINED_FUNCTION_140(&dword_221FFA000, v19, v20, v18, "AIRPLAY_SIGNPOST_AUDIOENGINE_HOSE_SETRATE_1", &unk_2222A918B, v21, v22, v64, v65, v68, v70, v71, v72, v73, v74, v75, *(&v75 + 1), v76, v77);
        }
      }

      if (v15)
      {
        os_release(v15);
      }

      *(v5 + 37) = 2;
      bufferedAudioEngine_handleErrorWithReceiverAnchor(v1->n128_u64[0], v1->n128_i64[1], 0);
      goto LABEL_37;
    }

    if (gLogCategory_APAudioEngineBuffered <= 90 && (gLogCategory_APAudioEngineBuffered != -1 || OUTLINED_FUNCTION_4_3(&gLogCategory_APAudioEngineBuffered)))
    {
      v29 = v1->n128_u64[0];
      if (v1->n128_u64[0])
      {
        CMBaseObjectGetDerivedStorage();
      }

      OUTLINED_FUNCTION_14_7();
      OUTLINED_FUNCTION_70();
      v66 = v38;
      OUTLINED_FUNCTION_2_1();
      LogPrintF(v39, v40, v41, v42, v29, v66);
    }

    bufferedAudioEngine_updatePlaybackState(v1->n128_u64[0], 6);
    *(v5 + 37) = 2;
    LODWORD(v28) = bufferedAudioEngine_handleSetRateToOne(v1->n128_u64[0]);
  }

  else
  {
    OUTLINED_FUNCTION_69();
    if (v30 ^ v31 | v7)
    {
      OUTLINED_FUNCTION_10_4();
      if (!v7 || _LogCategory_Initialize())
      {
        v32 = v1->n128_u64[0];
        if (v1->n128_u64[0])
        {
          CMBaseObjectGetDerivedStorage();
        }

        OUTLINED_FUNCTION_31_0();
        OUTLINED_FUNCTION_26_1();
        v64 = v32;
        LogPrintF(&gLogCategory_APAudioEngineBuffered, "void bufferedAudioEngine_hoseSetRateCallbackCompletionHandlerInternal(void *)", v43, "BAE [%{ptr}] %s[0x%04X] SetRate 1 success for hose [%{ptr}] (%@) \n");
      }
    }

    *(v5 + 43) = 0;
    *(v5 + 176) = 1;
    v5[9] = *(v2 + 896);
    v44 = MEMORY[0x277CC0898];
    *(v2 + 1080) = *MEMORY[0x277CC0898];
    *(v2 + 1096) = *(v44 + 16);
    v45 = LogCategoryCopyOSLogHandle();
    OUTLINED_FUNCTION_98();
    if (CUObfuscatedPtr() && OUTLINED_FUNCTION_143())
    {
      *buf = 0;
      OUTLINED_FUNCTION_82(&dword_221FFA000, v46, v47, v3, "AIRPLAY_SIGNPOST_AUDIOENGINE_HOSE_SETRATE_1", &unk_2222A918B, v51, v52, v64, v65, v68, v70, v71, v72, v73, v74, v75, *(&v75 + 1), v76, v77);
    }

    if (v45)
    {
      os_release(v45);
    }

    OUTLINED_FUNCTION_74(v1->n128_u64[0], v1[1], v46, v47, v48, v49, v50, v51, v52, v53, v64, v65, v68, v70, v71, v72, v73, v74, v75, v76, v77);
    if (!v54)
    {
      *(v5 + 43) = 0;
      v57 = *(v2 + 944);
      if (v57)
      {
        CFRelease(v57);
        LODWORD(v28) = 0;
        *(v2 + 944) = 0;
        goto LABEL_38;
      }

      goto LABEL_37;
    }

    v28 = v54;
    ++*(v5 + 43);
    OUTLINED_FUNCTION_46();
    if (v30 ^ v31 | v7 && (v55 != -1 || OUTLINED_FUNCTION_4_3(&gLogCategory_APAudioEngineBuffered)))
    {
      v56 = v1->n128_u64[0];
      if (v1->n128_u64[0])
      {
        CMBaseObjectGetDerivedStorage();
      }

      OUTLINED_FUNCTION_14_7();
      OUTLINED_FUNCTION_52();
      v67 = v58;
      v69 = v59;
      OUTLINED_FUNCTION_2_1();
      LogPrintF(v60, v61, v62, v63, v56, v67, v69);
    }

    bufferedAudioEngine_handleErrorWithReceiverAnchor(v1->n128_u64[0], v1->n128_i64[1], v28);
  }

LABEL_38:
  *v1[5].n128_u64[0] = v28;
}

uint64_t bufferedAudioEngine_handleSetRateToZero(const void *a1)
{
  *&v80.value = *MEMORY[0x277CC0898];
  v2 = *(MEMORY[0x277CC0898] + 16);
  v80.epoch = v2;
  v71 = *&v80.value;
  *&v79.value = *&v80.value;
  v79.epoch = v2;
  v73 = *MEMORY[0x277CEA038];
  v78[0] = *MEMORY[0x277CEA038];
  v72 = *(MEMORY[0x277CEA038] + 12);
  *(v78 + 12) = v72;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v4 = DerivedStorage;
  if (*DerivedStorage || *(DerivedStorage + 884) != 2)
  {
LABEL_33:
    v41 = 0;
    goto LABEL_34;
  }

  CMBaseObjectGetDerivedStorage();
  HostTimeClock = CMClockGetHostTimeClock();
  CMClockGetTime(&v80, HostTimeClock);
  OUTLINED_FUNCTION_29_0();
  if (v8 ^ v9 | v7 && (v6 != -1 || OUTLINED_FUNCTION_4(&gLogCategory_APAudioEngineBuffered)))
  {
    if (a1)
    {
      v10 = (CMBaseObjectGetDerivedStorage() + 392);
    }

    else
    {
      v10 = "";
    }

    v11 = *(v4 + 530);
    v68 = OUTLINED_FUNCTION_107();
    OUTLINED_FUNCTION_2_0();
    LogPrintF(v12, v13, v14, v15, a1, v10, v11, *&v68);
  }

  v16 = CMClockGetHostTimeClock();
  v17 = *(v4 + 872);
  *time = v80;
  CMSyncConvertTime(lhs, time, v16, v17);
  v18 = *lhs;
  v20 = *&lhs[8];
  v19 = *&lhs[12];
  v21 = *&lhs[16];
  if ((lhs[12] & 0x1D) == 1 || *(v4 + 882))
  {
    v75 = *MEMORY[0x277CEA280];
    v76 = *(MEMORY[0x277CEA280] + 8);
    v74 = *(MEMORY[0x277CEA280] + 16);
    v22 = (v4 + 804);
    OUTLINED_FUNCTION_29_0();
    if (v8 ^ v9 | v7 && (v23 != -1 || OUTLINED_FUNCTION_4(&gLogCategory_APAudioEngineBuffered)))
    {
      if (a1)
      {
        v24 = (CMBaseObjectGetDerivedStorage() + 392);
      }

      else
      {
        v24 = "";
      }

      v25 = *(v4 + 530);
      *lhs = v18;
      *&lhs[8] = v20;
      *&lhs[12] = v19;
      *&lhs[16] = v21;
      Seconds = CMTimeGetSeconds(lhs);
      v27 = OUTLINED_FUNCTION_107();
      v28 = CMClockGetHostTimeClock();
      CMClockGetTime(lhs, v28);
      v69 = CMTimeGetSeconds(lhs);
      OUTLINED_FUNCTION_2_0();
      LogPrintF(v29, v30, v31, v32, a1, v24, v25, *&Seconds, v18, v20, *&v27, *&v69, v74 + v76 * 5.42101086e-20, v75);
      v22 = (v4 + 804);
    }

    *v22 = v18;
    *(v4 + 812) = v20;
    *(v4 + 816) = v19;
    v22[2] = v21;
    *(v4 + 888) = *(v4 + 896);
    v70 = v2;
    if (*(v4 + 576))
    {
      *lhs = v18;
      *&lhs[8] = v20;
      *&lhs[12] = v19;
      *&lhs[16] = v21;
      APSAudioTransportTimeMakeWithMediaTime();
    }

    else
    {
      SampleRateFromTransportAudioFormat = bufferedAudioEngine_getSampleRateFromTransportAudioFormat(a1);
      *time = v18;
      *&time[8] = v20;
      *&time[12] = v19;
      *&time[16] = v21;
      CMTimeConvertScale(lhs, time, SampleRateFromTransportAudioFormat, kCMTimeRoundingMethod_RoundHalfAwayFromZero);
      APSAudioTransportTimeMakeWithRTPTime();
      v78[0] = *lhs;
      *(v78 + 12) = *&lhs[12];
    }

    v34 = *(v4 + 640);
    if (v34)
    {
      v43 = *(v4 + 888);
      v44 = MEMORY[0x277D86220];
      do
      {
        v45 = LogCategoryCopyOSLogHandle();
        if (v45)
        {
          v46 = v45;
        }

        else
        {
          v46 = v44;
        }

        v47 = CUObfuscatedPtr();
        if (v47)
        {
          v48 = v47;
          if (os_signpost_enabled(v46))
          {
            *lhs = 0;
            _os_signpost_emit_with_name_impl(&dword_221FFA000, v46, OS_SIGNPOST_INTERVAL_BEGIN, v48, "AIRPLAY_SIGNPOST_AUDIOENGINE_HOSE_SETRATE_0", &unk_2222A918B, lhs, 2u);
          }
        }

        if (*(v34 + 9) != *(v4 + 888) && *(v34 + 37) == 3 || *(v4 + 882) && *(v4 + 896) == 0.0)
        {
          OUTLINED_FUNCTION_29_0();
          if (v8 ^ v9 | v7 && (v49 != -1 || OUTLINED_FUNCTION_4(&gLogCategory_APAudioEngineBuffered)))
          {
            if (a1)
            {
              CMBaseObjectGetDerivedStorage();
            }

            OUTLINED_FUNCTION_28();
            OUTLINED_FUNCTION_2_0();
            LogPrintF(v51, v52, v53, "BAE [%{ptr}] %s[0x%04X] SetRateToZero Handler: setting rate for hose [%{ptr}] (%@) to %u\n");
          }

          OUTLINED_FUNCTION_104();
          bufferedAudioEngine_getCurrentRemoteMediaTimeInternal(v54, v55);
          APSAudioHoseMetricCollectorSetPlaybackStateForHose();
          if (a1)
          {
            CFRetain(a1);
          }

          v56 = v34[2];
          *rhs = v78[0];
          *&rhs[12] = *(v78 + 12);
          ProtocolID = APSAudioProtocolDriverHoseControlProtocolGetProtocolID();
          v58 = OUTLINED_FUNCTION_111(ProtocolID);
          if (v58)
          {
            v59 = *(v58 + 16);
            if (v59)
            {
              if (*(v59 + 40))
              {
                *lhs = *rhs;
                *&lhs[12] = *&rhs[12];
                v82.value = v75;
                *&v82.timescale = v76;
                v82.epoch = v74;
                *time = v73;
                *&time[12] = v72;
                OUTLINED_FUNCTION_41_0();
                v60(v56, v43, lhs, &v82, time);
              }

              else
              {
                bufferedAudioEngine_hoseSetRateAndAnchorTimeCallbackCompletionHandler(v56, 0, MEMORY[0x277CEA038], MEMORY[0x277CEA280], MEMORY[0x277CEA038], MEMORY[0x277CEA280], -12782, a1);
              }
            }
          }

          v34[9] = *(v4 + 888);
          *(v34 + 37) = 2;
          *(v34 + 176) = 0;
        }

        else
        {
          OUTLINED_FUNCTION_29_0();
          if (v8 ^ v9 | v7 && (v50 != -1 || OUTLINED_FUNCTION_4(&gLogCategory_APAudioEngineBuffered)))
          {
            if (a1)
            {
              CMBaseObjectGetDerivedStorage();
            }

            OUTLINED_FUNCTION_18_5();
            OUTLINED_FUNCTION_2_0();
            LogPrintF(v61, v62, v63, "BAE [%{ptr}] %s[0x%04X] SetRateToZero Handler: skipping hose [%{ptr}] (%@) rate (%f) state (%d)\n");
          }
        }

        v34 = *v34;
      }

      while (v34);
    }

    v35 = *(v4 + 804);
    *&lhs[16] = *(v4 + 820);
    *lhs = v35;
    *time = *(v4 + 780);
    *&time[16] = *(v4 + 796);
    CMTimeSubtract(&v79, lhs, time);
    v2 = v70;
    if (*(v4 + 1332))
    {
      memset(lhs, 0, 24);
      v36 = CMClockGetHostTimeClock();
      CMClockGetTime(time, v36);
      *rhs = *(v4 + 1320);
      *&rhs[16] = *(v4 + 1336);
      CMTimeSubtract(lhs, time, rhs);
      *rhs = *(v4 + 1344);
      *&rhs[16] = *(v4 + 1360);
      v82 = *lhs;
      CMTimeAdd(time, rhs, &v82);
      *(v4 + 1344) = *time;
      *(v4 + 1360) = *&time[16];
      *(v4 + 1320) = v71;
      *(v4 + 1336) = v70;
    }

    APSTimedInfoManagerSuspend();
    v37 = *(v4 + 872);
    if (v37)
    {
      CFRelease(v37);
      *(v4 + 872) = 0;
    }

    for (i = *(v4 + 640); i; i = *i)
    {
      if (*(*(CMBaseObjectGetVTable() + 8) + 56))
      {
        v39 = OUTLINED_FUNCTION_129();
        v40(v39);
      }
    }

    goto LABEL_33;
  }

  APSLogErrorAt();
  v41 = APSSignalErrorAt();
LABEL_34:
  *(v4 + 896) = 0xBFF0000000000000;
  bufferedAudioEngine_updatePlaybackState(a1, 3);
  if (v41)
  {
    *lhs = v71;
    *&lhs[16] = v2;
    v42 = MEMORY[0x277CC0898];
  }

  else
  {
    *lhs = v79;
    v42 = &v80;
  }

  *time = *&v42->value;
  *&time[16] = v42->epoch;
  OUTLINED_FUNCTION_99();
  bufferedAudioEngine_callSetRateAndAnchorTimeClientCompletionCallback(a1, v41, lhs, time, 0, v64, v65, v66);
  *(v4 + 840) = 0;
  *(v4 + 832) = 0;
  *(v4 + 952) = 0u;
  return v41;
}

void bufferedAudioEngine_startRemoteMediaTimebaseWithReceiverAnchor()
{
  OUTLINED_FUNCTION_139();
  v119 = v0;
  v120 = v1;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v118 = *MEMORY[0x277D85DE8];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v9 = *MEMORY[0x277CC0898];
  *&v110.value = v9;
  v10 = *(MEMORY[0x277CC0898] + 16);
  v110.epoch = v10;
  *&v109.value = v9;
  v109.epoch = v10;
  v114 = *(MEMORY[0x277CC0898] + 12);
  v115 = *(MEMORY[0x277CC0898] + 20);
  *&v107.value = v9;
  v107.epoch = v10;
  v105.epoch = v10;
  hostTime = 0;
  *&v105.value = v9;
  if (*(DerivedStorage + 884) != 7)
  {
    goto LABEL_65;
  }

  v11 = DerivedStorage;
  v102 = v9;
  v12 = *(DerivedStorage + 328);
  immediateSourceTime = *v3;
  v13 = *(*(CMBaseObjectGetVTable() + 16) + 24);
  v14 = &gLogCategory_APEndpointPlaybackSessionRemoteControl;
  if (!v13)
  {
    v21 = 4294954514;
LABEL_8:
    APSLogErrorAt();
    OUTLINED_FUNCTION_77();
    if (v23 ^ v24 | v22)
    {
      OUTLINED_FUNCTION_8_8();
      if (!v22 || _LogCategory_Initialize())
      {
        if (v7)
        {
          v25 = (CMBaseObjectGetDerivedStorage() + 392);
        }

        else
        {
          v25 = "";
        }

        LogPrintF(&gLogCategory_APAudioEngineBuffered, "OSStatus bufferedAudioEngine_startRemoteMediaTimebaseWithReceiverAnchor(FigEndpointStreamAudioEngineRef, APSAudioTransportTime, APSNetworkTime)", (v3 + 40), "BAE [%{ptr}] %s[0x%04X] ###  ConvertNetworkTimeToUpTicks failed, err %#m\n", v7, v25, *(v11 + 530), v21);
      }
    }

    goto LABEL_65;
  }

  *v111 = immediateSourceTime;
  v15 = v13(v12, v111, &hostTime);
  if (v15)
  {
    v21 = v15;
    goto LABEL_8;
  }

  CMClockMakeHostTimeFromSystemUnits(&v110, hostTime);
  if (*v5 == 2)
  {
    v18 = *(v5 + 4);
    v19 = *(v5 + 12);
    v116 = *(v5 + 16);
    v20 = *(v5 + 24);
  }

  else
  {
    if (*v5 != 1)
    {
      goto LABEL_65;
    }

    v16 = *(v5 + 4);
    SampleRateFromTransportAudioFormat = bufferedAudioEngine_getSampleRateFromTransportAudioFormat(v7);
    CMTimeMake(v111, v16, SampleRateFromTransportAudioFormat);
    v18 = *v111;
    v116 = *&v111[12];
    v19 = *&v111[8];
    v20 = *&v111[20];
  }

  v117 = v20;
  v26 = CFGetAllocator(v7);
  if (CMTimebaseCreateWithSourceClock(v26, *(v11 + 480), (v11 + 872)))
  {
    goto LABEL_66;
  }

  APSTimedInfoManagerResume();
  bufferedAudioEngine_recordStartTimebaseTimeStampForRTC();
  HostTimeClock = CMClockGetHostTimeClock();
  v28 = *(v11 + 480);
  *v111 = v110;
  CMSyncConvertTime(&v109, v111, HostTimeClock, v28);
  OUTLINED_FUNCTION_126();
  *&v111[12] = v29;
  OUTLINED_FUNCTION_58();
  immediateSourceTime = v109;
  if (CMTimebaseSetRateAndAnchorTime(v30, 1.0, v111, &immediateSourceTime))
  {
    goto LABEL_66;
  }

  OUTLINED_FUNCTION_29_0();
  if (v23 ^ v24 | v22 && (v31 != -1 || OUTLINED_FUNCTION_4(&gLogCategory_APAudioEngineBuffered)))
  {
    if (v7)
    {
      v32 = (CMBaseObjectGetDerivedStorage() + 392);
    }

    else
    {
      v32 = "";
    }

    v33 = *(v11 + 530);
    v34 = *(v11 + 1032);
    OUTLINED_FUNCTION_126();
    *&v111[12] = v35;
    v96 = OUTLINED_FUNCTION_75(v117);
    OUTLINED_FUNCTION_2_0();
    LogPrintF(v36, v37, v38, v39, v7, v32, v33, v34, *&v96, v18, v19);
    v14 = &gLogCategory_APEndpointPlaybackSessionRemoteControl;
  }

  v40 = *MEMORY[0x277CBECE8];
  v112 = *(v11 + 1032);
  v113 = @"ContentType";
  if (!CFDictionaryCreate(v40, &v113, &v112, 1, MEMORY[0x277CBF138], MEMORY[0x277CBF150]))
  {
LABEL_66:
    APSLogErrorAt();
  }

  else
  {
    v41 = (v11 + 780);
    OUTLINED_FUNCTION_126();
    *&v111[12] = v42;
    OUTLINED_FUNCTION_58();
    cf = v43;
    APSTimedInfoManagerAddTimedInfo();
    OUTLINED_FUNCTION_29_0();
    if (v23 ^ v24 | v22 && (v44 != -1 || OUTLINED_FUNCTION_4(&gLogCategory_APAudioEngineBuffered)))
    {
      if (v7)
      {
        v45 = (CMBaseObjectGetDerivedStorage() + 392);
      }

      else
      {
        v45 = "";
      }

      v46 = *(v11 + 530);
      OUTLINED_FUNCTION_126();
      *&v111[12] = v47;
      OUTLINED_FUNCTION_58();
      Seconds = CMTimeGetSeconds(v111);
      v49 = *(v3 + 16) + *(v3 + 8) * 5.42101086e-20;
      *v111 = *&v110.value;
      v50 = OUTLINED_FUNCTION_81(v110.epoch);
      v51 = CMClockGetHostTimeClock();
      CMClockGetTime(v111, v51);
      v52 = CMTimeGetSeconds(v111);
      *v111 = *&v109.value;
      v53 = OUTLINED_FUNCTION_81(v109.epoch);
      CMClockGetTime(v111, *(v11 + 480));
      v98 = CMTimeGetSeconds(v111);
      OUTLINED_FUNCTION_2_0();
      LogPrintF(v54, v55, v56, v57, v7, v45, v46, *&Seconds, *&v49, *&v50, *&v52, *&v53, *&v98);
      v14 = &gLogCategory_APEndpointPlaybackSessionRemoteControl;
    }

    v101 = v18;
    v58 = (v11 + 804);
    if (*(v11 + 816))
    {
      v59 = (v11 + 804);
    }

    else
    {
      v59 = (v11 + 780);
    }

    immediateSourceTime = *v59;
    v60 = *(v11 + 872);
    v61 = CMClockGetHostTimeClock();
    time = immediateSourceTime;
    CMSyncConvertTime(v111, &time, v60, v61);
    v62 = CMClockGetHostTimeClock();
    CMClockGetTime(&time, v62);
    CMTimeSubtract(&v107, v111, &time);
    bufferedAudioEngine_getPlaybackStartupTime(&v105);
    OUTLINED_FUNCTION_29_0();
    if (v23 ^ v24 | v22 && (v63 != -1 || OUTLINED_FUNCTION_4(&gLogCategory_APAudioEngineBuffered)))
    {
      if (v7)
      {
        v64 = (CMBaseObjectGetDerivedStorage() + 392);
      }

      else
      {
        v64 = "";
      }

      v65 = *(v11 + 530);
      *v111 = *&v107.value;
      v66 = OUTLINED_FUNCTION_81(v107.epoch);
      *v111 = *&v105.value;
      v97 = OUTLINED_FUNCTION_81(v105.epoch);
      OUTLINED_FUNCTION_2_0();
      LogPrintF(v67, v68, v69, v70, v7, v64, v65, *&v66, *&v97);
    }

    v71 = v14;
    v72 = LogCategoryCopyOSLogHandle();
    OUTLINED_FUNCTION_98();
    if (CUObfuscatedPtr() && OUTLINED_FUNCTION_143())
    {
      spid = v14;
      v73 = *(v11 + 530);
      *v111 = *&v107.value;
      v74 = OUTLINED_FUNCTION_81(v107.epoch);
      *v111 = *&v105.value;
      v75 = OUTLINED_FUNCTION_81(v105.epoch);
      *v111 = 67109632;
      *&v111[4] = v73;
      *&v111[8] = 2048;
      *&v111[10] = v74;
      *&v111[18] = 2048;
      *&v111[20] = v75;
      OUTLINED_FUNCTION_97();
      _os_signpost_emit_with_name_impl(v76, v77, v78, spid, v79, v80, v81, 0x1Cu);
    }

    if (v72)
    {
      os_release(v72);
    }

    bufferedAudioEngine_logStartupTime(v7);
    *(v11 + 888) = *(v11 + 896);
    *(v11 + 896) = 0xBFF0000000000000;
    *v58 = v102;
    *(v11 + 820) = v10;
    v82 = *(v11 + 944);
    v83 = *(*(CMBaseObjectGetVTable() + 8) + 56);
    if (v83)
    {
      v83(v82, *MEMORY[0x277CE9FB8], *MEMORY[0x277CBED28]);
    }

    bufferedAudioEngine_updatePlaybackState(v7, 8);
    time.value = v101;
    time.timescale = v19;
    *&time.flags = v116;
    HIDWORD(time.epoch) = v117;
    v84 = *v41;
    rhs.epoch = *(v11 + 796);
    *&rhs.value = v84;
    CMTimeSubtract(v111, &time, &rhs);
    v85 = *v111;
    v114 = *&v111[12];
    v86 = *&v111[8];
    v115 = *&v111[20];
    v87 = v71[594];
    if (v87 <= 50 && (v87 != -1 || OUTLINED_FUNCTION_4(&gLogCategory_APAudioEngineBuffered)))
    {
      if (v7)
      {
        CMBaseObjectGetDerivedStorage();
      }

      *v111 = v85;
      *&v111[12] = v114;
      *&v111[8] = v86;
      *&v111[20] = v115;
      CMTimeGetSeconds(v111);
      *v111 = v101;
      *&v111[12] = v116;
      OUTLINED_FUNCTION_58();
      CMTimeGetSeconds(v111);
      OUTLINED_FUNCTION_51(*(v11 + 796), *v41);
      OUTLINED_FUNCTION_51(*(v11 + 820), *v58);
      OUTLINED_FUNCTION_18_5();
      OUTLINED_FUNCTION_2_0();
      LogPrintF(v88, v89, v90, v91);
    }

    OUTLINED_FUNCTION_99();
    *v111 = v85;
    *&v111[12] = v114;
    *&v111[8] = v86;
    *&v111[20] = v115;
    time = v110;
    bufferedAudioEngine_callSetRateAndAnchorTimeClientCompletionCallback(v7, 0, v111, &time.value, v92, v93, v94, v95);
    *(v11 + 952) = 0u;
    CFRelease(cf);
  }

LABEL_65:
  OUTLINED_FUNCTION_141();
}

void bufferedAudioEngine_hoseSetRateAndAnchorTimeCallbackCompletionHandlerInternal(void *a1)
{
  v107 = *MEMORY[0x277D85DE8];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*DerivedStorage)
  {
    goto LABEL_107;
  }

  v3 = DerivedStorage;
  HoseDecriptorFromHose = bufferedAudioEngine_getHoseDecriptorFromHose(*a1, a1[1]);
  if (!HoseDecriptorFromHose)
  {
    OUTLINED_FUNCTION_46();
    if (!(v10 ^ v11 | v9) || v82 == -1 && !OUTLINED_FUNCTION_4_3(&gLogCategory_APAudioEngineBuffered))
    {
      goto LABEL_107;
    }

    if (*a1)
    {
      CMBaseObjectGetDerivedStorage();
    }

    OUTLINED_FUNCTION_47();
    OUTLINED_FUNCTION_127();
    goto LABEL_106;
  }

  v5 = HoseDecriptorFromHose;
  v6 = MEMORY[0x277D86220];
  if (*(a1 + 4))
  {
    v7 = MEMORY[0x277CEA038];
    *(HoseDecriptorFromHose + 23) = *MEMORY[0x277CEA038];
    *(HoseDecriptorFromHose + 196) = *(v7 + 12);
    if (*(a1 + 32))
    {
      ++*(HoseDecriptorFromHose + 43);
      OUTLINED_FUNCTION_46();
      if (v10 ^ v11 | v9 && (v8 != -1 || OUTLINED_FUNCTION_4_3(&gLogCategory_APAudioEngineBuffered)))
      {
        if (*a1)
        {
          CMBaseObjectGetDerivedStorage();
        }

        OUTLINED_FUNCTION_47();
        v93 = *(v5 + 43);
        v94 = *(a1 + 32);
        v91 = v18;
        v92 = v5[33];
        OUTLINED_FUNCTION_135();
        OUTLINED_FUNCTION_2_1();
        LogPrintF(v19, v20, v21, v22);
      }

      v23 = LogCategoryCopyOSLogHandle();
      if (CUObfuscatedPtr() && OUTLINED_FUNCTION_143())
      {
        *buf = 0;
        OUTLINED_FUNCTION_82(&dword_221FFA000, v24, v25, v6, "AIRPLAY_SIGNPOST_AUDIOENGINE_HOSE_SETRATE_1", &unk_2222A918B, v26, v27, v87, v88, v90, v91, v92, v93, v94, v95, v96, v98, v99, v100);
      }

      if (v23)
      {
        os_release(v23);
      }

      if (*(v5 + 43) < 0x32u)
      {
        if (*(v3 + 111) == 1.0 && *(v5 + 9) == 1.0)
        {
          v5[9] = 0;
          *(v5 + 37) = 2;
          if (!v3[936])
          {
            v28 = MicrosecondsToUpTicks();
            *(v3 + 116) = mach_absolute_time() + v28;
            v3[936] = 1;
          }
        }
      }

      else
      {
        bufferedAudioEngine_handleTerminalSetRateError(*a1, a1[1], *(a1 + 32));
      }

      goto LABEL_107;
    }

    *(HoseDecriptorFromHose + 43) = 0;
    OUTLINED_FUNCTION_69();
    if (v10 ^ v11 | v9)
    {
      OUTLINED_FUNCTION_10_4();
      if (!v9 || _LogCategory_Initialize())
      {
        v14 = *a1;
        if (*a1)
        {
          CMBaseObjectGetDerivedStorage();
        }

        OUTLINED_FUNCTION_47();
        OUTLINED_FUNCTION_26_1();
        LogPrintF(&gLogCategory_APAudioEngineBuffered, "void bufferedAudioEngine_hoseSetRateAndAnchorTimeCallbackCompletionHandlerInternal(void *)", v44, "BAE [%{ptr}] %s[0x%04X] SetRate 1 success for hose [%{ptr}] (%@)\n", v14);
      }
    }

    v45 = LogCategoryCopyOSLogHandle();
    v46 = v45;
    if (v45)
    {
      v47 = v45;
    }

    else
    {
      v47 = v6;
    }

    v48 = CUObfuscatedPtr();
    if (v48)
    {
      v49 = v48;
      if (os_signpost_enabled(v47))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_221FFA000, v47, OS_SIGNPOST_INTERVAL_END, v49, "AIRPLAY_SIGNPOST_AUDIOENGINE_HOSE_SETRATE_1", &unk_2222A918B, buf, 2u);
      }
    }

    if (v46)
    {
      os_release(v46);
    }

    v50 = *a1;
    v51 = a1[1];
    *v97 = *(a1 + 9);
    *&v97[12] = *(a1 + 84);
    v105 = *(a1 + 13);
    v52 = *(a1 + 31);
    v106 = *(a1 + 30);
    v53 = CMBaseObjectGetDerivedStorage();
    *&v103.value = OUTLINED_FUNCTION_55(MEMORY[0x277CC0898]);
    v103.epoch = v54;
    v102[0] = 0;
    v102[1] = 0;
    v55 = bufferedAudioEngine_getHoseDecriptorFromHose(v50, v51);
    if (!v55)
    {
      OUTLINED_FUNCTION_46();
      if (!(v10 ^ v11 | v9) || v83 == -1 && !OUTLINED_FUNCTION_4_3(&gLogCategory_APAudioEngineBuffered))
      {
        goto LABEL_107;
      }

      if (v50)
      {
        v84 = (CMBaseObjectGetDerivedStorage() + 392);
      }

      else
      {
        v84 = "";
      }

      v88 = v84;
      v90 = v51;
      v87 = v50;
      goto LABEL_106;
    }

    if (v52)
    {
      goto LABEL_107;
    }

    v56 = v55;
    v57 = *(v53 + 328);
    v58 = *(*(CMBaseObjectGetVTable() + 16) + 24);
    if (v58)
    {
      *buf = v105;
      *&buf[16] = v106;
      *&buf[20] = v52;
      v59 = v58(v57, buf, v102);
      if (!v59)
      {
        *buf = *v97;
        *&buf[12] = *&v97[12];
        if (APSAudioTransportTimeIsValid())
        {
          v60 = *(v53 + 872);
          HostTimeClock = CMClockGetHostTimeClock();
          *buf = *&v97[4];
          *&buf[16] = *&v97[20];
          CMSyncConvertTime(&v104, buf, v60, HostTimeClock);
          if (*(v53 + 968) && FigCFDictionaryGetInt64IfPresent())
          {
            *buf = v104;
            CMTimeGetSeconds(buf);
            SecondsToUpTicksF();
            v62 = UpTicksToMilliseconds();
            CMTimeMake(&v103, v62, 1000);
            OUTLINED_FUNCTION_69();
            if (v10 ^ v11 | v9)
            {
              OUTLINED_FUNCTION_10_4();
              if (!v9 || _LogCategory_Initialize())
              {
                if (v50)
                {
                  v63 = (CMBaseObjectGetDerivedStorage() + 392);
                }

                else
                {
                  v63 = "";
                }

                v80 = v56[33];
                *buf = v103;
                Seconds = CMTimeGetSeconds(buf);
                LogPrintF(&gLogCategory_APAudioEngineBuffered, "void bufferedAudioEngine_logStartUpTimeForHose(FigEndpointStreamAudioEngineRef, APSAudioProtocolDriverHoseControlRef, APSAudioTransportTime, APSNetworkTime)", (v53 - 40), "BAE [%{ptr}] %sStartup time for hose [%{ptr}] (%@): %1.3f) \n", v50, v63, v51, v80, *&Seconds);
              }
            }

            goto LABEL_107;
          }

          OUTLINED_FUNCTION_46();
          if (!(v10 ^ v11 | v9) || v67 == -1 && !OUTLINED_FUNCTION_4_3(&gLogCategory_APAudioEngineBuffered))
          {
            goto LABEL_107;
          }

          if (v50)
          {
            v68 = (CMBaseObjectGetDerivedStorage() + 392);
          }

          else
          {
            v68 = "";
          }

          v87 = v50;
          v88 = v68;
        }

        else
        {
          OUTLINED_FUNCTION_46();
          if (!(v10 ^ v11 | v9) || v85 == -1 && !OUTLINED_FUNCTION_4_3(&gLogCategory_APAudioEngineBuffered))
          {
            goto LABEL_107;
          }

          if (v50)
          {
            v86 = (CMBaseObjectGetDerivedStorage() + 392);
          }

          else
          {
            v86 = "";
          }

          v90 = v51;
          v91 = v56[33];
          v87 = v50;
          v88 = v86;
        }

LABEL_106:
        OUTLINED_FUNCTION_2_1();
        LogPrintF(v76, v77, v78, v79, v87, v88, v90, v91);
        goto LABEL_107;
      }

      v64 = v59;
    }

    else
    {
      v64 = 4294954514;
    }

    APSLogErrorAt();
    OUTLINED_FUNCTION_46();
    if (!(v10 ^ v11 | v9) || v65 == -1 && !OUTLINED_FUNCTION_4_3(&gLogCategory_APAudioEngineBuffered))
    {
      goto LABEL_107;
    }

    if (v50)
    {
      v66 = (CMBaseObjectGetDerivedStorage() + 392);
    }

    else
    {
      v66 = "";
    }

    v90 = *(v53 + 530);
    v91 = v64;
    v87 = v50;
    v88 = v66;
    goto LABEL_106;
  }

  if (*(a1 + 32))
  {
    OUTLINED_FUNCTION_46();
    if (v10 ^ v11 | v9 && (v12 != -1 || OUTLINED_FUNCTION_4_3(&gLogCategory_APAudioEngineBuffered)))
    {
      v13 = *a1;
      if (*a1)
      {
        CMBaseObjectGetDerivedStorage();
      }

      OUTLINED_FUNCTION_47();
      OUTLINED_FUNCTION_70();
      v89 = v29;
      OUTLINED_FUNCTION_2_1();
      LogPrintF(v30, v31, v32, v33, v13, v89);
    }

    v34 = LogCategoryCopyOSLogHandle();
    v35 = v34;
    if (v34)
    {
      v36 = v34;
    }

    else
    {
      v36 = v6;
    }

    v37 = CUObfuscatedPtr();
    if (v37)
    {
      v38 = v37;
      if (os_signpost_enabled(v36))
      {
        *buf = 0;
        OUTLINED_FUNCTION_140(&dword_221FFA000, v39, v40, v38, "AIRPLAY_SIGNPOST_AUDIOENGINE_HOSE_SETRATE_0", &unk_2222A918B, v41, v42, v87, v88, v90, v91, v92, v93, v94, v95, v96, v98, v99, v100);
      }
    }

    v15 = 0;
  }

  else
  {
    *buf = *(a1 + 9);
    *&buf[12] = *(a1 + 84);
    v15 = APSAudioTransportTimeCopyDebugDesc();
    OUTLINED_FUNCTION_69();
    if (v10 ^ v11 | v9 && (v16 != -1 || _LogCategory_Initialize()))
    {
      v17 = *a1;
      if (*a1)
      {
        CMBaseObjectGetDerivedStorage();
      }

      OUTLINED_FUNCTION_47();
      LogPrintF(&gLogCategory_APAudioEngineBuffered, "void bufferedAudioEngine_hoseSetRateAndAnchorTimeCallbackCompletionHandlerInternal(void *)", 33554482, "BAE [%{ptr}] %s[0x%04X] SetRate 0 success for hose [%{ptr}] (%@); firstAvailableTransportTS: %@\n", v17, v69, v70, v71, v5[33], v15);
    }

    v35 = LogCategoryCopyOSLogHandle();
    if (CUObfuscatedPtr() && OUTLINED_FUNCTION_143())
    {
      *buf = 0;
      OUTLINED_FUNCTION_82(&dword_221FFA000, v72, v73, v6, "AIRPLAY_SIGNPOST_AUDIOENGINE_HOSE_SETRATE_0", &unk_2222A918B, v74, v75, v87, v88, v90, v91, v92, v93, v94, v95, v96, v98, v99, v100);
    }
  }

  if (v35)
  {
    os_release(v35);
  }

  if (!*(v5 + 45))
  {
    v43 = *(a1 + 9);
    *(v5 + 196) = *(a1 + 84);
    *(v5 + 23) = v43;
  }

  if (v15)
  {
    CFRelease(v15);
  }

LABEL_107:
  *a1[17] = 0;
}

void bufferedAudioEngine_maybeTriggerTTR(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v74 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  cf = 0;
  v9 = mach_absolute_time();
  if (v9 < bufferedAudioEngine_maybeTriggerTTR_nextDialogTicks)
  {
    if (gLogCategory_APAudioEngineBuffered <= 50 && (gLogCategory_APAudioEngineBuffered != -1 || OUTLINED_FUNCTION_4(&gLogCategory_APAudioEngineBuffered)))
    {
      if (a1)
      {
        v10 = (CMBaseObjectGetDerivedStorage() + 392);
      }

      else
      {
        v10 = "";
      }

      v66 = v10;
      OUTLINED_FUNCTION_2_0();
      LogPrintF(v52, v53, v54, v55, a1, v66, a4);
    }

    goto LABEL_36;
  }

  v11 = v9;
  v12 = *MEMORY[0x277CBECE8];
  if (*(DerivedStorage + 592))
  {
    CMBaseObject = FigEndpointStreamGetCMBaseObject();
    v13 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v13)
    {
      v74 = v13(CMBaseObject, @"EndpointIDs", v12, &cf);
      if (!v74)
      {
        goto LABEL_9;
      }
    }

    else
    {
      v74 = -12782;
    }

    APSLogErrorAt();
    goto LABEL_36;
  }

LABEL_9:
  v14 = OUTLINED_FUNCTION_104();
  Mutable = CFStringCreateMutable(v14, v15);
  if (!Mutable)
  {
LABEL_36:
    CMBaseObject = 0;
    goto LABEL_56;
  }

  v17 = Mutable;
  v74 = CFStringAppendF(Mutable, "MAKE SURE LOGS FROM ALL DEVICES ARE ATTACHED\n\n");
  if (v74)
  {
    APSLogErrorAt();
    CMBaseObject = 0;
LABEL_67:
    v62 = v17;
    goto LABEL_55;
  }

  if (a4 != -6722)
  {
    if (a4 == -71974)
    {
      v27 = CFStringCreateF(&v74, "Network clock failed to lock");
      if (!OUTLINED_FUNCTION_138(v27, v28, v29, v30, v31, v32, v33, v34, v63, v65, v68, v69, v70, v71, cf, v73, v74))
      {
        v26 = CFStringCreateF(&v74, "TTR: BAE Network clock Error: %@", CMBaseObject);
        goto LABEL_26;
      }
    }

    else
    {
      if (a4 == -71976)
      {
        v18 = CFStringCreateF(&v74, "Could not agree on grandmaster");
        if (!OUTLINED_FUNCTION_138(v18, v19, v20, v21, v22, v23, v24, v25, v63, v65, v68, v69, v70, v71, cf, v73, v74))
        {
          v26 = CFStringCreateF(&v74, "TTR: BAE Audio Clock Error: %@", CMBaseObject);
          goto LABEL_26;
        }

        goto LABEL_66;
      }

      v43 = CFStringCreateF(&v74, "Set Rate Failed with Error %d", a4);
      if (!OUTLINED_FUNCTION_138(v43, v44, v45, v46, v47, v48, v49, v50, v64, v65, v68, v69, v70, v71, cf, v73, v74))
      {
        goto LABEL_25;
      }
    }

LABEL_66:
    APSLogErrorAt();
    goto LABEL_67;
  }

  v35 = CFStringCreateF(&v74, "Operation timed out on remote endpoint");
  if (OUTLINED_FUNCTION_138(v35, v36, v37, v38, v39, v40, v41, v42, v63, v65, v68, v69, v70, v71, cf, v73, v74))
  {
    goto LABEL_66;
  }

LABEL_25:
  v26 = CFStringCreateF(&v74, "TTR: BAE Error: %@", CMBaseObject);
LABEL_26:
  v51 = v26;
  if (!v74)
  {
    if (a2)
    {
      if (a1)
      {
        CMBaseObjectGetDerivedStorage();
      }

      OUTLINED_FUNCTION_40_0();
      v74 = CFStringAppendF(v17, "BAE [%{ptr}] %s Session [0x%04X] Hose [%{ptr}] ('%@')\n");
      if (v74)
      {
        goto LABEL_43;
      }
    }

    else
    {
      if (a1)
      {
        CMBaseObjectGetDerivedStorage();
      }

      OUTLINED_FUNCTION_40_0();
      v74 = CFStringAppendF(v17, "BAE [%{ptr}] %s Session [0x%04X] \n");
      if (v74)
      {
        goto LABEL_43;
      }
    }

    v74 = CFStringAppendF(v17, "%@\n", CMBaseObject);
    if (!v74)
    {
      v74 = CFStringAppendF(v17, "Endpoint Hoses:\n");
      if (!v74)
      {
        v56 = (DerivedStorage + 640);
        while (1)
        {
          v56 = *v56;
          if (!v56)
          {
            break;
          }

          v74 = CFStringAppendF(v17, "   %@ [%{ptr}]\n", v56[33], v56[2]);
          if (v74)
          {
            goto LABEL_43;
          }
        }

        if (gLogCategory_APAudioEngineBuffered <= 50 && (gLogCategory_APAudioEngineBuffered != -1 || OUTLINED_FUNCTION_4(&gLogCategory_APAudioEngineBuffered)))
        {
          if (a1)
          {
            v57 = (CMBaseObjectGetDerivedStorage() + 392);
          }

          else
          {
            v57 = "";
          }

          v67 = v57;
          OUTLINED_FUNCTION_2_0();
          LogPrintF(v58, v59, v60, v61, a1, v67, a4);
        }

        bufferedAudioEngine_maybeTriggerTTR_nextDialogTicks = v11 + 36000 * UpTicksPerSecond();
        APSTapToRadarInvoke();
        goto LABEL_53;
      }
    }
  }

LABEL_43:
  APSLogErrorAt();
LABEL_53:
  CFRelease(v17);
  if (!v51)
  {
    goto LABEL_56;
  }

  v62 = v51;
LABEL_55:
  CFRelease(v62);
LABEL_56:
  if (cf)
  {
    CFRelease(cf);
  }

  if (CMBaseObject)
  {
    CFRelease(CMBaseObject);
  }
}

void bufferedAudioEngine_recordStartTimebaseTimeStampForRTC()
{
  OUTLINED_FUNCTION_20_2();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (DerivedStorage[160])
  {
    v3 = DerivedStorage;
    if (DerivedStorage[186])
    {
      FigCFDictionarySetInt64();
      v4 = v3[121];
      if (v4)
      {
        CFRelease(v4);
        v3[121] = 0;
      }

      v3[121] = CFDictionaryCreateCopy(*MEMORY[0x277CBECE8], v3[186]);
      FigCFDictionarySetInt64();
      APSAudioFormatDescriptionCopyDebugString();
      APSLogErrorAt();
    }

    else
    {
      DerivedStorage[188] = v1;
      bufferedAudioEngine_updateActiveAudioEngineCount(v0, 1);
      bufferedAudioEngine_reportPlayingAudioEngineEvent(v0);
    }
  }
}

void bufferedAudioEngine_logStartupTime(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  AudioFormatIndex = APSAudioFormatDescriptionGetAudioFormatIndex();
  v4 = "PCM/24000/16/1";
  switch(AudioFormatIndex)
  {
    case 2:
      v4 = "PCM/8000/16/1";
      break;
    case 3:
      v4 = "PCM/8000/16/2";
      break;
    case 4:
      v4 = "PCM/16000/16/1";
      break;
    case 5:
      v4 = "PCM/16000/16/2";
      break;
    case 6:
      break;
    case 7:
      v4 = "PCM/24000/16/2";
      break;
    case 8:
      v4 = "PCM/32000/16/1";
      break;
    case 9:
      v4 = "PCM/32000/16/2";
      break;
    case 10:
      v4 = "PCM/44100/16/1";
      break;
    case 11:
      v4 = "PCM/44100/16/2";
      break;
    case 12:
      v4 = "PCM/44100/24/1";
      break;
    case 13:
      v4 = "PCM/44100/24/2";
      break;
    case 14:
      v4 = "PCM/48000/16/1";
      break;
    case 15:
      v4 = "PCM/48000/16/2";
      break;
    case 16:
      v4 = "PCM/48000/24/1";
      break;
    case 17:
      v4 = "PCM/48000/24/2";
      break;
    case 18:
      v4 = "ALAC/44100/16/2";
      break;
    case 19:
      v4 = "ALAC/44100/24/2";
      break;
    case 20:
      v4 = "ALAC/48000/16/2";
      break;
    case 21:
      v4 = "ALAC/48000/24/2";
      break;
    case 22:
      v4 = "AAC-LC/44100/2";
      break;
    case 23:
      v4 = "AAC-LC/48000/2";
      break;
    case 24:
      v4 = "AAC-ELD/44100/2";
      break;
    case 25:
      v4 = "AAC-ELD/48000/2";
      break;
    case 26:
      v4 = "AAC-ELD/16000/1";
      break;
    case 27:
      v4 = "AAC-ELD/24000/1";
      break;
    case 28:
      v4 = "OPUS/16000/1";
      break;
    case 29:
      v4 = "OPUS/24000/1";
      break;
    case 30:
      v4 = "OPUS/48000/1";
      break;
    case 31:
      v4 = "AAC-ELD/44100/1";
      break;
    case 32:
      v4 = "AAC-ELD/48000/1";
      break;
    case 33:
      v4 = "QC3/48000/5.1.2";
      break;
    case 34:
      v4 = "QC3/48000/7.1.4";
      break;
    case 35:
      v4 = "QC3/48000/9.1.6";
      break;
    case 38:
      v4 = "PCM/48000/16/5.1.2";
      break;
    case 39:
      v4 = "AAC_LC/48000/5.1";
      break;
    case 40:
      v4 = "AAC_LC/48000/5.1.2";
      break;
    case 41:
      v4 = "AAC_ELD/48000/5.1";
      break;
    case 42:
      v4 = "AAC_ELD/48000/5.1.2";
      break;
    case 43:
      v4 = "AAC-ELD/32000/1";
      break;
    case 44:
      v4 = "PCM/48000/16/5.1";
      break;
    case 45:
      v4 = "PCM/48000/32f/1";
      break;
    case 46:
      v4 = "PCM/48000/32f/2";
      break;
    case 47:
      v4 = "PCM/48000/32f/5.1";
      break;
    case 48:
      v4 = "PCM/48000/32f/5.1.2";
      break;
    case 49:
      v4 = "DDPLUS/48000/2";
      break;
    case 50:
      v4 = "DDPLUS/48000/5.1";
      break;
    case 51:
      v4 = "DDPLUS/48000/5.1.2";
      break;
    case 52:
      v4 = "DDPLUS/48000/7.1.4";
      break;
    case 53:
      v4 = "DDPLUS/48000/9.1.6";
      break;
    case 54:
      v4 = "QAAC/48000/2";
      break;
    case 55:
      v4 = "QAAC/48000/5.1";
      break;
    case 56:
      v4 = "QAAC/48000/5.1.2";
      break;
    case 57:
      v4 = "QAACHE/48000/2";
      break;
    case 58:
      v4 = "QAACHE/48000/5.1";
      break;
    case 60:
      v4 = "QAACHE/48000/5.1.2";
      break;
    case 61:
      v4 = "QLAC/48000/24/2";
      break;
    case 62:
      v4 = "QC3/48000/2";
      break;
    case 63:
      v4 = "QC3/48000/5.1";
      break;
    case 64:
      v4 = "APAC/48000/2";
      break;
    case 65:
      v4 = "APAC/48000/5.1";
      break;
    case 66:
      v4 = "APAC/48000/5.1.2";
      break;
    case 67:
      v4 = "APAC/48000/7.1";
      break;
    case 68:
      v4 = "APAC/48000/7.1.4";
      break;
    case 69:
      v4 = "PCM/48000/32f/7.1.4";
      break;
    case 70:
      v4 = "QAAC/44100/2";
      break;
    case 71:
      v4 = "QAACHE/44100/2";
      break;
    case 72:
      v4 = "QAACHEV2/44100/2";
      break;
    case 73:
      v4 = "QLAC/44100/24/2";
      break;
    case 74:
      v4 = "MP3/44100/2";
      break;
    case 76:
      v4 = "APAC/48000/5.1.4";
      break;
    case 77:
      v4 = "APAC/48000/7.1.2";
      break;
    case 78:
      v4 = "PCM/48000/16/7.1";
      break;
    case 79:
      v4 = "PCM/48000/32f/7.1";
      break;
    case 80:
      v4 = "PCM/48000/16/5.1.4";
      break;
    case 81:
      v4 = "PCM/48000/32f/5.1.4";
      break;
    case 82:
      v4 = "PCM/48000/16/7.1.2";
      break;
    case 83:
      v4 = "PCM/48000/32f/7.1.2";
      break;
    case 84:
      v4 = "PCM/48000/16/7.1.4";
      break;
    case 85:
      v4 = "ALAC/44100/20/2";
      break;
    case 86:
      v4 = "ALAC/48000/20/2";
      break;
    case 87:
      v4 = "QAC3/48000/5.1";
      break;
    case 88:
      v4 = "QEC3/48000/7.1";
      break;
    case 89:
      v4 = "PAAC/44100/2";
      break;
    case 90:
      v4 = "AAC_LC/48000/7.1";
      break;
    case 91:
      v4 = "EAC3/48000/5.1";
      break;
    case 92:
      v4 = "APAC/48000/9.1.6";
      break;
    case 93:
      v4 = "PCM/48000/16/9.1.6";
      break;
    case 94:
      v4 = "PCM/48000/32f/9.1.6";
      break;
    default:
      if (AudioFormatIndex == 75)
      {
        v4 = "MP3/48000/2";
      }

      else
      {
        v4 = "";
      }

      break;
  }

  lhs = *(DerivedStorage + 1732);
  rhs = *(DerivedStorage + 1680);
  CMTimeSubtract(&time, &lhs, &rhs);
  Seconds = CMTimeGetSeconds(&time);
  if (gLogCategory_APAudioEngineBuffered <= 50 && (gLogCategory_APAudioEngineBuffered != -1 || OUTLINED_FUNCTION_4(&gLogCategory_APAudioEngineBuffered)))
  {
    if (a1)
    {
      v6 = (CMBaseObjectGetDerivedStorage() + 392);
    }

    else
    {
      v6 = "";
    }

    v21 = *(DerivedStorage + 1768);
    v22 = *(DerivedStorage + 1772);
    v19 = *(DerivedStorage + 1720);
    v20 = *(DerivedStorage + 1764);
    v17 = *(DerivedStorage + 1712);
    v18 = *(DerivedStorage + 1716);
    v15 = *(DerivedStorage + 1708);
    v16 = *(DerivedStorage + 1760);
    v13 = v6;
    v14 = *(DerivedStorage + 530);
    OUTLINED_FUNCTION_2_0();
    LogPrintF(v7, v8, v9, v10, a1, v13, v14, Seconds, *&v15, *&v16, *&v17, *&v18, *&v19, *&v20, *&v21, *&v22);
  }

  if (*(DerivedStorage + 1280))
  {
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    if (Mutable)
    {
      v12 = Mutable;
      CFDictionarySetValue(Mutable, @"sessionType", @"AudioBuffered");
      strlen(v4);
      CFDictionarySetCString();
      FigCFDictionarySetInt32();
      FigCFDictionarySetInt32();
      OUTLINED_FUNCTION_68(*(DerivedStorage + 1708));
      FigCFDictionarySetInt32();
      OUTLINED_FUNCTION_68(*(DerivedStorage + 1712));
      FigCFDictionarySetInt32();
      OUTLINED_FUNCTION_68(*(DerivedStorage + 1716));
      FigCFDictionarySetInt32();
      OUTLINED_FUNCTION_68(*(DerivedStorage + 1720));
      FigCFDictionarySetInt32();
      FigCFDictionarySetInt32();
      FigCFDictionarySetInt32();
      FigCFDictionarySetInt32();
      FigCFDictionarySetInt32();
      FigCFDictionarySetInt32();
      OUTLINED_FUNCTION_68(*(DerivedStorage + 1760));
      FigCFDictionarySetInt32();
      OUTLINED_FUNCTION_68(*(DerivedStorage + 1764));
      FigCFDictionarySetInt32();
      OUTLINED_FUNCTION_68(*(DerivedStorage + 1768));
      FigCFDictionarySetInt32();
      OUTLINED_FUNCTION_68(*(DerivedStorage + 1772));
      FigCFDictionarySetInt32();
      FigCFDictionarySetInt32();
      FigCFDictionarySetInt32();
      FigCFDictionarySetInt32();
      FigCFDictionarySetInt32();
      FigCFDictionarySetInt32();
      APSRTCReportingAgentSendEvent();
      CFRelease(v12);
    }

    else
    {
      APSLogErrorAt();
    }
  }
}

uint64_t bufferedAudioEngine_getMaxFirstAvailableTransportTimestampForStartUp()
{
  OUTLINED_FUNCTION_3_7();
  v1 = *MEMORY[0x277CEA038];
  v7 = *(MEMORY[0x277CEA038] + 4);
  v8 = v7;
  v2 = *(MEMORY[0x277CEA038] + 20);
  v9 = v2;
  if (!bufferedAudioEngine_isSpeakerPlayingBySelf(v3))
  {
    v4 = *(CMBaseObjectGetDerivedStorage() + 640);
    v10 = v7;
    for (i = v2; v4; v4 = *v4)
    {
      if (APSAudioTransportTimeIsValid())
      {
        if (APSAudioTransportTimeIsValid())
        {
          if (*(v4 + 46) != v1)
          {
            APSLogErrorAt();
            v5 = 4294960540;
            APSLogErrorAt();
            return v5;
          }

          APSAudioTransportTimeMax();
        }

        else
        {
          v10 = *(v4 + 188);
          i = *(v4 + 204);
          v1 = *(v4 + 46);
        }
      }
    }

    v8 = v10;
    v9 = i;
  }

  v5 = 0;
  if (v0)
  {
    *v0 = v1;
    *(v0 + 4) = v8;
    *(v0 + 20) = v9;
  }

  return v5;
}

void bufferedAudioEngine_hoseGetAnchorCallbackCompletionHandlerInternal(uint64_t a1)
{
  OUTLINED_FUNCTION_44(a1);
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v3 = APSAudioTransportTimeCopyDebugDesc();
  if (*DerivedStorage)
  {
    goto LABEL_21;
  }

  HoseDecriptorFromHose = bufferedAudioEngine_getHoseDecriptorFromHose(*v1, *(v1 + 8));
  if (!HoseDecriptorFromHose)
  {
    OUTLINED_FUNCTION_77();
    if (!(v35 ^ v36 | v34) || v45 == -1 && !OUTLINED_FUNCTION_4_3(&gLogCategory_APAudioEngineBuffered))
    {
      goto LABEL_21;
    }

    v46 = *v1;
    if (*v1)
    {
      CMBaseObjectGetDerivedStorage();
    }

    OUTLINED_FUNCTION_47();
    v48 = v46;
LABEL_20:
    OUTLINED_FUNCTION_2_1();
    LogPrintF(v23, v24, v25, v26, v48);
    goto LABEL_21;
  }

  v13 = HoseDecriptorFromHose;
  v14 = *(v1 + 72);
  if (v14 == 200501)
  {
    if (gLogCategory_APAudioEngineBuffered > 90 || gLogCategory_APAudioEngineBuffered == -1 && !OUTLINED_FUNCTION_4_3(&gLogCategory_APAudioEngineBuffered))
    {
      goto LABEL_21;
    }

    v16 = *v1;
    if (*v1)
    {
      CMBaseObjectGetDerivedStorage();
    }

    OUTLINED_FUNCTION_47();
    OUTLINED_FUNCTION_26_1();
    v48 = v16;
    goto LABEL_20;
  }

  if (v14)
  {
    if (gLogCategory_APAudioEngineBuffered <= 90 && (gLogCategory_APAudioEngineBuffered != -1 || OUTLINED_FUNCTION_4_3(&gLogCategory_APAudioEngineBuffered)))
    {
      v15 = *v1;
      if (*v1)
      {
        CMBaseObjectGetDerivedStorage();
      }

      OUTLINED_FUNCTION_47();
      OUTLINED_FUNCTION_52();
      v50 = v17;
      v53 = v18;
      OUTLINED_FUNCTION_2_1();
      LogPrintF(v19, v20, v21, v22, v15, v50, v53);
    }

    ++*(v13 + 43);
    bufferedAudioEngine_handleErrorWithReceiverAnchor(*v1, *(v1 + 8), *(v1 + 72));
    goto LABEL_21;
  }

  if (gLogCategory_APAudioEngineBuffered <= 50 && (gLogCategory_APAudioEngineBuffered != -1 || _LogCategory_Initialize()))
  {
    v28 = *v1;
    if (*v1)
    {
      CMBaseObjectGetDerivedStorage();
    }

    OUTLINED_FUNCTION_47();
    v59 = *(v1 + 48);
    v58 = *(v1 + 64) + *(v1 + 56) * 5.42101086e-20;
    v56 = v13[33];
    v57 = v3;
    v52 = v29;
    v55 = v30;
    v47 = v28;
    v49 = v31;
    LogPrintF(&gLogCategory_APAudioEngineBuffered, "void bufferedAudioEngine_hoseGetAnchorCallbackCompletionHandlerInternal(void *)", 33554482, "BAE [%{ptr}] %s[0x%04X] GetAnchor Success for hose [%{ptr}] (%@) transportTime: %@ networkTime: %1.6f(id=%lu)");
  }

  OUTLINED_FUNCTION_74(*v1, *(v1 + 16), v5, v6, v7, v8, v9, v10, v11, v12, v47, v49, v52, v55, v56, v57, *&v58, v59, v60, v61, v62);
  if (!v32)
  {
    v13[9] = *(DerivedStorage + 888);
    *(v13 + 43) = 0;
    v38 = *(DerivedStorage + 944);
    if (v38)
    {
      CFRelease(v38);
      LODWORD(v27) = 0;
      *(DerivedStorage + 944) = 0;
      goto LABEL_22;
    }

LABEL_21:
    LODWORD(v27) = 0;
    goto LABEL_22;
  }

  v27 = v32;
  ++*(v13 + 43);
  OUTLINED_FUNCTION_77();
  if (v35 ^ v36 | v34 && (v33 != -1 || OUTLINED_FUNCTION_4_3(&gLogCategory_APAudioEngineBuffered)))
  {
    v37 = *v1;
    if (*v1)
    {
      CMBaseObjectGetDerivedStorage();
    }

    OUTLINED_FUNCTION_47();
    OUTLINED_FUNCTION_52();
    v51 = v39;
    v54 = v40;
    OUTLINED_FUNCTION_2_1();
    LogPrintF(v41, v42, v43, v44, v37, v51, v54);
  }

  bufferedAudioEngine_handleErrorWithReceiverAnchor(*v1, *(v1 + 8), v27);
LABEL_22:
  if (v3)
  {
    CFRelease(v3);
  }

  **(v1 + 80) = v27;
}

void bufferedAudioEngine_suspendInternal(uint64_t a1)
{
  OUTLINED_FUNCTION_44(a1);
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v3 = DerivedStorage;
  if (!*(DerivedStorage + 528))
  {
    Mutable = 0;
    goto LABEL_37;
  }

  if (*(DerivedStorage + 592))
  {
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    if (!Mutable)
    {
      goto LABEL_46;
    }

    FigCFDictionarySetValue();
    v5 = *v1;
    v6 = CMBaseObjectGetDerivedStorage();
    if (*(v6 + 648))
    {
      for (i = v6; *(i + 640); bufferedAudioEngine_removeHose(v5, *(*(i + 640) + 16)))
      {
        bufferedAudioEngine_getCurrentRemoteMediaTimeInternal(0, &v27);
        APSAudioHoseMetricCollectorReportMetrics();
        APSAudioHoseMetricCollectorDeregisterHose();
      }
    }

    else
    {
      APSLogErrorAt();
    }

    if (FigEndpointStreamSuspend())
    {
LABEL_46:
      APSLogErrorAt();
      goto LABEL_37;
    }
  }

  else
  {
    Mutable = 0;
  }

  if (gLogCategory_APAudioEngineBuffered <= 50 && (gLogCategory_APAudioEngineBuffered != -1 || OUTLINED_FUNCTION_4(&gLogCategory_APAudioEngineBuffered)))
  {
    v8 = *v1;
    if (*v1)
    {
      v9 = (CMBaseObjectGetDerivedStorage() + 392);
    }

    else
    {
      v9 = "";
    }

    v25 = *(v3 + 530);
    v26 = *(v3 + 648);
    v24 = v9;
    OUTLINED_FUNCTION_2_0();
    LogPrintF(v10, v11, v12, v13, v8, v24, v25, v26);
  }

  bufferedAudioEngine_tearDownResumedStateAndStructuresInternal(*v1, 1);
  v14 = *(v3 + 600);
  if (v14)
  {
    CFRelease(v14);
    *(v3 + 600) = 0;
  }

  v15 = *(v3 + 608);
  if (v15)
  {
    CFRelease(v15);
    *(v3 + 608) = 0;
  }

  v16 = *(v3 + 592);
  if (v16)
  {
    CFRelease(v16);
    *(v3 + 592) = 0;
  }

  v17 = *(v3 + 1232);
  if (v17)
  {
    CFRelease(v17);
    *(v3 + 1232) = 0;
  }

  v18 = *(v3 + 1024);
  if (v18)
  {
    CFRelease(v18);
    *(v3 + 1024) = 0;
  }

  APSOasisCPUFloorRaiserReleaseAssertion();
  if (*(v3 + 392))
  {
    v19 = strstr((v3 + 392), "-SP");
    if (v19)
    {
      *v19 = 32;
    }
  }

  if (*(*(CMBaseObjectGetVTable() + 16) + 88))
  {
    v20 = OUTLINED_FUNCTION_87();
    v21(v20);
  }

  *(v3 + 528) = 0;
LABEL_37:
  v22 = v1[2];
  if (v22)
  {
    (v22)(*v1, *(v1 + 8), v1[3]);
  }

  APSDispatchSectionLeave();
  if (Mutable)
  {
    CFRelease(Mutable);
  }

  v23 = v1[1];
  if (v23)
  {
    CFRelease(v23);
  }

  if (*v1)
  {
    CFRelease(*v1);
  }

  free(v1);
}

uint64_t bufferedAudioEngine_flushInternal(uint64_t a1)
{
  OUTLINED_FUNCTION_44(a1);
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v70[0] = 0;
  v69 = 0;
  v3 = *(DerivedStorage + 884);
  v65 = 0;
  v66 = &v65;
  v67 = 0x2000000000;
  v68 = 0;
  if (!*DerivedStorage)
  {
    v4 = DerivedStorage;
    if (*(DerivedStorage + 536))
    {
      *(DerivedStorage + 888) = 0;
      v5 = *(DerivedStorage + 1192);
      if (v5)
      {
        v6 = CMBufferQueueReset(v5);
        if (v6)
        {
          v48 = v6;
          goto LABEL_69;
        }

        *(v4 + 1208) = 0;
      }

      *(v4 + 880) = 0;
      *(v4 + 652) = 0;
      CFArrayRemoveAllValues(*(v4 + 1104));
      v7 = bufferedAudioEngine_releaseCryptors(*v1, 0);
      if (!v7)
      {
        *(v4 + 1224) = 0;
        v8 = bufferedAudioEngine_releaseMagicCookies(*v1, 0);
        if (v8)
        {
          v48 = v8;
          goto LABEL_69;
        }

        v9 = *(v4 + 1048);
        if (v9)
        {
          CFRelease(v9);
          *(v4 + 1048) = 0;
        }

        *(v4 + 840) = 0;
        *(v4 + 896) = 0xBFF0000000000000;
        v10 = MEMORY[0x277CC0898];
        v62 = *MEMORY[0x277CC0898];
        *(v4 + 1164) = *MEMORY[0x277CC0898];
        v61 = *(v10 + 16);
        *(v4 + 1180) = v61;
        *(v4 + 653) = 0;
        bufferedAudioEngine_updatePlaybackState(*v1, 3);
        if (v3 <= 7 && ((1 << v3) & 0xE4) != 0)
        {
          if (gLogCategory_APAudioEngineBuffered <= 50 && (gLogCategory_APAudioEngineBuffered != -1 || OUTLINED_FUNCTION_4(&gLogCategory_APAudioEngineBuffered)))
          {
            v11 = *v1;
            if (*v1)
            {
              CMBaseObjectGetDerivedStorage();
            }

            v58 = 4294949716;
            OUTLINED_FUNCTION_114();
            OUTLINED_FUNCTION_2_0();
            LogPrintF(v12, v13, v14, v15, v11);
          }

          bufferedAudioEngine_callSetRateAndAnchorTimeClientCompletionCallback(*v1, 0xFFFFBB54, MEMORY[0x277CC08F0], MEMORY[0x277CC0898], 0, *(v4 + 952), *(v4 + 960), *(v4 + 888));
          *(v4 + 952) = 0u;
        }

        v16 = (v4 + 756);
        *(v4 + 976) = 0u;
        APSTimedInfoManagerFlush();
        APSTimedInfoManagerSuspend();
        v17 = *(v4 + 872);
        if (v17)
        {
          CFRelease(v17);
          *(v4 + 872) = 0;
        }

        v18 = *v16;
        v19 = *(v4 + 764);
        v63 = v4;
        v20 = *(v4 + 768);
        v21 = *(v4 + 772);
        bufferedAudioEngine_generateNewFirstRemoteMediaTime(*v1, &v64);
        value = v64.value;
        timescale = v64.timescale;
        flags = v64.flags;
        if ((v64.flags & 0x1D) == 1)
        {
          if ((v20 & 0x1D) == 1)
          {
            epoch = v64.epoch;
            *(v63 + 992) = 1;
            *(v63 + 653) = 0;
            *v16 = value;
            *(v63 + 764) = timescale;
            *(v63 + 768) = flags;
            v16[2] = epoch;
            v16[3] = value;
            *(v63 + 788) = timescale;
            *(v63 + 792) = flags;
            v16[5] = epoch;
            *(v63 + 804) = v62;
            *(v63 + 820) = v61;
            *(v63 + 708) = v62;
            *(v63 + 724) = v61;
            *(v63 + 748) = v61;
            *(v63 + 732) = v62;
            *(v63 + 1256) = v62;
            *(v63 + 1272) = v61;
            v26 = *(v63 + 1232);
            if (v26)
            {
              CFRelease(v26);
              *(v63 + 1232) = 0;
            }

            v64.value = value;
            v64.timescale = timescale;
            v64.flags = flags;
            v64.epoch = epoch;
            bufferedAudioEngine_updateNextTranscodeBurstTimeAndUnRest();
            if (gLogCategory_APAudioEngineBuffered <= 50 && (gLogCategory_APAudioEngineBuffered != -1 || OUTLINED_FUNCTION_4(&gLogCategory_APAudioEngineBuffered)))
            {
              v27 = *v1;
              if (*v1)
              {
                v28 = (CMBaseObjectGetDerivedStorage() + 392);
              }

              else
              {
                v28 = "";
              }

              v59 = *v16;
              v60 = v16[3];
              v57 = *(v63 + 530);
              v55 = v28;
              OUTLINED_FUNCTION_2_0();
              LogPrintF(v29, v30, v31, v32, v27, v55, v57, v18, v59, v60);
            }

            for (i = *(v63 + 640); i; i = *i)
            {
              bufferedAudioEngine_getCurrentRemoteMediaTimeInternal(0, &v64);
              OUTLINED_FUNCTION_102();
              APSAudioHoseMetricCollectorSetPlaybackStateForHose();
              if (*(*(CMBaseObjectGetVTable() + 8) + 56))
              {
                v34 = OUTLINED_FUNCTION_129();
                v35(v34);
              }
            }

            v36 = v63;
            v37 = APMessageRingBufferedFlush(*(v63 + 616), &v69, v70);
            if (!v37)
            {
              v38 = *(v63 + 624);
              if (v38)
              {
                CFRelease(v38);
                *(v63 + 624) = 0;
              }

              CFArrayRemoveAllValues(*(v63 + 1248));
              FigCFDictionaryApplyBlock();
              for (j = *(v63 + 640); j; j = *j)
              {
                if (gLogCategory_APAudioEngineBuffered <= 50 && (gLogCategory_APAudioEngineBuffered != -1 || OUTLINED_FUNCTION_4(&gLogCategory_APAudioEngineBuffered)))
                {
                  v40 = *v1;
                  if (*v1)
                  {
                    CMBaseObjectGetDerivedStorage();
                  }

                  OUTLINED_FUNCTION_70();
                  v54 = v40;
                  v56 = v41;
                  v36 = v42;
                  OUTLINED_FUNCTION_87();
                  OUTLINED_FUNCTION_2_0();
                  LogPrintF(v43, v44, v45, "BAE [%{ptr}] %s[0x%04X] Flushing hose [%{ptr}] (%@) Resetting index from %u to index / seq # %u / %u\n", v54, v56);
                }

                *(j + 34) = v69;
                if (*(j + 32) || !*(v36 + 577))
                {
                  v46 = *v1;
                  v47 = v70[0];
                }

                else
                {
                  v46 = *v1;
                  v47 = *(v66 + 12);
                }

                v64.value = v18;
                v64.timescale = v19;
                v64.flags = v20;
                v64.epoch = v21;
                bufferedAudioEngine_flushHose(v46, j, v47, &v64);
              }

              bufferedAudioEngine_wakeUpHosesAndAudioTimer(*v1);
              goto LABEL_55;
            }

            v48 = v37;
LABEL_69:
            APSLogErrorAt();
            goto LABEL_56;
          }

          APSLogErrorAt();
          if (gLogCategory_APAudioEngineBuffered <= 90 && (gLogCategory_APAudioEngineBuffered != -1 || _LogCategory_Initialize()))
          {
            v52 = *v1;
            if (v52)
            {
              v53 = (CMBaseObjectGetDerivedStorage() + 392);
            }

            else
            {
              v53 = "";
            }

            LogPrintF(&gLogCategory_APAudioEngineBuffered, "OSStatus bufferedAudioEngine_flushInternal(void *)", 33554522, "BAE [%{ptr}] %s### Non-Numeric flushRemoteMediaTime timestamp computation: %lld; timescale: %d", v52, v53, v18, v19, v58);
          }
        }

        else
        {
          APSLogErrorAt();
          if (gLogCategory_APAudioEngineBuffered <= 90 && (gLogCategory_APAudioEngineBuffered != -1 || _LogCategory_Initialize()))
          {
            v50 = *v1;
            if (v50)
            {
              v51 = (CMBaseObjectGetDerivedStorage() + 392);
            }

            else
            {
              v51 = "";
            }

            LogPrintF(&gLogCategory_APAudioEngineBuffered, "OSStatus bufferedAudioEngine_flushInternal(void *)", 33554522, "BAE [%{ptr}] %s### Non-Numeric firstRemoteMediaTime timestamp computation: %lld; timescale: %d", v50, v51, value, timescale, v58);
          }
        }

        v48 = 4294951815;
        goto LABEL_56;
      }

      v48 = v7;
      goto LABEL_69;
    }
  }

LABEL_55:
  v48 = 0;
LABEL_56:
  _Block_object_dispose(&v65, 8);
  return v48;
}

void bufferedAudioEngine_hoseFlushCallbackCompletionHandlerInternal(uint64_t a1)
{
  OUTLINED_FUNCTION_44(a1);
  if (!*CMBaseObjectGetDerivedStorage())
  {
    v4 = OUTLINED_FUNCTION_112();
    if (v4)
    {
      OUTLINED_FUNCTION_32_0(v4);
      FigCFDictionaryApplyBlock();
      if (*(v1 + 12))
      {
        if (gLogCategory_APAudioEngineBuffered <= 90 && (gLogCategory_APAudioEngineBuffered != -1 || OUTLINED_FUNCTION_4_3(&gLogCategory_APAudioEngineBuffered)))
        {
          if (*v1)
          {
            CMBaseObjectGetDerivedStorage();
          }

          OUTLINED_FUNCTION_14_7();
          OUTLINED_FUNCTION_135();
LABEL_15:
          OUTLINED_FUNCTION_2_1();
          LogPrintF(v7, v8, v9, v10);
        }
      }

      else
      {
        if (gLogCategory_APAudioEngineBuffered <= 50)
        {
          OUTLINED_FUNCTION_10_4();
          if (!v5 || _LogCategory_Initialize())
          {
            v6 = *v1;
            if (*v1)
            {
              CMBaseObjectGetDerivedStorage();
            }

            OUTLINED_FUNCTION_14_7();
            OUTLINED_FUNCTION_70();
            LogPrintF(&gLogCategory_APAudioEngineBuffered, "void bufferedAudioEngine_hoseFlushCallbackCompletionHandlerInternal(void *)", v11, "BAE [%{ptr}] %s[0x%04X] Flush SUCCESS for hose [%{ptr}] (%@) flushPendingCount = %d\n", v6, v12);
          }
        }

        OUTLINED_FUNCTION_53((v2 + 804));
        v13 = MEMORY[0x277CEA038];
        *(v3 + 184) = *MEMORY[0x277CEA038];
        *(v3 + 196) = *(v13 + 12);
      }
    }

    else if (gLogCategory_APAudioEngineBuffered <= 90 && (gLogCategory_APAudioEngineBuffered != -1 || OUTLINED_FUNCTION_4_3(&gLogCategory_APAudioEngineBuffered)))
    {
      if (*v1)
      {
        CMBaseObjectGetDerivedStorage();
      }

      OUTLINED_FUNCTION_4_16();
      goto LABEL_15;
    }
  }

  *v1[7] = 0;
}

_BYTE *bufferedAudioEngine_hoseFlushWithinSampleRangeCallbackCompletionHandlerInternal(uint64_t a1)
{
  OUTLINED_FUNCTION_44(a1);
  result = CMBaseObjectGetDerivedStorage();
  if (!*result)
  {
    result = OUTLINED_FUNCTION_112();
    if (result)
    {
      OUTLINED_FUNCTION_32_0(result);
      result = FigCFDictionaryApplyBlock();
      if (*(v1 + 20))
      {
        if (gLogCategory_APAudioEngineBuffered <= 90)
        {
          if (gLogCategory_APAudioEngineBuffered != -1 || (result = OUTLINED_FUNCTION_4_3(&gLogCategory_APAudioEngineBuffered), result))
          {
            if (*v1)
            {
              CMBaseObjectGetDerivedStorage();
            }

            OUTLINED_FUNCTION_14_7();
            OUTLINED_FUNCTION_135();
LABEL_15:
            OUTLINED_FUNCTION_2_1();
LABEL_19:
            result = LogPrintF(v5, v6, v7, v8, v10, v11);
          }
        }
      }

      else if (gLogCategory_APAudioEngineBuffered <= 50)
      {
        OUTLINED_FUNCTION_10_4();
        if (!v3 || (result = _LogCategory_Initialize(), result))
        {
          v4 = *v1;
          if (*v1)
          {
            CMBaseObjectGetDerivedStorage();
          }

          OUTLINED_FUNCTION_14_7();
          OUTLINED_FUNCTION_70();
          v5 = &gLogCategory_APAudioEngineBuffered;
          v6 = "void bufferedAudioEngine_hoseFlushWithinSampleRangeCallbackCompletionHandlerInternal(void *)";
          v10 = v4;
          v11 = v9;
          v8 = "BAE [%{ptr}] %s[0x%04X] FlushWithinSampleRange SUCCESS for hose [%{ptr}] (%@) flushPendingCount = %d\n";
          goto LABEL_19;
        }
      }
    }

    else if (gLogCategory_APAudioEngineBuffered <= 90)
    {
      if (gLogCategory_APAudioEngineBuffered != -1 || (result = OUTLINED_FUNCTION_4_3(&gLogCategory_APAudioEngineBuffered), result))
      {
        if (*v1)
        {
          CMBaseObjectGetDerivedStorage();
        }

        OUTLINED_FUNCTION_4_16();
        goto LABEL_15;
      }
    }
  }

  *v1[11] = 0;
  return result;
}

void bufferedAudioEngine_setRateAndAnchorTimeInternal(uint64_t a1)
{
  OUTLINED_FUNCTION_44(a1);
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  OUTLINED_FUNCTION_54(MEMORY[0x277CC0898]);
  CMBaseObjectGetDerivedStorage();
  OUTLINED_FUNCTION_29_0();
  if (v30 ^ v31 | v29 && (v5 != -1 || OUTLINED_FUNCTION_4(&gLogCategory_APAudioEngineBuffered)))
  {
    v6 = *v1;
    if (*v1)
    {
      v2 = (CMBaseObjectGetDerivedStorage() + 392);
    }

    else
    {
      v2 = "";
    }

    v3 = *(DerivedStorage + 530);
    if (*(DerivedStorage + 840))
    {
      v7 = "TRUE";
    }

    else
    {
      v7 = "FALSE";
    }

    if (*(DerivedStorage + 881))
    {
      v8 = "TRUE";
    }

    else
    {
      v8 = "FALSE";
    }

    v9 = *(DerivedStorage + 888);
    v10 = *(DerivedStorage + 896);
    v11 = v1[1];
    CString = bufferedAudioEngine_playbackStateGetCString(*(DerivedStorage + 884));
    v165 = v10;
    v167 = v11;
    v163 = v9;
    v158 = v7;
    v161 = v8;
    v154 = v2;
    v156 = v3;
    v152 = v6;
    OUTLINED_FUNCTION_2_0();
    LogPrintF(v12, v13, v14, v15);
  }

  if (*(DerivedStorage + 536))
  {
    v16 = 0;
  }

  else
  {
    v16 = -72094;
  }

  if (*DerivedStorage)
  {
    v17 = -15487;
  }

  else
  {
    v17 = v16;
  }

  if (v17)
  {
    v18 = OUTLINED_FUNCTION_36_0();
    bufferedAudioEngine_callSetRateAndAnchorTimeClientCompletionCallback(v19, 0xFFFFBB52, MEMORY[0x277CC0898], MEMORY[0x277CC0898], 0, v20, v21, v18);
LABEL_25:
    APSLogErrorAt();
    goto LABEL_149;
  }

  if (*(DerivedStorage + 816))
  {
    OUTLINED_FUNCTION_55((DerivedStorage + 804));
    OUTLINED_FUNCTION_117();
    CMTimeSubtract(&v173, &lhs, &rhs);
  }

  else
  {
    OUTLINED_FUNCTION_54(MEMORY[0x277CC08F0]);
  }

  CMBaseObjectGetDerivedStorage();
  v22 = *(v1 + 1);
  if (v22 == 1.0)
  {
    *(DerivedStorage + 882) = 0;
    v23 = *(DerivedStorage + 884);
    if ((v23 - 3) < 2)
    {
      OUTLINED_FUNCTION_29_0();
      if (v30 ^ v31 | v29 && (v24 != -1 || OUTLINED_FUNCTION_4(&gLogCategory_APAudioEngineBuffered)))
      {
        if (*v1)
        {
          CMBaseObjectGetDerivedStorage();
        }

        OUTLINED_FUNCTION_17_3();
        OUTLINED_FUNCTION_2_0();
        LogPrintF(v38, v39, v40, v41);
      }

      v42 = *v1;
      v43 = CMBaseObjectGetDerivedStorage();
      HostTimeClock = CMClockGetHostTimeClock();
      CMClockGetTime(&lhs, HostTimeClock);
      *(v43 + 1680) = lhs;
      *(v43 + 1704) = *(v43 + 648);
      v45 = CMBaseObjectGetDerivedStorage();
      OUTLINED_FUNCTION_55((v45 + 756));
      OUTLINED_FUNCTION_117();
      CMTimeSubtract(&time, &lhs, &rhs);
      Seconds = CMTimeGetSeconds(&time);
      *(v43 + 1708) = Seconds;
      bufferedAudioEngine_getStreamInfoForStartup(v42, (v43 + 1712), (v43 + 1716), (v43 + 1720), (v43 + 1724), (v43 + 1730), (v43 + 1726), (v43 + 1728));
      OUTLINED_FUNCTION_9_5();
      kdebug_trace();
      v47 = LogCategoryCopyOSLogHandle();
      OUTLINED_FUNCTION_98();
      if (CUObfuscatedPtr() && os_signpost_enabled(v3))
      {
        LOWORD(lhs.value) = 0;
        OUTLINED_FUNCTION_97();
        _os_signpost_emit_with_name_impl(v48, v49, v50, v51, v52, v53, v54, 2u);
      }

      if (v47)
      {
        os_release(v47);
      }

      goto LABEL_100;
    }
  }

  else
  {
    v23 = *(DerivedStorage + 884);
    if (v22 == 0.0 && (v23 - 3) < 2)
    {
      OUTLINED_FUNCTION_29_0();
      if (v30 ^ v31 | v29 && (v32 != -1 || OUTLINED_FUNCTION_4(&gLogCategory_APAudioEngineBuffered)))
      {
        v33 = *v1;
        if (*v1)
        {
          v34 = (CMBaseObjectGetDerivedStorage() + 392);
        }

        else
        {
          v34 = "";
        }

        v156 = *(DerivedStorage + 530);
        v158 = bufferedAudioEngine_playbackStateGetCString(*(DerivedStorage + 884));
        v152 = v33;
        v154 = v34;
        OUTLINED_FUNCTION_2_0();
        LogPrintF(v60, v61, v62, v63);
      }

      OUTLINED_FUNCTION_36_0();
      OUTLINED_FUNCTION_7_8(v64, v65, v66, v67, v68, v69, v70, v71, v152, v154, v156, v158, v161, v163, v165, v167, CString, v171, *&v173.value, v173.epoch);
      v76 = MEMORY[0x277CC0898];
      p_lhs = &lhs;
      v78 = 0;
      goto LABEL_126;
    }
  }

  if ((v23 - 5) <= 1)
  {
    if (v22 == 0.0)
    {
      OUTLINED_FUNCTION_29_0();
      if (v30 ^ v31 | v29 && (v26 != -1 || OUTLINED_FUNCTION_4(&gLogCategory_APAudioEngineBuffered)))
      {
        v27 = *v1;
        if (*v1)
        {
          v28 = (CMBaseObjectGetDerivedStorage() + 392);
        }

        else
        {
          v28 = "";
        }

        v79 = *(DerivedStorage + 530);
        v80 = *(DerivedStorage + 888);
        lhs = v173;
        v163 = CMTimeGetSeconds(&lhs);
        v161 = 4294949716;
        v158 = v80;
        v154 = v28;
        v156 = v79;
        v152 = v27;
        OUTLINED_FUNCTION_2_0();
        LogPrintF(v81, v82, v83, v84);
      }

      OUTLINED_FUNCTION_99();
      OUTLINED_FUNCTION_7_8(v85, v86, v87, v88, v89, v90, v91, v92, v152, v154, v156, v158, v161, v163, v165, v167, CString, v171, *&v173.value, v173.epoch);
      v93 = MEMORY[0x277CC0898];
      bufferedAudioEngine_callSetRateAndAnchorTimeClientCompletionCallback(v94, 0xFFFFBB54, &lhs.value, MEMORY[0x277CC0898], 0, v95, v96, v97);
      OUTLINED_FUNCTION_36_0();
      OUTLINED_FUNCTION_7_8(v98, v99, v100, v101, v102, v103, v104, v105, v153, v155, v157, v159, v162, v164, v166, v168, v170, v172, *&v173.value, v173.epoch);
      bufferedAudioEngine_callSetRateAndAnchorTimeClientCompletionCallback(v106, 0, &lhs.value, v93, 0, v107, v108, v109);
      *(DerivedStorage + 840) = 0;
      *(DerivedStorage + 896) = 0xBFF0000000000000;
      *(DerivedStorage + 952) = 0u;
      bufferedAudioEngine_updatePlaybackState(*v1, 3);
      goto LABEL_149;
    }

LABEL_63:
    if (v22 == 1.0)
    {
      OUTLINED_FUNCTION_77();
      if (v30 ^ v31 | v29)
      {
        OUTLINED_FUNCTION_8_8();
        if (!v29 || _LogCategory_Initialize())
        {
          if (*v1)
          {
            CMBaseObjectGetDerivedStorage();
          }

          OUTLINED_FUNCTION_17_3();
          LogPrintF(&gLogCategory_APAudioEngineBuffered, "void bufferedAudioEngine_setRateAndAnchorTimeInternal(void *)", (v2 + 40), "BAE [%{ptr}] %s[0x%04X] ### ERROR: The requested rate is 1.0, but the pending rate is already 1.0\n");
        }
      }

      OUTLINED_FUNCTION_36_0();
      OUTLINED_FUNCTION_7_8(v110, v111, v112, v113, v114, v115, v116, v117, v152, v154, v156, v158, v161, v163, v165, v167, CString, v171, *&v173.value, v173.epoch);
      v76 = MEMORY[0x277CC0898];
      p_lhs = &lhs;
      v78 = -17581;
LABEL_126:
      bufferedAudioEngine_callSetRateAndAnchorTimeClientCompletionCallback(v72, v78, p_lhs, v76, 0, v73, v74, v75);
      goto LABEL_149;
    }

    goto LABEL_86;
  }

  if (v23 != 8)
  {
    if (v23 != 7)
    {
      goto LABEL_86;
    }

    if (v22 == 0.0)
    {
      OUTLINED_FUNCTION_29_0();
      if (v30 ^ v31 | v29 && (v35 != -1 || OUTLINED_FUNCTION_4(&gLogCategory_APAudioEngineBuffered)))
      {
        if (*v1)
        {
          CMBaseObjectGetDerivedStorage();
        }

        OUTLINED_FUNCTION_17_3();
        OUTLINED_FUNCTION_2_0();
        LogPrintF(v118, v119, v120, v121);
      }

      *(DerivedStorage + 882) = 1;
      OUTLINED_FUNCTION_99();
      OUTLINED_FUNCTION_7_8(v122, v123, v124, v125, v126, v127, v128, v129, v152, v154, v156, v158, v161, v163, v165, v167, CString, v171, *&v173.value, v173.epoch);
      bufferedAudioEngine_callSetRateAndAnchorTimeClientCompletionCallback(v130, 0xFFFFBB54, &lhs.value, MEMORY[0x277CC0898], 0, v131, v132, v133);
      *(DerivedStorage + 896) = v1[1];
      *(DerivedStorage + 952) = *(v1 + 4);
      goto LABEL_149;
    }

    goto LABEL_63;
  }

  if (v22 == 1.0)
  {
    OUTLINED_FUNCTION_77();
    if (v30 ^ v31 | v29)
    {
      OUTLINED_FUNCTION_8_8();
      if (!v29 || _LogCategory_Initialize())
      {
        if (*v1)
        {
          CMBaseObjectGetDerivedStorage();
        }

        OUTLINED_FUNCTION_17_3();
        LogPrintF(&gLogCategory_APAudioEngineBuffered, "void bufferedAudioEngine_setRateAndAnchorTimeInternal(void *)", (v2 + 40), "BAE [%{ptr}] %s[0x%04X] ### ERROR: The requested rate is 1.0, but the current rate is already 1.0\n");
      }
    }

    v75 = OUTLINED_FUNCTION_36_0();
    p_lhs = MEMORY[0x277CC0898];
    v78 = -17581;
    v76 = MEMORY[0x277CC0898];
    goto LABEL_126;
  }

  if (v22 != 0.0)
  {
LABEL_86:
    OUTLINED_FUNCTION_77();
    if (v30 ^ v31 | v29)
    {
      OUTLINED_FUNCTION_8_8();
      if (!v29 || _LogCategory_Initialize())
      {
        v37 = *v1;
        if (*v1)
        {
          CMBaseObjectGetDerivedStorage();
        }

        OUTLINED_FUNCTION_114();
        LogPrintF(&gLogCategory_APAudioEngineBuffered, "void bufferedAudioEngine_setRateAndAnchorTimeInternal(void *)", (v2 + 40), "BAE [%{ptr}] %s[0x%04X] ### ERROR: Unexpected set rate scenario. Current rate = %f Pending rate = %f Requested rate = %f\n", v37);
      }
    }

    goto LABEL_149;
  }

  OUTLINED_FUNCTION_29_0();
  if (v30 ^ v31 | v29 && (v36 != -1 || OUTLINED_FUNCTION_4(&gLogCategory_APAudioEngineBuffered)))
  {
    if (*v1)
    {
      CMBaseObjectGetDerivedStorage();
    }

    OUTLINED_FUNCTION_17_3();
    OUTLINED_FUNCTION_2_0();
    LogPrintF(v148, v149, v150, v151);
  }

  if (*(DerivedStorage + 1504))
  {
    mach_absolute_time();
    *(DerivedStorage + 1512) += UpTicksToMilliseconds();
    *(DerivedStorage + 1504) = 0;
  }

LABEL_100:
  *(DerivedStorage + 896) = v1[1];
  v55 = *(v1 + 5);
  *(DerivedStorage + 920) = v1[7];
  *(DerivedStorage + 904) = v55;
  *(DerivedStorage + 952) = *(v1 + 4);
  if ((*(DerivedStorage + 744) & 1) == 0 && (*(v1 + 28) & 1) != 0 && *(v1 + 1) != 0.0)
  {
    v56 = *(v1 + 1);
    *(DerivedStorage + 748) = v1[4];
    *(DerivedStorage + 732) = v56;
    OUTLINED_FUNCTION_29_0();
    if (v30 ^ v31 | v29)
    {
      if (v57 != -1 || OUTLINED_FUNCTION_4(&gLogCategory_APAudioEngineBuffered))
      {
        v58 = *v1;
        if (*v1)
        {
          v59 = (CMBaseObjectGetDerivedStorage() + 392);
        }

        else
        {
          v59 = "";
        }

        v134 = *(DerivedStorage + 530);
        lhs = *(DerivedStorage + 732);
        v160 = CMTimeGetSeconds(&lhs);
        OUTLINED_FUNCTION_2_0();
        LogPrintF(v135, v136, v137, v138, v58, v59, v134, *&v160);
      }
    }
  }

  if (v1[10])
  {
    Value = FigCFDictionaryGetValue();
    v140 = *(DerivedStorage + 1488);
    *(DerivedStorage + 1488) = Value;
    if (Value)
    {
      CFRetain(Value);
    }

    if (v140)
    {
      CFRelease(v140);
    }
  }

  v141 = *v1;
  if (*(DerivedStorage + 896) == 0.0)
  {
    bufferedAudioEngine_updatePlaybackState(v141, 2);
    if (bufferedAudioEngine_handleSetRateToZero(*v1))
    {
      goto LABEL_25;
    }
  }

  else
  {
    bufferedAudioEngine_wakeUpHosesAndAudioTimer(v141);
    bufferedAudioEngine_updatePlaybackState(*v1, 5);
    if (*(DerivedStorage + 592))
    {
      if (bufferedAudioEngine_startPlaybackIfNecessary(*v1, 0))
      {
        goto LABEL_25;
      }
    }

    else
    {
      OUTLINED_FUNCTION_29_0();
      if (v30 ^ v31 | v29 && (v142 != -1 || OUTLINED_FUNCTION_4(&gLogCategory_APAudioEngineBuffered)))
      {
        if (*v1)
        {
          CMBaseObjectGetDerivedStorage();
        }

        OUTLINED_FUNCTION_17_3();
        OUTLINED_FUNCTION_2_0();
        LogPrintF(v143, v144, v145, v146);
      }

      bufferedAudioEngine_updatePlaybackState(*v1, 6);
      if (bufferedAudioEngine_handleSetRateToOne(*v1))
      {
        goto LABEL_25;
      }
    }
  }

LABEL_149:
  bufferedAudioEngine_updateDataProcessingTargetQueueInternal(*v1);
  if (*v1)
  {
    CFRelease(*v1);
  }

  v147 = v1[10];
  if (v147)
  {
    CFRelease(v147);
  }

  free(v1);
}

uint64_t bufferedAudioEngine_setEndOfSiriTTSUtteranceMediaTimeInternal(void *a1)
{
  v64 = *MEMORY[0x277D85DE8];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v3 = *MEMORY[0x277CC0898];
  *&v61.value = *MEMORY[0x277CC0898];
  v4 = *(MEMORY[0x277CC0898] + 16);
  v59 = 0;
  blockBufferOut = 0;
  v5 = a1[1];
  v61.epoch = v4;
  value = v5;
  timescale = *(a1 + 4);
  if (*DerivedStorage)
  {
    goto LABEL_8;
  }

  v6 = *(a1 + 5);
  if ((v6 & 1) == 0 || (v7 = DerivedStorage, v41 = v3, v8 = a1[3], time1.value = a1[1], time1.timescale = *(a1 + 4), time1.flags = v6, time1.epoch = v8, OUTLINED_FUNCTION_120(MEMORY[0x277CC08F0]), CMTimeCompare(&time1, &time2) <= 0))
  {
    APSLogErrorAt();
    v14 = 4294951815;
    goto LABEL_9;
  }

  time1 = *(v7 + 756);
  OUTLINED_FUNCTION_120((v7 + 780));
  CMTimeSubtract(&v61, &time1, &time2);
  FramesPerPacket = APSAudioFormatDescriptionGetFramesPerPacket();
  APSAudioFormatDescriptionGetSampleRate();
  CMTimeMake(&time2, FramesPerPacket, v10);
  lhs.value = value;
  lhs.timescale = timescale;
  lhs.flags = v6;
  lhs.epoch = v8;
  CMTimeSubtract(&time1, &lhs, &time2);
  value = time1.value;
  timescale = time1.timescale;
  if (*(v7 + 221) != 1)
  {
    OUTLINED_FUNCTION_35_0();
    OUTLINED_FUNCTION_118();
    if (CMTimeCompare(&time1, &time2) < 1)
    {
      if (gLogCategory_APAudioEngineBuffered <= 90 && (gLogCategory_APAudioEngineBuffered != -1 || OUTLINED_FUNCTION_4_3(&gLogCategory_APAudioEngineBuffered)))
      {
        v16 = *a1;
        if (*a1)
        {
          v17 = (CMBaseObjectGetDerivedStorage() + 392);
        }

        else
        {
          v17 = "";
        }

        v40 = v17;
        v18 = *(v7 + 265);
        OUTLINED_FUNCTION_35_0();
        Seconds = CMTimeGetSeconds(&time1);
        OUTLINED_FUNCTION_119();
        v39 = CMTimeGetSeconds(&time1);
        OUTLINED_FUNCTION_2_1();
        LogPrintF(v20, v21, v22, v23, v16, v40, v18, *&Seconds, *&v39);
      }

      v24 = CMBlockBufferCreateEmpty(*MEMORY[0x277CBECE8], 0, 0, &blockBufferOut);
      if (v24)
      {
        v14 = v24;
      }

      else
      {
        v25 = *(v7 + 77);
        OUTLINED_FUNCTION_9_5();
        EncodeMessageBackingSize = bufferedAudioEngine_getEncodeMessageBackingSize(v26, v27, v28, v29);
        NextFreeBacking = APMessageRingBufferedGetNextFreeBacking(v25, EncodeMessageBackingSize);
        if (!NextFreeBacking)
        {
          APSLogErrorAt();
          v14 = 4294895201;
          goto LABEL_9;
        }

        v32 = NextFreeBacking;
        v61 = *(v7 + 756);
        APSAudioFormatDescriptionGetSampleRate();
        OUTLINED_FUNCTION_118();
        CMTimeConvertScale(&time1, &time2, v33, kCMTimeRoundingMethod_RoundHalfAwayFromZero);
        v61 = time1;
        CryptorIDForCryptor = bufferedAudioEngine_getCryptorIDForCryptor(*(v7 + 153));
        MagicCookieIDForMagicCookieData = bufferedAudioEngine_getMagicCookieIDForMagicCookieData(*(v7 + 131));
        v36 = *a1;
        v42[0] = 0;
        v42[1] = 0;
        v43 = 1;
        v44 = CryptorIDForCryptor;
        v45 = MagicCookieIDForMagicCookieData;
        v46 = 0;
        v47 = v41;
        v48 = v4;
        v49 = v41;
        v50 = v4;
        v51 = 0u;
        memset(v52, 0, sizeof(v52));
        v53 = v41;
        v54 = v4;
        v55 = 0;
        time1 = v61;
        bufferedAudioEngine_encodeMessage(v36, v32, &time1.value, v42, blockBufferOut, &v59);
        OUTLINED_FUNCTION_119();
        v14 = bufferedAudioEngine_enqueueMessageForSending(v37, v38, &time1.value, MEMORY[0x277CC08F0]);
        if (!v14)
        {
          goto LABEL_9;
        }
      }

      APSLogErrorAt();
      goto LABEL_9;
    }
  }

  OUTLINED_FUNCTION_35_0();
  v12 = CMTimeCopyAsDictionary(&time1, v11);
  if (v12)
  {
    v13 = v12;
    CFArrayAppendValue(*(v7 + 138), v12);
    CFRelease(v13);
LABEL_8:
    v14 = 0;
    goto LABEL_9;
  }

  APSLogErrorAt();
  v14 = 4294951816;
LABEL_9:
  if (blockBufferOut)
  {
    CFRelease(blockBufferOut);
  }

  if (v59)
  {
    CFRelease(v59);
  }

  return v14;
}

uint64_t bufferedAudioEngine_applyVolumeFadeInternal(void *a1)
{
  v40 = *MEMORY[0x277D85DE8];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v4 = *(a1 + 2);
  v38 = *(a1 + 12);
  v39 = *(a1 + 5);
  if (*DerivedStorage)
  {
    return 0;
  }

  v5 = DerivedStorage;
  if (!*(DerivedStorage + 1160))
  {
    return 0;
  }

  v36 = *(a1 + 6);
  if ((v36 & 1) == 0)
  {
    APSLogErrorAt();
    return 4294951815;
  }

  if ((v4 - 1) < 2)
  {
    v6 = *(DerivedStorage + 640);
    if (v6)
    {
      v35 = *(a1 + 28);
      do
      {
        OUTLINED_FUNCTION_69();
        if (v11)
        {
          if (v8 ^ v9 | v7 && (v10 != -1 || OUTLINED_FUNCTION_4(&gLogCategory_APAudioEngineBuffered)))
          {
            v12 = *a1;
            if (*a1)
            {
              CMBaseObjectGetDerivedStorage();
            }

            OUTLINED_FUNCTION_26_1();
            OUTLINED_FUNCTION_2_0();
            LogPrintF(v15, v16, v17, "BAE [%{ptr}] %s[0x%04X] Volume fade request: skipping hose [%{ptr}] isLocal (%s)\n", v12);
          }
        }

        else
        {
          if (v8 ^ v9 | v7 && (v10 != -1 || OUTLINED_FUNCTION_4(&gLogCategory_APAudioEngineBuffered)))
          {
            v13 = *a1;
            if (*a1)
            {
              v14 = (CMBaseObjectGetDerivedStorage() + 392);
            }

            else
            {
              v14 = "";
            }

            v18 = *(v5 + 530);
            v19 = APSGetVolumeFadeTypeName();
            time.value = v38;
            time.timescale = v39;
            time.flags = v36;
            time.epoch = v35;
            Seconds = CMTimeGetSeconds(&time);
            v34 = v6[2];
            v33 = Seconds;
            OUTLINED_FUNCTION_2_0();
            LogPrintF(v21, v22, v23, "BAE [%{ptr}] %s[0x%04X] Sending volume fade type %s with duration %1.3f to hose [%{ptr}]\n", v13, v14, v18, v19, *&v33, v34);
          }

          v24 = v6[2];
          ProtocolID = APSAudioProtocolDriverHoseControlProtocolGetProtocolID();
          v26 = OUTLINED_FUNCTION_111(ProtocolID);
          if (v26)
          {
            v27 = *(v26 + 16);
            if (v27)
            {
              v28 = *(v27 + 48);
              if (v28)
              {
                time.value = v38;
                time.timescale = v39;
                time.flags = v36;
                time.epoch = v35;
                v28(v24, v4, &time);
              }
            }
          }
        }

        v6 = *v6;
      }

      while (v6);
    }

    return 0;
  }

  if (gLogCategory_APAudioEngineBuffered <= 90)
  {
    OUTLINED_FUNCTION_8_8();
    if (!v7 || _LogCategory_Initialize())
    {
      v30 = *a1;
      if (v30)
      {
        v31 = (CMBaseObjectGetDerivedStorage() + 392);
      }

      else
      {
        v31 = "";
      }

      LogPrintF(&gLogCategory_APAudioEngineBuffered, "OSStatus bufferedAudioEngine_applyVolumeFadeInternal(void *)", (v1 + 40), "BAE [%{ptr}] %s[0x%04X] ### Invalid volume fade type received: %d\n", v30, v31, *(v5 + 530), v4);
    }
  }

  v29 = 4294951815;
  APSLogErrorAt();
  return v29;
}

void bufferedAudioEngine_handleClockLockStateChangedInternal(const void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a1)
  {
    v3 = DerivedStorage;
    if (*(DerivedStorage + 328) && !*DerivedStorage)
    {
      v4 = APSGetFBOPropertyInt64();
      if (gLogCategory_APAudioEngineBuffered <= 50 && (gLogCategory_APAudioEngineBuffered != -1 || OUTLINED_FUNCTION_4(&gLogCategory_APAudioEngineBuffered)))
      {
        CMBaseObjectGetDerivedStorage();
        OUTLINED_FUNCTION_28();
        OUTLINED_FUNCTION_2_0();
        LogPrintF(v5, v6, v7, v8);
      }

      if (v4 && *(v3 + 840) && *(v3 + 884) == 8 && *(v3 + 881))
      {
        CMBaseObjectGetDerivedStorage();
        if (gLogCategory_APAudioEngineBuffered <= 50 && (gLogCategory_APAudioEngineBuffered != -1 || OUTLINED_FUNCTION_4(&gLogCategory_APAudioEngineBuffered)))
        {
          CMBaseObjectGetDerivedStorage();
          OUTLINED_FUNCTION_1_26();
          OUTLINED_FUNCTION_2_0();
          LogPrintF(v9, v10, v11, v12);
        }

        bufferedAudioEngine_handleSetRateToOne_sendAnchorToAllHoses(a1);
      }
    }

    CFRelease(a1);
  }
}

uint64_t APAudioEngineBufferedCreate_cold_6()
{
  OUTLINED_FUNCTION_34_0();
  if (v0)
  {
    CMBaseObjectGetDerivedStorage();
  }

  OUTLINED_FUNCTION_18_5();
  OUTLINED_FUNCTION_2_0();
  return LogPrintF(v1, v2, v3, v4);
}

uint64_t APAudioEngineBufferedCreate_cold_14()
{
  OUTLINED_FUNCTION_34_0();
  if (v0)
  {
    CMBaseObjectGetDerivedStorage();
  }

  OUTLINED_FUNCTION_13_6();
  OUTLINED_FUNCTION_2_0();
  return LogPrintF(v1, v2, v3, v4);
}

uint64_t APAudioEngineBufferedCreate_cold_23()
{
  OUTLINED_FUNCTION_34_0();
  if (v0)
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    v9 = (DerivedStorage + 392);
  }

  else
  {
    v9 = "";
  }

  v18 = OUTLINED_FUNCTION_5_11(DerivedStorage, v2, v3, v4, v5, v6, v7, v8, v15, v16, v17, v19, v20, v21);
  OUTLINED_FUNCTION_2_0();
  return LogPrintF(v10, v11, v12, v13, v0, v9, *&v18);
}

uint64_t APAudioEngineBufferedCreate_cold_24(uint64_t *a1)
{
  v1 = *a1;
  if (*a1)
  {
    v2 = (CMBaseObjectGetDerivedStorage() + 392);
  }

  else
  {
    v2 = "";
  }

  v8 = v2;
  OUTLINED_FUNCTION_3();
  return LogPrintF(v3, v4, v5, v6, v1, v8);
}

uint64_t APAudioEngineBufferedCreate_cold_26(uint64_t *a1)
{
  v1 = *a1;
  if (*a1)
  {
    v2 = (CMBaseObjectGetDerivedStorage() + 392);
  }

  else
  {
    v2 = "";
  }

  v8 = v2;
  OUTLINED_FUNCTION_3();
  return LogPrintF(v3, v4, v5, v6, v1, v8);
}

uint64_t APAudioEngineBufferedCreate_cold_28(uint64_t *a1)
{
  v1 = *a1;
  if (*a1)
  {
    v2 = (CMBaseObjectGetDerivedStorage() + 392);
  }

  else
  {
    v2 = "";
  }

  v8 = v2;
  OUTLINED_FUNCTION_2_0();
  return LogPrintF(v3, v4, v5, v6, v1, v8);
}

uint64_t APAudioEngineBufferedCreate_cold_34(_DWORD *a1)
{
  OUTLINED_FUNCTION_17();
  v2 = APSLogErrorAt();
  result = OUTLINED_FUNCTION_29(v2, "Failed to allocate memory for callbackNotification queue");
  *a1 = result;
  return result;
}

uint64_t APAudioEngineBufferedCreate_cold_35(_DWORD *a1)
{
  OUTLINED_FUNCTION_17();
  v2 = APSLogErrorAt();
  result = OUTLINED_FUNCTION_29(v2, "Failed to allocate memory for notification queue");
  *a1 = result;
  return result;
}

uint64_t APAudioEngineBufferedCreate_cold_36(_DWORD *a1)
{
  OUTLINED_FUNCTION_17();
  v2 = APSLogErrorAt();
  result = OUTLINED_FUNCTION_29(v2, "Failed to allocate memory for dataProcessing queue");
  *a1 = result;
  return result;
}

uint64_t bufferedAudioEngine_updateStartupConfiguration_cold_1(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_27();
  if (v6)
  {
    v7 = (CMBaseObjectGetDerivedStorage() + 392);
  }

  else
  {
    v7 = "";
  }

  v14 = *v4;
  v13 = v7;
  OUTLINED_FUNCTION_2_0();
  return LogPrintF(v8, v9, v10, v11, v3, v13, a3, v14);
}

uint64_t bufferedAudioEngine_updateStartupConfiguration_cold_2(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_27();
  if (v6)
  {
    v7 = (CMBaseObjectGetDerivedStorage() + 392);
  }

  else
  {
    v7 = "";
  }

  v14 = *v4;
  v13 = v7;
  OUTLINED_FUNCTION_2_0();
  return LogPrintF(v8, v9, v10, v11, v3, v13, a3, v14);
}

uint64_t bufferedAudioEngine_Finalize_cold_1(uint64_t a1)
{
  if (a1)
  {
    v2 = (CMBaseObjectGetDerivedStorage() + 392);
  }

  else
  {
    v2 = "";
  }

  v8 = v2;
  OUTLINED_FUNCTION_2_0();
  return LogPrintF(v3, v4, v5, v6, a1, v8);
}

uint64_t bufferedAudioEngine_CopyProperty_cold_1()
{
  OUTLINED_FUNCTION_20_2();
  if (v2)
  {
    v3 = (CMBaseObjectGetDerivedStorage() + 392);
  }

  else
  {
    v3 = "";
  }

  v9 = v3;
  OUTLINED_FUNCTION_3();
  return LogPrintF(v4, v5, v6, v7, v0, v9, "OSStatus bufferedAudioEngine_CopyProperty(CMBaseObjectRef, CFStringRef, CFAllocatorRef, void *)", v1);
}

uint64_t bufferedAudioEngine_SetProperty_cold_1()
{
  OUTLINED_FUNCTION_20_2();
  if (v2)
  {
    v3 = (CMBaseObjectGetDerivedStorage() + 392);
  }

  else
  {
    v3 = "";
  }

  v9 = v3;
  OUTLINED_FUNCTION_3();
  return LogPrintF(v4, v5, v6, v7, v0, v9, "OSStatus bufferedAudioEngine_SetProperty(CMBaseObjectRef, CFStringRef, CFTypeRef)", v1);
}

uint64_t bufferedAudioEngine_invalidateInternal_cold_1(void *a1, uint64_t a2, uint64_t a3)
{
  if (*a1)
  {
    CMBaseObjectGetDerivedStorage();
  }

  return OUTLINED_FUNCTION_6(&gLogCategory_APAudioEngineBuffered, "OSStatus bufferedAudioEngine_invalidateInternal(void *)", a3, "BAE [%{ptr}] %sInvalidating...");
}

uint64_t bufferedAudioEngine_removeHose_cold_2(uint64_t result, uint64_t a2, _DWORD *a3)
{
  if (gLogCategory_APAudioEngineBuffered <= 50)
  {
    v5 = result;
    if (gLogCategory_APAudioEngineBuffered != -1 || (result = OUTLINED_FUNCTION_4(&gLogCategory_APAudioEngineBuffered), result))
    {
      if (v5)
      {
        v6 = (CMBaseObjectGetDerivedStorage() + 392);
      }

      else
      {
        v6 = "";
      }

      v11 = v6;
      OUTLINED_FUNCTION_2_0();
      result = LogPrintF(v7, v8, v9, v10, v5, v11, a2);
    }
  }

  *a3 = 0;
  return result;
}

uint64_t bufferedAudioEngine_removeHose_cold_3()
{
  OUTLINED_FUNCTION_3_2();
  if (v0)
  {
    CMBaseObjectGetDerivedStorage();
  }

  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_2_0();
  return LogPrintF(v1, v2, v3, v4);
}

uint64_t bufferedAudioEngine_tearDownResumedStateAndStructuresInternal_cold_1()
{
  OUTLINED_FUNCTION_3_2();
  if (v1)
  {
    CMBaseObjectGetDerivedStorage();
  }

  OUTLINED_FUNCTION_114();
  OUTLINED_FUNCTION_2_0();
  return LogPrintF(v2, v3, v4, v5, v0);
}

void bufferedAudioEngine_tearDownResumedStateAndStructuresInternal_cold_2(uint64_t a1, _DWORD *a2, void *a3)
{
  v4 = APSThreadSafeDictionaryCopyMutableDictionary();
  v5 = FigCFDictionaryCopyArrayOfValues();
  Count = CFArrayGetCount(v5);
  if (Count > 0)
  {
    v7 = Count;
    for (i = 0; i != v7; ++i)
    {
      CFArrayGetValueAtIndex(v5, i);
      v9 = APSThreadSafeDictionaryCopyMutableDictionary();
      if (!v9)
      {
        break;
      }

      v10 = v9;
      if (FigCFDictionaryGetInt64IfPresent())
      {
        FigCFDictionaryGetInt32IfPresent();
        mach_absolute_time();
        UpTicksToSeconds();
        FigCFDictionarySetInt32();
        CFDictionaryRemoveValue(v10, @"AudioStreamLastStartTime");
      }

      CFArrayAppendValue(*(a1 + 1376), v10);
      CFRelease(v10);
    }
  }

  if (v5)
  {
    CFRelease(v5);
  }

  if (v4)
  {
    CFRelease(v4);
  }
}

uint64_t bufferedAudioEngine_endpointStreamActiveConfigurationDidBecomeInvalidNotification_cold_1()
{
  OUTLINED_FUNCTION_20_2();
  if (v0)
  {
    CMBaseObjectGetDerivedStorage();
  }

  OUTLINED_FUNCTION_42_0();
  OUTLINED_FUNCTION_2_1();
  return LogPrintF(v1, v2, v3, v4);
}

uint64_t bufferedAudioEngine_updateCriticalBufferingState_cold_2()
{
  OUTLINED_FUNCTION_48();
  result = APSLogErrorAt();
  if (gLogCategory_APAudioEngineBuffered <= 50)
  {
    if (gLogCategory_APAudioEngineBuffered != -1 || (result = OUTLINED_FUNCTION_4(&gLogCategory_APAudioEngineBuffered), result))
    {
      if (v0)
      {
        CMBaseObjectGetDerivedStorage();
      }

      OUTLINED_FUNCTION_13_6();
      OUTLINED_FUNCTION_2_0();
      return LogPrintF(v2, v3, v4, v5);
    }
  }

  return result;
}

uint64_t bufferedAudioEngine_updateCriticalBufferingState_cold_3(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  result = APSLogErrorAt();
  if (gLogCategory_APAudioEngineBuffered <= 50)
  {
    if (gLogCategory_APAudioEngineBuffered != -1 || (result = OUTLINED_FUNCTION_4(&gLogCategory_APAudioEngineBuffered), result))
    {
      if (a2)
      {
        v6 = (CMBaseObjectGetDerivedStorage() + 392);
      }

      else
      {
        v6 = "";
      }

      v11 = v6;
      OUTLINED_FUNCTION_2_0();
      return LogPrintF(v7, v8, v9, v10, a2, v11, a3);
    }
  }

  return result;
}

uint64_t bufferedAudioEngine_getCurrentRemoteMediaTimeInternal_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_17();
  v2 = APSLogErrorAt();
  result = OUTLINED_FUNCTION_92(v2, "Non-numeric RTP timestamp");
  *a1 = result;
  return result;
}

uint64_t bufferedAudioEngine_getCurrentRemoteMediaTimeInternal_cold_2(_DWORD *a1)
{
  OUTLINED_FUNCTION_17();
  v2 = APSLogErrorAt();
  result = OUTLINED_FUNCTION_92(v2, "Is the timebase running?");
  *a1 = result;
  return result;
}

uint64_t bufferedAudioEngine_getCurrentRemoteMediaTimeInternal_cold_3(_DWORD *a1)
{
  OUTLINED_FUNCTION_17();
  v2 = APSLogErrorAt();
  result = OUTLINED_FUNCTION_92(v2, "Non-existent Remote Media Timebase");
  *a1 = result;
  return result;
}

uint64_t __bufferedAudioEngine_getActiveAudioEngineSet_block_invoke_cold_1(uint64_t a1)
{
  if (*(a1 + 32))
  {
    CMBaseObjectGetDerivedStorage();
  }

  OUTLINED_FUNCTION_42_0();
  OUTLINED_FUNCTION_2_1();
  return LogPrintF(v1, v2, v3, v4);
}

uint64_t __bufferedAudioEngine_getActiveAudioEngineSet_block_invoke_cold_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    v2 = (CMBaseObjectGetDerivedStorage() + 392);
  }

  else
  {
    v2 = "";
  }

  v8 = v2;
  OUTLINED_FUNCTION_2_0();
  return LogPrintF(v3, v4, v5, v6, v1, v8);
}

uint64_t __bufferedAudioEngine_getActiveAudioEngineSet_block_invoke_cold_3(uint64_t a1)
{
  if (*(a1 + 32))
  {
    CMBaseObjectGetDerivedStorage();
  }

  OUTLINED_FUNCTION_42_0();
  OUTLINED_FUNCTION_2_1();
  return LogPrintF(v1, v2, v3, v4);
}

uint64_t __bufferedAudioEngine_getActiveAudioEngineSet_block_invoke_cold_4(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    v2 = (CMBaseObjectGetDerivedStorage() + 392);
  }

  else
  {
    v2 = "";
  }

  v8 = v2;
  OUTLINED_FUNCTION_2_0();
  return LogPrintF(v3, v4, v5, v6, v1, v8);
}

uint64_t bufferedAudioEngine_callSetRateAndAnchorTimeClientCompletionCallbackInternal_cold_1(CMTime *a1, uint64_t a2)
{
  value = a1->value;
  if (a1->value)
  {
    v5 = (CMBaseObjectGetDerivedStorage() + 392);
  }

  else
  {
    v5 = "";
  }

  v6 = *(a2 + 530);
  epoch = a1->epoch;
  timescale = a1->timescale;
  time = a1[1];
  Seconds = CMTimeGetSeconds(&time);
  OUTLINED_FUNCTION_2_0();
  return LogPrintF(v9, v10, v11, v12, value, v5, v6, epoch, timescale, *&Seconds);
}

uint64_t bufferedAudioEngine_handleCryptorKeyUpdated_cold_1()
{
  OUTLINED_FUNCTION_3_2();
  if (v0)
  {
    CMBaseObjectGetDerivedStorage();
  }

  OUTLINED_FUNCTION_21_3();
  OUTLINED_FUNCTION_2_0();
  return LogPrintF(v1, v2, v3, v4);
}

uint64_t bufferedAudioEngine_copyPropertyDispatch_cold_1()
{
  OUTLINED_FUNCTION_20_2();
  if (v0)
  {
    CMBaseObjectGetDerivedStorage();
  }

  OUTLINED_FUNCTION_18_5();
  return OUTLINED_FUNCTION_6(&gLogCategory_APAudioEngineBuffered, "OSStatus bufferedAudioEngine_copyPropertyInternal(FigEndpointStreamAudioEngineRef, CFStringRef, CFAllocatorRef, void *)", v1, "BAE [%{ptr}] %sCopying endpoint stream: %{ptr}\n");
}

uint64_t bufferedAudioEngine_copyPropertyDispatch_cold_2(uint64_t a1)
{
  if (a1)
  {
    v2 = (CMBaseObjectGetDerivedStorage() + 392);
  }

  else
  {
    v2 = "";
  }

  v8 = v2;
  OUTLINED_FUNCTION_2_1();
  return LogPrintF(v3, v4, v5, v6, a1, v8);
}

uint64_t bufferedAudioEngine_copyPropertyDispatch_cold_4(_DWORD *a1)
{
  result = APSLogErrorAt();
  *a1 = -15480;
  return result;
}

uint64_t bufferedAudioEngine_setPropertyDispatch_cold_2()
{
  OUTLINED_FUNCTION_20_2();
  if (v0)
  {
    CMBaseObjectGetDerivedStorage();
  }

  OUTLINED_FUNCTION_42_0();
  return OUTLINED_FUNCTION_6(&gLogCategory_APAudioEngineBuffered, "OSStatus bufferedAudioEngine_setPropertyInternal(FigEndpointStreamAudioEngineRef, CFStringRef, CFTypeRef)", v1, "BAE [%{ptr}] %sSetting clientPID: %@\n");
}

uint64_t bufferedAudioEngine_setPropertyDispatch_cold_5()
{
  OUTLINED_FUNCTION_20_2();
  if (v0)
  {
    CMBaseObjectGetDerivedStorage();
  }

  OUTLINED_FUNCTION_42_0();
  return OUTLINED_FUNCTION_6(&gLogCategory_APAudioEngineBuffered, "OSStatus bufferedAudioEngine_setPropertyInternal(FigEndpointStreamAudioEngineRef, CFStringRef, CFTypeRef)", v1, "BAE [%{ptr}] %sSetting loggingID: %@\n");
}

uint64_t bufferedAudioEngine_setPropertyDispatch_cold_9()
{
  OUTLINED_FUNCTION_20_2();
  if (v0)
  {
    CMBaseObjectGetDerivedStorage();
  }

  OUTLINED_FUNCTION_42_0();
  return OUTLINED_FUNCTION_6(&gLogCategory_APAudioEngineBuffered, "OSStatus bufferedAudioEngine_setPropertyInternal(FigEndpointStreamAudioEngineRef, CFStringRef, CFTypeRef)", v1, "BAE [%{ptr}] %sSetting compressionLatency: %@\n");
}

uint64_t bufferedAudioEngine_audioHoseRegistrarRegisterProtocolDriverHoseLegacyInternal_cold_1()
{
  OUTLINED_FUNCTION_2_19();
  if (v0)
  {
    CMBaseObjectGetDerivedStorage();
  }

  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_2_0();
  return LogPrintF(v1, v2, v3, v4);
}

uint64_t bufferedAudioEngine_audioHoseRegistrarRegisterProtocolDriverHoseLegacyInternal_cold_4()
{
  OUTLINED_FUNCTION_2_19();
  if (v0)
  {
    CMBaseObjectGetDerivedStorage();
  }

  OUTLINED_FUNCTION_78();
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_2_0();
  return LogPrintF(v1, v2, v3, v4);
}

uint64_t bufferedAudioEngine_audioHoseRegistrarRegisterProtocolDriverHoseLegacyInternal_cold_5()
{
  OUTLINED_FUNCTION_2_19();
  if (v0)
  {
    CMBaseObjectGetDerivedStorage();
  }

  OUTLINED_FUNCTION_78();
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_2_0();
  return LogPrintF(v1, v2, v3, v4);
}

uint64_t bufferedAudioEngine_audioHoseRegistrarRegisterProtocolDriverHoseLegacyInternal_cold_6()
{
  OUTLINED_FUNCTION_2_19();
  if (v0)
  {
    CMBaseObjectGetDerivedStorage();
  }

  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_2_0();
  return LogPrintF(v1, v2, v3, v4);
}

uint64_t bufferedAudioEngine_audioHoseRegistrarRegisterProtocolDriverHoseLegacyInternal_cold_7()
{
  OUTLINED_FUNCTION_2_19();
  if (v0)
  {
    CMBaseObjectGetDerivedStorage();
  }

  OUTLINED_FUNCTION_78();
  OUTLINED_FUNCTION_115();
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_2_0();
  return LogPrintF(v1, v2, v3, v4);
}

uint64_t bufferedAudioEngine_audioHoseRegistrarRegisterProtocolDriverHoseLegacyInternal_cold_8()
{
  OUTLINED_FUNCTION_2_19();
  if (v0)
  {
    CMBaseObjectGetDerivedStorage();
  }

  OUTLINED_FUNCTION_115();
  OUTLINED_FUNCTION_26_1();
  OUTLINED_FUNCTION_2_0();
  return LogPrintF(v1, v2, v3, v4, v0);
}

uint64_t bufferedAudioEngine_copyAudioDataBBufDispatchInternal_cold_1()
{
  OUTLINED_FUNCTION_3_2();
  if (v1)
  {
    CMBaseObjectGetDerivedStorage();
  }

  bufferedAudioEngine_getSentBufferLevelTime(v0, &time);
  CMTimeGetSeconds(&time);
  return OUTLINED_FUNCTION_105(&gLogCategory_APAudioEngineBuffered, "OSStatus bufferedAudioEngine_copyAudioDataBBufsUntilRestingInternal(FigEndpointStreamAudioEngineRef, APSEndpointStreamAudioHoseRef, CFMutableArrayRef, Boolean *)", v2, "BAE [%{ptr}] %s[0x%04X] Requesting message at idx %u for hose [%{ptr}]. Bufferlvl %1.3f");
}

uint64_t bufferedAudioEngine_copyAudioDataBBufDispatchInternal_cold_4(_DWORD *a1)
{
  OUTLINED_FUNCTION_17();
  v2 = APSLogErrorAt();
  result = OUTLINED_FUNCTION_92(v2, "No valid message ring on message send.");
  *a1 = result;
  return result;
}

uint64_t bufferedAudioEngine_copyAudioDataBBufDispatchInternal_cold_6()
{
  OUTLINED_FUNCTION_59();
  v1 = v0;
  if (v0)
  {
    CMBaseObjectGetDerivedStorage();
  }

  OUTLINED_FUNCTION_70();
  v8 = v2;
  OUTLINED_FUNCTION_2_0();
  return LogPrintF(v3, v4, v5, v6, v1, v8);
}

void bufferedAudioEngine_copyAudioDataBBufDispatchInternal_cold_7()
{
  if (gLogCategory_APAudioEngineBuffered <= 60)
  {
    OUTLINED_FUNCTION_3_2();
    if (v1 != -1 || _LogCategory_Initialize())
    {
      if (v0)
      {
        CMBaseObjectGetDerivedStorage();
      }

      OUTLINED_FUNCTION_21_3();
      LogPrintF(&gLogCategory_APAudioEngineBuffered, "OSStatus bufferedAudioEngine_copyAudioDataBBufsUntilRestingInternal(FigEndpointStreamAudioEngineRef, APSEndpointStreamAudioHoseRef, CFMutableArrayRef, Boolean *)", 33554492, "BAE [%{ptr}] %s[0x%04X] Hose [%{ptr}] not found while trying to copy audio data.");
    }
  }
}

uint64_t bufferedAudioEngine_copyAudioDataBBufDispatchInternal_cold_8(_DWORD *a1)
{
  OUTLINED_FUNCTION_17();
  v2 = APSLogErrorAt();
  result = OUTLINED_FUNCTION_92(v2, "No valid message ring on message send.");
  *a1 = result;
  return result;
}

uint64_t bufferedAudioEngine_copyAudioDataBBufDispatchInternal_cold_10()
{
  OUTLINED_FUNCTION_3_7();
  result = APSLogErrorAt();
  if (gLogCategory_APAudioEngineBuffered <= 50)
  {
    if (gLogCategory_APAudioEngineBuffered != -1 || (result = OUTLINED_FUNCTION_4(&gLogCategory_APAudioEngineBuffered), result))
    {
      v3 = *v1;
      if (v3)
      {
        v4 = (CMBaseObjectGetDerivedStorage() + 392);
      }

      else
      {
        v4 = "";
      }

      v9 = v4;
      OUTLINED_FUNCTION_2_0();
      result = LogPrintF(v5, v6, v7, v8, v3, v9);
    }
  }

  *v0 = 0;
  return result;
}

uint64_t bufferedAudioEngine_getSampleRateFromTransportAudioFormat_cold_1()
{
  OUTLINED_FUNCTION_7_4();
  APSLogErrorAt();

  return APSSignalErrorAt();
}

uint64_t bufferedAudioEngine_addHose_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_17();
  v2 = APSLogErrorAt();
  result = OUTLINED_FUNCTION_92(v2, "Hose is already registered");
  *a1 = result;
  return result;
}

uint64_t bufferedAudioEngine_addHose_cold_3(_DWORD *a1)
{
  OUTLINED_FUNCTION_17();
  v2 = APSLogErrorAt();
  result = OUTLINED_FUNCTION_29(v2, "Failed to allocate memory for stream on registration");
  *a1 = result;
  return result;
}

uint64_t bufferedAudioEngine_audioHoseRegistrarDeregisterProtocolDriverHoseLegacyInternal_cold_1(void *a1)
{
  if (*a1)
  {
    CMBaseObjectGetDerivedStorage();
  }

  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_2_0();
  return LogPrintF(v1, v2, v3, v4);
}

uint64_t bufferedAudioEngine_audioHoseRegistrarRegisterProtocolDriverHoseInternal_cold_1()
{
  OUTLINED_FUNCTION_2_19();
  if (v0)
  {
    CMBaseObjectGetDerivedStorage();
  }

  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_2_0();
  return LogPrintF(v1, v2, v3, v4);
}

uint64_t bufferedAudioEngine_audioHoseRegistrarRegisterProtocolDriverHoseInternal_cold_11()
{
  OUTLINED_FUNCTION_2_19();
  if (v0)
  {
    CMBaseObjectGetDerivedStorage();
  }

  OUTLINED_FUNCTION_78();
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_2_0();
  return LogPrintF(v1, v2, v3, v4);
}

uint64_t bufferedAudioEngine_audioHoseRegistrarRegisterProtocolDriverHoseInternal_cold_12()
{
  OUTLINED_FUNCTION_2_19();
  if (v0)
  {
    CMBaseObjectGetDerivedStorage();
  }

  OUTLINED_FUNCTION_78();
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_2_0();
  return LogPrintF(v1, v2, v3, v4);
}

uint64_t bufferedAudioEngine_audioHoseRegistrarRegisterProtocolDriverHoseInternal_cold_13()
{
  OUTLINED_FUNCTION_2_19();
  if (v0)
  {
    CMBaseObjectGetDerivedStorage();
  }

  OUTLINED_FUNCTION_78();
  OUTLINED_FUNCTION_115();
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_2_0();
  return LogPrintF(v1, v2, v3, v4);
}

uint64_t bufferedAudioEngine_audioHoseRegistrarRegisterProtocolDriverHoseInternal_cold_14()
{
  OUTLINED_FUNCTION_2_19();
  if (v0)
  {
    CMBaseObjectGetDerivedStorage();
  }

  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_2_0();
  return LogPrintF(v1, v2, v3, v4);
}

uint64_t bufferedAudioEngine_audioHoseRegistrarRegisterProtocolDriverHoseInternal_cold_15()
{
  OUTLINED_FUNCTION_2_19();
  if (v0)
  {
    CMBaseObjectGetDerivedStorage();
  }

  OUTLINED_FUNCTION_115();
  OUTLINED_FUNCTION_26_1();
  OUTLINED_FUNCTION_2_0();
  return LogPrintF(v1, v2, v3, v4, v0);
}

uint64_t bufferedAudioEngine_weakProtocolDriverTickTimer_cold_1()
{
  OUTLINED_FUNCTION_7_4();
  APSLogErrorAt();
  return APSSignalErrorAt();
}

uint64_t bufferedAudioEngine_audioHoseRegistrarDeregisterProtocolDriverHoseInternal_cold_1(void *a1)
{
  if (*a1)
  {
    CMBaseObjectGetDerivedStorage();
  }

  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_2_0();
  return LogPrintF(v1, v2, v3, v4);
}

uint64_t bufferedAudioEngine_Resume_cold_1(uint64_t a1)
{
  if (a1)
  {
    v2 = (CMBaseObjectGetDerivedStorage() + 392);
  }

  else
  {
    v2 = "";
  }

  v8 = v2;
  OUTLINED_FUNCTION_2_0();
  return LogPrintF(v3, v4, v5, v6, a1, v8);
}

void bufferedAudioEngine_Resume_cold_2()
{
  OUTLINED_FUNCTION_48();
  APSLogErrorAt();
  if (*v0)
  {
    CFRelease(*v0);
  }

  if (*v1)
  {
    CFRelease(*v1);
  }

  free(v0);
}

uint64_t bufferedAudioEngine_Suspend_cold_1(uint64_t a1)
{
  if (a1)
  {
    v2 = (CMBaseObjectGetDerivedStorage() + 392);
  }

  else
  {
    v2 = "";
  }

  v8 = v2;
  OUTLINED_FUNCTION_2_0();
  return LogPrintF(v3, v4, v5, v6, a1, v8);
}

void bufferedAudioEngine_Suspend_cold_2()
{
  OUTLINED_FUNCTION_48();
  APSLogErrorAt();
  if (*v0)
  {
    CFRelease(*v0);
  }

  if (*v1)
  {
    CFRelease(*v1);
  }

  free(v0);
}

uint64_t bufferedAudioEngine_SetEndpointStream_cold_1()
{
  OUTLINED_FUNCTION_20_2();
  if (v0)
  {
    CMBaseObjectGetDerivedStorage();
  }

  OUTLINED_FUNCTION_42_0();
  OUTLINED_FUNCTION_2_0();
  return LogPrintF(v1, v2, v3, v4);
}

void bufferedAudioEngine_SetEndpointStream_cold_2()
{
  OUTLINED_FUNCTION_48();
  APSLogErrorAt();
  if (*v0)
  {
    CFRelease(*v0);
  }

  if (*v1)
  {
    CFRelease(*v1);
  }

  free(v0);
}

uint64_t bufferedAudioEngine_Flush_cold_1()
{
  OUTLINED_FUNCTION_20_2();
  if (v0)
  {
    CMBaseObjectGetDerivedStorage();
  }

  OUTLINED_FUNCTION_1_26();
  OUTLINED_FUNCTION_2_0();
  return LogPrintF(v1, v2, v3, v4);
}

uint64_t bufferedAudioEngine_SetRateAndAnchorTime_cold_5()
{
  OUTLINED_FUNCTION_27();
  if (v1)
  {
    CMBaseObjectGetDerivedStorage();
  }

  OUTLINED_FUNCTION_114();
  OUTLINED_FUNCTION_2_0();
  return LogPrintF(v2, v3, v4, v5, v0);
}

uint64_t bufferedAudioEngine_SetEndOfSiriTTSUtteranceMediaTime_cold_1()
{
  OUTLINED_FUNCTION_3_2();
  if (DerivedStorage)
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
  }

  OUTLINED_FUNCTION_5_11(DerivedStorage, v1, v2, v3, v4, v5, v6, v7, v13, v14, v15, v16, v17, v18);
  OUTLINED_FUNCTION_50();
  OUTLINED_FUNCTION_2_0();
  return LogPrintF(v8, v9, v10, v11);
}

uint64_t bufferedAudioEngine_ApplyVolumeFade_cold_1()
{
  OUTLINED_FUNCTION_20_2();
  if (v0)
  {
    CMBaseObjectGetDerivedStorage();
  }

  OUTLINED_FUNCTION_1_26();
  OUTLINED_FUNCTION_2_0();
  return LogPrintF(v1, v2, v3, v4);
}

uint64_t bufferedAudioEngine_resumeInternalStage1_cold_1()
{
  OUTLINED_FUNCTION_34_0();
  if (v0)
  {
    CMBaseObjectGetDerivedStorage();
  }

  OUTLINED_FUNCTION_18_5();
  OUTLINED_FUNCTION_2_0();
  return LogPrintF(v1, v2, v3, v4);
}

void bufferedAudioEngine_resumeInternalStage1_cold_3(uint64_t a1)
{
  OUTLINED_FUNCTION_37(a1);
  APSAudioFormatDescriptionCopyDebugString();
  if (gLogCategory_APAudioEngineBuffered <= 50 && (gLogCategory_APAudioEngineBuffered != -1 || OUTLINED_FUNCTION_4(&gLogCategory_APAudioEngineBuffered)))
  {
    if (*v2)
    {
      CMBaseObjectGetDerivedStorage();
    }

    OUTLINED_FUNCTION_57();
    OUTLINED_FUNCTION_2_0();
    LogPrintF(v3, v4, v5, v6);
  }

  if (*v1)
  {
    CFRelease(*v1);
  }
}

uint64_t bufferedAudioEngine_resumeInternalStage1_cold_4(_DWORD *a1)
{
  result = APSLogErrorAt();
  *a1 = -15481;
  return result;
}

uint64_t bufferedAudioEngine_resumeInternalStage1_cold_7(_DWORD *a1)
{
  result = APSLogErrorAt();
  *a1 = -15481;
  return result;
}

uint64_t bufferedAudioEngine_resumeInternalStage1_cold_8(_DWORD *a1)
{
  result = APSLogErrorAt();
  *a1 = -15481;
  return result;
}

uint64_t bufferedAudioEngine_resumeInternalStage1_cold_9()
{
  OUTLINED_FUNCTION_2_19();
  if (v0)
  {
    CMBaseObjectGetDerivedStorage();
  }

  OUTLINED_FUNCTION_133();
  v10 = v2;
  v9 = v3;
  OUTLINED_FUNCTION_2_0();
  return LogPrintF(v4, v5, v6, v7, v0, v9, v10, v1);
}

uint64_t bufferedAudioEngine_resumeInternalStage1_cold_10(_DWORD *a1)
{
  result = APSLogErrorAt();
  *a1 = -15480;
  return result;
}

uint64_t bufferedAudioEngine_resumeInternalStage1_cold_11()
{
  OUTLINED_FUNCTION_2_19();
  if (v0)
  {
    CMBaseObjectGetDerivedStorage();
  }

  OUTLINED_FUNCTION_133();
  v10 = v2;
  v9 = v3;
  OUTLINED_FUNCTION_2_0();
  return LogPrintF(v4, v5, v6, v7, v0, v9, v10, v1);
}

void bufferedAudioEngine_resumeInternalStage1_cold_14(uint64_t a1)
{
  OUTLINED_FUNCTION_37(a1);
  APSAudioFormatDescriptionListCopyDebugString();
  if (gLogCategory_APAudioEngineBuffered <= 50 && (gLogCategory_APAudioEngineBuffered != -1 || OUTLINED_FUNCTION_4(&gLogCategory_APAudioEngineBuffered)))
  {
    if (v2)
    {
      CMBaseObjectGetDerivedStorage();
    }

    OUTLINED_FUNCTION_57();
    OUTLINED_FUNCTION_2_0();
    LogPrintF(v3, v4, v5, v6);
  }

  if (*v1)
  {
    CFRelease(*v1);
  }
}

void bufferedAudioEngine_resumeInternalStage1_cold_15()
{
  OUTLINED_FUNCTION_48();
  APSAudioFormatDescriptionCopyDebugString();
  if (gLogCategory_APAudioEngineBuffered <= 50 && (gLogCategory_APAudioEngineBuffered != -1 || OUTLINED_FUNCTION_4(&gLogCategory_APAudioEngineBuffered)))
  {
    if (v1)
    {
      CMBaseObjectGetDerivedStorage();
    }

    OUTLINED_FUNCTION_57();
    OUTLINED_FUNCTION_2_0();
    LogPrintF(v2, v3, v4, v5);
  }

  if (*v0)
  {
    CFRelease(*v0);
  }
}

void bufferedAudioEngine_resumeInternalStage1_cold_16(uint64_t a1)
{
  OUTLINED_FUNCTION_37(a1);
  APSAudioFormatDescriptionListCopyDebugString();
  if (gLogCategory_APAudioEngineBuffered <= 90 && (gLogCategory_APAudioEngineBuffered != -1 || OUTLINED_FUNCTION_4_3(&gLogCategory_APAudioEngineBuffered)))
  {
    if (v2)
    {
      CMBaseObjectGetDerivedStorage();
    }

    OUTLINED_FUNCTION_57();
    OUTLINED_FUNCTION_2_1();
    LogPrintF(v3, v4, v5, v6);
  }

  if (*v1)
  {
    CFRelease(*v1);
  }
}

void bufferedAudioEngine_resumeInternalStage1_cold_19()
{
  OUTLINED_FUNCTION_3_7();
  APSLogErrorAt();
  *(*v1 + 24) = -6728;
  CFRelease(v0);
}

uint64_t bufferedAudioEngine_resumeInternalStage1_cold_20(uint64_t a1)
{
  result = APSLogErrorAt();
  *(*a1 + 24) = -6728;
  return result;
}

uint64_t bufferedAudioEngine_resumeInternalStage1_cold_21(uint64_t a1)
{
  result = APSLogErrorAt();
  *(*a1 + 24) = -6728;
  return result;
}

uint64_t bufferedAudioEngine_resumeInternalStage1_cold_23(uint64_t *a1)
{
  v1 = *a1;
  if (*a1)
  {
    v2 = (CMBaseObjectGetDerivedStorage() + 392);
  }

  else
  {
    v2 = "";
  }

  v8 = v2;
  OUTLINED_FUNCTION_2_0();
  return LogPrintF(v3, v4, v5, v6, v1, v8);
}

uint64_t bufferedAudioEngine_resumeInternalStage1_cold_25(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {
    CMBaseObjectGetDerivedStorage();
  }

  return OUTLINED_FUNCTION_6(&gLogCategory_APAudioEngineBuffered, "OSStatus bufferedAudioEngine_generateEncryptionKeyAndCryptor(FigEndpointStreamAudioEngineRef)", a3, "BAE [%{ptr}] %sChaCha Cryptor created with shared key\n");
}

uint64_t bufferedAudioEngine_resumeInternalStage1_cold_27()
{
  OUTLINED_FUNCTION_20_2();
  if (v2)
  {
    v3 = (CMBaseObjectGetDerivedStorage() + 392);
  }

  else
  {
    v3 = "";
  }

  v10 = *v1;
  v9 = v3;
  OUTLINED_FUNCTION_2_0();
  return LogPrintF(v4, v5, v6, v7, v0, v9, "OSStatus bufferedAudioEngine_ensureMessageRingCreated(FigEndpointStreamAudioEngineRef, Boolean)", v10);
}

uint64_t bufferedAudioEngine_resumeInternalStage1_cold_28(uint64_t a1, _DWORD *a2)
{
  v3 = a1;
  APSLogErrorAt();
  *a2 = v3;
  return APSLogErrorAt();
}

uint64_t bufferedAudioEngine_resumeInternalStage1_cold_29(uint64_t a1)
{
  if (a1)
  {
    CMBaseObjectGetDerivedStorage();
  }

  OUTLINED_FUNCTION_42_0();
  OUTLINED_FUNCTION_2_1();
  return LogPrintF(v1, v2, v3, v4);
}

uint64_t bufferedAudioEngine_resumeInternalStage1_cold_30()
{
  OUTLINED_FUNCTION_3_2();
  if (v0)
  {
    CMBaseObjectGetDerivedStorage();
  }

  OUTLINED_FUNCTION_28();
  return OUTLINED_FUNCTION_6(&gLogCategory_APAudioEngineBuffered, "OSStatus bufferedAudioEngine_initializeRTCReporting(FigEndpointStreamAudioEngineRef)", v1, "BAE [%{ptr}] %s[0x%04X] Created RTCReporting agent. %p\n");
}

uint64_t bufferedAudioEngine_resumeInternalStage1_cold_31(uint64_t a1)
{
  if (a1)
  {
    CMBaseObjectGetDerivedStorage();
  }

  OUTLINED_FUNCTION_42_0();
  OUTLINED_FUNCTION_2_1();
  return LogPrintF(v1, v2, v3, v4);
}

uint64_t bufferedAudioEngine_resumeInternalStage1_cold_32()
{
  OUTLINED_FUNCTION_59();
  v4 = v3;
  if (v3)
  {
    v5 = (CMBaseObjectGetDerivedStorage() + 392);
  }

  else
  {
    v5 = "";
  }

  v6 = *v2;
  v7 = *v1;
  v8 = *(v0 + 16);
  v11 = v0 + 20;
  v9 = *(v0 + 20);
  v10 = *(v11 + 4);
  ASBD = APSAudioFormatDescriptionGetASBD();
  OUTLINED_FUNCTION_2_0();
  return LogPrintF(v12, v13, v14, v15, v4, v5, v6, v7, v10, v8, v9, ASBD);
}

uint64_t bufferedAudioEngine_resumeInternalStage1_cold_35()
{
  OUTLINED_FUNCTION_20_2();
  if (v0)
  {
    CMBaseObjectGetDerivedStorage();
  }

  OUTLINED_FUNCTION_1_26();
  return OUTLINED_FUNCTION_6(&gLogCategory_APAudioEngineBuffered, "OSStatus bufferedAudioEngine_createAndResumeAudioTimerInternal(FigEndpointStreamAudioEngineRef)", v1, "BAE [%{ptr}] %s[0x%04X] Resuming audio timer\n");
}

uint64_t bufferedAudioEngine_resumeInternalStage1_cold_43()
{
  OUTLINED_FUNCTION_3_7();
  APSLogErrorAt();
  result = APSSignalErrorAt();
  *v0 = result;
  *v1 = result;
  return result;
}

uint64_t bufferedAudioEngine_resumeInternalStage1_cold_44()
{
  OUTLINED_FUNCTION_3_7();
  APSLogErrorAt();
  result = APSSignalErrorAt();
  *v0 = result;
  *v1 = result;
  return result;
}

uint64_t bufferedAudioEngine_resumeInternalStageEnd_cold_1(uint64_t *a1)
{
  v1 = *a1;
  if (*a1)
  {
    v2 = (CMBaseObjectGetDerivedStorage() + 392);
  }

  else
  {
    v2 = "";
  }

  v8 = v2;
  OUTLINED_FUNCTION_2_0();
  return LogPrintF(v3, v4, v5, v6, v1, v8);
}

uint64_t bufferedAudioEngine_generateNewFirstRemoteMediaTime_cold_2(uint64_t a1, float a2)
{
  if (a1)
  {
    v4 = (CMBaseObjectGetDerivedStorage() + 392);
  }

  else
  {
    v4 = "";
  }

  v11 = bufferedAudioEngine_generateNewFirstRemoteMediaTime_prefsDeltaFromRolloverSecs;
  v10 = v4;
  OUTLINED_FUNCTION_2_0();
  return LogPrintF(v5, v6, v7, v8, a1, v10, a2, v11);
}

uint64_t bufferedAudioEngine_generateNewFirstRemoteMediaTime_cold_3(uint64_t a1)
{
  if (a1)
  {
    v2 = (CMBaseObjectGetDerivedStorage() + 392);
  }

  else
  {
    v2 = "";
  }

  v8 = v2;
  OUTLINED_FUNCTION_2_0();
  return LogPrintF(v3, v4, v5, v6, a1, v8);
}

uint64_t bufferedAudioEngine_readSoundCheck_cold_1(uint64_t a1)
{
  if (a1)
  {
    CMBaseObjectGetDerivedStorage();
  }

  OUTLINED_FUNCTION_133();
  OUTLINED_FUNCTION_18_5();
  OUTLINED_FUNCTION_2_0();
  return LogPrintF(v1, v2, v3, v4);
}

uint64_t __bufferedAudioEngine_audioTimer_block_invoke_cold_1(uint64_t a1)
{
  if (*(a1 + 40))
  {
    CMBaseObjectGetDerivedStorage();
  }

  OUTLINED_FUNCTION_42_0();
  OUTLINED_FUNCTION_2_1();
  return LogPrintF(v1, v2, v3, v4);
}

uint64_t bufferedAudioEngine_createAndEnqueueEmptyMessageForSending_cold_5(_DWORD *a1)
{
  OUTLINED_FUNCTION_17();
  APSLogErrorAt();
  result = APSSignalErrorAt();
  *a1 = result;
  return result;
}

uint64_t bufferedAudioEngine_enqueueMessagesFromBufferQueue_cold_1()
{
  OUTLINED_FUNCTION_20_2();
  if (v2)
  {
    v3 = (CMBaseObjectGetDerivedStorage() + 392);
  }

  else
  {
    v3 = "";
  }

  v4 = *(v1 + 530);
  time = *(v1 + 756);
  Seconds = CMTimeGetSeconds(&time);
  v12 = *(v1 + 756);
  v13 = *(v1 + 764);
  v11 = Seconds;
  OUTLINED_FUNCTION_2_0();
  return LogPrintF(v6, v7, v8, v9, v0, v3, v4, *&v11, v12, v13);
}

uint64_t bufferedAudioEngine_enqueueMessagesFromBufferQueue_cold_2()
{
  OUTLINED_FUNCTION_3_2();
  if (DerivedStorage)
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
  }

  OUTLINED_FUNCTION_5_11(DerivedStorage, v1, v2, v3, v4, v5, v6, v7, v13, v14, v15, v16, v17, v18);
  OUTLINED_FUNCTION_50();
  OUTLINED_FUNCTION_2_0();
  return LogPrintF(v8, v9, v10, v11);
}

uint64_t bufferedAudioEngine_enqueueMessagesFromBufferQueue_cold_3()
{
  OUTLINED_FUNCTION_3_2();
  if (DerivedStorage)
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
  }

  OUTLINED_FUNCTION_5_11(DerivedStorage, v1, v2, v3, v4, v5, v6, v7, v13, v14, v15, v16, v17, v18);
  OUTLINED_FUNCTION_50();
  OUTLINED_FUNCTION_2_0();
  return LogPrintF(v8, v9, v10, v11);
}

uint64_t bufferedAudioEngine_enqueueMessagesFromBufferQueue_cold_4()
{
  OUTLINED_FUNCTION_7_4();
  APSLogErrorAt();
  return APSSignalErrorAt();
}

uint64_t bufferedAudioEngine_enqueueMessagesFromBufferQueue_cold_5()
{
  OUTLINED_FUNCTION_3_2();
  if (v0)
  {
    CMBaseObjectGetDerivedStorage();
  }

  OUTLINED_FUNCTION_21_3();
  OUTLINED_FUNCTION_2_0();
  return LogPrintF(v1, v2, v3, v4);
}

uint64_t bufferedAudioEngine_enqueueMessagesFromBufferQueue_cold_7()
{
  OUTLINED_FUNCTION_3_2();
  if (v0)
  {
    CMBaseObjectGetDerivedStorage();
  }

  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_3();
  return LogPrintF(v1, v2, v3, v4);
}

uint64_t bufferedAudioEngine_enqueueMessagesFromBufferQueue_cold_11()
{
  OUTLINED_FUNCTION_3_2();
  if (v3)
  {
    v4 = (CMBaseObjectGetDerivedStorage() + 392);
  }

  else
  {
    v4 = "";
  }

  v5 = *(v2 + 530);
  CryptorIDForCryptor = bufferedAudioEngine_getCryptorIDForCryptor(*v1);
  OUTLINED_FUNCTION_2_1();
  return LogPrintF(v6, v7, v8, v9, v0, v4, v5, CryptorIDForCryptor);
}

void bufferedAudioEngine_enqueueMessagesFromBufferQueue_cold_15(uint64_t a1)
{
  OUTLINED_FUNCTION_37(a1);
  APSAudioFormatDescriptionCopyDebugString();
  if (gLogCategory_APAudioEngineBuffered <= 90 && (gLogCategory_APAudioEngineBuffered != -1 || OUTLINED_FUNCTION_4_3(&gLogCategory_APAudioEngineBuffered)))
  {
    if (v2)
    {
      CMBaseObjectGetDerivedStorage();
    }

    OUTLINED_FUNCTION_127();
    OUTLINED_FUNCTION_2_1();
    LogPrintF(v3, v4, v5, v6);
  }

  if (*v1)
  {
    CFRelease(*v1);
  }
}

void bufferedAudioEngine_enqueueMessagesFromBufferQueue_cold_16(uint64_t a1)
{
  OUTLINED_FUNCTION_37(a1);
  APSAudioFormatDescriptionListCopyDebugString();
  if (gLogCategory_APAudioEngineBuffered <= 90 && (gLogCategory_APAudioEngineBuffered != -1 || OUTLINED_FUNCTION_4_3(&gLogCategory_APAudioEngineBuffered)))
  {
    if (v2)
    {
      CMBaseObjectGetDerivedStorage();
    }

    OUTLINED_FUNCTION_127();
    OUTLINED_FUNCTION_2_1();
    LogPrintF(v3, v4, v5, v6);
  }

  if (*v1)
  {
    CFRelease(*v1);
  }
}

uint64_t bufferedAudioEngine_enqueueMessagesFromBufferQueue_cold_17()
{
  OUTLINED_FUNCTION_20_2();
  if (v0)
  {
    CMBaseObjectGetDerivedStorage();
  }

  OUTLINED_FUNCTION_1_26();
  OUTLINED_FUNCTION_3();
  return LogPrintF(v1, v2, v3, v4);
}

uint64_t bufferedAudioEngine_enqueueMessagesFromBufferQueue_cold_18(_DWORD *a1)
{
  OUTLINED_FUNCTION_17();
  APSLogErrorAt();
  result = APSSignalErrorAt();
  *a1 = result;
  return result;
}

uint64_t bufferedAudioEngine_getStartUpDelay_cold_2(uint64_t a1)
{
  if (a1)
  {
    v2 = (CMBaseObjectGetDerivedStorage() + 392);
  }

  else
  {
    v2 = "";
  }

  time = *bufferedAudioEngine_getStartUpDelay_bufferedStartUpDelay;
  Seconds = CMTimeGetSeconds(&time);
  OUTLINED_FUNCTION_3();
  return LogPrintF(v3, v4, v5, v6, a1, v2, *&Seconds);
}

uint64_t bufferedAudioEngine_encodeMessage_cold_2()
{
  OUTLINED_FUNCTION_27();
  if (v0)
  {
    CMBaseObjectGetDerivedStorage();
  }

  OUTLINED_FUNCTION_21_3();
  OUTLINED_FUNCTION_2_0();
  return LogPrintF(v1, v2, v3, v4);
}

uint64_t bufferedAudioEngine_encodeMessage_cold_8()
{
  OUTLINED_FUNCTION_3_2();
  if (v0)
  {
    CMBaseObjectGetDerivedStorage();
  }

  OUTLINED_FUNCTION_78();
  OUTLINED_FUNCTION_28();
  return OUTLINED_FUNCTION_105(v1, v2, v3, v4);
}

uint64_t bufferedAudioEngine_enqueueSingleSampleCompressedSBufCallback_cold_1()
{
  OUTLINED_FUNCTION_20_2();
  if (v0)
  {
    CMBaseObjectGetDerivedStorage();
  }

  OUTLINED_FUNCTION_1_26();
  OUTLINED_FUNCTION_2_1();
  return LogPrintF(v1, v2, v3, v4);
}

uint64_t bufferedAudioEngine_enqueueSingleSampleCompressedSBufCallback_cold_2()
{
  OUTLINED_FUNCTION_20_2();
  if (v0)
  {
    CMBaseObjectGetDerivedStorage();
  }

  OUTLINED_FUNCTION_1_26();
  OUTLINED_FUNCTION_2_1();
  return LogPrintF(v1, v2, v3, v4);
}

uint64_t bufferedAudioEngine_enqueueSingleSampleCompressedSBufCallback_cold_13()
{
  OUTLINED_FUNCTION_20_2();
  if (v0)
  {
    CMBaseObjectGetDerivedStorage();
  }

  OUTLINED_FUNCTION_1_26();
  return OUTLINED_FUNCTION_105(&gLogCategory_APAudioEngineBuffered, "OSStatus bufferedAudioEngine_enqueueSingleSampleCompressedSBufCallback(CMSampleBufferRef, CMItemCount, void *)", v1, "BAE [%{ptr}] %s[0x%04X] enqueued data to SidePocket\n");
}

uint64_t bufferedAudioEngine_enqueueSingleSampleCompressedSBufCallback_cold_15()
{
  OUTLINED_FUNCTION_60();
  result = APSLogErrorAt();
  if (gLogCategory_APAudioEngineBuffered <= 90)
  {
    if (gLogCategory_APAudioEngineBuffered != -1 || (result = OUTLINED_FUNCTION_4_3(&gLogCategory_APAudioEngineBuffered), result))
    {
      if (v2)
      {
        CMBaseObjectGetDerivedStorage();
      }

      OUTLINED_FUNCTION_40_0();
      OUTLINED_FUNCTION_2_1();
      result = LogPrintF(v4, v5, v6, v7);
    }
  }

  *v1 = 0;
  *v0 = 0;
  return result;
}

uint64_t bufferedAudioEngine_enqueueSingleSampleCompressedSBufCallback_cold_16()
{
  OUTLINED_FUNCTION_60();
  result = APSLogErrorAt();
  if (gLogCategory_APAudioEngineBuffered <= 90)
  {
    if (gLogCategory_APAudioEngineBuffered != -1 || (result = OUTLINED_FUNCTION_4_3(&gLogCategory_APAudioEngineBuffered), result))
    {
      if (v2)
      {
        CMBaseObjectGetDerivedStorage();
      }

      OUTLINED_FUNCTION_40_0();
      OUTLINED_FUNCTION_2_1();
      result = LogPrintF(v4, v5, v6, v7);
    }
  }

  *v1 = 0;
  *v0 = 0;
  return result;
}

uint64_t bufferedAudioEngine_enqueueSingleSampleCompressedSBufCallback_cold_17()
{
  OUTLINED_FUNCTION_60();
  result = APSLogErrorAt();
  if (gLogCategory_APAudioEngineBuffered <= 90)
  {
    if (gLogCategory_APAudioEngineBuffered != -1 || (result = OUTLINED_FUNCTION_4_3(&gLogCategory_APAudioEngineBuffered), result))
    {
      if (v2)
      {
        CMBaseObjectGetDerivedStorage();
      }

      OUTLINED_FUNCTION_40_0();
      OUTLINED_FUNCTION_2_1();
      result = LogPrintF(v4, v5, v6, v7);
    }
  }

  *v1 = 0;
  *v0 = 0;
  return result;
}

uint64_t bufferedAudioEngine_startPlaybackIfNecessary_cold_1()
{
  OUTLINED_FUNCTION_20_2();
  if (v0)
  {
    CMBaseObjectGetDerivedStorage();
  }

  OUTLINED_FUNCTION_1_26();
  OUTLINED_FUNCTION_2_0();
  return LogPrintF(v1, v2, v3, v4);
}

uint64_t bufferedAudioEngine_startPlaybackIfNecessary_cold_3()
{
  OUTLINED_FUNCTION_20_2();
  if (v0)
  {
    CMBaseObjectGetDerivedStorage();
  }

  OUTLINED_FUNCTION_1_26();
  OUTLINED_FUNCTION_2_0();
  return LogPrintF(v1, v2, v3, v4);
}

uint64_t bufferedAudioEngine_startPlaybackIfNecessary_cold_4()
{
  OUTLINED_FUNCTION_20_2();
  if (v0)
  {
    CMBaseObjectGetDerivedStorage();
  }

  OUTLINED_FUNCTION_1_26();
  OUTLINED_FUNCTION_2_0();
  return LogPrintF(v1, v2, v3, v4);
}

uint64_t bufferedAudioEngine_startPlaybackIfNecessary_cold_6()
{
  OUTLINED_FUNCTION_20_2();
  if (v0)
  {
    CMBaseObjectGetDerivedStorage();
  }

  OUTLINED_FUNCTION_1_26();
  OUTLINED_FUNCTION_2_0();
  return LogPrintF(v1, v2, v3, v4);
}

uint64_t bufferedAudioEngine_startPlaybackIfNecessary_cold_8()
{
  OUTLINED_FUNCTION_20_2();
  if (v0)
  {
    CMBaseObjectGetDerivedStorage();
  }

  OUTLINED_FUNCTION_1_26();
  OUTLINED_FUNCTION_2_0();
  return LogPrintF(v1, v2, v3, v4);
}

uint64_t bufferedAudioEngine_startPlaybackIfNecessary_cold_9()
{
  OUTLINED_FUNCTION_20_2();
  if (v0)
  {
    CMBaseObjectGetDerivedStorage();
  }

  OUTLINED_FUNCTION_1_26();
  OUTLINED_FUNCTION_2_0();
  return LogPrintF(v1, v2, v3, v4);
}

uint64_t bufferedAudioEngine_startPlaybackIfNecessary_cold_11()
{
  OUTLINED_FUNCTION_20_2();
  if (v0)
  {
    CMBaseObjectGetDerivedStorage();
  }

  OUTLINED_FUNCTION_1_26();
  OUTLINED_FUNCTION_2_0();
  return LogPrintF(v1, v2, v3, v4);
}

uint64_t bufferedAudioEngine_startPlaybackIfNecessary_cold_13()
{
  OUTLINED_FUNCTION_20_2();
  if (v0)
  {
    CMBaseObjectGetDerivedStorage();
  }

  OUTLINED_FUNCTION_1_26();
  return OUTLINED_FUNCTION_105(&gLogCategory_APAudioEngineBuffered, "OSStatus bufferedAudioEngine_startPlaybackIfNecessary(FigEndpointStreamAudioEngineRef, Boolean)", v1, "BAE [%{ptr}] %s[0x%04X] Not ready to start playback, readyToStartHoses FALSE\n");
}

uint64_t bufferedAudioEngine_updateHosesPrimed_cold_1(char a1, uint64_t a2, uint64_t a3)
{
  if ((a1 & 1) == 0)
  {
    CMBaseObjectGetDerivedStorage();
  }

  return OUTLINED_FUNCTION_105(&gLogCategory_APAudioEngineBuffered, "void bufferedAudioEngine_updateHosesPrimed(FigEndpointStreamAudioEngineRef, uint64_t, Boolean, APAudioEngineBufferedPrimingStats *)", a3, "BAE [%{ptr}] %s(startup) hose [%{ptr}] HoseState=%d, isLocal=%c\n");
}

void bufferedAudioEngine_handleErrorWithReceiverAnchor_cold_1()
{
  if (gLogCategory_APAudioEngineBuffered <= 90)
  {
    OUTLINED_FUNCTION_3_2();
    if (v1 != -1 || OUTLINED_FUNCTION_4_3(&gLogCategory_APAudioEngineBuffered))
    {
      if (v0)
      {
        CMBaseObjectGetDerivedStorage();
      }

      OUTLINED_FUNCTION_21_3();
      OUTLINED_FUNCTION_2_1();
      LogPrintF(v2, v3, v4, v5);
    }
  }
}

uint64_t bufferedAudioEngine_handleTerminalSetRateError_cold_1()
{
  OUTLINED_FUNCTION_59();
  v4 = v3;
  if (v3)
  {
    v5 = (CMBaseObjectGetDerivedStorage() + 392);
  }

  else
  {
    v5 = "";
  }

  v13 = *(v1 + 264);
  v14 = *(v1 + 172);
  v12 = *(v2 + 530);
  v11 = v5;
  OUTLINED_FUNCTION_2_1();
  return LogPrintF(v6, v7, v8, v9, v4, v11, v12, v0, v13, v14);
}

uint64_t bufferedAudioEngine_handleTerminalSetRateError_cold_2()
{
  OUTLINED_FUNCTION_3_2();
  if (v0)
  {
    CMBaseObjectGetDerivedStorage();
  }

  OUTLINED_FUNCTION_21_3();
  OUTLINED_FUNCTION_2_1();
  return LogPrintF(v1, v2, v3, v4);
}

uint64_t bufferedAudioEngine_setEndpointStreamInternalStage1_cold_1(uint64_t *a1)
{
  v1 = *a1;
  if (*a1)
  {
    v2 = (CMBaseObjectGetDerivedStorage() + 392);
  }

  else
  {
    v2 = "";
  }

  v8 = v2;
  OUTLINED_FUNCTION_2_0();
  return LogPrintF(v3, v4, v5, v6, v1, v8);
}

uint64_t bufferedAudioEngine_setEndpointStreamInternalStage1_cold_3(uint64_t *a1)
{
  v1 = *a1;
  if (*a1)
  {
    v2 = (CMBaseObjectGetDerivedStorage() + 392);
  }

  else
  {
    v2 = "";
  }

  v8 = v2;
  OUTLINED_FUNCTION_2_0();
  return LogPrintF(v3, v4, v5, v6, v1, v8);
}

uint64_t bufferedAudioEngine_setEndpointStreamInternalStage1_cold_6(uint64_t *a1)
{
  v1 = *a1;
  if (*a1)
  {
    v2 = (CMBaseObjectGetDerivedStorage() + 392);
  }

  else
  {
    v2 = "";
  }

  v8 = v2;
  OUTLINED_FUNCTION_2_0();
  return LogPrintF(v3, v4, v5, v6, v1, v8);
}

uint64_t bufferedAudioEngine_setEndpointStreamInternalStage1_cold_7(uint64_t *a1, _BYTE *a2, uint64_t *a3, char a4)
{
  v7 = *a1;
  if (*a1)
  {
    v8 = (CMBaseObjectGetDerivedStorage() + 392);
  }

  else
  {
    v8 = "";
  }

  if (*a2)
  {
    v9 = "APAP";
  }

  else
  {
    v9 = "RTP";
  }

  IntWithDefault = APSSettingsGetIntWithDefault();
  v11 = "T";
  if (!IntWithDefault)
  {
    v11 = "F";
  }

  v12 = "n't";
  if (a4)
  {
    v12 = "";
  }

  v19 = *a3;
  v20 = v12;
  v18 = v11;
  OUTLINED_FUNCTION_2_0();
  return LogPrintF(v13, v14, v15, v16, v7, v8, v9, v18, v19, v20);
}

void bufferedAudioEngine_setEndpointStreamInternalStage1_cold_8(uint64_t a1, CFTypeRef *a2, uint64_t *a3)
{
  APSAudioFormatDescriptionCopyDebugString();
  if (gLogCategory_APAudioEngineBuffered <= 50 && (gLogCategory_APAudioEngineBuffered != -1 || OUTLINED_FUNCTION_4(&gLogCategory_APAudioEngineBuffered)))
  {
    if (*a3)
    {
      CMBaseObjectGetDerivedStorage();
    }

    OUTLINED_FUNCTION_45();
    OUTLINED_FUNCTION_2_0();
    LogPrintF(v5, v6, v7, v8);
  }

  if (*a2)
  {
    CFRelease(*a2);
  }
}

uint64_t bufferedAudioEngine_setEndpointStreamInternalStageEnd_cold_1(uint64_t *a1)
{
  v1 = *a1;
  if (*a1)
  {
    v2 = (CMBaseObjectGetDerivedStorage() + 392);
  }

  else
  {
    v2 = "";
  }

  v8 = v2;
  OUTLINED_FUNCTION_2_0();
  return LogPrintF(v3, v4, v5, v6, v1, v8);
}

uint64_t bufferedAudioEngine_setEndpointStreamInternalStage4_cold_1(uint64_t *a1)
{
  v1 = *a1;
  if (*a1)
  {
    v2 = (CMBaseObjectGetDerivedStorage() + 392);
  }

  else
  {
    v2 = "";
  }

  v8 = v2;
  OUTLINED_FUNCTION_2_0();
  return LogPrintF(v3, v4, v5, v6, v1, v8);
}

uint64_t bufferedAudioEngine_setEndpointStreamInternalStage5_cold_1(uint64_t *a1)
{
  v1 = *a1;
  if (*a1)
  {
    v2 = (CMBaseObjectGetDerivedStorage() + 392);
  }

  else
  {
    v2 = "";
  }

  v8 = v2;
  OUTLINED_FUNCTION_2_0();
  return LogPrintF(v3, v4, v5, v6, v1, v8);
}

uint64_t bufferedAudioEngine_setEndpointStreamInternalStage5_cold_3()
{
  OUTLINED_FUNCTION_2_19();
  if (v0)
  {
    v3 = (CMBaseObjectGetDerivedStorage() + 392);
  }

  else
  {
    v3 = "";
  }

  if (*v2)
  {
    v4 = "APAP";
  }

  else
  {
    v4 = "RTP";
  }

  IntWithDefault = APSSettingsGetIntWithDefault();
  v6 = "T";
  if (!IntWithDefault)
  {
    v6 = "F";
  }

  v12 = v6;
  v13 = *v1;
  OUTLINED_FUNCTION_2_0();
  return LogPrintF(v7, v8, v9, v10, v0, v3, v4, v12, v13);
}

uint64_t bufferedAudioEngine_setEndpointStreamInternalStage5_cold_4()
{
  OUTLINED_FUNCTION_59();
  v1 = *v0;
  if (*v0)
  {
    CMBaseObjectGetDerivedStorage();
  }

  OUTLINED_FUNCTION_133();
  OUTLINED_FUNCTION_26_1();
  OUTLINED_FUNCTION_2_0();
  return LogPrintF(v2, v3, v4, v5, v1);
}

uint64_t bufferedAudioEngine_flushHose_cold_1()
{
  OUTLINED_FUNCTION_3_2();
  if (v1)
  {
    CMBaseObjectGetDerivedStorage();
  }

  OUTLINED_FUNCTION_26_1();
  OUTLINED_FUNCTION_2_0();
  return LogPrintF(v2, v3, v4, v5, v0);
}

uint64_t bufferedAudioEngine_flushWithinSampleRangeInternal_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_17();
  v2 = APSLogErrorAt();
  result = OUTLINED_FUNCTION_92(v2, "flushRangeStartTime timestamp is non-numeric\n");
  *a1 = result;
  return result;
}

uint64_t bufferedAudioEngine_flushWithinSampleRangeInternal_cold_3()
{
  OUTLINED_FUNCTION_34_0();
  if (v0)
  {
    CMBaseObjectGetDerivedStorage();
  }

  OUTLINED_FUNCTION_1_26();
  OUTLINED_FUNCTION_2_0();
  return LogPrintF(v1, v2, v3, v4);
}

uint64_t bufferedAudioEngine_flushWithinSampleRangeInternal_cold_5(_DWORD *a1)
{
  OUTLINED_FUNCTION_17();
  v2 = APSLogErrorAt();
  result = OUTLINED_FUNCTION_92(v2, "Overflow in flushUntilRemoteMediaTime timestamp computation");
  *a1 = result;
  return result;
}

uint64_t bufferedAudioEngine_flushWithinSampleRangeInternal_cold_6(_DWORD *a1)
{
  OUTLINED_FUNCTION_17();
  v2 = APSLogErrorAt();
  result = OUTLINED_FUNCTION_92(v2, "Overflow in flushFromRemoteMediaTime timestamp computation");
  *a1 = result;
  return result;
}

uint64_t bufferedAudioEngine_flushWithinSampleRangeInternal_cold_7()
{
  OUTLINED_FUNCTION_2_19();
  if (v0)
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
  }

  OUTLINED_FUNCTION_5_11(DerivedStorage, v2, v3, v4, v5, v6, v7, v8, v14, v15, v16, v17, v18, v19);
  OUTLINED_FUNCTION_50();
  OUTLINED_FUNCTION_2_0();
  return LogPrintF(v9, v10, v11, v12);
}

uint64_t bufferedAudioEngine_flushWithinSampleRangeInternal_cold_9()
{
  OUTLINED_FUNCTION_20_2();
  if (v0)
  {
    CMBaseObjectGetDerivedStorage();
  }

  OUTLINED_FUNCTION_1_26();
  OUTLINED_FUNCTION_3();
  return LogPrintF(v1, v2, v3, v4);
}

uint64_t bufferedAudioEngine_flushWithinSampleRangeInternal_cold_10(_DWORD *a1)
{
  OUTLINED_FUNCTION_17();
  v2 = APSLogErrorAt();
  result = OUTLINED_FUNCTION_92(v2, "Overflow in timestamp computation");
  *a1 = result;
  return result;
}

uint64_t bufferedAudioEngine_flushWithinSampleRangeInternal_cold_11(_DWORD *a1)
{
  result = APSLogErrorAt();
  *a1 = -15480;
  return result;
}

uint64_t bufferedAudioEngine_flushWithinSampleRangeInternal_cold_12()
{
  OUTLINED_FUNCTION_20_2();
  if (v0)
  {
    CMBaseObjectGetDerivedStorage();
  }

  OUTLINED_FUNCTION_1_26();
  OUTLINED_FUNCTION_2_0();
  return LogPrintF(v1, v2, v3, v4);
}

uint64_t __APHIDClientCreate_block_invoke_cold_3(const __CFDictionary *a1, uint64_t a2, uint64_t a3)
{
  Value = CFDictionaryGetValue(a1, @"name");
  v7 = gLogCategory_APHIDClient;
  if (gLogCategory_APHIDClient > 20)
  {
    v8 = 0;
    goto LABEL_5;
  }

  if (gLogCategory_APHIDClient != -1)
  {
    v8 = 1;
    goto LABEL_7;
  }

  v8 = _LogCategory_Initialize() != 0;
  v7 = gLogCategory_APHIDClient;
  if (gLogCategory_APHIDClient > 20)
  {
LABEL_5:
    v9 = 0;
    return LogPrintF(&gLogCategory_APHIDClient, "void hidClient_addDevice(APHIDClientRef, CFDictionaryRef)", 33554472, "[%{ptr}] Created virtual HID device %@ (%@)%?s%?@\n", a2, a3, Value, v8, "\n", v9, a1);
  }

LABEL_7:
  v9 = v7 != -1 || _LogCategory_Initialize() != 0;
  return LogPrintF(&gLogCategory_APHIDClient, "void hidClient_addDevice(APHIDClientRef, CFDictionaryRef)", 33554472, "[%{ptr}] Created virtual HID device %@ (%@)%?s%?@\n", a2, a3, Value, v8, "\n", v9, a1);
}

uint64_t APCarPlayBTPairingInfoHelperCreate_cold_3()
{
  APSLogErrorAt();

  return APSLogErrorAt();
}

uint64_t apPlayback_ensureTransportStreamsCreated(uint64_t a1)
{
  v29 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  cf = 0;
  v2 = DerivedStorage + 23;
  if (DerivedStorage[23])
  {
    return v29;
  }

  v3 = DerivedStorage;
  v4 = DerivedStorage + 24;
  if (DerivedStorage[24])
  {
    goto LABEL_9;
  }

  v5 = DerivedStorage[2];
  v6 = *(*(CMBaseObjectGetVTable() + 16) + 40);
  if (!v6)
  {
    OUTLINED_FUNCTION_6_11();
LABEL_8:
    APSLogErrorAt();
LABEL_9:
    Mutable = 0;
LABEL_31:
    v12 = 0;
    goto LABEL_32;
  }

  v29 = v6(v5, 120, 0, &cf, 0, 0);
  if (v29)
  {
    goto LABEL_8;
  }

  v7 = cf ? CFRetain(cf) : 0;
  v3[25] = v7;
  CFDictionaryGetInt64();
  if (v29)
  {
    goto LABEL_8;
  }

  v9 = *MEMORY[0x277CBECE8];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (!Mutable)
  {
    APSLogErrorAt();
    v12 = 0;
LABEL_46:
    v29 = -16741;
    goto LABEL_32;
  }

  CFDictionarySetInt64();
  CFDictionarySetInt64();
  v10 = v3[2];
  v11 = *(*(CMBaseObjectGetVTable() + 16) + 56);
  if (!v11)
  {
    OUTLINED_FUNCTION_6_11();
    goto LABEL_30;
  }

  v29 = v11(v10, Mutable, v2);
  if (v29)
  {
LABEL_30:
    APSLogErrorAt();
    goto LABEL_31;
  }

  v12 = CFDictionaryCreateMutable(v9, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (!v12)
  {
    APSLogErrorAt();
    goto LABEL_46;
  }

  CFDictionarySetInt64();
  CFDictionarySetInt64();
  v13 = v3[2];
  v14 = *(*(CMBaseObjectGetVTable() + 16) + 56);
  if (!v14)
  {
    OUTLINED_FUNCTION_6_11();
    goto LABEL_42;
  }

  v29 = v14(v13, v12, v4);
  if (v29)
  {
LABEL_42:
    APSLogErrorAt();
    goto LABEL_32;
  }

  v15 = FigCFWeakReferenceHolderCreateWithReferencedObject();
  v3[26] = v15;
  if (v15)
  {
    v16 = v15;
    v17 = *v4;
    v18 = *(*(CMBaseObjectGetVTable() + 16) + 24);
    if (v18)
    {
      v29 = v18(v17, 0, apPlayback_handleMessageCreatingReply, v16);
      if (!v29)
      {
        v19 = *v2;
        v20 = *(*(CMBaseObjectGetVTable() + 16) + 8);
        if (v20)
        {
          v20(v19);
        }

        v21 = *v4;
        v22 = *(*(CMBaseObjectGetVTable() + 16) + 8);
        if (v22)
        {
          v22(v21);
        }

        v23 = *v2;
        v24 = *(*(CMBaseObjectGetVTable() + 16) + 16);
        if (v24)
        {
          v24(v23);
        }

        v25 = *v4;
        v26 = *(*(CMBaseObjectGetVTable() + 16) + 16);
        if (v26)
        {
          v26(v25);
        }

        goto LABEL_32;
      }
    }

    else
    {
      OUTLINED_FUNCTION_6_11();
    }

    goto LABEL_42;
  }

LABEL_32:
  if (cf)
  {
    CFRelease(cf);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  if (v12)
  {
    CFRelease(v12);
  }

  return v29;
}

void apPlayback_playInternal(uint64_t a1)
{
  OUTLINED_FUNCTION_44(a1);
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  Int64 = CFDictionaryGetInt64();
  v4 = apPlayback_ensureTransportStreamsCreated(*v1);
  v29 = v4;
  if (!v4)
  {
    FigSimpleMutexLock();
    *(DerivedStorage + 72) = Int64 != 0;
    if (FigCFEqual())
    {
      v5 = @"default";
    }

    else if (FigCFEqual())
    {
      v5 = @"moviePlayback";
    }

    else
    {
      v5 = 0;
    }

    FigSimpleMutexUnlock();
    v6 = *MEMORY[0x277CC0F90];
    CFStringGetTypeID();
    TypedValue = CFDictionaryGetTypedValue();
    v8 = *v1;
    v9 = v1[1];
    if (TypedValue)
    {
      v21 = TypedValue;
      v22 = CMBaseObjectGetDerivedStorage();
      cf = 0;
      value = 0;
      MediaTypeFromPlayParams = APEndpointPlaybackSessionGetMediaTypeFromPlayParams(v9);
      OUTLINED_FUNCTION_10_5();
      v27 = CFDictionaryGetInt64() != 0;
      if (gLogCategory_APEndpointPlaybackSessionAirPlay <= 30 && (gLogCategory_APEndpointPlaybackSessionAirPlay != -1 || OUTLINED_FUNCTION_10(&gLogCategory_APEndpointPlaybackSessionAirPlay)))
      {
        OUTLINED_FUNCTION_4_1(&gLogCategory_APEndpointPlaybackSessionAirPlay, "OSStatus apPlayback_playLocal(FigEndpointPlaybackSessionRef, CFStringRef, CFStringRef, CFDictionaryRef)", v23, "[%{ptr}] Playing %s %s path: %'@\n");
      }

      v32 = apPlayback_ensureLocalPlaybackServerCreated(v8);
      if (v32 || (CFStringGetTypeID(), OUTLINED_FUNCTION_10_5(), v24 = CFDictionaryGetTypedValue(), (v32 = APLocalPlaybackServerRegisterPathCreatingHostAndURL(*(v22 + 216), v21, v24, &value, &cf)) != 0))
      {
        APSLogErrorAt();
        MutableCopy = 0;
      }

      else
      {
        if (gLogCategory_APEndpointPlaybackSessionAirPlay <= 30 && (gLogCategory_APEndpointPlaybackSessionAirPlay != -1 || OUTLINED_FUNCTION_10(&gLogCategory_APEndpointPlaybackSessionAirPlay)))
        {
          OUTLINED_FUNCTION_4_1(&gLogCategory_APEndpointPlaybackSessionAirPlay, "OSStatus apPlayback_playLocal(FigEndpointPlaybackSessionRef, CFStringRef, CFStringRef, CFDictionaryRef)", v25, "[%{ptr}] Serving local path %'@ as URL: 'http://%@%@'\n");
        }

        MutableCopy = CFDictionaryCreateMutableCopy(*MEMORY[0x277CBECE8], 0, v9);
        if (MutableCopy)
        {
          apPlayback_appendCommonPlayParamsToMessage(v8, v27, MediaTypeFromPlayParams, v5, MutableCopy);
          v32 = 0;
          CFDictionarySetValue(MutableCopy, @"host", value);
          CFDictionarySetValue(MutableCopy, v6, cf);
          if (apPlayback_isTLSEnabled(v8))
          {
            CFDictionarySetValue(MutableCopy, @"tlsPSKEnabled", *MEMORY[0x277CBED28]);
          }

          v32 = OUTLINED_FUNCTION_9_6();
          if (v32)
          {
            APSLogErrorAt();
          }
        }

        else
        {
          APSLogErrorAt();
          v32 = -16741;
        }
      }

      if (cf)
      {
        CFRelease(cf);
      }

      if (value)
      {
        CFRelease(value);
      }

      if (MutableCopy)
      {
        CFRelease(MutableCopy);
      }

      v29 = v32;
      if (!v32)
      {
        goto LABEL_16;
      }
    }

    else
    {
      LODWORD(value) = 0;
      CMBaseObjectGetDerivedStorage();
      v10 = APEndpointPlaybackSessionGetMediaTypeFromPlayParams(v9);
      OUTLINED_FUNCTION_10_5();
      v11 = CFDictionaryGetInt64();
      CFStringGetTypeID();
      OUTLINED_FUNCTION_10_5();
      CFDictionaryGetTypedValue();
      if (gLogCategory_APEndpointPlaybackSessionAirPlay <= 30 && (gLogCategory_APEndpointPlaybackSessionAirPlay != -1 || OUTLINED_FUNCTION_10(&gLogCategory_APEndpointPlaybackSessionAirPlay)))
      {
        OUTLINED_FUNCTION_4_1(&gLogCategory_APEndpointPlaybackSessionAirPlay, "OSStatus apPlayback_playRemote(FigEndpointPlaybackSessionRef, CFStringRef, CFDictionaryRef)", v12, "[%{ptr}] Playing %s %s URL: %'@\n");
      }

      v13 = CFDictionaryCreateMutableCopy(*MEMORY[0x277CBECE8], 0, v9);
      if (v13)
      {
        v14 = v13;
        apPlayback_appendCommonPlayParamsToMessage(v8, v11 != 0, v10, v5, v13);
        LODWORD(value) = OUTLINED_FUNCTION_9_6();
        if (value)
        {
          APSLogErrorAt();
        }

        CFRelease(v14);
        v29 = value;
        if (!value)
        {
LABEL_16:
          if (Int64)
          {
            v15 = *v1;
            v16 = CMBaseObjectGetDerivedStorage();
            FigSimpleMutexLock();
            if (*(v16 + 96))
            {
              if (gLogCategory_APEndpointPlaybackSessionAirPlay <= 30 && (gLogCategory_APEndpointPlaybackSessionAirPlay != -1 || OUTLINED_FUNCTION_10(&gLogCategory_APEndpointPlaybackSessionAirPlay)))
              {
                OUTLINED_FUNCTION_4_1(&gLogCategory_APEndpointPlaybackSessionAirPlay, "void apPlayback_subscribeMetadataEvents(FigEndpointPlaybackSessionRef)", v17, "[%{ptr}] Subscribe to metadata events.\n");
              }

              *(v16 + 104) = APMetadataSourceAddEventCallback(*(v16 + 96), v15, apPlayback_handleMetadataEvent);
            }

            FigSimpleMutexUnlock();
          }

          FigSimpleMutexLock();
          *(DerivedStorage + 56) = 1;
          apPlayback_handlePlaybackStateChanged(*v1, *MEMORY[0x277CC11C0]);
          FigSimpleMutexUnlock();
          CMNotificationCenterGetDefaultLocalCenter();
          FigDispatchAsyncPostNotification();
LABEL_25:
          v18 = v29;
          if (!v29)
          {
            goto LABEL_27;
          }

          goto LABEL_26;
        }
      }

      else
      {
        APSLogErrorAt();
        v29 = -16741;
      }
    }

    APSLogErrorAt();
    goto LABEL_25;
  }

  v18 = v4;
  APSLogErrorAt();
LABEL_26:
  APEndpointPlaybackSessionStatsSetLastError(*(DerivedStorage + 224), v18);
LABEL_27:
  v19 = v1[2];
  if (v19)
  {
    v19(v29, v1[3]);
  }

  CFRelease(*v1);
  v20 = v1[1];
  if (v20)
  {
    CFRelease(v20);
  }
}

uint64_t apPlayback_ensureLocalPlaybackServerCreated(uint64_t a1)
{
  v16 = 0;
  theData = 0;
  v2 = (CMBaseObjectGetDerivedStorage() + 216);
  if (*v2)
  {
    return v16;
  }

  memset(buffer, 0, sizeof(buffer));
  CMBaseObject = FigTransportStreamGetCMBaseObject();
  v4 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v4)
  {
    v16 = -12782;
LABEL_13:
    APSLogErrorAt();
    goto LABEL_23;
  }

  v5 = *MEMORY[0x277CBECE8];
  v16 = v4(CMBaseObject, *MEMORY[0x277CE5030], *MEMORY[0x277CBECE8], &theData);
  if (v16)
  {
    goto LABEL_13;
  }

  v18.location = 0;
  v18.length = 28;
  CFDataGetBytes(theData, v18, buffer);
  v6 = APSGetFBOPropertyInt64() != 0;
  if (v16)
  {
    goto LABEL_13;
  }

  if (!apPlayback_isTLSEnabled(a1))
  {
    v11 = 0;
    goto LABEL_20;
  }

  CMBaseObjectGetDerivedStorage();
  cf[0] = 0;
  v17 = 0;
  APSenderSessionGetCMBaseObject();
  v8 = v7;
  v9 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v9 || v9(v8, @"KeyHolder", v5, cf))
  {
    goto LABEL_16;
  }

  if (cf[0])
  {
    if (*(*(CMBaseObjectGetVTable() + 16) + 48))
    {
      OUTLINED_FUNCTION_4_17();
      if (!v10())
      {
LABEL_17:
        if (cf[0])
        {
          CFRelease(cf[0]);
        }

        goto LABEL_19;
      }
    }

LABEL_16:
    APSLogErrorAt();
    goto LABEL_17;
  }

LABEL_19:
  v11 = v17;
LABEL_20:
  *cf = *buffer;
  *(&cf[1] + 4) = *&buffer[12];
  v16 = APLocalPlaybackServerMake(cf, v6, v11, v2);
  if (!v16)
  {
    if (!v11)
    {
      goto LABEL_23;
    }

    goto LABEL_22;
  }

  APSLogErrorAt();
  if (v11)
  {
LABEL_22:
    CFRelease(v11);
  }

LABEL_23:
  if (theData)
  {
    CFRelease(theData);
  }

  return v16;
}

BOOL apPlayback_isTLSEnabled(uint64_t a1)
{
  v9 = 0;
  cf = 0;
  v1 = *(CMBaseObjectGetDerivedStorage() + 32);
  v2 = *(*(CMBaseObjectGetVTable() + 16) + 16);
  if (!v2 || !v2(v1, 35))
  {
    goto LABEL_10;
  }

  APSenderSessionGetCMBaseObject();
  v4 = v3;
  v5 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v5)
  {
    OUTLINED_FUNCTION_6_11();
    goto LABEL_9;
  }

  v9 = v5(v4, @"KeyHolder", *MEMORY[0x277CBECE8], &cf);
  if (v9)
  {
LABEL_9:
    APSLogErrorAt();
LABEL_10:
    v6 = 0;
    goto LABEL_11;
  }

  if (!cf)
  {
    return 0;
  }

  v6 = APSGetFBOPropertyInt64() != 0;
  if (v9)
  {
    APSLogErrorAt();
  }

LABEL_11:
  if (cf)
  {
    CFRelease(cf);
  }

  return v6;
}

void apPlayback_insertPlayQueueItemInternal(uint64_t *a1)
{
  v31 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v29 = 0;
  cf = 0;
  APEndpointPlaybackSessionGetMediaTypeFromPlayParams(a1[1]);
  if (!*(DerivedStorage + 184))
  {
    MutableCopy = 0;
LABEL_34:
    v16 = 0;
    goto LABEL_11;
  }

  Value = CFDictionaryGetValue(a1[1], *MEMORY[0x277CC1020]);
  if (!Value)
  {
    APSLogErrorAt();
    MutableCopy = 0;
    v16 = 0;
    v28 = -16740;
LABEL_39:
    v31 = v28;
    goto LABEL_11;
  }

  v4 = Value;
  v5 = OUTLINED_FUNCTION_23();
  MutableCopy = CFDictionaryCreateMutableCopy(v5, v6, v7);
  if (!MutableCopy)
  {
    APSLogErrorAt();
    v16 = 0;
LABEL_38:
    v28 = -16741;
    goto LABEL_39;
  }

  v9 = *MEMORY[0x277CC0F90];
  CFStringGetTypeID();
  TypedValue = CFDictionaryGetTypedValue();
  if (!TypedValue)
  {
    CFDictionarySetInt64();
    goto LABEL_6;
  }

  v26 = TypedValue;
  if (apPlayback_isTLSEnabled(*a1))
  {
    CFDictionarySetValue(MutableCopy, @"tlsPSKEnabled", *MEMORY[0x277CBED28]);
  }

  v31 = apPlayback_ensureLocalPlaybackServerCreated(*a1);
  if (v31 || (CFStringGetTypeID(), v27 = CFDictionaryGetTypedValue(), (v31 = APLocalPlaybackServerRegisterPathWithUUIDCreatingHostAndURL(*(DerivedStorage + 216), v4, v26, v27, &cf, &v29)) != 0))
  {
    APSLogErrorAt();
    goto LABEL_34;
  }

  CFDictionarySetInt64();
  CFDictionarySetValue(MutableCopy, @"host", cf);
  CFDictionarySetValue(MutableCopy, v9, v29);
LABEL_6:
  v11 = OUTLINED_FUNCTION_23();
  Mutable = CFDictionaryCreateMutable(v11, v12, v13, v14);
  v16 = Mutable;
  if (!Mutable)
  {
    APSLogErrorAt();
    goto LABEL_38;
  }

  CFDictionarySetValue(Mutable, @"item", MutableCopy);
  v17 = a1[2];
  if (v17)
  {
    CFDictionarySetValue(v16, @"afterItem", v17);
  }

  OUTLINED_FUNCTION_4_17();
  v31 = apPlayback_performRemoteActionInternal(v18, v19, v20, v21, v22);
  if (v31)
  {
    APSLogErrorAt();
  }

LABEL_11:
  v23 = a1[3];
  if (v23)
  {
    v23(v31, a1[4]);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (v29)
  {
    CFRelease(v29);
  }

  if (MutableCopy)
  {
    CFRelease(MutableCopy);
  }

  if (v16)
  {
    CFRelease(v16);
  }

  if (*a1)
  {
    CFRelease(*a1);
  }

  v24 = a1[1];
  if (v24)
  {
    CFRelease(v24);
  }

  v25 = a1[2];
  if (v25)
  {
    CFRelease(v25);
  }
}

uint64_t apPlayback_performRemoteActionInternal(uint64_t a1, const void *a2, const void *a3, void (*a4)(uint64_t, const void *, uint64_t), uint64_t a5)
{
  theDict = 0;
  if (*(CMBaseObjectGetDerivedStorage() + 184))
  {
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    v11 = Mutable;
    if (!Mutable)
    {
      APSLogErrorAt();
      Value = 0;
      Int64 = 4294950555;
      goto LABEL_7;
    }

    CFDictionarySetValue(Mutable, @"type", a2);
    if (a3)
    {
      CFDictionarySetValue(v11, @"params", a3);
    }

    v12 = apPlayback_sendPlistMessageCreatingReply(a1, 1633907822, v11, &theDict);
    if (!v12)
    {
      Int64 = CFDictionaryGetInt64();
      Value = CFDictionaryGetValue(theDict, @"params");
      goto LABEL_7;
    }

    Int64 = v12;
    APSLogErrorAt();
  }

  else
  {
    Int64 = 0;
    v11 = 0;
  }

  Value = 0;
LABEL_7:
  if (a4)
  {
    a4(Int64, Value, a5);
  }

  if (v11)
  {
    CFRelease(v11);
  }

  if (theDict)
  {
    CFRelease(theDict);
  }

  return Int64;
}

void apPlayback_removePlayQueueItemInternal(uint64_t a1)
{
  OUTLINED_FUNCTION_44(a1);
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 184))
  {
    v3 = DerivedStorage;
    Value = CFDictionaryGetValue(*(v1 + 8), *MEMORY[0x277CC1020]);
    if (Value)
    {
      v5 = Value;
      v6 = *(v3 + 216);
      if (v6)
      {
        APLocalPlaybackServerUnRegisterUUID(v6, v5);
      }

      Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
      v8 = Mutable;
      if (Mutable)
      {
        CFDictionarySetValue(Mutable, @"item", *(v1 + 8));
        OUTLINED_FUNCTION_4_17();
        v14 = apPlayback_performRemoteActionInternal(v9, v10, v11, v12, v13);
        if (v14)
        {
          APSLogErrorAt();
        }
      }

      else
      {
        APSLogErrorAt();
        v14 = 4294950555;
      }
    }

    else
    {
      APSLogErrorAt();
      v8 = 0;
      v14 = 4294950556;
    }
  }

  else
  {
    v14 = 0;
    v8 = 0;
  }

  v15 = *(v1 + 16);
  if (v15)
  {
    v15(v14, *(v1 + 24));
  }

  if (v8)
  {
    CFRelease(v8);
  }

  v16 = *(v1 + 8);
  if (v16)
  {
    CFRelease(v16);
  }

  v17 = *v1;
  if (*v1)
  {

    CFRelease(v17);
  }
}

void apPlayback_stopInternal(uint64_t a1)
{
  OUTLINED_FUNCTION_44(a1);
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v3 = *(DerivedStorage + 184);
  if (v3)
  {
    v4 = DerivedStorage;
    v5 = *(*(CMBaseObjectGetVTable() + 16) + 56);
    if (v5)
    {
      v3 = v5(v3, 1937010544, 0, 0);
      if (!v3)
      {
        apPlayback_unsubscribeMetadataEvents(*v1);
        FigSimpleMutexLock();
        *(v4 + 72) = 0;
        FigSimpleMutexUnlock();
        FigSimpleMutexLock();
        *(v4 + 56) = 0;
        apPlayback_handlePlaybackStateChanged(*v1, *MEMORY[0x277CC11C8]);
        FigSimpleMutexUnlock();
        CMNotificationCenterGetDefaultLocalCenter();
        FigDispatchAsyncPostNotification();
        goto LABEL_7;
      }
    }

    else
    {
      v3 = 4294954514;
    }

    APSLogErrorAt();
  }

LABEL_7:
  v6 = v1[1];
  if (v6)
  {
    v6(v3, v1[2]);
  }

  v7 = *v1;

  CFRelease(v7);
}

void apPlayback_getPlaybackInfoInternal(uint64_t a1)
{
  OUTLINED_FUNCTION_44(a1);
  v22 = 0;
  v23 = 0;
  v2 = *(CMBaseObjectGetDerivedStorage() + 184);
  if (!v2)
  {
    v20 = 0;
    Value = 0;
    goto LABEL_24;
  }

  v3 = *(*(CMBaseObjectGetVTable() + 16) + 56);
  if (!v3)
  {
    Value = 4294954514;
LABEL_12:
    APSLogErrorAt();
    v20 = 0;
    goto LABEL_24;
  }

  v4 = v3(v2, 1886283375, 0, &v23);
  if (v4)
  {
    Value = v4;
    goto LABEL_12;
  }

  v5 = v23;
  cf = 0;
  CFDataWithBlockBufferNoCopy = FigCreateCFDataWithBlockBufferNoCopy();
  if (CFDataWithBlockBufferNoCopy)
  {
    Value = CFDataWithBlockBufferNoCopy;
    APSLogErrorAt();
    v20 = 0;
    v13 = 0;
    v19 = 0;
    goto LABEL_16;
  }

  OUTLINED_FUNCTION_4_17();
  v12 = CFPropertyListCreateWithData(v7, v8, v9, v10, v11);
  v13 = v12;
  if (!v12 || (v14 = CFGetTypeID(v12), v14 != CFDictionaryGetTypeID()))
  {
    APSLogErrorAt();
    v20 = 0;
    v19 = 0;
    Value = 4294950556;
    goto LABEL_16;
  }

  Value = CFDictionaryGetValue(v13, *MEMORY[0x277CC1060]);
  if (Value)
  {
    v16 = CMGetAttachment(v5, *MEMORY[0x277CEA358], 0);
    if (v16)
    {
      memset(&v25, 0, sizeof(v25));
      CMTimeMakeFromDictionary(&v25, v16);
      v17 = MEMORY[0x223DB0080](Value);
      time = v25;
      Seconds = CMTimeGetSeconds(&time);
      v19 = CFDateCreate(0, v17 + Seconds);
      if (!v19)
      {
        APSLogErrorAt();
        v20 = 0;
        Value = 4294950555;
        goto LABEL_16;
      }

      CFDictionarySetValue(v13, @"Start-Estimated-Date", v19);
      Value = 0;
      goto LABEL_15;
    }

    Value = 0;
  }

  v19 = 0;
LABEL_15:
  v20 = v13;
  v13 = 0;
LABEL_16:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v13)
  {
    CFRelease(v13);
  }

  if (v19)
  {
    CFRelease(v19);
  }

  if (Value || (Value = APEndpointPlaybackSessionCreatePlayPlaybackInfoTimesInCMTime(v20, &v22), Value))
  {
    APSLogErrorAt();
  }

LABEL_24:
  v21 = *(v1 + 8);
  if (v21)
  {
    v21(v22, Value, *(v1 + 16));
  }

  if (v23)
  {
    CFRelease(v23);
  }

  if (v20)
  {
    CFRelease(v20);
  }

  if (v22)
  {
    CFRelease(v22);
  }

  CFRelease(*v1);
}

void apPlayback_setProxiedPropertyInternal(uint64_t a1)
{
  OUTLINED_FUNCTION_44(a1);
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v21 = 0;
  if (!*(DerivedStorage + 184))
  {
    Mutable = 0;
    v14 = 0;
    v16 = 0;
    goto LABEL_14;
  }

  v3 = DerivedStorage;
  v4 = OUTLINED_FUNCTION_23();
  Mutable = CFDictionaryCreateMutable(v4, v5, v6, v7);
  if (!Mutable || (v9 = ASPrintF(&v21, "/setProperty?%@", *(v1 + 8)), !v21))
  {
    APSLogErrorAt();
    v14 = 0;
LABEL_30:
    v16 = 4294950555;
    goto LABEL_14;
  }

  OUTLINED_FUNCTION_11_6(v9, *MEMORY[0x277CEA380], v21);
  v10 = OUTLINED_FUNCTION_23();
  v14 = CFDictionaryCreateMutable(v10, v11, v12, v13);
  if (!v14)
  {
    APSLogErrorAt();
    goto LABEL_30;
  }

  if (*(v1 + 16))
  {
    if (FigCFEqual() && APEndpointDescriptionIsSourceVersionOlderThan(*(v3 + 32), 0x657DA5u))
    {
      FigCFDictionaryGetValue();
      FigCFDictionarySetValue();
    }

    else
    {
      CFDictionarySetValue(v14, @"qualifier", *(v1 + 16));
    }
  }

  v15 = *(v1 + 24);
  if (v15)
  {
    CFDictionarySetValue(v14, @"value", v15);
  }

  v16 = apPlayback_sendSpecialPlistMessageCreatingReply(*v1, 1936748658, Mutable, v14, 0);
  if (v16)
  {
    APSLogErrorAt();
  }

LABEL_14:
  v17 = *(v1 + 32);
  if (v17)
  {
    v17(0, v16, *(v1 + 40));
  }

  free(v21);
  if (Mutable)
  {
    CFRelease(Mutable);
  }

  if (v14)
  {
    CFRelease(v14);
  }

  v18 = *(v1 + 8);
  if (v18)
  {
    CFRelease(v18);
  }

  v19 = *(v1 + 16);
  if (v19)
  {
    CFRelease(v19);
  }

  v20 = *(v1 + 24);
  if (v20)
  {
    CFRelease(v20);
  }

  CFRelease(*v1);
}

void apPlayback_setRateInternal(uint64_t *a1)
{
  v80 = *MEMORY[0x277D85DE8];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v78 = 0u;
  v79 = 0u;
  v76 = 0u;
  v77 = 0u;
  v74 = 0u;
  v75 = 0u;
  *__str = 0u;
  v73 = 0u;
  memset(v71, 0, sizeof(v71));
  v69 = *MEMORY[0x277CC0898];
  v70 = *(MEMORY[0x277CC0898] + 16);
  v3 = *MEMORY[0x277CEA280];
  v66 = *MEMORY[0x277CEA280];
  v4 = *(MEMORY[0x277CEA280] + 16);
  v67 = v4;
  if (!*(DerivedStorage + 184))
  {
    v47 = 0;
    Mutable = 0;
    goto LABEL_46;
  }

  v5 = DerivedStorage;
  v56 = v3;
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (!Mutable)
  {
    APSLogErrorAt();
    v23 = 0;
    v47 = 4294950555;
    goto LABEL_36;
  }

  v7 = *(v5 + 32);
  v8 = *(*(CMBaseObjectGetVTable() + 16) + 16);
  if (v8)
  {
    v9 = v8(v7, 69) != 0;
  }

  else
  {
    v9 = 0;
  }

  if (a1[2])
  {
    v10 = *MEMORY[0x277CC0F38];
    Int64 = CFDictionaryGetInt64();
    v12 = a1[2];
    v13 = &unk_27CFF1000;
    if (v12 != 0 && v9)
    {
      Value = CFDictionaryGetValue(v12, *MEMORY[0x277CC0F60]);
      if (FigCFDictionaryGetCMTimeIfPresent())
      {
        v23 = *(v5 + 24);
        if (!v23)
        {
          APSLogErrorAt();
          v47 = 4294950553;
          goto LABEL_36;
        }

        if (BYTE12(v69))
        {
          OUTLINED_FUNCTION_5_12(v15, v16, v17, v18, v19, v20, v21, v22, v52, v54, *&v56, *(&v56 + 1), v58, v60, v62, v64, *&v66, *(&v66 + 1), v67, v68, *&v69);
          v25 = CMClockConvertHostTimeToSystemUnits(v24);
          v26 = *(*(CMBaseObjectGetVTable() + 16) + 16);
          if (!v26 || v26(v23, v25, &v66))
          {
            if (gLogCategory_APEndpointPlaybackSessionAirPlay <= 90 && (gLogCategory_APEndpointPlaybackSessionAirPlay != -1 || _LogCategory_Initialize()))
            {
              v35 = *a1;
              OUTLINED_FUNCTION_5_12(v27, v28, v29, v30, v31, v32, v33, v34, v53, v55, *&v57, *(&v57 + 1), v59, v61, v63, v65, *&v66, *(&v66 + 1), v67, v68, *&v69);
              Seconds = CMTimeGetSeconds(v36);
              LogPrintF(&gLogCategory_APEndpointPlaybackSessionAirPlay, "void apPlayback_setRateInternal(void *)", 33554522, "[%{ptr}] Failed to convert to NetworkClockTime, hostClockTime:  %.3f", v35, *&Seconds);
            }

            v66 = v57;
            v67 = v4;
          }
        }

        v23 = APSNetworkTimeCopyAsDictionary();
        v13 = &unk_27CFF1000;
        goto LABEL_21;
      }
    }

    else
    {
      Value = 0;
    }

    v23 = 0;
LABEL_21:
    if (Value | v23)
    {
      FigCFDictionarySetFloat32();
      FigCFDictionarySetValue();
      FigCFDictionarySetValue();
      if (Int64)
      {
        CFDictionarySetValue(Mutable, v10, *MEMORY[0x277CBED28]);
      }

      v39 = v13[44];
      if (v39 <= 30 && (v39 != -1 || OUTLINED_FUNCTION_10(&gLogCategory_APEndpointPlaybackSessionAirPlay)))
      {
        OUTLINED_FUNCTION_4_1(&gLogCategory_APEndpointPlaybackSessionAirPlay, "void apPlayback_setRateInternal(void *)", v38, "sending kAPSTransportMessageType_Playback_SetRateAndAnchorTime");
      }

      v48 = apPlayback_sendPlistMessageCreatingReply(*a1, 1918984564, Mutable, 0);
      if (v48)
      {
        v47 = v48;
        APSLogErrorAt();
        goto LABEL_36;
      }

      goto LABEL_33;
    }

    if (Int64)
    {
      strcpy(v71, "&forInterstitial=1");
      BYTE3(v71[1]) = unk_22229855B;
      DWORD1(v71[1]) = unk_22229855C;
      *(&v71[1] + 1) = unk_222298560;
    }
  }

  v40 = snprintf(__str, 0x80uLL, "/rate?value=%f%s", *(a1 + 2), v71);
  OUTLINED_FUNCTION_11_6(v40, *MEMORY[0x277CEA380], __str);
  OUTLINED_FUNCTION_4_17();
  v46 = apPlayback_sendSpecialPlistMessageCreatingReply(v41, v42, v43, v44, v45);
  v23 = 0;
  if (v46)
  {
    v47 = v46;
    APSLogErrorAt();
LABEL_46:
    v23 = 0;
    goto LABEL_36;
  }

LABEL_33:
  FigSimpleMutexLock();
  v49 = MEMORY[0x277CC11B8];
  if (*(a1 + 2) != 0.0)
  {
    v49 = MEMORY[0x277CC11C0];
  }

  apPlayback_handlePlaybackStateChanged(*a1, *v49);
  FigSimpleMutexUnlock();
  v47 = 0;
LABEL_36:
  v50 = a1[3];
  if (v50)
  {
    v50(v47, a1[4]);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  CFRelease(*a1);
  v51 = a1[2];
  if (v51)
  {
    CFRelease(v51);
  }

  if (v23)
  {
    CFRelease(v23);
  }
}

void apPlayback_getProxiedPropertyInternal(uint64_t a1)
{
  OUTLINED_FUNCTION_44(a1);
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  theDict = 0;
  v22 = 0;
  if (!*(DerivedStorage + 184))
  {
    Mutable = 0;
    v14 = 0;
    Value = 0;
    Int64 = 0;
    goto LABEL_12;
  }

  v3 = DerivedStorage;
  v4 = OUTLINED_FUNCTION_23();
  Mutable = CFDictionaryCreateMutable(v4, v5, v6, v7);
  if (!Mutable)
  {
    APSLogErrorAt();
    v14 = 0;
    goto LABEL_29;
  }

  v9 = ASPrintF(&v22, "/getProperty?%@", *(v1 + 8));
  OUTLINED_FUNCTION_11_6(v9, *MEMORY[0x277CEA380], v22);
  if (*(v1 + 16))
  {
    v10 = OUTLINED_FUNCTION_23();
    v14 = CFDictionaryCreateMutable(v10, v11, v12, v13);
    if (v14)
    {
      if (FigCFEqual() && APEndpointDescriptionIsSourceVersionOlderThan(*(v3 + 32), 0x657DA5u))
      {
        FigCFDictionaryGetValue();
        FigCFDictionarySetValue();
      }

      else
      {
        CFDictionarySetValue(v14, @"qualifier", *(v1 + 16));
      }

      goto LABEL_10;
    }

    APSLogErrorAt();
LABEL_29:
    Value = 0;
    Int64 = 4294950555;
    goto LABEL_12;
  }

  v14 = 0;
LABEL_10:
  v15 = apPlayback_sendSpecialPlistMessageCreatingReply(*v1, 1735422066, Mutable, v14, &theDict);
  if (v15)
  {
    Int64 = v15;
    APSLogErrorAt();
    Value = 0;
  }

  else
  {
    Int64 = CFDictionaryGetInt64();
    Value = CFDictionaryGetValue(theDict, @"value");
  }

LABEL_12:
  v18 = *(v1 + 24);
  if (v18)
  {
    v18(*(v1 + 8), Value, Int64, *(v1 + 32));
  }

  free(v22);
  if (Mutable)
  {
    CFRelease(Mutable);
  }

  if (v14)
  {
    CFRelease(v14);
  }

  if (theDict)
  {
    CFRelease(theDict);
  }

  CFRelease(*v1);
  v19 = *(v1 + 8);
  if (v19)
  {
    CFRelease(v19);
  }

  v20 = *(v1 + 16);
  if (v20)
  {
    CFRelease(v20);
  }
}

void apPlayback_deferredPerformRemoteActionInternal(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_44(a1);
  apPlayback_performRemoteActionInternal(v2, *(v1 + 8), *(v1 + 16), *(v1 + 24), *(v1 + 32));
  CFRelease(*v1);
  v3 = *(v1 + 8);
  if (v3)
  {
    CFRelease(v3);
  }

  v4 = *(v1 + 16);
  if (v4)
  {

    CFRelease(v4);
  }
}

void apPlayback_processPendingAudioVolumeChanges(const void *a1)
{
  v23 = *MEMORY[0x277D85DE8];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  *__str = 0u;
  v16 = 0u;
  if (*(DerivedStorage + 184))
  {
    v3 = DerivedStorage;
    FigSimpleMutexLock();
    v4 = *(v3 + 92);
    *(v3 + 92) = 0;
    FigSimpleMutexUnlock();
    if (v4)
    {
      if (gLogCategory_APEndpointPlaybackSessionAirPlay <= 30 && (gLogCategory_APEndpointPlaybackSessionAirPlay != -1 || OUTLINED_FUNCTION_10(&gLogCategory_APEndpointPlaybackSessionAirPlay)))
      {
        OUTLINED_FUNCTION_4_1(&gLogCategory_APEndpointPlaybackSessionAirPlay, "void apPlayback_processPendingAudioVolumeChanges(void *)", v5, "[%{ptr}] %###s called volumeDB=%.2f.\n");
      }

      Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
      if (Mutable)
      {
        v7 = Mutable;
        APSVolumeConvertDBToClampedSliderValue();
        v9 = snprintf(__str, 0x80uLL, "/volume?volume=%f", v8);
        OUTLINED_FUNCTION_11_6(v9, *MEMORY[0x277CEA380], __str);
        OUTLINED_FUNCTION_4_17();
        if (apPlayback_sendSpecialPlistMessageCreatingReply(v10, v11, v12, v13, v14))
        {
          APSLogErrorAt();
        }

        CFRelease(v7);
      }

      else
      {
        APSLogErrorAt();
      }
    }
  }

  CFRelease(a1);
}

uint64_t apPlayback_CopyProperty_cold_1(_DWORD *a1)
{
  result = APSLogErrorAt();
  *a1 = -16741;
  return result;
}

uint64_t apPlayback_CopyProperty_cold_2(_DWORD *a1)
{
  result = APSLogErrorAt();
  *a1 = -12785;
  return result;
}

uint64_t apPlayback_Play_cold_1(const __CFDictionary *a1)
{
  CFDictionaryGetValue(a1, *MEMORY[0x277CC1020]);
  CFDictionaryContainsKey(a1, *MEMORY[0x277CC0F90]);
  return OUTLINED_FUNCTION_2(&gLogCategory_APEndpointPlaybackSessionAirPlay, "OSStatus apPlayback_Play(FigEndpointPlaybackSessionRef, CFDictionaryRef, FigEndpointPlaybackSessionStandardCompletion, void *)", v2, "[%{ptr}] Play %'@ (%s)\n");
}

uint64_t apPlayback_InsertPlayQueueItem_cold_1(const __CFDictionary *a1, const __CFDictionary *a2)
{
  v4 = *MEMORY[0x277CC1020];
  CFDictionaryGetValue(a1, *MEMORY[0x277CC1020]);
  CFDictionaryContainsKey(a1, *MEMORY[0x277CC0F90]);
  if (a2)
  {
    CFDictionaryGetValue(a2, v4);
  }

  return OUTLINED_FUNCTION_2(&gLogCategory_APEndpointPlaybackSessionAirPlay, "OSStatus apPlayback_InsertPlayQueueItem(FigEndpointPlaybackSessionRef, CFDictionaryRef, CFDictionaryRef, FigEndpointPlaybackSessionStandardCompletion, void *)", v5, "[%{ptr}] InsertPlayQueueItem %'@ (%s) after: %'@\n");
}

uint64_t apPlayback_SeekToTime_cold_1(CMTime *a1)
{
  time = *a1;
  CMTimeGetSeconds(&time);
  return OUTLINED_FUNCTION_2(&gLogCategory_APEndpointPlaybackSessionAirPlay, "OSStatus apPlayback_SeekToTime(FigEndpointPlaybackSessionRef, CMTime, CFDictionaryRef, FigEndpointPlaybackSessionSeekCompletion, void *)", v1, "[%{ptr}] Seek to time %.3f\n");
}

double __apPlayback_handleMessageCreatingReply_block_invoke_cold_1(const void *a1, void *a2)
{
  APSLogErrorAt();
  CFRelease(a1);
  FigSimpleMutexUnlock();
  return result;
}

void __apPlayback_handleMessageCreatingReply_block_invoke_cold_9()
{
  v0 = [MEMORY[0x277CCA890] currentHandler];
  [v0 handleFailureInFunction:objc_msgSend(MEMORY[0x277CCACA8] file:"stringWithUTF8String:" lineNumber:"Boolean soft_MRMediaRemoteSendCommand(MRMediaRemoteCommand description:{CFDictionaryRef)"), @"APSenderMediaRemoteSoftLinking.h", 163, @"%s", dlerror()}];
  __break(1u);
}

uint64_t apPlayback_seekToTimeInternal_cold_8(int a1, uint64_t a2, uint64_t a3)
{
  if (a1 != -1)
  {
    return OUTLINED_FUNCTION_4_1(&gLogCategory_APEndpointPlaybackSessionAirPlay, "void apPlayback_deleteUnusedSeekToTimeRequest(FigEndpointPlaybackSessionRef, CFNumberRef)", a3, "[%{ptr}] %###s inMessageID=%@\n");
  }

  result = OUTLINED_FUNCTION_10(&gLogCategory_APEndpointPlaybackSessionAirPlay);
  if (result)
  {
    return OUTLINED_FUNCTION_4_1(&gLogCategory_APEndpointPlaybackSessionAirPlay, "void apPlayback_deleteUnusedSeekToTimeRequest(FigEndpointPlaybackSessionRef, CFNumberRef)", a3, "[%{ptr}] %###s inMessageID=%@\n");
  }

  return result;
}

uint64_t streamAggregateAudio_enableLocalPlayback(void *a1, char a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  cf = 0;
  if (FigCFEqual())
  {
    APSLogErrorAt();
    v5 = APSSignalErrorAt();
  }

  else if (*(DerivedStorage + 128))
  {
    v5 = 0;
  }

  else
  {
    v5 = APEndpointStreamLocalCreate(0, @"Local Playback Stream", *(DerivedStorage + 192), 0, *(DerivedStorage + 184), a2, &cf);
    if (v5)
    {
      APSLogErrorAt();
    }

    else
    {
      streamAggregateAudio_addSubStream(a1, @"localEndpointKey", cf);
      streamAggregateAudio_updateDynamicProperties(a1, 0);
      CFDictionaryApplyFunction(*(DerivedStorage + 120), streamAggregateAudio_setPropertyForLocalSubStreamIterator, a1);
    }
  }

  if (cf)
  {
    CFRelease(cf);
  }

  return v5;
}

uint64_t streamAggregateAudio_SetProperty(void *a1, uint64_t a2, const void *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  if (FigCFEqual())
  {
    if (a3)
    {
      v7 = CFGetTypeID(a3);
      if (v7 == CFBooleanGetTypeID())
      {
        if (*(CMBaseObjectGetDerivedStorage() + 202))
        {
          v8 = CFGetTypeID(a3);
          if (v8 == CFBooleanGetTypeID())
          {
            if (gLogCategory_APEndpointStreamAggregateAudio <= 50 && (gLogCategory_APEndpointStreamAggregateAudio != -1 || OUTLINED_FUNCTION_4(&gLogCategory_APEndpointStreamAggregateAudio)))
            {
              OUTLINED_FUNCTION_2(&gLogCategory_APEndpointStreamAggregateAudio, "OSStatus streamAggregateAudio_setAndCacheEnableLocalPlayback(FigEndpointStreamRef, CFTypeRef)", v9, "[%{ptr}] Setting setAndCacheEnableLocalPlayback to %@");
            }

            if (CFBooleanGetValue(a3))
            {
              v19 = streamAggregateAudio_enableLocalPlayback(a1, 1);
              if (!v19)
              {
LABEL_28:
                FigCFDictionarySetValue();
LABEL_29:
                v11 = 0;
                goto LABEL_30;
              }

              v11 = v19;
            }

            else
            {
              v13 = CMBaseObjectGetDerivedStorage();
              if (!*(v13 + 128))
              {
                goto LABEL_28;
              }

              FigEndpointStreamSuspend();
              v14 = *(v13 + 128);
              v15 = *(*(CMBaseObjectGetVTable() + 16) + 32);
              v11 = v15 ? v15(v14) : 4294954514;
              CFDictionaryRemoveValue(*(v13 + 32), @"localEndpointKey");
              streamAggregateAudio_removeSubStreamNotificationListeners(a1);
              streamAggregateAudio_updateDynamicProperties(a1, 0);
              v16 = *(v13 + 128);
              if (v16)
              {
                CFRelease(v16);
                *(v13 + 128) = 0;
              }

              if (!v11)
              {
                goto LABEL_28;
              }
            }

            APSLogErrorAt();
          }

          else
          {
            APSLogErrorAt();
            v11 = 4294950536;
          }
        }

        else
        {
          APSLogErrorAt();
          v11 = APSSignalErrorAt();
          if (!v11)
          {
            goto LABEL_30;
          }
        }

LABEL_52:
        APSLogErrorAt();
        goto LABEL_30;
      }
    }

    goto LABEL_53;
  }

  if (!FigCFEqual())
  {
    if (FigCFEqual())
    {
      v12 = DerivedStorage[17];
      DerivedStorage[17] = a3;
      if (a3)
      {
        CFRetain(a3);
      }

      if (v12)
      {
        CFRelease(v12);
      }

      goto LABEL_29;
    }

    if (!FigCFEqual())
    {
      if (FigCFEqual())
      {
        v20 = DerivedStorage[16];
        if (!v20)
        {
          goto LABEL_29;
        }

        v11 = FigEndpointStreamSetProperty(v20, a2, a3);
        if (!v11)
        {
          goto LABEL_30;
        }
      }

      else if (FigCFEqual())
      {
        v21 = DerivedStorage[16];
        if (!v21)
        {
          goto LABEL_29;
        }

        v11 = FigEndpointStreamSetProperty(v21, a2, a3);
        if (!v11)
        {
          goto LABEL_30;
        }
      }

      else
      {
        v11 = streamAggregateAudio_setPropertyForAllSubStreamsInternal(a1, a2, a3);
        if (!v11)
        {
          goto LABEL_30;
        }
      }

      goto LABEL_52;
    }

    if (a3)
    {
      v18 = CFGetTypeID(a3);
      if (v18 == CFNumberGetTypeID())
      {
        CFNumberGetValue(a3, kCFNumberSInt32Type, DerivedStorage + 148);
        goto LABEL_29;
      }
    }

LABEL_53:
    APSLogErrorAt();
    v11 = 4294950536;
    goto LABEL_30;
  }

  if (!a3)
  {
    goto LABEL_53;
  }

  v10 = CFGetTypeID(a3);
  if (v10 != CFNumberGetTypeID())
  {
    goto LABEL_53;
  }

  v11 = streamAggregateAudio_setAndCacheBufferedLocalVolume(a1, a3);
  if (v11)
  {
    goto LABEL_52;
  }

LABEL_30:
  FigSimpleMutexUnlock();
  return v11;
}

uint64_t streamAggregateAudio_copySupportedAudioCapabilities(uint64_t a1, CFDictionaryRef *a2)
{
  keys[1] = *MEMORY[0x277D85DE8];
  CMBaseObjectGetDerivedStorage();
  cf = 0;
  if (!FigCFEqual())
  {
    v12 = 0;
    goto LABEL_11;
  }

  v4 = streamAggregateAudio_copySupportedAudioFormatForBufferAudio(a1, &cf);
  if (v4)
  {
    v12 = v4;
LABEL_18:
    APSLogErrorAt();
    goto LABEL_11;
  }

  FilteredListWithTranscodeFormats = APSAudioFormatDescriptionListCreateFilteredListWithTranscodeFormats();
  if (FilteredListWithTranscodeFormats)
  {
    v12 = FilteredListWithTranscodeFormats;
    goto LABEL_18;
  }

  v6 = APSAudioFormatDescriptionListCopyChannelLayoutTagsDataArray();
  if (v6)
  {
    v12 = v6;
    goto LABEL_18;
  }

  v7 = *MEMORY[0x277CBECE8];
  v8 = *MEMORY[0x277CC1958];
  values = 0;
  keys[0] = v8;
  v9 = CFDictionaryCreate(v7, keys, &values, 1, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (v9)
  {
    v11 = v9;
    if (gLogCategory_APEndpointStreamAggregateAudio <= 50 && (gLogCategory_APEndpointStreamAggregateAudio != -1 || OUTLINED_FUNCTION_4(&gLogCategory_APEndpointStreamAggregateAudio)))
    {
      OUTLINED_FUNCTION_2(&gLogCategory_APEndpointStreamAggregateAudio, "OSStatus streamAggregateAudio_copySupportedAudioCapabilities(FigEndpointStreamRef, CFDictionaryRef *)", v10, "[%{ptr}] SupportedAudioCapabilities: %@");
    }

    v12 = 0;
    *a2 = v11;
  }

  else
  {
    APSLogErrorAt();
    v12 = 4294951816;
  }

LABEL_11:
  if (cf)
  {
    CFRelease(cf);
  }

  return v12;
}

void __streamAggregateAudio_copySupportedAudioFormatForBufferAudio_block_invoke(void *a1, CFTypeRef cf, uint64_t a3)
{
  cfa = 0;
  if (!*(*(a1[4] + 8) + 24))
  {
    if (cf)
    {
      v4 = CFGetTypeID(cf);
      if (v4 == FigEndpointGetTypeID())
      {
        CMBaseObject = FigEndpointGetCMBaseObject();
        v6 = *(*(CMBaseObjectGetVTable() + 8) + 48);
        if (v6)
        {
          v7 = v6(CMBaseObject, *MEMORY[0x277CC12C8], *MEMORY[0x277CBECE8], &cfa);
          v8 = cfa;
        }

        else
        {
          v8 = 0;
          v7 = -12782;
        }

        *(*(a1[4] + 8) + 24) = v7;
        *(*(a1[4] + 8) + 24) = 0;
        if (v8)
        {
          if (APEndpointFigEndpointClusterTypeToAPSClusterType(v8) == 2)
          {
            *(*(a1[5] + 8) + 24) = 2;
          }
        }
      }
    }

    if (APSGetFBOPropertyInt64())
    {
      *(*(a1[6] + 8) + 24) = 1;
    }
  }

  if (cfa)
  {
    CFRelease(cfa);
  }
}

uint64_t streamAggregateAudio_setAndCacheBufferedLocalVolume(uint64_t a1, const void *a2)
{
  if (!*(CMBaseObjectGetDerivedStorage() + 128) || !FigCFEqual())
  {
    return 0;
  }

  if (!a2 || (v3 = CFGetTypeID(a2), v3 != CFNumberGetTypeID()))
  {
    APSLogErrorAt();
    return 4294950536;
  }

  if (gLogCategory_APEndpointStreamAggregateAudio <= 50 && (gLogCategory_APEndpointStreamAggregateAudio != -1 || OUTLINED_FUNCTION_4(&gLogCategory_APEndpointStreamAggregateAudio)))
  {
    OUTLINED_FUNCTION_2(&gLogCategory_APEndpointStreamAggregateAudio, "OSStatus streamAggregateAudio_setAndCacheBufferedLocalVolume(FigEndpointStreamRef, CFTypeRef)", v4, "[%{ptr}] Setting setAndCacheBufferedLocalVolume to %@");
  }

  CMBaseObject = FigEndpointStreamGetCMBaseObject();
  v6 = *(*(CMBaseObjectGetVTable() + 8) + 56);
  if (!v6)
  {
    v7 = 4294954514;
    goto LABEL_13;
  }

  v7 = v6(CMBaseObject, *MEMORY[0x277CC17B0], a2);
  if (v7)
  {
LABEL_13:
    APSLogErrorAt();
    return v7;
  }

  FigCFDictionarySetValue();
  return v7;
}

void streamAggregateAudio_resumeTimerCallback(uint64_t a1)
{
  v1 = FigCFWeakReferenceHolderCopyReferencedObject();
  if (v1)
  {
    v2 = v1;
    Value = APSWrapperGetValue();
    CMBaseObjectGetDerivedStorage();
    FigSimpleMutexLock();
    if (gLogCategory_APEndpointStreamAggregateAudio <= 50 && (gLogCategory_APEndpointStreamAggregateAudio != -1 || OUTLINED_FUNCTION_4(&gLogCategory_APEndpointStreamAggregateAudio)))
    {
      OUTLINED_FUNCTION_2(&gLogCategory_APEndpointStreamAggregateAudio, "void streamAggregateAudio_resumeTimerCallback(void *)", v4, "[%{ptr}] Aggregate stream resume timer fired for context %{ptr}\n");
    }

    *(Value + 41) = 1;
    v5 = *(Value + 48);
    if (v5)
    {
      dispatch_source_cancel(*(Value + 48));
      dispatch_release(v5);
      *(Value + 48) = 0;
    }

    if (!*(Value + 40) && *(Value + 32) <= 0)
    {
      streamAggregateAudio_resumeCallClientCallback(v2);
      *(Value + 40) = 1;
    }

    FigSimpleMutexUnlock();

    CFRelease(v2);
  }
}

uint64_t streamAggregateAudio_setPropertyForLocalSubStreamIterator(uint64_t a1, const void *a2, uint64_t a3)
{
  result = CMBaseObjectGetDerivedStorage();
  if (*(result + 128))
  {
    result = FigCFEqual();
    if (!result)
    {
      result = FigCFEqual();
      if (result)
      {
        result = streamAggregateAudio_setAndCacheBufferedLocalVolume(a3, a2);
        if (result)
        {

          return APSLogErrorAt();
        }
      }
    }
  }

  return result;
}

uint64_t APEndpointStreamAggregateAudioCreate_cold_7(_DWORD *a1)
{
  APSLogErrorAt();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t APEndpointStreamAggregateAudioCreate_cold_9(_DWORD *a1)
{
  APSLogErrorAt();
  result = APSSignalErrorAt();
  *a1 = result;
  return result;
}

uint64_t APEndpointStreamAggregateAudioCreate_cold_10(_DWORD *a1)
{
  APSLogErrorAt();
  result = APSSignalErrorAt();
  *a1 = result;
  return result;
}

void streamAggregateAudio_copySupportedAudioFormats_cold_2(uint64_t *a1)
{
  OUTLINED_FUNCTION_3_16(a1);
  if (gLogCategory_APEndpointStreamAggregateAudio <= 50 && (gLogCategory_APEndpointStreamAggregateAudio != -1 || OUTLINED_FUNCTION_4(&gLogCategory_APEndpointStreamAggregateAudio)))
  {
    OUTLINED_FUNCTION_2(&gLogCategory_APEndpointStreamAggregateAudio, "OSStatus streamAggregateAudio_copySupportedAudioFormats(FigEndpointStreamRef, APSAudioFormatDescriptionListRef *)", v2, "[%{ptr}] bufferAudio aggregate supported AudioFormats. supportedFormats=%@");
  }

  if (*v1)
  {
    CFRelease(*v1);
  }
}

void streamAggregateAudio_updateDynamicProperties_cold_2(uint64_t *a1)
{
  OUTLINED_FUNCTION_3_16(a1);
  if (gLogCategory_APEndpointStreamAggregateAudio <= 50 && (gLogCategory_APEndpointStreamAggregateAudio != -1 || OUTLINED_FUNCTION_4(&gLogCategory_APEndpointStreamAggregateAudio)))
  {
    OUTLINED_FUNCTION_2(&gLogCategory_APEndpointStreamAggregateAudio, "OSStatus streamAggregateAudio_updateDynamicProperties(FigEndpointStreamRef, Boolean *)", v2, "[%{ptr}] Current stream(%{ptr}) supports currentAudioFormats=%@");
  }

  if (*v1)
  {
    CFRelease(*v1);
  }
}

void streamAggregateAudio_updateDynamicProperties_cold_3(uint64_t a1, CFTypeRef *a2)
{
  APSAudioFormatDescriptionListCopyDebugString();
  if (gLogCategory_APEndpointStreamAggregateAudio <= 50 && (gLogCategory_APEndpointStreamAggregateAudio != -1 || OUTLINED_FUNCTION_4(&gLogCategory_APEndpointStreamAggregateAudio)))
  {
    OUTLINED_FUNCTION_5_13();
    OUTLINED_FUNCTION_2(&gLogCategory_APEndpointStreamAggregateAudio, "OSStatus streamAggregateAudio_updateDynamicProperties(FigEndpointStreamRef, Boolean *)", v3, "[%{ptr}] type=%@, state.supportedAudioFormats=%@");
  }

  if (*a2)
  {
    CFRelease(*a2);
  }
}

void streamAggregateAudio_updateDynamicProperties_cold_18(void *a1, CFTypeRef *a2)
{
  APSAudioFormatDescriptionListCopyDebugString();
  if (gLogCategory_APEndpointStreamAggregateAudio <= 50 && (gLogCategory_APEndpointStreamAggregateAudio != -1 || OUTLINED_FUNCTION_4(&gLogCategory_APEndpointStreamAggregateAudio)))
  {
    OUTLINED_FUNCTION_5_13();
    OUTLINED_FUNCTION_2(&gLogCategory_APEndpointStreamAggregateAudio, "OSStatus streamAggregateAudio_updateDynamicProperties(FigEndpointStreamRef, Boolean *)", v3, "[%{ptr}] type=%@, current supportedAudioFormats=%@");
  }

  if (*a2)
  {
    CFRelease(*a2);
  }
}

uint64_t streamAggregateAudio_triggerSuspendOrResume_cold_2(uint64_t a1, _DWORD *a2, uint64_t a3)
{
  if (gLogCategory_APEndpointStreamAggregateAudio <= 50)
  {
    if (gLogCategory_APEndpointStreamAggregateAudio != -1 || (result = OUTLINED_FUNCTION_4(&gLogCategory_APEndpointStreamAggregateAudio), result))
    {
      result = OUTLINED_FUNCTION_2(&gLogCategory_APEndpointStreamAggregateAudio, "OSStatus streamAggregateAudio_suspendInternal(FigEndpointStreamRef, APSWrapperRef)", a3, "[%{ptr}] hose registrar mismatch, suspend cancelled.\n");
    }
  }

  *a2 = 0;
  return result;
}

uint64_t streamAggregateAudio_triggerSuspendOrResume_cold_5(uint64_t a1, const void *a2, CFTypeRef *a3)
{
  APSLogErrorAt();
  if (a2)
  {
    CFRelease(a2);
  }

  if (*a3)
  {
    CFRelease(*a3);
  }

  return APSLogErrorAt();
}

void streamAggregateAudio_triggerSuspendOrResume_cold_10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (gLogCategory_APEndpointStreamAggregateAudio <= 50 && (gLogCategory_APEndpointStreamAggregateAudio != -1 || OUTLINED_FUNCTION_4(&gLogCategory_APEndpointStreamAggregateAudio)))
  {
    OUTLINED_FUNCTION_2(&gLogCategory_APEndpointStreamAggregateAudio, "OSStatus streamAggregateAudio_resumeInternal(FigEndpointStreamRef, APSWrapperRef)", a3, "[%{ptr}] was requested to use APAT, but it is not supported!\n");
  }

  streamAggregateAudio_updateDynamicProperties(a1, 0);
}

void streamAggregateAudio_triggerSuspendOrResume_cold_11(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (gLogCategory_APEndpointStreamAggregateAudio <= 50 && (gLogCategory_APEndpointStreamAggregateAudio != -1 || OUTLINED_FUNCTION_4(&gLogCategory_APEndpointStreamAggregateAudio)))
  {
    OUTLINED_FUNCTION_2(&gLogCategory_APEndpointStreamAggregateAudio, "OSStatus streamAggregateAudio_resumeInternal(FigEndpointStreamRef, APSWrapperRef)", a3, "[%{ptr}] was requested to use APAP, but it is not supported!\n");
  }

  streamAggregateAudio_updateDynamicProperties(a1, 0);
}

void streamAggregateAudio_copyTransportFormatDescriptionForSourceContentFormatDescription_cold_6(uint64_t *a1)
{
  OUTLINED_FUNCTION_3_16(a1);
  if (gLogCategory_APEndpointStreamAggregateAudio <= 50 && (gLogCategory_APEndpointStreamAggregateAudio != -1 || OUTLINED_FUNCTION_4(&gLogCategory_APEndpointStreamAggregateAudio)))
  {
    OUTLINED_FUNCTION_2(&gLogCategory_APEndpointStreamAggregateAudio, "OSStatus streamAggregateAudio_copyTransportFormatDescriptionForSourceContentFormatDescription(FigEndpointStreamAirPlayRef, FigEndpointStreamAudioFormatDescriptionRef, FigEndpointStreamAudioFormatDescriptionRef *)", v2, "[%{ptr}] copyTransportFormatDescriptionForSourceContentFormatDescription filtered list without ALAC=%@");
  }

  if (*v1)
  {
    CFRelease(*v1);
  }
}

void streamAggregateAudio_copyTransportFormatDescriptionForSourceContentFormatDescription_cold_8(uint64_t *a1)
{
  OUTLINED_FUNCTION_3_16(a1);
  if (gLogCategory_APEndpointStreamAggregateAudio <= 50 && (gLogCategory_APEndpointStreamAggregateAudio != -1 || OUTLINED_FUNCTION_4(&gLogCategory_APEndpointStreamAggregateAudio)))
  {
    OUTLINED_FUNCTION_2(&gLogCategory_APEndpointStreamAggregateAudio, "OSStatus streamAggregateAudio_copyTransportFormatDescriptionForSourceContentFormatDescription(FigEndpointStreamAirPlayRef, FigEndpointStreamAudioFormatDescriptionRef, FigEndpointStreamAudioFormatDescriptionRef *)", v2, "[%{ptr}] copyTransportFormatDescriptionForSourceContentFormatDescription filtered list=%@");
  }

  if (*v1)
  {
    CFRelease(*v1);
  }
}

double streamAggregateAudio_isPassthroughSupportedForFormatDescription_cold_1(uint64_t *a1)
{
  APSLogErrorAt();

  FigSimpleMutexUnlock();
  return result;
}

uint64_t emp_DumpHierarchy(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v9 = *(DerivedStorage + 8);
  if (*DerivedStorage == 1)
  {
    v10 = *MEMORY[0x277CC0C68];
  }

  else
  {
    v10 = 0;
  }

  v11 = (*(a5 + 16))(a5, a3, "EndpointManagerPlus:[%{ptr}] inner [%{ptr}] type %@\n", a1, *(DerivedStorage + 8), v10);
  if (v11)
  {
    v16 = v11;
    goto LABEL_21;
  }

  APSHierarchyReporterProtocolGetProtocolID();
  if (!CMBaseObjectImplementsProtocol())
  {
    return 0;
  }

  APSHierarchyReporterProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (!ProtocolVTable || (v13 = *(ProtocolVTable + 16)) == 0)
  {
    v16 = 4294954508;
LABEL_15:
    v16 = (*(a5 + 16))(a5, a3 + 1, "[Error] Object:[%{ptr}]%?s%?''@ cannot be dumped (error %#m) Parent:[%{ptr}]\n", v9, 0, " ", 0, 0, v16, a1);
    goto LABEL_16;
  }

  v14 = *(v13 + 8);
  if (!v14)
  {
    v16 = 4294954514;
    goto LABEL_15;
  }

  v15 = v14(v9, a1, a3 + 1, 0, a5);
  v16 = v15;
  if (v15 == -12782 || v15 == -12788)
  {
    goto LABEL_15;
  }

LABEL_16:
  if (v16)
  {
LABEL_21:
    APSLogErrorAt();
  }

  return v16;
}

void emp_restartCachePromotionDeadlineIfNecessary(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (emp_getCachePromotionDeadlineDuration_onceToken != -1)
  {
    dispatch_once(&emp_getCachePromotionDeadlineDuration_onceToken, &__block_literal_global_76);
  }

  v3 = _MergedGlobals_0;
  if (FigCFEqual() || FigCFEqual())
  {
    if (dword_280FB1478 <= 40 && (dword_280FB1478 != -1 || _LogCategory_Initialize()))
    {
      OUTLINED_FUNCTION_6(&dword_280FB1478, "void emp_restartCachePromotionDeadlineIfNecessary(FigEndpointManagerRef)", v4, "[%{ptr}] Restart cache promotion deadline (%llums)");
    }

    v5 = *(DerivedStorage + 104);
    if (!v5)
    {
      v6 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, 0);
      *(DerivedStorage + 104) = v6;
      handler[0] = MEMORY[0x277D85DD0];
      handler[1] = 3221225472;
      handler[2] = __emp_restartCachePromotionDeadlineIfNecessary_block_invoke;
      handler[3] = &unk_27849B1A8;
      handler[4] = a1;
      dispatch_source_set_event_handler(v6, handler);
      dispatch_activate(*(DerivedStorage + 104));
      v5 = *(DerivedStorage + 104);
    }

    v7 = dispatch_time(0, 1000000 * v3);
    dispatch_source_set_timer(v5, v7, 0xFFFFFFFFFFFFFFFFLL, 0x5F5E100uLL);
  }
}

double emp_postDelayedAvailableEndpointsChanged(uint64_t a1, void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  v5 = CMBaseObjectGetDerivedStorage();
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = [a2 objectForKeyedSubscript:@"Reason"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = *(v5 + 136);
      if (!v7)
      {
        v7 = objc_alloc_init(MEMORY[0x277CBEB18]);
        *(v5 + 136) = v7;
      }

      [v7 addObjectsFromArray:v6];
    }
  }

  if (!*(DerivedStorage + 128))
  {
    *(DerivedStorage + 128) = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, *(DerivedStorage + 112));
    OUTLINED_FUNCTION_2_20();
    v13 = 3221225472;
    v14 = __emp_postDelayedAvailableEndpointsChanged_block_invoke;
    v15 = &unk_27849B1A8;
    v16 = a1;
    dispatch_source_set_event_handler(v8, handler);
    v9 = *(DerivedStorage + 128);
    v10 = dispatch_time(0, 10000000);
    dispatch_source_set_timer(v9, v10, 0xFFFFFFFFFFFFFFFFLL, 0x5F5E100uLL);
    dispatch_activate(*(DerivedStorage + 128));
  }

  FigSimpleMutexUnlock();
  return result;
}

void *APEndpointManagerPlusCreate_cold_1(uint64_t *a1)
{
  v1 = *a1;
  result = CMBaseObjectGetDerivedStorage();
  if (!result[2])
  {
    v3 = result;
    v4 = objc_alloc_init(MEMORY[0x277CE4B30]);
    v3[2] = v4;
    [v4 setUsePresentDeviceStashing:0];
    [v3[2] setRequireDeviceNetworkSignature:1];
    OUTLINED_FUNCTION_2_20();
    v7 = 3221225472;
    v8 = __emp_setupCache_block_invoke;
    v9 = &unk_27849DE30;
    v10 = v1;
    [v3[2] setCachedDeviceFoundHandler:v6];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __emp_setupCache_block_invoke_2;
    v11[3] = &unk_27849DE30;
    v11[4] = v1;
    [v3[2] setCachedDeviceLostHandler:v11];
    v5 = v3[2];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __emp_setupCache_block_invoke_3;
    v12[3] = &__block_descriptor_40_e17_v16__0__NSError_8l;
    v12[4] = v1;
    return [v5 activateWithCompletion:v12];
  }

  return result;
}

double __emp_setupCache_block_invoke_cold_6(uint64_t *a1)
{
  APSLogErrorAt();

  FigSimpleMutexUnlock();
  return result;
}

double __emp_setupCache_block_invoke_2_cold_1(uint64_t *a1)
{
  APSLogErrorAt();

  FigSimpleMutexUnlock();
  return result;
}

uint64_t emp_isEndpointCacheable_cold_1(uint64_t result, uint64_t a2, _BYTE *a3)
{
  if (dword_280FB1478 <= 60)
  {
    v5 = result;
    if (dword_280FB1478 != -1 || (result = _LogCategory_Initialize(), result))
    {
      TypeString = APEndpointPlusUtils_GetTypeString(v5);
      result = LogPrintF(&dword_280FB1478, "Boolean emp_isEndpointCacheable(FigEndpointManagerRef, CFStringRef, APEndpointPlusType)", 33554492, "[%{ptr}] not maintaining cache-only %s", a2, TypeString);
    }
  }

  *a3 = 0;
  return result;
}

void carPlayAnalytics_collectAudioFormatsFromStreamIfPresent(const void *a1, const void *a2, uint64_t a3)
{
  if (a1)
  {
    v6 = CFGetTypeID(a1);
    TypeID = CFStringGetTypeID();
    if (a2)
    {
      if (v6 == TypeID)
      {
        v8 = CFGetTypeID(a2);
        if (v8 == CFDictionaryGetTypeID())
        {
          FigCFDictionaryGetInt32IfPresent();
          v9 = carPlayAnalytics_convertCFStringToUint64(a1);
          v10 = *(a3 + 40);
          if (gLogCategory_APCarPlayAnalytics <= 30 && (gLogCategory_APCarPlayAnalytics != -1 || _LogCategory_Initialize()))
          {
            OUTLINED_FUNCTION_4_20();
            if (v12 || (OUTLINED_FUNCTION_2_21(), (v14 & 1) == 0))
            {
              if (v11 == 130)
              {
                v15 = "RemoteControl";
              }

              else
              {
                v15 = "?";
              }
            }

            else
            {
              v15 = off_27849DFB8[v13];
            }

            v16 = "NO";
            if (v9 == v10)
            {
              v16 = "YES";
            }

            LogPrintF(&gLogCategory_APCarPlayAnalytics, "void carPlayAnalytics_collectAudioFormatsFromStreamIfPresent(const void *, const void *, void *)", 33554462, "[%{ptr}-%s] AudioFormats: Is streamConnectionID matching active stream: %s (carPlayAnalytics->streamConnectionID: %llu, streamConnectionID: %llu, streamType: %d)", a3, v15, v16, *(a3 + 40), v9, 0);
          }

          if (v9 == v10 && FigCFDictionaryGetInt32IfPresent())
          {
            SInt32 = FigCFNumberCreateSInt32();
            CFSetAddValue(*(a3 + 400), SInt32);
            if (gLogCategory_APCarPlayAnalytics <= 40 && (gLogCategory_APCarPlayAnalytics != -1 || _LogCategory_Initialize()))
            {
              OUTLINED_FUNCTION_4_20();
              if (v12 || (OUTLINED_FUNCTION_2_21(), (v20 & 1) == 0))
              {
                if (v18 == 130)
                {
                  v21 = "RemoteControl";
                }

                else
                {
                  v21 = "?";
                }
              }

              else
              {
                v21 = off_27849DFB8[v19];
              }

              LogPrintF(&gLogCategory_APCarPlayAnalytics, "void carPlayAnalytics_collectAudioFormatsFromStreamIfPresent(const void *, const void *, void *)", 33554472, "[%{ptr}-%s] Updating Spatial Audio Formats Analytics:\n\t ['%s': %d] =>\n\t   feedbackMessageCount: %d\n\t   audioFormats: %@", a3, v21, "auFI", 0, *(a3 + 24), *(a3 + 400));
            }

            if (SInt32)
            {
              CFRelease(SInt32);
            }
          }
        }
      }
    }
  }
}

uint64_t APCarPlayAnalyticsInitASRCollection_cold_1(uint64_t a1)
{
  result = APSLogErrorAt();
  *(*a1 + 24) = -6705;
  return result;
}

uint64_t __APCarPlayAnalyticsStartCollections_block_invoke_cold_2(uint64_t result)
{
  if (gLogCategory_APCarPlayAnalytics <= 60)
  {
    v1 = result;
    if (gLogCategory_APCarPlayAnalytics != -1)
    {
      return LogPrintF(&gLogCategory_APCarPlayAnalytics, "void carPlayAnalytics_startCollectionsInternal(APCarPlayAnalyticsRef, APStreamType, uint64_t, Boolean)", 33554492, "[%{ptr}] Not starting: all collections uninitialized", v1);
    }

    result = _LogCategory_Initialize();
    if (result)
    {
      return LogPrintF(&gLogCategory_APCarPlayAnalytics, "void carPlayAnalytics_startCollectionsInternal(APCarPlayAnalyticsRef, APStreamType, uint64_t, Boolean)", 33554492, "[%{ptr}] Not starting: all collections uninitialized", v1);
    }
  }

  return result;
}

uint64_t _APCarPlayAnalyticsFinalize_cold_1(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((*(a1 + 32) - 96) <= 0x18)
  {
    OUTLINED_FUNCTION_2_21();
  }

  return OUTLINED_FUNCTION_6(&gLogCategory_APCarPlayAnalytics, "void _APCarPlayAnalyticsFinalize(CFTypeRef)", a3, "[%{ptr}-%s] Finalizing");
}

void interruptibleStreamWrapper_bufferedClientUpdateNotificationCallback(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const __CFDictionary *a5)
{
  if (!a2)
  {
    return;
  }

  if (!a5)
  {
    goto LABEL_15;
  }

  CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APEndpointStreamInterruptibleWrapper <= 50 && (gLogCategory_APEndpointStreamInterruptibleWrapper != -1 || OUTLINED_FUNCTION_4(&gLogCategory_APEndpointStreamInterruptibleWrapper)))
  {
    OUTLINED_FUNCTION_2(&gLogCategory_APEndpointStreamInterruptibleWrapper, "void interruptibleStreamWrapper_bufferedClientUpdateNotificationCallback(CMNotificationCenterRef, const void *, CFStringRef, const void *, CFTypeRef)", v7, "Received BufferedClientUpdateNotification with payload %@\n");
  }

  CFDictionaryGetValue(a5, @"RoutingContextUUID");
  if (FigCFEqual())
  {
    if (!interruptibleStreamWrapper_resumeOrSuspendSubstreamAsNecessary(a2))
    {
      return;
    }

LABEL_15:

    APSLogErrorAt();
    return;
  }

  if (gLogCategory_APEndpointStreamInterruptibleWrapper <= 50 && (gLogCategory_APEndpointStreamInterruptibleWrapper != -1 || OUTLINED_FUNCTION_4(&gLogCategory_APEndpointStreamInterruptibleWrapper)))
  {
    OUTLINED_FUNCTION_2(&gLogCategory_APEndpointStreamInterruptibleWrapper, "void interruptibleStreamWrapper_bufferedClientUpdateNotificationCallback(CMNotificationCenterRef, const void *, CFStringRef, const void *, CFTypeRef)", v8, "Ignoring notification for routingContextUUID [%@] since am associated with [%@]\n");
  }
}

void interruptibleStreamWrapper_Finalize(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APEndpointStreamInterruptibleWrapper <= 10 && (gLogCategory_APEndpointStreamInterruptibleWrapper != -1 || _LogCategory_Initialize()))
  {
    OUTLINED_FUNCTION_105(&gLogCategory_APEndpointStreamInterruptibleWrapper, "void interruptibleStreamWrapper_Finalize(CMBaseObjectRef)", v1, "%{ptr} Finalize");
  }

  if (*CMBaseObjectGetDerivedStorage())
  {
    CMNotificationCenterGetDefaultLocalCenter();
    FigNotificationCenterRemoveWeakListener();
  }

  CMNotificationCenterGetDefaultLocalCenter();
  FigBufferedAirPlayGlobalRoutingRegistryGetSharedInstance();
  FigNotificationCenterRemoveWeakListener();
  v3 = *(DerivedStorage + 8);
  if (v3)
  {
    dispatch_release(v3);
    *(DerivedStorage + 8) = 0;
  }

  if (*DerivedStorage)
  {
    CFRelease(*DerivedStorage);
    *DerivedStorage = 0;
  }

  v4 = *(DerivedStorage + 24);
  if (v4)
  {
    CFRelease(v4);
    *(DerivedStorage + 24) = 0;
  }

  v5 = *(DerivedStorage + 40);
  if (v5)
  {
    CFRelease(v5);
    *(DerivedStorage + 40) = 0;
  }

  v6 = *(DerivedStorage + 16);
  if (v6)
  {
    dispatch_release(v6);
    *(DerivedStorage + 16) = 0;
  }
}

void interruptibleStreamWrapper_suspendAsync(uint64_t *a1)
{
  CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APEndpointStreamInterruptibleWrapper <= 30 && (gLogCategory_APEndpointStreamInterruptibleWrapper != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APEndpointStreamInterruptibleWrapper, "void interruptibleStreamWrapper_suspendAsync(void *)", 33554462, "%{ptr} Suspend Async", *a1);
  }

  v2 = *a1;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 48))
  {
    v4 = DerivedStorage;
    if (gLogCategory_APEndpointStreamInterruptibleWrapper <= 50 && (gLogCategory_APEndpointStreamInterruptibleWrapper != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_APEndpointStreamInterruptibleWrapper, "OSStatus interruptibleStreamWrapper_suspendInternal(FigEndpointStreamRef, CFDictionaryRef)", 33554482, "%{ptr} interruptible suspend internal\n", v2);
    }

    v5 = *(v4 + 24);
    if (v5)
    {
      CFRelease(v5);
      *(v4 + 24) = 0;
    }

    *(v4 + 48) = 0;
    if (interruptibleStreamWrapper_resumeOrSuspendSubstreamAsNecessary(v2))
    {
      APSLogErrorAt();
      *(v4 + 48) = 1;
    }

    else
    {
      DefaultLocalCenter = CMNotificationCenterGetDefaultLocalCenter();
      OUTLINED_FUNCTION_9_0(DefaultLocalCenter, DefaultLocalCenter, *MEMORY[0x277CC1830]);
    }
  }

  if (a1[2])
  {
    v7 = OUTLINED_FUNCTION_4_21();
    OUTLINED_FUNCTION_1_30(v7, v8);
  }

  CFRelease(*a1);
  v9 = a1[1];
  if (v9)
  {
    CFRelease(v9);
  }
}

void interruptibleStreamWrapper_resumeAsync(uint64_t *a1)
{
  CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APEndpointStreamInterruptibleWrapper <= 30 && (gLogCategory_APEndpointStreamInterruptibleWrapper != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APEndpointStreamInterruptibleWrapper, "void interruptibleStreamWrapper_resumeAsync(void *)", 33554462, "%{ptr} Resume Async\n", *a1);
  }

  v2 = *a1;
  v3 = a1[1];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!*(DerivedStorage + 48))
  {
    v6 = DerivedStorage;
    if (gLogCategory_APEndpointStreamInterruptibleWrapper <= 50 && (gLogCategory_APEndpointStreamInterruptibleWrapper != -1 || OUTLINED_FUNCTION_4(&gLogCategory_APEndpointStreamInterruptibleWrapper)))
    {
      OUTLINED_FUNCTION_2(&gLogCategory_APEndpointStreamInterruptibleWrapper, "OSStatus interruptibleStreamWrapper_resumeInternal(FigEndpointStreamRef, CFDictionaryRef)", v5, "%{ptr} Resume Internal\n");
    }

    v7 = *(v6 + 24);
    *(v6 + 24) = v3;
    if (v3)
    {
      CFRetain(v3);
    }

    if (v7)
    {
      CFRelease(v7);
    }

    *(v6 + 48) = 1;
    if (interruptibleStreamWrapper_resumeOrSuspendSubstreamAsNecessary(v2))
    {
      APSLogErrorAt();
      *(v6 + 48) = 0;
    }

    else
    {
      if (gLogCategory_APEndpointStreamInterruptibleWrapper <= 50 && (gLogCategory_APEndpointStreamInterruptibleWrapper != -1 || OUTLINED_FUNCTION_4(&gLogCategory_APEndpointStreamInterruptibleWrapper)))
      {
        OUTLINED_FUNCTION_2(&gLogCategory_APEndpointStreamInterruptibleWrapper, "OSStatus interruptibleStreamWrapper_resumeInternal(FigEndpointStreamRef, CFDictionaryRef)", v8, "%{ptr} post interruptible resumed notification\n");
      }

      DefaultLocalCenter = CMNotificationCenterGetDefaultLocalCenter();
      OUTLINED_FUNCTION_9_0(DefaultLocalCenter, DefaultLocalCenter, *MEMORY[0x277CC1820]);
    }
  }

  if (a1[2])
  {
    v10 = OUTLINED_FUNCTION_4_21();
    OUTLINED_FUNCTION_1_30(v10, v11);
  }

  CFRelease(*a1);
  v12 = a1[1];
  if (v12)
  {
    CFRelease(v12);
  }
}

uint64_t interruptibleStreamWrapper_resumeOrSuspendSubstreamAsNecessary_cold_3(uint64_t a1, uint64_t a2)
{
  result = APSLogErrorAt();
  if (gLogCategory_APEndpointStreamInterruptibleWrapper <= 50)
  {
    if (gLogCategory_APEndpointStreamInterruptibleWrapper != -1)
    {
      return OUTLINED_FUNCTION_2(&gLogCategory_APEndpointStreamInterruptibleWrapper, "Boolean interruptibleStreamWrapper_shouldBlockSubstream(FigEndpointStreamRef)", v3, "GetInterruptedState error: %d\n");
    }

    result = OUTLINED_FUNCTION_4(&gLogCategory_APEndpointStreamInterruptibleWrapper);
    if (result)
    {
      return OUTLINED_FUNCTION_2(&gLogCategory_APEndpointStreamInterruptibleWrapper, "Boolean interruptibleStreamWrapper_shouldBlockSubstream(FigEndpointStreamRef)", v3, "GetInterruptedState error: %d\n");
    }
  }

  return result;
}

uint64_t APSenderSessionFactoryCreateLegacySession(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (a1)
  {
    v8 = *(a1 + 24);
    if (v8)
    {
      if (gLogCategory_APSenderSessionFactory <= 50 && (gLogCategory_APSenderSessionFactory != -1 || (v16 = _LogCategory_Initialize(), v8 = *(a1 + 24), v16)))
      {
        LogPrintF(&gLogCategory_APSenderSessionFactory, "OSStatus APSenderSessionFactoryCreateLegacySession(APSenderSessionFactoryRef, CFAllocatorRef, CFStringRef, APEndpointDescriptionRef, APSNetworkClockRef, CFDictionaryRef, APSenderSessionRef *)", 33554482, "[%{ptr}] APSenderSessionFactory calling CreateLegacySession fn [%{ptr}]\n", a1, v8);
        v15 = (*(a1 + 24))(*(a1 + 32), a2, a3, a4, a5, a6, a7);
      }

      else
      {
        v15 = v8(*(a1 + 32), a2, a3, a4, a5, a6, a7);
      }

      v17 = v15;
      if (v15)
      {
        APSLogErrorAt();
      }
    }

    else
    {
      return 4294960561;
    }
  }

  else
  {
    APSLogErrorAt();
    return 4294960591;
  }

  return v17;
}

uint64_t APSenderSessionFactoryCreate_cold_2(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  result = APSLogErrorAt();
  if (gLogCategory_APSenderSessionFactory <= 90)
  {
    if (gLogCategory_APSenderSessionFactory != -1 || (result = _LogCategory_Initialize(), result))
    {
      result = LogPrintF(&gLogCategory_APSenderSessionFactory, "OSStatus APSenderSessionFactoryCreate(CreateAirPlaySenderSessionFunction, CreateLegacySenderSessionFunction, CFTypeRef, APSenderSessionFactoryRef *)", 33554522, "[%{ptr}] APSenderSessionFactory ### creation failed: %#m\n", 0, a1);
    }
  }

  *a3 = a1;
  return result;
}

uint64_t carRemoteAudioStream_suspend(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, uint64_t, uint64_t), uint64_t a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*DerivedStorage)
  {
    if (*(DerivedStorage + 16))
    {
      v8 = FigXPCCreateBasicMessage();
      if (v8)
      {
        v9 = v8;
      }

      else
      {
        v9 = FigXPCRemoteClientSendSyncMessage();
        if (!v9)
        {
          goto LABEL_5;
        }
      }

      APSLogErrorAt();
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    APSLogErrorAt();
    v9 = 4294960578;
  }

LABEL_5:
  if (a3)
  {
    a3(a1, v9, a4);
  }

  return v9;
}

uint64_t APCarPlayAudioFormatsCopyFormatsForAudioType_cold_4(int a1, uint64_t a2, uint64_t a3)
{
  v3 = a1 - 96;
  if (a1 - 96) <= 0x18 && ((0x100FCF1u >> v3))
  {
    v4 = off_27849E100[v3];
  }

  else
  {
    v4 = "?";
    if (a1 == 130)
    {
      v4 = "RemoteControl";
    }
  }

  return LogPrintF(&gLogCategory_APCarPlayAudioFormat, "OSStatus APCarPlayAudioFormatsCopyFormatsForAudioType(APCarPlayAudioFormatsRef, APStreamType, CFStringRef, APAudioFormat *, CFArrayRef *, Boolean *)", 33554462, "Using default formats for %s / %@ (legacy receiver): 0x%x\n", v4, a2, a3);
}

uint64_t APCarPlayAudioFormatsCopyFormatsForAudioType_cold_6(int a1, uint64_t a2, uint64_t a3)
{
  v3 = a1 - 96;
  if (a1 - 96) <= 0x18 && ((0x100FCF1u >> v3))
  {
    v4 = off_27849E100[v3];
  }

  else
  {
    v4 = "?";
    if (a1 == 130)
    {
      v4 = "RemoteControl";
    }
  }

  return LogPrintF(&gLogCategory_APCarPlayAudioFormat, "OSStatus APCarPlayAudioFormatsCopyFormatsForAudioType(APCarPlayAudioFormatsRef, APStreamType, CFStringRef, APAudioFormat *, CFArrayRef *, Boolean *)", 33554462, "Using default formats for %s / %@ (Apple receiver): 0x%x\n", v4, a2, a3);
}

uint64_t APCarPlayAudioFormatsCreate_cold_4(void *a1)
{
  [a1 name];
  [a1 manufacturer];
  [a1 modelNumber];
  [a1 firmwareRevision];
  return OUTLINED_FUNCTION_2(&gLogCategory_APCarPlayAudioFormat, "void _APCarPlayAudioFormatsMark24kTelephonyUnsupportedForCertainHUs(APCarPlayAudioFormatsRef, Boolean)", v2, "Disabling 24kHz Telephony for %@/%@/%@/%@\n");
}

void __getEAAccessoryManagerClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x277CCA890] currentHandler];
  [v0 handleFailureInFunction:objc_msgSend(MEMORY[0x277CCACA8] file:"stringWithUTF8String:" lineNumber:"Class getEAAccessoryManagerClass(void)_block_invoke") description:{@"APCarPlayAudioFormats.m", 32, @"Unable to find class %s", "EAAccessoryManager"}];
  __break(1u);
}

void __getEAAccessoryManagerClass_block_invoke_cold_2(void *a1)
{
  v2 = [MEMORY[0x277CCA890] currentHandler];
  [v2 handleFailureInFunction:objc_msgSend(MEMORY[0x277CCACA8] file:"stringWithUTF8String:" lineNumber:"void *ExternalAccessoryLibrary(void)") description:{@"APCarPlayAudioFormats.m", 30, @"%s", *a1}];
  __break(1u);
}

uint64_t carPlayAudioFormat_repackageFormatsForStream_cold_2(int a1, void *a2, uint64_t a3, uint64_t a4)
{
  if ((a1 - 100) > 7)
  {
    v6 = "?";
  }

  else
  {
    v6 = off_27849E218[a1 - 100];
  }

  return LogPrintF(&gLogCategory_APCarPlayAudioFormat, "OSStatus carPlayAudioFormat_repackageForAudioType(APCarPlayAudioFormatsRef, APStreamType, CFStringRef, APAudioFormat, CFMutableDictionaryRef, CFMutableDictionaryRef, CFMutableDictionaryRef, OSType *)", 33554462, "Masking formats for %s / %@: 0x%x -> 0x%x\n", v6, a4, *a2 & a3, *a2, v4, v5);
}

void carPlayAudioFormat_repackageFormatsForStream_cold_4()
{
  APSLogErrorAt();
  if (gLogCategory_APCarPlayAudioFormat <= 50 && (gLogCategory_APCarPlayAudioFormat != -1 || _LogCategory_Initialize()))
  {
    OUTLINED_FUNCTION_2(&gLogCategory_APCarPlayAudioFormat, "OSStatus carPlayAudioFormat_repackageForAudioType(APCarPlayAudioFormatsRef, APStreamType, CFStringRef, APAudioFormat, CFMutableDictionaryRef, CFMutableDictionaryRef, CFMutableDictionaryRef, OSType *)", v0, "Multiple compression formats specified for %s / %@\n");
  }

  OUTLINED_FUNCTION_1_31();
}

void carPlayAudioFormat_repackageFormatsForStream_cold_14(const void *a1, const void *a2)
{
  APSLogErrorAt();
  CFRelease(a1);
  CFRelease(a2);
}

void carPlayAudioFormat_repackageFormatsForStream_cold_22(uint64_t a1, const void *a2)
{
  APSLogErrorAt();

  CFRelease(a2);
}

uint64_t browserController_registerEndpointActivated(uint64_t *a1)
{
  cf = 0;
  v2 = *MEMORY[0x277CBECE8];
  browserController_copyDeviceName(a1[1], &cf);
  DiscoveryID = APTransportDeviceGetDiscoveryID();
  if (*(a1 + 16))
  {
    v4 = "-remote";
  }

  else
  {
    v4 = "";
  }

  v5 = CFStringCreateWithFormat(v2, 0, @"%@%s", DiscoveryID, v4);
  v6 = gLogCategory_APBrowserController;
  if (gLogCategory_APBrowserController <= 40)
  {
    if (gLogCategory_APBrowserController != -1)
    {
LABEL_6:
      v7 = cf;
      if (v6 > 20)
      {
        v8 = 0;
      }

      else
      {
        v8 = v6 != -1 || _LogCategory_Initialize() != 0;
      }

      LogPrintF(&gLogCategory_APBrowserController, "OSStatus browserController_registerEndpointActivated(void *)", 33554472, "Endpoint %@ with ID: %@ is Activated %?@\n", v7, v5, v8, a1[1]);
      goto LABEL_14;
    }

    if (_LogCategory_Initialize())
    {
      v6 = gLogCategory_APBrowserController;
      goto LABEL_6;
    }
  }

LABEL_14:
  if (CFDictionaryContainsKey(*(*a1 + 120), v5))
  {
    if (*(a1 + 16))
    {
      v9 = @"None";
    }

    else
    {
      v9 = @"Presence";
    }

    CFDictionaryReplaceValue(*(*a1 + 120), v5, v9);
    started = APTransportDeviceStartTracking();
    if (started)
    {
      APSLogErrorAt();
    }

    else
    {
      browserController_updateDiscoveryMode(*a1);
    }
  }

  else
  {
    started = 0;
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (v5)
  {
    CFRelease(v5);
  }

  return started;
}

uint64_t APBrowserControllerInvalidate_cold_1(_DWORD *a1)
{
  APSLogErrorAt();
  result = APSSignalErrorAt();
  *a1 = result;
  return result;
}

void browserController_registerEndpointActivating_cold_1()
{
  if (gLogCategory_APBrowserController <= 40 && (gLogCategory_APBrowserController != -1 || _LogCategory_Initialize()))
  {

    LogPrintF(&gLogCategory_APBrowserController, "OSStatus browserController_registerEndpointActivating(void *)", 33554472, "DeviceID is already being tracked by browser controller");
  }
}

uint64_t browserController_browserModeAlreadySet_cold_1(void *a1)
{
  if (*(*a1 + 16))
  {
    v1 = "yes";
  }

  else
  {
    v1 = "no";
  }

  return LogPrintF(&gLogCategory_APBrowserController, "void browserController_browserModeAlreadySet(void *)", 33554472, "[%{ptr}] Checking browser mode already set: invalid = %s\n", *a1, v1);
}

void browserController_copyDeviceName_cold_1(uint64_t a1, const void *a2)
{
  APSLogErrorAt();
  if (a2)
  {
    CFRelease(a2);
  }
}

uint64_t browserController_browserEventHandlerInternal_cold_3()
{
  APSLogErrorAt();

  return APSSignalErrorAt();
}

uint64_t browserController_browserEventHandlerInternal_cold_5()
{
  APSLogErrorAt();

  return APSSignalErrorAt();
}

void __carEndpoint_isEndpointConnected_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (!*(v1 + 176))
  {
    v2 = *(v1 + 240);
    if (v2)
    {
      v3 = *(*(CMBaseObjectGetVTable() + 16) + 8);
      if (v3)
      {
        v3(v2);
      }

      OUTLINED_FUNCTION_2_16();
      *(v5 + 24) = v4;
    }
  }
}

uint64_t carEndpoint_raiseAltScreenPowerAssertionIfNeeded(uint64_t a1)
{
  result = CMBaseObjectGetDerivedStorage();
  if (!*(result + 504))
  {
    v2 = result;
    result = APSPowerAssertionCreate();
    *(v2 + 504) = result;
    if (result)
    {

      return APSPowerAssertionRaise();
    }
  }

  return result;
}

uint64_t carEndpoint_CreatePlaybackSession()
{
  OUTLINED_FUNCTION_3_7();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APEndpointCarPlay <= 50 && (gLogCategory_APEndpointCarPlay != -1 || OUTLINED_FUNCTION_4(&gLogCategory_APEndpointCarPlay)))
  {
    OUTLINED_FUNCTION_2(&gLogCategory_APEndpointCarPlay, "OSStatus carEndpoint_CreatePlaybackSession(FigEndpointRef, FigEndpointPlaybackSessionRef *)", v2, "[%{ptr}] creating playback session.\n");
  }

  if (!*(DerivedStorage + 162))
  {
    return 4294960561;
  }

  v9 = 0;
  v10 = &v9;
  v11 = 0x2000000000;
  v12 = 0;
  v4 = CMBaseObjectGetDerivedStorage();
  v5 = *(v4 + 168);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 0x40000000;
  block[2] = __carEndpoint_createPlaybackSessionInternal_block_invoke;
  block[3] = &unk_27849F428;
  block[4] = &v9;
  block[5] = v4;
  block[6] = v1;
  block[7] = v0;
  dispatch_sync(v5, block);
  v6 = *(v10 + 6);
  _Block_object_dispose(&v9, 8);
  return v6;
}

uint64_t carEndpoint_updateVideoPlaybackAllowed(const void *a1, uint64_t a2, int a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v23 = 0;
  v19 = 0;
  v20 = &v19;
  v21 = 0x2000000000;
  v22 = 0;
  if (!*(DerivedStorage + 60))
  {
    goto LABEL_4;
  }

  v6 = DerivedStorage;
  if (!FigCFDictionaryGetBooleanIfPresent())
  {
    APSLogErrorAt();
    v8 = 4294950576;
    goto LABEL_5;
  }

  if (v23 == *(v6 + 161))
  {
    goto LABEL_4;
  }

  *(v6 + 161) = v23;
  if (gLogCategory_APEndpointCarPlay <= 50 && (gLogCategory_APEndpointCarPlay != -1 || OUTLINED_FUNCTION_4(&gLogCategory_APEndpointCarPlay)))
  {
    OUTLINED_FUNCTION_2(&gLogCategory_APEndpointCarPlay, "OSStatus carEndpoint_updateVideoPlaybackAllowed(FigEndpointRef, CFDictionaryRef, Boolean)", v7, "[%{ptr}] videoPlaybackAllowed now changed to%s allowed\n");
  }

  OUTLINED_FUNCTION_2_22();
  v14 = 0x40000000;
  v15 = __carEndpoint_updateVideoPlaybackAllowed_block_invoke;
  v16 = &unk_27849F0F8;
  v17 = &v19;
  v18 = v6;
  dispatch_sync(v10, block);
  carEndpoint_postNotification(a1, *MEMORY[0x277CC0D48], *(v20 + 6), 0);
  v8 = 0;
  if (a3 && !v23)
  {
    StringValue = FigCFDictionaryGetStringValue();
    if (gLogCategory_APEndpointCarPlay <= 50 && (gLogCategory_APEndpointCarPlay != -1 || OUTLINED_FUNCTION_4(&gLogCategory_APEndpointCarPlay)))
    {
      OUTLINED_FUNCTION_2(&gLogCategory_APEndpointCarPlay, "OSStatus carEndpoint_updateVideoPlaybackAllowed(FigEndpointRef, CFDictionaryRef, Boolean)", v11, "[%{ptr}] %@: %@");
    }

    if (!StringValue || !CFEqual(@"video", StringValue))
    {
LABEL_4:
      v8 = 0;
      goto LABEL_5;
    }

    v8 = carEndpoint_sendCommandInternal(a1, @"changeVideoPlaybackToAudioOnly", 0, 1, 0);
    if (v8)
    {
      APSLogErrorAt();
    }
  }

LABEL_5:
  _Block_object_dispose(&v19, 8);
  return v8;
}

void carEndpoint_powerLogActivation(uint64_t a1, int a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v4 = *MEMORY[0x277CBECE8];
  MutableCopy = FigCFDictionaryCreateMutableCopy();
  if (MutableCopy)
  {
    v6 = MutableCopy;
    valuePtr = 0;
    v7 = FigCFArrayCreateMutableCopy();
    if (v7)
    {
      v8 = v7;
      APSEventRecorderGetEventTime();
      valuePtr = v9;
      v10 = CFNumberCreate(v4, kCFNumberSInt64Type, &valuePtr);
      if (v10)
      {
        v11 = v10;
        CFDictionarySetValue(v6, @"SessionID", v10);
        v12 = *MEMORY[0x277CBED28];
        v13 = *MEMORY[0x277CBED10];
        if (a2)
        {
          v14 = *MEMORY[0x277CBED28];
        }

        else
        {
          v14 = *MEMORY[0x277CBED10];
        }

        CFDictionarySetValue(v6, @"Activated", v14);
        if (*(DerivedStorage + 40))
        {
          v15 = v12;
        }

        else
        {
          v15 = v13;
        }

        CFDictionarySetValue(v6, @"Wireless", v15);
        PLLogRegisteredEvent();
        CFRelease(v11);
      }

      CFRelease(v8);
    }

    CFRelease(v6);
  }
}

void carEndpoint_setParametersForJarvis(const void *a1, int a2, int a3, unsigned int a4, const void *a5)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 57))
  {
    v10 = DerivedStorage;
    v11 = CFGetAllocator(a1);
    Mutable = CFDictionaryCreateMutable(v11, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    if (Mutable)
    {
      v13 = Mutable;
      v14 = CFGetAllocator(a1);
      v15 = CFDictionaryCreateMutable(v14, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
      if (a2)
      {
        CFDictionarySetInt64();
      }

      else
      {
        CFDictionarySetInt64();
        CFDictionarySetInt64();
        CFDictionarySetInt64();
        if (a3 == 1 && a5)
        {
          CFDictionarySetValue(v15, @"voiceModelLanguage", a5);
        }
      }

      CFDictionarySetValue(v13, @"enhancedSiriParameters", v15);
      OUTLINED_FUNCTION_2_20();
      v18 = 0x40000000;
      v19 = __carEndpoint_setParametersForJarvis_block_invoke;
      v20 = &__block_descriptor_tmp_204;
      v21 = v10;
      v22 = v13;
      v25 = a2;
      v23 = v15;
      v24 = a1;
      dispatch_sync(v16, block);
      CFRelease(v13);
      if (v15)
      {
        CFRelease(v15);
      }
    }

    else
    {

      APSLogErrorAt();
    }
  }
}

void __carEndpoint_sendCommandInternal_block_invoke(uint64_t a1)
{
  v48 = 0;
  v49 = &v48;
  v50 = 0x2000000000;
  v51 = 0;
  v47 = 0;
  v46.tv_sec = 0;
  *&v46.tv_usec = 0;
  if (carEndpoint_isDissociated(*(a1 + 32)))
  {
    goto LABEL_18;
  }

  if (gLogCategory_APEndpointCarPlay <= 20 && (gLogCategory_APEndpointCarPlay != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APEndpointCarPlay, "OSStatus carEndpoint_sendCommandInternal(FigEndpointRef, CFStringRef, CFDictionaryRef, Boolean, dispatch_semaphore_t)_block_invoke", 33554452, "[%{ptr}] %###s called %'@\n", *(a1 + 40), "OSStatus carEndpoint_sendCommandInternal(FigEndpointRef, CFStringRef, CFDictionaryRef, Boolean, dispatch_semaphore_t)_block_invoke", *(a1 + 48));
  }

  v2 = OUTLINED_FUNCTION_10_6(*(a1 + 32));
  v41 = 0x40000000;
  v42 = __carEndpoint_sendCommandInternal_block_invoke_2;
  v43 = &unk_27849E840;
  v44 = &v48;
  v45 = v3;
  dispatch_sync(v2, &block);
  v4 = v49[3];
  if (!v4)
  {
    goto LABEL_28;
  }

  v5 = *(*(CMBaseObjectGetVTable() + 16) + 16);
  if (!v5 || !v5(v4))
  {
LABEL_18:
    v4 = 0;
    goto LABEL_28;
  }

  APSenderSessionGetCMBaseObject();
  if (!*(*(CMBaseObjectGetVTable() + 8) + 48))
  {
    v4 = 4294954514;
LABEL_20:
    APSLogErrorAt();
    goto LABEL_28;
  }

  v6 = OUTLINED_FUNCTION_8_4();
  v8 = v7(v6);
  if (v8)
  {
    v4 = v8;
    goto LABEL_20;
  }

  if (gLogCategory_APEndpointCarPlay <= 30 && (gLogCategory_APEndpointCarPlay != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APEndpointCarPlay, "OSStatus carEndpoint_sendCommandInternal(FigEndpointRef, CFStringRef, CFDictionaryRef, Boolean, dispatch_semaphore_t)_block_invoke", 33554462, "[%{ptr}] %###s called %'C requestBBuf %p.\n", *(a1 + 40), "OSStatus carEndpoint_sendCommandInternal(FigEndpointRef, CFStringRef, CFDictionaryRef, Boolean, dispatch_semaphore_t)_block_invoke", 1668246893, *(a1 + 56));
  }

  gettimeofday(&v46, 0);
  v9 = *(a1 + 80);
  v10 = *(CMBaseObjectGetVTable() + 16);
  if (v9)
  {
    if (*(v10 + 48))
    {
      v21 = OUTLINED_FUNCTION_28_0();
      v4 = v22(v21);
    }

    else
    {
      v4 = 4294954514;
    }

    Length = CFDataGetLength(*(a1 + 64));
    OUTLINED_FUNCTION_26_2(Length, v24, v25, v26, v27, v28, v29, v30, v35, v36, v37, v38, v39, block, v41, v42, v43, v44, v45);
    if (v4)
    {
      goto LABEL_20;
    }
  }

  else
  {
    if (*(v10 + 56))
    {
      v11 = OUTLINED_FUNCTION_28_0();
      v4 = v12(v11);
    }

    else
    {
      v4 = 4294954514;
    }

    v13 = CFDataGetLength(*(a1 + 64));
    OUTLINED_FUNCTION_26_2(v13, v14, v15, v16, v17, v18, v19, v20, v35, v36, v37, v38, v39, block, v41, v42, v43, v44, v45);
    if (v4)
    {
      goto LABEL_20;
    }
  }

LABEL_28:
  v31 = *(a1 + 72);
  if (v31)
  {
    dispatch_semaphore_signal(v31);
    dispatch_release(*(a1 + 72));
  }

  v32 = v47;
  if (v47 && v4)
  {
    if (gLogCategory_APEndpointCarPlay <= 90 && (gLogCategory_APEndpointCarPlay != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_APEndpointCarPlay, "OSStatus carEndpoint_sendCommandInternal(FigEndpointRef, CFStringRef, CFDictionaryRef, Boolean, dispatch_semaphore_t)_block_invoke", 33554522, "[%{ptr}] %###s: failed to send %'@ command with error: %d (inSendAsync=%d)\n", *(a1 + 40), "OSStatus carEndpoint_sendCommandInternal(FigEndpointRef, CFStringRef, CFDictionaryRef, Boolean, dispatch_semaphore_t)_block_invoke", *(a1 + 48), v4, *(a1 + 80));
    }

    v32 = v47;
  }

  if (v32)
  {
    CFRelease(v32);
  }

  v33 = v49[3];
  if (v33)
  {
    CFRelease(v33);
  }

  CFRelease(*(a1 + 56));
  v34 = *(a1 + 48);
  if (v34)
  {
    CFRelease(v34);
  }

  CFRelease(*(a1 + 40));
  _Block_object_dispose(&v48, 8);
}

uint64_t carEndpoint_requestSiri(const void *a1, uint64_t a2)
{
  v67[5] = *MEMORY[0x277D85DE8];
  v62 = 0;
  v63 = &v62;
  v64 = 0x2000000000;
  v65 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v58 = 0;
  v59 = &v58;
  v60 = 0x2000000000;
  v61 = 0;
  v54 = 0;
  v55 = &v54;
  v56 = 0x2000000000;
  v57 = 0;
  v50 = 0;
  v51 = &v50;
  v52 = 0x2000000000;
  LOBYTE(v53) = 0;
  if (!a2)
  {
    APSLogErrorAt();
    OUTLINED_FUNCTION_13_7(v63);
    goto LABEL_24;
  }

  v5 = DerivedStorage;
  Int64 = CFDictionaryGetInt64();
  if (gLogCategory_APEndpointCarPlay <= 50 && (gLogCategory_APEndpointCarPlay != -1 || OUTLINED_FUNCTION_4(&gLogCategory_APEndpointCarPlay)))
  {
    v31 = a1;
    v32 = Int64;
    OUTLINED_FUNCTION_2(&gLogCategory_APEndpointCarPlay, "OSStatus carEndpoint_requestSiri(FigEndpointRef, CFDictionaryRef)", v6, "[%{ptr}] Request Siri action %d.\n");
  }

  v8 = *(v5 + 168);
  block = MEMORY[0x277D85DD0];
  v39 = 0x40000000;
  v40 = __carEndpoint_requestSiri_block_invoke;
  v41 = &unk_27849E9B0;
  LODWORD(v49) = Int64;
  v42 = &v62;
  v43 = &v54;
  v46 = a1;
  v47 = v5;
  v44 = &v50;
  v45 = &v58;
  v48 = a2;
  dispatch_sync(v8, &block);
  if (!*(v63 + 6))
  {
    v9 = *(v51 + 24);
    v10 = v59[3];
    CMBaseObjectGetDerivedStorage();
    if ((Int64 - 5) < 0xFFFFFFFC)
    {
      v29 = -16720;
    }

    else
    {
      if (Int64 == 4 && !v9)
      {
        v13 = 0;
        OUTLINED_FUNCTION_29_1();
        if (v30)
        {
LABEL_16:
          OUTLINED_FUNCTION_32_1(v17, *MEMORY[0x277CC0D18], v18, v19, v20, v21, v22, v23, v31, v32, v33, v34, v35, v36, v37, block, v39, v40, v41, v42, v43, v44, v45, v46, v47, v48, v49, v50, v51, v52, v53, v54, v55);
          if (!v13)
          {
            goto LABEL_24;
          }

          goto LABEL_23;
        }

        goto LABEL_19;
      }

      v11 = CFGetAllocator(a1);
      Mutable = CFDictionaryCreateMutable(v11, 2, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
      values = Mutable;
      if (Mutable)
      {
        v13 = Mutable;
        v14 = *MEMORY[0x277CC1788];
        v67[0] = @"Invalid";
        v67[1] = v14;
        v15 = *MEMORY[0x277CC1780];
        v67[2] = *MEMORY[0x277CC1778];
        v67[3] = v15;
        v16 = *MEMORY[0x277CC1798];
        v67[4] = *MEMORY[0x277CC1790];
        CFDictionarySetValue(Mutable, v16, v67[Int64]);
        if (v10)
        {
          CFAbsoluteTimeGetCurrent();
          mach_absolute_time();
          UpTicksToSecondsF();
          CFDictionarySetDouble();
        }

        if (!v9 || (v13 = CFDictionaryCreate(0, MEMORY[0x277CC0AA8], &values, 1, MEMORY[0x277CBF138], MEMORY[0x277CBF150])) != 0)
        {
          OUTLINED_FUNCTION_29_1();
          if (v24)
          {
            goto LABEL_16;
          }

          if (Int64 != 4)
          {
            OUTLINED_FUNCTION_32_1(v17, *MEMORY[0x277CC0D88], v18, v19, v20, v21, v22, v23, v31, v32, v33, v34, v35, v36, v37, block, v39, v40, v41, v42, v43, v44, v45, v46, v47, v48, v49, v50, v51, v52, v53, v54, v55);
LABEL_23:
            CFRelease(v13);
            goto LABEL_24;
          }

LABEL_19:
          v25 = *(v5 + 168);
          v33 = MEMORY[0x277D85DD0];
          v34 = 0x40000000;
          v35 = __carEndpoint_requestSiri_block_invoke_2;
          v36 = &__block_descriptor_tmp_359;
          v37 = v5;
          dispatch_sync(v25, &v33);
          v26 = APCarPlayInitiateJarvisProcessing(a1, v59[3], carEndpoint_jarvisInitiationComplete);
          *(v63 + 6) = v26;
          if (v26)
          {
            APSLogErrorAt();
            if (!v13)
            {
              goto LABEL_24;
            }
          }

          else if (!v13)
          {
            goto LABEL_24;
          }

          goto LABEL_23;
        }

        v29 = -16721;
      }

      else
      {
        v29 = -6728;
      }
    }

    APSLogErrorAt();
    *(v63 + 6) = v29;
    APSLogErrorAt();
  }

LABEL_24:
  v27 = *(v63 + 6);
  _Block_object_dispose(&v50, 8);
  _Block_object_dispose(&v54, 8);
  _Block_object_dispose(&v58, 8);
  _Block_object_dispose(&v62, 8);
  return v27;
}

void __carEndpoint_requestSiri_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 88);
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (DerivedStorage[176] || (v4 = DerivedStorage, !DerivedStorage[177]))
  {
    v8 = -16723;
    goto LABEL_21;
  }

  if (v2 != 4)
  {
LABEL_13:
    v8 = 0;
    goto LABEL_21;
  }

  if (!DerivedStorage[57])
  {
    goto LABEL_35;
  }

  Int64 = CFDictionaryGetInt64();
  if (!Int64)
  {
    if (gLogCategory_APEndpointCarPlay <= 60 && (gLogCategory_APEndpointCarPlay != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_APEndpointCarPlay, "OSStatus carEndpoint_validateSiriRequestState(FigEndpointRef, APSiriAction)", 33554492, "Voice activation received before ready to process voice requests");
    }

    goto LABEL_18;
  }

  if (Int64 == -1)
  {
LABEL_35:
    APSLogErrorAt();
LABEL_18:
    v8 = -16726;
    goto LABEL_21;
  }

  v7 = *(v4 + 99);
  if ((v7 != 1 || !*(v4 + 100)) && !v4[456])
  {
    goto LABEL_13;
  }

  if (gLogCategory_APEndpointCarPlay <= 50 && (gLogCategory_APEndpointCarPlay != -1 || OUTLINED_FUNCTION_4(&gLogCategory_APEndpointCarPlay)))
  {
    OUTLINED_FUNCTION_2(&gLogCategory_APEndpointCarPlay, "OSStatus carEndpoint_validateSiriRequestState(FigEndpointRef, APSiriAction)", v6, "Ignoring voice trigger because %s\n");
  }

  v8 = -16727;
LABEL_21:
  *(*(*(a1 + 32) + 8) + 24) = v8;
  OUTLINED_FUNCTION_2_16();
  if (!*(v9 + 24))
  {
    v10 = *(a1 + 72);
    *(*(*(a1 + 40) + 8) + 24) = *(v10 + 224);
    *(*(*(a1 + 48) + 8) + 24) = *(v10 + 444);
    v11 = *(a1 + 88);
    v12 = CMBaseObjectGetDerivedStorage();
    OUTLINED_FUNCTION_8_4();
    if (CFDictionaryGetInt64())
    {
      APSNetworkClockNTPConvertNTPToUpTicks();
    }

    if (v11 <= 4 && ((1 << v11) & 0x16) != 0 && !*(v12 + 448))
    {
      if (gLogCategory_APEndpointCarPlay <= 50 && (gLogCategory_APEndpointCarPlay != -1 || OUTLINED_FUNCTION_4(&gLogCategory_APEndpointCarPlay)))
      {
        mach_absolute_time();
        mach_absolute_time();
        UpTicksToMilliseconds();
        OUTLINED_FUNCTION_2(&gLogCategory_APEndpointCarPlay, "uint64_t carEndpoint_readAndRecordSiriEventTimestamp(FigEndpointRef, CFDictionaryRef, APSiriAction)", v13, "Siri action: %d; saving timestamp %lu, current time %lu, diff %u ms\n");
      }

      *(v12 + 448) = 0;
    }

    *(*(*(a1 + 56) + 8) + 24) = 0;
  }
}