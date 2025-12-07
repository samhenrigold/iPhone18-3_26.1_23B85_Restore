uint64_t fampb_validAlternateHasChanged(uint64_t a1, const void *a2)
{
  theArray[16] = *MEMORY[0x1E69E9840];
  CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  if (dword_1EAF17490)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  fampb_setBandwidthConditions(a2);
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  theArray[0] = 0;
  *v13 = 0;
  if (*(DerivedStorage + 112))
  {
    v5 = DerivedStorage;
    if (!fampb_copyValidAlternateList(*(DerivedStorage + 264), theArray))
    {
      if (!theArray[0])
      {
        goto LABEL_18;
      }

      if (CFArrayGetCount(theArray[0]) >= 1)
      {
        if (*(v5 + 136))
        {
          v8 = theArray[0];
          if (theArray[0])
          {
            v9.length = CFArrayGetCount(theArray[0]);
          }

          else
          {
            v9.length = 0;
          }

          v9.location = 0;
          CFArrayApplyFunction(v8, v9, fampb_recordAddNewAlternates, (v5 + 136));
LABEL_14:
          fampb_createRecordABREventEntryForNowAndInsertQ(a2, v13);
          if (*v13)
          {
            v10 = CFRetain(theArray[0]);
            v11 = *v13;
            *(*v13 + 16) = v10;
            *(v11 + 8) = 12;
            ++*(v5 + 180);
          }

          goto LABEL_16;
        }

        CFGetAllocator(a2);
        MutableCopy = FigCFArrayCreateMutableCopy();
        *(v5 + 136) = MutableCopy;
        if (MutableCopy)
        {
          v7 = MutableCopy;
          v15.length = CFArrayGetCount(MutableCopy);
          v15.location = 0;
          CFArraySortValues(v7, v15, fampb_AlternateZeroIndexComparator, 0);
          goto LABEL_14;
        }
      }
    }
  }

LABEL_16:
  if (theArray[0])
  {
    CFRelease(theArray[0]);
  }

LABEL_18:
  fampb_updateNetworkSpecifierOnArbiter(a2);
  return FigSimpleMutexUnlock();
}

double fampb_setupDryTimer(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 764))
  {
    v4 = DerivedStorage;
    v7 = *(DerivedStorage + 600);
    rhs = *(DerivedStorage + 364);
    CMTimeSubtract(&time2, &v7, &rhs);
    rhs.value = time2.value;
    flags = time2.flags;
    rhs.timescale = time2.timescale;
    if (time2.flags)
    {
      epoch = time2.epoch;
      if (*(v4 + 740))
      {
        time2 = *(v4 + 728);
      }

      else
      {
        CMTimebaseGetTimeClampedAboveAnchorTime();
      }

      v7.value = rhs.value;
      v7.timescale = rhs.timescale;
      v7.flags = flags;
      v7.epoch = epoch;
      if ((CMTimeCompare(&v7, &time2) & 0x80000000) == 0)
      {
        time2.value = rhs.value;
        time2.timescale = rhs.timescale;
        time2.flags = flags;
        time2.epoch = epoch;
        *&result = fampb_primeTimeTillDryTimer(a1, &time2).n128_u64[0];
      }
    }
  }

  return result;
}

void FigCFRelease_8(CFTypeRef cf)
{
  if (cf)
  {
    CFRelease(cf);
  }
}

uint64_t FigAlternatePlaybackBitrateMonitorSetStreamDuration(const void *a1, CMTime *a2, uint64_t a3, int a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  MainSegmentBytesInTransitUnlocked = fampb_getMainSegmentBytesInTransitUnlocked(a1);
  FigSimpleMutexLock();
  memset(&v27, 0, sizeof(v27));
  v10 = (DerivedStorage + 600);
  lhs = *a2;
  rhs = *(DerivedStorage + 600);
  CMTimeSubtract(&v27, &lhs, &rhs);
  if (*(DerivedStorage + 766) != a4)
  {
    *(DerivedStorage + 766) = a4;
    lhs.value = 0;
    fampb_createRecordABREventEntryForNowAndInsertQ(a1, &lhs);
    value = lhs.value;
    if (lhs.value)
    {
      *(lhs.value + 16) = a4;
      *(value + 8) = 9;
    }
  }

  *&lhs.value = *v10;
  lhs.epoch = *(DerivedStorage + 616);
  rhs = *a2;
  if (CMTimeCompare(&lhs, &rhs))
  {
    v16 = *&a2->value;
    *(DerivedStorage + 616) = a2->epoch;
    *v10 = v16;
    v17 = *(DerivedStorage + 480);
    if (v17 <= 2.22507386e-308)
    {
      UpTimeNanoseconds = FigGetUpTimeNanoseconds();
    }

    else
    {
      UpTimeNanoseconds = ((*(DerivedStorage + 472) - v17) * 1000000000.0);
    }

    *(DerivedStorage + 696) = UpTimeNanoseconds;
    lhs = *a2;
    rhs.value = 0;
    fampb_createRecordABREventEntryForNowAndInsertQ(a1, &rhs);
    v19 = rhs.value;
    if (rhs.value)
    {
      *(rhs.value + 16) = *&lhs.value;
      *(v19 + 32) = lhs.epoch;
      *(v19 + 8) = 2;
    }

    if ((*(DerivedStorage + 252) & 0x1D) != 1 || (lhs = *a2, rhs = *(DerivedStorage + 240), CMTimeCompare(&lhs, &rhs) >= 1))
    {
      v20 = *&a2->value;
      *(DerivedStorage + 256) = a2->epoch;
      *(DerivedStorage + 240) = v20;
    }

    if (*(DerivedStorage + 420) != 0.0)
    {
      memset(&lhs, 0, sizeof(lhs));
      CMTimebaseGetTime(&lhs, *(DerivedStorage + 592));
      if ((lhs.flags & 0x1D) == 1)
      {
        if ((*(DerivedStorage + 228) & 0x1D) != 1 || (rhs = lhs, v24 = *(DerivedStorage + 216), CMTimeCompare(&rhs, &v24) < 0))
        {
          *(DerivedStorage + 216) = lhs;
        }

        if ((*(DerivedStorage + 252) & 0x1D) != 1 || (rhs = lhs, v24 = *(DerivedStorage + 240), CMTimeCompare(&rhs, &v24) >= 1))
        {
          *(DerivedStorage + 240) = lhs;
        }

        rhs = lhs;
        v24.value = 0;
        fampb_createRecordABREventEntryForNowAndInsertQ(a1, &v24);
        if (!v21 && v24.value)
        {
          v22 = FigGetUpTimeNanoseconds();
          v23 = v24.value;
          *v24.value = v22;
          *(v23 + 16) = rhs;
          *(v23 + 8) = 1;
        }
      }
    }
  }

  if (a3)
  {
    for (i = 0; i != 72; i += 24)
    {
      v12 = DerivedStorage + 624 + i;
      v13 = *(a3 + i);
      *(v12 + 16) = *(a3 + i + 16);
      *v12 = v13;
    }
  }

  *(DerivedStorage + 392) = MainSegmentBytesInTransitUnlocked;
  fampb_setupDryTimer(a1);
  if (*(DerivedStorage + 344))
  {
    fampb_attemptToSwitch(a1, 0, 0);
  }

  FigSimpleMutexUnlock();
  return 0;
}

uint64_t FigAlternatePlaybackBitrateMonitorCanSwitchDownConcurrentlyWithoutStall(uint64_t a1, __int128 *a2)
{
  v14 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  if (!*(DerivedStorage + 344) || (*(DerivedStorage + 1248) <= 0 ? (v4 = 100000) : (v4 = *(DerivedStorage + 1248)), fampb_getPredictionBandwidth(DerivedStorage, &v14, (DerivedStorage + 408))))
  {
    FigSimpleMutexUnlock();
    return 0;
  }

  else
  {
    if (*(DerivedStorage + 345))
    {
      v5 = 1.0;
    }

    else
    {
      v5 = 0.9;
    }

    v6 = fampb_copyLowerSwitchCandidate((DerivedStorage + 264), *(DerivedStorage + 280), *(DerivedStorage + 345) == 0);
    v7 = *(DerivedStorage + 592);
    if (v7)
    {
      Rate = CMTimebaseGetRate(v7);
    }

    else
    {
      Rate = 0.0;
    }

    *(DerivedStorage + 424) = Rate;
    v9 = *(DerivedStorage + 280);
    v12 = *a2;
    v13 = *(a2 + 2);
    canSwitchDownConcurrentlyToAlternateWithoutStall = fampb_canSwitchDownConcurrentlyToAlternateWithoutStall(v6, DerivedStorage + 264, &v12, v4, v14, v9, 0, v5);
    FigSimpleMutexUnlock();
    if (v6)
    {
      CFRelease(v6);
    }
  }

  return canSwitchDownConcurrentlyToAlternateWithoutStall;
}

uint64_t fampb_canSwitchDownConcurrentlyToAlternateWithoutStall(uint64_t a1, uint64_t a2, __int128 *a3, uint64_t a4, uint64_t a5, uint64_t a6, CMTime *a7, float a8)
{
  v11 = *MEMORY[0x1E6960C70];
  *&v18.value = *MEMORY[0x1E6960C70];
  v12 = *(MEMORY[0x1E6960C70] + 16);
  v18.epoch = v12;
  result = 1;
  if (a1 != a6 && *(a2 + 160) != 0.0 && *(a2 + 16) != a1)
  {
    *&v17.value = v11;
    v17.epoch = v12;
    *&v16.value = v11;
    v16.epoch = v12;
    v15 = *a3;
    v14 = fampb_concurrentSwitchDownSafetyFactor(a2, a1, a6, &v15, a4, a5, &v17, &v16);
    if (v14 <= a8)
    {
      result = 0;
    }

    else
    {
      v15 = v16;
      fampb_nextTimeToCheckConcurrentSwitchDown(&v15, &v18, v14, a8);
      result = 1;
    }
  }

  if (a7)
  {
    *a7 = v18;
  }

  return result;
}

uint64_t fampb_copyValidAlternateList(uint64_t a1, uint64_t a2)
{
  v4 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v4)
  {
    return 4294954514;
  }

  v5 = *MEMORY[0x1E695E480];

  return v4(a1, @"FAFProperty_AlternateList", v5, a2);
}

BOOL FigAlternateFilterMonitorSubStreamHasCriticalStall(uint64_t a1, uint64_t a2, double a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  if (*(DerivedStorage + 765))
  {
    goto LABEL_12;
  }

  if ((*(DerivedStorage + 612) & 1) == 0)
  {
    goto LABEL_12;
  }

  v6 = *(DerivedStorage + 696);
  if (v6 < 1 || *(DerivedStorage + 420) == 0.0)
  {
    goto LABEL_12;
  }

  v7 = *(DerivedStorage + 480);
  if (v7 <= 2.22507386e-308)
  {
    UpTimeNanoseconds = FigGetUpTimeNanoseconds();
    v6 = *(DerivedStorage + 696);
  }

  else
  {
    UpTimeNanoseconds = ((*(DerivedStorage + 472) - v7) * 1000000000.0);
  }

  v9 = UpTimeNanoseconds - v6;
  time = *(DerivedStorage + 364);
  v10 = (CMTimeGetSeconds(&time) * 0.5 * 1000000000.0);
  if (v10 >= (a3 * 1000000000.0))
  {
    v10 = (a3 * 1000000000.0);
  }

  if (v9 >= v10 && (fampb_calculateDuration(DerivedStorage, &time), v15 = *(DerivedStorage + 364), CMTimeCompare(&time, &v15) < 0))
  {
    v13 = DerivedStorage + 24 * a2;
    v14 = *(v13 + 624);
    time.epoch = *(v13 + 640);
    *&time.value = v14;
    v15 = *(DerivedStorage + 600);
    v11 = CMTimeCompare(&time, &v15) < 1;
  }

  else
  {
LABEL_12:
    v11 = 0;
  }

  FigSimpleMutexUnlock();
  return v11;
}

CMTime *fampb_calculateDuration@<X0>(uint64_t a1@<X0>, CMTime *a2@<X8>)
{
  if (*(a1 + 420) >= 0.0)
  {
    v4 = (a1 + 600);
    if (*(a1 + 740))
    {
      rhs = *(a1 + 728);
    }

    else
    {
      CMTimebaseGetTimeClampedAboveAnchorTime();
    }

    v8 = *v4;
    v9 = *(a1 + 616);
    v5 = &v8;
    p_rhs = &rhs;
  }

  else
  {
    if (*(a1 + 740))
    {
      rhs = *(a1 + 728);
    }

    else
    {
      CMTimebaseGetTimeClampedAboveAnchorTime();
    }

    v9 = *(a1 + 616);
    v8 = *(a1 + 600);
    v5 = &rhs;
    p_rhs = &v8;
  }

  CMTimeSubtract(&time1, v5, p_rhs);
  rhs = **&MEMORY[0x1E6960CC0];
  return CMTimeMaximum(a2, &time1, &rhs);
}

uint64_t FigAlternatePlaybackBitrateMonitorSetTimeForUnitTest(uint64_t a1, double a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  if (*(DerivedStorage + 480) == 2.22507386e-308)
  {
    *(DerivedStorage + 480) = a2 + -1.0;
    v4 = *(DerivedStorage + 48);
    v5 = *(*(CMBaseObjectGetVTable() + 8) + 56);
    if (v5)
    {
      v5(v4, 0x1F0B63558, *MEMORY[0x1E695E4C0]);
    }
  }

  FigNetworkHistoryObserverSetTimeForUnitTest();
  *(DerivedStorage + 472) = a2;

  return FigSimpleMutexUnlock();
}

uint64_t FigAlternatePlaybackBitrateMonitorSetLocalPeakBitrateFactorForUnitTest(uint64_t a1, double a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  *(DerivedStorage + 432) = a2;

  return FigSimpleMutexUnlock();
}

uint64_t fampb_recordDataGetTotalBitrateCurvePointCount(uint64_t a1)
{
  v2 = 0;
  v3 = 0;
  *(a1 + 144) = 0;
  while (1)
  {
    Count = *(a1 + 136);
    if (Count)
    {
      Count = CFArrayGetCount(Count);
    }

    if (v2 >= Count)
    {
      break;
    }

    ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 136), v2);
    v6 = FigAlternateCopyStreamBitrateCurve(ValueAtIndex, 0);
    v7 = FigAlternateCopyStreamBitrateCurve(ValueAtIndex, 1uLL);
    v8 = v7;
    if (v6)
    {
      ++*(a1 + 144);
    }

    if (v7)
    {
      ++*(a1 + 144);
    }

    BitrateCurveDataPointCount = FigMediaPlaylistUtilityGetBitrateCurveDataPointCount(v6);
    v10 = FigMediaPlaylistUtilityGetBitrateCurveDataPointCount(v8);
    if (v6)
    {
      CFRelease(v6);
    }

    if (v8)
    {
      CFRelease(v8);
    }

    v3 = v3 + BitrateCurveDataPointCount + v10;
    ++v2;
  }

  return v3;
}

uint64_t fampb_serializedRecordDataGetMonitorDataSize(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v2 = *(DerivedStorage + 136);
  if (v2)
  {
    v3 = 60 * CFArrayGetCount(v2) + 496;
  }

  else
  {
    v3 = 496;
  }

  return (v3 + 8 * (*(DerivedStorage + 144) + *(DerivedStorage + 148)) + 12 * *(DerivedStorage + 176) + 24 * (*(DerivedStorage + 180) + *(DerivedStorage + 152)));
}

uint64_t __fampb_submitNetworkHistory_block_invoke(uint64_t a1, void *a2)
{
  v2 = 32;
  if (!*(a1 + 48))
  {
    v2 = 40;
  }

  return [a2 writeData:*(a1 + v2)];
}

uint64_t fampb_finalize(const void *a1)
{
  v22 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  fampb_releaseRecordingData(a1);
  v3 = CMBaseObjectGetDerivedStorage();
  v4 = *(v3 + 592);
  if (v4)
  {
    CMTimebaseRemoveTimerDispatchSource(v4, *(v3 + 528));
  }

  if (*(v3 + 528))
  {
    StopAndReleaseTimer((v3 + 528));
    v5 = MEMORY[0x1E6960C70];
    v6 = *MEMORY[0x1E6960C70];
    *(v3 + 536) = *MEMORY[0x1E6960C70];
    v7 = *(v5 + 16);
    *(v3 + 552) = v7;
    *(v3 + 560) = v6;
    *(v3 + 576) = v7;
  }

  StopAndReleaseTimer((DerivedStorage + 584));
  v8 = *(DerivedStorage + 32);
  if (v8)
  {
    dispatch_release(v8);
  }

  if (*(DerivedStorage + 592))
  {
    fampb_removeTimebaseListeners(a1);
    v9 = *(DerivedStorage + 592);
    if (v9)
    {
      CFRelease(v9);
    }
  }

  FigSimpleMutexDestroy();
  v10 = *(DerivedStorage + 8);
  if (v10)
  {
    CFRelease(v10);
  }

  v11 = *(DerivedStorage + 48);
  if (v11)
  {
    CFRelease(v11);
  }

  v12 = *(DerivedStorage + 56);
  if (v12)
  {
    CFRelease(v12);
  }

  v13 = *(DerivedStorage + 64);
  if (v13)
  {
    CFRelease(v13);
  }

  v14 = *(DerivedStorage + 72);
  if (v14)
  {
    CFRelease(v14);
  }

  v15 = *(DerivedStorage + 752);
  if (v15)
  {
    CFRelease(v15);
  }

  v16 = *(DerivedStorage + 40);
  if (v16)
  {
    CFRelease(v16);
  }

  v17 = *(DerivedStorage + 104);
  if (v17)
  {
    CFRelease(v17);
  }

  v18 = *(DerivedStorage + 80);
  if (v18)
  {
    CFRelease(v18);
  }

  v19 = *(DerivedStorage + 96);
  if (v19)
  {
    CFRelease(v19);
  }

  v20 = *(DerivedStorage + 88);
  if (v20)
  {
    CFRelease(v20);
  }

  FigPlayerResourceArbiterGetGlobalSingleton(&v22);
  CMNotificationCenterGetDefaultLocalCenter();
  FigNotificationCenterRemoveWeakListener();
  CMNotificationCenterGetDefaultLocalCenter();
  FigNotificationCenterRemoveWeakListener();
  fampb_releaseAndClearPlaybackFilterConfig(DerivedStorage + 264);
  CMNotificationCenterGetDefaultLocalCenter();
  return FigNotificationCenterCheckWeakListenersWereRemovedBeforeFinalization();
}

CFStringRef fampb_copyDebugDesc(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  v2 = CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"[FigAlternateFilterMonitorForPlaybackBitrate lastMeasuredBitrate:%lld ]", *(DerivedStorage + 400));
  FigSimpleMutexUnlock();
  return v2;
}

uint64_t fampb_copyProperty(uint64_t a1, const void *a2, uint64_t a3, void *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  if (!a4)
  {
    fampb_copyProperty_cold_1(&theArray);
    valid = theArray;
    goto LABEL_19;
  }

  if (CFEqual(a2, @"AfmfpbProperty_QualityGear"))
  {
    v8 = DerivedStorage[34];
    theArray = 0;
    v9 = *MEMORY[0x1E695E480];
    if (v8)
    {
      if (fampb_copyAlternateListSortedByQuality(DerivedStorage + 33, *MEMORY[0x1E695E480], 0, &theArray))
      {
        goto LABEL_12;
      }

      if (theArray)
      {
        Count = CFArrayGetCount(theArray);
        if (Count)
        {
          v28.length = Count;
          v28.location = 0;
          FirstIndexOfValue = CFArrayGetFirstIndexOfValue(theArray, v28, v8);
          goto LABEL_13;
        }

LABEL_12:
        FirstIndexOfValue = -1;
LABEL_13:
        if (theArray)
        {
          CFRelease(theArray);
        }

        goto LABEL_15;
      }
    }

    FirstIndexOfValue = -1;
LABEL_15:
    theArray = FirstIndexOfValue;
    p_theArray = &theArray;
    v14 = v9;
    v15 = kCFNumberCFIndexType;
LABEL_16:
    v12 = CFNumberCreate(v14, v15, p_theArray);
LABEL_17:
    valid = 0;
LABEL_18:
    *a4 = v12;
    goto LABEL_19;
  }

  if (CFEqual(a2, @"AfmfpbProperty_TrialAlternate"))
  {
    v12 = DerivedStorage[35];
    if (v12)
    {
      v12 = CFRetain(v12);
    }

    goto LABEL_17;
  }

  if (CFEqual(a2, @"AfmfpbProperty_CandidateAlternatesForAdaptiveBitrateSwitching"))
  {
    valid = fampb_copyValidAlternateList(DerivedStorage[33], a4);
    goto LABEL_19;
  }

  if (CFEqual(a2, @"AfmfpbProperty_HighestValidPeakBitrate"))
  {
    theArray = 0;
    PeakBitRate = 0;
    if (!fampb_copyValidAlternateList(DerivedStorage[33], &theArray))
    {
      for (i = 0; ; ++i)
      {
        v20 = theArray;
        if (theArray)
        {
          v20 = CFArrayGetCount(theArray);
        }

        if (i >= v20)
        {
          break;
        }

        ValueAtIndex = CFArrayGetValueAtIndex(theArray, i);
        if (FigAlternateGetPeakBitRate(ValueAtIndex) > PeakBitRate)
        {
          v22 = CFArrayGetValueAtIndex(theArray, i);
          PeakBitRate = FigAlternateGetPeakBitRate(v22);
        }
      }
    }

    if (theArray)
    {
      CFRelease(theArray);
    }

    LODWORD(theArray) = PeakBitRate;
    v14 = *MEMORY[0x1E695E480];
    p_theArray = &theArray;
    v15 = kCFNumberSInt32Type;
    goto LABEL_16;
  }

  if (CFEqual(a2, @"AfmfpbProperty_HighestValidDeclaredSampleRate"))
  {
    theArray = COERCE_CFARRAYREF(fampb_highestValidDeclaredSampleRate(DerivedStorage));
    v14 = *MEMORY[0x1E695E480];
    p_theArray = &theArray;
    v15 = kCFNumberDoubleType;
    goto LABEL_16;
  }

  if (!CFEqual(a2, @"AfmfpbProperty_HasAudioOnlyAlternates"))
  {
    if (CFEqual(a2, @"AfmfpbProperty_RTT"))
    {
      v25 = DerivedStorage[156];
      if (v25 <= 0)
      {
        v25 = 100000;
      }

      theArray = v25;
      v14 = *MEMORY[0x1E695E480];
      p_theArray = &theArray;
    }

    else
    {
      if (!CFEqual(a2, @"AfmfpbProperty_PredictedBitrate"))
      {
        if (!CFEqual(a2, @"AfmfpbProperty_MinimumBandwidthToSwitchUp"))
        {
          valid = 4294954512;
          goto LABEL_19;
        }

        theArray = 0;
        valuePtr = 0;
        if (DerivedStorage[34])
        {
          valid = fampb_copyValidAlternateList(DerivedStorage[33], &theArray);
          if (!valid)
          {
            valuePtr = fampb_minimumBandwidthRequiredToSwitchUp(a1, theArray);
          }

          if (theArray)
          {
            CFRelease(theArray);
          }
        }

        else
        {
          valid = 0;
        }

        v12 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt32Type, &valuePtr);
        goto LABEL_18;
      }

      v14 = *MEMORY[0x1E695E480];
      p_theArray = (DerivedStorage + 50);
    }

    v15 = kCFNumberSInt64Type;
    goto LABEL_16;
  }

  hasOnlyAudioInValidAlternateList = fampb_hasOnlyAudioInValidAlternateList(DerivedStorage);
  valid = 0;
  v24 = MEMORY[0x1E695E4D0];
  if (!hasOnlyAudioInValidAlternateList)
  {
    v24 = MEMORY[0x1E695E4C0];
  }

  *a4 = *v24;
LABEL_19:
  FigSimpleMutexUnlock();
  return valid;
}

uint64_t fampb_removeTimebaseListeners(uint64_t a1)
{
  CMBaseObjectGetDerivedStorage();
  CMNotificationCenterGetDefaultLocalCenter();

  return FigNotificationCenterRemoveWeakListener();
}

uint64_t fampb_groupBandwidthWeightChanged(uint64_t a1, const void *a2)
{
  CMBaseObjectGetDerivedStorage();
  CFRetain(a2);
  CMNotificationCenterGetDefaultLocalCenter();

  return FigDeferNotificationToDispatchQueue();
}

void fampb_releaseAndClearPlaybackFilterConfig(uint64_t a1)
{
  v2 = *(a1 + 72);
  if (v2)
  {
    CFRelease(v2);
    *(a1 + 72) = 0;
  }

  v3 = *(a1 + 48);
  if (v3)
  {
    CFRelease(v3);
    *(a1 + 48) = 0;
  }

  v4 = *(a1 + 8);
  if (v4)
  {
    CFRelease(v4);
    *(a1 + 8) = 0;
  }

  v5 = *(a1 + 16);
  if (v5)
  {
    CFRelease(v5);
    *(a1 + 16) = 0;
  }

  v6 = *(a1 + 24);
  if (v6)
  {
    CFRelease(v6);
    *(a1 + 24) = 0;
  }

  v7 = *(a1 + 32);
  if (v7)
  {
    CFRelease(v7);
    *(a1 + 32) = 0;
  }

  v8 = *(a1 + 40);
  if (v8)
  {
    CFRelease(v8);
    *(a1 + 40) = 0;
  }

  if (*a1)
  {
    CFRelease(*a1);
    *a1 = 0;
  }
}

uint64_t fampb_TimebaseListener(uint64_t a1, const void *a2)
{
  CMBaseObjectGetDerivedStorage();
  CFRetain(a2);
  CMNotificationCenterGetDefaultLocalCenter();

  return FigDeferNotificationToDispatchQueue();
}

void fampb_DeferredTimebaseListener(uint64_t a1, const void *a2)
{
  fampb_UpdateLocalBitrate(a2);

  CFRelease(a2);
}

uint64_t fampb_UpdateLocalBitrate(const void *a1)
{
  v28 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  memset(&start, 0, sizeof(start));
  memset(&v16, 0, sizeof(v16));
  v3 = CMBaseObjectGetDerivedStorage();
  v22 = 0x3FF0000000000000;
  rhs = **&MEMORY[0x1E6960C70];
  value = *MEMORY[0x1E6960C98];
  flags = *(MEMORY[0x1E6960C98] + 12);
  timescale = *(MEMORY[0x1E6960C98] + 8);
  epoch = *(MEMORY[0x1E6960C98] + 16);
  v6 = *(MEMORY[0x1E6960C98] + 24);
  v15 = *(MEMORY[0x1E6960C98] + 32);
  v7 = *(MEMORY[0x1E6960C98] + 40);
  FigSimpleMutexLock();
  if (*(v3 + 344) || FigAlternateIsIFrameOnly(*(v3 + 272)) || !*(v3 + 40))
  {
    v8 = 0;
    v9 = -15612;
  }

  else
  {
    memset(&v25, 0, sizeof(v25));
    if (*(v3 + 740))
    {
      v25 = *(v3 + 728);
    }

    else
    {
      CMTimebaseGetTimeClampedAboveAnchorTime();
    }

    memset(&v24, 0, sizeof(v24));
    *&lhs.start.value = *(v3 + 364);
    lhs.start.epoch = *(v3 + 380);
    CMTimeMultiply(&v24, &lhs.start, 2);
    memset(&v20, 0, sizeof(v20));
    fampb_calculateDuration(v3, &v20);
    lhs.start = v24;
    time2 = v20;
    CMTimeMaximum(&duration, &lhs.start, &time2);
    time2 = v25;
    CMTimeRangeMake(&lhs, &time2, &duration);
    value = lhs.start.value;
    flags = lhs.start.flags;
    timescale = lhs.start.timescale;
    epoch = lhs.start.epoch;
    v6 = lhs.duration.value;
    v15 = *&lhs.duration.timescale;
    v7 = lhs.duration.epoch;
    v8 = FigCFWeakReferenceHolderCopyReferencedObject();
    v9 = 0;
  }

  FigSimpleMutexUnlock();
  if (v8 && (flags & 1) != 0)
  {
    v10 = 1.0;
    if ((v15 & 0x100000000) != 0 && !v7 && (v6 & 0x8000000000000000) == 0)
    {
      v11 = *(*(CMBaseObjectGetVTable() + 16) + 136);
      if (v11)
      {
        lhs.start.value = value;
        lhs.start.timescale = timescale;
        lhs.start.flags = flags;
        lhs.start.epoch = epoch;
        lhs.duration.value = v6;
        *&lhs.duration.timescale = v15;
        lhs.duration.epoch = 0;
        v9 = v11(v8, &lhs, &v22, &rhs);
        v10 = *&v22;
      }

      else
      {
        v9 = -12782;
      }
    }

    v24.value = rhs.value;
    v12 = rhs.flags;
    v24.timescale = rhs.timescale;
    v14 = rhs.epoch;
    v25.value = value;
    v25.timescale = timescale;
    goto LABEL_15;
  }

  v24.value = rhs.value;
  v12 = rhs.flags;
  v24.timescale = rhs.timescale;
  v14 = rhs.epoch;
  v25.value = value;
  v25.timescale = timescale;
  v10 = 1.0;
  if (v8)
  {
LABEL_15:
    CFRelease(v8);
  }

  FigSimpleMutexLock();
  if (*(DerivedStorage + 740))
  {
    lhs.start.epoch = *(DerivedStorage + 744);
    *&lhs.start.value = *(DerivedStorage + 728);
  }

  else
  {
    CMTimebaseGetTimeClampedAboveAnchorTime();
  }

  start = lhs.start;
  lhs.start.value = v25.value;
  lhs.start.timescale = v25.timescale;
  lhs.start.flags = flags;
  lhs.start.epoch = epoch;
  rhs.value = v6;
  *&rhs.timescale = v15;
  rhs.epoch = v7;
  CMTimeAdd(&v16, &lhs.start, &rhs);
  if (!v9)
  {
    lhs.start.value = v25.value;
    lhs.start.timescale = v25.timescale;
    lhs.start.flags = flags;
    lhs.start.epoch = epoch;
    rhs = start;
    if (CMTimeCompare(&lhs.start, &rhs) <= 0)
    {
      lhs.start = start;
      rhs = v16;
      if (CMTimeCompare(&lhs.start, &rhs) < 0)
      {
        if (vabdd_f64(v10, *(DerivedStorage + 432)) <= 2.22044605e-16 || FigAlternateIsIFrameOnly(*(DerivedStorage + 272)) || FigAlternateIsAudioOnly(*(DerivedStorage + 272)))
        {
          if ((v12 & 1) == 0)
          {
            return FigSimpleMutexUnlock();
          }
        }

        else
        {
          fampb_UpdateLocalBitrate_cold_1((DerivedStorage + 432), a1, v10);
          if ((v12 & 1) == 0)
          {
            return FigSimpleMutexUnlock();
          }
        }

        CMTimebaseGetTime(&lhs.start, *(DerivedStorage + 592));
        rhs.value = v24.value;
        rhs.timescale = v24.timescale;
        rhs.flags = v12;
        rhs.epoch = v14;
        if (CMTimeCompare(&rhs, &lhs.start) >= 1)
        {
          StopAndReleaseTimer((DerivedStorage + 584));
          lhs.start.value = v24.value;
          lhs.start.timescale = v24.timescale;
          lhs.start.flags = v12;
          lhs.start.epoch = v14;
          fampb_CreateAndPrimeTimebaseTimer(a1, &lhs.start, (DerivedStorage + 584));
        }
      }
    }
  }

  return FigSimpleMutexUnlock();
}

