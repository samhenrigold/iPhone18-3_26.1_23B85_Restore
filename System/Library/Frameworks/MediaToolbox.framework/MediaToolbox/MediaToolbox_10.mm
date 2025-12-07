uint64_t fpfsi_removeLayerSync(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v2 = CMBaseObjectGetDerivedStorage();
  v3 = DerivedStorage[87];
  if (v3)
  {
    FigSyncMomentSourceDestroy(v3);
    DerivedStorage[87] = 0;
  }

  result = DerivedStorage[85];
  if (result)
  {
    FigSimpleMutexLock();
    v5 = DerivedStorage[86];
    if (v5)
    {
      FigLayerSynchronizerSetConfigurationWithDeferredTransaction(v5, 0, *(v2 + 880));
      v6 = DerivedStorage[86];
      if (v6)
      {
        CFRelease(v6);
        DerivedStorage[86] = 0;
      }
    }

    return FigSimpleMutexUnlock();
  }

  return result;
}

double fpfs_commitTransaction(uint64_t a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 880) == a2)
  {
    *(DerivedStorage + 880) = 0;
  }

  return FigDeferredTransactionCommit(a2, 0);
}

uint64_t fpfs_cleanupAllImageQueues(const void *a1, int a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v5 = CMBaseObjectGetDerivedStorage();
  v6 = (DerivedStorage + 664);
  v7 = *(DerivedStorage + 664);
  v8 = *(DerivedStorage + 672);
  if (!a2 || *(v5 + 408) < 1)
  {
    if (!v8)
    {
LABEL_13:
      if (!*v6)
      {
        goto LABEL_16;
      }

      CFRelease(*v6);
      goto LABEL_15;
    }

LABEL_11:
    FPSupport_DeleteCASlotsInArray(v8);
    v9 = *(DerivedStorage + 672);
    if (v9)
    {
      CFRelease(v9);
      *(DerivedStorage + 672) = 0;
    }

    goto LABEL_13;
  }

  if (v8 && CFArrayGetCount(v8) >= 1)
  {
    if (!*(DerivedStorage + 744) && !*(v5 + 424))
    {
      *(v5 + 424) = *v6;
      *(DerivedStorage + 672) = 0;
LABEL_15:
      *v6 = 0;
      goto LABEL_16;
    }

    v8 = *(DerivedStorage + 672);
    goto LABEL_11;
  }

LABEL_16:
  result = fpfsi_updateOutputsForAllAggregateVideoDestinations(a1);
  if (v7)
  {
    v11 = *DerivedStorage;

    return fpfs_EnqueueNotificationWithoutLocking(v11, @"DidRemoveImageQueue", a1, 0);
  }

  return result;
}

uint64_t fpfs_HaveHDRItem(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v2 = *(DerivedStorage + 80);
  if (v2 && fpfsi_isPlayingHDR(v2))
  {
    return 1;
  }

  for (i = 0; ; ++i)
  {
    Count = *(DerivedStorage + 72);
    if (Count)
    {
      Count = CFArrayGetCount(Count);
    }

    if (i >= Count)
    {
      break;
    }

    ValueAtIndex = CFArrayGetValueAtIndex(*(DerivedStorage + 72), i);
    if (fpfsi_isPlayingHDR(ValueAtIndex))
    {
      return 1;
    }
  }

  return 0;
}

CFIndex fpfs_PostRemovedFromPlayQueueNotifications(const void *a1, const void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 468))
  {
    AllocatorForMedia = FigGetAllocatorForMedia();
    v6 = CFDictionaryCreate(AllocatorForMedia, &kFigPlaybackItemParameter_AsRequested, MEMORY[0x1E695E4D0], 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    fpfs_EnqueueNotification(a1, @"ItemWasRemovedFromPlayQueue", a2, v6);
    if (v6)
    {
      CFRelease(v6);
    }
  }

  else
  {
    fpfs_EnqueueNotification(a1, @"ItemWasRemovedFromPlayQueue", a2, 0);
  }

  *(DerivedStorage + 468) = 0;

  return fpfs_PostPlayQueueNotificationIfHungry(a1);
}

void fpfsi_setPlaybackRateMonitorPendingSeekTime(uint64_t a1, CMTime *a2)
{
  AllocatorForMedia = FigGetAllocatorForMedia();
  v6 = *a2;
  v5 = CMTimeCopyAsDictionary(&v6, AllocatorForMedia);
  if (v5)
  {
    fpfsi_setPlaybackRateMonitorPendingSeekTime_cold_1(a1, v5);
  }

  else
  {
    fpfsi_setPlaybackRateMonitorPendingSeekTime_cold_2();
  }
}

void fpfsi_cleanupNetworkCostMonitor(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v2 = CMBaseObjectGetDerivedStorage();
  if (v2)
  {
    v3 = *(v2 + 24);
  }

  else
  {
    v3 = 0;
  }

  v4 = *(DerivedStorage + 2272);
  if (v4)
  {
    v5 = *(DerivedStorage + 16);
    v6 = *(*(CMBaseObjectGetVTable() + 16) + 8);
    if (v6)
    {
      v6(v4, v5, 0, v3);
    }

    SInt32 = FigCFNumberCreateSInt32();
    if (SInt32)
    {
      v8 = *(DerivedStorage + 2272);
      v9 = *(*(CMBaseObjectGetVTable() + 8) + 56);
      if (v9)
      {
        v9(v8, 0x1F0B5F778, SInt32);
      }
    }

    v10 = *(DerivedStorage + 2272);
    v11 = *MEMORY[0x1E695E4C0];
    v12 = *(*(CMBaseObjectGetVTable() + 8) + 56);
    if (v12)
    {
      v12(v10, 0x1F0B5F758, v11);
    }

    v13 = *(DerivedStorage + 2272);
    v14 = *(*(CMBaseObjectGetVTable() + 8) + 56);
    if (v14)
    {
      v14(v13, 0x1F0B5F798, v11);
    }

    if (SInt32)
    {
      CFRelease(SInt32);
    }

    v15 = *(DerivedStorage + 2272);
    if (v15)
    {
      CFRelease(v15);
      *(DerivedStorage + 2272) = 0;
    }
  }
}

void fpfsi_pumpNotificationHandler(uint64_t a1, const void *a2, const void *a3)
{
  v7[24] = *MEMORY[0x1E69E9840];
  cf = 0;
  v7[0] = 0;
  if (fpfsi_CopyPlayerAndItemFromItemRetainProxy(a2, v7, &cf))
  {
    FigRetainProxyRelease();
  }

  else
  {
    CMBaseObjectGetDerivedStorage();
    if (CFEqual(a3, @"FBPAL_SeekableTimeRangeChanged") || CFEqual(a3, @"FBP_SuggestedAlternate") || CFEqual(a3, @"FBP_DurationChanged") || CFEqual(a3, @"FBP_TaggedRangeMetadataChanged") || CFEqual(a3, @"FBP_PrefersConcurrentSwitchChanged") || CFEqual(a3, @"FBP_PlaylistUpdateNotification") || CFEqual(a3, @"FBP_NewErrorLogEntry") || CFEqual(a3, @"FBP_RecommendedPrebufferReservationChanged"))
    {
      if (a2)
      {
        CFRetain(a2);
      }

      CMNotificationCenterGetDefaultLocalCenter();
      FigGetAllocatorForMedia();
      FigDeferNotificationToDispatchQueue();
    }

    else
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    if (cf)
    {
      CFRelease(cf);
    }

    if (v7[0])
    {
      CFRelease(v7[0]);
    }
  }
}

uint64_t fpfs_StopPlaybackByStalledTrack(uint64_t a1, unsigned int a2)
{
  v139 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 16);
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v6 = *DerivedStorage;
  v7 = CMBaseObjectGetDerivedStorage();
  cf = 0;
  if (*(v7 + 160))
  {
    fpfs_StopPlaybackByStalledTrack_cold_1(v6);
  }

  else
  {
    fpfs_stopPlaybackForInternalReason(v6);
  }

  v8 = *(DerivedStorage + 504);
  if (v8)
  {
    if (FigCFErrorIsEqualToOSStatus(v8, @"CoreMediaErrorDomain", -12465))
    {
      v10 = 4294954433;
LABEL_15:
      fpfs_StopPlayingItem();
      goto LABEL_11;
    }

    v9 = CMBaseObjectGetDerivedStorage();
    memset(&v102, 0, sizeof(v102));
    memset(&v138, 0, sizeof(v138));
    if (*(*(CMBaseObjectGetVTable() + 16) + 24))
    {
      fpfs_GetItemBufferedDuration(v4, &v102, 0, 0);
      if (*(v9 + 504))
      {
        time1 = v102;
        *&time2.value = kGaplessTransitionDeadlineInterval;
        time2.epoch = 0;
        if (CMTimeCompare(&time1, &time2) < 0)
        {
          fpfs_GetTime(v9, &time1);
          *&time2.value = kGaplessTransitionDeadlineInterval;
          time2.epoch = 0;
          CMTimeAdd(&v138, &time1, &time2);
          v12 = *(v9 + 2992) != 0;
          time1 = v138;
          time2 = **&MEMORY[0x1E6960C80];
          v98 = *MEMORY[0x1E6960C88];
          v99 = *(MEMORY[0x1E6960C88] + 16);
          v10 = fpfsi_SetCurrentTimeWithRangeAndSeekIDGuts(v4, &time1, 0, &time2, &v98, 0, 0, 0, 1, v12, 1, 1, 0, 0);
          if (v10)
          {
            goto LABEL_15;
          }
        }
      }
    }
  }

  if (!*(a1 + 200))
  {
    ++*(DerivedStorage + 2112);
    *(DerivedStorage + 464) = 0;
    *(DerivedStorage + 2024) = CFAbsoluteTimeGetCurrent();
    fpfs_setUnlikelyToKeepUpAndRanDry(v4);
    fpfs_EnqueueNotification(v6, @"PlaybackStalled", v4, 0);
    v13 = CMBaseObjectGetDerivedStorage();
    v102.value = 0;
    value = @"unknown";
    v138.value = 0x1F0B3D678;
    if (*(v13 + 912))
    {
      AllocatorForMedia = FigGetAllocatorForMedia();
      FigBytePumpGetFigBaseObject();
      v17 = v16;
      v18 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      if (v18)
      {
        v18(v17, 0x1F0B1F318, AllocatorForMedia, &v102);
        if (v102.value)
        {
          v19 = CFGetTypeID(v102.value);
          if (v19 == CFDictionaryGetTypeID())
          {
            CFDictionaryGetValueIfPresent(v102.value, @"cs-iftype", &v138);
            value = v138.value;
          }
        }
      }
    }

    FPSupport_ReportStallToSymptomLog(0, value, *(v13 + 400));
    if (v102.value)
    {
      CFRelease(v102.value);
    }

    v20 = CMBaseObjectGetDerivedStorage();
    v21 = *(v20 + 2568);
    if (v21)
    {
      v22 = *(*(CMBaseObjectGetVTable() + 16) + 56);
      if (v22)
      {
        v22(v21, @"playerStats", 0x1F0B66B38, a2, 0);
      }

      v23 = *(v20 + 2568);
      if (v23)
      {
        v24 = *(a1 + 196);
        v25 = *(*(CMBaseObjectGetVTable() + 16) + 56);
        if (v25)
        {
          v25(v23, @"playerStats", 0x1F0B66B18, v24, 0);
        }
      }

      v26 = *(v20 + 2568);
      if (v26)
      {
        v27 = *(*(CMBaseObjectGetVTable() + 16) + 32);
        if (v27)
        {
          v27(v26, @"playerStats", 0x1F0B650D8, 1);
        }
      }
    }

    v95 = v20;
    v90 = a2;
    v93 = v7;
    v94 = DerivedStorage;
    v28 = CMBaseObjectGetDerivedStorage();
    v102.value = 0;
    fpfsi_RTCReportingUpdateItemStats(v4);
    fpfsi_RTCReportingUpdateCurrentAlternateInfo(v4);
    v29 = 0;
    v30 = (v28 + 2568);
    v91 = v28;
    v31 = v28 + 3024;
    v32 = &stru_1F0B1AFB8;
    do
    {
      if (((1 << v29) & 4) != 0)
      {
        v33 = 0x1F0B66C78;
      }

      else
      {
        v33 = v32;
      }

      if (((1 << v29) & 2) != 0)
      {
        v34 = 0x1F0B66C58;
      }

      else
      {
        v34 = v33;
      }

      if (v29)
      {
        v32 = v34;
      }

      else
      {
        v32 = @"TimeSinceVideoSubStream";
      }

      v35 = *v30;
      Current = CFAbsoluteTimeGetCurrent();
      if (v35)
      {
        v37 = Current;
        v38 = *(v31 + 8 * v29);
        v39 = *(*(CMBaseObjectGetVTable() + 16) + 56);
        if (v39)
        {
          v39(v35, @"playerStats", v32, ((v37 - v38) * 1000.0), 0);
        }
      }

      ++v29;
    }

    while (v29 != 3);
    v40 = *(v91 + 912);
    if (v40)
    {
      fpfs_StopPlaybackByStalledTrack_cold_2(v40, v30, &v102.value);
    }

    v41 = v95;
    if (v102.value)
    {
      CFRelease(v102.value);
    }

    v42 = *(v95 + 2568);
    v43 = a1;
    v44 = *(a1 + 168) == 1;
    if (v42)
    {
      v45 = *(*(CMBaseObjectGetVTable() + 16) + 56);
      if (v45)
      {
        v45(v42, @"playerStats", 0x1F0B426F8, v44, 0);
      }
    }

    v46 = *(v95 + 1024);
    if (v46)
    {
      AudioOutputChannelCount = 0;
      do
      {
        if (*(v46 + 80) == *(a1 + 80) && *(v46 + 168) == 6 && *(v46 + 48) == 1936684398 && AudioOutputChannelCount <= fpfs_GetAudioOutputChannelCount(*(v46 + 56), 0, 0))
        {
          AudioOutputChannelCount = fpfs_GetAudioOutputChannelCount(*(v46 + 56), 0, 0);
        }

        v46 = *(v46 + 24);
      }

      while (v46);
    }

    else
    {
      AudioOutputChannelCount = 0;
    }

    v48 = *(v95 + 2568);
    if (!v48)
    {
      goto LABEL_119;
    }

    v49 = *(*(CMBaseObjectGetVTable() + 16) + 56);
    if (v49)
    {
      v49(v48, @"playerStats", 0x1F0B65318, AudioOutputChannelCount, 0);
    }

    v50 = *(v95 + 2568);
    if (v50)
    {
      v51 = *(*(CMBaseObjectGetVTable() + 16) + 8);
      if (v51)
      {
        v52 = v51(v50, @"playerStats", 103, 0, 0);
      }

      else
      {
        v52 = -12782;
      }
    }

    else
    {
LABEL_119:
      v52 = -12000;
    }

    if (dword_1EAF169F0)
    {
      LODWORD(time1.value) = 0;
      LOBYTE(time2.value) = 0;
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v54 = time1.value;
      value_low = LOBYTE(time2.value);
      if (os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, time2.value))
      {
        v56 = v54;
      }

      else
      {
        v56 = v54 & 0xFFFFFFFE;
      }

      if (v56)
      {
        v57 = *v95;
        if (*v95)
        {
          v58 = (CMBaseObjectGetDerivedStorage() + 888);
        }

        else
        {
          v58 = "";
        }

        v92 = v58;
        v96 = v52;
        if (v4)
        {
          v59 = (CMBaseObjectGetDerivedStorage() + 3096);
        }

        else
        {
          v59 = "";
        }

        v89 = v59;
        if (*(v95 + 332))
        {
          v60 = "Yes";
        }

        else
        {
          v60 = "No";
        }

        v88 = v60;
        fpfs_GetTime(v95, &v102);
        Seconds = CMTimeGetSeconds(&v102);
        v102 = *(v95 + 320);
        v62 = CMTimeGetSeconds(&v102);
        if (*(a1 + 168) == 1)
        {
          v63 = "Yes";
        }

        else
        {
          v63 = "No";
        }

        v86 = v63;
        v87 = *(v95 + 1728);
        if (FigAlternateIsAudioOnly(*(v95 + 1680)))
        {
          v64 = "Yes";
        }

        else
        {
          v64 = "No";
        }

        v81 = v64;
        v82 = *(v95 + 2824);
        v83 = *(v95 + 2828);
        v84 = *(v95 + 2836);
        v85 = *(v95 + 2868);
        if (*(v95 + 2688))
        {
          v65 = FigGetUpTimeNanoseconds() - *(v95 + 2688);
        }

        else
        {
          v65 = 0;
        }

        v66 = -1.0;
        if (*(v95 + 1608))
        {
          v102 = *(v95 + 1616);
          v67 = CMTimeGetSeconds(&v102);
          if (*(v95 + 1608))
          {
            v102 = *(v95 + 1640);
            v66 = CMTimeGetSeconds(&v102);
          }
        }

        else
        {
          v67 = -1.0;
        }

        LODWORD(v102.value) = 136320002;
        *(&v102.value + 4) = "fpfsi_RTCReportingReportStall";
        LOWORD(v102.flags) = 2048;
        *(&v102.flags + 2) = v57;
        HIWORD(v102.epoch) = 2082;
        v103 = v92;
        v104 = 2048;
        v105 = v4;
        v106 = 2082;
        v107 = v89;
        v108 = 1024;
        v109 = v96;
        v110 = 1024;
        v111 = v90;
        v112 = 2080;
        v113 = v88;
        v114 = 2048;
        v115 = Seconds;
        v116 = 2048;
        v117 = v62;
        v118 = 2080;
        v119 = v86;
        v120 = 1024;
        v121 = v87;
        v122 = 2080;
        v123 = v81;
        v124 = 1024;
        v125 = v82;
        v126 = 1024;
        v127 = v83;
        v128 = 1024;
        v129 = v84;
        v130 = 1024;
        v131 = v85;
        v132 = 2048;
        v133 = v65;
        v134 = 2048;
        v135 = v67;
        v136 = 2048;
        v137 = v66;
        LODWORD(v80) = 174;
        _os_log_send_and_compose_impl(v56, 0, &v138, 128, &dword_1962D5000, os_log_and_send_and_compose_flags_and_os_log_type, value_low, "<<<< FigStreamPlayer >>>> %s: [%p|%{public}s] <%p|%{public}s>: Issued PlaybackStalled event with err %d: Reason %d, SeekPending %s, now %f, lastSeekTimeSet %f, Syncing %s, VarRank %d, AudioOnly %s, lastSwitch(fromVariantRank %d, toVariantRank %d, direction %d, switchReason %d, TimeSinceSwitchEndTime %lld), nextMoreFireTime %.3f, nextMorenextTime %.3f", &v102, v80);
        v43 = a1;
      }

      fig_log_call_emit_and_clean_up_after_send_and_compose();
      v41 = v95;
    }

    v68 = *(v41 + 96);
    if (v68)
    {
      FigAlternatePlaybackBitrateMonitorReportStall(v68);
    }

    if (*(v94 + 912))
    {
      v102.value = 0;
      v69 = FigGetAllocatorForMedia();
      FigBytePumpGetFigBaseObject();
      v71 = v70;
      v72 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      if (v72)
      {
        v72(v71, 0x1F0B1F818, v69, &v102);
        if (v102.value)
        {
          fpfs_GetOptionsDictionaryForSelectedMediaType(v94, 1986618469);
          v77 = FigCFDictionaryGetValue();
          v78 = *(v43 + 48);
          switch(v78)
          {
            case 1935832172:
              v79 = 6;
              break;
            case 1936684398:
              v79 = 2;
              break;
            case 1986618469:
              v79 = v77 ? 3 : 4;
              break;
            default:
              v79 = 0;
              break;
          }

          FigCMCDHeaderVendorSetBufferDidStarve(v102.value, v79);
          if (v102.value)
          {
            CFRelease(v102.value);
            v102.value = 0;
          }
        }
      }
    }

    v73 = FigGetAllocatorForMedia();
    FigMetricItemStallEventCreate(v73, *(v94 + 1680), &cf, *(v94 + 840), *(v93 + 108));
    v74 = *(v94 + 3400);
    v75 = cf;
    v76 = *(*(CMBaseObjectGetVTable() + 16) + 40);
    if (v76)
    {
      v76(v74, 0, v75);
    }
  }

  v10 = 0;
LABEL_11:
  if (cf)
  {
    CFRelease(cf);
  }

  return v10;
}

void fpfsi_RemoveDateEntry(uint64_t a1, void *a2)
{
  v4 = a2[2];
  if (v4)
  {
    CFRelease(v4);
  }

  v5 = *a2;
  v6 = a2[1];
  v7 = (a1 + 1600);
  if (*a2)
  {
    v7 = (*a2 + 8);
  }

  *v7 = v6;
  *v6 = v5;

  free(a2);
}

void fpfs_HandleScanningBoundaryTimerEnd(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v2 = CMBaseObjectGetDerivedStorage();
  v3 = *(v2 + 688);
  v4 = *(v2 + 80);
  Count = CFArrayGetCount(*(v2 + 72));
  if (v4)
  {
    v6 = Count + 1;
  }

  else
  {
    v6 = Count;
  }

  if (FigPlaybackGetEffectiveActionAtEnd(v3, v6) == 2)
  {
    fpfs_HandleScanningBoundaryTimerEnd_cold_1(DerivedStorage, v7);
  }

  else
  {

    fpfs_StopPlayingItem();
  }
}

