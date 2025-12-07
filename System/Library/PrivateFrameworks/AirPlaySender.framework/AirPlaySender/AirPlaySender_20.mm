uint64_t endpointAggregate_addEndpointInternal_cold_1(_DWORD *a1)
{
  result = APSLogErrorAt();
  *a1 = -15580;
  return result;
}

uint64_t endpointAggregate_addEndpointInternal_cold_7()
{
  APSLogErrorAt();
  OUTLINED_FUNCTION_8_2();
  return APSLogErrorAt();
}

uint64_t endpointAggregate_updateIsVolumeControlSupported_cold_1(char a1, uint64_t a2)
{
  v2 = "yes";
  if (!a1)
  {
    v2 = "no";
  }

  v9 = v2;
  OUTLINED_FUNCTION_2_0();
  return LogPrintF(v3, v4, v5, v6, a2, v9);
}

uint64_t endpointAggregate_addObserverInternal_cold_1()
{
  APSLogErrorAt();

  return APSSignalErrorAt();
}

void endpointAggregate_destroyAggregateStreams_cold_1(const __CFArray *a1, CFArrayRef *a2, uint64_t a3, uint64_t a4)
{
  if (CFArrayGetCount(a1) > 0)
  {
    v7 = 0;
    do
    {
      ValueAtIndex = CFArrayGetValueAtIndex(*a2, v7);
      Value = CFDictionaryGetValue(*(a4 + 128), ValueAtIndex);
      if (Value)
      {
        v10 = Value;
        if (gLogCategory_APEndpointAggregate < 51 && (gLogCategory_APEndpointAggregate != -1 || OUTLINED_FUNCTION_4(&gLogCategory_APEndpointAggregate)))
        {
          OUTLINED_FUNCTION_2_0();
          LogPrintF(v11, v12, v13, "[%{ptr}] Destroy %@ stream [%{ptr}]\n", a3, ValueAtIndex, v10);
        }

        v14 = *(*(CMBaseObjectGetVTable() + 16) + 32);
        if (v14)
        {
          v14(v10);
        }

        DerivedStorage = CMBaseObjectGetDerivedStorage();
        if (CFArrayGetCount(*(DerivedStorage + 32)) >= 1)
        {
          v16 = 0;
          while (1)
          {
            v17 = CFArrayGetValueAtIndex(*(DerivedStorage + 32), v16);
            if (CFEqual(v10, v17))
            {
              break;
            }

            if (++v16 >= CFArrayGetCount(*(DerivedStorage + 32)))
            {
              goto LABEL_16;
            }
          }

          CFArrayRemoveValueAtIndex(*(DerivedStorage + 32), v16);
        }

LABEL_16:
        CMNotificationCenterGetDefaultLocalCenter();
        OUTLINED_FUNCTION_1_9();
        FigNotificationCenterRemoveWeakListener();
        CMNotificationCenterGetDefaultLocalCenter();
        OUTLINED_FUNCTION_7_1();
        FigNotificationCenterRemoveWeakListener();
        v18 = FigCFEqual();
        if (v18)
        {
          endpointAggregate_handleBufferedAudioCapabilitiesChanged(v18, a3);
        }

        CFDictionaryRemoveValue(*(a4 + 128), ValueAtIndex);
        APEndpointGetFeatureFromStreamType(ValueAtIndex);
      }

      ++v7;
    }

    while (v7 < CFArrayGetCount(*a2));
  }

  endpointAggregate_updateEngagedState(a3);
}

uint64_t __endpointAggregate_notifyStreamObservers_block_invoke_cold_1(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64))
  {
    v3 = "added";
  }

  else
  {
    v3 = "removed";
  }

  v12 = *(a1 + 48);
  v11 = v3;
  v9 = *(a1 + 40);
  OUTLINED_FUNCTION_2_0();
  return LogPrintF(v4, v5, v6, v7, v9, a2, v11, v12, a3);
}

uint64_t endpointAggregate_activateSubEndpointCallback_cold_1(const void **a1, const void *a2)
{
  v3 = *a1;
  CMBaseObjectGetDerivedStorage();
  endpointAggregate_updateURLPlaybackSupportedState(v3);
  endpointAggregate_ensureLocalPlaybackIsEnabledOrDisabled(v3);
  DefaultLocalCenter = CMNotificationCenterGetDefaultLocalCenter();
  OUTLINED_FUNCTION_2_7(DefaultLocalCenter, v5, v6, *MEMORY[0x277CC0DC0]);
  v7 = CMNotificationCenterGetDefaultLocalCenter();
  OUTLINED_FUNCTION_2_7(v7, v8, v9, *MEMORY[0x277CC0D60]);
  v10 = CMNotificationCenterGetDefaultLocalCenter();
  OUTLINED_FUNCTION_2_7(v10, v11, v12, *MEMORY[0x277CC0DB0]);
  v13 = CMNotificationCenterGetDefaultLocalCenter();
  OUTLINED_FUNCTION_2_7(v13, v14, v15, *MEMORY[0x277CC0DB8]);
  v16 = CMNotificationCenterGetDefaultLocalCenter();
  OUTLINED_FUNCTION_2_7(v16, v17, v18, *MEMORY[0x277CC0D70]);
  v19 = CMNotificationCenterGetDefaultLocalCenter();
  OUTLINED_FUNCTION_2_7(v19, v20, v21, *MEMORY[0x277CC0CF0]);
  v22 = CMNotificationCenterGetDefaultLocalCenter();
  OUTLINED_FUNCTION_2_7(v22, v23, v24, *MEMORY[0x277CC0D90]);
  v25 = CMNotificationCenterGetDefaultLocalCenter();
  OUTLINED_FUNCTION_2_7(v25, v26, v27, *MEMORY[0x277CC0D48]);
  v28 = APSGetFBOPropertyInt64();
  if (v28)
  {
    endpointAggregate_handleSubEndpointFeatureActivationStateChanged(v3, a2, 1, v28);
  }

  endpointAggregate_updateIsVolumeControlSupported(v3);
  endpointAggregate_updateVolumeControlType(v3);
  endpointAggregate_updateIsMuteControlSupported(v3);
  endpointAggregate_updateVideoPlaybackIsActive(v3);

  return endpointAggregate_updateClusterCompositionPropertiesFromSubEndpoint(v3, a2, 0);
}

double endpointAggregate_handleFailedInternal_cold_2(uint64_t a1, uint64_t *a2)
{
  APSLogErrorAt();

  FigSimpleMutexUnlock();
  return result;
}

uint64_t endpointAggregate_activateInternal_cold_1(uint64_t *a1)
{
  v7 = a1[1];
  v6 = *a1;
  OUTLINED_FUNCTION_2_0();
  return LogPrintF(v1, v2, v3, v4, v6, v7, &unk_2222981D8);
}

uint64_t endpointAggregate_updateFeaturesInternalWithContext_cold_3(_DWORD *a1)
{
  result = APSLogErrorAt();
  *a1 = -6728;
  return result;
}

void __carAudioStream_setVocoderInfo_block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (!*(v1 + 176))
  {
    return;
  }

  AudioType = APCarPlayAudioFormatInfoGetAudioType(*(v1 + 192));
  if (!AudioType)
  {
    goto LABEL_20;
  }

  v4 = AudioType;
  StreamType = APCarPlayAudioFormatInfoGetStreamType(*(*(a1 + 32) + 192));
  if (StreamType != 100)
  {
    if (StreamType)
    {
      return;
    }

LABEL_20:

    APSLogErrorAt();
    return;
  }

  if (CFEqual(v4, @"telephony"))
  {
    v6 = FigCFWeakReferenceHolderCopyReferencedObject();
    if (v6)
    {
      v7 = v6;
      v8 = CFGetAllocator(*(a1 + 40));
      Mutable = CFDictionaryCreateMutable(v8, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
      if (Mutable)
      {
        v10 = Mutable;
        FigCFDictionarySetInt64();
        FigCFDictionarySetValue();
        if (gLogCategory_APEndpointStreamCarPlayAudio <= 30 && (gLogCategory_APEndpointStreamCarPlayAudio != -1 || OUTLINED_FUNCTION_10(&gLogCategory_APEndpointStreamCarPlayAudio)))
        {
          OUTLINED_FUNCTION_4_1(&gLogCategory_APEndpointStreamCarPlayAudio, "void carAudioStream_setVocoderInfo(FigEndpointStreamRef, CFDictionaryRef)_block_invoke_2", v11, "[%{ptr}] %@: Sending updated vocoder info: %@\n");
        }

        v12 = *(*(CMBaseObjectGetVTable() + 24) + 72);
        if (v12)
        {
          v12(v7, @"updateVocoderInfo", v10, 0, 0);
        }

        CFRelease(v10);
      }

      else
      {
        APSLogErrorAt();
      }

      CFRelease(v7);
    }
  }
}

void carAudioStream_handleOutputControlMessage(const void *a1, int a2, const void *a3, const void *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a2 == 1634168383)
  {
    v9 = DerivedStorage;
    CFRetain(a1);
    CFRetain(a3);
    CFRetain(a4);
    OUTLINED_FUNCTION_4_7();
    v11[1] = 0x40000000;
    v11[2] = __carAudioStream_handleOutputControlMessage_block_invoke;
    v11[3] = &__block_descriptor_tmp_168;
    v11[4] = v9;
    v11[5] = a3;
    v11[6] = a4;
    v11[7] = a1;
    dispatch_async(v10, v11);
  }
}

void __carAudioStream_sendMainHighMessage_block_invoke()
{
  OUTLINED_FUNCTION_13_2();
  if (v2)
  {
    carAudioStream_MarkPacket(*(v1 + 192), 1);
    v3 = *(v0 + 40);
    v4 = *(*(v0 + 32) + 464);
    v5 = *(v0 + 56);
    v6 = *(*(CMBaseObjectGetVTable() + 16) + 48);
    if (v6)
    {
      v6(v4, v5, v3);
    }
  }

  CFRelease(*(v0 + 40));
  v7 = *(v0 + 48);

  CFRelease(v7);
}

void __carAudioStream_handleOutputControlMessage_block_invoke(uint64_t a1, __n128 a2)
{
  v5 = 0;
  v4 = 0;
  if (*(*(a1 + 32) + 176))
  {
    if (APSTransportMessageGetRetransmitRequest())
    {
      APSLogErrorAt();
    }

    else
    {
      if (gLogCategory_APEndpointStreamCarPlayAudio <= 30 && (gLogCategory_APEndpointStreamCarPlayAudio != -1 || OUTLINED_FUNCTION_10(&gLogCategory_APEndpointStreamCarPlayAudio)))
      {
        OUTLINED_FUNCTION_4_1(&gLogCategory_APEndpointStreamCarPlayAudio, "void carAudioStream_handleOutputControlMessage(FigTransportStreamRef, OSType, CMBlockBufferRef, void *)_block_invoke", v3, "[%{ptr}] %@: Received audio retransmit request starting at sequence number %d for %d messages\n");
      }

      --HIWORD(v5);
    }
  }

  CFRelease(*(a1 + 48));
  CFRelease(*(a1 + 40));
  CFRelease(*(a1 + 56));
  if (v4)
  {
    CFRelease(v4);
  }
}

void __carAudioStream_handleOutputControlMessage_block_invoke_2(uint64_t a1)
{
  v11 = 0;
  v2 = *(a1 + 32);
  if (*(v2 + 176))
  {
    v3 = *(v2 + 456);
    v4 = *(*(CMBaseObjectGetVTable() + 16) + 32);
    if (!v4 || v4(v3, 4, &v11) || APSTransportMessageSetRetransmitResponseFutile() || (v5 = *(*(a1 + 32) + 456), v6 = v11, (v7 = *(*(CMBaseObjectGetVTable() + 16) + 48)) == 0) || v7(v5, 560031598, v6))
    {
      APSLogErrorAt();
    }

    else if (gLogCategory_APEndpointStreamCarPlayAudio <= 30 && (gLogCategory_APEndpointStreamCarPlayAudio != -1 || OUTLINED_FUNCTION_10(&gLogCategory_APEndpointStreamCarPlayAudio)))
    {
      OUTLINED_FUNCTION_4_1(&gLogCategory_APEndpointStreamCarPlayAudio, "void carAudioStream_handleOutputControlMessage(FigTransportStreamRef, OSType, CMBlockBufferRef, void *)_block_invoke_2", v8, "[%{ptr}] %@: Sent futile retransmit response for sequence number %d\n");
    }
  }

  *(*(a1 + 32) + 536) += *(a1 + 48);
  if (v11 && *(*(CMBaseObjectGetVTable() + 16) + 40))
  {
    v9 = OUTLINED_FUNCTION_18_0();
    v10(v9);
  }

  CFRelease(*(a1 + 40));
}

void __carAudioStream_handleOutputControlMessage_block_invoke_3()
{
  OUTLINED_FUNCTION_13_2();
  if (v2)
  {
    v3 = *(v1 + 456);
    v4 = v0[5];
    v5 = *(*(CMBaseObjectGetVTable() + 16) + 48);
    if (v5)
    {
      v5(v3, 1634168352, v4);
    }
  }

  v6 = v0[5];
  ++*(v0[4] + 528);
  CFRelease(v6);
  v7 = v0[6];

  CFRelease(v7);
}

uint64_t __carAudioStream_flush_block_invoke_cold_2(uint64_t a1, uint64_t a2, CMTime *a3)
{
  time = *a3;
  CMTimeGetSeconds(&time);
  return OUTLINED_FUNCTION_4_1(&gLogCategory_APEndpointStreamCarPlayAudio, "OSStatus carAudioStream_flush(FigEndpointStreamRef, FigEndpointStreamFlushFlags, CFDictionaryRef)_block_invoke", v3, "[%{ptr}] %@ Flush: 0x%x/%lf\n");
}

uint64_t APSenderSessionShouldEstablishNetworkClockLink(int a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v25 = 0;
  if ((a1 - 1) >= 8 || ((0xE1u >> (a1 - 1)) & 1) == 0)
  {
    if (APSSettingsGetInt64() || !FigCFEqual() || !APSGetFBOPropertyInt64() || !apsession_isClusterSession(a1, a2, 0, &v25 + 1, &v25))
    {
      goto LABEL_29;
    }

    v11 = HIBYTE(v25);
    v12 = (HIBYTE(v25) | v25) != 0;
    if (gLogCategory_APSenderSessionAirPlay <= 30)
    {
      if (gLogCategory_APSenderSessionAirPlay == -1)
      {
        if (!OUTLINED_FUNCTION_10(&gLogCategory_APSenderSessionAirPlay))
        {
          goto LABEL_28;
        }

        v11 = HIBYTE(v25);
      }

      if (v12)
      {
        v13 = "yes";
      }

      else
      {
        v13 = "no";
      }

      if (v11)
      {
        v14 = "yes";
      }

      else
      {
        v14 = "no";
      }

      if (a1 == 3)
      {
        v15 = "yes";
      }

      else
      {
        v15 = "no";
      }

      if (a1 == 11)
      {
        v16 = "yes";
      }

      else
      {
        v16 = "no";
      }

      if (apsession_isTightSyncBuddyConnection())
      {
        v17 = "yes";
      }

      else
      {
        v17 = "no";
      }

      v24 = v17;
      OUTLINED_FUNCTION_3();
      LogPrintF(v18, v19, v20, v21, a4, v13, v14, v15, v16, v24);
    }

LABEL_28:
    if (!v12)
    {
      v7 = 0;
      v8 = 0;
      v9 = "external Cluster connection to non-Cluster leader";
      goto LABEL_4;
    }

LABEL_29:
    v9 = 0;
    v7 = 1;
    v8 = 1;
    v10 = "";
    goto LABEL_30;
  }

  v7 = 0;
  v8 = 0;
  v9 = "RC session";
LABEL_4:
  v10 = " not";
LABEL_30:
  if (gLogCategory_APSenderSessionAirPlay <= 50)
  {
    OUTLINED_FUNCTION_24();
    if (v22 != -1 || _LogCategory_Initialize())
    {
      LogPrintF(&gLogCategory_APSenderSessionAirPlay, "Boolean APSenderSessionShouldEstablishNetworkClockLink(APSenderSessionUsage, APEndpointDescriptionRef, CFStringRef, void *)", 0x80FB0000 + 20, "[%{ptr}] Should%s establish Network Clock link%?{end} due to %s", a4, v10, v8, v9);
    }
  }

  return v7;
}

BOOL APSenderSessionShouldPerformNetworkClockSETPEERS(int a1, uint64_t a2)
{
  v7 = 0;
  v6 = 0;
  if (a1 - 1) < 8 && ((0xE1u >> (a1 - 1)))
  {
    return 0;
  }

  if (APSIsPortMatchingOverrideEnabled() || APSGetFBOPropertyInt64())
  {
    return 1;
  }

  if (APSGetFBOPropertyInt64())
  {
    return 0;
  }

  isClusterSession = apsession_isClusterSession(a1, a2, &v6, &v7 + 1, &v7);
  result = 0;
  if (isClusterSession && v6 == 1)
  {
    return (HIBYTE(v7) | v7) == 0;
  }

  return result;
}

double apsession_handleTransportSessionDisconnected(uint64_t a1, const void *a2, uint64_t a3, const void *a4, const __CFDictionary *a5)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a5 && (v9 = CFGetTypeID(a5), v9 == CFDictionaryGetTypeID()))
  {
    if (CFDictionaryContainsKey(a5, *MEMORY[0x277CE4F40]) || *(DerivedStorage + 72) == 5 && CFDictionaryContainsKey(a5, *MEMORY[0x277CE4F38]))
    {
      Int64 = CFDictionaryGetInt64();
    }

    else
    {
      Int64 = 4294950683;
    }

    if (CFDictionaryContainsKey(a5, *MEMORY[0x277CE4F48]))
    {
      v11 = CFDictionaryGetInt64() == 1702260340;
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v11 = 0;
    Int64 = 4294950683;
  }

  apsession_recordActivationMessageTiming(a2);
  FigSimpleMutexLock();
  if (*(DerivedStorage + 320) == a4)
  {
    v12 = *(DerivedStorage + 306);
    if (*(DerivedStorage + 311))
    {
      v13 = *(DerivedStorage + 309) != 0 && v11;
      if (!*(DerivedStorage + 316))
      {
        if (gLogCategory_APSenderSessionAirPlay <= 50 && (gLogCategory_APSenderSessionAirPlay != -1 || OUTLINED_FUNCTION_4(&gLogCategory_APSenderSessionAirPlay)))
        {
          OUTLINED_FUNCTION_2_0();
          LogPrintF(v14, v15, v16, v17, a2, "void apsession_handleTransportSessionDisconnected(CMNotificationCenterRef, const void *, CFStringRef, const void *, CFTypeRef)", Int64, a4);
        }

        if ((v13 & 1) == 0)
        {
          apsession_invalidateAndClearTransportStreams(a2);
        }

        v22 = kAPSenderSessionState_InProgress;
        if (!v12)
        {
          v22 = kAPSenderSessionState_Starting;
        }

        apsession_dispatchPostFailedNotification(a2, Int64, *v22);
      }
    }

    else
    {
      *(DerivedStorage + 312) = Int64;
      if (gLogCategory_APSenderSessionAirPlay <= 50 && (gLogCategory_APSenderSessionAirPlay != -1 || OUTLINED_FUNCTION_4(&gLogCategory_APSenderSessionAirPlay)))
      {
        OUTLINED_FUNCTION_2_0();
        LogPrintF(v18, v19, v20, v21, a2, "void apsession_handleTransportSessionDisconnected(CMNotificationCenterRef, const void *, CFStringRef, const void *, CFTypeRef)", Int64, a4);
      }

      v13 = 1;
    }

    FigSimpleMutexUnlock();
    if (gLogCategory_APSenderSessionAirPlay <= 50 && (gLogCategory_APSenderSessionAirPlay != -1 || OUTLINED_FUNCTION_4(&gLogCategory_APSenderSessionAirPlay)))
    {
      v23 = "true";
      if (v12)
      {
        v24 = "true";
      }

      else
      {
        v24 = "false";
      }

      if (v13)
      {
        v23 = "false";
      }

      v35 = v24;
      v36 = v23;
      OUTLINED_FUNCTION_2_0();
      LogPrintF(v25, v26, v27, v28, a2, "void apsession_handleTransportSessionDisconnected(CMNotificationCenterRef, const void *, CFStringRef, const void *, CFTypeRef)", a4, Int64, v35, v36);
    }

    CFRetain(a2);
    CFRetain(a4);
    v29 = *(DerivedStorage + 184);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 0x40000000;
    block[2] = __apsession_handleTransportSessionDisconnected_block_invoke;
    block[3] = &__block_descriptor_tmp_75_0;
    block[4] = a4;
    block[5] = DerivedStorage;
    block[6] = a2;
    dispatch_async(v29, block);
  }

  else
  {
    if (gLogCategory_APSenderSessionAirPlay <= 50 && (gLogCategory_APSenderSessionAirPlay != -1 || OUTLINED_FUNCTION_4(&gLogCategory_APSenderSessionAirPlay)))
    {
      OUTLINED_FUNCTION_2_0();
      LogPrintF(v31, v32, v33, v34, a2, "void apsession_handleTransportSessionDisconnected(CMNotificationCenterRef, const void *, CFStringRef, const void *, CFTypeRef)", a4, Int64);
    }

    FigSimpleMutexUnlock();
  }

  return result;
}

uint64_t apsession_stopSenderNetworkClockIfNeeded(uint64_t a1)
{
  result = CMBaseObjectGetDerivedStorage();
  v3 = result;
  if (!*(result + 80) || !*(result + 194))
  {
    goto LABEL_22;
  }

  CMNotificationCenterGetDefaultLocalCenter();
  FigNotificationCenterRemoveWeakListener();
  if (*(v3 + 217) || *(v3 + 24) != @"PTP")
  {
    goto LABEL_5;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!*(DerivedStorage + 264) || (v6 = DerivedStorage, (TimingPeerIdentifier = apsession_getTimingPeerIdentifier(a1)) == 0))
  {
    APSLogErrorAt();
    goto LABEL_5;
  }

  v8 = TimingPeerIdentifier;
  v9 = *(v6 + 80);
  v10 = *(*(CMBaseObjectGetVTable() + 16) + 40);
  if (v10 && !v10(v9, a1, v8, 0, 0))
  {
    v4 = gLogCategory_APSenderSessionAirPlay;
    if (gLogCategory_APSenderSessionAirPlay > 30)
    {
      goto LABEL_6;
    }

    if (gLogCategory_APSenderSessionAirPlay == -1 && !OUTLINED_FUNCTION_10(&gLogCategory_APSenderSessionAirPlay))
    {
LABEL_5:
      v4 = gLogCategory_APSenderSessionAirPlay;
LABEL_6:
      if (v4 <= 40 && (v4 != -1 || _LogCategory_Initialize()))
      {
        LogPrintF(&gLogCategory_APSenderSessionAirPlay, "OSStatus apsession_stopSenderNetworkClockIfNeeded(APSenderSessionRef)", 33554472, "[%{ptr}] <AirPlayClock> %###s: Stopping network clock [%{ptr}] for non-group session", a1, "OSStatus apsession_stopSenderNetworkClockIfNeeded(APSenderSessionRef)", *(v3 + 80));
      }

      goto LABEL_19;
    }

    v19 = a1;
    v20 = v8;
    OUTLINED_FUNCTION_3();
LABEL_18:
    LogPrintF(v11, v12, v14, v13, v19, v20);
    goto LABEL_5;
  }

  if (gLogCategory_APSenderSessionAirPlay <= 90)
  {
    if (gLogCategory_APSenderSessionAirPlay == -1 && !_LogCategory_Initialize())
    {
      goto LABEL_5;
    }

    v19 = a1;
    v20 = v8;
    v11 = &gLogCategory_APSenderSessionAirPlay;
    v12 = "OSStatus apsession_removePeerFromNetworkClock(APSenderSessionRef)";
    v13 = "### [%{ptr}] Failed to remove peer %@ from sender network clock\n";
    v14 = 33554522;
    goto LABEL_18;
  }

LABEL_19:
  v15 = *(v3 + 80);
  VTable = CMBaseObjectGetVTable();
  v17 = *(VTable + 16);
  result = VTable + 16;
  v18 = *(v17 + 88);
  if (v18)
  {
    result = v18(v15, a1);
  }

  *(v3 + 194) = 0;
LABEL_22:
  *(v3 + 272) = 0;
  return result;
}

void apsession_ensureDisconnected(const void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  cf = 0;
  apsession_copyTransportSession(a1, &cf);
  if (*(DerivedStorage + 216))
  {
    v3 = cf;
    if (cf)
    {
      v4 = *(*(CMBaseObjectGetVTable() + 16) + 56);
      if (v4)
      {
        v4(v3);
      }
    }

    *(DerivedStorage + 216) = 0;
  }

  apsession_recordActivationMessageTiming(a1);
  FigSimpleMutexLock();
  if (*(DerivedStorage + 304))
  {
    v5 = *(DerivedStorage + 305) != 0;
  }

  else
  {
    v5 = 0;
  }

  apsession_invalidateAndClearTransportStreams(a1);
  if (*(DerivedStorage + 320))
  {
    CMBaseObject = FigTransportSessionGetCMBaseObject();
    if (CMBaseObject)
    {
      v7 = CMBaseObject;
      v8 = *(*(CMBaseObjectGetVTable() + 8) + 24);
      if (v8)
      {
        v8(v7);
      }
    }

    apsession_setTransportSession(a1, 0);
  }

  FigSimpleMutexUnlock();
  if (v5)
  {
    CMNotificationCenterGetDefaultLocalCenter();
    FigDispatchAsyncPostNotification();
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (gLogCategory_APSenderSessionAirPlay <= 50 && (gLogCategory_APSenderSessionAirPlay != -1 || OUTLINED_FUNCTION_4(&gLogCategory_APSenderSessionAirPlay)))
  {
    OUTLINED_FUNCTION_2_0();
    LogPrintF(v9, v10, v11, v12, a1);
  }
}

void apsession_handlePeerListChangedNotification(uint64_t a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  theArray = 0;
  TimingPeerIdentifier = apsession_getTimingPeerIdentifier(a2);
  if (*DerivedStorage)
  {
    OUTLINED_FUNCTION_8_3();
    if (v11 ^ v12 | v10 && (v40 != -1 || OUTLINED_FUNCTION_4(&gLogCategory_APSenderSessionAirPlay)))
    {
      OUTLINED_FUNCTION_2_0();
      LogPrintF(v41, v42, v43, v44, a2);
    }

    goto LABEL_16;
  }

  v5 = TimingPeerIdentifier;
  if (!APSenderSessionShouldPerformNetworkClockSETPEERS(*(DerivedStorage + 72), *(DerivedStorage + 56)) || *(DerivedStorage + 24) != @"PTP")
  {
LABEL_16:
    v16 = 0;
    goto LABEL_17;
  }

  v6 = APSGetFBOPropertyInt64();
  v7 = *(DerivedStorage + 80);
  v8 = *(*(CMBaseObjectGetVTable() + 16) + 56);
  if (!v8 || v8(v7, a2, v5, v6 != 0, &theArray))
  {
    APSLogErrorAt();
    goto LABEL_16;
  }

  OUTLINED_FUNCTION_8_3();
  if (v11 ^ v12 | v10 && (v9 != -1 || OUTLINED_FUNCTION_4(&gLogCategory_APSenderSessionAirPlay)))
  {
    if (v6)
    {
      v13 = "extended";
    }

    else
    {
      v13 = "legacy";
    }

    Count = CFArrayGetCount(theArray);
    if (gLogCategory_APSenderSessionAirPlay > 30)
    {
      v15 = 1;
    }

    else
    {
      v15 = gLogCategory_APSenderSessionAirPlay == -1 && _LogCategory_Initialize() == 0;
    }

    v45 = v15;
    v46 = theArray;
    OUTLINED_FUNCTION_2_0();
    LogPrintF(v17, v18, v19, v20, a2, v13, Count, v5, v45, v46);
  }

  v21 = theArray;
  cf = 0;
  v51 = 0;
  v48 = 0;
  v49 = 0;
  if (!theArray || apsession_isCancelled(a2) || (apsession_copyTransportControlStream(a2, &v51), (v22 = v51) == 0))
  {
    APSLogErrorAt();
LABEL_71:
    v16 = 0;
    v28 = 0;
    goto LABEL_47;
  }

  Data = CFPropertyListCreateData(*MEMORY[0x277CBECE8], v21, kCFPropertyListBinaryFormat_v1_0, 0, 0);
  if (!Data)
  {
    APSLogErrorAt();
    CFRelease(v22);
    goto LABEL_71;
  }

  v24 = Data;
  OUTLINED_FUNCTION_19_1();
  if (FigCreateBlockBufferWithCFDataNoCopy())
  {
    goto LABEL_44;
  }

  v25 = v6 ? 1936027768 : 1936027749;
  v26 = cf;
  v27 = *(*(CMBaseObjectGetVTable() + 16) + 56);
  if (!v27 || v27(v22, v25, v26, &v49) || apsession_isCancelled(a2))
  {
    goto LABEL_44;
  }

  v16 = 0;
  if (!v6)
  {
    v28 = 0;
    goto LABEL_46;
  }

  v28 = 0;
  if (v49)
  {
    OUTLINED_FUNCTION_19_1();
    if (!FigCreateCFDataWithBlockBufferNoCopy())
    {
      OUTLINED_FUNCTION_19_1();
      v33 = CFPropertyListCreateWithData(v29, v30, v31, v32, 0);
      v28 = v33;
      if (!v33 || (v34 = CFGetTypeID(v33), v34 != CFDictionaryGetTypeID()))
      {
        APSLogErrorAt();
        v16 = 0;
        goto LABEL_46;
      }

      v16 = v28;
      goto LABEL_45;
    }

LABEL_44:
    APSLogErrorAt();
    v16 = 0;
LABEL_45:
    v28 = 0;
  }

LABEL_46:
  CFRelease(v22);
  CFRelease(v24);
LABEL_47:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v49)
  {
    CFRelease(v49);
  }

  if (v48)
  {
    CFRelease(v48);
  }

  if (v28)
  {
    CFRelease(v28);
  }

  OUTLINED_FUNCTION_8_3();
  if (v11 ^ v12 | v10 && (v35 != -1 || OUTLINED_FUNCTION_4(&gLogCategory_APSenderSessionAirPlay)))
  {
    OUTLINED_FUNCTION_2_0();
    LogPrintF(v36, v37, v38, v39, a2, v16);
  }

  if (v16 && APSIsPortMatchingOverrideEnabled() && APSNetworkClockAddOrUpdatePeerFromSerializablePeerDictionary())
  {
    APSLogErrorAt();
  }

LABEL_17:
  if (theArray)
  {
    CFRelease(theArray);
  }

  if (v16)
  {
    CFRelease(v16);
  }
}

double apsession_updateSenderSessionMetricsForRTCStats(uint64_t a1)
{
  CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APSenderSessionAirPlay <= 30 && (gLogCategory_APSenderSessionAirPlay != -1 || OUTLINED_FUNCTION_10(&gLogCategory_APSenderSessionAirPlay)))
  {
    OUTLINED_FUNCTION_3();
    LogPrintF(v2, v3, v4, v5, a1);
  }

  if (!APSEventRecorderGetTimeBetweenEventsInMilliSecondRecursiveEx())
  {
    CFDictionarySetInt64();
  }

  if (!APSEventRecorderGetTimeBetweenEventsInMilliSecondRecursiveEx())
  {
    CFDictionarySetInt64();
  }

  APSEventRecorderGetTimeBetweenEventsInMilliSecondRecursive();
  APSEventRecorderGetTimeBetweenEventsInMilliSecondRecursive();
  APSEventRecorderGetTimeBetweenEventsInMilliSecondRecursive();
  APSEventRecorderGetTimeBetweenEventsInMilliSecondRecursive();
  APSEventRecorderGetTimeBetweenEventsInMilliSecondRecursive();
  APSEventRecorderGetTimeBetweenEventsInMilliSecondRecursive();
  if (APSEventRecorderGetEventTimeRecursive())
  {
    APSEventRecorderGetTimeBetweenEventsInMilliSecondRecursive();
  }

  APSEventRecorderGetTimeBetweenEventsInMilliSecondRecursive();
  APSEventRecorderGetTimeBetweenEventsInMilliSecondRecursive();
  APSEventRecorderGetTimeBetweenEventsInMilliSecondRecursive();
  APSEventRecorderGetTimeBetweenEventsInMilliSecondRecursive();
  APSEventRecorderGetTimeBetweenEventsInMilliSecondRecursive();
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
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v8 = *(DerivedStorage + 168);
  if (v8)
  {
    Count = CFArrayGetCount(v8);
    v10 = Count - 1;
    if (Count >= 1)
    {
      v11 = Count;
      CFArrayGetValueAtIndex(*(DerivedStorage + 168), 0);
      CFArrayGetValueAtIndex(*(DerivedStorage + 168), v10);
      if (APSEventRecorderGetEventTime())
      {
        if (!APSEventRecorderGetTimeBetweenEventsInMilliSecond())
        {
          goto LABEL_16;
        }
      }

      else
      {
        v10 = v11;
        if (!APSEventRecorderGetTimeSinceEventInMilliSecond())
        {
LABEL_16:
          if (v10)
          {
            CFDictionarySetInt64();
          }

          return result;
        }
      }

      CFDictionarySetInt64();
      goto LABEL_16;
    }
  }

  return result;
}

CFMutableArrayRef apsession_copyActiveStreamConnectionIDs(uint64_t a1)
{
  CMBaseObjectGetDerivedStorage();
  Mutable = CFArrayCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF128]);
  if (Mutable)
  {
    FigCFDictionaryApplyBlock();
  }

  return Mutable;
}

uint64_t apsession_ensureKeyHolderSetUp(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 224))
  {
    return 0;
  }

  v3 = DerivedStorage;
  v4 = CMBaseObjectGetDerivedStorage();
  cf = 0;
  v5 = APSGetFBOPropertyInt64();
  v6 = v5;
  if (*(v4 + 114) && !v5)
  {
    if (gLogCategory_APSenderSessionAirPlay <= 90 && (gLogCategory_APSenderSessionAirPlay != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_APSenderSessionAirPlay, "OSStatus apsession_createKeyHolder(APSenderSessionRef, APSKeyHolderRef *)", 33554522, "*** [%{ptr}] %###s: Authentication/encryption disabled ***\n", a1, "OSStatus apsession_createKeyHolder(APSenderSessionRef, APSKeyHolderRef *)");
    }

    v18 = 0;
    v8 = 0;
    v10 = 0;
LABEL_25:
    if (cf)
    {
      CFRelease(cf);
    }

    v19 = 0;
    if (v8)
    {
      goto LABEL_28;
    }

    goto LABEL_29;
  }

  FigSimpleMutexLock();
  v7 = *(v4 + 416);
  if (v7)
  {
    v8 = CFRetain(v7);
  }

  else
  {
    v8 = 0;
  }

  v9 = *(v4 + 408);
  if (v9)
  {
    v10 = CFRetain(v9);
  }

  else
  {
    v10 = 0;
  }

  FigSimpleMutexUnlock();
  v11 = *MEMORY[0x277CBECE8];
  if (v6)
  {
    v12 = APKeyHolderCoreUtilsCreate(v11, v8, &cf);
    if (!v12)
    {
      if (gLogCategory_APSenderSessionAirPlay <= 50 && (gLogCategory_APSenderSessionAirPlay != -1 || OUTLINED_FUNCTION_4(&gLogCategory_APSenderSessionAirPlay)))
      {
        v22 = a1;
        v23 = cf;
LABEL_22:
        OUTLINED_FUNCTION_2_0();
        LogPrintF(v14, v15, v16, v17, v22, v23);
        goto LABEL_42;
      }

      goto LABEL_42;
    }

    v18 = v12;
LABEL_49:
    APSLogErrorAt();
    goto LABEL_25;
  }

  v13 = APKeyHolderLegacyCreate(v11, v8, v10, &cf);
  if (v13)
  {
    v18 = v13;
    goto LABEL_49;
  }

  if (gLogCategory_APSenderSessionAirPlay <= 50 && (gLogCategory_APSenderSessionAirPlay != -1 || OUTLINED_FUNCTION_4(&gLogCategory_APSenderSessionAirPlay)))
  {
    v22 = a1;
    v23 = cf;
    goto LABEL_22;
  }

