void segPumpSetTargetDurationAndType(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  if (v4 != FigMediaPlaylistGetTargetDuration(a2))
  {
    TargetDuration = FigMediaPlaylistGetTargetDuration(a2);
    *(a1 + 8) = TargetDuration;
    if (*(a1 + 9760))
    {
      valuePtr = (2 * TargetDuration);
      v6 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberDoubleType, &valuePtr);
      v7 = *(a1 + 9760);
      v8 = *(*(CMBaseObjectGetVTable() + 8) + 56);
      if (v8)
      {
        v8(v7, @"AfmfpbProperty_SwitchMinDuration", v6);
      }

      if (v6)
      {
        CFRelease(v6);
      }
    }

    *(a1 + 24) = FigMediaPlaylistGetPlaylistType(a2);
    v9 = *(a1 + 8184);
    if (v9 == 0.0)
    {
      v10 = (*(a1 + 8) * *(a1 + 8160));
      if (v9 != v10)
      {
        *(a1 + 8184) = v10;
        segPumpReadyNotification(a1, @"FBP_RecommendedPrebufferReservationChanged", 0);
      }
    }

    v11 = *(a1 + 8176);
    if (v11 > 0.0)
    {
      segPumpSetExtraHoldbackFromClient(a1, v11);
    }
  }
}

uint64_t segPumpCalculateDiscoDomainOffset(uint64_t a1, void *a2, uint64_t *a3)
{
  v12[0] = 0;
  v12[1] = v12;
  if (a2[44] >= 1 && a2[42])
  {
    segPumpCreateDiscoInfoList();
    if (v6)
    {
      v7 = v6;
      segPumpFreeDiscoQueue(v12);
      return v7;
    }

    *a3 = 0;
    *a3 = *(**(a2[43] + 8) + 32) + 1;
    segPumpFreeDiscoQueue(v12);
  }

  else if (!segPumpCalculateDiscoDomainOffset_cold_1())
  {
    return v13;
  }

  if (*(a1 + 392) == a2)
  {
    v8 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberCFIndexType, a2 + 39);
    v9 = *(a1 + 9760);
    v10 = *(*(CMBaseObjectGetVTable() + 8) + 56);
    if (v10)
    {
      v7 = v10(v9, @"AfmfpbProperty_MainStreamDiscoDomainOffset", v8);
      if (!v8)
      {
        return v7;
      }
    }

    else
    {
      v7 = 4294954514;
      if (!v8)
      {
        return v7;
      }
    }

    CFRelease(v8);
    return v7;
  }

  return 0;
}

void segPumpSetStartingOffset(const void *a1, uint64_t a2, uint64_t *a3)
{
  v88 = *MEMORY[0x1E69E9840];
  MinimumPrebufferReservation = segPumpGetMinimumPrebufferReservation(a2, a3[7]);
  v7 = *(a2 + 8176);
  v8 = a3[29];
  if (v8)
  {
    v9 = CFRetain(v8);
  }

  else
  {
    v9 = 0;
  }

  *(a3 + 866) = 0;
  segPumpUpdateCMCDStreamType(a2);
  if (*(a3 + 864))
  {
    v10 = *(a3 + 115);
    if (v10 != 0.0)
    {
      if (v9)
      {
        CFRelease(v9);
        v10 = *(a3 + 115);
      }

      v9 = CFDateCreate(*(a2 + 56), v10);
    }
  }

  v11 = MinimumPrebufferReservation + v7;
  if (v9)
  {
    memset(&v74, 0, sizeof(v74));
    memset(&type, 0, sizeof(type));
    v72 = 0.0;
    if (!segPumpGetTimeRangeForDateWithSegmentOffset(a1, a3[7], v9, &v74, &type, &v72))
    {
      *(a3 + 15) = v72 - *(a3 + 11);
      segPumpSyncTimeRolledPastToExistingStream(a1, a2, a3, v9);
      if (dword_1EAF16A30)
      {
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
LABEL_31:
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }
    }
  }

  else if (a3[30] && !*(a2 + 8218))
  {
    Current = CFAbsoluteTimeGetCurrent();
    v13 = MEMORY[0x19A8CCD90](a3[30]);
    if (dword_1EAF16A30)
    {
      LODWORD(v74.value) = 0;
      LOBYTE(type.value) = 0;
      v14 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    if (Current <= v13)
    {
      goto LABEL_30;
    }

    v16 = Current - v13;
    v17 = *(a3 + 12);
    if (v16 > v17)
    {
      LODWORD(v74.value) = 0;
      LOBYTE(type.value) = 0;
      v18 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
      a3[15] = 0x3F847AE147AE147BLL;
      goto LABEL_32;
    }

    v19 = dword_1EAF16A30;
    if (!*(a3 + 857) && v16 < v11)
    {
      if (v11 >= v17)
      {
        v16 = *(a3 + 12);
      }

      else
      {
        v16 = v11;
      }

      if (!dword_1EAF16A30)
      {
        *(a3 + 15) = v17 - v16;
        goto LABEL_32;
      }

      LODWORD(v74.value) = 0;
      LOBYTE(type.value) = 0;
      v20 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
      v19 = dword_1EAF16A30;
      v17 = *(a3 + 12);
    }

    *(a3 + 15) = v17 - v16;
    if (v19)
    {
LABEL_30:
      LODWORD(v74.value) = 0;
      LOBYTE(type.value) = 0;
      v21 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT);
      goto LABEL_31;
    }
  }

LABEL_32:
  if (*(a3 + 15) < 0.0)
  {
    if (!*(a2 + 8869) || *(a2 + 8870))
    {
      if (!*(a2 + 8218))
      {
        *(a3 + 112) = 1;
      }

      goto LABEL_48;
    }

    v29 = *(a2 + 8872);
    *(a3 + 15) = v29;
    if (v29 >= 0.0)
    {
      if (fabs(v29) >= 0.00000011920929)
      {
LABEL_89:
        if (!*(a2 + 8218) && v29 > *(a3 + 12) - v11)
        {
          segPumpSetStartingOffset_cold_1(a3);
        }

        goto LABEL_48;
      }

      v29 = 0.01;
    }

    else
    {
      v29 = v29 + *(a3 + 12);
    }

    *(a3 + 15) = v29;
    goto LABEL_89;
  }

  if (dword_1EAF16A30)
  {
    LODWORD(v74.value) = 0;
    LOBYTE(type.value) = 0;
    v22 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    value = v74.value;
    value_low = LOBYTE(type.value);
    if (os_log_type_enabled(v22, type.value))
    {
      v25 = value;
    }

    else
    {
      v25 = value & 0xFFFFFFFE;
    }

    if (v25)
    {
      v26 = *(a2 + 8944);
      if (!v26)
      {
        v26 = &stru_1F0B1AFB8;
      }

      v27 = *a3;
      v28 = a3[15];
      v75 = 136315906;
      v76 = "segPumpSetStartingOffset";
      v77 = 2114;
      v78 = v26;
      v79 = 2048;
      v80 = v27;
      v81 = 2048;
      v82 = v28;
      _os_log_send_and_compose_impl(v25, 0, v87, 128, &dword_1962D5000, v22, value_low, "<SEGPUMP> %s: %{public}@:%ld: start offset is %g", &v75, 42);
    }

    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

LABEL_48:
  if (*(a3 + 112) && (a3[20] & 0xFFFFFFFE) == 4)
  {
    if (v11 * 0.95 >= FigMediaPlaylistGetPlaylistActiveDurationSecs(a3[7]))
    {
      a3[15] = 0;
      if (dword_1EAF16A30)
      {
        LODWORD(v74.value) = 0;
        LOBYTE(type.value) = 0;
        v38 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        v39 = v74.value;
        v40 = LOBYTE(type.value);
        if (os_log_type_enabled(v38, type.value))
        {
          v41 = v39;
        }

        else
        {
          v41 = v39 & 0xFFFFFFFE;
        }

        if (v41)
        {
          if (*(a2 + 8944))
          {
            v42 = *(a2 + 8944);
          }

          else
          {
            v42 = &stru_1F0B1AFB8;
          }

          v43 = *a3;
          v44 = a3[15];
          PlaylistActiveDurationSecs = FigMediaPlaylistGetPlaylistActiveDurationSecs(a3[7]);
          v75 = 136316418;
          v76 = "segPumpSetStartingOffset";
          v77 = 2114;
          v78 = v42;
          v79 = 2048;
          v80 = v43;
          v81 = 2048;
          v82 = v44;
          v83 = 2048;
          v84 = v11 * 0.95;
          v85 = 2048;
          v86 = PlaylistActiveDurationSecs;
          LODWORD(v71) = 62;
          _os_log_send_and_compose_impl(v41, 0, v87, 128, &dword_1962D5000, v38, v40, "<SEGPUMP> %s: %{public}@:%ld: live start at %g sec.  Min reserve %g too big for queue duration %g", &v75, v71);
        }

        goto LABEL_69;
      }
    }

    else
    {
      *(a3 + 15) = FigMediaPlaylistGetPlaylistActiveDurationSecs(a3[7]) - v11 * 0.95;
      if (dword_1EAF16A30)
      {
        LODWORD(v74.value) = 0;
        LOBYTE(type.value) = 0;
        v30 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        v31 = v74.value;
        v32 = LOBYTE(type.value);
        if (os_log_type_enabled(v30, type.value))
        {
          v33 = v31;
        }

        else
        {
          v33 = v31 & 0xFFFFFFFE;
        }

        if (v33)
        {
          if (*(a2 + 8944))
          {
            v34 = *(a2 + 8944);
          }

          else
          {
            v34 = &stru_1F0B1AFB8;
          }

          v35 = *a3;
          v36 = a3[15];
          v37 = FigMediaPlaylistGetPlaylistActiveDurationSecs(a3[7]);
          v75 = 136316162;
          v76 = "segPumpSetStartingOffset";
          v77 = 2114;
          v78 = v34;
          v79 = 2048;
          v80 = v35;
          v81 = 2048;
          v82 = v36;
          v83 = 2048;
          v84 = v37;
          LODWORD(v71) = 52;
          _os_log_send_and_compose_impl(v33, 0, v87, 128, &dword_1962D5000, v30, v32, "<SEGPUMP> %s: %{public}@:%ld: live start at %g sec, playlist duration %g", &v75, v71);
        }

LABEL_69:
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }
    }

    *(a3 + 856) = 1;
    *(a3 + 112) = 0;
  }

  if (FigMediaPlaylistGetDateStampCount(a3[7]) >= 1 && (a3[20] & 0xFFFFFFFE) == 4)
  {
    DateStamp = 0;
    v47 = 0;
    v48 = *(a3 + 15) + *(a3 + 11);
    v49 = 0.0;
    while (1)
    {
      MediaSegmentSpecifiers = FigMediaPlaylistGetMediaSegmentSpecifiers(a3[7]);
      if (MediaSegmentSpecifiers)
      {
        MediaSegmentSpecifiers = CFArrayGetCount(MediaSegmentSpecifiers);
      }

      if (v47 >= MediaSegmentSpecifiers)
      {
        break;
      }

      v51 = FigMediaPlaylistGetMediaSegmentSpecifiers(a3[7]);
      ValueAtIndex = CFArrayGetValueAtIndex(v51, v47);
      MediaFilePrivateData = segPumpGetMediaFilePrivateData(ValueAtIndex, v53, v54, v55, v56, v57, v58, v59);
      v61 = MediaFilePrivateData;
      if (DateStamp && MediaFilePrivateData[4] >= v48)
      {
        goto LABEL_83;
      }

      if (FigMediaSegmentSpecifierGetDateStamp(ValueAtIndex))
      {
        DateStamp = FigMediaSegmentSpecifierGetDateStamp(ValueAtIndex);
        v49 = v61[4];
      }

      ++v47;
    }

    if (!DateStamp)
    {
      goto LABEL_104;
    }

LABEL_83:
    AllocatorForMedia = FigGetAllocatorForMedia();
    v63 = MEMORY[0x19A8CCD90](DateStamp);
    v64 = CFDateCreate(AllocatorForMedia, v48 + v63 - v49);
    v65 = v64;
    if (!a3[29])
    {
      if (v64)
      {
        v66 = CFRetain(v64);
      }

      else
      {
        v66 = 0;
      }

      a3[29] = v66;
    }

    v67 = 0;
    v68 = a2 + 392;
    do
    {
      v69 = *(v68 + v67);
      if (*(v69 + 120) < 0.0 && !*(v69 + 232))
      {
        if (v65)
        {
          v70 = CFRetain(v65);
          v69 = *(v68 + v67);
        }

        else
        {
          v70 = 0;
        }

        *(v69 + 232) = v70;
      }

      v67 += 16;
    }

    while (v67 != 48);
    if (v65)
    {
      CFRelease(v65);
    }
  }

LABEL_104:
  a3[16] = 0xBFF0000000000000;
  if (v9)
  {
    CFRelease(v9);
  }
}

uint64_t segPumpStreamHasPreloadMapHint(uint64_t a1)
{
  result = *(a1 + 56);
  if (result)
  {
    result = FigMediaPlaylistGetPreloadMapHint(result);
    if (result)
    {
      PreloadMapHint = FigMediaPlaylistGetPreloadMapHint(*(a1 + 56));
      return FigMediaSegmentSpecifierIsReadInCurrent(PreloadMapHint) != 0;
    }
  }

  return result;
}

uint64_t segPumpRealizeMapPreload(_BYTE *a1, void *a2)
{
  if (segPumpShouldDoSegmentReadAheads(a1))
  {
    v3 = 0;
    do
    {
      MapSegmentSpecifiers = FigMediaPlaylistGetMapSegmentSpecifiers(a2[7]);
      if (MapSegmentSpecifiers)
      {
        MapSegmentSpecifiers = CFArrayGetCount(MapSegmentSpecifiers);
      }

      if (v3 >= MapSegmentSpecifiers)
      {
        return 0;
      }

      v5 = FigMediaPlaylistGetMapSegmentSpecifiers(a2[7]);
      ValueAtIndex = CFArrayGetValueAtIndex(v5, v3++);
    }

    while (!segPumpStreamHasPreloadConnectionForMap(a2, ValueAtIndex, v7, v8, v9, v10, v11, v12));
    if (!ValueAtIndex)
    {
      return 0;
    }

    v13 = a2[97];
    if (v13 < 1)
    {
      return 0;
    }

    v14 = 0;
    while (*(a2[96] + 8 * v14))
    {
      result = 0;
      if (v13 == ++v14)
      {
        return result;
      }
    }

    v16 = a2[100];
    v17 = *(v16 + 8);
    *(v16 + 8) = ValueAtIndex;
    CFRetain(ValueAtIndex);
    if (v17)
    {
      CFRelease(v17);
    }

    result = 0;
    *(a2[96] + 8 * v14) = a2[100];
    a2[100] = 0;
  }

  else
  {
    segPumpRealizeMapPreload_cold_1(&v18);
    return v18;
  }

  return result;
}

void segPumpReconcileGapRenditionReports(CFTypeRef *a1, CFArrayRef theArray)
{
  v4 = 0;
  v5 = 0;
  v6 = MEMORY[0x1E695E9C0];
  if (!theArray)
  {
    goto LABEL_3;
  }

LABEL_2:
  for (i = CFArrayGetCount(theArray); v5 < i; i = 0)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(theArray, v5);
    if (FigRenditionReportSpecifierIsGapAtLive(ValueAtIndex))
    {
      if (!v4)
      {
        v9 = v6[1];
        *&v19.version = *v6;
        *&v19.release = v9;
        v19.equal = segPumpRenditionReportURLsAreEqual;
        AllocatorForMedia = FigGetAllocatorForMedia();
        v4 = CFArrayCreateMutable(AllocatorForMedia, 0, &v19);
      }

      URL = FigRenditionReportSpecifierGetURL(ValueAtIndex);
      CFArrayAppendValue(v4, URL);
    }

    ++v5;
    if (theArray)
    {
      goto LABEL_2;
    }

LABEL_3:
    ;
  }

  if (v4 && !a1[1218])
  {
    v12 = FigGetAllocatorForMedia();
    if (!FigAlternateFilterMonitorCreateForRenditionDenyList(v12, segPumpRenditionReportURLsAreEqual, a1 + 1218))
    {
      v13 = a1[1218];
      v14 = a1[1042];
      v15 = *(*(CMBaseObjectGetVTable() + 8) + 56);
      if (v15)
      {
        v15(v13, @"AlternateFilterMonitorProperty_SelectedMedia", v14);
      }

      v16 = a1[1216];
      if (v16)
      {
        if (!FigAlternateSelectionBossAddMonitor(v16, a1[1218]))
        {
          goto LABEL_18;
        }
      }

      else
      {
        segPumpReconcileGapRenditionReports_cold_1();
      }
    }

LABEL_22:
    CFRelease(v4);
    return;
  }

LABEL_18:
  v17 = a1[1218];
  if (v17)
  {
    v18 = *(*(CMBaseObjectGetVTable() + 16) + 32);
    if (v18)
    {
      v18(v17, v4);
    }
  }

  if (v4)
  {
    goto LABEL_22;
  }
}

uint64_t segPumpSetEstimatedGOPInterval(uint64_t a1)
{
  if (!*(a1 + 9760))
  {
    return 0;
  }

  if (!*(a1 + 337))
  {
    return 0;
  }

  EstIndependentInterval = segPumpGetEstIndependentInterval(a1);
  v2 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberDoubleType, &EstIndependentInterval);
  if (v2)
  {
    v3 = v2;
    v4 = *(a1 + 9760);
    v5 = *(*(CMBaseObjectGetVTable() + 8) + 56);
    if (v5)
    {
      v5(v4, @"AfmfpbProperty_EstimatedGOPInterval", v3);
    }

    CFRelease(v3);
    return 0;
  }

  segPumpSetEstimatedGOPInterval_cold_1(&v8);
  return v8;
}

uint64_t segPumpSendDateMapping(uint64_t a1, uint64_t a2, unsigned __int8 *a3, __n128 a4)
{
  DateStampCount = FigMediaPlaylistGetDateStampCount(*(a3 + 7));
  if (DateStampCount)
  {
    if (DateStampCount > 0x666666666666666)
    {
      return 0;
    }

    DateStampCount *= 40;
  }

  v8 = malloc_type_malloc(DateStampCount, 0x1060040E10E8238uLL);
  if (!v8)
  {
    return 0;
  }

  v9 = v8;
  v10 = *(a3 + 11);
  FigMediaPlaylistGetMediaSegmentSpecifiers(*(a3 + 7));
  FirstValue = FigCFArrayGetFirstValue();
  if (FirstValue)
  {
    NextSegment = FirstValue;
    v13 = 0;
    do
    {
      if (v13 >= FigMediaPlaylistGetDateStampCount(*(a3 + 7)))
      {
        break;
      }

      if (FigMediaSegmentSpecifierGetDateStamp(NextSegment))
      {
        DateStamp = FigMediaSegmentSpecifierGetDateStamp(NextSegment);
        v15 = &v9[5 * v13];
        v15[3] = CFRetain(DateStamp);
        CMTimeMakeWithSeconds(&v27, v10, 90000);
        v16 = *&v27.value;
        v15[2] = v27.epoch;
        *v15 = v16;
        v15[4] = FigMediaPlaylistUtilityGetDiscontinuityDomainForSegment(*(a3 + 39), NextSegment);
        ++v13;
      }

      v10 = v10 + FigMediaSegmentSpecifierGetTimeInSeconds(NextSegment);
      NextSegment = FigMediaSegmentSpecifierGetNextSegment(NextSegment);
    }

    while (NextSegment);
  }

  else
  {
    v13 = 0;
  }

  v18 = *(a2 + 176);
  v19 = *a3;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v21 = *(DerivedStorage + 168);
  if (!v21)
  {
LABEL_22:
    v17 = 0;
    v24 = 1;
    goto LABEL_23;
  }

  v22 = *(DerivedStorage + 16 * v19 + 392);
  v23 = *(v22 + 880);
  if (v18)
  {
    CFRetain(v18);
  }

  FigRetainProxyUnlockAll();
  v21(a1, v18, 0, v13, v9);
  if (v18)
  {
    CFRelease(v18);
  }

  FigRetainProxyRelock();
  if (!FigRetainProxyIsInvalidated())
  {
    if (v23 != *(v22 + 880))
    {
      v24 = 0;
      v17 = 4294951670;
      goto LABEL_23;
    }

    goto LABEL_22;
  }

  v24 = 0;
  v17 = 4294954413;
LABEL_23:
  if (v13 >= 1)
  {
    v25 = v9 + 3;
    do
    {
      if (*v25)
      {
        CFRelease(*v25);
      }

      v25 += 5;
      --v13;
    }

    while (v13);
  }

  free(v9);
  if (v24)
  {
    v17 = 0;
    *(a2 + 8221) = 1;
  }

  return v17;
}

uint64_t segPumpUpdateNetworkCostHasEndTag(uint64_t result)
{
  v1 = *(result + 8656);
  if (v1)
  {
    v2 = (*(result + 8218) ? MEMORY[0x1E695E4D0] : MEMORY[0x1E695E4C0]);
    VTable = CMBaseObjectGetVTable();
    v4 = *(VTable + 8);
    result = VTable + 8;
    v5 = *(v4 + 56);
    if (v5)
    {
      v6 = *v2;

      return v5(v1, 0x1F0B5F7B8, v6);
    }
  }

  return result;
}

uint64_t segPumpEnsureMediaSegmentURLs(const void *a1, const __CFURL *a2, const __CFURL *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  MediaFilePrivateData = segPumpGetMediaFilePrivateData(a1, a2, a3, a4, a5, a6, a7, a8);
  URLString = FigMediaSegmentSpecifierGetURLString(a1);

  return FigStreamingPlaylistEnsureMediaURL(URLString, a2, a3, MediaFilePrivateData + 2, MediaFilePrivateData + 3);
}

uint64_t segPumpMediaConnectionIncludesMedia(uint64_t a1, uint64_t a2, const void *a3)
{
  result = segPumpMediaConnectionIsActive(a2);
  if (result)
  {
    v15 = *(a1 + 16);
    v14 = *(a1 + 24);
    MediaFilePrivateData = segPumpGetMediaFilePrivateData(a3, v7, v8, v9, v10, v11, v12, v13);
    segPumpEnsureMediaSegmentURLs(a3, v15, v14, v17, v18, v19, v20, v21);
    result = FigCFHTTPCompareURLs(MediaFilePrivateData[2], *(a2 + 168));
    if (result)
    {
      return segPumpMediaConnectionRangeIncludesMedia(a2, a3);
    }
  }

  return result;
}

uint64_t segPumpMediaConnectionIsActive(uint64_t result)
{
  if (result)
  {
    if (*(result + 32) || *(result + 104))
    {
      return 1;
    }

    else
    {
      result = *(result + 272);
      if (result)
      {
        return CMBlockBufferGetDataLength(result) != 0;
      }
    }
  }

  return result;
}

BOOL segPumpMediaConnectionRangeIncludesMedia(void *a1, uint64_t a2)
{
  v4 = a1[37] + a1[30];
  result = 0;
  if (v4 <= FigMediaSegmentSpecifierGetStartOffset(a2))
  {
    v5 = a1[31];
    if (v5 < 1)
    {
      return 1;
    }

    v6 = a1[30] + v5;
    StartOffset = FigMediaSegmentSpecifierGetStartOffset(a2);
    if (v6 >= FigMediaSegmentSpecifierGetBytesToRead(a2) + StartOffset)
    {
      return 1;
    }
  }

  return result;
}

CFIndex segPumpSetDeliveryStatusForMediaFileAndParts(const void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a2;
  *(segPumpGetMediaFilePrivateData(a1, a2, a3, a4, a5, a6, a7, a8) + 73) = a2;
  PartialSegments = FigMediaSegmentSpecifierGetPartialSegments(a1);
  v11 = 0;
  if (!PartialSegments)
  {
    goto LABEL_3;
  }

LABEL_2:
  for (result = CFArrayGetCount(PartialSegments); v11 < result; result = 0)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(PartialSegments, v11);
    *(segPumpGetMediaFilePrivateData(ValueAtIndex, v14, v15, v16, v17, v18, v19, v20) + 73) = v8;
    ++v11;
    if (PartialSegments)
    {
      goto LABEL_2;
    }

LABEL_3:
    ;
  }

  return result;
}

uint64_t segPumpUpdateBufferingDoneState(uint64_t result)
{
  v1 = result;
  v2 = 0;
  v3 = 0;
  v4 = (result + 392);
  do
  {
    v5 = *v4;
    if (*(*v4 + 16))
    {
      if (!*(v5 + 869))
      {
        result = *(v5 + 56);
        if (result)
        {
          result = FigMediaPlaylistGetMediaSegmentSpecifiers(result);
          if (result)
          {
            result = CFArrayGetCount(result);
            v6 = result - 1;
            if (result >= 1)
            {
              MediaSegmentSpecifiers = FigMediaPlaylistGetMediaSegmentSpecifiers(*(v5 + 56));
              ValueAtIndex = CFArrayGetValueAtIndex(MediaSegmentSpecifiers, v6);
              result = segPumpGetMediaFilePrivateData(ValueAtIndex, v9, v10, v11, v12, v13, v14, v15);
              if (!*(result + 73))
              {
                break;
              }
            }
          }
        }
      }
    }

    v2 = v3 > 1;
    v4 += 2;
    ++v3;
  }

  while (v3 != 3);
  v16 = *(v1 + 9760);
  if (v16)
  {
    v17 = (v2 ? MEMORY[0x1E695E4D0] : MEMORY[0x1E695E4C0]);
    VTable = CMBaseObjectGetVTable();
    v19 = *(VTable + 8);
    result = VTable + 8;
    v20 = *(v19 + 56);
    if (v20)
    {
      v21 = *v17;

      return v20(v16, @"AfmfpbProperty_IsBufferFull", v21);
    }
  }

  return result;
}

void *segPumpFindCryptKeyCommonData(uint64_t a1, uint64_t a2)
{
  v4 = 0;
  for (i = 0; ; ++i)
  {
    Count = *(a1 + 7888);
    if (Count)
    {
      Count = CFArrayGetCount(Count);
    }

    if (i >= Count)
    {
      break;
    }

    ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 7888), i);
    FigContentKeySpecifierGetIdentifier(a2);
    if (FigCFEqual())
    {
      v4 = ValueAtIndex;
    }
  }

  return v4;
}

const void *segPumpCreateCryptKeyCommonData(uint64_t a1)
{
  FigGetAllocatorForMedia();
  v8 = xmmword_1E7476B90;
  if (segPumpCryptKeyCommonDataGetTypeID_once != -1)
  {
    dispatch_once_f(&segPumpCryptKeyCommonDataGetTypeID_once, &v8, segPumpRegisterClassUtil);
  }

  Instance = _CFRuntimeCreateInstance();
  if (Instance)
  {
    Mutable = *(a1 + 7888);
    if (Mutable || (AllocatorForMedia = FigGetAllocatorForMedia(), Mutable = CFArrayCreateMutable(AllocatorForMedia, 0, MEMORY[0x1E695E9C0]), (*(a1 + 7888) = Mutable) != 0))
    {
      CFArrayAppendValue(Mutable, Instance);
    }

    else
    {
      segPumpCreateCryptKeyCommonData_cold_1(0, v6);
    }
  }

  else
  {
    segPumpCreateCryptKeyCommonData_cold_2(0, v2);
  }

  return Instance;
}

void segPumpCryptKeyCommonDataFinalize(void *a1)
{
  v2 = a1[2];
  if (v2)
  {
    CFRelease(v2);
    a1[2] = 0;
  }

  v3 = a1[7];
  if (v3)
  {
    CFRelease(v3);
    a1[7] = 0;
  }

  v4 = a1[8];
  if (v4)
  {
    CFRelease(v4);
    a1[8] = 0;
  }

  v5 = a1[6];
  if (v5)
  {
    CFRelease(v5);
    a1[6] = 0;
  }

  CryptKeyReleaseAndClearVideoDecryptor(a1);

  CryptKeyReleaseAndClearAudioDecryptor(a1);
}

void CryptKeyReleaseAndClearVideoDecryptor(uint64_t a1)
{
  CMNotificationCenterGetDefaultLocalCenter();
  if (*(a1 + 72))
  {
    FigNotificationCenterRemoveWeakListener();
    FigNotificationCenterRemoveWeakListener();
    FigNotificationCenterRemoveWeakListener();
    FigNotificationCenterRemoveWeakListener();
    v2 = *(a1 + 72);
    if (v2)
    {
      CFRelease(v2);
      *(a1 + 72) = 0;
    }
  }

  *(a1 + 80) = 0;
}

void CryptKeyReleaseAndClearAudioDecryptor(uint64_t a1)
{
  CMNotificationCenterGetDefaultLocalCenter();
  if (*(a1 + 112))
  {
    FigNotificationCenterRemoveWeakListener();
    FigNotificationCenterRemoveWeakListener();
    FigNotificationCenterRemoveWeakListener();
    v2 = *(a1 + 112);
    if (v2)
    {
      CFRelease(v2);
      *(a1 + 112) = 0;
    }
  }

  *(a1 + 120) = 0;
}

