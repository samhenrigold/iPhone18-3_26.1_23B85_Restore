uint64_t ptpClock_enablePortsBasedOnTopology(uint64_t a1, const void *a2)
{
  result = CMBaseObjectGetDerivedStorage();
  if (*(result + 24))
  {
    v5 = result;
    result = ptpClock_getLocalPeerClockPortsForClient(a1, a2);
    if (result)
    {
      result = CFDictionaryContainsKey(*(v5 + 24), @"HTAddress");
      if (!result)
      {
        DerivedStorage = CMBaseObjectGetDerivedStorage();
        Value = CFDictionaryGetValue(*(DerivedStorage + 32), a2);
        if (Value)
        {
          v8 = Value;
          CFStringGetTypeID();
          TypedValue = CFDictionaryGetTypedValue();
          v10 = CMBaseObjectGetDerivedStorage();
          if (!TypedValue)
          {
            goto LABEL_15;
          }

          v11 = v10;
          v12 = CMBaseObjectGetDerivedStorage();
          v13 = CFDictionaryGetValue(*(v12 + 32), a2);
          if (!v13)
          {
            APSLogErrorAt(0);
            goto LABEL_15;
          }

          v14 = CFDictionaryGetValue(*(v11 + 40), v13);
          Count = CFDictionaryGetCount(v14);
          v16 = FigCFDictionaryCopyArrayOfValues();
          if (Count < 1)
          {
LABEL_11:
            if (!v16)
            {
              goto LABEL_15;
            }
          }

          else
          {
            v17 = 0;
            while (1)
            {
              CFArrayGetValueAtIndex(v16, v17);
              CFStringGetTypeID();
              CFDictionaryGetTypedValue();
              if (FigCFEqual())
              {
                break;
              }

              if (Count == ++v17)
              {
                goto LABEL_11;
              }
            }

            if (!v16)
            {
              goto LABEL_15;
            }
          }

          CFRelease(v16);
LABEL_15:
          CFDictionaryGetInt64();
          CFDictionaryGetValue(*(v5 + 40), v8);
          return CFDictionaryApplyBlock();
        }

        return APSLogErrorAt(0);
      }
    }
  }

  return result;
}

uint64_t ptpClock_firePeersChangedNotification(uint64_t a1)
{
  CMBaseObjectGetDerivedStorage();
  CMNotificationCenterGetDefaultLocalCenter();

  return FigDispatchAsyncPostNotification();
}

void __ptpClock_enablePortsBasedOnTopology_block_invoke(void *a1, const void *a2, const __CFDictionary *a3)
{
  v5 = a1[4];
  v6 = a1[5];
  v7 = a1[6];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!v6 || (v9 = DerivedStorage, !*(DerivedStorage + 72)))
  {

    goto LABEL_28;
  }

  LocalPeerClockPortsForClient = ptpClock_getLocalPeerClockPortsForClient(v5, v6);
  if (!LocalPeerClockPortsForClient || !CFDictionaryContainsKey(LocalPeerClockPortsForClient, a2))
  {
    return;
  }

  Int64Ranged = CFDictionaryGetInt64Ranged();
  CFStringGetTypeID();
  CFDictionaryGetTypedValue();
  if (v7)
  {
    v12 = FigCFEqual() != 0;
  }

  else
  {
    v12 = 1;
  }

  if (v12 == (CFDictionaryGetInt64() == 0))
  {
    if (v12)
    {
      if (gLogCategory_APSNetworkClockPTP <= 50 && (gLogCategory_APSNetworkClockPTP != -1 || _LogCategory_Initialize()))
      {
        LogPrintF(&gLogCategory_APSNetworkClockPTP, "void ptpClock_enableOnePortOrAll(APSNetworkClockRef, void *, CFDictionaryRef, CFStringRef, CFStringRef)", 33554482, "[%{ptr}] Enabling clock port for peer %'@\n", v5, a2);
      }

      [*(v9 + 72) enablePort:Int64Ranged];
    }

    else
    {
      if (gLogCategory_APSNetworkClockPTP <= 50 && (gLogCategory_APSNetworkClockPTP != -1 || _LogCategory_Initialize()))
      {
        LogPrintF(&gLogCategory_APSNetworkClockPTP, "void ptpClock_enableOnePortOrAll(APSNetworkClockRef, void *, CFDictionaryRef, CFStringRef, CFStringRef)", 33554482, "[%{ptr}] Disabling clock port for peer %'@\n", v5, a2);
      }

      [*(v9 + 72) disablePort:Int64Ranged];
    }

    v13 = CMBaseObjectGetDerivedStorage();
    Value = CFDictionaryGetValue(*(v13 + 32), v6);
    if (Value)
    {
      v15 = Value;
      MutableCopy = CFDictionaryCreateMutableCopy(*MEMORY[0x277CBECE8], 0, a3);
      if (MutableCopy)
      {
        v17 = MutableCopy;
        v18 = MEMORY[0x277CBED28];
        if (!v12)
        {
          v18 = MEMORY[0x277CBED10];
        }

        CFDictionarySetValue(MutableCopy, @"IsEnabled", *v18);
        v19 = CFDictionaryGetValue(*(v9 + 40), v15);
        CFDictionarySetValue(v19, a2, v17);
        CFRelease(v17);
        return;
      }
    }

LABEL_28:
    APSLogErrorAt(0);
    return;
  }

  if (gLogCategory_APSNetworkClockPTP <= 30 && (gLogCategory_APSNetworkClockPTP != -1 || _LogCategory_Initialize()))
  {
    v20 = "disabled";
    if (v12)
    {
      v20 = "enabled";
    }

    LogPrintF(&gLogCategory_APSNetworkClockPTP, "void ptpClock_enableOnePortOrAll(APSNetworkClockRef, void *, CFDictionaryRef, CFStringRef, CFStringRef)", 33554462, "[%{ptr}] %'@ already %s", v5, a2, v20);
  }
}

double __ptpClock_getPerPortRateForPeer_block_invoke()
{
  IntWithOverrideAndDefault = APSSettingsGetIntWithOverrideAndDefault(@"ptpNonTightSyncRateMs", 0, 2000);
  CMTimeMake(&v2, IntWithOverrideAndDefault, 1000);
  result = *&v2.value;
  *ptpClock_getPerPortRateForPeer_sNonTightSyncRate = v2;
  return result;
}

uint64_t ptpClock_RemovePeer(uint64_t a1, const void *a2, const void *a3, __CFDictionary **a4, _BYTE *a5)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  if (*(DerivedStorage + 9))
  {
LABEL_10:
    v12 = 0;
    goto LABEL_11;
  }

  if (!a2)
  {
    APSLogErrorAt(0);
    v12 = 4294895325;
    goto LABEL_11;
  }

  v11 = ptpClock_removePeerInternal(a1, a2, a3);
  v12 = v11;
  if (v11 != -72291)
  {
    if (!v11)
    {
      if (!a4 || (LocalPeerInfoForClient = ptpClock_getLocalPeerInfoForClient(a1, a2), v11 = APSNetworkClockCopyPeerAsSerializablePeerDictionary(LocalPeerInfoForClient, a4), !v11))
      {
        if (a5)
        {
          *a5 = 1;
        }

        ptpClock_enablePortsBasedOnTopology(a1, a2);
        ptpClock_firePeersChangedNotification(a1);
        goto LABEL_10;
      }

      v12 = v11;
    }

    APSLogErrorAt(v11);
  }

LABEL_11:
  FigSimpleMutexUnlock();
  return v12;
}

uint64_t ptpClock_AddOrUpdatePeer(uint64_t a1, const void *a2, const __CFDictionary *a3, __CFDictionary **a4, _BYTE *a5)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v16 = 0;
  v15 = 0;
  FigSimpleMutexLock();
  if (!*(DerivedStorage + 9))
  {
    if (!a2)
    {
      APSLogErrorAt(0);
      v13 = 4294895325;
      goto LABEL_13;
    }

    if (*(DerivedStorage + 24))
    {
      isClockPortMatrixComplete = ptpClock_isClockPortMatrixComplete(a1, a2, &v16 + 1);
      if (isClockPortMatrixComplete)
      {
        v13 = isClockPortMatrixComplete;
      }

      else
      {
        isClockPortMatrixComplete = ptpClock_addOrUpdatePeerInternal(a1, a2, a3, a4, &v15);
        if (isClockPortMatrixComplete)
        {
          v13 = isClockPortMatrixComplete;
        }

        else
        {
          if (HIBYTE(v16) || (isClockPortMatrixComplete = ptpClock_isClockPortMatrixComplete(a1, a2, &v16), !isClockPortMatrixComplete))
          {
            v12 = v15;
            if (a5)
            {
              *a5 = v15;
            }

            if (v12 | v16)
            {
              ptpClock_enablePortsBasedOnTopology(a1, a2);
              ptpClock_firePeersChangedNotification(a1);
            }

            goto LABEL_12;
          }

          v13 = isClockPortMatrixComplete;
        }
      }
    }

    else
    {
      v13 = 4294895323;
      isClockPortMatrixComplete = 0;
    }

    APSLogErrorAt(isClockPortMatrixComplete);
    goto LABEL_13;
  }

LABEL_12:
  v13 = 0;
LABEL_13:
  FigSimpleMutexUnlock();
  return v13;
}

uint64_t ptpClock_isClockPortMatrixComplete(uint64_t a1, const void *a2, char *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!a3)
  {
    APSLogErrorAt(0);
    return 4294895325;
  }

  if (!*(DerivedStorage + 24))
  {
    v21 = 4294895323;
    v23 = 0;
LABEL_36:
    APSLogErrorAt(v23);
    return v21;
  }

  v7 = CMBaseObjectGetDerivedStorage();
  v8 = CMBaseObjectGetDerivedStorage();
  Value = CFDictionaryGetValue(*(v8 + 32), a2);
  if (!Value)
  {
    v21 = 4294895323;
    APSLogErrorAt(0);
LABEL_35:
    v23 = v21;
    goto LABEL_36;
  }

  CFDictionaryGetValue(*(v7 + 40), Value);
  v10 = FigCFDictionaryCopyArrayOfValues();
  if (!v10)
  {
    APSLogErrorAt(0);
LABEL_34:
    v21 = 4294895326;
    goto LABEL_35;
  }

  v11 = v10;
  MutableCopy = CFArrayCreateMutableCopy(*MEMORY[0x277CBECE8], 0, v10);
  if (!MutableCopy)
  {
    APSLogErrorAt(0);
    CFRelease(v11);
    goto LABEL_34;
  }

  v13 = MutableCopy;
  LocalPeerInfoForClient = ptpClock_getLocalPeerInfoForClient(a1, a2);
  if (LocalPeerInfoForClient)
  {
    CFArrayAppendValue(v13, LocalPeerInfoForClient);
  }

  CFRelease(v11);
  for (i = 0; i < CFArrayGetCount(v13); ++i)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(v13, i);
    if (CFDictionaryGetInt64())
    {
      CMBaseObjectGetDerivedStorage();
      theArray = 0;
      ptpClock_copyPeerListForPeerInternal(a1, a2, ValueAtIndex, &theArray);
      v17 = theArray;
      if (theArray)
      {
        Count = CFArrayGetCount(theArray);
        CFRelease(v17);
      }

      else
      {
        Count = 0;
      }

      CFDictionaryGetTypeID();
      TypedValue = CFDictionaryGetTypedValue();
      if (!TypedValue || CFDictionaryGetCount(TypedValue) < Count)
      {
        if (gLogCategory_APSNetworkClockPTP <= 30 && (gLogCategory_APSNetworkClockPTP != -1 || _LogCategory_Initialize()))
        {
          LogPrintF(&gLogCategory_APSNetworkClockPTP, "OSStatus ptpClock_isClockPortMatrixComplete(APSNetworkClockRef, void *, Boolean *)", 33554462, "[%{ptr}] Clock port matrix is incomplete, because %d ports are required for peer %@\n", a1, Count, ValueAtIndex);
        }

        v20 = 0;
        goto LABEL_27;
      }
    }
  }

  if (gLogCategory_APSNetworkClockPTP <= 30 && (gLogCategory_APSNetworkClockPTP != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APSNetworkClockPTP, "OSStatus ptpClock_isClockPortMatrixComplete(APSNetworkClockRef, void *, Boolean *)", 33554462, "[%{ptr}] Clock port matrix is complete.\n", a1);
  }

  v20 = 1;
LABEL_27:
  *a3 = v20;
  CFRelease(v13);
  return 0;
}

uint64_t ptpClock_ConvertNetworkTimeToUpTicks(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v10 = *MEMORY[0x277D85DE8];
  CMTimeMake(&v9, 1000000000 * *(a2 + 16) + ((1000000000 * *(a2 + 12)) >> 32), 1000000000);
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v8 = *MEMORY[0x277CC0898];
  v6 = *(DerivedStorage + 72);
  if (v6)
  {
    [v6 cm8021ASClock];
    CM8021ASClockGetHostTimeForClockTime();
  }

  else
  {
    APSLogErrorAt(0);
  }

  v9.value = v8;
  v9.timescale = DWORD2(v8);
  APSLogErrorAt(0);
  if (gLogCategory_APSNetworkClockPTP <= 90 && (gLogCategory_APSNetworkClockPTP != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APSNetworkClockPTP, "OSStatus ptpClock_ConvertNetworkTimeToUpTicks(APSNetworkClockRef, APSNetworkTime, uint64_t *)", 33554522, "[%{ptr}] grandmasterID %llu, inNetworkTime.timelineID %llu\n", a1, 0, *a2);
  }

  return 4294895322;
}

uint64_t ptpClock_ConvertUpTicksToNetworkTime(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v13 = *MEMORY[0x277D85DE8];
  CMBaseObjectGetDerivedStorage();
  v11 = 0;
  memset(&v10, 0, sizeof(v10));
  CMClockMakeHostTimeFromSystemUnits(&v10, a2);
  FigSimpleMutexLock();
  v12 = v10;
  ptpClock_getClockTimeForHostTime(&time, a1, &v12.value, &v11);
  v12.value = time.value;
  v12.timescale = time.timescale;
  if ((time.flags & 0x1D) == 1)
  {
    time.value = v12.value;
    time.timescale = v12.timescale;
    Seconds = CMTimeGetSeconds(&time);
    v7 = 0;
    *a3 = v11;
    *(a3 + 8) = vcvtd_n_u64_f64(Seconds - floor(Seconds), 0x40uLL);
    *(a3 + 16) = vcvtmd_s64_f64(Seconds);
    *(a3 + 20) = 0;
  }

  else
  {
    APSLogErrorAt(0);
    v7 = 4294895322;
  }

  FigSimpleMutexUnlock();
  return v7;
}

uint64_t ptpClock_getClockTimeForHostTime(uint64_t a1, uint64_t a2, __int128 *a3, uint64_t a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v6 = MEMORY[0x277CC0898];
  *(a1 + 16) = *(MEMORY[0x277CC0898] + 16);
  *a1 = *v6;
  v7 = *(DerivedStorage + 72);
  if (v7)
  {
    [v7 cm8021ASClock];
    return CM8021ASClockGetClockTimeForHostTime();
  }

  else
  {

    return APSLogErrorAt(0);
  }
}

uint64_t ptpClock_GetSynchronizedNetworkTime(uint64_t a1, uint64_t a2)
{
  v12 = *MEMORY[0x277D85DE8];
  CMBaseObjectGetDerivedStorage();
  memset(&v10, 0, sizeof(v10));
  HostTimeClock = CMClockGetHostTimeClock();
  CMClockGetTime(&v10, HostTimeClock);
  v9 = 0;
  FigSimpleMutexLock();
  v11 = v10;
  ptpClock_getClockTimeForHostTime(&time, a1, &v11.value, &v9);
  v11.value = time.value;
  v11.timescale = time.timescale;
  if ((time.flags & 0x1D) == 1)
  {
    time.value = v11.value;
    time.timescale = v11.timescale;
    Seconds = CMTimeGetSeconds(&time);
    v6 = 0;
    *a2 = v9;
    *(a2 + 8) = vcvtd_n_u64_f64(Seconds - floor(Seconds), 0x40uLL);
    *(a2 + 16) = vcvtmd_s64_f64(Seconds);
    *(a2 + 20) = 0;
  }

  else
  {
    APSLogErrorAt(0);
    v6 = 4294895322;
  }

  FigSimpleMutexUnlock();
  return v6;
}

uint64_t ptpClock_SetProperty(uint64_t a1, uint64_t a2)
{
  CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  if (a2)
  {
    if (gLogCategory_APSNetworkClockPTP <= 90 && (gLogCategory_APSNetworkClockPTP != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_APSNetworkClockPTP, "OSStatus ptpClock_SetProperty(CMBaseObjectRef, CFStringRef, const void *)", 33554522, "[%{ptr}] Unknown property key %@\n", a1, a2);
    }

    v4 = 4294954509;
  }

  else
  {
    APSLogErrorAt(0);
    v4 = 4294895325;
  }

  FigSimpleMutexUnlock();
  return v4;
}

uint64_t ptpClock_CopyProperty(uint64_t a1, CFTypeRef cf1, uint64_t a3, CFTypeRef *a4)
{
  if (!CFEqual(cf1, @"NetworkClock_Type"))
  {
    if (CFEqual(cf1, @"PortLocal"))
    {
      v7 = *MEMORY[0x277CBEFF0];
      goto LABEL_5;
    }

    DerivedStorage = CMBaseObjectGetDerivedStorage();
    FigSimpleMutexLock();
    if (CFEqual(cf1, @"SourceClock"))
    {
      v11 = *(DerivedStorage + 80);
      if (!v11)
      {
        v8 = 4294895323;
LABEL_27:
        APSLogErrorAt(v11);
        FigSimpleMutexUnlock();
        return v8;
      }

      goto LABEL_14;
    }

    if (CFEqual(cf1, @"IsStarted"))
    {
      v12 = MEMORY[0x277CBED28];
      if (!*(DerivedStorage + 88))
      {
        v12 = MEMORY[0x277CBED10];
      }

LABEL_13:
      v11 = *v12;
LABEL_14:
      *a4 = CFRetain(v11);
      goto LABEL_15;
    }

    if (CFEqual(cf1, @"IsLocked"))
    {
      v13 = *(DerivedStorage + 72);
      if (v13)
      {
        [v13 cm8021ASClock];
        IsLocked = CM8021ASClockIsLocked();
        v12 = MEMORY[0x277CBED10];
        if (IsLocked)
        {
          v12 = MEMORY[0x277CBED28];
        }

        goto LABEL_13;
      }

      goto LABEL_25;
    }

    if (CFEqual(cf1, @"DiagnosticString"))
    {
      v15 = *(DerivedStorage + 72);
      if (!v15)
      {
LABEL_25:
        v8 = 4294895323;
LABEL_26:
        v11 = v8;
        goto LABEL_27;
      }

      [v15 cm8021ASClock];
      v11 = CM8021ASClockCopyProperty();
      if (v11)
      {
        v8 = v11;
        goto LABEL_27;
      }
    }

    else
    {
      if (!CFEqual(cf1, @"Metrics"))
      {
        if (gLogCategory_APSNetworkClockPTP <= 90 && (gLogCategory_APSNetworkClockPTP != -1 || _LogCategory_Initialize()))
        {
          LogPrintF(&gLogCategory_APSNetworkClockPTP, "OSStatus ptpClock_copyPropertyInternal(APSNetworkClockRef, CFStringRef, CFAllocatorRef, void *)", 33554522, "[%{ptr}] Unknown property key %@\n", a1, cf1);
        }

        v8 = 4294954509;
        goto LABEL_26;
      }

      v11 = ptpClock_copyClockMetrics(a1, a4);
      if (v11)
      {
        v8 = v11;
        goto LABEL_27;
      }
    }

LABEL_15:
    FigSimpleMutexUnlock();
    return 0;
  }

  v7 = @"NetworkClockType_PTP";
LABEL_5:
  v8 = 0;
  *a4 = CFRetain(v7);
  return v8;
}

uint64_t ptpClock_copyClockMetrics(uint64_t a1, CFTypeRef *a2)
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  v2 = *(CMBaseObjectGetDerivedStorage() + 72);
  if (!v2)
  {
    v4 = -6709;
    goto LABEL_7;
  }

  [v2 cm8021ASClock];
  v3 = CM8021ASClockCopyProperty();
  *(v8 + 6) = v3;
  if (!v3)
  {
    v4 = -71974;
    APSLogErrorAt(0);
LABEL_7:
    *(v8 + 6) = v4;
    goto LABEL_4;
  }

  APSLogErrorAt(v3);
LABEL_4:
  v5 = *(v8 + 6);
  _Block_object_dispose(&v7, 8);
  return v5;
}

void sub_2222D68FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __ptpClock_copyClockMetrics_block_invoke(uint64_t a1, const void *a2, uint64_t a3)
{
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    if (*(a1 + 40))
    {
      FigCFDictionarySetValueFromKeyInDict();
      FigCFDictionarySetValueFromKeyInDict();
      FigCFDictionarySetValueFromKeyInDict();
      FigCFDictionarySetValueFromKeyInDict();
      FigCFDictionarySetValueFromKeyInDict();
      FigCFDictionarySetValueFromKeyInDict();
      FigCFDictionarySetValueFromKeyInDict();
      FigCFDictionarySetValueFromKeyInDict();
      FigCFDictionarySetValueFromKeyInDict();
      FigCFDictionarySetValueFromKeyInDict();
      FigCFDictionarySetValueFromKeyInDict();
      FigCFDictionarySetValueFromKeyInDict();
      FigCFDictionarySetValueFromKeyInDict();
      FigCFDictionarySetValueFromKeyInDict();
      CFDictionarySetValue(*(a1 + 40), a2, Mutable);
      if (!Mutable)
      {
        return;
      }
    }

    else
    {
      APSLogErrorAt(0);
      *(*(*(a1 + 32) + 8) + 24) = -71970;
      if (!Mutable)
      {
        return;
      }
    }

    CFRelease(Mutable);
  }
}

__CFString *ptpClock_CopyDebugDescription(uint64_t a1)
{
  Mutable = CFStringCreateMutable(*MEMORY[0x277CBECE8], 0);
  CFStringAppendFormat(Mutable, 0, @"<APNetworkPTPClock %p>", a1);
  return Mutable;
}

void ptpClock_Finalize(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APSNetworkClockPTP <= 50 && (gLogCategory_APSNetworkClockPTP != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APSNetworkClockPTP, "void ptpClock_Finalize(CMBaseObjectRef)", 33554482, "[%{ptr}] <AirPlayClock> Finalizing APSNetworkClock PTP\n", a1);
  }

  if (*DerivedStorage)
  {
    dispatch_release(*DerivedStorage);
    *DerivedStorage = 0;
  }

  FigSimpleMutexDestroy();
  if (*(DerivedStorage + 72) || *(DerivedStorage + 80))
  {
    if (gLogCategory_APSNetworkClockPTP <= 90 && (gLogCategory_APSNetworkClockPTP != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_APSNetworkClockPTP, "void ptpClock_Finalize(CMBaseObjectRef)", 33554522, "[%{ptr}] <AirPlayClock> The clock was NOT stopped prior to being released!\n", a1);
    }

    *(DerivedStorage + 72) = 0;
    v3 = *(DerivedStorage + 80);
    if (v3)
    {
      CFRelease(v3);
      *(DerivedStorage + 80) = 0;
    }
  }

  v4 = *(DerivedStorage + 24);
  if (v4)
  {
    CFRelease(v4);
    *(DerivedStorage + 24) = 0;
  }

  v5 = *(DerivedStorage + 32);
  if (v5)
  {
    CFRelease(v5);
    *(DerivedStorage + 32) = 0;
  }

  v6 = *(DerivedStorage + 56);
  if (v6)
  {
    CFRelease(v6);
    *(DerivedStorage + 56) = 0;
  }

  v7 = *(DerivedStorage + 48);
  if (v7)
  {
    CFRelease(v7);
    *(DerivedStorage + 48) = 0;
  }

  v8 = *(DerivedStorage + 40);
  if (v8)
  {
    CFRelease(v8);
    *(DerivedStorage + 40) = 0;
  }
}

uint64_t APSRTPSeqNumDictionaryGetTypeID()
{
  if (APSRTPSeqNumDictionaryGetTypeID_sOnce != -1)
  {
    dispatch_once_f(&APSRTPSeqNumDictionaryGetTypeID_sOnce, &APSRTPSeqNumDictionaryGetTypeID_sTypeID, rtpSeqNumDict_registerClass);
  }

  return APSRTPSeqNumDictionaryGetTypeID_sTypeID;
}

uint64_t rtpSeqNumDict_registerClass(uint64_t *a1)
{
  result = _CFRuntimeRegisterClass();
  *a1 = result;
  return result;
}

__CFString *rtpSeqNumDict_CopyFormattingDesc(void *a1, const __CFDictionary *a2)
{
  Mutable = CFStringCreateMutable(*MEMORY[0x277CBECE8], 0);
  if (Mutable)
  {
    v5 = CFGetAllocator(a1);
    CFStringAppendFormat(Mutable, a2, @"<APSRTPSeqNumDictionary %p [%p]>{\n", a1, v5);
    v7[0] = Mutable;
    v7[1] = a2;
    v7[2] = a1[4];
    v8[0] = a1;
    v8[1] = 0;
    v8[2] = rtpSeqNumDict_copyFormattingDescApplier;
    v8[3] = v7;
    if (!APSRTPSeqNumRangeSetApplyFunctionWithFilterRange(a1[2], 0, 0xFFFFFFFF, rtpSeqNumDict_rangeSetApplier, v8))
    {
      CFStringAppend(Mutable, @"}");
    }
  }

  return Mutable;
}

uint64_t rtpSeqNumDict_rangeSetApplier(unint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2)
  {
    v3 = -1;
  }

  else
  {
    v3 = 1;
  }

  if ((a1 & 0xFFFF0000) == 0)
  {
    return 0;
  }

  v5 = a1;
  v6 = 0;
  v7 = ((v2 << 31 >> 31) & ((a1 >> 16) - 1)) + a1;
  while (1)
  {
    Value = CFDictionaryGetValue(*(*a2 + 24), v7);
    result = (*(a2 + 16))(v7, Value, *(a2 + 24));
    if (result)
    {
      break;
    }

    LOWORD(v7) = v7 + v3;
    if (++v6 >= HIWORD(v5))
    {
      return 0;
    }
  }

  return result;
}

uint64_t rtpSeqNumDict_copyFormattingDescApplier(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  if (v5)
  {
    v6 = v5(a2);
    CFStringAppendFormat(*a3, *(a3 + 8), @"%u = %@;\n", a1, v6);
    if (v6)
    {
      CFRelease(v6);
    }
  }

  else
  {
    CFStringAppendFormat(*a3, *(a3 + 8), @"%u = %p;\n", a1, a2);
  }

  return 0;
}

void rtpSeqNumDict_Finalize(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = *(a1 + 24);
  if (v3)
  {

    CFRelease(v3);
  }
}

uint64_t APSRTPSeqNumDictionaryCreateMutable(const __CFAllocator *a1, const CFDictionaryValueCallBacks *a2, void *a3)
{
  if (!a3)
  {
    return 4294960591;
  }

  if (APSRTPSeqNumDictionaryGetTypeID_sOnce != -1)
  {
    dispatch_once_f(&APSRTPSeqNumDictionaryGetTypeID_sOnce, &APSRTPSeqNumDictionaryGetTypeID_sTypeID, rtpSeqNumDict_registerClass);
  }

  Instance = _CFRuntimeCreateInstance();
  if (!Instance)
  {
    return 4294960568;
  }

  v7 = Instance;
  Instance[2] = 0;
  Instance[3] = 0;
  v8 = Instance + 2;
  Instance[4] = 0;
  if (a2)
  {
    copyDescription = a2->copyDescription;
  }

  else
  {
    copyDescription = 0;
  }

  Instance[4] = copyDescription;
  memset(&v13, 0, 40);
  v13.hash = rtpSeqNumDictKey_Hash;
  v10 = CFDictionaryCreateMutable(a1, 0, &v13, a2);
  v7[3] = v10;
  if (v10)
  {
    Mutable = APSRTPSeqNumRangeSetCreateMutable(a1, v8);
    if (!Mutable)
    {
      *a3 = v7;
      return Mutable;
    }
  }

  else
  {
    Mutable = 4294960568;
  }

  CFRelease(v7);
  return Mutable;
}

uint64_t APSRTPSeqNumDictionaryCreateMutableCopy(const __CFAllocator *a1, void *a2, uint64_t **a3)
{
  v3 = 4294960591;
  if (a2 && a3)
  {
    if (APSRTPSeqNumDictionaryGetTypeID_sOnce != -1)
    {
      dispatch_once_f(&APSRTPSeqNumDictionaryGetTypeID_sOnce, &APSRTPSeqNumDictionaryGetTypeID_sTypeID, rtpSeqNumDict_registerClass);
    }

    Instance = _CFRuntimeCreateInstance();
    if (!Instance)
    {
      return 4294960568;
    }

    v8 = Instance;
    Instance[2] = 0;
    Instance[3] = 0;
    v9 = Instance + 2;
    Instance[4] = 0;
    v10 = a2[3];
    Instance[4] = a2[4];
    MutableCopy = CFDictionaryCreateMutableCopy(a1, 0, v10);
    v9[1] = MutableCopy;
    if (MutableCopy)
    {
      v3 = APSRTPSeqNumRangeSetCreateMutableCopy(a1, a2[2], v9);
      if (!v3)
      {
        *a3 = v8;
        return v3;
      }
    }

    else
    {
      v3 = 4294960568;
    }

    CFRelease(v8);
  }

  return v3;
}

uint64_t APSRTPSeqNumDictionarySetValue(uint64_t a1, void *key, void *a3)
{
  value = 0;
  result = 4294960591;
  if (a1 && a3)
  {
    v6 = key;
    ValueIfPresent = CFDictionaryGetValueIfPresent(*(a1 + 24), key, &value);
    if (ValueIfPresent)
    {
      v8 = value == a3;
    }

    else
    {
      v8 = 0;
    }

    if (v8)
    {
      return 0;
    }

    if (ValueIfPresent || (result = APSRTPSeqNumRangeSetAddSeqNumRange(*(a1 + 16), v6 | 0x10000), !result))
    {
      CFDictionarySetValue(*(a1 + 24), v6, a3);
      return 0;
    }
  }

  return result;
}

CFDictionaryRef *APSRTPSeqNumDictionaryGetValue(CFDictionaryRef *result, void *key)
{
  if (result)
  {
    return CFDictionaryGetValue(result[3], key);
  }

  return result;
}

uint64_t APSRTPSeqNumDictionaryRemoveAllValues(uint64_t a1)
{
  if (!a1)
  {
    return 4294960591;
  }

  v2 = *(a1 + 16);
  if (!v2)
  {
    return 4294960591;
  }

  CFArrayRemoveAllValues(*(v2 + 16));
  *(v2 + 24) = 0;
  CFDictionaryRemoveAllValues(*(a1 + 24));
  return 0;
}

uint64_t APSRTPSeqNumDictionaryRemoveValue(uint64_t a1, unsigned int a2)
{
  if (!a1)
  {
    return 4294960591;
  }

  v3 = a2;
  result = APSRTPSeqNumRangeSetRemoveSeqNumRange(*(a1 + 16), a2 | 0x10000);
  if (!result)
  {
    CFDictionaryRemoveValue(*(a1 + 24), v3);
    return 0;
  }

  return result;
}

uint64_t APSRTPSeqNumDictionaryRemoveValuesWithinSeqNumRange(uint64_t a1, unsigned int a2)
{
  if (!a1 || a2 > 0x8000FFFF)
  {
    return 4294960591;
  }

  if (CFDictionaryGetCount(*(a1 + 24)) < 1 || (a2 & 0xFFFF0000) == 0)
  {
    return 0;
  }

  Span = APSRTPSeqNumRangeSetGetSpan(*(a1 + 16));
  v6 = APSRTPSeqNumRangeIntersection(Span, a2);
  if (Span == v6 || (v6 | Span) < 0x10000 || Span >= 0x80010000 && v6 >= 0x80010000)
  {
    CFDictionaryRemoveAllValues(*(a1 + 24));
  }

  else
  {
    result = APSRTPSeqNumRangeSetApplyFunctionWithFilterRange(*(a1 + 16), 0, a2, rtpSeqNumDict_removeValueRangeApplier, a1);
    if (result)
    {
      return result;
    }
  }

  v7 = *(a1 + 16);

  return APSRTPSeqNumRangeSetRemoveSeqNumRange(v7, a2);
}

uint64_t rtpSeqNumDict_removeValueRangeApplier(unsigned int a1, uint64_t a2)
{
  if (a1 >= 0x10000)
  {
    v3 = HIWORD(a1);
    v4 = a1;
    do
    {
      CFDictionaryRemoveValue(*(a2 + 24), v4++);
      --v3;
    }

    while (v3);
  }

  return 0;
}

