uint64_t __audioStream_stopSilentAudio_block_invoke(uint64_t a1)
{
  result = *(*(a1 + 32) + 488);
  if (result)
  {
    result = AudioQueueDispose(result, 1u);
    *(*(a1 + 32) + 488) = 0;
    if (gLogCategory_APEndpointStreamAudio <= 50)
    {
      if (gLogCategory_APEndpointStreamAudio != -1)
      {
        return __audioStream_stopSilentAudio_block_invoke_cold_1(a1, v3, v4);
      }

      result = _LogCategory_Initialize();
      if (result)
      {
        return __audioStream_stopSilentAudio_block_invoke_cold_1(a1, v3, v4);
      }
    }
  }

  return result;
}

uint64_t audioStream_createSupportedPCMFormatArray_0(uint64_t a1, uint64_t a2, CFTypeRef *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  cf = 0;
  APEndpointDescriptionGetCMBaseObject();
  v6 = v5;
  v7 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v7)
  {
    v8 = 4294954514;
    v12 = -12782;
    goto LABEL_13;
  }

  v8 = v7(v6, @"SupportedAudioFormats", *MEMORY[0x277CBECE8], &cf);
  v12 = v8;
  if (v8)
  {
LABEL_13:
    audioStream_createSupportedPCMFormatArray_cold_4(v8);
    goto LABEL_14;
  }

  if (CFEqual(*(DerivedStorage + 40), *MEMORY[0x277CC1960]))
  {
    CFDictionaryGetInt64();
    if (v12)
    {
      audioStream_createSupportedPCMFormatArray_cold_1_0(v12);
      goto LABEL_14;
    }
  }

  else
  {
    if (!CFEqual(*(DerivedStorage + 40), *MEMORY[0x277CC1970]))
    {
      v12 = APSSignalErrorAt();
      goto LABEL_14;
    }

    CFDictionaryGetInt64();
    if (v12)
    {
      audioStream_createSupportedPCMFormatArray_cold_2(v12);
      goto LABEL_14;
    }
  }

  DescriptionArray = APAudioFormatCreateDescriptionArray();
  v12 = DescriptionArray;
  if (DescriptionArray)
  {
    audioStream_createSupportedPCMFormatArray_cold_3(DescriptionArray);
  }

  else if (a3)
  {
    *a3 = 0;
  }

LABEL_14:
  if (cf)
  {
    CFRelease(cf);
  }

  return v12;
}

__CFDictionary *audioStream_copyShowInfo_0(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  v3 = Mutable;
  v4 = MEMORY[0x277CBED28];
  if (!*(DerivedStorage + 185))
  {
    v4 = MEMORY[0x277CBED10];
  }

  CFDictionarySetValue(Mutable, @"Resumed", *v4);
  CFDictionarySetValue(v3, @"Type", *(DerivedStorage + 40));
  CFDictionarySetValue(v3, @"Name", *(DerivedStorage + 24));
  return v3;
}

double audioStream_setEchoCancellationIsEnabled_0(const void *a1, unsigned __int8 a2)
{
  CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  if (a1)
  {
    CFRetain(a1);
  }

  APSDispatchAsyncFHelper();
  FigSimpleMutexUnlock();
  return result;
}

uint64_t audioStream_setHTFTIsActive(const void *a1, const void *a2)
{
  CMBaseObjectGetDerivedStorage();
  if (a1)
  {
    CFRetain(a1);
  }

  if (a2)
  {
    CFRetain(a2);
  }

  return APSDispatchAsyncFHelper();
}

void audioStream_setEchoCancellationIsEnabledInternal_0(CFTypeRef *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APEndpointStreamAudio <= 50 && (gLogCategory_APEndpointStreamAudio != -1 || _LogCategory_Initialize()))
  {
    audioStream_setEchoCancellationIsEnabledInternal_cold_1_0(a1, v2, v3);
  }

  if (*DerivedStorage)
  {
    audioStream_setEchoCancellationIsEnabledInternal_cold_2_0();
    v10 = 0;
    v6 = 0;
    goto LABEL_16;
  }

  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  v6 = Mutable;
  if (!Mutable)
  {
    audioStream_setEchoCancellationIsEnabledInternal_cold_6();
    goto LABEL_15;
  }

  v7 = MEMORY[0x277CBED28];
  if (!*(a1 + 8))
  {
    v7 = MEMORY[0x277CBED10];
  }

  CFDictionarySetValue(Mutable, @"MuteForStream", *v7);
  if (!*(DerivedStorage + 129))
  {
    v12 = *(DerivedStorage + 56);
    v13 = *(*(CMBaseObjectGetVTable() + 16) + 88);
    if (v13)
    {
      v14 = v13(v12, v6);
      if (!v14)
      {
LABEL_15:
        v10 = 0;
        goto LABEL_16;
      }
    }

    else
    {
      v14 = 4294954514;
    }

    audioStream_setEchoCancellationIsEnabledInternal_cold_5_0(v14);
    goto LABEL_15;
  }

  v8 = *(DerivedStorage + 176);
  if (!v8 || (v9 = CFRetain(v8)) == 0)
  {
    audioStream_setEchoCancellationIsEnabledInternal_cold_4_0();
    goto LABEL_15;
  }

  v10 = v9;
  v11 = APTransportStreamSendPlistMessageCreatingPlistReply();
  if (v11)
  {
    audioStream_setEchoCancellationIsEnabledInternal_cold_3_0(v11);
  }

LABEL_16:
  if (*a1)
  {
    CFRelease(*a1);
  }

  if (v6)
  {
    CFRelease(v6);
  }

  if (v10)
  {

    CFRelease(v10);
  }
}

void audioStream_setHTFTIsActiveInternal(void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*DerivedStorage)
  {
    audioStream_setHTFTIsActiveInternal_cold_1();
    goto LABEL_19;
  }

  v3 = DerivedStorage;
  Value = CFBooleanGetValue(a1[1]);
  v3[296] = Value;
  if (gLogCategory_APEndpointStreamAudio <= 50)
  {
    if (gLogCategory_APEndpointStreamAudio == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_8;
      }

      Value = v3[296];
    }

    v5 = 84;
    if (!Value)
    {
      v5 = 70;
    }

    LogPrintF(&gLogCategory_APEndpointStreamAudio, "void audioStream_setHTFTIsActiveInternal(void *)", 33554482, "[%{ptr}] HTFacetimeMetricInternal: enabled %c\n", *a1, v5);
  }

LABEL_8:
  if (!v3[129])
  {
LABEL_19:
    v11 = 0;
    v7 = 0;
    goto LABEL_20;
  }

  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 1, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  v7 = Mutable;
  if (!Mutable)
  {
    audioStream_setHTFTIsActiveInternal_cold_4();
    goto LABEL_17;
  }

  v8 = MEMORY[0x277CBED28];
  if (!a1[1])
  {
    v8 = MEMORY[0x277CBED10];
  }

  CFDictionarySetValue(Mutable, @"value", *v8);
  v9 = *(v3 + 22);
  if (!v9 || (v10 = CFRetain(v9)) == 0)
  {
    audioStream_setHTFTIsActiveInternal_cold_3();
LABEL_17:
    v11 = 0;
    goto LABEL_20;
  }

  v11 = v10;
  v12 = APTransportStreamSendPlistMessageCreatingPlistReply();
  if (v12)
  {
    audioStream_setHTFTIsActiveInternal_cold_2(v12);
  }

LABEL_20:
  if (*a1)
  {
    CFRelease(*a1);
  }

  v13 = a1[1];
  if (v13)
  {
    CFRelease(v13);
  }

  if (v11)
  {
    CFRelease(v11);
  }

  if (v7)
  {

    CFRelease(v7);
  }
}

__CFString *audioStream_audioHoseProtocolCopyDebugDescription(uint64_t a1)
{
  Mutable = CFStringCreateMutable(*MEMORY[0x277CBECE8], 0);
  CFStringAppendFormat(Mutable, 0, @"APEndpointStreamAudio <APSEndpointStreamAudioHoseProtocol> on <%p>", a1);
  return Mutable;
}

uint64_t audioStream_audioHoseFlush_0(const void *a1, unsigned __int16 a2, _OWORD *a3, uint64_t a4, uint64_t a5)
{
  CMBaseObjectGetDerivedStorage();
  CFRetain(a1);
  APSDispatchAsyncFHelper();
  return 0;
}

void audioStream_audioHoseFlushInternal_0(CFTypeRef *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v24 = 0;
  cf = 0;
  if (*(a1 + 3) != 1)
  {
    audioStream_audioHoseFlushInternal_cold_1_0();
    Mutable = 0;
    v9 = 0;
    Data = 0;
    v14 = 4294960561;
    goto LABEL_30;
  }

  v3 = DerivedStorage;
  if (gLogCategory_APEndpointStreamAudio <= 40 && (gLogCategory_APEndpointStreamAudio != -1 || _LogCategory_Initialize()))
  {
    audioStream_audioHoseFlushInternal_cold_2_0(a1, v3);
  }

  if (*(v3 + 129))
  {
    v4 = *(v3 + 176);
    if (v4)
    {
      cf = CFRetain(v4);
      if (cf)
      {
        v5 = *MEMORY[0x277CBECE8];
        goto LABEL_9;
      }
    }

    else
    {
      cf = 0;
    }

    audioStream_audioHoseFlushInternal_cold_3_0();
    Mutable = 0;
    v9 = 0;
    Data = 0;
    v14 = 4294960578;
    goto LABEL_30;
  }

  APSenderSessionGetCMBaseObject();
  v11 = v10;
  v12 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v12)
  {
    v14 = 4294954514;
    goto LABEL_27;
  }

  v5 = *MEMORY[0x277CBECE8];
  v13 = v12(v11, @"TransportControlStream", *MEMORY[0x277CBECE8], &cf);
  if (v13)
  {
    v14 = v13;
LABEL_27:
    APSLogErrorAt();
    Mutable = 0;
LABEL_28:
    v9 = 0;
LABEL_29:
    Data = 0;
    goto LABEL_30;
  }

LABEL_9:
  Mutable = CFDictionaryCreateMutable(v5, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (!Mutable)
  {
    v14 = 4294894966;
    audioStream_audioHoseFlushInternal_cold_9();
    goto LABEL_28;
  }

  if (*(v3 + 129))
  {
    v7 = CFDictionarySetInt64();
    if (v7)
    {
      v14 = v7;
      audioStream_audioHoseFlushInternal_cold_4(v7);
    }

    else
    {
      v8 = CFDictionarySetInt64();
      if (!v8)
      {
        v9 = 0;
        goto LABEL_19;
      }

      v14 = v8;
      audioStream_audioHoseFlushInternal_cold_5(v8);
    }

    goto LABEL_28;
  }

  v9 = CFStringCreateWithFormat(v5, 0, @"seq=%u;rtptime=%u", *(a1 + 2), *(a1 + 4));
  if (!v9)
  {
    v14 = 4294894966;
    audioStream_audioHoseFlushInternal_cold_8();
    goto LABEL_29;
  }

  CFDictionarySetValue(Mutable, @"RTP-Info", v9);
LABEL_19:
  Data = CFPropertyListCreateData(v5, Mutable, kCFPropertyListBinaryFormat_v1_0, 0, 0);
  if (Data)
  {
    BlockBufferWithCFDataNoCopy = FigCreateBlockBufferWithCFDataNoCopy();
    if (BlockBufferWithCFDataNoCopy)
    {
      v14 = BlockBufferWithCFDataNoCopy;
      audioStream_audioHoseFlushInternal_cold_6(BlockBufferWithCFDataNoCopy);
    }

    else
    {
      v17 = cf;
      v18 = *(*(CMBaseObjectGetVTable() + 16) + 56);
      if (v18)
      {
        v14 = v18(v17, 1718383464, v24, 0);
        if (!v14)
        {
          goto LABEL_30;
        }
      }

      else
      {
        v14 = 4294954514;
      }

      APSLogErrorAt();
    }
  }

  else
  {
    v14 = 4294894966;
    audioStream_audioHoseFlushInternal_cold_7();
  }

LABEL_30:
  v19 = a1[5];
  if (v19)
  {
    v20 = *a1;
    v21 = *(a1 + 2);
    v22 = a1[6];
    v23[0] = *(a1 + 12);
    *(v23 + 12) = *(a1 + 3);
    v19(v20, v21, v23, v14, v22);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  if (v9)
  {
    CFRelease(v9);
  }

  if (Data)
  {
    CFRelease(Data);
  }

  if (v24)
  {
    CFRelease(v24);
  }

  CFRelease(*a1);
}

uint64_t audioStream_Suspend_0(const void *a1, const void *a2, uint64_t a3, uint64_t a4)
{
  CMBaseObjectGetDerivedStorage();
  CFRetain(a1);
  if (a2)
  {
    CFRetain(a2);
  }

  APSDispatchAsyncFHelper();
  return 0;
}

uint64_t audioStream_Resume_0(const void *a1, const void *a2, uint64_t a3, uint64_t a4)
{
  CMBaseObjectGetDerivedStorage();
  CFRetain(a1);
  if (a2)
  {
    CFRetain(a2);
  }

  APSDispatchAsyncFHelper();
  return 0;
}

uint64_t audioStream_Control_0(const void *a1, uint64_t a2, const void *a3)
{
  if (FigCFEqual())
  {
    CMBaseObjectGetDerivedStorage();
    if (a3)
    {
      audioStream_Control_cold_1_0();
      return 0;
    }

    audioStream_Control_cold_2_0();
  }

  else
  {
    if (FigCFEqual())
    {
      v19 = 0;
      CMBaseObjectGetDerivedStorage();
      v18 = 0;
      if (a1)
      {
        v6 = CFRetain(a1);
      }

      else
      {
        v6 = 0;
      }

      cf = v6;
      CFStringGetTypeID();
      CFDictionaryGetTypedValue();
      if (!FigCFEqual())
      {
        return 0;
      }

      goto LABEL_20;
    }

    if (FigCFEqual())
    {
      v19 = 0;
      DerivedStorage = CMBaseObjectGetDerivedStorage();
      cf = 0;
      CFStringGetTypeID();
      CFDictionaryGetTypedValue();
      if (FigCFEqual())
      {
        if (gLogCategory_APEndpointStreamAudio <= 50 && (gLogCategory_APEndpointStreamAudio != -1 || _LogCategory_Initialize()))
        {
          audioStream_Control_cold_5(a1, v8, v9);
        }

        if (APSSettingsGetIntWithDefault())
        {
          FigSimpleMutexLock();
          if (*(DerivedStorage + 168))
          {
            CMBaseObject = FigTransportStreamGetCMBaseObject();
            v11 = *(*(CMBaseObjectGetVTable() + 8) + 48);
            if (v11)
            {
              v11(CMBaseObject, *MEMORY[0x277CE5010], *MEMORY[0x277CBECE8], &cf);
            }
          }

          FigSimpleMutexUnlock();
          if (!cf)
          {
            return 0;
          }

          audioStream_Control_cold_6(DerivedStorage, cf, a3, &v19);
        }
      }

      if (cf)
      {
        CFRelease(cf);
      }

      return 0;
    }

    if (FigCFEqual())
    {
      v19 = 0;
      CMBaseObjectGetDerivedStorage();
      if (a1)
      {
        v13 = CFRetain(a1);
      }

      else
      {
        v13 = 0;
      }

      cf = v13;
      if (a3)
      {
        v14 = CFRetain(a3);
      }

      else
      {
        v14 = 0;
      }

      v18 = v14;
      CFStringGetTypeID();
      CFDictionaryGetTypedValue();
      if (FigCFEqual())
      {
        return 0;
      }

      if (gLogCategory_APEndpointStreamAudio <= 50 && (gLogCategory_APEndpointStreamAudio != -1 || _LogCategory_Initialize()))
      {
        audioStream_Control_cold_8(a1, v15, v16);
      }

LABEL_20:
      APSDispatchAsyncFHelper();
      return 0;
    }

    if (gLogCategory_APEndpointStreamAudio <= 90 && (gLogCategory_APEndpointStreamAudio != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_APEndpointStreamAudio, "OSStatus audioStream_Control(FigEndpointStreamRef, CFStringRef, CFDictionaryRef)", 33554522, "### [%{ptr}]: Invalid control command '%@'\n", a1, a2);
    }
  }

  return 4294950536;
}

void audioStream_completionCallback(uint64_t a1)
{
  (*(a1 + 16))(*a1, *(a1 + 8), *(a1 + 24));
  v2 = *a1;

  CFRelease(v2);
}

void audioStream_resumeAsync(const char **a1)
{
  CMBaseObjectGetDerivedStorage();
  audioStream_resumeInternal(*a1, a1[1]);
  if (a1[2])
  {
    CFRetain(*a1);
    APSDispatchAsyncFHelper();
  }

  CFRelease(*a1);
  v2 = a1[1];
  if (v2)
  {
    CFRelease(v2);
  }
}

uint64_t FigTransportStreamSetMessageCallbacks(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(*(CMBaseObjectGetVTable() + 16) + 24);
  if (!v6)
  {
    return 4294954514;
  }

  return v6(a1, a2, 0, a3);
}

uint64_t audioStream_receivedAudioDataMessage_0(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  result = CMBaseObjectGetDerivedStorage();
  if (a2 == 1684628836)
  {
    if (gLogCategory_APEndpointStreamAudio <= 50 && (gLogCategory_APEndpointStreamAudio != -1 || _LogCategory_Initialize()))
    {
      audioStream_receivedAudioDataMessage_cold_1_0(a4, v7, v8);
    }

    CMNotificationCenterGetDefaultLocalCenter();

    return FigDispatchAsyncPostNotification();
  }

  return result;
}

uint64_t audioStream_receivedAudioControlMessage(uint64_t a1, unsigned int a2, const void *a3, const void *a4)
{
  CMBaseObjectGetDerivedStorage();
  CFRetain(a4);
  if (a3)
  {
    CFRetain(a3);
  }

  return APSDispatchAsyncFHelper();
}

void audioStream_receivedAudioControlMessageInternal(uint64_t *a1)
{
  if (*(a1 + 2) != 1634168383)
  {
    goto LABEL_38;
  }

  v2 = *a1;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  cf = 0;
  if (*(DerivedStorage + 131))
  {
    goto LABEL_38;
  }

  v4 = DerivedStorage;
  FigSimpleMutexLock();
  v5 = v4[26];
  if (v5)
  {
    v6 = CFRetain(v5);
  }

  else
  {
    v6 = 0;
  }

  v30 = 0;
  v7 = v4[27];
  FigSimpleMutexUnlock();
  if (v6)
  {
    RetransmitRequest = APSTransportMessageGetRetransmitRequest();
    if (!RetransmitRequest)
    {
      if (gLogCategory_APEndpointStreamAudio <= 30 && (gLogCategory_APEndpointStreamAudio != -1 || _LogCategory_Initialize()))
      {
        audioStream_receivedAudioControlMessageInternal_cold_2(&v30, v2);
      }

      if (!HIWORD(v30))
      {
        goto LABEL_34;
      }

      while (1)
      {
        if (cf)
        {
          CFRelease(cf);
          cf = 0;
        }

        (*v7)(v6, v30, &cf);
        v11 = cf;
        if (!cf)
        {
          break;
        }

        v12 = v4[20];
        v13 = *(*(CMBaseObjectGetVTable() + 16) + 48);
        if (!v13)
        {
          v14 = 4294954514;
LABEL_42:
          audioStream_receivedAudioControlMessageInternal_cold_3(v14);
          goto LABEL_34;
        }

        v14 = v13(v12, 1634168352, v11);
        if (v14)
        {
          goto LABEL_42;
        }

        ++v4[40];
        LOWORD(v30) = v30 + 1;
        if (!--HIWORD(v30))
        {
          goto LABEL_34;
        }
      }

      v15 = CMBaseObjectGetDerivedStorage();
      v16 = v15;
      v31 = 0;
      if (*(v15 + 131))
      {
        goto LABEL_25;
      }

      v17 = *(v15 + 160);
      v18 = *(*(CMBaseObjectGetVTable() + 16) + 32);
      if (v18)
      {
        v19 = v18(v17, 4, &v31);
        if (!v19)
        {
          v20 = APSTransportMessageSetRetransmitResponseFutile();
          if (v20)
          {
            audioStream_receivedAudioControlMessageInternal_cold_4(v20);
          }

          else
          {
            v21 = *(v16 + 160);
            v22 = v31;
            v23 = *(*(CMBaseObjectGetVTable() + 16) + 48);
            if (v23)
            {
              v24 = v23(v21, 560031598, v22);
              if (!v24)
              {
                goto LABEL_25;
              }
            }

            else
            {
              v24 = 4294954514;
            }

            audioStream_receivedAudioControlMessageInternal_cold_5(v24);
          }

LABEL_25:
          if (!*(v16 + 131))
          {
            v25 = v31;
            if (v31)
            {
              v26 = *(v16 + 160);
              v27 = *(*(CMBaseObjectGetVTable() + 16) + 40);
              if (v27)
              {
                v27(v26, v25);
              }
            }
          }

          if (gLogCategory_APEndpointStreamAudio <= 30 && (gLogCategory_APEndpointStreamAudio != -1 || _LogCategory_Initialize()))
          {
            LogPrintF(&gLogCategory_APEndpointStreamAudio, "void audioStream_receivedRetransmitRequest(FigEndpointStreamRef, CMBlockBufferRef)", 33554462, "[%{ptr}] Sent futile retransmit response for sequenceNumber %d\n", v2, v30);
          }

          ++v4[42];
          goto LABEL_34;
        }
      }

      else
      {
        v19 = 4294954514;
      }

      audioStream_receivedAudioControlMessageInternal_cold_6(v19);
      goto LABEL_25;
    }

    audioStream_receivedAudioControlMessageInternal_cold_1(RetransmitRequest);
  }

  else
  {
    audioStream_receivedAudioControlMessageInternal_cold_7(v2, v8, v9);
  }

LABEL_34:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v6)
  {
    CFRelease(v6);
  }

LABEL_38:
  CFRelease(*a1);
  v28 = a1[2];
  if (v28)
  {
    CFRelease(v28);
  }
}

void audioStream_receivedMediaDataEventMessage_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  error = 0;
  if (gLogCategory_APEndpointStreamAudio <= 50 && (gLogCategory_APEndpointStreamAudio != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APEndpointStreamAudio, "void audioStream_receivedMediaDataEventMessage(FigTransportStreamRef, OSType, CMBlockBufferRef, void *)", 33554482, "[%{ptr}] MDE request '%C'\n", a4, a2);
  }

  if (a2 != 1918989680 && a2 != 1920101748 && a2 != 1919513459)
  {
    goto LABEL_56;
  }

  v6 = *MEMORY[0x277CBECE8];
  CFDataWithBlockBufferNoCopy = FigCreateCFDataWithBlockBufferNoCopy();
  if (CFDataWithBlockBufferNoCopy)
  {
    audioStream_receivedMediaDataEventMessage_cold_1_0(CFDataWithBlockBufferNoCopy);
LABEL_56:
    v9 = 0;
    goto LABEL_57;
  }

  v8 = CFPropertyListCreateWithData(v6, 0, 0, 0, &error);
  v9 = v8;
  if (error)
  {
    audioStream_receivedMediaDataEventMessage_cold_2(&error, a4, v8, &v34);
    v9 = v34;
    goto LABEL_57;
  }

  if (!v8)
  {
    audioStream_receivedMediaDataEventMessage_cold_18();
    goto LABEL_57;
  }

  if (a2 != 1918989680)
  {
    if (a2 == 1919513459)
    {
      v20 = CFGetTypeID(v8);
      if (v20 == CFDictionaryGetTypeID())
      {
        CMBaseObjectGetDerivedStorage();
        if (gLogCategory_APEndpointStreamAudio <= 50 && (gLogCategory_APEndpointStreamAudio != -1 || _LogCategory_Initialize()))
        {
          LogPrintF(&gLogCategory_APEndpointStreamAudio, "OSStatus audioStream_reportIssue(FigEndpointStreamRef, CFDictionaryRef)", 33554482, "[%{ptr}] ReportIssue '%@'\n", a4, v9);
        }

        CMBaseObjectGetDerivedStorage();
        CFStringGetTypeID();
        CFDictionaryGetTypedValue();
        if (FigCFEqual())
        {
          MutableCopy = CFDictionaryCreateMutableCopy(v6, 0, v9);
          if (MutableCopy)
          {
            v25 = MutableCopy;
            FigCFDictionarySetValue();
            FigCFDictionarySetValue();
            CMNotificationCenterGetDefaultLocalCenter();
            FigDispatchAsyncPostNotification();
            CFRelease(v25);
          }

          else
          {
            audioStream_receivedMediaDataEventMessage_cold_17();
          }
        }
      }

      else
      {
        audioStream_receivedMediaDataEventMessage_cold_16();
      }
    }

    else
    {
      v10 = CFGetTypeID(v8);
      if (v10 == CFDictionaryGetTypeID())
      {
        audioStream_receivedMediaDataEventMessage_cold_4(a4, v9);
      }

      else
      {
        audioStream_receivedMediaDataEventMessage_cold_3();
      }
    }

    goto LABEL_57;
  }

  v11 = CFGetTypeID(v8);
  if (v11 != CFDictionaryGetTypeID())
  {
    audioStream_receivedMediaDataEventMessage_cold_5();
    goto LABEL_57;
  }

  v33 = 0;
  v34 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APEndpointStreamAudio <= 50 && (gLogCategory_APEndpointStreamAudio != -1 || _LogCategory_Initialize()))
  {
    audioStream_receivedMediaDataEventMessage_cold_6(a4, v12, v13);
  }

  Int64Ranged = CFDictionaryGetInt64Ranged();
  if (v33)
  {
    audioStream_receivedMediaDataEventMessage_cold_7();
    goto LABEL_49;
  }

  v16 = CFDictionaryGetInt64Ranged();
  if (v33)
  {
    audioStream_receivedMediaDataEventMessage_cold_8();
    goto LABEL_49;
  }

  v31 = Int64Ranged;
  Int64 = CFDictionaryGetInt64();
  if (v33)
  {
    audioStream_receivedMediaDataEventMessage_cold_9();
    goto LABEL_49;
  }

  v18 = *MEMORY[0x277CE9F38];
  if (CFDictionaryContainsKey(v9, *MEMORY[0x277CE9F38]))
  {
    v30 = "no";
    v19 = v18;
    goto LABEL_30;
  }

  v21 = *MEMORY[0x277CE9F30];
  if (CFDictionaryContainsKey(v9, *MEMORY[0x277CE9F30]))
  {
    v30 = "yes";
    v19 = v21;
LABEL_30:
    Value = CFDictionaryGetValue(v9, v19);
    if (Value)
    {
      v23 = Value;
      if (gLogCategory_APEndpointStreamAudio <= 50 && (gLogCategory_APEndpointStreamAudio != -1 || _LogCategory_Initialize()))
      {
        LogPrintF(&gLogCategory_APEndpointStreamAudio, "OSStatus audioStream_reportAudioPerformance(FigEndpointStreamRef, CFDictionaryRef)", 33554482, "[%{ptr}] %s serialized histogram: %@", a4, "OSStatus audioStream_reportAudioPerformance(FigEndpointStreamRef, CFDictionaryRef)", v23);
      }

      v33 = APSStatsHistogramCreateFromSerializedDictionary();
      if (v33)
      {
        audioStream_receivedMediaDataEventMessage_cold_10();
      }

      else
      {
        v26 = APSStatsHistogramCopyAsRTCString();
        if (v26)
        {
          v27 = v26;
          if (gLogCategory_APEndpointStreamAudio <= 50 && (gLogCategory_APEndpointStreamAudio != -1 || _LogCategory_Initialize()))
          {
            LogPrintF(&gLogCategory_APEndpointStreamAudio, "OSStatus audioStream_reportAudioPerformance(FigEndpointStreamRef, CFDictionaryRef)", 33554482, "[%{ptr}] Report (remote) audio performance: protVer=%u sessionDuration=%u[s] renderDeadlineMin=%lld[ms] isLiveAdaptive=%s %@", a4, v31, v16, Int64, v30, v27);
          }

          if (*(DerivedStorage + 48))
          {
            Mutable = CFDictionaryCreateMutable(v6, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
            if (Mutable)
            {
              v29 = Mutable;
              CFDictionarySetValue(Mutable, *MEMORY[0x277CEA068], *(DerivedStorage + 48));
              FigSimpleMutexLock();
              FigSimpleMutexUnlock();
              FigCFDictionarySetInt64();
              FigCFDictionarySetInt64();
              FigCFDictionarySetInt64();
              FigCFDictionarySetBoolean();
              CFDictionarySetValue(v29, *MEMORY[0x277CEA070], v34);
              CMNotificationCenterGetDefaultLocalCenter();
              FigDispatchAsyncPostNotification();
              CFRelease(v29);
            }

            else
            {
              audioStream_receivedMediaDataEventMessage_cold_11();
            }
          }

          else
          {
            audioStream_receivedMediaDataEventMessage_cold_12(&v33);
          }

          CFRelease(v27);
        }

        else
        {
          audioStream_receivedMediaDataEventMessage_cold_13();
        }
      }

      goto LABEL_49;
    }
  }

  audioStream_receivedMediaDataEventMessage_cold_14();
LABEL_49:
  if (v34)
  {
    CFRelease(v34);
  }

  if (v33)
  {
    audioStream_receivedMediaDataEventMessage_cold_15(v33);
  }

LABEL_57:
  if (error)
  {
    CFRelease(error);
  }

  if (v9)
  {
    CFRelease(v9);
  }
}

uint64_t __audioStream_startSilentAudio_block_invoke(uint64_t a1)
{
  inFormat.mSampleRate = 44100.0;
  *&inFormat.mFormatID = xmmword_2222985E0;
  *&inFormat.mBytesPerFrame = xmmword_2222985F0;
  v2 = AudioQueueNewOutput(&inFormat, audioStream_silentAudioCallback, 0, 0, 0, 0, (*(a1 + 32) + 488));
  if (v2)
  {
    return __audioStream_startSilentAudio_block_invoke_cold_1(v2);
  }

  result = AudioQueueStart(*(*(a1 + 32) + 488), 0);
  if (result)
  {
    return __audioStream_startSilentAudio_block_invoke_cold_2(result);
  }

  if (gLogCategory_APEndpointStreamAudio <= 50)
  {
    if (gLogCategory_APEndpointStreamAudio != -1)
    {
      return __audioStream_startSilentAudio_block_invoke_cold_3(a1, v4, v5);
    }

    result = _LogCategory_Initialize();
    if (result)
    {
      return __audioStream_startSilentAudio_block_invoke_cold_3(a1, v4, v5);
    }
  }

  return result;
}

CFMutableDictionaryRef OUTLINED_FUNCTION_13_8(int a1, int a2, const CFDictionaryKeyCallBacks *a3, const CFDictionaryValueCallBacks *a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, CFAllocatorRef allocator)
{

  return CFDictionaryCreateMutable(allocator, 0, a3, a4);
}

uint64_t mrcs_getTypeID(uint64_t *a1)
{
  result = _CFRuntimeRegisterClass();
  *a1 = result;
  return result;
}

uint64_t APMediaRemoteCommandSinkCreateWithNowPlayingAppPID(uint64_t a1, uint64_t a2, CFTypeRef *a3)
{
  cf = 0;
  v20 = 0;
  v21 = &v20;
  v22 = 0x3052000000;
  v23 = __Block_byref_object_copy__7;
  v6 = getMRClientClass_softClass_0;
  v24 = __Block_byref_object_dispose__7;
  v25 = getMRClientClass_softClass_0;
  if (!getMRClientClass_softClass_0)
  {
    v15 = MEMORY[0x277D85DD0];
    v16 = 3221225472;
    v17 = __getMRClientClass_block_invoke_0;
    v18 = &unk_27849ACC8;
    v19 = &v20;
    __getMRClientClass_block_invoke_0(&v15);
    v6 = v21[5];
  }

  _Block_object_dispose(&v20, 8);
  v7 = [[v6 alloc] initWithProcessIdentifier:a2 bundleIdentifier:0];
  if (!v7)
  {
    APMediaRemoteCommandSinkCreateWithNowPlayingAppPID_cold_4();
    v10 = 0;
    v9 = 0;
LABEL_18:
    v12 = 4294960568;
    goto LABEL_13;
  }

  v20 = 0;
  v21 = &v20;
  v22 = 0x3052000000;
  v23 = __Block_byref_object_copy__7;
  v8 = getMRPlayerPathClass_softClass_0;
  v24 = __Block_byref_object_dispose__7;
  v25 = getMRPlayerPathClass_softClass_0;
  if (!getMRPlayerPathClass_softClass_0)
  {
    v15 = MEMORY[0x277D85DD0];
    v16 = 3221225472;
    v17 = __getMRPlayerPathClass_block_invoke_0;
    v18 = &unk_27849ACC8;
    v19 = &v20;
    __getMRPlayerPathClass_block_invoke_0(&v15);
    v8 = v21[5];
  }

  _Block_object_dispose(&v20, 8);
  v9 = [[v8 alloc] initWithOrigin:0 client:v7 player:0];
  if (!v9)
  {
    APMediaRemoteCommandSinkCreateWithNowPlayingAppPID_cold_3();
    v10 = 0;
    goto LABEL_18;
  }

  v10 = [objc_alloc(getMRDestinationClass_0()) initWithPlayerPath:v9];
  if (!v10)
  {
    APMediaRemoteCommandSinkCreateWithNowPlayingAppPID_cold_2();
    goto LABEL_18;
  }

  v11 = mrcs_createWithMRDestination(a1, v10, &cf);
  if (v11)
  {
    v12 = v11;
    APSLogErrorAt();
    if (cf)
    {
      CFRelease(cf);
    }
  }

  else
  {
    if (gLogCategory_APMediaRemoteCommandSink <= 50 && (gLogCategory_APMediaRemoteCommandSink != -1 || _LogCategory_Initialize()))
    {
      APMediaRemoteCommandSinkCreateWithNowPlayingAppPID_cold_1(&cf, v9);
    }

    v12 = 0;
    *a3 = cf;
  }

LABEL_13:

  return v12;
}