double segPumpContinueIfCryptKeyResponseWasAlreadySet(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  v24 = *(a5 + 72);
  if (!v24)
  {
    if (!*(a5 + 112))
    {
      return result;
    }

    v26 = 0;
    goto LABEL_6;
  }

  if (segPumpGetDecryptorState(v24) == 3)
  {
    v26 = *(a5 + 72);
LABEL_6:
    v27 = 1;
    goto LABEL_8;
  }

  v27 = 0;
  v26 = 0;
LABEL_8:
  v28 = *(a5 + 112);
  if (v28)
  {
    if (segPumpGetDecryptorState(v28) != 3)
    {
      goto LABEL_21;
    }

    v29 = *(a5 + 112);
  }

  else
  {
    v29 = 0;
  }

  if (v29)
  {
    v26 = v29;
  }

  if (!v27)
  {
    goto LABEL_21;
  }

  *(a5 + 152) = 1;
  if (!*(a2 + 330) || !segPumpCryptKeyIsLowValueFairPlayStreamingKey(a4))
  {
    goto LABEL_21;
  }

  AllocatorForMedia = FigGetAllocatorForMedia();
  v31 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v31)
  {
    v36 = 4294954514;
LABEL_24:
    v37 = qword_1EAF16A28;
    v38 = v18;
    v39 = 18985;
    goto LABEL_30;
  }

  v32 = v31(v26, *MEMORY[0x1E69610D8], AllocatorForMedia, a5 + 56);
  if (v32)
  {
    v36 = v32;
    goto LABEL_24;
  }

  v33 = FigGetAllocatorForMedia();
  v34 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v34)
  {
    v35 = v34(v26, *MEMORY[0x1E69610C8], v33, a5 + 64);
    if (!v35)
    {
LABEL_21:
      if (*(a5 + 152))
      {
        FigHTTPStopAndReleaseTimer((a3 + 640));

        segPumpContinueAfterKeyFetched(a1, a2, a3, a4, v40, v41, v42, v43, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18);
      }

      return result;
    }

    v36 = v35;
  }

  else
  {
    v36 = 4294954514;
  }

  v37 = qword_1EAF16A28;
  v38 = v18;
  v39 = 18987;
LABEL_30:

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v37, v36, "<SEGPUMP>", v39, v38);
}

uint64_t segPumpGetDecryptorState(uint64_t a1)
{
  number = 0;
  valuePtr = 0;
  AllocatorForMedia = FigGetAllocatorForMedia();
  v3 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v3)
  {
    return 0;
  }

  v4 = v3(a1, *MEMORY[0x1E69610E8], AllocatorForMedia, &number);
  v5 = number;
  if (v4)
  {
    v6 = 0;
    if (!number)
    {
      return v6;
    }

    goto LABEL_4;
  }

  CFNumberGetValue(number, kCFNumberSInt32Type, &valuePtr);
  v6 = valuePtr;
  v5 = number;
  if (number)
  {
LABEL_4:
    CFRelease(v5);
  }

  return v6;
}

void segPumpStreamProceedAfterMediaAndKeyArrival(uint64_t a1, uint64_t a2, uint64_t a3, const void *a4, uint64_t a5, uint64_t a6)
{
  if (!a4)
  {
    segPumpStreamProceedAfterMediaAndKeyArrival_cold_2(a1, a2, a3, 0, a5, a6);
  }

  v6 = a6;
  v7 = a5;
  Type = FigMediaSegmentSpecifierGetType(a4);
  MediaFilePrivateData = segPumpGetMediaFilePrivateData(a4, v12, v13, v14, v15, v16, v17, v18);
  if (Type != 1)
  {
    v20 = MediaFilePrivateData;
    v21 = MediaFilePrivateData[2];
    if (!v21)
    {
      if (!v7)
      {
        goto LABEL_6;
      }

      goto LABEL_9;
    }

    CFRelease(v21);
    v20[2] = 0;
  }

  if (!v7)
  {
    goto LABEL_6;
  }

LABEL_9:
  if (*(a3 + 264) == a4 && (v22 = *(a3 + 256)) != 0 && (FigMediaSegmentSpecifierIsFragment(v22) || (FigMediaSegmentSpecifierGetPartialSegments(*(a3 + 256)), FigCFArrayGetLastValue() != a4)))
  {
    segPumpMarkMediaFileAsDelivered(a2, a3, a4);
  }

  else
  {
    segPumpStreamProceedAfterMediaAndKeyArrival_cold_1();
  }

  if (*(a2 + 392 + 16 * *a3) == a3)
  {
    v23 = *(a2 + 392 + 16 * *a3 + 8);
    if (*(v23 + 861))
    {
      if (FigMediaSegmentSpecifierGetImputedDate(a4) != 0.0)
      {
        ImputedDate = FigMediaSegmentSpecifierGetImputedDate(a4);
        *(v23 + 920) = ImputedDate + FigMediaSegmentSpecifierGetTimeInSeconds(a4) * 0.5;
      }

      PlaylistActiveDurationSecs = FigMediaPlaylistGetPlaylistActiveDurationSecs(*(a3 + 56));
      v33 = *(segPumpGetMediaFilePrivateData(a4, v26, v27, v28, v29, v30, v31, v32) + 4) - *(a3 + 88);
      *(v23 + 904) = PlaylistActiveDurationSecs - (v33 + FigMediaSegmentSpecifierGetTimeInSeconds(a4));
    }
  }

LABEL_6:
  if (v6)
  {

    segPumpMoveToNextMedia();
  }
}

uint64_t segPumpShouldPadByteCountForMediaSegment(uint64_t a1, uint64_t a2)
{
  result = FigMediaSegmentSpecifierGetContentKeySpecifier(a2);
  if (result)
  {
    ContentKeySpecifier = FigMediaSegmentSpecifierGetContentKeySpecifier(a2);
    if (FigContentKeySpecifierGetEncryptionMethod(ContentKeySpecifier) != 3)
    {
      return 0;
    }

    v6 = FigMediaSegmentSpecifierGetContentKeySpecifier(a2);
    if (FigContentKeySpecifierGetEncryptionMethod(v6) == 4)
    {
      return 0;
    }

    result = 0;
    if (a2 && *(a1 + 8896))
    {
      if (!FigMediaSegmentSpecifierGetType(a2))
      {
        return FigMediaSegmentSpecifierGetBytesToRead(a2) > 0;
      }

      return 0;
    }
  }

  return result;
}

uint64_t segPumpAppendBytesToCache(uint64_t a1, uint64_t a2, const void *a3, OpaqueCMBlockBuffer *a4, size_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a7;
  MediaFilePrivateData = segPumpGetMediaFilePrivateData(a3, a2, a3, a4, a5, a6, a7, a8);
  result = *(a1 + 296);
  if (result)
  {
    v17 = *(a2 + 64);
    if (v17)
    {
      v19 = (MediaFilePrivateData + 104);
      v18 = *(MediaFilePrivateData + 13);
      if (v18)
      {
        if (a6)
        {
          result = FigStreamingCacheMediaSegmentAppendBytes(result, v17, v18, *(MediaFilePrivateData + 15), a4, a5, a6);
          if (result)
          {
            goto LABEL_12;
          }
        }

        *(MediaFilePrivateData + 15) += a6;
        if (v8)
        {
          v21 = 0;
          FigStreamingCacheMediaSegmentGetLength(*(a1 + 296), *(a2 + 64), *v19, 0, &v21);
          if (FigMediaSegmentSpecifierGetBytesToRead(a3) && (v20 = FigMediaSegmentSpecifierGetBytesToRead(a3), v20 != v21))
          {
            result = 4294951672;
          }

          else
          {
            result = FigStreamingCacheMediaSegmentMarkComplete(*(a1 + 296), *(a2 + 64), *v19);
            *v19 = 0;
          }

LABEL_12:
          if (result > -16244)
          {
            if (result != -15641)
            {
              if (result != -16243)
              {
                return result;
              }

              result = 0;
              *(MediaFilePrivateData + 6) = 0;
              *(MediaFilePrivateData + 7) = 0;
              *(MediaFilePrivateData + 71) = 0;
              *(MediaFilePrivateData + 8) = 0;
              *(MediaFilePrivateData + 14) = 0;
              *(MediaFilePrivateData + 15) = 0;
              goto LABEL_20;
            }
          }

          else if ((result + 16246) >= 2 && result != -16249)
          {
            return result;
          }

          result = 0;
LABEL_20:
          *v19 = 0;
          return result;
        }
      }
    }

    return 0;
  }

  return result;
}

uint64_t segPumpMediaFileHandleCryptData(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, OpaqueCMBlockBuffer *a5, size_t a6, size_t a7, uint64_t a8)
{
  v44 = *MEMORY[0x1E69E9840];
  blockBufferOut = 0;
  v41[0] = 0;
  ContentKeySpecifier = FigMediaSegmentSpecifierGetContentKeySpecifier(a4);
  EncryptionMethod = FigContentKeySpecifierGetEncryptionMethod(ContentKeySpecifier);
  if (!*(a2 + 330))
  {
    segPumpMediaFileHandleCryptData_cold_1(lengthAtOffsetOut);
    v27 = LODWORD(lengthAtOffsetOut[0]);
LABEL_19:
    if (blockBufferOut)
    {
      CFRelease(blockBufferOut);
    }

    return v27;
  }

  v18 = EncryptionMethod;
  v19 = FigMediaSegmentSpecifierGetContentKeySpecifier(a4);
  CryptKeyCommonData = segPumpGetCryptKeyCommonData(v19, 0, v41);
  if (CryptKeyCommonData)
  {
    goto LABEL_33;
  }

  v21 = v18 - 3;
  if (*(v41[0] + 152))
  {
    if (v21 < 0xFFFFFFFE)
    {
      AllocatorForMedia = FigGetAllocatorForMedia();
      CryptKeyCommonData = CMBlockBufferCreateEmpty(AllocatorForMedia, 0, 0, &blockBufferOut);
      if (!CryptKeyCommonData)
      {
        if (!a7 && (a8 & 1) != 0)
        {
          CryptKeyCommonData = segPumpMediaFileCreateDecryptedData(a2, a3, a4, a5, a6, 0, 1, blockBufferOut);
          if (CryptKeyCommonData)
          {
            goto LABEL_33;
          }
        }

        else if (a7)
        {
          v23 = a7 + a6;
          do
          {
            lengthAtOffsetOut[0] = 0;
            CryptKeyCommonData = CMBlockBufferGetDataPointer(a5, a6, lengthAtOffsetOut, 0, 0);
            if (CryptKeyCommonData)
            {
              goto LABEL_33;
            }

            v24 = lengthAtOffsetOut[0] >= a7 ? a7 : lengthAtOffsetOut[0];
            CryptKeyCommonData = segPumpMediaFileCreateDecryptedData(a2, a3, a4, a5, a6, v24, a8 & (lengthAtOffsetOut[0] + a6 >= v23), blockBufferOut);
            if (CryptKeyCommonData)
            {
              goto LABEL_33;
            }

            a6 += lengthAtOffsetOut[0];
            a7 -= v24;
          }

          while (a7);
        }

        DataLength = CMBlockBufferGetDataLength(blockBufferOut);
        v26 = DataLength;
        if ((a8 & 1) == 0 && !DataLength)
        {
          v27 = 0;
          goto LABEL_19;
        }

        v35 = blockBufferOut;
        LODWORD(v37) = 0;
        v31 = a1;
        v32 = a2;
        v33 = a3;
        v34 = a4;
        v36 = 0;
        goto LABEL_32;
      }

LABEL_33:
      v27 = CryptKeyCommonData;
      goto LABEL_19;
    }

LABEL_28:
    LODWORD(v37) = 0;
    v31 = a1;
    v32 = a2;
    v33 = a3;
    v34 = a4;
    v35 = a5;
    v36 = a6;
    v26 = a7;
LABEL_32:
    segPumpSendMediaCallback(v31, v32, v33, v34, v35, v36, v26, a8, v37, v38, a1, v39, blockBufferOut, v41[0], v41[1], v41[2], v41[3], v41[4], lengthAtOffsetOut[0], lengthAtOffsetOut[1], lengthAtOffsetOut[2], lengthAtOffsetOut[3], v43);
    goto LABEL_33;
  }

  if (a4 && v21 >= 0xFFFFFFFE && FigMediaSegmentSpecifierGetType(a4) == 1)
  {
    goto LABEL_28;
  }

  if (dword_1EAF16A30)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v37, v38, a1);
  return v29;
}

BOOL segPumpIsLastMediaFileDelivering(uint64_t a1, uint64_t a2)
{
  NextSegment = FigMediaSegmentSpecifierGetNextSegment(a2);
  HasEndTag = FigMediaPlaylistHasEndTag(*(a1 + 56));
  result = 0;
  if (a2 && HasEndTag)
  {
    if (!FigMediaSegmentSpecifierGetType(a2))
    {
      if (!NextSegment)
      {
        return 1;
      }

      if ((*(a1 + 220) & 0x1D) == 1)
      {
        MediaFilePrivateData = segPumpGetMediaFilePrivateData(NextSegment, v7, v8, v9, v10, v11, v12, v13);
        v15 = *(a1 + 208);
        return CMTimeGetSeconds(&v15) <= MediaFilePrivateData[4];
      }
    }

    return 0;
  }

  return result;
}

uint64_t segPumpSetMediaConnectionIsDormant(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v4 = *(a2 + 32);
    if (v4)
    {
      if (a3)
      {
        v5 = MEMORY[0x1E695E4D0];
      }

      else
      {
        v5 = MEMORY[0x1E695E4C0];
      }

      VTable = CMBaseObjectGetVTable();
      v7 = *(VTable + 8);
      result = VTable + 8;
      v8 = *(v7 + 56);
      if (v8)
      {
        v9 = @"FHRP_IsDormant";
        v10 = *v5;
        v11 = v4;

        return v8(v11, v9, v10);
      }
    }

    else
    {
      v12 = *(a2 + 104);
      if (v12)
      {
        v13 = *(result + 80);
        v14 = CMBaseObjectGetVTable();
        v15 = *(v14 + 16);
        result = v14 + 16;
        v8 = *(v15 + 40);
        if (v8)
        {
          v11 = v13;
          v9 = v12;
          v10 = a3;

          return v8(v11, v9, v10);
        }
      }
    }
  }

  return result;
}

uint64_t segPumpShouldDoSegmentReadAheads(_BYTE *a1)
{
  if (a1[337])
  {
    return 1;
  }

  if (a1[8393] && (a1[8214] || !segPumpIsCacheDiskBacked(a1)))
  {
    if (a1[338])
    {
      return 1;
    }

    v3 = 0;
    v4 = a1 + 392;
    TimeDeliveredFromBeginningForVOD = 1.79769313e308;
    do
    {
      v6 = *&v4[v3];
      if (*(v6 + 16) && !*(v6 + 1152) && TimeDeliveredFromBeginningForVOD >= segPumpStreamGetTimeDeliveredFromBeginningForVOD(*&v4[v3]))
      {
        TimeDeliveredFromBeginningForVOD = segPumpStreamGetTimeDeliveredFromBeginningForVOD(v6);
      }

      v3 += 16;
    }

    while (v3 != 48);
    if (TimeDeliveredFromBeginningForVOD > 120.0)
    {
      return 1;
    }
  }

  return 0;
}

const void *segPumpStreamGetFuturePreloadCount(void *a1, void *a2)
{
  if (segPumpStreamShouldYieldToTrialSwitch(a1, a2))
  {
    return 0;
  }

  result = a2[7];
  if (result)
  {
    FigMediaPlaylistGetMediaSegmentSpecifiers(result);
    result = FigCFArrayGetLastValue();
    if (result)
    {
      LastValue = result;
      PartialSegments = FigMediaSegmentSpecifierGetPartialSegments(result);
      if (PartialSegments && CFArrayGetCount(PartialSegments) >= 1)
      {
        LastValue = FigCFArrayGetLastValue();
      }

      IsFragment = FigMediaSegmentSpecifierIsFragment(LastValue);
      v14 = 33;
      if (!IsFragment)
      {
        v14 = 32;
      }

      return (LastValue == a2[v14] || *(segPumpGetMediaFilePrivateData(LastValue, v7, v8, v9, v10, v11, v12, v13) + 73));
    }
  }

  return result;
}

BOOL segPumpIsCacheDiskBacked(uint64_t a1)
{
  cf = *MEMORY[0x1E695E4C0];
  v1 = *(a1 + 296);
  AllocatorForMedia = FigGetAllocatorForMedia();
  FigStreamingCacheCopyProperty(v1, @"FSC_IsDiskBacked", AllocatorForMedia, &cf);
  v3 = *MEMORY[0x1E695E4D0];
  v4 = cf;
  if (cf)
  {
    CFRelease(cf);
  }

  return v3 == v4;
}

BOOL segPumpStreamShouldYieldToTrialSwitch(void *a1, void *a2)
{
  v2 = a1[985];
  if (!v2)
  {
    return 0;
  }

  if (a1[2 * *a2 + 49] != a2)
  {
    return 0;
  }

  if (!a1[1041])
  {
    return 0;
  }

  PeakBitRate = FigAlternateGetPeakBitRate(*(v2 + 8));
  if (PeakBitRate >= FigAlternateGetPeakBitRate(*(a1[1041] + 8)))
  {
    return 0;
  }

  v9 = 0;
  v10 = 0;
  v7 = *a2 > 2uLL ? 0 : dword_196E7291C[*a2];
  if (FigAlternateGetRenditionInfoForMediaType(*(a1[985] + 8), v7, a1[1072], a1[1073], a1[1074], 1, 0, &v9, 0))
  {
    return 0;
  }

  v8 = *a2 > 2uLL ? 0 : dword_196E7291C[*a2];
  if (FigAlternateGetRenditionInfoForMediaType(*(a1[1041] + 8), v8, a1[1072], a1[1073], a1[1074], 1, 0, &v10, 0))
  {
    return 0;
  }

  return FigCFEqual() == 0;
}

uint64_t segPumpCreateMediaConnection(uint64_t a1)
{
  v2 = malloc_type_calloc(1uLL, 0x130uLL, 0x106004050414A1CuLL);
  if (!v2)
  {
    return 4294954510;
  }

  v3 = v2;
  result = 0;
  v5 = *(a1 + 744);
  v3[23] = v5;
  *(a1 + 744) = v5 + 1;
  *v3 = 0;
  **(a1 + 688) = v3;
  *(a1 + 688) = v3;
  return result;
}

double segPumpGetDownloadTimerIntervalForMedia(double *a1, uint64_t a2)
{
  TimeInSeconds = FigMediaSegmentSpecifierGetTimeInSeconds(a2);
  if (TimeInSeconds >= 0.25 || FigMediaSegmentSpecifierIsFragment(a2))
  {
    if (FigMediaSegmentSpecifierIsFragment(a2))
    {
      v5 = a1[2] * 0.5;
    }

    else
    {
      v5 = a1[1025];
    }

    if (TimeInSeconds / a1[1111] > v5)
    {
      v5 = TimeInSeconds / a1[1111];
    }
  }

  else
  {
    v5 = 0.25 / a1[1111];
  }

  return fmin(v5, 30.0);
}

void segPumpRTCReportingUpdateMediaTimerStats(double a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a3 + 776);
  if (v4 < 1)
  {
LABEL_5:
    segPumpRTCReportingUpdateMediaTimerStats_cold_1();
  }

  else
  {
    v5 = *(a3 + 768);
    while (*v5 != a4)
    {
      ++v5;
      if (!--v4)
      {
        goto LABEL_5;
      }
    }
  }
}

OpaqueCMBlockBuffer *segPumpAccumConnCompletesMediaRange(uint64_t a1, void *a2)
{
  result = *(a1 + 272);
  if (result)
  {
    DataLength = CMBlockBufferGetDataLength(result);
    return (segPumpReadCompletesMediaRange(a2, DataLength) != 0);
  }

  return result;
}

void segPumpSetMediaFileForMediaConnection(uint64_t a1, void *a2, void *a3, const void *a4, CFTypeRef cf, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v12 = a2[2];
  a2[2] = cf;
  if (cf)
  {
    CFRetain(cf);
  }

  if (v12)
  {
    CFRelease(v12);
  }

  v13 = a2[21];
  v14 = a3[2];
  v15 = a3[3];
  MediaFilePrivateData = segPumpGetMediaFilePrivateData(a4, a2, a3, a4, cf, a6, a7, a8);
  segPumpEnsureMediaSegmentURLs(a4, v14, v15, v17, v18, v19, v20, v21);
  v29 = MediaFilePrivateData[2];
  a2[21] = v29;
  if (v29)
  {
    CFRetain(v29);
  }

  if (v13)
  {
    CFRelease(v13);
  }

  v30 = a2[1];
  a2[1] = a4;
  if (a4)
  {
    CFRetain(a4);
  }

  if (v30)
  {
    CFRelease(v30);
  }

  v31 = segPumpGetMediaFilePrivateData(a4, v22, v23, v24, v25, v26, v27, v28);
  if (*(a1 + 296))
  {
    if (a3[8])
    {
      v32 = v31;
      if ((!a4 || FigMediaSegmentSpecifierGetType(a4) != 1) && !v32[13] && segPumpCanAddSegmentToCache(a1, a3, a4, 0))
      {
        cfa = 0;
        v40 = segPumpGetMediaFilePrivateData(a4, v33, v34, v35, v36, v37, v38, v39);
        if ((*(a1 + 8214) || !segPumpIsCacheDiskBacked(a1)) && !segPumpCreateCacheNameFromSegment(a3, a4, 0, &cfa))
        {
          v41 = *(a1 + 296);
          v42 = a3[8];
          v43 = cfa;
          StartOffset = FigMediaSegmentSpecifierGetStartOffset(a4);
          v45 = v40[4];
          TimeInSeconds = FigMediaSegmentSpecifierGetTimeInSeconds(a4);
          MediaSequence = FigMediaSegmentSpecifierGetMediaSequence(a4);
          if (!FigStreamingCacheMediaStreamCreateMediaSegment(v41, v42, v43, StartOffset, MediaSequence, v40 + 13, v45, TimeInSeconds))
          {
            segPumpSetMediaFilePumpTimeOffsetsArray(a1, a3, a4, v48, v49, v50, v51, v52);
          }
        }

        if (cfa)
        {
          CFRelease(cfa);
        }

        if (!v32[13])
        {
          FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v53, cfa, v55);
        }
      }
    }
  }
}

void *segPumpReadCompletesMediaRange(void *result, uint64_t a2)
{
  if (result)
  {
    v3 = result;
    if (FigMediaSegmentSpecifierGetBytesToRead(result) < 1)
    {
      return 0;
    }

    else
    {
      result = segPumpGetMediaFilePrivateData(v3, v4, v5, v6, v7, v8, v9, v10);
      if (result)
      {
        v11 = result[6] + a2;
        return (v11 >= FigMediaSegmentSpecifierGetBytesToRead(v3));
      }
    }
  }

  return result;
}

uint64_t segPumpCanAddSegmentToCache(void *a1, void *a2, const void *a3, _BYTE *a4)
{
  v32 = 0;
  v33 = 0;
  if (a4)
  {
    *a4 = 0;
  }

  if (!a1[37] || !a2[8])
  {
    return 0;
  }

  segPumpSeeIfMediaFileIsInCache();
  v17 = v16;
  if (a4)
  {
    *a4 = 1;
  }

  MediaFilePrivateData = segPumpGetMediaFilePrivateData(a3, v9, v10, v11, v12, v13, v14, v15);
  v25 = MediaFilePrivateData;
  if (v17)
  {
    v26 = v33;
    MediaFilePrivateData[13] = v33;
    if (MediaFilePrivateData[5])
    {
      FigStreamingCacheMediaSegmentGetLength(a1[37], a2[8], v26, 0, &v32);
      v27 = v25[5] - v32;
LABEL_11:
      v32 = v27;
      goto LABEL_15;
    }

    v27 = 0;
  }

  else if (FigMediaSegmentSpecifierGetBytesToRead(a3))
  {
    v27 = FigMediaSegmentSpecifierGetBytesToRead(a3);
    v32 = v27;
  }

  else
  {
    v27 = v25[5];
    if (v27)
    {
      goto LABEL_11;
    }
  }

LABEL_15:
  v28 = segPumpGetMediaFilePrivateData(a3, v19, v26, v20, v21, v22, v23, v24);
  if (a1[37] && a2[8])
  {
    v29 = v28;
    if (!v27)
    {
      if (FigMediaSegmentSpecifierGetBytesToRead(a3))
      {
        v27 = FigMediaSegmentSpecifierGetBytesToRead(a3);
      }

      else
      {
        v27 = 1000000;
        v30 = a1[1041];
        if (v30)
        {
          if (*a2 == a1[1075])
          {
            v31 = *(v30 + 24);
            v27 = (FigMediaSegmentSpecifierGetTimeInSeconds(a3) * v31 * 0.125);
          }
        }
      }
    }

    if (FigStreamingCacheMediaStreamReserveSpaceForByteSize(a1[37], a2[8], v27, v29[4]))
    {
      return 0;
    }
  }

  v25[13] = v33;
  return 1;
}

uint64_t segPumpCreateCacheNameFromSegment(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v15 = 0;
  cf = 0;
  AllocatorForMedia = FigGetAllocatorForMedia();
  URLString = FigMediaSegmentSpecifierGetURLString(a2);
  v10 = CFURLCreateWithString(AllocatorForMedia, URLString, *(a1 + 24));
  if (v10 || segPumpCreateCacheNameFromSegment_cold_1())
  {
    v11 = segPumpCreateURLAndString(v10, &cf, &v15);
    if (!v11)
    {
      if (a3)
      {
        v12 = cf;
        if (cf)
        {
          v12 = CFRetain(cf);
        }

        *a3 = v12;
      }

      if (a4)
      {
        v13 = v15;
        if (v15)
        {
          v13 = CFRetain(v15);
        }

        *a4 = v13;
      }
    }

    if (v10)
    {
      CFRelease(v10);
    }
  }

  else
  {
    v11 = v17;
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (v15)
  {
    CFRelease(v15);
  }

  return v11;
}

uint64_t segPumpSetMediaFilePumpTimeOffsetsArray(uint64_t a1, uint64_t a2, const void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  MediaFilePrivateData = segPumpGetMediaFilePrivateData(a3, a2, a3, a4, a5, a6, a7, a8);
  v11 = *(MediaFilePrivateData + 16);
  if (!v11 || CFArrayGetCount(v11) < 2)
  {
    return 0;
  }

  v12 = *(a1 + 296);
  v13 = *(a2 + 64);
  v14 = *(MediaFilePrivateData + 13);
  v15 = *(MediaFilePrivateData + 16);

  return FigStreamingCacheMediaSegmentSetDuplicateSegments(v12, v13, v14, v15);
}

uint64_t segPumpGetStreamFromMediaHTTPRequest(uint64_t a1, uint64_t a2, int a3, void *a4)
{
  v4 = 0;
  v5 = a1 + 392;
  while (1)
  {
    result = *(v5 + 16 * v4);
    v7 = *(result + 680);
    if (v7)
    {
      break;
    }

LABEL_6:
    result = *(v5 + 16 * v4 + 8);
    v7 = *(result + 680);
    if (v7)
    {
      while (v7[4] != a2 || *(v7 + 24) != a3)
      {
        v7 = *v7;
        if (!v7)
        {
          goto LABEL_10;
        }
      }

      goto LABEL_13;
    }

LABEL_10:
    if (++v4 == 3)
    {
      return 0;
    }
  }

  while (v7[4] != a2 || *(v7 + 24) != a3)
  {
    v7 = *v7;
    if (!v7)
    {
      goto LABEL_6;
    }
  }

LABEL_13:
  if (a4)
  {
    *a4 = v7;
  }

  return result;
}

uint64_t segPumpGetMediaDataMemoryPool(uint64_t a1)
{
  result = *(a1 + 8136);
  if (!result)
  {
    AllocatorForMedia = FigGetAllocatorForMedia();
    Mutable = CFDictionaryCreateMutable(AllocatorForMedia, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    if (Mutable)
    {
      v5 = Mutable;
      v6 = FigGetAllocatorForMedia();
      v7 = CFStringCreateWithFormat(v6, 0, @"BytePumpHTTPSegment-%p", a1);
      if (v7)
      {
        segPumpGetMediaDataMemoryPool_cold_1(v5, v7, a1, (a1 + 8136));
      }

      CFRelease(v5);
    }

    return *(a1 + 8136);
  }

  return result;
}

uint64_t segPumpUpdateNetworkCostIsExpensive(uint64_t result)
{
  v1 = *(result + 8656);
  if (v1)
  {
    v2 = (*(result + 8652) ? MEMORY[0x1E695E4D0] : MEMORY[0x1E695E4C0]);
    VTable = CMBaseObjectGetVTable();
    v4 = *(VTable + 8);
    result = VTable + 8;
    v5 = *(v4 + 56);
    if (v5)
    {
      v6 = *v2;

      return v5(v1, 0x1F0B5F718, v6);
    }
  }

  return result;
}

void segPumpRTCReportingLogAndUpdateStats(uint64_t a1, CFHTTPMessageRef message, CFStringRef headerField, int a4, int a5)
{
  v8 = CFHTTPMessageCopyHeaderFieldValue(message, headerField);
  if (v8)
  {
    segPumpRTCReportingLogAndUpdateStats_cold_1(a1, a4, a5, v8);
  }
}

double segPumpGetElapsedTimeForConnectionOnMedia(uint64_t a1, uint64_t a2)
{
  v2 = 64;
  if (!*(a2 + 211))
  {
    v2 = 40;
  }

  v3 = *(a2 + v2);
  if (*(a2 + 288) <= 0)
  {
    v4 = v3;
  }

  else
  {
    v4 = *(a2 + 288);
  }

  return *(a1 + 808) + (FigGetUpTimeNanoseconds() - v4) / 1000000000.0;
}

void segPumpAddMediaSegmentNoResponseErrorIfNecessary(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a3 && !*(a3 + 210) && !*(a3 + 224))
  {
    segPumpAddMediaSegmentNoResponseErrorIfNecessary_cold_1();
  }
}

uint64_t segPumpStreamBitRateRequiredForStream(uint64_t a1, void *a2)
{
  v2 = *(a1 + 7880);
  if (v2 && *(a1 + 16 * *a2 + 400) == a2)
  {
    return FigAlternateGetPeakBitRate(*(v2 + 8));
  }

  v2 = *(a1 + 8328);
  if (v2)
  {
    return FigAlternateGetPeakBitRate(*(v2 + 8));
  }

  else
  {
    return 0;
  }
}

CFIndex segPumpGetFragmentNumber(uint64_t a1, const void *a2)
{
  PartialSegments = FigMediaSegmentSpecifierGetPartialSegments(a1);
  v4 = 0;
  while (1)
  {
    v5 = PartialSegments ? CFArrayGetCount(PartialSegments) : 0;
    if (v4 >= v5)
    {
      break;
    }

    ValueAtIndex = CFArrayGetValueAtIndex(PartialSegments, v4++);
    if (ValueAtIndex == a2)
    {
      goto LABEL_9;
    }
  }

  a2 = 0;
LABEL_9:
  if (a2)
  {
    return v4 - 1;
  }

  else
  {
    return -1;
  }
}

CFIndex segPumpStreamGetMapNumber(void *a1, uint64_t a2)
{
  for (i = 0; ; ++i)
  {
    MapSegmentSpecifiers = FigMediaPlaylistGetMapSegmentSpecifiers(a1[7]);
    if (MapSegmentSpecifiers)
    {
      MapSegmentSpecifiers = CFArrayGetCount(MapSegmentSpecifiers);
    }

    if (i >= MapSegmentSpecifiers)
    {
      break;
    }

    v5 = FigMediaPlaylistGetMapSegmentSpecifiers(a1[7]);
    ValueAtIndex = CFArrayGetValueAtIndex(v5, i);
    v7 = a1[2];
    v8 = a1[3];
    segPumpGetMediaFilePrivateData(ValueAtIndex, v9, v10, v11, v12, v13, v14, v15);
    segPumpEnsureMediaSegmentURLs(ValueAtIndex, v7, v8, v16, v17, v18, v19, v20);
    if (FigCFEqual())
    {
      goto LABEL_8;
    }
  }

  ValueAtIndex = 0;
LABEL_8:
  if (ValueAtIndex)
  {
    return i;
  }

  else
  {
    return -1;
  }
}

const void *segPumpGetMediaEntryForMediaSequence(uint64_t a1, unint64_t a2)
{
  v10 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    FigLogBacktrace();
  }

  v5 = 0;
  do
  {
    MediaSegmentSpecifiers = FigMediaPlaylistGetMediaSegmentSpecifiers(a1);
    if (MediaSegmentSpecifiers)
    {
      MediaSegmentSpecifiers = CFArrayGetCount(MediaSegmentSpecifiers);
    }

    if (v5 >= MediaSegmentSpecifiers)
    {
      break;
    }

    v7 = FigMediaPlaylistGetMediaSegmentSpecifiers(a1);
    ValueAtIndex = CFArrayGetValueAtIndex(v7, v5);
    if (FigMediaSegmentSpecifierGetMediaSequence(ValueAtIndex) == a2)
    {
      return ValueAtIndex;
    }

    ++v5;
  }

  while (FigMediaSegmentSpecifierGetMediaSequence(ValueAtIndex) <= a2);
  return 0;
}

