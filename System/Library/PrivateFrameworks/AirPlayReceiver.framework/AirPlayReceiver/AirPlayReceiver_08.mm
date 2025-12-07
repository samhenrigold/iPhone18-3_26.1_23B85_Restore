uint64_t airplayReqProcessor_requestProcessSetAudioMode(uint64_t a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  CFDataGetTypeID();
  TypedValue = CFDictionaryGetTypedValue();
  if (!TypedValue)
  {
    v12 = 4294895366;
    APSLogErrorAt();
    return v12;
  }

  v4 = TypedValue;
  CFDataGetBytePtr(TypedValue);
  CFDataGetLength(v4);
  CFDictionaryGetTypeID();
  v5 = CFCreateWithPlistBytes();
  CFStringGetTypeID();
  v6 = CFDictionaryGetTypedValue();
  if (!v6)
  {
    v12 = 4294895366;
    APSLogErrorAt();
    goto LABEL_13;
  }

  v9 = *(DerivedStorage + 32);
  if (!v9 || (v10 = v6, (v11 = *(v9 + 576)) == 0))
  {
    APSLogErrorAt();
    v12 = 4294895358;
    goto LABEL_13;
  }

  if (APReceiverAudioSessionPlatformSetProperty(v11, v7, @"RASP::AudioMode", v8, v10))
  {
    APSLogErrorAt();
    v12 = 4294895362;
LABEL_13:
    v14 = v12;
    if (!v5)
    {
      return v12;
    }

    goto LABEL_7;
  }

  v12 = 0;
  v14 = 0;
  if (v5)
  {
LABEL_7:
    CFRelease(v5);
    return v14;
  }

  return v12;
}

uint64_t airplayReqProcessor_isAllowedToConnectBasedOnUserPermission(const void *a1, int *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!*(DerivedStorage + 8) || ((v5 = DerivedStorage, *(DerivedStorage + 412)) || *(DerivedStorage + 413)) && !*(*DerivedStorage + 255))
  {
    v9 = 0;
    v8 = 0;
    v10 = 1;
  }

  else if (APReceiverSessionManagerCanHijack(*(DerivedStorage + 432), a1))
  {
    v6 = *MEMORY[0x277CBECE8];
    v7 = SockAddrToDeviceID();
    v8 = CFStringCreateWithFormat(v6, 0, @"client-%llx", v7);
    if (gLogCategory_APReceiverRequestProcessorAirPlay <= 50 && (gLogCategory_APReceiverRequestProcessorAirPlay != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_APReceiverRequestProcessorAirPlay, "Boolean airplayReqProcessor_isAllowedToConnectBasedOnUserPermission(APReceiverRequestProcessorRef, APSTransportMessageProcessingStatus *)", 33554482, "[%{ptr}] Asking user's permission for AirPlay connection for client %s\n", a1, v5 + 134);
    }

    v11 = *(v5 + 8);
    v12 = v5 + 134;
    v13 = *(*(CMBaseObjectGetVTable() + 16) + 144);
    if (v13 && !v13(v11, v5 + 134, v8))
    {
      v9 = -71930;
      if (gLogCategory_APReceiverRequestProcessorAirPlay <= 50 && (gLogCategory_APReceiverRequestProcessorAirPlay != -1 || _LogCategory_Initialize()))
      {
        LogPrintF(&gLogCategory_APReceiverRequestProcessorAirPlay, "Boolean airplayReqProcessor_isAllowedToConnectBasedOnUserPermission(APReceiverRequestProcessorRef, APSTransportMessageProcessingStatus *)", 33554482, "[%{ptr}] User denied AirPlay connection for client %s\n", a1, v12);
      }

      v10 = 0;
    }

    else
    {
      v10 = 1;
      *(v5 + 413) = 1;
      if (gLogCategory_APReceiverRequestProcessorAirPlay <= 50 && (gLogCategory_APReceiverRequestProcessorAirPlay != -1 || _LogCategory_Initialize()))
      {
        LogPrintF(&gLogCategory_APReceiverRequestProcessorAirPlay, "Boolean airplayReqProcessor_isAllowedToConnectBasedOnUserPermission(APReceiverRequestProcessorRef, APSTransportMessageProcessingStatus *)", 33554482, "[%{ptr}] User permitted AirPlay connection for client %s\n", a1, v5 + 134);
      }

      v9 = 0;
    }
  }

  else
  {
    APSLogErrorAt();
    v8 = 0;
    v10 = 0;
    v9 = -71937;
  }

  if (a2)
  {
    *a2 = v9;
  }

  if (v8)
  {
    CFRelease(v8);
  }

  return v10;
}

uint64_t airplayReqProcessor_createAndStoreMediaControlRequestProcessorForMCSession(uint64_t a1, uint64_t a2, __int128 *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  *v25 = 0u;
  if (!*(DerivedStorage + 104))
  {
    Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    *(DerivedStorage + 104) = Mutable;
    if (!Mutable)
    {
      APSLogErrorAt();
      return 4294895346;
    }
  }

  Int64 = CFNumberCreateInt64();
  if (!CFDictionaryGetValue(*(DerivedStorage + 104), Int64))
  {
    v19 = *(DerivedStorage + 128);
    v20 = *(DerivedStorage + 132);
    v22 = *(DerivedStorage + 24);
    if (a3)
    {
      v23 = *a3;
    }

    else
    {
      v23 = 0uLL;
    }

    v27 = *(DerivedStorage + 120);
    v28 = *(*(DerivedStorage + 16) + 120);
    v21 = *(DerivedStorage + 16);
    cf_8 = *(DerivedStorage + 400);
    v26 = *DerivedStorage;
    v9 = *(DerivedStorage + 32);
    if (v9)
    {
      v25[1] = *(v9 + 448);
    }

    v29 = *(DerivedStorage + 8);
    if (gMediaControlGlobalsInitOnce != -1)
    {
      dispatch_once_f(&gMediaControlGlobalsInitOnce, 0, mcProcessor_initOnce);
    }

    if (APReceiverRequestProcessorGetClassID_once != -1)
    {
      dispatch_once(&APReceiverRequestProcessorGetClassID_once, &__block_literal_global_303);
    }

    v10 = CMDerivedObjectCreate();
    if (v10)
    {
      APSLogErrorAt();
LABEL_37:
      if (gLogCategory_APReceiverRequestProcessorAirPlay <= 50 && (gLogCategory_APReceiverRequestProcessorAirPlay != -1 || _LogCategory_Initialize()))
      {
        LogPrintF(&gLogCategory_APReceiverRequestProcessorAirPlay, "OSStatus airplayReqProcessor_createAndStoreMediaControlRequestProcessorForMCSession(APReceiverRequestProcessorRef, uint64_t, const uint8_t *)", 33554482, "[%{ptr}] Request Processor for MediaControl session %@ created with err: %d\n", a1, Int64, v10);
      }

      APSLogErrorAt();
      if (!v10)
      {
        v10 = 4294960568;
      }

      goto LABEL_44;
    }

    v11 = CMBaseObjectGetDerivedStorage();
    *(v11 + 16) = v19;
    *(v11 + 20) = v20;
    *(v11 + 24) = v22;
    SockAddrCopy();
    SockAddrCopy();
    *(v11 + 96) = a2;
    *(v11 + 104) = v23;
    v12 = cf_8;
    if (cf_8)
    {
      v12 = CFRetain(cf_8);
    }

    *(v11 + 120) = v12;
    v13 = v26;
    if (v26)
    {
      v13 = CFRetain(v26);
    }

    *(v11 + 128) = v13;
    *(v11 + 144) = v27;
    *(v11 + 152) = v28;
    CFRetain(v28);
    *(v11 + 32) = v21;
    __strlcpy_chk();
    UUIDGet();
    v14 = v29;
    if (v29)
    {
      v14 = CFRetain(v29);
    }

    *(v11 + 392) = v14;
    *(v11 + 400) = APReceiverFairPlayHelperCreate();
    v15 = v25[1];
    if (v25[1])
    {
      v15 = CFRetain(v25[1]);
    }

    *(v11 + 136) = v15;
    *(v11 + 408) = 1;
    if (gLogCategory_APReceiverRequestProcessorMediaControl > 50)
    {
LABEL_36:
      v17 = *MEMORY[0x277CBECE8];
      *(v11 + 416) = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, 0, 0);
      *(v11 + 440) = CFDictionaryCreateMutable(v17, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
      *(v11 + 432) = FigSimpleMutexCreate();
      *(v11 + 448) = FigSimpleMutexCreate();
      *(v11 + 424) = 0;
      goto LABEL_37;
    }

    if (gLogCategory_APReceiverRequestProcessorMediaControl == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_32;
      }

      if (*(v11 + 408))
      {
        v16 = 116;
      }

      else
      {
        v16 = 102;
      }
    }

    else
    {
      v16 = 116;
    }

    LogPrintF(&gLogCategory_APReceiverRequestProcessorMediaControl, "OSStatus APReceiverRequestProcessorMediaControlCreate(CFAllocatorRef, APReceiverRequestProcessorMediaControlCreateParams *, APReceiverRequestProcessorRef *)", 33554482, "%{ptr} Translate v1 messages to v2? %c", 0, v16);
LABEL_32:
    if (gLogCategory_APReceiverRequestProcessorMediaControl <= 30 && (gLogCategory_APReceiverRequestProcessorMediaControl != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_APReceiverRequestProcessorMediaControl, "OSStatus APReceiverRequestProcessorMediaControlCreate(CFAllocatorRef, APReceiverRequestProcessorMediaControlCreateParams *, APReceiverRequestProcessorRef *)", 33554462, "%{ptr} created\n", 0);
    }

    goto LABEL_36;
  }

  if (gLogCategory_APReceiverRequestProcessorAirPlay <= 50 && (gLogCategory_APReceiverRequestProcessorAirPlay != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APReceiverRequestProcessorAirPlay, "OSStatus airplayReqProcessor_createAndStoreMediaControlRequestProcessorForMCSession(APReceiverRequestProcessorRef, uint64_t, const uint8_t *)", 33554482, "[%{ptr}] MCRequestProcessor for token: %llu already exists.\n", a1, a2);
  }

  v10 = 0;
LABEL_44:
  if (Int64)
  {
    CFRelease(Int64);
  }

  return v10;
}

uint64_t airplayReqProcessor_hijackCurrentSessionIfNeeded(const void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v3 = *(DerivedStorage + 432);
  if (*(v3 + 72) < 1)
  {
    return 0;
  }

  v4 = DerivedStorage;
  if (CFArrayGetCount(*(v3 + 64)) != *(v3 + 72))
  {
    return 0;
  }

  if (APReceiverSessionManagerCanHijack(*(v4 + 432), a1))
  {
    APReceiverSessionManagerHijack(*(v4 + 432), a1);
    return 0;
  }

  APSLogErrorAt();
  return 4294895359;
}

void airplayReqProcessor_handleNewSessionFromHTUnawareSender(uint64_t a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!*(DerivedStorage + 440))
  {
    v5 = DerivedStorage;
    if (APSIsAPMSpeaker())
    {
      if (APSIsMemberOfHTGroup())
      {
        v6 = *(*(v5 + 432) + 48);
        if (v6)
        {
          v7 = APReceiverRequestProcessorCopyReceiverSession(v6);
          if (v7)
          {
            v8 = v7;
            if (AirPlayReceiverSessionSendMediaRemoteCommand(v7, -1, 1885435251, 0))
            {
              goto LABEL_24;
            }

            if (gLogCategory_APReceiverRequestProcessorAirPlay <= 50 && (gLogCategory_APReceiverRequestProcessorAirPlay != -1 || _LogCategory_Initialize()))
            {
              LogPrintF(&gLogCategory_APReceiverRequestProcessorAirPlay, "OSStatus airplayReqProcessor_handleNewSessionFromHTUnawareSender(APReceiverRequestProcessorRef, APSClusterType)", 33554482, "[%{ptr}] Send pause back to HT session [%{ptr}] because an HT-unaware sender has hijacked.\n", a1, v8);
            }

            Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
            if (!Mutable)
            {
LABEL_24:
              APSLogErrorAt();
              v10 = v8;
            }

            else
            {
              v10 = Mutable;
              CFDictionarySetValue(Mutable, @"type", @"htSecondaryNonPersistentSessionStarted");
              CFDictionarySetInt64();
              v11 = *(v5 + 456);
              if (v11)
              {
                CFDictionarySetValue(v10, @"hijackID", v11);
              }

              if (AirPlayReceiverSessionSendCommandForObject(v8, 0, v10, 0, 0))
              {
                APSLogErrorAt();
              }

              else if (gLogCategory_APReceiverRequestProcessorAirPlay <= 50 && (gLogCategory_APReceiverRequestProcessorAirPlay != -1 || _LogCategory_Initialize()))
              {
                LogPrintF(&gLogCategory_APReceiverRequestProcessorAirPlay, "OSStatus airplayReqProcessor_handleNewSessionFromHTUnawareSender(APReceiverRequestProcessorRef, APSClusterType)", 33554482, "[%{ptr}] Notified HT session [%{ptr}] about HT-unaware non-persistent session (sender perceived cluster type: %d).\n", a1, v8, a2);
              }

              CFRelease(v8);
            }

            CFRelease(v10);
          }
        }
      }
    }
  }
}

uint64_t airplayReqProcessor_registerReqProcWithSessionManager(const void *a1, int a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 352))
  {
    return 0;
  }

  v6 = DerivedStorage;
  mach_absolute_time();
  v7 = *(v6 + 432);
  if (!v7 || !a1)
  {
    APSLogErrorAt();
    v5 = 4294895056;
    goto LABEL_54;
  }

  if (gLogCategory_APReceiverSessionManager <= 50 && (gLogCategory_APReceiverSessionManager != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APReceiverSessionManager, "OSStatus APReceiverSessionManagerAddSession(APReceiverSessionManagerRef, APReceiverRequestProcessorRef, APReceiverSessionType)", 33554482, "Adding session %{ptr}\n", a1);
  }

  if (!a2)
  {
    if (!cfArrayContainsValue(*(v7 + 64), a1))
    {
      if (*(v7 + 72) < 1 || CFArrayGetCount(*(v7 + 64)) != *(v7 + 72))
      {
        CFArrayAppendValue(*(v7 + 64), a1);
        if (gLogCategory_APReceiverSessionManager <= 50 && (gLogCategory_APReceiverSessionManager != -1 || _LogCategory_Initialize()))
        {
          LogPrintF(&gLogCategory_APReceiverSessionManager, "OSStatus APReceiverSessionManagerAddSession(APReceiverSessionManagerRef, APReceiverRequestProcessorRef, APReceiverSessionType)", 33554482, "Added a new AirPlay session.\n");
        }

        APReceiverSessionManagerSetAsMainAirPlaySession(v7, a1);
        goto LABEL_52;
      }

      v5 = 4294895055;
      goto LABEL_65;
    }

LABEL_35:
    v5 = 0;
    goto LABEL_54;
  }

  if (a2 != 2)
  {
    if (!*(v7 + 40))
    {
      v5 = 4294960561;
      goto LABEL_54;
    }

    if (!cfArrayContainsValue(*(v7 + 80), a1))
    {
      CFArrayAppendValue(*(v7 + 80), a1);
      if (gLogCategory_APReceiverSessionManager <= 50 && (gLogCategory_APReceiverSessionManager != -1 || _LogCategory_Initialize()))
      {
        LogPrintF(&gLogCategory_APReceiverSessionManager, "OSStatus APReceiverSessionManagerAddSession(APReceiverSessionManagerRef, APReceiverRequestProcessorRef, APReceiverSessionType)", 33554482, "Added entry to Remote Control Array. %@\n", *(v7 + 80));
      }
    }

    goto LABEL_35;
  }

  if (APSIsMemberOfHTGroup())
  {
    v8 = APSIsAPMSpeaker() == 0;
  }

  else
  {
    v8 = 1;
  }

  v9 = APSIsMemberOfStereoPair();
  Int64 = CFObjectGetInt64();
  if (v8 && !v9)
  {
    v5 = 4294895055;
  }

  else if (cfArrayContainsValue(*(v7 + 64), a1))
  {
    v5 = 4294895055;
  }

  else
  {
    if (!*(v7 + 48))
    {
      goto LABEL_38;
    }

    if (gLogCategory_APReceiverSessionManager <= 50 && (gLogCategory_APReceiverSessionManager != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_APReceiverSessionManager, "OSStatus APReceiverSessionManagerAddSession(APReceiverSessionManagerRef, APReceiverRequestProcessorRef, APReceiverSessionType)", 33554482, "Clean up existing persistent session\n");
    }

    AirPlayReceiverServerHijackConnection(*(v7 + 24), *(v7 + 48), a1);
    if (!*(v7 + 48))
    {
LABEL_38:
      v11 = *(v7 + 72);
      if (v11 >= 1)
      {
        *(v7 + 72) = v11 + 1;
      }

      CFArrayAppendValue(*(v7 + 64), a1);
      *(v7 + 48) = CFRetain(a1);
      APReceiverSessionManagerUpdateParentGroupInfo(v7);
      if (gLogCategory_APReceiverSessionManager <= 50 && (gLogCategory_APReceiverSessionManager != -1 || _LogCategory_Initialize()))
      {
        v12 = "yes";
        if (!Int64)
        {
          v12 = "no";
        }

        LogPrintF(&gLogCategory_APReceiverSessionManager, "OSStatus APReceiverSessionManagerAddSession(APReceiverSessionManagerRef, APReceiverRequestProcessorRef, APReceiverSessionType)", 33554482, "Added a new persistent session (media: %s); sessions array capacity %d\n", v12, *(v7 + 72));
      }

      if (v9)
      {
        if (gLogCategory_APReceiverSessionManager <= 30 && (gLogCategory_APReceiverSessionManager != -1 || _LogCategory_Initialize()))
        {
          LogPrintF(&gLogCategory_APReceiverSessionManager, "OSStatus APReceiverSessionManagerAddSession(APReceiverSessionManagerRef, APReceiverRequestProcessorRef, APReceiverSessionType)", 33554462, "Setting IsClusterLeader to false");
        }

        CFObjectSetProperty();
      }

LABEL_52:
      v5 = APReceiverSessionManagerUpdateAndNotifyReceiverSessionState(v7);
      if (v5)
      {
        APSLogErrorAt();
        APReceiverSessionManagerRemoveSession(v7, a1);
      }

      goto LABEL_54;
    }

    v5 = 4294895055;
  }

LABEL_65:
  APSLogErrorAt();
LABEL_54:
  mach_absolute_time();
  *(v6 + 544) = UpTicksToMilliseconds();
  if (v5)
  {
    APSLogErrorAt();
  }

  else
  {
    *(v6 + 352) = 1;
  }

  return v5;
}

uint64_t airplayReqProcessor_processUpdateMRNowPlayingInfo(uint64_t a1, const __CFDictionary *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!*(DerivedStorage + 32))
  {
    APSLogErrorAt();
    v13 = 4294960551;
    goto LABEL_27;
  }

  v5 = DerivedStorage;
  Value = CFDictionaryGetValue(a2, @"params");
  if (!Value)
  {
    APSLogErrorAt();
    v13 = 4294895345;
    goto LABEL_27;
  }

  v7 = Value;
  v8 = CFDictionaryGetValue(a2, @"mergePolicy");
  if (v8)
  {
    v10 = v8;
  }

  else
  {
    v10 = @"update";
  }

  v11 = gLogCategory_APReceiverRequestProcessorAirPlay;
  if (gLogCategory_APReceiverRequestProcessorAirPlay > 30)
  {
    goto LABEL_36;
  }

  if (gLogCategory_APReceiverRequestProcessorAirPlay != -1)
  {
LABEL_8:
    if (v11 != -1 || _LogCategory_Initialize())
    {
      LogPrintF(&gLogCategory_APReceiverRequestProcessorAirPlay, "OSStatus airplayReqProcessor_processUpdateMRNowPlayingInfo(APReceiverRequestProcessorRef, CFDictionaryRef)", 33554462, "[%{ptr}] Update MR Now Playing Info with merge policy [%@]: %1.64@\n", a1, v10, v7);
    }

    goto LABEL_22;
  }

  v12 = _LogCategory_Initialize();
  v11 = gLogCategory_APReceiverRequestProcessorAirPlay;
  if (!v12)
  {
LABEL_36:
    if (v11 <= 50)
    {
      if (v11 != -1 || _LogCategory_Initialize() && (v11 = gLogCategory_APReceiverRequestProcessorAirPlay, gLogCategory_APReceiverRequestProcessorAirPlay <= 50))
      {
        if (v11 != -1 || _LogCategory_Initialize())
        {
          LogPrintF(&gLogCategory_APReceiverRequestProcessorAirPlay, "OSStatus airplayReqProcessor_processUpdateMRNowPlayingInfo(APReceiverRequestProcessorRef, CFDictionaryRef)", 33554482, "[%{ptr}] Update MR Now Playing Info with merge policy [%@]\n", a1, v10);
        }
      }
    }

    goto LABEL_22;
  }

  if (gLogCategory_APReceiverRequestProcessorAirPlay <= 30)
  {
    goto LABEL_8;
  }

LABEL_22:
  v13 = AirPlayReceiverSessionSetProperty(*(v5 + 32), v9, @"mrNowPlayingInfo", v10, v7);
  if (!v13)
  {
    return v13;
  }

  APSLogErrorAt();
LABEL_27:
  if (gLogCategory_APReceiverRequestProcessorAirPlay <= 90 && (gLogCategory_APReceiverRequestProcessorAirPlay != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APReceiverRequestProcessorAirPlay, "OSStatus airplayReqProcessor_processUpdateMRNowPlayingInfo(APReceiverRequestProcessorRef, CFDictionaryRef)", 33554522, "### [%{ptr}] Update MR now playing info failed: %#m\n", a1, v13);
  }

  return v13;
}

uint64_t airplayReqProcessor_processUpdateMRExtendedMetadata(uint64_t a1, const __CFDictionary *a2, const void *a3, const void *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a3)
  {
    if (a4)
    {
      v9 = DerivedStorage;
      Value = CFDictionaryGetValue(a2, a3);
      if (Value)
      {
        v12 = AirPlayReceiverSessionSetProperty(*(v9 + 32), v11, a4, 0, Value);
        if (!v12)
        {
          return v12;
        }
      }

      else
      {
        v12 = 4294895345;
      }
    }

    else
    {
      v12 = 4294895345;
    }
  }

  else
  {
    v12 = 4294895345;
  }

  APSLogErrorAt();
  if (gLogCategory_APReceiverRequestProcessorAirPlay <= 90 && (gLogCategory_APReceiverRequestProcessorAirPlay != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APReceiverRequestProcessorAirPlay, "OSStatus airplayReqProcessor_processUpdateMRExtendedMetadata(APReceiverRequestProcessorRef, CFDictionaryRef, CFStringRef, CFStringRef)", 33554522, "### [%{ptr}] Update MR extended metadata [%@] failed: %#m\n", a1, a4, v12);
  }

  return v12;
}

uint64_t airplayReqProcessor_preparePlistResponse(const void *a1, CFMutableDictionaryRef *a2)
{
  if (!a1)
  {
    APSLogErrorAt();
    return 4294895345;
  }

  Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (!Mutable)
  {
    APSLogErrorAt();
    return 4294895346;
  }

  v5 = Mutable;
  Data = CFPropertyListCreateData(0, a1, kCFPropertyListBinaryFormat_v1_0, 0, 0);
  if (!Data)
  {
    v9 = 4294895344;
    APSLogErrorAt();
LABEL_14:
    v10 = v5;
    goto LABEL_7;
  }

  v7 = Data;
  CFDataGetBytePtr(Data);
  CFDataGetLength(v7);
  v8 = CFDictionarySetData();
  if (v8)
  {
    v9 = v8;
    goto LABEL_13;
  }

  v9 = CFDictionarySetCString();
  if (v9)
  {
LABEL_13:
    APSLogErrorAt();
    CFRelease(v7);
    goto LABEL_14;
  }

  *a2 = v5;
  v10 = v7;
LABEL_7:
  CFRelease(v10);
  return v9;
}