void sub_2221433A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t getMRDestinationClass_0()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x3052000000;
  v6 = __Block_byref_object_copy__7;
  v0 = getMRDestinationClass_softClass_0;
  v7 = __Block_byref_object_dispose__7;
  v8 = getMRDestinationClass_softClass_0;
  if (!getMRDestinationClass_softClass_0)
  {
    v2[0] = MEMORY[0x277D85DD0];
    v2[1] = 3221225472;
    v2[2] = __getMRDestinationClass_block_invoke_0;
    v2[3] = &unk_27849ACC8;
    v2[4] = &v3;
    __getMRDestinationClass_block_invoke_0(v2);
    v0 = v4[5];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_222143498(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t mrcs_createWithMRDestination(uint64_t a1, uint64_t a2, void *a3)
{
  if (_MergedGlobals_19 != -1)
  {
    mrcs_createWithMRDestination_cold_1();
  }

  Instance = _CFRuntimeCreateInstance();
  if (!Instance)
  {
    mrcs_createWithMRDestination_cold_4();
    return 4294960568;
  }

  v6 = Instance;
  *(Instance + 16) = 0;
  *(Instance + 24) = 0;
  if (!a2)
  {
    mrcs_createWithMRDestination_cold_3();
    v9 = 4294960591;
LABEL_13:
    CFRelease(v6);
    return v9;
  }

  v12 = 0;
  v13 = &v12;
  v14 = 0x3052000000;
  v15 = __Block_byref_object_copy__7;
  v7 = getMRNowPlayingControllerClass_softClass_0;
  v16 = __Block_byref_object_dispose__7;
  v17 = getMRNowPlayingControllerClass_softClass_0;
  if (!getMRNowPlayingControllerClass_softClass_0)
  {
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __getMRNowPlayingControllerClass_block_invoke_0;
    v11[3] = &unk_27849ACC8;
    v11[4] = &v12;
    __getMRNowPlayingControllerClass_block_invoke_0(v11);
    v7 = v13[5];
  }

  _Block_object_dispose(&v12, 8);
  v8 = [[v7 alloc] initWithDestination:a2];
  v6[3] = v8;
  if (!v8)
  {
    mrcs_createWithMRDestination_cold_2();
    v9 = 4294960568;
    goto LABEL_13;
  }

  v9 = 0;
  *a3 = v6;
  return v9;
}

void sub_222143624(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t APMediaRemoteCommandSinkCreateWithRoutingContextUUID(uint64_t a1, uint64_t a2, CFTypeRef *a3)
{
  cf = 0;
  v6 = [objc_alloc(getMRDestinationClass_0()) initWithOutputContextUID:a2];
  if (v6)
  {
    v7 = mrcs_createWithMRDestination(a1, v6, &cf);
    if (v7)
    {
      v8 = v7;
      APSLogErrorAt();
      if (cf)
      {
        CFRelease(cf);
      }
    }

    else
    {
      if (gLogCategory_APMediaRemoteCommandSink <= 50 && (gLogCategory_APMediaRemoteCommandSink != -1 || _LogCategory_Initialize()))
      {
        LogPrintF(&gLogCategory_APMediaRemoteCommandSink, "OSStatus APMediaRemoteCommandSinkCreateWithRoutingContextUUID(CFAllocatorRef, CFStringRef, APMediaRemoteCommandSinkRef *)", 33554482, "[%{ptr}] created, targeting routingContextUUID: %@\n", cf, a2);
      }

      v8 = 0;
      *a3 = cf;
    }
  }

  else
  {
    APMediaRemoteCommandSinkCreateWithRoutingContextUUID_cold_1();
    v8 = 4294960568;
  }

  return v8;
}

uint64_t APMediaRemoteCommandSinkHandleAPCommand(uint64_t result, uint64_t a2)
{
  v3 = result;
  if (gLogCategory_APMediaRemoteCommandSink <= 50)
  {
    if (gLogCategory_APMediaRemoteCommandSink != -1 || (result = _LogCategory_Initialize(), result))
    {
      result = LogPrintF(&gLogCategory_APMediaRemoteCommandSink, "void APMediaRemoteCommandSinkHandleAPCommand(APMediaRemoteCommandSinkRef, APMediaRemoteCommand)", 33554482, "[%{ptr}] Handling APMediaRemote command %'C\n", v3, a2);
    }
  }

  if (a2 <= 1886154866)
  {
    if (a2 <= 1852404844)
    {
      if (a2 <= 1685086580)
      {
        if (a2 == 1650878052)
        {
          *(v3 + 16) = 1;
          v4 = 8;
          goto LABEL_60;
        }

        if (a2 == 1651668836)
        {
          *(v3 + 16) = -1;
          v4 = 10;
          goto LABEL_60;
        }

        goto LABEL_51;
      }

      if (a2 != 1685086581)
      {
        if (a2 == 1852008560)
        {
          v4 = 100;
          goto LABEL_60;
        }

        goto LABEL_51;
      }
    }

    else
    {
      if (a2 > 1885959276)
      {
        if (a2 != 1885959277)
        {
          if (a2 == 1886151033)
          {
            if (gLogCategory_APMediaRemoteCommandSink <= 50 && (gLogCategory_APMediaRemoteCommandSink != -1 || _LogCategory_Initialize()))
            {
              APMediaRemoteCommandSinkHandleAPCommand_cold_2();
            }

            v4 = 0;
            goto LABEL_60;
          }

          if (a2 == 1886151528)
          {
            v4 = 101;
LABEL_60:

            return APMediaRemoteCommandSinkHandleMRCommand(v3, v4, 0);
          }

          goto LABEL_51;
        }

LABEL_33:
        v4 = 5;
        goto LABEL_60;
      }

      if (a2 == 1852404845)
      {
        v4 = 4;
        goto LABEL_60;
      }

      if (a2 != 1885435251)
      {
        goto LABEL_51;
      }
    }

    v4 = 1;
    goto LABEL_60;
  }

  if (a2 <= 1936225382)
  {
    if (a2 <= 1919967587)
    {
      if (a2 == 1886154867)
      {
        v4 = 2;
        goto LABEL_60;
      }

      if (a2 == 1886155379)
      {
        v5 = *(v3 + 16);
        if (v5 == -1)
        {
          v4 = 11;
        }

        else if (v5 == 1)
        {
          v4 = 9;
        }

        else
        {
          if (gLogCategory_APMediaRemoteCommandSink <= 50 && (gLogCategory_APMediaRemoteCommandSink != -1 || _LogCategory_Initialize()))
          {
            APMediaRemoteCommandSinkHandleAPCommand_cold_1(v3);
          }

          v4 = 0;
        }

        *(v3 + 16) = 0;
        goto LABEL_60;
      }

      goto LABEL_51;
    }

    if (a2 == 1919967588)
    {
      v4 = 7;
      goto LABEL_60;
    }

    if (a2 != 1920166260)
    {
      goto LABEL_51;
    }

    goto LABEL_33;
  }

  if (a2 <= 1936420965)
  {
    if (a2 == 1936225383)
    {
      v4 = 6;
      goto LABEL_60;
    }

    if (a2 == 1936420962)
    {
      v4 = 18;
      goto LABEL_60;
    }
  }

  else
  {
    switch(a2)
    {
      case 0x736B7066:
        v4 = 17;
        goto LABEL_60;
      case 0x73706F73:
        v4 = 24;
        goto LABEL_60;
      case 0x73746F70:
        v4 = 3;
        goto LABEL_60;
    }
  }

LABEL_51:
  if (gLogCategory_APMediaRemoteCommandSink <= 60)
  {
    if (gLogCategory_APMediaRemoteCommandSink != -1)
    {
      return LogPrintF(&gLogCategory_APMediaRemoteCommandSink, "void APMediaRemoteCommandSinkHandleAPCommand(APMediaRemoteCommandSinkRef, APMediaRemoteCommand)", 33554492, "### [%{ptr}] Unsupported MediaRemote command %'C\n", v3, a2);
    }

    result = _LogCategory_Initialize();
    if (result)
    {
      return LogPrintF(&gLogCategory_APMediaRemoteCommandSink, "void APMediaRemoteCommandSinkHandleAPCommand(APMediaRemoteCommandSinkRef, APMediaRemoteCommand)", 33554492, "### [%{ptr}] Unsupported MediaRemote command %'C\n", v3, a2);
    }
  }

  return result;
}

uint64_t APMediaRemoteCommandSinkHandleMRCommand(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (gLogCategory_APMediaRemoteCommandSink <= 50 && (gLogCategory_APMediaRemoteCommandSink != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APMediaRemoteCommandSink, "void APMediaRemoteCommandSinkHandleMRCommand(APMediaRemoteCommandSinkRef, MRMediaRemoteCommand, CFDictionaryRef)", 33554482, "[%{ptr}] Sending MRMediaRemote command %zu to MediaRemote\n", a1, a2);
  }

  v6 = *(a1 + 24);

  return [v6 sendCommand:a2 options:a3 completion:0];
}

void mrcs_Finalize(uint64_t a1)
{
  if (gLogCategory_APMediaRemoteCommandSink <= 50 && (gLogCategory_APMediaRemoteCommandSink != -1 || _LogCategory_Initialize()))
  {
    mrcs_Finalize_cold_1(a1);
  }

  *(a1 + 24) = 0;
}

Class __getMRClientClass_block_invoke_0(uint64_t a1)
{
  MediaRemoteLibrary_1();
  result = objc_getClass("MRClient");
  *(*(*(a1 + 32) + 8) + 40) = result;
  if (!*(*(*(a1 + 32) + 8) + 40))
  {
    __getMRClientClass_block_invoke_cold_1();
  }

  getMRClientClass_softClass_0 = *(*(*(a1 + 32) + 8) + 40);
  return result;
}

void MediaRemoteLibrary_1()
{
  v3 = *MEMORY[0x277D85DE8];
  v0[0] = 0;
  if (!MediaRemoteLibraryCore_frameworkLibrary_2)
  {
    v0[1] = MEMORY[0x277D85DD0];
    v0[2] = 3221225472;
    v0[3] = __MediaRemoteLibraryCore_block_invoke_2;
    v0[4] = &__block_descriptor_40_e5_v8__0l;
    v0[5] = v0;
    v1 = xmmword_27849FD08;
    v2 = 0;
    MediaRemoteLibraryCore_frameworkLibrary_2 = _sl_dlopen();
  }

  if (!MediaRemoteLibraryCore_frameworkLibrary_2)
  {
    MediaRemoteLibrary_cold_1(v0);
  }

  if (v0[0])
  {
    free(v0[0]);
  }
}

uint64_t __MediaRemoteLibraryCore_block_invoke_2(uint64_t a1)
{
  result = _sl_dlopen();
  MediaRemoteLibraryCore_frameworkLibrary_2 = result;
  return result;
}

Class __getMRPlayerPathClass_block_invoke_0(uint64_t a1)
{
  MediaRemoteLibrary_1();
  result = objc_getClass("MRPlayerPath");
  *(*(*(a1 + 32) + 8) + 40) = result;
  if (!*(*(*(a1 + 32) + 8) + 40))
  {
    __getMRPlayerPathClass_block_invoke_cold_1();
  }

  getMRPlayerPathClass_softClass_0 = *(*(*(a1 + 32) + 8) + 40);
  return result;
}

Class __getMRDestinationClass_block_invoke_0(uint64_t a1)
{
  MediaRemoteLibrary_1();
  result = objc_getClass("MRDestination");
  *(*(*(a1 + 32) + 8) + 40) = result;
  if (!*(*(*(a1 + 32) + 8) + 40))
  {
    __getMRDestinationClass_block_invoke_cold_1();
  }

  getMRDestinationClass_softClass_0 = *(*(*(a1 + 32) + 8) + 40);
  return result;
}

Class __getMRNowPlayingControllerClass_block_invoke_0(uint64_t a1)
{
  MediaRemoteLibrary_1();
  result = objc_getClass("MRNowPlayingController");
  *(*(*(a1 + 32) + 8) + 40) = result;
  if (!*(*(*(a1 + 32) + 8) + 40))
  {
    __getMRNowPlayingControllerClass_block_invoke_cold_1();
  }

  getMRNowPlayingControllerClass_softClass_0 = *(*(*(a1 + 32) + 8) + 40);
  return result;
}

uint64_t endpointCluster_getSubEndpointDeviceClass(uint64_t a1, uint64_t a2)
{
  cf = 0;
  if (!a2)
  {
    endpointCluster_getSubEndpointDeviceClass_cold_1();
    return 0;
  }

  CMBaseObject = FigEndpointGetCMBaseObject();
  v5 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v5)
  {
    v8 = 4294954514;
    goto LABEL_6;
  }

  v6 = v5(CMBaseObject, *MEMORY[0x277CC14F0], *MEMORY[0x277CBECE8], &cf);
  if (v6)
  {
    v8 = v6;
LABEL_6:
    if (gLogCategory_APEndpointCluster <= 90 && (gLogCategory_APEndpointCluster != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_APEndpointCluster, "GestaltDeviceClass endpointCluster_getSubEndpointDeviceClass(FigEndpointRef, FigEndpointRef)", 33554522, "[%{ptr}] Obtaining subtype for SubEndpoint [%{ptr}] returned %#m", a1, a2, v8);
    }

    v7 = 0;
    goto LABEL_11;
  }

  v7 = FigEndpointSubTypeToGestaltDeviceClass(cf);
LABEL_11:
  if (cf)
  {
    CFRelease(cf);
  }

  return v7;
}

void endpointCluster_handleSubEndpointVolumeDidChange(uint64_t a1, uint64_t a2, uint64_t a3, const void *a4, uint64_t a5)
{
  v15 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  key = 0;
  if (a5)
  {
    v9 = DerivedStorage;
    CFNumberGetTypeID();
    TypedValue = CFDictionaryGetTypedValue();
    if (gLogCategory_APEndpointCluster <= 50 && (gLogCategory_APEndpointCluster != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_APEndpointCluster, "void endpointCluster_handleSubEndpointVolumeDidChange(CMNotificationCenterRef, const void *, CFStringRef, const void *, CFTypeRef)", 33554482, "[%{ptr}] received volume change (volume level: %@) from subEndpoint [%{ptr}].\n", a2, TypedValue, a4);
    }

    FigSimpleMutexLock();
    if (endpointCluster_isSubEndpointVolumeLeader(a2, a4))
    {
      if (gLogCategory_APEndpointCluster <= 50 && (gLogCategory_APEndpointCluster != -1 || _LogCategory_Initialize()))
      {
        LogPrintF(&gLogCategory_APEndpointCluster, "void endpointCluster_handleSubEndpointVolumeDidChange(CMNotificationCenterRef, const void *, CFStringRef, const void *, CFTypeRef)", 33554482, "[%{ptr}] <AirPlayVolume> forwarding volume change (volume level: %@) from subEndpoint [%{ptr}].\n", a2, TypedValue, a4);
      }

      if (*v9 == 3)
      {
        CMBaseObject = FigEndpointGetCMBaseObject();
        v12 = *(*(CMBaseObjectGetVTable() + 8) + 48);
        if (v12)
        {
          v12(CMBaseObject, @"RoomUUID", *MEMORY[0x277CBECE8], &key);
          if (key)
          {
            CFDictionaryReplaceValue(*(v9 + 632), key, TypedValue);
          }
        }
      }

      if (*v9 == 3)
      {
        v13 = a4;
      }

      else
      {
        v13 = 0;
      }

      endpointCluster_postVolumeDidChange(a2, v13, TypedValue);
    }

    else if (gLogCategory_APEndpointCluster <= 50 && (gLogCategory_APEndpointCluster != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_APEndpointCluster, "void endpointCluster_handleSubEndpointVolumeDidChange(CMNotificationCenterRef, const void *, CFStringRef, const void *, CFTypeRef)", 33554482, "[%{ptr}] Ignoring volume change (volume level: %@) from subEndpoint [%{ptr}].\n", a2, TypedValue, a4);
    }

    FigSimpleMutexUnlock();
  }

  else
  {
    endpointCluster_handleSubEndpointVolumeDidChange_cold_2();
  }
}

double endpointCluster_handleSubEndpointIsMutedDidChange(uint64_t a1, uint64_t a2, uint64_t a3, const void *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APEndpointCluster <= 50 && (gLogCategory_APEndpointCluster != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APEndpointCluster, "void endpointCluster_handleSubEndpointIsMutedDidChange(CMNotificationCenterRef, const void *, CFStringRef, const void *, CFTypeRef)", 33554482, "[%{ptr}] received mute change from subEndpoint [%{ptr}].\n", a2, a4);
  }

  FigSimpleMutexLock();
  if (endpointCluster_isSubEndpointVolumeLeader(a2, a4))
  {
    if (gLogCategory_APEndpointCluster <= 50 && (gLogCategory_APEndpointCluster != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_APEndpointCluster, "void endpointCluster_handleSubEndpointIsMutedDidChange(CMNotificationCenterRef, const void *, CFStringRef, const void *, CFTypeRef)", 33554482, "[%{ptr}] <AirPlayVolume> forwarding mute change from subEndpoint [%{ptr}].\n", a2, a4);
    }

    if (*DerivedStorage == 3)
    {
      v7 = a4;
    }

    else
    {
      v7 = 0;
    }

    endpointCluster_postIsMutedDidChange(a2, v7);
  }

  else if (gLogCategory_APEndpointCluster <= 50 && (gLogCategory_APEndpointCluster != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APEndpointCluster, "void endpointCluster_handleSubEndpointIsMutedDidChange(CMNotificationCenterRef, const void *, CFStringRef, const void *, CFTypeRef)", 33554482, "[%{ptr}] Ignoring mute change from subEndpoint [%{ptr}].\n", a2, a4);
  }

  FigSimpleMutexUnlock();
  return result;
}

double endpointCluster_handleLocalEndpointFinishedDeactivation(uint64_t a1, const void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  if (*(DerivedStorage + 376))
  {
    if (gLogCategory_APEndpointCluster <= 50 && (gLogCategory_APEndpointCluster != -1 || _LogCategory_Initialize()))
    {
      endpointCluster_handleLocalEndpointFinishedDeactivation_cold_1(a2);
    }

    endpointCluster_updateClusterChangeProgress(a2, 0, 1);
    endpointCluster_handleSubEndpointResult(a2, *(DerivedStorage + 384), *(DerivedStorage + 8), 4294895019, 1);
    endpointCluster_postNeedDeactivationForClusterChange(a2, 0);
    endpointCluster_sendActivationMetrics(a2, 261);
  }

  else
  {
    if (*(DerivedStorage + 488))
    {
      if (gLogCategory_APEndpointCluster <= 50 && (gLogCategory_APEndpointCluster != -1 || _LogCategory_Initialize()))
      {
        endpointCluster_handleLocalEndpointFinishedDeactivation_cold_2(a2);
      }

      v4 = a2;
      v5 = 0;
    }

    else
    {
      if (gLogCategory_APEndpointCluster <= 50 && (gLogCategory_APEndpointCluster != -1 || _LogCategory_Initialize()))
      {
        endpointCluster_handleLocalEndpointFinishedDeactivation_cold_3(a2);
      }

      v4 = a2;
      v5 = 1;
    }

    endpointCluster_updateClusterChangeProgress(v4, v5, 1);
  }

  FigSimpleMutexUnlock();
  return result;
}

double endpointCluster_handleSubEndpointDescriptionChanged(uint64_t a1, const void *a2, uint64_t a3, const void *a4, uint64_t a5)
{
  CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  if (a5)
  {
    v8 = CFDictionaryGetInt64() || CFDictionaryGetInt64() || CFDictionaryGetInt64() != 0;
    v9 = CFDictionaryGetInt64() != 0;
  }

  else
  {
    v8 = 0;
    v9 = 0;
  }

  endpointCluster_updateFromSubEndpoint(a2, a4, 0, v8, v9, 1);

  FigSimpleMutexUnlock();
  return result;
}

double CompletionCallbackContextAddSubEndpoint(uint64_t a1, const void *a2)
{
  FigSimpleMutexLock();
  if (!CFDictionaryContainsKey(*(a1 + 88), a2))
  {
    CFDictionarySetValue(*(a1 + 88), a2, *MEMORY[0x277CBEEE8]);
    if (gLogCategory_APEndpointCluster <= 30 && (gLogCategory_APEndpointCluster != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_APEndpointCluster, "void CompletionCallbackContextAddSubEndpoint(CompletionCallbackContextRef, FigEndpointRef)", 33554462, "[%{ptr}] added subEndpoint [%{ptr}] to activation context\n", *(a1 + 16), a2);
    }
  }

  FigSimpleMutexUnlock();
  return result;
}

uint64_t endpointCluster_handleSubEndpointNonPersistentReceiverSessionStarted(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APEndpointCluster <= 50 && (gLogCategory_APEndpointCluster != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APEndpointCluster, "void endpointCluster_handleSubEndpointNonPersistentReceiverSessionStarted(CMNotificationCenterRef, const void *, CFStringRef, const void *, CFTypeRef)", 33554482, "[%{ptr}] Non-persistent receiver session started on HomePod subEndpoint [%{ptr}]\n", a2, a4);
  }

  CMNotificationCenterGetDefaultLocalCenter();

  return FigDispatchAsyncPostNotification();
}

uint64_t endpointCluster_activateSubEndpoint(uint64_t a1, const void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APEndpointCluster <= 50 && (gLogCategory_APEndpointCluster != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APEndpointCluster, "OSStatus endpointCluster_activateSubEndpoint(FigEndpointRef, FigEndpointRef)", 33554482, "[%{ptr}] activating subEndpoint [%{ptr}]\n", a1, a2);
  }

  if ((*(DerivedStorage + 376) - 4) <= 0xFFFFFFFD)
  {
    return endpointCluster_activateSubEndpoint_cold_1();
  }

  CMNotificationCenterGetDefaultLocalCenter();
  FigNotificationCenterAddWeakListener();
  CFRetain(a2);
  v5 = *(DerivedStorage + 320);
  if (!v5 || (FigEndpointAggregateGetClassID(), !CMBaseObjectIsMemberOfClass()))
  {
    v5 = 0;
  }

  v6 = *(DerivedStorage + 448);
  v7 = CFRetain(*(DerivedStorage + 384));
  VTable = CMBaseObjectGetVTable();
  v10 = *(VTable + 32);
  result = VTable + 32;
  v11 = *(v10 + 8);
  if (v11)
  {

    return v11(v5, a2, v6, endpointCluster_activateSubEndpointCallback, v7);
  }

  return result;
}

uint64_t APEndpointClusterRemoveSubEndpoint(const void *a1, const void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APEndpointCluster <= 50 && (gLogCategory_APEndpointCluster != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APEndpointCluster, "OSStatus APEndpointClusterRemoveSubEndpoint(FigEndpointRef, FigEndpointRef)", 33554482, "Removing subEndpoint [%{ptr}] from cluster endpoint [%{ptr}]\n", a2, a1);
  }

  FigSimpleMutexLock();
  if (!a2)
  {
    APEndpointClusterRemoveSubEndpoint_cold_3();
    v6 = 4294950576;
    goto LABEL_26;
  }

  CMNotificationCenterGetDefaultLocalCenter();
  FigNotificationCenterRemoveWeakListener();
  CMNotificationCenterGetDefaultLocalCenter();
  FigNotificationCenterRemoveWeakListener();
  CMNotificationCenterGetDefaultLocalCenter();
  FigNotificationCenterRemoveWeakListener();
  if (*(DerivedStorage + 8) && *DerivedStorage == 2)
  {
    CMNotificationCenterGetDefaultLocalCenter();
    FigNotificationCenterRemoveWeakListener();
  }

  if ((*(DerivedStorage + 376) & 0xFFFFFFFE) == 2)
  {
    v5 = *(DerivedStorage + 320);
    if (!v5 || (FigEndpointAggregateGetClassID(), !CMBaseObjectIsMemberOfClass()))
    {
      APSLogErrorAt();
      v6 = 4294949690;
      goto LABEL_26;
    }

    endpointCluster_deactivateSubEndpoint(a1, v5, a2);
  }

  v7 = CMBaseObjectGetDerivedStorage();
  v13.length = CFArrayGetCount(*(v7 + 336));
  v13.location = 0;
  FirstIndexOfValue = CFArrayGetFirstIndexOfValue(*(v7 + 336), v13, a2);
  if (FirstIndexOfValue == -1)
  {
    APEndpointClusterRemoveSubEndpoint_cold_1();
  }

  else
  {
    CFArrayRemoveValueAtIndex(*(v7 + 336), FirstIndexOfValue);
    v9 = *(v7 + 384);
    if (v9)
    {
      FigSimpleMutexLock();
      CFDictionaryRemoveValue(*(v9 + 88), a2);
      updated = completionCallbackContext_updateStateFromResponses(v9);
      FigSimpleMutexUnlock();
      if (updated)
      {
        endpointCluster_handleClusterFatalError(a1, 4294949690, 1);
      }
    }
  }

  v11 = endpointCluster_updateFromSubEndpoint(a1, a2, 1, 1, 1, 1);
  if (v11)
  {
    v6 = v11;
    APEndpointClusterRemoveSubEndpoint_cold_2(v11);
  }

  else
  {
    endpointCluster_failDelayManageSubEndpoint(a1, a2, 2u);
    if (*(DerivedStorage + 432))
    {
      if (gLogCategory_APEndpointCluster <= 50 && (gLogCategory_APEndpointCluster != -1 || _LogCategory_Initialize()))
      {
        LogPrintF(&gLogCategory_APEndpointCluster, "OSStatus APEndpointClusterRemoveSubEndpoint(FigEndpointRef, FigEndpointRef)", 33554482, "[%{ptr}] Removing subEndpoint [%{ptr}] from failed subEndpoint set\n", a1, a2);
      }

      CFSetRemoveValue(*(DerivedStorage + 432), a2);
    }

    endpointCluster_updateHealthState(a1);
    v6 = 0;
  }

LABEL_26:
  FigSimpleMutexUnlock();
  return v6;
}

void endpointCluster_Finalize(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v3 = *(DerivedStorage + 40);
  if (v3)
  {
    dispatch_release(v3);
    *(DerivedStorage + 40) = 0;
  }

  FigSimpleMutexDestroy();
  if (*(DerivedStorage + 376))
  {
    if (gLogCategory_APEndpointCluster <= 100 && (gLogCategory_APEndpointCluster != -1 || _LogCategory_Initialize()))
    {
      endpointCluster_Finalize_cold_1(a1);
    }

    __break(1u);
  }

  else
  {
    if (gLogCategory_APEndpointCluster <= 50 && (gLogCategory_APEndpointCluster != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_APEndpointCluster, "void endpointCluster_Finalize(CMBaseObjectRef)", 33554482, "APEndpointCluster destroyed: [%{ptr}], clusterUUID: %@.\n", a1, *(DerivedStorage + 16));
    }

    v4 = *(DerivedStorage + 616);
    if (v4)
    {
      CFRelease(v4);
      *(DerivedStorage + 616) = 0;
    }

    v5 = *(DerivedStorage + 592);
    if (v5)
    {
      CFRelease(v5);
      *(DerivedStorage + 592) = 0;
    }

    v6 = *(DerivedStorage + 600);
    if (v6)
    {
      CFRelease(v6);
      *(DerivedStorage + 600) = 0;
    }

    v7 = *(DerivedStorage + 608);
    if (v7)
    {
      CFRelease(v7);
      *(DerivedStorage + 608) = 0;
    }

    v8 = *(DerivedStorage + 336);
    if (v8)
    {
      CFRelease(v8);
      *(DerivedStorage + 336) = 0;
    }

    v9 = *(DerivedStorage + 288);
    if (v9)
    {
      CFRelease(v9);
      *(DerivedStorage + 288) = 0;
    }

    v10 = *(DerivedStorage + 296);
    if (v10)
    {
      CFRelease(v10);
      *(DerivedStorage + 296) = 0;
    }

    v11 = *(DerivedStorage + 368);
    if (v11)
    {
      CFRelease(v11);
      *(DerivedStorage + 368) = 0;
    }

    v12 = *(DerivedStorage + 344);
    if (v12)
    {
      CFRelease(v12);
      *(DerivedStorage + 344) = 0;
    }

    v13 = *(DerivedStorage + 352);
    if (v13)
    {
      CFRelease(v13);
      *(DerivedStorage + 352) = 0;
    }

    v14 = *(DerivedStorage + 360);
    if (v14)
    {
      CFRelease(v14);
      *(DerivedStorage + 360) = 0;
    }

    v15 = *(DerivedStorage + 624);
    if (v15)
    {
      CFRelease(v15);
      *(DerivedStorage + 624) = 0;
    }

    v16 = *(DerivedStorage + 632);
    if (v16)
    {
      CFRelease(v16);
      *(DerivedStorage + 632) = 0;
    }

    v17 = *(DerivedStorage + 648);
    if (v17)
    {
      CFRelease(v17);
      *(DerivedStorage + 648) = 0;
    }

    v18 = *(DerivedStorage + 16);
    if (v18)
    {
      CFRelease(v18);
      *(DerivedStorage + 16) = 0;
    }

    v19 = *(DerivedStorage + 32);
    if (v19)
    {
      CFRelease(v19);
      *(DerivedStorage + 32) = 0;
    }

    v20 = *(DerivedStorage + 8);
    if (v20)
    {
      CFRelease(v20);
      *(DerivedStorage + 8) = 0;
    }

    v21 = *(DerivedStorage + 96);
    if (v21)
    {
      CFRelease(v21);
      *(DerivedStorage + 96) = 0;
    }

    v22 = *(DerivedStorage + 104);
    if (v22)
    {
      CFRelease(v22);
      *(DerivedStorage + 104) = 0;
    }

    v23 = *(DerivedStorage + 192);
    if (v23)
    {
      CFRelease(v23);
      *(DerivedStorage + 192) = 0;
    }
  }
}

uint64_t endpointCluster_SetProperty(uint64_t a1, const void *a2, const __CFBoolean *a3)
{
  CMBaseObjectGetDerivedStorage();
  if (!a2)
  {
    endpointCluster_SetProperty_cold_5();
    return 4294950576;
  }

  if (!a3)
  {
    endpointCluster_SetProperty_cold_4();
    return 4294950576;
  }

  FigSimpleMutexLock();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APEndpointCluster <= 30 && (gLogCategory_APEndpointCluster != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APEndpointCluster, "OSStatus endpointCluster_setPropertyInternal(FigEndpointRef, CFStringRef, CFTypeRef)", 33554462, "[%{ptr}] Setting property %@ with value %@.\n", a1, a2, a3);
  }

  if (CFEqual(a2, *MEMORY[0x277CC15A8]) || CFEqual(a2, *MEMORY[0x277CC15C0]))
  {
    v7 = CMBaseObjectGetDerivedStorage();
    Count = CFArrayGetCount(*(v7 + 336));
    if (gLogCategory_APEndpointCluster <= 30 && (gLogCategory_APEndpointCluster != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_APEndpointCluster, "OSStatus endpointCluster_setPropertyOnSubEndpoint(FigEndpointRef, APEndpointClusterSubEndpointPredicate, CFStringRef, CFTypeRef)", 33554462, "[%{ptr}] Setting property on subendpoint(s) %@ with value %@; subEndpointCount = %ld, predicate = %d.\n", a1, a2, a3, Count, 2);
    }

    if (Count >= 1)
    {
      SubEndpointVolumeLeader = endpointCluster_getSubEndpointVolumeLeader(a1);
      if (SubEndpointVolumeLeader)
      {
        v10 = SubEndpointVolumeLeader;
        CMBaseObject = FigEndpointGetCMBaseObject();
        v12 = *(*(CMBaseObjectGetVTable() + 8) + 56);
        if (v12)
        {
          v13 = v12(CMBaseObject, a2, a3);
          if (!v13)
          {
            goto LABEL_27;
          }
        }

        else
        {
          v13 = 4294954514;
        }

        APSLogErrorAt();
        if (gLogCategory_APEndpointCluster <= 90 && (gLogCategory_APEndpointCluster != -1 || _LogCategory_Initialize()))
        {
          LogPrintF(&gLogCategory_APEndpointCluster, "OSStatus endpointCluster_setPropertyOnSubEndpoint(FigEndpointRef, APEndpointClusterSubEndpointPredicate, CFStringRef, CFTypeRef)", 33554522, "Failed to set property '%@' on subEndpoint [%{ptr}] with error: %#m\n", a1, a2, v10, v13);
        }

        goto LABEL_26;
      }

      endpointCluster_SetProperty_cold_1();
    }

    v13 = 4294949690;
  }

  else
  {
    if (CFEqual(a2, *MEMORY[0x277CC12E0]))
    {
      Value = CFBooleanGetValue(a3);
      if (*(DerivedStorage + 509) == Value)
      {
        v13 = 0;
      }

      else
      {
        *(DerivedStorage + 509) = Value;
        v18 = endpointCluster_addOrRemoveLocalSubEndpointForEchoCancellationIfNeeded(a1);
        v13 = v18;
        if (v18)
        {
          endpointCluster_SetProperty_cold_2(v18);
        }
      }

      goto LABEL_27;
    }

    if (!*(DerivedStorage + 320))
    {
      endpointCluster_SetProperty_cold_3();
      v13 = 4294954509;
      goto LABEL_27;
    }

    v16 = FigEndpointGetCMBaseObject();
    v17 = *(*(CMBaseObjectGetVTable() + 8) + 56);
    if (v17)
    {
      v13 = v17(v16, a2, a3);
      if (!v13)
      {
        goto LABEL_27;
      }
    }

    else
    {
      v13 = 4294954514;
    }
  }

LABEL_26:
  APSLogErrorAt();
LABEL_27:
  FigSimpleMutexUnlock();
  return v13;
}

uint64_t endpointCluster_copyShowInfoDictionary(uint64_t a1, __CFDictionary **a2)
{
  v28 = *MEMORY[0x277D85DE8];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  value = 0;
  v26 = 0;
  v27 = 0;
  if (a2)
  {
    v5 = DerivedStorage;
    v6 = *MEMORY[0x277CBECE8];
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    if (!Mutable)
    {
      endpointCluster_copyShowInfoDictionary_cold_1();
      return 0;
    }

    v8 = Mutable;
    SNPrintF(&v26, 10, "[%{ptr}]", a1);
    CFDictionarySetCString();
    v9 = *MEMORY[0x277CBED28];
    CFDictionarySetValue(v8, @"IsClusterEndpoint", *MEMORY[0x277CBED28]);
    v10 = *MEMORY[0x277CBED10];
    if (*(v5 + 8))
    {
      v11 = v9;
    }

    else
    {
      v11 = *MEMORY[0x277CBED10];
    }

    CFDictionarySetValue(v8, @"IsLocal", v11);
    if (*(v5 + 376) == 3)
    {
      v12 = v9;
    }

    else
    {
      v12 = v10;
    }

    CFDictionarySetValue(v8, @"Activated", v12);
    v13 = *(v5 + 288);
    if (!v13)
    {
      v13 = *(v5 + 296);
    }

    CFDictionarySetValue(v8, @"Name", v13);
    endpointCluster_copyClusterCompositionAsArray(a1, &value);
    v14 = value;
    CFDictionarySetValue(v8, @"ClusterComposition", value);
    v15 = *(v5 + 368);
    if (v15)
    {
      CFDictionarySetValue(v8, @"ClusterLeaderUUID", v15);
    }

    CFDictionarySetValue(v8, @"PersistentGroupUUID", *(v5 + 16));
    v16 = APSClusterTypeToDescriptionString();
    CFDictionarySetValue(v8, @"PersistentGroupType", v16);
    CFDictionarySetInt64();
    Count = CFArrayGetCount(*(v5 + 336));
    if (Count <= 0)
    {
      *a2 = v8;
      if (!v14)
      {
        return 0;
      }
    }

    else
    {
      v18 = Count;
      v19 = CFArrayCreateMutable(v6, Count, MEMORY[0x277CBF128]);
      for (i = 0; i != v18; ++i)
      {
        cf = 0;
        CFArrayGetValueAtIndex(*(v5 + 336), i);
        CMBaseObject = FigEndpointGetCMBaseObject();
        v22 = *(*(CMBaseObjectGetVTable() + 8) + 48);
        if (v22)
        {
          v22(CMBaseObject, @"EndpointShowInfo", v6, &cf);
        }

        if (cf)
        {
          CFArrayAppendValue(v19, cf);
          if (cf)
          {
            CFRelease(cf);
          }
        }
      }

      CFDictionarySetValue(v8, @"SubEndpointShowInfoDicts", v19);
      *a2 = v8;
      if (v19)
      {
        CFRelease(v19);
      }

      if (!v14)
      {
        return 0;
      }
    }

    CFRelease(v14);
    return 0;
  }

  endpointCluster_copyShowInfoDictionary_cold_2();
  return 4294950576;
}

uint64_t endpointCluster_getClusterModelBasedOnClusterMembersModels(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v2 = *(DerivedStorage + 42);
  v3 = *DerivedStorage;

  return endpointCluster_getClusterModelBasedOnAnyMemberModels(v3, v2, &__block_literal_global_121);
}

uint64_t FigEndpointCopyProperty(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  CMBaseObject = FigEndpointGetCMBaseObject();
  v8 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v8)
  {
    return 4294954514;
  }

  return v8(CMBaseObject, a2, a3, a4);
}

CFTypeRef __endpointCluster_copyClusterHierarchyAsArray_block_invoke_3(uint64_t a1, uint64_t a2)
{
  result = FigCFDictionaryGetValue();
  if (result)
  {

    return CFRetain(result);
  }

  return result;
}

void __endpointCluster_getClusterModelBasedOnAnyMemberModels_block_invoke(void *a1)
{
  v2 = (*(a1[4] + 16))();
  if (v2)
  {
    v3 = v2;
    *(*(a1[5] + 8) + 24) |= CFStringHasPrefix(v2, @"AudioAccessory5");
    *(*(a1[6] + 8) + 24) |= CFStringHasPrefix(v3, @"AudioAccessory6");

    CFRelease(v3);
  }
}

uint64_t __endpointCluster_getClusterModelBasedOnClusterMembersModels_block_invoke(uint64_t a1, uint64_t a2)
{
  v5 = 0;
  CMBaseObject = FigEndpointGetCMBaseObject();
  v3 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v3)
  {
    return 0;
  }

  v3(CMBaseObject, *MEMORY[0x277CC1440], *MEMORY[0x277CBECE8], &v5);
  return v5;
}

__CFString *endpointCluster_subEndpointSupportProtocolCopyDebugDescription(uint64_t a1)
{
  Mutable = CFStringCreateMutable(*MEMORY[0x277CBECE8], 0);
  CFStringAppendFormat(Mutable, 0, @"APEndpointCluster <FigEndpointSubEndpointSupportProtocol> on <%p>", a1);
  return Mutable;
}

uint64_t endpointCluster_CopySubEndpointProperty(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APEndpointCluster <= 30 && (gLogCategory_APEndpointCluster != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APEndpointCluster, "OSStatus endpointCluster_CopySubEndpointProperty(FigEndpointRef, CFStringRef, CFStringRef, CFAllocatorRef, void *)", 33554462, "[%{ptr}] CopySubEndpointProperty(%@, %@) -> aggregate [%{ptr}]\n", a1, a2, a3, *(DerivedStorage + 320));
  }

  FigSimpleMutexLock();
  v11 = *(DerivedStorage + 320);
  FigEndpointSubEndpointSupportProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (!ProtocolVTable || (v13 = *(ProtocolVTable + 16)) == 0)
  {
    v16 = 4294954508;
LABEL_17:
    APSLogErrorAt();
    goto LABEL_18;
  }

  v14 = *(v13 + 8);
  if (!v14)
  {
    v16 = 4294954514;
    goto LABEL_17;
  }

  v15 = v14(v11, a2, a3, a4, a5);
  v16 = v15;
  if (v15 != -12784 && v15 != -6727 && v15 != 0)
  {
    goto LABEL_17;
  }

LABEL_18:
  FigSimpleMutexUnlock();
  return v16;
}