BOOL segPumpShouldIssueVerboseEvent(uint64_t a1, uint64_t a2, uint64_t a3)
{
  IsFragment = FigMediaSegmentSpecifierIsFragment(a3);
  v7 = *(a2 + 256);
  if (v7)
  {
    FigMediaSegmentSpecifierGetPartialSegments(v7);
    v8 = FigCFArrayGetFirstValue() == a3;
  }

  else
  {
    v8 = 0;
  }

  if (!IsFragment)
  {
    v8 = 1;
  }

  return *(a1 + 9252) == 3 || v8;
}

void segPumpRTCReportingSetCurrentAlternateIndexAndBitRate(uint64_t a1)
{
  v1 = *(a1 + 8328);
  if (v1)
  {
    AverageBitRate = FigAlternateGetAverageBitRate(*(v1 + 8));
    valuePtr = FigAlternateGetDeclaredPeakBitRate(*(*(a1 + 8328) + 8));
    AlternateIndex = FigAlternateGetAlternateIndex(*(*(a1 + 8328) + 8));
    v4 = *MEMORY[0x1E695E480];
    v5 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberIntType, &valuePtr);
    v6 = *(a1 + 9232);
    if (v6)
    {
      v7 = *(*(CMBaseObjectGetVTable() + 16) + 48);
      if (v7)
      {
        v7(v6, 0x1F0B64538, 0x1F0B65098, v5, 0);
      }
    }

    v8 = CFNumberCreate(v4, kCFNumberIntType, &AverageBitRate);
    v9 = *(a1 + 9232);
    if (v9)
    {
      v10 = *(*(CMBaseObjectGetVTable() + 16) + 48);
      if (v10)
      {
        v10(v9, 0x1F0B64538, 0x1F0B650B8, v8, 0);
      }

      v11 = *(a1 + 9232);
      if (v11)
      {
        v12 = *(*(CMBaseObjectGetVTable() + 16) + 56);
        if (v12)
        {
          v12(v11, 0x1F0B64538, 0x1F0B42358, AlternateIndex, 0);
        }
      }
    }

    if (v8)
    {
      CFRelease(v8);
    }

    if (v5)
    {
      CFRelease(v5);
    }
  }
}

void *segPumpFindCryptKeyCommonDataForRequestID(uint64_t a1, uint64_t a2)
{
  v4 = 0;
  while (1)
  {
    Count = *(a1 + 7888);
    if (Count)
    {
      Count = CFArrayGetCount(Count);
    }

    if (v4 >= Count)
    {
      break;
    }

    result = CFArrayGetValueAtIndex(*(a1 + 7888), v4);
    if (result[11] != a2)
    {
      ++v4;
      if (result[16] != a2)
      {
        continue;
      }
    }

    return result;
  }

  return 0;
}

const void *segPumpFindSessionDataEntryForRequestID(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 48))
  {
    v4 = 0;
    while (1)
    {
      SessionDataSpecifiers = FigMultivariantPlaylistGetSessionDataSpecifiers(*(a1 + 48));
      if (SessionDataSpecifiers)
      {
        SessionDataSpecifiers = CFArrayGetCount(SessionDataSpecifiers);
      }

      if (v4 >= SessionDataSpecifiers)
      {
        break;
      }

      v6 = FigMultivariantPlaylistGetSessionDataSpecifiers(*(a1 + 48));
      ValueAtIndex = CFArrayGetValueAtIndex(v6, v4++);
      if (*(segPumpEnsureAndGetSessionDataPrivateData(ValueAtIndex, v8, v9, v10, v11, v12, v13, v14) + 3) == a2)
      {
        return ValueAtIndex;
      }
    }
  }

  return 0;
}

uint64_t segPumpSaveCryptKeyToCache(uint64_t a1, const void *a2, uint64_t a3)
{
  if (!*(a1 + 296))
  {
    segPumpSaveCryptKeyToCache_cold_2(&v8);
    return v8;
  }

  if (!*(a1 + 329))
  {
    segPumpSaveCryptKeyToCache_cold_1(&v8);
    return v8;
  }

  FigGetAllocatorForMedia();
  BlockBufferWithCFDataNoCopy = FigCreateBlockBufferWithCFDataNoCopy();
  if (BlockBufferWithCFDataNoCopy)
  {
    return BlockBufferWithCFDataNoCopy;
  }

  else
  {
    return FigStreamingCacheSetCryptKey(*(a1 + 296), a2, 0);
  }
}

uint64_t findConnectionFromMediaDownloadTimer(void *a1, uint64_t a2, void *a3, void *a4, void *a5)
{
  v5 = a1[94];
  if (v5 < 1)
  {
LABEL_7:
    v9 = a1[97];
    if (v9 < 1)
    {
      return 0;
    }

    v6 = 0;
    while (1)
    {
      v10 = *(a1[96] + 8 * v6);
      if (v10)
      {
        if (*(v10 + 112) == a2 && *(v10 + 16))
        {
          break;
        }
      }

      if (v9 == ++v6)
      {
        return 0;
      }
    }

    *a3 = v10;
    v7 = a1[96];
  }

  else
  {
    v6 = 0;
    v7 = a1 + 87;
    while (1)
    {
      v8 = v7[v6];
      if (v8)
      {
        if (*(v8 + 112) == a2 && *(v8 + 16))
        {
          break;
        }
      }

      if (v5 == ++v6)
      {
        goto LABEL_7;
      }
    }

    *a3 = v8;
  }

  *a4 = v7;
  *a5 = v6;
  return 1;
}

void segPumpDispatchAsyncMediaDeliveryFunc(void *a1)
{
  v2 = a1[8];
  if (v2)
  {
    v2(*a1, a1[1], a1[2], a1[3], a1[4], a1[5], a1[7]);
  }

  FigRetainProxyRelease();
  v3 = a1[7];
  if (v3)
  {
    CFRelease(v3);
  }

  free(a1);
}

uint64_t segPumpCreateMapMediaBBuf(uint64_t a1, uint64_t a2, uint64_t a3, CFTypeRef *a4)
{
  blockBufferOut = 0;
  segPumpCopyMapEntryFromCache();
  if (v4)
  {
    return v4;
  }

  segPumpCreateMapMediaBBuf_cold_1(&v8);
  return v8;
}

uint64_t FigCPEProtectorCreateCryptor(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(*(CMBaseObjectGetVTable() + 16) + 104);
  if (!v8)
  {
    return 4294954514;
  }

  return v8(a1, a2, 1, a3, a4);
}

void segPumpGetCryptorInfoFromBBuf(const void *a1, const __CFString *a2, void *a3, _DWORD *a4)
{
  *a4 = 0;
  v6 = CMGetAttachment(a1, a2, 0);
  *a3 = v6;
  if (v6)
  {
    v7 = v6;
    cf = 0;
    AllocatorForMedia = FigGetAllocatorForMedia();
    v9 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v9)
    {
      v10 = v9(v7, *MEMORY[0x1E69610E8], AllocatorForMedia, &cf);
      v11 = cf;
      if (!v10)
      {
        *a4 = FigCFNumberGetSInt64();
        v11 = cf;
      }

      if (v11)
      {
        CFRelease(v11);
      }
    }
  }
}

uint64_t segPumpMakeDataCallbackWithOSStatus(uint64_t a1, uint64_t *a2, const void *a3, uint64_t a4, unsigned int a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9, int a10, uint64_t a11, _DWORD *a12)
{
  cf = 0;
  FigCreateErrorForOSStatus(a10, &cf);
  v22 = *a7;
  v23 = *(a7 + 16);
  DataCallback = segPumpMakeDataCallback(a1, a2, a3, a4, a5, a6, &v22, a8, a9, cf, a11, a12);
  if (cf)
  {
    CFRelease(cf);
  }

  return DataCallback;
}

uint64_t segPumpFindSavedEntry(uint64_t a1, const void *a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a1 + 360);
  if (v4)
  {
    while (*(v4 + 24) != a3 || *(v4 + 32) != a4 || !FigCFHTTPCompareURLs(a2, *(v4 + 8)))
    {
      v4 = *v4;
      if (!v4)
      {
        return v4;
      }
    }

    if (*(v4 + 80))
    {
      v10 = FigGetUpTimeNanoseconds() - *(v4 + 72);
      v11 = *(a1 + 8);
      v12 = *(a1 + 352) - v11;
      v13 = *(a1 + 8160) * v11;
      if (v12 > v13)
      {
        v13 = v12;
      }

      if (v10 >= 1000000000 * v13)
      {
        segPumpFreeSavedEntry(a1, v4);
        return 0;
      }
    }
  }

  return v4;
}

uint64_t segPumpRetrieveNextIFrame(uint64_t a1, uint64_t a2)
{
  v36 = *MEMORY[0x1E69E9840];
  v4 = *(a2 + 392);
  v5 = *(a2 + 8904);
  v34 = 0.0;
  MediaEntryForTimeFromEnd = segPumpGetMediaEntryForTimeFromEnd(*(v4 + 56), 0, &v34, v5);
  v7 = 0;
  if (MediaEntryForTimeFromEnd)
  {
    while (1)
    {
      v8 = v34;
      v9 = *(a2 + 8968);
      if (v34 == v9)
      {
        goto LABEL_24;
      }

      if (v34 < v9)
      {
        v7 = MediaEntryForTimeFromEnd;
      }

      if (v8 + FigMediaSegmentSpecifierGetTimeInSeconds(MediaEntryForTimeFromEnd) > *(a2 + 8968))
      {
        break;
      }

      TimeInSeconds = FigMediaSegmentSpecifierGetTimeInSeconds(MediaEntryForTimeFromEnd);
      v34 = TimeInSeconds + v34;
      MediaEntryForTimeFromEnd = FigMediaSegmentSpecifierGetNextSegment(MediaEntryForTimeFromEnd);
      if (!MediaEntryForTimeFromEnd)
      {
        if (!v7)
        {
          goto LABEL_12;
        }

        goto LABEL_10;
      }
    }

    MediaEntryForTimeFromEnd = FigMediaSegmentSpecifierGetNextSegment(MediaEntryForTimeFromEnd);
    if (!v7)
    {
LABEL_12:
      if (MediaEntryForTimeFromEnd && v34 > *(a2 + 8984))
      {
        MediaEntryForTimeFromEnd = 0;
      }

      goto LABEL_15;
    }

LABEL_10:
    v11 = v34;
    if (v11 - FigMediaSegmentSpecifierGetTimeInSeconds(v7) < *(a2 + 8976))
    {
      v7 = 0;
    }

    goto LABEL_12;
  }

LABEL_15:
  v12 = *(a2 + 8960);
  if (v12 != 1)
  {
    if (v12 == 2)
    {
      v7 = MediaEntryForTimeFromEnd;
    }

    else if (MediaEntryForTimeFromEnd)
    {
      if (v7)
      {
        v13 = v34;
        v14 = v34 - *(a2 + 8968);
        if (v13 - FigMediaSegmentSpecifierGetTimeInSeconds(v7) - *(a2 + 8968) < v14)
        {
          MediaEntryForTimeFromEnd = v7;
        }
      }

      goto LABEL_24;
    }
  }

  MediaEntryForTimeFromEnd = v7;
  if (!v7)
  {
    segPumpRetrieveNextIFrame_cold_1(v35);
    return *v35;
  }

LABEL_24:
  if (FigMediaSegmentSpecifierGetMapSegmentSpecifier(MediaEntryForTimeFromEnd))
  {
    v35[0] = 0;
    MapSegmentSpecifier = FigMediaSegmentSpecifierGetMapSegmentSpecifier(MediaEntryForTimeFromEnd);
    result = segPumpIsMapEntryCached(a2, v4, MapSegmentSpecifier, v35, v23, v24, v25, v26);
    if (result)
    {
      return result;
    }

    if (!v35[0])
    {
      *(a2 + 8952) = 1;
    }
  }

  if (dword_1EAF16A30)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  ++*(v4 + 880);
  MediaFilePrivateData = segPumpGetMediaFilePrivateData(MediaEntryForTimeFromEnd, v15, v16, v17, v18, v19, v20, v21);
  MediaFilePrivateData[6] = 0;
  MediaFilePrivateData[7] = 0;
  v31 = *(v4 + 256);
  if (v31)
  {
    CFRelease(v31);
    *(v4 + 256) = 0;
  }

  result = segPumpFetchOrDispatchMediaSegment(a1, a2, v4, MediaEntryForTimeFromEnd, 0, 0, 0, v30);
  if (!result)
  {
    if (*(v4 + 248))
    {
      return 0;
    }

    else
    {
      result = FigMediaSegmentSpecifierGetContentKeySpecifier(MediaEntryForTimeFromEnd);
      if (result)
      {
        FigMediaSegmentSpecifierGetContentKeySpecifier(MediaEntryForTimeFromEnd);
        result = segPumpDoesCryptKeyRequireFetch();
        if (result)
        {
          v32 = *(v4 + 248);
          ContentKeySpecifier = FigMediaSegmentSpecifierGetContentKeySpecifier(MediaEntryForTimeFromEnd);
          *(v4 + 248) = ContentKeySpecifier;
          if (ContentKeySpecifier)
          {
            CFRetain(ContentKeySpecifier);
          }

          if (v32)
          {
            CFRelease(v32);
          }

          return segPumpSendCryptKeyRequest(a1, a2, v4, *(v4 + 248));
        }
      }
    }
  }

  return result;
}

const void *segPumpGetMediaEntryForTimeFromEnd(uint64_t a1, int a2, void *a3, double a4)
{
  if (FigMediaPlaylistGetPlaylistActiveDurationSecs(a1) < a4)
  {
    FigMediaPlaylistGetMediaSegmentSpecifiers(a1);
    FirstValue = FigCFArrayGetFirstValue();
LABEL_11:
    ValueAtIndex = FirstValue;
    goto LABEL_12;
  }

  if (a4 <= 0.0)
  {
    FigMediaPlaylistGetMediaSegmentSpecifiers(a1);
    FirstValue = FigCFArrayGetLastValue();
    goto LABEL_11;
  }

  v16 = 0;
  v17 = FigMediaPlaylistGetPlaylistActiveDurationSecs(a1) - a4;
  v18 = 0.0;
  while (1)
  {
    MediaSegmentSpecifiers = FigMediaPlaylistGetMediaSegmentSpecifiers(a1);
    if (MediaSegmentSpecifiers)
    {
      MediaSegmentSpecifiers = CFArrayGetCount(MediaSegmentSpecifiers);
    }

    if (v16 >= MediaSegmentSpecifiers)
    {
      return 0;
    }

    v20 = FigMediaPlaylistGetMediaSegmentSpecifiers(a1);
    ValueAtIndex = CFArrayGetValueAtIndex(v20, v16);
    if (v18 + FigMediaSegmentSpecifierGetTimeInSeconds(ValueAtIndex) > v17)
    {
      break;
    }

    v18 = v18 + FigMediaSegmentSpecifierGetTimeInSeconds(ValueAtIndex);
    ++v16;
  }

  if (a2 && v18 < v17)
  {
    FirstValue = FigMediaSegmentSpecifierGetNextSegment(ValueAtIndex);
    goto LABEL_11;
  }

LABEL_12:
  if (a3 && ValueAtIndex)
  {
    *a3 = *(segPumpGetMediaFilePrivateData(ValueAtIndex, v9, v10, v11, v12, v13, v14, v15) + 4);
  }

  return ValueAtIndex;
}

uint64_t segPumpIsMapEntryCached(uint64_t a1, uint64_t a2, const void *a3, char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  MediaFilePrivateData = segPumpGetMediaFilePrivateData(a3, a2, a3, a4, a5, a6, a7, a8);
  if (MediaFilePrivateData[98])
  {
    v10 = 0;
    v11 = 1;
  }

  else
  {
    v13 = MediaFilePrivateData;
    segPumpCopyMapEntryFromCache();
    v10 = v14;
    v11 = 0;
    v13[98] = 0;
  }

  *a4 = v11;
  return v10;
}

double segPumpGetLiveBoundary(uint64_t a1, uint64_t a2)
{
  MinimumPrebufferReservation = segPumpGetMinimumPrebufferReservation(a1, a2);
  v4 = *(a1 + 8176);
  result = MinimumPrebufferReservation + v4;
  if (*(a1 + 8160) >= 2)
  {
    LODWORD(v4) = *(a1 + 8);
    v6 = *&v4;
    if (result > v6)
    {
      result = result - v6;
    }
  }

  v7 = *(a1 + 8168);
  if (v7 > 0.0 && (v7 > result || *(a1 + 336)))
  {
    v8 = *(a1 + 16);
    if (v8 <= 0.0)
    {
      LODWORD(v8) = *(a1 + 8);
      v8 = *&v8;
    }

    return v7 - v8;
  }

  return result;
}

void segPumpSetContentSteeringMonitor(uint64_t a1, CFTypeRef cf)
{
  v2 = *(a1 + 9752);
  *(a1 + 9752) = cf;
  if (cf)
  {
    CFRetain(cf);
  }

  if (v2)
  {

    CFRelease(v2);
  }
}

double segPumpSetExtraHoldbackFromClient(uint64_t a1, double a2)
{
  MinimumPrebufferReservation = segPumpGetMinimumPrebufferReservation(a1, 0);
  if (MinimumPrebufferReservation > a2)
  {
    segPumpSetExtraHoldbackFromClient_cold_1();
    a2 = MinimumPrebufferReservation;
  }

  result = a2 - MinimumPrebufferReservation;
  *(a1 + 8176) = a2 - MinimumPrebufferReservation;
  return result;
}

uint64_t segPumpAPIUnlockAndSendNotificationThenCheckAPIStatus(const void *a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  segPumpAPICheckStatus(DerivedStorage, a2);
  v6 = v5;
  segPumpUnlockAndSendAllPendingNotifications(*DerivedStorage);
  if (!v6)
  {
    if (!FigRetainProxyIsInvalidated())
    {
      CFRelease(a1);
      return 0;
    }

    segPumpAPIUnlockAndSendNotificationThenCheckAPIStatus_cold_1(&v8);
    v6 = v8;
  }

  CFRelease(a1);
  if (v6 == -15626)
  {
    return 0;
  }

  else
  {
    return v6;
  }
}

uint64_t segPumpStreamSyncTimeRolledPast(uint64_t a1, double a2, double a3)
{
  v4 = a3 - (*(a1 + 88) + a2);
  result = FigMediaPlaylistGetTargetDuration(*(a1 + 56));
  if (v4 >= result * -3.0)
  {
    result = FigMediaPlaylistGetTargetDuration(*(a1 + 56));
    if (v4 <= result * 3.0)
    {
      v6 = v4 + *(a1 + 88);
      *(a1 + 88) = v6;
      if (fabs(v4) > 2.22044605e-16)
      {
        v7 = *(a1 + 56);

        return segPumpPlaylistRecalculatePumpTimeOffsets(v7, v6);
      }
    }
  }

  return result;
}

double segPumpGetEstIndependentInterval(uint64_t a1)
{
  v2 = *(a1 + 392);
  v3 = *(v2 + 56);
  if (!v3)
  {
    return 0.0;
  }

  v5 = 0.0;
  if (FigMediaPlaylistHasIndependentSegments(v3))
  {
    LODWORD(v4) = *(a1 + 8);
    v5 = v4;
  }

  v6 = 0;
  v7 = -1;
  v8 = 0.0;
  v9 = 0.0;
  while (1)
  {
    MediaSegmentSpecifiers = FigMediaPlaylistGetMediaSegmentSpecifiers(*(v2 + 56));
    if (MediaSegmentSpecifiers)
    {
      MediaSegmentSpecifiers = CFArrayGetCount(MediaSegmentSpecifiers);
    }

    if (v6 >= MediaSegmentSpecifiers)
    {
      break;
    }

    v11 = FigMediaPlaylistGetMediaSegmentSpecifiers(*(v2 + 56));
    ValueAtIndex = CFArrayGetValueAtIndex(v11, v6);
    PartialSegments = FigMediaSegmentSpecifierGetPartialSegments(ValueAtIndex);
    v14 = 0;
    if (PartialSegments)
    {
LABEL_9:
      Count = CFArrayGetCount(PartialSegments);
      goto LABEL_11;
    }

    while (1)
    {
      Count = 0;
LABEL_11:
      if (v14 >= Count)
      {
        break;
      }

      v16 = CFArrayGetValueAtIndex(PartialSegments, v14);
      if (FigMediaSegmentSpecifierIsMarkedIndependent(v16))
      {
        v9 = 0.0;
        ++v7;
      }

      if ((v7 & 0x80000000) == 0)
      {
        v8 = v8 + FigMediaSegmentSpecifierGetTimeInSeconds(v16);
        v9 = v9 + FigMediaSegmentSpecifierGetTimeInSeconds(v16);
      }

      ++v14;
      if (PartialSegments)
      {
        goto LABEL_9;
      }
    }

    ++v6;
  }

  if (v7 > 0)
  {
    return (v8 - v9) / v7;
  }

  return v5;
}

uint64_t FigHTTPRequestSessionSendPingWithPongHandler(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = *(*(CMBaseObjectGetVTable() + 16) + 16);
  if (!v10)
  {
    return 4294954514;
  }

  return v10(a1, a2, a3, segPumpPongCallback, a4, 0, a5);
}

BOOL segPumpStreamHasActiveMediaRequest(uint64_t a1)
{
  v1 = *(a1 + 696);
  if (v1 && (*(v1 + 32) || *(v1 + 104)))
  {
    return 1;
  }

  v2 = **(a1 + 768);
  if (!v2)
  {
    return 0;
  }

  if (*(v2 + 32))
  {
    return 1;
  }

  return *(v2 + 104) != 0;
}

uint64_t segPumpPlaylistGetImputedLiveEdgeDate(uint64_t a1, double *a2)
{
  FigMediaPlaylistGetMediaSegmentSpecifiers(*(a1 + 56));
  LastValue = FigCFArrayGetLastValue();
  if (LastValue)
  {
    v4 = LastValue;
    PartialSegments = FigMediaSegmentSpecifierGetPartialSegments(LastValue);
    if (PartialSegments && CFArrayGetCount(PartialSegments) >= 1)
    {
      FigMediaSegmentSpecifierGetPartialSegments(v4);
      v6 = FigCFArrayGetLastValue();
      v4 = v6;
    }

    else
    {
      v6 = v4;
    }

    ImputedDate = FigMediaSegmentSpecifierGetImputedDate(v6);
    TimeInSeconds = FigMediaSegmentSpecifierGetTimeInSeconds(v4);
    result = 0;
    *a2 = ImputedDate + TimeInSeconds;
  }

  else
  {
    segPumpPlaylistGetImputedLiveEdgeDate_cold_1(&v10);
    return v10;
  }

  return result;
}

uint64_t segPumpConnectionGetPendingMediaDeadline(void *a1)
{
  if (!a1[4] || !a1[1])
  {
    return 0;
  }

  v1 = a1[5];
  return v1 + (FigMediaSegmentSpecifierGetTimeInSeconds(a1[1]) * 1000000000.0);
}

uint64_t segPumpTryIFrameFetch(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 8897))
  {
    *(a2 + 8897) = 0;
    segPumpDoNextStep();
    if (NextIFrame)
    {
      return segPumpMakeDataCallbackWithOSStatus(a1, *(a2 + 392), *(a2 + 176), 0, 0x20u, *(*(a2 + 392) + 304), MEMORY[0x1E6960C70], 0, 0, NextIFrame, 0, 0);
    }
  }

  else if (*(a2 + 8952))
  {
    *(a2 + 8952) = 0;
    NextIFrame = segPumpRetrieveNextIFrame(a1, a2);
    if (NextIFrame)
    {
      return segPumpMakeDataCallbackWithOSStatus(a1, *(a2 + 392), *(a2 + 176), 0, 0x20u, *(*(a2 + 392) + 304), MEMORY[0x1E6960C70], 0, 0, NextIFrame, 0, 0);
    }
  }

  return 0;
}