LABEL_42:
  v18 = 0;
  v19 = cf;
  cf = 0;
  if (v8)
  {
LABEL_28:
    CFRelease(v8);
  }

LABEL_29:
  if (v10)
  {
    CFRelease(v10);
  }

  if (v18)
  {
    APSLogErrorAt();
    if (!v19)
    {
      return v18;
    }

    goto LABEL_37;
  }

  v20 = *(v3 + 224);
  *(v3 + 224) = v19;
  if (v19)
  {
    CFRetain(v19);
  }

  if (v20)
  {
    CFRelease(v20);
  }

  if (v19)
  {
LABEL_37:
    CFRelease(v19);
  }

  return v18;
}

uint64_t apsession_ensureControlStreamSetup(uint64_t a1, void *a2, _DWORD *a3, _DWORD *a4, void *a5, void *a6)
{
  v27 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  cf = 0;
  if (gLogCategory_APSenderSessionAirPlay <= 30 && (gLogCategory_APSenderSessionAirPlay != -1 || OUTLINED_FUNCTION_10(&gLogCategory_APSenderSessionAirPlay)))
  {
    OUTLINED_FUNCTION_3();
    LogPrintF(v13, v14, v15, v16, a1, "OSStatus apsession_ensureControlStreamSetup(APSenderSessionRef, CFArrayRef, int *, int *, CFDictionaryRef *, CFArrayRef *)");
  }

  if (*(DerivedStorage + 193))
  {
    goto LABEL_36;
  }

  v27 = apsession_requestControlSetupWithResponse(a1, a2, 0, &cf);
  if (v27)
  {
    APSLogErrorAt();
LABEL_36:
    TypedValue = 0;
    goto LABEL_30;
  }

  Int64 = CFDictionaryGetInt64();
  if (!v27)
  {
    *a3 = Int64;
  }

  v27 = 0;
  v18 = CFDictionaryGetInt64();
  if (!v27)
  {
    *a4 = v18;
  }

  v27 = 0;
  CFDictionaryGetTypeID();
  TypedValue = CFDictionaryGetTypedValue();
  if (!v27)
  {
    if (gLogCategory_APSenderSessionAirPlay <= 50 && (gLogCategory_APSenderSessionAirPlay != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_APSenderSessionAirPlay, "OSStatus apsession_ensureControlStreamSetup(APSenderSessionRef, CFArrayRef, int *, int *, CFDictionaryRef *, CFArrayRef *)", 33554482, "[%{ptr}] Received SETUP response with timing peer info: %@\n", a1, TypedValue);
    }

    v20 = CFRetain(TypedValue);
    TypedValue = 0;
    *a5 = v20;
  }

  v27 = 0;
  if (*(DerivedStorage + 72) == 5)
  {
    CFArrayGetTypeID();
    v21 = CFDictionaryGetTypedValue();
    if (v27 == -6727)
    {
      v27 = 0;
    }

    else
    {
      if (v27)
      {
        APSLogErrorAt();
        goto LABEL_30;
      }

      if (a6)
      {
        if (v21)
        {
          v21 = CFRetain(v21);
        }

        *a6 = v21;
      }
    }
  }

  v22 = CFDictionaryGetInt64();
  if (!v27)
  {
    v23 = v22;
    FigSimpleMutexLock();
    v24 = MEMORY[0x277CBED28];
    if (!v23)
    {
      v24 = MEMORY[0x277CBED10];
    }

    CFDictionarySetValue(*(DerivedStorage + 496), @"uiPreloaded", *v24);
    FigSimpleMutexUnlock();
  }

  v27 = 0;
  *(DerivedStorage + 193) = 1;
LABEL_30:
  if (cf)
  {
    CFRelease(cf);
  }

  if (TypedValue)
  {
    CFRelease(TypedValue);
  }

  return v27;
}

uint64_t apsession_ensureLowPowerKeepAliveStreamSetup(uint64_t a1, int a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!a2)
  {
    return 0;
  }

  v5 = DerivedStorage;
  FigSimpleMutexLock();
  v6 = *(v5 + 376);
  if (v6)
  {
    v7 = CFRetain(v6);
    FigSimpleMutexUnlock();
    if (v7)
    {
      v8 = 0;
LABEL_29:
      CFRelease(v7);
      return v8;
    }
  }

  else
  {
    FigSimpleMutexUnlock();
  }

  cf = 0;
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (!Mutable)
  {
    APSLogErrorAt();
    v7 = 0;
    v8 = 4294895476;
    goto LABEL_28;
  }

  v10 = Mutable;
  CFDictionarySetInt64();
  CFDictionarySetInt64();
  v11 = *(*(CMBaseObjectGetVTable() + 16) + 64);
  if (v11)
  {
    v12 = v11(a1, 1802529910, v10, &cf);
    if (v12)
    {
      v8 = v12;
    }

    else
    {
      v8 = APSSetFBOPropertyInt64();
      if (!v8)
      {
        v7 = cf;
        cf = 0;
        goto LABEL_13;
      }
    }
  }

  else
  {
    v8 = 4294954514;
  }

  APSLogErrorAt();
  v7 = 0;
LABEL_13:
  CFRelease(v10);
  if (cf)
  {
    CMBaseObject = FigTransportStreamGetCMBaseObject();
    if (CMBaseObject)
    {
      v14 = CMBaseObject;
      v15 = *(*(CMBaseObjectGetVTable() + 8) + 24);
      if (v15)
      {
        v15(v14);
      }
    }

    CFRelease(cf);
  }

  if (!v8)
  {
    FigSimpleMutexLock();
    v16 = *(v5 + 376);
    *(v5 + 376) = v7;
    if (v7)
    {
      CFRetain(v7);
    }

    if (v16)
    {
      CFRelease(v16);
    }

    FigSimpleMutexUnlock();
    v17 = *(*(CMBaseObjectGetVTable() + 16) + 8);
    if (v17)
    {
      v8 = v17(v7);
      if (!v8)
      {
        if (!v7)
        {
          return v8;
        }

        goto LABEL_29;
      }
    }

    else
    {
      v8 = 4294954514;
    }
  }

LABEL_28:
  APSLogErrorAt();
  if (v7)
  {
    goto LABEL_29;
  }

  return v8;
}

uint64_t apsession_ensureUsableLocalNetworkAddresses(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  if (*(DerivedStorage + 560))
  {
    goto LABEL_13;
  }

  if (!*(DerivedStorage + 264))
  {
    APSLogErrorAt();
LABEL_13:
    v5 = 0;
    goto LABEL_7;
  }

  Mutable = CFArrayCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF128]);
  if (Mutable)
  {
    v3 = CFStringCopyUTF8CString();
    if (v3)
    {
      v5 = v3;
    }

    else
    {
      UsableInterfaceList = CreateUsableInterfaceList();
      if (!UsableInterfaceList)
      {
        v5 = 0;
        *(DerivedStorage + 560) = Mutable;
LABEL_7:
        Mutable = 0;
        goto LABEL_8;
      }

      v5 = UsableInterfaceList;
    }

    APSLogErrorAt();
  }

  else
  {
    APSLogErrorAt();
    v5 = 4294950575;
  }

LABEL_8:
  FigSimpleMutexUnlock();
  if (Mutable)
  {
    CFRelease(Mutable);
  }

  return v5;
}

uint64_t apsession_determineTransportAvailabilityAndWaitIfNeeded(uint64_t a1, uint64_t a2, int a3, _DWORD *a4, int a5, int *a6)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!a4)
  {
    APSLogErrorAt();
LABEL_52:
    v15 = 0;
LABEL_53:
    v26 = 0;
    if (!a6)
    {
      return v15;
    }

    goto LABEL_41;
  }

  v13 = DerivedStorage;
  if (apsession_isCancelled(a1))
  {
    APSLogErrorAt();
    v15 = 0;
    v26 = -71832;
    if (!a6)
    {
      return v15;
    }

    goto LABEL_41;
  }

  if ((a2 & ~a3) != 0)
  {
    goto LABEL_52;
  }

  v35 = a6;
  isTransportTypeAvailable = apsession_isTransportTypeAvailable(a1, a2);
  v15 = isTransportTypeAvailable;
  if (a5 && !isTransportTypeAvailable)
  {
    if (a2 == 2)
    {
      v16 = 10;
    }

    else if (a2 == 4)
    {
      if ((*(v13 + 72) & 0xFFFFFFF7) == 3)
      {
        v16 = 20;
      }

      else
      {
        v16 = 10;
      }
    }

    else
    {
      v16 = 0;
    }

    if (((a2 - 2) & 0xFFFFFFFD) != 0)
    {
      v17 = 0;
    }

    else
    {
      v17 = 500000;
    }

    if (gLogCategory_APSenderSessionAirPlay <= 50 && (gLogCategory_APSenderSessionAirPlay != -1 || OUTLINED_FUNCTION_4(&gLogCategory_APSenderSessionAirPlay)))
    {
      v18 = @"UNKNOWN";
      switch(a2)
      {
        case 1:
          v18 = @"Infra";
          break;
        case 2:
          v18 = @"AWDL";
          break;
        case 4:
          v18 = @"NAN";
          break;
        case 8:
          v18 = @"DirectLink";
          break;
        default:
          break;
      }

      v33 = v18;
      OUTLINED_FUNCTION_2_0();
      LogPrintF(v28, v29, v30, v31, a1, v33, v16);
      if (v16)
      {
LABEL_22:
        v19 = 1;
        while (!apsession_isCancelled(a1))
        {
          usleep(v17);
          v15 = apsession_isTransportTypeAvailable(a1, a2);
          if (gLogCategory_APSenderSessionAirPlay <= 50 && (gLogCategory_APSenderSessionAirPlay != -1 || OUTLINED_FUNCTION_4(&gLogCategory_APSenderSessionAirPlay)))
          {
            v20 = @"UNKNOWN";
            switch(a2)
            {
              case 1:
                v20 = @"Infra";
                break;
              case 2:
                v20 = @"AWDL";
                break;
              case 4:
                v20 = @"NAN";
                break;
              case 8:
                v20 = @"DirectLink";
                break;
              default:
                break;
            }

            v21 = "is now";
            if (!v15)
            {
              v21 = "still not";
            }

            v32 = v20;
            v34 = v21;
            OUTLINED_FUNCTION_2_0();
            LogPrintF(v22, v23, v24, "[%{ptr}] %@ %s available (retry %ld of %ld)\n", a1, v32, v34, v19, v16);
          }

          if (!v15 && v19++ < v16)
          {
            continue;
          }

          goto LABEL_39;
        }

        APSLogErrorAt();
        v15 = 0;
        v26 = -71832;
LABEL_48:
        a6 = v35;
        if (!v35)
        {
          return v15;
        }

        goto LABEL_41;
      }
    }

    else if (v16)
    {
      goto LABEL_22;
    }

    v15 = 0;
    v26 = 0;
    goto LABEL_48;
  }

LABEL_39:
  a6 = v35;
  if (!v15)
  {
    goto LABEL_53;
  }

  v26 = 0;
  *a4 |= a2;
  if (v35)
  {
LABEL_41:
    *a6 = v26;
  }

  return v15;
}

uint64_t apsession_fetchInfo(const void *a1, int a2, int a3, const __CFDictionary *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  cf = 0;
  v88 = 0;
  theString1 = 0;
  v86 = 0;
  if (*(DerivedStorage + 72) == 10)
  {
    v37 = 0;
    v61 = 0;
  }

  else
  {
    v9 = DerivedStorage;
    apsession_copyTransportControlStream(a1, &v86);
    v10 = v86;
    if (v86)
    {
      v11 = *MEMORY[0x277CBECE8];
      if (a4 && *(v9 + 72) == 5)
      {
        v12 = OUTLINED_FUNCTION_18_1();
        MutableCopy = CFDictionaryCreateMutableCopy(v12, v13, a4);
      }

      else
      {
        v15 = OUTLINED_FUNCTION_18_1();
        MutableCopy = CFDictionaryCreateMutable(v15, v16, v17, v18);
      }

      v19 = MutableCopy;
      if (MutableCopy)
      {
        if (a2)
        {
          CFArrayEnsureCreatedAndAppend();
        }

        if (a3)
        {
          CFArrayEnsureCreatedAndAppend();
        }

        if (gLogCategory_APSenderSessionAirPlay <= 30 && (gLogCategory_APSenderSessionAirPlay != -1 || _LogCategory_Initialize()))
        {
          LogPrintF(&gLogCategory_APSenderSessionAirPlay, "OSStatus apsession_fetchInfo(APSenderSessionRef, Boolean, Boolean, CFDictionaryRef)", 33554462, "[%{ptr}] GetInfo with qualifier: %1.64@\n", a1, v88);
        }

        FigCFDictionarySetValue();
        CFDictionaryGetCount(v19);
        v20 = APTransportStreamSendPlistMessageCreatingPlistReply();
        if (v20)
        {
          v61 = v20;
        }

        else
        {
          if (gLogCategory_APSenderSessionAirPlay <= 30 && (gLogCategory_APSenderSessionAirPlay != -1 || _LogCategory_Initialize()))
          {
            LogPrintF(&gLogCategory_APSenderSessionAirPlay, "OSStatus apsession_fetchInfo(APSenderSessionRef, Boolean, Boolean, CFDictionaryRef)", 33554462, "[%{ptr}] GetInfo response: %@\n", a1, cf);
          }

          if (cf)
          {
            v21 = CFGetTypeID(cf);
            if (v21 == CFDictionaryGetTypeID())
            {
              Value = CFDictionaryGetValue(cf, @"deviceID");
              APEndpointDescriptionGetCMBaseObject();
              v24 = v23;
              v25 = *(*(CMBaseObjectGetVTable() + 8) + 48);
              if (v25)
              {
                v25(v24, @"DeviceID", v11, &theString1);
              }

              if (Value && theString1 && CFStringCompare(theString1, @"FF:FF:FF:FF:FF:FF", 1uLL) && CFStringCompare(Value, theString1, 1uLL) && gLogCategory_APSenderSessionAirPlay <= 90 && (gLogCategory_APSenderSessionAirPlay != -1 || _LogCategory_Initialize()))
              {
                LogPrintF(&gLogCategory_APSenderSessionAirPlay, "OSStatus apsession_fetchInfo(APSenderSessionRef, Boolean, Boolean, CFDictionaryRef)", 33554522, "[%{ptr}] The device connected to (discoveryID=%@) did not match the desired device (discoveryID=%@). This usually indicates two devices with the same bonjour host name.\n", a1, Value, theString1);
              }

              if (a3)
              {
                v26 = CFDictionaryGetValue(cf, @"displayCapabilities");
                OUTLINED_FUNCTION_8_3();
                if (v29 ^ v30 | v28 && (v27 != -1 || OUTLINED_FUNCTION_4(&gLogCategory_APSenderSessionAirPlay)))
                {
                  OUTLINED_FUNCTION_2_0();
                  LogPrintF(v31, v32, v33, v34, a1, v26);
                }

                v35 = *(v9 + 200);
                *(v9 + 200) = v26;
                if (v26)
                {
                  CFRetain(v26);
                }

                if (v35)
                {
                  CFRelease(v35);
                }
              }

              if (*(v9 + 72) == 1)
              {
                InfoResponseWithUGLAddressesUpdatedFromTransportStream = APSenderSessionUtilityCopyGetInfoResponseWithUGLAddressesUpdatedFromTransportStream(v10, cf, &gLogCategory_APSenderSessionAirPlay, a1);
                v37 = InfoResponseWithUGLAddressesUpdatedFromTransportStream;
                v38 = cf;
                cf = InfoResponseWithUGLAddressesUpdatedFromTransportStream;
                if (InfoResponseWithUGLAddressesUpdatedFromTransportStream)
                {
                  CFRetain(InfoResponseWithUGLAddressesUpdatedFromTransportStream);
                }

                if (v38)
                {
                  CFRelease(v38);
                }
              }

              else
              {
                FigCFDictionaryGetValue();
                v37 = FigCFDictionaryGetValue();
                if (v37)
                {
                  OUTLINED_FUNCTION_8_3();
                  if (v29 ^ v30 | v28 && (v39 != -1 || OUTLINED_FUNCTION_4(&gLogCategory_APSenderSessionAirPlay)))
                  {
                    v40 = *(v9 + 72);
                    if (v40 >= 0xB)
                    {
                      if (v40 == 11)
                      {
                        v41 = "SPPCPlayback";
                      }

                      else
                      {
                        v41 = "?";
                      }
                    }

                    else
                    {
                      v41 = off_27849BA10[v40];
                    }

                    v83 = v41;
                    OUTLINED_FUNCTION_2_0();
                    LogPrintF(v42, v43, v44, v45, a1, v83, v37);
                  }

                  v37 = 0;
                }
              }

              v46 = *(v9 + 56);
              v47 = cf;
              v48 = *(*(CMBaseObjectGetVTable() + 16) + 32);
              if (v48)
              {
                v49 = v48(v46, v47);
                if (!v49)
                {
                  if (CFDictionaryContainsKey(cf, @"initialVolume"))
                  {
                    CFDictionaryGetDouble();
                    v51 = v50;
                    v52 = CFDictionaryGetInt64() != 0;
                    OUTLINED_FUNCTION_8_3();
                    if (v29 ^ v30 | v28)
                    {
                      v55 = v53;
                      if (v54 != -1 || OUTLINED_FUNCTION_4(&gLogCategory_APSenderSessionAirPlay))
                      {
                        v56 = "no";
                        if (v55)
                        {
                          v56 = "yes";
                        }

                        v84 = v56;
                        OUTLINED_FUNCTION_2_0();
                        LogPrintF(v57, v58, v59, v60, a1, v51, v84);
                      }
                    }

                    FigSimpleMutexLock();
                    *(v9 + 400) = v51;
                    *(v9 + 404) = v52;
                    FigSimpleMutexUnlock();
                    *(v9 + 195) = 1;
                  }

                  else
                  {
                    OUTLINED_FUNCTION_8_3();
                    if (v29 ^ v30 | v28 && (v62 != -1 || OUTLINED_FUNCTION_4(&gLogCategory_APSenderSessionAirPlay)))
                    {
                      OUTLINED_FUNCTION_2_0();
                      LogPrintF(v63, v64, v65, v66, a1);
                    }
                  }

                  v67 = cf;
                  v90 = 0;
                  v68 = CMBaseObjectGetDerivedStorage();
                  v69 = *(v68 + 232);
                  if (v69 && (APPairingClientCoreUtilsPairedPeerDescriptionHasWoLInfo(v69) || v67 && CFDictionaryContainsKey(v67, @"WoLInfo")))
                  {
                    if (APPairingClientCoreUtilsPairedPeerDescriptionHasWoLInfo(*(v68 + 232)))
                    {
                      goto LABEL_88;
                    }

                    v70 = CFDictionaryGetValue(v67, @"WoLInfo");
                    v89 = 0;
                    APPairingClientCoreUtilsCreatePatchedPairedPeerWithPeerInfo(*(v68 + 232), v70, &v89);
                    v71 = v89;
                    if (v89)
                    {
                      v72 = *(v68 + 232);
                      *(v68 + 232) = v89;
                      CFRetain(v71);
                      if (v72)
                      {
                        CFRelease(v72);
                      }

                      CFRelease(v89);
                    }

                    if (APPairingClientCoreUtilsPairedPeerDescriptionHasWoLInfo(*(v68 + 232)))
                    {
LABEL_88:
                      v73 = CFGetAllocator(a1);
                      APEndpointDescriptionGetCMBaseObject();
                      v75 = v74;
                      v76 = *(*(CMBaseObjectGetVTable() + 8) + 48);
                      if (v76)
                      {
                        v76(v75, @"TransportDevice", v73, &v90);
                        if (v90)
                        {
                          OUTLINED_FUNCTION_8_3();
                          if (v29 ^ v30 | v28 && (v77 != -1 || OUTLINED_FUNCTION_4(&gLogCategory_APSenderSessionAirPlay)))
                          {
                            OUTLINED_FUNCTION_2_0();
                            LogPrintF(v78, v79, v80, v81);
                          }

                          APTransportDeviceTriggerWoLCachingIfNeeded();
                          if (v90)
                          {
                            CFRelease(v90);
                          }
                        }
                      }
                    }
                  }

                  v61 = 0;
                  goto LABEL_98;
                }

                v61 = v49;
              }

              else
              {
                v61 = 4294954514;
              }

              APSLogErrorAt();
LABEL_98:
              CFRelease(v10);
              CFRelease(v19);
              goto LABEL_99;
            }
          }

          v61 = 4294895475;
        }

        APSLogErrorAt();
        v37 = 0;
        goto LABEL_98;
      }

      APSLogErrorAt();
      CFRelease(v10);
      v37 = 0;
      v61 = 4294895476;
    }

    else
    {
      v61 = 4294895475;
      APSLogErrorAt();
      v37 = 0;
    }
  }

LABEL_99:
  if (v88)
  {
    CFRelease(v88);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (v37)
  {
    CFRelease(v37);
  }

  if (theString1)
  {
    CFRelease(theString1);
  }

  return v61;
}

uint64_t apsession_getTransportsRequiringBroker(uint64_t a1)
{
  CMBaseObjectGetDerivedStorage();
  cf = 0;
  APEndpointDescriptionGetCMBaseObject();
  v2 = v1;
  v3 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v3)
  {
    return 0;
  }

  v3(v2, @"TransportDevice", *MEMORY[0x277CBECE8], &cf);
  if (!cf)
  {
    return 0;
  }

  TransportsRequiringBroker = APTransportDeviceGetTransportsRequiringBroker();
  if (cf)
  {
    CFRelease(cf);
  }

  return TransportsRequiringBroker;
}

void apsession_copyAPPairingGroupInfo(uint64_t a1, uint64_t a2, uint64_t a3)
{
  CMBaseObjectGetDerivedStorage();
  cf = 0;
  if (APSIsPairingGroupEnabled())
  {
    FigSimpleMutexLock();
    isBrokerAssistedConnection = apsession_isBrokerAssistedConnection(a1);
    FigSimpleMutexUnlock();
    if (isBrokerAssistedConnection)
    {
      APEndpointDescriptionGetCMBaseObject();
      v6 = v5;
      v7 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      if (v7)
      {
        v7(v6, @"TransportDevice", *MEMORY[0x277CBECE8], &cf);
        if (cf)
        {
          APTransportDeviceCopyBrokeredReceiverInfo();
          if (cf)
          {
            CFRelease(cf);
          }
        }
      }
    }
  }
}

uint64_t apsession_isBrokerAssistedConnection(uint64_t a1)
{
  result = *(CMBaseObjectGetDerivedStorage() + 328);
  if (result)
  {
    v3 = APSGetFBOPropertyInt64();
    return (apsession_getTransportsRequiringBroker(a1) & v3) != 0;
  }

  return result;
}

uint64_t apsession_ensureStoppedInternal(const void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APSenderSessionAirPlay <= 30 && (gLogCategory_APSenderSessionAirPlay != -1 || OUTLINED_FUNCTION_10(&gLogCategory_APSenderSessionAirPlay)))
  {
    v10 = *(DerivedStorage + 8);
    OUTLINED_FUNCTION_3();
    LogPrintF(v3, v4, v5, v6, a1, "OSStatus apsession_ensureStoppedInternal(void *)", v10);
  }

  if (*DerivedStorage)
  {
    APSLogErrorAt();
    return 4294954511;
  }

  else
  {
    FigSimpleMutexLock();
    CFDictionaryRemoveAllValues(*(DerivedStorage + 576));
    FigSimpleMutexUnlock();
    if (apsession_IsConnected(a1))
    {
      v7 = apsession_sendTeardownWithStreamDescArray(a1, 0);
      if (v7)
      {
        v8 = v7;
        APSLogErrorAt();
        return v8;
      }

      apsession_disconnectControlStream(a1);
      if (gLogCategory_APSenderSessionAirPlay <= 40 && (gLogCategory_APSenderSessionAirPlay != -1 || _LogCategory_Initialize()))
      {
        LogPrintF(&gLogCategory_APSenderSessionAirPlay, "OSStatus apsession_ensureStoppedInternal(void *)", 33554472, "[%{ptr}] AirPlay session teardown on endpoint %@.\n", a1, *(DerivedStorage + 8));
      }
    }

    return 0;
  }
}

uint64_t APSenderSessionAirPlayCreate_cold_13(uint64_t *a1, unsigned int a2, uint64_t a3)
{
  if (a2 > 0xA)
  {
    v3 = "?";
    if (a2 == 11)
    {
      v3 = "SPPCPlayback";
    }
  }

  else
  {
    v3 = off_27849BA10[a2];
  }

  v11 = v3;
  v9 = *a1;
  OUTLINED_FUNCTION_2_0();
  return LogPrintF(v4, v5, v6, v7, v9, a3, v11);
}

uint64_t apsession_Invalidate_cold_1(uint64_t a1, uint64_t a2)
{
  if (*a1)
  {
    v4 = "yes";
  }

  else
  {
    v4 = "no";
  }

  v5 = *(a1 + 72);
  if (v5 > 0xA)
  {
    if (v5 == 11)
    {
      v6 = "SPPCPlayback";
    }

    else
    {
      v6 = "?";
    }
  }

  else
  {
    v6 = off_27849BA10[v5];
  }

  v14 = v4;
  v15 = v6;
  v13 = *(a1 + 8);
  OUTLINED_FUNCTION_2_0();
  return LogPrintF(v7, v8, v9, v10, a2, v13, v14, v15, v2, v3);
}

uint64_t apsession_invalidateTransportStreams_cold_1()
{
  OUTLINED_FUNCTION_12_3();
  OUTLINED_FUNCTION_2_0();
  return LogPrintF(v0, v1, v2, v3);
}

uint64_t apsession_invalidateTransportStreams_cold_2()
{
  OUTLINED_FUNCTION_12_3();
  OUTLINED_FUNCTION_2_0();
  return LogPrintF(v0, v1, v2, v3);
}

uint64_t apsession_invalidateTransportStreams_cold_3()
{
  OUTLINED_FUNCTION_12_3();
  OUTLINED_FUNCTION_2_0();
  return LogPrintF(v0, v1, v2, v3);
}

uint64_t apsession_disconnectControlStream_cold_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 72);
  if (v2 - 1) <= 7 && ((0xE1u >> (v2 - 1)))
  {
    v3 = @"RC";
  }

  else
  {
    v4 = @"AP";
    if (v2 == 5)
    {
      v4 = @"CP";
    }

    if (v2 == 10)
    {
      v3 = @"SP";
    }

    else
    {
      v3 = v4;
    }
  }

  v11 = *(a1 + 8);
  v12 = v3;
  OUTLINED_FUNCTION_2_0();
  return LogPrintF(v5, v6, v7, v8, a2, v11, v12);
}

uint64_t __apsession_copyActiveStreamConnectionIDs_block_invoke_cold_1(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = APSLogErrorAt();
  if (gLogCategory_APSenderSessionAirPlay <= 30)
  {
    if (gLogCategory_APSenderSessionAirPlay != -1 || (result = OUTLINED_FUNCTION_10(&gLogCategory_APSenderSessionAirPlay), result))
    {
      v11 = *(a1 + 32);
      OUTLINED_FUNCTION_3();
      return LogPrintF(v7, v8, v9, v10, v11, a2, a3);
    }
  }

  return result;
}

uint64_t apsession_CreateTransportStream_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_17();
  APSLogErrorAt();
  result = APSSignalErrorAt();
  *a1 = result;
  return result;
}

uint64_t apsession_CreateTransportStreamWithID_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_17();
  APSLogErrorAt();
  result = APSSignalErrorAt();
  *a1 = result;
  return result;
}

uint64_t apsession_ensureConnectedInternal_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_17();
  APSLogErrorAt();
  result = APSSignalErrorAt();
  *a1 = result;
  return result;
}

uint64_t apsession_ensureConnectedInternal_cold_7(int a1, uint64_t a2)
{
  v4 = @"UNKNOWN";
  switch(a1)
  {
    case 1:
      v5 = kAPSenderSessionActualTransportType_Infra;
      goto LABEL_6;
    case 2:
      v5 = kAPSenderSessionActualTransportType_AWDL;
      goto LABEL_6;
    case 4:
      v5 = kAPSenderSessionActualTransportType_NAN;
      goto LABEL_6;
    case 8:
      v5 = kAPSenderSessionActualTransportType_DirectLink;
LABEL_6:
      v4 = *v5;
      break;
    default:
      break;
  }

  v12 = v4;
  OUTLINED_FUNCTION_2_0();
  return LogPrintF(v6, v7, v8, v9, a2, v12, v2, v3);
}

uint64_t apsession_ensureConnectedInternal_cold_8(int a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v4 = @"UNKNOWN";
  switch(a1)
  {
    case 1:
      v5 = kAPSenderSessionActualTransportType_Infra;
      goto LABEL_6;
    case 2:
      v5 = kAPSenderSessionActualTransportType_AWDL;
      goto LABEL_6;
    case 4:
      v5 = kAPSenderSessionActualTransportType_NAN;
      goto LABEL_6;
    case 8:
      v5 = kAPSenderSessionActualTransportType_DirectLink;
LABEL_6:
      v4 = *v5;
      break;
    default:
      break;
  }

  v16 = (a3 >> 1) & 1;
  v17 = (a3 >> 2) & 1;
  v14 = v4;
  v15 = a3 & 1;
  v12 = v4;
  v13 = *(a2 + 8);
  OUTLINED_FUNCTION_2_0();
  return LogPrintF(v6, v7, v8, v9, a4, v12, v13, v14, v15, v16, v17);
}

uint64_t apsession_broadcastKeysForDiagnosticsDataInternal_cold_5(uint64_t *a1, uint64_t *a2)
{
  v8 = *a2;
  v7 = *a1;
  OUTLINED_FUNCTION_3();
  return LogPrintF(v2, v3, v4, v5, v7, "OSStatus apsession_broadcastKeysForDiagnosticsDataInternal(void *)", v8);
}

uint64_t apsession_broadcastKeysForDiagnosticsDataInternal_cold_8(_DWORD *a1)
{
  result = APSLogErrorAt();
  *a1 = -6700;
  return result;
}

uint64_t apsession_tryAPPairSetupAndVerify_cold_1(int a1, uint64_t a2, uint64_t a3)
{
  v3 = @"UNKNOWN";
  switch(a1)
  {
    case 1:
      v4 = kAPSenderSessionActualTransportType_Infra;
      goto LABEL_6;
    case 2:
      v4 = kAPSenderSessionActualTransportType_AWDL;
      goto LABEL_6;
    case 4:
      v4 = kAPSenderSessionActualTransportType_NAN;
      goto LABEL_6;
    case 8:
      v4 = kAPSenderSessionActualTransportType_DirectLink;
LABEL_6:
      v3 = *v4;
      break;
    default:
      break;
  }

  v11 = v3;
  v12 = *(a2 + 8);
  OUTLINED_FUNCTION_2_0();
  return LogPrintF(v5, v6, v7, v8, a3, v11, v12);
}

void apsession_createPairingClient_cold_2(_DWORD *a1, const void *a2)
{
  APSLogErrorAt();
  *a1 = -71820;
  CFRelease(a2);
}

void apsession_requestControlSetupWithResponse_cold_3(const void *a1)
{
  APSLogErrorAt();

  CFRelease(a1);
}

uint64_t apsession_appendControlSetupRequest_cold_3(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (gLogCategory_APSenderSessionAirPlay <= 90)
  {
    if (gLogCategory_APSenderSessionAirPlay != -1)
    {
      return OUTLINED_FUNCTION_4_0(&gLogCategory_APSenderSessionAirPlay, "void apsession_addMC2UCDetectionInfo(APSenderSessionRef, CFMutableDictionaryRef)", a3, "[%{ptr}] Failed to add MC2UC group info with err=%#m\n");
    }

    result = _LogCategory_Initialize();
    if (result)
    {
      return OUTLINED_FUNCTION_4_0(&gLogCategory_APSenderSessionAirPlay, "void apsession_addMC2UCDetectionInfo(APSenderSessionRef, CFMutableDictionaryRef)", a3, "[%{ptr}] Failed to add MC2UC group info with err=%#m\n");
    }
  }

  return result;
}

uint64_t apsession_appendControlSetupRequest_cold_4(CFArrayRef *a1, uint64_t *a2, uint64_t a3)
{
  Count = CFArrayGetCount(*a1);
  if (gLogCategory_APSenderSessionAirPlay > 30)
  {
    v7 = 1;
  }

  else
  {
    v7 = gLogCategory_APSenderSessionAirPlay == -1 && _LogCategory_Initialize() == 0;
  }

  v14 = *a1;
  v15 = *a2;
  v13 = v7;
  OUTLINED_FUNCTION_2_0();
  return LogPrintF(v8, v9, v10, v11, a3, Count, v13, v14, v15);
}

uint64_t apsession_appendControlSetupRequest_cold_6(uint64_t a1, uint64_t a2)
{
  Value = FigCFDictionaryGetValue();
  OUTLINED_FUNCTION_2_0();
  return LogPrintF(v3, v4, v5, v6, a2, Value);
}

uint64_t apsession_appendControlSetupRequest_cold_7(_DWORD *a1)
{
  result = APSLogErrorAt();
  *a1 = -12786;
  return result;
}

void apsession_appendControlSetupRequest_cold_9()
{
  v0 = dlerror();
  abort_report_np("%s", v0);
  apsession_appendControlSetupRequest_cold_10();
}

uint64_t apsession_appendControlSetupRequest_cold_13(_DWORD *a1)
{
  OUTLINED_FUNCTION_17();
  APSLogErrorAt();
  result = APSSignalErrorAt();
  *a1 = result;
  return result;
}

uint64_t apsession_appendControlSetupRequest_cold_14(_DWORD *a1)
{
  OUTLINED_FUNCTION_17();
  APSLogErrorAt();
  result = APSSignalErrorAt();
  *a1 = result;
  return result;
}

uint64_t apsession_eventStreamMessageCallback_cold_1(uint64_t result)
{
  if (gLogCategory_APSenderSessionAirPlay <= 30)
  {
    v1 = result;
    if (gLogCategory_APSenderSessionAirPlay != -1 || (result = OUTLINED_FUNCTION_10(&gLogCategory_APSenderSessionAirPlay), result))
    {
      OUTLINED_FUNCTION_3();
      return LogPrintF(v2, v3, v4, v5, v1);
    }
  }

  return result;
}

uint64_t apsession_ensureKeepAliveStarted_cold_3(uint64_t a1, uint64_t a2)
{
  v2 = "LowPowerOnIdle";
  if (a1 == 3)
  {
    v2 = "ConnectionMonitor";
  }

  if (a1 == 2)
  {
    v2 = "Standard";
  }

  v10 = v2;
  OUTLINED_FUNCTION_2_0();
  return LogPrintF(v3, v4, v5, v6, a2, a1, v10);
}