uint64_t endpointCluster_SetSubEndpointProperty(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APEndpointCluster <= 30 && (gLogCategory_APEndpointCluster != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APEndpointCluster, "OSStatus endpointCluster_SetSubEndpointProperty(FigEndpointRef, CFStringRef, CFStringRef, CFTypeRef)", 33554462, "[%{ptr}] SetSubEndpointProperty(%@, %@, %@) -> aggregate [%{ptr}]\n", a1, a2, a3, a4, *(DerivedStorage + 320));
  }

  FigSimpleMutexLock();
  v9 = *(DerivedStorage + 320);
  FigEndpointSubEndpointSupportProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (!ProtocolVTable || (v11 = *(ProtocolVTable + 16)) == 0)
  {
    v14 = 4294954508;
LABEL_17:
    APSLogErrorAt();
    goto LABEL_18;
  }

  v12 = *(v11 + 16);
  if (!v12)
  {
    v14 = 4294954514;
    goto LABEL_17;
  }

  v13 = v12(v9, a2, a3, a4);
  v14 = v13;
  if (v13 != -12784 && v13 != -6727 && v13 != 0)
  {
    goto LABEL_17;
  }

LABEL_18:
  FigSimpleMutexUnlock();
  return v14;
}

uint64_t endpointCluster_DumpHierarchy(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  Count = CFArrayGetCount(*(DerivedStorage + 336));
  FigSimpleMutexLock();
  v11 = *(DerivedStorage + 8);
  v12 = APSClusterTypeToDescriptionString();
  v13 = "Local";
  if (!v11)
  {
    v13 = "Remote";
  }

  v14 = (*(a5 + 16))(a5, a3, "ClusterEndpoint:[%{ptr}] (%s %@) %''@ PGUUID:%@ Parent:[%{ptr}]\n", a1, v13, v12, *(DerivedStorage + 288), *(DerivedStorage + 16), a2);
  if (v14)
  {
    v21 = v14;
    endpointCluster_DumpHierarchy_cold_1(v14);
    goto LABEL_21;
  }

  if (Count >= 1)
  {
    v15 = 0;
    while (1)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(*(DerivedStorage + 336), v15);
      APSHierarchyReporterProtocolGetProtocolID();
      ProtocolVTable = CMBaseObjectGetProtocolVTable();
      if (!ProtocolVTable)
      {
        break;
      }

      v18 = *(ProtocolVTable + 16);
      if (!v18)
      {
        break;
      }

      v19 = *(v18 + 8);
      if (!v19)
      {
        v21 = 4294954514;
        goto LABEL_15;
      }

      v20 = v19(ValueAtIndex, a1, a3 + 1, 0, a5);
      v21 = v20;
      if (v20 == -12782 || v20 == -12788)
      {
        goto LABEL_15;
      }

LABEL_16:
      if (v21)
      {
        endpointCluster_DumpHierarchy_cold_2(v21);
        goto LABEL_21;
      }

      if (Count == ++v15)
      {
        goto LABEL_20;
      }
    }

    v21 = 4294954508;
LABEL_15:
    v21 = (*(a5 + 16))(a5, a3 + 1, "[Error] Object:[%{ptr}]%?s%?''@ cannot be dumped (error %#m) Parent:[%{ptr}]\n", ValueAtIndex, 0, " ", 0, 0, v21, a1);
    goto LABEL_16;
  }

LABEL_20:
  v21 = 0;
LABEL_21:
  FigSimpleMutexUnlock();
  return v21;
}

uint64_t endpointCluster_Activate(const void *a1, uint64_t a2, const __CFDictionary *a3, uint64_t a4, uint64_t a5)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v10 = "no";
  if (a3)
  {
    CFStringGetTypeID();
    TypedValue = CFDictionaryGetTypedValue();
    v14 = a2;
    Int64 = CFDictionaryGetInt64();
    CFStringGetTypeID();
    v11 = CFDictionaryGetTypedValue();
    CFStringGetTypeID();
    v12 = CFDictionaryGetTypedValue();
    v16 = Int64 == 0;
    a2 = v14;
    if (!v16)
    {
      v10 = "yes";
    }
  }

  else
  {
    v11 = 0;
    v12 = 0;
    TypedValue = 0;
  }

  v17 = &unk_27CFF1000;
  if (gLogCategory_APEndpointCluster <= 50 && (gLogCategory_APEndpointCluster != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APEndpointCluster, "OSStatus endpointCluster_Activate(FigEndpointRef, FigEndpointFeatures, CFDictionaryRef, FigEndpointActivationCompletionCallback, void *)", 33554482, "[%{ptr}] <AirPlayActivation> Activating cluster endpoint with features %#ll{flags} (primaryUsage: %@, routingContextUUID: %@, isPerAppDisplay: %s, hijackID: %'@)\n", a1, a2, &unk_222298620, v11, v12, v10, TypedValue);
  }

  FigSimpleMutexLock();
  if (*(DerivedStorage + 442))
  {
    endpointCluster_Activate_cold_1();
    updated = 4294950573;
    goto LABEL_70;
  }

  if (endpointCluster_usesPersistentConnection(a1) && !CFDictionaryGetInt64())
  {
    if (*(DerivedStorage + 376))
    {
      updated = endpointCluster_updateFeaturesInternal(a1, 1, *(DerivedStorage + 400) | a2, a3, a4, a5);
      goto LABEL_55;
    }

    if (endpointCluster_Activate_cold_2())
    {
      v49 = 0;
      updated = 4294951716;
LABEL_77:
      endpointCluster_CallActivationCompletionCallback(a1, *(DerivedStorage + 456), v49, updated, a4, a5);
      goto LABEL_55;
    }

    updated = v52;
LABEL_70:
    v48 = v17[654];
    if (v48 <= 50 && (v48 != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_APEndpointCluster, "OSStatus endpointCluster_Activate(FigEndpointRef, FigEndpointFeatures, CFDictionaryRef, FigEndpointActivationCompletionCallback, void *)", 33554482, "[%{ptr}] Cluster endpoint activation failed with error: %#m\n", a1, updated);
    }

    if (updated == -16727)
    {
      v49 = a2;
    }

    else
    {
      v49 = 0;
    }

    goto LABEL_77;
  }

  if (*(DerivedStorage + 376))
  {
    endpointCluster_Activate_cold_3();
    updated = 4294950569;
    goto LABEL_70;
  }

  if (*(DerivedStorage + 320))
  {
    endpointCluster_Activate_cold_4();
    updated = 4294949690;
    goto LABEL_70;
  }

  if (CFArrayGetCount(*(DerivedStorage + 336)) <= 0)
  {
    endpointCluster_Activate_cold_11();
    updated = 4294895306;
    goto LABEL_70;
  }

  APSEventRecorderRecordEventWithFlags();
  v18 = *MEMORY[0x277CBECE8];
  v19 = *(DerivedStorage + 288);
  if (!v19)
  {
    v19 = *(DerivedStorage + 296);
  }

  AsCluster = APEndpointAggregateCreateAsCluster(*MEMORY[0x277CBECE8], *(DerivedStorage + 16), v19, *(DerivedStorage + 8) != 0, a1, *(DerivedStorage + 32), *(DerivedStorage + 104), (DerivedStorage + 320));
  if (AsCluster)
  {
    updated = AsCluster;
    endpointCluster_Activate_cold_5(AsCluster);
    goto LABEL_70;
  }

  CMNotificationCenterGetDefaultLocalCenter();
  FigNotificationCenterAddWeakListener();
  CMNotificationCenterGetDefaultLocalCenter();
  FigNotificationCenterAddWeakListener();
  *(DerivedStorage + 416) = 1;
  if (!a3)
  {
    goto LABEL_24;
  }

  if (CFDictionaryGetInt64())
  {
    *(DerivedStorage + 416) = 0;
    goto LABEL_25;
  }

  if (*(DerivedStorage + 416))
  {
LABEL_24:
    CMNotificationCenterGetDefaultLocalCenter();
    APSRemoteConfigGetShared();
    FigNotificationCenterAddWeakListener();
  }

LABEL_25:
  v22 = *(DerivedStorage + 320);
  v23 = *(*(CMBaseObjectGetVTable() + 16) + 48);
  if (v23)
  {
    v23(v22, DerivedStorage + 208);
  }

  if (*DerivedStorage == 3)
  {
    v24 = *(DerivedStorage + 320);
    v25 = *(*(CMBaseObjectGetVTable() + 16) + 56);
    if (v25)
    {
      v25(v24, DerivedStorage + 248);
    }
  }

  if (gLogCategory_APEndpointCluster <= 50 && (gLogCategory_APEndpointCluster != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APEndpointCluster, "OSStatus endpointCluster_Activate(FigEndpointRef, FigEndpointFeatures, CFDictionaryRef, FigEndpointActivationCompletionCallback, void *)", 33554482, "[%{ptr}] Created internal aggregate endpoint [%{ptr}]; inOptions = %@\n", a1, *(DerivedStorage + 320), a3);
  }

  v26 = endpointCluster_updateActivationState(a1, a3, 0);
  if (v26)
  {
    updated = v26;
    goto LABEL_70;
  }

  allocator = v18;
  v29 = a2;
  v30 = a5;
  if (a3 && !CFDictionaryGetInt64())
  {
    APSRTCReportingAgentCreate();
  }

  v31 = *(DerivedStorage + 456) + 1;
  *(DerivedStorage + 456) = v31;
  v32 = *(DerivedStorage + 8) != 0;
  v33 = *(DerivedStorage + 184);
  v34 = *DerivedStorage;
  v35 = *(DerivedStorage + 24);
  if (gLogCategory_APEndpointCluster <= 30 && (gLogCategory_APEndpointCluster != -1 || _LogCategory_Initialize()))
  {
    endpointCluster_Activate_cold_6(a1, v27, v28);
  }

  if (gCompletionCallbackContextInitOnce != -1)
  {
    endpointCluster_Activate_cold_7();
  }

  Instance = _CFRuntimeCreateInstance();
  v37 = Instance;
  if (!Instance)
  {
    updated = 4294960568;
    v47 = 6188;
    a5 = v30;
    a2 = v29;
LABEL_66:
    v17 = &unk_27CFF1000;
LABEL_68:
    endpointCluster_Activate_cold_10(v37 == 0, updated, v37, a1, v47);
    goto LABEL_70;
  }

  *(Instance + 96) = 0;
  *(Instance + 64) = 0u;
  *(Instance + 80) = 0u;
  *(Instance + 32) = 0u;
  *(Instance + 48) = 0u;
  *(Instance + 16) = 0u;
  *(Instance + 16) = CFRetain(a1);
  *(v37 + 24) = v32;
  *(v37 + 28) = v33;
  *(v37 + 32) = v34;
  *(v37 + 40) = v35;
  *(v37 + 48) = v31;
  a2 = v29;
  *(v37 + 56) = v29;
  *(v37 + 64) = a4;
  a5 = v30;
  *(v37 + 72) = v30;
  v38 = FigSimpleMutexCreate();
  *(v37 + 80) = v38;
  if (!v38)
  {
    updated = 4294950575;
    v47 = 6202;
    goto LABEL_66;
  }

  Mutable = CFDictionaryCreateMutable(allocator, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  *(v37 + 88) = Mutable;
  v17 = &unk_27CFF1000;
  if (!Mutable)
  {
    updated = 4294950575;
    v47 = 6206;
    goto LABEL_68;
  }

  *(DerivedStorage + 384) = v37;
  CFArrayGetCount(*(DerivedStorage + 336));
  CFArrayApplyBlock();
  v40 = malloc_type_calloc(1uLL, 0x18uLL, 0x60040A44E5E0CuLL);
  if (!v40)
  {
    endpointCluster_Activate_cold_9();
    updated = 4294950575;
    goto LABEL_70;
  }

  v41 = v40;
  *v40 = CFRetain(*(DerivedStorage + 320));
  v42 = *(DerivedStorage + 448);
  if (v42)
  {
    v42 = CFRetain(v42);
  }

  v41[1] = v42;
  v41[2] = CFRetain(*(DerivedStorage + 384));
  *(DerivedStorage + 376) = 1;
  endpointCluster_postIsInUseDidChangeNotification(a1, 1);
  *(DerivedStorage + 441) = endpointCluster_isEngaged(a1);
  endpointCluster_updateHealthState(a1);
  if (gLogCategory_APEndpointCluster <= 50 && (gLogCategory_APEndpointCluster != -1 || _LogCategory_Initialize()))
  {
    endpointCluster_Activate_cold_8((DerivedStorage + 441), a1);
  }

  *(DerivedStorage + 400) = v29;
  *(DerivedStorage + 508) = 0;
  v43 = *(DerivedStorage + 320);
  v44 = *(DerivedStorage + 448);
  v45 = *(*(CMBaseObjectGetVTable() + 16) + 8);
  if (v45)
  {
    v45(v43, v29, v44, endpointCluster_handleInternalAggregateActivationCompletionCallback, v41);
  }

  updated = 0;
  *(DerivedStorage + 328) = 1;
LABEL_55:
  FigSimpleMutexUnlock();
  return updated;
}

uint64_t endpointCluster_Deactivate(const void *a1, const __CFDictionary *a2, uint64_t a3, uint64_t a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APEndpointCluster <= 50 && (gLogCategory_APEndpointCluster != -1 || _LogCategory_Initialize()))
  {
    endpointCluster_Deactivate_cold_1(DerivedStorage, a1);
  }

  FigSimpleMutexLock();
  if (!*(DerivedStorage + 376))
  {
    endpointCluster_Deactivate_cold_6(DerivedStorage, a1, &v19);
    updated = v19;
    goto LABEL_44;
  }

  if (!*(DerivedStorage + 320))
  {
    endpointCluster_Deactivate_cold_5();
    updated = 4294951716;
LABEL_44:
    endpointCluster_CallCompletionCallback(a1, *(DerivedStorage + 456), *(DerivedStorage + 400), updated, a3, a4);
    if (*(DerivedStorage + 488))
    {
      if (gLogCategory_APEndpointCluster <= 50 && (gLogCategory_APEndpointCluster != -1 || _LogCategory_Initialize()))
      {
        endpointCluster_Deactivate_cold_7(a1);
      }

      endpointCluster_updateClusterChangeProgress(a1, 1, 0);
    }

    goto LABEL_18;
  }

  endpointCluster_sendActivationMetrics(a1, 251);
  *(DerivedStorage + 641) = 0;
  if (!*(DerivedStorage + 8))
  {
LABEL_15:
    v9 = 1;
LABEL_16:
    v10 = malloc_type_calloc(1uLL, 0x38uLL, 0x10A0040069F93ABuLL);
    if (v10)
    {
      v11 = v10;
      *v10 = CFRetain(a1);
      v12 = CFRetain(*(DerivedStorage + 320));
      *(v11 + 24) = *(DerivedStorage + 456);
      v13 = *(DerivedStorage + 400);
      *(v11 + 8) = v12;
      *(v11 + 16) = v13;
      *(v11 + 32) = *(DerivedStorage + 488);
      *(v11 + 33) = *(DerivedStorage + 508);
      *(v11 + 34) = v9;
      *(v11 + 40) = a3;
      *(v11 + 48) = a4;
      endpointCluster_cancelPendingUpdateFeatureRequests(a1, -16728);
      endpointCluster_resetActivationState(a1, a2, endpointCluster_handleInternalAggregateDeactivationCompletionCallback, v11);
      updated = 0;
      goto LABEL_18;
    }

    endpointCluster_Deactivate_cold_4();
    updated = 4294950575;
    goto LABEL_44;
  }

  if (CFDictionaryGetInt64())
  {
    if (gLogCategory_APEndpointCluster <= 50 && (gLogCategory_APEndpointCluster != -1 || _LogCategory_Initialize()))
    {
      endpointCluster_Deactivate_cold_2(a1);
    }

    if (*(DerivedStorage + 488) || !CFDictionaryGetInt64())
    {
      if (*DerivedStorage != 1)
      {
        goto LABEL_15;
      }

      v18 = 4294895303;
      if (gLogCategory_APEndpointCluster > 50)
      {
        v9 = 0;
      }

      else
      {
        if (gLogCategory_APEndpointCluster != -1)
        {
          v9 = 0;
LABEL_35:
          LogPrintF(&gLogCategory_APEndpointCluster, "OSStatus endpointCluster_Deactivate(FigEndpointRef, CFDictionaryRef, FigEndpointActivationCompletionCallback, void *)", 33554482, "[%{ptr}] <AirPlayActivation> Simulating failure on SPPC deactivation", a1);
          goto LABEL_39;
        }

        v9 = 0;
        if (_LogCategory_Initialize())
        {
          goto LABEL_35;
        }
      }

LABEL_39:
      endpointCluster_updateStatus(a1, v18, 1, 0);
      goto LABEL_16;
    }

    v18 = 4294895304;
    if (gLogCategory_APEndpointCluster > 50)
    {
      v9 = 1;
      goto LABEL_39;
    }

    if (gLogCategory_APEndpointCluster == -1)
    {
      v18 = 4294895304;
      v9 = 1;
      if (!_LogCategory_Initialize())
      {
        goto LABEL_39;
      }
    }

    else
    {
      v9 = 1;
    }

    LogPrintF(&gLogCategory_APEndpointCluster, "OSStatus endpointCluster_Deactivate(FigEndpointRef, CFDictionaryRef, FigEndpointActivationCompletionCallback, void *)", 33554482, "[%{ptr}] <AirPlayActivation> Forcing cluster failure for deactivation", a1);
    goto LABEL_39;
  }

  v16 = *(DerivedStorage + 400);
  if (!endpointCluster_usesPersistentConnection(a1))
  {
    goto LABEL_15;
  }

  v17 = (v16 & (32 * (*DerivedStorage == 2)));
  if (gLogCategory_APEndpointCluster <= 50 && (gLogCategory_APEndpointCluster != -1 || _LogCategory_Initialize()))
  {
    endpointCluster_Deactivate_cold_3(DerivedStorage, a1, v16, v17);
  }

  updated = endpointCluster_updateFeaturesInternal(a1, 2, v17, a2, a3, a4);
LABEL_18:
  FigSimpleMutexUnlock();
  return updated;
}

uint64_t endpointCluster_Dissociate(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 8))
  {
    if (gLogCategory_APEndpointCluster <= 50 && (gLogCategory_APEndpointCluster != -1 || _LogCategory_Initialize()))
    {
      endpointCluster_Dissociate_cold_1(a1);
    }

    CMNotificationCenterGetDefaultLocalCenter();
    FigNotificationCenterRemoveWeakListener();
    CMNotificationCenterGetDefaultLocalCenter();
    FigNotificationCenterRemoveWeakListener();
    CMNotificationCenterGetDefaultLocalCenter();
    FigNotificationCenterRemoveWeakListener();
    CMNotificationCenterGetDefaultLocalCenter();
    FigNotificationCenterRemoveWeakListener();
  }

  FigSimpleMutexLock();
  *(DerivedStorage + 442) = 1;
  if (gLogCategory_APEndpointCluster <= 50 && (gLogCategory_APEndpointCluster != -1 || _LogCategory_Initialize()))
  {
    endpointCluster_Dissociate_cold_2(DerivedStorage, (DerivedStorage + 8), a1);
  }

  FigSimpleMutexUnlock();
  CMNotificationCenterGetDefaultLocalCenter();
  FigDispatchAsyncPostNotification();
  return 0;
}

uint64_t endpointCluster_SetDelegate(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = *(a2 + 16);
    v12[0] = *a2;
    v12[1] = v3;
    v13 = *(a2 + 32);
    v10[1] = 0;
    v10[0] = *&v12[0];
    v11 = *(a2 + 48);
    v4 = endpointCluster_SetDelegateRouting(a1, v12);
    if (v4)
    {
      v6 = v4;
      endpointCluster_SetDelegate_cold_1(v4);
    }

    else
    {
      v5 = endpointCluster_SetDelegateRemoteControl(a1, v10);
      v6 = v5;
      if (v5)
      {
        endpointCluster_SetDelegate_cold_2(v5);
      }
    }
  }

  else
  {
    v7 = endpointCluster_SetDelegateRouting(a1, 0);
    if (v7)
    {
      v6 = v7;
      endpointCluster_SetDelegate_cold_3(v7);
    }

    else
    {
      v8 = endpointCluster_SetDelegateRemoteControl(a1, 0);
      v6 = v8;
      if (v8)
      {
        endpointCluster_SetDelegate_cold_4(v8);
      }
    }
  }

  return v6;
}

uint64_t endpointCluster_CreatePlaybackSession(uint64_t a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  if (*(DerivedStorage + 376) != 3)
  {
    endpointCluster_CreatePlaybackSession_cold_1();
    v6 = 4294949690;
    goto LABEL_7;
  }

  v4 = *(DerivedStorage + 320);
  v5 = *(*(CMBaseObjectGetVTable() + 16) + 72);
  if (!v5)
  {
    v6 = 4294954514;
LABEL_6:
    APSLogErrorAt();
    goto LABEL_7;
  }

  v6 = v5(v4, a2);
  if (v6)
  {
    goto LABEL_6;
  }

LABEL_7:
  FigSimpleMutexUnlock();
  return v6;
}

uint64_t endpointCluster_UpdateFeatures(const void *a1, uint64_t a2, const __CFDictionary *a3, uint64_t a4, uint64_t a5)
{
  CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  updated = endpointCluster_updateFeaturesInternal(a1, 0, a2, a3, a4, a5);
  FigSimpleMutexUnlock();
  return updated;
}

uint64_t endpointCluster_updateFeaturesInternal(const void *a1, int a2, uint64_t a3, const __CFDictionary *a4, uint64_t a5, uint64_t a6)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APEndpointCluster <= 50 && (gLogCategory_APEndpointCluster != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APEndpointCluster, "OSStatus endpointCluster_updateFeaturesInternal(FigEndpointRef, APExternalClientOperationType, FigEndpointFeatures, CFDictionaryRef, FigEndpointActivationCompletionCallback, void *)", 33554482, "[%{ptr}] UpdateFeatures with features %#ll{flags} -> %#ll{flags}, options %@\n", a1, *(DerivedStorage + 400), &unk_222298620, a3, &unk_222298620, a4);
  }

  v13 = *(DerivedStorage + 376);
  if (!v13)
  {
    endpointCluster_updateFeaturesInternal_cold_7();
    goto LABEL_71;
  }

  v14 = *(DerivedStorage + 488);
  if (*(DerivedStorage + 488) || *(DerivedStorage + 508))
  {
    if (gLogCategory_APEndpointCluster > 90)
    {
      v34 = 0;
      v30 = 4294951716;
LABEL_86:
      endpointCluster_CallCompletionCallback(a1, *(DerivedStorage + 456), v34, v30, a5, a6);
      endpointCluster_updateFeaturesFromSavedIfNeeded(a1);
      return v30;
    }

    if (gLogCategory_APEndpointCluster == -1)
    {
      if (!_LogCategory_Initialize())
      {
LABEL_75:
        v30 = 4294951716;
        goto LABEL_79;
      }

      v14 = *(DerivedStorage + 488);
    }

    if (*(DerivedStorage + 508))
    {
      v32 = 116;
    }

    else
    {
      v32 = 102;
    }

    if (v14)
    {
      v33 = 116;
    }

    else
    {
      v33 = 102;
    }

    LogPrintF(&gLogCategory_APEndpointCluster, "OSStatus endpointCluster_updateFeaturesInternal(FigEndpointRef, APExternalClientOperationType, FigEndpointFeatures, CFDictionaryRef, FigEndpointActivationCompletionCallback, void *)", 33554522, "[%{ptr}] Skipping updateFeatures b/c changing=%c or failing=%c\n", a1, v33, v32);
    goto LABEL_75;
  }

  if (v13 == 3)
  {
    if (*(DerivedStorage + 400) == a3)
    {
      APSLogErrorAt();
      if (a2 == 2)
      {
        v30 = 4294951716;
      }

      else
      {
        v30 = 4294950569;
      }

      goto LABEL_79;
    }

    if (*(DerivedStorage + 320))
    {
      if (a2 != 1)
      {
LABEL_14:
        *(DerivedStorage + 400) = a3;
        v16 = malloc_type_calloc(1uLL, 0x28uLL, 0x10A00407034790EuLL);
        if (v16)
        {
          v17 = v16;
          *v16 = a1;
          CFRetain(a1);
          v18 = *(DerivedStorage + 456);
          v17[1] = a3;
          v17[2] = v18;
          v17[3] = a5;
          v17[4] = a6;
          endpointCluster_addOrRemoveLocalSubEndpointForEchoCancellationIfNeeded(a1);
          v19 = *(DerivedStorage + 320);
          v20 = *(*(CMBaseObjectGetVTable() + 16) + 80);
          if (v20)
          {
            v20(v19, a3, a4, endpointCluster_handleAggregateEndpointUpdateFeaturesCompleted, v17);
          }

          return 0;
        }

        endpointCluster_updateFeaturesInternal_cold_5();
        v30 = 4294950575;
        goto LABEL_79;
      }

      updated = endpointCluster_updateActivationState(a1, a4, *(DerivedStorage + 448));
      if (!updated)
      {
        a4 = *(DerivedStorage + 448);
        goto LABEL_14;
      }

      v30 = updated;
LABEL_79:
      if (gLogCategory_APEndpointCluster <= 50 && (gLogCategory_APEndpointCluster != -1 || _LogCategory_Initialize()))
      {
        LogPrintF(&gLogCategory_APEndpointCluster, "OSStatus endpointCluster_updateFeaturesInternal(FigEndpointRef, APExternalClientOperationType, FigEndpointFeatures, CFDictionaryRef, FigEndpointActivationCompletionCallback, void *)", 33554482, "[%{ptr}] Cluster endpoint UpdateFeatures failed with error: %#m\n", a1, v30);
      }

      if (v30 == -16727)
      {
        v34 = a3;
      }

      else
      {
        v34 = 0;
      }

      goto LABEL_86;
    }

    endpointCluster_updateFeaturesInternal_cold_6();
LABEL_71:
    v30 = 4294949690;
    goto LABEL_79;
  }

  v21 = CMBaseObjectGetDerivedStorage();
  Count = CFArrayGetCount(*(v21 + 624));
  if (Count <= 0)
  {
    v25 = gLogCategory_APEndpointCluster;
  }

  else
  {
    v36 = a6;
    v23 = Count - 1;
    ValueAtIndex = CFArrayGetValueAtIndex(*(v21 + 624), Count - 1);
    v25 = gLogCategory_APEndpointCluster;
    if (gLogCategory_APEndpointCluster <= 40)
    {
      if (gLogCategory_APEndpointCluster != -1 || _LogCategory_Initialize())
      {
        LogPrintF(&gLogCategory_APEndpointCluster, "Boolean endpointCluster_updateFeaturesCancelsOutPrevious(FigEndpointRef, APExternalClientOperationType, FigEndpointFeatures, CFDictionaryRef, FigEndpointActivationCompletionCallback, void *)", 33554472, "[%{ptr}] comparing previous UpdateFeatures #%ld: 0x%llx vs. new 0x%llx for cancellation\n", a1, v23, ValueAtIndex[3], a3);
      }

      v25 = gLogCategory_APEndpointCluster;
    }

    if (a2 == 2 && *(ValueAtIndex + 4) == 1)
    {
      if (v25 <= 50)
      {
        if (v25 != -1 || _LogCategory_Initialize())
        {
          endpointCluster_updateFeaturesInternal_cold_1(a1);
        }

        if (gLogCategory_APEndpointCluster <= 50 && (gLogCategory_APEndpointCluster != -1 || _LogCategory_Initialize()))
        {
          LogPrintF(&gLogCategory_APEndpointCluster, "Boolean endpointCluster_updateFeaturesCancelsOutPrevious(FigEndpointRef, APExternalClientOperationType, FigEndpointFeatures, CFDictionaryRef, FigEndpointActivationCompletionCallback, void *)", 33554482, "[%{ptr}] Calling previous UpdateFeatures callback: 0x%llx, seed %llu with error %#m\n", a1, ValueAtIndex[3], *(v21 + 456), 4294949692);
        }
      }

      endpointCluster_CallCompletionCallback(a1, *(v21 + 456), 0, 0xFFFFBB3C, ValueAtIndex[5], ValueAtIndex[6]);
      if (gLogCategory_APEndpointCluster <= 50 && (gLogCategory_APEndpointCluster != -1 || _LogCategory_Initialize()))
      {
        LogPrintF(&gLogCategory_APEndpointCluster, "Boolean endpointCluster_updateFeaturesCancelsOutPrevious(FigEndpointRef, APExternalClientOperationType, FigEndpointFeatures, CFDictionaryRef, FigEndpointActivationCompletionCallback, void *)", 33554482, "[%{ptr}] Calling new UpdateFeatures callback: 0x%llx, seed %llu with error %#m\n", a1, a3, *(v21 + 456), 0);
      }

      endpointCluster_CallCompletionCallback(a1, *(v21 + 456), a3, 0, a5, v36);
      CFArrayRemoveValueAtIndex(*(v21 + 624), v23);
      return 0;
    }

    a6 = v36;
  }

  if (v25 <= 50 && (v25 != -1 || _LogCategory_Initialize()))
  {
    endpointCluster_updateFeaturesInternal_cold_2(a1);
  }

  v26 = CMBaseObjectGetDerivedStorage();
  if (gUpdateFeaturesRequestInitOnce != -1)
  {
    endpointCluster_updateFeaturesInternal_cold_3();
  }

  Instance = _CFRuntimeCreateInstance();
  v28 = Instance;
  if (!Instance)
  {
    v30 = 4294960568;
    v35 = 7467;
LABEL_78:
    endpointCluster_updateFeaturesInternal_cold_4(v28 == 0, v30, v28, v35);
    goto LABEL_79;
  }

  *(Instance + 48) = 0;
  *(Instance + 16) = 0u;
  *(Instance + 32) = 0u;
  if (gLogCategory_APEndpointCluster <= 50 && (gLogCategory_APEndpointCluster != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APEndpointCluster, "OSStatus UpdateFeaturesRequestCreate(APExternalClientOperationType, FigEndpointFeatures, CFDictionaryRef, FigEndpointActivationCompletionCallback, void *, UpdateFeaturesRequestRef *)", 33554482, "[%{ptr}] UpdateFeaturesRequest Creating with 0x%llx, %@\n", v28, a3, a4);
  }

  *(v28 + 24) = a3;
  if (a4)
  {
    Copy = CFDictionaryCreateCopy(*MEMORY[0x277CBECE8], a4);
    *(v28 + 32) = Copy;
    if (!Copy)
    {
      v30 = 4294950575;
      v35 = 7475;
      goto LABEL_78;
    }
  }

  *(v28 + 16) = a2;
  *(v28 + 40) = a5;
  *(v28 + 48) = a6;
  CFArrayAppendValue(*(v26 + 624), v28);
  CFRelease(v28);
  return 0;
}

void endpointCluster_forwardInternalAggregateNotification(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  CMBaseObjectGetDerivedStorage();
  MutableCopy = FigCFDictionaryCreateMutableCopy();
  if (MutableCopy)
  {
    v6 = MutableCopy;
    if (FigCFEqual())
    {
      FigSimpleMutexLock();
      CFDictionarySetInt64();
      FigSimpleMutexUnlock();
    }

    CMNotificationCenterGetDefaultLocalCenter();
    FigDispatchAsyncPostNotification();

    CFRelease(v6);
  }

  else
  {
    endpointCluster_forwardInternalAggregateNotification_cold_1();
  }
}

double endpointCluster_handleSubEndpointEngagedStateChanged(uint64_t a1, const void *a2, uint64_t a3, uint64_t a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  if (*(DerivedStorage + 320) != a4)
  {
    endpointCluster_updateIdleState(a2);
  }

  endpointCluster_updateEngagedState(a2);

  FigSimpleMutexUnlock();
  return result;
}

uint64_t endpointCluster_updateActivationState(const void *a1, uint64_t a2, uint64_t a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  MutableCopy = FigCFDictionaryCreateMutableCopy();
  if (MutableCopy)
  {
    v7 = MutableCopy;
    if (a2)
    {
      CFDictionaryMergeDictionary();
    }

    CFStringGetTypeID();
    TypedValue = CFDictionaryGetTypedValue();
    CFStringGetTypeID();
    v9 = CFDictionaryGetTypedValue();
    CFStringGetTypeID();
    v10 = CFDictionaryGetTypedValue();
    Int64 = CFDictionaryGetInt64();
    v12 = *MEMORY[0x277CBED28];
    CFDictionarySetValue(v7, @"NoIdleTimeout", *MEMORY[0x277CBED28]);
    if (*DerivedStorage == 2 && !*(DerivedStorage + 8))
    {
      CFDictionarySetValue(v7, @"IsRemoteHTGroup", v12);
    }

    CFDictionarySetInt64();
    if (*(DerivedStorage + 8))
    {
      v13 = v12;
    }

    else
    {
      v13 = *MEMORY[0x277CBED10];
    }

    CFDictionarySetValue(v7, @"IsPartOfLocalCluster", v13);
    CFDictionarySetValue(v7, @"Container", a1);
    v14 = *(DerivedStorage + 448);
    *(DerivedStorage + 448) = v7;
    CFRetain(v7);
    if (v14)
    {
      CFRelease(v14);
    }

    v15 = *(DerivedStorage + 472);
    *(DerivedStorage + 472) = v9;
    if (v9)
    {
      CFRetain(v9);
    }

    if (v15)
    {
      CFRelease(v15);
    }

    v16 = *(DerivedStorage + 480);
    *(DerivedStorage + 480) = v10;
    if (v10)
    {
      CFRetain(v10);
    }

    if (v16)
    {
      CFRelease(v16);
    }

    *(DerivedStorage + 444) = Int64 != 0;
    if (Int64)
    {
      *(DerivedStorage + 496) = 1;
      *(DerivedStorage + 504) = 0;
    }

    v17 = *(DerivedStorage + 464);
    *(DerivedStorage + 464) = TypedValue;
    if (TypedValue)
    {
      CFRetain(TypedValue);
    }

    if (v17)
    {
      CFRelease(v17);
    }

    CFRelease(v7);
    return 0;
  }

  else
  {
    endpointCluster_updateActivationState_cold_1();
    return 4294950575;
  }
}

void endpointCluster_postIsInUseDidChangeNotification(uint64_t a1, int a2)
{
  CMBaseObjectGetDerivedStorage();
  Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (Mutable)
  {
    v5 = Mutable;
    v6 = MEMORY[0x277CBED10];
    if (a2)
    {
      v6 = MEMORY[0x277CBED28];
    }

    CFDictionarySetValue(Mutable, @"IsInUse", *v6);
    if (gLogCategory_APEndpointCluster <= 30 && (gLogCategory_APEndpointCluster != -1 || _LogCategory_Initialize()))
    {
      endpointCluster_postIsInUseDidChangeNotification_cold_1(a1, v7, v8);
    }

    CMNotificationCenterGetDefaultLocalCenter();
    FigDispatchAsyncPostNotification();

    CFRelease(v5);
  }

  else
  {
    endpointCluster_postIsInUseDidChangeNotification_cold_2();
  }
}

uint64_t endpointCluster_isEngaged(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if ((!*(DerivedStorage + 8) || endpointCluster_usesPersistentConnection(a1)) && *(DerivedStorage + 376) || !endpointCluster_isIdle(a1))
  {
    return 1;
  }

  result = *(DerivedStorage + 320);
  if (result)
  {
    return APSGetFBOPropertyInt64() != 0;
  }

  return result;
}

void endpointCluster_handleInternalAggregateActivationCompletionCallback(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4, uint64_t a5)
{
  v8 = *(*(a5 + 16) + 16);
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v10 = *(DerivedStorage + 112);
  if (v10)
  {
    if (gLogCategory_APEndpointCluster <= 50)
    {
      if (gLogCategory_APEndpointCluster != -1 || (v11 = _LogCategory_Initialize(), v10 = *(DerivedStorage + 112), v11))
      {
        LogPrintF(&gLogCategory_APEndpointCluster, "void endpointCluster_handleInternalAggregateActivationCompletionCallback(FigEndpointRef, FigEndpointFeatures, uint64_t, OSStatus, void *)", 33554482, "[%{ptr}] Wait for %u secs before activating subEndpoints after internal aggregate activation\n", v8, v10);
        LODWORD(v10) = *(DerivedStorage + 112);
      }
    }

    sleep(v10);
  }

  FigSimpleMutexLock();
  if (a4)
  {
    *(DerivedStorage + 328) = 0;
  }

  v12 = *(a5 + 16);
  if (*(v12 + 48) != *(DerivedStorage + 456))
  {
    v14 = 4294949692;
    goto LABEL_16;
  }

  v13 = *(DerivedStorage + 376);
  if (!a4 && v13 == 1)
  {
    *(DerivedStorage + 376) = 2;
    if (gLogCategory_APEndpointCluster <= 50 && (gLogCategory_APEndpointCluster != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_APEndpointCluster, "void endpointCluster_handleInternalAggregateActivationCompletionCallback(FigEndpointRef, FigEndpointFeatures, uint64_t, OSStatus, void *)", 33554482, "[%{ptr}] Cluster aggregate [%{ptr}] activated\n", v8, a1);
    }

    if (CFArrayGetCount(*(DerivedStorage + 336)) > 0)
    {
      if (*(DerivedStorage + 8))
      {
        if (APSIsLocalClusterWithStaticLeadershipEnabled())
        {
          endpointCluster_manageActivationTimeoutTimer(v8, *(a5 + 16), 1);
        }

        else if (*DerivedStorage != 2 || *(DerivedStorage + 184) != 7)
        {
          goto LABEL_25;
        }

        endpointCluster_handleSubEndpointResult(v8, *(a5 + 16), *(DerivedStorage + 8), 0, 0);
      }

LABEL_25:
      endpointCluster_activateSubEndpointsIfNeeded(*(*(a5 + 16) + 16));
      goto LABEL_26;
    }

    APSLogErrorAt();
    v12 = *(a5 + 16);
    v14 = 4294949690;
LABEL_16:
    CompletionCallbackContextSetError(v12, v14);
    goto LABEL_26;
  }

  if (v13 == 1)
  {
    v14 = a4;
  }

  else
  {
    v14 = 4294949692;
  }

  if (v14)
  {
    goto LABEL_16;
  }

LABEL_26:
  FigSimpleMutexUnlock();
  CFRelease(*a5);
  v15 = *(a5 + 8);
  if (v15)
  {
    CFRelease(v15);
  }

  v16 = *(a5 + 16);
  if (v16)
  {
    CFRelease(v16);
  }

  free(a5);
}