void fampb_CreateAndPrimeTimebaseTimer(uint64_t a1, CMTime *a2, NSObject **a3)
{
  v22 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v7 = fampb_timerDispatchSourceCreate(*(DerivedStorage + 32), a1, fampb_TimebaseTimerListener);
  if (v7)
  {
    v15 = v7;
    if (CMTimebaseAddTimerDispatchSource(*(DerivedStorage + 592), v7) || (v16 = *(DerivedStorage + 592), fireTime = *a2, CMTimebaseSetTimerDispatchSourceNextFireTime(v16, v15, &fireTime, 1u)))
    {
      CFRelease(v15);
    }

    else
    {
      if (dword_1EAF17490)
      {
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      *a3 = v15;
    }
  }

  else
  {
    fampb_CreateAndPrimeTimebaseTimer_cold_1(0, v8, v9, v10, v11, v12, v13, v14, v18, v19, SHIDWORD(v19), v20);
  }
}

uint64_t fampb_createRecordABREventEntry(uint64_t a1, uint64_t *a2)
{
  v3 = MEMORY[0x19A8CC720](a1, 56, 0x10E204061408F10, 0);
  if (v3)
  {
    v4 = v3;
    result = 0;
    *(v4 + 48) = 0;
    *(v4 + 16) = 0u;
    *(v4 + 32) = 0u;
    *v4 = 0u;
    *a2 = v4;
  }

  else
  {
    fampb_createRecordABREventEntry_cold_1(&v6);
    return v6;
  }

  return result;
}

uint64_t fampb_minimumBandwidthRequiredToSwitchUp(uint64_t a1, const __CFArray *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v4 = *(DerivedStorage + 272);
  PeakBitRate = FigAlternateGetPeakBitRate(v4);
  v6 = 0;
  v7 = -1;
  v8 = 1.0;
  if (!a2)
  {
    goto LABEL_3;
  }

LABEL_2:
  for (i = CFArrayGetCount(a2); v6 < i; i = 0)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(a2, v6);
    v11 = FigAlternateGetPeakBitRate(ValueAtIndex);
    if (v11 > PeakBitRate)
    {
      v12 = v11;
      if (v7 == -1 || v7 > v11)
      {
        FigAlternateScaleBitrateFractionToNewAlternate(v4, ValueAtIndex);
        v8 = v13;
        v7 = v12;
      }
    }

    ++v6;
    if (a2)
    {
      goto LABEL_2;
    }

LABEL_3:
    ;
  }

  if (v7 == -1)
  {
    return 0xFFFFFFFFLL;
  }

  if (!*(DerivedStorage + 344))
  {
    return ((v8 * v7) * 1.1);
  }

  v15 = fampb_copyLowerSwitchCandidate((DerivedStorage + 264), *(DerivedStorage + 272), 1);
  LODWORD(DerivedStorage) = FigAlternateGetPeakBitRate(*(DerivedStorage + 272)) + v7;
  if (!v15)
  {
    return DerivedStorage & ~(DerivedStorage >> 31);
  }

  v16 = (FigAlternateGetExpectedAverageBitrate(v15) + v7 * 1.5);
  if (DerivedStorage <= v16)
  {
    DerivedStorage = v16;
  }

  else
  {
    DerivedStorage = DerivedStorage;
  }

  CFRelease(v15);
  return DerivedStorage;
}

NSObject *fampb_timerDispatchSourceCreate(dispatch_queue_t queue, uint64_t a2, void (__cdecl *a3)(void *))
{
  v4 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, queue);
  if (v4)
  {
    v5 = FigCFWeakReferenceHolderCreateWithReferencedObject();
    dispatch_set_context(v4, v5);
    dispatch_source_set_timer(v4, 0xFFFFFFFFFFFFFFFFLL, 0xFFFFFFFFFFFFFFFFLL, 0);
    dispatch_source_set_event_handler_f(v4, a3);
    dispatch_source_set_cancel_handler_f(v4, 0);
    dispatch_set_finalizer_f(v4, FigCFRelease_8);
    dispatch_resume(v4);
  }

  return v4;
}

void fampb_deferredGroupBandwidthWeightChanged(uint64_t a1, const void *a2)
{
  v13 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  updated = fampb_updateGroupBandwidthWeightOnPredictor(a2);
  fampb_calculateDuration(DerivedStorage, &time2);
  value = time2.value;
  flags = time2.flags;
  timescale = time2.timescale;
  if (((time2.flags & 1) == 0 || (epoch = time2.epoch, CMTimeMake(&time2, 100, 1000), time1.value = value, time1.timescale = timescale, time1.flags = flags, time1.epoch = epoch, CMTimeCompare(&time1, &time2) < 0)) && (v7 = *(DerivedStorage + 592)) != 0 && CMTimebaseGetRate(v7) == 0.0)
  {
    v8 = *(DerivedStorage + 764) | updated;
    FigSimpleMutexUnlock();
    if (!v8)
    {
      FigAlternateFilterMonitorForPlaybackBitrateStartup(a2);
    }
  }

  else
  {
    FigSimpleMutexUnlock();
  }

  CFRelease(a2);
}

BOOL fampb_hasOnlyAudioInValidAlternateList(uint64_t a1)
{
  theArray = 0;
  fampb_copyValidAlternateList(*(a1 + 264), &theArray);
  if (!theArray)
  {
    return 0;
  }

  v1 = CFArrayGetCount(theArray) >= 1 && FigAlternateSelectionUtility_AlternateListHasOnlyAudioOnly(theArray);
  if (theArray)
  {
    CFRelease(theArray);
  }

  return v1;
}

uint64_t fampb_updateSmoothRTT(uint64_t a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v4 = DerivedStorage;
  *(DerivedStorage + 1248) = (a2 + 2 * *(DerivedStorage + 1248)) / 3;
  v5 = *(DerivedStorage + 480);
  if (v5 <= 2.22507386e-308)
  {
    result = FigGetUpTimeNanoseconds();
  }

  else
  {
    result = ((*(DerivedStorage + 472) - v5) * 1000000000.0);
  }

  *(v4 + 1256) = result;
  return result;
}

uint64_t fampb_copyFilterForCurrentState(uint64_t a1, void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a2)
  {
    v4 = DerivedStorage;
    FigSimpleMutexLock();
    v5 = *(v4 + 64);
    if (v5)
    {
      v5 = CFRetain(v5);
    }

    *a2 = v5;
    FigSimpleMutexUnlock();
    return 0;
  }

  else
  {
    fampb_copyFilterForCurrentState_cold_1(&v7);
    return v7;
  }
}

unint64_t fampb_AlternateZeroIndexComparator(uint64_t a1, uint64_t a2)
{
  ZeroIndexedAlternateIndex = FigAlternateGetZeroIndexedAlternateIndex(a1);
  v4 = FigAlternateGetZeroIndexedAlternateIndex(a2);
  return (ZeroIndexedAlternateIndex > v4) - (ZeroIndexedAlternateIndex < v4);
}

__n128 fampb_primeTimeTillDryTimer(uint64_t a1, CMTime *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v5 = DerivedStorage;
  v6 = MEMORY[0x1E6960C70];
  if (!*(DerivedStorage + 528))
  {
    v7 = fampb_timerDispatchSourceCreate(*(DerivedStorage + 32), a1, fampb_switchLowTimerProcUnlocked);
    *(v5 + 528) = v7;
    if (v7)
    {
      CMTimebaseAddTimerDispatchSource(*(v5 + 592), v7);
    }

    v8 = *v6;
    *(v5 + 536) = *v6;
    v9 = v6[1].n128_u64[0];
    *(v5 + 552) = v9;
    *(v5 + 560) = v8;
    *(v5 + 576) = v9;
  }

  v10 = (v5 + 536);
  if ((*(v5 + 548) & 1) == 0 || (lhs = *a2, *&rhs.value = xmmword_196E78100, rhs.epoch = 0, CMTimeAdd(&time1, &lhs, &rhs), *&lhs.value = *v10, lhs.epoch = *(v5 + 552), CMTimeCompare(&time1, &lhs) < 0))
  {
    v13 = *(v5 + 592);
    v14 = *(v5 + 528);
    lhs = *a2;
    CMTimebaseSetTimerDispatchSourceNextFireTime(v13, v14, &lhs, 1u);
    v15 = *&a2->value;
    *(v5 + 552) = a2->epoch;
    *v10 = v15;
    result = *v6;
    *(v5 + 560) = *v6;
    *(v5 + 576) = v6[1].n128_u64[0];
  }

  else
  {
    *&lhs.value = *v10;
    lhs.epoch = *(v5 + 552);
    *&rhs.value = xmmword_196E78100;
    rhs.epoch = 0;
    CMTimeAdd(&time1, &lhs, &rhs);
    lhs = *a2;
    if (CMTimeCompare(&lhs, &time1) >= 1)
    {
      v12 = (v5 + 560);
      if ((*(v5 + 572) & 1) == 0 || (lhs = *a2, *&rhs.value = *v12, rhs.epoch = *(v5 + 576), CMTimeCompare(&lhs, &rhs) >= 1))
      {
        result = *&a2->value;
        *(v5 + 576) = a2->epoch;
        *v12 = result;
      }
    }
  }

  return result;
}

BOOL fampb_ConcurrentSwitchUpValidForLongEnough(uint64_t a1)
{
  v2 = *(a1 + 200);
  if ((v2 < 1 || ((v3 = *(a1 + 216), v3 <= 2.22507386e-308) ? (UpTimeNanoseconds = FigGetUpTimeNanoseconds(), v2 = *(a1 + 200)) : (UpTimeNanoseconds = ((*(a1 + 208) - v3) * 1000000000.0)), UpTimeNanoseconds - v2 < (*(a1 + 184) * 0.95 * 1000000000.0))) && *(a1 + 81))
  {
    return *(a1 + 84) != 0;
  }

  else
  {
    return 1;
  }
}

float fampb_proportionOfFullBufferForConcurrentSwitching(uint64_t a1, CMTime *a2)
{
  v7 = *a2;
  Seconds = CMTimeGetSeconds(&v7);
  v4 = *(a1 + 184);
  if (v4 <= 0.0)
  {
    v7 = *(a1 + 100);
    v5 = CMTimeGetSeconds(&v7);
  }

  else
  {
    v5 = v4 + v4;
  }

  return Seconds / v5;
}

uint64_t fampb_trialSwitchDownInProgress(uint64_t a1)
{
  if (!*(a1 + 8))
  {
    return 0;
  }

  result = *(a1 + 16);
  if (result)
  {
    PeakBitRate = FigAlternateGetPeakBitRate(result);
    return PeakBitRate < FigAlternateGetPeakBitRate(*(a1 + 8));
  }

  return result;
}

CMTime *fampb_nextTimeToCheckConcurrentSwitchDown@<X0>(CMTime *a1@<X0>, CMTime *a2@<X8>, float a3@<S0>, float a4@<S1>)
{
  time = *a1;
  Seconds = CMTimeGetSeconds(&time);
  CMTimeMakeWithSeconds(&time, Seconds / a3 * a4, 90000);
  v10 = *a1;
  return CMTimeSubtract(a2, &v10, &time);
}

uint64_t fampb_AlternateRankingScoreComparator(uint64_t a1, uint64_t a2)
{
  RankingScore = FigAlternateGetRankingScore(a1);
  v4 = FigAlternateGetRankingScore(a2);
  return (__PAIR128__(RankingScore > v4, *&RankingScore) - *&v4) >> 64;
}

unint64_t fampb_AlternatePeakBitrateComparator(uint64_t a1, uint64_t a2)
{
  PeakBitRate = FigAlternateGetPeakBitRate(a1);
  v4 = FigAlternateGetPeakBitRate(a2);
  return (PeakBitRate > v4) - (PeakBitRate < v4);
}

CFDataRef fampb_serializeBitrateCurve(_DWORD *a1, uint64_t a2, const __CFData *a3, float a4, float a5)
{
  BitrateCurveDataPointCount = FigMediaPlaylistUtilityGetBitrateCurveDataPointCount(a3);
  result = FigMediaPlaylistUtilityGetBitrateCurveDataPoints(a3);
  *a1 = 0;
  if (BitrateCurveDataPointCount >= 1 && a5 >= 0.0)
  {
    v12 = 0;
    v13 = 0;
    v14 = 0.0;
    v15 = 1;
    do
    {
      if (v14 >= a4)
      {
        if (!v12)
        {
          a1[1] = (v14 * 1000.0);
        }

        v17 = (a2 + 8 * v13);
        *v17 = *(result + 1);
        v16 = *result;
        v17[1] = *result;
        ++v13;
        *a1 = ++v12;
      }

      else
      {
        v16 = *result;
      }

      if (v15 >= BitrateCurveDataPointCount)
      {
        break;
      }

      v14 = v14 + v16;
      result = (result + 8);
      ++v15;
    }

    while (v14 <= a5);
  }

  return result;
}

uint64_t fampb_serializeRecordedAlternateListToBitMap(CFArrayRef theArray, uint64_t a2, void *a3)
{
  v6 = 0;
  *a3 = 0;
  a3[1] = 0;
  v7 = 5227;
  if (!theArray)
  {
    goto LABEL_3;
  }

LABEL_2:
  for (i = CFArrayGetCount(theArray); ; i = 0)
  {
    if (v6 >= i)
    {
      return 0;
    }

    ValueAtIndex = CFArrayGetValueAtIndex(theArray, v6);
    ZeroIndexedAlternateIndex = FigAlternateGetZeroIndexedAlternateIndex(ValueAtIndex);
    if (ZeroIndexedAlternateIndex > 1023)
    {
      break;
    }

    v11 = *(a2 + 2 * ZeroIndexedAlternateIndex);
    if (v11 > 0x7F)
    {
      v7 = 5229;
      break;
    }

    *(a3 + (v11 >> 3)) |= 1 << (v11 & 7);
    ++v6;
    if (theArray)
    {
      goto LABEL_2;
    }

LABEL_3:
    ;
  }

  fampb_serializeRecordedAlternateListToBitMap_cold_1(v7, &v13);
  return v13;
}

void OUTLINED_FUNCTION_0_136(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, int a16, int a17)
{
  *(v18 + 44) = v17;
  *(v18 + 54) = v19;
  *(v18 + 66) = a17;
  *(v18 + 82) = v20;
  *(v18 + 92) = v21;
  *(v18 + 102) = v22;
}

void OUTLINED_FUNCTION_1_121(int a1@<W8>, double a2@<D0>)
{
  *(v2 + 124) = a2;
  *(v2 + 134) = a1;
  *(v2 + 146) = v3;
}

Float64 OUTLINED_FUNCTION_5_82(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, CMTime *time, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, __int128 timea, uint64_t time_16)
{
  timea = *(v36 + 600);
  time_16 = *(v36 + 616);

  return CMTimeGetSeconds(&timea);
}

uint64_t OUTLINED_FUNCTION_6_76(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, __int16 a13, char a14, char a15, int a16)
{

  return fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
}

__n128 OUTLINED_FUNCTION_8_44()
{
  result = *v0;
  *(v1 - 80) = *v0;
  *(v1 - 64) = v0[1].n128_u64[0];
  return result;
}

void OUTLINED_FUNCTION_10_43(__int16 a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, int a5, int a6)
{
  *(v9 + 214) = a1;
  *(v9 + 216) = a6;
  *(v9 + 220) = a1;
  *(v9 + 222) = v8;
  *(v9 + 226) = a1;
  *(v9 + 228) = a5;
  *(v9 + 232) = v7;
  *(v9 + 234) = v6;
}

Float64 OUTLINED_FUNCTION_11_46(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, CMTime *time, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, __int128 timea, uint64_t time_16)
{
  timea = *(v36 + 364);
  time_16 = *(v36 + 380);

  return CMTimeGetSeconds(&timea);
}

double OUTLINED_FUNCTION_12_40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  a17 = 0;

  return fampb_createRecordABREventEntryForNowAndInsertQ(v17, &a17);
}

double OUTLINED_FUNCTION_13_34(double a1)
{
  v3 = fabsf(*(v1 + 420));
  if (v3 <= 1.0)
  {
    v3 = 1.0;
  }

  result = a1 * ceilf(v3);
  *(v2 + 176) = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_14_37(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, __int128 a15, uint64_t a16)
{
  *(v16 - 80) = a15;
  *(v16 - 64) = a16;
  return v16 - 80;
}

void OUTLINED_FUNCTION_18_26(uint64_t a1@<X8>)
{
  *(v3 + 180) = a1;
  *(v3 + 188) = 2048;
  *(v3 + 190) = v1;
  *(v3 + 198) = 2112;
  *(v3 + 200) = v2;
  *(v3 + 208) = 1024;
}

void OUTLINED_FUNCTION_20_21(uint64_t a1@<X8>)
{
  *(v3 + 180) = v1;
  *(v3 + 188) = 2048;
  *(v3 + 190) = v2;
  *(v3 + 198) = 2112;
  *(v3 + 200) = a1;
  *(v3 + 208) = 1024;
}

uint64_t OUTLINED_FUNCTION_23_28@<X0>(uint64_t result@<X0>, __int16 a2@<W8>)
{
  *(v2 + 214) = a2;
  *(v2 + 216) = result;
  return result;
}

CMTime *OUTLINED_FUNCTION_25_21(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, CMTime *a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35)
{
  v37 = *(v35 + 592);

  return CMTimebaseGetTime(&a35, v37);
}

uint64_t OUTLINED_FUNCTION_26_21(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, char a28, uint64_t a29, uint64_t a30, char a31)
{

  return fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
}

CFTypeID OUTLINED_FUNCTION_27_18()
{

  return CFGetTypeID(v0);
}

uint64_t OUTLINED_FUNCTION_32_16(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, CMTime *time1, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, __int128 time1a, uint64_t time1_16)
{
  time1a = *v20;
  time1_16 = *(v20 + 16);

  return CMTimeCompare(&time1a, (v21 - 80));
}

__n128 OUTLINED_FUNCTION_33_17()
{
  *(v1 - 64) = *(v0 + 744);
  result = *(v0 + 728);
  *(v1 - 80) = result;
  return result;
}

Float64 OUTLINED_FUNCTION_38_13()
{
  *v0 = *(v1 + 216);
  *(v2 - 128) = *(v1 + 232);

  return CMTimeGetSeconds((v2 - 144));
}

__n128 OUTLINED_FUNCTION_42_13@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(a1 + 16);
  *(v1 + 544) = *a1;
  *(v1 + 560) = v2;
  result = *(a1 + 32);
  *(v1 + 576) = result;
  return result;
}

__n128 OUTLINED_FUNCTION_43_12@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(a1 + 16);
  *(v1 - 144) = *a1;
  *(v1 - 128) = v2;
  result = *(a1 + 32);
  *(v1 - 112) = result;
  return result;
}

__n128 OUTLINED_FUNCTION_44_14@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(a1 + 16);
  *(v1 + 256) = *a1;
  *(v1 + 272) = v2;
  result = *(a1 + 32);
  *(v1 + 288) = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_53_12(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t valuePtr)
{
  valuePtr = 0;

  return CFNumberGetValue(v17, kCFNumberDoubleType, &valuePtr);
}

uint64_t OUTLINED_FUNCTION_54_13(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, float a6)
{

  return fampb_canSwitchDownConcurrentlyWithoutStall(v8, a6, a2, v9, v6, a5, v7);
}

Float64 OUTLINED_FUNCTION_56_11()
{
  v2 = *(v0 + 592);

  return CMTimebaseGetRate(v2);
}

void MTAudioProcessingTapXPCRemoteGetObjectID(uint64_t a1, void *a2)
{
  if (a1)
  {
    if (a2)
    {
      if (CMBaseObjectGetVTable() == &aptapR_VTable)
      {
        *a2 = *(CMBaseObjectGetDerivedStorage() + 8);
      }

      else
      {
        emitter = fig_log_get_emitter();

        FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 4294954516, "<<< AudioProcessingTapRemote(XPC) >>>", 1639, v2);
      }
    }

    else
    {
      MTAudioProcessingTapXPCRemoteGetObjectID_cold_1(&v5);
    }
  }

  else
  {
    MTAudioProcessingTapXPCRemoteGetObjectID_cold_2(&v6);
  }
}

uint64_t aptapR_EnsureClientEstablished(int a1)
{
  v10[0] = 0;
  v10[1] = v10;
  v10[2] = 0x6802000000;
  v10[3] = __Block_byref_object_copy__9;
  v10[4] = __Block_byref_object_dispose__9;
  v10[5] = 1;
  v10[6] = aptapR_HandleDeadServerConnection;
  v10[7] = aptapR_ProcessNotification;
  v11 = 0u;
  v12 = 0u;
  v13 = 0;
  if ((a1 & 0x1000000) != 0)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 0x40000000;
    block[2] = __aptapR_EnsureClientEstablished_block_invoke;
    block[3] = &unk_1E748F420;
    block[4] = v10;
    if (aptapR_EnsureClientEstablished_gAudioProcessingTapRemoteClientForAirplaydSetupOnce == -1)
    {
      goto LABEL_5;
    }

    v6 = &aptapR_EnsureClientEstablished_gAudioProcessingTapRemoteClientForAirplaydSetupOnce;
    v7 = block;
    goto LABEL_13;
  }

  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 0x40000000;
  v8[2] = __aptapR_EnsureClientEstablished_block_invoke_2;
  v8[3] = &unk_1E748F448;
  v8[4] = v10;
  if (aptapR_EnsureClientEstablished_gAudioProcessingTapRemoteClientForMediaplaybackdSetupOnce != -1)
  {
    v6 = &aptapR_EnsureClientEstablished_gAudioProcessingTapRemoteClientForMediaplaybackdSetupOnce;
    v7 = v8;
LABEL_13:
    dispatch_once(v6, v7);
  }

LABEL_5:
  v2 = &gAudioProcessingTapRemoteClientForAirplayd;
  if ((a1 & 0x1000000) == 0)
  {
    v2 = &gAudioProcessingTapRemoteClientForMediaplaybackd;
  }

  v3 = *v2;
  if (aptapR_EnsureClientEstablished_err)
  {
    v4 = 0;
  }

  else
  {
    v4 = v3;
  }

  _Block_object_dispose(v10, 8);
  return v4;
}

OSStatus MTAudioProcessingTapGetSourceAudio(MTAudioProcessingTapRef tap, CMItemCount numberFrames, AudioBufferList *bufferListInOut, MTAudioProcessingTapFlags *flagsOut, CMTimeRange *timeRangeOut, CMItemCount *numberFramesOut)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 128))
  {
    MTAudioProcessingTapGetSourceAudio_cold_1(&v15);
    return v15;
  }

  else
  {
    v13 = DerivedStorage + 24;
    do
    {
      v13 = *v13;
      if (!v13)
      {
        goto LABEL_9;
      }
    }

    while (*(v13 + 98) != 1);
    if (!*(v13 + 8))
    {
LABEL_9:
      MTAudioProcessingTapGetSourceAudio_cold_2(&v16);
      return v16;
    }

    return aptapR_GetSourceAudio(tap, v13, numberFrames, bufferListInOut, flagsOut, timeRangeOut, numberFramesOut);
  }
}

uint64_t MTAudioProcessingTapGetMediaTimeRange(uint64_t a1, uint64_t a2, _OWORD *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 128))
  {
    MTAudioProcessingTapGetMediaTimeRange_cold_1(v8);
  }

  else
  {
    v5 = DerivedStorage + 24;
    while (1)
    {
      v5 = *v5;
      if (!v5)
      {
        break;
      }

      if (*(v5 + 98) == 1)
      {
        if (*(v5 + 8))
        {
          aptapR_GetMediaTimeRange(v5, v8);
          result = 0;
          v7 = v8[1];
          *a3 = v8[0];
          a3[1] = v7;
          a3[2] = v8[2];
          return result;
        }

        break;
      }
    }

    MTAudioProcessingTapGetMediaTimeRange_cold_2(v8);
  }

  return LODWORD(v8[0]);
}

double aptapR_GetMediaTimeRange@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v4 = MEMORY[0x1E6960C98];
  v5 = *(MEMORY[0x1E6960C98] + 16);
  *a2 = *MEMORY[0x1E6960C98];
  a2[1] = v5;
  a2[2] = *(v4 + 32);
  if (*(a1 + 96))
  {
    if (ATSubmixTapGetTime())
    {
      return result;
    }
  }

  else if (AudioQueueProcessingTapGetQueueTime_CM2())
  {
    return result;
  }

  return MTAudioProcessingTapConvertStreamTimeToMediaTime(0, (*(a1 + 56) + 0.5), 0, 0, a2, 0.0, 0.0, 0.0);
}

uint64_t MTAudioProcessingTapGetTrackSourceAudio(uint64_t a1, int a2, uint64_t a3, AudioBufferList *a4, AudioQueueProcessingTapFlags *a5, _OWORD *a6, void *a7)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 128))
  {
    if (*(DerivedStorage + 32))
    {
      MTAudioProcessingTapGetTrackSourceAudio_cold_1(&v17);
      return v17;
    }

    else
    {
      v15 = *(DerivedStorage + 24);
      if (!v15)
      {
        goto LABEL_7;
      }

      while (!*(v15 + 98) || *(v15 + 40) != a2)
      {
        v15 = *v15;
        if (!v15)
        {
          goto LABEL_7;
        }
      }

      if (*(v15 + 8))
      {

        return aptapR_GetSourceAudio(a1, v15, a3, a4, a5, a6, a7);
      }

      else
      {
LABEL_7:
        MTAudioProcessingTapGetTrackSourceAudio_cold_2(&v18);
        return v18;
      }
    }
  }

  else
  {
    MTAudioProcessingTapGetTrackSourceAudio_cold_3(&v19);
    return v19;
  }
}

uint64_t MTAudioProcessingTapGetStreamSourceAudio(uint64_t a1, int a2, uint64_t a3, AudioBufferList *a4, AudioQueueProcessingTapFlags *a5, _OWORD *a6, void *a7)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 128))
  {
    if (*(DerivedStorage + 32) == 1)
    {
      v15 = *(DerivedStorage + 24);
      if (!v15)
      {
        goto LABEL_7;
      }

      while (!*(v15 + 98) || *(v15 + 44) != a2)
      {
        v15 = *v15;
        if (!v15)
        {
          goto LABEL_7;
        }
      }

      if (*(v15 + 8))
      {

        return aptapR_GetSourceAudio(a1, v15, a3, a4, a5, a6, a7);
      }

      else
      {
LABEL_7:
        MTAudioProcessingTapGetStreamSourceAudio_cold_2(&v18);
        return v18;
      }
    }

    else
    {
      MTAudioProcessingTapGetStreamSourceAudio_cold_1(&v17);
      return v17;
    }
  }

  else
  {
    MTAudioProcessingTapGetStreamSourceAudio_cold_3(&v19);
    return v19;
  }
}

double MTAudioProcessingTapGetTrackMediaTimeRange(uint64_t a1, int a2, uint64_t a3, _OWORD *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 128))
  {
    if (*(DerivedStorage + 32))
    {
      MTAudioProcessingTapGetTrackMediaTimeRange_cold_1(v10);
    }

    else
    {
      v7 = *(DerivedStorage + 24);
      if (!v7)
      {
        goto LABEL_7;
      }

      while (!*(v7 + 98) || *(v7 + 40) != a2)
      {
        v7 = *v7;
        if (!v7)
        {
          goto LABEL_7;
        }
      }

      if (*(v7 + 8))
      {
        aptapR_GetMediaTimeRange(v7, v10);
        v9 = v10[1];
        *a4 = v10[0];
        a4[1] = v9;
        result = *&v11;
        a4[2] = v11;
      }

      else
      {
LABEL_7:
        MTAudioProcessingTapGetTrackMediaTimeRange_cold_2(v10);
      }
    }
  }

  else
  {
    MTAudioProcessingTapGetTrackMediaTimeRange_cold_3(v10);
  }

  return result;
}