__CFDictionary *airplayReqProcessor_createPairingParamsDict(int a1, int a2, int a3, int a4, void *a5)
{
  keys[1] = *MEMORY[0x277D85DE8];
  Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  v11 = Mutable;
  v12 = *MEMORY[0x277CBED28];
  v13 = *MEMORY[0x277CBED10];
  if (a1)
  {
    v14 = *MEMORY[0x277CBED28];
  }

  else
  {
    v14 = *MEMORY[0x277CBED10];
  }

  CFDictionarySetValue(Mutable, @"useAccountOwnerPairing", v14);
  if (a2)
  {
    v15 = v12;
  }

  else
  {
    v15 = v13;
  }

  CFDictionarySetValue(v11, @"useHomeKitPairing", v15);
  if (a3)
  {
    v16 = v12;
  }

  else
  {
    v16 = v13;
  }

  CFDictionarySetValue(v11, @"useSystemPairing", v16);
  if (a4)
  {
    v17 = v12;
  }

  else
  {
    v17 = v13;
  }

  CFDictionarySetValue(v11, @"useTransientPairing", v17);
  if (a5)
  {
    values = v12;
    keys[0] = a5;
    v18 = CFDictionaryCreate(0, keys, &values, 1, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    CFDictionarySetValue(v11, @"ACL", v18);
    CFRelease(v18);
  }

  return v11;
}

uint64_t airplayReqProcessor_createEncryptionContext(uint64_t a1, CFMutableDictionaryRef *a2)
{
  v18 = *MEMORY[0x277D85DE8];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v4 = *(DerivedStorage + 400);
  v5 = *(*(CMBaseObjectGetVTable() + 16) + 24);
  if (!v5)
  {
    v12 = 4294954514;
LABEL_11:
    APSLogErrorAt();
    goto LABEL_12;
  }

  v6 = v5(v4, "Control-Salt", 12, "Control-Read-Encryption-Key", 27, 32, v17);
  if (v6)
  {
    v12 = v6;
    goto LABEL_11;
  }

  v7 = *(DerivedStorage + 400);
  v8 = *(*(CMBaseObjectGetVTable() + 16) + 24);
  if (!v8)
  {
    v12 = 4294954514;
    goto LABEL_11;
  }

  v9 = v8(v7, "Control-Salt", 12, "Control-Write-Encryption-Key", 28, 32, v16);
  if (v9)
  {
    v12 = v9;
    goto LABEL_11;
  }

  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (!Mutable)
  {
    APSLogErrorAt();
    v12 = 4294895346;
    goto LABEL_13;
  }

  v11 = CFDictionarySetData();
  if (v11)
  {
    v12 = v11;
    goto LABEL_22;
  }

  v12 = CFDictionarySetData();
  if (v12)
  {
LABEL_22:
    APSLogErrorAt();
    goto LABEL_13;
  }

  *a2 = Mutable;
LABEL_12:
  Mutable = 0;
LABEL_13:
  for (i = 0; i != 32; ++i)
  {
    v17[i] = 0;
  }

  for (j = 0; j != 32; ++j)
  {
    v16[j] = 0;
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  return v12;
}

uint64_t airplayReqProcessor_prepareBinaryDataResponse(uint64_t a1, uint64_t a2, uint64_t a3, const void *a4, CFMutableDictionaryRef *a5)
{
  Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (!Mutable)
  {
    APSLogErrorAt();
    return 4294895346;
  }

  v10 = Mutable;
  if (a2)
  {
    if (a3)
    {
      v11 = CFDictionarySetData();
      if (v11)
      {
        v13 = v11;
        goto LABEL_13;
      }
    }
  }

  v12 = CFDictionarySetCString();
  if (v12)
  {
    v13 = v12;
LABEL_13:
    APSLogErrorAt();
    CFRelease(v10);
    return v13;
  }

  if (a4)
  {
    CFDictionarySetValue(v10, *MEMORY[0x277CEA368], a4);
  }

  v13 = 0;
  *a5 = v10;
  return v13;
}

uint64_t airplayReqProcessor_isAllowedToConnectBasedOnACL(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  PropertyInt64Sync = CFObjectGetPropertyInt64Sync();
  if (CFObjectGetPropertyInt64Sync())
  {
    v3 = PropertyInt64Sync == 1;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  if ((PropertyInt64Sync != 2 || *(DerivedStorage + 412)) && (!v4 || *(DerivedStorage + 411)))
  {
    return 1;
  }

  APSLogErrorAt();
  return 0;
}

uint64_t airplayReqProcessor_copyPasscodeForPairingType(uint64_t a1, uint64_t a2, int a3, __CFString **a4)
{
  v5 = MEMORY[0x277CBED28];
  v6 = @"3939";
  if (a2 > 4)
  {
    if ((a2 - 1001) >= 2)
    {
      if (a2 != 5)
      {
        goto LABEL_10;
      }

      v5 = MEMORY[0x277CBED10];
    }
  }

  else if ((a2 - 1) >= 3)
  {
    if (a2 != 4)
    {
      goto LABEL_10;
    }

    if ((a3 & 0xFFFFFFFE) != 2)
    {
      v6 = @"3939";
      goto LABEL_10;
    }
  }

  v8 = 0;
  v6 = APReceiverSystemInfoCopyProperty(a1, a2, @"Passcode", *v5, &v8);
  if (v8)
  {
    APSLogErrorAt();
    return v8;
  }

LABEL_10:
  result = 0;
  *a4 = v6;
  return result;
}

uint64_t airplayReqProcessor_displayPINIfNeeded(const void *a1, const __CFString *a2, int a3)
{
  v29 = *MEMORY[0x277D85DE8];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  *buffer = 0u;
  v14 = 0u;
  if (a3 == 2)
  {
    return 0;
  }

  v7 = DerivedStorage;
  if (!APReceiverSessionManagerCanHijack(*(DerivedStorage + 432), a1))
  {
    APSLogErrorAt();
    return 4294960575;
  }

  if (!*(v7 + 8))
  {
    if (gLogCategory_APReceiverRequestProcessorAirPlay <= 50 && (gLogCategory_APReceiverRequestProcessorAirPlay != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_APReceiverRequestProcessorAirPlay, "OSStatus airplayReqProcessor_displayPINIfNeeded(APReceiverRequestProcessorRef, CFStringRef, APSecurityMode)", 50, "[%{ptr}] Enter PIN: %@\n", a1, a2, *buffer, *&buffer[8], v14, v15, v16, v17, v18, v19, v20, v21, v22, v23, v24, v25, v26, v27, v28);
    }

    return 0;
  }

  CFStringGetCString(a2, buffer, 256, 0x8000100u);
  v8 = *(v7 + 8);
  v9 = *(v7 + 120);
  v10 = *(*(CMBaseObjectGetVTable() + 16) + 8);
  if (!v10)
  {
    v11 = 4294954514;
LABEL_8:
    APSLogErrorAt();
    return v11;
  }

  v11 = v10(v8, buffer, v9, v7 + 134);
  if (v11)
  {
    goto LABEL_8;
  }

  return v11;
}

uint64_t APReceiverUIControllerHidePIN(uint64_t a1)
{
  VTable = CMBaseObjectGetVTable();
  v4 = *(VTable + 16);
  result = VTable + 16;
  v5 = *(v4 + 16);
  if (v5)
  {

    return v5(a1);
  }

  return result;
}

uint64_t airplayReqProcessor_createSessionInfoDict(uint64_t a1, const __CFDictionary *a2, __CFDictionary **a3)
{
  value[33] = *MEMORY[0x277D85DE8];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  value[0] = 0;
  if (a3)
  {
    v6 = DerivedStorage;
    v7 = *MEMORY[0x277CBECE8];
    MutableCopy = CFDictionaryCreateMutableCopy(*MEMORY[0x277CBECE8], 0, a2);
    if (MutableCopy)
    {
      v9 = MutableCopy;
      if (!*(v6 + 32) || APSIsAPMSpeaker() || *(v6 + 440))
      {
        goto LABEL_8;
      }

      v10 = APReceiverSystemInfoCopyDisplaysInfoForUserVersion(*(*v6 + 160), v7, *(v6 + 444), value);
      if (!v10)
      {
        CFDictionarySetValue(v9, @"displays", value[0]);
LABEL_8:
        HardwareAddressToCString();
        CFDictionarySetCString();
        SockAddrToString();
        CFDictionarySetCString();
        v11 = 0;
        *a3 = v9;
        goto LABEL_9;
      }

      v11 = v10;
      APSLogErrorAt();
      CFRelease(v9);
    }

    else
    {
      APSLogErrorAt();
      v11 = 4294895346;
    }
  }

  else
  {
    v11 = 4294895345;
    APSLogErrorAt();
  }

LABEL_9:
  if (value[0])
  {
    CFRelease(value[0]);
  }

  return v11;
}

uint64_t airplayReqProcessor_requestCreateSession(uint64_t a1, char a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7)
{
  v94 = *MEMORY[0x277D85DE8];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 32))
  {
    return 0;
  }

  v15 = DerivedStorage;
  v92 = 0;
  v91 = 0u;
  v90 = 0u;
  *cf = 0u;
  v88 = 0u;
  v87 = 0u;
  v86 = 0u;
  v85 = 0u;
  v84 = 0u;
  v16 = *DerivedStorage;
  v83 = *DerivedStorage;
  v17 = *(DerivedStorage + 24);
  *(&v84 + 1) = DerivedStorage + 304;
  *&v85 = DerivedStorage + 276;
  v18 = *(DerivedStorage + 264);
  *(&v85 + 1) = *(DerivedStorage + 120);
  *(&v86 + 1) = v18;
  LODWORD(v87) = *(DerivedStorage + 272);
  *&v90 = *(DerivedStorage + 424);
  v19 = 1;
  LODWORD(v84) = v17;
  if (v17 != 4 && v17 != 64)
  {
    v19 = v17 == 128;
  }

  BYTE5(v88) = v19;
  BYTE6(v88) = a2;
  v20 = *(DerivedStorage + 432);
  *(&v88 + 1) = a1;
  cf[0] = v20;
  cf[1] = *(DerivedStorage + 8);
  *&v91 = a7;
  BYTE9(v90) = a3;
  BYTE8(v90) = a4;
  BYTE10(v90) = a5;
  BYTE11(v90) = a6;
  LODWORD(v92) = *(*(DerivedStorage + 16) + 136);
  v76 = a6;
  v77 = a4;
  v75 = a5;
  if (a3 || !FigCFEqual())
  {
    v21 = 0;
    v22 = 0;
  }

  else
  {
    v21 = 0;
    if (a5)
    {
      v22 = 0;
    }

    else
    {
      v22 = 0;
      if (*(v15 + 47))
      {
        v40 = *(*(v15 + 432) + 48);
        if (!v40 || (v41 = APReceiverRequestProcessorCopyReceiverSession(v40)) == 0)
        {
          if (gLogCategory_APReceiverRequestProcessorAirPlay <= 90 && (gLogCategory_APReceiverRequestProcessorAirPlay != -1 || _LogCategory_Initialize()))
          {
            LogPrintF(&gLogCategory_APReceiverRequestProcessorAirPlay, "OSStatus airplayReqProcessor_requestCreateSession(APReceiverRequestProcessorRef, Boolean, Boolean, Boolean, Boolean, Boolean, CFStringRef)", 33554522, "[%{ptr}] Unable to create session. No active persistent connection", a1);
          }

          return 4294960587;
        }

        v21 = v41;
        v44 = AirPlayReceiverSessionCopyProperty(v41, v42, @"networkClock", v43, 0);
        if (!v44)
        {
          if (gLogCategory_APReceiverRequestProcessorAirPlay <= 90 && (gLogCategory_APReceiverRequestProcessorAirPlay != -1 || _LogCategory_Initialize()))
          {
            LogPrintF(&gLogCategory_APReceiverRequestProcessorAirPlay, "OSStatus airplayReqProcessor_requestCreateSession(APReceiverRequestProcessorRef, Boolean, Boolean, Boolean, Boolean, Boolean, CFStringRef)", 33554522, "[%{ptr}] Unable to create session. No shared persistent clock", a1);
          }

          v70 = 4294960587;
          goto LABEL_104;
        }

        v22 = v44;
        *(&v91 + 1) = v44;
      }
    }
  }

  v74 = a1;
  LODWORD(v86) = *(v15 + 128);
  WORD2(v86) = *(v15 + 132);
  strncpy(&v87 + 4, (v15 + 332), 0x11uLL);
  v23 = *(*v15 + 88);
  v24 = mach_absolute_time();
  v78 = a7;
  v79 = v21;
  if (gAirPlayReceiverSessionInitOnce != -1)
  {
    dispatch_once_f(&gAirPlayReceiverSessionInitOnce, 0, _GetTypeID_6322);
  }

  Instance = _CFRuntimeCreateInstance();
  if (!Instance)
  {
    APSLogErrorAt();
    v70 = 4294960568;
    _Cleanup(0, 4294960568);
    goto LABEL_110;
  }

  v26 = Instance;
  bzero((Instance + 24), 0x2F0uLL);
  *(v26 + 16) = v23;
  dispatch_retain(v23);
  CFRetain(v16);
  *(v26 + 24) = v16;
  *(v26 + 32) = *(&v88 + 1);
  *(v26 + 192) = v84;
  v27 = v85;
  v28 = *(*(&v84 + 1) + 12);
  *(v26 + 196) = **(&v84 + 1);
  *(v26 + 208) = v28;
  v29 = *v27;
  *(v26 + 236) = *(v27 + 12);
  *(v26 + 224) = v29;
  UUIDGet();
  *(v26 + 268) = -6718;
  v30 = *(&v86 + 1);
  *(v26 + 272) = *(&v85 + 1);
  *(v26 + 328) = v30;
  *(v26 + 336) = v87;
  *(v26 + 40) = cf[0];
  *(v26 + 682) = WORD4(v90);
  *(v26 + 681) = BYTE10(v90);
  *(v26 + 684) = BYTE11(v90);
  if (v91)
  {
    v31 = v91;
  }

  else
  {
    v31 = @"NTP";
  }

  *(v26 + 672) = CFRetain(v31);
  v32 = *(&v91 + 1);
  if (*(&v91 + 1))
  {
    v32 = CFRetain(*(&v91 + 1));
  }

  *(v26 + 448) = v32;
  *(v26 + 280) = v86;
  *(v26 + 284) = WORD2(v86);
  __strlcpy_chk();
  *(v26 + 424) = BYTE5(v88);
  *(v26 + 344) = v24;
  *(v26 + 457) = BYTE6(v88);
  *(v26 + 476) = -1;
  *(v26 + 484) = v92;
  v33 = *MEMORY[0x277CBECE8];
  *(v26 + 568) = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  v34 = v16[28];
  *(v26 + 592) = v34;
  if (v34)
  {
    CFRetain(v34);
  }

  v35 = cf[1];
  *(v26 + 600) = cf[1];
  if (v35)
  {
    CFRetain(v35);
    v36 = *(v26 + 600);
    if (v36)
    {
      if (!*(v26 + 592))
      {
        v51 = *(*(CMBaseObjectGetVTable() + 8) + 48);
        if (v51)
        {
          v51(v36, @"SBufConsumer", v33, v26 + 592);
        }
      }
    }
  }

  PropertyInt64Sync = CFObjectGetPropertyInt64Sync();
  if (PropertyInt64Sync >= 1)
  {
    v38 = PropertyInt64Sync;
  }

  else
  {
    v38 = 30;
  }

  *(v26 + 560) = CFObjectGetPropertyInt64Sync() != 0;
  *(v26 + 754) = APSSettingsIsFeatureEnabled();
  v39 = UpTicksPerSecond();
  *(v26 + 556) = v38;
  *(v26 + 552) = v38;
  *(v26 + 512) = v24;
  *(v26 + 520) = v39 * v38;
  *(v26 + 528) = v24;
  *(v26 + 544) = 10 * v39;
  if (*(v26 + 683))
  {
    APSSettingsGetInt64();
    APSSettingsGetInt64();
    APSSettingsGetInt64();
    SocketSetKeepAliveEx();
    goto LABEL_83;
  }

  v82 = 0;
  v45 = *(*(v26 + 24) + 16);
  v46 = objc_alloc_init(AirPlayReceiverContext);
  if (!v46)
  {
    APSLogErrorAt();
    v72 = -6728;
    goto LABEL_118;
  }

  v47 = v46;
  v46->_session = v26;
  v46->_queue = *(v26 + 16);
  CFObjectGetPropertyDoubleSync();
  APSVolumeConvertDBToClampedSliderValue();
  v48 = 0;
  v47->_state.outputVolume = v49;
  *(v26 + 712) = v49;
  *(v26 + 48) = v47;
  if (*(*(v26 + 24) + 256))
  {
    goto LABEL_44;
  }

  if (!*(v45 + 160))
  {
    v52 = *(v45 + 168);
    if (v52)
    {
      v48 = 0;
      v47->_mediaRemoteHelper = v52;
      goto LABEL_44;
    }

    APSLogErrorAt();
    v72 = -6709;
LABEL_118:
    v82 = v72;
    goto LABEL_82;
  }

  memset(cStr, 0, sizeof(cStr));
  UUIDtoCString();
  v48 = CFStringCreateWithCString(v33, cStr, 0x8000100u);
  if (!v48)
  {
    goto LABEL_119;
  }

  v50 = [[AirPlayReceiverMediaRemoteHelper alloc] initWithPlayerID:v48 withSystemInfo:*(*(v26 + 24) + 160) withReceiverServer:?];
  v47->_mediaRemoteHelper = v50;
  if (!v50)
  {
    goto LABEL_119;
  }

  [(AirPlayReceiverMediaRemoteHelper *)v50 makeNowPlayingPlayer];
LABEL_44:
  if (!*(*(v26 + 24) + 249) || !*(v26 + 600) || v47->_receiverUIStarted)
  {
    goto LABEL_63;
  }

  v81 = 0;
  Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (!Mutable)
  {
LABEL_119:
    APSLogErrorAt();
    v82 = -6728;
    goto LABEL_79;
  }

  v54 = Mutable;
  CFDictionarySetNumber();
  v81 = 0;
  v55 = *(v26 + 600);
  v56 = *(*(CMBaseObjectGetVTable() + 16) + 72);
  if (v56)
  {
    v57 = v56(v55, v54, &v81);
  }

  else
  {
    v57 = -12782;
  }

  v82 = v57;
  CFRelease(v54);
  if (v82)
  {
    goto LABEL_79;
  }

  cStr[0] = *(v26 + 196);
  *(cStr + 12) = *(v26 + 208);
  APSNetworkAddressCreateWithSocketAddr();
  v58 = *(v26 + 600);
  v59 = *(*(CMBaseObjectGetVTable() + 8) + 56);
  if (v59)
  {
    v60 = v59(v58, @"SessionReceiverAddress", 0);
  }

  else
  {
    v60 = -12782;
  }

  v82 = v60;
  if (v60)
  {
    APSLogErrorAt();
    goto LABEL_79;
  }

  if (v81)
  {
    v47->_receiverUISessionID = CFDictionaryGetInt64();
    CFRelease(v81);
  }

  else
  {
    v47->_receiverUISessionID = 0;
  }

  v47->_receiverUIStarted = 1;
  CMNotificationCenterGetDefaultLocalCenter();
  CMNotificationCenterAddListener();
LABEL_63:
  v82 = IOPMAssertionCreateWithName(@"PreventUserIdleSystemSleep", 0xFFu, @"com.apple.airplay.audio", &v47->_powerAssertion);
  if (gLogCategory_AirPlayReceiverPlatform <= 40 && (gLogCategory_AirPlayReceiverPlatform != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_AirPlayReceiverPlatform, "OSStatus AirPlayReceiverSessionPlatformInitialize(AirPlayReceiverSessionRef)", 33554472, "Preventing idle sleep on audio start\n");
  }

  v82 = 0;
  dispatch_time(0, 5000000000);
  v61 = APSAudioIOAssertionUntilTime();
  v82 = v61;
  if (v61)
  {
    if (gLogCategory_AirPlayReceiverPlatform <= 50)
    {
      if (gLogCategory_AirPlayReceiverPlatform == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_72;
        }

        v61 = v82;
      }

      LogPrintF(&gLogCategory_AirPlayReceiverPlatform, "OSStatus AirPlayReceiverSessionPlatformInitialize(AirPlayReceiverSessionRef)", 33554482, "Hit error %d while trying to pre-warm audio hardware\n", v61);
    }

LABEL_72:
    v82 = 0;
  }

  if (APSMultiPrimariesEnabled())
  {
    if (!*(v26 + 683))
    {
      startNowPlayingSessionTask = objc_alloc_init(MEMORY[0x277CE9F20]);
      v47->_startNowPlayingSessionTask = startNowPlayingSessionTask;
      if (gLogCategory_AirPlayReceiverPlatform <= 50)
      {
        if (gLogCategory_AirPlayReceiverPlatform != -1)
        {
LABEL_77:
          LogPrintF(&gLogCategory_AirPlayReceiverPlatform, "OSStatus AirPlayReceiverSessionPlatformInitialize(AirPlayReceiverSessionRef)", 33554482, "[%{ptr}] created startNowPlayingSessionTask [%{ptr}]", v26, startNowPlayingSessionTask);
          goto LABEL_79;
        }

        if (_LogCategory_Initialize())
        {
          startNowPlayingSessionTask = v47->_startNowPlayingSessionTask;
          goto LABEL_77;
        }
      }
    }
  }

LABEL_79:
  if (v48)
  {
    CFRelease(v48);
  }

  if (!v82)
  {
LABEL_83:
    v64 = *(v26 + 72);
    if (v64 && (v80 = v64(v26, *(v26 + 56))) != 0)
    {
      APSLogErrorAt();
      v63 = v80;
    }

    else
    {
      *(v26 + 688) = 0;
      v65 = CFDictionaryCreateMutable(v33, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
      *(v26 + 696) = v65;
      if (v65)
      {
        v66 = CFDictionaryCreateMutable(v33, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
        *(v26 + 736) = v66;
        if (v66)
        {
          v67 = CFSetCreateMutable(v33, 0, MEMORY[0x277CBF158]);
          *(v26 + 744) = v67;
          if (v67)
          {
            if (gLogCategory_AirPlayReceiverCore <= 30 && (gLogCategory_AirPlayReceiverCore != -1 || _LogCategory_Initialize()))
            {
              LogPrintF(&gLogCategory_AirPlayReceiverCore, "OSStatus AirPlayReceiverSessionCreate(AirPlayReceiverSessionRef *, const AirPlayReceiverSessionCreateParams *, dispatch_queue_t)", 33554462, "Created session [%{ptr}]\n", v26);
            }

            *(v15 + 32) = v26;
LABEL_93:
            v21 = v79;
            if (gLogCategory_APReceiverRequestProcessorAirPlay <= 50 && (gLogCategory_APReceiverRequestProcessorAirPlay != -1 || _LogCategory_Initialize()))
            {
              v68 = "yes";
              if (!v22)
              {
                v68 = "no";
              }

              v73 = v68;
              v69 = 89;
              if (!v75)
              {
                v69 = 78;
              }

              LogPrintF(&gLogCategory_APReceiverRequestProcessorAirPlay, "OSStatus airplayReqProcessor_requestCreateSession(APReceiverRequestProcessorRef, Boolean, Boolean, Boolean, Boolean, Boolean, CFStringRef)", 33554482, "[%{ptr}] Created session [%{ptr}] (RO=%d TS=%d PC=%c SAI=%d TP=%@ SC=%s)\n", v74, *(v15 + 32), a3, v77, v69, v76, v78, v73);
            }

            v70 = 0;
            if (v22)
            {
              goto LABEL_102;
            }

            goto LABEL_103;
          }
        }
      }

      APSLogErrorAt();
      v63 = 4294960568;
      v80 = -6728;
    }

    goto LABEL_113;
  }

LABEL_82:
  _AirPlayReceiverSessionPlatformInvalidate(v26);
  v63 = v82;
  v80 = v82;
  if (!v82)
  {
    goto LABEL_83;
  }

  APSLogErrorAt();
LABEL_113:
  _Cleanup(v26, v63);
  CFRelease(v26);
  v70 = v80;
  if (!v80)
  {
    goto LABEL_93;
  }

LABEL_110:
  APSLogErrorAt();
  v21 = v79;
  if (v22)
  {
LABEL_102:
    CFRelease(v22);
  }

LABEL_103:
  if (v21)
  {
LABEL_104:
    CFRelease(v21);
  }

  return v70;
}

void airplayReqProcessor_copyParentGroupInfoFromSetupRequest(uint64_t a1, const __CFDictionary *a2, __CFDictionary **a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  Int64 = CFDictionaryGetInt64();
  v8 = CFDictionaryGetInt64();
  CFStringGetTypeID();
  TypedValue = CFDictionaryGetTypedValue();
  Value = CFDictionaryGetValue(a2, @"uglServerInfo");
  v11 = CFDictionaryGetInt64();
  if (gLogCategory_APReceiverRequestProcessorAirPlay <= 50 && (gLogCategory_APReceiverRequestProcessorAirPlay != -1 || _LogCategory_Initialize()))
  {
    v12 = "yes";
    if (Int64)
    {
      v13 = "yes";
    }

    else
    {
      v13 = "no";
    }

    if (!v8)
    {
      v12 = "no";
    }

    LogPrintF(&gLogCategory_APReceiverRequestProcessorAirPlay, "void airplayReqProcessor_copyParentGroupInfoFromSetupRequest(APReceiverRequestProcessorRef, CFDictionaryRef, CFDictionaryRef *)", 33554482, "[%{ptr}] Multi-Select: %s, ParentSupportsRelay: %s, ParentGroupID: %@\n", a1, v13, v12, TypedValue);
  }

  if (Int64 && v8 && TypedValue)
  {
    v14 = *MEMORY[0x277CBECE8];
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    if (Mutable)
    {
      v16 = Mutable;
      CFDictionarySetValue(Mutable, @"groupUUID", TypedValue);
      FigCFDictionarySetValueFromKeyInDict();
      v17 = *MEMORY[0x277CBED28];
      v18 = *MEMORY[0x277CBED10];
      CFDictionarySetValue(v16, @"senderSupportsRelay", *MEMORY[0x277CBED28]);
      if (v11)
      {
        v19 = v17;
      }

      else
      {
        v19 = v18;
      }

      CFDictionarySetValue(v16, @"supportsGroupCohesion", v19);
      if (!*(*DerivedStorage + 258))
      {
        *a3 = v16;
        return;
      }

      v20 = CMBaseObjectGetDerivedStorage();
      if (!Value)
      {
        MutableCopy = 0;
LABEL_36:
        if (gLogCategory_APReceiverRequestProcessorAirPlay <= 50 && (gLogCategory_APReceiverRequestProcessorAirPlay != -1 || _LogCategory_Initialize()))
        {
          v26 = FigCFDictionaryGetValue();
          LogPrintF(&gLogCategory_APReceiverRequestProcessorAirPlay, "void airplayReqProcessor_copyParentGroupInfoFromSetupRequest(APReceiverRequestProcessorRef, CFDictionaryRef, CFDictionaryRef *)", 33554482, "[%{ptr}] <APUGLPort> UGLServerInfo in Setup request: port %@\n", a1, v26);
        }

        FigCFDictionarySetValue();
        *a3 = v16;
        if (MutableCopy)
        {

          CFRelease(MutableCopy);
        }

        return;
      }

      v21 = v20;
      CFArrayGetTypeID();
      v22 = CFDictionaryGetTypedValue();
      if (gLogCategory_APReceiverRequestProcessorAirPlay <= 50 && (gLogCategory_APReceiverRequestProcessorAirPlay != -1 || _LogCategory_Initialize()))
      {
        LogPrintF(&gLogCategory_APReceiverRequestProcessorAirPlay, "CFDictionaryRef airplayReqProcessor_copyUGLInfoWithUpdatedAddresses(APReceiverRequestProcessorRef, CFDictionaryRef)", 33554482, "[%{ptr}] <APUGL> Converting addresses if IPv6 link local: %@\n", a1, v22);
      }

      v24 = CFStringCreateWithCString(v14, (v21 + 332), 0x8000100u);
      v25 = APSNetworkCopyConvertedLinkLocalIPv6Addresses();
      if (v25)
      {
        if (gLogCategory_APReceiverRequestProcessorAirPlay <= 50 && (gLogCategory_APReceiverRequestProcessorAirPlay != -1 || _LogCategory_Initialize()))
        {
          LogPrintF(&gLogCategory_APReceiverRequestProcessorAirPlay, "CFDictionaryRef airplayReqProcessor_copyUGLInfoWithUpdatedAddresses(APReceiverRequestProcessorRef, CFDictionaryRef)", 33554482, "[%{ptr}] <APUGL> Converted addresses: %@\n", a1, v25);
        }

        MutableCopy = FigCFDictionaryCreateMutableCopy();
        FigCFDictionarySetValue();
        if (!v24)
        {
          goto LABEL_34;
        }
      }

      else
      {
        MutableCopy = 0;
        if (!v24)
        {
LABEL_34:
          if (v25)
          {
            CFRelease(v25);
          }

          goto LABEL_36;
        }
      }

      CFRelease(v24);
      goto LABEL_34;
    }

    APSLogErrorAt();
  }
}

uint64_t APReceiverRequestProcessorHijackAndBecomeMainSession(const void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 40) == 2)
  {
    v3 = DerivedStorage;
    APReceiverSessionManagerSetAsMainAirPlaySession(*(DerivedStorage + 432), a1);
    APReceiverSessionManagerHijack(*(v3 + 432), a1);
    return 0;
  }

  else
  {
    APSLogErrorAt();
    return 4294895346;
  }
}

void airplayReqProcessor_reportPerfMetricsIfNeeded(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!*(DerivedStorage + 585))
  {
    v3 = DerivedStorage;
    *(DerivedStorage + 585) = 1;
    if (*(DerivedStorage + 584))
    {
      if (*(DerivedStorage + 576))
      {
        v4 = "succeeded";
      }

      else
      {
        *(DerivedStorage + 576) = mach_absolute_time();
        v4 = "terminated";
      }

      v5 = UpTicksToMilliseconds();
      if (*(v3 + 588))
      {
        v4 = "failed";
      }

      v6 = UpTicksToMilliseconds();
      if (gLogCategory_APReceiverRequestProcessorAirPlay <= 50 && (gLogCategory_APReceiverRequestProcessorAirPlay != -1 || _LogCategory_Initialize()))
      {
        LogPrintF(&gLogCategory_APReceiverRequestProcessorAirPlay, "OSStatus airplayReqProcessor_reportPerfMetricsIfNeeded(APReceiverRequestProcessorRef)", 33554482, "[%{ptr}] Activation from %##a %s, duration: %llu ms (pair-setup: %llu ms (%llu calls), pair-verify-HK: %llu ms (%llu calls), pair-verify-AO: %llu ms (%llu calls), pair-verify-System: %llu ms (%llu calls), pair-verify-Other: %llu ms (%llu calls), add session: %llu ms (nowPlayingSession: %llu ms), start clock: %llu ms), overall duration: %llu ms%?{end}, err: %#m\n", a1, v3 + 276, v4, v6, *(v3 + 472), *(v3 + 464), *(v3 + 488), *(v3 + 480), *(v3 + 504), *(v3 + 496), *(v3 + 520), *(v3 + 512), *(v3 + 536), *(v3 + 528), *(v3 + 544), *(v3 + 552), *(v3 + 560), v5, *(v3 + 588) == 0, *(v3 + 588));
      }

      Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
      if (Mutable)
      {
        v8 = Mutable;
        CFDictionarySetCString();
        CFDictionarySetInt64();
        CFDictionarySetInt64();
        CFDictionarySetInt64();
        CFDictionarySetInt64();
        CFDictionarySetInt64();
        CFDictionarySetInt64();
        CFDictionarySetInt64();
        CFDictionarySetInt64();
        CFDictionarySetInt64();
        CFDictionarySetInt64();
        CFDictionarySetInt64();
        CFDictionarySetInt64();
        CFDictionarySetInt64();
        CFDictionarySetInt64();
        CFDictionarySetInt64();
        if (*(v3 + 588))
        {
          CFDictionarySetInt64();
        }

        v9 = *(v3 + 592);
        if (v9)
        {
          CFDictionarySetValue(v8, @"lastControlMessageType", v9);
          CFDictionarySetInt64();
        }

        v10 = APSIsWHAParallelSetupProcessingEnabled();
        v11 = MEMORY[0x277CBED28];
        if (!v10)
        {
          v11 = MEMORY[0x277CBED10];
        }

        CFDictionarySetValue(v8, @"parallelSetupProcessingEnabled", *v11);
        APSRTCReportingAgentSendEvent();

        CFRelease(v8);
      }

      else
      {

        APSLogErrorAt();
      }
    }
  }
}

void APReceiverRequestProcessorSendSystemInfoUpdate(uint64_t a1, const __CFDictionary *a2)
{
  v4 = *(CMBaseObjectGetDerivedStorage() + 32);
  value = 0;
  if (v4)
  {
    if (a2)
    {
      if (*(v4 + 336) < 0x37C684u)
      {
        v6 = 0;
        goto LABEL_9;
      }

      if (!airplayReqProcessor_createSessionInfoDict(a1, a2, &value))
      {
        Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
        if (Mutable)
        {
          v6 = Mutable;
          CFDictionarySetValue(Mutable, @"type", @"updateInfo");
          CFDictionarySetValue(v6, @"value", value);
          if (AirPlayReceiverSessionSendCommandForObject(v4, 0, v6, 0, 0))
          {
            APSLogErrorAt();
LABEL_14:
            CFRelease(v6);
            goto LABEL_15;
          }

LABEL_9:
          if (gLogCategory_APReceiverRequestProcessorAirPlay <= 50 && (gLogCategory_APReceiverRequestProcessorAirPlay != -1 || _LogCategory_Initialize()))
          {
            LogPrintF(&gLogCategory_APReceiverRequestProcessorAirPlay, "OSStatus APReceiverRequestProcessorSendSystemInfoUpdate(APReceiverRequestProcessorRef, CFDictionaryRef)", 33554482, "[%{ptr}] Sent system info update.\n", a1);
          }

          if (!v6)
          {
            goto LABEL_15;
          }

          goto LABEL_14;
        }
      }
    }

    APSLogErrorAt();
LABEL_15:
    if (value)
    {
      CFRelease(value);
    }

    return;
  }

  APSLogErrorAt();
}

uint64_t airplayReqProcessor_Stop(void *a1, const __CFString *a2, uint64_t *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v24 = 0;
  if (gLogCategory_APReceiverRequestProcessorAirPlay <= 50 && (gLogCategory_APReceiverRequestProcessorAirPlay != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APReceiverRequestProcessorAirPlay, "OSStatus airplayReqProcessor_Stop(APReceiverRequestProcessorRef, CFStringRef, void **)", 33554482, "[%{ptr}] Stop due to %@, connection [%{ptr}]\n", a1, a2, *(DerivedStorage + 16));
  }

  if (*(DerivedStorage + 8) && (*(DerivedStorage + 45) || *(DerivedStorage + 44)))
  {
    v7 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"AirPlay disconnected\n%s\n", DerivedStorage + 134);
    v8 = *(DerivedStorage + 8);
    v9 = *(*(CMBaseObjectGetVTable() + 16) + 24);
    if (v9)
    {
      v9(v8, 30, v7);
    }

    CFRelease(v7);
  }

  if (!a2 || CFStringCompare(a2, @"HTTPConnectionClose", 1uLL))
  {
    goto LABEL_13;
  }

  airplayReqProcessor_GetMCRPForMCSession(a1, 0, &v24);
  if (v24 && CFObjectGetInt64())
  {
    if (!CFObjectGetInt64())
    {
      goto LABEL_33;
    }

    v15 = 4294895362;
    v17 = *a3;
    v18 = v24;
    v19 = *(*(CMBaseObjectGetVTable() + 16) + 48);
    if (v19)
    {
      v20 = v19(v18, v17);
      if (!v20)
      {
        *(v17 + 16) = 0;
LABEL_33:
        CFObjectSetValue();
        v22 = (DerivedStorage + 104);
        v21 = *(DerivedStorage + 104);
        if (!v21)
        {
          goto LABEL_13;
        }

        goto LABEL_37;
      }

      v15 = v20;
    }

    APSLogErrorAt();
    return v15;
  }

  v22 = (DerivedStorage + 104);
  v23 = *(DerivedStorage + 104);
  if (!v23)
  {
    goto LABEL_13;
  }

  CFDictionaryApplyFunction(v23, airplayReqProcessor_tearDownMCRPDictionaryEntry, a1);
  v21 = *v22;
  if (!*v22)
  {
    goto LABEL_13;
  }

LABEL_37:
  CFRelease(v21);
  *v22 = 0;
LABEL_13:
  if (*(DerivedStorage + 32))
  {
    Count = FigCFDictionaryGetCount();
    v11 = *(DerivedStorage + 32);
    v12 = 4294960543;
    if (!Count)
    {
      if (*(v11 + 616))
      {
        v12 = 4294960543;
      }

      else
      {
        v12 = 0;
      }
    }

    if (!*(DerivedStorage + 45) && !*(DerivedStorage + 44))
    {
      v12 = 0;
    }

    AirPlayReceiverSessionTearDown(v11, 0, v12, 0);
    v13 = *(DerivedStorage + 32);
    if (v13)
    {
      CFRelease(v13);
      *(DerivedStorage + 32) = 0;
    }

    v14 = *(DerivedStorage + 448);
    if (v14)
    {
      CFRelease(v14);
      *(DerivedStorage + 448) = 0;
    }
  }

  airplayReqProcessor_registerPlaybackStateWithServerIfNeeded(a1, 0);
  airplayReqProcessor_deregisterReqProcWithSessionManagerIfNeeded(a1);
  return 0;
}

uint64_t airplayReqProcessor_tearDownMCRPDictionaryEntry(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (gLogCategory_APReceiverRequestProcessorAirPlay <= 50 && (gLogCategory_APReceiverRequestProcessorAirPlay != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APReceiverRequestProcessorAirPlay, "void airplayReqProcessor_tearDownMCRPDictionaryEntry(const void *, const void *, void *)", 33554482, "[%{ptr}] Tearing down MCContext for token: %@\n", a3, a1);
  }

  if (!a2 || !a3 || (result = airplayReqProcessor_tearDownMediaControlRequestProcessor(a3, a2), result))
  {

    return APSLogErrorAt();
  }

  return result;
}

uint64_t airplayReqProcessor_tearDownMediaControlRequestProcessor(uint64_t a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!DerivedStorage)
  {
    APSLogErrorAt();
    return -71951;
  }

  v4 = DerivedStorage;
  CFObjectGetBytes();
  v5 = *(*(CMBaseObjectGetVTable() + 16) + 16);
  if (!v5)
  {
    v10 = -12782;
    goto LABEL_8;
  }

  v10 = v5(a2, 0, 0);
  if (v10)
  {
LABEL_8:
    APSLogErrorAt();
    return v10;
  }

  v6 = *v4;
  if (*(*v4 + 192))
  {
    v7 = UUIDtoCString();
    v8 = CFStringCreateWithCString(0, v7, 0x8000100u);
    CFDictionaryRemoveValue(*(v6 + 192), v8);
    if (v8)
    {
      CFRelease(v8);
    }
  }

  return v10;
}

uint64_t APReceiverRequestProcessorSetProperty_4504(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(*(CMBaseObjectGetVTable() + 16) + 72);
  if (!v6)
  {
    return 4294954514;
  }

  return v6(a1, a2, a3);
}

void airplayReqProcessor_Finalize(void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APReceiverRequestProcessorAirPlay <= 30 && (gLogCategory_APReceiverRequestProcessorAirPlay != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APReceiverRequestProcessorAirPlay, "void airplayReqProcessor_Finalize(CMBaseObjectRef)", 33554462, "%{ptr} finalizing\n", a1);
  }

  airplayReqProcessor_Stop(a1, 0, 0);
  airplayReqProcessor_reportPerfMetricsIfNeeded(a1);
  v3 = *(DerivedStorage + 448);
  if (v3)
  {
    CFRelease(v3);
    *(DerivedStorage + 448) = 0;
  }

  v4 = *(DerivedStorage + 456);
  if (v4)
  {
    CFRelease(v4);
    *(DerivedStorage + 456) = 0;
  }

  v5 = *(DerivedStorage + 592);
  if (v5)
  {
    CFRelease(v5);
    *(DerivedStorage + 592) = 0;
  }

  for (i = 0; i != 16; ++i)
  {
    *(DerivedStorage + 48 + i) = 0;
  }

  for (j = 0; j != 16; ++j)
  {
    *(DerivedStorage + 64 + j) = 0;
  }

  v8 = *(DerivedStorage + 400);
  if (v8)
  {
    CFRelease(v8);
    *(DerivedStorage + 400) = 0;
  }

  v9 = *(DerivedStorage + 104);
  if (v9)
  {
    CFRelease(v9);
    *(DerivedStorage + 104) = 0;
  }

  if (*(DerivedStorage + 384))
  {
    IPaI1oem5iL();
    *(DerivedStorage + 384) = 0;
  }

  *(DerivedStorage + 392) = 0;
  v10 = *(DerivedStorage + 8);
  if (v10)
  {
    CFRelease(v10);
    *(DerivedStorage + 8) = 0;
  }
}

const void *APReceiverRequestProcessorCopyReceiverSession(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  result = *(DerivedStorage + 32);
  if (result)
  {
    CFRetain(result);
    return *(DerivedStorage + 32);
  }

  return result;
}

uint64_t _AirTunesClock_RegisterClass()
{
  gAirTunesClockClass = 0;
  *algn_27E37EDF8 = "AirTunesClock";
  qword_27E37EE00 = _AirTunesClock_Init;
  unk_27E37EE08 = 0;
  qword_27E37EE10 = _AirTunesClock_Finalize;
  unk_27E37EE18 = 0;
  qword_27E37EE20 = 0;
  unk_27E37EE28 = 0;
  qword_27E37EE30 = _AirTunesClock_CopyDebugDescription;
  result = _CFRuntimeRegisterClass();
  gAirTunesClockTypeID = result;
  return result;
}

pthread_mutex_t *_AirTunesClock_Finalize(uint64_t a1)
{
  *(a1 + 224) = 0;
  if (*(a1 + 144))
  {
    pthread_join(*(a1 + 136), 0);
    *(a1 + 144) = 0;
  }

  result = *(a1 + 216);
  if (result)
  {
    result = pthread_mutex_destroy(result);
    *(a1 + 216) = 0;
  }

  return result;
}

double _AirTunesClock_Init(uint64_t a1)
{
  *(a1 + 224) = 0;
  result = 0.0;
  *(a1 + 192) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  return result;
}

uint64_t _AirTunesClock_Thread(uint64_t a1)
{
  pthread_setname_np("AirPlayClock");
  while (*(a1 + 224))
  {
    _AirTunesClock_Tick(a1);
    usleep(0x2710u);
  }

  return 0;
}

uint64_t _AirTunesClock_Tick(uint64_t a1)
{
  pthread_mutex_lock(*(a1 + 216));
  v2 = mach_absolute_time();
  v3 = (v2 - *(a1 + 80));
  *(a1 + 80) = v2;
  v4 = *(a1 + 72) * v3;
  v5 = *(a1 + 40);
  v6 = *(a1 + 32);
  v7 = __CFADD__(v5, v4);
  v8 = v5 + v4;
  *(a1 + 40) = v8;
  if (v7)
  {
    *(a1 + 32) = ++v6;
  }

  v9 = *(a1 + 36);
  v10 = *(a1 + 24);
  v11 = v10 + v8;
  v12 = v6 + __CFADD__(v10, v8) + *(a1 + 16);
  if (v12 > *(a1 + 48))
  {
    v13 = *(a1 + 104);
    v14 = *(a1 + 112);
    if (v13 < 0)
    {
      v15 = -(-v13 >> 4);
    }

    else
    {
      v15 = v13 >> 4;
    }

    *(a1 + 104) = v13 - v15;
    v17 = v14 + v15;
    v16 = ((v14 + v15) < 0) ^ __OFADD__(v14, v15);
    *(a1 + 120) = v14 + v15;
    *(a1 + 88) = v14 + v15;
    v18 = v14 + v15 + 1023;
    if (v16)
    {
      v17 = v18;
    }

    v19 = (2199 * (v17 >> 10)) ^ 0x8000000000000000;
    v20 = *(a1 + 64);
    v21 = 2 * (v19 / v20);
    *(a1 + 72) = v21;
    if (gLogCategory_AirTunesClock <= 10)
    {
      if (gLogCategory_AirTunesClock != -1)
      {
LABEL_12:
        LogPrintF(&gLogCategory_AirTunesClock, "void _AirTunesClock_Tick(AirTunesClockRef)", 33554442, "frequency %llu scale %llu actual %llu\n", v20, v21, 0xFFFFFFFFFFFFFFFFLL / v21);
        goto LABEL_14;
      }

      if (_LogCategory_Initialize())
      {
        v20 = *(a1 + 64);
        v21 = *(a1 + 72);
        goto LABEL_12;
      }
    }
  }

LABEL_14:
  *(a1 + 128) = v12;
  *(a1 + 48) = v12;
  *(a1 + 52) = v9;
  *(a1 + 56) = v11;
  v22 = *(a1 + 216);

  return pthread_mutex_unlock(v22);
}