uint64_t segPumpTryToMatchDate(uint64_t a1, uint64_t a2, double *a3, double *a4, double *a5, CFAbsoluteTime a6, double a7)
{
  v55[29] = *MEMORY[0x1E69E9840];
  v55[0] = 0;
  v53 = 0;
  AllocatorForMedia = FigGetAllocatorForMedia();
  v15 = CFDateCreate(AllocatorForMedia, a6);
  *a5 = 0.0;
  v54 = 0;
  v23 = 0.0;
  if (FigMediaPlaylistUtilityIterateMedia(a2, &v54, &v53, v55))
  {
    v24 = -1.79769313e308;
    while (1)
    {
      v25 = v53;
      FigMediaSegmentSpecifierGetPartialSegments(v54);
      if (v25 == FigCFArrayGetFirstValue() && FigMediaSegmentSpecifierGetDateStamp(v54))
      {
        DateStamp = FigMediaSegmentSpecifierGetDateStamp(v54);
        v23 = MEMORY[0x19A8CCD90](DateStamp);
      }

      if (v23 != 0.0)
      {
        if (v24 == -1.79769313e308)
        {
          v24 = v23;
        }

        if (v23 <= a6 && v23 + FigMediaSegmentSpecifierGetTimeInSeconds(v55[0]) > a6)
        {
          goto LABEL_15;
        }

        v23 = v23 + FigMediaSegmentSpecifierGetTimeInSeconds(v55[0]);
      }

      if (!FigMediaPlaylistUtilityIterateMedia(a2, &v54, &v53, v55))
      {
        goto LABEL_15;
      }
    }
  }

  v24 = -1.79769313e308;
LABEL_15:
  if (v55[0])
  {
    v27 = *(segPumpGetMediaFilePrivateData(v55[0], v16, v17, v18, v19, v20, v21, v22) + 4);
    FigMediaPlaylistGetMediaSegmentSpecifiers(a2);
    FirstValue = FigCFArrayGetFirstValue();
    PlaylistActiveDurationSecs = v27 - *(segPumpGetMediaFilePrivateData(FirstValue, v29, v30, v31, v32, v33, v34, v35) + 4);
  }

  else
  {
    PlaylistActiveDurationSecs = FigMediaPlaylistGetPlaylistActiveDurationSecs(a2);
  }

  if (v55[0])
  {
    v37 = FigGetAllocatorForMedia();
    v38 = CFDateCreate(v37, v23);
    v39 = 3 * *(a1 + 8);
    if (PlaylistActiveDurationSecs <= a7 - v39 || PlaylistActiveDurationSecs >= v39 + a7)
    {
      if (dword_1EAF16A30)
      {
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      v55[0] = 0;
      v46 = 0.0;
      v51 = -1;
      PlaylistActiveDurationSecs = 0.0;
      if (!v38)
      {
        goto LABEL_43;
      }

LABEL_40:
      CFRelease(v38);
      if (!v15)
      {
        goto LABEL_45;
      }

LABEL_44:
      CFRelease(v15);
      goto LABEL_45;
    }

    v46 = v23 + FigMediaSegmentSpecifierGetTimeInSeconds(v55[0]) - a6;
    if (dword_1EAF16A30)
    {
      v47 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    v51 = 0;
    PlaylistActiveDurationSecs = PlaylistActiveDurationSecs + FigMediaSegmentSpecifierGetTimeInSeconds(v55[0]) - v46;
    if (v38)
    {
      goto LABEL_40;
    }

LABEL_43:
    if (!v15)
    {
      goto LABEL_45;
    }

    goto LABEL_44;
  }

  v42 = *(a1 + 16);
  if (v42 <= 0.0)
  {
    LODWORD(v42) = *(a1 + 8);
    v42 = *&v42;
  }

  if (v23 <= v42 + a6 + 2.22044605e-16)
  {
    v46 = 0.0;
    if (dword_1EAF16A30)
    {
      v48 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    v51 = 0;
    goto LABEL_43;
  }

  v43 = FigGetAllocatorForMedia();
  if (v24 <= a6)
  {
    v49 = CFDateCreate(v43, v23);
    if (dword_1EAF16A30)
    {
      v50 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    v46 = 0.0;
    if (v49)
    {
      CFRelease(v49);
    }

    v51 = 1;
  }

  else
  {
    v44 = CFDateCreate(v43, v24);
    if (dword_1EAF16A30)
    {
      v45 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    *a5 = v24 - a6;
    v46 = 0.0;
    if (v44)
    {
      CFRelease(v44);
    }

    v51 = -1;
  }

  PlaylistActiveDurationSecs = 0.0;
  if (v15)
  {
    goto LABEL_44;
  }

LABEL_45:
  if (!v51)
  {
    *a3 = PlaylistActiveDurationSecs;
    *a4 = v46;
  }

  return v51;
}

uint64_t segPumpGetLastDiscAndDateForTimeReadInPlaylist(uint64_t a1, double *a2, double *a3, double a4)
{
  v31 = 0;
  v32 = 0;
  if (a1)
  {
    v30 = 0;
    if (FigMediaPlaylistUtilityIterateMedia(a1, &v30, &v31, &v32))
    {
      v15 = 0.0;
      v16 = 0.0;
      v17 = 0.0;
      while (1)
      {
        MediaFilePrivateData = segPumpGetMediaFilePrivateData(v32, v8, v9, v10, v11, v12, v13, v14);
        v19 = v31;
        FigMediaSegmentSpecifierGetPartialSegments(v30);
        if (v19 == FigCFArrayGetFirstValue() && FigMediaSegmentSpecifierGetDateStamp(v30))
        {
          DateStamp = FigMediaSegmentSpecifierGetDateStamp(v30);
          v15 = MEMORY[0x19A8CCD90](DateStamp);
        }

        if (FigMediaSegmentSpecifierIsDiscontinuity(v32) && MediaFilePrivateData[74])
        {
          v16 = v17 + FigMediaSegmentSpecifierGetTimeInSeconds(v32) * 0.5;
        }

        if (v17 + FigMediaSegmentSpecifierGetTimeInSeconds(v32) > a4)
        {
          break;
        }

        TimeInSeconds = FigMediaSegmentSpecifierGetTimeInSeconds(v32);
        if (v15 != 0.0)
        {
          v15 = v15 + FigMediaSegmentSpecifierGetTimeInSeconds(v32);
        }

        v17 = v17 + TimeInSeconds;
        if (!FigMediaPlaylistUtilityIterateMedia(a1, &v30, &v31, &v32))
        {
          goto LABEL_31;
        }
      }

      v22 = a4 - v17;
      if (v15 == 0.0)
      {
        v34 = 0;
        v35 = 0;
        v33 = 0;
        if (FigMediaPlaylistUtilityIterateMedia(a1, &v33, &v34, &v35))
        {
          v23 = 0.0;
          while (1)
          {
            v24 = v34;
            FigMediaSegmentSpecifierGetPartialSegments(v33);
            if (v24 == FigCFArrayGetFirstValue())
            {
              if (FigMediaSegmentSpecifierGetDateStamp(v33))
              {
                break;
              }
            }

            v23 = v23 + FigMediaSegmentSpecifierGetTimeInSeconds(v35);
            if (!FigMediaPlaylistUtilityIterateMedia(a1, &v33, &v34, &v35))
            {
              goto LABEL_22;
            }
          }

          v25 = FigMediaSegmentSpecifierGetDateStamp(v33);
          v26 = MEMORY[0x19A8CCD90](v25) - v23;
          if (v26 == 0.0)
          {
            v15 = v26;
          }

          else
          {
            v15 = v17 + v22 + v26;
          }
        }

        else
        {
LABEL_22:
          v15 = 0.0;
        }
      }

      else
      {
        v15 = v22 + v15;
      }

      AllocatorForMedia = FigGetAllocatorForMedia();
      v28 = CFDateCreate(AllocatorForMedia, v15);
      if (v16 >= a4 + 2.0)
      {
        v16 = a4 + 2.0;
      }

      if (v28)
      {
        CFRelease(v28);
      }
    }

    else
    {
      v16 = 0.0;
      v15 = 0.0;
    }

LABEL_31:
    if (a2)
    {
      *a2 = v16;
    }

    result = 0;
    if (a3)
    {
      *a3 = v15;
    }
  }

  else
  {
    segPumpGetLastDiscAndDateForTimeReadInPlaylist_cold_1(&v35);
    return v35;
  }

  return result;
}

void segPumpClearSuggestedAlternate(void *a1, int a2)
{
  if (a1[1051])
  {
    if (a1[1220])
    {
      v3 = a1[1216];
      if (v3)
      {
        FigAlternateSelectionBossRemoveFilter(v3, @"PartialCache");
        if (a2)
        {
          FigAlternateSelectionBossApplyFilters(a1[1216]);
        }
      }
    }
  }

  v5 = a1[1052];
  if (v5)
  {
    CFRelease(v5);
    a1[1052] = 0;
  }

  v6 = a1[1051];
  if (v6)
  {
    CFRelease(v6);
    a1[1051] = 0;
  }
}

const __CFArray *segPumpResetAllMediaFilePrivateDataForStream(uint64_t a1)
{
  result = *(a1 + 56);
  if (result)
  {
    for (i = 0; ; ++i)
    {
      MediaSegmentSpecifiers = FigMediaPlaylistGetMediaSegmentSpecifiers(result);
      if (MediaSegmentSpecifiers)
      {
        MediaSegmentSpecifiers = CFArrayGetCount(MediaSegmentSpecifiers);
      }

      if (i >= MediaSegmentSpecifiers)
      {
        break;
      }

      v5 = FigMediaPlaylistGetMediaSegmentSpecifiers(*(a1 + 56));
      ValueAtIndex = CFArrayGetValueAtIndex(v5, i);
      MediaFilePrivateData = segPumpGetMediaFilePrivateData(ValueAtIndex, v7, v8, v9, v10, v11, v12, v13);
      if (!MediaFilePrivateData[96])
      {
        *(MediaFilePrivateData + 6) = 0;
        *(MediaFilePrivateData + 7) = 0;
        *(MediaFilePrivateData + 71) = 0;
        *(MediaFilePrivateData + 8) = 0;
        *(MediaFilePrivateData + 14) = 0;
        *(MediaFilePrivateData + 15) = 0;
        PartialSegments = FigMediaSegmentSpecifierGetPartialSegments(ValueAtIndex);
        v16 = 0;
        if (PartialSegments)
        {
LABEL_9:
          Count = CFArrayGetCount(PartialSegments);
          goto LABEL_11;
        }

        while (1)
        {
          Count = 0;
LABEL_11:
          if (v16 >= Count)
          {
            break;
          }

          v18 = CFArrayGetValueAtIndex(PartialSegments, v16);
          v26 = segPumpGetMediaFilePrivateData(v18, v19, v20, v21, v22, v23, v24, v25);
          *(v26 + 7) = 0;
          *(v26 + 8) = 0;
          *(v26 + 6) = 0;
          *(v26 + 71) = 0;
          ++v16;
          *(v26 + 14) = 0;
          *(v26 + 15) = 0;
          if (PartialSegments)
          {
            goto LABEL_9;
          }
        }
      }

      result = *(a1 + 56);
    }

    for (j = 0; ; ++j)
    {
      result = FigMediaPlaylistGetMapSegmentSpecifiers(*(a1 + 56));
      if (result)
      {
        result = CFArrayGetCount(result);
      }

      if (j >= result)
      {
        break;
      }

      MapSegmentSpecifiers = FigMediaPlaylistGetMapSegmentSpecifiers(*(a1 + 56));
      v29 = CFArrayGetValueAtIndex(MapSegmentSpecifiers, j);
      v37 = segPumpGetMediaFilePrivateData(v29, v30, v31, v32, v33, v34, v35, v36);
      if (!v37[96])
      {
        *(v37 + 6) = 0;
        *(v37 + 7) = 0;
        *(v37 + 71) = 0;
        *(v37 + 8) = 0;
        *(v37 + 14) = 0;
        *(v37 + 15) = 0;
      }
    }
  }

  return result;
}

void *segPumpGetAlternateEntryFromURLForCacheLookup(void *a1, const void *a2, uint64_t a3)
{
  v3 = a1[1035];
  if (v3)
  {
    while (1)
    {
      v9 = 0;
      v10 = 0;
      FigAlternateGetRenditionInfoForMediaType(v3[1], 1986618469, a1[1072], a1[1073], a1[1074], 1, &v9, 0, &v10);
      v7 = FigCFHTTPCreateURLString(v10);
      if (CFEqual(v7, a2) || a3 && FigCFEqual())
      {
        break;
      }

      if (v7)
      {
        CFRelease(v7);
      }

      v3 = *v3;
      if (!v3)
      {
        return v3;
      }
    }

    if (v7)
    {
      CFRelease(v7);
    }
  }

  return v3;
}

void segPumpCryptKeyPrivateDataFinalize(void *a1)
{
  v2 = a1[2];
  if (v2)
  {
    CFRelease(v2);
    a1[2] = 0;
  }

  v3 = a1[4];
  if (v3)
  {
    CFRelease(v3);
    a1[4] = 0;
  }

  v4 = a1[3];
  if (v4)
  {
    FigCryptDispose(v4);
    a1[3] = 0;
  }

  v5 = a1[5];
  if (v5)
  {
    CFRelease(v5);
    a1[5] = 0;
  }
}

void segPumpKeyRequestDidUpdateContentKeyBossToNewBoss(const void *a1, uint64_t a2)
{
  v7 = *MEMORY[0x1E69E9840];
  if (_os_feature_enabled_impl())
  {
    segPumpLockAndCopyPumpFromRetainProxy();
    if (!v4)
    {
      if (dword_1EAF16A30)
      {
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      v6 = MEMORY[0x25D0];
      MEMORY[0x25D0] = a1;
      if (a1)
      {
        CFRetain(a1);
      }

      if (v6)
      {
        CFRelease(v6);
      }
    }

    segPumpUnlockAndSendAllPendingNotifications(a2);
  }
}

uint64_t FigContentKeySessionCopyCryptor(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(*(CMBaseObjectGetVTable() + 16) + 16);
  if (!v8)
  {
    return 4294954514;
  }

  return v8(a1, a2, a3, 1, a4);
}

uint64_t segPumpGetStreamFromCryptHTTPRequest(void *a1, uint64_t a2, int a3)
{
  result = a1[49];
  if (*(result + 560) != a2 || *(result + 624) != a3)
  {
    result = a1[51];
    if (*(result + 560) != a2 || *(result + 624) != a3)
    {
      result = a1[53];
      if (*(result + 560) != a2 || *(result + 624) != a3)
      {
        result = a1[50];
        if (*(result + 560) != a2 || *(result + 624) != a3)
        {
          result = a1[52];
          if (*(result + 560) != a2 || *(result + 624) != a3)
          {
            v5 = a1[54];
            if (*(v5 + 560) == a2)
            {
              if (*(v5 + 624) == a3)
              {
                return v5;
              }

              else
              {
                return 0;
              }
            }

            else
            {
              return 0;
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t segPumpIsCryptorReadyToDecrypt(uint64_t a1)
{
  v2 = *MEMORY[0x1E695E4C0];
  cf = *MEMORY[0x1E695E4C0];
  AllocatorForMedia = FigGetAllocatorForMedia();
  v4 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v4)
  {
    v7 = 0;
    if (!v2)
    {
      return v7;
    }

LABEL_11:
    CFRelease(v2);
    return v7;
  }

  v5 = v4(a1, *MEMORY[0x1E6961118], AllocatorForMedia, &cf);
  v2 = cf;
  if (v5)
  {
    v6 = 0;
  }

  else
  {
    v6 = *MEMORY[0x1E695E4D0] == cf;
  }

  v7 = v6;
  if (cf)
  {
    goto LABEL_11;
  }

  return v7;
}

uint64_t *segPumpGetBytesInTransit(uint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (result)
  {
    v9 = result;
    if (result[4] || result[13])
    {
      result = result[1];
      if (!result)
      {
        return result;
      }

      if (!*(segPumpGetMediaFilePrivateData(result, a2, a3, a4, a5, a6, a7, a8) + 73))
      {
        v10 = v9[32];
        if (v10)
        {
          return (v10 - v9[28]);
        }

        if (a2)
        {
          ExpectedAverageBitrate = FigAlternateGetExpectedAverageBitrate(*(a2 + 8));
          return (FigMediaSegmentSpecifierGetTimeInSeconds(v9[1]) * ExpectedAverageBitrate * 0.125);
        }
      }
    }

    return 0;
  }

  return result;
}

uint64_t segPumpSetAlternatesInPenaltyBox(uint64_t a1, const __CFArray *cf)
{
  if (*(a1 + 8360))
  {
    if (cf && (v4 = CFGetTypeID(cf), v4 == CFArrayGetTypeID()))
    {
      Count = CFArrayGetCount(cf);
      v6 = *(a1 + 8328);
      if (v6 && (v18.location = 0, v18.length = Count, CFArrayContainsValue(cf, v18, *(v6 + 8))))
      {
        segPumpSetAlternatesInPenaltyBox_cold_1(&v15);
        return v15;
      }

      else
      {
        v7 = *(a1 + 8296);
        if (v7)
        {
          do
          {
            v8 = *v7;
            v19.location = 0;
            v19.length = Count;
            if (!CFArrayContainsValue(cf, v19, v7[1]))
            {
              MoveAlternateFromPenaltyBox();
            }

            v7 = v8;
          }

          while (v8);
        }

        v9 = *(a1 + 8280);
        if (v9)
        {
          do
          {
            v10 = *v9;
            v20.location = 0;
            v20.length = Count;
            if (CFArrayContainsValue(cf, v20, v9[1]))
            {
              CurrentErrorCategory = FigAlternateGetCurrentErrorCategory(v9[1]);
              v12 = CurrentErrorCategory;
              v13 = (CurrentErrorCategory >> 2) & 1;
              FigAlternateSetErrorCategory(v9[1], 0);
              MoveAlternateFromListWithNoNotification(a1, (a1 + 8280), v9, v13, v12 & 1);
            }

            v9 = v10;
          }

          while (v10);
        }

        return 0;
      }
    }

    else
    {
      segPumpSetAlternatesInPenaltyBox_cold_2(&v16);
      return v16;
    }
  }

  else
  {
    segPumpSetAlternatesInPenaltyBox_cold_3(&v17);
    return v17;
  }
}

uint64_t segPumpSetMetricEventTimeline(uint64_t a1, CFTypeRef cf)
{
  v4 = *(a1 + 9200);
  *(a1 + 9200) = cf;
  if (cf)
  {
    CFRetain(cf);
  }

  if (v4)
  {
    CFRelease(v4);
  }

  v5 = 0;
  if (cf)
  {
    v6 = *(a1 + 9208);
    if (v6)
    {
      segPumpSetMetricEventTimeline_cold_1(v6, (a1 + 9208), a1 + 9200, &v8);
      return v8;
    }
  }

  return v5;
}

void segPumpCalculateStreamDurationAndBytesCached(uint64_t a1, void *a2, uint64_t a3, __n128 a4)
{
  Seconds = 0.0;
  if (*(a3 + 12))
  {
    v7 = *a3;
    Seconds = CMTimeGetSeconds(&v7);
  }

  if (*(a1 + 330))
  {
    if (!*(a1 + 9834))
    {
      FigStreamingCacheGetMediaStreamDurationAndBytesInCacheAtTime(*(a1 + 296), a2[4], *a2, a2 + 153, a2 + 154, Seconds);
    }
  }
}

void segPumpStreamNeedsMore(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v10 = *MEMORY[0x1E69E9840];
  *(a3 + 870) = 0;
  if (*(a3 + 869) || *(a3 + 1185))
  {
    *(a3 + 869) = 0;
    *(a3 + 1185) = 0;
    if (*(a2 + 8868))
    {
      if (a3[2])
      {
        if (dword_1EAF16A30)
        {
          os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
          fig_log_call_emit_and_clean_up_after_send_and_compose();
        }

        v7 = a3[7];
        if (v7 && (v8 = a3[132], v9 = *(a2 + 8), !FigMediaPlaylistHasEndTag(v7)) && (FigGetUpTimeNanoseconds() >= v8 + 1000000000 * v9 || *(a3 + 1184)) || !segPumpDeliverNextMediaForSingleStream(a1, a2, a3))
        {
          segPumpReadOrScheduleIndexFileRead();
        }
      }
    }
  }
}

void segPumpGetLastKnownContinuousDateInPlaylist(uint64_t a1, double *a2, double a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v20 = 0;
  v21 = 0;
  if (!a1)
  {
    segPumpGetLastKnownContinuousDateInPlaylist_cold_1(0, a2, a4, a5, a6, a7, a8, a9, v18, v19, SHIDWORD(v19), v20);
    return;
  }

  v19 = 0;
  if (!FigMediaPlaylistUtilityIterateMedia(a1, &v19, &v20, &v21))
  {
    v13 = 0.0;
    if (a2)
    {
      goto LABEL_20;
    }

    return;
  }

  v12 = 0.0;
  v13 = 0.0;
  while (1)
  {
    DateStamp = FigMediaSegmentSpecifierGetDateStamp(v19);
    TimeInSeconds = FigMediaSegmentSpecifierGetTimeInSeconds(v21);
    v16 = v20;
    FigMediaSegmentSpecifierGetPartialSegments(v19);
    v17 = v16 != FigCFArrayGetFirstValue() || DateStamp == 0;
    if (!v17 && MEMORY[0x19A8CCD90](DateStamp) != 0.0)
    {
      v12 = MEMORY[0x19A8CCD90](DateStamp);
    }

    if (v12 == 0.0)
    {
      goto LABEL_16;
    }

    if (v12 >= a3)
    {
      break;
    }

    v12 = TimeInSeconds + v12;
LABEL_16:
    if (!FigMediaPlaylistUtilityIterateMedia(a1, &v19, &v20, &v21))
    {
      goto LABEL_17;
    }
  }

  if (v13 == 0.0 || vabdd_f64(v12, v13) < 0.1)
  {
    v13 = TimeInSeconds + v12;
    v12 = TimeInSeconds + v12;
    goto LABEL_16;
  }

LABEL_17:
  if (!a2)
  {
    return;
  }

LABEL_20:
  *a2 = v13;
}

uint64_t segPumpGetRequiredBandwidthForCurrentStreamingAlternate(uint64_t result)
{
  v1 = result;
  v2 = *(result + 8328);
  if (!v2)
  {
    goto LABEL_6;
  }

  if (!*(result + 296))
  {
    return segPumpStreamBitRateRequiredForStream(v1, *(v1 + 392));
  }

  result = FigAlternateGetLastKnownValueForIsFullyCached(*(v2 + 8));
  if (result)
  {
    return result;
  }

  if (*(v1 + 8328))
  {
    return segPumpStreamBitRateRequiredForStream(v1, *(v1 + 392));
  }

LABEL_6:
  v3 = 0;
  v4 = 0;
  do
  {
    v5 = *(v1 + 392 + v3);
    if (*(v5 + 16))
    {
      v6 = *(v5 + 1100);
      if (!v6)
      {
        return result;
      }

      v4 += v6;
    }

    v3 += 16;
  }

  while (v3 != 48);
  return result;
}

double *segPumpGetStartupRequirements(double *result, unsigned int a2, double *a3, double *a4, double *a5, double *a6, double *a7, double a8)
{
  if (a2 >= 0xF)
  {
    v8 = 15;
  }

  else
  {
    v8 = a2;
  }

  v9 = result[1031] * v8;
  v10 = result[2];
  v11 = v9;
  if (v10 >= 0.0)
  {
    v12 = result[1021];
    v13 = v10 + v10;
    if (v13 >= v12)
    {
      v13 = result[1021];
    }

    if (v12 >= 0.0)
    {
      v11 = v13;
    }

    else
    {
      v11 = result[1031] * v8;
    }
  }

  v14 = result[1032] * v8;
  if (v14 < 1.0)
  {
    v14 = 1.0;
  }

  if (v14 > v9)
  {
    v14 = result[1031] * v8;
  }

  if (a3)
  {
    *a3 = a8;
  }

  if (a4)
  {
    v15 = result[1111];
    v16 = result[1033] * a8 * v15;
    v17 = result[1034];
    v18 = v17 + a8 * v15;
    if (v16 < v18)
    {
      v18 = v16;
    }

    if (v17 == 0.0)
    {
      v18 = v16;
    }

    *a4 = v18;
  }

  if (a5)
  {
    *a5 = v9;
  }

  if (a6)
  {
    *a6 = v14;
  }

  if (a7)
  {
    *a7 = v11;
  }

  return result;
}

double segPumpGetLocalBitrateForSubStream(uint64_t a1, uint64_t a2, uint64_t a3, CMTime *a4, _OWORD *a5)
{
  v9 = *(a1 + 392 + 16 * a2 + 8);
  if (!*(v9 + 16))
  {
    v9 = *(a1 + 392 + 16 * a2);
  }

  v54 = *MEMORY[0x1E6960C70];
  *&v60.value = *MEMORY[0x1E6960C70];
  v10 = *(MEMORY[0x1E6960C70] + 16);
  v60.epoch = v10;
  v11 = *(v9 + 56);
  v12 = -1.0;
  v13 = 0.0;
  if (v11)
  {
    MediaSegmentSpecifiers = FigMediaPlaylistGetMediaSegmentSpecifiers(v11);
    if (MediaSegmentSpecifiers)
    {
      if (CFArrayGetCount(MediaSegmentSpecifiers) >= 1)
      {
        *&time.start.value = *a3;
        time.start.epoch = *(a3 + 16);
        Seconds = CMTimeGetSeconds(&time.start);
        *&time.start.value = *(a3 + 24);
        time.start.epoch = *(a3 + 40);
        v16 = CMTimeGetSeconds(&time.start);
        v17 = 0;
        while (1)
        {
          Count = FigMediaPlaylistGetMediaSegmentSpecifiers(*(v9 + 56));
          if (Count)
          {
            Count = CFArrayGetCount(Count);
          }

          if (v17 >= Count)
          {
            break;
          }

          v19 = FigMediaPlaylistGetMediaSegmentSpecifiers(*(v9 + 56));
          ValueAtIndex = CFArrayGetValueAtIndex(v19, v17);
          MediaFilePrivateData = segPumpGetMediaFilePrivateData(ValueAtIndex, v21, v22, v23, v24, v25, v26, v27);
          v29 = MediaFilePrivateData[4];
          ++v17;
          if (v29 + FigMediaSegmentSpecifierGetTimeInSeconds(ValueAtIndex) > Seconds)
          {
            v30 = MediaFilePrivateData[4];
            TimeInSeconds = FigMediaSegmentSpecifierGetTimeInSeconds(ValueAtIndex);
            CMTimeMakeWithSeconds(&v60, v30 + TimeInSeconds + 0.001, 1000);
            if (ValueAtIndex)
            {
              v32 = v16 + Seconds - v30;
              if (v32 > 0.0)
              {
                v12 = -1.0;
                do
                {
                  v33 = 0;
                  v34 = 0.0;
                  NextSegment = ValueAtIndex;
                  do
                  {
                    v36 = FigMediaSegmentSpecifierGetTimeInSeconds(NextSegment);
                    if (FigMediaSegmentSpecifierGetBitRate(NextSegment) <= 0.0)
                    {
                      v46 = 8 * *(segPumpGetMediaFilePrivateData(NextSegment, v37, v38, v39, v40, v41, v42, v43) + 5);
                    }

                    else
                    {
                      BitRate = FigMediaSegmentSpecifierGetBitRate(NextSegment);
                      v45 = BitRate * FigMediaSegmentSpecifierGetTimeInSeconds(NextSegment);
                      v46 = v45;
                    }

                    v34 = v34 + v36;
                    LODWORD(v45) = *(a1 + 8);
                    v47 = *&v45;
                    if (v34 > v47 * 1.5 + 0.5)
                    {
                      break;
                    }

                    v33 += v46;
                    if (v34 >= v47 * 0.5 && v12 <= v33 / v34)
                    {
                      v12 = v33 / v34;
                    }

                    NextSegment = FigMediaSegmentSpecifierGetNextSegment(NextSegment);
                  }

                  while (NextSegment);
                  v48 = ValueAtIndex[4];
                  v49 = FigMediaSegmentSpecifierGetTimeInSeconds(ValueAtIndex);
                  v50 = FigMediaSegmentSpecifierGetTimeInSeconds(ValueAtIndex);
                  v51 = FigMediaSegmentSpecifierGetNextSegment(ValueAtIndex);
                  if (!v51)
                  {
                    break;
                  }

                  ValueAtIndex = v51;
                  v32 = v32 - v50;
                }

                while (v32 > 0.0);
                v13 = v48 + v49;
              }
            }

            goto LABEL_27;
          }
        }
      }
    }
  }

  v30 = 0.0;
LABEL_27:
  if (a4)
  {
    *a4 = v60;
  }

  if (a5)
  {
    memset(&v59, 0, sizeof(v59));
    CMTimeMakeWithSeconds(&v59, v30, 1000);
    memset(&v58, 0, sizeof(v58));
    if (v30 >= v13)
    {
      *&v58.value = v54;
      v58.epoch = v10;
    }

    else
    {
      CMTimeMakeWithSeconds(&v58, v13 - v30, 1000);
    }

    start = v59;
    duration = v58;
    CMTimeRangeMake(&time, &start, &duration);
    v52 = *&time.start.epoch;
    *a5 = *&time.start.value;
    a5[1] = v52;
    a5[2] = *&time.duration.timescale;
  }

  return v12;
}

const __CFArray *segPumpStreamSnapToSegmentBoundary@<X0>(uint64_t a1@<X0>, CMTime *a2@<X1>, uint64_t a3@<X2>, CMTime *a4@<X8>)
{
  v7 = MEMORY[0x1E6960C70];
  v26 = *MEMORY[0x1E6960C70];
  *&a4->value = *MEMORY[0x1E6960C70];
  v8 = *(v7 + 16);
  a4->epoch = v8;
  time = *a2;
  Seconds = CMTimeGetSeconds(&time);
  *(a3 + 16) = v8;
  *a3 = v26;
  result = *(a1 + 56);
  if (result)
  {
    for (i = 0; ; ++i)
    {
      result = FigMediaPlaylistGetMediaSegmentSpecifiers(result);
      if (result)
      {
        result = CFArrayGetCount(result);
      }

      if (i >= result)
      {
        break;
      }

      MediaSegmentSpecifiers = FigMediaPlaylistGetMediaSegmentSpecifiers(*(a1 + 56));
      ValueAtIndex = CFArrayGetValueAtIndex(MediaSegmentSpecifiers, i);
      MediaFilePrivateData = segPumpGetMediaFilePrivateData(ValueAtIndex, v14, v15, v16, v17, v18, v19, v20);
      v22 = MediaFilePrivateData[4];
      if (v22 <= Seconds)
      {
        v23 = MediaFilePrivateData;
        if (Seconds <= v22 + FigMediaSegmentSpecifierGetTimeInSeconds(ValueAtIndex))
        {
          v24 = v23[4];
          if (Seconds - v24 > FigMediaSegmentSpecifierGetTimeInSeconds(ValueAtIndex) * 0.5)
          {
            v24 = v24 + FigMediaSegmentSpecifierGetTimeInSeconds(ValueAtIndex);
            ValueAtIndex = FigMediaSegmentSpecifierGetNextSegment(ValueAtIndex);
          }

          result = CMTimeMakeWithSeconds(a4, v24 + 0.000001, 1000000);
          if (ValueAtIndex)
          {
            TimeInSeconds = FigMediaSegmentSpecifierGetTimeInSeconds(ValueAtIndex);
            result = CMTimeMakeWithSeconds(&time, v24 + TimeInSeconds + 0.000001, 1000000);
            *a3 = time;
          }

          return result;
        }
      }

      result = *(a1 + 56);
    }
  }

  return result;
}

void segPumpCreateSafeBandwidthCoefficientsForBaseStoreBagKey(uint64_t a1, uint64_t a2, __CFArray **a3)
{
  Mutable = CFArrayCreateMutable(*(a1 + 56), 0, MEMORY[0x1E695E9C0]);
  if (Mutable)
  {
    v14 = Mutable;
    v15 = 0;
    while (1)
    {
      v16 = CFStringCreateWithFormat(*(a1 + 56), 0, @"%@%d", a2, v15);
      if (!v16)
      {
        segPumpCreateSafeBandwidthCoefficientsForBaseStoreBagKey_cold_2(0, v17, v18, v19, v20, v21, v22, v23, v29, v31, SHIDWORD(v31), v32);
        goto LABEL_12;
      }

      v24 = v16;
      v25 = FigRCLCopyCFType(*(a1 + 9320), v16);
      if (!v25)
      {
        break;
      }

      v26 = v25;
      v27 = CFGetTypeID(v25);
      if (v27 != CFNumberGetTypeID())
      {
        segPumpCreateSafeBandwidthCoefficientsForBaseStoreBagKey_cold_1();
        goto LABEL_12;
      }

      CFArrayAppendValue(v14, v26);
      CFRelease(v24);
      CFRelease(v26);
      if (++v15 == 16)
      {
        v24 = 0;
        break;
      }
    }

    if (CFArrayGetCount(v14) >= 1)
    {
      *a3 = v14;
      v14 = 0;
    }

    if (v24)
    {
      CFRelease(v24);
    }

LABEL_12:
    if (v14)
    {

      CFRelease(v14);
    }
  }

  else
  {
    segPumpCreateSafeBandwidthCoefficientsForBaseStoreBagKey_cold_3(0, v7, v8, v9, v10, v11, v12, v13, v28, v30, SHIDWORD(v30), v32);
  }
}

void segPumpStreamClearStatistics(uint64_t a1)
{
  *(a1 + 952) = 0;
  *(a1 + 1120) = 0;
  *(a1 + 1136) = 0u;
  for (i = *(a1 + 680); i; i = *i)
  {
    v2 = i[22];
    if (v2)
    {
      CFRelease(v2);
      i[22] = 0;
    }
  }
}

void OUTLINED_FUNCTION_8_0(uint64_t a1@<X8>)
{
  *(v3 + 4) = v2;
  *(v3 + 14) = a1;
  *(v3 + 34) = v1;
}

uint64_t OUTLINED_FUNCTION_16_1(int a1)
{
  if (a1)
  {
    return v1;
  }

  else
  {
    return v1 & 0xFFFFFFFE;
  }
}

uint64_t OUTLINED_FUNCTION_28_1(int a1)
{
  if (a1)
  {
    return v1;
  }

  else
  {
    return v1 & 0xFFFFFFFE;
  }
}

void *OUTLINED_FUNCTION_30_1(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, __n128 a9, __n128 a43, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, char __src, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, char a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, __n128 a44, uint64_t a45)
{
  a44 = a9;

  return memcpy(&a45, &__src, 0x70uLL);
}

double OUTLINED_FUNCTION_38_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  fig_log_call_emit_and_clean_up_after_send_and_compose();
  return result;
}

double OUTLINED_FUNCTION_42_1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  fig_log_call_emit_and_clean_up_after_send_and_compose();
  return result;
}

BOOL OUTLINED_FUNCTION_51_1(NSObject *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, int a30, int a31, int a32, __int16 a33, char a34, os_log_type_t type)
{

  return os_log_type_enabled(a1, type);
}

Float64 OUTLINED_FUNCTION_72_1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, CMTime *time, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, __int128 timea)
{
  timea = *v40;
  *(v39 + 16) = *(v40 + 16);

  return CMTimeGetSeconds(&timea);
}

uint64_t OUTLINED_FUNCTION_73_1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, int a27, uint64_t a28, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{

  return fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
}

uint64_t OUTLINED_FUNCTION_74_1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, int a34, __int16 a35, char a36, char a37, int a38)
{

  return fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
}

uint64_t OUTLINED_FUNCTION_90_0@<X0>(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, int a5, __int16 a6, char a7, char a8)
{
  *(v8 - 40) = a1;

  return fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
}

uint64_t OUTLINED_FUNCTION_107_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, int a20, char a21, __int16 a22, char a23)
{

  return fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
}

double OUTLINED_FUNCTION_108_1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  fig_log_call_emit_and_clean_up_after_send_and_compose();
  return result;
}

uint64_t OUTLINED_FUNCTION_115_1(int a1)
{
  if (a1)
  {
    return v1;
  }

  else
  {
    return v1 & 0xFFFFFFFE;
  }
}

BOOL OUTLINED_FUNCTION_116_0(NSObject *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, __int16 a12, char a13, os_log_type_t type, int a15)
{

  return os_log_type_enabled(a1, type);
}

uint64_t OUTLINED_FUNCTION_123_1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, char a30, int a31, int a32, __int16 a33, char a34, char a35)
{

  return fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
}

void *OUTLINED_FUNCTION_130_1@<X0>(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va1, a13);
  va_start(__srca, a13);
  __src = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  v19 = va_arg(va1, void);
  v20 = va_arg(va1, void);
  v21 = va_arg(va1, void);
  v22 = va_arg(va1, void);
  v23 = va_arg(va1, void);
  v24 = va_arg(va1, void);
  v25 = va_arg(va1, void);
  v26 = va_arg(va1, void);
  v27 = va_arg(va1, void);
  v28 = va_arg(va1, void);
  v29 = va_arg(va1, void);

  return memcpy((a1 + 56), __srca, 0x70uLL);
}

uint64_t OUTLINED_FUNCTION_138_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35)
{

  return CMBaseObjectGetVTable();
}

uint64_t OUTLINED_FUNCTION_141_1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, __int16 a20, char a21, char a22, char a23)
{

  return fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
}

double OUTLINED_FUNCTION_154_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10)
{

  return segPumpLockAndCopyPumpFromRetainProxy();
}

BOOL OUTLINED_FUNCTION_161_1(NSObject *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, int a20, os_log_type_t type, int a22)
{

  return os_log_type_enabled(a1, type);
}

CFDictionaryRef OUTLINED_FUNCTION_170_0@<X0>(const __CFAllocator *a1@<X1>, _OWORD *a2@<X8>)
{
  v4 = a2[1];
  *(v2 - 176) = *a2;
  *(v2 - 160) = v4;
  *(v2 - 144) = a2[2];

  return CMTimeRangeCopyAsDictionary((v2 - 176), a1);
}

uint64_t OUTLINED_FUNCTION_186_0(int a1)
{
  if (a1)
  {
    return v1;
  }

  else
  {
    return v1 & 0xFFFFFFFE;
  }
}

uint64_t OUTLINED_FUNCTION_192_1(uint64_t a1, uint64_t a2, double a3, double a4, double a5, double a6, double a7, double a8, double a9, double a10, double a11, double a12)
{

  return FigCFDictionarySetInt64();
}

uint64_t OUTLINED_FUNCTION_194_0(uint64_t a1, uint64_t a2, double a3, double a4, double a5, double a6, double a7, double a8, double a9, double a10, double a11, double a12, double a13)
{

  return FigCFDictionarySetInt64();
}

__n128 OUTLINED_FUNCTION_196_1()
{
  result = *v1;
  *(v0 + 16) = v1[1].n128_u64[0];
  return result;
}

__n128 OUTLINED_FUNCTION_208_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, __n128 *a40)
{
  result = *a40;
  v42 = (v40 - 256);
  *v42 = *a40;
  v42[1].n128_u64[0] = a40[1].n128_u64[0];
  return result;
}