double MTAudioProcessingTapGetStreamMediaTimeRange(uint64_t a1, int a2, uint64_t a3, _OWORD *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 128))
  {
    if (*(DerivedStorage + 32) == 1)
    {
      v7 = *(DerivedStorage + 24);
      if (!v7)
      {
        goto LABEL_7;
      }

      while (!*(v7 + 98) || *(v7 + 44) != a2)
      {
        v7 = *v7;
        if (!v7)
        {
          goto LABEL_7;
        }
      }

      if (*(v7 + 8))
      {
        aptapR_GetMediaTimeRange(v7, v10);
        v9 = v10[1];
        *a4 = v10[0];
        a4[1] = v9;
        result = *&v11;
        a4[2] = v11;
      }

      else
      {
LABEL_7:
        MTAudioProcessingTapGetStreamMediaTimeRange_cold_2(v10);
      }
    }

    else
    {
      MTAudioProcessingTapGetStreamMediaTimeRange_cold_1(v10);
    }
  }

  else
  {
    MTAudioProcessingTapGetStreamMediaTimeRange_cold_3(v10);
  }

  return result;
}

__CFString *aptapR_BaseClass_CopyDebugDescription(const void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  if (*(DerivedStorage + 128))
  {
    v4 = *(DerivedStorage + 32);
    v5 = *(DerivedStorage + 8);
    v6 = CFGetRetainCount(a1);
    if (v4 == 1)
    {
      v16 = *(DerivedStorage + 104);
      v17 = *(DerivedStorage + 112);
      v15 = *(DerivedStorage + 88);
      v13 = *(DerivedStorage + 72);
      v14 = *(DerivedStorage + 80);
      v11 = *(DerivedStorage + 56);
      v12 = *(DerivedStorage + 64);
      v7 = @"<MTMultitrackAudioProcessingTap(XPC) V1 %p> ObjectID %lld Retain count %d Created with i/f/p/u/t/p2/u2/t2 callbacks = {%p/%p/%p/%p/%p/%p/%p/%p} flags = 0x%x";
    }

    else
    {
      v14 = *(DerivedStorage + 80);
      *&v15 = *(DerivedStorage + 112);
      v12 = *(DerivedStorage + 64);
      v13 = *(DerivedStorage + 72);
      v11 = *(DerivedStorage + 56);
      v7 = @"<MTMultitrackAudioProcessingTap(XPC) V0 %p> ObjectID %lld Retain count %d Created with i/f/p/u/t callbacks = {%p/%p/%p/%p/%p} flags = 0x%x";
    }

    CFStringAppendFormat(Mutable, 0, v7, a1, v5, v6, *(DerivedStorage + 48), v11, v12, v13, v14, v15, v16, v17);
  }

  else
  {
    v8 = *(DerivedStorage + 8);
    v9 = CFGetRetainCount(a1);
    CFStringAppendFormat(Mutable, 0, @"<MTAudioProcessingTapRemote(XPC) %p> ObjectID %lld Retain count %d Created with i/f/p/u/t callbacks = {%p/%p/%p/%p/%p} flags = 0x%x", a1, v8, v9, *(DerivedStorage + 44), *(DerivedStorage + 52), *(DerivedStorage + 60), *(DerivedStorage + 68), *(DerivedStorage + 76), *(DerivedStorage + 112));
  }

  return Mutable;
}

uint64_t aptapR_UnprepareTapIfPrepared(uint64_t a1, uint64_t a2)
{
  result = CMBaseObjectGetDerivedStorage();
  if (*(a2 + 97))
  {
    if (!*(result + 128))
    {
      v8 = *(result + 68);
      if (v8)
      {
        result = v8(a1);
      }

      goto LABEL_12;
    }

    v5 = *(result + 32);
    if (v5)
    {
      if (v5 != 1)
      {
        goto LABEL_12;
      }

      v6 = *(result + 96);
      if (!v6)
      {
        goto LABEL_12;
      }

      v7 = *(a2 + 44);
    }

    else
    {
      v6 = *(result + 72);
      if (!v6)
      {
LABEL_12:
        *(a2 + 97) = 0;
        return result;
      }

      v7 = *(a2 + 40);
    }

    result = v6(a1, v7);
    goto LABEL_12;
  }

  return result;
}

void *__move_constructor_8_8_t0w8_pa0_17755_8_pa0_43205_16_pa0_2991_24_pa0_32134_32_pa0_55249_40_pa0_13544_48_pa0_52014_56(void *result, void *a2)
{
  *result = *a2;
  result[1] = a2[1];
  result[2] = a2[2];
  result[3] = a2[3];
  result[4] = a2[4];
  result[5] = a2[5];
  result[6] = a2[6];
  result[7] = a2[7];
  return result;
}

uint64_t aptapR_HandleDeadServerConnection(const void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  *(DerivedStorage + 1) = 1;
  FigSimpleMutexLock();
  for (i = *(DerivedStorage + 24); i; i = *i)
  {
    if (i[1])
    {
      aptapR_UnprepareTapIfPrepared(a1, i);
      i[1] = 0;
      if (a1)
      {
        CFRelease(a1);
      }
    }
  }

  return FigSimpleMutexUnlock();
}

uint64_t aptapR_ProcessNotification(const void *a1, const void *a2, uint64_t a3, const __CFDictionary *a4)
{
  CMBaseObjectGetDerivedStorage();
  if (!a4)
  {
    return 1;
  }

  PointerFromCFDictionary = MTAudioProcessingTapGetPointerFromCFDictionary(@"AQTapServerPointer", a4);
  v8 = MTAudioProcessingTapGetPointerFromCFDictionary(@"SubmixTapServerPointer", a4);
  if (!CFEqual(a2, @"MTAudioProcessingTapServerToRemote_InitializeTap"))
  {
    if (CFEqual(a2, @"MTAudioProcessingTapServerToRemote_CreateAQTap"))
    {
      FigCFDictionaryGetInt32IfPresent();
      FigCFDictionaryGetInt32IfPresent();
      DerivedStorage = CMBaseObjectGetDerivedStorage();
      if (!AudioQueueProcessingTapNew_CMClient())
      {
        FigSimpleMutexLock();
        v13 = (DerivedStorage + 24);
        v14 = (DerivedStorage + 24);
        while (1)
        {
          v14 = *v14;
          if (!v14)
          {
            break;
          }

          if (FigAtomicCompareAndSwapPtr())
          {
            v15 = v14;
            goto LABEL_32;
          }
        }

        v20 = malloc_type_calloc(1uLL, 0x70uLL, 0x10E0040AD315C60uLL);
        if (!v20)
        {
          FigSimpleMutexUnlock();
          goto LABEL_64;
        }

        v15 = v20;
        v20[1] = 0;
LABEL_32:
        v15[2] = PointerFromCFDictionary;
        v15[3] = 0;
        *(v15 + 7) = 0u;
        v15[4] = 0;
        *(v15 + 10) = 0;
        *(v15 + 11) = 0;
        *(v15 + 12) = 0;
        *(v15 + 9) = 0u;
        v15[11] = 0;
        *(v15 + 48) = 0;
        *(v15 + 98) = 0;
        if (v14)
        {
          FigMemoryBarrier();
          if (!a1)
          {
            goto LABEL_35;
          }
        }

        else
        {
          *v15 = *v13;
          FigMemoryBarrier();
          *v13 = v15;
          if (!a1)
          {
LABEL_35:
            FigSimpleMutexUnlock();
            if (!FigXPCCreateBasicMessage())
            {
              xpc_dictionary_set_uint64(0, "AQTapServerToken", PointerFromCFDictionary);
              FigXPCRemoteClientSendSyncMessage();
            }

            goto LABEL_64;
          }
        }

        CFRetain(a1);
        goto LABEL_35;
      }
    }

    else
    {
      if (CFEqual(a2, @"MTAudioProcessingTapServerToRemote_DisposeAQTap"))
      {
        v16 = CMBaseObjectGetDerivedStorage();
        v17 = (CMBaseObjectGetDerivedStorage() + 24);
        while (1)
        {
          v17 = *v17;
          if (!v17)
          {
            return 1;
          }

          if (v17[2] == PointerFromCFDictionary)
          {
            v18 = v17[1];
            if (v18)
            {
              FigSimpleMutexLock();
              v19 = (v16 + 24);
              while (1)
              {
                v19 = *v19;
                if (!v19)
                {
                  break;
                }

                if (FigAtomicCompareAndSwapPtr())
                {
                  aptapR_UnprepareTapIfPrepared(a1, v19);
                  AudioQueueProcessingTapDispose(v18);
                  if (a1)
                  {
                    CFRelease(a1);
                  }

                  break;
                }
              }

              FigSimpleMutexUnlock();
            }

            return 1;
          }
        }
      }

      if (!CFEqual(a2, @"MTAudioProcessingTapServerToRemoteNotification_CreateSubmixTap"))
      {
        if (CFEqual(a2, @"MTAudioProcessingTapServerToRemote_DisposeSubmixTap"))
        {
          aptapR_DisposeSubmixTap(a1, v8);
        }

        return 1;
      }

      MTAudioProcessingTapGetPointerFromCFDictionary(@"SubmixDestinationTapServerPointer", a4);
      v26 = MTAudioProcessingTapGetPointerFromCFDictionary(@"SubmixID", a4);
      v27 = CMBaseObjectGetDerivedStorage();
      if (!ATSubmixTapNew_CMClient())
      {
        FigSimpleMutexLock();
        v28 = (v27 + 24);
        v29 = (v27 + 24);
        while (1)
        {
          v29 = *v29;
          if (!v29)
          {
            break;
          }

          if (FigAtomicCompareAndSwapPtr())
          {
            v30 = v29;
            goto LABEL_70;
          }
        }

        v32 = malloc_type_calloc(1uLL, 0x70uLL, 0x10E0040AD315C60uLL);
        if (!v32)
        {
          FigSimpleMutexUnlock();
          goto LABEL_64;
        }

        v30 = v32;
        v32[1] = 0;
LABEL_70:
        v30[2] = 0;
        v30[3] = v8;
        *(v30 + 7) = 0u;
        v30[4] = v26;
        v30[5] = 0;
        *(v30 + 12) = 0;
        *(v30 + 9) = 0u;
        v30[11] = 0;
        *(v30 + 48) = 1;
        *(v30 + 98) = 0;
        if (v29)
        {
          FigMemoryBarrier();
        }

        else
        {
          *v30 = *v28;
          FigMemoryBarrier();
          *v28 = v30;
        }

        if (a1)
        {
          CFRetain(a1);
        }

        FigSimpleMutexUnlock();
        if (!FigXPCCreateBasicMessage())
        {
          xpc_dictionary_set_uint64(0, "SubmixID", v26);
          FigXPCRemoteClientSendSyncMessage();
        }
      }
    }

LABEL_64:
    FigXPCRelease();
    return 1;
  }

  v9 = CMBaseObjectGetDerivedStorage();
  if (PointerFromCFDictionary)
  {
    v10 = CMBaseObjectGetDerivedStorage() + 24;
    while (1)
    {
      v10 = *v10;
      if (!v10)
      {
        goto LABEL_38;
      }

      if (*(v10 + 16) == PointerFromCFDictionary)
      {
        v11 = 0;
        v10 = *(v10 + 8);
        goto LABEL_42;
      }
    }
  }

  if (!v8)
  {
    v10 = 0;
LABEL_38:
    v11 = 0;
    goto LABEL_42;
  }

  v11 = CMBaseObjectGetDerivedStorage() + 24;
  while (1)
  {
    v11 = *v11;
    if (!v11)
    {
      break;
    }

    if (*(v11 + 24) == v8)
    {
      v10 = 0;
      v11 = *(v11 + 8);
      goto LABEL_42;
    }
  }

  v10 = 0;
LABEL_42:
  if (v10 | v11)
  {
    v21 = (v9 + 24);
    do
    {
      v21 = *v21;
      if (!v21)
      {
        return 1;
      }

      v22 = v21[1];
    }

    while (v22 != v10 && v22 != v11);
    if (!aptapR_PrepareTapIfNeeded(a1, v21, 0, 0))
    {
      return 1;
    }

    if (!FigXPCCreateBasicMessage())
    {
      if (PointerFromCFDictionary)
      {
        v24 = "AQTapServerToken";
        v25 = PointerFromCFDictionary;
      }

      else
      {
        if (!v8)
        {
LABEL_63:
          FigXPCRemoteClientSendSyncMessage();
          goto LABEL_64;
        }

        v24 = "SubmixID";
        v25 = v21[4];
      }

      xpc_dictionary_set_uint64(0, v24, v25);
      goto LABEL_63;
    }

    goto LABEL_64;
  }

  return 1;
}

uint64_t aptapR_DisposeSubmixTap(const void *a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  result = CMBaseObjectGetDerivedStorage();
  v6 = (result + 24);
  while (1)
  {
    v6 = *v6;
    if (!v6)
    {
      return result;
    }

    if (v6[3] == a2)
    {
      if (v6[1])
      {
        FigSimpleMutexLock();
        v7 = DerivedStorage + 24;
        while (1)
        {
          v7 = *v7;
          if (!v7)
          {
            break;
          }

          if (FigAtomicCompareAndSwapPtr())
          {
            aptapR_UnprepareTapIfPrepared(a1, v7);
            ATSubmixTapDispose();
            *(v7 + 96) = 0;
            *(v7 + 24) = 0;
            *(v7 + 32) = 0;
            if (a1)
            {
              CFRelease(a1);
            }

            break;
          }
        }

        return FigSimpleMutexUnlock();
      }

      return result;
    }
  }
}

uint64_t aptapR_PrepareTapIfNeeded(uint64_t a1, uint64_t a2, int a3, __int128 *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v9 = DerivedStorage;
  if (!*(DerivedStorage + 128))
  {
    if (*(DerivedStorage + 60))
    {
      goto LABEL_9;
    }

    return 1;
  }

  v10 = *(DerivedStorage + 32);
  if (!v10)
  {
    if (*(DerivedStorage + 64))
    {
      goto LABEL_9;
    }

    return 1;
  }

  if (v10 == 1 && !*(DerivedStorage + 88))
  {
    return 1;
  }

LABEL_9:
  v11 = *(a2 + 8);
  v12 = CMBaseObjectGetDerivedStorage() + 24;
  do
  {
    v12 = *v12;
    if (!v12)
    {
      return 0;
    }
  }

  while (*(v12 + 8) != v11);
  v13 = *(v12 + 48);
  v14 = *(v12 + 72);
  v18[0] = *(v12 + 56);
  v18[1] = v14;
  v19 = *(v12 + 88);
  if (!a4)
  {
    a4 = v18;
  }

  if (!a3)
  {
    a3 = v13;
  }

  if (*(a2 + 97) && *(a2 + 48) == a3 && !memcmp((a2 + 56), a4, 0x28uLL))
  {
    return 1;
  }

  *(a2 + 48) = a3;
  v15 = *a4;
  v16 = a4[1];
  *(a2 + 88) = *(a4 + 4);
  *(a2 + 72) = v16;
  *(a2 + 56) = v15;
  aptapR_UnprepareTapIfPrepared(a1, a2);
  if (*(v9 + 128))
  {
    if (*(v9 + 32) == 1)
    {
      (*(v9 + 88))(a1, *(a2 + 44), v13, a4);
    }

    else
    {
      (*(v9 + 64))(a1, *(a2 + 40), v13, a4);
    }
  }

  else
  {
    (*(v9 + 60))(a1, v13, a4);
  }

  result = 1;
  *(a2 + 97) = 1;
  return result;
}

uint64_t aptapR_ProcessingTapCallback(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4, _DWORD *a5, _DWORD *a6, uint64_t a7)
{
  result = CMBaseObjectGetDerivedStorage();
  v15 = result;
  v19 = 0;
  v18 = 0;
  v16 = result + 24;
  while (1)
  {
    v16 = *v16;
    if (!v16)
    {
      break;
    }

    if (*(v16 + 8) == a2)
    {
      result = aptapR_PrepareTapIfNeeded(a1, v16, 0, 0);
      if (result)
      {
        *(v16 + 98) = 1;
        *(v16 + 104) = a4;
        if (*(v15 + 128))
        {
          v17 = *a5;
          if (*(v15 + 32) == 1)
          {
            result = (*(v15 + 104))(a1, *(v16 + 44), a3, v17, a7, &v19, &v18);
          }

          else
          {
            result = (*(v15 + 80))(a1, *(v16 + 40), a3, v17, a7, &v19, &v18);
          }
        }

        else
        {
          result = (*(v15 + 76))(a1, a3, *a5, a7, &v19, &v18);
        }

        *a6 = v19;
        *a5 = v18;
        *(v16 + 98) = 0;
      }

      return result;
    }
  }

  return result;
}

uint64_t submixTap_TapFormatChangeCallback(uint64_t a1, uint64_t a2, int a3, __int128 *a4)
{
  result = CMBaseObjectGetDerivedStorage();
  v9 = (result + 24);
  while (1)
  {
    v9 = *v9;
    if (!v9)
    {
      break;
    }

    if (v9[1] == a2)
    {

      return aptapR_PrepareTapIfNeeded(a1, v9, a3, a4);
    }
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_2_118(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  *(v12 + 8) = a1;

  return FigXPCRemoteClientAssociateObject();
}

uint64_t OUTLINED_FUNCTION_3_97(uint64_t a1, uint64_t a2, ...)
{

  return FigXPCCreateBasicMessage();
}

uint64_t FigPathwayValidateStableVariantAndRenditionIDs(const __CFArray *a1)
{
  allocator = *MEMORY[0x1E695E480];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (Mutable)
  {
    v3 = 0;
    v4 = MEMORY[0x1E695E9F8];
    v5 = 200;
    if (!a1)
    {
      goto LABEL_4;
    }

LABEL_3:
    for (i = CFArrayGetCount(a1); ; i = 0)
    {
      if (v3 >= i)
      {
        goto LABEL_16;
      }

      ValueAtIndex = CFArrayGetValueAtIndex(a1, v3);
      PathwayID = FigAlternateGetPathwayID(ValueAtIndex);
      StableStreamIdentifier = FigAlternateGetStableStreamIdentifier(ValueAtIndex);
      if (CFDictionaryContainsKey(Mutable, PathwayID))
      {
        break;
      }

      v11 = CFSetCreateMutable(allocator, 0, v4);
      if (!v11)
      {
        goto LABEL_15;
      }

      v10 = v11;
      CFDictionarySetValue(Mutable, PathwayID, v11);
      CFRelease(v10);
      if (StableStreamIdentifier)
      {
        goto LABEL_8;
      }

LABEL_9:
      ++v3;
      if (a1)
      {
        goto LABEL_3;
      }

LABEL_4:
      ;
    }

    v10 = CFDictionaryGetValue(Mutable, PathwayID);
    if (!StableStreamIdentifier)
    {
      goto LABEL_9;
    }

LABEL_8:
    CFSetSetValue(v10, StableStreamIdentifier);
    goto LABEL_9;
  }

  v5 = 189;
LABEL_15:
  if (!FigPathwayValidateStableVariantAndRenditionIDs_cold_1(v5, &v61))
  {
    v13 = 0;
    goto LABEL_80;
  }

LABEL_16:
  Count = CFDictionaryGetCount(Mutable);
  v13 = malloc_type_calloc(Count, 8uLL, 0x6004044C4A2DFuLL);
  if (!v13)
  {
    FigPathwayValidateStableVariantAndRenditionIDs_cold_5(&v61);
    goto LABEL_80;
  }

  CFDictionaryGetKeysAndValues(Mutable, v13, 0);
  v14 = CFArrayCreate(allocator, v13, Count, MEMORY[0x1E695E9C0]);
  if (!v14)
  {
    FigPathwayValidateStableVariantAndRenditionIDs_cold_4(&v61);
LABEL_80:
    v46 = v61;
    free(v13);
    v18 = 0;
    if (Mutable)
    {
      goto LABEL_66;
    }

    goto LABEL_67;
  }

  v15 = v14;
  if (!figSteering_validatePathwayToStableVariantOrRenditionIDDictionary(Mutable, v14))
  {
    FigPathwayValidateStableVariantAndRenditionIDs_cold_3(v13, &v61);
    v18 = 0;
    v46 = v61;
    goto LABEL_65;
  }

  v51 = v13;
  v52 = v15;
  v16 = MEMORY[0x1E695E9D8];
  v17 = MEMORY[0x1E695E9E8];
  v18 = CFDictionaryCreateMutable(allocator, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v19 = CFDictionaryCreateMutable(allocator, 0, v16, v17);
  v54 = CFDictionaryCreateMutable(allocator, 0, v16, v17);
  cf = CFDictionaryCreateMutable(allocator, 0, v16, v17);
  if (!v18)
  {
    v49 = 276;
    v20 = v51;
    v21 = v19;
LABEL_87:
    v22 = v54;
LABEL_76:
    FigPathwayValidateStableVariantAndRenditionIDs_cold_2(v49, &v61);
    v46 = v61;
    goto LABEL_54;
  }

  v20 = v51;
  v21 = v19;
  if (!v19)
  {
    v49 = 277;
    goto LABEL_87;
  }

  v22 = v54;
  if (!v54)
  {
    v49 = 278;
    goto LABEL_76;
  }

  if (!cf)
  {
    v49 = 279;
    goto LABEL_76;
  }

  v23 = 0;
  v53 = Mutable;
  while (1)
  {
    if (a1)
    {
      v24 = CFArrayGetCount(a1);
    }

    else
    {
      v24 = 0;
    }

    if (v23 >= v24)
    {
      v46 = 0;
      v20 = v51;
      goto LABEL_54;
    }

    v57 = v23;
    v25 = CFArrayGetValueAtIndex(a1, v23);
    v26 = FigAlternateGetPathwayID(v25);
    value = FigAlternateGetAudioGroupIDString(v25);
    VideoGroupIDString = FigAlternateGetVideoGroupIDString(v25);
    SubtitleGroupIDString = FigAlternateGetSubtitleGroupIDString(v25);
    if (!CFDictionaryContainsKey(v18, v26))
    {
      v27 = CFSetCreateMutable(allocator, 0, MEMORY[0x1E695E9F8]);
      if (!v27)
      {
        v20 = v51;
        v49 = 292;
        goto LABEL_76;
      }

      v28 = v27;
      CFDictionarySetValue(v18, v26, v27);
      CFRelease(v28);
    }

    if (!CFDictionaryContainsKey(v21, v26))
    {
      v29 = CFSetCreateMutable(allocator, 0, MEMORY[0x1E695E9F8]);
      if (!v29)
      {
        v49 = 301;
        goto LABEL_75;
      }

      v30 = v29;
      CFDictionarySetValue(v21, v26, v29);
      CFRelease(v30);
    }

    if (!CFDictionaryContainsKey(v22, v26))
    {
      v31 = CFSetCreateMutable(allocator, 0, MEMORY[0x1E695E9F8]);
      if (!v31)
      {
        v49 = 309;
        goto LABEL_75;
      }

      v32 = v31;
      CFDictionarySetValue(v22, v26, v31);
      CFRelease(v32);
    }

    if (!CFDictionaryContainsKey(cf, v26))
    {
      v33 = CFSetCreateMutable(allocator, 0, MEMORY[0x1E695E9F8]);
      if (v33)
      {
        v34 = v33;
        CFDictionarySetValue(cf, v26, v33);
        CFRelease(v34);
        goto LABEL_40;
      }

      v49 = 317;
LABEL_75:
      v20 = v51;
      goto LABEL_76;
    }

LABEL_40:
    v35 = a1;
    v36 = v21;
    v37 = v18;
    v38 = CFDictionaryGetValue(v18, v26);
    v39 = v22;
    v40 = v36;
    v41 = CFDictionaryGetValue(v36, v26);
    v42 = CFDictionaryGetValue(v39, v26);
    v43 = CFDictionaryGetValue(cf, v26);
    if (value && !CFSetContainsValue(v41, value))
    {
      v44 = figSteering_addRenditionIDsFromMediaGroupLocatorMapToSet(v38, 1936684398, v25);
      if (v44)
      {
        goto LABEL_70;
      }

      CFSetSetValue(v41, value);
    }

    if (VideoGroupIDString && !CFSetContainsValue(v42, VideoGroupIDString))
    {
      v44 = figSteering_addRenditionIDsFromMediaGroupLocatorMapToSet(v38, 1986618469, v25);
      if (v44)
      {
LABEL_70:
        v46 = v44;
        Mutable = v53;
        v20 = v51;
        v18 = v37;
        goto LABEL_78;
      }

      CFSetSetValue(v42, VideoGroupIDString);
    }

    v18 = v37;
    if (SubtitleGroupIDString)
    {
      if (!CFSetContainsValue(v43, SubtitleGroupIDString))
      {
        break;
      }
    }

LABEL_52:
    v23 = v57 + 1;
    a1 = v35;
    v21 = v40;
    Mutable = v53;
    v22 = v54;
  }

  v45 = figSteering_addRenditionIDsFromMediaGroupLocatorMapToSet(v38, 1935832172, v25);
  if (!v45)
  {
    CFSetSetValue(v43, SubtitleGroupIDString);
    goto LABEL_52;
  }

  v46 = v45;
  Mutable = v53;
  v20 = v51;
LABEL_78:
  v21 = v40;
  v22 = v54;
LABEL_54:
  if (v21)
  {
    CFRelease(v21);
  }

  if (v22)
  {
    CFRelease(v22);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (!v46)
  {
    if (figSteering_validatePathwayToStableVariantOrRenditionIDDictionary(v18, v52))
    {
      v46 = 0;
    }

    else
    {
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v50, v51, v52);
      v46 = v47;
    }
  }

  free(v20);
  v15 = v52;
LABEL_65:
  CFRelease(v15);
  if (Mutable)
  {
LABEL_66:
    CFRelease(Mutable);
  }

LABEL_67:
  if (v18)
  {
    CFRelease(v18);
  }

  return v46;
}

uint64_t figSteering_validatePathwayToStableVariantOrRenditionIDDictionary(const __CFDictionary *a1, CFArrayRef theArray)
{
  v4 = 0;
  v5 = 1;
  if (!theArray)
  {
    goto LABEL_3;
  }

LABEL_2:
  for (i = CFArrayGetCount(theArray); v4 < i && v5; i = 0)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(theArray, v4);
    CFDictionaryGetValue(a1, ValueAtIndex);
    if (v4)
    {
      v5 = FigCFEqual();
    }

    ++v4;
    if (theArray)
    {
      goto LABEL_2;
    }

LABEL_3:
    ;
  }

  return v5;
}

uint64_t figSteering_addRenditionIDsFromMediaGroupLocatorMapToSet(__CFSet *a1, uint64_t a2, uint64_t a3)
{
  v4 = a2;
  MediaGroupLocatorMap = FigAlternateGetMediaGroupLocatorMap(a3, a2);
  if (MediaGroupLocatorMap)
  {
    v7 = MediaGroupLocatorMap;
    Count = CFDictionaryGetCount(MediaGroupLocatorMap);
    v9 = malloc_type_calloc(Count, 8uLL, 0x6004044C4A2DFuLL);
    if (v9)
    {
      CFDictionaryGetKeysAndValues(v7, v9, 0);
      if (Count >= 1)
      {
        for (i = 0; i != Count; ++i)
        {
          StableStreamIdentifierForMediaSubstream = FigAlternateGetStableStreamIdentifierForMediaSubstream(a3, v4, v9[i]);
          if (StableStreamIdentifierForMediaSubstream)
          {
            CFSetSetValue(a1, StableStreamIdentifierForMediaSubstream);
          }
        }
      }

      v12 = 0;
    }

    else
    {
      figSteering_addRenditionIDsFromMediaGroupLocatorMapToSet_cold_1(&v14);
      v12 = v14;
    }
  }

  else
  {
    figSteering_addRenditionIDsFromMediaGroupLocatorMapToSet_cold_2(&v15);
    v9 = 0;
    v12 = v15;
  }

  free(v9);
  return v12;
}

void figSteeringClonePathwayMediaGroup(const void *a1, CFDictionaryRef theDict, uint64_t a3)
{
  v4 = *a3;
  v5 = *(a3 + 8);
  v6 = *(a3 + 16);
  value = 0;
  MutableCopy = CFDictionaryCreateMutableCopy(*MEMORY[0x1E695E480], 0, theDict);
  if (MutableCopy)
  {
    v8 = MutableCopy;
    v9 = *MEMORY[0x1E6962BB0];
    v10 = CFDictionaryGetValue(MutableCopy, *MEMORY[0x1E6962BB0]);
    v11 = CFDictionaryGetValue(v8, *MEMORY[0x1E6962BA8]);
    FigPathwayCloningApplyURIReplacement(v10, 1, v11, v5, &value);
    *v4 = v12;
    v13 = value;
    if (!v12)
    {
      if (value)
      {
        CFDictionarySetValue(v8, v9, value);
        CFDictionarySetValue(v8, *MEMORY[0x1E6962BB8], value);
      }

      CFDictionarySetValue(*v6, a1, v8);
      v13 = value;
    }

    if (v13)
    {
      CFRelease(v13);
    }

    CFRelease(v8);
  }

  else
  {
    figSteeringClonePathwayMediaGroup_cold_1(v4);
  }
}

uint64_t FigCaptionRendererSRTRegionSetAlignment(uint64_t a1, int a2, int a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  *(DerivedStorage + 60) = a2;
  *(DerivedStorage + 64) = a3;
  return 0;
}

void FigCaptionRendererSRTRegionFinalize(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v2 = *(DerivedStorage + 8);
  if (v2)
  {
    CFRelease(v2);
    *(DerivedStorage + 8) = 0;
  }

  if (*DerivedStorage)
  {
    CFRelease(*DerivedStorage);
    *DerivedStorage = 0;
  }
}

__CFString *FigCaptionRendererSRTRegionCopyDebugDescription(uint64_t a1)
{
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  CFStringAppendFormat(Mutable, 0, @"\tFigCaptionRendererSRTRegion: <%p>", a1);
  return Mutable;
}

__CFString *FigCaptionRendererSRTRegion_FigCaptionRendererBaseProtocol_CopyDebugDescription(uint64_t a1)
{
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  CFStringAppendFormat(Mutable, 0, @"\tFigCaptionRendererSRTRegion <FigCaptionRendererBaseProtocol> on <%p>", a1);
  return Mutable;
}

__CFString *FigCaptionRendererSRTRegion_FigCaptionRendererNodeProtocol_CopyDebugDescription(uint64_t a1)
{
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  CFStringAppendFormat(Mutable, 0, @"\tFigCaptionRendererSRTRegion <FigCaptionRendererNodeProtocol> on <%p>", a1);
  return Mutable;
}

uint64_t FigCaptionRendererSRTRegion_FigCaptionRendererNodeProtocol_SetParentNode(uint64_t a1, uint64_t a2)
{
  v3 = *CMBaseObjectGetDerivedStorage();
  FigCaptionRendererNodeProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (!ProtocolVTable)
  {
    return 4294954508;
  }

  v5 = *(ProtocolVTable + 16);
  if (!v5)
  {
    return 4294954508;
  }

  v6 = *(v5 + 8);
  if (!v6)
  {
    return 4294954514;
  }

  return v6(v3, a2);
}

uint64_t FigCaptionRendererSRTRegion_FigCaptionRendererNodeProtocol_GetParentNode(uint64_t a1, uint64_t a2)
{
  v3 = *CMBaseObjectGetDerivedStorage();
  FigCaptionRendererNodeProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (!ProtocolVTable)
  {
    return 4294954508;
  }

  v5 = *(ProtocolVTable + 16);
  if (!v5)
  {
    return 4294954508;
  }

  v6 = *(v5 + 16);
  if (!v6)
  {
    return 4294954514;
  }

  return v6(v3, a2);
}

uint64_t FigCaptionRendererSRTRegion_FigCaptionRendererNodeProtocol_GetChildren(uint64_t a1, uint64_t a2)
{
  v3 = *CMBaseObjectGetDerivedStorage();
  FigCaptionRendererNodeProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (!ProtocolVTable)
  {
    return 4294954508;
  }

  v5 = *(ProtocolVTable + 16);
  if (!v5)
  {
    return 4294954508;
  }

  v6 = *(v5 + 24);
  if (!v6)
  {
    return 4294954514;
  }

  return v6(v3, a2);
}

uint64_t FigCaptionRendererSRTRegion_FigCaptionRendererNodeProtocol_HasChildNode(uint64_t a1, uint64_t a2, char *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  __s1 = 0;
  FigCaptionRendererBaseProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (!ProtocolVTable || (v8 = *(ProtocolVTable + 16)) == 0)
  {
    v16 = 4294954508;
LABEL_44:
    FigCaptionRendererSRTRegion_FigCaptionRendererNodeProtocol_HasChildNode_cold_1();
    return v16;
  }

  v9 = *(v8 + 8);
  if (!v9)
  {
    v16 = 4294954514;
    goto LABEL_44;
  }

  v10 = v9(a2, &__s1);
  if (v10)
  {
    v16 = v10;
    goto LABEL_44;
  }

  v11 = __s1;
  if (__s1 && (!strcmp(__s1, "FigCaptionRendererStackLayoutRegion") || !strcmp(v11, "FigCaptionRendererCellStackLayoutRegion") || !strcmp(v11, "FigCaptionRendererSRTRegion")))
  {
    theString1 = 0;
    FigCaptionRendererRegionProtocolGetProtocolID();
    v17 = CMBaseObjectGetProtocolVTable();
    if (v17)
    {
      v18 = *(v17 + 16);
      if (v18)
      {
        v19 = *(v18 + 16);
        if (v19)
        {
          v19(a2, &theString1);
        }
      }
    }

    v20 = theString1;
    if (theString1)
    {
      theArray = 0;
      FigCaptionRendererNodeProtocolGetProtocolID();
      v21 = CMBaseObjectGetProtocolVTable();
      if (v21)
      {
        v22 = *(v21 + 2);
        if (v22 && (v23 = *(v22 + 24)) != 0)
        {
          v23(a1, &theArray);
          v21 = theArray;
        }

        else
        {
          v21 = 0;
        }
      }

      if (CFArrayGetCount(v21) < 1)
      {
LABEL_41:
        v20 = 0;
        goto LABEL_42;
      }

      v24 = 0;
      while (1)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(theArray, v24);
        v37 = 0;
        FigCaptionRendererBaseProtocolGetProtocolID();
        v26 = CMBaseObjectGetProtocolVTable();
        if (!v26)
        {
          break;
        }

        v27 = *(v26 + 16);
        if (!v27)
        {
          break;
        }

        v28 = *(v27 + 8);
        if (!v28)
        {
          v16 = 4294954514;
          goto LABEL_48;
        }

        v29 = v28(ValueAtIndex, &v37);
        if (v29)
        {
          v16 = v29;
          goto LABEL_48;
        }

        v30 = v37;
        if (v37 && (!strcmp(v37, "FigCaptionRendererStackLayoutRegion") || !strcmp(v30, "FigCaptionRendererCellStackLayoutRegion") || !strcmp(__s1, "FigCaptionRendererSRTRegion")))
        {
          theString2 = 0;
          FigCaptionRendererRegionProtocolGetProtocolID();
          v31 = CMBaseObjectGetProtocolVTable();
          if (v31)
          {
            v32 = *(v31 + 16);
            if (v32)
            {
              v33 = *(v32 + 16);
              if (v33)
              {
                v33(ValueAtIndex, &theString2);
              }
            }
          }

          if (CFStringCompare(theString1, theString2, 1uLL) == kCFCompareEqualTo)
          {
            v20 = 1;
            goto LABEL_42;
          }
        }

        if (CFArrayGetCount(theArray) <= ++v24)
        {
          goto LABEL_41;
        }
      }

      v16 = 4294954508;
LABEL_48:
      fig_log_get_emitter();
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v35, theString2, v37);
      return v16;
    }

LABEL_42:
    v16 = 0;
    *a3 = v20;
  }

  else
  {
    v12 = *DerivedStorage;
    FigCaptionRendererNodeProtocolGetProtocolID();
    v13 = CMBaseObjectGetProtocolVTable();
    if (v13 && (v14 = *(v13 + 16)) != 0)
    {
      v15 = *(v14 + 32);
      if (v15)
      {
        return v15(v12, a2, a3);
      }

      else
      {
        return 4294954514;
      }
    }

    else
    {
      return 4294954508;
    }
  }

  return v16;
}