uint64_t apsession_setupStreamCreatingResponseInternal_cold_14(int a1, uint64_t a2, uint64_t a3)
{
  v3 = a1 - 96;
  if (a1 - 96) <= 0x18 && ((0x100FCF1u >> v3))
  {
    v4 = off_27849BA68[v3];
  }

  else
  {
    v4 = "?";
    if (a1 == 130)
    {
      v4 = "RemoteControl";
    }
  }
}

uint64_t apsession_teardownStreamInternal_cold_1(uint64_t *a1, uint64_t a2)
{
  v4 = *(a1 + 2);
  v5 = v4 - 96;
  if (v4 - 96) <= 0x18 && ((0x100FCF1u >> v5))
  {
    v6 = off_27849BA68[v5];
  }

  else if (v4 == 130)
  {
    v6 = "RemoteControl";
  }

  else
  {
    v6 = "?";
  }

  v13 = *(a2 + 8);
  v14 = v6;
  v12 = *a1;
  OUTLINED_FUNCTION_3();
  return LogPrintF(v7, v8, v9, v10, v12, "OSStatus apsession_teardownStreamInternal(void *)", v13, v14, v2, v3);
}

uint64_t sharedMemSinkRemote_Suspend(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!*(DerivedStorage + 16))
  {
    APSLogErrorAt();
    return 4294960578;
  }

  v2 = DerivedStorage;
  if (!*(DerivedStorage + 24))
  {
    return 0;
  }

  *DerivedStorage = 0;
  v3 = FigXPCCreateBasicMessage();
  if (v3)
  {
    v6 = v3;
LABEL_12:
    APSLogErrorAt();
    return v6;
  }

  v4 = FigXPCRemoteClientSendSyncMessage();
  if (v4)
  {
    v6 = v4;
    goto LABEL_12;
  }

  v5 = *(v2 + 32);
  if (!v5)
  {
    return 0;
  }

  CFRelease(v5);
  v6 = 0;
  *(v2 + 32) = 0;
  return v6;
}

uint64_t sharedMemSinkRemote_ReadPackets(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, void *a7, int *a8)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!*(DerivedStorage + 16))
  {
    APSLogErrorAt();
    return 4294960578;
  }

  v15 = DerivedStorage;
  if (!*(DerivedStorage + 24) || !*DerivedStorage)
  {
    APSLogErrorAt();
    return 4294960587;
  }

  if (!a7 || !a8)
  {
    APSLogErrorAt();
    return 4294960591;
  }

  if (*(DerivedStorage + 120))
  {
    DataFromSharedRing = sharedMemSinkRemote_readDataFromSharedRing(a1, DerivedStorage + 124, 4);
    if (DataFromSharedRing)
    {
      return DataFromSharedRing;
    }

    *(v15 + 120) = 0;
  }

  if (*(v15 + 124) > a4)
  {
    APSLogErrorAt();
    return 4294960533;
  }

  if (*(v15 + 88) != 1819304813)
  {
    v23 = sharedMemSinkRemote_readDataFromSharedRing(a1, a3, *(v15 + 124));
    if (!v23)
    {
      v24 = *(v15 + 124);
      *a5 = 0;
      *(a5 + 8) = 0;
      *(a5 + 12) = v24;
      v20 = 1;
      goto LABEL_17;
    }

    v19 = v23;
LABEL_31:
    APSLogErrorAt();
    return v19;
  }

  v16 = CMBaseObjectGetDerivedStorage();
  if (!*(v16 + 16))
  {
    APSLogErrorAt();
    v19 = 4294960578;
    goto LABEL_31;
  }

  v17 = v16;
  if (!*(v16 + 24))
  {
    APSLogErrorAt();
    v19 = 4294960587;
    goto LABEL_31;
  }

  if (!APSSharedRingBuffer_IsDataAvailable())
  {
    APSLogErrorAt();
    v19 = 4294960531;
    goto LABEL_31;
  }

  if (((*(v17 + 92) ^ *(v17 + 52)) & 2) != 0)
  {
    DataWithEndiannessConversion = APSSharedRingBuffer_ReadDataWithEndiannessConversion();
  }

  else
  {
    DataWithEndiannessConversion = APSSharedRingBuffer_ReadData();
  }

  v19 = DataWithEndiannessConversion;
  if (DataWithEndiannessConversion)
  {
    APSLogErrorAt();
    goto LABEL_31;
  }

  v20 = *(v15 + 124) / *(v15 + 104);
LABEL_17:
  v19 = 0;
  *a8 = v20;
  *a7 = *(v15 + 124);
  *(v15 + 120) = 1;
  *(v15 + 124) = 0;
  return v19;
}

uint64_t sharedMemSinkRemote_readDataFromSharedRing(uint64_t a1, uint64_t a2, uint64_t a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 16))
  {
    if (*(DerivedStorage + 24))
    {
      if (APSSharedRingBuffer_IsDataAvailable())
      {
        Data = APSSharedRingBuffer_ReadData();
        if (Data)
        {
          v6 = Data;
          APSLogErrorAt();
        }

        else if (a3 == a3)
        {
          return 0;
        }

        else
        {
          APSLogErrorAt();
          return 4294960550;
        }
      }

      else
      {
        return 4294960531;
      }
    }

    else
    {
      APSLogErrorAt();
      return 4294960587;
    }
  }

  else
  {
    APSLogErrorAt();
    return 4294960578;
  }

  return v6;
}

uint64_t __APGetEndpointManagerCarPlay_block_invoke_cold_5(uint64_t a1, CFTypeRef *a2)
{
  APSLogErrorAt();
  if (*a2)
  {
    CFRelease(*a2);
  }

  return APSLogErrorAt();
}

void manager_asyncRegisterAirPlayHALDriverInternal(uint64_t a1)
{
  if (!*(CMBaseObjectGetDerivedStorage() + 1))
  {
    v2 = FigCFWeakReferenceHolderCreateWithReferencedObject();
    v5 = MEMORY[0x277D85DD0];
    v3 = AudioServerPlugInRegisterRemote();
    if (v3)
    {
      v4 = 60;
    }

    else
    {
      v4 = 50;
    }

    if (v4 >= gLogCategory_APEndpointManager && (gLogCategory_APEndpointManager != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_APEndpointManager, "void manager_asyncRegisterAirPlayHALDriverInternal(FigEndpointManagerRef)", v4 | 0x2000000u, "[%{ptr}] %@ remote registered%?{end} err=%#m\n", a1, @"AirPlayHalogen.driver", v3 == 0, v3, v5, 3221225472, __manager_asyncRegisterAirPlayHALDriverInternal_block_invoke, &unk_27849AC08, v2, a1);
    }

    if (!v3)
    {
      if (!v2)
      {
        return;
      }

      goto LABEL_11;
    }

    if (gLogCategory_APEndpointManager <= 60 && (gLogCategory_APEndpointManager != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_APEndpointManager, "void manager_asyncRegisterAirPlayHALDriverInternal(FigEndpointManagerRef)", 33554492, "[%{ptr}] Re-trying %@ remote registration due to err=%#m\n", a1, @"AirPlayHalogen.driver", v3);
    }

    manager_AudioServerPluginInterruptionHandler(v2);
    if (v2)
    {
LABEL_11:
      CFRelease(v2);
    }
  }
}

uint64_t manager_createUGLRCServer(uint64_t a1)
{
  if (!*(CMBaseObjectGetDerivedStorage() + 400))
  {
    return 0;
  }

  Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (Mutable)
  {
    v2 = Mutable;
    v3 = APSFeaturesCreateMutable();
    if (v3)
    {
      v4 = v3;
      APSFeaturesSetFeature();
      APSFeaturesSetFeature();
      APSFeaturesSetFeature();
      APSFeaturesSetFeature();
      APSFeaturesSetFeature();
      v5 = APSFeaturesSetFeature();
      OUTLINED_FUNCTION_24_0(v5, *MEMORY[0x277CE9E90]);
      CFRelease(v4);
      OUTLINED_FUNCTION_24_0(v6, *MEMORY[0x277CE9EB0]);
      v7 = *MEMORY[0x277CBED10];
      CFDictionarySetValue(v2, *MEMORY[0x277CE9ED8], *MEMORY[0x277CBED10]);
      OUTLINED_FUNCTION_24_0(v8, *MEMORY[0x277CE9ED0]);
      CFDictionarySetValue(v2, *MEMORY[0x277CE9EA8], v7);
      OUTLINED_FUNCTION_24_0(v9, *MEMORY[0x277CE9EB8]);
      v10 = AirPlayReceiverServerCreate();
      if (v10)
      {
        APSLogErrorAt();
      }
    }

    else
    {
      APSLogErrorAt();
      v10 = 4294960568;
    }

    CFRelease(v2);
  }

  else
  {
    APSLogErrorAt();
    return 4294960568;
  }

  return v10;
}

void manager_invalidateInternal(const void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!*(DerivedStorage + 1))
  {
    v3 = DerivedStorage;
    if (gLogCategory_APEndpointManager <= 50 && (gLogCategory_APEndpointManager != -1 || OUTLINED_FUNCTION_4(&gLogCategory_APEndpointManager)))
    {
      OUTLINED_FUNCTION_2_0();
      LogPrintF(v4, v5, v6, v7, a1);
    }

    *(v3 + 1) = 1;
    CMNotificationCenterGetDefaultLocalCenter();
    FigNotificationCenterRemoveWeakListener();
    CMNotificationCenterGetDefaultLocalCenter();
    FigNotificationCenterRemoveWeakListener();
    if (*(v3 + 320))
    {
      CMNotificationCenterGetDefaultLocalCenter();
      FigNotificationCenterRemoveWeakListener();
    }

    if (*(v3 + 328))
    {
      APBrokerManagerInvalidate();
    }

    if (*(v3 + 296))
    {
      CMNotificationCenterGetDefaultLocalCenter();
      OUTLINED_FUNCTION_1_12();
      FigNotificationCenterRemoveWeakListener();
    }

    AirPlayDebugIPCDisableForEndpointManager(a1);
    v8 = *(v3 + 56);
    if (v8)
    {
      dispatch_source_cancel(v8);
      v9 = *(v3 + 56);
      if (v9)
      {
        dispatch_release(v9);
        *(v3 + 56) = 0;
      }
    }

    v10 = *(v3 + 16);
    if (v10 != -1)
    {
      notify_cancel(v10);
      *(v3 + 16) = -1;
    }

    v11 = *(v3 + 24);
    if (v11 != -1)
    {
      notify_cancel(v11);
      *(v3 + 24) = -1;
    }

    v12 = *(v3 + 20);
    if (v12 != -1)
    {
      notify_cancel(v12);
      *(v3 + 20) = -1;
    }

    v13 = *(v3 + 28);
    if (v13 != -1)
    {
      notify_cancel(v13);
      *(v3 + 28) = -1;
    }

    FigSimpleMutexLock();
    CFArrayGetCount(*(v3 + 192));
    CFArrayApplyBlock();
    v14 = *(v3 + 200);
    if (v14)
    {
      v15 = *(*(CMBaseObjectGetVTable() + 16) + 32);
      if (v15)
      {
        v15(v14);
      }

      v16 = *(v3 + 200);
      if (v16)
      {
        CFRelease(v16);
        *(v3 + 200) = 0;
      }
    }

    v17 = FigCFDictionaryCopyArrayOfValues();
    CFArrayGetCount(v17);
    CFArrayApplyBlock();
    CFDictionaryApplyBlock();
    manager_startOrStopUGLRCServer(a1, 0);
    manager_removeAllEndpointsIfNeeded(a1);
    manager_updateExposedLocalEndpoint(a1, 0);
    FigSimpleMutexUnlock();
    v18 = *(v3 + 312);
    if (v18 && APBrowserControllerInvalidate(v18))
    {
      APSLogErrorAt();
      if (!v17)
      {
        return;
      }

      goto LABEL_33;
    }

    v19 = *(v3 + 352);
    if (v19)
    {
      dispatch_source_cancel(v19);
    }

    if (v17)
    {
LABEL_33:
      CFRelease(v17);
    }
  }
}

void manager_startOrStopUGLRCServer(uint64_t a1, int a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 400))
  {
    v4 = DerivedStorage;
    if (a2)
    {
      if (gLogCategory_APEndpointManager <= 40 && (gLogCategory_APEndpointManager != -1 || _LogCategory_Initialize()))
      {
        LogPrintF(&gLogCategory_APEndpointManager, "void manager_startOrStopUGLRCServer(FigEndpointManagerRef, Boolean)", 33554472, "Starting UGL-RCServer");
      }

      v9 = *(v4 + 280);
      if (v9)
      {
        CFRelease(v9);
        *(v4 + 280) = 0;
      }

      DispatchQueue = AirPlayReceiverServerGetDispatchQueue();
      if (OUTLINED_FUNCTION_5_4(DispatchQueue, DispatchQueue, v11, v12, @"startServer"))
      {

        APSLogErrorAt();
      }

      else
      {
        *(v4 + 280) = AirPlayReceiverServerCopyProperty();
        if (gLogCategory_APEndpointManager <= 50 && (gLogCategory_APEndpointManager != -1 || OUTLINED_FUNCTION_4(&gLogCategory_APEndpointManager)))
        {
          Value = FigCFDictionaryGetValue();
LABEL_24:
          OUTLINED_FUNCTION_2_0();
          LogPrintF(v18, v19, v20, v21, Value);
        }
      }
    }

    else
    {
      if (gLogCategory_APEndpointManager <= 50 && (gLogCategory_APEndpointManager != -1 || OUTLINED_FUNCTION_4(&gLogCategory_APEndpointManager)))
      {
        v22 = FigCFDictionaryGetValue();
        OUTLINED_FUNCTION_2_0();
        LogPrintF(v5, v6, v7, v8, v22);
      }

      v13 = AirPlayReceiverServerGetDispatchQueue();
      v16 = OUTLINED_FUNCTION_5_4(v13, v13, v14, v15, @"stopServer");
      v17 = *(v4 + 280);
      if (v17)
      {
        CFRelease(v17);
        *(v4 + 280) = 0;
      }

      if (gLogCategory_APEndpointManager <= 50 && (gLogCategory_APEndpointManager != -1 || OUTLINED_FUNCTION_4(&gLogCategory_APEndpointManager)))
      {
        Value = v16;
        goto LABEL_24;
      }
    }
  }
}

double manager_handleClusterSubEndpointFailed(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, const __CFDictionary *a5)
{
  CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  Value = CFDictionaryGetValue(a5, @"SubEndpoint");
  if (Value)
  {
    v9 = Value;
    if (gLogCategory_APEndpointManager <= 50 && (gLogCategory_APEndpointManager != -1 || OUTLINED_FUNCTION_4(&gLogCategory_APEndpointManager)))
    {
      OUTLINED_FUNCTION_2_0();
      LogPrintF(v10, v11, v12, v13, a2, a4, v9);
    }

    if (manager_updateEndpointClusterMembershipIfNeeded(a2, v9, 1, 0) || (manager_removeEndpointIfNeeded(a2, v9, 0), OUTLINED_FUNCTION_8_4(), !APSGetFBOPropertyInt64()) && manager_updateEndpointClusterMembershipIfNeeded(a2, v9, 0, 0))
    {
      APSLogErrorAt();
    }
  }

  FigSimpleMutexUnlock();
  return result;
}

void manager_handleClusterDiscoveryModeCriteriaChanged(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (gLogCategory_APEndpointManager <= 30 && (gLogCategory_APEndpointManager != -1 || OUTLINED_FUNCTION_10(&gLogCategory_APEndpointManager)))
  {
    OUTLINED_FUNCTION_3();
    LogPrintF(v8, v9, v10, v11, "void manager_handleClusterDiscoveryModeCriteriaChanged(CMNotificationCenterRef, const void *, CFStringRef, const void *, CFTypeRef)", a3, a4);
  }

  cf = 0;
  if (*(CMBaseObjectGetDerivedStorage() + 2))
  {
    CMBaseObject = FigEndpointGetCMBaseObject();
    v13 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v13)
    {
      v13(CMBaseObject, *MEMORY[0x277CC1368], *MEMORY[0x277CBECE8], &cf);
    }

    v14 = APSGetFBOPropertyInt64() != 0;
    if (gLogCategory_APEndpointManager <= 50)
    {
      OUTLINED_FUNCTION_22_0();
      if (!v15 || _LogCategory_Initialize())
      {
        v16 = " not";
        if (v4)
        {
          v16 = "";
        }

        LogPrintF(&gLogCategory_APEndpointManager, "OSStatus manager_updateBrowserControllerAboutClusterNeedingDiscovery(FigEndpointManagerRef, FigEndpointRef)", &gLogCategory_APEndpointPlaybackSessionRemoteControl + 20, "%###s: cluster %{ptr} does%s need discovery\n", "OSStatus manager_updateBrowserControllerAboutClusterNeedingDiscovery(FigEndpointManagerRef, FigEndpointRef)", a4, v16);
      }
    }

    if (APEndpointManagerUpdateInternalClientNeedingDiscovery(a2, cf, v14))
    {
      APSLogErrorAt();
    }

    if (cf)
    {
      CFRelease(cf);
    }
  }

  OUTLINED_FUNCTION_25_0();
}

uint64_t manager_removeEndpointFromCluster()
{
  OUTLINED_FUNCTION_16_2();
  result = CMBaseObjectGetDerivedStorage();
  if (*(result + 2))
  {
    CFDictionaryRemoveValue(*(result + 232), v0);
    result = APSGetFBOPropertyInt64();
    if (!result)
    {
      APEndpointClusterRemoveSubEndpoint(v1, v0);
      CMNotificationCenterGetDefaultLocalCenter();
      OUTLINED_FUNCTION_2_10();
      OUTLINED_FUNCTION_6_2();
      FigNotificationCenterAddWeakListener();
      CMNotificationCenterGetDefaultLocalCenter();
      OUTLINED_FUNCTION_1_12();
      OUTLINED_FUNCTION_6_2();

      return FigNotificationCenterAddWeakListener();
    }
  }

  return result;
}

void manager_removeShadowEndpointFromUGLWrapper()
{
  OUTLINED_FUNCTION_16_2();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APEndpointManager <= 50 && (gLogCategory_APEndpointManager != -1 || OUTLINED_FUNCTION_4(&gLogCategory_APEndpointManager)))
  {
    DiscoveryID = APTransportDeviceGetDiscoveryID();
    OUTLINED_FUNCTION_2_0();
    LogPrintF(v4, v5, v6, v7, v1, v0, DiscoveryID);
  }

  if (v2 && v0)
  {
    APEndpointUGLWrapperRemoveShadowEndpoint(v0, v2);
    CFDictionaryRemoveValue(*(DerivedStorage + 216), v2);
    v8 = OUTLINED_FUNCTION_12_4();

    manager_removeUGLWrapperEndpointIfEmpty(v8, v9);
  }
}

void manager_removeAllEndpointsForDictIfNeeded()
{
  OUTLINED_FUNCTION_3_7();
  CMBaseObjectGetDerivedStorage();
  v2 = FigCFDictionaryCopyArrayOfKeys();
  if (v2)
  {
    v3 = v2;
    if (CFArrayGetCount(v2) >= 1)
    {
      v4 = 0;
      do
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v3, v4);
        manager_removeEndpointForTransportDeviceIfNeeded(v1, ValueAtIndex, v0, 1);
        ++v4;
      }

      while (v4 < CFArrayGetCount(v3));
    }

    CFRelease(v3);
  }
}

const __CFDictionary *manager_AppendEndpointShowInfo(const __CFDictionary *result, uint64_t a2, uint64_t a3)
{
  if (result)
  {
    v5 = result;
    Value = CFDictionaryGetValue(result, @"EndpointHash");
    DataBuffer_AppendF(a3, "%@ ", Value);
    v7 = CFDictionaryGetValue(v5, @"Name");
    DataBuffer_AppendF(a3, "%''-*@", 22, v7);
    OUTLINED_FUNCTION_8_4();
    Int64 = CFDictionaryGetInt64();
    OUTLINED_FUNCTION_8_4();
    if (CFDictionaryGetInt64())
    {
      v9 = CFDictionaryGetValue(v5, @"PersistentGroupType");
      v10 = CFDictionaryGetValue(v5, @"PersistentGroupUUID");
      OUTLINED_FUNCTION_8_4();
      Int64Ranged = CFDictionaryGetInt64Ranged();
      v12 = CFDictionaryGetValue(v5, @"SubEndpointShowInfoDicts");
      if (v12)
      {
        v13 = v12;
        Count = CFArrayGetCount(v12);
        v15 = Count;
        v16 = "Local";
        if (!Int64)
        {
          v16 = "Remote";
        }

        result = DataBuffer_AppendF(a3, " %s %@ Cluster (%d/%d) %@\n", v16, v9, Count, Int64Ranged, v10);
        if (v15 >= 1)
        {
          for (i = 0; i != v15; ++i)
          {
            ValueAtIndex = CFArrayGetValueAtIndex(v13, i);
            DataBuffer_AppendF(a3, "\t");
            result = manager_AppendEndpointShowInfo(ValueAtIndex, a2, a3);
          }
        }
      }

      else
      {
        v39 = "Local";
        if (!Int64)
        {
          v39 = "Remote";
        }

        return DataBuffer_AppendF(a3, " %s %@ Cluster (%d/%d) %@\n", v39, v9, 0, Int64Ranged, v10);
      }
    }

    else
    {
      v19 = CFDictionaryGetValue(v5, @"DiscoveryID");
      if (v19)
      {
        DataBuffer_AppendF(a3, " discoveryID=%15@", v19);
      }

      v20 = CFDictionaryGetValue(v5, @"DeviceID");
      DataBuffer_AppendF(a3, " %@", v20);
      v21 = CFDictionaryGetValue(v5, @"Model");
      DataBuffer_AppendF(a3, " %-*@", 18, v21);
      v22 = CFDictionaryGetValue(v5, @"SourceVersion");
      DataBuffer_AppendF(a3, " v%-*@", 9, v22);
      CFDictionaryGetValue(v5, @"Hidden");
      v23 = *MEMORY[0x277CBED28];
      OUTLINED_FUNCTION_21_0();
      DataBuffer_AppendF(a3, " %s", v40);
      CFDictionaryGetValue(v5, @"AirPlayFeatures");
      APSFeaturesCopyStringRepresentation();
      DataBuffer_AppendF(a3, " feat=%@", 0);
      OUTLINED_FUNCTION_8_4();
      v24 = CFDictionaryGetInt64();
      DataBuffer_AppendF(a3, " flag=0x%05X", v24);
      v25 = CFDictionaryGetValue(v5, @"Started");
      if (v25 == *MEMORY[0x277CBED10])
      {
        LODWORD(v26) = 115;
      }

      else
      {
        LODWORD(v26) = 63;
      }

      if (v25 == v23)
      {
        v26 = 83;
      }

      else
      {
        v26 = v26;
      }

      DataBuffer_AppendF(a3, " State=%c", v26);
      OUTLINED_FUNCTION_8_4();
      v27 = CFDictionaryGetInt64();
      DataBuffer_AppendF(a3, " Error=%#m", v27);
      if (CFDictionaryGetValue(v5, @"IsRemoteControlEndpoint") == v23)
      {
        v28 = 89;
      }

      else
      {
        v28 = 78;
      }

      DataBuffer_AppendF(a3, " RC=%c", v28);
      if (CFDictionaryGetValue(v5, @"IsClusterLeader") == v23)
      {
        v29 = 89;
      }

      else
      {
        v29 = 78;
      }

      DataBuffer_AppendF(a3, " IsCGL=%c", v29);
      OUTLINED_FUNCTION_8_4();
      v30 = CFDictionaryGetInt64Ranged();
      DataBuffer_AppendF(a3, " ACT=%u", v30);
      OUTLINED_FUNCTION_8_4();
      v31 = CFDictionaryGetInt64Ranged();
      DataBuffer_AppendF(a3, " ACL=%u", v31);
      if (Int64)
      {
        DataBuffer_AppendF(a3, " (local)");
      }

      v32 = CFDictionaryGetValue(v5, @"SenderSessionInfo");
      if (v32)
      {
        v33 = CFDictionaryGetValue(v32, @"TransportSessionInfo");
        if (v33)
        {
          v34 = CFDictionaryGetValue(v33, *MEMORY[0x277CE4FB8]);
          if (v34)
          {
            DataBuffer_AppendF(a3, " IP=%@", v34);
          }
        }
      }

      result = DataBuffer_AppendF(a3, "\n");
      if (a2)
      {
        v35 = CFDictionaryGetValue(v5, @"StreamInfo_Screen");
        manager_AppendEndpointStreamShowInfo(v35);
        v36 = CFDictionaryGetValue(v5, @"StreamInfo_RealTimeAudio");
        manager_AppendEndpointStreamShowInfo(v36);
        v37 = CFDictionaryGetValue(v5, @"StreamInfo_BufferedAudio");
        manager_AppendEndpointStreamShowInfo(v37);
        v38 = CFDictionaryGetValue(v5, @"StreamInfo_LowLatencyAudio");
        return manager_AppendEndpointStreamShowInfo(v38);
      }
    }
  }

  return result;
}

uint64_t manager_AppendEndpointStreamShowInfo(uint64_t result)
{
  if (result)
  {
    OUTLINED_FUNCTION_3_7();
    CFDictionaryGetInt64();
    OUTLINED_FUNCTION_21_0();
    DataBuffer_AppendF(v1, "    %s ", v7);
    CFDictionaryGetInt64();
    OUTLINED_FUNCTION_21_0();
    DataBuffer_AppendF(v1, "%s ", v8);
    v3 = CFDictionaryGetValue(v2, @"Type");
    DataBuffer_AppendF(v1, "%-9@ ", v3);
    v4 = CFDictionaryGetValue(v2, @"Subtype");
    value = v4;
    if (v4)
    {
      DataBuffer_AppendF(v1, "(%@) ", v4, value);
    }

    v5 = CFDictionaryGetValue(v2, @"Name");
    DataBuffer_AppendF(v1, "Stream %-26@ ", v5);
    if (CFDictionaryGetValueIfPresent(v2, @"ScreenInfo", &value))
    {
      v6 = FigCFCopyCompactDescription();
      DataBuffer_AppendF(v1, "%@", v6);
      if (v6)
      {
        CFRelease(v6);
      }
    }

    return DataBuffer_AppendF(v1, "\n");
  }

  return result;
}

void manager_updatePSGInfoOnEndpoint(uint64_t a1, uint64_t a2)
{
  cf = 0;
  CMBaseObject = FigEndpointGetCMBaseObject();
  v4 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v4)
  {
    v4(CMBaseObject, *MEMORY[0x277CC1368], *MEMORY[0x277CBECE8], &cf);
    if (cf)
    {
      Value = FigCFDictionaryGetValue();
      if (Value)
      {
        v6 = Value;
        if (gLogCategory_APEndpointManager <= 30 && (gLogCategory_APEndpointManager != -1 || OUTLINED_FUNCTION_10(&gLogCategory_APEndpointManager)))
        {
          v13 = cf;
          OUTLINED_FUNCTION_3();
          LogPrintF(v7, v8, v9, v10, a1, v13, v6);
        }

        v11 = FigEndpointGetCMBaseObject();
        v12 = *(*(CMBaseObjectGetVTable() + 8) + 56);
        if (v12)
        {
          v12(v11, @"PermanentSpeakerGroupingInfo", v6);
        }
      }

      if (cf)
      {
        CFRelease(cf);
      }
    }
  }
}

BOOL manager_exposedLocalEndpointIsPersistentlyConnectedCluster(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  cf = 0;
  if (!*(DerivedStorage + 296))
  {
    return 0;
  }

  v2 = DerivedStorage;
  if (FigCFEqual())
  {
LABEL_9:
    v7 = 0;
    goto LABEL_11;
  }

  CMBaseObject = FigEndpointGetCMBaseObject();
  v4 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v4)
  {
    v4(CMBaseObject, *MEMORY[0x277CC12C8], *MEMORY[0x277CBECE8], &cf);
    v5 = cf;
  }

  else
  {
    v5 = 0;
  }

  v6 = APEndpointFigEndpointClusterTypeToAPSClusterType(v5);
  if (v6 != 1)
  {
    if (v6 == 2)
    {
      v7 = *(v2 + 396) == 4;
      goto LABEL_11;
    }

    goto LABEL_9;
  }

  v7 = 1;
LABEL_11:
  if (cf)
  {
    CFRelease(cf);
  }

  return v7;
}

void manager_AudioServerPluginInterruptionHandler(const void *a1)
{
  v2 = FigCFWeakReferenceHolderCopyReferencedObject();
  if (v2)
  {
    v3 = v2;
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    if (gLogCategory_APEndpointManager <= 50 && (gLogCategory_APEndpointManager != -1 || OUTLINED_FUNCTION_4(&gLogCategory_APEndpointManager)))
    {
      OUTLINED_FUNCTION_2_0();
      LogPrintF(v5, v6, v7, v8, v3, @"AirPlayHalogen.driver", 1);
    }

    if (a1)
    {
      CFRetain(a1);
    }

    v9 = dispatch_time(0, 1000000000);
    v10 = *(DerivedStorage + 8);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __manager_AudioServerPluginInterruptionHandler_block_invoke;
    block[3] = &__block_descriptor_40_e5_v8__0l;
    block[4] = a1;
    dispatch_after(v9, v10, block);
    CFRelease(v3);
  }
}

void __manager_initAndStartDeviceMetricsTimer_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (APSRTCReportingAgentCreate())
  {
    APSLogErrorAt();
  }

  else
  {
    Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    if (Mutable)
    {
      v4 = Mutable;
      FigSimpleMutexLock();
      v5 = *(DerivedStorage + 264);
      if (v5)
      {
        Count = CFSetGetCount(v5);
        v7 = -6;
        v8 = &dword_22229831C;
        do
        {
          if (!v7)
          {
            break;
          }

          v9 = *v8--;
          ++v7;
        }

        while (v9 > Count);
        FigCFDictionarySetInt32();
        FigCFDictionarySetInt32();
        CFDictionarySetValue(v4, @"sessionType", @"Discovery");
        APSRTCReportingAgentSendEvent();
        if (gLogCategory_APEndpointManager <= 30 && (gLogCategory_APEndpointManager != -1 || OUTLINED_FUNCTION_10(&gLogCategory_APEndpointManager)))
        {
          OUTLINED_FUNCTION_3();
          LogPrintF(v10, v11, v12, v13, v1, v4);
        }

        CFSetRemoveAllValues(*(DerivedStorage + 264));
        if (gLogCategory_APEndpointManager <= 50 && (gLogCategory_APEndpointManager != -1 || _LogCategory_Initialize()))
        {
          LogPrintF(&gLogCategory_APEndpointManager, "OSStatus manager_reportDeviceMetrics(FigEndpointManagerRef)", 33554482, "[%{ptr}] Cleared discovered device metrics\n", v1);
        }

        *(DerivedStorage + 360) = 0;
      }

      FigSimpleMutexUnlock();
      CFRelease(v4);
    }
  }

  OUTLINED_FUNCTION_25_0();
}

uint64_t manager_updateLocalInfoDict(uint64_t a1, uint64_t a2)
{
  result = CMBaseObjectGetDerivedStorage();
  v6 = result;
  if (gLogCategory_APEndpointManager <= 30)
  {
    if (gLogCategory_APEndpointManager != -1 || (result = OUTLINED_FUNCTION_10(&gLogCategory_APEndpointManager), result))
    {
      OUTLINED_FUNCTION_3();
      result = LogPrintF(v7, v8, v9, v10, a1);
    }
  }

  if (a2 && *(v6 + 296))
  {
    FigCFDictionaryGetValue();
    if (FigCFDictionaryGetValue())
    {
      if (gLogCategory_APEndpointManager <= 50)
      {
        OUTLINED_FUNCTION_22_0();
        if (!v11 || _LogCategory_Initialize())
        {
          LogPrintF(&gLogCategory_APEndpointManager, "OSStatus manager_updateLocalInfoDict(FigEndpointManagerRef, CFDictionaryRef)", &gLogCategory_APEndpointPlaybackSessionRemoteControl + 20, "[%{ptr}] <APUGLPort> UpdateLocalInfo includes UGL server port: %@\n", a1, v2);
        }
      }
    }

    CMBaseObject = FigEndpointGetCMBaseObject();
    VTable = CMBaseObjectGetVTable();
    v14 = *(VTable + 8);
    result = VTable + 8;
    v15 = *(v14 + 56);
    if (v15)
    {

      return v15(CMBaseObject, @"EndpointInfo", a2);
    }
  }

  return result;
}

uint64_t manager_create_cold_3()
{
  APSIsProximitySenderEnabled();
  OUTLINED_FUNCTION_21_0();
  OUTLINED_FUNCTION_2_0();
  return LogPrintF(v0, v1, v2, v3);
}

uint64_t manager_create_cold_5(uint64_t *a1, _BYTE *a2)
{
  if (*a2)
  {
    v2 = "true";
  }

  else
  {
    v2 = "false";
  }

  v8 = *a1;
  v9 = v2;
  OUTLINED_FUNCTION_2_0();
  return LogPrintF(v3, v4, v5, v6, v8, v9);
}

uint64_t manager_create_cold_7()
{
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_2_0();
  return LogPrintF(v0, v1, v2, v3);
}

void manager_create_cold_12(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (gLogCategory_APEndpointManager <= 90 && (gLogCategory_APEndpointManager != -1 || _LogCategory_Initialize()))
  {
    OUTLINED_FUNCTION_4_0(&gLogCategory_APEndpointManager, "AudioServerPlugInDriverRef manager_createAirPlayHALDriver(void)", a3, "There are no factories for AudioServerPlugInType!\n");
  }
}

uint64_t manager_create_cold_19(uint64_t *a1, char a2, uint64_t *a3, char a4)
{
  v4 = "NTP";
  if (a2)
  {
    v4 = "PTP";
  }

  v5 = "yes";
  if (!a4)
  {
    v5 = "no";
  }

  v13 = *a3;
  v14 = v5;
  v11 = *a1;
  v12 = v4;
  OUTLINED_FUNCTION_2_0();
  return LogPrintF(v6, v7, v8, v9, v11, v12, v13, v14);
}

uint64_t manager_create_cold_20()
{
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_2_0();
  return LogPrintF(v0, v1, v2, v3);
}

void manager_create_cold_21(CFTypeRef *a1, uint64_t a2, uint64_t a3)
{
  APSLogErrorAt();
  v5 = *(a3 + 352);
  if (v5)
  {
    dispatch_source_cancel(*(a3 + 352));
    dispatch_release(v5);
    *(a3 + 352) = 0;
  }

  if (*a1)
  {
    CFRelease(*a1);
    *a1 = 0;
  }
}

uint64_t manager_create_cold_34()
{
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_2_0();
  return LogPrintF(v0, v1, v2, v3);
}

uint64_t manager_handleDevicePresenceChanged_cold_1()
{
  OUTLINED_FUNCTION_23_1();
  v6 = v0;
  OUTLINED_FUNCTION_3();
  return LogPrintF(v1, v2, v3, v4, "void manager_handleDevicePresenceChanged(Boolean, void *)", v6);
}

uint64_t manager_handleBrowserAddOrUpdateEvent_cold_6(uint64_t a1, uint64_t a2)
{
  DiscoveryID = APTransportDeviceGetDiscoveryID();
  OUTLINED_FUNCTION_3();
  return LogPrintF(v3, v4, v5, v6, a2, DiscoveryID);
}