uint64_t endpointCluster_CallActivationCompletionCallback(const void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = a4;
  if (a4)
  {
    endpointCluster_cancelPendingUpdateFeatureRequests(a1, a4);
    endpointCluster_resetActivationState(a1, 0, 0, 0);
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  cf = 0;
  Count = CFArrayGetCount(*(DerivedStorage + 336));
  if (Count)
  {
    v14 = Count;
    if (Count <= 0)
    {
      v15 = 0;
      v20 = *(DerivedStorage + 648);
      *(DerivedStorage + 648) = 0;
      if (!v20)
      {
        goto LABEL_24;
      }
    }

    else
    {
      v22 = a2;
      v23 = a3;
      v24 = a6;
      v15 = 0;
      v16 = 0;
      v17 = *MEMORY[0x277CBECE8];
      do
      {
        CFArrayGetValueAtIndex(*(DerivedStorage + 336), v16);
        CMBaseObject = FigEndpointGetCMBaseObject();
        v19 = *(*(CMBaseObjectGetVTable() + 8) + 48);
        if (v19 && !v19(CMBaseObject, @"ActualTransportType", v17, &cf))
        {
          if (v15)
          {
            if (!CFEqual(cf, v15))
            {
              if (@"Mixed")
              {
                CFRetain(@"Mixed");
              }

              CFRelease(v15);
              v15 = @"Mixed";
            }
          }

          else
          {
            v15 = CFRetain(cf);
          }
        }

        if (cf)
        {
          CFRelease(cf);
          cf = 0;
        }

        ++v16;
      }

      while (v14 != v16);
      v20 = *(DerivedStorage + 648);
      *(DerivedStorage + 648) = v15;
      if (v15)
      {
        CFRetain(v15);
      }

      a6 = v24;
      a2 = v22;
      a3 = v23;
      if (!v20)
      {
        goto LABEL_24;
      }
    }

    CFRelease(v20);
LABEL_24:
    if (cf)
    {
      CFRelease(cf);
    }

    if (v15)
    {
      CFRelease(v15);
    }
  }

  endpointCluster_sendActivationMetrics(a1, 250);
  return endpointCluster_CallCompletionCallback(a1, a2, a3, v8, a5, a6);
}

void endpointCluster_handleAggregateEndpointUpdateFeaturesCompleted(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, CFTypeRef *a5)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APEndpointCluster <= 50 && (gLogCategory_APEndpointCluster != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APEndpointCluster, "void endpointCluster_handleAggregateEndpointUpdateFeaturesCompleted(FigEndpointRef, FigEndpointFeatures, uint64_t, OSStatus, void *)", 33554482, "[%{ptr}] UpdateFeatures completed for aggregateEndpoint [%{ptr}], result = %#m.\n", *a5, a1, a4);
  }

  if (a5[3])
  {
    CFRetain(*a5);
    APSDispatchAsyncFHelper();
  }

  FigSimpleMutexLock();
  endpointCluster_updateFeaturesFromSavedIfNeeded(*a5);
  if (*(DerivedStorage + 8))
  {
    CMNotificationCenterGetDefaultLocalCenter();
    FigDispatchAsyncPostNotification();
  }

  FigSimpleMutexUnlock();
  CFRelease(*a5);
  free(a5);
}

uint64_t endpointCluster_CallCompletionCallback(const void *a1, uint64_t a2, uint64_t a3, unsigned int a4, uint64_t a5, uint64_t a6)
{
  result = CMBaseObjectGetDerivedStorage();
  if (a5)
  {
    CFRetain(a1);
    return APSDispatchAsyncFHelper();
  }

  return result;
}

void endpointCluster_updateFeaturesFromSavedIfNeeded(const void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (CFArrayGetCount(*(DerivedStorage + 624)) >= 1)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(*(DerivedStorage + 624), 0);
    v4 = ValueAtIndex;
    if (ValueAtIndex)
    {
      CFRetain(ValueAtIndex);
    }

    CFArrayRemoveValueAtIndex(*(DerivedStorage + 624), 0);
    if (gLogCategory_APEndpointCluster <= 50 && (gLogCategory_APEndpointCluster != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_APEndpointCluster, "void endpointCluster_updateFeaturesFromSavedIfNeeded(FigEndpointRef)", 33554482, "[%{ptr}] UpdateFeaturesFromSaved: from [%{ptr}]: 0x%llx\n", a1, v4, *(v4 + 3));
    }

    endpointCluster_updateFeaturesInternal(a1, *(v4 + 4), *(v4 + 3), *(v4 + 4), *(v4 + 5), *(v4 + 6));

    CFRelease(v4);
  }
}

uint64_t _UpdateFeaturesRequestGetTypeID()
{
  result = _CFRuntimeRegisterClass();
  gUpdateFeaturesRequestTypeID = result;
  return result;
}

void _UpdateFeaturesRequestFinalize(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    CFRelease(v2);
  }

  if (gLogCategory_APEndpointCluster <= 50 && (gLogCategory_APEndpointCluster != -1 || _LogCategory_Initialize()))
  {
    _UpdateFeaturesRequestFinalize_cold_1(a1);
  }
}

uint64_t endpointCluster_isIdle(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (CFArrayGetCount(*(DerivedStorage + 336)) < 1)
  {
    return 1;
  }

  v2 = 0;
  while (1)
  {
    CFArrayGetValueAtIndex(*(DerivedStorage + 336), v2);
    if (APSGetFBOPropertyInt64())
    {
      break;
    }

    if (++v2 >= CFArrayGetCount(*(DerivedStorage + 336)))
    {
      return 1;
    }
  }

  return 0;
}

void endpointCluster_deferredHandleIdleStateChanged(void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  if (*(a1 + 8) && *(DerivedStorage + 408) && *(DerivedStorage + 376) == 3)
  {
    v3 = *a1;
    v4 = CMBaseObjectGetDerivedStorage();
    v5 = v4;
    v6 = *(v4 + 56);
    if (v6)
    {
      dispatch_source_cancel(*(v4 + 56));
      dispatch_release(v6);
      *(v5 + 56) = 0;
    }

    if (gLogCategory_APEndpointCluster <= 50 && (gLogCategory_APEndpointCluster != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_APEndpointCluster, "void endpointCluster_startInactivityTimer(FigEndpointRef)", 33554482, "[%{ptr}] Starting %d-sec inactivity timer...\n", v3, *(v5 + 176));
    }

    *(v5 + 56) = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, *(v5 + 40));
    CFRetain(v3);
    dispatch_set_context(*(v5 + 56), v3);
    dispatch_source_set_event_handler_f(*(v5 + 56), endpointCluster_inactivityTimerFired);
    dispatch_source_set_cancel_handler_f(*(v5 + 56), endpointCluster_inactivityTimerCancelled);
    v8 = *(v5 + 56);
    v9 = dispatch_time(0, 1000000000 * *(v5 + 176));
    dispatch_source_set_timer(v8, v9, 0xFFFFFFFFFFFFFFFFLL, 0x3B9ACA00uLL);
    dispatch_resume(*(v5 + 56));
  }

  else
  {
    v7 = *(DerivedStorage + 56);
    if (v7)
    {
      dispatch_source_cancel(*(DerivedStorage + 56));
      dispatch_release(v7);
      *(DerivedStorage + 56) = 0;
    }
  }

  FigSimpleMutexUnlock();
  v10 = *a1;

  CFRelease(v10);
}

double endpointCluster_inactivityTimerFired(const void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  v3 = *(DerivedStorage + 56);
  if (v3)
  {
    dispatch_source_cancel(*(DerivedStorage + 56));
    dispatch_release(v3);
    *(DerivedStorage + 56) = 0;
  }

  if (endpointCluster_isIdle(a1) && *(DerivedStorage + 376) == 3)
  {
    if (gLogCategory_APEndpointCluster <= 50 && (gLogCategory_APEndpointCluster != -1 || _LogCategory_Initialize()))
    {
      endpointCluster_inactivityTimerFired_cold_1(a1);
    }

    endpointCluster_updateStatus(a1, 4294895020, 1, 1);
  }

  FigSimpleMutexUnlock();
  return result;
}

void endpointCluster_inactivityTimerCancelled(CFTypeRef cf)
{
  if (gLogCategory_APEndpointCluster <= 50 && (gLogCategory_APEndpointCluster != -1 || _LogCategory_Initialize()))
  {
    endpointCluster_inactivityTimerCancelled_cold_1(cf);
  }

  CFRelease(cf);
}

void endpointCluster_postNeedDeactivationForClusterChange(uint64_t a1, int a2)
{
  CMBaseObjectGetDerivedStorage();
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (Mutable)
  {
    v5 = Mutable;
    v6 = MEMORY[0x277CBED28];
    if (!a2)
    {
      v6 = MEMORY[0x277CBED10];
    }

    CFDictionarySetValue(Mutable, @"ClusterFailed", *v6);
    if (gLogCategory_APEndpointCluster <= 30 && (gLogCategory_APEndpointCluster != -1 || _LogCategory_Initialize()))
    {
      v7 = 116;
      if (!a2)
      {
        v7 = 102;
      }

      LogPrintF(&gLogCategory_APEndpointCluster, "OSStatus endpointCluster_postNeedDeactivationForClusterChange(FigEndpointRef, Boolean)", 33554462, "[%{ptr}] Posting kAPEndpointClusterNotification_NeedsDeactivationForClusterChange, clusterFailed = %c\n", a1, v7);
    }

    CMNotificationCenterGetDefaultLocalCenter();
    FigDispatchAsyncPostNotification();

    CFRelease(v5);
  }

  else
  {
    endpointCluster_postNeedDeactivationForClusterChange_cold_1();
  }
}

void __endpointCluster_callDelegateHandleFailed_block_invoke(uint64_t a1)
{
  if (gLogCategory_APEndpointCluster <= 50 && (gLogCategory_APEndpointCluster != -1 || _LogCategory_Initialize()))
  {
    __endpointCluster_callDelegateHandleFailed_block_invoke_cold_1(a1);
  }

  (*(a1 + 48))(*(a1 + 32), *(a1 + 56), *(a1 + 40), *(a1 + 64));
  CFRelease(*(a1 + 32));
  v2 = *(a1 + 40);
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = *(a1 + 64);
  if (v3)
  {

    CFRelease(v3);
  }
}

void endpointCluster_handleClusterFatalError(const void *a1, uint64_t a2, int a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APEndpointCluster <= 50 && (gLogCategory_APEndpointCluster != -1 || _LogCategory_Initialize()))
  {
    v7 = "InProgress";
    if (!a3)
    {
      v7 = "Starting";
    }

    LogPrintF(&gLogCategory_APEndpointCluster, "void endpointCluster_handleClusterFatalError(FigEndpointRef, OSStatus, APEndpointSessionState)", 33554482, "[%{ptr}] ### Reporting fatal cluster error %#m (%s)\n", a1, a2, v7);
  }

  CFRetain(a1);
  v8 = *(DerivedStorage + 40);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 0x40000000;
  block[2] = __endpointCluster_handleClusterFatalError_block_invoke;
  block[3] = &__block_descriptor_tmp_181_0;
  block[4] = DerivedStorage;
  block[5] = a1;
  v10 = a2;
  v11 = a3;
  dispatch_async(v8, block);
}

CFIndex endpointCluster_activateSubEndpointsIfNeeded(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  result = CFArrayGetCount(*(DerivedStorage + 336));
  if (result >= 1)
  {
    for (i = 0; i < result; ++i)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(*(DerivedStorage + 336), i);
      if (endpointCluster_shouldActivateSubEndpoint(a1, ValueAtIndex))
      {
        endpointCluster_activateSubEndpoint(a1, ValueAtIndex);
      }

      result = CFArrayGetCount(*(DerivedStorage + 336));
    }
  }

  return result;
}

uint64_t _CompletionCallbackContextGetTypeID()
{
  result = _CFRuntimeRegisterClass();
  gCompletionCallbackContextTypeID = result;
  return result;
}

uint64_t _CompletionCallbackContextFinalize(void *a1, uint64_t a2, uint64_t a3)
{
  if (gLogCategory_APEndpointCluster <= 30 && (gLogCategory_APEndpointCluster != -1 || _LogCategory_Initialize()))
  {
    _CompletionCallbackContextFinalize_cold_1(a1, a2, a3);
  }

  v4 = a1[2];
  if (v4)
  {
    CFRelease(v4);
    a1[2] = 0;
  }

  v5 = a1[11];
  if (v5)
  {
    CFRelease(v5);
    a1[11] = 0;
  }

  return FigSimpleMutexDestroy();
}

uint64_t endpointCluster_manageActivationTimeoutTimer(const void *a1, const void *a2, char a3)
{
  CMBaseObjectGetDerivedStorage();
  CFRetain(a1);
  if (a2)
  {
    CFRetain(a2);
  }

  return APSDispatchAsyncFHelper();
}

void endpointCluster_handleSubEndpointResult(const void *a1, void *a2, const void *a3, uint64_t a4, int a5)
{
  CMBaseObjectGetDerivedStorage();
  if (!a2)
  {
    goto LABEL_10;
  }

  FigSimpleMutexLock();
  if (gLogCategory_APEndpointCluster <= 30 && (gLogCategory_APEndpointCluster != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APEndpointCluster, "Boolean CompletionCallbackContextSetSubEndpointResult(CompletionCallbackContextRef, FigEndpointRef, OSStatus)", 33554462, "[%{ptr}] SubEndpoint [%{ptr}] result: %#m\n", a2[2], a3, a4);
  }

  CFDictionarySetInt64();
  updated = completionCallbackContext_updateStateFromResponses(a2);
  FigSimpleMutexUnlock();
  if (updated)
  {

    endpointCluster_handleClusterFatalError(a1, a4, a5);
  }

  else
  {
LABEL_10:
    if (a4)
    {
      DerivedStorage = CMBaseObjectGetDerivedStorage();
      if (a5 || !APSGetFBOPropertyInt64())
      {
        if (*(DerivedStorage + 376))
        {
          if (!*(DerivedStorage + 432))
          {
            if (gLogCategory_APEndpointCluster <= 50 && (gLogCategory_APEndpointCluster != -1 || _LogCategory_Initialize()))
            {
              endpointCluster_handleSubEndpointResult_cold_1(a1);
            }

            *(DerivedStorage + 432) = CFSetCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF158]);
          }

          if (gLogCategory_APEndpointCluster <= 50 && (gLogCategory_APEndpointCluster != -1 || _LogCategory_Initialize()))
          {
            LogPrintF(&gLogCategory_APEndpointCluster, "void endpointCluster_handleSubEndpointNonFatalFailure(FigEndpointRef, FigEndpointRef, APEndpointSessionState)", 33554482, "[%{ptr}] Adding failed subEndpoint [%{ptr}] to failed subEndpoint set\n", a1, a3);
          }

          CFSetAddValue(*(DerivedStorage + 432), a3);
        }

        endpointCluster_failDelayManageSubEndpoint(a1, a3, 1u);
      }

      else
      {
        if (gLogCategory_APEndpointCluster <= 50 && (gLogCategory_APEndpointCluster != -1 || _LogCategory_Initialize()))
        {
          LogPrintF(&gLogCategory_APEndpointCluster, "void endpointCluster_handleSubEndpointNonFatalFailure(FigEndpointRef, FigEndpointRef, APEndpointSessionState)", 33554482, "[%{ptr}] Immediately triggering lost cluster buddy reconnect logic for [%{ptr}] during startup\n", a1, a3);
        }

        endpointCluster_triggerLostClusterBuddyReconnectionLogic(a1, a3);
      }
    }
  }
}

double CompletionCallbackContextSetError(uint64_t a1, uint64_t a2)
{
  FigSimpleMutexLock();
  if (gLogCategory_APEndpointCluster <= 30 && (gLogCategory_APEndpointCluster != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APEndpointCluster, "void CompletionCallbackContextSetError(CompletionCallbackContextRef, OSStatus)", 33554462, "[%{ptr}] CompletionCallbackContext received error %#m\n", *(a1 + 16), a2);
  }

  completionCallbackContext_setState(a1, 1, a2);

  FigSimpleMutexUnlock();
  return result;
}

void endpointCluster_deferredConfigureActivationTimeoutTimer(uint64_t *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  if (*(a1 + 16) && (v3 = a1[1]) != 0 && (FigSimpleMutexLock(), v4 = *(v3 + 96), FigSimpleMutexUnlock(), !v4))
  {
    v7 = *a1;
    v6 = a1[1];
    v8 = CMBaseObjectGetDerivedStorage();
    if (*(v8 + 48))
    {
      endpointCluster_deferredConfigureActivationTimeoutTimer_cold_1();
    }

    else
    {
      v9 = v8;
      if (gLogCategory_APEndpointCluster <= 50 && (gLogCategory_APEndpointCluster != -1 || _LogCategory_Initialize()))
      {
        LogPrintF(&gLogCategory_APEndpointCluster, "void endpointCluster_startActivationTimerIfNeeded(FigEndpointRef, CompletionCallbackContextRef)", 33554482, "[%{ptr}] Starting %d second activation timer\n", v7, *(v9 + 180));
      }

      *(v9 + 48) = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, *(v9 + 40));
      CFRetain(v6);
      dispatch_set_context(*(v9 + 48), v6);
      dispatch_source_set_event_handler_f(*(v9 + 48), endpointCluster_activationTimerFired);
      dispatch_source_set_cancel_handler_f(*(v9 + 48), endpointCluster_activationTimerCancelled);
      v10 = *(v9 + 48);
      v11 = dispatch_time(0, 1000000000 * *(v9 + 180));
      dispatch_source_set_timer(v10, v11, 0xFFFFFFFFFFFFFFFFLL, 0x3B9ACA00uLL);
      dispatch_resume(*(v9 + 48));
    }
  }

  else
  {
    v5 = *(DerivedStorage + 48);
    if (v5)
    {
      dispatch_source_cancel(*(DerivedStorage + 48));
      dispatch_release(v5);
      *(DerivedStorage + 48) = 0;
    }
  }

  FigSimpleMutexUnlock();
  v12 = a1[1];
  if (v12)
  {
    CFRelease(v12);
  }

  v13 = *a1;

  CFRelease(v13);
}

double endpointCluster_activationTimerFired(uint64_t a1)
{
  v2 = *(a1 + 16);
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  v4 = *(DerivedStorage + 48);
  if (v4)
  {
    dispatch_source_cancel(*(DerivedStorage + 48));
    dispatch_release(v4);
    *(DerivedStorage + 48) = 0;
  }

  FigSimpleMutexLock();
  v5 = *(a1 + 96);
  FigSimpleMutexUnlock();
  if (!v5)
  {
    if (gLogCategory_APEndpointCluster <= 50 && (gLogCategory_APEndpointCluster != -1 || _LogCategory_Initialize()))
    {
      endpointCluster_activationTimerFired_cold_1(v2);
    }

    CompletionCallbackContextSetError(a1, 4294950572);
  }

  FigSimpleMutexUnlock();
  return result;
}

void endpointCluster_activationTimerCancelled(CFTypeRef cf)
{
  if (gLogCategory_APEndpointCluster <= 50 && (gLogCategory_APEndpointCluster != -1 || _LogCategory_Initialize()))
  {
    endpointCluster_activationTimerCancelled_cold_1(cf);
  }

  CFRelease(cf);
}

uint64_t completionCallbackContext_updateStateFromResponses(uint64_t a1)
{
  v35 = 0;
  v36 = &v35;
  v37 = 0x2000000000;
  v38 = 0;
  v31 = 0;
  v32 = &v31;
  v33 = 0x2000000000;
  v34 = 0;
  v25 = 0;
  v26 = &v25;
  v27 = 0x3000000000;
  v29 = 0;
  v30 = 0;
  v28 = 0;
  v21 = 0;
  v22 = &v21;
  v23 = 0x2000000000;
  v24 = 0;
  v17 = 0;
  v18 = &v17;
  v19 = 0x2000000000;
  v20 = 0;
  v14 = 0;
  v15[0] = &v14;
  v15[1] = 0x2000000000;
  v16 = 0;
  v2 = *(a1 + 32);
  CFDictionaryApplyBlock();
  if (*(v18 + 24))
  {
    if (gLogCategory_APEndpointCluster <= 50 && (gLogCategory_APEndpointCluster != -1 || _LogCategory_Initialize()))
    {
      completionCallbackContext_updateStateFromResponses_cold_1(a1, v15);
    }

    v5 = *(v15[0] + 24);
    v6 = 1;
    goto LABEL_6;
  }

  if (v2 == 2)
  {
    v7 = *(v32 + 6);
    v5 = *(v15[0] + 24);
    if (*(a1 + 24) && *(a1 + 28) == 7)
    {
LABEL_12:
      v5 = 0;
LABEL_26:
      v6 = 1;
      v13 = "yes";
LABEL_45:
      if (gLogCategory_APEndpointCluster <= 50 && (gLogCategory_APEndpointCluster != -1 || _LogCategory_Initialize()))
      {
        LogPrintF(&gLogCategory_APEndpointCluster, "Boolean completionCallbackContext_computeState(CompletionCallbackContextRef, OSStatus *)", 33554482, "[%{ptr}] computeState: computed HT err %#m, known=%s from results (w=%ld/a=%ld/f=%ld), err %#m, localStatus=%d\n", *(a1 + 16), v5, v13, v26[3], v26[4], v26[5], *(v15[0] + 24), *(v22 + 6));
      }

      goto LABEL_6;
    }

    if (*(v36 + 24))
    {
      if (!v7)
      {
        v6 = 0;
        v13 = "no";
        v5 = *(v32 + 6);
        goto LABEL_45;
      }

      if (v7 != 1)
      {
        goto LABEL_26;
      }

      if (!*(a1 + 24) || v26[4] > 0)
      {
        goto LABEL_12;
      }

      if (v26[3] <= 0 && (*(a1 + 28) != 4 || v26[5] >= *(a1 + 40) - 1))
      {
        goto LABEL_26;
      }
    }

    else if (v26[3] <= 0)
    {
      if (gLogCategory_APEndpointCluster > 90)
      {
        v6 = 1;
        v5 = 4294949690;
        goto LABEL_6;
      }

      if (gLogCategory_APEndpointCluster != -1 || _LogCategory_Initialize())
      {
        completionCallbackContext_updateStateFromResponses_cold_2(a1, v3, v4);
      }

      v6 = 1;
      v13 = "yes";
      v5 = 4294949690;
      goto LABEL_45;
    }

    v5 = 0;
    v6 = 0;
    v13 = "no";
    goto LABEL_45;
  }

  v9 = v26;
  v10 = *(v15[0] + 24);
  v11 = v26[4];
  if (v11 > 0)
  {
    v5 = 0;
LABEL_17:
    v6 = 1;
    v12 = "yes";
    goto LABEL_29;
  }

  if (v26[3] <= 0)
  {
    if (v26[5] <= 0)
    {
      v5 = 4294949690;
    }

    else
    {
      v5 = v10;
    }

    goto LABEL_17;
  }

  v6 = 0;
  v5 = 0;
  v12 = "no";
LABEL_29:
  if (gLogCategory_APEndpointCluster <= 50)
  {
    if (gLogCategory_APEndpointCluster == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_6;
      }

      v9 = v26;
      v11 = v26[4];
      v10 = *(v15[0] + 24);
    }

    LogPrintF(&gLogCategory_APEndpointCluster, "Boolean completionCallbackContext_computeState(CompletionCallbackContextRef, OSStatus *)", 33554482, "[%{ptr}] computeState: computed speaker group err %#m, known=%s from results (w=%ld/a=%ld/f=%ld), err %#m\n", *(a1 + 16), v5, v12, v9[3], v11, v9[5], v10);
  }

LABEL_6:
  _Block_object_dispose(&v14, 8);
  _Block_object_dispose(&v17, 8);
  _Block_object_dispose(&v21, 8);
  _Block_object_dispose(&v25, 8);
  _Block_object_dispose(&v31, 8);
  _Block_object_dispose(&v35, 8);
  if (gLogCategory_APEndpointCluster <= 30 && (gLogCategory_APEndpointCluster != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APEndpointCluster, "Boolean completionCallbackContext_updateStateFromResponses(CompletionCallbackContextRef)", 33554462, "[%{ptr}] %###s %d, %#m\n", *(a1 + 16), "Boolean completionCallbackContext_updateStateFromResponses(CompletionCallbackContextRef)", v6, v5);
  }

  return completionCallbackContext_setState(a1, v6, v5);
}

uint64_t completionCallbackContext_setState(uint64_t a1, int a2, uint64_t a3)
{
  if (!*(a1 + 96))
  {
    *(a1 + 97) = a2;
    *(a1 + 100) = a3;
    if (!a2)
    {
      goto LABEL_43;
    }

    *(a1 + 96) = 1;
    v9 = *(a1 + 16);
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    cf = 0;
    endpointCluster_manageActivationTimeoutTimer(v9, a1, 0);
    v11 = *(a1 + 48);
    if (v11 != *(DerivedStorage + 456) || (*(DerivedStorage + 376) - 3) < 0xFFFFFFFE)
    {
      v12 = 0;
      v13 = 4294949692;
      goto LABEL_41;
    }

    if (a3)
    {
      if (gLogCategory_APEndpointCluster <= 90 && (gLogCategory_APEndpointCluster != -1 || _LogCategory_Initialize()))
      {
        LogPrintF(&gLogCategory_APEndpointCluster, "void endpointCluster_finalizeActivation(FigEndpointRef, CompletionCallbackContextRef, OSStatus)", 33554522, "[%{ptr}] Cluster endpoint activation failed due to subEndpoints with error %#m\n", v9, a3);
      }

      if (a3 == -72100)
      {
        v13 = 4294951715;
      }

      else if (a3 == -72101)
      {
        v13 = 4294951714;
      }

      else
      {
        v13 = a3;
        if (a3 == -72277)
        {
          v13 = 4294949695;
        }
      }

      if (*(DerivedStorage + 488))
      {
        if (gLogCategory_APEndpointCluster <= 50 && (gLogCategory_APEndpointCluster != -1 || _LogCategory_Initialize()))
        {
          completionCallbackContext_setState_cold_1(v9);
        }

        endpointCluster_updateClusterChangeProgress(v9, 1, 0);
      }

      v11 = *(a1 + 48);
      if (v13 && v13 != -16727)
      {
        v12 = 0;
        goto LABEL_41;
      }
    }

    else
    {
      if (gLogCategory_APEndpointCluster <= 50 && (gLogCategory_APEndpointCluster != -1 || _LogCategory_Initialize()))
      {
        LogPrintF(&gLogCategory_APEndpointCluster, "void endpointCluster_finalizeActivation(FigEndpointRef, CompletionCallbackContextRef, OSStatus)", 33554482, "[%{ptr}] Cluster endpoint activated with features %#ll{flags}\n", v9, *(a1 + 56), &unk_222298620);
      }

      *(DerivedStorage + 376) = 3;
      APSEventRecorderRecordEvent();
      *(DerivedStorage + 408) = 1;
      endpointCluster_manageInactivityTimer(v9, 1u);
      v14 = CFGetAllocator(v9);
      APEndpointCreateEndpointActivationNotificationPayload(v14, *(a1 + 56), *(a1 + 48), &cf);
      CMNotificationCenterGetDefaultLocalCenter();
      FigDispatchAsyncPostNotification();
      if (*(DerivedStorage + 8))
      {
        CMNotificationCenterGetDefaultLocalCenter();
        FigDispatchAsyncPostNotification();
      }

      CFRetain(v9);
      v15 = *(DerivedStorage + 40);
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 0x40000000;
      block[2] = __endpointCluster_finalizeActivation_block_invoke;
      block[3] = &__block_descriptor_tmp_203_0;
      block[4] = v9;
      dispatch_async(v15, block);
      endpointCluster_updateFeaturesFromSavedIfNeeded(v9);
      v13 = 0;
      v11 = *(a1 + 48);
    }

    v12 = *(a1 + 56);
LABEL_41:
    endpointCluster_CallActivationCompletionCallback(v9, v11, v12, v13, *(a1 + 64), *(a1 + 72));
    if (cf)
    {
      CFRelease(cf);
    }

    goto LABEL_43;
  }

  if (!*(a1 + 97))
  {
LABEL_43:
    v6 = 0;
    v8 = "no";
    goto LABEL_44;
  }

  v6 = 0;
  if (a3)
  {
    v7 = 1;
  }

  else
  {
    v7 = a2 == 0;
  }

  v8 = "no";
  if (v7 && !*(a1 + 100))
  {
    v6 = 1;
    *(a1 + 97) = 1;
    *(a1 + 100) = -71991;
    v8 = "yes";
  }

LABEL_44:
  if (gLogCategory_APEndpointCluster <= 50 && (gLogCategory_APEndpointCluster != -1 || _LogCategory_Initialize()))
  {
    v16 = "yes";
    if (!a2)
    {
      v16 = "no";
    }

    LogPrintF(&gLogCategory_APEndpointCluster, "Boolean completionCallbackContext_setState(CompletionCallbackContextRef, Boolean, OSStatus)", 33554482, "[%{ptr}] setState(isReady=%s, err=%#m): wasFatal=%s\n", *(a1 + 16), v16, a3, v8);
  }

  return v6;
}

uint64_t __completionCallbackContext_computeState_block_invoke(void *a1, uint64_t a2, const void *a3)
{
  result = APSGetFBOPropertyInt64();
  v12 = 0;
  if (*(*(a1[4] + 8) + 24) != 2)
  {
    v7 = result;
    if (endpointCluster_isSubEndpointStaticLeader(*(a1[10] + 16), a2))
    {
      *(*(a1[5] + 8) + 24) = 1;
      result = completionCallbackContext_getSubEndpointStatus(a3, &v12);
      *(*(a1[6] + 8) + 24) = result;
    }

    else
    {
      result = completionCallbackContext_getSubEndpointStatus(a3, &v12);
      v11 = *(a1[7] + 8);
      if (result == 2)
      {
        ++v11[5];
      }

      else if (result == 1)
      {
        ++v11[4];
      }

      else
      {
        result = 0;
        ++v11[3];
      }
    }

    if (v7)
    {
      *(*(a1[4] + 8) + 24) = result;
    }

    if (result == 2)
    {
      v8 = *(a1[8] + 8);
      if (!*(v8 + 24))
      {
        v9 = v12;
        if (v12)
        {
          if (v7)
          {
            v10 = 1;
          }

          else
          {
            v10 = (v12 + 72099) >= 0xFFFFFFFE;
          }

          if (v10)
          {
            *(v8 + 24) = 1;
          }
        }

        *(*(a1[9] + 8) + 24) = v9;
      }
    }
  }

  return result;
}

uint64_t completionCallbackContext_getSubEndpointStatus(const void *a1, int *a2)
{
  valuePtr = 0;
  v4 = CFEqual(a1, *MEMORY[0x277CBEEE8]);
  v5 = 0;
  result = 0;
  if (!v4)
  {
    if (a1 && (v7 = CFGetTypeID(a1), v7 == CFNumberGetTypeID()))
    {
      CFNumberGetValue(a1, kCFNumberSInt32Type, &valuePtr);
      v5 = valuePtr;
      if (valuePtr)
      {
        result = 2;
      }

      else
      {
        result = 1;
      }
    }

    else
    {
      result = 2;
      v5 = -17606;
    }
  }

  if (a2)
  {
    *a2 = v5;
  }

  return result;
}

uint64_t endpointCluster_manageInactivityTimer(const void *a1, unsigned __int8 a2)
{
  CMBaseObjectGetDerivedStorage();
  CFRetain(a1);
  return APSDispatchAsyncFHelper();
}

void __endpointCluster_finalizeActivation_block_invoke(uint64_t a1)
{
  endpointCluster_deferredConfigureActivationMetricsTimer(*(a1 + 32));
  v2 = *(a1 + 32);

  CFRelease(v2);
}

double endpointCluster_deferredConfigureActivationMetricsTimer(void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  v3 = *(DerivedStorage + 376);
  v4 = CMBaseObjectGetDerivedStorage();
  v5 = v4;
  if (v3 == 3)
  {
    v6 = *(v4 + 144);
    v7 = *(v4 + 88);
    if (v7)
    {
      dispatch_source_cancel(*(v4 + 88));
      dispatch_release(v7);
      *(v5 + 88) = 0;
    }

    if (gLogCategory_APEndpointCluster <= 50 && (gLogCategory_APEndpointCluster != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_APEndpointCluster, "void endpointCluster_startMetricsTimer(FigEndpointRef)", 33554482, "[%{ptr}] Starting metrics timer with interval of %llu seconds.\n", a1, v6);
    }

    v9 = 1000000000 * v6;
    v10 = dispatch_time(0, 1000000000 * v6);
    *(v5 + 88) = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, *(v5 + 40));
    CFRetain(a1);
    dispatch_set_context(*(v5 + 88), a1);
    dispatch_source_set_event_handler_f(*(v5 + 88), endpointCluster_metricsTimerFired);
    dispatch_source_set_cancel_handler_f(*(v5 + 88), endpointCluster_metricsTimerCanceled);
    dispatch_source_set_timer(*(v5 + 88), v10, v9, 0x3B9ACA00uLL);
    dispatch_resume(*(v5 + 88));
  }

  else
  {
    if (gLogCategory_APEndpointCluster <= 50 && (gLogCategory_APEndpointCluster != -1 || _LogCategory_Initialize()))
    {
      endpointCluster_deferredConfigureActivationMetricsTimer_cold_1(a1);
    }

    v8 = *(v5 + 88);
    if (v8)
    {
      dispatch_source_cancel(*(v5 + 88));
      dispatch_release(v8);
      *(v5 + 88) = 0;
    }
  }

  FigSimpleMutexUnlock();
  return result;
}

void endpointCluster_updateClusterChangeProgress(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a3;
  v4 = a2;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APEndpointCluster <= 50 && (gLogCategory_APEndpointCluster != -1 || _LogCategory_Initialize()))
  {
    endpointCluster_updateClusterChangeProgress_cold_1(DerivedStorage, v4, v3, a1);
  }

  v7 = DerivedStorage[489];
  if (DerivedStorage[489] && DerivedStorage[490])
  {
    endpointCluster_updateClusterChangeProgress_cold_2();
  }

  else
  {
    DerivedStorage[488] = 1;
    if (v4)
    {
      DerivedStorage[489] = 1;
      v7 = 1;
    }

    if (v3)
    {
      DerivedStorage[490] = 1;
    }

    if (v7 && DerivedStorage[490])
    {
      if (gLogCategory_APEndpointCluster <= 50 && (gLogCategory_APEndpointCluster != -1 || _LogCategory_Initialize()))
      {
        endpointCluster_updateClusterChangeProgress_cold_3(a1);
      }

      endpointCluster_postFinishedDeactivationForClusterUUIDChangeOrFailure(a1);
    }
  }
}

double endpointCluster_metricsTimerFired(uint64_t a1)
{
  CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APEndpointCluster <= 50 && (gLogCategory_APEndpointCluster != -1 || _LogCategory_Initialize()))
  {
    endpointCluster_metricsTimerFired_cold_1(a1);
  }

  FigSimpleMutexLock();
  endpointCluster_sendActivationMetrics(a1, 253);

  FigSimpleMutexUnlock();
  return result;
}