void OUTLINED_FUNCTION_214_1(void *a1, uint64_t a2, const __CFURL **a3, uint64_t a4, const void *a5, const void *a6, uint64_t a7, uint64_t a8, uint64_t a9)
{

  segPumpAppendErrorLogEntry(a1, a2, a3, a4, a5, a6, 0, 0, a9, SHIDWORD(a9));
}

uint64_t OUTLINED_FUNCTION_215_1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, __int16 a15, char a16, char a17, int a18)
{

  return fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
}

uint64_t OUTLINED_FUNCTION_216_1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29, int a30, char a31)
{

  return fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
}

uint64_t OUTLINED_FUNCTION_217_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, char a47, int a48, char a49)
{

  return fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
}

double OUTLINED_FUNCTION_232_0()
{

  return FigMediaSegmentSpecifierGetTimeInSeconds(v0);
}

BOOL OUTLINED_FUNCTION_235_0(NSObject *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, int a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, os_log_type_t type)
{

  return os_log_type_enabled(a1, type);
}

BOOL OUTLINED_FUNCTION_236_0(NSObject *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, int a48, __int16 a49, char a50, os_log_type_t type, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, int a57)
{

  return os_log_type_enabled(a1, type);
}

BOOL OUTLINED_FUNCTION_237_0(NSObject *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, os_log_type_t type, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, int a29)
{

  return os_log_type_enabled(a1, type);
}

BOOL OUTLINED_FUNCTION_241_1(NSObject *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, os_log_type_t type, int a30, int a31)
{

  return os_log_type_enabled(a1, type);
}

BOOL OUTLINED_FUNCTION_242_1(NSObject *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, int a34, __int16 a35, char a36, os_log_type_t type, int a38)
{

  return os_log_type_enabled(a1, type);
}

BOOL OUTLINED_FUNCTION_243_1(NSObject *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, int a27, uint64_t a28, uint64_t a29, int a30, __int16 a31, char a32, os_log_type_t type)
{

  return os_log_type_enabled(a1, type);
}

BOOL OUTLINED_FUNCTION_245_1(NSObject *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, int a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, os_log_type_t type)
{

  return os_log_type_enabled(a1, type);
}

uint64_t OUTLINED_FUNCTION_252_1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, __int16 a19, char a20, char a21, int a22)
{

  return fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
}

uint64_t OUTLINED_FUNCTION_258_1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{

  return fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
}

uint64_t OUTLINED_FUNCTION_263_1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, __int16 a23, char a24, char a25, char a26)
{

  return fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
}

uint64_t OUTLINED_FUNCTION_268_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, int a48, __int16 a49, char a50, char a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, char a57)
{

  return fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
}

uint64_t OUTLINED_FUNCTION_288_1(int a1)
{
  if (a1)
  {
    return v1;
  }

  else
  {
    return v1 & 0xFFFFFFFE;
  }
}

uint64_t OUTLINED_FUNCTION_293_1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, __int16 a30, char a31, char a32, int a33)
{

  return fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
}

__n128 OUTLINED_FUNCTION_305_1()
{
  result = *v0;
  *(v1 + 16) = v0[1].n128_u64[0];
  return result;
}

double OUTLINED_FUNCTION_312_1()
{
  *(v0 + 9000) = 0;
  result = 0.0;
  *(v0 + 9024) = 0u;
  *(v0 + 9040) = 0u;
  *(v0 + 9056) = 0;
  return result;
}

float64x2_t OUTLINED_FUNCTION_336_0@<Q0>(uint64_t a1@<X8>, uint64_t a2@<D0>)
{
  v2 = (a1 + 712);
  result = vaddq_f64(*v2, vdupq_lane_s64(a2, 0));
  *v2 = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_344_1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{

  return FigCFDictionarySetInt64();
}

void *OUTLINED_FUNCTION_347_1()
{

  return malloc_type_malloc(0x48uLL, 0x10A00404BD41864uLL);
}

uint64_t OUTLINED_FUNCTION_348_1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, __int16 a26, char a27, char a28, char a29)
{

  return fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
}

uint64_t OUTLINED_FUNCTION_349_1()
{

  return CMBaseObjectGetVTable();
}

uint64_t OUTLINED_FUNCTION_350_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33)
{

  return CMBaseObjectGetVTable();
}

Float64 OUTLINED_FUNCTION_351_0@<D0>(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4)
{
  a4 = a1;

  return CMTimeGetSeconds(&a2);
}

uint64_t OUTLINED_FUNCTION_355_1()
{

  return CMBaseObjectGetVTable();
}

uint64_t OUTLINED_FUNCTION_356_1()
{

  return CMBaseObjectGetVTable();
}

__n128 OUTLINED_FUNCTION_397_1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __n128 a35, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, __n128 a36, unint64_t a37)
{
  result = a36;
  v37[7] = a36;
  v37[8].n128_u64[0] = a37;
  return result;
}

double OUTLINED_FUNCTION_419_1()
{
  *(v0 + 866) = 0;
  result = *(v1 + 88);
  *(v0 + 88) = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_427_1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{

  return fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
}

BOOL OUTLINED_FUNCTION_429_1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a28, uint64_t a30)
{
  v30 = *(v28 + 56);

  return FigMediaPlaylistUtilityIterateMedia(v30, &a30, &a28, &a26);
}

BOOL OUTLINED_FUNCTION_430_1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va2, a10);
  va_start(va1, a10);
  va_start(va, a10);
  v13 = va_arg(va1, void);
  va_copy(va2, va1);
  v15 = va_arg(va2, void);

  return FigMediaPlaylistUtilityIterateMedia(v10, va1, va, va2);
}

BOOL OUTLINED_FUNCTION_431_1(NSObject *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, __int16 a12, char a13, os_log_type_t type, int a15)
{

  return os_log_type_enabled(a1, type);
}

uint64_t OUTLINED_FUNCTION_432_1()
{
  v3 = *(*(v0 + 16 * *v1) + 56);

  return FigMediaPlaylistGetRenditionReportSpecifiers(v3);
}

BOOL OUTLINED_FUNCTION_433_1(NSObject *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, int a20, os_log_type_t type, int a22)
{

  return os_log_type_enabled(a1, type);
}

BOOL OUTLINED_FUNCTION_434_1(NSObject *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, __int16 a11, char a12, os_log_type_t type, int a14)
{

  return os_log_type_enabled(a1, type);
}

BOOL OUTLINED_FUNCTION_435_1(NSObject *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, __int16 a20, char a21, os_log_type_t type, int a23)
{

  return os_log_type_enabled(a1, type);
}

BOOL OUTLINED_FUNCTION_436_1(NSObject *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, int a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, os_log_type_t type)
{

  return os_log_type_enabled(a1, type);
}

BOOL OUTLINED_FUNCTION_437_1(NSObject *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, __int16 a11, char a12, os_log_type_t type, int a14)
{

  return os_log_type_enabled(a1, type);
}

BOOL OUTLINED_FUNCTION_438_1(NSObject *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, int a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, os_log_type_t type, int a32)
{

  return os_log_type_enabled(a1, type);
}

uint64_t OUTLINED_FUNCTION_440_1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{

  return segPumpEnsureMediaSegmentURLs(v8, v9, v10, a4, a5, a6, a7, a8);
}

BOOL OUTLINED_FUNCTION_441_1(NSObject *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, __int16 a12, char a13, os_log_type_t type, int a15)
{

  return os_log_type_enabled(a1, type);
}

BOOL OUTLINED_FUNCTION_443_0(NSObject *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, __int16 a20, char a21, os_log_type_t type, int a23)
{

  return os_log_type_enabled(a1, type);
}

BOOL OUTLINED_FUNCTION_444_1(NSObject *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, int a30, int a31, int a32, __int16 a33, char a34, os_log_type_t type)
{

  return os_log_type_enabled(a1, type);
}

BOOL OUTLINED_FUNCTION_445_0(NSObject *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, __int16 a19, char a20, os_log_type_t type, int a22)
{

  return os_log_type_enabled(a1, type);
}

uint64_t OUTLINED_FUNCTION_446_0(uint64_t a1, int a2, int a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9, uint64_t a10, _OWORD *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, const void *a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, const void *a26, uint64_t a27, uint64_t a28, int a29, int a30)
{

  return segPumpSetAlternateForStream(a1, a2, a3, a4, v30, a18, a26, a30, a9, a10, a11);
}

uint64_t FigTTMLDocumentWriterCreateForiTT(uint64_t a1, const void *a2, void *a3)
{
  cf = 0;
  v11 = 0;
  if (!a2)
  {
    FigTTMLDocumentWriterCreateForiTT_cold_2(&v12);
LABEL_9:
    v6 = v12;
    goto LABEL_13;
  }

  if (!a3)
  {
    FigTTMLDocumentWriterCreateForiTT_cold_1(&v12);
    goto LABEL_9;
  }

  FigTTMLDocumentWriterGetClassID();
  v5 = CMDerivedObjectCreate();
  if (v5)
  {
    v6 = v5;
  }

  else
  {
    v6 = FigTTMLDocumentWriterStateCreate(*MEMORY[0x1E695E480], &cf);
    if (!v6)
    {
      FigTTMLDocumentWriterGetCMBaseObject();
      DerivedStorage = CMBaseObjectGetDerivedStorage();
      *DerivedStorage = CFRetain(a2);
      v8 = v11;
      DerivedStorage[1] = cf;
      *a3 = v8;
      return v6;
    }

    if (cf)
    {
      CFRelease(cf);
    }
  }

LABEL_13:
  if (v11)
  {
    CFRelease(v11);
  }

  return v6;
}

void figTTMLDocumentWriterForiTT_Finalize(uint64_t a1)
{
  FigTTMLDocumentWriterGetCMBaseObject();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*DerivedStorage)
  {
    CFRelease(*DerivedStorage);
    *DerivedStorage = 0;
  }

  v2 = *(DerivedStorage + 8);
  if (v2)
  {
    CFRelease(v2);
    *(DerivedStorage + 8) = 0;
  }
}

uint64_t figTTMLDocumentWriterForiTT_AddCaptionData(uint64_t a1, uint64_t a2)
{
  FigTTMLDocumentWriterGetCMBaseObject();
  v3 = *CMBaseObjectGetDerivedStorage();

  return FigTTMLDocumentWriterAddCaptionData(v3, a2);
}

uint64_t figTTMLDocumentWriterForiTT_Flush(uint64_t a1)
{
  FigTTMLDocumentWriterGetCMBaseObject();
  v1 = *CMBaseObjectGetDerivedStorage();

  return FigTTMLDocumentWriterFlush(v1);
}

void initAttributeValidatorDict()
{
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], 0);
  v8 = Mutable;
  if (Mutable)
  {
    CFDictionaryAddValue(Mutable, @"begin", 0);
    CFDictionaryAddValue(v8, @"dur", 0);
    CFDictionaryAddValue(v8, @"end", 0);
    CFDictionaryAddValue(v8, @"region", 0);
    CFDictionaryAddValue(v8, @"timeContainer", validateTimeContainer);
    CFDictionaryAddValue(v8, @"style", 0);
    CFDictionaryAddValue(v8, @"use", prohibited);
    CFDictionaryAddValue(v8, @"value", prohibited);
    CFDictionaryAddValue(v8, @"http://www.w3.org/XML/1998/namespace id", 0);
    CFDictionaryAddValue(v8, @"http://www.w3.org/XML/1998/namespace space", 0);
    CFDictionaryAddValue(v8, @"http://www.w3.org/XML/1998/namespace lang", 0);
    CFDictionaryAddValue(v8, @"http://www.w3.org/XML/1998/namespace base", 0);
    CFDictionaryAddValue(v8, @"http://www.w3.org/ns/ttml#parameter clockMode", prohibited);
    CFDictionaryAddValue(v8, @"http://www.w3.org/ns/ttml#parameter dropMode", 0);
    CFDictionaryAddValue(v8, @"http://www.w3.org/ns/ttml#parameter frameRate", 0);
    CFDictionaryAddValue(v8, @"http://www.w3.org/ns/ttml#parameter frameRateMultiplier", 0);
    CFDictionaryAddValue(v8, @"http://www.w3.org/ns/ttml#parameter markerMode", prohibited);
    CFDictionaryAddValue(v8, @"http://www.w3.org/ns/ttml#parameter pixelAspectRatio", prohibited);
    CFDictionaryAddValue(v8, @"http://www.w3.org/ns/ttml#parameter profile", prohibited);
    CFDictionaryAddValue(v8, @"http://www.w3.org/ns/ttml#parameter subFrameRate", prohibited);
    CFDictionaryAddValue(v8, @"http://www.w3.org/ns/ttml#parameter tickRate", prohibited);
    CFDictionaryAddValue(v8, @"http://www.w3.org/ns/ttml#parameter timeBase", validateTimeBase);
    CFDictionaryAddValue(v8, @"http://www.w3.org/ns/ttml#parameter cellResolution", 0);
    CFDictionaryAddValue(v8, @"http://www.w3.org/ns/ttml/profile/imsc1#parameter aspectRatio", 0);
    CFDictionaryAddValue(v8, @"http://www.w3.org/ns/ttml#styling backgroundColor", validateBackgroundColor);
    CFDictionaryAddValue(v8, @"http://www.w3.org/ns/ttml#styling color", 0);
    CFDictionaryAddValue(v8, @"http://www.w3.org/ns/ttml#styling direction", validateDirection);
    CFDictionaryAddValue(v8, @"http://www.w3.org/ns/ttml#styling display", validateDisplay);
    CFDictionaryAddValue(v8, @"http://www.w3.org/ns/ttml#styling displayAlign", 0);
    CFDictionaryAddValue(v8, @"http://www.w3.org/ns/ttml#styling extent", 0);
    CFDictionaryAddValue(v8, @"http://www.w3.org/ns/ttml#styling fontFamily", 0);
    CFDictionaryAddValue(v8, @"http://www.w3.org/ns/ttml#styling fontSize", validateFontSize);
    CFDictionaryAddValue(v8, @"http://www.w3.org/ns/ttml#styling fontStyle", validateFontStyle);
    CFDictionaryAddValue(v8, @"http://www.w3.org/ns/ttml#styling fontWeight", 0);
    CFDictionaryAddValue(v8, @"http://www.w3.org/ns/ttml#styling lineHeight", prohibited);
    CFDictionaryAddValue(v8, @"http://www.w3.org/ns/ttml#styling opacity", prohibited);
    CFDictionaryAddValue(v8, @"http://www.w3.org/ns/ttml#styling origin", 0);
    CFDictionaryAddValue(v8, @"http://www.w3.org/ns/ttml#styling overflow", validateOverflow);
    CFDictionaryAddValue(v8, @"http://www.w3.org/ns/ttml#styling padding", prohibited);
    CFDictionaryAddValue(v8, @"http://www.w3.org/ns/ttml#styling showBackground", validateShowBackground);
    CFDictionaryAddValue(v8, @"http://www.w3.org/ns/ttml#styling textAlign", 0);
    CFDictionaryAddValue(v8, @"http://www.w3.org/ns/ttml#styling textDecoration", 0);
    CFDictionaryAddValue(v8, @"http://www.w3.org/ns/ttml#styling textOutline", prohibited);
    CFDictionaryAddValue(v8, @"http://www.w3.org/ns/ttml#styling unicodeBidi", validateUnicodeBidi);
    CFDictionaryAddValue(v8, @"http://www.w3.org/ns/ttml#styling visibility", validateVisibility);
    CFDictionaryAddValue(v8, @"http://www.w3.org/ns/ttml#styling wrapOption", 0);
    CFDictionaryAddValue(v8, @"http://www.w3.org/ns/ttml#styling writingMode", 0);
    CFDictionaryAddValue(v8, @"http://www.w3.org/ns/ttml#styling zIndex", prohibited);
    CFDictionaryAddValue(v8, @"http://namespace.itunes.apple.com/itt/ttml-extension#ruby kind", 0);
    CFDictionaryAddValue(v8, @"http://namespace.itunes.apple.com/itt/ttml-extension#ruby position", 0);
    CFDictionaryAddValue(v8, @"http://namespace.itunes.apple.com/itt/ttml-extension#ruby align", 0);
    CFDictionaryAddValue(v8, @"http://namespace.itunes.apple.com/itt/ttml-extension#vertical combine", validateTextCombine);
    CFDictionaryAddValue(v8, @"http://www.w3.org/ns/ttml/profile/imsc1#styling forcedDisplay", 0);
    CFDictionaryAddValue(v8, @"urn:ebu:tt:style linePadding", prohibited);
    CFDictionaryAddValue(v8, @"urn:ebu:tt:style multiRowAlign", prohibited);
  }

  else
  {
    initAttributeValidatorDict_cold_1(0, v1, v2, v3, v4, v5, v6, v7, v9, v10, SHIDWORD(v10), vars0);
  }

  sAttributeValidatorDict = v8;
}

uint64_t sbcAutoOrder_finalize(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*DerivedStorage)
  {
    CFRelease(*DerivedStorage);
    *DerivedStorage = 0;
  }

  v2 = *(DerivedStorage + 48);
  if (v2)
  {
    CFRelease(v2);
    *(DerivedStorage + 48) = 0;
  }

  v3 = *(DerivedStorage + 8);
  if (v3)
  {
    CFRelease(v3);
    *(DerivedStorage + 8) = 0;
  }

  result = FigSimpleMutexDestroy();
  *(DerivedStorage + 16) = 0;
  return result;
}

__CFString *sbcAutoOrder_copyDebugDescription(uint64_t a1)
{
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  CFStringAppendFormat(Mutable, 0, @"<FigSampleBufferConsumerOPTSAutoOrder %p>", a1);
  return Mutable;
}

uint64_t sbcAutoOrder_setProperty(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *CMBaseObjectGetDerivedStorage();
  v6 = *(*(CMBaseObjectGetVTable() + 8) + 56);
  if (!v6)
  {
    return 4294954514;
  }

  return v6(v5, a2, a3);
}

uint64_t sbcAutoOrder_IsQueueAtOrAboveHighWater(uint64_t a1)
{
  v1 = *CMBaseObjectGetDerivedStorage();
  v2 = *(*(CMBaseObjectGetVTable() + 16) + 16);
  if (!v2)
  {
    return 0;
  }

  return v2(v1);
}

uint64_t sbcAutoOrder_IsQueueBelowLowWater(uint64_t a1)
{
  v1 = *CMBaseObjectGetDerivedStorage();
  v2 = *(*(CMBaseObjectGetVTable() + 16) + 24);
  if (!v2)
  {
    return 0;
  }

  return v2(v1);
}

uint64_t sbcAutoOrder_InstallLowWaterTrigger(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *CMBaseObjectGetDerivedStorage();
  v8 = *(*(CMBaseObjectGetVTable() + 16) + 32);
  if (!v8)
  {
    return 4294954514;
  }

  return v8(v7, a2, a3, a4);
}

uint64_t sbcAutoOrder_RemoveLowWaterTrigger(uint64_t a1, uint64_t a2)
{
  v3 = *CMBaseObjectGetDerivedStorage();
  v4 = *(*(CMBaseObjectGetVTable() + 16) + 40);
  if (!v4)
  {
    return 4294954514;
  }

  return v4(v3, a2);
}

uint64_t sbcAutoOrder_GetPendingSampleBufferCount(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  BufferCount = CMBufferQueueGetBufferCount(*(DerivedStorage + 8));
  v3 = *DerivedStorage;
  v4 = *(*(CMBaseObjectGetVTable() + 16) + 48);
  if (v4)
  {
    v5 = v4(v3);
  }

  else
  {
    v5 = 0;
  }

  FigSimpleMutexUnlock();
  return v5 + BufferCount;
}

uint64_t sbcAutoOrder_PostNotification(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *CMBaseObjectGetDerivedStorage();
  v8 = *(*(CMBaseObjectGetVTable() + 16) + 64);
  if (!v8)
  {
    return 4294954514;
  }

  return v8(v7, a2, a3, a4);
}

uint64_t sbcAutoOrder_Flush(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  v3 = *DerivedStorage;
  v4 = *(*(CMBaseObjectGetVTable() + 16) + 72);
  if (v4)
  {
    v4(v3);
  }

  sbcAutoOrder_SendAllPendingSampleBuffer(a1);
  CMBufferQueueReset(*(DerivedStorage + 8));
  v5 = MEMORY[0x1E6960C70];
  *(DerivedStorage + 24) = *MEMORY[0x1E6960C70];
  *(DerivedStorage + 40) = *(v5 + 16);
  FigSimpleMutexUnlock();
  return 0;
}

uint64_t sbcAutoOrder_SendSbufAndUpdateLastOPTS(uint64_t a1, opaqueCMSampleBuffer *a2)
{
  v19 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  CMSampleBufferGetOutputPresentationTimeStamp(&v14, a2);
  value = v14.value;
  flags = v14.flags;
  timescale = v14.timescale;
  epoch = v14.epoch;
  CMSampleBufferGetOutputDuration(&v14, a2);
  v15 = v14.value;
  v6 = v14.flags;
  v16 = v14.timescale;
  v7 = v14.epoch;
  v8 = DerivedStorage->value;
  v9 = *(*(CMBaseObjectGetVTable() + 16) + 8);
  if (!v9)
  {
    return 4294954514;
  }

  v10 = v9(v8, a2);
  if (!v10 && (flags & 1) != 0 && (v6 & 1) != 0)
  {
    v12.epoch = v7;
    lhs.value = value;
    lhs.timescale = timescale;
    lhs.flags = flags;
    lhs.epoch = epoch;
    v12.value = v15;
    v12.timescale = v16;
    v12.flags = v6;
    CMTimeAdd(&v14, &lhs, &v12);
    DerivedStorage[1] = v14;
  }

  return v10;
}

uint64_t sbcAutoOrder_SendStashedBufferIfLesserOrEqualToOPTS(opaqueCMSampleBuffer *a1, uint64_t *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  CMSampleBufferGetOutputPresentationTimeStamp(&v8, a1);
  if ((v8.flags & 1) == 0 || (*(a2 + 20) & 1) != 0 && (CMSampleBufferGetOutputPresentationTimeStamp(&time, a1), time2 = *(a2 + 1), CMTimeCompare(&time, &time2) <= 0))
  {
    if (dword_1EAF16A50)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    v6 = *a2;
    v7 = *(*(CMBaseObjectGetVTable() + 16) + 8);
    if (v7)
    {
      return v7(v6, a1);
    }

    else
    {
      return 4294954514;
    }
  }

  else
  {
    result = a2[4];
    if (result)
    {
      CMBufferQueueEnqueue(result, a1);
      return 0;
    }
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_4_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, int a15)
{

  return fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
}

uint64_t OUTLINED_FUNCTION_5_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, CMTime *time2, uint64_t a12, CMTime *time1, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, __int128 time2a, uint64_t time2_16, uint64_t a21, uint64_t time1a)
{
  time2a = *(v22 + 24);
  time2_16 = *(v22 + 40);

  return CMTimeCompare(&time1a, &time2a);
}

uint64_t OUTLINED_FUNCTION_7_1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, const char *a8)
{

  return _os_log_send_and_compose_impl(a1, 0, a3, 128, a5, v8, v9, a8);
}

uint64_t FigStreamPlaylistParserCopySerializedRepresentationForMediaGroupAsXPCObject(uint64_t a1, const __CFDictionary *a2)
{
  v2 = FigStreamPlaylistParserCopySerializedRepresentationForMediaGroup(a1, a2);
  v3 = _CFXPCCreateXPCObjectFromCFObject();
  if (v2)
  {
    CFRelease(v2);
  }

  return v3;
}

uint64_t FigStreamPlaylistParserCreateMediaGroupFromXPCDictionary(uint64_t a1, void *a2, __CFDictionary **a3)
{
  v5 = _CFXPCCreateCFObjectFromXPCObject();
  if (v5)
  {
    v6 = v5;
    FigStreamPlaylistParserCreateMediaGroup(v5, a2, a3);
    v8 = v7;
    CFRelease(v6);
    return v8;
  }

  else
  {
    FigStreamPlaylistParserCreateMediaGroupFromXPCDictionary_cold_1(&v10);
    return v10;
  }
}

double FigStreamPlaylistParserSerializeDateRangeSpecifiers(uint64_t a1, CFMutableArrayRef *a2)
{
  DateRangeSpecifiers = FigMediaPlaylistGetDateRangeSpecifiers(a1);

  return streamPlaylistParser_serializeTaggedRangeEntries(DateRangeSpecifiers, a2);
}