uint64_t FigCaptionRendererSRTRegion_FigCaptionRendererNodeProtocol_AddChildNode(uint64_t a1, uint64_t a2)
{
  v3 = *CMBaseObjectGetDerivedStorage();
  FigCaptionRendererNodeProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (!ProtocolVTable)
  {
    return 4294954508;
  }

  v5 = *(ProtocolVTable + 16);
  if (!v5)
  {
    return 4294954508;
  }

  v6 = *(v5 + 40);
  if (!v6)
  {
    return 4294954514;
  }

  return v6(v3, a2);
}

uint64_t FigCaptionRendererSRTRegion_FigCaptionRendererNodeProtocol_RemoveChildNode(uint64_t a1, uint64_t a2)
{
  v3 = *CMBaseObjectGetDerivedStorage();
  FigCaptionRendererNodeProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (!ProtocolVTable)
  {
    return 4294954508;
  }

  v5 = *(ProtocolVTable + 16);
  if (!v5)
  {
    return 4294954508;
  }

  v6 = *(v5 + 48);
  if (!v6)
  {
    return 4294954514;
  }

  return v6(v3, a2);
}

uint64_t FigCaptionRendererSRTRegion_FigCaptionRendererNodeProtocol_RemovelAllChildrenNodes(uint64_t a1)
{
  v1 = *CMBaseObjectGetDerivedStorage();
  FigCaptionRendererNodeProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (!ProtocolVTable)
  {
    return 4294954508;
  }

  v3 = *(ProtocolVTable + 16);
  if (!v3)
  {
    return 4294954508;
  }

  v4 = *(v3 + 56);
  if (!v4)
  {
    return 4294954514;
  }

  return v4(v1);
}

uint64_t FigCaptionRendererSRTRegion_FigCaptionRendererNodeProtocol_SetViewport(uint64_t a1, double a2, double a3, double a4, double a5)
{
  v9 = *CMBaseObjectGetDerivedStorage();
  FigCaptionRendererNodeProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (!ProtocolVTable)
  {
    return 4294954508;
  }

  v15 = *(ProtocolVTable + 16);
  if (!v15)
  {
    return 4294954508;
  }

  v16 = *(v15 + 64);
  if (!v16)
  {
    return 4294954514;
  }

  v11.n128_f64[0] = a2;
  v12.n128_f64[0] = a3;
  v13.n128_f64[0] = a4;
  v14.n128_f64[0] = a5;

  return v16(v9, v11, v12, v13, v14);
}

uint64_t FigCaptionRendererSRTRegion_FigCaptionRendererNodeProtocol_GetViewport(uint64_t a1, uint64_t a2)
{
  v3 = *CMBaseObjectGetDerivedStorage();
  FigCaptionRendererNodeProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (!ProtocolVTable)
  {
    return 4294954508;
  }

  v5 = *(ProtocolVTable + 16);
  if (!v5)
  {
    return 4294954508;
  }

  v6 = *(v5 + 72);
  if (!v6)
  {
    return 4294954514;
  }

  return v6(v3, a2);
}

uint64_t FigCaptionRendererSRTRegion_FigCaptionRendererNodeProtocol_SetFCRBounds(uint64_t a1, __int128 *a2)
{
  v3 = *CMBaseObjectGetDerivedStorage();
  v8 = *a2;
  v9 = a2[1];
  v10 = a2[2];
  v11 = a2[3];
  FigCaptionRendererNodeProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (!ProtocolVTable)
  {
    return 4294954508;
  }

  v5 = *(ProtocolVTable + 16);
  if (!v5)
  {
    return 4294954508;
  }

  v6 = *(v5 + 80);
  if (!v6)
  {
    return 4294954514;
  }

  v12[0] = v8;
  v12[1] = v9;
  v12[2] = v10;
  v12[3] = v11;
  return v6(v3, v12);
}

uint64_t FigCaptionRendererSRTRegion_FigCaptionRendererNodeProtocol_GetFCRBounds(uint64_t a1, uint64_t a2)
{
  v3 = *CMBaseObjectGetDerivedStorage();
  FigCaptionRendererNodeProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (!ProtocolVTable)
  {
    return 4294954508;
  }

  v5 = *(ProtocolVTable + 16);
  if (!v5)
  {
    return 4294954508;
  }

  v6 = *(v5 + 88);
  if (!v6)
  {
    return 4294954514;
  }

  return v6(v3, a2);
}

uint64_t FigCaptionRendererSRTRegion_FigCaptionRendererNodeProtocol_SetCGBounds(uint64_t a1, double a2, double a3, double a4, double a5)
{
  v9 = *CMBaseObjectGetDerivedStorage();
  FigCaptionRendererNodeProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (!ProtocolVTable)
  {
    return 4294954508;
  }

  v15 = *(ProtocolVTable + 16);
  if (!v15)
  {
    return 4294954508;
  }

  v16 = *(v15 + 96);
  if (!v16)
  {
    return 4294954514;
  }

  v11.n128_f64[0] = a2;
  v12.n128_f64[0] = a3;
  v13.n128_f64[0] = a4;
  v14.n128_f64[0] = a5;

  return v16(v9, v11, v12, v13, v14);
}

uint64_t FigCaptionRendererSRTRegion_FigCaptionRendererNodeProtocol_GetCGBounds(uint64_t a1, uint64_t a2)
{
  v3 = *CMBaseObjectGetDerivedStorage();
  FigCaptionRendererNodeProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (!ProtocolVTable)
  {
    return 4294954508;
  }

  v5 = *(ProtocolVTable + 16);
  if (!v5)
  {
    return 4294954508;
  }

  v6 = *(v5 + 104);
  if (!v6)
  {
    return 4294954514;
  }

  return v6(v3, a2);
}

uint64_t FigCaptionRendererSRTRegion_FigCaptionRendererNodeProtocol_SetCGSize(uint64_t a1, double a2, double a3)
{
  v5 = *CMBaseObjectGetDerivedStorage();
  FigCaptionRendererNodeProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (!ProtocolVTable)
  {
    return 4294954508;
  }

  v9 = *(ProtocolVTable + 16);
  if (!v9)
  {
    return 4294954508;
  }

  v10 = *(v9 + 112);
  if (!v10)
  {
    return 4294954514;
  }

  v7.n128_f64[0] = a2;
  v8.n128_f64[0] = a3;

  return v10(v5, v7, v8);
}

uint64_t FigCaptionRendererSRTRegion_FigCaptionRendererNodeProtocol_GetCGSize(uint64_t a1, uint64_t a2)
{
  v3 = *CMBaseObjectGetDerivedStorage();
  FigCaptionRendererNodeProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (!ProtocolVTable)
  {
    return 4294954508;
  }

  v5 = *(ProtocolVTable + 16);
  if (!v5)
  {
    return 4294954508;
  }

  v6 = *(v5 + 120);
  if (!v6)
  {
    return 4294954508;
  }

  return v6(v3, a2);
}

uint64_t FigCaptionRendererSRTRegion_FigCaptionRendererNodeProtocol_SetCGOrigin(uint64_t a1, double a2, double a3)
{
  v5 = *CMBaseObjectGetDerivedStorage();
  FigCaptionRendererNodeProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (!ProtocolVTable)
  {
    return 4294954508;
  }

  v9 = *(ProtocolVTable + 16);
  if (!v9)
  {
    return 4294954508;
  }

  v10 = *(v9 + 128);
  if (!v10)
  {
    return 4294954514;
  }

  v7.n128_f64[0] = a2;
  v8.n128_f64[0] = a3;

  return v10(v5, v7, v8);
}

uint64_t FigCaptionRendererSRTRegion_FigCaptionRendererNodeProtocol_GetCGOrigin(uint64_t a1, uint64_t a2)
{
  v3 = *CMBaseObjectGetDerivedStorage();
  FigCaptionRendererNodeProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (!ProtocolVTable)
  {
    return 4294954508;
  }

  v5 = *(ProtocolVTable + 16);
  if (!v5)
  {
    return 4294954508;
  }

  v6 = *(v5 + 136);
  if (!v6)
  {
    return 4294954514;
  }

  return v6(v3, a2);
}

uint64_t FigCaptionRendererSRTRegion_FigCaptionRendererNodeProtocol_SetPaddings(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = *CMBaseObjectGetDerivedStorage();
  FigCaptionRendererNodeProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (!ProtocolVTable)
  {
    return 4294954508;
  }

  v15 = *(ProtocolVTable + 16);
  if (!v15)
  {
    return 4294954508;
  }

  v16 = *(v15 + 144);
  if (!v16)
  {
    return 4294954514;
  }

  return v16(v13, a2, a3, a4, a5, a6, a7);
}

uint64_t FigCaptionRendererSRTRegion_FigCaptionRendererNodeProtocol_GetInsetCGBounds(uint64_t a1, uint64_t a2)
{
  v3 = *CMBaseObjectGetDerivedStorage();
  FigCaptionRendererNodeProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (!ProtocolVTable)
  {
    return 4294954508;
  }

  v5 = *(ProtocolVTable + 16);
  if (!v5)
  {
    return 4294954508;
  }

  v6 = *(v5 + 152);
  if (!v6)
  {
    return 4294954514;
  }

  return v6(v3, a2);
}

uint64_t FigCaptionRendererSRTRegion_FigCaptionRendererNodeProtocol_PurgeImageCache(uint64_t a1)
{
  v1 = *CMBaseObjectGetDerivedStorage();
  FigCaptionRendererNodeProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (!ProtocolVTable)
  {
    return 4294954508;
  }

  v3 = *(ProtocolVTable + 16);
  if (!v3)
  {
    return 4294954508;
  }

  v4 = *(v3 + 160);
  if (!v4)
  {
    return 4294954514;
  }

  return v4(v1);
}

uint64_t FigCaptionRendererSRTRegion_FigCaptionRendererNodeProtocol_SetImageCache(uint64_t a1, uint64_t a2)
{
  v3 = *CMBaseObjectGetDerivedStorage();
  FigCaptionRendererNodeProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (!ProtocolVTable)
  {
    return 4294954508;
  }

  v5 = *(ProtocolVTable + 16);
  if (!v5)
  {
    return 4294954508;
  }

  v6 = *(v5 + 168);
  if (!v6)
  {
    return 4294954514;
  }

  return v6(v3, a2);
}

uint64_t FigCaptionRendererSRTRegion_FigCaptionRendererNodeProtocol_GetImageCache(uint64_t a1, uint64_t a2)
{
  v3 = *CMBaseObjectGetDerivedStorage();
  FigCaptionRendererNodeProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (!ProtocolVTable)
  {
    return 4294954508;
  }

  v5 = *(ProtocolVTable + 16);
  if (!v5)
  {
    return 4294954508;
  }

  v6 = *(v5 + 176);
  if (!v6)
  {
    return 4294954514;
  }

  return v6(v3, a2);
}

uint64_t FigCaptionRendererSRTRegion_FigCaptionRendererNodeProtocol_GetImageCacheWidth(uint64_t a1, uint64_t a2)
{
  v3 = *CMBaseObjectGetDerivedStorage();
  FigCaptionRendererNodeProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (!ProtocolVTable)
  {
    return 4294954508;
  }

  v5 = *(ProtocolVTable + 16);
  if (!v5)
  {
    return 4294954508;
  }

  v6 = *(v5 + 184);
  if (!v6)
  {
    return 4294954514;
  }

  return v6(v3, a2);
}

uint64_t FigCaptionRendererSRTRegion_FigCaptionRendererNodeProtocol_GetImageCacheHeight(uint64_t a1, uint64_t a2)
{
  v3 = *CMBaseObjectGetDerivedStorage();
  FigCaptionRendererNodeProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (!ProtocolVTable)
  {
    return 4294954508;
  }

  v5 = *(ProtocolVTable + 16);
  if (!v5)
  {
    return 4294954508;
  }

  v6 = *(v5 + 192);
  if (!v6)
  {
    return 4294954514;
  }

  return v6(v3, a2);
}

uint64_t FigCaptionRendererSRTRegion_FigCaptionRendererNodeProtocol_AllocateImageBuffer(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *CMBaseObjectGetDerivedStorage();
  FigCaptionRendererNodeProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (!ProtocolVTable)
  {
    return 4294954508;
  }

  v9 = *(ProtocolVTable + 16);
  if (!v9)
  {
    return 4294954508;
  }

  v10 = *(v9 + 200);
  if (!v10)
  {
    return 4294954514;
  }

  return v10(v7, a2, a3, a4);
}

uint64_t FigCaptionRendererSRTRegion_FigCaptionRendererNodeProtocol_GetImageBuffer(uint64_t a1, uint64_t a2)
{
  v3 = *CMBaseObjectGetDerivedStorage();
  FigCaptionRendererNodeProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (!ProtocolVTable)
  {
    return 4294954508;
  }

  v5 = *(ProtocolVTable + 16);
  if (!v5)
  {
    return 4294954508;
  }

  v6 = *(v5 + 208);
  if (!v6)
  {
    return 4294954514;
  }

  return v6(v3, a2);
}

uint64_t FigCaptionRendererSRTRegion_FigCaptionRendererNodeProtocol_SetNeedRedraw(uint64_t a1, uint64_t a2)
{
  v3 = *CMBaseObjectGetDerivedStorage();
  FigCaptionRendererNodeProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (!ProtocolVTable)
  {
    return 4294954508;
  }

  v5 = *(ProtocolVTable + 16);
  if (!v5)
  {
    return 4294954508;
  }

  v6 = *(v5 + 216);
  if (!v6)
  {
    return 4294954514;
  }

  return v6(v3, a2);
}

uint64_t FigCaptionRendererSRTRegion_FigCaptionRendererNodeProtocol_GetNeedRedraw(uint64_t a1, uint64_t a2)
{
  v3 = *CMBaseObjectGetDerivedStorage();
  FigCaptionRendererNodeProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (!ProtocolVTable)
  {
    return 4294954508;
  }

  v5 = *(ProtocolVTable + 16);
  if (!v5)
  {
    return 4294954508;
  }

  v6 = *(v5 + 224);
  if (!v6)
  {
    return 4294954514;
  }

  return v6(v3, a2);
}

uint64_t FigCaptionRendererSRTRegion_FigCaptionRendererNodeProtocol_SetNeedLayout(uint64_t a1, uint64_t a2)
{
  v3 = *CMBaseObjectGetDerivedStorage();
  FigCaptionRendererNodeProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (!ProtocolVTable)
  {
    return 4294954508;
  }

  v5 = *(ProtocolVTable + 16);
  if (!v5)
  {
    return 4294954508;
  }

  v6 = *(v5 + 232);
  if (!v6)
  {
    return 4294954514;
  }

  return v6(v3, a2);
}

uint64_t FigCaptionRendererSRTRegion_FigCaptionRendererNodeProtocol_GetNeedLayout(uint64_t a1, uint64_t a2)
{
  v3 = *CMBaseObjectGetDerivedStorage();
  FigCaptionRendererNodeProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (!ProtocolVTable)
  {
    return 4294954508;
  }

  v5 = *(ProtocolVTable + 16);
  if (!v5)
  {
    return 4294954508;
  }

  v6 = *(v5 + 240);
  if (!v6)
  {
    return 4294954514;
  }

  return v6(v3, a2);
}

uint64_t FigCaptionRendererSRTRegion_FigCaptionRendererNodeProtocol_HasActions(uint64_t a1, uint64_t a2)
{
  v3 = *CMBaseObjectGetDerivedStorage();
  FigCaptionRendererNodeProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (!ProtocolVTable)
  {
    return 4294954508;
  }

  v5 = *(ProtocolVTable + 16);
  if (!v5)
  {
    return 4294954508;
  }

  v6 = *(v5 + 248);
  if (!v6)
  {
    return 4294954514;
  }

  return v6(v3, a2);
}

uint64_t FigCaptionRendererSRTRegion_FigCaptionRendererNodeProtocol_SetZOrder(uint64_t a1, double a2)
{
  v3 = *CMBaseObjectGetDerivedStorage();
  FigCaptionRendererNodeProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (!ProtocolVTable)
  {
    return 4294954508;
  }

  v6 = *(ProtocolVTable + 16);
  if (!v6)
  {
    return 4294954508;
  }

  v7 = *(v6 + 256);
  if (!v7)
  {
    return 4294954514;
  }

  v5.n128_f64[0] = a2;

  return v7(v3, v5);
}

uint64_t FigCaptionRendererSRTRegion_FigCaptionRendererNodeProtocol_GetZOrder(uint64_t a1, uint64_t a2)
{
  v3 = *CMBaseObjectGetDerivedStorage();
  FigCaptionRendererNodeProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (!ProtocolVTable)
  {
    return 4294954508;
  }

  v5 = *(ProtocolVTable + 16);
  if (!v5)
  {
    return 4294954508;
  }

  v6 = *(v5 + 264);
  if (!v6)
  {
    return 4294954514;
  }

  return v6(v3, a2);
}

uint64_t FigCaptionRendererSRTRegion_FigCaptionRendererNodeProtocol_ResetNodeTree(uint64_t a1)
{
  v1 = *CMBaseObjectGetDerivedStorage();
  FigCaptionRendererNodeProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (!ProtocolVTable)
  {
    return 4294954508;
  }

  v3 = *(ProtocolVTable + 16);
  if (!v3)
  {
    return 4294954508;
  }

  v4 = *(v3 + 272);
  if (!v4)
  {
    return 4294954514;
  }

  return v4(v1);
}

uint64_t FigCaptionRendererSRTRegion_FigCaptionRendererNodeProtocol_Draw(const void *a1, uint64_t a2)
{
  v4 = *(MEMORY[0x1E695F050] + 16);
  v20.origin = *MEMORY[0x1E695F050];
  v20.size = v4;
  FigCaptionRendererNodeProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (ProtocolVTable)
  {
    v6 = *(ProtocolVTable + 16);
    if (v6)
    {
      v7 = *(v6 + 104);
      if (v7)
      {
        v7(a1, &v20);
      }
    }
  }

  v8 = *(a2 + 296);
  if (v8)
  {
    Value = CFDictionaryGetValue(v8, a1);
    MidX = CGRectGetMidX(v20);
    MidY = CGRectGetMidY(v20);
    FigCaptionRendererOutputNodeProtocolGetProtocolID();
    v12 = CMBaseObjectGetProtocolVTable();
    if (v12)
    {
      v13 = *(v12 + 16);
      if (v13)
      {
        v14 = *(v13 + 72);
        if (v14)
        {
          v14(Value, MidX, MidY);
        }
      }
    }

    size = v20.size;
    FigCaptionRendererOutputNodeProtocolGetProtocolID();
    v16 = CMBaseObjectGetProtocolVTable();
    if (v16)
    {
      v17 = *(v16 + 16);
      if (v17)
      {
        v18 = *(v17 + 88);
        if (v18)
        {
          v18(Value, size.width, size.height);
        }
      }
    }
  }

  return 0;
}