uint64_t APSRTPSeqNumDictionaryRemoveValuesWithinSeqNumRangeSet(uint64_t a1, unint64_t a2)
{
  result = 4294960591;
  if (a1 && a2)
  {
    if (CFDictionaryGetCount(*(a1 + 24)) >= 1 && *(a2 + 24) && (Span = APSRTPSeqNumRangeSetGetSpan(*(a1 + 16)), v6 = APSRTPSeqNumRangeSetGetSpan(a2), APSRTPSeqNumRangeIntersection(Span, v6) >= 0x10000))
    {
      result = APSRTPSeqNumRangeSetApplyFunctionWithFilterRangeSet(*(a1 + 16), 0, a2, rtpSeqNumDict_removeValueRangeApplier, a1);
      if (!result)
      {
        v7 = *(a1 + 16);

        return APSRTPSeqNumRangeSetRemoveSeqNumRangeSet(v7, a2);
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t APSRTPSeqNumDictionaryGetCount(uint64_t result)
{
  if (result)
  {
    LOWORD(result) = CFDictionaryGetCount(*(result + 24));
  }

  return result;
}

uint64_t APSRTPSeqNumDictionaryGetSeqNumRangeCount(uint64_t result)
{
  if (result)
  {
    v1 = *(result + 16);
    if (v1)
    {
      LOWORD(result) = CFArrayGetCount(*(v1 + 16));
    }

    else
    {
      LOWORD(result) = 0;
    }
  }

  return result;
}

uint64_t APSRTPSeqNumDictionaryGetSeqNumRangeSet(uint64_t result)
{
  if (result)
  {
    return *(result + 16);
  }

  return result;
}

uint64_t APSRTPSeqNumDictionaryGetSpan(uint64_t result)
{
  if (result)
  {
    return APSRTPSeqNumRangeSetGetSpan(*(result + 16));
  }

  return result;
}

uint64_t APSRTPSeqNumDictionaryGetFirstSeqNum(uint64_t a1, _WORD *a2)
{
  result = 4294960591;
  if (a1 && a2)
  {
    v5 = *(a1 + 16);
    v6 = 0;
    if (v5)
    {
      result = APSRTPSeqNumRangeSetGetFirstSeqNumRange(v5, &v6);
      if (!result)
      {
        *a2 = v6;
      }
    }

    else
    {
      return 4294960591;
    }
  }

  return result;
}

uint64_t APSRTPSeqNumDictionaryGetLastSeqNum(uint64_t a1, _WORD *a2)
{
  if (a1 && a2)
  {
    return APSRTPSeqNumRangeSetGetLastSeqNum(*(a1 + 16), a2);
  }

  else
  {
    return 4294960591;
  }
}

uint64_t APSRTPSeqNumDictionaryGetSeqNumAfterSeqNum(uint64_t a1, uint64_t a2, _WORD *a3)
{
  result = 4294960591;
  if (a1 && a3)
  {
    v6 = a2;
    v7 = a2 + 1;
    if (CFDictionaryContainsKey(*(a1 + 24), (a2 + 1)))
    {
      result = 0;
      *a3 = v7;
    }

    else
    {
      v8 = *(a1 + 16);

      return APSRTPSeqNumRangeSetGetSeqNumAfterSeqNum(v8, v6, a3);
    }
  }

  return result;
}

uint64_t APSRTPSeqNumDictionaryGetSeqNumBeforeSeqNum(uint64_t a1, uint64_t a2, _WORD *a3)
{
  result = 4294960591;
  if (a1 && a3)
  {
    v6 = a2;
    v7 = a2 - 1;
    if (CFDictionaryContainsKey(*(a1 + 24), (a2 - 1)))
    {
      result = 0;
      *a3 = v7;
    }

    else
    {
      v8 = *(a1 + 16);

      return APSRTPSeqNumRangeSetGetSeqNumBeforeSeqNum(v8, v6, a3);
    }
  }

  return result;
}

uint64_t APSRTPSeqNumDictionaryApplyFunction(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6[0] = a1;
  v6[1] = a2;
  v4 = 4294960591;
  v6[2] = a3;
  v6[3] = a4;
  if (a1 && a3)
  {
    return APSRTPSeqNumRangeSetApplyFunctionWithFilterRange(*(a1 + 16), a2, 0xFFFFFFFF, rtpSeqNumDict_rangeSetApplier, v6);
  }

  return v4;
}

uint64_t APSRTPSeqNumDictionaryApplyFunctionWithFilterRange(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4, uint64_t a5)
{
  v7[0] = a1;
  v7[1] = a2;
  v5 = 4294960591;
  v7[2] = a4;
  v7[3] = a5;
  if (a1 && a4)
  {
    return APSRTPSeqNumRangeSetApplyFunctionWithFilterRange(*(a1 + 16), a2, a3, rtpSeqNumDict_rangeSetApplier, v7);
  }

  return v5;
}

uint64_t APSRTPSeqNumDictionaryApplyBlock(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = 4294960591;
  if (a1 && a3)
  {
    v5[0] = a1;
    v5[1] = a2;
    v5[2] = rtpSeqNumDict_blockApplier;
    v5[3] = a3;
    return APSRTPSeqNumRangeSetApplyFunctionWithFilterRange(*(a1 + 16), a2, 0xFFFFFFFF, rtpSeqNumDict_rangeSetApplier, v5);
  }

  return v3;
}

uint64_t APSRTPSeqNumDictionaryApplyBlockWithFilterRange(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v4 = 4294960591;
  if (a1 && a4)
  {
    v6[0] = a1;
    v6[1] = a2;
    v6[2] = rtpSeqNumDict_blockApplier;
    v6[3] = a4;
    return APSRTPSeqNumRangeSetApplyFunctionWithFilterRange(*(a1 + 16), a2, a3, rtpSeqNumDict_rangeSetApplier, v6);
  }

  return v4;
}

uint64_t APSRTPSeqNumDictionaryFilterWithRangeSet(void *a1, unint64_t a2)
{
  cf = 0;
  v12 = 0;
  v2 = 4294960591;
  if (a1 && a2)
  {
    Span = APSRTPSeqNumRangeSetGetSpan(a1[2]);
    if (Span < 0x10000)
    {
      v2 = 0;
    }

    else
    {
      v6 = Span;
      v7 = APSRTPSeqNumRangeSetGetSpan(a2);
      if (v7 >= 0x10000 && APSRTPSeqNumRangeIntersection(v6, v7) >> 16)
      {
        v8 = CFGetAllocator(a1);
        v9 = APSRTPSeqNumRangeSetCreateMutable(v8, &cf);
        if (!v9)
        {
          LOWORD(v12) = v6;
          v9 = APSRTPSeqNumRangeSetApplyFunctionWithFilterRange(a2, 0, v6, rtpSeqNumDict_invertFilterApplier, &cf);
          if (!v9)
          {
            v9 = rtpSeqNumDict_invertFilterApplier((HIWORD(v6) + v6), &cf);
            if (!v9)
            {
              v9 = APSRTPSeqNumRangeSetApplyFunctionWithFilterRangeSet(a1[2], 0, cf, rtpSeqNumDict_removeValueRangeApplier, a1);
              if (!v9)
              {
                v9 = APSRTPSeqNumRangeSetFilterWithRangeSet(a1[2], a2);
              }
            }
          }
        }
      }

      else
      {
        v9 = APSRTPSeqNumDictionaryRemoveAllValues(a1);
      }

      v2 = v9;
    }

    if (cf)
    {
      CFRelease(cf);
    }
  }

  return v2;
}

uint64_t rtpSeqNumDict_invertFilterApplier(int a1, uint64_t *a2)
{
  v4 = *(a2 + 4);
  if (v4 == a1 || ((v5 = *a2, v6 = (a1 - v4), v7 = v4 & 0xFFFFFFFF0000FFFFLL | ((a1 - v4) << 16), v6 <= 0x8000) ? (v8 = v7) : (v8 = 0xFFFFFFFFLL), result = APSRTPSeqNumRangeSetAddSeqNumRange(v5, v8), !result))
  {
    result = 0;
    *(a2 + 4) = HIWORD(a1) + a1;
  }

  return result;
}

uint64_t APSRTPSeqNumDictionaryHintLimitSeqNum(uint64_t a1, int a2)
{
  if (!a1)
  {
    return 4294960591;
  }

  v2 = *(a1 + 16);
  if (!v2)
  {
    return 4294960591;
  }

  if (*(v2 + 28) && ((*(v2 + 26) - a2) & 0x8000) == 0)
  {
    return 0;
  }

  result = 0;
  *(v2 + 26) = a2;
  *(v2 + 28) = 1;
  return result;
}

uint64_t APSRTPSeqNumDictionaryGetLimitSeqNum(uint64_t a1, _WORD *a2)
{
  result = 4294960591;
  if (a1)
  {
    if (a2)
    {
      v4 = *(a1 + 16);
      if (v4)
      {
        if (*(v4 + 28))
        {
          result = 0;
          *a2 = *(v4 + 26);
        }

        else
        {
          return 4294960578;
        }
      }
    }
  }

  return result;
}

__CFData *CreateBinaryTXTRecordFromTXTRecordBytes(void *txtRecord, uint64_t txtLen, int *a3)
{
  v4 = txtLen;
  v5 = txtRecord;
  v56 = *MEMORY[0x277D85DE8];
  Count = TXTRecordGetCount(txtLen, txtRecord);
  v51 = 0u;
  v52 = 0u;
  v49 = 0u;
  v50 = 0u;
  v47 = 0u;
  v48 = 0u;
  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  *key = 0u;
  v38 = 0u;
  value = 0;
  valueLen = 0;
  bytes = 1;
  v31 = 0;
  Mutable = CFDataCreateMutable(0, 0);
  v8 = Mutable;
  if (!Mutable)
  {
    APSLogErrorAt(0);
    v27 = -6728;
    goto LABEL_45;
  }

  CFDataAppendBytes(Mutable, &bytes, 1);
  v9 = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (!v9)
  {
    APSLogErrorAt(0);
    v27 = -6728;
    goto LABEL_62;
  }

  v10 = v9;
  v29 = a3;
  _LogNewBytes(v8, 0, &v31);
  if (!Count)
  {
LABEL_44:
    CFRelease(v10);
    v27 = 0;
    a3 = v29;
    goto LABEL_45;
  }

  v11 = 0;
  v30 = Count;
  while (1)
  {
    if (TXTRecordGetItemAtIndex(v4, v5, v11, 0x100u, key, &valueLen, &value))
    {
      APSLogErrorAt(0);
      goto LABEL_59;
    }

    v12 = value;
    if (*key == 6580583)
    {
      break;
    }

    appended = _AppendKeyInfoByName(v8, v10, key, value, valueLen);
    if (appended)
    {
      v27 = appended;
      APSLogErrorAt(appended);
      goto LABEL_60;
    }

LABEL_8:
    _LogNewBytes(v8, key, &v31);
    if (Count <= ++v11)
    {
      goto LABEL_44;
    }
  }

  v53 = 0;
  v54 = 0;
  v55 = 0;
  v36 = 0;
  v35 = 0;
  if (!value)
  {
    APSLogErrorAt(0);
    v27 = -6705;
    v23 = 4294960591;
    goto LABEL_68;
  }

  if (valueLen)
  {
    v14 = v8;
    v15 = v5;
    v16 = v4;
    v17 = v10;
    v18 = 0;
    v19 = value + valueLen;
    do
    {
      v20 = memchr(v12, 43, (v19 - v12));
      if (v20 && v18 == 2)
      {
        if (gLogCategory_APSBinaryTXTRecord <= 60 && (gLogCategory_APSBinaryTXTRecord != -1 || _LogCategory_Initialize()))
        {
          LogPrintF(&gLogCategory_APSBinaryTXTRecord, "OSStatus _SplitString(const char *, uint8_t, int, const char **, uint8_t *)", 33554492, "Too many separators\n");
        }

        v20 = 0;
      }

      (&v53)[v18] = v12;
      if (v20)
      {
        v21 = v20;
      }

      else
      {
        v21 = v19;
      }

      if (v20)
      {
        v22 = v20 + 1;
      }

      else
      {
        v22 = v19;
      }

      *(&v35 + v18) = v21 - v12;
      if (v18 > 1)
      {
        break;
      }

      ++v18;
      v12 = v22;
    }

    while (v22 < v19);
    v10 = v17;
    v4 = v16;
    v5 = v15;
    v8 = v14;
    Count = v30;
    if (v53)
    {
      if (v35)
      {
        v23 = _AppendKeyInfoByName(v8, v10, "gid", v53, v35);
        if (v23)
        {
          v27 = v23;
        }

        else
        {
          v24 = v54;
          if (!v54)
          {
            goto LABEL_8;
          }

          v25 = HIBYTE(v35);
          if (HIBYTE(v35) > 3u)
          {
            v26 = HIBYTE(v35);
            goto LABEL_38;
          }

          v23 = _AppendKeyInfoByName(v8, v10, "bin_grp_cmid", v54, HIBYTE(v35));
          if (v23)
          {
            v27 = v23;
          }

          else
          {
            v24 = v55;
            if (!v55)
            {
              goto LABEL_8;
            }

            v26 = v36;
            if (!v36)
            {
              goto LABEL_41;
            }

LABEL_38:
            v23 = _AppendKeyInfoByName(v8, v10, "bin_grp_rcid", v24, v26);
            if (!v23)
            {
              if (v25 < 4 || !v55)
              {
                goto LABEL_8;
              }

LABEL_41:
              if (gLogCategory_APSBinaryTXTRecord <= 90)
              {
                a3 = v29;
                if (gLogCategory_APSBinaryTXTRecord != -1 || _LogCategory_Initialize())
                {
                  LogPrintF(&gLogCategory_APSBinaryTXTRecord, "OSStatus _AppendKeyGroupInfo(CFMutableDataRef, CFMutableDictionaryRef, const char *, uint8_t)", 33554522, "Error processing value for %s\n");
                }

                goto LABEL_52;
              }

              goto LABEL_59;
            }

            v27 = v23;
          }
        }

LABEL_68:
        APSLogErrorAt(v23);
        a3 = v29;
        goto LABEL_53;
      }
    }
  }

  if (gLogCategory_APSBinaryTXTRecord > 90)
  {
LABEL_59:
    v27 = -6705;
LABEL_60:
    a3 = v29;
    goto LABEL_61;
  }

  a3 = v29;
  if (gLogCategory_APSBinaryTXTRecord != -1 || _LogCategory_Initialize())
  {
    LogPrintF(&gLogCategory_APSBinaryTXTRecord, "OSStatus _AppendKeyGroupInfo(CFMutableDataRef, CFMutableDictionaryRef, const char *, uint8_t)", 33554522, "Error parsing value for %s\n");
  }

LABEL_52:
  v27 = -6705;
LABEL_53:
  if (gLogCategory_APSBinaryTXTRecord <= 90 && (gLogCategory_APSBinaryTXTRecord != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APSBinaryTXTRecord, "CFDataRef CreateBinaryTXTRecordFromTXTRecordBytes(const uint8_t *, uint16_t, OSStatus *)", 33554522, "Error appending key data for %s: %#m\n", key);
  }

LABEL_61:
  CFRelease(v10);
LABEL_62:
  CFRelease(v8);
  v8 = 0;
LABEL_45:
  if (a3)
  {
    *a3 = v27;
  }

  return v8;
}

CFIndex _LogNewBytes(const __CFData *a1, const char *a2, CFIndex *a3)
{
  result = CFDataGetLength(a1);
  v7 = *a3;
  if (result != *a3)
  {
    v8 = result;
    if (gLogCategory_APSBinaryTXTRecord <= 30)
    {
      if (gLogCategory_APSBinaryTXTRecord == -1)
      {
        result = _LogCategory_Initialize();
        if (!result)
        {
          goto LABEL_10;
        }

        v7 = *a3;
      }

      v9 = &CFDataGetBytePtr(a1)[*a3];
      result = LogPrintF(&gLogCategory_APSBinaryTXTRecord, "void _LogNewBytes(CFDataRef, const char *, CFIndex *)", 33554462, "DATA %04X: %H%?{end} (%s)\n", v7, v9, v8 - *a3, 64, a2 == 0, a2);
    }

LABEL_10:
    *a3 = v8;
    return result;
  }

  if (a2)
  {
    if (gLogCategory_APSBinaryTXTRecord <= 30)
    {
      if (gLogCategory_APSBinaryTXTRecord != -1)
      {
        return LogPrintF(&gLogCategory_APSBinaryTXTRecord, "void _LogNewBytes(CFDataRef, const char *, CFIndex *)", 33554462, "Field skipped (%s)\n", a2);
      }

      result = _LogCategory_Initialize();
      if (result)
      {
        return LogPrintF(&gLogCategory_APSBinaryTXTRecord, "void _LogNewBytes(CFDataRef, const char *, CFIndex *)", 33554462, "Field skipped (%s)\n", a2);
      }
    }
  }

  return result;
}

uint64_t _AppendKeyInfoByName(__CFData *a1, uint64_t a2, char *__s2, char *a4, CFIndex a5)
{
  v50 = 0;
  KeyInfo = _GetKeyInfo(0, __s2, &v50);
  if (v50)
  {
    if (gLogCategory_APSBinaryTXTRecord <= 90 && (gLogCategory_APSBinaryTXTRecord != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_APSBinaryTXTRecord, "OSStatus _AppendKeyInfoByName(CFMutableDataRef, CFMutableDictionaryRef, const char *, const char *, uint8_t)", 33554522, "Error obtaining key info for %s: %#m\n");
    }
  }

  else
  {
    v9 = KeyInfo;
    if (KeyInfo)
    {
      buffer = 0;
      if (!a4)
      {
        APSLogErrorAt(0);
        LODWORD(v23) = -6705;
        goto LABEL_92;
      }

      v10 = *(KeyInfo + 16);
      if (v10 == 1)
      {
        return 0;
      }

      v53 = 0;
      v52 = 0;
      if (v10 <= 7)
      {
        if ((v10 - 3) < 5)
        {
          __endptr = 0;
          v11 = strndup(a4, a5);
          if (!v11)
          {
            APSLogErrorAt(0);
            v47 = 4294960568;
LABEL_115:
            v52 = 1;
            v53 = v47;
LABEL_116:
            APSLogErrorAt(v47);
            Mutable = 0;
            goto LABEL_48;
          }

          v12 = v11;
          if (a5)
          {
            v48 = a5;
            Mutable = 0;
            v14 = v11;
            while (2)
            {
              v15 = strtoul(v14, &__endptr, 0);
              if (v15 == -1 || __endptr == v14 || (v16 = v15, HIDWORD(v15)))
              {
LABEL_112:
                APSLogErrorAt(0);
                free(v12);
                a5 = v48;
                if (Mutable)
                {
                  CFRelease(Mutable);
                }

                v47 = 4294960591;
                goto LABEL_115;
              }

              v17 = *__endptr;
              if (*__endptr)
              {
                if (v17 == 44)
                {
                  v14 = __endptr + 1;
                  goto LABEL_17;
                }

                goto LABEL_112;
              }

              if (v15)
              {
LABEL_17:
                v18 = 0;
                do
                {
                  bytes = v16;
                  if (!Mutable)
                  {
                    Mutable = CFDataCreateMutable(0, 0);
                    if (!Mutable)
                    {
                      APSLogErrorAt(0);
                      free(v12);
                      v47 = 4294960568;
                      a5 = v48;
                      goto LABEL_115;
                    }
                  }

                  CFDataAppendBytes(Mutable, &bytes, 1);
                  v16 >>= 8;
                  v20 = v18++ < 3;
                  if (!v17)
                  {
                    v20 = v16;
                  }
                }

                while (v20);
                if (v17)
                {
                  continue;
                }
              }

              break;
            }
          }

          else
          {
            Mutable = 0;
          }

          free(v12);
          goto LABEL_55;
        }

        if (v10 == 2)
        {
          Mutable = _CreateTextData(a4, a5, &v53);
          v24 = v53;
          if (!v53)
          {
            goto LABEL_55;
          }

          goto LABEL_62;
        }

LABEL_89:
        v23 = 4294960591;
        APSLogErrorAt(4294960591);
        Mutable = 0;
        goto LABEL_90;
      }

      if (v10 <= 10)
      {
        if ((v10 - 9) >= 2)
        {
          if (v10 != 8)
          {
            goto LABEL_89;
          }

          Mutable = _CreateMACAddressData(a4, a5, &v52, &v53);
          v24 = v53;
          if (v53)
          {
LABEL_62:
            APSLogErrorAt(v24);
            goto LABEL_48;
          }

          goto LABEL_55;
        }

        Mutable = _CreateUUIDData(a4, a5, &v52, &v53);
        v23 = v53;
        if (!v53)
        {
          goto LABEL_55;
        }

        if (gLogCategory_APSBinaryTXTRecord > 50)
        {
LABEL_49:
          if (v52)
          {
            LODWORD(__endptr) = 0;
            TextData = _CreateTextData(a4, a5, &__endptr);
            Mutable = TextData;
            if (!__endptr)
            {
              v27 = 0;
              if (!TextData)
              {
                return 0;
              }

              goto LABEL_56;
            }

            v23 = v53;
            if (!v53)
            {
              goto LABEL_55;
            }
          }

LABEL_90:
          APSLogErrorAt(v23);
          if (!Mutable)
          {
LABEL_92:
            v50 = v23;
            if (gLogCategory_APSBinaryTXTRecord <= 90 && (gLogCategory_APSBinaryTXTRecord != -1 || _LogCategory_Initialize()))
            {
              LogPrintF(&gLogCategory_APSBinaryTXTRecord, "OSStatus _AppendKeyInfoByName(CFMutableDataRef, CFMutableDictionaryRef, const char *, const char *, uint8_t)", 33554522, "Error appending key data for %s: %#m\n");
            }

            return v50;
          }

LABEL_91:
          CFRelease(Mutable);
          goto LABEL_92;
        }

        if (gLogCategory_APSBinaryTXTRecord != -1 || _LogCategory_Initialize())
        {
          LogPrintF(&gLogCategory_APSBinaryTXTRecord, "CFDataRef _CreateKeyData(KeyType, const char *, uint8_t, Boolean *, OSStatus *)", 33554482, "Couldn't parse UUID %.*s");
        }
      }

      else
      {
        if ((v10 - 11) >= 2)
        {
          if (v10 != 13)
          {
            if (v10 != 14)
            {
              goto LABEL_89;
            }

            v21 = APSNANServiceTypeMakeWithString(a4, a5);
            if (!v21)
            {
              v22 = 4294960591;
LABEL_135:
              APSLogErrorAt(0);
              v53 = v22;
              v47 = v22;
              goto LABEL_116;
            }

            if (v21 != 1)
            {
              LOBYTE(__endptr) = v21;
              Mutable = CFDataCreate(*MEMORY[0x277CBECE8], &__endptr, 1);
              if (Mutable)
              {
                goto LABEL_55;
              }

              v22 = 4294960568;
              goto LABEL_135;
            }

            goto LABEL_100;
          }

          LODWORD(__endptr) = 0;
          v35 = CFStringCreateWithBytesNoCopy(*MEMORY[0x277CBECE8], a4, a5, 0x8000100u, 0, *MEMORY[0x277CBED00]);
          v49 = a5;
          if (v35)
          {
            v36 = v35;
            v37 = CFDataCreateMutable(0, 0);
            if (v37)
            {
              Mutable = v37;
              v38 = APSFeaturesCreateFromStringRepresentation(v36, &__endptr);
              if (__endptr)
              {
                APSLogErrorAt(__endptr);
              }

              else
              {
                MutableCopy = CFDataCreateMutableCopy(0, 0, v38);
                if (MutableCopy)
                {
                  v40 = MutableCopy;
                  v41 = 0;
                  while (!APSFeaturesIsEmpty(v40))
                  {
                    v42 = 0;
                    bytes = 0;
                    do
                    {
                      if (APSFeaturesHasFeature(v40, v41 + v42))
                      {
                        bytes |= 1 << v42;
                        APSFeaturesClearFeature(v40, v41 + v42);
                      }

                      ++v42;
                    }

                    while (v42 != 8);
                    CFDataAppendBytes(Mutable, &bytes, 1);
                    v41 += 8;
                  }

                  CFRelease(v40);
                }

                else
                {
                  APSLogErrorAt(0);
                  LODWORD(__endptr) = -6728;
                }
              }

              if (v38)
              {
                CFRelease(v38);
              }

              CFRelease(v36);
              if (__endptr)
              {
                CFRelease(Mutable);
                v43 = __endptr;
                v52 = 1;
                v53 = __endptr;
                if (!__endptr)
                {
LABEL_100:
                  Mutable = 0;
                  goto LABEL_55;
                }

                goto LABEL_138;
              }

LABEL_55:
              v27 = 1;
              if (Mutable)
              {
LABEL_56:
                CFDataAppendBytes(a1, v9, 1);
                if ((*v9 & 0x80000000) == 0 && ((v28 = *(v9 + 4), (v28 - 8) < 5) || v28 == 2))
                {
                  Int64Ranged = CFDictionaryGetInt64Ranged();
                  if (Int64Ranged)
                  {
                    LOBYTE(__endptr) = Int64Ranged | 0x80;
                    p_endptr = &__endptr;
LABEL_74:
                    CFDataAppendBytes(a1, p_endptr, 1);
LABEL_106:
                    CFRelease(Mutable);
                    return 0;
                  }

                  v31 = 1;
                }

                else
                {
                  v31 = 0;
                }

                Length = CFDataGetLength(Mutable);
                if (Length <= 120)
                {
                  v33 = Length;
                  if (v27)
                  {
                    if (Length == 1)
                    {
                      v34 = v31;
                    }

                    else
                    {
                      v34 = 1;
                    }

                    if ((v34 & 1) == 0)
                    {
                      v56.location = 0;
                      v56.length = 1;
                      CFDataGetBytes(Mutable, v56, &buffer);
                      if ((buffer & 0x80000000) == 0)
                      {
                        buffer |= 0x80u;
                        p_endptr = &buffer;
                        goto LABEL_74;
                      }
                    }
                  }

                  else
                  {
                    LOBYTE(__endptr) = 127;
                    CFDataAppendBytes(a1, &__endptr, 1);
                    if (gLogCategory_APSBinaryTXTRecord <= 50 && (gLogCategory_APSBinaryTXTRecord != -1 || _LogCategory_Initialize()))
                    {
                      LogPrintF(&gLogCategory_APSBinaryTXTRecord, "OSStatus _AppendKeyInfo(CFMutableDataRef, CFMutableDictionaryRef, KeyInfo *, const char *, uint8_t)", 33554482, "Field %s being emitted as text\n", *(v9 + 1));
                    }
                  }

                  buffer = v33;
                  CFDataAppendBytes(a1, &buffer, 1);
                  BytePtr = CFDataGetBytePtr(Mutable);
                  v45 = CFDataGetLength(Mutable);
                  CFDataAppendBytes(a1, BytePtr, v45);
                  if (v31)
                  {
                    CFDictionarySetInt64();
                  }

                  goto LABEL_106;
                }

                APSLogErrorAt(0);
                LODWORD(v23) = -6705;
                goto LABEL_91;
              }

              return 0;
            }

            APSLogErrorAt(0);
            CFRelease(v36);
          }

          else
          {
            APSLogErrorAt(0);
          }

          v52 = 1;
          v43 = 4294960568;
          v53 = -6728;
LABEL_138:
          APSLogErrorAt(v43);
          Mutable = 0;
          a5 = v49;
          goto LABEL_48;
        }

        Mutable = _CreateUUIDData(a4, a5, &v52, &v53);
        v25 = v53;
        if (v53 && v52)
        {
          v52 = 0;
          Mutable = _CreateMACAddressData(a4, a5, &v52, &v53);
          v25 = v53;
        }

        if (v25 && gLogCategory_APSBinaryTXTRecord <= 50 && (gLogCategory_APSBinaryTXTRecord != -1 || _LogCategory_Initialize()))
        {
          LogPrintF(&gLogCategory_APSBinaryTXTRecord, "CFDataRef _CreateKeyData(KeyType, const char *, uint8_t, Boolean *, OSStatus *)", 33554482, "Couldn't parse UUID or MAC %.*s");
        }
      }

LABEL_48:
      v23 = v53;
      if (!v53)
      {
        goto LABEL_55;
      }

      goto LABEL_49;
    }

    v50 = -6762;
    if (gLogCategory_APSBinaryTXTRecord <= 90 && (gLogCategory_APSBinaryTXTRecord != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_APSBinaryTXTRecord, "OSStatus _AppendKeyInfoByName(CFMutableDataRef, CFMutableDictionaryRef, const char *, const char *, uint8_t)", 33554522, "No key info for %s\n");
    }
  }

  return v50;
}

uint64_t _GetKeyInfo(int a1, char *__s2, int *a3)
{
  if (a1 || __s2)
  {
    for (i = 0; i != 38; ++i)
    {
      while (1)
      {
        if (a1 && *(&allKeys + 24 * i) == a1)
        {
LABEL_14:
          v7 = 0;
          result = &allKeys + 24 * i;
          if (a3)
          {
            goto LABEL_21;
          }

          return result;
        }

        if (__s2)
        {
          break;
        }

        if (++i == 38)
        {
          if (gLogCategory_APSBinaryTXTRecord <= 40 && (gLogCategory_APSBinaryTXTRecord != -1 || _LogCategory_Initialize()))
          {
            LogPrintF(&gLogCategory_APSBinaryTXTRecord, "KeyInfo *_GetKeyInfo(UInt8, const char *, OSStatus *)", 33554472, "Unknown binary TXT record key index: 0x%02X\n", a1);
          }

          goto LABEL_24;
        }
      }

      if (!strcmp(*(&allKeys + 3 * i + 1), __s2))
      {
        goto LABEL_14;
      }
    }

    if (gLogCategory_APSBinaryTXTRecord <= 90 && (gLogCategory_APSBinaryTXTRecord != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_APSBinaryTXTRecord, "KeyInfo *_GetKeyInfo(UInt8, const char *, OSStatus *)", 33554522, "Unknown TXT record key name: %s\n", __s2);
    }

    result = 0;
    v7 = -6705;
    if (!a3)
    {
      return result;
    }

    goto LABEL_21;
  }

  APSLogErrorAt(0);
LABEL_24:
  v7 = 0;
  result = 0;
  if (a3)
  {
LABEL_21:
    *a3 = v7;
  }

  return result;
}

CFDataRef _CreateTextData(UInt8 *bytes, CFIndex length, int *a3)
{
  v4 = CFDataCreate(0, bytes, length);
  if (!v4)
  {
    APSLogErrorAt(0);
    v5 = -6728;
    if (!a3)
    {
      return v4;
    }

    goto LABEL_3;
  }

  v5 = 0;
  if (a3)
  {
LABEL_3:
    *a3 = v5;
  }

  return v4;
}

CFDataRef _CreateMACAddressData(uint64_t a1, unsigned int a2, _BYTE *a3, int *a4)
{
  v10 = 0;
  *bytes = 0;
  v6 = TextToHardwareAddress();
  if (v6)
  {
    v8 = v6;
    APSLogErrorAt(v6);
  }

  else
  {
    result = CFDataCreate(0, bytes, 6);
    if (result)
    {
      v8 = 0;
      goto LABEL_4;
    }

    APSLogErrorAt(0);
    v8 = -6728;
  }

  result = 0;
  if (a3)
  {
    *a3 = 1;
  }

LABEL_4:
  if (a4)
  {
    *a4 = v8;
  }

  return result;
}

CFDataRef _CreateUUIDData(uint64_t a1, unsigned int a2, _BYTE *a3, int *a4)
{
  v11 = *MEMORY[0x277D85DE8];
  v6 = StringToUUID();
  if (!v6)
  {
    v7 = CFDataCreate(0, bytes, 16);
    if (v7)
    {
      v8 = v7;
      v6 = 0;
      goto LABEL_4;
    }

    APSLogErrorAt(0);
    v6 = -6728;
  }

  v8 = 0;
  if (a3)
  {
    *a3 = 1;
  }

LABEL_4:
  if (a4)
  {
    *a4 = v6;
  }

  return v8;
}

CFDataRef _CreateTXTRecordFromBinaryTXTRecord(const __CFData *a1, const char *a2, _DWORD *a3)
{
  v68 = *MEMORY[0x277D85DE8];
  txtRecord = 0uLL;
  bzero(v51, 0x800uLL);
  if (!a1)
  {
    goto LABEL_146;
  }

  Length = CFDataGetLength(a1);
  if (!Length)
  {
    if (gLogCategory_APSBinaryTXTRecord <= 90 && (gLogCategory_APSBinaryTXTRecord != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_APSBinaryTXTRecord, "CFDataRef _CreateTXTRecordFromBinaryTXTRecord(CFDataRef, const char *, OSStatus *)", 33554522, "Empty payload received\n");
    }

    goto LABEL_147;
  }

  v7 = Length;
  BytePtr = CFDataGetBytePtr(a1);
  if (!BytePtr)
  {
LABEL_146:
    APSLogErrorAt(0);
LABEL_147:
    v44 = 0;
    LODWORD(v32) = -6705;
    goto LABEL_137;
  }

  v9 = BytePtr;
  if (gLogCategory_APSBinaryTXTRecord <= 30)
  {
    if (gLogCategory_APSBinaryTXTRecord != -1 || _LogCategory_Initialize())
    {
      LogPrintF(&gLogCategory_APSBinaryTXTRecord, "CFDataRef _CreateTXTRecordFromBinaryTXTRecord(CFDataRef, const char *, OSStatus *)", 33554462, "ALL DATA (pos: %d) (%d bytes) %@\n", 0, v7, a1);
    }

    if (gLogCategory_APSBinaryTXTRecord <= 30 && (gLogCategory_APSBinaryTXTRecord != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_APSBinaryTXTRecord, "CFDataRef _CreateTXTRecordFromBinaryTXTRecord(CFDataRef, const char *, OSStatus *)", 33554462, "BIN: %H\n", v9, v7, v7);
    }
  }

  v10 = *v9;
  if (v10 != 1)
  {
    LODWORD(v32) = -72420;
    if (gLogCategory_APSBinaryTXTRecord <= 40)
    {
      if (gLogCategory_APSBinaryTXTRecord == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_156;
        }

        v10 = *v9;
      }

      LogPrintF(&gLogCategory_APSBinaryTXTRecord, "CFDataRef _CreateTXTRecordFromBinaryTXTRecord(CFDataRef, const char *, OSStatus *)", 33554472, "Unknown payload version detected: 0x%02X\n", v10);
    }

LABEL_156:
    v44 = 0;
    goto LABEL_137;
  }

  v46 = a3;
  TXTRecordCreate(&txtRecord, 0x200u, buffer);
  v11 = 0;
  v12 = 1;
  v47 = a2;
  while (v12 < v7 && !v11)
  {
    *valueLen = 0;
    value = 0uLL;
    *&v54 = 0;
    v13 = v12 + 1;
    v14 = v9[v12];
    if (v9[v12])
    {
      KeyInfo = _GetKeyInfo(v9[v12], 0, valueLen);
      v16 = *valueLen;
      if (*valueLen)
      {
        goto LABEL_87;
      }

      if (!KeyInfo)
      {
        if (gLogCategory_APSBinaryTXTRecord <= 30 && (gLogCategory_APSBinaryTXTRecord != -1 || _LogCategory_Initialize()))
        {
          LogPrintF(&gLogCategory_APSBinaryTXTRecord, "OSStatus _ProcessNextKey(TXTRecordRef *, CacheEntry *, const UInt8 *, CFIndex *, CFIndex, const char *, Boolean *)", 33554462, "Unsupported key received: 0x%02X\n");
        }

        goto LABEL_84;
      }

      if (v13 >= v7)
      {
        *valueLen = -6705;
        if (gLogCategory_APSBinaryTXTRecord > 90)
        {
          goto LABEL_140;
        }

        if (gLogCategory_APSBinaryTXTRecord != -1 || _LogCategory_Initialize())
        {
          LogPrintF(&gLogCategory_APSBinaryTXTRecord, "OSStatus _ProcessNextKey(TXTRecordRef *, CacheEntry *, const UInt8 *, CFIndex *, CFIndex, const char *, Boolean *)", 33554522, "Payload ended before key length for key 0x%02X\n");
        }

        goto LABEL_84;
      }

      LOBYTE(v17) = v9[v13];
      v18 = v17;
      v13 = v12 + 2;
      if (!a2 || (v19 = *(KeyInfo + 1), !strcmp(v19, a2)))
      {
        v20 = 1;
        if (v17 < 0)
        {
          goto LABEL_44;
        }
      }

      else if (!strcmp(a2, "gid"))
      {
        v24 = strcmp(v19, "bin_grp_cmid");
        v25 = strcmp(v19, "bin_grp_rcid");
        v26 = v24 == 0;
        a2 = v47;
        v26 = v26 || v25 == 0;
        v20 = v26;
        if (v17 < 0)
        {
LABEL_44:
          if (!v20)
          {
            goto LABEL_84;
          }

          v49[1] = v17 & 0x7F;
          if ((*KeyInfo & 0x80000000) == 0 && ((v27 = *(KeyInfo + 4), (v27 - 8) < 5) || v27 == 2))
          {
            if (gLogCategory_APSBinaryTXTRecord <= 30 && (gLogCategory_APSBinaryTXTRecord != -1 || _LogCategory_Initialize()))
            {
              LogPrintF(&gLogCategory_APSBinaryTXTRecord, "OSStatus _ProcessNextKey(TXTRecordRef *, CacheEntry *, const UInt8 *, CFIndex *, CFIndex, const char *, Boolean *)", 33554462, "Processing key 0x%02X referencing key 0x%02X\n", v14, v17 & 0x7F);
            }

            v31 = &v51[v17 & 0x7F];
            if (!v31->PrivateData[8])
            {
              *valueLen = -6705;
              if (gLogCategory_APSBinaryTXTRecord <= 90 && (gLogCategory_APSBinaryTXTRecord != -1 || _LogCategory_Initialize()))
              {
                LogPrintF(&gLogCategory_APSBinaryTXTRecord, "OSStatus _ProcessNextKey(TXTRecordRef *, CacheEntry *, const UInt8 *, CFIndex *, CFIndex, const char *, Boolean *)", 33554522, "Referenced key not yet seen: 0x%02X\n");
              }

              goto LABEL_84;
            }

            v16 = _ProcessKeyData(&txtRecord, KeyInfo, &v9[v31->ForceNaturalAlignment], v31->PrivateData[8]);
            *valueLen = v16;
            if (!v16)
            {
LABEL_84:
              v11 = 0;
              goto LABEL_85;
            }
          }

          else
          {
            if (gLogCategory_APSBinaryTXTRecord <= 30 && (gLogCategory_APSBinaryTXTRecord != -1 || _LogCategory_Initialize()))
            {
              LogPrintF(&gLogCategory_APSBinaryTXTRecord, "OSStatus _ProcessNextKey(TXTRecordRef *, CacheEntry *, const UInt8 *, CFIndex *, CFIndex, const char *, Boolean *)", 33554462, "Processing length embedded data for key 0x%02X\n", v14);
            }

            v16 = _ProcessKeyData(&txtRecord, KeyInfo, &v49[1], 1);
            *valueLen = v16;
            if (!v16)
            {
              goto LABEL_84;
            }
          }

LABEL_87:
          APSLogErrorAt(v16);
          goto LABEL_84;
        }
      }

      else
      {
        v20 = 0;
        if (v17 < 0)
        {
          goto LABEL_84;
        }
      }

      if (v17 < 0x79)
      {
        v23 = 1;
        goto LABEL_60;
      }

      if (v13 >= v7)
      {
        *valueLen = -6705;
        if (gLogCategory_APSBinaryTXTRecord > 90)
        {
LABEL_140:
          v32 = 4294960591;
LABEL_141:
          APSLogErrorAt(v32);
          v44 = 0;
          a3 = v46;
          goto LABEL_137;
        }

        if (gLogCategory_APSBinaryTXTRecord != -1 || _LogCategory_Initialize())
        {
          LogPrintF(&gLogCategory_APSBinaryTXTRecord, "OSStatus _ProcessNextKey(TXTRecordRef *, CacheEntry *, const UInt8 *, CFIndex *, CFIndex, const char *, Boolean *)", 33554522, "Payload ended before key length for text override for key 0x%02X\n");
        }

        goto LABEL_84;
      }

      v21 = v9[v13];
      v17 = v9[v13];
      v13 = v12 + 3;
      v22 = gLogCategory_APSBinaryTXTRecord;
      if (v18 == 127)
      {
        if (gLogCategory_APSBinaryTXTRecord <= 30 && (gLogCategory_APSBinaryTXTRecord != -1 || _LogCategory_Initialize()))
        {
          LogPrintF(&gLogCategory_APSBinaryTXTRecord, "OSStatus _ProcessNextKey(TXTRecordRef *, CacheEntry *, const UInt8 *, CFIndex *, CFIndex, const char *, Boolean *)", 33554462, "Text override data for key 0x%02X\n", v17);
        }

        *&v54 = *(KeyInfo + 2);
        value = *KeyInfo;
        LODWORD(v54) = 2;
        v23 = 1;
        KeyInfo = &value;
        goto LABEL_60;
      }

      if (gLogCategory_APSBinaryTXTRecord > 30)
      {
        if (v7 - v13 < v21)
        {
          goto LABEL_95;
        }
      }

      else
      {
        if (gLogCategory_APSBinaryTXTRecord != -1 || _LogCategory_Initialize())
        {
          LogPrintF(&gLogCategory_APSBinaryTXTRecord, "OSStatus _ProcessNextKey(TXTRecordRef *, CacheEntry *, const UInt8 *, CFIndex *, CFIndex, const char *, Boolean *)", 33554462, "Unknown data for key 0x%02X\n", v17);
        }

        v23 = 0;
LABEL_60:
        if (gLogCategory_APSBinaryTXTRecord <= 30 && (gLogCategory_APSBinaryTXTRecord != -1 || _LogCategory_Initialize()))
        {
          LogPrintF(&gLogCategory_APSBinaryTXTRecord, "OSStatus _ProcessNextKey(TXTRecordRef *, CacheEntry *, const UInt8 *, CFIndex *, CFIndex, const char *, Boolean *)", 33554462, "Processing %d bytes of data for key 0x%02X\n", v17, v14);
        }

        if (v7 - v13 < v17)
        {
          v22 = gLogCategory_APSBinaryTXTRecord;
LABEL_95:
          *valueLen = -6705;
          a2 = v47;
          if (v22 > 90)
          {
            goto LABEL_140;
          }

          if (v22 != -1 || _LogCategory_Initialize())
          {
            LogPrintF(&gLogCategory_APSBinaryTXTRecord, "OSStatus _ProcessNextKey(TXTRecordRef *, CacheEntry *, const UInt8 *, CFIndex *, CFIndex, const char *, Boolean *)", 33554522, "Key 0x%02X specifies %d bytes of data, but only %d remain\n");
          }

          goto LABEL_84;
        }

        v21 = v17;
        if (v23)
        {
          if (!v20 || (v28 = _ProcessKeyData(&txtRecord, KeyInfo, &v9[v13], v17), (*valueLen = v28) == 0))
          {
            if ((*KeyInfo & 0x80000000) == 0)
            {
              v29 = *(KeyInfo + 4);
              if ((v29 - 8) < 5 || v29 == 2)
              {
                v30 = &v51[v14];
                v30->ForceNaturalAlignment = v13;
                v30->PrivateData[8] = v17;
                if (gLogCategory_APSBinaryTXTRecord <= 30 && (gLogCategory_APSBinaryTXTRecord != -1 || _LogCategory_Initialize()))
                {
                  LogPrintF(&gLogCategory_APSBinaryTXTRecord, "OSStatus _ProcessNextKey(TXTRecordRef *, CacheEntry *, const UInt8 *, CFIndex *, CFIndex, const char *, Boolean *)", 33554462, "Cached reference for key 0x%02X: pos=%d len=%d\n", v14, v13, v17);
                }
              }
            }

            goto LABEL_80;
          }

          APSLogErrorAt(v28);
          v11 = 0;
LABEL_81:
          a2 = v47;
          goto LABEL_85;
        }
      }

LABEL_80:
      v11 = 0;
      v13 += v21;
      goto LABEL_81;
    }

    v11 = 1;
LABEL_85:
    v32 = *valueLen;
    v12 = v13;
    if (*valueLen)
    {
      goto LABEL_141;
    }
  }

  BytesPtr = TXTRecordGetBytesPtr(&txtRecord);
  v34 = TXTRecordGetLength(&txtRecord);
  v66 = 0u;
  memset(v67, 0, sizeof(v67));
  v64 = 0u;
  v65 = 0u;
  v62 = 0u;
  v63 = 0u;
  v60 = 0u;
  v61 = 0u;
  v58 = 0u;
  v59 = 0u;
  v56 = 0u;
  v57 = 0u;
  v54 = 0u;
  v55 = 0u;
  value = 0u;
  valueLen[0] = 0;
  *v49 = 0;
  if (TXTRecordContainsKey(v34, BytesPtr, "bin_grp_cmid") == 1 || TXTRecordContainsKey(v34, BytesPtr, "bin_grp_rcid") == 1)
  {
    ValuePtr = TXTRecordGetValuePtr(v34, BytesPtr, "gid", valueLen);
    v36 = TXTRecordGetValuePtr(v34, BytesPtr, "bin_grp_cmid", &v49[1]);
    v37 = TXTRecordGetValuePtr(v34, BytesPtr, "bin_grp_rcid", v49);
    v38 = valueLen[0];
    v39 = v49[1];
    v40 = v49[0];
    if (valueLen[0] + v49[1] + v49[0] + 2 < 0x100)
    {
      if (ValuePtr)
      {
        v41 = v37;
        __memcpy_chk();
        v42 = &value + v38;
        if (v36)
        {
          *v42 = 43;
          v43 = v42 + 1;
          memcpy(v43, v36, v39);
          v42 = &v43[v39];
        }

        if (v41)
        {
          *v42++ = 43;
          memcpy(v42, v41, v40);
          LOBYTE(v42) = v42 + v40;
        }

        TXTRecordSetValue(&txtRecord, "gid", v42 - &value, &value);
        a3 = v46;
      }

      else
      {
        a3 = v46;
        if (gLogCategory_APSBinaryTXTRecord <= 90 && (gLogCategory_APSBinaryTXTRecord != -1 || _LogCategory_Initialize()))
        {
          LogPrintF(&gLogCategory_APSBinaryTXTRecord, "Boolean FixGroupID(TXTRecordRef *, uint16_t, const uint8_t *, OSStatus *)", 33554522, "Group suffixes exist but group is missing\n");
        }
      }
    }

    else
    {
      a3 = v46;
      if (gLogCategory_APSBinaryTXTRecord <= 90 && (gLogCategory_APSBinaryTXTRecord != -1 || _LogCategory_Initialize()))
      {
        LogPrintF(&gLogCategory_APSBinaryTXTRecord, "Boolean FixGroupID(TXTRecordRef *, uint16_t, const uint8_t *, OSStatus *)", 33554522, "Group parts are too large: %u %u %u\n");
      }
    }

    TXTRecordRemoveValue(&txtRecord, "bin_grp_cmid");
    TXTRecordRemoveValue(&txtRecord, "bin_grp_rcid");
    BytesPtr = TXTRecordGetBytesPtr(&txtRecord);
    v34 = TXTRecordGetLength(&txtRecord);
  }

  else
  {
    a3 = v46;
  }

  v44 = CFDataCreate(0, BytesPtr, v34);
  if (v44)
  {
    LODWORD(v32) = 0;
  }

  else
  {
    APSLogErrorAt(0);
    LODWORD(v32) = -6728;
  }

LABEL_137:
  if (a3)
  {
    *a3 = v32;
  }

  TXTRecordDeallocate(&txtRecord);
  return v44;
}

uint64_t _ProcessKeyData(TXTRecordRef *txtRecord, uint64_t a2, unsigned __int8 *value, uint64_t valueSize)
{
  v4 = valueSize;
  v8 = 0;
  v51 = *MEMORY[0x277D85DE8];
  v9 = *(a2 + 16);
  if (v9 > 8)
  {
    if (v9 <= 12)
    {
      if ((v9 - 9) >= 2)
      {
        if ((v9 - 11) >= 2)
        {
          return v8;
        }

        if (!_ProcessUUIDData(txtRecord, *(a2 + 8), value, valueSize, v9 == 12))
        {
          return 0;
        }

LABEL_44:
        v31 = *(a2 + 8);

        return _ProcessMACAddressData(txtRecord, v31, value, v4);
      }

      v29 = *(a2 + 8);

      return _ProcessUUIDData(txtRecord, v29, value, valueSize, v9 == 10);
    }

    if (v9 == 13)
    {
      v32 = *(a2 + 8);
      theString = 0;
      Mutable = APSFeaturesCreateMutable(0);
      if (Mutable)
      {
        v34 = Mutable;
        if (v4)
        {
          v35 = 0;
          v36 = 0;
          v37 = v4;
          do
          {
            v38 = value[v36];
            v39 = v35;
            v40 = 8;
            do
            {
              if (v38)
              {
                APSFeaturesSetFeature(v34, v39);
              }

              v38 >>= 1;
              ++v39;
              --v40;
            }

            while (v40);
            ++v36;
            v35 += 8;
          }

          while (v36 != v37);
        }

        v41 = APSFeaturesCopyStringRepresentation(v34, &theString);
        if (v41)
        {
          v8 = v41;
          APSLogErrorAt(v41);
          v42 = theString;
        }

        else
        {
          __s[0] = 0;
          v42 = theString;
          CString = CFStringGetCString(theString, __s, 256, 0x8000100u);
          if (CString)
          {
            v44 = strlen(__s);
            v45 = TXTRecordSetValue(txtRecord, v32, v44, __s);
            v8 = v45;
            if (v45)
            {
              APSLogErrorAt(v45);
            }
          }

          else
          {
            APSLogErrorAt(CString);
            v8 = 4294960591;
          }
        }

        if (v42)
        {
          CFRelease(v42);
        }

        CFRelease(v34);
      }

      else
      {
        APSLogErrorAt(0);
        return 4294960568;
      }

      return v8;
    }

    if (v9 != 14)
    {
      return v8;
    }

    v21 = *(a2 + 8);
    *__s = 0;
    if (valueSize == 1)
    {
      v22 = *value;
      v23 = @"ll";
      if (v22 != 2)
      {
        v23 = 0;
      }

      if (v22 == 1)
      {
        v24 = @"ap";
      }

      else
      {
        v24 = v23;
      }

      if (v24)
      {
        CStringPtrAndBufferToFree = FigCFStringGetCStringPtrAndBufferToFree();
        if (CStringPtrAndBufferToFree)
        {
          v26 = CStringPtrAndBufferToFree;
          v27 = strlen(CStringPtrAndBufferToFree);
          v28 = TXTRecordSetValue(txtRecord, v21, v27, v26);
          v8 = v28;
          if (v28)
          {
            APSLogErrorAt(v28);
          }
        }

        else
        {
          APSLogErrorAt(0);
          v8 = 4294960534;
        }

        goto LABEL_38;
      }

      if (gLogCategory_APSBinaryTXTRecord <= 60 && (gLogCategory_APSBinaryTXTRecord != -1 || _LogCategory_Initialize()))
      {
        LogPrintF(&gLogCategory_APSBinaryTXTRecord, "OSStatus _ProcessNANServiceTypeData(TXTRecordRef *, const char *, const UInt8 *, UInt8)", 33554492, "Unexpected nanST value: %u\n");
      }
    }

    else if (gLogCategory_APSBinaryTXTRecord <= 60 && (gLogCategory_APSBinaryTXTRecord != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_APSBinaryTXTRecord, "OSStatus _ProcessNANServiceTypeData(TXTRecordRef *, const char *, const UInt8 *, UInt8)", 33554492, "Unexpected nanST value size. Expected 1, saw %u\n");
    }

    v8 = 0;
LABEL_38:
    free(*__s);
    return v8;
  }

  if ((v9 - 3) < 5)
  {
    v47 = *(a2 + 8);
    __s[0] = 0;
    if (!valueSize)
    {
LABEL_25:
      v20 = strlen(__s);
      return TXTRecordSetValue(txtRecord, v47, v20, __s);
    }

    v10 = 0;
    v11 = v9 - 5;
    if (v9 == 4)
    {
      v12 = "%?c0x%lx";
    }

    else
    {
      v12 = "%?c0x%lX";
    }

    while (1)
    {
      if ((v10 + 4) >= v4)
      {
        v13 = v4;
      }

      else
      {
        v13 = (v10 + 4);
      }

      if (v13 <= v10)
      {
        v15 = 0;
      }

      else
      {
        v14 = 0;
        LODWORD(v15) = 0;
        v16 = v13 - v10;
        v17 = &value[v10];
        do
        {
          v18 = *v17++;
          v15 = (v18 << v14) | v15;
          v14 += 8;
          --v16;
        }

        while (v16);
        v10 = v13;
      }

      if (v11 >= 0xFFFFFFFE)
      {
        v19 = strlen(__s);
        SNPrintF(&__s[v19], 256 - v19, v12, __s[0] != 0, 44, v15);
      }

      else
      {
        if (v4 != v10)
        {
          APSLogErrorAt(0);
          return 4294960591;
        }

        SNPrintF(__s, 256, "%lu");
      }

      if (v4 <= v10)
      {
        goto LABEL_25;
      }
    }
  }

  if (v9 != 2)
  {
    if (v9 != 8)
    {
      return v8;
    }

    goto LABEL_44;
  }

  v46 = *(a2 + 8);

  return TXTRecordSetValue(txtRecord, v46, valueSize, value);
}

uint64_t _ProcessMACAddressData(TXTRecordRef *a1, const char *a2, uint64_t a3, int a4)
{
  v9 = *MEMORY[0x277D85DE8];
  if (a4 == 6)
  {
    HardwareAddressToCString();
    v6 = strlen(__s);
    return TXTRecordSetValue(a1, a2, v6, __s);
  }

  else
  {
    APSLogErrorAt(0);
    return 4294960591;
  }
}

uint64_t _ProcessUUIDData(TXTRecordRef *a1, const char *a2, uint64_t a3, int a4, int a5)
{
  *&v15[37] = *MEMORY[0x277D85DE8];
  if (a4 == 16)
  {
    UUIDtoCStringFlags();
    if (!a5)
    {
      v8 = __s;
      if (__s)
      {
        v9 = 0;
        v10 = v15;
        do
        {
          *(v10 - 1) = __toupper(v8);
          if (v9 > 0x24)
          {
            break;
          }

          ++v9;
          v11 = *v10++;
          v8 = v11;
        }

        while (v11);
      }
    }

    v12 = strlen(&__s);
    return TXTRecordSetValue(a1, a2, v12, &__s);
  }

  else
  {
    APSLogErrorAt(0);
    return 4294960591;
  }
}

CFStringRef APSBinaryTXTRecordCopyString(const __CFData *a1, const char *a2, unsigned int *a3)
{
  v13 = 0;
  valueLen = 0;
  v5 = _CreateTXTRecordFromBinaryTXTRecord(a1, a2, &v13);
  if (v13)
  {
    APSLogErrorAt(v13);
    v9 = 0;
  }

  else
  {
    Length = CFDataGetLength(v5);
    BytePtr = CFDataGetBytePtr(v5);
    ValuePtr = TXTRecordGetValuePtr(Length, BytePtr, a2, &valueLen);
    if (ValuePtr)
    {
      v9 = CFStringCreateWithBytes(*MEMORY[0x277CBECE8], ValuePtr, valueLen, 0x8000100u, 0);
      if (v9)
      {
        goto LABEL_4;
      }

      APSLogErrorAt(0);
      v11 = -6728;
    }

    else
    {
      v9 = 0;
      v11 = -6727;
    }

    v13 = v11;
  }

LABEL_4:
  if (a3)
  {
    *a3 = v13;
  }

  if (v5)
  {
    CFRelease(v5);
  }

  return v9;
}

void rtcpCCFBRecordDictionaryValueReleaseCallback(CFAllocatorRef allocator, CFTypeRef *ptr)
{
  if (*ptr)
  {
    CFRelease(*ptr);
  }

  CFAllocatorDeallocate(allocator, ptr);
}

CFTypeRef *rtcpCCFBRecordDictionaryValueRetainCallback(uint64_t a1, _OWORD *a2)
{
  v3 = MEMORY[0x223DB3470](a1, 16, 0x106004076547154, 0);
  *v3 = *a2;
  if (*v3)
  {
    CFRetain(*v3);
  }

  return v3;
}

uint64_t APSRTCPCCFBGeneratorGetTypeID()
{
  if (gAPSRTCPCCFBGeneratorInitOnce != -1)
  {
    dispatch_once_f(&gAPSRTCPCCFBGeneratorInitOnce, 0, _APSRTCPCCFBGeneratorGetTypeID);
  }

  return gAPSRTCPCCFBGeneratorTypeID;
}

uint64_t _APSRTCPCCFBGeneratorGetTypeID()
{
  result = _CFRuntimeRegisterClass();
  gAPSRTCPCCFBGeneratorTypeID = result;
  return result;
}

void _APSRTCPCCFBGeneratorFinalize(uint64_t a1)
{
  if (gLogCategory_APSRTCPCCFBGenerator <= 30 && (gLogCategory_APSRTCPCCFBGenerator != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APSRTCPCCFBGenerator, "void _APSRTCPCCFBGeneratorFinalize(CFTypeRef)", 33554462, "[%{ptr}] APSRTCPCCFBGenerator finalized", a1);
  }

  v2 = *(a1 + 16);
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = *(a1 + 24);
  if (v3)
  {

    CFRelease(v3);
  }
}

uint64_t APSRTCPCCFBGeneratorCreate(CFTypeRef *a1)
{
  if (a1)
  {
    if (gAPSRTCPCCFBGeneratorInitOnce != -1)
    {
      dispatch_once_f(&gAPSRTCPCCFBGeneratorInitOnce, 0, _APSRTCPCCFBGeneratorGetTypeID);
    }

    Instance = _CFRuntimeCreateInstance();
    if (Instance)
    {
      v3 = Instance;
      Instance[2] = 0;
      Instance[3] = 0;
      Instance[4] = 0;
      Mutable = APSRTPSeqNumDictionaryCreateMutable(*MEMORY[0x277CBECE8], &kAPSRTCPCCFBRecordDictionaryValueCallbacks, Instance + 2);
      v5 = Mutable;
      if (Mutable)
      {
        APSLogErrorAt(Mutable);
      }

      else
      {
        *a1 = CFRetain(v3);
        if (gLogCategory_APSRTCPCCFBGenerator <= 30 && (gLogCategory_APSRTCPCCFBGenerator != -1 || _LogCategory_Initialize()))
        {
          LogPrintF(&gLogCategory_APSRTCPCCFBGenerator, "OSStatus APSRTCPCCFBGeneratorCreate(APSRTCPCCFBGeneratorRef *)", 33554462, "[%{ptr}] APSRTCPCCFBGenerator created", v3);
        }
      }

      CFRelease(v3);
    }

    else
    {
      APSLogErrorAt(0);
      return 4294960568;
    }
  }

  else
  {
    APSLogErrorAt(0);
    return 4294960591;
  }

  return v5;
}

uint64_t APSRTCPCCFBGeneratorAddSequenceNumberAndArrivalTime(uint64_t a1, void *key, uint64_t a3)
{
  v14[1] = 0;
  if (!a1)
  {
    APSLogErrorAt(0);
    return 4294960591;
  }

  v6 = *(a1 + 16);
  if (v6 && CFDictionaryGetValue(*(v6 + 24), key))
  {
    return 4294960566;
  }

  v7 = *(a1 + 24);
  if (!v7 || APSRTPSeqNumRangeSetContainsSeqNum(v7, key))
  {
    goto LABEL_6;
  }

  Span = APSRTPSeqNumRangeSetGetSpan(*(a1 + 24));
  v12 = (Span + HIWORD(Span)) - (Span & 0xFFFF0000) + 0x80000000;
  if (Span > 0x8000FFFF)
  {
    v12 = -1;
  }

  if (((v12 - 0x10000) & 0x80000000) == 0 && (v12 - key) <= 0 && HIWORD(v12) > (key - v12))
  {
LABEL_6:
    if (a3)
    {
      APSCompactNTPMakeWithUpTicks(a3, kCMTimeRoundingMethod_RoundTowardNegativeInfinity);
      UInt32 = FigCFNumberCreateUInt32();
      if (!UInt32)
      {
        APSLogErrorAt(0);
        return 4294960568;
      }
    }

    else
    {
      UInt32 = 0;
    }

    v14[0] = UInt32;
    v10 = APSRTPSeqNumDictionarySetValue(*(a1 + 16), key, v14);
    v9 = v10;
    if (v10)
    {
      APSLogErrorAt(v10);
      if (!UInt32)
      {
        return v9;
      }
    }

    else
    {
      if (!*(a1 + 34) || (key - *(a1 + 32)) >= 1)
      {
        *(a1 + 32) = key;
      }

      *(a1 + 34) = 1;
      if (!UInt32)
      {
        return v9;
      }
    }

    CFRelease(UInt32);
    return v9;
  }

  if (gLogCategory_APSRTCPCCFBGenerator <= 90 && (gLogCategory_APSRTCPCCFBGenerator != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APSRTCPCCFBGenerator, "OSStatus APSRTCPCCFBGeneratorAddSequenceNumberAndArrivalTime(APSRTCPCCFBGeneratorRef, uint16_t, uint64_t)", 33554522, "[%{ptr}] Sequence number %d less than the send window %@", a1, key, *(a1 + 24));
  }

  v9 = 4294960591;
  APSLogErrorAt(4294960591);
  return v9;
}

uint64_t APSRTCPCCFBGeneratorSetSendWindow(uint64_t a1, const void *a2)
{
  cf = 0;
  if (a1)
  {
    if (a2)
    {
      Span = APSRTPSeqNumRangeSetGetSpan(a2);
      if (Span >= 0x10000)
      {
        v7 = Span;
        v8 = APSRTPSeqNumRangeSetCreateMutable(*MEMORY[0x277CBECE8], &cf);
        if (cf)
        {
          v6 = v8;
          APSRTPSeqNumRangeSetApplyFunctionWithFilterRange(a2, 0, 0xFFFFFFFF, rtpSeqNumRangeSet_addRangeApplier, cf);
          if (v7 > 0x8000FFFF)
          {
            v9 = 0xFFFFFFFFLL;
          }

          else
          {
            v9 = (HIWORD(v7) + v7) - (v7 & 0xFFFF0000) + 0x80000000;
          }

          APSRTPSeqNumRangeSetAddSeqNumRange(cf, v9);
          APSRTPSeqNumDictionaryFilterWithRangeSet(*(a1 + 16), cf);
          v14 = 0;
          if (!APSRTPSeqNumRangeSetGetLastSeqNumRange(a2, &v14))
          {
            v10 = v14 + HIWORD(v14) - 1;
            if (!*(a1 + 34) || (v10 - *(a1 + 32)) >= 1)
            {
              *(a1 + 32) = v10;
            }

            *(a1 + 34) = 1;
          }

          v11 = *(a1 + 24);
          *(a1 + 24) = a2;
          CFRetain(a2);
          if (v11)
          {
            CFRelease(v11);
          }
        }

        else
        {
          APSLogErrorAt(0);
          v6 = 4294960568;
        }
      }

      else
      {
        APSRTPSeqNumDictionaryRemoveAllValues(*(a1 + 16));
        v5 = *(a1 + 24);
        if (v5)
        {
          CFRelease(v5);
          v6 = 0;
          *(a1 + 24) = 0;
        }

        else
        {
          v6 = 0;
        }
      }
    }

    else
    {
      APSLogErrorAt(0);
      v6 = 4294960591;
    }

    if (cf)
    {
      CFRelease(cf);
    }
  }

  else
  {
    APSLogErrorAt(0);
    return 4294960591;
  }

  return v6;
}

uint64_t APSRTCPCCFBGeneratorGetSendWindow(uint64_t result)
{
  if (result)
  {
    return *(result + 24);
  }

  return result;
}

uint64_t APSRTCPCCFBGeneratorCopyRecords(uint64_t a1, void *a2)
{
  cf = 0;
  if (a1)
  {
    MutableCopy = APSRTPSeqNumDictionaryCreateMutableCopy(*MEMORY[0x277CBECE8], *(a1 + 16), &cf);
    v4 = MutableCopy;
    if (MutableCopy)
    {
      APSLogErrorAt(MutableCopy);
    }

    else
    {
      v5 = cf;
      if (cf)
      {
        v5 = CFRetain(cf);
      }

      *a2 = v5;
    }

    if (cf)
    {
      CFRelease(cf);
    }
  }

  else
  {
    APSLogErrorAt(0);
    return 4294960591;
  }

  return v4;
}

uint64_t APSRTCPCCFBGeneratorCopyPendingSequenceNumbers(uint64_t a1, void *a2)
{
  cf = 0;
  if (!a1)
  {
    APSLogErrorAt(0);
    return 4294960591;
  }

  if (!a2)
  {
    APSLogErrorAt(0);
    v16 = 4294960591;
    goto LABEL_24;
  }

  Span = APSRTPSeqNumRangeSetGetSpan(*(a1 + 24));
  v5 = *(a1 + 16);
  if (v5)
  {
    v6 = APSRTPSeqNumRangeSetGetSpan(*(v5 + 16));
  }

  else
  {
    v6 = 0;
  }

  v7 = APSRTPSeqNumRangeUnion(Span, v6);
  v8 = APSRTPSeqNumRangeSetCreateMutable(*MEMORY[0x277CBECE8], &cf);
  if (v8)
  {
    v16 = v8;
  }

  else
  {
    if (v7 < 0x10000)
    {
LABEL_21:
      v15 = cf;
      if (cf)
      {
        v15 = CFRetain(cf);
      }

      v16 = 0;
      *a2 = v15;
      goto LABEL_24;
    }

    v9 = HIWORD(Span);
    if (!HIWORD(Span))
    {
      LOWORD(Span) = v7;
    }

    v10 = *(a1 + 24);
    if (!v10)
    {
      goto LABEL_13;
    }

    if (cf)
    {
      v11 = APSRTPSeqNumRangeSetApplyFunctionWithFilterRange(v10, 0, 0xFFFFFFFF, rtpSeqNumRangeSet_addRangeApplier, cf);
      if (!v11)
      {
LABEL_13:
        if ((HIWORD(v7) + v7 - (Span + v9)) <= 0x8000u)
        {
          v12 = (Span + v9) | ((HIWORD(v7) + v7 - (Span + v9)) << 16);
        }

        else
        {
          v12 = 0xFFFFFFFFLL;
        }

        v8 = APSRTPSeqNumRangeSetAddSeqNumRange(cf, v12);
        if (v8)
        {
          v16 = v8;
        }

        else
        {
          v13 = *(a1 + 16);
          if (v13)
          {
            v14 = *(v13 + 16);
          }

          else
          {
            v14 = 0;
          }

          v8 = APSRTPSeqNumRangeSetRemoveSeqNumRangeSet(cf, v14);
          if (!v8)
          {
            goto LABEL_21;
          }

          v16 = v8;
        }

        goto LABEL_34;
      }

      v16 = v11;
    }

    else
    {
      v16 = 4294960591;
    }

    v8 = v16;
  }

LABEL_34:
  APSLogErrorAt(v8);
LABEL_24:
  if (cf)
  {
    CFRelease(cf);
  }

  return v16;
}

uint64_t APSRTCPCCFBGeneratorGetMaxSequenceNumber(uint64_t a1, _WORD *a2)
{
  if (a1)
  {
    if (*(a1 + 34))
    {
      result = 0;
      *a2 = *(a1 + 32);
    }

    else
    {
      return 4294960578;
    }
  }

  else
  {
    APSLogErrorAt(a1);
    return 4294960591;
  }

  return result;
}

uint64_t APSDataPacerBitRateCreate(uint64_t a1, const void *a2, uint64_t a3, CFTypeRef *a4)
{
  if (!a4)
  {
    APSLogErrorAt(0);
    return 4294954516;
  }

  if (APSDataPacerGetClassID_sRegisterOnce != -1)
  {
    dispatch_once_f(&APSDataPacerGetClassID_sRegisterOnce, &APSDataPacerGetClassID_sClassID, dataPacer_registerBaseClass);
  }

  v6 = CMDerivedObjectCreate();
  if (v6)
  {
    v14 = v6;
    goto LABEL_17;
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
  v9 = FigSimpleMutexCreate();
  *(DerivedStorage + 8) = v9;
  if (!v9)
  {
    APSLogErrorAt(0);
    return 4294954510;
  }

  *(DerivedStorage + 56) = 2;
  FigCFDictionaryGetInt32IfPresent();
  v10 = *DerivedStorage;
  if (!*DerivedStorage)
  {
    v15 = *(DerivedStorage + 56);
    *(DerivedStorage + 24) = 0;
    *(DerivedStorage + 32) = 0;
    *(DerivedStorage + 16) = 96000 * v15;
    *(DerivedStorage + 40) = 0;
    *(DerivedStorage + 48) = 0x4000000000000000;
    goto LABEL_19;
  }

  v11 = *(*(CMBaseObjectGetVTable() + 16) + 8);
  if (!v11)
  {
    v14 = 4294954514;
LABEL_16:
    v6 = v14;
    goto LABEL_17;
  }

  v12 = v11(v10, DerivedStorage + 16);
  if (v12)
  {
    v14 = v12;
    goto LABEL_16;
  }

  v13 = *DerivedStorage;
  *(DerivedStorage + 24) = 0;
  *(DerivedStorage + 32) = 0;
  *(DerivedStorage + 40) = 0;
  *(DerivedStorage + 48) = 0x4000000000000000;
  if (v13)
  {
    CMNotificationCenterGetDefaultLocalCenter();
    v6 = FigNotificationCenterAddWeakListener();
    if (v6)
    {
      v14 = v6;
LABEL_17:
      APSLogErrorAt(v6);
      return v14;
    }
  }

LABEL_19:
  if (gLogCategory_APSDataPacerBitRate <= 50 && (gLogCategory_APSDataPacerBitRate != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APSDataPacerBitRate, "OSStatus APSDataPacerBitRateCreate(CFAllocatorRef, APSDataPacerRef, CFDictionaryRef, APSDataPacerRef *)", 33554482, "[%{ptr}] APSDataPacerBitRate created.\n", 0);
  }

  v14 = 0;
  *a4 = 0;
  return v14;
}

uint64_t bitRateDataPacer_GetPacedRate(uint64_t a1, uint64_t *a2)
{
  v12 = 0;
  if (!a1 || !a2)
  {
    APSLogErrorAt(0);
    return 4294954516;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  v5 = *DerivedStorage;
  if (!*DerivedStorage)
  {
    v10 = DerivedStorage[2];
    *a2 = v10;
    if (gLogCategory_APSDataPacerBitRate <= 10)
    {
      if (gLogCategory_APSDataPacerBitRate == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_15;
        }

        v10 = *a2;
      }

      LogPrintF(&gLogCategory_APSDataPacerBitRate, "OSStatus bitRateDataPacer_GetPacedRate(APSDataPacerRef, uint64_t *)", 33554442, "APSDataPacerBitRate [%{ptr}] updating pacing rate to %llu", a1, v10);
    }

LABEL_15:
    FigSimpleMutexUnlock();
    return 0;
  }

  v6 = *(*(CMBaseObjectGetVTable() + 16) + 8);
  if (v6)
  {
    v7 = v6(v5, &v12);
    if (!v7)
    {
      v8 = v12;
      if (v12 <= DerivedStorage[2])
      {
        v8 = DerivedStorage[2];
      }

      *a2 = v8;
      goto LABEL_15;
    }

    v9 = v7;
  }

  else
  {
    v9 = 4294954514;
  }

  APSLogErrorAt(v9);
  return v9;
}

uint64_t bitRateDataPacer_CopyProperty(uint64_t a1, const void *a2, uint64_t a3, uint64_t *a4)
{
  if (a1 && a2 && a4)
  {
    CMBaseObjectGetDerivedStorage();
    if (CFEqual(a2, @"kAPSDataPacerBitRateProperty_TotalWindowDurationSeconds"))
    {
      FigSimpleMutexLock();
      Float64 = FigCFNumberCreateFloat64();
      FigSimpleMutexUnlock();
      if (Float64)
      {
        result = 0;
        *a4 = Float64;
      }

      else
      {
        APSLogErrorAt(0);
        return 4294954510;
      }
    }

    else
    {
      return 4294954509;
    }
  }

  else
  {
    APSLogErrorAt(0);
    return 4294954516;
  }

  return result;
}

CFStringRef bitRateDataPacer_CopyDebugDescription(uint64_t a1)
{
  v4 = 0;
  v2 = *(*(CMBaseObjectGetVTable() + 16) + 8);
  if (v2)
  {
    v2(a1, &v4);
    v2 = v4;
  }

  return CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"<APSDataPacerBitRate %p>{ rate=%lluB/s }", a1, v2);
}

uint64_t bitRateDataPacer_Finalize(const void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APSDataPacerBitRate <= 30 && (gLogCategory_APSDataPacerBitRate != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APSDataPacerBitRate, "void bitRateDataPacer_Finalize(CMBaseObjectRef)", 33554462, "APSDataPacerBitRate %p finalizing.\n", a1);
  }

  if (*DerivedStorage)
  {
    CMNotificationCenterGetDefaultLocalCenter();
    FigNotificationCenterRemoveWeakListener();
    if (*DerivedStorage)
    {
      CFRelease(*DerivedStorage);
      *DerivedStorage = 0;
    }
  }

  return FigSimpleMutexDestroy();
}

uint64_t APSDataPacerBitRateUpdate(uint64_t a1, uint64_t a2, double a3)
{
  if (a1 && a3 >= 0.0)
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    FigSimpleMutexLock();
    *(DerivedStorage + 24) += a2;
    v6 = *(DerivedStorage + 32) + a3;
    *(DerivedStorage + 32) = v6;
    if (v6 >= 2.0)
    {
      v7 = CMBaseObjectGetDerivedStorage();
      FigSimpleMutexCheckIsLockedOnThisThread();
      v8 = *(v7 + 16);
      v9 = (*(v7 + 24) / *(v7 + 32)) * *(v7 + 56);
      *(v7 + 24) = 0;
      *(v7 + 32) = 0;
      *(v7 + 16) = v9;
      FigSimpleMutexUnlock();
      if (v8 != v9)
      {
        CMNotificationCenterGetDefaultLocalCenter();
        CMNotificationCenterPostNotification();
      }
    }

    else
    {
      FigSimpleMutexUnlock();
    }

    return 0;
  }

  else
  {
    APSLogErrorAt(0);
    return 4294954516;
  }
}

uint64_t APSDataPacerBitRateChangeToSteadyState(uint64_t a1)
{
  if (a1)
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    FigSimpleMutexLock();
    if (!*(DerivedStorage + 40))
    {
      *(DerivedStorage + 48) = 0x4014000000000000;
      *(DerivedStorage + 40) = 1;
    }

    FigSimpleMutexUnlock();
    return 0;
  }

  else
  {
    APSLogErrorAt(0);
    return 4294954516;
  }
}