uint64_t streamPlaylistParser_deserializeTaggedRangeEntries(uint64_t a1, const __CFArray *a2)
{
  FigMediaPlaylistSetDateRangeSpecifiers(a1);
  v42 = a2;
  Count = CFArrayGetCount(a2);
  if (!Count)
  {
    return 0;
  }

  v3 = 0;
  v38 = *MEMORY[0x1E69630E0];
  key = *MEMORY[0x1E69630F0];
  v36 = *MEMORY[0x1E69630E8];
  v37 = *MEMORY[0x1E69630D0];
  v34 = *MEMORY[0x1E6963098];
  v35 = *MEMORY[0x1E69630D8];
  v33 = *MEMORY[0x1E6962F00];
  v32 = *MEMORY[0x1E6963118];
  v30 = *MEMORY[0x1E6963128];
  v31 = *MEMORY[0x1E6963120];
  v28 = *MEMORY[0x1E6962EE8];
  v29 = *MEMORY[0x1E69630F8];
  v27 = *MEMORY[0x1E6962FC8];
  while (1)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(v42, v3);
    v5 = ValueAtIndex;
    v51 = 0;
    v52 = 0;
    v49 = 0;
    v50 = 0;
    v48 = 0;
    if (!ValueAtIndex)
    {
      v25 = 0;
      MutableCopy = 0;
      v22 = 0;
      v18 = 0;
      v16 = 0;
      v14 = 0;
      goto LABEL_38;
    }

    v45 = v3;
    Value = CFDictionaryGetValue(ValueAtIndex, key);
    if (Value)
    {
      CFRetain(Value);
    }

    v47 = CFDictionaryGetValue(v5, v38);
    if (v47)
    {
      CFRetain(v47);
    }

    v6 = CFDictionaryGetValue(v5, v37);
    v7 = v6;
    if (v6)
    {
      CFRetain(v6);
    }

    v8 = CFDictionaryGetValue(v5, v36);
    v9 = v8;
    if (v8)
    {
      CFRetain(v8);
    }

    v10 = CFDictionaryGetValue(v5, v35);
    v11 = v10;
    if (v10)
    {
      CFRetain(v10);
    }

    FigWireDictionaryCopyCFDate(v5, v34, &v51);
    if (v12 || (FigWireDictionaryCopyCFDate(v5, v33, &v50), v12))
    {
      v25 = v12;
      v5 = 0;
      v14 = 0;
      v16 = 0;
      v18 = 0;
      v22 = 0;
      MutableCopy = 0;
    }

    else
    {
      LOBYTE(v53) = 0;
      FigCFDictionaryGetBooleanIfPresent();
      v44 = LOBYTE(v53);
      LOBYTE(v53) = 0;
      FigCFDictionaryGetBooleanIfPresent();
      v43 = LOBYTE(v53);
      v13 = CFDictionaryGetValue(v5, v32);
      v14 = v13;
      if (v13)
      {
        CFRetain(v13);
      }

      v15 = CFDictionaryGetValue(v5, v31);
      v16 = v15;
      if (v15)
      {
        CFRetain(v15);
      }

      v17 = CFDictionaryGetValue(v5, v30);
      v18 = v17;
      if (v17)
      {
        CFRetain(v17);
      }

      v53 = 0.0;
      FigCFDictionaryGetDoubleIfPresent();
      v19 = v53;
      v53 = 0.0;
      FigCFDictionaryGetDoubleIfPresent();
      v20 = v53;
      v21 = CFDictionaryGetValue(v5, v29);
      v22 = v21;
      if (v21)
      {
        CFRetain(v21);
      }

      FigGetAllocatorForMedia();
      MutableCopy = FigCFDictionaryCreateMutableCopy();
      FigWireDictionaryCopyCFDate(v5, v28, &v49);
      if (v24 || (FigWireDictionaryCopyCFDate(v5, v27, &v48), v24))
      {
        v25 = v24;
LABEL_66:
        v5 = 0;
        goto LABEL_28;
      }

      v25 = FigDateRangeSpecifierCreate(Value, v47, v7, v9, v11, v51, v50, v44, v19, v20, 0.0, 0.0, v43, v14, v16, v18, MutableCopy, 0, 0, v49, v48, &v52);
      if (v25)
      {
        goto LABEL_66;
      }

      v5 = v52;
      v52 = 0;
    }

LABEL_28:
    if (Value)
    {
      CFRelease(Value);
    }

    if (v47)
    {
      CFRelease(v47);
    }

    if (v7)
    {
      CFRelease(v7);
    }

    v3 = v45;
    if (v9)
    {
      CFRelease(v9);
    }

    if (v11)
    {
      CFRelease(v11);
    }

LABEL_38:
    if (v51)
    {
      CFRelease(v51);
    }

    if (v50)
    {
      CFRelease(v50);
    }

    if (v14)
    {
      CFRelease(v14);
    }

    if (v16)
    {
      CFRelease(v16);
    }

    if (v18)
    {
      CFRelease(v18);
    }

    if (v22)
    {
      CFRelease(v22);
    }

    if (MutableCopy)
    {
      CFRelease(MutableCopy);
    }

    if (v49)
    {
      CFRelease(v49);
    }

    if (v48)
    {
      CFRelease(v48);
    }

    if (v52)
    {
      CFRelease(v52);
    }

    if (v25)
    {
      break;
    }

    FigMediaPlaylistAddDateRangeSpecifier(a1, v5);
    if (v5)
    {
      CFRelease(v5);
    }

    if (Count == ++v3)
    {
      return 0;
    }
  }

  if (v5)
  {
    CFRelease(v5);
  }

  return v25;
}

const void *FigWireDictionaryGetArray(const __CFDictionary *a1, const void *a2)
{
  Value = CFDictionaryGetValue(a1, a2);
  v3 = Value;
  if (Value)
  {
    v4 = CFGetTypeID(Value);
    if (v4 != CFArrayGetTypeID())
    {
      fig_log_get_emitter();
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v6, v7, v8);
      return 0;
    }
  }

  return v3;
}

void streamPlaylistParser_copySerializedRepresentationForMediaGroupApplier(const void *a1, const __CFDictionary *a2, uint64_t a3)
{
  AllocatorForMedia = FigGetAllocatorForMedia();
  MutableCopy = CFDictionaryCreateMutableCopy(AllocatorForMedia, 0, a2);
  if (MutableCopy)
  {
    v8 = MutableCopy;
    FigWireDictionarySetCFString(MutableCopy, *MEMORY[0x1E6962F28], *(a3 + 8));
    if (a1)
    {
      v9 = CFGetTypeID(a1);
      if (v9 == CFNumberGetTypeID())
      {
        CFDictionarySetValue(v8, *MEMORY[0x1E6962FF8], a1);
      }

      else
      {
        streamPlaylistParser_copySerializedRepresentationForMediaGroupApplier_cold_1();
      }
    }

    CFArrayAppendValue(*a3, v8);

    CFRelease(v8);
  }

  else
  {
    streamPlaylistParser_copySerializedRepresentationForMediaGroupApplier_cold_2();
  }
}

void FigWireArraySetUInt64AtIndex(__CFArray *a1, CFIndex a2, uint64_t a3)
{
  valuePtr = a3;
  AllocatorForMedia = FigGetAllocatorForMedia();
  v6 = CFNumberCreate(AllocatorForMedia, kCFNumberSInt64Type, &valuePtr);
  if (v6)
  {
    v7 = v6;
    CFArraySetValueAtIndex(a1, a2, v6);
    CFRelease(v7);
  }

  else
  {
    FigWireArraySetUInt64AtIndex_cold_1();
  }
}

void FigWireArraySetInt64AtIndex(__CFArray *a1, CFIndex a2, uint64_t a3)
{
  valuePtr = a3;
  AllocatorForMedia = FigGetAllocatorForMedia();
  v6 = CFNumberCreate(AllocatorForMedia, kCFNumberSInt64Type, &valuePtr);
  if (v6)
  {
    v7 = v6;
    CFArraySetValueAtIndex(a1, a2, v6);
    CFRelease(v7);
  }

  else
  {
    FigWireArraySetInt64AtIndex_cold_1();
  }
}

void FigWireArraySetDoubleAtIndex(__CFArray *a1, CFIndex a2, double a3)
{
  valuePtr = a3;
  AllocatorForMedia = FigGetAllocatorForMedia();
  v6 = CFNumberCreate(AllocatorForMedia, kCFNumberDoubleType, &valuePtr);
  if (v6)
  {
    v7 = v6;
    CFArraySetValueAtIndex(a1, a2, v6);
    CFRelease(v7);
  }

  else
  {
    FigWireArraySetDoubleAtIndex_cold_1();
  }
}

uint64_t FigWireArrayGetUInt64AtIndex(const __CFArray *a1, CFIndex a2)
{
  valuePtr = 0;
  ValueAtIndex = CFArrayGetValueAtIndex(a1, a2);
  v3 = 0;
  if (ValueAtIndex && ValueAtIndex != *MEMORY[0x1E695E738])
  {
    CFNumberGetValue(ValueAtIndex, kCFNumberSInt64Type, &valuePtr);
    return valuePtr;
  }

  return v3;
}

CFTypeRef FigWireArrayCopyCFTypeAtIndex(const __CFArray *a1, CFIndex a2)
{
  ValueAtIndex = CFArrayGetValueAtIndex(a1, a2);
  if (!ValueAtIndex || ValueAtIndex == *MEMORY[0x1E695E738])
  {
    return 0;
  }

  return CFRetain(ValueAtIndex);
}

double FigWireArrayGetDoubleAtIndex(const __CFArray *a1, CFIndex a2)
{
  valuePtr = 0.0;
  ValueAtIndex = CFArrayGetValueAtIndex(a1, a2);
  result = 0.0;
  if (ValueAtIndex)
  {
    if (ValueAtIndex != *MEMORY[0x1E695E738])
    {
      CFNumberGetValue(ValueAtIndex, kCFNumberDoubleType, &valuePtr);
      return valuePtr;
    }
  }

  return result;
}

uint64_t FigWireArrayGetBooleanAtIndex(const __CFArray *a1, CFIndex a2)
{
  ValueAtIndex = CFArrayGetValueAtIndex(a1, a2);
  if (!ValueAtIndex || ValueAtIndex == *MEMORY[0x1E695E738])
  {
    return 0;
  }

  return CFBooleanGetValue(ValueAtIndex);
}

void OUTLINED_FUNCTION_4_3(int a1)
{
  if (a1)
  {
    v6 = v3;
  }

  else
  {
    v6 = v4;
  }

  CFDictionarySetValue(v2, v1, v6);
}

CFTypeID OUTLINED_FUNCTION_12_1(int a1, int a2, CFTypeRef cf)
{

  return CFGetTypeID(cf);
}

void OUTLINED_FUNCTION_17_1()
{

  CFDictionarySetValue(v2, v1, v0);
}

uint64_t OUTLINED_FUNCTION_26_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{

  return FigCFDictionaryGetInt64IfPresent();
}

CFIndex OUTLINED_FUNCTION_27_2(CFArrayRef theArray)
{
  *(v1 - 88) = 0;

  return CFArrayGetCount(theArray);
}

uint64_t OUTLINED_FUNCTION_32_2(const void *a1)
{

  return streamPlaylistParser_serializeMediaSegmentSpecifier(v2, a1, v1, (v3 - 88));
}

void OUTLINED_FUNCTION_33_1(uint64_t a1, const void *a2)
{

  CFDictionarySetValue(v3, a2, v2);
}

uint64_t RegisterFigImageQueueGaugeType()
{
  CMBaseGetClassID();

  return FigBaseClassRegisterClass();
}

uint64_t FigImageQueueGaugeGetTypeID()
{
  MEMORY[0x19A8D3660](&FigImageQueueGaugeGetClassID_sRegisterFigImageQueueGaugeTypeOnce, RegisterFigImageQueueGaugeType);

  return CMBaseClassGetCFTypeID();
}

uint64_t FigImageQueueGaugeCreate(uint64_t a1, uint64_t a2, CFTypeRef *a3)
{
  if (a3)
  {
    MEMORY[0x19A8D3660](&FigImageQueueGaugeGetClassID_sRegisterFigImageQueueGaugeTypeOnce, RegisterFigImageQueueGaugeType);
    v4 = CMDerivedObjectCreate();
    if (!v4)
    {
      DerivedStorage = CMBaseObjectGetDerivedStorage();
      *DerivedStorage = FigSimpleMutexCreate();
      v6 = MEMORY[0x1E6960CC0];
      *(DerivedStorage + 8) = *MEMORY[0x1E6960CC0];
      *(DerivedStorage + 24) = *(v6 + 16);
      *a3 = 0;
    }
  }

  else
  {
    FigImageQueueGaugeCreate_cold_1(&v8);
    return v8;
  }

  return v4;
}

uint64_t imageQueueGauge_Invalidate(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  v2 = MEMORY[0x1E6960CC0];
  *(DerivedStorage + 8) = *MEMORY[0x1E6960CC0];
  *(DerivedStorage + 24) = *(v2 + 16);
  *(DerivedStorage + 32) = 257;
  FigSimpleMutexUnlock();
  CMNotificationCenterGetDefaultLocalCenter();
  CMNotificationCenterPostNotification();
  return 0;
}

uint64_t imageQueueGauge_Finalize(uint64_t a1)
{
  CMBaseObjectGetDerivedStorage();

  return FigSimpleMutexDestroy();
}

uint64_t imageQueueGauge_SetSafeDisplayDuration(uint64_t a1, CMTime *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  if (*(DerivedStorage + 33))
  {
    FigSimpleMutexUnlock();
  }

  else
  {
    v4 = *(DerivedStorage + 8);
    time1.epoch = *(DerivedStorage + 24);
    *&time1.value = v4;
    v8 = *a2;
    v5 = CMTimeCompare(&time1, &v8);
    v6 = *&a2->value;
    *(DerivedStorage + 24) = a2->epoch;
    *(DerivedStorage + 8) = v6;
    FigSimpleMutexUnlock();
    if (v5)
    {
      CMNotificationCenterGetDefaultLocalCenter();
      CMNotificationCenterPostNotification();
    }
  }

  return 0;
}

uint64_t imageQueueGauge_GetSafeDisplayDuration@<X0>(uint64_t a2@<X8>)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  *a2 = *(DerivedStorage + 8);
  *(a2 + 16) = *(DerivedStorage + 24);

  return FigSimpleMutexUnlock();
}

uint64_t imageQueueGauge_SetEnqueueingComplete(uint64_t a1, int a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  if (*(DerivedStorage + 33))
  {
    FigSimpleMutexUnlock();
  }

  else
  {
    v4 = *(DerivedStorage + 32);
    *(DerivedStorage + 32) = a2;
    FigSimpleMutexUnlock();
    if (v4 != a2)
    {
      CMNotificationCenterGetDefaultLocalCenter();
      CMNotificationCenterPostNotification();
    }
  }

  return 0;
}

uint64_t imageQueueGauge_GetEnqueueingComplete(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  v2 = *(DerivedStorage + 32);
  FigSimpleMutexUnlock();
  return v2;
}

uint64_t FigCaptionRendererCGOutputCreate(uint64_t a1, uint64_t a2, uint64_t a3, const void *a4, uint64_t a5, void *a6)
{
  if (a1 && a2 && a3)
  {
    if (a6)
    {
      *a6 = 0;
      FigCaptionRendererOutputGetClassID();
      CMDerivedObjectCreate();
      FigCaptionRendererCGOutputCreate_cold_1(&v7);
    }

    else
    {
      FigCaptionRendererCGOutputCreate_cold_2(&v7);
    }
  }

  else
  {
    FigCaptionRendererCGOutputCreate_cold_3(&v7);
  }

  return v7;
}

uint64_t FigCaptionRendererCGOutputUpdateCGContext(uint64_t a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a2)
  {
    (*(DerivedStorage + 88))(a2, *(DerivedStorage + 72));
  }

  return 0;
}

void FigCaptionRendererCGOutput_Finalize(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*DerivedStorage)
  {
    CFRelease(*DerivedStorage);
    *DerivedStorage = 0;
  }

  *(DerivedStorage + 72) = 0;
}

__CFString *FigCaptionRendererCGOutput_CopyDebugDescription(uint64_t a1)
{
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  CFStringAppendFormat(Mutable, 0, @"<FigCaptionRendererCGOutput %p>", a1);
  return Mutable;
}

uint64_t fcrCGOutputSetNeedsDisplayInRect(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*DerivedStorage)
  {
    (*(DerivedStorage + 88))(*DerivedStorage, *(DerivedStorage + 72));
  }

  return 0;
}

uint64_t fcrCGOutputSetBounds(uint64_t a1, uint64_t a2, double a3, double a4, double a5, double a6)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  *(DerivedStorage + 8) = a3;
  *(DerivedStorage + 16) = a4;
  *(DerivedStorage + 24) = a5;
  *(DerivedStorage + 32) = a6;
  (*(DerivedStorage + 80))(*(DerivedStorage + 72), a2, a3, a4, a5, a6);
  return 0;
}

uint64_t fcrCGOutputSetVideoBounds(uint64_t a1, double a2, double a3, double a4, double a5)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  DerivedStorage[5] = a2;
  DerivedStorage[6] = a3;
  DerivedStorage[7] = a4;
  DerivedStorage[8] = a5;
  return 0;
}

uint64_t fcrCGOutputClear(uint64_t a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*DerivedStorage)
  {
    v10 = DerivedStorage;
    v12.origin.x = a2;
    v12.origin.y = a3;
    v12.size.width = a4;
    v12.size.height = a5;
    if (CGRectEqualToRect(v12, *MEMORY[0x1E695F050]))
    {
      CGContextClear();
    }

    else
    {
      v13.origin.x = a2;
      v13.origin.y = a3;
      v13.size.width = a4;
      v13.size.height = a5;
      CGContextClearRect(*v10, v13);
    }
  }

  return 0;
}

double FigCPEOctaviaPKDMovieIDInit(_OWORD *a1)
{
  result = 0.0;
  a1[4] = 0u;
  a1[5] = 0u;
  a1[2] = 0u;
  a1[3] = 0u;
  a1[1] = 0u;
  return result;
}

void FigCPEOctaviaPKDMovieIDFinalize(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 0x40000000;
    block[2] = __FigCPEOctaviaPKDMovieIDFinalize_block_invoke;
    block[3] = &__block_descriptor_tmp_11;
    block[4] = a1;
    dispatch_sync(v2, block);
    dispatch_release(*(a1 + 16));
  }

  v3 = *(a1 + 88);
  if (v3)
  {
    CFRelease(v3);
    *(a1 + 88) = 0;
  }
}

uint64_t __FigCPEOctaviaPKDMovieIDGetTypeID_block_invoke()
{
  result = _CFRuntimeRegisterClass();
  qword_1ED4CA400 = result;
  return result;
}

void __FigCPEOctaviaPKDMovieIDCreateCommon_block_invoke(uint64_t a1, int a2)
{
  if (a2 == 1684628836)
  {
    v8 = *(a1 + 32);
    if (*(v8 + 48))
    {
      (*(v8 + 80))(*(v8 + 32));
      v8 = *(a1 + 32);
      *(v8 + 48) = 0;
    }

    *(v8 + 40) = 0;
  }

  else if (a2 == 1651470958)
  {
    v3 = *(a1 + 32);
    v4 = *(v3 + 56);
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    if (Mutable)
    {
      v6 = Mutable;
      v7 = MEMORY[0x1E695E4C0];
      if (v4)
      {
        v7 = MEMORY[0x1E695E4D0];
      }

      CFDictionarySetValue(Mutable, @"IsProtectionSchemePKDMSE", *v7);
      if (!FigRemote_CreateSerializedAtomDataBlockBufferForCFType())
      {
        FigTransportGetRemoteRootObject();
        if (!NeroTransportSendSyncMessageCreatingReply())
        {
          CMBlockBufferCopyDataBytes(0, 0, 8uLL, (v3 + 40));
        }
      }

      CFRelease(v6);
    }

    else
    {
      __FigCPEOctaviaPKDMovieIDCreateCommon_block_invoke_cold_1();
    }
  }
}

void FigCFRelease_0(CFTypeRef cf)
{
  if (cf)
  {
    CFRelease(cf);
  }
}

uint64_t FigCPEOctaviaPKDMovieIDGetValue(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2000000000;
  v10 = 0;
  v3 = *(a1 + 16);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 0x40000000;
  v6[2] = __FigCPEOctaviaPKDMovieIDGetValue_block_invoke;
  v6[3] = &unk_1E7476E20;
  v6[4] = &v7;
  v6[5] = a1;
  v6[6] = a2;
  v6[7] = a3;
  dispatch_sync(v3, v6);
  v4 = *(v8 + 6);
  _Block_object_dispose(&v7, 8);
  return v4;
}

uint64_t FigCPEOctaviaPKDMovieIDGetSerializationToken(uint64_t a1, uint64_t a2)
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2000000000;
  v9 = 0;
  if (a2)
  {
    v2 = *(a1 + 16);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 0x40000000;
    block[2] = __FigCPEOctaviaPKDMovieIDGetSerializationToken_block_invoke;
    block[3] = &unk_1E7476E48;
    block[5] = a1;
    block[6] = a2;
    block[4] = &v6;
    dispatch_sync(v2, block);
    v3 = *(v7 + 6);
  }

  else
  {
    v3 = 4294955146;
    v9 = -12150;
  }

  _Block_object_dispose(&v6, 8);
  return v3;
}

uint64_t __FigCPEOctaviaPKDMovieIDGetSerializationToken_block_invoke(uint64_t result)
{
  v1 = *(*(result + 40) + 40);
  if (v1)
  {
    **(result + 48) = v1;
  }

  else
  {
    *(*(*(result + 32) + 8) + 24) = -12158;
  }

  return result;
}

uint64_t RegisterFigPKDOctaviaCPECryptorType()
{
  FigCPECryptorGetClassID();

  return FigBaseClassRegisterClass();
}

uint64_t FigPKDOctaviaCPECryptorAddListenerOnLocalCryptor(uint64_t a1)
{
  CMNotificationCenterGetDefaultLocalCenter();
  LODWORD(result) = FigNotificationCenterAddWeakListener();
  if (result == -12724)
  {
    return 0;
  }

  else
  {
    return result;
  }
}

uint64_t ExternalProtectionStatusChangedCallback(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  CMNotificationCenterGetDefaultLocalCenter();

  return CMNotificationCenterPostNotification();
}

void __FigCPEOctaviaPKDMovieIDFinalize_block_invoke(uint64_t a1)
{
  NeroTransportSendAsyncMessage();
  NeroTransportUnregisterObject();
  v2 = *(a1 + 32);
  v3 = *(v2 + 56);
  if (v3)
  {
    CFRelease(v3);
    v2 = *(a1 + 32);
  }

  v4 = *(v2 + 24);
  if (v4)
  {

    CFRelease(v4);
  }
}

uint64_t FigPKDOctaviaCPECryptorInvalidate(const void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  *(DerivedStorage + 24) = 1;
  *(DerivedStorage + 96) = 0;
  StopAndReleaseTimer((DerivedStorage + 128));
  v3 = *(DerivedStorage + 48);
  if (v3)
  {
    CFRelease(v3);
    *(DerivedStorage + 48) = 0;
  }

  v4 = *(DerivedStorage + 56);
  if (v4)
  {
    CFRelease(v4);
    *(DerivedStorage + 56) = 0;
  }

  v5 = *(DerivedStorage + 64);
  if (v5)
  {
    CFRelease(v5);
    *(DerivedStorage + 64) = 0;
  }

  if (*(DerivedStorage + 8))
  {
    CMNotificationCenterGetDefaultLocalCenter();
    CMNotificationCenterRemoveListener();
  }

  if (*(DerivedStorage + 16))
  {
    CMNotificationCenterGetDefaultLocalCenter();
    FigNotificationCenterRemoveWeakListener();
  }

  v7 = *DerivedStorage;
  v6 = *(DerivedStorage + 8);
  *DerivedStorage = 0;
  if (v6)
  {
    CFRelease(v6);
    *(DerivedStorage + 8) = 0;
  }

  v8 = *(DerivedStorage + 16);
  if (v8)
  {
    CFRelease(v8);
    *(DerivedStorage + 16) = 0;
  }

  v9 = *(DerivedStorage + 80);
  if (v9)
  {
    CFRelease(v9);
    *(DerivedStorage + 80) = 0;
  }

  v10 = *(DerivedStorage + 88);
  if (v10)
  {
    CFRelease(v10);
    *(DerivedStorage + 88) = 0;
  }

  v11 = *(DerivedStorage + 40);
  if (v11)
  {
    CFRelease(v11);
    *(DerivedStorage + 40) = 0;
  }

  v12 = *(DerivedStorage + 120);
  if (v12)
  {
    CFRelease(v12);
    *(DerivedStorage + 120) = 0;
  }

  v13 = *(DerivedStorage + 112);
  if (v13)
  {
    CFRelease(v13);
    *(DerivedStorage + 112) = 0;
  }

  v14 = *(DerivedStorage + 104);
  if (v14)
  {
    CFRelease(v14);
    *(DerivedStorage + 104) = 0;
  }

  v15 = *(DerivedStorage + 144);
  if (v15)
  {
    CFRelease(v15);
    *(DerivedStorage + 144) = 0;
  }

  v16 = *(DerivedStorage + 152);
  if (v16)
  {
    CFRelease(v16);
    *(DerivedStorage + 152) = 0;
  }

  FigSimpleMutexUnlock();
  if (v7)
  {
    if (FigPKDCPEProtectorCryptorWasInvalidated(v7, a1) == -15844)
    {
      *(DerivedStorage + 25) = 1;
    }

    CFRelease(v7);
  }

  return 0;
}

uint64_t FigPKDOctaviaCPECryptorFinalize(const void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigPKDOctaviaCPECryptorInvalidate(a1);
  result = *(DerivedStorage + 32);
  if (result)
  {
    result = FigSimpleMutexDestroy();
    *(DerivedStorage + 32) = 0;
  }

  return result;
}

__CFString *FigPKDOctaviaCPECryptorCopyDebugDescription(const void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v3 = CFGetAllocator(a1);
  Mutable = CFStringCreateMutable(v3, 0);
  FigSimpleMutexLock();
  if (*(DerivedStorage + 24))
  {
    v5 = 1;
  }

  else
  {
    v5 = Mutable == 0;
  }

  if (!v5)
  {
    CFStringAppendFormat(Mutable, 0, @"<FigPKDOctaviaCPECryptor: protectorParent<%@> >", *DerivedStorage);
  }

  FigSimpleMutexUnlock();
  return Mutable;
}

void StopAndReleaseTimer(dispatch_object_t *a1)
{
  if (a1)
  {
    v2 = *a1;
    if (v2)
    {
      dispatch_source_cancel(v2);
      dispatch_release(*a1);
      *a1 = 0;
    }
  }
}

uint64_t FigPKDOctaviaCPECryptorLocalCryptorUpdatedPersistentKeyCallback(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  dispatch_get_global_queue(0, 0);
  CMNotificationCenterGetDefaultLocalCenter();

  return FigDispatchAsyncPostNotification();
}

uint64_t CopyCurrentRequestID(uint64_t a1, uint64_t *a2)
{
  SInt64 = FigCFNumberCreateSInt64();
  *a2 = SInt64;
  if (SInt64)
  {
    return 0;
  }

  CopyCurrentRequestID_cold_1(&v5);
  return v5;
}

void __FigPKDOctaviaCPECryptorCreateKeyRequest_block_invoke_2(void *a1)
{
  v3 = a1[4];
  if (!*(v3 + 73))
  {
    cf[5] = v1;
    cf[6] = v2;
    cf[0] = 0;
    v5 = *(v3 + 16);
    v6 = a1[5];
    v7 = a1[6];
    v8 = *(CMBaseObjectGetVTable() + 16);
    if (*v8 >= 4uLL && (v9 = v8[11]) != 0)
    {
      v10 = v9(v5, v6, v7, cf);
      v11 = cf[0];
      v12 = a1[4];
      *(v12 + 76) = v10;
      *(v12 + 73) = 1;
      if (v11)
      {
        CFRelease(v11);
      }
    }

    else
    {
      v13 = a1[4];
      *(v13 + 76) = -12782;
      *(v13 + 73) = 1;
    }
  }
}

uint64_t ResetRemoteCryptor(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  values = 0;
  v10 = 0;
  cf = 0;
  CFNumberFromRemoteObjectRef = FigCPEOctaviaPKDMovieIDGetSerializationToken(*(DerivedStorage + 48), &v10);
  if (CFNumberFromRemoteObjectRef || (CFNumberFromRemoteObjectRef = FigTransportCreateCFNumberFromRemoteObjectRef(), CFNumberFromRemoteObjectRef))
  {
    v6 = CFNumberFromRemoteObjectRef;
    v3 = 0;
  }

  else
  {
    v3 = CFDictionaryCreate(*MEMORY[0x1E695E480], &kFigCPENeroKey_MovieIDSerializationToken, &values, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    if (v3)
    {
      v4 = FigOctaviaCPECryptorCreate(*DerivedStorage, *(DerivedStorage + 104), *(DerivedStorage + 112), v3, *(DerivedStorage + 120), *(*(DerivedStorage + 48) + 88), &cf);
      if (!v4)
      {
        CMNotificationCenterGetDefaultLocalCenter();
        v4 = CMNotificationCenterAddListener();
        if (!v4)
        {
          if (*(DerivedStorage + 8))
          {
            CMNotificationCenterGetDefaultLocalCenter();
            CMNotificationCenterRemoveListener();
            v5 = *(DerivedStorage + 8);
            if (v5)
            {
              CFRelease(v5);
            }
          }

          v6 = 0;
          *(DerivedStorage + 8) = cf;
          cf = 0;
          goto LABEL_10;
        }
      }

      v6 = v4;
    }

    else
    {
      v6 = 4294955145;
    }
  }

  if (cf)
  {
    CFRelease(cf);
  }

LABEL_10:
  if (values)
  {
    CFRelease(values);
  }

  if (v3)
  {
    CFRelease(v3);
  }

  return v6;
}

uint64_t OUTLINED_FUNCTION_4_4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return CMNotificationCenterAddListener();
}

void OUTLINED_FUNCTION_5_3()
{

  JUMPOUT(0x19A8D3660);
}