uint64_t AirTunesClock_Adjust(uint64_t a1, unint64_t a2, int a3)
{
  if (gLogCategory_AirTunesClock <= 10 && (gLogCategory_AirTunesClock != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_AirTunesClock, "Boolean AirTunesClock_Adjust(AirTunesClockRef, int64_t, Boolean)", 33554442, "AirTunesClock_Adjust %lld %d\n", a2, a3);
  }

  pthread_mutex_lock(*(a1 + 216));
  if (!a3 && a2 - 100000001 > 0xFFFFFFFFF4143DFELL)
  {
    v6 = *(a1 + 100);
    v7 = *(a1 + 128);
    if (v6)
    {
      v8 = v7 - v6;
    }

    else
    {
      v8 = 0;
    }

    v9 = a2 << 20;
    if ((a2 & 0x80000000) != 0)
    {
      v9 = -((0xFFFFFFFF00000 * a2) & 0xFFFFFFFFFFFFFLL);
    }

    v10 = *(a1 + 112) + v9 * v8;
    *(a1 + 104) = a2 << 32;
    *(a1 + 112) = v10;
    *(a1 + 96) = a2;
    *(a1 + 100) = v7;
    if (v10 < 0)
    {
      v11 = -(-v10 >> 32);
    }

    else
    {
      v11 = HIDWORD(v10);
    }

    if (v11 <= 500000)
    {
      if (v10 > 0xFFF85EDF00000000)
      {
LABEL_22:
        pthread_mutex_unlock(*(a1 + 216));
        return 0;
      }

      v12 = 0xFFF85EE000000000;
    }

    else
    {
      v12 = 0x7A12000000000;
    }

    *(a1 + 112) = v12;
    goto LABEL_22;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    v17 = -a2 / 0x3B9ACA00uLL;
    v18 = 0x44B82FA09 * (-1000000000 * v17 - a2);
    v19 = *(a1 + 24);
    *(a1 + 24) = v19 - v18;
    v15 = *(a1 + 16) - (v19 < v18) - v17;
  }

  else
  {
    v13 = 0x44B82FA09 * (a2 % 0x3B9ACA00);
    v14 = *(a1 + 24);
    *(a1 + 24) = v14 + v13;
    v15 = *(a1 + 16) + __CFADD__(v14, v13) + (a2 / 0x3B9ACA00);
  }

  *(a1 + 16) = v15;
  pthread_mutex_unlock(*(a1 + 216));
  _AirTunesClock_Tick(a1);
  return 1;
}

uint64_t AirTunesClock_GetSynchronizedTime(uint64_t a1, int *a2)
{
  pthread_mutex_lock(*(a1 + 216));
  *a2 = *(a1 + 32);
  v4 = *(a1 + 72);
  v5 = v4 * (mach_absolute_time() - *(a1 + 80));
  v6 = *(a2 + 1);
  v7 = *a2;
  v8 = __CFADD__(v5, v6);
  v9 = v5 + v6;
  *(a2 + 1) = v9;
  if (v8)
  {
    *a2 = ++v7;
  }

  v10 = *(a1 + 24);
  *(a2 + 1) = v10 + v9;
  if (__CFADD__(v10, v9))
  {
    *a2 = ++v7;
  }

  *a2 = v7 + *(a1 + 16);
  v11 = *(a1 + 216);

  return pthread_mutex_unlock(v11);
}

uint64_t AirTunesClock_GetSynchronizedTimeNearUpTicks(uint64_t a1, int *a2, unint64_t a3)
{
  pthread_mutex_lock(*(a1 + 216));
  v6 = mach_absolute_time();
  v7 = v6;
  if (v6 >= a3)
  {
    v8 = v6 - a3;
  }

  else
  {
    v8 = a3 - v6;
  }

  *a2 = *(a1 + 32);
  v9 = *(a1 + 72);
  v10 = v9 * (v6 - *(a1 + 80));
  v11 = *(a2 + 1);
  v12 = *a2;
  v13 = __CFADD__(v10, v11);
  v14 = v10 + v11;
  *(a2 + 1) = v14;
  if (v13)
  {
    *a2 = ++v12;
  }

  v15 = *(a1 + 24);
  *(a2 + 1) = v15 + v14;
  if (__CFADD__(v15, v14))
  {
    *a2 = ++v12;
  }

  *a2 = v12 + *(a1 + 16);
  result = pthread_mutex_unlock(*(a1 + 216));
  v17 = *(a1 + 64);
  v18 = v8 / v17;
  v19 = v8 % v17 * v9;
  v20 = *(a2 + 1);
  v21 = v20 - v19;
  v22 = *a2 - (v20 < v19) - v18;
  v13 = __CFADD__(v20, v19);
  v23 = v20 + v19;
  v24 = *a2 + v13 + v18;
  if (v7 >= a3)
  {
    v23 = v21;
    v24 = v22;
  }

  *(a2 + 1) = v23;
  *a2 = v24;
  return result;
}

uint64_t APAdvertiserInfoGetTypeID()
{
  if (APAdvertiserInfoGetTypeID_initOnce != -1)
  {
    dispatch_once_f(&APAdvertiserInfoGetTypeID_initOnce, &APAdvertiserInfoGetTypeID_typeID, _APAdvertiserInfoClassRegister);
  }

  return APAdvertiserInfoGetTypeID_typeID;
}

uint64_t _APAdvertiserInfoClassRegister(uint64_t *a1)
{
  result = _CFRuntimeRegisterClass();
  *a1 = result;
  return result;
}

CFStringRef APAdvertiserInfoCopyDescription(uint64_t a1)
{
  pthread_mutex_lock((a1 + 16));
  v2 = CFCopyDescription(*(a1 + 80));
  pthread_mutex_unlock((a1 + 16));
  return v2;
}

uint64_t _APAdvertiserInfoCompare(uint64_t a1, uint64_t a2)
{
  if (a1 | a2)
  {
    if (a1 && a2)
    {
      v2 = *(a1 + 80);
      v3 = *(a2 + 80);

      return CFEqual(v2, v3);
    }

    else
    {
      APSLogErrorAt();
      return 0;
    }
  }

  else
  {
    APSLogErrorAt();
    return 1;
  }
}

uint64_t APAdvertiserInfoFinalize(uint64_t a1)
{
  v2 = *(a1 + 80);
  if (v2)
  {
    CFRelease(v2);
    *(a1 + 80) = 0;
  }

  return pthread_mutex_destroy((a1 + 16));
}

uint64_t APAdvertiserInfoCreate(uint64_t a1, void *a2)
{
  if (APAdvertiserInfoGetTypeID_initOnce != -1)
  {
    dispatch_once_f(&APAdvertiserInfoGetTypeID_initOnce, &APAdvertiserInfoGetTypeID_typeID, _APAdvertiserInfoClassRegister);
  }

  Instance = _CFRuntimeCreateInstance();
  if (Instance)
  {
    v4 = Instance;
    *(Instance + 16) = 0u;
    v5 = (Instance + 16);
    *(Instance + 80) = 0;
    *(Instance + 48) = 0u;
    *(Instance + 64) = 0u;
    *(Instance + 32) = 0u;
    *(Instance + 80) = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    v6 = pthread_mutex_init(v5, 0);
    if (v6)
    {
      APSLogErrorAt();
      CFRelease(v4);
    }

    else
    {
      *a2 = v4;
    }
  }

  else
  {
    APSLogErrorAt();
    return 4294960568;
  }

  return v6;
}

uint64_t APAdvertiserInfoCreateWithData(const __CFAllocator *a1, const __CFData *a2, void *a3)
{
  v3 = a2;
  v11 = 0;
  cf = 0;
  if (!a2)
  {
    APSLogErrorAt();
LABEL_13:
    v9 = 4294960591;
    goto LABEL_17;
  }

  if (!a3)
  {
    APSLogErrorAt();
    v3 = 0;
    goto LABEL_13;
  }

  v6 = APAdvertiserInfoCreate(a1, &cf);
  if (v6)
  {
    v9 = v6;
    APSLogErrorAt();
    v3 = 0;
  }

  else
  {
    v3 = CFPropertyListCreateWithData(a1, v3, 2uLL, &v11, 0);
    if (v3)
    {
      if (v11 == 200)
      {
        v7 = cf;
        v8 = *(cf + 10);
        if (v8)
        {
          CFRelease(v8);
        }

        v9 = 0;
        v7[10] = CFRetain(v3);
        *a3 = v7;
        cf = 0;
LABEL_9:
        CFRelease(v3);
        return v9;
      }

      APSLogErrorAt();
      v9 = 4294960579;
    }

    else
    {
      APSLogErrorAt();
      v9 = 4294960534;
    }
  }

LABEL_17:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v3)
  {
    goto LABEL_9;
  }

  return v9;
}

const void *APAdvertiserInfoCopyProperty(uint64_t a1, uint64_t a2, const void *a3, uint64_t a4, int *a5)
{
  v6 = a3;
  if (!a3)
  {
    APSLogErrorAt();
    v9 = -6705;
    if (!a5)
    {
      return v6;
    }

    goto LABEL_6;
  }

  pthread_mutex_lock((a1 + 16));
  Value = CFDictionaryGetValue(*(a1 + 80), v6);
  v6 = Value;
  if (Value)
  {
    CFRetain(Value);
    pthread_mutex_unlock((a1 + 16));
    v9 = 0;
    if (!a5)
    {
      return v6;
    }

    goto LABEL_6;
  }

  pthread_mutex_unlock((a1 + 16));
  v9 = -6727;
  if (a5)
  {
LABEL_6:
    *a5 = v9;
  }

  return v6;
}

uint64_t APAdvertiserInfoSetProperty(uint64_t a1, uint64_t a2, const void *a3, uint64_t a4, uint64_t a5)
{
  if (!a3)
  {
    APSLogErrorAt();
    return 4294960591;
  }

  pthread_mutex_lock((a1 + 16));
  if (CFEqual(a3, @"featuresEx"))
  {
    v8 = _APAdvertiserInfoSetFeaturesEx(*(a1 + 80), a5);
  }

  else
  {
    if (!CFEqual(a3, @"features"))
    {
      v12 = *(a1 + 80);
      if (a5)
      {
        CFDictionarySetValue(v12, a3, a5);
        a5 = 0;
      }

      else
      {
        CFDictionaryRemoveValue(v12, a3);
      }

      goto LABEL_13;
    }

    v9 = *(a1 + 80);
    valuePtr = 0;
    if (a5)
    {
      v10 = CFGetTypeID(a5);
      if (v10 != CFNumberGetTypeID())
      {
        APSLogErrorAt();
        a5 = 4294960591;
        goto LABEL_13;
      }

      CFNumberGetValue(a5, kCFNumberSInt64Type, &valuePtr);
      v11 = valuePtr;
    }

    else
    {
      v11 = 0;
    }

    v8 = _APAdvertiserInfoSetLegacyFeatures(v9, v11);
  }

  a5 = v8;
LABEL_13:
  pthread_mutex_unlock((a1 + 16));
  return a5;
}

uint64_t _APAdvertiserInfoSetFeaturesEx(CFMutableDictionaryRef theDict, CFTypeRef cf)
{
  v6 = 0;
  if (cf)
  {
    v4 = CFGetTypeID(cf);
    if (v4 != CFDataGetTypeID())
    {
      APSLogErrorAt();
      return -6705;
    }

    CFDictionarySetValue(theDict, @"featuresEx", cf);
    APSFeaturesGetLegacyFlags();
  }

  else
  {
    CFDictionaryRemoveValue(theDict, @"featuresEx");
  }

  CFDictionarySetInt64();
  return v6;
}

uint64_t _APAdvertiserInfoSetLegacyFeatures(const __CFDictionary *a1, uint64_t a2)
{
  CFDictionarySetInt64();
  if (CFDictionaryGetValue(a1, @"featuresEx"))
  {
    MutableCopy = APSFeaturesCreateMutableCopy();
  }

  else
  {
    MutableCopy = APSFeaturesCreateMutable();
  }

  v4 = MutableCopy;
  if (MutableCopy)
  {
    APSFeaturesSetLegacyFlags();
    CFDictionarySetValue(a1, @"featuresEx", v4);
    CFRelease(v4);
    return 0;
  }

  else
  {
    APSLogErrorAt();
    return 4294960568;
  }
}

uint64_t APAdvertiserInfoCreateData(uint64_t a1, CFDataRef *a2)
{
  pthread_mutex_lock((a1 + 16));
  if (a2)
  {
    v4 = CFGetAllocator(a1);
    Data = CFPropertyListCreateData(v4, *(a1 + 80), kCFPropertyListBinaryFormat_v1_0, 0, 0);
    if (Data)
    {
      v6 = 0;
      *a2 = Data;
    }

    else
    {
      APSLogErrorAt();
      v6 = 4294960534;
    }
  }

  else
  {
    APSLogErrorAt();
    v6 = 4294960591;
  }

  pthread_mutex_unlock((a1 + 16));
  return v6;
}

uint64_t APAdvertiserInfoCreateWithDeviceTXTRecordDataAndDeviceName(uint64_t a1, const __CFData *a2, uint64_t a3, uint64_t a4, const __CFString *a5, CFMutableDictionaryRef **a6)
{
  v37 = 0;
  v38 = 0;
  if (!a5 || !a2 && !a3 && !a4)
  {
    APSLogErrorAt();
    return 4294960591;
  }

  APAdvertiserInfoCreate(a1, &v38);
  v11 = v38;
  if (!v38)
  {
    APSLogErrorAt();
    return 4294960568;
  }

  _APAdvertiserInfoCopyAndRemoveMDNSLabelSuffix(a5, &v37);
  v12 = v37;
  if (v37)
  {
    v13 = v37;
  }

  else
  {
    v13 = a5;
  }

  CFDictionarySetValue(v11[10], @"deviceName", v13);
  if (!a2)
  {
    goto LABEL_75;
  }

  v41 = 0;
  value = 0;
  v40 = 0;
  v39 = 0;
  BitListValueFromTXTRecord = APAdvertiserInfoGetBitListValueFromTXTRecord(@"cn", a2, &v39);
  if (BitListValueFromTXTRecord)
  {
    v16 = BitListValueFromTXTRecord;
    APSLogErrorAt();
    if (gLogCategory_APAdvertiserInfo <= 40 && (gLogCategory_APAdvertiserInfo != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_APAdvertiserInfo, "OSStatus _APAdvertiserInfoAddRAOPData(APAdvertiserInfoRef, CFDataRef)", 33554472, "RAOP TXT record: CompressionTypes missing.\n", v37);
    }
  }

  else
  {
    CFDictionarySetInt64();
    BooleanFromTXTRecord = APSTXTRecordUtilsGetBooleanFromTXTRecord();
    if (BooleanFromTXTRecord != -6727)
    {
      v16 = BooleanFromTXTRecord;
      if (BooleanFromTXTRecord)
      {
        goto LABEL_71;
      }

      v17 = MEMORY[0x277CBED28];
      if (!v41)
      {
        v17 = MEMORY[0x277CBED10];
      }

      CFDictionarySetValue(v11[10], @"rfc2617DigestAuthKey", *v17);
    }

    v18 = APAdvertiserInfoGetBitListValueFromTXTRecord(@"et", a2, &v39);
    if (v18)
    {
      v16 = v18;
      APSLogErrorAt();
      if (gLogCategory_APAdvertiserInfo <= 40 && (gLogCategory_APAdvertiserInfo != -1 || _LogCategory_Initialize()))
      {
        LogPrintF(&gLogCategory_APAdvertiserInfo, "OSStatus _APAdvertiserInfoAddRAOPData(APAdvertiserInfoRef, CFDataRef)", 33554472, "RAOP TXT record: EncryptionTypes missing.\n", v37);
      }
    }

    else
    {
      CFDictionarySetInt64();
      Int64FromTXTRecord = APSTXTRecordUtilsGetInt64FromTXTRecord();
      if (Int64FromTXTRecord != -6727)
      {
        v16 = Int64FromTXTRecord;
        if (Int64FromTXTRecord)
        {
          goto LABEL_71;
        }

        v20 = _APAdvertiserInfoSetLegacyFeatures(v11[10], v40);
        if (v20)
        {
          v16 = v20;
          goto LABEL_71;
        }
      }

      v21 = APSTXTRecordUtilsCopyCFStringFromTXTRecord();
      if (v21 != -6727)
      {
        v16 = v21;
        if (v21)
        {
          goto LABEL_71;
        }

        CFDictionarySetValue(v11[10], @"firmwareVersion", value);
        if (value)
        {
          CFRelease(value);
          value = 0;
        }
      }

      v22 = APSTXTRecordUtilsGetInt64FromTXTRecord();
      if (v22 != -6727)
      {
        v16 = v22;
        if (v22)
        {
          goto LABEL_71;
        }

        CFDictionarySetInt64();
      }

      v23 = APAdvertiserInfoGetBitListValueFromTXTRecord(@"md", a2, &v39);
      if (v23 != -6727)
      {
        v16 = v23;
        if (v23)
        {
          goto LABEL_71;
        }

        CFDictionarySetInt64();
      }

      v24 = APSTXTRecordUtilsCopyCFStringFromTXTRecord();
      if (v24 != -6727)
      {
        v16 = v24;
        if (v24)
        {
          goto LABEL_71;
        }

        CFDictionarySetValue(v11[10], @"deviceModel", value);
        if (value)
        {
          CFRelease(value);
          value = 0;
        }
      }

      v25 = APSTXTRecordUtilsGetBooleanFromTXTRecord();
      if (v25 != -6727)
      {
        v16 = v25;
        if (v25)
        {
          goto LABEL_71;
        }

        v26 = MEMORY[0x277CBED28];
        if (!v41)
        {
          v26 = MEMORY[0x277CBED10];
        }

        CFDictionarySetValue(v11[10], @"password", *v26);
      }

      v27 = APSTXTRecordUtilsCopyCFStringFromTXTRecord();
      if (v27 != -6727)
      {
        v16 = v27;
        if (v27)
        {
          goto LABEL_71;
        }

        CFDictionarySetValue(v11[10], @"publicKey", value);
        if (value)
        {
          CFRelease(value);
          value = 0;
        }
      }

      v28 = APSTXTRecordUtilsCopyCFStringFromTXTRecord();
      if (v28)
      {
        v16 = v28;
        APSLogErrorAt();
        if (gLogCategory_APAdvertiserInfo <= 40 && (gLogCategory_APAdvertiserInfo != -1 || _LogCategory_Initialize()))
        {
          LogPrintF(&gLogCategory_APAdvertiserInfo, "OSStatus _APAdvertiserInfoAddRAOPData(APAdvertiserInfoRef, CFDataRef)", 33554472, "RAOP TXT record: TransportTypes missing.\n", v37);
        }
      }

      else
      {
        CFDictionarySetValue(v11[10], @"transportTypes", value);
        if (value)
        {
          CFRelease(value);
          value = 0;
        }

        v29 = APSTXTRecordUtilsCopyCFStringFromTXTRecord();
        if (!v29)
        {
          CFDictionarySetValue(v11[10], @"airTunesProtocolVersion", value);
          if (value)
          {
            CFRelease(value);
            value = 0;
          }

          v30 = APSTXTRecordUtilsCopyCFStringFromTXTRecord();
          if (v30 != -6727)
          {
            v16 = v30;
            if (v30)
            {
              goto LABEL_71;
            }

            CFDictionarySetValue(v11[10], @"airPlayVersion", value);
            if (value)
            {
              CFRelease(value);
              value = 0;
            }
          }

          v31 = APSTXTRecordUtilsCopyCFStringFromTXTRecord();
          if (v31 == -6727)
          {
LABEL_57:
            v32 = APSTXTRecordUtilsGetInt64FromTXTRecord();
            if (v32 == -6727)
            {
              v16 = 0;
              goto LABEL_72;
            }

            v16 = v32;
            if (!v32)
            {
              CFDictionarySetInt64();
              goto LABEL_72;
            }

            goto LABEL_71;
          }

          v16 = v31;
          if (!v31)
          {
            CFDictionarySetValue(v11[10], @"OSVersion", value);
            if (value)
            {
              CFRelease(value);
              value = 0;
            }

            goto LABEL_57;
          }

LABEL_71:
          APSLogErrorAt();
          goto LABEL_72;
        }

        v16 = v29;
        APSLogErrorAt();
        if (gLogCategory_APAdvertiserInfo <= 40 && (gLogCategory_APAdvertiserInfo != -1 || _LogCategory_Initialize()))
        {
          LogPrintF(&gLogCategory_APAdvertiserInfo, "OSStatus _APAdvertiserInfoAddRAOPData(APAdvertiserInfoRef, CFDataRef)", 33554472, "RAOP TXT record: ProtocolVersion missing.\n", v37);
        }
      }
    }
  }

LABEL_72:
  if (value)
  {
    CFRelease(value);
  }

  if (v16)
  {
LABEL_97:
    APSLogErrorAt();
    CFRelease(v11);
    if (!v12)
    {
      return v16;
    }

    goto LABEL_87;
  }

LABEL_75:
  if (!a4)
  {
    goto LABEL_84;
  }

  value = 0;
  v33 = APSTXTRecordUtilsCopyCFStringFromTXTRecord();
  if (v33 != -6727)
  {
    if (!v33)
    {
      CFDictionarySetValue(v11[10], @"nanServiceType", value);
      if (value)
      {
        CFRelease(value);
        value = 0;
      }

      goto LABEL_83;
    }

    APSLogErrorAt();
  }

  if (value)
  {
    CFRelease(value);
  }

LABEL_83:
  v34 = _APAdvertiserInfoAddAirPlayData(v11, a4);
  if (v34)
  {
    v16 = v34;
    goto LABEL_97;
  }

LABEL_84:
  if (a3)
  {
    v35 = _APAdvertiserInfoAddAirPlayData(v11, a3);
    if (v35)
    {
      v16 = v35;
      goto LABEL_97;
    }
  }

  v16 = 0;
  *a6 = v11;
  if (v12)
  {
LABEL_87:
    CFRelease(v12);
  }

  return v16;
}

void _APAdvertiserInfoCopyAndRemoveMDNSLabelSuffix(const __CFString *a1, __CFString **a2)
{
  if (CFStringHasSuffix(a1, @"")))
  {
    result.location = 0;
    result.length = 0;
    Length = CFStringGetLength(a1);
    v18.location = 0;
    v18.length = Length;
    if (CFStringFindWithOptions(a1, @" ("), v18, 4uLL, &result)
    {
      v5 = Length - result.location;
      result.length = Length - result.location;
      if (result.location)
      {
        if (v5 >= 4)
        {
          v19.length = v5 - 3;
          v6 = *MEMORY[0x277CBECE8];
          v19.location = result.location + 2;
          v7 = CFStringCreateWithSubstring(*MEMORY[0x277CBECE8], a1, v19);
          v16.location = 0;
          v16.length = CFStringGetLength(v7);
          v8 = CFNumberFormatterCreate(v6, 0, kCFNumberFormatterNoStyle);
          if (v8)
          {
            v9 = CFNumberFormatterCreateNumberFromString(v6, v8, v7, &v16, 1uLL);
            if (v9)
            {
              v10 = v16.length;
              if (v10 == CFStringGetLength(v7))
              {
                v11 = CFStringCreateWithSubstring(v6, a1, result);
                if (v11)
                {
                  v12 = v11;
                  v13 = CFStringGetLength(a1);
                  MutableCopy = CFStringCreateMutableCopy(v6, v13, a1);
                  if (MutableCopy)
                  {
                    v15 = MutableCopy;
                    CFStringTrim(MutableCopy, v12);
                    *a2 = v15;
                  }

                  else
                  {
                    APSLogErrorAt();
                  }

                  CFRelease(v12);
                }

                else
                {
                  APSLogErrorAt();
                }
              }
            }
          }

          else
          {
            APSLogErrorAt();
            v9 = 0;
          }

          if (v7)
          {
            CFRelease(v7);
          }

          if (v8)
          {
            CFRelease(v8);
          }

          if (v9)
          {
            CFRelease(v9);
          }
        }
      }
    }
  }
}

uint64_t APAdvertiserInfoGetBitListValueFromTXTRecord(const __CFString *a1, CFDataRef theData, _DWORD *a3)
{
  v12 = *MEMORY[0x277D85DE8];
  if (a1)
  {
    v4 = theData;
    v10 = 0;
    valueLen = 0;
    BytePtr = CFDataGetBytePtr(theData);
    LOWORD(v4) = CFDataGetLength(v4);
    buffer[0] = 0;
    CFStringGetCString(a1, buffer, 256, 0x8000100u);
    if (TXTRecordGetValuePtr(v4, BytePtr, buffer, &valueLen))
    {
      v7 = BitListString_Parse();
      if (v7)
      {
        APSLogErrorAt();
      }

      else
      {
        *a3 = v10;
      }
    }

    else
    {
      return 4294960569;
    }
  }

  else
  {
    APSLogErrorAt();
    return 4294960591;
  }

  return v7;
}

uint64_t _APAdvertiserInfoAddAirPlayData(uint64_t a1, uint64_t a2)
{
  value = 0;
  v48 = 0;
  cf[0] = 0;
  cf[1] = 0;
  Int64FromTXTRecord = APSTXTRecordUtilsGetInt64FromTXTRecord();
  if (Int64FromTXTRecord != -6727)
  {
    v5 = Int64FromTXTRecord;
    if (Int64FromTXTRecord)
    {
      goto LABEL_182;
    }

    CFDictionarySetInt64();
  }

  v6 = APSTXTRecordUtilsGetInt64FromTXTRecord();
  if (v6 != -6727)
  {
    v5 = v6;
    if (v6)
    {
      goto LABEL_182;
    }

    CFDictionarySetInt64();
  }

  v7 = APSTXTRecordUtilsCopyCFStringFromTXTRecord();
  if (v7 != -6727)
  {
    v5 = v7;
    if (v7)
    {
      goto LABEL_182;
    }

    CFDictionarySetValue(*(a1 + 80), @"bluetoothAddress", value);
  }

  v8 = APSTXTRecordUtilsCopyCFStringFromTXTRecord();
  if (!v8)
  {
    CFDictionarySetValue(*(a1 + 80), @"deviceID", value);
    v9 = APSTXTRecordUtilsCopyCFStringFromTXTRecord();
    if (v9 != -6727)
    {
      v5 = v9;
      if (v9)
      {
        goto LABEL_182;
      }

      CFDictionarySetValue(*(a1 + 80), @"correlationID", value);
    }

    APSFeaturesFromTXTRecord = APAdvertiserInfoCreateAPSFeaturesFromTXTRecordEx(a2, @"fex", @"features", cf);
    if (APSFeaturesFromTXTRecord != -6727)
    {
      v5 = APSFeaturesFromTXTRecord;
      if (APSFeaturesFromTXTRecord)
      {
        goto LABEL_182;
      }

      v11 = cf[0];
      _APAdvertiserInfoSetFeaturesEx(*(a1 + 80), cf[0]);
      if (v11)
      {
        CFRelease(v11);
        cf[0] = 0;
      }
    }

    v12 = APSTXTRecordUtilsGetInt64FromTXTRecord();
    if (v12 != -6727)
    {
      v5 = v12;
      if (v12)
      {
        goto LABEL_182;
      }

      CFDictionarySetInt64();
    }

    v13 = APSTXTRecordUtilsCopyCFStringFromTXTRecord();
    if (v13 != -6727)
    {
      v5 = v13;
      if (v13)
      {
        goto LABEL_182;
      }

      CFDictionarySetValue(*(a1 + 80), @"firmwareVersion", value);
      if (value)
      {
        CFRelease(value);
        value = 0;
      }
    }

    v14 = APSTXTRecordUtilsGetInt64FromTXTRecord();
    if (v14 != -6727)
    {
      v5 = v14;
      if (v14)
      {
        goto LABEL_182;
      }

      CFDictionarySetInt64();
    }

    BooleanFromTXTRecord = APSTXTRecordUtilsGetBooleanFromTXTRecord();
    if (BooleanFromTXTRecord != -6727)
    {
      v5 = BooleanFromTXTRecord;
      if (BooleanFromTXTRecord)
      {
        goto LABEL_182;
      }

      v16 = MEMORY[0x277CBED28];
      if (!v48)
      {
        v16 = MEMORY[0x277CBED10];
      }

      CFDictionarySetValue(*(a1 + 80), @"groupContainsDiscoverableLeader", *v16);
    }

    v17 = APSTXTRecordUtilsCopyCFStringFromTXTRecord();
    if (v17 != -6727)
    {
      v5 = v17;
      if (v17)
      {
        goto LABEL_182;
      }

      CFDictionarySetValue(*(a1 + 80), @"groupID", value);
      if (value)
      {
        CFRelease(value);
        value = 0;
      }
    }

    v18 = APSTXTRecordUtilsCopyCFStringFromTXTRecord();
    if (v18 != -6727)
    {
      v5 = v18;
      if (v18)
      {
        goto LABEL_182;
      }

      CFDictionarySetValue(*(a1 + 80), @"groupPublicName", value);
      if (value)
      {
        CFRelease(value);
        value = 0;
      }
    }

    v19 = APSTXTRecordUtilsGetBooleanFromTXTRecord();
    if (v19 != -6727)
    {
      v5 = v19;
      if (v19)
      {
        goto LABEL_182;
      }

      v20 = MEMORY[0x277CBED28];
      if (!v48)
      {
        v20 = MEMORY[0x277CBED10];
      }

      CFDictionarySetValue(*(a1 + 80), @"isGroupLeader", *v20);
    }

    v21 = APSTXTRecordUtilsGetInt64FromTXTRecord();
    if (v21 != -6727)
    {
      v5 = v21;
      if (v21)
      {
        goto LABEL_182;
      }

      CFDictionarySetInt64();
    }

    v22 = APSTXTRecordUtilsGetInt64FromTXTRecord();
    if (v22 != -6727)
    {
      v5 = v22;
      if (v22)
      {
        goto LABEL_182;
      }

      CFDictionarySetInt64();
    }

    v23 = APSTXTRecordUtilsCopyCFStringFromTXTRecord();
    if (v23 != -6727)
    {
      v5 = v23;
      if (v23)
      {
        goto LABEL_182;
      }

      CFDictionarySetValue(*(a1 + 80), @"persistentGroupUUID", value);
      if (value)
      {
        CFRelease(value);
        value = 0;
      }
    }

    v24 = APSTXTRecordUtilsCopyCFStringFromTXTRecord();
    if (v24 != -6727)
    {
      v5 = v24;
      if (v24)
      {
        goto LABEL_182;
      }

      CFDictionarySetValue(*(a1 + 80), @"persistentGroupModel", value);
      if (value)
      {
        CFRelease(value);
        value = 0;
      }
    }

    v25 = APSTXTRecordUtilsCopyCFStringFromTXTRecord();
    if (v25 != -6727)
    {
      v5 = v25;
      if (v25)
      {
        goto LABEL_182;
      }

      CFDictionarySetValue(*(a1 + 80), @"persistentGroupMemberID", value);
      if (value)
      {
        CFRelease(value);
        value = 0;
      }
    }

    v26 = APSTXTRecordUtilsGetBooleanFromTXTRecord();
    if (v26 != -6727)
    {
      v5 = v26;
      if (v26)
      {
        goto LABEL_182;
      }

      v27 = MEMORY[0x277CBED28];
      if (!v48)
      {
        v27 = MEMORY[0x277CBED10];
      }

      CFDictionarySetValue(*(a1 + 80), @"parentGroupContainsDiscoverableLeader", *v27);
    }

    v28 = APSTXTRecordUtilsCopyCFStringFromTXTRecord();
    if (v28 != -6727)
    {
      v5 = v28;
      if (v28)
      {
        goto LABEL_182;
      }

      CFDictionarySetValue(*(a1 + 80), @"parentGroupID", value);
      if (value)
      {
        CFRelease(value);
        value = 0;
      }
    }

    v29 = APSTXTRecordUtilsCopyCFStringFromTXTRecord();
    if (v29 != -6727)
    {
      v5 = v29;
      if (v29)
      {
        goto LABEL_182;
      }

      CFDictionarySetValue(*(a1 + 80), @"tightSyncUUID", value);
      if (value)
      {
        CFRelease(value);
        value = 0;
      }
    }

    v30 = APSTXTRecordUtilsCopyCFStringFromTXTRecord();
    if (v30 != -6727)
    {
      v5 = v30;
      if (v30)
      {
        goto LABEL_182;
      }

      CFDictionarySetValue(*(a1 + 80), @"tightSyncGroupModel", value);
      if (value)
      {
        CFRelease(value);
        value = 0;
      }
    }

    v31 = APSTXTRecordUtilsCopyCFStringFromTXTRecord();
    if (v31 != -6727)
    {
      v5 = v31;
      if (v31)
      {
        goto LABEL_182;
      }

      CFDictionarySetValue(*(a1 + 80), @"deviceModel", value);
      if (value)
      {
        CFRelease(value);
        value = 0;
      }
    }

    v32 = APSTXTRecordUtilsCopyCFStringFromTXTRecord();
    if (v32 != -6727)
    {
      v5 = v32;
      if (v32)
      {
        goto LABEL_182;
      }

      if (APSIsValidDeviceEnclosureColorString())
      {
        CFDictionarySetValue(*(a1 + 80), @"deviceEnclosureColor", value);
      }

      else if (gLogCategory_APAdvertiserInfo <= 60 && (gLogCategory_APAdvertiserInfo != -1 || _LogCategory_Initialize()))
      {
        LogPrintF(&gLogCategory_APAdvertiserInfo, "OSStatus _APAdvertiserInfoAddAirPlayData(APAdvertiserInfoRef, CFDataRef)", 33554492, "Invalid device enclosure color: %@\n", value);
      }

      if (value)
      {
        CFRelease(value);
        value = 0;
      }
    }

    v33 = APSTXTRecordUtilsCopyCFStringFromTXTRecord();
    if (v33 != -6727)
    {
      v5 = v33;
      if (v33)
      {
        goto LABEL_182;
      }

      CFDictionarySetValue(*(a1 + 80), @"manufacturer", value);
      if (value)
      {
        CFRelease(value);
        value = 0;
      }
    }

    v34 = APSTXTRecordUtilsCopyCFStringFromTXTRecord();
    if (v34 != -6727)
    {
      v5 = v34;
      if (v34)
      {
        goto LABEL_182;
      }

      CFDictionarySetValue(*(a1 + 80), @"company", value);
      if (value)
      {
        CFRelease(value);
        value = 0;
      }
    }

    v35 = APSTXTRecordUtilsCopyCFStringFromTXTRecord();
    if (v35 != -6727)
    {
      v5 = v35;
      if (v35)
      {
        goto LABEL_182;
      }

      CFDictionarySetValue(*(a1 + 80), @"serialNumber", value);
      if (value)
      {
        CFRelease(value);
        value = 0;
      }
    }

    v36 = APSTXTRecordUtilsGetInt64FromTXTRecord();
    if (v36 != -6727)
    {
      v5 = v36;
      if (v36)
      {
        goto LABEL_182;
      }

      CFDictionarySetInt64();
    }

    v37 = APSTXTRecordUtilsGetBooleanFromTXTRecord();
    if (v37 != -6727)
    {
      v5 = v37;
      if (v37)
      {
        goto LABEL_182;
      }

      v38 = MEMORY[0x277CBED28];
      if (!v48)
      {
        v38 = MEMORY[0x277CBED10];
      }

      CFDictionarySetValue(*(a1 + 80), @"password", *v38);
    }

    v39 = APSTXTRecordUtilsCopyCFStringFromTXTRecord();
    if (v39 != -6727)
    {
      v5 = v39;
      if (v39)
      {
        goto LABEL_182;
      }

      CFDictionarySetValue(*(a1 + 80), @"protocolVersion", value);
      if (value)
      {
        CFRelease(value);
        value = 0;
      }
    }

    v40 = APSTXTRecordUtilsCopyCFStringFromTXTRecord();
    if (v40 != -6727)
    {
      v5 = v40;
      if (v40)
      {
        goto LABEL_182;
      }

      CFDictionarySetValue(*(a1 + 80), @"publicCUAirPlayPairingIdentity", value);
      if (value)
      {
        CFRelease(value);
        value = 0;
      }
    }

    v41 = APSTXTRecordUtilsCopyCFStringFromTXTRecord();
    if (v41 != -6727)
    {
      v5 = v41;
      if (v41)
      {
        goto LABEL_182;
      }

      CFDictionarySetValue(*(a1 + 80), @"publicCUSystemPairingIdentity", value);
      if (value)
      {
        CFRelease(value);
        value = 0;
      }
    }

    v42 = APSTXTRecordUtilsCopyCFStringFromTXTRecord();
    if (v42 != -6727)
    {
      v5 = v42;
      if (v42)
      {
        goto LABEL_182;
      }

      CFDictionarySetValue(*(a1 + 80), @"publicKey", value);
      if (value)
      {
        CFRelease(value);
        value = 0;
      }
    }

    v43 = APSTXTRecordUtilsCopyCFStringFromTXTRecord();
    if (v43 != -6727)
    {
      v5 = v43;
      if (v43)
      {
        goto LABEL_182;
      }

      CFDictionarySetValue(*(a1 + 80), @"airPlayVersion", value);
      if (value)
      {
        CFRelease(value);
        value = 0;
      }
    }

    v44 = APSTXTRecordUtilsCopyCFStringFromTXTRecord();
    if (v44 == -6727)
    {
LABEL_167:
      v45 = APSTXTRecordUtilsGetInt64FromTXTRecord();
      if (v45 == -6727)
      {
        v5 = 0;
        goto LABEL_183;
      }

      v5 = v45;
      if (!v45)
      {
        CFDictionarySetInt64();
        goto LABEL_183;
      }

      goto LABEL_182;
    }

    v5 = v44;
    if (!v44)
    {
      CFDictionarySetValue(*(a1 + 80), @"OSVersion", value);
      if (value)
      {
        CFRelease(value);
        value = 0;
      }

      goto LABEL_167;
    }

LABEL_182:
    APSLogErrorAt();
    goto LABEL_183;
  }

  v5 = v8;
  APSLogErrorAt();
  if (gLogCategory_APAdvertiserInfo <= 40 && (gLogCategory_APAdvertiserInfo != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APAdvertiserInfo, "OSStatus _APAdvertiserInfoAddAirPlayData(APAdvertiserInfoRef, CFDataRef)", 33554472, "AirPlay TXT record: DeviceID missing.\n");
  }

LABEL_183:
  if (value)
  {
    CFRelease(value);
  }

  return v5;
}