uint64_t fpfsi_SetCurrentTimeWithRangeAndSeekIDGuts(const __CFArray *a1, CMTime *a2, unsigned int a3, uint64_t a4, __int128 *a5, uint64_t a6, const void *a7, int a8, char a9, char a10, char a11, char a12, char *a13, char a14)
{
  v213 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v21 = *DerivedStorage;
  v181 = CMBaseObjectGetDerivedStorage();
  v190 = 0uLL;
  v191 = 0;
  v172 = *(DerivedStorage + 332);
  LODWORD(v163) = *(DerivedStorage + 530);
  HIDWORD(v177) = (a3 >> 6) & 1;
  v188 = *MEMORY[0x1E6960C70];
  v22 = *(MEMORY[0x1E6960C70] + 16);
  v189 = v22;
  v179 = v188;
  *&v187.value = v188;
  v187.epoch = v22;
  v209 = *MEMORY[0x1E6960C70];
  timescale = *(MEMORY[0x1E6960C70] + 8);
  v185 = 0;
  cf = 0;
  CFRetain(a1);
  v23 = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  ++*(v23 + 8);
  if (FigRetainProxyIsInvalidated())
  {
    fpfsi_SetCurrentTimeWithRangeAndSeekIDGuts_cold_1(&time1);
    goto LABEL_341;
  }

  flags = a2->flags;
  if ((~flags & 0x11) == 0)
  {
    fpfsi_SetCurrentTimeWithRangeAndSeekIDGuts_cold_6(&time1);
    goto LABEL_341;
  }

  if ((flags & 1) == 0)
  {
    fpfsi_SetCurrentTimeWithRangeAndSeekIDGuts_cold_5(&time1);
    goto LABEL_341;
  }

  if (*(a4 + 12))
  {
    time1 = *a4;
    *&time1_16[0] = *(a4 + 16);
    time2 = *a2;
    if (CMTimeCompare(&time1, &time2) >= 1)
    {
      fpfsi_SetCurrentTimeWithRangeAndSeekIDGuts_cold_2(&time1);
      goto LABEL_341;
    }
  }

  if (*(a5 + 12))
  {
    time1 = *&a2->value;
    *&time1_16[0] = a2->epoch;
    time2 = *a5;
    if (CMTimeCompare(&time1, &time2) >= 1)
    {
      fpfsi_SetCurrentTimeWithRangeAndSeekIDGuts_cold_3(&time1);
      goto LABEL_341;
    }
  }

  if (!a6 && a11)
  {
    a6 = *(DerivedStorage + 3208);
    *(DerivedStorage + 3208) = FPSupport_IncrementSeekID(*(DerivedStorage + 3208));
  }

  HIDWORD(v177) = HIDWORD(v177) && (*(DerivedStorage + 1436) & 1) != 0 && fpfsi_isAssociatedInterstitialEventActive(a1) != 0;
  v25 = *(DerivedStorage + 2232);
  *(DerivedStorage + 2232) = a7;
  if (a7)
  {
    CFRetain(a7);
  }

  if (v25)
  {
    CFRelease(v25);
  }

  v26 = a3 & 0xF;
  v27 = *(DerivedStorage + 2220);
  if (v27 && v27 != a6)
  {
    fpfs_SeekDidFail();
  }

  fpfsi_GetDuration(a1, &v188);
  v174 = a6;
  if (!*(v181 + 32))
  {
    goto LABEL_43;
  }

  v28 = *(DerivedStorage + 912);
  if (!v28 || !*(DerivedStorage + 462))
  {
    goto LABEL_43;
  }

  *&time2.value = v179;
  time2.epoch = v22;
  *&theArray.value = v179;
  theArray.epoch = v22;
  if ((~a2->flags & 5) == 0 && (v188.n128_u8[12] & 0x1D) != 1)
  {
    lhs = *a2;
    v29 = *(*(CMBaseObjectGetVTable() + 16) + 144);
    if (v29)
    {
      time1 = *&lhs.value;
      *&time1_16[0] = lhs.epoch;
      if (!v29(v28, &time1, 3, &time2, &theArray) && (time2.flags & 1) != 0)
      {
        v124 = *&time2.value;
        *&a2->value = *&time2.value;
        epoch = time2.epoch;
        a2->epoch = time2.epoch;
        *a4 = v124;
        *(a4 + 16) = epoch;
        v32 = a5;
        *a5 = v124;
        *(a5 + 2) = epoch;
        goto LABEL_308;
      }
    }
  }

  if (v26 == 7)
  {
    lhs = *a2;
    *&rhs.value = kInBufferSeekTimeRequired;
    rhs.epoch = 0;
    CMTimeAdd(&time1, &lhs, &rhs);
    if (fpfsi_TimeInTotalTimeRangeInBuffer() || (v33 = *(DerivedStorage + 912), lhs = *a2, (v34 = *(*(CMBaseObjectGetVTable() + 16) + 144)) == 0) || (time1 = *&lhs.value, *&time1_16[0] = lhs.epoch, v34(v33, &time1, 4, &time2, &theArray)))
    {
      v26 = 7;
      goto LABEL_43;
    }

    v32 = a5;
    if ((time2.flags & 1) == 0)
    {
      v26 = 7;
      goto LABEL_309;
    }

    *a2 = time2;
LABEL_308:
    v26 = 5;
    goto LABEL_309;
  }

  if (v26 != 6)
  {
LABEL_43:
    v35 = -1;
    v32 = a5;
    goto LABEL_44;
  }

  v30 = *(DerivedStorage + 912);
  lhs = *a2;
  v31 = *(*(CMBaseObjectGetVTable() + 16) + 144);
  if (!v31 || (time1 = *&lhs.value, *&time1_16[0] = lhs.epoch, v31(v30, &time1, 3, &time2, &theArray)))
  {
    v26 = 6;
    goto LABEL_43;
  }

  v32 = a5;
  if ((time2.flags & 1) == 0)
  {
    v26 = 6;
LABEL_309:
    v35 = -1;
    goto LABEL_44;
  }

  memset(time1_16, 0, sizeof(time1_16));
  time1 = 0u;
  fpfsi_TotalTimeRangeInBuffer();
  v122 = *(DerivedStorage + 1680);
  if (v122 && FigAlternateIsIFrameOnly(v122))
  {
    p_theArray = &theArray;
  }

  else
  {
    p_theArray = &time2;
  }

  *&a2->value = *&p_theArray->value;
  a2->epoch = p_theArray->epoch;
  if ((time1.n128_u8[12] & 1) != 0 && (BYTE4(time1_16[1]) & 1) != 0 && !*(&time1_16[1] + 1) && (*(&time1_16[0] + 1) & 0x8000000000000000) == 0 && (*(DerivedStorage + 392) & 0xF) == 6)
  {
    lhs = *p_theArray;
    *&rhs.value = time1;
    rhs.epoch = *&time1_16[0];
    if (CMTimeCompare(&lhs, &rhs) < 0)
    {
      lhs = theArray;
      *&rhs.value = time1;
      rhs.epoch = *&time1_16[0];
      if ((CMTimeCompare(&lhs, &rhs) & 0x80000000) == 0)
      {
        *&a2->value = time1;
        a2->epoch = *&time1_16[0];
      }
    }
  }

  v26 = 5;
  v35 = 6;
LABEL_44:
  time1 = *&a2->value;
  *&time1_16[0] = a2->epoch;
  fpfsi_setLastSeekTimeSet(DerivedStorage, &time1);
  v36 = (DerivedStorage + 344);
  if (v26 == 5)
  {
    if (*(a4 + 12))
    {
      v37 = a4;
    }

    else
    {
      v37 = a2;
    }

    v38 = *&v37->value;
    *(DerivedStorage + 360) = v37->epoch;
    *v36 = v38;
    v39 = DerivedStorage + 368;
    if ((*(v32 + 12) & 1) == 0)
    {
      v40 = *&a2->value;
      v41 = a2->epoch;
      goto LABEL_52;
    }
  }

  else
  {
    v42 = *a4;
    *(DerivedStorage + 360) = *(a4 + 16);
    *v36 = v42;
    v39 = DerivedStorage + 368;
  }

  v40 = *v32;
  v41 = *(v32 + 2);
LABEL_52:
  *(v39 + 16) = v41;
  *v39 = v40;
  if (v35 == -1)
  {
    v43 = a3;
  }

  else
  {
    v43 = v35;
  }

  *(DerivedStorage + 392) = v43;
  *(DerivedStorage + 3184) = FigGetUpTimeNanoseconds();
  v173 = v21;
  v176 = v22;
  v44 = v174;
  if ((a3 & 0x20) == 0 && a12)
  {
    v168 = a8;
    v45 = v26;
    fpfsi_clearCoordinatedPlaybackSynchronizationTimebase(a1);
    fpfs_PlayQueueCallForEachItem(v21, fpfs_clearCoordinatedPlaybackSynchronizationTimebaseForPlayQueueItemsApply, a1);
    theArray = *a2;
    LODWORD(lhs.value) = 0;
    v46 = CMBaseObjectGetDerivedStorage();
    CMBaseObjectGetDerivedStorage();
    if (*(v46 + 80) == a1)
    {
      fpfs_getPlaybackState(v21, &lhs, 0);
      if (LODWORD(lhs.value) != 6)
      {
        v47 = *(v46 + 108);
        if (v47 <= 2.0 && v47 >= 0.0)
        {
          time1 = *&theArray.value;
          *&time1_16[0] = theArray.epoch;
          fpfs_notifyExternalStartupTasksOfEvents();
          if (!fpfs_areAllExternalStartupTasksCompleted(v21))
          {
            if (dword_1EAF169F0)
            {
              LODWORD(rhs.value) = 0;
              LOBYTE(type.value) = 0;
              os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
              value = rhs.value;
              v112 = os_log_and_send_and_compose_flags_and_os_log_type;
              if (os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT))
              {
                v113 = value;
              }

              else
              {
                v113 = value & 0xFFFFFFFE;
              }

              if (v113)
              {
                if (v173)
                {
                  v114 = (CMBaseObjectGetDerivedStorage() + 888);
                }

                else
                {
                  v114 = "";
                }

                time1 = *&theArray.value;
                *&time1_16[0] = theArray.epoch;
                Seconds = CMTimeGetSeconds(&time1);
                Description = FigPlayerPlaybackStateGetDescription(*(v46 + 164));
                LODWORD(time2.value) = 136316418;
                *(&time2.value + 4) = "fpfs_triggerStartupTasksForSeekIfNecessary";
                LOWORD(time2.flags) = 2048;
                *(&time2.flags + 2) = v173;
                HIWORD(time2.epoch) = 2082;
                v193 = v114;
                v194 = 2048;
                v195 = *&Seconds;
                v196 = 1024;
                *v197 = v174;
                *&v197[4] = 2080;
                *&v197[6] = Description;
                LODWORD(v160) = 58;
                _os_log_send_and_compose_impl(v113, 0, &time1, 128, &dword_1962D5000, v112, 0, "<<<< FigStreamPlayer >>>> %s: [%p|%{public}s] Waiting for startup tasks for seek to %.3f seekID %d playbackState %s", &time2);
                v22 = v176;
              }

              fig_log_call_emit_and_clean_up_after_send_and_compose();
              v21 = v173;
              v44 = v174;
              v32 = a5;
            }
          }
        }
      }
    }

    v26 = v45;
    a8 = v168;
  }

  if ((*(a4 + 12) & 0x1D) == 1)
  {
    time1 = *a4;
    *&time1_16[0] = *(a4 + 16);
    time2 = *v32;
    if (!CMTimeCompare(&time1, &time2))
    {
      v26 = 5;
    }
  }

  *(DerivedStorage + 2220) = v44;
  *(DerivedStorage + 2240) = a8;
  *(DerivedStorage + 1472) = v179;
  *(DerivedStorage + 1488) = v22;
  time1 = *&a2->value;
  *&time1_16[0] = a2->epoch;
  time2 = **&MEMORY[0x1E6960CC0];
  if (CMTimeCompare(&time1, &time2) || (*(DerivedStorage + 236) & 1) != 0)
  {
    if (*(DerivedStorage + 593))
    {
      v48 = FPSupport_SeekIDGetSource(v44);
      if (v44)
      {
        if (v48 != 1)
        {
          *(DerivedStorage + 593) = 0;
        }
      }
    }

    fpfs_GetTime(DerivedStorage, &v190);
    v49 = *(DerivedStorage + 1680);
    if (!v49)
    {
      v51 = 0;
      v52 = ((a3 >> 9) & 1) == 0;
      goto LABEL_108;
    }

    IsIFrameOnly = FigAlternateIsIFrameOnly(v49);
    v51 = IsIFrameOnly != 0;
    v52 = ((a3 >> 9) & 1) == 0;
    if (((a3 >> 9) & 1) != 0 || v26 != 5)
    {
      goto LABEL_103;
    }

    v22 = v176;
    if (!IsIFrameOnly)
    {
      goto LABEL_108;
    }

    v53 = CMBaseObjectGetDerivedStorage();
    theArray.value = 0;
    v54 = CMBaseObjectGetDerivedStorage();
    if (!*(v54 + 40))
    {
LABEL_90:
      v169 = v51;
      LODWORD(theArray.value) = 0;
      LOBYTE(lhs.value) = 0;
      v59 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v60 = theArray.value;
      value_low = LOBYTE(lhs.value);
      if (os_log_type_enabled(v59, lhs.value))
      {
        v62 = v60;
      }

      else
      {
        v62 = v60 & 0xFFFFFFFE;
      }

      if (!v62)
      {
        v22 = v176;
LABEL_107:
        v52 = 1;
        fig_log_call_emit_and_clean_up_after_send_and_compose();
        v26 = 0;
        v21 = v173;
        v51 = v169;
LABEL_108:
        if ((v188.n128_u8[12] & 0x1D) == 1)
        {
          time1 = v188;
          *&time1_16[0] = v189;
          CMTimeMultiplyByFloat64(&v187, &time1, 0.95);
          time1 = v190;
          *&time1_16[0] = v191;
          time2 = v187;
          if (CMTimeCompare(&time1, &time2) < 0)
          {
            LOBYTE(v68) = 0;
          }

          else
          {
            time1 = *&a2->value;
            *&time1_16[0] = a2->epoch;
            time2 = v187;
            v68 = CMTimeCompare(&time1, &time2) >> 31;
          }

          *(DerivedStorage + 3080) |= v68;
        }

        v165 = (DerivedStorage + 1472);
        if (v26 != 5 && v26)
        {
          goto LABEL_122;
        }

        time1 = *&a2->value;
        *&time1_16[0] = a2->epoch;
        *&time2.value = v190;
        time2.epoch = v191;
        if (!(CMTimeCompare(&time1, &time2) | a3 & 0x100 | v172 & 1))
        {
          time1 = *&a2->value;
          *&time1_16[0] = a2->epoch;
          v106 = 1;
          fpfs_SeekDidComplete();
          if (!*(DerivedStorage + 462))
          {
            v107 = *&a2->value;
            if (v26 == 5)
            {
              *(DerivedStorage + 1488) = a2->epoch;
              *v165 = v107;
            }

            else
            {
              *(DerivedStorage + 240) = a2->epoch;
              *(DerivedStorage + 224) = v107;
            }
          }

          goto LABEL_257;
        }

        if (v26 != 5 || (a2->flags & 0x1D) != 1)
        {
LABEL_122:
          HIDWORD(v163) = 0;
          goto LABEL_123;
        }

        v69 = !v52;
        if (!v51)
        {
          v69 = 1;
        }

        if (v69)
        {
          v70 = *&a2->value;
          *(DerivedStorage + 1488) = a2->epoch;
          *v165 = v70;
          HIDWORD(v163) = 1;
LABEL_123:
          time1 = *&a2->value;
          *&time1_16[0] = a2->epoch;
          *&theArray.value = v190;
          theArray.epoch = v191;
          CMTimeSubtract(&time2, &time1, &theArray);
          CMTimeAbsoluteValue(&time1, &time2);
          *&theArray.value = kSeekToCurrentFudge;
          theArray.epoch = 0;
          CMTimeMultiply(&time2, &theArray, 2);
          v71 = CMTimeCompare(&time1, &time2);
          if ((a3 & 0x80) == 0 && v71 >= 1)
          {
            time1 = v179;
            *&time1_16[0] = v22;
            fpfsi_applyTimeToPauseBuffering(a1, &time1, 0);
          }

          if ((a3 & 0x10) != 0)
          {
            time1 = v190;
            *&time1_16[0] = v191;
            if (fpfsi_atOrAfterTimeToPausePlayback(DerivedStorage))
            {
              time1 = *&a2->value;
              *&time1_16[0] = a2->epoch;
              time2 = *(DerivedStorage + 1424);
              if (CMTimeCompare(&time1, &time2) < 0)
              {
                time1 = *&a2->value;
                *&time1_16[0] = a2->epoch;
                fpfsi_applyTimeToPausePlayback(a1, &time1, 0, 0, 0);
              }
            }
          }

          if (*(v181 + 32) && *MEMORY[0x1E695FF58] == 1)
          {
            kdebug_trace();
          }

          HIDWORD(v162) = v26;
          if (fpfs_getNext(v181, 0) == a1)
          {
            if (a14)
            {
              *(v181 + 112) = v179;
              *(v181 + 128) = v22;
              *(v181 + 136) = v179;
              *(v181 + 152) = v22;
              AllocatorForMedia = FigGetAllocatorForMedia();
              FigMetricItemSeekEventCreate(AllocatorForMedia, *(DerivedStorage + 1680), &v185, 0.0, *(DerivedStorage + 840));
              v73 = *(DerivedStorage + 3400);
              v74 = v185;
              v75 = *(*(CMBaseObjectGetVTable() + 16) + 40);
              if (v75)
              {
                v75(v73, 0, v74);
              }
            }

            fpfs_enqueuePrerollWasCancelledNotificationIfNeeded(a1);
          }

          if (dword_1EAF169F0)
          {
            v170 = v51;
            LODWORD(theArray.value) = 0;
            LOBYTE(lhs.value) = 0;
            v76 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            v77 = theArray.value;
            v78 = LOBYTE(lhs.value);
            if (os_log_type_enabled(v76, lhs.value))
            {
              v79 = v77;
            }

            else
            {
              v79 = v77 & 0xFFFFFFFE;
            }

            if (v79)
            {
              if (v21)
              {
                v80 = (CMBaseObjectGetDerivedStorage() + 888);
              }

              else
              {
                v80 = "";
              }

              v81 = "";
              if (a1)
              {
                v82 = (CMBaseObjectGetDerivedStorage() + 3096);
              }

              else
              {
                v82 = "";
              }

              time1 = *&a2->value;
              *&time1_16[0] = a2->epoch;
              v83 = CMTimeGetSeconds(&time1);
              time1 = v190;
              *&time1_16[0] = v191;
              v84 = CMTimeGetSeconds(&time1);
              time1 = *(DerivedStorage + 1160);
              *&time1_16[0] = *(DerivedStorage + 1176);
              v85 = CMTimeGetSeconds(&time1);
              if (*(DerivedStorage + 1484))
              {
                v81 = "- preciseSeek is ";
              }

              time1 = *v165;
              *&time1_16[0] = *(DerivedStorage + 1488);
              v86 = CMTimeGetSeconds(&time1);
              v87 = *(DerivedStorage + 2220);
              LODWORD(time2.value) = 136317698;
              *(&time2.value + 4) = "fpfsi_SetCurrentTimeWithRangeAndSeekIDGuts";
              LOWORD(time2.flags) = 2048;
              *(&time2.flags + 2) = v173;
              HIWORD(time2.epoch) = 2082;
              v193 = v80;
              v194 = 2048;
              v195 = a1;
              v196 = 2082;
              *v197 = v82;
              *&v197[8] = 2048;
              *&v197[10] = v83;
              v198 = 2048;
              v199 = v84;
              v200 = 2048;
              v201 = v85;
              v202 = 2082;
              v203 = v81;
              v21 = v173;
              v204 = 2048;
              v205 = v86;
              v206 = 1024;
              v207 = v87;
              LODWORD(v160) = 108;
              _os_log_send_and_compose_impl(v79, 0, &time1, 128, &dword_1962D5000, v76, v78, "<<<< FigStreamPlayer >>>> %s: [%p|%{public}s] <%p|%{public}s>: Seeking to %1.5g from %1.5g, pumpOffset is %1.5g %{public}s %1.5g, seekID %d", &time2);
              v22 = v176;
              v44 = v174;
            }

            fig_log_call_emit_and_clean_up_after_send_and_compose();
            v51 = v170;
          }

          if (!a10)
          {
            v88 = *(DerivedStorage + 2992);
            if (v88)
            {
              v89 = *(DerivedStorage + 2912);
              if (v89)
              {
                do
                {
                  v90 = *v89;
                  v91 = v89[1];
                  v92 = (*v89 + 8);
                  if (!*v89)
                  {
                    v92 = (DerivedStorage + 2920);
                  }

                  *v92 = v91;
                  *v91 = v90;
                  --*(DerivedStorage + 2984);
                  free(v89);
                  v89 = *(DerivedStorage + 2912);
                }

                while (v89);
                v88 = *(DerivedStorage + 2992);
                v22 = v176;
              }

              time1 = *&a2->value;
              *&time1_16[0] = a2->epoch;
              CMTimebaseSetTime(v88, &time1);
              v93 = 0;
              *(DerivedStorage + 608) = v179;
              *(DerivedStorage + 624) = v22;
              goto LABEL_260;
            }
          }

          v94 = *(MEMORY[0x1E6960C70] + 12);
          if ((v51 & 1) == 0 && fpfsi_EnterIFrameModeForSeekWithNonzeroToleranceIfPossible(v21, a1))
          {
            if (fpfsi_handleIFrameOnlyRateTransition(a1, 0, 1, *(DerivedStorage + 1664), 1, 1.0))
            {
              HIDWORD(v167) = 1;
              v51 = 0;
              goto LABEL_193;
            }

            if (!dword_1EAF169F0)
            {
              HIDWORD(v167) = 0;
              v51 = 1;
LABEL_193:
              v108 = a2->flags;
              if ((~v108 & 5) == 0)
              {
                time1 = v190;
                *&time1_16[0] = v191;
                if (fpfsi_TimeInTotalTimeRangeInBuffer())
                {
                  memset(time1_16, 0, sizeof(time1_16));
                  time1 = 0u;
                  fpfsi_getPumpAvailableTimeRange(DerivedStorage, &time1);
                  if (!v128)
                  {
                    v22 = v176;
                    v106 = 0;
                    if (time1.n128_u8[12])
                    {
                      v109 = 1;
                      if ((BYTE4(time1_16[1]) & 1) != 0 && !*(&time1_16[1] + 1) && (*(&time1_16[0] + 1) & 0x8000000000000000) == 0)
                      {
                        memset(&time2, 0, sizeof(time2));
                        fpfs_GetTime(DerivedStorage, &time2);
                        memset(&theArray, 0, sizeof(theArray));
                        *&rhs.value = time1;
                        rhs.epoch = *&time1_16[0];
                        type = *(time1_16 + 8);
                        CMTimeAdd(&lhs, &rhs, &type);
                        rhs = *(DerivedStorage + 1160);
                        CMTimeAdd(&theArray, &lhs, &rhs);
                        lhs = time2;
                        rhs = theArray;
                        if (CMTimeCompare(&lhs, &rhs) < 0)
                        {
                          v106 = 0;
                          v209 = theArray.value;
                          v94 = theArray.flags;
                          timescale = theArray.timescale;
                          v109 = 1;
                          v129 = theArray.epoch;
                          v22 = v176;
                        }

                        else
                        {
                          lhs = time2;
                          v106 = 1;
                          fpfs_SeekDidComplete();
                          if (v159)
                          {
                            v93 = v159;
                            v106 = 0;
                            v21 = v173;
                            v22 = v176;
LABEL_348:
                            if (!v93)
                            {
                              goto LABEL_257;
                            }

                            goto LABEL_342;
                          }

                          v109 = 0;
                          v22 = v176;
                          v129 = v176;
                          v44 = v174;
                        }

LABEL_236:
                        v130 = *(DerivedStorage + 524);
                        if ((v51 & 1) == 0 && v109)
                        {
                          *(DerivedStorage + 524) = 0;
                        }

                        v131 = 0;
                        v132 = *(v181 + 32);
                        if (v109 && (v51 & 1) == 0 && a9 && v132)
                        {
                          lhs.value = a2->value;
                          lhs.timescale = a2->timescale;
                          v136 = *(DerivedStorage + 1484);
                          if (v136)
                          {
                            lhs.value = *v165;
                            lhs.timescale = *(DerivedStorage + 1480);
                            v129 = *(DerivedStorage + 1488);
                            v94 = v136;
                          }

                          else
                          {
                            v137 = a2->flags;
                            v138 = a2->epoch;
                            if ((~v137 & 5) != 0 || (v94 & 1) == 0)
                            {
                              if (HIDWORD(v162) == 7)
                              {
                                time2.value = a2->value;
                                time2.timescale = a2->timescale;
                                time2.flags = v137;
                                time2.epoch = v138;
                                *&theArray.value = kInBufferSeekTimeRequired;
                                theArray.epoch = 0;
                                CMTimeAdd(&time1, &time2, &theArray);
                                lhs.value = time1.n128_u64[0];
                                v94 = time1.n128_u32[3];
                                lhs.timescale = time1.n128_i32[2];
                                v129 = *&time1_16[0];
                              }

                              else
                              {
                                v94 = a2->flags;
                                v129 = a2->epoch;
                              }
                            }

                            else
                            {
                              lhs.value = v209;
                              lhs.timescale = timescale;
                            }
                          }

                          time1.n128_u64[0] = lhs.value;
                          time1.n128_u64[1] = __PAIR64__(v94, lhs.timescale);
                          *&time1_16[0] = v129;
                          fpfsi_TryToSeekWithinBuffer();
                          if (v139)
                          {
                            v109 = 0;
                            *(DerivedStorage + 530) = 0;
                            v131 = 1;
                            v106 = 1;
                          }

                          else
                          {
                            v131 = 0;
                            v109 = 1;
                          }

                          if (!*(v181 + 32))
                          {
                            goto LABEL_247;
                          }
                        }

                        else if (!v132)
                        {
                          goto LABEL_247;
                        }

                        if (!*(DerivedStorage + 912) || !v109 || !*(DerivedStorage + 462))
                        {
                          goto LABEL_247;
                        }

                        *(DerivedStorage + 530) = 0;
                        fpfs_CancelTrialSwitch(a1);
                        fpfs_CreateAccessLogEntryWithUnlock(a1, &cf);
                        v140 = BYTE4(v167) ^ 1;
                        if (!v51)
                        {
                          v140 = 1;
                        }

                        if (v140)
                        {
                          CMTimeMakeWithSeconds(&time1, *(DerivedStorage + 1528), 1000);
                          time2 = *a2;
                          *&theArray.value = v190;
                          theArray.epoch = v191;
                          lhs = *a4;
                          rhs = *a5;
                          v141 = &theArray;
                          p_lhs = &lhs;
                          p_rhs = &rhs;
                          v143 = a1;
                          v144 = v44;
                          v145 = v51;
                          v146 = HIDWORD(v163);
                        }

                        else
                        {
                          CMTimeMakeWithSeconds(&time1, *(DerivedStorage + 1528), 1000);
                          time2 = *a2;
                          v141 = MEMORY[0x1E6960C68];
                          p_lhs = MEMORY[0x1E6960C70];
                          v143 = a1;
                          v144 = v44;
                          v145 = v51;
                          v146 = HIDWORD(v163);
                          p_rhs = MEMORY[0x1E6960C70];
                        }

                        fpfs_IssueSeekToPump(v143, &time2, v141, v144, v145, v146, p_lhs, p_rhs, &time1, v160, v161, v162, v163, v165, v167, a1, v173, v174, a5, v176, v177, a4, v179, *(&v179 + 1), v180);
                        v93 = v148;
                        v22 = v176;
                        if (v148 == -16838)
                        {
                          fpfs_GetTime(DerivedStorage, &time1);
                          v21 = v173;
                          fpfs_SeekDidComplete();
                          goto LABEL_257;
                        }

                        if (!v148)
                        {
                          v149 = 0;
                          v150 = 928;
                          do
                          {
                            if (*(DerivedStorage + v150) > *(DerivedStorage + v150 + 24))
                            {
                              if (!v51 || v149)
                              {
                                if ((v51 & 1) == 0)
                                {
                                  fpfs_ClearAllCachedRenderChains(a1);
                                }

                                fpfs_PrepareForSeek(a1, (1 << v149), 1);
                              }

                              else
                              {
                                time1 = *&a2->value;
                                *&time1_16[0] = a2->epoch;
                                fpfs_PrepareToReuseLastIFrameTrack();
                                if (v151)
                                {
                                  v93 = v151;
                                  goto LABEL_347;
                                }
                              }

                              *(DerivedStorage + v149 + 472) = 0;
                            }

                            ++v149;
                            v150 += 4;
                          }

                          while (v149 != 3);
                          v152 = cf;
                          if (cf)
                          {
                            fpfs_CommitAccessLogEntry(a1, cf);
                            if (*(DerivedStorage + 464))
                            {
                              *(DerivedStorage + 2144) = 1;
                            }
                          }

                          *(DerivedStorage + 3048) = v179;
                          v22 = v176;
                          *(DerivedStorage + 3064) = v176;
                          *(DerivedStorage + 2880) = 0;
                          v153 = *(DerivedStorage + 1728);
                          *(DerivedStorage + 2884) = v153;
                          *(DerivedStorage + 2656) = 0u;
                          *(DerivedStorage + 2672) = 0u;
                          *(DerivedStorage + 2688) = 0;
                          *(DerivedStorage + 2704) = v179;
                          *(DerivedStorage + 2720) = v176;
                          v154 = MEMORY[0x1E6960C80];
                          v155 = *(MEMORY[0x1E6960C80] + 16);
                          *(DerivedStorage + 2744) = v155;
                          v156 = *v154;
                          *(DerivedStorage + 2728) = *v154;
                          *(DerivedStorage + 2752) = v179;
                          *(DerivedStorage + 2768) = v176;
                          *(DerivedStorage + 2776) = v156;
                          *(DerivedStorage + 2792) = v155;
                          *(DerivedStorage + 2828) = -1;
                          *(DerivedStorage + 2856) = -1;
                          *(DerivedStorage + 2832) = 0;
                          *(DerivedStorage + 2840) = 0;
                          *(DerivedStorage + 2844) = 0;
                          *(DerivedStorage + 2848) = 0;
                          *(DerivedStorage + 2800) = 0u;
                          *(DerivedStorage + 2896) = 0;
                          *(DerivedStorage + 2820) = *(DerivedStorage + 2816);
                          *(DerivedStorage + 2824) = v153;
                          *(DerivedStorage + 2852) = *(DerivedStorage + 1732);
                          *(DerivedStorage + 2860) = FigAlternateGetVideoQualityIndex(*(DerivedStorage + 1680), v152);
                          fpfsi_RTCReportingUpdateInitialVariantRank();
                          if (v51)
                          {
                            v106 = 1;
                          }

                          else
                          {
                            CMBaseObjectGetDerivedStorage();
                            v106 = 1;
                            if (!*(DerivedStorage + 2308))
                            {
                              *(DerivedStorage + 2308) = 1;
                            }
                          }

LABEL_247:
                          v133 = *&a2->value;
                          *(DerivedStorage + 240) = a2->epoch;
                          *(DerivedStorage + 224) = v133;
                          if (*(DerivedStorage + 524) != 1)
                          {
                            fpfs_setRanDry(a1);
                            fpfs_EnqueuePlaythroughPredictionNotification(a1);
                          }

                          *(DerivedStorage + 2368) = 0;
                          time1 = *(DerivedStorage + 320);
                          *&time1_16[0] = *(DerivedStorage + 336);
                          fpfsi_setPlaybackRateMonitorPendingSeekTime(DerivedStorage, &time1);
                          if ((a2->flags & 0x1D) == 1 && (!*(DerivedStorage + 462) || !*(v181 + 32)))
                          {
                            time1 = 0uLL;
                            *&time1_16[0] = 0;
                            time2 = *a2;
                            FPSTimelineConverterL2TimeToL3(&time2, &time1);
                            v134 = *(DerivedStorage + 576);
                            *&time2.value = time1;
                            time2.epoch = *&time1_16[0];
                            CMTimebaseSetTime(v134, &time2);
                            if (!*(v181 + 32))
                            {
                              fpfs_EnqueueNotification(v173, @"TimeJumped", a1, 0);
                              time2 = *a2;
                              v22 = v176;
                              fpfs_SeekDidComplete();
                              v106 = 1;
                              if (!a13)
                              {
                                goto LABEL_256;
                              }

                              goto LABEL_255;
                            }

                            fpfsi_updateMaxPlayThroughTime(a1);
                          }

                          if (!a13)
                          {
LABEL_256:
                            v21 = v173;
                            goto LABEL_257;
                          }

LABEL_255:
                          *a13 = v131;
                          goto LABEL_256;
                        }

LABEL_347:
                        *(DerivedStorage + 524) = v130;
                        fpfsi_setLastSeekTimeSet(DerivedStorage, MEMORY[0x1E6960C70]);
                        *v166 = v179;
                        v22 = v176;
                        *(v166 + 16) = v176;
                        *(DerivedStorage + 530) = v164;
                        v21 = v173;
                        goto LABEL_348;
                      }

LABEL_235:
                      v129 = v22;
                      goto LABEL_236;
                    }

LABEL_196:
                    v109 = 1;
                    goto LABEL_235;
                  }

LABEL_234:
                  v106 = 0;
                  v109 = 1;
                  v22 = v176;
                  goto LABEL_235;
                }

                v108 = a2->flags;
              }

              if ((~v108 & 5) == 0)
              {
                v106 = 0;
                v190 = v179;
                v22 = v176;
                v191 = v176;
                goto LABEL_196;
              }

              goto LABEL_234;
            }

            LODWORD(v162) = v94;
            LODWORD(theArray.value) = 0;
            LOBYTE(lhs.value) = 0;
            v101 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            v102 = theArray.value;
            v103 = LOBYTE(lhs.value);
            if (os_log_type_enabled(v101, lhs.value))
            {
              v104 = v102;
            }

            else
            {
              v104 = v102 & 0xFFFFFFFE;
            }

            if (v104)
            {
              if (v173)
              {
                v105 = (CMBaseObjectGetDerivedStorage() + 888);
              }

              else
              {
                v105 = "";
              }

              if (a1)
              {
                v115 = (CMBaseObjectGetDerivedStorage() + 3096);
              }

              else
              {
                v115 = "";
              }

              LODWORD(time2.value) = 136316162;
              *(&time2.value + 4) = "fpfsi_SetCurrentTimeWithRangeAndSeekIDGuts";
              LOWORD(time2.flags) = 2048;
              *(&time2.flags + 2) = v173;
              HIWORD(time2.epoch) = 2082;
              v193 = v105;
              v194 = 2048;
              v195 = a1;
              v196 = 2082;
              *v197 = v115;
              LODWORD(v160) = 52;
              _os_log_send_and_compose_impl(v104, 0, &time1, 128, &dword_1962D5000, v101, v103, "<<<< FigStreamPlayer >>>> %s: [%p|%{public}s] <%p|%{public}s>: entering i-frame mode to perform seek with nonzero tolerance", &time2);
            }

            v51 = 1;
            fig_log_call_emit_and_clean_up_after_send_and_compose();
            HIDWORD(v167) = 0;
LABEL_192:
            v44 = v174;
            v94 = v162;
            goto LABEL_193;
          }

          if (!fpfsi_EnterIFrameModeForSeekWithNonzeroToleranceIfPossible(v21, a1) || *(DerivedStorage + 1680) || !dword_1EAF169F0)
          {
            HIDWORD(v167) = 1;
            goto LABEL_193;
          }

          LODWORD(v162) = v94;
          LODWORD(theArray.value) = 0;
          LOBYTE(lhs.value) = 0;
          v95 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          v96 = theArray.value;
          v97 = LOBYTE(lhs.value);
          if (os_log_type_enabled(v95, lhs.value))
          {
            v98 = v96;
          }

          else
          {
            v98 = v96 & 0xFFFFFFFE;
          }

          if (!v98)
          {
LABEL_191:
            HIDWORD(v167) = 1;
            fig_log_call_emit_and_clean_up_after_send_and_compose();
            goto LABEL_192;
          }

          if (v173)
          {
            v99 = (CMBaseObjectGetDerivedStorage() + 888);
            if (a1)
            {
LABEL_169:
              v100 = (CMBaseObjectGetDerivedStorage() + 3096);
LABEL_190:
              LODWORD(time2.value) = 136316162;
              *(&time2.value + 4) = "fpfsi_SetCurrentTimeWithRangeAndSeekIDGuts";
              LOWORD(time2.flags) = 2048;
              *(&time2.flags + 2) = v173;
              HIWORD(time2.epoch) = 2082;
              v193 = v99;
              v194 = 2048;
              v195 = a1;
              v196 = 2082;
              *v197 = v100;
              LODWORD(v160) = 52;
              _os_log_send_and_compose_impl(v98, 0, &time1, 128, &dword_1962D5000, v95, v97, "<<<< FigStreamPlayer >>>> %s: [%p|%{public}s] <%p|%{public}s>: No alternate list available. Will attempt to enter enter i-frame mode to perform seek with nonzero tolerance", &time2);
              goto LABEL_191;
            }
          }

          else
          {
            v99 = "";
            if (a1)
            {
              goto LABEL_169;
            }
          }

          v100 = "";
          goto LABEL_190;
        }

        fpfsi_SetCurrentTimeWithRangeAndSeekIDGuts_cold_4(&time1);
LABEL_341:
        v106 = 0;
        v93 = time1.n128_u32[0];
        if (!time1.n128_u32[0])
        {
          goto LABEL_257;
        }

LABEL_342:
        if (v93 != -16836 || (v158 = *(v181 + 108), v158 <= 2.0) && v158 >= 0.0)
        {
          fpfs_SeekDidFail();
          goto LABEL_260;
        }

        fpfs_StopPlayingItem();
        goto LABEL_257;
      }

      v63 = *DerivedStorage;
      if (*DerivedStorage)
      {
        v64 = (CMBaseObjectGetDerivedStorage() + 888);
        if (a1)
        {
LABEL_96:
          v65 = a1;
          v66 = (CMBaseObjectGetDerivedStorage() + 3096);
LABEL_106:
          time1 = *&a2->value;
          *&time1_16[0] = a2->epoch;
          v67 = CMTimeGetSeconds(&time1);
          LODWORD(time2.value) = 136316418;
          *(&time2.value + 4) = "fpfsi_SetCurrentTimeWithRangeAndSeekIDGuts";
          LOWORD(time2.flags) = 2048;
          *(&time2.flags + 2) = v63;
          HIWORD(time2.epoch) = 2082;
          v193 = v64;
          v194 = 2048;
          v195 = v65;
          v196 = 2082;
          *v197 = v66;
          *&v197[8] = 2048;
          *&v197[10] = v67;
          LODWORD(v160) = 62;
          _os_log_send_and_compose_impl(v62, 0, &time1, 128, &dword_1962D5000, v59, value_low, "<<<< FigStreamPlayer >>>> %s: [%p|%{public}s] <%p|%{public}s>: cannot perform precise seek to %g; only i-frames are available", &time2);
          a1 = v65;
          v22 = v176;
          v44 = v174;
          goto LABEL_107;
        }
      }

      else
      {
        v64 = "";
        if (a1)
        {
          goto LABEL_96;
        }
      }

      v65 = a1;
      v66 = "";
      goto LABEL_106;
    }

    if (!*(v54 + 48) || !*(v54 + 49) || fpfsi_CreateAndAddScanningModeFilterToBoss(a1, 0) || *(v53 + 2904) && FigAlternateSelectionBossSetProperty(*(v53 + 40), @"Paused", *MEMORY[0x1E695E4C0]))
    {
      goto LABEL_86;
    }

    if (FigAlternateSelectionBossApplyFilters(*(v53 + 40)))
    {
      goto LABEL_86;
    }

    v55 = *(v53 + 40);
    v56 = FigGetAllocatorForMedia();
    if (FigAlternateSelectionBossCopyProperty(v55, @"FilteredAlternateList", v56, &theArray))
    {
      goto LABEL_86;
    }

    if (!theArray.value)
    {
      goto LABEL_90;
    }

    if (CFArrayGetCount(theArray.value) < 1 || (ValueAtIndex = CFArrayGetValueAtIndex(theArray.value, 0), FigAlternateIsIFrameOnly(ValueAtIndex)))
    {
LABEL_86:
      v58 = 1;
    }

    else
    {
      v171 = v51;
      fpfsi_UpdateValidAlternateListAndSuggestAnAlternate();
      if (v116)
      {
        v58 = 1;
      }

      else
      {
        if (dword_1EAF169F0)
        {
          LODWORD(lhs.value) = 0;
          LOBYTE(rhs.value) = 0;
          v117 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          v118 = lhs.value;
          v119 = LOBYTE(rhs.value);
          if (os_log_type_enabled(v117, rhs.value))
          {
            v120 = v118;
          }

          else
          {
            v120 = v118 & 0xFFFFFFFE;
          }

          if (v120)
          {
            if (v173)
            {
              v121 = (CMBaseObjectGetDerivedStorage() + 888);
            }

            else
            {
              v121 = "";
            }

            if (a1)
            {
              v157 = (CMBaseObjectGetDerivedStorage() + 3096);
            }

            else
            {
              v157 = "";
            }

            LODWORD(time2.value) = 136316162;
            *(&time2.value + 4) = "fpfsi_LeaveIFrameModeIfPossible";
            LOWORD(time2.flags) = 2048;
            *(&time2.flags + 2) = v173;
            HIWORD(time2.epoch) = 2082;
            v193 = v121;
            v194 = 2048;
            v195 = a1;
            v196 = 2082;
            *v197 = v157;
            LODWORD(v160) = 52;
            _os_log_send_and_compose_impl(v120, 0, &time1, 128, &dword_1962D5000, v117, v119, "<<<< FigStreamPlayer >>>> %s: [%p|%{public}s] <%p|%{public}s>: Left i-frame mode", &time2);
          }

          LODWORD(v51) = v171;
          fig_log_call_emit_and_clean_up_after_send_and_compose();
          v58 = 0;
          v44 = v174;
          goto LABEL_87;
        }

        v58 = 0;
      }

      v44 = v174;
    }

LABEL_87:
    if (theArray.value)
    {
      CFRelease(theArray.value);
    }

    if (v58)
    {
      goto LABEL_90;
    }

    v52 = 1;
    if (fpfsi_handleIFrameOnlyRateTransition(a1, 1, 0, *(DerivedStorage + 1664), 1, 0.0))
    {
      v51 = v51;
    }

    else
    {
      v51 = 0;
    }

    v26 = 5;
    v21 = v173;
LABEL_103:
    v22 = v176;
    goto LABEL_108;
  }

  fpfs_GetTime(DerivedStorage, &time1);
  fpfs_SeekDidComplete();
  *(DerivedStorage + 2216) = 0;
  v106 = 1;