uint64_t FigCaptionRendererSRTRegion_FigCaptionRendererNodeProtocol_Layout(uint64_t a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v82 = 0;
  FigCaptionRendererNodeProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (ProtocolVTable)
  {
    v6 = *(ProtocolVTable + 16);
    if (v6)
    {
      v7 = *(v6 + 16);
      if (v7)
      {
        v7(a1, &v82);
        if (v82)
        {
          v8 = CMBaseObjectGetDerivedStorage();
          v9 = *(v8 + 16);
          v10 = *(v8 + 20) * 0.0533;
          v11 = *(v8 + 40);
          v12 = *(v8 + 24);
          if (*(v8 + 48) / 100.0 + *(v8 + 32) / -100.0 * v10 >= 0.0)
          {
            v13 = *(v8 + 48) / 100.0 + *(v8 + 32) / -100.0 * v10;
          }

          else
          {
            v13 = 0.0;
          }

          v14 = *v8;
          FigCaptionRendererNodeProtocolGetProtocolID();
          v15 = CMBaseObjectGetProtocolVTable();
          if (v15)
          {
            v16 = *(v15 + 16);
            if (v16)
            {
              v17 = *(v16 + 80);
              if (v17)
              {
                LOBYTE(v84) = 1;
                *(&v84 + 1) = 0;
                DWORD1(v84) = 0;
                *(&v84 + 1) = v11 / 100.0 + v12 / -100.0 * (v9 / 100.0);
                LOBYTE(v85.width) = 1;
                *(&v85.width + 1) = 0;
                HIDWORD(v85.width) = 0;
                v85.height = v13;
                LOBYTE(v86) = 1;
                *(&v86 + 1) = 0;
                DWORD1(v86) = 0;
                *(&v86 + 1) = v9 / 100.0;
                LOBYTE(v87) = 1;
                *(&v87 + 1) = 0;
                DWORD1(v87) = 0;
                *(&v87 + 1) = v10;
                v17(v14, &v84);
              }
            }
          }

          v18 = CMBaseObjectGetDerivedStorage();
          v84 = FCRRectNull;
          v85 = *&byte_196E76830;
          v86 = xmmword_196E76840;
          v87 = *&byte_196E76850;
          v77 = *(MEMORY[0x1E695F050] + 16);
          v78 = *MEMORY[0x1E695F050];
          v83.origin = *MEMORY[0x1E695F050];
          v83.size = v77;
          FigCaptionRendererNodeProtocolGetProtocolID();
          v19 = CMBaseObjectGetProtocolVTable();
          if (v19)
          {
            v20 = *(v19 + 16);
            if (v20)
            {
              v21 = *(v20 + 88);
              if (v21)
              {
                v21(a1, &v84);
              }
            }
          }

          FigCaptionRendererNodeProtocolGetProtocolID();
          v22 = CMBaseObjectGetProtocolVTable();
          if (v22)
          {
            v23 = *(v22 + 16);
            if (v23)
            {
              v24 = *(v23 + 72);
              if (v24)
              {
                v24(a1, &v83);
              }
            }
          }

          v25 = *(&v86 + 1);
          if (*(&v86 + 1) != -1.0)
          {
            v61 = v83.origin.x + *(&v84 + 1);
            if (v84)
            {
              v61 = v83.origin.x + *(&v84 + 1) * v83.size.width;
            }

            v62 = v83.origin.y + v85.height;
            if (LOBYTE(v85.width))
            {
              v62 = v83.origin.y + v85.height * v83.size.height;
            }

            if (v86)
            {
              v25 = *(&v86 + 1) * v83.size.width;
            }

            v63 = *(&v87 + 1);
            if (v87)
            {
              v63 = v83.size.height * *(&v87 + 1);
            }

            v88 = CGRectIntegral(*(&v25 - 2));
            x = v88.origin.x;
            y = v88.origin.y;
            width = v88.size.width;
            height = v88.size.height;
            v68 = *v18;
            FigCaptionRendererNodeProtocolGetProtocolID();
            v69 = CMBaseObjectGetProtocolVTable();
            if (v69)
            {
              v70 = *(v69 + 16);
              if (v70)
              {
                v71 = *(v70 + 96);
                if (v71)
                {
                  v71(v68, x, y, width, height);
                }
              }
            }
          }

          theArray = 0;
          FigCaptionRendererNodeProtocolGetProtocolID();
          v26 = CMBaseObjectGetProtocolVTable();
          if (v26)
          {
            v27 = *(v26 + 16);
            if (v27)
            {
              v28 = *(v27 + 24);
              if (v28)
              {
                v28(a1, &theArray);
              }
            }
          }

          Count = CFArrayGetCount(theArray);
          if (Count >= 1)
          {
            v30 = *MEMORY[0x1E695EFF8];
            v31 = *(MEMORY[0x1E695EFF8] + 8);
            v32 = Count + 1;
            while (1)
            {
              ValueAtIndex = CFArrayGetValueAtIndex(theArray, v32 - 2);
              __s1 = 0;
              FigCaptionRendererBaseProtocolGetProtocolID();
              v34 = CMBaseObjectGetProtocolVTable();
              if (!v34 || (v35 = *(v34 + 16)) == 0 || (v36 = *(v35 + 8)) == 0 || v36(ValueAtIndex, &__s1))
              {
                FigCaptionRendererSRTRegion_FigCaptionRendererNodeProtocol_Layout_cold_4();
                goto LABEL_88;
              }

              if (__s1 && !strcmp(__s1, "FigCaptionRendererCaption"))
              {
                v79 = 0;
                FigCaptionRendererCaptionProtocolGetProtocolID();
                v37 = CMBaseObjectGetProtocolVTable();
                if (!v37 || (v38 = *(v37 + 16)) == 0 || (v39 = *(v38 + 48)) == 0 || v39(ValueAtIndex, &v79))
                {
                  FigCaptionRendererSRTRegion_FigCaptionRendererNodeProtocol_Layout_cold_3();
                  goto LABEL_88;
                }

                if (v79 == 3)
                {
                  break;
                }
              }

LABEL_73:
              if (--v32 <= 1)
              {
                goto LABEL_88;
              }
            }

            v84 = v78;
            v85 = v77;
            FigCaptionRendererNodeProtocolGetProtocolID();
            v40 = CMBaseObjectGetProtocolVTable();
            if (!v40 || (v41 = *(v40 + 16)) == 0 || (v42 = *(v41 + 104)) == 0 || v42(ValueAtIndex, &v84))
            {
              FigCaptionRendererSRTRegion_FigCaptionRendererNodeProtocol_Layout_cold_2();
              goto LABEL_88;
            }

            v83.origin = v78;
            v83.size = v77;
            FigCaptionRendererNodeProtocolGetProtocolID();
            v43 = CMBaseObjectGetProtocolVTable();
            if (!v43 || (v44 = *(v43 + 16)) == 0 || (v45 = *(v44 + 72)) == 0 || v45(ValueAtIndex, &v83))
            {
              FigCaptionRendererSRTRegion_FigCaptionRendererNodeProtocol_Layout_cold_1();
              goto LABEL_88;
            }

            v46 = *(DerivedStorage + 56);
            if (v46)
            {
              MinX = v30;
              MinY = v31;
              if (v46 != 2)
              {
LABEL_65:
                FigCaptionRendererNodeProtocolGetProtocolID();
                v55 = CMBaseObjectGetProtocolVTable();
                if (v55)
                {
                  v56 = *(v55 + 16);
                  if (v56)
                  {
                    v57 = *(v56 + 128);
                    if (v57)
                    {
                      v57(ValueAtIndex, MinX, MinY);
                    }
                  }
                }

                FigCaptionRendererNodeProtocolGetProtocolID();
                v58 = CMBaseObjectGetProtocolVTable();
                if (v58)
                {
                  v59 = *(v58 + 16);
                  if (v59)
                  {
                    v60 = *(v59 + 232);
                    if (v60)
                    {
                      v60(ValueAtIndex, 1);
                    }
                  }
                }

                goto LABEL_73;
              }

              v49 = *(DerivedStorage + 64);
              v50 = v83;
              if (v49 == 1)
              {
                MinX = CGRectGetMinX(v50);
              }

              else if (v49 == 3)
              {
                MinX = CGRectGetMaxX(v50) - v85.width;
              }

              else
              {
                MinX = CGRectGetMidX(v50) + v85.width * -0.5;
              }

              v53 = *(DerivedStorage + 60);
            }

            else
            {
              v51 = *(DerivedStorage + 60);
              v52 = v83;
              if (v51 == 1)
              {
                MinX = CGRectGetMinX(v52);
              }

              else if (v51 == 3)
              {
                MinX = CGRectGetMaxX(v52) - v85.width;
              }

              else
              {
                MinX = CGRectGetMidX(v52) + v85.width * -0.5;
              }

              v53 = *(DerivedStorage + 64);
            }

            v54 = v83;
            if (v53 == 1)
            {
              MinY = CGRectGetMaxY(v54) - v85.height;
            }

            else if (v53 == 3)
            {
              MinY = CGRectGetMinY(v54);
            }

            else
            {
              MinY = CGRectGetMidY(v54) + v85.height * -0.5;
            }

            goto LABEL_65;
          }
        }
      }
    }
  }

LABEL_88:
  v72 = *DerivedStorage;
  FigCaptionRendererNodeProtocolGetProtocolID();
  v73 = CMBaseObjectGetProtocolVTable();
  if (!v73)
  {
    return 4294954508;
  }

  v74 = *(v73 + 16);
  if (!v74)
  {
    return 4294954508;
  }

  v75 = *(v74 + 288);
  if (v75)
  {
    return v75(v72, a2);
  }

  else
  {
    return 4294954514;
  }
}

uint64_t FigCaptionRendererSRTRegion_FigCaptionRendererNodeProtocol_ExecActions(uint64_t a1, uint64_t a2)
{
  v3 = *CMBaseObjectGetDerivedStorage();
  FigCaptionRendererNodeProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (!ProtocolVTable)
  {
    return 4294954508;
  }

  v5 = *(ProtocolVTable + 16);
  if (!v5)
  {
    return 4294954508;
  }

  v6 = *(v5 + 296);
  if (!v6)
  {
    return 4294954514;
  }

  return v6(v3, a2);
}

uint64_t FigCaptionRendererSRTRegion_FigCaptionRendererNodeProtocol_Compose(uint64_t a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v25 = 0;
  FigCaptionRendererNodeProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (ProtocolVTable)
  {
    v6 = *(ProtocolVTable + 16);
    if (v6)
    {
      v7 = *(v6 + 248);
      if (v7)
      {
        v7(a1, &v25 + 1);
        if (HIBYTE(v25))
        {
          FigCaptionRendererNodeProtocolGetProtocolID();
          v8 = CMBaseObjectGetProtocolVTable();
          if (v8)
          {
            v9 = *(v8 + 16);
            if (v9)
            {
              v10 = *(v9 + 296);
              if (v10)
              {
                v10(a1, a2);
              }
            }
          }
        }
      }
    }
  }

  FigCaptionRendererNodeProtocolGetProtocolID();
  v11 = CMBaseObjectGetProtocolVTable();
  if (v11)
  {
    v12 = *(v11 + 16);
    if (v12)
    {
      v13 = *(v12 + 240);
      if (v13)
      {
        v13(a1, &v25);
        if (v25)
        {
          FigCaptionRendererNodeProtocolGetProtocolID();
          v14 = CMBaseObjectGetProtocolVTable();
          if (v14)
          {
            v15 = *(v14 + 16);
            if (v15)
            {
              v16 = *(v15 + 288);
              if (v16)
              {
                v16(a1, a2);
              }
            }
          }
        }
      }
    }
  }

  FigCaptionRendererNodeProtocolGetProtocolID();
  v17 = CMBaseObjectGetProtocolVTable();
  if (v17)
  {
    v18 = *(v17 + 16);
    if (v18)
    {
      v19 = *(v18 + 280);
      if (v19)
      {
        v19(a1, a2);
      }
    }
  }

  v20 = *DerivedStorage;
  FigCaptionRendererNodeProtocolGetProtocolID();
  v21 = CMBaseObjectGetProtocolVTable();
  if (!v21)
  {
    return 4294954508;
  }

  v22 = *(v21 + 16);
  if (!v22)
  {
    return 4294954508;
  }

  v23 = *(v22 + 304);
  if (v23)
  {
    return v23(v20, a2);
  }

  else
  {
    return 4294954514;
  }
}

uint64_t FigCaptionRendererSRTRegion_FigCaptionRendererNodeProtocol_OnChildUpdateDisplayRequest(uint64_t a1, __int128 *a2)
{
  v3 = *CMBaseObjectGetDerivedStorage();
  v8 = *a2;
  v9 = a2[1];
  v10 = *(a2 + 4);
  FigCaptionRendererNodeProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (!ProtocolVTable)
  {
    return 4294954508;
  }

  v5 = *(ProtocolVTable + 16);
  if (!v5)
  {
    return 4294954508;
  }

  v6 = *(v5 + 312);
  if (!v6)
  {
    return 4294954514;
  }

  v11[0] = v8;
  v11[1] = v9;
  v12 = v10;
  return v6(v3, v11);
}

uint64_t FigCaptionRendererSRTRegion_FigCaptionRendererNodeProtocol_AddAction(uint64_t a1, uint64_t a2)
{
  v3 = *CMBaseObjectGetDerivedStorage();
  FigCaptionRendererNodeProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (!ProtocolVTable)
  {
    return 4294954508;
  }

  v5 = *(ProtocolVTable + 16);
  if (!v5)
  {
    return 4294954508;
  }

  v6 = *(v5 + 320);
  if (!v6)
  {
    return 4294954514;
  }

  return v6(v3, a2);
}

uint64_t FigCaptionRendererSRTRegion_FigCaptionRendererNodeProtocol_RemoveAllActions(uint64_t a1)
{
  v1 = *CMBaseObjectGetDerivedStorage();
  FigCaptionRendererNodeProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (!ProtocolVTable)
  {
    return 4294954508;
  }

  v3 = *(ProtocolVTable + 16);
  if (!v3)
  {
    return 4294954508;
  }

  v4 = *(v3 + 328);
  if (!v4)
  {
    return 4294954514;
  }

  return v4(v1);
}

uint64_t FigCaptionRendererSRTRegion_FigCaptionRendererNodeProtocol_SetActions(uint64_t a1, uint64_t a2)
{
  v3 = *CMBaseObjectGetDerivedStorage();
  FigCaptionRendererNodeProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (!ProtocolVTable)
  {
    return 4294954508;
  }

  v5 = *(ProtocolVTable + 16);
  if (!v5)
  {
    return 4294954508;
  }

  v6 = *(v5 + 336);
  if (!v6)
  {
    return 4294954514;
  }

  return v6(v3, a2);
}

uint64_t FigCaptionRendererSRTRegion_FigCaptionRendererNodeProtocol_GetActions(uint64_t a1, uint64_t a2)
{
  v3 = *CMBaseObjectGetDerivedStorage();
  FigCaptionRendererNodeProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (!ProtocolVTable)
  {
    return 4294954508;
  }

  v5 = *(ProtocolVTable + 16);
  if (!v5)
  {
    return 4294954508;
  }

  v6 = *(v5 + 344);
  if (!v6)
  {
    return 4294954514;
  }

  return v6(v3, a2);
}

uint64_t FigCaptionRendererSRTRegion_FigCaptionRendererNodeProtocol_SelectAt(uint64_t a1, uint64_t a2, double a3, double a4)
{
  v7 = *CMBaseObjectGetDerivedStorage();
  FigCaptionRendererNodeProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (!ProtocolVTable)
  {
    return 4294954508;
  }

  v11 = *(ProtocolVTable + 16);
  if (!v11)
  {
    return 4294954508;
  }

  v12 = *(v11 + 352);
  if (!v12)
  {
    return 4294954514;
  }

  v9.n128_f64[0] = a3;
  v10.n128_f64[0] = a4;

  return v12(v7, a2, v9, v10);
}

uint64_t FigCaptionRendererSRTRegion_FigCaptionRendererNodeProtocol_UnselectAt(uint64_t a1, uint64_t a2, double a3, double a4)
{
  v7 = *CMBaseObjectGetDerivedStorage();
  FigCaptionRendererNodeProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (!ProtocolVTable)
  {
    return 4294954508;
  }

  v11 = *(ProtocolVTable + 16);
  if (!v11)
  {
    return 4294954508;
  }

  v12 = *(v11 + 360);
  if (!v12)
  {
    return 4294954514;
  }

  v9.n128_f64[0] = a3;
  v10.n128_f64[0] = a4;

  return v12(v7, a2, v9, v10);
}

uint64_t FigCaptionRendererSRTRegion_FigCaptionRendererNodeProtocol_IsSelected(uint64_t a1, uint64_t a2)
{
  v3 = *CMBaseObjectGetDerivedStorage();
  FigCaptionRendererNodeProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (!ProtocolVTable)
  {
    return 4294954508;
  }

  v5 = *(ProtocolVTable + 16);
  if (!v5)
  {
    return 4294954508;
  }

  v6 = *(v5 + 368);
  if (!v6)
  {
    return 4294954514;
  }

  return v6(v3, a2);
}

uint64_t FigCaptionRendererSRTRegion_FigCaptionRendererNodeProtocol_BeginScene(uint64_t a1, uint64_t a2)
{
  v3 = *CMBaseObjectGetDerivedStorage();
  FigCaptionRendererNodeProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (!ProtocolVTable)
  {
    return 4294954508;
  }

  v5 = *(ProtocolVTable + 16);
  if (!v5)
  {
    return 4294954508;
  }

  v6 = *(v5 + 376);
  if (!v6)
  {
    return 4294954514;
  }

  return v6(v3, a2);
}

uint64_t FigCaptionRendererSRTRegion_FigCaptionRendererNodeProtocol_EndScene(uint64_t a1, uint64_t a2)
{
  v3 = *CMBaseObjectGetDerivedStorage();
  FigCaptionRendererNodeProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (!ProtocolVTable)
  {
    return 4294954508;
  }

  v5 = *(ProtocolVTable + 16);
  if (!v5)
  {
    return 4294954508;
  }

  v6 = *(v5 + 384);
  if (!v6)
  {
    return 4294954514;
  }

  return v6(v3, a2);
}

__CFString *FigCaptionRendererSRTRegion_FigCaptionRendererRegionProtocol_CopyDebugDescription(uint64_t a1)
{
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  CFStringAppendFormat(Mutable, 0, @"\tFigCaptionRendererSRTRegion <FigCaptionRendererRegionProtocol> on <%p>", a1);
  return Mutable;
}

uint64_t FigCaptionRendererSRTRegion_FigCaptionRendererRegionProtocol_SetRegionID(uint64_t a1, const void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v4 = *(DerivedStorage + 8);
  *(DerivedStorage + 8) = a2;
  if (a2)
  {
    CFRetain(a2);
  }

  if (v4)
  {
    CFRelease(v4);
  }

  return 0;
}

uint64_t FigCaptionRendererSRTRegion_FigCaptionRendererRegionProtocol_SetRegionAnchor(uint64_t a1, double a2, double a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  *(DerivedStorage + 24) = a2;
  *(DerivedStorage + 32) = a3;
  return 0;
}

uint64_t FigCaptionRendererSRTRegion_FigCaptionRendererRegionProtocol_SetViewportAnchor(uint64_t a1, double a2, double a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  *(DerivedStorage + 40) = a2;
  *(DerivedStorage + 48) = a3;
  return 0;
}

uint64_t RegisterFigCaptionRendererSRTRegionBaseType()
{
  CMBaseGetClassID();

  return FigBaseClassRegisterClass();
}

uint64_t FigMetricItemRateChangeEventCreateInternal(const __CFAllocator *a1, __int128 *a2, const void *a3, const void *a4, const void *a5, CFTypeRef *a6, double a7, double a8)
{
  ensureMetricEventTrace();
  if (!a6)
  {
    FigMetricItemRateChangeEventCreateInternal_cold_1(v29);
    return v29[0];
  }

  FigMetricEventGetClassID();
  v16 = CMDerivedObjectCreate();
  v17 = 0;
  if (!v16)
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    v19 = FigSimpleMutexCreate();
    *(DerivedStorage + 88) = v19;
    if (v19)
    {
      *DerivedStorage = 1;
      *(DerivedStorage + 8) = 10;
      if (a3)
      {
        v20 = CFRetain(a3);
      }

      else
      {
        Current = CFAbsoluteTimeGetCurrent();
        v20 = CFDateCreate(a1, Current);
      }

      *(DerivedStorage + 16) = v20;
      v22 = *a2;
      *(DerivedStorage + 48) = *(a2 + 2);
      *(DerivedStorage + 32) = v22;
      if (a4)
      {
        v23 = CFRetain(a4);
      }

      else
      {
        v23 = 0;
      }

      *(DerivedStorage + 24) = v23;
      if (a5)
      {
        v24 = CFRetain(a5);
      }

      else
      {
        v24 = 0;
      }

      v16 = 0;
      *(DerivedStorage + 56) = v24;
      *(DerivedStorage + 64) = a7;
      *(DerivedStorage + 72) = a8;
      *a6 = 0;
      return v16;
    }

    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", 0, v28, v29[1]);
    v16 = v26;
    v17 = cf;
  }

  if (v17)
  {
    CFRelease(v17);
  }

  return v16;
}

uint64_t FigMetricItemStallEventCreateInternal(const __CFAllocator *a1, __int128 *a2, const void *a3, const void *a4, const void *a5, CFTypeRef *a6, double a7, double a8)
{
  ensureMetricEventTrace();
  if (!a6)
  {
    FigMetricItemStallEventCreateInternal_cold_1(v29);
    return v29[0];
  }

  FigMetricEventGetClassID();
  v16 = CMDerivedObjectCreate();
  v17 = 0;
  if (!v16)
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    v19 = FigSimpleMutexCreate();
    *(DerivedStorage + 88) = v19;
    if (v19)
    {
      *DerivedStorage = 1;
      *(DerivedStorage + 8) = 9;
      if (a3)
      {
        v20 = CFRetain(a3);
      }

      else
      {
        Current = CFAbsoluteTimeGetCurrent();
        v20 = CFDateCreate(a1, Current);
      }

      *(DerivedStorage + 16) = v20;
      v22 = *a2;
      *(DerivedStorage + 48) = *(a2 + 2);
      *(DerivedStorage + 32) = v22;
      if (a4)
      {
        v23 = CFRetain(a4);
      }

      else
      {
        v23 = 0;
      }

      *(DerivedStorage + 24) = v23;
      if (a5)
      {
        v24 = CFRetain(a5);
      }

      else
      {
        v24 = 0;
      }

      v16 = 0;
      *(DerivedStorage + 56) = v24;
      *(DerivedStorage + 64) = a7;
      *(DerivedStorage + 72) = a8;
      *a6 = 0;
      return v16;
    }

    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", 0, v28, v29[1]);
    v16 = v26;
    v17 = cf;
  }

  if (v17)
  {
    CFRelease(v17);
  }

  return v16;
}

uint64_t FigMetricItemSeekEventCreateInternal(const __CFAllocator *a1, __int128 *a2, const void *a3, const void *a4, const void *a5, CFTypeRef *a6, double a7, double a8)
{
  ensureMetricEventTrace();
  if (!a6)
  {
    FigMetricItemSeekEventCreateInternal_cold_1(v29);
    return v29[0];
  }

  FigMetricEventGetClassID();
  v16 = CMDerivedObjectCreate();
  v17 = 0;
  if (!v16)
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    v19 = FigSimpleMutexCreate();
    *(DerivedStorage + 88) = v19;
    if (v19)
    {
      *DerivedStorage = 1;
      *(DerivedStorage + 8) = 11;
      if (a3)
      {
        v20 = CFRetain(a3);
      }

      else
      {
        Current = CFAbsoluteTimeGetCurrent();
        v20 = CFDateCreate(a1, Current);
      }

      *(DerivedStorage + 16) = v20;
      v22 = *a2;
      *(DerivedStorage + 48) = *(a2 + 2);
      *(DerivedStorage + 32) = v22;
      if (a4)
      {
        v23 = CFRetain(a4);
      }

      else
      {
        v23 = 0;
      }

      *(DerivedStorage + 24) = v23;
      if (a5)
      {
        v24 = CFRetain(a5);
      }

      else
      {
        v24 = 0;
      }

      v16 = 0;
      *(DerivedStorage + 56) = v24;
      *(DerivedStorage + 64) = a7;
      *(DerivedStorage + 72) = a8;
      *a6 = 0;
      return v16;
    }

    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", 0, v28, v29[1]);
    v16 = v26;
    v17 = cf;
  }

  if (v17)
  {
    CFRelease(v17);
  }

  return v16;
}

uint64_t FigMetricItemSeekDidCompleteEventCreateInternal(const __CFAllocator *a1, __int128 *a2, const void *a3, const void *a4, const void *a5, char a6, CFTypeRef *a7, double a8, double a9)
{
  ensureMetricEventTrace();
  if (!a7)
  {
    FigMetricItemSeekDidCompleteEventCreateInternal_cold_1(v31);
    return v31[0];
  }

  FigMetricEventGetClassID();
  v18 = CMDerivedObjectCreate();
  v19 = 0;
  if (!v18)
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    v21 = FigSimpleMutexCreate();
    *(DerivedStorage + 88) = v21;
    if (v21)
    {
      *DerivedStorage = 1;
      *(DerivedStorage + 8) = 12;
      if (a3)
      {
        v22 = CFRetain(a3);
      }

      else
      {
        Current = CFAbsoluteTimeGetCurrent();
        v22 = CFDateCreate(a1, Current);
      }

      *(DerivedStorage + 16) = v22;
      v24 = *a2;
      *(DerivedStorage + 48) = *(a2 + 2);
      *(DerivedStorage + 32) = v24;
      if (a4)
      {
        v25 = CFRetain(a4);
      }

      else
      {
        v25 = 0;
      }

      *(DerivedStorage + 24) = v25;
      if (a5)
      {
        v26 = CFRetain(a5);
      }

      else
      {
        v26 = 0;
      }

      v18 = 0;
      *(DerivedStorage + 56) = v26;
      *(DerivedStorage + 80) = a6;
      *(DerivedStorage + 64) = a8;
      *(DerivedStorage + 72) = a9;
      *a7 = 0;
      return v18;
    }

    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", 0, v30, v31[1]);
    v18 = v28;
    v19 = cf;
  }

  if (v19)
  {
    CFRelease(v19);
  }

  return v18;
}

uint64_t meirc_finalize(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v2 = DerivedStorage[7];
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = DerivedStorage[2];
  if (v3)
  {
    CFRelease(v3);
  }

  v4 = DerivedStorage[3];
  if (v4)
  {
    CFRelease(v4);
  }

  return FigSimpleMutexDestroy();
}

uint64_t meirc_setImmutable(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  *DerivedStorage = 0;

  return FigSimpleMutexUnlock();
}

uint64_t meirc_isMutable(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  v2 = *DerivedStorage;
  FigSimpleMutexUnlock();
  return v2;
}

CFTypeRef meirc_copySessionID(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  v2 = *(DerivedStorage + 24);
  if (v2)
  {
    v3 = CFRetain(v2);
  }

  else
  {
    v3 = 0;
  }

  FigSimpleMutexUnlock();
  return v3;
}

uint64_t meirc_setSessionID(uint64_t a1, const void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  if (*DerivedStorage)
  {
    v4 = *(DerivedStorage + 24);
    *(DerivedStorage + 24) = a2;
    if (a2)
    {
      CFRetain(a2);
    }

    if (v4)
    {
      CFRelease(v4);
    }

    v5 = 0;
  }

  else
  {
    meirc_setSessionID_cold_1(&v7);
    v5 = v7;
  }

  FigSimpleMutexUnlock();
  return v5;
}

uint64_t meirc_getMediaTime@<X0>(uint64_t a2@<X8>)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  *a2 = *(DerivedStorage + 32);
  *(a2 + 16) = *(DerivedStorage + 48);

  return FigSimpleMutexUnlock();
}

uint64_t meirc_setMediaTime(uint64_t a1, __int128 *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  if (*DerivedStorage)
  {
    v4 = 0;
    v5 = *a2;
    *(DerivedStorage + 48) = *(a2 + 2);
    *(DerivedStorage + 32) = v5;
  }

  else
  {
    meirc_setMediaTime_cold_1(&v7);
    v4 = v7;
  }

  FigSimpleMutexUnlock();
  return v4;
}

void FigRemakerCreateQueuedBaseWithURLs(const __CFAllocator *a1, uint64_t a2, unint64_t a3, const __CFURL *a4, uint64_t a5, const __CFDictionary *a6, const __CFDictionary *a7, CFTypeRef *a8)
{
  FigKTraceInit();
  v17 = FigOSTransactionCreate();
  if (!v17)
  {
    FigRemakerCreateQueuedBaseWithURLs_cold_2(&v36);
    return;
  }

  v18 = v17;
  v35 = a1;
  v19 = a5;
  v20 = a6;
  v21 = a8;
  if (a7)
  {
    v22 = *MEMORY[0x1E695E4D0];
    v23 = v22 == CFDictionaryGetValue(a7, @"Remaker_PermitNonLocalSourceURLs");
  }

  else
  {
    v23 = 0;
  }

  if (!(a2 | a3))
  {
    emitter = fig_log_get_emitter();
    v26 = v8;
    v27 = 4294954516;
    v28 = 596;
LABEL_22:

    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, v27, "<<<< RemakerQueue >>>>", v28, v26);
    return;
  }

  if (a2)
  {
    v24 = FigCFURLIsLocalResource() || v23;
    if ((v24 & 1) == 0)
    {
      emitter = fig_log_get_emitter();
      v26 = v8;
      v27 = 4294955187;
      v28 = 598;
      goto LABEL_22;
    }
  }

  if (!a4)
  {
    emitter = fig_log_get_emitter();
    v26 = v8;
    v27 = 4294954516;
    v28 = 600;
    goto LABEL_22;
  }

  if (!remakerFamily_CFURLSchemeIsFile(a4))
  {
    emitter = fig_log_get_emitter();
    v26 = v8;
    v27 = 4294954516;
    v28 = 602;
    goto LABEL_22;
  }

  if (!v21)
  {
    emitter = fig_log_get_emitter();
    v26 = v8;
    v27 = 4294954516;
    v28 = 604;
    goto LABEL_22;
  }

  FigRemakerGetClassID();
  if (CMDerivedObjectCreate())
  {
LABEL_15:
    os_release(v18);
    return;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  *(DerivedStorage + 32) = 12301;
  v30 = FigReentrantMutexCreate();
  *(DerivedStorage + 8) = v30;
  if (!v30)
  {
    FigRemakerCreateQueuedBaseWithURLs_cold_1(&v36);
    goto LABEL_15;
  }

  *(DerivedStorage + 40) = v18;
  v31 = CFGetAllocator(0);
  Mutable = CFArrayCreateMutable(v31, 0, MEMORY[0x1E695E9C0]);
  *(DerivedStorage + 24) = Mutable;
  if (Mutable)
  {
    v33 = CFGetAllocator(0);
    v34 = CFDictionaryCreateMutable(v33, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    *(DerivedStorage + 56) = v34;
    if (v34)
    {
      if (!FigRemakerCreateBaseWithURLs(v35, a2, a3, a4, v19, v20, a7, (DerivedStorage + 16)))
      {
        CMNotificationCenterGetDefaultLocalCenter();
        if (!CMNotificationCenterAddListener())
        {
          *v21 = 0;
        }
      }
    }
  }
}

uint64_t queuedRemaker_reflectSubRemakerNotification(int a1, const void *a2, CFTypeRef cf1, uint64_t a4, uint64_t a5)
{
  if (CFEqual(cf1, @"Remaker_Completed") || CFEqual(cf1, @"Remaker_Failed"))
  {
    remakerQueue_removeRemakerFromQueue(a2);
  }

  CMNotificationCenterGetDefaultLocalCenter();

  return CMNotificationCenterPostNotification();
}

double FigRemakerCreateQueuedWithURLs(const __CFAllocator *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, unsigned int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, const __CFURL *a16, const __CFDictionary *a17, const __CFDictionary *a18, _DWORD *a19, _DWORD *a20, void *a21)
{
  v44 = a5;
  v45 = a6;
  v51 = 0;
  v52 = 0;
  FigKTraceInit();
  if (a2)
  {
    if (FigCFURLIsLocalResource())
    {
      if (a16)
      {
        if (remakerFamily_CFURLSchemeIsFile(a16))
        {
          if (a21)
          {
            if (a19)
            {
              *a19 = 0;
            }

            if (a20)
            {
              *a20 = 0;
            }

            FigRemakerCreateQueuedBaseWithURLs(a1, a2, 0, a16, a15, a17, a18, &v52);
            if (!v26)
            {
              v27 = v52;
              v28 = *(*(CMBaseObjectGetVTable() + 16) + 72);
              if (v28)
              {
                if (!v28(v27, &v51))
                {
                  v29 = v52;
                  v30 = *(*(CMBaseObjectGetVTable() + 16) + 80);
                  if (v30)
                  {
                    if (!v30(v29, &v51 + 4))
                    {
                      if ((*(a14 + 12) & 1) == 0 || (*(a14 + 36) & 1) == 0 || *(a14 + 40) || (*(a14 + 24) & 0x8000000000000000) != 0 || (v31 = v52, v32 = *(a14 + 16), *&range.start.value = *a14, *&range.start.epoch = v32, *&range.duration.timescale = *(a14 + 32), CMTimeRangeGetEnd(&v50, &range), *&range.start.value = *a14, range.start.epoch = *(a14 + 16), !FigRemakerSetTimeRange(v31, &range.start.value, &v50.value)))
                      {
                        v34 = v51;
                        v33 = HIDWORD(v51);
                        if (v51)
                        {
                          if (!v51)
                          {
LABEL_25:
                            if (!v33)
                            {
LABEL_49:
                              *a21 = v52;
                              return result;
                            }

                            LODWORD(v50.value) = 0;
                            if (a8)
                            {
                              if (a8 == 1851876449)
                              {
                                v37 = a20;
                                if (!a20)
                                {
                                  goto LABEL_49;
                                }

                                goto LABEL_48;
                              }

                              *&range.start.value = *a13;
                              range.start.epoch = *(a13 + 16);
                              v42 = FigRemakerAddVideoTrack(v52, v33, v44, v45, a7, a8, a9, a10, a11, a12, &range.start.value, &v50);
                            }

                            else
                            {
                              v42 = FigRemakerAddPassthroughTrack(v52, v33, &v50);
                            }

                            if (v42)
                            {
                              v43 = 6;
                            }

                            else
                            {
                              v43 = 0;
                            }

                            v37 = a20;
                            if (a20 && !v42)
                            {
LABEL_48:
                              *v37 = v50.value;
                              goto LABEL_49;
                            }

                            if (v43 != 6)
                            {
                              goto LABEL_49;
                            }

                            goto LABEL_34;
                          }

                          v35 = v52;
                          v36 = *(*(CMBaseObjectGetVTable() + 16) + 88);
                          if (v36 && !v36(v35, v34, a3, a4, a19))
                          {
                            v33 = HIDWORD(v51);
                            goto LABEL_25;
                          }
                        }

                        else
                        {
                          FigRemakerCreateQueuedWithURLs_cold_1(&range);
                        }
                      }
                    }
                  }
                }
              }
            }

LABEL_34:
            if (v52)
            {
              CFRelease(v52);
            }

            return result;
          }

          emitter = fig_log_get_emitter();
          v39 = v21;
          v40 = 4294954516;
          v41 = 1258;
        }

        else
        {
          emitter = fig_log_get_emitter();
          v39 = v21;
          v40 = 4294954516;
          v41 = 1256;
        }
      }

      else
      {
        emitter = fig_log_get_emitter();
        v39 = v21;
        v40 = 4294954516;
        v41 = 1254;
      }
    }

    else
    {
      emitter = fig_log_get_emitter();
      v39 = v21;
      v40 = 4294955187;
      v41 = 1252;
    }
  }

  else
  {
    emitter = fig_log_get_emitter();
    v39 = v21;
    v40 = 4294954516;
    v41 = 1250;
  }

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, v40, "<<<< RemakerQueue >>>>", v41, v39);
}

