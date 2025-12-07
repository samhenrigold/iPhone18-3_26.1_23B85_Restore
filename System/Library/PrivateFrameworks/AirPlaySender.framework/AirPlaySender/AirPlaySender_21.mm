void __APAudioEngineRealTimeCreate_block_invoke(uint64_t a1, int a2)
{
  specific = dispatch_get_specific(kAPAudioEngineRealTimeDispatchSpecificKey_WeakAudioEngineHolder);
  state64 = 0;
  notify_get_state(a2, &state64);
  if (specific)
  {
    v4 = state64;
    v5 = FigCFWeakReferenceHolderCopyReferencedObject();
    if (v5)
    {
      v6 = v5;
      v7 = v4 / 1000.0;
      CMBaseObjectGetDerivedStorage();
      if (gLogCategory_APAudioEngineRealTime <= 50 && (gLogCategory_APAudioEngineRealTime != -1 || OUTLINED_FUNCTION_4(&gLogCategory_APAudioEngineRealTime)))
      {
        OUTLINED_FUNCTION_2(&gLogCategory_APAudioEngineRealTime, "OSStatus APAudioEngineRealTimeCreate(CFAllocatorRef, APSNetworkClockRef, CFDictionaryRef, FigEndpointStreamAudioEngineRef *)_block_invoke", v8, "%@ DarwinNotification setting audioLatency to %1.3f\n");
      }

      realTimeAudioEngine_setAudioLatency(v6, 1, v7);
      CFRelease(v6);
    }
  }

  else
  {
    APSLogErrorAt();
  }
}

uint64_t realTimeAudioEngine_removeStreamNotificationListeners(uint64_t result, uint64_t a2)
{
  if (result && a2)
  {
    CMNotificationCenterGetDefaultLocalCenter();
    OUTLINED_FUNCTION_4_13();
    FigNotificationCenterRemoveWeakListener();
    CMNotificationCenterGetDefaultLocalCenter();
    OUTLINED_FUNCTION_3_14();
    FigNotificationCenterRemoveWeakListener();
    CMNotificationCenterGetDefaultLocalCenter();
    OUTLINED_FUNCTION_2_17();

    return FigNotificationCenterRemoveWeakListener();
  }

  return result;
}

uint64_t realTimeAudioEngine_PerformanceReportNotificationListener(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a5)
  {
    result = *(DerivedStorage + 120);
    if (result)
    {
      if (APSDynamicLatencyManagerAddPerformanceReport())
      {

        return APSLogErrorAt();
      }

      else
      {
        return FigCFDictionaryGetBooleanIfPresent();
      }
    }
  }

  else
  {
    result = APSLogErrorAt();
    if (gLogCategory_APAudioEngineRealTime <= 90)
    {
      if (gLogCategory_APAudioEngineRealTime != -1 || (result = OUTLINED_FUNCTION_4_3(&gLogCategory_APAudioEngineRealTime), result))
      {
        OUTLINED_FUNCTION_34();
        OUTLINED_FUNCTION_2_1();
        return LogPrintF(v8, v9, v10, v11);
      }
    }
  }

  return result;
}

uint64_t realTimeAudioEngine_updateDynamicLatencyIfNeeded(uint64_t a1, int a2)
{
  result = *(CMBaseObjectGetDerivedStorage() + 120);
  if (result)
  {
    if (a2)
    {
      result = APSDynamicLatencyManagerReset();
      if (result)
      {
        return APSLogErrorAt();
      }
    }

    else
    {
      result = APSDynamicLatencyManagerUpdate();
      if (result)
      {
        return APSLogErrorAt();
      }
    }
  }

  return result;
}

uint64_t realTimeAudioEngine_CopyMessageAtSequenceNumber(uint64_t a1, unsigned int a2, void *a3)
{
  v12 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!a3)
  {
    APSLogErrorAt();
    return 4294951815;
  }

  v6 = DerivedStorage;
  FigSimpleMutexLock();
  v7 = *(v6 + 544);
  if (!v7)
  {
    FigSimpleMutexUnlock();
    return 0;
  }

  v8 = CFRetain(v7);
  FigSimpleMutexUnlock();
  if (!v8)
  {
    return 0;
  }

  MessageAtSequenceNumber = APMessageRingGetMessageAtSequenceNumber(v8, a2, 0, &v12);
  v10 = MessageAtSequenceNumber;
  if (MessageAtSequenceNumber)
  {
    CFRetain(MessageAtSequenceNumber);
  }

  *a3 = v10;
  CFRelease(v8);
  return v12;
}

uint64_t realTimeAudioEngine_handleTimeAnnounce(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v52 = **&MEMORY[0x277CC0898];
  v49 = 0;
  v50 = 0;
  v51 = 0;
  cf = 0;
  v48 = 0;
  v46 = 0;
  context = 0u;
  v45 = 0u;
  OUTLINED_FUNCTION_1_22(722863604);
  if (*(DerivedStorage + 8))
  {
    goto LABEL_37;
  }

  APSAudioFormatDescriptionGetSampleRate();
  HostTimeClock = CMClockGetHostTimeClock();
  CMClockGetTime(&v52, HostTimeClock);
  OUTLINED_FUNCTION_7_6();
  time2 = *(DerivedStorage + 280);
  if (CMTimeCompare(&time1, &time2) > 0 || *(DerivedStorage + 304))
  {
    CMTimeMake(&time2, 1, 1);
    lhs = v52;
    CMTimeAdd(&time1, &lhs, &time2);
    *(DerivedStorage + 280) = time1;
  }

  else if (!*(DerivedStorage + 305))
  {
    goto LABEL_37;
  }

  v4 = CMClockGetHostTimeClock();
  v5 = *(DerivedStorage + 272);
  time2 = v52;
  CMSyncConvertTime(&time1, &time2, v4, v5);
  OUTLINED_FUNCTION_15_1(time1.value, blockBufferOut, v31, v33, v35, v37, v39, lhs.value, *&lhs.timescale, lhs.epoch, v42, time2.value, *&time2.timescale, time2.epoch);
  if ((time1.flags & 0x1D) != 1 || (value = time1.value, v8 = *(DerivedStorage + 264), v7 = *(DerivedStorage + 272), time2 = time1, CMSyncConvertTime(&time1, &time2, v7, v8), OUTLINED_FUNCTION_15_1(time1.value, blockBufferOuta, v32, v34, v36, v38, v40, lhs.value, *&lhs.timescale, lhs.epoch, v42, time2.value, *&time2.timescale, time2.epoch), (time1.flags & 0x1D) != 1))
  {
    OUTLINED_FUNCTION_7_4();
    APSLogErrorAt();
    APSSignalErrorAt();
    goto LABEL_37;
  }

  v9 = time1.value;
  v10 = *(DerivedStorage + 72);
  OUTLINED_FUNCTION_7_6();
  v11 = CMClockConvertHostTimeToSystemUnits(&time1);
  v12 = *(*(CMBaseObjectGetVTable() + 16) + 16);
  if (!v12)
  {
    v23 = 4294954514;
LABEL_19:
    APSLogErrorAt();
    if (gLogCategory_APAudioEngineRealTime <= 90 && (gLogCategory_APAudioEngineRealTime != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_APAudioEngineRealTime, "void realTimeAudioEngine_handleTimeAnnounce(FigEndpointStreamAudioEngineRef)", 33554522, "### [%{ptr}] ConvertUpTicksToNetworkTime failed, err %#m\n", a1, v23);
    }

    goto LABEL_37;
  }

  v13 = v12(v10, v11, &v49);
  if (v13)
  {
    v23 = v13;
    goto LABEL_19;
  }

  CMBaseObject = APSNetworkClockGetCMBaseObject();
  v15 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v15)
  {
    goto LABEL_22;
  }

  v16 = *MEMORY[0x277CBECE8];
  if (v15(CMBaseObject, *MEMORY[0x277CEA260], *MEMORY[0x277CBECE8], &cf))
  {
    goto LABEL_22;
  }

  v17 = FigCFEqual();
  v18 = CMBaseObjectGetDerivedStorage();
  if (v17)
  {
    v19 = *(v18 + 304);
    v20 = OUTLINED_FUNCTION_23();
    if (CMBlockBufferCreateWithMemoryBlock(v20, v21, 0x18uLL, v16, 0, 0, 0x18uLL, 1u, &v48) || (v19 ? (v22 = 1951421520) : (v22 = 1953526896), LODWORD(time1.value) = value, *(&time1.value + 4) = 1000000000 * v51 + ((1000000000 * HIDWORD(v50)) >> 32), time1.flags = v9, time1.epoch = v49, APSTransportMessageSetPTPTimeAnnounce()))
    {
LABEL_43:
      APSLogErrorAt();
LABEL_22:
      APSLogErrorAt();
      goto LABEL_37;
    }
  }

  else
  {
    v24 = *(v18 + 304);
    v25 = OUTLINED_FUNCTION_23();
    if (CMBlockBufferCreateWithMemoryBlock(v25, v26, 0x10uLL, v16, 0, 0, 0x10uLL, 1u, &v48))
    {
      goto LABEL_43;
    }

    v22 = v24 ? 1950436942 : 1952542318;
    LODWORD(time1.value) = value;
    HIDWORD(time1.value) = v51 - 2085978496;
    time1.timescale = HIDWORD(v50);
    time1.flags = v9;
    if (APSTransportMessageSetTimeAnnounce())
    {
      goto LABEL_43;
    }
  }

  APSRealTimeWritableRead();
  BYTE4(v46) = *(DerivedStorage + 304);
  *(&v45 + 1) = v48;
  LODWORD(v46) = v22;
  CFSetApplyFunction(*(DerivedStorage + 168), realTimeAudioEngine_timeAnnounceHoseApplier, &context);
  if (gLogCategory_APAudioEngineRealTime <= 50 && (gLogCategory_APAudioEngineRealTime != -1 || OUTLINED_FUNCTION_4(&gLogCategory_APAudioEngineRealTime)))
  {
    OUTLINED_FUNCTION_7_6();
    CMTimeGetSeconds(&time1);
    OUTLINED_FUNCTION_2(&gLogCategory_APAudioEngineRealTime, "void realTimeAudioEngine_handleTimeAnnounce(FigEndpointStreamAudioEngineRef)", v27, "%@ Time announce: rtpTime %u, rtpTimeRemote %u; net: %1.7f (%llu); nowHost: %1.7f\n");
  }

  *(DerivedStorage + 304) = 0;
LABEL_37:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v48)
  {
    CFRelease(v48);
  }

  return OUTLINED_FUNCTION_1_22(722863608);
}

void realTimeAudioEngine_updateArrivalToRenderTicks(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v2 = *(DerivedStorage + 168);
  if (v2 && CFSetGetCount(v2) >= 1)
  {
    context = -1;
    CFSetApplyFunction(*(DerivedStorage + 168), realTimeAudioEngine_updateArrivalToRenderTicksApplier, &context);
    v3 = context;
  }

  else
  {
    v3 = 0;
  }

  *(DerivedStorage + 632) = v3;
}

void realTimeAudioEngine_updateCryptor(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  cf = 0;
  if (!*(DerivedStorage + 40))
  {
    v3 = DerivedStorage;
    v4 = *(DerivedStorage + 200);
    if (v4)
    {
      CMBaseObject = FigEndpointStreamGetCMBaseObject();
      v6 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      if (v6)
      {
        v6(CMBaseObject, @"Cryptor", *MEMORY[0x277CBECE8], &cf);
        v4 = cf;
      }

      else
      {
        v4 = 0;
      }
    }

    v7 = *(v3 + 216);
    if (v7 != v4)
    {
      if (gLogCategory_APAudioEngineRealTime <= 50)
      {
        if (gLogCategory_APAudioEngineRealTime != -1 || OUTLINED_FUNCTION_4(&gLogCategory_APAudioEngineRealTime))
        {
          OUTLINED_FUNCTION_2(&gLogCategory_APAudioEngineRealTime, "void realTimeAudioEngine_updateCryptor(FigEndpointStreamAudioEngineRef)", v2, "%@ Setting cryptor [%{ptr}] from stream [%{ptr}]\n");
        }

        v4 = cf;
        v7 = *(v3 + 216);
      }

      *(v3 + 216) = v4;
      if (v4)
      {
        CFRetain(v4);
      }

      if (v7)
      {
        CFRelease(v7);
      }

      v8 = cf;
      FigSimpleMutexLock();
      v9 = *(v3 + 728);
      *(v3 + 728) = v8;
      if (v8)
      {
        CFRetain(v8);
      }

      if (v9)
      {
        CFRelease(v9);
      }

      FigSimpleMutexUnlock();
      v4 = cf;
    }

    if (v4)
    {
      CFRelease(v4);
    }
  }
}

uint64_t realTimeAudioEngine_Flush(uint64_t a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v19 = *MEMORY[0x277CC0898];
  if (*(DerivedStorage + 8))
  {
    return 0;
  }

  v3 = DerivedStorage;
  Int64 = CFDictionaryGetInt64();
  CMTimeIfPresent = FigCFDictionaryGetCMTimeIfPresent();
  if (gLogCategory_APAudioEngineRealTime <= 50)
  {
    if (gLogCategory_APAudioEngineRealTime != -1 || (CMTimeIfPresent = OUTLINED_FUNCTION_4(&gLogCategory_APAudioEngineRealTime), CMTimeIfPresent))
    {
      OUTLINED_FUNCTION_34();
      CMTimeIfPresent = OUTLINED_FUNCTION_2(&gLogCategory_APAudioEngineRealTime, "OSStatus realTimeAudioEngine_Flush(FigEndpointStreamAudioEngineRef, CFDictionaryRef)", v13, "%@ Flush. \n");
    }
  }

  if (Int64)
  {
    Int64 = *(v3 + 312);
    OUTLINED_FUNCTION_5_6(CMTimeIfPresent, v6, v7, v8, v9, v10, v11, v12, v17, v18, v19);
    if (Int64)
    {
      CFRetain(Int64);
      v14 = 0;
      goto LABEL_11;
    }
  }

  else
  {
    OUTLINED_FUNCTION_5_6(0, v6, v7, v8, v9, v10, v11, v12, v17, v18, v19);
  }

  v14 = 1;
LABEL_11:
  if (APSAtomicMessageQueueSendMessage())
  {
    return 0;
  }

  APSLogErrorAt();
  if ((v14 & 1) == 0)
  {
    CFRelease(Int64);
  }

  v15 = 4294951816;
  APSLogErrorAt();
  return v15;
}

void realTimeAudioEngine_resumeInternal(uint64_t *a1)
{
  v151 = *MEMORY[0x277D85DE8];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v5 = DerivedStorage;
  v137 = 0.0;
  cf = 0;
  if (*(DerivedStorage + 8))
  {
    APSLogErrorAt();
    OUTLINED_FUNCTION_33();
    LODWORD(v17) = -15487;
    goto LABEL_153;
  }

  if (*(DerivedStorage + 136))
  {
    OUTLINED_FUNCTION_33();
    LODWORD(v17) = 0;
    goto LABEL_153;
  }

  OUTLINED_FUNCTION_5_8();
  if (v8 ^ v9 | v7 && (v6 != -1 || OUTLINED_FUNCTION_4(&gLogCategory_APAudioEngineRealTime)))
  {
    OUTLINED_FUNCTION_42();
    OUTLINED_FUNCTION_2(&gLogCategory_APAudioEngineRealTime, "void realTimeAudioEngine_resumeInternal(void *)", v10, "%@ Resume Internal\n");
  }

  v11 = a1[1];
  if (!v11 || (v12 = COERCE_DOUBLE(CFDictionaryGetValue(v11, *MEMORY[0x277CD6280])), v13 = CFDictionaryGetValue(a1[1], *MEMORY[0x277CD62A0]), v12 == 0.0))
  {
    APSLogErrorAt();
    OUTLINED_FUNCTION_33();
    LODWORD(v17) = -15483;
    goto LABEL_153;
  }

  v14 = v13;
  OUTLINED_FUNCTION_5_8();
  if (v8 ^ v9 | v7 && (v16 != -1 || OUTLINED_FUNCTION_4(&gLogCategory_APAudioEngineRealTime)))
  {
    v126 = *(v5 + 32);
    v128 = v12;
    OUTLINED_FUNCTION_2(&gLogCategory_APAudioEngineRealTime, "void realTimeAudioEngine_resumeInternal(void *)", v15, "%@ Setting audio source: %{ptr}\n");
  }

  CMBaseObject = *(v5 + 184);
  *(v5 + 184) = v12;
  CFRetain(*&v12);
  if (CMBaseObject)
  {
    CFRelease(CMBaseObject);
  }

  v18 = *(v5 + 192);
  if (v18)
  {
    CFRelease(v18);
    *(v5 + 192) = 0;
  }

  v19 = MEMORY[0x277CBECE8];
  if (v14 && CFDataGetLength(v14) >= 0x28)
  {
    *&v1 = COERCE_DOUBLE(CFDataGetBytePtr(v14));
    v20 = *v1;
    v21 = *(v1 + 1);
    v150 = *(v1 + 4);
    *bytes = v20;
    v149 = v21;
    v22 = APSAudioFormatDescriptionCreateWithASBD();
    if (v22)
    {
      LODWORD(v17) = v22;
      goto LABEL_81;
    }

    *bytes = 0;
    OUTLINED_FUNCTION_5_8();
    if (v8 ^ v9 | v7 && (v23 != -1 || _LogCategory_Initialize()))
    {
      APSAudioFormatDescriptionCopyDebugString();
      OUTLINED_FUNCTION_5_8();
      if (v8 ^ v9 | v7)
      {
        if (v25 != -1 || OUTLINED_FUNCTION_4(&gLogCategory_APAudioEngineRealTime))
        {
          v128 = *&v1;
          v130 = *bytes;
          v126 = *(v5 + 32);
          OUTLINED_FUNCTION_2(&gLogCategory_APAudioEngineRealTime, "void realTimeAudioEngine_resumeInternal(void *)", v24, "%@ TransportASBD: [%{asbd}]. transportAudioFormat: %@");
        }
      }
    }

    v26 = realTimeAudioEngine_setTransportAudioFormatInternal(*a1, v1);
    if (v26)
    {
      LODWORD(v17) = v26;
      goto LABEL_81;
    }
  }

  if (*(v5 + 40))
  {
    *&v1 = COERCE_DOUBLE(CMBaseObjectGetDerivedStorage());
    value_4.value = 0;
    if (FigCFEqual() && APSSettingsGetIntWithDefault())
    {
      Null = APSCryptorGetNull();
      value_4.value = CFRetain(Null);
      OUTLINED_FUNCTION_5_8();
      if (v8 ^ v9 | v7 && (v29 != -1 || OUTLINED_FUNCTION_4(&gLogCategory_APAudioEngineRealTime)))
      {
        v126 = *(v1 + 4);
        OUTLINED_FUNCTION_2(&gLogCategory_APAudioEngineRealTime, "OSStatus realTimeAudioEngine_generateEncryptionKeyAndCryptorInternal(FigEndpointStreamAudioEngineRef)", v28, "%@ Null Cryptor created\n");
      }

      CMBaseObject = 0;
      v35 = *(v1 + 26);
      *(v1 + 26) = 0;
      if (!v35)
      {
        goto LABEL_55;
      }
    }

    else
    {
      RandomBytes();
      CMBaseObject = CFDataCreate(*v19, bytes, 32);
      v30 = APSCryptorChaCha20Poly1305Create();
      if (v30)
      {
        LODWORD(v17) = v30;
        APSLogErrorAt();
        if (CMBaseObject)
        {
LABEL_60:
          CFRelease(CMBaseObject);
        }

LABEL_61:
        if (value_4.value)
        {
          CFRelease(value_4.value);
        }

        if (v17)
        {
          goto LABEL_81;
        }

        goto LABEL_64;
      }

      OUTLINED_FUNCTION_5_8();
      if (v8 ^ v9 | v7 && (v32 != -1 || OUTLINED_FUNCTION_4(&gLogCategory_APAudioEngineRealTime)))
      {
        v126 = *(v1 + 4);
        OUTLINED_FUNCTION_2(&gLogCategory_APAudioEngineRealTime, "OSStatus realTimeAudioEngine_generateEncryptionKeyAndCryptorInternal(FigEndpointStreamAudioEngineRef)", v31, "%@ ChaCha Cryptor created with shared key\n");
      }

      v35 = *(v1 + 26);
      *(v1 + 26) = CMBaseObject;
      if (CMBaseObject)
      {
        CFRetain(CMBaseObject);
      }

      if (!v35)
      {
LABEL_55:
        v17 = *(v1 + 27);
        v36 = value_4.value;
        *(v1 + 27) = value_4.value;
        if (v36)
        {
          CFRetain(v36);
        }

        if (v17)
        {
          CFRelease(v17);
          LODWORD(v17) = 0;
        }

        if (CMBaseObject)
        {
          goto LABEL_60;
        }

        goto LABEL_61;
      }
    }

    CFRelease(v35);
    goto LABEL_55;
  }

  OUTLINED_FUNCTION_5_8();
  if (v8 ^ v9 | v7 && (v33 != -1 || OUTLINED_FUNCTION_4(&gLogCategory_APAudioEngineRealTime)))
  {
    OUTLINED_FUNCTION_42();
    OUTLINED_FUNCTION_2(&gLogCategory_APAudioEngineRealTime, "void realTimeAudioEngine_resumeInternal(void *)", v34, "%@ Not creating own cryptor, will get from stream\n");
  }

LABEL_64:
  v1 = *v19;
  v37 = APTransportStreamSendBackingProviderCreateWithStreamID();
  if (v37)
  {
    LODWORD(v17) = v37;
    goto LABEL_81;
  }

  v38 = APTransportStreamSendBackingProviderAcquireBBuf();
  if (v38)
  {
    LODWORD(v17) = v38;
    goto LABEL_81;
  }

  AudioDataPointer = APSTransportMessageGetAudioDataPointer();
  if (AudioDataPointer)
  {
    LODWORD(v17) = AudioDataPointer;
    goto LABEL_81;
  }

  OUTLINED_FUNCTION_5_8();
  if (v8 ^ v9 | v7 && (v41 != -1 || OUTLINED_FUNCTION_4(&gLogCategory_APAudioEngineRealTime)))
  {
    v126 = *(v5 + 32);
    v128 = *(v5 + 240);
    OUTLINED_FUNCTION_2(&gLogCategory_APAudioEngineRealTime, "void realTimeAudioEngine_resumeInternal(void *)", v40, "%@ providerAudioDataWithRedundancyBackingSize=%zu\n");
  }

  if (!*(v5 + 248))
  {
    CMBaseObject = APSNetworkClockGetCMBaseObject();
    v46 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (!v46)
    {
      LODWORD(v17) = -12782;
      goto LABEL_81;
    }

    v47 = v46(CMBaseObject, *MEMORY[0x277CEA258], v1, v5 + 248);
    if (v47)
    {
      LODWORD(v17) = v47;
      goto LABEL_81;
    }
  }

  CMBaseObject = CMBaseObjectGetDerivedStorage();
  value_4.value = 0;
  v145.value = 0;
  v143.value = 0;
  v42 = arc4random();
  v43 = *(CMBaseObject + 48);
  OUTLINED_FUNCTION_5_8();
  if (v8 ^ v9 | v7 && (v45 != -1 || OUTLINED_FUNCTION_4(&gLogCategory_APAudioEngineRealTime)))
  {
    v126 = *(CMBaseObject + 32);
    OUTLINED_FUNCTION_2(&gLogCategory_APAudioEngineRealTime, "OSStatus realTimeAudioEngine_ensureMessageRingCreatedInternal(FigEndpointStreamAudioEngineRef)", v44, "%@ Creating message ring\n");
  }

  v48 = *(CMBaseObject + 48);
  *bytes = CFRetain(*(CMBaseObject + 232));
  *&bytes[8] = realTimeAudioEngine_apsRTPPacketHandlerCleanUp;
  *&v149 = realTimeAudioEngine_createRedundantAudioDataMessageBBuf;
  *(&v149 + 1) = realTimeAudioEngine_relinquishMessageBacking;
  v49 = APSRTPPacketHandlerCreate(v1, 1, v48 + 1, bytes, &value_4.value);
  if (v49)
  {
    LODWORD(v17) = v49;
LABEL_182:
    APSLogErrorAt();
    goto LABEL_102;
  }

  if (FigCFEqual() && APSSettingsGetIntWithDefault())
  {
    v43 = -1;
  }

  v50 = APMessageRingCreate(v1, *(CMBaseObject + 56), v42, *(CMBaseObject + 232), 1735550308, 0, &v145.value);
  if (v50)
  {
    LODWORD(v17) = v50;
    goto LABEL_182;
  }

  v51 = APMessageRingCreate(v1, *(CMBaseObject + 56), v42, *(CMBaseObject + 232), 1734700576, 0, &v143.value);
  if (v51)
  {
    LODWORD(v17) = v51;
    goto LABEL_182;
  }

  APMessageRingSetMaxPacketRedundancy(v143.value, *(CMBaseObject + 44));
  APMessageRingSetTargetPayloadRedundancy(v143.value, *(CMBaseObject + 44));
  APMessageRingSetMaxPacketRedundancy(v145.value, *(CMBaseObject + 44));
  APMessageRingSetTargetPayloadRedundancy(v145.value, v43);
  v52 = *(CMBaseObject + 224);
  v53 = value_4.value;
  if (value_4.value)
  {
    CFRetain(value_4.value);
  }

  *(CMBaseObject + 224) = v53;
  if (v52)
  {
    CFRelease(v52);
  }

  FigSimpleMutexLock();
  v54 = *(CMBaseObject + 544);
  v55 = v143.value;
  if (v143.value)
  {
    CFRetain(v143.value);
  }

  *(CMBaseObject + 544) = v55;
  if (v54)
  {
    CFRelease(v54);
  }

  v56 = *(CMBaseObject + 552);
  v57 = v145.value;
  if (v145.value)
  {
    CFRetain(v145.value);
  }

  *(CMBaseObject + 552) = v57;
  if (v56)
  {
    CFRelease(v56);
  }

  FigSimpleMutexUnlock();
  LODWORD(v17) = 0;
LABEL_102:
  if (value_4.value)
  {
    CFRelease(value_4.value);
  }

  if (v145.value)
  {
    CFRelease(v145.value);
  }

  if (v143.value)
  {
    CFRelease(v143.value);
  }

  if (v17)
  {
    goto LABEL_81;
  }

  CMBaseObject = *a1;
  v58 = CMBaseObjectGetDerivedStorage();
  *bytes = *MEMORY[0x277CC0898];
  *&v149 = *(MEMORY[0x277CC0898] + 16);
  *&value_4.value = *bytes;
  value_4.epoch = v149;
  value = 0;
  *&v145.value = *bytes;
  v145.epoch = v149;
  if (!*(v58 + 184))
  {
    *&v1 = COERCE_DOUBLE("realTimeAudioEngine_resumeSubPhase2_Internal");
    APSLogErrorAt();
    v125 = APSSignalErrorAt();
    if (!v125)
    {
      goto LABEL_137;
    }

    LODWORD(v17) = v125;
LABEL_81:
    APSLogErrorAt();
    OUTLINED_FUNCTION_33();
    goto LABEL_153;
  }

  v59 = v58;
  RandomBytes();
  APSAudioFormatDescriptionGetSampleRate();
  v61 = v60;
  v62 = *(v59 + 184);
  ASBD = APSAudioFormatDescriptionGetASBD();
  v64 = APAudioSourceCompressionCreate(v1, v62, ASBD, (v59 + 192));
  if (v64)
  {
    LODWORD(v17) = v64;
LABEL_192:
    APSLogErrorAt();
    goto LABEL_81;
  }

  v65 = CFGetAllocator(CMBaseObject);
  v66 = CMTimebaseCreateWithSourceClock(v65, *(v59 + 248), (v59 + 256));
  if (v66)
  {
    LODWORD(v17) = v66;
    goto LABEL_192;
  }

  FigCFDictionaryGetCMTimeIfPresent();
  if ((bytes[12] & 0x1D) != 1)
  {
    APSLogErrorAt();
    LODWORD(v17) = -15481;
    goto LABEL_81;
  }

  v67 = *(v59 + 256);
  HostTimeClock = CMClockGetHostTimeClock();
  v69 = *(v59 + 248);
  *&time.value = *bytes;
  time.epoch = v149;
  CMSyncConvertTime(&v143, &time, HostTimeClock, v69);
  v134 = *MEMORY[0x277CC08F0];
  *&time.value = *MEMORY[0x277CC08F0];
  v70 = *(MEMORY[0x277CC08F0] + 16);
  time.epoch = v70;
  v71 = CMTimebaseSetRateAndAnchorTime(v67, 1.0, &time, &v143);
  if (v71)
  {
    LODWORD(v17) = v71;
    goto LABEL_192;
  }

  v72 = CFGetAllocator(CMBaseObject);
  v73 = CMTimebaseCreateWithSourceClock(v72, *(v59 + 248), (v59 + 264));
  if (v73)
  {
    LODWORD(v17) = v73;
    goto LABEL_192;
  }

  v74 = v61;
  CMTimeMake(&value_4, value, v61);
  v143 = value_4;
  v75 = OUTLINED_FUNCTION_20_1();
  v79 = CMTimebaseSetRateAndAnchorTime(v76, v75, v77, v78);
  if (v79)
  {
    LODWORD(v17) = v79;
    goto LABEL_192;
  }

  *(v59 + 280) = v134;
  *(v59 + 296) = v70;
  *(v59 + 304) = 257;
  *&v80 = (*(v59 + 140) * v74);
  *&v81 = (*(v59 + 148) * v74);
  OUTLINED_FUNCTION_5_8();
  if (v8 ^ v9 | v7 && (v83 != -1 || OUTLINED_FUNCTION_4(&gLogCategory_APAudioEngineRealTime)))
  {
    v128 = v80;
    v130 = v81;
    v126 = *(v59 + 32);
    OUTLINED_FUNCTION_2(&gLogCategory_APAudioEngineRealTime, "OSStatus realTimeAudioEngine_resumeSubPhase2_Internal(FigEndpointStreamAudioEngineRef, CFDictionaryRef)", v82, "%@ maxAudioLatency = %d, maxAudioLatencyAdjust = %d\n");
  }

  CMTimeMake(&v145, SLODWORD(v80), v61);
  CMTimeMake(&time, SLODWORD(v81), v61);
  OUTLINED_FUNCTION_24_1(v84, v85, v86, v87, v88, v89, v90, v91, v126, v128, v130, v132, *&v134, *(&v134 + 1), 0.0, 0.0, *&lhs.value, *&lhs.timescale, *&lhs.epoch, v140, *&time.value, *&time.timescale, *&time.epoch, v142, *&v143.value, *&v143.timescale, *&v143.epoch, v144, *&v145.value);
  CMTimeAdd(v92, &lhs, &time);
  v145 = v143;
  v93 = CFGetAllocator(CMBaseObject);
  v94 = CMTimebaseCreateWithSourceClock(v93, *(v59 + 248), (v59 + 272));
  if (v94)
  {
    LODWORD(v17) = v94;
    goto LABEL_192;
  }

  v102 = *(v59 + 272);
  OUTLINED_FUNCTION_24_1(*&value_4.value, v95, v96, v97, v98, v99, v100, v101, v127, v129, v131, v133, v135, v136, v137, *&cf, *&lhs.value, *&lhs.timescale, *&lhs.epoch, v140, *&value_4.value, *&value_4.timescale, *&value_4.epoch, v142, *&v143.value, *&v143.timescale, *&v143.epoch, v144, *&v145.value);
  CMTimeSubtract(v103, &time, &lhs);
  v104 = OUTLINED_FUNCTION_20_1();
  v107 = CMTimebaseSetRateAndAnchorTime(v102, v104, v105, v106);
  if (v107)
  {
    LODWORD(v17) = v107;
    goto LABEL_192;
  }

  realTimeAudioEngine_updateHostRateAndAnchorTimeRelativeToRemoteRTPTimebase(CMBaseObject);
  v108 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, *(v59 + 128));
  *(v59 + 320) = v108;
  dispatch_set_context(v108, CMBaseObject);
  dispatch_source_set_event_handler_f(*(v59 + 320), realTimeAudioEngine_periodicTasksTimerEntry);
  dispatch_source_set_timer(*(v59 + 320), 0, 0x3B9ACA00uLL, 0x2FAF080uLL);
  v109 = CMBaseObjectGetDerivedStorage();
  v110 = APSRTCReportingAgentCreate();
  if (v110)
  {
    if (gLogCategory_APAudioEngineRealTime <= 90)
    {
      CMBaseObject = v110;
      if (gLogCategory_APAudioEngineRealTime != -1 || _LogCategory_Initialize())
      {
        LogPrintF(&gLogCategory_APAudioEngineRealTime, "OSStatus realTimeAudioEngine_initializeRTCReporting(FigEndpointStreamAudioEngineRef)", 33554522, "### Could not create RTCReporting agent. err=%d\n", CMBaseObject);
      }
    }
  }

  else
  {
    if (gLogCategory_APAudioEngineRealTime <= 40 && (gLogCategory_APAudioEngineRealTime != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_APAudioEngineRealTime, "OSStatus realTimeAudioEngine_initializeRTCReporting(FigEndpointStreamAudioEngineRef)", 33554472, "%@ Created RTCReporting agent. %p\n", v109[4], v109[45]);
    }

    v109[49] = 0;
    APSThreadSafeDictionaryCreate();
    if (v109[50])
    {
      v111 = OUTLINED_FUNCTION_23();
      v109[51] = CFArrayCreateMutable(v111, v112, v113);
    }
  }

LABEL_137:
  v114 = realTimeAudioEngine_resumeSubPhase3_Internal(*a1);
  if (v114)
  {
    LODWORD(v17) = v114;
    goto LABEL_81;
  }

  FigSimpleMutexLock();
  v115 = *(v5 + 544);
  if (v115)
  {
    CMBaseObject = CFRetain(v115);
  }

  else
  {
    CMBaseObject = 0;
  }

  v116 = *(v5 + 552);
  if (v116)
  {
    *&v1 = COERCE_DOUBLE(CFRetain(v116));
  }

  else
  {
    *&v1 = 0.0;
  }

  FigSimpleMutexUnlock();
  v117 = realTimeAudioEngine_tas_Resume(v5 + 560, *(v5 + 176), *(v5 + 192), *(v5 + 216), *(v5 + 248), *(v5 + 256), *(v5 + 264), *(v5 + 224), *(v5 + 232), CMBaseObject, v1);
  if (v117)
  {
    LODWORD(v17) = v117;
    APSLogErrorAt();
  }

  else
  {
    if (*(v5 + 96))
    {
      v118 = *(v5 + 104);
      if (*a1)
      {
        v119 = CFRetain(*a1);
      }

      else
      {
        v119 = 0;
      }

      dispatch_async_f(v118, v119, realTimeAudioEngine_renewAudioIOAssertionDispatch);
    }

    if (FigCFEqual())
    {
      realTimeAudioEngine_NotifyIsPlayingAmbientAudio(1);
    }

    LODWORD(v17) = 0;
    *(v5 + 136) = 1;
  }

LABEL_153:
  if (v137 != 0.0)
  {
    APTransportStreamSendBackingProviderRelinquishBBuf();
  }

  if (v17)
  {
    realTimeAudioEngine_performSuspensionGutsInternal(*a1, 0);
    if (*(CMBaseObjectGetDerivedStorage() + 360))
    {
      Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
      if (Mutable)
      {
        v124 = Mutable;
        CFDictionarySetValue(Mutable, @"pointOfFailure", @"Session failed to start");
        FigCFDictionarySetInt32();
        FigCFDictionarySetInt32();
        CFDictionarySetValue(v124, @"sessionType", @"AudioRealTime");
        APSRTCReportingAgentSendEvent();
        CFRelease(v124);
      }
    }
  }

  else
  {
    v120 = CMBaseObjectGetDerivedStorage();
    if (*(v120 + 360))
    {
      v121 = v120;
      v122 = CMClockGetHostTimeClock();
      CMClockGetTime(bytes, v122);
      *(v121 + 368) = *bytes;
      *(v121 + 384) = v149;
    }
  }

  if (CMBaseObject)
  {
    CFRelease(CMBaseObject);
  }

  if (*&v1 != 0.0)
  {
    CFRelease(v1);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  *(a1 + 10) = v17;
  dispatch_async_f(*(v5 + 80), a1, realTimeAudioEngine_resumeComplete);
}

void realTimeAudioEngine_renewAudioIOAssertionDispatch(const void *a1)
{
  v2 = *(CMBaseObjectGetDerivedStorage() + 96);
  if (v2 && (dispatch_time(0, 1000000000 * v2), APSAudioIOAssertionTimingControllerAssertUntilTime()))
  {
    APSLogErrorAt();
    if (!a1)
    {
      return;
    }
  }

  else if (!a1)
  {
    return;
  }

  CFRelease(a1);
}

void realTimeAudioEngine_NotifyIsPlayingAmbientAudio(int a1)
{
  v14 = 0;
  v15 = &v14;
  v16 = 0x2000000000;
  v17 = 0;
  v1 = a1 != 0;
  if (IsAppleTV())
  {
    block = MEMORY[0x277D85DD0];
    v10 = 0x40000000;
    v11 = __realTimeAudioEngine_NotifyIsPlayingAmbientAudio_block_invoke;
    v12 = &unk_27849CA70;
    v13 = &v14;
    if (realTimeAudioEngine_NotifyIsPlayingAmbientAudio_sTokenOnce != -1)
    {
      dispatch_once(&realTimeAudioEngine_NotifyIsPlayingAmbientAudio_sTokenOnce, &block);
    }

    if (*(v15 + 6))
    {
      APSLogErrorAt();
      if (gLogCategory_APAudioEngineRealTime <= 90 && (gLogCategory_APAudioEngineRealTime != -1 || OUTLINED_FUNCTION_4_3(&gLogCategory_APAudioEngineRealTime)))
      {
        goto LABEL_21;
      }
    }

    else
    {
      v2 = notify_set_state(realTimeAudioEngine_NotifyIsPlayingAmbientAudio_sToken, v1);
      *(v15 + 6) = v2;
      if (v2)
      {
        APSLogErrorAt();
        if (gLogCategory_APAudioEngineRealTime <= 90 && (gLogCategory_APAudioEngineRealTime != -1 || OUTLINED_FUNCTION_4_3(&gLogCategory_APAudioEngineRealTime)))
        {
          goto LABEL_21;
        }
      }

      else
      {
        v3 = notify_post("com.apple.airplay.isPlayingAmbientAudioChanged");
        *(v15 + 6) = v3;
        if (!v3)
        {
          if (gLogCategory_APAudioEngineRealTime > 50 || gLogCategory_APAudioEngineRealTime == -1 && !_LogCategory_Initialize())
          {
            goto LABEL_12;
          }

          v4 = 33554482;
          v8 = v1;
          v5 = &gLogCategory_APAudioEngineRealTime;
          v6 = "void realTimeAudioEngine_NotifyIsPlayingAmbientAudio(Boolean)";
          v7 = "IsPlayingAmbientAudioChanged state=%llu\n";
LABEL_10:
          LogPrintF(v5, v6, v4, v7, v8, block, v10, v11, v12, v13, v14);
          goto LABEL_12;
        }

        APSLogErrorAt();
        if (gLogCategory_APAudioEngineRealTime <= 90 && (gLogCategory_APAudioEngineRealTime != -1 || OUTLINED_FUNCTION_4_3(&gLogCategory_APAudioEngineRealTime)))
        {
LABEL_21:
          OUTLINED_FUNCTION_21_2();
          OUTLINED_FUNCTION_2_1();
          goto LABEL_10;
        }
      }
    }
  }

LABEL_12:
  _Block_object_dispose(&v14, 8);
}

void realTimeAudioEngine_performSuspensionGutsInternal(uint64_t a1, int a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  realTimeAudioEngine_tas_SuspendInternal(DerivedStorage + 560);
  FigSimpleMutexUnlock();
  v5 = *(DerivedStorage + 320);
  if (v5)
  {
    dispatch_source_cancel(v5);
    if (!*(DerivedStorage + 328))
    {
      dispatch_resume(*(DerivedStorage + 320));
    }

    v6 = *(DerivedStorage + 320);
    if (v6)
    {
      dispatch_source_cancel(*(DerivedStorage + 320));
      dispatch_release(v6);
      *(DerivedStorage + 320) = 0;
    }
  }

  *(DerivedStorage + 328) = 0;
  v7 = MEMORY[0x277CC1970];
  if (a2)
  {
    v8 = CMBaseObjectGetDerivedStorage();
    v88 = **&MEMORY[0x277CC0898];
    v85 = v88;
    if (*(v8 + 360))
    {
      v9 = v8;
      HostTimeClock = CMClockGetHostTimeClock();
      CMClockGetTime(&v88, HostTimeClock);
      v80 = v88;
      v73 = *(v9 + 368);
      OUTLINED_FUNCTION_6_9();
      CMTimeSubtract(v13, v11, v12);
      Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
      if (Mutable)
      {
        v22 = Mutable;
        OUTLINED_FUNCTION_8_6(Mutable, v15, v16, v17, v18, v19, v20, v21, v63, v65, v67, v69, v71, v73, *(&v73 + 1), v76, v78, *&v80.value, v80.epoch, v83, *&v85.value, v85.epoch);
        FigCFDictionarySetInt64();
        v23 = APSStatsHistogramCopyValuesAsRTCString();
        APSStatsHistogramGetTotalSampleCount();
        FigCFDictionarySetInt64();
        CFDictionarySetValue(v22, @"senderRenderDeadlineHistogram", v23);
        v24 = CMBaseObjectGetDerivedStorage();
        *&v81 = 0;
        LODWORD(v74) = 0;
        if (!*(v24 + 360))
        {
          goto LABEL_19;
        }

        v25 = v24;
        v26 = APSThreadSafeDictionaryCopyMutableDictionary();
        v27 = FigCFDictionaryCopyArrayOfValues();
        if (v27)
        {
          v28 = v27;
          *&v72 = v23;
          *(&v72 + 1) = a1;
          if (CFArrayGetCount(v27) >= 1)
          {
            v29 = 0;
            do
            {
              CFArrayGetValueAtIndex(v28, v29);
              v30 = APSThreadSafeDictionaryCopyMutableDictionary();
              if (!v30)
              {
                break;
              }

              v31 = v30;
              if (FigCFDictionaryGetInt64IfPresent())
              {
                FigCFDictionaryGetInt32IfPresent();
                mach_absolute_time();
                UpTicksToSeconds();
                FigCFDictionarySetInt32();
                CFDictionaryRemoveValue(v31, @"AudioStreamLastStartTime");
              }

              CFArrayAppendValue(*(v25 + 408), v31);
              CFRelease(v31);
              ++v29;
            }

            while (v29 < CFArrayGetCount(v28));
          }

          CFRelease(v28);
          v7 = MEMORY[0x277CC1970];
          if (v26)
          {
            goto LABEL_18;
          }
        }

        else
        {
          APSLogErrorAt();
          if (v26)
          {
LABEL_18:
            CFRelease(v26);
          }
        }

LABEL_19:
        if (CFEqual(*(v9 + 16), *MEMORY[0x277CC1960]))
        {
          FigCFDictionarySetValue();
          FigCFDictionarySetInt64();
        }

        else
        {
          v32 = CFEqual(*(v9 + 16), *v7);
          if (v32)
          {
            if (OUTLINED_FUNCTION_8_6(v32, v33, v34, v35, v36, v37, v38, v39, v64, v66, v68, v70, v72, v74, v75, v77, v79, v81, v82, v84, v86, v87) < 60.0)
            {
              goto LABEL_27;
            }

            FigCFDictionarySetValue();
          }
        }

        FigCFDictionarySetValue();
        CFDictionarySetValue(v22, @"sessionType", @"AudioRealTime");
        FigCFDictionarySetInt32();
        v40 = APSRTCReportingAgentSendEvent();
        if (gLogCategory_APAudioEngineRealTime <= 50)
        {
          if (gLogCategory_APAudioEngineRealTime != -1 || (v40 = OUTLINED_FUNCTION_4(&gLogCategory_APAudioEngineRealTime), v40))
          {
            OUTLINED_FUNCTION_8_6(v40, v41, v42, v43, v44, v45, v46, v47, v64, v66, v68, v70, v72, v74, v75, v77, v79, v81, v82, v84, v86, v87);
            OUTLINED_FUNCTION_2(&gLogCategory_APAudioEngineRealTime, "void realTimeAudioEngine_sendSessionEndedEvent(FigEndpointStreamAudioEngineRef)", v62, "%@ durationSecs %u, maxHoseCount %d, self clusterType %u\n");
            if (!v23)
            {
              goto LABEL_29;
            }

            goto LABEL_28;
          }
        }

LABEL_27:
        if (!v23)
        {
LABEL_29:
          CFRelease(v22);
          goto LABEL_30;
        }

LABEL_28:
        CFRelease(v23);
        goto LABEL_29;
      }
    }
  }

LABEL_30:
  v48 = CMBaseObjectGetDerivedStorage();
  v49 = v48[45];
  if (v49)
  {
    CFRelease(v49);
    v48[45] = 0;
  }

  v50 = v48[50];
  if (v50)
  {
    CFRelease(v50);
    v48[50] = 0;
  }

  v51 = v48[51];
  if (v51)
  {
    CFRelease(v51);
    v48[51] = 0;
  }

  v52 = *(DerivedStorage + 184);
  if (v52)
  {
    CFRelease(v52);
    *(DerivedStorage + 184) = 0;
  }

  v53 = *(DerivedStorage + 192);
  if (v53)
  {
    CFRelease(v53);
    *(DerivedStorage + 192) = 0;
  }

  v54 = *(DerivedStorage + 216);
  if (v54)
  {
    CFRelease(v54);
    *(DerivedStorage + 216) = 0;
  }

  v55 = *(DerivedStorage + 224);
  if (v55)
  {
    CFRelease(v55);
    *(DerivedStorage + 224) = 0;
  }

  v56 = *(DerivedStorage + 232);
  if (v56)
  {
    CFRelease(v56);
    *(DerivedStorage + 232) = 0;
  }

  *(DerivedStorage + 240) = 0;
  FigSimpleMutexLock();
  v57 = *(DerivedStorage + 544);
  if (v57)
  {
    CFRelease(v57);
    *(DerivedStorage + 544) = 0;
  }

  v58 = *(DerivedStorage + 552);
  if (v58)
  {
    CFRelease(v58);
    *(DerivedStorage + 552) = 0;
  }

  FigSimpleMutexUnlock();
  realTimeAudioEngine_serviceRenderDeadlineMessageQueue(a1);
  if (FigCFEqual())
  {
    realTimeAudioEngine_NotifyIsPlayingAmbientAudio(0);
  }

  realTimeAudioEngine_updateDynamicLatencyIfNeeded(a1, 0);
  *(DerivedStorage + 136) = 0;
  v59 = *(DerivedStorage + 256);
  if (v59)
  {
    CFRelease(v59);
    *(DerivedStorage + 256) = 0;
  }

  v60 = *(DerivedStorage + 264);
  if (v60)
  {
    CFRelease(v60);
    *(DerivedStorage + 264) = 0;
  }

  v61 = *(DerivedStorage + 272);
  if (v61)
  {
    CFRelease(v61);
    *(DerivedStorage + 272) = 0;
  }
}

uint64_t realTimeAudioEngine_periodicTasksTimerEntry(uint64_t a1)
{
  v87 = *MEMORY[0x277D85DE8];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  OUTLINED_FUNCTION_1_22(722863596);
  if (*(DerivedStorage + 8))
  {
    return OUTLINED_FUNCTION_1_22(722863600);
  }

  realTimeAudioEngine_updateCryptor(a1);
  if (!CFSetGetCount(*(DerivedStorage + 168)))
  {
    return OUTLINED_FUNCTION_1_22(722863600);
  }

  v3 = CMBaseObjectGetDerivedStorage();
  v4 = MEMORY[0x277CC0898];
  v84 = *(MEMORY[0x277CC0898] + 8);
  v83 = **&MEMORY[0x277CC0898];
  v82 = v83;
  if (*(v3 + 8))
  {
    return OUTLINED_FUNCTION_1_22(722863600);
  }

  v5 = v3;
  APSNetworkClockLogCurrentNetworkTime();
  realTimeAudioEngine_handleTimeAnnounce(a1);
  HostTimeClock = CMClockGetHostTimeClock();
  Time = CMClockGetTime(&v82, HostTimeClock);
  OUTLINED_FUNCTION_40(Time, v8, v9, v10, v11, v12, v13, v14, v58, v61, v64, v67, v70, v73, rhs.value, *&rhs.timescale, rhs.epoch, v77, time2.value, *&time2.timescale, time2.epoch, v79, time1.value, *&time1.timescale, time1.epoch, v81, *&v82.value);
  time2 = *(v5 + 456);
  if (CMTimeCompare(&time1, &time2) >= 1)
  {
    v15 = *(v5 + 272);
    APSAudioFormatDescriptionGetSampleRate();
    CMTimebaseGetTimeWithTimeScale(&time1, v15, v16, kCMTimeRoundingMethod_RoundHalfAwayFromZero);
    value = time1.value;
    flags = time1.flags;
    timescale = time1.timescale;
    if ((time1.flags & 0x1D) != 1)
    {
      OUTLINED_FUNCTION_7_4();
      APSLogErrorAt();
      APSSignalErrorAt();
      return OUTLINED_FUNCTION_1_22(722863600);
    }

    epoch = time1.epoch;
    FramesPerPacket = APSRealTimeWritableRead();
    if (v83.flags)
    {
      time2 = v83;
      rhs.value = value;
      rhs.timescale = timescale;
      rhs.flags = flags;
      rhs.epoch = epoch;
      CMTimeSubtract(&time1, &time2, &rhs);
      v29 = time1.value;
      v84 = *&time1.timescale;
      APSAudioFormatDescriptionGetSampleRate();
      time2.value = v29;
      *&time2.timescale = v84;
      CMTimeConvertScale(&time1, &time2, v30, kCMTimeRoundingMethod_RoundHalfAwayFromZero);
      v28 = time1.value;
      v84 = *&time1.timescale;
      FramesPerPacket = APSAudioFormatDescriptionGetFramesPerPacket();
      v27 = v28 / FramesPerPacket;
    }

    else
    {
      v27 = 0;
      v28 = *v4;
    }

    v31 = *(v5 + 56);
    v32 = 0.0;
    if (v31)
    {
      v32 = ((v27 / v31) * 100.0);
    }

    if (gLogCategory_APAudioEngineRealTime > 50)
    {
      goto LABEL_16;
    }

    if (gLogCategory_APAudioEngineRealTime == -1)
    {
      FramesPerPacket = OUTLINED_FUNCTION_4(&gLogCategory_APAudioEngineRealTime);
      if (!FramesPerPacket)
      {
LABEL_16:
        OUTLINED_FUNCTION_41(FramesPerPacket, v20, v21, v22, v23, v24, v25, v26, v59, v62, v65, v68, Seconds, v74, rhs.value, *&rhs.timescale, rhs.epoch, v77, time2.value, *&time2.timescale, time2.epoch, v79, time1.value, *&time1.timescale, time1.epoch, v81, *&v82.value);
        *&rhs.value = *(v5 + 432);
        OUTLINED_FUNCTION_6_9();
        CMTimeAdd(v37, v35, v36);
        *(v5 + 456) = time1;
        goto LABEL_17;
      }

      v31 = *(v5 + 56);
    }

    v33 = *(v5 + 32);
    time1.value = v28;
    *&time1.timescale = v84;
    v68 = *&v32;
    Seconds = CMTimeGetSeconds(&time1);
    v62 = v27;
    v65 = v31;
    v59 = v33;
    FramesPerPacket = OUTLINED_FUNCTION_2(&gLogCategory_APAudioEngineRealTime, "void realTimeAudioEngine_performPeriodicTasks(FigEndpointStreamAudioEngineRef)", v34, "%@ Buffer fullness count %d Capacity %lu Fullness percent %.2f%% FullnessTime (secs): %1.4f\n");
    goto LABEL_16;
  }

LABEL_17:
  realTimeAudioEngine_serviceRenderDeadlineMessageQueue(a1);
  realTimeAudioEngine_updateArrivalToRenderTicks(a1);
  updated = realTimeAudioEngine_updateHostRateAndAnchorTimeRelativeToRemoteRTPTimebase(a1);
  OUTLINED_FUNCTION_40(updated, v39, v40, v41, v42, v43, v44, v45, v59, v62, v65, v68, Seconds, v74, rhs.value, *&rhs.timescale, rhs.epoch, v77, time2.value, *&time2.timescale, time2.epoch, v79, time1.value, *&time1.timescale, time1.epoch, v81, *&v82.value);
  time2 = *(v5 + 504);
  v46 = CMTimeCompare(&time1, &time2);
  if (v46 >= 1)
  {
    if (gLogCategory_APAudioEngineRealTime <= 50)
    {
      if (gLogCategory_APAudioEngineRealTime != -1 || (v46 = OUTLINED_FUNCTION_4(&gLogCategory_APAudioEngineRealTime), v46))
      {
        v60 = *(v5 + 32);
        v63 = *(v5 + 352);
        v46 = OUTLINED_FUNCTION_2(&gLogCategory_APAudioEngineRealTime, "void realTimeAudioEngine_performPeriodicTasks(FigEndpointStreamAudioEngineRef)", v48, "%@ renderDeadlineHistogram: %@\n");
      }
    }

    OUTLINED_FUNCTION_41(v46, v47, v48, v49, v50, v51, v52, v53, v60, v63, v66, v69, v72, v75, rhs.value, *&rhs.timescale, rhs.epoch, v77, time2.value, *&time2.timescale, time2.epoch, v79, time1.value, *&time1.timescale, time1.epoch, v81, *&v82.value);
    *&rhs.value = *(v5 + 480);
    OUTLINED_FUNCTION_6_9();
    CMTimeAdd(v56, v54, v55);
    *(v5 + 504) = time1;
  }

  return OUTLINED_FUNCTION_1_22(722863600);
}

const void *realTimeAudioEngine_tas_transcodeAndSendTimerEntry(const __CFArray *a1)
{
  result = CFArrayGetValueAtIndex(a1, 0);
  if (result)
  {
    v2 = result;
    OUTLINED_FUNCTION_1_22(722863636);

    return realTimeAudioEngine_tas_transcodeAndSendEntry(v2);
  }

  return result;
}

uint64_t realTimeAudioEngine_tas_transcodeAndSendEntry(uint64_t a1)
{
  v165 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_22(722863580);
  APSTimeProfilerTaskBegin();
  if (!FigSimpleMutexTryLock())
  {
    goto LABEL_177;
  }

  if (!*(a1 + 96))
  {
    goto LABEL_176;
  }

  __swp(v1, (a1 + 232));
  if ((v1 & 0x8000000000000000) == 0)
  {
    memset(time1, 0, 24);
    APSAudioFormatDescriptionGetSampleRate();
    CMTimeMake(time1, v1, v3);
    *time1 += *(a1 + 240);
    APSRealTimeWritableWrite();
  }

  v145 = *MEMORY[0x277CC0898];
  *time1 = *MEMORY[0x277CC0898];
  v4 = MEMORY[0x277CC08F0];
  v5 = *(MEMORY[0x277CC0898] + 16);
  *&time1[16] = v5;
  *&time1[24] = 0;
  while (APSAtomicMessageQueueReadMessage())
  {
    v164.value = *time1;
    v6 = *&time1[12];
    v164.timescale = *&time1[8];
    v7 = *&time1[16];
    v8 = *&time1[24];
    *&time2.value = v145;
    time2.epoch = v5;
    lhs = *v4;
    APSAudioFormatDescriptionGetSampleRate();
    v10 = v9;
    v11 = *(a1 + 160);
    v12 = *(*(CMBaseObjectGetVTable() + 16) + 24);
    if (v12)
    {
      v13 = v12(v11);
      if (!v13)
      {
        if ((v6 & 0x1D) == 1)
        {
          v14 = *(a1 + 184);
          v15 = *(a1 + 192);
          time.value = v164.value;
          time.timescale = v164.timescale;
          time.flags = v6;
          time.epoch = v7;
          CMSyncConvertTime(&lhs, &time, v14, v15);
          v156 = lhs;
          CMTimeConvertScale(&time, &v156, v10, kCMTimeRoundingMethod_RoundHalfAwayFromZero);
          lhs = time;
          if (gLogCategory_APAudioEngineRealTime <= 40)
          {
            if (gLogCategory_APAudioEngineRealTime != -1 || (OUTLINED_FUNCTION_18_4(), _LogCategory_Initialize()))
            {
              value = lhs.value;
              OUTLINED_FUNCTION_18_4();
              LogPrintF(&gLogCategory_APAudioEngineRealTime, "OSStatus realTimeAudioEngine_tas_processFlush(APRTAETranscoderAndSender *, CMTime, APSRealTimeSignalRef)", (v16 + 10), "Using provided first RTP timestamp: %u", value);
            }
          }
        }

        else
        {
          CMTimebaseGetTimeWithTimeScale(&lhs, *(a1 + 192), v10, kCMTimeRoundingMethod_RoundHalfAwayFromZero);
        }

        if ((lhs.flags & 0x1D) != 1)
        {
          OUTLINED_FUNCTION_17();
          APSLogErrorAt();
          v17 = APSSignalErrorAt();
          goto LABEL_30;
        }

        lhs.value += *(a1 + 240);
        APSRealTimeWritableRead();
        APSRealTimeWritableWrite();
        v18 = lhs.value;
        v19 = *(a1 + 216);
        v20 = *(a1 + 224);
        LOWORD(time.value) = 0;
        LOWORD(v156.value) = 0;
        if (APMessageRingFlush(v19, &time))
        {
          goto LABEL_35;
        }

        if (!v20)
        {
          goto LABEL_27;
        }

        if (APMessageRingFlush(v20, &v156))
        {
LABEL_35:
          APSLogErrorAt();
          if (v8)
          {
            goto LABEL_28;
          }
        }

        else
        {
          value_low = LOWORD(time.value);
          v22 = LOWORD(v156.value);
          if (LOWORD(time.value) != LOWORD(v156.value) && gLogCategory_APAudioEngineRealTime <= 90)
          {
            if (gLogCategory_APAudioEngineRealTime != -1)
            {
              goto LABEL_23;
            }

            OUTLINED_FUNCTION_18_4();
            if (_LogCategory_Initialize())
            {
              value_low = LOWORD(time.value);
              v22 = LOWORD(v156.value);
LABEL_23:
              v127 = value_low;
              v128 = v22;
              LogPrintF(&gLogCategory_APAudioEngineRealTime, "OSStatus realTimeAudioEngine_tas_flushRingAndHoses(APRTAETranscoderAndSender *, uint32_t)", 33554522, "### %@ FLUSH: MESSAGE RINGS OUT OF SYNC! messageSeqNum=%hu rfc2198SeqNum%hu\n", *(a1 + 8));
            }
          }

LABEL_27:
          realTimeAudioEngine_tas_flushHoses(a1, LOWORD(time.value), (v10 / 8 + v18));
          if (v8)
          {
LABEL_28:
            APSRealTimeSignalRaise();
          }
        }

        v17 = 0;
        goto LABEL_30;
      }

      v17 = v13;
    }

    else
    {
      v17 = -12782;
    }

    APSLogErrorAt();
LABEL_30:
    if (*&time1[24])
    {
      CFRelease(*&time1[24]);
    }

    if (v17)
    {
      APSLogErrorAt();
      goto LABEL_178;
    }
  }

  v23 = *(a1 + 160);
  v24 = *(*(CMBaseObjectGetVTable() + 16) + 104);
  if (!v24 || !v24(v23, 0))
  {
    goto LABEL_176;
  }

  OUTLINED_FUNCTION_17_2();
  OUTLINED_FUNCTION_1_22((v25 + 32));
  if (!*(a1 + 144))
  {
    goto LABEL_137;
  }

  v26 = 0;
  v138 = *MEMORY[0x277CBECE8];
  v139 = *MEMORY[0x277CE4F28];
  while (2)
  {
    if (APMessageRingGetNextFreeBacking(*(a1 + 216)))
    {
      EmptyBBuf = *(a1 + 152);
      v157 = 0;
      v158 = 0;
      *&v156.value = v145;
      v156.epoch = v5;
      v155 = 0uLL;
      v28 = *(a1 + 72);
      WORD4(v154) = 0;
      v153 = 0;
      *&v154 = 0;
      v151 = 0;
      v152 = 0;
      cf = 0;
      v150 = 0;
      v147 = 0;
      v148 = 0;
      v30 = *(a1 + 208);
      v29 = *(a1 + 216);
      v31 = *(a1 + 224);
      v146 = 0;
      v32 = mach_absolute_time();
      OUTLINED_FUNCTION_17_2();
      OUTLINED_FUNCTION_1_22((v33 + 8));
      APSRealTimeWritableRead();
      if (v156.flags)
      {
        v34 = CMTimebaseGetTime(&time2, *(a1 + 192));
        OUTLINED_FUNCTION_14_5(v34, v35, v36, v37, v38, v39, v40, v41, v125, v127, v128, v129, v130, v131, v132, v133, v134, v135, v136, v138, v139, v140, v141, v142, v143, v144, v145, *(&v145 + 1), 0, 0, v148, cf, v150, v151, v152, v153, v154, *(&v154 + 1), v155, *(&v155 + 1), *&v156.value);
        CMTimeSubtract(v44, v42, v43);
        CMTimeMake(&time2, 250, 1000);
        if (CMTimeCompare(time1, &time2) <= 0)
        {
          v144 = v29;
          if (*(*(CMBaseObjectGetVTable() + 16) + 104))
          {
            v45 = OUTLINED_FUNCTION_23();
            if (v46(v45))
            {
              if (v29 && (v47 = APMessageRingGetNextFreeBacking(v29)) != 0)
              {
                v48 = v47;
                if (!APSTransportMessageGetAudioDataPointer())
                {
                  v140 = v31;
                  v141 = v48;
                  v49 = *(a1 + 168);
                  v143 = v30;
                  if (v49 && (v50 = *(*(CMBaseObjectGetVTable() + 16) + 8)) != 0)
                  {
                    v142 = v50(v49);
                  }

                  else
                  {
                    v142 = 0;
                  }

                  v51 = *(a1 + 160);
                  v53 = v157;
                  v52 = v158;
                  v54 = *(*(CMBaseObjectGetVTable() + 16) + 112);
                  if (v54)
                  {
                    v125 = 0;
                    v55 = v54(v51, v52, v53 - v142, &v152, 1, &v157, &v151, 0);
                    v56 = v151;
                    v57 = v56 * APSAudioFormatDescriptionGetFramesPerPacket();
                    if (v55 == -16774)
                    {
                      if (gLogCategory_APAudioEngineRealTime <= 30)
                      {
                        v30 = v143;
                        if (gLogCategory_APAudioEngineRealTime != -1 || OUTLINED_FUNCTION_10(&gLogCategory_APAudioEngineRealTime))
                        {
                          OUTLINED_FUNCTION_3();
                          LogPrintF(v58, v59, v60, "Data underrun in the audio source\n");
                        }

LABEL_79:
                        OUTLINED_FUNCTION_39();
LABEL_111:
                        if (cf)
                        {
                          CFRelease(cf);
                        }

                        if (v148)
                        {
                          CFRelease(v148);
                        }

                        if (v147)
                        {
                          CFRelease(v147);
                        }

                        if (v146)
                        {
                          CFRelease(v146);
                        }

                        if (EmptyBBuf)
                        {
                          APSRTPPacketHandlerReturnComposedBBuf(v30, EmptyBBuf);
                        }

                        if (v32)
                        {
                          APSRTPPacketHandlerReturnBBuf(v30, v32);
                        }

                        if (!v57)
                        {
                          goto LABEL_137;
                        }

                        if (++v26 >= *(a1 + 144))
                        {
                          goto LABEL_137;
                        }

                        continue;
                      }

LABEL_62:
                      OUTLINED_FUNCTION_39();
                      goto LABEL_63;
                    }

                    if (!v55)
                    {
                      if (!v157)
                      {
                        goto LABEL_62;
                      }

                      v164 = v156;
                      *time1 = 0x7FF8000000000000;
                      *&time1[8] = v145;
                      *&time1[24] = v5;
                      *&v163.value = v145;
                      v163.epoch = v5;
                      APSRealTimeReadableRead();
                      if (*time1 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL && (time1[20] & 1) != 0 && (v163.flags)
                      {
                        lhs = v164;
                        time = v163;
                        CMTimeSubtract(&time2, &lhs, &time);
                        CMTimeMultiplyByFloat64(&lhs, &time2, *time1);
                        time = *&time1[8];
                        CMTimeAdd(&time2, &time, &lhs);
                        v61 = CMClockConvertHostTimeToSystemUnits(&time2);
                      }

                      else
                      {
                        v61 = 0;
                      }

                      v62 = v61 - v28;
                      if (v61 < v28 || v61 == 0)
                      {
                        v62 = v139;
                      }

                      v137 = v62;
                      if (gLogCategory_APAudioEngineRealTime <= 30 && (gLogCategory_APAudioEngineRealTime != -1 || OUTLINED_FUNCTION_10(&gLogCategory_APAudioEngineRealTime)))
                      {
                        v134 = v156.value;
                        v135 = *(a1 + 8);
                        timescale = v156.timescale;
                        v133 = UpTicksToMilliseconds();
                        v131 = v133;
                        v132 = UpTicksToMilliseconds();
                        v129 = timescale;
                        v130 = v61;
                        v127 = v32;
                        v128 = v134;
                        v125 = v135;
                        OUTLINED_FUNCTION_3();
                        LogPrintF(v65, v66, v67, "%@ TAS hostRateAndAnchorTimeRelativeToRemoteRTPTimebase nowHostTicks=%llu nextRTPTimestamp=(%lld/%u) estimatedHostTicksForRemoteRTPTime=%llu diffMs=%llu expiryMs=%llu\n");
                      }

                      APSAudioFormatDescriptionGetSampleRate();
                      time2 = v156;
                      CMTimeConvertScale(time1, &time2, v68, kCMTimeRoundingMethod_RoundHalfAwayFromZero);
                      v32 = *time1;
                      v155 = *&time1[8];
                      APSAudioFormatDescriptionGetSampleRate();
                      v70 = CMTimeMake(&time2, v57, v69);
                      OUTLINED_FUNCTION_14_5(v70, v71, v72, v73, v74, v75, v76, v77, v125, v127, v128, v129, v130, v131, v132, v133, v134, v135, v137, v138, v139, v140, v141, v142, v143, v144, v145, *(&v145 + 1), v146, v147, v148, cf, v150, v151, v152, v153, v154, *(&v154 + 1), v155, *(&v155 + 1), *&v156.value);
                      CMTimeAdd(v80, v78, v79);
                      v156 = *time1;
                      APSRealTimeWritableWrite();
                      if (*(a1 + 168))
                      {
                        LOWORD(v154) = APMessageRingGetNextEnqueueSequenceNumber(v144);
                        v135 = v32;
                        *(&v154 + 2) = v32;
                        *time1 = *&v4->value;
                        *&time1[16] = v4->epoch;
                        time2 = *time1;
                        time.value = 0;
                        v81 = mach_absolute_time();
                        CMClockMakeHostTimeFromSystemUnits(time1, v81);
                        OUTLINED_FUNCTION_32();
                        APSRealTimePTPClockGetEstimatedPTPTimeForHostTime();
                        v32 = v154;
                        OUTLINED_FUNCTION_32();
                        CMTimeGetSeconds(&lhs);
                        lhs = time2;
                        CMTimeGetSeconds(&lhs);
                        OUTLINED_FUNCTION_17_2();
                        kdebug_trace();
                        v30 = v143;
                        if (APSTransportMessageSetAudioDataHeader())
                        {
                          APSLogErrorAt();
                          goto LABEL_79;
                        }

                        NextFreeBacking = APMessageRingGetNextFreeBacking(v140);
                        if (!NextFreeBacking)
                        {
                          v32 = "realTimeAudioEngine_tas_prepareOneMessageForSending";
                          APSLogErrorAt();
                          APSSignalErrorAt();
                          goto LABEL_79;
                        }

                        v83 = NextFreeBacking;
                        EmptyBBuf = APSRTPPacketHandlerGetEmptyBBuf(v143);
                        if (!EmptyBBuf)
                        {
                          goto LABEL_132;
                        }

                        v32 = APSRTPPacketHandlerGetEmptyBBuf(v143);
                        if (!v32 || APSTransportMessageCreateReferencingBBufWithAudioDataLength() || (CMBlockBufferGetDataLength(*(v32 + 16)), OUTLINED_FUNCTION_23(), APSCMBlockBufferReplace()))
                        {
                          APSLogErrorAt();
                          goto LABEL_111;
                        }

                        *v32 = 96;
                        if (APSRTPPacketHandlerComposeRTPPacketWithBBuf(v143, v32, v142, EmptyBBuf, &v150 + 1, &v150))
                        {
                          goto LABEL_132;
                        }

                        CMBlockBufferGetDataLength(*(EmptyBBuf + 2));
                        if (APSCMBlockBufferReplace() || APTransportStreamSendBackingProviderCopyPackageForAcquiredBBuf() || APTransportStreamSendBackingProviderCopyPackageForAcquiredBBuf())
                        {
                          goto LABEL_132;
                        }

                        v84 = *(*(CMBaseObjectGetVTable() + 16) + 144);
                        if (v84)
                        {
                          v84(v147, v136);
                        }

                        v85 = *(*(CMBaseObjectGetVTable() + 16) + 144);
                        if (v85)
                        {
                          v85(v146, v136);
                        }

                        OUTLINED_FUNCTION_17_2();
                        OUTLINED_FUNCTION_1_22((v86 + 12));
                        DataLength = CMBlockBufferGetDataLength(*(EmptyBBuf + 2));
                        if (realTimeAudioEngine_tas_createAndEncryptAudioDataMessage(v83, DataLength - v142 - 10, HIDWORD(v150) - 10, *(a1 + 168), &v148) || realTimeAudioEngine_tas_createAndEncryptAudioDataMessage(v141, v157, 0, *(a1 + 168), &cf))
                        {
                          goto LABEL_132;
                        }

                        if (gLogCategory_APAudioEngineRealTime <= 10)
                        {
                          if (gLogCategory_APAudioEngineRealTime != -1 || (OUTLINED_FUNCTION_18_4(), _LogCategory_Initialize()))
                          {
                            LogPrintF(&gLogCategory_APAudioEngineRealTime, "int realTimeAudioEngine_tas_prepareOneMessageForSending(APRTAETranscoderAndSender *)", 33554442, "Enqueue packet with length %u, payload offset %u\n", v157, HIDWORD(v150));
                          }
                        }

                        *time1 = v135;
                        *&time1[8] = v155;
                        if (APMessageRingEnqueueMessageForSending(v144, cf, time1) || (*time1 = v135, *&time1[8] = v155, APMessageRingEnqueueMessageForSendingWithPayloadCount(v140, v148, time1, v150)))
                        {
LABEL_132:
                          APSLogErrorAt();
                        }

                        else
                        {
                          v32 = 0;
                          v88 = v154;
                          v89 = *(&v154 + 2);
                          v90 = __swp((v154 << 16) | 1, (a1 + 256));
                          if (!*(a1 + 16) || v90)
                          {
                            goto LABEL_111;
                          }

                          realTimeAudioEngine_tas_flushHoses(a1, v88, v89);
                        }

                        v32 = 0;
                        goto LABEL_111;
                      }

                      OUTLINED_FUNCTION_39();
                      LODWORD(v57) = 0;
LABEL_63:
                      v30 = v143;
                      goto LABEL_111;
                    }
                  }

                  else
                  {
                    v32 = v151;
                    LODWORD(v57) = v32 * APSAudioFormatDescriptionGetFramesPerPacket();
                  }

                  APSLogErrorAt();
                  goto LABEL_62;
                }

                APSLogErrorAt();
              }

              else
              {
                v32 = "realTimeAudioEngine_tas_prepareOneMessageForSending";
                APSLogErrorAt();
                APSSignalErrorAt();
              }
            }
          }
        }
      }

      OUTLINED_FUNCTION_39();
      LODWORD(v57) = 0;
      goto LABEL_111;
    }

    break;
  }

  if (gLogCategory_APAudioEngineRealTime <= 30 && (gLogCategory_APAudioEngineRealTime != -1 || OUTLINED_FUNCTION_10(&gLogCategory_APAudioEngineRealTime)))
  {
    OUTLINED_FUNCTION_31();
    OUTLINED_FUNCTION_3();
    LogPrintF(v91, v92, v93, v94);
  }

LABEL_137:
  v95 = *(a1 + 216);
  v96 = *(a1 + 224);
  lhs.value = 0;
  time.value = 0;
  memset(time1, 0, 24);
  Default = APSRealTimeAllocatorGetDefault();
  v98 = *(a1 + 144);
  MaxPacketRedundancy = APMessageRingGetMaxPacketRedundancy(v95);
  Mutable = CFArrayCreateMutable(Default, (v98 + v98 * MaxPacketRedundancy), MEMORY[0x277CBF128]);
  if (!Mutable)
  {
    APSLogErrorAt();
    v104 = 0;
LABEL_182:
    v121 = -72090;
    goto LABEL_168;
  }

  v101 = APSRealTimeAllocatorGetDefault();
  v102 = *(a1 + 144);
  v103 = APMessageRingGetMaxPacketRedundancy(v96);
  v104 = CFArrayCreateMutable(v101, (v102 + v102 * v103), MEMORY[0x277CBF128]);
  if (!v104)
  {
    APSLogErrorAt();
    goto LABEL_182;
  }

  if (gLogCategory_APAudioEngineRealTime <= 30 && (gLogCategory_APAudioEngineRealTime != -1 || OUTLINED_FUNCTION_10(&gLogCategory_APAudioEngineRealTime)))
  {
    OUTLINED_FUNCTION_31();
    OUTLINED_FUNCTION_3();
    LogPrintF(v105, v106, v107, v108);
  }

  if (*(a1 + 144))
  {
    v109 = 0;
    while (APMessageRingGetUsedCount(v95))
    {
      UsedCount = APMessageRingGetUsedCount(v96);
      if (UsedCount != APMessageRingGetUsedCount(v95) && gLogCategory_APAudioEngineRealTime <= 90)
      {
        if (gLogCategory_APAudioEngineRealTime != -1 || (OUTLINED_FUNCTION_18_4(), _LogCategory_Initialize()))
        {
          OUTLINED_FUNCTION_31();
          OUTLINED_FUNCTION_18_4();
          LogPrintF(&gLogCategory_APAudioEngineRealTime, "OSStatus realTimeAudioEngine_tas_sendAudioData(APRTAETranscoderAndSender *)", (v111 + 60), "### %@ MESSAGE RINGS OUT OF SYNC!\n");
        }
      }

      v112 = APSRealTimeAllocatorGetDefault();
      APMessageRingCopyNextBurst(v95, v112, &lhs);
      v113 = lhs.value;
      if (lhs.value)
      {
        v166.length = CFArrayGetCount(lhs.value);
        v166.location = 0;
        CFArrayAppendArray(Mutable, v113, v166);
        APMessageRingMarkBurstAsSent(v95, lhs.value);
        if (lhs.value)
        {
          CFRelease(lhs.value);
          lhs.value = 0;
        }
      }

      v114 = APSRealTimeAllocatorGetDefault();
      APMessageRingCopyNextBurst(v96, v114, &lhs);
      v115 = lhs.value;
      if (lhs.value)
      {
        v167.length = CFArrayGetCount(lhs.value);
        v167.location = 0;
        CFArrayAppendArray(v104, v115, v167);
        APMessageRingMarkBurstAsSent(v96, lhs.value);
        if (lhs.value)
        {
          CFRelease(lhs.value);
          lhs.value = 0;
        }
      }

      if (++v109 >= *(a1 + 144))
      {
        goto LABEL_163;
      }
    }

    if (gLogCategory_APAudioEngineRealTime <= 30 && (gLogCategory_APAudioEngineRealTime != -1 || OUTLINED_FUNCTION_10(&gLogCategory_APAudioEngineRealTime)))
    {
      OUTLINED_FUNCTION_31();
      OUTLINED_FUNCTION_3();
      LogPrintF(v116, v117, v118, v119);
    }
  }

LABEL_163:
  v120 = APSCFRealTimeReadableCopyValue();
  if (v120)
  {
    v121 = v120;
    APSLogErrorAt();
  }

  else
  {
    if (FigCFDictionaryGetCount() >= 1)
    {
      OUTLINED_FUNCTION_1_22(722863624);
      *time1 = Mutable;
      *&time1[8] = v104;
      *&time1[16] = 0;
      CFDictionaryApplyFunction(time.value, realTimeAudioEngine_tas_sendAudioDataDictionaryApplierFunction, time1);
      OUTLINED_FUNCTION_1_22(722863628);
      if (*&time1[16])
      {
        *&time2.timescale = 0;
        time2.value = mach_absolute_time();
        time2.timescale = *&time1[16];
        APSAtomicMessageQueueSendMessage();
      }
    }

    v121 = 0;
  }

LABEL_168:
  if (lhs.value)
  {
    CFRelease(lhs.value);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  if (v104)
  {
    CFRelease(v104);
  }

  APSCFRealTimeRelease();
  if (!v121)
  {
    OUTLINED_FUNCTION_17_2();
    OUTLINED_FUNCTION_1_22((v122 + 40));
    goto LABEL_176;
  }

LABEL_178:
  APSLogErrorAt();
LABEL_176:
  FigSimpleMutexUnlock();
LABEL_177:
  APSTimeProfilerTaskEnd();
  OUTLINED_FUNCTION_17_2();
  return OUTLINED_FUNCTION_1_22((v123 + 4));
}

CFIndex realTimeAudioEngine_tas_sendAudioDataDictionaryApplierFunction(uint64_t a1, CFBooleanRef BOOLean, CFIndex *a3)
{
  if (CFBooleanGetValue(BOOLean))
  {
    v5 = a3 + 1;
    result = a3[1];
    if (!result)
    {
      return result;
    }

    result = CFArrayGetCount(result);
    if (result < 1)
    {
      return result;
    }

    APSEndpointStreamAudioHoseProtocolGetProtocolID();
    ProtocolVTable = CMBaseObjectGetProtocolVTable();
    if (ProtocolVTable)
    {
      v7 = *(ProtocolVTable + 16);
      if (v7)
      {
        if (*(v7 + 64))
        {
          v8 = OUTLINED_FUNCTION_35();
          v9(v8);
        }

        else
        {
          OUTLINED_FUNCTION_35();
          APSEndpointStreamAudioHoseSendAudioBatchSlow();
        }
      }
    }
  }

  else
  {
    result = *a3;
    if (!*a3)
    {
      return result;
    }

    result = CFArrayGetCount(result);
    if (result < 1)
    {
      return result;
    }

    APSEndpointStreamAudioHoseProtocolGetProtocolID();
    v10 = CMBaseObjectGetProtocolVTable();
    v5 = a3;
    if (v10)
    {
      v11 = *(v10 + 16);
      v5 = a3;
      if (v11)
      {
        if (*(v11 + 64))
        {
          v12 = OUTLINED_FUNCTION_36();
          v13(v12);
        }

        else
        {
          OUTLINED_FUNCTION_36();
          APSEndpointStreamAudioHoseSendAudioBatchSlow();
        }

        v5 = a3;
      }
    }
  }

  v14 = *v5;
  Count = CFArrayGetCount(*v5);
  CFArrayGetValueAtIndex(v14, Count - 1);

  return APSTransportMessageGetAudioDataTimestamp();
}

void realTimeAudioEngine_suspendInternal(uint64_t *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v3 = DerivedStorage;
  if (!*(DerivedStorage + 8) && *(DerivedStorage + 136))
  {
    if (gLogCategory_APAudioEngineRealTime <= 50 && (gLogCategory_APAudioEngineRealTime != -1 || OUTLINED_FUNCTION_4(&gLogCategory_APAudioEngineRealTime)))
    {
      CFSetGetCount(*(v3 + 168));
      OUTLINED_FUNCTION_2(&gLogCategory_APAudioEngineRealTime, "void realTimeAudioEngine_suspendInternal(void *)", v4, "%@ Hose count == %u, suspending\n");
    }

    if (CFSetGetCount(*(v3 + 168)))
    {
      if (gLogCategory_APAudioEngineRealTime <= 60 && (gLogCategory_APAudioEngineRealTime != -1 || _LogCategory_Initialize()))
      {
        OUTLINED_FUNCTION_42();
        LogPrintF(&gLogCategory_APAudioEngineRealTime, "void realTimeAudioEngine_suspendInternal(void *)", 33554492, "%@ Non-zero hose count when trying to suspend real-time audio engine. Self deregistering...\n");
      }

      CFSetApplyFunction(*(v3 + 168), realTimeAudioEngine_deregisterHoseApplier, *a1);
    }

    realTimeAudioEngine_performSuspensionGutsInternal(*a1, 1);
    realTimeAudioEngine_removeStreamNotificationListeners(*a1, *(v3 + 200));
    v5 = *(v3 + 200);
    if (v5)
    {
      CFRelease(v5);
      *(v3 + 200) = 0;
    }
  }

  *(a1 + 10) = 0;
  v6 = *(v3 + 80);

  dispatch_async_f(v6, a1, realTimeAudioEngine_suspendComplete);
}

void realTimeAudioEngine_setEndpointStreamInternal(uint64_t *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  number = 0;
  realTimeAudioEngine_removeStreamNotificationListeners(*a1, *(DerivedStorage + 200));
  v3 = *(DerivedStorage + 200);
  v4 = a1[1];
  *(DerivedStorage + 200) = v4;
  if (v4)
  {
    CFRetain(v4);
  }

  if (v3)
  {
    CFRelease(v3);
  }

  v5 = *a1;
  if (*a1 && *(DerivedStorage + 200))
  {
    CMNotificationCenterGetDefaultLocalCenter();
    OUTLINED_FUNCTION_4_13();
    OUTLINED_FUNCTION_16_4(v6, v7, v8, v9);
    CMNotificationCenterGetDefaultLocalCenter();
    OUTLINED_FUNCTION_3_14();
    OUTLINED_FUNCTION_16_4(v10, v11, v12, v13);
    CMNotificationCenterGetDefaultLocalCenter();
    OUTLINED_FUNCTION_2_17();
    OUTLINED_FUNCTION_16_4(v14, v15, v16, v17);
    v5 = *a1;
  }

  realTimeAudioEngine_updateCryptor(v5);
  CMBaseObject = FigEndpointStreamGetCMBaseObject();
  v19 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v19)
  {
    v19(CMBaseObject, @"DynamicLatencyOffsetM", *MEMORY[0x277CBECE8], &number);
    if (number)
    {
      CFNumberGetValue(number, kCFNumberSInt32Type, (DerivedStorage + 156));
      if (gLogCategory_APAudioEngineRealTime <= 50 && (gLogCategory_APAudioEngineRealTime != -1 || OUTLINED_FUNCTION_4(&gLogCategory_APAudioEngineRealTime)))
      {
        OUTLINED_FUNCTION_2(&gLogCategory_APAudioEngineRealTime, "void realTimeAudioEngine_setEndpointStreamInternal(void *)", v20, "%@ Set dynamic latency offset to %d\n");
      }
    }
  }

  dispatch_async_f(*(DerivedStorage + 80), a1, realTimeAudioEngine_setEndpointStreamCallback);
}

CFIndex realTimeAudioEngine_tas_serviceHoseMessageQueue(const __CFArray *a1)
{
  result = CFArrayGetCount(a1);
  if (result >= 1)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(a1, 0);
    for (result = APSAtomicMessageQueueReadMessage(); result; result = APSAtomicMessageQueueReadMessage())
    {
      if (gLogCategory_APAudioEngineRealTime <= 90 && (gLogCategory_APAudioEngineRealTime != -1 || OUTLINED_FUNCTION_4_3(&gLogCategory_APAudioEngineRealTime)))
      {
        v7 = ValueAtIndex[1];
        OUTLINED_FUNCTION_2_1();
        LogPrintF(v4, v5, v6, "### %@ %###s unknown message type '%d'\n", v7, "void realTimeAudioEngine_tas_serviceHoseMessageQueue(void *)", 0);
      }
    }
  }

  return result;
}

void APAudioEngineRealTimeCreate_cold_11(uint64_t *a1)
{
  OUTLINED_FUNCTION_26_0(a1);
  if (gLogCategory_APAudioEngineRealTime <= 50 && (gLogCategory_APAudioEngineRealTime != -1 || OUTLINED_FUNCTION_4(&gLogCategory_APAudioEngineRealTime)))
  {
    OUTLINED_FUNCTION_2(&gLogCategory_APAudioEngineRealTime, "OSStatus APAudioEngineRealTimeCreate(CFAllocatorRef, APSNetworkClockRef, CFDictionaryRef, FigEndpointStreamAudioEngineRef *)", v2, "%@ AudioEngineRealTime using stream type %@ and audio format %@");
  }

  if (*v1)
  {
    CFRelease(*v1);
  }
}

uint64_t APAudioEngineRealTimeCreate_cold_13(_DWORD *a1)
{
  OUTLINED_FUNCTION_17();
  v2 = APSLogErrorAt();
  result = OUTLINED_FUNCTION_29(v2, "Failed to allocate memory for audioIOAssertion queue");
  *a1 = result;
  return result;
}

uint64_t APAudioEngineRealTimeCreate_cold_25()
{
  OUTLINED_FUNCTION_10_2();
  OUTLINED_FUNCTION_3();
  return LogPrintF(v0, v1, v2, v3);
}

uint64_t APAudioEngineRealTimeCreate_cold_33(_DWORD *a1)
{
  OUTLINED_FUNCTION_17();
  v2 = APSLogErrorAt();
  result = OUTLINED_FUNCTION_29(v2, "Failed to allocate memory for callbackNotification queue");
  *a1 = result;
  return result;
}

uint64_t APAudioEngineRealTimeCreate_cold_34(_DWORD *a1)
{
  OUTLINED_FUNCTION_17();
  v2 = APSLogErrorAt();
  result = OUTLINED_FUNCTION_29(v2, "Failed to allocate memory for state queue");
  *a1 = result;
  return result;
}

uint64_t realTimeAudioEngine_tas_Initialize_cold_9(_DWORD *a1)
{
  OUTLINED_FUNCTION_17();
  v2 = APSLogErrorAt();
  result = OUTLINED_FUNCTION_29(v2, "Failed to allocate memory for hoses queue");
  *a1 = result;
  return result;
}

uint64_t realTimeAudioEngine_tas_Initialize_cold_10(_DWORD *a1)
{
  OUTLINED_FUNCTION_17();
  v2 = APSLogErrorAt();
  result = OUTLINED_FUNCTION_29(v2, "Failed to allocate memory for audioTimer queue");
  *a1 = result;
  return result;
}

uint64_t realTimeAudioEngine_GlitchReportNotificationListener_cold_10(_DWORD *a1)
{
  result = APSLogErrorAt();
  *a1 = -16761;
  return result;
}

uint64_t realTimeAudioEngine_GlitchReportNotificationListener_cold_12()
{
  result = APSLogErrorAt();
  if (gLogCategory_APAudioEngineRealTime <= 90)
  {
    if (gLogCategory_APAudioEngineRealTime != -1 || (result = OUTLINED_FUNCTION_4_3(&gLogCategory_APAudioEngineRealTime), result))
    {
      OUTLINED_FUNCTION_34();
      OUTLINED_FUNCTION_2_1();
      return LogPrintF(v1, v2, v3, v4);
    }
  }

  return result;
}

uint64_t realTimeAudioEngine_DynamicLatencyOffsetDidChangeListener_cold_3()
{
  result = APSLogErrorAt();
  if (gLogCategory_APAudioEngineRealTime <= 90)
  {
    if (gLogCategory_APAudioEngineRealTime != -1 || (result = OUTLINED_FUNCTION_4_3(&gLogCategory_APAudioEngineRealTime), result))
    {
      OUTLINED_FUNCTION_34();
      OUTLINED_FUNCTION_2_1();
      return LogPrintF(v1, v2, v3, v4);
    }
  }

  return result;
}

uint64_t realTimeAudioEngine_audioHoseRegistrarRegisterHoseDispatchInternal_cold_1(uint64_t a1)
{
  CFSetGetCount(*(a1 + 168));
  OUTLINED_FUNCTION_30();
  return OUTLINED_FUNCTION_2(&gLogCategory_APAudioEngineRealTime, "OSStatus realTimeAudioEngine_audioHoseRegistrarRegisterHoseInternal(CMBaseObjectRef, CMBaseObjectRef, CFDictionaryRef)", v1, "%@ Registering hose [%{ptr}] with audio engine (hoseCount = %d)\n");
}

uint64_t realTimeAudioEngine_audioHoseRegistrarRegisterHoseDispatchInternal_cold_2()
{
  OUTLINED_FUNCTION_7_4();
  APSLogErrorAt();

  return APSSignalErrorAt();
}

uint64_t realTimeAudioEngine_audioHoseRegistrarRegisterHoseDispatchInternal_cold_4(uint64_t a1, CFSetRef *a2)
{
  CFSetGetCount(*a2);
  OUTLINED_FUNCTION_30();
  return OUTLINED_FUNCTION_2(&gLogCategory_APAudioEngineRealTime, "OSStatus realTimeAudioEngine_audioHoseRegistrarRegisterHoseInternal(CMBaseObjectRef, CMBaseObjectRef, CFDictionaryRef)", v2, "%@ Registered hose [%{ptr}] with audio engine (hoseCount = %d)\n");
}

uint64_t realTimeAudioEngine_tas_addHoseDispatchInternal_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_17();
  APSLogErrorAt();
  result = APSSignalErrorAt();
  *a1 = result;
  return result;
}

uint64_t realTimeAudioEngine_audioHoseRegistrarDeregisterHoseInternal_cold_1(uint64_t a1)
{
  CFSetGetCount(*(a1 + 168));
  OUTLINED_FUNCTION_30();
  return OUTLINED_FUNCTION_2(&gLogCategory_APAudioEngineRealTime, "OSStatus realTimeAudioEngine_audioHoseRegistrarDeregisterHoseInternal(CMBaseObjectRef, CMBaseObjectRef, CFDictionaryRef)", v1, "%@ Deregistering hose [%{ptr}] with audio engine (current hoseCount = %d)\n");
}

uint64_t realTimeAudioEngine_audioHoseRegistrarDeregisterHoseInternal_cold_3(uint64_t a1, CFSetRef *a2)
{
  CFSetGetCount(*a2);
  OUTLINED_FUNCTION_30();
  return OUTLINED_FUNCTION_2(&gLogCategory_APAudioEngineRealTime, "OSStatus realTimeAudioEngine_audioHoseRegistrarDeregisterHoseInternal(CMBaseObjectRef, CMBaseObjectRef, CFDictionaryRef)", v2, "%@ Deregistered hose [%{ptr}] with audio engine (hoseCount = %d)\n");
}

uint64_t realTimeAudioEngine_audioHoseRegistrarDeregisterHoseInternal_cold_4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (gLogCategory_APAudioEngineRealTime <= 50)
  {
    if (gLogCategory_APAudioEngineRealTime != -1)
    {
      return OUTLINED_FUNCTION_2(&gLogCategory_APAudioEngineRealTime, "OSStatus realTimeAudioEngine_audioHoseRegistrarDeregisterHoseInternal(CMBaseObjectRef, CMBaseObjectRef, CFDictionaryRef)", a3, "%@ Hose [%{ptr}] not found on de-registration");
    }

    result = OUTLINED_FUNCTION_4(&gLogCategory_APAudioEngineRealTime);
    if (result)
    {
      return OUTLINED_FUNCTION_2(&gLogCategory_APAudioEngineRealTime, "OSStatus realTimeAudioEngine_audioHoseRegistrarDeregisterHoseInternal(CMBaseObjectRef, CMBaseObjectRef, CFDictionaryRef)", a3, "%@ Hose [%{ptr}] not found on de-registration");
    }
  }

  return result;
}

uint64_t realTimeAudioEngine_tas_removeHoseDispatchInternal_cold_2(_DWORD *a1)
{
  OUTLINED_FUNCTION_17();
  APSLogErrorAt();
  result = APSSignalErrorAt();
  *a1 = result;
  return result;
}

void realTimeAudioEngine_Resume_cold_2(uint64_t a1, CFTypeRef *a2, CFTypeRef *a3)
{
  APSLogErrorAt();
  if (*a2)
  {
    CFRelease(*a2);
  }

  if (*a3)
  {
    CFRelease(*a3);
  }

  free(a2);
}

void realTimeAudioEngine_Suspend_cold_2(uint64_t a1, CFTypeRef *a2, CFTypeRef *a3)
{
  APSLogErrorAt();
  if (*a2)
  {
    CFRelease(*a2);
  }

  if (*a3)
  {
    CFRelease(*a3);
  }

  free(a2);
}

void realTimeAudioEngine_SetEndpointStream_cold_1(uint64_t a1, CFTypeRef *a2, CFTypeRef *a3)
{
  APSLogErrorAt();
  if (*a2)
  {
    CFRelease(*a2);
  }

  if (*a3)
  {
    CFRelease(*a3);
  }

  free(a2);
}

void realTimeAudioEngine_resumeSubPhase3_Internal_cold_2(uint64_t *a1)
{
  OUTLINED_FUNCTION_26_0(a1);
  if (gLogCategory_APAudioEngineRealTime <= 50 && (gLogCategory_APAudioEngineRealTime != -1 || OUTLINED_FUNCTION_4(&gLogCategory_APAudioEngineRealTime)))
  {
    OUTLINED_FUNCTION_43();
    OUTLINED_FUNCTION_2(&gLogCategory_APAudioEngineRealTime, "OSStatus realTimeAudioEngine_resumeSubPhase3_Internal(FigEndpointStreamAudioEngineRef)", v2, "%@ vbrMaxPacketSize = %d. CodecType:%@");
  }

  if (*v1)
  {
    CFRelease(*v1);
  }
}

void realTimeAudioEngine_resumeSubPhase3_Internal_cold_7(uint64_t *a1)
{
  OUTLINED_FUNCTION_26_0(a1);
  if (gLogCategory_APAudioEngineRealTime <= 50 && (gLogCategory_APAudioEngineRealTime != -1 || OUTLINED_FUNCTION_4(&gLogCategory_APAudioEngineRealTime)))
  {
    OUTLINED_FUNCTION_43();
    OUTLINED_FUNCTION_2(&gLogCategory_APAudioEngineRealTime, "OSStatus realTimeAudioEngine_resumeSubPhase3_Internal(FigEndpointStreamAudioEngineRef)", v2, "%@ vbrBitRate = %d. CodecType:%@");
  }

  if (*v1)
  {
    CFRelease(*v1);
  }
}

void realTimeAudioEngine_createRedundantAudioDataMessageBBuf_cold_1(uint64_t a1, CFTypeRef *a2)
{
  APSLogErrorAt();
  if (*a2)
  {
    CFRelease(*a2);
  }
}

void __getCRCarPlayPreferencesClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x277CCA890] currentHandler];
  [v0 handleFailureInFunction:objc_msgSend(MEMORY[0x277CCACA8] file:"stringWithUTF8String:" lineNumber:"Class getCRCarPlayPreferencesClass(void)_block_invoke") description:{@"APCarPlayPreferences.m", 39, @"Unable to find class %s", "CRCarPlayPreferences"}];
  __break(1u);
}

void __getCRCarPlayPreferencesClass_block_invoke_cold_2(void *a1)
{
  v2 = [MEMORY[0x277CCA890] currentHandler];
  [v2 handleFailureInFunction:objc_msgSend(MEMORY[0x277CCACA8] file:"stringWithUTF8String:" lineNumber:"void *CarKitLibrary(void)") description:{@"APCarPlayPreferences.m", 37, @"%s", *a1}];
  __break(1u);
}

void legacyKeyHolder_CopyMasterAESKeyAndIV_cold_1(const void *a1)
{
  APSLogErrorAt();

  CFRelease(a1);
}

uint64_t airplayAgentServicesServer_handleAirPlaySystemSenderProcessLaunched()
{
  if (gLogCategory_APAirPlayAgentServices <= 50 && (gLogCategory_APAirPlayAgentServices != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APAirPlayAgentServices, "OSStatus airplayAgentServicesServer_handleAirPlaySystemSenderProcessLaunched(CFStringRef, CFDictionaryRef, CFDictionaryRef *)", 33554482, "Handler for '%@' command: forcing all remote managers in MX process to re-connect", @"senderSystemProcessLaunched");
  }

  for (i = 0; i != 4; ++i)
  {
    v1 = airplayAgentServicesServer_handleAirPlaySystemSenderProcessLaunched_copyManagerFuncs[i];
    cf = 0;
    v2 = v1(&cf);
    v3 = cf;
    if (!v2)
    {
      CMBaseObject = FigEndpointManagerGetCMBaseObject();
      v5 = *(*(CMBaseObjectGetVTable() + 8) + 56);
      if (v5)
      {
        v5(CMBaseObject, @"UnusedPropertyToForceServerConnection", 0);
      }

      CMNotificationCenterGetDefaultLocalCenter();
      CMNotificationCenterPostNotification();
      CMNotificationCenterGetDefaultLocalCenter();
      CMNotificationCenterPostNotification();
      v3 = cf;
    }

    if (v3)
    {
      CFRelease(v3);
    }
  }

  return 0;
}

uint64_t APAirPlayAgentServicesServerStart_cold_2(uint64_t result, _DWORD *a2)
{
  v3 = result;
  if (gLogCategory_APAirPlayAgentServices <= 90)
  {
    if (gLogCategory_APAirPlayAgentServices != -1 || (result = _LogCategory_Initialize(), result))
    {
      result = LogPrintF(&gLogCategory_APAirPlayAgentServices, "OSStatus APAirPlayAgentServicesServerStart(void)", 33554522, "Failed to start %@ with err: %d", @"com.apple.airplay.agent.services", v3);
    }
  }

  *a2 = v3;
  return result;
}

uint64_t APAirPlayAgentServicesServerStart_cold_3(uint64_t result, _DWORD *a2)
{
  v3 = result;
  if (gLogCategory_APAirPlayAgentServices <= 90)
  {
    if (gLogCategory_APAirPlayAgentServices != -1 || (result = _LogCategory_Initialize(), result))
    {
      result = LogPrintF(&gLogCategory_APAirPlayAgentServices, "OSStatus APAirPlayAgentServicesServerStart(void)", 33554522, "Failed to add command handler for %@ command with err: %d", @"senderSystemProcessLaunched", v3);
    }
  }

  *a2 = v3;
  return result;
}

uint64_t APAirPlayAgentServicesClientSendCommand_cold_3(uint64_t result)
{
  if (gLogCategory_APAirPlayAgentServices <= 90)
  {
    v1 = result;
    if (gLogCategory_APAirPlayAgentServices != -1)
    {
      return LogPrintF(&gLogCategory_APAirPlayAgentServices, "OSStatus APAirPlayAgentServicesClientSendCommand(CFStringRef)", 33554522, "Failed to send %@ with err: %d", @"senderSystemProcessLaunched", v1);
    }

    result = _LogCategory_Initialize();
    if (result)
    {
      return LogPrintF(&gLogCategory_APAirPlayAgentServices, "OSStatus APAirPlayAgentServicesClientSendCommand(CFStringRef)", 33554522, "Failed to send %@ with err: %d", @"senderSystemProcessLaunched", v1);
    }
  }

  return result;
}

uint64_t localStream_copyBufferedSupportedAudioFormatList(uint64_t a1, _BYTE *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigCFDictionaryGetNumberValue();
  if (FigCFNumberGetUInt64() != 2)
  {
    v4 = CMBaseObjectGetDerivedStorage();
    if (IsAppleTV() && !*(v4 + 128))
    {
      APSLocalAudioCapabilityMonitorGetSharedInstance();
    }

    if (*(DerivedStorage + 128))
    {
      APSLocalAudioCapabilityMonitorCopyProperty();
      APSLocalAudioCapabilityMonitorCopyProperty();
    }
  }

  v5 = APSAudioFormatDescriptionListCreateForBufferedReceiverWithAudioCapabilities();
  *a2 = 0;
  return v5;
}

void localStream_dissociateInternal(const void *a1, int a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!*DerivedStorage)
  {
    v5 = DerivedStorage;
    *DerivedStorage = 1;
    if (gLogCategory_APEndpointStreamLocal <= 30 && (gLogCategory_APEndpointStreamLocal != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_APEndpointStreamLocal, "void localStream_dissociateInternal(FigEndpointStreamRef, Boolean)", 33554462, "[%{ptr}] %###s\n", a1, "void localStream_dissociateInternal(FigEndpointStreamRef, Boolean)");
    }

    localStream_suspendInternal(a1, 0, 0);
    if (*(v5 + 16))
    {
      CMNotificationCenterGetDefaultLocalCenter();
      OUTLINED_FUNCTION_2_18();
      FigNotificationCenterRemoveWeakListener();
    }

    if (a2 && *(v5 + 1))
    {
      CMNotificationCenterGetDefaultLocalCenter();

      FigDispatchAsyncPostNotification();
    }
  }
}

void localStream_suspendInternal(const void *a1, uint64_t a2, uint64_t a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!*(DerivedStorage + 208))
  {
    goto LABEL_39;
  }

  v7 = CMBaseObjectGetDerivedStorage();
  v31 = 0;
  v30 = 0;
  v29 = 0;
  if (*(v7 + 208))
  {
    v8 = v7;
    if (*(v7 + 240))
    {
      if (APSThreadSafeDictionaryCopyValueIfPresent() && APSThreadSafeDictionaryGetInt64IfPresent())
      {
        APSThreadSafeDictionaryGetInt32IfPresent();
        mach_absolute_time();
        UpTicksToSeconds();
        APSThreadSafeDictionarySetInt32();
        APSThreadSafeDictionaryRemoveValue();
      }

      v9 = *(v8 + 240);
      if (v9)
      {
        CFRelease(v9);
        *(v8 + 240) = 0;
      }
    }
  }

  if (v31)
  {
    CFRelease(v31);
  }

  localStream_updateResumed(a1, 0);
  if (gLogCategory_APEndpointStreamLocal <= 50 && (gLogCategory_APEndpointStreamLocal != -1 || OUTLINED_FUNCTION_4(&gLogCategory_APEndpointStreamLocal)))
  {
    OUTLINED_FUNCTION_2(&gLogCategory_APEndpointStreamLocal, "void localStream_suspendInternal(FigEndpointStreamRef, CFDictionaryRef, FigEndpointStreamCompletionCallback, void *)", v10, "[%{ptr}] %###s\n");
  }

  FigSimpleMutexLock();
  v11 = *(DerivedStorage + 193);
  *(DerivedStorage + 193) = 0;
  FigSimpleMutexUnlock();
  if (!*(DerivedStorage + 216))
  {
    v13 = 0;
LABEL_35:
    v25 = *(DerivedStorage + 232);
    if (v25)
    {
      CFRelease(v25);
      *(DerivedStorage + 232) = 0;
    }

    if (!v13)
    {
LABEL_40:
      if (!a2)
      {
        return;
      }

      goto LABEL_41;
    }

    CFRelease(v13);
LABEL_39:
    LODWORD(v13) = 0;
    goto LABEL_40;
  }

  if (!*(DerivedStorage + 57))
  {
    v13 = 0;
    if (v11)
    {
      goto LABEL_19;
    }

    goto LABEL_25;
  }

  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (Mutable)
  {
    v13 = Mutable;
    CFDictionarySetValue(Mutable, *MEMORY[0x277CEA0E8], *MEMORY[0x277CBED28]);
    if (v11)
    {
LABEL_19:
      APSEndpointStreamAudioHoseRegistrarProtocolGetProtocolID();
      ProtocolVTable = CMBaseObjectGetProtocolVTable();
      if (!ProtocolVTable || (v15 = *(ProtocolVTable + 16)) == 0 || !*(v15 + 48))
      {
LABEL_33:
        APSEndpointStreamAudioHoseSBARInvalidate();
        CMNotificationCenterGetDefaultLocalCenter();
        OUTLINED_FUNCTION_1_23();
        FigNotificationCenterRemoveWeakListener();
        localStream_updateHoseSBARRate(a1, 0);
        v24 = *(DerivedStorage + 216);
        if (v24)
        {
          CFRelease(v24);
          *(DerivedStorage + 216) = 0;
        }

        goto LABEL_35;
      }

LABEL_32:
      v22 = OUTLINED_FUNCTION_9_4();
      v23(v22);
      goto LABEL_33;
    }

LABEL_25:
    v16 = *(DerivedStorage + 216);
    APSEndpointStreamAudioHoseProtocolGetProtocolID();
    v17 = CMBaseObjectGetProtocolVTable();
    if (v17)
    {
      v18 = *(v17 + 16);
      if (v18)
      {
        v19 = *(v18 + 56);
        if (v19)
        {
          v19(v16, 0, 0);
        }
      }
    }

    APSEndpointStreamAudioHoseRegistrarProtocolGetProtocolID();
    v20 = CMBaseObjectGetProtocolVTable();
    if (!v20)
    {
      goto LABEL_33;
    }

    v21 = *(v20 + 16);
    if (!v21 || !*(v21 + 32))
    {
      goto LABEL_33;
    }

    goto LABEL_32;
  }

  APSLogErrorAt();
  LODWORD(v13) = -16761;
  if (!a2)
  {
    return;
  }

LABEL_41:
  CFRetain(a1);
  v26 = *(DerivedStorage + 8);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 0x40000000;
  block[2] = __localStream_suspendInternal_block_invoke;
  block[3] = &__block_descriptor_tmp_19;
  block[4] = a2;
  block[5] = a1;
  v28 = v13;
  block[6] = a3;
  dispatch_async(v26, block);
}

void localStream_handleFormatInfoChanged(uint64_t a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v8 = 0;
  v4 = localStream_copyBufferedSupportedAudioFormatList(a2, &v8);
  FigSimpleMutexLock();
  if (!FigCFEqual())
  {
    if (gLogCategory_APEndpointStreamLocal < 51)
    {
      if (gLogCategory_APEndpointStreamLocal != -1 || _LogCategory_Initialize())
      {
        APSAudioFormatDescriptionListCopyDebugString();
        if (gLogCategory_APEndpointStreamLocal <= 50 && (gLogCategory_APEndpointStreamLocal != -1 || OUTLINED_FUNCTION_4(&gLogCategory_APEndpointStreamLocal)))
        {
          OUTLINED_FUNCTION_2(&gLogCategory_APEndpointStreamLocal, "void localStream_handleFormatInfoChanged(CMNotificationCenterRef, const void *, CFStringRef, const void *, CFTypeRef)", v5, "[%{ptr}] Stream supported audio formats=%@");
        }
      }

      if (gLogCategory_APEndpointStreamLocal <= 50 && (gLogCategory_APEndpointStreamLocal != -1 || _LogCategory_Initialize()))
      {
        APSAudioFormatDescriptionListCopyDebugString();
        if (gLogCategory_APEndpointStreamLocal <= 50 && (gLogCategory_APEndpointStreamLocal != -1 || OUTLINED_FUNCTION_4(&gLogCategory_APEndpointStreamLocal)))
        {
          OUTLINED_FUNCTION_2(&gLogCategory_APEndpointStreamLocal, "void localStream_handleFormatInfoChanged(CMNotificationCenterRef, const void *, CFStringRef, const void *, CFTypeRef)", v6, "[%{ptr}] Supported audio formats changed. Updated to audio formats=%@");
        }
      }
    }

    *(DerivedStorage + 192) = v8;
    v7 = *(DerivedStorage + 184);
    *(DerivedStorage + 184) = v4;
    if (v4)
    {
      CFRetain(v4);
    }

    if (v7)
    {
      CFRelease(v7);
    }

    CMNotificationCenterGetDefaultLocalCenter();
    FigDispatchAsyncPostNotification();
  }

  FigSimpleMutexUnlock();
  if (v4)
  {
    CFRelease(v4);
  }
}

uint64_t localStream_Dissociate(const void *a1)
{
  if (!*CMBaseObjectGetDerivedStorage())
  {
    CFRetain(a1);
    APSDispatchAsyncFHelper();
  }

  return 0;
}

void localStream_suspendDispatchInternal(uint64_t a1)
{
  localStream_suspendInternal(*a1, *(a1 + 16), *(a1 + 24));
  if (*a1)
  {
    CFRelease(*a1);
  }

  v2 = *(a1 + 8);
  if (v2)
  {

    CFRelease(v2);
  }
}

void localStream_resumeDispatchInternal(CFTypeRef *a1)
{
  Int64 = a1;
  v75 = *MEMORY[0x277D85DE8];
  v7 = a1[1];
  v6 = a1[2];
  v8 = a1[3];
  v65 = *a1;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v11 = DerivedStorage;
  v66 = 0;
  v62 = Int64;
  v59 = v8;
  if (*DerivedStorage)
  {
    OUTLINED_FUNCTION_4_14();
    v17 = 0;
    value = 0;
    v18 = -16762;
    goto LABEL_89;
  }

  v12 = *(DerivedStorage + 40);
  if (v12 == *MEMORY[0x277CC1960] || v12 == *MEMORY[0x277CC1968] || v12 == *MEMORY[0x277CC1970])
  {
    if (*(DerivedStorage + 208))
    {
      goto LABEL_124;
    }

    if (gLogCategory_APEndpointStreamLocal <= 50 && (gLogCategory_APEndpointStreamLocal != -1 || OUTLINED_FUNCTION_4(&gLogCategory_APEndpointStreamLocal)))
    {
      OUTLINED_FUNCTION_2(&gLogCategory_APEndpointStreamLocal, "void localStream_resumeInternal(FigEndpointStreamRef, CFDictionaryRef, FigEndpointStreamCompletionCallback, void *)", v10, "[%{ptr}] %###s\n");
    }

    if (!v7)
    {
      v17 = 0;
      goto LABEL_19;
    }

    p_block = &block;
    v56 = CFDictionaryGetValue(v7, @"EncryptionKey");
    v16 = CFDictionaryGetValue(v7, @"InitialTransportAudioFormatDescription");
    if (v16)
    {
      v17 = CFRetain(v16);
    }

    else
    {
      v17 = 0;
    }

    v4 = CFDictionaryGetValue(v7, @"AudioSessionID");
    Int64 = CFDictionaryGetInt64();
    v58 = CFDictionaryGetInt64();
    v19 = CMBaseObjectGetDerivedStorage();
    v73 = 0u;
    v74 = 0u;
    v71 = 0u;
    v72 = 0u;
    v69 = 0u;
    v70 = 0u;
    block = 0u;
    v68 = 0u;
    v61 = v6;
    v63 = v17;
    if (*v19)
    {
LABEL_41:
      if (v58)
      {
        Null = APSCryptorGetNull();
        v66 = Null;
        if (Null)
        {
          CFRetain(Null);
        }

        v24 = 1;
LABEL_48:
        FigSimpleMutexLock();
        if (v4)
        {
          v26 = CFRetain(v4);
        }

        else
        {
          v26 = 0;
        }

        *(v11 + 144) = v26;
        v27 = *(v11 + 152);
        if (v27)
        {
          Int64 = CFRetain(v27);
        }

        else
        {
          Int64 = 0;
        }

        v28 = *(v11 + 184);
        if (v28)
        {
          v29 = CFRetain(v28);
        }

        else
        {
          v29 = 0;
        }

        v30 = *(v11 + 192);
        *(v11 + 193) = v24;
        FigSimpleMutexUnlock();
        value = v29;
        if (!APSAudioFormatDescriptionListContainsFormat())
        {
          APSLogErrorAt();
          v18 = APSSignalErrorAt();
          v4 = 0;
          v2 = 0;
          v7 = 0;
          goto LABEL_89;
        }

        v31 = *(v11 + 216);
        if (v31)
        {
          CFRelease(v31);
          *(v11 + 216) = 0;
        }

        v32 = *MEMORY[0x277CBECE8];
        Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
        v2 = Mutable;
        if (!Mutable)
        {
          APSLogErrorAt();
          v4 = 0;
          v7 = 0;
          v18 = -16761;
          v6 = v61;
          goto LABEL_89;
        }

        v34 = *MEMORY[0x277CBED28];
        v35 = *MEMORY[0x277CBED10];
        if (*(v11 + 56))
        {
          v36 = *MEMORY[0x277CBED28];
        }

        else
        {
          v36 = *MEMORY[0x277CBED10];
        }

        CFDictionarySetValue(Mutable, *MEMORY[0x277CEA118], v36);
        CFDictionarySetValue(v2, *MEMORY[0x277CEA120], *(v11 + 32));
        CFDictionarySetValue(v2, *MEMORY[0x277CEA138], v34);
        CFDictionarySetValue(v2, *MEMORY[0x277CEA128], value);
        FigCFDictionarySetValueFromKeyInDict();
        FigCFDictionarySetValueFromKeyInDict();
        if (v30)
        {
          v37 = v34;
        }

        else
        {
          v37 = v35;
        }

        CFDictionarySetValue(v2, *MEMORY[0x277CEA130], v37);
        FigCFDictionarySetValueFromKeyInDict();
        FigCFDictionarySetValue();
        FigCFDictionarySetValue();
        if (!CFDictionaryContainsKey(v7, @"HoseRegistrar"))
        {
          APSLogErrorAt();
          v4 = 0;
          v7 = 0;
          v18 = -16760;
          goto LABEL_78;
        }

        v38 = CFDictionaryGetValue(v7, @"HoseRegistrar");
        if (v38)
        {
          v38 = CFRetain(v38);
        }

        *(v11 + 232) = v38;
        v4 = CFStringCreateF(0, "%@-Hose-%{ptr}-%d", *(v11 + 24), v65, *(v11 + 228));
        v39 = APSEndpointStreamAudioHoseSBARCreate();
        if (v39)
        {
          v18 = v39;
        }

        else
        {
          v40 = *(*(CMBaseObjectGetVTable() + 8) + 56);
          if (v40)
          {
            v41 = v40(0, *MEMORY[0x277CEA1B8], Int64);
            if (!v41)
            {
              CMNotificationCenterGetDefaultLocalCenter();
              OUTLINED_FUNCTION_1_23();
              FigNotificationCenterAddWeakListener();
              v42 = APSGetFBOPropertyInt64();
              localStream_updateHoseSBARRate(v65, v42);
              if (!*(v11 + 57))
              {
                v7 = 0;
                goto LABEL_81;
              }

              v43 = CFDictionaryCreateMutable(v32, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
              v7 = v43;
              if (v43)
              {
                CFDictionarySetValue(v43, *MEMORY[0x277CEA0E8], v34);
LABEL_81:
                v6 = v61;
                APSEndpointStreamAudioHoseRegistrarProtocolGetProtocolID();
                ProtocolVTable = CMBaseObjectGetProtocolVTable();
                if (!v58)
                {
                  if (ProtocolVTable && (v52 = *(ProtocolVTable + 16)) != 0)
                  {
                    if (*(v52 + 24))
                    {
                      OUTLINED_FUNCTION_3_15();
                      v18 = v55(v53, v54);
                    }

                    else
                    {
                      v18 = -12782;
                    }
                  }

                  else
                  {
                    v18 = -12788;
                  }

                  goto LABEL_88;
                }

                if (!ProtocolVTable || (v45 = *(ProtocolVTable + 16)) == 0)
                {
                  v18 = -12788;
                  goto LABEL_88;
                }

                if (!*(v45 + 40))
                {
                  v18 = -12782;
                  goto LABEL_88;
                }

                OUTLINED_FUNCTION_3_15();
                v49 = v48(v46, v47);
                if (v49)
                {
                  v18 = v49;
LABEL_88:
                  v17 = v63;
                  APSLogErrorAt();
                  goto LABEL_89;
                }

                *(v11 + 216) = 0;
                CFDictionaryApplyFunction(*(v11 + 176), localStream_applyCachedPropertyForSBARDictionaryCallback, v65);
                ++*(v11 + 228);
                localStream_updateResumed(v65, 1);
                v18 = 0;
LABEL_79:
                v17 = v63;
                goto LABEL_89;
              }

              APSLogErrorAt();
              v18 = -16761;
LABEL_78:
              v6 = v61;
              goto LABEL_79;
            }

            v18 = v41;
          }

          else
          {
            v18 = -12782;
          }
        }

        APSLogErrorAt();
        v7 = 0;
        goto LABEL_78;
      }

      if (v56)
      {
        v25 = APSCryptorChaCha20Poly1305Create();
        if (!v25)
        {
          v24 = 0;
          goto LABEL_48;
        }

        v18 = v25;
        APSLogErrorAt();
LABEL_20:
        OUTLINED_FUNCTION_4_14();
        value = 0;
        goto LABEL_89;
      }

LABEL_19:
      APSLogErrorAt();
      v18 = APSSignalErrorAt();
      goto LABEL_20;
    }

    v2 = v19;
    if (*(v19 + 208))
    {
      OUTLINED_FUNCTION_5_9();
    }

    else
    {
      v60 = v4;
      v20 = FigCFDictionaryGetValue();
      if (v20)
      {
        v21 = v20;
        v57 = Int64;
        if (APSThreadSafeDictionaryCopyValueIfPresent())
        {
          v6 = 0;
          v1 = 0;
          p_block = 0;
          v3 = 0;
          mach_absolute_time();
          APSThreadSafeDictionarySetInt64();
          v22 = *(v2 + 30);
          *(v2 + 30) = v21;
          CFRetain(v21);
          if (v22)
          {
            CFRelease(v22);
          }

          v2 = 0;
          v4 = v60;
          Int64 = v57;
          goto LABEL_31;
        }

        APSThreadSafeDictionaryCreate();
        APSLogErrorAt();
      }

      OUTLINED_FUNCTION_5_9();
      v4 = v60;
    }

LABEL_31:
    if (v3)
    {
      CFRelease(v3);
    }

    if (v6)
    {
      CFRelease(v6);
    }

    v6 = v61;
    if (v1)
    {
      CFRelease(v1);
    }

    if (v2)
    {
      CFRelease(v2);
    }

    if (p_block)
    {
      CFRelease(p_block);
    }

    goto LABEL_41;
  }

  APSLogErrorAt();
LABEL_124:
  OUTLINED_FUNCTION_4_14();
  v17 = 0;
  value = 0;
  v18 = 0;
LABEL_89:
  if (v6)
  {
    CFRetain(v65);
    v50 = *(v11 + 8);
    *&block = MEMORY[0x277D85DD0];
    *(&block + 1) = 0x40000000;
    *&v68 = __localStream_resumeInternal_block_invoke;
    *(&v68 + 1) = &__block_descriptor_tmp_49_0;
    *&v69 = v6;
    *(&v69 + 1) = v65;
    DWORD2(v70) = v18;
    *&v70 = v59;
    dispatch_async(v50, &block);
  }

  if (v4)
  {
    CFRelease(v4);
  }

  if (v66)
  {
    CFRelease(v66);
  }

  if (v17)
  {
    CFRelease(v17);
  }

  if (value)
  {
    CFRelease(value);
  }

  if (Int64)
  {
    CFRelease(Int64);
  }

  if (v2)
  {
    CFRelease(v2);
  }

  if (v7)
  {
    CFRelease(v7);
  }

  if (*v62)
  {
    CFRelease(*v62);
  }

  v51 = v62[1];
  if (v51)
  {
    CFRelease(v51);
  }
}

void localStream_dissociateDispatchInternal(const void **a1)
{
  localStream_dissociateInternal(*a1, 1);
  v2 = *a1;

  CFRelease(v2);
}

void APEndpointStreamLocalCreate_cold_2(void *a1, CFTypeRef *a2)
{
  APSAudioFormatDescriptionListCopyDebugString();
  if (gLogCategory_APEndpointStreamLocal <= 50 && (gLogCategory_APEndpointStreamLocal != -1 || OUTLINED_FUNCTION_4(&gLogCategory_APEndpointStreamLocal)))
  {
    OUTLINED_FUNCTION_2(&gLogCategory_APEndpointStreamLocal, "OSStatus APEndpointStreamLocalCreate(CFAllocatorRef, CFStringRef, CFStringRef, CFDictionaryRef, APSNetworkClockRef, Boolean, FigEndpointStreamRef *)", v3, "[%{ptr}] created for %@, supportedAudioFormats=%@");
  }

  if (*a2)
  {
    CFRelease(*a2);
  }
}

void localStream_isPassthroughSupportedForFormatDescription_cold_3(void *a1, CFTypeRef *a2)
{
  APSAudioFormatDescriptionListCopyDebugString();
  if (gLogCategory_APEndpointStreamLocal <= 50 && (gLogCategory_APEndpointStreamLocal != -1 || OUTLINED_FUNCTION_4(&gLogCategory_APEndpointStreamLocal)))
  {
    OUTLINED_FUNCTION_2(&gLogCategory_APEndpointStreamLocal, "OSStatus localStream_isPassthroughSupportedForFormatDescription(FigEndpointStreamAirPlayRef, FigEndpointStreamAudioFormatDescriptionRef, Boolean *)", v3, "[%{ptr}] isPassthroughSupported=%s, storage->supportedFormats=%@");
  }

  if (*a2)
  {
    CFRelease(*a2);
  }
}

uint64_t coreUtilsPairing_performAdminPairingOperation(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v12 = 0;
  dataPointerOut = 0;
  lengthAtOffsetOut = 0;
  v4 = PairingSessionExchange();
  if (v4)
  {
LABEL_24:
    v9 = v4;
    goto LABEL_16;
  }

  v5 = *MEMORY[0x277CBECE8];
  while (1)
  {
    CMBaseObjectGetDerivedStorage();
    v14 = 0;
    Mutable = CFDictionaryCreateMutable(v5, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    if (!Mutable)
    {
      break;
    }

    v7 = Mutable;
    if (!TMIsAutomaticTimeEnabled())
    {
      goto LABEL_7;
    }

    Current = CFAbsoluteTimeGetCurrent();
    ASPrintF(&v14, "%lld", Current);
    if (v14)
    {
      CFDictionarySetCString();
LABEL_7:
      CFDictionarySetData();
      v9 = APTransportStreamSendPlistMessageCreatingReply();
      goto LABEL_8;
    }

    v9 = 4294895526;
    APSLogErrorAt();
LABEL_8:
    CFRelease(v7);
    if (v14)
    {
      free(v14);
    }

    if (v9)
    {
      goto LABEL_16;
    }

    if (v12)
    {
      free(v12);
      v12 = 0;
    }

    lengthAtOffsetOut = 0;
    dataPointerOut = 0;
    OUTLINED_FUNCTION_12_6();
    v4 = PairingSessionExchange();
    if (v4)
    {
      goto LABEL_24;
    }
  }

  v9 = 4294895526;
  APSLogErrorAt();
LABEL_16:
  if (v12)
  {
    free(v12);
    v12 = 0;
  }

  if (v9 && gLogCategory_APPairingClientCoreUtils <= 90 && (gLogCategory_APPairingClientCoreUtils != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APPairingClientCoreUtils, "OSStatus coreUtilsPairing_performAdminPairingOperation(APPairingClientRef, PairingSessionRef, OSType)", 33554522, "### [%{ptr}] Admin pairing operation CoreUtils failed: %#m\n", a1, v9);
  }

  return v9;
}

id *APPairingClientCoreUtilsCopyGroupInfo(uint64_t a1, id **a2)
{
  result = CMBaseObjectGetDerivedStorage();
  if (result[4])
  {
    result = [*result pairingGroupInfoForPairingGroupID:?];
    *a2 = result;
  }

  return result;
}

void __APPairingClientCoreUtilsCreateUnpairedPeersFromGroupInfo_block_invoke_2(uint64_t a1, CFTypeRef cf1, const void *a3)
{
  if (CFEqual(cf1, @"groupID"))
  {
LABEL_25:
    v13 = 0;
    v8 = 0;
    goto LABEL_18;
  }

  v6 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:cf1];
  if (!v6)
  {
    if (gLogCategory_APPairingClientCoreUtils <= 90 && (gLogCategory_APPairingClientCoreUtils != -1 || OUTLINED_FUNCTION_4_3(&gLogCategory_APPairingClientCoreUtils)))
    {
      OUTLINED_FUNCTION_4_0(&gLogCategory_APPairingClientCoreUtils, "OSStatus APPairingClientCoreUtilsCreateUnpairedPeersFromGroupInfo(CFDictionaryRef, CFArrayRef, CFArrayRef *)_block_invoke_2", v7, "Failed to convert group peer identifier %'@ into UUID\n");
    }

    goto LABEL_25;
  }

  v8 = v6;
  if ([*(a1 + 32) containsObject:v6])
  {
LABEL_15:
    v13 = 0;
    goto LABEL_18;
  }

  if (!a3 || (v9 = CFGetTypeID(a3), v9 != CFDataGetTypeID()))
  {
    v10 = CFGetTypeID(a3);
    v12 = CFCopyTypeIDDescription(v10);
    if (gLogCategory_APPairingClientCoreUtils <= 90 && (gLogCategory_APPairingClientCoreUtils != -1 || OUTLINED_FUNCTION_4_3(&gLogCategory_APPairingClientCoreUtils)))
    {
      OUTLINED_FUNCTION_4_0(&gLogCategory_APPairingClientCoreUtils, "OSStatus APPairingClientCoreUtilsCreateUnpairedPeersFromGroupInfo(CFDictionaryRef, CFArrayRef, CFArrayRef *)_block_invoke_2", v11, "LTPK for identifier %'@: is of %@ type instead of CFData type\n");
    }

    if (v12)
    {
      CFRelease(v12);
    }

    goto LABEL_15;
  }

  v13 = objc_alloc_init(MEMORY[0x277D028D8]);
  [v13 setIdentifier:v8];
  [v13 setPublicKey:a3];
  if (gLogCategory_APPairingClientCoreUtils <= 50 && (gLogCategory_APPairingClientCoreUtils != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APPairingClientCoreUtils, "OSStatus APPairingClientCoreUtilsCreateUnpairedPeersFromGroupInfo(CFDictionaryRef, CFArrayRef, CFArrayRef *)_block_invoke_2", 33554482, "Created pairing group unpaired peer [%{ptr}] with identifier %'@\n", v13, cf1);
  }

  [*(a1 + 40) addObject:v13];
LABEL_18:
}

BOOL coreUtilsPairing_IsPeerKnown(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  memset(v7, 0, sizeof(v7));
  v6 = 0;
  v2 = *(CMBaseObjectGetDerivedStorage() + 24);
  if (!v2)
  {
    return 0;
  }

  OUTLINED_FUNCTION_7_7(v2, v7);
  if (coreUtilsPairing_createAirPlayPairingSession(a1, 0, 0, 0, &v6))
  {
    APSLogErrorAt();
    v4 = 0;
    v3 = v6;
    if (!v6)
    {
      return v4;
    }

    goto LABEL_4;
  }

  v3 = v6;
  v4 = PairingSessionFindPeer() == 0;
  if (v3)
  {
LABEL_4:
    CFRelease(v3);
  }

  return v4;
}

uint64_t coreUtilsPairing_PerformVerification(uint64_t a1, void *a2)
{
  v77[1] = *MEMORY[0x277D85DE8];
  v55 = a1;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (DerivedStorage[64])
  {
    v4 = DerivedStorage[66] == 0;
  }

  else
  {
    v4 = 0;
  }

  if (DerivedStorage[58])
  {
    return 0;
  }

  if (DerivedStorage[60])
  {
    v5 = 8;
  }

  else if (DerivedStorage[61])
  {
    if (DerivedStorage[62])
    {
      v5 = 7;
    }

    else
    {
      v5 = 6;
    }
  }

  else if (DerivedStorage[57])
  {
    if (DerivedStorage[59])
    {
      v5 = 5;
    }

    else
    {
      v5 = 3;
    }
  }

  else
  {
    v5 = 2;
  }

  HIDWORD(v62) = 0;
  v13 = CMBaseObjectGetDerivedStorage();
  v60 = 0;
  dataPointerOut = 0;
  *buffer = 0u;
  v66 = 0u;
  lengthAtOffsetOut = 0;
  HIBYTE(v58) = 0;
  *v56 = 0;
  cf = 0;
  v15 = (v13 + 8);
  v14 = *(v13 + 8);
  if (v14)
  {
    CFRelease(v14);
    *v15 = 0;
  }

  LODWORD(v16) = 33554462;
  if (gLogCategory_APPairingClientCoreUtils <= 50)
  {
    if (gLogCategory_APPairingClientCoreUtils != -1 || (v14 = _LogCategory_Initialize(), v14))
    {
      if ((v5 - 6) > 2)
      {
        v17 = "AP";
      }

      else
      {
        v17 = off_27849D2B8[v5 - 6];
      }

      v41 = v17;
      OUTLINED_FUNCTION_1_24();
      v14 = LogPrintF(&gLogCategory_APPairingClientCoreUtils, "OSStatus coreUtilsPairing_performVerificationInternal(APPairingClientRef, APPairingType, Boolean, CFTypeRef *)", 33554482, "[%{ptr}] Control pair-verify CU-%s\n");
    }
  }

  if (v5 == 8)
  {
    v18 = OUTLINED_FUNCTION_14_6(v14, v6, v7, v8, v9, v10, v11, v12, v40, v41, v42, v43, v44, v46, v47, v49, v50, v51, allocator, v54, v55, *v56, cf, v58, lengthAtOffsetOut, v60, dataPointerOut, v62, v63, v64, *buffer, *&buffer[8], v66, *(&v66 + 1), v67[0]);
    if (!v18)
    {
      PairingSessionSetFlags();
      PairingSessionSetLogging();
      PairingSessionSetSignBytesHandler_b();
      PairingSessionSetVerifySignatureHandler_b();
LABEL_32:
      *v15 = v67[0];
      HIDWORD(v62) = 0;
      goto LABEL_36;
    }

    v38 = v18;
    APSLogErrorAt();
    if (v67[0])
    {
      CFRelease(v67[0]);
    }

    HIDWORD(v62) = v38;
    goto LABEL_155;
  }

  if ((v5 & 0xE) == 6)
  {
    v19 = OUTLINED_FUNCTION_14_6(v14, v6, v7, v8, v9, v10, v11, v12, v40, v41, v42, v43, v44, v46, v47, v49, v50, v51, allocator, v54, v55, *v56, cf, v58, lengthAtOffsetOut, v60, dataPointerOut, v62, v63, v64, *buffer, *&buffer[8], v66, *(&v66 + 1), v67[0]);
    if (!v19)
    {
      PairingSessionSetFlags();
      PairingSessionSetLogging();
      goto LABEL_32;
    }

    v39 = v19;
    APSLogErrorAt();
    if (v67[0])
    {
      CFRelease(v67[0]);
    }

    HIDWORD(v62) = v39;
LABEL_155:
    APSLogErrorAt();
    v26 = 0;
    goto LABEL_121;
  }

  HIDWORD(v62) = coreUtilsPairing_createAirPlayPairingSession(v55, 3, 0, v4, v15);
  if (HIDWORD(v62))
  {
    goto LABEL_155;
  }

  CFStringGetCString(*(v13 + 16), buffer, 32, 0x8000100u);
  HIDWORD(v62) = PairingSessionSetIdentifier();
  if (HIDWORD(v62))
  {
    goto LABEL_155;
  }

  APPairingClientCoreUtilsCopyGroupInfo(v55, v56);
LABEL_36:
  if (gLogCategory_APPairingClientCoreUtils <= 50 && (gLogCategory_APPairingClientCoreUtils != -1 || _LogCategory_Initialize()))
  {
    v42 = *v15;
    OUTLINED_FUNCTION_1_24();
    LogPrintF(&gLogCategory_APPairingClientCoreUtils, "OSStatus coreUtilsPairing_performVerificationInternal(APPairingClientRef, APPairingType, Boolean, CFTypeRef *)", 33554482, "[%{ptr}] Created %s pair-verify session [%{ptr}]\n");
  }

  v20 = *v56;
  if (*v56)
  {
    if (APPairingClientCoreUtilsIsValidPairingGroupInfo(*v56, *(v13 + 24), *(v13 + 40)))
    {
      if (gLogCategory_APPairingClientCoreUtils <= 30 && (gLogCategory_APPairingClientCoreUtils != -1 || _LogCategory_Initialize()))
      {
        v42 = v20;
        OUTLINED_FUNCTION_1_24();
        LogPrintF(&gLogCategory_APPairingClientCoreUtils, "OSStatus coreUtilsPairing_performVerificationInternal(APPairingClientRef, APPairingType, Boolean, CFTypeRef *)", 33554462, "[%{ptr}] Setting self group info on pair-verify session [%{ptr}]: %1.64@\n");
      }

      HIDWORD(v62) = PairingSessionSetProperty();
      if (HIDWORD(v62))
      {
        if (gLogCategory_APPairingClientCoreUtils <= 90 && (gLogCategory_APPairingClientCoreUtils != -1 || _LogCategory_Initialize()))
        {
          OUTLINED_FUNCTION_1_24();
          LogPrintF(&gLogCategory_APPairingClientCoreUtils, "OSStatus coreUtilsPairing_performVerificationInternal(APPairingClientRef, APPairingType, Boolean, CFTypeRef *)", 33554522, "[%{ptr}] Failed to set self group info on pair-verify session [%{ptr}]: %#m\n");
        }

        v26 = 0;
        goto LABEL_120;
      }
    }

    else
    {
      if (gLogCategory_APPairingClientCoreUtils <= 60 && (gLogCategory_APPairingClientCoreUtils != -1 || _LogCategory_Initialize()))
      {
        LogPrintF(&gLogCategory_APPairingClientCoreUtils, "OSStatus coreUtilsPairing_performVerificationInternal(APPairingClientRef, APPairingType, Boolean, CFTypeRef *)", 33554492, "[%{ptr}] Discarding self group info for pair-verify session [%{ptr}]\n", v55, *v15, v42);
      }

      CFRelease(v20);
      v20 = 0;
      *v56 = 0;
    }
  }

  dataPointerOut = 0;
  lengthAtOffsetOut = 0;
  HIBYTE(v58) = 0;
  OUTLINED_FUNCTION_13_5();
  HIDWORD(v62) = PairingSessionExchange();
  if (HIDWORD(v62))
  {
    v26 = 0;
    goto LABEL_119;
  }

  v45 = v13;
  v48 = a2;
  allocatora = *MEMORY[0x277CBECE8];
  v16 = *MEMORY[0x277CEA360];
  while (!HIBYTE(v58))
  {
    if (cf)
    {
      CFRelease(cf);
      cf = 0;
    }

    CMBaseObjectGetDerivedStorage();
    v63 = 0;
    v73 = 0u;
    v74 = 0u;
    v71 = 0u;
    v72 = 0u;
    v69 = 0u;
    v70 = 0u;
    *v67 = 0u;
    v68 = 0u;
    Mutable = CFDictionaryCreateMutable(allocatora, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    if (!Mutable)
    {
      APSLogErrorAt();
      v26 = 0;
      OUTLINED_FUNCTION_11_4();
      HIDWORD(v62) = v37;
      goto LABEL_142;
    }

    v22 = Mutable;
    APSGetDeviceNameCString();
    CFDictionarySetCString();
    snprintf(__str, 0x20uLL, "%d", v5);
    CFDictionarySetCString();
    CFDictionarySetValue(v22, @"X-Apple-PD", @"1");
    if (TMIsAutomaticTimeEnabled())
    {
      Current = CFAbsoluteTimeGetCurrent();
      ASPrintF(&v63, "%lld", Current);
      if (!v63)
      {
        v24 = -71770;
        APSLogErrorAt();
        goto LABEL_69;
      }

      CFDictionarySetCString();
    }

    CFDictionarySetData();
    if (gLogCategory_APPairingClientCoreUtils <= 10 && (gLogCategory_APPairingClientCoreUtils != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_APPairingClientCoreUtils, "OSStatus coreUtilsPairing_sendPairVerifyRequest(APPairingClientRef, APPairingType, const uint8_t *, size_t, CMBlockBufferRef *)", 33554442, "[%{ptr}] pair-verify request = %@\n", v55, v22, v42);
    }

    v24 = APTransportStreamSendPlistMessageCreatingReply();
LABEL_69:
    CFRelease(v22);
    if (v63)
    {
      free(v63);
    }

    HIDWORD(v62) = v24;
    if (v24)
    {
      goto LABEL_141;
    }

    if (v60)
    {
      free(v60);
      v60 = 0;
    }

    lengthAtOffsetOut = 0;
    dataPointerOut = 0;
    if (cf)
    {
      HIDWORD(v62) = CMBlockBufferGetDataPointer(cf, 0, &lengthAtOffsetOut, 0, &dataPointerOut);
      if (HIDWORD(v62))
      {
        APSLogErrorAt();
LABEL_141:
        v26 = 0;
LABEL_142:
        OUTLINED_FUNCTION_5_10();
        goto LABEL_119;
      }
    }

    else
    {
      OUTLINED_FUNCTION_12_6();
    }

    OUTLINED_FUNCTION_13_5();
    HIDWORD(v62) = PairingSessionExchange();
    if (HIDWORD(v62))
    {
      goto LABEL_141;
    }
  }

  v25 = v4;
  if (v4)
  {
    v26 = PairingSessionCopyProperty();
    OUTLINED_FUNCTION_5_10();
    v27 = v48;
    if (v28)
    {
      APSLogErrorAt();
      goto LABEL_119;
    }

    if (([MEMORY[0x277D24E20] isCertificateValidForFeatures:1 certificate:v26] & 1) == 0)
    {
      APSLogErrorAt();
      OUTLINED_FUNCTION_11_4();
      HIDWORD(v62) = v29 + 606;
      if (gLogCategory_APPairingClientCoreUtils <= 90 && (gLogCategory_APPairingClientCoreUtils != -1 || _LogCategory_Initialize()))
      {
        OUTLINED_FUNCTION_1_24();
        LogPrintF(&gLogCategory_APPairingClientCoreUtils, "OSStatus coreUtilsPairing_performVerificationInternal(APPairingClientRef, APPairingType, Boolean, CFTypeRef *)", (v16 + 60), "[%{ptr}] Cerificate check failed for AirPlay during pair-verify\n");
      }

      goto LABEL_119;
    }
  }

  else
  {
    v26 = 0;
    OUTLINED_FUNCTION_5_10();
    v27 = v48;
  }

  if (gLogCategory_APPairingClientCoreUtils <= 50 && (gLogCategory_APPairingClientCoreUtils != -1 || _LogCategory_Initialize()))
  {
    OUTLINED_FUNCTION_1_24();
    LogPrintF(&gLogCategory_APPairingClientCoreUtils, "OSStatus coreUtilsPairing_performVerificationInternal(APPairingClientRef, APPairingType, Boolean, CFTypeRef *)", (v16 + 20), "[%{ptr}] Control pair-verify CU-%s success\n");
  }

  *(v45 + 66) = v25;
  HIDWORD(v64) = 0;
  v30 = CMBaseObjectGetDerivedStorage();
  *__str = 0;
  v63 = 0;
  if (*(v30 + 8))
  {
    PairedPeer = PairingSessionGetPairedPeer();
    if (HIDWORD(v64))
    {
      goto LABEL_150;
    }

    if (!v20)
    {
      goto LABEL_95;
    }

    v76 = @"groupInfo";
    v77[0] = v20;
    PairedPeer = [PairedPeer patchedPairedPeerWithPeerInfo:{objc_msgSend(MEMORY[0x277CBEAC0], "dictionaryWithObjects:forKeys:count:", v77, &v76, 1)}];
    HIDWORD(v64) = [*v30 savePairedPeer:PairedPeer];
    if (HIDWORD(v64))
    {
LABEL_150:
      APSLogErrorAt();
LABEL_95:
      v32 = 0;
    }

    else
    {
      v32 = PairingSessionCopyProperty();
      if (v32)
      {
        if (gLogCategory_APPairingClientCoreUtils <= 30 && (gLogCategory_APPairingClientCoreUtils != -1 || _LogCategory_Initialize()))
        {
          v42 = v32;
          OUTLINED_FUNCTION_1_24();
          LogPrintF(&gLogCategory_APPairingClientCoreUtils, "CUPairedPeer *coreUtilsPairing_getPairedPeerFromVerificationPairingSession(APPairingClientRef, CFDictionaryRef)", 33554462, "[%{ptr}] Copied peer group info from pair-verify session [%{ptr}]: %1.64@\n");
        }

        HIDWORD(v64) = APPairingClientCoreUtilsCreateCombinedPairingGroupInfo(v20, v32, *(v30 + 24), *(v30 + 40), __str);
        if (HIDWORD(v64))
        {
          APSLogErrorAt();
        }

        else
        {
          if (gLogCategory_APPairingClientCoreUtils <= 30 && (gLogCategory_APPairingClientCoreUtils != -1 || _LogCategory_Initialize()))
          {
            LogPrintF(&gLogCategory_APPairingClientCoreUtils, "CUPairedPeer *coreUtilsPairing_getPairedPeerFromVerificationPairingSession(APPairingClientRef, CFDictionaryRef)", 33554462, "[%{ptr}] Combined group info: %1.64@\n", v55, *__str, v42);
          }

          v33 = [*v30 peersMatchingPairingGroupID:*(v30 + 32)];
          APPairingClientCoreUtilsCreateUnpairedPeersFromGroupInfo(*__str, v33, &v63);
          v67[0] = MEMORY[0x277D85DD0];
          v67[1] = 3221225472;
          *&v68 = __coreUtilsPairing_getPairedPeerFromVerificationPairingSession_block_invoke;
          *(&v68 + 1) = &__block_descriptor_48_e29_v32__0__CUPairedPeer_8Q16_B24l;
          *&v69 = v55;
          *(&v69 + 1) = v30;
          [v63 enumerateObjectsUsingBlock:v67];
          HIDWORD(v64) = APPairingClientCoreUtilsUpdateGroupInfo(v55, *__str);
          if (HIDWORD(v64))
          {
            APSLogErrorAt();
          }

          LODWORD(v16) = 33554462;
        }
      }
    }
  }

  else
  {
    APSLogErrorAt();
    v32 = 0;
    PairedPeer = 0;
  }

  if (*__str)
  {
    CFRelease(*__str);
  }

  if (v32)
  {
    CFRelease(v32);
  }

  if (v27)
  {
    if (PairedPeer)
    {
      v34 = CFRetain(PairedPeer);
    }

    else
    {
      v34 = 0;
    }

    *v27 = v34;
  }

LABEL_119:
  if (v20)
  {
LABEL_120:
    CFRelease(v20);
  }

LABEL_121:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v26)
  {
    CFRelease(v26);
  }

  if (v60)
  {
    free(v60);
    v60 = 0;
  }

  if (!HIDWORD(v62))
  {
    return 0;
  }

  if (gLogCategory_APPairingClientCoreUtils <= 90 && (gLogCategory_APPairingClientCoreUtils != -1 || _LogCategory_Initialize()))
  {
    OUTLINED_FUNCTION_1_24();
    LogPrintF(&gLogCategory_APPairingClientCoreUtils, "OSStatus coreUtilsPairing_performVerificationInternal(APPairingClientRef, APPairingType, Boolean, CFTypeRef *)", (v16 + 60), "### [%{ptr}] Control pair-verify CU-%s failed: %#m\n");
  }

  if (*v15)
  {
    CFRelease(*v15);
    *v15 = 0;
  }

  v35 = HIDWORD(v62);
  if (HIDWORD(v62))
  {
    APSLogErrorAt();
  }

  return v35;
}

uint64_t coreUtilsPairing_performSetupInternal(uint64_t a1, const __CFString *a2, int a3, int a4, char *a5, const void *a6, const __CFString **a7, void *a8, void *a9, void *a10)
{
  v69 = *MEMORY[0x277D85DE8];
  DataPointer = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v63 = 0;
  dataPointerOut = 0;
  lengthAtOffsetOut = 0;
  v61 = 0;
  memset(v67, 0, 128);
  v59 = 0;
  cf = 0;
  if (gLogCategory_APPairingClientCoreUtils <= 50 && (gLogCategory_APPairingClientCoreUtils != -1 || OUTLINED_FUNCTION_4(&gLogCategory_APPairingClientCoreUtils)))
  {
    OUTLINED_FUNCTION_2(&gLogCategory_APPairingClientCoreUtils, "OSStatus coreUtilsPairing_performSetupInternal(APPairingClientRef, const CFStringRef, APPairingType, Boolean, Boolean, CFStringRef, CFStringRef *, CFDataRef *, CFDataRef *, CFTypeRef *)", v15, "[%{ptr}] Control pair-setup CU, type %u\n");
  }

  DataPointer = coreUtilsPairing_createAirPlayPairingSession(a1, 1, a3 == 4, a4, &v59);
  if (DataPointer)
  {
LABEL_64:
    APSLogErrorAt();
LABEL_65:
    Mutable = 0;
    OUTLINED_FUNCTION_10_3();
    goto LABEL_96;
  }

  if (gLogCategory_APPairingClientCoreUtils <= 50 && (gLogCategory_APPairingClientCoreUtils != -1 || OUTLINED_FUNCTION_4(&gLogCategory_APPairingClientCoreUtils)))
  {
    OUTLINED_FUNCTION_2(&gLogCategory_APPairingClientCoreUtils, "OSStatus coreUtilsPairing_performSetupInternal(APPairingClientRef, const CFStringRef, APPairingType, Boolean, Boolean, CFStringRef, CFStringRef *, CFDataRef *, CFDataRef *, CFTypeRef *)", v17, "[%{ptr}] Created Pair-setup session [%{ptr}]\n");
  }

  v52 = a7;
  if (a2)
  {
    OUTLINED_FUNCTION_7_7(a2, v67);
    v18 = v59;
    if (LOBYTE(v67[0]))
    {
      DataPointer = PairingSessionSetSetupCode();
      if (DataPointer)
      {
        goto LABEL_64;
      }
    }
  }

  else
  {
    v18 = v59;
  }

  OUTLINED_FUNCTION_7_7(*(DerivedStorage + 16), v67);
  DataPointer = PairingSessionSetIdentifier();
  if (DataPointer)
  {
    goto LABEL_64;
  }

  v53 = DerivedStorage;
  v54 = a4;
  OUTLINED_FUNCTION_12_6();
  dataPointerOut = 0;
  lengthAtOffsetOut = 0;
  v61 = 0;
  allocator = *MEMORY[0x277CBECE8];
  if (a5)
  {
    v19 = a6 == 0;
  }

  else
  {
    v19 = 1;
  }

  v20 = !v19;
  a2 = @"X-Apple-HKP";
  a5 = *MEMORY[0x277CEA360];
  while (1)
  {
    v21 = PairingSessionExchange();
    DataPointer = v21;
    v23 = (v21 + 71775) < 3 || v21 == -71164;
    if (v23 || v21 == -71145)
    {
      if (gLogCategory_APPairingClientCoreUtils > 90)
      {
        goto LABEL_64;
      }

      if (gLogCategory_APPairingClientCoreUtils != -1 || (OUTLINED_FUNCTION_8(), v26 = _LogCategory_Initialize(), v21 = DataPointer, v26))
      {
        v50 = v21;
        OUTLINED_FUNCTION_8();
        LogPrintF(&gLogCategory_APPairingClientCoreUtils, "OSStatus coreUtilsPairing_performSetupInternal(APPairingClientRef, const CFStringRef, APPairingType, Boolean, Boolean, CFStringRef, CFStringRef *, CFDataRef *, CFDataRef *, CFTypeRef *)", (v25 + 40), "### [%{ptr}] Error in pairing session exchange: %#m\n", a1, v50);
        LODWORD(v21) = DataPointer;
      }

      if (v21)
      {
        goto LABEL_64;
      }
    }

    else if (v21)
    {
      Mutable = 0;
      OUTLINED_FUNCTION_10_3();
      v44 = 200401;
      goto LABEL_116;
    }

    if (v61)
    {
      break;
    }

    if (cf)
    {
      CFRelease(cf);
      cf = 0;
    }

    CMBaseObjectGetDerivedStorage();
    memset(&v67[8], 0, 128);
    v66 = 0;
    Mutable = CFDictionaryCreateMutable(allocator, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    if (!Mutable)
    {
      APSLogErrorAt();
      OUTLINED_FUNCTION_10_3();
      goto LABEL_115;
    }

    APSGetDeviceNameCString();
    CFDictionarySetCString();
    if (TMIsAutomaticTimeEnabled())
    {
      Current = CFAbsoluteTimeGetCurrent();
      ASPrintF(&v66, "%lld", Current);
      if (!v66)
      {
        v30 = -71770;
        APSLogErrorAt();
        goto LABEL_50;
      }

      CFDictionarySetCString();
    }

    if (v20)
    {
      CFDictionarySetValue(Mutable, @"X-Apple-UsingNANDiversifiedPINAsSetupCode", @"1");
      CFDictionarySetValue(Mutable, @"X-Apple-NANMACAddress", a6);
    }

    snprintf(__str, 0x20uLL, "%d", a3);
    CFDictionarySetCString();
    CFDictionarySetData();
    if (gLogCategory_APPairingClientCoreUtils <= 10)
    {
      if (gLogCategory_APPairingClientCoreUtils != -1 || (OUTLINED_FUNCTION_8(), _LogCategory_Initialize()))
      {
        OUTLINED_FUNCTION_8();
        LogPrintF(&gLogCategory_APPairingClientCoreUtils, "OSStatus coreUtilsPairing_sendPairSetupRequest(APPairingClientRef, APPairingType, Boolean, CFStringRef, const uint8_t *, size_t, CMBlockBufferRef *)", (v29 - 40), "[%{ptr}] pair-setup request = %@\n", a1, Mutable);
      }
    }

    v30 = APTransportStreamSendPlistMessageCreatingReply();
LABEL_50:
    CFRelease(Mutable);
    if (v66)
    {
      free(v66);
    }

    DataPointer = v30;
    if (v30)
    {
      goto LABEL_65;
    }

    if (v63)
    {
      free(v63);
      v63 = 0;
    }

    OUTLINED_FUNCTION_12_6();
    lengthAtOffsetOut = 0;
    dataPointerOut = 0;
    if (cf)
    {
      DataPointer = CMBlockBufferGetDataPointer(cf, 0, &lengthAtOffsetOut, 0, &dataPointerOut);
      if (DataPointer)
      {
        goto LABEL_64;
      }
    }
  }

  if (gLogCategory_APPairingClientCoreUtils <= 50 && (gLogCategory_APPairingClientCoreUtils != -1 || OUTLINED_FUNCTION_4(&gLogCategory_APPairingClientCoreUtils)))
  {
    OUTLINED_FUNCTION_2(&gLogCategory_APPairingClientCoreUtils, "OSStatus coreUtilsPairing_performSetupInternal(APPairingClientRef, const CFStringRef, APPairingType, Boolean, Boolean, CFStringRef, CFStringRef *, CFDataRef *, CFDataRef *, CFTypeRef *)", v22, "[%{ptr}] Control pair-setup coreUtils success\n");
  }

  if (a3 == 4)
  {
    v31 = *(v53 + 8);
    *(v53 + 8) = v18;
    if (v18)
    {
      CFRetain(v18);
    }

    if (v31)
    {
      CFRelease(v31);
    }

    OUTLINED_FUNCTION_10_3();
    *(v53 + 58) = 1;
    v33 = a9;
    v32 = a10;
    goto LABEL_79;
  }

  a5 = PairingSessionCopyPeerIdentifier();
  if (DataPointer)
  {
    APSLogErrorAt();
    Mutable = 0;
    a2 = 0;
  }

  else
  {
    v34 = CFStringCreateWithCString(allocator, a5, 0x8000100u);
    a2 = v34;
    if (v34)
    {
      v35 = *(v53 + 24);
      *(v53 + 24) = v34;
      CFRetain(v34);
      if (v35)
      {
        CFRelease(v35);
      }

      v33 = a9;
      v32 = a10;
      if (v52)
      {
        *v52 = a2;
        a2 = 0;
      }

LABEL_79:
      if (a8)
      {
        *a8 = 0;
      }

      if (!v54)
      {
        Mutable = 0;
        goto LABEL_88;
      }

      Mutable = PairingSessionCopyProperty();
      if (DataPointer)
      {
        APSLogErrorAt();
      }

      else
      {
        if ([MEMORY[0x277D24E20] isCertificateValidForFeatures:1 certificate:Mutable])
        {
          if (v33)
          {
            if (Mutable)
            {
              v36 = CFRetain(Mutable);
            }

            else
            {
              v36 = 0;
            }

            *v33 = v36;
            if (v32)
            {
LABEL_92:
              PairedPeer = PairingSessionGetPairedPeer();
              if (PairedPeer)
              {
                PairedPeer = CFRetain(PairedPeer);
              }

              *v32 = PairedPeer;
            }

LABEL_95:
            *(v53 + 66) = v54;
            goto LABEL_96;
          }

LABEL_88:
          if (v32)
          {
            goto LABEL_92;
          }

          goto LABEL_95;
        }

        APSLogErrorAt();
        OUTLINED_FUNCTION_11_4();
        DataPointer = v45 + 606;
        if (gLogCategory_APPairingClientCoreUtils <= 90)
        {
          if (gLogCategory_APPairingClientCoreUtils != -1 || (OUTLINED_FUNCTION_8(), _LogCategory_Initialize()))
          {
            OUTLINED_FUNCTION_8();
            LogPrintF(v47, v48, (v46 + 40), v49, a1);
          }
        }
      }
    }

    else
    {
      APSLogErrorAt();
      Mutable = 0;
LABEL_115:
      OUTLINED_FUNCTION_11_4();
LABEL_116:
      DataPointer = v44;
    }
  }

LABEL_96:
  if (v59)
  {
    CFRelease(v59);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (a2)
  {
    CFRelease(a2);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  if (v63)
  {
    free(v63);
    v63 = 0;
  }

  if (a5)
  {
    free(a5);
  }

  result = DataPointer;
  if (DataPointer)
  {
    if (gLogCategory_APPairingClientCoreUtils <= 90)
    {
      if (gLogCategory_APPairingClientCoreUtils != -1 || (OUTLINED_FUNCTION_8(), v43 = _LogCategory_Initialize(), result = DataPointer, v43))
      {
        v51 = result;
        OUTLINED_FUNCTION_8();
        LogPrintF(v40, v41, (v39 + 40), v42, a1, v51);
        return DataPointer;
      }
    }
  }

  return result;
}

uint64_t APPairingClientCoreUtilsPerformRemovePairing_cold_2()
{
  OUTLINED_FUNCTION_4_15();
  if (!v1)
  {
    return OUTLINED_FUNCTION_2(&gLogCategory_APPairingClientCoreUtils, "OSStatus APPairingClientCoreUtilsPerformRemovePairing(APPairingClientRef, const CFStringRef)", v0, "[%{ptr}] Created remove pairing client session [%{ptr}]\n");
  }

  result = OUTLINED_FUNCTION_4(&gLogCategory_APPairingClientCoreUtils);
  if (result)
  {
    return OUTLINED_FUNCTION_2(&gLogCategory_APPairingClientCoreUtils, "OSStatus APPairingClientCoreUtilsPerformRemovePairing(APPairingClientRef, const CFStringRef)", v0, "[%{ptr}] Created remove pairing client session [%{ptr}]\n");
  }

  return result;
}

uint64_t APPairingClientCoreUtilsPerformListPairings_cold_2()
{
  OUTLINED_FUNCTION_4_15();
  if (!v1)
  {
    return OUTLINED_FUNCTION_2(&gLogCategory_APPairingClientCoreUtils, "OSStatus APPairingClientCoreUtilsPerformListPairings(APPairingClientRef, CFArrayRef *)", v0, "[%{ptr}] Created list pairings client session [%{ptr}]\n");
  }

  result = OUTLINED_FUNCTION_4(&gLogCategory_APPairingClientCoreUtils);
  if (result)
  {
    return OUTLINED_FUNCTION_2(&gLogCategory_APPairingClientCoreUtils, "OSStatus APPairingClientCoreUtilsPerformListPairings(APPairingClientRef, CFArrayRef *)", v0, "[%{ptr}] Created list pairings client session [%{ptr}]\n");
  }

  return result;
}

void sharedKeyHolder_CopyMasterAESKeyAndIV_cold_1(const void *a1)
{
  APSLogErrorAt();

  CFRelease(a1);
}

uint64_t vdsink_ShouldDropFrame_cold_1_0(uint64_t a1, CMTime *a2)
{
  if (*(a1 + 8))
  {
    v2 = *(a1 + 8);
  }

  else
  {
    v2 = &stru_283570B70;
  }

  time = *a2;
  Seconds = CMTimeGetSeconds(&time);
  return LogPrintF(&gLogCategory_APVirtualDisplaySink, "Boolean vdsink_ShouldDropFrame(FigVirtualDisplaySinkRef)", 33554472, "%@ %f secs already enqueued, should drop frame\n", v2, *&Seconds);
}

uint64_t vdsink_ShouldDropFrame_cold_2_0(uint64_t a1, unsigned int *a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
    v2 = &stru_283570B70;
  }

  return LogPrintF(&gLogCategory_APVirtualDisplaySink, "Boolean vdsink_ShouldDropFrame(FigVirtualDisplaySinkRef)", 33554492, "%@ ### dropped %d frames due to sink overflow\n", v2, *a2);
}

uint64_t bufferedAudioEngine_handleClockLockStateChanged(uint64_t a1, const void *a2)
{
  result = CMBaseObjectGetDerivedStorage();
  if (a2)
  {
    if (gLogCategory_APAudioEngineBuffered <= 50 && (gLogCategory_APAudioEngineBuffered != -1 || OUTLINED_FUNCTION_4(&gLogCategory_APAudioEngineBuffered)))
    {
      CMBaseObjectGetDerivedStorage();
      OUTLINED_FUNCTION_1_26();
      OUTLINED_FUNCTION_2_0();
      LogPrintF(v4, v5, v6, v7);
    }

    CFRetain(a2);

    return APSPriorityDispatcherAsyncF();
  }

  return result;
}

uint64_t bufferedAudioEngine_releaseCryptors(CMTime *a1, int a2)
{
  v45 = *MEMORY[0x277D85DE8];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v5 = MEMORY[0x277CC0898];
  v43 = *MEMORY[0x277CC0898];
  v44 = *(MEMORY[0x277CC0898] + 8);
  v6 = *(MEMORY[0x277CC0898] + 16);
  *&v42.value = *MEMORY[0x277CC0898];
  v35 = v6;
  v42.epoch = v6;
  if (*DerivedStorage)
  {
    goto LABEL_28;
  }

  v7 = DerivedStorage;
  Count = CFDictionaryGetCount(*(DerivedStorage + 1216));
  if (Count < 1)
  {
    goto LABEL_28;
  }

  v9 = Count;
  if (a2)
  {
    bufferedAudioEngine_getFirstValidBufferTimestamp(&v38);
    v43 = v38;
    v10 = v40;
    v44 = v39;
    if (v40)
    {
      v35 = v41;
      goto LABEL_7;
    }

    APSLogErrorAt();
LABEL_28:
    v27 = 0;
    v11 = 0;
    v12 = 0;
    goto LABEL_22;
  }

  v10 = *(v5 + 12);
LABEL_7:
  v11 = OUTLINED_FUNCTION_88();
  if (!v11)
  {
    APSLogErrorAt();
    v12 = 0;
LABEL_26:
    v27 = 4294951816;
    goto LABEL_22;
  }

  v12 = OUTLINED_FUNCTION_88();
  if (!v12)
  {
    APSLogErrorAt();
    goto LABEL_26;
  }

  CFDictionaryGetKeysAndValues(*(v7 + 1216), v11, v12);
  v13 = 0;
  while (1)
  {
    v14 = CMTimeMakeFromDictionary(&v42, v12[v13]);
    if (a2 && OUTLINED_FUNCTION_95(v14, v15, v16, v17, v18, v19, v20, v21, v29, v30, v31, CryptorIDForCryptor, v33, v34, v35, v36, v37, v38, __SPAIR64__(v10, v44), v35, *&v42.value, v42.epoch) < 1)
    {
      goto LABEL_17;
    }

    if (gLogCategory_APAudioEngineBuffered <= 50 && (gLogCategory_APAudioEngineBuffered != -1 || OUTLINED_FUNCTION_4(&gLogCategory_APAudioEngineBuffered)))
    {
      v23 = "";
      if (a1)
      {
        v23 = (CMBaseObjectGetDerivedStorage() + 392);
      }

      v33 = v23;
      v34 = *(v7 + 530);
      *(&v31 + 1) = v11[v13];
      CryptorIDForCryptor = bufferedAudioEngine_getCryptorIDForCryptor(*(&v31 + 1));
      v30 = v33;
      *&v31 = v34;
      v29 = a1;
      OUTLINED_FUNCTION_2_0();
      LogPrintF(v24, v25, v26, "BAE [%{ptr}] %s[0x%04X] Releasing cryptor [%{ptr}] with cryptorID: 0x%llx\n");
    }

    CMNotificationCenterGetDefaultLocalCenter();
    v22 = FigNotificationCenterRemoveWeakListener();
    if (v22)
    {
      break;
    }

    CFDictionaryRemoveValue(*(v7 + 1216), v11[v13]);
LABEL_17:
    if (v9 == ++v13)
    {
      v27 = 0;
      goto LABEL_22;
    }
  }

  v27 = v22;
  APSLogErrorAt();
LABEL_22:
  free(v11);
  free(v12);
  return v27;
}

uint64_t bufferedAudioEngine_releaseMagicCookies(uint64_t a1, int a2)
{
  v50 = *MEMORY[0x277D85DE8];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v5 = MEMORY[0x277CC0898];
  v48 = *MEMORY[0x277CC0898];
  v49 = *(MEMORY[0x277CC0898] + 8);
  v6 = *(MEMORY[0x277CC0898] + 16);
  *&v47.value = *MEMORY[0x277CC0898];
  v47.epoch = v6;
  if (*DerivedStorage || (v7 = DerivedStorage, Count = CFDictionaryGetCount(*(DerivedStorage + 1056)), Count < 1))
  {
    v32 = 0;
    v11 = 0;
LABEL_29:
    v13 = 0;
    goto LABEL_23;
  }

  v9 = Count;
  if (a2)
  {
    bufferedAudioEngine_getFirstValidBufferTimestamp(&v43);
    v48 = v43;
    v10 = v45;
    v49 = v44;
    if ((v45 & 1) == 0)
    {
      v32 = 0;
      v11 = 0;
      goto LABEL_28;
    }

    v6 = v46;
  }

  else
  {
    v10 = *(v5 + 12);
  }

  v11 = OUTLINED_FUNCTION_88();
  if (!v11)
  {
    v32 = 4294951816;
LABEL_28:
    APSLogErrorAt();
    goto LABEL_29;
  }

  v12 = OUTLINED_FUNCTION_88();
  if (!v12)
  {
    v32 = 4294951816;
    goto LABEL_28;
  }

  v13 = v12;
  v40 = a1;
  CFDictionaryGetKeysAndValues(*(v7 + 1056), v11, v12);
  for (i = 0; i != v9; ++i)
  {
    CMTimeMakeFromDictionary(&v47, v13[i]);
    if (a2)
    {
      v15 = FigCFEqual();
      v16 = v15;
      if (OUTLINED_FUNCTION_95(v15, v17, v18, v19, v20, v21, v22, v23, v34, v35, v36, MagicCookieIDForMagicCookieData, v38, v39, v40, v41, v42, v43, __SPAIR64__(v10, v49), v6, *&v47.value, v47.epoch) < 1 || v16)
      {
        continue;
      }
    }

    OUTLINED_FUNCTION_69();
    if (v26 ^ v27 | v25 && (v24 != -1 || OUTLINED_FUNCTION_4(&gLogCategory_APAudioEngineBuffered)))
    {
      v28 = "";
      if (v40)
      {
        v28 = (CMBaseObjectGetDerivedStorage() + 392);
      }

      v38 = v28;
      v39 = *(v7 + 530);
      *(&v36 + 1) = v11[i];
      MagicCookieIDForMagicCookieData = bufferedAudioEngine_getMagicCookieIDForMagicCookieData(*(&v36 + 1));
      v35 = v38;
      *&v36 = v39;
      v34 = v40;
      OUTLINED_FUNCTION_2_0();
      LogPrintF(v29, v30, v31, "BAE [%{ptr}] %s[0x%04X] Releasing magic cookie [%{ptr}] with magicCookieID: 0x%llx\n");
    }

    CFDictionaryRemoveValue(*(v7 + 1056), v11[i]);
  }

  v32 = 0;
LABEL_23:
  free(v11);
  free(v13);
  return v32;
}

void bufferedAudioEngine_endpointStreamSuspendedNotification(uint64_t a1, const void *a2, uint64_t a3, const void *a4, const void *a5)
{
  if (a2)
  {
    v8 = malloc_type_malloc(0x18uLL, 0x60040149E097CuLL);
    if (v8)
    {
      v9 = v8;
      *v8 = CFRetain(a2);
      if (a4)
      {
        v10 = CFRetain(a4);
      }

      else
      {
        v10 = 0;
      }

      v9[1] = v10;
      if (a5)
      {
        v11 = CFRetain(a5);
      }

      else
      {
        v11 = 0;
      }

      v9[2] = v11;
      CMBaseObjectGetDerivedStorage();
      if (APSDispatchSectionEnterWithPriorityDispatcher())
      {
        APSLogErrorAt();
        if (*v9)
        {
          CFRelease(*v9);
        }

        v12 = v9[1];
        if (v12)
        {
          CFRelease(v12);
        }

        v13 = v9[2];
        if (v13)
        {
          CFRelease(v13);
        }

        free(v9);
      }
    }

    else
    {

      APSLogErrorAt();
    }
  }
}

void bufferedAudioEngine_endpointStreamSuspendedNotificationInternal(uint64_t a1)
{
  OUTLINED_FUNCTION_44(a1);
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  cf = 0;
  v3 = *(DerivedStorage + 592);
  if (!v3 || v3 != *(v1 + 8))
  {
    goto LABEL_12;
  }

  CMBaseObject = FigEndpointStreamGetCMBaseObject();
  v5 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v5)
  {
    goto LABEL_11;
  }

  v6 = *MEMORY[0x277CBECE8];
  if (v5(CMBaseObject, @"HoseRegistrar", *MEMORY[0x277CBECE8], &cf))
  {
    goto LABEL_11;
  }

  FigCFDictionaryGetValue();
  v7 = *MEMORY[0x277CBED28];
  v8 = FigCFEqual();
  v9 = v8;
  if (cf == *v1 && !v8)
  {
    goto LABEL_12;
  }

  CMNotificationCenterGetDefaultLocalCenter();
  if (FigNotificationCenterRemoveWeakListeners())
  {
LABEL_11:
    APSLogErrorAt();
LABEL_12:
    v11 = 0;
    goto LABEL_13;
  }

  if (v9)
  {
    Mutable = CFDictionaryCreateMutable(v6, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    v11 = Mutable;
    if (!Mutable)
    {
      APSLogErrorAt();
      goto LABEL_13;
    }

    CFDictionarySetValue(Mutable, *MEMORY[0x277CD61F8], v7);
  }

  else
  {
    v11 = 0;
  }

  CMNotificationCenterGetDefaultLocalCenter();
  FigDispatchAsyncPostNotification();
  v14 = *(DerivedStorage + 592);
  if (v14)
  {
    CFRelease(v14);
    *(DerivedStorage + 592) = 0;
  }

LABEL_13:
  APSDispatchSectionLeave();
  if (cf)
  {
    CFRelease(cf);
  }

  if (*v1)
  {
    CFRelease(*v1);
  }

  v12 = *(v1 + 8);
  if (v12)
  {
    CFRelease(v12);
  }

  v13 = *(v1 + 16);
  if (v13)
  {
    CFRelease(v13);
  }

  if (v11)
  {
    CFRelease(v11);
  }

  free(v1);
}

void bufferedAudioEngine_setTranscodeIsRestingAndUpdateConsumer(uint64_t a1, int a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 1112) != a2)
  {
    v4 = DerivedStorage;
    *(DerivedStorage + 1112) = a2;
    if (*(DerivedStorage + 1200))
    {
      if (a2)
      {
        v5 = *MEMORY[0x277CBECE8];
        v19 = **&MEMORY[0x277CC08F0];
        v6 = CMTimeCopyAsDictionary(&v19, v5);
        if (v6)
        {
          v7 = v6;
          v8 = *(v4 + 1200);
          v9 = *(*(CMBaseObjectGetVTable() + 8) + 56);
          if (v9 && !v9(v8, *MEMORY[0x277CD6470], v7))
          {
            goto LABEL_16;
          }

          goto LABEL_15;
        }
      }

      else
      {
        CMTimeMake(&v19, 10000, 1000);
        v10 = *MEMORY[0x277CBECE8];
        v11 = CMTimeCopyAsDictionary(&v19, *MEMORY[0x277CBECE8]);
        if (v11)
        {
          v7 = v11;
          v12 = *(v4 + 1200);
          v13 = *(*(CMBaseObjectGetVTable() + 8) + 56);
          if (v13)
          {
            if (!v13(v12, *MEMORY[0x277CD6470], v7))
            {
              CMTimeMake(&v19, 2000, 1000);
              v14 = CMTimeCopyAsDictionary(&v19, v10);
              if (v14)
              {
                v15 = v14;
                v16 = *(v4 + 1200);
                v17 = *(*(CMBaseObjectGetVTable() + 8) + 56);
                if (!v17 || v17(v16, *MEMORY[0x277CD6478], v15))
                {
                  APSLogErrorAt();
                }

                CFRelease(v7);
                v18 = v15;
                goto LABEL_17;
              }
            }
          }

LABEL_15:
          APSLogErrorAt();
LABEL_16:
          v18 = v7;
LABEL_17:
          CFRelease(v18);
          return;
        }
      }

      APSLogErrorAt();
    }
  }
}

uint64_t bufferedAudioEngine_handleTimedInfoManagerNotification(uint64_t a1, const void *a2, uint64_t a3, uint64_t a4, const void *a5)
{
  result = CMBaseObjectGetDerivedStorage();
  if (a2)
  {
    bufferedAudioEngine_updateInternalBadgeInfoAndPostNotificationIfNecessary(a2, a5, 1);
    CFRetain(a2);
    if (a5)
    {
      CFRetain(a5);
    }

    return APSPriorityDispatcherAsync();
  }

  return result;
}

uint64_t bufferedAudioEngine_updatePlaybackState(uint64_t a1, int a2)
{
  v28 = *MEMORY[0x277D85DE8];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 884) != a2)
  {
    v6 = DerivedStorage;
    v7 = LogCategoryCopyOSLogHandle();
    OUTLINED_FUNCTION_98();
    if (os_signpost_enabled(v2))
    {
      *__dst = 136315138;
      *&__dst[4] = bufferedAudioEngine_playbackStateGetCString(a2);
      OUTLINED_FUNCTION_97();
      _os_signpost_emit_with_name_impl(v8, v9, v10, 0x2B1605B8uLL, v11, v12, v13, 0xCu);
    }

    if (v7)
    {
      os_release(v7);
    }

    CString = bufferedAudioEngine_playbackStateGetCString(a2);
    strncpy(__dst, CString, 8uLL);
    OUTLINED_FUNCTION_6_7(722863544);
    if (gLogCategory_APAudioEngineBuffered <= 50 && (gLogCategory_APAudioEngineBuffered != -1 || OUTLINED_FUNCTION_4(&gLogCategory_APAudioEngineBuffered)))
    {
      if (a1)
      {
        v15 = (CMBaseObjectGetDerivedStorage() + 392);
      }

      else
      {
        v15 = "";
      }

      v24 = bufferedAudioEngine_playbackStateGetCString(*(v6 + 884));
      OUTLINED_FUNCTION_2_0();
      LogPrintF(v16, v17, v18, v19, a1, v15, v24, CString);
    }

    *(v6 + 884) = a2;
    bufferedAudioEngine_updateDataProcessingTargetQueueInternal(a1);
    bufferedAudioEngine_updateCriticalBufferingState(a1);
    v20 = *MEMORY[0x277CBECE8];
    v21 = CFNumberCreate(*MEMORY[0x277CBECE8], kCFNumberSInt32Type, (v6 + 884));
    values = v21;
    keys = @"PlaybackStateType";
    v22 = CFDictionaryCreate(v20, &keys, &values, 1, MEMORY[0x277CBED60], MEMORY[0x277CBF150]);
    CMNotificationCenterGetDefaultLocalCenter();
    FigDispatchAsyncPostNotification();
    if (a2 == 3)
    {
      bufferedAudioEngine_updateActiveAudioEngineCount(a1, 0);
    }

    else if (a2 == 8)
    {
      bufferedAudioEngine_updateActiveAudioEngineCount(a1, 1);
      bufferedAudioEngine_reportPlayingAudioEngineEvent(a1);
    }

    if (v22)
    {
      CFRelease(v22);
    }

    if (v21)
    {
      CFRelease(v21);
    }
  }

  return CMBaseObjectGetDerivedStorage();
}

void bufferedAudioEngine_updateDataProcessingTargetQueueInternal(uint64_t a1)
{
  keys[1] = *MEMORY[0x277D85DE8];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  memset(&v115, 0, sizeof(v115));
  OUTLINED_FUNCTION_104();
  bufferedAudioEngine_getCurrentRemoteMediaTimeInternal(v3, v4);
  memset(&v114, 0, sizeof(v114));
  OUTLINED_FUNCTION_125();
  memset(&rhs, 0, sizeof(rhs));
  CMTimeSubtract(&v114, &lhs, &rhs);
  if (bufferedAudioEngine_updateDataProcessingTargetQueueInternal_onceToken != -1)
  {
    dispatch_once(&bufferedAudioEngine_updateDataProcessingTargetQueueInternal_onceToken, &__block_literal_global_18);
  }

  if (*(DerivedStorage + 320))
  {
    started = CMBaseObjectGetDerivedStorage();
    if (gLogCategory_APAudioEngineBuffered <= 10)
    {
      if (gLogCategory_APAudioEngineBuffered != -1 || (started = _LogCategory_Initialize(), started))
      {
        if (a1)
        {
          started = CMBaseObjectGetDerivedStorage();
          v13 = (started + 392);
        }

        else
        {
          v13 = "";
        }

        v14 = OUTLINED_FUNCTION_30_0(started, v6, v7, v8, v9, v10, v11, v12, v81, v83, v86, v88, v90, v92, v94, v96, CString, v100, v102, v105, v108, v111, *&v114.value, v114.epoch);
        OUTLINED_FUNCTION_125();
        Seconds = CMTimeGetSeconds(&lhs);
        lhs = v115;
        v88 = *&Seconds;
        v90 = CMTimeGetSeconds(&lhs);
        v86 = *&v14;
        v81 = a1;
        v83 = v13;
        started = LogPrintF(&gLogCategory_APAudioEngineBuffered, "void bufferedAudioEngine_updateDataProcessingTargetQueueInternal(FigEndpointStreamAudioEngineRef)", 33554442, "BAE [%{ptr}] %sBAE amountInBuffer=%1.3f, nextRemoteMediaTimestamp=%1.3f, currentRemoteMediaTime=%1.3f,");
      }
    }

    v16 = *(DerivedStorage + 884);
    if (v16 == 4 || v16 == 5 && (*(DerivedStorage + 816) & 1) == 0 && (started = bufferedAudioEngine_engineBufferedToStartWaterMark(a1), !started) || dword_280FB1468 >= 1 && OUTLINED_FUNCTION_30_0(started, v6, v7, v8, v9, v10, v11, v12, v81, v83, v86, v88, v90, v92, v94, v96, CString, v100, v102, v105, v108, v111, *&v114.value, v114.epoch) < dword_280FB1468 / 1000.0)
    {
      v17 = 0;
      v18 = 36;
      v19 = 1;
      goto LABEL_27;
    }

    if (_MergedGlobals < 1 || OUTLINED_FUNCTION_30_0(started, v6, v7, v8, v9, v10, v11, v12, v81, v83, v86, v88, v90, v92, v94, v96, CString, v100, v102, v105, v108, v111, *&v114.value, v114.epoch) >= _MergedGlobals / 1000.0)
    {
      v18 = 37;
      if (*(DerivedStorage + 884) == 8)
      {
        v20 = APSIsAPMSpeaker();
        v19 = 0;
        v17 = v20 == 0;
        if (v20)
        {
          v18 = 43;
        }

        else
        {
          v18 = 37;
        }

LABEL_27:
        if (*(DerivedStorage + 456) == v18)
        {
          return;
        }

        OUTLINED_FUNCTION_29_0();
        if (v23 ^ v24 | v22 && (v21 != -1 || OUTLINED_FUNCTION_4(&gLogCategory_APAudioEngineBuffered)))
        {
          if (a1)
          {
            v53 = (CMBaseObjectGetDerivedStorage() + 392);
          }

          else
          {
            v53 = "";
          }

          v62 = *(DerivedStorage + 456);
          switch(v62)
          {
            case '$':
              v63 = "Urgent ";
              break;
            case '+':
              v63 = "Relaxed";
              break;
            case '%':
              v63 = "Default";
              break;
            default:
              v63 = "UNKNOWN";
              break;
          }

          v110 = v63;
          v113 = v53;
          v107 = *(DerivedStorage + 530);
          if (v18 == 36)
          {
            v64 = "Urgent ";
          }

          else if (v18 == 43)
          {
            v64 = "Relaxed";
          }

          else
          {
            v64 = "Default";
          }

          v104 = v64;
          v65 = *(DerivedStorage + 896);
          v66 = bufferedAudioEngine_engineBufferedToStartWaterMark(a1);
          v67 = v66;
          v75 = OUTLINED_FUNCTION_30_0(v66, v68, v69, v70, v71, v72, v73, v74, v81, v83, v86, v88, v90, v92, v94, v96, CString, v100, v104, v107, v110, v113, *&v114.value, v114.epoch);
          CString = bufferedAudioEngine_playbackStateGetCString(*(DerivedStorage + 884));
          v96 = *&v75;
          v76 = 84;
          if (!v67)
          {
            v76 = 70;
          }

          v94 = v76;
          v92 = v65;
          v88 = v108;
          v90 = v102;
          v83 = v111;
          v86 = v105;
          v81 = a1;
          OUTLINED_FUNCTION_2_0();
          LogPrintF(v77, v78, v79, v80);
        }

        v25 = *MEMORY[0x277CBECE8];
        keys[0] = *MEMORY[0x277CD61F0];
        v26 = MEMORY[0x277CD61D8];
        v27 = MEMORY[0x277CD61C8];
        if (!v17)
        {
          v27 = MEMORY[0x277CD61D0];
        }

        if (!v19)
        {
          v26 = v27;
        }

        values = *v26;
        v28 = CFDictionaryCreate(v25, keys, &values, 1, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
        CMNotificationCenterGetDefaultLocalCenter();
        FigDispatchAsyncPostNotification();
        APSPriorityDispatcherSetPriority();
        if (*(DerivedStorage + 536))
        {
          APSPriorityDispatchSourceSetPriority();
        }

        if (*(DerivedStorage + 1792))
        {
          APSPriorityDispatchSourceSetPriority();
        }

        *(DerivedStorage + 456) = v18;
        v29 = _MergedGlobals;
        v30 = CMBaseObjectGetDerivedStorage();
        memset(&lhs, 0, sizeof(lhs));
        OUTLINED_FUNCTION_104();
        bufferedAudioEngine_getCurrentRemoteMediaTimeInternal(v31, v32);
        memset(&rhs, 0, sizeof(rhs));
        time = *(v30 + 756);
        time1 = lhs;
        CMTimeSubtract(&rhs, &time, &time1);
        CMBaseObjectGetDerivedStorage();
        if (!*(v30 + 1784))
        {
          goto LABEL_81;
        }

        v33 = *(v30 + 456);
        if (v33 != 36)
        {
          if (v33 == 43 || v33 == 37)
          {
            if (rhs.flags)
            {
              memset(&time, 0, sizeof(time));
              CMTimeMake(&time1, v29, 1000);
              OUTLINED_FUNCTION_63();
              v34 = CMTimeSubtract(&time, &time2, &time1);
              OUTLINED_FUNCTION_132(v34, v35, v36, v37, v38, v39, v40, v41, v81, v83, v86, v88, v90, v92, v94, v96, CString, v100, v102, v105, v108, v111, v114.value, *&v114.timescale, v114.epoch, v115.value, *&v115.timescale, v115.epoch, time2.value, *&time2.timescale, time2.epoch, v117, time1.value, *&time1.timescale, time1.epoch, v119, *&time.value);
              time2 = **&MEMORY[0x277CC08F0];
              v42 = CMTimeCompare(&time1, &time2);
              if (v42 < 1)
              {
                v50 = 100;
              }

              else
              {
                OUTLINED_FUNCTION_132(v42, v43, v44, v45, v46, v47, v48, v49, v82, v84, v87, v89, v91, v93, v95, v97, v99, v101, v103, v106, v109, v112, v114.value, *&v114.timescale, v114.epoch, v115.value, *&v115.timescale, v115.epoch, time2.value, *&time2.timescale, time2.epoch, v117, time1.value, *&time1.timescale, time1.epoch, v119, *&time.value);
                v50 = (CMTimeGetSeconds(&time1) * 1000.0) + 100;
              }

              goto LABEL_62;
            }
          }

          else
          {
            OUTLINED_FUNCTION_77();
            if (v23 ^ v24 | v22 && (v51 != -1 || _LogCategory_Initialize()))
            {
              if (a1)
              {
                v52 = (CMBaseObjectGetDerivedStorage() + 392);
              }

              else
              {
                v52 = "";
              }

              LogPrintF(&gLogCategory_APAudioEngineBuffered, "void bufferedAudioEngine_scheduleNextGuaranteePriorityCheck(FigEndpointStreamAudioEngineRef, int, int)", 33554522, "BAE [%{ptr}] %sUnknown priority.  Please add queue priority check for scheduling!!!.  Setting for max wait.", a1, v52, v86, v88, v90, v92, v94, v96, CString);
            }
          }
        }

        v50 = 5000;
LABEL_62:
        if (!*(v30 + 544))
        {
          time = rhs;
          if (v29 < (CMTimeGetSeconds(&time) * 1000.0))
          {
            v50 = 5000;
          }
        }

        if (v50 >= 0x1388)
        {
          v54 = 5000;
        }

        else
        {
          v54 = v50;
        }

        if (v54 <= 0x64)
        {
          v55 = 100;
        }

        else
        {
          v55 = v54;
        }

        OUTLINED_FUNCTION_29_0();
        if (v23 ^ v24 | v22 && (v56 != -1 || OUTLINED_FUNCTION_4(&gLogCategory_APAudioEngineBuffered)))
        {
          if (a1)
          {
            v57 = (CMBaseObjectGetDerivedStorage() + 392);
          }

          else
          {
            v57 = "";
          }

          v85 = v57;
          OUTLINED_FUNCTION_2_0();
          LogPrintF(v58, v59, v60, v61, a1, v85, v55);
        }

        dispatch_time(0, 1000000 * v55);
        APSPriorityDispatchSourceSetTimer();
LABEL_81:
        OUTLINED_FUNCTION_6_7(722863540);
        if (v28)
        {
          CFRelease(v28);
        }

        return;
      }

      v19 = 0;
    }

    else
    {
      v19 = 0;
      v18 = 37;
    }

    v17 = 1;
    goto LABEL_27;
  }
}

void bufferedAudioEngine_updateActiveAudioEngineCount(uint64_t a1, int a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 1280))
  {
    v6 = *(DerivedStorage + 416);
    if (bufferedAudioEngine_getActiveAudioEngineSet(a1, v6 == 1))
    {
      if (a2)
      {
        APSThreadSafeSetSetValue();
      }

      else
      {
        APSThreadSafeSetRemoveValue();
      }

      Count = APSThreadSafeSetGetCount();
      v8 = LogCategoryCopyOSLogHandle();
      OUTLINED_FUNCTION_98();
      v9 = os_signpost_enabled(v2);
      if (v6 == 1)
      {
        if (v9)
        {
          OUTLINED_FUNCTION_100();
          OUTLINED_FUNCTION_97();
          _os_signpost_emit_with_name_impl(v10, v11, v12, v13, v14, v15, v16, 0x12u);
        }

        if (v8)
        {
          os_release(v8);
        }

        if (gLogCategory_APAudioEngineBuffered <= 30 && (gLogCategory_APAudioEngineBuffered != -1 || _LogCategory_Initialize()))
        {
          if (a1)
          {
            v17 = (CMBaseObjectGetDerivedStorage() + 392);
          }

          else
          {
            v17 = "";
          }

          v25 = "increment";
          if (!a2)
          {
            v25 = "decrement";
          }

          v36 = v17;
          v38 = v25;
          OUTLINED_FUNCTION_3();
          LogPrintF(v26, v27, v28, v29, a1, v36, v38, Count);
        }
      }

      else
      {
        if (v9)
        {
          OUTLINED_FUNCTION_100();
          OUTLINED_FUNCTION_97();
          _os_signpost_emit_with_name_impl(v18, v19, v20, 0x2B1605BCuLL, v21, v22, v23, 0x12u);
        }

        if (v8)
        {
          os_release(v8);
        }

        if (gLogCategory_APAudioEngineBuffered <= 30 && (gLogCategory_APAudioEngineBuffered != -1 || _LogCategory_Initialize()))
        {
          if (a1)
          {
            v24 = (CMBaseObjectGetDerivedStorage() + 392);
          }

          else
          {
            v24 = "";
          }

          if (a2)
          {
            v30 = "increment";
          }

          else
          {
            v30 = "decrement";
          }

          v37 = v24;
          v39 = v30;
          OUTLINED_FUNCTION_3();
          LogPrintF(v31, v32, v33, v34, a1, v37, v39, Count);
        }

        if (Count >= 0x2B1605BD && gLogCategory_APAudioEngineBuffered <= 90 && (gLogCategory_APAudioEngineBuffered != -1 || _LogCategory_Initialize()))
        {
          if (a1)
          {
            v35 = (CMBaseObjectGetDerivedStorage() + 392);
          }

          else
          {
            v35 = "";
          }

          LogPrintF(&gLogCategory_APAudioEngineBuffered, "void bufferedAudioEngine_updateActiveAudioEngineCount(FigEndpointStreamAudioEngineRef, Boolean)", 33554522, "BAE [%{ptr}] %s### Count of activeAudioEngineSet primary usage for Media is now %u which should not exceed %d, please file a radar.\n", a1, v35, Count, 3);
        }
      }
    }
  }
}

void bufferedAudioEngine_reportPlayingAudioEngineEvent(uint64_t a1)
{
  if (*(CMBaseObjectGetDerivedStorage() + 1280))
  {
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    if (Mutable)
    {
      v3 = Mutable;
      CFDictionarySetValue(Mutable, @"sessionType", @"AudioBuffered");
      bufferedAudioEngine_getActiveAudioEngineSet(a1, 0);
      APSThreadSafeSetGetCount();
      FigCFDictionarySetInt32();
      bufferedAudioEngine_getActiveAudioEngineSet(a1, 1);
      APSThreadSafeSetGetCount();
      FigCFDictionarySetInt32();
      APSRTCReportingAgentSendEvent();

      CFRelease(v3);
    }

    else
    {

      APSLogErrorAt();
    }
  }
}

uint64_t bufferedAudioEngine_engineBufferedToStartWaterMark(uint64_t a1)
{
  v8 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v7 = **&MEMORY[0x277CC08F0];
  v6 = v7;
  v5 = v7;
  result = *(DerivedStorage + 616);
  if (result)
  {
    result = APMessageRingBufferedGetUsedCount(result);
    if (result)
    {
      bufferedAudioEngine_getCurrentRemoteMediaTimeInternal(&v8, &v7);
      if (v8)
      {
        APSLogErrorAt();
        return 0;
      }

      else
      {
        lhs = v7;
        v3 = *(DerivedStorage + 160);
        CMTimeAdd(&v6, &lhs, &v3);
        APMessageRingBufferedGetLastValidReadIndexAndTimestamp(*(DerivedStorage + 616), 0, &v5);
        lhs = v5;
        v3 = v6;
        return CMTimeCompare(&lhs, &v3) >= 0;
      }
    }
  }

  return result;
}

uint64_t bufferedAudioEngine_getCryptorIDForCryptor(uint64_t a1)
{
  v1 = a1;
  cf = 0;
  if (_MergedGlobals_896 == -1)
  {
    if (a1)
    {
LABEL_3:
      v2 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      if (!v2 || v2(v1, *MEMORY[0x277CC0988], *MEMORY[0x277CBECE8], &cf) || CFStringGetOrCopyCStringUTF8())
      {
        APSLogErrorAt();
        v1 = 0;
      }

      else
      {
        v1 = SipHash();
      }
    }
  }

  else
  {
    dispatch_once(&_MergedGlobals_896, &__block_literal_global_303);
    if (v1)
    {
      goto LABEL_3;
    }
  }

  if (cf)
  {
    CFRelease(cf);
  }

  return v1;
}

void bufferedAudioEngine_handleCryptorKeyUpdatedInternal(uint64_t a1)
{
  if (OUTLINED_FUNCTION_44(a1))
  {
    if (!*CMBaseObjectGetDerivedStorage() && bufferedAudioEngine_setCryptorForAllHoses(*v1, *(v1 + 8)))
    {
      APSLogErrorAt();
    }

    if (*v1)
    {
      CFRelease(*v1);
    }
  }

  v2 = *(v1 + 8);
  if (v2)
  {
    CFRelease(v2);
  }

  free(v1);
}

void bufferedAudioEngine_hoseSetCryptorCallbackCompletionHandlerInternal(uint64_t a1)
{
  OUTLINED_FUNCTION_44(a1);
  if (*CMBaseObjectGetDerivedStorage())
  {
    goto LABEL_27;
  }

  v2 = OUTLINED_FUNCTION_112();
  if (v2)
  {
    v3 = v2;
    v4 = *(v1 + 6);
    if (v4)
    {
      if (v4 == 200501)
      {
        if (gLogCategory_APAudioEngineBuffered <= 90 && (gLogCategory_APAudioEngineBuffered != -1 || OUTLINED_FUNCTION_4_3(&gLogCategory_APAudioEngineBuffered)))
        {
          if (!*v1)
          {
LABEL_23:
            OUTLINED_FUNCTION_4_16();
            OUTLINED_FUNCTION_2_1();
            LogPrintF(v8, v9, v10, v11);
            goto LABEL_27;
          }

LABEL_8:
          CMBaseObjectGetDerivedStorage();
          goto LABEL_23;
        }

        goto LABEL_27;
      }

      if (gLogCategory_APAudioEngineBuffered <= 90 && (gLogCategory_APAudioEngineBuffered != -1 || OUTLINED_FUNCTION_4_3(&gLogCategory_APAudioEngineBuffered)))
      {
        v7 = *v1;
        if (*v1)
        {
          CMBaseObjectGetDerivedStorage();
        }

        OUTLINED_FUNCTION_31_0();
        OUTLINED_FUNCTION_26_1();
        OUTLINED_FUNCTION_2_1();
        LogPrintF(v13, v14, v15, v16, v7);
      }
    }

    else if (gLogCategory_APAudioEngineBuffered <= 50)
    {
      OUTLINED_FUNCTION_10_4();
      if (!v5 || _LogCategory_Initialize())
      {
        v6 = *v1;
        if (*v1)
        {
          CMBaseObjectGetDerivedStorage();
        }

        OUTLINED_FUNCTION_26_1();
        LogPrintF(&gLogCategory_APAudioEngineBuffered, "void bufferedAudioEngine_hoseSetCryptorCallbackCompletionHandlerInternal(void *)", v12, "BAE [%{ptr}] %s[0x%04X] SetCryptor success for hose [%{ptr}] cryptor ID: 0x%llx", v6);
      }
    }

    *(v3 + 212) = 1;
    goto LABEL_27;
  }

  if (gLogCategory_APAudioEngineBuffered <= 90 && (gLogCategory_APAudioEngineBuffered != -1 || OUTLINED_FUNCTION_4_3(&gLogCategory_APAudioEngineBuffered)))
  {
    if (!*v1)
    {
      goto LABEL_23;
    }

    goto LABEL_8;
  }

LABEL_27:
  if (*v1)
  {
    CFRelease(*v1);
  }

  v17 = v1[1];
  if (v17)
  {
    CFRelease(v17);
  }

  free(v1);
}

uint64_t bufferedAudioEngine_getMagicCookieIDForMagicCookieData(CFDataRef theData)
{
  if (qword_27D0088B8 != -1)
  {
    dispatch_once(&qword_27D0088B8, &__block_literal_global_314);
    if (theData)
    {
      goto LABEL_3;
    }

    return 0;
  }

  if (!theData)
  {
    return 0;
  }

LABEL_3:
  CFDataGetBytePtr(theData);
  CFDataGetLength(theData);

  return SipHash();
}

void bufferedAudioEngine_setAllCryptorsForHose()
{
  OUTLINED_FUNCTION_3_7();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v3 = v1;
  v4 = v0;
  if (v0)
  {
    CFDictionaryApplyFunction(*(DerivedStorage + 1216), bufferedAudioEngine_setCryptorForHoseCallback, &v3);
  }
}

void bufferedAudioEngine_setAllMagicCookiesForHose()
{
  OUTLINED_FUNCTION_3_7();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v3 = v1;
  v4 = v0;
  if (v0)
  {
    if (*(DerivedStorage + 576))
    {
      CFDictionaryApplyFunction(*(DerivedStorage + 1056), bufferedAudioEngine_setMagicCookieForHoseCallback, &v3);
    }
  }
}

void *bufferedAudioEngine_wakeUpHosesAndAudioTimer(uint64_t a1)
{
  result = CMBaseObjectGetDerivedStorage();
  if (!*result)
  {
    v3 = result;
    result = bufferedAudioEngine_wakeUpHoses(a1);
    if (*(v3 + 528) && !*(v3 + 544))
    {
      OUTLINED_FUNCTION_9_5();
      kdebug_trace();
      if (gLogCategory_APAudioEngineBuffered <= 40 && (gLogCategory_APAudioEngineBuffered != -1 || _LogCategory_Initialize()))
      {
        if (a1)
        {
          CMBaseObjectGetDerivedStorage();
        }

        OUTLINED_FUNCTION_1_26();
        OUTLINED_FUNCTION_6(&gLogCategory_APAudioEngineBuffered, "void bufferedAudioEngine_wakeUpHosesAndAudioTimer(FigEndpointStreamAudioEngineRef)", v5, "BAE [%{ptr}] %s[0x%04X] Waking up audioTimer\n");
      }

      result = APSPriorityDispatchSourceResume();
      *(v3 + 544) = 1;
    }

    else if (gLogCategory_APAudioEngineBuffered <= 40)
    {
      if (gLogCategory_APAudioEngineBuffered != -1 || (result = _LogCategory_Initialize(), result))
      {
        if (a1)
        {
          CMBaseObjectGetDerivedStorage();
        }

        return OUTLINED_FUNCTION_6(&gLogCategory_APAudioEngineBuffered, "void bufferedAudioEngine_wakeUpHosesAndAudioTimer(FigEndpointStreamAudioEngineRef)", v4, "BAE [%{ptr}] %s[0x%04X] Did not wake up audioTimer.  All condition must be true. AudioEngineResumed=%s, !AudioTimerResumed=%s\n");
      }
    }
  }

  return result;
}

void bufferedAudioEngine_setCryptorForHoseCallback(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v6 = OUTLINED_FUNCTION_142(a1, a2, a3);
  if (!v4)
  {
    return;
  }

  v7 = *(v5 + 8);
  if (!v7)
  {
    return;
  }

  v8 = v6;
  OUTLINED_FUNCTION_69();
  if (v11 ^ v12 | v10 && (v9 != -1 || OUTLINED_FUNCTION_4(&gLogCategory_APAudioEngineBuffered)))
  {
    if (v3)
    {
      v18 = (CMBaseObjectGetDerivedStorage() + 392);
    }

    else
    {
      v18 = "";
    }

    v21 = *(v8 + 530);
    v22 = *(v7 + 16);
    CryptorIDForCryptor = bufferedAudioEngine_getCryptorIDForCryptor(v4);
    OUTLINED_FUNCTION_2_0();
    LogPrintF(v23, v24, v25, v26, v3, v18, v21, v4, v22, CryptorIDForCryptor);
    if (!v3)
    {
      goto LABEL_9;
    }
  }

  else if (!v3)
  {
    goto LABEL_9;
  }

  CFRetain(v3);
LABEL_9:
  v13 = *(v7 + 16);
  bufferedAudioEngine_getCryptorIDForCryptor(v4);
  APSAudioProtocolDriverHoseControlProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (ProtocolVTable)
  {
    v15 = *(ProtocolVTable + 16);
    if (v15)
    {
      if (*(v15 + 72))
      {
        v16 = OUTLINED_FUNCTION_87();
        if (!v17(v16))
        {
          return;
        }
      }

      else
      {
        v19 = OUTLINED_FUNCTION_87();
        bufferedAudioEngine_hoseSetCryptorCallbackCompletionHandler(v19, v20, -12782, v3);
      }
    }
  }

  OUTLINED_FUNCTION_46();
  if (v11 ^ v12 | v10)
  {
    OUTLINED_FUNCTION_8_8();
    if (!v10 || _LogCategory_Initialize())
    {
      if (v3)
      {
        CMBaseObjectGetDerivedStorage();
      }

      OUTLINED_FUNCTION_136();
      LogPrintF(&gLogCategory_APAudioEngineBuffered, "void bufferedAudioEngine_setCryptorForHoseCallback(const void *, const void *, void *)", (v13 + 40), "BAE [%{ptr}] %s[0x%04X] APSAudioProtocolDriverHoseControlSetCryptor failed for hose [%{ptr}] with err= %d \n ", v3);
    }
  }
}

void bufferedAudioEngine_setMagicCookieForHoseCallback(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v6 = OUTLINED_FUNCTION_142(a1, a2, a3);
  if (!v4)
  {
    return;
  }

  v7 = *(v5 + 8);
  if (!v7)
  {
    return;
  }

  v8 = v6;
  OUTLINED_FUNCTION_69();
  if (v11 ^ v12 | v10 && (v9 != -1 || OUTLINED_FUNCTION_4(&gLogCategory_APAudioEngineBuffered)))
  {
    if (v3)
    {
      v18 = (CMBaseObjectGetDerivedStorage() + 392);
    }

    else
    {
      v18 = "";
    }

    v21 = *(v8 + 530);
    v22 = *(v7 + 16);
    MagicCookieIDForMagicCookieData = bufferedAudioEngine_getMagicCookieIDForMagicCookieData(v4);
    OUTLINED_FUNCTION_2_0();
    LogPrintF(v23, v24, v25, v26, v3, v18, v21, v4, v22, MagicCookieIDForMagicCookieData);
    if (!v3)
    {
      goto LABEL_9;
    }
  }

  else if (!v3)
  {
    goto LABEL_9;
  }

  CFRetain(v3);
LABEL_9:
  v13 = *(v7 + 16);
  bufferedAudioEngine_getMagicCookieIDForMagicCookieData(v4);
  APSAudioProtocolDriverHoseControlProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (ProtocolVTable)
  {
    v15 = *(ProtocolVTable + 16);
    if (v15)
    {
      if (*(v15 + 80))
      {
        OUTLINED_FUNCTION_43_0();
        v16 = OUTLINED_FUNCTION_87();
        if (!v17(v16))
        {
          return;
        }
      }

      else
      {
        v19 = OUTLINED_FUNCTION_87();
        bufferedAudioEngine_hoseSetMagicCookieCallbackCompletionHandler(v19, v20, -12782, v3);
      }
    }
  }

  OUTLINED_FUNCTION_46();
  if (v11 ^ v12 | v10)
  {
    OUTLINED_FUNCTION_8_8();
    if (!v10 || _LogCategory_Initialize())
    {
      if (v3)
      {
        CMBaseObjectGetDerivedStorage();
      }

      OUTLINED_FUNCTION_136();
      LogPrintF(&gLogCategory_APAudioEngineBuffered, "void bufferedAudioEngine_setMagicCookieForHoseCallback(const void *, const void *, void *)", (v13 + 40), "BAE [%{ptr}] %s[0x%04X] APSAudioProtocolDriverHoseControlSetMagicCookie failed for hose [%{ptr}] with err= %d \n ", v3);
    }
  }
}

void bufferedAudioEngine_hoseSetMagicCookieCallbackCompletionHandlerInternal(uint64_t a1)
{
  OUTLINED_FUNCTION_44(a1);
  if (!*CMBaseObjectGetDerivedStorage())
  {
    if (OUTLINED_FUNCTION_112())
    {
      if (*(v1 + 24))
      {
        if (gLogCategory_APAudioEngineBuffered <= 90 && (gLogCategory_APAudioEngineBuffered != -1 || OUTLINED_FUNCTION_4_3(&gLogCategory_APAudioEngineBuffered)))
        {
          v2 = *v1;
          if (*v1)
          {
            CMBaseObjectGetDerivedStorage();
          }

          OUTLINED_FUNCTION_31_0();
          OUTLINED_FUNCTION_26_1();
          v9 = v2;
LABEL_15:
          OUTLINED_FUNCTION_2_1();
LABEL_19:
          LogPrintF(v4, v5, v6, v7, v9);
        }
      }

      else if (gLogCategory_APAudioEngineBuffered <= 50 && (gLogCategory_APAudioEngineBuffered != -1 || _LogCategory_Initialize()))
      {
        v3 = *v1;
        if (*v1)
        {
          CMBaseObjectGetDerivedStorage();
        }

        OUTLINED_FUNCTION_26_1();
        v4 = &gLogCategory_APAudioEngineBuffered;
        v5 = "void bufferedAudioEngine_hoseSetMagicCookieCallbackCompletionHandlerInternal(void *)";
        v9 = v3;
        v7 = "BAE [%{ptr}] %s[0x%04X] SetMagicCookie success for hose [%{ptr}] magic cookie ID: 0x%llx";
        goto LABEL_19;
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

  if (*v1)
  {
    CFRelease(*v1);
  }

  v8 = *(v1 + 8);
  if (v8)
  {
    CFRelease(v8);
  }

  free(v1);
}

uint64_t bufferedAudioEngine_initProtocolDriverIfNecessary(uint64_t a1, const void *a2, char *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  value = 0;
  v20 = 0;
  CMBaseObjectGetDerivedStorage();
  if (FigCFDictionaryGetValue())
  {
    v9 = 0;
    goto LABEL_25;
  }

  if (CFEqual(a2, *MEMORY[0x277CEA028]))
  {
    v7 = APSAudioProtocolDriverSenderAPATCreate();
    if (v7)
    {
      v9 = v7;
      goto LABEL_24;
    }

    v8 = APSSetFBOPropertyInt64();
    if (v8)
    {
      v9 = v8;
LABEL_24:
      APSLogErrorAt();
LABEL_25:
      v11 = 0;
      if (!a3)
      {
        return v9;
      }

      goto LABEL_10;
    }

    goto LABEL_8;
  }

  if (CFEqual(a2, *MEMORY[0x277CEA030]))
  {
    v10 = APSAudioProtocolDriverSenderLocalCreate();
    if (v10)
    {
      v9 = v10;
      goto LABEL_24;
    }

LABEL_8:
    v11 = 1;
    goto LABEL_9;
  }

  if (gLogCategory_APAudioEngineBuffered <= 50 && (gLogCategory_APAudioEngineBuffered != -1 || OUTLINED_FUNCTION_4(&gLogCategory_APAudioEngineBuffered)))
  {
    if (a1)
    {
      v13 = (CMBaseObjectGetDerivedStorage() + 392);
    }

    else
    {
      v13 = "";
    }

    v18 = v13;
    OUTLINED_FUNCTION_2_0();
    LogPrintF(v14, v15, v16, v17, a1, v18, a2);
  }

  v11 = 0;
LABEL_9:
  value = 0;
  LOWORD(v20) = APMessageRingBufferedGetFirstValidReadIndex(*(DerivedStorage + 616), 0);
  CFDictionaryAddValue(*(DerivedStorage + 496), a2, &value);
  v9 = 0;
  if (a3)
  {
LABEL_10:
    *a3 = v11;
  }

  return v9;
}

double bufferedAudioEngine_markSessionStartedForRTC(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 1280))
  {
    v3 = (DerivedStorage + 1288);
    HostTimeClock = CMClockGetHostTimeClock();
    CMClockGetTime(&v5, HostTimeClock);
    result = *&v5.value;
    *v3 = v5;
  }

  return result;
}

void bufferedAudioEngine_sendSessionFailureEvent(uint64_t a1, const void *a2, uint64_t a3)
{
  if (*(CMBaseObjectGetDerivedStorage() + 1280))
  {
    Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    if (Mutable)
    {
      v5 = Mutable;
      if (a2)
      {
        CFDictionarySetValue(Mutable, @"pointOfFailure", a2);
      }

      FigCFDictionarySetInt32();
      FigCFDictionarySetInt32();
      FigCFDictionarySetInt64();
      CFDictionarySetValue(v5, @"sessionType", @"AudioBuffered");
      APSRTCReportingAgentSendEvent();

      CFRelease(v5);
    }
  }
}

uint64_t bufferedAudioEngine_updateMaxAudioBurstIfNecessary(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  result = *(DerivedStorage + 1008);
  if (result)
  {
    APSAudioFormatDescriptionGetSampleRate();
    APSAudioFormatDescriptionGetFramesPerPacket();
    result = FigGetCFPreferenceNumberWithDefault();
    if (*(DerivedStorage + 24) != result)
    {
      *(DerivedStorage + 24) = result;
      if (gLogCategory_APAudioEngineBuffered <= 50)
      {
        if (gLogCategory_APAudioEngineBuffered != -1 || (result = OUTLINED_FUNCTION_4(&gLogCategory_APAudioEngineBuffered), result))
        {
          if (a1)
          {
            v4 = (CMBaseObjectGetDerivedStorage() + 392);
          }

          else
          {
            v4 = "";
          }

          v5 = *(DerivedStorage + 24);
          APSAudioFormatDescriptionGetSampleRate();
          v7 = v6;
          FramesPerPacket = APSAudioFormatDescriptionGetFramesPerPacket();
          OUTLINED_FUNCTION_2_0();
          return LogPrintF(v8, v9, v10, v11, a1, v4, v5, v7, FramesPerPacket);
        }
      }
    }
  }

  return result;
}

uint64_t bufferedAudioEngine_updateNextTranscodeBurstTimeAndUnRest()
{
  OUTLINED_FUNCTION_3_7();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v3 = (DerivedStorage + 1116);
  CMTimeMake(&rhs, *(DerivedStorage + 156), 1000);
  v5 = *v0;
  CMTimeAdd(&v7, &v5, &rhs);
  *v3 = v7;
  bufferedAudioEngine_setTranscodeIsRestingAndUpdateConsumer(v1, 0);
  OUTLINED_FUNCTION_9_5();
  return kdebug_trace();
}

void __bufferedAudioEngine_soundCheckChanged_block_invoke()
{
  OUTLINED_FUNCTION_139();
  v26 = v0;
  v27 = v1;
  v3 = v2;
  bufferedAudioEngine_readSoundCheck(*(v2 + 32));
  v4 = *(v3 + 32);
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  cf[0] = 0;
  if (*(DerivedStorage + 576))
  {
    v6 = *(DerivedStorage + 640);
    if (v6)
    {
      v7 = *MEMORY[0x277CC18E0];
      do
      {
        v8 = v6[2];
        v9 = *(*(CMBaseObjectGetVTable() + 8) + 48);
        if (v9)
        {
          v9(v8, v7, 0, cf);
        }

        v10 = cf[0];
        if (!*(v6 + 32) && cf[0])
        {
          OUTLINED_FUNCTION_29_0();
          if (v13 ^ v14 | v12 && (v11 != -1 || OUTLINED_FUNCTION_4(&gLogCategory_APAudioEngineBuffered)))
          {
            if (v4)
            {
              CMBaseObjectGetDerivedStorage();
            }

            OUTLINED_FUNCTION_26_1();
            OUTLINED_FUNCTION_2_0();
            LogPrintF(v15, v16, v17, "BAE [%{ptr}] %s[0x%04X] Set Loudness Normalization Pref %s for hose [%{ptr}] \n", v4);
          }

          v18 = v6[2];
          v19 = gSoundCheckEnabled;
          ProtocolID = APSAudioProtocolDriverHoseControlProtocolGetProtocolID();
          v21 = OUTLINED_FUNCTION_111(ProtocolID);
          if (v21)
          {
            v22 = *(v21 + 16);
            if (v22)
            {
              v23 = *(v22 + 88);
              if (v23)
              {
                v23(v18, v19);
              }
            }
          }

          v10 = cf[0];
        }

        if (v10)
        {
          CFRelease(v10);
          cf[0] = 0;
        }

        v6 = *v6;
      }

      while (v6);
    }
  }

  v24 = *(v3 + 32);
  if (v24)
  {
    CFRelease(v24);
  }

  OUTLINED_FUNCTION_141();
}

void bufferedAudioEngine_audioTimer()
{
  OUTLINED_FUNCTION_139();
  v413 = v0;
  v414 = v1;
  v3 = v2;
  v412 = *MEMORY[0x277D85DE8];
  TotalByteCount = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v395 = **&MEMORY[0x277CC08F0];
  v394 = v395;
  v410 = *(MEMORY[0x277CC08F0] + 12);
  epoch_high = *(MEMORY[0x277CC08F0] + 20);
  v393 = v395;
  v392 = v395;
  v363 = *&v395.value;
  v391 = v395;
  epoch = v395.epoch;
  HIDWORD(v357) = *(DerivedStorage + 24);
  v5 = mach_absolute_time();
  v6 = MillisecondsToUpTicks();
  v390 = 0;
  memset(&v389, 0, sizeof(v389));
  v7 = *(DerivedStorage + 16);
  time = *(DerivedStorage + 28);
  CMTimeMultiplyByRatio(&v389, &time, v7, 1000);
  v388 = 0;
  v8 = "T";
  if (gLogCategory_APAudioEngineBuffered <= 10)
  {
    if (gLogCategory_APAudioEngineBuffered != -1 || (OUTLINED_FUNCTION_8(), _LogCategory_Initialize()))
    {
      if (v3)
      {
        v9 = (CMBaseObjectGetDerivedStorage() + 392);
      }

      else
      {
        v9 = "";
      }

      v10 = *(DerivedStorage + 530);
      v11 = *(DerivedStorage + 896);
      if (*(DerivedStorage + 936))
      {
        v12 = "T";
      }

      else
      {
        v12 = "F";
      }

      v13 = *(DerivedStorage + 640);
      if (!*(DerivedStorage + 840))
      {
        v8 = "F";
      }

      bufferedAudioEngine_playbackStateGetCString(*(DerivedStorage + 884));
      OUTLINED_FUNCTION_8();
      v322 = v8;
      v325 = v15;
      v315 = v12;
      v319 = v13;
      v310 = v11;
      v299 = v9;
      v305 = v10;
      v298 = v3;
      LogPrintF(&gLogCategory_APAudioEngineBuffered, "void bufferedAudioEngine_audioTimer(void *)", (v14 - 40), "BAE [%{ptr}] %s[0x%04X] bufferedAudioEngine_audioTimer requestedPlaybackRate=%f, hoseSetRateOrGetAnchorIsRetrying=%s, hoseDescriptor=%p, setRatePendingClockLock=%s, currentPlaybackState=%s\n");
    }
  }

  APSNetworkClockLogCurrentNetworkTime();
  if (*DerivedStorage || !*(DerivedStorage + 544))
  {
    goto LABEL_365;
  }

  v355 = v6;
  v356 = v5;
  v373 = DerivedStorage;
  CMBaseObjectGetDerivedStorage();
  CMBaseObjectGetDerivedStorage();
  v359 = OUTLINED_FUNCTION_56(MEMORY[0x277CC0898]);
  *&v409.value = v359;
  v358 = v16;
  v409.epoch = v16;
  OUTLINED_FUNCTION_121(MEMORY[0x277CEA280]);
  cf.value = 0;
  v398 = 0;
  v397 = 0;
  if (!*v17)
  {
    v18 = v17;
    CMClockGetTime(&time, *(v17 + 480));
    HostTimeClock = CMClockGetHostTimeClock();
    CMClockGetTime(&v409, HostTimeClock);
    v20 = *(v18 + 328);
    v21 = *(*(CMBaseObjectGetVTable() + 16) + 8);
    if (v21)
    {
      v21(v20, &v408);
    }

    v22 = (v18 + 1560);
    OUTLINED_FUNCTION_24_2();
    *&v406.value = *(v18 + 1560);
    v23 = OUTLINED_FUNCTION_109(*(v18 + 1576));
    v24 = (v18 + 1584);
    if (v23)
    {
      *v24 = v359;
      *(v18 + 1600) = v358;
      memset(&v407, 0, sizeof(v407));
      OUTLINED_FUNCTION_90((v18 + 1608));
      time2.epoch = *(v18 + 1624);
      v26 = OUTLINED_FUNCTION_101();
      CMTimeSubtract(v28, v26, v27);
      CMTimeMake(&v406, 1, 1);
      if (OUTLINED_FUNCTION_96() > 0)
      {
        goto LABEL_71;
      }

      memset(&v406, 0, sizeof(v406));
      lhs = time;
      *&rhs.value = *v22;
      rhs.epoch = *(v18 + 1576);
      CMTimeSubtract(&time2, &lhs, &rhs);
      CMTimeAbsoluteValue(&v406, &time2);
      CMTimeMake(&time2, 2, 1);
      lhs = v406;
      if (CMTimeCompare(&lhs, &time2) < 0)
      {
        goto LABEL_71;
      }

      v25 = @"Clock Discontinuity";
    }

    else
    {
      if (*(v18 + 1596))
      {
        memset(&v407, 0, sizeof(v407));
        OUTLINED_FUNCTION_90(v24);
        time2.epoch = *(v30 + 16);
        v31 = OUTLINED_FUNCTION_101();
        CMTimeSubtract(v33, v31, v32);
        CMTimeMake(&v406, 5, 1);
        v29 = OUTLINED_FUNCTION_96() >> 31;
        v25 = @"Clock Jammed";
        goto LABEL_27;
      }

      *v24 = *&v409.value;
      *(v18 + 1600) = v409.epoch;
      v25 = @"Clock Jammed";
    }

    LOBYTE(v29) = 1;
LABEL_27:
    OUTLINED_FUNCTION_64();
    *&v406.value = *(v18 + 1632);
    if ((OUTLINED_FUNCTION_109(*(v18 + 1648)) & 0x80000000) != 0)
    {
      goto LABEL_71;
    }

    CMTimeMake(&v406, 10, 1);
    OUTLINED_FUNCTION_25_1();
    CMTimeAdd(&v407, &time2, &v406);
    *(v18 + 1632) = v407;
    if (gLogCategory_APAudioEngineBuffered <= 90)
    {
      if (gLogCategory_APAudioEngineBuffered != -1 || (OUTLINED_FUNCTION_8(), _LogCategory_Initialize()))
      {
        if (v3)
        {
          v34 = (CMBaseObjectGetDerivedStorage() + 392);
        }

        else
        {
          v34 = "";
        }

        v35 = OUTLINED_FUNCTION_110();
        OUTLINED_FUNCTION_24_2();
        Seconds = CMTimeGetSeconds(&v407);
        v349 = *&v408.timescale;
        value = v408.value;
        if ((v408.epoch & 0x100000000) != 0)
        {
          v37 = 70;
        }

        else
        {
          v37 = 84;
        }

        v343 = v37;
        epoch_low = LODWORD(v408.epoch);
        v339 = SLODWORD(v408.epoch) + *&v408.timescale * 5.42101086e-20;
        v330 = *(v18 + 1544);
        v336 = *(v18 + 1536);
        if (*(v18 + 1556))
        {
          v38 = 70;
        }

        else
        {
          v38 = 84;
        }

        v322 = v38;
        v325 = *(v18 + 1552);
        v310 = *&v35;
        v315 = *&Seconds;
        v299 = v34;
        v305 = v25;
        OUTLINED_FUNCTION_8();
        v298 = v3;
        v319 = v40;
        LogPrintF(v41, v42, (v39 + 40), v43);
      }
    }

    v44 = *MEMORY[0x277CBECE8];
    CMBaseObject = APSNetworkClockGetCMBaseObject();
    v46 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v46)
    {
      v46(CMBaseObject, *MEMORY[0x277CEA240], v44, &cf);
    }

    if (gLogCategory_APAudioEngineBuffered <= 90 && (gLogCategory_APAudioEngineBuffered != -1 || (OUTLINED_FUNCTION_8(), _LogCategory_Initialize())))
    {
      if (v3)
      {
        v47 = (CMBaseObjectGetDerivedStorage() + 392);
      }

      else
      {
        v47 = "";
      }

      v299 = v47;
      v305 = cf.value;
      v298 = v3;
      OUTLINED_FUNCTION_8();
      LogPrintF(v49, v50, (v48 + 40), v51);
      if (v29)
      {
        goto LABEL_71;
      }
    }

    else if (v29)
    {
      goto LABEL_71;
    }

    OUTLINED_FUNCTION_64();
    *&v406.value = *(v18 + 1656);
    if ((OUTLINED_FUNCTION_109(*(v18 + 1672)) & 0x80000000) != 0)
    {
LABEL_71:
      v53 = 0;
      v61 = 0;
      goto LABEL_72;
    }

    Mutable = CFStringCreateMutable(v44, 0);
    if (!Mutable)
    {
      goto LABEL_76;
    }

    v53 = Mutable;
    v397 = CFStringAppendF(Mutable, "MAKE SURE LOGS FROM ALL DEVICES ARE ATTACHED\n\n");
    if (v397 || (v299 = *(v18 + 530), v305 = v25, v298 = v3, (v397 = CFStringAppendF(v53, "BAE [%{ptr}] Session [0x%04X] Audio Clock Error: %@\n\n")) != 0) || (OUTLINED_FUNCTION_24_2(), v54 = CMTimeGetSeconds(&v407), v55 = OUTLINED_FUNCTION_110(), (v397 = CFStringAppendF(v53, "nowAudio:    %1.10f; lastAudio:    %1.10f\n", v54, v55)) != 0) || (OUTLINED_FUNCTION_64(), v56 = CMTimeGetSeconds(&v407), v407 = *(v18 + 1608), v57 = CMTimeGetSeconds(&v407), (v397 = CFStringAppendF(v53, "nowHost:     %1.10f; lastHost:     %1.10f\n", v56, v57)) != 0) || ((*(v18 + 1556) & 1) != 0 ? (v58 = 70) : (v58 = 84), (v408.epoch & 0x100000000) != 0 ? (v59 = 70) : (v59 = 84), (v397 = CFStringAppendF(v53, "nowNetwork: %1.3f v=%c %d %llu (%llu); lastNetwork: %1.3f v=%c %d %llu (%llu)\n", SLODWORD(v408.epoch) + *&v408.timescale * 5.42101086e-20, v59, LODWORD(v408.epoch), *&v408.timescale, v408.value, *(v18 + 1552) + *(v18 + 1544) * 5.42101086e-20, v58, *(v18 + 1552), *(v18 + 1544), *(v18 + 1536))) != 0 || (v298 = cf.value, (v397 = CFStringAppendF(v53, "%@\n")) != 0) || (v397 = CFStringAppendF(v53, "Endpoint hoses:\n")) != 0))
    {
LABEL_70:
      APSLogErrorAt();
      v61 = 0;
    }

    else
    {
      v60 = (v18 + 640);
      while (1)
      {
        v60 = *v60;
        if (!v60)
        {
          break;
        }

        v298 = v60[33];
        v299 = v60[2];
        v397 = CFStringAppendF(v53, "   %@ [%{ptr}]\n");
        if (v397)
        {
          goto LABEL_70;
        }
      }

      v298 = v25;
      v61 = CFStringCreateF(&v397, "TTR: BAE Audio Clock Error: %@");
      if (!v397)
      {
        if (!*(v18 + 592))
        {
          goto LABEL_149;
        }

        v134 = FigEndpointStreamGetCMBaseObject();
        v135 = *(*(CMBaseObjectGetVTable() + 8) + 48);
        if (v135)
        {
          v397 = v135(v134, @"EndpointIDs", v44, &v398);
          if (!v397)
          {
LABEL_149:
            if (gLogCategory_APAudioEngineBuffered <= 50 && (gLogCategory_APAudioEngineBuffered != -1 || OUTLINED_FUNCTION_4(&gLogCategory_APAudioEngineBuffered)))
            {
              if (v3)
              {
                v133 = (CMBaseObjectGetDerivedStorage() + 392);
              }

              else
              {
                v133 = "";
              }

              v299 = v133;
              v305 = v25;
              v298 = v3;
              OUTLINED_FUNCTION_2_0();
              LogPrintF(v136, v137, v138, v139);
            }

            APSTapToRadarInvoke();
            CMTimeMake(&v406, 300, 1);
            OUTLINED_FUNCTION_25_1();
            CMTimeAdd(&v407, &time2, &v406);
            *(v18 + 1656) = v407;
LABEL_72:
            *v22 = *&time.value;
            *(v18 + 1576) = time.epoch;
            *(v18 + 1608) = v409;
            *(v18 + 1536) = v408;
            if (!v53)
            {
              goto LABEL_74;
            }

            goto LABEL_73;
          }
        }

        else
        {
          v397 = -12782;
        }
      }

      APSLogErrorAt();
    }

LABEL_73:
    CFRelease(v53);
LABEL_74:
    if (v61)
    {
      CFRelease(v61);
    }
  }

LABEL_76:
  if (cf.value)
  {
    CFRelease(cf.value);
  }

  v62 = v373;
  if (v398)
  {
    CFRelease(v398);
  }

  bufferedAudioEngine_updatePrerollingState(v3);
  bufferedAudioEngine_getCurrentRemoteMediaTimeInternal(&TotalByteCount, &time);
  v410 = *&time.flags;
  v365 = time.value;
  LODWORD(v367) = time.timescale;
  epoch_high = HIDWORD(time.epoch);
  if (TotalByteCount)
  {
    goto LABEL_387;
  }

  v369 = v3;
  if (*(v373 + 884) == 8)
  {
    v63 = CMBaseObjectGetDerivedStorage();
    LOWORD(rhs.value) = 0;
    *&v409.value = v359;
    v409.epoch = v358;
    *&v408.value = v359;
    v408.epoch = v358;
    *&v407.value = v359;
    v407.epoch = v358;
    LODWORD(lhs.value) = 0;
    if (bufferedAudioEngine_pruneMessageRingToCurrentRemoteMediaTimeWithForwardMargin_onceToken != -1)
    {
      dispatch_once(&bufferedAudioEngine_pruneMessageRingToCurrentRemoteMediaTimeWithForwardMargin_onceToken, &__block_literal_global_463);
    }

    if (*v63)
    {
LABEL_105:
      TotalByteCount = 0;
      v101 = OUTLINED_FUNCTION_123();
      TotalByteCount = bufferedAudioEngine_releaseCryptors(v101, v102);
      if (!TotalByteCount)
      {
        v103 = OUTLINED_FUNCTION_123();
        TotalByteCount = bufferedAudioEngine_releaseMagicCookies(v103, v104);
        v62 = v373;
        if (!TotalByteCount)
        {
          goto LABEL_107;
        }
      }

LABEL_387:
      APSLogErrorAt();
      goto LABEL_365;
    }

    if (APSSettingsIsFeatureEnabled())
    {
      v64 = CMTimeMake(&v409, bufferedAudioEngine_pruneMessageRingToCurrentRemoteMediaTimeWithForwardMargin_defaultForwardPruningMarginMs, 1000);
      OUTLINED_FUNCTION_16_5(v64, v65, v66, v67, v68, v69, v70, v71, v298, v299, v305, v310, v315, v319, v322, v325, v330, v336, *&v339, v343, epoch_low, v349, value, v353, v355, v356, v357, v358, v359.n128_i64[0], v359.n128_i64[1], v360, epoch, v363, *(&v363 + 1), v365, v367);
      OUTLINED_FUNCTION_25_1();
      v72 = OUTLINED_FUNCTION_101();
      CMTimeAdd(v74, v72, v73);
    }

    else
    {
      v75 = CMTimeMake(&v409, 1000, 1000);
      OUTLINED_FUNCTION_16_5(v75, v76, v77, v78, v79, v80, v81, v82, v298, v299, v305, v310, v315, v319, v322, v325, v330, v336, *&v339, v343, epoch_low, v349, value, v353, v355, v356, v357, v358, v359.n128_i64[0], v359.n128_i64[1], v360, epoch, v363, *(&v363 + 1), v365, v367);
      OUTLINED_FUNCTION_25_1();
      v83 = OUTLINED_FUNCTION_101();
      CMTimeSubtract(v85, v83, v84);
      OUTLINED_FUNCTION_122();
      *&time2.value = v363;
      time2.epoch = epoch;
      v86 = OUTLINED_FUNCTION_101();
      if (CMTimeCompare(v86, v87) <= 0)
      {
        v284 = APSLogErrorAt();
        if (gLogCategory_APAudioEngineBuffered <= 90)
        {
          if (gLogCategory_APAudioEngineBuffered != -1 || (OUTLINED_FUNCTION_8(), v284 = _LogCategory_Initialize(), v284))
          {
            if (v3)
            {
              v284 = CMBaseObjectGetDerivedStorage();
              v292 = (v284 + 392);
            }

            else
            {
              v292 = "";
            }

            OUTLINED_FUNCTION_16_5(v284, v285, v286, v287, v288, v289, v290, v291, v298, v300, v306, v311, v316, v320, v323, v326, v331, v337, v340, v344, v348, v350, v352, v354, v355, v356, v357, v358, v359.n128_i64[0], v359.n128_i64[1], v361, epoch, v363, *(&v363 + 1), v365, v367);
            v293 = CMTimeGetSeconds(&v406);
            v406 = v409;
            v314 = CMTimeGetSeconds(&v406);
            OUTLINED_FUNCTION_8();
            LogPrintF(v295, v296, (v294 + 40), v297, v3, v292, *&v293, *&v314);
          }
        }

        v283 = -15481;
        goto LABEL_386;
      }
    }

    OUTLINED_FUNCTION_122();
    v89 = APMessageRingBufferedPruneMessagesUntilTimestamp(v88, &v406, &rhs);
    if (!v89)
    {
      APMessageRingBufferedGetMessageAtIndex();
      if (*(v63 + 496))
      {
        time.value = MEMORY[0x277D85DD0];
        *&time.timescale = 0x40000000;
        time.epoch = __bufferedAudioEngine_pruneMessageRingToCurrentRemoteMediaTimeWithForwardMargin_block_invoke_2;
        v400 = &__block_descriptor_tmp_471;
        v401 = rhs.value;
        CFDictionaryApplyBlock();
      }

      else
      {
        for (i = *(v63 + 640); i; i = *i)
        {
          if (((*(i + 17) - LOWORD(rhs.value)) & 0x8000) != 0)
          {
            if (gLogCategory_APAudioEngineBuffered <= 50 && (gLogCategory_APAudioEngineBuffered != -1 || OUTLINED_FUNCTION_4(&gLogCategory_APAudioEngineBuffered)))
            {
              if (v3)
              {
                v91 = (CMBaseObjectGetDerivedStorage() + 392);
              }

              else
              {
                v91 = "";
              }

              v374 = v91;
              v370 = *(v63 + 530);
              v406.value = v365;
              v406.timescale = v367;
              *&v406.flags = v410;
              HIDWORD(v406.epoch) = epoch_high;
              v92 = CMTimeGetSeconds(&v406);
              v93 = i[2];
              v94 = i[33];
              v95 = *(i + 17);
              value_low = LOWORD(rhs.value);
              v97 = LODWORD(lhs.value);
              v406 = v407;
              v345 = CMTimeGetSeconds(&v406);
              OUTLINED_FUNCTION_2_0();
              LogPrintF(v98, v99, v100, "BAE [%{ptr}] %s[0x%04X] nowRemoteMediaTime %1.6f (%lld/%d); Updating read idx for hose [%{ptr}] (%@) from %u to %u (seqNum %u, time %1.3f)", v3, v374, v370, *&v92, v365, v367, v93, v94, v95, value_low, v97, *&v345);
            }

            *(i + 17) = rhs.value;
            if (APSSettingsIsFeatureEnabled())
            {
              *(i + 32) = 256;
            }
          }
        }
      }

      goto LABEL_105;
    }

    v283 = v89;
    APSLogErrorAt();
LABEL_386:
    TotalByteCount = v283;
    goto LABEL_387;
  }

LABEL_107:
  v105 = CMBaseObjectGetDerivedStorage();
  v106 = (v105 + 680);
  time = *(v105 + 680);
  *&v409.value = v363;
  v409.epoch = epoch;
  *&v407.value = v363;
  v407.epoch = epoch;
  *&v406.value = v363;
  v406.epoch = epoch;
  *&time2.value = v363;
  time2.epoch = epoch;
  *&lhs.value = v363;
  lhs.epoch = epoch;
  if (*v105)
  {
    goto LABEL_134;
  }

  v107 = v105;
  v108 = 804;
  if ((*(v105 + 816) & 1) == 0)
  {
    v108 = 780;
  }

  OUTLINED_FUNCTION_121((v105 + v108));
  bufferedAudioEngine_getCurrentRemoteMediaTimeInternal(0, &v409);
  v109 = *(v107 + 648);
  if (v109 == 1)
  {
    v110 = *(v107 + 640);
    if (v110)
    {
      if (!*(v110 + 32))
      {
        goto LABEL_117;
      }

      CMTimeMake(&time2, 18, 1);
      bufferedAudioEngine_getSentBufferLevelTime(*(v107 + 640), &v406);
    }
  }

  else
  {
    if (!v109)
    {
      CMTimeMake(&time2, 18, 1);
      *&v406.value = v363;
      v406.epoch = epoch;
      goto LABEL_122;
    }

    if (*(v107 + 640))
    {
LABEL_117:
      CMTimeMake(&time2, 125, 1);
      v406 = **&MEMORY[0x277CC08B0];
      for (j = *(v107 + 640); j; j = *j)
      {
        bufferedAudioEngine_getSentBufferLevelTime(*(v107 + 640), &lhs);
        if (!*(j + 32))
        {
          rhs = lhs;
          *&cf.value = *&v406.value;
          if ((OUTLINED_FUNCTION_84(v406.epoch) & 0x80000000) != 0)
          {
            v406 = lhs;
          }
        }
      }
    }
  }

LABEL_122:
  *(v107 + 656) = time2;
  rhs = v406;
  cf = *(v107 + 92);
  CMTimeAdd(&v407, &rhs, &cf);
  v112 = (v107 + 68);
  rhs = v407;
  *&cf.value = *(v107 + 68);
  if ((OUTLINED_FUNCTION_84(*(v107 + 84)) & 0x80000000) == 0)
  {
    rhs = v409;
    *&cf.value = *&v408.value;
    if (OUTLINED_FUNCTION_84(v408.epoch) >= 1)
    {
      v112 = &v407;
    }
  }

  v113 = *&v112->value;
  v106->epoch = v112->epoch;
  *&v106->value = v113;
  rhs = time;
  *&cf.value = *&v112->value;
  if (OUTLINED_FUNCTION_84(v112->epoch))
  {
    if (gLogCategory_APAudioEngineBuffered <= 30)
    {
      if (gLogCategory_APAudioEngineBuffered != -1 || (OUTLINED_FUNCTION_8(), _LogCategory_Initialize()))
      {
        if (v3)
        {
          v114 = (CMBaseObjectGetDerivedStorage() + 392);
        }

        else
        {
          v114 = "";
        }

        rhs = *(v107 + 656);
        v115 = CMTimeGetSeconds(&rhs);
        rhs = *v106;
        CMTimeGetSeconds(&rhs);
        OUTLINED_FUNCTION_8();
        LogPrintF(&gLogCategory_APAudioEngineBuffered, "void bufferedAudioEngine_updateMaxAudioToBufferTime(FigEndpointStreamAudioEngineRef)", (v116 - 20), "BAE [%{ptr}] %smaxAudioToBufferTime: %1.3f; maxAudioToBufferTimeAboveLow %.3f\n", v3, v114, *&v115, v117);
      }
    }
  }

LABEL_134:
  time.value = v365;
  *&time.flags = v410;
  time.timescale = v367;
  HIDWORD(time.epoch) = epoch_high;
  v409 = *(v62 + 680);
  v118 = OUTLINED_FUNCTION_71();
  CMTimeAdd(v120, v118, v119);
  v394 = *(v62 + 756);
  time.value = v365;
  *&time.flags = v410;
  time.timescale = v367;
  HIDWORD(time.epoch) = epoch_high;
  v409 = *(v62 + 656);
  v121 = OUTLINED_FUNCTION_71();
  CMTimeAdd(v123, v121, v122);
  v124 = 804;
  if ((*(v62 + 816) & 1) == 0)
  {
    v124 = 780;
  }

  v391 = *(v62 + v124);
  time.value = v365;
  *&time.flags = v410;
  time.timescale = v367;
  HIDWORD(time.epoch) = epoch_high;
  v409 = v391;
  v125 = OUTLINED_FUNCTION_71();
  v127 = CMTimeCompare(v125, v126);
  TotalByteCount = APMessageRingBufferedGetTotalByteCount(*(v62 + 616), &v388 + 1);
  if (TotalByteCount)
  {
    goto LABEL_387;
  }

  v371 = v127;
  v128 = CMBaseObjectGetDerivedStorage();
  started = bufferedAudioEngine_engineBufferedToStartWaterMark(v3);
  v130 = mach_absolute_time();
  v131 = v130;
  if (!started || *(v128 + 1112) && v130 > *(v128 + 1144) && !bufferedAudioEngine_shouldSkipTranscodeForStartup(v3))
  {
    if (*(v128 + 1112) && gLogCategory_APAudioEngineBuffered <= 50 && (gLogCategory_APAudioEngineBuffered != -1 || OUTLINED_FUNCTION_4(&gLogCategory_APAudioEngineBuffered)))
    {
      if (v3)
      {
        v132 = (CMBaseObjectGetDerivedStorage() + 392);
      }

      else
      {
        v132 = "";
      }

      v140 = *(v128 + 530);
      OUTLINED_FUNCTION_56((v128 + 756));
      v141 = CMTimeGetSeconds(&time);
      OUTLINED_FUNCTION_56((v128 + 1116));
      v142 = CMTimeGetSeconds(&time);
      time.value = v365;
      *&time.flags = v410;
      time.timescale = v367;
      HIDWORD(time.epoch) = epoch_high;
      v143 = CMTimeGetSeconds(&time);
      v144 = (v131 / UpTicksPerSecond());
      v145 = *(v128 + 1144);
      v146 = (v145 / UpTicksPerSecond());
      v147 = "T";
      if (!started)
      {
        v147 = "F";
      }

      v332 = v147;
      v327 = v146;
      OUTLINED_FUNCTION_2_0();
      LogPrintF(v148, v149, v150, v151, v3, v132, v140, *&v141, *&v142, *&v143, *&v144, *&v327, v332);
    }

    *(v128 + 1152) = v131;
    bufferedAudioEngine_setTranscodeIsRestingAndUpdateConsumer(v3, 0);
    OUTLINED_FUNCTION_9_5();
    kdebug_trace();
  }

  v152 = v371;
  if ((*(v62 + 1268) & 1) != 0 && HIDWORD(v357))
  {
    v153 = 1;
    while (1)
    {
      TotalByteCount = bufferedAudioEngine_prepareOneMessageForSending(v3, 0, 0);
      if (TotalByteCount)
      {
        goto LABEL_387;
      }

      if ((*(v62 + 1268) & 1) != 0 && v153++ < HIDWORD(v357))
      {
        continue;
      }

      break;
    }
  }

  v155 = v355 + v356;
  if (*(v62 + 1112) || (OUTLINED_FUNCTION_6_10(), v409 = v392, v156 = OUTLINED_FUNCTION_71(), CMTimeCompare(v156, v157) > 0))
  {
    v158 = 0;
    v375 = 0;
  }

  else
  {
    v158 = 0;
    v375 = 0;
    do
    {
      if (mach_absolute_time() >= v155)
      {
        break;
      }

      if (v158 >= *(v62 + 24))
      {
        break;
      }

      OUTLINED_FUNCTION_6_10();
      v409 = v393;
      v159 = OUTLINED_FUNCTION_71();
      if ((CMTimeCompare(v159, v160) & 0x80000000) == 0)
      {
        OUTLINED_FUNCTION_116();
        v409 = v389;
        v161 = OUTLINED_FUNCTION_71();
        if ((CMTimeCompare(v161, v162) & 0x80000000) == 0 || v152 < 1)
        {
          break;
        }
      }

      if (HIDWORD(v388) >= *(v62 + 704))
      {
        break;
      }

      TotalByteCount = bufferedAudioEngine_prepareOneMessageForSending(v3, 0, &v390);
      if (!v390)
      {
        break;
      }

      OUTLINED_FUNCTION_6_10();
      v409 = v394;
      v163 = OUTLINED_FUNCTION_71();
      CMTimeSubtract(v165, v163, v164);
      TotalByteCount = APMessageRingBufferedGetTotalByteCount(*(v62 + 616), &v388 + 1);
      if (TotalByteCount)
      {
        goto LABEL_387;
      }

      v166 = CMBaseObjectGetDerivedStorage();
      v167 = v3;
      *&time.value = v363;
      time.epoch = epoch;
      LODWORD(v406.value) = 0;
      if (*(v166 + 152) && (v168 = v166, v169 = (v166 + 756), v170 = (v166 + 1116), OUTLINED_FUNCTION_124(), v408 = *v170, CMTimeCompare(&v409, &v408) >= 1) && bufferedAudioEngine_engineBufferedToStartWaterMark(v167))
      {
        v177 = mach_absolute_time();
        bufferedAudioEngine_getCurrentRemoteMediaTimeInternal(&v406, &time);
        if (LODWORD(v406.value))
        {
          APSLogErrorAt();
          v3 = v369;
          v152 = v371;
          if (gLogCategory_APAudioEngineBuffered <= 50 && (gLogCategory_APAudioEngineBuffered != -1 || OUTLINED_FUNCTION_4(&gLogCategory_APAudioEngineBuffered)))
          {
            v193 = "";
            if (v369)
            {
              v193 = (CMBaseObjectGetDerivedStorage() + 392);
            }

            v302 = v193;
            v307 = LODWORD(v406.value);
            OUTLINED_FUNCTION_2_0();
            LogPrintF(v194, v195, v196, "BAE [%{ptr}] %sFailed to get current RemoteMediaTime with err 0x%x", v369, v302, v307);
          }
        }

        else
        {
          v178 = v177 - *(v168 + 1152);
          if (v178 > MillisecondsToUpTicks())
          {
            v178 = MillisecondsToUpTicks();
          }

          *(v168 + 1144) = v177 - v178 + MillisecondsToUpTicks();
          CMTimeMake(&v408, *(v168 + 156), 1000);
          v407 = *v169;
          CMTimeAdd(&v409, &v407, &v408);
          *v170 = v409;
          if (!*(v168 + 1112) && gLogCategory_APAudioEngineBuffered <= 50 && (gLogCategory_APAudioEngineBuffered != -1 || OUTLINED_FUNCTION_4(&gLogCategory_APAudioEngineBuffered)))
          {
            v179 = "";
            if (v369)
            {
              v179 = (CMBaseObjectGetDerivedStorage() + 392);
            }

            v376 = *(v168 + 530);
            v180 = (v177 / UpTicksPerSecond());
            v181 = *(v168 + 1144);
            v182 = (v181 / UpTicksPerSecond());
            OUTLINED_FUNCTION_124();
            v183 = CMTimeGetSeconds(&v409);
            v409 = *v170;
            v184 = CMTimeGetSeconds(&v409);
            v409 = time;
            v185 = CMTimeGetSeconds(&v409);
            v333 = *(v168 + 152);
            v338 = *(v168 + 156);
            v328 = v185;
            OUTLINED_FUNCTION_2_0();
            LogPrintF(v186, v187, v188, "BAE [%{ptr}] %s[0x%04X] (Transcode STOP) currentTime(sec)=%1.3f, transcodeRestExpiryTicks(sec)=%1.3f, nextRemoteMediaTimestamp=%1.3f, nextTranscodeBurstMaxRemoteMediaTime=%1.3f, currentRemoteMediaTime=%1.3f, transcodeRestTimeIntervalMs=%u, nextTranscodeMaxBurstMs=%u", v369, v179, v376, *&v180, *&v182, *&v183, *&v184, *&v328, v333, v338);
          }

          v3 = v369;
          v189 = OUTLINED_FUNCTION_123();
          bufferedAudioEngine_setTranscodeIsRestingAndUpdateConsumer(v189, v190);
          OUTLINED_FUNCTION_9_5();
          kdebug_trace();
          v62 = v373;
          v152 = v371;
        }
      }

      else
      {
        v3 = v167;
        if (bufferedAudioEngine_shouldSkipTranscodeForStartup(v167))
        {
          if (gLogCategory_APAudioEngineBuffered <= 50 && (gLogCategory_APAudioEngineBuffered != -1 || OUTLINED_FUNCTION_4(&gLogCategory_APAudioEngineBuffered)))
          {
            v171 = "";
            if (v167)
            {
              v171 = (CMBaseObjectGetDerivedStorage() + 392);
            }

            v301 = v171;
            OUTLINED_FUNCTION_2_0();
            LogPrintF(v172, v173, v174, "BAE [%{ptr}] %s[0x%04X] (Transcode SKIP) starting up and engineBufferedToStartWaterMark.  Skip transcode. \n", v167, v301);
          }

          v175 = OUTLINED_FUNCTION_123();
          bufferedAudioEngine_setTranscodeIsRestingAndUpdateConsumer(v175, v176);
        }
      }

      if (*(v62 + 1112))
      {
        v375 = 1;
        break;
      }

      v158 = (v158 + 1);
      OUTLINED_FUNCTION_6_10();
      v409 = v392;
      v191 = OUTLINED_FUNCTION_71();
      v375 = 1;
    }

    while (CMTimeCompare(v191, v192) < 1);
  }

  v382 = MEMORY[0x277D85DD0];
  v383 = 0x40000000;
  v384 = __bufferedAudioEngine_audioTimer_block_invoke;
  v385 = &__block_descriptor_tmp_438;
  v386 = v62;
  v387 = v3;
  FigCFDictionaryApplyBlock();
  mach_absolute_time();
  v197 = UpTicksToSeconds() / *(v62 + 116);
  if (*(v62 + 868) != v197)
  {
    *(v62 + 868) = v197;
    bufferedAudioEngine_getSampleRateFromTransportAudioFormat(v3);
    if (gLogCategory_APAudioEngineBuffered <= 50 && (gLogCategory_APAudioEngineBuffered != -1 || OUTLINED_FUNCTION_4(&gLogCategory_APAudioEngineBuffered)))
    {
      if (v3)
      {
        v198 = (CMBaseObjectGetDerivedStorage() + 392);
      }

      else
      {
        v198 = "";
      }

      v368 = v198;
      v199 = v3;
      v366 = *(v62 + 530);
      OUTLINED_FUNCTION_6_10();
      OUTLINED_FUNCTION_76(&v381);
      v364 = v381.value;
      time = v392;
      OUTLINED_FUNCTION_76(&v380);
      v200 = v380.value;
      if (mach_absolute_time() >= v155)
      {
        v201 = "F";
      }

      else
      {
        v201 = "T";
      }

      v202 = *(v62 + 24);
      time = v393;
      OUTLINED_FUNCTION_76(&v379);
      v203 = v379.value;
      OUTLINED_FUNCTION_116();
      OUTLINED_FUNCTION_76(&v378);
      v204 = v378.value;
      time = v389;
      OUTLINED_FUNCTION_76(&v377);
      if (v371 <= 0)
      {
        v205 = "F";
      }

      else
      {
        v205 = "T";
      }

      v341 = v377.value;
      v346 = v205;
      v334 = v203;
      v62 = v373;
      OUTLINED_FUNCTION_2_0();
      LogPrintF(v206, v207, v208, v209, v199, v368, v366, v364, v200, v201, v158, v202, v334, v204, v341, v346);
      v3 = v199;
    }

    if (FigCFDictionaryGetValue())
    {
      bufferedAudioEngine_logProtocolDriverBufferFullness();
    }

    bufferedAudioEngine_wakeUpHoses(v3);
    bufferedAudioEngine_logBufferFullness(v3);
  }

  bufferedAudioEngine_updateCriticalBufferingState(v3);
  FirstValidReadIndex = APMessageRingBufferedGetFirstValidReadIndex(*(v62 + 616), &v388);
  v211 = *(v62 + 640);
  if (v211)
  {
    v212 = FirstValidReadIndex;
    v213 = v375 != 0;
    OUTLINED_FUNCTION_8();
    v215 = (v214 - 40);
    v372 = v214 - 30;
    do
    {
      if (gLogCategory_APAudioEngineBuffered <= 10 && (gLogCategory_APAudioEngineBuffered != -1 || _LogCategory_Initialize()))
      {
        if (v3)
        {
          CMBaseObjectGetDerivedStorage();
        }

        OUTLINED_FUNCTION_89();
        v342 = v388;
        v329 = *(v211 + 65) != 0;
        v335 = *(v211 + 17);
        v308 = v216;
        v312 = v217;
        v303 = v218;
        v321 = *(v211 + 64) != 0;
        v317 = v219;
        v220 = OUTLINED_FUNCTION_102();
        LogPrintF(v220, v221, v215, "BAE [%{ptr}] %s[0x%04X] AudioTimer hose [%{ptr}] (%s) Resting = %d anyMessagesPrepared = %d haveDataToSend = %d bufferIdx = %u firstValidIdx = %u firstValidSeq = %d\n", v3, v303, v308, v312, v317, v321, v213, v329, v335, v212, v342);
      }

      if (*(v211 + 64))
      {
        if (v375)
        {
          *(v211 + 65) = 1;
        }
      }

      else if (!*(v211 + 45) && (v375 || *(v211 + 65)))
      {
        *(v211 + 65) = 0;
        if (!*(v373 + 577))
        {
          v222 = v211[3];
          APSEndpointStreamAudioHoseProtocolGetProtocolID();
          ProtocolVTable = CMBaseObjectGetProtocolVTable();
          if (ProtocolVTable && (v224 = *(ProtocolVTable + 16)) != 0)
          {
            v225 = *(v224 + 40);
            v226 = v225 ? v225(v222) : -12782;
          }

          else
          {
            v226 = -12788;
          }

          TotalByteCount = v226;
          v3 = v369;
          if (gLogCategory_APAudioEngineBuffered <= 20 && (gLogCategory_APAudioEngineBuffered != -1 || _LogCategory_Initialize()))
          {
            if (v369)
            {
              CMBaseObjectGetDerivedStorage();
            }

            OUTLINED_FUNCTION_89();
            v318 = v227;
            v309 = v228;
            v313 = v229;
            v304 = v230;
            v324 = *(v211 + 65) != 0;
            v231 = OUTLINED_FUNCTION_102();
            LogPrintF(v231, v232, v372, "BAE [%{ptr}] %s[0x%04X] AudioTimer Notified hose [%{ptr}] (%s) that audio data is available. anyMessagesPrepared = %d haveDataToSend = %d\n", v369, v304, v309, v313, v318, v213, v324);
          }
        }
      }

      v211 = *v211;
    }

    while (v211);
  }

  v233 = CMBaseObjectGetDerivedStorage();
  v234 = v233;
  *&time.timescale = 0;
  time.value = 0;
  v235 = *(v233 + 880);
  v236 = 240;
  if (*(v233 + 880))
  {
    v236 = 248;
  }

  v237 = *(v233 + v236);
  bufferedAudioEngine_updateHosesPrimed(v3, v237, *(v233 + 880) != 0, &time);
  if (time.flags >= 1 && HIDWORD(time.value) == time.flags)
  {
    bufferedAudioEngine_updateHosesPrimed(v3, v237, 1, &time);
  }

  v239 = v373;
  if (v235)
  {
    goto LABEL_290;
  }

  if (HIDWORD(time.value) + LODWORD(time.value) == time.flags)
  {
    if (gLogCategory_APAudioEngineBuffered > 50 || gLogCategory_APAudioEngineBuffered == -1 && !OUTLINED_FUNCTION_4(&gLogCategory_APAudioEngineBuffered))
    {
      goto LABEL_289;
    }

    if (!v3)
    {
      goto LABEL_288;
    }

LABEL_287:
    CMBaseObjectGetDerivedStorage();
LABEL_288:
    OUTLINED_FUNCTION_26_1();
    OUTLINED_FUNCTION_2_0();
    LogPrintF(v240, v241, v242, v243, v3);
    goto LABEL_289;
  }

  if (100 * LODWORD(time.value) < (*(v234 + 264) * time.flags) || time.timescale + LODWORD(time.value) != time.flags)
  {
    goto LABEL_290;
  }

  if (gLogCategory_APAudioEngineBuffered <= 50 && (gLogCategory_APAudioEngineBuffered != -1 || OUTLINED_FUNCTION_4(&gLogCategory_APAudioEngineBuffered)))
  {
    if (!v3)
    {
      goto LABEL_288;
    }

    goto LABEL_287;
  }

LABEL_289:
  *(v234 + 880) = 1;
LABEL_290:
  if (gLogCategory_APAudioEngineBuffered <= 10)
  {
    if (gLogCategory_APAudioEngineBuffered != -1 || (OUTLINED_FUNCTION_8(), _LogCategory_Initialize()))
    {
      if (v3)
      {
        CMBaseObjectGetDerivedStorage();
      }

      OUTLINED_FUNCTION_26_1();
      LogPrintF(&gLogCategory_APAudioEngineBuffered, "void bufferedAudioEngine_updateStartupRequirements(FigEndpointStreamAudioEngineRef)", v244, "BAE [%{ptr}] %s(startup) startupRequirementsMet = %d, ready=%d/%d\n", v3);
    }
  }

  v245 = CMBaseObjectGetDerivedStorage();
  time.value = 0;
  v246 = mach_absolute_time();
  if (*(v245 + 880) && (v247 = *(v245 + 640)) != 0)
  {
    v252 = v246;
    v253 = 0;
    v248 = 0;
    v254 = *MEMORY[0x277CE9F70];
    while (1)
    {
      v255 = v247[2];
      v256 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      if (!v256 || v256(v255, v254, 0, &time))
      {
        break;
      }

      isHoseInStereoPair = bufferedAudioEngine_isHoseInStereoPair(v247[2]);
      v258 = *(v247 + 37);
      v239 = v373;
      if (isHoseInStereoPair)
      {
        if (v258)
        {
          if (!v253)
          {
            v253 = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], 0);
            if (!v253)
            {
              APSLogErrorAt();
              goto LABEL_298;
            }
          }

          if (CFDictionaryContainsKey(v253, time.value))
          {
            v265 = CFDictionaryGetValue(v253, time.value);
            if (v265[37] == 1)
            {
              v265[37] = 2;
              v248 = 1;
              *(v245 + 881) = 1;
              if (gLogCategory_APAudioEngineBuffered <= 50 && (gLogCategory_APAudioEngineBuffered != -1 || OUTLINED_FUNCTION_4(&gLogCategory_APAudioEngineBuffered)))
              {
                if (v369)
                {
                  CMBaseObjectGetDerivedStorage();
                }

                OUTLINED_FUNCTION_18_5();
                OUTLINED_FUNCTION_2_0();
                LogPrintF(v266, v267, v268, "BAE [%{ptr}] %s[0x%04X] (startup) Stereo Pair hose (peer) [%{ptr}] (%@) Primed -> Ready because peer was primed or better\n");
              }
            }

            if (*(v247 + 37) == 1)
            {
              OUTLINED_FUNCTION_94();
              v239 = v373;
              if (gLogCategory_APAudioEngineBuffered <= 50 && (gLogCategory_APAudioEngineBuffered != -1 || OUTLINED_FUNCTION_4(&gLogCategory_APAudioEngineBuffered)))
              {
                if (v369)
                {
                  CMBaseObjectGetDerivedStorage();
                }

                OUTLINED_FUNCTION_93();
                OUTLINED_FUNCTION_18_5();
                OUTLINED_FUNCTION_2_0();
                LogPrintF(v269, v270, v271, "BAE [%{ptr}] %s[0x%04X] (startup) Stereo Pair hose [%{ptr}] (%@) Primed -> Ready because peer was primed or better\n", v298);
              }
            }

            else
            {
              v239 = v373;
            }
          }

          else
          {
            CFDictionaryAddValue(v253, time.value, v247);
            if (*(v247 + 37) == 1 && v252 - v247[10] >= *(v245 + 256))
            {
              OUTLINED_FUNCTION_94();
              if (gLogCategory_APAudioEngineBuffered <= 50 && (gLogCategory_APAudioEngineBuffered != -1 || OUTLINED_FUNCTION_4(&gLogCategory_APAudioEngineBuffered)))
              {
                if (v369)
                {
                  CMBaseObjectGetDerivedStorage();
                }

                OUTLINED_FUNCTION_93();
                OUTLINED_FUNCTION_18_5();
                OUTLINED_FUNCTION_2_0();
                LogPrintF(v262, v263, v264, "BAE [%{ptr}] %s[0x%04X] (startup) Stereo Pair Hoses [%{ptr}] (%@) Primed -> Ready due to timeout\n", v298);
              }
            }
          }
        }
      }

      else if (v258 == 1)
      {
        OUTLINED_FUNCTION_94();
        if (gLogCategory_APAudioEngineBuffered <= 50 && (gLogCategory_APAudioEngineBuffered != -1 || OUTLINED_FUNCTION_4(&gLogCategory_APAudioEngineBuffered)))
        {
          if (v369)
          {
            CMBaseObjectGetDerivedStorage();
          }

          OUTLINED_FUNCTION_93();
          OUTLINED_FUNCTION_28();
          OUTLINED_FUNCTION_2_0();
          LogPrintF(v259, v260, v261, "BAE [%{ptr}] %s[0x%04X] (startup) Hose [%{ptr}] (%@) Primed -> Ready (clusterUUID %@)\n", v298);
        }
      }

      if (time.value)
      {
        CFRelease(time.value);
        time.value = 0;
      }

      v247 = *v247;
      if (!v247)
      {
        goto LABEL_354;
      }
    }

    APSLogErrorAt();
    v248 = 0;
    v239 = v373;
LABEL_354:
    if (v253)
    {
      CFRelease(v253);
    }
  }

  else
  {
LABEL_298:
    v248 = 0;
  }

  if (time.value)
  {
    CFRelease(time.value);
  }

  bufferedAudioEngine_startPlaybackIfNecessary(v369, v248);
  bufferedAudioEngine_updatePrerollingState(v369);
  v249 = CMBaseObjectGetDerivedStorage();
  CMBaseObjectGetDerivedStorage();
  v250 = 888;
  if ((*(v249 + 884) - 5) < 3)
  {
    v250 = 896;
  }

  if (!v375 && *(v249 + v250) == 0.0 && *(v239 + 884) != 4)
  {
    if (gLogCategory_APAudioEngineBuffered <= 40)
    {
      if (gLogCategory_APAudioEngineBuffered != -1 || (OUTLINED_FUNCTION_8(), _LogCategory_Initialize()))
      {
        if (v369)
        {
          v251 = (CMBaseObjectGetDerivedStorage() + 392);
        }

        else
        {
          v251 = "";
        }

        v272 = *(v239 + 530);
        v273 = *(v239 + 888);
        bufferedAudioEngine_playbackStateGetCString(*(v239 + 884));
        OUTLINED_FUNCTION_8();
        LogPrintF(&gLogCategory_APAudioEngineBuffered, "void bufferedAudioEngine_audioTimer(void *)", (v274 - 10), "BAE [%{ptr}] %s[0x%04X] Pausing audioTimer (Rate = %3.2lf, PlaybackState = %s)\n", v369, v251, v272, v273, v275);
      }
    }

    bufferedAudioEngine_audioTimerPause(v369);
  }

  bufferedAudioEngine_updateDataProcessingTargetQueueInternal(v369);
  v276 = CMBaseObjectGetDerivedStorage();
  *&time.value = v359;
  time.epoch = v358;
  *&v409.value = v359;
  v409.epoch = v358;
  v277 = *(v276 + 640);
  v278 = mach_absolute_time();
  if (UpTicksToMilliseconds() >= 0x64)
  {
    *(v276 + 1528) = v278;
    bufferedAudioEngine_getCurrentRemoteMediaTimeInternal(0, &time);
    for (; v277; v277 = *v277)
    {
      if (*(v277 + 33))
      {
        OUTLINED_FUNCTION_129();
        bufferedAudioEngine_getLastDeliveredRemoteMediaTimeForHose(v279, v280);
      }

      else
      {
        OUTLINED_FUNCTION_129();
        bufferedAudioEngine_getLastSentRemoteMediaTimeForHose(v281, v282);
      }

      v408 = v409;
      OUTLINED_FUNCTION_24_2();
      v406 = *(v276 + 756);
      APSAudioHoseMetricCollectorUpdateMediaTimeStatsForHose();
    }
  }

LABEL_365:
  OUTLINED_FUNCTION_141();
}

uint64_t bufferedAudioEngine_updatePrerollingState(uint64_t a1)
{
  result = CMBaseObjectGetDerivedStorage();
  v3 = *(result + 884);
  if (v3 == 4)
  {
    if (!*(result + 880))
    {
      return result;
    }

    v4 = 3;
  }

  else
  {
    if (v3 != 3 || *(result + 880))
    {
      return result;
    }

    v4 = 4;
  }

  return bufferedAudioEngine_updatePlaybackState(a1, v4);
}

uint64_t bufferedAudioEngine_prepareOneMessageForSending(const void *a1, int a2, BOOL *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v49 = 0;
  if (*DerivedStorage)
  {
    v33 = 0;
    goto LABEL_37;
  }

  v7 = DerivedStorage;
  v8 = *(CMBaseObjectGetDerivedStorage() + 624);
  v9 = &gLogCategory_APEndpointPlaybackSessionRemoteControl;
  v10 = MEMORY[0x277CC0898];
  if (v8 && CFArrayGetCount(v8))
  {
    v11 = CMBaseObjectGetDerivedStorage();
    v55 = *v10;
    v54 = v55;
    lengthAtOffsetOut = 0;
    dataPointerOut = 0;
    if (!*(v11 + 616))
    {
      APSLogErrorAt();
      v33 = APSSignalErrorAt();
      if (!v33)
      {
LABEL_29:
        v34 = 1;
        goto LABEL_79;
      }

      goto LABEL_36;
    }

    v12 = v11;
    v13 = CMBaseObjectGetDerivedStorage();
    v14 = *(v13 + 624);
    if (v14 && CFArrayGetCount(v14) >= 1)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(*(v13 + 624), 0);
      v16 = CFArrayGetValueAtIndex(ValueAtIndex, 0);
      DataLength = CMBlockBufferGetDataLength(v16);
    }

    else
    {
      DataLength = 0;
    }

    NextFreeBacking = APMessageRingBufferedGetNextFreeBacking(*(v12 + 616), DataLength);
    if (NextFreeBacking)
    {
      v22 = NextFreeBacking;
      v23 = CMBaseObjectGetDerivedStorage();
      v24 = *(v23 + 624);
      if (v24 && CFArrayGetCount(v24) > 0)
      {
        v48 = a3;
        v25 = CFArrayGetValueAtIndex(*(v23 + 624), 0);
        v26 = CFArrayGetValueAtIndex(v25, 0);
        v27 = CFArrayGetValueAtIndex(v25, 1);
        v28 = CFArrayGetValueAtIndex(v25, 2);
        v29 = CFRetain(v26);
        CMTimeMakeFromDictionary(&v55, v27);
        CMTimeMakeFromDictionary(&v54, v28);
        CFArrayRemoveValueAtIndex(*(v23 + 624), 0);
        DataPointer = CMBlockBufferGetDataPointer(v22, 0, &lengthAtOffsetOut, 0, &dataPointerOut);
        if (DataPointer)
        {
          v33 = DataPointer;
          APSLogErrorAt();
        }

        else
        {
          v31 = lengthAtOffsetOut;
          if (v31 >= CMBlockBufferGetDataLength(v29))
          {
            v32 = CMBlockBufferCopyDataBytes(v29, 0, DataLength, dataPointerOut);
            a3 = v48;
            v9 = &gLogCategory_APEndpointPlaybackSessionRemoteControl;
            if (v32)
            {
              v33 = v32;
            }

            else
            {
              rhs = v55;
              lhs = v54;
              v33 = bufferedAudioEngine_enqueueMessageForSending(a1, v22, &rhs.value, &lhs);
              if (!v33)
              {
                goto LABEL_26;
              }
            }

            APSLogErrorAt();
LABEL_26:
            if (v29)
            {
              CFRelease(v29);
            }

            if (!v33)
            {
              goto LABEL_29;
            }

            goto LABEL_36;
          }

          APSLogErrorAt();
          v33 = APSSignalErrorAt();
        }

        a3 = v48;
        v9 = &gLogCategory_APEndpointPlaybackSessionRemoteControl;
        goto LABEL_26;
      }

      APSLogErrorAt();
      APSLogErrorAt();
    }

    v33 = 4294895201;
LABEL_36:
    APSLogErrorAt();
LABEL_37:
    v34 = 0;
    goto LABEL_89;
  }

  if (!APMessageRingBufferedIsFull(*(v7 + 77)))
  {
    v18 = CMBaseObjectGetDerivedStorage();
    if (!*(v18 + 616))
    {
      APSLogErrorAt();
      v33 = APSSignalErrorAt();
      if (v33)
      {
        goto LABEL_36;
      }

LABEL_70:
      v34 = v49 > 0;
      if (*(v7 + 244))
      {
        if (gLogCategory_APAudioEngineBuffered <= 10 && (gLogCategory_APAudioEngineBuffered != -1 || _LogCategory_Initialize()))
        {
          if (a1)
          {
            CMBaseObjectGetDerivedStorage();
          }

          OUTLINED_FUNCTION_45();
          OUTLINED_FUNCTION_105(&gLogCategory_APAudioEngineBuffered, "OSStatus bufferedAudioEngine_prepareOneMessageForSending(FigEndpointStreamAudioEngineRef, Boolean, Boolean *)", v40, "BAE [%{ptr}] %s[0x%04X] Send buffer is no longer full; count: %d\n");
        }

        *(v7 + 244) = 0;
      }

      goto LABEL_79;
    }

    v19 = v18;
    if (CMBufferQueueGetBufferCount(*(v18 + 1192)))
    {
      v20 = bufferedAudioEngine_enqueueMessagesFromBufferQueue(a1, 1, &v49);
      if (!v20)
      {
        *(v19 + 1164) = *&v10->value;
        *(v19 + 1180) = v10->epoch;
        goto LABEL_70;
      }

      v33 = v20;
LABEL_120:
      APSLogErrorAt();
      goto LABEL_36;
    }

    LODWORD(dataPointerOut) = 0;
    v35 = CMBaseObjectGetDerivedStorage();
    v55 = **&MEMORY[0x277CC08F0];
    v54 = v55;
    bufferedAudioEngine_getCurrentRemoteMediaTimeInternal(&dataPointerOut, &v55);
    if (dataPointerOut)
    {
      APSLogErrorAt();
    }

    else
    {
      bufferedAudioEngine_getStartUpDelay(a1, 0, &rhs);
      lhs = v55;
      CMTimeAdd(&v54, &lhs, &rhs);
      rhs = *(v35 + 756);
      OUTLINED_FUNCTION_54(v35 + 780);
      if (CMTimeCompare(&rhs, &lhs))
      {
        rhs = v54;
        lhs = *(v35 + 756);
        if ((CMTimeCompare(&rhs, &lhs) & 0x80000000) == 0 && (*(v35 + 1176) & 1) == 0)
        {
          if (gLogCategory_APAudioEngineBuffered <= 50 && (gLogCategory_APAudioEngineBuffered != -1 || _LogCategory_Initialize()))
          {
            if (a1)
            {
              CMBaseObjectGetDerivedStorage();
            }

            OUTLINED_FUNCTION_45();
            LogPrintF(&gLogCategory_APAudioEngineBuffered, "Boolean bufferedAudioEngine_shouldTransmitDataImmediately(FigEndpointStreamAudioEngineRef)", 33554482, "BAE [%{ptr}] %s[0x%04X] Should trigger immediate transmission of a packet with RTP time: %u");
          }

          v39 = bufferedAudioEngine_createAndEnqueueEmptyMessageForSending(a1, 0);
          if (v39)
          {
            v33 = v39;
            goto LABEL_120;
          }

          OUTLINED_FUNCTION_53((v19 + 1164));
          if (!*(v19 + 577))
          {
            v43 = *(v19 + 640);
            if (v43)
            {
              do
              {
                v44 = *(*(v19 + 640) + 24);
                APSEndpointStreamAudioHoseProtocolGetProtocolID();
                ProtocolVTable = CMBaseObjectGetProtocolVTable();
                if (ProtocolVTable && (v46 = *(ProtocolVTable + 16)) != 0)
                {
                  v47 = *(v46 + 40);
                  if (v47)
                  {
                    v33 = v47(v44);
                  }

                  else
                  {
                    v33 = 4294954514;
                  }
                }

                else
                {
                  v33 = 4294954508;
                }

                if (gLogCategory_APAudioEngineBuffered <= 20 && (gLogCategory_APAudioEngineBuffered != -1 || _LogCategory_Initialize()))
                {
                  if (a1)
                  {
                    CMBaseObjectGetDerivedStorage();
                  }

                  OUTLINED_FUNCTION_26_1();
                  LogPrintF(&gLogCategory_APAudioEngineBuffered, "OSStatus bufferedAudioEngine_enqueueFromSourceToRing(FigEndpointStreamAudioEngineRef, int *)", 33554452, "BAE [%{ptr}] %s[0x%04X] Notified hose [%{ptr}] (%s) that empty data packet is available\n", a1);
                }

                v43 = *v43;
              }

              while (v43);
LABEL_69:
              ++*(v19 + 988);
              if (v33)
              {
                goto LABEL_36;
              }

              goto LABEL_70;
            }
          }
        }
      }
    }

    v33 = 0;
    goto LABEL_69;
  }

  if (!a2)
  {
    v33 = 4294895201;
    ++*(v7 + 244);
    if (gLogCategory_APAudioEngineBuffered <= 10 && (gLogCategory_APAudioEngineBuffered != -1 || _LogCategory_Initialize()))
    {
      if (a1)
      {
        CMBaseObjectGetDerivedStorage();
      }

      OUTLINED_FUNCTION_45();
      OUTLINED_FUNCTION_105(&gLogCategory_APAudioEngineBuffered, "OSStatus bufferedAudioEngine_prepareOneMessageForSending(FigEndpointStreamAudioEngineRef, Boolean, Boolean *)", v38, "BAE [%{ptr}] %s[0x%04X] Send buffer is full; count: %d\n");
    }

    goto LABEL_37;
  }

  if (gLogCategory_APAudioEngineBuffered <= 20 && (gLogCategory_APAudioEngineBuffered != -1 || _LogCategory_Initialize()))
  {
    if (a1)
    {
      CMBaseObjectGetDerivedStorage();
    }

    OUTLINED_FUNCTION_17_3();
    LogPrintF(&gLogCategory_APAudioEngineBuffered, "OSStatus bufferedAudioEngine_prepareOneMessageForSending(FigEndpointStreamAudioEngineRef, Boolean, Boolean *)", 33554452, "BAE [%{ptr}] %s[0x%04X] Message ring is full, using side pocket instead\n");
  }

  v36 = CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APAudioEngineBuffered <= 90 && (gLogCategory_APAudioEngineBuffered != -1 || _LogCategory_Initialize()))
  {
    if (a1)
    {
      CMBaseObjectGetDerivedStorage();
    }

    OUTLINED_FUNCTION_40_0();
    LogPrintF(&gLogCategory_APAudioEngineBuffered, "OSStatus bufferedAudioEngine_enqueueFromSourceToSidePocket(FigEndpointStreamAudioEngineRef, int *)", 33554522, "BAE [%{ptr}] %s[0x%04X] ### Error allocating memory in the side pocket for audio data\n");
  }

  if (CMBufferQueueGetBufferCount(*(v36 + 1192)))
  {
    v37 = bufferedAudioEngine_enqueueMessagesFromBufferQueue(a1, 0, &v49);
    if (v37)
    {
      v33 = v37;
      APSLogErrorAt();
      goto LABEL_36;
    }

    v34 = v49 > 0;
  }

  else
  {
    v34 = 0;
  }

LABEL_79:
  if (v7[992])
  {
    v41 = v9[594];
    if (v41 <= 50 && (v41 != -1 || _LogCategory_Initialize()))
    {
      if (a1)
      {
        CMBaseObjectGetDerivedStorage();
      }

      OUTLINED_FUNCTION_45();
      LogPrintF(&gLogCategory_APAudioEngineBuffered, "OSStatus bufferedAudioEngine_prepareOneMessageForSending(FigEndpointStreamAudioEngineRef, Boolean, Boolean *)", 33554482, "BAE [%{ptr}] %s[0x%04X] Buffering reset: nextRemoteMediaTimestamp = %u\n");
    }

    v33 = 0;
    v7[992] = 0;
  }

  else
  {
    v33 = 0;
  }

LABEL_89:
  if (a3)
  {
    *a3 = v34;
  }

  return v33;
}

void bufferedAudioEngine_logProtocolDriverBufferFullness()
{
  OUTLINED_FUNCTION_20_2();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v23 = 0;
  v22 = 0;
  v21 = **&MEMORY[0x277CC0898];
  if (!*DerivedStorage)
  {
    v3 = DerivedStorage;
    CMBaseObject = APSAudioProtocolDriverSenderGetCMBaseObject();
    v5 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v5 && (v6 = *MEMORY[0x277CBECE8], !v5(CMBaseObject, *MEMORY[0x277CEA010], *MEMORY[0x277CBECE8], &v23)) && (v7 = APSAudioProtocolDriverSenderGetCMBaseObject(), (v8 = *(*(CMBaseObjectGetVTable() + 8) + 48)) != 0) && !v8(v7, *MEMORY[0x277CEA008], v6, &v22) && (v9 = *(CMBaseObjectGetVTable() + 16)) != 0 && (v10 = *(v9 + 112)) != 0 && !v10(v1, &v21))
    {
      if (gLogCategory_APAudioEngineBuffered <= 50 && (gLogCategory_APAudioEngineBuffered != -1 || OUTLINED_FUNCTION_4(&gLogCategory_APAudioEngineBuffered)))
      {
        if (v0)
        {
          v11 = (CMBaseObjectGetDerivedStorage() + 392);
        }

        else
        {
          v11 = "";
        }

        v12 = *(v3 + 265);
        UInt32 = FigCFNumberGetUInt32();
        UInt64 = FigCFNumberGetUInt64();
        time = v21;
        Seconds = CMTimeGetSeconds(&time);
        OUTLINED_FUNCTION_2_0();
        LogPrintF(v15, v16, v17, v18, v0, v11, v12, v1, UInt32, UInt64, *&Seconds);
      }
    }

    else
    {
      APSLogErrorAt();
    }
  }

  if (v23)
  {
    CFRelease(v23);
  }

  if (v22)
  {
    CFRelease(v22);
  }
}

unint64_t bufferedAudioEngine_logBufferFullness(uint64_t a1)
{
  result = CMBaseObjectGetDerivedStorage();
  v25 = 0;
  if (*result)
  {
    return result;
  }

  v3 = result;
  result = APMessageRingBufferedGetUsedCount(*(result + 616));
  v4 = result;
  v5 = *(v3 + 56);
  if (!v5)
  {
    v6 = 0.0;
    if (!result)
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  v6 = ((result / v5) * 100.0);
  if (result)
  {
LABEL_4:
    result = APMessageRingBufferedGetTotalByteCount(*(v3 + 616), &v25);
  }

LABEL_5:
  if (gLogCategory_APAudioEngineBuffered <= 50)
  {
    if (gLogCategory_APAudioEngineBuffered != -1 || (result = OUTLINED_FUNCTION_4(&gLogCategory_APAudioEngineBuffered), result))
    {
      if (a1)
      {
        v7 = (CMBaseObjectGetDerivedStorage() + 392);
      }

      else
      {
        v7 = "";
      }

      v8 = *(v3 + 530);
      v9 = *(v3 + 56);
      v10 = v25;
      OUTLINED_FUNCTION_104();
      bufferedAudioEngine_getCurrentRemoteMediaTimeInternal(v11, v12);
      lhs = *(v3 + 756);
      CMTimeSubtract(&time, &lhs, &rhs);
      Seconds = CMTimeGetSeconds(&time);
      v20 = *(v3 + 984);
      v21 = *(v3 + 988);
      v19 = *(v3 + 980);
      v18 = Seconds;
      OUTLINED_FUNCTION_2_0();
      return LogPrintF(v14, v15, v16, v17, a1, v7, v8, v4, v9, *&v6, v10, *&v18, v19, v20, v21);
    }
  }

  return result;
}

uint64_t bufferedAudioEngine_isSpeakerPlayingBySelf(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  result = APSIsAPMSpeaker();
  if (result)
  {
    return *(DerivedStorage + 648) == 1 && *(*(DerivedStorage + 640) + 32) != 0;
  }

  return result;
}

uint64_t bufferedAudioEngine_encodeExtensionAPAP(uint64_t (*a1)(uint64_t, CFTypeRef, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v95 = 0;
  v96 = 0;
  v93 = 0;
  v94 = 0;
  v91 = 0;
  v92 = 0;
  v89 = 0;
  blockBufferOut = 0;
  v87 = 0;
  cf = 0;
  v85 = 0;
  v86 = 0;
  v83 = 0;
  v84 = 0;
  v81 = 0;
  v82 = 0;
  v79 = 0;
  v80 = 0;
  v77 = 0;
  v78 = 0;
  v76 = 0;
  v75 = 0;
  v74 = 0;
  v73 = 0;
  if (!a3)
  {
    goto LABEL_59;
  }

  v11 = MEMORY[0x277CBECE8];
  if (*(a3 + 16))
  {
    BigUIntWithUInt64 = APSCMBlockBufferCreateBigUIntWithUInt64();
    if (BigUIntWithUInt64)
    {
      v71 = BigUIntWithUInt64;
      goto LABEL_128;
    }

    v13 = a1(1, v95, a2);
    if (v13)
    {
      v71 = v13;
      goto LABEL_128;
    }
  }

  if (*a3)
  {
    v14 = APSCMBlockBufferCreateBigUIntWithUInt64();
    if (v14)
    {
      v71 = v14;
      goto LABEL_128;
    }

    v15 = a1(2, v94, a2);
    if (v15)
    {
      v71 = v15;
      goto LABEL_128;
    }
  }

  if (*(a3 + 8))
  {
    v16 = APSCMBlockBufferCreateBigUIntWithUInt64();
    if (v16)
    {
      v71 = v16;
      goto LABEL_128;
    }

    v17 = a1(20, v93, a2);
    if (v17)
    {
      v71 = v17;
      goto LABEL_128;
    }
  }

  if (*(a3 + 24))
  {
    v18 = APSCMBlockBufferCreateBigUIntWithUInt64();
    if (v18)
    {
      v71 = v18;
      goto LABEL_128;
    }

    v19 = a1(3, v92, a2);
    if (v19)
    {
      v71 = v19;
      goto LABEL_128;
    }
  }

  if (*(a3 + 32))
  {
    v20 = APSCMBlockBufferCreateBigUIntWithUInt64();
    if (v20)
    {
      v71 = v20;
      goto LABEL_128;
    }

    v21 = a1(17, v91, a2);
    if (v21)
    {
      v71 = v21;
      goto LABEL_128;
    }
  }

  v22 = *(a3 + 40);
  if (v22)
  {
    Length = CFDataGetLength(v22);
    v24 = CMBlockBufferCreateWithMemoryBlock(*v11, 0, Length, *v11, 0, 0, Length, 1u, &blockBufferOut);
    if (v24)
    {
      v71 = v24;
      goto LABEL_128;
    }

    OUTLINED_FUNCTION_9_5();
    DataPointer = CMBlockBufferGetDataPointer(v25, v26, v27, v28, v29);
    if (DataPointer)
    {
      v71 = DataPointer;
      goto LABEL_128;
    }

    v31 = v96;
    BytePtr = CFDataGetBytePtr(*(a3 + 40));
    memcpy(v31, BytePtr, Length);
    v33 = a1(18, blockBufferOut, a2);
    if (v33)
    {
      v71 = v33;
      goto LABEL_128;
    }
  }

  v34 = MEMORY[0x277CBED00];
  if (*(a3 + 60))
  {
    v75 = bswap64(*(a3 + 48));
    v35 = OUTLINED_FUNCTION_130();
    v42 = OUTLINED_FUNCTION_61(v35, &v75, v36, v37, v38, v39, v40, v41, &v89);
    if (v42)
    {
      v71 = v42;
      goto LABEL_128;
    }

    v43 = a1(4, v89, a2);
    if (v43)
    {
      v71 = v43;
      goto LABEL_128;
    }
  }

  v76 = 0;
  v75 = 0;
  if (*(a3 + 84))
  {
    v75 = bswap64(*(a3 + 72));
    v44 = OUTLINED_FUNCTION_130();
    v51 = OUTLINED_FUNCTION_61(v44, &v75, v45, v46, v47, v48, v49, v50, &cf);
    if (v51)
    {
      v71 = v51;
      goto LABEL_128;
    }

    v52 = a1(5, cf, a2);
    if (v52)
    {
      v71 = v52;
      goto LABEL_128;
    }
  }

  if (*(a3 + 152))
  {
    v73 = bswap64(*(a3 + 140));
    v74 = bswap32(*(a3 + 148));
    v53 = OUTLINED_FUNCTION_61(*v11, &v73, a3, *v34, a5, a6, a7, a8, &v77);
    if (v53)
    {
      v71 = v53;
      goto LABEL_128;
    }

    v54 = a1(13, v77, a2);
    if (v54)
    {
      v71 = v54;
      goto LABEL_128;
    }
  }

  if (*(a3 + 96))
  {
    if (!APSAPAPExtensionConvertLoudnessInfoDictLoudnessParametersToBBuf())
    {
      v55 = a1(11, v87, a2);
      if (v55)
      {
        v71 = v55;
        goto LABEL_128;
      }
    }

    if (!APSAPAPExtensionConvertLoudnessInfoDictSoundCheckInfoToBBuf())
    {
      v56 = a1(7, v85, a2);
      if (v56)
      {
        v71 = v56;
        goto LABEL_128;
      }
    }

    if (!APSAPAPExtensionConvertLoudnessInfoDictMediaKindToBBuf())
    {
      v57 = a1(12, v78, a2);
      if (v57)
      {
        v71 = v57;
        goto LABEL_128;
      }
    }
  }

  if (*(a3 + 104))
  {
    v58 = APSCMBlockBufferCreateBigUIntWithUInt64();
    if (v58)
    {
      v71 = v58;
      goto LABEL_128;
    }

    v59 = a1(8, v84, a2);
    if (v59)
    {
      v71 = v59;
      goto LABEL_128;
    }
  }

  if (*(a3 + 108))
  {
    v60 = APSCMBlockBufferCreateBigUIntWithUInt64();
    if (v60)
    {
      v71 = v60;
      goto LABEL_128;
    }

    v61 = a1(14, v83, a2);
    if (v61)
    {
      v71 = v61;
      goto LABEL_128;
    }
  }

  if (*(a3 + 112))
  {
    v62 = APSCMBlockBufferCreateBigUIntWithUInt64();
    if (v62)
    {
      v71 = v62;
      goto LABEL_128;
    }

    v63 = a1(15, v82, a2);
    if (v63)
    {
      v71 = v63;
      goto LABEL_128;
    }
  }

  if (*(a3 + 116))
  {
    v64 = APSCMBlockBufferCreateBigUIntWithUInt64();
    if (v64)
    {
      v71 = v64;
      goto LABEL_128;
    }

    v65 = a1(16, v81, a2);
    if (v65)
    {
      v71 = v65;
      goto LABEL_128;
    }
  }

  if (*(a3 + 120))
  {
    v66 = APSCMBlockBufferCreateWithUUID();
    if (v66)
    {
      v71 = v66;
      goto LABEL_128;
    }

    v67 = a1(9, v80, a2);
    if (v67)
    {
      v71 = v67;
      goto LABEL_128;
    }
  }

  if (!*(a3 + 136))
  {
    goto LABEL_55;
  }

  v68 = APSCMBlockBufferCreateBigUIntWithUInt64();
  if (v68)
  {
    v71 = v68;
  }

  else
  {
    v69 = a1(10, v79, a2);
    if (!v69)
    {
LABEL_55:
      if (*(a3 + 168))
      {
        v70 = APSAPAPExtensionConvertSbufTracerDictToBBuf();
        if (v70)
        {
          v71 = v70;
        }

        else
        {
          v71 = a1(19, v86, a2);
          if (!v71)
          {
            goto LABEL_60;
          }
        }

        goto LABEL_128;
      }

LABEL_59:
      v71 = 0;
      goto LABEL_60;
    }

    v71 = v69;
  }

LABEL_128:
  APSLogErrorAt();
LABEL_60:
  if (v95)
  {
    CFRelease(v95);
  }

  if (v94)
  {
    CFRelease(v94);
  }

  if (v93)
  {
    CFRelease(v93);
  }

  if (v92)
  {
    CFRelease(v92);
  }

  if (blockBufferOut)
  {
    CFRelease(blockBufferOut);
  }

  if (v91)
  {
    CFRelease(v91);
  }

  if (v89)
  {
    CFRelease(v89);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (v87)
  {
    CFRelease(v87);
  }

  if (v86)
  {
    CFRelease(v86);
  }

  if (v85)
  {
    CFRelease(v85);
  }

  if (v84)
  {
    CFRelease(v84);
  }

  if (v80)
  {
    CFRelease(v80);
  }

  if (v79)
  {
    CFRelease(v79);
  }

  if (v77)
  {
    CFRelease(v77);
  }

  if (v78)
  {
    CFRelease(v78);
  }

  return v71;
}

void bufferedAudioEngine_setMagicCookieForAllHoses()
{
  OUTLINED_FUNCTION_139();
  OUTLINED_FUNCTION_27();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (v1)
  {
    v3 = DerivedStorage;
    if (*(DerivedStorage + 576))
    {
      v4 = (DerivedStorage + 640);
      while (1)
      {
        v4 = *v4;
        if (!v4)
        {
          break;
        }

        if (gLogCategory_APAudioEngineBuffered <= 50 && (gLogCategory_APAudioEngineBuffered != -1 || OUTLINED_FUNCTION_4(&gLogCategory_APAudioEngineBuffered)))
        {
          v12 = "";
          if (v0)
          {
            v12 = (CMBaseObjectGetDerivedStorage() + 392);
          }

          v13 = *(v3 + 530);
          v14 = v4[2];
          MagicCookieIDForMagicCookieData = bufferedAudioEngine_getMagicCookieIDForMagicCookieData(v1);
          OUTLINED_FUNCTION_2_0();
          LogPrintF(v15, v16, v17, "BAE [%{ptr}] %s[0x%04X] Set magic cookie [%{ptr}] for hose [%{ptr}] with magicCookieID: 0x%llx\n", v0, v12, v13, v1, v14, MagicCookieIDForMagicCookieData);
          if (v0)
          {
LABEL_9:
            CFRetain(v0);
          }
        }

        else if (v0)
        {
          goto LABEL_9;
        }

        v5 = v4[2];
        v6 = bufferedAudioEngine_getMagicCookieIDForMagicCookieData(v1);
        ProtocolID = APSAudioProtocolDriverHoseControlProtocolGetProtocolID();
        v8 = OUTLINED_FUNCTION_111(ProtocolID);
        if (!v8 || (v9 = *(v8 + 16)) == 0)
        {
          v18 = 4294954508;
          goto LABEL_22;
        }

        if (!*(v9 + 80))
        {
          v18 = 4294954514;
          bufferedAudioEngine_hoseSetMagicCookieCallbackCompletionHandler(v5, v6, -12782, v0);
          goto LABEL_22;
        }

        OUTLINED_FUNCTION_43_0();
        v11 = v10(v5, v6, v1);
        if (v11)
        {
          v18 = v11;
LABEL_22:
          if (gLogCategory_APAudioEngineBuffered <= 90 && (gLogCategory_APAudioEngineBuffered != -1 || _LogCategory_Initialize()))
          {
            if (v0)
            {
              v19 = (CMBaseObjectGetDerivedStorage() + 392);
            }

            else
            {
              v19 = "";
            }

            LogPrintF(&gLogCategory_APAudioEngineBuffered, "OSStatus bufferedAudioEngine_setMagicCookieForAllHoses(FigEndpointStreamAudioEngineRef, CFDataRef)", 33554522, "BAE [%{ptr}] %s[0x%04X] APSAudioProtocolDriverHoseControlSetMagicCookie failed for hose [%{ptr}] with err= %d \n ", v0, v19, *(v3 + 530), v4[2], v18);
          }

          break;
        }
      }
    }
  }

  else
  {
    APSLogErrorAt();
  }

  OUTLINED_FUNCTION_141();
}

void bufferedAudioEngine_recordPreparedAudioDataAndAudioFormatDuration(uint64_t a1, opaqueCMSampleBuffer *a2, uint64_t a3, uint64_t a4)
{
  CMBaseObjectGetDerivedStorage();
  v5 = **&MEMORY[0x277CC0898];
  CMSampleBufferGetOutputDuration(&v5, a2);
  APSAudioFormatDescriptionCopyDebugString();
  APSLogErrorAt();
}

uint64_t bufferedAudioEngine_adjustRemoteMediaTimeForDiscontinuity()
{
  OUTLINED_FUNCTION_20_2();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v251 = **&MEMORY[0x277CC0898];
  v250 = v251;
  v248 = *MEMORY[0x277CC08F0];
  v249 = *(MEMORY[0x277CC08F0] + 16);
  v246 = v248;
  v247 = v249;
  v244 = v248;
  v245 = v249;
  CMSampleBufferGetOutputDuration(&v250, v1);
  CMSampleBufferGetOutputPresentationTimeStamp(&v251, v1);
  OUTLINED_FUNCTION_12_7();
  v11 = OUTLINED_FUNCTION_103(v3, v4, v5, v6, v7, v8, v9, v10, v73, v82, v91, v100, v109, v118, v127, v136, v145, v154, v163, v172, v181, v191, v248, *(&v248 + 1), v250.value, *&v250.timescale, v250.epoch, v234, time.value);
  CMTimeAdd(v13, v11, v12);
  OUTLINED_FUNCTION_63();
  v22 = OUTLINED_FUNCTION_103(v14, v15, v16, v17, v18, v19, v20, v21, v74, v83, v92, v101, v110, v119, v128, v137, v146, v155, v164, v173, v182, v192, v200, v208, v200, v208, v249, v235, time.value);
  result = CMTimeCompare(v22, v23);
  if (result >= 1)
  {
    v25 = (DerivedStorage + 708);
    if (*(DerivedStorage + 720))
    {
      OUTLINED_FUNCTION_12_7();
      OUTLINED_FUNCTION_131();
      v34 = OUTLINED_FUNCTION_103(v26, v27, v28, v29, v30, v31, v32, v33, v75, v84, v93, v102, v111, v120, v129, v138, v147, v156, v165, v174, v183, v193, v201, v209, v216, v222, v228, v236, time.value);
      result = CMTimeCompare(v34, v35);
      if (result)
      {
        OUTLINED_FUNCTION_12_7();
        OUTLINED_FUNCTION_131();
        v44 = OUTLINED_FUNCTION_103(v36, v37, v38, v39, v40, v41, v42, v43, v76, v85, v94, v103, v112, v121, v130, v139, v148, v157, v166, v175, v184, v194, v202, v210, v217, v223, v229, v237, time.value);
        v47 = CMTimeSubtract(v46, v44, v45);
        v48 = (DerivedStorage + 756);
        time = *(DerivedStorage + 756);
        v56 = OUTLINED_FUNCTION_103(v47, v49, v50, v51, v52, v53, v54, v55, v77, v86, v95, v104, v113, v122, v131, v140, v149, v158, v167, v176, v185, v195, v203, v211, v246, *(&v246 + 1), v247, v238, time.value);
        result = CMTimeAdd(v58, v56, v57);
        if (gLogCategory_APAudioEngineBuffered <= 50)
        {
          if (gLogCategory_APAudioEngineBuffered != -1 || (result = OUTLINED_FUNCTION_4(&gLogCategory_APAudioEngineBuffered), result))
          {
            if (v0)
            {
              v59 = (CMBaseObjectGetDerivedStorage() + 392);
            }

            else
            {
              v59 = "";
            }

            v60 = *(DerivedStorage + 530);
            v61 = OUTLINED_FUNCTION_106(v25[2], v78, v87, v96, v105, v114, v123, v132, v141, v150, v159, v168, v177, v186, v196, v204, v212, v218, v224, v230, v239, *v25, v25[1], time.epoch);
            OUTLINED_FUNCTION_12_7();
            Seconds = CMTimeGetSeconds(&time);
            v63 = OUTLINED_FUNCTION_106(v247, v79, v88, v97, v106, v115, v124, v133, v142, v151, v160, v169, v178, v187, v197, v205, v213, v219, v225, v231, v240, v246, *(&v246 + 1), time.epoch);
            v64 = OUTLINED_FUNCTION_106(v48[2], v80, v89, v98, v107, v116, v125, v134, v143, v152, v161, v170, v179, v188, v198, v206, v214, v220, v226, v232, v241, *v48, v48[1], time.epoch);
            v65 = OUTLINED_FUNCTION_106(v245, v81, v90, v99, v108, v117, v126, v135, v144, v153, v162, v171, v180, v189, v199, v207, v215, v221, v227, v233, v242, v244, *(&v244 + 1), time.epoch);
            CMSampleBufferGetPresentationTimeStamp(&time, v1);
            v66 = CMTimeGetSeconds(&time);
            CMSampleBufferGetDuration(&time, v1);
            v67 = CMTimeGetSeconds(&time);
            OUTLINED_FUNCTION_12_7();
            v68 = CMTimeGetSeconds(&time);
            OUTLINED_FUNCTION_63();
            v190 = CMTimeGetSeconds(&time);
            OUTLINED_FUNCTION_2_0();
            result = LogPrintF(v69, v70, v71, v72, v0, v59, v60, *&v61, *&Seconds, *&v63, *&v64, *&v65, v1, *&v66, *&v67, *&v68, *&v190);
          }
        }

        *v48 = v244;
        v48[2] = v245;
      }
    }

    *v25 = v248;
    v25[2] = v249;
  }

  return result;
}

void bufferedAudioEngine_getBufferLevelTimeEstimateForHose(uint64_t a2@<X1>, CMTime *a3@<X8>)
{
  v17 = *MEMORY[0x277D85DE8];
  v12 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  *a3 = **&MEMORY[0x277CC08F0];
  bufferedAudioEngine_getCurrentRemoteMediaTimeInternal(&v12, &time1);
  value = time1.value;
  timescale = time1.timescale;
  if (v12)
  {
    APSLogErrorAt();
  }

  else
  {
    flags = time1.flags;
    if (time1.flags)
    {
      epoch = time1.epoch;
      if (*(DerivedStorage + 322) && *(a2 + 33))
      {
        bufferedAudioEngine_getLastDeliveredRemoteMediaTimeForHose(a2, &time1);
      }

      else
      {
        bufferedAudioEngine_getLastSentRemoteMediaTimeForHose(a2, &time1);
      }

      v13 = time1.value;
      v8 = time1.flags;
      v14 = time1.timescale;
      v9 = time1.epoch;
      if (time1.flags)
      {
        v10.epoch = time1.epoch;
        time1.value = value;
        time1.timescale = timescale;
        time1.flags = flags;
        time1.epoch = epoch;
        v10.value = v13;
        v10.timescale = v14;
        v10.flags = v8;
        if (CMTimeCompare(&time1, &v10) <= 0)
        {
          v10.epoch = epoch;
          time1.value = v13;
          time1.timescale = v14;
          time1.flags = v8;
          time1.epoch = v9;
          v10.value = value;
          v10.timescale = timescale;
          v10.flags = flags;
          CMTimeSubtract(a3, &time1, &v10);
        }
      }
    }
  }
}

uint64_t bufferedAudioEngine_isHoseInStereoPair(uint64_t a1)
{
  v6 = *MEMORY[0x277CBED10];
  if (!*(*(CMBaseObjectGetVTable() + 8) + 48) || (v1 = OUTLINED_FUNCTION_137(), v2(v1)) || !*(*(CMBaseObjectGetVTable() + 8) + 48) || (v3 = OUTLINED_FUNCTION_137(), v4(v3)))
  {
    APSLogErrorAt();
  }

  if (v6)
  {
    CFRelease(v6);
  }

  return 0;
}

uint64_t bufferedAudioEngine_handleSetRateToOneWithReceiverAnchor(const void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v3 = *(DerivedStorage + 640);
  v4 = *(DerivedStorage + 896);
  v23[0] = *MEMORY[0x277CEA038];
  *(v23 + 12) = *(MEMORY[0x277CEA038] + 12);
  if (*DerivedStorage || (v5 = DerivedStorage, *(DerivedStorage + 884) != 7) || (CMBaseObjectGetDerivedStorage(), !*(v5 + 640)))
  {
    v17 = 0;
    goto LABEL_27;
  }

  v6 = 804;
  if ((*(v5 + 816) & 1) == 0)
  {
    v6 = 780;
  }

  v7 = 812;
  if ((*(v5 + 816) & 1) == 0)
  {
    v7 = 788;
  }

  v8 = *(v5 + v6);
  v24 = *(v5 + v7);
  if (!*(v5 + 576))
  {
    SampleRateFromTransportAudioFormat = bufferedAudioEngine_getSampleRateFromTransportAudioFormat(a1);
    *v22 = v8;
    *&v22[8] = v24;
    CMTimeConvertScale(buf, v22, SampleRateFromTransportAudioFormat, kCMTimeRoundingMethod_RoundHalfAwayFromZero);
    v8 = *buf;
    v24 = *&buf[8];
    APSAudioTransportTimeMakeWithRTPTime();
    if (!a1)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  *buf = v8;
  *&buf[8] = v24;
  APSAudioTransportTimeMakeWithMediaTime();
  if (a1)
  {
LABEL_10:
    CFRetain(a1);
  }

LABEL_11:
  v9 = LogCategoryCopyOSLogHandle();
  if (v9)
  {
    v10 = v9;
  }

  else
  {
    v10 = MEMORY[0x277D86220];
  }

  v11 = CUObfuscatedPtr();
  if (v11)
  {
    v12 = v11;
    if (os_signpost_enabled(v10))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_221FFA000, v10, OS_SIGNPOST_INTERVAL_BEGIN, v12, "AIRPLAY_SIGNPOST_AUDIOENGINE_HOSE_SETRATE_1", &unk_2222A918B, buf, 2u);
    }
  }

  v13 = *(*(v5 + 640) + 16);
  *v22 = v23[0];
  *&v22[12] = *(v23 + 12);
  APSAudioProtocolDriverHoseControlProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (ProtocolVTable && (v15 = *(ProtocolVTable + 16)) != 0)
  {
    v16 = *(v15 + 56);
    if (v16)
    {
      *buf = *v22;
      *&buf[12] = *&v22[12];
      v17 = v16(v13, v4, buf, bufferedAudioEngine_hoseSetRateCallbackCompletionHandler, a1);
    }

    else
    {
      v17 = 4294954514;
      bufferedAudioEngine_hoseSetRateCallbackCompletionHandler(v13, MEMORY[0x277CEA038], MEMORY[0x277CEA280], 0xFFFFCE12, a1);
    }
  }

  else
  {
    v17 = 4294954508;
  }

  *(*(v5 + 640) + 148) = 3;
  *buf = v8;
  *&buf[8] = v24;
  APSAudioHoseMetricCollectorSetPlaybackStateForHose();
  v18 = *(v5 + 944);
  v19 = *(v3 + 16);
  *(v5 + 944) = v19;
  if (v19)
  {
    CFRetain(v19);
  }

  if (v18)
  {
    CFRelease(v18);
  }

LABEL_27:
  CMBaseObjectGetDerivedStorage();
  return v17;
}

uint64_t bufferedAudioEngine_handleSetRateToOne(const void *a1)
{
  v292 = *MEMORY[0x277D85DE8];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v3 = MEMORY[0x277CC0898];
  if (*DerivedStorage || *(DerivedStorage + 884) != 6)
  {
    v66 = 0;
    goto LABEL_95;
  }

  v262 = DerivedStorage;
  CMBaseObjectGetDerivedStorage();
  v4 = CMBaseObjectGetDerivedStorage();
  *&v291.value = *v3;
  v5 = *(v3 + 16);
  v291.epoch = v5;
  *&v290.value = *&v291.value;
  v290.epoch = v5;
  v288 = *(v3 + 12);
  v289 = *(v3 + 20);
  v265 = *MEMORY[0x277CC08F0];
  v281 = *MEMORY[0x277CC08F0];
  v6 = *(MEMORY[0x277CC08F0] + 16);
  v282 = v6;
  *v280 = *MEMORY[0x277CEA038];
  *&v280[12] = *(MEMORY[0x277CEA038] + 12);
  *&v278.value = *&v291.value;
  v278.epoch = v5;
  v271 = *&v291.value;
  *&v276.value = *&v291.value;
  v276.epoch = v5;
  if (*(v4 + 884) != 6)
  {
    goto LABEL_82;
  }

  v7 = v4;
  CMBaseObjectGetDerivedStorage();
  if (*(v7 + 916))
  {
    v291 = *(v7 + 904);
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

      v12 = *(v7 + 530);
      OUTLINED_FUNCTION_66();
      Seconds = CMTimeGetSeconds(time);
      HostTimeClock = CMClockGetHostTimeClock();
      CMClockGetTime(time, HostTimeClock);
      v208 = *&Seconds;
      v211 = CMTimeGetSeconds(time);
      v202 = v10;
      v205 = v12;
      v199 = a1;
      goto LABEL_19;
    }
  }

  else
  {
    v8 = CMClockGetHostTimeClock();
    CMClockGetTime(&v291, v8);
    if (gLogCategory_APAudioEngineBuffered <= 50 && (gLogCategory_APAudioEngineBuffered != -1 || OUTLINED_FUNCTION_4(&gLogCategory_APAudioEngineBuffered)))
    {
      if (a1)
      {
        v9 = (CMBaseObjectGetDerivedStorage() + 392);
      }

      else
      {
        v9 = "";
      }

      v11 = *(v7 + 530);
      OUTLINED_FUNCTION_66();
      v208 = CMTimeGetSeconds(time);
      v202 = v9;
      v205 = v11;
      v199 = a1;
LABEL_19:
      OUTLINED_FUNCTION_2_0();
      LogPrintF(v15, v16, v17, v18);
    }
  }

  v19 = (v7 + 780);
  v20 = *(v7 + 916);
  if (*(v7 + 816))
  {
    if (v20)
    {
      v281 = v265;
      v282 = v6;
    }

    else
    {
      bufferedAudioEngine_getStartUpDelay(a1, 1, &v281);
    }

    MaxFirstAvailableTransportTimestampForStartUp = bufferedAudioEngine_getMaxFirstAvailableTransportTimestampForStartUp();
    if (MaxFirstAvailableTransportTimestampForStartUp)
    {
      v66 = MaxFirstAvailableTransportTimestampForStartUp;
      IsValid = APSLogErrorAt();
      goto LABEL_93;
    }

    OUTLINED_FUNCTION_83(MaxFirstAvailableTransportTimestampForStartUp, v28, v29, v30, v31, v32, v33, v34, v199, v202, v205, v208, v211, v214, v217, v220, v223, v226, v229, v232, v235, v239, v243, v247, v251, v254, v258, v262, v265, *(&v265 + 1), v271, *(&v271 + 1), v276.value, *&v276.timescale, v276.epoch, v277, v278.value, *&v278.timescale, v278.epoch, v279, *v280, *&v280[16], *&v280[24]);
    v35 = APSAudioTransportTimeCopyDebugDesc();
    OUTLINED_FUNCTION_83(v35, v36, v37, v38, v39, v40, v41, v42, v200, v203, v206, v209, v212, v215, v218, v221, v224, v227, v230, v233, v236, v240, v244, v248, v252, v255, v259, v263, v266, v269, v272, v275, v276.value, *&v276.timescale, v276.epoch, v277, v278.value, *&v278.timescale, v278.epoch, v279, *v280, *&v280[16], *&v280[24]);
    IsValid = APSAudioTransportTimeIsValid();
    if (IsValid)
    {
      if (*v280 == 2)
      {
        *&v265 = v35;
        v55 = *(v7 + 804);
        rhs.epoch = *(v7 + 820);
        *&rhs.value = v55;
        *&lhs.value = *&v280[4];
        OUTLINED_FUNCTION_23_3();
        CMTimeMaximum(v58, v56, v57);
      }

      else
      {
        if (*v280 != 1)
        {
          v65 = 0;
          v66 = 4294960587;
          if (!v35)
          {
            goto LABEL_78;
          }

          goto LABEL_77;
        }

        *&v265 = v35;
        CMTimeMake(&rhs, (*&v280[4] - *(v7 + 804)) & ~((*&v280[4] - *(v7 + 804)) >> 31), *(v7 + 812));
        v54 = *(v7 + 804);
        lhs.epoch = *(v7 + 820);
        *&lhs.value = v54;
        CMTimeAdd(time, &lhs, &rhs);
      }

      v51 = *time;
      v288 = *&time[12];
      v52 = *&time[8];
      v53 = *&time[20];
    }

    else
    {
      *&v265 = v35;
      v51 = *(v7 + 804);
      v52 = *(v7 + 812);
      v288 = *(v7 + 816);
      v53 = *(v7 + 824);
    }

    v289 = v53;
    v59 = *(v7 + 812);
    rhs.value = v51;
    *&rhs.flags = v288;
    rhs.timescale = v52;
    HIDWORD(rhs.epoch) = v53;
    v60 = 1;
    CMTimeConvertScale(time, &rhs, v59, kCMTimeRoundingMethod_RoundHalfAwayFromZero);
    v21 = *time;
    v288 = *&time[12];
    v22 = *&time[8];
    v289 = *&time[20];
    OUTLINED_FUNCTION_65();
    *&lhs.value = v281;
    OUTLINED_FUNCTION_23_3();
    CMTimeAdd(v63, v61, v62);
    OUTLINED_FUNCTION_113();
    if (gLogCategory_APAudioEngineBuffered <= 50 && (gLogCategory_APAudioEngineBuffered != -1 || OUTLINED_FUNCTION_4(&gLogCategory_APAudioEngineBuffered)))
    {
      if (a1)
      {
        v64 = (CMBaseObjectGetDerivedStorage() + 392);
      }

      else
      {
        v64 = "";
      }

      v257 = *(v7 + 530);
      OUTLINED_FUNCTION_22_2();
      v151 = CMTimeGetSeconds(time);
      v152 = OUTLINED_FUNCTION_51(*(v7 + 820), *(v7 + 804));
      v153 = *(v7 + 804);
      v154 = *(v7 + 812);
      v229 = OUTLINED_FUNCTION_49(v155, v156, v157, v158, v159, v160, v161, v162, v199, v202, v205, v208, v211, v214, v217, v220, v223, v226, v229, v232, v235, v239, v243, v247, v251, v257, v258, v262, v265, *(&v265 + 1), v271, *(&v271 + 1), v276.value, *&v276.timescale, v276.epoch, v277, v278.value, *&v278.timescale, v278.epoch, v279, *v280, *&v280[8], *&v280[16], *&v280[24], v281, v282);
      v223 = v154;
      v226 = v265;
      v220 = v153;
      v217 = *&v152;
      v211 = v21;
      v214 = v22;
      v202 = v64;
      v205 = v254;
      v208 = *&v151;
      v199 = a1;
      OUTLINED_FUNCTION_2_0();
      LogPrintF(v163, v164, v165, v166);
      v60 = 1;
    }
  }

  else
  {
    if (v20)
    {
      v281 = v265;
      v282 = v6;
    }

    else
    {
      bufferedAudioEngine_getStartUpDelay(a1, 0, &v281);
    }

    v21 = v19->n128_u64[0];
    v22 = *(v7 + 788);
    v288 = *(v7 + 792);
    v289 = *(v7 + 800);
    OUTLINED_FUNCTION_65();
    *&lhs.value = v281;
    OUTLINED_FUNCTION_23_3();
    CMTimeAdd(v25, v23, v24);
    OUTLINED_FUNCTION_113();
    if (gLogCategory_APAudioEngineBuffered <= 50 && (gLogCategory_APAudioEngineBuffered != -1 || OUTLINED_FUNCTION_4(&gLogCategory_APAudioEngineBuffered)))
    {
      if (a1)
      {
        v26 = (CMBaseObjectGetDerivedStorage() + 392);
      }

      else
      {
        v26 = "";
      }

      *&v265 = *(v7 + 530);
      OUTLINED_FUNCTION_22_2();
      v67 = CMTimeGetSeconds(time);
      v68 = OUTLINED_FUNCTION_51(*(v7 + 796), *v19);
      v69 = v19->n128_u64[0];
      v70 = *(v7 + 788);
      v226 = OUTLINED_FUNCTION_49(v71, v72, v73, v74, v75, v76, v77, v78, v199, v202, v205, v208, v211, v214, v217, v220, v223, v226, v229, v232, v235, v239, v243, v247, v251, v254, v258, v262, v265, *(&v265 + 1), v271, *(&v271 + 1), v276.value, *&v276.timescale, v276.epoch, v277, v278.value, *&v278.timescale, v278.epoch, v279, *v280, *&v280[8], *&v280[16], *&v280[24], v281, v282);
      v220 = v69;
      v223 = v70;
      v217 = *&v68;
      v211 = v21;
      v214 = v22;
      v202 = v26;
      v205 = v265;
      v208 = *&v67;
      v199 = a1;
      OUTLINED_FUNCTION_2_0();
      LogPrintF(v79, v80, v81, v82);
    }

    *&v265 = 0;
    v60 = 0;
  }

  v83 = CFGetAllocator(a1);
  v84 = CMTimebaseCreateWithSourceClock(v83, *(v7 + 480), (v7 + 872));
  if (v84)
  {
    v66 = v84;
LABEL_89:
    IsValid = APSLogErrorAt();
    v65 = 0;
    goto LABEL_76;
  }

  APSTimedInfoManagerResume();
  v85 = mach_absolute_time();
  OUTLINED_FUNCTION_49(v85, v86, v87, v88, v89, v90, v91, v92, v199, v202, v205, v208, v211, v214, v217, v220, v223, v226, v229, v232, v235, v239, v243, v247, v251, v254, v258, v262, v265, *(&v265 + 1), v271, *(&v271 + 1), v276.value, *&v276.timescale, v276.epoch, v277, v278.value, *&v278.timescale, v278.epoch, v279, *v280, *&v280[8], *&v280[16], *&v280[24], v281, v282);
  MillisecondsToUpTicks();
  bufferedAudioEngine_recordStartTimebaseTimeStampForRTC();
  CMClockGetHostTimeClock();
  OUTLINED_FUNCTION_66();
  CMSyncConvertTime(&v290, time, v93, v94);
  OUTLINED_FUNCTION_22_2();
  rhs = v290;
  v96 = CMTimebaseSetRateAndAnchorTime(v95, 1.0, time, &rhs);
  if (v96)
  {
    v66 = v96;
    goto LABEL_89;
  }

  if (gLogCategory_APAudioEngineBuffered <= 50 && (gLogCategory_APAudioEngineBuffered != -1 || OUTLINED_FUNCTION_4(&gLogCategory_APAudioEngineBuffered)))
  {
    if (a1)
    {
      v97 = (CMBaseObjectGetDerivedStorage() + 392);
    }

    else
    {
      v97 = "";
    }

    v98 = *(v7 + 530);
    v99 = *(v7 + 1032);
    *time = v21;
    *&time[12] = v288;
    v214 = v21;
    v217 = v22;
    v211 = OUTLINED_FUNCTION_75(v289);
    v205 = v98;
    v208 = v99;
    v199 = a1;
    v202 = v97;
    OUTLINED_FUNCTION_2_0();
    LogPrintF(v100, v101, v102, v103);
  }

  v104 = *MEMORY[0x277CBECE8];
  values = *(v7 + 1032);
  keys = @"ContentType";
  v65 = CFDictionaryCreate(v104, &keys, &values, 1, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (v65)
  {
    *time = v21;
    *&time[12] = v288;
    *&time[8] = v22;
    *&time[20] = v289;
    APSTimedInfoManagerAddTimedInfo();
    bufferedAudioEngine_getPlaybackStartupTime(&v276);
    v105 = CMClockGetHostTimeClock();
    CMClockGetTime(time, v105);
    OUTLINED_FUNCTION_65();
    v106 = CMTimeSubtract(&v278, &rhs, time);
    if (gLogCategory_APAudioEngineBuffered <= 50)
    {
      if (gLogCategory_APAudioEngineBuffered != -1 || (v106 = OUTLINED_FUNCTION_4(&gLogCategory_APAudioEngineBuffered), v106))
      {
        if (a1)
        {
          v106 = CMBaseObjectGetDerivedStorage();
          v114 = (v106 + 392);
        }

        else
        {
          v114 = "";
        }

        v115 = *(v7 + 530);
        v116 = OUTLINED_FUNCTION_62(v106, v107, v108, v109, v110, v111, v112, v113, v199, v202, v205, v208, v211, v214, v217, v220, v223, v226, v229, v232, v235, v239, v243, v247, v251, v254, v258, v262, v265, *(&v265 + 1), v271, *(&v271 + 1), v276.value, *&v276.timescale, v276.epoch, v277, *&v278.value, v278.epoch);
        *time = *&v276.value;
        v208 = *&v116;
        v211 = OUTLINED_FUNCTION_81(v276.epoch);
        v202 = v114;
        v205 = v115;
        v199 = a1;
        OUTLINED_FUNCTION_2_0();
        v106 = LogPrintF(v117, v118, v119, v120);
      }
    }

    OUTLINED_FUNCTION_62(v106, v107, v108, v109, v110, v111, v112, v113, v199, v202, v205, v208, v211, v214, v217, v220, v223, v226, v229, v232, v235, v239, v243, v247, v251, v254, v258, v262, v265, *(&v265 + 1), v271, *(&v271 + 1), v276.value, *&v276.timescale, v276.epoch, v277, *&v278.value, v278.epoch);
    OUTLINED_FUNCTION_6_7(722863556);
    v121 = LogCategoryCopyOSLogHandle();
    v122 = v121;
    if (v121)
    {
      v123 = v121;
    }

    else
    {
      v123 = MEMORY[0x277D86220];
    }

    v124 = CUObfuscatedPtr();
    if (v124)
    {
      v125 = v124;
      v126 = os_signpost_enabled(v123);
      if (v126)
      {
        v134 = *(v7 + 530);
        v135 = OUTLINED_FUNCTION_62(v126, v127, v128, v129, v130, v131, v132, v133, v201, v204, v207, v210, v213, v216, v219, v222, v225, v228, v231, v234, v237, v241, v245, v249, v253, v256, v260, v264, v267, v270, v273, *(&v273 + 1), v276.value, *&v276.timescale, v276.epoch, v277, *&v278.value, v278.epoch);
        *time = *&v276.value;
        v136 = OUTLINED_FUNCTION_81(v276.epoch);
        *time = 67109632;
        *&time[4] = v134;
        *&time[8] = 2048;
        *&time[10] = v135;
        *&time[18] = 2048;
        *&time[20] = v136;
        _os_signpost_emit_with_name_impl(&dword_221FFA000, v123, OS_SIGNPOST_EVENT, v125, "AIRPLAY_SIGNPOST_AUDIOENGINE_FIRST_AUDIBLE_TIME_RELATIVE_TO_NOW_MS", "[0x%04X] RemoteMediaTimebase started. First audible time relative to now: %1.6f (startup time: %1.3f)\n", time, 0x1Cu);
      }
    }

    if (v122)
    {
      os_release(v122);
    }

    v137 = CMBaseObjectGetDerivedStorage();
    v138 = CMClockGetHostTimeClock();
    CMClockGetTime(time, v138);
    *(v137 + 1732) = *time;
    *(v137 + 1748) = *&time[16];
    *(v137 + 1756) = *(v137 + 648);
    v139 = CMBaseObjectGetDerivedStorage();
    *time = *(v139 + 756);
    *&time[16] = *(v139 + 772);
    rhs = *(v139 + 780);
    CMTimeSubtract(&lhs, time, &rhs);
    v140 = CMTimeGetSeconds(&lhs);
    *(v137 + 1760) = v140;
    bufferedAudioEngine_getStreamInfoForStartup(a1, (v137 + 1764), (v137 + 1768), (v137 + 1772), (v137 + 1776), (v137 + 1782), (v137 + 1778), (v137 + 1780));
    *(v137 + 1783) = v60;
    OUTLINED_FUNCTION_9_5();
    kdebug_trace();
    bufferedAudioEngine_logStartupTime(a1);
    *(v7 + 888) = *(v7 + 896);
    v149 = OUTLINED_FUNCTION_86(v141, v142, v143, v144, v145, v146, v147, v148, v201, v204, v207, v210, v213, v216, v219, v222, v225, v228, v231, v234, v237, v241, v245, v249, v253, v256, v260, v264, v267, v270, v273);
    IsValid = bufferedAudioEngine_updatePlaybackState(v149, 8);
    v66 = 0;
  }

  else
  {
    IsValid = APSLogErrorAt();
    v66 = 4294951816;
  }

LABEL_76:
  v3 = MEMORY[0x277CC0898];
  v35 = v265;
  if (v265)
  {
LABEL_77:
    CFRelease(v35);
  }

LABEL_78:
  if (!v65)
  {
    if (v66)
    {
      goto LABEL_93;
    }

LABEL_82:
    v66 = bufferedAudioEngine_handleSetRateToOne_sendAnchorToAllHoses(a1);
    if (!v66)
    {
      OUTLINED_FUNCTION_53((v262 + 1116));
      *(v150 + 1080) = v271;
      *(v150 + 1096) = v5;
      goto LABEL_95;
    }

    goto LABEL_94;
  }

  CFRelease(v65);
  if (!v66)
  {
    goto LABEL_82;
  }

LABEL_93:
  v167 = OUTLINED_FUNCTION_86(IsValid, v44, v45, v46, v47, v48, v49, v50, v199, v202, v205, v208, v211, v214, v217, v220, v223, v226, v229, v232, v235, v239, v243, v247, v251, v254, v258, v262, v265, *(&v265 + 1), v271);
  bufferedAudioEngine_updatePlaybackState(v167, 3);
LABEL_94:
  APSLogErrorAt();
LABEL_95:
  CMBaseObjectGetDerivedStorage();
  v168 = CMBaseObjectGetDerivedStorage();
  *v280 = *v3;
  *&v280[16] = *(v3 + 16);
  v291.value = *(v3 + 12);
  v291.timescale = *(v3 + 20);
  v290.value = v291.value;
  v290.timescale = v291.timescale;
  if (*(v168 + 952))
  {
    v169 = v168;
    if (v66)
    {
      v170 = *v3;
      v171 = *(v3 + 8);
      v172 = *v3;
      v173 = v171;
    }

    else
    {
      CMTimebaseGetTimeClampedAboveAnchorTime();
      v170 = *time;
      v291.value = *&time[12];
      v171 = *&time[8];
      v291.timescale = *&time[20];
      v174 = *(v169 + 872);
      CMClockGetHostTimeClock();
      OUTLINED_FUNCTION_85();
      CMSyncConvertTime(v280, time, v174, v175);
      rhs.value = v170;
      *&rhs.flags = v291.value;
      rhs.timescale = v171;
      HIDWORD(rhs.epoch) = v291.timescale;
      *&lhs.value = *(v169 + 780);
      OUTLINED_FUNCTION_23_3();
      CMTimeSubtract(v178, v176, v177);
      v172 = *time;
      v290.value = *&time[12];
      v173 = *&time[8];
      v290.timescale = *&time[20];
    }

    if (gLogCategory_APAudioEngineBuffered <= 50 && (gLogCategory_APAudioEngineBuffered != -1 || OUTLINED_FUNCTION_4(&gLogCategory_APAudioEngineBuffered)))
    {
      v179 = (v169 + 780);
      v261 = a1;
      if (a1)
      {
        v180 = (CMBaseObjectGetDerivedStorage() + 392);
      }

      else
      {
        v180 = "";
      }

      v274 = v180;
      v268 = *(v169 + 530);
      v181 = *(v169 + 888);
      OUTLINED_FUNCTION_134();
      v183 = OUTLINED_FUNCTION_75(v182);
      OUTLINED_FUNCTION_85();
      v184 = CMTimeGetSeconds(time);
      v185 = OUTLINED_FUNCTION_51(*(v169 + 796), *v179);
      v186 = v179->n128_u64[0];
      v187 = *(v169 + 788);
      v188 = OUTLINED_FUNCTION_51(*(v169 + 820), *(v169 + 804));
      v246 = *(v169 + 804);
      v250 = *(v169 + 812);
      v242 = v188;
      v238 = v187;
      a1 = v261;
      OUTLINED_FUNCTION_2_0();
      LogPrintF(v189, v190, v191, v192, v261, v274, v268, v181, *&v183, v172, v173, *&v184, v170, v171, *&v185, v186, v238, *&v242, v246, v250);
    }

    OUTLINED_FUNCTION_99();
    OUTLINED_FUNCTION_134();
    *&time[8] = v173;
    *&time[20] = v193;
    rhs = *v280;
    bufferedAudioEngine_callSetRateAndAnchorTimeClientCompletionCallback(a1, v66, time, &rhs.value, v194, v195, v196, v197);
    *(v169 + 952) = 0;
    *(v169 + 960) = 0;
  }

  return v66;
}