uint64_t APSDataPacerHoseCountCreateWithCapacity(uint64_t a1, uint64_t a2, CFTypeRef *a3)
{
  if (a3)
  {
    if (APSDataPacerGetClassID_sRegisterOnce != -1)
    {
      dispatch_once_f(&APSDataPacerGetClassID_sRegisterOnce, &APSDataPacerGetClassID_sClassID, dataPacer_registerBaseClass);
    }

    v5 = CMDerivedObjectCreate();
    if (v5)
    {
      v8 = v5;
      APSLogErrorAt(v5);
    }

    else
    {
      DerivedStorage = CMBaseObjectGetDerivedStorage();
      v7 = FigSimpleMutexCreate();
      *DerivedStorage = v7;
      if (v7)
      {
        DerivedStorage[2] = a2;
        if (gLogCategory_APSDataPacerHoseCount <= 50 && (gLogCategory_APSDataPacerHoseCount != -1 || _LogCategory_Initialize()))
        {
          LogPrintF(&gLogCategory_APSDataPacerHoseCount, "OSStatus APSDataPacerHoseCountCreateWithCapacity(CFAllocatorRef, uint64_t, APSDataPacerRef *)", 33554482, "[%{ptr}] APSDataPacerHoseCount created.\n", 0);
        }

        v8 = 0;
        *a3 = 0;
      }

      else
      {
        APSLogErrorAt(0);
        return 4294954510;
      }
    }
  }

  else
  {
    APSLogErrorAt(0);
    return 4294954516;
  }

  return v8;
}