void endpointCluster_metricsTimerCanceled(const void *a1)
{
  CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APEndpointCluster <= 50 && (gLogCategory_APEndpointCluster != -1 || _LogCategory_Initialize()))
  {
    endpointCluster_metricsTimerCanceled_cold_1(a1);
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

void endpointCluster_postFinishedDeactivationForClusterUUIDChangeOrFailure(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (Mutable)
  {
    v3 = Mutable;
    CFDictionarySetValue(Mutable, @"SourceEndpoint", *(DerivedStorage + 8));
    CMNotificationCenterGetDefaultLocalCenter();
    FigDispatchAsyncPostNotification();

    CFRelease(v3);
  }

  else
  {
    endpointCluster_postFinishedDeactivationForClusterUUIDChangeOrFailure_cold_1();
  }
}

void endpointCluster_triggerLostClusterBuddyReconnectionLogic(uint64_t a1, const void *a2)
{
  CMBaseObjectGetDerivedStorage();
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (Mutable)
  {
    v5 = Mutable;
    CFDictionarySetValue(Mutable, @"SubEndpoint", a2);
    if (gLogCategory_APEndpointCluster <= 30 && (gLogCategory_APEndpointCluster != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_APEndpointCluster, "void endpointCluster_triggerLostClusterBuddyReconnectionLogic(FigEndpointRef, FigEndpointRef)", 33554462, "[%{ptr}] Posting kAPEndpointClusterNotification_SubEndpointFailed for sub endpoint [%{ptr}]\n", a1, a2);
    }

    CMNotificationCenterGetDefaultLocalCenter();
    FigDispatchAsyncPostNotification();

    CFRelease(v5);
  }

  else
  {
    endpointCluster_triggerLostClusterBuddyReconnectionLogic_cold_1();
  }
}

void endpointCluster_cancelPendingUpdateFeatureRequests(uint64_t a1, int a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  CFArrayGetCount(*(DerivedStorage + 624));
  CFArrayApplyBlock();
  CFArrayRemoveAllValues(*(DerivedStorage + 624));
}

void endpointCluster_resetActivationState(const void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APEndpointCluster <= 50 && (gLogCategory_APEndpointCluster != -1 || _LogCategory_Initialize()))
  {
    endpointCluster_resetActivationState_cold_1(a1);
  }

  CMBaseObjectGetDerivedStorage();
  APSEventRecorderReset();
  CMNotificationCenterGetDefaultLocalCenter();
  FigNotificationCenterRemoveWeakListener();
  CMNotificationCenterGetDefaultLocalCenter();
  FigNotificationCenterRemoveWeakListener();
  if (*(DerivedStorage + 416))
  {
    CMNotificationCenterGetDefaultLocalCenter();
    APSRemoteConfigGetShared();
    FigNotificationCenterRemoveWeakListener();
  }

  if (*(DerivedStorage + 320))
  {
    Count = CFArrayGetCount(*(DerivedStorage + 336));
    if (Count >= 1)
    {
      endpointCluster_resetActivationState_cold_2((DerivedStorage + 336), (DerivedStorage + 320), a1, Count);
    }

    v10 = *(DerivedStorage + 320);
    v11 = *(*(CMBaseObjectGetVTable() + 16) + 48);
    if (v11)
    {
      v11(v10, 0);
    }

    if (*DerivedStorage == 3)
    {
      v12 = *(DerivedStorage + 320);
      v13 = *(*(CMBaseObjectGetVTable() + 16) + 56);
      if (v13)
      {
        v13(v12, 0);
      }
    }

    if (*(DerivedStorage + 328))
    {
      v14 = *(DerivedStorage + 320);
      v15 = *(*(CMBaseObjectGetVTable() + 16) + 16);
      if (v15)
      {
        v15(v14, a2, a3, a4);
      }
    }
  }

  *(DerivedStorage + 328) = 0;
  *(DerivedStorage + 376) = 0;
  *(DerivedStorage + 400) = 0;
  endpointCluster_postIsInUseDidChangeNotification(a1, 0);
  if (*(DerivedStorage + 8))
  {
    CMNotificationCenterGetDefaultLocalCenter();
    FigDispatchAsyncPostNotification();
  }

  *(DerivedStorage + 408) = 0;
  *(DerivedStorage + 440) = 1;
  *(DerivedStorage + 392) = 0;
  *(DerivedStorage + 444) = 0;
  *(DerivedStorage + 496) = 0;
  *(DerivedStorage + 491) = 0;
  *(DerivedStorage + 412) = 0;
  *(DerivedStorage + 416) = 0;
  *(DerivedStorage + 640) = 0;
  CFDictionaryRemoveAllValues(*(DerivedStorage + 632));
  v16 = *(DerivedStorage + 432);
  if (v16)
  {
    CFRelease(v16);
    *(DerivedStorage + 432) = 0;
  }

  v17 = *(DerivedStorage + 464);
  if (v17)
  {
    CFRelease(v17);
    *(DerivedStorage + 464) = 0;
  }

  v18 = *(DerivedStorage + 472);
  if (v18)
  {
    CFRelease(v18);
    *(DerivedStorage + 472) = 0;
  }

  v19 = *(DerivedStorage + 480);
  if (v19)
  {
    CFRelease(v19);
    *(DerivedStorage + 480) = 0;
  }

  v20 = *(DerivedStorage + 448);
  if (v20)
  {
    CFRelease(v20);
    *(DerivedStorage + 448) = 0;
  }

  v21 = *(DerivedStorage + 320);
  if (v21)
  {
    CFRelease(v21);
    *(DerivedStorage + 320) = 0;
  }

  v22 = *(DerivedStorage + 384);
  if (v22)
  {
    CFRelease(v22);
    *(DerivedStorage + 384) = 0;
  }

  v23 = *(DerivedStorage + 512);
  if (v23)
  {
    CFRelease(v23);
    *(DerivedStorage + 512) = 0;
  }

  endpointCluster_manageActivationTimeoutTimer(a1, 0, 0);
  endpointCluster_manageInactivityTimer(a1, 0);
  endpointCluster_failDelayManageSubEndpoint(a1, 0, 0);
  endpointCluster_updateHealthState(a1);
  CFRetain(a1);
  v24 = *(DerivedStorage + 40);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 0x40000000;
  block[2] = __endpointCluster_resetActivationState_block_invoke;
  block[3] = &__block_descriptor_tmp_275;
  block[4] = a1;
  dispatch_async(v24, block);
}

uint64_t __endpointCluster_cancelPendingUpdateFeatureRequests_block_invoke(uint64_t a1, void *a2)
{
  if (gLogCategory_APEndpointCluster <= 50 && (gLogCategory_APEndpointCluster != -1 || _LogCategory_Initialize()))
  {
    __endpointCluster_cancelPendingUpdateFeatureRequests_block_invoke_cold_1(a1, a2);
  }

  v4 = *(a1 + 32);
  v5 = *(*(a1 + 40) + 456);
  v6 = *(a1 + 48);
  if (v6)
  {
    v7 = v6 == -16727;
  }

  else
  {
    v7 = 1;
  }

  if (v7)
  {
    v8 = a2[3];
  }

  else
  {
    v8 = 0;
  }

  v9 = a2[5];
  v10 = a2[6];

  return endpointCluster_CallCompletionCallback(v4, v5, v8, v6, v9, v10);
}

void __endpointCluster_resetActivationState_block_invoke(uint64_t a1)
{
  endpointCluster_deferredManagePresentationModeProcessDemiseListening(*(a1 + 32));
  endpointCluster_deferredConfigureActivationMetricsTimer(*(a1 + 32));
  v2 = *(a1 + 32);

  CFRelease(v2);
}

double endpointCluster_deferredManagePresentationModeProcessDemiseListening(void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  v3 = *(DerivedStorage + 80);
  if (v3)
  {
    dispatch_source_cancel(*(DerivedStorage + 80));
    dispatch_release(v3);
    *(DerivedStorage + 80) = 0;
  }

  if (*(DerivedStorage + 376) == 3 && *(DerivedStorage + 496) == 1)
  {
    v4 = *(DerivedStorage + 504);
    if (v4)
    {
      *(DerivedStorage + 80) = APEndpointCreateAndStartProcessDemiseListener(a1, v4, *(DerivedStorage + 40), endpointCluster_handlePresentationModeProcessDemise);
    }
  }

  FigSimpleMutexUnlock();
  return result;
}

void endpointCluster_handlePresentationModeProcessDemise(const void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APEndpointCluster <= 50 && (gLogCategory_APEndpointCluster != -1 || _LogCategory_Initialize()))
  {
    endpointCluster_handlePresentationModeProcessDemise_cold_1(a1);
  }

  v3 = *(DerivedStorage + 80);
  if (v3)
  {
    dispatch_source_cancel(*(DerivedStorage + 80));
    dispatch_release(v3);
    *(DerivedStorage + 80) = 0;
  }

  SecondDisplayModeCommandParams = APEndpointCreateSecondDisplayModeCommandParams(0);
  if (SecondDisplayModeCommandParams)
  {
    v5 = SecondDisplayModeCommandParams;
    FigSimpleMutexLock();
    endpointCluster_setSecondDisplayMode(a1, v5);
    FigSimpleMutexUnlock();

    CFRelease(v5);
  }

  else
  {
    endpointCluster_handlePresentationModeProcessDemise_cold_2();
  }
}

void __endpointCluster_setSecondDisplayMode_block_invoke(uint64_t a1)
{
  endpointCluster_deferredManagePresentationModeProcessDemiseListening(*(a1 + 32));
  v2 = *(a1 + 32);

  CFRelease(v2);
}

uint64_t endpointCluster_setSecondDisplayModeOnSubEndpoint(uint64_t a1, uint64_t a2)
{
  SecondDisplayModeCommandParams = APEndpointCreateSecondDisplayModeCommandParams(a2);
  if (!SecondDisplayModeCommandParams)
  {
    endpointCluster_setSecondDisplayModeOnSubEndpoint_cold_1();
    return 4294950575;
  }

  v4 = SecondDisplayModeCommandParams;
  if (a1 && (FigEndpointExtendedGetClassID(), CMBaseObjectIsMemberOfClass()))
  {
    v5 = *(*(CMBaseObjectGetVTable() + 24) + 72);
    if (!v5)
    {
      v6 = 4294954514;
LABEL_9:
      APSLogErrorAt();
      goto LABEL_10;
    }

    v6 = v5(a1, *MEMORY[0x277CC1758], v4, 0, 0);
    if (v6)
    {
      goto LABEL_9;
    }
  }

  else
  {
    APSLogErrorAt();
    v6 = 4294950576;
  }

LABEL_10:
  CFRelease(v4);
  return v6;
}

void endpointCluster_handleInternalAggregateDeactivationCompletionCallback(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, CFTypeRef *a5)
{
  v10 = *a5;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  cf = 0;
  FigSimpleMutexLock();
  v12 = a5[3] == *(DerivedStorage + 456) && *(DerivedStorage + 376) == 0;
  if (gLogCategory_APEndpointCluster <= 50 && (gLogCategory_APEndpointCluster != -1 || _LogCategory_Initialize()))
  {
    v13 = 102;
    if (v12)
    {
      v13 = 116;
    }

    LogPrintF(&gLogCategory_APEndpointCluster, "void endpointCluster_handleInternalAggregateDeactivationCompletionCallback(FigEndpointRef, FigEndpointFeatures, uint64_t, OSStatus, void *)", 33554482, "[%{ptr}] <AirPlayActivation> aggregate [%{ptr}] deactivation seed %llu complete, features %#ll{flags}, error %#m, current=%c, callback [%{ptr}]\n", v10, a1, a3, a2, &unk_222298620, a4, v13, a5[5]);
  }

  if (v12)
  {
    if (!a4)
    {
      v14 = CFGetAllocator(v10);
      APEndpointCreateEndpointActivationNotificationPayload(v14, a5[2], a5[3], &cf);
      CMNotificationCenterGetDefaultLocalCenter();
      FigDispatchAsyncPostNotification();
      if (*(a5 + 34) && *(a5 + 33) && !*(a5 + 32) && *(DerivedStorage + 8))
      {
        if (gLogCategory_APEndpointCluster <= 50 && (gLogCategory_APEndpointCluster != -1 || _LogCategory_Initialize()))
        {
          endpointCluster_handleInternalAggregateDeactivationCompletionCallback_cold_1(v10);
        }

        endpointCluster_postFinishedDeactivationForClusterUUIDChangeOrFailure(v10);
      }

      LODWORD(a4) = 0;
    }
  }

  else
  {
    LODWORD(a4) = -17604;
  }

  if (a4 == -16727 || a4 == 0)
  {
    v16 = a2;
  }

  else
  {
    v16 = 0;
  }

  endpointCluster_CallCompletionCallback(v10, *(DerivedStorage + 456), v16, a4, a5[5], a5[6]);
  if (*(a5 + 32))
  {
    if (gLogCategory_APEndpointCluster <= 50 && (gLogCategory_APEndpointCluster != -1 || _LogCategory_Initialize()))
    {
      endpointCluster_handleInternalAggregateDeactivationCompletionCallback_cold_2(v10);
    }

    endpointCluster_updateClusterChangeProgress(v10, 1, 0);
  }

  FigSimpleMutexUnlock();
  CFRelease(*a5);
  CFRelease(a5[1]);
  free(a5);
  if (cf)
  {
    CFRelease(cf);
  }
}

uint64_t endpointCluster_BorrowScreen(uint64_t a1, uint64_t a2, uint64_t a3)
{
  FigEndpointExtendedGetFigEndpoint();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APEndpointCluster <= 50 && (gLogCategory_APEndpointCluster != -1 || _LogCategory_Initialize()))
  {
    endpointCluster_BorrowScreen_cold_1(a1);
  }

  FigSimpleMutexLock();
  if (*(DerivedStorage + 442))
  {
    endpointCluster_BorrowScreen_cold_2();
    v9 = 4294950573;
    goto LABEL_15;
  }

  if (*(DerivedStorage + 376) != 3)
  {
    endpointCluster_BorrowScreen_cold_3();
    v9 = 4294951716;
    goto LABEL_15;
  }

  if (!*(DerivedStorage + 444))
  {
    endpointCluster_BorrowScreen_cold_4();
    v9 = 4294950570;
    goto LABEL_15;
  }

  v7 = *(DerivedStorage + 320);
  if (v7 && (FigEndpointExtendedGetClassID(), CMBaseObjectIsMemberOfClass()))
  {
    v8 = *(*(CMBaseObjectGetVTable() + 24) + 16);
    if (!v8)
    {
      v9 = 4294954514;
LABEL_14:
      APSLogErrorAt();
      goto LABEL_15;
    }

    v9 = v8(v7, a2, a3);
    if (v9)
    {
      goto LABEL_14;
    }
  }

  else
  {
    APSLogErrorAt();
    v9 = 4294949690;
  }

LABEL_15:
  FigSimpleMutexUnlock();
  return v9;
}

uint64_t endpointCluster_UnborrowScreen(uint64_t a1, uint64_t a2, uint64_t a3)
{
  FigEndpointExtendedGetFigEndpoint();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APEndpointCluster <= 50 && (gLogCategory_APEndpointCluster != -1 || _LogCategory_Initialize()))
  {
    endpointCluster_UnborrowScreen_cold_1(a1);
  }

  FigSimpleMutexLock();
  if (*(DerivedStorage + 442))
  {
    endpointCluster_UnborrowScreen_cold_2();
    v9 = 4294950573;
    goto LABEL_15;
  }

  if (*(DerivedStorage + 376) != 3)
  {
    endpointCluster_UnborrowScreen_cold_3();
    v9 = 4294951716;
    goto LABEL_15;
  }

  if (!*(DerivedStorage + 444))
  {
    endpointCluster_UnborrowScreen_cold_4();
    v9 = 4294950570;
    goto LABEL_15;
  }

  v7 = *(DerivedStorage + 320);
  if (v7 && (FigEndpointExtendedGetClassID(), CMBaseObjectIsMemberOfClass()))
  {
    v8 = *(*(CMBaseObjectGetVTable() + 24) + 24);
    if (!v8)
    {
      v9 = 4294954514;
LABEL_14:
      APSLogErrorAt();
      goto LABEL_15;
    }

    v9 = v8(v7, a2, a3);
    if (v9)
    {
      goto LABEL_14;
    }
  }

  else
  {
    APSLogErrorAt();
    v9 = 4294949690;
  }

LABEL_15:
  FigSimpleMutexUnlock();
  return v9;
}

uint64_t endpointCluster_DuckAudio(uint64_t a1, uint64_t a2)
{
  FigEndpointExtendedGetFigEndpoint();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APEndpointCluster <= 50 && (gLogCategory_APEndpointCluster != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APEndpointCluster, "OSStatus endpointCluster_DuckAudio(FigEndpointExtendedRef, CFDictionaryRef)", 33554482, "[%{ptr}] DuckAudio %@\n", a1, a2);
  }

  FigSimpleMutexLock();
  if (*(DerivedStorage + 376) != 3)
  {
    endpointCluster_DuckAudio_cold_1();
    v7 = 4294951716;
    goto LABEL_14;
  }

  v5 = *(DerivedStorage + 320);
  if (v5 && (FigEndpointExtendedGetClassID(), CMBaseObjectIsMemberOfClass()))
  {
    v6 = *(*(CMBaseObjectGetVTable() + 24) + 48);
    if (!v6)
    {
      v7 = 4294954514;
LABEL_13:
      APSLogErrorAt();
      goto LABEL_14;
    }

    v7 = v6(v5, a2);
    if (v7)
    {
      goto LABEL_13;
    }
  }

  else
  {
    APSLogErrorAt();
    v7 = 4294950570;
  }

LABEL_14:
  FigSimpleMutexUnlock();
  return v7;
}

uint64_t endpointCluster_SendCommand(uint64_t a1, uint64_t a2, const void *a3, uint64_t a4, uint64_t a5)
{
  FigEndpoint = FigEndpointExtendedGetFigEndpoint();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APEndpointCluster <= 50 && (gLogCategory_APEndpointCluster != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APEndpointCluster, "OSStatus endpointCluster_SendCommand(FigEndpointExtendedRef, CFStringRef, CFDictionaryRef, FigEndpointSendCommandCompletionCallback, void *)", 33554482, "[%{ptr}] command: %@\n", FigEndpoint, a2);
  }

  if (FigCFEqual())
  {
    FigSimpleMutexLock();
    v17 = endpointCluster_setSecondDisplayMode(FigEndpoint, a3);
    FigSimpleMutexUnlock();
    if (v17)
    {
      endpointCluster_SendCommand_cold_1(v17);
    }
  }

  else
  {
    if (!FigCFEqual())
    {
LABEL_22:
      v17 = 0;
      goto LABEL_23;
    }

    FigSimpleMutexLock();
    v10 = CMBaseObjectGetDerivedStorage();
    if (CFDictionaryContainsKey(a3, *MEMORY[0x277CC1770]))
    {
      if (gLogCategory_APEndpointCluster <= 50 && (gLogCategory_APEndpointCluster != -1 || _LogCategory_Initialize()))
      {
        endpointCluster_SendCommand_cold_2(FigEndpoint);
      }

      v11 = *(v10 + 616);
      *(v10 + 616) = a3;
      if (a3)
      {
        CFRetain(a3);
      }

      if (v11)
      {
        CFRelease(v11);
      }

      v12 = *(v10 + 336);
      if (v12)
      {
        Count = CFArrayGetCount(v12);
        if (Count >= 1)
        {
          v14 = Count;
          for (i = 0; i != v14; ++i)
          {
            ValueAtIndex = CFArrayGetValueAtIndex(v12, i);
            if (!APSGetFBOPropertyInt64())
            {
              endpointCluster_setMRInfoOnSubEndpoint(ValueAtIndex, a3);
            }
          }
        }
      }

      FigSimpleMutexUnlock();
      goto LABEL_22;
    }

    endpointCluster_SendCommand_cold_3((DerivedStorage + 280));
    v17 = 4294950576;
  }

LABEL_23:
  if (a4)
  {
    CFRetain(FigEndpoint);
    APSDispatchAsyncFHelper();
  }

  return v17;
}

uint64_t endpointCluster_SendData(const void *a1, const void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  FigEndpoint = FigEndpointExtendedGetFigEndpoint();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  if (endpointCluster_isRelaySupported(FigEndpoint))
  {
    RCSendDataCompletionContext = APEndpointCreateRCSendDataCompletionContext(a1, a2, *(DerivedStorage + 40), a4, a5);
    if (RCSendDataCompletionContext)
    {
      v13 = RCSendDataCompletionContext;
      v14 = *(DerivedStorage + 320);
      if (!v14 || (FigEndpointExtendedGetClassID(), !CMBaseObjectIsMemberOfClass()))
      {
        v14 = 0;
      }

      v15 = *(*(CMBaseObjectGetVTable() + 24) + 96);
      if (v15)
      {
        v16 = v15(v14, a2, a3, APEndpointCallRCSendDataCompletionFromContextAsync, v13);
        if (!v16)
        {
          goto LABEL_13;
        }

        v17 = v16;
      }

      else
      {
        v17 = -12782;
      }

      APSLogErrorAt();
    }

    else
    {
      endpointCluster_SendData_cold_1();
      v17 = -16721;
    }
  }

  else
  {
    endpointCluster_SendData_cold_2();
    v17 = -17606;
  }

  if (a4)
  {
    APEndpointCallRCSendDataCompletionAsync(a1, a2, v17, *(DerivedStorage + 40), a4, a5);
  }

LABEL_13:
  FigSimpleMutexUnlock();
  return 0;
}

uint64_t endpointCluster_CloseCommChannel(uint64_t a1, uint64_t a2)
{
  FigEndpoint = FigEndpointExtendedGetFigEndpoint();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  if (!endpointCluster_isRelaySupported(FigEndpoint))
  {
    endpointCluster_CloseCommChannel_cold_1();
    v7 = 4294949690;
    goto LABEL_10;
  }

  v5 = *(DerivedStorage + 320);
  if (!v5 || (FigEndpointExtendedGetClassID(), !CMBaseObjectIsMemberOfClass()))
  {
    v5 = 0;
  }

  v6 = *(*(CMBaseObjectGetVTable() + 24) + 104);
  if (!v6)
  {
    v7 = 4294954514;
LABEL_9:
    APSLogErrorAt();
    goto LABEL_10;
  }

  v7 = v6(v5, a2);
  if (v7)
  {
    goto LABEL_9;
  }

LABEL_10:
  FigSimpleMutexUnlock();
  return v7;
}

uint64_t endpointCluster_AcquireAndCopyResource(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  FigEndpoint = FigEndpointExtendedGetFigEndpoint();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APEndpointCluster <= 50 && (gLogCategory_APEndpointCluster != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APEndpointCluster, "OSStatus endpointCluster_AcquireAndCopyResource(FigEndpointExtendedRef, CFStringRef, CFDictionaryRef, CFTypeRef *)", 33554482, "[%{ptr}] Resource '%@' requested.\n", FigEndpoint, a2);
  }

  FigSimpleMutexLock();
  if (*(DerivedStorage + 442))
  {
    endpointCluster_AcquireAndCopyResource_cold_1();
    v11 = 4294950573;
    goto LABEL_15;
  }

  if (*(DerivedStorage + 376) != 3)
  {
    endpointCluster_AcquireAndCopyResource_cold_2();
    v11 = 4294951716;
    goto LABEL_15;
  }

  v9 = *(DerivedStorage + 320);
  if (!v9 || (FigEndpointExtendedGetClassID(), !CMBaseObjectIsMemberOfClass()))
  {
    v9 = 0;
  }

  v10 = *(*(CMBaseObjectGetVTable() + 24) + 128);
  if (!v10)
  {
    v11 = 4294954514;
LABEL_14:
    APSLogErrorAt();
    goto LABEL_15;
  }

  v11 = v10(v9, a2, a3, a4);
  if (v11)
  {
    goto LABEL_14;
  }

LABEL_15:
  FigSimpleMutexUnlock();
  return v11;
}

uint64_t endpointCluster_RelinquishResource(uint64_t a1, uint64_t a2, uint64_t a3)
{
  FigEndpoint = FigEndpointExtendedGetFigEndpoint();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APEndpointCluster <= 50 && (gLogCategory_APEndpointCluster != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APEndpointCluster, "OSStatus endpointCluster_RelinquishResource(FigEndpointExtendedRef, CFStringRef, CFTypeRef)", 33554482, "[%{ptr}] Relinquishing '%@' [%{ptr}].\n", FigEndpoint, a2, a3);
  }

  FigSimpleMutexLock();
  if (!a3)
  {
    endpointCluster_RelinquishResource_cold_3();
    v9 = 4294950576;
    goto LABEL_16;
  }

  if (*(DerivedStorage + 442))
  {
    endpointCluster_RelinquishResource_cold_1();
    v9 = 4294950573;
    goto LABEL_16;
  }

  if (*(DerivedStorage + 376) != 3)
  {
    endpointCluster_RelinquishResource_cold_2();
    v9 = 4294951716;
    goto LABEL_16;
  }

  v7 = *(DerivedStorage + 320);
  if (!v7 || (FigEndpointExtendedGetClassID(), !CMBaseObjectIsMemberOfClass()))
  {
    v7 = 0;
  }

  v8 = *(*(CMBaseObjectGetVTable() + 24) + 136);
  if (!v8)
  {
    v9 = 4294954514;
LABEL_15:
    APSLogErrorAt();
    goto LABEL_16;
  }

  v9 = v8(v7, a2, a3);
  if (v9)
  {
    goto LABEL_15;
  }

LABEL_16:
  FigSimpleMutexUnlock();
  return v9;
}

double endpointCluster_CloseAllCommChannels(uint64_t a1)
{
  FigEndpoint = FigEndpointExtendedGetFigEndpoint();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  if (endpointCluster_isRelaySupported(FigEndpoint))
  {
    v3 = *(DerivedStorage + 320);
    if (!v3 || (FigEndpointExtendedGetClassID(), !CMBaseObjectIsMemberOfClass()))
    {
      v3 = 0;
    }

    v4 = *(*(CMBaseObjectGetVTable() + 24) + 144);
    if (v4)
    {
      v4(v3);
    }
  }

  else
  {
    endpointCluster_CloseAllCommChannels_cold_1();
  }

  FigSimpleMutexUnlock();
  return result;
}

uint64_t endpointCluster_setMRInfoOnSubEndpoint(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    FigEndpointExtendedGetClassID();
    if (CMBaseObjectIsMemberOfClass())
    {
      v4 = *(*(CMBaseObjectGetVTable() + 24) + 72);
      if (v4)
      {
        result = v4(a1, *MEMORY[0x277CC1750], a2, 0, 0);
        if (!result)
        {
          return result;
        }
      }

      else
      {
        result = 4294954514;
      }

      return endpointCluster_setMRInfoOnSubEndpoint_cold_1(result);
    }
  }

  return APSLogErrorAt();
}

uint64_t endpointCluster_isRelaySupported(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*DerivedStorage != 3)
  {
    v3 = 7560;
LABEL_7:
    endpointCluster_isRelaySupported_cold_1(v3);
    return 0;
  }

  if (DerivedStorage[94] != 3)
  {
    v3 = 7561;
    goto LABEL_7;
  }

  return 1;
}

void endpointCluster_failureDelayTimerCancelled(CFTypeRef *a1)
{
  if (gLogCategory_APEndpointCluster <= 50 && (gLogCategory_APEndpointCluster != -1 || _LogCategory_Initialize()))
  {
    endpointCluster_failureDelayTimerCancelled_cold_1(a1);
  }

  if (*a1)
  {
    CFRelease(*a1);
  }

  free(a1);
}

void __endpointCluster_failureDelayTimerFired_block_invoke(uint64_t a1, const void *a2)
{
  if (gLogCategory_APEndpointCluster <= 50 && (gLogCategory_APEndpointCluster != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APEndpointCluster, "void endpointCluster_failureDelayTimerFired(void *)_block_invoke", 33554482, "[%{ptr}] Triggering lost cluster buddy reconnect logic for [%{ptr}] after timer\n", *(a1 + 32), a2);
  }

  v4 = *(a1 + 32);

  endpointCluster_triggerLostClusterBuddyReconnectionLogic(v4, a2);
}

void endpointCluster_activateSubEndpointCallback(uint64_t a1, const void *a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v10 = a6[2];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  value = 0;
  key = 0;
  if (gLogCategory_APEndpointCluster <= 50 && (gLogCategory_APEndpointCluster != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APEndpointCluster, "void endpointCluster_activateSubEndpointCallback(FigEndpointRef, FigEndpointRef, FigEndpointFeatures, uint64_t, OSStatus, void *)", 33554482, "[%{ptr}] subEndpoint [%{ptr}] activationCallback with error: %#m\n", v10, a2, a5);
  }

  FigSimpleMutexLock();
  if (FigCFArrayContainsValue())
  {
    if (a5 && APSGetFBOPropertyInt64())
    {
      endpointCluster_activateSubEndpointCallback_cold_1(v10, a2);
    }

    else if (a6[6] == *(DerivedStorage + 456) && (*(DerivedStorage + 376) - 4) > 0xFFFFFFFD)
    {
      if (a5)
      {
        if (gLogCategory_APEndpointCluster <= 50 && (gLogCategory_APEndpointCluster != -1 || _LogCategory_Initialize()))
        {
          LogPrintF(&gLogCategory_APEndpointCluster, "void endpointCluster_activateSubEndpointCallback(FigEndpointRef, FigEndpointRef, FigEndpointFeatures, uint64_t, OSStatus, void *)", 33554482, "[%{ptr}] SubEndpoint [%{ptr}] activation failed with error: %#m\n", v10, a2, a5);
        }
      }

      else
      {
        if (gLogCategory_APEndpointCluster <= 50 && (gLogCategory_APEndpointCluster != -1 || _LogCategory_Initialize()))
        {
          LogPrintF(&gLogCategory_APEndpointCluster, "void endpointCluster_activateSubEndpointCallback(FigEndpointRef, FigEndpointRef, FigEndpointFeatures, uint64_t, OSStatus, void *)", 33554482, "[%{ptr}] SubEndpoint [%{ptr}] activated with features %#ll{flags}\n", v10, a2, a3, &unk_222298620);
        }

        endpointCluster_updateHealthState(v10);
        endpointCluster_updateSecondDisplayModeOnSubEndpointListChange(v10, a2, 1);
        endpointCluster_setMRInfoOnSubEndpoint(a2, *(DerivedStorage + 616));
      }

      endpointCluster_handleSubEndpointResult(v10, a6, a2, a5, 0);
      endpointCluster_sendActivationMetrics(v10, 260);
      if (*DerivedStorage == 3)
      {
        CMBaseObject = FigEndpointGetCMBaseObject();
        v13 = *(*(CMBaseObjectGetVTable() + 8) + 48);
        if (v13 && (v13(CMBaseObject, @"RoomUUID", *MEMORY[0x277CBECE8], &key), key))
        {
          if (*(DerivedStorage + 632))
          {
            CFNumberGetTypeID();
            TypedValue = CFDictionaryGetTypedValue();
            if (gLogCategory_APEndpointCluster <= 50 && (gLogCategory_APEndpointCluster != -1 || _LogCategory_Initialize()))
            {
              LogPrintF(&gLogCategory_APEndpointCluster, "void endpointCluster_activateSubEndpointCallback(FigEndpointRef, FigEndpointRef, FigEndpointFeatures, uint64_t, OSStatus, void *)", 33554482, "[%{ptr}] <AirPlayVolume> Setting the subEndpoint [%{ptr}] volume level to %@ to match the room volume for room %@", v10, a2, TypedValue, key);
            }

            v15 = FigEndpointGetCMBaseObject();
            v16 = *(*(CMBaseObjectGetVTable() + 8) + 56);
            if (v16)
            {
              v16(v15, *MEMORY[0x277CC15A8], TypedValue);
            }
          }

          else
          {
            endpointCluster_activateSubEndpointCallback_cold_4();
          }
        }

        else
        {
          endpointCluster_activateSubEndpointCallback_cold_5();
        }
      }

      else if (endpointCluster_isSubEndpointVolumeLeader(v10, a2))
      {
        if (!*(DerivedStorage + 640))
        {
          if (gLogCategory_APEndpointCluster <= 50 && (gLogCategory_APEndpointCluster != -1 || _LogCategory_Initialize()))
          {
            LogPrintF(&gLogCategory_APEndpointCluster, "void endpointCluster_activateSubEndpointCallback(FigEndpointRef, FigEndpointRef, FigEndpointFeatures, uint64_t, OSStatus, void *)", 33554482, "[%{ptr}] <AirPlayVolume> Applying initial volume to volume leader [%{ptr}].\n", v10, a2);
          }

          APEndpointApplyInitialVolume(a2);
          *(DerivedStorage + 640) = 1;
        }

        v17 = FigEndpointGetCMBaseObject();
        v18 = *(*(CMBaseObjectGetVTable() + 8) + 48);
        if (v18 && (v18(v17, *MEMORY[0x277CC15A8], *MEMORY[0x277CBECE8], &value), (v19 = value) != 0))
        {
          if (gLogCategory_APEndpointCluster <= 50)
          {
            if (gLogCategory_APEndpointCluster != -1 || (v20 = _LogCategory_Initialize(), v19 = value, v20))
            {
              LogPrintF(&gLogCategory_APEndpointCluster, "void endpointCluster_activateSubEndpointCallback(FigEndpointRef, FigEndpointRef, FigEndpointFeatures, uint64_t, OSStatus, void *)", 33554482, "[%{ptr}] <AirPlayVolume> posting volume change (volume level: %@) after activating subEndpoint (new volume leader) [%{ptr}].\n", v10, v19, a2);
              v19 = value;
            }
          }

          endpointCluster_postVolumeDidChange(v10, 0, v19);
          if (gLogCategory_APEndpointCluster <= 50 && (gLogCategory_APEndpointCluster != -1 || _LogCategory_Initialize()))
          {
            LogPrintF(&gLogCategory_APEndpointCluster, "void endpointCluster_activateSubEndpointCallback(FigEndpointRef, FigEndpointRef, FigEndpointFeatures, uint64_t, OSStatus, void *)", 33554482, "[%{ptr}] <AirPlayVolume> posting mute change after activating subEndpoint (new volume leader) [%{ptr}].\n", v10, a2);
          }

          endpointCluster_postIsMutedDidChange(v10, 0);
        }

        else
        {
          endpointCluster_activateSubEndpointCallback_cold_2();
        }
      }

      else if (gLogCategory_APEndpointCluster <= 50 && (gLogCategory_APEndpointCluster != -1 || _LogCategory_Initialize()))
      {
        LogPrintF(&gLogCategory_APEndpointCluster, "void endpointCluster_activateSubEndpointCallback(FigEndpointRef, FigEndpointRef, FigEndpointFeatures, uint64_t, OSStatus, void *)", 33554482, "[%{ptr}] <AirPlayVolume> not posting volume change after activating subEndpoint [%{ptr}] - not volume leader\n", v10, a2, v21, v22);
      }
    }

    else
    {
      CompletionCallbackContextSetError(a6, 4294949692);
    }
  }

  else
  {
    endpointCluster_activateSubEndpointCallback_cold_6(v10, a2);
  }

  FigSimpleMutexUnlock();
  CFRelease(a2);
  CFRelease(a6);
  if (value)
  {
    CFRelease(value);
  }

  if (key)
  {
    CFRelease(key);
  }
}

void endpointCluster_postVolumeDidChange(uint64_t a1, uint64_t a2, const void *a3)
{
  CMBaseObjectGetDerivedStorage();
  VolumeMuteNotificationPayload = endpointCluster_createVolumeMuteNotificationPayload(a1, a2);
  if (VolumeMuteNotificationPayload)
  {
    v7 = VolumeMuteNotificationPayload;
    CFDictionarySetValue(VolumeMuteNotificationPayload, *MEMORY[0x277CC15A8], a3);
    v8 = MEMORY[0x277CC0DC0];
    if (gLogCategory_APEndpointCluster <= 30 && (gLogCategory_APEndpointCluster != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_APEndpointCluster, "void endpointCluster_postVolumeDidChange(FigEndpointRef, FigEndpointRef, CFNumberRef)", 33554462, "[%{ptr}] Posting %@, sub [%{ptr}]: %@\n", a1, *v8, a2, v7);
    }

    CMNotificationCenterGetDefaultLocalCenter();
    FigDispatchAsyncPostNotification();

    CFRelease(v7);
  }

  else
  {
    endpointCluster_postVolumeDidChange_cold_1();
  }
}

void endpointCluster_postIsMutedDidChange(uint64_t a1, uint64_t a2)
{
  CMBaseObjectGetDerivedStorage();
  VolumeMuteNotificationPayload = endpointCluster_createVolumeMuteNotificationPayload(a1, a2);
  if (VolumeMuteNotificationPayload)
  {
    v5 = VolumeMuteNotificationPayload;
    v6 = MEMORY[0x277CC0D60];
    if (gLogCategory_APEndpointCluster <= 30 && (gLogCategory_APEndpointCluster != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_APEndpointCluster, "void endpointCluster_postIsMutedDidChange(FigEndpointRef, FigEndpointRef)", 33554462, "[%{ptr}] Posting %@, sub [%{ptr}]: %@\n", a1, *v6, a2, v5);
    }

    CMNotificationCenterGetDefaultLocalCenter();
    FigDispatchAsyncPostNotification();

    CFRelease(v5);
  }

  else
  {
    endpointCluster_postIsMutedDidChange_cold_1();
  }
}