uint64_t manager_handleBrowserAddOrUpdateEvent_cold_8(uint64_t result)
{
  if (gLogCategory_APEndpointManager <= 30)
  {
    v1 = result;
    if (gLogCategory_APEndpointManager != -1 || (result = OUTLINED_FUNCTION_10(&gLogCategory_APEndpointManager), result))
    {
      OUTLINED_FUNCTION_3();
      return LogPrintF(v2, v3, v4, v5, v1, "void manager_handleBrowserAddOrUpdateEvent(APTransportDeviceRef, void *)");
    }
  }

  return result;
}

uint64_t manager_handlePreferencesChanged_cold_16(uint64_t *a1, uint64_t *a2)
{
  v7 = *a1;
  v8 = *a2;
  OUTLINED_FUNCTION_2_0();
  return LogPrintF(v2, v3, v4, v5, v7, v8);
}

uint64_t manager_handleDiscoveryBrokerRequest_cold_3()
{
  OUTLINED_FUNCTION_16_2();
  if (v3 && !IsAppleInternalBuild())
  {
    v1 = @"#Redacted#";
  }

  if (IsAppleInternalBuild())
  {
    v4 = v2;
  }

  else
  {
    v4 = @"#Redacted#";
  }

  v10 = v4;
  OUTLINED_FUNCTION_2_0();
  return LogPrintF(v5, v6, v7, v8, v0, v1, v10);
}

uint64_t manager_handleDiscoveryBrokerRequest_cold_5()
{
  OUTLINED_FUNCTION_3_7();
  if (v2 && !IsAppleInternalBuild())
  {
    v1 = @"#Redacted#";
  }

  OUTLINED_FUNCTION_2_0();
  return LogPrintF(v3, v4, v5, v6, v0, v1);
}

uint64_t manager_introspector_listEndpoints_cold_2(uint64_t a1)
{
  APSLogErrorAt();

  return FPrintF(a1, "Error: Couldn't copy exposed endpoints\n");
}

uint64_t manager_introspector_listEndpoints_cold_3(uint64_t a1)
{
  APSLogErrorAt();

  return FPrintF(a1, "Internal Error: null manager\n");
}

uint64_t manager_introspector_copyProperty_cold_2(uint64_t a1)
{
  APSLogErrorAt();

  return FPrintF(a1, "Internal Error: null manager\n");
}

uint64_t manager_introspector_setProperty_cold_1(uint64_t a1)
{
  APSLogErrorAt();

  return FPrintF(a1, "Internal Error: null manager\n");
}

uint64_t manager_introspector_copySubEndpointProperty_cold_1(uint64_t a1)
{
  APSLogErrorAt();

  return FPrintF(a1, "Internal Error: null manager\n");
}

uint64_t manager_introspector_setSubEndpointProperty_cold_1(uint64_t a1)
{
  APSLogErrorAt();

  return FPrintF(a1, "Internal Error: null manager\n");
}

uint64_t manager_introspector_sendCommand_cold_1(uint64_t a1)
{
  APSLogErrorAt();

  return FPrintF(a1, "Internal Error: null manager\n");
}

uint64_t manager_introspector_activateEndpoint_cold_1(uint64_t a1)
{
  APSLogErrorAt();

  return FPrintF(a1, "Internal Error: null manager\n");
}

uint64_t manager_introspector_deactivateEndpoint_cold_1(uint64_t a1, const char *a2, const char **a3)
{
  FPrintF(a1, a2);
  FPrintF(a1, "Usage: %s [-r|w] <name|ID|hash|ptr>\n", *a3);

  return manager_introspector_printRWUsage(a1);
}

uint64_t manager_introspector_deactivateEndpoint_cold_2(uint64_t a1)
{
  APSLogErrorAt();

  return FPrintF(a1, "Internal Error: null manager\n");
}

uint64_t manager_introspector_setDiscoveryMode_cold_1(uint64_t a1)
{
  APSLogErrorAt();

  return FPrintF(a1, "Internal Error: null manager\n");
}

uint64_t manager_introspector_getGroupID_cold_1(uint64_t a1)
{
  APSLogErrorAt();

  return FPrintF(a1, "Internal Error: null manager\n");
}

double manager_introspector_sendUGLreceiverCommand_cold_1()
{
  OUTLINED_FUNCTION_3_7();
  APSLogErrorAt();
  FPrintF(v0, "Internal Error: null manager\n");

  FigSimpleMutexUnlock();
  return result;
}

uint64_t manager_removeCluster_cold_1(char a1, const void **a2, uint64_t a3, uint64_t a4)
{
  if (a1)
  {
    v6 = "Remote";
  }

  else
  {
    v6 = "Local";
  }

  APEndpointFigEndpointClusterTypeToAPSClusterType(*a2);
  v12 = APSClusterTypeToDescriptionString();
  OUTLINED_FUNCTION_2_0();
  return LogPrintF(v7, v8, v9, v10, a3, v6, v12, a4);
}

uint64_t manager_removeUGLWrapperEndpointIfEmpty_cold_1(uint64_t a1, uint64_t a2)
{
  if (gLogCategory_APEndpointManager > 50)
  {
    return 1;
  }

  if (gLogCategory_APEndpointManager != -1 || (result = OUTLINED_FUNCTION_4(&gLogCategory_APEndpointManager), result))
  {
    OUTLINED_FUNCTION_2_0();
    LogPrintF(v4, v5, v6, v7, a1, a2);
    return 0;
  }

  return result;
}

uint64_t manager_copyPropertyInternal_cold_2(_DWORD *a1)
{
  result = APSLogErrorAt();
  *a1 = -16711;
  return result;
}

uint64_t manager_copyPropertyInternal_cold_5(uint64_t a1, uint64_t *a2, int *a3)
{
  result = CMBaseObjectGetDerivedStorage();
  v7 = *(result + 256);
  if (v7 && (v8 = result, result = manager_isEndpointLocalAndSuppressed(a1, v7), !result) && (result = CFRetain(*(v8 + 256))) != 0)
  {
    v9 = 0;
    *a2 = result;
  }

  else
  {
    v9 = -16713;
  }

  *a3 = v9;
  return result;
}

void manager_copyEndpoints_cold_2(const void *a1)
{
  APSLogErrorAt();

  CFRelease(a1);
}

uint64_t manager_areEndpointsPresent_cold_1(char a1, uint64_t a2, uint64_t a3)
{
  v3 = "no";
  if (a1)
  {
    v4 = "yes";
  }

  else
  {
    v4 = "no";
  }

  if (*(a2 + 96))
  {
    v3 = "yes";
  }

  v12 = v3;
  v10 = v4;
  OUTLINED_FUNCTION_3();
  return LogPrintF(v5, v6, v7, v8, "Boolean manager_areEndpointsPresent(FigEndpointManagerRef)", v10, a3, v12);
}

uint64_t __manager_copyShowInfo_block_invoke_cold_1(uint64_t a1)
{
  result = APSLogErrorAt();
  *(*(*(a1 + 32) + 8) + 24) = -6728;
  return result;
}

_DWORD *manager_SetDiscoveryMode_cold_2(_DWORD *result)
{
  v1 = result;
  if (gLogCategory_APEndpointManager <= 50)
  {
    if (gLogCategory_APEndpointManager != -1 || (result = OUTLINED_FUNCTION_4(&gLogCategory_APEndpointManager), result))
    {
      OUTLINED_FUNCTION_2_0();
      result = LogPrintF(v2, v3, v4, v5);
    }
  }

  *v1 = 0;
  return result;
}

uint64_t *manager_handleShadowEndpointEvent_cold_2(uint64_t *result, uint64_t a2, uint64_t a3)
{
  if (gLogCategory_APEndpointManager <= 50)
  {
    v4 = result;
    if (gLogCategory_APEndpointManager != -1 || (result = OUTLINED_FUNCTION_4(&gLogCategory_APEndpointManager), result))
    {
      v5 = *v4;
      DiscoveryID = APTransportDeviceGetDiscoveryID();
      OUTLINED_FUNCTION_2_0();
      return LogPrintF(v6, v7, v8, v9, a3, v5, DiscoveryID);
    }
  }

  return result;
}

uint64_t manager_handleShadowEndpointEvent_cold_3(uint64_t a1, CFTypeRef *a2)
{
  APSLogErrorAt();
  if (*a2)
  {
    CFRelease(*a2);
  }

  return APSLogErrorAt();
}

void manager_handleShadowEndpointEvent_cold_4()
{
  if (gLogCategory_APEndpointManager <= 50)
  {
    OUTLINED_FUNCTION_3_7();
    if (v1 != -1 || OUTLINED_FUNCTION_4(&gLogCategory_APEndpointManager))
    {
      DiscoveryID = APTransportDeviceGetDiscoveryID();
      OUTLINED_FUNCTION_2_0();
      LogPrintF(v2, v3, v4, v5, v0, DiscoveryID);
    }
  }
}

uint64_t __manager_createEndpoint_block_invoke_cold_2(uint64_t a1)
{
  v6 = *(a1 + 288);
  OUTLINED_FUNCTION_2_0();
  return LogPrintF(v1, v2, v3, v4, v6);
}

uint64_t manager_handleClusterChangeDeactivationFinish_cold_1(int a1, uint64_t a2, uint64_t a3)
{
  if (a1 != -1 || (result = OUTLINED_FUNCTION_4(&gLogCategory_APEndpointManager), result))
  {
    OUTLINED_FUNCTION_2_0();
    return LogPrintF(v5, v6, v7, v8, a2, a3);
  }

  return result;
}

uint64_t __manager_asyncRegisterAirPlayHALDriverInternal_block_invoke_cold_1(uint64_t a1)
{
  v6 = *(a1 + 40);
  OUTLINED_FUNCTION_2_0();
  return LogPrintF(v1, v2, v3, v4, v6, @"AirPlayHalogen.driver");
}

uint64_t manager_deviceIsAllowed_cold_1()
{
  OUTLINED_FUNCTION_14_3();
  v2 = "NO";
  if (v3)
  {
    v2 = "YES";
  }

  return LogPrintF(&gLogCategory_APEndpointManager, "Boolean manager_deviceIDIsAllowed(FigEndpointManagerRef, APEndpointDescriptionRef)", 33554452, "%@ (%@), isAllowed = %s\n", v1, v0, v2);
}

uint64_t manager_deviceIsAllowed_cold_3()
{
  OUTLINED_FUNCTION_14_3();
  v2 = "YES";
  if (!v3)
  {
    v2 = "NO";
  }

  return LogPrintF(&gLogCategory_APEndpointManager, "Boolean manager_deviceNameIsAllowed(FigEndpointManagerRef, APEndpointDescriptionRef)", 33554452, "%@ (%@), isAllowed = %s\n", v1, v0, v2);
}

uint64_t __manager_registerForNotifications_block_invoke_2_cold_1(uint64_t a1)
{
  v6 = *(a1 + 32);
  OUTLINED_FUNCTION_2_0();
  return LogPrintF(v1, v2, v3, v4, v6);
}

uint64_t __manager_registerForNotifications_block_invoke_3_cold_1()
{
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_2_0();
  return LogPrintF(v0, v1, v2, v3);
}

void manager_updateAllowedDevices_cold_1(uint64_t a1, CFTypeRef *a2)
{
  APSLogErrorAt();
  if (*a2)
  {
    CFRelease(*a2);
  }
}

uint64_t __manager_handleDiscoveryBrokerRequest_block_invoke_cold_2()
{
  result = APSLogErrorAt();
  if (gLogCategory_APEndpointManager <= 90)
  {
    if (gLogCategory_APEndpointManager != -1)
    {
      return OUTLINED_FUNCTION_4_0(&gLogCategory_APEndpointManager, "void manager_brokerManagerAuthenticateBrokerGroupCallback(CFStringRef, OSStatus, CFDictionaryRef)", v1, "Broker authentication callback failed to handle response with error: %#m\n");
    }

    result = _LogCategory_Initialize();
    if (result)
    {
      return OUTLINED_FUNCTION_4_0(&gLogCategory_APEndpointManager, "void manager_brokerManagerAuthenticateBrokerGroupCallback(CFStringRef, OSStatus, CFDictionaryRef)", v1, "Broker authentication callback failed to handle response with error: %#m\n");
    }
  }

  return result;
}

uint64_t __manager_handleDiscoveryBrokerRequest_block_invoke_2_cold_2()
{
  result = APSLogErrorAt();
  if (gLogCategory_APEndpointManager <= 90)
  {
    if (gLogCategory_APEndpointManager != -1)
    {
      return OUTLINED_FUNCTION_4_0(&gLogCategory_APEndpointManager, "void manager_brokerManagerGetBrokerGroupInfoCallback(CFStringRef, OSStatus, CFDictionaryRef)", v1, "Broker get info callback failed to handle response with error: %#m\n");
    }

    result = _LogCategory_Initialize();
    if (result)
    {
      return OUTLINED_FUNCTION_4_0(&gLogCategory_APEndpointManager, "void manager_brokerManagerGetBrokerGroupInfoCallback(CFStringRef, OSStatus, CFDictionaryRef)", v1, "Broker get info callback failed to handle response with error: %#m\n");
    }
  }

  return result;
}

uint64_t airPlayDebugIPC_handleEvent(const __CFDictionary *a1, CFMutableDictionaryRef *a2)
{
  v2 = 4294895275;
  v186 = 0;
  v185 = 0u;
  memset(v184, 0, sizeof(v184));
  v182 = 0;
  v183 = 0;
  cf = 0;
  v181 = 0;
  v178 = 0;
  v179 = 0;
  if (!_MergedGlobals_4)
  {
    OUTLINED_FUNCTION_7_4();
    APSLogErrorAt();
    goto LABEL_79;
  }

  DataBuffer_Init();
  Value = CFDictionaryGetValue(a1, @"command");
  if (!Value)
  {
    goto LABEL_55;
  }

  v6 = Value;
  v7 = CFGetTypeID(Value);
  if (v7 != CFStringGetTypeID())
  {
    goto LABEL_110;
  }

  if (CFEqual(v6, @"logging"))
  {
    v8 = CFDictionaryGetValue(a1, @"value");
    if (!v8)
    {
      goto LABEL_8;
    }

    v9 = CFGetTypeID(v8);
    if (v9 == CFStringGetTypeID())
    {
      v10 = LogControlCF();
      if (v10)
      {
        v2 = v10;
        goto LABEL_120;
      }

LABEL_8:
      v11 = LogShow();
      if (v11)
      {
        v2 = v11;
        goto LABEL_120;
      }

      v18 = OUTLINED_FUNCTION_6_5(v11, v12, "{%kO=%s}", v13, v14, v15, v16, v17, @"value", v178, v145, v148, v156, v165, theDict, v171, v172, v173, v174, v175, v176, v177, v178, v179, cf, v181);
      if (v18)
      {
        v2 = v18;
LABEL_120:
        APSLogErrorAt();
        goto LABEL_55;
      }

      goto LABEL_51;
    }

    goto LABEL_110;
  }

  if (CFEqual(v6, @"show"))
  {
    v149 = v6;
    v157 = a2;
    Count = CFArrayGetCount(_MergedGlobals_4);
    if (Count >= 1)
    {
      v20 = Count;
      v21 = 0;
      v165 = @"ShowInfo";
      v22 = *MEMORY[0x277CBECE8];
      do
      {
        ValueAtIndex = CFArrayGetValueAtIndex(_MergedGlobals_4, v21);
        v24 = FigCFDictionaryGetValue();
        DataBuffer_AppendF(v184, "==============================================================\n");
        v137 = v24;
        v140 = ValueAtIndex;
        DataBuffer_AppendF(v184, "=== Endpoint Manager: %@ [%{ptr}]\n");
        DataBuffer_AppendF(v184, "==============================================================\n");
        theDict = 0;
        if (ValueAtIndex && (v25 = CFGetTypeID(ValueAtIndex), v25 == FigEndpointManagerGetTypeID()))
        {
          CMBaseObject = FigEndpointManagerGetCMBaseObject();
          v27 = *(*(CMBaseObjectGetVTable() + 8) + 48);
          if (v27 && !v27(CMBaseObject, @"ShowInfo", v22, &theDict) && (v28 = CFDictionaryGetValue(theDict, @"DetailedDescription")) != 0)
          {
            v137 = v28;
            DataBuffer_AppendF(v184, "%@");
          }

          else
          {
            APSLogErrorAt();
          }
        }

        else
        {
          APSLogErrorAt();
          OUTLINED_FUNCTION_3_10();
          APSSignalErrorAt();
        }

        if (theDict)
        {
          CFRelease(theDict);
        }

        DataBuffer_AppendF(v184, "\n");
        ++v21;
      }

      while (v20 != v21);
    }

    v29 = DataBuffer_AppendF(v184, "\n");
    v37 = OUTLINED_FUNCTION_4_9(v29, v30, v31, v32, v33, v34, v35, v36, v137, v140, v145, v149, v157, v165, theDict, v171, v172, v173, v174, v175, v176, v177, v178, v179, cf, v181, v182, SHIDWORD(v182), v183);
    if (v37)
    {
      v2 = v37;
      goto LABEL_120;
    }

    v44 = OUTLINED_FUNCTION_6_5(v37, v38, "{%kO=%.*s}", v39, v40, v41, v42, v43, @"value", v182, v183, v150, v158, v166, theDict, v171, v172, v173, v174, v175, v176, v177, v178, v179, cf, v181);
    v6 = v151;
    a2 = v159;
    if (v44)
    {
      v2 = v44;
      goto LABEL_120;
    }

    goto LABEL_51;
  }

  if (CFEqual(v6, @"hierarchy"))
  {
    v160 = a2;
    v45 = CFArrayGetCount(_MergedGlobals_4);
    if (v45 >= 1)
    {
      v53 = v45;
      v54 = 0;
      v55 = *MEMORY[0x277CBECE8];
      do
      {
        v56 = CFArrayGetValueAtIndex(_MergedGlobals_4, v54);
        v57 = v185;
        theDict = 0;
        if (v56 && (v58 = CFGetTypeID(v56), v58 == FigEndpointManagerGetTypeID()))
        {
          v59 = FigEndpointManagerGetCMBaseObject();
          v60 = *(*(CMBaseObjectGetVTable() + 8) + 48);
          if (!v60 || v60(v59, @"HierarchyDump", v55, &theDict))
          {
            APSLogErrorAt();
            v61 = 0;
          }

          else
          {
            v137 = theDict;
            DataBuffer_AppendF(v184, "%@");
            v61 = 1;
          }
        }

        else
        {
          APSLogErrorAt();
          OUTLINED_FUNCTION_3_10();
          v61 = APSSignalErrorAt() == 0;
        }

        v45 = theDict;
        if (theDict)
        {
          CFRelease(theDict);
        }

        if (v57 < v185 && v61)
        {
          v45 = DataBuffer_AppendF(v184, "\n");
        }

        ++v54;
      }

      while (v53 != v54);
    }

    v63 = OUTLINED_FUNCTION_4_9(v45, v46, v47, v48, v49, v50, v51, v52, v137, v140, v145, v6, v160, v165, theDict, v171, v172, v173, v174, v175, v176, v177, v178, v179, cf, v181, v182, SHIDWORD(v182), v183);
    if (v63)
    {
      v2 = v63;
      goto LABEL_120;
    }

    v70 = OUTLINED_FUNCTION_6_5(v63, v64, "{%kO=%.*s}", v65, v66, v67, v68, v69, @"value", v182, v183, v152, v161, v167, theDict, v171, v172, v173, v174, v175, v176, v177, v178, v179, cf, v181);
    v6 = v153;
    a2 = v162;
    if (v70)
    {
      v2 = v70;
      goto LABEL_120;
    }

    goto LABEL_51;
  }

  if (CFEqual(v6, @"activate"))
  {
    v73 = a2;
    v74 = CFDictionaryGetValue(a1, @"value");
    Int64 = CFDictionaryGetInt64();
    if (v74)
    {
      v76 = Int64;
      v77 = CFArrayGetCount(_MergedGlobals_4);
      if (v77 >= 1)
      {
        v78 = v77;
        v79 = 0;
        while (1)
        {
          v141 = CFArrayGetValueAtIndex(_MergedGlobals_4, v79);
          DataBuffer_AppendF(v184, "endpointManager[%d] %{ptr}\n", v79);
          v80 = airPlayDebugIPC_copyEndpointWithID(v141, v74, &cf);
          if (v80)
          {
            v2 = v80;
            goto LABEL_120;
          }

          if (cf)
          {
            break;
          }

          if (v78 == ++v79)
          {
            goto LABEL_69;
          }
        }

        v138 = cf;
        DataBuffer_AppendF(v184, "endpoint %{ptr}\n");
        EndpointActivationDictionary = airPlayDebugIPC_createEndpointActivationDictionary(&v179);
        if (EndpointActivationDictionary)
        {
          v2 = EndpointActivationDictionary;
        }

        else
        {
          if (!v76)
          {
            DataBuffer_AppendF(v184, "No features to activate an endpoint for\n");
            goto LABEL_78;
          }

          a2 = v73;
          v88 = v179;
          v89 = FigEndpointActivateSync();
          if (v89)
          {
            v2 = v89;
          }

          else
          {
            if (v88)
            {
              CFRelease(v88);
              v179 = 0;
            }

            v90 = DataBuffer_AppendF(v184, "\n");
            v98 = OUTLINED_FUNCTION_4_9(v90, v91, v92, v93, v94, v95, v96, v97, v138, v141, v145, v148, v156, v165, theDict, v171, v172, v173, v174, v175, v176, v177, v178, v179, cf, v181, v182, SHIDWORD(v182), v183);
            if (v98)
            {
              v2 = v98;
            }

            else
            {
              OUTLINED_FUNCTION_1_13();
              v106 = OUTLINED_FUNCTION_6_5(v99, v100, "{%kO=%.*s}", v101, v102, v103, v104, v105, @"value", v143, v146, v154, v163, v168, theDict, v171, v172, v173, v174, v175, v176, v177, v178, v179, cf, v181);
              if (!v106)
              {
                goto LABEL_51;
              }

              v2 = v106;
            }
          }
        }

        goto LABEL_120;
      }

LABEL_69:
      DataBuffer_AppendF(v184, "Failed to find endpoint with ID\n", v74);
LABEL_78:
      OUTLINED_FUNCTION_3_10();
LABEL_79:
      v2 = APSSignalErrorAt();
      goto LABEL_55;
    }

LABEL_110:
    OUTLINED_FUNCTION_7_4();
LABEL_111:
    APSLogErrorAt();
    OUTLINED_FUNCTION_3_10();
    goto LABEL_79;
  }

  if (CFEqual(v6, @"deactivate"))
  {
    v81 = CFDictionaryGetValue(a1, @"value");
    if (!v81)
    {
      goto LABEL_111;
    }

    v82 = v81;
    v83 = CFArrayGetCount(_MergedGlobals_4);
    if (v83 >= 1)
    {
      v84 = v83;
      v85 = 0;
      while (1)
      {
        v142 = CFArrayGetValueAtIndex(_MergedGlobals_4, v85);
        DataBuffer_AppendF(v184, "endpointManager[%d] %{ptr}\n", v85);
        v86 = airPlayDebugIPC_copyEndpointWithID(v142, v82, &cf);
        if (v86)
        {
          v2 = v86;
          goto LABEL_120;
        }

        if (cf)
        {
          break;
        }

        if (v84 == ++v85)
        {
          goto LABEL_77;
        }
      }

      v139 = cf;
      DataBuffer_AppendF(v184, "endpoint %{ptr}\n");
      v109 = FigEndpointDeactivate();
      if (v109)
      {
        v2 = v109;
      }

      else
      {
        v110 = DataBuffer_AppendF(v184, "\n");
        v118 = OUTLINED_FUNCTION_4_9(v110, v111, v112, v113, v114, v115, v116, v117, v139, v142, v145, v148, v156, v165, theDict, v171, v172, v173, v174, v175, v176, v177, v178, v179, cf, v181, v182, SHIDWORD(v182), v183);
        if (v118)
        {
          v2 = v118;
        }

        else
        {
          OUTLINED_FUNCTION_1_13();
          v126 = OUTLINED_FUNCTION_6_5(v119, v120, "{%kO=%.*s}", v121, v122, v123, v124, v125, @"value", v144, v147, v155, v164, v169, theDict, v171, v172, v173, v174, v175, v176, v177, v178, v179, cf, v181);
          if (!v126)
          {
            goto LABEL_51;
          }

          v2 = v126;
        }
      }

      goto LABEL_120;
    }

LABEL_77:
    DataBuffer_AppendF(v184, "Failed to find endpoint with ID\n", v82);
    goto LABEL_78;
  }

  if (CFEqual(v6, @"disable"))
  {
    v107 = CFDictionaryGetValue(a1, *MEMORY[0x277CC0C50]);
    if (v107)
    {
      v108 = 0;
LABEL_99:
      airPlayDebugIPC_overrideEndpointManagerEnabled(v107, v108);
      goto LABEL_51;
    }

    goto LABEL_51;
  }

  if (CFEqual(v6, @"enable"))
  {
    v107 = CFDictionaryGetValue(a1, *MEMORY[0x277CC0C50]);
    if (v107)
    {
      v108 = 1;
      goto LABEL_99;
    }

LABEL_51:
    if (v181)
    {
      CFDictionarySetValue(v181, @"responseType", v6);
      v71 = v181;
    }

    else
    {
      v71 = 0;
    }

    v2 = 0;
    *a2 = v71;
    v181 = 0;
    goto LABEL_55;
  }

  if (CFEqual(v6, @"stats"))
  {
    v127 = CFDictionaryGetValue(a1, @"value");
    v128 = CFDictionaryGetValue(a1, @"filePath");
    v129 = airPlayDebugIPC_showStats(v127, v128);
    if (v129)
    {
      v2 = v129;
      goto LABEL_120;
    }

    v136 = OUTLINED_FUNCTION_6_5(v129, v130, "{%kO=%.*s}", v131, v132, v133, v134, v135, @"value", 0, 0, v148, v156, v165, theDict, v171, v172, v173, v174, v175, v176, v177, v178, v179, cf, v181);
    if (v136)
    {
      v2 = v136;
      goto LABEL_120;
    }

    goto LABEL_51;
  }

  v2 = 4294895272;
  if (gLogCategory_AirPlayDebugIPCUtilities <= 50 && (gLogCategory_AirPlayDebugIPCUtilities != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_AirPlayDebugIPCUtilities, "OSStatus airPlayDebugIPC_handleEvent(CFDictionaryRef, CFDictionaryRef *, void *)", 33554482, "### Unsupported debug command: %@\n", v6);
  }

LABEL_55:
  DataBuffer_Free();
  if (v181)
  {
    CFRelease(v181);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (v179)
  {
    CFRelease(v179);
  }

  free(v178);
  return v2;
}

uint64_t AirPlayDebugIPCEnableForEndpointManager_cold_2(_DWORD *a1)
{
  OUTLINED_FUNCTION_17();
  APSLogErrorAt();
  result = OUTLINED_FUNCTION_5_5(0xE6AAu, "Already initialized");
  *a1 = result;
  return result;
}

uint64_t AirPlayDebugIPCEnableForEndpointManager_cold_4(_DWORD *a1)
{
  OUTLINED_FUNCTION_17();
  APSLogErrorAt();
  result = OUTLINED_FUNCTION_5_5(0xE6ACu, "CFDictionaryCreateMutable failed");
  *a1 = result;
  return result;
}

uint64_t AirPlayDebugIPCEnableForEndpointManager_cold_5(_DWORD *a1)
{
  OUTLINED_FUNCTION_17();
  APSLogErrorAt();
  result = OUTLINED_FUNCTION_5_5(0xE6ACu, "CFArrayCreateMutable failed");
  *a1 = result;
  return result;
}

uint64_t AirPlayDebugIPCEnableForEndpointManager_cold_7(_DWORD *a1)
{
  OUTLINED_FUNCTION_17();
  APSLogErrorAt();
  OUTLINED_FUNCTION_3_10();
  result = APSSignalErrorAt();
  *a1 = result;
  return result;
}

uint64_t AirPlayDebugIPCDisableForEndpointManager_cold_2(_DWORD *a1)
{
  OUTLINED_FUNCTION_17();
  APSLogErrorAt();
  OUTLINED_FUNCTION_3_10();
  result = APSSignalErrorAt();
  *a1 = result;
  return result;
}

uint64_t AirPlayDebugIPCDisableForEndpointManager_cold_3(_DWORD *a1)
{
  OUTLINED_FUNCTION_17();
  APSLogErrorAt();
  result = OUTLINED_FUNCTION_5_5(0xE6A9u, "Uninitialized");
  *a1 = result;
  return result;
}

uint64_t AirPlayDebugIPCDisableForEndpointManager_cold_4(_DWORD *a1)
{
  OUTLINED_FUNCTION_17();
  APSLogErrorAt();
  result = OUTLINED_FUNCTION_5_5(0xE6A9u, "Uninitialized");
  *a1 = result;
  return result;
}

uint64_t AirPlayDebugIPCDisableForEndpointManager_cold_5(_DWORD *a1)
{
  OUTLINED_FUNCTION_17();
  APSLogErrorAt();
  OUTLINED_FUNCTION_3_10();
  result = APSSignalErrorAt();
  *a1 = result;
  return result;
}

uint64_t airPlayDebugIPC_createEndpointActivationDictionary_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_17();
  APSLogErrorAt();
  result = OUTLINED_FUNCTION_5_5(0xE6ACu, "Failed allocating dictionary");
  *a1 = result;
  return result;
}

uint64_t APMessageRingGetMessageAtSequenceNumber(void *a1, unsigned int a2, uint64_t a3, _DWORD *a4)
{
  FigSimpleMutexLock();
  v8 = *(a1[5] + 8 * (a2 % a1[4]));
  if (!v8)
  {
LABEL_9:
    v10 = 0;
    goto LABEL_12;
  }

  AudioDataSequenceNumber = APSTransportMessageGetAudioDataSequenceNumber();
  if (AudioDataSequenceNumber)
  {
    v10 = AudioDataSequenceNumber;
    APSLogErrorAt();
  }

  else
  {
    if (!a2)
    {
      if (a3)
      {
        v10 = 0;
        v11 = a1[9] + 24 * (a2 % a1[4]);
        v12 = *v11;
        *(a3 + 16) = *(v11 + 16);
        *a3 = v12;
        goto LABEL_12;
      }

      goto LABEL_9;
    }

    if (gLogCategory_APMessageRing <= 30 && (gLogCategory_APMessageRing != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_APMessageRing, "CMBlockBufferRef APMessageRingGetMessageAtSequenceNumber(APMessageRingRef, uint16_t, CMTime *, OSStatus *)", 33554462, "APMessageRingGetMessageAtSequenceNumber requested seq # %u found seq # %u\n", a2, 0);
    }

    v10 = 0;
    v8 = 0;
  }

LABEL_12:
  FigSimpleMutexUnlock();
  if (a4)
  {
    *a4 = v10;
  }

  return v8;
}

uint64_t APMessageRingFlush(uint64_t a1, _WORD *a2)
{
  if (a1)
  {
    FigSimpleMutexLock();
    if (gLogCategory_APMessageRing <= 50 && (gLogCategory_APMessageRing != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_APMessageRing, "OSStatus APMessageRingFlush(APMessageRingRef, uint16_t *)", 33554482, "APMessageRing %p Flush: seqNumRead changing from %u to %u\n", a1, *(a1 + 24), *(a1 + 26));
    }

    v4 = *(a1 + 26);
    *(a1 + 24) = v4;
    v5 = *(a1 + 80);
    if (v5)
    {
      CFRelease(v5);
      *(a1 + 80) = 0;
      v4 = *(a1 + 26);
    }

    *a2 = v4;
    FigSimpleMutexUnlock();
  }

  return 0;
}

_BYTE *spmanager_invalidateInternal(void *a1)
{
  result = CMBaseObjectGetDerivedStorage();
  if (!*result)
  {
    v4 = result;
    if (gLogCategory_SPEndpointManager <= 50 && (gLogCategory_SPEndpointManager != -1 || OUTLINED_FUNCTION_4(&gLogCategory_SPEndpointManager)))
    {
      OUTLINED_FUNCTION_2(&gLogCategory_SPEndpointManager, "void spmanager_invalidateInternal(void *)", v3, "[%{ptr}] Invalidating SPEndpointManager\n");
    }

    AirPlayDebugIPCDisableForEndpointManager(a1);
    v5 = *(v4 + 4);
    if (v5 != -1)
    {
      notify_cancel(v5);
      *(v4 + 4) = -1;
    }

    FigSimpleMutexLock();
    v6 = *(v4 + 12);
    if (v6)
    {
      CFRelease(v6);
    }

    *(v4 + 12) = CFSetCreate(*MEMORY[0x277CBECE8], 0, 0, MEMORY[0x277CBF158]);
    spmanager_checkHubbedDevices(a1, 0);
    FigSimpleMutexUnlock();
    *v4 = 1;
    SPHubbedDevicesProviderRemoveListener(*(v4 + 13), a1);
    SPHubbedDevicesProviderGetCMBaseObject();
    if (v7)
    {
      v8 = v7;
      v9 = *(*(CMBaseObjectGetVTable() + 8) + 24);
      if (v9)
      {
        v9(v8);
      }
    }

    result = *(v4 + 19);
    if (result)
    {
      CMBaseObject = APBrowserGetCMBaseObject();
      if (!CMBaseObject || (v11 = CMBaseObject, (v12 = *(*(CMBaseObjectGetVTable() + 8) + 24)) == 0) || (result = v12(v11), result))
      {
        result = APSLogErrorAt();
      }
    }
  }

  if (gLogCategory_SPEndpointManager <= 50)
  {
    if (gLogCategory_SPEndpointManager != -1)
    {
      return OUTLINED_FUNCTION_2(&gLogCategory_SPEndpointManager, "void spmanager_invalidateInternal(void *)", v3, "[%{ptr}] Invalidating complete\n");
    }

    result = OUTLINED_FUNCTION_4(&gLogCategory_SPEndpointManager);
    if (result)
    {
      return OUTLINED_FUNCTION_2(&gLogCategory_SPEndpointManager, "void spmanager_invalidateInternal(void *)", v3, "[%{ptr}] Invalidating complete\n");
    }
  }

  return result;
}

void spmanager_removeEndpointForTransportDeviceIfNeeded(void *a1, const void *a2, const __CFDictionary *a3, int a4, char *a5)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!a2)
  {
    APSLogErrorAt();
    goto LABEL_16;
  }

  v12 = DerivedStorage;
  if (gLogCategory_SPEndpointManager <= 50 && (gLogCategory_SPEndpointManager != -1 || OUTLINED_FUNCTION_4(&gLogCategory_SPEndpointManager)))
  {
    OUTLINED_FUNCTION_2(&gLogCategory_SPEndpointManager, "void spmanager_removeEndpointForTransportDeviceIfNeeded(FigEndpointManagerRef, APTransportDeviceRef, CFMutableDictionaryRef, Boolean, Boolean *)", v11, "[%{ptr}] <SidePlayDiscovery> RemoveEndpointForTransportDeviceIfNeeded([%{ptr}], vanished=%c)");
  }

  if (a4 && !CFSetContainsValue(*(v12 + 56), a2))
  {
    if (gLogCategory_SPEndpointManager <= 50 && (gLogCategory_SPEndpointManager != -1 || OUTLINED_FUNCTION_4(&gLogCategory_SPEndpointManager)))
    {
      APTransportDeviceGetDiscoveryID();
      OUTLINED_FUNCTION_2(&gLogCategory_SPEndpointManager, "void spmanager_removeEndpointForTransportDeviceIfNeeded(FigEndpointManagerRef, APTransportDeviceRef, CFMutableDictionaryRef, Boolean, Boolean *)", v13, "[%{ptr}] <SidePlayDiscovery> Adding transport device [%@] to vanished");
    }

    CFSetAddValue(*(v12 + 56), a2);
  }

  if (!CFDictionaryGetValue(a3, a2) || APSGetFBOPropertyInt64() || !CFSetContainsValue(*(v12 + 56), a2))
  {
LABEL_16:
    v14 = 0;
    if (!a5)
    {
      return;
    }

    goto LABEL_17;
  }

  spmanager_removeEndpointForTransportDevice(a1, a3, a2);
  v14 = 1;
  if (a5)
  {
LABEL_17:
    *a5 = v14;
  }
}