uint64_t FigRemakerSetTimeRange(uint64_t a1, __int128 *a2, __int128 *a3)
{
  v6 = *(*(CMBaseObjectGetVTable() + 16) + 48);
  if (!v6)
  {
    return 4294954514;
  }

  v10 = *a2;
  v11 = *(a2 + 2);
  v8 = *a3;
  v9 = *(a3 + 2);
  return v6(a1, &v10, &v8);
}

uint64_t FigRemakerAddVideoTrack(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, __int128 *a11, uint64_t a12)
{
  v20 = *(*(CMBaseObjectGetVTable() + 16) + 16);
  if (!v20)
  {
    return 4294954514;
  }

  v22 = *a11;
  v23 = *(a11 + 2);
  return v20(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, &v22, a12);
}

uint64_t FigRemakerAddPassthroughTrack(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(*(CMBaseObjectGetVTable() + 16) + 24);
  if (!v6)
  {
    return 4294954514;
  }

  return v6(a1, a2, a3);
}

void remakerQueue_removeRemakerFromQueue(const void *a1)
{
  MEMORY[0x19A8D3660](&sCreateRemakerQueueMutexOnce, remakerQueue_createMutexAndArray);
  FigSimpleMutexLock();
  if (sActiveRemaker == a1)
  {
    sActiveRemaker = 0;
  }

  v2 = sRemakerWaitingQueue;
  v6.length = CFArrayGetCount(sRemakerWaitingQueue);
  v6.location = 0;
  FirstIndexOfValue = CFArrayGetFirstIndexOfValue(v2, v6, a1);
  if (FirstIndexOfValue != -1)
  {
    CFArrayRemoveValueAtIndex(sRemakerWaitingQueue, FirstIndexOfValue);
  }

  FigSimpleMutexUnlock();
  MEMORY[0x19A8D3660](&sCreateRemakerQueueMutexOnce, remakerQueue_createMutexAndArray);
  v4 = sRemakerStartQueue;

  dispatch_async(v4, &__block_literal_global_65);
}

uint64_t remakerQueue_createMutexAndArray(uint64_t a1)
{
  sRemakerQueueMutex = FigSimpleMutexCreate();
  sRemakerWaitingQueue = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, 0);
  result = FigDispatchQueueCreateWithPriority();
  sRemakerStartQueue = result;
  return result;
}

void __remakerQueue_ensureWeHaveAnActiveRemaker_soon_block_invoke()
{
  FigSimpleMutexLock();
  if (sActiveRemaker || CFArrayGetCount(sRemakerWaitingQueue) < 1)
  {
LABEL_2:

    FigSimpleMutexUnlock();
    return;
  }

  ValueAtIndex = CFArrayGetValueAtIndex(sRemakerWaitingQueue, 0);
  if (!ValueAtIndex)
  {
    sActiveRemaker = 0;
    CFArrayRemoveValueAtIndex(sRemakerWaitingQueue, 0);
    goto LABEL_2;
  }

  v1 = ValueAtIndex;
  CFRetain(ValueAtIndex);
  sActiveRemaker = v1;
  CFArrayRemoveValueAtIndex(sRemakerWaitingQueue, 0);
  FigSimpleMutexUnlock();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v71 = 0;
  v3 = *(DerivedStorage + 8);
  if (v3)
  {
    FigSimpleMutexLock();
  }

  v68 = v3;
  *(DerivedStorage + 49) = 1;
  Count = CFArrayGetCount(*(DerivedStorage + 24));
  if (Count >= 1)
  {
    v5 = Count;
    v6 = 0;
    v69 = *MEMORY[0x1E695E480];
    v7 = 1;
    while (1)
    {
      v71 = 0;
      v8 = CFArrayGetValueAtIndex(*(DerivedStorage + 24), v6);
      Value = CFDictionaryGetValue(v8, @"Common_TrackType");
      if (CFEqual(Value, @"TrackType_AudioMixdownTrackWithPreset"))
      {
        v10 = *(DerivedStorage + 16);
        value_low = CFDictionaryGetValue(v8, @"Audio_SourceAudioTrackArray");
        v12 = CFDictionaryGetValue(v8, @"Audio_AudioPresetName");
        v13 = CFDictionaryGetValue(v8, @"Audio_AudioProcessingOptions");
        v14 = *(*(CMBaseObjectGetVTable() + 16) + 104);
        if (!v14)
        {
          goto LABEL_62;
        }

        goto LABEL_16;
      }

      if (CFEqual(Value, @"TrackType_AudioTrackWithPreset"))
      {
        v10 = *(DerivedStorage + 16);
        LODWORD(context.value) = 0;
        FigCFDictionaryGetInt32IfPresent();
        value_low = LODWORD(context.value);
        v12 = CFDictionaryGetValue(v8, @"Audio_AudioPresetName");
        v13 = CFDictionaryGetValue(v8, @"Audio_AudioProcessingOptions");
        v14 = *(*(CMBaseObjectGetVTable() + 16) + 88);
        if (!v14)
        {
          goto LABEL_62;
        }

LABEL_16:
        v15 = v14(v10, value_low, v12, v13, &v71);
        if (v15 != -12123 && v15 != 0)
        {
          goto LABEL_61;
        }

        goto LABEL_21;
      }

      if (CFEqual(Value, @"TrackType_AudioTrack"))
      {
        v22 = *(DerivedStorage + 16);
        LODWORD(context.value) = 0;
        FigCFDictionaryGetInt32IfPresent();
        v66 = context.value;
        v23 = CFDictionaryGetValue(v8, @"Audio_DestinationASBD");
        if (v23)
        {
          BytePtr = CFDataGetBytePtr(v23);
        }

        else
        {
          BytePtr = 0;
        }

        context.value = 0;
        v27 = CFDictionaryGetValue(v8, @"Audio_DestinationChannelLayoutSize");
        if (v27)
        {
          CFNumberGetValue(v27, kCFNumberSInt64Type, &context);
          v61 = context.value;
        }

        else
        {
          v61 = 0;
        }

        v28 = CFDictionaryGetValue(v8, @"Audio_DestinationChannelLayout");
        v29 = v1;
        if (v28)
        {
          v30 = CFDataGetBytePtr(v28);
        }

        else
        {
          v30 = 0;
        }

        v31 = CFDictionaryGetValue(v8, @"Audio_AudioOptions");
        v32 = CFDictionaryGetValue(v8, @"Audio_AudioProcessingOptions");
        v33 = *(*(CMBaseObjectGetVTable() + 16) + 8);
        if (!v33)
        {
          flags = 4294954514;
          v1 = v29;
          goto LABEL_63;
        }

        v26 = v33(v22, v66, BytePtr, v61, v30, v31, v32, &v71);
        v1 = v29;
        if (v26 != -12123)
        {
          goto LABEL_48;
        }
      }

      else
      {
        v67 = v1;
        if (CFEqual(Value, @"TrackType_VideoCompositionTrack"))
        {
          v24 = *(DerivedStorage + 16);
          v64 = CFDictionaryGetValue(v8, @"Video_SourceVideoTrackArray");
          v60 = CFDictionaryGetValue(v8, @"Video_SourceSampleDataTrackArray");
          v58 = CFDictionaryGetValue(v8, @"Video_SourceVideoTrackWindows");
          v56 = CFDictionaryGetValue(v8, @"Video_SourceSampleDataTrackWindows");
          v54 = CFDictionaryGetValue(v8, @"Video_VideoCompositor");
          v53 = CFDictionaryGetValue(v8, @"Video_VideoCompositionInstructionArray");
          v52 = CFDictionaryGetValue(v8, @"Video_AnimationRootLayer");
          LODWORD(context.value) = 0;
          FigCFDictionaryGetInt32IfPresent();
          v51 = context.value;
          v50 = CFDictionaryGetValue(v8, @"Video_AnimationVideoLayers");
          v49 = CFDictionaryGetValue(v8, @"Video_AnimationVideoTrackIDs");
          CFDictionaryGetValue(v8, @"Video_AnimationRendererOptions");
          queuedRemaker_dictionaryGetFigTime(v8, &v70);
          LODWORD(context.value) = 0;
          FigCFDictionaryGetInt32IfPresent();
          LODWORD(context.value) = 0;
          FigCFDictionaryGetInt32IfPresent();
          LODWORD(context.value) = 0;
          FigCFDictionaryGetInt32IfPresent();
          LODWORD(context.value) = 0;
          FigCFDictionaryGetInt32IfPresent();
          LODWORD(context.value) = 0;
          FigCFDictionaryGetInt32IfPresent();
          CFDictionaryGetValue(v8, @"Video_VideoScalingProperties");
          LODWORD(context.value) = 0;
          FigCFDictionaryGetInt32IfPresent();
          CFDictionaryGetValue(v8, @"Video_VideoEncoderSpecification");
          CFDictionaryGetValue(v8, @"Video_VideoCompressionProperties");
          CFDictionaryGetValue(v8, @"Video_VideoProcessingOptions");
          CFDictionaryGetValue(v8, @"Video_VideoCompositionProcessorProperties");
          v25 = *(*(CMBaseObjectGetVTable() + 16) + 112);
          if (!v25)
          {
            goto LABEL_69;
          }

          context = v70;
          LODWORD(p_context) = v49;
          v47 = v50;
          LODWORD(v46) = v51;
          v26 = v25(v24, v64, v60, v58, v56, v54, v53, v52, v46);
          goto LABEL_47;
        }

        if (CFEqual(Value, @"TrackType_VideoTrack"))
        {
          v34 = *(DerivedStorage + 16);
          LODWORD(context.value) = 0;
          FigCFDictionaryGetInt32IfPresent();
          v65 = context.value;
          LODWORD(context.value) = 0;
          FigCFDictionaryGetInt32IfPresent();
          v62 = context.value;
          LODWORD(context.value) = 0;
          FigCFDictionaryGetInt32IfPresent();
          v59 = context.value;
          v57 = CFDictionaryGetValue(v8, @"Video_VideoScalingProperties");
          LODWORD(context.value) = 0;
          FigCFDictionaryGetInt32IfPresent();
          v55 = context.value;
          v35 = CFDictionaryGetValue(v8, @"Video_VideoEncoderSpecification");
          v36 = CFDictionaryGetValue(v8, @"Video_VideoDecompressionProperties");
          v37 = CFDictionaryGetValue(v8, @"Video_VideoCompressionProperties");
          v38 = CFDictionaryGetValue(v8, @"Video_VideoProcessingOptions");
          queuedRemaker_dictionaryGetFigTime(v8, &v70);
          v39 = *(*(CMBaseObjectGetVTable() + 16) + 16);
          if (!v39)
          {
LABEL_69:
            flags = 4294954514;
            v1 = v67;
            goto LABEL_63;
          }

          context = v70;
          v47 = v38;
          p_context = &context;
          v26 = v39(v34, v65, v62, v59, v57, v55, v35, v36, v37);
LABEL_47:
          v1 = v67;
          if (v26 != -12123)
          {
            goto LABEL_48;
          }

          goto LABEL_21;
        }

        if (CFEqual(Value, @"TrackType_Passthrough"))
        {
          v40 = *(DerivedStorage + 16);
          LODWORD(context.value) = 0;
          FigCFDictionaryGetInt32IfPresent();
          v41 = LODWORD(context.value);
          v42 = CFDictionaryGetValue(v8, @"Passthrough_Options");
          v43 = *(*(CMBaseObjectGetVTable() + 16) + 120);
          if (!v43)
          {
            goto LABEL_62;
          }
        }

        else
        {
          if (!CFEqual(Value, @"TrackType_TemporalMetadata"))
          {
            fig_log_get_emitter();
            FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v46, v47, p_context);
LABEL_61:
            flags = v15;
            goto LABEL_63;
          }

          v40 = *(DerivedStorage + 16);
          LODWORD(context.value) = 0;
          FigCFDictionaryGetInt32IfPresent();
          v41 = LODWORD(context.value);
          v42 = CFDictionaryGetValue(v8, @"TemporalMetadata_Options");
          v43 = *(*(CMBaseObjectGetVTable() + 16) + 136);
          if (!v43)
          {
            goto LABEL_62;
          }
        }

        v26 = v43(v40, v41, v42, &v71);
        if (v26 != -12123)
        {
LABEL_48:
          flags = v26;
          if (v26)
          {
            goto LABEL_63;
          }
        }
      }

LABEL_21:
      FigCFDictionarySetInt32();
      v17 = CFDictionaryGetValue(v8, @"Common_FormatWriterTrackProperties");
      if (v71)
      {
        if (v17)
        {
          context.value = *(DerivedStorage + 16);
          *&context.timescale = v71;
          CFDictionaryApplyFunction(v17, queuedRemaker_setPendingFormatWriterTrackProperty, &context);
          flags = context.flags;
          if (context.flags)
          {
            goto LABEL_63;
          }
        }
      }

      v19 = FigCFDictionaryGetValue();
      v20 = FigCFDictionaryGetValue();
      v46 = v19;
      v21 = CFStringCreateWithFormat(v69, 0, @"%@");
      CFDictionarySetValue(*(DerivedStorage + 56), v21, v20);
      if (v21)
      {
        CFRelease(v21);
      }

      v7 = ++v6 < v5;
      if (v5 == v6)
      {
        goto LABEL_59;
      }
    }
  }

  v7 = 0;
LABEL_59:
  v44 = *(DerivedStorage + 16);
  v45 = *(*(CMBaseObjectGetVTable() + 16) + 56);
  if (v45)
  {
    v15 = v45(v44);
    goto LABEL_61;
  }

LABEL_62:
  flags = 4294954514;
LABEL_63:
  if (v68)
  {
    FigSimpleMutexUnlock();
  }

  if (flags != 0 && v7)
  {
    remakerFamily_PostFailureNotificationIfError(*(DerivedStorage + 16), 0, flags, 0, 0);
    remakerQueue_removeRemakerFromQueue(v1);
  }

  CFRelease(v1);
}

CMTime *queuedRemaker_dictionaryGetFigTime@<X0>(const __CFDictionary *a1@<X0>, CMTime *a2@<X8>)
{
  *a2 = **&MEMORY[0x1E6960C70];
  result = CFDictionaryGetValue(a1, @"Video_FrameDuration");
  if (result)
  {

    return CMTimeMakeFromDictionary(a2, result);
  }

  return result;
}

uint64_t queuedRemaker_setPendingFormatWriterTrackProperty(uint64_t result, uint64_t a2, uint64_t *a3)
{
  if (!*(a3 + 3))
  {
    v4 = result;
    v5 = *MEMORY[0x1E695E738] == a2 ? 0 : a2;
    v6 = *a3;
    v7 = *(a3 + 2);
    VTable = CMBaseObjectGetVTable();
    v9 = *(VTable + 16);
    result = VTable + 16;
    v10 = *(v9 + 40);
    if (!v10 || ((result = v10(v6, v7, v4, v5), *(a3 + 3) = result, result != -12784) ? (v11 = result == -12630) : (v11 = 1), !v11 ? (v12 = result == -12782) : (v12 = 1), v12))
    {
      *(a3 + 3) = 0;
    }
  }

  return result;
}

uint64_t queuedRemaker_Invalidate(const void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!*DerivedStorage)
  {
    v3 = DerivedStorage;
    *DerivedStorage = 1;
    v4 = *(DerivedStorage + 8);
    if (v4)
    {
      FigSimpleMutexLock();
    }

    remakerQueue_removeRemakerFromQueue(a1);
    if (*(v3 + 16))
    {
      CMNotificationCenterGetDefaultLocalCenter();
      CMNotificationCenterRemoveListener();
      FigRemakerGetFigBaseObject();
      if (v5)
      {
        v6 = v5;
        v7 = *(*(CMBaseObjectGetVTable() + 8) + 24);
        if (v7)
        {
          v7(v6);
        }
      }
    }

    if (v4)
    {
      FigSimpleMutexUnlock();
    }
  }

  return 0;
}

void queuedRemaker_Finalize(const void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  queuedRemaker_Invalidate(a1);
  if (DerivedStorage[1])
  {
    DerivedStorage[1] = 0;
    FigSimpleMutexDestroy();
  }

  v3 = DerivedStorage[3];
  if (v3)
  {
    CFRelease(v3);
  }

  v4 = DerivedStorage[2];
  if (v4)
  {
    CFRelease(v4);
    DerivedStorage[2] = 0;
  }

  v5 = DerivedStorage[7];
  if (v5)
  {
    CFRelease(v5);
  }

  v6 = DerivedStorage[5];
  if (v6)
  {
    os_release(v6);
    DerivedStorage[5] = 0;
  }
}

__CFString *queuedRemaker_CopyDebugDesc(const void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v3 = CFGetAllocator(a1);
  Mutable = CFStringCreateMutable(v3, 0);
  v5 = CFGetRetainCount(a1);
  if (*DerivedStorage)
  {
    v6 = " (invalidated)";
  }

  else
  {
    v6 = "";
  }

  v7 = CFGetAllocator(a1);
  CFStringAppendFormat(Mutable, 0, @"<FigRemakerQueued %p retainCount: %ld%s allocator: %p subremaker: %@>", a1, v5, v6, v7, *(DerivedStorage + 16));
  return Mutable;
}

uint64_t queuedRemaker_CopyProperty(uint64_t a1, const void *a2, uint64_t a3, void *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v8 = *(DerivedStorage + 8);
  if (v8)
  {
    FigSimpleMutexLock();
  }

  if (*DerivedStorage)
  {
    queuedRemaker_CopyProperty_cold_1(&valuePtr);
    goto LABEL_24;
  }

  if (!a2)
  {
    queuedRemaker_CopyProperty_cold_3(&valuePtr);
    goto LABEL_24;
  }

  if (!a4)
  {
    queuedRemaker_CopyProperty_cold_2(&valuePtr);
LABEL_24:
    v10 = valuePtr;
    if (!v8)
    {
      return v10;
    }

    goto LABEL_19;
  }

  if (CFEqual(@"Remaker_Progress", a2))
  {
    if (*(DerivedStorage + 48) && !*(DerivedStorage + 49))
    {
      valuePtr = 0;
      v9 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberIntType, &valuePtr);
      goto LABEL_13;
    }
  }

  else if (CFEqual(@"Remaker_FakeTrackIDMapping", a2))
  {
    v9 = *(DerivedStorage + 56);
    if (v9)
    {
      v9 = CFRetain(v9);
    }

LABEL_13:
    v10 = 0;
    *a4 = v9;
    if (!v8)
    {
      return v10;
    }

    goto LABEL_19;
  }

  FigRemakerGetFigBaseObject();
  v12 = v11;
  v13 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v13)
  {
    v10 = v13(v12, a2, a3, a4);
    if (!v8)
    {
      return v10;
    }

    goto LABEL_19;
  }

  v10 = 4294954514;
  if (v8)
  {
LABEL_19:
    FigSimpleMutexUnlock();
  }

  return v10;
}

uint64_t queuedRemaker_SetProperty(uint64_t a1, uint64_t a2, uint64_t a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v6 = *(DerivedStorage + 8);
  if (v6)
  {
    FigSimpleMutexLock();
  }

  if (*DerivedStorage)
  {
    queuedRemaker_SetProperty_cold_1(&v12);
    v10 = v12;
  }

  else if (a2)
  {
    FigRemakerGetFigBaseObject();
    v8 = v7;
    v9 = *(*(CMBaseObjectGetVTable() + 8) + 56);
    if (v9)
    {
      v10 = v9(v8, a2, a3);
    }

    else
    {
      v10 = 4294954514;
    }
  }

  else
  {
    queuedRemaker_SetProperty_cold_2(&v13);
    v10 = v13;
  }

  if (v6)
  {
    FigSimpleMutexUnlock();
  }

  return v10;
}

uint64_t queuedRemaker_SetFormatWriterProperty(uint64_t a1, uint64_t a2, uint64_t a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v6 = *(DerivedStorage + 8);
  if (v6)
  {
    FigSimpleMutexLock();
  }

  if (*DerivedStorage)
  {
    queuedRemaker_SetFormatWriterProperty_cold_1(&v11);
    v9 = v11;
    if (!v6)
    {
      return v9;
    }

    goto LABEL_8;
  }

  v7 = *(DerivedStorage + 16);
  v8 = *(*(CMBaseObjectGetVTable() + 16) + 32);
  if (v8)
  {
    v9 = v8(v7, a2, a3);
    if (!v6)
    {
      return v9;
    }

    goto LABEL_8;
  }

  v9 = 4294954514;
  if (v6)
  {
LABEL_8:
    FigSimpleMutexUnlock();
  }

  return v9;
}

uint64_t queuedRemaker_SetFormatWriterTrackProperty(const void *a1, int a2, const void *a3, const void *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v7 = *(DerivedStorage + 8);
  if (v7)
  {
    FigSimpleMutexLock();
  }

  if (*DerivedStorage)
  {
    queuedRemaker_SetFormatWriterTrackProperty_cold_1(&v10);
  }

  else if (a3)
  {
    if (CFArrayGetCount(*(DerivedStorage + 24)) <= a2 - 12301)
    {
      queuedRemaker_SetFormatWriterTrackProperty_cold_2(&v10);
    }

    else if (a2 <= 12300)
    {
      queuedRemaker_SetFormatWriterTrackProperty_cold_4(&v10);
    }

    else
    {
      CFArrayGetValueAtIndex(*(DerivedStorage + 24), a2 - 12301);
      v10 = 0;
      FigCFDictionaryGetInt32IfPresent();
      queuedRemaker_SetFormatWriterTrackProperty_cold_3(&v10);
    }
  }

  else
  {
    queuedRemaker_SetFormatWriterTrackProperty_cold_5(&v10);
  }

  v9 = v10;
  if (v7)
  {
    FigSimpleMutexUnlock();
  }

  return v9;
}

uint64_t queuedRemaker_SetTimeRange(uint64_t a1, CMTime *a2, CMTime *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v6 = *(DerivedStorage + 8);
  if (v6)
  {
    FigSimpleMutexLock();
  }

  if (*DerivedStorage)
  {
    queuedRemaker_SetTimeRange_cold_1(&time1);
    goto LABEL_16;
  }

  if ((a2->flags & 0x1D) != 1)
  {
    queuedRemaker_SetTimeRange_cold_2(&time1);
    goto LABEL_16;
  }

  if ((a3->flags & 0x1D) == 1)
  {
    time1 = *a2;
    time2 = *a3;
    if ((CMTimeCompare(&time1, &time2) & 0x80000000) == 0)
    {
      queuedRemaker_SetTimeRange_cold_3(&time1);
LABEL_16:
      value_low = LODWORD(time1.value);
      if (!v6)
      {
        return value_low;
      }

      goto LABEL_11;
    }
  }

  v7 = *(DerivedStorage + 16);
  *&v12.value = *&a2->value;
  v12.epoch = a2->epoch;
  *&v11.value = *&a3->value;
  v11.epoch = a3->epoch;
  v8 = *(*(CMBaseObjectGetVTable() + 16) + 48);
  if (v8)
  {
    time1 = v12;
    time2 = v11;
    value_low = v8(v7, &time1, &time2);
    if (!v6)
    {
      return value_low;
    }

    goto LABEL_11;
  }

  value_low = 4294954514;
  if (v6)
  {
LABEL_11:
    FigSimpleMutexUnlock();
  }

  return value_low;
}

uint64_t queuedRemaker_StartOutput(const void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v3 = *(DerivedStorage + 8);
  if (v3)
  {
    FigSimpleMutexLock();
  }

  if (*DerivedStorage)
  {
    queuedRemaker_StartOutput_cold_1(&v6);
    v4 = v6;
  }

  else if (*(DerivedStorage + 48))
  {
    queuedRemaker_StartOutput_cold_2(&v7);
    v4 = v7;
  }

  else
  {
    MEMORY[0x19A8D3660](&sCreateRemakerQueueMutexOnce, remakerQueue_createMutexAndArray);
    FigSimpleMutexLock();
    CFArrayAppendValue(sRemakerWaitingQueue, a1);
    FigSimpleMutexUnlock();
    MEMORY[0x19A8D3660](&sCreateRemakerQueueMutexOnce, remakerQueue_createMutexAndArray);
    dispatch_async(sRemakerStartQueue, &__block_literal_global_65);
    *(DerivedStorage + 48) = 1;
    if (!*(DerivedStorage + 49))
    {
      CMNotificationCenterGetDefaultLocalCenter();
      CMNotificationCenterPostNotification();
    }

    v4 = 0;
  }

  if (v3)
  {
    FigSimpleMutexUnlock();
  }

  return v4;
}

uint64_t queuedRemaker_EstimateMaxSegmentDurationForFileSize(uint64_t a1, uint64_t a2, uint64_t a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v6 = *(DerivedStorage + 8);
  if (v6)
  {
    FigSimpleMutexLock();
  }

  if (*DerivedStorage)
  {
    queuedRemaker_EstimateMaxSegmentDurationForFileSize_cold_1(&v11);
    v9 = v11;
    if (!v6)
    {
      return v9;
    }

    goto LABEL_8;
  }

  v7 = *(DerivedStorage + 16);
  v8 = *(*(CMBaseObjectGetVTable() + 16) + 64);
  if (v8)
  {
    v9 = v8(v7, a2, a3);
    if (!v6)
    {
      return v9;
    }

    goto LABEL_8;
  }

  v9 = 4294954514;
  if (v6)
  {
LABEL_8:
    FigSimpleMutexUnlock();
  }

  return v9;
}

uint64_t queuedRemaker_GetDefaultSourceAudioTrack(uint64_t a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v4 = *(DerivedStorage + 8);
  if (v4)
  {
    FigSimpleMutexLock();
  }

  if (*DerivedStorage)
  {
    queuedRemaker_GetDefaultSourceAudioTrack_cold_1(&v9);
    v7 = v9;
    if (!v4)
    {
      return v7;
    }

    goto LABEL_8;
  }

  v5 = *(DerivedStorage + 16);
  v6 = *(*(CMBaseObjectGetVTable() + 16) + 72);
  if (v6)
  {
    v7 = v6(v5, a2);
    if (!v4)
    {
      return v7;
    }

    goto LABEL_8;
  }

  v7 = 4294954514;
  if (v4)
  {
LABEL_8:
    FigSimpleMutexUnlock();
  }

  return v7;
}

uint64_t queuedRemaker_GetDefaultSourceVideoTrack(uint64_t a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v4 = *(DerivedStorage + 8);
  if (v4)
  {
    FigSimpleMutexLock();
  }

  if (*DerivedStorage)
  {
    queuedRemaker_GetDefaultSourceVideoTrack_cold_1(&v9);
    v7 = v9;
    if (!v4)
    {
      return v7;
    }

    goto LABEL_8;
  }

  v5 = *(DerivedStorage + 16);
  v6 = *(*(CMBaseObjectGetVTable() + 16) + 80);
  if (v6)
  {
    v7 = v6(v5, a2);
    if (!v4)
    {
      return v7;
    }

    goto LABEL_8;
  }

  v7 = 4294954514;
  if (v4)
  {
LABEL_8:
    FigSimpleMutexUnlock();
  }

  return v7;
}

uint64_t queuedRemaker_CanPerformFastFrameRateConversion(uint64_t a1, uint64_t a2, __int128 *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v6 = *(DerivedStorage + 8);
  if (v6)
  {
    FigSimpleMutexLock();
  }

  if (*DerivedStorage)
  {
    queuedRemaker_CanPerformFastFrameRateConversion_cold_1(&v13);
    v9 = v13;
    if (!v6)
    {
      return v9;
    }

    goto LABEL_8;
  }

  v7 = *(DerivedStorage + 16);
  v11 = *a3;
  v12 = *(a3 + 2);
  v8 = *(*(CMBaseObjectGetVTable() + 16) + 128);
  if (v8)
  {
    v13 = v11;
    v14 = v12;
    v9 = v8(v7, a2, &v13);
    if (!v6)
    {
      return v9;
    }

    goto LABEL_8;
  }

  v9 = 4294954514;
  if (v6)
  {
LABEL_8:
    FigSimpleMutexUnlock();
  }

  return v9;
}