uint64_t hoseCountDataPacer_GetPacedRate(uint64_t a1, unint64_t *a2)
{
  if (!a1 || !a2)
  {
    APSLogErrorAt(0);
    return 4294954516;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  v6 = *(DerivedStorage + 8);
  v5 = *(DerivedStorage + 16);
  if (v6)
  {
    v5 = (v5 >> 1) / v6;
  }

  *a2 = v5;
  FigSimpleMutexUnlock();
  if (gLogCategory_APSDataPacerHoseCount > 10)
  {
    return 0;
  }

  if (gLogCategory_APSDataPacerHoseCount != -1 || (result = _LogCategory_Initialize(), result))
  {
    LogPrintF(&gLogCategory_APSDataPacerHoseCount, "OSStatus hoseCountDataPacer_GetPacedRate(APSDataPacerRef, uint64_t *)", 33554442, "APSDataPacerHoseCount [%{ptr}] updating pacing rate to %llu", a1, *a2);
    return 0;
  }

  return result;
}

uint64_t hoseCountDataPacer_CopyProperty(uint64_t a1, const void *a2, uint64_t a3, uint64_t *a4)
{
  if (a1 && a2 && a4)
  {
    CMBaseObjectGetDerivedStorage();
    if (CFEqual(a2, @"kAPSDataPacerHoseCountProperty_NumHoses"))
    {
      FigSimpleMutexLock();
      UInt64 = FigCFNumberCreateUInt64();
      FigSimpleMutexUnlock();
      if (UInt64)
      {
        result = 0;
        *a4 = UInt64;
      }

      else
      {
        APSLogErrorAt(0);
        return 4294954510;
      }
    }

    else
    {
      return 4294954509;
    }
  }

  else
  {
    APSLogErrorAt(0);
    return 4294954516;
  }

  return result;
}

uint64_t hoseCountDataPacer_Finalize(const void *a1)
{
  CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APSDataPacerHoseCount <= 30 && (gLogCategory_APSDataPacerHoseCount != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APSDataPacerHoseCount, "void hoseCountDataPacer_Finalize(CMBaseObjectRef)", 33554462, "APSDataPacerHoseCount %p finalizing.\n", a1);
  }

  return FigSimpleMutexDestroy();
}

uint64_t APSDataPacerHoseCountCreateWithDefaultCapacityForCurrentDevice(uint64_t a1, CFTypeRef *a2)
{
  cf = 0;
  v4 = MGGetProductType();
  if (v4 == 1540760353 || v4 == 3348380076)
  {
    v6 = 6250000;
  }

  else
  {
    v6 = 12500000;
  }

  v7 = APSDataPacerHoseCountCreateWithCapacity(a1, v6, &cf);
  v8 = v7;
  if (v7)
  {
    APSLogErrorAt(v7);
    if (cf)
    {
      CFRelease(cf);
    }
  }

  else
  {
    *a2 = cf;
  }

  return v8;
}

uint64_t APSDataPacerHoseCountIncrement(uint64_t a1)
{
  if (a1)
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    FigSimpleMutexLock();
    ++*(DerivedStorage + 8);
    FigSimpleMutexUnlock();
    CMNotificationCenterGetDefaultLocalCenter();
    CMNotificationCenterPostNotification();
    return 0;
  }

  else
  {
    APSLogErrorAt(0);
    return 4294954516;
  }
}

uint64_t APSDataPacerHoseCountDecrement(uint64_t a1)
{
  if (a1)
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    FigSimpleMutexLock();
    v2 = *(DerivedStorage + 8);
    if (v2)
    {
      *(DerivedStorage + 8) = v2 - 1;
      FigSimpleMutexUnlock();
      CMNotificationCenterGetDefaultLocalCenter();
      CMNotificationCenterPostNotification();
      return 0;
    }

    APSLogErrorAt(0);
    FigSimpleMutexUnlock();
  }

  else
  {
    APSLogErrorAt(0);
  }

  return 4294954516;
}

uint64_t APSDataPacerHoseCountGetCount(uint64_t a1, void *a2)
{
  if (a1 && a2)
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    FigSimpleMutexLock();
    v4 = *(DerivedStorage + 8);
    FigSimpleMutexUnlock();
    result = 0;
    *a2 = v4;
  }

  else
  {
    APSLogErrorAt(0);
    return 4294954516;
  }

  return result;
}

uint64_t APSAudioProtocolDriverSenderLocalCreate(const __CFAllocator *a1, const void *a2, CFTypeRef *a3)
{
  if (!a3)
  {
    APSLogErrorAt(0);
    return 4294894825;
  }

  if (APSAudioProtocolDriverSenderGetClassID_sRegisterOnce != -1)
  {
    dispatch_once_f(&APSAudioProtocolDriverSenderGetClassID_sRegisterOnce, &APSAudioProtocolDriverSenderGetClassID_sClassID, audioProtocolDriverSender_registerBaseClass);
  }

  Mutable = CMDerivedObjectCreate();
  if (Mutable)
  {
    v8 = Mutable;
LABEL_19:
    APSLogErrorAt(Mutable);
    return v8;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  Mutable = FigSimpleMutexCreate();
  DerivedStorage[1] = Mutable;
  if (!Mutable)
  {
    v8 = 4294894826;
    goto LABEL_19;
  }

  Mutable = CFArrayCreateMutable(a1, 1024, MEMORY[0x277CBF128]);
  DerivedStorage[2] = Mutable;
  if (!Mutable)
  {
    v8 = 4294894826;
    goto LABEL_19;
  }

  if (a2)
  {
    *DerivedStorage = CFRetain(a2);
  }

  if (gLogCategory_APSAudioProtocolDriverSenderLocal <= 50 && (gLogCategory_APSAudioProtocolDriverSenderLocal != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APSAudioProtocolDriverSenderLocal, "OSStatus APSAudioProtocolDriverSenderLocalCreate(CFAllocatorRef, APSAudioHoseMetricCollectorRef, APSAudioProtocolDriverSenderRef *)", 33554482, "[%{ptr}] Created\n", 0);
  }

  v8 = 0;
  *a3 = 0;
  return v8;
}

uint64_t protocolDriverSenderLocal_GetLastDeliveredMediaTimeForHose(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = *MEMORY[0x277CC0898];
  v11 = *(MEMORY[0x277CC0898] + 16);
  if (!a1 || !a2)
  {
    v8 = 4294894825;
    APSLogErrorAt(0);
    if (!a3)
    {
      return v8;
    }

    goto LABEL_11;
  }

  if (!a3)
  {
    v8 = 4294894825;
    APSLogErrorAt(0);
    return v8;
  }

  pthread_once(&APSAudioProtocolDriverHoseDataBaseProtocolGetProtocolID_sRegisterAPSAudioProtocolDriverHoseDataBaseProtocolTypeOnce, registerAPSAudioProtocolDriverHoseDataBaseProtocolType);
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (!ProtocolVTable || (v6 = *(ProtocolVTable + 16)) == 0)
  {
    v8 = 4294954508;
LABEL_10:
    APSLogErrorAt(v8);
    goto LABEL_11;
  }

  v7 = *(v6 + 16);
  if (!v7)
  {
    v8 = 4294954514;
    goto LABEL_10;
  }

  v8 = v7(a2, &v10);
  if (v8)
  {
    goto LABEL_10;
  }

LABEL_11:
  *a3 = v10;
  *(a3 + 16) = v11;
  return v8;
}

uint64_t protocolDriverSenderLocal_SendAudioData(uint64_t a1, CMBlockBufferRef theBuffer)
{
  if (!theBuffer)
  {
    v14 = 4294894825;
LABEL_25:
    APSLogErrorAt(0);
    return v14;
  }

  if (CMBlockBufferIsEmpty(theBuffer))
  {
    v14 = 4294894825;
    goto LABEL_25;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  v5 = *(DerivedStorage + 16);
  if (!v5)
  {
    goto LABEL_6;
  }

  if (CFArrayGetCount(v5) <= 1023)
  {
    v5 = *(DerivedStorage + 16);
LABEL_6:
    CFArrayAppendValue(v5, theBuffer);
    if (gLogCategory_APSAudioProtocolDriverSenderLocal <= 30 && (gLogCategory_APSAudioProtocolDriverSenderLocal != -1 || _LogCategory_Initialize()))
    {
      v6 = *(DerivedStorage + 16);
      if (v6)
      {
        v7.length = CFArrayGetCount(*(DerivedStorage + 16));
      }

      else
      {
        v7.length = 0;
      }

      v7.location = 0;
      FirstIndexOfValue = CFArrayGetFirstIndexOfValue(v6, v7, theBuffer);
      Count = *(DerivedStorage + 16);
      if (Count)
      {
        Count = CFArrayGetCount(Count);
      }

      LogPrintF(&gLogCategory_APSAudioProtocolDriverSenderLocal, "OSStatus protocolDriverSenderLocal_enqueueAPAPPacketForSending(APSAudioProtocolDriverSenderRef, CMBlockBufferRef)", 33554462, "[%{ptr}] Enqueued bbuf [%{ptr}]. Index of Value in Array: %i. Buffer count after enqueueing: %i ", a1, theBuffer, FirstIndexOfValue, Count);
    }

    v10 = *(DerivedStorage + 24);
    pthread_once(&APSEndpointStreamAudioHoseProtocolGetProtocolID_sRegisterAPSEndpointStreamAudioHoseProtocolTypeOnce, registerAPSEndpointStreamAudioHoseProtocolType);
    ProtocolVTable = CMBaseObjectGetProtocolVTable();
    if (ProtocolVTable)
    {
      v12 = *(ProtocolVTable + 16);
      if (v12)
      {
        v13 = *(v12 + 40);
        if (v13)
        {
          v13(v10);
        }
      }
    }

    v14 = 0;
    goto LABEL_21;
  }

  v14 = 4294894824;
LABEL_21:
  FigSimpleMutexUnlock();
  return v14;
}

BOOL protocolDriverSenderLocal_IsHoseRegistered(uint64_t a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  v4 = *(DerivedStorage + 24) == a2;
  FigSimpleMutexUnlock();
  return v4;
}

uint64_t protocolDriverSenderLocal_DeregisterHose(uint64_t a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  if (!*(DerivedStorage + 24))
  {
    v10 = 4294894825;
    APSLogErrorAt(0);
    APSSignalErrorAt(0xFFFEE4E9, "Hose is not registererd.", "protocolDriverSenderLocal_DeregisterHose");
    goto LABEL_13;
  }

  pthread_once(&APSEndpointStreamAudioHoseProtocolGetProtocolID_sRegisterAPSEndpointStreamAudioHoseProtocolTypeOnce, registerAPSEndpointStreamAudioHoseProtocolType);
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (!ProtocolVTable || (v6 = *(ProtocolVTable + 16)) == 0)
  {
    v10 = 4294954508;
LABEL_12:
    APSLogErrorAt(v10);
    goto LABEL_13;
  }

  v7 = *(v6 + 56);
  if (!v7)
  {
    v10 = 4294954514;
    goto LABEL_12;
  }

  v8 = v7(a2, 0, 0);
  if (v8)
  {
    v10 = v8;
    goto LABEL_12;
  }

  v9 = *(DerivedStorage + 24);
  if (v9)
  {
    CFRelease(v9);
    *(DerivedStorage + 24) = 0;
  }

  if (gLogCategory_APSAudioProtocolDriverSenderLocal <= 50 && (gLogCategory_APSAudioProtocolDriverSenderLocal != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APSAudioProtocolDriverSenderLocal, "OSStatus protocolDriverSenderLocal_DeregisterHose(APSAudioProtocolDriverSenderRef, APSAudioProtocolDriverHoseRef)", 33554482, "[%{ptr}] Deregistered hoseData [%{ptr}] with protocolDriverSenderLocal. \n", a1, a2);
  }

  v10 = 0;
LABEL_13:
  FigSimpleMutexUnlock();
  return v10;
}

uint64_t protocolDriverSenderLocal_RegisterHose(uint64_t a1, const void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  if (*(DerivedStorage + 24))
  {
    v12 = 4294894825;
    APSLogErrorAt(0);
    APSSignalErrorAt(0xFFFEE4E9, "A Hose is already registered", "protocolDriverSenderLocal_RegisterHose");
LABEL_22:
    FigSimpleMutexUnlock();
    return v12;
  }

  if (a2)
  {
    v5 = CFRetain(a2);
  }

  else
  {
    v5 = 0;
  }

  *(DerivedStorage + 24) = v5;
  v6 = FigCFWeakReferenceHolderCreateWithReferencedObject();
  if (!v6)
  {
    APSLogErrorAt(0);
    v12 = 4294960568;
    goto LABEL_22;
  }

  v7 = v6;
  pthread_once(&APSEndpointStreamAudioHoseProtocolGetProtocolID_sRegisterAPSEndpointStreamAudioHoseProtocolTypeOnce, registerAPSEndpointStreamAudioHoseProtocolType);
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (ProtocolVTable && (v9 = *(ProtocolVTable + 16)) != 0)
  {
    v10 = *(v9 + 56);
    if (v10)
    {
      v11 = v10(a2, &protocolDriverSenderLocal_RegisterHose_callbacks, v7);
      if (!v11)
      {
        if (gLogCategory_APSAudioProtocolDriverSenderLocal <= 50 && (gLogCategory_APSAudioProtocolDriverSenderLocal != -1 || _LogCategory_Initialize()))
        {
          LogPrintF(&gLogCategory_APSAudioProtocolDriverSenderLocal, "OSStatus protocolDriverSenderLocal_RegisterHose(APSAudioProtocolDriverSenderRef, APSAudioProtocolDriverHoseRef)", 33554482, "[%{ptr}] Registered hoseData [%{ptr}] with protocolDriverSenderLocal.\n", a1, a2);
        }

        v12 = 0;
        goto LABEL_15;
      }

      v12 = v11;
    }

    else
    {
      v12 = 4294954514;
    }
  }

  else
  {
    v12 = 4294954508;
  }

  APSLogErrorAt(v12);
LABEL_15:
  FigSimpleMutexUnlock();
  CFRelease(v7);
  return v12;
}

uint64_t protocolDriverSenderLocal_copyAudioDataBBufs(uint64_t a1, uint64_t a2, void *a3)
{
  v22 = *MEMORY[0x277CC0898];
  v23 = *(MEMORY[0x277CC0898] + 16);
  if (!a3)
  {
    v11 = 4294894825;
    APSLogErrorAt(0);
    return v11;
  }

  v4 = FigCFWeakReferenceHolderCopyReferencedObject();
  if (!v4)
  {
    return 0;
  }

  v5 = v4;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  if (gLogCategory_APSAudioProtocolDriverSenderLocal <= 30 && (gLogCategory_APSAudioProtocolDriverSenderLocal != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APSAudioProtocolDriverSenderLocal, "OSStatus protocolDriverSenderLocal_copyAudioDataBBufs(void *, APSEndpointStreamAudioHoseRef, CFArrayRef *, Boolean *)", 33554462, "[%{ptr}] protocolDriverSenderLocal_copyAudioDataBBufs", v5);
  }

  Copy = FigCFArrayCreateCopy();
  if (!Copy)
  {
    APSLogErrorAt(0);
    v11 = 4294894826;
    goto LABEL_17;
  }

  v8 = Copy;
  FigCFArrayRemoveAllValues();
  LastValue = FigCFArrayGetLastValue();
  if (!LastValue)
  {
    v11 = 0;
    goto LABEL_21;
  }

  v24 = LastValue;
  v10 = APSAPAPDecodeHeader(_APSAPAPBBufDecodeReadCallback, &v24, &v22, 0);
  v11 = v10;
  if (!v10 && *(&v24 + 1) != 15)
  {
    v11 = 4294960587;
    goto LABEL_30;
  }

  if (v10)
  {
LABEL_30:
    v18 = v11;
    goto LABEL_20;
  }

  v12 = v22;
  *(DerivedStorage + 32) = v22;
  v13 = v23;
  *(DerivedStorage + 48) = v23;
  v14 = *(DerivedStorage + 24);
  v20 = v12;
  v21 = v13;
  pthread_once(&APSAudioProtocolDriverHoseDataBaseProtocolGetProtocolID_sRegisterAPSAudioProtocolDriverHoseDataBaseProtocolTypeOnce, registerAPSAudioProtocolDriverHoseDataBaseProtocolType);
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (!ProtocolVTable || (v16 = *(ProtocolVTable + 16)) == 0)
  {
    v11 = 4294954508;
    goto LABEL_19;
  }

  v17 = *(v16 + 8);
  if (!v17)
  {
    v11 = 4294954514;
    goto LABEL_19;
  }

  v24 = v20;
  v25 = v21;
  v11 = v17(v14, &v24);
  if (v11)
  {
LABEL_19:
    v18 = v11;
LABEL_20:
    APSLogErrorAt(v18);
LABEL_21:
    FigSimpleMutexUnlock();
    CFRelease(v8);
    goto LABEL_22;
  }

  *a3 = v8;
LABEL_17:
  FigSimpleMutexUnlock();
LABEL_22:
  CFRelease(v5);
  return v11;
}

uint64_t protocolDriverSenderLocal_FlushFromTime(uint64_t a1, CMTime *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APSAudioProtocolDriverSenderLocal <= 50 && (gLogCategory_APSAudioProtocolDriverSenderLocal != -1 || _LogCategory_Initialize()))
  {
    time = *a2;
    Seconds = CMTimeGetSeconds(&time);
    LogPrintF(&gLogCategory_APSAudioProtocolDriverSenderLocal, "OSStatus protocolDriverSenderLocal_FlushFromTime(APSAudioProtocolDriverSenderRef, CMTime, uint16_t *, uint16_t *)", 33554482, "[%{ptr}] FlushFromTime: %1.3f protocol driver local ", a1, *&Seconds);
  }

  FigSimpleMutexLock();
  time = *a2;
  time2 = *(DerivedStorage + 32);
  if (CMTimeCompare(&time, &time2) < 0)
  {
    v7 = *&a2->value;
    *(DerivedStorage + 48) = a2->epoch;
    *(DerivedStorage + 32) = v7;
    v8 = *(DerivedStorage + 24);
    time2 = *a2;
    pthread_once(&APSAudioProtocolDriverHoseDataBaseProtocolGetProtocolID_sRegisterAPSAudioProtocolDriverHoseDataBaseProtocolTypeOnce, registerAPSAudioProtocolDriverHoseDataBaseProtocolType);
    ProtocolVTable = CMBaseObjectGetProtocolVTable();
    if (ProtocolVTable && (v10 = *(ProtocolVTable + 16)) != 0)
    {
      v11 = *(v10 + 8);
      if (v11)
      {
        time = time2;
        v6 = v11(v8, &time);
        if (!v6)
        {
          goto LABEL_14;
        }
      }

      else
      {
        v6 = 4294954514;
      }
    }

    else
    {
      v6 = 4294954508;
    }

    APSLogErrorAt(v6);
    goto LABEL_14;
  }

  v6 = 0;
LABEL_14:
  FigSimpleMutexUnlock();
  return v6;
}

uint64_t protocolDriverSenderLocal_Flush(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APSAudioProtocolDriverSenderLocal <= 50 && (gLogCategory_APSAudioProtocolDriverSenderLocal != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APSAudioProtocolDriverSenderLocal, "OSStatus protocolDriverSenderLocal_Flush(APSAudioProtocolDriverSenderRef, uint16_t *)", 33554482, "[%{ptr}] Flush protocol driver local ", a1);
  }

  FigSimpleMutexLock();
  FigCFArrayRemoveAllValues();
  v3 = MEMORY[0x277CC08F0];
  v10 = *MEMORY[0x277CC08F0];
  *(DerivedStorage + 32) = *MEMORY[0x277CC08F0];
  v4 = *(v3 + 16);
  *(DerivedStorage + 48) = v4;
  v5 = *(DerivedStorage + 24);
  pthread_once(&APSAudioProtocolDriverHoseDataBaseProtocolGetProtocolID_sRegisterAPSAudioProtocolDriverHoseDataBaseProtocolTypeOnce, registerAPSAudioProtocolDriverHoseDataBaseProtocolType);
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (ProtocolVTable)
  {
    v7 = *(ProtocolVTable + 16);
    if (v7)
    {
      v8 = *(v7 + 8);
      if (v8)
      {
        v11 = v10;
        v12 = v4;
        v8(v5, &v11);
      }
    }
  }

  FigSimpleMutexUnlock();
  return 0;
}

uint64_t protocolDriverSenderLocal_SetProperty(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a2)
  {
    v5 = 4294894825;
LABEL_11:
    APSLogErrorAt(0);
    return v5;
  }

  if (!a3)
  {
    v5 = 4294894825;
    goto LABEL_11;
  }

  if (gLogCategory_APSAudioProtocolDriverSenderLocal <= 30 && (gLogCategory_APSAudioProtocolDriverSenderLocal != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APSAudioProtocolDriverSenderLocal, "OSStatus protocolDriverSenderLocal_SetProperty(CMBaseObjectRef, CFStringRef, const void *)", 33554462, "[%{ptr}] %###s %@ unsupported", a1, "OSStatus protocolDriverSenderLocal_SetProperty(CMBaseObjectRef, CFStringRef, const void *)", a2);
  }

  return 4294954509;
}

uint64_t protocolDriverSenderLocal_CopyProperty(uint64_t a1, const void *a2, uint64_t a3, uint64_t *a4)
{
  CMBaseObjectGetDerivedStorage();
  if (!a2)
  {
    v9 = 4294894825;
LABEL_16:
    APSLogErrorAt(0);
    return v9;
  }

  if (!a4)
  {
    v9 = 4294894825;
    goto LABEL_16;
  }

  if (CFEqual(a2, @"kAPSAudioProtocolDriverSenderProperty_BufferFullnessCount"))
  {
    FigSimpleMutexLock();
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    FigSimpleMutexCheckIsLockedOnThisThread();
    v8 = *(DerivedStorage + 16);
    if (v8)
    {
      CFArrayGetCount(v8);
    }

    *a4 = CFNumberCreateInt64();
    FigSimpleMutexUnlock();
    if (*a4)
    {
      return 0;
    }

    else
    {
      APSLogErrorAt(0);
      return 4294894826;
    }
  }

  else
  {
    if (gLogCategory_APSAudioProtocolDriverSenderLocal <= 30 && (gLogCategory_APSAudioProtocolDriverSenderLocal != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_APSAudioProtocolDriverSenderLocal, "OSStatus protocolDriverSenderLocal_CopyProperty(CMBaseObjectRef, CFStringRef, CFAllocatorRef, void *)", 33554462, "[%{ptr}] %###s %@ unsupported", a1, "OSStatus protocolDriverSenderLocal_CopyProperty(CMBaseObjectRef, CFStringRef, CFAllocatorRef, void *)", a2);
    }

    return 4294954509;
  }
}

__CFString *protocolDriverSenderLocal_CopyDebugDescription(uint64_t a1)
{
  Mutable = CFStringCreateMutable(*MEMORY[0x277CBECE8], 0);
  CFStringAppendFormat(Mutable, 0, @"<APSAudioProtocolDriverSenderLocal %p>", a1);
  return Mutable;
}

uint64_t protocolDriverSenderLocal_Finalize(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v2 = *(DerivedStorage + 16);
  if (v2)
  {
    CFRelease(v2);
    *(DerivedStorage + 16) = 0;
  }

  v3 = *(DerivedStorage + 24);
  if (v3)
  {
    pthread_once(&APSEndpointStreamAudioHoseProtocolGetProtocolID_sRegisterAPSEndpointStreamAudioHoseProtocolTypeOnce, registerAPSEndpointStreamAudioHoseProtocolType);
    ProtocolVTable = CMBaseObjectGetProtocolVTable();
    if (ProtocolVTable)
    {
      v5 = *(ProtocolVTable + 16);
      if (v5)
      {
        v6 = *(v5 + 56);
        if (v6)
        {
          v6(v3, 0, 0);
        }
      }
    }

    v7 = *(DerivedStorage + 24);
    if (v7)
    {
      CFRelease(v7);
      *(DerivedStorage + 24) = 0;
    }
  }

  if (*DerivedStorage)
  {
    CFRelease(*DerivedStorage);
    *DerivedStorage = 0;
  }

  return FigSimpleMutexDestroy();
}

uint64_t APSSettingsSetUseXPCHelper(int a1)
{
  if (!a1)
  {
    return 0;
  }

  v1 = 4294960561;
  APSLogErrorAt(4294960561);
  return v1;
}

__CFArray *APSSettingsCopyKeys(int *a1)
{
  Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x277CBF128]);
  if (!Mutable)
  {
    APSLogErrorAt(0);
    v9 = -6728;
    if (!a1)
    {
      return Mutable;
    }

    goto LABEL_7;
  }

  v3 = *MEMORY[0x277CBF040];
  v4 = *MEMORY[0x277CBF010];
  v5 = CFPreferencesCopyKeyList(@"com.apple.airplay", *MEMORY[0x277CBF040], *MEMORY[0x277CBF010]);
  if (v5)
  {
    v6 = v5;
    v11.length = CFArrayGetCount(v5);
    v11.location = 0;
    CFArrayAppendArray(Mutable, v6, v11);
    CFRelease(v6);
  }

  v7 = CFPreferencesCopyKeyList(@"com.apple.coremedia", v3, v4);
  if (v7)
  {
    v8 = v7;
    v12.length = CFArrayGetCount(v7);
    v12.location = 0;
    CFArrayAppendArray(Mutable, v8, v12);
    CFRelease(v8);
  }

  v9 = 0;
  if (a1)
  {
LABEL_7:
    *a1 = v9;
  }

  return Mutable;
}

uint64_t APSSettingsIsFeatureEnabled(const __CFString *a1)
{
  if (APSSettingsIsFeatureEnabled_sFeatureCacheOnce != -1)
  {
    dispatch_once(&APSSettingsIsFeatureEnabled_sFeatureCacheOnce, &__block_literal_global_740);
  }

  FigSimpleMutexLock();
  Value = CFDictionaryGetValue(APSSettingsIsFeatureEnabled_sFeatureCache, a1);
  if (Value)
  {
    IsFeatureEnabledInDomain = CFBooleanGetValue(Value);
  }

  else
  {
    v6 = 0;
    if (APSSettingsGetInt64IfPresent(a1, &v6))
    {
      IsFeatureEnabledInDomain = v6 != 0;
    }

    else
    {
      IsFeatureEnabledInDomain = APSSettingsIsFeatureEnabledInDomain(@"AirPlay", a1);
    }

    v4 = MEMORY[0x277CBED28];
    if (!IsFeatureEnabledInDomain)
    {
      v4 = MEMORY[0x277CBED10];
    }

    CFDictionarySetValue(APSSettingsIsFeatureEnabled_sFeatureCache, a1, *v4);
  }

  FigSimpleMutexUnlock();
  return IsFeatureEnabledInDomain;
}

uint64_t APSSettingsIsFeatureEnabledInDomain(uint64_t a1, uint64_t a2)
{
  v2 = CFStringGetOrCopyCStringUTF8();
  if (!v2)
  {
    v2 = CFStringGetOrCopyCStringUTF8();
    if (!v2)
    {
      return _os_feature_enabled_impl();
    }
  }

  APSLogErrorAt(v2);
  return 0;
}

uint64_t __APSSettingsIsFeatureEnabled_block_invoke()
{
  APSSettingsIsFeatureEnabled_sFeatureCache = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  result = FigSimpleMutexCreate();
  APSSettingsIsFeatureEnabled_sFeatureCacheMutex = result;
  return result;
}

const void *APSSettingsGetCString(const __CFString *a1, uint64_t a2, uint64_t a3, int *a4)
{
  result = APSSettingsCopyValueEx(a1, 0, a4);
  if (result)
  {
    v5 = result;
    v6 = CFGetCString();
    CFRelease(v5);
    return v6;
  }

  return result;
}

void APSSettingsGetDouble(const __CFString *a1, int *a2)
{
  v2 = APSSettingsCopyValueEx(a1, 0, a2);
  if (v2)
  {
    v3 = v2;
    CFGetDouble();
    CFRelease(v3);
  }
}

uint64_t APSSettingsGetInt8(const __CFString *a1, int *a2)
{
  v2 = APSSettingsCopyValueEx(a1, 0, a2);
  if (v2)
  {
    v3 = v2;
    v4 = CFGetInt64Ranged();
    CFRelease(v3);
  }

  else
  {
    return 0;
  }

  return v4;
}

uint64_t APSSettingsGetUInt8(const __CFString *a1, int *a2)
{
  v2 = APSSettingsCopyValueEx(a1, 0, a2);
  if (v2)
  {
    v3 = v2;
    v4 = CFGetInt64Ranged();
    CFRelease(v3);
  }

  else
  {
    return 0;
  }

  return v4;
}

uint64_t APSSettingsGetInt16(const __CFString *a1, int *a2)
{
  v2 = APSSettingsCopyValueEx(a1, 0, a2);
  if (v2)
  {
    v3 = v2;
    v4 = CFGetInt64Ranged();
    CFRelease(v3);
  }

  else
  {
    return 0;
  }

  return v4;
}

uint64_t APSSettingsGetUInt16(const __CFString *a1, int *a2)
{
  v2 = APSSettingsCopyValueEx(a1, 0, a2);
  if (v2)
  {
    v3 = v2;
    v4 = CFGetInt64Ranged();
    CFRelease(v3);
  }

  else
  {
    return 0;
  }

  return v4;
}

uint64_t APSSettingsGetInt32(const __CFString *a1, int *a2)
{
  v2 = APSSettingsCopyValueEx(a1, 0, a2);
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v4 = CFGetInt64Ranged();
  CFRelease(v3);
  return v4;
}

uint64_t APSSettingsGetUInt32(const __CFString *a1, int *a2)
{
  v2 = APSSettingsCopyValueEx(a1, 0, a2);
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v4 = CFGetInt64Ranged();
  CFRelease(v3);
  return v4;
}

const void *APSSettingsGetUInt64(const __CFString *a1, int *a2)
{
  result = APSSettingsCopyValueEx(a1, 0, a2);
  if (result)
  {
    v3 = result;
    v4 = CFGetInt64();
    CFRelease(v3);
    return v4;
  }

  return result;
}

uint64_t APSSettingsGetInt8IfPresent(const __CFString *a1, _BYTE *a2)
{
  v9 = 0;
  v3 = APSSettingsCopyValueEx(a1, 0, &v9);
  v4 = v3;
  if (v9)
  {
    v5 = 1;
  }

  else
  {
    v5 = v3 == 0;
  }

  if (v5)
  {
    v7 = 0;
    if (!v3)
    {
      return v7;
    }
  }

  else
  {
    v6 = CFGetInt64Ranged();
    if (v9)
    {
      v7 = 0;
    }

    else
    {
      *a2 = v6;
      v7 = 1;
    }
  }

  CFRelease(v4);
  return v7;
}

uint64_t APSSettingsGetUInt8IfPresent(const __CFString *a1, _BYTE *a2)
{
  v9 = 0;
  v3 = APSSettingsCopyValueEx(a1, 0, &v9);
  v4 = v3;
  if (v9)
  {
    v5 = 1;
  }

  else
  {
    v5 = v3 == 0;
  }

  if (v5)
  {
    v7 = 0;
    if (!v3)
    {
      return v7;
    }
  }

  else
  {
    v6 = CFGetInt64Ranged();
    if (v9)
    {
      v7 = 0;
    }

    else
    {
      *a2 = v6;
      v7 = 1;
    }
  }

  CFRelease(v4);
  return v7;
}

uint64_t APSSettingsGetInt16IfPresent(const __CFString *a1, _WORD *a2)
{
  v9 = 0;
  v3 = APSSettingsCopyValueEx(a1, 0, &v9);
  v4 = v3;
  if (v9)
  {
    v5 = 1;
  }

  else
  {
    v5 = v3 == 0;
  }

  if (v5)
  {
    v7 = 0;
    if (!v3)
    {
      return v7;
    }
  }

  else
  {
    v6 = CFGetInt64Ranged();
    if (v9)
    {
      v7 = 0;
    }

    else
    {
      *a2 = v6;
      v7 = 1;
    }
  }

  CFRelease(v4);
  return v7;
}