void spmanager_removeEndpointForTransportDevice(void *a1, const __CFDictionary *a2, const void *a3)
{
  CMBaseObjectGetDerivedStorage();
  Value = CFDictionaryGetValue(a2, a3);
  if (Value)
  {
    v7 = Value;
    if (gLogCategory_SPEndpointManager <= 50 && (gLogCategory_SPEndpointManager != -1 || OUTLINED_FUNCTION_4(&gLogCategory_SPEndpointManager)))
    {
      APTransportDeviceGetDiscoveryID();
      OUTLINED_FUNCTION_2(&gLogCategory_SPEndpointManager, "void spmanager_removeEndpointForTransportDevice(FigEndpointManagerRef, CFMutableDictionaryRef, APTransportDeviceRef)", v8, "[%{ptr}] <SidePlayDiscovery> RemoveEndpointForTransportDevice(ep=[%{ptr}] => [%@])");
    }

    CMNotificationCenterGetDefaultLocalCenter();
    FigNotificationCenterRemoveWeakListener();
    CMNotificationCenterGetDefaultLocalCenter();
    FigNotificationCenterRemoveWeakListener();
    v9 = *(*(CMBaseObjectGetVTable() + 16) + 32);
    if (v9)
    {
      v9(v7);
    }

    CFDictionaryRemoveValue(a2, a3);

    spmanager_checkHubbedDevices(a1, 0);
  }
}

const __CFDictionary *spmanager_AppendEndpointShowInfo(const __CFDictionary *result, int a2, uint64_t a3)
{
  if (result)
  {
    v5 = result;
    Value = CFDictionaryGetValue(result, @"EndpointHash");
    DataBuffer_AppendF(a3, "%@ ", Value);
    v7 = CFDictionaryGetValue(v5, @"Name");
    DataBuffer_AppendF(a3, "%''-*@", 22, v7);
    v8 = CFDictionaryGetValue(v5, @"DiscoveryID");
    if (v8)
    {
      DataBuffer_AppendF(a3, " discoveryID=%15@", v8);
    }

    v9 = CFDictionaryGetValue(v5, @"DeviceID");
    DataBuffer_AppendF(a3, " %@", v9);
    v10 = CFDictionaryGetValue(v5, @"Model");
    DataBuffer_AppendF(a3, " %-*@", 18, v10);
    v11 = CFDictionaryGetValue(v5, @"SourceVersion");
    DataBuffer_AppendF(a3, " v%-*@", 9, v11);
    CFDictionaryGetValue(v5, @"AirPlayFeatures");
    APSFeaturesCopyStringRepresentation();
    DataBuffer_AppendF(a3, " feat=%@", 0);
    Int64 = CFDictionaryGetInt64();
    DataBuffer_AppendF(a3, " flag=0x%05X", Int64);
    v13 = CFDictionaryGetInt64();
    DataBuffer_AppendF(a3, " Error=%#m", v13);
    v14 = CFDictionaryGetValue(v5, @"SenderSessionInfo");
    if (v14)
    {
      v15 = CFDictionaryGetValue(v14, @"TransportSessionInfo");
      if (v15)
      {
        v16 = CFDictionaryGetValue(v15, *MEMORY[0x277CE4FB8]);
        if (v16)
        {
          DataBuffer_AppendF(a3, " IP=%@", v16);
        }
      }
    }

    result = DataBuffer_AppendF(a3, "\n");
    if (a2)
    {
      result = CFDictionaryGetValue(v5, @"StreamInfo_BufferedAudio");
      if (result)
      {
        v17 = result;
        v18 = CFDictionaryGetInt64();
        v19 = "ACTIVATED";
        if (!v18)
        {
          v19 = "         ";
        }

        DataBuffer_AppendF(a3, "    %s ", v19);
        v20 = CFDictionaryGetInt64();
        v21 = "Resumed  ";
        if (!v20)
        {
          v21 = "Suspended";
        }

        DataBuffer_AppendF(a3, "%s ", v21);
        v22 = CFDictionaryGetValue(v17, @"Type");
        DataBuffer_AppendF(a3, "%-9@ ", v22);
        v23 = CFDictionaryGetValue(v17, @"Subtype");
        if (v23)
        {
          DataBuffer_AppendF(a3, "(%@) ", v23);
        }

        v24 = CFDictionaryGetValue(v17, @"Name");
        DataBuffer_AppendF(a3, "Stream %-26@ ", v24);
        return DataBuffer_AppendF(a3, "\n");
      }
    }
  }

  return result;
}

BOOL spmanager_deviceIsAllowlisted(uint64_t a1, _BOOL8 a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v38 = 0;
  cf = 0;
  if (!a2)
  {
    APSLogErrorAt();
    v12 = 0;
    goto LABEL_24;
  }

  v4 = DerivedStorage;
  if (!*(DerivedStorage + 40))
  {
    v12 = 0;
    a2 = 1;
    goto LABEL_24;
  }

  v5 = *MEMORY[0x277CBECE8];
  APEndpointDescriptionGetCMBaseObject();
  v7 = v6;
  v8 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v8)
  {
    v8(v7, @"DeviceID", v5, &cf);
  }

  APEndpointDescriptionGetCMBaseObject();
  v10 = v9;
  v11 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v11)
  {
    v11(v10, @"Name", v5, &v38);
  }

  v12 = OUTLINED_FUNCTION_4_10(cf);
  v13 = *(v4 + 40);
  if (!v13 || !v12)
  {
    goto LABEL_22;
  }

  v14 = CFGetTypeID(v13);
  TypeID = CFArrayGetTypeID();
  v16 = *(v4 + 40);
  if (v14 != TypeID)
  {
    a2 = v12 == OUTLINED_FUNCTION_4_10(v16);
    goto LABEL_24;
  }

  Count = CFArrayGetCount(v16);
  v18 = Count - 1;
  if (Count >= 1)
  {
    v19 = 0;
    do
    {
      ValueAtIndex = CFArrayGetValueAtIndex(*(v4 + 40), v19);
      v21 = OUTLINED_FUNCTION_4_10(ValueAtIndex);
      if (gLogCategory_SPEndpointManager <= 30 && (gLogCategory_SPEndpointManager != -1 || _LogCategory_Initialize()))
      {
        v22 = CFGetTypeID(ValueAtIndex);
        v23 = cf;
        v37 = CFGetTypeID(cf);
        OUTLINED_FUNCTION_3();
        LogPrintF(v24, v25, v26, "Comparing listed %lld/0x%012llx (%@: %ld) vs. %lld/0x%012llx (%@: %ld)\n", v21, v21, ValueAtIndex, v22, v12, v12, v23, v37);
      }

      v27 = v21 == v12;
      a2 = v21 == v12;
      v27 = v27 || v18 == v19++;
    }

    while (!v27);
  }

  else
  {
LABEL_22:
    a2 = 0;
  }

LABEL_24:
  if (gLogCategory_SPEndpointManager <= 30 && (gLogCategory_SPEndpointManager != -1 || _LogCategory_Initialize()))
  {
    v28 = "NO";
    if (a2)
    {
      v28 = "YES";
    }

    v36 = v28;
    v34 = v38;
    v35 = cf;
    OUTLINED_FUNCTION_3();
    LogPrintF(v29, v30, v31, v32, v34, v35, v12, v36);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (v38)
  {
    CFRelease(v38);
  }

  return a2;
}

CFStringRef spmanager_browserEventHandler_cold_14(CFAllocatorRef alloc, CFStringRef *a2)
{
  if (gLogCategory_SPEndpointManager <= 90 && (gLogCategory_SPEndpointManager != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_SPEndpointManager, "CFStringRef spmanager_copyTransportDeviceDescription(APTransportDeviceRef)", 33554522, "transportDevice has no advertiserInfo");
  }

  result = CFStringCreateWithFormat(alloc, 0, @"%@ ('%@')", 0, 0);
  *a2 = result;
  return result;
}

void spmanager_handlePreferencesChanged_cold_2(uint64_t a1, CFTypeRef *a2)
{
  APSLogErrorAt();
  if (*a2)
  {
    CFRelease(*a2);
  }
}

uint64_t spmanager_removeEndpointIfNeeded_cold_1(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (*a1)
  {
    APTransportDeviceGetDiscoveryID();
  }

  return OUTLINED_FUNCTION_2(&gLogCategory_SPEndpointManager, "OSStatus spmanager_removeEndpointIfNeeded(FigEndpointManagerRef, FigEndpointRef, Boolean, Boolean *)", a3, "[%{ptr}] <SidePlayDiscovery> RemoveEndpointIfNeeded(ep=[%{ptr}] => [%@], vanished=%c)");
}

uint64_t spmanager_setDiscoveryMode_cold_1(uint64_t a1, unsigned __int16 a2)
{
  APBrowserGetModeString();
  APBrowserGetModeString();
  return OUTLINED_FUNCTION_2(&gLogCategory_SPEndpointManager, "OSStatus spmanager_setDiscoveryMode(FigEndpointManagerRef, APBrowserMode)", v2, "[%{ptr}] <SidePlayMonitor> SetDiscoveryMode(%s %s %s)\n");
}

CFIndex spmanager_setDiscoveryMode_cold_3(CFArrayRef theArray, void *a2, const __CFDictionary *a3)
{
  v6 = 0;
  do
  {
    ValueAtIndex = CFArrayGetValueAtIndex(theArray, v6);
    spmanager_removeEndpointForTransportDeviceIfNeeded(a2, ValueAtIndex, a3, 1, 0);
    ++v6;
    result = CFArrayGetCount(theArray);
  }

  while (v6 < result);
  return result;
}

void screenstreamudp_handleResumed(const void *a1, uint64_t a2, int a3)
{
  CMBaseObjectGetDerivedStorage();
  if (!a3)
  {
    screenstreamudp_setResumedAndNotifyObservers(a1, 1);
  }

  v6 = *a2;
  v7 = *(a2 + 16);
  screenstreamudp_dispatchCallback(a1, &v6, a3);
}

const __CFDictionary *screenstreamudp_getDisplayHDRMode(uint64_t a1, uint64_t a2)
{
  if (APSHasHDRSenderSupport())
  {
    result = *(a1 + 208);
    if (result)
    {
      result = CFDictionaryGetValue(result, *MEMORY[0x277CD6540]);
    }
  }

  else
  {
    result = 0;
  }

  if (!result)
  {
    return *MEMORY[0x277CD6538];
  }

  return result;
}

void screenstreamudp_dissociateInternal(const void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!*(DerivedStorage + 24))
  {
    v4 = DerivedStorage;
    if (*(DerivedStorage + 25))
    {
      if (gLogCategory_APEndpointStreamScreenUDP <= 50 && (gLogCategory_APEndpointStreamScreenUDP != -1 || OUTLINED_FUNCTION_4(&gLogCategory_APEndpointStreamScreenUDP)))
      {
        OUTLINED_FUNCTION_2(&gLogCategory_APEndpointStreamScreenUDP, "void screenstreamudp_dissociateInternal(FigEndpointStreamRef)", v3, "dissociating screen stream %{ptr}\n");
      }

      if (*(v4 + 26))
      {
        v5 = *(v4 + 40);
        memset(v8, 0, sizeof(v8));
        [v5 stopWithCompletion:v8];
        screenstreamudp_teardownStream(a1);
      }

      *(v4 + 26) = 0;
      *(v4 + 24) = 1;
      CFRetain(a1);
      v6 = *(v4 + 64);
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __screenstreamudp_dissociateInternal_block_invoke;
      block[3] = &__block_descriptor_40_e5_v8__0l;
      block[4] = a1;
      dispatch_async(v6, block);
    }
  }
}

uint64_t APEndpointStreamScreenUDPCreate_cold_7(uint64_t a1, _DWORD *a2)
{
  v3 = a1;
  APSLogErrorAt();
  *a2 = v3;
  return APSLogErrorAt();
}

void APEndpointStreamScreenUDPCreate_cold_16()
{
  APSLogErrorAt();
  if (gLogCategory_APEndpointStreamScreenUDP <= 90 && (gLogCategory_APEndpointStreamScreenUDP != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APEndpointStreamScreenUDP, "OSStatus screenstreamudp_initDisplayInfo(StreamScreenUDPStorage *)", 33554522, "### endpoint display has no UUID, bailing out");
  }

  OUTLINED_FUNCTION_3_0();
}

uint64_t APEndpointStreamScreenUDPCreate_cold_25(_DWORD *a1)
{
  result = APSLogErrorAt();
  *a1 = -16761;
  return result;
}

void screenstreamudp_handleClearScreen_cold_2(uint64_t a1, const void *a2)
{
  APSLogErrorAt();

  CFRelease(a2);
}

void AVConferenceLibrary_cold_1(void *a1)
{
  v2 = [MEMORY[0x277CCA890] currentHandler];
  [v2 handleFailureInFunction:objc_msgSend(MEMORY[0x277CCACA8] file:"stringWithUTF8String:" lineNumber:"void *AVConferenceLibrary(void)") description:{@"APEndpointStreamScreenUDP.m", 53, @"%s", *a1}];
  __break(1u);
}

void __getAVCMediaStreamNegotiatorClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x277CCA890] currentHandler];
  [v0 handleFailureInFunction:objc_msgSend(MEMORY[0x277CCACA8] file:"stringWithUTF8String:" lineNumber:"Class getAVCMediaStreamNegotiatorClass(void)_block_invoke") description:{@"APEndpointStreamScreenUDP.m", 59, @"Unable to find class %s", "AVCMediaStreamNegotiator"}];
  __break(1u);
}

void __getAVCScreenCaptureConfigurationClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x277CCA890] currentHandler];
  [v0 handleFailureInFunction:objc_msgSend(MEMORY[0x277CCACA8] file:"stringWithUTF8String:" lineNumber:"Class getAVCScreenCaptureConfigurationClass(void)_block_invoke") description:{@"APEndpointStreamScreenUDP.m", 63, @"Unable to find class %s", "AVCScreenCaptureConfiguration"}];
  __break(1u);
}

void __getAVCScreenCaptureClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x277CCA890] currentHandler];
  [v0 handleFailureInFunction:objc_msgSend(MEMORY[0x277CCACA8] file:"stringWithUTF8String:" lineNumber:"Class getAVCScreenCaptureClass(void)_block_invoke") description:{@"APEndpointStreamScreenUDP.m", 65, @"Unable to find class %s", "AVCScreenCapture"}];
  __break(1u);
}

void __getAVCVideoStreamClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x277CCA890] currentHandler];
  [v0 handleFailureInFunction:objc_msgSend(MEMORY[0x277CCACA8] file:"stringWithUTF8String:" lineNumber:"Class getAVCVideoStreamClass(void)_block_invoke") description:{@"APEndpointStreamScreenUDP.m", 55, @"Unable to find class %s", "AVCVideoStream"}];
  __break(1u);
}

void __getAVCDaemonProcessInfoClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x277CCA890] currentHandler];
  [v0 handleFailureInFunction:objc_msgSend(MEMORY[0x277CCACA8] file:"stringWithUTF8String:" lineNumber:"Class getAVCDaemonProcessInfoClass(void)_block_invoke") description:{@"APEndpointStreamScreenUDP.m", 61, @"Unable to find class %s", "AVCDaemonProcessInfo"}];
  __break(1u);
}

void apPlaybackUtil_convertRangeSecondsToCMTime(__CFDictionary *a1, const void *a2)
{
  v21 = *MEMORY[0x277D85DE8];
  CFArrayGetTypeID();
  TypedValue = CFDictionaryGetTypedValue();
  if (TypedValue)
  {
    Count = CFArrayGetCount(TypedValue);
    v6 = *MEMORY[0x277CBECE8];
    Mutable = CFArrayCreateMutable(*MEMORY[0x277CBECE8], Count, MEMORY[0x277CBF128]);
    if (Mutable)
    {
      v8 = Mutable;
      v18 = a1;
      v19 = a2;
      if (Count < 1)
      {
LABEL_10:
        CFDictionarySetValue(v18, v19, v8);
      }

      else
      {
        v9 = 0;
        v10 = *MEMORY[0x277CC11A0];
        v11 = *MEMORY[0x277CC1198];
        while (1)
        {
          CFDictionaryGetTypeID();
          TypedValueAtIndex = CFArrayGetTypedValueAtIndex();
          if (!TypedValueAtIndex || (v13 = TypedValueAtIndex, (v14 = CFDictionaryCreateMutable(v6, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150])) == 0))
          {
            APSLogErrorAt();
            goto LABEL_11;
          }

          v15 = v14;
          apPlaybackUtil_getCMTimeFromRangeForKeys(v13, @"startCMTime", v10, &v20);
          OUTLINED_FUNCTION_2_11();
          if ((v16 & 1) == 0)
          {
            break;
          }

          OUTLINED_FUNCTION_1_16();
          FigCFDictionarySetCMTime();
          apPlaybackUtil_getCMTimeFromRangeForKeys(v13, @"durationCMTime", v11, &v20);
          OUTLINED_FUNCTION_2_11();
          if ((v17 & 1) == 0)
          {
            break;
          }

          OUTLINED_FUNCTION_1_16();
          FigCFDictionarySetCMTime();
          CFArrayAppendValue(v8, v15);
          CFRelease(v15);
          if (Count == ++v9)
          {
            goto LABEL_10;
          }
        }

        APSLogErrorAt();
        CFRelease(v15);
      }

LABEL_11:
      CFRelease(v8);
    }

    else
    {

      APSLogErrorAt();
    }
  }
}

void apPlaybackUtil_convertSecondsToCMTime(uint64_t a1, uint64_t a2)
{
  v4 = 0;
  CFDictionaryGetDouble();
  CMTimeMakeWithSeconds(&v3, v2, 1000);
  v4 = FigCFDictionarySetCMTime();
  if (v4)
  {
    APSLogErrorAt();
  }
}

void APEndpointPlaybackSessionStatsDestroy(uint64_t *a1)
{
  v1 = *a1;
  if (*a1)
  {
    v3 = *(v1 + 32);
    if (v3)
    {
      CFRelease(v3);
      *(*a1 + 32) = 0;
      v1 = *a1;
    }

    v4 = *(v1 + 8);
    if (v4)
    {
      CFRelease(v4);
      *(*a1 + 8) = 0;
    }

    FigSimpleMutexDestroy();
    v5 = *a1;
    if (!*(*a1 + 40) || (CFRelease(*(*a1 + 40)), *(*a1 + 40) = 0, (v5 = *a1) != 0))
    {
      *a1 = 0;

      free(v5);
    }
  }
}

uint64_t sharedMemSink_Resume(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*DerivedStorage)
  {
    return 0;
  }

  v3 = DerivedStorage;
  if (gLogCategory_APAudioSinkSharedMem <= 30 && (gLogCategory_APAudioSinkSharedMem != -1 || _LogCategory_Initialize()))
  {
    OUTLINED_FUNCTION_4_1(&gLogCategory_APAudioSinkSharedMem, "OSStatus sharedMemSink_Resume(FigEndpointAudioSinkRef)", v2, "Resuming remote input audio sink\n");
  }

  if (*(v3 + 4) == *(v3 + 14))
  {
    v4 = APSSharedRingBuffer_Create();
    if (v4)
    {
      APSLogErrorAt();
    }

    else
    {
      APSSharedRingBuffer_ClearDataInBuffer();
      *v3 = 1;
    }
  }

  else
  {
    APSLogErrorAt();
    return 4294960587;
  }

  return v4;
}

uint64_t sharedMemSink_Suspend(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!*DerivedStorage)
  {
    return 4294950503;
  }

  v3 = DerivedStorage;
  if (gLogCategory_APAudioSinkSharedMem <= 30 && (gLogCategory_APAudioSinkSharedMem != -1 || _LogCategory_Initialize()))
  {
    OUTLINED_FUNCTION_4_1(&gLogCategory_APAudioSinkSharedMem, "OSStatus sharedMemSink_Suspend(FigEndpointAudioSinkRef)", v2, "Suspending remote input audio sink\n");
  }

  *v3 = 0;
  result = *(v3 + 12);
  if (result)
  {
    CFRelease(result);
    result = 0;
    *(v3 + 12) = 0;
  }

  return result;
}

uint64_t APDemoManagerIsDemoSession(uint64_t a1, uint64_t a2)
{
  v12 = 0;
  cf = 0;
  if (_MergedGlobals_6 != -1)
  {
    dispatch_once(&_MergedGlobals_6, &__block_literal_global_59);
  }

  v4 = 0;
  if (a2 && a1 && qword_280FB1A80)
  {
    if (APSGetFBOPropertyInt64() && !APSGetFBOPropertyInt64())
    {
      APSenderSessionGetCMBaseObject();
      v6 = v5;
      v7 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      if (v7)
      {
        v8 = *MEMORY[0x277CBECE8];
        if (!v7(v6, @"TransportControlStream", *MEMORY[0x277CBECE8], &cf))
        {
          if (cf)
          {
            CMBaseObject = FigTransportStreamGetCMBaseObject();
            v10 = *(*(CMBaseObjectGetVTable() + 8) + 48);
            if (v10)
            {
              v10(CMBaseObject, *MEMORY[0x277CE4ED8], v8, &v12);
              if (v12)
              {
                v4 = APSIsDirectLinkInterface();
                goto LABEL_16;
              }
            }
          }
        }
      }

      APSLogErrorAt();
    }

    v4 = 0;
  }

LABEL_16:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v12)
  {
    CFRelease(v12);
  }

  return v4;
}

uint64_t __APDemoManagerStart_block_invoke_cold_2(uint64_t a1)
{
  APSLogErrorAt();
  result = SCError();
  if (result)
  {
    v2 = result;
  }

  else
  {
    v2 = 1001;
  }

  if (gLogCategory_APDemoManager <= 90)
  {
    if (gLogCategory_APDemoManager != -1 || (result = _LogCategory_Initialize(), result))
    {
      SCErrorString(v2);
      return OUTLINED_FUNCTION_4_0(&gLogCategory_APDemoManager, "void demoManagerStartLinkDiscovery(APDemoManager *)", v3, "### Link discovery failed, SC error: %d (%s)\n");
    }
  }

  return result;
}

uint64_t demoManagerActivateEndpointIfNeeded_cold_6(uint64_t a1, uint64_t a2, void *a3)
{
  if (gLogCategory_APDemoManager <= 90)
  {
    if (gLogCategory_APDemoManager != -1 || (result = _LogCategory_Initialize(), result))
    {
      result = OUTLINED_FUNCTION_4_0(&gLogCategory_APDemoManager, "void demoManagerActivateEndpointIfNeeded(APDemoManager *)", a3, "### Select route failed, error: %#m\n");
    }
  }

  *a3 = a2;
  return result;
}

void demoManagerActivateEndpointIfNeeded_cold_11(uint64_t a1)
{
  v2 = *(a1 + 8);
  *(a1 + 8) = 0;
  if (v2)
  {
    CFRelease(v2);
  }
}

void *demoManagerActivateEndpointIfNeeded_cold_12(void *result, uint64_t a2, uint64_t a3)
{
  v3 = result;
  if (gLogCategory_APDemoManager <= 50)
  {
    if (gLogCategory_APDemoManager != -1 || (result = _LogCategory_Initialize(), result))
    {
      result = OUTLINED_FUNCTION_2(&gLogCategory_APDemoManager, "void demoManagerActivateEndpointIfNeeded(APDemoManager *)", a3, "No demo endpoint found\n");
    }
  }

  *v3 = 0;
  return result;
}

uint64_t apEndpointRemoteControlSession_Teardown(const void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APEndpointRemoteControlSession <= 50 && (gLogCategory_APEndpointRemoteControlSession != -1 || _LogCategory_Initialize()))
  {
    OUTLINED_FUNCTION_2(&gLogCategory_APEndpointRemoteControlSession, "OSStatus apEndpointRemoteControlSession_Teardown(FigEndpointRemoteControlSessionRef)", v2, "[%{ptr}] Teardown RCS\n");
  }

  if (!apEndpointRemoteControlSession_isInvalidated(a1))
  {
    CFRetain(a1);
    v4 = *(DerivedStorage + 32);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 0x40000000;
    block[2] = __apEndpointRemoteControlSession_Teardown_block_invoke;
    block[3] = &__block_descriptor_tmp_68;
    block[4] = a1;
    dispatch_async(v4, block);
  }

  return 0;
}

void __apEndpointRemoteControlSession_teardownInternal_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!apEndpointRemoteControlSession_isInvalidated(v2))
  {
    if (gLogCategory_APEndpointRemoteControlSession <= 50 && (gLogCategory_APEndpointRemoteControlSession != -1 || _LogCategory_Initialize()))
    {
      OUTLINED_FUNCTION_2(&gLogCategory_APEndpointRemoteControlSession, "void apEndpointRemoteControlSession_sendTeardownRequest(FigEndpointRemoteControlSessionRef)", v4, "[%{ptr}] Sending RCS teardown request\n");
    }

    Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    if (Mutable)
    {
      v6 = Mutable;
      CFDictionarySetInt64();
      v7 = *(DerivedStorage + 16);
      v8 = *(*(CMBaseObjectGetVTable() + 16) + 48);
      if (v8)
      {
        v8(v7, 130, v6);
      }

      CFRelease(v6);
    }

    else
    {
      APSLogErrorAt();
    }
  }

  dispatch_semaphore_signal(*(a1 + 40));
  CFRelease(*(a1 + 32));
  v9 = *(a1 + 40);

  dispatch_release(v9);
}

uint64_t apEndpointRemoteControlSession_startMessageHandling(int a1, uint64_t a2, uint64_t a3, void *a4)
{
  v27 = 0;
  v25 = 0u;
  v26 = 0u;
  cf = 0;
  if (a1 != 1684628836 && a1 != 1668116068)
  {
    return 0;
  }

  v7 = FigCFWeakReferenceHolderCopyReferencedObject();
  if (!v7)
  {
    return 0;
  }

  v8 = v7;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  if (*(DerivedStorage + 120))
  {
    v14 = 0;
    v11 = 4294949863;
    goto LABEL_29;
  }

  if (a1 != 1684628836)
  {
    CFDataWithBlockBufferNoCopy = FigCreateCFDataWithBlockBufferNoCopy();
    if (CFDataWithBlockBufferNoCopy)
    {
      v11 = CFDataWithBlockBufferNoCopy;
      APSLogErrorAt();
      goto LABEL_28;
    }

    if (*(DerivedStorage + 136))
    {
      v14 = FigCFWeakReferenceHolderCopyReferencedObject();
      if (!v14)
      {
        if (gLogCategory_APEndpointRemoteControlSession <= 60 && (gLogCategory_APEndpointRemoteControlSession != -1 || _LogCategory_Initialize()))
        {
          OUTLINED_FUNCTION_3_11(&gLogCategory_APEndpointRemoteControlSession, "OSStatus apEndpointRemoteControlSession_startMessageHandling(FigTransportStreamRef, OSType, CMBlockBufferRef, void *, CMBlockBufferRef *)", v13, "[%{ptr}] Client context went away.\n");
        }

        goto LABEL_27;
      }
    }

    else
    {
      v14 = 0;
    }

    *&v25 = CFRetain(v8);
    v15 = *(DerivedStorage + 128);
    *(&v25 + 1) = cf;
    *&v26 = v15;
    if (v14)
    {
      v16 = CFRetain(v14);
    }

    else
    {
      v16 = 0;
    }

    *(&v26 + 1) = v16;
    LOBYTE(v27) = a4 == 0;
    APSDispatchAsyncFHelper();
    v11 = 0;
    if (a4)
    {
      *a4 = 0;
    }

    goto LABEL_29;
  }

  if (gLogCategory_APEndpointRemoteControlSession <= 60 && (gLogCategory_APEndpointRemoteControlSession != -1 || _LogCategory_Initialize()))
  {
    OUTLINED_FUNCTION_3_11(&gLogCategory_APEndpointRemoteControlSession, "OSStatus apEndpointRemoteControlSession_startMessageHandling(FigTransportStreamRef, OSType, CMBlockBufferRef, void *, CMBlockBufferRef *)", v10, "### [%{ptr}] APTransportStream [%{ptr}] disconnected. Notifying RCS Failure.");
  }

  CFRetain(v8);
  OUTLINED_FUNCTION_1_17();
  v20 = 0x40000000;
  v21 = __apEndpointRemoteControlSession_startMessageHandling_block_invoke;
  v22 = &__block_descriptor_tmp_95_0;
  v23 = v8;
  dispatch_async(v17, block);
LABEL_27:
  v11 = 0;
LABEL_28:
  v14 = 0;
LABEL_29:
  FigSimpleMutexUnlock();
  if (cf)
  {
    CFRelease(cf);
  }

  CFRelease(v8);
  if (v14)
  {
    CFRelease(v14);
  }

  return v11;
}

uint64_t apEndpointRemoteControlSession_ensureAndCopyTransportStreams_cold_4(_DWORD *a1)
{
  result = APSLogErrorAt();
  *a1 = -17431;
  return result;
}

uint64_t apEndpointRemoteControlSession_ensureAndCopyTransportStreams_cold_10(_DWORD *a1)
{
  result = APSLogErrorAt();
  *a1 = -6728;
  return result;
}

uint64_t apEndpointRemoteControlSession_ensureAndCopyTransportStreams_cold_13(_DWORD *a1)
{
  result = APSLogErrorAt();
  *a1 = -17431;
  return result;
}

uint64_t apEndpointRemoteControlSession_ensureAndCopyTransportStreams_cold_14(_DWORD *a1)
{
  result = APSLogErrorAt();
  *a1 = -17431;
  return result;
}

uint64_t apEndpointRemoteControlSession_handleMessageInternal_cold_3(_DWORD *a1)
{
  result = APSLogErrorAt();
  *a1 = -17430;
  return result;
}

uint64_t apEndpointRemoteControlSession_handleMessageInternal_cold_4(_DWORD *a1)
{
  result = APSLogErrorAt();
  *a1 = -17430;
  return result;
}

uint64_t apEndpointRemoteControlSession_handleMessageInternal_cold_6(_DWORD *a1)
{
  result = APSLogErrorAt();
  *a1 = -17430;
  return result;
}

BOOL APVirtualDisplayTestSinkCreate_cold_3(const void *a1, uint64_t a2, _DWORD *a3)
{
  APSLogErrorAt();
  v5 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v7, v8, v9);
  *a3 = v5;
  CFRelease(a1);
  return v5 == 0;
}

uint64_t vdsink_ShouldDropFrame_cold_1(CMTime *a1)
{
  time = *a1;
  Seconds = CMTimeGetSeconds(&time);
  return LogPrintF(&gLogCategory_APVirtualDisplayTestSink, "Boolean vdsink_ShouldDropFrame(FigVirtualDisplaySinkRef)", 33554472, "%f secs already enqueued, should drop frame\n", Seconds);
}

uint64_t vdsink_fileSubmitFrames_cold_1(unsigned int *a1)
{
  v6 = *a1;
  OUTLINED_FUNCTION_3();
  return LogPrintF(v1, v2, v3, v4, v6);
}

uint64_t vdsink_networkThread_cold_9(uint64_t result, _BYTE *a2, uint64_t a3, void *a4)
{
  if (gLogCategory_APVirtualDisplayTestSink < 91)
  {
    if (gLogCategory_APVirtualDisplayTestSink == -1)
    {
      result = _LogCategory_Initialize();
      if (!result)
      {
        goto LABEL_5;
      }

      LOBYTE(result) = *a2;
    }

    result = LogPrintF(&gLogCategory_APVirtualDisplayTestSink, "OSStatus vdsink_networkProcessSample(FigVirtualDisplaySinkRef, VirtualDisplaySinkPacketHeader *, uint8_t *)", 33554522, "Unknown opcode %d\n", result);
  }

LABEL_5:
  *a4 = a3;
  return result;
}

void audioStream_handleEndpointDescriptionChanged(uint64_t a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v9 = 0;
  if (!*DerivedStorage)
  {
    v4 = DerivedStorage;
    if (!DerivedStorage[114])
    {
      if (audioStream_createSupportedAudioFormatList(a2, &v9))
      {
        APSLogErrorAt();
        v5 = v9;
        if (!v9)
        {
          return;
        }

        goto LABEL_27;
      }

      FigSimpleMutexLock();
      v5 = v9;
      if (!FigCFEqual())
      {
        if (gLogCategory_APEndpointStreamBufferedAudio < 51)
        {
          if (gLogCategory_APEndpointStreamBufferedAudio != -1 || _LogCategory_Initialize())
          {
            APSAudioFormatDescriptionListCopyDebugString();
            if (gLogCategory_APEndpointStreamBufferedAudio <= 50 && (gLogCategory_APEndpointStreamBufferedAudio != -1 || OUTLINED_FUNCTION_4(&gLogCategory_APEndpointStreamBufferedAudio)))
            {
              OUTLINED_FUNCTION_2(&gLogCategory_APEndpointStreamBufferedAudio, "void audioStream_handleEndpointDescriptionChanged(CMNotificationCenterRef, const void *, CFStringRef, const void *, CFTypeRef)", v6, "[%{ptr}] Stream supported audio formats=%@");
            }
          }

          if (gLogCategory_APEndpointStreamBufferedAudio <= 50 && (gLogCategory_APEndpointStreamBufferedAudio != -1 || _LogCategory_Initialize()))
          {
            APSAudioFormatDescriptionListCopyDebugString();
            if (gLogCategory_APEndpointStreamBufferedAudio <= 50 && (gLogCategory_APEndpointStreamBufferedAudio != -1 || OUTLINED_FUNCTION_4(&gLogCategory_APEndpointStreamBufferedAudio)))
            {
              OUTLINED_FUNCTION_2(&gLogCategory_APEndpointStreamBufferedAudio, "void audioStream_handleEndpointDescriptionChanged(CMNotificationCenterRef, const void *, CFStringRef, const void *, CFTypeRef)", v7, "[%{ptr}] Supported audio formats changed. Updated to audio formats=%@");
            }
          }
        }

        v8 = *(v4 + 23);
        *(v4 + 23) = v5;
        if (v5)
        {
          CFRetain(v5);
        }

        if (v8)
        {
          CFRelease(v8);
        }

        CMNotificationCenterGetDefaultLocalCenter();
        FigDispatchAsyncPostNotification();
      }

      FigSimpleMutexUnlock();
      if (v5)
      {
LABEL_27:
        CFRelease(v5);
      }
    }
  }
}

void audioStream_dissociateInternal(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!*DerivedStorage)
  {
    v3 = DerivedStorage;
    audioStream_invalidateTransportMDCStream(a1);
    APSDispatchSyncTask();
    APSDispatchSyncFlush();
    audioStream_invalidateTransportAudioDataStream(a1);
    FigSimpleMutexLock();
    v4 = v3[24];
    if (v4)
    {
      CFRelease(v4);
      v3[24] = 0;
    }

    v5 = v3[25];
    if (v5)
    {
      CFRelease(v5);
      v3[25] = 0;
    }

    v6 = v3[29];
    if (v6)
    {
      CFRelease(v6);
      v3[29] = 0;
    }

    v7 = v3[40];
    if (v7)
    {
      CFRelease(v7);
      v3[40] = 0;
    }

    v8 = v3[37];
    if (v8)
    {
      CFRelease(v8);
      v3[37] = 0;
    }

    v9 = v3[38];
    if (v9)
    {
      CFRelease(v9);
      v3[38] = 0;
    }

    FigSimpleMutexUnlock();
    if (v3[1])
    {
      CMNotificationCenterGetDefaultLocalCenter();
      OUTLINED_FUNCTION_13_4();

      FigDispatchAsyncPostNotification();
    }
  }
}