uint64_t OUTLINED_FUNCTION_11_3(uint64_t a1)
{

  return FigSimpleMutexLock();
}

dispatch_queue_global_t OUTLINED_FUNCTION_12_2()
{

  return dispatch_get_global_queue(0, 0);
}

uint64_t RegisterFigReportingSessionStatsBaseType()
{
  CMBaseGetClassID();

  return FigBaseClassRegisterClass();
}

__CFString *sessionStatsCopyDebugDescription()
{
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  CFStringAppendFormat(Mutable, 0, @"\tFigReportingSessionStats : ");
  return Mutable;
}

void fss_releaseStatDictionaryApplier(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    FigReportingStatsDestroy(a2);
  }
}

void fss_copyAggregatedStats(uint64_t a1, const __CFArray *a2, const __CFArray *a3)
{
  v5[0] = a2;
  v5[1] = a3;
  FigBytePumpGetFigBaseObject();
  fss_fetchEventStatsAndSetInDictionary(v4, a1, v5);

  FigBytePumpGetFigBaseObject();
}

void fss_fetchEventStatsAndSetInDictionary(uint64_t a1, uint64_t a2, CFArrayRef *a3)
{
  v3 = *a3;
  if (*a3 && CFArrayGetCount(*a3) >= 1)
  {
    v6 = 0;
    do
    {
      ValueAtIndex = CFArrayGetValueAtIndex(v3, v6);
      if (ValueAtIndex)
      {
        FigReportingStatsCopyAsCFTypeAndSetInDictionary(a2, *ValueAtIndex, a3[1]);
      }

      ++v6;
    }

    while (v6 < CFArrayGetCount(v3));
  }
}

uint64_t OUTLINED_FUNCTION_1_5(uint64_t a1)
{

  return CMBaseObjectGetDerivedStorage();
}

uint64_t OUTLINED_FUNCTION_6_5(CFDictionaryRef *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, ...)
{
  va_start(va, a9);

  return fss_getOrCreateNewReportingStatsForReportingStatsKey(a1, v9, va);
}

uint64_t BVCUtilityGetVectorsFromTransform(double *a1, int32x2_t *a2, int32x2_t *a3)
{
  v4 = *a1;
  v3 = a1[1];
  v6 = a1[2];
  v5 = a1[3];
  v8 = a1[4];
  v7 = a1[5];
  v9 = v8 + v6 * 0.0 + *a1 * 0.0;
  v10 = v7 + v5 * 0.0 + v3 * 0.0;
  if (a2)
  {
    v11 = v8 + v4 + v6 * 0.0;
    if (vabdd_f64(v11, v9) > 32767.0)
    {
      BVCUtilityGetVectorsFromTransform_cold_2(&v18);
    }

    else
    {
      v12 = v7 + v3 + v5 * 0.0;
      if (vabdd_f64(v12, v10) <= 32767.0)
      {
        v13.f64[0] = v11 - v9;
        v13.f64[1] = v12 - v10;
        *a2 = vmovn_s64(vcvtq_n_s64_f64(v13, 0x10uLL));
        goto LABEL_5;
      }

      BVCUtilityGetVectorsFromTransform_cold_1(&v18);
    }

    return v18;
  }

LABEL_5:
  if (a3)
  {
    v14 = v8 + v6 + v4 * 0.0;
    if (vabdd_f64(v14, v9) > 32767.0)
    {
      BVCUtilityGetVectorsFromTransform_cold_4(&v18);
    }

    else
    {
      v15 = v7 + v5 + v3 * 0.0;
      if (vabdd_f64(v15, v10) <= 32767.0)
      {
        result = 0;
        v17.f64[0] = v14 - v9;
        v17.f64[1] = v15 - v10;
        *a3 = vmovn_s64(vcvtq_n_s64_f64(v17, 0x10uLL));
        return result;
      }

      BVCUtilityGetVectorsFromTransform_cold_3(&v18);
    }

    return v18;
  }

  return 0;
}

uint64_t BVCUtilityCreateEdgeLists(float64x2_t *a1, void *a2, void *a3, double a4, double a5, double a6, double a7, double a8, double a9, double a10, double a11)
{
  v129 = *MEMORY[0x1E69E9840];
  v122 = 0;
  v123 = 0;
  v21 = a1[1];
  v125 = *a1;
  v126 = v21;
  v127 = a1[2];
  if (!BVCUtilityIsAffineTransformInvertible(v125.f64))
  {
    v24 = 0;
    v65 = 0;
    v64 = 0;
    goto LABEL_154;
  }

  v118 = a2;
  v119 = a3;
  v22 = 0;
  v23 = 0;
  v24 = 0;
  v25 = 0;
  v26 = *a1;
  v27 = a1[1];
  v28 = a1[2];
  v29 = vmulq_n_f64(v27, a5);
  v30 = vaddq_f64(v28, vmlaq_n_f64(v29, *a1, a4));
  v31 = vaddq_f64(v28, vmlaq_n_f64(v29, *a1, a4 + a6));
  v125 = v30;
  v126 = v31;
  v32 = 0x7FFFFFFF;
  v127 = vaddq_f64(v28, vmlaq_n_f64(vmulq_n_f64(v27, a5 + a7), v26, a4 + a6));
  v128 = vsubq_f64(vaddq_f64(v30, v127), v31);
  v33 = 1;
  do
  {
    v34 = v23;
    v23 = malloc_type_calloc(1uLL, 0x1CuLL, 0x102004076C0B35AuLL);
    if (!v23)
    {
      v122 = v25;
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v117, v11, a2);
      v91 = v90;
      v65 = 0;
      v64 = 0;
      goto LABEL_158;
    }

    v35 = v23;
    if (v24)
    {
      *(v34 + 20) = v23;
      v35 = v24;
    }

    v24 = v35;
    v36 = v125.f64[v33];
    v37 = v22 + 1;
    LODWORD(v38) = (v22 + 1) & 3;
    v39 = v125.f64[2 * ((v22 + 1) & 3) + 1];
    if (v36 <= v39)
    {
      v40 = v22;
    }

    else
    {
      v40 = v38;
    }

    if (v36 <= v39)
    {
      v38 = v38;
    }

    else
    {
      v38 = v22;
    }

    v41 = &v125.f64[2 * v40];
    v42 = *v41;
    v43 = vcvtd_n_s64_f64(v41[1], 0x10uLL);
    *v23 = v43;
    v44 = &v125.f64[2 * v38];
    v45.f64[0] = v44[1];
    v45.f64[1] = v42;
    v46 = vmovn_s64(vcvtq_n_s64_f64(v45, 0x10uLL));
    *(v23 + 4) = v46;
    if (v46.i32[0] - v43 >= 0)
    {
      v47 = v46.i32[0] - v43;
    }

    else
    {
      v47 = v43 - v46.i32[0];
    }

    if (v47 > 0x3F)
    {
      *(v23 + 3) = (v42 * -4294967300.0 + *v44 * 4294967300.0) / (v46.i32[0] - v43);
    }

    else
    {
      v23[16] = 1;
    }

    if (v32 > v43)
    {
      v48 = v38 - 3;
      if (v38 < 3)
      {
        v48 = v38 + 1;
      }

      if (v48 != v40)
      {
        v49 = v40 < 3 ? v40 + 1 : v40 - 3;
        if (v49 == v38)
        {
          v25 = v23;
          v32 = v43;
        }
      }
    }

    v33 += 2;
    ++v22;
  }

  while (v37 != 4);
  v122 = v25;
  *(v23 + 20) = v24;
  if (!v25 || (v50 = *(v25 + 20)) == 0 || (v51 = *(v50 + 20)) == 0 || (v52 = *(v51 + 20)) == 0 || *(v52 + 20) != v25)
  {
    BVCUtilityCreateEdgeLists_cold_3(&v124);
    v65 = 0;
    v64 = 0;
    goto LABEL_109;
  }

  v123 = *(v51 + 20);
  *(v52 + 20) = v51;
  *(*(v25 + 20) + 20) = 0;
  *(*(v52 + 20) + 20) = 0;
  v53 = (a9 + a11) * 65536.0;
  v54 = &v123;
  v55 = 1;
  do
  {
    v56 = v55;
    if (v52)
    {
      v57 = 0;
      do
      {
        while (1)
        {
          v58 = *(v52 + 1);
          v59 = *v52;
          if (a9 * 65536.0 >= v59)
          {
            v59 = a9 * 65536.0;
          }

          v60 = v59;
          *(v52 + 2) += (*(v52 + 3) * (v59 - *v52)) >> 16;
          v61 = v58;
          if (v53 <= v58)
          {
            v61 = v53;
          }

          *v52 = v60;
          *(v52 + 1) = v61;
          if (v60 >= v61 || v52[16])
          {
            break;
          }

          v57 = v52;
          v52 = *(v52 + 20);
          if (!v52)
          {
            goto LABEL_48;
          }
        }

        v62 = *(v52 + 20);
        if (v57)
        {
          *(v57 + 20) = v62;
          v62 = *(v52 + 20);
        }

        else
        {
          *v54 = v62;
        }

        free(v52);
        v52 = v62;
      }

      while (v62);
LABEL_48:
      v25 = v122;
    }

    v55 = 0;
    v54 = &v122;
    v52 = v25;
  }

  while ((v56 & 1) != 0);
  v24 = v123;
  if (v123)
  {
    v63 = v25 == 0;
  }

  else
  {
    v63 = 1;
  }

  if (v63)
  {
    v64 = 0;
    v65 = 0;
LABEL_153:
    a2 = v118;
    a3 = v119;
    goto LABEL_154;
  }

  v66 = *(v123 + 2);
  v67 = *(v25 + 2);
  v68 = v66 <= v67;
  if (v66 == v67)
  {
    v68 = *(v123 + 3) <= *(v25 + 3);
  }

  v69 = !v68;
  v70 = 0;
  if (v69)
  {
    v65 = v123;
  }

  else
  {
    v65 = v25;
  }

  if (v69)
  {
    v64 = v25;
  }

  else
  {
    v64 = v123;
  }

  v71 = vcvtd_n_s64_f64(a8, 0x10uLL);
  v122 = 0;
  v72 = vcvtd_n_s64_f64(a8 + a10, 0x10uLL);
  v73 = 179;
  v74 = v64;
  while (1)
  {
    v75 = *(v74 + 20);
    v76 = *(v74 + 3);
    if (!v76)
    {
      if (*(v74 + 2) < v71)
      {
        *(v74 + 2) = v71;
      }

      goto LABEL_86;
    }

    v77 = *(v74 + 2);
    v78 = ((v71 - v77) << 16) / v76;
    if ((v78 & 0x80000000) == 0)
    {
      v79 = *(v74 + 1);
      v80 = *v74 + v78;
      if (v80 <= v79)
      {
        break;
      }
    }

    if (v71 > v77)
    {
      *(v74 + 2) = v71;
      *(v74 + 3) = 0;
      v81 = v71;
      goto LABEL_92;
    }

LABEL_86:
    v85 = *(v74 + 3);
    if (!v85)
    {
      v81 = *(v74 + 2);
LABEL_92:
      if (v81 > v72)
      {
LABEL_93:
        if (v70)
        {
          *(v70 + 20) = *(v74 + 20);
        }

        else
        {
          v64 = *(v74 + 20);
        }

        free(v74);
        goto LABEL_97;
      }

      goto LABEL_97;
    }

    v86 = *(v74 + 2);
    v87 = ((v72 - v86) << 16) / v85;
    if ((v87 & 0x80000000) != 0 || (v88 = *v74 + v87, v88 > *(v74 + 1)))
    {
      if (v72 < v86)
      {
        goto LABEL_93;
      }
    }

    else if ((v85 & 0x80000000) != 0)
    {
      *v74 = v88;
      *(v74 + 2) = v72;
    }

    else
    {
      *(v74 + 1) = v88;
    }

LABEL_97:
    if (v70)
    {
      v89 = v70;
    }

    else
    {
      v89 = v64;
    }

    do
    {
      v70 = v89;
      if (!v89)
      {
        break;
      }

      v89 = *(v89 + 20);
    }

    while (v89 != v75);
    v74 = v75;
    if (!v75)
    {
      goto LABEL_112;
    }
  }

  if (v76 >= 1 && v78)
  {
    v82 = malloc_type_calloc(1uLL, 0x1CuLL, 0x102004076C0B35AuLL);
    if (!v82)
    {
      goto LABEL_111;
    }

    *(v82 + 2) = v71;
    *(v82 + 3) = 0;
    *v82 = *v74;
    *(v82 + 1) = v80;
    *v74 = v80;
    *(v74 + 2) = v71;
    v83 = v82;
    if (v70)
    {
      *(v70 + 20) = v82;
      v83 = v64;
    }

    *(v82 + 20) = v74;
    v64 = v83;
    goto LABEL_86;
  }

  if ((v76 & 0x80000000) == 0 || v79 == v80)
  {
    goto LABEL_86;
  }

  v84 = malloc_type_calloc(1uLL, 0x1CuLL, 0x102004076C0B35AuLL);
  if (v84)
  {
    *(v84 + 2) = v71;
    *(v84 + 3) = 0;
    *v84 = v80;
    *(v84 + 1) = *(v74 + 1);
    *(v74 + 1) = v80;
    *(v84 + 20) = *(v74 + 20);
    *(v74 + 20) = v84;
    goto LABEL_86;
  }

  v73 = 197;
LABEL_111:
  if (!BVCUtilityCreateEdgeLists_cold_1(v73, &v124))
  {
    v24 = 0;
    goto LABEL_109;
  }

LABEL_112:
  if (!v65)
  {
LABEL_152:
    v24 = 0;
    goto LABEL_153;
  }

  v92 = 0;
  v93 = 315;
  v94 = v65;
  while (1)
  {
    v95 = *(v94 + 20);
    v96 = *(v94 + 3);
    if (!v96)
    {
      if (*(v94 + 2) > v72)
      {
        *(v94 + 2) = v72;
      }

      goto LABEL_131;
    }

    v97 = *(v94 + 2);
    v98 = ((v72 - v97) << 16) / v96;
    if ((v98 & 0x80000000) == 0)
    {
      v99 = *(v94 + 1);
      v100 = *v94 + v98;
      if (v100 <= v99)
      {
        break;
      }
    }

    if (v72 < v97)
    {
      *(v94 + 2) = v72;
      *(v94 + 3) = 0;
      v101 = v72;
      goto LABEL_137;
    }

LABEL_131:
    v105 = *(v94 + 3);
    if (!v105)
    {
      v101 = *(v94 + 2);
LABEL_137:
      if (v101 < v71)
      {
LABEL_138:
        if (v92)
        {
          *(v92 + 20) = *(v94 + 20);
        }

        else
        {
          v65 = *(v94 + 20);
        }

        free(v94);
        goto LABEL_142;
      }

      goto LABEL_142;
    }

    v106 = *(v94 + 2);
    v107 = ((v71 - v106) << 16) / v105;
    if ((v107 & 0x80000000) != 0 || (v108 = *v94 + v107, v108 > *(v94 + 1)))
    {
      if (v71 > v106)
      {
        goto LABEL_138;
      }
    }

    else if (v105 < 1)
    {
      *(v94 + 1) = v108;
    }

    else
    {
      *v94 = v108;
      *(v94 + 2) = v71;
    }

LABEL_142:
    if (v92)
    {
      v109 = v92;
    }

    else
    {
      v109 = v65;
    }

    do
    {
      v92 = v109;
      if (!v109)
      {
        break;
      }

      v109 = *(v109 + 20);
    }

    while (v109 != v95);
    v94 = v95;
    if (!v95)
    {
      goto LABEL_152;
    }
  }

  if ((v96 & 0x80000000) != 0 && v98)
  {
    v102 = malloc_type_calloc(1uLL, 0x1CuLL, 0x102004076C0B35AuLL);
    if (!v102)
    {
      goto LABEL_169;
    }

    *(v102 + 2) = v72;
    *(v102 + 3) = 0;
    *v102 = *v94;
    *(v102 + 1) = v100;
    *v94 = v100;
    *(v94 + 2) = v72;
    v103 = v102;
    if (v92)
    {
      *(v92 + 20) = v102;
      v103 = v65;
    }

    *(v102 + 20) = v94;
    v65 = v103;
    goto LABEL_131;
  }

  if (v96 < 1 || v99 == v100)
  {
    goto LABEL_131;
  }

  v104 = malloc_type_calloc(1uLL, 0x1CuLL, 0x102004076C0B35AuLL);
  if (v104)
  {
    *(v104 + 2) = v72;
    *(v104 + 3) = 0;
    *v104 = v100;
    *(v104 + 1) = *(v94 + 1);
    *(v94 + 1) = v100;
    *(v104 + 20) = *(v94 + 20);
    *(v94 + 20) = v104;
    goto LABEL_131;
  }

  v93 = 333;
LABEL_169:
  v116 = BVCUtilityCreateEdgeLists_cold_1(v93, &v124);
  v24 = 0;
  a2 = v118;
  a3 = v119;
  if (!v116)
  {
LABEL_109:
    v91 = v124;
    goto LABEL_158;
  }

LABEL_154:
  if (a2)
  {
    *a2 = v64;
    v64 = 0;
  }

  v91 = 0;
  if (a3)
  {
    *a3 = v65;
    v65 = 0;
  }

LABEL_158:
  if (v24)
  {
    do
    {
      v110 = *(v24 + 20);
      free(v24);
      v24 = v110;
    }

    while (v110);
  }

  v111 = v122;
  if (v122)
  {
    do
    {
      v112 = *(v111 + 20);
      free(v111);
      v111 = v112;
    }

    while (v112);
  }

  if (v64)
  {
    do
    {
      v113 = *(v64 + 20);
      free(v64);
      v64 = v113;
    }

    while (v113);
  }

  if (v65)
  {
    do
    {
      v114 = *(v65 + 20);
      free(v65);
      v65 = v114;
    }

    while (v114);
  }

  return v91;
}

uint64_t BVCUtilityDestroyEdgeList(uint64_t result)
{
  if (result)
  {
    do
    {
      v1 = *(result + 20);
      free(result);
      result = v1;
    }

    while (v1);
  }

  return result;
}

uint64_t FigMetadataReaderGetTypeID()
{
  MEMORY[0x19A8D3660](&FigMetadataReaderGetClassID_sRegisterFigMetadataReaderBaseTypeOnce, RegisterFigMetadataReaderBaseType);

  return CMBaseClassGetCFTypeID();
}

CFTypeRef FigMetadataReaderRetain(CFTypeRef cf)
{
  if (cf)
  {
    return CFRetain(cf);
  }

  return cf;
}

void FigMetadataReaderRelease(CFTypeRef cf)
{
  if (cf)
  {
    CFRelease(cf);
  }
}

uint64_t __FigEndpointStreamAudioEngineSbufTracerDebugPrint_block_invoke(uint64_t a1)
{
  FigNote_AllowInternalDefaultLogs();
  fig_note_initialize_category_with_default_work_cf();

  return fig_note_initialize_category_with_default_work_cf();
}

uint64_t FigEndpointStreamAudioEngineGetClassID(uint64_t a1, uint64_t a2)
{
  if (_MergedGlobals_15 != -1)
  {
    FigEndpointStreamAudioEngineGetClassID_cold_1();
  }

  return qword_1ED4CA418;
}

uint64_t audioEngine_registerBaseClass(uint64_t a1)
{
  CMBaseGetClassID();

  return FigBaseClassRegisterClass();
}

uint64_t FigEndpointStreamAudioEngineGetTypeID(uint64_t a1, uint64_t a2)
{
  if (_MergedGlobals_15 != -1)
  {
    FigEndpointStreamAudioEngineGetClassID_cold_1();
  }

  return CMBaseClassGetCFTypeID();
}

uint64_t FigTimedMetadataRenderPipelineCreate(uint64_t a1, uint64_t a2, uint64_t a3, CFTypeRef *a4)
{
  cf = 0;
  if (!a2)
  {
    FigTimedMetadataRenderPipelineCreate_cold_3(&v16);
LABEL_17:
    v14 = v16;
    goto LABEL_10;
  }

  if (!a4)
  {
    FigTimedMetadataRenderPipelineCreate_cold_2(&v16);
    goto LABEL_17;
  }

  FigRenderPipelineGetClassID();
  v8 = CMDerivedObjectCreate();
  if (v8)
  {
LABEL_13:
    v14 = v8;
    goto LABEL_10;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  DerivedStorage[4] = a2;
  DerivedStorage[5] = a3;
  v10 = FigReentrantMutexCreate();
  DerivedStorage[1] = v10;
  if (!v10)
  {
    FigTimedMetadataRenderPipelineCreate_cold_1(&v16);
    goto LABEL_17;
  }

  v16 = *MEMORY[0x1E6960CC0];
  v17 = *(MEMORY[0x1E6960CC0] + 16);
  FigSimpleRenderPipelineCreateWithCallback(a1, tdrp_pipelineCallback, 0, cf, &v16, 0, DerivedStorage + 2);
  if (v8)
  {
    goto LABEL_13;
  }

  FigRenderPipelineGetFigBaseObject();
  v12 = v11;
  v13 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v13)
  {
    v14 = v13(v12, @"SourceSampleBufferQueue", a1, DerivedStorage + 3);
    if (!v14)
    {
      CMNotificationCenterGetDefaultLocalCenter();
      CMNotificationCenterAddListener();
      *a4 = cf;
      return v14;
    }
  }

  else
  {
    v14 = 4294954514;
  }

LABEL_10:
  if (cf)
  {
    CFRelease(cf);
  }

  return v14;
}

void tdrp_pipelineCallback(const void *a1, opaqueCMSampleBuffer *target)
{
  v2 = target;
  if (CMGetAttachment(target, *MEMORY[0x1E69604B0], 0))
  {
    return;
  }

  SampleAttachmentsArray = CMSampleBufferGetSampleAttachmentsArray(v2, 0);
  LOBYTE(cf[0]) = 0;
  if (SampleAttachmentsArray)
  {
    v5 = SampleAttachmentsArray;
    if (CFArrayGetCount(SampleAttachmentsArray) > 0)
    {
      CFArrayGetValueAtIndex(v5, 0);
      FigCFDictionaryGetBooleanIfPresent();
    }
  }

  FormatDescription = CMSampleBufferGetFormatDescription(v2);
  MediaSubType = CMFormatDescriptionGetMediaSubType(FormatDescription);
  if (MediaSubType <= 1768174367)
  {
    if (MediaSubType == 1701671783)
    {
      cf[0] = 0;
      value.value = 0;
      if (v2)
      {
        v10 = CMSampleBufferGetSampleAttachmentsArray(v2, 0);
        if (v10)
        {
          v11 = v10;
          if (CFArrayGetCount(v10) >= 1)
          {
            ValueAtIndex = CFArrayGetValueAtIndex(v11, 0);
            if (ValueAtIndex)
            {
              if (CFDictionaryGetValueIfPresent(ValueAtIndex, *MEMORY[0x1E6962DB8], cf))
              {
                if (cf[0])
                {
                  CFDictionaryGetValueIfPresent(cf[0], *MEMORY[0x1E6962720], &value);
                  if (value.value)
                  {
                    tdrp_pipelineCallback_cold_1(value.value, &value, a1, v2);
                  }
                }
              }
            }
          }
        }
      }

      return;
    }

    if (MediaSubType != 1768126752)
    {
      return;
    }

    value.value = 0;
    cf[0] = 0;
    cf[1] = 0;
    if (!FigIcyMetadataParseSampleBuffer(v2, &value, cf))
    {
      if (!value.value)
      {
LABEL_11:
        if (cf[0])
        {
          CFRelease(cf[0]);
        }

        if (cf[1])
        {
          CFRelease(cf[1]);
        }

        return;
      }

      tdrp_pipelineCallback_cold_4(value.value, a1, cf, &value);
    }

    if (value.value)
    {
      CFRelease(value.value);
    }

    goto LABEL_11;
  }

  if (MediaSubType != 1835360888)
  {
    if (MediaSubType == 1768174368)
    {
      tdrp_ParseID3(a1, v2);
    }

    else if (MediaSubType == 1886155636)
    {
      tdrp_pipelineCallback_cold_2(a1, v2);
    }

    return;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v49 = 0;
  FigSimpleMutexLock();
  if (*DerivedStorage)
  {
    fig_log_get_emitter();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v29, v31, v33);
    goto LABEL_18;
  }

  if (!v2)
  {
LABEL_63:
    v9 = 0;
    goto LABEL_64;
  }

  v47 = 0u;
  v48 = 0u;
  v46 = 0u;
  v44 = 0u;
  v45 = 0u;
  *cf = 0u;
  v43 = 0u;
  localKeyID = 0;
  v40 = 0;
  CMSampleBufferGetPresentationTimeStamp(&value, v2);
  v13 = CFGetAllocator(a1);
  time = value;
  v35 = CMTimeCopyAsDictionary(&time, v13);
  if (!v35)
  {
LABEL_18:
    v9 = 0;
    v2 = 0;
LABEL_64:
    v24 = 0;
    goto LABEL_65;
  }

  if (!CMSampleBufferGetDataBuffer(v2) || FigAtomStreamInitWithBBuf())
  {
    CFRelease(v35);
    goto LABEL_18;
  }

  v2 = 0;
  key = *MEMORY[0x1E6960330];
  while (1)
  {
    totalLengthOut = 0;
    time.value = 0;
    if (FigAtomStreamGetCurrentAtomTypeAndDataLength())
    {
      goto LABEL_62;
    }

    KeyWithLocalID = CMMetadataFormatDescriptionGetKeyWithLocalID(FormatDescription, localKeyID);
    if (KeyWithLocalID)
    {
      v15 = KeyWithLocalID;
      KeyNamespaceUInt32 = FigMetadataKeyGetKeyNamespaceUInt32();
      if (KeyNamespaceUInt32)
      {
        v17 = KeyNamespaceUInt32;
        v18 = CFDictionaryGetValue(v15, key);
        if (v18)
        {
          break;
        }
      }
    }

    v9 = 0;
    v24 = 0;
    v22 = 0;
LABEL_51:
    if (v49)
    {
      CFRelease(v49);
      v49 = 0;
    }

    if (v24)
    {
      CFRelease(v24);
    }

    if (v22)
    {
      CFRelease(v22);
    }

    if (v9)
    {
      CFRelease(v9);
    }

    if (FigAtomStreamAdvanceToNextAtom())
    {
      if (v2)
      {
        (*(DerivedStorage + 32))(v2, *(DerivedStorage + 40));
      }

      goto LABEL_62;
    }
  }

  v19 = v18;
  if (FigAtomStreamReadCurrentAtomDataAndCreateBBuf() || CMBlockBufferGetDataPointer(v49, 0, 0, &totalLengthOut, &time))
  {
    goto LABEL_62;
  }

  v20 = CFGetAllocator(a1);
  v21 = CFStringCreateWithFormat(v20, 0, @"%c%c%c%c", HIBYTE(v17), BYTE2(v17), BYTE1(v17), v17);
  if (!v21)
  {
    tdrp_pipelineCallback_cold_3();
LABEL_62:
    CFRelease(v35);
    goto LABEL_63;
  }

  v22 = v21;
  if (!time.value)
  {
    v9 = 0;
    v24 = 0;
    goto LABEL_79;
  }

  v23 = CFGetAllocator(a1);
  v24 = CFDataCreate(v23, time.value, totalLengthOut);
  if (v24)
  {
    v25 = CFGetAllocator(a1);
    Mutable = CFDictionaryCreateMutable(v25, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    v9 = Mutable;
    if (!Mutable)
    {
      goto LABEL_79;
    }

    CFDictionaryAddValue(Mutable, @"value", v24);
    CFDictionaryAddValue(v9, @"keyspace", v22);
    CFDictionaryAddValue(v9, @"key", v19);
    CFDictionaryAddValue(v9, @"timestamp", v35);
    DataTypeForLocalID = FigMetadataFormatDescriptionGetDataTypeForLocalID();
    if (DataTypeForLocalID)
    {
      CFDictionaryAddValue(v9, @"dataType", DataTypeForLocalID);
      CFDictionaryAddValue(v9, @"dataTypeNamespace", @"com.apple.coremedia");
    }

    if (!v2)
    {
      v28 = CFGetAllocator(a1);
      v2 = CFArrayCreateMutable(v28, 0, MEMORY[0x1E695E9C0]);
      if (!v2)
      {
        goto LABEL_79;
      }
    }

    CFArrayAppendValue(v2, v9);
    goto LABEL_51;
  }

  v9 = 0;
LABEL_79:
  fig_log_get_emitter();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v30, v32, v34);
  CFRelease(v35);
  CFRelease(v22);
LABEL_65:
  if (v49)
  {
    CFRelease(v49);
  }

  if (v24)
  {
    CFRelease(v24);
  }

  if (v9)
  {
    CFRelease(v9);
  }

  if (v2)
  {
    CFRelease(v2);
  }

  FigSimpleMutexUnlock();
}

uint64_t tdrp_resetOutput(uint64_t a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  if (*DerivedStorage)
  {

    return FigSimpleMutexUnlock();
  }

  else
  {
    v4 = *(DerivedStorage + 40);
    v5 = *(DerivedStorage + 32);
    result = FigSimpleMutexUnlock();
    if (v5)
    {

      return v5(0, v4);
    }
  }

  return result;
}

__CFString *FigTimedMetadataRenderPipelineCopyDebugDescription(uint64_t a1)
{
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  CFStringAppendFormat(Mutable, 0, @"<FigTimedMetadataRenderPipeline %p>", a1);
  return Mutable;
}

void FigTimedMetadataRenderPipelineCopyProperty(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (DerivedStorage && !*DerivedStorage)
  {
    FigRenderPipelineGetFigBaseObject();
    v11 = v10;
    v12 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v12)
    {

      v12(v11, a2, a3, a4);
    }
  }

  else
  {
    emitter = fig_log_get_emitter();

    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 4294954444, "<< TimedMetadata RP >>", 1028, v4);
  }
}