uint64_t APSSettingsGetUInt16IfPresent(const __CFString *a1, _WORD *a2)
{
  v9 = 0;
  v3 = APSSettingsCopyValueEx(a1, 0, &v9);
  v4 = v3;
  if (v9)
  {
    v5 = 1;
  }

  else
  {
    v5 = v3 == 0;
  }

  if (v5)
  {
    v7 = 0;
    if (!v3)
    {
      return v7;
    }
  }

  else
  {
    v6 = CFGetInt64Ranged();
    if (v9)
    {
      v7 = 0;
    }

    else
    {
      *a2 = v6;
      v7 = 1;
    }
  }

  CFRelease(v4);
  return v7;
}

uint64_t APSSettingsGetInt32IfPresent(const __CFString *a1, _DWORD *a2)
{
  v9 = 0;
  v3 = APSSettingsCopyValueEx(a1, 0, &v9);
  v4 = v3;
  if (v9)
  {
    v5 = 1;
  }

  else
  {
    v5 = v3 == 0;
  }

  if (v5)
  {
    v7 = 0;
    if (!v3)
    {
      return v7;
    }
  }

  else
  {
    v6 = CFGetInt64Ranged();
    if (v9)
    {
      v7 = 0;
    }

    else
    {
      *a2 = v6;
      v7 = 1;
    }
  }

  CFRelease(v4);
  return v7;
}

uint64_t APSSettingsGetUInt32IfPresent(const __CFString *a1, _DWORD *a2)
{
  v9 = 0;
  v3 = APSSettingsCopyValueEx(a1, 0, &v9);
  v4 = v3;
  if (v9)
  {
    v5 = 1;
  }

  else
  {
    v5 = v3 == 0;
  }

  if (v5)
  {
    v7 = 0;
    if (!v3)
    {
      return v7;
    }
  }

  else
  {
    v6 = CFGetInt64Ranged();
    if (v9)
    {
      v7 = 0;
    }

    else
    {
      *a2 = v6;
      v7 = 1;
    }
  }

  CFRelease(v4);
  return v7;
}

uint64_t APSSettingsGetUInt64IfPresent(const __CFString *a1, uint64_t *a2)
{
  v9 = 0;
  v3 = APSSettingsCopyValueEx(a1, 0, &v9);
  v4 = v3;
  if (v9)
  {
    v5 = 1;
  }

  else
  {
    v5 = v3 == 0;
  }

  if (v5)
  {
    v7 = 0;
    if (!v3)
    {
      return v7;
    }
  }

  else
  {
    v6 = CFGetInt64();
    if (v9)
    {
      v7 = 0;
    }

    else
    {
      *a2 = v6;
      v7 = 1;
    }
  }

  CFRelease(v4);
  return v7;
}

uint64_t APSSettingsSetCString(const __CFString *a1, const char *a2, CFIndex a3)
{
  if (a3 == -1)
  {
    v4 = CFStringCreateWithCString(0, a2, 0x8000100u);
  }

  else
  {
    v4 = CFStringCreateWithBytes(0, a2, a3, 0x8000100u, 0);
  }

  v5 = v4;
  if (v4)
  {
    if (CFEqual(a1, @"wirelessdisplay_enable_timestamps_diagnostic"))
    {
      v6 = @"com.apple.coremedia";
    }

    else
    {
      v6 = @"com.apple.airplay";
    }

    CFPreferencesSetAppValue(a1, v5, v6);
    CFRelease(v5);
    return 0;
  }

  else
  {
    APSLogErrorAt(0);
    return 4294960579;
  }
}

uint64_t APSSettingsSetValue(const __CFString *a1, const void *a2)
{
  if (CFEqual(a1, @"wirelessdisplay_enable_timestamps_diagnostic"))
  {
    v4 = @"com.apple.coremedia";
  }

  else
  {
    v4 = @"com.apple.airplay";
  }

  CFPreferencesSetAppValue(a1, a2, v4);
  return 0;
}

uint64_t APSSettingsSetNumber(const __CFString *a1, CFNumberType a2, const void *a3)
{
  v4 = CFNumberCreate(0, a2, a3);
  if (v4)
  {
    v5 = v4;
    if (CFEqual(a1, @"wirelessdisplay_enable_timestamps_diagnostic"))
    {
      v6 = @"com.apple.coremedia";
    }

    else
    {
      v6 = @"com.apple.airplay";
    }

    CFPreferencesSetAppValue(a1, v5, v6);
    CFRelease(v5);
    return 0;
  }

  else
  {
    APSLogErrorAt(0);
    return 4294960596;
  }
}

uint64_t APSSettingsSetInt64(const __CFString *a1, uint64_t a2)
{
  Int64 = CFNumberCreateInt64();
  if (Int64)
  {
    v4 = Int64;
    if (CFEqual(a1, @"wirelessdisplay_enable_timestamps_diagnostic"))
    {
      v5 = @"com.apple.coremedia";
    }

    else
    {
      v5 = @"com.apple.airplay";
    }

    CFPreferencesSetAppValue(a1, v4, v5);
    CFRelease(v4);
    return 0;
  }

  else
  {
    APSLogErrorAt(0);
    return 4294960596;
  }
}

uint64_t APSSettingsRemoveValue(const __CFString *a1)
{
  if (CFEqual(a1, @"wirelessdisplay_enable_timestamps_diagnostic"))
  {
    v2 = @"com.apple.coremedia";
  }

  else
  {
    v2 = @"com.apple.airplay";
  }

  CFPreferencesSetAppValue(a1, 0, v2);
  return 0;
}

uint64_t APSSettingsSynchronize()
{
  CFPreferencesAppSynchronize(@"com.apple.airplay");

  return CFPreferencesAppSynchronize(@"com.apple.coremedia");
}

uint64_t APSAudioFormatDescriptionListCreateWithASBDArray(const __CFAllocator *a1, CFDataRef theData, CFTypeRef *a3)
{
  v13 = 0;
  cf = 0;
  if (a3 && (Length = CFDataGetLength(theData), Length > 0x27))
  {
    v7 = Length;
    BytePtr = CFDataGetBytePtr(theData);
    appended = APSAudioFormatDescriptionListCreate(a1, &cf);
    if (appended)
    {
      v11 = appended;
    }

    else
    {
      v10 = v7 / 0x28;
      while (1)
      {
        appended = ASBDToAPAudioFormatIndex(BytePtr, 4294901760, &v13);
        if (appended)
        {
          v11 = appended;
          goto LABEL_12;
        }

        appended = APSAudioFormatDescriptionCreateAndAppendAudioFormatToList(v13, cf, 0);
        if (appended)
        {
          break;
        }

        BytePtr += 40;
        if (!--v10)
        {
          v11 = 0;
          *a3 = cf;
          return v11;
        }
      }

      v11 = appended;
    }

LABEL_12:
    APSLogErrorAt(appended);
  }

  else
  {
    APSLogErrorAt(0);
    v11 = 4294954516;
  }

  if (cf)
  {
    CFRelease(cf);
  }

  return v11;
}

uint64_t APSAudioFormatDescriptionCreateAndAppendAudioFormatToList(uint64_t a1, uint64_t a2, int a3)
{
  cf = 0;
  v5 = APSAudioFormatDescriptionCreateWithAudioFormatIndex(*MEMORY[0x277CBECE8], a1, 0, &cf);
  if (v5)
  {
    v6 = v5;
  }

  else
  {
    v5 = APSAudioFormatDescriptionListAddFormat(a2, cf);
    if (v5)
    {
      v6 = v5;
    }

    else
    {
      if (!a3)
      {
        v6 = 0;
        goto LABEL_7;
      }

      v5 = APSAudioFormatDescriptionListSetDefaultFormat(a2, cf);
      v6 = v5;
      if (!v5)
      {
        goto LABEL_7;
      }
    }
  }

  APSLogErrorAt(v5);
LABEL_7:
  if (cf)
  {
    CFRelease(cf);
  }

  return v6;
}

uint64_t APSAudioFormatDescriptionListCreateASBDArray(const __CFAllocator *a1, uint64_t a2, const __CFData **a3)
{
  theArray = 0;
  if (!a3)
  {
    APSLogErrorAt(0);
    return 4294954516;
  }

  v5 = APSAudioFormatDescriptionListCopyAudioFormatDescriptionsArray(a2, &theArray);
  if (v5)
  {
    v15 = v5;
    APSLogErrorAt(v5);
    goto LABEL_9;
  }

  Count = CFArrayGetCount(theArray);
  Mutable = CFDataCreateMutable(a1, 40 * Count);
  if (!Mutable)
  {
    APSLogErrorAt(0);
    v15 = 4294954510;
LABEL_9:
    if (theArray)
    {
      CFRelease(theArray);
    }

    return v15;
  }

  v8 = Mutable;
  CFDataSetLength(Mutable, 40 * Count);
  BytePtr = CFDataGetBytePtr(v8);
  if (Count < 1)
  {
LABEL_8:
    v15 = 0;
    *a3 = v8;
    goto LABEL_9;
  }

  v10 = BytePtr;
  v11 = 0;
  while (1)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(theArray, v11);
    if (!ValueAtIndex)
    {
      break;
    }

    v13 = ValueAtIndex[1];
    v14 = ValueAtIndex[2];
    *(v10 + 4) = *(ValueAtIndex + 6);
    *v10 = v13;
    *(v10 + 1) = v14;
    v10 += 40;
    if (Count == ++v11)
    {
      goto LABEL_8;
    }
  }

  result = APSLogErrorAt(0);
  __break(1u);
  return result;
}

uint64_t APSAudioFormatDescriptionGetPCMASBD(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    if (a1)
    {
      if (*(a1 + 24) == 1819304813)
      {
        result = 0;
        v5 = *(a1 + 16);
        v6 = *(a1 + 32);
        *(a2 + 32) = *(a1 + 48);
        *a2 = v5;
        *(a2 + 16) = v6;
      }

      else
      {
        BitsPerChannel = APAudioFormatIndexGetBitsPerChannel(*(a1 + 64));
        result = 0;
        if (BitsPerChannel == ((BitsPerChannel + 7) & 0x38))
        {
          v8 = 12;
        }

        else
        {
          v8 = 20;
        }

        *a2 = *(a1 + 16);
        *(a2 + 8) = 1819304813;
        *(a2 + 12) = v8;
        v9 = *(a1 + 44);
        v10 = v9 * ((BitsPerChannel + 7) >> 3);
        *(a2 + 16) = v10;
        *(a2 + 20) = 1;
        *(a2 + 24) = v10;
        *(a2 + 28) = v9;
        *(a2 + 32) = BitsPerChannel;
        *(a2 + 36) = 0;
      }
    }

    else
    {
      result = APSLogErrorAt(0);
      __break(1u);
    }
  }

  else
  {
    APSLogErrorAt(0);
    return 4294960591;
  }

  return result;
}

uint64_t APSAudioFormatDescriptionListCreateASRDArrayPCM(const __CFAllocator *a1, uint64_t a2, const __CFData **a3)
{
  theArray = 0;
  if (!a3)
  {
    APSLogErrorAt(0);
    v6 = 0;
    v23 = 4294954516;
LABEL_18:
    free(v6);
    return v23;
  }

  v6 = malloc_type_calloc(0x28uLL, 1uLL, 0x1E59C682uLL);
  if (!v6)
  {
    goto LABEL_22;
  }

  v7 = APSAudioFormatDescriptionListCopyAudioFormatDescriptionsArray(a2, &theArray);
  if (v7)
  {
    v23 = v7;
    APSLogErrorAt(v7);
    goto LABEL_16;
  }

  Count = CFArrayGetCount(theArray);
  Mutable = CFDataCreateMutable(a1, 56 * Count);
  if (!Mutable)
  {
LABEL_22:
    APSLogErrorAt(0);
    v23 = 4294954510;
LABEL_16:
    if (theArray)
    {
      CFRelease(theArray);
    }

    goto LABEL_18;
  }

  v10 = Mutable;
  CFDataSetLength(Mutable, 56 * Count);
  BytePtr = CFDataGetBytePtr(v10);
  if (Count < 1)
  {
LABEL_15:
    v23 = 0;
    *a3 = v10;
    goto LABEL_16;
  }

  v12 = BytePtr;
  v13 = 0;
  while (1)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(theArray, v13);
    if (!ValueAtIndex)
    {
      break;
    }

    v15 = ValueAtIndex;
    if (*(ValueAtIndex + 6) == 1819304813)
    {
      v16 = (ValueAtIndex + 2);
    }

    else
    {
      BitsPerChannel = APAudioFormatIndexGetBitsPerChannel(ValueAtIndex[8]);
      *v6 = v15[2];
      if (BitsPerChannel == ((BitsPerChannel + 7) & 0x38))
      {
        v18 = 12;
      }

      else
      {
        v18 = 20;
      }

      v6[2] = 1819304813;
      v6[3] = v18;
      v19 = *(v15 + 11);
      v20 = v19 * ((BitsPerChannel + 7) >> 3);
      v6[4] = v20;
      v6[5] = 1;
      v6[6] = v20;
      v6[7] = v19;
      v6[8] = BitsPerChannel;
      v6[9] = 0;
      v16 = v6;
    }

    v22 = *v16;
    v21 = *(v16 + 1);
    *(v12 + 4) = *(v16 + 4);
    *v12 = v22;
    *(v12 + 1) = v21;
    *&v21 = *v12;
    *(v12 + 5) = *v12;
    *(v12 + 6) = v21;
    v12 += 56;
    if (Count == ++v13)
    {
      goto LABEL_15;
    }
  }

  result = APSLogErrorAt(0);
  __break(1u);
  return result;
}

uint64_t APSAudioFormatDescriptionListCreateAdvertisementArray(const __CFAllocator *a1, uint64_t a2, CFMutableArrayRef *a3)
{
  theArray = 0;
  if (a3)
  {
    Mutable = CFArrayCreateMutable(a1, 0, MEMORY[0x277CBF128]);
    if (Mutable)
    {
      v6 = Mutable;
      v7 = APSAudioFormatDescriptionListCopyAudioFormatDescriptionsArray(a2, &theArray);
      if (v7)
      {
        v10 = v7;
        APSLogErrorAt(v7);
        CFRelease(v6);
      }

      else
      {
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

          CFArrayGetValueAtIndex(theArray, i);
          FigCFArrayAppendInt64();
        }

        v10 = 0;
        *a3 = v6;
      }
    }

    else
    {
      APSLogErrorAt(0);
      v10 = 4294954510;
    }

    if (theArray)
    {
      CFRelease(theArray);
    }
  }

  else
  {
    APSLogErrorAt(0);
    return 4294954516;
  }

  return v10;
}

uint64_t APSAudioFormatDescriptionCreateAndAppendAudioFormatToArray(uint64_t a1, __CFArray *a2)
{
  value = 0;
  if (a2)
  {
    v3 = APSAudioFormatDescriptionCreateWithAudioFormatIndex(*MEMORY[0x277CBECE8], a1, 0, &value);
    v4 = v3;
    if (v3)
    {
      APSLogErrorAt(v3);
    }

    else
    {
      CFArrayAppendValue(a2, value);
    }

    if (value)
    {
      CFRelease(value);
    }
  }

  else
  {
    APSLogErrorAt(0);
    return 4294954516;
  }

  return v4;
}

uint64_t APSAudioFormatDescriptionListCreateWithAdvertisementArray(const __CFAllocator *a1, const __CFArray *a2, CFTypeRef *a3)
{
  cf = 0;
  if (a3)
  {
    Mutable = CFArrayCreateMutable(a1, 0, MEMORY[0x277CBF128]);
    if (Mutable)
    {
      v7 = Mutable;
      v8 = 0;
      if (!a2)
      {
        goto LABEL_5;
      }

LABEL_4:
      for (i = CFArrayGetCount(a2); v8 < i; i = 0)
      {
        CFArrayGetValueAtIndex(a2, v8);
        UInt64 = FigCFNumberGetUInt64();
        appended = APSAudioFormatDescriptionCreateAndAppendAudioFormatToArray(UInt64, v7);
        if (appended == -6735)
        {
          if (gLogCategory_APSAudioFormatDescriptionUtils <= 50 && (gLogCategory_APSAudioFormatDescriptionUtils != -1 || _LogCategory_Initialize()))
          {
            LogPrintF(&gLogCategory_APSAudioFormatDescriptionUtils, "OSStatus APSAudioFormatDescriptionListCreateWithAdvertisementArray(CFAllocatorRef, CFArrayRef, APSAudioFormatDescriptionListRef *)", 33554482, "Unsupported index: %llu", UInt64);
          }
        }

        else
        {
          v12 = appended;
          if (appended)
          {
            APSLogErrorAt(appended);
            goto LABEL_18;
          }
        }

        ++v8;
        if (a2)
        {
          goto LABEL_4;
        }

LABEL_5:
        ;
      }

      v13 = APSAudioFormatDescriptionListCreateWithAudioFormatDescriptionArray(a1, v7, &cf);
      v12 = v13;
      if (v13)
      {
        APSLogErrorAt(v13);
        if (cf)
        {
          CFRelease(cf);
        }
      }

      else
      {
        *a3 = cf;
        cf = 0;
      }

LABEL_18:
      CFRelease(v7);
    }

    else
    {
      APSLogErrorAt(0);
      return 4294954510;
    }
  }

  else
  {
    APSLogErrorAt(0);
    return 4294954516;
  }

  return v12;
}

uint64_t APSAudioFormatDescriptionListCreateWithLegacyAudioFormatMask(const __CFAllocator *a1, unint64_t a2, CFTypeRef *a3)
{
  cf = 0;
  if (a3)
  {
    Mutable = CFArrayCreateMutable(a1, 0, MEMORY[0x277CBF128]);
    if (Mutable)
    {
      v7 = Mutable;
      for (i = 0; i != 64; ++i)
      {
        if ((a2 >> i))
        {
          appended = APSAudioFormatDescriptionCreateAndAppendAudioFormatToArray(i, v7);
          if (appended == -6735)
          {
            if (gLogCategory_APSAudioFormatDescriptionUtils <= 50 && (gLogCategory_APSAudioFormatDescriptionUtils != -1 || _LogCategory_Initialize()))
            {
              LogPrintF(&gLogCategory_APSAudioFormatDescriptionUtils, "OSStatus APSAudioFormatDescriptionListCreateWithLegacyAudioFormatMask(CFAllocatorRef, APAudioFormat, APSAudioFormatDescriptionListRef *)", 33554482, "Unsupported index: %llu", i);
            }
          }

          else
          {
            v10 = appended;
            if (appended)
            {
              APSLogErrorAt(appended);
              goto LABEL_16;
            }
          }
        }
      }

      v11 = APSAudioFormatDescriptionListCreateWithAudioFormatDescriptionArray(a1, v7, &cf);
      v10 = v11;
      if (v11)
      {
        APSLogErrorAt(v11);
        if (cf)
        {
          CFRelease(cf);
        }
      }

      else
      {
        *a3 = cf;
        cf = 0;
      }

LABEL_16:
      CFRelease(v7);
    }

    else
    {
      APSLogErrorAt(0);
      return 4294954510;
    }
  }

  else
  {
    APSLogErrorAt(0);
    return 4294954516;
  }

  return v10;
}

uint64_t APSAudioFormatDescriptionListCopyRichestFormatAsFigEndpointStreamAudioFormatDescription(uint64_t a1, uint64_t a2, CFTypeRef *a3)
{
  v8 = 0;
  cf = 0;
  v5 = APSAudioFormatDescriptionListCopyRichestFormat(a2, &cf);
  if (v5)
  {
    v6 = v5;
  }

  else
  {
    v5 = APSAudioFormatDescriptionCopyFigEndpointStreamAudioFormatDescription(a1, cf, &v8);
    v6 = v5;
    if (!v5)
    {
      *a3 = v8;
      v8 = 0;
      goto LABEL_4;
    }
  }

  APSLogErrorAt(v5);
LABEL_4:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v8)
  {
    CFRelease(v8);
  }

  return v6;
}

uint64_t APSAudioFormatDescriptionListCreateFigEndpointStreamAudioFormatDescriptionArray(const __CFAllocator *a1, uint64_t a2, __CFArray **a3)
{
  value = 0;
  theArray = 0;
  if (a3)
  {
    Mutable = CFArrayCreateMutable(a1, 0, MEMORY[0x277CBF128]);
    if (Mutable)
    {
      v7 = Mutable;
      v8 = APSAudioFormatDescriptionListCopyAudioFormatDescriptionsArray(a2, &theArray);
      if (v8)
      {
        v13 = v8;
      }

      else
      {
        if (!theArray || (Count = CFArrayGetCount(theArray), Count < 1))
        {
LABEL_11:
          v13 = 0;
          *a3 = v7;
          goto LABEL_12;
        }

        v10 = Count;
        v11 = 0;
        while (1)
        {
          ValueAtIndex = CFArrayGetValueAtIndex(theArray, v11);
          v8 = APSAudioFormatDescriptionCopyFigEndpointStreamAudioFormatDescription(a1, ValueAtIndex, &value);
          if (v8)
          {
            break;
          }

          CFArrayAppendValue(v7, value);
          if (value)
          {
            CFRelease(value);
            value = 0;
          }

          if (v10 == ++v11)
          {
            goto LABEL_11;
          }
        }

        v13 = v8;
      }

      APSLogErrorAt(v8);
      CFRelease(v7);
      if (value)
      {
        CFRelease(value);
      }
    }

    else
    {
      APSLogErrorAt(0);
      v13 = 4294954510;
    }
  }

  else
  {
    APSLogErrorAt(0);
    v13 = 4294954516;
  }

LABEL_12:
  if (theArray)
  {
    CFRelease(theArray);
  }

  return v13;
}

uint64_t APSAudioFormatDescriptionListCreateWithFigEndpointStreamAudioFormatDescriptionArray(const __CFAllocator *a1, const __CFArray *a2, CFTypeRef *a3)
{
  v13 = 0;
  cf = 0;
  if (a3)
  {
    v6 = APSAudioFormatDescriptionListCreate(a1, &v13);
    if (v6)
    {
      v11 = v6;
    }

    else
    {
      if (!a2 || (Count = CFArrayGetCount(a2), Count < 1))
      {
LABEL_11:
        v11 = 0;
        *a3 = v13;
        v13 = 0;
        goto LABEL_12;
      }

      v8 = Count;
      v9 = 0;
      while (1)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(a2, v9);
        v6 = APSAudioFormatDescriptionCreateWithFigEndpointStreamAudioFormatDescription(a1, ValueAtIndex, &cf);
        if (v6)
        {
          v11 = v6;
          goto LABEL_19;
        }

        v6 = APSAudioFormatDescriptionListAddFormat(v13, cf);
        if (v6)
        {
          break;
        }

        if (cf)
        {
          CFRelease(cf);
          cf = 0;
        }

        if (v8 == ++v9)
        {
          goto LABEL_11;
        }
      }

      v11 = v6;
    }

LABEL_19:
    APSLogErrorAt(v6);
  }

  else
  {
    APSLogErrorAt(0);
    v11 = 4294954516;
  }

LABEL_12:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v13)
  {
    CFRelease(v13);
  }

  return v11;
}

void APSAudioFormatDescriptionListCopyFilterFormatsForCurrentBufferedSenderWithEndpointStreamsInfo(const __CFAllocator *a1, const void *a2, int a3, int a4, int a5, CFTypeRef *a6)
{
  v19 = 0;
  cf = 0;
  IsFeatureEnabled = APSSettingsIsFeatureEnabled(@"BufferedAPAC");
  if (a6)
  {
    v13 = IsFeatureEnabled;
    v14 = MGGetProductType();
    if (!IsAppleTV() || v14 == 1110205732)
    {
      if (APSIsAPMSpeaker_sCheckOnce != -1)
      {
        dispatch_once(&APSIsAPMSpeaker_sCheckOnce, &__block_literal_global_16_1786);
      }

      if (APSIsAPMSpeaker_sIsAPMSpeaker)
      {
        if (!a5)
        {
          appended = APSAudioFormatDescriptionListCreate(a1, &cf);
          if (appended)
          {
            goto LABEL_62;
          }

          appended = APSAudioFormatDescriptionCreateAndAppendAudioFormatToList(22, cf, 0);
          if (appended)
          {
            goto LABEL_62;
          }

          appended = APSAudioFormatDescriptionListCreateIntersectionList(a2, cf, &v19);
          if (appended)
          {
            goto LABEL_62;
          }

          goto LABEL_55;
        }

        if (!FigGetCFPreferenceNumberWithDefault())
        {
          appended = APSAudioFormatDescriptionListCreate(a1, &cf);
          if (appended)
          {
            goto LABEL_62;
          }

          appended = APSAudioFormatDescriptionCreateAndAppendAudioFormatToList(22, cf, 0);
          if (appended)
          {
            goto LABEL_62;
          }

          appended = APSAudioFormatDescriptionCreateAndAppendAudioFormatToList(23, cf, 0);
          if (appended)
          {
            goto LABEL_62;
          }

          appended = APSAudioFormatDescriptionCreateAndAppendAudioFormatToList(39, cf, 0);
          if (appended)
          {
            goto LABEL_62;
          }

          appended = APSAudioFormatDescriptionCreateAndAppendAudioFormatToList(40, cf, 0);
          if (appended)
          {
            goto LABEL_62;
          }

          appended = APSAudioFormatDescriptionCreateAndAppendAudioFormatToList(20, cf, 0);
          if (appended)
          {
            goto LABEL_62;
          }

          appended = APSAudioFormatDescriptionCreateAndAppendAudioFormatToList(86, cf, 0);
          if (appended)
          {
            goto LABEL_62;
          }

          appended = APSAudioFormatDescriptionCreateAndAppendAudioFormatToList(21, cf, 0);
          if (appended)
          {
            goto LABEL_62;
          }

          if (v13)
          {
            appended = APSAudioFormatDescriptionListAddSupportedFormatsForAPACToList(cf);
            if (appended)
            {
              goto LABEL_62;
            }
          }

          v16 = cf;
          if (APSAudioFormatDescriptionListGetSupportedPassthroughFormatsForCurrentDeviceAsSender_initOnce != -1)
          {
            dispatch_once(&APSAudioFormatDescriptionListGetSupportedPassthroughFormatsForCurrentDeviceAsSender_initOnce, &__block_literal_global_39);
          }

          appended = APSAudioFormatDescriptionListAddListToSource(v16, APSAudioFormatDescriptionListGetSupportedPassthroughFormatsForCurrentDeviceAsSender_audioFormatList);
          if (appended)
          {
            goto LABEL_62;
          }

          appended = APSAudioFormatDescriptionListCreateIntersectionList(a2, cf, &v19);
          if (appended)
          {
            goto LABEL_62;
          }

          goto LABEL_55;
        }
      }

      else
      {
        if (APSIsIPhone_onceToken != -1)
        {
          dispatch_once(&APSIsIPhone_onceToken, &__block_literal_global_28);
        }

        if ((APSIsIPhone_sIsiPhone & 1) == 0 && APSIsIPad_onceToken != -1)
        {
          dispatch_once(&APSIsIPad_onceToken, &__block_literal_global_30);
        }
      }
    }

    else if (a3 != 2)
    {
      if (APSSettingsGetIntWithOverrideAndDefault(@"DisableATVWHASurround", 0, 0))
      {
        appended = APSAudioFormatDescriptionListCreate(a1, &cf);
        if (appended)
        {
          goto LABEL_62;
        }

        appended = APSAudioFormatDescriptionCreateAndAppendAudioFormatToList(22, cf, 0);
        if (appended)
        {
          goto LABEL_62;
        }

        appended = APSAudioFormatDescriptionListCreateIntersectionList(a2, cf, &v19);
        if (appended)
        {
          goto LABEL_62;
        }

LABEL_55:
        *a6 = v19;
        v19 = 0;
        goto LABEL_56;
      }

      if (a4)
      {
        appended = APSAudioFormatDescriptionListCreate(a1, &cf);
        if (appended)
        {
          goto LABEL_62;
        }

        appended = APSAudioFormatDescriptionCreateAndAppendAudioFormatToList(22, cf, 0);
        if (appended)
        {
          goto LABEL_62;
        }

        appended = APSAudioFormatDescriptionCreateAndAppendAudioFormatToList(20, cf, 0);
        if (appended)
        {
          goto LABEL_62;
        }

        appended = APSAudioFormatDescriptionCreateAndAppendAudioFormatToList(86, cf, 0);
        if (appended)
        {
          goto LABEL_62;
        }

        appended = APSAudioFormatDescriptionCreateAndAppendAudioFormatToList(21, cf, 0);
        if (appended)
        {
          goto LABEL_62;
        }

        if (v13)
        {
          appended = APSAudioFormatDescriptionListAddSupportedFormatsForAPACToList(cf);
          if (appended)
          {
            goto LABEL_62;
          }
        }

        v17 = cf;
        if (APSAudioFormatDescriptionListGetSupportedPassthroughFormatsForCurrentDeviceAsSender_initOnce != -1)
        {
          dispatch_once(&APSAudioFormatDescriptionListGetSupportedPassthroughFormatsForCurrentDeviceAsSender_initOnce, &__block_literal_global_39);
        }

        appended = APSAudioFormatDescriptionListAddListToSource(v17, APSAudioFormatDescriptionListGetSupportedPassthroughFormatsForCurrentDeviceAsSender_audioFormatList);
        if (appended)
        {
          goto LABEL_62;
        }

        APSAudioFormatDescriptionListCreateIntersectionList(a2, cf, &v19);
        goto LABEL_55;
      }
    }

    if (a2)
    {
      v18 = CFRetain(a2);
    }

    else
    {
      v18 = 0;
    }

    v19 = v18;
    goto LABEL_55;
  }

  appended = 0;
LABEL_62:
  APSLogErrorAt(appended);
LABEL_56:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v19)
  {
    CFRelease(v19);
  }
}

uint64_t APSAudioFormatDescriptionListAddSupportedFormatsForAPACToList(uint64_t a1)
{
  if (APSSettingsGetIntWithOverrideAndDefault(@"bufferedAPACStereo", 0, 0))
  {
    appended = APSAudioFormatDescriptionCreateAndAppendAudioFormatToList(64, a1, 0);
    if (appended)
    {
      v3 = appended;
      goto LABEL_19;
    }
  }

  appended = APSAudioFormatDescriptionCreateAndAppendAudioFormatToList(65, a1, 0);
  if (appended)
  {
    v3 = appended;
LABEL_19:
    APSLogErrorAt(appended);
    return v3;
  }

  appended = APSAudioFormatDescriptionCreateAndAppendAudioFormatToList(66, a1, 0);
  if (appended)
  {
    v3 = appended;
    goto LABEL_19;
  }

  appended = APSAudioFormatDescriptionCreateAndAppendAudioFormatToList(67, a1, 0);
  if (appended)
  {
    v3 = appended;
    goto LABEL_19;
  }

  appended = APSAudioFormatDescriptionCreateAndAppendAudioFormatToList(76, a1, 0);
  if (appended)
  {
    v3 = appended;
    goto LABEL_19;
  }

  appended = APSAudioFormatDescriptionCreateAndAppendAudioFormatToList(77, a1, 0);
  if (appended)
  {
    v3 = appended;
    goto LABEL_19;
  }

  appended = APSAudioFormatDescriptionCreateAndAppendAudioFormatToList(68, a1, 0);
  v3 = appended;
  if (appended)
  {
    goto LABEL_19;
  }

  v4 = APSAudioFormatDescriptionCreateAndAppendAudioFormatToList(92, a1, 0);
  if (v4)
  {
    v6 = v4;
    APSLogErrorAt(v4);
    return v6;
  }

  return v3;
}

uint64_t __APSAudioFormatDescriptionListGetSupportedPassthroughFormatsForCurrentDeviceAsSender_block_invoke()
{
  APSAudioFormatDescriptionListCreate(*MEMORY[0x277CBECE8], &APSAudioFormatDescriptionListGetSupportedPassthroughFormatsForCurrentDeviceAsSender_audioFormatList);
  v0 = APSAudioFormatDescriptionListGetSupportedPassthroughFormatsForCurrentDeviceAsSender_audioFormatList;
  if (APAudioFormatAtmosIsAllowedForCurrentDeviceAsSender_initOnce != -1)
  {
    dispatch_once(&APAudioFormatAtmosIsAllowedForCurrentDeviceAsSender_initOnce, &__block_literal_global_104);
  }

  v1 = APAudioFormatAtmosIsAllowedForCurrentDeviceAsSender_atmosAllowed;

  return APSAudioFormatDescriptionListAddSupportedFormatsForPassthrough(v0, 0, v1);
}

uint64_t APSAudioFormatDescriptionListAddSupportedFormatsForPassthrough(uint64_t a1, int a2, int a3)
{
  if (APSAudioFormatDescriptionListAddSupportedFormatsForPassthrough_initOnce != -1)
  {
    dispatch_once(&APSAudioFormatDescriptionListAddSupportedFormatsForPassthrough_initOnce, &__block_literal_global_775);
  }

  if (IsAppleTV())
  {
    if (!(APSAudioFormatDescriptionListAddSupportedFormatsForPassthrough_sPassthroughEnabled | a2))
    {
      return 0;
    }
  }

  else
  {
    if (APSIsAPMSpeaker_sCheckOnce != -1)
    {
      dispatch_once(&APSIsAPMSpeaker_sCheckOnce, &__block_literal_global_16_1786);
    }

    if (APSAudioFormatDescriptionListAddSupportedFormatsForPassthrough_sPassthroughEnabled)
    {
      v6 = APSIsAPMSpeaker_sIsAPMSpeaker == 0;
    }

    else
    {
      v6 = 1;
    }

    v7 = v6;
    if (!a2 && (v7 & 1) != 0)
    {
      return 0;
    }
  }

  v8 = APSAudioFormatDescriptionListAddSupportedFormatsForAACToList(a1);
  if (v8)
  {
    v9 = v8;
LABEL_37:
    APSLogErrorAt(v8);
    return v9;
  }

  v8 = APSAudioFormatDescriptionListAddSupportedFormatsForALACToList(a1);
  if (v8)
  {
    v9 = v8;
    goto LABEL_37;
  }

  if (a3)
  {
    if (APSAudioFormatDescriptionListAddSupportedFormatsForPassthrough_sPassthroughDDPAtmosEnabled)
    {
      v8 = APSAudioFormatDescriptionListAddSupportedDDPFormatsForPassthrough(a1);
      if (v8)
      {
        v9 = v8;
        goto LABEL_37;
      }
    }
  }

  if (!APSAudioFormatDescriptionListAddSupportedFormatsForPassthrough_sPassthroughEncryptedEnabled)
  {
    goto LABEL_27;
  }

  v8 = APSAudioFormatDescriptionListAddSupportedEncryptedAACFormatsForPassthrough(a1);
  if (v8)
  {
    v9 = v8;
    goto LABEL_37;
  }

  v8 = APSAudioFormatDescriptionListAddSupportedEncryptedALACFormatsForPassthrough(a1);
  if (v8)
  {
    v9 = v8;
    goto LABEL_37;
  }

  if (a3)
  {
    if (APSAudioFormatDescriptionListAddSupportedFormatsForPassthrough_sPassthroughDDPAtmosEnabled)
    {
      v8 = APSAudioFormatDescriptionListAddSupportedEncryptedDDPFormatsForPassthrough(a1);
      if (v8)
      {
        v9 = v8;
        goto LABEL_37;
      }
    }
  }

LABEL_27:
  v8 = APSAudioFormatDescriptionListAddSupportedMP3FormatsForPassthrough(a1);
  v9 = v8;
  if (v8)
  {
    goto LABEL_37;
  }

  return v9;
}