__CFDictionary *endpointCluster_createVolumeMuteNotificationPayload(uint64_t a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  value = 0;
  v5 = *MEMORY[0x277CBECE8];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 2, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  v7 = Mutable;
  if (Mutable)
  {
    v8 = *MEMORY[0x277CC1368];
    CFDictionarySetValue(Mutable, *MEMORY[0x277CC1368], *(DerivedStorage + 16));
    if (a2)
    {
      CMBaseObject = FigEndpointGetCMBaseObject();
      v10 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      if (v10)
      {
        v10(CMBaseObject, *MEMORY[0x277CC1550], v5, &value);
        v11 = value;
        if (value)
        {
          goto LABEL_8;
        }
      }

      v12 = FigEndpointGetCMBaseObject();
      v13 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      if (v13)
      {
        v13(v12, v8, v5, &value);
      }

      v11 = value;
      if (value)
      {
LABEL_8:
        CFDictionarySetValue(v7, *MEMORY[0x277CC0CE0], v11);
      }

      else
      {
        if (gLogCategory_APEndpointCluster > 60)
        {
          return v7;
        }

        if (gLogCategory_APEndpointCluster != -1 || _LogCategory_Initialize())
        {
          LogPrintF(&gLogCategory_APEndpointCluster, "CFMutableDictionaryRef endpointCluster_createVolumeMuteNotificationPayload(FigEndpointRef, FigEndpointRef)", 33554492, "[%{ptr}] Could not get ID from subEndpoint [%{ptr}] in order to create volume/mute notification payload\n", a1, a2);
        }
      }
    }
  }

  else
  {
    endpointCluster_createVolumeMuteNotificationPayload_cold_1();
  }

  if (value)
  {
    CFRelease(value);
  }

  return v7;
}

double endpointCluster_handleAuthRequiredInternal(uint64_t a1, const void *a2, uint64_t a3, const void *a4, const void *a5, uint64_t a6, uint64_t a7)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  if (*(DerivedStorage + 528))
  {
    if (*(DerivedStorage + 592) && (v13 = FigCFWeakReferenceHolderCopyReferencedObject(), *(DerivedStorage + 592)) && !v13)
    {
      if (gLogCategory_APEndpointCluster <= 90 && (gLogCategory_APEndpointCluster != -1 || _LogCategory_Initialize()))
      {
        endpointCluster_handleAuthRequiredInternal_cold_1(a4, v14, v15);
      }
    }

    else
    {
      v16 = malloc_type_calloc(1uLL, 0x18uLL, 0xA00402214FCE6uLL);
      if (a2)
      {
        v17 = CFRetain(a2);
      }

      else
      {
        v17 = 0;
      }

      *v16 = v17;
      v16[1] = a6;
      v16[2] = a7;
      if (a4)
      {
        CFRetain(a4);
      }

      if (a2)
      {
        CFRetain(a2);
      }

      if (a5)
      {
        CFRetain(a5);
      }

      *(DerivedStorage + 641) = 1;
      APSDispatchAsyncFHelper();
    }
  }

  FigSimpleMutexUnlock();
  return result;
}

double endpointCluster_handleFailedInternal(uint64_t a1, uint64_t a2, const __CFDictionary *a3, const void *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  Value = CFDictionaryGetValue(a3, *MEMORY[0x277CC0A10]);
  Int64 = CFDictionaryGetInt64();
  if (Value)
  {
    v11 = Int64;
    FigSimpleMutexLock();
    if (gLogCategory_APEndpointCluster <= 50 && (gLogCategory_APEndpointCluster != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_APEndpointCluster, "void endpointCluster_handleFailedInternal(FigEndpointRef, uint64_t, CFDictionaryRef, CFTypeRef)", 33554482, "[%{ptr}] SubEndpoint [%{ptr}] failed with %#m\n", a4, Value, v11);
    }

    v12 = *(DerivedStorage + 8);
    if (v12)
    {
      if (v11 == -72277 && Value == v12)
      {
        if (gLogCategory_APEndpointCluster <= 50 && (gLogCategory_APEndpointCluster != -1 || _LogCategory_Initialize()))
        {
          LogPrintF(&gLogCategory_APEndpointCluster, "void endpointCluster_handleFailedInternal(FigEndpointRef, uint64_t, CFDictionaryRef, CFTypeRef)", 33554482, "[%{ptr}] Cluster change: local subEndpoint [%{ptr}] failed due to group change\n", a4, a1);
        }

        endpointCluster_updateClusterChangeProgress(a4, 0, 0);
      }
    }

    endpointCluster_handleSubEndpointResult(a4, *(DerivedStorage + 384), Value, v11, 1);

    FigSimpleMutexUnlock();
  }

  return result;
}

void endpointCluster_handleDidReceiveDataFromCommChannelInternal(uint64_t a1, uint64_t a2, const void *a3, const void *a4, const void *a5)
{
  if (a1)
  {
    if (a3)
    {
      if (a4)
      {
        if (a5)
        {
          DerivedStorage = CMBaseObjectGetDerivedStorage();
          FigSimpleMutexLock();
          if (endpointCluster_isRelaySupported(a5))
          {
            if (*(DerivedStorage + 320) == a1)
            {
              APEndpointCallRCDelegateDidReceiveDataAsync(a5, *(DerivedStorage + 456), a3, a4, *(DerivedStorage + 40), *(DerivedStorage + 576), *(DerivedStorage + 600));
            }

            else
            {
              endpointCluster_handleDidReceiveDataFromCommChannelInternal_cold_1();
            }
          }

          else
          {
            endpointCluster_handleDidReceiveDataFromCommChannelInternal_cold_2();
          }

          FigSimpleMutexUnlock();
        }

        else
        {
          endpointCluster_handleDidReceiveDataFromCommChannelInternal_cold_3();
        }
      }

      else
      {
        endpointCluster_handleDidReceiveDataFromCommChannelInternal_cold_4();
      }
    }

    else
    {
      endpointCluster_handleDidReceiveDataFromCommChannelInternal_cold_5();
    }
  }

  else
  {
    endpointCluster_handleDidReceiveDataFromCommChannelInternal_cold_6();
  }
}

void endpointCluster_handleDidCloseCommChannelInternal(uint64_t a1, uint64_t a2, const void *a3, const void *a4)
{
  if (a1)
  {
    if (a3)
    {
      if (a4)
      {
        DerivedStorage = CMBaseObjectGetDerivedStorage();
        FigSimpleMutexLock();
        if (*(DerivedStorage + 442))
        {
          endpointCluster_handleDidCloseCommChannelInternal_cold_1();
        }

        else if (*(DerivedStorage + 320) == a1)
        {
          APEndpointCallRCDelegateDidCloseAsync(a4, *(DerivedStorage + 456), a3, *(DerivedStorage + 40), *(DerivedStorage + 584), *(DerivedStorage + 600));
        }

        else
        {
          endpointCluster_handleDidCloseCommChannelInternal_cold_2();
        }

        FigSimpleMutexUnlock();
      }

      else
      {
        endpointCluster_handleDidCloseCommChannelInternal_cold_3();
      }
    }

    else
    {
      endpointCluster_handleDidCloseCommChannelInternal_cold_4();
    }
  }

  else
  {
    endpointCluster_handleDidCloseCommChannelInternal_cold_5();
  }
}

void endpointCluster_authHandlingCompletionCallbackInternal(int a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = a4[1];
  if (v5)
  {
    v5(*a4, a2, a3, a4[2]);
  }

  if (*a4)
  {
    CFRelease(*a4);
  }

  free(a4);
}

void endpointCluster_callDelegateHandleAuthRequiredInternal(uint64_t a1)
{
  (*(a1 + 16))(*a1, *(a1 + 8), *(a1 + 24), *(a1 + 32), *(a1 + 40), *(a1 + 48), *(a1 + 56));
  if (*a1)
  {
    CFRelease(*a1);
  }

  v2 = *(a1 + 8);
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = *(a1 + 40);
  if (v3)
  {
    CFRelease(v3);
  }

  v4 = *(a1 + 32);
  if (v4)
  {

    CFRelease(v4);
  }
}

void endpointCluster_deferredHandleClusterHealthStateChanged(uint64_t *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  if (*(a1 + 2) == 1)
  {
    if (gLogCategory_APEndpointCluster <= 50 && (gLogCategory_APEndpointCluster != -1 || _LogCategory_Initialize()))
    {
      endpointCluster_deferredHandleClusterHealthStateChanged_cold_2(a1);
    }

    v3 = *a1;
    v4 = *(a1 + 12);
    v5 = CMBaseObjectGetDerivedStorage();
    v6 = v5;
    if (v4)
    {
      v7 = 0;
    }

    else
    {
      v7 = *(v5 + 128);
    }

    if (gLogCategory_APEndpointCluster <= 50 && (gLogCategory_APEndpointCluster != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_APEndpointCluster, "void endpointCluster_startClusterHealthMonitoringTimer(FigEndpointRef, Boolean)", 33554482, "[%{ptr}] Starting health monitoring timer with delay of %llu seconds.\n", v3, v7);
    }

    v9 = *(v6 + 64);
    if (v9)
    {
      dispatch_source_cancel(*(v6 + 64));
      dispatch_release(v9);
      *(v6 + 64) = 0;
    }

    *(v6 + 64) = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, *(v6 + 40));
    CFRetain(v3);
    dispatch_set_context(*(v6 + 64), v3);
    dispatch_source_set_event_handler_f(*(v6 + 64), endpointCluster_healthMonitoringTimerFired);
    dispatch_source_set_cancel_handler_f(*(v6 + 64), endpointCluster_healthMonitoringTimerCancelled);
    v10 = *(v6 + 64);
    v11 = dispatch_time(0, 1000000000 * v7);
    dispatch_source_set_timer(v10, v11, 0xFFFFFFFFFFFFFFFFLL, 0x3B9ACA00uLL);
    dispatch_resume(*(v6 + 64));
  }

  else
  {
    if (gLogCategory_APEndpointCluster <= 50 && (gLogCategory_APEndpointCluster != -1 || _LogCategory_Initialize()))
    {
      endpointCluster_deferredHandleClusterHealthStateChanged_cold_1(a1);
    }

    v8 = *(DerivedStorage + 64);
    if (v8)
    {
      dispatch_source_cancel(*(DerivedStorage + 64));
      dispatch_release(v8);
      *(DerivedStorage + 64) = 0;
    }
  }

  FigSimpleMutexUnlock();
  v12 = *a1;

  CFRelease(v12);
}

uint64_t endpointCluster_desiredSubEndpointsActivated(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (CFArrayGetCount(*(DerivedStorage + 336)) < 1)
  {
    return 1;
  }

  endpointCluster_desiredSubEndpointsActivated_cold_1((DerivedStorage + 336), a1, &v4);
  return v4;
}

void endpointCluster_healthMonitoringTimerCancelled(const void *a1)
{
  CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APEndpointCluster <= 50 && (gLogCategory_APEndpointCluster != -1 || _LogCategory_Initialize()))
  {
    endpointCluster_healthMonitoringTimerCancelled_cold_1(a1);
  }

  FigSimpleMutexLock();
  endpointCluster_setNeedsDiscoveryAndNotifyIfNeeded(a1, 0);
  FigSimpleMutexUnlock();

  CFRelease(a1);
}

uint64_t endpointCluster_setNeedsDiscoveryAndNotifyIfNeeded(uint64_t a1, int a2)
{
  result = CMBaseObjectGetDerivedStorage();
  v5 = *(result + 443);
  if (v5 == a2)
  {
    return result;
  }

  v6 = result;
  if (gLogCategory_APEndpointCluster < 51)
  {
    if (gLogCategory_APEndpointCluster == -1)
    {
      if (!_LogCategory_Initialize())
      {
LABEL_12:
        v11 = gLogCategory_APEndpointCluster;
        *(v6 + 443) = a2;
        if (v11 <= 30 && (v11 != -1 || _LogCategory_Initialize()))
        {
          endpointCluster_setNeedsDiscoveryAndNotifyIfNeeded_cold_1(a1, v9, v10);
        }

        goto LABEL_15;
      }

      v5 = *(v6 + 443);
    }

    v7 = "yes";
    if (v5)
    {
      v8 = "yes";
    }

    else
    {
      v8 = "no";
    }

    if (!a2)
    {
      v7 = "no";
    }

    LogPrintF(&gLogCategory_APEndpointCluster, "void endpointCluster_setNeedsDiscoveryAndNotifyIfNeeded(FigEndpointRef, Boolean)", 33554482, "[%{ptr}] needsDiscovery changed: %s->%s\n", a1, v8, v7);
    goto LABEL_12;
  }

  *(result + 443) = a2;
LABEL_15:
  CMNotificationCenterGetDefaultLocalCenter();

  return FigDispatchAsyncPostNotification();
}

uint64_t APEndpointStreamInterruptingWrapperCreate(uint64_t a1, const void *a2, const void *a3, const void *a4, CFTypeRef *a5)
{
  v16 = *MEMORY[0x277D85DE8];
  if (!a2)
  {
    APEndpointStreamInterruptingWrapperCreate_cold_6();
    return 4294950536;
  }

  if (!a3)
  {
    APEndpointStreamInterruptingWrapperCreate_cold_5();
    return 4294950536;
  }

  FigEndpointStreamAirPlayGetClassID();
  v9 = CMDerivedObjectCreate();
  if (v9)
  {
    v13 = v9;
    APEndpointStreamInterruptingWrapperCreate_cold_1(v9);
    return v13;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  DerivedStorage[1] = CFRetain(a2);
  *DerivedStorage = CFRetain(a3);
  SNPrintF(label, 64, "APEndpointStreamInterruptingWrapper.workQueue.%{ptr}", 0);
  v11 = dispatch_queue_create(label, 0);
  DerivedStorage[3] = v11;
  if (!v11)
  {
    APEndpointStreamInterruptingWrapperCreate_cold_4();
    return 4294950535;
  }

  SNPrintF(label, 64, "APEndpointStreamInterruptingWrapper.notification.%{ptr}", 0);
  v12 = dispatch_queue_create(label, 0);
  DerivedStorage[2] = v12;
  if (!v12)
  {
    APEndpointStreamInterruptingWrapperCreate_cold_3();
    return 4294950535;
  }

  CMNotificationCenterGetDefaultLocalCenter();
  FigNotificationCenterAddWeakListener();
  if (!a4)
  {
    APEndpointStreamInterruptingWrapperCreate_cold_2();
    return 4294950536;
  }

  DerivedStorage[4] = CFRetain(a4);
  if (*(CMBaseObjectGetDerivedStorage() + 8))
  {
    CMNotificationCenterGetDefaultLocalCenter();
    FigNotificationCenterAddWeakListener();
  }

  if (*(CMBaseObjectGetDerivedStorage() + 32))
  {
    CMNotificationCenterGetDefaultLocalCenter();
    FigBufferedAirPlayGlobalRoutingRegistryGetSharedInstance();
    FigNotificationCenterAddWeakListener();
  }

  if (gLogCategory_APEndpointStreamInterruptingWrapper <= 50 && (gLogCategory_APEndpointStreamInterruptingWrapper != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APEndpointStreamInterruptingWrapper, "OSStatus APEndpointStreamInterruptingWrapperCreate(CFAllocatorRef, FigEndpointStreamRef, FigEndpointStreamRef, CFStringRef, FigEndpointStreamRef *)", 33554482, "APEndpointStreamInterruptingWrapper created: %{ptr}; subStream: %{ptr}; interruptibleStream: %{ptr}; routingContextUUID: [%@]\n", 0, a2, a3, a4);
  }

  v13 = 0;
  *a5 = 0;
  return v13;
}

uint64_t interruptingStreamWrapper_interruptibleStreamNotificationCallback(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = FigCFEqual();
  if (result)
  {

    return interruptingStreamWrapper_yieldToInterruptibleIfNecessary(a2, @"Interruptible Resume");
  }

  return result;
}

CFStringRef interruptingStreamWrapper_CopyDebugDescription(const void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v3 = CFGetAllocator(a1);
  return CFStringCreateWithFormat(v3, 0, @"<APEndpointStreamInterruptingWrapper %p; sub: %p; interruptible: %p>", a1, DerivedStorage[1], *DerivedStorage);
}

uint64_t interruptingStreamWrapper_CopyProperty(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APEndpointStreamInterruptingWrapper <= 10 && (gLogCategory_APEndpointStreamInterruptingWrapper != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APEndpointStreamInterruptingWrapper, "OSStatus interruptingStreamWrapper_CopyProperty(CMBaseObjectRef, CFStringRef, CFAllocatorRef, void *)", 33554442, "%{ptr} Copying Property: %@", a1, a2);
  }

  CMBaseObject = FigEndpointStreamGetCMBaseObject();
  v9 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v9)
  {
    return 4294954514;
  }

  return v9(CMBaseObject, a2, a3, a4);
}

uint64_t interruptingStreamWrapper_SetProperty(uint64_t a1, uint64_t a2, uint64_t a3)
{
  CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APEndpointStreamInterruptingWrapper <= 10 && (gLogCategory_APEndpointStreamInterruptingWrapper != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APEndpointStreamInterruptingWrapper, "OSStatus interruptingStreamWrapper_SetProperty(CMBaseObjectRef, CFStringRef, CFTypeRef)", 33554442, "%{ptr} Setting Property: %@: %@", a1, a2, a3);
  }

  CMBaseObject = FigEndpointStreamGetCMBaseObject();
  v7 = *(*(CMBaseObjectGetVTable() + 8) + 56);
  if (!v7)
  {
    return 4294954514;
  }

  return v7(CMBaseObject, a2, a3);
}

uint64_t interruptingStreamWrapper_subStreamNotificationCallback(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (gLogCategory_APEndpointStreamInterruptingWrapper <= 10 && (gLogCategory_APEndpointStreamInterruptingWrapper != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APEndpointStreamInterruptingWrapper, "void interruptingStreamWrapper_subStreamNotificationCallback(CMNotificationCenterRef, const void *, CFStringRef, const void *, CFTypeRef)", 33554442, "%{ptr} Re-posting %@", a2, a3);
  }

  CMNotificationCenterGetDefaultLocalCenter();

  return CMNotificationCenterPostNotification();
}

uint64_t interruptingStreamWrapper_yieldToInterruptibleIfNecessary(uint64_t a1, uint64_t a2)
{
  FigEndpointStreamAirPlayGetFigEndpointStream();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  cf = 0;
  v19 = 0;
  if (*(DerivedStorage + 40))
  {
    if (gLogCategory_APEndpointStreamInterruptingWrapper <= 50 && (gLogCategory_APEndpointStreamInterruptingWrapper != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_APEndpointStreamInterruptingWrapper, "OSStatus interruptingStreamWrapper_yieldToInterruptibleIfNecessary(FigEndpointStreamAirPlayRef, CFStringRef)", 33554482, "%{ptr} Not Yielding to %{ptr}; rate == 1; %@\n", a1, *DerivedStorage, a2);
    }

    goto LABEL_31;
  }

  SharedInstance = FigBufferedAirPlayGlobalRoutingRegistryGetSharedInstance();
  v6 = DerivedStorage[4];
  v7 = *(*(CMBaseObjectGetVTable() + 16) + 40);
  if (v7)
  {
    v7(SharedInstance, v6, &v19);
    v8 = v19;
    if (v19)
    {
      if (gLogCategory_APEndpointStreamInterruptingWrapper <= 50)
      {
        if (gLogCategory_APEndpointStreamInterruptingWrapper == -1)
        {
          if (!_LogCategory_Initialize())
          {
            goto LABEL_31;
          }

          v8 = v19;
        }

        LogPrintF(&gLogCategory_APEndpointStreamInterruptingWrapper, "OSStatus interruptingStreamWrapper_yieldToInterruptibleIfNecessary(FigEndpointStreamAirPlayRef, CFStringRef)", 33554482, "%{ptr} Not Yielding to %{ptr}; bufferedClientCount: %d; %@\n", a1, *DerivedStorage, v8, a2);
      }

LABEL_31:
      v16 = 0;
      v13 = 0;
      goto LABEL_32;
    }
  }

  v9 = *MEMORY[0x277CBECE8];
  CMBaseObject = FigEndpointStreamGetCMBaseObject();
  v11 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v11)
  {
    v11(CMBaseObject, *MEMORY[0x277CC1880], v9, &cf);
  }

  if (FigCFEqual())
  {
    if (gLogCategory_APEndpointStreamInterruptingWrapper <= 50 && (gLogCategory_APEndpointStreamInterruptingWrapper != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_APEndpointStreamInterruptingWrapper, "OSStatus interruptingStreamWrapper_yieldToInterruptibleIfNecessary(FigEndpointStreamAirPlayRef, CFStringRef)", 33554482, "%{ptr} Not Yielding to %{ptr}; interruptible not resumed; %@\n", a1, *DerivedStorage, a2);
    }

    goto LABEL_31;
  }

  if (gLogCategory_APEndpointStreamInterruptingWrapper <= 50 && (gLogCategory_APEndpointStreamInterruptingWrapper != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APEndpointStreamInterruptingWrapper, "OSStatus interruptingStreamWrapper_yieldToInterruptibleIfNecessary(FigEndpointStreamAirPlayRef, CFStringRef)", 33554482, "%{ptr} Yielding to Interruptible Stream %{ptr}; %@\n", a1, *DerivedStorage, a2);
  }

  Mutable = CFDictionaryCreateMutable(v9, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  v13 = Mutable;
  if (Mutable)
  {
    CFDictionarySetValue(Mutable, @"InterruptingStreamDidYield", *MEMORY[0x277CBED28]);
    CMNotificationCenterGetDefaultLocalCenter();
    FigDispatchAsyncPostNotification();
    FigEndpointStream = FigEndpointStreamAirPlayGetFigEndpointStream();
    v15 = *(*(CMBaseObjectGetVTable() + 16) + 8);
    if (v15)
    {
      v16 = v15(FigEndpointStream, 0, 0, 0);
      if (!v16)
      {
        goto LABEL_32;
      }
    }

    else
    {
      v16 = 4294954514;
    }

    APSLogErrorAt();
  }

  else
  {
    interruptingStreamWrapper_yieldToInterruptibleIfNecessary_cold_1();
    v16 = 4294960568;
  }

LABEL_32:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v13)
  {
    CFRelease(v13);
  }

  return v16;
}

__CFString *interruptingStreamWrapper_subEndpointAddRemoveObservingProtocolCopyDebugDescription(uint64_t a1)
{
  Mutable = CFStringCreateMutable(*MEMORY[0x277CBECE8], 0);
  CFStringAppendFormat(Mutable, 0, @"APEndpointStreamInterruptingWrapper <APSubEndpointAddRemoveObservingProtocol> on <%p>", a1);
  return Mutable;
}

uint64_t interruptingStreamWrapper_NotifySubEndpointAdded(uint64_t a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APEndpointStreamInterruptingWrapper <= 10 && (gLogCategory_APEndpointStreamInterruptingWrapper != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APEndpointStreamInterruptingWrapper, "OSStatus interruptingStreamWrapper_NotifySubEndpointAdded(CMBaseObjectRef, FigEndpointRef)", 33554442, "%{ptr} Notifying subEndpoint Added: %{ptr}", a1, a2);
  }

  v5 = *(DerivedStorage + 8);
  APSubEndpointAddRemoveObservingProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (!ProtocolVTable)
  {
    return 4294954508;
  }

  v7 = *(ProtocolVTable + 16);
  if (!v7)
  {
    return 4294954508;
  }

  v8 = *(v7 + 8);
  if (!v8)
  {
    return 4294954514;
  }

  return v8(v5, a2);
}

uint64_t interruptingStreamWrapper_NotifySubEndpointRemoved(uint64_t a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APEndpointStreamInterruptingWrapper <= 10 && (gLogCategory_APEndpointStreamInterruptingWrapper != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APEndpointStreamInterruptingWrapper, "OSStatus interruptingStreamWrapper_NotifySubEndpointRemoved(CMBaseObjectRef, FigEndpointRef)", 33554442, "%{ptr} Notifying subEndpoint Removed: %{ptr}", a1, a2);
  }

  v5 = *(DerivedStorage + 8);
  APSubEndpointAddRemoveObservingProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (!ProtocolVTable)
  {
    return 4294954508;
  }

  v7 = *(ProtocolVTable + 16);
  if (!v7)
  {
    return 4294954508;
  }

  v8 = *(v7 + 16);
  if (!v8)
  {
    return 4294954514;
  }

  return v8(v5, a2);
}

uint64_t interruptingStreamWrapper_Suspend(const void *a1, const void *a2, uint64_t a3, uint64_t a4)
{
  CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APEndpointStreamInterruptingWrapper <= 50 && (gLogCategory_APEndpointStreamInterruptingWrapper != -1 || _LogCategory_Initialize()))
  {
    interruptingStreamWrapper_Suspend_cold_1(a1, v6, v7);
  }

  CFRetain(a1);
  if (a2)
  {
    CFRetain(a2);
  }

  APSDispatchAsyncFHelper();
  return 0;
}

uint64_t interruptingStreamWrapper_Resume(const void *a1, const void *a2, uint64_t a3, uint64_t a4)
{
  CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APEndpointStreamInterruptingWrapper <= 50 && (gLogCategory_APEndpointStreamInterruptingWrapper != -1 || _LogCategory_Initialize()))
  {
    interruptingStreamWrapper_Resume_cold_1(a1, v6, v7);
  }

  CFRetain(a1);
  if (a2)
  {
    CFRetain(a2);
  }

  APSDispatchAsyncFHelper();
  return 0;
}

uint64_t interruptingStreamWrapper_Flush(uint64_t a1, uint64_t a2, uint64_t a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APEndpointStreamInterruptingWrapper <= 10 && (gLogCategory_APEndpointStreamInterruptingWrapper != -1 || _LogCategory_Initialize()))
  {
    interruptingStreamWrapper_Flush_cold_1(a1, v6, v7);
  }

  v9 = *(DerivedStorage + 8);
  v10 = *(*(CMBaseObjectGetVTable() + 16) + 24);
  if (!v10)
  {
    return 4294954514;
  }

  return v10(v9, a2, a3);
}

uint64_t interruptingStreamWrapper_Dissociate(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APEndpointStreamInterruptingWrapper <= 50 && (gLogCategory_APEndpointStreamInterruptingWrapper != -1 || _LogCategory_Initialize()))
  {
    interruptingStreamWrapper_Dissociate_cold_1(a1, v2, v3);
  }

  v5 = *(DerivedStorage + 8);
  v6 = *(*(CMBaseObjectGetVTable() + 16) + 32);
  if (!v6)
  {
    return 4294954514;
  }

  return v6(v5);
}

void interruptingStreamWrapper_suspendAsync(CFTypeRef *a1)
{
  CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APEndpointStreamInterruptingWrapper <= 50 && (gLogCategory_APEndpointStreamInterruptingWrapper != -1 || _LogCategory_Initialize()))
  {
    interruptingStreamWrapper_suspendAsync_cold_1();
  }

  v2 = *a1;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APEndpointStreamInterruptingWrapper <= 50 && (gLogCategory_APEndpointStreamInterruptingWrapper != -1 || _LogCategory_Initialize()))
  {
    interruptingStreamWrapper_suspendAsync_cold_2(v2, v3, v4);
  }

  v6 = FigEndpointStreamSuspendSync();
  if (v6)
  {
    interruptingStreamWrapper_suspendAsync_cold_3(v6);
  }

  else
  {
    v7 = APEndpointStreamInterruptibleWrapperEndInterruption(*DerivedStorage);
    if (v7)
    {
      interruptingStreamWrapper_suspendAsync_cold_4(v7);
    }
  }

  if (a1[2])
  {
    CFRetain(*a1);
    APSDispatchAsyncFHelper();
  }

  CFRelease(*a1);
  v8 = a1[1];
  if (v8)
  {
    CFRelease(v8);
  }
}

void interruptingStreamWrapper_completionCallback(uint64_t a1)
{
  if (gLogCategory_APEndpointStreamInterruptingWrapper <= 10 && (gLogCategory_APEndpointStreamInterruptingWrapper != -1 || _LogCategory_Initialize()))
  {
    interruptingStreamWrapper_completionCallback_cold_1();
  }

  (*(a1 + 16))(*a1, *(a1 + 8), *(a1 + 24));
  v2 = *a1;

  CFRelease(v2);
}

void interruptingStreamWrapper_resumeAsync(CFTypeRef *a1)
{
  CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APEndpointStreamInterruptingWrapper <= 30 && (gLogCategory_APEndpointStreamInterruptingWrapper != -1 || _LogCategory_Initialize()))
  {
    interruptingStreamWrapper_resumeAsync_cold_1();
  }

  v2 = *a1;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APEndpointStreamInterruptingWrapper <= 50 && (gLogCategory_APEndpointStreamInterruptingWrapper != -1 || _LogCategory_Initialize()))
  {
    interruptingStreamWrapper_resumeAsync_cold_2(v2, v3, v4);
  }

  v6 = APEndpointStreamInterruptibleWrapperBeginInterruption(*DerivedStorage);
  if (v6)
  {
    interruptingStreamWrapper_resumeAsync_cold_3(v6);
  }

  else
  {
    v7 = FigEndpointStreamResumeSync();
    if (v7)
    {
      interruptingStreamWrapper_resumeAsync_cold_4(v7);
    }
  }

  if (a1[2])
  {
    CFRetain(*a1);
    APSDispatchAsyncFHelper();
  }

  CFRelease(*a1);
  v8 = a1[1];
  if (v8)
  {
    CFRelease(v8);
  }
}

uint64_t interruptingStreamWrapper_FlushAudioDataWithinSampleRange(uint64_t a1, __int128 *a2)
{
  FigEndpointStreamAirPlayGetFigEndpointStream();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APEndpointStreamInterruptingWrapper <= 10 && (gLogCategory_APEndpointStreamInterruptingWrapper != -1 || _LogCategory_Initialize()))
  {
    interruptingStreamWrapper_FlushAudioDataWithinSampleRange_cold_1(a1, v4, v5);
  }

  v7 = *(DerivedStorage + 8);
  v10 = *a2;
  v11 = a2[1];
  v12 = a2[2];
  v8 = *(*(CMBaseObjectGetVTable() + 24) + 8);
  if (!v8)
  {
    return 4294954514;
  }

  v13[0] = v10;
  v13[1] = v11;
  v13[2] = v12;
  return v8(v7, v13);
}

uint64_t interruptingStreamWrapper_SetRateAndAnchorTimeWithCompletionCallback(const void *a1, CMTime *a2, CMTime *a3, uint64_t a4, uint64_t a5, double a6)
{
  FigEndpointStreamAirPlayGetFigEndpointStream();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v13 = malloc_type_calloc(1uLL, 0x18uLL, 0xA00402214FCE6uLL);
  if (gLogCategory_APEndpointStreamInterruptingWrapper <= 10 && (gLogCategory_APEndpointStreamInterruptingWrapper != -1 || _LogCategory_Initialize()))
  {
    time = *a2;
    Seconds = CMTimeGetSeconds(&time);
    time = *a3;
    v15 = CMTimeGetSeconds(&time);
    LogPrintF(&gLogCategory_APEndpointStreamInterruptingWrapper, "OSStatus interruptingStreamWrapper_SetRateAndAnchorTimeWithCompletionCallback(FigEndpointStreamAirPlayRef, Float64, CMTime, CMTime, FigEndpointStreamAirPlaySetRateAndAnchorTimeCallback, void *)", 33554442, "%{ptr} SetRate:%1.3f sampleTime:%1.3f hostTime:%1.3f", a1, *&a6, *&Seconds, *&v15);
  }

  if (a1)
  {
    v16 = CFRetain(a1);
  }

  else
  {
    v16 = 0;
  }

  *v13 = v16;
  v13[1] = a4;
  v13[2] = a5;
  v17 = *(DerivedStorage + 8);
  *&v23.value = *&a2->value;
  v23.epoch = a2->epoch;
  v21 = *&a3->value;
  epoch = a3->epoch;
  v18 = *(CMBaseObjectGetVTable() + 24);
  if (!v18)
  {
    return 4294954514;
  }

  v19 = *(v18 + 16);
  if (!v19)
  {
    return 4294954514;
  }

  time = v23;
  v24 = v21;
  v25 = epoch;
  return v19(v17, &time, &v24, interruptingStreamWrapper_setRateCompletionCallback, v13, a6);
}

uint64_t interruptingStreamWrapper_copyTransportFormatDescriptionForSourceContentFormatDescription(uint64_t a1, uint64_t a2, uint64_t a3)
{
  FigEndpointStreamAirPlayGetFigEndpointStream();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APEndpointStreamInterruptingWrapper <= 10 && (gLogCategory_APEndpointStreamInterruptingWrapper != -1 || _LogCategory_Initialize()))
  {
    interruptingStreamWrapper_copyTransportFormatDescriptionForSourceContentFormatDescription_cold_1(a1, v6, v7);
  }

  v9 = *(DerivedStorage + 8);
  FigEndpointStreamAirPlayGetClassID();
  if (!CMBaseObjectIsMemberOfClass())
  {
    v9 = 0;
  }

  v10 = *(*(CMBaseObjectGetVTable() + 24) + 24);
  if (!v10)
  {
    return 4294954514;
  }

  return v10(v9, a2, a3);
}

uint64_t interruptingStreamWrapper_isPassthroughSupportedForFormatDescription(uint64_t a1, uint64_t a2, uint64_t a3)
{
  FigEndpointStreamAirPlayGetFigEndpointStream();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APEndpointStreamInterruptingWrapper <= 10 && (gLogCategory_APEndpointStreamInterruptingWrapper != -1 || _LogCategory_Initialize()))
  {
    interruptingStreamWrapper_isPassthroughSupportedForFormatDescription_cold_1(a1, v6, v7);
  }

  v9 = *(DerivedStorage + 8);
  FigEndpointStreamAirPlayGetClassID();
  if (!CMBaseObjectIsMemberOfClass())
  {
    v9 = 0;
  }

  v10 = *(*(CMBaseObjectGetVTable() + 24) + 32);
  if (!v10)
  {
    return 4294954514;
  }

  return v10(v9, a2, a3);
}

uint64_t interruptingStreamWrapper_setRateCompletionCallback(const void *a1, int a2, __int128 *a3, __int128 *a4, void *a5, double a6)
{
  FigEndpointStreamAirPlayGetFigEndpointStream();
  CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APEndpointStreamInterruptingWrapper <= 50 && (gLogCategory_APEndpointStreamInterruptingWrapper != -1 || _LogCategory_Initialize()))
  {
    interruptingStreamWrapper_setRateCompletionCallback_cold_1();
  }

  if (a1)
  {
    CFRetain(a1);
  }

  return APSDispatchAsyncFHelper();
}

void interruptingStreamWrapper_setRateCompletionCallbackWorkDispatch(uint64_t a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *(a1 + 72);
  FigEndpointStreamAirPlayGetFigEndpointStream();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APEndpointStreamInterruptingWrapper <= 50 && (gLogCategory_APEndpointStreamInterruptingWrapper != -1 || _LogCategory_Initialize()))
  {
    interruptingStreamWrapper_setRateCompletionCallbackWorkDispatch_cold_1();
  }

  if (v5[1])
  {
    CFRetain(*v5);
    APSDispatchAsyncFHelper();
  }

  if (v3)
  {
    if (gLogCategory_APEndpointStreamInterruptingWrapper <= 50 && (gLogCategory_APEndpointStreamInterruptingWrapper != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_APEndpointStreamInterruptingWrapper, "void interruptingStreamWrapper_setRateCompletionCallbackWork(FigEndpointStreamAirPlayRef, OSStatus, Float64, CMTime, CMTime, void *)", 33554482, "%{ptr} setRateCompletionCallback from %{ptr} failed with err %d. Don't yield to Interruptible stream %{ptr}\n", *v5, v2, v3, *DerivedStorage);
    }
  }

  else
  {
    *(DerivedStorage + 40) = v4 != 0.0;
    v7 = interruptingStreamWrapper_yieldToInterruptibleIfNecessary(*v5, @"SetRate Completion");
    if (v7)
    {
      interruptingStreamWrapper_setRateCompletionCallbackWorkDispatch_cold_2(v7);
    }
  }

  CFRelease(*v5);
  free(v5);
  if (*a1)
  {
    CFRelease(*a1);
  }
}

void interruptingStreamWrapper_setRateCompletionClientCallback(uint64_t a1)
{
  if (gLogCategory_APEndpointStreamInterruptingWrapper <= 50 && (gLogCategory_APEndpointStreamInterruptingWrapper != -1 || _LogCategory_Initialize()))
  {
    interruptingStreamWrapper_setRateCompletionClientCallback_cold_1();
  }

  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v9 = *(a1 + 24);
  v10 = *(a1 + 40);
  v7 = *(a1 + 48);
  v6 = *(a1 + 72);
  v5 = *(a1 + 80);
  v8 = *(a1 + 64);
  v6(v2, v3, &v9, &v7, v5, v4);
  CFRelease(*a1);
}

uint64_t APAudioHoseManagerBufferedGetClassID(uint64_t a1, uint64_t a2)
{
  if (_MergedGlobals_20 != -1)
  {
    APAudioHoseManagerBufferedGetClassID_cold_1();
  }

  return qword_280FB1B88;
}

uint64_t audioHoseManagerBuffered_registerBaseClass(uint64_t a1)
{
  ClassID = CMBaseGetClassID();

  return MEMORY[0x282112448](&audioHoseManagerBuffered_registerBaseClass_sClassDesc, ClassID, 1, a1);
}