LABEL_257:
  v93 = 0;
  *(DerivedStorage + 608) = v179;
  *(DerivedStorage + 624) = v22;
  if (v106 && HIDWORD(v177))
  {
    time1 = *(DerivedStorage + 1424);
    *&time1_16[0] = *(DerivedStorage + 1440);
    fpfsi_ClampVideoToTime();
    v93 = 0;
  }

LABEL_260:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v185)
  {
    CFRelease(v185);
  }

  fpfs_UnlockAndPostNotificationsWithCaller(v21);
  CFRelease(a1);
  return v93;
}

const void *fpfsi_isAssociatedInterstitialEventActive(uint64_t a1)
{
  result = *(CMBaseObjectGetDerivedStorage() + 3232);
  if (result)
  {
    return (CFEqual(result, &stru_1F0B1AFB8) == 0);
  }

  return result;
}

void fpfsi_clearCoordinatedPlaybackSynchronizationTimebase(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v2 = *(DerivedStorage + 568);
  if (v2)
  {
    if (!dword_1EAF169F0 || (os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type(), os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT), fig_log_call_emit_and_clean_up_after_send_and_compose(), (v2 = *(DerivedStorage + 568)) != 0))
    {
      CFRelease(v2);
      *(DerivedStorage + 568) = 0;
    }
  }
}

uint64_t fpfsi_handleIFrameOnlyRateTransition(const __CFArray *a1, int a2, int a3, const __CFArray *a4, int a5, float a6)
{
  v94 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v78 = *DerivedStorage;
  v11 = CMBaseObjectGetDerivedStorage();
  valuePtr = 0;
  v12 = a3 | a2;
  if (a6 <= 1.0 || v12 != 0)
  {
    goto LABEL_10;
  }

  v14 = *(CMBaseObjectGetDerivedStorage() + 1024);
  if (!v14)
  {
    goto LABEL_10;
  }

  while (1)
  {
    if (*(v14 + 48) == 1986618469)
    {
      v15 = *(v14 + 112);
      if (v15)
      {
        break;
      }
    }

    v14 = *(v14 + 24);
    if (!v14)
    {
      goto LABEL_10;
    }
  }

  if (!*(v15 + 32))
  {
    goto LABEL_10;
  }

  time.value = 0;
  AllocatorForMedia = FigGetAllocatorForMedia();
  FigRenderPipelineGetFigBaseObject();
  v42 = v41;
  v43 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v43)
  {
    goto LABEL_104;
  }

  v44 = v43(v42, @"VideoQualityOfServiceTier", AllocatorForMedia, &time);
  value = time.value;
  if (v44)
  {
    v46 = 1;
  }

  else
  {
    v46 = time.value == 0;
  }

  if (v46)
  {
    v29 = 0;
    goto LABEL_106;
  }

  CFDictionaryGetValue(time.value, *MEMORY[0x1E6983970]);
  v62 = FigCFEqual();
  if (v62 || FigCFEqual())
  {
    fpfsi_pauseItem(a1);
    v29 = fpfsi_SeekToCurrentTime(a1);
  }

  else
  {
LABEL_104:
    v29 = 0;
  }

  value = time.value;
LABEL_106:
  if (value)
  {
    CFRelease(value);
  }

  if (!v29)
  {
LABEL_10:
    if (dword_1EAF169F0)
    {
      LODWORD(lhs.value) = 0;
      LOBYTE(type.value) = 0;
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    if (!v12)
    {
      return 0;
    }

    if (!a3 || (*(DerivedStorage + 472) = 0, (*(v11 + 108) * a6) <= 0.0))
    {
      fpfs_GetNextTimeToPlay(DerivedStorage, 0, &time);
      if (!fpfsi_atOrAfterTimeToPausePlayback(DerivedStorage))
      {
        v47 = CMBaseObjectGetDerivedStorage();
        fpfsi_pauseItem(a1);
        fpfs_GetTime(v47, &rhs);
        v48 = *(CMBaseObjectGetDerivedStorage() + 1024);
        if (v48)
        {
          while (*(v48 + 48) != 1986618469 || !*(v48 + 112))
          {
            v48 = *(v48 + 24);
            if (!v48)
            {
              goto LABEL_15;
            }
          }

          if (*(v48 + 200))
          {
            v70 = a6 < 0.0 ? fpfs_GetCurrentPTSDescending : fpfs_GetCurrentPTSAscending;
            time = rhs;
            v71 = (a6 < 0.0 ? MEMORY[0x1E6960C88] : MEMORY[0x1E6960C80]);
            v93 = *v71;
            if (CMBufferQueueCallForEachBuffer(*(v48 + 96), v70, &time) == -12863 && (v93.flags & 0x1D) == 1)
            {
              type = v93;
              v81 = rhs;
              CMTimeSubtract(&lhs, &type, &v81);
              if (fabs(CMTimeGetSeconds(&lhs)) < 5.0)
              {
                lhs = v93;
                fpfs_SetTime(a1, &lhs);
              }
            }
          }
        }
      }
    }

LABEL_15:
    if (a2 && a3)
    {
      goto LABEL_17;
    }

    *(DerivedStorage + 528) = 1;
    if (!a2 || a3)
    {
      if (!a2 && a3 && *(DerivedStorage + 912))
      {
        time.value = 0;
        v32 = *(DerivedStorage + 1688);
        v33 = *(DerivedStorage + 1680);
        *(DerivedStorage + 1688) = v33;
        if (v33)
        {
          CFRetain(v33);
        }

        if (v32)
        {
          CFRelease(v32);
        }

        v34 = FigGetAllocatorForMedia();
        FigBytePumpGetFigBaseObject();
        v36 = v35;
        v37 = *(*(CMBaseObjectGetVTable() + 8) + 48);
        if (v37)
        {
          v37(v36, 0x1F0B1EDB8, v34, &time);
        }

        v38 = time.value;
        if (time.value)
        {
          v39 = *(DerivedStorage + 1720);
          *(DerivedStorage + 1720) = time.value;
          CFRetain(v38);
          if (v39)
          {
            CFRelease(v39);
          }

          CFRelease(time.value);
        }
      }

      goto LABEL_17;
    }

    if (!*(DerivedStorage + 1688))
    {
      goto LABEL_17;
    }

    v95.length = CFArrayGetCount(a4);
    v95.location = 0;
    if (!CFArrayContainsValue(a4, v95, *(DerivedStorage + 1688)))
    {
      goto LABEL_78;
    }

    v30 = *(DerivedStorage + 1688);
    if (!*(DerivedStorage + 556))
    {
      ValueAtIndex = *(DerivedStorage + 1688);
      goto LABEL_80;
    }

    v31 = *(DerivedStorage + 1720);
    if (v31)
    {
      CFNumberGetValue(v31, kCFNumberSInt32Type, &valuePtr);
    }

    else
    {
      AverageBitRate = FigAlternateGetAverageBitRate(*(DerivedStorage + 1688));
      if (!AverageBitRate)
      {
        AverageBitRate = FigAlternateGetPeakBitRate(v30);
      }

      valuePtr = AverageBitRate;
    }

    v50 = *(DerivedStorage + 1664);
    if (v50 && CFArrayGetCount(v50) >= 1)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(*(DerivedStorage + 1664), 0);
    }

    else
    {
LABEL_78:
      ValueAtIndex = 0;
    }

    v30 = *(DerivedStorage + 1688);
LABEL_80:
    if (v30)
    {
      CFRelease(v30);
      *(DerivedStorage + 1688) = 0;
    }

    v51 = *(DerivedStorage + 1720);
    if (v51)
    {
      CFRelease(v51);
      *(DerivedStorage + 1720) = 0;
    }

    if (ValueAtIndex)
    {
LABEL_85:
      if (*(DerivedStorage + 912))
      {
        if (a3 != a2)
        {
          fpfsi_pauseItem(a1);
        }

        v52 = MEMORY[0x1E6960C70];
        v53 = a5;
        if (a3 && !a5)
        {
          if (*(DerivedStorage + 1484))
          {
            v54 = (DerivedStorage + 1472);
            if (dword_1EAF169F0)
            {
              LODWORD(lhs.value) = 0;
              LOBYTE(type.value) = 0;
              v55 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
              v56 = lhs.value;
              value_low = LOBYTE(type.value);
              if (os_log_type_enabled(v55, type.value))
              {
                v58 = v56;
              }

              else
              {
                v58 = v56 & 0xFFFFFFFE;
              }

              if (v58)
              {
                if (v78)
                {
                  v59 = (CMBaseObjectGetDerivedStorage() + 888);
                }

                else
                {
                  v59 = "";
                }

                v76 = v59;
                if (a1)
                {
                  v63 = (CMBaseObjectGetDerivedStorage() + 3096);
                }

                else
                {
                  v63 = "";
                }

                v75 = v63;
                *&time.value = *v54;
                time.epoch = *(DerivedStorage + 1488);
                Seconds = CMTimeGetSeconds(&time);
                LODWORD(rhs.value) = 136316418;
                *(&rhs.value + 4) = "fpfsi_handleIFrameOnlyRateTransition";
                LOWORD(rhs.flags) = 2048;
                *(&rhs.flags + 2) = v78;
                HIWORD(rhs.epoch) = 2082;
                v85 = v76;
                v86 = 2048;
                v87 = a1;
                v88 = 2082;
                v89 = v75;
                v90 = 2048;
                v91 = Seconds;
                _os_log_send_and_compose_impl(v58, 0, &time, 128, &dword_1962D5000, v55, value_low, "<<<< FigStreamPlayer >>>> %s: [%p|%{public}s] <%p|%{public}s>: Jumping to %1.5gs to preciseSeek upon entering i-frame mode", &rhs, 62);
              }

              fig_log_call_emit_and_clean_up_after_send_and_compose();
              v53 = a5;
            }

            *&time.value = *v54;
            time.epoch = *(DerivedStorage + 1488);
            fpfs_SetTime(a1, &time);
            *v54 = *&v52->value;
            *(DerivedStorage + 1488) = v52->epoch;
            if (!*(DerivedStorage + 2216))
            {
              fpfsi_setLastSeekTimeSet(DerivedStorage, MEMORY[0x1E6960C70]);
            }
          }

          v65 = *(DerivedStorage + 1576);
          if (v65)
          {
            CFRelease(v65);
            *(DerivedStorage + 1576) = 0;
          }

          if (*(DerivedStorage + 2220))
          {
            fpfs_SeekDidFail();
          }
        }

        Current = CFAbsoluteTimeGetCurrent();
        if (a3)
        {
          v67 = a2 == 0;
        }

        else
        {
          v67 = 0;
        }

        *(DerivedStorage + 1520) = Current;
        if (v67)
        {
          v68 = 8;
        }

        else
        {
          v68 = 0;
        }

        *(DerivedStorage + 2152) = CFAbsoluteTimeGetCurrent();
        *(DerivedStorage + 2160) = 0u;
        *(DerivedStorage + 2176) = 0u;
        *(DerivedStorage + 2192) = 0u;
        *(DerivedStorage + 2208) = 0;
        v69 = *DerivedStorage;
        time = *v52;
        v29 = fpfs_SetAlternateWithContext(v69, a1, ValueAtIndex, 1u, &time, 0, 0, 0, v68);
        goto LABEL_99;
      }

LABEL_98:
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v72, v73, v74);
      v29 = v60;
      v53 = a5;
LABEL_99:
      if (!(v53 | a3 | v29))
      {
        time = **&MEMORY[0x1E6960C70];
        fpfs_PrepareForSeek(a1, 255, 1);
        fpfs_GetNextTimeToPlay(DerivedStorage, 0, &time);
        CMTimeMake(&rhs, 1, 100000);
        lhs = time;
        CMTimeAdd(&time, &lhs, &rhs);
        rhs = time;
        lhs = **&MEMORY[0x1E6960C80];
        type = **&MEMORY[0x1E6960C88];
        return fpfsi_SetCurrentTimeWithRangeAndSeekIDGuts(a1, &rhs, 5u, &lhs, &type.value, 0, 0, 0, 1, 0, 1, 0, 0, 0);
      }

      return v29;
    }

LABEL_17:
    v17 = *(v11 + 108);
    v18 = fabsf(v17);
    v19 = *(DerivedStorage + 1680);
    if (v19)
    {
      valuePtr = FigAlternateGetPeakBitRate(v19);
      if (FigAlternateIsIFrameOnly(*(DerivedStorage + 1680)))
      {
        v20 = fabsf(a6);
        if (a6 == 0.0)
        {
          v20 = 2.0;
        }

        valuePtr = (v20 * valuePtr);
      }
    }

    v21 = 1.0;
    if (a3)
    {
      v21 = 2.0;
    }

    if (v17 == 0.0)
    {
      v22 = v21;
    }

    else
    {
      v22 = v18;
    }

    if (!a4)
    {
      goto LABEL_98;
    }

    Count = CFArrayGetCount(a4);
    if (Count < 1)
    {
      goto LABEL_98;
    }

    v24 = Count;
    v25 = 0;
    ValueAtIndex = 0;
    do
    {
      v27 = CFArrayGetValueAtIndex(a4, v25);
      PeakBitRate = FigAlternateGetPeakBitRate(v27);
      if (!ValueAtIndex || (v22 * PeakBitRate) <= valuePtr)
      {
        ValueAtIndex = v27;
      }

      ++v25;
    }

    while (v24 != v25);
    if (!ValueAtIndex)
    {
      goto LABEL_98;
    }

    goto LABEL_85;
  }

  return v29;
}

void fpfsi_applyTimeToPauseBuffering(uint64_t a1, __int128 *a2, int a3)
{
  v18 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v6 = DerivedStorage;
  if (!a3)
  {
    time1 = *(DerivedStorage + 1400);
    time2 = *a2;
    if (!CMTimeCompare(&time1, &time2))
    {
      return;
    }
  }

  time2 = *a2;
  fpfsi_AlignTimeToSnapping();
  *a2 = time1;
  v7 = *(v6 + 2568);
  if (*(a2 + 12))
  {
    UpTimeNanoseconds = FigGetUpTimeNanoseconds();
    if (!v7)
    {
      goto LABEL_11;
    }

    v9 = UpTimeNanoseconds;
    v10 = *(v6 + 2072);
    v11 = *(*(CMBaseObjectGetVTable() + 16) + 56);
    if (!v11)
    {
      goto LABEL_11;
    }

    v12 = 0x1F0B675D8;
  }

  else
  {
    v8 = FigGetUpTimeNanoseconds();
    if (!v7)
    {
      goto LABEL_11;
    }

    v9 = v8;
    v10 = *(v6 + 2072);
    v11 = *(*(CMBaseObjectGetVTable() + 16) + 56);
    if (!v11)
    {
      goto LABEL_11;
    }

    v12 = 0x1F0B675B8;
  }

  v11(v7, @"playerStats", v12, (v9 - v10) / 0xF4240uLL, 1);
LABEL_11:
  time1 = *a2;
  time2 = *(v6 + 1400);
  if (CMTimeCompare(&time1, &time2) && dword_1EAF169F0)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v15 = *a2;
  *(v6 + 1416) = *(a2 + 2);
  *(v6 + 1400) = v15;
  if (*(a2 + 12) & 1) != 0 && (*(v6 + 1436))
  {
    time1 = *(v6 + 1424);
    time2 = *a2;
    CMTimeCompare(&time1, &time2);
  }

  fpfs_CheckPrebufferedLevels();
}

void fpfsi_applyTimeToPausePlayback(const void *a1, __int128 *a2, int a3, int a4, int a5)
{
  v34 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v11 = DerivedStorage;
  if (a4 && (*(a2 + 12) & 1) == 0)
  {
    fpfs_UnmuteNextAtmosAudioTrack(*DerivedStorage, a1, 0);
  }

  if (a3 || (time1 = *(v11 + 1424), time2 = *a2, CMTimeCompare(&time1, &time2)))
  {
    v12 = (v11 + 1424);
    *&v27.value = *(v11 + 1424);
    v27.epoch = *(v11 + 1440);
    time2 = *a2;
    fpfsi_AlignTimeToSnapping();
    *a2 = *&time1.value;
    epoch = time1.epoch;
    *(a2 + 2) = time1.epoch;
    *&time1.value = *a2;
    time1.epoch = epoch;
    time2 = *(v11 + 1424);
    if (CMTimeCompare(&time1, &time2) && dword_1EAF169F0)
    {
      LODWORD(v31.value) = 0;
      LOBYTE(type.value) = 0;
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    v15 = *a2;
    *(v11 + 1440) = *(a2 + 2);
    *v12 = v15;
    if ((*(v11 + 1436) & 1) == 0)
    {
      if (*(v11 + 912))
      {
        memset(&time1, 0, sizeof(time1));
        fpfsi_GetDuration(a1, &time1.value);
        if (!v22 && (time1.flags & 0x11) == 0x11)
        {
          v23 = (*(v11 + 532) ? MEMORY[0x1E695E4D0] : MEMORY[0x1E695E4C0]);
          FigBytePumpGetFigBaseObject();
          v25 = v24;
          v26 = *(*(CMBaseObjectGetVTable() + 8) + 56);
          if (v26)
          {
            v26(v25, 0x1F0B1F458, *v23);
          }
        }
      }
    }

    v16 = *(v11 + 1436);
    if (a5)
    {
      if (v16)
      {
LABEL_18:
        if (*(v11 + 1412))
        {
          time1 = *(v11 + 1400);
          *&time2.value = *v12;
          time2.epoch = *(v11 + 1440);
          CMTimeCompare(&time1, &time2);
        }

LABEL_20:
        v17 = CMBaseObjectGetDerivedStorage();
        v18 = v17;
        if (*(v17 + 1436))
        {
          memset(&time1, 0, sizeof(time1));
          fpfs_GetNextTimeToPlay(v17, 0, &time1);
          v19 = (v18 + 2352);
          if (*(v18 + 2352) || !fpfsi_CreateTimebaseTimer(a1, *(v18 + 600), *(v18 + 16), &fpfs_TimeToPausePlaybackTimerProc, 0, (v18 + 2352)))
          {
            v20 = (v18 + 1424);
            memset(&time2, 0, sizeof(time2));
            fpfsi_EstimateTimeToPause(&time2);
            memset(&v31, 0, sizeof(v31));
            type = *v20;
            rhs = time2;
            CMTimeSubtract(&v31, &type, &rhs);
            type = time1;
            rhs = v31;
            if ((CMTimeCompare(&type, &rhs) & 0x80000000) == 0 && (type = time1, rhs = *v20, CMTimeCompare(&type, &rhs) < 0))
            {
              fpfs_HandleReachingTimeToPausePlayback();
            }

            else
            {
              memset(&type, 0, sizeof(type));
              rhs = *v20;
              *&v28.value = kTimeToPausePlaybackAdvanceNotice;
              v28.epoch = 0;
              CMTimeSubtract(&type, &rhs, &v28);
              rhs = time1;
              v28 = type;
              if (CMTimeCompare(&rhs, &v28) < 0)
              {
                v31 = type;
              }

              v21 = *v19;
              rhs = v31;
              FigSpeedRampTimerScheduleForL2Time(v21, &rhs.value, 0);
            }
          }
        }

        else if (*(v17 + 2352))
        {
          fpfsi_RemoveAndClearTimer((v17 + 2352));
        }

        fpfs_GetNextTimeToPlay(v11, 0, &time1);
        if (fpfsi_atOrAfterTimeToPausePlayback(v11))
        {
          fpfs_HandleReachingTimeToPausePlayback();
          if (!a4)
          {
            return;
          }
        }

        else if (!a4)
        {
          return;
        }

        fpfs_CheckPrebufferedLevels();
        return;
      }
    }

    else if (v16)
    {
      goto LABEL_17;
    }

    if ((*(v11 + 1460) & 1) == 0)
    {
      goto LABEL_20;
    }

LABEL_17:
    time1 = v27;
    *&time2.value = *v12;
    time2.epoch = *(v11 + 1440);
    fpfsi_ClampVideoToTime();
    if ((*(v11 + 1436) & 1) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_18;
  }
}

uint64_t fpfsi_EnterIFrameModeForSeekWithNonzeroToleranceIfPossible(uint64_t a1, uint64_t a2)
{
  v17 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v4 = CMBaseObjectGetDerivedStorage();
  cf = 0;
  v5 = CMBaseObjectGetDerivedStorage();
  if (!*(v5 + 40))
  {
    return 0;
  }

  if (!*(v5 + 48) || !*(v5 + 49) || *(DerivedStorage + 108) != 0.0 || (*(v4 + 332) & 1) == 0 || (*(v4 + 356) & 0x1D) != 1 && (*(v4 + 380) & 0x1D) != 1)
  {
    goto LABEL_10;
  }

  time1 = *(v4 + 344);
  time2 = *(v4 + 368);
  if (!CMTimeCompare(&time1, &time2) || (*(v4 + 1484) & 1) != 0)
  {
    goto LABEL_10;
  }

  v7 = fpfsi_CreateAndAddScanningModeFilterToBoss(a2, 1u);
  if (*(v4 + 2904))
  {
    v7 = FigAlternateSelectionBossSetProperty(*(v4 + 40), @"Paused", *MEMORY[0x1E695E4C0]);
  }

  if (v7)
  {
    goto LABEL_10;
  }

  if (FigAlternateSelectionBossApplyFilters(*(v4 + 40)))
  {
    goto LABEL_10;
  }

  v8 = *(v4 + 40);
  AllocatorForMedia = FigGetAllocatorForMedia();
  if (FigAlternateSelectionBossCopyProperty(v8, @"FilteredAlternateList", AllocatorForMedia, &cf))
  {
    goto LABEL_10;
  }

  if (!cf)
  {
    return 0;
  }

  if (CFArrayGetCount(cf) < 1 || (ValueAtIndex = CFArrayGetValueAtIndex(cf, 0), !FigAlternateIsIFrameOnly(ValueAtIndex)) || (fpfsi_UpdateValidAlternateListAndSuggestAnAlternate(), v11))
  {
LABEL_10:
    v6 = 0;
    goto LABEL_11;
  }

  if (dword_1EAF169F0)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    v6 = 1;
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  else
  {
    v6 = 1;
  }

LABEL_11:
  if (cf)
  {
    CFRelease(cf);
  }

  return v6;
}

void fpfs_ClearAllCachedRenderChains(uint64_t a1)
{
  fpfsi_ClearCachedAudioRenderChains(a1);
  fpfsi_ClearCachedVideoRenderChains(a1);
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v3 = *(DerivedStorage + 816);
  if (v3)
  {
    fpfs_releaseRenderChain(a1, v3);
  }

  *(DerivedStorage + 816) = 0;
  v4 = CMBaseObjectGetDerivedStorage();
  v5 = *(v4 + 808);
  if (v5)
  {
    fpfs_releaseRenderChain(a1, v5);
  }

  *(v4 + 808) = 0;
}

double fpfsi_updateMaxPlayThroughTime(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v3 = *(DerivedStorage + 576);
  if (v3)
  {
    LODWORD(result) = *(DerivedStorage + 840);
    if (*&result <= 2.0 && *&result >= 0.0)
    {
      v4 = (DerivedStorage + 3272);
      if (*(DerivedStorage + 3284))
      {
        *&time1.value = *v4;
        time1.epoch = *(DerivedStorage + 3288);
        CMTimebaseGetTime(&time2, v3);
        CMTimeMaximum(&v7, &time1, &time2);
      }

      else
      {
        CMTimebaseGetTime(&v7, v3);
      }

      result = *&v7.value;
      *v4 = v7;
    }
  }

  return result;
}

uint64_t fpfsi_TimeInTrackListNonSparseCachedSamples(uint64_t *a1, CMTime *a2, _BYTE *a3)
{
  v4 = *a1;
  if (*a1)
  {
    v6 = 0;
    while (1)
    {
      if (!*(v4 + 200))
      {
        v7 = *(v4 + 96);
        if (v7)
        {
          if (!CMBufferQueueIsEmpty(v7))
          {
            time1 = *a2;
            time2 = *(v4 + 232);
            if (CMTimeCompare(&time1, &time2) < 0)
            {
              time1 = *a2;
              v11 = 0;
              CMBufferQueueCallForEachBuffer(*(v4 + 96), fpfsi_GetSampleRightBeforeTime, &time1);
              if (v11)
              {
                fpfs_GetEndOutputPresentationTimeStamp(v11, &time2);
                v9 = *a2;
                if (CMTimeCompare(&time2, &v9) > 0)
                {
                  result = 1;
                  v6 = 1;
                  if (a3)
                  {
                    goto LABEL_15;
                  }

                  return result;
                }
              }
            }

            v6 = 1;
          }
        }
      }

      v4 = *(v4 + 24);
      if (!v4)
      {
        result = 0;
        if (a3)
        {
          goto LABEL_15;
        }

        return result;
      }
    }
  }

  result = 0;
  v6 = 0;
  if (a3)
  {
LABEL_15:
    *a3 = v6 & 1;
  }

  return result;
}

uint64_t fpfsi_GetSampleRightBeforeTime(opaqueCMSampleBuffer *a1, CMTime *a2)
{
  memset(&v10, 0, sizeof(v10));
  CMSampleBufferGetOutputPresentationTimeStamp(&v10, a1);
  memset(&v9, 0, sizeof(v9));
  CMSampleBufferGetOutputDecodeTimeStamp(&v9, a1);
  memset(&v8, 0, sizeof(v8));
  value = a2[1].value;
  if (value)
  {
    CMSampleBufferGetOutputPresentationTimeStamp(&v8, value);
  }

  else
  {
    v8 = **&MEMORY[0x1E6960C80];
  }

  if ((v10.flags & 1) == 0 && (v9.flags & 1) == 0)
  {
    return 0;
  }

  time1 = v10;
  v6 = *a2;
  if (CMTimeCompare(&time1, &v6) >= 1)
  {
    time1 = v9;
    v6 = *a2;
    if (CMTimeCompare(&time1, &v6) > 0)
    {
      return 4294954433;
    }
  }

  time1 = v10;
  v6 = v8;
  if (CMTimeCompare(&time1, &v6) < 1)
  {
    return 0;
  }

  time1 = v10;
  v6 = *a2;
  if (CMTimeCompare(&time1, &v6) > 0)
  {
    return 0;
  }

  result = 0;
  a2[1].value = a1;
  return result;
}

uint64_t fpfs_PlayQueueCallForEachItem(uint64_t a1, uint64_t (*a2)(const __CFArray *, uint64_t), uint64_t a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!a2)
  {
    return 4294954436;
  }

  v6 = DerivedStorage;
  Next = fpfs_getNext(DerivedStorage, 0);
  if (!Next)
  {
    return 0;
  }

  v8 = Next;
  do
  {
    v9 = a2(v8, a3);
    v10 = fpfs_getNext(v6, v8);
    if (v9)
    {
      break;
    }

    v8 = v10;
  }

  while (v10);
  return v9;
}

uint64_t fpfs_clearCoordinatedPlaybackSynchronizationTimebaseForPlayQueueItemsApply(uint64_t a1, uint64_t a2)
{
  if (*a2 && !*(a2 + 8))
  {
    if (*a2 == a1)
    {
      *(a2 + 8) = 1;
    }
  }

  else
  {
    fpfsi_clearCoordinatedPlaybackSynchronizationTimebase(a1);
  }

  return 0;
}

uint64_t fpfs_getPlaybackState(uint64_t a1, int *a2, _BYTE *a3)
{
  v29 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  result = *(DerivedStorage + 80);
  if (!result)
  {
    if (*(DerivedStorage + 108) != 0.0)
    {
      goto LABEL_26;
    }

LABEL_27:
    LOBYTE(v17) = 0;
    v22 = 0;
    goto LABEL_28;
  }

  result = CMBaseObjectGetDerivedStorage();
  v26 = 0;
  if (*(DerivedStorage + 108) == 0.0)
  {
    goto LABEL_27;
  }

  v8 = result;
  if (!result)
  {
LABEL_26:
    LOBYTE(v17) = 0;
    v22 = 3;
    goto LABEL_28;
  }

  v9 = *(DerivedStorage + 80);
  v10 = CMBaseObjectGetDerivedStorage();
  v11 = CMBaseObjectGetDerivedStorage();
  if ((*(v10 + 1436) & 0x1D) == 1 && (result = fpfs_getPlaybackState_cold_1(v10), (result & 1) == 0) || fpfsi_isAssociatedInterstitialEventActive(v9) && (*(v10 + 444) & 1) != 0 && (HostTimeClock = CMClockGetHostTimeClock(), CMClockGetTime(&time1, HostTimeClock), time2 = *(v10 + 432), result = CMTimeCompare(&time1, &time2), result < 1) || (result = fpfsi_isAssociatedInterstitialEventActive(v9), result) && (*(v10 + 1436) & 0x1D) == 1 && (fpfsi_PredictedEndTime(v9, &time1), time2 = *(v10 + 1424), result = fpfs_TimeIsAtOrAfter(v11, &time2, &time1), result) && ((v13 = *(v11 + 688), v14 = *(v11 + 80), Count = CFArrayGetCount(*(v11 + 72)), !v14) ? (v16 = Count) : (v16 = Count + 1), (result = FigPlaybackGetEffectiveActionAtEnd(v13, v16), result == 2) && *(v10 + 530)))
  {
    LOBYTE(v17) = 0;
    v22 = 6;
    goto LABEL_28;
  }

  LOBYTE(v17) = *(DerivedStorage + 160);
  if (!v17)
  {
LABEL_24:
    v22 = 4;
    goto LABEL_28;
  }

  if (*(v8 + 530) && ((v18 = *(DerivedStorage + 688), v19 = *(DerivedStorage + 80), v20 = CFArrayGetCount(*(DerivedStorage + 72)), !v19) ? (v21 = v20) : (v21 = v20 + 1), result = FigPlaybackGetEffectiveActionAtEnd(v18, v21), result == 2) || *(v8 + 840) != 0.0)
  {
LABEL_23:
    LOBYTE(v17) = 0;
    goto LABEL_24;
  }

  LODWORD(v17) = *(v8 + 524);
  if (!v17)
  {
    goto LABEL_38;
  }

  if (v17 != 1)
  {
LABEL_33:
    LOBYTE(v17) = 0;
    v22 = 2;
    goto LABEL_28;
  }

  result = fpfsi_waitForVenueDescriptionProcessing();
  if (result)
  {
    LOBYTE(v17) = 0;
LABEL_38:
    v22 = 1;
    goto LABEL_28;
  }

  v23 = *(v8 + 840);
  if (v23 == 0.0)
  {
    result = fpfs_getStartupTaskWaitingStatus(a1, &v26);
    if (result)
    {
      LOBYTE(v17) = 1;
      v22 = v26;
      goto LABEL_28;
    }

    v23 = *(v8 + 840);
  }

  if (v23 != 0.0)
  {
    goto LABEL_47;
  }

  v17 = *(v8 + 2992);
  if (v17)
  {
    goto LABEL_23;
  }

  v24 = *(DerivedStorage + 108);
  v22 = 4;
  if (v24 <= 2.0 && v24 >= 0.0)
  {
LABEL_47:
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    result = fig_log_call_emit_and_clean_up_after_send_and_compose();
    goto LABEL_33;
  }

LABEL_28:
  if (a3)
  {
    *a3 = v17;
  }

  *a2 = v22;
  return result;
}

const __CFArray *fpfs_getStartupTaskWaitingStatus(uint64_t a1, _DWORD *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  result = *(DerivedStorage + 952);
  if (result)
  {
    if (CFArrayGetCount(result) < 1)
    {
      return 0;
    }

    else
    {
      ValueAtIndex = CFArrayGetValueAtIndex(*(DerivedStorage + 952), 0);
      *a2 = FigPlayerStartupTaskGetWaitingState(ValueAtIndex);
      return 1;
    }
  }

  return result;
}

double fpfsi_PredictedEndTime@<D0>(uint64_t a1@<X0>, CMTime *a2@<X8>)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  *a2 = **&MEMORY[0x1E6960C70];
  v10 = 0uLL;
  v11 = 0;
  time1 = *(DerivedStorage + 1352);
  FPSTimelineConverterL3TimeToL2(&time1, &v10);
  if (*(DerivedStorage + 471))
  {
    memset(&time1, 0, sizeof(time1));
    memset(&time2, 0, sizeof(time2));
    fpfs_GetNextTimeToPlay(DerivedStorage, 0, &time2);
    fpfs_GetItemBufferedDuration(a1, &time1, 0, 0);
    lhs = time2;
    v6 = time1;
    CMTimeAdd(a2, &lhs, &v6);
  }

  if ((v10.n128_u8[12] & 0x1D) == 1)
  {
    *&time1.value = v10;
    time1.epoch = v11;
    time2 = *a2;
    if (CMTimeCompare(&time1, &time2) < 0)
    {
      result = v10.n128_f64[0];
      *&a2->value = v10;
      a2->epoch = v11;
    }
  }

  return result;
}