uint64_t audioStream_suspendInternal(uint64_t a1, const __CFDictionary *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APEndpointStreamBufferedAudio <= 50 && (gLogCategory_APEndpointStreamBufferedAudio != -1 || OUTLINED_FUNCTION_4(&gLogCategory_APEndpointStreamBufferedAudio)))
  {
    OUTLINED_FUNCTION_2(&gLogCategory_APEndpointStreamBufferedAudio, "OSStatus audioStream_suspendInternal(FigEndpointStreamRef, CFDictionaryRef)", v4, "BES [%{ptr}] buffered audio endpoint stream suspending. dissociated=%d, isResumed=%d \n");
  }

  if (*DerivedStorage)
  {
    return 0;
  }

  if (APSGetFBOPropertyInt64())
  {
    v8 = *(DerivedStorage + 408);
    if (v8)
    {
      APCarPlayAnalyticsStopCollections(v8, v6, v7);
      APCarPlayAnalyticsSubmitToCarPlay(*(DerivedStorage + 408));
    }

    CMNotificationCenterGetDefaultLocalCenter();
    OUTLINED_FUNCTION_4_11();
    FigNotificationCenterRemoveWeakListener();
  }

  v9 = CMBaseObjectGetDerivedStorage();
  if (!*v9)
  {
    v10 = v9;
    if (*(v9 + 208))
    {
      if (*(v9 + 400))
      {
        if (APSThreadSafeDictionaryCopyValueIfPresent() && APSThreadSafeDictionaryGetInt64IfPresent())
        {
          APSThreadSafeDictionaryGetInt32IfPresent();
          mach_absolute_time();
          UpTicksToSeconds();
          APSThreadSafeDictionarySetInt32();
          APSThreadSafeDictionaryRemoveValue();
        }

        v11 = *(v10 + 400);
        if (v11)
        {
          CFRelease(v11);
          *(v10 + 400) = 0;
        }
      }
    }
  }

  FigSimpleMutexLock();
  v12 = *(DerivedStorage + 248);
  if (v12)
  {
    v13 = CFRetain(v12);
  }

  else
  {
    v13 = 0;
  }

  v14 = *(DerivedStorage + 330);
  FigSimpleMutexUnlock();
  if (a2)
  {
    Value = CFDictionaryGetValue(a2, @"HoseRegistrar");
    if (v13)
    {
      if (Value && !CFEqual(v13, Value))
      {
        if (gLogCategory_APEndpointStreamBufferedAudio <= 50 && (gLogCategory_APEndpointStreamBufferedAudio != -1 || OUTLINED_FUNCTION_4(&gLogCategory_APEndpointStreamBufferedAudio)))
        {
          OUTLINED_FUNCTION_2(&gLogCategory_APEndpointStreamBufferedAudio, "OSStatus audioStream_suspendInternal(FigEndpointStreamRef, CFDictionaryRef)", v16, "BES [%{ptr}] hose registrar mismatch, suspend cancelled.\n");
        }

        v38 = 0;
        goto LABEL_67;
      }
    }
  }

  if (*(DerivedStorage + 120))
  {
    FigPKDStopAirPlaySenderSession();
    *(DerivedStorage + 120) = 0;
    v17 = *(DerivedStorage + 128);
    if (v17)
    {
      CFRelease(v17);
      *(DerivedStorage + 128) = 0;
    }
  }

  v18 = *(DerivedStorage + 136);
  if (v18)
  {
    CFRelease(v18);
    *(DerivedStorage + 136) = 0;
  }

  v19 = *(DerivedStorage + 144);
  if (v19)
  {
    CFRelease(v19);
    *(DerivedStorage + 144) = 0;
  }

  v20 = *(DerivedStorage + 152);
  if (v20)
  {
    CFRelease(v20);
    *(DerivedStorage + 152) = 0;
  }

  audioStream_invalidateTransportMDCStream(a1);
  audioStream_invalidateTransportAudioDataStream(a1);
  APSEndpointStreamAudioHoseRegistrarProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (v14)
  {
    if (ProtocolVTable)
    {
      v22 = *(ProtocolVTable + 16);
      if (v22)
      {
        if (*(v22 + 48))
        {
LABEL_42:
          v24 = OUTLINED_FUNCTION_21_1();
          v25(v24);
        }
      }
    }
  }

  else if (ProtocolVTable)
  {
    v23 = *(ProtocolVTable + 16);
    if (v23)
    {
      if (*(v23 + 32))
      {
        goto LABEL_42;
      }
    }
  }

  if (*(DerivedStorage + 331))
  {
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 1, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    if (!Mutable)
    {
      APSLogErrorAt();
      v38 = 4294950535;
      if (!v13)
      {
        return v38;
      }

      goto LABEL_67;
    }

    v27 = Mutable;
    CFDictionarySetInt64();
    v28 = *(DerivedStorage + 88);
    v29 = *(*(CMBaseObjectGetVTable() + 16) + 48);
    if (v29)
    {
      v29(v28, 103, v27);
    }
  }

  else
  {
    v27 = 0;
  }

  FigSimpleMutexLock();
  *(DerivedStorage + 176) = 0;
  *(DerivedStorage + 331) = 0;
  v30 = *(DerivedStorage + 192);
  if (v30)
  {
    CFRelease(v30);
    *(DerivedStorage + 192) = 0;
  }

  v31 = *(DerivedStorage + 200);
  if (v31)
  {
    CFRelease(v31);
    *(DerivedStorage + 200) = 0;
  }

  *(DerivedStorage + 208) = 0;
  *(DerivedStorage + 224) = 0;
  v32 = *(DerivedStorage + 232);
  if (v32)
  {
    CFRelease(v32);
    *(DerivedStorage + 232) = 0;
  }

  v33 = *(DerivedStorage + 248);
  if (v33)
  {
    CFRelease(v33);
    *(DerivedStorage + 248) = 0;
  }

  v34 = *(DerivedStorage + 272);
  if (v34)
  {
    CFRelease(v34);
    *(DerivedStorage + 272) = 0;
  }

  v35 = *(DerivedStorage + 288);
  if (v35)
  {
    CFRelease(v35);
    *(DerivedStorage + 288) = 0;
  }

  v36 = *(DerivedStorage + 296);
  if (v36)
  {
    CFRelease(v36);
    *(DerivedStorage + 296) = 0;
  }

  v37 = *(DerivedStorage + 304);
  if (v37)
  {
    CFRelease(v37);
    *(DerivedStorage + 304) = 0;
  }

  *(DerivedStorage + 344) = 0;
  audioStream_updateIsPlayingAndPostNotification(a1, 0);
  FigSimpleMutexUnlock();
  APSEventRecorderRecordEvent();
  CMNotificationCenterGetDefaultLocalCenter();
  OUTLINED_FUNCTION_13_4();
  FigDispatchAsyncPostNotification();
  if (v27)
  {
    CFRelease(v27);
  }

  v38 = 0;
  if (v13)
  {
LABEL_67:
    CFRelease(v13);
  }

  return v38;
}

double audioStream_setIsCritical(uint64_t a1, int a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  if (*(DerivedStorage + 328) != a2 && *(DerivedStorage + 192))
  {
    if (gLogCategory_APEndpointStreamBufferedAudio >= 51)
    {
      OUTLINED_FUNCTION_22_1();
    }

    else
    {
      if (gLogCategory_APEndpointStreamBufferedAudio != -1 || OUTLINED_FUNCTION_4(&gLogCategory_APEndpointStreamBufferedAudio))
      {
        OUTLINED_FUNCTION_2(&gLogCategory_APEndpointStreamBufferedAudio, "OSStatus audioStream_setIsCritical(FigEndpointStreamRef, Boolean)", v4, "BES stream [%{ptr}], critical %s");
      }

      OUTLINED_FUNCTION_22_1();
      if (!v5)
      {
        goto LABEL_10;
      }
    }

    CFRetain(v5);
LABEL_10:
    APSDispatchAsyncFHelper();
  }

  FigSimpleMutexUnlock();
  return result;
}

void audioStream_setAudioModeInternal(uint64_t *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v3 = *(DerivedStorage + 104);
  v4 = a1[1];
  *(DerivedStorage + 104) = v4;
  if (v4)
  {
    CFRetain(v4);
  }

  if (v3)
  {
    CFRelease(v3);
  }

  AudioModeForEndpointStream = APSenderSessionUtilityGetAudioModeForEndpointStream(*(DerivedStorage + 104));
  if (*(DerivedStorage + 208))
  {
    v6 = AudioModeForEndpointStream;
    RequestDictionary = audioStream_createRequestDictionary(*a1);
    if (RequestDictionary)
    {
      v8 = RequestDictionary;
      CFDictionarySetValue(RequestDictionary, @"audioMode", v6);
      if (*(DerivedStorage + 113))
      {
        v9 = *(DerivedStorage + 200);
        if (v9)
        {
          v10 = CFRetain(v9);
          if (v10)
          {
            v11 = v10;
            if (APTransportStreamSendPlistMessageCreatingPlistReply())
            {
              APSLogErrorAt();
            }

            CFRelease(v11);
            goto LABEL_16;
          }
        }
      }

      else
      {
        v12 = *(DerivedStorage + 88);
        v13 = *(*(CMBaseObjectGetVTable() + 16) + 88);
        if (v13 && !v13(v12, v8))
        {
          goto LABEL_16;
        }
      }

      APSLogErrorAt();
LABEL_16:
      CFRelease(v8);
      goto LABEL_17;
    }

    APSLogErrorAt();
  }

LABEL_17:
  audioStream_releaseAsync(*a1);
  v14 = a1[1];
  if (v14)
  {

    CFRelease(v14);
  }
}

uint64_t audioStream_Dissociate(uint64_t a1)
{
  if (!*CMBaseObjectGetDerivedStorage())
  {
    audioStream_dissociateInternal(a1);
  }

  return 0;
}

void audioStream_suspendAsync(uint64_t *a1)
{
  CMBaseObjectGetDerivedStorage();
  audioStream_suspendInternal(*a1, a1[1]);
  if (a1[2])
  {
    CFRetain(*a1);
    OUTLINED_FUNCTION_3_12();
    APSDispatchAsyncFHelper();
  }

  audioStream_releaseAsync(*a1);
  v2 = a1[1];
  if (v2)
  {
    CFRelease(v2);
  }
}