uint64_t APAudioHoseManagerBufferedGetTypeID(uint64_t a1, uint64_t a2)
{
  if (_MergedGlobals_20 != -1)
  {
    APAudioHoseManagerBufferedGetClassID_cold_1();
  }

  v3 = qword_280FB1B88;

  return MEMORY[0x282111A98](v3);
}

uint64_t APAudioHoseManagerBufferedCreate(const __CFAllocator *a1, CFTypeRef *a2)
{
  cf = 0;
  if (_MergedGlobals_20 != -1)
  {
    APAudioHoseManagerBufferedGetClassID_cold_1();
  }

  v4 = CMDerivedObjectCreate();
  if (v4)
  {
    value_low = v4;
    APAudioHoseManagerBufferedCreate_cold_2(v4);
    goto LABEL_32;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v6 = dispatch_queue_create("HoseManagerBufferedQueue", 0);
  *(DerivedStorage + 168) = v6;
  if (!v6)
  {
    APAudioHoseManagerBufferedCreate_cold_10(&v21);
LABEL_29:
    value_low = LODWORD(v21.value);
    goto LABEL_32;
  }

  v7 = dispatch_queue_create("HoseManagerBufferedNotificationQueue", 0);
  *(DerivedStorage + 176) = v7;
  if (!v7)
  {
    APAudioHoseManagerBufferedCreate_cold_9(&v21);
    goto LABEL_29;
  }

  *(DerivedStorage + 185) = 0;
  Mutable = CFDictionaryCreateMutable(a1, 0, 0, &hoseManagerBuffered_hoseDescriptorDictionaryCallbacks);
  *DerivedStorage = 0;
  *(DerivedStorage + 192) = Mutable;
  *(DerivedStorage + 200) = 0;
  v9 = MEMORY[0x277CC0898];
  v10 = *MEMORY[0x277CC0898];
  *(DerivedStorage + 236) = *MEMORY[0x277CC0898];
  v11 = *(v9 + 16);
  *(DerivedStorage + 252) = v11;
  *(DerivedStorage + 372) = 1;
  *(DerivedStorage + 152) = 0;
  *(DerivedStorage + 36) = 0;
  *(DerivedStorage + 40) = 0;
  v20 = v10;
  *(DerivedStorage + 48) = v10;
  *(DerivedStorage + 64) = v11;
  *(DerivedStorage + 72) = FigGetCFPreferenceNumberWithDefault();
  if (gLogCategory_APAudioHoseManagerBuffered <= 50 && (gLogCategory_APAudioHoseManagerBuffered != -1 || _LogCategory_Initialize()))
  {
    APAudioHoseManagerBufferedCreate_cold_3();
  }

  *(DerivedStorage + 76) = v20;
  *(DerivedStorage + 92) = v11;
  *(DerivedStorage + 100) = v20;
  *(DerivedStorage + 116) = v11;
  *(DerivedStorage + 124) = 0;
  CFPreferenceNumberWithDefault = FigGetCFPreferenceNumberWithDefault();
  CMTimeMake(&v21, CFPreferenceNumberWithDefault, 1);
  *(DerivedStorage + 128) = v21;
  *(DerivedStorage + 208) = 0;
  *(DerivedStorage + 184) = 0;
  *(DerivedStorage + 188) = 0;
  *(DerivedStorage + 212) = v20;
  *(DerivedStorage + 228) = v11;
  *(DerivedStorage + 236) = v20;
  *(DerivedStorage + 252) = v11;
  *(DerivedStorage + 260) = 0;
  *(DerivedStorage + 264) = v20;
  *(DerivedStorage + 280) = v11;
  *(DerivedStorage + 288) = v20;
  *(DerivedStorage + 304) = v11;
  *(DerivedStorage + 328) = 0;
  *(DerivedStorage + 472) = FigSimpleMutexCreate();
  *(DerivedStorage + 320) = 0;
  FigGetCFPreferenceNumberWithDefault();
  *(DerivedStorage + 336) = MillisecondsToUpTicks();
  FigGetCFPreferenceNumberWithDefault();
  *(DerivedStorage + 344) = MillisecondsToUpTicks();
  FigGetCFPreferenceNumberWithDefault();
  *(DerivedStorage + 352) = MillisecondsToUpTicks();
  FigGetCFPreferenceNumberWithDefault();
  *(DerivedStorage + 360) = MillisecondsToUpTicks();
  *(DerivedStorage + 368) = FigGetCFPreferenceNumberWithDefault();
  *(DerivedStorage + 376) = v20;
  *(DerivedStorage + 392) = v11;
  v13 = FigGetCFPreferenceNumberWithDefault();
  CMTimeMake(&v21, v13, 1);
  *(DerivedStorage + 400) = v21;
  v14 = *MEMORY[0x277CBECE8];
  v15 = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  *(DerivedStorage + 456) = v15;
  if (v15)
  {
    v16 = CFDictionaryCreateMutable(v14, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    *(DerivedStorage + 448) = v16;
    if (v16)
    {
      v17 = FigGetCFPreferenceNumberWithDefault();
      CMTimeMake(&v21, v17, 1000);
      *(DerivedStorage + 212) = v21;
      if (gLogCategory_APAudioHoseManagerBuffered <= 50 && (gLogCategory_APAudioHoseManagerBuffered != -1 || _LogCategory_Initialize()))
      {
        APAudioHoseManagerBufferedCreate_cold_4();
      }

      *(DerivedStorage + 208) = FigGetCFPreferenceNumberWithDefault();
      if (gLogCategory_APAudioHoseManagerBuffered <= 50)
      {
        if (gLogCategory_APAudioHoseManagerBuffered != -1 || _LogCategory_Initialize())
        {
          APAudioHoseManagerBufferedCreate_cold_5();
        }

        if (gLogCategory_APAudioHoseManagerBuffered <= 50 && (gLogCategory_APAudioHoseManagerBuffered != -1 || _LogCategory_Initialize()))
        {
          APAudioHoseManagerBufferedCreate_cold_6(&cf);
        }
      }

      value_low = 0;
      *a2 = cf;
      return value_low;
    }

    value_low = 4294894846;
    APAudioHoseManagerBufferedCreate_cold_7();
  }

  else
  {
    value_low = 4294894846;
    APAudioHoseManagerBufferedCreate_cold_8();
  }

LABEL_32:
  if (cf)
  {
    CFRelease(cf);
  }

  return value_low;
}

uint64_t audioHoseManagerBuffered_Finalize(CMTime *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APAudioHoseManagerBuffered <= 50 && (gLogCategory_APAudioHoseManagerBuffered != -1 || _LogCategory_Initialize()))
  {
    audioHoseManagerBuffered_Finalize_cold_1(a1);
  }

  *(CMBaseObjectGetDerivedStorage() + 36) = 1;
  dispatch_sync(*(DerivedStorage + 168), &__block_literal_global_30);
  v3 = *(DerivedStorage + 168);
  if (v3)
  {
    dispatch_release(v3);
    *(DerivedStorage + 168) = 0;
  }

  dispatch_sync(*(DerivedStorage + 176), &__block_literal_global_84);
  v4 = *(DerivedStorage + 176);
  if (v4)
  {
    dispatch_release(v4);
    *(DerivedStorage + 176) = 0;
  }

  v5 = *(DerivedStorage + 200);
  if (v5)
  {
    CFRelease(v5);
    *(DerivedStorage + 200) = 0;
  }

  v6 = *(DerivedStorage + 160);
  if (v6)
  {
    CFRelease(v6);
    *(DerivedStorage + 160) = 0;
  }

  v7 = *(DerivedStorage + 192);
  if (v7)
  {
    CFRelease(v7);
    *(DerivedStorage + 192) = 0;
  }

  v8 = *(DerivedStorage + 440);
  if (v8)
  {
    CFRelease(v8);
    *(DerivedStorage + 440) = 0;
  }

  *(DerivedStorage + 320) = 0;
  audioHoseManagerBuffered_releaseCryptors(a1, MEMORY[0x277CC0898]);
  v9 = *(DerivedStorage + 448);
  if (v9)
  {
    CFRelease(v9);
    *(DerivedStorage + 448) = 0;
  }

  audioHoseManagerBuffered_releaseMagicCookies(a1, MEMORY[0x277CC0898]);
  v10 = *(DerivedStorage + 456);
  if (v10)
  {
    CFRelease(v10);
    *(DerivedStorage + 456) = 0;
  }

  result = FigSimpleMutexDestroy();
  *(DerivedStorage + 472) = 0;
  return result;
}

__CFString *audioHoseManagerBuffered_CopyDebugDescription(uint64_t a1)
{
  Mutable = CFStringCreateMutable(*MEMORY[0x277CBECE8], 0);
  CFStringAppendFormat(Mutable, 0, @"<APAudioHoseManagerBuffered %p>", a1);
  return Mutable;
}

uint64_t audioHoseManagerBuffered_CopyProperty(uint64_t a1, const void *a2, uint64_t a3, CFTypeRef *a4)
{
  CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  if (a2)
  {
    if (a4)
    {
      if (CFEqual(a2, @"ShouldUseReceiverChoosesAnchor"))
      {
        audioHoseManagerBuffered_CopyProperty_cold_1(a1, a4);
        v9 = 0;
      }

      else if (CFEqual(a2, @"IsRunning"))
      {
        CMBaseObjectGetDerivedStorage();
        v11 = 0;
        v12 = &v11;
        v13 = 0x2000000000;
        v14 = 0;
        CFDictionaryApplyBlock();
        if (gLogCategory_APAudioHoseManagerBuffered <= 90 && (gLogCategory_APAudioHoseManagerBuffered != -1 || _LogCategory_Initialize()))
        {
          audioHoseManagerBuffered_CopyProperty_cold_2();
        }

        v7 = *(v12 + 24);
        _Block_object_dispose(&v11, 8);
        v8 = MEMORY[0x277CBED28];
        if (!v7)
        {
          v8 = MEMORY[0x277CBED10];
        }

        v9 = 0;
        *a4 = CFRetain(*v8);
      }

      else
      {
        if (gLogCategory_APAudioHoseManagerBuffered <= 90 && (gLogCategory_APAudioHoseManagerBuffered != -1 || _LogCategory_Initialize()))
        {
          audioHoseManagerBuffered_CopyProperty_cold_3();
        }

        v9 = 4294954509;
      }
    }

    else
    {
      v9 = 4294894845;
      audioHoseManagerBuffered_CopyProperty_cold_4();
    }
  }

  else
  {
    v9 = 4294894845;
    audioHoseManagerBuffered_CopyProperty_cold_5();
  }

  FigSimpleMutexUnlock();
  return v9;
}

uint64_t audioHoseManagerBuffered_SetProperty(uint64_t a1, uint64_t a2, const __CFBoolean *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!a2)
  {
    v10 = 4294894845;
    audioHoseManagerBuffered_SetProperty_cold_8();
    return v10;
  }

  v7 = DerivedStorage;
  if (FigCFEqual())
  {
    if (a3 && (v8 = CFGetTypeID(a3), v8 != CFBooleanGetTypeID()))
    {
      v10 = 4294894845;
      audioHoseManagerBuffered_SetProperty_cold_1();
    }

    else
    {
      Value = CFBooleanGetValue(a3);
      v10 = 0;
      *(v7 + 185) = Value;
    }

    return v10;
  }

  if (FigCFEqual())
  {
    if (a3)
    {
      v11 = CFGetTypeID(a3);
      if (v11 != CFNumberGetTypeID())
      {
        v10 = 4294894845;
        audioHoseManagerBuffered_SetProperty_cold_2();
        return v10;
      }
    }

    UInt16 = FigCFNumberGetUInt16();
    block[6] = MEMORY[0x277D85DD0];
    block[7] = 0x40000000;
    block[8] = __audioHoseManagerBuffered_SetProperty_block_invoke;
    block[9] = &__block_descriptor_tmp_111;
    v25 = UInt16;
    block[10] = a1;
    CFDictionaryApplyBlock();
    return 0;
  }

  if (FigCFEqual())
  {
    if (a3)
    {
      v13 = CFGetTypeID(a3);
      if (v13 != CFNumberGetTypeID())
      {
        v10 = 4294894845;
        audioHoseManagerBuffered_SetProperty_cold_3();
        return v10;
      }
    }

    v14 = *(v7 + 168);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 0x40000000;
    block[2] = __audioHoseManagerBuffered_SetProperty_block_invoke_2;
    block[3] = &__block_descriptor_tmp_112_0;
    block[4] = a1;
    block[5] = a3;
    v15 = block;
    goto LABEL_14;
  }

  if (FigCFEqual())
  {
    if (a3 && (v17 = CFGetTypeID(a3), v17 != CFDictionaryGetTypeID()))
    {
      v10 = 4294894845;
      audioHoseManagerBuffered_SetProperty_cold_4();
    }

    else
    {
      CMTimeMakeFromDictionary(&v23, a3);
      v10 = 0;
      *(v7 + 236) = v23;
    }

    return v10;
  }

  if (FigCFEqual())
  {
    if (a3 && (v18 = CFGetTypeID(a3), v18 != CFDictionaryGetTypeID()))
    {
      v10 = 4294894845;
      audioHoseManagerBuffered_SetProperty_cold_5();
    }

    else
    {
      CMTimeMakeFromDictionary(&v23, a3);
      v10 = 0;
      *(v7 + 264) = v23;
    }

    return v10;
  }

  if (FigCFEqual())
  {
    v14 = *(v7 + 168);
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 0x40000000;
    v22[2] = __audioHoseManagerBuffered_SetProperty_block_invoke_3;
    v22[3] = &__block_descriptor_tmp_113_0;
    v22[4] = v7;
    v22[5] = a3;
    v15 = v22;
    goto LABEL_14;
  }

  if (!FigCFEqual())
  {
    if (FigCFEqual())
    {
      if (a3)
      {
        v20 = CFGetTypeID(a3);
        if (v20 != CFStringGetTypeID())
        {
          v10 = 4294894845;
          audioHoseManagerBuffered_SetProperty_cold_7();
          return v10;
        }
      }

      *v7 = 0;
      CFStringGetCString(a3, v7, 36, 0x600u);
      return 0;
    }

    if (!FigCFEqual())
    {
      return 4294954509;
    }

    v14 = *(v7 + 168);
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 0x40000000;
    v21[2] = __audioHoseManagerBuffered_SetProperty_block_invoke_4;
    v21[3] = &__block_descriptor_tmp_114_1;
    v21[4] = v7;
    v21[5] = a3;
    v15 = v21;
LABEL_14:
    dispatch_sync(v14, v15);
    return 0;
  }

  if (a3 && (v19 = CFGetTypeID(a3), v19 != CFDictionaryGetTypeID()))
  {
    v10 = 4294894845;
    audioHoseManagerBuffered_SetProperty_cold_6();
  }

  else
  {
    CMTimeMakeFromDictionary(&v23, a3);
    v10 = 0;
    *(v7 + 288) = v23;
  }

  return v10;
}

void audioHoseManagerBuffered_handleCryptorKeyUpdated(uint64_t a1, const void *a2, uint64_t a3, const void *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APAudioHoseManagerBuffered <= 50 && (gLogCategory_APAudioHoseManagerBuffered != -1 || _LogCategory_Initialize()))
  {
    audioHoseManagerBuffered_handleCryptorKeyUpdated_cold_1();
  }

  v7 = malloc_type_calloc(1uLL, 0x10uLL, 0x60040FAFB2B2FuLL);
  if (v7)
  {
    v8 = v7;
    if (a2)
    {
      v9 = CFRetain(a2);
    }

    else
    {
      v9 = 0;
    }

    *v8 = v9;
    if (a4)
    {
      v10 = CFRetain(a4);
    }

    else
    {
      v10 = 0;
    }

    v8[1] = v10;
    v11 = *(DerivedStorage + 168);

    dispatch_async_f(v11, v8, audioHoseManagerBuffered_handleCryptorKeyUpdatedInternal);
  }

  else
  {
    audioHoseManagerBuffered_handleCryptorKeyUpdated_cold_2();
  }
}

uint64_t audioHoseManagerBuffered_setCryptorForAllHoses(uint64_t a1, uint64_t a2)
{
  v10 = 0;
  v11[0] = &v10;
  v11[1] = 0x2000000000;
  v12 = 0;
  CMBaseObjectGetDerivedStorage();
  v6 = 0;
  v7 = &v6;
  v8 = 0x2000000000;
  v9 = 0;
  if (a2)
  {
    CryptorIDForCryptor = audioHoseManagerBuffered_getCryptorIDForCryptor(a2);
    v7[3] = CryptorIDForCryptor;
    CFDictionaryApplyBlock();
    v4 = *(v11[0] + 24);
  }

  else
  {
    audioHoseManagerBuffered_setCryptorForAllHoses_cold_1(v11);
    v4 = 4294894845;
  }

  _Block_object_dispose(&v6, 8);
  _Block_object_dispose(&v10, 8);
  return v4;
}

uint64_t audioHoseManagerBuffered_hoseSetCryptorCallbackCompletionHandler(uint64_t a1, uint64_t a2, int a3, const void *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v9 = malloc_type_calloc(1uLL, 0x20uLL, 0x10200401C4E69EBuLL);
  if (v9)
  {
    v10 = v9;
    if (a4)
    {
      v11 = CFRetain(a4);
    }

    else
    {
      v11 = 0;
    }

    *v10 = v11;
    v10[1] = a1;
    v10[2] = a2;
    *(v10 + 6) = a3;
    dispatch_async_f(*(DerivedStorage + 168), v10, audioHoseManagerBuffered_hoseSetCryptorCallbackCompletionHandlerInternal);
    return 0;
  }

  else
  {
    audioHoseManagerBuffered_hoseSetCryptorCallbackCompletionHandler_cold_1();
    return 4294894846;
  }
}

void audioHoseManagerBuffered_hoseSetCryptorCallbackCompletionHandlerInternal(const void **a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  Value = CFDictionaryGetValue(*(DerivedStorage + 192), a1[1]);
  if (!Value)
  {
    audioHoseManagerBuffered_hoseSetCryptorCallbackCompletionHandlerInternal_cold_4();
    goto LABEL_16;
  }

  v4 = Value;
  v5 = *(a1 + 6);
  if (!v5)
  {
    if (gLogCategory_APAudioHoseManagerBuffered <= 50 && (gLogCategory_APAudioHoseManagerBuffered != -1 || _LogCategory_Initialize()))
    {
      audioHoseManagerBuffered_hoseSetCryptorCallbackCompletionHandlerInternal_cold_1(a1);
    }

    goto LABEL_15;
  }

  if (v5 != 200501)
  {
    if (gLogCategory_APAudioHoseManagerBuffered <= 90 && (gLogCategory_APAudioHoseManagerBuffered != -1 || _LogCategory_Initialize()))
    {
      audioHoseManagerBuffered_hoseSetCryptorCallbackCompletionHandlerInternal_cold_3();
    }

LABEL_15:
    v4[176] = 1;
    goto LABEL_16;
  }

  if (gLogCategory_APAudioHoseManagerBuffered <= 90 && (gLogCategory_APAudioHoseManagerBuffered != -1 || _LogCategory_Initialize()))
  {
    audioHoseManagerBuffered_hoseSetCryptorCallbackCompletionHandlerInternal_cold_2();
  }

LABEL_16:
  v6 = *a1;
  if (*a1)
  {
    global_queue = dispatch_get_global_queue(0, 0);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 0x40000000;
    block[2] = __audioHoseManagerBuffered_releaseAsync_block_invoke;
    block[3] = &__block_descriptor_tmp_98;
    block[4] = v6;
    dispatch_async(global_queue, block);
  }

  free(a1);
}

uint64_t __audioHoseManagerBuffered_shouldUseReceiverChoosesAnchor_block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  result = APSGetFBOPropertyInt64();
  if (result)
  {
    v5 = 0;
  }

  else
  {
    result = APSGetFBOPropertyInt64();
    v5 = result != 0;
  }

  *(*(*(a1 + 32) + 8) + 24) = v5;
  return result;
}

uint64_t __audioHoseManagerBuffered_isRunning_block_invoke(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (*(a3 + 92))
  {
    *(*(*(result + 32) + 8) + 24) = 1;
  }

  return result;
}

void __audioHoseManagerBuffered_setLoudnessNormalizationOnAllHoses_block_invoke(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  cf = 0;
  v5 = *a3;
  v6 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v6)
  {
    v6(v5, *MEMORY[0x277CC18E0], 0, &cf);
    v7 = cf;
    if (!*(a3 + 8) && cf)
    {
      if (gLogCategory_APAudioHoseManagerBuffered <= 50 && (gLogCategory_APAudioHoseManagerBuffered != -1 || _LogCategory_Initialize()))
      {
        __audioHoseManagerBuffered_setLoudnessNormalizationOnAllHoses_block_invoke_cold_1(a1);
      }

      v8 = *a3;
      v9 = *(a1 + 48);
      APSEndpointStreamAudioHoseProtocolGetProtocolID();
      ProtocolVTable = CMBaseObjectGetProtocolVTable();
      if (ProtocolVTable && (v11 = *(ProtocolVTable + 16)) != 0)
      {
        v12 = *(v11 + 112);
        if (v12)
        {
          v13 = v12(v8, v9);
        }

        else
        {
          v13 = -12782;
        }
      }

      else
      {
        v13 = -12788;
      }

      *(*(*(a1 + 32) + 8) + 24) = v13;
      v14 = *(*(*(a1 + 32) + 8) + 24);
      if (v14)
      {
        __audioHoseManagerBuffered_setLoudnessNormalizationOnAllHoses_block_invoke_cold_2(v14);
      }

      v7 = cf;
    }

    if (v7)
    {
      CFRelease(v7);
    }
  }
}

__CFString *hoseManagerBuffered_audioHoseProtocolCopyDebugDescription(uint64_t a1)
{
  Mutable = CFStringCreateMutable(*MEMORY[0x277CBECE8], 0);
  CFStringAppendFormat(Mutable, 0, @"APAudioHoseManagerBuffered <APSEndpointStreamAudioHoseRegistrarProtocol> on <%p>", a1);
  return Mutable;
}

uint64_t audioHoseManagerBuffered_audioHoseRegistrarRegisterHose(uint64_t a1, const void *a2, uint64_t a3, void *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  cf = 0;
  valuePtr = 0;
  if (gLogCategory_APAudioHoseManagerBuffered <= 50 && (gLogCategory_APAudioHoseManagerBuffered != -1 || _LogCategory_Initialize()))
  {
    audioHoseManagerBuffered_audioHoseRegistrarRegisterHose_cold_1();
  }

  if (CFDictionaryGetValue(*(DerivedStorage + 192), a2))
  {
    audioHoseManagerBuffered_audioHoseRegistrarRegisterHose_cold_2(&value);
    value_low = value;
    goto LABEL_73;
  }

  v8 = CMBaseObjectGetDerivedStorage();
  v51 = 0u;
  v50 = 0u;
  v49 = 0u;
  v48 = 0u;
  v47 = 0u;
  v46 = 0u;
  v45 = 0u;
  v44 = 0u;
  v43 = 0u;
  v42 = 0u;
  memset(v41, 0, sizeof(v41));
  v40 = 0u;
  v39 = 0u;
  v38 = 0u;
  if (!CFDictionaryContainsKey(*(v8 + 192), a2))
  {
    if (a2)
    {
      v9 = CFRetain(a2);
    }

    else
    {
      v9 = 0;
    }

    value = v9;
    LOWORD(v40) = 256;
    *&v41[0] = 0;
    *(&v40 + 1) = mach_absolute_time();
    *(v41 + 8) = *MEMORY[0x277CC08F0];
    *(&v41[1] + 1) = *(MEMORY[0x277CC08F0] + 16);
    *&v42 = 0;
    BYTE8(v47) = 0;
    v52.value = 0;
    v10 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (!v10)
    {
      LOBYTE(v38) = 0;
LABEL_16:
      v14 = *(v8 + 480);
      *(v8 + 480) = v14 + 1;
      LODWORD(v51) = v14;
      *(&v51 + 1) = 0;
      v15 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      if (v15)
      {
        v15(a2, *MEMORY[0x277CE9FD0], *MEMORY[0x277CBECE8], &v50 + 8);
      }

      CFDictionaryAddValue(*(v8 + 192), a2, &value);
      if (CFDictionaryGetCount(*(v8 + 192)) > *(v8 + 484))
      {
        *(v8 + 484) = CFDictionaryGetCount(*(v8 + 192));
      }

      goto LABEL_20;
    }

    v11 = v10(a2, *MEMORY[0x277CC1878], 0, &v52);
    v12 = v52.value;
    if (v11)
    {
      v13 = 0;
      if (!v52.value)
      {
LABEL_13:
        LOBYTE(v38) = v13;
        if (v13)
        {
          *(v8 + 184) = 1;
        }

        goto LABEL_16;
      }
    }

    else
    {
      v13 = FigCFEqual() != 0;
      v12 = v52.value;
      if (!v52.value)
      {
        goto LABEL_13;
      }
    }

    CFRelease(v12);
    goto LABEL_13;
  }

  if ((audioHoseManagerBuffered_audioHoseRegistrarRegisterHose_cold_3(&value, &v52) & 1) == 0)
  {
    goto LABEL_96;
  }

LABEL_20:
  v16 = CFDictionaryGetValue(*(DerivedStorage + 192), a2);
  if (!v16)
  {
    audioHoseManagerBuffered_audioHoseRegistrarRegisterHose_cold_11(&v52);
LABEL_96:
    value_low = LODWORD(v52.value);
    goto LABEL_73;
  }

  v17 = v16;
  if (CFDictionaryGetInt64())
  {
    *(DerivedStorage + 187) = 1;
    audioHoseManagerBuffered_setEchoCancellationIsEnabledToAllHoses(a1, 1);
  }

  if (*(DerivedStorage + 187))
  {
    v18 = *(*(CMBaseObjectGetVTable() + 8) + 56);
    if (v18)
    {
      v18(a2, *MEMORY[0x277CEA0C0], *MEMORY[0x277CBED28]);
    }
  }

  v19 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v19)
  {
    value_low = 4294954514;
LABEL_57:
    APSLogErrorAt();
    goto LABEL_73;
  }

  v20 = v19(a2, *MEMORY[0x277CE9F58], 0, &cf);
  if (v20)
  {
    value_low = v20;
    goto LABEL_57;
  }

  if (cf && (v21 = CFGetTypeID(cf), v21 == CFNumberGetTypeID()))
  {
    CFNumberGetValue(cf, kCFNumberSInt32Type, &valuePtr);
    v22 = *(DerivedStorage + 44) * valuePtr / 0x64;
    if (*(DerivedStorage + 40) < v22)
    {
      v22 = *(DerivedStorage + 40);
    }

    *(v17 + 27) = valuePtr - v22;
    if (gLogCategory_APAudioHoseManagerBuffered <= 50 && (gLogCategory_APAudioHoseManagerBuffered != -1 || _LogCategory_Initialize()))
    {
      audioHoseManagerBuffered_audioHoseRegistrarRegisterHose_cold_4();
    }

    CFPreferenceNumberWithDefault = FigGetCFPreferenceNumberWithDefault();
    CMTimeMake(&v52, CFPreferenceNumberWithDefault, 1);
    *(v17 + 116) = v52;
    if (gLogCategory_APAudioHoseManagerBuffered <= 50 && (gLogCategory_APAudioHoseManagerBuffered != -1 || _LogCategory_Initialize()))
    {
      audioHoseManagerBuffered_audioHoseRegistrarRegisterHose_cold_5();
    }

    *(v17 + 28) = *(DerivedStorage + 72) * valuePtr / 0x64;
    if (gLogCategory_APAudioHoseManagerBuffered <= 50 && (gLogCategory_APAudioHoseManagerBuffered != -1 || _LogCategory_Initialize()))
    {
      audioHoseManagerBuffered_audioHoseRegistrarRegisterHose_cold_6();
    }

    audioHoseManagerBuffered_updateStartWatermarkTime(a1, a2);
    v24 = valuePtr;
    if (*(DerivedStorage + 124) < valuePtr)
    {
      if (valuePtr >= 0x753000)
      {
        v24 = 7680000;
      }

      *(DerivedStorage + 124) = v24;
      if (gLogCategory_APAudioHoseManagerBuffered <= 50 && (gLogCategory_APAudioHoseManagerBuffered != -1 || _LogCategory_Initialize()))
      {
        audioHoseManagerBuffered_audioHoseRegistrarRegisterHose_cold_7();
      }
    }

    v25 = *(DerivedStorage + 188);
    if (v25)
    {
      v25 = APSIsFBOPropertyAvailable() != 0;
    }

    v17[9] = v25;
    if (gLogCategory_APAudioHoseManagerBuffered <= 50)
    {
      if (gLogCategory_APAudioHoseManagerBuffered != -1 || _LogCategory_Initialize())
      {
        audioHoseManagerBuffered_audioHoseRegistrarRegisterHose_cold_8();
      }

      if (gLogCategory_APAudioHoseManagerBuffered <= 50 && (gLogCategory_APAudioHoseManagerBuffered != -1 || _LogCategory_Initialize()))
      {
        if (a1)
        {
          v26 = CMBaseObjectGetDerivedStorage();
        }

        else
        {
          v26 = "";
        }

        if (v17[8])
        {
          v28 = "local";
        }

        else
        {
          v28 = "remote";
        }

        Count = CFDictionaryGetCount(*(DerivedStorage + 192));
        LogPrintF(&gLogCategory_APAudioHoseManagerBuffered, "OSStatus audioHoseManagerBuffered_audioHoseRegistrarRegisterHose(APSEndpointStreamAudioHoseRegistrarRef, APSEndpointStreamAudioHoseRef, CFDictionaryRef, const APSEndpointStreamAudioHoseRegistrarCallbacks **)", 33554482, "HMB [%{ptr}] %sWHAPRO Registered hose [%{ptr}] (%s) registered (stream count %d). First read index / audioBufferSize = %d\n", a1, v26, a2, v28, Count, *(v17 + 5), valuePtr);
      }
    }

    CMBaseObjectGetDerivedStorage();
    v57[0] = 0;
    v57[1] = v57;
    v57[2] = 0x2000000000;
    v57[3] = 0;
    if (a2)
    {
      v52.value = MEMORY[0x277D85DD0];
      *&v52.timescale = 0x40000000;
      v52.epoch = __audioHoseManagerBuffered_setAllCryptorsForSingleHose_block_invoke;
      v53 = &unk_2784A02B8;
      v54 = v57;
      v55 = a1;
      v56 = a2;
      CFDictionaryApplyBlock();
    }

    _Block_object_dispose(v57, 8);
    if (*(CMBaseObjectGetDerivedStorage() + 186))
    {
      v52.value = MEMORY[0x277D85DD0];
      *&v52.timescale = 0x40000000;
      v52.epoch = __audioHoseManagerBuffered_setAllMagicCookiesForSingleHose_block_invoke;
      v53 = &__block_descriptor_tmp_190_1;
      v54 = a2;
      v55 = a1;
      CFDictionaryApplyBlock();
    }

    if (v17[8] || !*(DerivedStorage + 186))
    {
      value_low = 0;
    }

    else
    {
      if (gLogCategory_APAudioHoseManagerBuffered <= 50 && (gLogCategory_APAudioHoseManagerBuffered != -1 || _LogCategory_Initialize()))
      {
        audioHoseManagerBuffered_audioHoseRegistrarRegisterHose_cold_9();
      }

      v31 = *(DerivedStorage + 185);
      APSEndpointStreamAudioHoseProtocolGetProtocolID();
      ProtocolVTable = CMBaseObjectGetProtocolVTable();
      if (ProtocolVTable && (v33 = *(ProtocolVTable + 16)) != 0)
      {
        v34 = *(v33 + 112);
        if (v34)
        {
          value_low = v34(a2, v31);
        }

        else
        {
          value_low = 4294954514;
        }
      }

      else
      {
        value_low = 4294954508;
      }
    }

    *a4 = &audioHoseManagerBuffered_audioHoseRegistrarRegisterHose_callbacks;
  }

  else
  {
    audioHoseManagerBuffered_audioHoseRegistrarRegisterHose_cold_10();
    value_low = 4294960540;
  }

LABEL_73:
  if (cf)
  {
    CFRelease(cf);
  }

  return value_low;
}

uint64_t audioHoseManagerBuffered_audioHoseRegistrarDeregisterHose(uint64_t a1, const void *a2, uint64_t a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APAudioHoseManagerBuffered <= 50 && (gLogCategory_APAudioHoseManagerBuffered != -1 || _LogCategory_Initialize()))
  {
    audioHoseManagerBuffered_audioHoseRegistrarDeregisterHose_cold_1();
  }

  if (CFDictionaryContainsKey(*(DerivedStorage + 192), a2))
  {
    audioHoseManagerBuffered_removeHoseFromDescriptors(a1, a2);
    if (CFDictionaryGetInt64())
    {
      *(DerivedStorage + 187) = 0;
      audioHoseManagerBuffered_setEchoCancellationIsEnabledToAllHoses(a1, 0);
    }
  }

  else
  {
    audioHoseManagerBuffered_audioHoseRegistrarDeregisterHose_cold_2();
  }

  return 0;
}

uint64_t audioHoseManagerBuffered_CopyAudioDataBBufsForHose(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v33 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  context[0] = a1;
  context[1] = a2;
  context[2] = a3;
  context[3] = a4;
  context[4] = &v33;
  if (!a2)
  {
    v30 = 4294894845;
    audioHoseManagerBuffered_CopyAudioDataBBufsForHose_cold_7();
    return v30;
  }

  if (!a3)
  {
    v30 = 4294894845;
    audioHoseManagerBuffered_CopyAudioDataBBufsForHose_cold_6();
    return v30;
  }

  v9 = DerivedStorage;
  if (gLogCategory_APAudioHoseManagerBuffered <= 50 && (gLogCategory_APAudioHoseManagerBuffered != -1 || _LogCategory_Initialize()))
  {
    audioHoseManagerBuffered_CopyAudioDataBBufsForHose_cold_1(a1);
  }

  dispatch_sync_f(*(v9 + 168), context, audioHoseManagerBuffered_copyAudioDataBBufDispatchInternal);
  CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  v10 = CMBaseObjectGetDerivedStorage();
  v60 = 0;
  v61 = &v60;
  v62 = 0x2000000000;
  LODWORD(v63) = 0;
  v56 = 0;
  v57 = &v56;
  v58 = 0x2000000000;
  v59 = -1;
  v11 = mach_absolute_time();
  v52 = 0;
  v53 = &v52;
  v54 = 0x2000000000;
  v55 = 0;
  v50[0] = 0;
  v50[1] = v50;
  v50[2] = 0x2000000000;
  v51 = 0;
  v48[0] = 0;
  v48[1] = v48;
  v48[2] = 0x2000000000;
  v49 = 0;
  v12 = *(v10 + 260) == 0;
  if (!*(v10 + 328))
  {
    v13 = v11;
    if (gLogCategory_APAudioHoseManagerBuffered <= 50 && (gLogCategory_APAudioHoseManagerBuffered != -1 || _LogCategory_Initialize()))
    {
      audioHoseManagerBuffered_CopyAudioDataBBufsForHose_cold_2(a1);
    }

    v34 = MEMORY[0x277D85DD0];
    v35 = 0x40000000;
    v36 = __audioHoseManagerBuffered_UpdateHosesPrimed_block_invoke;
    v37 = &unk_2784A0248;
    v44 = v10;
    v45 = a1;
    v38 = &v52;
    v39 = v50;
    v47 = v12;
    v46 = v13;
    v40 = v48;
    v41 = &v60;
    v42 = &v56;
    v43 = a1;
    CFDictionaryApplyBlock();
    if (gLogCategory_APAudioHoseManagerBuffered <= 50 && (gLogCategory_APAudioHoseManagerBuffered != -1 || _LogCategory_Initialize()))
    {
      if (a1)
      {
        v14 = CMBaseObjectGetDerivedStorage();
      }

      else
      {
        v14 = "";
      }

      v15 = *(v10 + 328);
      v16 = v57[3];
      v17 = *(v10 + 192);
      v18 = *(v61 + 6);
      Count = CFDictionaryGetCount(v17);
      LogPrintF(&gLogCategory_APAudioHoseManagerBuffered, "OSStatus audioHoseManagerBuffered_UpdateHosesPrimed(APAudioHoseManagerBufferedRef, int *)", 33554482, "HMB [%{ptr}] %s(startup) startupRequirementsMet = %d, minTicks = %u, numHosesPrimedOrBetter=%d/%d\n", a1, v14, v15, v16, v18, Count);
    }
  }

  v20 = *(v61 + 6);
  _Block_object_dispose(v48, 8);
  _Block_object_dispose(v50, 8);
  _Block_object_dispose(&v52, 8);
  _Block_object_dispose(&v56, 8);
  _Block_object_dispose(&v60, 8);
  v21 = CMBaseObjectGetDerivedStorage();
  v22 = CFDictionaryGetCount(*(v21 + 192));
  if (!*(v21 + 328))
  {
    v23 = v22;
    if (gLogCategory_APAudioHoseManagerBuffered <= 50 && (gLogCategory_APAudioHoseManagerBuffered != -1 || _LogCategory_Initialize()))
    {
      audioHoseManagerBuffered_CopyAudioDataBBufsForHose_cold_3(a1);
    }

    if (v23 == v20)
    {
      if (gLogCategory_APAudioHoseManagerBuffered <= 50 && (gLogCategory_APAudioHoseManagerBuffered != -1 || _LogCategory_Initialize()))
      {
        audioHoseManagerBuffered_CopyAudioDataBBufsForHose_cold_4(a1);
      }

LABEL_39:
      *(v21 + 328) = 1;
      goto LABEL_40;
    }

    if (v23 * *(v21 + 368) <= 100 * v20)
    {
      if (gLogCategory_APAudioHoseManagerBuffered <= 50 && (gLogCategory_APAudioHoseManagerBuffered != -1 || _LogCategory_Initialize()))
      {
        if (a1)
        {
          v24 = CMBaseObjectGetDerivedStorage();
        }

        else
        {
          v24 = "";
        }

        LogPrintF(&gLogCategory_APAudioHoseManagerBuffered, "void audioHoseManagerBuffered_updateStartupRequirementsMet(APAudioHoseManagerBufferedRef, int)", 33554482, "HMB [%{ptr}] %s(startup) startupRequirementsMet = TRUE because %d of %d hoses primed and minTicks %llu >= minWaitAllTicks %llu\n", a1, v24, v20, v23, -1, *(v21 + 352));
      }

      goto LABEL_39;
    }
  }

LABEL_40:
  v25 = CMBaseObjectGetDerivedStorage();
  v60 = 0;
  v61 = &v60;
  v62 = 0x2000000000;
  v63 = 0;
  v56 = 0;
  v57 = &v56;
  v58 = 0x2000000000;
  v59 = 0;
  v52 = 0;
  v53 = &v52;
  v54 = 0x2000000000;
  v55 = 0;
  v26 = mach_absolute_time();
  if (*(v25 + 328))
  {
    v27 = v26;
    if (gLogCategory_APAudioHoseManagerBuffered <= 50 && (gLogCategory_APAudioHoseManagerBuffered != -1 || _LogCategory_Initialize()))
    {
      audioHoseManagerBuffered_CopyAudioDataBBufsForHose_cold_5(a1);
    }

    v34 = MEMORY[0x277D85DD0];
    v35 = 0x40000000;
    v36 = __audioHoseManagerBuffered_UpdateHoseReadiness_block_invoke;
    v37 = &unk_2784A0270;
    LODWORD(v44) = 0;
    v38 = &v56;
    v39 = &v52;
    v40 = &v60;
    v41 = v25;
    v42 = a1;
    v43 = v27;
    CFDictionaryApplyBlock();
  }

  v28 = v61[3];
  if (v28)
  {
    CFRelease(v28);
  }

  v29 = v57[3];
  if (v29)
  {
    CFRelease(v29);
  }

  _Block_object_dispose(&v52, 8);
  _Block_object_dispose(&v56, 8);
  _Block_object_dispose(&v60, 8);
  FigSimpleMutexUnlock();
  return v33;
}