uint64_t APAdvertiserInfoCreateAPSFeaturesFromTXTRecordEx(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v6 = APSTXTRecordUtilsCopyCFStringFromTXTRecord();
  Int64FromTXTRecord = v6;
  if (v6 != -6727)
  {
    if (!v6)
    {
      v7 = APSFeaturesCreateFromStringRepresentation();
LABEL_7:
      *a4 = v7;
      return Int64FromTXTRecord;
    }

    goto LABEL_8;
  }

  if (a3)
  {
    Int64FromTXTRecord = APSTXTRecordUtilsGetInt64FromTXTRecord();
    if (!Int64FromTXTRecord)
    {
      v7 = APSFeaturesCreateFromLegacyFlags();
      if (!v7)
      {
        APSLogErrorAt();
        return -6728;
      }

      goto LABEL_7;
    }

LABEL_8:
    APSLogErrorAt();
  }

  return Int64FromTXTRecord;
}

uint64_t APAdvertiserInfoCreateWithSidePlayDataAndDeviceName(uint64_t a1, uint64_t a2, const __CFString *a3, CFMutableDictionaryRef **a4)
{
  v19 = 0;
  v20 = 0;
  if (!a3 || !a2)
  {
    APSLogErrorAt();
    return 4294960591;
  }

  v6 = a3;
  APAdvertiserInfoCreate(a1, &v20);
  v7 = v20;
  if (!v20)
  {
    APSLogErrorAt();
    return 4294960568;
  }

  _APAdvertiserInfoCopyAndRemoveMDNSLabelSuffix(v6, &v19);
  v8 = v19;
  if (v19)
  {
    v6 = v19;
  }

  CFDictionarySetValue(v7[10], @"deviceName", v6);
  cf = 0;
  value = 0;
  v9 = APSTXTRecordUtilsCopyCFStringFromTXTRecord();
  if (v9)
  {
    v11 = v9;
    APSLogErrorAt();
    if (gLogCategory_APAdvertiserInfo <= 40 && (gLogCategory_APAdvertiserInfo != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_APAdvertiserInfo, "OSStatus _APAdvertiserInfoAddSidePlayData(APAdvertiserInfoRef, CFDataRef)", 33554472, "SidePlay TXT record: DeviceID missing (%s).", "id");
    }

LABEL_37:
    v17 = value;
    if (!value)
    {
      goto LABEL_39;
    }

    goto LABEL_38;
  }

  CFDictionarySetValue(v7[10], @"deviceID", value);
  if (value)
  {
    CFRelease(value);
    value = 0;
  }

  APSFeaturesFromTXTRecord = APAdvertiserInfoCreateAPSFeaturesFromTXTRecordEx(a2, @"f", 0, &cf);
  if (APSFeaturesFromTXTRecord == -6727)
  {
    v12 = APSFeaturesCreateFromLegacyFlags();
  }

  else
  {
    v11 = APSFeaturesFromTXTRecord;
    if (APSFeaturesFromTXTRecord)
    {
      goto LABEL_36;
    }

    v12 = cf;
  }

  _APAdvertiserInfoSetFeaturesEx(v7[10], v12);
  if (v12)
  {
    CFRelease(v12);
  }

  v13 = APSTXTRecordUtilsCopyCFStringFromTXTRecord();
  if (v13 != -6727)
  {
    v11 = v13;
    if (v13)
    {
      goto LABEL_36;
    }

    CFDictionarySetValue(v7[10], @"manufacturer", value);
    if (value)
    {
      CFRelease(value);
      value = 0;
    }
  }

  v14 = APSTXTRecordUtilsCopyCFStringFromTXTRecord();
  if (v14 != -6727)
  {
    v11 = v14;
    if (v14)
    {
      goto LABEL_36;
    }

    CFDictionarySetValue(v7[10], @"deviceModel", value);
    if (value)
    {
      CFRelease(value);
      value = 0;
    }
  }

  v15 = APSTXTRecordUtilsCopyCFStringFromTXTRecord();
  if (v15 == -6727)
  {
    goto LABEL_27;
  }

  v11 = v15;
  if (v15)
  {
LABEL_36:
    APSLogErrorAt();
    goto LABEL_37;
  }

  CFDictionarySetValue(v7[10], @"serialNumber", value);
  if (value)
  {
    CFRelease(value);
    value = 0;
  }

LABEL_27:
  v16 = APSTXTRecordUtilsCopyCFStringFromTXTRecord();
  if (v16 == -6727)
  {
    v11 = 0;
    goto LABEL_37;
  }

  v11 = v16;
  if (v16)
  {
    goto LABEL_36;
  }

  CFDictionarySetValue(v7[10], @"airPlayVersion", value);
  v17 = value;
  if (!value)
  {
    goto LABEL_40;
  }

  v11 = 0;
LABEL_38:
  CFRelease(v17);
LABEL_39:
  if (v11)
  {
    APSLogErrorAt();
    CFRelease(v7);
    if (!v8)
    {
      return v11;
    }

    goto LABEL_45;
  }

LABEL_40:
  if (gLogCategory_APAdvertiserInfo <= 30 && (gLogCategory_APAdvertiserInfo != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APAdvertiserInfo, "OSStatus APAdvertiserInfoCreateWithSidePlayDataAndDeviceName(CFAllocatorRef, CFDataRef, CFStringRef, APAdvertiserInfoRef *)", 33554462, "%###s did=%@, inSidePlayData=[%{ptr}] -> %@", "OSStatus APAdvertiserInfoCreateWithSidePlayDataAndDeviceName(CFAllocatorRef, CFDataRef, CFStringRef, APAdvertiserInfoRef *)", v6, a2, v7[10]);
  }

  v11 = 0;
  *a4 = v7;
  if (v8)
  {
LABEL_45:
    CFRelease(v8);
  }

  return v11;
}

uint64_t APAdvertiserInfoCopy(uint64_t a1, uint64_t a2, void *a3)
{
  cf = 0;
  if (a2 && *(a2 + 80) && a3)
  {
    v5 = APAdvertiserInfoCreate(a1, &cf);
    if (v5)
    {
      APSLogErrorAt();
      if (cf)
      {
        CFRelease(cf);
      }
    }

    else
    {
      v6 = cf;
      CFRelease(*(cf + 10));
      pthread_mutex_lock((a2 + 16));
      v6[10] = CFDictionaryCreateMutableCopy(*MEMORY[0x277CBECE8], 0, *(a2 + 80));
      pthread_mutex_unlock((a2 + 16));
      *a3 = v6;
    }
  }

  else
  {
    APSLogErrorAt();
    return 4294960591;
  }

  return v5;
}