uint64_t APSAudioFormatDescriptionListAddSupportedFormatsForAACToList(uint64_t a1)
{
  if (!a1)
  {
    APSLogErrorAt(0);
    return 4294954516;
  }

  appended = APSAudioFormatDescriptionCreateAndAppendAudioFormatToList(22, a1, 0);
  if (appended)
  {
    v3 = appended;
    goto LABEL_11;
  }

  appended = APSAudioFormatDescriptionCreateAndAppendAudioFormatToList(23, a1, 0);
  if (appended)
  {
    v3 = appended;
    goto LABEL_11;
  }

  appended = APSAudioFormatDescriptionCreateAndAppendAudioFormatToList(39, a1, 0);
  v3 = appended;
  if (appended)
  {
LABEL_11:
    APSLogErrorAt(appended);
    return v3;
  }

  v4 = APSAudioFormatDescriptionCreateAndAppendAudioFormatToList(40, a1, 0);
  if (v4)
  {
    v6 = v4;
    APSLogErrorAt(v4);
    return v6;
  }

  return v3;
}

uint64_t APSAudioFormatDescriptionListAddSupportedFormatsForALACToList(uint64_t a1)
{
  if (!a1)
  {
    APSLogErrorAt(0);
    return 4294954516;
  }

  if (APSAudioFormatDescriptionIsBufferedLossless16bitSupported_initOnce != -1)
  {
    dispatch_once(&APSAudioFormatDescriptionIsBufferedLossless16bitSupported_initOnce, &__block_literal_global_61);
  }

  if (APSAudioFormatDescriptionIsBufferedLossless16bitSupported_lossless16bitSupported != 1)
  {
    if (APSAudioFormatDescriptionIsBufferedLossless20bitSupported_initOnce != -1)
    {
      dispatch_once(&APSAudioFormatDescriptionIsBufferedLossless20bitSupported_initOnce, &__block_literal_global_67);
    }

    if (APSAudioFormatDescriptionIsBufferedLossless20bitSupported_lossless20bitSupported == 1)
    {
      appended = APSAudioFormatDescriptionCreateAndAppendAudioFormatToList(85, a1, 0);
      if (!appended)
      {
        appended = APSAudioFormatDescriptionCreateAndAppendAudioFormatToList(86, a1, 0);
        v3 = appended;
        if (appended)
        {
          goto LABEL_21;
        }

        return v3;
      }

      v3 = appended;
    }

    else
    {
      appended = APSAudioFormatDescriptionCreateAndAppendAudioFormatToList(19, a1, 0);
      if (appended)
      {
        v3 = appended;
      }

      else
      {
        appended = APSAudioFormatDescriptionCreateAndAppendAudioFormatToList(21, a1, 0);
        v3 = appended;
        if (!appended)
        {
          return v3;
        }
      }
    }

LABEL_21:
    APSLogErrorAt(appended);
    return v3;
  }

  appended = APSAudioFormatDescriptionCreateAndAppendAudioFormatToList(18, a1, 0);
  if (appended)
  {
    v3 = appended;
    goto LABEL_21;
  }

  appended = APSAudioFormatDescriptionCreateAndAppendAudioFormatToList(20, a1, 0);
  v3 = appended;
  if (appended)
  {
    goto LABEL_21;
  }

  return v3;
}

uint64_t APSAudioFormatDescriptionListAddSupportedDDPFormatsForPassthrough(uint64_t a1)
{
  if (!a1)
  {
    APSLogErrorAt(0);
    return 4294954516;
  }

  appended = APSAudioFormatDescriptionCreateAndAppendAudioFormatToList(49, a1, 0);
  if (appended)
  {
    v3 = appended;
    goto LABEL_13;
  }

  appended = APSAudioFormatDescriptionCreateAndAppendAudioFormatToList(50, a1, 0);
  if (appended)
  {
    v3 = appended;
    goto LABEL_13;
  }

  appended = APSAudioFormatDescriptionCreateAndAppendAudioFormatToList(51, a1, 0);
  if (appended)
  {
    v3 = appended;
    goto LABEL_13;
  }

  appended = APSAudioFormatDescriptionCreateAndAppendAudioFormatToList(52, a1, 0);
  v3 = appended;
  if (appended)
  {
LABEL_13:
    APSLogErrorAt(appended);
    return v3;
  }

  v4 = APSAudioFormatDescriptionCreateAndAppendAudioFormatToList(53, a1, 0);
  if (v4)
  {
    v6 = v4;
    APSLogErrorAt(v4);
    return v6;
  }

  return v3;
}

uint64_t APSAudioFormatDescriptionListAddSupportedEncryptedAACFormatsForPassthrough(uint64_t a1)
{
  if (!a1)
  {
    APSLogErrorAt(0);
    return 4294954516;
  }

  appended = APSAudioFormatDescriptionCreateAndAppendAudioFormatToList(70, a1, 0);
  if (appended)
  {
    v3 = appended;
    goto LABEL_21;
  }

  appended = APSAudioFormatDescriptionCreateAndAppendAudioFormatToList(54, a1, 0);
  if (appended)
  {
    v3 = appended;
    goto LABEL_21;
  }

  appended = APSAudioFormatDescriptionCreateAndAppendAudioFormatToList(55, a1, 0);
  if (appended)
  {
    v3 = appended;
    goto LABEL_21;
  }

  appended = APSAudioFormatDescriptionCreateAndAppendAudioFormatToList(56, a1, 0);
  if (appended)
  {
    v3 = appended;
    goto LABEL_21;
  }

  appended = APSAudioFormatDescriptionCreateAndAppendAudioFormatToList(71, a1, 0);
  if (appended)
  {
    v3 = appended;
    goto LABEL_21;
  }

  appended = APSAudioFormatDescriptionCreateAndAppendAudioFormatToList(72, a1, 0);
  if (appended)
  {
    v3 = appended;
    goto LABEL_21;
  }

  appended = APSAudioFormatDescriptionCreateAndAppendAudioFormatToList(57, a1, 0);
  if (appended)
  {
    v3 = appended;
    goto LABEL_21;
  }

  appended = APSAudioFormatDescriptionCreateAndAppendAudioFormatToList(58, a1, 0);
  v3 = appended;
  if (appended)
  {
LABEL_21:
    APSLogErrorAt(appended);
    return v3;
  }

  v4 = APSAudioFormatDescriptionCreateAndAppendAudioFormatToList(60, a1, 0);
  if (v4)
  {
    v6 = v4;
    APSLogErrorAt(v4);
    return v6;
  }

  return v3;
}

uint64_t APSAudioFormatDescriptionListAddSupportedEncryptedALACFormatsForPassthrough(uint64_t a1)
{
  if (!a1)
  {
    APSLogErrorAt(0);
    return 4294954516;
  }

  if (APSAudioFormatDescriptionIsBufferedLossless16bitSupported_initOnce != -1)
  {
    dispatch_once(&APSAudioFormatDescriptionIsBufferedLossless16bitSupported_initOnce, &__block_literal_global_61);
  }

  if ((APSAudioFormatDescriptionIsBufferedLossless16bitSupported_lossless16bitSupported & 1) == 0)
  {
    if (APSAudioFormatDescriptionIsBufferedLossless20bitSupported_initOnce != -1)
    {
      dispatch_once(&APSAudioFormatDescriptionIsBufferedLossless20bitSupported_initOnce, &__block_literal_global_67);
    }

    if ((APSAudioFormatDescriptionIsBufferedLossless20bitSupported_lossless20bitSupported & 1) == 0)
    {
      appended = APSAudioFormatDescriptionCreateAndAppendAudioFormatToList(73, a1, 0);
      if (appended)
      {
        v2 = appended;
      }

      else
      {
        appended = APSAudioFormatDescriptionCreateAndAppendAudioFormatToList(61, a1, 0);
        v2 = appended;
        if (!appended)
        {
          return v2;
        }
      }

      APSLogErrorAt(appended);
      return v2;
    }
  }

  return 0;
}

uint64_t APSAudioFormatDescriptionListAddSupportedEncryptedDDPFormatsForPassthrough(uint64_t a1)
{
  if (!a1)
  {
    APSLogErrorAt(0);
    return 4294954516;
  }

  appended = APSAudioFormatDescriptionCreateAndAppendAudioFormatToList(62, a1, 0);
  if (appended)
  {
    v3 = appended;
    goto LABEL_13;
  }

  appended = APSAudioFormatDescriptionCreateAndAppendAudioFormatToList(63, a1, 0);
  if (appended)
  {
    v3 = appended;
    goto LABEL_13;
  }

  appended = APSAudioFormatDescriptionCreateAndAppendAudioFormatToList(33, a1, 0);
  if (appended)
  {
    v3 = appended;
    goto LABEL_13;
  }

  appended = APSAudioFormatDescriptionCreateAndAppendAudioFormatToList(34, a1, 0);
  v3 = appended;
  if (appended)
  {
LABEL_13:
    APSLogErrorAt(appended);
    return v3;
  }

  v4 = APSAudioFormatDescriptionCreateAndAppendAudioFormatToList(35, a1, 0);
  if (v4)
  {
    v6 = v4;
    APSLogErrorAt(v4);
    return v6;
  }

  return v3;
}

uint64_t APSAudioFormatDescriptionListAddSupportedMP3FormatsForPassthrough(uint64_t a1)
{
  if (a1)
  {
    appended = APSAudioFormatDescriptionCreateAndAppendAudioFormatToList(74, a1, 0);
    v3 = appended;
    if (appended)
    {
      APSLogErrorAt(appended);
    }

    else
    {
      v4 = APSAudioFormatDescriptionCreateAndAppendAudioFormatToList(75, a1, 0);
      if (v4)
      {
        v6 = v4;
        APSLogErrorAt(v4);
        return v6;
      }
    }
  }

  else
  {
    APSLogErrorAt(0);
    return 4294954516;
  }

  return v3;
}

uint64_t __APSAudioFormatDescriptionIsBufferedLossless20bitSupported_block_invoke()
{
  result = FigGetCFPreferenceNumberWithDefault();
  if (result)
  {
    APSAudioFormatDescriptionIsBufferedLossless20bitSupported_lossless20bitSupported = 1;
  }

  return result;
}

uint64_t __APSAudioFormatDescriptionIsBufferedLossless16bitSupported_block_invoke()
{
  result = FigGetCFPreferenceNumberWithDefault();
  if (result)
  {
    APSAudioFormatDescriptionIsBufferedLossless16bitSupported_lossless16bitSupported = 1;
  }

  return result;
}

uint64_t __APSAudioFormatDescriptionListAddSupportedFormatsForPassthrough_block_invoke()
{
  APSAudioFormatDescriptionListAddSupportedFormatsForPassthrough_sPassthroughEnabled = APSSettingsIsFeatureEnabled(@"BufferedPassthrough");
  APSAudioFormatDescriptionListAddSupportedFormatsForPassthrough_sPassthroughDDPAtmosEnabled = APSSettingsIsFeatureEnabled(@"BufferedPassthroughDDP");
  result = APSSettingsIsFeatureEnabled(@"BufferedPassthroughEncrypted");
  APSAudioFormatDescriptionListAddSupportedFormatsForPassthrough_sPassthroughEncryptedEnabled = result;
  return result;
}

uint64_t APSAudioFormatDescriptionListCopyTransportFormatDescriptionForSourceFormatDescription(uint64_t a1, uint64_t a2, CFTypeRef *a3)
{
  v23 = 0;
  if (!a3)
  {
    APSLogErrorAt(0);
    return 4294954516;
  }

  cf = 0;
  IsFeatureEnabled = APSSettingsIsFeatureEnabled(@"BufferedAPAC");
  IntWithOverrideAndDefault = APSSettingsGetIntWithOverrideAndDefault(@"bufferedAPACStereo", 0, 0);
  if (IsFeatureEnabled)
  {
    v8 = IntWithOverrideAndDefault == 0;
  }

  else
  {
    v8 = 1;
  }

  v9 = !v8;
  if (!a1)
  {
    v14 = 0;
    goto LABEL_238;
  }

  ChannelLayoutTag = FigEndpointStreamAudioFormatDescriptionGetChannelLayoutTag();
  ASBD = FigEndpointStreamAudioFormatDescriptionGetASBD();
  if (gLogCategory_APSAudioFormatDescriptionUtils <= 50 && (gLogCategory_APSAudioFormatDescriptionUtils != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APSAudioFormatDescriptionUtils, "APSAudioFormatDescriptionRef audioFormatDescriptionUtils_CopyTransportFormatForChannelCount(FigEndpointStreamAudioFormatDescriptionRef, APSAudioFormatDescriptionListRef)", 33554482, "Source Content ASBD: %{asbd}\n", ASBD);
  }

  v12 = *(ASBD + 28);
  if (v12 <= 9)
  {
    if ((v12 - 1) < 2)
    {
      goto LABEL_155;
    }

    if (v12 == 6)
    {
      v15 = *MEMORY[0x277CBECE8];
      goto LABEL_32;
    }

    if (v12 != 8)
    {
      goto LABEL_204;
    }

    goto LABEL_101;
  }

  if (v12 == 10)
  {
    if (!IsFeatureEnabled)
    {
      goto LABEL_101;
    }
  }

  else
  {
    if (v12 == 12)
    {
      if (!IsFeatureEnabled)
      {
        goto LABEL_101;
      }

      v13 = *MEMORY[0x277CBECE8];
    }

    else
    {
      if (v12 != 16)
      {
LABEL_204:
        if (gLogCategory_APSAudioFormatDescriptionUtils <= 50 && (gLogCategory_APSAudioFormatDescriptionUtils != -1 || _LogCategory_Initialize()))
        {
          LogPrintF(&gLogCategory_APSAudioFormatDescriptionUtils, "APSAudioFormatDescriptionRef audioFormatDescriptionUtils_CopyTransportFormatForChannelCount(FigEndpointStreamAudioFormatDescriptionRef, APSAudioFormatDescriptionListRef)", 33554482, "Cannot find supported input channel count (%u) in supported formats.", *(ASBD + 28));
        }

        goto LABEL_208;
      }

      if (!IsFeatureEnabled)
      {
        goto LABEL_101;
      }

      v13 = *MEMORY[0x277CBECE8];
      v14 = APSAudioFormatDescriptionCreateWithAudioFormatIndex(*MEMORY[0x277CBECE8], 92, 0, &cf);
      if (v14)
      {
        goto LABEL_238;
      }

      if (APSAudioFormatDescriptionListContainsFormat(a2, cf))
      {
        goto LABEL_208;
      }

      if (cf)
      {
        CFRelease(cf);
        cf = 0;
      }

      if (gLogCategory_APSAudioFormatDescriptionUtils <= 50 && (gLogCategory_APSAudioFormatDescriptionUtils != -1 || _LogCategory_Initialize()))
      {
        LogPrintF(&gLogCategory_APSAudioFormatDescriptionUtils, "APSAudioFormatDescriptionRef audioFormatDescriptionUtils_CopyTransportFormatForChannelCount(FigEndpointStreamAudioFormatDescriptionRef, APSAudioFormatDescriptionListRef)", 33554482, "Supported format does not include APAC 9.1.6 format. Checking next supported format. ");
      }
    }

    v14 = APSAudioFormatDescriptionCreateWithAudioFormatIndex(v13, 68, 0, &cf);
    if (v14)
    {
      goto LABEL_238;
    }

    if (APSAudioFormatDescriptionListContainsFormat(a2, cf))
    {
      goto LABEL_208;
    }

    if (cf)
    {
      CFRelease(cf);
      cf = 0;
    }

    if (gLogCategory_APSAudioFormatDescriptionUtils <= 50 && (gLogCategory_APSAudioFormatDescriptionUtils != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_APSAudioFormatDescriptionUtils, "APSAudioFormatDescriptionRef audioFormatDescriptionUtils_CopyTransportFormatForChannelCount(FigEndpointStreamAudioFormatDescriptionRef, APSAudioFormatDescriptionListRef)", 33554482, "Supported format does not include APAC 7.1.4 format. Checking next supported format. ");
    }
  }

  v15 = *MEMORY[0x277CBECE8];
  if (ChannelLayoutTag <= 12845065)
  {
    if (ChannelLayoutTag == 12582924)
    {
      goto LABEL_56;
    }

    v16 = 12648464;
LABEL_55:
    if (ChannelLayoutTag != v16)
    {
      v14 = APSAudioFormatDescriptionCreateWithAudioFormatIndex(*MEMORY[0x277CBECE8], 76, 0, &cf);
      if (v14)
      {
        goto LABEL_238;
      }

      if (APSAudioFormatDescriptionListContainsFormat(a2, cf))
      {
        goto LABEL_208;
      }

      if (cf)
      {
        CFRelease(cf);
        cf = 0;
      }

      if (gLogCategory_APSAudioFormatDescriptionUtils > 50 || gLogCategory_APSAudioFormatDescriptionUtils == -1 && !_LogCategory_Initialize())
      {
        if (ChannelLayoutTag == 13238284)
        {
          goto LABEL_108;
        }

        goto LABEL_115;
      }

      goto LABEL_100;
    }

LABEL_56:
    v14 = APSAudioFormatDescriptionCreateWithAudioFormatIndex(*MEMORY[0x277CBECE8], 77, 0, &cf);
    if (v14)
    {
      goto LABEL_238;
    }

    if (APSAudioFormatDescriptionListContainsFormat(a2, cf))
    {
      goto LABEL_208;
    }

    if (cf)
    {
      CFRelease(cf);
      cf = 0;
    }

    if (gLogCategory_APSAudioFormatDescriptionUtils <= 50 && (gLogCategory_APSAudioFormatDescriptionUtils != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_APSAudioFormatDescriptionUtils, "APSAudioFormatDescriptionRef audioFormatDescriptionUtils_CopyTransportFormatForChannelCount(FigEndpointStreamAudioFormatDescriptionRef, APSAudioFormatDescriptionListRef)", 33554482, "Supported format does not include APAC 7.1.2 format. Checking next supported format. ");
    }

    v14 = APSAudioFormatDescriptionCreateWithAudioFormatIndex(v15, 76, 0, &cf);
    if (v14)
    {
      goto LABEL_238;
    }

    if (APSAudioFormatDescriptionListContainsFormat(a2, cf))
    {
      goto LABEL_208;
    }

    if (cf)
    {
      CFRelease(cf);
      cf = 0;
    }

    if (gLogCategory_APSAudioFormatDescriptionUtils > 50 || gLogCategory_APSAudioFormatDescriptionUtils == -1 && !_LogCategory_Initialize())
    {
      goto LABEL_101;
    }

LABEL_100:
    LogPrintF(&gLogCategory_APSAudioFormatDescriptionUtils, "APSAudioFormatDescriptionRef audioFormatDescriptionUtils_CopyTransportFormatForChannelCount(FigEndpointStreamAudioFormatDescriptionRef, APSAudioFormatDescriptionListRef)", 33554482, "Supported format does not include APAC 5.1.4 format. Checking next supported format. ");
    goto LABEL_101;
  }

  if (ChannelLayoutTag != 12845066)
  {
    v16 = 13238284;
    goto LABEL_55;
  }

  v14 = APSAudioFormatDescriptionCreateWithAudioFormatIndex(*MEMORY[0x277CBECE8], 77, 0, &cf);
  if (v14)
  {
    goto LABEL_238;
  }

  if (APSAudioFormatDescriptionListContainsFormat(a2, cf))
  {
    goto LABEL_208;
  }

  if (cf)
  {
    CFRelease(cf);
    cf = 0;
  }

  if (gLogCategory_APSAudioFormatDescriptionUtils > 50 || gLogCategory_APSAudioFormatDescriptionUtils == -1 && !_LogCategory_Initialize())
  {
    goto LABEL_108;
  }

  LogPrintF(&gLogCategory_APSAudioFormatDescriptionUtils, "APSAudioFormatDescriptionRef audioFormatDescriptionUtils_CopyTransportFormatForChannelCount(FigEndpointStreamAudioFormatDescriptionRef, APSAudioFormatDescriptionListRef)", 33554482, "Supported format does not include APAC 7.1.2 format. Checking next supported format. ");
LABEL_101:
  if (ChannelLayoutTag > 12845065)
  {
    if (ChannelLayoutTag == 12845066)
    {
      goto LABEL_107;
    }

    v17 = 13238284;
  }

  else
  {
    if (ChannelLayoutTag == 12582924)
    {
      goto LABEL_107;
    }

    v17 = 12648464;
  }

  if (ChannelLayoutTag != v17)
  {
LABEL_115:
    if (APAudioFormatIsAudioChannelLayoutTag7_1(ChannelLayoutTag) && IsFeatureEnabled)
    {
      v15 = *MEMORY[0x277CBECE8];
      v14 = APSAudioFormatDescriptionCreateWithAudioFormatIndex(*MEMORY[0x277CBECE8], 67, 0, &cf);
      if (v14)
      {
        goto LABEL_238;
      }

      if (APSAudioFormatDescriptionListContainsFormat(a2, cf))
      {
        goto LABEL_208;
      }

      if (cf)
      {
        CFRelease(cf);
        cf = 0;
      }

      if (gLogCategory_APSAudioFormatDescriptionUtils <= 50 && (gLogCategory_APSAudioFormatDescriptionUtils != -1 || _LogCategory_Initialize()))
      {
        LogPrintF(&gLogCategory_APSAudioFormatDescriptionUtils, "APSAudioFormatDescriptionRef audioFormatDescriptionUtils_CopyTransportFormatForChannelCount(FigEndpointStreamAudioFormatDescriptionRef, APSAudioFormatDescriptionListRef)", 33554482, "Supported format does not include APAC 7.1 format. Checking next supported format. ");
      }

      goto LABEL_33;
    }

    v15 = *MEMORY[0x277CBECE8];
    if (IsFeatureEnabled)
    {
      v14 = APSAudioFormatDescriptionCreateWithAudioFormatIndex(*MEMORY[0x277CBECE8], 66, 0, &cf);
      if (v14)
      {
        goto LABEL_238;
      }

      if (APSAudioFormatDescriptionListContainsFormat(a2, cf))
      {
        goto LABEL_208;
      }

      if (cf)
      {
        CFRelease(cf);
        cf = 0;
      }

      if (gLogCategory_APSAudioFormatDescriptionUtils <= 50 && (gLogCategory_APSAudioFormatDescriptionUtils != -1 || _LogCategory_Initialize()))
      {
        LogPrintF(&gLogCategory_APSAudioFormatDescriptionUtils, "APSAudioFormatDescriptionRef audioFormatDescriptionUtils_CopyTransportFormatForChannelCount(FigEndpointStreamAudioFormatDescriptionRef, APSAudioFormatDescriptionListRef)", 33554482, "Supported format does not include APAC 5.1.2 format. Checking next supported format. ");
      }
    }

    v14 = APSAudioFormatDescriptionCreateWithAudioFormatIndex(v15, 40, 0, &cf);
    if (v14)
    {
      goto LABEL_238;
    }

    if (APSAudioFormatDescriptionListContainsFormat(a2, cf))
    {
      goto LABEL_208;
    }

    if (cf)
    {
      CFRelease(cf);
      cf = 0;
    }

    v14 = APSAudioFormatDescriptionCreateWithAudioFormatIndex(v15, 42, 0, &cf);
    if (v14)
    {
LABEL_238:
      APSLogErrorAt(v14);
      goto LABEL_208;
    }

    goto LABEL_146;
  }

LABEL_107:
  v15 = *MEMORY[0x277CBECE8];
  if (IsFeatureEnabled)
  {
LABEL_108:
    v14 = APSAudioFormatDescriptionCreateWithAudioFormatIndex(v15, 67, 0, &cf);
    if (v14)
    {
      goto LABEL_238;
    }

    if (APSAudioFormatDescriptionListContainsFormat(a2, cf))
    {
      goto LABEL_208;
    }

    if (cf)
    {
      CFRelease(cf);
      cf = 0;
    }

    if (gLogCategory_APSAudioFormatDescriptionUtils <= 50 && (gLogCategory_APSAudioFormatDescriptionUtils != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_APSAudioFormatDescriptionUtils, "APSAudioFormatDescriptionRef audioFormatDescriptionUtils_CopyTransportFormatForChannelCount(FigEndpointStreamAudioFormatDescriptionRef, APSAudioFormatDescriptionListRef)", 33554482, "Supported format does not include APAC 7.1 format. Checking next supported format. ");
    }

    v14 = APSAudioFormatDescriptionCreateWithAudioFormatIndex(v15, 66, 0, &cf);
    if (v14)
    {
      goto LABEL_238;
    }

    if (APSAudioFormatDescriptionListContainsFormat(a2, cf))
    {
      goto LABEL_208;
    }

    if (cf)
    {
      CFRelease(cf);
      cf = 0;
    }

    if (gLogCategory_APSAudioFormatDescriptionUtils <= 50 && (gLogCategory_APSAudioFormatDescriptionUtils != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_APSAudioFormatDescriptionUtils, "APSAudioFormatDescriptionRef audioFormatDescriptionUtils_CopyTransportFormatForChannelCount(FigEndpointStreamAudioFormatDescriptionRef, APSAudioFormatDescriptionListRef)", 33554482, "Supported format does not include APAC 5.1.2 format. Checking next supported format. ");
    }
  }

  v14 = APSAudioFormatDescriptionCreateWithAudioFormatIndex(v15, 40, 0, &cf);
  if (v14)
  {
    goto LABEL_238;
  }

  if (APSAudioFormatDescriptionListContainsFormat(a2, cf))
  {
    goto LABEL_208;
  }

  if (cf)
  {
    CFRelease(cf);
    cf = 0;
  }

  v14 = APSAudioFormatDescriptionCreateWithAudioFormatIndex(v15, 42, 0, &cf);
  if (v14)
  {
    goto LABEL_238;
  }

LABEL_146:
  if (APSAudioFormatDescriptionListContainsFormat(a2, cf))
  {
    goto LABEL_208;
  }

  if (cf)
  {
    CFRelease(cf);
    cf = 0;
  }

  if (gLogCategory_APSAudioFormatDescriptionUtils <= 50 && (gLogCategory_APSAudioFormatDescriptionUtils != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APSAudioFormatDescriptionUtils, "APSAudioFormatDescriptionRef audioFormatDescriptionUtils_CopyTransportFormatForChannelCount(FigEndpointStreamAudioFormatDescriptionRef, APSAudioFormatDescriptionListRef)", 33554482, "Supported format does not include AAC-ELD/AAC-LC 48k 5.1.2 format. Checking next supported format. ");
  }

LABEL_32:
  if (IsFeatureEnabled)
  {
LABEL_33:
    v14 = APSAudioFormatDescriptionCreateWithAudioFormatIndex(v15, 65, 0, &cf);
    if (v14)
    {
      goto LABEL_238;
    }

    if (APSAudioFormatDescriptionListContainsFormat(a2, cf))
    {
      goto LABEL_208;
    }

    if (cf)
    {
      CFRelease(cf);
      cf = 0;
    }

    if (gLogCategory_APSAudioFormatDescriptionUtils <= 50 && (gLogCategory_APSAudioFormatDescriptionUtils != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_APSAudioFormatDescriptionUtils, "APSAudioFormatDescriptionRef audioFormatDescriptionUtils_CopyTransportFormatForChannelCount(FigEndpointStreamAudioFormatDescriptionRef, APSAudioFormatDescriptionListRef)", 33554482, "Supported format does not include APAC 5.1 format. Checking next supported format. ");
    }
  }

  v14 = APSAudioFormatDescriptionCreateWithAudioFormatIndex(v15, 39, 0, &cf);
  if (v14)
  {
    goto LABEL_238;
  }

  if (APSAudioFormatDescriptionListContainsFormat(a2, cf))
  {
    goto LABEL_208;
  }

  if (cf)
  {
    CFRelease(cf);
    cf = 0;
  }

  v14 = APSAudioFormatDescriptionCreateWithAudioFormatIndex(v15, 41, 0, &cf);
  if (v14)
  {
    goto LABEL_238;
  }

  if (APSAudioFormatDescriptionListContainsFormat(a2, cf))
  {
    goto LABEL_208;
  }

  if (cf)
  {
    CFRelease(cf);
    cf = 0;
  }

  if (gLogCategory_APSAudioFormatDescriptionUtils <= 50 && (gLogCategory_APSAudioFormatDescriptionUtils != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APSAudioFormatDescriptionUtils, "APSAudioFormatDescriptionRef audioFormatDescriptionUtils_CopyTransportFormatForChannelCount(FigEndpointStreamAudioFormatDescriptionRef, APSAudioFormatDescriptionListRef)", 33554482, "Supported format does not include AAC-ELD/AAC-LC 48k 5.1 format. Checking next supported format. ");
  }

LABEL_155:
  v18 = *MEMORY[0x277CBECE8];
  if (v9)
  {
    v14 = APSAudioFormatDescriptionCreateWithAudioFormatIndex(*MEMORY[0x277CBECE8], 64, 0, &cf);
    if (!v14)
    {
      if (APSAudioFormatDescriptionListContainsFormat(a2, cf))
      {
        goto LABEL_208;
      }

      if (cf)
      {
        CFRelease(cf);
        cf = 0;
      }

      if (gLogCategory_APSAudioFormatDescriptionUtils <= 50 && (gLogCategory_APSAudioFormatDescriptionUtils != -1 || _LogCategory_Initialize()))
      {
        LogPrintF(&gLogCategory_APSAudioFormatDescriptionUtils, "APSAudioFormatDescriptionRef audioFormatDescriptionUtils_CopyTransportFormatForChannelCount(FigEndpointStreamAudioFormatDescriptionRef, APSAudioFormatDescriptionListRef)", 33554482, "Supported format does not include APAC stereo format. Checking next supported format. ");
      }

      goto LABEL_164;
    }

    goto LABEL_238;
  }

LABEL_164:
  v14 = APSAudioFormatDescriptionCreateWithAudioFormatIndex(v18, 20, 0, &cf);
  if (v14)
  {
    goto LABEL_238;
  }

  if (APSAudioFormatDescriptionListContainsFormat(a2, cf) && audioFormatDescriptionUtils_contentFormatDescriptionWarrantsLosslessTransport(a1))
  {
    goto LABEL_208;
  }

  if (cf)
  {
    CFRelease(cf);
    cf = 0;
  }

  v14 = APSAudioFormatDescriptionCreateWithAudioFormatIndex(v18, 86, 0, &cf);
  if (v14)
  {
    goto LABEL_238;
  }

  if (APSAudioFormatDescriptionListContainsFormat(a2, cf) && audioFormatDescriptionUtils_contentFormatDescriptionWarrantsLosslessTransport(a1))
  {
    goto LABEL_208;
  }

  if (cf)
  {
    CFRelease(cf);
    cf = 0;
  }

  v14 = APSAudioFormatDescriptionCreateWithAudioFormatIndex(v18, 21, 0, &cf);
  if (v14)
  {
    goto LABEL_238;
  }

  if (APSAudioFormatDescriptionListContainsFormat(a2, cf) && audioFormatDescriptionUtils_contentFormatDescriptionWarrantsLosslessTransport(a1))
  {
    goto LABEL_208;
  }

  if (cf)
  {
    CFRelease(cf);
    cf = 0;
  }

  v14 = APSAudioFormatDescriptionCreateWithAudioFormatIndex(v18, 23, 0, &cf);
  if (v14)
  {
    goto LABEL_238;
  }

  if (!APSAudioFormatDescriptionListContainsFormat(a2, cf))
  {
    if (cf)
    {
      CFRelease(cf);
      cf = 0;
    }

    v14 = APSAudioFormatDescriptionCreateWithAudioFormatIndex(v18, 22, 0, &cf);
    if (!v14)
    {
      if (APSAudioFormatDescriptionListContainsFormat(a2, cf))
      {
        goto LABEL_208;
      }

      if (cf)
      {
        CFRelease(cf);
        cf = 0;
      }

      if (gLogCategory_APSAudioFormatDescriptionUtils > 50)
      {
        goto LABEL_208;
      }

      if (gLogCategory_APSAudioFormatDescriptionUtils != -1 || _LogCategory_Initialize())
      {
        LogPrintF(&gLogCategory_APSAudioFormatDescriptionUtils, "APSAudioFormatDescriptionRef audioFormatDescriptionUtils_CopyTransportFormatForChannelCount(FigEndpointStreamAudioFormatDescriptionRef, APSAudioFormatDescriptionListRef)", 33554482, "Supported format does not include AAC-LC 48k/44.1k stereo and ALAC 48k format. Checking next supported format. ");
      }

      goto LABEL_204;
    }

    goto LABEL_238;
  }

LABEL_208:
  v19 = cf;
  if (cf)
  {
    v20 = APSAudioFormatDescriptionCopyFigEndpointStreamAudioFormatDescription(*MEMORY[0x277CBECE8], cf, &v23);
    v21 = v20;
    if (v20)
    {
      APSLogErrorAt(v20);
    }

    else
    {
      cf = 0;
      if (gLogCategory_APSAudioFormatDescriptionUtils <= 50 && (gLogCategory_APSAudioFormatDescriptionUtils != -1 || _LogCategory_Initialize()))
      {
        APSAudioFormatDescriptionCopyDebugString(v19, &cf);
        if (gLogCategory_APSAudioFormatDescriptionUtils <= 50 && (gLogCategory_APSAudioFormatDescriptionUtils != -1 || _LogCategory_Initialize()))
        {
          LogPrintF(&gLogCategory_APSAudioFormatDescriptionUtils, "OSStatus APSAudioFormatDescriptionListCopyTransportFormatDescriptionForSourceFormatDescription(FigEndpointStreamAudioFormatDescriptionRef, APSAudioFormatDescriptionListRef, FigEndpointStreamAudioFormatDescriptionRef *)", 33554482, "TransportFormatDescriptionForSourceContentFormatDescription transportASBD = %{asbd}  format = %@", v19 + 16, cf);
        }

        if (cf)
        {
          CFRelease(cf);
        }
      }

      *a3 = v23;
      v23 = 0;
    }

    CFRelease(v19);
  }

  else
  {
    cf = 0;
    if (gLogCategory_APSAudioFormatDescriptionUtils <= 90 && (gLogCategory_APSAudioFormatDescriptionUtils != -1 || _LogCategory_Initialize()))
    {
      APSAudioFormatDescriptionListCopyDebugString(a2, &cf);
      if (gLogCategory_APSAudioFormatDescriptionUtils <= 90 && (gLogCategory_APSAudioFormatDescriptionUtils != -1 || _LogCategory_Initialize()))
      {
        LogPrintF(&gLogCategory_APSAudioFormatDescriptionUtils, "OSStatus APSAudioFormatDescriptionListCopyTransportFormatDescriptionForSourceFormatDescription(FigEndpointStreamAudioFormatDescriptionRef, APSAudioFormatDescriptionListRef, FigEndpointStreamAudioFormatDescriptionRef *)", 33554522, "Error (%d) - was not able to find transport format from supported=%@", 4294960561, cf);
      }

      if (cf)
      {
        CFRelease(cf);
      }
    }

    v21 = 4294960561;
  }

  if (v23)
  {
    CFRelease(v23);
  }

  return v21;
}