void FigTimedMetadataRenderPipelineSetProperty(uint64_t a1, uint64_t a2, uint64_t a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (DerivedStorage && !*DerivedStorage)
  {
    FigRenderPipelineGetFigBaseObject();
    v9 = v8;
    v10 = *(*(CMBaseObjectGetVTable() + 8) + 56);
    if (v10)
    {

      v10(v9, a2, a3);
    }
  }

  else
  {
    emitter = fig_log_get_emitter();

    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 4294954444, "<< TimedMetadata RP >>", 1017, v3);
  }
}

void tdrp_CopyIcyItem(void *key, CFDictionaryRef *a2)
{
  value = 0;
  if (CFDictionaryGetValueIfPresent(*a2, key, &value))
  {
    CFArrayAppendValue(a2[1], value);
  }
}

uint64_t tdrp_BuildID3Dictionary(const __CFString *a1, const __CFDictionary *Value, CMTime *a3, const __CFAllocator *a4, __CFDictionary **a5)
{
  TypeID = CFDictionaryGetTypeID();
  if (TypeID == CFGetTypeID(Value))
  {
    v11 = Value;
  }

  else
  {
    v11 = 0;
  }

  Mutable = CFDictionaryCreateMutable(a4, 7, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (!Mutable)
  {
    tdrp_BuildID3Dictionary_cold_2(&v31);
    return LODWORD(v31.value);
  }

  v13 = Mutable;
  CFDictionaryAddValue(Mutable, @"keyspace", @"org.id3");
  CFDictionaryAddValue(v13, @"key", a1);
  v31 = *a3;
  v14 = CMTimeCopyAsDictionary(&v31, a4);
  if (!v14)
  {
    tdrp_BuildID3Dictionary_cold_1(v13, &v31);
    return LODWORD(v31.value);
  }

  v15 = v14;
  CFDictionaryAddValue(v13, @"timestamp", v14);
  CFRelease(v15);
  if (v11)
  {
    Value = CFDictionaryGetValue(v11, @"data");
    if (!Value)
    {
      Value = CFDictionaryGetValue(v11, @"text");
    }

    v16 = CFDictionaryGetValue(v11, @"identifier");
    if (v16)
    {
      CFDictionaryAddValue(v13, @"info", v16);
    }

    v17 = CFDictionaryGetValue(v11, @"language");
    if (v17)
    {
      CFDictionaryAddValue(v13, @"languageCode", v17);
    }

    v18 = CFDictionaryGetValue(v11, @"MIME");
    if (v18)
    {
      CFDictionaryAddValue(v13, @"dataType", v18);
      CFDictionaryAddValue(v13, @"dataTypeNamespace", @"org.iana.media-type");
    }

    v19 = CFDictionaryGetValue(v11, @"picturetype");
    if (v19)
    {
      CFDictionaryAddValue(v13, @"pictureType", v19);
    }

    v20 = CFDictionaryGetValue(v11, @"filename");
    if (v20)
    {
      CFDictionaryAddValue(v13, @"name", v20);
    }

    if (Value)
    {
      goto LABEL_20;
    }

LABEL_26:
    result = 0;
    *a5 = v13;
    return result;
  }

  v18 = 0;
  if (!Value)
  {
    goto LABEL_26;
  }

LABEL_20:
  v21 = CFURLGetTypeID();
  if (v21 == CFGetTypeID(Value) && (v22 = CFURLCopyAbsoluteURL(Value)) != 0)
  {
    v23 = v22;
    v24 = CFURLGetString(v22);
    if (v24)
    {
      Value = CFRetain(v24);
      v25 = Value;
    }

    else
    {
      v25 = 0;
    }

    CFRelease(v23);
  }

  else
  {
    v25 = 0;
  }

  v27 = CFStringCompare(a1, @"GEOB", 0);
  if (v18)
  {
    if (v27 == kCFCompareEqualTo && CFStringCompare(v18, @"application/xml", 1uLL) == kCFCompareEqualTo)
    {
      v28 = CFDictionaryGetValue(v13, @"name");
      if (v28)
      {
        if (CFStringHasSuffix(v28, @".plist"))
        {
          v29 = CFDataGetTypeID();
          if (v29 == CFGetTypeID(Value))
          {
            v30 = CFPropertyListCreateWithData(a4, Value, 0, 0, 0);
            if (v30)
            {
              Value = v30;
              v25 = v30;
            }
          }
        }
      }
    }
  }

  CFDictionaryAddValue(v13, @"value", Value);
  *a5 = v13;
  if (v25)
  {
    CFRelease(v25);
  }

  return 0;
}

uint64_t RegisterFigDataChannelResourceType()
{
  CMBaseGetClassID();

  return FigBaseClassRegisterClass();
}

uint64_t FigDataChannelResourceGetTypeID()
{
  MEMORY[0x19A8D3660](&FigDataChannelResourceGetClassID_sRegisterFigDataChannelResourceTypeOnce, RegisterFigDataChannelResourceType);

  return CMBaseClassGetCFTypeID();
}

uint64_t FigDataChannelResourceCreate(uint64_t a1, uint64_t a2, uint64_t a3, CFTypeRef *a4)
{
  FigNote_AllowInternalDefaultLogs();
  fig_note_initialize_category_with_default_work_cf();
  fig_note_initialize_category_with_default_work_cf();
  if (!a3)
  {
    FigDataChannelResourceCreate_cold_3(&v9);
    return v9;
  }

  if (MEMORY[0x19A8D3320](a3) <= 0)
  {
    FigDataChannelResourceCreate_cold_2(&v9);
    return v9;
  }

  if (!a4)
  {
    FigDataChannelResourceCreate_cold_1(&v9);
    return v9;
  }

  MEMORY[0x19A8D3660](&FigDataChannelResourceGetClassID_sRegisterFigDataChannelResourceTypeOnce, RegisterFigDataChannelResourceType);
  Copy = CMDerivedObjectCreate();
  if (!Copy)
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    DerivedStorage[2] = 0;
    DerivedStorage[6] = 0;
    DerivedStorage[8] = 0;
    CFGetAllocator(0);
    Copy = FigTagCollectionCreateCopy();
    if (!Copy)
    {
      *a4 = 0;
    }
  }

  return Copy;
}

void dataChannelResource_finalize(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*DerivedStorage)
  {
    CFRelease(*DerivedStorage);
    *DerivedStorage = 0;
  }

  v2 = *(DerivedStorage + 16);
  if (v2)
  {
    CFRelease(v2);
    *(DerivedStorage + 16) = 0;
  }
}

CFStringRef dataChannelResource_copyDebugDesc(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v3 = *MEMORY[0x1E695E480];
  if (DerivedStorage)
  {
    return CFStringCreateWithFormat(v3, 0, @"[DataChannelResource %p]: resourceID: %d", a1, *(DerivedStorage + 8));
  }

  else
  {
    return CFStringCreateWithFormat(v3, 0, @"[DataChannelResource %p]", a1);
  }
}

uint64_t dataChannelResource_GetState(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a1)
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    os_unfair_lock_lock(DerivedStorage + 8);
    os_unfair_lock_opaque = DerivedStorage[6]._os_unfair_lock_opaque;
    os_unfair_lock_unlock(DerivedStorage + 8);
  }

  else
  {
    dataChannelResource_GetState_cold_1(0, a2, a3, a4, a5, a6, a7, a8, v11, v12, SHIDWORD(v12), vars0);
    return 0;
  }

  return os_unfair_lock_opaque;
}

uint64_t dataChannelResource_CopyPayload(uint64_t a1, void *a2)
{
  if (a1)
  {
    if (a2)
    {
      DerivedStorage = CMBaseObjectGetDerivedStorage();
      os_unfair_lock_lock((DerivedStorage + 32));
      if (*DerivedStorage)
      {
        v4 = CFRetain(*DerivedStorage);
      }

      else
      {
        v4 = 0;
      }

      os_unfair_lock_unlock((DerivedStorage + 32));
      result = 0;
      *a2 = v4;
    }

    else
    {
      dataChannelResource_CopyPayload_cold_1(&v6);
      return v6;
    }
  }

  else
  {
    dataChannelResource_CopyPayload_cold_2(&v7);
    return v7;
  }

  return result;
}

uint64_t dataChannelResource_CopyTagCollection(const void *a1, uint64_t a2)
{
  if (a1)
  {
    if (a2)
    {
      CMBaseObjectGetDerivedStorage();
      CFGetAllocator(a1);

      return FigTagCollectionCreateCopy();
    }

    else
    {
      dataChannelResource_CopyTagCollection_cold_1(&v4);
      return v4;
    }
  }

  else
  {
    dataChannelResource_CopyTagCollection_cold_2(&v5);
    return v5;
  }
}

uint64_t dataChannelResource_ProvidePayload(uint64_t a1, const void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  if (dword_1EAF16AB0)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (!a1)
  {
    dataChannelResource_ProvidePayload_cold_3(v10);
    goto LABEL_12;
  }

  if (!a2)
  {
    dataChannelResource_ProvidePayload_cold_2(v10);
    goto LABEL_12;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*DerivedStorage)
  {
    dataChannelResource_ProvidePayload_cold_1(v10);
LABEL_12:
    v7 = v10[0];
    if (!v10[0])
    {
      return v7;
    }

    goto LABEL_7;
  }

  v6 = DerivedStorage;
  os_unfair_lock_lock((DerivedStorage + 32));
  *v6 = CFRetain(a2);
  os_unfair_lock_unlock((v6 + 32));
  v7 = dataChannelResource_setResourceStateAndPostNotification(a1, 1u);
  if (v7)
  {
LABEL_7:
    v8 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  return v7;
}

uint64_t dataChannelResource_SetFailedToLoad(uint64_t a1)
{
  v5 = *MEMORY[0x1E69E9840];
  if (dword_1EAF16AB0)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (a1)
  {
    return dataChannelResource_setResourceStateAndPostNotification(a1, 2u);
  }

  dataChannelResource_SetFailedToLoad_cold_1(v4);
  return v4[0];
}

uint64_t dataChannelResource_SetCancelled(uint64_t a1)
{
  v5 = *MEMORY[0x1E69E9840];
  if (dword_1EAF16AB0)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (a1)
  {
    return dataChannelResource_setResourceStateAndPostNotification(a1, 3u);
  }

  dataChannelResource_SetCancelled_cold_1(v4);
  return v4[0];
}

uint64_t dataChannelResource_GetProcessingState(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a1)
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    os_unfair_lock_lock(DerivedStorage + 8);
    os_unfair_lock_opaque = DerivedStorage[7]._os_unfair_lock_opaque;
    os_unfair_lock_unlock(DerivedStorage + 8);
  }

  else
  {
    dataChannelResource_GetProcessingState_cold_1(0, a2, a3, a4, a5, a6, a7, a8, v11, v12, SHIDWORD(v12), vars0);
    return 0;
  }

  return os_unfair_lock_opaque;
}

uint64_t OUTLINED_FUNCTION_4_6(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, const char *a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);

  return _os_log_send_and_compose_impl(a1, 0, va, 128, a5, v18, v19, a8);
}

uint64_t FigSessionDataSpecifierGetTypeID()
{
  v1 = xmmword_1E74771B0;
  if (sds_getTypeID_once != -1)
  {
    dispatch_once_f(&sds_getTypeID_once, &v1, spptUtil_registerClass);
  }

  return sds_getTypeID_typeID;
}

uint64_t FigSessionDataSpecifierCreate(const void *a1, const void *a2, const void *a3, const void *a4, int a5, uint64_t *a6)
{
  MEMORY[0x19A8D3660](&sFigPlaylistSpecifiersRegisterAttachmentOnce, _figAttachmentsRegisterStreamPlaylistSpecifiers);
  if (a6)
  {
    FigGetAllocatorForMedia();
    FigSessionDataSpecifierGetTypeID();
    Instance = _CFRuntimeCreateInstance();
    if (Instance)
    {
      v13 = Instance;
      if (a1)
      {
        v14 = CFRetain(a1);
      }

      else
      {
        v14 = 0;
      }

      *(v13 + 16) = v14;
      if (a2)
      {
        v15 = CFRetain(a2);
      }

      else
      {
        v15 = 0;
      }

      *(v13 + 24) = v15;
      if (a3)
      {
        v16 = CFRetain(a3);
      }

      else
      {
        v16 = 0;
      }

      *(v13 + 32) = v16;
      if (a4)
      {
        v17 = CFRetain(a4);
      }

      else
      {
        v17 = 0;
      }

      result = 0;
      *(v13 + 40) = v17;
      *(v13 + 48) = a5;
      *a6 = v13;
    }

    else
    {
      FigSessionDataSpecifierCreate_cold_1(&v19);
      return v19;
    }
  }

  else
  {
    FigSessionDataSpecifierCreate_cold_2(&v20);
    return v20;
  }

  return result;
}

void FigSessionDataSpecifierSetURL(uint64_t a1, CFTypeRef cf)
{
  v2 = *(a1 + 24);
  *(a1 + 24) = cf;
  if (cf)
  {
    CFRetain(cf);
  }

  if (v2)
  {

    CFRelease(v2);
  }
}

uint64_t FigRenditionReportSpecifierGetTypeID()
{
  v1 = xmmword_1E74771C0;
  if (rrs_getTypeID_once != -1)
  {
    dispatch_once_f(&rrs_getTypeID_once, &v1, spptUtil_registerClass);
  }

  return rrs_getTypeID_typeID;
}

uint64_t FigRenditionReportSpecifierCreate(const void *a1, uint64_t a2, uint64_t a3, int a4, int a5, char a6, char a7, uint64_t *a8)
{
  MEMORY[0x19A8D3660](&sFigPlaylistSpecifiersRegisterAttachmentOnce, _figAttachmentsRegisterStreamPlaylistSpecifiers);
  if (a8)
  {
    FigGetAllocatorForMedia();
    FigRenditionReportSpecifierGetTypeID();
    Instance = _CFRuntimeCreateInstance();
    if (Instance)
    {
      v17 = Instance;
      if (a1)
      {
        v18 = CFRetain(a1);
      }

      else
      {
        v18 = 0;
      }

      result = 0;
      *(v17 + 16) = v18;
      *(v17 + 24) = a2;
      *(v17 + 32) = a3;
      *(v17 + 40) = a4;
      *(v17 + 44) = a5;
      *(v17 + 48) = a6;
      *(v17 + 49) = a7;
      *a8 = v17;
    }

    else
    {
      FigRenditionReportSpecifierCreate_cold_1(&v20);
      return v20;
    }
  }

  else
  {
    FigRenditionReportSpecifierCreate_cold_2(&v21);
    return v21;
  }

  return result;
}

uint64_t FigDateRangeSpecifierGetTypeID()
{
  v1 = xmmword_1E74771D0;
  if (drs_getTypeID_once != -1)
  {
    dispatch_once_f(&drs_getTypeID_once, &v1, spptUtil_registerClass);
  }

  return drs_getTypeID_typeID;
}

uint64_t FigDateRangeSpecifierCreate(const void *a1, const void *a2, const void *a3, const void *a4, const void *a5, const void *a6, const void *a7, char a8, double a9, double a10, double a11, double a12, char a13, const void *a14, const void *a15, const void *a16, const void *a17, char a18, const void *a19, const void *a20, const void *a21, uint64_t *a22)
{
  MEMORY[0x19A8D3660](&sFigPlaylistSpecifiersRegisterAttachmentOnce, _figAttachmentsRegisterStreamPlaylistSpecifiers);
  if (a22)
  {
    FigGetAllocatorForMedia();
    FigDateRangeSpecifierGetTypeID();
    Instance = _CFRuntimeCreateInstance();
    if (Instance)
    {
      v35 = Instance;
      if (a1)
      {
        v36 = CFRetain(a1);
      }

      else
      {
        v36 = 0;
      }

      *(v35 + 16) = v36;
      if (a2)
      {
        v37 = CFRetain(a2);
      }

      else
      {
        v37 = 0;
      }

      *(v35 + 24) = v37;
      if (a3)
      {
        v38 = CFRetain(a3);
      }

      else
      {
        v38 = 0;
      }

      *(v35 + 32) = v38;
      if (a4)
      {
        v39 = CFRetain(a4);
      }

      else
      {
        v39 = 0;
      }

      *(v35 + 40) = v39;
      if (a5)
      {
        v40 = CFRetain(a5);
      }

      else
      {
        v40 = 0;
      }

      *(v35 + 48) = v40;
      if (a6)
      {
        v41 = CFRetain(a6);
      }

      else
      {
        v41 = 0;
      }

      *(v35 + 56) = v41;
      if (a7)
      {
        v42 = CFRetain(a7);
      }

      else
      {
        v42 = 0;
      }

      *(v35 + 64) = v42;
      *(v35 + 160) = a8;
      *(v35 + 161) = a13;
      if (a14)
      {
        v43 = CFRetain(a14);
      }

      else
      {
        v43 = 0;
      }

      *(v35 + 72) = v43;
      if (a15)
      {
        v44 = CFRetain(a15);
      }

      else
      {
        v44 = 0;
      }

      *(v35 + 80) = v44;
      if (a16)
      {
        v45 = CFRetain(a16);
      }

      else
      {
        v45 = 0;
      }

      *(v35 + 88) = v45;
      *(v35 + 96) = a9;
      *(v35 + 104) = a10;
      if (a17)
      {
        v46 = CFRetain(a17);
      }

      else
      {
        v46 = 0;
      }

      *(v35 + 112) = v46;
      *(v35 + 162) = a18;
      *(v35 + 120) = a11;
      *(v35 + 128) = a12;
      if (a19)
      {
        v47 = CFRetain(a19);
      }

      else
      {
        v47 = 0;
      }

      *(v35 + 136) = v47;
      if (a20)
      {
        v48 = CFRetain(a20);
      }

      else
      {
        v48 = 0;
      }

      *(v35 + 144) = v48;
      if (a21)
      {
        v49 = CFRetain(a21);
      }

      else
      {
        v49 = 0;
      }

      *(v35 + 152) = v49;
      if (!*(v35 + 16))
      {
        AllocatorForMedia = FigGetAllocatorForMedia();
        *(v35 + 16) = CFDictionaryCreateMutable(AllocatorForMedia, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      }

      if (!*(v35 + 112))
      {
        v51 = FigGetAllocatorForMedia();
        *(v35 + 112) = CFDictionaryCreateMutable(v51, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      }

      result = 0;
      *a22 = v35;
    }

    else
    {
      FigDateRangeSpecifierCreate_cold_1(&v53);
      return v53;
    }
  }

  else
  {
    FigDateRangeSpecifierCreate_cold_2(&v54);
    return v54;
  }

  return result;
}

void FigDateRangeSpecifierSetMetadataDict(uint64_t a1, CFTypeRef cf)
{
  v2 = *(a1 + 16);
  *(a1 + 16) = cf;
  if (cf)
  {
    CFRetain(cf);
  }

  if (v2)
  {

    CFRelease(v2);
  }
}

void FigDateRangeSpecifierSetIdentifier(uint64_t a1, CFTypeRef cf)
{
  v2 = *(a1 + 24);
  *(a1 + 24) = cf;
  if (cf)
  {
    CFRetain(cf);
  }

  if (v2)
  {

    CFRelease(v2);
  }
}

void FigDateRangeSpecifierSetTaggedRangeClass(uint64_t a1, CFTypeRef cf)
{
  v2 = *(a1 + 32);
  *(a1 + 32) = cf;
  if (cf)
  {
    CFRetain(cf);
  }

  if (v2)
  {

    CFRelease(v2);
  }
}

void FigDateRangeSpecifierSetTaggedRangeLine(uint64_t a1, CFTypeRef cf)
{
  v2 = *(a1 + 40);
  *(a1 + 40) = cf;
  if (cf)
  {
    CFRetain(cf);
  }

  if (v2)
  {

    CFRelease(v2);
  }
}

void FigDateRangeSpecifierSetTaggedRangeCue(uint64_t a1, CFTypeRef cf)
{
  v2 = *(a1 + 48);
  *(a1 + 48) = cf;
  if (cf)
  {
    CFRetain(cf);
  }

  if (v2)
  {

    CFRelease(v2);
  }
}

void FigDateRangeSpecifierSetStartDate(uint64_t a1, CFTypeRef cf)
{
  v2 = *(a1 + 56);
  *(a1 + 56) = cf;
  if (cf)
  {
    CFRetain(cf);
  }

  if (v2)
  {

    CFRelease(v2);
  }
}

void FigDateRangeSpecifierSetEndDate(uint64_t a1, CFTypeRef cf)
{
  v2 = *(a1 + 64);
  *(a1 + 64) = cf;
  if (cf)
  {
    CFRetain(cf);
  }

  if (v2)
  {

    CFRelease(v2);
  }
}

void FigDateRangeSpecifierSetScte35cmd(uint64_t a1, CFTypeRef cf)
{
  v2 = *(a1 + 72);
  *(a1 + 72) = cf;
  if (cf)
  {
    CFRetain(cf);
  }

  if (v2)
  {

    CFRelease(v2);
  }
}

void FigDateRangeSpecifierSetScte35in(uint64_t a1, CFTypeRef cf)
{
  v2 = *(a1 + 80);
  *(a1 + 80) = cf;
  if (cf)
  {
    CFRetain(cf);
  }

  if (v2)
  {

    CFRelease(v2);
  }
}

void FigDateRangeSpecifierSetScte35out(uint64_t a1, CFTypeRef cf)
{
  v2 = *(a1 + 88);
  *(a1 + 88) = cf;
  if (cf)
  {
    CFRetain(cf);
  }

  if (v2)
  {

    CFRelease(v2);
  }
}

void FigDateRangeSpecifierSetTempEndDate(uint64_t a1, CFTypeRef cf)
{
  v2 = *(a1 + 136);
  *(a1 + 136) = cf;
  if (cf)
  {
    CFRetain(cf);
  }

  if (v2)
  {

    CFRelease(v2);
  }
}

void FigDateRangeSpecifierSetModificationTimestamp(uint64_t a1, CFTypeRef cf)
{
  v2 = *(a1 + 152);
  *(a1 + 152) = cf;
  if (cf)
  {
    CFRetain(cf);
  }

  if (v2)
  {

    CFRelease(v2);
  }
}

uint64_t FigContentKeySpecifierGetTypeID()
{
  v1 = xmmword_1E74771E0;
  if (cks_getTypeID_once != -1)
  {
    dispatch_once_f(&cks_getTypeID_once, &v1, spptUtil_registerClass);
  }

  return cks_getTypeID_typeID;
}

uint64_t FigContentKeySpecifierCreate(int a1, const void *a2, int a3, const void *a4, uint64_t *a5)
{
  MEMORY[0x19A8D3660](&sFigPlaylistSpecifiersRegisterAttachmentOnce, _figAttachmentsRegisterStreamPlaylistSpecifiers);
  if (a5)
  {
    FigGetAllocatorForMedia();
    FigContentKeySpecifierGetTypeID();
    Instance = _CFRuntimeCreateInstance();
    if (Instance)
    {
      v11 = Instance;
      *(Instance + 16) = a1;
      if (a2)
      {
        v12 = CFRetain(a2);
      }

      else
      {
        v12 = 0;
      }

      *(v11 + 24) = v12;
      *(v11 + 32) = a3;
      if (a4)
      {
        v13 = CFRetain(a4);
      }

      else
      {
        v13 = 0;
      }

      result = 0;
      *(v11 + 40) = v13;
      *a5 = v11;
    }

    else
    {
      FigContentKeySpecifierCreate_cold_1(&v15);
      return v15;
    }
  }

  else
  {
    FigContentKeySpecifierCreate_cold_2(&v16);
    return v16;
  }

  return result;
}

void FigContentKeySpecifierSetRawKeyFormat(uint64_t a1, CFTypeRef cf)
{
  v2 = *(a1 + 72);
  *(a1 + 72) = cf;
  if (cf)
  {
    CFRetain(cf);
  }

  if (v2)
  {

    CFRelease(v2);
  }
}

uint64_t FigContentKeySpecifierGetCryptKeySize(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1 > 5)
  {
    return 16;
  }

  else
  {
    return qword_196E72A60[v1];
  }
}

uint64_t FigContentKeySpecifierGetCryptBlockSize(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    v2 = v1 == 5;
  }

  else
  {
    v2 = 1;
  }

  if (v2)
  {
    return 0;
  }

  else
  {
    return 16;
  }
}

uint64_t FigMediaSegmentSpecifierGetTypeID()
{
  v1 = xmmword_1E74771F0;
  if (mss_getTypeID_once != -1)
  {
    dispatch_once_f(&mss_getTypeID_once, &v1, spptUtil_registerClass);
  }

  return mss_getTypeID_typeID;
}

uint64_t FigMediaSegmentSpecifierCreate(uint64_t a1, const void *a2, const void *a3, const void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, double a9, double a10, double a11, const void *a12, const void *a13, int a14, char a15, char a16, char a17, char a18, char a19, char a20, uint64_t a21, char a22, uint64_t *a23)
{
  MEMORY[0x19A8D3660](&sFigPlaylistSpecifiersRegisterAttachmentOnce, _figAttachmentsRegisterStreamPlaylistSpecifiers);
  if (a23)
  {
    FigMediaSegmentSpecifierGetTypeID();
    Instance = _CFRuntimeCreateInstance();
    if (Instance)
    {
      v34 = Instance;
      if (a2)
      {
        v35 = CFRetain(a2);
      }

      else
      {
        v35 = 0;
      }

      *(v34 + 16) = v35;
      if (a3)
      {
        v36 = CFRetain(a3);
      }

      else
      {
        v36 = 0;
      }

      *(v34 + 24) = v36;
      if (a4)
      {
        v37 = CFRetain(a4);
      }

      else
      {
        v37 = 0;
      }

      *(v34 + 32) = v37;
      *(v34 + 48) = a5;
      *(v34 + 64) = a6;
      *(v34 + 72) = a7;
      *(v34 + 80) = a8;
      *(v34 + 88) = a9;
      *(v34 + 104) = a10;
      if (a12)
      {
        v38 = CFRetain(a12);
      }

      else
      {
        v38 = 0;
      }

      v39 = a22;
      *(v34 + 112) = v38;
      if (a13)
      {
        v40 = CFRetain(a13);
        v39 = a22;
        v41 = v40;
      }

      else
      {
        v41 = 0;
      }

      result = 0;
      *(v34 + 120) = v41;
      *(v34 + 128) = a11;
      *(v34 + 168) = a14;
      *(v34 + 160) = a15;
      *(v34 + 161) = a16;
      *(v34 + 162) = a17;
      *(v34 + 163) = a18;
      *(v34 + 164) = a19;
      *(v34 + 165) = a20;
      *(v34 + 56) = a21;
      *(v34 + 166) = v39;
      *a23 = v34;
    }

    else
    {
      FigMediaSegmentSpecifierCreate_cold_1(&v43);
      return v43;
    }
  }

  else
  {
    FigMediaSegmentSpecifierCreate_cold_2(&v44);
    return v44;
  }

  return result;
}

void FigMediaSegmentSpecifierSetURLString(uint64_t a1, CFTypeRef cf)
{
  v2 = *(a1 + 16);
  *(a1 + 16) = cf;
  if (cf)
  {
    CFRetain(cf);
  }

  if (v2)
  {

    CFRelease(v2);
  }
}

void FigMediaSegmentSpecifierSetContentKeySpecifier(uint64_t a1, CFTypeRef cf)
{
  v2 = *(a1 + 24);
  *(a1 + 24) = cf;
  if (cf)
  {
    CFRetain(cf);
  }

  if (v2)
  {

    CFRelease(v2);
  }
}

void FigMediaSegmentSpecifierSetMapSegmentSpecifier(uint64_t a1, CFTypeRef cf)
{
  v2 = *(a1 + 32);
  *(a1 + 32) = cf;
  if (cf)
  {
    CFRetain(cf);
  }

  if (v2)
  {

    CFRelease(v2);
  }
}

uint64_t FigMediaSegmentSpecifierAddPartialSegment(uint64_t a1, void *a2)
{
  if (*(a1 + 40) || (AllocatorForMedia = FigGetAllocatorForMedia(), Mutable = CFArrayCreateMutable(AllocatorForMedia, 0, MEMORY[0x1E695E9C0]), (*(a1 + 40) = Mutable) != 0))
  {
    LastValue = FigCFArrayGetLastValue();
    if (LastValue)
    {
      *(LastValue + 136) = a2;
      a2[17] = 0;
      a2[18] = LastValue;
    }

    CFArrayAppendValue(*(a1 + 40), a2);
    return 0;
  }

  else
  {
    FigMediaSegmentSpecifierAddPartialSegment_cold_1(&v8);
    return v8;
  }
}

uint64_t FigMediaSegmentSpecifierRemovePartialSegment(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 136);
  v2 = *(a2 + 144);
  if (v2)
  {
    *(v2 + 136) = v3;
  }

  if (v3)
  {
    *(v3 + 144) = v2;
  }

  FigCFArrayRemoveLastElementOfValue();
  return 0;
}

void FigMediaSegmentSpecifierSetPartialSegments(uint64_t a1, CFTypeRef cf)
{
  v2 = *(a1 + 40);
  *(a1 + 40) = cf;
  if (cf)
  {
    CFRetain(cf);
  }

  if (v2)
  {

    CFRelease(v2);
  }
}

void FigMediaSegmentSpecifierSetIV(uint64_t a1, CFTypeRef cf)
{
  v2 = *(a1 + 112);
  *(a1 + 112) = cf;
  if (cf)
  {
    CFRetain(cf);
  }

  if (v2)
  {

    CFRelease(v2);
  }
}

void FigMediaSegmentSpecifierSetDateStamp(uint64_t a1, CFTypeRef cf)
{
  v2 = *(a1 + 120);
  *(a1 + 120) = cf;
  if (cf)
  {
    CFRetain(cf);
  }

  if (v2)
  {

    CFRelease(v2);
  }
}

void sds_finalize(void *a1)
{
  v2 = a1[2];
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = a1[3];
  if (v3)
  {
    CFRelease(v3);
  }

  v4 = a1[4];
  if (v4)
  {
    CFRelease(v4);
  }

  v5 = a1[5];
  if (v5)
  {
    CFRelease(v5);
  }

  v6 = a1[7];
  if (v6)
  {

    CFRelease(v6);
  }
}