uint64_t queuedRemaker_CopyTrackProperty(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v10 = *(DerivedStorage + 8);
  if (v10)
  {
    FigSimpleMutexLock();
  }

  if (*DerivedStorage)
  {
    queuedRemaker_CopyTrackProperty_cold_1(&v15);
    v13 = v15;
  }

  else if (a3)
  {
    if (a5)
    {
      v11 = *(DerivedStorage + 16);
      v12 = *(*(CMBaseObjectGetVTable() + 16) + 152);
      if (v12)
      {
        v13 = v12(v11, a2, a3, a4, a5);
      }

      else
      {
        v13 = 4294954514;
      }
    }

    else
    {
      queuedRemaker_CopyTrackProperty_cold_2(&v16);
      v13 = v16;
    }
  }

  else
  {
    queuedRemaker_CopyTrackProperty_cold_3(&v17);
    v13 = v17;
  }

  if (v10)
  {
    FigSimpleMutexUnlock();
  }

  return v13;
}

void queuedRemaker_dictionarySetData(__CFDictionary *a1, const void *a2, UInt8 *bytes, CFIndex length)
{
  v6 = CFDataCreate(*MEMORY[0x1E695E480], bytes, length);
  CFDictionarySetValue(a1, a2, v6);

  CFRelease(v6);
}

void OUTLINED_FUNCTION_8_45(uint64_t a1, const void *a2)
{

  CFDictionarySetValue(v2, a2, v3);
}

uint64_t OUTLINED_FUNCTION_10_44(uint64_t a1)
{

  return CMBaseObjectGetDerivedStorage();
}

uint64_t FigTTMLExtensionsCreate(const __CFAllocator *a1, uint64_t a2, CFTypeRef *a3, CFTypeRef *a4)
{
  if (a4)
  {
    FigTTMLNodeGetClassID();
    v8 = CMDerivedObjectCreate();
    if (v8)
    {
      return v8;
    }

    DerivedStorage = CMBaseObjectGetDerivedStorage();
    v8 = FigTTMLInitializeNodeBaseStorage(DerivedStorage, a3);
    if (v8)
    {
      return v8;
    }

    v8 = FigTTMLAddCurrentElementAttributesToDictionary(a2, *(DerivedStorage + 24));
    if (v8)
    {
      return v8;
    }

    else
    {
      Mutable = CFArrayCreateMutable(a1, 0, MEMORY[0x1E695E9C0]);
      *(DerivedStorage + 136) = Mutable;
      if (Mutable)
      {
        *a3 = 0;
        a3[1] = 0;
        FigTTMLParseNode(a2, figTTMLExtensionsConsumeChildNode, a3);
        v12 = v11;
        if (!v11)
        {
          *a4 = 0;
        }
      }

      else
      {
        FigTTMLExtensionsCreate_cold_1(&v14);
        return v14;
      }
    }
  }

  else
  {
    FigTTMLExtensionsCreate_cold_2(&v14);
    return v14;
  }

  return v12;
}

void figTTMLExtensions_Finalize(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v2 = *(DerivedStorage + 136);
  if (v2)
  {
    CFRelease(v2);
    *(DerivedStorage + 136) = 0;
  }

  FigTTMLReleaseNodeBaseStorage(DerivedStorage);
}

CFStringRef figTTMLExtensions_CopyDebugDesc(uint64_t a1)
{
  CMBaseObjectGetDerivedStorage();
  v1 = FigCFCopyCompactDescription();
  v2 = CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"extensions: %@", v1);
  if (v1)
  {
    CFRelease(v1);
  }

  return v2;
}

uint64_t figTTMLExtensions_CopyChildNodeArray(const void *a1, __CFArray **a2)
{
  v3 = CFGetAllocator(a1);
  Mutable = CFArrayCreateMutable(v3, 0, MEMORY[0x1E695E9C0]);
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a2)
  {
    v6 = *(DerivedStorage + 136);
    if (v6)
    {
      v7.length = CFArrayGetCount(*(DerivedStorage + 136));
    }

    else
    {
      v7.length = 0;
    }

    v7.location = 0;
    CFArrayAppendArray(Mutable, v6, v7);
    v8 = 0;
    *a2 = Mutable;
  }

  else
  {
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v11, v12, v13);
    v8 = v10;
    if (Mutable)
    {
      CFRelease(Mutable);
    }
  }

  return v8;
}

uint64_t figTTMLExtensions_GetNodeType(uint64_t a1, _DWORD *a2)
{
  if (a2)
  {
    result = 0;
    *a2 = 17;
  }

  else
  {
    v6 = v2;
    v7 = v3;
    figTTMLExtensions_GetNodeType_cold_1(&v5);
    return v5;
  }

  return result;
}

void WebVTTFormatReaderFinalize(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v2 = *(DerivedStorage + 8);
  if (v2)
  {
    CFRelease(v2);
    *(DerivedStorage + 8) = 0;
  }

  if (*DerivedStorage)
  {
    CFRelease(*DerivedStorage);
    *DerivedStorage = 0;
  }
}

__CFString *WebVTTFormatReaderCopyDebugDescription(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  v3 = *(*DerivedStorage + 24);
  if (v3)
  {
    v4 = CFCopyDescription(v3);
    CFStringAppendFormat(Mutable, 0, @"\tWebVTTFormatReader: stream<%@>", v4);
    if (v4)
    {
      CFRelease(v4);
    }
  }

  else
  {
    CFStringAppendFormat(Mutable, 0, @"\tWebVTTFormatReader: stream<%@>", 0);
  }

  return Mutable;
}

uint64_t WebVTTFormatReaderCopyProperty(uint64_t a1, const void *a2, const __CFAllocator *a3, CFDictionaryRef *a4)
{
  v7 = *CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  if (!a4)
  {
    WebVTTFormatReaderCopyProperty_cold_2(&valuePtr);
    value_low = LODWORD(valuePtr.value);
    goto LABEL_17;
  }

  *a4 = 0;
  if (!CFEqual(a2, @"Duration") && !CFEqual(a2, @"NominalDuration"))
  {
    if (CFEqual(a2, @"Timescale"))
    {
      LODWORD(valuePtr.value) = 1000;
      v11 = *MEMORY[0x1E695E480];
      v12 = kCFNumberSInt32Type;
LABEL_11:
      IdentityMatrixCFArray = CFNumberCreate(v11, v12, &valuePtr);
LABEL_15:
      value_low = 0;
LABEL_16:
      *a4 = IdentityMatrixCFArray;
      goto LABEL_17;
    }

    if (CFEqual(a2, @"Identifier"))
    {
      v14 = kFigFormatReaderIdentifier_WebVTT;
    }

    else
    {
      if (CFEqual(a2, @"AccurateDurationIsKnown"))
      {
        value_low = EnsureWebVTTFileIsParsed(v7);
        if (value_low)
        {
          goto LABEL_17;
        }

        IdentityMatrixCFArray = CFRetain(*MEMORY[0x1E695E4D0]);
        goto LABEL_16;
      }

      if (!CFEqual(a2, @"SampleCursorTimeAccuracyIsExact"))
      {
        if (!CFEqual(a2, @"PreferredRate") && !CFEqual(a2, @"PreferredVolume"))
        {
          if (!CFEqual(a2, @"MovieMatrix"))
          {
            value_low = 4294954512;
            goto LABEL_17;
          }

          IdentityMatrixCFArray = wvtt_CreateIdentityMatrixCFArray(a3);
          goto LABEL_15;
        }

        LODWORD(valuePtr.value) = 1065353216;
        v11 = *MEMORY[0x1E695E480];
        v12 = kCFNumberFloat32Type;
        goto LABEL_11;
      }

      v14 = MEMORY[0x1E695E4D0];
    }

    IdentityMatrixCFArray = CFRetain(*v14);
    goto LABEL_15;
  }

  if (EnsureWebVTTFileIsParsed(v7) || (v9 = *(v7 + 40)) == 0)
  {
    value_low = 4294954513;
  }

  else
  {
    valuePtr = *(v9 + 12);
    v16 = valuePtr;
    v10 = CMTimeCopyAsDictionary(&v16, a3);
    *a4 = v10;
    if (v10)
    {
      value_low = 0;
    }

    else
    {
      WebVTTFormatReaderCopyProperty_cold_1(&v16);
      value_low = LODWORD(v16.value);
    }
  }

LABEL_17:
  FigSimpleMutexUnlock();
  return value_low;
}

uint64_t EnsureWebVTTFileIsParsed(uint64_t a1)
{
  FigSimpleMutexLock();
  if (*(a1 + 112))
  {
    goto LABEL_24;
  }

  *(a1 + 116) = 0;
  v16 = -1;
  theBuffer = 0;
  number = 0;
  if (!*(a1 + 24))
  {
    EnsureWebVTTFileIsParsed_cold_2(&v14);
LABEL_29:
    v5 = v14;
    goto LABEL_21;
  }

  if (!*(a1 + 96))
  {
    EnsureWebVTTFileIsParsed_cold_1(&v14);
    goto LABEL_29;
  }

  CMBaseObject = CMByteStreamGetCMBaseObject();
  v3 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v3)
  {
    goto LABEL_20;
  }

  v4 = *MEMORY[0x1E695E480];
  v5 = v3(CMBaseObject, *MEMORY[0x1E695FF78], *MEMORY[0x1E695E480], &number);
  if (v5)
  {
    v6 = 1;
  }

  else
  {
    v6 = number == 0;
  }

  if (!v6)
  {
    CFNumberGetValue(number, kCFNumberSInt64Type, (a1 + 64));
    CFRelease(number);
    *(a1 + 56) = 1;
    v7 = *(a1 + 24);
    v8 = *(a1 + 64);
    v9 = *(*(CMBaseObjectGetVTable() + 16) + 32);
    if (v9)
    {
      v10 = v9(v7, v8, 0, &theBuffer, &v16);
      if (!v10)
      {
        IsRangeContiguous = CMBlockBufferIsRangeContiguous(theBuffer, 0, 0);
        v12 = theBuffer;
        if (!IsRangeContiguous)
        {
          v14 = 0;
          v10 = CMBlockBufferCreateContiguous(v4, theBuffer, v4, 0, 0, 0, 0, &v14);
          if (v10)
          {
            goto LABEL_26;
          }

          if (theBuffer)
          {
            CFRelease(theBuffer);
          }

          v12 = v14;
          theBuffer = v14;
        }

        v10 = WebVTTParserParseBlockBuffer(*(a1 + 96), v12);
        if (!v10)
        {
          v10 = WebVTTParserFlush(*(a1 + 96), 1, 0);
          if (!v10)
          {
            if (*(a1 + 48))
            {
              v5 = 0;
              goto LABEL_21;
            }

            v10 = WebVTTParserCopyFormatDescription(*(a1 + 96), (a1 + 48));
          }
        }
      }

LABEL_26:
      v5 = v10;
      goto LABEL_21;
    }

LABEL_20:
    v5 = -12782;
  }

LABEL_21:
  if (theBuffer)
  {
    CFRelease(theBuffer);
  }

  *(a1 + 116) = v5;
  *(a1 + 112) = 1;
LABEL_24:
  FigSimpleMutexUnlock();
  return *(a1 + 116);
}

CFArrayRef wvtt_CreateIdentityMatrixCFArray(const __CFAllocator *a1)
{
  values[9] = *MEMORY[0x1E69E9840];
  v7 = 1065353216;
  valuePtr = 0;
  v2 = *MEMORY[0x1E695E480];
  v3 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberFloat32Type, &valuePtr);
  v4 = CFNumberCreate(v2, kCFNumberFloat32Type, &v7);
  values[0] = v4;
  values[1] = v3;
  values[2] = v3;
  values[3] = v3;
  values[4] = v4;
  values[5] = v3;
  values[6] = v3;
  values[7] = v3;
  values[8] = v4;
  v5 = CFArrayCreate(a1, values, 9, MEMORY[0x1E695E9C0]);
  CFRelease(v3);
  CFRelease(v4);
  return v5;
}

uint64_t WebVTTFormatReaderCopyTrackByIndex(uint64_t a1, uint64_t a2, void *a3, _DWORD *a4, _DWORD *a5)
{
  if (a2)
  {
    return 4294954453;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  result = EnsureWebVTTFileIsParsed(*DerivedStorage);
  if (!result)
  {
    if (a3)
    {
      v10 = DerivedStorage[1];
      if (v10)
      {
        v10 = CFRetain(v10);
      }

      *a3 = v10;
    }

    if (a4)
    {
      *a4 = 1952807028;
    }

    result = 0;
    if (a5)
    {
      *a5 = 1;
    }
  }

  return result;
}

double WebVTTFormatReaderCopyTrackByID(uint64_t a1, int a2, void *a3, _DWORD *a4)
{
  if (a2 == 1)
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    if (!EnsureWebVTTFileIsParsed(*DerivedStorage))
    {
      if (a3)
      {
        v9 = DerivedStorage[1];
        if (v9)
        {
          v9 = CFRetain(v9);
        }

        *a3 = v9;
      }

      if (a4)
      {
        *a4 = 1952807028;
      }
    }
  }

  else
  {
    emitter = fig_log_get_emitter();

    return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 4294954453, "-+= FFR_WebVTT =+-", 1079, v4);
  }

  return result;
}

uint64_t WebVTTFormatReaderCopyTrackByType(uint64_t a1, uint64_t a2, int a3, void *a4, _DWORD *a5)
{
  result = 4294954453;
  if (!a2 && a3 == 1952807028)
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    result = EnsureWebVTTFileIsParsed(*DerivedStorage);
    if (!result)
    {
      if (a4)
      {
        v9 = DerivedStorage[1];
        if (v9)
        {
          v9 = CFRetain(v9);
        }

        *a4 = v9;
      }

      result = 0;
      if (a5)
      {
        *a5 = 1;
      }
    }
  }

  return result;
}

void WebVTTTrackReaderFinalize(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*DerivedStorage)
  {
    CFRelease(*DerivedStorage);
    *DerivedStorage = 0;
  }
}

__CFString *WebVTTTrackReaderCopyDebugDescription(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  if (*DerivedStorage)
  {
    v3 = *(*DerivedStorage + 24);
    if (v3)
    {
      v4 = CFCopyDescription(v3);
      CFStringAppendFormat(Mutable, 0, @"\tWebVTTTrackReader: stream<%@> trackID %d", v4, 1);
      if (v4)
      {
        CFRelease(v4);
      }
    }

    else
    {
      CFStringAppendFormat(Mutable, 0, @"\tWebVTTTrackReader: stream<%@> trackID %d", 0, 1);
    }
  }

  return Mutable;
}

uint64_t WebVTTTrackReaderCopyProperty(uint64_t a1, const void *a2, const __CFAllocator *a3, void *a4)
{
  v7 = *CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  if (!a4)
  {
    WebVTTTrackReaderCopyProperty_cold_1(&valuePtr);
    value_low = LODWORD(valuePtr.value);
    goto LABEL_19;
  }

  *a4 = 0;
  if (!CFEqual(a2, @"TrackFormatDescriptionArray"))
  {
    if (CFEqual(a2, @"TrackTimescale"))
    {
      LODWORD(valuePtr.value) = *(v7 + 32);
      v9 = *MEMORY[0x1E695E480];
      v10 = kCFNumberSInt32Type;
    }

    else
    {
      if (CFEqual(a2, @"TrackEnabled"))
      {
        IdentityMatrixCFArray = CFRetain(*MEMORY[0x1E695E4D0]);
        goto LABEL_18;
      }

      if (CFEqual(a2, @"TrackMatrix"))
      {
        IdentityMatrixCFArray = wvtt_CreateIdentityMatrixCFArray(a3);
        goto LABEL_18;
      }

      if (CFEqual(a2, @"TrackDuration") || CFEqual(a2, @"UneditedTrackDuration"))
      {
        valuePtr = **&MEMORY[0x1E6960CC0];
        v12 = *(v7 + 40);
        if (v12)
        {
          valuePtr = *(v12 + 12);
        }

        v15 = valuePtr;
        IdentityMatrixCFArray = CMTimeCopyAsDictionary(&v15, a3);
        goto LABEL_18;
      }

      if (!CFEqual(a2, @"UneditedSampleCount"))
      {
        value_low = 4294954512;
        goto LABEL_19;
      }

      valuePtr.value = 0;
      v14 = *(v7 + 40);
      if (v14)
      {
        valuePtr.value = *(v14 + 40);
      }

      v9 = *MEMORY[0x1E695E480];
      v10 = kCFNumberSInt64Type;
    }

    IdentityMatrixCFArray = CFNumberCreate(v9, v10, &valuePtr);
LABEL_18:
    value_low = 0;
    *a4 = IdentityMatrixCFArray;
    goto LABEL_19;
  }

  if (*(v7 + 48))
  {
    IdentityMatrixCFArray = CFArrayCreate(a3, (v7 + 48), 1, MEMORY[0x1E695E9C0]);
    goto LABEL_18;
  }

  value_low = 4294954513;
LABEL_19:
  FigSimpleMutexUnlock();
  return value_low;
}

uint64_t WebVTTTrackReaderGetTrackInfo(uint64_t a1, _DWORD *a2, _DWORD *a3)
{
  if (a3)
  {
    *a3 = 1952807028;
  }

  if (a2)
  {
    *a2 = 1;
  }

  return 0;
}

uint64_t WebVTTTrackReaderCopySampleCursorService(uint64_t a1, void *a2)
{
  v3 = *CMBaseObjectGetDerivedStorage();
  FigSampleCursorServiceGetClassID();
  v4 = CMDerivedObjectCreate();
  if (v4)
  {
    WebVTTTrackReaderCopySampleCursorService_cold_1();
  }

  else
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    if (v3)
    {
      v6 = CFRetain(v3);
    }

    else
    {
      v6 = 0;
    }

    *DerivedStorage = v6;
    *a2 = 0;
  }

  return v4;
}

void WebVTTCursorService_finalize(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*DerivedStorage)
  {
    CFRelease(*DerivedStorage);
    *DerivedStorage = 0;
  }
}

__CFString *WebVTTCursorService_copyDebugDescription(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  CFStringAppendFormat(Mutable, 0, @"<FigFormatReader_WebVTT_CursorService %p>{ timescale %d }", a1, *(*DerivedStorage + 32));
  return Mutable;
}

uint64_t createWebVTTAccessor(uint64_t a1, void *a2)
{
  if (*(a1 + 88))
  {
    if (*(a1 + 80))
    {
      goto LABEL_3;
    }

LABEL_7:
    createWebVTTAccessor_cold_2(&v8);
    return v8;
  }

  v7 = *(*(a1 + 40) + 40);
  *(a1 + 80) = v7;
  *(a1 + 88) = 1;
  if (!v7)
  {
    goto LABEL_7;
  }

LABEL_3:
  FigSampleCursorGetClassID();
  v4 = CMDerivedObjectCreate();
  if (v4)
  {
    createWebVTTAccessor_cold_1();
  }

  else
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    *DerivedStorage = CFRetain(a1);
    DerivedStorage[1] = 0;
    *a2 = 0;
  }

  return v4;
}

uint64_t wvtt_moveToSampleAtPTS(void *a1, uint64_t a2, _BYTE *a3, char *a4)
{
  memset(&v20, 0, sizeof(v20));
  v8 = *(*a1 + 32);
  *&time.duration.value = *a2;
  time.duration.epoch = *(a2 + 16);
  CMTimeConvertScale(&v20, &time.duration, v8, kCMTimeRoundingMethod_RoundTowardZero);
  v9 = a1[1];
  v10 = *(*a1 + 40);
  time.duration = v20;
  v25 = v20;
  v11 = *(v10 + 12);
  time2.epoch = *(v10 + 28);
  *&time2.value = v11;
  v12 = CMTimeCompare(&time.duration, &time2);
  if (v12 < 0)
  {
    v15 = 0;
    v14 = 0;
    v13 = *(v10 + 40);
  }

  else
  {
    v25 = *(v10 + 12);
    v13 = *(v10 + 40);
    if (v13 <= 1)
    {
      v14 = 0;
    }

    else
    {
      v14 = v13 - 1;
    }

    v15 = 1;
  }

  if (v14 >= v13)
  {
    result = 4294954454;
LABEL_16:
    a1[1] = v9;
  }

  else
  {
    while (1)
    {
      while (1)
      {
        memset(&time, 0, sizeof(time));
        memset(&time2, 0, sizeof(time2));
        ValueAtIndex = CFArrayGetValueAtIndex(*(v10 + 48), v14);
        result = CMSampleBufferGetSampleTimingInfo(ValueAtIndex, 0, &time);
        if (!result)
        {
          break;
        }

        if (++v14 >= *(v10 + 40))
        {
          goto LABEL_16;
        }
      }

      lhs = time.presentationTimeStamp;
      rhs = time.duration;
      CMTimeAdd(&time2, &lhs, &rhs);
      lhs = v25;
      rhs = time.presentationTimeStamp;
      if ((CMTimeCompare(&lhs, &rhs) & 0x80000000) == 0)
      {
        lhs = v25;
        rhs = time2;
        if (CMTimeCompare(&lhs, &rhs) < 0)
        {
          break;
        }
      }

      if (++v14 >= *(v10 + 40))
      {
        goto LABEL_18;
      }
    }

    a1[1] = v14;
LABEL_18:
    if ((*a2 & 0x8000000000000000) != 0)
    {
      a1[1] = 0;
      if (a3)
      {
        *a3 = 1;
      }
    }

    if (v12 < 0)
    {
      return 0;
    }

    v18 = *a1;
    if (*(*a1 + 88))
    {
      v19 = *(v18 + 80);
    }

    else
    {
      v19 = *(*(v18 + 40) + 40);
      *(v18 + 80) = v19;
      *(v18 + 88) = 1;
    }

    a1[1] = v19 - 1;
    if (!a4)
    {
      return 0;
    }

    else
    {
      result = 0;
      *a4 = v15;
    }
  }

  return result;
}

void WebVTTCursor_finalize(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*DerivedStorage)
  {
    CFRelease(*DerivedStorage);
    *DerivedStorage = 0;
  }
}

__CFString *WebVTTCursor_copyDebugDescription(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  CFStringAppendFormat(Mutable, 0, @"<FigFormatReader_WebVTT_SampleCursor %p>{ curSampleNum %lld }", a1, *(DerivedStorage + 8));
  return Mutable;
}

uint64_t WebVTTCursor_copyProperty(uint64_t a1, const void *a2, const __CFAllocator *a3, CFDictionaryRef *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  if (!a2)
  {
    WebVTTCursor_copyProperty_cold_2(&time);
LABEL_12:
    value_low = LODWORD(time.value);
    goto LABEL_9;
  }

  if (!a4)
  {
    WebVTTCursor_copyProperty_cold_1(&time);
    goto LABEL_12;
  }

  *a4 = 0;
  if (CFEqual(a2, @"CursorPlayableHorizon"))
  {
    memset(&time, 0, sizeof(time));
    memset(&v14, 0, sizeof(v14));
    value_low = TimelineCache_MapSampleNumToSampleTime(*(*DerivedStorage + 40), DerivedStorage[1], &time);
    if (!value_low)
    {
      v15 = *(*(*DerivedStorage + 40) + 12);
      lhs = v15;
      rhs = time;
      CMTimeSubtract(&v14, &lhs, &rhs);
      lhs = v14;
      v11 = *MEMORY[0x1E6960CC0];
      *&rhs.value = *MEMORY[0x1E6960CC0];
      v9 = *(MEMORY[0x1E6960CC0] + 16);
      rhs.epoch = v9;
      if (CMTimeCompare(&lhs, &rhs) < 0)
      {
        *&v14.value = v11;
        v14.epoch = v9;
      }

      time = v14;
      *a4 = CMTimeCopyAsDictionary(&time, a3);
    }
  }

  else
  {
    value_low = 4294954512;
  }

LABEL_9:
  FigSimpleMutexUnlock();
  return value_low;
}

uint64_t TimelineCache_MapSampleNumToSampleTime(uint64_t a1, CFIndex a2, CMTime *a3)
{
  if (a2 < 0 || *(a1 + 40) <= a2)
  {
    TimelineCache_MapSampleNumToSampleTime_cold_1(&v6);
    return LODWORD(v6.duration.value);
  }

  ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 48), a2);
  if (!ValueAtIndex)
  {
    TimelineCache_MapSampleNumToSampleTime_cold_2(&v6);
    return LODWORD(v6.duration.value);
  }

  memset(&v6, 0, sizeof(v6));
  result = CMSampleBufferGetSampleTimingInfo(ValueAtIndex, 0, &v6);
  if (a3)
  {
    if (!result)
    {
      *a3 = v6.presentationTimeStamp;
    }
  }

  return result;
}

uint64_t WebVTTCursor_copy(uint64_t a1, void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSampleCursorGetClassID();
  v4 = CMDerivedObjectCreate();
  if (v4)
  {
    WebVTTCursor_copy_cold_1();
  }

  else
  {
    v5 = CMBaseObjectGetDerivedStorage();
    *v5 = *DerivedStorage;
    v6 = *v5;
    if (v6)
    {
      CFRetain(v6);
    }

    *a2 = 0;
  }

  return v4;
}

uint64_t WebVTTCursor_compareInDecodeOrder(uint64_t a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v3 = CMBaseObjectGetDerivedStorage();
  v4 = *(DerivedStorage + 8);
  v5 = *(v3 + 8);
  v6 = v4 < v5;
  v7 = v4 > v5;
  if (v6)
  {
    return -1;
  }

  else
  {
    return v7;
  }
}

uint64_t WebVTTCursor_getDependencyInfo(uint64_t a1, _BYTE *a2, _BYTE *a3, _DWORD *a4, _BYTE *a5)
{
  if (a2)
  {
    *a2 = 1;
  }

  if (a3)
  {
    *a3 = 0;
  }

  if (a4)
  {
    *a4 = 0;
  }

  if (a5)
  {
    *a5 = 0;
  }

  return 0;
}

uint64_t WebVTTCursor_stepByDecodeTime(uint64_t a1, CMTime *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  memset(&v11, 0, sizeof(v11));
  v10 = 0;
  FigSimpleMutexLock();
  v5 = *DerivedStorage;
  v4 = DerivedStorage[1];
  memset(&lhs, 0, sizeof(lhs));
  v6 = TimelineCache_MapSampleNumToSampleTime(*(v5 + 40), v4, &lhs);
  if (v6)
  {
    v7 = v6;
  }

  else
  {
    v12 = lhs;
    v9 = *a2;
    CMTimeAdd(&v11, &lhs, &v9);
    lhs = v11;
    v7 = wvtt_moveToSampleAtPTS(DerivedStorage, &lhs, &v10 + 1, &v10);
    if (!v7)
    {
      if (HIBYTE(v10) | v10)
      {
        v7 = 4294954456;
      }

      else
      {
        v7 = 0;
      }
    }
  }

  FigSimpleMutexUnlock();
  return v7;
}

uint64_t WebVTTCursor_copyFormatDescription(uint64_t a1, void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v4 = *DerivedStorage;
  FigSimpleMutexLock();
  v5 = *(v4 + 48);
  if (!v5)
  {
    sbuf = 0;
    SampleBufferContainingSample = TimelineCache_GetSampleBufferContainingSample(*(v4 + 40), DerivedStorage[1], &sbuf);
    if (SampleBufferContainingSample)
    {
      v6 = SampleBufferContainingSample;
      goto LABEL_10;
    }

    FormatDescription = CMSampleBufferGetFormatDescription(sbuf);
    if (!FormatDescription)
    {
      WebVTTCursor_copyFormatDescription_cold_1(&v11);
      v6 = v11;
      goto LABEL_10;
    }

    v5 = CFRetain(FormatDescription);
    *(v4 + 48) = v5;
    if (a2)
    {
      goto LABEL_3;
    }

LABEL_9:
    v6 = 0;
    goto LABEL_10;
  }

  if (!a2)
  {
    goto LABEL_9;
  }

LABEL_3:
  if (v5)
  {
    v5 = CFRetain(v5);
  }

  v6 = 0;
  *a2 = v5;
LABEL_10:
  FigSimpleMutexUnlock();
  return v6;
}

uint64_t WebVTTCursor_stepInDecodeOrderAndReportStepsTaken(uint64_t a1, uint64_t a2, void *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  v6 = DerivedStorage[1];
  v7 = v6 + a2;
  if (a2 < 1)
  {
    v7 &= ~(v7 >> 63);
  }

  else
  {
    v8 = *DerivedStorage;
    if (*(*DerivedStorage + 88))
    {
      v9 = *(v8 + 80);
    }

    else
    {
      v9 = *(*(v8 + 40) + 40);
      *(v8 + 80) = v9;
      *(v8 + 88) = 1;
    }

    if (v9 <= v7)
    {
      v7 = v9 - 1;
    }
  }

  DerivedStorage[1] = v7;
  if (a3)
  {
    *a3 = v7 - v6;
  }

  FigSimpleMutexUnlock();
  return 0;
}

uint64_t TimelineCache_GetSampleBufferContainingSample(uint64_t a1, CFIndex a2, void *a3)
{
  if (a2 < 0 || *(a1 + 40) <= a2)
  {
    SampleBufferContainingSample_cold_1 = TimelineCache_GetSampleBufferContainingSample_cold_1(a3, &v7);
    result = v7;
    if (SampleBufferContainingSample_cold_1)
    {
      ValueAtIndex = 0;
      goto LABEL_5;
    }
  }

  else
  {
    if (a3)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 48), a2);
      result = 0;
LABEL_5:
      *a3 = ValueAtIndex;
      return result;
    }

    return 0;
  }

  return result;
}

uint64_t wvtt_headerCallback(uint64_t a1, uint64_t a2, _BYTE *a3, void *a4)
{
  *a3 = 0;
  *a4 = 0;
  return 0;
}

uint64_t RegisterWebVTTInfoType()
{
  result = _CFRuntimeRegisterClass();
  qword_1ED4CB008 = result;
  return result;
}