uint64_t __fpfsi_waitForVenueDescriptionProcessing_block_invoke()
{
  result = FigGetCFPreferenceNumberWithDefault();
  byte_1ED4CA3B9 = result;
  return result;
}

double fpfs_GetCurrentPTSAscending(opaqueCMSampleBuffer *a1, CMTime *a2)
{
  memset(&v7, 0, sizeof(v7));
  CMSampleBufferGetOutputPresentationTimeStamp(&v7, a1);
  if (!fpfs_IsMarkerOnly(a1))
  {
    time1 = v7;
    v5 = *a2;
    if (CMTimeCompare(&time1, &v5) < 0 || (time1 = v7, v5 = *a2, !CMTimeCompare(&time1, &v5)))
    {
      result = *&v7.value;
      a2[1] = v7;
    }
  }

  return result;
}

uint64_t fpfs_GetCurrentPTSDescending(opaqueCMSampleBuffer *a1, uint64_t a2)
{
  memset(&v9, 0, sizeof(v9));
  CMSampleBufferGetOutputPresentationTimeStamp(&v9, a1);
  if (fpfs_IsMarkerOnly(a1))
  {
    return 0;
  }

  v5 = *&v9.value;
  *(a2 + 24) = *&v9.value;
  epoch = v9.epoch;
  *(a2 + 40) = v9.epoch;
  *&time1.value = v5;
  time1.epoch = epoch;
  v7 = *a2;
  if (CMTimeCompare(&time1, &v7) <= 0)
  {
    return 4294954433;
  }

  else
  {
    return 0;
  }
}

uint64_t fpfs_GetClosestSegmentBoundary(opaqueCMSampleBuffer *a1, uint64_t a2)
{
  memset(&v13, 0, sizeof(v13));
  fpfs_GetEndOutputPresentationTimeStamp(a1, &v13);
  v4 = CMGetAttachment(a1, *MEMORY[0x1E6960538], 0);
  v5 = *(a2 + 84);
  if (v13.flags)
  {
    if ((v5 & 1) == 0 || (time1 = *(a2 + 72), time2 = v13, CMTimeCompare(&time1, &time2) < 0))
    {
      *(a2 + 72) = v13;
    }
  }

  if ((*(a2 + 84) & 1) != 0 && (v4 || (v5 & 1) == 0))
  {
    memset(&time1, 0, sizeof(time1));
    if (v5)
    {
      time1 = *(a2 + 72);
    }

    else
    {
      CMSampleBufferGetOutputPresentationTimeStamp(&time1, a1);
    }

    memset(&time2, 0, sizeof(time2));
    lhs = time1;
    v8 = *a2;
    CMTimeSubtract(&time, &lhs, &v8);
    CMTimeAbsoluteValue(&time2, &time);
    *(a2 + 48) = time1;
    if ((*(a2 + 108) & 1) == 0 || (time = time2, lhs = *(a2 + 96), CMTimeCompare(&time, &lhs) < 0))
    {
      *(a2 + 24) = time1;
      *(a2 + 96) = time2;
    }

    else
    {
      time = time2;
      lhs = *(a2 + 96);
      if (CMTimeCompare(&time, &lhs) > 0)
      {
        return 4294954433;
      }
    }
  }

  return 0;
}

__n128 fpfsi_UpdateTimeIfCloser(uint64_t a1, uint64_t a2, _BYTE *a3, BOOL *a4)
{
  v7 = *(a1 + 60);
  *a3 = v7 & 1;
  if (v7)
  {
    time1 = *(a1 + 48);
    time2 = *a1;
    v8 = CMTimeCompare(&time1, &time2) >= 0;
  }

  else
  {
    v8 = 0;
  }

  *a4 = v8;
  if (*(a1 + 36))
  {
    memset(&time1, 0, sizeof(time1));
    lhs = *a2;
    v10 = *a1;
    CMTimeSubtract(&time2, &lhs, &v10);
    CMTimeAbsoluteValue(&time1, &time2);
    if ((*(a2 + 12) & 1) == 0 || (time2 = *(a1 + 96), lhs = time1, CMTimeCompare(&time2, &lhs) < 0))
    {
      result = *(a1 + 24);
      *(a2 + 16) = *(a1 + 40);
      *a2 = result;
    }
  }

  return result;
}

uint64_t fpfs_UnmuteNextAtmosAudioTrack(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = CMBaseObjectGetDerivedStorage();
  v6 = (a3 + 24);
  if (!a3)
  {
    v6 = (result + 1024);
  }

  for (i = *v6; i; i = *(i + 24))
  {
    if (*(i + 48) != 1936684398)
    {
      continue;
    }

    v8 = *(i + 56);
    result = CMFormatDescriptionGetMediaSubType(v8);
    if (result <= 1885692722)
    {
      if (result <= 1700997938)
      {
        if (result != 1667575091)
        {
          v10 = 1667574579;
          goto LABEL_34;
        }
      }

      else if (result != 1700998451)
      {
        if (result == 1700997939)
        {
          return fpfs_UnmuteAtmosAudioTrack(a1, a2, i);
        }

        v10 = 1885547315;
LABEL_34:
        if (result == v10)
        {
          return fpfs_UnmuteAtmosAudioTrack(a1, a2, i);
        }

        continue;
      }
    }

    else if (result <= 1902469938)
    {
      if (result != 1885692723)
      {
        v10 = 1902324531;
        goto LABEL_34;
      }
    }

    else if (result != 1902469939 && result != 2053464883)
    {
      v10 = 2053319475;
      goto LABEL_34;
    }

    sizeOut = 0;
    result = CMAudioFormatDescriptionGetFormatList(v8, &sizeOut);
    if (result && sizeOut > 0x2F)
    {
      v11 = *(result + 8);
      if (v11 <= 1885547314)
      {
        v12 = v11 == 1667574579;
        v13 = 1700997939;
      }

      else
      {
        v12 = v11 == 1885547315 || v11 == 1902324531;
        v13 = 2053319475;
      }

      if (v12 || v11 == v13)
      {
        return fpfs_UnmuteAtmosAudioTrack(a1, a2, i);
      }
    }
  }

  return result;
}

uint64_t fpfs_UnmuteAtmosAudioTrack(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *MEMORY[0x1E69E9840];
  CMBaseObjectGetDerivedStorage();
  if (dword_1EAF169F0)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  *(a3 + 206) = 0;
  return fpfs_applySoftwareVolumeToTrack();
}

CMTime *fpfsi_EstimateTimeToPause@<X0>(CMTime *a2@<X8>)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  memset(&v19, 0, sizeof(v19));
  CMTimeMake(&v19, 48, 1000);
  v18 = **&MEMORY[0x1E6960CC0];
  v4 = *(CMBaseObjectGetDerivedStorage() + 1024);
  if (v4)
  {
    while (*(v4 + 48) != 1986618469 || !*(v4 + 112))
    {
      v4 = *(v4 + 24);
      if (!v4)
      {
        goto LABEL_13;
      }
    }

    cf = 0;
    AllocatorForMedia = FigGetAllocatorForMedia();
    FigRenderPipelineGetFigBaseObject();
    v7 = v6;
    v8 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v8)
    {
      v8(v7, @"NextNonJerkyStopTime", AllocatorForMedia, &cf);
      v9 = cf;
    }

    else
    {
      v9 = 0;
    }

    memset(&time1, 0, sizeof(time1));
    CMTimeMakeFromDictionary(&rhs, v9);
    FPSTimelineConverterL3TimeToL2(&rhs, &time1);
    if (cf)
    {
      CFRelease(cf);
    }

    if ((time1.flags & 0x1D) == 1)
    {
      fpfs_GetTime(DerivedStorage, &rhs);
      v14 = time1;
      CMTimeSubtract(&v18, &v14, &rhs);
      v14 = v18;
      CMTimeMultiply(&rhs, &v14, 2);
      v18 = rhs;
    }
  }

LABEL_13:
  v10 = *(CMBaseObjectGetDerivedStorage() + 1024);
  if (v10)
  {
    while (*(v10 + 48) != 1936684398 || !*(v10 + 112))
    {
      v10 = *(v10 + 24);
      if (!v10)
      {
        goto LABEL_17;
      }
    }

    v12 = *(v10 + 56);
    if (v12)
    {
      StreamBasicDescription = CMAudioFormatDescriptionGetStreamBasicDescription(v12);
      if (StreamBasicDescription)
      {
        CMTimeMake(&time1, StreamBasicDescription->mFramesPerPacket, StreamBasicDescription->mSampleRate);
        v19 = time1;
        CMTimeMake(&rhs, 25, 1000);
        v14 = v19;
        CMTimeAdd(&time1, &v14, &rhs);
        v19 = time1;
      }
    }
  }

LABEL_17:
  time1 = v19;
  rhs = v18;
  return CMTimeMaximum(a2, &time1, &rhs);
}

uint64_t fpfs_RestartPlayedOutTracks(const void *a1, CMTime *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v5 = *(DerivedStorage + 1040);
  if (v5)
  {
    v6 = DerivedStorage;
    v7 = MEMORY[0x1E6960C70];
    do
    {
      if (*(v5 + 168) != 1)
      {
        time1 = *(v5 + 232);
        v22 = *a2;
        if (CMTimeCompare(&time1, &v22) > 0 || !*(v5 + 198))
        {
          *(v5 + 208) = *v7;
          *(v5 + 224) = *(v7 + 16);
        }
      }

      v5 = *(v5 + 24);
    }

    while (v5);
    v8 = *(v6 + 1040);
    if (v8)
    {
      v5 = 0;
      while (1)
      {
        v9 = *(v8 + 24);
        time1 = *(v8 + 232);
        v22 = *a2;
        if (CMTimeCompare(&time1, &v22) > 0 || !*(v8 + 198))
        {
          if ((*(v8 + 220) & 1) == 0)
          {
            v10 = *&a2->value;
            *(v8 + 224) = a2->epoch;
            *(v8 + 208) = v10;
          }

          fpfs_ResurrectPlayedOutTrack(v8);
          v11 = *(v8 + 168);
          if (v11 == 1)
          {
            if (*(v8 + 48) == 1986618469)
            {
              fpfs_CheckVideoSyncQueue();
              if (v15)
              {
                fpfs_FinishVideoSync();
LABEL_37:
                if (v16)
                {
                  v20 = v5 == 0;
                }

                else
                {
                  v20 = 0;
                }

                if (v20)
                {
                  v5 = v16;
                }

                else
                {
                  v5 = v5;
                }
              }
            }
          }

          else if (v11 == 6)
          {
            if (*(v8 + 48) == 1986618469)
            {
              fpfs_UpdateDimensions(a1, 1);
            }

            time1 = *(v8 + 208);
            fpfsi_RestartResurrectedTrack(v8, &time1, 1);
            v13 = v12;
            if (!v12 && v9)
            {
              v14 = v9;
              while (*(v14 + 168) == 1 || !FigStreamTrackCanTracksBeSyncPairsIgnoringDiscontinuity(v14, v8))
              {
                v14 = *(v14 + 24);
                if (!v14)
                {
                  goto LABEL_34;
                }
              }

              v17 = 256;
              if ((*(v8 + 268) & 1) == 0)
              {
                v17 = 232;
              }

              v18 = v8 + v17;
              v19 = *v18;
              *(v14 + 224) = *(v18 + 16);
              *(v14 + 208) = v19;
            }

LABEL_34:
            if (v13 == -16042)
            {
              v16 = 0;
            }

            else
            {
              v16 = v13;
            }

            goto LABEL_37;
          }
        }

        if (v9)
        {
          v8 = v9;
          if (*(v6 + 1040))
          {
            continue;
          }
        }

        return v5;
      }
    }

    return 0;
  }

  return v5;
}

void fpfs_PostHasEnabledTrackTypeNotification(uint64_t a1, const void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v4 = *MEMORY[0x1E695E4D0];
  v5 = *MEMORY[0x1E695E4C0];
  v6 = @"HasEnabledVideo";
  v7 = 1;
  do
  {
    v8 = v7;
    if (v7)
    {
      v9 = *(DerivedStorage + 1680);
      if (v9)
      {
        if (FigAlternateIsIFrameOnly(v9))
        {
          if (*(DerivedStorage + 793))
          {
            v10 = v4;
          }

          else
          {
            v10 = v5;
          }

          v17 = CFRetain(v10);
          if (v17 == v4)
          {
LABEL_24:
            if (*(DerivedStorage + 793))
            {
              goto LABEL_34;
            }

            *(DerivedStorage + 793) = 1;
          }

          else
          {
LABEL_21:
            if (!*(DerivedStorage + 793))
            {
              goto LABEL_34;
            }

            *(DerivedStorage + 793) = 0;
          }

          value = @"HasEnabledAudio";
          v22 = @"HasEnabledAudioChanged";
          if (!@"HasEnabledAudioChanged")
          {
            goto LABEL_34;
          }

          goto LABEL_33;
        }
      }
    }

    cf = 0;
    LoggingIDForTrackList = fpfsi_createLoggingIDForTrackList(a2, @":HasEnabledMedia");
    AllocatorForMedia = FigGetAllocatorForMedia();
    if (FigStreamTrackListCreate(AllocatorForMedia, LoggingIDForTrackList, &cf) || fpfsi_findLastPlayingTracksForMediaType(a2))
    {
      v17 = 0;
      if (LoggingIDForTrackList)
      {
        goto LABEL_16;
      }
    }

    else
    {
      if (FigStreamTrackListGetCount(cf))
      {
        v20 = v4;
      }

      else
      {
        v20 = v5;
      }

      v17 = CFRetain(v20);
      if (LoggingIDForTrackList)
      {
LABEL_16:
        CFRelease(LoggingIDForTrackList);
      }
    }

    if (cf)
    {
      CFRelease(cf);
    }

    if (v17 == v4)
    {
      if (v8)
      {
        goto LABEL_24;
      }

      if (*(DerivedStorage + 794))
      {
        goto LABEL_34;
      }

      *(DerivedStorage + 794) = 1;
    }

    else
    {
      if (v8)
      {
        goto LABEL_21;
      }

      if (!*(DerivedStorage + 794))
      {
        goto LABEL_34;
      }

      *(DerivedStorage + 794) = 0;
    }

    v22 = @"HasEnabledVideoChanged";
    value = v6;
    if (!@"HasEnabledVideoChanged")
    {
      goto LABEL_34;
    }

LABEL_33:
    if (!value)
    {
LABEL_34:
      if (!v17)
      {
        goto LABEL_36;
      }

LABEL_35:
      CFRelease(v17);
      goto LABEL_36;
    }

    v24 = v6;
    NotificationPayloadForProperties = fpfs_CreateNotificationPayloadForProperties(a1, a2, v11, v12, v13, v14, v15, v16, value, 0);
    fpfs_EnqueueNotification(a1, v22, a2, NotificationPayloadForProperties);
    if (NotificationPayloadForProperties)
    {
      CFRelease(NotificationPayloadForProperties);
    }

    v6 = v24;
    if (v17)
    {
      goto LABEL_35;
    }

LABEL_36:
    v7 = 0;
  }

  while ((v8 & 1) != 0);
}

__CFString *fpfsi_createLoggingIDForTrackList(uint64_t a1, const __CFString *a2)
{
  AllocatorForMedia = FigGetAllocatorForMedia();
  Mutable = CFStringCreateMutable(AllocatorForMedia, 0);
  if (Mutable)
  {
    if (a1)
    {
      v6 = (CMBaseObjectGetDerivedStorage() + 3096);
    }

    else
    {
      v6 = "";
    }

    CFStringAppendCString(Mutable, v6, 0x600u);
    if (a2)
    {
      CFStringAppend(Mutable, a2);
    }
  }

  return Mutable;
}

CFTypeRef fpfsi_copyImageQueueGauge(uint64_t a1)
{
  v47 = *MEMORY[0x1E69E9840];
  v31 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  CMBaseObjectGetDerivedStorage();
  result = fpfsi_copyCurrentVideoDestination(a1);
  if (result || (v9 = *(DerivedStorage + 752)) != 0 && (result = CFRetain(v9)) != 0)
  {
LABEL_2:
    v4 = result;
    AllocatorForMedia = FigGetAllocatorForMedia();
    FigAggregateVideoDestinationGetCMBaseObject();
    v7 = v6;
    v8 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v8)
    {
      v8(v7, @"ImageQueueGauge", AllocatorForMedia, &v31);
    }

    CFRelease(v4);
    return v31;
  }

  TrackWithFormatDescriptionOfType = fpfs_FirstTrackWithFormatDescriptionOfType(a1, 1986618469);
  if (TrackWithFormatDescriptionOfType)
  {
    v24 = TrackWithFormatDescriptionOfType;
    fpfsi_addCAImageQueuesAndSlots();
    fpfsi_createOutputDestinationForVideo();
    result = *(v24 + 104);
    if (!result)
    {
      return result;
    }

    result = CFRetain(result);
    if (!result)
    {
      return result;
    }

    goto LABEL_2;
  }

  if (*(DerivedStorage + 1712))
  {
    return 0;
  }

  memset(&v30, 0, sizeof(v30));
  fpfs_GetNextTimeToPlay(DerivedStorage, 0, &v30);
  memset(&v29, 0, sizeof(v29));
  fpfsi_PredictedEndTime(a1, &v29);
  flags = v29.flags;
  if (v29.flags)
  {
    v12 = v30.flags;
    epoch = v30.epoch;
    v14 = v29.epoch;
    if ((v29.flags & 0x1F) == 3 || (v30.flags & 0x1F) == 3)
    {
      memset(&time1, 0, sizeof(time1));
      rhs = v29;
      lhs = v30;
      CMTimeSubtract(&time, &lhs, &rhs);
      CMTimeAbsoluteValue(&time1, &time);
      CMTimeMake(&time, 1, 1000000000);
      lhs = time1;
      if (CMTimeCompare(&lhs, &time) < 1)
      {
        return 0;
      }
    }

    time1.value = v30.value;
    time1.timescale = v30.timescale;
    time1.flags = v12;
    time1.epoch = epoch;
    time.value = v29.value;
    time.timescale = v29.timescale;
    time.flags = flags;
    time.epoch = v14;
    if ((CMTimeCompare(&time1, &time) & 0x80000000) == 0)
    {
      return 0;
    }
  }

  v15 = *(DerivedStorage + 736);
  if (!v15)
  {
    v16 = (DerivedStorage + 736);
    v17 = FigGetAllocatorForMedia();
    FigImageQueueGaugeCreate(v17, 0, (DerivedStorage + 736));
    if (dword_1EAF169F0)
    {
      LODWORD(lhs.value) = 0;
      LOBYTE(rhs.value) = 0;
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      value = lhs.value;
      value_low = LOBYTE(rhs.value);
      if (os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, rhs.value))
      {
        v21 = value;
      }

      else
      {
        v21 = value & 0xFFFFFFFE;
      }

      if (v21)
      {
        v22 = *DerivedStorage;
        if (v22)
        {
          v23 = (CMBaseObjectGetDerivedStorage() + 888);
        }

        else
        {
          v23 = "";
        }

        if (a1)
        {
          v25 = (CMBaseObjectGetDerivedStorage() + 3096);
        }

        else
        {
          v25 = "";
        }

        v26 = *v16;
        time1 = v30;
        Seconds = CMTimeGetSeconds(&time1);
        time1 = v29;
        v28 = CMTimeGetSeconds(&time1);
        LODWORD(time.value) = 136316930;
        *(&time.value + 4) = "fpfsi_copyImageQueueGauge";
        LOWORD(time.flags) = 2048;
        *(&time.flags + 2) = v22;
        HIWORD(time.epoch) = 2082;
        v35 = v23;
        v36 = 2048;
        v37 = a1;
        v38 = 2082;
        v39 = v25;
        v40 = 2048;
        v41 = v26;
        v42 = 2048;
        v43 = Seconds;
        v44 = 2048;
        v45 = v28;
        _os_log_send_and_compose_impl(v21, 0, &time1, 128, &dword_1962D5000, os_log_and_send_and_compose_flags_and_os_log_type, value_low, "<<<< FigStreamPlayer >>>> %s: [%p|%{public}s] <%p|%{public}s>: no tracks, creating interim gauge %p, now %f, predictedEndTime %f", &time, 82);
      }

      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    v15 = *v16;
    if (!*v16)
    {
      return 0;
    }
  }

  result = CFRetain(v15);
  if (!result)
  {
    return 0;
  }

  return result;
}

uint64_t fpfs_RenderBufferOrEnqueueToStartupQueue(uint64_t a1, opaqueCMSampleBuffer *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  CMBaseObjectGetDerivedStorage();
  v4 = *(a1 + 112);
  if (v4 && ((v5 = *(v4 + 8), v5 != a1) ? (v6 = v5 == 0) : (v6 = 1), v6))
  {

    return fpfs_RenderBuffer(a1, a2);
  }

  else if (*(a1 + 168) >= 6)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    return 4294951597;
  }

  else
  {
    v8 = *(a1 + 88);

    return CMBufferQueueEnqueue(v8, a2);
  }
}

uint64_t CMTimeCompareApproximately(CMTime *a1, CMTime *a2)
{
  if ((a1->flags & 0x1F) == 3 || (a2->flags & 0x1F) == 3)
  {
    memset(&time1, 0, sizeof(time1));
    lhs = *a1;
    v5 = *a2;
    CMTimeSubtract(&time, &lhs, &v5);
    CMTimeAbsoluteValue(&time1, &time);
    CMTimeMake(&time, 1, 1000000000);
    lhs = time1;
    if (CMTimeCompare(&lhs, &time) < 1)
    {
      return 0;
    }
  }

  time1 = *a1;
  time = *a2;
  return CMTimeCompare(&time1, &time);
}

void fpfsi_displaySizeChanged(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, CFTypeRef cf, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v33[20] = *MEMORY[0x1E69E9840];
  cfa = 0;
  v33[0] = 0;
  if (!cf)
  {
    fpfsi_displaySizeChanged_cold_3(a1, a2, a3, a4, 0, a6, a7, a8, v29, v30, SHIDWORD(v30), v31);
    goto LABEL_13;
  }

  v9 = CFGetTypeID(cf);
  TypeID = CFDictionaryGetTypeID();
  if (v9 != TypeID)
  {
    fpfsi_displaySizeChanged_cold_1(TypeID, v11, v12, v13, v14, v15, v16, v17, v29, v30, SHIDWORD(v30), v31);
    goto LABEL_13;
  }

  IsInvalidated = FigRetainProxyIsInvalidated();
  if (IsInvalidated)
  {
    fpfsi_displaySizeChanged_cold_2(IsInvalidated, v19, v20, v21, v22, v23, v24, v25, v29, v30, SHIDWORD(v30), v31);
    goto LABEL_13;
  }

  if (dword_1EAF169F0)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (fpfsi_CopyPlayerAndItemFromItemRetainProxy(a2, v33, &cfa))
  {
    v27 = cfa;
    if (!cfa)
    {
      goto LABEL_13;
    }

LABEL_12:
    CFRelease(v27);
    goto LABEL_13;
  }

  CMBaseObjectGetDerivedStorage();
  v27 = cfa;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  if (!*(DerivedStorage + 792))
  {
    *(DerivedStorage + 792) = 1;
    FigRetainProxyRetain();
    CMNotificationCenterGetDefaultLocalCenter();
    FigGetAllocatorForMedia();
    FigDeferNotificationToDispatchQueue();
  }

  FigSimpleMutexUnlock();
  if (v27)
  {
    goto LABEL_12;
  }

LABEL_13:
  if (v33[0])
  {
    CFRelease(v33[0]);
  }
}

void fpfsi_copyCurrentImageQueueArrayAndOptions(uint64_t a1, uint64_t a2)
{
  v3 = fpfsi_copyCurrentVideoDestination(a1);
  if (v3)
  {
    v4 = v3;
    v5 = *(*(CMBaseObjectGetVTable() + 16) + 24);
    if (v5)
    {
      v5(v4, a2, 0);
    }

    CFRelease(v4);
  }
}

void fpfs_TransitionFromItemToItem(uint64_t a1, const __CFArray *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  CMBaseObjectGetDerivedStorage();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (dword_1EAF169F0)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (*(DerivedStorage + 2472))
  {
    fpfs_CommitToGaplessTransition();
  }

  else
  {
    fpfs_ResolveAllWaitingTracks(a2);
  }
}

void fpfs_AreItemsEligibleForGaplessTransition(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int *a5, _BYTE *a6)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v13 = CMBaseObjectGetDerivedStorage();
  v23 = 0uLL;
  v24 = 0;
  fpfsi_NonSparsePlaybackEndTime(a1, &v23);
  if (a1 == a3)
  {
LABEL_16:
    v16 = 2;
    if (!a5)
    {
      goto LABEL_18;
    }

    goto LABEL_17;
  }

  if ((*a2 & 1) == 0 || (*a4 & 1) == 0 || (v14 = *(a2 + 16), (v15 = *(v14 + 112)) == 0) || !FPSupport_RenderPipelineSupportsGaplessTransitionWithFormats(*(v15 + 32), *(v14 + 56), *(*(a4 + 8) + 56)) || (v17 = fpfsi_GetSpatializationConfiguration(a1) == 1, fpfs_ShouldEnableSpatializationForTrack(*(a4 + 8)) != v17) || (v18 = *(DerivedStorage + 3128), v18 != *(v13 + 3128)) || v18 && MTAudioProcessingTapIsProxyTap(v18) || FPSupport_AudioProcessingUnitsConfigurationsAreDifferent(*(DerivedStorage + 3144), *(v13 + 3144)) || (v23.n128_u8[12] & 1) == 0)
  {
    v16 = 0;
    if (!a5)
    {
      goto LABEL_18;
    }

LABEL_17:
    *a5 = v16;
    goto LABEL_18;
  }

  if (*(CMBaseObjectGetDerivedStorage() + 504))
  {
    memset(&v22, 0, sizeof(v22));
    CMTimeMake(&v22, 1, 1);
    fpfsi_LastAudioNonSparseSampleEnd(a1, &lhs);
    v19 = v22;
    CMTimeSubtract(&v21, &lhs, &v19);
    fpfsi_PredictedEndTime(a1, &lhs);
    if (CMTimeCompareApproximately(&v21, &lhs) > 0)
    {
      goto LABEL_16;
    }
  }

  v16 = 1;
  if (a5)
  {
    goto LABEL_17;
  }

LABEL_18:
  if (a6)
  {
    *a6 = 0;
  }
}

uint64_t fpfsi_AllTracksForMediaTypeArePlaying(uint64_t a1)
{
  v1 = *(CMBaseObjectGetDerivedStorage() + 1024);
  if (!v1)
  {
    return 1;
  }

  while (*(v1 + 48) != 1936684398 || *(v1 + 168) == 6)
  {
    v1 = *(v1 + 24);
    if (!v1)
    {
      return 1;
    }
  }

  return 0;
}

double fpfp_GetTransitionTimebaseStartTime@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, CMTime *a5@<X4>, int a6@<W5>, CMTime *a7@<X6>, CMTime *a8@<X7>, CMTime *a9@<X8>)
{
  v13 = *(a3 + 16);
  v14 = *(a4 + 8);
  v15 = MEMORY[0x1E6960C70];
  v16 = *MEMORY[0x1E6960C70];
  *&a9->value = *MEMORY[0x1E6960C70];
  v17 = *(v15 + 16);
  a9->epoch = v17;
  *&v30.value = v16;
  v30.epoch = v17;
  v18 = *MEMORY[0x1E6960CC0];
  *&v29.value = *MEMORY[0x1E6960CC0];
  v19 = *(MEMORY[0x1E6960CC0] + 16);
  v29.epoch = v19;
  if (a6)
  {
    if (v13)
    {
      v25 = v18;
      v21 = *(a3 + 32);
      time2 = *a5;
      fpfs_TransposeItemTime(&time2, v13, v14, &time1);
      v30 = time1;
      if ((*(a1 + 1364) & 1) != 0 || !v21 || (time1 = *(v13 + 232), time2 = *(v21 + 232), CMTimeCompare(&time1, &time2) < 1))
      {
        *&v29.value = v25;
        v29.epoch = v19;
      }

      else
      {
        time1 = *(v13 + 232);
        time2 = *(v21 + 232);
        CMTimeSubtract(&v29, &time1, &time2);
      }

      time1 = v30;
      time2 = v29;
      CMTimeAdd(a9, &time1, &time2);
    }

    else
    {
      v22 = *(a4 + 24);
      v23 = *(a3 + 32);
      time1 = *a5;
      fpfs_TransposeItemTime(&time1, v23, v22, &v30);
      *a9 = v30;
    }
  }

  else
  {
    v26 = v16;
    fpfs_GetNextTimeToPlay(a2, 0, a9);
    *&v30.value = v26;
    v30.epoch = v17;
  }

  *a7 = v30;
  result = *&v29.value;
  *a8 = v29;
  return result;
}

