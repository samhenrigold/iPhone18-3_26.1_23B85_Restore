uint64_t fpfs_SetRenderChainsReleasedForPause(uint64_t a1, int a2)
{
  result = CMBaseObjectGetDerivedStorage();
  if (*(result + 2904) != a2)
  {
    v4 = result;
    *(result + 2904) = a2;
    result = *(result + 40);
    if (result)
    {
      if (a2)
      {
        if (!*(v4 + 1680))
        {
          return result;
        }

        v5 = MEMORY[0x1E695E4D0];
      }

      else
      {
        v5 = MEMORY[0x1E695E4C0];
      }

      v6 = *v5;

      return FigAlternateSelectionBossSetProperty(result, @"Paused", v6);
    }
  }

  return result;
}

uint64_t fpfsi_isTrackInLists(uint64_t result, uint64_t a2, unsigned int a3)
{
  v5[3] = *MEMORY[0x1E69E9840];
  v5[0] = result + 1024;
  v5[1] = result + 1040;
  v5[2] = result + 1056;
  if (result)
  {
    v3 = 0;
    while (1)
    {
      if ((a3 >> v3))
      {
        v4 = *v5[v3];
        if (v4)
        {
          break;
        }
      }

LABEL_7:
      if (++v3 == 3)
      {
        return 0;
      }
    }

    while (v4 != a2)
    {
      v4 = *(v4 + 24);
      if (!v4)
      {
        goto LABEL_7;
      }
    }

    return 1;
  }

  return result;
}

void fpfsi_RTCReportingReportCheckAndReportVariantEnded(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    if (!*(a2 + 200))
    {
      OUTLINED_FUNCTION_17();
      if (v4 || (OUTLINED_FUNCTION_63(), v4) && (v5 = *(a2 + 456)) != 0 && !FigAlternateHasVideo(v5))
      {
        if (!*(a1 + 1024))
        {
          goto LABEL_13;
        }

        while (1)
        {
          OUTLINED_FUNCTION_247();
          if (v4)
          {
            if (*(v6 + 32) > *(a2 + 32))
            {
              break;
            }
          }

          if (!*(v6 + 24))
          {
            goto LABEL_13;
          }
        }

        if (!FigCFEqual())
        {
LABEL_13:
          OUTLINED_FUNCTION_335();
          v7 = OUTLINED_FUNCTION_690();
          fpfs_GetTime(v7, v8);
          v17 = (a1 + 3048);
          if ((*(a1 + 3060) & 1) == 0)
          {
            v18 = *(a2 + 208);
            *(a1 + 3064) = *(a2 + 224);
            *v17 = v18;
          }

          OUTLINED_FUNCTION_231(v9, v10, v11, v12, v13, v14, v15, v16, v97, v98, v99, v100, *(a2 + 232), *(a2 + 240), time.epoch, v102, v103);
          v27 = OUTLINED_FUNCTION_175(v19, v20, v21, v22, v23, v24, v25, v26, v97, v98, v99, v100, time.value);
          v29 = CMTimeCompare(v27, v28);
          if ((v29 & 0x80000000) != 0)
          {
            v103 = *(a2 + 232);
            v104 = *(a2 + 248);
          }

          OUTLINED_FUNCTION_80(v29, v30, v31, v32, v33, v34, v35, v36, v97, v98, v99, v100, time.value, *&time.timescale, time.epoch, v102, v103);
          Seconds = CMTimeGetSeconds(&time);
          *&time.value = *v17;
          OUTLINED_FUNCTION_269();
          v39 = Seconds - CMTimeGetSeconds(v38);
          FigGetUpTimeNanoseconds();
          if (v39 > 0.0)
          {
            v40 = *(a1 + 2568);
            *&time.value = *v17;
            OUTLINED_FUNCTION_269();
            CMTimeGetSeconds(v41);
            if (v40)
            {
              VTable = CMBaseObjectGetVTable();
              v51 = *(VTable + 16);
              v42 = VTable + 16;
              if (*(v51 + 56))
              {
                v52 = OUTLINED_FUNCTION_158();
                v42 = v53(v52);
              }
            }

            v54 = *(a1 + 2568);
            OUTLINED_FUNCTION_80(v42, v43, v44, v45, v46, v47, v48, v49, v97, v98, v99, v100, time.value, *&time.timescale, time.epoch, v102, v103);
            CMTimeGetSeconds(&time);
            if (v54 && *(*(CMBaseObjectGetVTable() + 16) + 56))
            {
              v55 = OUTLINED_FUNCTION_158();
              v56(v55);
            }

            if (*(a1 + 2568))
            {
              if (*(*(CMBaseObjectGetVTable() + 16) + 56))
              {
                v57 = OUTLINED_FUNCTION_158();
                v58(v57);
              }

              if (*(a1 + 2568) && *(*(CMBaseObjectGetVTable() + 16) + 56))
              {
                v59 = OUTLINED_FUNCTION_158();
                v60(v59);
              }
            }

            if (*(a2 + 456))
            {
              LODWORD(v97) = 0;
              OUTLINED_FUNCTION_473();
              if (v62 != v63)
              {
                FigAlternateHasAudio(v61);
                OUTLINED_FUNCTION_17();
              }

              if (*(a1 + 2568) && *(*(CMBaseObjectGetVTable() + 16) + 56))
              {
                OUTLINED_FUNCTION_293();
                OUTLINED_FUNCTION_333();
                v65(v64);
              }

              AlternateIndex = FigAlternateGetAlternateIndex(*(a2 + 456));
              LODWORD(v97) = AlternateIndex;
              v67 = *MEMORY[0x1E695E480];
              v69 = OUTLINED_FUNCTION_858(AlternateIndex, v68, &v97);
              if (*(a1 + 2568) && *(*(CMBaseObjectGetVTable() + 16) + 48))
              {
                OUTLINED_FUNCTION_333();
                v70();
              }

              FigAlternateGetPeakBitRate(*(a2 + 456));
              if (*(a1 + 2568) && *(*(CMBaseObjectGetVTable() + 16) + 56))
              {
                OUTLINED_FUNCTION_288();
                v71();
              }

              FigAlternateGetAverageBitRate(*(a2 + 456));
              if (*(a1 + 2568) && *(*(CMBaseObjectGetVTable() + 16) + 56))
              {
                OUTLINED_FUNCTION_288();
                v72();
              }

              FigAlternateGetVariantBitrateRank(*(a2 + 456), *(a1 + 2900));
              if (*(a1 + 2568) && *(*(CMBaseObjectGetVTable() + 16) + 56))
              {
                OUTLINED_FUNCTION_288();
                v73();
              }

              FigAlternateGetCodecString(*(a2 + 456));
              if (*(a1 + 2568) && *(*(CMBaseObjectGetVTable() + 16) + 48))
              {
                OUTLINED_FUNCTION_481();
                OUTLINED_FUNCTION_240();
                v74();
              }

              OUTLINED_FUNCTION_63();
              if (v4)
              {
                fpfsi_RTCReportingUpdateAudioInfoForVariantEnd(a1, a2);
              }

              else
              {
                OUTLINED_FUNCTION_33();
                if (v4)
                {
                  FigAlternateGetHDCPString(*(a2 + 456));
                  FigAlternateGetVideoRangeString(*(a2 + 456));
                  time.value = 0;
                  Resolution = FigAlternateGetResolution(*(a2 + 456));
                  if (v76 > 0.0 && Resolution > 0.0)
                  {
                    OUTLINED_FUNCTION_288();
                    FigReportingAgentStatsSetIntValueWithOptions(v77);
                    OUTLINED_FUNCTION_288();
                    FigReportingAgentStatsSetIntValueWithOptions(v78);
                  }

                  time.value = FigAlternateGetFrameRate(*(a2 + 456));
                  v79 = CFNumberCreate(v67, kCFNumberDoubleType, &time);
                  FigReportingAgentStatsSetCFTypeValue(*(a1 + 2568));
                  FigReportingAgentStatsSetCFTypeValue(*(a1 + 2568));
                  FigReportingAgentStatsSetCFTypeValue(*(a1 + 2568));
                  FigAlternateGetVideoQualityIndex(*(a2 + 456), v80);
                  OUTLINED_FUNCTION_288();
                  FigReportingAgentStatsSetIntValueWithOptions(v81);
                  if (v79)
                  {
                    CFRelease(v79);
                  }
                }
              }

              if (v69)
              {
                CFRelease(v69);
              }
            }

            if (*(a1 + 2568) && *(*(CMBaseObjectGetVTable() + 16) + 8))
            {
              OUTLINED_FUNCTION_171();
              OUTLINED_FUNCTION_305();
              v82();
            }
          }

          if (*(a1 + 2568))
          {
            if (*(*(CMBaseObjectGetVTable() + 16) + 64))
            {
              v83 = OUTLINED_FUNCTION_171();
              v84(v83);
            }

            if (*(a1 + 2568))
            {
              if (*(*(CMBaseObjectGetVTable() + 16) + 64))
              {
                v85 = OUTLINED_FUNCTION_171();
                v86(v85);
              }

              if (*(a1 + 2568))
              {
                if (*(*(CMBaseObjectGetVTable() + 16) + 64))
                {
                  v87 = OUTLINED_FUNCTION_171();
                  v88(v87);
                }

                if (*(a1 + 2568))
                {
                  if (*(*(CMBaseObjectGetVTable() + 16) + 64))
                  {
                    v89 = OUTLINED_FUNCTION_171();
                    v90(v89);
                  }

                  if (*(a1 + 2568))
                  {
                    if (*(*(CMBaseObjectGetVTable() + 16) + 64))
                    {
                      v91 = OUTLINED_FUNCTION_171();
                      v92(v91);
                    }

                    if (*(a1 + 2568))
                    {
                      if (*(*(CMBaseObjectGetVTable() + 16) + 64))
                      {
                        v93 = OUTLINED_FUNCTION_171();
                        v94(v93);
                      }

                      if (*(a1 + 2568))
                      {
                        if (*(*(CMBaseObjectGetVTable() + 16) + 64))
                        {
                          v95 = OUTLINED_FUNCTION_171();
                          v96(v95);
                        }
                      }
                    }
                  }
                }
              }
            }
          }

          *v17 = v103;
          *(a1 + 3064) = v104;
          *(a1 + 3072) = FigGetUpTimeNanoseconds();
        }
      }
    }
  }
}

uint64_t fpfsi_RemoveCPECryptorListenersOncePerItem(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 400);
  result = CMBaseObjectGetDerivedStorage();
  if (v3)
  {
    v5 = *(result + 1024);
    if (v5)
    {
      while (v5 == a2 || *(v5 + 400) != v3)
      {
        v5 = *(v5 + 24);
        if (!v5)
        {
          goto LABEL_6;
        }
      }
    }

    else
    {
LABEL_6:
      v6 = *(result + 1040);
      if (v6)
      {
        while (v6 == a2 || *(v6 + 400) != v3)
        {
          v6 = *(v6 + 24);
          if (!v6)
          {
            goto LABEL_10;
          }
        }
      }

      else
      {
LABEL_10:
        CMNotificationCenterGetDefaultLocalCenter();
        OUTLINED_FUNCTION_287();
        result = FigNotificationCenterRemoveWeakListener();
        if (!result)
        {
          CMNotificationCenterGetDefaultLocalCenter();
          OUTLINED_FUNCTION_286();

          return FigNotificationCenterRemoveWeakListener();
        }
      }
    }
  }

  return result;
}

void fpfs_MarkAccessLogEntryComplete()
{
  OUTLINED_FUNCTION_831();
  v41 = v0;
  v42 = v1;
  v3 = v2;
  v5 = v4;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (v3 < 0)
  {
LABEL_31:
    OUTLINED_FUNCTION_648();
    return;
  }

  v7 = DerivedStorage;
  if (CFArrayGetCount(*(DerivedStorage + 1920)) > v3)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(*(v7 + 1920), v3);
    if (ValueAtIndex)
    {
      v9 = ValueAtIndex;
      if (CFDictionaryContainsKey(ValueAtIndex, @"c-provisional-entry"))
      {
        fpfs_UpdateCurrentAccessLogEntryPlayTimes(v7);
        valuePtr = 0;
        Value = CFDictionaryGetValue(v9, @"c-frames-dropped");
        if (Value)
        {
          CFNumberGetValue(Value, kCFNumberCFIndexType, &valuePtr);
        }

        v11 = CMBaseObjectGetDerivedStorage();
        theDict[0] = 0;
        v12 = fpfsi_copyCurrentVideoDestination(v5);
        if (v12 || (v19 = *(v11 + 752)) != 0 && (v12 = CFRetain(v19)) != 0)
        {
          v5 = v12;
          AllocatorForMedia = FigGetAllocatorForMedia();
          FigAggregateVideoDestinationGetCMBaseObject();
          v15 = v14;
          v16 = *(*(CMBaseObjectGetVTable() + 8) + 48);
          if (v16 && (v16(v15, @"PerformanceDictionary", AllocatorForMedia, theDict), theDict[0]) && (v39 = 0, v38 = 0, CFDictionaryGetValue(theDict[0], @"imagequeue-0"), FigCFDictionaryGetInt32IfPresent(), FigCFDictionaryGetInt32IfPresent(), FigCFDictionaryGetInt32IfPresent()))
          {
            v17 = SHIDWORD(v39);
            if (*(v11 + 745))
            {
              v18 = v39;
              v36 = v38;
              *(v11 + 745) = 0;
            }

            else
            {
              v17 = SHIDWORD(v39) - *(v11 + 2120);
              v18 = v39 - *(v11 + 2128);
              v36 = v38 - *(v11 + 2136);
            }

            v35 = v18;
            if (v17 >= 1)
            {
              v25 = *(v11 + 2568);
              if (v25)
              {
                v26 = *(*(CMBaseObjectGetVTable() + 16) + 32);
                if (v26)
                {
                  v26(v25, @"playerStats", 0x1F0B65218, v17);
                }
              }

              *(v11 + 2120) += v17;
              v18 = v35;
            }

            if (v18 >= 1)
            {
              v27 = *(v11 + 2568);
              if (v27)
              {
                v28 = *(*(CMBaseObjectGetVTable() + 16) + 32);
                if (v28)
                {
                  v28(v27, @"playerStats", 0x1F0B65238, v35);
                }
              }

              v18 = v35;
              *(v11 + 2128) += v35;
            }

            if (v17 > v18)
            {
              v29 = *(v11 + 2568);
              if (v29)
              {
                v35 = v17 - v18;
                v30 = *(*(CMBaseObjectGetVTable() + 16) + 32);
                if (v30)
                {
                  v30(v29, @"playerStats", 0x1F0B65258, v35);
                }
              }
            }

            if (v36 >= 1)
            {
              v31 = *(v11 + 2568);
              if (v31)
              {
                v32 = *(*(CMBaseObjectGetVTable() + 16) + 32);
                if (v32)
                {
                  v32(v31, @"playerStats", 0x1F0B65278, v36);
                }
              }

              *(v11 + 2136) += v36;
            }
          }

          else
          {
            v17 = 0;
          }

          CFRelease(v5);
        }

        else
        {
          v17 = 0;
        }

        if (theDict[0])
        {
          CFRelease(theDict[0]);
        }

        valuePtr += v17;
        if (CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberCFIndexType, &valuePtr))
        {
          v20 = OUTLINED_FUNCTION_773();
          CFDictionarySetValue(v20, @"c-frames-dropped", v5);
          CFRelease(v5);
        }

        else
        {
          OUTLINED_FUNCTION_239();
          FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v35, v36, valuePtr);
        }

        v21 = OUTLINED_FUNCTION_284();
        CFDictionaryRemoveValue(v21, v22);
      }
    }

    if (*(v7 + 2648) == v3)
    {
      *(v7 + 2648) = -1;
      v23 = *(v7 + 1024);
      if (v23)
      {
        while (1)
        {
          v24 = *(v23 + 440);
          if (v24 > v3 && *(v7 + 1088) == *(v23 + 196) && *(v23 + 168) == 6)
          {
            break;
          }

          v23 = *(v23 + 24);
          if (!v23)
          {
            goto LABEL_31;
          }
        }

        *(v7 + 2648) = v24;
      }
    }

    goto LABEL_31;
  }

  OUTLINED_FUNCTION_239();
  OUTLINED_FUNCTION_648();

  FigSignalErrorAtGM(v33);
}

uint64_t fpfs_setPropertyOnPrimaryAndAuxRenderPipelines()
{
  OUTLINED_FUNCTION_471();
  v1 = *(v0 + 88);
  FigRenderPipelineGetFigBaseObject();
  if (!*(*(CMBaseObjectGetVTable() + 8) + 56))
  {
    return 4294954514;
  }

  v2 = OUTLINED_FUNCTION_171();
  result = v3(v2);
  if (!result && v1)
  {
    do
    {
      FigRenderPipelineGetFigBaseObject();
      if (*(*(CMBaseObjectGetVTable() + 8) + 56))
      {
        v5 = OUTLINED_FUNCTION_171();
        v6(v5);
      }

      v1 = *(v1 + 88);
    }

    while (v1);
    return 0;
  }

  return result;
}

uint64_t fpfs_SetTimebaseOnTrack()
{
  OUTLINED_FUNCTION_187();
  CMBaseObjectGetDerivedStorage();
  result = fpfs_setPropertyOnPrimaryAndAuxRenderPipelines();
  if (!result)
  {
    *(*(v0 + 112) + 25) = 1;
    v2 = OUTLINED_FUNCTION_177();

    return fpfs_GetRelativeRateAndSetRate2OnRenderPipelines(v2, v3);
  }

  return result;
}

uint64_t fpfs_WantAudioHardwarePassthroughForTrack(uint64_t a1, int *a2)
{
  OUTLINED_FUNCTION_63();
  if (!v4)
  {
    goto LABEL_15;
  }

  v5 = v3;
  if (!*(v3 + 56))
  {
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v15, v16, v17);
LABEL_15:
    v7 = 0;
LABEL_16:
    result = 0;
    goto LABEL_6;
  }

  result = FigAudioQueueRenderPipelineIsPassthroughSupported();
  if (result)
  {
    result = fpfs_passthroughFormatForAudioFormat(*(v5 + 56));
    v7 = result;
    if (!result)
    {
      goto LABEL_6;
    }

    OUTLINED_FUNCTION_296();
    AudioDeviceMaxPhysicalOutputChannelCount = fpfs_GetAudioDeviceMaxPhysicalOutputChannelCount(v8, v9, v10);
    v12 = fpfs_GetAudioDeviceMaxPhysicalOutputChannelCount(*(v5 + 16), 1, v7);
    if (v12 < 1)
    {
      goto LABEL_16;
    }

    v13 = v12;
    CMBaseObjectGetDerivedStorage();
    CMBaseObjectGetDerivedStorage();
    if (FigCFEqual() || (CMFormatDescriptionGetMediaSubType(*(v5 + 56)), v13 > AudioDeviceMaxPhysicalOutputChannelCount))
    {
      result = 1;
    }

    else
    {
      IsDecodable = FigAudioCodecTypeIsDecodable();
      result = OUTLINED_FUNCTION_616(IsDecodable);
    }
  }

  else
  {
    v7 = 0;
  }

LABEL_6:
  if (a2)
  {
    *a2 = v7;
  }

  return result;
}

uint64_t fpfs_GetAudioDeviceMaxPhysicalOutputChannelCount(uint64_t a1, int a2, int a3)
{
  v35 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a2)
  {
    if (a3)
    {
      v6 = CMBaseObjectGetDerivedStorage();
      result = 0;
      if (a3 == 1633889587 && *(v6 + 536))
      {
        if (*(v6 + 569))
        {
          return 6;
        }

        else
        {
          return 0;
        }
      }
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = CMBaseObjectGetDerivedStorage();
    if (FigCFEqual())
    {
      return 2;
    }

    else
    {
      v9 = *DerivedStorage;
      if (*(v8 + 504))
      {
        valuePtr[0] = 2;
        CMBaseObjectGetDerivedStorage();
        if (*(CMBaseObjectGetDerivedStorage() + 504))
        {
          FigGetAllocatorForMedia();
          OUTLINED_FUNCTION_519();
          FigBufferedAirPlayOutputGetCMBaseObject();
          if (*(*(CMBaseObjectGetVTable() + 8) + 48))
          {
            v10 = OUTLINED_FUNCTION_621();
            if (!v11(v10))
            {
              if (FigCFEqual())
              {
                valuePtr[0] = 16;
              }

              else
              {
                FigGetAllocatorForMedia();
                OUTLINED_FUNCTION_251();
                FigBufferedAirPlayOutputGetCMBaseObject();
                if (*(*(CMBaseObjectGetVTable() + 8) + 48))
                {
                  v12 = OUTLINED_FUNCTION_228();
                  if (!v13(v12))
                  {
                    CFNumberGetValue(0, kCFNumberSInt32Type, valuePtr);
                  }
                }
              }
            }
          }
        }

        else
        {
          os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
          OUTLINED_FUNCTION_189();
          if (v16)
          {
            v17 = v15;
          }

          else
          {
            v17 = 0;
          }

          if (v17)
          {
            if (v9)
            {
              CMBaseObjectGetDerivedStorage();
            }

            valuePtr[1] = 136315650;
            OUTLINED_FUNCTION_47();
            v32 = v9;
            v33 = 2082;
            v34 = v18;
            OUTLINED_FUNCTION_32();
            OUTLINED_FUNCTION_65();
            _os_log_send_and_compose_impl(v19, v20, v21, v22, v23, v24, 0, v25);
          }

          OUTLINED_FUNCTION_16();
          OUTLINED_FUNCTION_524(v26, v27, v28, v29, v30);
        }

        return valuePtr[0];
      }

      else
      {

        return fpfs_GetAudioDeviceMaxMixablePhysicalOutputChannelCountFromFigAudioSession(v9);
      }
    }
  }

  return result;
}

uint64_t fpfs_GetAudioDeviceMaxMixablePhysicalOutputChannelCountFromFigAudioSession(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  result = 2;
  v5 = 2;
  v3 = *(DerivedStorage + 536);
  if (v3)
  {
    AudioSessionOutputChannelCount = FPSupport_GetAudioSessionOutputChannelCount(v3, &v5);
    result = v5;
    if (!AudioSessionOutputChannelCount && v5 == 32)
    {
      if (*(CMBaseObjectGetDerivedStorage() + 568))
      {
        return 16;
      }

      else
      {
        return v5;
      }
    }
  }

  return result;
}

uint64_t fpfs_GetRelativeRateAndSetRate2OnRenderPipelines(uint64_t a1, uint64_t a2)
{
  CMBaseObjectGetDerivedStorage();
  OUTLINED_FUNCTION_572();
  if (*(v3 + 3192) && (OUTLINED_FUNCTION_63(), v5) && *(a2 + 112))
  {
    v6 = v4;
    FigGetAllocatorForMedia();
    OUTLINED_FUNCTION_179();
    FigRenderPipelineGetFigBaseObject();
    if (*(*(CMBaseObjectGetVTable() + 8) + 48))
    {
      v7 = OUTLINED_FUNCTION_188();
      v9 = v8(v7);
      if (v9)
      {
        v15 = v9;
      }

      else
      {
        Clock = FigRateMinderGetClock(*(v6 + 3192));
        RelativeRate = CMSyncGetRelativeRate(Clock, relativeToClockOrTimebase);
        valuePtr = RelativeRate;
        v12 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberFloat32Type, &valuePtr);
        OUTLINED_FUNCTION_713();
        FigRenderPipelineGetFigBaseObject();
        if (*(*(CMBaseObjectGetVTable() + 8) + 56))
        {
          v13 = OUTLINED_FUNCTION_236();
          v15 = v14(v13);
        }

        else
        {
          v15 = 4294954514;
        }

        if (v12)
        {
          CFRelease(v12);
        }
      }
    }

    else
    {
      v15 = 4294954514;
    }
  }

  else
  {
    v15 = 0;
  }

  if (relativeToClockOrTimebase)
  {
    CFRelease(relativeToClockOrTimebase);
  }

  return v15;
}

void fpfs_scheduleVolumeRamping(uint64_t a1, float a2, float a3)
{
  v32 = a3;
  valuePtr = a2;
  if (*(a1 + 112))
  {
    OUTLINED_FUNCTION_700();
    AllocatorForMedia = FigGetAllocatorForMedia();
    values = CFArrayCreateMutable(AllocatorForMedia, 0, MEMORY[0x1E695E9C0]);
    if (values)
    {
      FigGetAllocatorForMedia();
      *&v30.value = *v3;
      OUTLINED_FUNCTION_447();
      v8 = CMTimeCopyAsDictionary(v6, v7);
      if (v8)
      {
        v9 = v8;
        v10 = OUTLINED_FUNCTION_797();
        CFArrayAppendValue(v10, v11);
        CFRelease(v9);
        v12 = *MEMORY[0x1E695E480];
        if (CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberFloatType, &valuePtr))
        {
          v13 = OUTLINED_FUNCTION_603();
          CFArrayAppendValue(v13, v4);
          CFRelease(v4);
          v14 = OUTLINED_FUNCTION_171();
          CFArrayAppendValue(v14, v15);
          FigGetAllocatorForMedia();
          OUTLINED_FUNCTION_315();
          v17 = CMTimeCopyAsDictionary(&v30, v16);
          if (v17)
          {
            v18 = v17;
            v19 = OUTLINED_FUNCTION_178();
            CFArrayAppendValue(v19, v20);
            CFRelease(v18);
            v21 = CFNumberCreate(v12, kCFNumberFloatType, &v32);
            if (v21)
            {
              v22 = v21;
              v23 = OUTLINED_FUNCTION_178();
              CFArrayAppendValue(v23, v24);
              CFRelease(v22);
              v25 = OUTLINED_FUNCTION_171();
              CFArrayAppendValue(v25, v26);
              v27 = FigGetAllocatorForMedia();
              v28 = CFDictionaryCreate(v27, kFigAudioRenderPipelineAudioCurve_Volume, &values, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
              if (v28)
              {
                v29 = v28;
                fpfs_setPropertyOnPrimaryAndAuxRenderPipelines();
                CFRelease(v29);
              }
            }
          }
        }
      }

      if (values)
      {
        CFRelease(values);
      }
    }
  }
}

void fpfsi_PlaybackHasTraversedForwardEndTime(uint64_t a1)
{
  v28 = *MEMORY[0x1E69E9840];
  CMBaseObjectGetDerivedStorage();
  OUTLINED_FUNCTION_167(MEMORY[0x1E6960C70]);
  if (v2)
  {
    OUTLINED_FUNCTION_172(v2);
    if (CMBaseObjectGetDerivedStorage())
    {
      v3 = OUTLINED_FUNCTION_690();
      fpfs_GetTime(v3, v4);
      OUTLINED_FUNCTION_388(v1 + 1352);
      v19 = *(v1 + 1368);
      FPSTimelineConverterL3TimeToL2(&v18, &v21);
      v26 = v21.n128_u64[0];
      v27 = v21.n128_u32[2];
      OUTLINED_FUNCTION_350();
      if (v14)
      {
        v15 = v22;
        v21.n128_u64[1] = v24;
        v22 = v25;
        v16 = OUTLINED_FUNCTION_175(v5, v6, v7, v8, v9, v10, v11, v12, v26, __SPAIR64__(v13, v27), v15, v20, v23);
        CMTimeCompare(v16, v17);
      }
    }
  }
}

void fpfs_AudioDecoderError()
{
  OUTLINED_FUNCTION_193();
  OUTLINED_FUNCTION_382();
  v157 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v6 = OUTLINED_FUNCTION_258(DerivedStorage);
  v153 = *MEMORY[0x1E6960C70];
  v154 = *(MEMORY[0x1E6960C70] + 8);
  v133 = v6;
  v7 = CMBaseObjectGetDerivedStorage();
  OUTLINED_FUNCTION_248(v7);
  FigSimpleMutexLock();
  OUTLINED_FUNCTION_526();
  if (!FigRetainProxyIsInvalidated())
  {
    v8 = v3[103];
    OUTLINED_FUNCTION_298();
    fpfsi_EndPresentationTimeForDecodedSamplesForRenderPipeline(v9, v10);
    OUTLINED_FUNCTION_204();
    if ((v11 & 1) == 0 && v8)
    {
      CMBufferQueueGetMinPresentationTimeStamp(&time, *(v8 + 40));
      OUTLINED_FUNCTION_204();
    }

    if ((v11 & 1) == 0)
    {
      fpfs_GetTime(v3, lhs);
      CMTimeMake(&rhs, 1, 1);
      CMTimeAdd(&time, lhs, &rhs);
      OUTLINED_FUNCTION_204();
    }

    HIDWORD(v129) = v11;
    OUTLINED_FUNCTION_655();
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, type.value);
    OUTLINED_FUNCTION_37();
    *v131 = v2;
    if (v4)
    {
      if (v133)
      {
        v13 = (CMBaseObjectGetDerivedStorage() + 888);
      }

      else
      {
        v13 = "";
      }

      v14 = v1;
      if (v0)
      {
        v15 = (CMBaseObjectGetDerivedStorage() + 3096);
      }

      else
      {
        v15 = "";
      }

      time.value = v155;
      time.timescale = v156;
      time.flags = HIDWORD(v129);
      time.epoch = *v131;
      *&v16 = CMTimeGetSeconds(&time);
      LODWORD(lhs[0].value) = 136316674;
      *(&lhs[0].value + 4) = "fpfs_AudioDecoderError";
      LOWORD(lhs[0].flags) = 2048;
      *(&lhs[0].flags + 2) = v133;
      HIWORD(lhs[0].epoch) = 2082;
      lhs[1].value = v13;
      LOWORD(lhs[1].timescale) = 2048;
      *(&lhs[1].timescale + 2) = v0;
      WORD1(lhs[1].epoch) = 2082;
      *(&lhs[1].epoch + 4) = v15;
      WORD2(lhs[2].value) = 2048;
      v1 = v14;
      *(&lhs[2].value + 6) = v14;
      HIWORD(lhs[2].flags) = 2048;
      lhs[2].epoch = v16;
      OUTLINED_FUNCTION_170();
      v99 = lhs;
      OUTLINED_FUNCTION_27();
      OUTLINED_FUNCTION_200();
      _os_log_send_and_compose_impl(v17, v18, v19, v20, v21, v22, v23, v24);
    }

    OUTLINED_FUNCTION_16();
    OUTLINED_FUNCTION_449(v25, v26, v27, v28, v29);
    if (v8 && *(v8 + 32) == v1)
    {
      fpfsi_ClearCachedAudioRenderChains(v0);
    }

    v30 = v3[128];
    if (v30)
    {
      v127 = 0;
      v31 = *(MEMORY[0x1E6960C70] + 12);
      v116 = (v3 + 138);
      v118 = (v3 + 122);
      v114 = (v3 + 141);
      OUTLINED_FUNCTION_473();
      *&v33 = 136316418;
      *v122 = v33;
      *&v33 = 136316674;
      *v111 = v33;
      v125 = v34;
      v120 = v34;
      while (1)
      {
        v35 = *(v30 + 32);
        v36 = *(v30 + 48) != v32 || (v31 & 1) == 0;
        if (!v36)
        {
          if (v35 >= v127)
          {
            goto LABEL_83;
          }

          fpfsi_MoveTrackToPlayedOut(v3, v30, MEMORY[0x1E6960C70]);
          fpfs_ResurrectPlayedOutTrack(v30);
          if (*(v30 + 168) == 6)
          {
            time.value = v153;
            time.timescale = v154;
            time.flags = v31;
            time.epoch = v120;
            fpfsi_RestartResurrectedTrack(v30, &time, 1);
          }

          goto LABEL_33;
        }

        v37 = *(v30 + 24);
        v38 = *(v30 + 112);
        if (!v38 || *(v38 + 32) != v1)
        {
          goto LABEL_28;
        }

        v39 = *(v30 + 198);
        if (*(v30 + 198))
        {
          time = *(v30 + 232);
          lhs[0].value = v155;
          lhs[0].timescale = v156;
          lhs[0].flags = HIDWORD(v129);
          lhs[0].epoch = *v131;
          if (CMTimeCompare(&time, lhs) < 1)
          {
            goto LABEL_83;
          }
        }

        else
        {
          OUTLINED_FUNCTION_133();
          fpfs_StopFeedingTrack(v84, v85, v86);
        }

        v40 = fpfs_cloneTrackAndAddToTrackList(v30, v39 == 0);
        if (!v40)
        {
          goto LABEL_83;
        }

        v41 = v40;
        *(v40 + 198) = v39;
        StreamBasicDescription = CMAudioFormatDescriptionGetStreamBasicDescription(*(v30 + 56));
        memset(&type, 0, sizeof(type));
        if (StreamBasicDescription)
        {
          CMTimeMake(&type, 2 * StreamBasicDescription->mFramesPerPacket, StreamBasicDescription->mSampleRate);
        }

        else
        {
          CMTimeMakeWithSeconds(&type, 0.2, 1000);
        }

        v43 = HIDWORD(v129);
        memset(&v139, 0, sizeof(v139));
        time.value = v155;
        time.timescale = v156;
        time.flags = HIDWORD(v129);
        time.epoch = *v131;
        lhs[0] = type;
        CMTimeAdd(&v139, &time, lhs);
        memset(lhs, 0, sizeof(lhs));
        v44 = CMBufferQueueReset(*(*(v30 + 112) + 40));
        lhs[0].value = v30;
        *&lhs[0].timescale = v139;
        if (*(v41 + 436))
        {
          OUTLINED_FUNCTION_695(v44, *(v30 + 96), v45, v46, v47, v48, v49, v50, *&v139.value, v99, v101, v103, v105, v107, *(&v107 + 1), *v111, *&v111[4], v114, v116, v118, v120, *v122, *&v122[4], v125, v127, v129, *v131, v133, v135, v137.value, *&v137.timescale, v137.epoch, v138, v51, v139.value);
          fpfs_DecodeTimeForAudioRandomAccessInBufferQueue(v41, &time, &rhs);
          OUTLINED_FUNCTION_694(v53, v54, v55, v56, v57, v58, v59, v60, v100, v102, v104, v106, v108, v110, v112, v113, v115, v117, v119, v121, v123, v124, v126, v128, v130, v132, v134, v136, v137.value, *&v137.timescale, v137.epoch, v138, *&v139.value);
          CMTimeSubtract(&time, &v137, &rhs);
          *&lhs[1].timescale = *&time.value;
          epoch = time.epoch;
        }

        else
        {
          *&lhs[1].timescale = *(v30 + 412);
          epoch = *(v30 + 428);
        }

        lhs[2].value = epoch;
        *&lhs[2].timescale = *MEMORY[0x1E6960C70];
        v109 = *&lhs[2].timescale;
        lhs[3].value = v125;
        *&lhs[3].timescale = *(v41 + 96);
        LOBYTE(lhs[3].epoch) = 0;
        *&lhs[4].flags = *(MEMORY[0x1E6960C80] + 16);
        *(&lhs[3].epoch + 4) = *MEMORY[0x1E6960C80];
        v61 = CMBufferQueueCallForEachBuffer(*(v30 + 96), fpfsi_ReuseSamplesInQueue, lhs);
        v62 = *(v30 + 248);
        v63 = *(v30 + 232);
        *(v41 + 232) = v63;
        *(v41 + 248) = v62;
        OUTLINED_FUNCTION_695(v61, v64, v65, v66, v67, v68, v69, v70, v63, v99, v101, v103, v105, v109, *(&v109 + 1), *v111, *&v111[4], v114, v116, v118, v120, *v122, *&v122[4], v125, v127, v129, *v131, v133, v135, v137.value, *&v137.timescale, v137.epoch, v138, v71, v139.value);
        fpfsi_RestartResurrectedTrack(v41, &time, 0);
        if (fpfsi_isTrackInLists(v3, v41, 3u))
        {
          if (fpfsi_isTrackInLists(v3, v30, 3u))
          {
            *(v30 + 232) = v155;
            *(v30 + 240) = v156;
            *(v30 + 244) = v43;
            *(v30 + 248) = *v131;
            if (*(v30 + 128))
            {
              *&v137.value = v107;
              v137.epoch = v125;
              fpfs_scheduleForwardEndTimeForTrack();
              if (dword_1EAF169F0)
              {
                HIDWORD(v135) = 0;
                BYTE3(v135) = 0;
                v89 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
                os_log_type_enabled(v89, OS_LOG_TYPE_DEFAULT);
                OUTLINED_FUNCTION_121();
                if (!v36)
                {
                  v90 = 0;
                }

                v105 = v1;
                if (v90)
                {
                  HIDWORD(v103) = v90;
                  *&v107 = v89;
                  if (v133)
                  {
                    v91 = (CMBaseObjectGetDerivedStorage() + 888);
                  }

                  else
                  {
                    v91 = "";
                  }

                  if (v0)
                  {
                    v92 = (CMBaseObjectGetDerivedStorage() + 3096);
                  }

                  else
                  {
                    v92 = "";
                  }

                  v93 = *(v30 + 32);
                  time = v137;
                  Seconds = CMTimeGetSeconds(&time);
                  LODWORD(rhs.value) = *v111;
                  *(&rhs.value + 4) = "fpfs_AudioDecoderError";
                  LOWORD(rhs.flags) = 2048;
                  *(&rhs.flags + 2) = v133;
                  HIWORD(rhs.epoch) = 2082;
                  v142 = v91;
                  v143 = 2048;
                  v144 = v0;
                  v145 = 2082;
                  v146 = v92;
                  v147 = 1024;
                  v148 = v93;
                  v149 = 2048;
                  v150 = Seconds;
                  OUTLINED_FUNCTION_779();
                  OUTLINED_FUNCTION_108();
                  _os_log_send_and_compose_impl(v95, v96, v97, v98, &dword_1962D5000, v107, 0, "<<<< FigStreamPlayer >>>> %s: [%p|%{public}s] <%p|%{public}s>: Rescheduled endTime of track %d to %g");
                }

                OUTLINED_FUNCTION_1();
                fig_log_call_emit_and_clean_up_after_send_and_compose();
                v1 = v105;
              }
            }
          }

          v127 = *(v41 + 32);
          if (*(v41 + 168) == 6 || !*(v41 + 198))
          {
            v153 = *(v41 + 232);
            v31 = *(v41 + 244);
            v154 = *(v41 + 240);
            v120 = *(v41 + 248);
            v87 = *(v41 + 196);
            if (*(v41 + 64) == *(v118 + 16 * v87 + 8))
            {
              v88 = v114;
            }

            else
            {
              v88 = v116;
            }

            *(v88 + 8 * v87) = *(v41 + 80);
          }

          else
          {
            fpfs_DeleteTrack(v0, v41);
          }

          goto LABEL_33;
        }

        if (dword_1EAF169F0)
        {
          break;
        }

LABEL_33:
        OUTLINED_FUNCTION_473();
        v37 = v3[128];
        if (!v37)
        {
          goto LABEL_83;
        }

        while (*(v37 + 32) <= v35)
        {
          v37 = *(v37 + 24);
          if (!v37)
          {
            goto LABEL_83;
          }
        }

LABEL_28:
        v30 = v37;
        if (!v37)
        {
          goto LABEL_83;
        }
      }

      LODWORD(v137.value) = 0;
      BYTE4(v135) = 0;
      v72 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      value = v137.value;
      os_log_type_enabled(v72, OS_LOG_TYPE_DEFAULT);
      OUTLINED_FUNCTION_121();
      if (v36)
      {
        v75 = v74;
      }

      else
      {
        v75 = value;
      }

      if (!v75)
      {
LABEL_59:
        OUTLINED_FUNCTION_1();
        fig_log_call_emit_and_clean_up_after_send_and_compose();
        goto LABEL_33;
      }

      v105 = v1;
      v76 = *v3;
      if (*v3)
      {
        v77 = (CMBaseObjectGetDerivedStorage() + 888);
        if (v0)
        {
LABEL_54:
          v78 = (CMBaseObjectGetDerivedStorage() + 3096);
LABEL_58:
          v79 = v3[20];
          LODWORD(rhs.value) = *v122;
          *(&rhs.value + 4) = "fpfs_AudioDecoderError";
          LOWORD(rhs.flags) = 2048;
          *(&rhs.flags + 2) = v76;
          HIWORD(rhs.epoch) = 2082;
          v142 = v77;
          v143 = 2048;
          v144 = v0;
          v145 = 2082;
          v146 = v78;
          v147 = 1024;
          v148 = v79;
          OUTLINED_FUNCTION_779();
          v80 = OUTLINED_FUNCTION_35();
          _os_log_send_and_compose_impl(v80, v81, v82, v83, &dword_1962D5000, v72, 0, "<<<< FigStreamPlayer >>>> %s: [%p|%{public}s] <%p|%{public}s>: (%d) newTrack failed to start.");
          v1 = v105;
          goto LABEL_59;
        }
      }

      else
      {
        v77 = "";
        if (v0)
        {
          goto LABEL_54;
        }
      }

      v78 = "";
      goto LABEL_58;
    }
  }

LABEL_83:
  fpfs_UnlockAndPostNotificationsWithCaller(v133);
  OUTLINED_FUNCTION_191();
}

void fpfsi_EndPresentationTimeForDecodedSamplesForRenderPipeline(uint64_t a2@<X1>, __n128 *a3@<X8>)
{
  CMBaseObjectGetDerivedStorage();
  OUTLINED_FUNCTION_390(MEMORY[0x1E6960C70]);
  a3[1].n128_u64[0] = v5;
  v12 = 0;
  if (a2)
  {
    FigGetAllocatorForMedia();
    OUTLINED_FUNCTION_179();
    FigRenderPipelineGetFigBaseObject();
    if (*(*(CMBaseObjectGetVTable() + 8) + 48))
    {
      v6 = OUTLINED_FUNCTION_188();
      v8 = v7(v6);
      v9 = v12;
      if (!v8)
      {
        CMTimeMakeFromDictionary(&v11, v12);
        OUTLINED_FUNCTION_385();
        FPSTimelineConverterL3TimeToL2(v10, a3);
        v9 = v12;
      }

      if (v9)
      {
        CFRelease(v9);
      }
    }
  }
}

void fpfsi_RestartResurrectedTrack(uint64_t a1, uint64_t a2, int a3)
{
  OUTLINED_FUNCTION_400();
  v8 = *(v7 + 16);
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  OUTLINED_FUNCTION_172(DerivedStorage);
  CMBaseObjectGetDerivedStorage();
  memset(&refcon[1], 0, 24);
  if (*(v4 + 48) == 1936684398)
  {
    refcon[0] = 0;
    v40 = **&MEMORY[0x1E6960C70];
    OUTLINED_FUNCTION_12();
    CMBufferQueueCallForEachBuffer(v10, v11, refcon);
    OUTLINED_FUNCTION_194();
    TrackOfType = fpfs_LastTrackOfType(v12, v13, v4);
    CMSampleBufferGetPresentationTimeStamp(&v39, refcon[0]);
    lhs = v39;
    OUTLINED_FUNCTION_169(v4 + 412);
    CMTimeSubtract(&time1, &lhs, &rhs);
    lhs = *(v4 + 144);
    CMTimeAdd(&v40, &time1, &lhs);
    if (a3 == 1 && TrackOfType)
    {
      if (*(TrackOfType + 80) == *(v4 + 80) && (*(TrackOfType + 244) & 1) != 0)
      {
        time1 = v40;
        lhs = *(TrackOfType + 232);
        if (CMTimeCompare(&time1, &lhs) < 0)
        {
          time1 = *(TrackOfType + 232);
          OUTLINED_FUNCTION_169(gFSPAudioCrossfadeDuration);
          v15 = CMTimeSubtract(&lhs, &time1, &rhs);
          *&rhs.timescale = *&v40.timescale;
          rhs.epoch = v40.epoch;
          v23 = OUTLINED_FUNCTION_499(v15, v16, v17, v18, v19, v20, v21, v22, v37, v39.value, *&v39.timescale, v39.epoch, v40.value, *&v40.timescale, v40.epoch, v41, refcon[0], refcon[1], refcon[2], refcon[3], v40.value);
          CMTimeMaximum(v25, v23, v24);
          *v5 = *&time1.value;
          epoch = time1.epoch;
          *(v5 + 16) = time1.epoch;
          *&time1.value = *v5;
          OUTLINED_FUNCTION_842(epoch, v38, v39.value, *&v39.timescale, v39.epoch, v40.value, *&v40.timescale, v40.epoch, v41, refcon[0]);
          v27 = OUTLINED_FUNCTION_409();
          fpfs_ChangeTrackState(v27, v28);
          OUTLINED_FUNCTION_352();
          time1.epoch = v29;
          fpfs_FinishAudioSyncAndStart();
          if (v30)
          {
            return;
          }

          goto LABEL_22;
        }
      }
    }

    else if (!TrackOfType)
    {
      goto LABEL_14;
    }

    if (*(TrackOfType + 80) != *(v4 + 80) && (!*(CMBaseObjectGetDerivedStorage() + 504) || (_os_feature_enabled_impl() & 1) == 0))
    {
      fpfsi_ClearCachedAudioRenderChains(v8);
    }
  }

LABEL_14:
  OUTLINED_FUNCTION_352();
  OUTLINED_FUNCTION_842(v31, v37, v39.value, *&v39.timescale, v39.epoch, v40.value, *&v40.timescale, v40.epoch, v41, refcon[0]);
  fpfs_ChangeTrackState(v4, 3u);
  OUTLINED_FUNCTION_63();
  if (v32)
  {
    if (!fpfs_CanRenderAudio(*v3))
    {
      goto LABEL_18;
    }

LABEL_29:
    OUTLINED_FUNCTION_352();
    time1.epoch = v35;
    lhs = *&refcon[1];
    OUTLINED_FUNCTION_759();
    OUTLINED_FUNCTION_298();
    fpfs_StartTrackPlaying();
    if (v36)
    {
      return;
    }

    goto LABEL_22;
  }

  OUTLINED_FUNCTION_33();
  if (!v32)
  {
    goto LABEL_29;
  }

  v33 = OUTLINED_FUNCTION_502();
  if (fpfs_CanRenderVideo(v33, v34))
  {
    goto LABEL_29;
  }

LABEL_18:
  OUTLINED_FUNCTION_33();
  if (v32 && !*(v4 + 200))
  {
    fpfs_ChangeTrackState(v4, 5u);
    OUTLINED_FUNCTION_234();
    fpfs_CheckVideoSyncQueue();
  }

  else
  {
    fpfs_ChangeTrackState(v4, 4u);
  }

LABEL_22:
  if (*(v3 + 2816) > *(v3 + 2820))
  {
    OUTLINED_FUNCTION_33();
    if (v32)
    {
      *(v3 + 2849) = 1;
    }

    else
    {
      OUTLINED_FUNCTION_63();
      if (v32)
      {
        *(v3 + 2848) = 1;
      }
    }
  }
}

uint64_t fpfs_cloneTrackAndAddToTrackList(uint64_t a1, int a2)
{
  v4 = *(a1 + 64);
  v5 = *(a1 + 40);
  fpfs_AddNewTrack();
  v7 = v6;
  if (v6)
  {
    *(v6 + 56) = FigFormatDescriptionRetain();
    v8 = *(a1 + 400);
    if (v8)
    {
      v8 = CFRetain(v8);
    }

    *(v7 + 400) = v8;
    v9 = *(a1 + 144);
    *(v7 + 160) = *(a1 + 160);
    *(v7 + 144) = v9;
    *(v7 + 80) = *(a1 + 80);
    v10 = *(a1 + 412);
    *(v7 + 428) = *(a1 + 428);
    *(v7 + 412) = v10;
    *(v7 + 436) = *(a1 + 436);
    v11 = *(v7 + 456);
    v12 = *(a1 + 456);
    *(v7 + 456) = v12;
    if (v12)
    {
      CFRetain(v12);
    }

    if (v11)
    {
      CFRelease(v11);
    }

    v13 = *(v7 + 480);
    v14 = *(a1 + 480);
    *(v7 + 480) = v14;
    if (v14)
    {
      CFRetain(v14);
    }

    if (v13)
    {
      CFRelease(v13);
    }

    if (a2)
    {
      v15 = *(*(CMBaseObjectGetVTable() + 16) + 32);
      if (!v15 || v15(v4, v5, &kManifoldOutputCallbacks, v7))
      {
        v16 = OUTLINED_FUNCTION_298();
        fpfs_DeleteTrack(v16, v17);
        return 0;
      }
    }
  }

  return v7;
}

void fpfs_scheduleForwardEndTimeForTrack()
{
  OUTLINED_FUNCTION_650();
  v68 = v0;
  v69 = v1;
  v3 = v2;
  v5 = v4;
  v67 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 576) && *(v5 + 128))
  {
    v7 = DerivedStorage;
    *v63 = *(DerivedStorage + 1352);
    *&v63[16] = *(DerivedStorage + 1368);
    FPSTimelineConverterL3TimeToL2(v63, &time);
    flags = time.flags;
    OUTLINED_FUNCTION_542();
    if (v9 && (value = time.value, timescale = time.timescale, epoch = time.epoch, OUTLINED_FUNCTION_366(), v21 = OUTLINED_FUNCTION_623(v13, v14, v15, v16, v17, v18, v19, v20, v51, v52, v53, v54, v56, v57, v58, v60, *(v5 + 232), *(v5 + 240), *(v5 + 248), v64, *v65, *&v65[8], *&v65[16], *&v65[24], *&v65[32], *&v65[40], *&v65[48], *&v65[56], time.value), CMTimeCompare(v21, v22) <= 0))
    {
      OUTLINED_FUNCTION_366();
      if (FigSpeedRampTimerScheduleForL2Time(v24, &time.value, 1u))
      {
LABEL_26:
        OUTLINED_FUNCTION_602();
        return;
      }
    }

    else if (*(v5 + 198))
    {
      value = *(v5 + 232);
      timescale = *(v5 + 240);
      flags = *(v5 + 244);
      epoch = *(v5 + 248);
      OUTLINED_FUNCTION_366();
      FigSpeedRampTimerScheduleForL2Time(v23, &time.value, 1u);
    }

    else
    {
      value = *MEMORY[0x1E6960C70];
      timescale = *(MEMORY[0x1E6960C70] + 8);
      flags = *(MEMORY[0x1E6960C70] + 12);
      epoch = *(MEMORY[0x1E6960C70] + 16);
      fpfsi_RemoveAndClearTimer((v5 + 128));
    }

    if ((flags & 1) != 0 && dword_1EAF169F0)
    {
      v25 = OUTLINED_FUNCTION_201();
      v59 = OUTLINED_FUNCTION_633(v25, v26, v27, v28, v29, v30, v31, v32, v51, v52, v53, v54, v56, v57, v58, v60, SBYTE2(v60), 0, 0);
      os_log_type_enabled(v59, type);
      OUTLINED_FUNCTION_134();
      if (v9)
      {
        v34 = v33;
      }

      else
      {
        v34 = v62;
      }

      if (v34)
      {
        v35 = *v7;
        if (*v7)
        {
          CMBaseObjectGetDerivedStorage();
        }

        v36 = *(v5 + 16);
        if (v36)
        {
          v37 = (CMBaseObjectGetDerivedStorage() + 3096);
        }

        else
        {
          v37 = "";
        }

        v55 = v37;
        v38 = *(v5 + 32);
        OUTLINED_FUNCTION_366();
        Seconds = CMTimeGetSeconds(&time);
        fpfs_GetTime(v7, &time);
        CMTimeGetSeconds(&time);
        *v63 = 136317442;
        *&v63[4] = "fpfs_scheduleForwardEndTimeForTrack";
        *&v63[12] = 2048;
        *&v63[14] = v35;
        OUTLINED_FUNCTION_599();
        *&v65[2] = v36;
        *&v65[10] = v40;
        *&v65[12] = v55;
        *&v65[20] = 1024;
        *&v65[22] = v38;
        *&v65[26] = v41;
        *&v65[28] = value;
        *&v65[36] = 1024;
        *&v65[38] = timescale;
        *&v65[42] = v41;
        *&v65[44] = Seconds;
        *&v65[52] = v41;
        *&v65[54] = v42;
        OUTLINED_FUNCTION_100();
        v43 = OUTLINED_FUNCTION_86();
        _os_log_send_and_compose_impl(v43, v44, v45, v46, v47, v59, type, v48);
      }

      OUTLINED_FUNCTION_4();
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    if (v3)
    {
      *v3 = value;
      *(v3 + 8) = timescale;
      *(v3 + 12) = flags;
      *(v3 + 16) = epoch;
    }

    goto LABEL_26;
  }

  OUTLINED_FUNCTION_111();
  OUTLINED_FUNCTION_602();

  FigSignalErrorAtGM(v49);
}

uint64_t fpfsi_RTCReportingUpdateVariantRank(uint64_t result, int a2, unsigned int a3)
{
  v4 = result;
  if ((a2 & 0x80000000) == 0)
  {
    if (*(result + 2568))
    {
      VTable = CMBaseObjectGetVTable();
      v6 = *(VTable + 16);
      result = VTable + 16;
      if (*(v6 + 56))
      {
        v7 = OUTLINED_FUNCTION_722();
        result = v8(v7);
      }
    }
  }

  if ((a3 & 0x80000000) == 0)
  {
    v9 = *(v4 + 2568);
    if (v9)
    {
      v10 = CMBaseObjectGetVTable();
      v11 = *(v10 + 16);
      result = v10 + 16;
      v12 = *(v11 + 56);
      if (v12)
      {

        return v12(v9, @"playerStats", 0x1F0B42B78, a3, 0);
      }
    }
  }

  return result;
}

void fpfs_VideoSyncTimerDispatchFunc()
{
  OUTLINED_FUNCTION_650();
  v109 = v2;
  v110 = v3;
  v95 = *MEMORY[0x1E69E9840];
  CFArrayGetValueAtIndex(v4, 0);
  v5 = OUTLINED_FUNCTION_199();
  ValueAtIndex = CFArrayGetValueAtIndex(v5, 1);
  v12 = fpfsi_CopyPlayerAndItemFromItemRetainProxyAndLockPlayer(v0, &v70, &cf, v7, v8, v9, v10, v11, v51, v53, v55, v57, v60, v64, v67, SBYTE2(v67), BYTE3(v67), SHIDWORD(v67), 0, 0, 0, 0, *v72, *&v72[8], *&v72[16], v74, v75, *&v76[6], *&v76[14], *&v78[2], SLOWORD(v79), v80, time.value, time.timescale, time.epoch, v82, v83, v84, v85, v86, v87, v88, v89, v90, v91, v92, v93, v94, v95, v96, v97, v98, v99, v100, v101, v102, v103, v104, v105, v106, v107, v108, v2);
  v13 = cf;
  if (!v12)
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    v15 = v70;
    v16 = *(CMBaseObjectGetDerivedStorage() + 840);
    voucher_adopt();
    v24 = DerivedStorage[128];
    if (v24)
    {
      while (*(v24 + 32) != ValueAtIndex)
      {
        v24 = *(v24 + 24);
        if (!v24)
        {
          goto LABEL_5;
        }
      }

      v25 = *(v24 + 64);
      v26 = DerivedStorage[2 * *(v24 + 196) + 123];
      if (dword_1EAF169F0)
      {
        v66 = OUTLINED_FUNCTION_633(qword_1EAF169E8, v17, v18, v19, v20, v21, v22, v23, v52, v54, v56, v58, v61, v63, v65, *v68, v68[2], 0, 0);
        os_log_type_enabled(v66, type);
        OUTLINED_FUNCTION_70();
        if (v1)
        {
          v27 = *DerivedStorage;
          if (*DerivedStorage)
          {
            v28 = (CMBaseObjectGetDerivedStorage() + 888);
          }

          else
          {
            v28 = "";
          }

          v62 = v28;
          if (v13)
          {
            v29 = (CMBaseObjectGetDerivedStorage() + 3096);
          }

          else
          {
            v29 = "";
          }

          v59 = v29;
          fpfs_GetTime(DerivedStorage, &time);
          Seconds = CMTimeGetSeconds(&time);
          OUTLINED_FUNCTION_741();
          v31 = CMTimeGetSeconds(&time);
          *v72 = 136316674;
          *&v72[4] = "fpfs_VideoSyncTimerProc";
          *&v72[12] = 2048;
          *&v72[14] = v27;
          v73 = 2082;
          v74 = v62;
          v75 = 2048;
          *v76 = v13;
          *&v76[8] = 2082;
          *&v76[10] = v59;
          v77 = 2048;
          *v78 = Seconds;
          *&v78[8] = 2048;
          v79 = v31;
          OUTLINED_FUNCTION_146();
          v32 = OUTLINED_FUNCTION_35();
          _os_log_send_and_compose_impl(v32, v33, v34, v35, v36, v66, type, v37);
        }

        OUTLINED_FUNCTION_7();
        OUTLINED_FUNCTION_454(v38, v39, v40, v41, v42);
      }

      v43 = *(v24 + 280);
      if (v43)
      {
        CFRelease(v43);
        *(v24 + 280) = 0;
      }

      if (v25 == v26)
      {
        v44 = OUTLINED_FUNCTION_489();
        fpfs_IsTrialReadyToComplete(v44, v45);
      }

      fpfs_CheckVideoSyncQueue();
      if (v46)
      {
        fpfs_FinishVideoSync();
        if (v47 != -16042)
        {
          if (v47)
          {
            v48 = OUTLINED_FUNCTION_235();
            fpfs_StopPlayingItemWithOSStatus(v48, v49, v50);
          }
        }
      }
    }

LABEL_5:

    fpfs_UnlockAndPostNotificationsWithCaller(v15);
  }

  if (v13)
  {
    CFRelease(v13);
  }

  if (v70)
  {
    CFRelease(v70);
  }

  OUTLINED_FUNCTION_602();
}

void fpfs_CheckVideoSyncQueue()
{
  OUTLINED_FUNCTION_813();
  v2 = v1;
  v4 = v3;
  v737 = *MEMORY[0x1E69E9840];
  v5 = *(v3 + 16);
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  OUTLINED_FUNCTION_180(DerivedStorage);
  v7 = CMBaseObjectGetDerivedStorage();
  *v693 = *MEMORY[0x1E6960C70];
  *v633 = *v693;
  v694 = *(MEMORY[0x1E6960C70] + 16);
  v8 = v694;
  memset(&v692, 0, sizeof(v692));
  OUTLINED_FUNCTION_142();
  OUTLINED_FUNCTION_737();
  CMTimeMake(v9, -33, 1000);
  memset(&v688, 0, sizeof(v688));
  CMTimeMake(&v688, -10, 1000);
  bzero(v676, 0x90uLL);
  memset(&v675, 0, sizeof(v675));
  *v673 = *v633;
  v674 = v8;
  v10 = OUTLINED_FUNCTION_502();
  if (fpfs_CanRenderVideo(v10, v11))
  {
    HIDWORD(v626) = *(v0 + 2904) == 0;
  }

  else
  {
    HIDWORD(v626) = 0;
  }

  if (*(v4 + 400))
  {
    fpfs_isDecryptorReady(v4);
    OUTLINED_FUNCTION_786();
    HIDWORD(v508) = v12;
  }

  else
  {
    HIDWORD(v508) = 0;
  }

  v524 = *(v0 + 16 * *(v4 + 196) + 984);
  v531 = *(v4 + 64);
  v672 = **&MEMORY[0x1E6960CC0];
  *v497 = *&v672.value;
  epoch = v672.epoch;
  v670 = 0uLL;
  v671 = 0;
  v668[0] = 0;
  v668[1] = 0;
  v669 = 0;
  v663 = 0uLL;
  v664 = 0;
  fpfs_GetTime(v0, &v663);
  *v665 = OUTLINED_FUNCTION_263(v13, v14, v15, v16, v17, v18, v19, v20, v408, v417, v426, v435, v444, v453, v461, v470, v479, epoch, v497[0], v497[1], v508, v515, v524, v531, v538, v545, v552, v559, v565, v572, v581, v589, v598, v608, v617, v626, v633[0], v633[1], v644, v651, v657, *&v663);
  v666 = v664;
  v21 = *(v4 + 168);
  if ((v21 & 0xFFFFFFFB) != 1)
  {
    goto LABEL_240;
  }

  if (*(v7 + 456))
  {
    CMTimeMake(&time, -250, 1000);
    *v689 = *&time.value;
    v690 = time.epoch;
    CMTimeMake(&time, -200, 1000);
    v688 = time;
    v21 = *(v4 + 168);
  }

  v733 = *(v4 + 288);
  timescale = *(v4 + 296);
  v22 = *(v4 + 300);
  v23 = *(v4 + 304);
  if (v21 == 1)
  {
    v24 = OUTLINED_FUNCTION_283();
    CandidateSyncTrackOfDiscontinuityDomainAndType = fpfs_FirstCandidateSyncTrackOfDiscontinuityDomainAndType(v24, v25);
    RenderingTrackofType = fpfs_LastRenderingTrackofType(v5, *(v4 + 48), v4);
    v539 = RenderingTrackofType;
    if (CandidateSyncTrackOfDiscontinuityDomainAndType)
    {
      time = *(CandidateSyncTrackOfDiscontinuityDomainAndType + 208);
      OUTLINED_FUNCTION_149(RenderingTrackofType, v28, v29, v30, v31, v32, v33, v34, *&time.value, v409, v418, v427, v436, v445, v454, v462, v471, v480, v489, v498, v504, v509, v516, v525, v532, RenderingTrackofType, v546, v553, v560, v566, v573, v582, v590, v599, v609, v618, v627, v634.n128_i64[0], v634.n128_i64[1], v645, v652, v658, v663.n128_i64[0], v663.n128_i64[1], v664, v35, v665[0]);
      if (fpfs_TimeIsAfter(v7, &time, &time1))
      {
        *v665 = *(CandidateSyncTrackOfDiscontinuityDomainAndType + 208);
        v666 = *(CandidateSyncTrackOfDiscontinuityDomainAndType + 224);
      }

      OUTLINED_FUNCTION_219();
      v45 = *(CandidateSyncTrackOfDiscontinuityDomainAndType + 112);
      if (v45)
      {
        fpfsi_EndPresentationTimeForDecodedSamplesForRenderPipeline(*(v45 + 32), &time);
      }

      else
      {
        v46 = v634;
        *&time.value = v634;
        time.epoch = v8;
      }

      if (time.flags)
      {
        OUTLINED_FUNCTION_149(v36, v37, v38, v39, v40, v41, v42, v43, v46, v409, v418, v427, v436, v445, v454, v462, v471, v480, v489, v498, v504, v509, v517, v525, v532, v539, v546, v553, v560, v566, v574, v582, v590, v599, v610, v618, v627, v634.n128_i64[0], v634.n128_i64[1], v645, v652, v658, v663.n128_i64[0], v663.n128_i64[1], v664, v44, v665[0]);
        OUTLINED_FUNCTION_363();
        if (CMTimeCompare(&time1, &time2) < 0)
        {
          *v665 = *&time.value;
          v666 = time.epoch;
        }
      }

      v47 = 0;
      goto LABEL_26;
    }
  }

  else
  {
    v539 = fpfs_LastRenderingTrackofType(v5, *(v4 + 48), v4);
  }

  CandidateSyncTrackOfDiscontinuityDomainAndType = 0;
  v47 = 1;
  if (*(v4 + 168) == 1 && v539 && v532 == v525)
  {
    if (!fpfsi_TrialSwitchDownInProgress(v0))
    {
      goto LABEL_240;
    }

    CandidateSyncTrackOfDiscontinuityDomainAndType = 0;
  }

LABEL_26:
  *v676 = *v665;
  v678 = *&v688.value;
  v677 = v666;
  v679 = v688.epoch;
  v682 = *MEMORY[0x1E6960C80];
  v683 = *(MEMORY[0x1E6960C80] + 16);
  v685 = v8;
  *v684 = v634;
  if ((v47 & 1) == 0)
  {
    OUTLINED_FUNCTION_29();
    if (v120)
    {
      *v693 = *(CandidateSyncTrackOfDiscontinuityDomainAndType + 232);
      v694 = *(CandidateSyncTrackOfDiscontinuityDomainAndType + 248);
      if (v539)
      {
        OUTLINED_FUNCTION_132();
        if (v120)
        {
          time = *(CandidateSyncTrackOfDiscontinuityDomainAndType + 232);
          time1 = *(v539 + 232);
          v48 = OUTLINED_FUNCTION_262();
          CMTimeMaximum(v50, v48, v49);
        }
      }
    }
  }

  LODWORD(v471) = v532 == v525;
  if (v532 == v525 && !fpfsi_TrialSwitchDownInProgress(v0))
  {
    v686 = v634;
    v687 = v8;
  }

  else
  {
    v686 = *v693;
    v687 = v694;
  }

  LODWORD(v618) = v2;
  v575 = v0;
  flags = v22;
  if (*(v4 + 400))
  {
    v52 = !fpfs_isDecryptorReady(v4);
  }

  else
  {
    v52 = 0;
  }

  v53 = v5;
  v54 = (v47 & 1) == 0 && !FigStreamAlternateCanConcurrentlyDecodeAlternates(*(CandidateSyncTrackOfDiscontinuityDomainAndType + 456), *(v4 + 456));
  if (fpfs_allowFastVideoSwitch_onceToken != -1)
  {
    dispatch_once(&fpfs_allowFastVideoSwitch_onceToken, &__block_literal_global);
  }

  v611 = v4 + 288;
  v518 = v7;
  if (*(v4 + 112) == 0 || v52 || v54)
  {
    v55 = 0;
    v56 = v53;
    v57 = v575;
  }

  else
  {
    refcon.value = 0;
    OUTLINED_FUNCTION_12();
    CMBufferQueueCallForEachBuffer(v58, v59, &refcon);
    v60 = *(v4 + 199);
    v56 = v53;
    v57 = v575;
    if (!*(v4 + 199) && refcon.value)
    {
      OUTLINED_FUNCTION_219();
      OutputPresentationTimeStamp = CMSampleBufferGetOutputPresentationTimeStamp(&time, v61);
      if (*(v4 + 200) || (time1 = time, OUTLINED_FUNCTION_135(OutputPresentationTimeStamp, v63, v64, v65, v66, v67, v68, v69, *&time.value, v409, v418, v427, v436, v445, v454, v462, v471, v480, v489, v498, v504, v509, v7, v525, v532, v539, v546, v553, v560, v566, v575, v582, v590, v599, v611, v618, v627, v634.n128_i64[0], v634.n128_i64[1], v645, v652, v658, v663.n128_i64[0], v663.n128_i64[1], v664, v70, v665[0]), fpfs_TimeIsAfter(v7, v71, v72)))
      {
        if (*(v4 + 400))
        {
          if (!*(v4 + 202))
          {
            if (fpfs_IsVideoSync(refcon.value))
            {
              time1.value = 0;
              AllocatorForMedia = FigGetAllocatorForMedia();
              if (!CMSampleBufferCreateCopy(AllocatorForMedia, refcon.value, &time1))
              {
                fpfs_DoNotDisplay(time1.value);
                fpfs_RenderBuffer(v4, time1.value);
                if (time1.value)
                {
                  CFRelease(time1.value);
                }

                *(v4 + 202) = 1;
              }
            }
          }
        }
      }

      else
      {
        *(v4 + 199) = 1;
        v369 = *(*(v4 + 112) + 32);
        v370 = *(*(CMBaseObjectGetVTable() + 16) + 40);
        if (v370)
        {
          v370(v369);
        }
      }

      v60 = *(v4 + 199);
    }

    if (v60)
    {
      value = refcon.value;
      v55 = 1;
      if (refcon.value)
      {
        while (1)
        {
          memset(&time1, 0, sizeof(time1));
          CMSampleBufferGetOutputPresentationTimeStamp(&time1, value);
          time = time1;
          *&time2.value = *v665;
          time2.epoch = v666;
          v74 = CMTimeCompare(&time, &time2);
          if ((v74 & 0x80000000) == 0)
          {
            break;
          }

          refcon.value = CMBufferQueueDequeueAndRetain(*(v4 + 88));
          if (fpfs_IsVideoDependedOnByOthers(refcon.value))
          {
            if (fpfs_IsVideoSync(refcon.value))
            {
              fpfs_FlushPrimaryAndAuxRenderChains(*(v4 + 112), 0);
            }

            fpfs_DoNotDisplay(refcon.value);
            fpfs_RenderBuffer(v4, refcon.value);
            *(v4 + 202) = 1;
          }

          if (refcon.value)
          {
            CFRelease(refcon.value);
          }

          value = CMBufferQueueGetHead(*(v4 + 88));
          refcon.value = value;
          if (!value)
          {
            v55 = 1;
            goto LABEL_67;
          }
        }

        OUTLINED_FUNCTION_527(v74, v75, v76, v77, v78, v79, v80, v81, v82, v409, v418, v427, v436, v445, v454, v462, v471, v480, v489, v498, v504, v509, v518, v525, v532, v539, v546, v553, v560, v566, v575, v582, v590, v599, v611, v618, v627, v634.n128_i64[0], v634.n128_i64[1], v645, v652, v658, v663.n128_i64[0], v663.n128_i64[1], v664, v83);
        *v698 = time1;
        time.epoch = v84;
        *&v698[24] = v634;
        *v699 = v8;
        CMBufferQueueCallForEachBuffer(*(v4 + 88), fpfs_GetFirstPTSInRange, &time);
        *v673 = *&v698[24];
        v85 = *v699;
        v674 = *v699;
        *v611 = *&v698[24];
        v23 = v85;
        *(v611 + 16) = v85;
        v733 = *&v698[24];
        flags = *&v698[36];
        v55 = 1;
        timescale = *&v698[32];
      }
    }

    else
    {
      v55 = 0;
    }
  }

LABEL_67:
  OUTLINED_FUNCTION_401();
  v86 = v120;
  if (!v55 && (v86 & HIDWORD(v627)) != 0)
  {
    v735.n128_u64[0] = 0;
    OUTLINED_FUNCTION_12();
    CMBufferQueueCallForEachBuffer(v87, v88, &v735);
    if (v735.n128_u64[0] && (OUTLINED_FUNCTION_219(), v90 = CMSampleBufferGetOutputPresentationTimeStamp(&time, v89), time1 = time, OUTLINED_FUNCTION_135(v90, v91, v92, v93, v94, v95, v96, v97, *&time.value, v409, v418, v427, v436, v445, v454, v462, v471, v480, v489, v498, v504, v509, v518, v525, v532, v539, v546, v553, v560, v566, v575, v582, v590, v599, v611, v618, v627, v634.n128_i64[0], v634.n128_i64[1], v645, v652, v658, v663.n128_i64[0], v663.n128_i64[1], v664, v98, v665[0]), v99 = v518, !fpfs_TimeIsAfter(v518, v100, v101)) && (*(v4 + 208) = time, fpfs_GetStartupDurationOfType(v4, &v675), OUTLINED_FUNCTION_363(), refcon = v675, v356 = fpfs_TimeAfterPlayback(v518, &time2, &refcon, &time1), OUTLINED_FUNCTION_135(v356, v357, v358, v359, v360, v361, v362, v363, v364, v409, v418, v427, v436, v445, v454, v462, v471, v480, v489, v498, v504, v509, v518, v525, v532, v539, v546, v553, v560, v566, v575, v582, v590, v599, v611, v618, v627, v634.n128_i64[0], v634.n128_i64[1], v645, v652, v658, v663.n128_i64[0], v663.n128_i64[1], v664, v365, v665[0]), fpfs_TimeIsAfter(v99, v366, v367)))
    {
      v733 = time.value;
      flags = time.flags;
      timescale = time.timescale;
      v55 = 1;
      v23 = time.epoch;
    }

    else
    {
      v55 = 0;
    }
  }

  v102.n128_f64[0] = FPSupport_getVideoDecodeWaterLevels(&v692, &v691, 1);
  v691.value *= 2;
  OUTLINED_FUNCTION_220(v103, v104, v105, v106, v107, v108, v109, v110, v102, v409, v418, v427, v436, v445, v454, v462, v471, v480, v489, v498, v504, v509, v518, v525, v532, v539, v546, v553, v560, v566, v575, v582, v590, v599, v611, v618, v627, v634.n128_i64[0], v634.n128_i64[1], v645, v652, v658, v111, v663.n128_u64[0]);
  *&time2.value = *&v691.value;
  time2.epoch = v112;
  fpfs_TimeAfterPlayback(v519, &time1, &time2, &time);
  time1 = *v612;
  if (fpfs_TimeIsAfter(v519, &time1, &time))
  {
    v114 = flags;
    if ((v47 & 1) != 0 || (OUTLINED_FUNCTION_801(v612), *&time1.value = *(CandidateSyncTrackOfDiscontinuityDomainAndType + 232), OUTLINED_FUNCTION_238(*(CandidateSyncTrackOfDiscontinuityDomainAndType + 248)) <= 0))
    {
      v115 = v23;
      value_low = v612;
      if (*(v4 + 112) || HIDWORD(v628) && *(v519 + 672) <= 3)
      {
        v117 = v57[128];
        v55 = 1;
        if (v117)
        {
          if (v117 != v4)
          {
            OUTLINED_FUNCTION_144();
            do
            {
              OUTLINED_FUNCTION_247();
              if (v120 && (*(v118 + 168) | 4) == 5)
              {
                v55 = 0;
              }

              v119 = *(v118 + 24);
              if (v119)
              {
                v120 = v119 == v4;
              }

              else
              {
                v120 = 1;
              }
            }

            while (!v120);
          }
        }
      }

      goto LABEL_95;
    }

    v115 = v23;
  }

  else
  {
    v115 = v23;
    v114 = flags;
  }

  value_low = v612;
LABEL_95:
  v121 = 0;
  v122 = v676;
  HIDWORD(v481) = HIDWORD(v628) ^ 1 | HIDWORD(v510);
  if (v619)
  {
    v123 = 0;
  }

  else
  {
    v123 = v533 == v526;
  }

  v124 = v123;
  HIDWORD(v437) = v124;
  if (v540)
  {
    v125 = v124;
  }

  else
  {
    v125 = 1;
  }

  HIDWORD(v472) = v125;
  LODWORD(v481) = *(MEMORY[0x1E6960C70] + 12);
  LODWORD(v619) = v55 == 0;
  *&v113 = 136317186;
  *v554 = v113;
  *&v113 = 136319234;
  *v446 = v113;
  v547 = v8;
  while (1)
  {
    while (1)
    {
      if ((v114 & 1) == 0)
      {
        goto LABEL_123;
      }

      OUTLINED_FUNCTION_13();
      *&time1.value = *v689;
      time1.epoch = v690;
      v126 = OUTLINED_FUNCTION_262();
      CMTimeAdd(v128, v126, v127);
      OUTLINED_FUNCTION_13();
      time1 = v688;
      v129 = OUTLINED_FUNCTION_262();
      UpTimeNanoseconds = CMTimeAdd(v131, v129, v130);
      if (!*(v4 + 368))
      {
        UpTimeNanoseconds = FigGetUpTimeNanoseconds();
        *(v4 + 368) = UpTimeNanoseconds;
      }

      if ((v619 & 1) == 0)
      {
        break;
      }

      OUTLINED_FUNCTION_64(UpTimeNanoseconds, v133, v134, v135, v136, v137, v138, v139, v140, p_time, v419, v428, v437, v446[0], v446[1], v463, v472, v481, v490, v499[0], v499[1], v510, v519, v526, v533, v540, v547, v554[0], v554[1], v567, v576, v583, v591, v600, v612, v619, v628, v635[0], v635[1], v646, v653, v659, v141, v663.n128_u64[0]);
      *&time1.value = *v668;
      v142 = OUTLINED_FUNCTION_238(v669);
      if (v142 <= 0)
      {
        OUTLINED_FUNCTION_64(v142, v143, v144, v145, v146, v147, v148, v149, v150, p_time, v419, v428, v437, v446[0], v446[1], v463, v472, v481, v490, v499[0], v499[1], v510, v519, v526, v533, v540, v547, v554[0], v554[1], v567, v576, v583, v591, v600, v612, v619, v628, v635[0], v635[1], v646, v653, v659, v151, v663.n128_u64[0]);
        *&time1.value = v670;
        if ((OUTLINED_FUNCTION_238(v671) & 0x80000000) != 0)
        {
          HIDWORD(v628) = v121;
          if (!*(v4 + 280) && dword_1EAF169F0)
          {
            v373 = OUTLINED_FUNCTION_256();
            value_low = LODWORD(time2.value);
            v374 = LOBYTE(refcon.value);
            os_log_type_enabled(v373, refcon.value);
            OUTLINED_FUNCTION_134();
            if (v120)
            {
              v122 = v375;
            }

            else
            {
              v122 = value_low;
            }

            if (v122)
            {
              v376 = *v57;
              if (*v57)
              {
                v377 = (CMBaseObjectGetDerivedStorage() + 888);
              }

              else
              {
                v377 = "";
              }

              v625 = v377;
              if (v56)
              {
                v378 = (CMBaseObjectGetDerivedStorage() + 3096);
              }

              else
              {
                v378 = "";
              }

              v607 = v378;
              v379 = v57[20];
              v597 = *(v4 + 32);
              OUTLINED_FUNCTION_13();
              v380.n128_f64[0] = CMTimeGetSeconds(&time);
              v381 = v380.n128_u64[0];
              OUTLINED_FUNCTION_64(v382, v383, v384, v385, v386, v387, v388, v389, v380, p_time, v419, v428, v437, v446[0], v446[1], v463, v472, v481, v490, v499[0], v499[1], v510, v519, v526, v533, v540, v547, v554[0], v554[1], v567, v576, v583, v597, v607, v612, v625, v628, v635[0], v635[1], v646, v653, v659, v390, v663.n128_u64[0]);
              Seconds = CMTimeGetSeconds(&time);
              LODWORD(time1.value) = v554[0];
              *(&time1.value + 4) = "fpfs_CheckVideoSyncQueue";
              LOWORD(time1.flags) = 2048;
              *(&time1.flags + 2) = v376;
              HIWORD(time1.epoch) = 2082;
              v719 = v619;
              v720 = 2048;
              v721 = v56;
              v722 = 2082;
              v723 = v600;
              v724 = 1024;
              v725 = v379;
              v726 = 1024;
              v727 = v591;
              v728 = 2048;
              v729 = v381;
              v730 = 2048;
              v731 = Seconds;
              OUTLINED_FUNCTION_735();
              v392 = OUTLINED_FUNCTION_27();
              _os_log_send_and_compose_impl(v392, v393, v394, v395, v396, v373, v374, v397);
              value_low = LODWORD(time2.value);
            }

            OUTLINED_FUNCTION_4();
            fig_log_call_emit_and_clean_up_after_send_and_compose();
            OUTLINED_FUNCTION_728();
          }

LABEL_238:
          value_low->value = v733;
          value_low->timescale = timescale;
          *(v4 + 300) = v114;
          *(v4 + 304) = v115;
          if (!*(v4 + 280))
          {
            OUTLINED_FUNCTION_13();
            OUTLINED_FUNCTION_719(v398, v399, v400, v401, v402, v403, v404, v405, v406, p_time, v419, v428, v437, v446[0], v446[1], v463, v472, v481, v490, v499[0], v499[1], v510, v519, v526, v533, v540, v547, v554[0], v554[1], v567, v576, v583, v591, v600, v612, v619, v628, v635[0], v635[1], v646, v653, v659, v663.n128_i64[0], v663.n128_i64[1], v664, v665[0], v665[1], v666, v667, v668[0], v668[1], v669, v670, *(&v670 + 1), v671, v407, v672.value);
            fpfs_PrimeVideoSyncTimer(v4, &time, &time1);
          }

          goto LABEL_200;
        }

        break;
      }

      if (dword_1EAF169F0)
      {
        HIDWORD(v628) = v121;
        v152 = OUTLINED_FUNCTION_256();
        value_low = LOBYTE(refcon.value);
        os_log_type_enabled(v152, refcon.value);
        OUTLINED_FUNCTION_37();
        if (v122)
        {
          v153 = *v57;
          if (*v57)
          {
            v154 = (CMBaseObjectGetDerivedStorage() + 888);
          }

          else
          {
            v154 = "";
          }

          v592 = v154;
          if (v56)
          {
            v155 = (CMBaseObjectGetDerivedStorage() + 3096);
          }

          else
          {
            v155 = "";
          }

          v584 = v155;
          v57 = v576;
          v156 = *(v576 + 160);
          v601 = *(v4 + 32);
          OUTLINED_FUNCTION_13();
          v157.n128_f64[0] = CMTimeGetSeconds(&time);
          v158 = v157.n128_u64[0];
          OUTLINED_FUNCTION_64(v159, v160, v161, v162, v163, v164, v165, v166, v157, p_time, v419, v428, v437, v446[0], v446[1], v463, v472, v481, v490, v499[0], v499[1], v510, v519, v526, v533, v540, v547, v554[0], v554[1], v567, v576, v584, v592, v601, v612, v619, v628, v635[0], v635[1], v646, v653, v659, v167, v663.n128_u64[0]);
          v168 = CMTimeGetSeconds(&time);
          LODWORD(time1.value) = v554[0];
          *(&time1.value + 4) = "fpfs_CheckVideoSyncQueue";
          LOWORD(time1.flags) = 2048;
          *(&time1.flags + 2) = v153;
          HIWORD(time1.epoch) = 2082;
          v719 = v591;
          v720 = 2048;
          v721 = v56;
          v722 = 2082;
          v723 = v583;
          v724 = 1024;
          v725 = v156;
          v726 = 1024;
          v727 = v600;
          v728 = 2048;
          v729 = v158;
          v730 = 2048;
          v731 = v168;
          OUTLINED_FUNCTION_735();
          v169 = OUTLINED_FUNCTION_27();
          _os_log_send_and_compose_impl(v169, v170, v171, v172, &dword_1962D5000, v152, value_low, "<<<< FigStreamPlayer >>>> %s: [%p|%{public}s] <%p|%{public}s>: (%d) track %d: nextSyncPTS %1.5g << now=%1.5g; moving on");
          v8 = v547;
        }

        OUTLINED_FUNCTION_729();
        OUTLINED_FUNCTION_7();
        OUTLINED_FUNCTION_449(v173, v174, v175, v176, v177);
        OUTLINED_FUNCTION_728();
        v121 = HIDWORD(v628);
      }

      v178 = *(v4 + 280);
      if (v178)
      {
        CFRelease(v178);
        *(v4 + 280) = 0;
      }

LABEL_123:
      v680 = *(v122 + 72);
      v681 = *(v122 + 88);
      *(v122 + 72) = *v635;
      *(v122 + 88) = v8;
      CMBufferQueueCallForEachBuffer(*(v4 + 88), fpfs_VideoSyncSearch, v676);
      if (!*(v4 + 199))
      {
        v121 = 1;
      }

      OUTLINED_FUNCTION_29();
      if (!v120 || (OUTLINED_FUNCTION_401(), v120) && (OUTLINED_FUNCTION_132(), v120) && (time = *value_low, OUTLINED_FUNCTION_220(v179, v180, v181, v182, v183, v184, v185, v186, *&time.value, p_time, v419, v428, v437, v446[0], v446[1], v463, v472, v481, v490, v499[0], v499[1], v510, v519, v526, v533, v540, v547, v554[0], v554[1], v567, v576, v583, v591, v600, v612, v619, v628, v635[0], v635[1], v646, v653, v659, v187, v663.n128_u64[0]), v188 = OUTLINED_FUNCTION_262(), v190 = CMTimeCompare(v188, v189), v190 <= 0) && (time = *(v122 + 72), OUTLINED_FUNCTION_220(v190, v191, v192, v193, v194, v195, v196, v197, *&time.value, p_time, v419, v428, v437, v446[0], v446[1], v463, v472, v481, v490, v499[0], v499[1], v510, v519, v526, v533, v540, v547, v554[0], v554[1], v567, v576, v583, v591, v600, v612, v619, v628, v635[0], v635[1], v646, v653, v659, v198, v663.n128_u64[0]), v199 = OUTLINED_FUNCTION_262(), CMTimeCompare(v199, v200) > 0))
      {
        BYTE4(v628) = v121;
        goto LABEL_200;
      }

      value_low->epoch = *(v122 + 88);
      *&value_low->value = *(v122 + 72);
      v733 = *(v122 + 72);
      timescale = *(v122 + 80);
      v114 = *(v4 + 300);
      v115 = *(v4 + 304);
    }

    *&v672.value = *v499;
    v672.epoch = v490;
    HIDWORD(v628) = v121;
    if ((v481 & 0x100000000) != 0)
    {
      goto LABEL_136;
    }

    OUTLINED_FUNCTION_13();
    *&time1.value = *v673;
    if (!OUTLINED_FUNCTION_238(v674))
    {
      if (*(v4 + 112))
      {
        OUTLINED_FUNCTION_13();
        OUTLINED_FUNCTION_149(v211, v212, v213, v214, v215, v216, v217, v218, v219, p_time, v419, v428, v437, v446[0], v446[1], v463, v472, v481, v490, v499[0], v499[1], v510, v519, v526, v533, v540, v547, v554[0], v554[1], v567, v576, v583, v591, v600, v612, v619, v628, v635[0], v635[1], v646, v653, v659, v663.n128_i64[0], v663.n128_i64[1], v664, v220, v665[0]);
        v221 = OUTLINED_FUNCTION_262();
        if (CMTimeCompare(v221, v222) <= 0)
        {
          v231.n128_f32[0] = OUTLINED_FUNCTION_401();
          if (!v120 && *(v4 + 168) != 5)
          {
            memset(&v732, 0, sizeof(v732));
            OUTLINED_FUNCTION_527(v223, v224, v225, v226, v227, v228, v229, v230, v231, p_time, v419, v428, v437, v446[0], v446[1], v463, v472, v481, v490, v499[0], v499[1], v510, v519, v526, v533, v540, v547, v554[0], v554[1], v567, v576, v583, v591, v600, v612, v620, v628, v635[0], v635[1], v646, v653, v659, v663.n128_i64[0], v663.n128_i64[1], v664, v232);
            time.epoch = v233;
            OUTLINED_FUNCTION_721(v500, v234, v235, v236, v237, v238, v239, v240, v241, v411, v420, v429, v438, v447, v455, v464, v473, v482, v491);
            v242 = OUTLINED_FUNCTION_313(*(*(v4 + 112) + 40));
            v249 = *&v698[32];
            if (*&v698[32])
            {
              OUTLINED_FUNCTION_720();
              v242 = CMTimeMultiplyByRatio(&v672, &time1, v250 + 1, v251);
            }

            OUTLINED_FUNCTION_721(v500, v242, v243, v249, v244, v245, v246, v247, v248, v412, v421, v430, v439, v448, v456, v465, v474, v483, v492);
            v252 = OUTLINED_FUNCTION_313(*(v4 + 88));
            v259 = *&v698[32];
            if (*&v698[32])
            {
              OUTLINED_FUNCTION_720();
              CMTimeMultiplyByRatio(&time2, &time1, v260, v261);
              refcon = v672;
              v252 = CMTimeAdd(&time1, &refcon, &time2);
              v672 = time1;
            }

            *v648 = OUTLINED_FUNCTION_263(v252, v253, v259, v254, v255, v256, v257, v258, v413, v422, v431, v440, v449, v457, v466, v475, v484, v493, v500.n128_i64[0], v500.n128_i64[1], v511, v520, v527, v534, v541, v548, v555, v561, v568, v577, v585, v593, v602, v613, v621, v629, v636, v640, v647, v654, v660, *&v663);
            *&v648[16] = v664;
            v262 = CMBaseObjectGetDerivedStorage();
            memset(&refcon, 0, sizeof(refcon));
            time1 = *v648;
            FPSTimelineConverterL2TimeToL3(&time1, &refcon);
            v735 = 0uLL;
            v736 = 0;
            OUTLINED_FUNCTION_149(*(v262 + 3376), v263, v264, v265, v266, v267, v268, v269, v270, v414, v423, v432, v441, v450, v458, v467, v476, v485, v494, v501, v505, v512, v521, v528, v535, v542, v549, v556, v562, v569, v578, v586, v594, v603, v614, v622, v630, v637, v641, *v648, *&v648[8], *&v648[16], v663.n128_i64[0], v663.n128_i64[1], v664, v271, v665[0]);
            FPSTimelineConverterL2TimeToL3(&time1, &v735);
            *&time1.value = v735;
            time1.epoch = v736;
            time2 = refcon;
            v272 = CMTimeSubtract(&v732, &time1, &time2);
            OUTLINED_FUNCTION_719(v272, v273, v274, v275, v276, v277, v278, v279, v280, v415, v424, v433, v442, v451, v459, v468, v477, v486, v495, v502, v506, v513, v522, v529, v536, v543, v550, v557, v563, v570, v579, v587, v595, v604, v615, v623, v631, v638, v642, v649, v655, v661, v663.n128_i64[0], v663.n128_i64[1], v664, v665[0], v665[1], v666, v667, v668[0], v668[1], v669, v670, *(&v670 + 1), v671, v281, v672.value);
            time2 = v732;
            if ((CMTimeCompare(&time1, &time2) & 0x80000000) == 0)
            {
LABEL_136:
              v201 = 0;
              goto LABEL_174;
            }
          }
        }
      }
    }

    v202 = *(v4 + 244);
    OUTLINED_FUNCTION_541();
    if (v120)
    {
      v735.n128_u64[0] = *(v4 + 232);
      v735.n128_u32[2] = *(v4 + 240);
      value_low = *(v4 + 248);
    }

    else
    {
      v735.n128_u64[0] = v733;
      v735.n128_u32[2] = timescale;
      value_low = v115;
      v202 = v114;
    }

    if (v540)
    {
      v732.value = *(v540 + 232);
      v122 = *(v540 + 244);
      v732.timescale = *(v540 + 240);
      v619 = *(v540 + 248);
    }

    else
    {
      v732.value = v735.n128_u64[0];
      v732.timescale = v735.n128_i32[2];
      v619 = value_low;
      v122 = v202;
    }

    if (!*(v4 + 200))
    {
      LODWORD(v646) = 0;
      OUTLINED_FUNCTION_219();
      memset(&time1, 0, sizeof(time1));
      if (CMBufferQueueIsEmpty(*(v4 + 88)))
      {
        time1.value = v733;
        time1.timescale = timescale;
        time1.flags = v114;
        time1.epoch = v115;
      }

      else
      {
        CMBufferQueueGetMinPresentationTimeStamp(&time1, *(v4 + 88));
      }

      *(v4 + 208) = time1;
      fpfs_GetStartupDurationOfType(v4, &time2);
      refcon = time1;
      CMTimeAdd(&time, &refcon, &time2);
      OUTLINED_FUNCTION_363();
      *&refcon.value = OUTLINED_FUNCTION_263(v282, v283, v284, v285, v286, v287, v288, v289, p_time, v419, v428, v437, v446[0], v446[1], v463, v472, v481, v490, v499[0], v499[1], v510, v519, v526, v533, v540, v547, v554[0], v554[1], v567, v576, v583, v591, v600, v612, v619, v628, v635[0], v635[1], v646, v653, v659, *&v663);
      refcon.epoch = v664;
      CMTimeSubtract(&v675, &time2, &refcon);
      time2 = v675;
      *&refcon.value = *v665;
      refcon.epoch = v666;
      OUTLINED_FUNCTION_185();
      v203 = fpfs_CheckCanKeepUp(v290, v291, v292, v293, v294, v295, v296, v297);
      v201 = v533 == v526 ? *&v646 >= 1.0 : v203;
      if (v201)
      {
        goto LABEL_167;
      }
    }

    if ((v472 & 0x100000000) == 0)
    {
      if (*(v540 + 198) || (v203 = fpfsi_TrialSwitchDownInProgress(v57), v203))
      {
        v201 = OUTLINED_FUNCTION_254(v203, v204, v205, v206, v207, v208, v209, v210, p_time, v419, v428, v437, v446[0], v446[1], v463, v472, v481, v490, v499[0], v499[1], v510, v519, v526, v533, v540, v547, v554[0], v554[1], v567, v576, v583, v591, v600, v612, v619);
LABEL_167:
        if (v201 && v533 == v526)
        {
          v298 = fpfsi_TrialSwitchDownInProgress(v57);
          if (v298)
          {
            CanSwitchDownConcurrentlyWithoutStall = OUTLINED_FUNCTION_254(v298, v299, v300, v301, v302, v303, v304, v305, p_time, v419, v428, v437, v446[0], v446[1], v463, v472, v481, v490, v499[0], v499[1], v510, v519, v526, v533, v540, v547, v554[0], v554[1], v567, v576, v583, v591, v600, v612, v619);
          }

          else
          {
            v307 = v57[12];
            time = v675;
            CanSwitchDownConcurrentlyWithoutStall = FigAlternatePlaybackBitrateMonitorCanSwitchDownConcurrentlyWithoutStall(v307, &time.value);
          }

          v201 = CanSwitchDownConcurrentlyWithoutStall;
        }

        goto LABEL_173;
      }
    }

    v201 = 0;
LABEL_173:
    OUTLINED_FUNCTION_728();
LABEL_174:
    if (v201)
    {
      v308 = 1;
    }

    else
    {
      v308 = 3;
    }

    if (v308 <= dword_1EAF169F0)
    {
      v309 = OUTLINED_FUNCTION_256();
      value_low = LODWORD(time2.value);
      v122 = LOBYTE(refcon.value);
      v619 = v309;
      os_log_type_enabled(v309, refcon.value);
      OUTLINED_FUNCTION_134();
      if (v120)
      {
        v321 = v318;
      }

      else
      {
        v321 = value_low;
      }

      if (v321)
      {
        v322 = *v57;
        if (*v57)
        {
          v310 = CMBaseObjectGetDerivedStorage();
          v323 = (v310 + 888);
        }

        else
        {
          v323 = "";
        }

        v605 = v323;
        if (v56)
        {
          v310 = CMBaseObjectGetDerivedStorage();
          v324 = (v310 + 3096);
        }

        else
        {
          v324 = "";
        }

        LODWORD(v437) = *(v57 + 40);
        LODWORD(v583) = *(v4 + 32);
        OUTLINED_FUNCTION_64(v310, v311, v312, v313, v314, v315, v316, v317, v319, p_time, v419, v428, v437, v446[0], v446[1], v463, v472, v481, v490, v499[0], v499[1], v510, v519, v526, v533, v540, v547, v554[0], v554[1], v567, v576, v583, v324, v605, v612, v619, v628, v635[0], v635[1], v646, v653, v659, v320, v663.n128_u64[0]);
        v325 = CMTimeGetSeconds(&time);
        OUTLINED_FUNCTION_13();
        v326 = CMTimeGetSeconds(&time);
        *&time.value = *(v4 + 232);
        OUTLINED_FUNCTION_404(*(v4 + 248));
        v328 = CMTimeGetSeconds(v327);
        if (v544)
        {
          *&time.value = *(v544 + 232);
          OUTLINED_FUNCTION_404(*(v544 + 248));
          v330 = CMTimeGetSeconds(v329);
        }

        else
        {
          v330 = -1.0;
        }

        *&time.value = *&v672.value;
        OUTLINED_FUNCTION_404(v672.epoch);
        v332.n128_f64[0] = CMTimeGetSeconds(v331);
        v333 = v332.n128_u64[0];
        OUTLINED_FUNCTION_527(v334, v335, v336, v337, v338, v339, v340, v341, v332, v416, v425, v434, v443, v452, v460, v469, v478, v487, v496, v503, v507, v514, v523, v530, v537, v544, v551, v558, v564, v571, v580, v588, v596, v606, v616, v624, v632, v639, v643, v650, v656, v662, v663.n128_i64[0], v663.n128_i64[1], v664, v342);
        OUTLINED_FUNCTION_404(v343);
        v345 = CMTimeGetSeconds(v344);
        CanRenderVideo = fpfs_CanRenderVideo(v519, v56);
        LODWORD(time.value) = v446[0];
        v347 = "finishing";
        if (!v201)
        {
          v347 = "not ok";
        }

        *(&time.value + 4) = "fpfs_CheckVideoSyncQueue";
        LOWORD(time.flags) = 2048;
        *(&time.flags + 2) = v322;
        HIWORD(time.epoch) = 2082;
        *v698 = v600;
        *&v698[8] = 2048;
        *&v698[10] = v56;
        *&v698[18] = 2082;
        *&v698[20] = v591;
        *&v698[28] = 1024;
        *&v698[30] = v437;
        *&v698[34] = 1024;
        *&v698[36] = v583;
        *v699 = 2048;
        *&v699[2] = v325;
        v700 = 2048;
        v701 = v326;
        v702 = 2048;
        v703 = v328;
        v704 = 2048;
        v705 = v330;
        v706 = 2048;
        v707 = v333;
        v708 = 2048;
        v709 = v345;
        v710 = 1024;
        v711 = CanRenderVideo;
        v712 = 1024;
        v713 = HIDWORD(v510);
        v714 = 1024;
        v715 = v472;
        v716 = 2082;
        v717 = v347;
        LODWORD(v419) = 152;
        p_time = &time;
        v348 = OUTLINED_FUNCTION_31();
        _os_log_send_and_compose_impl(v348, v349, v350, v351, &dword_1962D5000, v619, v122, "<<<< FigStreamPlayer >>>> %s: [%p|%{public}s] <%p|%{public}s>: (%d) video sync for track %d near now=%1.5g: sync at %1.5g, new end %f, old end %f, catchup %1.3g, candidateTime %g, canRenderVideo %d, blockedByDecryptor %d, trial %d, %{public}s");
        value_low = LODWORD(time2.value);
      }

      OUTLINED_FUNCTION_729();
      OUTLINED_FUNCTION_4();
      fig_log_call_emit_and_clean_up_after_send_and_compose();
      OUTLINED_FUNCTION_728();
    }

    if (v201)
    {
      break;
    }

    if (*(v4 + 199))
    {
      goto LABEL_238;
    }

    v733 = *MEMORY[0x1E6960C70];
    timescale = *(MEMORY[0x1E6960C70] + 8);
    LODWORD(v619) = 1;
    v115 = v8;
    v114 = v481;
    v121 = HIDWORD(v628);
  }

  if ((v437 & 0x100000000) == 0)
  {
    v371 = v733;
    value_low->value = v733;
    v372 = timescale;
    value_low->timescale = timescale;
    *(v4 + 300) = v114;
    *(v4 + 304) = v115;
    *(v122 + 96) = v371;
    *(v122 + 104) = v372;
    HIDWORD(v684[1]) = v114;
    v685 = v115;
  }

LABEL_200:
  OUTLINED_FUNCTION_29();
  if (!v120)
  {
    *(v122 + 72) = *v635;
    *(v122 + 88) = v8;
  }

  if (BYTE4(v628))
  {
    while (1)
    {
      Head = CMBufferQueueGetHead(*(v4 + 88));
      if (!Head)
      {
        break;
      }

      CMSampleBufferGetOutputPresentationTimeStamp(&time, Head);
      v733 = time.value;
      v353 = time.flags;
      timescale = time.timescale;
      v354 = time.epoch;
      *&time1.value = *(v122 + 96);
      if ((OUTLINED_FUNCTION_238(*(v122 + 112)) & 0x80000000) == 0)
      {
        break;
      }

      time.value = v733;
      time.timescale = timescale;
      time.flags = v353;
      time.epoch = v354;
      *&time1.value = *(v122 + 72);
      if ((OUTLINED_FUNCTION_238(*(v122 + 88)) & 0x80000000) == 0)
      {
        break;
      }

      v355 = CMBufferQueueDequeueAndRetain(*(v4 + 88));
      if (v355)
      {
        CFRelease(v355);
      }
    }
  }

LABEL_240:
  OUTLINED_FUNCTION_812();
}

void fpfs_FinishVideoSync()
{
  OUTLINED_FUNCTION_193();
  v378 = v3;
  v5 = v4;
  v514 = *MEMORY[0x1E69E9840];
  v458 = *(v4 + 16);
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  OUTLINED_FUNCTION_172(DerivedStorage);
  v7 = CMBaseObjectGetDerivedStorage();
  v503 = 0uLL;
  v504 = 0;
  fpfs_GetTime(v0, &v503);
  memset(&v501, 0, sizeof(v501));
  memset(&v502, 0, sizeof(v502));
  cf = 0;
  v499 = 0uLL;
  v500 = 0;
  timescale = 0;
  v512 = 0;
  HIDWORD(v497) = 7;
  v402 = *MEMORY[0x1E6960C70];
  v494 = *MEMORY[0x1E6960C70];
  v391 = *(MEMORY[0x1E6960C70] + 16);
  v495 = v391;
  v13 = *(v5 + 280);
  if (v13)
  {
    CFRelease(v13);
    *(v5 + 280) = 0;
  }

  *(v5 + 208) = v503;
  *(v5 + 224) = v504;
  if (*(v5 + 64) == v0[2 * *(v5 + 196) + 123])
  {
    LOBYTE(time.value) = 0;
    fpfs_CompleteTrialSwitch(v458, v5, &time, v8, v9, v10, v11, v12, p_lhs, SBYTE2(p_lhs), BYTE3(p_lhs), SHIDWORD(p_lhs), v344, v355, v366, v378, v391, v402, *(&v402 + 1), v421, *(&v421 + 1), v440, SHIDWORD(v440), v448, v457, v458, SHIDWORD(v458), v466, v475, queue, *rhs, *&rhs[8], *&rhs[16], *&rhs[24], v492.value, *&v492.timescale, v492.epoch, v493, v494, *(&v494 + 1), v495, v496, v497, cf, v499, *(&v499 + 1), v500, v501.value, *&v501.timescale, v501.epoch, v502.value, *&v502.timescale, v502.epoch, v503.n128_i64[0], v503.n128_i64[1], v504);
    if (LOBYTE(time.value))
    {
      goto LABEL_190;
    }
  }

  v449 = v5;
  v467 = v0;
  if (*(v5 + 168) == 1)
  {
    CandidateSyncTrackOfDiscontinuityDomainAndType = fpfs_FirstCandidateSyncTrackOfDiscontinuityDomainAndType(v458, v5);
    if (CandidateSyncTrackOfDiscontinuityDomainAndType)
    {
      v19 = CandidateSyncTrackOfDiscontinuityDomainAndType;
      time = *(CandidateSyncTrackOfDiscontinuityDomainAndType + 208);
      OUTLINED_FUNCTION_75();
      if (OUTLINED_FUNCTION_848(v51, v52, v53, v54, v55, v56, v57, v58, p_lhs, v344, v355, v366, v378, v391, v402, *(&v402 + 1), v421, *(&v421 + 1), v440, v5, v458, v0, v475, queue, *rhs, *&rhs[8], *&rhs[16], *&rhs[24], v492.value, *&v492.timescale, v492.epoch, v493, v494, *(&v494 + 1), v495, v496, v497, cf, v499, *(&v499 + 1), v500, v501.value, *&v501.timescale, v501.epoch, v502.value, *&v502.timescale, v502.epoch, v503.n128_i64[0], v503.n128_i64[1], v504, lhs.value, *&lhs.timescale, lhs.epoch, v506, v507[0], v507[1], v507[2], v507[3], v507[4], v507[5], v508, v509, *(&v509 + 1)) >= 1)
      {
        v59 = *(v19 + 208);
        *(v5 + 224) = *(v19 + 224);
        *(v5 + 208) = v59;
      }

      if (!*(v19 + 198))
      {
        OUTLINED_FUNCTION_133();
        fpfs_StopFeedingTrack(v60, v61, v62);
      }

      v1 = *(v19 + 112);
      if (v1)
      {
        *&time.value = v404;
        time.epoch = v393;
        OUTLINED_FUNCTION_75();
        OUTLINED_FUNCTION_741();
        v71 = OUTLINED_FUNCTION_706(v63, v64, v65, v66, v67, v68, v69, v70, v335, v346, v357, v368, v380, v393, v404, *(&v404 + 1), v423, v434, v442, v451, v460, v469, v477, queuea, *rhs, *&rhs[8], *&rhs[16], *&rhs[24], v492.value, *&v492.timescale, v492.epoch, v493, v494, *(&v494 + 1), v495, v496, v497, cf, v499, *(&v499 + 1), v500, v501.value, *&v501.timescale, v501.epoch, v502.value, *&v502.timescale, v502.epoch, v503.n128_i64[0], v503.n128_i64[1], v504, lhs.value);
        if (CMTimeCompare(v71, v72) < 0)
        {
          *(v5 + 208) = *(v5 + 288);
          *(v5 + 224) = *(v5 + 304);
        }

        FPSupport_getVideoDecodeWaterLevels(&v502, &v501, 1);
        *&lhs.timescale = v503.n128_u64[1];
        lhs.epoch = v504;
        v81 = OUTLINED_FUNCTION_706(v73, v74, v75, v76, v77, v78, v79, v80, v336, v347, v358, v369, v381, v394, v405, v414, v424, v435, v443, v452, v461, v470, v478, queueb, *rhs, *&rhs[8], *&rhs[16], *&rhs[24], v501.value, *&v501.timescale, v501.epoch, v493, v494, *(&v494 + 1), v495, v496, v497, cf, v499, *(&v499 + 1), v500, v501.value, *&v501.timescale, v501.epoch, v502.value, *&v502.timescale, v502.epoch, v503.n128_i64[0], v503.n128_i64[1], v504, v503.n128_i8[0]);
        CMTimeAdd(v83, v81, v82);
        OUTLINED_FUNCTION_75();
        OUTLINED_FUNCTION_334();
        v92 = OUTLINED_FUNCTION_706(v84, v85, v86, v87, v88, v89, v90, v91, v337, v348, v359, v370, v382, v395, v406, v415, v425, v436, v444, v453, v462, v471, v479, queuee, *rhs, *&rhs[8], *&rhs[16], *&rhs[24], v492.value, *&v492.timescale, v492.epoch, v493, v494, *(&v494 + 1), v495, v496, v497, cf, v499, *(&v499 + 1), v500, v501.value, *&v501.timescale, v501.epoch, v502.value, *&v502.timescale, v502.epoch, v503.n128_i64[0], v503.n128_i64[1], v504, lhs.value);
        if (CMTimeCompare(v92, v93) < 0)
        {
          OUTLINED_FUNCTION_75();
          OUTLINED_FUNCTION_705();
          v102 = OUTLINED_FUNCTION_706(v94, v95, v96, v97, v98, v99, v100, v101, v335, v346, v357, v368, v380, v393, v404, *(&v404 + 1), v423, v434, v442, v451, v460, v469, v477, queuea, *rhs, *&rhs[8], *&rhs[16], *&rhs[24], v492.value, *&v492.timescale, v492.epoch, v493, v494, *(&v494 + 1), v495, v496, v497, cf, v499, *(&v499 + 1), v500, v501.value, *&v501.timescale, v501.epoch, v502.value, *&v502.timescale, v502.epoch, v503.n128_i64[0], v503.n128_i64[1], v504, lhs.value);
          v104 = CMTimeCompare(v102, v103);
          if ((v104 & 0x80000000) != 0)
          {
            memset(&lhs, 0, sizeof(lhs));
            v112 = *(v19 + 112);
            if (v112)
            {
              fpfsi_EndPresentationTimeForDecodedSamplesForRenderPipeline(*(v112 + 32), &lhs);
            }

            else
            {
              *&lhs.value = v404;
              lhs.epoch = v393;
            }

            if (lhs.flags)
            {
              OUTLINED_FUNCTION_334();
              v138 = OUTLINED_FUNCTION_445(v130, v131, v132, v133, v134, v135, v136, v137, v335, v346, v357, v368, v380, v393, v404, *(&v404 + 1), v423, v434, v442, v451, v460, v469, v477, queuea, lhs.value, *&lhs.timescale, lhs.epoch, *&rhs[24], v492.value);
              v104 = CMTimeCompare(v138, v139);
              if ((v104 & 0x80000000) != 0)
              {
                time = lhs;
              }
            }

            v492 = *(v19 + 232);
            v140 = OUTLINED_FUNCTION_445(v104, v105, v106, v107, v108, v109, v110, v111, v335, v346, v357, v368, v380, v393, v404, *(&v404 + 1), v423, v434, v442, v451, v460, v469, v477, queuea, time.value, *&time.timescale, time.epoch, *&rhs[24], v492.value);
            if (CMTimeCompare(v140, v141) >= 1)
            {
              *(v19 + 232) = time;
            }

            v142 = *(v19 + 232);
            *(v5 + 224) = *(v19 + 248);
            *(v5 + 208) = v142;
          }
        }

        v499 = *(v5 + 208);
        v500 = *(v5 + 224);
        LODWORD(v423) = FigStreamTrackIsRendererTimebaseStarter(v5);
      }

      else
      {
        LODWORD(v423) = 0;
      }

      v143 = *(v5 + 208);
      *(v19 + 248) = *(v5 + 224);
      *(v19 + 232) = v143;
      CMTimeMake(&lhs, 100, 1000);
      OUTLINED_FUNCTION_705();
      CMTimeAdd(&time, &v492, &lhs);
      *(v19 + 232) = time;
      time = *(v19 + 208);
      OUTLINED_FUNCTION_75();
      if (!OUTLINED_FUNCTION_848(v144, v145, v146, v147, v148, v149, v150, v151, v335, v346, v357, v368, v380, v393, v404, *(&v404 + 1), v423, v434, v442, v451, v460, v469, v477, queuea, *rhs, *&rhs[8], *&rhs[16], *&rhs[24], v492.value, *&v492.timescale, v492.epoch, v493, v494, *(&v494 + 1), v495, v496, v497, cf, v499, *(&v499 + 1), v500, v501.value, *&v501.timescale, v501.epoch, v502.value, *&v502.timescale, v502.epoch, v503.n128_i64[0], v503.n128_i64[1], v504, lhs.value, *&lhs.timescale, lhs.epoch, v506, v507[0], v507[1], v507[2], v507[3], v507[4], v507[5], v508, v509, *(&v509 + 1)))
      {
        OUTLINED_FUNCTION_301();
        TrackOfType = fpfs_LastTrackOfType(v152, v153, v19);
        if (!TrackOfType || *(TrackOfType + 168) != 6)
        {
          fpfs_DeleteTrack(v458, v19);
          v19 = 0;
          goto LABEL_88;
        }

        v499 = *(TrackOfType + 232);
        v500 = *(TrackOfType + 248);
        v19 = TrackOfType;
        v1 = *(TrackOfType + 112);
      }

      if (!v1)
      {
        goto LABEL_88;
      }

      while (1)
      {
        queue = 0;
        FigGetAllocatorForMedia();
        CMBufferQueueGetCallbacksForUnsortedSampleBuffers();
        v155 = OUTLINED_FUNCTION_265();
        if (CMBufferQueueCreate(v155, v156, v157, v158))
        {
          goto LABEL_85;
        }

        OUTLINED_FUNCTION_0();
        MEMORY[0x19A8CE710]();
        Head = CMBufferQueueGetHead(0);
        if (!Head)
        {
          goto LABEL_81;
        }

        v2 = Head;
        v160 = 0;
        do
        {
          if (fpfs_IsMarkerOnly(v2))
          {
            goto LABEL_70;
          }

          memset(&time, 0, sizeof(time));
          CMSampleBufferGetOutputPresentationTimeStamp(&time, v2);
          memset(&lhs, 0, sizeof(lhs));
          CMSampleBufferGetOutputDecodeTimeStamp(&lhs, v2);
          v161 = OUTLINED_FUNCTION_195(lhs.epoch, p_lhs, v344, v355, v366, v378, v391, v402, *(&v402 + 1), v421, *(&v421 + 1), v440, v449, v458, v467, v475, queue, *rhs, *&rhs[16], lhs.value, *&lhs.timescale, v492.epoch, v493, v494, *(&v494 + 1), v495, v496, v497, cf, v499);
          v162 = v161 >> 31;
          v163 = OUTLINED_FUNCTION_195(time.epoch, v338, v349, v360, v371, v383, v396, v407, v416, v426, v437, v445, v454, v463, v472, v480, queuef, *rhs, *&rhs[16], time.value, *&time.timescale, v492.epoch, v493, v494, *(&v494 + 1), v495, v496, v497, cf, v499);
          v164 = v163;
          if ((v161 & 0x80000000) != 0 && (v163 & 0x80000000) == 0)
          {
            if (fpfs_IsVideoSync(v2))
            {
              break;
            }

            if (fpfs_IsVideoDependedOnByOthers(v2))
            {
              fpfs_DoNotDisplay(v2);
LABEL_67:
              if (v160)
              {
                CMBufferQueueEnqueue(*(v1 + 40), v160);
                CFRelease(v160);
              }

              v160 = CFRetain(v2);
              goto LABEL_70;
            }

            v162 = 0;
          }

          if (v162 || v164 < 0)
          {
            goto LABEL_67;
          }

          if ((OUTLINED_FUNCTION_195(lhs.epoch, p_lhs, v344, v355, v366, v378, v391, v402, *(&v402 + 1), v421, *(&v421 + 1), v440, v449, v458, v467, v475, queue, *rhs, *&rhs[16], lhs.value, *&lhs.timescale, v492.epoch, v493, v494, *(&v494 + 1), v495, v496, v497, cf, v499) & 0x80000000) == 0)
          {
            break;
          }

LABEL_70:
          v165 = CMBufferQueueDequeueAndRetain(queue);
          if (v165)
          {
            CFRelease(v165);
          }

          v2 = CMBufferQueueGetHead(queue);
        }

        while (v2);
        if (v160)
        {
          if (*(v5 + 112))
          {
            v166 = *(v1 + 64);
            if (v166)
            {
              CFRelease(v166);
              *(v1 + 64) = 0;
            }

            if (v1 == *(v19 + 112))
            {
              fpfs_RenderWithEndSignal(v19, v160, *(*(v5 + 112) + 32));
            }

            else
            {
              fpfs_RenderBuffer(v19, v160);
            }
          }

          CFRelease(v160);
        }

LABEL_81:
        if (CMBufferQueueGetBufferCount(queue) < 1)
        {
          if (queue)
          {
            CFRelease(queue);
          }
        }

        else
        {
          fpfs_SendBufferQueueToChomper(v7, queue);
        }

LABEL_85:
        v1 = *(v1 + 88);
        if (!v1)
        {
LABEL_88:
          OUTLINED_FUNCTION_482();
          v20 = v421;
          goto LABEL_89;
        }
      }
    }
  }

  OUTLINED_FUNCTION_301();
  RenderingTrackofType = fpfs_LastRenderingTrackofType(v15, v16, v5);
  v18 = v5;
  if (RenderingTrackofType)
  {
    v21 = RenderingTrackofType;
    LODWORD(v2) = 1986618469;
    if (*(RenderingTrackofType + 80) == *(v18 + 80))
    {
      v22 = CMBufferQueueGetHead(*(v18 + 88));
      memset(&v492, 0, sizeof(v492));
      OutputPresentationTimeStamp = CMSampleBufferGetOutputPresentationTimeStamp(&v492, v22);
      OUTLINED_FUNCTION_478(OutputPresentationTimeStamp, v24, v25, v26, v27, v28, v29, v30, p_lhs, v344, v355, v366, v378, v391, v402, *(&v402 + 1), v421, *(&v421 + 1), v440, v449, v458, v0, v475, queue, *rhs, *&rhs[8], *&rhs[16], *&rhs[24], *&v492.value, v492.epoch);
      *&rhs[16] = *(v21 + 248);
      v31 = CMTimeSubtract(&time, &lhs, rhs);
      if (OUTLINED_FUNCTION_848(v31, v32, v33, v34, v35, v36, v37, v38, v334, v345, v356, v367, v379, v392, v403, v413, v422, v433, v441, v450, v459, v468, v476, queued, *rhs, *&rhs[8], *&rhs[16], *&rhs[24], v492.value, *&v492.timescale, v492.epoch, v493, v494, *(&v494 + 1), v495, v496, v497, cf, v499, *(&v499 + 1), v500, v501.value, *&v501.timescale, v501.epoch, v502.value, *&v502.timescale, v502.epoch, v503.n128_i64[0], v503.n128_i64[1], v504, *MEMORY[0x1E6960CC0], *(MEMORY[0x1E6960CC0] + 8), *(MEMORY[0x1E6960CC0] + 16), v506, v507[0], v507[1], v507[2], v507[3], v507[4], v507[5], v508, v509, *(&v509 + 1)) && dword_1EAF169F0)
      {
        LODWORD(queue) = 0;
        HIBYTE(v475) = 0;
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        LODWORD(v1) = 0;
        os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
        OUTLINED_FUNCTION_233();
        if (v49)
        {
          v50 = v48;
        }

        else
        {
          v50 = 0;
        }

        if (v50)
        {
          v2 = *v0;
          if (*v0)
          {
            v40 = CMBaseObjectGetDerivedStorage();
            v113 = (v40 + 888);
          }

          else
          {
            v113 = "";
          }

          v114 = v458;
          if (v458)
          {
            v40 = CMBaseObjectGetDerivedStorage();
            v115 = (v40 + 3096);
          }

          else
          {
            v115 = "";
          }

          OUTLINED_FUNCTION_478(v40, v41, v42, v43, v44, v45, v46, v47, p_lhs, v344, v355, v366, v378, v391, v402, *(&v402 + 1), v421, *(&v421 + 1), v440, v449, v458, v467, v475, queue, *rhs, *&rhs[8], *&rhs[16], *&rhs[24], *&v492.value, v492.epoch);
          *&rhs[16] = *(v21 + 248);
          CMTimeSubtract(&time, &lhs, rhs);
          Seconds = CMTimeGetSeconds(&time);
          v117 = *(v449 + 32);
          v118 = *(v21 + 32);
          LODWORD(lhs.value) = 136316930;
          *(&lhs.value + 4) = "fpfs_FinishVideoSync";
          LOWORD(lhs.flags) = 2048;
          *(&lhs.flags + 2) = v2;
          HIWORD(lhs.epoch) = 2082;
          v506 = v113;
          LOWORD(v507[0]) = 2048;
          *(v507 + 2) = v114;
          WORD1(v507[1]) = 2082;
          *(&v507[1] + 4) = v115;
          WORD2(v507[2]) = 2048;
          *(&v507[2] + 6) = *&Seconds;
          HIWORD(v507[3]) = 1024;
          LODWORD(v507[4]) = v117;
          WORD2(v507[4]) = 1024;
          *(&v507[4] + 6) = v118;
          LODWORD(v344) = 74;
          p_lhs = &lhs;
          v119 = OUTLINED_FUNCTION_27();
          _os_log_send_and_compose_impl(v119, v120, v121, v122, v123, os_log_and_send_and_compose_flags_and_os_log_type, 0, v124);
          OUTLINED_FUNCTION_482();
        }

        OUTLINED_FUNCTION_7();
        OUTLINED_FUNCTION_467(v125, v126, v127, v128, v129);
      }

      v19 = 0;
      v20 = 0;
      v5 = v449;
    }

    else
    {
      v19 = 0;
      v20 = 0;
      v5 = v18;
    }
  }

  else
  {
    v19 = 0;
    v20 = 0;
    OUTLINED_FUNCTION_482();
  }

LABEL_89:
  fpfs_EnsureRenderChainForTrack();
  if (!v167)
  {
    OUTLINED_FUNCTION_301();
    v170 = fpfs_LastRenderingTrackofType(v168, v169, v5);
    v171 = MEMORY[0x1E695E4D0];
    if (v170)
    {
      if (*(v170 + 112) != *(v5 + 112))
      {
        FigRenderPipelineGetFigBaseObject();
        v173 = v172;
        v174 = *(*(CMBaseObjectGetVTable() + 8) + 56);
        if (v174)
        {
          v174(v173, @"Suspended", *v171);
        }
      }
    }

    fpfs_setPropertyOnPrimaryAndAuxRenderPipelines();
    if (v20)
    {
      OUTLINED_FUNCTION_474();
      FigRenderPipelineGetFigBaseObject();
      v177 = v176;
      v178 = *(*(CMBaseObjectGetVTable() + 8) + 56);
      if (v178)
      {
        v178(v177, @"IsTimebaseStarter", *v171);
      }
    }

    if (v19)
    {
      v179 = *(v19 + 24);
      if (v179 != v5)
      {
        *&v175 = 136316674;
        v421 = v175;
        while (v179)
        {
          v180 = *(v179 + 24);
          if (*(v179 + 48) == v2)
          {
            if (v180)
            {
              v1 = *(v180 + 32);
            }

            else
            {
              v1 = -1;
            }

            if (dword_1EAF169F0)
            {
              v181 = v19;
              OUTLINED_FUNCTION_795();
              v2 = OUTLINED_FUNCTION_509(qword_1EAF169E8, v182, v183, v184, v185, v186, v187, v188, p_lhs, v344, v355, v366, v378, v391, v402, *(&v402 + 1), v421, *(&v421 + 1), v440, v449, v458, v467, v475, queue, rhs[0], *&rhs[8], *&rhs[16], *&rhs[24], v492.value);
              value = v492.value;
              v190 = rhs[0];
              os_log_type_enabled(v2, rhs[0]);
              OUTLINED_FUNCTION_233();
              if (v49)
              {
                v192 = v191;
              }

              else
              {
                v192 = value;
              }

              if (v192)
              {
                v193 = *v467;
                if (*v467)
                {
                  v194 = (CMBaseObjectGetDerivedStorage() + 888);
                }

                else
                {
                  v194 = "";
                }

                v195 = v458;
                if (v458)
                {
                  v196 = (CMBaseObjectGetDerivedStorage() + 3096);
                  v195 = v458;
                }

                else
                {
                  v196 = "";
                }

                v197 = *(v179 + 32);
                v198 = *(v449 + 32);
                LODWORD(lhs.value) = v421;
                *(&lhs.value + 4) = "fpfs_FinishVideoSync";
                LOWORD(lhs.flags) = 2048;
                *(&lhs.flags + 2) = v193;
                HIWORD(lhs.epoch) = 2082;
                v506 = v194;
                v5 = v449;
                LOWORD(v507[0]) = 2048;
                *(v507 + 2) = v195;
                WORD1(v507[1]) = 2082;
                *(&v507[1] + 4) = v196;
                WORD2(v507[2]) = 1024;
                *(&v507[2] + 6) = v197;
                WORD1(v507[3]) = 1024;
                HIDWORD(v507[3]) = v198;
                OUTLINED_FUNCTION_377();
                v199 = OUTLINED_FUNCTION_86();
                _os_log_send_and_compose_impl(v199, v200, v201, v202, &dword_1962D5000, v2, v190, "<<<< FigStreamPlayer >>>> %s: [QE Critical][%p|%{public}s]: <%p|%{public}s>: track %d was replaced by syncing track %d before playing anything");
              }

              OUTLINED_FUNCTION_7();
              OUTLINED_FUNCTION_467(v203, v204, v205, v206, v207);
              OUTLINED_FUNCTION_482();
              v19 = v181;
            }

            v208 = *(v179 + 112);
            if (v208 && v208 != *(v19 + 112))
            {
              if (*(v208 + 64))
              {
                CFRelease(*(v208 + 64));
                v208 = *(v179 + 112);
                *(v208 + 64) = 0;
              }

              if (v208 == *(v5 + 112))
              {
                fpfs_FlushPrimaryAndAuxRenderChains(v208, 1);
              }
            }

            fpfs_DeleteTrack(*(v179 + 16), v179);
            if ((v1 & 0x8000000000000000) == 0)
            {
              v180 = v467[128];
              if (v180)
              {
                while (*(v180 + 32) != v1)
                {
                  v180 = *(v180 + 24);
                  if (!v180)
                  {
                    goto LABEL_129;
                  }
                }
              }

              else
              {
LABEL_129:
                v180 = *(v19 + 24);
              }
            }
          }

          v179 = v180;
          if (v180 == v5)
          {
            goto LABEL_131;
          }
        }

        OUTLINED_FUNCTION_120();
        FigSignalErrorAtGM("%s signalled err=%d at <>:%d", p_lhs, v344, v355);
        goto LABEL_190;
      }
    }

LABEL_131:
    IsEmpty = CMBufferQueueIsEmpty(*(v5 + 88));
    v217 = MEMORY[0x1E6960C80];
    if (IsEmpty)
    {
      v512 = *MEMORY[0x1E6960C80];
      flags = *(MEMORY[0x1E6960C80] + 12);
      timescale = *(MEMORY[0x1E6960C80] + 8);
      v219 = v5;
      epoch = *(MEMORY[0x1E6960C80] + 16);
    }

    else
    {
      IsEmpty = CMBufferQueueGetFirstPresentationTimeStamp(&time, *(v5 + 88));
      v512 = time.value;
      flags = time.flags;
      timescale = time.timescale;
      v219 = v5;
      epoch = time.epoch;
    }

    v221 = v467;
    if (*(v219 + 199))
    {
      v494 = *v217;
      v495 = *(v217 + 16);
      if ((flags & 0x1D) == 1)
      {
        time = *(v219 + 288);
        if (OUTLINED_FUNCTION_848(IsEmpty, v210, v211, v212, v213, v214, v215, v216, p_lhs, v344, v355, v366, v378, v391, v402, *(&v402 + 1), v421, *(&v421 + 1), v440, v449, v458, v467, v475, queue, *rhs, *&rhs[8], *&rhs[16], *&rhs[24], v492.value, *&v492.timescale, v492.epoch, v493, v494, *(&v494 + 1), v495, v496, v497, cf, v499, *(&v499 + 1), v500, v501.value, *&v501.timescale, v501.epoch, v502.value, *&v502.timescale, v502.epoch, v503.n128_i64[0], v503.n128_i64[1], v504, v512, __SPAIR64__(flags, timescale), epoch, v506, v507[0], v507[1], v507[2], v507[3], v507[4], v507[5], v508, v509, *(&v509 + 1)) >= 1)
        {
          if (dword_1EAF169F0)
          {
            OUTLINED_FUNCTION_795();
            v229 = OUTLINED_FUNCTION_509(qword_1EAF169E8, v222, v223, v224, v225, v226, v227, v228, p_lhs, v344, v355, v366, v378, v391, v402, *(&v402 + 1), v421, *(&v421 + 1), v440, v449, v458, v467, v475, queue, rhs[0], *&rhs[8], *&rhs[16], *&rhs[24], v492.value);
            v230 = rhs[0];
            os_log_type_enabled(v229, rhs[0]);
            OUTLINED_FUNCTION_221();
            if (v1)
            {
              v233 = *v467;
              if (*v467)
              {
                v234 = (CMBaseObjectGetDerivedStorage() + 888);
              }

              else
              {
                v234 = "";
              }

              *&v421 = v234;
              v235 = v458;
              v372 = v19;
              if (v458)
              {
                v236 = (CMBaseObjectGetDerivedStorage() + 3096);
              }

              else
              {
                v236 = "";
              }

              v384 = v236;
              v237 = *(v449 + 32);
              time.value = v512;
              time.timescale = timescale;
              time.flags = flags;
              time.epoch = epoch;
              v238 = CMTimeGetSeconds(&time);
              *&time.value = *(v449 + 288);
              OUTLINED_FUNCTION_853(*(v449 + 304), p_lhs, v344, v355, v372, v384, v391, v402, *(&v402 + 1), v421, *(&v421 + 1), v440, v449, v458, v467, v475, queue, *rhs, *&rhs[8], *&rhs[16], *&rhs[24], v492.value, *&v492.timescale, v492.epoch, v493, v494, *(&v494 + 1), v495, v496, v497, cf, v499, *(&v499 + 1), v500, v501.value, *&v501.timescale, v501.epoch, v502.value, *&v502.timescale, v502.epoch, v503.n128_i64[0], v503.n128_i64[1], v504, lhs.value, *&lhs.timescale, lhs.epoch, v506, v507[0], v507[1], v507[2], v507[3], v507[4], v507[5], v508, v509, *(&v509 + 1), v510, time.value);
              LODWORD(lhs.value) = 136316930;
              OUTLINED_FUNCTION_539("fpfs_FinishVideoSync");
              *(&lhs.flags + 2) = v233;
              OUTLINED_FUNCTION_222(v239, v339, v350, v361, v373, v385, v397, v408, v417, v421);
              *(v507 + 2) = v235;
              WORD1(v507[1]) = v240;
              *(&v507[1] + 4) = v378;
              WORD2(v507[2]) = 1024;
              *(&v507[2] + 6) = v237;
              WORD1(v507[3]) = v241;
              *(&v507[3] + 4) = *&v238;
              WORD2(v507[4]) = v241;
              *(&v507[4] + 6) = v242;
              OUTLINED_FUNCTION_377();
              v243 = OUTLINED_FUNCTION_25();
              _os_log_send_and_compose_impl(v243, v244, v245, v246, v247, v229, v230, v248);
              v19 = v366;
            }

            OUTLINED_FUNCTION_7();
            OUTLINED_FUNCTION_467(v249, v250, v251, v252, v253);
            v221 = v467;
          }

          v231 = v449;
          fpfs_FlushPrimaryAndAuxRenderChains(*(v449 + 112), 0);
          *(v449 + 201) = 1;
          if (!v19)
          {
            goto LABEL_142;
          }

          goto LABEL_153;
        }
      }
    }

    else
    {
      v494 = *(v219 + 288);
      v495 = *(v219 + 304);
    }

    CMBufferQueueIsEmpty(*(v219 + 88));
    v231 = v219;
    if (!v19)
    {
LABEL_142:
      v232 = -1;
      goto LABEL_154;
    }

LABEL_153:
    v232 = *(v19 + 32);
LABEL_154:
    CMTimeMake(&time, 1, 2);
    OUTLINED_FUNCTION_75();
    OUTLINED_FUNCTION_694(v254, v255, v256, v257, v258, v259, v260, v261, p_lhs, v344, v355, v366, v378, v391, v402, *(&v402 + 1), v421, *(&v421 + 1), v440, v449, v458, v467, v475, queue, *rhs, *&rhs[8], *&rhs[16], *&rhs[24], v492.value, *&v492.timescale, v492.epoch, v493, v494);
    OUTLINED_FUNCTION_489();
    fpfs_StartTrackPlaying();
    if (!v262)
    {
      if (v19)
      {
        for (i = v221[128]; i; i = *(i + 3))
        {
          if (*(i + 4) == v232)
          {
            break;
          }
        }
      }

      else
      {
        i = 0;
      }

      if (dword_1EAF169F0)
      {
        OUTLINED_FUNCTION_795();
        v271 = OUTLINED_FUNCTION_509(qword_1EAF169E8, v264, v265, v266, v267, v268, v269, v270, v340, v351, v362, v374, v386, v398, v409, *(&v409 + 1), v427, v438, v446, v455, v464, v473, v481, queuec, rhs[0], *&rhs[8], *&rhs[16], *&rhs[24], v492.value);
        v272 = rhs[0];
        os_log_type_enabled(v271, rhs[0]);
        OUTLINED_FUNCTION_221();
        if (v1)
        {
          v273 = *v473;
          if (*v473)
          {
            v274 = (CMBaseObjectGetDerivedStorage() + 888);
          }

          else
          {
            v274 = "";
          }

          v428 = v274;
          v275 = v464;
          if (v464)
          {
            v276 = (CMBaseObjectGetDerivedStorage() + 3096);
            v387 = (CMBaseObjectGetDerivedStorage() + 3096);
          }

          else
          {
            v276 = "";
            v387 = "";
          }

          v277 = v473[20];
          fpfs_GetTime(v473, &time);
          v278 = CMTimeGetSeconds(&time);
          v279 = v455;
          *&time.value = *(v455 + 208);
          v280 = OUTLINED_FUNCTION_853(*(v455 + 224), v340, v351, v362, v374, v387, v398, v409, *(&v409 + 1), v428, v438, v446, v455, v464, v473, v481, queuec, *rhs, *&rhs[8], *&rhs[16], *&rhs[24], v492.value, *&v492.timescale, v492.epoch, v493, v494, *(&v494 + 1), v495, v496, v497, cf, v499, *(&v499 + 1), v500, v501.value, *&v501.timescale, v501.epoch, v502.value, *&v502.timescale, v502.epoch, v503.n128_i64[0], v503.n128_i64[1], v504, lhs.value, *&lhs.timescale, lhs.epoch, v506, v507[0], v507[1], v507[2], v507[3], v507[4], v507[5], v508, v509, *(&v509 + 1), v510, time.value);
          *&time.value = *(v279 + 288);
          OUTLINED_FUNCTION_853(*(v279 + 304), v341, v352, v363, v375, v388, v399, v410, v418, v429, v439, v447, v456, v465, v474, v482, queueg, *rhs, *&rhs[8], *&rhs[16], *&rhs[24], v492.value, *&v492.timescale, v492.epoch, v493, v494, *(&v494 + 1), v495, v496, v497, cf, v499, *(&v499 + 1), v500, v501.value, *&v501.timescale, v501.epoch, v502.value, *&v502.timescale, v502.epoch, v503.n128_i64[0], v503.n128_i64[1], v504, lhs.value, *&lhs.timescale, lhs.epoch, v506, v507[0], v507[1], v507[2], v507[3], v507[4], v507[5], v508, v509, *(&v509 + 1), v510, time.value);
          LODWORD(lhs.value) = 136317442;
          OUTLINED_FUNCTION_539("fpfs_FinishVideoSync");
          *(&lhs.flags + 2) = v273;
          OUTLINED_FUNCTION_222(v281, v342, v353, v364, v376, v389, v400, v411, v419, v430);
          *(v507 + 2) = v275;
          WORD1(v507[1]) = v282;
          *(&v507[1] + 4) = v276;
          WORD2(v507[2]) = 2080;
          *(&v507[2] + 6) = v386;
          HIWORD(v507[3]) = 1024;
          LODWORD(v507[4]) = v277;
          WORD2(v507[4]) = v283;
          *(&v507[4] + 6) = *&v278;
          HIWORD(v507[5]) = v283;
          v508 = *&v280;
          LOWORD(v509) = v283;
          *(&v509 + 2) = v284;
          OUTLINED_FUNCTION_377();
          OUTLINED_FUNCTION_23();
          _os_log_send_and_compose_impl(v285, v286, v287, v288, v289, v290, v272, v291);
        }

        OUTLINED_FUNCTION_7();
        OUTLINED_FUNCTION_467(v292, v293, v294, v295, v296);
        v231 = v455;
        v221 = v473;
      }

      v297 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberIntType, &v497 + 4);
      if (v297)
      {
        v298 = v297;
        MEMORY[0x19A8D35D0]();
        FigGetAllocatorForMedia();
        v231 = v455;
        v299 = FigThreadCopyProperty();
        MEMORY[0x19A8D35D0](v299);
        v221 = v473;
        FigThreadSetProperty();
        CFRelease(v298);
      }

      v300 = CMBufferQueueDequeueAndRetain(*(v231 + 88));
      if (v300)
      {
        v301 = v300;
        do
        {
          v302 = OUTLINED_FUNCTION_293();
          fpfs_RenderBuffer(v302, v303);
          CFRelease(v301);
          v301 = CMBufferQueueDequeueAndRetain(*(v231 + 88));
        }

        while (v301);
      }

      v304 = v464;
      if (*(v231 + 198) && !*(v231 + 128))
      {
        OUTLINED_FUNCTION_133();
        fpfs_StopFeedingTrack(v305, v306, v307);
        v304 = v464;
      }

      if (i)
      {
        if (*(i + 16))
        {
          *&v492.value = v409;
          v492.epoch = v398;
          fpfs_scheduleForwardEndTimeForTrack();
          if (dword_1EAF169F0)
          {
            *rhs = 0;
            LOBYTE(queuec) = 0;
            v311 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            os_log_type_enabled(v311, OS_LOG_TYPE_DEFAULT);
            OUTLINED_FUNCTION_221();
            if (v1)
            {
              v312 = *v473;
              if (*v473)
              {
                v313 = (CMBaseObjectGetDerivedStorage() + 888);
              }

              else
              {
                v313 = "";
              }

              v431 = v313;
              v314 = v464;
              if (v464)
              {
                v315 = (CMBaseObjectGetDerivedStorage() + 3096);
              }

              else
              {
                v315 = "";
              }

              v316 = *(i + 4);
              *&time.timescale = *&v492.timescale;
              OUTLINED_FUNCTION_853(v492.epoch, v340, v351, v362, v374, v386, v398, v409, *(&v409 + 1), v431, v438, v446, v455, v464, v473, v481, queuec, *rhs, *&rhs[8], *&rhs[16], *&rhs[24], v492.value, *&v492.timescale, v492.epoch, v493, v494, *(&v494 + 1), v495, v496, v497, cf, v499, *(&v499 + 1), v500, v501.value, *&v501.timescale, v501.epoch, v502.value, *&v502.timescale, v502.epoch, v503.n128_i64[0], v503.n128_i64[1], v504, lhs.value, *&lhs.timescale, lhs.epoch, v506, v507[0], v507[1], v507[2], v507[3], v507[4], v507[5], v508, v509, *(&v509 + 1), v510, v492.value);
              LODWORD(lhs.value) = 136316674;
              OUTLINED_FUNCTION_539("fpfs_FinishVideoSync");
              *(&lhs.flags + 2) = v312;
              OUTLINED_FUNCTION_222(v317, v343, v354, v365, v377, v390, v401, v412, v420, v432);
              *(v507 + 2) = v314;
              WORD1(v507[1]) = v318;
              *(&v507[1] + 4) = v315;
              WORD2(v507[2]) = 1024;
              *(&v507[2] + 6) = v316;
              WORD1(v507[3]) = v319;
              *(&v507[3] + 4) = v320;
              OUTLINED_FUNCTION_377();
              OUTLINED_FUNCTION_23();
              _os_log_send_and_compose_impl(v321, v322, v323, v324, v325, v326, 0, v327);
            }

            OUTLINED_FUNCTION_7();
            OUTLINED_FUNCTION_467(v328, v329, v330, v331, v332);
            v231 = v455;
            v221 = v473;
          }
        }

        else
        {
          OUTLINED_FUNCTION_133();
          fpfs_StopFeedingTrack(v308, v309, v310);
        }

        v304 = v464;
      }

      fpfs_UpdateDimensions(v304, 1);
      if (cf)
      {
        MEMORY[0x19A8D35D0]();
        FigThreadSetProperty();
        if (cf)
        {
          CFRelease(cf);
        }
      }

      if (*(v231 + 200) && (*(v221 + 1508) & 1) != 0)
      {
        time = *(v221 + 187);
        v221[189] = v398;
        *(v221 + 187) = v409;
        fpfs_StepIFrame();
      }
    }
  }

LABEL_190:
  OUTLINED_FUNCTION_191();
}

int64_t fpfs_IsAudioTrackReadyToStart(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  OUTLINED_FUNCTION_700();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  memset(&v49, 0, sizeof(v49));
  OUTLINED_FUNCTION_514();
  lhs = *a3;
  rhs = *(v4 + 412);
  CMTimeSubtract(&v50, &lhs, &rhs);
  if (!v5)
  {
    *&v48.value = *(v4 + 232);
    v17 = *(v4 + 248);
LABEL_5:
    v48.epoch = v17;
    goto LABEL_7;
  }

  EndOutputPresentationTimeStamp = fpfs_GetEndOutputPresentationTimeStamp(v5, &v48);
  OUTLINED_FUNCTION_660(EndOutputPresentationTimeStamp, v10, v11, v12, v13, v14, v15, v16, v38, v41, rhs.value, *&rhs.timescale, rhs.epoch, v45, lhs.value, *&lhs.timescale, lhs.epoch, v47, *&v48.value);
  if ((OUTLINED_FUNCTION_636(v50.epoch, v39, v42, v50.value, *&v50.timescale, rhs.epoch, v45, lhs.value) & 0x80000000) != 0)
  {
    if (*(v4 + 436))
    {
      goto LABEL_7;
    }

    CMBufferQueueReset(*(v4 + 88));
    *&v48.value = *MEMORY[0x1E6960C80];
    v17 = *(MEMORY[0x1E6960C80] + 16);
    goto LABEL_5;
  }

  CMBufferQueueEnqueue(*(v4 + 88), v5);
LABEL_7:
  OUTLINED_FUNCTION_351();
  fpfs_TrimAudioTrack(v4, &lhs);
  if (!*(v4 + 400) || (result = fpfs_isDecryptorReady(v4), result))
  {
    if (*(DerivedStorage + 2904))
    {
      return 0;
    }

    result = fpfs_CanRenderAudio(*DerivedStorage);
    if (result)
    {
      if (*(DerivedStorage + 840) == 0.0)
      {
        OUTLINED_FUNCTION_660(result, v19, v20, v21, v22, v23, v24, v25, v38, v41, rhs.value, *&rhs.timescale, rhs.epoch, v45, lhs.value, *&lhs.timescale, lhs.epoch, v47, *&v48.value);
        return OUTLINED_FUNCTION_636(*(a3 + 16), v40, v43, *a3, *(a3 + 8), rhs.epoch, v45, lhs.value) > 0;
      }

      HIDWORD(v41) = 0;
      OUTLINED_FUNCTION_351();
      fpfs_GetTrackStartupQueueDuration(v4, &lhs, &v49);
      lhs = v49;
      OUTLINED_FUNCTION_185();
      fpfs_CheckCanKeepUp(v26, v27, v28, v29, v30, v31, v32, v33);
      OUTLINED_FUNCTION_484();
      v36 = v34 == v35;
      result = result ? result : v36;
      if (a4 && !result)
      {
        OUTLINED_FUNCTION_29();
        if (!v37)
        {
          return 0;
        }

        result = fpfs_LastTrackOfType(*(v4 + 16), *(v4 + 48), v4);
        if (result)
        {
          return OUTLINED_FUNCTION_636(*(result + 248), v38, v41, *(result + 232), *(result + 240), rhs.epoch, v45, *(v4 + 232)) >= 0;
        }
      }
    }
  }

  return result;
}

uint64_t fpfsi_VideoOutputAllowedWithPermissivePolicy(uint64_t a1)
{
  if (!a1)
  {
    return 1;
  }

  OUTLINED_FUNCTION_33();
  if (v5)
  {
    if (*(v1 + 400))
    {
      FigGetAllocatorForMedia();
      OUTLINED_FUNCTION_199();
      if (!*(*(CMBaseObjectGetVTable() + 8) + 48))
      {
        return 0;
      }

      v2 = OUTLINED_FUNCTION_236();
      v4 = v3(v2);
      if (v4)
      {
        v5 = v4 == -12784;
      }

      else
      {
        v5 = 1;
      }

      if (!v5)
      {
        return 0;
      }
    }

    return 1;
  }

  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v7, 0, v8);
  return 0;
}

uint64_t fpfs_UnsuspendVideoRenderingForTrack()
{
  OUTLINED_FUNCTION_187();
  OUTLINED_FUNCTION_340();
  CMBaseObjectGetDerivedStorage();
  if (*(v1 + 48) != v2 || !*(v1 + 112))
  {
    goto LABEL_21;
  }

  OUTLINED_FUNCTION_301();
  RenderingTrackofType = fpfs_LastRenderingTrackofType(v3, v4, v1);
  if (RenderingTrackofType)
  {
    v6 = RenderingTrackofType;
    v7 = *(RenderingTrackofType + 112);
    if (v7)
    {
      v8 = *(v7 + 64);
      if (v8)
      {
        if (CFDictionaryGetValue(v8, @"renderPipelineToStart"))
        {
          v9 = FigCFWeakReferenceHolderCopyReferencedObject();
          if (v9)
          {
            if (FigCFEqual())
            {
              goto LABEL_12;
            }
          }

          v10 = *(*(v6 + 112) + 64);
          if (v10)
          {
            CFRelease(v10);
            *(*(v6 + 112) + 64) = 0;
          }

          if (v9)
          {
LABEL_12:
            CFRelease(v9);
          }
        }
      }
    }

    v11 = *(v6 + 112);
    if (v11)
    {
      v12 = v11 == *(v1 + 112);
    }

    else
    {
      v12 = 1;
    }

    if (!v12 && !*(v11 + 64))
    {
      cf = 0;
      FigGetAllocatorForMedia();
      OUTLINED_FUNCTION_441();
      OUTLINED_FUNCTION_19();
      v21 = CMSampleBufferCreate(v13, v14, v15, v16, v17, v18, v19, v20, 0, 0, 0, &cf);
      if (!v21)
      {
        v22 = fpfs_RenderWithEndSignal(v6, cf, *(*(v1 + 112) + 32));
        CFRelease(cf);
        if (v22)
        {
          return v22;
        }

        fpfs_setPropertyOnPrimaryAndAuxRenderPipelines();
        goto LABEL_21;
      }

      return v21;
    }

LABEL_21:
    v23 = 0;
    goto LABEL_22;
  }

  fpfs_setPropertyOnPrimaryAndAuxRenderPipelines();
  v23 = 1;
  OUTLINED_FUNCTION_133();
  fpfsi_scheduleFVTTransitionsForItem(v25, v26, v27);
  fpfsi_RTCReportingReportFormatTransition(*(v1 + 16), 0, v1);
  v21 = fpfsi_setCAImageQueueFlagsForTrack(v1);
  if (v21)
  {
    return v21;
  }

LABEL_22:
  v22 = 0;
  if (v0)
  {
    *v0 = v23;
  }

  return v22;
}

uint64_t FigReportingAgentStatsUpdateSampleValue(uint64_t result)
{
  if (result)
  {
    OUTLINED_FUNCTION_349();
    VTable = CMBaseObjectGetVTable();
    v2 = *(VTable + 16);
    result = VTable + 16;
    if (*(v2 + 40))
    {
      OUTLINED_FUNCTION_184();
      OUTLINED_FUNCTION_403();

      return v3();
    }
  }

  return result;
}

void fpfsi_RTCReportingReportFormatTransition(uint64_t a1, CFStringRef a2, uint64_t a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(a3 + 48) != 1986618469)
  {
    return;
  }

  v6 = DerivedStorage;
  MediaSubType = CMFormatDescriptionGetMediaSubType(*(a3 + 56));
  fpfsi_getTrackVideoContentTypeDescription(a3);
  if (!a2)
  {
    goto LABEL_12;
  }

  if (LODWORD(a2[1].data) == 1986618469)
  {
    fpfsi_getTrackVideoContentTypeDescription(a2);
    if (!FigCFEqual())
    {
      if (*(v6 + 2568) && *(*(CMBaseObjectGetVTable() + 16) + 48))
      {
        OUTLINED_FUNCTION_717();
        v8();
      }

      AllocatorForMedia = FigGetAllocatorForMedia();
      v10 = CMFormatDescriptionGetMediaSubType(a2[1].length) >> 24;
      v11 = (CMFormatDescriptionGetMediaSubType(a2[1].length) >> 16);
      v12 = (CMFormatDescriptionGetMediaSubType(a2[1].length) >> 8);
      v13 = CMFormatDescriptionGetMediaSubType(a2[1].length);
      v14 = CFStringCreateWithFormat(AllocatorForMedia, 0, @"%c%c%c%c", v10, v11, v12, v13);
      if (v14)
      {
        a2 = v14;
        if (*(v6 + 2568) && *(*(CMBaseObjectGetVTable() + 16) + 48))
        {
          OUTLINED_FUNCTION_481();
          OUTLINED_FUNCTION_333();
          v15();
        }

LABEL_12:
        if (*(v6 + 2568) && *(*(CMBaseObjectGetVTable() + 16) + 48))
        {
          OUTLINED_FUNCTION_481();
          OUTLINED_FUNCTION_240();
          v16();
        }

        v17 = FigGetAllocatorForMedia();
        v18 = CFStringCreateWithFormat(v17, 0, @"%c%c%c%c", HIBYTE(MediaSubType), BYTE2(MediaSubType), BYTE1(MediaSubType), MediaSubType);
        if (v18)
        {
          if (*(v6 + 2568) && *(*(CMBaseObjectGetVTable() + 16) + 48))
          {
            OUTLINED_FUNCTION_310();
            v19();
          }

          if (*(a3 + 500))
          {
            v20 = *(v6 + 2568);
            OUTLINED_FUNCTION_269();
            CMTimeGetSeconds(v21);
            if (v20)
            {
              if (*(*(CMBaseObjectGetVTable() + 16) + 56))
              {
                OUTLINED_FUNCTION_288();
                v22();
              }
            }
          }

          if (*(v6 + 2568))
          {
            if (*(*(CMBaseObjectGetVTable() + 16) + 56))
            {
              OUTLINED_FUNCTION_426();
              v23();
            }

            if (*(v6 + 2568) && *(*(CMBaseObjectGetVTable() + 16) + 8))
            {
              OUTLINED_FUNCTION_298();
              OUTLINED_FUNCTION_305();
              v24();
            }
          }
        }

        if (a2)
        {
          CFRelease(a2);
        }

        if (v18)
        {
          CFRelease(v18);
        }
      }
    }
  }
}

uint64_t FigReportingAgentStatsSetCFTypeValue(uint64_t result)
{
  if (result)
  {
    OUTLINED_FUNCTION_349();
    VTable = CMBaseObjectGetVTable();
    v2 = *(VTable + 16);
    result = VTable + 16;
    if (*(v2 + 48))
    {
      OUTLINED_FUNCTION_184();
      OUTLINED_FUNCTION_403();

      return v3();
    }
  }

  return result;
}

uint64_t fpfs_PrerollRenderPipeline()
{
  OUTLINED_FUNCTION_681();
  if (!CFNumberCreate(v1, v2, v3))
  {
    return 4294954434;
  }

  OUTLINED_FUNCTION_251();
  if (*(*(CMBaseObjectGetVTable() + 16) + 56))
  {
    v4 = OUTLINED_FUNCTION_177();
    v6 = v5(v4);
  }

  else
  {
    v6 = 4294954514;
  }

  CFRelease(v0);
  return v6;
}

void fpfs_StartTrackPlaying()
{
  OUTLINED_FUNCTION_182();
  v1 = v0;
  v510 = v2;
  v485 = v3;
  tagCollectionsOut = v4;
  v6 = v5;
  v8 = v7;
  v550 = *MEMORY[0x1E69E9840];
  HIBYTE(v535) = 0;
  v9 = MEMORY[0x1E6960C70];
  v546 = *MEMORY[0x1E6960C70];
  LODWORD(v547) = *(MEMORY[0x1E6960C70] + 8);
  epoch = *(MEMORY[0x1E6960C70] + 16);
  v544 = v546;
  LODWORD(v545) = v547;
  *v533 = *MEMORY[0x1E6960C70];
  v534 = epoch;
  v11 = *v7;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v456 = *(v6 + 16);
  cf = *(v6 + 32);
  LODWORD(v519) = *(v6 + 436);
  v400 = v8;
  v465 = DerivedStorage;
  v475 = v11;
  if (!fpfsi_isTrackInLists(v8, v6, 1u) && dword_1EAF169F0)
  {
    OUTLINED_FUNCTION_655();
    v20 = OUTLINED_FUNCTION_639(qword_1EAF169E8, v13, v14, v15, v16, v17, v18, v19, v346, v355, v364, tagCollectionsOut, cf, tagCollection, v8, v409, v417, v427, v436, v446, v456, DerivedStorage, v11, v485, v494, v502, v510, v519, rhs.value, *&rhs.timescale, rhs.epoch, v528, v529.value, *&v529.timescale, v529.epoch, type.value, *&type.timescale, type.epoch, v531.value);
    if (os_log_type_enabled(v20, type.value))
    {
      value = v531.value;
    }

    else
    {
      value = v531.value & 0xFFFFFFFE;
    }

    if (value)
    {
      v22 = *v400;
      if (*v400)
      {
        v23 = (CMBaseObjectGetDerivedStorage() + 888);
      }

      else
      {
        v23 = "";
      }

      v24 = v456;
      if (v456)
      {
        v25 = (CMBaseObjectGetDerivedStorage() + 3096);
        v24 = v456;
      }

      else
      {
        v25 = "";
      }

      v26 = *(v400 + 160);
      v27 = *(v6 + 40);
      v28 = *(v6 + 48);
      LODWORD(lhs.value) = 136317954;
      *(&lhs.value + 4) = "fpfs_StartTrackPlaying";
      LOWORD(lhs.flags) = 2048;
      *(&lhs.flags + 2) = v22;
      HIWORD(lhs.epoch) = 2082;
      v537 = v23;
      *v538 = 2048;
      *&v538[2] = v24;
      *&v538[10] = 2082;
      *&v538[12] = v25;
      *&v538[20] = 1024;
      *&v538[22] = v26;
      *&v538[26] = 2048;
      *&v538[28] = cf;
      *&v538[36] = 1024;
      *&v538[38] = v27;
      *&v538[42] = 1024;
      *&v538[44] = HIBYTE(v28);
      LOWORD(v539) = 1024;
      *(&v539 + 2) = BYTE2(v28);
      HIWORD(v539) = 1024;
      LODWORD(v540) = BYTE1(v28);
      WORD2(v540) = 1024;
      *(&v540 + 6) = v28;
      OUTLINED_FUNCTION_49();
      OUTLINED_FUNCTION_30();
      OUTLINED_FUNCTION_566();
      _os_log_send_and_compose_impl(v29, v30, v31, v32, v33, v34, v35, v36);
    }

    OUTLINED_FUNCTION_7();
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    DerivedStorage = v465;
    v11 = v475;
  }

  if (*(v6 + 48) == 1668047728)
  {
    RenderingTrackofType = fpfs_LastRenderingTrackofType(v456, 1668047728, v6);
  }

  else
  {
    RenderingTrackofType = 0;
  }

  OUTLINED_FUNCTION_63();
  if (v85)
  {
    OUTLINED_FUNCTION_194();
    v40 = fpfs_LastRenderingTrackofType(v38, v39, v6);
    if (v40)
    {
      fpfs_EnqueueReleaseAfterDecoding(v40);
    }
  }

  OUTLINED_FUNCTION_732();
  fpfs_EnsureRenderChainForTrack();
  if (v41)
  {
    v42 = v41;
    if (dword_1EAF169F0)
    {
      OUTLINED_FUNCTION_655();
      v50 = OUTLINED_FUNCTION_639(qword_1EAF169E8, v43, v44, v45, v46, v47, v48, v49, v346, v355, v364, tagCollectionsOut, cf, tagCollection, v400, v409, v417, v427, v436, v446, v456, v465, v475, v485, v494, v502, v510, v519, rhs.value, *&rhs.timescale, rhs.epoch, v528, v529.value, *&v529.timescale, v529.epoch, type.value, *&type.timescale, type.epoch, v531.value);
      value_low = LOBYTE(type.value);
      os_log_type_enabled(v50, type.value);
      OUTLINED_FUNCTION_40();
      if (RenderingTrackofType)
      {
        if (v476)
        {
          v52 = (CMBaseObjectGetDerivedStorage() + 888);
        }

        else
        {
          v52 = "";
        }

        if (v456)
        {
          CMBaseObjectGetDerivedStorage();
        }

        LODWORD(lhs.value) = 136316418;
        OUTLINED_FUNCTION_321();
        *(v65 + 14) = v476;
        OUTLINED_FUNCTION_511();
        v537 = v52;
        *v538 = v66;
        *(v67 + 34) = v68;
        *&v538[10] = v69;
        *(v67 + 44) = v70;
        *&v538[20] = 1024;
        *(v67 + 54) = v42;
        OUTLINED_FUNCTION_49();
        v71 = OUTLINED_FUNCTION_31();
        _os_log_send_and_compose_impl(v71, v72, v73, v74, v75, v50, value_low, v76);
      }

      OUTLINED_FUNCTION_1();
      fig_log_call_emit_and_clean_up_after_send_and_compose();
      DerivedStorage = *v466;
    }

    fpfs_StopPlayingItemWithOSStatus(DerivedStorage, v456, v42);
    goto LABEL_68;
  }

  OUTLINED_FUNCTION_144();
  if (*(v6 + 48) == v53)
  {
    if (fpfs_ShouldTryToGrabHDRPlaybackBaton(v11, v456))
    {
      if (!fpfs_GrabPlayerHDRPlaybackBaton(v11))
      {
        fpfsi_SwitchBetweenHDRAndSDR(v456, 1);
        OUTLINED_FUNCTION_120();
        FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v346, v355, v364);
        if (v54)
        {
          goto LABEL_68;
        }
      }
    }

    if (fpfs_ShouldTryToGrab4kPlaybackBaton(v11, v456))
    {
      if (!fpfs_GrabPlayer4kPlaybackBaton(v11))
      {
        fpfsi_SwitchBetween4kAndHD(v456);
        OUTLINED_FUNCTION_120();
        FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v346, v355, v364);
        if (v234)
        {
          goto LABEL_68;
        }
      }
    }

    DerivedStorage = v465;
  }

  v55 = MEMORY[0x1E695E4D0];
  OUTLINED_FUNCTION_63();
  if (v85)
  {
    if (*(v400 + 3128) != *(DerivedStorage + 608))
    {
      v57 = *(DerivedStorage + 616);
      v58 = *(v400 + 3136);
      *(DerivedStorage + 616) = v58;
      if (v58)
      {
        CFRetain(v58);
      }

      if (v57)
      {
        CFRelease(v57);
      }

      v59 = *(DerivedStorage + 608);
      v60 = *(v400 + 3128);
      *(DerivedStorage + 608) = v60;
      if (v60)
      {
        CFRetain(v60);
      }

      if (v59)
      {
        CFRelease(v59);
      }
    }

    if (!*(v6 + 439))
    {
      *(v6 + 201) = 1;
    }

    lhs = *v485;
    *&refcon.value = *&v485->value;
    v61 = *(v6 + 16);
    refcon.epoch = v485->epoch;
    v549 = v61;
    fpfs_TrimAudioTrack(v6, &lhs);
    CMBufferQueueCallForEachBuffer(*(v6 + 88), fpfsi_TrimAudioInQueue, &refcon);
    CMBaseObjectGetDerivedStorage();
    OUTLINED_FUNCTION_473();
    for (; v62; v62 = *(v62 + 24))
    {
      if (*(v62 + 48) == v63 && *(v62 + 112))
      {
        break;
      }
    }

    if (v62 == v6)
    {
      v64 = *(CMBaseObjectGetDerivedStorage() + 1024);
      if (!v64)
      {
        goto LABEL_70;
      }

      while (*(v64 + 48) != 1986618469 || !*(v64 + 112))
      {
        v64 = *(v64 + 24);
        if (!v64)
        {
          goto LABEL_70;
        }
      }

      if (*(v64 + 80) >= *(v6 + 80))
      {
LABEL_70:
        FigRenderPipelineGetFigBaseObject();
        v78 = v77;
        v79 = *(*(CMBaseObjectGetVTable() + 8) + 56);
        if (!v79 || v79(v78, @"IsTimebaseStarter", *v55))
        {
          goto LABEL_68;
        }
      }
    }
  }

  else if (RenderingTrackofType && v56 == 1668047728 && RenderingTrackofType[14].isa == *(v6 + 112))
  {
    *(v6 + 201) = 0;
  }

  v80 = *(v400 + 1024);
  if (v80 && v80 != v6)
  {
    do
    {
      if (*(v80 + 112) == *(v6 + 112))
      {
        OUTLINED_FUNCTION_674();
        if (v85)
        {
          while (1)
          {
            v81 = CMBufferQueueDequeueAndRetain(*(v80 + 88));
            if (!v81)
            {
              break;
            }

            RenderingTrackofType = v81;
            v82 = OUTLINED_FUNCTION_284();
            v84 = fpfs_RenderBuffer(v82, v83);
            CFRelease(RenderingTrackofType);
            if (v84)
            {
              goto LABEL_68;
            }
          }
        }
      }

      v80 = *(v80 + 24);
      if (v80)
      {
        v85 = v80 == v6;
      }

      else
      {
        v85 = 1;
      }
    }

    while (!v85);
  }

  if (fpfs_UnsuspendVideoRenderingForTrack())
  {
    goto LABEL_68;
  }

  LODWORD(v502) = *(v9 + 12);
  OUTLINED_FUNCTION_63();
  v86 = v465;
  LODWORD(v87) = 1986618469;
  if (v85)
  {
    OUTLINED_FUNCTION_194();
    TrackOfType = fpfs_LastTrackOfType(v88, v89, v6);
    v91 = &unk_1EAF16000;
    HIDWORD(v494) = TrackOfType && *(v6 + 112) == *(TrackOfType + 112) && *(v6 + 80) != *(TrackOfType + 80);
  }

  else
  {
    HIDWORD(v494) = 0;
    v91 = &unk_1EAF16000;
  }

  v92 = CMBufferQueueDequeueAndRetain(*(v6 + 88));
  if (v92)
  {
    RenderingTrackofType = v92;
    HIDWORD(v502) = 0;
    v437 = *v55;
    v447 = *MEMORY[0x1E69604D0];
    *&v100 = 136316674;
    *v418 = v100;
    HIDWORD(v409) = v502;
    tagCollectiona = epoch;
    while (1)
    {
      memset(&v531, 0, sizeof(v531));
      CMSampleBufferGetOutputPresentationTimeStamp(&v531, RenderingTrackofType);
      memset(&type, 0, sizeof(type));
      fpfs_GetEndOutputPresentationTimeStamp(RenderingTrackofType, &type);
      refcon = type;
      v101 = OUTLINED_FUNCTION_421();
      BufferCount = fpfs_TimeIsAfter(v101, v102, v103);
      v115 = 0;
      if (!BufferCount)
      {
        OUTLINED_FUNCTION_78(BufferCount, v105, v106, v107, v108, v109, v110, v111, v346, v355, v364, tagCollectionsOut, cf, tagCollectiona, v400, v409, v418[0], v418[1], v437, v447, v456, v465, v475, v485, v494, v502, v510, v519, rhs.value, *&rhs.timescale, rhs.epoch, v528, v529.value, *&v529.timescale, v529.epoch, type.value, *&type.timescale, type.epoch, *&v531.value);
        v112 = OUTLINED_FUNCTION_421();
        BufferCount = fpfs_TimeIsAtOrAfter(v112, v113, v114);
        if (!BufferCount)
        {
          if (!*(v6 + 200) || (BufferCount = CMBufferQueueGetBufferCount(*(v6 + 88))) != 0 || (BufferCount = CMSampleBufferGetDuration(&v529, RenderingTrackofType), (v529.flags & 1) != 0) && (Duration = CMSampleBufferGetDuration(&refcon, RenderingTrackofType), BufferCount = OUTLINED_FUNCTION_850(Duration, v207, v208, v209, v210, v211, v212, v213, v346, v355, v364, tagCollectionsOut, cf, tagCollectiona, v400, v409, v418[0], v418[1], v437, v447, v456, v465, v475, v485, v494, v502, v510, v519, rhs.value, *&rhs.timescale, rhs.epoch, v528, v529.value, *&v529.timescale, v529.epoch, type.value, *&type.timescale, type.epoch, v531.value, *&v531.timescale, v531.epoch, v532, v533[0], v533[1], v534, v535, kSparseSampleDurationAllowance, *(&kSparseSampleDurationAllowance + 1), 0, v537, *v538, *&v538[8], *&v538[16], *&v538[24], *&v538[32], *&v538[40], *&v539, v540, *(&v540 + 1), v541, v542, v543, v544), (BufferCount & 0x80000000) == 0))
          {
            v115 = 1;
          }
        }
      }

      OUTLINED_FUNCTION_78(BufferCount, v105, v106, v107, v108, v109, v110, v111, v346, v355, v364, tagCollectionsOut, cf, tagCollectiona, v400, v409, v418[0], v418[1], v437, v447, v456, v465, v475, v485, v494, v502, v510, v519, rhs.value, *&rhs.timescale, rhs.epoch, v528, v529.value, *&v529.timescale, v529.epoch, type.value, *&type.timescale, type.epoch, *&v531.value);
      OUTLINED_FUNCTION_105(v511);
      IsVideoDependedOnByOthers = OUTLINED_FUNCTION_850(v116, v117, v118, v119, v120, v121, v122, v123, v347, v356, v365, tagCollectionsOutb, cfb, tagCollectionb, v401, v410, v419, v428, v438, v448, v457, v467, v477, v486, v495, v503, v511, v520, rhs.value, *&rhs.timescale, rhs.epoch, v528, v529.value, *&v529.timescale, v529.epoch, type.value, *&type.timescale, type.epoch, v531.value, *&v531.timescale, v531.epoch, v532, v533[0], v533[1], v534, v535, lhs.value, *&lhs.timescale, lhs.epoch, v537, *v538, *&v538[8], *&v538[16], *&v538[24], *&v538[32], *&v538[40], *&v539, v540, *(&v540 + 1), v541, v542, v543, v544);
      if ((IsVideoDependedOnByOthers & 0x80000000) != 0 && (CMSampleBufferGetOutputDecodeTimeStamp(&refcon, RenderingTrackofType), OUTLINED_FUNCTION_105(v510), IsVideoDependedOnByOthers = OUTLINED_FUNCTION_850(v132, v133, v134, v135, v136, v137, v138, v139, v346, v355, v364, tagCollectionsOut, cf, tagCollectiona, v400, v409, v418[0], v418[1], v437, v447, v456, v465, v475, v485, v494, v502, v510, v519, rhs.value, *&rhs.timescale, rhs.epoch, v528, v529.value, *&v529.timescale, v529.epoch, type.value, *&type.timescale, type.epoch, v531.value, *&v531.timescale, v531.epoch, v532, v533[0], v533[1], v534, v535, lhs.value, *&lhs.timescale, lhs.epoch, v537, *v538, *&v538[8], *&v538[16], *&v538[24], *&v538[32], *&v538[40], *&v539, v540, *(&v540 + 1), v541, v542, v543, v544), (IsVideoDependedOnByOthers & 0x80000000) != 0) || v115 && *(v6 + 48) == v87 && (IsVideoDependedOnByOthers = fpfs_IsVideoDependedOnByOthers(RenderingTrackofType), !IsVideoDependedOnByOthers))
      {
        CFRelease(RenderingTrackofType);
      }

      else
      {
        if ((v502 & 1) == 0)
        {
          v546 = v531.value;
          LODWORD(v502) = v531.flags;
          LODWORD(v547) = v531.timescale;
          epoch = v531.epoch;
        }

        if (v115)
        {
          if (dword_1EAF169F0 >= 3)
          {
            v140 = epoch;
            v141 = v1;
            v142 = OUTLINED_FUNCTION_562(IsVideoDependedOnByOthers, v125, v126, v127, v128, v129, v130, v131, v346, v355, v364, tagCollectionsOut, cf, tagCollectiona, v400, v409, v418[0], v418[1], v437, v447, v456, v465, v475, v485, v494, v502, v510, v519, rhs.value, *&rhs.timescale, rhs.epoch, v528, SWORD2(v528), SBYTE6(v528), SHIBYTE(v528));
            v143 = rhs.value;
            LODWORD(v87) = HIBYTE(v528);
            os_log_type_enabled(v142, HIBYTE(v528));
            OUTLINED_FUNCTION_121();
            if (v85)
            {
              v152 = v151;
            }

            else
            {
              v152 = v143;
            }

            if (v152)
            {
              v153 = v475;
              if (v475)
              {
                v153 = CMBaseObjectGetDerivedStorage();
                v154 = (v153 + 888);
              }

              else
              {
                v154 = "";
              }

              v155 = v456;
              if (v456)
              {
                v153 = CMBaseObjectGetDerivedStorage();
                v156 = (v153 + 3096);
              }

              else
              {
                v156 = "";
              }

              OUTLINED_FUNCTION_78(v153, v144, v145, v146, v147, v148, v149, v150, v346, v355, v364, tagCollectionsOut, cf, tagCollectiona, v400, v409, v418[0], v418[1], v437, v447, v456, v465, v475, v485, v494, v502, v510, v519, rhs.value, *&rhs.timescale, rhs.epoch, v528, v529.value, *&v529.timescale, v529.epoch, type.value, *&type.timescale, type.epoch, *&v531.value);
              Seconds = CMTimeGetSeconds(&refcon);
              v166 = OUTLINED_FUNCTION_485(v158, v159, v160, v161, v162, v163, v164, v165, v348, v357, v366, tagCollectionsOutc, cfc, tagCollectionc, v402, v411, v420, v429, v439, v449, v458, v468, v478, v487);
              v168 = OUTLINED_FUNCTION_532(*(v167 + 16), v349, v358, v367, tagCollectionsOutd, cfd, tagCollectiond, v403, v412, v421, v430, v440, v450, v459, v469, v479, v488, v496, v504, v512, v521, rhs.value, *&rhs.timescale, rhs.epoch, v528, v529.value, *&v529.timescale, v529.epoch, type.value, *&type.timescale, type.epoch, v531.value, *&v531.timescale, v531.epoch, v532, v533[0], v533[1], v534, v535, lhs.value, *&lhs.timescale, lhs.epoch, v537, *v538, *&v538[8], *&v538[16], *&v538[24], *&v538[32], *&v538[40], *&v539, v540, *(&v540 + 1), v541, v542, v543, v544, v545, v546, v547, v166.n128_i64[0], v166.n128_i64[1], refcon.epoch);
              LODWORD(lhs.value) = v418[0];
              *(&lhs.value + 4) = "fpfs_StartTrackPlaying";
              LOWORD(lhs.flags) = 2048;
              *(&lhs.flags + 2) = v475;
              HIWORD(lhs.epoch) = 2082;
              v537 = v154;
              *v538 = 2048;
              *&v538[2] = v155;
              *&v538[10] = 2082;
              *&v538[12] = v156;
              *&v538[20] = 2048;
              *&v538[22] = Seconds;
              *&v538[30] = 2048;
              *&v538[32] = v168;
              OUTLINED_FUNCTION_49();
              OUTLINED_FUNCTION_34();
              OUTLINED_FUNCTION_667();
              _os_log_send_and_compose_impl(v169, v170, v171, v172, v173, v174, v175, "<<<< FigStreamPlayer >>>> %s: [%p|%{public}s] <%p|%{public}s>: adding do not display to %f (start time is %f)");
              v91 = &unk_1EAF16000;
            }

            OUTLINED_FUNCTION_1();
            fig_log_call_emit_and_clean_up_after_send_and_compose();
            v1 = v141;
            epoch = v140;
            v86 = v465;
            OUTLINED_FUNCTION_424();
          }

          fpfs_DoNotDisplay(RenderingTrackofType);
        }

        else if (!HIDWORD(v502))
        {
          if (v531.flags)
          {
            if ((v409 & 0x100000000) == 0)
            {
              v544 = v531.value;
              LODWORD(v545) = v531.timescale;
              tagCollectiona = v531.epoch;
              HIDWORD(v409) = v531.flags;
            }

            OUTLINED_FUNCTION_29();
            if (v85)
            {
              OUTLINED_FUNCTION_752();
              rhs = v531;
              CMTimeAdd(&refcon, &lhs, &rhs);
              *v1 = refcon;
            }

            HIDWORD(v502) = 1;
          }

          else
          {
            HIDWORD(v502) = 0;
          }
        }

        if (!v519)
        {
          v180 = 0;
          goto LABEL_143;
        }

        refcon.value = 0;
        v176 = OUTLINED_FUNCTION_765();
        if (!FigCreateReplacementAudioSBufByOmittingLeadingDependentPackets(v176, v177, v178))
        {
          v179 = RenderingTrackofType;
LABEL_142:
          v180 = CMSampleBufferGetNumSamples(v179) == 0;
          RenderingTrackofType = v179;
LABEL_143:
          LODWORD(v519) = v180;
          if (BYTE4(v494))
          {
            if (!fpfs_IsMarkerOnly(RenderingTrackofType))
            {
              CMSetAttachment(RenderingTrackofType, v447, v437, 1u);
              goto LABEL_146;
            }
          }

          else
          {
LABEL_146:
            HIDWORD(v494) = 0;
          }

          v181 = fpfs_RenderBuffer(v6, RenderingTrackofType);
          *v533 = *&v531.value;
          v534 = v531.epoch;
          CFRelease(RenderingTrackofType);
          if (v181)
          {
            goto LABEL_68;
          }

          goto LABEL_148;
        }

        v179 = refcon.value;
        if (refcon.value)
        {
          CFRetain(refcon.value);
        }

        CFRelease(RenderingTrackofType);
        if (refcon.value)
        {
          CFRelease(refcon.value);
          refcon.value = 0;
        }

        if (v179)
        {
          goto LABEL_142;
        }

        LODWORD(v519) = 1;
      }

LABEL_148:
      OUTLINED_FUNCTION_29();
      if (v85)
      {
        if (HIDWORD(v502))
        {
          OUTLINED_FUNCTION_78(v182, v183, v184, v185, v186, v187, v188, v189, v346, v355, v364, tagCollectionsOut, cf, tagCollectiona, v400, v409, v418[0], v418[1], v437, v447, v456, v465, v475, v485, v494, v502, v510, v519, rhs.value, *&rhs.timescale, rhs.epoch, v528, v529.value, *&v529.timescale, v529.epoch, type.value, *&type.timescale, type.epoch, *&v531.value);
          OUTLINED_FUNCTION_752();
          v198 = OUTLINED_FUNCTION_850(v190, v191, v192, v193, v194, v195, v196, v197, v350, v359, v368, tagCollectionsOute, cfe, tagCollectione, v404, v413, v422, v431, v441, v451, v460, v470, v480, v489, v497, v505, v513, v522, rhs.value, *&rhs.timescale, rhs.epoch, v528, v529.value, *&v529.timescale, v529.epoch, type.value, *&type.timescale, type.epoch, v531.value, *&v531.timescale, v531.epoch, v532, v533[0], v533[1], v534, v535, lhs.value, *&lhs.timescale, lhs.epoch, v537, *v538, *&v538[8], *&v538[16], *&v538[24], *&v538[32], *&v538[40], *&v539, v540, *(&v540 + 1), v541, v542, v543, v544);
          if (v198 >= 1)
          {
            if (dword_1EAF169F0)
            {
              v214 = OUTLINED_FUNCTION_562(v198, v199, v200, v201, v202, v203, v204, v205, v346, v355, v364, tagCollectionsOut, cf, tagCollectiona, v400, v409, v418[0], v418[1], v437, v447, v456, v465, v475, v485, v494, v502, v510, v519, rhs.value, *&rhs.timescale, rhs.epoch, v528, SWORD2(v528), SBYTE6(v528), SHIBYTE(v528));
              v215 = rhs.value;
              RenderingTrackofType = HIBYTE(v528);
              os_log_type_enabled(v214, HIBYTE(v528));
              OUTLINED_FUNCTION_121();
              if (v85)
              {
                LODWORD(v87) = v223;
              }

              else
              {
                LODWORD(v87) = v215;
              }

              if (v87)
              {
                v224 = v475;
                if (v475)
                {
                  v224 = CMBaseObjectGetDerivedStorage();
                }

                if (v456)
                {
                  v224 = CMBaseObjectGetDerivedStorage();
                  v235 = (v224 + 3096);
                }

                else
                {
                  v235 = "";
                }

                OUTLINED_FUNCTION_78(v224, v216, v217, v218, v219, v220, v221, v222, v346, v355, v364, tagCollectionsOut, cf, tagCollectiona, v400, v409, v418[0], v418[1], v437, v447, v456, v465, v475, v485, v494, v502, v510, v519, rhs.value, *&rhs.timescale, rhs.epoch, v528, v529.value, *&v529.timescale, v529.epoch, type.value, *&type.timescale, type.epoch, *&v531.value);
                CMTimeGetSeconds(&refcon);
                LODWORD(lhs.value) = 136316418;
                OUTLINED_FUNCTION_319("fpfs_StartTrackPlaying");
                *(v236 + 14) = v475;
                OUTLINED_FUNCTION_143();
                *(v237 + 44) = v235;
                *&v538[20] = v238;
                *(v237 + 54) = v239;
                OUTLINED_FUNCTION_49();
                OUTLINED_FUNCTION_65();
                _os_log_send_and_compose_impl(v240, v241, v242, v243, v244, v245, RenderingTrackofType, v246);
                v91 = &unk_1EAF16000;
              }

              OUTLINED_FUNCTION_1();
              fig_log_call_emit_and_clean_up_after_send_and_compose();
            }

            OUTLINED_FUNCTION_630();
            goto LABEL_185;
          }
        }
      }

      RenderingTrackofType = CMBufferQueueDequeueAndRetain(*(v6 + 88));
      if (!RenderingTrackofType)
      {
        OUTLINED_FUNCTION_630();
        if (!HIDWORD(v502))
        {
          goto LABEL_170;
        }

LABEL_185:
        fpfs_ChangeTrackState(v6, 6u);
        if (*(v400 + 2568))
        {
          v87 = *(v6 + 448);
          if (*(*(CMBaseObjectGetVTable() + 16) + 48))
          {
            OUTLINED_FUNCTION_333();
            v247();
          }
        }

        v86 = v465;
        OUTLINED_FUNCTION_424();
LABEL_189:
        v248 = *(v400 + 1024);
        if (v248)
        {
          while (*(v248 + 32) != cf)
          {
            v248 = *(v248 + 24);
            if (!v248)
            {
              goto LABEL_192;
            }
          }

          if (*(v248 + 168) == 6 && *(v400 + 2816) > *(v400 + 2820) && FigCFEqual())
          {
            OUTLINED_FUNCTION_33();
            if (v85 || v249 == 1936684398)
            {
              if (*(v400 + 2849))
              {
                v251 = 3;
              }

              else
              {
                v251 = 2;
              }

              if (*(v400 + 2848))
              {
                v252 = v251;
              }

              else
              {
                v252 = *(v400 + 2849) != 0;
              }

              v253 = *(v400 + 1024);
              if (v253)
              {
                v254 = 0;
                do
                {
                  if (*(v248 + 80) == *(v253 + 80) && *(v253 + 168) == 1)
                  {
                    v255 = *(v253 + 48);
                    if (v255 == v87 || v255 == 1936684398)
                    {
                      ++v254;
                    }
                  }

                  v253 = *(v253 + 24);
                }

                while (v253);
                v257 = v254 == 0;
              }

              else
              {
                v257 = 1;
              }

              if (v249 == v87 && *(v400 + 2664) == 0.0)
              {
                v87 = v400;
                *(v400 + 2664) = (*(v248 + 360) - *(v400 + 2656)) / 1000000000.0;
                *(v400 + 2672) = (FigGetUpTimeNanoseconds() - *(v248 + 368)) / 1000000000.0;
                *(v87 + 2680) = OUTLINED_FUNCTION_532(*(v248 + 224), v346, v355, v364, tagCollectionsOut, cf, tagCollectiona, v400, v409, v418[0], v418[1], v437, v447, v456, v465, v475, v485, v494, v502, v510, v519, rhs.value, *&rhs.timescale, rhs.epoch, v528, v529.value, *&v529.timescale, v529.epoch, type.value, *&type.timescale, type.epoch, v531.value, *&v531.timescale, v531.epoch, v532, v533[0], v533[1], v534, v535, lhs.value, *&lhs.timescale, lhs.epoch, v537, *v538, *&v538[8], *&v538[16], *&v538[24], *&v538[32], *&v538[40], *&v539, v540, *(&v540 + 1), v541, v542, v543, v544, v545, v546, v547, *(v248 + 208), *(v248 + 216), refcon.epoch);
                lhs = *(v248 + 208);
                v531 = *(v87 + 2752);
                CMTimeSubtract(&refcon, &lhs, &v531);
                *(v87 + 2800) = CMTimeGetSeconds(&refcon);
                OUTLINED_FUNCTION_424();
              }

              if (v257 && (*(v400 + 2844) & 3) == v252)
              {
                fpfsi_RTCReportingReportVariantSwitchComplete(v456, 0);
              }

              OUTLINED_FUNCTION_33();
              v91 = &unk_1EAF16000;
              if (v85 || (OUTLINED_FUNCTION_63(), v85) && *(v400 + 1712))
              {
                if (*(v86 + 872) != 1 && (v258 != v87 || !*(v248 + 200)))
                {
                  memset(&v531, 0, sizeof(v531));
                  fpfs_GetTime(v400, &v531);
                  DescriptionString = FigAlternateCreateDescriptionString(*(v248 + 456));
                  v261 = DescriptionString;
                  if (dword_1EAF169F0)
                  {
                    RenderingTrackofType = OUTLINED_FUNCTION_551(DescriptionString, v260, v228, v229, v230, v231, v232, v233, v346, v355, v364, tagCollectionsOut, cf, tagCollectiona, v400, v409, v418[0], v418[1], v437, v447, v456, v465, v475, v485, v494, v502, v510, epoch, rhs.value, *&rhs.timescale, rhs.epoch, v528, v529.value, *&v529.timescale, v529.epoch, type.value);
                    LODWORD(v87) = type.value;
                    v262 = LOBYTE(rhs.value);
                    if (os_log_type_enabled(RenderingTrackofType, rhs.value))
                    {
                      v263 = v87;
                    }

                    else
                    {
                      v263 = v87 & 0xFFFFFFFE;
                    }

                    if (v263)
                    {
                      if (v475)
                      {
                        v264 = (CMBaseObjectGetDerivedStorage() + 888);
                      }

                      else
                      {
                        v264 = "";
                      }

                      v514 = v264;
                      v265 = v456;
                      if (v456)
                      {
                        v266 = (CMBaseObjectGetDerivedStorage() + 3096);
                      }

                      else
                      {
                        v266 = "";
                      }

                      v267 = v400;
                      v87 = *(v400 + 160);
                      v268 = OUTLINED_FUNCTION_532(*(v400 + 624), v346, v355, v364, tagCollectionsOut, cf, tagCollectiona, v400, v409, v418[0], v418[1], v437, v447, v456, v465, v475, v485, v494, v502, v514, v519, rhs.value, *&rhs.timescale, rhs.epoch, v528, v529.value, *&v529.timescale, v529.epoch, type.value, *&type.timescale, type.epoch, v531.value, *&v531.timescale, v531.epoch, v532, v533[0], v533[1], v534, v535, lhs.value, *&lhs.timescale, lhs.epoch, v537, *v538, *&v538[8], *&v538[16], *&v538[24], *&v538[32], *&v538[40], *&v539, v540, *(&v540 + 1), v541, v542, v543, v544, v545, v546, v547, *(v400 + 608), *(v400 + 616), refcon.epoch);
                      v269 = *(v471 + 108);
                      v270 = *(v267 + 840);
                      OUTLINED_FUNCTION_78(v271, v272, v273, v274, v275, v276, v277, v278, v351, v360, v369, tagCollectionsOutf, cff, tagCollectionf, v405, v414, v423, v432, v442, v452, v461, v471, v481, v490, v498, v506, v515, v523, rhs.value, *&rhs.timescale, rhs.epoch, v528, v529.value, *&v529.timescale, v529.epoch, type.value, *&type.timescale, type.epoch, *&v531.value);
                      v279 = CMTimeGetSeconds(&refcon);
                      OUTLINED_FUNCTION_532(*(v248 + 224), v352, v361, v370, tagCollectionsOutg, cfg, tagCollectiong, v406, v415, v424, v433, v443, v453, v462, v472, v482, v491, v499, v507, v516, v524, rhs.value, *&rhs.timescale, rhs.epoch, v528, v529.value, *&v529.timescale, v529.epoch, type.value, *&type.timescale, type.epoch, v531.value, *&v531.timescale, v531.epoch, v532, v533[0], v533[1], v534, v535, lhs.value, *&lhs.timescale, lhs.epoch, v537, *v538, *&v538[8], *&v538[16], *&v538[24], *&v538[32], *&v538[40], *&v539, v540, *(&v540 + 1), v541, v542, v543, v544, v545, v546, v547, *(v248 + 208), *(v248 + 216), refcon.epoch);
                      LODWORD(lhs.value) = 136318210;
                      OUTLINED_FUNCTION_319("fpfs_StartTrackPlaying");
                      *(v280 + 14) = v475;
                      HIWORD(lhs.epoch) = 2082;
                      v537 = v510;
                      *v538 = v281;
                      *(v280 + 34) = v265;
                      *&v538[10] = 2082;
                      *(v280 + 44) = v266;
                      *&v538[20] = 1024;
                      *(v280 + 54) = v87;
                      *&v538[26] = v281;
                      *(v280 + 60) = v268;
                      *&v538[36] = v281;
                      *(v280 + 70) = v269;
                      *&v538[46] = v281;
                      v539 = v270;
                      LOWORD(v540) = v281;
                      *(v280 + 90) = v279;
                      WORD5(v540) = 1024;
                      HIDWORD(v540) = cf;
                      LOWORD(v541) = v281;
                      *(v280 + 106) = v282;
                      WORD1(v542) = 2114;
                      *(v280 + 116) = v261;
                      OUTLINED_FUNCTION_49();
                      OUTLINED_FUNCTION_23();
                      _os_log_send_and_compose_impl(v283, v284, v285, v286, v287, v288, v262, v289);
                      LODWORD(v87) = type.value;
                      v91 = &unk_1EAF16000;
                    }

                    OUTLINED_FUNCTION_7();
                    fig_log_call_emit_and_clean_up_after_send_and_compose();
                    epoch = v519;
                    OUTLINED_FUNCTION_424();
                  }

                  if (v261)
                  {
                    CFRelease(v261);
                  }
                }
              }
            }
          }

          if (dword_1EAF169F0)
          {
            OUTLINED_FUNCTION_655();
            v297 = OUTLINED_FUNCTION_639(v91[317], v290, v291, v292, v293, v294, v295, v296, v346, v355, v364, tagCollectionsOut, cf, tagCollectiona, v400, v409, v418[0], v418[1], v437, v447, v456, v465, v475, v485, v494, v502, v510, v519, rhs.value, *&rhs.timescale, rhs.epoch, v528, v529.value, *&v529.timescale, v529.epoch, type.value, *&type.timescale, type.epoch, v531.value);
            LODWORD(RenderingTrackofType) = v531.value;
            v298 = LOBYTE(type.value);
            os_log_type_enabled(v297, type.value);
            OUTLINED_FUNCTION_189();
            if (v85)
            {
              LODWORD(v87) = v299;
            }

            else
            {
              LODWORD(v87) = RenderingTrackofType;
            }

            if (v87)
            {
              v300 = v456;
              if (v456)
              {
                v301 = (CMBaseObjectGetDerivedStorage() + 3096);
              }

              else
              {
                v301 = "";
              }

              refcon.value = v546;
              refcon.timescale = v547;
              refcon.flags = v502;
              refcon.epoch = epoch;
              v302 = CMTimeGetSeconds(&refcon);
              v303 = OUTLINED_FUNCTION_532(v534, v346, v355, v364, tagCollectionsOut, cf, tagCollectiona, v400, v409, v418[0], v418[1], v437, v447, v456, v465, v475, v485, v494, v502, v510, v519, rhs.value, *&rhs.timescale, rhs.epoch, v528, v529.value, *&v529.timescale, v529.epoch, type.value, *&type.timescale, type.epoch, v531.value, *&v531.timescale, v531.epoch, v532, v533[0], v533[1], v534, v535, lhs.value, *&lhs.timescale, lhs.epoch, v537, *v538, *&v538[8], *&v538[16], *&v538[24], *&v538[32], *&v538[40], *&v539, v540, *(&v540 + 1), v541, v542, v543, v544, v545, v546, v547, v533[0], v533[1], refcon.epoch);
              refcon.timescale = v545;
              refcon.flags = HIDWORD(v416);
              OUTLINED_FUNCTION_532(tagCollectionh, v353, v362, v371, tagCollectionsOuth, cfh, tagCollectionh, v407, v416, v425, v434, v444, v454, v463, v473, v483, v492, v500, v508, v517, v525, rhs.value, *&rhs.timescale, rhs.epoch, v528, v529.value, *&v529.timescale, v529.epoch, type.value, *&type.timescale, type.epoch, v531.value, *&v531.timescale, v531.epoch, v532, v533[0], v533[1], v534, v535, lhs.value, *&lhs.timescale, lhs.epoch, v537, *v538, *&v538[8], *&v538[16], *&v538[24], *&v538[32], *&v538[40], *&v539, v540, *(&v540 + 1), v541, v542, v543, v544, v545, v546, v547, v544, *&refcon.timescale, refcon.epoch);
              LODWORD(lhs.value) = 136316930;
              OUTLINED_FUNCTION_321();
              *(v304 + 14) = v300;
              OUTLINED_FUNCTION_511();
              v537 = v301;
              *v538 = 1024;
              *(v305 + 34) = cf;
              *&v538[6] = v306;
              *&v538[8] = v302;
              *&v538[16] = v306;
              *(v305 + 50) = v303;
              *&v538[26] = v306;
              *(v305 + 60) = v307;
              *&v538[36] = 1024;
              *(v305 + 70) = v308;
              OUTLINED_FUNCTION_49();
              OUTLINED_FUNCTION_65();
              _os_log_send_and_compose_impl(v309, v310, v311, v312, v313, v314, v298, v315);
              LODWORD(RenderingTrackofType) = v531.value;
            }

            OUTLINED_FUNCTION_7();
            OUTLINED_FUNCTION_524(v316, v317, v318, v319, v320);
            OUTLINED_FUNCTION_424();
          }

          if (*(v248 + 48) == v87)
          {
            if (!fpfsi_copyTrackFigTags(v248, &v531, v228, v229, v230, v231, v232, v233, v346, v355, v364, SBYTE2(v364), BYTE3(v364), SHIDWORD(v364), tagCollectionsOut, cf, tagCollectiona, v400, SHIDWORD(v400), v409, SWORD2(v409), v418[0], v418[1], v437, v447, v456, SHIDWORD(v456), v465, SHIDWORD(v465), v475, v485, v494, v502, v510, v519, rhs.value, *&rhs.timescale, rhs.epoch, v528, v529.value, *&v529.timescale, v529.epoch, type.value, *&type.timescale, type.epoch, 0, *&v531.timescale, v531.epoch, v532, v533[0], v533[1], v534, v535, lhs.value, *&lhs.timescale, lhs.epoch, v537, *v538, *&v538[8]))
            {
              VideoLayoutLoggingStringFromCollection = FigAlternateCreateVideoLayoutLoggingStringFromCollection(v531.value);
              v332 = VideoLayoutLoggingStringFromCollection;
              if (dword_1EAF169F0)
              {
                v333 = OUTLINED_FUNCTION_551(VideoLayoutLoggingStringFromCollection, v325, v326, v327, v328, v329, v330, v331, v354, v363, v372, tagCollectionsOuta, cfa, tagCollectiona, v408, v409, v426, v435, v445, v455, v464, v474, v484, v493, v501, v509, v518, v526, rhs.value, *&rhs.timescale, rhs.epoch, v528, v529.value, *&v529.timescale, v529.epoch, type.value);
                os_log_type_enabled(v333, rhs.value);
                OUTLINED_FUNCTION_40();
                if (RenderingTrackofType)
                {
                  v334 = *(v248 + 16);
                  if (v334)
                  {
                    CMBaseObjectGetDerivedStorage();
                  }

                  LODWORD(lhs.value) = 136316162;
                  *(&lhs.value + 4) = "fpfsi_logFigTagDescription";
                  LOWORD(lhs.flags) = 2048;
                  *(&lhs.flags + 2) = v334;
                  OUTLINED_FUNCTION_511();
                  v537 = v335;
                  *v538 = 1024;
                  *(v337 + 34) = v336;
                  *&v538[6] = 2114;
                  *&v538[8] = v332;
                  OUTLINED_FUNCTION_49();
                  v338 = OUTLINED_FUNCTION_31();
                  OUTLINED_FUNCTION_456(v338, v339, v340, v341, v342, v343, v344, v345);
                }

                OUTLINED_FUNCTION_1();
                fig_log_call_emit_and_clean_up_after_send_and_compose();
              }

              if (v332)
              {
                CFRelease(v332);
              }
            }

            if (v531.value)
            {
              CFRelease(v531.value);
            }
          }

          *(v248 + 488) = v544;
          *(v248 + 496) = v545;
          *(v248 + 500) = HIDWORD(v409);
          *(v248 + 504) = tagCollectiona;
          if (HIBYTE(v535))
          {
            fpfs_PrerollTrack(v248);
          }

          if (*(v248 + 198) && !*(v248 + 128) && (*(v1 + 12) & 1) == 0)
          {
            OUTLINED_FUNCTION_133();
            fpfs_StopFeedingTrack(v321, v322, v323);
          }
        }

        else
        {
LABEL_192:
          OUTLINED_FUNCTION_120();
          FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
        }

        goto LABEL_68;
      }
    }
  }

  v225 = OUTLINED_FUNCTION_485(0, v93, v94, v95, v96, v97, v98, v99, v346, v355, v364, tagCollectionsOut, cf, tagCollection, v400, v409, v417, v427, v436, v446, v456, v465, v475, v485);
  *(v6 + 224) = *(v226 + 16);
  *(v6 + 208) = v225;
  fpfs_AccumulateTrackDurationToBufferedAirPlayRenderedSampleRange(v6);
  HIDWORD(v409) = v502;
  tagCollectiona = epoch;
LABEL_170:
  if (!*(v6 + 198))
  {
    if (*(v6 + 48) == v87)
    {
      v227 = 7;
    }

    else
    {
      v227 = 4;
    }

    fpfs_ChangeTrackState(v6, v227);
    goto LABEL_189;
  }

  fpfs_DeleteTrack(v456, v6);
  OUTLINED_FUNCTION_120();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
LABEL_68:
  OUTLINED_FUNCTION_181();
}

void fpfs_StepIFrame()
{
  OUTLINED_FUNCTION_182();
  v4 = v3;
  OUTLINED_FUNCTION_699();
  v530 = *MEMORY[0x1E69E9840];
  v6 = *(v5 + 16);
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  OUTLINED_FUNCTION_173(DerivedStorage);
  v8 = CMBaseObjectGetDerivedStorage();
  v479 = 0;
  v488 = 0;
  v496 = 0;
  v9 = OUTLINED_FUNCTION_410();
  fpfs_GetNextTimeToPlay(v9, v10, v11);
  v451 = 0;
  v461 = 0;
  v470 = 0;
  *(v1 + 1540) = 1;
  Current = CFAbsoluteTimeGetCurrent();
  v13 = *(v1 + 190);
  v14 = *v2;
  *(v0 + 248) = v2[2];
  v407 = v0;
  *(v0 + 232) = v14;
  if (*(v8 + 80) != v6)
  {
    goto LABEL_108;
  }

  v15 = Current - v13;
  v16 = MEMORY[0x1E6960CC0];
  v417 = v4;
  if ((*(v1 + 1508) & 1) == 0)
  {
    v17 = 0;
    goto LABEL_22;
  }

  if (*(v1 + 274) == 0.0)
  {
    number[0].value = 0;
    valuePtr.value = 0x4020000000000000;
    AllocatorForMedia = FigGetAllocatorForMedia();
    FigBytePumpGetFigBaseObject();
    v20 = v19;
    v21 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v21)
    {
      v17 = v21(v20, 0x1F0B1F378, AllocatorForMedia, number);
      v1[274] = 0x4020000000000000;
      v22 = 8.0;
      value = number[0].value;
      if (!v17)
      {
        CFNumberGetValue(number[0].value, kCFNumberDoubleType, &valuePtr);
        v22 = *(v1 + 274);
        value = number[0].value;
      }

      if (v22 >= *&valuePtr.value)
      {
        v22 = *&valuePtr.value;
      }

      *(v1 + 274) = v22;
      if (value)
      {
        CFRelease(value);
      }
    }

    else
    {
      v24 = *&valuePtr.value;
      if (*&valuePtr.value > 8.0)
      {
        v24 = 8.0;
      }

      *(v1 + 274) = v24;
      v17 = -12782;
    }
  }

  else
  {
    v17 = 0;
  }

  OUTLINED_FUNCTION_74();
  v33 = OUTLINED_FUNCTION_600(v25, v26, v27, v28, v29, v30, v31, v32, v275, v285, v295, v305, v316, v326, v336, cf, v356, v367, ValueAtIndex, v387, v397, v407, v417, v431, v441, 0, 0, 0, 0, 0, 0, v505, time2.value, *&time2.timescale, time2.epoch, v515, rhs.value, *&rhs.timescale, rhs.epoch, v517.value, *&v517.timescale, v517.epoch, v1[187], v1[188], v1[189], v519, *v520, *&v520[8], *&v520[16], *&v520[24], *&v521, *v522, *&v522[8], *&v522[16], *&v522[24], *&v523, number[0].value);
  v36 = CMTimeSubtract(v35, v33, v34);
  number[0] = v452;
  v44 = OUTLINED_FUNCTION_600(v36, v37, v38, v39, v40, v41, v42, v43, v276, v286, v296, v306, v317, v327, v337, cfc, v357, v368, v378, v388, v398, v408, v418, v432, v442, v452.value, *&v452.timescale, v452.epoch, v480, v489, v497, v506, time2.value, *&time2.timescale, time2.epoch, v515, rhs.value, *&rhs.timescale, rhs.epoch, v517.value, *&v517.timescale, v517.epoch, *v16, v16[1], v16[2], v519, *v520, *&v520[8], *&v520[16], *&v520[24], *&v521, *v522, *&v522[8], *&v522[16], *&v522[24], *&v523, v452.value);
  if (CMTimeCompare(v44, v45))
  {
    v46 = *(v8 + 108);
    v47 = v46 / OUTLINED_FUNCTION_528(v470, v275, v285, v295, v305, v316, v326, v336, cf, v356, v367, ValueAtIndex, v387, v397, v407, v417, v431, v441, v451, v461, v470, v479, v488, v496, v505, time2.value, *&time2.timescale, time2.epoch, v515, rhs.value, *&rhs.timescale, rhs.epoch, v517.value, *&v517.timescale, v517.epoch, valuePtr.value, *&valuePtr.timescale, valuePtr.epoch, v519, *v520, *&v520[8], *&v520[16], *&v520[24], *&v521, *v522, *&v522[8], *&v522[16], *&v522[24], *&v523, v451, v461, number[0].epoch);
    ++v1[272];
    *(v1 + 273) = v47 + *(v1 + 273);
    v48 = *(v1 + 274);
    if (v47 >= v48 * 0.33)
    {
      if (v47 >= v48 * 0.66)
      {
        goto LABEL_22;
      }

      v49 = 276;
    }

    else
    {
      v49 = 275;
    }

    ++v1[v49];
  }

LABEL_22:
  v50 = *(v1 + 377);
  v51 = &unk_1EAF16000;
  LODWORD(v52) = -353280000;
  if (v15 <= 0.0)
  {
    if ((v50 & 1) == 0)
    {
      goto LABEL_60;
    }
  }

  else
  {
    if ((v50 & 1) == 0)
    {
      goto LABEL_60;
    }

    v53 = (v15 + (*(v1 + 384) + *(v1 + 384))) / 3.0;
    *(v1 + 384) = v53;
  }

  v54 = CMBaseObjectGetDerivedStorage();
  OUTLINED_FUNCTION_724(v54);
  v397 = CMBaseObjectGetDerivedStorage();
  memset(&v517, 0, sizeof(v517));
  fpfs_CurrentSubStreamBufferedDuration(LOBYTE(STACK[0x640]), &v517);
  v55 = STACK[0x880];
  Count = CFArrayGetCount(STACK[0x880]);
  v57 = Count;
  v58 = Count - 1;
  if (Count < 1)
  {
    if (!Count)
    {
LABEL_34:
      v52 = &unk_1EAF16000;
      OUTLINED_FUNCTION_120();
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v275, v285, v295);
      v16 = MEMORY[0x1E6960CC0];
LABEL_59:
      v51 = &unk_1EAF16000;
      goto LABEL_60;
    }

    v59 = 0;
  }

  else
  {
    v59 = 0;
    while (CFArrayGetValueAtIndex(v55, v59) != STACK[0x890])
    {
      if (v57 == ++v59)
      {
        goto LABEL_34;
      }
    }

    if (v57 == v59)
    {
      goto LABEL_34;
    }

    if (v59)
    {
      if (*&STACK[0x588] > 0.0 && 1.0 / *&STACK[0x588] < *&STACK[0x800] && *(v397 + 108) != 0.0)
      {
        OUTLINED_FUNCTION_528(v517.epoch, v275, v285, v295, v305, v316, v326, v336, cf, v356, v367, ValueAtIndex, v387, v397, v407, v417, v431, v441, v451, v461, v470, v479, v488, v496, v505, time2.value, *&time2.timescale, time2.epoch, v515, rhs.value, *&rhs.timescale, rhs.epoch, v517.value, *&v517.timescale, v517.epoch, valuePtr.value, *&valuePtr.timescale, valuePtr.epoch, v519, *v520, *&v520[8], *&v520[16], *&v520[24], *&v521, *v522, *&v522[8], *&v522[16], *&v522[24], *&v523, v517.value, *&v517.timescale, number[0].epoch);
        OUTLINED_FUNCTION_573();
        if (v60 / v61 < 1.0)
        {
          v62 = v59;
          do
          {
            v63 = v62-- < 1;
          }

          while (!v63 && 1.0 / (*&STACK[0x588] + 2.0) < fpfs_ProjectedDeliveryTime(&v525, v62));
          v64 = v62 & ~(v62 >> 63);
          v65 = OUTLINED_FUNCTION_783();
          ValueAtIndex = CFArrayGetValueAtIndex(v65, v66);
          if (ValueAtIndex)
          {
            v358 = v64;
            goto LABEL_50;
          }
        }
      }
    }
  }

  if (v59 >= v58 || *&STACK[0x800] > 0.111111111 || fpfs_ProjectedDeliveryTime(&v525, v59 + 1) > 0.1 || (ValueAtIndex = CFArrayGetValueAtIndex(v55, v59 + 1)) == 0)
  {
    v16 = MEMORY[0x1E6960CC0];
    v52 = &unk_1EAF16000;
    goto LABEL_59;
  }

  v358 = v59 + 1;
LABEL_50:
  v52 = &unk_1EAF16000;
  fpfs_GetNextTimeToPlay(&v525, 0, number);
  v75 = OUTLINED_FUNCTION_600(v67, v68, v69, v70, v71, v72, v73, v74, v275, v285, v295, v305, v316, v326, v336, cf, v358, v367, ValueAtIndex, v387, v397, v407, v417, v431, v441, v451, v461, v470, v479, v488, v496, v505, time2.value, *&time2.timescale, time2.epoch, v515, 0, 0, 0, v517.value, *&v517.timescale, v517.epoch, STACK[0x688], STACK[0x690], STACK[0x698], v519, *v520, *&v520[8], *&v520[16], *&v520[24], *&v521, *v522, *&v522[8], *&v522[16], *&v522[24], *&v523, number[0].value);
  CMTimeAdd(v77, v75, v76);
  memset(&time2, 0, sizeof(time2));
  CMTimeMakeWithSeconds(&time2, 0.142857143, 1000);
  *&v525.value = *&time2.value;
  v526 = *MEMORY[0x1E6960C70];
  v78 = *(MEMORY[0x1E6960C70] + 16);
  v525.epoch = time2.epoch;
  v527 = v78;
  v528 = v526;
  v529 = v78;
  *&STACK[0x7F0] = CFAbsoluteTimeGetCurrent();
  number[0] = time2;
  OUTLINED_FUNCTION_185();
  v87 = fpfs_SetAlternateWithContext(v79, v80, v81, v82, v83, v84, v85, v86, 0);
  v51 = &unk_1EAF16000;
  if (!v87 && dword_1EAF169F0)
  {
    HIDWORD(v367) = 0;
    cf = FigCFCopyCompactDescription();
    DescriptionString = FigAlternateCreateDescriptionString(ValueAtIndex);
    if (dword_1EAF169F0)
    {
      OUTLINED_FUNCTION_595();
      ValueAtIndex = OUTLINED_FUNCTION_497(qword_1EAF169E8, v89, v90, v91, v92, v93, v94, v95, v275, v285, v295, v305, v316, v326, v336, cf, v356, v367, ValueAtIndex, v387, v397, v407, v417, v431, v441, v451, v461, v470, v479, v488, v496, v505, SBYTE2(v505), SBYTE3(v505), SBYTE4(v505));
      HIDWORD(v336) = BYTE3(v505);
      os_log_type_enabled(ValueAtIndex, BYTE3(v505));
      OUTLINED_FUNCTION_125();
      if (!v97)
      {
        v96 = HIDWORD(v505);
      }

      if (v96)
      {
        HIDWORD(v316) = v96;
        v98 = v525.value;
        if (v525.value)
        {
          v99 = (CMBaseObjectGetDerivedStorage() + 888);
        }

        else
        {
          v99 = "";
        }

        v313 = v99;
        v224 = v15;
        if (v6)
        {
          v225 = (CMBaseObjectGetDerivedStorage() + 3096);
        }

        else
        {
          v225 = "";
        }

        if (v356 >= v59)
        {
          v226 = "up";
        }

        else
        {
          v226 = "down";
        }

        v227.n128_f64[0] = OUTLINED_FUNCTION_528(rhs.epoch, v275, v285, v295, v313, v316, DescriptionString, v336, cf, v356, v367, ValueAtIndex, v387, v397, v407, v417, v431, v441, v451, v461, v470, v479, v488, v496, v505, time2.value, *&time2.timescale, time2.epoch, v515, rhs.value, *&rhs.timescale, rhs.epoch, v517.value, *&v517.timescale, v517.epoch, valuePtr.value, *&valuePtr.timescale, valuePtr.epoch, v519, *v520, *&v520[8], *&v520[16], *&v520[24], *&v521, *v522, *&v522[8], *&v522[16], *&v522[24], *&v523, rhs.value, *&rhs.timescale, number[0].epoch);
        v228 = v227.n128_u64[0];
        v227.n128_u32[0] = STACK[0x800];
        v229 = *&STACK[0x800];
        OUTLINED_FUNCTION_525(v230, v231, v232, v233, v234, v235, v236, v237, v227, v283, v293, v303, v314, v324, v334, v344, cfh, v365, v375, v385, v395, v405, v415, v428, v439, v449, v459, v468, v477, v486, v494, v503, v512, time2.value, *&time2.timescale, time2.epoch, v515, rhs.value, *&rhs.timescale, rhs.epoch, v238);
        OUTLINED_FUNCTION_528(v239, v284, v294, v304, v315, v325, v335, v345, cfi, v366, v376, v386, v396, v406, v416, v429, v440, v450, v460, v469, v478, v487, v495, v504, v513, time2.value, *&time2.timescale, time2.epoch, v515, rhs.value, *&rhs.timescale, rhs.epoch, v517.value, *&v517.timescale, v517.epoch, valuePtr.value, *&valuePtr.timescale, valuePtr.epoch, v519, *v520, *&v520[8], *&v520[16], *&v520[24], *&v521, *v522, *&v522[8], *&v522[16], *&v522[24], *&v523, number[0].value, *&number[0].timescale, number[0].epoch);
        LODWORD(valuePtr.value) = 136317698;
        OUTLINED_FUNCTION_573();
        *(&valuePtr.value + 4) = "fpfs_EnsureCorrectIFrameAlternate";
        OUTLINED_FUNCTION_750();
        *(&valuePtr.flags + 2) = v98;
        HIWORD(valuePtr.epoch) = 2082;
        v519 = v305;
        *v520 = v240;
        *&v520[2] = v6;
        *&v520[10] = 2082;
        *&v520[12] = v225;
        *&v520[20] = 2082;
        *&v520[22] = v226;
        *&v520[30] = 2114;
        v521 = *&v326;
        *v522 = v240;
        *&v522[2] = v228;
        *&v522[10] = v240;
        *&v522[12] = v224;
        *&v522[20] = v240;
        *&v522[22] = v229;
        DescriptionString = v326;
        *&v522[30] = v240;
        v523 = v241 / v242;
        LODWORD(v285) = 112;
        OUTLINED_FUNCTION_654();
        OUTLINED_FUNCTION_108();
        _os_log_send_and_compose_impl(v243, v244, v245, v246, v247, ValueAtIndex, HIDWORD(v336), v248);
        v52 = &unk_1EAF16000;
      }

      OUTLINED_FUNCTION_2();
      fig_log_call_emit_and_clean_up_after_send_and_compose();
      v51 = &unk_1EAF16000;
    }

    if (cf)
    {
      CFRelease(cf);
    }

    v87 = HIDWORD(v367);
    if (DescriptionString)
    {
      CFRelease(DescriptionString);
      v87 = HIDWORD(v367);
    }
  }

  v16 = MEMORY[0x1E6960CC0];
  if (*(v397 + 52) || (v87 != -12644 ? (v249 = v87) : (v249 = 0), *(v397 + 80) != v6))
  {
    OUTLINED_FUNCTION_120();
    v256 = v255;
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v275, v285, v295);
    v87 = v256;
  }

  if (v87 != -12644 && !v249)
  {
    OUTLINED_FUNCTION_296();
    fpfs_StopFeedingTrack(v250, v251, v252);
    ++v1[271];
  }

LABEL_60:
  OUTLINED_FUNCTION_498();
  if (!v97)
  {
    goto LABEL_79;
  }

  v108 = OUTLINED_FUNCTION_685();
  if (!v97)
  {
    OUTLINED_FUNCTION_74();
    v119 = OUTLINED_FUNCTION_747();
    v100 = fpfsi_atOrAfterTimeToPausePlayback(v119);
    if (!v100)
    {
      v204 = OUTLINED_FUNCTION_410();
      fpfs_GetNextTimeToPlay(v204, v205, v206);
      v207 = OUTLINED_FUNCTION_747();
      v100 = fpfsi_atOrAfterTimeToPausePlayback(v207);
      if (!v100)
      {
        OUTLINED_FUNCTION_74();
        v208 = fpfs_SetTime(v6, number);
        if (v51[636])
        {
          LODWORD(v525.value) = 0;
          v216 = OUTLINED_FUNCTION_816(v208, v209, v210, v211, v212, v213, v214, v215, v275, v285, v295, v305, v316, v326, v336, cf, v356, v367, ValueAtIndex, v8, v397, v407, v417, v431, v441, v451, v461, v470, v479, v488, v496, v505, time2.value, *&time2.timescale, time2.epoch, v515, rhs.value, *&rhs.timescale, rhs.epoch, 0);
          OUTLINED_FUNCTION_833(v216, v217, v218, v219, v220, v221, v222, v223, v282, v292, v302, v312, v323, v333, v343, cfg, v364, v374, v384, v394, v404, v414, v427, v438, v448, v458, v467, v476, v485, v493, v502, v511, time2.value, *&time2.timescale, time2.epoch, v515, rhs.value, *&rhs.timescale, rhs.epoch, v517.value);
          OUTLINED_FUNCTION_70();
          if (&v525)
          {
            v253 = *v1;
            if (*v1)
            {
              v254 = (CMBaseObjectGetDerivedStorage() + 888);
            }

            else
            {
              v254 = "";
            }

            v430 = v254;
            if (v6)
            {
              v257 = (CMBaseObjectGetDerivedStorage() + 3096);
            }

            else
            {
              v257 = "";
            }

            OUTLINED_FUNCTION_528(v2[2], v275, v285, v295, v305, v316, v326, v336, cf, v356, v367, ValueAtIndex, v387, v257, v407, v430, v431, v441, v451, v461, v470, v479, v488, v496, v505, time2.value, *&time2.timescale, time2.epoch, v515, rhs.value, *&rhs.timescale, rhs.epoch, v517.value, *&v517.timescale, v517.epoch, valuePtr.value, *&valuePtr.timescale, valuePtr.epoch, v519, *v520, *&v520[8], *&v520[16], *&v520[24], *&v521, *v522, *&v522[8], *&v522[16], *&v522[24], *&v523, *v2, v2[1], number[0].epoch);
            LODWORD(valuePtr.value) = 136316418;
            *(&valuePtr.value + 4) = "fpfs_StepIFrame";
            OUTLINED_FUNCTION_750();
            *(&valuePtr.flags + 2) = v253;
            OUTLINED_FUNCTION_598();
            *&v520[2] = v6;
            *&v520[10] = v258;
            *&v520[12] = v397;
            *&v520[20] = v259;
            *&v520[22] = v260;
            OUTLINED_FUNCTION_127();
            OUTLINED_FUNCTION_654();
            OUTLINED_FUNCTION_35();
            OUTLINED_FUNCTION_307();
            _os_log_send_and_compose_impl(v261, v262, v263, v264, v265, v266, v267, v268);
          }

          OUTLINED_FUNCTION_7();
          OUTLINED_FUNCTION_454(v269, v270, v271, v272, v273);
          v8 = v387;
          v16 = MEMORY[0x1E6960CC0];
          v51 = &unk_1EAF16000;
        }

        v274 = *(v8 + 108);
        if (*(v1 + 210) != v274)
        {
          *(v1 + 210) = v274;
          fpfsi_RTCReportingReportRateChange(v274);
        }

        fpfs_SetRateOnTrack();
        if (*(v1 + 270) == 0.0)
        {
          *(v1 + 270) = CFAbsoluteTimeGetCurrent() - *(v1 + 269);
        }

        goto LABEL_79;
      }
    }

    v108 = *(v8 + 108);
  }

  if (v108 == 0.0)
  {
    if (v51[636])
    {
      LODWORD(v525.value) = 0;
      v109 = OUTLINED_FUNCTION_816(v100, v101, v102, v103, v104, v105, v106, v107, v275, v285, v295, v305, v316, v326, v336, cf, v356, v367, ValueAtIndex, v387, v397, v407, v417, v431, v441, v451, v461, v470, v479, v488, v496, v505, time2.value, *&time2.timescale, time2.epoch, v515, rhs.value, *&rhs.timescale, rhs.epoch, 0);
      OUTLINED_FUNCTION_833(v109, v110, v111, v112, v113, v114, v115, v116, v277, v287, v297, v307, v318, v328, v338, cfd, v359, v369, v379, v389, v399, v409, v419, v433, v443, v453, v462, v471, v481, v490, v498, v507, time2.value, *&time2.timescale, time2.epoch, v515, rhs.value, *&rhs.timescale, rhs.epoch, v517.value);
      OUTLINED_FUNCTION_70();
      if (&v525)
      {
        v117 = *v1;
        if (*v1)
        {
          v118 = (CMBaseObjectGetDerivedStorage() + 888);
        }

        else
        {
          v118 = "";
        }

        v420 = v118;
        if (v6)
        {
          v120 = (CMBaseObjectGetDerivedStorage() + 3096);
        }

        else
        {
          v120 = "";
        }

        OUTLINED_FUNCTION_528(v2[2], v275, v285, v295, v305, v316, v326, v336, cf, v356, v367, ValueAtIndex, v8, v397, v407, v420, v431, v441, v451, v461, v470, v479, v488, v496, v505, time2.value, *&time2.timescale, time2.epoch, v515, rhs.value, *&rhs.timescale, rhs.epoch, v517.value, *&v517.timescale, v517.epoch, valuePtr.value, *&valuePtr.timescale, valuePtr.epoch, v519, *v520, *&v520[8], *&v520[16], *&v520[24], *&v521, *v522, *&v522[8], *&v522[16], *&v522[24], *&v523, *v2, v2[1], number[0].epoch);
        LODWORD(valuePtr.value) = 136316418;
        *(&valuePtr.value + 4) = "fpfs_StepIFrame";
        OUTLINED_FUNCTION_750();
        *(&valuePtr.flags + 2) = v117;
        OUTLINED_FUNCTION_598();
        *&v520[2] = v6;
        *&v520[10] = v121;
        *&v520[12] = v120;
        *&v520[20] = v122;
        *&v520[22] = v123;
        OUTLINED_FUNCTION_127();
        OUTLINED_FUNCTION_654();
        OUTLINED_FUNCTION_35();
        OUTLINED_FUNCTION_307();
        _os_log_send_and_compose_impl(v124, v125, v126, v127, v128, v129, v130, v131);
        v8 = v387;
        v16 = MEMORY[0x1E6960CC0];
      }

      OUTLINED_FUNCTION_279();
      OUTLINED_FUNCTION_7();
      OUTLINED_FUNCTION_454(v132, v133, v134, v135, v136);
      v51 = &unk_1EAF16000;
    }

    OUTLINED_FUNCTION_74();
    fpfs_SetTime(v6, number);
  }

LABEL_79:
  fpfs_endEndedTracks(v1);
  if ((*(v1 + 332) & 1) != 0 && (*(v1 + 393) & 2) == 0)
  {
    OUTLINED_FUNCTION_74();
    v186 = OUTLINED_FUNCTION_747();
    fpfsi_setLastSeekTimeSet(v186, v187);
    if (v17)
    {
      goto LABEL_108;
    }
  }

  else if (v17)
  {
    goto LABEL_108;
  }

  OUTLINED_FUNCTION_685();
  if (v97)
  {
    goto LABEL_108;
  }

  memset(&v525, 0, sizeof(v525));
  fpfs_CurrentSubStreamBufferedDuration(*(v1 + 1088), &v525);
  memset(&v517, 0, sizeof(v517));
  v137 = OUTLINED_FUNCTION_537();
  v138 = CMTimeMakeWithSeconds(&v517, v137 * 10.0, 1);
  *&number[0].timescale = *&v525.timescale;
  number[0].epoch = v525.epoch;
  v146 = OUTLINED_FUNCTION_600(v138, v139, v140, v141, v142, v143, v144, v145, v275, v285, v295, v305, v316, v326, v336, cf, v356, v367, ValueAtIndex, v387, v397, v407, v417, v431, v441, v451, v461, v470, v479, v488, v496, v505, time2.value, *&time2.timescale, time2.epoch, v515, rhs.value, *&rhs.timescale, rhs.epoch, v517.value, *&v517.timescale, v517.epoch, v517.value, *&v517.timescale, v517.epoch, v519, *v520, *&v520[8], *&v520[16], *&v520[24], *&v521, *v522, *&v522[8], *&v522[16], *&v522[24], *&v523, v525.value);
  v148 = CMTimeCompare(v146, v147);
  if ((v148 & 0x80000000) != 0)
  {
    if ((*(v1 + 1412) & 1) == 0 || (number[0] = *v2, v160 = OUTLINED_FUNCTION_600(v148, v149, v150, v151, v152, v153, v154, v155, v278, v288, v298, v308, v319, v329, v339, cfa, v360, v370, v380, v390, v400, v410, v421, v434, v444, v454, v463, v472, v482[0], v482[1], v499, v508, time2.value, *&time2.timescale, time2.epoch, v515, rhs.value, *&rhs.timescale, rhs.epoch, v517.value, *&v517.timescale, v517.epoch, v1[175], v1[176], v1[177], v519, *v520, *&v520[8], *&v520[16], *&v520[24], *&v521, *v522, *&v522[8], *&v522[16], *&v522[24], *&v523, number[0].value), CMTimeCompare(v160, v161) < 0))
    {
      v162 = v8;
      v163 = *(v410 + 32);
      memset(number, 0, 24);
      if (*(v1 + 1196))
      {
        valuePtr = *(v1 + 148);
        rhs = *(v1 + 145);
        CMTimeSubtract(number, &valuePtr, &rhs);
      }

      else
      {
        OUTLINED_FUNCTION_74();
      }

      valuePtr = v525;
      *v422 = *v16;
      *&rhs.value = *v16;
      v164 = v16[2];
      rhs.epoch = v164;
      v165 = CMTimeCompare(&valuePtr, &rhs);
      if (!v165)
      {
        OUTLINED_FUNCTION_692(v165, v166, v167, v168, v169, v170, v171, v172, v173, v278, v288, v298, v308, v319, v329, v339, cfa, v360, v370, v380, v390, v400, v410, v422[0], v422[1], v444, v454, v463, v472, v174);
        rhs = number[0];
        v175 = fpfs_TimeIsAfter(v162, &valuePtr, &rhs);
        if (v175)
        {
          OUTLINED_FUNCTION_692(v175, v176, v177, v178, v179, v180, v181, v182, v183, v279, v289, v299, v309, v320, v330, v340, cfb, v361, v371, v381, v391, v401, v411, v423, v435, v445, v455, v464, v473, v184);
          *&rhs.value = *v424;
          rhs.epoch = v164;
          if (CMTimeCompare(&valuePtr, &rhs) >= 1)
          {
            *&number[0].value = *v482;
            epoch = v499;
LABEL_98:
            number[0].epoch = epoch;
            goto LABEL_110;
          }

          memset(&valuePtr, 0, sizeof(valuePtr));
          CMTimeMake(&valuePtr, fabsf(*(v162 + 108)), 1);
          rhs = valuePtr;
          time2 = number[0];
          if (CMTimeCompare(&rhs, &time2) < 0)
          {
            *&number[0].value = *&valuePtr.value;
            epoch = valuePtr.epoch;
            goto LABEL_98;
          }
        }
      }

LABEL_110:
      valuePtr = number[0];
      rhs = v525;
      fpfs_RequestNextIFrameStepUnlocked(v6, &valuePtr, &rhs);
      for (i = v1[128]; i; i = *(i + 24))
      {
        if (*(i + 32) == v163)
        {
          break;
        }
      }

      goto LABEL_108;
    }
  }

  if (!*(v1 + 1541))
  {
    *(v1 + 1541) = 1;
    if (v51[636])
    {
      LODWORD(rhs.value) = 0;
      LOBYTE(time2.value) = 0;
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      value_low = LOBYTE(time2.value);
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, time2.value);
      OUTLINED_FUNCTION_28();
      if (v52)
      {
        v158 = *v1;
        if (v158)
        {
          v159 = (CMBaseObjectGetDerivedStorage() + 888);
        }

        else
        {
          v159 = "";
        }

        if (v6)
        {
          v188 = (CMBaseObjectGetDerivedStorage() + 3096);
        }

        else
        {
          v188 = "";
        }

        OUTLINED_FUNCTION_528(v525.epoch, v278, v288, v298, v308, v319, v329, v339, cfa, v360, v370, v380, v390, v400, v410, v421, v434, v444, v454, v463, v472, v482[0], v482[1], v499, v508, time2.value, *&time2.timescale, time2.epoch, v515, rhs.value, *&rhs.timescale, rhs.epoch, v517.value, *&v517.timescale, v517.epoch, valuePtr.value, *&valuePtr.timescale, valuePtr.epoch, v519, *v520, *&v520[8], *&v520[16], *&v520[24], *&v521, *v522, *&v522[8], *&v522[16], *&v522[24], *&v523, v525.value, *&v525.timescale, number[0].epoch);
        OUTLINED_FUNCTION_573();
        v191 = v189 / v190;
        v192 = OUTLINED_FUNCTION_528(v500, v280, v290, v300, v310, v321, v331, v341, cfe, v362, v372, v382, v392, v402, v412, v425, v436, v446, v456, v465, v474, v483, v491, v500, v509, time2.value, *&time2.timescale, time2.epoch, v515, rhs.value, *&rhs.timescale, rhs.epoch, v517.value, *&v517.timescale, v517.epoch, valuePtr.value, *&valuePtr.timescale, valuePtr.epoch, v519, *v520, *&v520[8], *&v520[16], *&v520[24], *&v521, *v522, *&v522[8], *&v522[16], *&v522[24], *&v523, v483, v491, number[0].epoch);
        OUTLINED_FUNCTION_528(v413[31], v281, v291, v301, v311, v322, v332, v342, cff, v363, v373, v383, v393, v403, v413, v426, v437, v447, v457, v466, v475, v484, v492, v501, v510, time2.value, *&time2.timescale, time2.epoch, v515, rhs.value, *&rhs.timescale, rhs.epoch, v517.value, *&v517.timescale, v517.epoch, valuePtr.value, *&valuePtr.timescale, valuePtr.epoch, v519, *v520, *&v520[8], *&v520[16], *&v520[24], *&v521, *v522, *&v522[8], *&v522[16], *&v522[24], *&v523, v413[29], v413[30], number[0].epoch);
        LODWORD(valuePtr.value) = 136317186;
        *(&valuePtr.value + 4) = "fpfs_StepIFrame";
        OUTLINED_FUNCTION_750();
        *(&valuePtr.flags + 2) = v158;
        HIWORD(valuePtr.epoch) = 2082;
        v519 = v159;
        *v520 = v193;
        *&v520[2] = v6;
        *&v520[10] = 2082;
        *&v520[12] = v188;
        *&v520[20] = v193;
        *&v520[22] = v191;
        *&v520[30] = v193;
        v521 = v192;
        *v522 = v193;
        *&v522[2] = v194;
        *&v522[10] = v193;
        *&v522[12] = v195;
        OUTLINED_FUNCTION_654();
        OUTLINED_FUNCTION_23();
        _os_log_send_and_compose_impl(v196, v197, v198, v199, v200, v201, value_low, v202);
        OUTLINED_FUNCTION_506();
      }

      OUTLINED_FUNCTION_2();
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }
  }

LABEL_108:
  OUTLINED_FUNCTION_181();
}

uint64_t fpfsi_RTCReportingReportTrialSwitchData(uint64_t a1, int a2)
{
  result = CMBaseObjectGetDerivedStorage();
  v4 = result;
  if (!a2 && *(result + 2656) > 0)
  {
    result = FigGetUpTimeNanoseconds();
    if (*(v4 + 2568))
    {
      VTable = CMBaseObjectGetVTable();
      v6 = *(VTable + 16);
      result = VTable + 16;
      if (*(v6 + 56))
      {
        OUTLINED_FUNCTION_362();
        v7 = OUTLINED_FUNCTION_283();
        result = v8(v7);
      }
    }
  }

  *(v4 + 2656) = 0;
  if (*(v4 + 2568))
  {
    v9 = CMBaseObjectGetVTable();
    v10 = *(v9 + 16);
    result = v9 + 16;
    if (*(v10 + 32))
    {
      v11 = OUTLINED_FUNCTION_283();
      result = v12(v11);
    }
  }

  if (a2)
  {
    if (*(v4 + 2568))
    {
      v13 = CMBaseObjectGetVTable();
      v14 = *(v13 + 16);
      result = v13 + 16;
      if (*(v14 + 32))
      {
        v15 = OUTLINED_FUNCTION_177();

        return v16(v15);
      }
    }
  }

  return result;
}

uint64_t fpfs_CreateAccessLogEntryWithUnlock(uint64_t a1, CFMutableDictionaryRef *a2)
{
  theDict = 0;
  if (!*(CMBaseObjectGetDerivedStorage() + 912))
  {
    return 4294954436;
  }

  v4 = OUTLINED_FUNCTION_413();
  if (fpfs_PlayingVideoOnly(v4))
  {
    result = 0;
    *a2 = 0;
    return result;
  }

  FigGetAllocatorForMedia();
  OUTLINED_FUNCTION_179();
  FigBytePumpGetFigBaseObject();
  v7 = v6;
  if (!*(*(CMBaseObjectGetVTable() + 8) + 48))
  {
    return 4294954514;
  }

  valuePtr = 0;
  *v137 = 0.0;
  v8 = OUTLINED_FUNCTION_188();
  result = v9(v8);
  if (!result)
  {
    v10 = *MEMORY[0x1E695E480];
    v11 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberIntType, (v2 + 1728));
    if (v11)
    {
      v19 = OUTLINED_FUNCTION_397(v11, v12, v13, v14, v15, v16, v17, v18, v126, valuePtr, *v137, theDict);
      CFDictionarySetValue(v19, @"c-variant-rank", v7);
      CFRelease(v7);
      v28 = *(v2 + 1936);
      if (v28 > 0.0)
      {
        AllocatorForMedia = FigGetAllocatorForMedia();
        v30 = CFDateCreate(AllocatorForMedia, v28);
        if (!v30)
        {
          goto LABEL_40;
        }

        v38 = OUTLINED_FUNCTION_397(v30, v31, v32, v33, v34, v35, v36, v37, v127, valuePtr, *v137, theDict);
        CFDictionarySetValue(v38, @"date", v7);
        CFRelease(v7);
      }

      if ((*(v2 + 2648) & 0x8000000000000000) != 0)
      {
        v39 = *(v2 + 1960);
        *v137 = v39;
        if (*(v2 + 1952) != 0.0)
        {
          CFAbsoluteTimeGetCurrent();
          OUTLINED_FUNCTION_573();
          *v137 = v39 + v40 * v41;
        }
      }

      else
      {
        *v137 = 0.0;
      }

      v42 = OUTLINED_FUNCTION_472(v20, v21, v22, v23, v24, v25, v26, v27, v127, valuePtr);
      if (v42)
      {
        v50 = OUTLINED_FUNCTION_397(v42, v43, v44, v45, v46, v47, v48, v49, v128, valuePtr, *v137, theDict);
        CFDictionarySetValue(v50, @"c-duration-watched", v7);
        CFRelease(v7);
        if ((*(v2 + 2648) & 0x8000000000000000) != 0)
        {
          *v137 = *(v2 + 1968);
          if (*(v2 + 1952) != 0.0)
          {
            *v137 = *v137 + CFAbsoluteTimeGetCurrent() - *(v2 + 1952);
          }
        }

        else
        {
          *v137 = 0.0;
        }

        v59 = OUTLINED_FUNCTION_472(v51, v52, v53, v54, v55, v56, v57, v58, v129, valuePtr);
        if (v59)
        {
          v67 = OUTLINED_FUNCTION_397(v59, v60, v61, v62, v63, v64, v65, v66, v130, valuePtr, *v137, theDict);
          CFDictionarySetValue(v67, @"c-wall-clock-duration-watched", v7);
          CFRelease(v7);
          *v137 = *(v2 + 1944);
          v76 = OUTLINED_FUNCTION_472(v68, v69, v70, v71, v72, v73, v74, v75, v131, valuePtr);
          if (v76)
          {
            v84 = OUTLINED_FUNCTION_397(v76, v77, v78, v79, v80, v81, v82, v83, v132, valuePtr, *v137, theDict);
            CFDictionarySetValue(v84, @"c-start-time", v7);
            CFRelease(v7);
            if (!*(v2 + 2097))
            {
LABEL_28:
              valuePtr = 0;
              v103 = CFNumberCreate(v10, kCFNumberCFIndexType, &valuePtr);
              if (v103)
              {
                v111 = OUTLINED_FUNCTION_397(v103, v104, v105, v106, v107, v108, v109, v110, v133, valuePtr, *v137, theDict);
                CFDictionarySetValue(v111, @"c-frames-dropped", v7);
                CFRelease(v7);
                v112 = CFNumberCreate(v10, kCFNumberCFIndexType, (v2 + 2112));
                if (v112)
                {
                  v120 = OUTLINED_FUNCTION_397(v112, v113, v114, v115, v116, v117, v118, v119, v135, valuePtr, *v137, theDict);
                  CFDictionarySetValue(v120, @"c-stalls", v7);
                  CFRelease(v7);
                  if (!*(v2 + 2308))
                  {
LABEL_33:
                    v123 = *(v2 + 2384);
                    if (v123)
                    {
                      CFDictionarySetValue(theDict, @"c-service-identifier", v123);
                    }

                    v124 = *MEMORY[0x1E695E4D0];
                    if (*(v2 + 2312))
                    {
                      v125 = *MEMORY[0x1E695E4D0];
                    }

                    else
                    {
                      v125 = *MEMORY[0x1E695E4C0];
                    }

                    CFDictionarySetValue(theDict, @"c-switch-failure", v125);
                    *(v2 + 2312) = 0;
                    CFDictionarySetValue(theDict, @"c-provisional-entry", v124);
                    result = 0;
                    *a2 = theDict;
                    return result;
                  }

                  v121 = CFNumberCreate(v10, kCFNumberIntType, (v2 + 2308));
                  if (v121)
                  {
                    v122 = v121;
                    CFDictionarySetValue(theDict, @"c-reason", v121);
                    CFRelease(v122);
                    *(v2 + 2308) = 0;
                    goto LABEL_33;
                  }
                }
              }

              goto LABEL_40;
            }

            v93 = *(v2 + 2008);
            if (v93 <= 0.0)
            {
              v93 = *(v2 + 2000);
            }

            *v137 = v93;
            v94 = OUTLINED_FUNCTION_472(v85, v86, v87, v88, v89, v90, v91, v92, v133, valuePtr);
            if (v94)
            {
              v102 = OUTLINED_FUNCTION_397(v94, v95, v96, v97, v98, v99, v100, v101, v134, valuePtr, *v137, theDict);
              CFDictionarySetValue(v102, @"c-startup-time", v7);
              CFRelease(v7);
              goto LABEL_28;
            }
          }
        }
      }
    }

LABEL_40:
    if (theDict)
    {
      CFRelease(theDict);
    }

    return 4294954434;
  }

  return result;
}

void fpfsi_RTCReportingUpdateInitialVariantRank()
{
  OUTLINED_FUNCTION_523();
  if (v1 && *(*(CMBaseObjectGetVTable() + 16) + 56))
  {
    OUTLINED_FUNCTION_235();
    OUTLINED_FUNCTION_333();
    v2();
  }

  if (*(v0 + 2568) && *(*(CMBaseObjectGetVTable() + 16) + 56))
  {
    OUTLINED_FUNCTION_235();
    OUTLINED_FUNCTION_446();

    v3();
  }
}

uint64_t fpfs_ReportVariantSwitchStart(uint64_t a1, const void *a2, int a3, unsigned int a4, unsigned int a5)
{
  v117 = __PAIR64__(a4, a5);
  HIDWORD(v111) = a3;
  v130 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  OUTLINED_FUNCTION_180(DerivedStorage);
  v9 = CMBaseObjectGetDerivedStorage();
  v120 = 0xFFFFFFFF00000000;
  PeakBitRate = FigAlternateGetPeakBitRate(*(v5 + 1680));
  v11 = FigAlternateGetPeakBitRate(a2);
  DescriptionString = FigAlternateCreateDescriptionString(*(v5 + 1680));
  v114 = a2;
  v13 = FigAlternateCreateDescriptionString(a2);
  LODWORD(v9) = *(v9 + 50);
  AllocatorForMedia = FigGetAllocatorForMedia();
  v15 = *v5;
  if (v9)
  {
    if (a1)
    {
      CMBaseObjectGetDerivedStorage();
    }

    OUTLINED_FUNCTION_437();
    if (v11 > PeakBitRate)
    {
      v20 = "up";
    }

    v105 = v13;
    v108 = DescriptionString;
    v99 = v19;
    v102 = v20;
    v96 = v18;
    v21 = CFStringCreateWithFormat(AllocatorForMedia, 0, @"[%p]: <%p> %s: (%d): %s%s switch %s to [%@]\n from [%@]", v15, a1, v16, v17);
  }

  else
  {
    if (a1)
    {
      CMBaseObjectGetDerivedStorage();
    }

    OUTLINED_FUNCTION_437();
    if (v11 > PeakBitRate)
    {
      v26 = "up";
    }

    v105 = DescriptionString;
    v108 = v13;
    v99 = v25;
    v102 = v26;
    v96 = v24;
    v21 = CFStringCreateWithFormat(AllocatorForMedia, 0, @"[%p]: <%p> %s: (%d): %s%s switch %s from [%@] to [%@]", v15, a1, v22, v23);
  }

  v27 = v21;
  v28 = CMBaseObjectGetDerivedStorage();
  if (*(v28 + 872) == 1 || *(v5 + 1712))
  {
    if (!dword_1EAF169F0)
    {
      goto LABEL_21;
    }

    v36 = OUTLINED_FUNCTION_561(v28, v29, v30, v31, v32, v33, v34, v35, v84, v87, v90, v93, v96, v99, v102, v105, v108, v111, a2, v117, v120, v121, v122, v123, v124);
    OUTLINED_FUNCTION_844(v36, v37, v38, v39, v40, v41, v42, v43, v85, v88, v91, v94, v97, v100, v103, v106, v109, v112, v115, v118, v120, v121, v122, v123, v124);
    OUTLINED_FUNCTION_121();
    if (v66)
    {
      v45 = v44;
    }

    else
    {
      v45 = "";
    }

    if (!v45)
    {
      goto LABEL_20;
    }

LABEL_19:
    OUTLINED_FUNCTION_763();
    v126 = "fpfs_ReportVariantSwitchStart";
    v127 = 2114;
    v128 = v27;
    OUTLINED_FUNCTION_66();
    OUTLINED_FUNCTION_108();
    _os_log_send_and_compose_impl(v46, v47, v48, v49, v50, v11, a1, v51);
LABEL_20:
    OUTLINED_FUNCTION_1();
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    goto LABEL_21;
  }

  if (dword_1EAF169F0)
  {
    v72 = OUTLINED_FUNCTION_561(v28, v29, v30, v31, v32, v33, v34, v35, v84, v87, v90, v93, v96, v99, v102, v105, v108, v111, a2, v117, v120, v121, v122, v123, v124);
    OUTLINED_FUNCTION_844(v72, v73, v74, v75, v76, v77, v78, v79, v86, v89, v92, v95, v98, v101, v104, v107, v110, v113, v116, v119, v120, v121, v122, v123, v124);
    OUTLINED_FUNCTION_121();
    if (v66)
    {
      v81 = v80;
    }

    else
    {
      v81 = "";
    }

    if (!v81)
    {
      goto LABEL_20;
    }

    goto LABEL_19;
  }

LABEL_21:
  if (DescriptionString)
  {
    CFRelease(DescriptionString);
  }

  if (v13)
  {
    CFRelease(v13);
  }

  if (v27)
  {
    CFRelease(v27);
  }

  v52 = CMBaseObjectGetDerivedStorage();
  if (v52)
  {
    v53 = v52;
    v54 = *(v52 + 96);
    if (v54)
    {
      v125[0] = 0;
      v129[0] = 0uLL;
      FigAlternatePlaybackBitrateMonitorGetMaxResolutionAndBitrate(v54, v129, (v53 + 2900), v125, *(v53 + 2576), *(v53 + 2584));
      if (*v129 == 0.0 || *(v129 + 1) == 0.0)
      {
LABEL_40:
        if (*(v53 + 2568) && *(*(CMBaseObjectGetVTable() + 16) + 56))
        {
          OUTLINED_FUNCTION_625();
          OUTLINED_FUNCTION_240();
          v60();
        }

        goto LABEL_43;
      }

      *(v53 + 2576) = v129[0];
      if (*(v53 + 2568))
      {
        if (*(*(CMBaseObjectGetVTable() + 16) + 56))
        {
          OUTLINED_FUNCTION_625();
          OUTLINED_FUNCTION_240();
          v55();
        }

        if (*(v53 + 2568))
        {
          if (*(*(CMBaseObjectGetVTable() + 16) + 56))
          {
            v56 = OUTLINED_FUNCTION_625();
            v57(v56);
          }

          if (*(v53 + 2568))
          {
            if (*(*(CMBaseObjectGetVTable() + 16) + 56))
            {
              v58 = OUTLINED_FUNCTION_625();
              v59(v58);
            }

            goto LABEL_40;
          }
        }
      }
    }
  }

LABEL_43:
  v61 = *(v5 + 1680);
  if (v61)
  {
    FigAlternateGetHDCPLevel(v61);
  }

  if (*(v5 + 2568) && *(*(CMBaseObjectGetVTable() + 16) + 56))
  {
    OUTLINED_FUNCTION_606();
    v62();
  }

  fpfs_DetermineRanksOfVariant(v5, v114, &v120 + 1, &v120);
  if (HIDWORD(v117))
  {
    *(v5 + 2656) = FigGetUpTimeNanoseconds();
  }

  else
  {
    v63 = v120;
    *(v5 + 1728) = HIDWORD(v120);
    *(v5 + 1732) = v63;
  }

  if (v117)
  {
    v82 = OUTLINED_FUNCTION_505();
    fpfsi_RTCReportingReportTrialSwitchData(v82, v83);
  }

  result = FigAlternateIsIFrameOnly(v114);
  if (!result)
  {
    v66 = (HIDWORD(v111) & 0xFFFFFFFE) == 2 || HIDWORD(v111) == 16;
    v67 = v66 || (HIDWORD(v111) & 0xFFFFFFF7) == 7;
    if (v67 && HIDWORD(v120) != -1)
    {
      if (!*(v5 + 2656))
      {
        *(v5 + 2656) = FigGetUpTimeNanoseconds();
      }

      if (!HIDWORD(v117))
      {
        ++*(v5 + 2816);
      }

      v69 = v120;
      *(v5 + 2828) = HIDWORD(v120);
      *(v5 + 2856) = v69;
      *(v5 + 2864) = FigAlternateGetVideoQualityIndex(v114, v65);
      v70 = *(v5 + 2696);
      v71 = *(v5 + 2656);
      if (v70)
      {
        if (v71 - v70 <= 0x2540BE3FFLL && *(v5 + 2868) != HIDWORD(v111))
        {
          *(v5 + 2840) = 1;
        }
      }

      else
      {
        *(v5 + 2696) = v71;
      }

      *(v5 + 2868) = HIDWORD(v111);
      result = FigAlternateGetPeakBitRate(*(v5 + 1680));
      *(v5 + 2808) = result;
    }
  }

  return result;
}

void fpfsi_metricEventPublishVariantChangeOrVariantChangeStartEvent(uint64_t a1, const void *a2, const void *a3, char a4, int a5)
{
  v34 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v27 = 0;
  cf = 0;
  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v29 = 0u;
  fpfsi_copyPlayableTimeL3(a1, &v27);
  v7 = *(DerivedStorage + 1768);
  if (v7)
  {
    v8 = 0;
    if (a5)
    {
      v9 = a2;
    }

    else
    {
      v9 = a3;
    }

    do
    {
      if (CFArrayGetCount(v7) <= v8)
      {
        break;
      }

      ValueAtIndex = CFArrayGetValueAtIndex(*(DerivedStorage + 1768), v8);
      CFDictionaryGetValue(ValueAtIndex, @"MediaSelectionGroupMediaType");
      if (!FigCFStringGetOSTypeValue())
      {
        OUTLINED_FUNCTION_429();
        FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v20, v21, v22);
      }

      v11 = 0;
      while (*&kCommonTypes[4 * v11])
      {
        if (++v11 == 5)
        {
          v12 = 5;
          goto LABEL_13;
        }
      }

      v12 = v11;
LABEL_13:
      if (v12 <= 3 && v12 != 2)
      {
        PersistentIDForMediaTypeInMediaSelectionArray = FigStreamAlternateGetPersistentIDForMediaTypeInMediaSelectionArray(*(DerivedStorage + 1768), 0, *(DerivedStorage + 1672));
        FigAlternateGetRenditionInfoForMediaType(v9, 0, PersistentIDForMediaTypeInMediaSelectionArray, PersistentIDForMediaTypeInMediaSelectionArray, PersistentIDForMediaTypeInMediaSelectionArray, 1, &v29 + 2 * v12, ((&v29 + v12) | 8), 0);
      }

      ++v8;
      v7 = *(DerivedStorage + 1768);
    }

    while (v7);
  }

  AllocatorForMedia = FigGetAllocatorForMedia();
  v17 = v27;
  if (a5)
  {
    if (FigMetricItemVariantChangeEventCreate(AllocatorForMedia, a2, a3, v29, *(&v29 + 1), v30, *(&v30 + 1), v16, v32, *(&v32 + 1), v27, a4, &cf))
    {
      goto LABEL_25;
    }
  }

  else if (FigMetricItemVariantChangeStartEventCreate(AllocatorForMedia, a2, a3, v29, *(&v29 + 1), v30, *(&v30 + 1), v16, v32, *(&v32 + 1), v27, &cf))
  {
    goto LABEL_25;
  }

  if (*(*(CMBaseObjectGetVTable() + 16) + 40))
  {
    v18 = OUTLINED_FUNCTION_265();
    v19(v18);
  }

LABEL_25:
  if (v17)
  {
    CFRelease(v17);
  }

  if (cf)
  {
    CFRelease(cf);
  }
}

void fpfsi_RTCReportingUpdateCurrentAlternateInfo(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigAlternateGetVideoRangeString(*(DerivedStorage + 1680));
  fpfsi_RTCReportingUpdateVariantRank(DerivedStorage, *(DerivedStorage + 1728), *(DerivedStorage + 1732));
  v3 = *(DerivedStorage + 1680);
  if (!v3)
  {
    return;
  }

  FigAlternateIsAudioOnly(v3);
  Resolution = FigAlternateGetResolution(*(DerivedStorage + 1680));
  v6 = v5;
  FigAlternateGetMaxAudioChannelCount(*(DerivedStorage + 1680));
  fpfsi_GetCurrentAudioPersistentIDFromMediaOption(a1);
  OUTLINED_FUNCTION_496();
  FigAlternateGetAudioChannelCounts(v7, v8, v9, v10);
  if (*(DerivedStorage + 2568))
  {
    if (*(*(CMBaseObjectGetVTable() + 16) + 56))
    {
      OUTLINED_FUNCTION_242();
      v11();
    }

    if (*(DerivedStorage + 2568) && *(*(CMBaseObjectGetVTable() + 16) + 56))
    {
      OUTLINED_FUNCTION_242();
      v12();
    }
  }

  if (v6 > 0.0 && Resolution > 0.0)
  {
    if (*(DerivedStorage + 2568))
    {
      if (*(*(CMBaseObjectGetVTable() + 16) + 56))
      {
        OUTLINED_FUNCTION_138();
        v13();
      }

      if (!*(DerivedStorage + 2568))
      {
        goto LABEL_23;
      }

      if (*(*(CMBaseObjectGetVTable() + 16) + 56))
      {
        OUTLINED_FUNCTION_211();
        v14();
      }
    }

    if (*(DerivedStorage + 2568))
    {
      if (*(*(CMBaseObjectGetVTable() + 16) + 56))
      {
        OUTLINED_FUNCTION_138();
        v15();
      }

      if (*(DerivedStorage + 2568) && *(*(CMBaseObjectGetVTable() + 16) + 56))
      {
        OUTLINED_FUNCTION_211();
        v16();
      }
    }
  }

LABEL_23:
  PeakBitRate = FigAlternateGetPeakBitRate(*(DerivedStorage + 1680));
  valuePtr = FigAlternateGetAverageBitRate(*(DerivedStorage + 1680));
  CodecString = FigAlternateGetCodecString(*(DerivedStorage + 1680));
  VideoLayoutString = FigAlternateGetVideoLayoutString(*(DerivedStorage + 1680));
  FigAlternateGetVideoContentTypeString(*(DerivedStorage + 1680));
  FigAlternateGetVideoQualityIndex(*(DerivedStorage + 1680), v19);
  if (*(DerivedStorage + 2568) && *(*(CMBaseObjectGetVTable() + 16) + 56))
  {
    OUTLINED_FUNCTION_242();
    v20();
  }

  v21 = *MEMORY[0x1E695E480];
  v22 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberIntType, &valuePtr);
  if (*(DerivedStorage + 2568) && *(*(CMBaseObjectGetVTable() + 16) + 48))
  {
    OUTLINED_FUNCTION_211();
    v23();
  }

  v24 = CFNumberCreate(v21, kCFNumberIntType, &PeakBitRate);
  if (*(DerivedStorage + 2568))
  {
    if (*(*(CMBaseObjectGetVTable() + 16) + 48))
    {
      OUTLINED_FUNCTION_717();
      v25();
    }

    v26 = *(DerivedStorage + 2568);
    if (v26)
    {
      v27 = *(*(CMBaseObjectGetVTable() + 16) + 48);
      if (v27)
      {
        v27(v26, @"playerStats", 0x1F0B65738, CodecString, 0);
      }

      v28 = *(DerivedStorage + 2568);
      if (v28)
      {
        v29 = *(*(CMBaseObjectGetVTable() + 16) + 48);
        if (v29)
        {
          v29(v28, @"playerStats", 0x1F0B65118, VideoLayoutString, 0);
        }

        if (*(DerivedStorage + 2568))
        {
          if (*(*(CMBaseObjectGetVTable() + 16) + 48))
          {
            OUTLINED_FUNCTION_138();
            v30();
          }

          if (*(DerivedStorage + 2568))
          {
            if (*(*(CMBaseObjectGetVTable() + 16) + 56))
            {
              OUTLINED_FUNCTION_242();
              v31();
            }

            if (*(DerivedStorage + 2568) && *(*(CMBaseObjectGetVTable() + 16) + 48))
            {
              OUTLINED_FUNCTION_266();
              OUTLINED_FUNCTION_606();
              v32();
            }
          }
        }
      }
    }
  }

  if (v22)
  {
    CFRelease(v22);
  }

  if (v24)
  {
    CFRelease(v24);
  }
}

const __CFDictionary *fpfsi_GetCurrentAudioPersistentIDFromMediaOption(uint64_t a1)
{
  CMBaseObjectGetDerivedStorage();
  FigGetCFStringForOSTypeValue();
  v1 = OUTLINED_FUNCTION_270();
  result = fpfs_FindMediaTypeInMediaArray(v1, v2, v3);
  if (result)
  {

    return CFDictionaryGetValue(result, @"MediaSelectionOptionsPersistentID");
  }

  return result;
}

const __CFDictionary *fpfs_FindMediaTypeInMediaArray(const __CFArray *a1, uint64_t a2, void *a3)
{
  ValueAtIndex = 0;
  if (a1 && a2)
  {
    Count = CFArrayGetCount(a1);
    if (Count < 1)
    {
      return 0;
    }

    else
    {
      v6 = Count;
      v7 = 0;
      while (1)
      {
        v8 = OUTLINED_FUNCTION_178();
        ValueAtIndex = CFArrayGetValueAtIndex(v8, v9);
        CFDictionaryGetValue(ValueAtIndex, @"MediaSelectionGroupMediaType");
        OUTLINED_FUNCTION_399();
        if (FigCFEqual())
        {
          break;
        }

        if (v6 == ++v7)
        {
          return 0;
        }
      }

      if (a3)
      {
        *a3 = v7;
      }
    }
  }

  return ValueAtIndex;
}

const __CFDictionary *fpfs_IsClosedCaptioningSelected()
{
  OUTLINED_FUNCTION_807();
  OUTLINED_FUNCTION_563();
  v1 = OUTLINED_FUNCTION_270();
  result = fpfs_FindMediaTypeInMediaArray(v1, v2, v3);
  if (result)
  {
    result = CFDictionaryGetValue(result, @"MediaSelectionOptionsPersistentID");
    if (result)
    {
      if (!*(v0 + 1672))
      {
        return 0;
      }

      OUTLINED_FUNCTION_563();
      v5 = OUTLINED_FUNCTION_577();
      MediaTypeInMediaArray = fpfs_FindMediaTypeInMediaArray(v5, v6, 0);
      if (!MediaTypeInMediaArray)
      {
        OUTLINED_FUNCTION_239();
        FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v16, v17, v18);
        return 0;
      }

      Value = CFDictionaryGetValue(MediaTypeInMediaArray, @"MediaSelectionGroupOptions");
      if (CFArrayGetCount(Value) < 1)
      {
        return 0;
      }

      v9 = 0;
      while (1)
      {
        v10 = OUTLINED_FUNCTION_178();
        ValueAtIndex = CFArrayGetValueAtIndex(v10, v11);
        CFDictionaryGetValue(ValueAtIndex, @"MediaSelectionOptionsPersistentID");
        if (FigCFEqual())
        {
          v13 = OUTLINED_FUNCTION_489();
          CFDictionaryGetValue(v13, v14);
          FigGetCFStringForOSTypeValue();
          if (FigCFEqual())
          {
            break;
          }
        }

        ++v9;
        Count = CFArrayGetCount(Value);
        result = 0;
        if (v9 >= Count)
        {
          return result;
        }
      }

      return 1;
    }
  }

  return result;
}

void fpfsi_UpdateAccessLogStartupPerformanceMetrics(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v2 = *(DerivedStorage + 1920);
  if (v2 && CFArrayGetCount(v2) >= 1 && *(DerivedStorage + 2608))
  {
    ValueAtIndex = CFArrayGetValueAtIndex(*(DerivedStorage + 1920), 0);
    v4 = *(DerivedStorage + 2608);

    CFDictionarySetValue(ValueAtIndex, @"c-startup_perf", v4);
  }
}

void fpfsi_TotalTimeRangeInBuffer()
{
  OUTLINED_FUNCTION_193();
  v1 = v0;
  v3 = v2;
  v145 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v5 = MEMORY[0x1E6960C98];
  v96 = *(MEMORY[0x1E6960C98] + 16);
  v99 = *MEMORY[0x1E6960C98];
  *v3 = *MEMORY[0x1E6960C98];
  *(v3 + 16) = v96;
  v93 = *(v5 + 32);
  *(v3 + 32) = v93;
  if (!fpfsi_HasRequiredSubstreamsToIndicateBuffering(v1))
  {
    goto LABEL_50;
  }

  v6 = 0;
  WORD2(v137) = 0;
  LODWORD(v137) = 0;
  LODWORD(v136) = 0;
  WORD2(v136) = 0;
  do
  {
    v7 = &v144[v6];
    *v7 = v99;
    v7[1] = v96;
    v7[2] = v93;
    v8 = &v143[v6];
    *v8 = v99;
    v8[1] = v96;
    v6 += 48;
    v8[2] = v93;
  }

  while (v6 != 288);
  v9 = &v137;
  fpfsi_TotalTimeRangeInBufferForTrackList((DerivedStorage + 1024), v144, &v137);
  v10 = &v136;
  fpfsi_TotalTimeRangeInBufferForTrackList((DerivedStorage + 1040), v143, &v136);
  for (i = 0; i != 240; i += 48)
  {
    v12 = *v10;
    v10 = (v10 + 1);
    if (v12)
    {
      v13 = &v143[i];
      if ((v143[i + 12] & 1) != 0 && (v13[36] & 1) != 0 && !*&v143[i + 40] && (*(v13 + 3) & 0x8000000000000000) == 0)
      {
        if (*v9 && (v14 = &v144[i], (v144[i + 12] & 1) != 0) && (v14[36] & 1) != 0 && !*&v144[i + 40] && (*(v14 + 3) & 0x8000000000000000) == 0)
        {
          OUTLINED_FUNCTION_18();
          v17 = OUTLINED_FUNCTION_423();
          CMTimeRangeGetIntersection(v19, v17, v18);
          if ((v131 & 0x100000000) != 0)
          {
            OUTLINED_FUNCTION_18();
            v20 = OUTLINED_FUNCTION_423();
            CMTimeRangeGetIntersection(v22, v20, v21);
            if ((v128 & 0x100000000) != 0)
            {
              OUTLINED_FUNCTION_18();
              v23 = OUTLINED_FUNCTION_423();
              CMTimeRangeGetIntersection(v25, v23, v24);
              if (!v123)
              {
                OUTLINED_FUNCTION_18();
                v29 = OUTLINED_FUNCTION_423();
                CMTimeRangeGetIntersection(v31, v29, v30);
                if ((v115 & 0x8000000000000000) == 0)
                {
                  OUTLINED_FUNCTION_18();
                  v32 = OUTLINED_FUNCTION_423();
                  CMTimeRangeGetIntersection(v34, v32, v33);
                  *&v142.start.value = v110;
                  v142.start.epoch = v111;
                  *&range.start.value = *MEMORY[0x1E6960CC0];
                  range.start.epoch = *(MEMORY[0x1E6960CC0] + 16);
                  v35 = OUTLINED_FUNCTION_423();
                  if (!CMTimeCompare(v35, v36))
                  {
                    memset(&range, 0, 24);
                    *&v142.start.value = *v13;
                    v142.start.epoch = *(v13 + 2);
                    *&otherRange.start.value = *v14;
                    otherRange.start.epoch = *(v14 + 2);
                    CMTimeMaximum(&range.start, &v142.start, &otherRange.start);
                    OUTLINED_FUNCTION_335();
                    v37 = *(v13 + 1);
                    *&v142.start.value = *v13;
                    *&v142.start.epoch = v37;
                    *&v142.duration.timescale = *(v13 + 2);
                    CMTimeRangeGetEnd(&time2, &v142);
                    v38 = *(v14 + 1);
                    *&v142.start.value = *v14;
                    *&v142.start.epoch = v38;
                    *&v142.duration.timescale = *(v14 + 2);
                    End = CMTimeRangeGetEnd(&rhs, &v142);
                    v47 = OUTLINED_FUNCTION_738(End, v40, v41, v42, v43, v44, v45, v46, v89, v91, v93, *(&v93 + 1), v96, *(&v96 + 1), v99, *(&v99 + 1), otherRange.start.value, *&otherRange.start.timescale, otherRange.start.epoch, otherRange.duration.value, *&otherRange.duration.timescale, otherRange.duration.epoch, rhs.value, *&rhs.timescale, rhs.epoch, v104, time2.value);
                    v50 = CMTimeMinimum(v49, v47, v48);
                    *&time2.value = OUTLINED_FUNCTION_605(v50, v51, v52, v53, v54, v55, v56, v57, v90, v92, v94, v95, v97, v98, v100, v101, *&otherRange.start.value, otherRange.start.epoch, otherRange.duration.value, *&otherRange.duration.timescale, otherRange.duration.epoch, rhs.value, *&rhs.timescale, rhs.epoch, v104, time2.value, *&time2.timescale, time2.epoch, v106, v107, v108, v109, v110, *(&v110 + 1), v111, v112, v113, v114, v115, v116, v117, v118, v119, v120, v121, v122, v123, v124, v125, v126, v127, v128, v129, v130, v131, v132, v133, v134, v135, v136, v137, *&range.start.value);
                    time2.epoch = range.start.epoch;
                    v58 = CMTimeCompare(&v142.start, &time2);
                    if (v58)
                    {
                      *&rhs.value = OUTLINED_FUNCTION_605(v58, v59, v60, v61, v62, v63, v64, v65, v89, v91, v93, *(&v93 + 1), v96, *(&v96 + 1), v99, *(&v99 + 1), *&otherRange.start.value, otherRange.start.epoch, otherRange.duration.value, *&otherRange.duration.timescale, otherRange.duration.epoch, rhs.value, *&rhs.timescale, rhs.epoch, v104, time2.value, *&time2.timescale, time2.epoch, v106, v107, v108, v109, v110, *(&v110 + 1), v111, v112, v113, v114, v115, v116, v117, v118, v119, v120, v121, v122, v123, v124, v125, v126, v127, v128, v129, v130, v131, v132, v133, v134, v135, v136, v137, *&range.start.value);
                      rhs.epoch = range.start.epoch;
                      CMTimeSubtract(&time2, &v142.start, &rhs);
                      CMTimeAbsoluteValue(&v142.start, &time2);
                      CMTimeMakeWithSeconds(&time2, 5.0, 1);
                      CMTimeCompare(&v142.start, &time2);
                    }
                  }
                }
              }
            }
          }

          v26 = *(v14 + 1);
          *&range.start.value = *v14;
          *&range.start.epoch = v26;
          *&range.duration.timescale = *(v14 + 2);
          v27 = *(v13 + 1);
          *&otherRange.start.value = *v13;
          *&otherRange.start.epoch = v27;
          *&otherRange.duration.timescale = *(v13 + 2);
          CMTimeRangeGetUnion(&v142, &range, &otherRange);
          v28 = *&v142.start.epoch;
          *v14 = *&v142.start.value;
          *(v14 + 1) = v28;
          *(v14 + 2) = *&v142.duration.timescale;
        }

        else
        {
          *v9 = 1;
          v15 = &v144[i];
          v16 = *(v13 + 1);
          *v15 = *v13;
          v15[1] = v16;
          v15[2] = *(v13 + 2);
        }
      }
    }

    v9 = (v9 + 1);
  }

  v66 = 0;
  v67 = v144;
  v68 = v99;
  while (!*(&v137 + v66))
  {
LABEL_37:
    ++v66;
    v67 += 48;
    if (v66 == 5)
    {
      goto LABEL_40;
    }
  }

  if ((v67[12] & 1) != 0 && (v67[36] & 1) != 0 && !*(v67 + 5) && (*(v67 + 3) & 0x8000000000000000) == 0)
  {
    if ((*(v3 + 12) & 1) == 0 || (*(v3 + 36) & 1) == 0 || *(v3 + 40) || (*(v3 + 24) & 0x8000000000000000) != 0)
    {
      v69 = *(v67 + 1);
      *v3 = *v67;
      *(v3 + 16) = v69;
      *(v3 + 32) = *(v67 + 2);
    }

    else
    {
      OUTLINED_FUNCTION_736();
      v70 = *(v67 + 1);
      *&range.start.value = *v67;
      *&range.start.epoch = v70;
      *&range.duration.timescale = *(v67 + 2);
      v71 = OUTLINED_FUNCTION_423();
      CMTimeRangeGetIntersection(v3, v71, v72);
      v68 = v99;
    }

    goto LABEL_37;
  }

  *v3 = v68;
  *(v3 + 16) = v96;
  *(v3 + 32) = v93;
LABEL_40:
  if (dword_1EAF169F0 >= 5)
  {
    LODWORD(otherRange.start.value) = 0;
    LOBYTE(time2.value) = 0;
    OUTLINED_FUNCTION_201();
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, time2.value);
    OUTLINED_FUNCTION_46();
    if (&v137)
    {
      v74 = *DerivedStorage;
      if (v74)
      {
        v75 = (CMBaseObjectGetDerivedStorage() + 888);
        if (v1)
        {
          goto LABEL_44;
        }

LABEL_47:
        v76 = "";
      }

      else
      {
        v75 = "";
        if (!v1)
        {
          goto LABEL_47;
        }

LABEL_44:
        v76 = (CMBaseObjectGetDerivedStorage() + 3096);
      }

      *&v142.start.value = *v3;
      v142.start.epoch = *(v3 + 16);
      Seconds = CMTimeGetSeconds(&v142.start);
      OUTLINED_FUNCTION_736();
      CMTimeRangeGetEnd(&range.start, &v142);
      CMTimeGetSeconds(&range.start);
      LODWORD(range.start.value) = 136316674;
      OUTLINED_FUNCTION_393("fpfsi_TotalTimeRangeInBuffer");
      LOWORD(range.start.flags) = v78;
      *(v79 + 14) = v74;
      HIWORD(range.start.epoch) = 2082;
      range.duration.value = v75;
      LOWORD(range.duration.timescale) = v78;
      *(v79 + 34) = v1;
      WORD1(range.duration.epoch) = 2082;
      *(v79 + 44) = v76;
      v139 = v78;
      *(v79 + 54) = Seconds;
      v140 = v78;
      v141 = v80;
      OUTLINED_FUNCTION_170();
      v81 = OUTLINED_FUNCTION_30();
      OUTLINED_FUNCTION_448(v81, v82, v83, v84, v85, v86, v87, v88);
    }

    OUTLINED_FUNCTION_4();
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

LABEL_50:
  OUTLINED_FUNCTION_191();
}

void fpfsi_getPumpAvailableTimeRange(uint64_t a1, _OWORD *a2)
{
  v70 = *MEMORY[0x1E69E9840];
  dictionaryRepresentation = 0;
  v3 = MEMORY[0x1E6960C98];
  v4 = *(MEMORY[0x1E6960C98] + 16);
  *a2 = *MEMORY[0x1E6960C98];
  a2[1] = v4;
  a2[2] = *(v3 + 32);
  if (*(a1 + 912))
  {
    OUTLINED_FUNCTION_187();
    FigGetAllocatorForMedia();
    OUTLINED_FUNCTION_179();
    FigBytePumpGetFigBaseObject();
    if (*(*(CMBaseObjectGetVTable() + 8) + 48))
    {
      v5 = OUTLINED_FUNCTION_188();
      if (!v6(v5))
      {
        CMTimeMakeFromDictionary(&v56, dictionaryRepresentation);
        v69 = DWORD2(v56);
        v68 = v56;
        OUTLINED_FUNCTION_734();
        v16 = OUTLINED_FUNCTION_548(v7, v8, v9, v10, v11, v12, v13, v14, v56, *(&v56 + 1), v57, *(&v57 + 1), v58, v59, v60, v61, *(v2 + 1176), v15);
        CMTimeSubtract(v18, v16, v17);
        v68 = v56;
        v19 = HIDWORD(v56);
        v69 = DWORD2(v56);
        v20 = v57;
        CFRelease(dictionaryRepresentation);
        FigGetAllocatorForMedia();
        OUTLINED_FUNCTION_413();
        FigBytePumpGetFigBaseObject();
        if (*(*(CMBaseObjectGetVTable() + 8) + 48))
        {
          v21 = OUTLINED_FUNCTION_308();
          if (!v22(v21))
          {
            CMTimeMakeFromDictionary(&v56, dictionaryRepresentation);
            v67 = DWORD2(v56);
            v66 = v56;
            OUTLINED_FUNCTION_734();
            v32 = OUTLINED_FUNCTION_548(v23, v24, v25, v26, v27, v28, v29, v30, v56, *(&v56 + 1), v57, *(&v57 + 1), v58, v59, v60, v61, *(v2 + 1176), v31);
            CMTimeSubtract(v34, v32, v33);
            v66 = v56;
            v35 = HIDWORD(v56);
            v67 = DWORD2(v56);
            v36 = v57;
            CFRelease(dictionaryRepresentation);
            if (v19 & 1) != 0 && (v35)
            {
              v62 = v69;
              v63 = v19;
              v64 = v20;
              v44 = OUTLINED_FUNCTION_548(0, v37, v38, v39, v40, v41, v42, v43, v56, *(&v56 + 1), v57, *(&v57 + 1), v58, v59, v66, __SPAIR64__(v35, v67), v36, v68);
              CMTimeRangeFromTimeToTime(v46, v44, v45);
              OUTLINED_FUNCTION_733(0, v47, v48, v49, v50, v51, v52, v53, v54, v56, v57, v55);
            }
          }
        }
      }
    }
  }
}

void fpfsi_setNonForcedSubtitlesEnabled(uint64_t a1)
{
  v3 = OUTLINED_FUNCTION_849(a1);
  v4 = *(v3 + 1872);
  if (v4 && *(v3 + 531) != v2)
  {
    v5 = *v3;
    *(v3 + 531) = v2;
    FigLegibleOutputManagerSetNonForcedEnabledForMediaType(v4, 1935832172, v2);
    NotificationPayloadForProperties = fpfs_CreateNotificationPayloadForProperties(v5, v1, v6, v7, v8, v9, v10, v11, @"DisplayNonForcedSubtitles", @"SelectedMediaArray");
    fpfs_EnqueueNotification(v5, @"DisplayNonForcedSubtitlesChanged", v1, NotificationPayloadForProperties);
    if (NotificationPayloadForProperties)
    {
      CFRelease(NotificationPayloadForProperties);
    }

    fpfs_updateClosedCaptionsDisplay();
  }
}

void fpfsi_CheckInterstitialVideoLayoutCompatibility(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  OUTLINED_FUNCTION_173(DerivedStorage);
  v3 = CMBaseObjectGetDerivedStorage();
  v4 = *(v1 + 1680);
  if (v4)
  {
    FigAlternateHasNonRectangularProjection(v4);
    if (v5)
    {
      if (*(v3 + 906) || (v8 = *(v1 + 3240)) != 0 && CFArrayGetCount(v8) >= 1)
      {
        v6 = OUTLINED_FUNCTION_177();

        fpfs_StopPlayingItemWithOSStatus(v6, v7, 4294951598);
      }
    }
  }
}

uint64_t fpfs_CreateNotificationPayloadForProperties(uint64_t a1, uint64_t a2, int a3, int a4, int a5, int a6, int a7, int a8, void *value, uint64_t a10)
{
  AllocatorForMedia = FigGetAllocatorForMedia();
  Mutable = CFArrayCreateMutable(AllocatorForMedia, 0, MEMORY[0x1E695E9C0]);
  v21 = &a10;
  v14 = value;
  if (value)
  {
    do
    {
      CFArrayAppendValue(Mutable, v14);
      v15 = v21++;
      v14 = *v15;
    }

    while (*v15);
  }

  if (!a1 && a2)
  {
    a1 = *CMBaseObjectGetDerivedStorage();
  }

  if (!a1)
  {
    a2 = 0;
    if (!Mutable)
    {
      return a2;
    }

    goto LABEL_8;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  OUTLINED_FUNCTION_258(DerivedStorage);
  FigSimpleMutexLock();
  OUTLINED_FUNCTION_547();
  v17 = OUTLINED_FUNCTION_171();
  FPSupport_CreateNotificationPayloadForProperties(v17, v18, Mutable);
  v19 = OUTLINED_FUNCTION_413();
  fpfs_UnlockAndPostNotificationsWithCaller(v19);
  if (Mutable)
  {
LABEL_8:
    CFRelease(Mutable);
  }

  return a2;
}

void fpfs_updateClosedCaptionsDisplay()
{
  OUTLINED_FUNCTION_700();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v1 = *(DerivedStorage + 209);
  if (FigRenderedLegibleOutputManagerIsSupported())
  {
    v2 = MEMORY[0x1E695E4D0];
    v3 = MEMORY[0x1E695E4C0];
    if (*(DerivedStorage + 80))
    {
      v4 = CMBaseObjectGetDerivedStorage();
      v5 = v4;
      if (!*(DerivedStorage + 209) || *(v4 + 531))
      {
        OUTLINED_FUNCTION_284();
        v1 = fpfs_IsClosedCaptioningSelected() != 0;
      }

      else
      {
        v1 = 1;
      }

      v6 = *(v5 + 816);
      if (v6 && *(v6 + 32))
      {
        fpfs_setPropertyOnPrimaryAndAuxRenderPipelines();
      }

      FigLegibleOutputManagerSetNonForcedEnabledForMediaType(*(v5 + 1872), 1668047728, v1);
    }

    if (v1 != *(DerivedStorage + 210))
    {
      *(DerivedStorage + 210) = v1;
      v7 = (v1 ? v2 : v3);
      v8 = *v7;
      FigPropertyStorageSetValue(*(DerivedStorage + 16), @"DisplayingClosedCaptions", *v7);
      FPSupport_updateClosedCaptionLayer(DerivedStorage + 208, *(DerivedStorage + 200));
      AllocatorForMedia = FigGetAllocatorForMedia();
      Mutable = CFDictionaryCreateMutable(AllocatorForMedia, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      CFDictionarySetValue(Mutable, @"CurrentDisplayingClosedCaptions", v8);
      v11 = OUTLINED_FUNCTION_805();
      fpfs_EnqueueNotification(v11, v12, v13, Mutable);
      if (Mutable)
      {

        CFRelease(Mutable);
      }
    }
  }
}

uint64_t fpfsi_UpdateResourceSpecifierOnResourceArbiter(uint64_t a1)
{
  v42 = 0;
  v40 = 0;
  cf = 0;
  v38 = 0;
  v39 = 0;
  v37 = 0;
  GlobalSingleton = FigPlayerResourceArbiterGetGlobalSingleton(&v37);
  if (GlobalSingleton)
  {
    goto LABEL_30;
  }

  if (a1)
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    OUTLINED_FUNCTION_180(DerivedStorage);
    v5 = CMBaseObjectGetDerivedStorage();
    if (*(v5 + 80) == a1)
    {
      v6 = v5;
      GlobalSingleton = FigPlayerResourceArbiterPlayerSpecifierCreate(&v38);
      if (GlobalSingleton)
      {
        goto LABEL_30;
      }

      v7 = OUTLINED_FUNCTION_627();
      if (fpfs_CanRenderVideo(v7, v8))
      {
        fpfsi_GetResolutionCapForFilter();
        if (!v42)
        {
          v9 = v9 * 1.35;
          v10 = v10 * 1.35;
        }
      }

      else
      {
        v9 = *MEMORY[0x1E695F060];
        v10 = *(MEMORY[0x1E695F060] + 8);
      }

      GlobalSingleton = FigPlayerResourceArbiterPlayerSpecifierSetDisplaySize(v38, v9, v10);
      if (GlobalSingleton)
      {
        goto LABEL_30;
      }

      if (*(v1 + 40))
      {
        FigGetAllocatorForMedia();
        v11 = OUTLINED_FUNCTION_178();
        FigAlternateSelectionBossCopyProperty(v11, v12, v13, v14);
      }

      VideoLayoutTags = FigAlternateGetVideoLayoutTags(*(v1 + 1680));
      FigStreamAlternateGetPixelsPerSecondLimits(cf, VideoLayoutTags, &v40, &v39);
      if (v40)
      {
        v16 = v38;
        Resolution = FigAlternateGetResolution(v40);
        GlobalSingleton = FigPlayerResourceArbiterPlayerSpecifierSetResolutionCeiling(v16, Resolution, v18);
        if (GlobalSingleton)
        {
          goto LABEL_30;
        }

        v19 = v38;
        FrameRate = FigAlternateGetFrameRate(v40);
        GlobalSingleton = FigPlayerResourceArbiterPlayerSpecifierSetFrameRateCeiling(v19, FrameRate);
        if (GlobalSingleton)
        {
          goto LABEL_30;
        }
      }

      if (v39)
      {
        v21 = v38;
        v22 = FigAlternateGetResolution(v39);
        GlobalSingleton = FigPlayerResourceArbiterPlayerSpecifierSetResolutionFloor(v21, v22, v23);
        if (GlobalSingleton)
        {
          goto LABEL_30;
        }

        v24 = v38;
        v25 = FigAlternateGetFrameRate(v39);
        GlobalSingleton = FigPlayerResourceArbiterPlayerSpecifierSetFrameRateFloor(v24, v25);
        if (GlobalSingleton)
        {
          goto LABEL_30;
        }
      }

      if (FigAlternateHasMVStereoVideo(v40))
      {
        GlobalSingleton = FigPlayerResourceArbiterPlayerSpecifierSetIsMVStereo(v38, 1);
        if (GlobalSingleton)
        {
          goto LABEL_30;
        }
      }

      FigPlayerResourceArbiterPlayerSpecifierSetNetworkPriority(v38, *(v6 + 936));
      if (*(v6 + 521))
      {
        v26 = 1;
      }

      else
      {
        v26 = *(v6 + 522) != 0;
      }

      FigPlayerResourceArbiterPlayerSpecifierSetIsMuted(v38, v26);
      v27 = *(v1 + 1680);
      if (v27)
      {
        v28 = v38;
        IsFullyCached = FigAlternateGetLastKnownValueForIsFullyCached(v27);
        FigPlayerResourceArbiterPlayerSpecifierSetIsFullyOffline(v28, IsFullyCached);
      }

      v30 = *(v6 + 872);
      if (v30 == 2)
      {
        v31 = &kFigPlayerRole_PIP;
      }

      else
      {
        if (v30 != 1)
        {
          v32 = 0;
          goto LABEL_29;
        }

        v31 = &kFigPlayerRole_Scanning;
      }

      v32 = *v31;
LABEL_29:
      FigPlayerResourceArbiterPlayerSpecifierSetPlayerRole(v38, v32);
      OUTLINED_FUNCTION_757();
      FigPlayerResourceArbiterPlayerSpecifierSetIsBuffering(v33, v34);
      FigPlayerResourceArbiterPlayerSpecifierSetDesiredRate(v38, *(v6 + 108));
      FigPlayerResourceArbiterPlayerSpecifierSetIsFullyActive(v38, *(v6 + 32) == 2);
      GlobalSingleton = FigPlayerResourceArbiterSetSpecifierForConsumer(v37, v38, *(v6 + 928));
LABEL_30:
      v35 = GlobalSingleton;
      goto LABEL_31;
    }
  }

  v35 = 0;
LABEL_31:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v38)
  {
    CFRelease(v38);
  }

  return v35;
}

void fpfsi_GetResolutionCapForFilter()
{
  OUTLINED_FUNCTION_460();
  OUTLINED_FUNCTION_433();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  OUTLINED_FUNCTION_180(DerivedStorage);
  v4 = CMBaseObjectGetDerivedStorage();
  v5 = MEMORY[0x1E695F060];
  v7 = *MEMORY[0x1E695F060];
  v6 = *(MEMORY[0x1E695F060] + 8);
  v8 = (v0 + 768);
  v9 = (v0 + 776);
  if (*(v4 + 462))
  {
    v9 = (v4 + 472);
    v8 = (v4 + 464);
  }

  v10 = *v8;
  v11 = *v9;
  v12 = *(v0 + 2520) != v6 || *(v0 + 2512) != v7;
  if (v12)
  {
    v13 = *(v0 + 2520);
  }

  else
  {
    v13 = *(MEMORY[0x1E695F060] + 8);
  }

  if (v12)
  {
    v14 = *(v0 + 2512);
  }

  else
  {
    v14 = *MEMORY[0x1E695F060];
  }

  if (v14 == v7 && v13 == v6)
  {
    v16 = v4;
    v17 = *v0;
    IsAppleTV = CelestialIsAppleTV();
    v26 = v6;
    v27 = v7;
    if (!IsAppleTV)
    {
      IsAppleTV = fpfs_isExternalVideoOutput(v17);
      v26 = v6;
      v27 = v7;
      if (!IsAppleTV)
      {
        *v139 = *v5;
        IsAppleTV = CelestialGetModelSpecificResolutionCap();
        v26 = v139[1];
        v27 = v139[0];
        v5 = *(v0 + 2568);
        if (v5)
        {
          v17 = @"playerStats";
          VTable = CMBaseObjectGetVTable();
          v40 = *(VTable + 16);
          IsAppleTV = VTable + 16;
          if (*(v40 + 56))
          {
            v41 = OUTLINED_FUNCTION_480();
            IsAppleTV = v42(v41);
          }

          v5 = *(v0 + 2568);
          if (v5)
          {
            v43 = CMBaseObjectGetVTable();
            v44 = *(v43 + 16);
            IsAppleTV = v43 + 16;
            if (*(v44 + 56))
            {
              v45 = OUTLINED_FUNCTION_480();
              IsAppleTV = v46(v45);
            }
          }
        }
      }
    }

    if (v10 == v7 && v11 == v6)
    {
      goto LABEL_48;
    }

    v29 = v27 != v7;
    if (v26 != v6)
    {
      v29 = 1;
    }

    if (v10 <= v27)
    {
      v29 = 0;
    }

    v30 = v11 > v26;
    v13 = v29 && v30 ? v26 : v11;
    v14 = v29 && v30 ? v27 : v10;
    if (!dword_1EAF169F0)
    {
LABEL_48:
      if (v14 != v7 || v13 != v6)
      {
        goto LABEL_84;
      }

      v61 = *(v16 + 440) == v7 && *(v16 + 448) == v6;
      if (v61 && !FigStreamingPlayerCombinedVideoDestinationGetFVTCount(*(v16 + 376)))
      {
        goto LABEL_84;
      }

      v62 = CMBaseObjectGetDerivedStorage();
      OUTLINED_FUNCTION_248(v62);
      CMBaseObjectGetDerivedStorage();
      OUTLINED_FUNCTION_773();
      CMBaseObjectGetDerivedStorage();
      v71 = OUTLINED_FUNCTION_727();
      if (v73)
      {
        v71 = OUTLINED_FUNCTION_727();
        if (v74)
        {
          v71 = OUTLINED_FUNCTION_727();
          if (v75)
          {
            v71 = v6;
            v72 = v7;
            if (*(&v17[100].isa + 1) != 0.0)
            {
              FigStreamingPlayerCombinedVideoDestinationMaxDesiredPixelCountFromFVTs(*(v5 + 376));
              v71 = OUTLINED_FUNCTION_727();
              if (v63)
              {
                v76 = *(&v17[100].isa + 1);
                v72 = sqrtf(v76 * v63);
                v71 = sqrtf(v63 / v76);
              }
            }
          }
        }
      }

      if (v71 * v72 <= *(v16 + 440) * *(v16 + 448))
      {
        if (!dword_1EAF169F0)
        {
          goto LABEL_84;
        }

        v77 = OUTLINED_FUNCTION_462(v63, v64, v65, v66, v67, v68, v69, v70, v115, v118, v121, v124, *v127, *&v127[4], v127[6], 0, 0);
        OUTLINED_FUNCTION_829(v77, v78, v79, v80, v81, v82, v83, v84, v117, v120, v123, v126, v129, v131, v133, typeb, v138);
        OUTLINED_FUNCTION_37();
        if (!&unk_1EAF16000)
        {
          goto LABEL_80;
        }

        if (*v0)
        {
          CMBaseObjectGetDerivedStorage();
          if (!v2)
          {
LABEL_79:
            OUTLINED_FUNCTION_725();
            OUTLINED_FUNCTION_32();
            OUTLINED_FUNCTION_27();
            OUTLINED_FUNCTION_200();
            _os_log_send_and_compose_impl(v86, v87, v88, v89, v90, v91, v92, v93);
LABEL_80:
            OUTLINED_FUNCTION_7();
            OUTLINED_FUNCTION_449(v94, v95, v96, v97, v98);
            goto LABEL_84;
          }
        }

        else if (!v2)
        {
          goto LABEL_79;
        }

        CMBaseObjectGetDerivedStorage();
        goto LABEL_79;
      }

      if (!dword_1EAF169F0)
      {
        goto LABEL_84;
      }

      v85 = OUTLINED_FUNCTION_462(v63, v64, v65, v66, v67, v68, v69, v70, v115, v118, v121, v124, *v127, *&v127[4], v127[6], 0, 0);
      os_log_type_enabled(v85, type);
      OUTLINED_FUNCTION_28();
      if (!v5)
      {
LABEL_83:
        OUTLINED_FUNCTION_2();
        fig_log_call_emit_and_clean_up_after_send_and_compose();
        goto LABEL_84;
      }

      if (*v0)
      {
        CMBaseObjectGetDerivedStorage();
        if (!v2)
        {
LABEL_82:
          OUTLINED_FUNCTION_47();
          OUTLINED_FUNCTION_227();
          OUTLINED_FUNCTION_97();
          OUTLINED_FUNCTION_32();
          OUTLINED_FUNCTION_23();
          _os_log_send_and_compose_impl(v99, v100, v101, v102, v103, v104, type, v105);
          goto LABEL_83;
        }
      }

      else if (!v2)
      {
        goto LABEL_82;
      }

      CMBaseObjectGetDerivedStorage();
      goto LABEL_82;
    }

    v31 = OUTLINED_FUNCTION_462(IsAppleTV, v19, v20, v21, v22, v23, v24, v25, v115, v118, v121, v124, *v127, *&v127[4], v127[6], 0, 0);
    OUTLINED_FUNCTION_829(v31, v32, v33, v34, v35, v36, v37, v38, v116, v119, v122, v125, v128, v130, v132, typea, v137);
    OUTLINED_FUNCTION_37();
    if (!&unk_1EAF16000)
    {
LABEL_47:
      OUTLINED_FUNCTION_201();
      OUTLINED_FUNCTION_7();
      OUTLINED_FUNCTION_449(v55, v56, v57, v58, v59);
      goto LABEL_48;
    }

    v124 = v1;
    if (*v0)
    {
      CMBaseObjectGetDerivedStorage();
      if (!v2)
      {
LABEL_46:
        OUTLINED_FUNCTION_47();
        OUTLINED_FUNCTION_227();
        OUTLINED_FUNCTION_97();
        OUTLINED_FUNCTION_32();
        OUTLINED_FUNCTION_27();
        OUTLINED_FUNCTION_200();
        _os_log_send_and_compose_impl(v47, v48, v49, v50, v51, v52, v53, v54);
        goto LABEL_47;
      }
    }

    else if (!v2)
    {
      goto LABEL_46;
    }

    CMBaseObjectGetDerivedStorage();
    goto LABEL_46;
  }

LABEL_84:
  if (v1)
  {
    *v1 = v12;
  }

  if (*(v0 + 2568))
  {
    if (*(*(CMBaseObjectGetVTable() + 16) + 56))
    {
      v106 = OUTLINED_FUNCTION_113();
      v107(v106);
    }

    if (*(v0 + 2568))
    {
      if (*(*(CMBaseObjectGetVTable() + 16) + 56))
      {
        v108 = OUTLINED_FUNCTION_113();
        v109(v108);
      }

      if (*(v0 + 2568))
      {
        if (*(*(CMBaseObjectGetVTable() + 16) + 56))
        {
          v110 = OUTLINED_FUNCTION_113();
          v111(v110);
        }

        if (*(v0 + 2568))
        {
          if (*(*(CMBaseObjectGetVTable() + 16) + 56))
          {
            v112 = OUTLINED_FUNCTION_113();
            v113(v112);
          }

          if (*(v0 + 2568) && *(*(CMBaseObjectGetVTable() + 16) + 56))
          {
            OUTLINED_FUNCTION_266();
            OUTLINED_FUNCTION_606();
            v114();
          }
        }
      }
    }
  }

  OUTLINED_FUNCTION_459();
}

void fpfs_AreTracksReadyToPlay()
{
  OUTLINED_FUNCTION_647();
  v87 = v3;
  v88 = v4;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v86 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  OUTLINED_FUNCTION_180(DerivedStorage);
  v12 = CMBaseObjectGetDerivedStorage();
  if (v6)
  {
    *v6 = 0;
  }

  v13 = v0[128];
  v14 = 1;
  v15 = 0;
  if (v13)
  {
    v72 = *MEMORY[0x1E69AF7F0];
    OUTLINED_FUNCTION_370();
    *&v24 = 136316930;
    v74 = v24;
    while (1)
    {
      v25 = *(v13 + 80);
      if (v25 <= v8 && *(v13 + 400))
      {
        isDecryptorReady = fpfs_isDecryptorReady(v13);
        if (!isDecryptorReady)
        {
          goto LABEL_98;
        }

        v25 = *(v13 + 80);
      }

      if (v25 < v8)
      {
        if ((*(v13 + 168) | 2) == 3)
        {
          goto LABEL_98;
        }

        goto LABEL_59;
      }

      if (v25 != v8)
      {
        v28 = 1 << *(v13 + 196);
        if ((v28 & v15) == 0)
        {
          if (dword_1EAF169F0 >= 3)
          {
            v73 = v12;
            v76 = v10;
            LODWORD(time1.value) = 0;
            HIBYTE(v78) = 0;
            os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            value = 0;
            v2 = 0;
            os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
            OUTLINED_FUNCTION_134();
            if (v31)
            {
              v32 = v30;
            }

            else
            {
              v32 = 0;
            }

            if (v32)
            {
              v71 = v6;
              v33 = *v0;
              if (*v0)
              {
                v34 = (CMBaseObjectGetDerivedStorage() + 888);
              }

              else
              {
                v34 = "";
              }

              if (v76)
              {
                v39 = v0;
                v40 = v34;
                CMBaseObjectGetDerivedStorage();
                v34 = v40;
                v0 = v39;
              }

              LODWORD(time2.value) = v74;
              *(&time2.value + 4) = "fpfs_AreTracksReadyToPlay";
              LOWORD(time2.flags) = 2048;
              *(&time2.flags + 2) = v33;
              HIWORD(time2.epoch) = 2082;
              v80 = v34;
              LOWORD(v81) = 2048;
              *(&v81 + 2) = v76;
              WORD5(v81) = 2082;
              OUTLINED_FUNCTION_359();
              *(&v82 + 6) = v41;
              WORD5(v82) = v42;
              HIDWORD(v82) = v43;
              LOWORD(v83) = v42;
              *(&v83 + 2) = v8;
              OUTLINED_FUNCTION_66();
              OUTLINED_FUNCTION_35();
              OUTLINED_FUNCTION_772();
              _os_log_send_and_compose_impl(v44, v45, v46, v47, v48, v49, v50, "<<<< FigStreamPlayer >>>> %s: [%p|%{public}s] <%p|%{public}s>: substream %d has already advanced into discDomain %d current item discDomain %d, will try to play with what it has gotten");
              value = time1.value;
            }

            OUTLINED_FUNCTION_4();
            fig_log_call_emit_and_clean_up_after_send_and_compose();
            v10 = v76;
            v12 = v73;
            OUTLINED_FUNCTION_370();
          }

          v15 |= v28;
        }

        goto LABEL_59;
      }

      if ((*(v13 + 156) & 1) != 0 || *(v13 + 198) || *(v13 + 196) == 2)
      {
        v15 |= 1 << *(v13 + 196);
      }

      if (!*(v13 + 200))
      {
        break;
      }

LABEL_59:
      v13 = *(v13 + 24);
      if (!v13)
      {
        v52 = 0;
        v14 = 1;
        goto LABEL_69;
      }
    }

    v26 = *(v13 + 48);
    if (v26 == value)
    {
      if (!*(v13 + 56))
      {
        goto LABEL_39;
      }
    }

    else
    {
      if (v26 != v2 || !*(v13 + 56))
      {
        goto LABEL_39;
      }

      v17 = *(v12 + 80);
      if (v17 != v10)
      {
        if (v17)
        {
          if (fpfs_getNext(v12, v17) != v10)
          {
            goto LABEL_98;
          }

          isDecryptorReady = fpfsi_PumpHasEndedOrBufferedBeyondEndTime(*(v12 + 80));
          if (!isDecryptorReady)
          {
            goto LABEL_98;
          }
        }
      }

      if (*(v12 + 672) >= 4)
      {
        v27 = v0[104];
        if (!v27 || (isDecryptorReady = fpfs_FormatsAreCompatible(v10, *(v27 + 16), *(v13 + 56)), !isDecryptorReady))
        {
          fpfsi_ClearCachedVideoRenderChains(v10);
LABEL_96:
          if (v6)
          {
            *v6 = 1;
          }

          goto LABEL_98;
        }
      }
    }

    if (*(v0 + 2904))
    {
      goto LABEL_96;
    }

LABEL_39:
    if (*(v12 + 80) != v10 && *(v13 + 48) == value)
    {
      v2 = v6;
      LODWORD(v85[0].value) = 0;
      CMBaseObjectGetDerivedStorage();
      value = FigCFEqual();
      OUTLINED_FUNCTION_785();
      if (fpfs_WantAudioHardwarePassthroughForTrack(v13, v85) != v6)
      {
        goto LABEL_98;
      }

      v51 = value ? 1633889587 : 0;
      if (value && v51 != LODWORD(v85[0].value))
      {
        goto LABEL_98;
      }

      OUTLINED_FUNCTION_370();
    }

    if (!*(v13 + 198))
    {
      if (!*(v13 + 56) || (v35 = *(v13 + 168)) == 0)
      {
LABEL_94:
        v14 = 0;
        v52 = 1;
        goto LABEL_69;
      }

      v36 = *(v13 + 48);
      if (v36 == v2)
      {
        if (v35 != 3)
        {
          isDecryptorReady = fpfs_CanRenderVideo(v12, *(v13 + 16));
          if (isDecryptorReady)
          {
            goto LABEL_94;
          }
        }
      }

      else if (!v36)
      {
        goto LABEL_94;
      }

      if ((*(v13 + 244) & 1) == 0)
      {
        goto LABEL_94;
      }

      v85[0] = *(v13 + 232);
      v37 = OUTLINED_FUNCTION_581(isDecryptorReady, v17, v18, v19, v20, v21, v22, v23, v68, v69, v70, v71, v72, v73, v74, *(&v74 + 1), v75, v76, time1.value, *&time1.timescale, time1.epoch, v78, *(v13 + 208), *(v13 + 216), *(v13 + 224), v80, v81, *(&v81 + 1), v82, *(&v82 + 1), v83, v84, v85[0].value);
      isDecryptorReady = CMTimeCompare(v37, v38);
      if (isDecryptorReady < 1)
      {
        goto LABEL_94;
      }
    }

    goto LABEL_59;
  }

  v52 = 0;
LABEL_69:
  if (v0[135] < 2)
  {
    goto LABEL_77;
  }

  v53 = *(v0 + 268);
  if (((v53 ^ v15) & 7) == 0)
  {
    goto LABEL_77;
  }

  for (i = 0; i != 3; ++i)
  {
    if (*(v0 + i + 472))
    {
      v55 = 1 << i;
    }

    else
    {
      LOBYTE(v55) = 0;
    }

    LOBYTE(v15) = v55 | v15;
  }

  if (((v15 ^ v53) & 7) == 0)
  {
LABEL_77:
    if ((v14 & 1) == 0)
    {
      v56 = v0[128];
      if (v56)
      {
        while (1)
        {
          if (!*(v56 + 200) && *(v56 + 80) == v8)
          {
            memset(v85, 0, 24);
            time2 = *(v56 + 208);
            fpfs_GetTrackStartupQueueDuration(v56, &time2, v85);
            CMTimeMake(&time2, 10, 1);
            time1 = v85[0];
            if ((CMTimeCompare(&time1, &time2) & 0x80000000) == 0)
            {
              break;
            }
          }

          v56 = *(v56 + 24);
          if (!v56)
          {
            goto LABEL_83;
          }
        }
      }

      else
      {
LABEL_83:
        if (v52 && !*(v0 + 471))
        {
          goto LABEL_98;
        }
      }
    }

    if (*(v0 + 1484))
    {
      for (j = v0[128]; j; j = *(j + 24))
      {
        if (!*(j + 200) && *(j + 80) == v8 && !*(j + 198) && (*(j + 244) & 1) != 0)
        {
          v85[0] = *(j + 232);
          OUTLINED_FUNCTION_90();
          v66 = OUTLINED_FUNCTION_581(v58, v59, v60, v61, v62, v63, v64, v65, v68, v69, v70, v71, v72, v73, v74, *(&v74 + 1), v75, v76, time1.value, *&time1.timescale, time1.epoch, v78, time2.value, *&time2.timescale, time2.epoch, v80, v81, *(&v81 + 1), v82, *(&v82 + 1), v83, v84, v85[0].value);
          CMTimeCompare(v66, v67);
        }
      }
    }
  }

LABEL_98:
  OUTLINED_FUNCTION_646();
}

uint64_t fpfsi_PumpHasEndedOrBufferedBeyondEndTime(uint64_t a1)
{
  result = CMBaseObjectGetDerivedStorage();
  if (result)
  {
    if (*(result + 471) || fpfsi_PlaybackHasBufferedBeyondForwardEndTime(a1))
    {
      return 1;
    }

    else
    {
      fpfsi_PlaybackHasBufferedBeyondReverseEndTime(a1);
      return v3 != 0;
    }
  }

  return result;
}

void fpfsi_PlaybackHasBufferedBeyondReverseEndTime(uint64_t a1)
{
  CMBaseObjectGetDerivedStorage();
  v34 = OUTLINED_FUNCTION_391(MEMORY[0x1E6960C70]);
  v35 = v2;
  if (v1)
  {
    v3 = v1;
    OUTLINED_FUNCTION_29();
    if (v4)
    {
      DerivedStorage = CMBaseObjectGetDerivedStorage();
      if (DerivedStorage)
      {
        OUTLINED_FUNCTION_260(DerivedStorage);
        if (v6)
        {
          v39 = 0uLL;
          v40 = 0;
          OUTLINED_FUNCTION_167(v3 + 1376);
          FPSTimelineConverterL3TimeToL2(&time2, &v34);
          v7 = OUTLINED_FUNCTION_234();
          fpfs_GetNextTimeToPlay(v7, v8, v9);
          v10 = OUTLINED_FUNCTION_270();
          fpfs_GetItemBufferedDuration(v10, v11, v12, 0);
          OUTLINED_FUNCTION_712();
          v21 = OUTLINED_FUNCTION_137(v13, v14, v15, v16, v17, v18, v19, v20, v39, *(&v39 + 1), v40, v28, v30);
          CMTimeSubtract(v23, v21, v22);
          OUTLINED_FUNCTION_269();
          if (CMTimeCompare(v24, &time2) < 0)
          {
            *&time2.timescale = v37;
            time2.epoch = v38;
            OUTLINED_FUNCTION_268(v35, v25, v26, v27, v29, v34.n128_i64[0], v34.n128_i64[1], v31, v32, v36);
          }
        }
      }
    }
  }
}

uint64_t fpfsi_PlaybackHasBufferedBeyondTime()
{
  OUTLINED_FUNCTION_807();
  CMBaseObjectGetDerivedStorage();
  OUTLINED_FUNCTION_391(MEMORY[0x1E6960C70]);
  if ((*(v0 + 12) & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_173(v1);
  result = CMBaseObjectGetDerivedStorage();
  if (!result)
  {
    return result;
  }

  v3 = result;
  v4 = OUTLINED_FUNCTION_587();
  fpfs_GetItemBufferedDuration(v4, v5, v6, 0);
  v7 = OUTLINED_FUNCTION_410();
  fpfs_GetNextTimeToPlay(v7, v8, v9);
  v18 = OUTLINED_FUNCTION_175(v10, v11, v12, v13, v14, v15, v16, v17, v24, v25, v26, v21, time2.value);
  CMTimeAdd(v20, v18, v19);
  OUTLINED_FUNCTION_332();
  return (CMTimeCompare(&time1, &time2) & 0x80000000) == 0 && *(v3 + 108) >= 0.0;
}

void fpfs_FinishAudioSyncAndStart()
{
  OUTLINED_FUNCTION_193();
  OUTLINED_FUNCTION_565();
  v344 = *MEMORY[0x1E69E9840];
  v5 = *(v4 + 16);
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  OUTLINED_FUNCTION_592(DerivedStorage);
  v308 = CMBaseObjectGetDerivedStorage();
  timescale = 0;
  v342 = 0;
  memset(&v334, 0, sizeof(v334));
  queueOut = 0;
  memset(&v332, 0, sizeof(v332));
  memset(&v330, 0, sizeof(v330));
  IsEmpty = CMBufferQueueIsEmpty(*(v0 + 88));
  if (IsEmpty)
  {
    v16 = *&v1->value;
    v330 = *v1;
  }

  else
  {
    IsEmpty = CMBufferQueueGetMinPresentationTimeStamp(&v330, *(v0 + 88));
  }

  OUTLINED_FUNCTION_697(IsEmpty, v8, v9, v10, v11, v12, v13, v14, v16, v254, v263, v272, v281, v292, v5, v308, v317, v326.value, *&v326.timescale, v326.epoch, v327, rhs.value, *&rhs.timescale, rhs.epoch, v329, v15, v330.value);
  v25 = OUTLINED_FUNCTION_345(v17, v18, v19, v20, v21, v22, v23, v24, v255, v264, v273, v282, v293, v300, v309, v318, v326.value, *&v326.timescale, v326.epoch, v327, rhs.value, *&rhs.timescale, rhs.epoch, v329, v330.value, *&v330.timescale, v330.epoch, v331, v332.value, *&v332.timescale, v332.epoch, v333, v334.value, *&v334.timescale, v334.epoch, queueOut, *(v0 + 208), *(v0 + 216), *(v0 + 224), v337, v338[0], v338[1], v338[2], v338[3], *&v339, v340[0], v340[1], v340[2], time.value);
  v27 = CMTimeCompare(v25, v26);
  v35 = &unk_1EAF16000;
  if (v27 >= 1)
  {
    if (dword_1EAF169F0)
    {
      OUTLINED_FUNCTION_213();
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      OUTLINED_FUNCTION_306(os_log_and_send_and_compose_flags_and_os_log_type, v37, v38, v39, v40, v41, v42, v43, v256, v265, v274, v283, v294, v301, v310, v319, v326.value, *&v326.timescale, v326.epoch, v327, rhs.value);
      OUTLINED_FUNCTION_37();
      if (v2)
      {
        if (*v3)
        {
          v44 = (CMBaseObjectGetDerivedStorage() + 888);
        }

        else
        {
          v44 = "";
        }

        v284 = v44;
        if (*(v0 + 16))
        {
          v45 = (CMBaseObjectGetDerivedStorage() + 3096);
        }

        else
        {
          v45 = "";
        }

        OUTLINED_FUNCTION_346();
        v46.n128_f64[0] = CMTimeGetSeconds(&time);
        v47 = v46.n128_u64[0];
        OUTLINED_FUNCTION_697(v48, v49, v50, v51, v52, v53, v54, v55, v46, v256, v265, v274, v284, v3, v301, v310, v319, v326.value, *&v326.timescale, v326.epoch, v327, rhs.value, *&rhs.timescale, rhs.epoch, v329, v56, v330.value);
        CMTimeGetSeconds(&time);
        LODWORD(lhs.value) = 136316674;
        OUTLINED_FUNCTION_280("fpfs_FinishAudioSyncAndStart", v257, v266, v275, v285);
        *(&v338[1] + 4) = v45;
        WORD2(v338[2]) = v57;
        *(&v338[2] + 6) = v47;
        HIWORD(v338[3]) = v57;
        v339 = *&v58;
        OUTLINED_FUNCTION_117();
        OUTLINED_FUNCTION_27();
        OUTLINED_FUNCTION_200();
        _os_log_send_and_compose_impl(v59, v60, v61, v62, v63, v64, v65, v66);
        OUTLINED_FUNCTION_776();
        v3 = v294;
      }

      OUTLINED_FUNCTION_7();
      OUTLINED_FUNCTION_449(v67, v68, v69, v70, v71);
    }

    for (i = v3[128]; i != v0; i = *(i + 24))
    {
      if (*(i + 48) == 1936684398)
      {
        time = *(i + 232);
        v73 = OUTLINED_FUNCTION_345(v27, v28, v29, v30, v31, v32, v33, v34, v256, v265, v274, v283, v294, v301, v310, v319, v326.value, *&v326.timescale, v326.epoch, v327, rhs.value, *&rhs.timescale, rhs.epoch, v329, v330.value, *&v330.timescale, v330.epoch, v331, v332.value, *&v332.timescale, v332.epoch, v333, v334.value, *&v334.timescale, v334.epoch, queueOut, *(v0 + 208), *(v0 + 216), *(v0 + 224), v337, v338[0], v338[1], v338[2], v338[3], *&v339, v340[0], v340[1], v340[2], time.value);
        v27 = CMTimeCompare(v73, v74);
        if (!v27)
        {
          *(i + 256) = v330;
        }
      }
    }

    fpfsi_ClearCachedAudioRenderChains(*(v0 + 16));
    v35 = &unk_1EAF16000;
  }

  v81 = OUTLINED_FUNCTION_663();
  *(v0 + 224) = v82;
  *(v0 + 208) = v81;
  if (*(v0 + 64) != v3[2 * *(v0 + 196) + 123] || (LOBYTE(time.value) = 0, fpfs_CompleteTrialSwitch(*(v0 + 16), v0, &time, v75, v76, v77, v78, v79, v256, SBYTE2(v256), BYTE3(v256), SHIDWORD(v256), v265, v274, v283, v294, v301, v310, v319, v326.value, *&v326.timescale, v326.epoch, SHIDWORD(v326.epoch), v327, SHIDWORD(v327), rhs.value, SHIDWORD(rhs.value), *&rhs.timescale, rhs.epoch, v329, v330.value, *&v330.timescale, v330.epoch, v331, v332.value, *&v332.timescale, v332.epoch, v333, v334.value, *&v334.timescale, v334.epoch, queueOut, lhs.value, *&lhs.timescale, lhs.epoch, v337, v338[0], v338[1], v338[2], v338[3], *&v339, v340[0], v340[1], v340[2], time.value, *&time.timescale), v80 = &unk_1EAF16000, !LOBYTE(time.value)))
  {
    if (v80[636])
    {
      OUTLINED_FUNCTION_213();
      v83 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      OUTLINED_FUNCTION_306(v83, v84, v85, v86, v87, v88, v89, v90, v256, v265, v274, v283, v294, v301, v310, v319, v326.value, *&v326.timescale, v326.epoch, v327, rhs.value);
      OUTLINED_FUNCTION_37();
      if (v2)
      {
        v294 = v3;
        if (*v3)
        {
          v91 = (CMBaseObjectGetDerivedStorage() + 888);
        }

        else
        {
          v91 = "";
        }

        v286 = v91;
        if (*(v0 + 16))
        {
          v92 = (CMBaseObjectGetDerivedStorage() + 3096);
        }

        else
        {
          v92 = "";
        }

        v93 = *(v0 + 32);
        OUTLINED_FUNCTION_346();
        CMTimeGetSeconds(&time);
        LODWORD(lhs.value) = 136316674;
        OUTLINED_FUNCTION_280("fpfs_FinishAudioSyncAndStart", v256, v265, v274, v286);
        *(&v338[1] + 4) = v92;
        WORD2(v338[2]) = v94;
        *(&v338[2] + 6) = v93;
        HIWORD(v338[3]) = v94;
        v339 = *&v95;
        OUTLINED_FUNCTION_117();
        OUTLINED_FUNCTION_27();
        OUTLINED_FUNCTION_200();
        _os_log_send_and_compose_impl(v96, v97, v98, v99, v100, v101, v102, v103);
        OUTLINED_FUNCTION_776();
        v35 = &unk_1EAF16000;
      }

      OUTLINED_FUNCTION_7();
      OUTLINED_FUNCTION_449(v104, v105, v106, v107, v108);
    }

    if (*(v0 + 168) != 1)
    {
      OUTLINED_FUNCTION_213();
      v109 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      OUTLINED_FUNCTION_306(v109, v110, v111, v112, v113, v114, v115, v116, v256, v265, v274, v283, v294, v301, v310, v319, v326.value, *&v326.timescale, v326.epoch, v327, rhs.value);
      OUTLINED_FUNCTION_37();
      if (v2)
      {
        v117 = *v3;
        v118 = v3;
        if (*v3)
        {
          v119 = (CMBaseObjectGetDerivedStorage() + 888);
        }

        else
        {
          v119 = "";
        }

        v120 = *(v0 + 16);
        if (v120)
        {
          v121 = (CMBaseObjectGetDerivedStorage() + 3096);
        }

        else
        {
          v121 = "";
        }

        v122 = *(v0 + 168);
        LODWORD(lhs.value) = 136316418;
        *(&lhs.value + 4) = "fpfs_FinishAudioSyncAndStart";
        LOWORD(lhs.flags) = 2048;
        *(&lhs.flags + 2) = v117;
        HIWORD(lhs.epoch) = 2082;
        v337 = v119;
        LOWORD(v338[0]) = 2048;
        *(v338 + 2) = v120;
        WORD1(v338[1]) = 2082;
        *(&v338[1] + 4) = v121;
        WORD2(v338[2]) = 1024;
        *(&v338[2] + 6) = v122;
        OUTLINED_FUNCTION_117();
        OUTLINED_FUNCTION_27();
        OUTLINED_FUNCTION_200();
        _os_log_send_and_compose_impl(v123, v124, v125, v126, v127, v128, v129, v130);
        OUTLINED_FUNCTION_776();
        v3 = v118;
        v35 = &unk_1EAF16000;
      }

      OUTLINED_FUNCTION_16();
      OUTLINED_FUNCTION_449(v131, v132, v133, v134, v135);
    }

    OUTLINED_FUNCTION_194();
    TrackOfType = fpfs_LastTrackOfType(v136, v137, v0);
    v146 = MEMORY[0x1E6960C70];
    if (!TrackOfType)
    {
      goto LABEL_94;
    }

    v147 = TrackOfType;
    time = *(TrackOfType + 208);
    v148 = OUTLINED_FUNCTION_345(TrackOfType, v139, v140, v141, v142, v143, v144, v145, v256, v265, v274, v283, v294, v301, v310, v319, v326.value, *&v326.timescale, v326.epoch, v327, rhs.value, *&rhs.timescale, rhs.epoch, v329, v330.value, *&v330.timescale, v330.epoch, v331, v332.value, *&v332.timescale, v332.epoch, v333, v334.value, *&v334.timescale, v334.epoch, queueOut, *(v0 + 208), *(v0 + 216), *(v0 + 224), v337, v338[0], v338[1], v338[2], v338[3], *&v339, v340[0], v340[1], v340[2], time.value);
    if (!CMTimeCompare(v148, v149) && !*(v311 + 504))
    {
      OUTLINED_FUNCTION_194();
      fpfs_LastTrackOfType(v252, v253, v147);
      fpfs_DeleteTrack(*(v0 + 16), v147);
LABEL_94:
      OUTLINED_FUNCTION_346();
      lhs = *v146;
      OUTLINED_FUNCTION_770();
      fpfs_StartTrackPlaying();
      goto LABEL_95;
    }

    OUTLINED_FUNCTION_316();
    v334 = *(v147 + 232);
    canCrossfade = fpfs_canCrossfade(v150, v147, v0);
    v160 = canCrossfade;
    if (canCrossfade)
    {
      time = *v1;
      v161 = OUTLINED_FUNCTION_345(canCrossfade, v152, v153, v154, v155, v156, v157, v158, v258, v267, v276, v287, v295, v302, v311, v320, v326.value, *&v326.timescale, v326.epoch, v327, rhs.value, *&rhs.timescale, rhs.epoch, v329, v330.value, *&v330.timescale, v330.epoch, v331, v332.value, *&v332.timescale, v332.epoch, v333, v334.value, *&v334.timescale, v334.epoch, queueOut, *gFSPAudioCrossfadeDuration, *&gFSPAudioCrossfadeDuration[8], *&gFSPAudioCrossfadeDuration[16], v337, v338[0], v338[1], v338[2], v338[3], *&v339, v340[0], v340[1], v340[2], time.value);
      v164 = CMTimeAdd(v163, v161, v162);
      OUTLINED_FUNCTION_344(v164, v165, v166, v167, v168, v169, v170, v171, v172, v259, v268, v277, v288, v296, v303, v312, v321, v326.value, *&v326.timescale, v326.epoch, v327, rhs.value, *&rhs.timescale, rhs.epoch, v329, v330.value, *&v330.timescale, v330.epoch, v331, v173, v332.value);
      *&rhs.value = kAudioRampingDownSilenceDuration;
      rhs.epoch = 0;
      canCrossfade = CMTimeAdd(&time, &lhs, &rhs);
      v332 = time;
    }

    time = *(v147 + 232);
    OUTLINED_FUNCTION_344(canCrossfade, v152, v153, v154, v155, v156, v157, v158, *&time.value, v258, v267, v276, v287, v295, v302, v311, v320, v326.value, *&v326.timescale, v326.epoch, v327, rhs.value, *&rhs.timescale, rhs.epoch, v329, v330.value, *&v330.timescale, v330.epoch, v331, v159, v332.value);
    v182 = OUTLINED_FUNCTION_345(v174, v175, v176, v177, v178, v179, v180, v181, v260, v269, v278, v289, v297, v304, v313, v322, v326.value, *&v326.timescale, v326.epoch, v327, rhs.value, *&rhs.timescale, rhs.epoch, v329, v330.value, *&v330.timescale, v330.epoch, v331, v332.value, *&v332.timescale, v332.epoch, v333, v334.value, *&v334.timescale, v334.epoch, queueOut, lhs.value, *&lhs.timescale, lhs.epoch, v337, v338[0], v338[1], v338[2], v338[3], *&v339, v340[0], v340[1], v340[2], time.value);
    v184 = CMTimeCompare(v182, v183);
    if ((v184 & 0x80000000) != 0)
    {
      v332 = *(v147 + 232);
    }

    if (!*(v147 + 112) || (time = v332, v192 = OUTLINED_FUNCTION_345(v184, v185, v186, v187, v188, v189, v190, v191, v261, v270, v279, v290, v298, v305, v314, v323, v326.value, *&v326.timescale, v326.epoch, v327, rhs.value, *&rhs.timescale, rhs.epoch, v329, v330.value, *&v330.timescale, v330.epoch, v331, v332.value, *&v332.timescale, v332.epoch, v333, v334.value, *&v334.timescale, v334.epoch, queueOut, *(v147 + 232), *(v147 + 240), *(v147 + 248), v337, v338[0], v338[1], v338[2], v338[3], *&v339, v340[0], v340[1], v340[2], v332.value), (CMTimeCompare(v192, v193) & 0x80000000) == 0))
    {
LABEL_75:
      if (!v160)
      {
        v222 = *(v147 + 232);
        *(v0 + 224) = *(v147 + 248);
        *(v0 + 208) = v222;
      }

      if (*(v147 + 128))
      {
        OUTLINED_FUNCTION_759();
        fpfs_scheduleForwardEndTimeForTrack();
        if (dword_1EAF169F0)
        {
          v233 = OUTLINED_FUNCTION_637(v35[317], v226, v227, v228, v229, v230, v231, v232, v261, v270, v279, v290, v298, v305, v314, v323, SWORD2(v323), SBYTE6(v323), 0, 0);
          value = v326.value;
          os_log_type_enabled(v233, type);
          OUTLINED_FUNCTION_134();
          if (v236)
          {
            v237 = v235;
          }

          else
          {
            v237 = value;
          }

          if (v237)
          {
            v238 = *v3;
            if (*v3)
            {
              v239 = (CMBaseObjectGetDerivedStorage() + 888);
            }

            else
            {
              v239 = "";
            }

            v316 = v239;
            v240 = *(v147 + 16);
            if (v240)
            {
              v241 = (CMBaseObjectGetDerivedStorage() + 3096);
            }

            else
            {
              v241 = "";
            }

            v307 = v241;
            v242 = *(v147 + 32);
            time = rhs;
            Seconds = CMTimeGetSeconds(&time);
            v244 = *(v147 + 128);
            fpfs_GetTime(v3, &time);
            v245 = CMTimeGetSeconds(&time);
            LODWORD(lhs.value) = 136317186;
            *(&lhs.value + 4) = "fpfs_FinishAudioSyncAndStart";
            LOWORD(lhs.flags) = 2048;
            *(&lhs.flags + 2) = v238;
            HIWORD(lhs.epoch) = 2082;
            v337 = v316;
            LOWORD(v338[0]) = 2048;
            *(v338 + 2) = v240;
            WORD1(v338[1]) = 2082;
            *(&v338[1] + 4) = v307;
            WORD2(v338[2]) = 2048;
            *(&v338[2] + 6) = v242;
            HIWORD(v338[3]) = 2048;
            v339 = Seconds;
            LOWORD(v340[0]) = 2048;
            *(v340 + 2) = v244;
            WORD1(v340[1]) = 2048;
            *(&v340[1] + 4) = v245;
            OUTLINED_FUNCTION_117();
            v246 = OUTLINED_FUNCTION_31();
            _os_log_send_and_compose_impl(v246, v247, v248, v249, v250, v233, type, v251);
          }

          OUTLINED_FUNCTION_4();
          fig_log_call_emit_and_clean_up_after_send_and_compose();
          v146 = MEMORY[0x1E6960C70];
        }
      }

      else
      {
        OUTLINED_FUNCTION_133();
        fpfs_StopFeedingTrack(v223, v224, v225);
      }

      goto LABEL_94;
    }

    AllocatorForMedia = FigGetAllocatorForMedia();
    CallbacksForUnsortedSampleBuffers = CMBufferQueueGetCallbacksForUnsortedSampleBuffers();
    if (!CMBufferQueueCreate(AllocatorForMedia, 0, CallbacksForUnsortedSampleBuffers, &queueOut) && !fpfs_StealBuffersAfterTransitionMarker(*(*(v147 + 112) + 40), 1, queueOut, 0, v196, v197, v198, v199, v261, v270, v279, v290, v298, v305, v314, v323, v326.value, *&v326.timescale, v326.epoch, v327))
    {
      if (CMBufferQueueIsEmpty(queueOut))
      {
        if (*(CMBaseObjectGetDerivedStorage() + 504))
        {
          time = v334;
          if (v160)
          {
            lhs = v334;
            OUTLINED_FUNCTION_678();
            CMTimeSubtract(&time, &lhs, &rhs);
            rhs = time;
            *&v326.value = kAudioRampingDownSilenceDuration;
            v326.epoch = 0;
            CMTimeSubtract(&lhs, &rhs, &v326);
            time = lhs;
          }

          lhs = time;
          rhs = *(v0 + 208);
          if (CMTimeCompare(&lhs, &rhs) >= 1)
          {
            *(v0 + 208) = time;
          }
        }
      }

      else
      {
        memset(&time, 0, sizeof(time));
        if (queueOut)
        {
          CMBufferQueueGetMinPresentationTimeStamp(&time, queueOut);
        }

        else
        {
          time = *v146;
        }

        if (time.flags)
        {
          v334 = time;
        }
      }

      v200 = CMBufferQueueDequeueAndRetain(queueOut);
      if (v200)
      {
        v201 = v200;
        do
        {
          OutputPresentationTimeStamp = CMSampleBufferGetOutputPresentationTimeStamp(&time, v201);
          v342 = time.value;
          timescale = time.timescale;
          if (time.flags)
          {
            time.value = v342;
            time.timescale = timescale;
            OUTLINED_FUNCTION_344(OutputPresentationTimeStamp, v203, v204, v205, v206, v207, v208, v209, v210, v261, v270, v279, v290, v298, v305, v314, v323, v326.value, *&v326.timescale, v326.epoch, v327, rhs.value, *&rhs.timescale, rhs.epoch, v329, v330.value, *&v330.timescale, v330.epoch, v331, v211, v332.value);
            v220 = OUTLINED_FUNCTION_345(v212, v213, v214, v215, v216, v217, v218, v219, v262, v271, v280, v291, v299, v306, v315, v324, v326.value, *&v326.timescale, v326.epoch, v327, rhs.value, *&rhs.timescale, rhs.epoch, v329, v330.value, *&v330.timescale, v330.epoch, v331, v332.value, *&v332.timescale, v332.epoch, v333, v334.value, *&v334.timescale, v334.epoch, queueOut, lhs.value, *&lhs.timescale, lhs.epoch, v337, v338[0], v338[1], v338[2], v338[3], *&v339, v340[0], v340[1], v340[2], time.value);
            if (CMTimeCompare(v220, v221) < 0)
            {
              CMBufferQueueEnqueue(*(*(v147 + 112) + 40), v201);
              fpfs_GetEndOutputPresentationTimeStamp(v201, &v334);
            }
          }

          else
          {
            CMBufferQueueEnqueue(*(*(v147 + 112) + 40), v201);
          }

          CFRelease(v201);
          v201 = CMBufferQueueDequeueAndRetain(queueOut);
        }

        while (v201);
      }

      FigBufferQueueRelease();
      *(v147 + 232) = v334;
      goto LABEL_75;
    }
  }

LABEL_95:
  OUTLINED_FUNCTION_191();
}

uint64_t fpfs_AdjustTime()
{
  OUTLINED_FUNCTION_187();
  memset(&v6, 0, sizeof(v6));
  CMSampleBufferGetPresentationTimeStamp(&v5, v2);
  lhs = v5;
  rhs = *(v0 + 412);
  CMTimeSubtract(&time1, &lhs, &rhs);
  lhs = *(v0 + 144);
  CMTimeAdd(&rhs, &time1, &lhs);
  v3 = CMSampleBufferSetOutputPresentationTimeStamp(v1, &rhs);
  if (!v3 && !fpfs_IsMarkerOnly(v1))
  {
    fpfs_GetEndOutputPresentationTimeStamp(v1, &v6);
    time1 = *(v0 + 232);
    lhs = v6;
    if (CMTimeCompare(&time1, &lhs) < 0)
    {
      *(v0 + 232) = v6;
    }
  }

  return v3;
}

uint64_t fpfs_SetRateWithFadeInternal(void *a1, CMTime *a2, float a3)
{
  v73 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v16 = DerivedStorage;
  if ((a2->flags & 0x1D) == 1)
  {
    time = *a2;
    CMTimeGetSeconds(&time);
  }

  if (dword_1EAF169F0)
  {
    v17 = OUTLINED_FUNCTION_48(DerivedStorage, v9, v10, v11, v12, v13, v14, v15, v58, v60, v62, v64, SBYTE2(v64), SBYTE3(v64), SHIDWORD(v64));
    OUTLINED_FUNCTION_130(v17, v18, v19, v20, v21, v22, v23, v24, v59, v61, v63, v65, v66, v67, v68);
    OUTLINED_FUNCTION_28();
    if (v4)
    {
      if (a1)
      {
        CMBaseObjectGetDerivedStorage();
      }

      *v69 = 136315906;
      OUTLINED_FUNCTION_139();
      *&v69[14] = a1;
      OUTLINED_FUNCTION_443();
      v70 = v25;
      LOWORD(v71) = v26;
      *(&v71 + 2) = v27;
      OUTLINED_FUNCTION_39();
      OUTLINED_FUNCTION_23();
      _os_log_send_and_compose_impl(v28, v29, v30, v31, v32, v33, v3, v34);
      OUTLINED_FUNCTION_408();
    }

    OUTLINED_FUNCTION_2();
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (a3 != 0.0 && !*(v16 + 80))
  {
    fpfs_PullNextItem(a1);
  }

  v35 = OUTLINED_FUNCTION_265();
  Next = fpfs_getNext(v35, v36);
  v45 = Next;
  if (Next)
  {
    Next = CMBaseObjectGetDerivedStorage();
    v46 = *(Next + 840);
  }

  else
  {
    v46 = 0.0;
  }

  if (v46 == a3)
  {
    return 0;
  }

  if (a3 == 0.0)
  {
    fpfs_applySoftwareVolume(a1, 1);
    return fpfs_pauseCurrentItem(a1);
  }

  if (v46 != 0.0)
  {
    return OUTLINED_FUNCTION_299(Next, v38, v39, v40, v41, v42, v43, v44, v58, v60, v62, v64, *v69, *&v69[16], v70, v71, *(&v71 + 1), *&time.value, time.epoch);
  }

  v48 = OUTLINED_FUNCTION_203();
  fpfs_applySoftwareVolume(v48, v49);
  if (v45)
  {
    CMBaseObjectGetDerivedStorage();
    fpfsi_applySoftwareVolume(v45, 3);
  }

  result = OUTLINED_FUNCTION_299(v50, v51, v52, v53, v54, v55, v56, v57, v58, v60, v62, v64, *v69, *&v69[16], v70, v71, *(&v71 + 1), *&time.value, time.epoch);
  if (!result)
  {
    fpfs_applySoftwareVolume(a1, 0);
    return 0;
  }

  return result;
}

void fpfs_SeekDidComplete()
{
  OUTLINED_FUNCTION_650();
  v164 = v2;
  v165 = v3;
  v143 = v3;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  OUTLINED_FUNCTION_187();
  v163 = *MEMORY[0x1E69E9840];
  cf = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v13 = CMBaseObjectGetDerivedStorage();
  if (*MEMORY[0x1E695FF58] == 1)
  {
    kdebug_trace();
  }

  if (FPSupport_SeekIDGetSource(*(v13 + 2220)) != 1)
  {
    v14 = *(v13 + 2568);
    if (v14)
    {
      v15 = *(*(CMBaseObjectGetVTable() + 16) + 32);
      if (v15)
      {
        v15(v14, @"playerStats", 0x1F0B666D8, 1);
      }
    }

    v139 = @"playerStats";
    if (*(v13 + 3184))
    {
      v16 = *(v13 + 2568);
      UpTimeNanoseconds = FigGetUpTimeNanoseconds();
      if (v16)
      {
        if (*(*(CMBaseObjectGetVTable() + 16) + 32))
        {
          OUTLINED_FUNCTION_362();
          v17(v16);
        }
      }
    }

    if (*(v13 + 1484))
    {
      v18 = *(v13 + 2568);
      if (v18)
      {
        v19 = *(*(CMBaseObjectGetVTable() + 16) + 32);
        if (v19)
        {
          v19(v18, @"playerStats", 0x1F0B66738, 1);
        }
      }
    }
  }

  if (FPSupport_SeekIDGetSource(v11) != 1)
  {
    AllocatorForMedia = FigGetAllocatorForMedia();
    FigMetricItemSeekDidCompleteEventCreate(AllocatorForMedia, *(v13 + 1680), v9, &cf, *(DerivedStorage + 108), *(v13 + 840));
    v21 = *(v13 + 3400);
    v22 = cf;
    v23 = *(*(CMBaseObjectGetVTable() + 16) + 40);
    if (v23)
    {
      v23(v21, 0, v22);
    }
  }

  if (v7)
  {
    *v7 = 0;
  }

  if (*(v13 + 2992))
  {
    v45 = v1;
    CMBaseObjectGetDerivedStorage();
    OUTLINED_FUNCTION_297();
    v46 = CMBaseObjectGetDerivedStorage();
    v151 = 0uLL;
    v152 = 0;
    v47 = FigGetUpTimeNanoseconds();
    v55 = v47;
    v56 = *(v46 + 2944);
    if (v7)
    {
      *v7 = 0;
    }

    time = *(v46 + 2960);
    v57 = OUTLINED_FUNCTION_623(v47, v48, v49, v50, v51, v52, v53, v54, v119, v123, v127, v131, UpTimeNanoseconds, v139, v143, cf, *(v46 + 320), *(v46 + 328), *(v46 + 336), v150, v151, *(&v151 + 1), v152, v153, v154, v155, *(&v155 + 1), v156, time.value);
    if (CMTimeCompare(v57, v58))
    {
      goto LABEL_46;
    }

    v59 = v55 - v56;
    *(v46 + 2952) = v59;
    v60 = *(v46 + 2944);
    OUTLINED_FUNCTION_232(v46 + 2960);
    time.epoch = v61;
    v62 = CMBaseObjectGetDerivedStorage();
    v63 = malloc_type_malloc(0x38uLL, 0x10A0040C46062B5uLL);
    if (v63)
    {
      *(v63 + 2) = v60;
      *(v63 + 3) = v59;
      *(v63 + 32) = time;
      v64 = *(v62 + 2920);
      v65 = **(v64 + 8);
      if (v65 && v60 + v59 <= *(v65 + 24) + *(v65 + 16))
      {
        goto LABEL_45;
      }

      *v63 = 0;
      *(v63 + 1) = v64;
      *v64 = v63;
      *(v62 + 2920) = v63;
      ++*(v62 + 2984);
    }

    else
    {
      OUTLINED_FUNCTION_120();
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v120, v124, v128);
    }

    v63 = 0;
LABEL_45:
    free(v63);
LABEL_46:
    fpfsi_getSeekableTimeRange(&time);
    value = time.value;
    flags = time.flags;
    timescale = time.timescale;
    if ((time.flags & 1) == 0 || (v159 & 0x100000000) == 0 || v160 || v158 < 0)
    {
      OUTLINED_FUNCTION_120();
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v120, v124, v128);
    }

    else
    {
      epoch = time.epoch;
      time.timescale = timescale;
      v76 = OUTLINED_FUNCTION_623(v66, v67, v68, v69, v70, v71, v72, v73, v120, v124, v128, v132, v136, v140, v145, cf, v158, v159, 0, v150, v151, *(&v151 + 1), v152, v153, v154, v155, *(&v155 + 1), v156, value);
      CMTimeAdd(v78, v76, v77);
      OUTLINED_FUNCTION_701();
      v87 = OUTLINED_FUNCTION_623(v79, v80, v81, v82, v83, v84, v85, v86, v121, v125, v129, v133, v137, v141, v146, cf, v151, *(&v151 + 1), v152, v150, v151, *(&v151 + 1), v152, v153, v154, v155, *(&v155 + 1), v156, time.value);
      if (CMTimeCompare(v87, v88) && *(v11 + 108) > 0.0 || (OUTLINED_FUNCTION_701(), v97 = OUTLINED_FUNCTION_623(v89, v90, v91, v92, v93, v94, v95, v96, v122, v126, v130, v134, v138, v142, v147, cf, value, __SPAIR64__(flags, timescale), epoch, v150, v151, *(&v151 + 1), v152, v153, v154, v155, *(&v155 + 1), v156, time.value), CMTimeCompare(v97, v98) >= 1) && *(v11 + 108) < 0.0)
      {
        fpfsi_HandleNextBestEffortTrickplayModeSeek(v45);
        if (v7)
        {
          *v7 = 1;
        }
      }

      else
      {
        fpfsi_EndBestEffortSeekTrickplayMode(v46);
        OUTLINED_FUNCTION_235();
        fpfs_StopPlayingItem();
      }
    }

    Mutable = 0;
    goto LABEL_67;
  }

  *(v13 + 2944) = 0u;
  v24 = MEMORY[0x1E6960C70];
  v25 = OUTLINED_FUNCTION_284();
  fpfsi_setLastSeekTimeSet(v25, v26);
  *(v13 + 3184) = 0;
  fpfsi_updateMaxPlayThroughTime(v0);
  v27 = *v24;
  *(v13 + 1472) = *v24;
  v28 = *(v24 + 2);
  *(v13 + 1488) = v28;
  *(v13 + 344) = v27;
  *(v13 + 360) = v28;
  *(v13 + 368) = v27;
  *(v13 + 384) = v28;
  v29 = *(v13 + 1576);
  if (v29)
  {
    CFRelease(v29);
    *(v13 + 1576) = 0;
  }

  if (!v11)
  {
    Mutable = 0;
LABEL_67:
    if (fpfs_shouldReleaseRenderChainForPausing(v0))
    {
      fpfsi_ReleaseRenderChainsForPausing(v0);
    }

    goto LABEL_69;
  }

  if (*(v13 + 1436))
  {
    v30 = *(v13 + 392);
    if ((v30 & 0x10) != 0)
    {
      v31 = (v30 >> 6) & 1;
      v32 = OUTLINED_FUNCTION_440();
      fpfs_GetNextTimeToPlay(v32, 0, v33);
      OUTLINED_FUNCTION_439();
      fpfsi_applyTimeToPausePlayback(v34, v35, v36, v37, v31);
    }
  }

  v38 = FigGetAllocatorForMedia();
  Mutable = CFDictionaryCreateMutable(v38, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (!Mutable)
  {
    OUTLINED_FUNCTION_120();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v119, v123, v127);
    goto LABEL_69;
  }

  if (!FigCFDictionarySetInt32())
  {
    FigCFDictionarySetValue();
    v40 = *(v13 + 2232);
    if (v40)
    {
      CFRelease(v40);
      *(v13 + 2232) = 0;
    }

    if (!FigCFDictionarySetInt32())
    {
      OUTLINED_FUNCTION_549();
      time.epoch = v41;
      if (!FigCFDictionarySetCMTime())
      {
        if (dword_1EAF169F0)
        {
          v144 = v5;
          LODWORD(v149) = 0;
          LOBYTE(value) = 0;
          OUTLINED_FUNCTION_279();
          os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          v43 = value;
          os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, value);
          OUTLINED_FUNCTION_70();
          if (DerivedStorage)
          {
            if (v0)
            {
              v44 = (CMBaseObjectGetDerivedStorage() + 3096);
            }

            else
            {
              v44 = "";
            }

            v99 = *(v13 + 2220);
            Description = FigPlaybackItemSeekReasonGetDescription(*(v13 + 2240));
            OUTLINED_FUNCTION_232(v144);
            time.epoch = v101;
            CMTimeGetSeconds(&time);
            LODWORD(v151) = 136316674;
            OUTLINED_FUNCTION_140();
            v153 = v44;
            LOWORD(v154) = 1024;
            *(&v154 + 2) = v11;
            HIWORD(v154) = 1024;
            LODWORD(v155) = v99;
            WORD2(v155) = 2080;
            *(&v155 + 6) = Description;
            HIWORD(v155) = v102;
            v156 = v103;
            OUTLINED_FUNCTION_62();
            OUTLINED_FUNCTION_23();
            _os_log_send_and_compose_impl(v104, v105, v106, v107, v108, v109, v43, v110);
          }

          OUTLINED_FUNCTION_7();
          OUTLINED_FUNCTION_454(v111, v112, v113, v114, v115);
        }

        *(v13 + 2240) = 0;
        if (*(v13 + 2220) == v11)
        {
          *(v13 + 2220) = 0;
        }

        v116 = OUTLINED_FUNCTION_228();
        fpfs_EnqueueNotification(v116, v117, v118, Mutable);
        goto LABEL_67;
      }
    }
  }

LABEL_69:
  if (cf)
  {
    CFRelease(cf);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  OUTLINED_FUNCTION_602();
}

void fpfs_CheckPrebufferedLevels()
{
  OUTLINED_FUNCTION_182();
  HIDWORD(v795) = v1;
  v3 = v2;
  LODWORD(v676) = v4;
  v6 = v5;
  v8 = v7;
  v930 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v664 = OUTLINED_FUNCTION_180(DerivedStorage);
  v688 = CMBaseObjectGetDerivedStorage();
  memset(&v898, 0, sizeof(v898));
  memset(&v896, 0, sizeof(v896));
  v894 = 0uLL;
  v895 = 0;
  memset(&v893, 0, sizeof(v893));
  v911 = 0;
  *v909 = 0u;
  v910 = 0u;
  *v907 = 0u;
  v908 = 0u;
  v10 = MEMORY[0x1E6960C88];
  OUTLINED_FUNCTION_673();
  *v859 = *v10;
  *&v859[16] = *(v10 + 16);
  v11 = *(v0 + 1680);
  v12 = MEMORY[0x1E6960C70];
  v815 = v6;
  v842[0] = *&v859[16];
  if (!v11)
  {
    OUTLINED_FUNCTION_567();
    if (!v18)
    {
      goto LABEL_377;
    }

    v15 = (v0 + 1072);
LABEL_7:
    v19 = *(v0 + 2256);
    v20 = *(v0 + 2264);
    v21 = *(v0 + 2284);
    if (v21 >= 1 && *(v0 + 2280))
    {
      if (*(v0 + 2288) <= 0.0)
      {
        if (v19 <= v21)
        {
          v19 = *(v0 + 2284);
        }
      }

      else
      {
        rhs.value = *v12;
        rhs.timescale = *(v12 + 8);
        v929.value = rhs.value;
        v929.timescale = rhs.timescale;
        if (*(v0 + 236))
        {
          v27 = OUTLINED_FUNCTION_234();
          fpfs_GetNextTimeToPlay(v27, v28, v29);
          rhs.value = time[0].value;
          flags = time[0].flags;
          rhs.timescale = time[0].timescale;
          epoch = time[0].epoch;
          v929.value = *(v0 + 224);
          v25 = *(v0 + 236);
          v929.timescale = *(v0 + 232);
          v26 = *(v0 + 240);
        }

        else
        {
          flags = *(v12 + 12);
          epoch = *(v12 + 16);
          v25 = flags;
          v26 = epoch;
        }

        if (flags & 1) != 0 && (v25)
        {
          time[0].value = rhs.value;
          *&time[0].timescale = __PAIR64__(flags, rhs.timescale);
          time[0].epoch = epoch;
          *time2 = v929.value;
          *&time2[8] = v929.timescale;
          *&time2[12] = v25;
          *&time2[16] = v26;
          v30 = OUTLINED_FUNCTION_241();
          v833 = v31;
          v33 = CMTimeCompare(v30, v32);
          if (v33 >= 1)
          {
            v41 = *(v0 + 2288);
            *time2 = rhs.value;
            *&time2[8] = rhs.timescale;
            *&time2[12] = flags;
            *&time2[16] = epoch;
            v926.value = v929.value;
            v926.timescale = v929.timescale;
            v926.flags = v25;
            v926.epoch = v833;
            v42 = OUTLINED_FUNCTION_85(v33, v34, v35, v36, v37, v38, v39, v40, v570, v582, v594[0], v594[1], v617, *(&v617 + 1), v640, v652, v664, v676, v688, v700, v712, v726, v738, v753, v765, v776, v786, v795, v804, v815, v824, v833, *&v859[16], v842[1], *v859, *&v859[8], *&v859[16], v884, v893.value, *&v893.timescale, v893.epoch, v894, *(&v894 + 1), v895, v896.value, *&v896.timescale, v896.epoch, v897, v898.value, *&v898.timescale, v898.epoch, v899, v900[0], v900[1], v901, cf, v903, v904, v905, v906, v907[0], v907[1], v908);
            CMTimeSubtract(v44, v42, v43);
            Seconds = CMTimeGetSeconds(time);
            v46 = *(v0 + 2284);
            if (v19 < v46)
            {
              v47 = v41 * Seconds;
              if (v46 >= (v19 + v47))
              {
                v19 = (v19 + v47);
              }

              else
              {
                v19 = *(v0 + 2284);
              }
            }
          }
        }

        v6 = v815;
      }
    }

    else if (*(v688 + 816))
    {
      if (v19 >= 120)
      {
        v20 = 120;
      }

      else
      {
        v20 = *(v0 + 2256);
      }
    }

    else
    {
      if (v19 >= 120)
      {
        v22 = 120;
      }

      else
      {
        v22 = *(v0 + 2256);
      }

      if (*(v0 + 2260))
      {
        v20 = v22;
      }
    }

    HIDWORD(v676) = 1;
    CMTimeMake(time, v20, 1);
    v898 = time[0];
    CMTimeMake(time, v19, 1);
    v896 = time[0];
    goto LABEL_33;
  }

  FigAlternateIsIFrameOnly(v11);
  OUTLINED_FUNCTION_567();
  if (!v14)
  {
    goto LABEL_377;
  }

  v15 = (v0 + 1072);
  if (!v13)
  {
    goto LABEL_7;
  }

  v16 = OUTLINED_FUNCTION_537();
  CMTimeMake(&v898, (v16 * 5.0), 1);
  v17 = OUTLINED_FUNCTION_537();
  CMTimeMake(&v896, (v17 * 10.0), 1);
  HIDWORD(v676) = 0;
LABEL_33:
  v48 = 0;
  v49 = 0;
  LODWORD(v833) = *(v10 + 12);
  v713 = v0 + 472;
  v50 = v907;
  do
  {
    value = 1 << v48;
    if ((*v15 & (1 << v48)) == 0)
    {
      goto LABEL_47;
    }

    v52 = *(v0 + v48 + 472);
    if (!*(v0 + 553))
    {
      goto LABEL_39;
    }

    if (*(v0 + v48 + 472))
    {
      if (!*(v0 + 1744))
      {
        goto LABEL_47;
      }

      v52 = *(v0 + v48 + 475);
LABEL_39:
      if (v52)
      {
        goto LABEL_47;
      }
    }

    fpfs_CurrentSubStreamBufferedDuration(v48, time);
    *v50 = time[0];
    if (v3 == v48)
    {
      OUTLINED_FUNCTION_352();
      *(v8 + 16) = v53;
    }

    time[0] = *v859;
    OUTLINED_FUNCTION_53();
    v54 = OUTLINED_FUNCTION_241();
    if (CMTimeCompare(v54, v55) >= 1)
    {
      *v859 = *v50;
      *&v859[16] = v50[2];
    }

    v49 |= value;
    time[0] = *v50;
    *time2 = *&v898.value;
    v56 = OUTLINED_FUNCTION_237(v898.epoch, v570, v582, v594[0], v594[1], v617, *(&v617 + 1), v640, v652, v664, v676, v688, v700, v713, v726, v738, v753, v765, v776, v786, v795, v804, v815, v824, v833, v842[0], v842[1], *v859, *&v859[8], *&v859[16], v884, v893.value, *&v893.timescale, v893.epoch, v894, *(&v894 + 1), v895, v896.value, *&v896.timescale, v896.epoch, v897, v898.value, *&v898.timescale, v898.epoch, v899, v900[0], v900[1], v901, cf, v903, v904, v905, v906, v907[0], v907[1], v908, *(&v908 + 1), v909[0], v909[1], v910, *(&v910 + 1), v911, v912);
    if ((v56 & 0x80000000) == 0)
    {
      OUTLINED_FUNCTION_384(v56, v57, v58, v59, v60, v61, v62, v63, v570, v582, v594[0], v594[1], v617, *(&v617 + 1), v640, v652, v664, v676, v688, v700, v713, v726, v738, v753, v765, v776, v786, v795, v804, v815, v824, v833, v842[0], v842[1], *v859, *&v859[8], *&v859[16], v884, v893.value, *&v893.timescale, v893.epoch, v894, *(&v894 + 1), v895, v896.value, *&v896.timescale, v896.epoch, v897, v898.value, *&v898.timescale, v898.epoch, v899, v900[0], v900[1], v901, cf, v903, v904, v905, v906);
      time[0].flags = v833;
      time[0].epoch = v842[0];
      OUTLINED_FUNCTION_53();
      v64 = OUTLINED_FUNCTION_241();
      if (CMTimeCompare(v64, v65) >= 1)
      {
        v905 = *v50;
        LODWORD(v833) = *(v50 + 3);
        LODWORD(v906) = *(v50 + 2);
        v842[0] = v50[2];
      }
    }

LABEL_47:
    ++v48;
    v50 += 3;
  }

  while (v48 != 3);
  Ahead = fpfs_GetAllowExtendedReadAhead(v688);
  v68 = BYTE4(v676) ^ 1;
  v69 = 1;
  if (!Ahead)
  {
    v68 = 1;
  }

  v70 = 1;
  if ((v68 & 1) == 0)
  {
    v71 = *(v0 + 1024);
    if (v71)
    {
      while (1)
      {
        v70 = *(v71 + 168);
        if (v70 == 1)
        {
          break;
        }

        v71 = *(v71 + 24);
        if (!v71)
        {
          goto LABEL_54;
        }
      }
    }

    else
    {
LABEL_54:
      OUTLINED_FUNCTION_737();
      CMTimeMake(v72, 10, 1);
      if (*(v0 + 2284) < 1 || !*(v0 + 2280))
      {
        v926.value = v905;
        v926.timescale = v906;
        v926.flags = v833;
        v926.epoch = v842[0];
        OUTLINED_FUNCTION_96();
        OUTLINED_FUNCTION_476(v73, v74, v75, v76, v77, v78, v79, v80, v570, v582, v594[0], v594[1], v617, *(&v617 + 1), v640, v652, v664, v676, v688, v700, v713, v726, v738, v753, v765, v776, v786, v795, v804, v815, v824, v833, v842[0], v842[1], *v859, *&v859[8], *&v859[16], v884, v893.value, *&v893.timescale, v893.epoch, v894, *(&v894 + 1), v895, v896.value, *&v896.timescale, v896.epoch, v897, v898.value, *&v898.timescale, v898.epoch, v899, v900[0], v900[1], v901, cf, v903, v904, v905, v906, v907[0], v907[1], v908);
        *&v926.value = *&v898.value;
        OUTLINED_FUNCTION_404(v898.epoch);
        if (CMTimeCompare(v81, time2) < 0)
        {
          v926.value = v905;
          v926.timescale = v906;
          v926.flags = v833;
          v926.epoch = v842[0];
          OUTLINED_FUNCTION_96();
          OUTLINED_FUNCTION_476(v82, v83, v84, v85, v86, v87, v88, v89, v570, v582, v594[0], v594[1], v617, *(&v617 + 1), v640, v652, v664, v676, v688, v700, v713, v726, v738, v753, v766, v777, v786, v795, v804, v815, v824, v833, v842[0], v842[1], *v859, *&v859[8], *&v859[16], v884, v893.value, *&v893.timescale, v893.epoch, v894, *(&v894 + 1), v895, v896.value, *&v896.timescale, v896.epoch, v897, v898.value, *&v898.timescale, v898.epoch, v899, v900[0], v900[1], v901, cf, v903, v904, v905, v906, v907[0], v907[1], v908);
          *(&v67 + 1) = *&time2[8];
          v898 = *time2;
        }
      }

      v70 = 0;
    }
  }

  HIDWORD(v700) = v70;
  v90 = 0;
  LODWORD(v786) = 0;
  HIDWORD(v824) = 0;
  v91 = v907;
  *&v67 = 136316930;
  *v767 = v67;
  do
  {
    v92 = 1 << v90;
    if (((1 << v90) & v49) != 0)
    {
      OUTLINED_FUNCTION_152();
      *time2 = *&v898.value;
      if ((OUTLINED_FUNCTION_237(v898.epoch, v570, v582, v594[0], v594[1], v617, *(&v617 + 1), v640, v652, v664, v676, v688, v700, v713, v726, v738, v753, v767[0], v767[1], v786, v795, v804, v815, v824, v833, v842[0], v842[1], *v859, *&v859[8], *&v859[16], v884, v893.value, *&v893.timescale, v893.epoch, v894, *(&v894 + 1), v895, v896.value, *&v896.timescale, v896.epoch, v897, v898.value, *&v898.timescale, v898.epoch, v899, v900[0], v900[1], v901, cf, v903, v904, v905, v906, v907[0], v907[1], v908, *(&v908 + 1), v909[0], v909[1], v910, *(&v910 + 1), v911, v912) & 0x80000000) != 0)
      {
        if (HIDWORD(v795) && dword_1EAF169F0)
        {
          OUTLINED_FUNCTION_686();
          v98 = OUTLINED_FUNCTION_487(qword_1EAF169E8);
          OUTLINED_FUNCTION_818(v98);
          OUTLINED_FUNCTION_121();
          if (v157)
          {
            v100 = v99;
          }

          else
          {
            v100 = value;
          }

          if (v100)
          {
            v101 = *v0;
            if (*v0)
            {
              v102 = (CMBaseObjectGetDerivedStorage() + 888);
            }

            else
            {
              v102 = "";
            }

            v755 = v102;
            if (v815)
            {
              v121 = (CMBaseObjectGetDerivedStorage() + 3096);
            }

            else
            {
              v121 = "";
            }

            v741 = v121;
            OUTLINED_FUNCTION_152();
            CMTimeGetSeconds(time);
            *&time[0].value = *&v898.value;
            OUTLINED_FUNCTION_246(v898.epoch);
            CMTimeGetSeconds(v122);
            *time2 = v767[0];
            OUTLINED_FUNCTION_531(time2);
            *(v123 + 14) = v101;
            OUTLINED_FUNCTION_226(v124, v125, v126, v127, v128, v129, v130, v131, v570, v582, v594[0], v594[1], v617, *(&v617 + 1), v640, v652, v664, v676, v688, v700, v713, v726, v741, v755);
            *(v132 + 34) = v815;
            OUTLINED_FUNCTION_83(v132, v572, v584, v596, v607, v619, v630, v642, v654, v666, v678, v690, v702, v715, v728, v742);
            *(v133 + 70) = v134;
            OUTLINED_FUNCTION_116();
            v135 = OUTLINED_FUNCTION_34();
            _os_log_send_and_compose_impl(v135, v136, v137, v138, &dword_1962D5000, v804, 1, "<<<< FigStreamPlayer >>>> %s: [%p|%{public}s] <%p|%{public}s>: substream %d at %f < low water %f");
            value = v926.value;
            v69 = 1;
          }

          OUTLINED_FUNCTION_1();
          fig_log_call_emit_and_clean_up_after_send_and_compose();
          v6 = v815;
        }

        LODWORD(v786) = v786 | v92;
      }

      else
      {
        OUTLINED_FUNCTION_152();
        *time2 = *&v896.value;
        if ((OUTLINED_FUNCTION_237(v896.epoch, v570, v582, v594[0], v594[1], v617, *(&v617 + 1), v640, v652, v664, v676, v688, v700, v713, v726, v738, v753, v767[0], v767[1], v786, v795, v804, v815, v824, v833, v842[0], v842[1], *v859, *&v859[8], *&v859[16], v884, v893.value, *&v893.timescale, v893.epoch, v894, *(&v894 + 1), v895, v896.value, *&v896.timescale, v896.epoch, v897, v898.value, *&v898.timescale, v898.epoch, v899, v900[0], v900[1], v901, cf, v903, v904, v905, v906, v907[0], v907[1], v908, *(&v908 + 1), v909[0], v909[1], v910, *(&v910 + 1), v911, v912) & 0x80000000) == 0)
        {
          if (HIDWORD(v795) && dword_1EAF169F0)
          {
            OUTLINED_FUNCTION_686();
            v93 = OUTLINED_FUNCTION_487(qword_1EAF169E8);
            OUTLINED_FUNCTION_818(v93);
            OUTLINED_FUNCTION_121();
            if (v157)
            {
              v95 = v94;
            }

            else
            {
              v95 = value;
            }

            if (v95)
            {
              v96 = *v0;
              if (*v0)
              {
                v97 = (CMBaseObjectGetDerivedStorage() + 888);
              }

              else
              {
                v97 = "";
              }

              v754 = v97;
              if (v815)
              {
                v103 = (CMBaseObjectGetDerivedStorage() + 3096);
              }

              else
              {
                v103 = "";
              }

              v739 = v103;
              OUTLINED_FUNCTION_152();
              CMTimeGetSeconds(time);
              *&time[0].value = *&v896.value;
              OUTLINED_FUNCTION_246(v896.epoch);
              CMTimeGetSeconds(v104);
              *time2 = v767[0];
              OUTLINED_FUNCTION_531(time2);
              *(v105 + 14) = v96;
              OUTLINED_FUNCTION_226(v106, v107, v108, v109, v110, v111, v112, v113, v570, v582, v594[0], v594[1], v617, *(&v617 + 1), v640, v652, v664, v676, v688, v700, v713, v726, v739, v754);
              *(v114 + 34) = v815;
              OUTLINED_FUNCTION_83(v114, v571, v583, v595, v606, v618, v629, v641, v653, v665, v677, v689, v701, v714, v727, v740);
              *(v115 + 70) = v116;
              OUTLINED_FUNCTION_116();
              v117 = OUTLINED_FUNCTION_34();
              _os_log_send_and_compose_impl(v117, v118, v119, v120, &dword_1962D5000, v804, 1, "<<<< FigStreamPlayer >>>> %s: [%p|%{public}s] <%p|%{public}s>: substream %d at %f > high water %f");
              value = v926.value;
              v69 = 1;
            }

            OUTLINED_FUNCTION_1();
            fig_log_call_emit_and_clean_up_after_send_and_compose();
            v6 = v815;
          }

          HIDWORD(v824) |= v92;
        }
      }
    }

    ++v90;
    v91 += 3;
  }

  while (v90 != 3);
  if ((v700 & 0x100000000) != 0)
  {
    goto LABEL_193;
  }

  v139 = CMBaseObjectGetDerivedStorage();
  v141 = 0;
  v142 = 0;
  HIDWORD(v700) = 0;
  v652 = *(v139 + 544);
  LODWORD(v900[0]) = 0;
  LODWORD(cf) = 0;
  v753 = v139;
  while (2)
  {
    if ((*(v139 + 1072) & (1 << v141)) == 0)
    {
      goto LABEL_131;
    }

    LODWORD(v738) = 1 << v141;
    v767[0] = v142;
    v143 = CMBaseObjectGetDerivedStorage();
    OUTLINED_FUNCTION_173(v143);
    v804 = CMBaseObjectGetDerivedStorage();
    fpfs_GetNextTimeToPlay(v69, 1, time);
    v144 = *(v69 + 1024);
    if (!v144)
    {
      *(&v929.value + v141) = 0;
      goto LABEL_129;
    }

    v145 = 0;
    while (2)
    {
      if (v141 == *(v144 + 196))
      {
        v146 = *(v144 + 96);
        if (v146)
        {
          if (CMBufferQueueGetHead(v146))
          {
            MinPresentationTimeStamp = *(v144 + 96);
            if (MinPresentationTimeStamp)
            {
              MinPresentationTimeStamp = CMBufferQueueGetMinPresentationTimeStamp(time2, MinPresentationTimeStamp);
            }

            else
            {
              *time2 = *MEMORY[0x1E6960C70];
              *&time2[16] = *(MEMORY[0x1E6960C70] + 16);
            }

            v927.value = *time2;
            v69 = *&time2[12];
            v927.timescale = *&time2[8];
            v155 = *&time2[16];
            v928.value = *(v144 + 232);
            v156 = *(v144 + 244);
            v928.timescale = *(v144 + 240);
            v157 = (*(v144 + 156) & 0x1D) == 1 && (time2[12] & 0x1D) == 1;
            if (!v157 || (v156 & 0x1D) != 1)
            {
              v145 += CMBufferQueueGetTotalSize(*(v144 + 96));
              goto LABEL_123;
            }

            v159 = *(v144 + 248);
            v926.value = *(v144 + 232);
            v926.timescale = *(v144 + 240);
            v926.flags = v156;
            v926.epoch = v159;
            rhs.value = v927.value;
            rhs.timescale = v927.timescale;
            rhs.flags = *&time2[12];
            rhs.epoch = *&time2[16];
            OUTLINED_FUNCTION_476(MinPresentationTimeStamp, v147, v148, v149, v150, v151, v152, v153, v570, v582, v594[0], v594[1], v617, *(&v617 + 1), v640, v652, v664, v676, v688, v700, v713, v726, v738, v753, v767[0], v767[1], v786, v795, v804, v815, v824, v833, v842[0], v842[1], *v859, *&v859[8], *&v859[16], v884, v893.value, *&v893.timescale, v893.epoch, v894, *(&v894 + 1), v895, v896.value, *&v896.timescale, v896.epoch, v897, v898.value, *&v898.timescale, v898.epoch, v899, v900[0], v900[1], v901, cf, v903, v904, v905, v906, v907[0], v907[1], v908);
            v168 = CMTimeGetSeconds(time2);
            if (*(v805 + 108) >= 0.0)
            {
              *time2 = v928.value;
              *&time2[8] = v928.timescale;
              *&time2[12] = v156;
              *&time2[16] = v159;
              v187 = OUTLINED_FUNCTION_123(v160, v161, v162, v163, v164, v165, v166, v167, v573, v585, v597, v608, v620, v631, v643, v655, v667, v679, v691, v703, v716, v729, v743, v756, v768, v778, v787, v796, v805, v816, v825, v834, v843, v851, v860, v868, v876, v885, v893.value, *&v893.timescale, v893.epoch, v894, *(&v894 + 1), v895, v896.value, *&v896.timescale, v896.epoch, v897, v898.value, *&v898.timescale, v898.epoch, v899, v900[0], v900[1], v901, cf, v903, v904, v905, v906, v907[0], v907[1], v908);
              if (v187 >= 1 && v168 > 0.0)
              {
                *time2 = v927.value;
                *&time2[8] = v927.timescale;
                *&time2[12] = v69;
                *&time2[16] = v155;
                v69 = OUTLINED_FUNCTION_123(v187, v188, v189, v190, v191, v192, v193, v194, v570, v582, v594[0], v594[1], v617, *(&v617 + 1), v640, v652, v664, v676, v688, v700, v713, v726, v738, v753, v767[0], v767[1], v786, v795, v804, v815, v824, v833, v842[0], v842[1], *v859, *&v859[8], *&v859[16], v884, v893.value, *&v893.timescale, v893.epoch, v894, *(&v894 + 1), v895, v896.value, *&v896.timescale, v896.epoch, v897, v898.value, *&v898.timescale, v898.epoch, v899, v900[0], v900[1], v901, cf, v903, v904, v905, v906, v907[0], v907[1], v908);
                TotalSize = CMBufferQueueGetTotalSize(*(v144 + 96));
                if ((v69 & 0x80000000) == 0)
                {
                  goto LABEL_122;
                }

LABEL_118:
                v178 = TotalSize;
                v926.value = v928.value;
                v926.timescale = v928.timescale;
                v926.flags = v156;
                v926.epoch = v159;
                OUTLINED_FUNCTION_96();
                OUTLINED_FUNCTION_476(v179, v180, v181, v182, v183, v184, v185, v186, v570, v582, v594[0], v594[1], v617, *(&v617 + 1), v640, v652, v664, v676, v688, v700, v713, v726, v738, v753, v767[0], v767[1], v786, v795, v804, v815, v824, v833, v842[0], v842[1], *v859, *&v859[8], *&v859[16], v884, v893.value, *&v893.timescale, v893.epoch, v894, *(&v894 + 1), v895, v896.value, *&v896.timescale, v896.epoch, v897, v898.value, *&v898.timescale, v898.epoch, v899, v900[0], v900[1], v901, cf, v903, v904, v905, v906, v907[0], v907[1], v908);
                v145 = (CMTimeGetSeconds(time2) * v178 / v168 + v145);
              }
            }

            else
            {
              *time2 = v928.value;
              *&time2[8] = v928.timescale;
              *&time2[12] = v156;
              *&time2[16] = v159;
              v169 = OUTLINED_FUNCTION_123(v160, v161, v162, v163, v164, v165, v166, v167, v573, v585, v597, v608, v620, v631, v643, v655, v667, v679, v691, v703, v716, v729, v743, v756, v768, v778, v787, v796, v805, v816, v825, v834, v843, v851, v860, v868, v876, v885, v893.value, *&v893.timescale, v893.epoch, v894, *(&v894 + 1), v895, v896.value, *&v896.timescale, v896.epoch, v897, v898.value, *&v898.timescale, v898.epoch, v899, v900[0], v900[1], v901, cf, v903, v904, v905, v906, v907[0], v907[1], v908);
              if ((v169 & 0x80000000) != 0 && v168 > 0.0)
              {
                *time2 = v927.value;
                *&time2[8] = v927.timescale;
                *&time2[12] = v69;
                *&time2[16] = v155;
                v69 = OUTLINED_FUNCTION_123(v169, v170, v171, v172, v173, v174, v175, v176, v570, v582, v594[0], v594[1], v617, *(&v617 + 1), v640, v652, v664, v676, v688, v700, v713, v726, v738, v753, v767[0], v767[1], v786, v795, v804, v815, v824, v833, v842[0], v842[1], *v859, *&v859[8], *&v859[16], v884, v893.value, *&v893.timescale, v893.epoch, v894, *(&v894 + 1), v895, v896.value, *&v896.timescale, v896.epoch, v897, v898.value, *&v898.timescale, v898.epoch, v899, v900[0], v900[1], v901, cf, v903, v904, v905, v906, v907[0], v907[1], v908);
                TotalSize = CMBufferQueueGetTotalSize(*(v144 + 96));
                if (v69 >= 1)
                {
                  goto LABEL_118;
                }

LABEL_122:
                v145 += TotalSize;
              }
            }
          }
        }
      }

LABEL_123:
      v144 = *(v144 + 24);
      if (v144)
      {
        continue;
      }

      break;
    }

    *(&v929.value + v141) = v145;
    if (v145)
    {
      HIDWORD(v700) |= v738;
      goto LABEL_130;
    }

LABEL_129:
    v145 = 0;
LABEL_130:
    v142 = v145 + v767[0];
    v139 = v753;
LABEL_131:
    if (++v141 != 3)
    {
      continue;
    }

    break;
  }

  if (((*(v139 + 1072) ^ HIDWORD(v700)) & 7) != 0)
  {
    v195 = 0;
    v196 = 0;
    goto LABEL_184;
  }

  v197 = v142 >= *(v139 + 536) && v652 == 0;
  v6 = v815;
  if (v197)
  {
    v195 = 0;
    v196 = 0;
    goto LABEL_185;
  }

  v198 = 0;
  v199 = 0.0;
  v200 = v907;
  while (2)
  {
    if ((*(v139 + 1072) >> v198))
    {
      v201 = *(v139 + v198 + 472);
      if (!*(v139 + 553))
      {
        goto LABEL_144;
      }

      if (!*(v139 + v198 + 472))
      {
        goto LABEL_145;
      }

      if (*(v139 + 1744))
      {
        v201 = *(v139 + v198 + 475);
LABEL_144:
        if (!v201)
        {
LABEL_145:
          v202 = *(&v929.value + v198);
          if (v202)
          {
            v203 = v202 * 8.0;
            *&time[0].value = *v200;
            OUTLINED_FUNCTION_246(v200[2]);
            *&v140 = v203 / CMTimeGetSeconds(v204);
          }

          else
          {
            *&v140 = 0;
          }

          *(&v926.value + v198) = v140;
          v199 = v199 + *&v140;
        }
      }
    }

    ++v198;
    v200 += 3;
    if (v198 != 3)
    {
      continue;
    }

    break;
  }

  v205 = 0;
  v206 = v907;
  *&v140 = 136317954;
  *v594 = v140;
  while (2)
  {
    if ((*(v753 + 1072) & (1 << v205)) != 0)
    {
      v207 = *(v753 + v205 + 472);
      if (!*(v753 + 553))
      {
        goto LABEL_156;
      }

      if (!*(v753 + v205 + 472))
      {
        goto LABEL_157;
      }

      if (*(v753 + 1744))
      {
        v207 = *(v753 + v205 + 475);
LABEL_156:
        if (!v207)
        {
LABEL_157:
          CMTimeMake(time, 900, 1);
          *time2 = *v206;
          if ((OUTLINED_FUNCTION_341(v206[2], v570, v582, v594[0], v594[1], v617, *(&v617 + 1), v640, v652, v664, v676, v688, v700, v713, v726, v738, v753, v767[0], v767[1], v786, v795, v804, v815, v824, v833, v842[0], v842[1], *v859, *&v859[8], *&v859[16], v884, v893.value, *&v893.timescale, v893.epoch, v894, *(&v894 + 1), v895, v896.value, *&v896.timescale, v896.epoch, v897, v898.value, *&v898.timescale, v898.epoch, v899, v900[0], v900[1], v901, cf, v903, v904, v905, v906, v907[0], v907[1], v908, *(&v908 + 1), v909[0], v909[1], v910, *(&v910 + 1), v911, v912) & 0x80000000) != 0)
          {
            v208 = *(&v926.value + v205);
            v209 = (v208 * *(v753 + 536) / v199);
            v210 = v208 * *(v753 + 544) / v199;
            v211 = *(&v929.value + v205);
            if (v211 < v209)
            {
              p_cf = v900;
              goto LABEL_163;
            }

            if (v652 && v211 > v210)
            {
              p_cf = &cf;
LABEL_163:
              *p_cf |= 1 << v205;
            }

            if (dword_1EAF169F0 >= 3)
            {
              v804 = v210;
              LODWORD(rhs.value) = 0;
              LOBYTE(v928.value) = 0;
              os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
              v214 = rhs.value;
              v767[0] = os_log_and_send_and_compose_flags_and_os_log_type;
              LODWORD(v738) = LOBYTE(v928.value);
              os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, v928.value);
              OUTLINED_FUNCTION_121();
              if (!v157)
              {
                v217 = v214;
              }

              if (v217)
              {
                HIDWORD(v700) = v217;
                v218 = *v753;
                if (*v753)
                {
                  v219 = (CMBaseObjectGetDerivedStorage() + 888);
                }

                else
                {
                  v219 = "";
                }

                v640 = v219;
                if (v815)
                {
                  v221 = (CMBaseObjectGetDerivedStorage() + 3096);
                }

                else
                {
                  v221 = "";
                }

                *(&v617 + 1) = v221;
                *&time[0].value = *v206;
                OUTLINED_FUNCTION_246(v206[2]);
                v223 = CMTimeGetSeconds(v222);
                *time2 = v594[0];
                v224 = "Above";
                if (v211 >= v209)
                {
                  v225 = "Above";
                }

                else
                {
                  v225 = "Below";
                }

                *&time2[4] = "fpfs_AdjustBufferingForMemoryLimits";
                if (v211 < v804)
                {
                  v224 = "Below";
                }

                *&time2[12] = 2048;
                *&time2[14] = v218;
                *&time2[22] = 2082;
                *&time2[24] = v640;
                *&time2[32] = 2048;
                *&time2[34] = v815;
                *&time2[42] = 2082;
                *&time2[44] = *(&v617 + 1);
                *&time2[52] = 1024;
                *&time2[54] = v205;
                *&time2[58] = 2048;
                *&time2[60] = v223;
                *&time2[68] = 2048;
                *&time2[70] = v211;
                v914 = 2080;
                v915 = v225;
                v916 = 2048;
                v917 = v209;
                v918 = 2080;
                v919 = v224;
                v920 = 2048;
                v921 = v804;
                OUTLINED_FUNCTION_116();
                OUTLINED_FUNCTION_108();
                v220 = _os_log_send_and_compose_impl(v226, v227, v228, v229, &dword_1962D5000, v767[0], v738, "<<<< FigStreamPlayer >>>> %s: [%p|%{public}s] <%p|%{public}s>: substream %d duration %f bytes %zu. %s allowance of %zu. %s limit of %zu");
              }

              else
              {
                v220 = 0;
              }

              OUTLINED_FUNCTION_61(qword_1EAF169E8, v215, v216, v220, v220 != time);
            }
          }
        }
      }
    }

    ++v205;
    v206 += 3;
    if (v205 != 3)
    {
      continue;
    }

    break;
  }

  v196 = v900[0];
  v195 = cf;
LABEL_184:
  v6 = v815;
LABEL_185:
  v230 = v195 & ~v786 | HIDWORD(v824);
  if (*(v688 + 816) || (v231 = v196, *(v0 + 2260)))
  {
    v231 = v196 & ~v230;
  }

  v232 = v230 & ~v231;
  if (*(v0 + 2284) >= 1 && *(v0 + 2280))
  {
    v233 = 0;
  }

  else
  {
    v233 = v49 & ~(v786 | v196 | HIDWORD(v824));
  }

  HIDWORD(v824) = v233 | v232;
LABEL_193:
  v234 = MEMORY[0x1E6960C70];
  v235 = *MEMORY[0x1E6960C70];
  v903 = *MEMORY[0x1E6960C70];
  v236 = *(MEMORY[0x1E6960C70] + 8);
  LODWORD(v904) = v236;
  HasBufferedBeyondForwardEndTime = fpfsi_PlaybackHasBufferedBeyondForwardEndTime(v6);
  if (HasBufferedBeyondForwardEndTime)
  {
    OUTLINED_FUNCTION_452(HasBufferedBeyondForwardEndTime, v238, v239, v240, v241, v242, v243, v244, v570, v582, v594[0], v594[1], v617, *(&v617 + 1), v640, v652, v664, v676, v688, v700, v713, v726, v738, v753, v767[0], v767[1], v786, v795, v804, v815, v824, v833, v842[0], v842[1], *v859, *&v859[8], *&v859[16], v884, v893.value, *&v893.timescale, v893.epoch, v894, *(&v894 + 1), v895, v896.value, *&v896.timescale, v896.epoch, v897, v898.value, *&v898.timescale, v898.epoch, v899, v900[0], v900[1], v901, cf, v903, v904, v905, v906, v907[0], v907[1], v908);
    goto LABEL_198;
  }

  v254 = *(v234 + 12);
  v806 = *(v234 + 16);
  HasBufferedBeyondTimeToPauseBuffering = fpfsi_PlaybackHasBufferedBeyondTimeToPauseBuffering(v6);
  if (HasBufferedBeyondTimeToPauseBuffering)
  {
    if (*(v0 + 464) || (HasBufferedBeyondTimeToPauseBuffering = *(v0 + 1680)) != 0 && (HasBufferedBeyondTimeToPauseBuffering = FigAlternateIsIFrameOnly(HasBufferedBeyondTimeToPauseBuffering), HasBufferedBeyondTimeToPauseBuffering))
    {
      *time2 = *(v0 + 1400);
      *&time2[16] = *(v0 + 1416);
      *&v926.value = kGaplessTransitionDeadlineInterval;
      v926.epoch = 0;
      v255 = OUTLINED_FUNCTION_85(HasBufferedBeyondTimeToPauseBuffering, v246, v247, v248, v249, v250, v251, v252, v570, v582, v594[0], v594[1], v617, *(&v617 + 1), v640, v652, v664, v676, v688, v700, v713, v726, v738, v753, v767[0], v767[1], v786, v795, v806, v815, v824, v833, v842[0], v842[1], *v859, *&v859[8], *&v859[16], v884, v893.value, *&v893.timescale, v893.epoch, v894, *(&v894 + 1), v895, v896.value, *&v896.timescale, v896.epoch, v897, v898.value, *&v898.timescale, v898.epoch, v899, v900[0], v900[1], v901, cf, v903, v904, v905, v906, v907[0], v907[1], v908);
      HasBufferedBeyondTimeToPauseBuffering = CMTimeAdd(v257, v255, v256);
LABEL_198:
      v903 = time[0].value;
      v254 = time[0].flags;
      LODWORD(v904) = time[0].timescale;
      v806 = time[0].epoch;
    }
  }

  if (v254)
  {
    OUTLINED_FUNCTION_452(HasBufferedBeyondTimeToPauseBuffering, v246, v247, v248, v249, v250, v251, v252, v570, v582, v594[0], v594[1], v617, *(&v617 + 1), v640, v652, v664, v676, v688, v700, v713, v726, v738, v753, v767[0], v767[1], v786, v795, v806, v815, v824, v833, v842[0], v842[1], *v859, *&v859[8], *&v859[16], v884, v893.value, *&v893.timescale, v893.epoch, v894, *(&v894 + 1), v895, v896.value, *&v896.timescale, v896.epoch, v897, v898.value, *&v898.timescale, v898.epoch, v899, v900[0], v900[1], v901, cf, v903, v904, v905, v906, v907[0], v907[1], v908);
    *time2 = v903;
    *&time2[8] = v904;
    *&time2[12] = v254;
    LODWORD(v753) = OUTLINED_FUNCTION_341(v807, v574, v586, v598, v609, v621, v632, v644, v656, v668, v680, v692, v704, v717, v730, v744, v757, v769, v779, v788, v797, v807, v817, v826, v835, v844, v852, v861, v869, v877, v886, v893.value, *&v893.timescale, v893.epoch, v894, *(&v894 + 1), v895, v896.value, *&v896.timescale, v896.epoch, v897, v898.value, *&v898.timescale, v898.epoch, v899, v900[0], v900[1], v901, cf, v903, v904, v905, v906, v907[0], v907[1], v908, *(&v908 + 1), v909[0], v909[1], v910, *(&v910 + 1), v911, v912);
    v262 = OUTLINED_FUNCTION_234();
    fpfs_GetNextTimeToPlay(v262, v263, v264);
    v265 = 0;
    LODWORD(v767[0]) = 0;
    v266 = v0 + 976;
    while (1)
    {
      rhs.value = v235;
      rhs.timescale = v236;
      v267 = 1 << v265;
      if ((*v15 & (1 << v265)) == 0)
      {
        goto LABEL_218;
      }

      v268 = *(v713 + v265);
      if (!*(v0 + 553))
      {
        goto LABEL_213;
      }

      if (*(v713 + v265))
      {
        break;
      }

LABEL_214:
      *time2 = v894;
      *&time2[16] = v895;
      OUTLINED_FUNCTION_801(&v907[3 * v265]);
      v277 = OUTLINED_FUNCTION_85(v269, v270, v271, v272, v273, v274, v275, v276, v570, v582, v594[0], v594[1], v617, *(&v617 + 1), v640, v652, v664, v676, v688, v700, v713, v726, v738, v753, v767[0], v767[1], v786, v795, v806, v815, v824, v833, v842[0], v842[1], *v859, *&v859[8], *&v859[16], v884, v893.value, *&v893.timescale, v893.epoch, v894, *(&v894 + 1), v895, v896.value, *&v896.timescale, v896.epoch, v897, v898.value, *&v898.timescale, v898.epoch, v899, v900[0], v900[1], v901, cf, v903, v904, v905, v906, v907[0], v907[1], v908);
      CMTimeAdd(v279, v277, v278);
      rhs.value = time[0].value;
      rhs.timescale = time[0].timescale;
      OUTLINED_FUNCTION_350();
      if (v157)
      {
        time[0].value = rhs.value;
        *&time[0].timescale = __PAIR64__(v280, rhs.timescale);
        *time2 = v903;
        *&time2[8] = v904;
        *&time2[12] = v254;
        if ((OUTLINED_FUNCTION_237(v806, v570, v582, v594[0], v594[1], v617, *(&v617 + 1), v640, v652, v664, v676, v688, v700, v713, v726, v738, v753, v767[0], v767[1], v786, v795, v806, v815, v824, v833, v842[0], v842[1], *v859, *&v859[8], *&v859[16], v884, v893.value, *&v893.timescale, v893.epoch, v894, *(&v894 + 1), v895, v896.value, *&v896.timescale, v896.epoch, v897, v898.value, *&v898.timescale, v898.epoch, v899, v900[0], v900[1], v901, cf, v903, v904, v905, v906, v907[0], v907[1], v908, *(&v908 + 1), v909[0], v909[1], v910, *(&v910 + 1), v911, v912) & 0x80000000) == 0)
        {
          HIDWORD(v824) |= v267;
          LODWORD(v767[0]) |= v267;
          LODWORD(v786) = v786 & ~v267;
          if (!v753)
          {
            v281 = *(v0 + 1024);
            if (v281)
            {
              while (1)
              {
                v282 = *(v281 + 64);
                v283 = *(v281 + 196);
                if (v282 != *(v266 + 16 * v283))
                {
                  break;
                }

                if (v265 == v283)
                {
                  goto LABEL_228;
                }

LABEL_230:
                v281 = *(v281 + 24);
                if (!v281)
                {
                  goto LABEL_218;
                }
              }

              if (v265 != v283 || v282 != *(v266 + 16 * v283 + 8))
              {
                goto LABEL_230;
              }

LABEL_228:
              if (*(v281 + 128))
              {
                fpfs_scheduleForwardEndTimeForTrack();
              }

              else
              {
                fpfs_EnsureEndTimerProcForTrack(v281);
              }

              goto LABEL_230;
            }
          }
        }
      }

LABEL_218:
      if (++v265 == 3)
      {
        goto LABEL_201;
      }
    }

    if (!*(v0 + 1744))
    {
      goto LABEL_218;
    }

    v268 = *(v713 + v265 + 3);
LABEL_213:
    if (v268)
    {
      goto LABEL_218;
    }

    goto LABEL_214;
  }

  LODWORD(v767[0]) = 0;
LABEL_201:
  if (v786)
  {
    v258 = v815;
    v259 = v767[0];
    if (*(v0 + 1896))
    {
      fpfsi_UpdateResourceSpecifierOnResourceArbiter(v815);
    }

    *(v0 + 1896) = 0;
    v260 = *(v0 + 2272);
    if (v260)
    {
      v261 = *(*(CMBaseObjectGetVTable() + 8) + 56);
      if (v261)
      {
        v261(v260, 0x1F0B5F758, *MEMORY[0x1E695E4D0]);
      }
    }
  }

  else
  {
    v258 = v815;
    v259 = v767[0];
    if (HIDWORD(v824) == v49)
    {
      if (*(v0 + 1896) != 1)
      {
        if (HIDWORD(v795) && dword_1EAF169F0)
        {
          OUTLINED_FUNCTION_686();
          v534 = OUTLINED_FUNCTION_487(qword_1EAF169E8);
          v535 = v926.value;
          value_low = LOBYTE(rhs.value);
          os_log_type_enabled(v534, rhs.value);
          OUTLINED_FUNCTION_121();
          if (v157)
          {
            v546 = v545;
          }

          else
          {
            v546 = v535;
          }

          if (v546)
          {
            v547 = *v0;
            if (*v0)
            {
              v537 = CMBaseObjectGetDerivedStorage();
              v548 = (v537 + 888);
            }

            else
            {
              v548 = "";
            }

            v814 = v548;
            if (v815)
            {
              v537 = CMBaseObjectGetDerivedStorage();
              v549 = v815;
              v550 = (v537 + 3096);
            }

            else
            {
              v549 = 0;
              v550 = "";
            }

            OUTLINED_FUNCTION_384(v537, v538, v539, v540, v541, v542, v543, v544, v570, v582, v594[0], v594[1], v617, *(&v617 + 1), v640, v652, v664, v676, v688, v700, v713, v726, v738, v753, v767[0], v767[1], v786, v795, v814, v815, v824, v833, v842[0], v842[1], *v859, *&v859[8], *&v859[16], v884, v893.value, *&v893.timescale, v893.epoch, v894, *(&v894 + 1), v895, v896.value, *&v896.timescale, v896.epoch, v897, v898.value, *&v898.timescale, v898.epoch, v899, v900[0], v900[1], v901, cf, v903, v904, v905, v906);
            time[0].flags = v833;
            OUTLINED_FUNCTION_246(v842[0]);
            CMTimeGetSeconds(v551);
            *time2 = 136316418;
            OUTLINED_FUNCTION_393("fpfs_CheckPrebufferedLevels");
            *&time2[12] = v552;
            *(v553 + 14) = v547;
            *&time2[22] = 2082;
            *&time2[24] = v806;
            *&time2[32] = v552;
            *(v553 + 34) = v549;
            *&time2[42] = 2082;
            *(v553 + 44) = v550;
            *&time2[52] = v552;
            *(v553 + 54) = v554;
            OUTLINED_FUNCTION_116();
            v555 = OUTLINED_FUNCTION_27();
            _os_log_send_and_compose_impl(v555, v556, v557, v558, v559, v534, value_low, v560);
            v258 = v549;
            v259 = v767[0];
          }

          OUTLINED_FUNCTION_1();
          fig_log_call_emit_and_clean_up_after_send_and_compose();
        }

        *(v0 + 1896) = 1;
        v561 = *(v0 + 2272);
        if (v561)
        {
          v562 = *(*(CMBaseObjectGetVTable() + 8) + 56);
          if (v562)
          {
            v562(v561, 0x1F0B5F758, *MEMORY[0x1E695E4C0]);
          }
        }

        fpfs_EnqueueNotification(v664, @"StreamBufferFull", v258, 0);
        fpfsi_UpdateResourceSpecifierOnResourceArbiter(v258);
        fpfs_CheckItemsPrebuffering(v664, v563, v564, v565, v566, v567, v568, v569, v570, v582, v594[0], v594[1], v617, v640, SWORD2(v640), SBYTE6(v640), HIBYTE(v640), v652, SWORD2(v652), SBYTE6(v652), SHIBYTE(v652), v664, SHIDWORD(v664), v676, SWORD2(v676), v688, v700, v713, v726, v738, v753, v767[0], v767[1], v786, v795, v806, v815, v824, v833, v842[0], v842[1], *v859, *&v859[8], *&v859[16], v884, v893.value, *&v893.timescale, v893.epoch, v894, *(&v894 + 1), v895, v896.value, *&v896.timescale, v896.epoch, v897, v898.value, *&v898.timescale, v898.epoch, v899, v900[0], v900[1], v901, cf);
      }

      if (fpfsi_PlaybackHasBufferedBeyondTimeToPauseBuffering(v258))
      {
        fpfsi_EnqueuePlayableRangeChangedNotification(v258);
        fpfs_EnqueueNotification(v664, @"ReachedTimeToPauseBuffering", v258, 0);
      }
    }
  }

  v285 = 0;
  LODWORD(v806) = 0;
  v286 = v907;
  do
  {
    if (((1 << v285) & v49) != 0)
    {
      if (((1 << v285) & HIDWORD(v824)) != 0)
      {
        time[0] = *v286;
        OUTLINED_FUNCTION_57();
        if (fpfs_CheckCanKeepUp(v287, v288, v289, v290, v291, v292, v293, v294))
        {
          v295 = 1 << v285;
        }

        else
        {
          v295 = 0;
        }

        v259 |= v295;
      }

      else
      {
        if (*(v0 + 1896))
        {
          v296 = 0;
        }

        else
        {
          v296 = 1 << v285;
        }

        LODWORD(v806) = v296 | v806;
      }
    }

    ++v285;
    ++v286;
  }

  while (v285 != 3);
  LODWORD(v767[0]) = v259;
  v297 = 0;
  v298 = 0;
  v299 = v0 + 475;
  *&v253 = 136317186;
  *v718 = v253;
  v300 = v842[0];
  v301 = v833;
  while (2)
  {
    v302 = 1 << v298;
    if ((*v15 & (1 << v298)) != 0)
    {
      v303 = *(v299 + v298 - 3);
      if (!*(v0 + 553))
      {
        goto LABEL_255;
      }

      if (!*(v299 + v298 - 3))
      {
        goto LABEL_256;
      }

      if (*(v0 + 1744))
      {
        v303 = *(v299 + v298);
LABEL_255:
        if (!v303)
        {
LABEL_256:
          v304 = &v907[v297];
          CMTimeMake(time2, 15, 1);
          *&v926.value = *v859;
          OUTLINED_FUNCTION_825(*&v859[16], v570, v582, v594[0], v594[1], v617, *(&v617 + 1), v640, v652, v664, v676, v688, v700, v718[0], v718[1], v738, v753, v767[0], v767[1], v786, v795, v806, v815, v824, v833, v842[0], v842[1], *v859, *&v859[8], *&v859[16], v884, v893.value, *&v893.timescale, v893.epoch, v894, *(&v894 + 1), v895, v896.value, *&v896.timescale, v896.epoch, v897, v898.value, *&v898.timescale, v898.epoch, v899, v900[0], v900[1], v901, cf, v903, v904, v905, v906, v907[0], v907[1], v908, *(&v908 + 1), v909[0], v909[1], v910, *(&v910 + 1), v911, v912);
          OUTLINED_FUNCTION_53();
          if (CMTimeCompare(time2, time) >= 1)
          {
            OUTLINED_FUNCTION_219();
            CMTimeMake(time, 15, 2);
            OUTLINED_FUNCTION_53();
            CMTimeSubtract(&v926, time2, time);
            *time2 = v905;
            *&time2[8] = v906;
            *&time2[12] = v301;
            *&time2[16] = v300;
            rhs = v898;
            CMTimeSubtract(time, time2, &rhs);
            rhs = *v304;
            v929 = v926;
            CMTimeSubtract(time2, &rhs, &v929);
            v305 = OUTLINED_FUNCTION_241();
            if ((CMTimeCompare(v305, v306) & 0x80000000) == 0)
            {
              OUTLINED_FUNCTION_673();
              v301 = HIDWORD(v907[v297 + 1]);
              v300 = v907[v297 + 2];
              v898 = v926;
            }

            if (HIDWORD(v795) && dword_1EAF169F0)
            {
              LODWORD(v833) = v301;
              v842[0] = v300;
              LODWORD(rhs.value) = 0;
              LOBYTE(v929.value) = 0;
              v307 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
              HIDWORD(v824) = LOBYTE(v929.value);
              os_log_type_enabled(v307, v929.value);
              OUTLINED_FUNCTION_70();
              if (v301)
              {
                v308 = *v0;
                v786 = v307;
                if (*v0)
                {
                  v309 = (CMBaseObjectGetDerivedStorage() + 888);
                }

                else
                {
                  v309 = "";
                }

                v758 = v309;
                if (v815)
                {
                  v310 = (CMBaseObjectGetDerivedStorage() + 3096);
                }

                else
                {
                  v310 = "";
                }

                v745 = v310;
                *&time[0].value = *&v304->value;
                OUTLINED_FUNCTION_246(v304->epoch);
                CMTimeGetSeconds(v311);
                *&time[0].value = *v859;
                OUTLINED_FUNCTION_246(*&v859[16]);
                v313 = CMTimeGetSeconds(v312);
                *&time[0].value = *&v926.value;
                OUTLINED_FUNCTION_246(v926.epoch);
                CMTimeGetSeconds(v314);
                *time2 = v718[0];
                OUTLINED_FUNCTION_531(time2);
                *(v315 + 14) = v308;
                OUTLINED_FUNCTION_226(v316, v317, v318, v319, v320, v321, v322, v323, v570, v582, v594[0], v594[1], v617, *(&v617 + 1), v640, v652, v664, v676, v688, v700, v718[0], v718[1], v745, v758);
                *(v324 + 34) = v815;
                OUTLINED_FUNCTION_83(v324, v575, v587, v599, v610, v622, v633, v645, v657, v669, v681, v693, v705, v719, v731, v746);
                *(v325 + 70) = v313;
                v914 = v326;
                v915 = v327;
                OUTLINED_FUNCTION_116();
                v328 = OUTLINED_FUNCTION_35();
                _os_log_send_and_compose_impl(v328, v329, v330, v331, &dword_1962D5000, v307, HIDWORD(v824), "<<<< FigStreamPlayer >>>> %s: [%p|%{public}s] <%p|%{public}s>: pause subStream %d, because at %f it is far higher than other(s) at %f. Resume level = %f");
              }

              OUTLINED_FUNCTION_7();
              OUTLINED_FUNCTION_454(v332, v333, v334, v335, v336);
              v258 = v815;
              v300 = v842[0];
            }

            LODWORD(v767[0]) |= v302;
            LODWORD(v806) = v806 & ~v302;
          }
        }
      }
    }

    ++v298;
    v297 += 3;
    if (v298 != 3)
    {
      continue;
    }

    break;
  }

  if ((v676 & 0x100000000) != 0)
  {
    OUTLINED_FUNCTION_542();
    LODWORD(v345) = v767[0];
    v346 = v806;
    if (!v157)
    {
      goto LABEL_311;
    }

LABEL_281:
    memset(&rhs, 0, sizeof(rhs));
    OUTLINED_FUNCTION_384(v337, v338, v339, v340, v341, v342, v343, v344, v570, v582, v594[0], v594[1], v617, *(&v617 + 1), v640, v652, v664, v676, v688, v700, v718[0], v718[1], v738, v753, v767[0], v767[1], v786, v795, v806, v815, v824, v833, v842[0], v842[1], *v859, *&v859[8], *&v859[16], v884, v893.value, *&v893.timescale, v893.epoch, v894, *(&v894 + 1), v895, v896.value, *&v896.timescale, v896.epoch, v897, v898.value, *&v898.timescale, v898.epoch, v899, v900[0], v900[1], v901, cf, v903, v904, v905, v906);
    time[0].flags = v301;
    time[0].epoch = v300;
    *time2 = v898;
    v347 = OUTLINED_FUNCTION_241();
    CMTimeSubtract(v349, v347, v348);
    if (*(v694 + 108) >= 0.0)
    {
      fpfs_GetApproximateTime(v0, time2);
      v926 = rhs;
      v369 = OUTLINED_FUNCTION_85(v361, v362, v363, v364, v365, v366, v367, v368, v576, v588, v600, v611, v623, v634, v646, v658, v670, v682, v694, v706, v720, v732, v747, v759, v770, v780, v789, v798, v808, v818, v827, v836, v845, v853, v862, v870, v878, v887, v893.value, *&v893.timescale, v893.epoch, v894, *(&v894 + 1), v895, v896.value, *&v896.timescale, v896.epoch, v897, v898.value, *&v898.timescale, v898.epoch, v899, v900[0], v900[1], v901, cf, v903, v904, v905, v906, v907[0], v907[1], v908);
      CMTimeAdd(v371, v369, v370);
    }

    else
    {
      fpfs_GetApproximateTime(v0, time2);
      v926 = rhs;
      v358 = OUTLINED_FUNCTION_85(v350, v351, v352, v353, v354, v355, v356, v357, v576, v588, v600, v611, v623, v634, v646, v658, v670, v682, v694, v706, v720, v732, v747, v759, v770, v780, v789, v798, v808, v818, v827, v836, v845, v853, v862, v870, v878, v887, v893.value, *&v893.timescale, v893.epoch, v894, *(&v894 + 1), v895, v896.value, *&v896.timescale, v896.epoch, v897, v898.value, *&v898.timescale, v898.epoch, v899, v900[0], v900[1], v901, cf, v903, v904, v905, v906, v907[0], v907[1], v908);
      CMTimeSubtract(v360, v358, v359);
    }

    OUTLINED_FUNCTION_96();
    if (!*(v0 + 1608) && dword_1EAF169F0)
    {
      LODWORD(v926.value) = 0;
      LOBYTE(v929.value) = 0;
      v372 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v373 = v926.value;
      v374 = LOBYTE(v929.value);
      os_log_type_enabled(v372, v929.value);
      OUTLINED_FUNCTION_202();
      if (v157)
      {
        v376 = v375;
      }

      else
      {
        v376 = v373;
      }

      if (v376)
      {
        v377 = *v0;
        if (*v0)
        {
          v378 = (CMBaseObjectGetDerivedStorage() + 888);
        }

        else
        {
          v378 = "";
        }

        v842[0] = v372;
        if (v815)
        {
          v379 = (CMBaseObjectGetDerivedStorage() + 3096);
        }

        else
        {
          v379 = "";
        }

        fpfs_GetTime(v0, time);
        v380 = CMTimeGetSeconds(time);
        *&time[0].value = *&rhs.value;
        OUTLINED_FUNCTION_246(rhs.epoch);
        CMTimeGetSeconds(v381);
        *time2 = 136316674;
        OUTLINED_FUNCTION_393("fpfs_CheckPrebufferedLevels");
        *&time2[12] = v382;
        *(v383 + 14) = v377;
        *&time2[22] = 2082;
        *&time2[24] = v378;
        *&time2[32] = v382;
        *(v383 + 34) = v815;
        *&time2[42] = 2082;
        *(v383 + 44) = v379;
        *&time2[52] = v382;
        *(v383 + 54) = v380;
        *&time2[62] = v382;
        *&time2[64] = v384;
        OUTLINED_FUNCTION_116();
        v385 = OUTLINED_FUNCTION_31();
        _os_log_send_and_compose_impl(v385, v386, v387, v388, v389, v842[0], v374, v390);
        LODWORD(v345) = v767[0];
      }

      OUTLINED_FUNCTION_7();
      OUTLINED_FUNCTION_454(v391, v392, v393, v394, v395);
      v258 = v815;
    }

    TimebaseTimer = OUTLINED_FUNCTION_634();
    if (*(v0 + 1608) || (v404 = MEMORY[0x1E6960C70], v405 = *MEMORY[0x1E6960C70], *(v0 + 1616) = *MEMORY[0x1E6960C70], v406 = *(v404 + 16), *(v0 + 1632) = v406, *(v0 + 1640) = v405, *(v0 + 1656) = v406, TimebaseTimer = fpfsi_CreateTimebaseTimer(v258, *(TimebaseTimer + 600), *(TimebaseTimer + 16), fpfs_needsMoreTimerProc, 0, (v0 + 1608)), !TimebaseTimer))
    {
      if ((*(v0 + 1628) & 1) == 0 || (*time2 = v929, *&v926.value = kTimerScheduleTime, v926.epoch = 0, v407 = OUTLINED_FUNCTION_85(TimebaseTimer, v397, v398, v399, v400, v401, v402, v403, v570, v582, v594[0], v594[1], v617, *(&v617 + 1), v640, v652, v664, v676, v688, v700, v718[0], v718[1], v738, v753, v767[0], v767[1], v786, v795, v806, v815, v824, v833, kTimerScheduleTime, *(&kTimerScheduleTime + 1), *v859, *&v859[8], *&v859[16], v884, v893.value, *&v893.timescale, v893.epoch, v894, *(&v894 + 1), v895, v896.value, *&v896.timescale, v896.epoch, v897, v898.value, *&v898.timescale, v898.epoch, v899, v900[0], v900[1], v901, cf, v903, v904, v905, v906, v907[0], v907[1], v908), CMTimeAdd(v409, v407, v408), OUTLINED_FUNCTION_53(), v410 = OUTLINED_FUNCTION_241(), CMTimeCompare(v410, v411) < 0))
      {
        OUTLINED_FUNCTION_671();
        FigSpeedRampTimerScheduleForL2Time(v423, &time[0].value, 1u);
        OUTLINED_FUNCTION_672();
        OUTLINED_FUNCTION_112((v0 + 1640));
        *(v0 + 1656) = v424;
      }

      else
      {
        OUTLINED_FUNCTION_53();
        *&v926.value = *v842;
        v926.epoch = 0;
        v420 = OUTLINED_FUNCTION_85(v412, v413, v414, v415, v416, v417, v418, v419, v570, v582, v594[0], v594[1], v617, *(&v617 + 1), v640, v652, v664, v676, v688, v700, v718[0], v718[1], v738, v753, v767[0], v767[1], v786, v795, v806, v815, v824, v833, v842[0], v842[1], *v859, *&v859[8], *&v859[16], v884, v893.value, *&v893.timescale, v893.epoch, v894, *(&v894 + 1), v895, v896.value, *&v896.timescale, v896.epoch, v897, v898.value, *&v898.timescale, v898.epoch, v899, v900[0], v900[1], v901, cf, v903, v904, v905, v906, v907[0], v907[1], v908);
        CMTimeAdd(v422, v420, v421);
        *time2 = *&v929.value;
        if (OUTLINED_FUNCTION_341(v929.epoch, v577, v589, v601, v612, v624, v635, v647, v659, v671, v683, v695, v707, v721, v733, v748, v760, v771, v781, v790, v799, v809, v819, v828, v837, v846, v854, v863, v871, v879, v888, v893.value, *&v893.timescale, v893.epoch, v894, *(&v894 + 1), v895, v896.value, *&v896.timescale, v896.epoch, v897, v898.value, *&v898.timescale, v898.epoch, v899, v900[0], v900[1], v901, cf, v903, v904, v905, v906, v907[0], v907[1], v908, *(&v908 + 1), v909[0], v909[1], v910, *(&v910 + 1), v911, v912) >= 1)
        {
          OUTLINED_FUNCTION_671();
          *time2 = *(v0 + 1640);
          if ((OUTLINED_FUNCTION_237(*(v0 + 1656), v570, v582, v594[0], v594[1], v617, *(&v617 + 1), v640, v652, v664, v676, v688, v700, v718[0], v718[1], v738, v753, v767[0], v767[1], v786, v795, v806, v815, v824, v833, v842[0], v842[1], *v859, *&v859[8], *&v859[16], v884, v893.value, *&v893.timescale, v893.epoch, v894, *(&v894 + 1), v895, v896.value, *&v896.timescale, v896.epoch, v897, v898.value, *&v898.timescale, v898.epoch, v899, v900[0], v900[1], v901, cf, v903, v904, v905, v906, v907[0], v907[1], v908, *(&v908 + 1), v909[0], v909[1], v910, *(&v910 + 1), v911, v912) & 0x80000000) != 0)
          {
            OUTLINED_FUNCTION_672();
          }
        }
      }
    }
  }

  else
  {
    LODWORD(v345) = v767[0];
    v346 = v806;
    if ((LODWORD(v767[0]) >> *(v0 + 1088)))
    {
      *(v0 + 1541) = 1;
    }

    OUTLINED_FUNCTION_542();
    if (v157 && *(v0 + 1541))
    {
      goto LABEL_281;
    }
  }

LABEL_311:
  if (*(v688 + 108) == 0.0 && *(v688 + 828) > 0)
  {
    v346 = 0;
    LODWORD(v345) = 0;
  }

  if (!(v345 | v346) || (CMBaseObjectGetDerivedStorage(), fpfs_FlowControlPump(v0, v345, 1, v346), !v425))
  {
    if (HIDWORD(v795) && dword_1EAF169F0)
    {
      OUTLINED_FUNCTION_686();
      v426 = OUTLINED_FUNCTION_487(qword_1EAF169E8);
      v427 = v926.value;
      os_log_type_enabled(v426, rhs.value);
      OUTLINED_FUNCTION_176();
      if (v157)
      {
        v429 = v428;
      }

      else
      {
        v429 = v427;
      }

      if (v429)
      {
        v430 = *v0;
        LODWORD(v806) = v346;
        if (*v0)
        {
          v431 = (CMBaseObjectGetDerivedStorage() + 888);
        }

        else
        {
          v431 = "";
        }

        v432 = v345;
        if (v258)
        {
          v345 = (CMBaseObjectGetDerivedStorage() + 3096);
        }

        else
        {
          v345 = "";
        }

        v433 = -1.0;
        if (*(v0 + 1608))
        {
          *&time[0].value = *(v0 + 1616);
          OUTLINED_FUNCTION_246(*(v0 + 1632));
          v435 = CMTimeGetSeconds(v434);
          if (*(v0 + 1608))
          {
            time[0] = *(v0 + 1640);
            v433 = CMTimeGetSeconds(time);
          }
        }

        else
        {
          v435 = -1.0;
        }

        *time2 = v718[0];
        OUTLINED_FUNCTION_393("fpfs_CheckPrebufferedLevels");
        *&time2[12] = v436;
        *(v437 + 14) = v430;
        *&time2[22] = 2082;
        *&time2[24] = v431;
        *&time2[32] = v436;
        *(v437 + 34) = v258;
        *&time2[42] = 2082;
        *(v437 + 44) = v345;
        *&time2[52] = 1024;
        LOBYTE(v345) = v432;
        *(v437 + 54) = v432;
        *&time2[58] = 1024;
        *&time2[60] = v806;
        *&time2[64] = v436;
        *(v437 + 66) = v435;
        *&time2[74] = v436;
        *(v437 + 76) = v433;
        OUTLINED_FUNCTION_116();
        v438 = OUTLINED_FUNCTION_35();
        OUTLINED_FUNCTION_448(v438, v439, v440, v441, v442, v443, v444, v445);
      }

      OUTLINED_FUNCTION_7();
      OUTLINED_FUNCTION_420(v446, v447, v448, v449, v450);
    }

    v451 = OUTLINED_FUNCTION_409();
    fpfs_GetNextTimeToPlay(v451, v452, v453);
    v454 = *(v0 + 1024);
    while (v454)
    {
      if (!*(v0 + 1024))
      {
        break;
      }

      v455 = v454;
      v454 = *(v454 + 24);
      if (*(v455 + 136))
      {
        if (!*(v455 + 198))
        {
          OUTLINED_FUNCTION_674();
          if (v157 && (*(v455 + 244) & 1) != 0)
          {
            if ((*(v0 + 1364) & 1) == 0 || (OUTLINED_FUNCTION_53(), FPSTimelineConverterL3TimeToL2(time2, time), *time2 = *(v455 + 232), (OUTLINED_FUNCTION_341(*(v455 + 248), v570, v582, v594[0], v594[1], v617, *(&v617 + 1), v640, v652, v664, v676, v688, v700, v718[0], v718[1], v738, v753, v767[0], v767[1], v786, v795, v806, v815, v824, v833, v842[0], v842[1], *v859, *&v859[8], *&v859[16], v884, v893.value, *&v893.timescale, v893.epoch, v894, *(&v894 + 1), v895, v896.value, *&v896.timescale, v896.epoch, v897, v898.value, *&v898.timescale, v898.epoch, v899, v900[0], v900[1], v901, cf, v903, v904, v905, v906, v907[0], v907[1], v908, *(&v908 + 1), v909[0], v909[1], v910, *(&v910 + 1), v911, v912) & 0x80000000) != 0))
            {
              OUTLINED_FUNCTION_669();
              if (!fpfsi_atOrAfterTimeToPausePlayback(v0) && !*(v455 + 200))
              {
                memset(&rhs, 0, sizeof(rhs));
                OUTLINED_FUNCTION_669();
                *time2 = kGaplessTransitionDeadlineInterval;
                *&time2[16] = 0;
                v456 = OUTLINED_FUNCTION_241();
                v459 = CMTimeSubtract(v458, v456, v457);
                *time2 = rhs;
                *&v926.value = kTimerVariability;
                v926.epoch = 0;
                v467 = OUTLINED_FUNCTION_85(v459, v460, v461, v462, v463, v464, v465, v466, v570, v582, v594[0], v594[1], v617, *(&v617 + 1), v640, v652, v664, v676, v688, v700, v718[0], v718[1], v738, v753, v767[0], v767[1], v786, v795, v806, v815, v824, v833, v842[0], v842[1], *v859, *&v859[8], *&v859[16], v884, v893.value, *&v893.timescale, v893.epoch, v894, *(&v894 + 1), v895, v896.value, *&v896.timescale, v896.epoch, v897, v898.value, *&v898.timescale, v898.epoch, v899, v900[0], v900[1], v901, cf, v903, v904, v905, v906, v907[0], v907[1], v908);
                CMTimeAdd(v469, v467, v468);
                OUTLINED_FUNCTION_96();
                *time2 = OUTLINED_FUNCTION_263(v470, v471, v472, v473, v474, v475, v476, v477, v578, v590, v602, v613, v625, v636, v648, v660, v672, v684, v696, v708, v722, v734, v749, v761, v772, v782, v791, v800, v810, v820, v829, v838, v847, v855, v864, v872, v880, v889, v893.value, *&v893.timescale, v893.epoch, v894);
                *&time2[16] = v895;
                *&v926.value = kTimerScheduleTime;
                v926.epoch = 0;
                v486 = OUTLINED_FUNCTION_85(v478, v479, v480, v481, v482, v483, v484, v485, v579, v591, v603, v614, v626, v637, v649, v661, v673, v685, v697, v709, v723, v735, v750, v762, v773, v783, v792, v801, v811, v821, v830, v839, v848, v856, v865, v873, v881, v890, v893.value, *&v893.timescale, v893.epoch, v894, *(&v894 + 1), v895, v896.value, *&v896.timescale, v896.epoch, v897, v898.value, *&v898.timescale, v898.epoch, v899, v900[0], v900[1], v901, cf, v903, v904, v905, v906, v907[0], v907[1], v908);
                CMTimeAdd(v488, v486, v487);
                *time2 = *&rhs.value;
                if (OUTLINED_FUNCTION_341(rhs.epoch, v580, v592, v604, v615, v627, v638, v650, v662, v674, v686, v698, v710, v724, v736, v751, v763, v774, v784, v793, v802, v812, v822, v831, v840, v849, v857, v866, v874, v882, v891, v893.value, *&v893.timescale, v893.epoch, v894, *(&v894 + 1), v895, v896.value, *&v896.timescale, v896.epoch, v897, v898.value, *&v898.timescale, v898.epoch, v899, v900[0], v900[1], v901, cf, v903, v904, v905, v906, v907[0], v907[1], v908, *(&v908 + 1), v909[0], v909[1], v910, *(&v910 + 1), v911, v912) < 1)
                {
                  OUTLINED_FUNCTION_401();
                  if (!v157)
                  {
                    v492 = MEMORY[0x1E6960C70];
                    *(v455 + 172) = *MEMORY[0x1E6960C70];
                    *(v455 + 188) = *(v492 + 16);
                    fpfs_CallDispatchHandlerWithItemAndTrack(v258, v455, fpfs_ranDryTimerProc);
                  }
                }

                else
                {
                  OUTLINED_FUNCTION_634();
                  if ((*(v455 + 184) & 1) == 0 || (CMTimeMake(time2, 1, 100), *&v926.value = *&v929.value, OUTLINED_FUNCTION_825(v929.epoch, v570, v582, v594[0], v594[1], v617, *(&v617 + 1), v640, v652, v664, v676, v688, v700, v718[0], v718[1], v738, v753, v767[0], v767[1], v786, v795, v806, v815, v824, v833, v842[0], v842[1], *v859, *&v859[8], *&v859[16], v884, v893.value, *&v893.timescale, v893.epoch, v894, *(&v894 + 1), v895, v896.value, *&v896.timescale, v896.epoch, v897, v898.value, *&v898.timescale, v898.epoch, v899, v900[0], v900[1], v901, cf, v903, v904, v905, v906, v907[0], v907[1], v908, *(&v908 + 1), v909[0], v909[1], v910, *(&v910 + 1), v911, v912), *time2 = *(v455 + 172), (OUTLINED_FUNCTION_237(*(v455 + 188), v581, v593, v605, v616, v628, v639, v651, v663, v675, v687, v699, v711, v725, v737, v752, v764, v775, v785, v794, v803, v813, v823, v832, v841, v850, v858, v867, v875, v883, v892, v893.value, *&v893.timescale, v893.epoch, v894, *(&v894 + 1), v895, v896.value, *&v896.timescale, v896.epoch, v897, v898.value, *&v898.timescale, v898.epoch, v899, v900[0], v900[1], v901, cf, v903, v904, v905, v906, v907[0], v907[1], v908, *(&v908 + 1), v909[0], v909[1], v910, *(&v910 + 1), v911, v912) & 0x80000000) != 0))
                  {
                    v489 = OUTLINED_FUNCTION_670();
                    v490 = *(v455 + 136);
                    *&time[0].value = v489;
                    time[0].epoch = v491;
                    FigSpeedRampTimerScheduleForL2Time(v490, &time[0].value, 1u);
                  }

                  else
                  {
                    OUTLINED_FUNCTION_670();
                  }
                }
              }
            }
          }
        }
      }
    }

    fpfs_GetItemBufferedDuration(v258, &v893, 0, 0);
    v493 = MEMORY[0x1E6960CC0];
    if (v676)
    {
      if ((*(v0 + 471) || ((*(v0 + 1072) ^ v345) & 3) == 0) && *(CMBaseObjectGetDerivedStorage() + 1024))
      {
        OUTLINED_FUNCTION_144();
        do
        {
          OUTLINED_FUNCTION_247();
        }

        while ((!v157 || !*(v533 + 112)) && *(v533 + 24));
      }

      time[0] = v893;
      fpfs_CheckIfLikelyToKeepUpAndNotify();
    }

    v494 = CMBaseObjectGetDerivedStorage();
    OUTLINED_FUNCTION_180(v494);
    v495 = CMBaseObjectGetDerivedStorage();
    cf = 0;
    v924 = 0;
    v923 = 0u;
    memset(time, 0, sizeof(time));
    memset(time2, 0, 72);
    memset(&v929, 0, sizeof(v929));
    fpfs_GetTime(v0, &v929);
    v928 = *v493;
    memset(&v927, 0, sizeof(v927));
    v496 = OUTLINED_FUNCTION_409();
    fpfs_GetNextTimeToPlay(v496, v497, v498);
    if (!*(v0 + 96))
    {
      goto LABEL_375;
    }

    v499 = *(v0 + 471);
    fpfs_GetItemBufferedDuration(v258, &v928, time, 0);
    if (*(v495 + 108) >= 0.0)
    {
      do
      {
        rhs = v927;
        *v900 = *&time[0].value;
        OUTLINED_FUNCTION_91();
        CMTimeAdd(v509, v507, v508);
        OUTLINED_FUNCTION_495();
      }

      while (!v157);
      OUTLINED_FUNCTION_276();
      CMTimeAdd(v512, v510, v511);
      if (v499)
      {
        goto LABEL_365;
      }

      v506 = fpfsi_PlaybackHasBufferedBeyondForwardEndTime(v258);
LABEL_367:
      v513 = v506 != 0;
    }

    else
    {
      do
      {
        rhs = v927;
        *v900 = *&time[0].value;
        OUTLINED_FUNCTION_91();
        CMTimeSubtract(v502, v500, v501);
        OUTLINED_FUNCTION_495();
      }

      while (!v157);
      OUTLINED_FUNCTION_276();
      CMTimeSubtract(v505, v503, v504);
      if (!v499)
      {
        fpfsi_PlaybackHasBufferedBeyondReverseEndTime(v258);
        goto LABEL_367;
      }

LABEL_365:
      v513 = 1;
    }

    v514 = *(v0 + 96);
    v926 = v927;
    FigAlternatePlaybackBitrateMonitorSetStreamDuration(v514, &v926, time2, v513);
    if (!*(v0 + 912))
    {
      goto LABEL_375;
    }

    FigGetAllocatorForMedia();
    OUTLINED_FUNCTION_519();
    FigBytePumpGetFigBaseObject();
    if (*(*(CMBaseObjectGetVTable() + 8) + 48))
    {
      v515 = OUTLINED_FUNCTION_621();
      v516(v515);
      if (cf)
      {
        v517 = *(v0 + 1072);
        if ((v517 & 1) == 0)
        {
          if ((v517 & 2) == 0)
          {
            goto LABEL_373;
          }

LABEL_379:
          OUTLINED_FUNCTION_119();
          *v900 = *&time[1].value;
          OUTLINED_FUNCTION_91();
          CMTimeRangeMake(v530, v528, v529);
          OUTLINED_FUNCTION_136();
          FigCMCDHeaderVendorSetLoadedTimeRange(v531, 2, v532);
          if ((*(v0 + 1072) & 4) == 0)
          {
            goto LABEL_375;
          }

LABEL_374:
          OUTLINED_FUNCTION_119();
          *v900 = v923;
          OUTLINED_FUNCTION_91();
          CMTimeRangeMake(v520, v518, v519);
          OUTLINED_FUNCTION_136();
          FigCMCDHeaderVendorSetLoadedTimeRange(v521, 6, v522);
          goto LABEL_375;
        }

        OUTLINED_FUNCTION_119();
        *v900 = *&time[0].value;
        OUTLINED_FUNCTION_91();
        CMTimeRangeMake(v525, v523, v524);
        OUTLINED_FUNCTION_136();
        FigCMCDHeaderVendorSetLoadedTimeRange(v526, 4, v527);
        v517 = *(v0 + 1072);
        if ((v517 & 2) != 0)
        {
          goto LABEL_379;
        }

LABEL_373:
        if ((v517 & 4) != 0)
        {
          goto LABEL_374;
        }

LABEL_375:
        if (cf)
        {
          CFRelease(cf);
        }
      }
    }
  }

LABEL_377:
  OUTLINED_FUNCTION_181();
}