uint64_t audioFormatDescriptionUtils_contentFormatDescriptionWarrantsLosslessTransport(uint64_t a1)
{
  ASBD = FigEndpointStreamAudioFormatDescriptionGetASBD();
  v2 = *(ASBD + 8);
  result = 1;
  if (v2 > 1902928226)
  {
    v4 = v2 == 1902928227;
    v5 = 2053923171;
  }

  else
  {
    v4 = v2 == 1634492771;
    v5 = 1668047203;
  }

  v6 = v4 || v2 == v5;
  if (!v6 && *ASBD <= 48000.0)
  {
    return 0;
  }

  return result;
}

uint64_t APSAudioFormatDescriptionListGetForBufferedSender()
{
  if (APSAudioFormatDescriptionListGetForBufferedSender_sOnce != -1)
  {
    dispatch_once_f(&APSAudioFormatDescriptionListGetForBufferedSender_sOnce, &APSAudioFormatDescriptionListGetForBufferedSender_sList, audioFormatDescriptionUtils_CreateAudioFormatDescriptionListForBufferedSender);
  }

  return APSAudioFormatDescriptionListGetForBufferedSender_sList;
}

uint64_t audioFormatDescriptionUtils_CreateAudioFormatDescriptionListForBufferedSender(void *a1)
{
  v5 = 0;
  IsFeatureEnabled = APSSettingsIsFeatureEnabled(@"BufferedAPAC");
  result = APSAudioFormatDescriptionListCreate(*MEMORY[0x277CBECE8], &v5);
  if (result)
  {
    goto LABEL_28;
  }

  result = APSAudioFormatDescriptionCreateAndAppendAudioFormatToList(22, v5, 1);
  if (result)
  {
    goto LABEL_28;
  }

  result = APSAudioFormatDescriptionCreateAndAppendAudioFormatToList(23, v5, 0);
  if (result)
  {
    goto LABEL_28;
  }

  if (APAudioFormatAtmosIsAllowedForCurrentDeviceAsSender_initOnce != -1)
  {
    dispatch_once(&APAudioFormatAtmosIsAllowedForCurrentDeviceAsSender_initOnce, &__block_literal_global_104);
  }

  if (APAudioFormatAtmosIsAllowedForCurrentDeviceAsSender_atmosAllowed == 1)
  {
    result = APSAudioFormatDescriptionCreateAndAppendAudioFormatToList(39, v5, 0);
    if (result)
    {
      goto LABEL_28;
    }

    result = APSAudioFormatDescriptionCreateAndAppendAudioFormatToList(40, v5, 0);
    if (result)
    {
      goto LABEL_28;
    }
  }

  if (APSAudioFormatDescriptionIsBufferedLosslessAllowed_initOnce != -1)
  {
    dispatch_once(&APSAudioFormatDescriptionIsBufferedLosslessAllowed_initOnce, &__block_literal_global_55);
  }

  if (APSAudioFormatDescriptionIsBufferedLosslessAllowed_losslessAllowed == 1)
  {
    result = APSAudioFormatDescriptionCreateAndAppendAudioFormatToList(21, v5, 1);
    if (result)
    {
      goto LABEL_28;
    }

    if (APSAudioFormatDescriptionIsBufferedLossless16bitSupported_initOnce != -1)
    {
      dispatch_once(&APSAudioFormatDescriptionIsBufferedLossless16bitSupported_initOnce, &__block_literal_global_61);
    }

    if (APSAudioFormatDescriptionIsBufferedLossless16bitSupported_lossless16bitSupported == 1)
    {
      result = APSAudioFormatDescriptionCreateAndAppendAudioFormatToList(20, v5, 1);
      if (result)
      {
        goto LABEL_28;
      }
    }

    if (APSAudioFormatDescriptionIsBufferedLossless20bitSupported_initOnce != -1)
    {
      dispatch_once(&APSAudioFormatDescriptionIsBufferedLossless20bitSupported_initOnce, &__block_literal_global_67);
    }

    if (APSAudioFormatDescriptionIsBufferedLossless20bitSupported_lossless20bitSupported == 1)
    {
      result = APSAudioFormatDescriptionCreateAndAppendAudioFormatToList(86, v5, 1);
      if (result)
      {
        goto LABEL_28;
      }
    }
  }

  if (IsFeatureEnabled)
  {
    if (APAudioFormatAPACIsAllowedForCurrentDeviceAsSender())
    {
      result = APSAudioFormatDescriptionListAddSupportedFormatsForAPACToList(v5);
      if (result)
      {
        goto LABEL_28;
      }
    }
  }

  v4 = v5;
  if (APSAudioFormatDescriptionListGetSupportedPassthroughFormatsForCurrentDeviceAsSender_initOnce != -1)
  {
    dispatch_once(&APSAudioFormatDescriptionListGetSupportedPassthroughFormatsForCurrentDeviceAsSender_initOnce, &__block_literal_global_39);
  }

  result = APSAudioFormatDescriptionListAddListToSource(v4, APSAudioFormatDescriptionListGetSupportedPassthroughFormatsForCurrentDeviceAsSender_audioFormatList);
  if (result)
  {
LABEL_28:
    result = APSLogErrorAt(result);
  }

  *a1 = v5;
  return result;
}

void __APSAudioFormatDescriptionIsBufferedLosslessAllowed_block_invoke()
{
  if (FigGetCFPreferenceNumberWithDefault())
  {
    APSAudioFormatDescriptionIsBufferedLosslessAllowed_losslessAllowed = 1;
  }

  if (IsAppleTV())
  {
    goto LABEL_7;
  }

  if (APSIsAPMSpeaker_sCheckOnce != -1)
  {
    dispatch_once(&APSIsAPMSpeaker_sCheckOnce, &__block_literal_global_16_1786);
  }

  if (APSIsAPMSpeaker_sIsAPMSpeaker)
  {
LABEL_7:
    APSAudioFormatDescriptionIsBufferedLosslessAllowed_losslessAllowed = 1;
  }
}

uint64_t APSAudioFormatDescriptionListCreateForMediumLatencyReceiver()
{
  v3 = 0;
  appended = APSAudioFormatDescriptionListCreate(*MEMORY[0x277CBECE8], &v3);
  if (appended || (appended = APSAudioFormatDescriptionCreateAndAppendAudioFormatToList(20, v3, 1), appended))
  {
    APSLogErrorAt(appended);
  }

  else
  {
    v1 = MGGetProductType();
    if (v1 == 1540760353 || v1 == 4240173202 || v1 == 2702125347)
    {
      APSAudioFormatDescriptionCreateAndAppendAudioFormatToList(42, v3, 1);
      APSAudioFormatDescriptionCreateAndAppendAudioFormatToList(41, v3, 0);
    }
  }

  return v3;
}

uint64_t APSAudioFormatDescriptionListCreateForBufferedReceiverWithAudioCapabilities(const __CFArray *a1, uint64_t a2, char *a3)
{
  v13 = 0;
  IsFeatureEnabled = APSSettingsIsFeatureEnabled(@"BufferedAPAC");
  appended = APSAudioFormatDescriptionListCreate(*MEMORY[0x277CBECE8], &v13);
  if (appended)
  {
    goto LABEL_49;
  }

  appended = APSAudioFormatDescriptionCreateAndAppendAudioFormatToList(22, v13, 0);
  if (appended)
  {
    goto LABEL_49;
  }

  appended = APSAudioFormatDescriptionCreateAndAppendAudioFormatToList(23, v13, 1);
  if (appended)
  {
    goto LABEL_49;
  }

  if (APSAudioFormatDescriptionIsBufferedLossless16bitSupported_initOnce != -1)
  {
    dispatch_once(&APSAudioFormatDescriptionIsBufferedLossless16bitSupported_initOnce, &__block_literal_global_61);
  }

  if (APSAudioFormatDescriptionIsBufferedLossless16bitSupported_lossless16bitSupported == 1)
  {
    appended = APSAudioFormatDescriptionCreateAndAppendAudioFormatToList(20, v13, 0);
    if (appended)
    {
      goto LABEL_49;
    }
  }

  if (APSAudioFormatDescriptionIsBufferedLossless20bitSupported_initOnce != -1)
  {
    dispatch_once(&APSAudioFormatDescriptionIsBufferedLossless20bitSupported_initOnce, &__block_literal_global_67);
  }

  if (APSAudioFormatDescriptionIsBufferedLossless20bitSupported_lossless20bitSupported == 1)
  {
    appended = APSAudioFormatDescriptionCreateAndAppendAudioFormatToList(86, v13, 0);
    if (appended)
    {
      goto LABEL_49;
    }
  }

  appended = APSAudioFormatDescriptionCreateAndAppendAudioFormatToList(21, v13, 0);
  if (appended)
  {
    goto LABEL_49;
  }

  if (APAudioFormatAtmosIsAllowedForCurrentDeviceAsReceiver_initOnce != -1)
  {
    dispatch_once(&APAudioFormatAtmosIsAllowedForCurrentDeviceAsReceiver_initOnce, &__block_literal_global_110);
  }

  if (APAudioFormatAtmosIsAllowedForCurrentDeviceAsReceiver_atmosAllowed == 1)
  {
    appended = APSAudioFormatDescriptionCreateAndAppendAudioFormatToList(39, v13, 0);
    if (appended)
    {
      goto LABEL_49;
    }

    appended = APSAudioFormatDescriptionCreateAndAppendAudioFormatToList(40, v13, 0);
    if (appended)
    {
      goto LABEL_49;
    }
  }

  v7 = v13;
  if (APSAudioFormatDescriptionListGetSupportedPassthroughFormatsForCurrentDeviceAsReceiver_initOnce != -1)
  {
    dispatch_once(&APSAudioFormatDescriptionListGetSupportedPassthroughFormatsForCurrentDeviceAsReceiver_initOnce, &__block_literal_global_73_812);
  }

  appended = APSAudioFormatDescriptionListAddListToSource(v7, APSAudioFormatDescriptionListGetSupportedPassthroughFormatsForCurrentDeviceAsReceiver_audioFormatList);
  if (appended)
  {
    goto LABEL_49;
  }

  if (IsFeatureEnabled)
  {
    if (APAudioFormatAtmosIsAllowedForCurrentDeviceAsReceiver_initOnce != -1)
    {
      dispatch_once(&APAudioFormatAtmosIsAllowedForCurrentDeviceAsReceiver_initOnce, &__block_literal_global_110);
    }

    if (APAudioFormatAtmosIsAllowedForCurrentDeviceAsReceiver_atmosAllowed == 1)
    {
      appended = APSAudioFormatDescriptionCreateAndAppendAudioFormatToList(65, v13, 0);
      if (!appended)
      {
        appended = APSAudioFormatDescriptionCreateAndAppendAudioFormatToList(66, v13, 0);
        if (!appended)
        {
          v8 = 0;
          v9 = 0;
          if (!a1)
          {
            goto LABEL_29;
          }

LABEL_28:
          for (i = CFArrayGetCount(a1); v8 < i; i = 0)
          {
            CFArrayGetValueAtIndex(a1, v8);
            UInt32 = FigCFNumberGetUInt32();
            if (UInt32 == 1819304813)
            {
              if (FigCFNumberGetUInt32() >= 8)
              {
                appended = APSAudioFormatDescriptionCreateAndAppendAudioFormatToList(67, v13, 0);
                if (appended)
                {
                  goto LABEL_49;
                }
              }

              if (FigCFNumberGetUInt32() >= 6)
              {
                appended = APSAudioFormatDescriptionCreateAndAppendAudioFormatToList(65, v13, 0);
                if (appended)
                {
                  goto LABEL_49;
                }
              }
            }

            else if (UInt32 == 1836343851)
            {
              appended = APSAudioFormatDescriptionCreateAndAppendAudioFormatToList(76, v13, 0);
              if (appended)
              {
                goto LABEL_49;
              }

              appended = APSAudioFormatDescriptionCreateAndAppendAudioFormatToList(67, v13, 0);
              if (appended)
              {
                goto LABEL_49;
              }

              appended = APSAudioFormatDescriptionCreateAndAppendAudioFormatToList(77, v13, 0);
              if (appended)
              {
                goto LABEL_49;
              }

              appended = APSAudioFormatDescriptionCreateAndAppendAudioFormatToList(68, v13, 0);
              if (appended)
              {
                goto LABEL_49;
              }

              appended = APSAudioFormatDescriptionCreateAndAppendAudioFormatToList(92, v13, 0);
              if (appended)
              {
                goto LABEL_49;
              }

              v9 = 1;
            }

            ++v8;
            if (a1)
            {
              goto LABEL_28;
            }

LABEL_29:
            ;
          }

          goto LABEL_46;
        }
      }

LABEL_49:
      APSLogErrorAt(appended);
      return v13;
    }
  }

  v9 = 0;
LABEL_46:
  if (a3)
  {
    *a3 = v9;
  }

  return v13;
}

uint64_t __APSAudioFormatDescriptionListGetSupportedPassthroughFormatsForCurrentDeviceAsReceiver_block_invoke()
{
  APSAudioFormatDescriptionListCreate(*MEMORY[0x277CBECE8], &APSAudioFormatDescriptionListGetSupportedPassthroughFormatsForCurrentDeviceAsReceiver_audioFormatList);
  v0 = APSAudioFormatDescriptionListGetSupportedPassthroughFormatsForCurrentDeviceAsReceiver_audioFormatList;
  if (APAudioFormatAtmosIsAllowedForCurrentDeviceAsReceiver_initOnce != -1)
  {
    dispatch_once(&APAudioFormatAtmosIsAllowedForCurrentDeviceAsReceiver_initOnce, &__block_literal_global_110);
  }

  v1 = APAudioFormatAtmosIsAllowedForCurrentDeviceAsReceiver_atmosAllowed;

  return APSAudioFormatDescriptionListAddSupportedFormatsForPassthrough(v0, 0, v1);
}

CFTypeRef APSAudioFormatDescriptionListCreateForBufferedLocalReceiverEchoCancellationReference()
{
  cf = 0;
  v5 = 0;
  v0 = APSAudioFormatDescriptionListCreateForBufferedReceiverWithAudioCapabilities(0, 0, 0);
  if (v0)
  {
    v1 = v0;
    v2 = APSAudioFormatDescriptionListCreate(*MEMORY[0x277CBECE8], &cf);
    if (v2 || (v2 = APSAudioFormatDescriptionListAddStereoFormatsToList(cf), v2) || (v2 = APSAudioFormatDescriptionListAdd6ChannelsFormatsToList(cf), v2) || (v2 = APSAudioFormatDescriptionListAdd8ChannelsFormatsToList(cf), v2))
    {
      APSLogErrorAt(v2);
    }

    else
    {
      APSAudioFormatDescriptionListCreateIntersectionList(v1, cf, &v5);
    }

    if (cf)
    {
      CFRelease(cf);
    }

    CFRelease(v1);
    return v5;
  }

  else
  {
    APSLogErrorAt(0);
    return 0;
  }
}

uint64_t APSAudioFormatDescriptionListAddStereoFormatsToList(uint64_t a1)
{
  if (!a1)
  {
    APSLogErrorAt(0);
    return 4294954516;
  }

  appended = APSAudioFormatDescriptionCreateAndAppendAudioFormatToList(3, a1, 0);
  if (appended)
  {
    v3 = appended;
    goto LABEL_61;
  }

  appended = APSAudioFormatDescriptionCreateAndAppendAudioFormatToList(5, a1, 0);
  if (appended)
  {
    v3 = appended;
    goto LABEL_61;
  }

  appended = APSAudioFormatDescriptionCreateAndAppendAudioFormatToList(7, a1, 0);
  if (appended)
  {
    v3 = appended;
    goto LABEL_61;
  }

  appended = APSAudioFormatDescriptionCreateAndAppendAudioFormatToList(9, a1, 0);
  if (appended)
  {
    v3 = appended;
    goto LABEL_61;
  }

  appended = APSAudioFormatDescriptionCreateAndAppendAudioFormatToList(11, a1, 0);
  if (appended)
  {
    v3 = appended;
    goto LABEL_61;
  }

  appended = APSAudioFormatDescriptionCreateAndAppendAudioFormatToList(13, a1, 0);
  if (appended)
  {
    v3 = appended;
    goto LABEL_61;
  }

  appended = APSAudioFormatDescriptionCreateAndAppendAudioFormatToList(15, a1, 0);
  if (appended)
  {
    v3 = appended;
    goto LABEL_61;
  }

  appended = APSAudioFormatDescriptionCreateAndAppendAudioFormatToList(17, a1, 0);
  if (appended)
  {
    v3 = appended;
    goto LABEL_61;
  }

  appended = APSAudioFormatDescriptionCreateAndAppendAudioFormatToList(46, a1, 0);
  if (appended)
  {
    v3 = appended;
    goto LABEL_61;
  }

  appended = APSAudioFormatDescriptionCreateAndAppendAudioFormatToList(18, a1, 0);
  if (appended)
  {
    v3 = appended;
    goto LABEL_61;
  }

  appended = APSAudioFormatDescriptionCreateAndAppendAudioFormatToList(19, a1, 0);
  if (appended)
  {
    v3 = appended;
    goto LABEL_61;
  }

  appended = APSAudioFormatDescriptionCreateAndAppendAudioFormatToList(20, a1, 0);
  if (appended)
  {
    v3 = appended;
    goto LABEL_61;
  }

  appended = APSAudioFormatDescriptionCreateAndAppendAudioFormatToList(86, a1, 0);
  if (appended)
  {
    v3 = appended;
    goto LABEL_61;
  }

  appended = APSAudioFormatDescriptionCreateAndAppendAudioFormatToList(21, a1, 0);
  if (appended)
  {
    v3 = appended;
    goto LABEL_61;
  }

  appended = APSAudioFormatDescriptionCreateAndAppendAudioFormatToList(22, a1, 0);
  if (appended)
  {
    v3 = appended;
    goto LABEL_61;
  }

  appended = APSAudioFormatDescriptionCreateAndAppendAudioFormatToList(23, a1, 0);
  if (appended)
  {
    v3 = appended;
    goto LABEL_61;
  }

  appended = APSAudioFormatDescriptionCreateAndAppendAudioFormatToList(24, a1, 0);
  if (appended)
  {
    v3 = appended;
    goto LABEL_61;
  }

  appended = APSAudioFormatDescriptionCreateAndAppendAudioFormatToList(25, a1, 0);
  if (appended)
  {
    v3 = appended;
    goto LABEL_61;
  }

  appended = APSAudioFormatDescriptionCreateAndAppendAudioFormatToList(49, a1, 0);
  if (appended)
  {
    v3 = appended;
    goto LABEL_61;
  }

  appended = APSAudioFormatDescriptionCreateAndAppendAudioFormatToList(70, a1, 0);
  if (appended)
  {
    v3 = appended;
    goto LABEL_61;
  }

  appended = APSAudioFormatDescriptionCreateAndAppendAudioFormatToList(54, a1, 0);
  if (appended)
  {
    v3 = appended;
    goto LABEL_61;
  }

  appended = APSAudioFormatDescriptionCreateAndAppendAudioFormatToList(71, a1, 0);
  if (appended)
  {
    v3 = appended;
    goto LABEL_61;
  }

  appended = APSAudioFormatDescriptionCreateAndAppendAudioFormatToList(72, a1, 0);
  if (appended)
  {
    v3 = appended;
    goto LABEL_61;
  }

  appended = APSAudioFormatDescriptionCreateAndAppendAudioFormatToList(57, a1, 0);
  if (appended)
  {
    v3 = appended;
    goto LABEL_61;
  }

  appended = APSAudioFormatDescriptionCreateAndAppendAudioFormatToList(73, a1, 0);
  if (appended)
  {
    v3 = appended;
    goto LABEL_61;
  }

  appended = APSAudioFormatDescriptionCreateAndAppendAudioFormatToList(61, a1, 0);
  if (appended)
  {
    v3 = appended;
    goto LABEL_61;
  }

  appended = APSAudioFormatDescriptionCreateAndAppendAudioFormatToList(62, a1, 0);
  if (appended)
  {
    v3 = appended;
    goto LABEL_61;
  }

  appended = APSAudioFormatDescriptionCreateAndAppendAudioFormatToList(74, a1, 0);
  v3 = appended;
  if (appended)
  {
LABEL_61:
    APSLogErrorAt(appended);
    return v3;
  }

  v4 = APSAudioFormatDescriptionCreateAndAppendAudioFormatToList(75, a1, 0);
  if (v4)
  {
    v6 = v4;
    APSLogErrorAt(v4);
    return v6;
  }

  return v3;
}

uint64_t APSAudioFormatDescriptionListAdd6ChannelsFormatsToList(uint64_t a1)
{
  if (!a1)
  {
    APSLogErrorAt(0);
    return 4294954516;
  }

  appended = APSAudioFormatDescriptionCreateAndAppendAudioFormatToList(44, a1, 0);
  if (appended)
  {
    v3 = appended;
    goto LABEL_19;
  }

  appended = APSAudioFormatDescriptionCreateAndAppendAudioFormatToList(47, a1, 0);
  if (appended)
  {
    v3 = appended;
    goto LABEL_19;
  }

  appended = APSAudioFormatDescriptionCreateAndAppendAudioFormatToList(41, a1, 0);
  if (appended)
  {
    v3 = appended;
    goto LABEL_19;
  }

  appended = APSAudioFormatDescriptionCreateAndAppendAudioFormatToList(39, a1, 0);
  if (appended)
  {
    v3 = appended;
    goto LABEL_19;
  }

  appended = APSAudioFormatDescriptionCreateAndAppendAudioFormatToList(50, a1, 0);
  if (appended)
  {
    v3 = appended;
    goto LABEL_19;
  }

  appended = APSAudioFormatDescriptionCreateAndAppendAudioFormatToList(55, a1, 0);
  if (appended)
  {
    v3 = appended;
    goto LABEL_19;
  }

  appended = APSAudioFormatDescriptionCreateAndAppendAudioFormatToList(58, a1, 0);
  v3 = appended;
  if (appended)
  {
LABEL_19:
    APSLogErrorAt(appended);
    return v3;
  }

  v4 = APSAudioFormatDescriptionCreateAndAppendAudioFormatToList(63, a1, 0);
  if (v4)
  {
    v6 = v4;
    APSLogErrorAt(v4);
    return v6;
  }

  return v3;
}

uint64_t APSAudioFormatDescriptionListAdd8ChannelsFormatsToList(uint64_t a1)
{
  if (!a1)
  {
    APSLogErrorAt(0);
    return 4294954516;
  }

  appended = APSAudioFormatDescriptionCreateAndAppendAudioFormatToList(38, a1, 0);
  if (appended)
  {
    v3 = appended;
    goto LABEL_19;
  }

  appended = APSAudioFormatDescriptionCreateAndAppendAudioFormatToList(48, a1, 0);
  if (appended)
  {
    v3 = appended;
    goto LABEL_19;
  }

  appended = APSAudioFormatDescriptionCreateAndAppendAudioFormatToList(40, a1, 0);
  if (appended)
  {
    v3 = appended;
    goto LABEL_19;
  }

  appended = APSAudioFormatDescriptionCreateAndAppendAudioFormatToList(42, a1, 0);
  if (appended)
  {
    v3 = appended;
    goto LABEL_19;
  }

  appended = APSAudioFormatDescriptionCreateAndAppendAudioFormatToList(51, a1, 0);
  if (appended)
  {
    v3 = appended;
    goto LABEL_19;
  }

  appended = APSAudioFormatDescriptionCreateAndAppendAudioFormatToList(56, a1, 0);
  if (appended)
  {
    v3 = appended;
    goto LABEL_19;
  }

  appended = APSAudioFormatDescriptionCreateAndAppendAudioFormatToList(60, a1, 0);
  v3 = appended;
  if (appended)
  {
LABEL_19:
    APSLogErrorAt(appended);
    return v3;
  }

  v4 = APSAudioFormatDescriptionCreateAndAppendAudioFormatToList(33, a1, 0);
  if (v4)
  {
    v6 = v4;
    APSLogErrorAt(v4);
    return v6;
  }

  return v3;
}

uint64_t APSAudioFormatDescriptionListCreateForRealTimeSender(int a1)
{
  v5 = 0;
  appended = APSAudioFormatDescriptionListCreate(*MEMORY[0x277CBECE8], &v5);
  if (appended)
  {
    goto LABEL_15;
  }

  if (a1)
  {
    if (APSSettingsIsFeatureEnabled(@"ScreenSpatialAudioSender"))
    {
      appended = APSAudioFormatDescriptionCreateAndAppendAudioFormatToList(42, v5, 1);
      if (appended)
      {
        goto LABEL_15;
      }

      v3 = 0;
    }

    else
    {
      v3 = 1;
    }

    appended = APSAudioFormatDescriptionCreateAndAppendAudioFormatToList(22, v5, 0);
    if (!appended)
    {
      appended = APSAudioFormatDescriptionCreateAndAppendAudioFormatToList(24, v5, 0);
      if (!appended)
      {
        goto LABEL_10;
      }
    }

LABEL_15:
    APSLogErrorAt(appended);
    return v5;
  }

  v3 = 1;
LABEL_10:
  if (APSSettingsIsFeatureEnabled(@"APAT_HLA"))
  {
    appended = APSAudioFormatDescriptionCreateAndAppendAudioFormatToList(22, v5, 0);
    if (appended)
    {
      goto LABEL_15;
    }
  }

  appended = APSAudioFormatDescriptionCreateAndAppendAudioFormatToList(18, v5, v3);
  if (appended)
  {
    goto LABEL_15;
  }

  appended = APSAudioFormatDescriptionCreateAndAppendAudioFormatToList(11, v5, 0);
  if (appended)
  {
    goto LABEL_15;
  }

  return v5;
}

uint64_t APSAudioFormatDescriptionListCreateForMediumLatencySender()
{
  v2 = 0;
  appended = APSAudioFormatDescriptionListCreate(*MEMORY[0x277CBECE8], &v2);
  if (appended || (appended = APSAudioFormatDescriptionCreateAndAppendAudioFormatToList(20, v2, 0), appended) || (appended = APSAudioFormatDescriptionCreateAndAppendAudioFormatToList(42, v2, 1), appended) || (appended = APSAudioFormatDescriptionCreateAndAppendAudioFormatToList(41, v2, 0), appended))
  {
    APSLogErrorAt(appended);
  }

  return v2;
}

uint64_t APSAudioFormatDescriptionListCreateForRealTimeReceiver()
{
  v2 = 0;
  appended = APSAudioFormatDescriptionListCreate(*MEMORY[0x277CBECE8], &v2);
  if (appended || (appended = APSAudioFormatDescriptionCreateAndAppendAudioFormatToList(22, v2, 0), appended) || (appended = APSAudioFormatDescriptionCreateAndAppendAudioFormatToList(24, v2, 0), appended) || (appended = APSAudioFormatDescriptionCreateAndAppendAudioFormatToList(18, v2, 1), appended) || (appended = APSAudioFormatDescriptionCreateAndAppendAudioFormatToList(11, v2, 0), appended))
  {
    APSLogErrorAt(appended);
  }

  return v2;
}

uint64_t APSAudioFormatDescriptionListCreateForRealTimeLocalReceiver()
{
  v2 = 0;
  appended = APSAudioFormatDescriptionListCreate(*MEMORY[0x277CBECE8], &v2);
  if (appended || (appended = APSAudioFormatDescriptionCreateAndAppendAudioFormatToList(22, v2, 0), appended) || (appended = APSAudioFormatDescriptionCreateAndAppendAudioFormatToList(24, v2, 0), appended) || (appended = APSAudioFormatDescriptionCreateAndAppendAudioFormatToList(18, v2, 1), appended) || (appended = APSAudioFormatDescriptionCreateAndAppendAudioFormatToList(11, v2, 0), appended))
  {
    APSLogErrorAt(appended);
  }

  return v2;
}

uint64_t APSAudioFormatDescriptionListCreateForLowLatencySender()
{
  v2 = 0;
  appended = APSAudioFormatDescriptionListCreate(*MEMORY[0x277CBECE8], &v2);
  if (appended || (appended = APSAudioFormatDescriptionCreateAndAppendAudioFormatToList(25, v2, 1), appended) || (appended = APSAudioFormatDescriptionCreateAndAppendAudioFormatToList(42, v2, 0), appended))
  {
    APSLogErrorAt(appended);
  }

  return v2;
}

uint64_t APSAudioFormatDescriptionListCreateIntersection(uint64_t a1, int a2, int a3, int a4)
{
  v14 = 0;
  v15 = 0;
  if (a2)
  {
    v5 = APSAudioFormatDescriptionListCreateForLowLatencySender();
  }

  else if (a3)
  {
    v5 = APSAudioFormatDescriptionListCreateForMediumLatencySender();
  }

  else
  {
    v5 = APSAudioFormatDescriptionListCreateForRealTimeSender(a4);
  }

  v6 = v5;
  if (v5)
  {
    v7 = *(v5 + 24);
  }

  else
  {
    APSLogErrorAt(0);
    v7 = 0;
  }

  IntersectionList = APSAudioFormatDescriptionListCreateIntersectionList(a1, v6, &v15);
  if (IntersectionList)
  {
    APSLogErrorAt(IntersectionList);
    return v15;
  }

  v9 = APSAudioFormatDescriptionListContainsFormat(v15, v7);
  v10 = v15;
  if (v9)
  {
    ValueAtIndex = v7;
  }

  else
  {
    if (!APSAudioFormatDescriptionListGetFormatCount(v15))
    {
      goto LABEL_14;
    }

    APSAudioFormatDescriptionListCopyAudioFormatDescriptionsArray(v15, &v14);
    v12 = v15;
    ValueAtIndex = CFArrayGetValueAtIndex(v14, 0);
    v10 = v12;
  }

  APSAudioFormatDescriptionListSetDefaultFormat(v10, ValueAtIndex);
LABEL_14:
  if (v6)
  {
    CFRelease(v6);
  }

  return v15;
}

uint64_t APSAudioFormatDescriptionListCreateForLowLatencyReceiver()
{
  v4 = 0;
  appended = APSAudioFormatDescriptionListCreate(*MEMORY[0x277CBECE8], &v4);
  if (appended || (appended = APSAudioFormatDescriptionCreateAndAppendAudioFormatToList(25, v4, 1), appended) || ((v1 = MGGetProductType(), v1 != 1540760353) && v1 != 4240173202 && v1 != 2702125347 ? (v2 = 0) : (v2 = 1), APSSettingsGetIntWithOverrideAndDefault(@"lowLatencyAudioSurroundReceiver", 0, v2) && (appended = APSAudioFormatDescriptionCreateAndAppendAudioFormatToList(42, v4, 0), appended)))
  {
    APSLogErrorAt(appended);
  }

  return v4;
}

uint64_t APSAudioFormatDescriptionListCreateForScreenReceiver()
{
  v2 = 0;
  appended = APSAudioFormatDescriptionListCreate(*MEMORY[0x277CBECE8], &v2);
  if (appended || (appended = APSAudioFormatDescriptionCreateAndAppendAudioFormatToList(22, v2, 1), appended) || (appended = APSAudioFormatDescriptionCreateAndAppendAudioFormatToList(24, v2, 0), appended) || (appended = APSAudioFormatDescriptionCreateAndAppendAudioFormatToList(18, v2, 0), appended) || (appended = APSAudioFormatDescriptionCreateAndAppendAudioFormatToList(11, v2, 0), appended))
  {
    APSLogErrorAt(appended);
  }

  return v2;
}

uint64_t APSAudioFormatDescriptionListAddSupportedTranscodeFormats(uint64_t a1)
{
  if (!a1)
  {
    APSLogErrorAt(0);
    return 4294954516;
  }

  v2 = APSAudioFormatDescriptionListAddSupportedFormatsForAACToList(a1);
  if (v2)
  {
    v3 = v2;
    goto LABEL_9;
  }

  v2 = APSAudioFormatDescriptionListAddSupportedFormatsForALACToList(a1);
  if (v2)
  {
    v3 = v2;
    goto LABEL_9;
  }

  v2 = APSAudioFormatDescriptionListAddSupportedFormatsForAPACToList(a1);
  v3 = v2;
  if (v2)
  {
LABEL_9:
    APSLogErrorAt(v2);
  }

  return v3;
}

uint64_t APSAudioFormatDescriptionListCreateFilteredListWithTranscodeFormats(uint64_t a1, CFTypeRef *a2)
{
  cf = 0;
  v9 = 0;
  if (!a2)
  {
    APSLogErrorAt(0);
    v6 = 4294954516;
    goto LABEL_11;
  }

  v4 = *MEMORY[0x277CBECE8];
  if (!a1)
  {
    v5 = APSAudioFormatDescriptionListCreate(v4, &v9);
    if (v5)
    {
      v6 = v5;
      goto LABEL_18;
    }

    goto LABEL_8;
  }

  v5 = APSAudioFormatDescriptionListCreate(v4, &cf);
  if (v5)
  {
    v6 = v5;
    goto LABEL_18;
  }

  v5 = APSAudioFormatDescriptionListAddSupportedTranscodeFormats(cf);
  if (v5)
  {
    v6 = v5;
    goto LABEL_18;
  }

  v5 = APSAudioFormatDescriptionListCreateIntersectionList(a1, cf, &v9);
  if (!v5)
  {
LABEL_8:
    v6 = 0;
    *a2 = v9;
    v9 = 0;
    goto LABEL_9;
  }

  v6 = v5;
LABEL_18:
  APSLogErrorAt(v5);
LABEL_9:
  if (cf)
  {
    CFRelease(cf);
  }

LABEL_11:
  if (v9)
  {
    CFRelease(v9);
  }

  return v6;
}

uint64_t APSAudioFormatDescriptionIsPassthroughFormatForCurrentDeviceAsSender(const void *a1)
{
  if (APSAudioFormatDescriptionListGetSupportedPassthroughFormatsForCurrentDeviceAsSender_initOnce != -1)
  {
    dispatch_once(&APSAudioFormatDescriptionListGetSupportedPassthroughFormatsForCurrentDeviceAsSender_initOnce, &__block_literal_global_39);
  }

  v2 = APSAudioFormatDescriptionListGetSupportedPassthroughFormatsForCurrentDeviceAsSender_audioFormatList;

  return APSAudioFormatDescriptionListContainsFormat(v2, a1);
}