uint64_t APAdvertiserInfoCopyAirPlayDataWithNANServiceType(uint64_t a1, uint64_t a2, CFDataRef *a3)
{
  v4 = a2;
  v83 = *MEMORY[0x277D85DE8];
  txtRecord = 0uLL;
  pthread_mutex_lock((a1 + 16));
  TXTRecordCreate(&txtRecord, 0x100u, buffer);
  if (!a3)
  {
    goto LABEL_109;
  }

  Int64Ranged = CFDictionaryGetInt64Ranged();
  if (Int64Ranged)
  {
    v7 = snprintf(__str, 0x100uLL, "%u", Int64Ranged);
    v79 = TXTRecordSetValue(&txtRecord, "act", v7, __str);
    if (v79)
    {
      goto LABEL_139;
    }
  }

  v8 = CFDictionaryGetInt64Ranged();
  v9 = snprintf(__str, 0x100uLL, "%u", v8);
  v79 = TXTRecordSetValue(&txtRecord, "acl", v9, __str);
  if (v79)
  {
    goto LABEL_139;
  }

  Value = CFDictionaryGetValue(*(a1 + 80), @"bluetoothAddress");
  cf = Value;
  if (Value)
  {
    if (CFStringGetLength(Value))
    {
      v79 = _APAdvertiserInfoAddStringToTXTRecord(cf, &txtRecord, "btaddr");
      if (v79)
      {
        goto LABEL_139;
      }
    }
  }

  v11 = CFDictionaryGetValue(*(a1 + 80), @"deviceID");
  v79 = _APAdvertiserInfoAddStringToTXTRecord(v11, &txtRecord, "deviceid");
  if (!v79)
  {
    if (!v4)
    {
      CFStringGetTypeID();
      TypedValue = CFDictionaryGetTypedValue();
      cft = TypedValue;
      if (TypedValue)
      {
        if (CFStringGetLength(TypedValue))
        {
          v79 = _APAdvertiserInfoAddStringToTXTRecord(cft, &txtRecord, "cid");
          if (v79)
          {
            goto LABEL_139;
          }
        }
      }
    }

    CFStringGetTypeID();
    v12 = CFDictionaryGetTypedValue();
    cfa = v12;
    if (v12)
    {
      if (CFStringGetLength(v12))
      {
        v79 = _APAdvertiserInfoAddStringToTXTRecord(cfa, &txtRecord, "c");
        if (v79)
        {
          goto LABEL_139;
        }
      }
    }

    if (CFDictionaryGetValue(*(a1 + 80), @"featuresEx"))
    {
      v79 = APSFeaturesCopyStringRepresentation();
      if (v79)
      {
        goto LABEL_139;
      }

      v79 = _APAdvertiserInfoAddStringToTXTRecord(cfa, &txtRecord, "fex");
      CFRelease(cfa);
      if (v79)
      {
        goto LABEL_139;
      }

      LegacyFlags = APSFeaturesGetLegacyFlags();
      TXTRecordNumberCString = _APAdvertiserInfoGetTXTRecordNumberCString(LegacyFlags, __str);
      v79 = TXTRecordSetValue(&txtRecord, "features", TXTRecordNumberCString, __str);
      if (v79)
      {
        goto LABEL_139;
      }
    }

    Int64 = CFDictionaryGetInt64();
    if (Int64)
    {
      v16 = _APAdvertiserInfoGetTXTRecordNumberCString(Int64, __str);
      v79 = TXTRecordSetValue(&txtRecord, "rsf", v16, __str);
      if (v79)
      {
        goto LABEL_139;
      }
    }

    v17 = CFDictionaryGetValue(*(a1 + 80), @"firmwareVersion");
    cfb = v17;
    if (v17)
    {
      if (CFStringGetLength(v17))
      {
        v79 = _APAdvertiserInfoAddStringToTXTRecord(cfb, &txtRecord, "fv");
        if (v79)
        {
          goto LABEL_139;
        }
      }
    }

    v18 = CFDictionaryGetInt64Ranged();
    if (v18)
    {
      v19 = snprintf(__str, 0x100uLL, "0x%x", v18);
      v79 = TXTRecordSetValue(&txtRecord, "flags", v19, __str);
      if (v79)
      {
        goto LABEL_139;
      }
    }

    v20 = CFDictionaryGetValue(*(a1 + 80), @"groupID");
    cfc = v20;
    if (v20)
    {
      if (CFStringGetLength(v20))
      {
        v79 = _APAdvertiserInfoAddStringToTXTRecord(cfc, &txtRecord, "gid");
        if (v79)
        {
          goto LABEL_139;
        }

        v21 = CFDictionaryGetInt64();
        v22 = snprintf(__str, 0x100uLL, "%u", v21 != 0);
        v79 = TXTRecordSetValue(&txtRecord, "igl", v22, __str);
        if (v79)
        {
          goto LABEL_139;
        }

        v23 = CFDictionaryGetInt64();
        v24 = snprintf(__str, 0x100uLL, "%u", v23 != 0);
        v79 = TXTRecordSetValue(&txtRecord, "gcgl", v24, __str);
        if (v79)
        {
          goto LABEL_139;
        }

        v25 = CFDictionaryGetValue(*(a1 + 80), @"groupPublicName");
        cfd = v25;
        if (v25)
        {
          if (CFStringGetLength(v25))
          {
            v79 = _APAdvertiserInfoAddStringToTXTRecord(cfd, &txtRecord, "gpn");
            if (v79)
            {
              goto LABEL_139;
            }
          }
        }
      }
    }

    if (v4 < 2)
    {
LABEL_35:
      v27 = CFDictionaryGetInt64Ranged();
      v28 = snprintf(__str, 0x100uLL, "%u", v27);
      v79 = TXTRecordSetValue(&txtRecord, "psgsz", v28, __str);
      if (!v79)
      {
        v29 = CFDictionaryGetInt64Ranged();
        v30 = snprintf(__str, 0x100uLL, "%u", v29);
        v79 = TXTRecordSetValue(&txtRecord, "psgtp", v30, __str);
        if (!v79)
        {
          v31 = CFDictionaryGetValue(*(a1 + 80), @"persistentGroupUUID");
          cfe = v31;
          if (!v31 || !CFStringGetLength(v31) || (v79 = _APAdvertiserInfoAddStringToTXTRecord(cfe, &txtRecord, "psgid")) == 0)
          {
            v32 = CFDictionaryGetValue(*(a1 + 80), @"persistentGroupModel");
            cff = v32;
            if (!v32 || !CFStringGetLength(v32) || (v79 = _APAdvertiserInfoAddStringToTXTRecord(cff, &txtRecord, "pgm")) == 0)
            {
              v33 = CFDictionaryGetValue(*(a1 + 80), @"persistentGroupMemberID");
              cfg = v33;
              if (!v33 || !CFStringGetLength(v33) || (v79 = _APAdvertiserInfoAddStringToTXTRecord(cfg, &txtRecord, "pgmid")) == 0)
              {
                v34 = CFDictionaryGetValue(*(a1 + 80), @"parentGroupID");
                cfh = v34;
                if (!v34 || !CFStringGetLength(v34) || (v79 = _APAdvertiserInfoAddStringToTXTRecord(cfh, &txtRecord, "pgid")) == 0 && (v35 = CFDictionaryGetInt64(), v36 = snprintf(__str, 0x100uLL, "%u", v35 != 0), (v79 = TXTRecordSetValue(&txtRecord, "pgcgl", v36, __str)) == 0))
                {
                  v37 = CFDictionaryGetValue(*(a1 + 80), @"tightSyncUUID");
                  cfi = v37;
                  if (!v37 || !CFStringGetLength(v37) || (v79 = _APAdvertiserInfoAddStringToTXTRecord(cfi, &txtRecord, "tsid")) == 0)
                  {
                    v38 = CFDictionaryGetValue(*(a1 + 80), @"tightSyncGroupModel");
                    cfj = v38;
                    if (!v38 || !CFStringGetLength(v38) || (v79 = _APAdvertiserInfoAddStringToTXTRecord(cfj, &txtRecord, "tsm")) == 0)
                    {
                      v39 = CFDictionaryGetValue(*(a1 + 80), @"deviceModel");
                      cfk = v39;
                      if (!v39 || !CFStringGetLength(v39) || (v79 = _APAdvertiserInfoAddStringToTXTRecord(cfk, &txtRecord, "model")) == 0)
                      {
                        v40 = CFDictionaryGetValue(*(a1 + 80), @"manufacturer");
                        cfl = v40;
                        if (!v40 || !CFStringGetLength(v40) || (v79 = _APAdvertiserInfoAddStringToTXTRecord(cfl, &txtRecord, "manufacturer")) == 0)
                        {
                          v41 = CFDictionaryGetValue(*(a1 + 80), @"serialNumber");
                          cfm = v41;
                          if (!v41 || !CFStringGetLength(v41) || (v79 = _APAdvertiserInfoAddStringToTXTRecord(cfm, &txtRecord, "serialNumber")) == 0)
                          {
                            v42 = CFDictionaryGetInt64Ranged();
                            v43 = snprintf(__str, 0x100uLL, "%u", v42);
                            v79 = TXTRecordSetValue(&txtRecord, "at", v43, __str);
                            if (!v79)
                            {
                              v79 = 0;
                              if (!CFDictionaryGetInt64() || (v79 = TXTRecordSetValue(&txtRecord, "pw", 1u, "1")) == 0)
                              {
                                v44 = CFDictionaryGetValue(*(a1 + 80), @"protocolVersion");
                                cfn = v44;
                                if (!v44 || !CFStringGetLength(v44) || (v79 = _APAdvertiserInfoAddStringToTXTRecord(cfn, &txtRecord, "protovers")) == 0)
                                {
                                  v45 = CFDictionaryGetValue(*(a1 + 80), @"publicCUAirPlayPairingIdentity");
                                  cfo = v45;
                                  if (!v45 || !CFStringGetLength(v45) || (v79 = _APAdvertiserInfoAddStringToTXTRecord(cfo, &txtRecord, "pi")) == 0)
                                  {
                                    v46 = CFDictionaryGetValue(*(a1 + 80), @"publicCUSystemPairingIdentity");
                                    cfp = v46;
                                    if (!v46 || !CFStringGetLength(v46) || (v79 = _APAdvertiserInfoAddStringToTXTRecord(cfp, &txtRecord, "psi")) == 0)
                                    {
                                      v47 = CFDictionaryGetValue(*(a1 + 80), @"publicKey");
                                      cfq = v47;
                                      if (!v47 || !CFStringGetLength(v47) || (v79 = _APAdvertiserInfoAddStringToTXTRecord(cfq, &txtRecord, "pk")) == 0)
                                      {
                                        v48 = CFDictionaryGetValue(*(a1 + 80), @"airPlayVersion");
                                        cfr = v48;
                                        if (!v48 || !CFStringGetLength(v48) || (v79 = _APAdvertiserInfoAddStringToTXTRecord(cfr, &txtRecord, "srcvers")) == 0)
                                        {
                                          v49 = CFDictionaryGetValue(*(a1 + 80), @"OSVersion");
                                          cfs = v49;
                                          if (!v49 || !CFStringGetLength(v49) || (v79 = _APAdvertiserInfoAddStringToTXTRecord(cfs, &txtRecord, "osvers")) == 0)
                                          {
                                            v50 = CFDictionaryGetInt64Ranged();
                                            if (!v50 || (v51 = snprintf(__str, 0x100uLL, "%u", v50), (v79 = TXTRecordSetValue(&txtRecord, "vv", v51, __str)) == 0))
                                            {
                                              BytesPtr = TXTRecordGetBytesPtr(&txtRecord);
                                              Length = TXTRecordGetLength(&txtRecord);
                                              v54 = CFDataCreate(0, BytesPtr, Length);
                                              if (v54)
                                              {
                                                *a3 = v54;
                                                goto LABEL_90;
                                              }

                                              APSLogErrorAt();
                                              v57 = -6728;
LABEL_110:
                                              v79 = v57;
                                              goto LABEL_90;
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

LABEL_139:
      APSLogErrorAt();
      goto LABEL_90;
    }

    TXTString = APSNANServiceTypeGetTXTString();
    if (TXTString)
    {
      v79 = _APAdvertiserInfoAddStringToTXTRecord(TXTString, &txtRecord, "nanST");
      if (v79)
      {
        goto LABEL_139;
      }

      goto LABEL_35;
    }

LABEL_109:
    APSLogErrorAt();
    v57 = -6705;
    goto LABEL_110;
  }

  APSLogErrorAt();
  if (gLogCategory_APAdvertiserInfo <= 40 && (gLogCategory_APAdvertiserInfo != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APAdvertiserInfo, "OSStatus APAdvertiserInfoCopyAirPlayDataWithNANServiceType(APAdvertiserInfoRef, APSNANServiceType, CFDataRef *)", 33554472, "Failed to add DeviceID, which is required. Can't create AirPlay data.\n");
  }

LABEL_90:
  TXTRecordDeallocate(&txtRecord);
  pthread_mutex_unlock((a1 + 16));
  return v79;
}

uint64_t _APAdvertiserInfoAddStringToTXTRecord(const __CFString *a1, TXTRecordRef *a2, const char *a3)
{
  v10 = *MEMORY[0x277D85DE8];
  if (a1 && CFStringGetLength(a1))
  {
    buffer[0] = 0;
    if (CFStringGetCString(a1, buffer, 256, 0x8000100u))
    {
      v6 = strlen(buffer);
      v7 = TXTRecordSetValue(a2, a3, v6, buffer);
      if (v7)
      {
        APSLogErrorAt();
      }
    }

    else
    {
      APSLogErrorAt();
      return 4294960559;
    }
  }

  else
  {
    APSLogErrorAt();
    return 4294960591;
  }

  return v7;
}

uint64_t _APAdvertiserInfoGetTXTRecordNumberCString(unint64_t a1, char *__str)
{
  if (HIDWORD(a1))
  {
    return snprintf(__str, 0x100uLL, "0x%X,0x%X");
  }

  else
  {
    return snprintf(__str, 0x100uLL, "0x%X");
  }
}

uint64_t APAdvertiserInfoCopyClusterCompatibleAirPlayData(uint64_t a1, int a2, CFDataRef *a3)
{
  v63 = *MEMORY[0x277D85DE8];
  txtRecord = 0uLL;
  pthread_mutex_lock((a1 + 16));
  TXTRecordCreate(&txtRecord, 0x100u, buffer);
  if (!a3)
  {
    APSLogErrorAt();
    v46 = -6705;
LABEL_75:
    v59 = v46;
    goto LABEL_68;
  }

  Int64Ranged = CFDictionaryGetInt64Ranged();
  v7 = snprintf(__str, 0x100uLL, "%u", Int64Ranged);
  v59 = TXTRecordSetValue(&txtRecord, "acl", v7, __str);
  if (v59)
  {
    APSLogErrorAt();
    goto LABEL_68;
  }

  if (!CFDictionaryGetValue(*(a1 + 80), @"featuresEx"))
  {
    v9 = 0;
    goto LABEL_12;
  }

  MutableCopy = APSFeaturesCreateMutableCopy();
  if (!MutableCopy)
  {
    APSLogErrorAt();
    v46 = -6728;
    goto LABEL_75;
  }

  v9 = MutableCopy;
  if (a2 == 2)
  {
    APSFeaturesSetFeature();
    APSFeaturesSetFeature();
    APSFeaturesSetFeature();
    APSFeaturesSetFeature();
  }

  v59 = APSFeaturesCopyStringRepresentation();
  if (v59 || (v59 = _APAdvertiserInfoAddStringToTXTRecord(0, &txtRecord, "fex"), CFRelease(0), v59) || (LegacyFlags = APSFeaturesGetLegacyFlags(), TXTRecordNumberCString = _APAdvertiserInfoGetTXTRecordNumberCString(LegacyFlags, __str), (v59 = TXTRecordSetValue(&txtRecord, "features", TXTRecordNumberCString, __str)) != 0))
  {
    APSLogErrorAt();
    goto LABEL_67;
  }

LABEL_12:
  Int64 = CFDictionaryGetInt64();
  if (Int64)
  {
    v13 = _APAdvertiserInfoGetTXTRecordNumberCString(Int64, __str);
    v59 = TXTRecordSetValue(&txtRecord, "rsf", v13, __str);
    if (v59)
    {
      goto LABEL_77;
    }
  }

  v14 = CFDictionaryGetInt64Ranged();
  if (CFDictionaryGetValue(*(a1 + 80), @"tightSyncUUID") && !CFDictionaryGetValue(*(a1 + 80), @"persistentGroupUUID"))
  {
    v15 = 0x2000;
  }

  else
  {
    v15 = -8969;
  }

  v16 = v15 & v14;
  if (v16)
  {
    v17 = snprintf(__str, 0x100uLL, "0x%x", v16);
    v59 = TXTRecordSetValue(&txtRecord, "flags", v17, __str);
    if (v59)
    {
      goto LABEL_77;
    }
  }

  v18 = *(a1 + 80);
  if (a2 != 1)
  {
    Value = CFDictionaryGetValue(v18, @"persistentGroupUUID");
    cfb = Value;
    if (Value && CFStringGetLength(Value))
    {
      v59 = _APAdvertiserInfoAddStringToTXTRecord(cfb, &txtRecord, "psgid");
      if (v59)
      {
        goto LABEL_77;
      }

      v22 = CFDictionaryGetInt64Ranged();
      v23 = snprintf(__str, 0x100uLL, "%u", v22);
      v59 = TXTRecordSetValue(&txtRecord, "psgsz", v23, __str);
      if (v59)
      {
        goto LABEL_77;
      }

      v24 = CFDictionaryGetInt64Ranged();
      v25 = snprintf(__str, 0x100uLL, "%u", v24);
      v59 = TXTRecordSetValue(&txtRecord, "psgtp", v25, __str);
      if (v59)
      {
        goto LABEL_77;
      }

      v26 = CFDictionaryGetValue(*(a1 + 80), @"persistentGroupModel");
      cfc = v26;
      if (v26)
      {
        if (CFStringGetLength(v26))
        {
          v59 = _APAdvertiserInfoAddStringToTXTRecord(cfc, &txtRecord, "pgm");
          if (v59)
          {
            goto LABEL_77;
          }
        }
      }

      goto LABEL_38;
    }

LABEL_71:
    APSLogErrorAt();
    v47 = -6705;
    goto LABEL_73;
  }

  v19 = CFDictionaryGetValue(v18, @"tightSyncUUID");
  cf = v19;
  if (!v19 || !CFStringGetLength(v19))
  {
    goto LABEL_71;
  }

  v59 = _APAdvertiserInfoAddStringToTXTRecord(cf, &txtRecord, "tsid");
  if (!v59)
  {
    v20 = CFDictionaryGetValue(*(a1 + 80), @"tightSyncGroupModel");
    cfa = v20;
    if (!v20 || !CFStringGetLength(v20) || (v59 = _APAdvertiserInfoAddStringToTXTRecord(cfa, &txtRecord, "tsm")) == 0)
    {
LABEL_38:
      v27 = CFDictionaryGetValue(*(a1 + 80), @"groupID");
      cfd = v27;
      if (v27)
      {
        if (CFStringGetLength(v27))
        {
          v59 = _APAdvertiserInfoAddStringToTXTRecord(cfd, &txtRecord, "gid");
          if (v59)
          {
            goto LABEL_77;
          }

          v28 = CFDictionaryGetInt64();
          v29 = snprintf(__str, 0x100uLL, "%u", v28 != 0);
          v59 = TXTRecordSetValue(&txtRecord, "igl", v29, __str);
          if (v59)
          {
            goto LABEL_77;
          }

          v30 = CFDictionaryGetInt64();
          v31 = snprintf(__str, 0x100uLL, "%u", v30 != 0);
          v59 = TXTRecordSetValue(&txtRecord, "gcgl", v31, __str);
          if (v59)
          {
            goto LABEL_77;
          }

          v32 = CFDictionaryGetValue(*(a1 + 80), @"groupPublicName");
          cfe = v32;
          if (v32)
          {
            if (CFStringGetLength(v32))
            {
              v59 = _APAdvertiserInfoAddStringToTXTRecord(cfe, &txtRecord, "gpn");
              if (v59)
              {
                goto LABEL_77;
              }
            }
          }
        }
      }

      v33 = CFDictionaryGetValue(*(a1 + 80), @"parentGroupID");
      cff = v33;
      if (v33)
      {
        if (CFStringGetLength(v33))
        {
          v59 = _APAdvertiserInfoAddStringToTXTRecord(cff, &txtRecord, "pgid");
          if (v59)
          {
            goto LABEL_77;
          }

          v34 = CFDictionaryGetInt64();
          v35 = snprintf(__str, 0x100uLL, "%u", v34 != 0);
          v59 = TXTRecordSetValue(&txtRecord, "pgcgl", v35, __str);
          if (v59)
          {
            goto LABEL_77;
          }
        }
      }

      v36 = CFDictionaryGetValue(*(a1 + 80), @"deviceModel");
      cfg = v36;
      if (v36)
      {
        if (CFStringGetLength(v36))
        {
          v59 = _APAdvertiserInfoAddStringToTXTRecord(cfg, &txtRecord, "model");
          if (v59)
          {
            goto LABEL_77;
          }
        }
      }

      v37 = CFDictionaryGetValue(*(a1 + 80), @"protocolVersion");
      cfh = v37;
      if (v37)
      {
        if (CFStringGetLength(v37))
        {
          v59 = _APAdvertiserInfoAddStringToTXTRecord(cfh, &txtRecord, "protovers");
          if (v59)
          {
            goto LABEL_77;
          }
        }
      }

      v38 = CFDictionaryGetValue(*(a1 + 80), @"airPlayVersion");
      cfi = v38;
      if (v38)
      {
        if (CFStringGetLength(v38))
        {
          v59 = _APAdvertiserInfoAddStringToTXTRecord(cfi, &txtRecord, "srcvers");
          if (v59)
          {
            goto LABEL_77;
          }
        }
      }

      v39 = CFDictionaryGetValue(*(a1 + 80), @"OSVersion");
      cfj = v39;
      if (v39)
      {
        if (CFStringGetLength(v39))
        {
          v59 = _APAdvertiserInfoAddStringToTXTRecord(cfj, &txtRecord, "osvers");
          if (v59)
          {
            goto LABEL_77;
          }
        }
      }

      v40 = CFDictionaryGetInt64Ranged();
      if (v40)
      {
        v41 = snprintf(__str, 0x100uLL, "%u", v40);
        v59 = TXTRecordSetValue(&txtRecord, "vv", v41, __str);
        if (v59)
        {
          goto LABEL_77;
        }
      }

      BytesPtr = TXTRecordGetBytesPtr(&txtRecord);
      Length = TXTRecordGetLength(&txtRecord);
      v44 = CFDataCreate(0, BytesPtr, Length);
      if (v44)
      {
        *a3 = v44;
        goto LABEL_66;
      }

      APSLogErrorAt();
      v47 = -6728;
LABEL_73:
      v59 = v47;
      goto LABEL_66;
    }
  }

LABEL_77:
  APSLogErrorAt();
LABEL_66:
  if (v9)
  {
LABEL_67:
    CFRelease(v9);
  }

LABEL_68:
  TXTRecordDeallocate(&txtRecord);
  pthread_mutex_unlock((a1 + 16));
  return v59;
}

uint64_t APAdvertiserInfoCopyAirPlayP2PDataWithNANServiceType(uint64_t a1, int a2, uint64_t a3, CFDataRef *a4)
{
  v5 = a3;
  v20 = *MEMORY[0x277D85DE8];
  if (gLogCategory_APAdvertiserInfo <= 30 && (gLogCategory_APAdvertiserInfo != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APAdvertiserInfo, "OSStatus APAdvertiserInfoCopyAirPlayP2PDataWithNANServiceType(APAdvertiserInfoRef, APAdvertiserInfoDeviceIDType, APSNANServiceType, CFDataRef *)", 33554462, "[%{ptr}] Copying AirPlayP2PData\n", a1);
  }

  txtRecord = 0uLL;
  pthread_mutex_lock((a1 + 16));
  TXTRecordCreate(&txtRecord, 0x100u, buffer);
  if (!a4)
  {
    goto LABEL_27;
  }

  if (a2 != 1)
  {
    goto LABEL_14;
  }

  Value = CFDictionaryGetValue(*(a1 + 80), @"correlationID");
  if (gLogCategory_APAdvertiserInfo <= 30 && (gLogCategory_APAdvertiserInfo != -1 || _LogCategory_Initialize()))
  {
    v9 = "yes";
    if (!Value)
    {
      v9 = "no";
    }

    LogPrintF(&gLogCategory_APAdvertiserInfo, "OSStatus APAdvertiserInfoCopyAirPlayP2PDataWithNANServiceType(APAdvertiserInfoRef, APAdvertiserInfoDeviceIDType, APSNANServiceType, CFDataRef *)", 33554462, "[%{ptr}] CorrelationID requested. Available: %s\n", a1, v9);
  }

  if (!Value)
  {
LABEL_14:
    Value = CFDictionaryGetValue(*(a1 + 80), @"deviceID");
  }

  v10 = _APAdvertiserInfoAddStringToTXTRecord(Value, &txtRecord, "deviceid");
  if (!v10)
  {
    if (!v5)
    {
LABEL_19:
      BytesPtr = TXTRecordGetBytesPtr(&txtRecord);
      Length = TXTRecordGetLength(&txtRecord);
      v15 = CFDataCreate(0, BytesPtr, Length);
      if (v15)
      {
        v16 = 0;
        *a4 = v15;
      }

      else
      {
        APSLogErrorAt();
        v16 = 4294960568;
      }

      goto LABEL_21;
    }

    TXTString = APSNANServiceTypeGetTXTString();
    if (TXTString)
    {
      v12 = _APAdvertiserInfoAddStringToTXTRecord(TXTString, &txtRecord, "nanST");
      if (v12)
      {
        v16 = v12;
        APSLogErrorAt();
        goto LABEL_21;
      }

      goto LABEL_19;
    }

LABEL_27:
    APSLogErrorAt();
    v16 = 4294960591;
    goto LABEL_21;
  }

  v16 = v10;
  APSLogErrorAt();
  if (gLogCategory_APAdvertiserInfo <= 40 && (gLogCategory_APAdvertiserInfo != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APAdvertiserInfo, "OSStatus APAdvertiserInfoCopyAirPlayP2PDataWithNANServiceType(APAdvertiserInfoRef, APAdvertiserInfoDeviceIDType, APSNANServiceType, CFDataRef *)", 33554472, "Failed to add DeviceID, which is required. Can't create AirPlay data.\n");
  }

LABEL_21:
  TXTRecordDeallocate(&txtRecord);
  pthread_mutex_unlock((a1 + 16));
  return v16;
}

uint64_t APAdvertiserInfoCreateAirPlayServiceName(uint64_t a1, void *a2)
{
  if (!a2)
  {
    APSLogErrorAt();
    return 4294960591;
  }

  if (!a1)
  {
    return 4294960591;
  }

  pthread_mutex_lock((a1 + 16));
  Value = CFDictionaryGetValue(*(a1 + 80), @"deviceName");
  v5 = Value;
  if (Value)
  {
    CFRetain(Value);
  }

  pthread_mutex_unlock((a1 + 16));
  result = 0;
  *a2 = v5;
  return result;
}

uint64_t APAdvertiserInfoCopyRAOPData(uint64_t a1, CFDataRef *a2)
{
  v31 = *MEMORY[0x277D85DE8];
  txtRecord = 0uLL;
  pthread_mutex_lock((a1 + 16));
  TXTRecordCreate(&txtRecord, 0x100u, buffer);
  if (!a2)
  {
    APSLogErrorAt();
    v26 = -6705;
    goto LABEL_46;
  }

  CFDictionaryGetInt64Ranged();
  BitListString_Make();
  v27 = TXTRecordSetValue(&txtRecord, "cn", 0, value);
  if (v27)
  {
    goto LABEL_47;
  }

  if (CFDictionaryGetInt64())
  {
    v27 = TXTRecordSetValue(&txtRecord, "da", 4u, "true");
    if (v27)
    {
      goto LABEL_47;
    }
  }

  CFDictionaryGetInt64Ranged();
  BitListString_Make();
  v27 = TXTRecordSetValue(&txtRecord, "et", 0, value);
  if (v27)
  {
    goto LABEL_47;
  }

  if (CFDictionaryGetValue(*(a1 + 80), @"featuresEx"))
  {
    LegacyFlags = APSFeaturesGetLegacyFlags();
    TXTRecordNumberCString = _APAdvertiserInfoGetTXTRecordNumberCString(LegacyFlags, value);
    TXTRecordSetValue(&txtRecord, "ft", TXTRecordNumberCString, value);
  }

  if ((v6 = CFDictionaryGetValue(*(a1 + 80), @"firmwareVersion")) != 0 && (v7 = v6, CFStringGetLength(v6)) && (v27 = _APAdvertiserInfoAddStringToTXTRecord(v7, &txtRecord, "fv")) != 0 || (Int64Ranged = CFDictionaryGetInt64Ranged()) != 0 && (v9 = snprintf(value, 0x100uLL, "0x%x", Int64Ranged), (v27 = TXTRecordSetValue(&txtRecord, "sf", v9, value)) != 0) || CFDictionaryGetInt64Ranged() && (BitListString_Make(), (v27 = TXTRecordSetValue(&txtRecord, "md", 0, value)) != 0) || (v10 = CFDictionaryGetValue(*(a1 + 80), @"deviceModel")) != 0 && (v11 = v10, CFStringGetLength(v10)) && (v27 = _APAdvertiserInfoAddStringToTXTRecord(v11, &txtRecord, "am")) != 0 || CFDictionaryGetInt64() && (v27 = TXTRecordSetValue(&txtRecord, "pw", 4u, "true")) != 0 || (v12 = CFDictionaryGetValue(*(a1 + 80), @"publicKey")) != 0 && (v13 = v12, CFStringGetLength(v12)) && (v27 = _APAdvertiserInfoAddStringToTXTRecord(v13, &txtRecord, "pk")) != 0)
  {
LABEL_47:
    APSLogErrorAt();
    goto LABEL_34;
  }

  v14 = CFDictionaryGetValue(*(a1 + 80), @"transportTypes");
  v27 = _APAdvertiserInfoAddStringToTXTRecord(v14, &txtRecord, "tp");
  if (v27)
  {
    APSLogErrorAt();
    if (gLogCategory_APAdvertiserInfo <= 40 && (gLogCategory_APAdvertiserInfo != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_APAdvertiserInfo, "OSStatus APAdvertiserInfoCopyRAOPData(APAdvertiserInfoRef, CFDataRef *)", 33554472, "Failed to add TransportTypes, which is required. Can't create RAOP data.\n");
    }
  }

  else
  {
    v15 = CFDictionaryGetValue(*(a1 + 80), @"airTunesProtocolVersion");
    v27 = _APAdvertiserInfoAddStringToTXTRecord(v15, &txtRecord, "vn");
    if (!v27)
    {
      v16 = CFDictionaryGetValue(*(a1 + 80), @"airPlayVersion");
      if (!v16 || (v17 = v16, !CFStringGetLength(v16)) || (v27 = _APAdvertiserInfoAddStringToTXTRecord(v17, &txtRecord, "vs")) == 0)
      {
        v18 = CFDictionaryGetValue(*(a1 + 80), @"OSVersion");
        if (!v18 || (v19 = v18, !CFStringGetLength(v18)) || (v27 = _APAdvertiserInfoAddStringToTXTRecord(v19, &txtRecord, "ov")) == 0)
        {
          v20 = CFDictionaryGetInt64Ranged();
          v21 = snprintf(value, 0x100uLL, "%u", v20);
          v27 = TXTRecordSetValue(&txtRecord, "vv", v21, value);
          if (!v27)
          {
            BytesPtr = TXTRecordGetBytesPtr(&txtRecord);
            Length = TXTRecordGetLength(&txtRecord);
            v24 = CFDataCreate(0, BytesPtr, Length);
            if (v24)
            {
              *a2 = v24;
              goto LABEL_34;
            }

            APSLogErrorAt();
            v26 = -6728;
LABEL_46:
            v27 = v26;
            goto LABEL_34;
          }
        }
      }

      goto LABEL_47;
    }

    APSLogErrorAt();
    if (gLogCategory_APAdvertiserInfo <= 40 && (gLogCategory_APAdvertiserInfo != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_APAdvertiserInfo, "OSStatus APAdvertiserInfoCopyRAOPData(APAdvertiserInfoRef, CFDataRef *)", 33554472, "Failed to add AirTunesProtocolVersion, which is required. Can't create RAOP data.\n");
    }
  }

LABEL_34:
  TXTRecordDeallocate(&txtRecord);
  pthread_mutex_unlock((a1 + 16));
  return v27;
}

uint64_t APAdvertiserInfoCreateRAOPServiceName(uint64_t a1, __CFString **a2)
{
  pthread_mutex_lock((a1 + 16));
  Value = CFDictionaryGetValue(*(a1 + 80), @"deviceID");
  v5 = CFDictionaryGetValue(*(a1 + 80), @"deviceName");
  if (Value)
  {
    v6 = v5 == 0;
  }

  else
  {
    v6 = 1;
  }

  if (v6)
  {
    APSLogErrorAt();
LABEL_12:
    v11 = 4294960534;
    goto LABEL_8;
  }

  v7 = v5;
  Length = CFStringGetLength(Value);
  MutableCopy = CFStringCreateMutableCopy(0, Length, Value);
  if (!MutableCopy)
  {
    APSLogErrorAt();
    v11 = 4294960568;
    goto LABEL_8;
  }

  v10 = MutableCopy;
  v13.length = CFStringGetLength(MutableCopy);
  v13.location = 0;
  if (CFStringFindAndReplace(v10, @":", &stru_28512F888, v13, 0) != 5)
  {
    APSLogErrorAt();
    CFRelease(v10);
    goto LABEL_12;
  }

  CFStringAppend(v10, @"@");
  CFStringAppend(v10, v7);
  v11 = 0;
  *a2 = v10;
LABEL_8:
  pthread_mutex_unlock((a1 + 16));
  return v11;
}

uint64_t APAdvertiserInfoDebugShow(uint64_t a1, int a2, uint64_t a3)
{
  if (a3 && a1)
  {
    pthread_mutex_lock((a1 + 16));
    DataBuffer_AppendF(a3, "Advertiser Info: ");
    v6 = *(a1 + 80);
    if (a2)
    {
      v7 = CFCopyDescription(v6);
      DataBuffer_AppendF(a3, "%@", v7);
      pthread_mutex_unlock((a1 + 16));
      if (v7)
      {
        CFRelease(v7);
      }
    }

    else
    {
      Value = CFDictionaryGetValue(v6, @"deviceName");
      DataBuffer_AppendF(a3, "deviceName=%@", Value);
      pthread_mutex_unlock((a1 + 16));
    }

    return 0;
  }

  else
  {
    APSLogErrorAt();
    return 4294960591;
  }
}

__CFDictionary *APAdvertiserInfoCreateTestInfoDictionary()
{
  v0 = *MEMORY[0x277CBECE8];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (IsAppleInternalBuild())
  {
    CFDictionarySetInt64();
    CFDictionarySetInt64();
    CFDictionarySetValue(Mutable, @"bluetoothAddress", @"AA:BB:CC:DD:EE:FF");
    CFDictionarySetValue(Mutable, @"deviceName", @"Name me, please");
    CFDictionarySetValue(Mutable, @"deviceID", @"FF:FF:FF:FF:FF:FF");
    _APAdvertiserInfoSetLegacyFeatures(Mutable, 0xCDE5A7FFFF7);
    CFDictionarySetInt64();
    CFDictionarySetValue(Mutable, @"deviceModel", @"AppleTV5,3");
    CFDictionarySetValue(Mutable, @"deviceEnclosureColor", @"1");
    CFDictionarySetValue(Mutable, @"manufacturer", @"Apple");
    CFDictionarySetValue(Mutable, @"serialNumber", @"ABCD7890WXYZ");
    CFDictionarySetValue(Mutable, @"password", *MEMORY[0x277CBED10]);
    APSVersionUtilsGetShortVersionLength();
    CFDictionarySetCString();
    CFDictionarySetValue(Mutable, @"OSVersion", @"7.2");
    v2 = CFStringCreateWithFormat(v0, 0, @"%u", 65537);
    CFDictionarySetValue(Mutable, @"airTunesProtocolVersion", v2);
    CFRelease(v2);
    CFDictionarySetInt64();
    CFDictionarySetInt64();
    CFDictionarySetValue(Mutable, @"rfc2617DigestAuthKey", *MEMORY[0x277CBED28]);
    CFDictionarySetValue(Mutable, @"transportTypes", @"UDP");
    CFDictionarySetInt64();
  }

  else
  {
    APSLogErrorAt();
  }

  return Mutable;
}

uint64_t APReceiverAudioSessionBufferedHoseCreate(uint64_t a1, const void *a2, _OWORD *a3, const __CFDictionary *a4, uint64_t a5, void *a6)
{
  v110 = *MEMORY[0x277D85DE8];
  updated = 0;
  cf = 0;
  if (gLogCategory_APReceiverAudioSessionBufferedHose <= 30 && (gLogCategory_APReceiverAudioSessionBufferedHose != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APReceiverAudioSessionBufferedHose, "OSStatus APReceiverAudioSessionBufferedHoseCreate(APReceiverAudioSessionRef, CFStringRef, sockaddr_ip, CFDictionaryRef, uint64_t, void **)", 33554462, "%@ Creating buffered audio session\n", a2);
  }

  if (!a6)
  {
    APSLogErrorAt();
    v24 = 0;
    v23 = 0;
    v22 = 0;
    v21 = 0;
    v56 = -6705;
LABEL_127:
    updated = v56;
    goto LABEL_348;
  }

  v12 = malloc_type_calloc(1uLL, 0x168uLL, 0x10600405DA13CB8uLL);
  if (!v12)
  {
    APSLogErrorAt();
    v24 = 0;
    v23 = 0;
    v22 = 0;
    v21 = 0;
    v56 = -72150;
    goto LABEL_127;
  }

  v13 = v12;
  *v12 = a1;
  v12[3] = CFRetain(a2);
  *(v13 + 4) = 103;
  Value = CFDictionaryGetValue(a4, @"ClientID");
  if (Value)
  {
    Value = CFRetain(Value);
  }

  *(v13 + 16) = -1;
  v13[4] = Value;
  *(v13 + 20) = -1;
  v15 = CFDictionaryGetValue(a4, @"NetworkClock");
  if (!v15)
  {
    v13[26] = 0;
LABEL_20:
    APSLogErrorAt();
    goto LABEL_21;
  }

  v16 = CFRetain(v15);
  v13[26] = v16;
  if (!v16)
  {
    goto LABEL_20;
  }

  v17 = CFGetTypeID(v16);
  if (v17 != APSNetworkClockGetTypeID())
  {
    goto LABEL_20;
  }

  v18 = CFDictionaryGetValue(a4, @"AudioFormat");
  if (!v18)
  {
    v13[24] = 0;
    goto LABEL_23;
  }

  v19 = CFRetain(v18);
  v13[24] = v19;
  if (!v19)
  {
LABEL_23:
    APSLogErrorAt();
LABEL_24:
    v21 = 0;
    v22 = 0;
    v23 = 0;
    v24 = 0;
    v25 = -6705;
    goto LABEL_25;
  }

  *(v13 + 116) = CFDictionaryGetInt64() != 0;
  if (updated)
  {
    goto LABEL_140;
  }

  v20 = CFDictionaryGetValue(a4, @"ReceiverSession");
  if (!v20)
  {
    APSLogErrorAt();
    v21 = 0;
    v22 = 0;
    v23 = 0;
    v24 = 0;
    updated = APSSignalErrorAt();
    goto LABEL_347;
  }

  *(v13 + 69) = v20[124];
  APSCopyClusterInfo();
  if (gLogCategory_APReceiverAudioSessionBufferedHose <= 50 && (gLogCategory_APReceiverAudioSessionBufferedHose != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APReceiverAudioSessionBufferedHose, "OSStatus APReceiverAudioSessionBufferedHoseCreate(APReceiverAudioSessionRef, CFStringRef, sockaddr_ip, CFDictionaryRef, uint64_t, void **)", 33554482, "%@ self cluster type %u, sender perceived cluster type %u\n", v13[3], *(v13 + 68), *(v13 + 69));
  }

  v26 = FigCFWeakReferenceHolderCreateWithReferencedObject();
  v13[1] = v26;
  if (!v26)
  {
LABEL_134:
    APSLogErrorAt();
    v21 = 0;
    v22 = 0;
LABEL_135:
    v23 = 0;
LABEL_136:
    v24 = 0;
LABEL_137:
    v25 = -6728;
    goto LABEL_25;
  }

  Int64Ranged = CFDictionaryGetInt64Ranged();
  *(v13 + 10) = Int64Ranged;
  if (Int64Ranged != 1095778640 && Int64Ranged != 1095778644 && Int64Ranged != 1381257248)
  {
    if (gLogCategory_APReceiverAudioSessionBufferedHose <= 90)
    {
      if (gLogCategory_APReceiverAudioSessionBufferedHose == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_21;
        }

        Int64Ranged = *(v13 + 10);
      }

      LogPrintF(&gLogCategory_APReceiverAudioSessionBufferedHose, "OSStatus APReceiverAudioSessionBufferedHoseCreate(APReceiverAudioSessionRef, CFStringRef, sockaddr_ip, CFDictionaryRef, uint64_t, void **)", 33554522, "### %@ audioConnectionType '%C' not supported\n", v13[3], Int64Ranged);
    }

LABEL_21:
    v21 = 0;
    v22 = 0;
    v23 = 0;
    v24 = 0;
    v25 = -72151;
LABEL_25:
    updated = v25;
LABEL_347:
    free(v13);
    goto LABEL_348;
  }

  v28 = FigSimpleMutexCreate();
  v13[29] = v28;
  if (!v28)
  {
    goto LABEL_134;
  }

  v13[32] = a5;
  v13[30] = 0;
  allocator = *MEMORY[0x277CBECE8];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  v13[31] = Mutable;
  if (!Mutable)
  {
    goto LABEL_134;
  }

  *(v13 + 200) = 1;
  if (!CFDictionaryContainsKey(a4, @"MediaDataControl"))
  {
    v22 = 0;
    goto LABEL_54;
  }

  CFArrayGetTypeID();
  TypedValue = CFDictionaryGetTypedValue();
  if (updated)
  {
LABEL_140:
    APSLogErrorAt();
    v21 = 0;
    v22 = 0;
LABEL_405:
    v23 = 0;
    goto LABEL_346;
  }

  Count = CFArrayGetCount(TypedValue);
  if (!Count)
  {
    v103 = a6;
    goto LABEL_45;
  }

  if (Count != 1)
  {
    if (Count == 2)
    {
      CFDataGetTypeID();
      CFArrayGetTypedValueAtIndex();
      goto LABEL_39;
    }

    goto LABEL_24;
  }

LABEL_39:
  v103 = a6;
  CFDataGetTypeID();
  CFArrayGetTypedValueAtIndex();
LABEL_45:
  v32 = CFDictionaryCreateMutable(allocator, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  v22 = v32;
  if (!v32)
  {
LABEL_406:
    APSLogErrorAt();
    v21 = 0;
    goto LABEL_135;
  }

  v33 = MEMORY[0x277CBED28];
  if (!*(v13 + 116))
  {
    v33 = MEMORY[0x277CBED10];
  }

  CFDictionarySetValue(v32, @"MDC::AllowP2P", *v33);
  FigCFDictionarySetValue();
  FigCFDictionarySetValue();
  CFDictionarySetValue(v22, @"MDC::Label", @"BUF");
  CFDictionarySetInt64();
  FigCFDictionarySetInt32();
  *&v105 = a1;
  *(&v105 + 1) = audioSessionBufferedHose_handleMediaDataControlRequest;
  v106 = 0;
  *label = *a3;
  *&label[12] = *(a3 + 12);
  updated = APMediaDataControlServerCreate(label, v22, &v105, v13 + 6);
  if (updated)
  {
    goto LABEL_403;
  }

  if (gLogCategory_APReceiverAudioSessionBufferedHose > 50)
  {
    a6 = v103;
  }

  else
  {
    a6 = v103;
    if (gLogCategory_APReceiverAudioSessionBufferedHose != -1 || _LogCategory_Initialize())
    {
      LogPrintF(&gLogCategory_APReceiverAudioSessionBufferedHose, "OSStatus APReceiverAudioSessionBufferedHoseCreate(APReceiverAudioSessionRef, CFStringRef, sockaddr_ip, CFDictionaryRef, uint64_t, void **)", 33554482, "%@ Created media data control server [%{ptr}]", v13[3], v13[6]);
    }
  }

LABEL_54:
  if (!APSSettingsIsFeatureEnabled())
  {
    if (*(v13 + 10) == 1095778644)
    {
      APSLogErrorAt();
      if (gLogCategory_APReceiverAudioSessionBufferedHose <= 90 && (gLogCategory_APReceiverAudioSessionBufferedHose != -1 || _LogCategory_Initialize()))
      {
        LogPrintF(&gLogCategory_APReceiverAudioSessionBufferedHose, "OSStatus APReceiverAudioSessionBufferedHoseCreate(APReceiverAudioSessionRef, CFStringRef, sockaddr_ip, CFDictionaryRef, uint64_t, void **)", 33554522, "### %@ Error: wrong transport setup, audioConnectionType APAT only works with BufferedNW \n", v13[3]);
      }

      goto LABEL_404;
    }

    *(v13 + 30) = FigGetCFPreferenceNumberWithDefault();
    *(v13 + 124) = 0;
    CFPreferenceNumberWithDefault = FigGetCFPreferenceNumberWithDefault();
    if (CFPreferenceNumberWithDefault)
    {
      v38 = ServerSocketOpen();
      updated = v38;
      v36 = allocator;
      if (gLogCategory_APReceiverAudioSessionBufferedHose <= 50)
      {
        if (gLogCategory_APReceiverAudioSessionBufferedHose != -1 || _LogCategory_Initialize())
        {
          LogPrintF(&gLogCategory_APReceiverAudioSessionBufferedHose, "OSStatus APReceiverAudioSessionBufferedHoseCreate(APReceiverAudioSessionRef, CFStringRef, sockaddr_ip, CFDictionaryRef, uint64_t, void **)", 33554482, "%@ Overriding buffered audio session TCP receive buffer size: %d\n", v13[3], CFPreferenceNumberWithDefault);
        }

        v38 = updated;
      }
    }

    else
    {
      v38 = ServerSocketOpen();
      updated = v38;
      v36 = allocator;
    }

    if (!v38)
    {
      updated = SocketSetP2P();
      if (!updated)
      {
        *(v13 + 28) = 0;
        Int64 = CFDictionaryGetInt64();
        *(v13 + 117) = Int64 != 0;
        if (!updated)
        {
          if (!Int64)
          {
            SocketSetQoS();
          }

          if (gLogCategory_APReceiverAudioSessionBufferedHose <= 30 && (gLogCategory_APReceiverAudioSessionBufferedHose != -1 || _LogCategory_Initialize()))
          {
            v54 = v13[3];
            if (APSAudioFormatDescriptionGetAudioFormatIndex() == 6)
            {
              v55 = "PCM/24000/16/1";
            }

            else if (APSAudioFormatDescriptionGetAudioFormatIndex() == 10)
            {
              v55 = "PCM/44100/16/1";
            }

            else if (APSAudioFormatDescriptionGetAudioFormatIndex() == 11)
            {
              v55 = "PCM/44100/16/2";
            }

            else if (APSAudioFormatDescriptionGetAudioFormatIndex() == 15)
            {
              v55 = "PCM/48000/16/2";
            }

            else if (APSAudioFormatDescriptionGetAudioFormatIndex() == 18)
            {
              v55 = "ALAC/44100/16/2";
            }

            else if (APSAudioFormatDescriptionGetAudioFormatIndex() == 22)
            {
              v55 = "AAC-LC/44100/2";
            }

            else if (APSAudioFormatDescriptionGetAudioFormatIndex() == 24)
            {
              v55 = "AAC-ELD/44100/2";
            }

            else if (APSAudioFormatDescriptionGetAudioFormatIndex() == 2)
            {
              v55 = "PCM/8000/16/1";
            }

            else if (APSAudioFormatDescriptionGetAudioFormatIndex() == 3)
            {
              v55 = "PCM/8000/16/2";
            }

            else
            {
              if (APSAudioFormatDescriptionGetAudioFormatIndex() == 4)
              {
                v55 = "PCM/16000/16/1";
              }

              else if (APSAudioFormatDescriptionGetAudioFormatIndex() == 5)
              {
                v55 = "PCM/16000/16/2";
              }

              else if (APSAudioFormatDescriptionGetAudioFormatIndex() == 7)
              {
                v55 = "PCM/24000/16/2";
              }

              else if (APSAudioFormatDescriptionGetAudioFormatIndex() == 8)
              {
                v55 = "PCM/32000/16/1";
              }

              else if (APSAudioFormatDescriptionGetAudioFormatIndex() == 9)
              {
                v55 = "PCM/32000/16/2";
              }

              else if (APSAudioFormatDescriptionGetAudioFormatIndex() == 12)
              {
                v55 = "PCM/44100/24/1";
              }

              else if (APSAudioFormatDescriptionGetAudioFormatIndex() == 13)
              {
                v55 = "PCM/44100/24/2";
              }

              else if (APSAudioFormatDescriptionGetAudioFormatIndex() == 14)
              {
                v55 = "PCM/48000/16/1";
              }

              else if (APSAudioFormatDescriptionGetAudioFormatIndex() == 16)
              {
                v55 = "PCM/48000/24/1";
              }

              else if (APSAudioFormatDescriptionGetAudioFormatIndex() == 17)
              {
                v55 = "PCM/48000/24/2";
              }

              else if (APSAudioFormatDescriptionGetAudioFormatIndex() == 45)
              {
                v55 = "PCM/48000/32f/1";
              }

              else if (APSAudioFormatDescriptionGetAudioFormatIndex() == 46)
              {
                v55 = "PCM/48000/32f/2";
              }

              else if (APSAudioFormatDescriptionGetAudioFormatIndex() == 44)
              {
                v55 = "PCM/48000/16/5.1";
              }

              else if (APSAudioFormatDescriptionGetAudioFormatIndex() == 38)
              {
                v55 = "PCM/48000/16/5.1.2";
              }

              else if (APSAudioFormatDescriptionGetAudioFormatIndex() == 78)
              {
                v55 = "PCM/48000/16/7.1";
              }

              else if (APSAudioFormatDescriptionGetAudioFormatIndex() == 80)
              {
                v55 = "PCM/48000/16/5.1.4";
              }

              else if (APSAudioFormatDescriptionGetAudioFormatIndex() == 82)
              {
                v55 = "PCM/48000/16/7.1.2";
              }

              else if (APSAudioFormatDescriptionGetAudioFormatIndex() == 84)
              {
                v55 = "PCM/48000/16/7.1.4";
              }

              else if (APSAudioFormatDescriptionGetAudioFormatIndex() == 93)
              {
                v55 = "PCM/48000/16/9.1.6";
              }

              else if (APSAudioFormatDescriptionGetAudioFormatIndex() == 47)
              {
                v55 = "PCM/48000/32f/5.1";
              }

              else if (APSAudioFormatDescriptionGetAudioFormatIndex() == 48)
              {
                v55 = "PCM/48000/32f/5.1.2";
              }

              else if (APSAudioFormatDescriptionGetAudioFormatIndex() == 79)
              {
                v55 = "PCM/48000/32f/7.1";
              }

              else if (APSAudioFormatDescriptionGetAudioFormatIndex() == 81)
              {
                v55 = "PCM/48000/32f/5.1.4";
              }

              else if (APSAudioFormatDescriptionGetAudioFormatIndex() == 83)
              {
                v55 = "PCM/48000/32f/7.1.2";
              }

              else if (APSAudioFormatDescriptionGetAudioFormatIndex() == 69)
              {
                v55 = "PCM/48000/32f/7.1.4";
              }

              else if (APSAudioFormatDescriptionGetAudioFormatIndex() == 94)
              {
                v55 = "PCM/48000/32f/9.1.6";
              }

              else if (APSAudioFormatDescriptionGetAudioFormatIndex() == 85)
              {
                v55 = "ALAC/44100/20/2";
              }

              else if (APSAudioFormatDescriptionGetAudioFormatIndex() == 19)
              {
                v55 = "ALAC/44100/24/2";
              }

              else if (APSAudioFormatDescriptionGetAudioFormatIndex() == 20)
              {
                v55 = "ALAC/48000/16/2";
              }

              else if (APSAudioFormatDescriptionGetAudioFormatIndex() == 86)
              {
                v55 = "ALAC/48000/20/2";
              }

              else if (APSAudioFormatDescriptionGetAudioFormatIndex() == 21)
              {
                v55 = "ALAC/48000/24/2";
              }

              else if (APSAudioFormatDescriptionGetAudioFormatIndex() == 40)
              {
                v55 = "AAC_LC/48000/5.1.2";
              }

              else if (APSAudioFormatDescriptionGetAudioFormatIndex() == 39)
              {
                v55 = "AAC_LC/48000/5.1";
              }

              else if (APSAudioFormatDescriptionGetAudioFormatIndex() == 90)
              {
                v55 = "AAC_LC/48000/7.1";
              }

              else if (APSAudioFormatDescriptionGetAudioFormatIndex() == 23)
              {
                v55 = "AAC-LC/48000/2";
              }

              else if (APSAudioFormatDescriptionGetAudioFormatIndex() == 42)
              {
                v55 = "AAC_ELD/48000/5.1.2";
              }

              else if (APSAudioFormatDescriptionGetAudioFormatIndex() == 41)
              {
                v55 = "AAC_ELD/48000/5.1";
              }

              else if (APSAudioFormatDescriptionGetAudioFormatIndex() == 25)
              {
                v55 = "AAC-ELD/48000/2";
              }

              else if (APSAudioFormatDescriptionGetAudioFormatIndex() == 26)
              {
                v55 = "AAC-ELD/16000/1";
              }

              else if (APSAudioFormatDescriptionGetAudioFormatIndex() == 27)
              {
                v55 = "AAC-ELD/24000/1";
              }

              else if (APSAudioFormatDescriptionGetAudioFormatIndex() == 28)
              {
                v55 = "OPUS/16000/1";
              }

              else if (APSAudioFormatDescriptionGetAudioFormatIndex() == 29)
              {
                v55 = "OPUS/24000/1";
              }

              else if (APSAudioFormatDescriptionGetAudioFormatIndex() == 30)
              {
                v55 = "OPUS/48000/1";
              }

              else if (APSAudioFormatDescriptionGetAudioFormatIndex() == 31)
              {
                v55 = "AAC-ELD/44100/1";
              }

              else if (APSAudioFormatDescriptionGetAudioFormatIndex() == 32)
              {
                v55 = "AAC-ELD/48000/1";
              }

              else if (APSAudioFormatDescriptionGetAudioFormatIndex() == 43)
              {
                v55 = "AAC-ELD/32000/1";
              }

              else if (APSAudioFormatDescriptionGetAudioFormatIndex() == 49)
              {
                v55 = "DDPLUS/48000/2";
              }

              else if (APSAudioFormatDescriptionGetAudioFormatIndex() == 50)
              {
                v55 = "DDPLUS/48000/5.1";
              }

              else if (APSAudioFormatDescriptionGetAudioFormatIndex() == 51)
              {
                v55 = "DDPLUS/48000/5.1.2";
              }

              else if (APSAudioFormatDescriptionGetAudioFormatIndex() == 52)
              {
                v55 = "DDPLUS/48000/7.1.4";
              }

              else if (APSAudioFormatDescriptionGetAudioFormatIndex() == 53)
              {
                v55 = "DDPLUS/48000/9.1.6";
              }

              else if (APSAudioFormatDescriptionGetAudioFormatIndex() == 54)
              {
                v55 = "QAAC/48000/2";
              }

              else if (APSAudioFormatDescriptionGetAudioFormatIndex() == 55)
              {
                v55 = "QAAC/48000/5.1";
              }

              else if (APSAudioFormatDescriptionGetAudioFormatIndex() == 56)
              {
                v55 = "QAAC/48000/5.1.2";
              }

              else if (APSAudioFormatDescriptionGetAudioFormatIndex() == 57)
              {
                v55 = "QAACHE/48000/2";
              }

              else if (APSAudioFormatDescriptionGetAudioFormatIndex() == 58)
              {
                v55 = "QAACHE/48000/5.1";
              }

              else if (APSAudioFormatDescriptionGetAudioFormatIndex() == 60)
              {
                v55 = "QAACHE/48000/5.1.2";
              }

              else if (APSAudioFormatDescriptionGetAudioFormatIndex() == 89)
              {
                v55 = "PAAC/44100/2";
              }

              else if (APSAudioFormatDescriptionGetAudioFormatIndex() == 61)
              {
                v55 = "QLAC/48000/24/2";
              }

              else if (APSAudioFormatDescriptionGetAudioFormatIndex() == 62)
              {
                v55 = "QC3/48000/2";
              }

              else if (APSAudioFormatDescriptionGetAudioFormatIndex() == 63)
              {
                v55 = "QC3/48000/5.1";
              }

              else if (APSAudioFormatDescriptionGetAudioFormatIndex() == 33)
              {
                v55 = "QC3/48000/5.1.2";
              }

              else if (APSAudioFormatDescriptionGetAudioFormatIndex() == 34)
              {
                v55 = "QC3/48000/7.1.4";
              }

              else if (APSAudioFormatDescriptionGetAudioFormatIndex() == 35)
              {
                v55 = "QC3/48000/9.1.6";
              }

              else if (APSAudioFormatDescriptionGetAudioFormatIndex() == 87)
              {
                v55 = "QAC3/48000/5.1";
              }

              else if (APSAudioFormatDescriptionGetAudioFormatIndex() == 88)
              {
                v55 = "QEC3/48000/7.1";
              }

              else if (APSAudioFormatDescriptionGetAudioFormatIndex() == 91)
              {
                v55 = "EAC3/48000/5.1";
              }

              else if (APSAudioFormatDescriptionGetAudioFormatIndex() == 64)
              {
                v55 = "APAC/48000/2";
              }

              else if (APSAudioFormatDescriptionGetAudioFormatIndex() == 65)
              {
                v55 = "APAC/48000/5.1";
              }

              else if (APSAudioFormatDescriptionGetAudioFormatIndex() == 66)
              {
                v55 = "APAC/48000/5.1.2";
              }

              else if (APSAudioFormatDescriptionGetAudioFormatIndex() == 67)
              {
                v55 = "APAC/48000/7.1";
              }

              else if (APSAudioFormatDescriptionGetAudioFormatIndex() == 76)
              {
                v55 = "APAC/48000/5.1.4";
              }

              else if (APSAudioFormatDescriptionGetAudioFormatIndex() == 77)
              {
                v55 = "APAC/48000/7.1.2";
              }

              else if (APSAudioFormatDescriptionGetAudioFormatIndex() == 68)
              {
                v55 = "APAC/48000/7.1.4";
              }

              else if (APSAudioFormatDescriptionGetAudioFormatIndex() == 92)
              {
                v55 = "APAC/48000/9.1.6";
              }

              else if (APSAudioFormatDescriptionGetAudioFormatIndex() == 70)
              {
                v55 = "QAAC/44100/2";
              }

              else if (APSAudioFormatDescriptionGetAudioFormatIndex() == 71)
              {
                v55 = "QAACHE/44100/2";
              }

              else if (APSAudioFormatDescriptionGetAudioFormatIndex() == 72)
              {
                v55 = "QAACHEV2/44100/2";
              }

              else if (APSAudioFormatDescriptionGetAudioFormatIndex() == 73)
              {
                v55 = "QLAC/44100/24/2";
              }

              else if (APSAudioFormatDescriptionGetAudioFormatIndex() == 74)
              {
                v55 = "MP3/44100/2";
              }

              else
              {
                AudioFormatIndex = APSAudioFormatDescriptionGetAudioFormatIndex();
                v55 = "";
                if (AudioFormatIndex == 75)
                {
                  v55 = "MP3/48000/2";
                }
              }

              v36 = allocator;
            }

            LogPrintF(&gLogCategory_APReceiverAudioSessionBufferedHose, "OSStatus APReceiverAudioSessionBufferedHoseCreate(APReceiverAudioSessionRef, CFStringRef, sockaddr_ip, CFDictionaryRef, uint64_t, void **)", 33554462, "%@ audio set up for %s on port %d\n", v54, v55, *(v13 + 27));
          }

          updated = OpenSelfConnectedLoopbackSocket();
          if (!updated)
          {
            v58 = FigSimpleMutexCreate();
            v13[11] = v58;
            if (v58)
            {
              v23 = 0;
              *(v13 + 26) = 36;
              goto LABEL_320;
            }

            goto LABEL_406;
          }
        }
      }
    }

LABEL_403:
    APSLogErrorAt();
LABEL_404:
    v21 = 0;
    goto LABEL_405;
  }

  v34 = CFDictionaryCreateMutable(allocator, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  v23 = v34;
  if (!v34)
  {
    APSLogErrorAt();
    v21 = 0;
    goto LABEL_136;
  }

  v35 = *MEMORY[0x277CBED28];
  CFDictionarySetValue(v34, *MEMORY[0x277CE4E88], *MEMORY[0x277CBED28]);
  CFDictionarySetInt64();
  if (CFDictionaryGetInt64())
  {
    FigCFDictionarySetUInt32();
  }

  if (CFDictionaryGetInt64())
  {
    FigCFDictionarySetUInt32();
  }

  if (*(v13 + 10) == 1095778644)
  {
    CFDictionarySetValue(v23, *MEMORY[0x277CE4E90], v35);
  }

  v36 = allocator;
  updated = APTransportConnectionUnbufferedNWCreate();
  if (updated)
  {
    goto LABEL_120;
  }

  if (gLogCategory_APReceiverAudioSessionBufferedHose <= 50 && (gLogCategory_APReceiverAudioSessionBufferedHose != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APReceiverAudioSessionBufferedHose, "OSStatus APReceiverAudioSessionBufferedHoseCreate(APReceiverAudioSessionRef, CFStringRef, sockaddr_ip, CFDictionaryRef, uint64_t, void **)", 33554482, "%@ Created UnbufferedNW connection [%{ptr}]\n", v13[3], v13[7]);
  }

  v39 = *(v13 + 10);
  v40 = MEMORY[0x277CE4EB0];
  if (v39 != 1095778640)
  {
    v40 = MEMORY[0x277CE4EC8];
  }

  if (v39 == 1095778644)
  {
    v41 = MEMORY[0x277CE4EB8];
  }

  else
  {
    v41 = v40;
  }

  CMBaseObject = APTransportConnectionGetCMBaseObject();
  v43 = *(*(CMBaseObjectGetVTable() + 8) + 56);
  if (!v43)
  {
    updated = -12782;
    goto LABEL_120;
  }

  updated = v43(CMBaseObject, *MEMORY[0x277CE4EF0], *v41);
  if (updated)
  {
    goto LABEL_120;
  }

  DefaultAirPlayMallocZoneCFAllocator = APSAllocatorGetDefaultAirPlayMallocZoneCFAllocator();
  v45 = APTransportConnectionGetCMBaseObject();
  v46 = *(*(CMBaseObjectGetVTable() + 8) + 56);
  if (!v46)
  {
    updated = -12782;
    goto LABEL_120;
  }

  updated = v46(v45, *MEMORY[0x277CE4ED0], DefaultAirPlayMallocZoneCFAllocator);
  if (updated)
  {
    goto LABEL_120;
  }

  v47 = APTransportConnectionGetCMBaseObject();
  v48 = *(*(CMBaseObjectGetVTable() + 8) + 56);
  if (!v48)
  {
    updated = -12782;
    goto LABEL_120;
  }

  updated = v48(v47, *MEMORY[0x277CE4F08], *MEMORY[0x277CBED10]);
  if (updated)
  {
    goto LABEL_120;
  }

  v49 = v13[7];
  v50 = *(*(CMBaseObjectGetVTable() + 16) + 16);
  if (!v50)
  {
    updated = -12782;
    goto LABEL_120;
  }

  updated = v50(v49, v13, audioSessionBufferedHose_handleAudioDataConnectionEvent, 0, 0);
  if (updated)
  {
LABEL_120:
    APSLogErrorAt();
    v21 = 0;
LABEL_346:
    v24 = 0;
    goto LABEL_347;
  }

  v51 = v13[7];
  v52 = *(*(CMBaseObjectGetVTable() + 16) + 8);
  if (!v52)
  {
    updated = -12782;
    goto LABEL_120;
  }

  updated = v52(v51);
  if (updated)
  {
    goto LABEL_120;
  }

  *(v13 + 27) = APSGetFBOPropertyInt64();
  if (updated)
  {
    goto LABEL_120;
  }

LABEL_320:
  v21 = FigCFWeakReferenceHolderCreateWithReferencedObject();
  if (!v21)
  {
    goto LABEL_410;
  }

  if (*(v13 + 10) != 1095778644)
  {
    goto LABEL_340;
  }

  CFDictionaryGetValue(a4, @"EncryptionReadKey");
  CFDictionaryGetValue(a4, @"EncryptionWriteKey");
  APSSettingsGetIntWithDefault();
  updated = APSAudioProtocolDriverReceiverAPATCreate();
  if (updated)
  {
    goto LABEL_345;
  }

  v59 = v13[19];
  APSAudioProtocolDriverHoseDataAPATProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (!ProtocolVTable || (v61 = *(ProtocolVTable + 16)) == 0)
  {
    v80 = -12788;
LABEL_344:
    updated = v80;
    goto LABEL_345;
  }

  v62 = *(v61 + 8);
  if (!v62)
  {
    v80 = -12782;
    goto LABEL_344;
  }

  updated = v62(v59, &gHoseDataRTPCallbacks, v21);
  if (updated)
  {
    goto LABEL_345;
  }

  v63 = v13[19];
  APSAudioProtocolDriverHoseDataAPATProtocolGetProtocolID();
  v64 = CMBaseObjectGetProtocolVTable();
  if (!v64 || (v65 = *(v64 + 16)) == 0)
  {
    v101 = -12788;
LABEL_394:
    updated = v101;
    goto LABEL_345;
  }

  v66 = *(v65 + 24);
  if (!v66)
  {
    v101 = -12782;
    goto LABEL_394;
  }

  updated = v66(v63, &gHoseDataRTCPCallbacks, v21);
  if (updated)
  {
    goto LABEL_345;
  }

  v67 = v13[7];
  v68 = *(*(CMBaseObjectGetVTable() + 16) + 104);
  if (!v68)
  {
    updated = -12782;
    goto LABEL_345;
  }

  updated = v68(v67, audioSessionBufferedHose_readyToSendBatchCallback, v13);
  if (updated)
  {
LABEL_345:
    APSLogErrorAt();
    goto LABEL_346;
  }

  v69 = v13[19];
  v70 = *(CMBaseObjectGetVTable() + 16);
  if (!v70)
  {
    v102 = -12788;
LABEL_408:
    updated = v102;
    goto LABEL_345;
  }

  v71 = *(v70 + 24);
  if (!v71)
  {
    v102 = -12782;
    goto LABEL_408;
  }

  updated = v71(v69, &gProtocolDriverCallbacks, v21);
  if (updated)
  {
    goto LABEL_345;
  }

  v72 = FigSimpleMutexCreate();
  v13[20] = v72;
  if (!v72)
  {
    goto LABEL_410;
  }

  SNPrintF(label, 80, "APReceiverAudioSessionBufferedHose.%{ptr}.tick", *v13);
  v73 = FigDispatchQueueCreateWithPriority();
  v13[22] = v73;
  if (!v73)
  {
    goto LABEL_410;
  }

  v74 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, v73);
  v13[23] = v74;
  if (!v74)
  {
    goto LABEL_410;
  }

  IntWithDefault = APSSettingsGetIntWithDefault();
  dispatch_source_set_timer(v13[23], 0, 1000000 * IntWithDefault, 0xF4240uLL);
  v76 = v13[23];
  v77 = CFRetain(v21);
  dispatch_set_context(v76, v77);
  dispatch_source_set_event_handler_f(v13[23], audioSessionBufferedHose_protocolDriverTickTimerFire);
  dispatch_source_set_cancel_handler_f(v13[23], MEMORY[0x277CBE550]);
  dispatch_resume(v13[23]);
  v36 = allocator;
LABEL_340:
  v78 = FigSimpleMutexCreate();
  v13[17] = v78;
  if (!v78)
  {
LABEL_410:
    APSLogErrorAt();
    goto LABEL_136;
  }

  if (*(v13 + 10) == 1095778644)
  {
    Null = APSCryptorGetNull();
    cf = CFRetain(Null);
    goto LABEL_360;
  }

  CFDictionaryGetValue(a4, @"EncryptionReadKey");
  updated = APSCryptorChaCha20Poly1305Create();
  if (updated)
  {
    goto LABEL_345;
  }

LABEL_360:
  v82 = CFDictionaryCreateMutable(v36, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  v24 = v82;
  if (!v82)
  {
LABEL_412:
    APSLogErrorAt();
    goto LABEL_137;
  }

  v83 = *MEMORY[0x277CBED28];
  CFDictionarySetValue(v82, *MEMORY[0x277CEA138], *MEMORY[0x277CBED28]);
  if (*(v13 + 10) == 1095778644)
  {
    CFDictionarySetValue(v24, *MEMORY[0x277CEA110], v83);
  }

  updated = APSEndpointStreamAudioHoseSBARCreate();
  if (updated)
  {
    goto LABEL_389;
  }

  v84 = *(v13 + 10);
  v85 = v13[16];
  APSEndpointStreamAudioHoseProtocolGetProtocolID();
  v86 = CMBaseObjectGetProtocolVTable();
  if (v84 != 1095778644)
  {
    if (v86 && (v89 = *(v86 + 16)) != 0)
    {
      v90 = *(v89 + 56);
      if (v90)
      {
        updated = v90(v85, &gHoseRegistrarCopyFromTransportCallbacks, v21);
        if (!updated)
        {
          goto LABEL_374;
        }

LABEL_389:
        APSLogErrorAt();
        goto LABEL_347;
      }

      v100 = -12782;
    }

    else
    {
      v100 = -12788;
    }

    updated = v100;
    goto LABEL_389;
  }

  if (!v86 || (v87 = *(v86 + 16)) == 0)
  {
    v99 = -12788;
LABEL_386:
    updated = v99;
    goto LABEL_389;
  }

  v88 = *(v87 + 56);
  if (!v88)
  {
    v99 = -12782;
    goto LABEL_386;
  }

  updated = v88(v85, &gHoseRegistrarCopyFromProtocolDriverCallbacks, v21);
  if (updated)
  {
    goto LABEL_389;
  }

LABEL_374:
  if (!v13[7])
  {
    CMNotificationCenterGetDefaultLocalCenter();
    updated = FigNotificationCenterAddWeakListener();
    if (updated)
    {
      goto LABEL_389;
    }
  }

  CMNotificationCenterGetDefaultLocalCenter();
  updated = FigNotificationCenterAddWeakListener();
  if (updated)
  {
    goto LABEL_389;
  }

  CMNotificationCenterGetDefaultLocalCenter();
  updated = FigNotificationCenterAddWeakListener();
  if (updated)
  {
    goto LABEL_389;
  }

  if (!v13[7])
  {
    updated = audioSessionBufferedHose_updateNetworkThreadPriority(v13);
    if (updated)
    {
      goto LABEL_389;
    }
  }

  SNPrintF(label, 80, "APReceiverAudioSessionBufferedHose.%{ptr}.glitch", *v13, v13 + 16);
  v91 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_UTILITY, 0);
  v92 = dispatch_queue_create(label, v91);
  v13[35] = v92;
  if (!v92)
  {
    goto LABEL_412;
  }

  v93 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, v92);
  v13[36] = v93;
  if (!v93)
  {
    goto LABEL_412;
  }

  dispatch_source_set_timer(v93, 0, 0x3B9ACA00uLL, 0x5F5E100uLL);
  v94 = v13[36];
  v95 = CFRetain(v21);
  dispatch_set_context(v94, v95);
  dispatch_source_set_event_handler_f(v13[36], audioSessionBufferedHose_glitchMonitorTimerFire);
  dispatch_source_set_cancel_handler_f(v13[36], MEMORY[0x277CBE550]);
  dispatch_resume(v13[36]);
  CMNotificationCenterGetDefaultLocalCenter();
  FigNotificationCenterAddWeakListener();
  CMNotificationCenterGetDefaultLocalCenter();
  FigNotificationCenterAddWeakListener();
  APSRTCReportingAgentCreate();
  updated = 0;
  if (gLogCategory_APReceiverAudioSessionBufferedHose <= 50 && (gLogCategory_APReceiverAudioSessionBufferedHose != -1 || _LogCategory_Initialize()))
  {
    v96 = v13[3];
    v97 = *(v13 + 10);
    APSAudioFormatDescriptionGetSampleRate();
    LogPrintF(&gLogCategory_APReceiverAudioSessionBufferedHose, "OSStatus APReceiverAudioSessionBufferedHoseCreate(APReceiverAudioSessionRef, CFStringRef, sockaddr_ip, CFDictionaryRef, uint64_t, void **)", 33554482, "%@ Setup buffered audio session audioConnectionType: '%C' sampleRate: %d for client: '%@'\n", v96, v97, v98, v13[4]);
  }

  *a6 = v13;
LABEL_348:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v21)
  {
    CFRelease(v21);
  }

  if (v23)
  {
    CFRelease(v23);
  }

  if (v22)
  {
    CFRelease(v22);
  }

  if (v24)
  {
    CFRelease(v24);
  }

  return updated;
}

uint64_t audioSessionBufferedHose_updateNetworkThreadPriority(uint64_t a1)
{
  cf = 0;
  if (*(a1 + 56))
  {
    APSLogErrorAt();
    v10 = -72153;
    goto LABEL_16;
  }

  v2 = *(a1 + 128);
  v3 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v3)
  {
    v10 = -12782;
LABEL_10:
    APSLogErrorAt();
    goto LABEL_16;
  }

  v10 = v3(v2, *MEMORY[0x277CEA1A0], *MEMORY[0x277CBECE8], &cf);
  if (v10)
  {
    goto LABEL_10;
  }

  v4 = CFGetInt64Ranged();
  if (v10)
  {
    goto LABEL_10;
  }

  FigSimpleMutexLock();
  if (*(a1 + 104) != v4)
  {
    if (gLogCategory_APReceiverAudioSessionBufferedHose <= 50 && (gLogCategory_APReceiverAudioSessionBufferedHose != -1 || _LogCategory_Initialize()))
    {
      v5 = *(a1 + 24);
      MachThreadPriorityValue = FigThreadGetMachThreadPriorityValue();
      v7 = FigThreadGetMachThreadPriorityValue();
      LogPrintF(&gLogCategory_APReceiverAudioSessionBufferedHose, "OSStatus audioSessionBufferedHose_updateNetworkThreadPriority(APReceiverAudioSessionBufferedHoseRef)", 33554482, "%@ Updating network thread priority(%d -> %d)\n", v5, MachThreadPriorityValue, v7);
    }

    if (*(a1 + 96) && (v10 = FigThreadSetProperty()) != 0)
    {
      APSLogErrorAt();
    }

    else
    {
      *(a1 + 104) = v4;
    }
  }

  FigSimpleMutexUnlock();
LABEL_16:
  if (cf)
  {
    CFRelease(cf);
  }

  return v10;
}

uint64_t audioSessionBufferedHose_handleUnderrunNotification(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a2 + 40);
  result = mach_absolute_time();
  if (v3)
  {
    v5 = result;
    result = FigCFEqual();
    if (result)
    {
      if (gLogCategory_APReceiverAudioSessionBufferedHose <= 90)
      {
        if (gLogCategory_APReceiverAudioSessionBufferedHose != -1 || (result = _LogCategory_Initialize(), result))
        {
          result = LogPrintF(&gLogCategory_APReceiverAudioSessionBufferedHose, "void audioSessionBufferedHose_handleUnderrunNotification(CMNotificationCenterRef, const void *, CFStringRef, const void *, CFTypeRef)", 33554522, "### %@ Glitch: Underrun Began\n", v3[3]);
        }
      }

      v3[38] = v5;
    }

    else
    {
      result = FigCFEqual();
      if (result && v3[38])
      {
        if (gLogCategory_APReceiverAudioSessionBufferedHose <= 50 && (gLogCategory_APReceiverAudioSessionBufferedHose != -1 || _LogCategory_Initialize()))
        {
          LogPrintF(&gLogCategory_APReceiverAudioSessionBufferedHose, "void audioSessionBufferedHose_handleUnderrunNotification(CMNotificationCenterRef, const void *, CFStringRef, const void *, CFTypeRef)", 33554482, "%@ Glitch: Underrun Ended\n", v3[3]);
        }

        ++v3[40];
        if (!v3[43])
        {
          v3[43] = v3[38];
        }

        v3[38] = 0;

        return audioSessionBufferedHose_updateGlitchyMinutes(v3);
      }
    }
  }

  return result;
}

unint64_t audioSessionBufferedHose_updateGlitchyMinutes(void *a1)
{
  v2 = mach_absolute_time();
  v3 = v2;
  if (a1[37])
  {
    v4 = a1[42];
  }

  else
  {
    v4 = a1[27];
    a1[37] = v4;
    a1[41] = 1;
    a1[42] = v4;
  }

  result = v2 - v4;
  if (v3 > v4)
  {
    result = UpTicksToSeconds();
    if (result >= 0x3C)
    {
      if (a1[43])
      {
        UpTicksToSecondsF();
        v7 = vcvtpd_u64_f64(v6 / 60.0);
        v8 = a1[41];
        if (v8 - a1[44] < v7)
        {
          v7 = v8 - a1[44];
        }

        a1[39] += v7;
        a1[44] = v8;
      }

      else
      {
        v8 = a1[41];
      }

      a1[42] = v3;
      a1[43] = 0;
      a1[41] = v8 + 1;
      result = UpTicksToSeconds();
      if (gLogCategory_APReceiverAudioSessionBufferedHose <= 50)
      {
        v9 = result;
        if (gLogCategory_APReceiverAudioSessionBufferedHose != -1)
        {
          return LogPrintF(&gLogCategory_APReceiverAudioSessionBufferedHose, "void audioSessionBufferedHose_updateGlitchyMinutes(APReceiverAudioSessionBufferedHoseRef)", 33554482, "%@ %lld glitches in %lld of %lld minute(s) (%lld%% glitchy)\n", a1[3], a1[40], a1[39], v9 / 0x3C, 100 * a1[39] / (v9 / 0x3C));
        }

        result = _LogCategory_Initialize();
        if (result)
        {
          return LogPrintF(&gLogCategory_APReceiverAudioSessionBufferedHose, "void audioSessionBufferedHose_updateGlitchyMinutes(APReceiverAudioSessionBufferedHoseRef)", 33554482, "%@ %lld glitches in %lld of %lld minute(s) (%lld%% glitchy)\n", a1[3], a1[40], a1[39], v9 / 0x3C, 100 * a1[39] / (v9 / 0x3C));
        }
      }
    }
  }

  return result;
}

void audioSessionBufferedHose_glitchMonitorTimerFire(uint64_t a1)
{
  v1 = FigCFWeakReferenceHolderCopyReferencedObject();
  if (v1)
  {
    v2 = v1;
    v3 = *(v1 + 40);
    if (v3)
    {
      audioSessionBufferedHose_updateGlitchyMinutes(v3);
    }

    CFRelease(v2);
  }
}

uint64_t audioSessionBufferedHose_cryptorNoLongerUsedNotification(int a1, uint64_t a2, int a3, int a4, CFTypeRef cf)
{
  v5 = *(a2 + 40);
  value = 0;
  if (cf && (v6 = CFGetTypeID(cf), v6 == CFDictionaryGetTypeID()) && (v7 = FigCFDictionaryGetValue()) != 0)
  {
    v8 = v7;
    UInt64 = FigCFNumberGetUInt64();
    FigSimpleMutexLock();
    if (CFDictionaryGetValueIfPresent(*(v5 + 248), v8, &value))
    {
      if (gLogCategory_APReceiverAudioSessionBufferedHose <= 50 && (gLogCategory_APReceiverAudioSessionBufferedHose != -1 || _LogCategory_Initialize()))
      {
        LogPrintF(&gLogCategory_APReceiverAudioSessionBufferedHose, "void audioSessionBufferedHose_cryptorNoLongerUsedNotification(CMNotificationCenterRef, const void *, CFStringRef, const void *, CFTypeRef)", 33554482, "[%{ptr}] Removing cryptor [%{ptr}] with cryptorID 0x%llx", v5, value, UInt64);
      }

      CFDictionaryRemoveValue(*(v5 + 248), v8);
    }

    else if (gLogCategory_APReceiverAudioSessionBufferedHose <= 50 && (gLogCategory_APReceiverAudioSessionBufferedHose != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_APReceiverAudioSessionBufferedHose, "void audioSessionBufferedHose_cryptorNoLongerUsedNotification(CMNotificationCenterRef, const void *, CFStringRef, const void *, CFTypeRef)", 33554482, "[%{ptr}] Cryptor with ID 0x%llx not stored", v5, UInt64);
    }
  }

  else
  {
    APSLogErrorAt();
  }

  return FigSimpleMutexUnlock();
}

uint64_t audioSessionBufferedHose_audioFormatChangedNotification(int a1, uint64_t a2, int a3, int a4, CFTypeRef cf)
{
  v5 = *(a2 + 40);
  if (!cf || (v6 = CFGetTypeID(cf), v6 != CFDictionaryGetTypeID()))
  {

    return APSLogErrorAt();
  }

  if (!FigCFDictionaryGetValueIfPresent())
  {
    return APSLogErrorAt();
  }

  v7 = v5[24];
  v5[24] = 0;
  if (v7)
  {
    CFRelease(v7);
  }

  ChannelCount = APSAudioFormatDescriptionGetChannelCount();
  v11 = *v5;
  if (ChannelCount < 3)
  {
    if (APReceiverAudioSessionPlatformSetProperty(v11, v8, @"RASP::PrefersMultiChannel", v9, *MEMORY[0x277CBED10]))
    {
      return APSLogErrorAt();
    }
  }

  else if (APReceiverAudioSessionPlatformSetProperty(v11, v8, @"RASP::PrefersMultiChannel", v9, *MEMORY[0x277CBED28]))
  {
    return APSLogErrorAt();
  }

  result = audioSessionBufferedHose_updatePreferredAudioFormat(v5);
  if (result)
  {
    return APSLogErrorAt();
  }

  if (gLogCategory_APReceiverAudioSessionBufferedHose <= 50)
  {
    if (gLogCategory_APReceiverAudioSessionBufferedHose != -1 || (result = _LogCategory_Initialize(), result))
    {
      if (APSAudioFormatDescriptionGetAudioFormatIndex() == 6)
      {
        v13 = "PCM/24000/16/1";
      }

      else if (APSAudioFormatDescriptionGetAudioFormatIndex() == 10)
      {
        v13 = "PCM/44100/16/1";
      }

      else if (APSAudioFormatDescriptionGetAudioFormatIndex() == 11)
      {
        v13 = "PCM/44100/16/2";
      }

      else if (APSAudioFormatDescriptionGetAudioFormatIndex() == 15)
      {
        v13 = "PCM/48000/16/2";
      }

      else if (APSAudioFormatDescriptionGetAudioFormatIndex() == 18)
      {
        v13 = "ALAC/44100/16/2";
      }

      else if (APSAudioFormatDescriptionGetAudioFormatIndex() == 22)
      {
        v13 = "AAC-LC/44100/2";
      }

      else if (APSAudioFormatDescriptionGetAudioFormatIndex() == 24)
      {
        v13 = "AAC-ELD/44100/2";
      }

      else if (APSAudioFormatDescriptionGetAudioFormatIndex() == 2)
      {
        v13 = "PCM/8000/16/1";
      }

      else if (APSAudioFormatDescriptionGetAudioFormatIndex() == 3)
      {
        v13 = "PCM/8000/16/2";
      }

      else if (APSAudioFormatDescriptionGetAudioFormatIndex() == 4)
      {
        v13 = "PCM/16000/16/1";
      }

      else if (APSAudioFormatDescriptionGetAudioFormatIndex() == 5)
      {
        v13 = "PCM/16000/16/2";
      }

      else if (APSAudioFormatDescriptionGetAudioFormatIndex() == 7)
      {
        v13 = "PCM/24000/16/2";
      }

      else if (APSAudioFormatDescriptionGetAudioFormatIndex() == 8)
      {
        v13 = "PCM/32000/16/1";
      }

      else if (APSAudioFormatDescriptionGetAudioFormatIndex() == 9)
      {
        v13 = "PCM/32000/16/2";
      }

      else if (APSAudioFormatDescriptionGetAudioFormatIndex() == 12)
      {
        v13 = "PCM/44100/24/1";
      }

      else if (APSAudioFormatDescriptionGetAudioFormatIndex() == 13)
      {
        v13 = "PCM/44100/24/2";
      }

      else if (APSAudioFormatDescriptionGetAudioFormatIndex() == 14)
      {
        v13 = "PCM/48000/16/1";
      }

      else if (APSAudioFormatDescriptionGetAudioFormatIndex() == 16)
      {
        v13 = "PCM/48000/24/1";
      }

      else if (APSAudioFormatDescriptionGetAudioFormatIndex() == 17)
      {
        v13 = "PCM/48000/24/2";
      }

      else if (APSAudioFormatDescriptionGetAudioFormatIndex() == 45)
      {
        v13 = "PCM/48000/32f/1";
      }

      else if (APSAudioFormatDescriptionGetAudioFormatIndex() == 46)
      {
        v13 = "PCM/48000/32f/2";
      }

      else if (APSAudioFormatDescriptionGetAudioFormatIndex() == 44)
      {
        v13 = "PCM/48000/16/5.1";
      }

      else if (APSAudioFormatDescriptionGetAudioFormatIndex() == 38)
      {
        v13 = "PCM/48000/16/5.1.2";
      }

      else if (APSAudioFormatDescriptionGetAudioFormatIndex() == 78)
      {
        v13 = "PCM/48000/16/7.1";
      }

      else if (APSAudioFormatDescriptionGetAudioFormatIndex() == 80)
      {
        v13 = "PCM/48000/16/5.1.4";
      }

      else if (APSAudioFormatDescriptionGetAudioFormatIndex() == 82)
      {
        v13 = "PCM/48000/16/7.1.2";
      }

      else if (APSAudioFormatDescriptionGetAudioFormatIndex() == 84)
      {
        v13 = "PCM/48000/16/7.1.4";
      }

      else if (APSAudioFormatDescriptionGetAudioFormatIndex() == 93)
      {
        v13 = "PCM/48000/16/9.1.6";
      }

      else if (APSAudioFormatDescriptionGetAudioFormatIndex() == 47)
      {
        v13 = "PCM/48000/32f/5.1";
      }

      else if (APSAudioFormatDescriptionGetAudioFormatIndex() == 48)
      {
        v13 = "PCM/48000/32f/5.1.2";
      }

      else if (APSAudioFormatDescriptionGetAudioFormatIndex() == 79)
      {
        v13 = "PCM/48000/32f/7.1";
      }

      else if (APSAudioFormatDescriptionGetAudioFormatIndex() == 81)
      {
        v13 = "PCM/48000/32f/5.1.4";
      }

      else if (APSAudioFormatDescriptionGetAudioFormatIndex() == 83)
      {
        v13 = "PCM/48000/32f/7.1.2";
      }

      else if (APSAudioFormatDescriptionGetAudioFormatIndex() == 69)
      {
        v13 = "PCM/48000/32f/7.1.4";
      }

      else if (APSAudioFormatDescriptionGetAudioFormatIndex() == 94)
      {
        v13 = "PCM/48000/32f/9.1.6";
      }

      else if (APSAudioFormatDescriptionGetAudioFormatIndex() == 85)
      {
        v13 = "ALAC/44100/20/2";
      }

      else if (APSAudioFormatDescriptionGetAudioFormatIndex() == 19)
      {
        v13 = "ALAC/44100/24/2";
      }

      else if (APSAudioFormatDescriptionGetAudioFormatIndex() == 20)
      {
        v13 = "ALAC/48000/16/2";
      }

      else if (APSAudioFormatDescriptionGetAudioFormatIndex() == 86)
      {
        v13 = "ALAC/48000/20/2";
      }

      else if (APSAudioFormatDescriptionGetAudioFormatIndex() == 21)
      {
        v13 = "ALAC/48000/24/2";
      }

      else if (APSAudioFormatDescriptionGetAudioFormatIndex() == 40)
      {
        v13 = "AAC_LC/48000/5.1.2";
      }

      else if (APSAudioFormatDescriptionGetAudioFormatIndex() == 39)
      {
        v13 = "AAC_LC/48000/5.1";
      }

      else if (APSAudioFormatDescriptionGetAudioFormatIndex() == 90)
      {
        v13 = "AAC_LC/48000/7.1";
      }

      else if (APSAudioFormatDescriptionGetAudioFormatIndex() == 23)
      {
        v13 = "AAC-LC/48000/2";
      }

      else if (APSAudioFormatDescriptionGetAudioFormatIndex() == 42)
      {
        v13 = "AAC_ELD/48000/5.1.2";
      }

      else if (APSAudioFormatDescriptionGetAudioFormatIndex() == 41)
      {
        v13 = "AAC_ELD/48000/5.1";
      }

      else if (APSAudioFormatDescriptionGetAudioFormatIndex() == 25)
      {
        v13 = "AAC-ELD/48000/2";
      }

      else if (APSAudioFormatDescriptionGetAudioFormatIndex() == 26)
      {
        v13 = "AAC-ELD/16000/1";
      }

      else if (APSAudioFormatDescriptionGetAudioFormatIndex() == 27)
      {
        v13 = "AAC-ELD/24000/1";
      }

      else if (APSAudioFormatDescriptionGetAudioFormatIndex() == 28)
      {
        v13 = "OPUS/16000/1";
      }

      else if (APSAudioFormatDescriptionGetAudioFormatIndex() == 29)
      {
        v13 = "OPUS/24000/1";
      }

      else if (APSAudioFormatDescriptionGetAudioFormatIndex() == 30)
      {
        v13 = "OPUS/48000/1";
      }

      else if (APSAudioFormatDescriptionGetAudioFormatIndex() == 31)
      {
        v13 = "AAC-ELD/44100/1";
      }

      else if (APSAudioFormatDescriptionGetAudioFormatIndex() == 32)
      {
        v13 = "AAC-ELD/48000/1";
      }

      else if (APSAudioFormatDescriptionGetAudioFormatIndex() == 43)
      {
        v13 = "AAC-ELD/32000/1";
      }

      else if (APSAudioFormatDescriptionGetAudioFormatIndex() == 49)
      {
        v13 = "DDPLUS/48000/2";
      }

      else if (APSAudioFormatDescriptionGetAudioFormatIndex() == 50)
      {
        v13 = "DDPLUS/48000/5.1";
      }

      else if (APSAudioFormatDescriptionGetAudioFormatIndex() == 51)
      {
        v13 = "DDPLUS/48000/5.1.2";
      }

      else if (APSAudioFormatDescriptionGetAudioFormatIndex() == 52)
      {
        v13 = "DDPLUS/48000/7.1.4";
      }

      else if (APSAudioFormatDescriptionGetAudioFormatIndex() == 53)
      {
        v13 = "DDPLUS/48000/9.1.6";
      }

      else if (APSAudioFormatDescriptionGetAudioFormatIndex() == 54)
      {
        v13 = "QAAC/48000/2";
      }

      else if (APSAudioFormatDescriptionGetAudioFormatIndex() == 55)
      {
        v13 = "QAAC/48000/5.1";
      }

      else if (APSAudioFormatDescriptionGetAudioFormatIndex() == 56)
      {
        v13 = "QAAC/48000/5.1.2";
      }

      else if (APSAudioFormatDescriptionGetAudioFormatIndex() == 57)
      {
        v13 = "QAACHE/48000/2";
      }

      else if (APSAudioFormatDescriptionGetAudioFormatIndex() == 58)
      {
        v13 = "QAACHE/48000/5.1";
      }

      else if (APSAudioFormatDescriptionGetAudioFormatIndex() == 60)
      {
        v13 = "QAACHE/48000/5.1.2";
      }

      else if (APSAudioFormatDescriptionGetAudioFormatIndex() == 89)
      {
        v13 = "PAAC/44100/2";
      }

      else if (APSAudioFormatDescriptionGetAudioFormatIndex() == 61)
      {
        v13 = "QLAC/48000/24/2";
      }

      else if (APSAudioFormatDescriptionGetAudioFormatIndex() == 62)
      {
        v13 = "QC3/48000/2";
      }

      else if (APSAudioFormatDescriptionGetAudioFormatIndex() == 63)
      {
        v13 = "QC3/48000/5.1";
      }

      else if (APSAudioFormatDescriptionGetAudioFormatIndex() == 33)
      {
        v13 = "QC3/48000/5.1.2";
      }

      else if (APSAudioFormatDescriptionGetAudioFormatIndex() == 34)
      {
        v13 = "QC3/48000/7.1.4";
      }

      else if (APSAudioFormatDescriptionGetAudioFormatIndex() == 35)
      {
        v13 = "QC3/48000/9.1.6";
      }

      else if (APSAudioFormatDescriptionGetAudioFormatIndex() == 87)
      {
        v13 = "QAC3/48000/5.1";
      }

      else if (APSAudioFormatDescriptionGetAudioFormatIndex() == 88)
      {
        v13 = "QEC3/48000/7.1";
      }

      else if (APSAudioFormatDescriptionGetAudioFormatIndex() == 91)
      {
        v13 = "EAC3/48000/5.1";
      }

      else if (APSAudioFormatDescriptionGetAudioFormatIndex() == 64)
      {
        v13 = "APAC/48000/2";
      }

      else if (APSAudioFormatDescriptionGetAudioFormatIndex() == 65)
      {
        v13 = "APAC/48000/5.1";
      }

      else if (APSAudioFormatDescriptionGetAudioFormatIndex() == 66)
      {
        v13 = "APAC/48000/5.1.2";
      }

      else if (APSAudioFormatDescriptionGetAudioFormatIndex() == 67)
      {
        v13 = "APAC/48000/7.1";
      }

      else if (APSAudioFormatDescriptionGetAudioFormatIndex() == 76)
      {
        v13 = "APAC/48000/5.1.4";
      }

      else if (APSAudioFormatDescriptionGetAudioFormatIndex() == 77)
      {
        v13 = "APAC/48000/7.1.2";
      }

      else if (APSAudioFormatDescriptionGetAudioFormatIndex() == 68)
      {
        v13 = "APAC/48000/7.1.4";
      }

      else if (APSAudioFormatDescriptionGetAudioFormatIndex() == 92)
      {
        v13 = "APAC/48000/9.1.6";
      }

      else if (APSAudioFormatDescriptionGetAudioFormatIndex() == 70)
      {
        v13 = "QAAC/44100/2";
      }

      else if (APSAudioFormatDescriptionGetAudioFormatIndex() == 71)
      {
        v13 = "QAACHE/44100/2";
      }

      else if (APSAudioFormatDescriptionGetAudioFormatIndex() == 72)
      {
        v13 = "QAACHEV2/44100/2";
      }

      else if (APSAudioFormatDescriptionGetAudioFormatIndex() == 73)
      {
        v13 = "QLAC/44100/24/2";
      }

      else if (APSAudioFormatDescriptionGetAudioFormatIndex() == 74)
      {
        v13 = "MP3/44100/2";
      }

      else
      {
        AudioFormatIndex = APSAudioFormatDescriptionGetAudioFormatIndex();
        v13 = "";
        if (AudioFormatIndex == 75)
        {
          v13 = "MP3/48000/2";
        }
      }

      return LogPrintF(&gLogCategory_APReceiverAudioSessionBufferedHose, "void audioSessionBufferedHose_audioFormatChangedNotification(CMNotificationCenterRef, const void *, CFStringRef, const void *, CFTypeRef)", 33554482, "[%{ptr}] AudioFormat changed to %s", v5, v13);
    }
  }

  return result;
}

uint64_t audioSessionBufferedHose_updatePreferredAudioFormat(uint64_t a1)
{
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (Mutable)
  {
    v3 = Mutable;
    APSAudioFormatDescriptionGetChannelLayoutTag();
    if (APSAudioFormatDoesAudioChannelLayoutTagHaveHeights() && *(a1 + 200) || (FigCFDictionarySetInt64(), APSAudioFormatDescriptionGetChannelCount() > 7) || APSAudioFormatDescriptionGetChannelCount() >= 6)
    {
      FigCFDictionarySetInt64();
    }

    v6 = APReceiverAudioSessionPlatformSetProperty(*a1, v4, @"RASP::PreferredAudioFormat", v5, v3);
    CFRelease(v3);
    return v6;
  }

  else
  {
    APSLogErrorAt();
    return 4294960568;
  }
}

uint64_t audioSessionBufferedHose_handleBufferingPriorityChangedNotification(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 40);
  if (result)
  {
    return audioSessionBufferedHose_updateNetworkThreadPriority(result);
  }

  return result;
}

uint64_t audioSessionBufferedHose_copyAudioDataBBufsCallback(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = FigCFWeakReferenceHolderCopyReferencedObject();
  if (v4)
  {
    v5 = v4;
    v6 = *(v4 + 40);
    FigSimpleMutexLock();
    *a3 = *(v6 + 144);
    *(v6 + 144) = 0;
    FigSimpleMutexUnlock();
    if (*(v6 + 56))
    {
      CMBaseObject = APTransportConnectionGetCMBaseObject();
      v8 = *(*(CMBaseObjectGetVTable() + 8) + 56);
      if (v8)
      {
        v8(CMBaseObject, *MEMORY[0x277CE4F08], *MEMORY[0x277CBED28]);
      }
    }

    else
    {
      audioSessionBufferedHose_resumeNetworkReads(v6);
    }

    CFRelease(v5);
  }

  return 0;
}

uint64_t audioSessionBufferedHose_resumeNetworkReads(uint64_t result)
{
  if (result)
  {
    v1 = result;
    if (*(result + 56))
    {
      goto LABEL_10;
    }

    if (!*(result + 124))
    {
      if (gLogCategory_APReceiverAudioSessionBufferedHose <= 20 && (gLogCategory_APReceiverAudioSessionBufferedHose != -1 || _LogCategory_Initialize()))
      {
        LogPrintF(&gLogCategory_APReceiverAudioSessionBufferedHose, "OSStatus audioSessionBufferedHose_resumeNetworkReads(APReceiverAudioSessionBufferedHoseRef)", 33554452, "%@ Resuming network reads.\n", *(v1 + 24));
      }

      *(v1 + 124) = 1;
      result = SendSelfConnectedLoopbackMessage();
      if (result)
      {
LABEL_10:

        return APSLogErrorAt();
      }
    }
  }

  return result;
}

uint64_t audioSessionBufferedHose_copyProtocolDriverDataBBufsCallback(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = FigCFWeakReferenceHolderCopyReferencedObject();
  if (v4)
  {
    v5 = v4;
    v6 = *(*(v4 + 40) + 152);
    v7 = *(CMBaseObjectGetVTable() + 16);
    if (!v7 || (v8 = *(v7 + 32)) == 0 || v8(v6, a3))
    {
      APSLogErrorAt();
    }

    CFRelease(v5);
  }

  return 0;
}

void audioSessionBufferedHose_protocolDriverTickTimerFire(uint64_t a1)
{
  v1 = FigCFWeakReferenceHolderCopyReferencedObject();
  if (v1)
  {
    v2 = v1;
    v3 = *(v1 + 40);
    if (v3)
    {
      v4 = *(v3 + 152);
      v5 = *(CMBaseObjectGetVTable() + 16);
      if (!v5 || (v6 = *(v5 + 8)) == 0 || (v7 = *MEMORY[0x277CC0898], v8 = *(MEMORY[0x277CC0898] + 16), v6(v4, &v7, 0)))
      {
        APSLogErrorAt();
      }
    }

    CFRelease(v2);
  }
}

uint64_t audioSessionBufferedHose_protocolDriverReceiverAudioDataAvailableCallback(uint64_t a1, uint64_t a2)
{
  v2 = FigCFWeakReferenceHolderCopyReferencedObject();
  if (v2)
  {
    v3 = v2;
    v4 = *(*(v2 + 40) + 128);
    APSEndpointStreamAudioHoseProtocolGetProtocolID();
    ProtocolVTable = CMBaseObjectGetProtocolVTable();
    if (!ProtocolVTable || (v6 = *(ProtocolVTable + 16)) == 0 || (v7 = *(v6 + 40)) == 0 || v7(v4))
    {
      APSLogErrorAt();
    }

    CFRelease(v3);
  }

  return 0;
}

void audioSessionBufferedHose_readyToSendBatchCallback(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, void **), void *a4)
{
  v17 = 0;
  value = 0;
  if (!a3)
  {
    APSLogErrorAt();
    v11 = 0;
    v17 = APSSignalErrorAt();
    if (!a4)
    {
      goto LABEL_21;
    }

    goto LABEL_17;
  }

  if (!a4)
  {
    APSLogErrorAt();
    v11 = 0;
    v17 = APSSignalErrorAt();
    goto LABEL_21;
  }

  FigSimpleMutexLock();
  v7 = *(a1 + 168);
  if (v7 && (Count = CFArrayGetCount(v7), Count >= 1))
  {
    v9 = *MEMORY[0x277CBECE8];
    Mutable = CFArrayCreateMutable(*MEMORY[0x277CBECE8], Count, MEMORY[0x277CBF128]);
    if (Mutable)
    {
      v11 = Mutable;
      while (CFArrayGetCount(*(a1 + 168)))
      {
        CMBlockBufferGetTypeID();
        TypedValueAtIndex = CFArrayGetTypedValueAtIndex();
        if (v17 || (v17 = a3(v9, &value)) != 0)
        {
          APSLogErrorAt();
          break;
        }

        v13 = value;
        v14 = *(*(CMBaseObjectGetVTable() + 16) + 16);
        if (v14)
        {
          v14(v13, TypedValueAtIndex);
        }

        CFArrayAppendValue(v11, value);
        if (value)
        {
          CFRelease(value);
          value = 0;
        }

        CFArrayRemoveValueAtIndex(*(a1 + 168), 0);
      }
    }

    else
    {
      APSLogErrorAt();
      v11 = 0;
      v17 = APSSignalErrorAt();
    }
  }

  else
  {
    v11 = 0;
  }

  FigSimpleMutexUnlock();
  if (a4)
  {
LABEL_17:
    v15 = 0;
    if (!v17 && v11)
    {
      v15 = CFRetain(v11);
    }

    *a4 = v15;
  }

LABEL_21:
  if (value)
  {
    CFRelease(value);
  }

  if (v11)
  {
    CFRelease(v11);
  }
}

uint64_t audioSessionBufferedHose_receiveDataCallback(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = FigCFWeakReferenceHolderCopyReferencedObject();
  if (!v4)
  {
    return 0;
  }

  v5 = v4;
  if (a3)
  {
    if (CFArrayGetCount(a3) < 1)
    {
      a3 = 0;
      goto LABEL_11;
    }

    v6 = v5[5];
    FigSimpleMutexLock();
    if (!*(v6 + 168))
    {
      *(v6 + 168) = CFArrayCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF128]);
    }

    FigCFArrayAppendArray();
    FigSimpleMutexUnlock();
    v7 = *(v6 + 56);
    v8 = *(*(CMBaseObjectGetVTable() + 16) + 72);
    if (!v8)
    {
      a3 = 4294954514;
LABEL_10:
      APSLogErrorAt();
      goto LABEL_11;
    }

    a3 = v8(v7);
    if (a3)
    {
      goto LABEL_10;
    }
  }

LABEL_11:
  CFRelease(v5);
  return a3;
}

uint64_t audioSessionBufferedHose_copyRTPDataCallback(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = FigCFWeakReferenceHolderCopyReferencedObject();
  if (v4)
  {
    v5 = v4;
    v6 = *(v4 + 40);
    FigSimpleMutexLock();
    *a3 = *(v6 + 144);
    *(v6 + 144) = 0;
    FigSimpleMutexUnlock();
    CMBaseObject = APTransportConnectionGetCMBaseObject();
    v8 = *(*(CMBaseObjectGetVTable() + 8) + 56);
    if (v8)
    {
      v8(CMBaseObject, *MEMORY[0x277CE4F08], *MEMORY[0x277CBED28]);
    }

    CFRelease(v5);
  }

  return 0;
}

uint64_t audioSessionBufferedHose_handleAudioDataConnectionEvent(int a1, uint64_t a2, uint64_t a3)
{
  if (a1 != 7)
  {
    return 0;
  }

  if (a2)
  {
    v5 = *(*(CMBaseObjectGetVTable() + 16) + 8);
    if (v5)
    {
      v6 = v5(a2);
      if (v6)
      {
        v7 = v6;
        if (CMBlockBufferGetDataLength(v6))
        {
          FigSimpleMutexLock();
          v8 = CFArrayEnsureCreatedAndAppend();
          v9 = *(a3 + 144);
          if (v9)
          {
            v10 = CFArrayGetCount(v9) < 128;
          }

          else
          {
            v10 = 1;
          }

          FigSimpleMutexUnlock();
          if (v8)
          {
            goto LABEL_28;
          }

          if (*(a3 + 40) == 1095778644)
          {
            v11 = *(a3 + 152);
            APSAudioProtocolDriverHoseDataAPATProtocolGetProtocolID();
            ProtocolVTable = CMBaseObjectGetProtocolVTable();
            if (!ProtocolVTable || (v13 = *(ProtocolVTable + 16)) == 0)
            {
              v8 = 4294954508;
              goto LABEL_28;
            }

            v14 = *(v13 + 16);
            if (!v14)
            {
              v8 = 4294954514;
              goto LABEL_28;
            }

            v15 = v14(v11);
            if (v15)
            {
              v8 = v15;
LABEL_28:
              APSLogErrorAt();
              goto LABEL_29;
            }
          }

          else
          {
            v16 = *(a3 + 128);
            APSEndpointStreamAudioHoseProtocolGetProtocolID();
            v17 = CMBaseObjectGetProtocolVTable();
            if (!v17 || (v18 = *(v17 + 16)) == 0)
            {
              v8 = 4294954508;
              goto LABEL_28;
            }

            v19 = *(v18 + 40);
            if (!v19)
            {
              v8 = 4294954514;
              goto LABEL_28;
            }

            v20 = v19(v16);
            if (v20)
            {
              v8 = v20;
              goto LABEL_28;
            }
          }

          if (!v10)
          {
            CMBaseObject = APTransportConnectionGetCMBaseObject();
            v22 = *(*(CMBaseObjectGetVTable() + 8) + 56);
            if (v22)
            {
              v22(CMBaseObject, *MEMORY[0x277CE4F08], *MEMORY[0x277CBED10]);
            }
          }
        }

        v8 = 0;
LABEL_29:
        CFRelease(v7);
        return v8;
      }
    }

    v8 = 4294895145;
  }

  else
  {
    v8 = 4294895145;
  }

  APSLogErrorAt();
  return v8;
}

void audioSessionBufferedHose_handleMediaDataControlRequest(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const void *a5, uint64_t a6)
{
  Anchor = 0;
  v11 = *(a6 + 40);
  if (gLogCategory_APReceiverAudioSessionBufferedHose <= 50 && (gLogCategory_APReceiverAudioSessionBufferedHose != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APReceiverAudioSessionBufferedHose, "void audioSessionBufferedHose_handleMediaDataControlRequest(APMediaDataControlServerRef, CFNumberRef, APMediaDataControlMessageType, uint64_t, CFDictionaryRef, CFTypeRef)", 33554482, "%@ Media Data Control Request: %C\n", *(v11 + 24), a3);
  }

  v12 = *MEMORY[0x277CBECE8];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (Mutable)
  {
    v14 = Mutable;
    if (a3 > 1835103328)
    {
      if (a3 <= 1937011315)
      {
        if (a3 != 1835103329)
        {
          if (a3 != 1936549491)
          {
            if (a3 == 1936875892)
            {
              *v120 = *MEMORY[0x277CEA038];
              v15 = *v120;
              *&v120[12] = *(MEMORY[0x277CEA038] + 12);
              *v119 = v15;
              *&v119[12] = *&v120[12];
              *v118 = v15;
              *&v118[12] = *&v120[12];
              v115[0] = 0;
              v115[1] = 0;
              v116 = 0;
              if (a5)
              {
                v16 = CFGetTypeID(a5);
                if (v16 == CFDictionaryGetTypeID())
                {
                  Int64Ranged = CFDictionaryGetInt64Ranged();
                  v110 = a1;
                  if (Int64Ranged != 1)
                  {
                    v18 = a2;
                    v19 = a4;
                    v22 = 0;
                    Int64 = 0;
                    v20 = 0;
                    v23 = 0;
LABEL_90:
                    *v117 = *v120;
                    *&v117[12] = *&v120[12];
                    v114[0] = *v119;
                    *(v114 + 12) = *&v119[12];
                    v111[0] = v22;
                    v111[1] = Int64;
                    v112 = v20;
                    v113 = v23;
                    Anchor = APReceiverAudioSessionBufferedHoseSetRateAndAnchorTime(v11, Int64Ranged, v117, v114, v111, v118, v115);
                    if (Anchor)
                    {
                      CFDictionarySetInt64();
                      a4 = v19;
                      a2 = v18;
                    }

                    else
                    {
                      a4 = v19;
                      a2 = v18;
                      if (Int64Ranged == 1 && (v116 & 0x100000000) == 0)
                      {
                        CFDictionarySetInt64();
                        CFDictionarySetInt64();
                        CFDictionarySetInt64();
                        CFDictionarySetInt64();
                      }
                    }

                    *v117 = *v118;
                    *&v117[12] = *&v118[12];
                    a1 = v110;
                    if (APSAudioTransportTimeIsValid())
                    {
                      *v117 = *v118;
                      *&v117[12] = *&v118[12];
                      APSAudioTransportTimeUtilsEncodeToRequestResponseDictionary();
                    }

                    if (!Anchor)
                    {
                      goto LABEL_208;
                    }

                    goto LABEL_119;
                  }

                  Anchor = APSAudioTransportTimeUtilsDecodeFromRequestResponseDictionary();
                  if (!Anchor)
                  {
                    *v117 = *v120;
                    *&v117[12] = *&v120[12];
                    if (!APSAudioTransportTimeIsValid())
                    {
                      APSLogErrorAt();
                      Anchor = -72151;
LABEL_255:
                      a1 = v110;
                      goto LABEL_208;
                    }

                    v18 = a2;
                    Anchor = APSAudioTransportTimeUtilsDecodeFromRequestResponseDictionary();
                    if (!Anchor)
                    {
                      v19 = a4;
                      v20 = CFDictionaryGetInt64Ranged();
                      Int64 = CFDictionaryGetInt64();
                      v22 = CFDictionaryGetInt64();
                      v23 = CFDictionaryGetInt64Ranged();
                      goto LABEL_90;
                    }

LABEL_254:
                    APSLogErrorAt();
                    a2 = v18;
                    goto LABEL_255;
                  }

                  goto LABEL_119;
                }
              }

              goto LABEL_217;
            }

LABEL_123:
            v65 = -6714;
LABEL_124:
            Anchor = v65;
            goto LABEL_208;
          }

          v45 = CFDictionaryGetInt64();
          if (gLogCategory_APReceiverAudioSessionBufferedHose <= 50 && (gLogCategory_APReceiverAudioSessionBufferedHose != -1 || _LogCategory_Initialize()))
          {
            v46 = 116;
            if (!v45)
            {
              v46 = 102;
            }

            LogPrintF(&gLogCategory_APReceiverAudioSessionBufferedHose, "void audioSessionBufferedHose_handleMediaDataControlRequest(APMediaDataControlServerRef, CFNumberRef, APMediaDataControlMessageType, uint64_t, CFDictionaryRef, CFTypeRef)", 33554482, "%@ SetMuteForStream. %c\n", *(v11 + 24), v46);
          }

          v62 = *(v11 + 128);
          if (v45)
          {
            v63 = MEMORY[0x277CBED28];
          }

          else
          {
            v63 = MEMORY[0x277CBED10];
          }

          v64 = *(*(CMBaseObjectGetVTable() + 8) + 56);
          if (!v64)
          {
            Anchor = -12782;
            goto LABEL_119;
          }

          Anchor = v64(v62, *MEMORY[0x277CEA1A8], *v63);
          if (Anchor)
          {
            goto LABEL_119;
          }

LABEL_208:
          APMediaDataControlServerSendResponse(a1, a2, a4, v14, Anchor);
          CFRelease(v14);
          return;
        }

        if (a5)
        {
          v54 = CFGetTypeID(a5);
          if (v54 == CFDictionaryGetTypeID())
          {
            v55 = CFDictionaryGetInt64();
            v56 = v55 != 0;
            if (!v11)
            {
              goto LABEL_253;
            }

            if (gLogCategory_APReceiverAudioSessionBufferedHose <= 50 && (gLogCategory_APReceiverAudioSessionBufferedHose != -1 || _LogCategory_Initialize()))
            {
              v57 = "Disabled";
              if (v55)
              {
                v57 = "Enabled";
              }

              LogPrintF(&gLogCategory_APReceiverAudioSessionBufferedHose, "OSStatus APSReceiverAudioSessionBufferedHoseEnableMATAtmosPlayback(void *, Boolean)", 33554482, "%@ MATAtmos Playback %s", *(v11 + 24), v57);
            }

            if (*(v11 + 200) != v56)
            {
              *(v11 + 200) = v56;
              if (audioSessionBufferedHose_updatePreferredAudioFormat(v11))
              {
LABEL_253:
                APSLogErrorAt();
              }
            }

            goto LABEL_123;
          }
        }

        goto LABEL_217;
      }

      if (a3 == 1937011316)
      {
        *v120 = *MEMORY[0x277CEA038];
        v58 = *v120;
        *&v120[12] = *(MEMORY[0x277CEA038] + 12);
        *v119 = v58;
        *&v119[12] = *&v120[12];
        memset(v117, 0, 24);
        if (a5)
        {
          v59 = CFGetTypeID(a5);
          if (v59 == CFDictionaryGetTypeID())
          {
            v60 = CFDictionaryGetInt64Ranged();
            if (v60 == 1)
            {
              Anchor = APSAudioTransportTimeUtilsDecodeFromRequestResponseDictionary();
              if (Anchor)
              {
                goto LABEL_119;
              }

              *v118 = *v120;
              *&v118[12] = *&v120[12];
              if (!APSAudioTransportTimeIsValid())
              {
                APSLogErrorAt();
                v65 = -72151;
                goto LABEL_124;
              }

              v60 = 1;
            }

            *v118 = *v120;
            *&v118[12] = *&v120[12];
            Anchor = APReceiverAudioSessionBufferedHoseSetRate(v11, v60, v118, v119, v117);
            if (!Anchor)
            {
              *v118 = *v119;
              *&v118[12] = *&v119[12];
              APSAudioTransportTimeUtilsEncodeToRequestResponseDictionary();
              CFDictionarySetInt64();
              CFDictionarySetInt64();
              CFDictionarySetInt64();
            }

            CFDictionarySetInt64();
            if (!Anchor)
            {
              goto LABEL_208;
            }

            goto LABEL_119;
          }
        }

        goto LABEL_217;
      }

      if (a3 != 1970299755)
      {
        if (a3 != 1970303090)
        {
          goto LABEL_123;
        }

        if (!a5)
        {
          goto LABEL_217;
        }

        v29 = CFGetTypeID(a5);
        if (v29 != CFDictionaryGetTypeID())
        {
          goto LABEL_217;
        }

        v110 = a1;
        v18 = a2;
        CFDataGetTypeID();
        TypedValue = CFDictionaryGetTypedValue();
        Value = CFDictionaryGetValue(a5, @"protocolVersionList");
        if (!Value)
        {
          goto LABEL_254;
        }

        v32 = -72152;
        if (v11 && *(v11 + 128))
        {
          if (TypedValue)
          {
            v33 = Value;
            v34 = a4;
            if (gLogCategory_APReceiverAudioSessionBufferedHose <= 50 && (gLogCategory_APReceiverAudioSessionBufferedHose != -1 || _LogCategory_Initialize()))
            {
              LogPrintF(&gLogCategory_APReceiverAudioSessionBufferedHose, "OSStatus APReceiverAudioSessionBufferedHoseUpdatePKDProtector(void *, CFDataRef, CFArrayRef)", 33554482, "%@ UpdatePKDProtector", *(v11 + 24));
            }

            *v120 = 0;
            v75 = CFDictionaryCreateMutable(v12, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
            if (v75)
            {
              v76 = v75;
              CFDictionarySetValue(v75, *MEMORY[0x277CD61A8], *MEMORY[0x277CBED28]);
              CFDictionarySetValue(v76, *MEMORY[0x277CD61B8], *MEMORY[0x277CBED10]);
              CFDictionarySetValue(v76, *MEMORY[0x277CD61A0], TypedValue);
              CFDictionarySetValue(v76, *MEMORY[0x277CD61B0], v33);
              v77 = FigCPEProtectorRemoteCreateForScheme();
              if (v77)
              {
                APSLogErrorAt();
                v78 = 0;
              }

              else
              {
                v78 = *v120;
                *v120 = 0;
              }

              a2 = v18;
              CFRelease(v76);
              if (!v77)
              {
                a4 = v34;
                v79 = *(v11 + 240);
                *(v11 + 240) = v78;
                a1 = v110;
                if (v79)
                {
                  CFRelease(v79);
                }

                if (gLogCategory_APReceiverAudioSessionBufferedHose <= 50 && (gLogCategory_APReceiverAudioSessionBufferedHose != -1 || _LogCategory_Initialize()))
                {
                  LogPrintF(&gLogCategory_APReceiverAudioSessionBufferedHose, "OSStatus APReceiverAudioSessionBufferedHoseUpdatePKDProtector(void *, CFDataRef, CFArrayRef)", 33554482, "%@ UpdatePKDProtector created protector [%{ptr}]", *(v11 + 24), *(v11 + 240));
                }

                v77 = 0;
LABEL_171:
                Anchor = v77;
                if (!v77)
                {
                  goto LABEL_208;
                }

                goto LABEL_172;
              }
            }

            else
            {
              APSLogErrorAt();
              v77 = -72150;
            }

            APSLogErrorAt();
            a4 = v34;
            a2 = v18;
            a1 = v110;
            goto LABEL_171;
          }

          v32 = -72151;
        }

        APSLogErrorAt();
        Anchor = v32;
        a1 = v110;
LABEL_172:
        CFDictionarySetInt64();
        if (!Anchor)
        {
          goto LABEL_208;
        }

        goto LABEL_119;
      }

      if (!a5)
      {
        goto LABEL_217;
      }

      v47 = CFGetTypeID(a5);
      if (v47 != CFDictionaryGetTypeID())
      {
        goto LABEL_217;
      }

      v48 = CFDictionaryGetInt64();
      CFDataGetTypeID();
      v49 = CFDictionaryGetTypedValue();
      memset(v120, 0, 24);
      v109 = a2;
      if (v11)
      {
        if (*(v11 + 128))
        {
          if (!v49)
          {
            APSLogErrorAt();
            v82 = 0;
            v80 = 0;
            v84 = 0;
            LODWORD(v93) = -72151;
            goto LABEL_198;
          }

          v50 = *(v11 + 256);
          if (!v50)
          {
            APSLogErrorAt();
            v82 = 0;
            v80 = 0;
            v84 = 0;
            LODWORD(v93) = -72153;
            goto LABEL_198;
          }

          if (gLogCategory_APReceiverAudioSessionBufferedHose <= 50)
          {
            if (gLogCategory_APReceiverAudioSessionBufferedHose != -1)
            {
LABEL_68:
              LogPrintF(&gLogCategory_APReceiverAudioSessionBufferedHose, "OSStatus APReceiverAudioSessionBufferedHoseUpdatePKDCryptorEncryptionKey(void *, uint64_t, CFDataRef)", 33554482, "%@ UpdatePKDCryptorEncryptionKey cryptorID: 0x%llx, key exchange sessionID: 0x%llx", *(v11 + 24), v48, v50);
              goto LABEL_154;
            }

            if (_LogCategory_Initialize())
            {
              v50 = *(v11 + 256);
              goto LABEL_68;
            }
          }

LABEL_154:
          v107 = v48;
          v80 = CFNumberCreateInt64();
          if (!v80)
          {
            APSLogErrorAt();
            v82 = 0;
            v84 = 0;
            LODWORD(v93) = -72150;
            goto LABEL_198;
          }

          FigSimpleMutexLock();
          v81 = CFDictionaryGetValue(*(v11 + 248), v80);
          v106 = v49;
          if (v81)
          {
            v82 = CFRetain(v81);
            FigSimpleMutexUnlock();
            if (v82)
            {
              v83 = CFDictionaryCreateMutable(v12, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
              v84 = v83;
              if (v83)
              {
                CFDictionarySetValue(v83, *MEMORY[0x277CC1A80], *MEMORY[0x277CBED28]);
                goto LABEL_185;
              }

              APSLogErrorAt();
              LODWORD(v93) = -6728;
LABEL_198:
              if (*&v120[16])
              {
                dispatch_release(*&v120[16]);
              }

              if (v84)
              {
                CFRelease(v84);
              }

              if (v80)
              {
                CFRelease(v80);
              }

              if (v82)
              {
                CFRelease(v82);
              }

              Anchor = v93;
              a2 = v109;
              if (!v93)
              {
                goto LABEL_208;
              }

              CFDictionarySetInt64();
              if (!Anchor)
              {
                goto LABEL_208;
              }

              goto LABEL_119;
            }
          }

          else
          {
            FigSimpleMutexUnlock();
          }

          key = v80;
          v85 = a4;
          *v119 = 0;
          if (*(v11 + 240))
          {
            v86 = CFDictionaryCreateMutable(v12, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
            if (v86)
            {
              v87 = v86;
              CFDictionarySetValue(v86, *MEMORY[0x277CD6190], *MEMORY[0x277CD6170]);
              CFDictionarySetValue(v87, *MEMORY[0x277CD6178], @"lGxB4ky");
              CFDictionarySetValue(v87, *MEMORY[0x277CD6198], *MEMORY[0x277CBED10]);
              CFDictionarySetValue(v87, *MEMORY[0x277CD6188], *MEMORY[0x277CD6168]);
              Copy = CFDictionaryCreateCopy(v12, v87);
              if (Copy)
              {
                v89 = Copy;
                FigCFDictionarySetValue();
                v90 = *(v11 + 240);
                v91 = *(*(CMBaseObjectGetVTable() + 16) + 104);
                if (v91)
                {
                  v92 = v91(v90, v12, 1, v87, v119);
                  if (v92)
                  {
                    LODWORD(v93) = v92;
                  }

                  else
                  {
                    v93 = *v119;
                    v94 = *(*(CMBaseObjectGetVTable() + 8) + 56);
                    if (v94)
                    {
                      LODWORD(v93) = v94(v93, *MEMORY[0x277CC0978], @"P5h3ZgzLxs");
                      if (!v93)
                      {
                        v82 = *v119;
                        *v119 = 0;
                        goto LABEL_177;
                      }
                    }

                    else
                    {
                      LODWORD(v93) = -12782;
                    }
                  }
                }

                else
                {
                  LODWORD(v93) = -12782;
                }

                APSLogErrorAt();
                v82 = 0;
LABEL_177:
                CFRelease(v87);
                CFRelease(v89);
                if (*v119)
                {
                  CFRelease(*v119);
                }

                if (!v93)
                {
                  a4 = v85;
                  if (gLogCategory_APReceiverAudioSessionBufferedHose <= 50 && (gLogCategory_APReceiverAudioSessionBufferedHose != -1 || _LogCategory_Initialize()))
                  {
                    LogPrintF(&gLogCategory_APReceiverAudioSessionBufferedHose, "OSStatus APReceiverAudioSessionBufferedHoseUpdatePKDCryptorEncryptionKey(void *, uint64_t, CFDataRef)", 33554482, "%@ UpdatePKDCryptorEncryptionKey created cryptor [%{ptr}] for cryptorID: 0x%llx", *(v11 + 24), v82, v107);
                  }

                  v80 = key;
                  CFDictionarySetValue(*(v11 + 248), key, v82);
                  v84 = 0;
LABEL_185:
                  v95 = *(v11 + 256);
                  v96 = *(CMBaseObjectGetVTable() + 16);
                  if (*v96 >= 8uLL && (v97 = v96[28]) != 0)
                  {
                    key = v80;
                    v85 = a4;
                    v98 = v97(v82, v95, v106, v84);
                    if (!v98)
                    {
                      v99 = dispatch_semaphore_create(0);
                      *&v120[16] = v99;
                      if (!v99)
                      {
                        APSLogErrorAt();
                        LODWORD(v93) = -6728;
                        goto LABEL_211;
                      }

                      v100 = v99;
                      v101 = *(v11 + 128);
                      APSEndpointStreamAudioHoseProtocolGetProtocolID();
                      ProtocolVTable = CMBaseObjectGetProtocolVTable();
                      if (ProtocolVTable && (v103 = *(ProtocolVTable + 16)) != 0)
                      {
                        v104 = *(v103 + 96);
                        if (v104)
                        {
                          v105 = v104(v101, v107, v82, audioSessionBufferedHose_updatePKDCryptorEncryptionKeyCompletionHandler, v120);
                          if (!v105)
                          {
                            dispatch_semaphore_wait(*&v120[16], 0xFFFFFFFFFFFFFFFFLL);
                            if (!*v120)
                            {
                              a4 = v85;
                              if (*&v120[8] == v107)
                              {
                                LODWORD(v93) = 0;
                              }

                              else
                              {
                                APSLogErrorAt();
                                LODWORD(v93) = -72153;
                              }

                              goto LABEL_212;
                            }

                            APSLogErrorAt();
                            v93 = *v120;
                            if (gLogCategory_APReceiverAudioSessionBufferedHose <= 90 && (gLogCategory_APReceiverAudioSessionBufferedHose != -1 || _LogCategory_Initialize()))
                            {
                              LogPrintF(&gLogCategory_APReceiverAudioSessionBufferedHose, "OSStatus APReceiverAudioSessionBufferedHoseUpdatePKDCryptorEncryptionKey(void *, uint64_t, CFDataRef)", 33554522, "### %@ UpdatePKDCryptorEncryptionKey failed with err=%#m", *(v11 + 24), v93);
                            }

LABEL_211:
                            a4 = v85;
LABEL_212:
                            v80 = key;
                            goto LABEL_198;
                          }

                          LODWORD(v93) = v105;
                        }

                        else
                        {
                          LODWORD(v93) = -12782;
                          *v120 = -12782;
                          *&v120[8] = v107;
                          dispatch_semaphore_signal(v100);
                        }
                      }

                      else
                      {
                        LODWORD(v93) = -12788;
                      }

                      APSLogErrorAt();
                      goto LABEL_211;
                    }

                    LODWORD(v93) = v98;
                    v80 = key;
                  }

                  else
                  {
                    LODWORD(v93) = -12782;
                  }

                  APSLogErrorAt();
                  goto LABEL_198;
                }

LABEL_248:
                APSLogErrorAt();
                v84 = 0;
                goto LABEL_211;
              }

              APSLogErrorAt();
              CFRelease(v87);
            }

            else
            {
              APSLogErrorAt();
            }

            LODWORD(v93) = -72150;
          }

          else
          {
            LODWORD(v93) = -72152;
            APSLogErrorAt();
          }

          v82 = 0;
          goto LABEL_248;
        }

        LODWORD(v93) = -72152;
      }

      else
      {
        LODWORD(v93) = -72152;
      }

      APSLogErrorAt();
      v82 = 0;
      v80 = 0;
      v84 = 0;
      goto LABEL_198;
    }

    if (a3 <= 1634760293)
    {
      if (a3 == 1634562925)
      {
        CFStringGetTypeID();
        v37 = CFDictionaryGetTypedValue();
        Anchor = APReceiverAudioSessionPlatformSetProperty(*v11, v38, @"RASP::AudioMode", v39, v37);
        if (Anchor)
        {
          goto LABEL_119;
        }

        goto LABEL_208;
      }

      if (a3 != 1634624360)
      {
        goto LABEL_123;
      }

      *v120 = *MEMORY[0x277CEA038];
      *&v120[12] = *(MEMORY[0x277CEA038] + 12);
      memset(v118, 0, 24);
      if (a5)
      {
        v35 = CFGetTypeID(a5);
        if (v35 == CFDictionaryGetTypeID())
        {
          v36 = CFDictionaryGetInt64Ranged();
          Anchor = APReceiverAudioSessionBufferedHoseGetAnchor(v11, v36, v120, v118);
          if (!Anchor)
          {
            *v119 = *v120;
            *&v119[12] = *&v120[12];
            Anchor = APSAudioTransportTimeUtilsEncodeToRequestResponseDictionary();
            if (Anchor)
            {
              goto LABEL_119;
            }

            CFDictionarySetInt64();
            CFDictionarySetInt64();
            CFDictionarySetInt64();
          }

          CFDictionarySetInt64();
          if (Anchor)
          {
LABEL_119:
            APSLogErrorAt();
            goto LABEL_208;
          }

          goto LABEL_208;
        }
      }

LABEL_217:
      APSLogErrorAt();
      v65 = -6756;
      goto LABEL_124;
    }

    if (a3 == 1634760294)
    {
      *v120 = *MEMORY[0x277CC08F0];
      *&v120[16] = *(MEMORY[0x277CC08F0] + 16);
      if (a5)
      {
        v51 = CFGetTypeID(a5);
        if (v51 == CFDictionaryGetTypeID())
        {
          v52 = CFDictionaryGetInt64();
          CFDictionaryGetDouble();
          CMTimeMakeWithSeconds(v120, v53, 1000);
          *v119 = *v120;
          *&v119[16] = *&v120[16];
          Anchor = APReceiverAudioSessionBufferedHoseApplyVolumeFade(v11, v52, v119);
          if (Anchor)
          {
            goto LABEL_119;
          }

          goto LABEL_208;
        }
      }

      goto LABEL_217;
    }

    if (a3 != 1718839394)
    {
      if (a3 != 1835100003)
      {
        goto LABEL_123;
      }

      if (!a5)
      {
        goto LABEL_217;
      }

      v24 = CFGetTypeID(a5);
      if (v24 != CFDictionaryGetTypeID())
      {
        goto LABEL_217;
      }

      v25 = CFDictionaryGetInt64();
      CFDataGetTypeID();
      v26 = CFDictionaryGetTypedValue();
      memset(v120, 0, 24);
      if (v11)
      {
        if (*(v11 + 128))
        {
          if (v26)
          {
            v27 = a1;
            v28 = a4;
            if (gLogCategory_APReceiverAudioSessionBufferedHose <= 50 && (gLogCategory_APReceiverAudioSessionBufferedHose != -1 || _LogCategory_Initialize()))
            {
              LogPrintF(&gLogCategory_APReceiverAudioSessionBufferedHose, "OSStatus APReceiverAudioSessionBufferedHoseSetMagicCookie(void *, uint64_t, CFDataRef)", 33554482, "%@ Set Magic Cookie magicCookieID: 0x%llx", *(v11 + 24), v25);
            }

            v66 = a2;
            v67 = dispatch_semaphore_create(0);
            *&v120[16] = v67;
            if (!v67)
            {
              APSLogErrorAt();
              LODWORD(v74) = -6728;
              goto LABEL_136;
            }

            v68 = v67;
            v69 = *(v11 + 128);
            APSEndpointStreamAudioHoseProtocolGetProtocolID();
            v70 = CMBaseObjectGetProtocolVTable();
            if (v70 && (v71 = *(v70 + 16)) != 0)
            {
              v72 = *(v71 + 104);
              if (v72)
              {
                v73 = v72(v69, v25, v26, audioSessionBufferedHose_setMagicCookieCompletionHandler, v120);
                if (!v73)
                {
                  dispatch_semaphore_wait(*&v120[16], 0xFFFFFFFFFFFFFFFFLL);
                  if (!*v120)
                  {
                    a4 = v28;
                    a2 = v66;
                    if (*&v120[8] == v25)
                    {
                      LODWORD(v74) = 0;
                    }

                    else
                    {
                      APSLogErrorAt();
                      LODWORD(v74) = -72153;
                    }

                    goto LABEL_137;
                  }

                  APSLogErrorAt();
                  v74 = *v120;
                  if (gLogCategory_APReceiverAudioSessionBufferedHose <= 90 && (gLogCategory_APReceiverAudioSessionBufferedHose != -1 || _LogCategory_Initialize()))
                  {
                    LogPrintF(&gLogCategory_APReceiverAudioSessionBufferedHose, "OSStatus APReceiverAudioSessionBufferedHoseSetMagicCookie(void *, uint64_t, CFDataRef)", 33554522, "### %@ SetMagicCookie failed with err=%#m", *(v11 + 24), v74);
                  }

LABEL_136:
                  a4 = v28;
                  a2 = v66;
LABEL_137:
                  a1 = v27;
                  goto LABEL_138;
                }

                LODWORD(v74) = v73;
              }

              else
              {
                LODWORD(v74) = -12782;
                *v120 = -12782;
                *&v120[8] = v25;
                dispatch_semaphore_signal(v68);
              }
            }

            else
            {
              LODWORD(v74) = -12788;
            }

            APSLogErrorAt();
            goto LABEL_136;
          }

          APSLogErrorAt();
          LODWORD(v74) = -72151;
LABEL_138:
          if (*&v120[16])
          {
            dispatch_release(*&v120[16]);
          }

          Anchor = v74;
          if (!v74)
          {
            goto LABEL_208;
          }

          CFDictionarySetInt64();
          if (!Anchor)
          {
            goto LABEL_208;
          }

          goto LABEL_119;
        }

        LODWORD(v74) = -72152;
      }

      else
      {
        LODWORD(v74) = -72152;
      }

      APSLogErrorAt();
      goto LABEL_138;
    }

    *v120 = *MEMORY[0x277CEA038];
    v40 = *v120;
    *&v120[12] = *(MEMORY[0x277CEA038] + 12);
    *v119 = v40;
    *&v119[12] = *&v120[12];
    if (!a5)
    {
      goto LABEL_217;
    }

    v41 = CFGetTypeID(a5);
    if (v41 != CFDictionaryGetTypeID())
    {
      goto LABEL_217;
    }

    if (CFDictionaryContainsKey(a5, @"flushFromSeq"))
    {
      v42 = CFDictionaryGetInt64Ranged();
      v43 = a2;
      Anchor = APSAudioTransportTimeUtilsDecodeFromRequestResponseDictionary();
      if (Anchor)
      {
        goto LABEL_241;
      }

      *v118 = *v120;
      *&v118[12] = *&v120[12];
      IsValid = APSAudioTransportTimeIsValid();
    }

    else
    {
      v43 = a2;
      v42 = 0;
      IsValid = 0;
    }

    Anchor = APSAudioTransportTimeUtilsDecodeFromRequestResponseDictionary();
    if (!Anchor)
    {
      *v118 = *v119;
      *&v118[12] = *&v119[12];
      if (APSAudioTransportTimeIsValid())
      {
        v61 = CFDictionaryGetInt64Ranged();
        *v118 = *v120;
        *&v118[12] = *&v120[12];
        *v117 = *v119;
        *&v117[12] = *&v119[12];
        Anchor = APReceiverAudioSessionBufferedHoseFlushAudio(v11, IsValid, v118, v42, v117, v61, 0);
        a2 = v43;
        if (Anchor)
        {
          goto LABEL_119;
        }

        goto LABEL_208;
      }

      APSLogErrorAt();
      Anchor = -72151;
LABEL_242:
      a2 = v43;
      goto LABEL_208;
    }

LABEL_241:
    APSLogErrorAt();
    goto LABEL_242;
  }

  APSLogErrorAt();

  APMediaDataControlServerSendResponse(a1, a2, a4, 0, -6728);
}

uint64_t APReceiverAudioSessionBufferedHoseFlushAudio(uint64_t a1, int a2, _OWORD *a3, int a4, _OWORD *a5, int a6, _OWORD *a7)
{
  LODWORD(v8) = a6;
  LODWORD(v10) = a4;
  v38 = 0;
  v14 = dispatch_semaphore_create(0);
  dsema = v14;
  if (!v14)
  {
    APSLogErrorAt();
    return 4294960568;
  }

  v15 = *(a1 + 40);
  if (v15 == 1095778644)
  {
    v8 = (v8 << 8);
  }

  else
  {
    v8 = v8;
  }

  if (v15 == 1095778644)
  {
    v10 = (v10 << 8);
  }

  else
  {
    v10 = v10;
  }

  if (!a2)
  {
    v23 = *(a1 + 280);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 0x40000000;
    block[2] = __APReceiverAudioSessionBufferedHoseFlushAudio_block_invoke;
    block[3] = &__block_descriptor_tmp_5321;
    block[4] = a1;
    dispatch_sync(v23, block);
    v24 = *(a1 + 128);
    v40[0] = *a5;
    *(v40 + 12) = *(a5 + 12);
    APSEndpointStreamAudioHoseProtocolGetProtocolID();
    ProtocolVTable = CMBaseObjectGetProtocolVTable();
    if (!ProtocolVTable || (v26 = *(ProtocolVTable + 16)) == 0)
    {
      v22 = 4294954508;
      goto LABEL_30;
    }

    v27 = *(v26 + 24);
    if (!v27)
    {
      v22 = 4294954514;
      LODWORD(v38) = -12782;
      dispatch_semaphore_signal(dsema);
      goto LABEL_30;
    }

    v41[0] = v40[0];
    *(v41 + 12) = *(v40 + 12);
    v28 = v27(v24, v8, v41, audioSessionBufferedHose_flushCompletionHandler, &v38);
    if (v28)
    {
      v22 = v28;
      goto LABEL_30;
    }

    goto LABEL_19;
  }

  v16 = v14;
  v17 = *(a1 + 128);
  v37[0] = *a3;
  *(v37 + 12) = *(a3 + 12);
  v36[0] = *a5;
  *(v36 + 12) = *(a5 + 12);
  APSEndpointStreamAudioHoseProtocolGetProtocolID();
  v18 = CMBaseObjectGetProtocolVTable();
  if (!v18 || (v19 = *(v18 + 16)) == 0)
  {
    v22 = 4294954508;
    goto LABEL_30;
  }

  v20 = *(v19 + 32);
  if (!v20)
  {
    v22 = 4294954514;
    LODWORD(v38) = -12782;
    dispatch_semaphore_signal(v16);
    goto LABEL_30;
  }

  v41[0] = v37[0];
  *(v41 + 12) = *(v37 + 12);
  v40[0] = v36[0];
  *(v40 + 12) = *(v36 + 12);
  v21 = v20(v17, v10, v41, v8, v40, audioSessionBufferedHose_flushWithinSampleRangeCompletionHandler, &v38);
  if (!v21)
  {
LABEL_19:
    dispatch_semaphore_wait(dsema, 0xFFFFFFFFFFFFFFFFLL);
    if (a7)
    {
      v29 = MEMORY[0x277CEA038];
      *a7 = *MEMORY[0x277CEA038];
      *(a7 + 12) = *(v29 + 12);
    }

    if (!a2 && !v38)
    {
      *(a1 + 204) = 0;
    }

    v30 = *(a1 + 128);
    APSEndpointStreamAudioHoseProtocolGetProtocolID();
    v31 = CMBaseObjectGetProtocolVTable();
    if (v31)
    {
      v32 = *(v31 + 16);
      if (v32)
      {
        v33 = *(v32 + 40);
        if (v33)
        {
          v33(v30);
        }
      }
    }

    v22 = 0;
    goto LABEL_31;
  }

  v22 = v21;
LABEL_30:
  APSLogErrorAt();
LABEL_31:
  if (dsema)
  {
    dispatch_release(dsema);
  }

  return v22;
}

uint64_t APReceiverAudioSessionBufferedHoseGetAnchor(uint64_t a1, uint64_t a2, _OWORD *a3, uint64_t a4)
{
  Value = malloc_type_calloc(1uLL, 0x40uLL, 0x1020040D3BB1902uLL);
  if (!a1)
  {
    APSLogErrorAt();
    v21 = 4294895144;
    goto LABEL_39;
  }

  if (gLogCategory_APReceiverAudioSessionBufferedHose <= 50 && (gLogCategory_APReceiverAudioSessionBufferedHose != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APReceiverAudioSessionBufferedHose, "OSStatus APReceiverAudioSessionBufferedHoseGetAnchor(void *, uint32_t, APSAudioTransportTime *, APSNetworkTime *)", 33554482, "%@ GetAnchor inRate %u \n", *(a1 + 24), a2);
  }

  if (a2 != 1)
  {
    APSLogErrorAt();
    if (gLogCategory_APReceiverAudioSessionBufferedHose <= 90 && (gLogCategory_APReceiverAudioSessionBufferedHose != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_APReceiverAudioSessionBufferedHose, "OSStatus APReceiverAudioSessionBufferedHoseGetAnchor(void *, uint32_t, APSAudioTransportTime *, APSNetworkTime *)", 33554522, "### %@ Rate may only be 1: rate recieved: %u\n", *(a1 + 24), a2);
    }

    v21 = 4294960591;
LABEL_39:
    if (!Value)
    {
      goto LABEL_50;
    }

    goto LABEL_40;
  }

  v9 = dispatch_semaphore_create(0);
  *(Value + 7) = v9;
  if (!v9)
  {
    APSLogErrorAt();
    v21 = 4294960568;
LABEL_40:
    audioSessionBufferedHose_finalizeContextWrapper(Value);
    goto LABEL_20;
  }

  v10 = APSWrapperCreate();
  if (v10)
  {
    v21 = v10;
    APSLogErrorAt();
    goto LABEL_40;
  }

  v11 = *(a1 + 128);
  APSEndpointStreamAudioHoseProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (!ProtocolVTable || (v15 = *(ProtocolVTable + 16), v13 = ProtocolVTable + 16, (v14 = v15) == 0))
  {
    v21 = 4294954508;
LABEL_19:
    APSLogErrorAt();
LABEL_20:
    v20 = 0;
    Value = 0;
    goto LABEL_21;
  }

  v16 = *(v14 + 88);
  if (!v16)
  {
    v21 = 4294954514;
    audioSessionBufferedHose_getAnchorCompletionHandler(v13, MEMORY[0x277CEA038], MEMORY[0x277CEA280], -12782, 0);
    goto LABEL_19;
  }

  v17 = v16(v11, 1, audioSessionBufferedHose_getAnchorCompletionHandler, 0);
  if (v17)
  {
    v21 = v17;
    goto LABEL_19;
  }

  Value = APSWrapperGetValue();
  v18 = *(Value + 7);
  v19 = dispatch_time(0, 5000000000);
  if (!dispatch_semaphore_wait(v18, v19))
  {
    if (!*Value)
    {
      v20 = APSAudioTransportTimeCopyDebugDesc();
      if (gLogCategory_APReceiverAudioSessionBufferedHose <= 50 && (gLogCategory_APReceiverAudioSessionBufferedHose != -1 || _LogCategory_Initialize()))
      {
        LogPrintF(&gLogCategory_APReceiverAudioSessionBufferedHose, "OSStatus APReceiverAudioSessionBufferedHoseGetAnchor(void *, uint32_t, APSAudioTransportTime *, APSNetworkTime *)", 33554482, "%@ GetAnchor inRate %u returning AnchorTime %@ NetworkTime %1.3f (id=%llu)\n", *(a1 + 24), 1, v20, Value[12] + *(Value + 5) * 5.42101086e-20, *(Value + 4));
      }

      v21 = 0;
      goto LABEL_21;
    }

    APSLogErrorAt();
    v21 = *Value;
    if (gLogCategory_APReceiverAudioSessionBufferedHose <= 90 && (gLogCategory_APReceiverAudioSessionBufferedHose != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_APReceiverAudioSessionBufferedHose, "OSStatus APReceiverAudioSessionBufferedHoseGetAnchor(void *, uint32_t, APSAudioTransportTime *, APSNetworkTime *)", 33554522, "### %@ GetAnchor failed with err=%#m", *(a1 + 24), v21);
    }

LABEL_50:
    v20 = 0;
    goto LABEL_21;
  }

  APSLogErrorAt();
  if (gLogCategory_APReceiverAudioSessionBufferedHose <= 90 && (gLogCategory_APReceiverAudioSessionBufferedHose != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APReceiverAudioSessionBufferedHose, "OSStatus APReceiverAudioSessionBufferedHoseGetAnchor(void *, uint32_t, APSAudioTransportTime *, APSNetworkTime *)", 33554522, "### %@ GetAnchor took too long, abort operation\n", *(a1 + 24));
  }

  v20 = 0;
  v21 = 4294960574;
LABEL_21:
  if (a3)
  {
    v22 = *(Value + 1);
    *(a3 + 12) = *(Value + 1);
    *a3 = v22;
  }

  if (a4)
  {
    v23 = *(Value + 2);
    *(a4 + 16) = *(Value + 6);
    *a4 = v23;
  }

  if (v20)
  {
    CFRelease(v20);
  }

  return v21;
}

uint64_t APReceiverAudioSessionBufferedHoseSetRate(uint64_t a1, uint64_t a2, _OWORD *a3, _OWORD *a4, uint64_t a5)
{
  *v29 = 0;
  v26 = *MEMORY[0x277CEA038];
  *&v29[4] = *MEMORY[0x277CEA038];
  v25 = *(MEMORY[0x277CEA038] + 12);
  *&v29[16] = v25;
  v30 = 0u;
  *dsema = 0u;
  v32[0] = *a3;
  *(v32 + 12) = *(a3 + 12);
  v10 = APSAudioTransportTimeCopyDebugDesc();
  if (a1)
  {
    if (*(a1 + 8))
    {
      v11 = FigCFWeakReferenceHolderCopyReferencedObject();
      if (v11)
      {
        v13 = v11;
        if (gLogCategory_APReceiverAudioSessionBufferedHose <= 50 && (gLogCategory_APReceiverAudioSessionBufferedHose != -1 || _LogCategory_Initialize()))
        {
          LogPrintF(&gLogCategory_APReceiverAudioSessionBufferedHose, "OSStatus APReceiverAudioSessionBufferedHoseSetRate(void *, uint32_t, APSAudioTransportTime, APSAudioTransportTime *, APSNetworkTime *)", 33554482, "%@ SetRate inRate %u inRequestedTime %@ \n", *(a1 + 24), a2, v10);
        }

        if (a2 != 1)
        {
          APSLogErrorAt();
          if (gLogCategory_APReceiverAudioSessionBufferedHose <= 90 && (gLogCategory_APReceiverAudioSessionBufferedHose != -1 || _LogCategory_Initialize()))
          {
            LogPrintF(&gLogCategory_APReceiverAudioSessionBufferedHose, "OSStatus APReceiverAudioSessionBufferedHoseSetRate(void *, uint32_t, APSAudioTransportTime, APSAudioTransportTime *, APSNetworkTime *)", 33554522, "### %@ Rate may only be 1: rate recieved: %u\n", *(a1 + 24), a2);
          }

          v22 = 0;
          v23 = 4294960591;
          goto LABEL_30;
        }

        if (*(v13 + 752))
        {
          if (gLogCategory_APReceiverAudioSessionBufferedHose <= 50 && (gLogCategory_APReceiverAudioSessionBufferedHose != -1 || _LogCategory_Initialize()))
          {
            LogPrintF(&gLogCategory_APReceiverAudioSessionBufferedHose, "OSStatus APReceiverAudioSessionBufferedHoseSetRate(void *, uint32_t, APSAudioTransportTime, APSAudioTransportTime *, APSNetworkTime *)", 33554482, "%@ Session has been interrupted. Don't honor setRate(1.0).\n", *(a1 + 24));
          }

          v22 = 0;
          v23 = 4294960587;
          goto LABEL_30;
        }

        if (*(a1 + 48))
        {
          v14 = *(v13 + 16);
          block[0] = MEMORY[0x277D85DD0];
          block[1] = 0x40000000;
          block[2] = __APReceiverAudioSessionBufferedHoseSetRate_block_invoke;
          block[3] = &__block_descriptor_tmp_143_5296;
          block[4] = v13;
          block[5] = a1;
          dispatch_sync(v14, block);
        }

        else
        {
          AirPlayReceiverSessionControl(v13, v12, @"handleMediaAudioResumedForSession", *(a1 + 32), 0, 0);
        }

        v15 = dispatch_semaphore_create(0);
        dsema[1] = v15;
        if (!v15)
        {
          APSLogErrorAt();
          v22 = 0;
          v23 = 4294960568;
          goto LABEL_30;
        }

        v16 = v15;
        v17 = *(a1 + 128);
        *v27 = *a3;
        *&v27[12] = *(a3 + 12);
        APSEndpointStreamAudioHoseProtocolGetProtocolID();
        ProtocolVTable = CMBaseObjectGetProtocolVTable();
        if (ProtocolVTable && (v19 = *(ProtocolVTable + 16)) != 0)
        {
          v20 = *(v19 + 80);
          if (v20)
          {
            v32[0] = *v27;
            *(v32 + 12) = *&v27[12];
            v21 = v20(v17, 1, v32, audioSessionBufferedHose_setRateCompletionHandler, v29);
            if (!v21)
            {
              dispatch_semaphore_wait(dsema[1], 0xFFFFFFFFFFFFFFFFLL);
              if (!*v29)
              {
                *(a1 + 204) = 1;
                v32[0] = *&v29[4];
                *(v32 + 12) = *&v29[16];
                v22 = APSAudioTransportTimeCopyDebugDesc();
                if (gLogCategory_APReceiverAudioSessionBufferedHose <= 50 && (gLogCategory_APReceiverAudioSessionBufferedHose != -1 || _LogCategory_Initialize()))
                {
                  LogPrintF(&gLogCategory_APReceiverAudioSessionBufferedHose, "OSStatus APReceiverAudioSessionBufferedHoseSetRate(void *, uint32_t, APSAudioTransportTime, APSAudioTransportTime *, APSNetworkTime *)", 33554482, "%@ SetRate inRate %u returning AnchorTime %@ NetworkTime %1.3f (id=%llu)\n", *(a1 + 24), 1, v22, SLODWORD(dsema[0]) + *(&v30 + 1) * 5.42101086e-20, v30);
                }

                v23 = 0;
                goto LABEL_30;
              }

              APSLogErrorAt();
              v23 = *v29;
              if (gLogCategory_APReceiverAudioSessionBufferedHose <= 90 && (gLogCategory_APReceiverAudioSessionBufferedHose != -1 || _LogCategory_Initialize()))
              {
                LogPrintF(&gLogCategory_APReceiverAudioSessionBufferedHose, "OSStatus APReceiverAudioSessionBufferedHoseSetRate(void *, uint32_t, APSAudioTransportTime, APSAudioTransportTime *, APSNetworkTime *)", 33554522, "### %@ SetRate failed with err=%#m", *(a1 + 24), v23);
              }

              goto LABEL_27;
            }

            v23 = v21;
          }

          else
          {
            v23 = 4294954514;
            *v29 = -12782;
            *&v29[4] = v26;
            *&v29[16] = v25;
            v30 = *MEMORY[0x277CEA280];
            dsema[0] = *(MEMORY[0x277CEA280] + 16);
            dispatch_semaphore_signal(v16);
          }
        }

        else
        {
          v23 = 4294954508;
        }

        APSLogErrorAt();
LABEL_27:
        v22 = 0;
LABEL_30:
        CFRelease(v13);
        goto LABEL_31;
      }

      v23 = 4294895143;
    }

    else
    {
      v23 = 4294895143;
    }

    APSLogErrorAt();
    v22 = 0;
  }

  else
  {
    APSLogErrorAt();
    v22 = 0;
    v23 = 4294895144;
  }

LABEL_31:
  if (v10)
  {
    CFRelease(v10);
  }

  if (v22)
  {
    CFRelease(v22);
  }

  if (a4)
  {
    *a4 = *&v29[4];
    *(a4 + 12) = *&v29[16];
  }

  if (a5)
  {
    *a5 = v30;
    *(a5 + 16) = dsema[0];
  }

  if (dsema[1])
  {
    dispatch_release(dsema[1]);
  }

  return v23;
}

uint64_t APReceiverAudioSessionBufferedHoseSetRateAndAnchorTime(uint64_t a1, uint64_t a2, _OWORD *a3, _OWORD *a4, unint64_t *a5, _OWORD *a6, uint64_t a7)
{
  *v57 = *a3;
  *&v57[12] = *(a3 + 12);
  v13 = APSAudioTransportTimeCopyDebugDesc();
  *v57 = *a4;
  *&v57[12] = *(a4 + 12);
  v14 = APSAudioTransportTimeCopyDebugDesc();
  *v57 = 0;
  v15 = *(MEMORY[0x277CEA038] + 12);
  v16 = *MEMORY[0x277CEA038];
  v17 = *MEMORY[0x277CEA280];
  *&v57[16] = v15;
  v58 = v17;
  *&v57[4] = v16;
  v18 = *(MEMORY[0x277CEA280] + 16);
  v59 = v18;
  dsema = 0;
  if (a1)
  {
    if (*(a1 + 8))
    {
      v44 = v18;
      v45 = v17;
      v46 = v16;
      v47 = v15;
      v19 = FigCFWeakReferenceHolderCopyReferencedObject();
      if (v19)
      {
        v21 = v19;
        if (gLogCategory_APReceiverAudioSessionBufferedHose <= 50 && (gLogCategory_APReceiverAudioSessionBufferedHose != -1 || _LogCategory_Initialize()))
        {
          v43 = a7;
          v22 = *(a1 + 24);
          v23 = *(a5 + 4) + a5[1] * 5.42101086e-20;
          v24 = a6;
          v25 = *a5;
          v26 = APSGetFBOPropertyInt64();
          v27 = "YES";
          if (!v26)
          {
            v27 = "NO";
          }

          v42 = v25;
          a6 = v24;
          v41 = v22;
          a7 = v43;
          LogPrintF(&gLogCategory_APReceiverAudioSessionBufferedHose, "OSStatus APReceiverAudioSessionBufferedHoseSetRateAndAnchorTime(void *, uint32_t, APSAudioTransportTime, APSAudioTransportTime, APSNetworkTime, APSAudioTransportTime *, APSNetworkTime *)", 33554482, "%@ SetRateAndAnchorTime inRate %u inAnchor %@ inFAS: %@ inNetworkTime %1.3f (id=%llu) ClockIsLocked: %s\n", v41, a2, v13, v14, *&v23, v42, v27);
        }

        if (a2 >= 2)
        {
          APSLogErrorAt();
          if (gLogCategory_APReceiverAudioSessionBufferedHose > 90)
          {
            v38 = 0;
            v39 = 4294960591;
          }

          else
          {
            if (gLogCategory_APReceiverAudioSessionBufferedHose != -1 || _LogCategory_Initialize())
            {
              LogPrintF(&gLogCategory_APReceiverAudioSessionBufferedHose, "OSStatus APReceiverAudioSessionBufferedHoseSetRateAndAnchorTime(void *, uint32_t, APSAudioTransportTime, APSAudioTransportTime, APSNetworkTime, APSAudioTransportTime *, APSNetworkTime *)", 33554522, "### %@ Rate may only be 0 or 1: rate recieved: %u\n", *(a1 + 24), a2);
            }

            v38 = 0;
            v39 = 4294960591;
          }

          goto LABEL_36;
        }

        if (a2 == 1)
        {
          if (*(v21 + 752))
          {
            if (gLogCategory_APReceiverAudioSessionBufferedHose <= 50 && (gLogCategory_APReceiverAudioSessionBufferedHose != -1 || _LogCategory_Initialize()))
            {
              LogPrintF(&gLogCategory_APReceiverAudioSessionBufferedHose, "OSStatus APReceiverAudioSessionBufferedHoseSetRateAndAnchorTime(void *, uint32_t, APSAudioTransportTime, APSAudioTransportTime, APSNetworkTime, APSAudioTransportTime *, APSNetworkTime *)", 33554482, "%@ Session has been interrupted. Don't honor setRate(1.0).\n", *(a1 + 24));
            }

            v38 = 0;
            v39 = 4294960587;
            goto LABEL_36;
          }

          v48 = v13;
          v49 = a6;
          if (!*(a1 + 48))
          {
            AirPlayReceiverSessionControl(v21, v20, @"handleMediaAudioResumedForSession", *(a1 + 32), 0, 0);
LABEL_18:
            v30 = dispatch_semaphore_create(0);
            dsema = v30;
            if (!v30)
            {
              APSLogErrorAt();
              v38 = 0;
              v39 = 4294960568;
              v13 = v48;
              a6 = v49;
              goto LABEL_36;
            }

            v31 = v30;
            v32 = a7;
            v33 = *(a1 + 128);
            *v54 = *a3;
            *&v54[12] = *(a3 + 12);
            v52 = *a5;
            v53 = a5[2];
            *v51 = *a4;
            *&v51[12] = *(a4 + 12);
            APSEndpointStreamAudioHoseProtocolGetProtocolID();
            ProtocolVTable = CMBaseObjectGetProtocolVTable();
            if (ProtocolVTable && (v35 = *(ProtocolVTable + 16)) != 0)
            {
              v36 = *(v35 + 48);
              if (v36)
              {
                v64[0] = *v54;
                *(v64 + 12) = *&v54[12];
                v62 = v52;
                v63 = v53;
                v61[0] = *v51;
                *(v61 + 12) = *&v51[12];
                v37 = v36(v33, a2, v64, &v62, v61, audioSessionBufferedHose_setRateAndAnchorCompletionHandler, v57);
                if (!v37)
                {
                  dispatch_semaphore_wait(dsema, 0xFFFFFFFFFFFFFFFFLL);
                  a6 = v49;
                  if (*v57)
                  {
                    APSLogErrorAt();
                    v39 = *v57;
                    if (gLogCategory_APReceiverAudioSessionBufferedHose <= 90 && (gLogCategory_APReceiverAudioSessionBufferedHose != -1 || _LogCategory_Initialize()))
                    {
                      LogPrintF(&gLogCategory_APReceiverAudioSessionBufferedHose, "OSStatus APReceiverAudioSessionBufferedHoseSetRateAndAnchorTime(void *, uint32_t, APSAudioTransportTime, APSAudioTransportTime, APSNetworkTime, APSAudioTransportTime *, APSNetworkTime *)", 33554522, "### %@ SetRateAndAnchorTime failed with err=%#m", *(a1 + 24), v39);
                    }

                    v38 = 0;
                    a7 = v32;
                    v13 = v48;
                    goto LABEL_36;
                  }

                  a7 = v32;
                  *(a1 + 204) = a2;
                  v64[0] = *&v57[4];
                  *(v64 + 12) = *&v57[16];
                  v38 = APSAudioTransportTimeCopyDebugDesc();
                  if (gLogCategory_APReceiverAudioSessionBufferedHose <= 50)
                  {
                    v13 = v48;
                    if (gLogCategory_APReceiverAudioSessionBufferedHose != -1 || _LogCategory_Initialize())
                    {
                      LogPrintF(&gLogCategory_APReceiverAudioSessionBufferedHose, "OSStatus APReceiverAudioSessionBufferedHoseSetRateAndAnchorTime(void *, uint32_t, APSAudioTransportTime, APSAudioTransportTime, APSNetworkTime, APSAudioTransportTime *, APSNetworkTime *)", 33554482, "%@ SetRateAndAnchorTime inRate %u returning firstAvailableSampleTime %@\n", *(a1 + 24), a2, v38);
                    }

                    v39 = 0;
                    goto LABEL_36;
                  }

                  v39 = 0;
                  goto LABEL_29;
                }

                v39 = v37;
              }

              else
              {
                v39 = 4294954514;
                *v57 = -12782;
                *&v57[4] = v46;
                *&v57[16] = v47;
                v58 = v45;
                v59 = v44;
                dispatch_semaphore_signal(v31);
              }
            }

            else
            {
              v39 = 4294954508;
            }

            a7 = v32;
            a6 = v49;
            APSLogErrorAt();
            v38 = 0;
LABEL_29:
            v13 = v48;
LABEL_36:
            CFRelease(v21);
            goto LABEL_37;
          }

          v28 = *(v21 + 16);
          v56[0] = MEMORY[0x277D85DD0];
          v56[1] = 0x40000000;
          v56[2] = __APReceiverAudioSessionBufferedHoseSetRateAndAnchorTime_block_invoke;
          v56[3] = &__block_descriptor_tmp_150;
          v56[4] = v21;
          v56[5] = a1;
          v29 = v56;
        }

        else
        {
          v48 = v13;
          v49 = a6;
          v28 = *(a1 + 280);
          block[0] = MEMORY[0x277D85DD0];
          block[1] = 0x40000000;
          block[2] = __APReceiverAudioSessionBufferedHoseSetRateAndAnchorTime_block_invoke_2;
          block[3] = &__block_descriptor_tmp_151;
          block[4] = a1;
          v29 = block;
        }

        dispatch_sync(v28, v29);
        goto LABEL_18;
      }

      v39 = 4294895143;
    }

    else
    {
      v39 = 4294895143;
    }

    APSLogErrorAt();
    v38 = 0;
  }

  else
  {
    APSLogErrorAt();
    v38 = 0;
    v39 = 4294895144;
  }

LABEL_37:
  if (v13)
  {
    CFRelease(v13);
  }

  if (v14)
  {
    CFRelease(v14);
  }

  if (v38)
  {
    CFRelease(v38);
  }

  if (a6)
  {
    *a6 = *&v57[4];
    *(a6 + 12) = *&v57[16];
  }

  if (a7)
  {
    *a7 = v58;
    *(a7 + 16) = v59;
  }

  if (dsema)
  {
    dispatch_release(dsema);
  }

  return v39;
}

uint64_t APReceiverAudioSessionBufferedHoseApplyVolumeFade(uint64_t a1, uint64_t a2, CMTime *a3)
{
  if (!a1 || !*(a1 + 128))
  {
    APSLogErrorAt();
    return 4294895144;
  }

  if (gLogCategory_APReceiverAudioSessionBufferedHose <= 50 && (gLogCategory_APReceiverAudioSessionBufferedHose != -1 || _LogCategory_Initialize()))
  {
    v6 = *(a1 + 24);
    v7 = APSGetVolumeFadeTypeName();
    time = *a3;
    Seconds = CMTimeGetSeconds(&time);
    LogPrintF(&gLogCategory_APReceiverAudioSessionBufferedHose, "OSStatus APReceiverAudioSessionBufferedHoseApplyVolumeFade(void *, APSVolumeFadeType, CMTime)", 33554482, "%@ ApplyVolumeFade type: %s, duration %.3fs", v6, v7, *&Seconds);
  }

  if (a2 == 2)
  {
    if (*(a1 + 204))
    {
      goto LABEL_14;
    }

    v9 = 4294895145;
    APSLogErrorAt();
    if (gLogCategory_APReceiverAudioSessionBufferedHose <= 90 && (gLogCategory_APReceiverAudioSessionBufferedHose != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_APReceiverAudioSessionBufferedHose, "OSStatus APReceiverAudioSessionBufferedHoseApplyVolumeFade(void *, APSVolumeFadeType, CMTime)", 33554522, "### %@ Fade-out may only be applied when audio is playing, current rate: %u\n", *(a1 + 24), *(a1 + 204));
    }
  }

  else
  {
    if (a2 == 1)
    {
      if (*(a1 + 204))
      {
        v9 = 4294895145;
        APSLogErrorAt();
        if (gLogCategory_APReceiverAudioSessionBufferedHose <= 90 && (gLogCategory_APReceiverAudioSessionBufferedHose != -1 || _LogCategory_Initialize()))
        {
          LogPrintF(&gLogCategory_APReceiverAudioSessionBufferedHose, "OSStatus APReceiverAudioSessionBufferedHoseApplyVolumeFade(void *, APSVolumeFadeType, CMTime)", 33554522, "### %@ Fade-in may only be applied when audio is not playing, current rate: %u\n", *(a1 + 24), *(a1 + 204));
        }

        return v9;
      }

LABEL_14:
      v10 = *(a1 + 128);
      *&v15.value = *&a3->value;
      v15.epoch = a3->epoch;
      APSEndpointStreamAudioHoseProtocolGetProtocolID();
      ProtocolVTable = CMBaseObjectGetProtocolVTable();
      if (ProtocolVTable && (v12 = *(ProtocolVTable + 16)) != 0)
      {
        v13 = *(v12 + 72);
        if (v13)
        {
          time = v15;
          v9 = v13(v10, a2, &time);
          if (!v9)
          {
            return v9;
          }
        }

        else
        {
          v9 = 4294954514;
        }
      }

      else
      {
        v9 = 4294954508;
      }

      APSLogErrorAt();
      return v9;
    }

    v9 = 4294895145;
    if (gLogCategory_APReceiverAudioSessionBufferedHose <= 90 && (gLogCategory_APReceiverAudioSessionBufferedHose != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_APReceiverAudioSessionBufferedHose, "OSStatus APReceiverAudioSessionBufferedHoseApplyVolumeFade(void *, APSVolumeFadeType, CMTime)", 33554522, "### %@ Invalid FadeType %u\n", *(a1 + 24), a2);
    }
  }

  return v9;
}

uint64_t audioSessionBufferedHose_setMagicCookieCompletionHandler(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  *a4 = a3;
  *(a4 + 8) = a2;
  dispatch_semaphore_signal(*(a4 + 16));
  return 0;
}

uint64_t audioSessionBufferedHose_updatePKDCryptorEncryptionKeyCompletionHandler(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  *a4 = a3;
  *(a4 + 8) = a2;
  dispatch_semaphore_signal(*(a4 + 16));
  return 0;
}