double InitWebVTTInfo(_OWORD *a1)
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

uint64_t FinalizeWebVTTInfo(uint64_t a1)
{
  FigFormatDescriptionRelease();
  WebVTTParserDestroy(*(a1 + 96));
  *(a1 + 96) = 0;
  TimelineCache_Destroy(*(a1 + 40));
  *(a1 + 40) = 0;
  v2 = *(a1 + 24);
  if (v2)
  {
    CFRelease(v2);
    *(a1 + 24) = 0;
  }

  if (*(a1 + 104))
  {
    FigSimpleMutexDestroy();
  }

  result = *(a1 + 16);
  if (result)
  {

    return FigSimpleMutexDestroy();
  }

  return result;
}

void TimelineCache_Destroy(CFTypeRef *a1)
{
  if (a1)
  {
    v2 = a1[6];
    if (v2)
    {
      CFRelease(v2);
      a1[6] = 0;
    }

    if (*a1)
    {
      CFRelease(*a1);
    }

    free(a1);
  }
}

__n128 OUTLINED_FUNCTION_2_119(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __n128 a12, uint64_t a9, uint64_t a10, uint64_t a11, __n128 a13, uint64_t a14)
{
  result = a13;
  *(v14 - 96) = a13;
  *(v14 - 80) = a14;
  return result;
}

void sub_1966AF268(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, id location, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, id a51)
{
  objc_destroyWeak((v51 + 40));
  objc_destroyWeak((v51 + 32));
  objc_destroyWeak(&location);
  objc_destroyWeak(&a51);
  _Unwind_Resume(a1);
}

void __getDisplayScale_block_invoke_0()
{
  v0 = MGCopyAnswer();
  if (v0)
  {
    v2 = v0;
    [v0 floatValue];
    *&sMaxDisplayScale_0 = v1;
  }
}

CFTypeRef FigVirtualDisplayCopyDefaultTimestampInfo(uint64_t a1)
{
  if (timestampsGetTimestampNameInfo_once != -1)
  {
    FigVirtualDisplayCopyDefaultTimestampInfo_cold_1();
  }

  result = timestampsGetTimestampNameInfo_timestampInfoArray;
  if (timestampsGetTimestampNameInfo_timestampInfoArray)
  {

    return CFRetain(result);
  }

  return result;
}

uint64_t FigVirtualDisplayProcessorCreate(uint64_t a1, uint64_t a2, CFTypeRef *a3)
{
  v21 = *MEMORY[0x1E69E9840];
  cf = 0;
  FigNote_AllowInternalDefaultLogs();
  fig_note_initialize_category_with_default_work_cf();
  fig_note_initialize_category_with_default_work_cf();
  FigVirtualDisplayProcessorGetClassID();
  v4 = CMDerivedObjectCreate();
  if (v4)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  else
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    *(DerivedStorage + 24) = 0;
    *DerivedStorage = dispatch_queue_create("com.apple.coremedia.vdprocessor.stateq", 0);
    v6 = FigDispatchQueueCreateWithPriority();
    *(DerivedStorage + 8) = v6;
    v7 = MEMORY[0x1E69E9710];
    v8 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, v6);
    *(DerivedStorage + 456) = v8;
    handler[0] = MEMORY[0x1E69E9820];
    handler[1] = 0x40000000;
    handler[2] = __FigVirtualDisplayProcessorCreate_block_invoke;
    handler[3] = &__block_descriptor_tmp_82;
    handler[4] = DerivedStorage;
    dispatch_source_set_event_handler(v8, handler);
    dispatch_source_set_timer(*(DerivedStorage + 456), 0xFFFFFFFFFFFFFFFFLL, 0, 0);
    dispatch_resume(*(DerivedStorage + 456));
    v9 = dispatch_source_create(v7, 0, 0, *(DerivedStorage + 8));
    *(DerivedStorage + 40) = v9;
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 0x40000000;
    v18[2] = __FigVirtualDisplayProcessorCreate_block_invoke_2;
    v18[3] = &__block_descriptor_tmp_213;
    v18[4] = DerivedStorage;
    dispatch_source_set_event_handler(v9, v18);
    dispatch_source_set_timer(*(DerivedStorage + 40), 0xFFFFFFFFFFFFFFFFLL, 0, 0);
    dispatch_resume(*(DerivedStorage + 40));
    v10 = dispatch_source_create(v7, 0, 0, *DerivedStorage);
    *(DerivedStorage + 480) = v10;
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 0x40000000;
    v17[2] = __FigVirtualDisplayProcessorCreate_block_invoke_3;
    v17[3] = &__block_descriptor_tmp_214_0;
    v17[4] = DerivedStorage;
    dispatch_source_set_event_handler(v10, v17);
    dispatch_source_set_timer(*(DerivedStorage + 480), 0xFFFFFFFFFFFFFFFFLL, 0, 0);
    dispatch_resume(*(DerivedStorage + 480));
    v11 = dispatch_source_create(v7, 0, 0, *DerivedStorage);
    *(DerivedStorage + 672) = v11;
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 0x40000000;
    v16[2] = __FigVirtualDisplayProcessorCreate_block_invoke_4;
    v16[3] = &__block_descriptor_tmp_215_0;
    v16[4] = DerivedStorage;
    dispatch_source_set_event_handler(v11, v16);
    dispatch_source_set_timer(*(DerivedStorage + 672), 0xFFFFFFFFFFFFFFFFLL, 0, 0);
    dispatch_resume(*(DerivedStorage + 672));
    v12 = malloc_type_calloc(1uLL, 0x60uLL, 0x10600407970C56AuLL);
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    FigCFDictionarySetInt32();
    *v12 = FigSimpleMutexCreate();
    v12[2] = Mutable;
    *(DerivedStorage + 640) = v12;
    *a3 = cf;
  }

  return v4;
}

double __FigVirtualDisplayProcessorCreate_block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  data = dispatch_source_get_data(*(v1 + 456));
  if (data >= 1)
  {
    *(v1 + 424) += *(v1 + 448) * (data & 0x7FFFFFFF);
    if (dword_1EAF17550 >= 3)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    v5 = *(v1 + 56);
    v6 = *(v5 + 168);
    v7 = v6 > 0;
    if (*(v1 + 24) != 2 || (!*v5 ? (v8 = v6 <= 0) : (v8 = 1), !v8 || v6 >= *(v1 + 464)))
    {
      __FigVirtualDisplayProcessorCreate_block_invoke_cold_1((v1 + 456));
      return result;
    }

    v9 = *(v1 + 416);
    if (*(v1 + 448) == v9)
    {
      v10 = 0;
    }

    else
    {
      *(v1 + 448) = v9;
      v10 = dispatch_time(0, v9);
    }

    if (fvdp_shouldDropFrame(v1))
    {
      goto LABEL_18;
    }

    if (dword_1EAF17550 >= 2)
    {
      v11 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    ++*(v5 + 168);
    if (fvdp_sendFrameToEncoder(v1, v7))
    {
      v12 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
      if (!v10)
      {
        return result;
      }
    }

    else
    {
LABEL_18:
      if (!v10)
      {
        return result;
      }
    }

    dispatch_source_set_timer(*(v1 + 456), v10, *(v1 + 448), 0xF4240uLL);
  }

  return result;
}

void *__FigVirtualDisplayProcessorCreate_block_invoke_2(void *result)
{
  v3 = *MEMORY[0x1E69E9840];
  v1 = result[4];
  if (*(v1 + 24) == 2)
  {
    if (dword_1EAF17550)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    result = fvdp_shutdownEncoderAndPools(v1);
    *(v1 + 48) = 1;
  }

  return result;
}

void __FigVirtualDisplayProcessorCreate_block_invoke_3(uint64_t a1)
{
  block[16] = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  v9 = 0;
  FigVirtualDisplaySinkGetCMBaseObject();
  v3 = v2;
  v4 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v4)
  {
    v5 = v4(v3, @"networkInfo", *MEMORY[0x1E695E480], &v9);
    if (v5 == -12784)
    {
      if (dword_1EAF17550)
      {
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      dispatch_source_set_timer(*(v1 + 480), 0xFFFFFFFFFFFFFFFFLL, 0, 0);
    }

    else
    {
      if (v5)
      {
        v7 = 1;
      }

      else
      {
        v7 = v9 == 0;
      }

      if (!v7)
      {
        v8 = *(v1 + 8);
        block[0] = MEMORY[0x1E69E9820];
        block[1] = 0x40000000;
        block[2] = __fvdp_encoderControlTimerFired_block_invoke;
        block[3] = &__block_descriptor_tmp_463;
        block[4] = v1;
        block[5] = v9;
        dispatch_async(v8, block);
      }
    }
  }
}

void __timestampsGetTimestampNameInfo_block_invoke()
{
  v0 = *MEMORY[0x1E695E480];
  timestampsGetTimestampNameInfo_timestampInfoArray = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  v1 = off_1E748F790;
  v2 = 5;
  v3 = MEMORY[0x1E695E9D8];
  v4 = MEMORY[0x1E695E9E8];
  do
  {
    v5 = CFDictionaryCreate(v0, kFigVirtualDisplaySinkTimestampInfoKey_Name, v1, 1, v3, v4);
    CFArrayAppendValue(timestampsGetTimestampNameInfo_timestampInfoArray, v5);
    if (v5)
    {
      CFRelease(v5);
    }

    ++v1;
    --v2;
  }

  while (v2);
}

void fvdp_finalize(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (dword_1EAF17550)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (*(DerivedStorage + 24))
  {
    v12 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (*DerivedStorage)
  {
    dispatch_sync(*DerivedStorage, &__block_literal_global_240);
  }

  fvdp_cleanup(DerivedStorage);
  v3 = *(DerivedStorage + 456);
  if (v3)
  {
    dispatch_source_cancel(v3);
    dispatch_release(*(DerivedStorage + 456));
  }

  v4 = *(DerivedStorage + 40);
  if (v4)
  {
    dispatch_source_cancel(v4);
    dispatch_release(*(DerivedStorage + 40));
  }

  v5 = *(DerivedStorage + 480);
  if (v5)
  {
    dispatch_source_cancel(v5);
    dispatch_release(*(DerivedStorage + 480));
  }

  v6 = *(DerivedStorage + 672);
  if (v6)
  {
    dispatch_source_cancel(v6);
    dispatch_release(*(DerivedStorage + 672));
  }

  v7 = *(DerivedStorage + 8);
  if (v7)
  {
    dispatch_release(v7);
  }

  if (*DerivedStorage)
  {
    dispatch_release(*DerivedStorage);
  }

  v8 = *(DerivedStorage + 640);
  if (v8)
  {
    writebackCacheInitWithPool(*(DerivedStorage + 640), 0, 0, 0);
    v9 = v8[2];
    if (v9)
    {
      CFRelease(v9);
    }

    v10 = v8[3];
    if (v10)
    {
      CFRelease(v10);
    }

    FigSimpleMutexDestroy();
    free(v8);
  }

  v11 = *(DerivedStorage + 16);
  if (v11)
  {
    CFRelease(v11);
    *(DerivedStorage + 16) = 0;
  }
}

uint64_t fvdp_copyProperty(const void *a1, const void *a2, const __CFAllocator *a3, __CFDictionary **a4)
{
  v25 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (dword_1EAF17550)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (CFEqual(a2, @"processorType"))
  {
    v9 = @"DefaultProcessor";
LABEL_10:
    v12 = CFRetain(v9);
LABEL_11:
    v13 = v12;
LABEL_12:
    result = 0;
    *a4 = v13;
    return result;
  }

  if (CFEqual(a2, @"SupportsRotation"))
  {
    v10 = MEMORY[0x1E695E4D0];
    v11 = *(DerivedStorage + 80);
    goto LABEL_7;
  }

  if (CFEqual(a2, @"IOMFBUUID"))
  {
    v9 = *(DerivedStorage + 96);
    if (v9)
    {
      goto LABEL_10;
    }

LABEL_21:
    v13 = 0;
    goto LABEL_12;
  }

  if (CFEqual(a2, @"DisplayEDID"))
  {
    v9 = *(DerivedStorage + 104);
    if (v9)
    {
      goto LABEL_10;
    }

    goto LABEL_21;
  }

  if (CFEqual(a2, @"DisplayName"))
  {
    v9 = *(DerivedStorage + 88);
    if (v9)
    {
      goto LABEL_10;
    }

    goto LABEL_21;
  }

  if (CFEqual(a2, @"IsIdle"))
  {
    v10 = MEMORY[0x1E695E4D0];
    v11 = *(DerivedStorage + 48);
LABEL_7:
    if (!v11)
    {
      v10 = MEMORY[0x1E695E4C0];
    }

    goto LABEL_9;
  }

  if (CFEqual(a2, @"SourcePixelFormat"))
  {
    v15 = *MEMORY[0x1E695E480];
    v16 = (DerivedStorage + 636);
    v17 = kCFNumberSInt32Type;
LABEL_28:
    v12 = CFNumberCreate(v15, v17, v16);
    goto LABEL_11;
  }

  if (CFEqual(a2, @"ProtectionFlags"))
  {
    v15 = *MEMORY[0x1E695E480];
    v16 = (DerivedStorage + 392);
    v17 = kCFNumberSInt64Type;
    goto LABEL_28;
  }

  if (CFEqual(a2, @"ColorAttributes"))
  {
    Mutable = CFDictionaryCreateMutable(a3, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    v19 = Mutable;
    v20 = *(DerivedStorage + 376);
    if (v20)
    {
      v21 = v20[1];
      if (v21)
      {
        CFDictionarySetValue(Mutable, *MEMORY[0x1E6965D88], v21);
        v20 = *(DerivedStorage + 376);
      }

      v22 = v20[3];
      if (v22)
      {
        CFDictionarySetValue(v19, *MEMORY[0x1E6965F30], v22);
        v20 = *(DerivedStorage + 376);
      }

      v23 = v20[2];
      if (v23)
      {
        CFDictionarySetValue(v19, *MEMORY[0x1E6965F98], v23);
      }
    }

    result = 0;
    *a4 = v19;
  }

  else
  {
    if (CFEqual(a2, @"DoesScaling"))
    {
      v10 = MEMORY[0x1E695E4C0];
LABEL_9:
      v9 = *v10;
      goto LABEL_10;
    }

    if (!CFEqual(a2, @"DisplayContainerID") && !CFEqual(a2, @"Transport") && !CFEqual(a2, @"DisplayAttributes"))
    {
      if (CFEqual(a2, @"VirtualDisplayMode"))
      {
        v9 = *(DerivedStorage + 400);
        if (v9)
        {
          goto LABEL_10;
        }

        goto LABEL_21;
      }

      v24 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    return 4294954512;
  }

  return result;
}

uint64_t fvdp_setProperty(const void *a1, const void *a2, const void *a3)
{
  v16 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (dword_1EAF17550)
  {
    v15 = 0;
    type = OS_LOG_TYPE_DEFAULT;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (CFEqual(a2, @"OriginalDisplaySize"))
  {
    if (a3)
    {
      CFRetain(a3);
    }

    v8 = *(DerivedStorage + 8);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 0x40000000;
    block[2] = __fvdp_setProperty_block_invoke;
    block[3] = &__block_descriptor_tmp_261;
    block[4] = a3;
    block[5] = DerivedStorage;
    dispatch_async(v8, block);
    return 0;
  }

  if (CFEqual(a2, @"LogPrefix"))
  {
    v9 = *DerivedStorage;
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 0x40000000;
    v12[2] = __fvdp_setProperty_block_invoke_2;
    v12[3] = &__block_descriptor_tmp_262;
    v12[4] = a3;
    v12[5] = DerivedStorage;
    v12[6] = a1;
    dispatch_sync(v9, v12);
    return 0;
  }

  v11 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
  os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);
  fig_log_call_emit_and_clean_up_after_send_and_compose();
  return 4294954512;
}

void fvdp_cleanup(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  if (*(a1 + 24))
  {
    v12 = 0;
    type = OS_LOG_TYPE_DEFAULT;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v2 = *(a1 + 64);
  if (v2)
  {
    v3 = *(*(CMBaseObjectGetVTable() + 16) + 72);
    if (v3)
    {
      v3(v2, &__block_literal_global_244);
    }
  }

  v4 = *(a1 + 8);
  if (v4)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 0x40000000;
    block[2] = __fvdp_cleanup_block_invoke_2;
    block[3] = &__block_descriptor_tmp_245;
    block[4] = a1;
    dispatch_sync(v4, block);
  }

  v5 = *(a1 + 72);
  if (v5)
  {
    CFRelease(v5);
    *(a1 + 72) = 0;
  }

  v6 = *(a1 + 368);
  if (v6)
  {
    CFRelease(v6);
    *(a1 + 368) = 0;
  }

  tapDestroy(*(a1 + 656));
  *(a1 + 656) = 0;
  tapDestroy(*(a1 + 664));
  *(a1 + 664) = 0;
  v7 = *(a1 + 672);
  *(a1 + 672) = 0u;
  *(a1 + 688) = 0u;
  *(a1 + 704) = 0u;
  *(a1 + 720) = 0u;
  *(a1 + 736) = 0;
  *(a1 + 672) = v7;
  v8 = *(a1 + 400);
  if (v8)
  {
    CFRelease(v8);
    *(a1 + 400) = 0;
  }
}

void __fvdp_cleanup_block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 336);
  if (v3)
  {
    CFRelease(v3);
    *(*(a1 + 32) + 336) = 0;
    v2 = *(a1 + 32);
  }

  v4 = *(v2 + 328);
  if (v4)
  {
    CFRelease(v4);
    *(*(a1 + 32) + 328) = 0;
    v2 = *(a1 + 32);
  }

  v5 = *(v2 + 320);
  if (v5)
  {
    CFRelease(v5);
    *(*(a1 + 32) + 320) = 0;
    v2 = *(a1 + 32);
  }

  v6 = *(v2 + 344);
  if (v6)
  {
    CFRelease(v6);
    *(*(a1 + 32) + 344) = 0;
    v2 = *(a1 + 32);
  }

  writebackCacheInitWithPool(*(v2 + 640), 0, 0, 0);
  v7 = *(a1 + 32);
  v8 = *(v7 + 480);
  v9 = *(v7 + 496);
  if (v9)
  {
    CFRelease(v9);
    *(v7 + 496) = 0;
  }

  v10 = *(v7 + 616);
  if (v10)
  {
    CFRelease(v10);
  }

  *(v7 + 624) = 0;
  *(v7 + 592) = 0u;
  *(v7 + 608) = 0u;
  *(v7 + 560) = 0u;
  *(v7 + 576) = 0u;
  *(v7 + 528) = 0u;
  *(v7 + 544) = 0u;
  *(v7 + 496) = 0u;
  *(v7 + 512) = 0u;
  *(v7 + 480) = 0u;
  *(v7 + 480) = v8;
  *(v7 + 408) = 0;
  v11 = *(a1 + 32);
  *(v11 + 80) = 0;
  v12 = MEMORY[0x1E695F060];
  *(v11 + 160) = 0;
  v13 = *v12;
  *(v11 + 112) = *v12;
  *(v11 + 128) = v13;
  *(v11 + 144) = v13;
  v14 = *(v11 + 184);
  if (v14)
  {
    CFRelease(v14);
    *(v11 + 184) = 0;
  }

  v15 = *(v11 + 192);
  if (v15)
  {
    CFRelease(v15);
    *(v11 + 192) = 0;
  }

  v16 = *(v11 + 200);
  if (v16)
  {
    CFRelease(v16);
    *(v11 + 200) = 0;
  }

  v17 = *(v11 + 88);
  if (v17)
  {
    CFRelease(v17);
    *(v11 + 88) = 0;
  }

  v18 = *(v11 + 96);
  if (v18)
  {
    CFRelease(v18);
    *(v11 + 96) = 0;
  }

  v19 = *(v11 + 104);
  if (v19)
  {
    CFRelease(v19);
    *(v11 + 104) = 0;
  }

  frameDataDestroy(*(*(a1 + 32) + 56));
  *(*(a1 + 32) + 56) = 0;
}

void *writebackCacheInitWithPool(void *result, const void *a2, uint64_t a3, const void *a4)
{
  if (result)
  {
    v7 = result;
    FigSimpleMutexLock();
    v8 = v7[5];
    v7[5] = a4;
    if (a4)
    {
      CFRetain(a4);
    }

    if (v8)
    {
      CFRelease(v8);
    }

    v9 = v7[1];
    v7[1] = a2;
    if (a2)
    {
      CFRetain(a2);
    }

    if (v9)
    {
      CFRelease(v9);
    }

    v10 = v7[4];
    if (v10)
    {
      CFRelease(v10);
      v7[4] = 0;
    }

    v7[6] = a3;
    v11 = *MEMORY[0x1E695F060];
    *(v7 + 7) = *MEMORY[0x1E695F060];
    *(v7 + 9) = v11;
    *(v7 + 22) = 0;
    *(v7 + 92) = 0;

    return FigSimpleMutexUnlock();
  }

  return result;
}

void frameDataDestroy(const void **a1)
{
  if (a1)
  {
    v2 = *a1;
    if (v2)
    {
      CFRelease(v2);
    }

    v3 = a1[18];
    if (v3)
    {
      CFRelease(v3);
    }

    v4 = a1[19];
    if (v4)
    {
      CFRelease(v4);
    }

    free(a1);
  }
}

void tapDestroy(CFTypeRef *a1)
{
  v7 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    v3 = *a1;
    v4 = *(*(CMBaseObjectGetVTable() + 16) + 16);
    if (v4)
    {
      v4(v3, 0);
    }

    if (*a1)
    {
      CFRelease(*a1);
    }

    v5 = a1[1];
    if (v5)
    {
      CFRelease(v5);
    }

    v6 = a1[2];
    if (v6)
    {
      CFRelease(v6);
    }

    free(a1);
  }
}

void __fvdp_setProperty_block_invoke(uint64_t a1)
{
  if (*(a1 + 32))
  {
    if (*(*(a1 + 40) + 24) == 2)
    {
      Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      CFDictionarySetValue(Mutable, @"originalDisplaySize", *(a1 + 32));
      FigVirtualDisplaySinkGetCMBaseObject();
      v4 = v3;
      v5 = *(*(CMBaseObjectGetVTable() + 8) + 56);
      if (v5)
      {
        v5(v4, @"extraInfo", Mutable);
      }

      if (Mutable)
      {
        CFRelease(Mutable);
      }
    }

    v6 = *(a1 + 32);
    if (v6)
    {

      CFRelease(v6);
    }
  }
}

const void *__fvdp_setProperty_block_invoke_2(void *a1)
{
  result = a1[4];
  if (result)
  {
    v3 = CFGetTypeID(result);
    result = CFStringGetTypeID();
    if (v3 == result)
    {
      v4 = a1[5];
      if (!*(v4 + 24) && !*(v4 + 16))
      {
        result = FVDUtilsCreateLogPrefix(a1[4], a1[6]);
        *(a1[5] + 16) = result;
      }
    }
  }

  return result;
}

uint64_t fvdp_plugSink(uint64_t a1, uint64_t a2)
{
  v30 = *MEMORY[0x1E69E9840];
  v19 = 0;
  v20 = &v19;
  v21 = 0x2000000000;
  v22 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v4 = *(DerivedStorage + 16);
  if (dword_1EAF17550)
  {
    v18 = 0;
    type = OS_LOG_TYPE_DEFAULT;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (a2)
  {
    v6 = *DerivedStorage;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 0x40000000;
    block[2] = __fvdp_plugSink_block_invoke;
    block[3] = &unk_1E748F860;
    block[5] = DerivedStorage;
    block[6] = a2;
    block[4] = &v19;
    dispatch_sync(v6, block);
    if (!*(v20 + 6))
    {
      v13 = 0;
      goto LABEL_14;
    }
  }

  else
  {
    v15 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    *(v20 + 6) = -12070;
  }

  v18 = 0;
  type = OS_LOG_TYPE_DEFAULT;
  v7 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
  v8 = v18;
  v9 = type;
  if (os_log_type_enabled(v7, type))
  {
    v10 = v8;
  }

  else
  {
    v10 = v8 & 0xFFFFFFFE;
  }

  if (v10)
  {
    v11 = &stru_1F0B1AFB8;
    if (v4)
    {
      v11 = v4;
    }

    v12 = *(v20 + 6);
    v23 = 138412802;
    v24 = v11;
    v25 = 2080;
    v26 = "fvdp_plugSink";
    v27 = 1024;
    LODWORD(v28) = v12;
    _os_log_send_and_compose_impl(v10, 0, v29, 128, &dword_1962D5000, v7, v9, "<<<< FigVirtualDisplayProcessor >>>>%@ %s: error: %d", &v23, 28);
  }

  fig_log_call_emit_and_clean_up_after_send_and_compose();
  v13 = *(v20 + 6);
LABEL_14:
  _Block_object_dispose(&v19, 8);
  return v13;
}

uint64_t fvdp_unplugSink(uint64_t a1, uint64_t a2)
{
  v29 = *MEMORY[0x1E69E9840];
  v18 = 0;
  v19 = &v18;
  v20 = 0x2000000000;
  v21 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v4 = *(DerivedStorage + 16);
  if (dword_1EAF17550)
  {
    v17 = 0;
    type = OS_LOG_TYPE_DEFAULT;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v6 = *DerivedStorage;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = __fvdp_unplugSink_block_invoke;
  block[3] = &unk_1E748F888;
  block[5] = DerivedStorage;
  block[6] = a2;
  block[4] = &v18;
  dispatch_sync(v6, block);
  if (*(v19 + 6))
  {
    v17 = 0;
    type = OS_LOG_TYPE_DEFAULT;
    v7 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    v8 = v17;
    v9 = type;
    if (os_log_type_enabled(v7, type))
    {
      v10 = v8;
    }

    else
    {
      v10 = v8 & 0xFFFFFFFE;
    }

    if (v10)
    {
      v11 = &stru_1F0B1AFB8;
      if (v4)
      {
        v11 = v4;
      }

      v12 = *(v19 + 6);
      v22 = 138412802;
      v23 = v11;
      v24 = 2080;
      v25 = "fvdp_unplugSink";
      v26 = 1024;
      LODWORD(v27) = v12;
      _os_log_send_and_compose_impl(v10, 0, v28, 128, &dword_1962D5000, v7, v9, "<<<< FigVirtualDisplayProcessor >>>>%@ %s: error: %d", &v22, 28);
    }

    fig_log_call_emit_and_clean_up_after_send_and_compose();
    v13 = *(v19 + 6);
  }

  else
  {
    v13 = 0;
  }

  _Block_object_dispose(&v18, 8);
  return v13;
}

uint64_t fvdp_start(uint64_t a1, uint64_t a2)
{
  v29 = *MEMORY[0x1E69E9840];
  v18 = 0;
  v19 = &v18;
  v20 = 0x2000000000;
  v21 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v4 = *(DerivedStorage + 16);
  if (dword_1EAF17550)
  {
    v17 = 0;
    type = OS_LOG_TYPE_DEFAULT;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v6 = *DerivedStorage;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = __fvdp_start_block_invoke;
  block[3] = &unk_1E748F8D8;
  block[4] = &v18;
  block[5] = DerivedStorage;
  block[6] = v4;
  block[7] = a2;
  dispatch_sync(v6, block);
  if (*(v19 + 6))
  {
    v17 = 0;
    type = OS_LOG_TYPE_DEFAULT;
    v7 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    v8 = v17;
    v9 = type;
    if (os_log_type_enabled(v7, type))
    {
      v10 = v8;
    }

    else
    {
      v10 = v8 & 0xFFFFFFFE;
    }

    if (v10)
    {
      v11 = &stru_1F0B1AFB8;
      if (v4)
      {
        v11 = v4;
      }

      v12 = *(v19 + 6);
      v22 = 138412802;
      v23 = v11;
      v24 = 2080;
      v25 = "fvdp_start";
      v26 = 1024;
      LODWORD(v27) = v12;
      _os_log_send_and_compose_impl(v10, 0, v28, 128, &dword_1962D5000, v7, v9, "<<<< FigVirtualDisplayProcessor >>>>%@ %s: error: %d", &v22, 28);
    }

    fig_log_call_emit_and_clean_up_after_send_and_compose();
    v13 = *(v19 + 6);
  }

  else
  {
    v13 = 0;
  }

  _Block_object_dispose(&v18, 8);
  return v13;
}

uint64_t fvdp_stop(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v2 = *(DerivedStorage + 16);
  if (dword_1EAF17550)
  {
    v8 = 0;
    type = OS_LOG_TYPE_DEFAULT;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v4 = *DerivedStorage;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = __fvdp_stop_block_invoke;
  block[3] = &__block_descriptor_tmp_419;
  block[4] = DerivedStorage;
  block[5] = v2;
  dispatch_sync(v4, block);
  return 0;
}

uint64_t fvdp_suspend(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v2 = *(DerivedStorage + 16);
  if (dword_1EAF17550)
  {
    v8 = 0;
    type = OS_LOG_TYPE_DEFAULT;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v4 = *DerivedStorage;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = __fvdp_suspend_block_invoke;
  block[3] = &__block_descriptor_tmp_424;
  block[4] = DerivedStorage;
  block[5] = v2;
  dispatch_sync(v4, block);
  return 0;
}

uint64_t fvdp_resume(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  v10 = 0;
  v11 = &v10;
  v12 = 0x2000000000;
  v13 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v2 = *(DerivedStorage + 16);
  if (dword_1EAF17550)
  {
    v9 = 0;
    type = OS_LOG_TYPE_DEFAULT;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v4 = *DerivedStorage;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = __fvdp_resume_block_invoke;
  block[3] = &unk_1E748FA78;
  block[5] = DerivedStorage;
  block[6] = v2;
  block[4] = &v10;
  dispatch_sync(v4, block);
  v5 = *(v11 + 6);
  _Block_object_dispose(&v10, 8);
  return v5;
}