uint64_t fpfs_SetRenderPipelinePropertiesToUpdateAtTransition(uint64_t a1, uint64_t a2, uint64_t a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v5 = CMBaseObjectGetDerivedStorage();
  v6 = CMBaseObjectGetDerivedStorage();
  valuePtr = *(DerivedStorage + 160);
  v7 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberCFIndexType, &valuePtr);
  cf = 0;
  AllocatorForMedia = FigGetAllocatorForMedia();
  Mutable = CFDictionaryCreateMutable(AllocatorForMedia, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (Mutable)
  {
    v10 = Mutable;
    FigCFDictionarySetValueOrCFNull();
    if (*(v6 + 968))
    {
      FPSTimelineConverterCopyProperty(*(v5 + 3376), @"SpeedRampData", 0, &cf);
      FigCFDictionarySetValueOrCFNull();
    }

    if (CFDictionaryGetCount(v10) < 1)
    {
      v13 = 0;
    }

    else
    {
      v11 = *(a3 + 32);
      v12 = *(*(CMBaseObjectGetVTable() + 16) + 112);
      if (v12)
      {
        v13 = v12(v11, v7, v10);
      }

      else
      {
        v13 = 4294954514;
      }
    }

    CFRelease(v10);
    if (v7)
    {
      goto LABEL_10;
    }
  }

  else
  {
    fpfs_SetRenderPipelinePropertiesToUpdateAtTransition_cold_1(&v17);
    v13 = v17;
    if (v7)
    {
LABEL_10:
      CFRelease(v7);
    }
  }

  if (cf)
  {
    CFRelease(cf);
  }

  return v13;
}

double fpfsi_SetRenderChainOnTrackOfItem(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sizeOut[16] = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  MediaType = CMFormatDescriptionGetMediaType(*(a3 + 16));
  if (*(a2 + 112))
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    return result;
  }

  v8 = MediaType;
  *(a2 + 112) = a3;
  *(a2 + 437) = 0;
  ++*a3;
  fpfs_SetFeederTrack(a3, a2);
  fpfs_CacheRenderChain(a1, a3, v8);
  if (*(a2 + 48) == 1936684398)
  {
    BOOLean = 0;
    AllocatorForMedia = FigGetAllocatorForMedia();
    FigRenderPipelineGetFigBaseObject();
    v12 = v11;
    v13 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v13)
    {
      v13(v12, @"SpatializationEnabled", AllocatorForMedia, &BOOLean);
    }

    v14 = *(DerivedStorage + 1816);
    FigRenderPipelineGetFigBaseObject();
    v16 = v15;
    v17 = *(*(CMBaseObjectGetVTable() + 8) + 56);
    if (v17)
    {
      v17(v16, @"AudioDeviceChannelMap", v14);
    }

    if (dword_1EAF169F0)
    {
      v18 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    v19 = *(DerivedStorage + 856);
    FigRenderPipelineGetFigBaseObject();
    v21 = v20;
    v22 = *(*(CMBaseObjectGetVTable() + 8) + 56);
    if (v22)
    {
      v22(v21, @"TimePitchAlgorithm", v19);
    }

    v23 = *(DerivedStorage + 3144);
    FigRenderPipelineGetFigBaseObject();
    v25 = v24;
    v26 = *(*(CMBaseObjectGetVTable() + 8) + 56);
    if (v26)
    {
      v26(v25, @"AudioProcessingUnits", v23);
    }

    v27 = *(DerivedStorage + 3160);
    FigRenderPipelineGetFigBaseObject();
    v29 = v28;
    v30 = *(*(CMBaseObjectGetVTable() + 8) + 56);
    if (v30)
    {
      v30(v29, @"AudioQueueClockDevice", v27);
    }

    fpfsi_applyLoudnessInfo(DerivedStorage, a2, 0);
    fpfsi_applyAdjustTargetLevel(DerivedStorage, a2);
    fpfsi_applyAdjustCompressionProfile(DerivedStorage, a2);
    fpfsi_RTCReportingUpdateAudioInfo(DerivedStorage, a2);
    if (BOOLean)
    {
      Value = CFBooleanGetValue(BOOLean);
    }

    else
    {
      Value = 0;
    }

    v32 = *(DerivedStorage + 2568);
    if (v32)
    {
      v33 = *(*(CMBaseObjectGetVTable() + 16) + 56);
      if (v33)
      {
        v33(v32, @"playerStats", 0x1F0B43478, Value, 0);
      }
    }

    v34 = *(a2 + 56);
    MediaSubType = CMFormatDescriptionGetMediaSubType(v34);
    v36 = 1;
    if (MediaSubType > 1885692722)
    {
      if (MediaSubType <= 1902469938)
      {
        if (MediaSubType != 1885692723)
        {
          v37 = 1902324531;
LABEL_37:
          if (MediaSubType == v37)
          {
            goto LABEL_49;
          }

          goto LABEL_48;
        }

        goto LABEL_39;
      }

      if (MediaSubType == 2053464883)
      {
LABEL_39:
        sizeOut[0] = 0;
        FormatList = CMAudioFormatDescriptionGetFormatList(v34, sizeOut);
        v36 = 0;
        if (!FormatList || sizeOut[0] < 0x30)
        {
          goto LABEL_49;
        }

        mFormatID = FormatList->mASBD.mFormatID;
        v36 = 1;
        if (mFormatID <= 1885547314)
        {
          if (mFormatID == 1667574579)
          {
            goto LABEL_49;
          }

          v41 = 1700997939;
        }

        else
        {
          if (mFormatID == 1885547315 || mFormatID == 1902324531)
          {
            goto LABEL_49;
          }

          v41 = 2053319475;
        }

        if (mFormatID == v41)
        {
LABEL_49:
          fpfsi_RTCReportingUpdateATMOSMetricVar(DerivedStorage, (DerivedStorage + 2603), (DerivedStorage + 2599), v36, 0, 0);
          if (BOOLean)
          {
            CFRelease(BOOLean);
          }

          return result;
        }

LABEL_48:
        v36 = 0;
        goto LABEL_49;
      }

      if (MediaSubType == 2053319475)
      {
        goto LABEL_49;
      }

      v38 = 1902469939;
    }

    else
    {
      if (MediaSubType > 1700997938)
      {
        if (MediaSubType == 1700997939)
        {
          goto LABEL_49;
        }

        if (MediaSubType != 1700998451)
        {
          v37 = 1885547315;
          goto LABEL_37;
        }

        goto LABEL_39;
      }

      if (MediaSubType == 1667574579)
      {
        goto LABEL_49;
      }

      v38 = 1667575091;
    }

    if (MediaSubType != v38)
    {
      goto LABEL_48;
    }

    goto LABEL_39;
  }

  return result;
}

void fpfsi_gatherInterestingGaplessInfoForItem(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 64) = 0;
  *(a2 + 32) = 0u;
  *(a2 + 48) = 0u;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (DerivedStorage)
  {
    v5 = *(DerivedStorage + 1024);
    if (v5)
    {
      v6 = 0;
      v7 = 0;
      v8 = 0;
      v9 = 0;
      v10 = 0;
      v11 = 0;
      v12 = DerivedStorage + 976;
      do
      {
        v13 = *(v5 + 64);
        v14 = *(v5 + 196);
        if (v13 == *(v12 + 16 * v14) || v13 == *(v12 + 16 * v14 + 8))
        {
          v15 = *(v5 + 48);
          v16 = v15 == 1935832172 || v15 == 1986618469;
          v17 = v16 || v15 == 1936684398;
          v18 = (1 << v14) | v10;
          if (v17)
          {
            v10 = v18;
          }
        }

        if (*(v5 + 56) && !*(v5 + 200))
        {
          v19 = *(v5 + 48);
          if (v9)
          {
            v20 = v9;
          }

          else
          {
            v20 = v5;
          }

          v21 = v11 | 2;
          if (v7)
          {
            v22 = v7;
          }

          else
          {
            v22 = v5;
          }

          if (v19 == 1936684398)
          {
            v23 = v5;
          }

          else
          {
            v23 = v6;
          }

          if (v19 == 1936684398)
          {
            v11 |= 1u;
          }

          else
          {
            v22 = v7;
          }

          if (v19 == 1986618469)
          {
            v8 = v5;
            v9 = v20;
            v11 = v21;
          }

          else
          {
            v6 = v23;
            v7 = v22;
          }
        }

        v5 = *(v5 + 24);
      }

      while (v5);
      *(a2 + 24) = v9;
      *(a2 + 32) = v8;
      *(a2 + 8) = v7;
      *(a2 + 16) = v6;
    }

    else
    {
      v11 = 0;
      v10 = 0;
    }

    *a2 = v11;
    v24 = (DerivedStorage + 475);
    v25 = 472;
    while (1)
    {
      v26 = *(v24 - 3);
      if (*(DerivedStorage + 553))
      {
        if (!*(v24 - 3))
        {
          goto LABEL_42;
        }

        if (!*(DerivedStorage + 1744))
        {
          goto LABEL_41;
        }

        v26 = *v24;
      }

      if (v26)
      {
LABEL_41:
        v10 |= 1 << (v25 + 40);
      }

LABEL_42:
      ++v25;
      ++v24;
      if (v25 == 475)
      {
        *(a2 + 40) = v10 == *(DerivedStorage + 1072);
        fpfsi_NonSparsePlaybackEndTime(a1, (a2 + 44));
        return;
      }
    }
  }
}

void fpfsi_NonSparsePlaybackEndTime(uint64_t a1@<X0>, __n128 *a2@<X8>)
{
  v4 = MEMORY[0x1E6960C70];
  *a2 = *MEMORY[0x1E6960C70];
  a2[1].n128_u64[0] = *(v4 + 16);
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (fpfsi_PlaybackHasBufferedBeyondForwardEndTime(a1))
  {
    v6 = *(DerivedStorage + 1352);
    v7 = *(DerivedStorage + 1368);
    FPSTimelineConverterL3TimeToL2(&v6, a2);
  }

  else if (*(DerivedStorage + 471))
  {

    fpfsi_LastNonSparseSampleEnd(a1, a2);
  }
}

CMTime *fpfsi_LastNonSparseSampleEnd@<X0>(uint64_t a1@<X0>, CMTime *a2@<X8>)
{
  v4 = MEMORY[0x1E6960C70];
  v13 = *MEMORY[0x1E6960C70];
  *&a2->value = *MEMORY[0x1E6960C70];
  v5 = *(v4 + 16);
  a2->epoch = v5;
  TrackOfType = fpfs_LastTrackOfType(a1, 1936684398, 0);
  result = fpfs_LastTrackOfType(a1, 1986618469, 0);
  if (!TrackOfType)
  {
    v8 = v13;
    *&v17.value = v13;
    v17.epoch = v5;
    if (result)
    {
      v16 = *(result + 232);
      goto LABEL_9;
    }

LABEL_8:
    *&v16.value = v8;
    v16.epoch = v5;
    goto LABEL_9;
  }

  v17 = *(TrackOfType + 232);
  v8 = v13;
  if (!result)
  {
    goto LABEL_8;
  }

  v16 = *(result + 232);
  v9 = *(TrackOfType + 80);
  v10 = *&result[3].timescale;
  if (v9 == v10)
  {
LABEL_9:
    time1 = v17;
    time2 = v16;
    return CMTimeMinimum(a2, &time1, &time2);
  }

  if (v10 <= v9)
  {
    v11 = *(TrackOfType + 232);
    v12 = *(TrackOfType + 248);
  }

  else
  {
    v11 = *&result[9].epoch;
    v12 = *&result[10].timescale;
  }

  a2->epoch = v12;
  *&a2->value = v11;
  return result;
}

uint64_t fpfsi_GetSpatializationConfiguration(uint64_t a1)
{
  v1 = *(CMBaseObjectGetDerivedStorage() + 1024);
  if (!v1)
  {
    return 2;
  }

  while (*(v1 + 48) != 1936684398 || !*(v1 + 112))
  {
    v1 = *(v1 + 24);
    if (!v1)
    {
      return 2;
    }
  }

  cf = 0;
  AllocatorForMedia = FigGetAllocatorForMedia();
  FigRenderPipelineGetFigBaseObject();
  v6 = v5;
  v7 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v7)
  {
    return 2;
  }

  v7(v6, @"SpatializationEnabled", AllocatorForMedia, &cf);
  if (!cf)
  {
    return 2;
  }

  v2 = cf == *MEMORY[0x1E695E4D0];
  CFRelease(cf);
  return v2;
}

__n128 fpfsi_LastAudioNonSparseSampleEnd@<Q0>(uint64_t a1@<X0>, __n128 *a2@<X8>)
{
  v4 = MEMORY[0x1E6960C70];
  v9 = *MEMORY[0x1E6960C70];
  *a2 = *MEMORY[0x1E6960C70];
  v5 = *(v4 + 16);
  a2[1].n128_u64[0] = v5;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (fpfsi_PlaybackHasBufferedBeyondForwardEndTime(a1))
  {
    v10 = *(DerivedStorage + 1352);
    v11 = *(DerivedStorage + 1368);
    FPSTimelineConverterL3TimeToL2(&v10, a2);
  }

  else if (*(DerivedStorage + 471))
  {
    TrackOfType = fpfs_LastTrackOfType(a1, 1936684398, 0);
    if (TrackOfType)
    {
      result = *(TrackOfType + 232);
      a2[1].n128_u64[0] = *(TrackOfType + 248);
      *a2 = result;
    }

    else
    {
      result = v9;
      *a2 = v9;
      a2[1].n128_u64[0] = v5;
    }
  }

  return result;
}

uint64_t fpfs_TransposeItemTime@<X0>(CMTime *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  memset(&v8, 0, sizeof(v8));
  lhs = *a1;
  rhs = *(a2 + 412);
  CMTimeAdd(&v11, &lhs, &rhs);
  lhs = *(a2 + 144);
  CMTimeSubtract(&v8, &v11, &lhs);
  lhs = v8;
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  *a4 = 0;
  rhs = *(a3 + 412);
  CMTimeSubtract(&v11, &lhs, &rhs);
  lhs = *(a3 + 144);
  CMTimeAdd(a4, &v11, &lhs);
  return CMBaseObjectGetDerivedStorage();
}

void fpfs_CacheRenderChain(uint64_t a1, void *a2, int a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a3 <= 1936684397)
  {
    if (a3 == 1668047728)
    {
      v7 = DerivedStorage + 102;
      v8 = DerivedStorage[102];
      if (!v8)
      {
        goto LABEL_6;
      }
    }

    else
    {
      if (a3 != 1935832172)
      {
        return;
      }

      v7 = DerivedStorage + 101;
      v8 = DerivedStorage[101];
      if (!v8)
      {
        goto LABEL_6;
      }
    }

    goto LABEL_5;
  }

  if (a3 == 1986618469)
  {
    v7 = DerivedStorage + 104;
    v8 = DerivedStorage[104];
    if (!v8)
    {
      goto LABEL_6;
    }

LABEL_5:
    fpfs_releaseRenderChain(a1, v8);
LABEL_6:
    *v7 = a2;
    ++*a2;
    return;
  }

  if (a3 == 1936684398)
  {
    v7 = DerivedStorage + 103;
    v8 = DerivedStorage[103];
    if (!v8)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }
}

void fpfsi_applyLoudnessInfo(uint64_t a1, uint64_t a2, int a3)
{
  if (!a1)
  {
    return;
  }

  v9 = 0;
  if (!a2)
  {
    v6 = *(a1 + 1024);
    if (!v6)
    {
      return;
    }

    while (!*(v6 + 112) || *(v6 + 48) != 1936684398)
    {
LABEL_19:
      v6 = *(v6 + 24);
      if (!v6)
      {
        return;
      }
    }

    if (fpfsi_copyLoudnessInfoWithItemMediaKindAndLID(a1, v6, &v9))
    {
      return;
    }

    if (a3 == 1)
    {
      v7 = v9;
      v8 = fpfs_setPropertyOnPrimaryAndAuxRenderPipelines() == 0;
      if (!v7)
      {
LABEL_18:
        if (!v8)
        {
          return;
        }

        goto LABEL_19;
      }
    }

    else
    {
      v7 = v9;
      fpfsi_sendLoudnessInfoMarkerSampleBufferToAudioRenderPipeline();
      v8 = 1;
      if (!v7)
      {
        goto LABEL_18;
      }
    }

    CFRelease(v7);
    v9 = 0;
    goto LABEL_18;
  }

  if (*(a2 + 48) == 1936684398 && *(a2 + 112) && !fpfsi_copyLoudnessInfoWithItemMediaKindAndLID(a1, a2, &v9))
  {
    if (a3 == 1)
    {
      v5 = v9;
      fpfs_setPropertyOnPrimaryAndAuxRenderPipelines();
      if (!v5)
      {
        return;
      }
    }

    else
    {
      v5 = v9;
      fpfsi_sendLoudnessInfoMarkerSampleBufferToAudioRenderPipeline();
      if (!v5)
      {
        return;
      }
    }

    CFRelease(v5);
  }
}