double audioHoseManagerBuffered_updateStartWatermarkTime(uint64_t a1, const void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v18 = **&MEMORY[0x277CC0898];
  v17 = v18;
  if (CFDictionaryGetValue(*(DerivedStorage + 192), a2))
  {
    CFDictionaryGetCount(*(DerivedStorage + 192));
  }

  CFPreferenceNumberWithDefault = FigGetCFPreferenceNumberWithDefault();
  CMTimeMake(&v18, CFPreferenceNumberWithDefault, 1000);
  v6 = FigGetCFPreferenceNumberWithDefault();
  CMTimeMake(&v17, v6, 1000);
  time1 = v18;
  time2 = *(DerivedStorage + 48);
  if (CMTimeCompare(&time1, &time2) && gLogCategory_APAudioHoseManagerBuffered <= 50 && (gLogCategory_APAudioHoseManagerBuffered != -1 || _LogCategory_Initialize()))
  {
    if (a1)
    {
      v7 = CMBaseObjectGetDerivedStorage();
    }

    else
    {
      v7 = "";
    }

    time1 = *(DerivedStorage + 48);
    Seconds = CMTimeGetSeconds(&time1);
    time1 = v18;
    v9 = CMTimeGetSeconds(&time1);
    LogPrintF(&gLogCategory_APAudioHoseManagerBuffered, "void audioHoseManagerBuffered_updateStartWatermarkTime(APAudioHoseManagerBufferedRef, APSEndpointStreamAudioHoseRef)", 33554482, "HMB [%{ptr}] %supdate startWatermarkTime from %1.3f to %1.3f\n", a1, v7, *&Seconds, *&v9);
  }

  v10 = (DerivedStorage + 376);
  time1 = v17;
  time2 = *(DerivedStorage + 376);
  if (CMTimeCompare(&time1, &time2) && gLogCategory_APAudioHoseManagerBuffered <= 50 && (gLogCategory_APAudioHoseManagerBuffered != -1 || _LogCategory_Initialize()))
  {
    if (a1)
    {
      v11 = CMBaseObjectGetDerivedStorage();
    }

    else
    {
      v11 = "";
    }

    *&time1.value = *v10;
    time1.epoch = *(DerivedStorage + 392);
    v12 = CMTimeGetSeconds(&time1);
    time1 = v17;
    v13 = CMTimeGetSeconds(&time1);
    LogPrintF(&gLogCategory_APAudioHoseManagerBuffered, "void audioHoseManagerBuffered_updateStartWatermarkTime(APAudioHoseManagerBufferedRef, APSEndpointStreamAudioHoseRef)", 33554482, "HMB [%{ptr}] %supdate criticalWatermarkTime from %1.3f to %1.3f\n", a1, v11, *&v12, *&v13);
  }

  *(DerivedStorage + 48) = v18;
  result = *&v17.value;
  *v10 = *&v17.value;
  *(DerivedStorage + 392) = v17.epoch;
  return result;
}

void audioHoseManagerBuffered_copyAudioDataBBufDispatchInternal(uint64_t *a1)
{
  v92 = *MEMORY[0x277D85DE8];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v3 = *MEMORY[0x277CBECE8];
  Mutable = CFArrayCreateMutable(*MEMORY[0x277CBECE8], *(DerivedStorage + 208), MEMORY[0x277CBF128]);
  if (!Mutable)
  {
    audioHoseManagerBuffered_copyAudioDataBBufDispatchInternal_cold_8();
    v66 = -72450;
    goto LABEL_105;
  }

  v5 = Mutable;
  v6 = *a1;
  v7 = a1[1];
  v8 = CMBaseObjectGetDerivedStorage();
  v9 = MEMORY[0x277CC0898];
  v10 = *MEMORY[0x277CC0898];
  v88 = *MEMORY[0x277CC0898];
  v79 = *(MEMORY[0x277CC0898] + 8);
  timescale = v79;
  v77 = *MEMORY[0x277CC08F0];
  *&v80.value = *MEMORY[0x277CC08F0];
  v11 = *(MEMORY[0x277CC08F0] + 16);
  v80.epoch = v11;
  if (*(v8 + 36))
  {
    goto LABEL_14;
  }

  v12 = v8;
  Value = CFDictionaryGetValue(*(v8 + 192), v7);
  if (!Value)
  {
    audioHoseManagerBuffered_copyAudioDataBBufDispatchInternal_cold_7(v6, v7, &time1);
    v15 = time1.value;
    goto LABEL_103;
  }

  v14 = Value;
  if (Value[36] >= 1)
  {
    if (gLogCategory_APAudioHoseManagerBuffered <= 50 && (gLogCategory_APAudioHoseManagerBuffered != -1 || _LogCategory_Initialize()))
    {
      audioHoseManagerBuffered_copyAudioDataBBufDispatchInternal_cold_6();
    }

    v15 = 0;
    *(v14 + 41) = 1;
    goto LABEL_103;
  }

  if (gLogCategory_APAudioHoseManagerBuffered <= 50 && (gLogCategory_APAudioHoseManagerBuffered != -1 || _LogCategory_Initialize()))
  {
    audioHoseManagerBuffered_copyAudioDataBBufDispatchInternal_cold_1();
  }

  v16 = (v14 + 10);
  if (*(v14 + 40))
  {
    audioHoseManagerBuffered_logForSendRate(v6, v14, 0);
LABEL_14:
    v15 = 0;
    goto LABEL_103;
  }

  if (gLogCategory_APAudioHoseManagerBuffered > 50)
  {
    goto LABEL_23;
  }

  if (gLogCategory_APAudioHoseManagerBuffered != -1 || _LogCategory_Initialize())
  {
    audioHoseManagerBuffered_copyAudioDataBBufDispatchInternal_cold_2();
  }

  if (gLogCategory_APAudioHoseManagerBuffered <= 50 && (gLogCategory_APAudioHoseManagerBuffered != -1 || _LogCategory_Initialize()))
  {
    audioHoseManagerBuffered_copyAudioDataBBufDispatchInternal_cold_3(v6, v14 + 40, v12);
  }

  if (!*v16)
  {
LABEL_23:
    v69 = v11;
    structureAllocator = v3;
    v72 = a1;
    v17 = 0;
    v70 = *(v9 + 12);
    v78 = *(v9 + 16);
    v18 = &unk_27CFF1000;
    v73 = v10;
    while (1)
    {
      if (!*(v12 + 208) || CFArrayGetCount(v5) >= *(v12 + 208))
      {
        if ((*(v12 + 224) & 1) == 0)
        {
          goto LABEL_90;
        }

        time1 = v80;
        time2 = *(v12 + 212);
        if ((CMTimeCompare(&time1, &time2) & 0x80000000) == 0)
        {
          goto LABEL_90;
        }
      }

      if (v17)
      {
        CFRelease(v17);
      }

      v19 = v5;
      v20 = CMBaseObjectGetDerivedStorage();
      *&v85.value = *v9;
      v85.epoch = v78;
      v74 = *&v85.value;
      *&v84.value = *&v85.value;
      v84.epoch = v78;
      v82 = 0;
      blockBufferOut = 0;
      v21 = v18[718];
      if (v21 <= 50 && (v21 != -1 || _LogCategory_Initialize()))
      {
        audioHoseManagerBuffered_copyAudioDataBBufDispatchInternal_cold_4(v6 == 0, v6);
      }

      v88 = v10;
      timescale = v79;
      v22 = *(v20 + 264);
      v23 = *(v20 + 272);
      v91 = *(v20 + 284);
      v90 = *(v20 + 276);
      MessageAtIndex = APMessageRingBufferedGetMessageAtIndex();
      if (MessageAtIndex)
      {
        break;
      }

      *&time1.value = v74;
      time1.epoch = v78;
      LastValidReadIndexAndTimestamp = APMessageRingBufferedGetLastValidReadIndexAndTimestamp(*(v20 + 200), &v82, &time1);
      v29 = v18[718];
      if (v29 <= 50)
      {
        v30 = LastValidReadIndexAndTimestamp;
        if (v29 != -1 || _LogCategory_Initialize())
        {
          if (v6)
          {
            v76 = CMBaseObjectGetDerivedStorage();
          }

          else
          {
            v76 = "";
          }

          time2.value = v22;
          time2.timescale = v23;
          *&time2.flags = v90;
          HIDWORD(time2.epoch) = v91;
          Seconds = CMTimeGetSeconds(&time2);
          v67 = *(v14 + 5);
          v68 = *v14;
          v50 = HIDWORD(v82);
          v51 = v82;
          time2 = time1;
          v52 = CMTimeGetSeconds(&time2);
          LogPrintF(&gLogCategory_APAudioHoseManagerBuffered, "OSStatus audioHoseManagerBuffered_copySingleAudioDataBBufInternal(APAudioHoseManagerBufferedRef, APAudioHoseManagerBufferedHoseDescriptorPtr, CMBlockBufferRef *, CMTime *)", 33554482, "HMB [%{ptr}] %snowRemoteMediaTime %1.6f (%lld/%d); no messages for hose [%{ptr}]; wanted idx %u (seq# %u); available idx %u (seq# %d ts %1.3f)\n", v6, v76, *&Seconds, v22, v23, *&v68, v67, v50, v30, v51, *&v52);
        }
      }

      v17 = 0;
      flags = v70;
      v54 = v78;
      v5 = v19;
      a1 = v72;
LABEL_79:
      v9 = MEMORY[0x277CC0898];
      v10 = v73;
      if (blockBufferOut)
      {
        CFRelease(blockBufferOut);
      }

      if (!v17)
      {
        v16 = (v14 + 10);
        goto LABEL_89;
      }

      if (flags)
      {
        time1 = v80;
        time2.value = v88;
        time2.timescale = timescale;
        time2.flags = flags;
        time2.epoch = v54;
        CMTimeAdd(&v80, &time1, &time2);
      }

      CFArrayAppendValue(v5, v17);
      v16 = (v14 + 10);
      v18 = &unk_27CFF1000;
      if (*(v14 + 40))
      {
        goto LABEL_90;
      }
    }

    v25 = MessageAtIndex;
    DataLength = CMBlockBufferGetDataLength(MessageAtIndex);
    CMBlockBufferCreateWithBufferReference(structureAllocator, v25, 0, DataLength, 0, &blockBufferOut);
    *(v14 + 7) += DataLength;
    time2 = v85;
    v75 = v22;
    rhs.value = v22;
    rhs.timescale = v23;
    *&rhs.flags = v90;
    HIDWORD(rhs.epoch) = v91;
    CMTimeSubtract(&time1, &time2, &rhs);
    *(v14 + 16) = time1;
    if (v84.flags)
    {
      time2 = *(v14 + 16);
      rhs = v84;
      CMTimeAdd(&time1, &time2, &rhs);
      *(v14 + 4) = *&time1.value;
      epoch = time1.epoch;
    }

    else
    {
      *(v14 + 4) = v77;
      epoch = v69;
    }

    *(v14 + 10) = epoch;
    v5 = v19;
    v14[3] = HIDWORD(v82);
    v31 = v85.epoch;
    *(v14 + 1) = *&v85.value;
    *(v14 + 4) = v31;
    ++*(v14 + 12);
    LOWORD(v31) = *(v14 + 5) + 1;
    *(v14 + 5) = v31;
    APMessageRingBufferedGetByteCountAtIndex(*(v20 + 200), v31, v14 + 22);
    v37 = v18[718];
    a1 = v72;
    if (v37 <= 50 && (v37 != -1 || _LogCategory_Initialize()))
    {
      if (v6)
      {
        v38 = CMBaseObjectGetDerivedStorage();
      }

      else
      {
        v38 = "";
      }

      v39 = v14[22];
      v40 = v14[27];
      time1 = *(v14 + 16);
      v41 = CMTimeGetSeconds(&time1);
      time1 = *(v14 + 29);
      v42 = CMTimeGetSeconds(&time1);
      LogPrintF(&gLogCategory_APAudioHoseManagerBuffered, "Boolean audioHoseManagerBuffered_hoseBufferedToFullHighWaterMark(APAudioHoseManagerBufferedRef, APAudioHoseManagerBufferedHoseDescriptorPtr)", 33554482, "HMB [%{ptr}] %saudioHoseManagerBuffered_hoseBufferedToFullHighWaterMark: inHoseDescriptor->bufferLevelBytes: %i inHoseDescriptor->highWatermarkBytes: %i, inHoseDescriptor->bufferLevelTime: %1.4f, inHoseDescriptor->highWatermark %1.4f ", v6, v38, v39, v40, *&v41, *&v42);
      v18 = &unk_27CFF1000;
    }

    if (v14[22] < v14[27] && (time1 = *(v14 + 16), time2 = *(v14 + 29), CMTimeCompare(&time1, &time2) < 1))
    {
      v43 = 1;
      v44 = 70;
    }

    else
    {
      v43 = 0;
      v44 = 84;
    }

    v45 = v18[718];
    if (v45 <= 50 && (v45 != -1 || _LogCategory_Initialize()))
    {
      if (v6)
      {
        v46 = CMBaseObjectGetDerivedStorage();
      }

      else
      {
        v46 = "";
      }

      LogPrintF(&gLogCategory_APAudioHoseManagerBuffered, "Boolean audioHoseManagerBuffered_hoseBufferedToFullHighWaterMark(APAudioHoseManagerBufferedRef, APAudioHoseManagerBufferedHoseDescriptorPtr)", 33554482, "HMB [%{ptr}] %saudioHoseManagerBuffered_hoseBufferedToFullHighWaterMark: reachedHighWater: %c", v6, v46, v44);
      if (v43)
      {
        goto LABEL_75;
      }
    }

    else if (v43)
    {
      goto LABEL_75;
    }

    *(v14 + 20) = 257;
    v47 = v18[718];
    if (v47 > 50)
    {
LABEL_78:
      v17 = blockBufferOut;
      blockBufferOut = 0;
      v88 = v84.value;
      flags = v84.flags;
      timescale = v84.timescale;
      v54 = v84.epoch;
      audioHoseManagerBuffered_logForSendRate(v6, v14, DataLength);
      goto LABEL_79;
    }

    if (v47 != -1 || _LogCategory_Initialize())
    {
      if (v6)
      {
        v48 = CMBaseObjectGetDerivedStorage();
      }

      else
      {
        v48 = "";
      }

      v55 = *v14;
      v56 = *(v20 + 260);
      time1 = v85;
      v57 = CMTimeGetSeconds(&time1);
      time1 = *(v14 + 16);
      v58 = CMTimeGetSeconds(&time1);
      LogPrintF(&gLogCategory_APAudioHoseManagerBuffered, "OSStatus audioHoseManagerBuffered_copySingleAudioDataBBufInternal(APAudioHoseManagerBufferedRef, APAudioHoseManagerBufferedHoseDescriptorPtr, CMBlockBufferRef *, CMTime *)", 33554482, "HMB [%{ptr}] %s(burst) Hose starting rest: rate = %u messageTime = %1.3f PHT = %lld Buffer seconds = %1.3f; Buffer bytes=%d\n", v6, v48, *&v55, v56, *&v57, v75, *&v58, v14[22]);
      v18 = &unk_27CFF1000;
    }

LABEL_75:
    v59 = v18[718];
    if (v59 <= 50 && (v59 != -1 || _LogCategory_Initialize()))
    {
      audioHoseManagerBuffered_copyAudioDataBBufDispatchInternal_cold_5(v6 == 0, (v14 + 16), v6, v32, v33, v34, v35, v36);
    }

    goto LABEL_78;
  }

  v17 = 0;
LABEL_89:
  v18 = &unk_27CFF1000;
LABEL_90:
  v60 = v18[718];
  if (v60 <= 50 && (v60 != -1 || _LogCategory_Initialize()))
  {
    if (v6)
    {
      v61 = CMBaseObjectGetDerivedStorage();
    }

    else
    {
      v61 = "";
    }

    time1 = *(v12 + 236);
    v62 = CMTimeGetSeconds(&time1);
    time1 = *(v14 + 4);
    v63 = CMTimeGetSeconds(&time1);
    Count = CFArrayGetCount(v5);
    LogPrintF(&gLogCategory_APAudioHoseManagerBuffered, "OSStatus audioHoseManagerBuffered_copyAudioDataBBufsUntilRestingInternal(APAudioHoseManagerBufferedRef, APSEndpointStreamAudioHoseRef, CFMutableArrayRef, Boolean *)", 33554482, "HMB [%{ptr}] %saudioHoseManagerBuffered_copyAudioDataBBufsUntilRestingInternal storage->immediateTransmitRemoteMediaTimestamp : %1.4f, hoseDescriptor->lastSentRemoteMediaTime: %1.4f, Array count: %i ", v6, v61, *&v62, *&v63, Count);
  }

  if ((*(v12 + 248) & 1) == 0 || (time1 = *(v12 + 236), time2 = *(v14 + 4), CMTimeCompare(&time1, &time2)))
  {
    v15 = *v16;
    if (!v17)
    {
      goto LABEL_103;
    }

    goto LABEL_102;
  }

  v15 = 1;
  if (v17)
  {
LABEL_102:
    CFRelease(v17);
  }

LABEL_103:
  *a1[2] = v5;
  v65 = a1[3];
  v66 = 0;
  if (v65)
  {
    *v65 = v15;
  }

LABEL_105:
  *a1[4] = v66;
}

void audioHoseManagerBuffered_logForSendRate(uint64_t a1, int32x2_t *a2, uint64_t a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v11 = mach_absolute_time();
  v12 = v11;
  v41 = *MEMORY[0x277CC0898];
  v42 = *(MEMORY[0x277CC0898] + 16);
  if (a2[1].i8[0])
  {
    v13 = 10000;
  }

  else
  {
    v13 = 100;
  }

  if (a2[5].i8[0])
  {
    if (!a2[27].i8[0])
    {
      v14 = UpTicksToMilliseconds();
      v15 = UpTicksToMilliseconds();
      if (v14 && v15 != 0)
      {
        v17 = a2[25];
        if (gLogCategory_APAudioHoseManagerBuffered <= 50)
        {
          v18 = v15;
          LODWORD(v4) = a2[26].i32[0];
          LODWORD(v3) = a2[26].i32[1];
          v19 = a2[7];
          if (gLogCategory_APAudioHoseManagerBuffered != -1 || _LogCategory_Initialize())
          {
            v20 = v3 / v18 * 1000.0;
            v21 = v4 / v14 * 1000.0;
            v22 = v19 * 8.0 / v18 * 1000.0;
            v23 = v17 * 8.0 / v14 * 1000.0;
            if (a1)
            {
              v24 = CMBaseObjectGetDerivedStorage();
            }

            else
            {
              v24 = "";
            }

            LogPrintF(&gLogCategory_APAudioHoseManagerBuffered, "void audioHoseManagerBuffered_logForSendRate(APAudioHoseManagerBufferedRef, APAudioHoseManagerBufferedHoseDescriptorPtr, size_t)", 33554482, "HMB [%{ptr}] %sHose (%@) is resting, avgMsgRate %.2f (%u msgs / %u ms), currentMsgRate %.2f (%u msgs / %u ms), avgBitrate %.2f (%u bits / %u ms), currentBitrate %.2f (%u bits / %u ms)\n", a1, v24, *a2, *&a2[28], *&v20, a2[26].u32[1], v18, *&v21, a2[26].u32[0], v14, *&v22, 8 * *&a2[7], v18, *&v23, 8 * *&a2[25], v14);
          }
        }

        a2[25] = 0;
        a2[26] = 0;
        a2[27].i8[0] = 1;
      }
    }
  }

  else
  {
    a2[26] = vadd_s32(a2[26], 0x100000001);
    *&a2[25] += a3;
    if (a2[27].i8[0])
    {
      a2[23] = v11;
      a2[24] = v11;
      a2[27].i8[0] = 0;
    }

    else
    {
      if (!*&a2[23])
      {
        a2[23] = v11;
        a2[24] = v11;
      }

      v25 = UpTicksToMilliseconds();
      v26 = UpTicksToMilliseconds();
      if (v25)
      {
        v27 = v26;
        if (v26)
        {
          if (v25 >= v13)
          {
            v44 = *(DerivedStorage + 264);
            v43 = *a2[2].i8;
            audioHoseManagerBuffered_getLastDeliveredRemoteMediaTimeForHose(a1, a2, &v41);
            if (gLogCategory_APAudioHoseManagerBuffered <= 50)
            {
              LODWORD(v6) = a2[26].i32[0];
              LODWORD(v5) = a2[26].i32[1];
              v28 = a2[7];
              v29 = a2[25];
              if (gLogCategory_APAudioHoseManagerBuffered != -1 || _LogCategory_Initialize())
              {
                v30 = v5 / v27 * 1000.0;
                v31 = v6 / v25 * 1000.0;
                v32 = v28 * 8.0 / v27 * 1000.0;
                v33 = v29 * 8.0 / v25 * 1000.0;
                if (a1)
                {
                  v34 = CMBaseObjectGetDerivedStorage();
                }

                else
                {
                  v34 = "";
                }

                v35 = *a2;
                v36 = a2[28];
                time = v43;
                Seconds = CMTimeGetSeconds(&time);
                *&time.value = v41;
                time.epoch = v42;
                v38 = CMTimeGetSeconds(&time);
                time = v44;
                v39 = CMTimeGetSeconds(&time);
                LogPrintF(&gLogCategory_APAudioHoseManagerBuffered, "void audioHoseManagerBuffered_logForSendRate(APAudioHoseManagerBufferedRef, APAudioHoseManagerBufferedHoseDescriptorPtr, size_t)", 33554482, "HMB [%{ptr}] %sHose (%@) is sending data, lastRemoteMediaTimeSent %1.6f, lastRemoteMediaTimeDelivered %1.6f, currentRemoteMediaTime %1.6f, avgMsgRate %.2f (%u msgs / %u ms), currentMsgRate %.2f (%u msgs / %u ms), avgBitrate %.2f (%u bits / %u ms), currentBitrate %.2f (%u bits / %u ms)\n", a1, v34, v35, *&v36, *&Seconds, *&v38, *&v39, *&v30, a2[26].u32[1], v27, *&v31, a2[26].u32[0], v25, *&v32, 8 * *&a2[7], v27, *&v33, 8 * *&a2[25], v25);
              }
            }

            a2[26].i32[0] = 0;
            a2[24] = v12;
            a2[25] = 0;
          }
        }
      }
    }
  }
}

__n128 audioHoseManagerBuffered_getLastDeliveredRemoteMediaTimeForHose@<Q0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, __n128 *a3@<X8>)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v22 = **&MEMORY[0x277CC0898];
  v23 = 0;
  v21 = 0;
  v20 = 0;
  v19 = 0;
  if (gLogCategory_APAudioHoseManagerBuffered <= 50 && (gLogCategory_APAudioHoseManagerBuffered != -1 || _LogCategory_Initialize()))
  {
    audioHoseManagerBuffered_getLastDeliveredRemoteMediaTimeForHose_cold_1(a1, a2, DerivedStorage);
  }

  if (!*(a2 + 9) || !APMessageRingBufferedGetUsedCount(*(DerivedStorage + 200)) || (*(a2 + 28) & 1) == 0)
  {
    goto LABEL_30;
  }

  v7 = *a2;
  v8 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v8)
  {
    v9 = 4294954514;
    goto LABEL_29;
  }

  v9 = v8(v7, *MEMORY[0x277CE9FC0], *MEMORY[0x277CBECE8], &v23);
  if (v9)
  {
LABEL_29:
    audioHoseManagerBuffered_getLastDeliveredRemoteMediaTimeForHose_cold_5(v9);
    goto LABEL_30;
  }

  if (!v23)
  {
    goto LABEL_25;
  }

  if (*(DerivedStorage + 186))
  {
    v10 = APSAPAPBBufDecodeHeader();
    if (v10)
    {
      audioHoseManagerBuffered_getLastDeliveredRemoteMediaTimeForHose_cold_2(v10);
      goto LABEL_30;
    }

    goto LABEL_16;
  }

  BufferedAudioDataTimestamp = APSTransportMessageGetBufferedAudioDataTimestamp();
  if (BufferedAudioDataTimestamp)
  {
    audioHoseManagerBuffered_getLastDeliveredRemoteMediaTimeForHose_cold_3(BufferedAudioDataTimestamp);
    goto LABEL_30;
  }

  BufferedAudioDataExtendedSequenceNumber = APSTransportMessageGetBufferedAudioDataExtendedSequenceNumber();
  if (BufferedAudioDataExtendedSequenceNumber)
  {
    audioHoseManagerBuffered_getLastDeliveredRemoteMediaTimeForHose_cold_4(BufferedAudioDataExtendedSequenceNumber);
LABEL_30:
    if (v23)
    {
      CFRelease(v23);
    }

    goto LABEL_25;
  }

  CMTimeMake(&v22, a2[2] + (v21 - a2[2]), *(a2 + 6));
LABEL_16:
  APMessageRingBufferedGetFirstValidReadIndex(*(DerivedStorage + 200), &v19 + 1);
  if (((HIDWORD(v19) - v20) & 0x800000) == 0 && ((HIDWORD(v19) ^ v20) & 0xFFFFFF) != 0)
  {
    goto LABEL_30;
  }

  APMessageRingBufferedGetLastValidReadIndexAndTimestamp(*(DerivedStorage + 200), &v19, 0);
  if (((v19 - v20) & 0x800000) != 0 && ((v19 ^ v20) & 0xFFFFFF) != 0)
  {
    goto LABEL_30;
  }

  v13 = *(a2 + 3);
  if (((v13 - v20) & 0x800000) != 0 && ((v13 ^ v20) & 0xFFFFFF) != 0)
  {
    goto LABEL_30;
  }

  time1 = v22;
  v17 = *(a2 + 2);
  v14 = CMTimeCompare(&time1, &v17);
  if (v23)
  {
    CFRelease(v23);
  }

  if (v14 <= 0)
  {
    v15 = &v22;
    goto LABEL_27;
  }

LABEL_25:
  v15 = MEMORY[0x277CC0898];
LABEL_27:
  result = *v15;
  *a3 = *v15;
  a3[1].n128_u64[0] = v15[1].n128_u64[0];
  return result;
}

uint64_t audioHoseManagerBuffered_hoseBufferedToStartHighWaterMark(uint64_t a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APAudioHoseManagerBuffered > 50 || gLogCategory_APAudioHoseManagerBuffered == -1 && !_LogCategory_Initialize())
  {
    if (a2)
    {
      goto LABEL_5;
    }

LABEL_14:
    audioHoseManagerBuffered_hoseBufferedToStartHighWaterMark_cold_3();
    return a2;
  }

  audioHoseManagerBuffered_hoseBufferedToStartHighWaterMark_cold_1(a1);
  if (!a2)
  {
    goto LABEL_14;
  }

LABEL_5:
  a2 = *(a2 + 88) >= *(a2 + 108) || (audioHoseManagerBuffered_getBufferLevelTimeEstimateForHoseStartup(), v6 = *(DerivedStorage + 48), CMTimeCompare(&time1, &v6) >= 1);
  if (gLogCategory_APAudioHoseManagerBuffered <= 50 && (gLogCategory_APAudioHoseManagerBuffered != -1 || _LogCategory_Initialize()))
  {
    audioHoseManagerBuffered_hoseBufferedToStartHighWaterMark_cold_2(a1);
  }

  return a2;
}

uint64_t __audioHoseManagerBuffered_setEchoCancellationIsEnabledToAllHoses_block_invoke(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v3 = *a3;
  if (*(a1 + 32))
  {
    v4 = MEMORY[0x277CBED28];
  }

  else
  {
    v4 = MEMORY[0x277CBED10];
  }

  VTable = CMBaseObjectGetVTable();
  v7 = *(VTable + 8);
  result = VTable + 8;
  v8 = *(v7 + 56);
  if (v8)
  {
    v9 = *MEMORY[0x277CEA0C0];
    v10 = *v4;

    return v8(v3, v9, v10);
  }

  return result;
}

uint64_t audioHoseManagerBuffered_hoseSetMagicCookieCallbackCompletionHandler(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v9 = malloc_type_calloc(1uLL, 0x20uLL, 0x10200401C4E69EBuLL);
  if (v9)
  {
    *v9 = a4;
    v9[1] = a1;
    v9[2] = a2;
    *(v9 + 6) = a3;
    dispatch_async_f(*(DerivedStorage + 168), v9, audioHoseManagerBuffered_hoseSetMagicCookieCallbackCompletionHandlerInternal);
    return 0;
  }

  else
  {
    audioHoseManagerBuffered_hoseSetMagicCookieCallbackCompletionHandler_cold_1();
    return 4294894846;
  }
}

void audioHoseManagerBuffered_hoseSetMagicCookieCallbackCompletionHandlerInternal(CFTypeRef *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v3 = a1[1];
  if (CFDictionaryGetValue(*(DerivedStorage + 192), v3))
  {
    if (*(a1 + 6))
    {
      if (gLogCategory_APAudioHoseManagerBuffered <= 90 && (gLogCategory_APAudioHoseManagerBuffered != -1 || _LogCategory_Initialize()))
      {
        audioHoseManagerBuffered_hoseSetMagicCookieCallbackCompletionHandlerInternal_cold_1(a1, a1 + 6, v3);
      }
    }

    else if (gLogCategory_APAudioHoseManagerBuffered <= 50 && (gLogCategory_APAudioHoseManagerBuffered != -1 || _LogCategory_Initialize()))
    {
      audioHoseManagerBuffered_hoseSetMagicCookieCallbackCompletionHandlerInternal_cold_2(a1);
    }
  }

  else
  {
    audioHoseManagerBuffered_hoseSetMagicCookieCallbackCompletionHandlerInternal_cold_3();
  }

  if (*a1)
  {
    CFRelease(*a1);
  }

  free(a1);
}

void audioHoseManagerBuffered_removeHoseFromDescriptors(uint64_t a1, const void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  CFDictionaryRemoveValue(*(DerivedStorage + 192), a2);
  if (gLogCategory_APAudioHoseManagerBuffered <= 40 && (gLogCategory_APAudioHoseManagerBuffered != -1 || _LogCategory_Initialize()))
  {
    audioHoseManagerBuffered_removeHoseFromDescriptors_cold_1();
  }

  audioHoseManagerBuffered_updateStartWatermarkTime(a1, a2);
  v5 = CMBaseObjectGetDerivedStorage();
  v7 = 0;
  v8 = &v7;
  v9 = 0x2000000000;
  CFPreferenceNumberWithDefault = 0;
  CFPreferenceNumberWithDefault = FigGetCFPreferenceNumberWithDefault();
  CFDictionaryApplyBlock();
  v6 = *(v8 + 6);
  if (v6 >= 0x753000)
  {
    v6 = 7680000;
  }

  *(v5 + 124) = v6;
  if (gLogCategory_APAudioHoseManagerBuffered <= 50 && (gLogCategory_APAudioHoseManagerBuffered != -1 || _LogCategory_Initialize()))
  {
    audioHoseManagerBuffered_removeHoseFromDescriptors_cold_2();
  }

  _Block_object_dispose(&v7, 8);
}

void __audioHoseManagerBuffered_updateMaxAudioToBufferBytes_block_invoke(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  cf = 0;
  valuePtr = 0;
  v4 = *a3;
  v5 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v5)
  {
    v6 = v5(v4, *MEMORY[0x277CE9F58], 0, &cf);
    v7 = cf;
    if (v6)
    {
      v8 = 1;
    }

    else
    {
      v8 = cf == 0;
    }

    if (!v8)
    {
      v9 = CFGetTypeID(cf);
      TypeID = CFNumberGetTypeID();
      v7 = cf;
      if (v9 == TypeID)
      {
        CFNumberGetValue(cf, kCFNumberSInt32Type, &valuePtr);
        v11 = *(*(a1 + 32) + 8);
        v12 = *(v11 + 24);
        if (v12 <= valuePtr)
        {
          v12 = valuePtr;
        }

        *(v11 + 24) = v12;
        v7 = cf;
      }
    }

    if (v7)
    {
      CFRelease(v7);
    }
  }
}

uint64_t audioHoseManagerBuffered_Flush(uint64_t a1, __int16 a2, int a3, __int128 *a4, int a5)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  v6 = MEMORY[0x277CC0898];
  *(DerivedStorage + 236) = *MEMORY[0x277CC0898];
  *(DerivedStorage + 252) = *(v6 + 16);
  CFDictionaryApplyBlock();
  FigSimpleMutexUnlock();
  return 0;
}

uint64_t audioHoseManagerBuffered_FlushWithinSampleRange(uint64_t a1, __int16 a2, int a3, __int128 *a4, int a5, __int128 *a6, int a7)
{
  CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APAudioHoseManagerBuffered <= 50 && (gLogCategory_APAudioHoseManagerBuffered != -1 || _LogCategory_Initialize()))
  {
    audioHoseManagerBuffered_FlushWithinSampleRange_cold_1(a1);
  }

  CFDictionaryApplyBlock();
  return 0;
}

uint64_t audioHoseManagerBuffered_WakeUpHoses(uint64_t a1)
{
  CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APAudioHoseManagerBuffered <= 50 && (gLogCategory_APAudioHoseManagerBuffered != -1 || _LogCategory_Initialize()))
  {
    audioHoseManagerBuffered_WakeUpHoses_cold_1(a1);
  }

  CFDictionaryApplyBlock();
  return 0;
}

uint64_t audioHoseManagerBuffered_NotifyHosesDataAvailable(uint64_t a1)
{
  CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APAudioHoseManagerBuffered <= 50 && (gLogCategory_APAudioHoseManagerBuffered != -1 || _LogCategory_Initialize()))
  {
    audioHoseManagerBuffered_NotifyHosesDataAvailable_cold_1(a1);
  }

  CFDictionaryApplyBlock();
  return 0;
}

uint64_t audioHoseManagerBuffered_SetRateAndAnchorTime(uint64_t a1, uint64_t a2, _OWORD *a3, __int128 *a4, __int128 *a5)
{
  v5 = a2;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APAudioHoseManagerBuffered <= 50 && (gLogCategory_APAudioHoseManagerBuffered != -1 || _LogCategory_Initialize()))
  {
    audioHoseManagerBuffered_SetRateAndAnchorTime_cold_1(a1);
  }

  FigSimpleMutexLock();
  CFDictionaryApplyBlock();
  *(DerivedStorage + 260) = v5;
  FigSimpleMutexUnlock();
  return 0;
}