void audioStream_resumeAsync_0(uint64_t *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v5 = a1[1];
  v363 = *a1;
  v6 = CMBaseObjectGetDerivedStorage();
  v372 = 0;
  v373 = 0;
  v370 = 0;
  v371 = 0;
  v368 = 0;
  v369 = 0;
  if (gLogCategory_APEndpointStreamBufferedAudio <= 50 && (gLogCategory_APEndpointStreamBufferedAudio != -1 || OUTLINED_FUNCTION_4(&gLogCategory_APEndpointStreamBufferedAudio)))
  {
    v239 = *v6;
    v244 = v6[208];
    OUTLINED_FUNCTION_11_3();
    OUTLINED_FUNCTION_2(&gLogCategory_APEndpointStreamBufferedAudio, "OSStatus audioStream_resumeInternal(FigEndpointStreamRef, CFDictionaryRef)", v7, "BES [%{ptr}] buffered audio endpoint stream resuming. dissociated=%d, isResumed=%d \n");
  }

  if (*v6 || v6[208])
  {
    OUTLINED_FUNCTION_2_12();
    v24 = 0;
    v12 = 0;
    v5 = 0;
    v11 = 0;
    v25 = 0;
    goto LABEL_380;
  }

  v359 = a1;
  v8 = DerivedStorage;
  if (v5)
  {
    v9 = CFDictionaryGetValue(v5, @"HoseRegistrar");
    theData = CFDictionaryGetValue(v5, @"EncryptionKey");
    v10 = CFDictionaryGetValue(v5, @"InitialTransportAudioFormatDescription");
    v11 = CFDictionaryGetInt64() == 0;
    v12 = CFDictionaryGetInt64() == 0;
    if (v6[115])
    {
      v344 = CFDictionaryGetValue(v5, @"AudioSessionID");
      v339 = CFDictionaryGetValue(v5, @"AudioSessionCategory");
      v334 = CFDictionaryGetValue(v5, @"AudioSessionMode");
      if (gLogCategory_APEndpointStreamBufferedAudio <= 50 && (gLogCategory_APEndpointStreamBufferedAudio != -1 || OUTLINED_FUNCTION_4(&gLogCategory_APEndpointStreamBufferedAudio)))
      {
        v244 = v339;
        v249 = v334;
        v234 = v363;
        v239 = v344;
        OUTLINED_FUNCTION_2(&gLogCategory_APEndpointStreamBufferedAudio, "OSStatus audioStream_resumeInternal(FigEndpointStreamRef, CFDictionaryRef)", v13, "BES [%{ptr}] SidePlay audioSessionID=%@ category=%@ mode=%@\n");
      }
    }

    else
    {
      v339 = 0;
      v344 = 0;
      v334 = 0;
    }

    v14 = CMBaseObjectGetDerivedStorage();
    cf[0] = 0;
    *v378 = 0;
    v376 = 0;
    *buf = 0;
    v374 = 0;
    v375 = 0;
    if (!*v14)
    {
      v2 = v14;
      if (!v14[208])
      {
        v15 = FigCFDictionaryGetValue();
        if (v15)
        {
          v16 = v15;
          if (APSThreadSafeDictionaryCopyValueIfPresent())
          {
            v5 = @"AudioStreamLastStartTime";
            mach_absolute_time();
            APSThreadSafeDictionarySetInt64();
            v1 = *(v2 + 400);
            *(v2 + 400) = v16;
            CFRetain(v16);
            if (v1)
            {
              CFRelease(v1);
            }
          }

          else
          {
            APSThreadSafeDictionaryCreate();
            APSLogErrorAt();
          }
        }
      }
    }

    if (cf[0])
    {
      CFRelease(cf[0]);
    }

    if (*v378)
    {
      CFRelease(*v378);
    }

    if (*buf)
    {
      CFRelease(*buf);
    }

    if (v376)
    {
      CFRelease(v376);
    }

    if (v375)
    {
      CFRelease(v375);
    }

    if (v374)
    {
      CFRelease(v374);
    }
  }

  else
  {
    v339 = 0;
    v344 = 0;
    v334 = 0;
    v10 = 0;
    v9 = 0;
    theData = 0;
    v11 = 1;
    v12 = 1;
  }

  v17 = APSGetFBOPropertyInt64();
  v354 = v17;
  if (v12)
  {
    if (v11)
    {
      v2 = 0;
      v18 = 1651861089;
      goto LABEL_42;
    }

    if (v6[96])
    {
      v18 = 1634754914;
      v2 = 1;
LABEL_42:
      FigSimpleMutexLock();
      v19 = *(v6 + 23);
      if (v19)
      {
        v11 = CFRetain(v19);
      }

      else
      {
        v11 = 0;
      }

      v20 = *(v6 + 40);
      if (v20)
      {
        v5 = CFRetain(v20);
      }

      else
      {
        v5 = 0;
      }

      FigSimpleMutexUnlock();
      if (!APSAudioFormatDescriptionListContainsFormat())
      {
        goto LABEL_156;
      }

      APSenderSessionGetCMBaseObject();
      v1 = v21;
      v22 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      if (v22)
      {
        HIDWORD(v319) = v18;
        allocator = *MEMORY[0x277CBECE8];
        v23 = v22(v1, @"KeyHolder");
        if (!v23)
        {
          v349 = v10;
          if (v6[114] != 0 || v12)
          {
            Int64 = 0;
            goto LABEL_63;
          }

          if (v373)
          {
            v26 = RandomBytes();
            if (!v26)
            {
              v27 = v2;
              Int64 = CFNumberCreateInt64();
              if (!Int64)
              {
                APSLogErrorAt();
                OUTLINED_FUNCTION_2_12();
                v12 = 0;
                v25 = 0;
                v24 = -16761;
                goto LABEL_379;
              }

              v2 = v372;
              v1 = v373;
              v28 = *(*(CMBaseObjectGetVTable() + 16) + 56);
              if (v28)
              {
                v29 = v28(v373, v372, 32, &v371, 32, &v370);
                if (!v29)
                {
                  v2 = v27;
LABEL_63:
                  if (!v6[113] || (v30 = RandomBytes()) == 0)
                  {
                    v304 = v8;
                    IsFeatureEnabled = APSGetFBOPropertyInt64();
                    HIDWORD(v284) = v2;
                    LODWORD(v289) = v12;
                    v274 = IsFeatureEnabled;
                    if (v12)
                    {
                      LODWORD(v269) = 1601463152;
                      IsFeatureEnabled = APSSettingsIsFeatureEnabled();
                      v39 = v18;
                      if (IsFeatureEnabled)
                      {
                        v40 = *(v6 + 10);
                        VTable = CMBaseObjectGetVTable();
                        v42 = *(VTable + 16);
                        IsFeatureEnabled = VTable + 16;
                        v43 = *(v42 + 16);
                        if (v43)
                        {
                          IsFeatureEnabled = v43(v40, 84);
                          if (IsFeatureEnabled)
                          {
                            LODWORD(v269) = 1903520099;
                          }
                        }
                      }
                    }

                    else
                    {
                      LODWORD(v269) = 1601528944;
                      v39 = v18;
                    }

                    v279 = *(v6 + 11);
                    HIDWORD(v289) = v6[112];
                    v44 = *(v6 + 13);
                    LODWORD(v284) = v6[114];
                    HIDWORD(v269) = v6[113];
                    v45 = *(v6 + 16);
                    *v378 = 0;
                    cf[0] = 0;
                    OUTLINED_FUNCTION_16_3(IsFeatureEnabled, v32, v33, v34, v35, v36, v37, v38, v234, v239, v244, v249, v254, cf1, v264, v269, v274, v279, v284, v289, v5, v298, v304, Int64, allocator, v319, theData, v329, v334, v339, v344, v349, v354, v359, v363);
                    OUTLINED_FUNCTION_6_7(722863460);
                    v46 = LogCategoryCopyOSLogHandle();
                    if (v46)
                    {
                      v47 = v46;
                    }

                    else
                    {
                      v47 = MEMORY[0x277D86220];
                    }

                    v48 = CUObfuscatedPtr();
                    if (v48)
                    {
                      v49 = v48;
                      if (os_signpost_enabled(v47))
                      {
                        *buf = 0;
                        _os_signpost_emit_with_name_impl(&dword_221FFA000, v47, OS_SIGNPOST_INTERVAL_BEGIN, v49, "AIRPLAY_SIGNPOST_BUFFERED_EPS_SETUP_AUDIOSTREAM_INTERVAL", &unk_2222A918B, buf, 2u);
                      }
                    }

                    v299 = v11;
                    if (v39 == 1651861089)
                    {
                      v255 = v369;
                      v265 = v45;
                      v50 = kAPEndpointStreamConnectionType_RTP;
                    }

                    else
                    {
                      v255 = v369;
                      v265 = v45;
                      if (v39 == 1634754932)
                      {
                        v50 = kAPEndpointStreamConnectionType_APAT;
                      }

                      else
                      {
                        v50 = kAPEndpointStreamConnectionType_APAP;
                      }
                    }

                    cf1a = *v50;
                    AudioModeForEndpointStream = APSenderSessionUtilityGetAudioModeForEndpointStream(v44);
                    APSAudioFormatDescriptionGetCompressionType();
                    LegacyFormatMask = APSAudioFormatDescriptionGetLegacyFormatMask();
                    AudioFormatIndex = APSAudioFormatDescriptionGetAudioFormatIndex();
                    v55 = OUTLINED_FUNCTION_17_1(AudioFormatIndex, v54, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
                    v56 = v55;
                    if (!v55)
                    {
                      APSLogErrorAt();
                      *v378 = -6728;
                      goto LABEL_134;
                    }

                    v57 = *MEMORY[0x277CBED28];
                    CFDictionarySetValue(v55, @"supportsDynamicStreamID", *MEMORY[0x277CBED28]);
                    CFDictionarySetInt64();
                    APSAudioFormatDescriptionGetFramesPerPacket();
                    CFDictionarySetInt64();
                    CFDictionarySetInt64();
                    CFDictionarySetInt64();
                    if (v355)
                    {
                      CFDictionarySetValue(v56, @"audioType", @"media");
                      if (CFEqual(cf1a, @"streamConnectionTypeAPAP"))
                      {
                        v58 = v57;
                      }

                      else
                      {
                        v58 = *MEMORY[0x277CBED10];
                      }

                      CFDictionarySetValue(v56, @"packetFormatAPAP", v58);
                    }

                    CFDictionarySetValue(v56, @"audioMode", AudioModeForEndpointStream);
                    FigCFDictionarySetValue();
                    FigCFDictionarySetValue();
                    v59 = FigCFDictionarySetValue();
                    if (theDataa)
                    {
                      CFDataGetBytePtr(theDataa);
                      CFDataGetLength(theDataa);
                      v59 = CFDictionarySetData();
                    }

                    if (v275)
                    {
                      AudioModeForEndpointStream = OUTLINED_FUNCTION_17_1(v59, v60, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
                      if (!AudioModeForEndpointStream)
                      {
                        APSLogErrorAt();
                        LegacyFormatMask = 0;
                        goto LABEL_180;
                      }

                      CFDictionarySetInt64();
                      CFDictionarySetValue(v56, @"soundCheckMediaKind", AudioModeForEndpointStream);
                    }

                    else
                    {
                      AudioModeForEndpointStream = 0;
                    }

                    if (!HIDWORD(v290))
                    {
                      LegacyFormatMask = 0;
                      goto LABEL_117;
                    }

                    v61 = OUTLINED_FUNCTION_17_1(v59, v60, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
                    LegacyFormatMask = v61;
                    if (v61)
                    {
                      if (v285)
                      {
LABEL_112:
                        if (!HIDWORD(v270))
                        {
LABEL_116:
                          CFDictionarySetValue(v56, @"streamConnections", LegacyFormatMask);
LABEL_117:
                          if (value)
                          {
                            CFDictionarySetValue(v56, @"clientID", value);
                          }

                          if (v265)
                          {
                            CFDictionarySetValue(v56, @"pkdDeviceContext", v265);
                          }

                          v68 = 0;
                          v70 = 0;
                          if (LegacyFormatMask)
                          {
                            goto LABEL_122;
                          }

                          goto LABEL_123;
                        }

                        v68 = OUTLINED_FUNCTION_17_1(v61, v62, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
                        if (v68)
                        {
                          v69 = CFDictionarySetInt64();
                          if (!v69)
                          {
                            CFDictionarySetValue(LegacyFormatMask, @"streamConnectionTypeMediaDataControl", v68);
                            CFRelease(v68);
                            goto LABEL_116;
                          }

                          v70 = v69;
                          APSLogErrorAt();
LABEL_182:
                          CFRelease(v56);
                          v56 = 0;
                          if (LegacyFormatMask)
                          {
LABEL_122:
                            CFRelease(LegacyFormatMask);
                          }

LABEL_123:
                          if (v68)
                          {
                            CFRelease(v68);
                          }

                          if (AudioModeForEndpointStream)
                          {
                            CFRelease(AudioModeForEndpointStream);
                          }

                          *v378 = v70;
                          if (!v70)
                          {
                            mach_absolute_time();
                            v71 = *(*(CMBaseObjectGetVTable() + 16) + 40);
                            if (v71)
                            {
                              *v378 = v71(v280, 103, v56, cf, 0, 0);
                              if (!*v378)
                              {
                                mach_absolute_time();
                                if (gLogCategory_APEndpointStreamBufferedAudio <= 50 && (gLogCategory_APEndpointStreamBufferedAudio != -1 || OUTLINED_FUNCTION_4(&gLogCategory_APEndpointStreamBufferedAudio)))
                                {
                                  v240 = v280;
                                  v245 = UpTicksToMilliseconds();
                                  OUTLINED_FUNCTION_11_3();
                                  OUTLINED_FUNCTION_2(&gLogCategory_APEndpointStreamBufferedAudio, "OSStatus audioStream_setupAudioStream(FigEndpointStreamRef, APSenderSessionRef, Boolean, APSAudioFormatDescriptionRef, CFDataRef, CFStringRef, Boolean, CFNumberRef, Boolean, uint64_t, CFStringRef, CFNumberRef, CFStringRef, CFStringRef, Boolean, APTransportStreamType, CFDataRef, Boolean, APTransportConnectionTransportProtocol, uint64_t *, uint64_t *, Boolean *, int *, int32_t *, int *, CFDataRef *)", v72, "[%{ptr}] BES Session [%{ptr}] created stream (time to complete = %lu ms)");
                                }

                                AudioModeForEndpointStream = CFDictionaryGetInt64();
                                LegacyFormatMask = CFDictionaryGetInt64();
                                if (HIDWORD(v290))
                                {
                                  CFDictionaryGetTypeID();
                                  CFDictionaryGetTypedValue();
                                  v73 = *v378;
                                  if (*v378)
                                  {
                                    goto LABEL_188;
                                  }

                                  if (!v285)
                                  {
                                    CFDictionaryGetTypeID();
                                    CFDictionaryGetTypedValue();
                                    if (*v378)
                                    {
                                      goto LABEL_188;
                                    }

                                    CFDictionaryGetInt64();
                                    v73 = *v378;
                                    if (*v378)
                                    {
                                      goto LABEL_188;
                                    }
                                  }

                                  if (HIDWORD(v270))
                                  {
                                    CFDictionaryGetTypeID();
                                    CFDictionaryGetTypedValue();
                                    if (!*v378)
                                    {
                                      v340 = CFDictionaryGetInt64();
                                      v73 = *v378;
                                      if (*v378)
                                      {
                                        goto LABEL_187;
                                      }

LABEL_149:
                                      if (v285)
                                      {
                                        *(v6 + 16) = 5000000;
                                      }

                                      else
                                      {
                                        *(v6 + 16) = CFDictionaryGetInt64();
                                        v73 = *v378;
                                        if (*v378)
                                        {
LABEL_187:
                                          v73 = APSLogErrorAt();
                                          goto LABEL_189;
                                        }
                                      }

                                      if (v265)
                                      {
                                        v82 = CFDictionaryGetValue(cf[0], @"pkdDeviceContext");
                                        if (v82)
                                        {
                                          v73 = CFRetain(v82);
                                          v345 = v73;
                                        }

                                        else
                                        {
                                          v73 = APSLogErrorAt();
                                          v345 = 0;
                                          *v378 = -16765;
                                        }

                                        goto LABEL_190;
                                      }

LABEL_189:
                                      v345 = 0;
LABEL_190:
                                      v81 = 1;
LABEL_191:
                                      OUTLINED_FUNCTION_16_3(v73, v74, v75, v76, v77, v78, v79, v80, v235, v240, v245, v250, v255, cf1a, v265, v270, v275, v280, v285, v290, value, v299, v305, v310, allocatora, v320, theDataa, v9, v335, v340, v345, v350, v355, v360, v364);
                                      OUTLINED_FUNCTION_7_5();
                                      OUTLINED_FUNCTION_6_7((v85 + 20));
                                      v86 = LogCategoryCopyOSLogHandle();
                                      v2 = v86;
                                      if (v86)
                                      {
                                        v1 = v86;
                                      }

                                      else
                                      {
                                        v1 = MEMORY[0x277D86220];
                                      }

                                      v87 = CUObfuscatedPtr();
                                      if (v87)
                                      {
                                        v88 = v87;
                                        if (os_signpost_enabled(v1))
                                        {
                                          *buf = 0;
                                          _os_signpost_emit_with_name_impl(&dword_221FFA000, v1, OS_SIGNPOST_INTERVAL_END, v88, "AIRPLAY_SIGNPOST_BUFFERED_EPS_SETUP_AUDIOSTREAM_INTERVAL", &unk_2222A918B, buf, 2u);
                                        }
                                      }

                                      if (v2)
                                      {
                                        os_release(v2);
                                      }

                                      if (v56)
                                      {
                                        CFRelease(v56);
                                      }

                                      if (cf[0])
                                      {
                                        CFRelease(cf[0]);
                                      }

                                      v24 = *v378;
                                      FigSimpleMutexLock();
                                      *(v6 + 22) = AudioModeForEndpointStream;
                                      v6[331] = v81;
                                      FigSimpleMutexUnlock();
                                      if (v24)
                                      {
                                        APSLogErrorAt();
                                        OUTLINED_FUNCTION_2_12();
                                        v5 = valuea;
                                        v11 = v300;
                                        goto LABEL_378;
                                      }

                                      v11 = v300;
                                      if (!v356)
                                      {
LABEL_228:
                                        if (gLogCategory_APEndpointStreamBufferedAudio <= 50 && (gLogCategory_APEndpointStreamBufferedAudio != -1 || OUTLINED_FUNCTION_4(&gLogCategory_APEndpointStreamBufferedAudio)))
                                        {
                                          v241 = AudioModeForEndpointStream;
                                          v246 = *(v6 + 16);
                                          OUTLINED_FUNCTION_11_3();
                                          OUTLINED_FUNCTION_2(&gLogCategory_APEndpointStreamBufferedAudio, "OSStatus audioStream_resumeInternal(FigEndpointStreamRef, CFDictionaryRef)", v108, "BES [%{ptr}] Created remote audio stream. streamID=%llu audioBufferSize is %d\n");
                                        }

                                        v109 = v330;
                                        if (v6[114])
                                        {
                                          v1 = 0;
                                          goto LABEL_289;
                                        }

                                        v110 = *(v6 + 11);
                                        cf[0] = 0;
                                        v111 = APTransportStreamIDMakeWithPort();
                                        v119 = v111;
                                        if (gLogCategory_APEndpointStreamBufferedAudio <= 30)
                                        {
                                          if (gLogCategory_APEndpointStreamBufferedAudio != -1 || (OUTLINED_FUNCTION_8(), v111 = _LogCategory_Initialize(), v111))
                                          {
                                            OUTLINED_FUNCTION_8();
                                            v236 = "OSStatus audioStream_createAndResumeTransportBufferedAudioDataStream(FigEndpointStreamRef, APSenderSessionRef, int, APTransportStreamType, APTransportConnectionTransportProtocol, FigTransportStreamRef *)";
                                            v111 = LogPrintF(&gLogCategory_APEndpointStreamBufferedAudio, "OSStatus audioStream_createAndResumeTransportBufferedAudioDataStream(FigEndpointStreamRef, APSenderSessionRef, int, APTransportStreamType, APTransportConnectionTransportProtocol, FigTransportStreamRef *)", (v120 - 20), "%###s.\n");
                                          }
                                        }

                                        OUTLINED_FUNCTION_16_3(v111, v112, v113, v114, v115, v116, v117, v118, v236, v241, v246, v251, v256, cf1b, v266, v271, v276, v281, v286, v291, valuea, v300, v306, v311, allocatorb, v321, theDatab, v330, v336, v341, v346, v351, v356, v359, v363);
                                        OUTLINED_FUNCTION_6_7(722863444);
                                        v121 = LogCategoryCopyOSLogHandle();
                                        if (v121)
                                        {
                                          v122 = v121;
                                        }

                                        else
                                        {
                                          v122 = MEMORY[0x277D86220];
                                        }

                                        v123 = CUObfuscatedPtr();
                                        if (v123)
                                        {
                                          v124 = v123;
                                          if (os_signpost_enabled(v122))
                                          {
                                            *v378 = 0;
                                            _os_signpost_emit_with_name_impl(&dword_221FFA000, v122, OS_SIGNPOST_INTERVAL_BEGIN, v124, "AIRPLAY_SIGNPOST_BUFFERED_EPS_TRANSPORT_AUDIO_INTERVAL", &unk_2222A918B, v378, 2u);
                                          }
                                        }

                                        Mutable = CFDictionaryCreateMutable(allocatorc, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
                                        if (!Mutable)
                                        {
                                          v141 = APSLogErrorAt();
                                          v1 = 0;
                                          v128 = 0;
                                          v24 = -71820;
                                          goto LABEL_266;
                                        }

                                        CFDictionarySetInt64();
                                        CFDictionarySetInt64();
                                        CFDictionarySetValue(Mutable, @"AllowMessageAggregation", *MEMORY[0x277CBED28]);
                                        CFDictionarySetInt64();
                                        FigCFDictionarySetUInt32();
                                        v126 = *(*(CMBaseObjectGetVTable() + 16) + 64);
                                        if (v126)
                                        {
                                          v127 = v126(v110, v119, Mutable, cf);
                                          if (!v127)
                                          {
                                            v128 = CFNumberCreateInt64();
                                            if (!v128)
                                            {
                                              v141 = APSLogErrorAt();
                                              v1 = 0;
                                              v24 = -6728;
                                              goto LABEL_266;
                                            }

                                            FigTransportStreamGetCMBaseObject();
                                            if (*(*(CMBaseObjectGetVTable() + 8) + 56))
                                            {
                                              v129 = OUTLINED_FUNCTION_12_5();
                                              v131 = v130(v129);
                                              if (v131)
                                              {
                                                v24 = v131;
                                                goto LABEL_265;
                                              }

                                              v132 = cf[0];
                                              v133 = *(*(CMBaseObjectGetVTable() + 16) + 24);
                                              if (!v133)
                                              {
                                                v24 = -12782;
                                                goto LABEL_265;
                                              }

                                              v134 = v133(v132, audioStream_receivedAudioDataMessage, 0, v365);
                                              if (v134)
                                              {
                                                v24 = v134;
                                                goto LABEL_265;
                                              }

                                              v135 = cf[0];
                                              v136 = *(*(CMBaseObjectGetVTable() + 16) + 8);
                                              if (!v136)
                                              {
                                                v24 = -12782;
                                                goto LABEL_265;
                                              }

                                              v137 = v136(v135);
                                              if (v137)
                                              {
                                                v24 = v137;
                                                goto LABEL_265;
                                              }

                                              v138 = cf[0];
                                              v139 = *(*(CMBaseObjectGetVTable() + 16) + 16);
                                              if (!v139)
                                              {
                                                v24 = -12782;
                                                goto LABEL_265;
                                              }

                                              v140 = v139(v138);
                                              if (v140)
                                              {
                                                v24 = v140;
                                                goto LABEL_265;
                                              }

                                              if (APSSettingsIsFeatureEnabled())
                                              {
                                                v141 = FigTransportStreamSetReadyToSendBatchCallback(cf[0], audioStream_audioDataBatchCallback, v365);
                                                if (v141)
                                                {
                                                  v24 = v141;
LABEL_265:
                                                  v141 = APSLogErrorAt();
                                                  v1 = 0;
                                                  goto LABEL_266;
                                                }
                                              }

                                              else
                                              {
                                                v141 = FigTransportStreamSetReadyToSendCallback(cf[0], audioStream_audioDataCallback, v365);
                                                if (v141)
                                                {
                                                  v24 = v141;
                                                  goto LABEL_265;
                                                }
                                              }

                                              v24 = 0;
                                              v1 = cf[0];
                                              cf[0] = 0;
                                              goto LABEL_266;
                                            }

                                            v24 = -12782;
                                            goto LABEL_265;
                                          }

                                          v24 = v127;
                                        }

                                        else
                                        {
                                          v24 = -12782;
                                        }

                                        v141 = APSLogErrorAt();
                                        v1 = 0;
                                        v128 = 0;
LABEL_266:
                                        OUTLINED_FUNCTION_16_3(v141, v142, v143, v144, v145, v146, v147, v148, v237, v242, v247, v252, v257, cf1c, v267, v272, v277, v282, v287, v292, valueb, v301, v307, v312, allocatorc, v322, theDatac, v331, v337, v342, v347, v352, v357, v361, v365);
                                        OUTLINED_FUNCTION_7_5();
                                        OUTLINED_FUNCTION_6_7((v149 + 4));
                                        v150 = LogCategoryCopyOSLogHandle();
                                        v151 = v150;
                                        if (v150)
                                        {
                                          v152 = v150;
                                        }

                                        else
                                        {
                                          v152 = MEMORY[0x277D86220];
                                        }

                                        v153 = CUObfuscatedPtr();
                                        if (v153)
                                        {
                                          v154 = v153;
                                          if (os_signpost_enabled(v152))
                                          {
                                            *v378 = 0;
                                            _os_signpost_emit_with_name_impl(&dword_221FFA000, v152, OS_SIGNPOST_INTERVAL_END, v154, "AIRPLAY_SIGNPOST_BUFFERED_EPS_TRANSPORT_AUDIO_INTERVAL", &unk_2222A918B, v378, 2u);
                                          }
                                        }

                                        if (v151)
                                        {
                                          os_release(v151);
                                        }

                                        v11 = v300;
                                        if (v128)
                                        {
                                          CFRelease(v128);
                                        }

                                        v109 = v330;
                                        if (Mutable)
                                        {
                                          CFRelease(Mutable);
                                        }

                                        if (cf[0])
                                        {
                                          CMBaseObject = FigTransportStreamGetCMBaseObject();
                                          if (CMBaseObject)
                                          {
                                            v156 = CMBaseObject;
                                            v157 = *(*(CMBaseObjectGetVTable() + 8) + 24);
                                            if (v157)
                                            {
                                              v157(v156);
                                            }
                                          }

                                          CFRelease(cf[0]);
                                        }

                                        if (v24)
                                        {
                                          APSLogErrorAt();
                                          v2 = 0;
                                          goto LABEL_420;
                                        }

                                        if (gLogCategory_APEndpointStreamBufferedAudio <= 50 && (gLogCategory_APEndpointStreamBufferedAudio != -1 || OUTLINED_FUNCTION_4(&gLogCategory_APEndpointStreamBufferedAudio)))
                                        {
                                          OUTLINED_FUNCTION_18_3();
                                          OUTLINED_FUNCTION_2(&gLogCategory_APEndpointStreamBufferedAudio, "OSStatus audioStream_resumeInternal(FigEndpointStreamRef, CFDictionaryRef)", v158, "BES [%{ptr}] Created transport audio data stream [%{ptr}]\n");
                                        }

LABEL_289:
                                        if (!v6[113])
                                        {
                                          v2 = 0;
                                          goto LABEL_342;
                                        }

                                        v159 = *(v6 + 11);
                                        v160 = v373;
                                        v161 = v369;
                                        cf[0] = 0;
                                        v162 = APTransportStreamIDMakeWithPort();
                                        OUTLINED_FUNCTION_16_3(v162, v163, v164, v165, v166, v167, v168, v169, v236, v241, v246, v251, v256, cf1b, v266, v271, v276, v281, v286, v291, valuea, v300, v306, v311, allocatorb, v321, theDatab, v330, v336, v341, v346, v351, v356, v359, v363);
                                        OUTLINED_FUNCTION_7_5();
                                        OUTLINED_FUNCTION_6_7((v170 + 8));
                                        v171 = LogCategoryCopyOSLogHandle();
                                        if (v171)
                                        {
                                          v172 = v171;
                                        }

                                        else
                                        {
                                          v172 = MEMORY[0x277D86220];
                                        }

                                        v173 = CUObfuscatedPtr();
                                        if (v173)
                                        {
                                          v175 = v173;
                                          v173 = os_signpost_enabled(v172);
                                          if (v173)
                                          {
                                            *v378 = 0;
                                            _os_signpost_emit_with_name_impl(&dword_221FFA000, v172, OS_SIGNPOST_INTERVAL_BEGIN, v175, "AIRPLAY_SIGNPOST_BUFFERED_EPS_TRANSPORT_CONTROL_INTERVAL", &unk_2222A918B, v378, 2u);
                                          }
                                        }

                                        if (!v160)
                                        {
                                          APSLogErrorAt();
                                          v193 = APSSignalErrorAt();
                                          v24 = v193;
                                          v2 = 0;
                                          v180 = 0;
                                          v176 = 0;
                                          goto LABEL_320;
                                        }

                                        v176 = OUTLINED_FUNCTION_17_1(v173, v174, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
                                        if (v176)
                                        {
                                          CFDictionarySetInt64();
                                          CFDictionarySetInt64();
                                          CFDictionarySetInt64();
                                          v177 = *(*(CMBaseObjectGetVTable() + 16) + 64);
                                          if (v177)
                                          {
                                            v178 = v177(v159, v162, v176, cf);
                                            if (v178)
                                            {
                                              v24 = v178;
                                            }

                                            else
                                            {
                                              v179 = APSSetFBOPropertyInt64();
                                              if (!v179)
                                              {
                                                v180 = APKeyHolderCoreUtilsEncryptionContextDataStreamCreateWithSeed(allocatord, v161);
                                                if (v180)
                                                {
                                                  v181 = cf[0];
                                                  v182 = *(*(CMBaseObjectGetVTable() + 16) + 80);
                                                  if (v182)
                                                  {
                                                    v183 = v182(v181, v160, v180);
                                                    if (v183)
                                                    {
                                                      v24 = v183;
                                                    }

                                                    else
                                                    {
                                                      v184 = APSSetFBOPropertyInt64();
                                                      if (v184)
                                                      {
                                                        v24 = v184;
                                                      }

                                                      else
                                                      {
                                                        v185 = cf[0];
                                                        v186 = *(*(CMBaseObjectGetVTable() + 16) + 24);
                                                        if (v186)
                                                        {
                                                          v187 = v186(v185, audioStream_receivedMediaDataEventMessage, 0, v366);
                                                          if (v187)
                                                          {
                                                            v24 = v187;
                                                          }

                                                          else
                                                          {
                                                            v188 = cf[0];
                                                            v189 = *(*(CMBaseObjectGetVTable() + 16) + 8);
                                                            if (v189)
                                                            {
                                                              v190 = v189(v188);
                                                              if (v190)
                                                              {
                                                                v24 = v190;
                                                              }

                                                              else
                                                              {
                                                                v191 = cf[0];
                                                                v192 = *(*(CMBaseObjectGetVTable() + 16) + 16);
                                                                if (v192)
                                                                {
                                                                  v193 = v192(v191);
                                                                  v24 = v193;
                                                                  if (!v193)
                                                                  {
                                                                    v2 = cf[0];
                                                                    cf[0] = 0;
LABEL_320:
                                                                    OUTLINED_FUNCTION_16_3(v193, v194, v195, v196, v197, v198, v199, v200, v238, v243, v248, v253, v258, cf1d, v268, v273, v278, v283, v288, v293, valuec, v302, v308, v313, allocatord, v323, theDatad, v332, v338, v343, v348, v353, v358, v362, v366);
                                                                    OUTLINED_FUNCTION_7_5();
                                                                    OUTLINED_FUNCTION_6_7((v201 + 12));
                                                                    v202 = LogCategoryCopyOSLogHandle();
                                                                    v203 = v202;
                                                                    if (v202)
                                                                    {
                                                                      v204 = v202;
                                                                    }

                                                                    else
                                                                    {
                                                                      v204 = MEMORY[0x277D86220];
                                                                    }

                                                                    v205 = CUObfuscatedPtr();
                                                                    if (v205)
                                                                    {
                                                                      v207 = v205;
                                                                      if (os_signpost_enabled(v204))
                                                                      {
                                                                        *v378 = 0;
                                                                        _os_signpost_emit_with_name_impl(&dword_221FFA000, v204, OS_SIGNPOST_INTERVAL_END, v207, "AIRPLAY_SIGNPOST_BUFFERED_EPS_TRANSPORT_CONTROL_INTERVAL", &unk_2222A918B, v378, 2u);
                                                                      }
                                                                    }

                                                                    if (v203)
                                                                    {
                                                                      os_release(v203);
                                                                    }

                                                                    v109 = v333;
                                                                    if (cf[0])
                                                                    {
                                                                      v208 = FigTransportStreamGetCMBaseObject();
                                                                      if (v208)
                                                                      {
                                                                        v209 = v208;
                                                                        v210 = *(*(CMBaseObjectGetVTable() + 8) + 24);
                                                                        if (v210)
                                                                        {
                                                                          v210(v209);
                                                                        }
                                                                      }

                                                                      CFRelease(cf[0]);
                                                                      cf[0] = 0;
                                                                    }

                                                                    if (v176)
                                                                    {
                                                                      CFRelease(v176);
                                                                    }

                                                                    v11 = v303;
                                                                    if (v180)
                                                                    {
                                                                      CFRelease(v180);
                                                                    }

                                                                    if (!v24)
                                                                    {
                                                                      if (gLogCategory_APEndpointStreamBufferedAudio <= 50 && (gLogCategory_APEndpointStreamBufferedAudio != -1 || OUTLINED_FUNCTION_4(&gLogCategory_APEndpointStreamBufferedAudio)))
                                                                      {
                                                                        OUTLINED_FUNCTION_2(&gLogCategory_APEndpointStreamBufferedAudio, "OSStatus audioStream_resumeInternal(FigEndpointStreamRef, CFDictionaryRef)", v206, "BES [%{ptr}] Created transport media data control stream [%{ptr}]\n");
                                                                      }

LABEL_342:
                                                                      FigSimpleMutexLock();
                                                                      v6[329] = BYTE4(v286);
                                                                      v6[330] = v291 ^ 1;
                                                                      *(v6 + 24) = v1;
                                                                      *(v6 + 25) = v2;
                                                                      v211 = *(v6 + 37);
                                                                      v212 = v371;
                                                                      *(v6 + 37) = v371;
                                                                      if (v212)
                                                                      {
                                                                        CFRetain(v212);
                                                                      }

                                                                      v5 = valuea;
                                                                      if (v211)
                                                                      {
                                                                        CFRelease(v211);
                                                                      }

                                                                      v213 = *(v6 + 38);
                                                                      v214 = v370;
                                                                      *(v6 + 38) = v370;
                                                                      if (v214)
                                                                      {
                                                                        CFRetain(v214);
                                                                      }

                                                                      if (v213)
                                                                      {
                                                                        CFRelease(v213);
                                                                      }

                                                                      FigSimpleMutexUnlock();
                                                                      v1 = v6[330];
                                                                      APSEndpointStreamAudioHoseRegistrarProtocolGetProtocolID();
                                                                      ProtocolVTable = CMBaseObjectGetProtocolVTable();
                                                                      if (v1)
                                                                      {
                                                                        if (!ProtocolVTable || (v216 = *(ProtocolVTable + 16)) == 0)
                                                                        {
                                                                          v24 = -12788;
                                                                          goto LABEL_356;
                                                                        }

                                                                        if (!*(v216 + 40))
                                                                        {
                                                                          v24 = -12782;
                                                                          goto LABEL_356;
                                                                        }

                                                                        v217 = OUTLINED_FUNCTION_19_2();
                                                                        v24 = v218(v217);
                                                                      }

                                                                      else
                                                                      {
                                                                        if (ProtocolVTable && (v219 = *(ProtocolVTable + 16)) != 0)
                                                                        {
                                                                          if (*(v219 + 24))
                                                                          {
                                                                            v220 = OUTLINED_FUNCTION_19_2();
                                                                            v24 = v221(v220);
                                                                          }

                                                                          else
                                                                          {
                                                                            v24 = -12782;
                                                                          }
                                                                        }

                                                                        else
                                                                        {
                                                                          v24 = -12788;
                                                                        }

                                                                        if (!*(v368 + 8))
                                                                        {
                                                                          APSLogErrorAt();
                                                                          OUTLINED_FUNCTION_2_12();
                                                                          v24 = -16760;
LABEL_378:
                                                                          v12 = v311;
                                                                          v25 = v346;
                                                                          goto LABEL_379;
                                                                        }
                                                                      }

                                                                      if (!v24)
                                                                      {
                                                                        FigSimpleMutexLock();
                                                                        v1 = *(v6 + 44);
                                                                        if (!v1 || !*(v6 + 24))
                                                                        {
                                                                          goto LABEL_368;
                                                                        }

                                                                        v2 = FigTransportStreamGetCMBaseObject();
                                                                        v222 = *(*(CMBaseObjectGetVTable() + 8) + 56);
                                                                        if (v222)
                                                                        {
                                                                          v223 = v222(v2, *MEMORY[0x277CE5000], v1);
                                                                          if (!v223)
                                                                          {
LABEL_368:
                                                                            v224 = *(v6 + 31);
                                                                            *(v6 + 31) = v109;
                                                                            if (v109)
                                                                            {
                                                                              CFRetain(v109);
                                                                            }

                                                                            if (v224)
                                                                            {
                                                                              CFRelease(v224);
                                                                            }

                                                                            *(v6 + 32) = v368;
                                                                            v6[208] = 1;
                                                                            FigSimpleMutexUnlock();
                                                                            v24 = APSEventRecorderRecordEvent();
                                                                            v1 = *(v6 + 1);
                                                                            CMNotificationCenterGetDefaultLocalCenter();
                                                                            OUTLINED_FUNCTION_13_4();
                                                                            FigDispatchAsyncPostNotification();
                                                                            audioStream_audioHoseNotifyAudioAvailableInternal(v363);
                                                                            goto LABEL_377;
                                                                          }

                                                                          v24 = v223;
                                                                        }

                                                                        else
                                                                        {
                                                                          v24 = -12782;
                                                                        }

                                                                        APSLogErrorAt();
                                                                        FigSimpleMutexUnlock();
LABEL_377:
                                                                        OUTLINED_FUNCTION_2_12();
                                                                        goto LABEL_378;
                                                                      }

LABEL_356:
                                                                      APSLogErrorAt();
                                                                      goto LABEL_377;
                                                                    }

                                                                    APSLogErrorAt();
LABEL_420:
                                                                    v5 = valuea;
                                                                    goto LABEL_378;
                                                                  }
                                                                }

                                                                else
                                                                {
                                                                  v24 = -12782;
                                                                }
                                                              }
                                                            }

                                                            else
                                                            {
                                                              v24 = -12782;
                                                            }
                                                          }
                                                        }

                                                        else
                                                        {
                                                          v24 = -12782;
                                                        }
                                                      }
                                                    }
                                                  }

                                                  else
                                                  {
                                                    v24 = -12782;
                                                  }

                                                  v193 = APSLogErrorAt();
                                                  v2 = 0;
                                                  goto LABEL_320;
                                                }

                                                v193 = APSLogErrorAt();
                                                v2 = 0;
LABEL_423:
                                                v24 = -6728;
                                                goto LABEL_320;
                                              }

                                              v24 = v179;
                                            }
                                          }

                                          else
                                          {
                                            v24 = -12782;
                                          }

                                          v193 = APSLogErrorAt();
                                          v2 = 0;
                                          v180 = 0;
                                          goto LABEL_320;
                                        }

                                        v193 = APSLogErrorAt();
                                        v2 = 0;
                                        v180 = 0;
                                        goto LABEL_423;
                                      }

                                      if (APSGetFBOPropertyInt64())
                                      {
                                        if (gLogCategory_APEndpointStreamBufferedAudio > 60)
                                        {
                                          goto LABEL_217;
                                        }

                                        if (gLogCategory_APEndpointStreamBufferedAudio == -1)
                                        {
                                          OUTLINED_FUNCTION_8();
                                          if (!_LogCategory_Initialize())
                                          {
                                            goto LABEL_217;
                                          }
                                        }

                                        OUTLINED_FUNCTION_11_3();
                                      }

                                      else
                                      {
                                        v91 = *(v6 + 51);
                                        APSAudioFormatDescriptionGetSampleRate();
                                        if (!APCarPlayAnalyticsInitASRCollection(v91, v92))
                                        {
                                          goto LABEL_217;
                                        }

                                        if (gLogCategory_APEndpointStreamBufferedAudio > 60)
                                        {
                                          goto LABEL_217;
                                        }

                                        if (gLogCategory_APEndpointStreamBufferedAudio == -1)
                                        {
                                          OUTLINED_FUNCTION_8();
                                          if (!_LogCategory_Initialize())
                                          {
                                            goto LABEL_217;
                                          }
                                        }

                                        APSAudioFormatDescriptionGetSampleRate();
                                        v246 = v93;
                                        OUTLINED_FUNCTION_18_3();
                                      }

                                      OUTLINED_FUNCTION_8();
                                      LogPrintF(v95, v96, (v94 + 10), v97);
LABEL_217:
                                      if (APCarPlayAnalyticsInitAudioAnomaliesCollection(*(v6 + 51), v89, v90))
                                      {
                                        if (gLogCategory_APEndpointStreamBufferedAudio <= 60)
                                        {
                                          if (gLogCategory_APEndpointStreamBufferedAudio != -1 || (OUTLINED_FUNCTION_8(), _LogCategory_Initialize()))
                                          {
                                            OUTLINED_FUNCTION_18_3();
                                            OUTLINED_FUNCTION_8();
                                            LogPrintF(v101, v102, (v100 + 10), v103);
                                          }
                                        }
                                      }

                                      if (APCarPlayAnalyticsInitAudioFormatsCollection(*(v6 + 51), v98, v99))
                                      {
                                        if (gLogCategory_APEndpointStreamBufferedAudio <= 60)
                                        {
                                          if (gLogCategory_APEndpointStreamBufferedAudio != -1 || (OUTLINED_FUNCTION_8(), _LogCategory_Initialize()))
                                          {
                                            OUTLINED_FUNCTION_18_3();
                                            OUTLINED_FUNCTION_8();
                                            LogPrintF(v105, v106, (v104 + 10), v107);
                                          }
                                        }
                                      }

                                      APCarPlayAnalyticsStartCollections(*(v6 + 51), 103, LegacyFormatMask, 0);
                                      CMNotificationCenterGetDefaultLocalCenter();
                                      OUTLINED_FUNCTION_4_11();
                                      FigNotificationCenterAddWeakListener();
                                      goto LABEL_228;
                                    }

LABEL_188:
                                    v73 = APSLogErrorAt();
                                    v340 = 0;
                                    goto LABEL_189;
                                  }
                                }

                                else
                                {
                                  CFDictionaryGetInt64();
                                  v73 = *v378;
                                  if (*v378)
                                  {
                                    goto LABEL_188;
                                  }
                                }

                                v340 = 0;
                                goto LABEL_149;
                              }
                            }

                            else
                            {
                              *v378 = -12782;
                            }
                          }

LABEL_134:
                          APSLogErrorAt();
                          OUTLINED_FUNCTION_20_0();
                          v81 = 0;
                          goto LABEL_191;
                        }

                        APSLogErrorAt();
LABEL_181:
                        v70 = -6728;
                        goto LABEL_182;
                      }

                      v63 = OUTLINED_FUNCTION_17_1(v61, v62, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
                      if (v63)
                      {
                        v64 = v63;
                        v65 = v310;
                        if (v310)
                        {
                          v66 = @"streamConnectionKeyEncryptionSeed";
                        }

                        else
                        {
                          if (!theDataa)
                          {
                            goto LABEL_106;
                          }

                          v66 = @"streamConnectionKeyUseStreamEncryptionKey";
                          v65 = v57;
                        }

                        CFDictionarySetValue(v63, v66, v65);
LABEL_106:
                        if (v270 == 1601528944)
                        {
                          v67 = kAPEndpointStreamConnectionTransportProtocol_UDP;
                        }

                        else
                        {
                          if (v270 != 1903520099)
                          {
LABEL_111:
                            CFDictionarySetValue(LegacyFormatMask, cf1a, v64);
                            CFRelease(v64);
                            goto LABEL_112;
                          }

                          v67 = kAPEndpointStreamConnectionTransportProtocol_QUIC;
                        }

                        CFDictionarySetValue(v64, @"streamConnectionKeyTransportProtocol", *v67);
                        goto LABEL_111;
                      }
                    }

                    APSLogErrorAt();
LABEL_180:
                    v68 = 0;
                    goto LABEL_181;
                  }

                  v24 = v30;
                  APSLogErrorAt();
                  OUTLINED_FUNCTION_2_12();
                  v25 = 0;
                  v12 = Int64;
LABEL_379:
                  a1 = v359;
                  goto LABEL_380;
                }

                v24 = v29;
              }

              else
              {
                v24 = -12782;
              }

              APSLogErrorAt();
              OUTLINED_FUNCTION_2_12();
              v25 = 0;
              v12 = Int64;
              goto LABEL_379;
            }

            v24 = v26;
            goto LABEL_54;
          }

LABEL_156:
          v1 = "audioStream_resumeInternal";
          APSLogErrorAt();
          v24 = APSSignalErrorAt();
          goto LABEL_55;
        }

        v24 = v23;
      }

      else
      {
        v24 = -12782;
      }

LABEL_54:
      APSLogErrorAt();
LABEL_55:
      OUTLINED_FUNCTION_2_12();
      v12 = 0;
LABEL_56:
      v25 = 0;
      goto LABEL_379;
    }

    if (gLogCategory_APEndpointStreamBufferedAudio <= 50 && (gLogCategory_APEndpointStreamBufferedAudio != -1 || OUTLINED_FUNCTION_4(&gLogCategory_APEndpointStreamBufferedAudio)))
    {
      OUTLINED_FUNCTION_11_3();
      OUTLINED_FUNCTION_2(&gLogCategory_APEndpointStreamBufferedAudio, "OSStatus audioStream_resumeInternal(FigEndpointStreamRef, CFDictionaryRef)", v84, "BES [%{ptr}] was told to use APAP, but it is not supported!\n");
    }

    goto LABEL_185;
  }

  if (v17)
  {
    v1 = "audioStream_resumeInternal";
    APSLogErrorAt();
    v24 = APSSignalErrorAt();
    OUTLINED_FUNCTION_1_18();
    goto LABEL_56;
  }

  if (v6[97])
  {
    v2 = 0;
    v18 = 1634754932;
    goto LABEL_42;
  }

  if (gLogCategory_APEndpointStreamBufferedAudio > 50)
  {
LABEL_185:
    OUTLINED_FUNCTION_1_18();
    v25 = 0;
    v24 = -6735;
    goto LABEL_379;
  }

  a1 = v359;
  if (gLogCategory_APEndpointStreamBufferedAudio != -1 || OUTLINED_FUNCTION_4(&gLogCategory_APEndpointStreamBufferedAudio))
  {
    OUTLINED_FUNCTION_11_3();
    OUTLINED_FUNCTION_2(&gLogCategory_APEndpointStreamBufferedAudio, "OSStatus audioStream_resumeInternal(FigEndpointStreamRef, CFDictionaryRef)", v83, "BES [%{ptr}] was told to use APAT, but it is not supported!\n");
  }

  OUTLINED_FUNCTION_1_18();
  v25 = 0;
  v24 = -6735;
LABEL_380:
  if (v373)
  {
    CFRelease(v373);
  }

  if (v12)
  {
    CFRelease(v12);
  }

  if (v371)
  {
    CFRelease(v371);
  }

  if (v370)
  {
    CFRelease(v370);
  }

  if (v11)
  {
    CFRelease(v11);
  }

  if (v25)
  {
    CFRelease(v25);
  }

  if (v1)
  {
    v225 = FigTransportStreamGetCMBaseObject();
    if (v225)
    {
      v226 = v225;
      v227 = *(*(CMBaseObjectGetVTable() + 8) + 24);
      if (v227)
      {
        v227(v226);
      }
    }

    CFRelease(v1);
  }

  if (v2)
  {
    v228 = FigTransportStreamGetCMBaseObject();
    if (v228)
    {
      v229 = v228;
      v230 = *(*(CMBaseObjectGetVTable() + 8) + 24);
      if (v230)
      {
        v230(v229);
      }
    }

    CFRelease(v2);
  }

  if (v5)
  {
    CFRelease(v5);
  }

  if (v24)
  {
    audioStream_suspendInternal(v363, 0);
  }

  v231 = a1[2];
  if (v231)
  {
    cf[0] = *a1;
    cf[1] = v24;
    v232 = a1[3];
    cf[2] = v231;
    cf[3] = v232;
    CFRetain(cf[0]);
    OUTLINED_FUNCTION_3_12();
    APSDispatchAsyncFHelper();
  }

  audioStream_releaseAsync(*a1);
  v233 = a1[1];
  if (v233)
  {
    CFRelease(v233);
  }
}

uint64_t APEndpointStreamBufferedAudioCreate_cold_4(uint64_t a1, _DWORD *a2)
{
  v3 = a1;
  APSLogErrorAt();
  *a2 = v3;
  return APSLogErrorAt();
}

void APEndpointStreamBufferedAudioCreate_cold_8(void *a1, CFTypeRef *a2)
{
  APSAudioFormatDescriptionListCopyDebugString();
  if (gLogCategory_APEndpointStreamBufferedAudio <= 50 && (gLogCategory_APEndpointStreamBufferedAudio != -1 || OUTLINED_FUNCTION_4(&gLogCategory_APEndpointStreamBufferedAudio)))
  {
    OUTLINED_FUNCTION_2(&gLogCategory_APEndpointStreamBufferedAudio, "OSStatus APEndpointStreamBufferedAudioCreate(CFAllocatorRef, CFStringRef, CFStringRef, CFDictionaryRef, APSenderSessionRef, APAudioEngineVendorRef, APEndpointDescriptionRef, FigEndpointStreamRef *)", v3, "APEndpointStreamBufferedAudioCreate created APEndpointStreamBufferedAudio %{ptr} supportedAudioFormats=%@");
  }

  if (*a2)
  {
    CFRelease(*a2);
  }
}

uint64_t audioStream_audioHoseApplyVolumeFadeInternal_cold_2(uint64_t a1)
{
  APSGetVolumeFadeTypeName();
  time = *(a1 + 12);
  CMTimeGetSeconds(&time);
  return OUTLINED_FUNCTION_2(&gLogCategory_APEndpointStreamBufferedAudio, "void audioStream_audioHoseApplyVolumeFadeInternal(void *)", v2, "[%{ptr}] Apply volume fade Type: %s Duration: %.3fs");
}

void audioStream_audioHoseEnableMATAtmosPlaybackInternal_cold_4(const void *a1)
{
  APSLogErrorAt();

  CFRelease(a1);
}

uint64_t audioStream_receivedAudioDataMessage_cold_1(uint64_t a1, void *a2)
{
  result = APSLogErrorAt();
  if (gLogCategory_APEndpointStreamBufferedAudio <= 90)
  {
    if (gLogCategory_APEndpointStreamBufferedAudio != -1 || (result = _LogCategory_Initialize(), result))
    {
      result = OUTLINED_FUNCTION_4_0(&gLogCategory_APEndpointStreamBufferedAudio, "void audioStream_receivedAudioDataMessage(FigTransportStreamRef, OSType, CMBlockBufferRef, void *)", v4, "[%{ptr}] Failed to allocate array for message\n");
    }
  }

  *a2 = 0;
  return result;
}

uint64_t audioStream_receivedAudioDataMessage_cold_3(uint64_t a1, void *a2)
{
  result = APSLogErrorAt();
  if (gLogCategory_APEndpointStreamBufferedAudio <= 90)
  {
    if (gLogCategory_APEndpointStreamBufferedAudio != -1 || (result = _LogCategory_Initialize(), result))
    {
      result = OUTLINED_FUNCTION_4_0(&gLogCategory_APEndpointStreamBufferedAudio, "void audioStream_receivedAudioDataMessage(FigTransportStreamRef, OSType, CMBlockBufferRef, void *)", v4, "[%{ptr}] We received an APAT message, but we are not using APAT\n");
    }
  }

  *a2 = 0;
  return result;
}

void audioStream_isPassthroughSupportedForFormatDescription_cold_3(void *a1, CFTypeRef *a2, uint64_t a3, uint64_t a4)
{
  APSAudioFormatDescriptionListCopyDebugString();
  if (gLogCategory_APEndpointStreamBufferedAudio <= 10 && (gLogCategory_APEndpointStreamBufferedAudio != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APEndpointStreamBufferedAudio, "OSStatus audioStream_isPassthroughSupportedForFormatDescription(FigEndpointStreamAirPlayRef, FigEndpointStreamAudioFormatDescriptionRef, Boolean *)", 33554442, "[%{ptr}] isPassthroughSupported=%s, storage->supportedFormats=%@", a3, a4, *a2);
  }

  if (*a2)
  {
    CFRelease(*a2);
  }
}

uint64_t APMessageRingBufferedGetMessageAtIndex()
{
  OUTLINED_FUNCTION_2_13();
  v7 = *(v6 + 64);
  if (v7 == -1)
  {
    if (gLogCategory_APMessageRingBuffered <= 30)
    {
      v13 = v1;
      if (gLogCategory_APMessageRingBuffered != -1 || _LogCategory_Initialize())
      {
        LogPrintF(&gLogCategory_APMessageRingBuffered, "CMBlockBufferRef APMessageRingBufferedGetMessageAtIndex(APMessageRingBufferedRef, uint16_t, uint32_t *, CMTime *, CMTime *)", 33554462, "APMessageRingBufferedGetMessageAtSequenceNumber requested seq # %u found seq # %u\n", v13, -1);
      }
    }

    return 0;
  }

  else
  {
    v8 = v0;
    result = *v6;
    if (*v6)
    {
      if (v2)
      {
        *v2 = v7;
      }

      if (v3)
      {
        v10 = *(v6 + 16);
        *(v3 + 16) = *(v6 + 32);
        *v3 = v10;
      }

      if (v4)
      {
        v11 = *(v8 + 32) + 80 * (v5 % *(v8 + 24));
        v12 = *(v11 + 40);
        *(v4 + 16) = *(v11 + 56);
        *v4 = v12;
      }
    }
  }

  return result;
}

uint64_t APMessageRingBufferedFlush(uint64_t a1, _WORD *a2, _DWORD *a3)
{
  if (a1)
  {
    if (gLogCategory_APMessageRingBuffered <= 50 && (gLogCategory_APMessageRingBuffered != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_APMessageRingBuffered, "OSStatus APMessageRingBufferedFlush(APMessageRingBufferedRef, uint16_t *, uint32_t *)", 33554482, "MRB [%{ptr}] Flush: read index changing from %u to %u, next seq # %u\n", a1, *(a1 + 16), *(a1 + 18), *(a1 + 20));
    }

    v6 = *(a1 + 16);
    if (v6 != *(a1 + 18))
    {
      v7 = *(a1 + 24);
      v8 = *(a1 + 32);
      do
      {
        v9 = v6;
        v10 = v6 % v7;
        v11 = v8 + 80 * v10;
        *(v11 + 64) = -1;
        if (*v11)
        {
          CFRelease(*v11);
          v7 = *(a1 + 24);
          v8 = *(a1 + 32);
          v10 = v9 % v7;
          *(v8 + 80 * (v9 % v7)) = 0;
        }

        v12 = *(v8 + 80 * v10 + 8);
        if (v12)
        {
          CFRelease(v12);
          v7 = *(a1 + 24);
          v8 = *(a1 + 32);
          *(v8 + 80 * (v9 % v7) + 8) = 0;
        }

        LOWORD(v6) = v9 + 1;
      }

      while (*(a1 + 18) != (v9 + 1));
    }

    *(a1 + 16) = v6;
    if (a2)
    {
      *a2 = v6;
    }

    if (a3)
    {
      *a3 = *(a1 + 20);
    }
  }

  return 0;
}

void APMessageRingBufferedCreate_cold_3(const void *a1)
{
  APSLogErrorAt();

  CFRelease(a1);
}

CFDictionaryRef __APSenderStatsCollectorCopySystemStats_block_invoke(void *a1)
{
  v32 = *MEMORY[0x277D85DE8];
  v2 = a1[5];
  v3 = a1[6];
  v4 = mach_absolute_time();
  v5 = MEMORY[0x277CBECE8];
  if (!*(v2 + 112))
  {
    goto LABEL_43;
  }

  v6 = v4;
  v7 = v4 - *(v2 + 40);
  if (v7 <= *(v2 + 32))
  {
    goto LABEL_43;
  }

  *(v2 + 40) = v4;
  v8 = v7 / *(v2 + 64);
  bzero(&v30, 0x90uLL);
  if (getrusage(0, &v30))
  {
    APSLogErrorAt();
  }

  else
  {
    v9 = v30.ru_utime.tv_usec / 1000000.0 + v30.ru_utime.tv_sec + v30.ru_stime.tv_usec / 1000000.0 + v30.ru_stime.tv_sec;
    v10 = v9 - *(v2 + 96);
    *(v2 + 96) = v9;
    v11 = v10 / v8;
    if (*(v2 + 88))
    {
      *(v2 + 80) = *(v2 + 80) + *(v2 + 72) * (v11 - *(v2 + 80));
    }

    else
    {
      *(v2 + 80) = v11;
      *(v2 + 88) = 1;
    }
  }

  FigCFDictionarySetDouble();
  v31 = 0;
  v30.ru_utime.tv_sec = 0;
  v30.ru_utime.tv_usec = 0;
  Statistics = CARenderServerGetStatistics();
  tv_sec = v31;
  if (v31)
  {
    v14 = Statistics;
    if (Statistics >= 3)
    {
      v15 = 3;
    }

    else
    {
      v15 = Statistics;
    }

    if (Statistics >= 1)
    {
      v28 = v6;
      v16 = 0;
      do
      {
        LODWORD(cf) = 0;
        v17 = strchr(v31[v16], 10);
        if (v17 && sscanf(v17 + 1, " Total Frames: %d", &cf) == 1)
        {
          *(&v30.ru_utime.tv_sec + v16) = cf;
        }

        free(v31[v16++]);
      }

      while (v15 != v16);
      v5 = MEMORY[0x277CBECE8];
      v6 = v28;
      if (v14 >= 4)
      {
        v18 = 3;
        do
        {
          free(v31[v18++]);
        }

        while (v14 != v18);
      }
    }

    free(v31);
    tv_sec = v30.ru_utime.tv_sec;
    v19 = *(&v30.ru_utime.tv_sec + (v15 - (v14 > 0)));
  }

  else
  {
    v19 = 0;
  }

  *(v2 + 104) = tv_sec;
  *(v2 + 108) = v19;
  FigCFDictionarySetInt32();
  FigCFDictionarySetInt32();
  FigCFDictionarySetInt32();
  if (v6 - *(v2 + 56) > *(v2 + 48))
  {
    cf = 0;
    APTransportGetSharedTransport();
    CMBaseObject = FigTransportGetCMBaseObject();
    v21 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v21)
    {
      v22 = v21(CMBaseObject, *MEMORY[0x277CE4F30], *v5, &cf);
      if (!v22)
      {
        APTransportTrafficRegistrarGetRegistration();
        v26 = @"infra";
        v27 = 0;
        v25 = 0;
        if (!CFPropertyListCreateFormatted())
        {
          CFDictionarySetValue(*(v2 + 24), @"trafficRegistration", 0);
        }

        if (!APTransportTrafficRegistrarGetRSSI())
        {
          FigCFDictionarySetInt32();
        }

        if (!APTransportTrafficRegistrarGetWifiChannel())
        {
          FigCFDictionarySetInt32();
        }

        APTransportTrafficRegistrarGetAWDLChannelSequence();
        CFDictionaryRemoveValue(*(v2 + 24), @"awdlChannelLength");
        CFDictionaryRemoveValue(*(v2 + 24), @"awdlChannelSeq");
        CFDictionaryRemoveValue(*(v2 + 24), @"awdlChannelFlags");
LABEL_36:
        if (cf)
        {
          CFRelease(cf);
        }

        *(v2 + 56) = v6;
        goto LABEL_39;
      }

      v23 = v22;
    }

    else
    {
      v23 = 4294954514;
    }

    if (gLogCategory_APSenderStatsCollector <= 50 && (gLogCategory_APSenderStatsCollector != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_APSenderStatsCollector, "void collector_updateWiFiStats(APSenderStatsCollectorRef)", 33554482, "### Can't get traffic registrar, error: %#m\n", v23);
    }

    goto LABEL_36;
  }

LABEL_39:
  if (gLogCategory_APSenderStatsCollector <= 20 && (gLogCategory_APSenderStatsCollector != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APSenderStatsCollector, "OSStatus collector_copySystemStatsInternal(APSenderStatsCollectorRef, CFDictionaryRef *)", 33554452, "system stats: %@\n", *(v2 + 24), v25, v26, v27);
  }

LABEL_43:
  result = CFDictionaryCreateCopy(*v5, *(v2 + 24));
  *v3 = result;
  *(*(a1[4] + 8) + 24) = 0;
  return result;
}

uint64_t APSenderStatsCollectorCopySystemStats_cold_1(uint64_t a1)
{
  result = APSLogErrorAt();
  *(*a1 + 24) = -6705;
  return result;
}

uint64_t APSenderStatsCollectorCopySystemStats_cold_2(uint64_t a1)
{
  result = APSLogErrorAt();
  *(*a1 + 24) = -6705;
  return result;
}

double audioEngineAVC_audioSourceWriteDataCallback(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v41 = 0;
  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  v36 = 0;
  if (FigSimpleMutexTryLock())
  {
    v5 = *(a3 + 48);
    v6 = *(a3 + 64);
    for (i = *(*(CMBaseObjectGetVTable() + 16) + 32); i; i = *(*(CMBaseObjectGetVTable() + 16) + 32))
    {
      if (!i(v5, v6))
      {
        break;
      }

      v34 = 0;
      v8 = *(a3 + 48);
      v9 = *(a3 + 72);
      v10 = *(a3 + 64);
      v11 = *(*(CMBaseObjectGetVTable() + 16) + 48);
      if (!v11 || v11(v8, v9, v10, &v34, &v36, &v41, a3 + 8) || !v34)
      {
        break;
      }

      v12 = *(a3 + 96);
      if (v12 == 0.0)
      {
        v13 = mach_absolute_time();
        *(&v37 + 1) = v13;
        v14 = UpTicksPerSecond();
        v15 = CMTimeMake(&v33, v13, v14);
        v35 = *&v33.timescale;
        OUTLINED_FUNCTION_2_14(v15, *(a3 + 8), v16, *&v33.timescale, v17, v18, v19, v20, v21, v30, v33.value, v31, v32, v33.value);
        value = v33.value;
        v35 = *&v33.timescale;
        *&v37 = v33.value;
      }

      else
      {
        *&v37 = *(a3 + 96);
        CMTimeMake(&v33, v12, *(a3 + 8));
        value = v33.value;
        v35 = *&v33.timescale;
      }

      v23 = UpTicksPerSecond();
      OUTLINED_FUNCTION_2_14(v23, v23, v24, v35, v25, v26, v27, v28, v29, v30, value, v31, v32, v33.value);
      *(&v37 + 1) = v33.value;
      *(a3 + 96) = *&v37 + v36;
      DWORD2(v40) = 3;
      if (FigHALAudioConduitDeviceHALSendAudio())
      {
        break;
      }

      v5 = *(a3 + 48);
      v6 = *(a3 + 64);
    }

    FigSimpleMutexUnlock();
  }

  return result;
}

uint64_t audioEngineAVC_Resume_cold_4(_DWORD *a1)
{
  APSLogErrorAt();
  result = APSSignalErrorAt();
  *a1 = result;
  return result;
}

uint64_t audioEngineAVC_Resume_cold_5(_DWORD *a1)
{
  APSLogErrorAt();
  result = APSSignalErrorAt();
  *a1 = result;
  return result;
}

uint64_t audioEngineAVC_Suspend_cold_2()
{
  mach_absolute_time();
  UpTicksPerSecond();
  return OUTLINED_FUNCTION_2(&gLogCategory_APAudioEngineAVC, "void audioEngineAVC_Suspend(FigEndpointStreamAudioEngineRef, CFDictionaryRef, FigEndpointStreamAudioEngineSuspendCallback, void *)", v0, "[%{ptr}] Suspend completed (err=%#m) total=%1.3f ms\n");
}

void endpointUGLWrapper_setWrappedEndpoint(uint64_t a1, const void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v5 = *(DerivedStorage + 40);
  if (v5 != a2)
  {
    v6 = DerivedStorage;
    if (gLogCategory_APEndpointUGLWrapper <= 50)
    {
      if (gLogCategory_APEndpointUGLWrapper != -1 || OUTLINED_FUNCTION_4(&gLogCategory_APEndpointUGLWrapper))
      {
        OUTLINED_FUNCTION_2(&gLogCategory_APEndpointUGLWrapper, "void endpointUGLWrapper_setWrappedEndpoint(FigEndpointRef, FigEndpointRef)", v4, "[%{ptr}] SetWrappedEndpoint: [%{ptr}] -> [%{ptr}]");
      }

      v5 = *(v6 + 40);
    }

    if (v5)
    {
      CMNotificationCenterGetDefaultLocalCenter();
      OUTLINED_FUNCTION_1_20();
      FigNotificationCenterRemoveWeakListener();
      v7 = *(v6 + 40);
    }

    else
    {
      v7 = 0;
    }

    *(v6 + 40) = a2;
    if (a2)
    {
      CFRetain(a2);
    }

    if (v7)
    {
      CFRelease(v7);
    }

    if (*(v6 + 40))
    {
      CMNotificationCenterGetDefaultLocalCenter();
      OUTLINED_FUNCTION_1_20();

      FigNotificationCenterAddWeakListener();
    }
  }
}

uint64_t APEndpointUGLWrapperUpdateWithTransportDevice(uint64_t a1, const void *a2, int a3)
{
  if (gLogCategory_APEndpointUGLWrapper <= 50 && (gLogCategory_APEndpointUGLWrapper != -1 || OUTLINED_FUNCTION_4(&gLogCategory_APEndpointUGLWrapper)))
  {
    APTransportDeviceGetDiscoveryID();
    OUTLINED_FUNCTION_2(&gLogCategory_APEndpointUGLWrapper, "OSStatus APEndpointUGLWrapperUpdateWithTransportDevice(FigEndpointRef, APTransportDeviceRef, Boolean)", v6, "[%{ptr}] APEndpointUGLWrapperUpdateWithTransportDevice(%@, forWrapped=%s)");
  }

  if (!a1 || CMBaseObjectGetVTable() != &kAPEndpointUGLWrapperVTable)
  {
    APSLogErrorAt();
    return 4294950576;
  }

  if (a3)
  {
    v8 = epp_copyInner(a1);
    if (!v8)
    {
      return 4294949690;
    }

    goto LABEL_12;
  }

  v8 = endpointUGLWrapper_copyShadowEndpoint(a1, a2);
  if (v8)
  {
LABEL_12:
    v9 = v8;
    v10 = APEndpointUpdateWithTransportDevice(v8, a2);
    CFRelease(v9);
    return v10;
  }

  APSLogErrorAt();
  return 4294950571;
}

void uglWrapper_handleFailedInternal(const void *a1, uint64_t a2, const void *a3, uint64_t a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexCheckIsLockedOnThisThread();
  v9 = *(DerivedStorage + 68);
  if (!v9)
  {
    return;
  }

  if (*(DerivedStorage + 96))
  {
    v10 = FigCFWeakReferenceHolderCopyReferencedObject();
    if (!v10)
    {
      if (gLogCategory_APEndpointUGLWrapper <= 60 && (gLogCategory_APEndpointUGLWrapper != -1 || _LogCategory_Initialize()))
      {
        LogPrintF(&gLogCategory_APEndpointUGLWrapper, "void uglWrapper_handleFailedInternal(FigEndpointRef, uint64_t, CFDictionaryRef, CFTypeRef)", 33554492, "[%{ptr}] Not calling handleFailed delegate callback because delegateContextRouting has gone away\n", a4);
      }

      return;
    }
  }

  else
  {
    v10 = 0;
  }

  CFRetain(a1);
  if (a3)
  {
    CFRetain(a3);
  }

  if (v10)
  {
    CFRetain(v10);
  }

  v11 = *DerivedStorage;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 0x40000000;
  block[2] = __uglWrapper_handleFailedInternal_block_invoke;
  block[3] = &__block_descriptor_tmp_69_0;
  block[4] = a4;
  block[5] = a3;
  block[6] = v9;
  block[7] = a2;
  block[8] = v10;
  block[9] = a1;
  dispatch_async(v11, block);
  if (v10)
  {
    CFRelease(v10);
  }
}

uint64_t APEndpointUGLWrapperCreate_cold_2(_DWORD *a1)
{
  result = APSLogErrorAt();
  *a1 = -17606;
  return result;
}

uint64_t APEndpointUGLWrapperCreate_cold_7(_DWORD *a1)
{
  result = APSLogErrorAt();
  *a1 = -16720;
  return result;
}

uint64_t endpointUGLWrapper_updateMXDescriptor_cold_1(int a1, void *a2, uint64_t a3)
{
  if (a1 != -1)
  {
    return LogPrintF(&gLogCategory_APEndpointUGLWrapper, "OSStatus endpointUGLWrapper_updateMXDescriptor(FigEndpointRef, CFAllocatorRef, CFDictionaryRef *)", 33554462, "[%{ptr}] updateMXDescriptor: updated RouteUUID with our ID %@", a3, *a2);
  }

  result = _LogCategory_Initialize();
  if (result)
  {
    return LogPrintF(&gLogCategory_APEndpointUGLWrapper, "OSStatus endpointUGLWrapper_updateMXDescriptor(FigEndpointRef, CFAllocatorRef, CFDictionaryRef *)", 33554462, "[%{ptr}] updateMXDescriptor: updated RouteUUID with our ID %@", a3, *a2);
  }

  return result;
}

void endpointUGLWrapper_createMXDescriptor_cold_1(__CFDictionary *a1, void *value, const void **a3)
{
  CFDictionarySetValue(a1, *MEMORY[0x277D26EA0], value);
  v5 = *a3;
  *a3 = a1;
  CFRetain(a1);
  if (v5)
  {

    CFRelease(v5);
  }
}

uint64_t endpointUGLWrapper_activateInternal_cold_8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (gLogCategory_APEndpointUGLWrapper <= 50)
  {
    if (gLogCategory_APEndpointUGLWrapper != -1)
    {
      return OUTLINED_FUNCTION_2(&gLogCategory_APEndpointUGLWrapper, "void endpointUGLWrapper_createWrappedEndpointIfAvailable(FigEndpointRef)", a3, "[%{ptr}] Failed to create wrapped endpoint, result %#m");
    }

    result = OUTLINED_FUNCTION_4(&gLogCategory_APEndpointUGLWrapper);
    if (result)
    {
      return OUTLINED_FUNCTION_2(&gLogCategory_APEndpointUGLWrapper, "void endpointUGLWrapper_createWrappedEndpointIfAvailable(FigEndpointRef)", a3, "[%{ptr}] Failed to create wrapped endpoint, result %#m");
    }
  }

  return result;
}

uint64_t endpointUGLWrapper_copyUGLServerInfo_cold_1(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (gLogCategory_APEndpointUGLWrapper > 50)
  {
    return 1;
  }

  if (gLogCategory_APEndpointUGLWrapper != -1 || (result = OUTLINED_FUNCTION_4(&gLogCategory_APEndpointUGLWrapper), result))
  {
    OUTLINED_FUNCTION_2(&gLogCategory_APEndpointUGLWrapper, "CFDictionaryRef endpointUGLWrapper_copyUGLServerInfo(FigEndpointRef, FigEndpointRef)", a3, "[%{ptr}] Couldn't get endpointDescription from endpoint [%{ptr}]");
    return 0;
  }

  return result;
}

_BYTE *carManager_invalidateInternal(const void *a1)
{
  result = CMBaseObjectGetDerivedStorage();
  if (!*result)
  {
    v4 = result;
    if (gLogCategory_APEndpointManagerCarPlay <= 30 && (gLogCategory_APEndpointManagerCarPlay != -1 || _LogCategory_Initialize()))
    {
      OUTLINED_FUNCTION_4_1(&gLogCategory_APEndpointManagerCarPlay, "void carManager_invalidateInternal(FigEndpointManagerRef)", v3, "InvalidateInternal\n");
    }

    *v4 = 1;
    v5 = v4 + 96;
    AirPlayDebugIPCDisableForEndpointManager(a1);
    for (i = 0; i != 216; i += 72)
    {
      result = *&v5[i];
      if (result)
      {
        result = APBrowserGetCMBaseObject();
        if (result)
        {
          v7 = result;
          VTable = CMBaseObjectGetVTable();
          v9 = *(VTable + 8);
          result = (VTable + 8);
          v10 = *(v9 + 24);
          if (v10)
          {
            result = v10(v7);
          }
        }
      }
    }
  }

  return result;
}

const __CFDictionary *carManager_appendEndpointStreamShowInfo(const __CFDictionary *result, uint64_t a2)
{
  if (result)
  {
    v3 = result;
    v4 = CFDictionaryGetValue(result, @"Subtype");
    value = v4;
    v5 = CFDictionaryGetValue(v3, @"Type");
    Int64 = CFDictionaryGetInt64();
    v7 = "Resumed";
    if (!Int64)
    {
      v7 = "Suspended";
    }

    CFStringAppendF(a2, "%-9@%?s%?@ %s ", v5, v4 != 0, "-", v4 != 0, v4, v7);
    if (CFDictionaryGetValueIfPresent(v3, @"ScreenInfo", &value) && value)
    {
      v8 = FigCFCopyCompactDescription();
      CFStringAppendF(a2, "%@", v8);
      if (v8)
      {
        CFRelease(v8);
      }
    }

    return CFStringAppendF(a2, "\n");
  }

  return result;
}

void APEndpointManagerCarPlayCreate_cold_9()
{
  if (gLogCategory_APEndpointManagerCarPlay <= 90 && (gLogCategory_APEndpointManagerCarPlay != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APEndpointManagerCarPlay, "AudioServerPlugInDriverRef carManager_createCarPlayHALDriver(void)", 33554522, "There are no factories for AudioServerPlugInType!\n", v0, v1);
  }
}

uint64_t __APEndpointManagerCarPlayCreate_block_invoke_cold_1(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  v4 = a1;
  APSLogErrorAt();
  *a3 = v4;
  return APSLogErrorAt();
}

void __APEndpointManagerCarPlayCreate_block_invoke_cold_11(_DWORD *a1, const void *a2)
{
  APSLogErrorAt();
  *a1 = -6728;
  CFRelease(a2);
}

uint64_t __APEndpointManagerCarPlayCreate_block_invoke_cold_12(_DWORD *a1)
{
  result = APSLogErrorAt();
  *a1 = -16711;
  return result;
}

uint64_t __APEndpointManagerCarPlayCreate_block_invoke_cold_13(_DWORD *a1)
{
  result = APSLogErrorAt();
  *a1 = -6762;
  return result;
}

uint64_t __APEndpointManagerCarPlayCreate_block_invoke_cold_14(_DWORD *a1)
{
  result = APSLogErrorAt();
  *a1 = -16711;
  return result;
}

CFTypeRef __carManager_copyProperty_block_invoke_cold_5(const void *a1)
{
  APSLogErrorAt();

  return CFRetain(a1);
}

uint64_t __carManager_setProperty_block_invoke_cold_3(uint64_t a1)
{
  result = APSLogErrorAt();
  *(*(*(a1 + 32) + 8) + 24) = -16710;
  return result;
}

void __getCRSSessionControllerClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x277CCA890] currentHandler];
  [v0 handleFailureInFunction:objc_msgSend(MEMORY[0x277CCACA8] file:"stringWithUTF8String:" lineNumber:"Class getCRSSessionControllerClass(void)_block_invoke") description:{@"APEndpointManagerCarPlay.m", 77, @"Unable to find class %s", "CRSSessionController"}];
  __break(1u);
}

void __getCRSSessionControllerClass_block_invoke_cold_2(void *a1)
{
  v2 = [MEMORY[0x277CCA890] currentHandler];
  [v2 handleFailureInFunction:objc_msgSend(MEMORY[0x277CCACA8] file:"stringWithUTF8String:" lineNumber:"void *CarPlayServicesLibrary(void)") description:{@"APEndpointManagerCarPlay.m", 73, @"%s", *a1}];
  __break(1u);
}

void APEndpointDisplayDescriptionCreateWithDisplayInfo_cold_3(const void *a1)
{
  APSLogErrorAt();

  CFRelease(a1);
}

uint64_t sdpsession_stopNetworkClock(uint64_t a1)
{
  result = CMBaseObjectGetDerivedStorage();
  if (*(result + 49))
  {
    v4 = result;
    *(result + 64) = 0;
    v5 = *(result + 32);
    if (v5)
    {
      if (gLogCategory_APSenderSessionSDP <= 40)
      {
        if (gLogCategory_APSenderSessionSDP != -1 || (v6 = _LogCategory_Initialize(), v5 = *(v4 + 32), v6))
        {
          OUTLINED_FUNCTION_6(&gLogCategory_APSenderSessionSDP, "OSStatus sdpsession_stopNetworkClock(APSenderSessionRef)", v3, "[%{ptr}] <AirPlayClock> %###s: Stopping network clock [%{ptr}] for legacy session");
          v5 = *(v4 + 32);
        }
      }

      VTable = CMBaseObjectGetVTable();
      v8 = *(VTable + 16);
      result = VTable + 16;
      v9 = *(v8 + 88);
      if (v9)
      {
        result = v9(v5, a1);
      }

      *(v4 + 49) = 0;
    }

    else
    {

      return APSLogErrorAt();
    }
  }

  return result;
}

uint64_t sdpsession_ensureTransportControlStreamResumedSync(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  v3 = *(DerivedStorage + 132);
  FigSimpleMutexUnlock();
  if (v3)
  {
    return 0;
  }

  FigSimpleMutexLock();
  v4 = sdpsession_ensureTransportControlStreamCreated(a1);
  if (!v4)
  {
    v6 = *(DerivedStorage + 88);
    if (v6)
    {
      v7 = CFRetain(v6);
      FigSimpleMutexUnlock();
      if (v7)
      {
        v8 = *(*(CMBaseObjectGetVTable() + 16) + 8);
        if (v8)
        {
          v9 = v8(v7);
          if (v9)
          {
            v5 = v9;
          }

          else
          {
            v10 = *(*(CMBaseObjectGetVTable() + 16) + 16);
            if (v10)
            {
              v5 = v10(v7);
              if (!v5)
              {
                FigSimpleMutexLock();
                *(DerivedStorage + 132) = 1;
                CMNotificationCenterGetDefaultLocalCenter();
                FigNotificationCenterAddWeakListener();
                FigSimpleMutexUnlock();
                CMNotificationCenterGetDefaultLocalCenter();
                FigDispatchAsyncPostNotification();
LABEL_16:
                CFRelease(v7);
                return v5;
              }
            }

            else
            {
              v5 = 4294954514;
            }
          }
        }

        else
        {
          v5 = 4294954514;
        }

        APSLogErrorAt();
        goto LABEL_16;
      }
    }

    else
    {
      FigSimpleMutexUnlock();
    }

    APSLogErrorAt();
    return 4294895475;
  }

  v5 = v4;
  FigSimpleMutexUnlock();
  APSLogErrorAt();
  return v5;
}

void sdpsession_teardownTransportControlStream(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  sdpsession_stopNetworkClock(a1);
  v3 = *(DerivedStorage + 16);
  v4 = *(*(CMBaseObjectGetVTable() + 16) + 56);
  if (v4)
  {
    v4(v3);
  }

  sdpsession_invalidateTransportControlStream(a1, 0);
  FigSimpleMutexLock();
  v5 = *(DerivedStorage + 96);
  if (v5)
  {
    CFRelease(v5);
    *(DerivedStorage + 96) = 0;
  }

  *(DerivedStorage + 133) = 0;
  FigSimpleMutexUnlock();
  v6 = *(DerivedStorage + 56);
  if (v6)
  {
    CFRelease(v6);
    *(DerivedStorage + 56) = 0;
  }

  *(DerivedStorage + 48) = 0;
}

uint64_t sdpsession_ensureStartedInternal_cold_4(int a1, uint64_t a2, uint64_t a3)
{
  if (a1 != -1)
  {
    return OUTLINED_FUNCTION_4_0(&gLogCategory_APSenderSessionSDP, "OSStatus sdpsession_startNetworkClock(APSenderSessionRef)", a3, "### Failed to start senderNetworkClock err = %#m\n");
  }

  result = _LogCategory_Initialize();
  if (result)
  {
    return OUTLINED_FUNCTION_4_0(&gLogCategory_APSenderSessionSDP, "OSStatus sdpsession_startNetworkClock(APSenderSessionRef)", a3, "### Failed to start senderNetworkClock err = %#m\n");
  }

  return result;
}

uint64_t sdpsession_sendPendingSetVolumeCommand_cold_3(uint64_t *a1, uint64_t a2, int *a3)
{
  v5 = *a1;
  v6 = *(*(CMBaseObjectGetVTable() + 16) + 56);
  if (!v6)
  {
    v8 = -12782;
LABEL_5:
    result = APSLogErrorAt();
    goto LABEL_6;
  }

  result = v6(a2, 1937141612, v5, 0);
  v8 = result;
  if (result)
  {
    goto LABEL_5;
  }

LABEL_6:
  *a3 = v8;
  return result;
}

uint64_t sdpsession_sendPendingSetVolumeCommand_cold_4(int a1, uint64_t a2, uint64_t a3)
{
  if (a1 != -1)
  {
    return OUTLINED_FUNCTION_2(&gLogCategory_APSenderSessionSDP, "OSStatus sdpsession_sendPendingSetVolumeCommand(APSenderSessionRef)", a3, "[AirPlayVolume] [%{ptr}] %###s sending pending volume change = %.3f dB.\n");
  }

  result = _LogCategory_Initialize();
  if (result)
  {
    return OUTLINED_FUNCTION_2(&gLogCategory_APSenderSessionSDP, "OSStatus sdpsession_sendPendingSetVolumeCommand(APSenderSessionRef)", a3, "[AirPlayVolume] [%{ptr}] %###s sending pending volume change = %.3f dB.\n");
  }

  return result;
}

void sdpsession_teardownStreamInternal_cold_3(uint64_t a1, uint64_t *a2)
{
  v4 = *(*(CMBaseObjectGetVTable() + 16) + 56);
  if (v4)
  {
    v4(a1, 1953719408, 0, 0);
  }

  v5 = *a2;

  sdpsession_teardownTransportControlStream(v5);
}

uint64_t tokenAuthentication_authenticateEndpointInternal_cold_5(_DWORD *a1)
{
  result = APSLogErrorAt();
  *a1 = -71803;
  return result;
}

uint64_t tokenAuthentication_authenticateEndpointInternal_cold_11(_DWORD *a1)
{
  result = APSLogErrorAt();
  *a1 = -71803;
  return result;
}

uint64_t tokenAuthentication_authenticateEndpointInternal_cold_12(_DWORD *a1)
{
  result = APSLogErrorAt();
  *a1 = -71800;
  return result;
}

uint64_t audioEngineCarPlay_SetProperty(const void *a1, const void *a2, const void *a3)
{
  HIDWORD(v23) = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!CFEqual(a2, @"ForceZeroBasedSampleTimes"))
  {
    if (CFEqual(a2, @"cryptor"))
    {
      if (!a3 || (v9 = CFGetTypeID(a3), v9 == APSCryptorGetTypeID()))
      {
        v29 = 0;
        v30 = &v29;
        OUTLINED_FUNCTION_6_8(COERCE_DOUBLE(0x2000000000));
        OUTLINED_FUNCTION_4_12();
        OUTLINED_FUNCTION_8_5(v10, v11, v20, v21, v22, v23, block[0], 0x40000000, __audioEngineCarPlay_setCryptor_block_invoke, &unk_27849C8B8, v25, v26, v27);
        if (*(v30 + 6))
        {
          APSLogErrorAt();
          OUTLINED_FUNCTION_5_7();
          HIDWORD(v23) = a1;
          if (!a1)
          {
            return HIDWORD(v23);
          }

LABEL_29:
          APSLogErrorAt();
          return HIDWORD(v23);
        }

LABEL_18:
        _Block_object_dispose(&v29, 8);
        HIDWORD(v23) = 0;
        return HIDWORD(v23);
      }
    }

    else if (CFEqual(a2, @"audioSource"))
    {
      if (!a3 || (v12 = CFGetTypeID(a3), v12 == FigEndpointAudioSourceGetTypeID()))
      {
        v29 = 0;
        v30 = &v29;
        v13 = OUTLINED_FUNCTION_6_8(COERCE_DOUBLE(0x2000000000));
        CFRetain(a1);
        if (a3)
        {
          CFRetain(a3);
        }

        v14 = *(v13 + 16);
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 0x40000000;
        block[2] = __audioEngineCarPlay_setAudioSource_block_invoke;
        block[3] = &unk_27849C8E0;
        v25 = &v29;
        v26 = v13;
        v27 = a3;
        v28 = a1;
        dispatch_async(v14, block);
        if (*(v30 + 6))
        {
          APSLogErrorAt();
          OUTLINED_FUNCTION_5_7();
          HIDWORD(v23) = a1;
          if (!a1)
          {
            return HIDWORD(v23);
          }

          goto LABEL_29;
        }

        goto LABEL_18;
      }
    }

    else
    {
      if (!CFEqual(a2, @"messageRingCapacity"))
      {
        v19 = -12784;
LABEL_28:
        HIDWORD(v23) = v19;
        return HIDWORD(v23);
      }

      if (a3)
      {
        v16 = CFGetTypeID(a3);
        if (v16 == CFNumberGetTypeID())
        {
          v29 = 0;
          v30 = &v29;
          OUTLINED_FUNCTION_6_8(COERCE_DOUBLE(0x2000000000));
          OUTLINED_FUNCTION_4_12();
          OUTLINED_FUNCTION_8_5(v17, v18, v20, v21, v22, v23, block[0], 0x40000000, __audioEngineCarPlay_setMessageRingCapacity_block_invoke, &unk_27849C908, v25, v26, v27);
          OUTLINED_FUNCTION_5_7();
          HIDWORD(v23) = a1;
          if (!a1)
          {
            return HIDWORD(v23);
          }

          goto LABEL_29;
        }
      }
    }

    APSLogErrorAt();
    v19 = -72071;
    goto LABEL_28;
  }

  v8 = CFGetInt64() != 0;
  if (*(DerivedStorage + 8) != v8)
  {
    *(DerivedStorage + 8) = v8;
    if (gLogCategory_APAudioEngineCarPlay <= 50 && (gLogCategory_APAudioEngineCarPlay != -1 || _LogCategory_Initialize()))
    {
      OUTLINED_FUNCTION_2(&gLogCategory_APAudioEngineCarPlay, "OSStatus audioEngineCarPlay_SetProperty(CMBaseObjectRef, CFStringRef, CFTypeRef)", v7, "[%{ptr}] ForceZeroBasedSampleTimes changed to %s\n");
    }
  }

  return HIDWORD(v23);
}

uint64_t audioEngineCarPlay_HandleDataReady(uint64_t a1)
{
  result = CMBaseObjectGetDerivedStorage();
  if (*(result + 136))
  {
    v3 = result;
    OUTLINED_FUNCTION_19_1();
    kdebug_trace();
    if (*(v3 + 4))
    {
      v4 = 0;
      while (1)
      {
        DerivedStorage = CMBaseObjectGetDerivedStorage();
        v52 = 0;
        v53[0] = 0;
        v50 = 0;
        v51 = 0;
        v48 = 0;
        v49 = 0;
        v47 = 0;
        v46 = 0;
        memset(v45, 0, sizeof(v45));
        memset(v44, 0, sizeof(v44));
        v6 = *(DerivedStorage + 184);
        v7 = *(CMBaseObjectGetVTable() + 16);
        if (*v7 < 2uLL)
        {
          goto LABEL_23;
        }

        v8 = v7[8];
        if (v8)
        {
          if (!v8(v6, 1))
          {
            goto LABEL_23;
          }
        }

        APMessageRingGetNextFreeBacking(*(DerivedStorage + 200));
        if (APSTransportMessageGetAudioDataPointer())
        {
          goto LABEL_22;
        }

        v9 = *(DerivedStorage + 192);
        if (v9 && (v10 = *(*(CMBaseObjectGetVTable() + 16) + 8)) != 0)
        {
          v11 = v10(v9);
        }

        else
        {
          v11 = 0;
        }

        v12 = *(DerivedStorage + 184);
        v13 = v51;
        v14 = v52;
        v15 = *(CMBaseObjectGetVTable() + 16);
        if (*v15 < 2uLL)
        {
          goto LABEL_22;
        }

        v16 = v15[9];
        if (!v16)
        {
          goto LABEL_22;
        }

        v17 = v16(v12, v14, v13 - v11, v45, 1, &v51, &v46, v44);
        if (v17 != -16774 && v17 != 0)
        {
          goto LABEL_22;
        }

        if (v46)
        {
          break;
        }

LABEL_23:
        if (v53[0])
        {
          CFRelease(v53[0]);
        }

        if (v46)
        {
          if (++v4 < *(v3 + 4))
          {
            continue;
          }
        }

        goto LABEL_52;
      }

      *&v45[16] = 0;
      v19 = *v44;
      *&v45[22] = 0;
      if (*(DerivedStorage + 236))
      {
        v20 = *(DerivedStorage + 232);
      }

      else
      {
        if (*(DerivedStorage + 8))
        {
          v20 = *v44;
        }

        else
        {
          v20 = 0;
        }

        *(DerivedStorage + 232) = v20;
        *(DerivedStorage + 236) = 1;
      }

      *&v45[18] = v19 - v20;
      if (!APSTransportMessageSetAudioDataHeader() && !APSTransportMessageCreateReferencingBBufWithAudioDataLength())
      {
        if (!*(DerivedStorage + 192))
        {
          goto LABEL_43;
        }

        if (!APSTransportMessageGetAudioAADPointer())
        {
          OUTLINED_FUNCTION_19_1();
          if (!CMBlockBufferGetDataPointer(v21, v22, v23, v24, v25))
          {
            if (v11)
            {
              OUTLINED_FUNCTION_19_1();
              if (CMBlockBufferGetDataPointer(v26, v27, v28, v29, v30))
              {
                goto LABEL_22;
              }

              v41 = v50;
            }

            else
            {
              v41 = 0;
            }

            v31 = *(DerivedStorage + 192);
            v33 = v48;
            v32 = v49;
            v34 = v47;
            v35 = v51;
            v36 = *(*(CMBaseObjectGetVTable() + 16) + 16);
            if (v36 && !v36(v31, v32, v33, v34, v35, v34, v35, v41, v11))
            {
LABEL_43:
              v37 = *(DerivedStorage + 200);
              v42 = *MEMORY[0x277CC0898];
              v43 = *(MEMORY[0x277CC0898] + 16);
              if (!APMessageRingEnqueueMessageForSending(v37, v53[0], &v42))
              {
                goto LABEL_23;
              }
            }
          }
        }
      }

LABEL_22:
      APSLogErrorAt();
      goto LABEL_23;
    }

LABEL_52:
    v38 = CMBaseObjectGetDerivedStorage();
    if (gLogCategory_APAudioEngineCarPlay <= 30 && (gLogCategory_APAudioEngineCarPlay != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_APAudioEngineCarPlay, "OSStatus audioEngineCarPlay_sendAudioBurst(APAudioEngineRef)", 33554462, "[%{ptr}] Starting audio burst\n", a1);
    }

    NextUnsentMessage = APMessageRingGetNextUnsentMessage(*(v38 + 200), 0);
    if (NextUnsentMessage)
    {
      v40 = NextUnsentMessage;
      do
      {
        (*(v38 + 224))(*(v38 + 208), 1734700576, v40);
        APMessageRingMarkMessageAsSent(*(v38 + 200), v40);
        v40 = APMessageRingGetNextUnsentMessage(*(v38 + 200), 0);
      }

      while (v40);
    }

    if (gLogCategory_APAudioEngineCarPlay <= 30 && (gLogCategory_APAudioEngineCarPlay != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_APAudioEngineCarPlay, "OSStatus audioEngineCarPlay_sendAudioBurst(APAudioEngineRef)", 33554462, "[%{ptr}] Finished audio burst (sent %u messages / %u ms)\n", a1, *(v38 + 4), ((1000 * *(v38 + 4) * *(v38 + 164)) / *(v38 + 144)));
    }

    OUTLINED_FUNCTION_19_1();
    return kdebug_trace();
  }

  return result;
}

uint64_t conduitsource_Invalidate(const void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!*DerivedStorage)
  {
    v3 = DerivedStorage;
    if (gLogCategory_APAudioSourceConduit <= 30 && (gLogCategory_APAudioSourceConduit != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_APAudioSourceConduit, "OSStatus conduitsource_Invalidate(CMBaseObjectRef)", 33554462, "APAudioSourceConduit %p invalidating.\n", a1);
    }

    *v3 = 1;
  }

  return 0;
}