uint64_t fpfsi_applyAdjustTargetLevel(uint64_t result, uint64_t a2)
{
  if (result)
  {
    v2 = result;
    if (*(result + 3168))
    {
      if (a2 && (result = *(a2 + 112)) != 0)
      {

        return fpfs_setPropertyOnPrimaryAndAuxRenderPipelines();
      }

      else
      {
        for (i = *(v2 + 1024); i; i = *(i + 24))
        {
          result = *(i + 112);
          if (result)
          {
            if (*(i + 48) == 1936684398)
            {
              result = fpfs_setPropertyOnPrimaryAndAuxRenderPipelines();
              if (result)
              {
                break;
              }
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t fpfsi_applyAdjustCompressionProfile(uint64_t result, uint64_t a2)
{
  if (result)
  {
    v2 = result;
    if (*(result + 3176))
    {
      if (a2 && (result = *(a2 + 112)) != 0)
      {

        return fpfs_setPropertyOnPrimaryAndAuxRenderPipelines();
      }

      else
      {
        for (i = *(v2 + 1024); i; i = *(i + 24))
        {
          result = *(i + 112);
          if (result)
          {
            if (*(i + 48) == 1936684398)
            {
              result = fpfs_setPropertyOnPrimaryAndAuxRenderPipelines();
              if (result)
              {
                break;
              }
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t fpfsi_RTCReportingUpdateAudioInfo(uint64_t result, uint64_t a2)
{
  v14 = *MEMORY[0x1E69E9840];
  if (*(a2 + 456))
  {
    v3 = result;
    RichestDecodableFormat = CMAudioFormatDescriptionGetRichestDecodableFormat(*(a2 + 56));
    if (RichestDecodableFormat)
    {
      v5 = 1;
    }

    else
    {
      v5 = dword_1EAF169F0 == 0;
    }

    if (!v5)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    CurrentAudioPersistentIDFromMediaOption = fpfsi_GetCurrentAudioPersistentIDFromMediaOption(*(a2 + 16));
    v13[0] = 0;
    result = FigAlternateGetAudioChannelCount(*(a2 + 456), CurrentAudioPersistentIDFromMediaOption, v13);
    if ((result - 1) > 1)
    {
      if (result < 3)
      {
LABEL_17:
        if (RichestDecodableFormat)
        {
          return fpfsi_RTCReportingUpdateAudioInfo_cold_1(v3, RichestDecodableFormat);
        }

        return result;
      }

      v8 = 1;
    }

    else if ((v13[0] & 2) != 0)
    {
      v8 = 3;
    }

    else
    {
      v8 = (v13[0] >> 1) & 2;
    }

    v9 = *(v3 + 2568);
    if (v9)
    {
      VTable = CMBaseObjectGetVTable();
      v11 = *(VTable + 16);
      result = VTable + 16;
      v12 = *(v11 + 56);
      if (v12)
      {
        result = v12(v9, @"playerStats", 0x1F0B43418, v8, 0);
      }
    }

    goto LABEL_17;
  }

  return result;
}

uint64_t fpfsi_copyLoudnessInfoWithItemMediaKindAndLID(uint64_t Count, uint64_t a2, __CFDictionary **a3)
{
  if (a2)
  {
    if (!Count)
    {
      goto LABEL_13;
    }
  }

  else if (!Count)
  {
LABEL_13:
    v6 = 0;
LABEL_14:
    result = 0;
    *a3 = v6;
    return result;
  }

  if (!*(Count + 2400) && !*(Count + 2392) && FigCFDictionaryGetCount() < 1)
  {
    goto LABEL_13;
  }

  FigGetAllocatorForMedia();
  MutableCopy = FigCFDictionaryCreateMutableCopy();
  if (MutableCopy)
  {
    v6 = MutableCopy;
    v7 = *(Count + 2392);
    if (v7)
    {
      CFDictionarySetValue(MutableCopy, @"media kind", v7);
    }

    if (FigCFDictionaryGetCount() >= 1)
    {
      FigCFDictionaryAddEntriesToDictionaryWithRecursion();
    }

    goto LABEL_14;
  }

  fpfsi_copyLoudnessInfoWithItemMediaKindAndLID_cold_1(&v9);
  return v9;
}

void fpfsi_RTCReportingUpdateItemStats(uint64_t a1)
{
  v6 = *MEMORY[0x1E69E9840];
  memset(&v4, 0, sizeof(v4));
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  fpfs_GetItemBufferedDuration(a1, &v4, v5, 0);
  v3 = v4;
  CMTimeGetSeconds(&v3);
  fpfsi_RTCReportingUpdateBufferDuration(DerivedStorage, v5);
}

uint64_t fpfsi_CopyCurrentDate(uint64_t a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  memset(v4, 0, sizeof(v4));
  fpfs_GetNextTimeToPlay(DerivedStorage, 0, v4);
  return fpfsi_CopyDateForTime();
}

uint64_t fpfsi_EnqueueTaggedRangeMetadataChangedNotificationIfNeeded(uint64_t a1, const void *a2)
{
  if (*(CMBaseObjectGetDerivedStorage() + 2632) < 1)
  {
    return 0;
  }

  NotificationPayloadForProperties = fpfs_CreateNotificationPayloadForProperties(a1, a2, v4, v5, v6, v7, v8, v9, @"TaggedRangeMetadataArray", 0);
  if (NotificationPayloadForProperties)
  {
    v12 = NotificationPayloadForProperties;
    v13 = fpfs_EnqueueNotification(a1, @"TaggedRangeMetadataChanged", a2, NotificationPayloadForProperties);
    CFRelease(v12);
    return v13;
  }

  else
  {
    fpfsi_EnqueueTaggedRangeMetadataChangedNotificationIfNeeded_cold_1(&v14);
    return v14;
  }
}

CMTime *fpfsi_getDateEntryTimelineOrigin@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  if (*(a1 + 84))
  {
    lhs = *(a1 + 72);
    v3 = *(a1 + 96);
    return CMTimeAdd(a2, &lhs, &v3);
  }

  else
  {
    lhs = *(a1 + 24);
    v3 = *(a1 + 48);
    return CMTimeSubtract(a2, &lhs, &v3);
  }
}

uint64_t fpfsi_AssetBecameEligibleForDownload(uint64_t a1, uint64_t a2)
{
  FigRetainProxyRetain();
  CMNotificationCenterGetDefaultLocalCenter();
  dispatch_get_global_queue(0, 0);
  FigGetAllocatorForMedia();

  return FigDeferNotificationToDispatchQueue();
}

void fpfs_FreeDeadTracks(void *a1)
{
  v1 = a1[132];
  if (v1)
  {
    v3 = a1 + 132;
    v4 = *MEMORY[0x1E695E480];
    do
    {
      v5 = v1[3];
      *v3 = v5;
      if (!v5)
      {
        a1[133] = v3;
      }

      v6 = a1[21];
      valuePtr = v1[4];
      theDict = 0;
      if (v6)
      {
        FigPropertyStorageCopyValue(v6, @"TrackPropertyStorages", &theDict);
        if (theDict)
        {
          AllocatorForMedia = FigGetAllocatorForMedia();
          MutableCopy = CFDictionaryCreateMutableCopy(AllocatorForMedia, 0, theDict);
          if (MutableCopy)
          {
            fpfs_FreeDeadTracks_cold_1(v4, &valuePtr, MutableCopy);
          }

          if (theDict)
          {
            CFRelease(theDict);
          }
        }
      }

      fpfs_FreeTrack(v1);
      v1 = *v3;
    }

    while (*v3);
  }
}

uint64_t fpfs_EstablishTimebase(const __CFArray *a1)
{
  v81 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v3 = DerivedStorage;
  v4 = *(DerivedStorage + 824);
  clockOut = 0;
  v5 = *(DerivedStorage + 1024);
  if (!v5)
  {
    v6 = 0;
    goto LABEL_11;
  }

  v6 = 0;
  while (!*(v5 + 112))
  {
LABEL_7:
    v5 = *(v5 + 24);
    if (!v5)
    {
      goto LABEL_11;
    }
  }

  if (*(v5 + 48) != 1936684398)
  {
    if (!v6)
    {
      v6 = *(v5 + 112);
    }

    goto LABEL_7;
  }

  v4 = *(v5 + 112);
LABEL_11:
  if (v4)
  {
    v7 = v4;
  }

  else
  {
    v7 = v6;
  }

  if (!*(DerivedStorage + 553))
  {
    v13 = 1;
    if (v7)
    {
      goto LABEL_23;
    }

LABEL_27:
    if (FigPreferAudioSessionClock())
    {
      v18 = CMBaseObjectGetDerivedStorage();
      if (!*(v18 + 536))
      {
LABEL_33:
        v25 = clockOut;
        HostTimeClock = CMClockGetHostTimeClock();
        clockOut = HostTimeClock;
        if (HostTimeClock)
        {
          CFRetain(HostTimeClock);
        }

        if (v25)
        {
          CFRelease(v25);
        }

        goto LABEL_37;
      }

      v19 = v18;
      AllocatorForMedia = FigGetAllocatorForMedia();
      v21 = FigAudioSessionClockCreate(AllocatorForMedia, *(v19 + 536), 0, &clockOut);
    }

    else
    {
      v22 = FigGetAllocatorForMedia();
      v23 = CFStringCreateWithCString(v22, "VirtualAudioDevice_Default", 0);
      v24 = FigGetAllocatorForMedia();
      v21 = CMAudioDeviceClockCreate(v24, v23, &clockOut);
      if (v23)
      {
        CFRelease(v23);
      }
    }

    if (!v21)
    {
      goto LABEL_37;
    }

    goto LABEL_33;
  }

  v8 = *(DerivedStorage + 3192);
  if (!v8)
  {
    v9 = *v3;
    v10 = FigGetAllocatorForMedia();
    FigRateMinderCreate(v10, 0, v9, @"PlaylistVsHostTime", 1, (v3 + 3192));
    v8 = *(v3 + 3192);
  }

  Clock = FigRateMinderGetClock(v8);
  if (Clock)
  {
    v12 = CFRetain(Clock);
  }

  else
  {
    v12 = 0;
  }

  clockOut = v12;
  CMNotificationCenterGetDefaultLocalCenter();
  FigNotificationCenterAddWeakListener();
  v13 = v12 == 0;
  if (!v7)
  {
    goto LABEL_27;
  }

LABEL_23:
  if (!*(v7 + 32))
  {
    goto LABEL_27;
  }

  if (v13)
  {
    v14 = FigGetAllocatorForMedia();
    FigRenderPipelineGetFigBaseObject();
    v16 = v15;
    v17 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (!v17 || v17(v16, @"PreferredClock", v14, &clockOut))
    {
      goto LABEL_27;
    }
  }

LABEL_37:
  v27 = *(v3 + 576);
  v28 = clockOut;
  if (v27)
  {
    v29 = CMTimebaseSetSourceClock(v27, clockOut);
  }

  else
  {
    v30 = CMBaseObjectGetDerivedStorage();
    *(v30 + 576) = 0;
    v31 = FigGetAllocatorForMedia();
    v29 = CMTimebaseCreateWithSourceClock(v31, v28, (v30 + 576));
    if (!v29)
    {
      FPSTimelineConverterSetProperty(*(v30 + 3376), @"Timebase", *(v30 + 576));
      FigNetworkUrgencyMonitorSetTimebase(*(v30 + 3120), *(v30 + 576));
      v36 = *(v30 + 1024);
      if (v36)
      {
        v38 = MEMORY[0x1E6960C70];
        v39 = &unk_1EAF16000;
        do
        {
          if (v36[16])
          {
            v59 = *v38;
            fpfs_scheduleForwardEndTimeForTrack();
            if (v39[636])
            {
              v58 = 0;
              type = OS_LOG_TYPE_DEFAULT;
              os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
              v41 = v58;
              v42 = type;
              v55 = os_log_and_send_and_compose_flags_and_os_log_type;
              if (os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, type))
              {
                v43 = v41;
              }

              else
              {
                v43 = v41 & 0xFFFFFFFE;
              }

              if (v43)
              {
                v44 = *v30;
                if (*v30)
                {
                  v45 = (CMBaseObjectGetDerivedStorage() + 888);
                }

                else
                {
                  v45 = "";
                }

                v54 = v45;
                if (a1)
                {
                  v46 = (CMBaseObjectGetDerivedStorage() + 3096);
                }

                else
                {
                  v46 = "";
                }

                v53 = v46;
                v47 = v36[4];
                time = v59;
                Seconds = CMTimeGetSeconds(&time);
                v49 = v36[16];
                fpfs_GetTime(v30, &time);
                v50 = CMTimeGetSeconds(&time);
                v51 = *(v30 + 840);
                v60 = 136317442;
                v61 = "fpfs_CreateItemTimebase";
                v62 = 2048;
                v63 = v44;
                v64 = 2082;
                v65 = v54;
                v66 = 2048;
                v67 = a1;
                v68 = 2082;
                v69 = v53;
                v70 = 2048;
                v71 = v47;
                v72 = 2048;
                v73 = Seconds;
                v74 = 2048;
                v75 = v49;
                v76 = 2048;
                v77 = v50;
                v78 = 2048;
                v79 = v51;
                LODWORD(v52) = 102;
                _os_log_send_and_compose_impl(v43, 0, &time, 128, &dword_1962D5000, v55, v42, "<<<< FigStreamPlayer >>>> %s: [%p|%{public}s] <%p|%{public}s>: Track %ld Scheduled endTime at %1.5g (%p), currently %1.5g, rate %1.3g", &v60, v52);
                v38 = MEMORY[0x1E6960C70];
                v39 = &unk_1EAF16000;
              }

              fig_log_call_emit_and_clean_up_after_send_and_compose();
            }
          }

          v36 = v36[3];
        }

        while (v36);
      }

      CMNotificationCenterGetDefaultLocalCenter();
      FigNotificationCenterAddWeakListener();
      v37 = CMBaseObjectGetDerivedStorage();
      if (fpfs_getNext(v37, 0) == a1)
      {
        *(v30 + 470) = 1;
        fpfs_EnqueueNotification(*v30, @"TimebaseChanged", a1, 0);
      }

      fpfs_CheckPrebufferedLevels();
    }

    v32 = *(v30 + 96);
    if (v32)
    {
      v33 = *(v30 + 576);
      v34 = *(*(CMBaseObjectGetVTable() + 8) + 56);
      if (v34)
      {
        v34(v32, @"AfmfpbProperty_Timebase", v33);
      }
    }

    fpfsi_setupCMCDHeaderVendor(a1);
  }

  if (clockOut)
  {
    CFRelease(clockOut);
  }

  if (!v29 && v7 && *(v7 + 32))
  {
    *(v7 + 24) = 1;
  }

  return v29;
}

void fps_HandleRateDelta(int a1, CFTypeRef cf)
{
  cfa = 0;
  v4 = 0;
  if (cf)
  {
    CFRetain(cf);
  }

  if (fpfsi_CopyPlayerAndItemFromItemRetainProxy(cf, &v4, &cfa))
  {
    FigRetainProxyRelease();
  }

  else
  {
    CMBaseObjectGetDerivedStorage();
    CMNotificationCenterGetDefaultLocalCenter();
    FigGetAllocatorForMedia();
    FigDeferNotificationToDispatchQueue();
    if (cfa)
    {
      CFRelease(cfa);
    }

    if (v4)
    {
      CFRelease(v4);
    }
  }
}

uint64_t fpfsi_HandleTimebaseEffectiveRateChanged(uint64_t a1, const void *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  CMBaseObjectGetDerivedStorage();
  if (dword_1EAF169F0)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (a2)
  {
    CFRetain(a2);
  }

  CMNotificationCenterGetDefaultLocalCenter();
  FigGetAllocatorForMedia();
  return FigDeferNotificationToDispatchQueue();
}

uint64_t FigAudioSessionSetMXSessionProperty(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a1)
  {
    return 4294948075;
  }

  v6 = *(CMBaseObjectGetVTable() + 16);
  if (!v6)
  {
    return 4294948075;
  }

  v7 = *(v6 + 56);
  if (!v7)
  {
    return 4294948071;
  }

  return v7(a1, a2, a3);
}

void fpfs_PostNotificationWhenUnlocked(uint64_t a1, const void *a2, const void *a3, const void *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v9 = CMBaseObjectGetDerivedStorage();
  if (FigSimpleMutexTryLock())
  {
    ++*(v9 + 8);
    fpfs_EnqueueNotification(a1, a2, a3, a4);

    fpfs_UnlockAndPostNotificationsWithCaller(a1);
  }

  else
  {
    v10 = malloc_type_malloc(0x28uLL, 0xE0040CDB25F8DuLL);
    if (v10)
    {
      v11 = v10;
      *v10 = a2;
      if (a3)
      {
        v12 = CFRetain(a3);
      }

      else
      {
        v12 = 0;
      }

      v11[1] = v12;
      if (a4)
      {
        v13 = CFRetain(a4);
      }

      else
      {
        v13 = 0;
      }

      v11[2] = v13;
      v14 = *(DerivedStorage + 24);

      dispatch_async_f(v14, v11, fpfs_PostNotificationFromDispatch);
    }
  }
}

void fpfs_PostNotificationFromDispatch(__CFString **a1)
{
  v6 = *MEMORY[0x1E69E9840];
  if (*a1 == @"PlayableRangeChanged")
  {
    v2 = 3;
  }

  else
  {
    v2 = 1;
  }

  if (v2 <= dword_1EAF169F0)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  CMNotificationCenterGetDefaultLocalCenter();
  CMNotificationCenterPostNotification();
  v4 = a1[1];
  if (v4)
  {
    CFRelease(v4);
  }

  v5 = a1[2];
  if (v5)
  {
    CFRelease(v5);
  }

  free(a1);
}

uint64_t fpfsi_copyPerformanceDictionary(uint64_t a1, const __CFAllocator *a2, __CFDictionary **a3)
{
  cf = 0;
  if (!a1)
  {
    v10 = 0;
    value_low = 0;
    goto LABEL_51;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v46 = 0;
  v7 = CMBaseObjectGetDerivedStorage();
  if (!*(DerivedStorage + 1904))
  {
    Mutable = 0;
LABEL_7:
    if (*(DerivedStorage + 1912))
    {
      AllocatorForMedia = FigGetAllocatorForMedia();
      MutableCopy = CFArrayCreateMutableCopy(AllocatorForMedia, 0, *(DerivedStorage + 1912));
      if (!MutableCopy)
      {
        fpfsi_copyPerformanceDictionary_cold_2(&v45);
LABEL_10:
        v10 = 0;
        goto LABEL_11;
      }
    }

    else
    {
      MutableCopy = 0;
    }

    v14 = *(CMBaseObjectGetDerivedStorage() + 1024);
    if (v14)
    {
      while (*(v14 + 48) != 1986618469 || !*(v14 + 112))
      {
        v14 = *(v14 + 24);
        if (!v14)
        {
          goto LABEL_17;
        }
      }

      FigRenderPipelineGetFigBaseObject();
      v26 = v25;
      v27 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      if (v27)
      {
        v28 = v27(v26, @"PerformanceDictionary", a2, &cf);
        v29 = cf;
        if (!v28 && cf != 0)
        {
          if (!Mutable)
          {
            v31 = FigGetAllocatorForMedia();
            Mutable = CFArrayCreateMutable(v31, 0, MEMORY[0x1E695E9C0]);
            if (!Mutable)
            {
              fpfsi_copyPerformanceDictionary_cold_3(&v45);
              goto LABEL_10;
            }

            v29 = cf;
          }

          CFArrayAppendValue(Mutable, v29);
          if (cf)
          {
            CFRelease(cf);
            cf = 0;
          }
        }
      }
    }

LABEL_17:
    v15 = *(CMBaseObjectGetDerivedStorage() + 1024);
    if (v15)
    {
      while (*(v15 + 48) != 1936684398 || !*(v15 + 112))
      {
        v15 = *(v15 + 24);
        if (!v15)
        {
          goto LABEL_21;
        }
      }

      FigRenderPipelineGetFigBaseObject();
      v33 = v32;
      v34 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      if (v34)
      {
        v35 = v34(v33, @"PerformanceDictionary", a2, &cf);
        v36 = cf;
        if (!v35 && cf != 0)
        {
          if (!MutableCopy)
          {
            v38 = FigGetAllocatorForMedia();
            MutableCopy = CFArrayCreateMutable(v38, 0, MEMORY[0x1E695E9C0]);
            if (!MutableCopy)
            {
              fpfsi_copyPerformanceDictionary_cold_4(&v45);
              goto LABEL_10;
            }

            v36 = cf;
          }

          CFArrayAppendValue(MutableCopy, v36);
          if (cf)
          {
            CFRelease(cf);
            cf = 0;
          }
        }
      }

      v39 = CFDictionaryCreateMutable(a2, 20, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      if (v39)
      {
        v10 = v39;
        AudioFormatDescriptionSpatializationEligibility = FPSupport_GetAudioFormatDescriptionSpatializationEligibility(*(v15 + 56), 0);
        AudioRouteSpatializationCapabilities = fpfsi_getAudioRouteSpatializationCapabilities(*(v15 + 16));
        if (AudioFormatDescriptionSpatializationEligibility == 2 && (AudioRouteSpatializationCapabilities & 1) != 0 || AudioFormatDescriptionSpatializationEligibility == 1)
        {
          SInt32 = FigCFNumberCreateSInt32();
          FigCFDictionarySetValue();
          if (SInt32)
          {
            CFRelease(SInt32);
          }
        }

        else
        {
          FigCFDictionarySetValue();
        }

        goto LABEL_22;
      }
    }

    else
    {
LABEL_21:
      v10 = CFDictionaryCreateMutable(a2, 20, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      if (v10)
      {
LABEL_22:
        if (Mutable)
        {
          CFDictionarySetValue(v10, @"VideoTracks", Mutable);
        }

        if (MutableCopy)
        {
          CFDictionarySetValue(v10, @"AudioTracks", MutableCopy);
        }

        if (*(v7 + 462))
        {
          v16 = (v7 + 464);
        }

        else
        {
          v16 = (DerivedStorage + 768);
        }

        if (*(v7 + 462))
        {
          v17 = (v7 + 472);
        }

        else
        {
          v17 = (DerivedStorage + 776);
        }

        if (*v16 != *MEMORY[0x1E695F060] || *v17 != *(MEMORY[0x1E695F060] + 8))
        {
          FigCFDictionarySetCGSize();
        }

        DictionaryRepresentation = CGSizeCreateDictionaryRepresentation(*(DerivedStorage + 2512));
        if (DictionaryRepresentation)
        {
          v20 = DictionaryRepresentation;
          FigCFDictionarySetValue();
          CFRelease(v20);
        }

        Dimensions = fpfsi_GetDimensions(a1, &v46 + 1, &v46);
        if (Dimensions)
        {
          value_low = Dimensions;
        }

        else
        {
          v48.width = *(&v46 + 1);
          v48.height = *&v46;
          v22 = CGSizeCreateDictionaryRepresentation(v48);
          if (v22)
          {
            v23 = v22;
            FigCFDictionarySetValue();
            CFRelease(v23);
          }

          v45 = **&MEMORY[0x1E6960C70];
          fpfs_GetItemBufferedDuration(a1, &v45, 0, 0);
          if (v45.flags)
          {
            v44 = v45;
            CMTimeGetSeconds(&v44);
            FigCFDictionarySetDouble();
          }

          FigCFDictionarySetInt64();
          FigCFDictionarySetInt64();
          value_low = 0;
        }

        goto LABEL_45;
      }
    }

    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v44.value, v44.timescale, LODWORD(v44.epoch));
    value_low = v43;
    v10 = 0;
    goto LABEL_45;
  }

  v8 = FigGetAllocatorForMedia();
  Mutable = CFArrayCreateMutableCopy(v8, 0, *(DerivedStorage + 1904));
  if (Mutable)
  {
    goto LABEL_7;
  }

  fpfsi_copyPerformanceDictionary_cold_1(&v45);
  v10 = 0;
  MutableCopy = 0;
LABEL_11:
  value_low = LODWORD(v45.value);
LABEL_45:
  if (cf)
  {
    CFRelease(cf);
    cf = 0;
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  if (MutableCopy)
  {
    CFRelease(MutableCopy);
  }

LABEL_51:
  *a3 = v10;
  return value_low;
}

uint64_t fpfsi_GetDimensions(uint64_t a1, float *a2, float *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v6 = *DerivedStorage;
  v7 = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  ++*(v7 + 8);
  if (FigRetainProxyIsInvalidated())
  {
    fpfsi_GetDimensions_cold_1(&v13);
    v8 = v13;
  }

  else
  {
    v12 = vcvtq_f64_f32(*(DerivedStorage + 796));
    fpfs_ReadjustDimensions();
    v8 = 0;
    v9 = v12.f64[0];
    *a2 = v9;
    v10 = v12.f64[1];
    *a3 = v10;
  }

  fpfs_UnlockAndPostNotificationsWithCaller(v6);
  return v8;
}

uint64_t fpfsi_setItemRateTimebaseAndAnchor(uint64_t a1, int a2, CMTime *a3, CMTime *a4, float a5)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v11 = DerivedStorage;
  if (a2)
  {
    v12 = *(DerivedStorage + 576);
    if (v12)
    {
      if ((a3->flags & 0x1D) == 1)
      {
        v13 = CMTimebaseCopySource(v12);
        v14 = v13;
        memset(&v20, 0, sizeof(v20));
        if ((a4->flags & 0x1D) == 1)
        {
          time = *a4;
          HostTimeClock = CMClockGetHostTimeClock();
          CMSyncConvertTime(&v20, &time, HostTimeClock, v14);
          if (!v14)
          {
LABEL_11:
            v17 = *(v11 + 576);
            time = *a3;
            v18 = v20;
            result = CMTimebaseSetRateAndAnchorTime(v17, a5, &time, &v18);
            if (result)
            {
              return result;
            }

            goto LABEL_12;
          }
        }

        else
        {
          CMSyncGetTime(&v20, v13);
          if (!v14)
          {
            goto LABEL_11;
          }
        }

        CFRelease(v14);
        goto LABEL_11;
      }

      v20 = **&MEMORY[0x1E6960C70];
      time = v20;
      result = CMTimebaseSetRateAndAnchorTimeWithFlags();
      if (result)
      {
        return result;
      }
    }
  }

LABEL_12:
  *(v11 + 840) = a5;
  fpfsi_updateMaxPlayThroughTime(a1);
  return 0;
}

uint64_t fpfsi_isPlayingHDR(uint64_t a1)
{
  result = *(CMBaseObjectGetDerivedStorage() + 1680);
  if (result)
  {
    return FigAlternateGetVideoRange(result) > 1;
  }

  return result;
}

uint64_t fpfsi_isPlaying4k(uint64_t a1)
{
  result = *(CMBaseObjectGetDerivedStorage() + 1680);
  if (result)
  {
    return FigAlternateIs4k(result);
  }

  return result;
}

CFIndex fpfs_PostPlayQueueNotificationIfHungry(const void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v3 = *(DerivedStorage + 80);
  result = CFArrayGetCount(*(DerivedStorage + 72));
  if (v3)
  {
    v5 = result + 1;
  }

  else
  {
    v5 = result;
  }

  if (v5 <= 1)
  {

    return fpfs_EnqueueNotification(a1, @"PlayQueueBecameHungry", a1, 0);
  }

  return result;
}

__CFArray *fpfs_CopyMediaSelectionArrayAndMarkOptionsAvailableOffline(uint64_t a1)
{
  if (!a1)
  {
    goto LABEL_11;
  }

  if (!*(a1 + 1672))
  {
    goto LABEL_11;
  }

  if (!*(a1 + 1844))
  {
    goto LABEL_11;
  }

  if (!*(a1 + 912))
  {
    goto LABEL_11;
  }

  if (!CMBaseObjectGetDerivedStorage())
  {
    goto LABEL_11;
  }

  cf = 0;
  AllocatorForMedia = FigGetAllocatorForMedia();
  FigBytePumpGetFigBaseObject();
  v4 = v3;
  v5 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v5)
  {
    goto LABEL_11;
  }

  v5(v4, 0x1F0B1F098, AllocatorForMedia, &cf);
  if (!cf)
  {
    goto LABEL_11;
  }

  v6 = FigCopyMediaSelectionArrayAndMarkOptionsAvailableOffline(*(a1 + 1672), *(a1 + 32), cf);
  if (cf)
  {
    CFRelease(cf);
  }

  if (!v6)
  {
LABEL_11:
    v7 = *(a1 + 1672);
    if (v7)
    {
      return CFRetain(v7);
    }

    else
    {
      return 0;
    }
  }

  return v6;
}

void fpfs_BytePumpFn(uint64_t a1, int a2, uint64_t a3, unsigned int a4, uint64_t a5, int a6, uint64_t a7, CMTime *a8, const void *a9, int a10, uint64_t a11, CFErrorRef err, CMTime *a13, int *a14)
{
  v17 = a5;
  v18 = a4;
  v461 = *MEMORY[0x1E69E9840];
  if (err)
  {
    Code = CFErrorGetCode(err);
  }

  else
  {
    Code = 0;
  }

  v437 = 0;
  v438 = 0;
  v435 = 0uLL;
  v436 = 0;
  if (v17 > 2)
  {
    return;
  }

  if (fpfsi_CopyPlayerAndItemFromItemRetainProxyAndLockPlayer(a2, &v437, &v438, a4, a5, a6, a7, a8, sampleTimingArray, numSampleSizeEntries, sampleSizeArray, v370, v372, v375, v377, SBYTE2(v377), BYTE3(v377), SHIDWORD(v377), *v379, *&v379[4], *v381, *&v381[4], v383, v387, v389, v392, v393, v395, v398, v400, v402, v404, v409, v413, v414, v418, v420, v421, a3, v427, v429, v432, type.value, *&type.timescale, type.epoch, v435, *(&v435 + 1), v436, v437, v438, time2.value, *&time2.timescale, time2.epoch, v440, rhs.value, *&rhs.timescale, rhs.epoch, v442, *v443, *&v443[8], *&v443[16], *&v443[24], *&v443[32]))
  {
    goto LABEL_755;
  }

  v405 = v437;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v411 = v438;
  v23 = CMBaseObjectGetDerivedStorage();
  v24 = v23;
  if (!*(v23 + 912))
  {
    goto LABEL_46;
  }

  v25 = v23 + 976;
  v399 = (v23 + 976 + 16 * v17 + 8);
  v403 = *v399;
  v419 = DerivedStorage;
  v428 = v23;
  if (*(DerivedStorage + 32))
  {
    if (*(v23 + 462))
    {
      v26 = 1;
    }

    else
    {
      v26 = Code == 0;
    }

    if (v26)
    {
      goto LABEL_21;
    }
  }

  else if (!Code)
  {
LABEL_46:
    v35 = 0;
    v37 = 1;
    goto LABEL_47;
  }

  v27 = v23 + 976;
  cf[0].value = 0;
  AllocatorForMedia = FigGetAllocatorForMedia();
  FigBytePumpGetFigBaseObject();
  v30 = v29;
  v31 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v31)
  {
    goto LABEL_23;
  }

  v32 = v31(v30, 0x1F0B1EE98, AllocatorForMedia, cf);
  if (cf[0].value)
  {
    CFRelease(cf[0].value);
  }

  if (v32)
  {
LABEL_23:
    v35 = 0;
    v36 = 0;
    v37 = 1;
    v24 = v428;
    v38 = v419;
    v39 = a14;
    goto LABEL_24;
  }

  v24 = v428;
  v25 = v27;
  if (!*(v419 + 32))
  {
    v35 = 0;
    v37 = 1;
    v39 = a14;
    goto LABEL_748;
  }

LABEL_21:
  v33 = v17;
  if ((v18 & 0x1000) != 0)
  {
    v34 = (v18 >> 12) & 1;
    if (!*(v24 + 1744) && !*(v25 + 16 * v17 + 8 * v34))
    {
      v34 = 0;
    }
  }

  else
  {
    v34 = 0;
  }

  v394 = v25;
  if (*(v24 + 12 * v34 + 4 * v17 + 928) != a6)
  {
    goto LABEL_46;
  }

  v415 = v34;
  *(v24 + 12 * v34 + 4 * v17 + 952) = a6;
  Current = CFAbsoluteTimeGetCurrent();
  *(v24 + 8 * v17 + 3024) = Current;
  if ((v18 & 0x10000) != 0)
  {
    cf[0].value = 0;
    v44 = *(v24 + 40);
    v45 = FigGetAllocatorForMedia();
    if (!FigAlternateSelectionBossCopyProperty(v44, @"FilteredAlternateList", v45, cf))
    {
      fpfsi_UpdateValidAlternateListAndEvaluateCurrentAlternateAgaintValidAlternateList();
    }

    v39 = a14;
    if (cf[0].value)
    {
      CFRelease(cf[0].value);
    }

    v35 = 0;
    v37 = 1;
LABEL_44:
    v24 = v428;
    if (!Code)
    {
      goto LABEL_544;
    }

    goto LABEL_748;
  }

  if ((v18 & 8) != 0)
  {
    *(v24 + (v34 | (2 * v34)) + v17 + 3082) = 0;
  }

  HIDWORD(v396) = v34;
  if ((v18 & 0x800) != 0)
  {
    v46 = v24 + (v34 | (2 * v34)) + v17;
    v18 |= *(v46 + 3082) == 0;
    *(v46 + 3082) = 1;
    v47 = theBuffer;
    if (v17 == 2)
    {
      v47 = 0;
    }

    theBuffer = v47;
    if (dword_1EAF169F0)
    {
      LODWORD(time2.value) = 0;
      LOBYTE(v460.value) = 0;
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      value = time2.value;
      v50 = os_log_and_send_and_compose_flags_and_os_log_type;
      value_low = LOBYTE(v460.value);
      if (os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, v460.value))
      {
        v51 = value;
      }

      else
      {
        v51 = value & 0xFFFFFFFE;
      }

      if (v51)
      {
        if (v405)
        {
          v52 = (CMBaseObjectGetDerivedStorage() + 888);
        }

        else
        {
          v52 = "";
        }

        if (v411)
        {
          v53 = (CMBaseObjectGetDerivedStorage() + 3096);
        }

        else
        {
          v53 = "";
        }

        LODWORD(rhs.value) = 136316418;
        *(&rhs.value + 4) = "fpfs_BytePumpFn";
        LOWORD(rhs.flags) = 2048;
        *(&rhs.flags + 2) = v405;
        HIWORD(rhs.epoch) = 2082;
        v442 = v52;
        *v443 = 2048;
        *&v443[2] = v411;
        *&v443[10] = 2082;
        *&v443[12] = v53;
        *&v443[20] = 2114;
        *&v443[22] = a9;
        LODWORD(numSampleSizeEntriesa) = 62;
        _os_log_send_and_compose_impl(v51, 0, cf, 128, &dword_1962D5000, v50, value_low, "<<<< FigStreamPlayer >>>> %s: [%p|%{public}s] <%p|%{public}s>: gap segment recieved for date %{public}@", &rhs);
      }

      fig_log_call_emit_and_clean_up_after_send_and_compose();
      v24 = v428;
      v34 = HIDWORD(v396);
    }

    v54 = *(v24 + 2568);
    if (v54)
    {
      v55 = *(*(CMBaseObjectGetVTable() + 16) + 32);
      if (v55)
      {
        v55(v54, @"playerStats", 0x1F0B43598, 1);
      }
    }

    v24 = v428;
  }

  else if (theBuffer)
  {
    v43 = v24 + (v34 | (2 * v34)) + v17;
    v18 |= *(v43 + 3082) != 0;
    *(v43 + 3082) = 0;
  }

  else
  {
    theBuffer = 0;
  }

  v56 = *(v24 + 24 * v415 + 8 * v17 + 1104);
  if (v56 != a11 && (v18 & 4) != 0)
  {
    v18 &= ~4u;
    if (*(v24 + 2816) > *(v24 + 2820) && v17 != 2 && (*(v24 + 2844) & (1 << v17)) != 0)
    {
      if (((1 << v17) & 2) != 0)
      {
        *(v24 + 2848) = 1;
      }

      else
      {
        *(v24 + 2849) = 1;
      }
    }
  }

  v57 = (v56 != a11) | v18;
  v58 = v18;
  v59 = v24 + 518;
  LODWORD(v390) = v57;
  if (*(v24 + 518 + v17))
  {
    *(v59 + v17) = 0;
    if (!(((v57 & 1) == 0) | (v58 >> 2) & 1) || (v58 & 8) != 0)
    {
      for (i = 0; i != 3; ++i)
      {
        v62 = (1 << i);
        if ((*(v428 + 1072) & v62) != 0 && *(v59 + i))
        {
          fpfs_PrepareForSeek(v411, v62, 1);
        }
      }

      v18 = v58 | 8;
      v24 = v428;
      v34 = HIDWORD(v396);
    }

    else
    {
      v18 = v58;
      LODWORD(Current) = *(v419 + 108);
      if (*&Current <= 2.0 && *&Current >= 0.0 || *(v24 + 2992))
      {
        v60 = 518;
        while (!*(v24 + v60))
        {
          if (++v60 == 521)
          {
            fpfs_BytePumpFn_cold_1(v24, Current);
            break;
          }
        }
      }
    }
  }

  else
  {
    v18 = v58;
  }

  v63 = *(v24 + 1680);
  if (v63)
  {
    v64 = FigAlternateIsIFrameOnly(v63) != 0;
  }

  else
  {
    v64 = 0;
  }

  if ((v18 & 0x10) != 0 || Code && (v18 & 0x20) != 0)
  {
    *(v24 + 1540) = 0;
  }

  HIDWORD(v388) = v18 & 0x20;
  if ((v18 & 0x20) == 0)
  {
    goto LABEL_112;
  }

  if (!Code)
  {
    if (CMBlockBufferIsEmpty(theBuffer) != 1 || !v64)
    {
      goto LABEL_111;
    }

    goto LABEL_109;
  }

  if (Code == -12648)
  {
    fpfs_FrameStepHitEnd(v411);
LABEL_111:
    Code = 0;
    goto LABEL_112;
  }

  if (v64)
  {
LABEL_109:
    if (*(v24 + 2220))
    {
      fpfs_SeekDidFail();
    }

    goto LABEL_111;
  }

LABEL_112:
  HIDWORD(v401) = v18;
  HIDWORD(v382) = v64;
  if ((v18 & 2) == 0)
  {
    if (!Code)
    {
      goto LABEL_142;
    }

    goto LABEL_289;
  }

  if (dword_1EAF169F0)
  {
    LODWORD(time2.value) = 0;
    LOBYTE(v460.value) = 0;
    v65 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    v66 = time2.value;
    v384 = v65;
    *v380 = LOBYTE(v460.value);
    if (os_log_type_enabled(v65, v460.value))
    {
      v67 = v66;
    }

    else
    {
      v67 = v66 & 0xFFFFFFFE;
    }

    if (v67)
    {
      if (v405)
      {
        v68 = (CMBaseObjectGetDerivedStorage() + 888);
      }

      else
      {
        v68 = "";
      }

      if (v411)
      {
        v69 = (CMBaseObjectGetDerivedStorage() + 3096);
      }

      else
      {
        v69 = "";
      }

      fpfs_CurrentSubStreamBufferedDuration(v17, cf);
      Seconds = CMTimeGetSeconds(cf);
      LODWORD(rhs.value) = 136316930;
      *(&rhs.value + 4) = "fpfs_BytePumpFn";
      LOWORD(rhs.flags) = 2048;
      *(&rhs.flags + 2) = v405;
      HIWORD(rhs.epoch) = 2082;
      v442 = v68;
      *v443 = 2048;
      *&v443[2] = v411;
      *&v443[10] = 2082;
      *&v443[12] = v69;
      *&v443[20] = 1024;
      *&v443[22] = v17;
      *&v443[26] = 2048;
      *&v443[28] = Seconds;
      *&v443[36] = 2112;
      *&v443[38] = err;
      LODWORD(numSampleSizeEntriesa) = 78;
      sampleTimingArraya = &rhs;
      _os_log_send_and_compose_impl(v67, 0, cf, 128, &dword_1962D5000, v384, *v380, "<<<< FigStreamPlayer >>>> %s: [%p|%{public}s] <%p|%{public}s>: end of stream %d duration %f with error %@");
      v34 = HIDWORD(v396);
    }

    fig_log_call_emit_and_clean_up_after_send_and_compose();
    v24 = v428;
  }

  v71 = 0;
  v72 = 0;
  *(v24 + (v415 | (2 * v415)) + v17 + 472) = 1;
  do
  {
    v73 = *(v24 + v72 + 472);
    if (!*(v24 + 553))
    {
      goto LABEL_134;
    }

    if (!*(v24 + v72 + 472))
    {
      goto LABEL_136;
    }

    if (*(v24 + 1744))
    {
      v73 = *(v24 + v72 + 475);
LABEL_134:
      if (!v73)
      {
        goto LABEL_136;
      }
    }

    ++v71;
LABEL_136:
    ++v72;
  }

  while (v72 != 3);
  if (!v34 && *(v24 + 1088) == v17)
  {
    fpfsi_RemoveAndClearTimer((v24 + 2320));
  }

  v26 = *(v24 + 1080) == v71;
  v18 = HIDWORD(v401);
  if (!v26)
  {
    if (!Code)
    {
      goto LABEL_142;
    }

LABEL_288:
    fpfs_BytePumpFn_cold_6();
LABEL_289:
    v36 = 0;
    v35 = 0;
    v37 = 1;
    v39 = a14;
LABEL_662:
    if (err)
    {
      v324 = v37;
      v325 = v438;
      v326 = CMBaseObjectGetDerivedStorage();
      CMBaseObjectGetDerivedStorage();
      memset(cf, 0, 24);
      fpfs_GetItemBufferedDuration(v325, cf, 0, 0);
      if (*(v326 + 840) == 0.0 || (rhs = cf[0], CMTimeGetSeconds(&rhs) <= 0.0))
      {
        fpfs_StopPlayingItem();
      }

      else
      {
        v327 = *(v326 + 504);
        *(v326 + 504) = err;
        CFRetain(err);
        if (v327)
        {
          CFRelease(v327);
        }
      }

      LODWORD(Code) = 0;
      v24 = v428;
      v37 = v324;
      goto LABEL_25;
    }

LABEL_668:
    v38 = v419;
    if (!Code)
    {
      goto LABEL_25;
    }

LABEL_24:
    fpfs_StopPlayingItemWithOSStatus(v38, v438, Code);
    goto LABEL_25;
  }

  if (dword_1EAF169F0)
  {
    LODWORD(time2.value) = 0;
    LOBYTE(v460.value) = 0;
    v94 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    v95 = time2.value;
    v96 = v94;
    v386 = LOBYTE(v460.value);
    if (os_log_type_enabled(v94, v460.value))
    {
      v97 = v95;
    }

    else
    {
      v97 = v95 & 0xFFFFFFFE;
    }

    if (v97)
    {
      if (v405)
      {
        v140 = (CMBaseObjectGetDerivedStorage() + 888);
      }

      else
      {
        v140 = "";
      }

      if (v411)
      {
        v143 = (CMBaseObjectGetDerivedStorage() + 3096);
      }

      else
      {
        v143 = "";
      }

      LODWORD(rhs.value) = 136316674;
      *(&rhs.value + 4) = "fpfs_BytePumpFn";
      LOWORD(rhs.flags) = 2048;
      *(&rhs.flags + 2) = v405;
      HIWORD(rhs.epoch) = 2082;
      v442 = v140;
      *v443 = 2048;
      *&v443[2] = v411;
      *&v443[10] = 2082;
      *&v443[12] = v143;
      *&v443[20] = 1024;
      *&v443[22] = Code;
      *&v443[26] = 2082;
      *&v443[28] = "Yes";
      LODWORD(numSampleSizeEntriesa) = 68;
      _os_log_send_and_compose_impl(v97, 0, cf, 128, &dword_1962D5000, v96, v386, "<<<< FigStreamPlayer >>>> %s: [%p|%{public}s] <%p|%{public}s>: At end of all streams; result = %d, end flag %{public}s", &rhs);
      v34 = HIDWORD(v396);
    }

    fig_log_call_emit_and_clean_up_after_send_and_compose();
    v18 = HIDWORD(v401);
    v24 = v428;
  }

  v144 = CMBaseObjectGetDerivedStorage();
  if (*(v144 + 471) != 1)
  {
    *(v144 + 471) = 1;
  }

  fpfs_AssessItemTransition(v405);
  if (Code)
  {
    goto LABEL_288;
  }

LABEL_142:
  v74 = v390;
  if (v390 & 1 | ((v18 & 0xC) != 0))
  {
    *(v24 + (v415 | (2 * v415)) + v17 + 512) = (v18 & 0x14) == 4;
  }

  if (a9 && *(v24 + 1088) == v17 && (a8->flags & 0x1D) == 1)
  {
    v75 = *(v24 + 1568);
    if (v75)
    {
      CFRelease(v75);
    }

    *(v24 + 1568) = CFRetain(a9);
    epoch = a8->epoch;
    *(v24 + 1544) = *&a8->value;
    *(v24 + 1560) = epoch;
  }

  if (*(v24 + 1576) && *(v24 + 1088) == v17 && (v77 = *(v24 + 1568)) != 0)
  {
    v385 = CFRetain(v77);
  }

  else
  {
    v385 = 0;
  }

  v78 = a10;
  if ((v18 & 0x14) == 4)
  {
    if (dword_1EAF169F0)
    {
      v380[0] = a10;
      LODWORD(time2.value) = 0;
      LOBYTE(v460.value) = 0;
      v79 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v80 = time2.value;
      v81 = LOBYTE(v460.value);
      v390 = v79;
      if (os_log_type_enabled(v79, v460.value))
      {
        v82 = v80;
      }

      else
      {
        v82 = v80 & 0xFFFFFFFE;
      }

      if (v82)
      {
        if (v405)
        {
          v83 = (CMBaseObjectGetDerivedStorage() + 888);
        }

        else
        {
          v83 = "";
        }

        if (v411)
        {
          v89 = (CMBaseObjectGetDerivedStorage() + 3096);
        }

        else
        {
          v89 = "";
        }

        LODWORD(rhs.value) = 136316674;
        *(&rhs.value + 4) = "fpfs_BytePumpFn";
        LOWORD(rhs.flags) = 2048;
        *(&rhs.flags + 2) = v405;
        HIWORD(rhs.epoch) = 2082;
        v442 = v83;
        *v443 = 2048;
        *&v443[2] = v411;
        *&v443[10] = 2082;
        *&v443[12] = v89;
        *&v443[20] = 1024;
        *&v443[22] = v17;
        *&v443[26] = 1024;
        *&v443[28] = v34;
        LODWORD(numSampleSizeEntriesa) = 64;
        _os_log_send_and_compose_impl(v82, 0, cf, 128, &dword_1962D5000, v390, v81, "<<<< FigStreamPlayer >>>> %s: [%p|%{public}s] <%p|%{public}s>: NewAlternate subStream %d role %d - resetting manifold", &rhs);
      }

      fig_log_call_emit_and_clean_up_after_send_and_compose();
      v78 = a10;
    }

    if (!v34)
    {
      if ((v401 & 0x20000000000) == 0)
      {
        fpfs_WeakStreamEnd(v428, v17, 0);
        StoreCurrentManifold(v428, v17, 0, 0, v90, v91, v92, v93);
      }

      fpfs_DeleteStrandedTracksUponSwitch(v411, v17, 0);
    }
  }

  else if ((v390 | (v18 >> 3)))
  {
    if (dword_1EAF169F0)
    {
      v380[0] = a10;
      LODWORD(time2.value) = 0;
      LOBYTE(v460.value) = 0;
      v84 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v85 = time2.value;
      v86 = LOBYTE(v460.value);
      v376 = v84;
      if (os_log_type_enabled(v84, v460.value))
      {
        v87 = v85;
      }

      else
      {
        v87 = v85 & 0xFFFFFFFE;
      }

      if (v87)
      {
        if (v405)
        {
          v88 = (CMBaseObjectGetDerivedStorage() + 888);
        }

        else
        {
          v88 = "";
        }

        if (v411)
        {
          v98 = (CMBaseObjectGetDerivedStorage() + 3096);
        }

        else
        {
          v98 = "";
        }

        v99 = "TimeJumped - ";
        LODWORD(rhs.value) = 136317442;
        *(&rhs.value + 4) = "fpfs_BytePumpFn";
        LOWORD(rhs.flags) = 2048;
        *(&rhs.flags + 2) = v405;
        if (((BYTE4(v401) >> 3) & 1) == 0)
        {
          v99 = "";
        }

        v442 = v88;
        v100 = "discontinuity - ";
        HIWORD(rhs.epoch) = 2082;
        if ((BYTE4(v401) >> 3))
        {
          v100 = "";
        }

        *v443 = 2048;
        *&v443[2] = v411;
        *&v443[10] = 2082;
        *&v443[12] = v98;
        *&v443[20] = 2082;
        *&v443[22] = v99;
        *&v443[30] = 2082;
        *&v443[32] = v100;
        *&v443[40] = 1024;
        v17 = v17;
        *&v443[42] = v17;
        *&v443[46] = 1024;
        *&v443[48] = HIDWORD(v396);
        LOWORD(v444) = 1024;
        *(&v444 + 2) = a11;
        LODWORD(numSampleSizeEntriesa) = 90;
        _os_log_send_and_compose_impl(v87, 0, cf, 128, &dword_1962D5000, v376, v86, "<<<< FigStreamPlayer >>>> %s: [%p|%{public}s] <%p|%{public}s>: %{public}s%{public}s on substream %d role %d- disc domain is %d", &rhs);
      }

      fig_log_call_emit_and_clean_up_after_send_and_compose();
      v74 = v390;
      v78 = a10;
    }

    v24 = v428;
    if ((v401 & 0x800000000) != 0)
    {
      if (v74 & 1 | ((v382 & 0x100000000) == 0))
      {
        fpfs_PrepareForSeek(v411, (1 << v17), 1);
      }

      else if (!v17 && (a8->flags & 0x1D) == 1)
      {
        rhs = *a8;
        time2 = *(v428 + 1160);
        CMTimeSubtract(cf, &rhs, &time2);
        fpfs_PrepareToReuseLastIFrameTrack();
        if (v151)
        {
          Code = v151;
          v36 = 0;
          LOBYTE(v18) = BYTE4(v401);
          v38 = v419;
          v39 = a14;
          v35 = v385;
          v37 = 1;
          goto LABEL_24;
        }
      }

      if (v17 != 2 && v78 && *(v428 + 1088) == v17)
      {
        *(v428 + 2216) = v78;
      }
    }

    if (v74)
    {
      v101 = CMBaseObjectGetDerivedStorage();
      if (dword_1EAF169F0)
      {
        LODWORD(time2.value) = 0;
        LOBYTE(v460.value) = 0;
        v102 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        v103 = time2.value;
        v406 = v102;
        LODWORD(v390) = LOBYTE(v460.value);
        v104 = os_log_type_enabled(v102, v460.value);
        v105 = v103 & 0xFFFFFFFE;
        if (v104)
        {
          v105 = v103;
        }

        if (v105)
        {
          HIDWORD(v382) = v105;
          *v380 = v78;
          v106 = *v101;
          if (*v101)
          {
            v107 = (CMBaseObjectGetDerivedStorage() + 888);
          }

          else
          {
            v107 = "";
          }

          if (v411)
          {
            v108 = (CMBaseObjectGetDerivedStorage() + 3096);
          }

          else
          {
            v108 = "";
          }

          LODWORD(rhs.value) = 136316930;
          *(&rhs.value + 4) = "fpfs_StartNewDiscontinuity";
          LOWORD(rhs.flags) = 2048;
          *(&rhs.flags + 2) = v106;
          HIWORD(rhs.epoch) = 2082;
          v442 = v107;
          *v443 = 2048;
          *&v443[2] = v411;
          *&v443[10] = 2082;
          *&v443[12] = v108;
          *&v443[20] = 2048;
          *&v443[22] = a11;
          *&v443[30] = 1024;
          *&v443[32] = v17;
          *&v443[36] = 1024;
          *&v443[38] = HIDWORD(v396);
          LODWORD(numSampleSizeEntriesa) = 74;
          _os_log_send_and_compose_impl(HIDWORD(v382), 0, cf, 128, &dword_1962D5000, v406, v390, "<<<< FigStreamPlayer >>>> %s: [%p|%{public}s] <%p|%{public}s>: discontinuity %ld - resetting manifold on substream %d for role %d", &rhs);
          v78 = *v380;
        }

        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      fpfs_EndCurrentDiscontinuity(v411, v17, HIDWORD(v396), 0);
      v113 = MEMORY[0x1E6960C70];
      v114 = *MEMORY[0x1E6960C70];
      *(v101 + 1496) = *MEMORY[0x1E6960C70];
      v115 = *(v113 + 16);
      *(v101 + 1512) = v115;
      v116 = v101 + 24 * v17;
      *(v116 + 248) = v114;
      *(v116 + 264) = v115;
      *(v101 + 24 * v415 + 8 * v17 + 1104) = a11;
      if (*(v101 + 976 + 16 * v17 + 8 * v415))
      {
        StoreCurrentManifold(v101, v17, HIDWORD(v396), 0, v109, v110, v111, v112);
      }

      v117 = *(v101 + 1024);
      if (v117)
      {
        do
        {
          while (1)
          {
            v118 = *(v117 + 24);
            if (v118)
            {
              v119 = *(v118 + 32);
            }

            else
            {
              v119 = -1;
            }

            v120 = *(v117 + 196);
            if (*(v117 + 64) == *(v101 + 976 + 16 * v120 + 8) && v120 == v17 && *(v117 + 80) < a11)
            {
              fpfs_DeleteTrack(v411, v117);
            }

            if (v119 < 0)
            {
              break;
            }

            v118 = *(v101 + 1024);
            if (!v118)
            {
              goto LABEL_241;
            }

            v117 = *(v101 + 1024);
            while (*(v117 + 32) != v119)
            {
              v117 = *(v117 + 24);
              if (!v117)
              {
                goto LABEL_239;
              }
            }
          }

LABEL_239:
          if (!v118)
          {
            break;
          }

          v117 = v118;
        }

        while (*(v101 + 1024));
      }
    }
  }

LABEL_241:
  v122 = v428;
  v123 = HIDWORD(v396);
  v124 = v403;
  if (!*(v428 + 592) && v17 != 2 && (a8->flags & 0x1D) == 1)
  {
    if (dword_1EAF169F0)
    {
      *v380 = v78;
      LODWORD(time2.value) = 0;
      LOBYTE(v460.value) = 0;
      v136 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v137 = time2.value;
      v138 = v136;
      v412 = LOBYTE(v460.value);
      if (os_log_type_enabled(v136, v460.value))
      {
        v139 = v137;
      }

      else
      {
        v139 = v137 & 0xFFFFFFFE;
      }

      if (v139)
      {
        v423 = v17;
        v141 = v437;
        if (v437)
        {
          v142 = (CMBaseObjectGetDerivedStorage() + 888);
        }

        else
        {
          v142 = "";
        }

        v145 = v438;
        if (v438)
        {
          v146 = (CMBaseObjectGetDerivedStorage() + 3096);
        }

        else
        {
          v146 = "";
        }

        cf[0] = *a8;
        v147 = CMTimeGetSeconds(cf);
        LODWORD(rhs.value) = 136316418;
        *(&rhs.value + 4) = "fpfs_BytePumpFn";
        LOWORD(rhs.flags) = 2048;
        *(&rhs.flags + 2) = v141;
        HIWORD(rhs.epoch) = 2082;
        v442 = v142;
        *v443 = 2048;
        *&v443[2] = v145;
        *&v443[10] = 2082;
        *&v443[12] = v146;
        *&v443[20] = 2048;
        *&v443[22] = v147;
        LODWORD(numSampleSizeEntriesa) = 62;
        sampleTimingArraya = &rhs;
        _os_log_send_and_compose_impl(v139, 0, cf, 128, &dword_1962D5000, v138, v412, "<<<< FigStreamPlayer >>>> %s: [%p|%{public}s] <%p|%{public}s>: Initial timebase time set by pump to %1.5g");
        v17 = v423;
        v123 = HIDWORD(v396);
        v124 = v403;
      }

      fig_log_call_emit_and_clean_up_after_send_and_compose();
      v78 = *v380;
    }

    cf[0] = *a8;
    fpfs_SetTime(v438, cf);
    fpfs_CancelSeekIfNeeded();
    v122 = v428;
    *(v428 + 592) = 1;
  }

  v18 = HIDWORD(v401);
  if (!v123 && (a8->flags & 0x1D) == 1)
  {
    if ((v401 & 0x800000000) != 0 && v17 != 2 && v78)
    {
      memset(&time2, 0, sizeof(time2));
      v125 = (v122 + 1160);
      cf[0] = *a8;
      rhs = *(v122 + 1160);
      CMTimeSubtract(&time2, cf, &rhs);
      v127 = (*(v122 + 393) & 2) != 0 || (v126 = *(v122 + 1680)) == 0 || FigAlternateIsIFrameOnly(v126) == 0;
      cf[0] = time2;
      *v410 = *MEMORY[0x1E6960CC0];
      *&rhs.value = *MEMORY[0x1E6960CC0];
      v128 = *(MEMORY[0x1E6960CC0] + 16);
      rhs.epoch = v128;
      if (CMTimeCompare(cf, &rhs) < 0)
      {
        *&time2.value = *v410;
        time2.epoch = v128;
      }

      v129 = v428;
      v130 = (*(v428 + 332) & 1) == 0 && v127;
      v18 = HIDWORD(v401);
      if (v130 || (cf[0] = *(v428 + 320), v460 = time2, CMTimeSubtract(&rhs, cf, &v460), CMTimeAbsoluteValue(cf, &rhs), CMTimeMake(&rhs, 1, 1), CMTimeCompare(cf, &rhs) >= 1) && (*(v428 + 392) & 0xF) != 5 && ((*(v428 + 356) & 1) == 0 || (cf[0] = time2, rhs = *(v428 + 344), (CMTimeCompare(cf, &rhs) & 0x80000000) == 0)) && ((*(v428 + 380) & 1) == 0 || (cf[0] = time2, rhs = *(v428 + 368), CMTimeCompare(cf, &rhs) <= 0)))
      {
        if (dword_1EAF169F0)
        {
          v378 = v33;
          v422 = v17;
          LODWORD(v460.value) = 0;
          LOBYTE(type.value) = 0;
          v131 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          v132 = v460.value;
          v133 = v131;
          v134 = os_log_type_enabled(v131, OS_LOG_TYPE_DEFAULT);
          LODWORD(v135) = v132 & 0xFFFFFFFE;
          if (v134)
          {
            v135 = v132;
          }

          else
          {
            v135 = v135;
          }

          if (v135)
          {
            v148 = v135;
            v149 = v437;
            if (v437)
            {
              v150 = (CMBaseObjectGetDerivedStorage() + 888);
            }

            else
            {
              v150 = "";
            }

            v407 = v150;
            v152 = v438;
            if (v438)
            {
              v153 = (CMBaseObjectGetDerivedStorage() + 3096);
            }

            else
            {
              v153 = "";
            }

            if (*(v428 + 332))
            {
              v154 = "New time differs the seek request more than 1s.";
            }

            else
            {
              v154 = "TimeJump while no seek request.";
            }

            cf[0] = time2;
            v155 = CMTimeGetSeconds(cf);
            cf[0] = *v125;
            v156 = CMTimeGetSeconds(cf);
            LODWORD(rhs.value) = 136316930;
            *(&rhs.value + 4) = "fpfs_BytePumpFn";
            LOWORD(rhs.flags) = 2048;
            *(&rhs.flags + 2) = v149;
            HIWORD(rhs.epoch) = 2082;
            v442 = v407;
            *v443 = 2048;
            *&v443[2] = v152;
            *&v443[10] = 2082;
            *&v443[12] = v153;
            *&v443[20] = 2082;
            *&v443[22] = v154;
            *&v443[30] = 2048;
            *&v443[32] = v155;
            *&v443[40] = 2048;
            *&v443[42] = v156;
            LODWORD(numSampleSizeEntriesa) = 82;
            sampleTimingArraya = &rhs;
            _os_log_send_and_compose_impl(v148, 0, cf, 128, &dword_1962D5000, v133, 0, "<<<< FigStreamPlayer >>>> %s: [%p|%{public}s] <%p|%{public}s>: %{public}s Setting seek time to %1.5g, pumpOffset %1.5g");
          }

          fig_log_call_emit_and_clean_up_after_send_and_compose();
          v17 = v422;
          v18 = HIDWORD(v401);
          v129 = v428;
          v123 = HIDWORD(v396);
          v33 = v378;
        }

        cf[0] = time2;
        fpfsi_setLastSeekTimeSet(v129, cf);
      }

      v157 = v438;
      fpfs_GetNextTimeToPlay(v428, 0, cf);
      v158 = v157;
      v122 = v428;
      fpfsi_PrepareToStartWhenLikelyToKeepUp(v158, cf);
      v124 = v403;
    }

    if ((v18 & 0x4000) != 0 && *(v122 + 1088) == v33 && *(v122 + 465))
    {
      v159 = MEMORY[0x1E6960CC0];
      *(v122 + 408) = *MEMORY[0x1E6960CC0];
      *(v122 + 424) = *(v159 + 16);
    }

    v160 = *&a8->value;
    v161 = v122 + 24 * v33;
    *(v161 + 1200) = a8->epoch;
    *(v161 + 1184) = v160;
    memset(cf, 0, 24);
    fpfs_GetTime(v122, cf);
  }

  if (theBuffer)
  {
    DataLength = CMBlockBufferGetDataLength(theBuffer);
  }

  else
  {
    DataLength = 0;
  }

  if (v124)
  {
    if (*(v394 + 16 * v33) == v124)
    {
      v162 = 0;
    }

    else
    {
      v162 = v123;
    }

    v123 = v162;
  }

  else
  {
    v162 = v415;
  }

  v410[0] = v394 + 16 * v33;
  if (!*(v410[0] + 8 * v162))
  {
    if (theBuffer)
    {
      HIDWORD(v382) = v18 & 0x10;
      HIDWORD(v396) = v123;
      v163 = MEMORY[0x1E6960C70];
      v164 = *MEMORY[0x1E6960C70];
      v451 = v164;
      v165 = *(MEMORY[0x1E6960C70] + 8);
      v452 = v165;
      v449 = v164;
      v450 = v165;
      memset(&type, 0, sizeof(type));
      cf[0] = *a8;
      rhs = *(v122 + 1160);
      CMTimeSubtract(&type, cf, &rhs);
      v166 = v122 + 176;
      v416 = v162;
      v167 = v122 + 176 + 24 * v162;
      v168 = *(v167 + 8 * v33);
      v390 = v167;
      v424 = v17;
      v378 = v33;
      *v380 = v166;
      if (v168)
      {
        if (CMBlockBufferGetDataLength(theBuffer))
        {
          appended = CMBlockBufferAppendBufferReference(v168, theBuffer, 0, 0, 0);
          if (appended)
          {
            Code = appended;
            v430 = 1;
            v39 = a14;
LABEL_708:
            LOBYTE(v18) = BYTE4(v401);
            v24 = v428;
            v36 = DataLength;
            goto LABEL_477;
          }
        }
      }

      else
      {
        *(v167 + 8 * v33) = CFRetain(theBuffer);
      }

      v180 = 0;
      v447 = type.value;
      flags = type.flags;
      timescale = type.timescale;
      *v457 = type.value;
      v458 = type.timescale;
      *v455 = v164;
      v456 = v165;
      v182 = *(v163 + 12);
      v460.value = v428 + 1024;
      *&v460.timescale = v428 + 1040;
      v460.epoch = v428 + 1056;
      v374 = type.epoch;
      v183 = type.epoch;
      LODWORD(v376) = type.flags;
      v184 = *(v163 + 16);
      do
      {
        v185 = **(&v460.value + v180);
        if (v185)
        {
          v186 = v184;
          v187 = v182;
          do
          {
            if (*(v185 + 80) != a11)
            {
              goto LABEL_366;
            }

            rhs = *(v185 + 232);
            time2 = *(v185 + 412);
            CMTimeAdd(cf, &rhs, &time2);
            rhs = *(v185 + 144);
            CMTimeSubtract(&time2, cf, &rhs);
            v453 = time2.value;
            v182 = time2.flags;
            v454 = time2.timescale;
            if ((time2.flags & 0x1D) != 1)
            {
              goto LABEL_366;
            }

            v184 = time2.epoch;
            if ((flags & 1) == 0 || (cf[0].value = v453, cf[0].timescale = v454, cf[0].flags = time2.flags, cf[0].epoch = time2.epoch, rhs.value = *v457, rhs.timescale = v458, rhs.flags = flags, rhs.epoch = v183, CMTimeCompare(cf, &rhs) >= 1))
            {
              *v457 = v453;
              v458 = v454;
              flags = v182;
              v183 = v184;
            }

            if (((v188 = *(v185 + 48), v188 == 1986618469) || v188 == 1936684398) && ((v187 & 1) == 0 || (cf[0].value = v453, cf[0].timescale = v454, cf[0].flags = v182, cf[0].epoch = v184, rhs.value = *v455, rhs.timescale = v456, rhs.flags = v187, rhs.epoch = v186, CMTimeCompare(cf, &rhs) >= 1)) && *(v185 + 196) == v424)
            {
              *v455 = v453;
              v456 = v454;
            }

            else
            {
LABEL_366:
              v182 = v187;
              v184 = v186;
            }

            v185 = *(v185 + 24);
            v186 = v184;
            v187 = v182;
          }

          while (v185);
        }

        v189 = v182 & 0x1D;
        v190 = (flags & 0x1D) == 1;
        if ((flags & 0x1D) == 1 && v189 == 1)
        {
          v190 = 1;
          goto LABEL_374;
        }

        ++v180;
      }

      while (v180 != 3);
      if (v189 != 1)
      {
        *v455 = v447;
        v456 = timescale;
        LODWORD(v182) = v376;
        v184 = v374;
      }

LABEL_374:
      v451 = *v457;
      v452 = v458;
      v449 = *v455;
      v450 = v456;
      v191 = v438;
      v192 = *(v167 + 8 * v378);
      v193 = CMBaseObjectGetDerivedStorage();
      time2.value = 0;
      v460.value = 0;
      if (*(v193 + 400))
      {
        ArrayValue = FigCFDictionaryGetArrayValue();
      }

      else
      {
        ArrayValue = 0;
      }

      v431 = v193;
      if (*(v193 + 873))
      {
        v195 = 3;
      }

      else
      {
        v195 = 1;
      }

      v196 = fpfs_FirstTrackWithFormatDescriptionOfType(v191, 1986618469) == 0;
      cf[0].value = v449;
      cf[0].timescale = v450;
      cf[0].flags = v182;
      cf[0].epoch = v184;
      v197 = v191;
      Code = FigManifoldFactoryCreateManifold(0, v192, v195, cf, v196, fpfs_NewTrackNote, fpfs_MPEG2ManifoldErrorCallback, 0, ArrayValue, 31, v191, &time2);
      v198 = time2.value;
      if (Code)
      {
        v199 = 1;
      }

      else
      {
        v199 = time2.value == 0;
      }

      v200 = !v199 && v190;
      v39 = a14;
      v123 = HIDWORD(v396);
      v36 = DataLength;
      if (v200)
      {
        v201 = *MEMORY[0x1E695E480];
        cf[0].value = v451;
        cf[0].timescale = v452;
        cf[0].flags = flags;
        cf[0].epoch = v183;
        v202 = CMTimeCopyAsDictionary(cf, v201);
        v198 = time2.value;
        if (v202)
        {
          v203 = v202;
          v204 = *(*(CMBaseObjectGetVTable() + 8) + 56);
          if (v204)
          {
            v204(v198, @"FMFD_HintForStartTime", v203);
          }

          CFRelease(v203);
          v198 = time2.value;
        }
      }

      if (Code)
      {
        v17 = v424;
LABEL_456:
        v24 = v428;
        goto LABEL_457;
      }

      v17 = v424;
      v24 = v428;
      if (!v198)
      {
LABEL_457:
        if (v198)
        {
          CFRelease(v198);
        }

        if (v460.value)
        {
          CFRelease(v460.value);
        }

LABEL_461:
        if (v123)
        {
          v403 = *v399;
        }

        if (Code == -16048 || Code == -16044)
        {
          v243 = CMBlockBufferGetDataLength(*(v390 + 8 * v378));
          v244 = 0x20000;
          if (Code == -16048)
          {
            v244 = 0x200000;
          }

          v430 = 1;
          LOWORD(v18) = WORD2(v401);
          if (v243 > v244)
          {
            goto LABEL_477;
          }

          goto LABEL_483;
        }

        if (Code)
        {
          v430 = 1;
        }

        else
        {
          fpfs_prepareDataForInject(*(v390 + 8 * v378));
          CurrentManifold = GetCurrentManifold(v24, v17, v123);
          Code = FigManifoldInjectData(CurrentManifold, 0, (HIDWORD(v401) >> 6) & 4 | (HIDWORD(v382) >> 4) | (HIDWORD(v401) >> 5) & 2, *(v390 + 8 * v378));
          v430 = Code != 0;
          if (v403)
          {
            if (GetCurrentManifold(v24, v17, 0) == v403)
            {
              v242 = 0;
            }

            else
            {
              v242 = v123;
            }

            HIDWORD(v396) = v242;
          }

          else
          {
            v242 = v416;
          }

          v245 = *v380 + 24 * v242;
          v246 = *(v245 + 8 * v378);
          v36 = DataLength;
          if (v246)
          {
            CFRelease(v246);
            *(v245 + 8 * v378) = 0;
          }

          v123 = HIDWORD(v396);
          if (GetCurrentManifold(v24, v17, HIDWORD(v396)))
          {
            LOWORD(v18) = WORD2(v401);
            if (!Code)
            {
LABEL_483:
              v33 = v378;
              goto LABEL_484;
            }

LABEL_477:
            v35 = v385;
            v37 = v430;
            goto LABEL_668;
          }

          if (dword_1EAF169F0)
          {
            LODWORD(time2.value) = 0;
            LOBYTE(v460.value) = 0;
            v291 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            v292 = time2.value;
            v293 = LOBYTE(v460.value);
            if (os_log_type_enabled(v291, v460.value))
            {
              v294 = v292;
            }

            else
            {
              v294 = v292 & 0xFFFFFFFE;
            }

            if (v294)
            {
              v295 = v437;
              if (v437)
              {
                v296 = (CMBaseObjectGetDerivedStorage() + 888);
              }

              else
              {
                v296 = "";
              }

              v350 = v438;
              if (v438)
              {
                v351 = (CMBaseObjectGetDerivedStorage() + 3096);
              }

              else
              {
                v351 = "";
              }

              LODWORD(rhs.value) = 136316930;
              *(&rhs.value + 4) = "fpfs_BytePumpFn";
              LOWORD(rhs.flags) = 2048;
              *(&rhs.flags + 2) = v295;
              HIWORD(rhs.epoch) = 2082;
              v442 = v296;
              *v443 = 2048;
              *&v443[2] = v350;
              *&v443[10] = 2082;
              *&v443[12] = v351;
              *&v443[20] = 1024;
              *&v443[22] = Code;
              *&v443[26] = 1024;
              *&v443[28] = v17;
              *&v443[32] = 1024;
              *&v443[34] = HIDWORD(v396);
              LODWORD(numSampleSizeEntriesa) = 70;
              _os_log_send_and_compose_impl(v294, 0, cf, 128, &dword_1962D5000, v291, v293, "<<<< FigStreamPlayer >>>> %s: [%p|%{public}s] <%p|%{public}s>: error %d from manifold-substream %d role %d ignored, since manifold is gone after injecting", &rhs, numSampleSizeEntriesa);
            }

            fig_log_call_emit_and_clean_up_after_send_and_compose();
            Code = 0;
            goto LABEL_708;
          }

          Code = 0;
        }

        LOBYTE(v18) = BYTE4(v401);
        goto LABEL_477;
      }

      v205 = *(*(CMBaseObjectGetVTable() + 8) + 56);
      if (v205)
      {
        v205(v198, @"FMFD_ProhibitPrimingTrim", *MEMORY[0x1E695E4D0]);
      }

      if (_os_feature_enabled_impl())
      {
        v206 = *MEMORY[0x1E695E480];
        if (!*(v431 + 3424))
        {
          v207 = FigSampleAttachmentCollectionRulesCopyForManifold(*MEMORY[0x1E695E480], 0, (v431 + 3424));
          if (v207)
          {
            v208 = v207;
            fpfs_BytePumpFn_cold_2();
            Code = v208;
            v24 = v428;
            v123 = HIDWORD(v396);
            goto LABEL_461;
          }
        }
      }

      else
      {
        v206 = *MEMORY[0x1E695E480];
      }

      v209 = time2.value;
      v214 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      if (v214)
      {
        v214(v209, @"FMFD_Type", v206, &v460);
      }

      v123 = HIDWORD(v396);
      if (!HIDWORD(v396))
      {
        v220 = v460.value;
        if (v424 || !v460.value)
        {
          if (v424 != 1)
          {
            goto LABEL_404;
          }

          if (!v460.value)
          {
            goto LABEL_404;
          }

          v221 = *(v431 + 2568);
          if (!v221)
          {
            goto LABEL_404;
          }

          v222 = *(*(CMBaseObjectGetVTable() + 16) + 48);
          if (!v222)
          {
            goto LABEL_404;
          }

          v223 = 0x1F0B66CD8;
        }

        else
        {
          v221 = *(v431 + 2568);
          if (!v221)
          {
            goto LABEL_404;
          }

          v222 = *(*(CMBaseObjectGetVTable() + 16) + 48);
          if (!v222)
          {
            goto LABEL_404;
          }

          v223 = 0x1F0B66CB8;
        }

        v222(v221, @"playerStats", v223, v220, 0);
      }

LABEL_404:
      if (dword_1EAF169F0)
      {
        *v457 = 0;
        v455[0] = OS_LOG_TYPE_DEFAULT;
        v215 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        v216 = *v457;
        LODWORD(v376) = v455[0];
        if (os_log_type_enabled(v215, v455[0]))
        {
          v217 = v216;
        }

        else
        {
          v217 = v216 & 0xFFFFFFFE;
        }

        if (v217)
        {
          v218 = *v431;
          if (*v431)
          {
            v219 = (CMBaseObjectGetDerivedStorage() + 888);
          }

          else
          {
            v219 = "";
          }

          if (v197)
          {
            v240 = (CMBaseObjectGetDerivedStorage() + 3096);
          }

          else
          {
            v240 = "";
          }

          LODWORD(rhs.value) = 136316930;
          *(&rhs.value + 4) = "fpfs_CreateManifold";
          LOWORD(rhs.flags) = 2048;
          *(&rhs.flags + 2) = v218;
          HIWORD(rhs.epoch) = 2082;
          v442 = v219;
          *v443 = 2048;
          *&v443[2] = v197;
          *&v443[10] = 2082;
          *&v443[12] = v240;
          *&v443[20] = 1024;
          *&v443[22] = v424;
          *&v443[26] = 2048;
          *&v443[28] = time2.value;
          *&v443[36] = 2114;
          *&v443[38] = v460.value;
          LODWORD(numSampleSizeEntriesa) = 78;
          _os_log_send_and_compose_impl(v217, 0, cf, 128, &dword_1962D5000, v215, v376, "<<<< FigStreamPlayer >>>> %s: [%p|%{public}s] <%p|%{public}s>: Created manifold[%i:%p] with type - manifoldType: %{public}@", &rhs);
        }

        fig_log_call_emit_and_clean_up_after_send_and_compose();
        v123 = HIDWORD(v396);
      }

      StoreCurrentManifold(v431, v424, v123, time2.value, v210, v211, v212, v213);
      v198 = time2.value;
      goto LABEL_456;
    }

    v430 = 1;
    if ((v18 & 2) == 0 || *(v122 + 1088) != v33)
    {
LABEL_484:
      v247 = v438;
      v417 = v437;
      v248 = CMBaseObjectGetDerivedStorage();
      v249 = v248;
      time2.value = 0;
      v250 = *(v248 + 1024);
      if (v250)
      {
        while (*(v250 + 196) != v17 || *(v250 + 64) != *(v248 + 16 * v33 + 976))
        {
          v250 = *(v250 + 24);
          if (!v250)
          {
            goto LABEL_488;
          }
        }

        v252 = 1;
        v251 = v123;
        if ((v18 & 0x8000) != 0)
        {
          v253 = 0;
          *(v250 + 204) = 1;
        }

        else
        {
          v253 = 1;
        }
      }

      else
      {
LABEL_488:
        v251 = v123;
        v252 = 0;
        v250 = 0;
        v253 = (v18 & 0x8000) == 0;
      }

      if ((v18 & 0x840) == 0x40)
      {
        v254 = v252 ^ 1;
        if (*(v248 + 1088) != v33)
        {
          v254 = 1;
        }

        if ((v254 & 1) == 0 && !*(v250 + 204))
        {
          if (dword_1EAF169F0)
          {
            LODWORD(v460.value) = 0;
            LOBYTE(type.value) = 0;
            v280 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            v281 = v460.value;
            v282 = LOBYTE(type.value);
            v403 = v280;
            if (os_log_type_enabled(v280, type.value))
            {
              v283 = v281;
            }

            else
            {
              v283 = v281 & 0xFFFFFFFE;
            }

            if (v283)
            {
              if (v417)
              {
                v284 = (CMBaseObjectGetDerivedStorage() + 888);
              }

              else
              {
                v284 = "";
              }

              if (v247)
              {
                v299 = (CMBaseObjectGetDerivedStorage() + 3096);
              }

              else
              {
                v299 = "";
              }

              LODWORD(rhs.value) = 136316418;
              *(&rhs.value + 4) = "fpfsi_checkIfActiveSubstreamSegmentProduceSample";
              LOWORD(rhs.flags) = 2048;
              *(&rhs.flags + 2) = v417;
              HIWORD(rhs.epoch) = 2082;
              v442 = v284;
              *v443 = 2048;
              *&v443[2] = v247;
              *&v443[10] = 2082;
              *&v443[12] = v299;
              *&v443[20] = 2114;
              *&v443[22] = a9;
              LODWORD(numSampleSizeEntriesa) = 62;
              _os_log_send_and_compose_impl(v283, 0, cf, 128, &dword_1962D5000, v403, v282, "<<<< FigStreamPlayer >>>> %s: [%p|%{public}s] <%p|%{public}s>: no samples produced for segment with date %{public}@", &rhs);
            }

            fig_log_call_emit_and_clean_up_after_send_and_compose();
            LOBYTE(v18) = BYTE4(v401);
          }

          v300 = *(v249 + 2568);
          if (v300)
          {
            v301 = *(*(CMBaseObjectGetVTable() + 16) + 32);
            if (v301)
            {
              v301(v300, @"playerStats", 0x1F0B43578, 1);
            }
          }

          v302 = FigGetAllocatorForMedia();
          FigAssetGetCMBaseObject();
          v304 = v303;
          v305 = *(*(CMBaseObjectGetVTable() + 8) + 48);
          if (v305)
          {
            v306 = v305(v304, @"assetProperty_CreationURL", v302, &time2);
            v307 = !v253;
            if (v306)
            {
              v307 = 1;
            }

            if ((v307 & 1) == 0 && FigCFURLIsLocalResource())
            {
              FigSignalErrorAtGM("%s signalled err=%d at <>:%d", sampleTimingArraya, numSampleSizeEntriesa, sampleSizeArraya);
            }
          }
        }
      }

      if (time2.value)
      {
        CFRelease(time2.value);
      }

      v35 = v385;
      if (theBuffer)
      {
        v255 = *(v428 + 1152);
        if (v255)
        {
          v256 = *(v428 + 1024);
          if (v256)
          {
            while (*(v256 + 32) != v255)
            {
              v256 = *(v256 + 24);
              if (!v256)
              {
                goto LABEL_501;
              }
            }

            if (*(v256 + 64) == *(v394 + 16 * *(v256 + 196) + 8))
            {
              fpfs_IsTrialReadyToComplete(v428, v256);
            }

            fpfs_CheckVideoSyncQueue();
            if (v335)
            {
              fpfs_FinishVideoSync();
              if (v336)
              {
                Code = v336;
                LODWORD(time2.value) = 0;
                LOBYTE(v460.value) = 0;
                v337 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
                v338 = time2.value;
                v339 = LOBYTE(v460.value);
                if (os_log_type_enabled(v337, v460.value))
                {
                  v340 = v338;
                }

                else
                {
                  v340 = v338 & 0xFFFFFFFE;
                }

                if (v340)
                {
                  LODWORD(rhs.value) = 136316162;
                  *(&rhs.value + 4) = "fpfs_BytePumpFn";
                  LOWORD(rhs.flags) = 1024;
                  *(&rhs.flags + 2) = Code;
                  WORD1(rhs.epoch) = 1024;
                  HIDWORD(rhs.epoch) = v255;
                  LOWORD(v442) = 1024;
                  *(&v442 + 2) = v17;
                  HIWORD(v442) = 1024;
                  *v443 = v251;
                  _os_log_send_and_compose_impl(v340, 0, cf, 128, &dword_1962D5000, v337, v339, "<<<< FigStreamPlayer >>>> %s: error %d syncing track %d from manifold-substream %d role %d", &rhs, 36, sampleSizeArraya, v371, v373);
                }

                fig_log_call_emit_and_clean_up_after_send_and_compose();
                v39 = a14;
                LOBYTE(v18) = BYTE4(v401);
                v24 = v428;
                v38 = v419;
                v35 = v385;
                v36 = DataLength;
                v37 = v430;
                goto LABEL_24;
              }
            }
          }
        }

LABEL_501:
        *(v428 + 1152) = 0;
        LOBYTE(v18) = BYTE4(v401);
      }

      v257 = v251;
      if (HIDWORD(v388))
      {
        v258 = *(v410[0] + 8 * v251);
        if (v258)
        {
          v259 = *(*(CMBaseObjectGetVTable() + 16) + 40);
          if (v259)
          {
            v259(v258);
          }
        }
      }

      if (v17 != 2 && (v18 & 8) != 0)
      {
        fpfs_EnqueueNotification(v417, @"TimeJumped", v247, 0);
      }

      memset(cf, 0, 24);
      v24 = v428;
      rhs = *(v428 + 1304);
      fpfsi_GetDuration(v247, &cf[0].value);
      if (!v260)
      {
        time2 = rhs;
        v460 = cf[0];
        if (CMTimeCompare(&time2, &v460))
        {
          fpfs_BytePumpFn_cold_3(v417, v247, v261, v262, v263, v264, v265, v266);
        }
      }

      if (theBuffer && ((UpTimeNanoseconds = FigGetUpTimeNanoseconds(), (v18 & 0x40) != 0) || UpTimeNanoseconds - *(v428 + 2368) >= 500000001))
      {
        fpfsi_EnqueuePlayableRangeChangedNotification(v247);
        if ((v18 & 2) == 0)
        {
          goto LABEL_562;
        }
      }

      else if ((v18 & 2) == 0)
      {
        goto LABEL_562;
      }

      v268 = CMBaseObjectGetDerivedStorage();
      v269 = *(CMBaseObjectGetDerivedStorage() + 1024);
      if (v269)
      {
        v270 = 0;
        do
        {
          if (!*(v269 + 200) && *(v269 + 196) == v17)
          {
            if (!v270 || (cf[0] = *(v269 + 232), rhs = *(v270 + 232), CMTimeCompare(cf, &rhs) >= 1))
            {
              v270 = v269;
            }
          }

          v269 = *(v269 + 24);
        }

        while (v269);
      }

      else
      {
        v270 = 0;
      }

      memset(cf, 0, 24);
      rhs = *(v268 + 1352);
      FPSTimelineConverterL3TimeToL2(&rhs, cf);
      v271 = (cf[0].flags & 0x1D) != 1 || v270 == 0;
      LOBYTE(v18) = BYTE4(v401);
      if (v271 || (rhs = cf[0], time2 = *(v270 + 232), CMTimeCompare(&rhs, &time2) < 1) || (v401 & 0x2000000000000) != 0 || *(v270 + 472))
      {
        fpfs_EndCurrentDiscontinuity(v247, v17, v257, 1);
        if (!*(v268 + 471))
        {
          goto LABEL_562;
        }

        memset(&rhs, 0, sizeof(rhs));
        fpfsi_LastNonSparseSampleEnd(v247, &rhs);
        if (rhs.flags)
        {
          *(v268 + 480) = rhs;
          fpfsi_EnqueueEndTimeChangedNotification(v247);
        }

        if ((*(v268 + 332) & 1) != 0 && (!*(v268 + 1024) || (*(v268 + 1484) & 1) != 0 && (time2 = *(v268 + 1472), v460 = *(v268 + 480), CMTimeCompare(&time2, &v460) >= 1)))
        {
          fpfs_BytePumpFn_cold_4(v268);
          v277 = -12863;
        }

        else
        {
          v277 = 0;
        }
      }

      else
      {
        fpfs_CancelGaplessTransitionThatDependsOnTrack(*v268, v270, 1, v272, v273, v274, v275, v276, sampleTimingArraya, numSampleSizeEntriesa, sampleSizeArraya, v371, v373, v374, v376, v378, v380[0], v382, v385, v388, v390, a9, v394, v396, v399, v401, v403, DataLength, v410[0], v410[1], v417, v419);
        v277 = fpfs_AddGAPTrackForExtendedForwardPlaybackEnd(v247, v270);
      }

      if (v277)
      {
        LODWORD(Code) = 0;
        v39 = a14;
        v37 = v430;
        goto LABEL_543;
      }

LABEL_562:
      fpfsi_TrimCachedSamplesFromItem();
      if ((v18 & 0x40) != 0)
      {
        fpfs_BytePumpFn_cold_5(v428, v247);
      }

      v285 = *(v428 + 1576);
      if (v285 && (*(v428 + 1484) & 1) == 0 && v35 && !*(v428 + 1568))
      {
        time2 = **&MEMORY[0x1E6960C70];
        LODWORD(v460.value) = 0;
        v286 = fpsi_TryDateSeekWithSeekID(v247, v285, &v460, &time2, *(v428 + 2216), *(v428 + 2240), 0);
        if (dword_1EAF169F0)
        {
          v397 = v257;
          v425 = v17;
          LODWORD(type.value) = 0;
          v457[0] = OS_LOG_TYPE_DEFAULT;
          v287 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          v288 = type.value;
          v289 = v457[0];
          if (os_log_type_enabled(v287, v457[0]))
          {
            v290 = v288;
          }

          else
          {
            v290 = v288 & 0xFFFFFFFE;
          }

          if (v290)
          {
            if (v417)
            {
              v343 = (CMBaseObjectGetDerivedStorage() + 888);
            }

            else
            {
              v343 = "";
            }

            v433 = v343;
            if (v247)
            {
              v352 = (CMBaseObjectGetDerivedStorage() + 3096);
            }

            else
            {
              v352 = "";
            }

            v353 = *(v428 + 1576);
            if (v286)
            {
              v354 = "proceeding";
            }

            else
            {
              v354 = "failed";
            }

            cf[0] = time2;
            v355 = CMTimeGetSeconds(cf);
            cf[0] = *(v428 + 1544);
            v356 = CMTimeGetSeconds(cf);
            LODWORD(rhs.value) = 136317442;
            *(&rhs.value + 4) = "fpfs_BytePumpFn";
            LOWORD(rhs.flags) = 2048;
            *(&rhs.flags + 2) = v417;
            HIWORD(rhs.epoch) = 2082;
            v442 = v433;
            *v443 = 2048;
            *&v443[2] = v247;
            *&v443[10] = 2082;
            *&v443[12] = v352;
            *&v443[20] = 2114;
            *&v443[22] = v353;
            *&v443[30] = 2080;
            *&v443[32] = v354;
            *&v443[40] = 2048;
            *&v443[42] = v355;
            *&v443[50] = 2048;
            v444 = v356;
            v445 = 1024;
            v446 = v460.value;
            LODWORD(numSampleSizeEntriesa) = 98;
            _os_log_send_and_compose_impl(v290, 0, cf, 128, &dword_1962D5000, v287, v289, "<<<< FigStreamPlayer >>>> %s: [%p|%{public}s] <%p|%{public}s>: Seek to date %{public}@ %s. domainStart = %1.5g, cachedDatePumpTime = %1.5g, err = %d", &rhs, numSampleSizeEntriesa);
          }

          fig_log_call_emit_and_clean_up_after_send_and_compose();
          v17 = v425;
          LOBYTE(v18) = BYTE4(v401);
          v24 = v428;
          v257 = v397;
        }

        if (!v286)
        {
          if (LODWORD(v460.value) && *(v24 + 2216))
          {
            fpfs_SeekDidFail();
          }

          v357 = *(v24 + 1576);
          if (v357)
          {
            CFRelease(v357);
            *(v24 + 1576) = 0;
          }
        }
      }

      fpfs_CheckPrebufferedLevels();
      if (!HIDWORD(v388) || *(v419 + 108) == 0.0 || !*(v410[0] + 8 * v257) || *(v24 + 1540))
      {
        goto LABEL_618;
      }

      memset(&time2, 0, sizeof(time2));
      cf[0] = *(v24 + 1184);
      rhs = *(v24 + 1160);
      CMTimeSubtract(&time2, cf, &rhs);
      memset(&v460, 0, sizeof(v460));
      if (time2.flags)
      {
        v460 = time2;
      }

      else
      {
        fpfs_GetTime(v24, cf);
        *&rhs.value = v435;
        rhs.epoch = v436;
        fpfs_TimeAfterPlayback(v419, cf, &rhs, &v460);
      }

      if (v460.flags)
      {
        v328 = v17;
        if (dword_1EAF169F0)
        {
          v329 = v257;
          LODWORD(type.value) = 0;
          v457[0] = OS_LOG_TYPE_DEFAULT;
          v330 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          v331 = type.value;
          v332 = v457[0];
          if (os_log_type_enabled(v330, v457[0]))
          {
            v333 = v331;
          }

          else
          {
            v333 = v331 & 0xFFFFFFFE;
          }

          if (v333)
          {
            if (v417)
            {
              v334 = (CMBaseObjectGetDerivedStorage() + 888);
            }

            else
            {
              v334 = "";
            }

            if (v247)
            {
              v358 = (CMBaseObjectGetDerivedStorage() + 3096);
            }

            else
            {
              v358 = "";
            }

            cf[0] = v460;
            v359 = CMTimeGetSeconds(cf);
            *&cf[0].value = v435;
            cf[0].epoch = v436;
            v360 = CMTimeGetSeconds(cf);
            LODWORD(rhs.value) = 136316674;
            *(&rhs.value + 4) = "fpfs_BytePumpFn";
            LOWORD(rhs.flags) = 2048;
            *(&rhs.flags + 2) = v417;
            HIWORD(rhs.epoch) = 2082;
            v442 = v334;
            *v443 = 2048;
            *&v443[2] = v247;
            *&v443[10] = 2082;
            *&v443[12] = v358;
            *&v443[20] = 2048;
            *&v443[22] = v359;
            *&v443[30] = 2048;
            *&v443[32] = v360;
            LODWORD(numSampleSizeEntriesa) = 72;
            _os_log_send_and_compose_impl(v333, 0, cf, 128, &dword_1962D5000, v330, v332, "<<<< FigStreamPlayer >>>> %s: [%p|%{public}s] <%p|%{public}s>: iframe request error or invalid iframe segment received. Directly issue a step to pump, from %g duration buffered %g", &rhs, numSampleSizeEntriesa);
          }

          fig_log_call_emit_and_clean_up_after_send_and_compose();
          v257 = v329;
        }

        cf[0] = v460;
        *&rhs.value = v435;
        rhs.epoch = v436;
        Code = fpfs_RequestNextIFrameStepUnlocked(v247, cf, &rhs);
        v17 = v328;
        LOBYTE(v18) = BYTE4(v401);
        v24 = v428;
        if ((v401 & 0x4000000000) == 0)
        {
          goto LABEL_661;
        }
      }

      else
      {
LABEL_618:
        Code = 0;
        if ((v18 & 0x40) == 0)
        {
          goto LABEL_661;
        }
      }

      if (!*(v24 + 2144))
      {
        *(v24 + 2144) = 1;
        fpfs_EnqueueNotification(v417, @"NewAccessLogEntry", v247, 0);
      }

      if (dword_1EAF169F0)
      {
        v308 = v17;
        LODWORD(time2.value) = 0;
        LOBYTE(v460.value) = 0;
        v309 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        v310 = time2.value;
        v311 = LOBYTE(v460.value);
        if (os_log_type_enabled(v309, v460.value))
        {
          v312 = v310;
        }

        else
        {
          v312 = v310 & 0xFFFFFFFE;
        }

        if (v312)
        {
          if (v417)
          {
            v313 = (CMBaseObjectGetDerivedStorage() + 888);
          }

          else
          {
            v313 = "";
          }

          v314 = v257;
          if (v247)
          {
            v315 = (CMBaseObjectGetDerivedStorage() + 3096);
          }

          else
          {
            v315 = "";
          }

          *&cf[0].value = v435;
          cf[0].epoch = v436;
          v316 = CMTimeGetSeconds(cf);
          fpfs_GetTime(v428, cf);
          v317 = CMTimeGetSeconds(cf);
          LODWORD(rhs.value) = 136316930;
          *(&rhs.value + 4) = "fpfs_BytePumpFn";
          LOWORD(rhs.flags) = 2048;
          *(&rhs.flags + 2) = v417;
          HIWORD(rhs.epoch) = 2082;
          v442 = v313;
          *v443 = 2048;
          *&v443[2] = v247;
          *&v443[10] = 2082;
          *&v443[12] = v315;
          *&v443[20] = 1024;
          *&v443[22] = v308;
          *&v443[26] = 2048;
          *&v443[28] = v316;
          *&v443[36] = 2048;
          *&v443[38] = v317;
          LODWORD(numSampleSizeEntriesa) = 78;
          _os_log_send_and_compose_impl(v312, 0, cf, 128, &dword_1962D5000, v309, v311, "<<<< FigStreamPlayer >>>> %s: [%p|%{public}s] <%p|%{public}s>: substream %d has received %g, now at %f", &rhs, numSampleSizeEntriesa);
          v257 = v314;
        }

        fig_log_call_emit_and_clean_up_after_send_and_compose();
        v17 = v308;
        v24 = v428;
      }

      if ((*(v24 + 1436) & 1) != 0 && *(v24 + 466) && GetCurrentManifold(v24, v17, v257))
      {
        v318 = GetCurrentManifold(v24, v17, v257);
        FigManifoldFlush(v318);
      }

      v319 = *(CMBaseObjectGetDerivedStorage() + 1024);
      if (v319)
      {
        v320 = *MEMORY[0x1E6960538];
        v321 = *MEMORY[0x1E695E4D0];
        do
        {
          if (!*(v319 + 198) && *(v319 + 196) == v17 && !*(v319 + 200))
          {
            cf[0].value = 0;
            v322 = FigGetAllocatorForMedia();
            if (!CMSampleBufferCreate(v322, 0, 1u, 0, 0, 0, 0, 0, 0, 0, 0, cf))
            {
              CMSetAttachment(cf[0].value, v320, v321, 0);
              CMBufferQueueEnqueue(*(v319 + 96), cf[0].value);
              CFRelease(cf[0].value);
            }
          }

          v319 = *(v319 + 24);
        }

        while (v319);
      }

      v24 = v428;
      LOBYTE(v18) = BYTE4(v401);
      if ((*(v428 + 1436) & 1) != 0 && *(v428 + 466))
      {
        cf[0] = *(v428 + 1424);
        fpfsi_applyTimeToPausePlayback(v247, &cf[0].value, 1, 1, 0);
      }

      if ((*(v428 + 1412) & 1) != 0 && *(v428 + 466))
      {
        cf[0] = *(v428 + 1400);
        fpfsi_applyTimeToPauseBuffering(v247, &cf[0].value, 1);
      }

      fpfsi_RTCReportingUpdateItemStats(v247);
      if (*(v428 + 1736))
      {
        v323 = *(v428 + 1024);
        if (v323)
        {
          while (*(v323 + 48) != 1986618469 || *(v323 + 64) != *(v394 + 16 * *(v323 + 196)) || *(v323 + 168) != 6)
          {
            v323 = *(v323 + 24);
            if (!v323)
            {
              goto LABEL_659;
            }
          }

          v18 = v17;
          SwitchOptions = GetSwitchOptions(v428, 0);
          memset(&time2, 0, sizeof(time2));
          if (dword_1EAF169F0)
          {
            LODWORD(v460.value) = 0;
            LOBYTE(type.value) = 0;
            v345 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            v346 = v460.value;
            v347 = LOBYTE(type.value);
            if (os_log_type_enabled(v345, type.value))
            {
              v348 = v346;
            }

            else
            {
              v348 = v346 & 0xFFFFFFFE;
            }

            if (v348)
            {
              if (v417)
              {
                v349 = (CMBaseObjectGetDerivedStorage() + 888);
              }

              else
              {
                v349 = "";
              }

              if (v247)
              {
                v361 = (CMBaseObjectGetDerivedStorage() + 3096);
              }

              else
              {
                v361 = "";
              }

              LODWORD(rhs.value) = 136316162;
              *(&rhs.value + 4) = "fpfs_BytePumpFn";
              LOWORD(rhs.flags) = 2048;
              *(&rhs.flags + 2) = v417;
              HIWORD(rhs.epoch) = 2082;
              v442 = v349;
              *v443 = 2048;
              *&v443[2] = v247;
              *&v443[10] = 2082;
              *&v443[12] = v361;
              LODWORD(numSampleSizeEntriesa) = 52;
              _os_log_send_and_compose_impl(v348, 0, cf, 128, &dword_1962D5000, v345, v347, "<<<< FigStreamPlayer >>>> %s: [%p|%{public}s] <%p|%{public}s>: attempt progressive switch up", &rhs, numSampleSizeEntriesa);
            }

            fig_log_call_emit_and_clean_up_after_send_and_compose();
          }

          fpfs_GetItemBufferedDuration(v247, &time2, cf, 0);
          v24 = v428;
          v362 = *(v428 + 1736);
          rhs = time2;
          if (!fpfs_SetAlternateWithContext(v417, v247, v362, SwitchOptions, &rhs, cf, 0, 0, 2u))
          {
            v363 = *(v428 + 1736);
            if (v363)
            {
              CFRelease(v363);
              *(v428 + 1736) = 0;
            }
          }

          LODWORD(v17) = v18;
          LOBYTE(v18) = BYTE4(v401);
          if (!a13)
          {
            goto LABEL_661;
          }

          goto LABEL_660;
        }
      }

LABEL_659:
      if (a13)
      {
LABEL_660:
        fpfs_GetTime(v24, &rhs);
        time2 = *(v24 + 1160);
        CMTimeAdd(cf, &rhs, &time2);
        *a13 = cf[0];
      }

LABEL_661:
      fpfsi_MakeNextItemReadyForInspectionIfItemEndedOrBeyondFwdEnd(v247);
      v39 = a14;
      v35 = v385;
      v36 = DataLength;
      v37 = v430;
      goto LABEL_662;
    }

    v173 = v123;
    cf[0] = **&MEMORY[0x1E6960C70];
    v174 = v438;
    fpfs_GetItemBufferedDuration(v438, cf, 0, 0);
    rhs = cf[0];
    time2 = **&MEMORY[0x1E6960CC0];
    v175 = CMTimeCompare(&rhs, &time2);
    v176 = *(v419 + 688);
    v177 = *(v419 + 80);
    Count = CFArrayGetCount(*(v419 + 72));
    if (v177)
    {
      v179 = Count + 1;
    }

    else
    {
      v179 = Count;
    }

    if (FigPlaybackGetEffectiveActionAtEnd(v176, v179) || v175 >= 1)
    {
      v430 = 1;
      LOWORD(v18) = WORD2(v401);
      v123 = v173;
      goto LABEL_484;
    }

    fpfs_StopPlayingItemWithOSStatus(v419, v174, 0);
    LODWORD(Code) = 0;
    v37 = 1;
    LOBYTE(v18) = BYTE4(v401);
    v24 = v428;
    v35 = v385;
LABEL_47:
    v39 = a14;
    if (!Code)
    {
      goto LABEL_544;
    }

    goto LABEL_748;
  }

  if (!theBuffer && !v18)
  {
    v430 = 1;
    goto LABEL_484;
  }

  v170 = v123;
  v171 = (v18 >> 6) & 4 | ((v18 & 0x10) >> 4) | (v18 >> 5) & 2;
  if (!theBuffer && !v171)
  {
    v430 = 1;
    v123 = v170;
    goto LABEL_484;
  }

  v172 = *(v122 + 1024);
  if (v172)
  {
    while (*(v172 + 196) != v17 || *(v172 + 64) != *v410[0])
    {
      v172 = *(v172 + 24);
      if (!v172)
      {
        goto LABEL_418;
      }
    }

    if ((v18 & 0x8100) == 0x100)
    {
      *(v172 + 204) = 0;
    }
  }

LABEL_418:
  fpfs_prepareDataForInject(theBuffer);
  v224 = *(v410[0] + 8 * v162);
  v225 = *(*(CMBaseObjectGetVTable() + 16) + 8);
  if (v225)
  {
    Code = v225(v224, a7, v171, theBuffer);
  }

  else
  {
    Code = 4294954514;
  }

  v24 = v428;
  v123 = v170;
  if (v403)
  {
    if (*(v394 + 16 * v33) == v403)
    {
      v123 = 0;
    }

    else
    {
      v123 = v170;
    }
  }

  if (!Code)
  {
    v430 = 0;
    goto LABEL_484;
  }

  if (*(v410[0] + 8 * v123))
  {
    v226 = v123;
    LODWORD(time2.value) = 0;
    LOBYTE(v460.value) = 0;
    v227 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    v228 = time2.value;
    v229 = LOBYTE(v460.value);
    if (os_log_type_enabled(v227, v460.value))
    {
      v230 = v228;
    }

    else
    {
      v230 = v228 & 0xFFFFFFFE;
    }

    if (v230)
    {
      v231 = v437;
      if (v437)
      {
        v232 = (CMBaseObjectGetDerivedStorage() + 888);
      }

      else
      {
        v232 = "";
      }

      v297 = v438;
      if (v438)
      {
        v298 = (CMBaseObjectGetDerivedStorage() + 3096);
      }

      else
      {
        v298 = "";
      }

      LODWORD(rhs.value) = 136316930;
      *(&rhs.value + 4) = "fpfs_BytePumpFn";
      LOWORD(rhs.flags) = 2048;
      *(&rhs.flags + 2) = v231;
      HIWORD(rhs.epoch) = 2082;
      v442 = v232;
      *v443 = 2048;
      *&v443[2] = v297;
      *&v443[10] = 2082;
      *&v443[12] = v298;
      *&v443[20] = 1024;
      *&v443[22] = Code;
      *&v443[26] = 1024;
      *&v443[28] = v17;
      *&v443[32] = 1024;
      *&v443[34] = v226;
      LODWORD(numSampleSizeEntriesa) = 70;
      _os_log_send_and_compose_impl(v230, 0, cf, 128, &dword_1962D5000, v227, v229, "<<<< FigStreamPlayer >>>> %s: [%p|%{public}s] <%p|%{public}s>: error %d from manifold-substream %d role %d", &rhs, numSampleSizeEntriesa);
    }

    v37 = 1;
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    LOBYTE(v18) = BYTE4(v401);
    v24 = v428;
    v38 = v419;
    v39 = a14;
    v35 = v385;
    v36 = DataLength;
    goto LABEL_24;
  }

  if (dword_1EAF169F0)
  {
    v233 = v123;
    LODWORD(time2.value) = 0;
    LOBYTE(v460.value) = 0;
    v234 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    v235 = time2.value;
    v236 = LOBYTE(v460.value);
    if (os_log_type_enabled(v234, v460.value))
    {
      v237 = v235;
    }

    else
    {
      v237 = v235 & 0xFFFFFFFE;
    }

    if (v237)
    {
      v238 = v437;
      if (v437)
      {
        v239 = (CMBaseObjectGetDerivedStorage() + 888);
      }

      else
      {
        v239 = "";
      }

      v341 = v438;
      if (v438)
      {
        v342 = (CMBaseObjectGetDerivedStorage() + 3096);
      }

      else
      {
        v342 = "";
      }

      LODWORD(rhs.value) = 136316930;
      *(&rhs.value + 4) = "fpfs_BytePumpFn";
      LOWORD(rhs.flags) = 2048;
      *(&rhs.flags + 2) = v238;
      HIWORD(rhs.epoch) = 2082;
      v442 = v239;
      *v443 = 2048;
      *&v443[2] = v341;
      *&v443[10] = 2082;
      *&v443[12] = v342;
      *&v443[20] = 1024;
      *&v443[22] = Code;
      *&v443[26] = 1024;
      *&v443[28] = v17;
      *&v443[32] = 1024;
      *&v443[34] = v233;
      LODWORD(numSampleSizeEntriesa) = 70;
      _os_log_send_and_compose_impl(v237, 0, cf, 128, &dword_1962D5000, v234, v236, "<<<< FigStreamPlayer >>>> %s: [%p|%{public}s] <%p|%{public}s>: error %d from manifold-substream %d role %d ignored since manifold is gone after injecting", &rhs, numSampleSizeEntriesa);
    }

    v37 = 1;
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    LODWORD(Code) = 0;
    LOBYTE(v18) = BYTE4(v401);
    v24 = v428;
  }

  else
  {
    LODWORD(Code) = 0;
    v37 = 1;
  }

  v35 = v385;
  v39 = a14;
  v36 = DataLength;
LABEL_25:
  if (v36)
  {
    v40 = *(v24 + 2568);
    if (v40)
    {
      v41 = *(*(CMBaseObjectGetVTable() + 16) + 32);
      if (v41)
      {
        v41(v40, @"playerStats", 0x1F0B42738, v36);
      }
    }

    goto LABEL_44;
  }

LABEL_543:
  if (Code)
  {
    goto LABEL_748;
  }

LABEL_544:
  if ((v18 & 0x40) == 0 || v17 && (*(v24 + 1072) & 1) != 0 || (v278 = *(v24 + 96)) == 0)
  {
LABEL_748:
    fpfs_UnlockAndPostNotificationsWithCaller(v437);
    v279 = 0;
    goto LABEL_749;
  }

  v279 = CFRetain(v278);
  fpfs_UnlockAndPostNotificationsWithCaller(v437);
  if (v279 && FigAlternatePlaybackBitrateMonitorTryToSwitchUp(v279))
  {
    v37 |= 2u;
  }

LABEL_749:
  if (v39)
  {
    *v39 = v37;
  }

  if (v279)
  {
    CFRelease(v279);
  }

  if (v35)
  {
    CFRelease(v35);
  }

LABEL_755:
  if (v438)
  {
    CFRelease(v438);
  }

  if (v437)
  {
    CFRelease(v437);
  }
}

void fpfs_FrameStepHitEnd(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  TrackOfType = fpfs_LastTrackOfType(a1, 1986618469, 0);
  memset(v9, 0, 24);
  fpfsi_GetDuration(a1, &v9[0].value);
  if (v4 | ~v9[0].flags & 0x11)
  {
    v5 = TrackOfType == 0;
  }

  else
  {
    v5 = 1;
  }

  if (!v5)
  {
    if (dword_1EAF169F0)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    v7 = CMBaseObjectGetDerivedStorage();
    if (*(v7 + 471) != 1)
    {
      *(v7 + 471) = 1;
    }

    fpfs_StopFeedingTrack(TrackOfType, 0, 1);
    if (*(DerivedStorage + 840) > 0.0 && (*(DerivedStorage + 492) & 1) == 0)
    {
      v8 = *(TrackOfType + 232);
      *(DerivedStorage + 496) = *(TrackOfType + 248);
      *(DerivedStorage + 480) = v8;
      fpfsi_EnqueueEndTimeChangedNotification(a1);
    }

    fpfs_GetTime(DerivedStorage, v9);
    if (fpfs_TrackIsStalled(TrackOfType, v9))
    {
      fpfs_EndTrackPlayback(TrackOfType);
    }
  }
}