uint64_t APSEndpointStreamAudioHoseSBARCreate(uint64_t a1, __CFString *a2, const void *a3, const void *a4, const void *a5, int a6, const void *a7, unsigned int a8, const __CFDictionary *a9, CFTypeRef *a10)
{
  v158 = *MEMORY[0x277D85DE8];
  v146 = 0;
  cf = 0;
  if (!a4)
  {
    v42 = 4294894965;
    v17 = 0;
    goto LABEL_192;
  }

  if (!a5)
  {
    v42 = 4294894965;
    v17 = 0;
    goto LABEL_192;
  }

  if (!a3)
  {
    v42 = 4294894965;
    v17 = 0;
    goto LABEL_192;
  }

  if (a8 <= 0)
  {
    v42 = 4294894965;
    v17 = 0;
    goto LABEL_192;
  }

  if (!a10)
  {
    v42 = 4294894965;
    v17 = 0;
    goto LABEL_192;
  }

  v15 = a4;
  if (hoseSBAR_getClassID_sRegisterOnce != -1)
  {
    dispatch_once_f(&hoseSBAR_getClassID_sRegisterOnce, &hoseSBAR_getClassID_sClassID, hoseSBAR_registerBaseClass);
  }

  v17 = CMDerivedObjectCreate();
  if (v17)
  {
    v42 = v17;
    goto LABEL_192;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  SNPrintF(label, 64, "APSEndpointStreamAudioHoseSBAR.%@.notification", a2);
  v19 = dispatch_queue_create(label, 0);
  *(DerivedStorage + 8) = v19;
  if (!v19)
  {
    goto LABEL_254;
  }

  SNPrintF(label, 64, "APSEndpointStreamAudioHoseSBAR.%@.dataProcessing", a2);
  v20 = FigDispatchQueueCreateWithPriority();
  *(DerivedStorage + 352) = v20;
  if (!v20)
  {
    goto LABEL_254;
  }

  SNPrintF(label, 64, "APSEndpointStreamAudioHoseSBAR.%@.dataProcessing.prefMultiChannel", a2);
  v21 = FigDispatchQueueCreateWithPriority();
  *(DerivedStorage + 360) = v21;
  if (!v21)
  {
    goto LABEL_254;
  }

  *(DerivedStorage + 288) = FigSimpleMutexCreate();
  *(DerivedStorage + 308) = 36;
  v22 = MEMORY[0x277CC0898];
  v144 = *MEMORY[0x277CC0898];
  *(DerivedStorage + 324) = *MEMORY[0x277CC0898];
  v143 = *(v22 + 16);
  *(DerivedStorage + 340) = v143;
  *(DerivedStorage + 312) = 0;
  *(DerivedStorage + 16) = a2;
  if (a2)
  {
    CFRetain(a2);
  }

  *(DerivedStorage + 32) = a3;
  CFRetain(a3);
  *(DerivedStorage + 64) = v15;
  CFRetain(v15);
  *(DerivedStorage + 72) = a7;
  if (a7)
  {
    CFRetain(a7);
  }

  *(DerivedStorage + 280) = FigGetCFPreferenceNumberWithDefault();
  *(DerivedStorage + 282) = FigGetCFPreferenceNumberWithDefault();
  CFPreferenceNumberWithDefault = FigGetCFPreferenceNumberWithDefault();
  *(DerivedStorage + 283) = CFPreferenceNumberWithDefault;
  if (gLogCategory_APSEndpointStreamAudioHoseSBAR <= 50)
  {
    if (gLogCategory_APSEndpointStreamAudioHoseSBAR == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_23;
      }

      v24 = *(DerivedStorage + 283);
    }

    else
    {
      v24 = CFPreferenceNumberWithDefault;
    }

    v25 = v24 == 0;
    v26 = 84;
    if (v25)
    {
      v26 = 70;
    }

    LogPrintF(&gLogCategory_APSEndpointStreamAudioHoseSBAR, "OSStatus APSEndpointStreamAudioHoseSBARCreate(CFAllocatorRef, CFStringRef, CFStringRef, APSNetworkClockRef, APSAudioFormatDescriptionRef, APSEndpointStreamAudioHoseSBARTransportMessageFormat, APSCryptorRef, int32_t, CFDictionaryRef, APSEndpointStreamAudioHoseSBARRef *)", 33554482, "[%{ptr}] storage->timePitchAlogrithmDisallowed=%c \n", cf, v26);
  }

LABEL_23:
  if (*(DerivedStorage + 282))
  {
    v27 = 1;
  }

  else
  {
    v27 = in_audio_mx_server_process() ^ 1;
  }

  *(DerivedStorage + 128) = APSSettingsGetIntWithOverrideAndDefault(@"isHoseSBARSynchronizerTimeMediaTime", 0, v27) != 0;
  *(DerivedStorage + 80) = CFRetain(a5);
  *(DerivedStorage + 704) = CFRetain(a5);
  CMTimeMake(time, a8, 1);
  *(DerivedStorage + 208) = *time;
  *(DerivedStorage + 224) = *&time[16];
  if (!a9)
  {
    v33 = *(DerivedStorage + 129);
    goto LABEL_81;
  }

  v28 = CFDictionaryContainsKey(a9, @"StreamID");
  Value = a2;
  if (v28)
  {
    Value = CFDictionaryGetValue(a9, @"StreamID");
  }

  *(DerivedStorage + 24) = CFRetain(Value);
  if (CFDictionaryContainsKey(a9, @"ClusterInfo"))
  {
    v30 = CFDictionaryGetValue(a9, @"ClusterInfo");
    *(DerivedStorage + 40) = CFRetain(v30);
  }

  if (CFDictionaryContainsKey(a9, @"ClientPID"))
  {
    v31 = CFDictionaryGetValue(a9, @"ClientPID");
    v32 = CFRetain(v31);
  }

  else
  {
    v32 = 0;
  }

  *(DerivedStorage + 48) = v32;
  if (CFDictionaryContainsKey(a9, @"AudioSessionID"))
  {
    v34 = CFDictionaryGetValue(a9, @"AudioSessionID");
    v35 = CFRetain(v34);
  }

  else
  {
    v35 = 0;
  }

  *(DerivedStorage + 296) = v35;
  v36 = CFDictionaryGetValue(a9, @"ClientAuditToken");
  v37 = *(DerivedStorage + 296);
  LODWORD(v155) = 0;
  LODWORD(valuePtr) = 0;
  v156 = 0;
  if (v36 && v37)
  {
    v38 = v36;
    if (CFDataGetLength(v36) != 32 || (BytePtr = CFDataGetBytePtr(v38), *time = *BytePtr, *&time[16] = *(BytePtr + 1), (*time & *&time[8] & *&time[16] & *&time[24]) == -1))
    {
      v42 = 4294894965;
      APSLogErrorAt(0);
      goto LABEL_263;
    }

    CFNumberGetValue(v37, kCFNumberSInt32Type, &valuePtr);
    v40 = CFStringCreateF(&v155, "siblingClientSessionForHoseSbar-%{ptr}", cf);
    if (v155)
    {
      APSLogErrorAt(v155);
    }

    else
    {
      *theData = *time;
      v149 = *&time[16];
      v41 = FigAudioSessionCreateWithAVAudioSessionSiblingForAudioSessionID();
      LODWORD(v155) = v41;
      if (v41)
      {
        APSLogErrorAt(v41);
        if (v156)
        {
          CFRelease(v156);
        }
      }

      else
      {
        if (gLogCategory_APSEndpointStreamAudioHoseSBAR <= 50 && (gLogCategory_APSEndpointStreamAudioHoseSBAR != -1 || _LogCategory_Initialize()))
        {
          LogPrintF(&gLogCategory_APSEndpointStreamAudioHoseSBAR, "OSStatus hoseSBAR_createClientAudioSession(APSEndpointStreamAudioHoseRef, CFNumberRef, CFDataRef, FigAudioSessionRef *)", 33554482, "[%{ptr}] Created client FigAudioSession=%{ptr} audioSessionID=%@\n", cf, v156, v37);
        }

        *(DerivedStorage + 272) = v156;
        v156 = 0;
      }
    }

    if (v40)
    {
      CFRelease(v40);
    }
  }

  v42 = v155;
  if (v155)
  {
LABEL_263:
    v17 = v42;
    goto LABEL_192;
  }

  *(DerivedStorage + 281) = CFDictionaryGetInt64() != 0;
  if (CFDictionaryGetInt64())
  {
    *(DerivedStorage + 144) = APSSettingsGetIntWithOverrideAndDefault(@"hoseSBARAudioIOAssertionDurationSecs", 0, 120);
  }

  if (CFDictionaryContainsKey(a9, @"VBRBitRates"))
  {
    v43 = CFDictionaryGetValue(a9, @"VBRBitRates");
  }

  else
  {
    v43 = 0;
  }

  if (CFDictionaryContainsKey(a9, @"SupportedAudioFormats"))
  {
    v42 = CFDictionaryGetValue(a9, @"SupportedAudioFormats");
    *time = 0;
    if (gLogCategory_APSEndpointStreamAudioHoseSBAR <= 50 && (gLogCategory_APSEndpointStreamAudioHoseSBAR != -1 || _LogCategory_Initialize()))
    {
      APSAudioFormatDescriptionListCopyDebugString(v42, time);
      if (gLogCategory_APSEndpointStreamAudioHoseSBAR <= 50 && (gLogCategory_APSEndpointStreamAudioHoseSBAR != -1 || _LogCategory_Initialize()))
      {
        LogPrintF(&gLogCategory_APSEndpointStreamAudioHoseSBAR, "OSStatus APSEndpointStreamAudioHoseSBARCreate(CFAllocatorRef, CFStringRef, CFStringRef, APSNetworkClockRef, APSAudioFormatDescriptionRef, APSEndpointStreamAudioHoseSBARTransportMessageFormat, APSCryptorRef, int32_t, CFDictionaryRef, APSEndpointStreamAudioHoseSBARRef *)", 33554482, "[%{ptr}] supportedAudioFormats=%@", cf, *time);
      }

      if (*time)
      {
        CFRelease(*time);
      }
    }
  }

  else
  {
    v42 = 0;
  }

  v44 = CMBaseObjectGetDerivedStorage();
  theData[0] = 0;
  if (v42)
  {
    ASBDArray = APSAudioFormatDescriptionListCreateASBDArray(*MEMORY[0x277CBECE8], v42, theData);
    if (ASBDArray)
    {
      v42 = ASBDArray;
      APSLogErrorAt(ASBDArray);
      AudioBytesPerSec = 0;
    }

    else
    {
      Length = CFDataGetLength(theData[0]);
      if (Length <= 0x27)
      {
        APSLogErrorAt(0);
        AudioBytesPerSec = hoseSBAR_getAudioBytesPerSec(0, v43, v138, v139, v140);
        v42 = 0;
      }

      else
      {
        v47 = a2;
        v48 = a6;
        v49 = v15;
        v50 = Length / 0x28;
        v51 = CFDataGetBytePtr(theData[0]);
        AudioBytesPerSec = 0;
        do
        {
          v56 = hoseSBAR_getAudioBytesPerSec(v51, v43, v52, v53, v54);
          if (v56 > AudioBytesPerSec)
          {
            AudioBytesPerSec = v56;
          }

          v51 = (v51 + 40);
          --v50;
        }

        while (v50);
        v42 = 0;
        v15 = v49;
        a6 = v48;
        a2 = v47;
      }
    }
  }

  else
  {
    APSLogErrorAt(0);
    AudioBytesPerSec = hoseSBAR_getAudioBytesPerSec(0, v43, v135, v136, v137);
  }

  *time = *(v44 + 208);
  *&time[16] = *(v44 + 224);
  *(v44 + 56) = (CMTimeGetSeconds(time) * AudioBytesPerSec);
  if (theData[0])
  {
    CFRelease(theData[0]);
  }

  if (v42)
  {
    v17 = v42;
    goto LABEL_192;
  }

  v57 = CFDictionaryGetInt64() != 0;
  v33 = APSSettingsGetIntWithOverrideAndDefault(@"hoseSBAR_isSourceUnordered", 0, v57) != 0;
  *(DerivedStorage + 129) = v33;
LABEL_81:
  if (v33)
  {
    v58 = 250;
  }

  else
  {
    v58 = 5000;
  }

  CMTimeMake(time, v58, 1000);
  *(DerivedStorage + 232) = *time;
  *(DerivedStorage + 248) = *&time[16];
  *(DerivedStorage + 712) = 0;
  *(DerivedStorage + 720) = DerivedStorage + 712;
  v59 = CMBaseObjectGetDerivedStorage();
  if (FigCFEqual())
  {
    if (a6 != 1095778640)
    {
      if (a6 == 1381257248)
      {
        v60 = (v59 + 96);
        v61 = &hoseSBAR_initializeTransportContext_sTransportContext;
        goto LABEL_93;
      }

      goto LABEL_91;
    }

    v60 = (v59 + 96);
    v61 = &hoseSBAR_initializeTransportContext_sTransportContext_396;
  }

  else
  {
    if (!FigCFEqual())
    {
      v62 = "Unknown stream type";
      goto LABEL_134;
    }

    if (a6 != 1381257248)
    {
LABEL_91:
      v62 = "Unsupported message format";
LABEL_134:
      v42 = 4294894965;
      APSSignalErrorAt(0xFFFEE575, v62, "hoseSBAR_initializeTransportContext");
      v17 = 4294894965;
LABEL_192:
      APSLogErrorAt(v17);
      v114 = 0;
      goto LABEL_193;
    }

    v60 = (v59 + 96);
    v61 = &hoseSBAR_initializeTransportContext_sTransportContext_398;
  }

LABEL_93:
  *v60 = v61;
  if (**(DerivedStorage + 96) == 2)
  {
    *(DerivedStorage + 88) = 0;
    goto LABEL_97;
  }

  v63 = *(DerivedStorage + 80);
  if (!v63)
  {
    APSLogErrorAt(0);
    *(DerivedStorage + 88) = 0;
    goto LABEL_275;
  }

  v64 = *(v63 + 16);
  *(DerivedStorage + 88) = v64;
  if (!v64)
  {
LABEL_275:
    v42 = 4294894965;
    v17 = 0;
    goto LABEL_192;
  }

LABEL_97:
  if (*(DerivedStorage + 129))
  {
    if (hoseSBAR_getCallbacksForSampleBuffersSortedByTransportSeqNum_sOnce != -1)
    {
      dispatch_once(&hoseSBAR_getCallbacksForSampleBuffersSortedByTransportSeqNum_sOnce, &__block_literal_global_441);
    }

    CallbacksForUnsortedSampleBuffers = &hoseSBAR_getCallbacksForSampleBuffersSortedByTransportSeqNum_sCallbacks;
  }

  else
  {
    CallbacksForUnsortedSampleBuffers = CMBufferQueueGetCallbacksForUnsortedSampleBuffers();
  }

  *(DerivedStorage + 136) = CallbacksForUnsortedSampleBuffers;
  v66 = CMBaseObjectGetDerivedStorage();
  v142 = v15;
  if (FigCFEqual())
  {
    v67 = MEMORY[0x277CC08F0];
    v68 = *MEMORY[0x277CC08F0];
    *(v66 + 160) = *MEMORY[0x277CC08F0];
    v69 = *(v67 + 16);
    *(v66 + 176) = v69;
    *(v66 + 184) = v68;
LABEL_106:
    *(v66 + 200) = v69;
    goto LABEL_107;
  }

  if (FigCFEqual())
  {
    v70 = FigGetCFPreferenceNumberWithDefault();
    CMTimeMake(theData, v70, 1000);
    CMTimeConvertScale(time, theData, *(v66 + 88), kCMTimeRoundingMethod_RoundHalfAwayFromZero);
    *(v66 + 160) = *time;
    *(v66 + 176) = *&time[16];
    v71 = FigGetCFPreferenceNumberWithDefault();
    CMTimeMake(theData, v71, 1000);
    CMTimeConvertScale(time, theData, *(v66 + 88), kCMTimeRoundingMethod_RoundHalfAwayFromZero);
    *(v66 + 184) = *time;
    v69 = *&time[16];
    goto LABEL_106;
  }

  if (gLogCategory_APSEndpointStreamAudioHoseSBAR <= 90 && (gLogCategory_APSEndpointStreamAudioHoseSBAR != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APSEndpointStreamAudioHoseSBAR, "void hoseSBAR_initAudioLatency(APSEndpointStreamAudioHoseSBARRef)", 33554522, "%{ptr} ## Invalid Type", cf);
  }

LABEL_107:
  v72 = cf;
  v73 = CFDictionaryGetInt64() != 0;
  cf1 = FigCFDictionaryGetValue();
  v74 = CMBaseObjectGetDerivedStorage();
  v75 = *(v74 + 352);
  v76 = CMBaseObjectGetDerivedStorage();
  theData[0] = 0;
  v155 = 0;
  v156 = 0;
  valuePtr = 0;
  v77 = *MEMORY[0x277CBECE8];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  v79 = MEMORY[0x277CBED28];
  if (!Mutable)
  {
    APSLogErrorAt(0);
    v42 = 4294894966;
    goto LABEL_142;
  }

  if (APSIsAPMSpeaker_sCheckOnce != -1)
  {
    dispatch_once(&APSIsAPMSpeaker_sCheckOnce, &__block_literal_global_16_1786);
  }

  if ((APSIsAPMSpeaker_sIsAPMSpeaker || IsAppleTV()) && APSSettingsIsFeatureEnabled(@"BufferedPassthroughDDP"))
  {
    CFDictionarySetValue(Mutable, *MEMORY[0x277CD63A8], *v79);
  }

  if (*(v76 + 283))
  {
    CFDictionarySetValue(Mutable, *MEMORY[0x277CD63B0], *v79);
  }

  CFDictionarySetInt64();
  CFDictionarySetInt64();
  if (!FigServer_IsAirplayd() && (FigIsAirplaydEnabled() || !in_audio_mx_server_process()))
  {
    RemoteWithOptions = FigSampleBufferAudioRendererCreateRemoteWithOptions();
    if (RemoteWithOptions)
    {
      v42 = RemoteWithOptions;
    }

    else
    {
      v82 = *(v74 + 104);
      v83 = *(*(CMBaseObjectGetVTable() + 8) + 56);
      if (v83)
      {
        v83(v82, *MEMORY[0x277CD6410], *MEMORY[0x277CBED10]);
      }

      RemoteWithOptions = FigSampleBufferRenderSynchronizerCreateRemoteWithOptions();
      if (!RemoteWithOptions)
      {
        if (gLogCategory_APSEndpointStreamAudioHoseSBAR <= 50 && (gLogCategory_APSEndpointStreamAudioHoseSBAR != -1 || _LogCategory_Initialize()))
        {
          LogPrintF(&gLogCategory_APSEndpointStreamAudioHoseSBAR, "OSStatus hoseSBAR_createSynchronizerAndRenderer_embedded(APSEndpointStreamAudioHoseSBARRef, Boolean, dispatch_queue_t, FigSampleBufferRenderSynchronizerRef *, FigSampleBufferAudioRendererRef *)", 33554482, "Created remote synchronizer %{ptr} and sbars %{ptr}", *(v74 + 112), *(v74 + 104), v141);
        }

        goto LABEL_141;
      }

      v42 = RemoteWithOptions;
    }

    goto LABEL_289;
  }

  RemoteWithOptions = FigSampleBufferAudioRendererCreateWithOptions();
  if (RemoteWithOptions)
  {
    v42 = RemoteWithOptions;
  }

  else
  {
    RemoteWithOptions = FigSampleBufferAudioRendererCentralCreateWithOptions();
    if (RemoteWithOptions)
    {
      v42 = RemoteWithOptions;
    }

    else
    {
      CFRetain(cf);
      CFRetain(theData[0]);
      *time = MEMORY[0x277D85DD0];
      *&time[8] = 0x40000000;
      *&time[16] = __hoseSBAR_createSynchronizerAndRenderer_embedded_block_invoke;
      *&time[24] = &__block_descriptor_tmp_414;
      v151 = cf;
      v152 = theData[0];
      v153 = v73;
      dispatch_async(v75, time);
      *(v74 + 104) = theData[0];
      theData[0] = 0;
      RemoteWithOptions = FigSampleBufferRenderSynchronizerCreateWithOptions();
      if (RemoteWithOptions)
      {
        v42 = RemoteWithOptions;
      }

      else
      {
        RemoteWithOptions = FigSampleBufferRenderSynchronizerCentralCreate();
        if (!RemoteWithOptions)
        {
          v81 = valuePtr;
          *(v74 + 112) = valuePtr;
          valuePtr = 0;
          if (gLogCategory_APSEndpointStreamAudioHoseSBAR <= 50)
          {
            if (gLogCategory_APSEndpointStreamAudioHoseSBAR == -1)
            {
              if (!_LogCategory_Initialize())
              {
                goto LABEL_141;
              }

              v81 = *(v74 + 112);
            }

            LogPrintF(&gLogCategory_APSEndpointStreamAudioHoseSBAR, "OSStatus hoseSBAR_createSynchronizerAndRenderer_embedded(APSEndpointStreamAudioHoseSBARRef, Boolean, dispatch_queue_t, FigSampleBufferRenderSynchronizerRef *, FigSampleBufferAudioRendererRef *)", 33554482, "Created local synchronizer %{ptr} and sbars: Central: %{ptr} Concrete: %{ptr}", v81, *(v74 + 104), v156);
          }

LABEL_141:
          v42 = 0;
          goto LABEL_142;
        }

        v42 = RemoteWithOptions;
      }
    }
  }

LABEL_289:
  APSLogErrorAt(RemoteWithOptions);
LABEL_142:
  if (v156)
  {
    CFRelease(v156);
  }

  if (theData[0])
  {
    CFRelease(theData[0]);
  }

  if (v155)
  {
    CFRelease(v155);
  }

  if (valuePtr)
  {
    CFRelease(valuePtr);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  if (v42)
  {
    v108 = v42;
    goto LABEL_190;
  }

  CMNotificationCenterGetDefaultLocalCenter();
  FigNotificationCenterAddWeakListener();
  CMNotificationCenterGetDefaultLocalCenter();
  FigNotificationCenterAddWeakListener();
  CMNotificationCenterGetDefaultLocalCenter();
  FigNotificationCenterAddWeakListener();
  CMNotificationCenterGetDefaultLocalCenter();
  FigNotificationCenterAddWeakListener();
  CMNotificationCenterGetDefaultLocalCenter();
  FigNotificationCenterAddWeakListener();
  v84 = *(v74 + 104);
  v85 = *(*(CMBaseObjectGetVTable() + 8) + 56);
  if (v85)
  {
    v85(v84, *MEMORY[0x277CD6418], *MEMORY[0x277CBED28]);
  }

  if (!*(v74 + 283))
  {
    if (cf1)
    {
      if (CFEqual(cf1, @"LowQualityZeroLatency"))
      {
        v109 = MEMORY[0x277CD6450];
        goto LABEL_184;
      }

      if (CFEqual(cf1, @"TimeDomain"))
      {
        v109 = MEMORY[0x277CD6460];
        goto LABEL_184;
      }

      if (CFEqual(cf1, @"Spectral"))
      {
        v109 = MEMORY[0x277CD6458];
LABEL_184:
        v110 = *v109;
        if (!*v109)
        {
          goto LABEL_156;
        }

        v111 = *(v74 + 104);
        v112 = *(*(CMBaseObjectGetVTable() + 8) + 56);
        if (v112)
        {
          v113 = v112(v111, *MEMORY[0x277CD6408], v110);
          if (!v113)
          {
            goto LABEL_156;
          }

          v42 = v113;
        }

        else
        {
          v42 = 4294954514;
        }

        v108 = v42;
        goto LABEL_190;
      }

      if (!CFEqual(cf1, @"Varispeed"))
      {
        v42 = 4294894965;
        if (gLogCategory_APSEndpointStreamAudioHoseSBAR <= 90 && (gLogCategory_APSEndpointStreamAudioHoseSBAR != -1 || _LogCategory_Initialize()))
        {
          LogPrintF(&gLogCategory_APSEndpointStreamAudioHoseSBAR, "OSStatus hoseSBAR_initRendererAndSynchronizer(APSEndpointStreamAudioHoseSBARRef, Boolean, CFStringRef)", 33554522, "[%{ptr}] Unrecognized HoseSBARTimePitchAlgorithm '%@'\n", v72, cf1);
        }

        goto LABEL_191;
      }
    }

    else if (!APSSettingsGetIntWithOverrideAndDefault(@"hoseSBARPrefersVarispeedTimePitchAlgorithm", 0, 1))
    {
      goto LABEL_156;
    }

    v109 = MEMORY[0x277CD6468];
    goto LABEL_184;
  }

LABEL_156:
  v86 = *(v74 + 112);
  v87 = *(*(CMBaseObjectGetVTable() + 16) + 32);
  if (!v87)
  {
    v42 = 4294954514;
LABEL_172:
    v108 = v42;
LABEL_190:
    APSLogErrorAt(v108);
LABEL_191:
    v17 = v42;
    goto LABEL_192;
  }

  v88 = v87(v86, v74 + 120);
  if (v88)
  {
    v42 = v88;
    goto LABEL_172;
  }

  v89 = CMBaseObjectGetDerivedStorage();
  if (!*(v89 + 120))
  {
    v42 = 4294894965;
    APSLogErrorAt(0);
LABEL_286:
    v108 = v42;
    goto LABEL_190;
  }

  v90 = v89;
  v91 = FigCFWeakReferenceHolderCreateWithReferencedObject();
  if (!v91)
  {
    APSLogErrorAt(0);
LABEL_280:
    v42 = 4294894966;
    goto LABEL_286;
  }

  v92 = v91;
  CMNotificationCenterGetDefaultLocalCenter();
  FigNotificationCenterAddWeakListener();
  v93 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, *(v90 + 352));
  if (!v93)
  {
    APSLogErrorAt(0);
    CFRelease(v92);
    goto LABEL_280;
  }

  v94 = v93;
  v95 = CFRetain(v92);
  dispatch_set_context(v94, v95);
  dispatch_source_set_event_handler_f(v94, hoseSBAR_purgeTimerFired);
  dispatch_source_set_cancel_handler_f(v94, MEMORY[0x277CBE550]);
  dispatch_activate(v94);
  v96 = CMTimebaseAddTimerDispatchSource(*(v90 + 120), v94);
  if (v96)
  {
    v42 = v96;
    APSLogErrorAt(v96);
    v97 = 0;
    goto LABEL_284;
  }

  v97 = dispatch_source_create(MEMORY[0x277D85D38], 0, 1uLL, *(v90 + 352));
  if (!v97)
  {
    APSLogErrorAt(0);
    v42 = 4294894966;
    goto LABEL_284;
  }

  v98 = CFRetain(v92);
  dispatch_set_context(v97, v98);
  dispatch_source_set_event_handler_f(v97, hoseSBAR_sbarLowWaterTimerFired);
  dispatch_source_set_cancel_handler_f(v97, MEMORY[0x277CBE550]);
  dispatch_activate(v97);
  v99 = CMTimebaseAddTimerDispatchSource(*(v90 + 120), v97);
  if (v99)
  {
    v42 = v99;
    APSLogErrorAt(v99);
LABEL_284:
    CFRelease(v92);
    dispatch_source_cancel(v94);
    dispatch_release(v94);
    if (v97)
    {
      dispatch_source_cancel(v97);
      dispatch_release(v97);
    }

    goto LABEL_286;
  }

  *(v90 + 648) = v94;
  *(v90 + 680) = v97;
  CFRelease(v92);
  CMBaseObjectGetDerivedStorage();
  v101 = *(v74 + 104);
  v100 = *(v74 + 112);
  v102 = *(*(CMBaseObjectGetVTable() + 16) + 8);
  if (!v102)
  {
    v42 = 4294954514;
LABEL_177:
    v108 = v42;
    goto LABEL_190;
  }

  v103 = v102(v100, v101);
  if (v103)
  {
    v42 = v103;
    goto LABEL_177;
  }

  if (!*(DerivedStorage + 144))
  {
    goto LABEL_202;
  }

  SNPrintF(label, 64, "APSEndpointStreamAudioHoseSBAR.%@.audioIOAssertion", a2);
  v104 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_UTILITY, 0);
  v105 = dispatch_queue_create(label, v104);
  *(DerivedStorage + 368) = v105;
  if (!v105)
  {
LABEL_254:
    APSLogErrorAt(0);
    v114 = 0;
LABEL_255:
    v42 = 4294894966;
    goto LABEL_193;
  }

  v17 = APSAudioIOAssertionTimingControllerCreate(a2, (DerivedStorage + 152));
  if (v17)
  {
    v42 = v17;
    goto LABEL_192;
  }

  v106 = *(DerivedStorage + 368);
  if (cf)
  {
    v107 = CFRetain(cf);
  }

  else
  {
    v107 = 0;
  }

  dispatch_async_f(v106, v107, hoseSBAR_renewAudioIOAssertionDispatch);
LABEL_202:
  *(DerivedStorage + 384) = v144;
  *(DerivedStorage + 400) = v143;
  *(DerivedStorage + 408) = v144;
  *(DerivedStorage + 424) = v143;
  *(DerivedStorage + 432) = v144;
  *(DerivedStorage + 448) = v143;
  *(DerivedStorage + 544) = 0x100000000;
  *(DerivedStorage + 528) = kAPSNetworkTimeInvalid;
  *(DerivedStorage + 568) = v143;
  *(DerivedStorage + 552) = v144;
  *(DerivedStorage + 592) = v143;
  *(DerivedStorage + 576) = v144;
  *(DerivedStorage + 616) = v143;
  *(DerivedStorage + 600) = v144;
  *(DerivedStorage + 520) = v143;
  *(DerivedStorage + 504) = v144;
  v116 = MEMORY[0x277CC08C8];
  v117 = *(MEMORY[0x277CC08C8] + 32);
  *(DerivedStorage + 868) = *(MEMORY[0x277CC08C8] + 16);
  *(DerivedStorage + 884) = v117;
  *(DerivedStorage + 852) = *v116;
  *(DerivedStorage + 752) = FigGetCFPreferenceNumberWithDefault();
  v17 = CMBufferQueueCreate(v77, 0, *(DerivedStorage + 136), (DerivedStorage + 656));
  if (v17)
  {
    v42 = v17;
    goto LABEL_192;
  }

  v17 = CMBufferQueueCreate(v77, 0, *(DerivedStorage + 136), (DerivedStorage + 664));
  if (v17)
  {
    v42 = v17;
    goto LABEL_192;
  }

  v118 = FigGetCFPreferenceNumberWithDefault();
  v119 = CFArrayCreateMutable(v77, 0, MEMORY[0x277CBF128]);
  v114 = v119;
  if (!v119)
  {
    goto LABEL_294;
  }

  CFArrayAppendValue(v119, *MEMORY[0x277CD62C0]);
  if (*(DerivedStorage + 129))
  {
    CFArrayAppendValue(v114, @"HoseSBARTransportSeqNum");
  }

  v120 = APSCMSampleBufferMergerCreate(v118, v114, (DerivedStorage + 688));
  if (v120)
  {
    v42 = v120;
    goto LABEL_241;
  }

  v121 = (DerivedStorage + 904);
  *(DerivedStorage + 904) = v144;
  *(DerivedStorage + 920) = v143;
  v122 = FigGetCFPreferenceNumberWithDefault();
  *(DerivedStorage + 900) = v122;
  if (v122)
  {
    v123 = FigGetCFPreferenceNumberWithDefault();
    CMTimeMake(time, v123, 1000);
    *v121 = *time;
    v124 = *&time[16];
    *(DerivedStorage + 920) = *&time[16];
    *time = *v121;
    *&time[16] = v124;
    v125 = hoseSBAR_setVolumeFadeInCurve(cf, MEMORY[0x277CC08F0], time);
    if (v125)
    {
      if (gLogCategory_APSEndpointStreamAudioHoseSBAR <= 90)
      {
        v126 = v125;
        if (gLogCategory_APSEndpointStreamAudioHoseSBAR != -1 || _LogCategory_Initialize())
        {
          LogPrintF(&gLogCategory_APSEndpointStreamAudioHoseSBAR, "OSStatus APSEndpointStreamAudioHoseSBARCreate(CFAllocatorRef, CFStringRef, CFStringRef, APSNetworkClockRef, APSAudioFormatDescriptionRef, APSEndpointStreamAudioHoseSBARTransportMessageFormat, APSCryptorRef, int32_t, CFDictionaryRef, APSEndpointStreamAudioHoseSBARRef *)", 33554522, "[%{ptr}] Failed to apply fade-in volume curve, error: %#m", cf, v126);
        }
      }
    }
  }

  *(DerivedStorage + 968) = 0;
  v127 = CFDictionaryCreateMutable(v77, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  *(DerivedStorage + 936) = v127;
  if (!v127 || (v128 = CFDictionaryCreateMutable(v77, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]), (*(DerivedStorage + 928) = v128) == 0) || (v129 = CFDictionaryCreateMutable(v77, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]), (*(DerivedStorage + 944) = v129) == 0) || (v130 = CFDictionaryCreateMutable(v77, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]), (*(DerivedStorage + 952) = v130) == 0) || (v131 = CFDictionaryCreateMutable(v77, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]), (*(DerivedStorage + 960) = v131) == 0))
  {
LABEL_294:
    APSLogErrorAt(0);
    goto LABEL_255;
  }

  v132 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v132)
  {
    v42 = 4294954514;
LABEL_240:
    v120 = v42;
LABEL_241:
    APSLogErrorAt(v120);
    goto LABEL_193;
  }

  v133 = v132(v142, @"SourceClock", v77, &v146);
  if (v133)
  {
    v42 = v133;
    goto LABEL_240;
  }

  HostTimeClock = CMClockGetHostTimeClock();
  v120 = APSClockDriftMonitorCreate(HostTimeClock, v146, 15, 1000, (DerivedStorage + 1000));
  if (v120)
  {
    v42 = v120;
    goto LABEL_241;
  }

  CMNotificationCenterGetDefaultLocalCenter();
  v120 = FigNotificationCenterAddWeakListener();
  if (v120)
  {
    v42 = v120;
    goto LABEL_241;
  }

  v120 = APSTimedInfoManagerCreate((DerivedStorage + 992));
  if (v120)
  {
    v42 = v120;
    goto LABEL_241;
  }

  CMNotificationCenterGetDefaultLocalCenter();
  v120 = FigNotificationCenterAddWeakListener();
  if (v120)
  {
    v42 = v120;
    goto LABEL_241;
  }

  v120 = APSTimedInfoManagerResume(*(DerivedStorage + 992), *(DerivedStorage + 120));
  if (v120)
  {
    v42 = v120;
    goto LABEL_241;
  }

  *(DerivedStorage + 256) = -1;
  if (!notify_register_check("com.apple.mediaexperience.fadeinappliedforplaybackhandoff", (DerivedStorage + 256)))
  {
    *(DerivedStorage + 260) = -1;
    if (!notify_register_check("com.apple.mediaexperience.fadeoutappliedforplaybackhandoff", (DerivedStorage + 260)))
    {
      *time = 0;
      if (gLogCategory_APSEndpointStreamAudioHoseSBAR <= 50 && (gLogCategory_APSEndpointStreamAudioHoseSBAR != -1 || _LogCategory_Initialize()))
      {
        APSAudioFormatDescriptionCopyDebugString(*(DerivedStorage + 80), time);
        if (gLogCategory_APSEndpointStreamAudioHoseSBAR <= 50 && (gLogCategory_APSEndpointStreamAudioHoseSBAR != -1 || _LogCategory_Initialize()))
        {
          LogPrintF(&gLogCategory_APSEndpointStreamAudioHoseSBAR, "OSStatus APSEndpointStreamAudioHoseSBARCreate(CFAllocatorRef, CFStringRef, CFStringRef, APSNetworkClockRef, APSAudioFormatDescriptionRef, APSEndpointStreamAudioHoseSBARTransportMessageFormat, APSCryptorRef, int32_t, CFDictionaryRef, APSEndpointStreamAudioHoseSBARRef *)", 33554482, "[%{ptr}] created for %@ with sample rate %d, transport format:%@", cf, *(DerivedStorage + 32), *(DerivedStorage + 88), *time);
        }

        if (*time)
        {
          CFRelease(*time);
        }
      }

      v42 = 0;
      *a10 = cf;
      cf = 0;
      goto LABEL_195;
    }
  }

  APSLogErrorAt(0);
  v42 = 4294960560;
LABEL_193:
  if (cf)
  {
    CFRelease(cf);
  }

LABEL_195:
  if (v146)
  {
    CFRelease(v146);
  }

  if (v114)
  {
    CFRelease(v114);
  }

  return v42;
}