uint64_t conduitsource_Finalize(const void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  conduitsource_Invalidate(a1);
  MirroredRingBufferFree();
  DerivedStorage[13] = 0;
  DerivedStorage[14] = 0;
  v3 = DerivedStorage[15];
  if (v3)
  {
    dispatch_release(v3);
    DerivedStorage[15] = 0;
  }

  result = DerivedStorage[26];
  if (result)
  {
    result = FigSimpleMutexDestroy();
    DerivedStorage[26] = 0;
  }

  return result;
}

uint64_t conduitsource_AcquireBuffer(uint64_t a1, unint64_t a2, void *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a3)
  {
    v6 = DerivedStorage;
    if (*(DerivedStorage + 1))
    {
      APSLogErrorAt();
      return 4294950524;
    }

    else
    {
      v7 = *(DerivedStorage + 76);
      if (*(DerivedStorage + 64) - v7 + *(DerivedStorage + 72) < a2)
      {
        return 4294950523;
      }

      else
      {
        result = 0;
        *a3 = *(v6 + 48) + (*(v6 + 68) & v7);
      }
    }
  }

  else
  {
    APSLogErrorAt();
    return 4294950525;
  }

  return result;
}

void realTimeAudioEngine_timeAnnounceWithResetSignalHandler(uint64_t a1)
{
  v1 = FigCFWeakReferenceHolderCopyReferencedObject();
  if (v1)
  {
    v2 = v1;
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    if (gLogCategory_APAudioEngineRealTime <= 50 && (gLogCategory_APAudioEngineRealTime != -1 || OUTLINED_FUNCTION_4(&gLogCategory_APAudioEngineRealTime)))
    {
      OUTLINED_FUNCTION_42();
      OUTLINED_FUNCTION_2(&gLogCategory_APAudioEngineRealTime, "void realTimeAudioEngine_timeAnnounceWithResetSignalHandler(void *)", v4, "%@ TimeAnnounce Reset Signal Handler\n");
    }

    *(DerivedStorage + 304) = 1;
    realTimeAudioEngine_handleTimeAnnounce(v2);

    CFRelease(v2);
  }
}