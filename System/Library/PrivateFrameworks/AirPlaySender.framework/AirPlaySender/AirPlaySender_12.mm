void *bufferedAudioEngine_wakeUpHoses(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  CMBaseObjectGetDerivedStorage();
  result = FigCFDictionaryGetValue();
  v3 = result;
  if (result)
  {
    v4 = *result;
    VTable = CMBaseObjectGetVTable();
    v7 = *(VTable + 16);
    result = (VTable + 16);
    v6 = v7;
    if (v7)
    {
      v8 = *(v6 + 64);
      if (v8)
      {
        result = v8(v4);
      }
    }
  }

  for (i = *(DerivedStorage + 640); i; i = *i)
  {
    if (!v3)
    {
      *(i + 64) = 0;
      i[11] = 0;
    }

    if (*(DerivedStorage + 884) != 5)
    {
      result = mach_absolute_time();
      i[10] = result;
    }
  }

  return result;
}

uint64_t bufferedAudioEngine_getActiveAudioEngineSet(uint64_t a1, uint64_t a2)
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 0x40000000;
  block[2] = __bufferedAudioEngine_getActiveAudioEngineSet_block_invoke;
  block[3] = &__block_descriptor_tmp_195;
  block[4] = a1;
  if (bufferedAudioEngine_getActiveAudioEngineSet_sSetOnce != -1)
  {
    dispatch_once(&bufferedAudioEngine_getActiveAudioEngineSet_sSetOnce, block);
  }

  v3 = &bufferedAudioEngine_getActiveAudioEngineSet_sSetSidePlay;
  if (a2 != 1)
  {
    v3 = &bufferedAudioEngine_getActiveAudioEngineSet_sSetMedia;
  }

  return *v3;
}

uint64_t __bufferedAudioEngine_getActiveAudioEngineSet_block_invoke(uint64_t a1)
{
  if (APSThreadSafeSetCreate())
  {
    if (gLogCategory_APAudioEngineBuffered <= 90 && (gLogCategory_APAudioEngineBuffered != -1 || _LogCategory_Initialize()))
    {
      __bufferedAudioEngine_getActiveAudioEngineSet_block_invoke_cold_1(a1);
    }
  }

  else if (gLogCategory_APAudioEngineBuffered <= 50 && (gLogCategory_APAudioEngineBuffered != -1 || _LogCategory_Initialize()))
  {
    __bufferedAudioEngine_getActiveAudioEngineSet_block_invoke_cold_2(a1);
  }

  result = APSThreadSafeSetCreate();
  if (result)
  {
    if (gLogCategory_APAudioEngineBuffered <= 90)
    {
      if (gLogCategory_APAudioEngineBuffered != -1)
      {
        return __bufferedAudioEngine_getActiveAudioEngineSet_block_invoke_cold_3(a1);
      }

      result = _LogCategory_Initialize();
      if (result)
      {
        return __bufferedAudioEngine_getActiveAudioEngineSet_block_invoke_cold_3(a1);
      }
    }
  }

  else if (gLogCategory_APAudioEngineBuffered <= 50)
  {
    if (gLogCategory_APAudioEngineBuffered != -1)
    {
      return __bufferedAudioEngine_getActiveAudioEngineSet_block_invoke_cold_4(a1);
    }

    result = _LogCategory_Initialize();
    if (result)
    {
      return __bufferedAudioEngine_getActiveAudioEngineSet_block_invoke_cold_4(a1);
    }
  }

  return result;
}

void bufferedAudioEngine_callSetRateAndAnchorTimeClientCompletionCallbackInternal(CFTypeRef *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APAudioEngineBuffered <= 50)
  {
    v3 = DerivedStorage;
    if (gLogCategory_APAudioEngineBuffered != -1 || _LogCategory_Initialize())
    {
      bufferedAudioEngine_callSetRateAndAnchorTimeClientCompletionCallbackInternal_cold_1(a1, v3);
    }
  }

  v4 = a1[10];
  if (v4)
  {
    v5 = *a1;
    v6 = *(a1 + 2);
    v7 = a1[2];
    v8 = a1[11];
    v13 = *(a1 + 3);
    v14 = a1[5];
    v11 = *(a1 + 3);
    v9 = a1[9];
    v12 = a1[8];
    v4(v5, v6, &v13, &v11, v9, v8, *&v7);
  }

  v10 = a1[9];
  if (v10)
  {
    CFRelease(v10);
  }

  if (*a1)
  {
    CFRelease(*a1);
  }
}

void bufferedAudioEngine_audioFormatDurationDictToArrayForRTC(const void *a1, const __CFDictionary *a2, __CFArray *a3)
{
  v9 = **&MEMORY[0x277CC0898];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (Mutable)
  {
    v7 = Mutable;
    CMTimeMakeFromDictionary(&v9, a2);
    CFDictionarySetValue(v7, @"audioFormat", a1);
    v8 = v9;
    CMTimeGetSeconds(&v8);
    CFDictionarySetInt64();
    CFArrayAppendValue(a3, v7);
    CFRelease(v7);
  }

  else
  {
    bufferedAudioEngine_audioFormatDurationDictToArrayForRTC_cold_1();
  }
}

__n128 bufferedAudioEngine_getFirstValidBufferTimestamp@<Q0>(uint64_t a2@<X8>)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v4 = MEMORY[0x277CC0898];
  v5 = *MEMORY[0x277CC0898];
  *a2 = *MEMORY[0x277CC0898];
  v6 = *(v4 + 16);
  *(a2 + 16) = v6;
  *&v16.value = v5;
  v16.epoch = v6;
  APMessageRingBufferedGetFirstValidReadIndex(*(DerivedStorage + 616), 0);
  APMessageRingBufferedGetMessageAtIndex();
  Value = FigCFDictionaryGetValue();
  if (!Value)
  {
    return result;
  }

  v9 = *Value;
  v10 = *(CMBaseObjectGetVTable() + 16);
  if (!v10)
  {
    v12 = 4294954508;
    goto LABEL_10;
  }

  v11 = *(v10 + 112);
  if (!v11)
  {
    v12 = 4294954514;
    goto LABEL_10;
  }

  v12 = v11(v9, &v16);
  if (v12)
  {
LABEL_10:
    bufferedAudioEngine_getFirstValidBufferTimestamp_cold_1(v12);
    v13 = MEMORY[0x277CC0898];
    goto LABEL_11;
  }

  if ((v16.flags & 1) == 0 || (time1 = v16, v14 = *a2, CMTimeCompare(&time1, &v14) < 0))
  {
    v13 = &v16;
LABEL_11:
    result = *v13;
    *a2 = *v13;
    *(a2 + 16) = v13[1].n128_u64[0];
  }

  return result;
}

uint64_t bufferedAudioEngine_handleCryptorKeyUpdated(uint64_t a1, const void *a2, uint64_t a3, const void *a4)
{
  CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APAudioEngineBuffered <= 50 && (gLogCategory_APAudioEngineBuffered != -1 || _LogCategory_Initialize()))
  {
    bufferedAudioEngine_handleCryptorKeyUpdated_cold_1();
  }

  v6 = malloc_type_calloc(1uLL, 0x10uLL, 0x60040FAFB2B2FuLL);
  if (!v6)
  {
    return bufferedAudioEngine_handleCryptorKeyUpdated_cold_2();
  }

  v7 = v6;
  if (a2)
  {
    v8 = CFRetain(a2);
  }

  else
  {
    v8 = 0;
  }

  *v7 = v8;
  if (a4)
  {
    v9 = CFRetain(a4);
  }

  else
  {
    v9 = 0;
  }

  v7[1] = v9;

  return APSPriorityDispatcherAsyncF();
}

uint64_t bufferedAudioEngine_setCryptorForAllHoses(const void *a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!a2)
  {
    bufferedAudioEngine_setCryptorForAllHoses_cold_1();
    return 4294951815;
  }

  v5 = DerivedStorage;
  v6 = (DerivedStorage + 640);
  while (1)
  {
    v6 = *v6;
    if (!v6)
    {
      return 0;
    }

    if (gLogCategory_APAudioEngineBuffered <= 50 && (gLogCategory_APAudioEngineBuffered != -1 || _LogCategory_Initialize()))
    {
      v13 = "";
      if (a1)
      {
        v13 = (CMBaseObjectGetDerivedStorage() + 392);
      }

      v14 = *(v5 + 530);
      v15 = v6[2];
      CryptorIDForCryptor = bufferedAudioEngine_getCryptorIDForCryptor(a2);
      LogPrintF(&gLogCategory_APAudioEngineBuffered, "OSStatus bufferedAudioEngine_setCryptorForAllHoses(FigEndpointStreamAudioEngineRef, FigCPECryptorRef)", 33554482, "BAE [%{ptr}] %s[0x%04X] Set cryptor [%{ptr}] for hose [%{ptr}] with cryptorID: 0x%llx\n", a1, v13, v14, a2, v15, CryptorIDForCryptor);
      if (a1)
      {
LABEL_8:
        CFRetain(a1);
      }
    }

    else if (a1)
    {
      goto LABEL_8;
    }

    v7 = v6[2];
    v8 = bufferedAudioEngine_getCryptorIDForCryptor(a2);
    APSAudioProtocolDriverHoseControlProtocolGetProtocolID();
    ProtocolVTable = CMBaseObjectGetProtocolVTable();
    if (!ProtocolVTable || (v10 = *(ProtocolVTable + 16)) == 0)
    {
      v18 = 4294954508;
      goto LABEL_22;
    }

    v11 = *(v10 + 72);
    if (!v11)
    {
      break;
    }

    v12 = v11(v7, v8, a2, bufferedAudioEngine_hoseSetCryptorCallbackCompletionHandler, a1);
    if (v12)
    {
      v18 = v12;
      goto LABEL_22;
    }
  }

  v18 = 4294954514;
  bufferedAudioEngine_hoseSetCryptorCallbackCompletionHandler(v7, v8, -12782, a1);
LABEL_22:
  if (gLogCategory_APAudioEngineBuffered <= 90 && (gLogCategory_APAudioEngineBuffered != -1 || _LogCategory_Initialize()))
  {
    if (a1)
    {
      v19 = (CMBaseObjectGetDerivedStorage() + 392);
    }

    else
    {
      v19 = "";
    }

    LogPrintF(&gLogCategory_APAudioEngineBuffered, "OSStatus bufferedAudioEngine_setCryptorForAllHoses(FigEndpointStreamAudioEngineRef, FigCPECryptorRef)", 33554522, "BAE [%{ptr}] %s[0x%04X] APSAudioProtocolDriverHoseControlSetCryptor failed for hose [%{ptr}] with err= %d \n ", a1, v19, *(v5 + 530), v6[2], v18);
  }

  return v18;
}

uint64_t bufferedAudioEngine_hoseSetCryptorCallbackCompletionHandler(const void *a1, uint64_t a2, int a3, const void *a4)
{
  CMBaseObjectGetDerivedStorage();
  v8 = malloc_type_calloc(1uLL, 0x20uLL, 0x10200401C4E69EBuLL);
  if (!v8)
  {
    bufferedAudioEngine_hoseSetCryptorCallbackCompletionHandler_cold_1();
    v12 = 4294951816;
    if (!a4)
    {
      return v12;
    }

    goto LABEL_9;
  }

  v9 = v8;
  if (a4)
  {
    v10 = CFRetain(a4);
  }

  else
  {
    v10 = 0;
  }

  *v9 = v10;
  if (a1)
  {
    v11 = CFRetain(a1);
  }

  else
  {
    v11 = 0;
  }

  v9[1] = v11;
  v9[2] = a2;
  *(v9 + 6) = a3;
  APSPriorityDispatcherAsyncF();
  v12 = 0;
  if (a4)
  {
LABEL_9:
    CFRelease(a4);
  }

  return v12;
}

__CFString *bufferedAudioEngine_audioHoseProtocolCopyDebugDescription(uint64_t a1)
{
  Mutable = CFStringCreateMutable(*MEMORY[0x277CBECE8], 0);
  CFStringAppendFormat(Mutable, 0, @"APAudioEngineBuffered <APSEndpointStreamAudioHoseRegistrarProtocol> on <%p>", a1);
  return Mutable;
}

uint64_t bufferedAudioEngine_audioHoseRegistrarRegisterProtocolDriverHoseLegacy(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  CMBaseObjectGetDerivedStorage();
  result = APSPriorityDispatcherSyncTask();
  *a5 = &bufferedAudioEngine_audioHoseRegistrarRegisterProtocolDriverHoseLegacy_callbacks;
  return result;
}

uint64_t bufferedAudioEngine_CopyAudioDataBBufsForHose(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  CMBaseObjectGetDerivedStorage();
  if (!a2)
  {
    bufferedAudioEngine_CopyAudioDataBBufsForHose_cold_2();
    return 4294951815;
  }

  if (!a3)
  {
    bufferedAudioEngine_CopyAudioDataBBufsForHose_cold_1();
    return 4294951815;
  }

  APSPriorityDispatcherSyncF();
  return 0;
}

uint64_t bufferedAudioEngine_audioHoseRegistrarRegisterProtocolDriverHoseLegacyInternal(uint64_t *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  valuePtr = 0;
  v49 = 0;
  v3 = LogCategoryCopyOSLogHandle();
  v4 = MEMORY[0x277D86220];
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = MEMORY[0x277D86220];
  }

  v6 = a1 + 1;
  v7 = CUObfuscatedPtr();
  if (v7)
  {
    v8 = v7;
    if (os_signpost_enabled(v5))
    {
      LOWORD(buf.value) = 0;
      _os_signpost_emit_with_name_impl(&dword_221FFA000, v5, OS_SIGNPOST_INTERVAL_BEGIN, v8, "AIRPLAY_SIGNPOST_AUDIOENGINE_HOSE_REGISTERED", &unk_2222A918B, &buf, 2u);
    }
  }

  if (gLogCategory_APAudioEngineBuffered <= 50 && (gLogCategory_APAudioEngineBuffered != -1 || _LogCategory_Initialize()))
  {
    bufferedAudioEngine_audioHoseRegistrarRegisterProtocolDriverHoseLegacyInternal_cold_1();
  }

  if (!*(DerivedStorage + 616))
  {
    v18 = APSSignalErrorAt();
    goto LABEL_96;
  }

  v9 = bufferedAudioEngine_addHose(*a1, a1[1], a1[2], &valuePtr);
  if (v9)
  {
    v18 = v9;
    bufferedAudioEngine_audioHoseRegistrarRegisterProtocolDriverHoseLegacyInternal_cold_2(v9);
    goto LABEL_102;
  }

  if (!*(DerivedStorage + 436) || bufferedAudioEngine_isHoseLocal(*v6))
  {
    v10 = 0;
    v11 = 0;
    goto LABEL_15;
  }

  if (*(DerivedStorage + 424))
  {
    v19 = APSDataPacerHoseCountIncrement();
    if (!v19)
    {
      v11 = 1;
      goto LABEL_64;
    }

    v18 = v19;
    bufferedAudioEngine_audioHoseRegistrarRegisterProtocolDriverHoseLegacyInternal_cold_3(v19);
LABEL_102:
    v10 = 0;
    v11 = 0;
    goto LABEL_74;
  }

  v11 = 0;
LABEL_64:
  v29 = a1[2];
  v30 = *MEMORY[0x277CE9F78];
  if (*(DerivedStorage + 432) == 1)
  {
    v31 = *(DerivedStorage + 424);
    v32 = *(*(CMBaseObjectGetVTable() + 8) + 56);
    if (!v32)
    {
      v18 = 4294954514;
      goto LABEL_73;
    }

    v33 = v32(v29, v30, v31);
    if (v33)
    {
      v18 = v33;
LABEL_73:
      APSLogErrorAt();
      v10 = 0;
      goto LABEL_74;
    }
  }

  else
  {
    v34 = *(*(DerivedStorage + 640) + 216);
    v35 = *(*(CMBaseObjectGetVTable() + 8) + 56);
    if (!v35)
    {
      v18 = 4294954514;
      goto LABEL_73;
    }

    v36 = v35(v29, v30, v34);
    if (v36)
    {
      v18 = v36;
      goto LABEL_73;
    }
  }

  v10 = 1;
LABEL_15:
  bufferedAudioEngine_audioHoseSetEchoCancellationIfNeccessary(*a1, a1[1], a1[3], 0);
  v12 = a1[1];
  v13 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v13)
  {
    v18 = 4294954514;
LABEL_32:
    APSLogErrorAt();
    goto LABEL_74;
  }

  v14 = v13(v12, *MEMORY[0x277CE9F58], 0, &v49);
  if (v14)
  {
    v18 = v14;
    goto LABEL_32;
  }

  if (v49)
  {
    v15 = CFGetTypeID(v49);
    if (v15 == CFNumberGetTypeID())
    {
      CFNumberGetValue(v49, kCFNumberSInt32Type, &valuePtr + 4);
      v16 = *(DerivedStorage + 124) * HIDWORD(valuePtr) / 0x64u;
      if (*(DerivedStorage + 120) < v16)
      {
        v16 = *(DerivedStorage + 120);
      }

      *(*(DerivedStorage + 640) + 164) = HIDWORD(valuePtr) - v16;
      if (gLogCategory_APAudioEngineBuffered <= 50 && (gLogCategory_APAudioEngineBuffered != -1 || _LogCategory_Initialize()))
      {
        bufferedAudioEngine_audioHoseRegistrarRegisterProtocolDriverHoseLegacyInternal_cold_4();
      }

      *(*(DerivedStorage + 640) + 168) = *(DerivedStorage + 184) * HIDWORD(valuePtr) / 0x64u;
      if (gLogCategory_APAudioEngineBuffered <= 50 && (gLogCategory_APAudioEngineBuffered != -1 || _LogCategory_Initialize()))
      {
        bufferedAudioEngine_audioHoseRegistrarRegisterProtocolDriverHoseLegacyInternal_cold_5();
      }

      if (*(DerivedStorage + 437))
      {
        v17 = *(DerivedStorage + 648) == 1;
      }

      else
      {
        v17 = 1;
      }

      bufferedAudioEngine_updateStartupConfiguration(*a1, v17);
      v20 = HIDWORD(valuePtr);
      if (*(DerivedStorage + 704) < HIDWORD(valuePtr))
      {
        if (HIDWORD(valuePtr) >= 0x753000)
        {
          v20 = 7680000;
        }

        *(DerivedStorage + 704) = v20;
        if (gLogCategory_APAudioEngineBuffered <= 50 && (gLogCategory_APAudioEngineBuffered != -1 || _LogCategory_Initialize()))
        {
          bufferedAudioEngine_audioHoseRegistrarRegisterProtocolDriverHoseLegacyInternal_cold_6();
        }
      }

      v21 = *(DerivedStorage + 321);
      if (v21)
      {
        v21 = APSIsFBOPropertyAvailable() != 0;
      }

      *(*(DerivedStorage + 640) + 33) = v21;
      if (gLogCategory_APAudioEngineBuffered <= 50 && (gLogCategory_APAudioEngineBuffered != -1 || _LogCategory_Initialize()))
      {
        bufferedAudioEngine_audioHoseRegistrarRegisterProtocolDriverHoseLegacyInternal_cold_7();
      }

      v22 = LogCategoryCopyOSLogHandle();
      v23 = v22;
      if (v22)
      {
        v24 = v22;
      }

      else
      {
        v24 = v4;
      }

      v25 = CUObfuscatedPtr();
      if (v25)
      {
        v26 = v25;
        if (os_signpost_enabled(v24))
        {
          LOWORD(buf.value) = 0;
          _os_signpost_emit_with_name_impl(&dword_221FFA000, v24, OS_SIGNPOST_INTERVAL_END, v26, "AIRPLAY_SIGNPOST_AUDIOENGINE_HOSE_REGISTERED", &unk_2222A918B, &buf, 2u);
        }
      }

      if (v23)
      {
        os_release(v23);
      }

      if (gLogCategory_APAudioEngineBuffered <= 50 && (gLogCategory_APAudioEngineBuffered != -1 || _LogCategory_Initialize()))
      {
        v27 = *a1;
        if (*a1)
        {
          v28 = (CMBaseObjectGetDerivedStorage() + 392);
        }

        else
        {
          v28 = "";
        }

        v39 = *(DerivedStorage + 640);
        if (*(v39 + 32))
        {
          v40 = "local";
        }

        else
        {
          v40 = "remote";
        }

        LogPrintF(&gLogCategory_APAudioEngineBuffered, "OSStatus bufferedAudioEngine_audioHoseRegistrarRegisterProtocolDriverHoseLegacyInternal(void *)", 33554482, "BAE [%{ptr}] %sWHAPRO Registered hose [%{ptr}] (%@) (%s) registered (stream count %d). First read index / seqNum = %d / %u Stream count = %d / audioBufferSize = %d\n", v27, v28, *v6, *(v39 + 264), v40, *(DerivedStorage + 648), *(v39 + 34), valuePtr, *(DerivedStorage + 648), HIDWORD(valuePtr));
      }

      bufferedAudioEngine_updateInternalBadgeInfoAndPostNotificationIfNecessary(*a1, *(DerivedStorage + 1040), 0);
      bufferedAudioEngine_updateMATAtmosPlaybackPreferenceIfNecessary(*a1);
      bufferedAudioEngine_setAllCryptorsForHose();
      bufferedAudioEngine_setAllMagicCookiesForHose();
      if (!*(*(DerivedStorage + 640) + 32) && *(DerivedStorage + 576))
      {
        if (gLogCategory_APAudioEngineBuffered <= 50 && (gLogCategory_APAudioEngineBuffered != -1 || _LogCategory_Initialize()))
        {
          bufferedAudioEngine_audioHoseRegistrarRegisterProtocolDriverHoseLegacyInternal_cold_8();
        }

        v41 = *v6;
        v42 = gSoundCheckEnabled;
        APSAudioProtocolDriverHoseControlProtocolGetProtocolID();
        ProtocolVTable = CMBaseObjectGetProtocolVTable();
        if (ProtocolVTable)
        {
          v44 = *(ProtocolVTable + 16);
          if (v44)
          {
            v45 = *(v44 + 88);
            if (v45)
            {
              v45(v41, v42);
            }
          }
        }
      }

      bufferedAudioEngine_wakeUpHosesAndAudioTimer(*a1);
      bufferedAudioEngine_getCurrentRemoteMediaTimeInternal(0, &buf);
      APSAudioHoseMetricCollectorReportMetrics();
      bufferedAudioEngine_isHoseLocal(a1[1]);
      APSAudioHoseMetricCollectorRegisterHose();
      v18 = 0;
      goto LABEL_96;
    }
  }

  bufferedAudioEngine_audioHoseRegistrarRegisterProtocolDriverHoseLegacyInternal_cold_9();
  v18 = 4294960540;
LABEL_74:
  if (*(DerivedStorage + 436))
  {
    if (v10)
    {
      v37 = *(*(DerivedStorage + 640) + 24);
      v38 = *(*(CMBaseObjectGetVTable() + 8) + 56);
      if (v38)
      {
        v38(v37, *MEMORY[0x277CE9F78], 0);
      }
    }

    if (v11)
    {
      APSDataPacerHoseCountDecrement();
    }
  }

LABEL_96:
  if (v49)
  {
    CFRelease(v49);
  }

  return v18;
}

void bufferedAudioEngine_copyAudioDataBBufDispatchInternal(uint64_t *a1)
{
  v70 = *MEMORY[0x277D85DE8];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!*(DerivedStorage + 528))
  {
    bufferedAudioEngine_copyAudioDataBBufDispatchInternal_cold_12();
    LODWORD(value_low) = -15485;
    goto LABEL_17;
  }

  v3 = DerivedStorage;
  v4 = *MEMORY[0x277CBECE8];
  Mutable = CFArrayCreateMutable(*MEMORY[0x277CBECE8], *(DerivedStorage + 292), MEMORY[0x277CBF128]);
  if (!Mutable)
  {
    bufferedAudioEngine_copyAudioDataBBufDispatchInternal_cold_11();
    LODWORD(value_low) = -15480;
    goto LABEL_17;
  }

  v6 = Mutable;
  if (!*(v3 + 528))
  {
    bufferedAudioEngine_copyAudioDataBBufDispatchInternal_cold_10();
    LODWORD(value_low) = time2.value;
    goto LABEL_82;
  }

  v7 = *a1;
  v8 = a1[1];
  v9 = CMBaseObjectGetDerivedStorage();
  v10 = MEMORY[0x277CC0898];
  v11 = *MEMORY[0x277CC0898];
  v66 = *MEMORY[0x277CC0898];
  v56 = *(MEMORY[0x277CC0898] + 8);
  v67 = v56;
  v57 = **&MEMORY[0x277CC08F0];
  if (*v9)
  {
LABEL_14:
    v15 = 0;
    goto LABEL_15;
  }

  v12 = v9;
  if (*(v9 + 616))
  {
    HoseDecriptorFromHose = bufferedAudioEngine_getHoseDecriptorFromHose(v7, v8);
    if (!HoseDecriptorFromHose)
    {
      bufferedAudioEngine_copyAudioDataBBufDispatchInternal_cold_7();
      goto LABEL_14;
    }

    v14 = HoseDecriptorFromHose;
    if (HoseDecriptorFromHose[22].i32[1] >= 1)
    {
      if (gLogCategory_APAudioEngineBuffered <= 50 && (gLogCategory_APAudioEngineBuffered != -1 || _LogCategory_Initialize()))
      {
        bufferedAudioEngine_copyAudioDataBBufDispatchInternal_cold_6();
      }

      *(v14 + 65) = 1;
      goto LABEL_14;
    }

    if (HoseDecriptorFromHose[8].i8[0])
    {
      bufferedAudioEngine_logForSendRate(v7, HoseDecriptorFromHose, 0);
      goto LABEL_14;
    }

    if (gLogCategory_APAudioEngineBuffered <= 10)
    {
      if (gLogCategory_APAudioEngineBuffered != -1 || _LogCategory_Initialize())
      {
        bufferedAudioEngine_copyAudioDataBBufDispatchInternal_cold_1();
      }

      if (*(v14 + 64))
      {
        v18 = 0;
LABEL_23:
        if ((*(v12 + 1176) & 1) != 0 && (bufferedAudioEngine_getLastSentRemoteMediaTimeForHose(v14, &time2), time1 = *(v12 + 1164), !CMTimeCompare(&time1, &time2)))
        {
          value_low = 0;
          v15 = 1;
        }

        else
        {
          value_low = 0;
          v15 = *(v14 + 64);
        }

LABEL_26:
        if (v18)
        {
          CFRelease(v18);
        }

        if (!value_low)
        {
          goto LABEL_15;
        }

        goto LABEL_29;
      }
    }

    structureAllocator = v4;
    v18 = 0;
    flags = *(v10 + 12);
    v52 = v11;
    epoch = *(v10 + 16);
    v53.epoch = epoch;
    v50 = flags;
    while (1)
    {
      if (!*(v12 + 292) || CFArrayGetCount(v6) >= *(v12 + 292))
      {
        if ((*(v12 + 308) & 1) == 0)
        {
          goto LABEL_23;
        }

        time2 = v57;
        time1 = *(v12 + 296);
        if ((CMTimeCompare(&time2, &time1) & 0x80000000) == 0)
        {
          goto LABEL_23;
        }
      }

      if (v18)
      {
        CFRelease(v18);
      }

      v63 = 0;
      v21 = CMBaseObjectGetDerivedStorage();
      *&v62.value = *v10;
      v62.epoch = v53.epoch;
      *&v61.value = *&v62.value;
      v61.epoch = v53.epoch;
      v59 = 0;
      blockBufferOut = 0;
      if (*(v21 + 616))
      {
        v22 = v21;
        *&v53.value = *&v62.value;
        v66 = v11;
        v67 = v56;
        bufferedAudioEngine_getCurrentRemoteMediaTimeInternal(&v63, &time2);
        value = time2.value;
        timescale = time2.timescale;
        v68 = *&time2.flags;
        epoch_high = HIDWORD(time2.epoch);
        if (!v63)
        {
          MessageAtIndex = APMessageRingBufferedGetMessageAtIndex();
          if (MessageAtIndex)
          {
            v26 = MessageAtIndex;
            DataLength = CMBlockBufferGetDataLength(MessageAtIndex);
            CMBlockBufferCreateWithBufferReference(structureAllocator, v26, 0, DataLength, 0, &blockBufferOut);
            if (!*(v14 + 216) || (time2 = v61, CMTimeGetSeconds(&time2), v28 = APSDataPacerBitRateUpdate(), (v63 = v28) == 0))
            {
              *(v14 + 88) += DataLength;
              time1 = v62;
              rhs.value = value;
              rhs.timescale = timescale;
              *&rhs.flags = v68;
              HIDWORD(rhs.epoch) = epoch_high;
              CMTimeSubtract(&time2, &time1, &rhs);
              *(v14 + 96) = time2;
              *(v14 + 40) = v62;
              if (v61.flags)
              {
                bufferedAudioEngine_getSentBufferLevelTime(v14, &time1);
                rhs = v61;
                CMTimeAdd(&time2, &time1, &rhs);
                *(v14 + 96) = time2;
                bufferedAudioEngine_getLastSentRemoteMediaTimeForHose(v14, &time1);
                rhs = v61;
                CMTimeAdd(&time2, &time1, &rhs);
                *(v14 + 40) = time2;
              }

              *(v14 + 36) = HIDWORD(v59);
              ++*(v14 + 152);
              v29 = *(v14 + 34) + 1;
              *(v14 + 34) = v29;
              APMessageRingBufferedGetByteCountAtIndex(*(v22 + 616), v29, (v14 + 144));
              v63 = 0;
              v30 = CMBaseObjectGetDerivedStorage();
              if (*(v14 + 144) >= *(v14 + 164) || (v31 = v30, bufferedAudioEngine_getSentBufferLevelTime(v14, &time2), time1 = *(v31 + 128), CMTimeCompare(&time2, &time1) >= 1))
              {
                *(v14 + 64) = 257;
                if (gLogCategory_APAudioEngineBuffered <= 50 && (gLogCategory_APAudioEngineBuffered != -1 || _LogCategory_Initialize()))
                {
                  if (v7)
                  {
                    v32 = (CMBaseObjectGetDerivedStorage() + 392);
                  }

                  else
                  {
                    v32 = "";
                  }

                  v54 = v32;
                  v48 = *(v22 + 530);
                  v36 = *(v14 + 16);
                  v37 = *(v14 + 264);
                  v38 = *(v22 + 888);
                  time2 = v62;
                  Seconds = CMTimeGetSeconds(&time2);
                  bufferedAudioEngine_getSentBufferLevelTime(v14, &time2);
                  v40 = CMTimeGetSeconds(&time2);
                  LogPrintF(&gLogCategory_APAudioEngineBuffered, "OSStatus bufferedAudioEngine_copySingleAudioDataBBufInternal(FigEndpointStreamAudioEngineRef, APAudioEngineHoseDescriptor *, CMBlockBufferRef *, CMTime *)", 33554482, "BAE [%{ptr}] %s[0x%04X] (burst) Hose [%{ptr}] (%@) starting rest: rate = %f messageTime = %1.3f PHT = %lld Buffer seconds = %1.3f; Buffer bytes=%d\n", v7, v54, v48, v36, v37, v38, *&Seconds, value, *&v40, *(v14 + 144));
                }
              }

              v18 = blockBufferOut;
              blockBufferOut = 0;
              v66 = v61.value;
              flags = v61.flags;
              v67 = v61.timescale;
              epoch = v61.epoch;
              bufferedAudioEngine_logForSendRate(v7, v14, DataLength);
              goto LABEL_64;
            }

            bufferedAudioEngine_copyAudioDataBBufDispatchInternal_cold_3(v28);
          }

          else
          {
            time2 = v53;
            LastValidReadIndexAndTimestamp = APMessageRingBufferedGetLastValidReadIndexAndTimestamp(*(v22 + 616), &v59, &time2);
            if (gLogCategory_APAudioEngineBuffered <= 50)
            {
              v34 = LastValidReadIndexAndTimestamp;
              if (gLogCategory_APAudioEngineBuffered != -1 || _LogCategory_Initialize())
              {
                if (v7)
                {
                  v35 = (CMBaseObjectGetDerivedStorage() + 392);
                }

                else
                {
                  v35 = "";
                }

                v55 = v35;
                v49 = *(v22 + 530);
                time1.value = value;
                time1.timescale = timescale;
                *&time1.flags = v68;
                HIDWORD(time1.epoch) = epoch_high;
                v41 = CMTimeGetSeconds(&time1);
                v46 = *(v14 + 264);
                v47 = *(v14 + 16);
                v45 = *(v14 + 34);
                v42 = HIDWORD(v59);
                v43 = v59;
                time1 = time2;
                v44 = CMTimeGetSeconds(&time1);
                LogPrintF(&gLogCategory_APAudioEngineBuffered, "OSStatus bufferedAudioEngine_copySingleAudioDataBBufInternal(FigEndpointStreamAudioEngineRef, APAudioEngineHoseDescriptor *, CMBlockBufferRef *, CMTime *)", 33554482, "BAE [%{ptr}] %s[0x%04X] nowRemoteMediaTime %1.6f (%lld/%d); no messages for hose [%{ptr}] (%@); wanted idx %u (seq# %u); available idx %u (seq# %d ts %1.3f)\n", v7, v55, v49, *&v41, value, timescale, v47, v46, v45, v42, v34, v43, *&v44);
              }
            }
          }

          v18 = 0;
          flags = v50;
          epoch = v53.epoch;
LABEL_64:
          v10 = MEMORY[0x277CC0898];
          goto LABEL_65;
        }

        bufferedAudioEngine_copyAudioDataBBufDispatchInternal_cold_2(v63);
        v18 = 0;
        flags = v50;
        epoch = v53.epoch;
      }

      else
      {
        bufferedAudioEngine_copyAudioDataBBufDispatchInternal_cold_4(&v63);
        v18 = 0;
      }

LABEL_65:
      if (blockBufferOut)
      {
        CFRelease(blockBufferOut);
      }

      value_low = v63;
      if (v63)
      {
        bufferedAudioEngine_copyAudioDataBBufDispatchInternal_cold_5(v63);
        v15 = 0;
        goto LABEL_26;
      }

      if (v18)
      {
        if (flags)
        {
          time2 = v57;
          time1.value = v66;
          time1.timescale = v67;
          time1.flags = flags;
          time1.epoch = epoch;
          CMTimeAdd(&v57, &time2, &time1);
        }

        CFArrayAppendValue(v6, v18);
        v11 = v52;
        if (!*(v14 + 64))
        {
          continue;
        }
      }

      goto LABEL_23;
    }
  }

  bufferedAudioEngine_copyAudioDataBBufDispatchInternal_cold_8(&time2);
  v15 = 0;
  value_low = LODWORD(time2.value);
  if (LODWORD(time2.value))
  {
LABEL_29:
    bufferedAudioEngine_copyAudioDataBBufDispatchInternal_cold_9(value_low);
LABEL_82:
    CFRelease(v6);
    goto LABEL_17;
  }

LABEL_15:
  *a1[2] = v6;
  v16 = a1[3];
  LODWORD(value_low) = 0;
  if (v16)
  {
    *v16 = v15;
  }

LABEL_17:
  *a1[4] = value_low;
}

uint64_t bufferedAudioEngine_logForSendRate(uint64_t a1, int32x2_t *a2, uint64_t a3)
{
  v62 = *MEMORY[0x277D85DE8];
  v55 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  result = mach_absolute_time();
  v11 = result;
  if (a2[4].i8[0])
  {
    v12 = 10000;
  }

  else
  {
    v12 = 100;
  }

  if (a2[8].i8[0])
  {
    if (!a2[32].i8[0])
    {
      v13 = UpTicksToMilliseconds();
      result = UpTicksToMilliseconds();
      if (v13 && result != 0)
      {
        v15 = a2[30];
        if (gLogCategory_APAudioEngineBuffered <= 50)
        {
          v16 = result;
          LODWORD(v4) = a2[31].i32[0];
          LODWORD(v3) = a2[31].i32[1];
          v17 = a2[11];
          if (gLogCategory_APAudioEngineBuffered != -1 || (result = _LogCategory_Initialize(), result))
          {
            v18 = v3 / v16 * 1000.0;
            v19 = v4 / v13 * 1000.0;
            v20 = v17 * 8.0 / v16 * 1000.0;
            v21 = v15 * 8.0 / v13 * 1000.0;
            if (a1)
            {
              v22 = (CMBaseObjectGetDerivedStorage() + 392);
            }

            else
            {
              v22 = "";
            }

            result = LogPrintF(&gLogCategory_APAudioEngineBuffered, "void bufferedAudioEngine_logForSendRate(FigEndpointStreamAudioEngineRef, APAudioEngineHoseDescriptor *, size_t)", 33554482, "BAE [%{ptr}] %s[0x%04X] Hose [%{ptr}] (%@) is resting, avgMsgRate %.2f (%u msgs / %u ms), currentMsgRate %.2f (%u msgs / %u ms), avgBitrate %.2f (%u bits / %u ms), currentBitrate %.2f (%u bits / %u ms)\n", a1, v22, *(DerivedStorage + 530), *&a2[2], *&a2[33], *&v18, a2[31].u32[1], v16, *&v19, a2[31].u32[0], v13, *&v20, 8 * *&a2[11], v16, *&v21, 8 * *&a2[30], v13);
          }
        }

        a2[30] = 0;
        a2[31] = 0;
        a2[32].i8[0] = 1;
      }
    }
  }

  else
  {
    a2[31] = vadd_s32(a2[31], 0x100000001);
    *&a2[30] += a3;
    if (a2[32].i8[0])
    {
      a2[28] = result;
      a2[29] = result;
      a2[32].i8[0] = 0;
    }

    else
    {
      if (!*&a2[28])
      {
        a2[28] = result;
        a2[29] = result;
      }

      v23 = UpTicksToMilliseconds();
      result = UpTicksToMilliseconds();
      if (v23 && result && v23 >= v12)
      {
        v52 = result;
        bufferedAudioEngine_getCurrentRemoteMediaTimeInternal(&v55, &v54);
        value = v54.value;
        timescale = v54.timescale;
        v60 = *&v54.flags;
        epoch_high = HIDWORD(v54.epoch);
        if (v55)
        {
          return bufferedAudioEngine_logForSendRate_cold_1(v55);
        }

        else
        {
          bufferedAudioEngine_getLastSentRemoteMediaTimeForHose(a2, &v54);
          v26 = v54.value;
          v27 = v54.timescale;
          v58 = *&v54.flags;
          v59 = HIDWORD(v54.epoch);
          bufferedAudioEngine_getLastDeliveredRemoteMediaTimeForHose(a2, &v54);
          v49 = v54.timescale;
          v50 = v54.value;
          v56 = *&v54.flags;
          v57 = HIDWORD(v54.epoch);
          SampleRateFromTransportAudioFormat = bufferedAudioEngine_getSampleRateFromTransportAudioFormat(a1);
          time.value = v26;
          time.timescale = v27;
          *&time.flags = v58;
          HIDWORD(time.epoch) = v59;
          CMTimeConvertScale(&v54, &time, SampleRateFromTransportAudioFormat, kCMTimeRoundingMethod_RoundHalfAwayFromZero);
          v29 = v54.value;
          v51 = v54.timescale;
          v58 = *&v54.flags;
          v59 = HIDWORD(v54.epoch);
          time.value = value;
          time.timescale = timescale;
          *&time.flags = v60;
          HIDWORD(time.epoch) = epoch_high;
          CMTimeConvertScale(&v54, &time, SampleRateFromTransportAudioFormat, kCMTimeRoundingMethod_RoundHalfAwayFromZero);
          v30 = v54.value;
          v31 = v54.timescale;
          v60 = *&v54.flags;
          epoch_high = HIDWORD(v54.epoch);
          LODWORD(v32) = a2[31].i32[1];
          v33 = v32 / v52 * 1000.0;
          if (gLogCategory_APAudioEngineBuffered <= 50)
          {
            LODWORD(v5) = a2[31].i32[0];
            v34 = a2[11];
            v35 = a2[30];
            if (gLogCategory_APAudioEngineBuffered != -1 || _LogCategory_Initialize())
            {
              v36 = v5 / v23 * 1000.0;
              v37 = v34 * 8.0 / v52 * 1000.0;
              v38 = v35 * 8.0 / v23 * 1000.0;
              if (a1)
              {
                v39 = (CMBaseObjectGetDerivedStorage() + 392);
              }

              else
              {
                v39 = "";
              }

              v48 = v39;
              v47 = *(DerivedStorage + 530);
              v45 = a2[33];
              v46 = a2[2];
              v40 = *(DerivedStorage + 888);
              v54.value = v29;
              v54.timescale = v51;
              *&v54.flags = v58;
              HIDWORD(v54.epoch) = v59;
              Seconds = CMTimeGetSeconds(&v54);
              v54.value = v50;
              v54.timescale = v49;
              *&v54.flags = v56;
              HIDWORD(v54.epoch) = v57;
              v42 = CMTimeGetSeconds(&v54);
              v54.value = v30;
              v54.timescale = v31;
              *&v54.flags = v60;
              HIDWORD(v54.epoch) = epoch_high;
              v43 = CMTimeGetSeconds(&v54);
              CMClockGetTime(&v54, *(DerivedStorage + 480));
              v44 = CMTimeGetSeconds(&v54);
              LogPrintF(&gLogCategory_APAudioEngineBuffered, "void bufferedAudioEngine_logForSendRate(FigEndpointStreamAudioEngineRef, APAudioEngineHoseDescriptor *, size_t)", 33554482, "BAE [%{ptr}] %s[0x%04X] Hose [%{ptr}] (%@) is sending data, currentRate %.1f, lastRemoteMediaTimeSent %1.6f (%lld/%d), lastRemoteMediaTimeDelivered %1.6f (%lld/%d), currentRemoteMediaTime %1.6f (%lld/%d), clockTime %.2f, avgMsgRate %.2f (%u msgs / %u ms), currentMsgRate %.2f (%u msgs / %u ms), avgBitrate %.2f (%u bits / %u ms), currentBitrate %.2f (%u bits / %u ms)\n", a1, v48, v47, *&v46, *&v45, v40, *&Seconds, v29, v51, *&v42, v50, v49, *&v43, v30, v31, *&v44, *&v33, a2[31].u32[1], v52, *&v36, a2[31].u32[0], v23, *&v37, 8 * *&a2[11], v52, *&v38, 8 * *&a2[30], v23);
            }
          }

          a2[31].i32[0] = 0;
          a2[29] = v11;
          a2[30] = 0;
          return APSAudioHoseMetricCollectorUpdateSendRateForHose();
        }
      }
    }
  }

  return result;
}

__n128 bufferedAudioEngine_getSentBufferLevelTime@<Q0>(__n128 *a2@<X1>, CMTime *a3@<X8>)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  *&v15.value = *MEMORY[0x277CC0898];
  v6 = *(MEMORY[0x277CC0898] + 16);
  v15.epoch = v6;
  *&v14.value = *&v15.value;
  v14.epoch = v6;
  *&a3->value = *&v15.value;
  a3->epoch = v6;
  if (*(DerivedStorage + 577))
  {
    bufferedAudioEngine_getCurrentRemoteMediaTimeInternal(0, &v15);
    v7 = a2[1].n128_u64[1];
    APSAudioProtocolDriverHoseDataBaseProtocolGetProtocolID();
    ProtocolVTable = CMBaseObjectGetProtocolVTable();
    if (ProtocolVTable)
    {
      v9 = *(ProtocolVTable + 16);
      if (v9)
      {
        v10 = *(v9 + 16);
        if (v10)
        {
          v10(v7, &v14);
        }
      }
    }

    lhs = v14;
    v12 = v15;
    CMTimeSubtract(a3, &lhs, &v12);
  }

  else
  {
    result = a2[6];
    *&a3->value = result;
    a3->epoch = a2[7].n128_i64[0];
  }

  return result;
}

uint64_t bufferedAudioEngine_getSampleRateFromTransportAudioFormat(uint64_t a1)
{
  if (*(CMBaseObjectGetDerivedStorage() + 1008))
  {
    APSAudioFormatDescriptionGetSampleRate();
    return v1;
  }

  else
  {
    bufferedAudioEngine_getSampleRateFromTransportAudioFormat_cold_1();
    return 0;
  }
}

uint64_t bufferedAudioEngine_addHose(uint64_t a1, const void *a2, const void *a3, _DWORD *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (bufferedAudioEngine_getHoseDecriptorFromHose(a1, a2))
  {
    bufferedAudioEngine_addHose_cold_1(&v33);
    return v33;
  }

  else
  {
    v9 = *(DerivedStorage + 640);
    v10 = malloc_type_calloc(1uLL, 0x118uLL, 0x1060040E24E3859uLL);
    *(DerivedStorage + 640) = v10;
    if (v10)
    {
      if (a2)
      {
        v11 = CFRetain(a2);
        v10 = *(DerivedStorage + 640);
      }

      else
      {
        v11 = 0;
      }

      v10[2] = v11;
      if (a3)
      {
        v12 = CFRetain(a3);
        v10 = *(DerivedStorage + 640);
      }

      else
      {
        v12 = 0;
      }

      v10[3] = v12;
      Index = APMessageRingBufferedGetFirstValidReadIndex(*(DerivedStorage + 616), a4);
      v14 = *(DerivedStorage + 640);
      *(v14 + 34) = Index;
      *(v14 + 64) = 0;
      *(v14 + 88) = 0;
      v15 = mach_absolute_time();
      v16 = *(DerivedStorage + 640);
      *(v16 + 80) = v15;
      *(v16 + 65) = 1;
      v17 = MEMORY[0x277CC08F0];
      *(v16 + 148) = 0;
      v18 = *(v17 + 2);
      *(v16 + 112) = v18;
      v32 = *v17;
      *(v16 + 96) = *v17;
      v19 = *(DerivedStorage + 640);
      *(v19 + 56) = v18;
      *(v19 + 40) = v32;
      v20 = *(DerivedStorage + 640);
      *(v20 + 144) = 0;
      *(v20 + 212) = 0;
      *(v20 + 176) = 0;
      isHoseLocal = bufferedAudioEngine_isHoseLocal(a2);
      v22 = *(DerivedStorage + 640);
      *(v22 + 32) = isHoseLocal;
      *(v22 + 272) = 0;
      *(v22 + 136) = v18;
      *(v22 + 120) = v32;
      v23 = *(DerivedStorage + 640);
      if (*(v23 + 32))
      {
        *(DerivedStorage + 1160) = 1;
      }

      v24 = *(v23 + 16);
      v25 = *MEMORY[0x277CBECE8];
      v26 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      if (v26)
      {
        v26(v24, *MEMORY[0x277CE9FD0], v25, v23 + 264);
      }

      v27 = *(DerivedStorage + 640);
      *v27 = v9;
      if (v9)
      {
        *(v9 + 8) = v27;
      }

      ++*(DerivedStorage + 648);
      if (*(DerivedStorage + 436) && *(DerivedStorage + 432) != 1 && !bufferedAudioEngine_isHoseLocal(v27[2]) && (v28 = APSDataPacerBitRateCreate(), v28))
      {
        v30 = v28;
        bufferedAudioEngine_addHose_cold_2(v28);
      }

      else
      {
        v29 = *(DerivedStorage + 648);
        v30 = 0;
        if (v29 > *(DerivedStorage + 1316))
        {
          *(DerivedStorage + 1316) = v29;
        }
      }
    }

    else
    {
      bufferedAudioEngine_addHose_cold_3(&v34);
      return v34;
    }
  }

  return v30;
}

BOOL bufferedAudioEngine_isHoseLocal(uint64_t a1)
{
  cf = 0;
  v2 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v2)
  {
    return 0;
  }

  v3 = v2(a1, *MEMORY[0x277CC1878], 0, &cf);
  v4 = cf;
  if (v3)
  {
    v5 = 0;
    if (!cf)
    {
      return v5;
    }

    goto LABEL_4;
  }

  v5 = FigCFEqual() != 0;
  v4 = cf;
  if (cf)
  {
LABEL_4:
    CFRelease(v4);
  }

  return v5;
}

uint64_t bufferedAudioEngine_audioHoseSetEchoCancellationIfNeccessary(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  result = CFDictionaryGetInt64();
  if (a4)
  {
    if (a4 != 1 || !result)
    {
      return result;
    }

    *(DerivedStorage + 1240) = 0;
    v9 = a1;
    v10 = 0;
    goto LABEL_7;
  }

  if (result)
  {
    *(DerivedStorage + 1240) = 1;
    v9 = a1;
    v10 = 1;
LABEL_7:

    return bufferedAudioEngine_setEchoCancellationIsEnabledToAllHoses(v9, v10);
  }

  if (*(DerivedStorage + 1240))
  {
    VTable = CMBaseObjectGetVTable();
    v12 = *(VTable + 8);
    result = VTable + 8;
    v13 = *(v12 + 56);
    if (v13)
    {
      v14 = *MEMORY[0x277CE9F80];
      v15 = *MEMORY[0x277CBED28];

      return v13(a2, v14, v15);
    }
  }

  return result;
}

uint64_t bufferedAudioEngine_updateMATAtmosPlaybackPreferenceIfNecessary(uint64_t a1)
{
  result = CMBaseObjectGetDerivedStorage();
  v2 = *(result + 640);
  if (!v2)
  {
    return result;
  }

  v3 = result;
  while (1)
  {
    result = APSGetFBOPropertyInt64();
    if (!result)
    {
      goto LABEL_17;
    }

    if (APSGetFBOPropertyInt64())
    {
      v4 = v2[2];
      APSEndpointStreamAudioHoseProtocolGetProtocolID();
      ProtocolVTable = CMBaseObjectGetProtocolVTable();
      if (ProtocolVTable && (v6 = *(ProtocolVTable + 16)) != 0)
      {
        v7 = *(v6 + 120);
        if (v7)
        {
          result = v7(v4, 1);
          if (result)
          {
            return bufferedAudioEngine_updateMATAtmosPlaybackPreferenceIfNecessary_cold_1(result);
          }

          goto LABEL_17;
        }

        result = 4294954514;
      }

      else
      {
        result = 4294954508;
      }

      return bufferedAudioEngine_updateMATAtmosPlaybackPreferenceIfNecessary_cold_1(result);
    }

    if (*(v3 + 648) != 1 || *(v2 + 32) || APSGetFBOPropertyInt64())
    {
      v8 = v2[2];
      APSEndpointStreamAudioHoseProtocolGetProtocolID();
      v9 = CMBaseObjectGetProtocolVTable();
      if (v9 && (v10 = *(v9 + 16)) != 0)
      {
        v11 = *(v10 + 120);
        if (v11)
        {
          result = v11(v8, 0);
          if (result)
          {
            return bufferedAudioEngine_updateMATAtmosPlaybackPreferenceIfNecessary_cold_2(result);
          }

          goto LABEL_17;
        }

        result = 4294954514;
      }

      else
      {
        result = 4294954508;
      }

      return bufferedAudioEngine_updateMATAtmosPlaybackPreferenceIfNecessary_cold_2(result);
    }

    v12 = v2[2];
    APSEndpointStreamAudioHoseProtocolGetProtocolID();
    v13 = CMBaseObjectGetProtocolVTable();
    if (!v13 || (v14 = *(v13 + 16)) == 0)
    {
      result = 4294954508;
      return bufferedAudioEngine_updateMATAtmosPlaybackPreferenceIfNecessary_cold_3(result);
    }

    v15 = *(v14 + 120);
    if (!v15)
    {
      break;
    }

    result = v15(v12, 1);
    if (result)
    {
      return bufferedAudioEngine_updateMATAtmosPlaybackPreferenceIfNecessary_cold_3(result);
    }

LABEL_17:
    v2 = *v2;
    if (!v2)
    {
      return result;
    }
  }

  result = 4294954514;
  return bufferedAudioEngine_updateMATAtmosPlaybackPreferenceIfNecessary_cold_3(result);
}

uint64_t APSAudioProtocolDriverHoseControlEnableLoudnessNormalization(uint64_t a1, uint64_t a2)
{
  APSAudioProtocolDriverHoseControlProtocolGetProtocolID();
  result = CMBaseObjectGetProtocolVTable();
  if (result)
  {
    v6 = *(result + 16);
    result += 16;
    v5 = v6;
    if (v6)
    {
      v7 = *(v5 + 88);
      if (v7)
      {

        return v7(a1, a2);
      }
    }
  }

  return result;
}

uint64_t bufferedAudioEngine_setEchoCancellationIsEnabledToAllHoses(uint64_t a1, int a2)
{
  result = CMBaseObjectGetDerivedStorage();
  v4 = *(result + 640);
  if (v4)
  {
    v5 = *MEMORY[0x277CE9F80];
    v6 = MEMORY[0x277CBED10];
    if (a2)
    {
      v6 = MEMORY[0x277CBED28];
    }

    v7 = *v6;
    do
    {
      v8 = v4[2];
      VTable = CMBaseObjectGetVTable();
      v10 = *(VTable + 8);
      result = VTable + 8;
      v11 = *(v10 + 56);
      if (v11)
      {
        result = v11(v8, v5, v7);
      }

      v4 = *v4;
    }

    while (v4);
  }

  return result;
}

uint64_t bufferedAudioEngine_hoseSetMagicCookieCallbackCompletionHandler(const void *a1, uint64_t a2, int a3, const void *a4)
{
  CMBaseObjectGetDerivedStorage();
  v8 = malloc_type_calloc(1uLL, 0x20uLL, 0x10200401C4E69EBuLL);
  if (!v8)
  {
    bufferedAudioEngine_hoseSetMagicCookieCallbackCompletionHandler_cold_1();
    v12 = 4294951816;
    if (!a4)
    {
      return v12;
    }

    goto LABEL_9;
  }

  v9 = v8;
  if (a4)
  {
    v10 = CFRetain(a4);
  }

  else
  {
    v10 = 0;
  }

  *v9 = v10;
  if (a1)
  {
    v11 = CFRetain(a1);
  }

  else
  {
    v11 = 0;
  }

  v9[1] = v11;
  v9[2] = a2;
  *(v9 + 6) = a3;
  APSPriorityDispatcherAsyncF();
  v12 = 0;
  if (a4)
  {
LABEL_9:
    CFRelease(a4);
  }

  return v12;
}

uint64_t bufferedAudioEngine_audioHoseRegistrarDeregisterProtocolDriverHoseLegacyInternal(uint64_t *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APAudioEngineBuffered <= 50 && (gLogCategory_APAudioEngineBuffered != -1 || _LogCategory_Initialize()))
  {
    bufferedAudioEngine_audioHoseRegistrarDeregisterProtocolDriverHoseLegacyInternal_cold_1(a1);
  }

  if (*(DerivedStorage + 436) && !bufferedAudioEngine_isHoseLocal(a1[1]))
  {
    v3 = a1[2];
    v4 = *(*(CMBaseObjectGetVTable() + 8) + 56);
    if (v4)
    {
      v4(v3, *MEMORY[0x277CE9F78], 0);
    }

    if (*(DerivedStorage + 424))
    {
      APSDataPacerHoseCountDecrement();
    }
  }

  v5 = bufferedAudioEngine_removeHose(*a1, a1[1]);
  v6 = v5;
  if (v5)
  {
    bufferedAudioEngine_audioHoseRegistrarDeregisterProtocolDriverHoseLegacyInternal_cold_2(v5);
  }

  else
  {
    bufferedAudioEngine_audioHoseSetEchoCancellationIfNeccessary(*a1, a1[1], a1[3], 1);
    if (CFDictionaryGetInt64())
    {
      *(DerivedStorage + 1240) = 0;
      bufferedAudioEngine_setEchoCancellationIsEnabledToAllHoses(*a1, 0);
    }

    bufferedAudioEngine_updateInternalBadgeInfoAndPostNotificationIfNecessary(*a1, *(DerivedStorage + 1040), 0);
    bufferedAudioEngine_updateMATAtmosPlaybackPreferenceIfNecessary(*a1);
    bufferedAudioEngine_getCurrentRemoteMediaTimeInternal(0, &v8);
    APSAudioHoseMetricCollectorReportMetrics();
    APSAudioHoseMetricCollectorDeregisterHose();
  }

  return v6;
}

uint64_t bufferedAudioEngine_audioHoseRegistrarRegisterProtocolDriverHoseInternal(uint64_t *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v62 = 0;
  v61 = 0;
  cf = 0;
  v59 = 0;
  v3 = LogCategoryCopyOSLogHandle();
  v4 = MEMORY[0x277D86220];
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = MEMORY[0x277D86220];
  }

  v6 = a1 + 1;
  v7 = CUObfuscatedPtr();
  if (v7)
  {
    v8 = v7;
    if (os_signpost_enabled(v5))
    {
      LOWORD(buf.value) = 0;
      _os_signpost_emit_with_name_impl(&dword_221FFA000, v5, OS_SIGNPOST_INTERVAL_BEGIN, v8, "AIRPLAY_SIGNPOST_AUDIOENGINE_HOSE_REGISTERED", &unk_2222A918B, &buf, 2u);
    }
  }

  v9 = &gLogCategory_APEndpointPlaybackSessionRemoteControl;
  if (gLogCategory_APAudioEngineBuffered <= 50 && (gLogCategory_APAudioEngineBuffered != -1 || _LogCategory_Initialize()))
  {
    bufferedAudioEngine_audioHoseRegistrarRegisterProtocolDriverHoseInternal_cold_1();
  }

  if (!*(DerivedStorage + 577))
  {
    v42 = 4294895205;
    bufferedAudioEngine_audioHoseRegistrarRegisterProtocolDriverHoseInternal_cold_17();
    goto LABEL_51;
  }

  isHoseLocal = bufferedAudioEngine_isHoseLocal(a1[1]);
  v11 = *a1;
  if (!isHoseLocal)
  {
    inited = bufferedAudioEngine_initProtocolDriverIfNecessary(v11, *MEMORY[0x277CEA028], &v59);
    if (inited)
    {
      v42 = inited;
      bufferedAudioEngine_audioHoseRegistrarRegisterProtocolDriverHoseInternal_cold_4(inited);
      goto LABEL_51;
    }

    CMBaseObjectGetDerivedStorage();
    Value = FigCFDictionaryGetValue();
    if (!Value)
    {
      v42 = 4294895205;
      bufferedAudioEngine_audioHoseRegistrarRegisterProtocolDriverHoseInternal_cold_16();
      goto LABEL_51;
    }

    v14 = Value;
    CMBaseObject = APSAudioProtocolDriverSenderGetCMBaseObject();
    v16 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v16)
    {
      v17 = v16(CMBaseObject, *MEMORY[0x277CEA020], *MEMORY[0x277CBECE8], &v62);
      if (v17)
      {
        v42 = v17;
      }

      else
      {
        if (!v59)
        {
          goto LABEL_25;
        }

        FigCFNumberGetUInt64();
        CMBaseObjectGetDerivedStorage();
        v18 = FigCFWeakReferenceHolderCreateWithReferencedObject();
        if (v18)
        {
          v19 = v18;
          buf.value = v18;
          *&buf.timescale = bufferedAudioEngine_weakProtocolDriverTickTimer;
          buf.epoch = MEMORY[0x277CBE550];
          v20 = APSPriorityDispatchSourceCreate();
          if (v20)
          {
            v42 = v20;
            bufferedAudioEngine_audioHoseRegistrarRegisterProtocolDriverHoseInternal_cold_5(v20, v19);
          }

          else
          {
            v21 = APSPriorityDispatchSourceSetTimer();
            if (v21)
            {
              v42 = v21;
              bufferedAudioEngine_audioHoseRegistrarRegisterProtocolDriverHoseInternal_cold_6(v21);
            }

            else
            {
              v22 = APSPriorityDispatchSourceResume();
              if (!v22)
              {
                v9 = &gLogCategory_APEndpointPlaybackSessionRemoteControl;
                goto LABEL_25;
              }

              v42 = v22;
              bufferedAudioEngine_audioHoseRegistrarRegisterProtocolDriverHoseInternal_cold_7(v22);
            }
          }
        }

        else
        {
          bufferedAudioEngine_audioHoseRegistrarRegisterProtocolDriverHoseInternal_cold_8();
          v42 = 4294895206;
        }
      }
    }

    else
    {
      v42 = 4294954514;
    }

    APSLogErrorAt();
    goto LABEL_51;
  }

  v23 = bufferedAudioEngine_initProtocolDriverIfNecessary(v11, *MEMORY[0x277CEA030], 0);
  if (v23)
  {
    v42 = v23;
    bufferedAudioEngine_audioHoseRegistrarRegisterProtocolDriverHoseInternal_cold_2(v23);
    goto LABEL_51;
  }

  CMBaseObjectGetDerivedStorage();
  v14 = FigCFDictionaryGetValue();
  if (!v14)
  {
    v42 = 4294895205;
    bufferedAudioEngine_audioHoseRegistrarRegisterProtocolDriverHoseInternal_cold_3();
    goto LABEL_51;
  }

LABEL_25:
  v24 = MEMORY[0x277CC0898];
  *(DerivedStorage + 504) = *MEMORY[0x277CC0898];
  *(DerivedStorage + 520) = *(v24 + 16);
  v25 = bufferedAudioEngine_addHose(*a1, a1[1], a1[2], &v61);
  if (v25)
  {
    v42 = v25;
    bufferedAudioEngine_audioHoseRegistrarRegisterProtocolDriverHoseInternal_cold_9(v25);
    goto LABEL_51;
  }

  v26 = APSDataPacerHoseCountIncrement();
  if (v26)
  {
    v42 = v26;
    bufferedAudioEngine_audioHoseRegistrarRegisterProtocolDriverHoseInternal_cold_10(v26);
    goto LABEL_51;
  }

  v27 = *v14;
  v28 = a1[2];
  v29 = *(CMBaseObjectGetVTable() + 16);
  if (!v29)
  {
    v42 = 4294954508;
LABEL_50:
    APSLogErrorAt();
    APSDataPacerHoseCountDecrement();
    goto LABEL_51;
  }

  v30 = *(v29 + 32);
  if (!v30)
  {
    v42 = 4294954514;
    goto LABEL_50;
  }

  v31 = v30(v27, v28);
  if (v31)
  {
    v42 = v31;
    goto LABEL_50;
  }

  bufferedAudioEngine_audioHoseSetEchoCancellationIfNeccessary(*a1, a1[1], a1[3], 0);
  v32 = a1[1];
  v33 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v33)
  {
    v42 = 4294954514;
    goto LABEL_50;
  }

  v34 = v33(v32, *MEMORY[0x277CE9F58], 0, &cf);
  if (v34)
  {
    v42 = v34;
    goto LABEL_50;
  }

  UInt32 = FigCFNumberGetUInt32();
  v36 = UInt32;
  v37 = *(DerivedStorage + 124) * UInt32 / 0x64u;
  if (*(DerivedStorage + 120) < v37)
  {
    v37 = *(DerivedStorage + 120);
  }

  *(*(DerivedStorage + 640) + 164) = UInt32 - v37;
  v38 = v9[594];
  if (v38 <= 50 && (v38 != -1 || _LogCategory_Initialize()))
  {
    bufferedAudioEngine_audioHoseRegistrarRegisterProtocolDriverHoseInternal_cold_11();
  }

  v39 = *(DerivedStorage + 640);
  *(v39 + 168) = *(DerivedStorage + 184) * v36 / 0x64u;
  v40 = v9[594];
  if (v40 >= 51)
  {
    *(v39 + 33) = *(DerivedStorage + 321);
  }

  else
  {
    if (v40 != -1 || _LogCategory_Initialize())
    {
      bufferedAudioEngine_audioHoseRegistrarRegisterProtocolDriverHoseInternal_cold_12();
    }

    v41 = v9[594];
    *(*(DerivedStorage + 640) + 33) = *(DerivedStorage + 321);
    if (v41 <= 50 && (v41 != -1 || _LogCategory_Initialize()))
    {
      bufferedAudioEngine_audioHoseRegistrarRegisterProtocolDriverHoseInternal_cold_13();
    }
  }

  if (*(DerivedStorage + 437))
  {
    v44 = *(DerivedStorage + 648) == 1;
  }

  else
  {
    v44 = 1;
  }

  bufferedAudioEngine_updateStartupConfiguration(*a1, v44);
  if (*(DerivedStorage + 704) < v36)
  {
    v45 = v36 >= 0x753000 ? 7680000 : v36;
    *(DerivedStorage + 704) = v45;
    v46 = v9[594];
    if (v46 <= 50 && (v46 != -1 || _LogCategory_Initialize()))
    {
      bufferedAudioEngine_audioHoseRegistrarRegisterProtocolDriverHoseInternal_cold_14();
    }
  }

  v47 = LogCategoryCopyOSLogHandle();
  v48 = v47;
  if (v47)
  {
    v49 = v47;
  }

  else
  {
    v49 = v4;
  }

  v50 = CUObfuscatedPtr();
  if (v50)
  {
    v51 = v50;
    if (os_signpost_enabled(v49))
    {
      LOWORD(buf.value) = 0;
      _os_signpost_emit_with_name_impl(&dword_221FFA000, v49, OS_SIGNPOST_INTERVAL_END, v51, "AIRPLAY_SIGNPOST_AUDIOENGINE_HOSE_REGISTERED", &unk_2222A918B, &buf, 2u);
    }
  }

  if (v48)
  {
    os_release(v48);
  }

  v52 = v9[594];
  if (v52 <= 50 && (v52 != -1 || _LogCategory_Initialize()))
  {
    v53 = *a1;
    if (*a1)
    {
      v54 = (CMBaseObjectGetDerivedStorage() + 392);
    }

    else
    {
      v54 = "";
    }

    v55 = *(DerivedStorage + 640);
    v56 = *(v55 + 264);
    if (*(v55 + 32))
    {
      v57 = "local";
    }

    else
    {
      v57 = "remote";
    }

    LogPrintF(&gLogCategory_APAudioEngineBuffered, "OSStatus bufferedAudioEngine_audioHoseRegistrarRegisterProtocolDriverHoseInternal(void *)", 33554482, "BAE [%{ptr}] %sRegistered hoseControl [%{ptr}] (%@) (%s) registered (stream count %d) audioBufferSize = %d\n", v53, v54, *v6, v56, v57, *(DerivedStorage + 648), v36);
  }

  bufferedAudioEngine_updateInternalBadgeInfoAndPostNotificationIfNecessary(*a1, *(DerivedStorage + 1040), 0);
  bufferedAudioEngine_updateMATAtmosPlaybackPreferenceIfNecessary(*a1);
  bufferedAudioEngine_setAllCryptorsForHose();
  bufferedAudioEngine_setAllMagicCookiesForHose();
  if (!*(*(DerivedStorage + 640) + 32) && *(DerivedStorage + 576))
  {
    v58 = v9[594];
    if (v58 <= 50 && (v58 != -1 || _LogCategory_Initialize()))
    {
      bufferedAudioEngine_audioHoseRegistrarRegisterProtocolDriverHoseInternal_cold_15();
    }

    APSAudioProtocolDriverHoseControlEnableLoudnessNormalization(*v6, gSoundCheckEnabled);
  }

  bufferedAudioEngine_wakeUpHosesAndAudioTimer(*a1);
  bufferedAudioEngine_getCurrentRemoteMediaTimeInternal(0, &buf);
  APSAudioHoseMetricCollectorReportMetrics();
  bufferedAudioEngine_isHoseLocal(a1[1]);
  APSAudioHoseMetricCollectorRegisterHose();
  v42 = 0;
LABEL_51:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v62)
  {
    CFRelease(v62);
  }

  return v42;
}

void bufferedAudioEngine_weakProtocolDriverTickTimer(uint64_t a1)
{
  v26 = *MEMORY[0x277D85DE8];
  v1 = FigCFWeakReferenceHolderCopyReferencedObject();
  if (v1)
  {
    v2 = v1;
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    memset(&v21, 0, sizeof(v21));
    HostTimeClock = CMClockGetHostTimeClock();
    CMClockGetTime(&v21, HostTimeClock);
    Value = FigCFDictionaryGetValue();
    if (Value)
    {
      v6 = Value;
      if (*(DerivedStorage + 884) == 8)
      {
        v7 = CMClockGetHostTimeClock();
        v8 = *(DerivedStorage + 872);
        time = v21;
        CMSyncConvertTime(&v23, &time, v7, v8);
        v24 = v23.value;
        flags = v23.flags;
        timescale = v23.timescale;
        epoch = v23.epoch;
LABEL_10:
        v12 = *v6;
        v20 = v21;
        v13 = *(CMBaseObjectGetVTable() + 16);
        if (v13 && (v14 = *(v13 + 8)) != 0 && (v23.value = v24, v23.timescale = timescale, v23.flags = flags, v23.epoch = epoch, time = v20, !v14(v12, &v23, &time)))
        {
          if (gLogCategory_APAudioEngineBuffered <= 10 && (gLogCategory_APAudioEngineBuffered != -1 || _LogCategory_Initialize()))
          {
            v15 = CMBaseObjectGetDerivedStorage() + 392;
            v16 = *(DerivedStorage + 530);
            v17 = *(DerivedStorage + 896);
            v23.value = v24;
            v23.timescale = timescale;
            v23.flags = flags;
            v23.epoch = epoch;
            Seconds = CMTimeGetSeconds(&v23);
            v23 = v21;
            v19 = CMTimeGetSeconds(&v23);
            LogPrintF(&gLogCategory_APAudioEngineBuffered, "void bufferedAudioEngine_protocolDriverTickTimer(void *)", 33554442, "BAE [%{ptr}] %s[0x%04X] bufferedAudioEngine_protocolDriverTickTimer requestedPlaybackRate=%f, mediaTime=%1.3f, hostTime=%1.3f\n", v2, v15, v16, v17, *&Seconds, *&v19);
          }
        }

        else
        {
          APSLogErrorAt();
        }

        goto LABEL_17;
      }

      v11 = (DerivedStorage + 796);
      flags = *(DerivedStorage + 816);
      if (flags)
      {
        timescale = *(DerivedStorage + 812);
        v24 = *(DerivedStorage + 804);
        v11 = (DerivedStorage + 820);
      }

      else
      {
        timescale = *(DerivedStorage + 788);
        v24 = *(DerivedStorage + 780);
        flags = *(DerivedStorage + 792);
      }

      if ((flags & 0x1D) == 1)
      {
        epoch = *v11;
        goto LABEL_10;
      }

      bufferedAudioEngine_weakProtocolDriverTickTimer_cold_1();
    }

    else
    {
      bufferedAudioEngine_weakProtocolDriverTickTimer_cold_2();
    }

LABEL_17:
    CFRelease(v2);
  }
}

uint64_t bufferedAudioEngine_audioHoseRegistrarDeregisterProtocolDriverHoseInternal(uint64_t *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APAudioEngineBuffered <= 50 && (gLogCategory_APAudioEngineBuffered != -1 || _LogCategory_Initialize()))
  {
    bufferedAudioEngine_audioHoseRegistrarDeregisterProtocolDriverHoseInternal_cold_1(a1);
  }

  v3 = bufferedAudioEngine_removeHose(*a1, a1[1]);
  if (v3)
  {
    v11 = v3;
    bufferedAudioEngine_audioHoseRegistrarDeregisterProtocolDriverHoseInternal_cold_2(v3);
    return v11;
  }

  APSDataPacerHoseCountDecrement();
  if (bufferedAudioEngine_isHoseLocal(a1[1]))
  {
    v4 = *MEMORY[0x277CEA030];
    CMBaseObjectGetDerivedStorage();
    Value = FigCFDictionaryGetValue();
    if (!Value)
    {
      v11 = 4294895205;
      bufferedAudioEngine_audioHoseRegistrarDeregisterProtocolDriverHoseInternal_cold_3();
      return v11;
    }

    v6 = *Value;
    v7 = a1[2];
    v8 = *(CMBaseObjectGetVTable() + 16);
    if (!v8)
    {
      v11 = 4294954508;
      goto LABEL_25;
    }

    v9 = *(v8 + 40);
    if (!v9)
    {
      v11 = 4294954514;
      goto LABEL_25;
    }

    v10 = v9(v6, v7);
    if (v10)
    {
      v11 = v10;
LABEL_25:
      APSLogErrorAt();
      return v11;
    }

    goto LABEL_20;
  }

  v4 = *MEMORY[0x277CEA028];
  CMBaseObjectGetDerivedStorage();
  v12 = FigCFDictionaryGetValue();
  if (!v12)
  {
    v11 = 4294895205;
    bufferedAudioEngine_audioHoseRegistrarDeregisterProtocolDriverHoseInternal_cold_4();
    return v11;
  }

  v13 = *v12;
  v14 = a1[2];
  v15 = *(CMBaseObjectGetVTable() + 16);
  if (!v15)
  {
    v11 = 4294954508;
    goto LABEL_25;
  }

  v16 = *(v15 + 40);
  if (!v16)
  {
    v11 = 4294954514;
    goto LABEL_25;
  }

  v17 = v16(v13, v14);
  if (v17)
  {
    v11 = v17;
    goto LABEL_25;
  }

  v18 = *(DerivedStorage + 648);
  if (!v18 || v18 == 1 && *(DerivedStorage + 1160))
  {
    bufferedAudioEngine_destroyProtocolDriverTickTimer(*a1);
    v19 = MEMORY[0x277CC0898];
    *(DerivedStorage + 504) = *MEMORY[0x277CC0898];
    *(DerivedStorage + 520) = *(v19 + 16);
LABEL_20:
    CFDictionaryRemoveValue(*(DerivedStorage + 496), v4);
  }

  bufferedAudioEngine_getCurrentRemoteMediaTimeInternal(0, &v21);
  APSAudioHoseMetricCollectorReportMetrics();
  APSAudioHoseMetricCollectorDeregisterHose();
  return 0;
}

void bufferedAudioEngine_Resume(const void *a1, const void *a2, uint64_t (*a3)(const void *, uint64_t, uint64_t), uint64_t a4)
{
  CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APAudioEngineBuffered <= 50 && (gLogCategory_APAudioEngineBuffered != -1 || _LogCategory_Initialize()))
  {
    bufferedAudioEngine_Resume_cold_1(a1);
  }

  v8 = LogCategoryCopyOSLogHandle();
  if (v8)
  {
    v9 = v8;
  }

  else
  {
    v9 = MEMORY[0x277D86220];
  }

  v10 = CUObfuscatedPtr();
  if (v10)
  {
    v11 = v10;
    if (os_signpost_enabled(v9))
    {
      v18[0] = 0;
      _os_signpost_emit_with_name_impl(&dword_221FFA000, v9, OS_SIGNPOST_INTERVAL_BEGIN, v11, "AIRPLAY_SIGNPOST_AUDIOENGINE_RESUME_INTERVAL", &unk_2222A918B, v18, 2u);
    }
  }

  kdebug_trace();
  v12 = malloc_type_malloc(0x28uLL, 0x10E0040139F2759uLL);
  if (!v12)
  {
    bufferedAudioEngine_Resume_cold_3();
    v17 = 4294951816;
    goto LABEL_22;
  }

  v13 = v12;
  if (a1)
  {
    v14 = CFRetain(a1);
  }

  else
  {
    v14 = 0;
  }

  *v13 = v14;
  if (a2)
  {
    v15 = CFRetain(a2);
  }

  else
  {
    v15 = 0;
  }

  v13[1] = v15;
  v13[2] = a3;
  v13[3] = a4;
  *(v13 + 8) = 0;
  v16 = APSDispatchSectionEnterWithPriorityDispatcher();
  if (v16)
  {
    v17 = v16;
    bufferedAudioEngine_Resume_cold_2();
LABEL_22:
    if (a3)
    {
      a3(a1, v17, a4);
    }
  }
}

void bufferedAudioEngine_Suspend(const void *a1, const void *a2, uint64_t (*a3)(const void *, uint64_t, uint64_t), uint64_t a4)
{
  CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APAudioEngineBuffered <= 50 && (gLogCategory_APAudioEngineBuffered != -1 || _LogCategory_Initialize()))
  {
    bufferedAudioEngine_Suspend_cold_1(a1);
  }

  v7 = malloc_type_malloc(0x28uLL, 0x10E0040139F2759uLL);
  if (v7)
  {
    v8 = v7;
    if (a1)
    {
      v9 = CFRetain(a1);
    }

    else
    {
      v9 = 0;
    }

    *v8 = v9;
    if (a2)
    {
      v10 = CFRetain(a2);
    }

    else
    {
      v10 = 0;
    }

    v8[1] = v10;
    v8[2] = a3;
    v8[3] = a4;
    *(v8 + 8) = 0;
    v11 = APSDispatchSectionEnterWithPriorityDispatcher();
    if (!v11)
    {
      return;
    }

    v12 = v11;
    bufferedAudioEngine_Suspend_cold_2();
  }

  else
  {
    bufferedAudioEngine_Suspend_cold_3();
    v12 = 4294951816;
  }

  if (a3)
  {

    a3(a1, v12, a4);
  }
}

void bufferedAudioEngine_SetEndpointStream(const void *a1, const void *a2, uint64_t (*a3)(const void *, uint64_t, uint64_t), uint64_t a4)
{
  CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APAudioEngineBuffered <= 50 && (gLogCategory_APAudioEngineBuffered != -1 || _LogCategory_Initialize()))
  {
    bufferedAudioEngine_SetEndpointStream_cold_1();
  }

  kdebug_trace();
  v8 = LogCategoryCopyOSLogHandle();
  if (v8)
  {
    v9 = v8;
  }

  else
  {
    v9 = MEMORY[0x277D86220];
  }

  v10 = CUObfuscatedPtr();
  if (v10)
  {
    v11 = v10;
    if (os_signpost_enabled(v9))
    {
      v18[0] = 0;
      _os_signpost_emit_with_name_impl(&dword_221FFA000, v9, OS_SIGNPOST_INTERVAL_BEGIN, v11, "AIRPLAY_SIGNPOST_AUDIOENGINE_SETENDPOINTSTREAM_INTERVAL", &unk_2222A918B, v18, 2u);
    }
  }

  v12 = malloc_type_malloc(0x28uLL, 0x10A0040DE786E1EuLL);
  if (!v12)
  {
    bufferedAudioEngine_SetEndpointStream_cold_3();
    v17 = 4294951816;
    goto LABEL_22;
  }

  v13 = v12;
  if (a1)
  {
    v14 = CFRetain(a1);
  }

  else
  {
    v14 = 0;
  }

  *v13 = v14;
  if (a2)
  {
    v15 = CFRetain(a2);
  }

  else
  {
    v15 = 0;
  }

  v13[1] = v15;
  v13[2] = a3;
  v13[3] = a4;
  *(v13 + 8) = 0;
  v16 = APSDispatchSectionEnterWithPriorityDispatcher();
  if (v16)
  {
    v17 = v16;
    bufferedAudioEngine_SetEndpointStream_cold_2();
LABEL_22:
    if (a3)
    {
      a3(a1, v17, a4);
    }
  }
}

uint64_t bufferedAudioEngine_Flush(uint64_t a1, uint64_t a2)
{
  CMBaseObjectGetDerivedStorage();
  FigCFDictionaryGetCMTimeIfPresent();
  CFDictionaryGetInt64();
  if (gLogCategory_APAudioEngineBuffered <= 50 && (gLogCategory_APAudioEngineBuffered != -1 || _LogCategory_Initialize()))
  {
    bufferedAudioEngine_Flush_cold_1();
  }

  v2 = APSPriorityDispatcherSyncTask();
  v3 = v2;
  if (v2)
  {
    bufferedAudioEngine_Flush_cold_2(v2);
  }

  return v3;
}

uint64_t bufferedAudioEngine_FlushWithinSampleRange(uint64_t a1, __int128 *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v16 = a1;
  v5 = a2[1];
  v17 = *a2;
  v18 = v5;
  v19 = a2[2];
  if (gLogCategory_APAudioEngineBuffered <= 50 && (gLogCategory_APAudioEngineBuffered != -1 || _LogCategory_Initialize()))
  {
    if (a1)
    {
      v6 = (CMBaseObjectGetDerivedStorage() + 392);
    }

    else
    {
      v6 = "";
    }

    v7 = *(DerivedStorage + 530);
    *&time.start.value = *a2;
    time.start.epoch = *(a2 + 2);
    Seconds = CMTimeGetSeconds(&time.start);
    v9 = a2[1];
    *&time.start.value = *a2;
    *&time.start.epoch = v9;
    *&time.duration.timescale = a2[2];
    CMTimeRangeGetEnd(&v15, &time);
    v10 = CMTimeGetSeconds(&v15);
    LogPrintF(&gLogCategory_APAudioEngineBuffered, "OSStatus bufferedAudioEngine_FlushWithinSampleRange(FigEndpointStreamAudioEngineRef, CMTimeRange)", 33554482, "BAE [%{ptr}] %s[0x%04X] Flushing audio engine within sample range %1.3f:%1.3f\n", a1, v6, v7, *&Seconds, *&v10);
  }

  v11 = APSPriorityDispatcherSyncTask();
  v12 = v11;
  if (v11)
  {
    bufferedAudioEngine_FlushWithinSampleRange_cold_1(v11);
  }

  return v12;
}

void bufferedAudioEngine_SetRateAndAnchorTime(const void *a1, CMTime *a2, CMTime *a3, uint64_t a4, uint64_t a5, uint64_t a6, double a7)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APAudioEngineBuffered <= 50 && (gLogCategory_APAudioEngineBuffered != -1 || _LogCategory_Initialize()))
  {
    if (a1)
    {
      v15 = (CMBaseObjectGetDerivedStorage() + 392);
    }

    else
    {
      v15 = "";
    }

    v16 = *(DerivedStorage + 530);
    time = *a2;
    Seconds = CMTimeGetSeconds(&time);
    time = *a3;
    v18 = CMTimeGetSeconds(&time);
    LogPrintF(&gLogCategory_APAudioEngineBuffered, "void bufferedAudioEngine_SetRateAndAnchorTime(FigEndpointStreamAudioEngineRef, Float64, CMTime, CMTime, FigEndpointStreamAudioEngineSetRateAndAnchorTimeCallback, void *, CFDictionaryRef)", 33554482, "BAE [%{ptr}] %sWHAPRO [0x%04X] SetRateAndAnchorTime inRate: %f inSampleTime %f inHostTime %f\n", a1, v15, v16, *&a7, *&Seconds, *&v18);
  }

  if (a7 == 0.0 || a7 == 1.0)
  {
    v20 = malloc_type_calloc(1uLL, 0x58uLL, 0x10A0040F3A75D44uLL);
    if (v20)
    {
      v21 = v20;
      if (a1)
      {
        v22 = CFRetain(a1);
      }

      else
      {
        v22 = 0;
      }

      *v21 = v22;
      *(v21 + 1) = a7;
      v23 = *&a2->value;
      *(v21 + 4) = a2->epoch;
      *(v21 + 1) = v23;
      epoch = a3->epoch;
      *(v21 + 40) = *&a3->value;
      *(v21 + 7) = epoch;
      *(v21 + 8) = a4;
      *(v21 + 9) = a5;
      if (a7 != 1.0 || !a6)
      {
        APSPriorityDispatcherAsyncEnforcePriorityF();
        return;
      }

      MutableCopy = FigCFDictionaryCreateMutableCopy();
      if (MutableCopy)
      {
        v26 = MutableCopy;
        FigCFDictionaryGetValue();
        v27 = FigCFDictionaryCreateMutableCopy();
        if (v27)
        {
          v28 = v27;
          mach_absolute_time();
          FigCFDictionarySetInt64();
          FigCFDictionarySetValue();
          *(v21 + 10) = CFRetain(v26);
          APSPriorityDispatcherAsyncEnforcePriorityF();
          CFRelease(v28);
          CFRelease(v26);
          return;
        }

        bufferedAudioEngine_SetRateAndAnchorTime_cold_2(v26);
      }

      else
      {
        bufferedAudioEngine_SetRateAndAnchorTime_cold_3();
      }

      if (*v21)
      {
        CFRelease(*v21);
      }

      v29 = *(v21 + 10);
      if (v29)
      {
        CFRelease(v29);
      }

      free(v21);
    }

    else
    {
      bufferedAudioEngine_SetRateAndAnchorTime_cold_4();
    }
  }

  else
  {
    bufferedAudioEngine_SetRateAndAnchorTime_cold_1();
  }

  if (a4)
  {
    if (gLogCategory_APAudioEngineBuffered <= 50 && (gLogCategory_APAudioEngineBuffered != -1 || _LogCategory_Initialize()))
    {
      bufferedAudioEngine_SetRateAndAnchorTime_cold_5();
    }

    bufferedAudioEngine_callSetRateAndAnchorTimeClientCompletionCallback(a1, 0xFFFFBB52, MEMORY[0x277CC0898], MEMORY[0x277CC0898], 0, a4, a5, *(DerivedStorage + 888));
  }
}

uint64_t bufferedAudioEngine_SetEndOfSiriTTSUtteranceMediaTime(uint64_t a1, __int128 *a2)
{
  CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APAudioEngineBuffered <= 50 && (gLogCategory_APAudioEngineBuffered != -1 || _LogCategory_Initialize()))
  {
    bufferedAudioEngine_SetEndOfSiriTTSUtteranceMediaTime_cold_1();
  }

  v2 = APSPriorityDispatcherSyncTask();
  v3 = v2;
  if (v2)
  {
    bufferedAudioEngine_SetEndOfSiriTTSUtteranceMediaTime_cold_2(v2);
  }

  return v3;
}

uint64_t bufferedAudioEngine_ApplyVolumeFade(uint64_t a1, int a2, __int128 *a3)
{
  CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APAudioEngineBuffered <= 50 && (gLogCategory_APAudioEngineBuffered != -1 || _LogCategory_Initialize()))
  {
    bufferedAudioEngine_ApplyVolumeFade_cold_1();
  }

  v3 = APSPriorityDispatcherSyncTask();
  v4 = v3;
  if (v3)
  {
    bufferedAudioEngine_ApplyVolumeFade_cold_2(v3);
  }

  return v4;
}

void bufferedAudioEngine_resumeInternalStage1(uint64_t *a1)
{
  v141 = *MEMORY[0x277D85DE8];
  v126 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v124 = 0;
  cf = 0;
  v123 = 0;
  valuePtr = 0;
  if (gLogCategory_APAudioEngineBuffered <= 50 && (gLogCategory_APAudioEngineBuffered != -1 || _LogCategory_Initialize()))
  {
    bufferedAudioEngine_resumeInternalStage1_cold_1();
  }

  kdebug_trace();
  if (*(DerivedStorage + 528))
  {
    goto LABEL_243;
  }

  v3 = a1[1];
  v4 = MEMORY[0x277CBECE8];
  if (!v3)
  {
    v5 = 0;
    v6 = 0;
    v7 = 0;
    Value = 0;
    goto LABEL_20;
  }

  Value = CFDictionaryGetValue(v3, *MEMORY[0x277CD6278]);
  v7 = CFDictionaryGetValue(a1[1], *MEMORY[0x277CD6288]);
  v6 = CFDictionaryGetValue(a1[1], *MEMORY[0x277CD6298]);
  if (!CFDictionaryGetValue(a1[1], *MEMORY[0x277CD6290]))
  {
    goto LABEL_12;
  }

  v9 = APSAudioFormatDescriptionCreateWithFigEndpointStreamAudioFormatDescription();
  v126 = v9;
  if (v9)
  {
    bufferedAudioEngine_resumeInternalStage1_cold_2(v9);
LABEL_243:
    v5 = 0;
    goto LABEL_131;
  }

  *&v136 = 0;
  if (gLogCategory_APAudioEngineBuffered <= 50 && (gLogCategory_APAudioEngineBuffered != -1 || _LogCategory_Initialize()))
  {
    bufferedAudioEngine_resumeInternalStage1_cold_3(DerivedStorage + 1008);
    if (!Value)
    {
      goto LABEL_13;
    }

    goto LABEL_15;
  }

LABEL_12:
  if (!Value)
  {
LABEL_13:
    v5 = 0;
    goto LABEL_20;
  }

LABEL_15:
  v10 = *(DerivedStorage + 384);
  if (!v10)
  {
    bufferedAudioEngine_resumeInternalStage1_cold_8(&v126);
LABEL_247:
    v5 = 0;
    v55 = 4294951815;
    goto LABEL_248;
  }

  if (CFDataGetLength(v10) != 32)
  {
    bufferedAudioEngine_resumeInternalStage1_cold_4(&v126);
    goto LABEL_247;
  }

  BytePtr = CFDataGetBytePtr(*(DerivedStorage + 384));
  v120 = *BytePtr;
  v121 = *(BytePtr + 1);
  if ((v120 & *(&v120 + 1) & v121 & *(&v121 + 1)) == 0xFFFFFFFFFFFFFFFFLL)
  {
    bufferedAudioEngine_resumeInternalStage1_cold_7(&v126);
    goto LABEL_247;
  }

  CFNumberGetValue(Value, kCFNumberSInt32Type, &valuePtr);
  v5 = CFStringCreateF(&v126, "siblingClientSessionForBAE-%{ptr}", *a1);
  if (v126)
  {
    bufferedAudioEngine_resumeInternalStage1_cold_5(v126);
    goto LABEL_131;
  }

  v136 = v120;
  v137 = v121;
  v12 = FigAudioSessionCreateWithAVAudioSessionSiblingForAudioSessionID();
  v126 = v12;
  if (v12)
  {
    bufferedAudioEngine_resumeInternalStage1_cold_6(v12);
    goto LABEL_131;
  }

LABEL_20:
  if (gLogCategory_APAudioEngineBuffered <= 50 && (gLogCategory_APAudioEngineBuffered != -1 || _LogCategory_Initialize()))
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

    LogPrintF(&gLogCategory_APAudioEngineBuffered, "void bufferedAudioEngine_resumeInternalStage1(void *)", 33554482, "BAE [%{ptr}] %sFigAudioSession=%{ptr} audioSessionID=%@ audioSessionCategory=%@ audioSessionMode=%@ display=%@\n", v13, v14, 0, Value, cf, v124, v123);
  }

  if (APSSettingsGetIntWithDefault())
  {
    if (v7)
    {
      v15 = APSGetFBOPropertyInt64() != 0;
    }

    else
    {
      v15 = 1;
    }
  }

  else
  {
    v15 = 0;
  }

  *(DerivedStorage + 576) = v15;
  if (gLogCategory_APAudioEngineBuffered <= 50 && (gLogCategory_APAudioEngineBuffered != -1 || _LogCategory_Initialize()))
  {
    bufferedAudioEngine_resumeInternalStage1_cold_9();
  }

  if (*(DerivedStorage + 64))
  {
    if (v7)
    {
      v17 = APSGetFBOPropertyInt64();
      v16 = DerivedStorage + 577;
      *(DerivedStorage + 577) = v17 != 0;
      if (!v17)
      {
        goto LABEL_42;
      }
    }

    else
    {
      v16 = DerivedStorage + 577;
      *(DerivedStorage + 577) = 1;
    }

    Mutable = CFDictionaryCreateMutable(*v4, 0, MEMORY[0x277CBF138], &bufferedAudioEngine_protocolDriverDescriptorDictionaryCallbacks);
    *(DerivedStorage + 496) = Mutable;
    if (!Mutable)
    {
      bufferedAudioEngine_resumeInternalStage1_cold_10(&v126);
      v55 = 4294951816;
      goto LABEL_248;
    }
  }

  else
  {
    v16 = DerivedStorage + 577;
    *(DerivedStorage + 577) = 0;
  }

LABEL_42:
  if (gLogCategory_APAudioEngineBuffered <= 50 && (gLogCategory_APAudioEngineBuffered != -1 || _LogCategory_Initialize()))
  {
    bufferedAudioEngine_resumeInternalStage1_cold_11();
  }

  if (!v6)
  {
    bufferedAudioEngine_resumeInternalStage1_cold_44();
    goto LABEL_237;
  }

  v114 = v16;
  v19 = *(DerivedStorage + 552);
  *(DerivedStorage + 552) = Value;
  if (Value)
  {
    CFRetain(Value);
  }

  if (v19)
  {
    CFRelease(v19);
  }

  v20 = *(DerivedStorage + 560);
  v21 = cf;
  *(DerivedStorage + 560) = cf;
  if (v21)
  {
    CFRetain(v21);
  }

  if (v20)
  {
    CFRelease(v20);
  }

  v22 = *(DerivedStorage + 568);
  v23 = v124;
  *(DerivedStorage + 568) = v124;
  if (v23)
  {
    CFRetain(v23);
  }

  if (v22)
  {
    CFRelease(v22);
  }

  v24 = *(DerivedStorage + 1480);
  v25 = v123;
  *(DerivedStorage + 1480) = v123;
  if (v25)
  {
    CFRetain(v25);
  }

  if (v24)
  {
    CFRelease(v24);
  }

  v26 = CMBaseObjectGetDerivedStorage();
  *&v136 = 0;
  v27 = CFGetTypeID(v6);
  if (v27 == CFArrayGetTypeID())
  {
    v28 = APSAudioFormatDescriptionListCreateWithFigEndpointStreamAudioFormatDescriptionArray();
    if (v28)
    {
      v29 = v28;
      bufferedAudioEngine_resumeInternalStage1_cold_13(v28);
    }

    else if (APSAudioFormatDescriptionListSupports44kHz() || APSAudioFormatDescriptionListSupports48kHz())
    {
      if (!*(v26 + 528) && !*(v26 + 1008))
      {
        DefaultFormat = APSAudioFormatDescriptionListGetDefaultFormat();
        if (DefaultFormat)
        {
          DefaultFormat = CFRetain(DefaultFormat);
        }

        *(v26 + 1008) = DefaultFormat;
      }

      v31 = *(v26 + 1000);
      v32 = v136;
      *(v26 + 1000) = v136;
      if (v32)
      {
        CFRetain(v32);
      }

      if (v31)
      {
        CFRelease(v31);
      }

      v134.value = 0;
      if (gLogCategory_APAudioEngineBuffered < 51)
      {
        if (gLogCategory_APAudioEngineBuffered != -1 || _LogCategory_Initialize())
        {
          bufferedAudioEngine_resumeInternalStage1_cold_14(v26 + 1000);
        }

        v134.value = 0;
        if (gLogCategory_APAudioEngineBuffered <= 50 && (gLogCategory_APAudioEngineBuffered != -1 || _LogCategory_Initialize()))
        {
          bufferedAudioEngine_resumeInternalStage1_cold_15();
        }
      }

      v29 = 0;
    }

    else
    {
      v134.value = 0;
      if (gLogCategory_APAudioEngineBuffered <= 90 && (gLogCategory_APAudioEngineBuffered != -1 || _LogCategory_Initialize()))
      {
        bufferedAudioEngine_resumeInternalStage1_cold_16(&v136);
      }

      v29 = 4294951806;
    }
  }

  else
  {
    bufferedAudioEngine_resumeInternalStage1_cold_12();
    v29 = 4294951815;
  }

  if (v136)
  {
    CFRelease(v136);
  }

  v126 = v29;
  if (v29)
  {
    bufferedAudioEngine_resumeInternalStage1_cold_17(v29);
    goto LABEL_131;
  }

  if (!APSAudioFormatDescriptionListContainsFormat())
  {
    bufferedAudioEngine_resumeInternalStage1_cold_43();
LABEL_237:
    v55 = v136;
    if (!v136)
    {
      goto LABEL_132;
    }

    goto LABEL_248;
  }

  v116 = v5;
  v117 = DerivedStorage;
  v33 = *a1;
  v134.value = 0;
  *&v134.timescale = &v134;
  v134.epoch = 0x2000000000;
  v135 = 0;
  v118 = v33;
  CMBaseObjectGetDerivedStorage();
  AudioFormatIndex = 0;
  v133 = 0;
  CFPreferenceNumberWithDefault = FigGetCFPreferenceNumberWithDefault();
  v128 = 0;
  v129 = &v128;
  v130 = 0x2000000000;
  v131 = 256000;
  v35 = *v4;
  v36 = CFDictionaryCreateMutable(*v4, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (v36)
  {
    APSRemoteConfigGetShared();
    v37 = APSRemoteConfigCopyValue();
    v38 = APSAudioFormatDescriptionListCopyAudioFormatDescriptionsArray();
    *(*&v134.timescale + 24) = v38;
    if (v38)
    {
      bufferedAudioEngine_resumeInternalStage1_cold_18(v38);
    }

    else
    {
      v115 = a1;
      Count = CFArrayGetCount(v133);
      if (Count >= 1)
      {
        v40 = Count;
        v41 = 0;
        while (1)
        {
          ValueAtIndex = CFArrayGetValueAtIndex(v133, v41);
          AudioFormatIndex = APSAudioFormatDescriptionGetAudioFormatIndex();
          v43 = v129;
          *(v129 + 6) = 256000;
          if (CFPreferenceNumberWithDefault)
          {
            *(v43 + 6) = CFPreferenceNumberWithDefault;
          }

          else
          {
            ChannelCount = APSAudioFormatDescriptionGetChannelCount();
            v45 = 256000;
            if (ChannelCount != 1)
            {
              if (APSAudioFormatDescriptionGetChannelCount() == 2)
              {
                v45 = 256000;
              }

              else
              {
                v45 = 512000;
              }
            }

            v43 = v129;
            *(v129 + 6) = v45;
            if (v37)
            {
              *&v136 = MEMORY[0x277D85DD0];
              *(&v136 + 1) = 0x40000000;
              *&v137 = __bufferedAudioEngine_createTargetVBROptions_block_invoke;
              *(&v137 + 1) = &unk_27849D8F8;
              v138 = &v134;
              v139 = &v128;
              v140 = ValueAtIndex;
              CFDictionaryApplyBlock();
              *(*&v134.timescale + 24) = 0;
              v43 = v129;
            }
          }

          v46 = CFNumberCreate(v35, kCFNumberSInt32Type, v43 + 3);
          if (!v46)
          {
            bufferedAudioEngine_resumeInternalStage1_cold_20(&v134.timescale);
            goto LABEL_123;
          }

          v47 = v46;
          v48 = CFNumberCreate(v35, kCFNumberSInt64Type, &AudioFormatIndex);
          if (!v48)
          {
            break;
          }

          v49 = v48;
          v127 = 0;
          if (gLogCategory_APAudioEngineBuffered <= 30 && (gLogCategory_APAudioEngineBuffered != -1 || _LogCategory_Initialize()))
          {
            APSAudioFormatDescriptionCopyDebugString();
            if (gLogCategory_APAudioEngineBuffered <= 30 && (gLogCategory_APAudioEngineBuffered != -1 || _LogCategory_Initialize()))
            {
              if (v118)
              {
                v50 = (CMBaseObjectGetDerivedStorage() + 392);
              }

              else
              {
                v50 = "";
              }

              LogPrintF(&gLogCategory_APAudioEngineBuffered, "CFDictionaryRef bufferedAudioEngine_createTargetVBROptions(FigEndpointStreamAudioEngineRef)", 33554462, "BAE [%{ptr}] %sCreating vbrBitrate options. VBRBitrate=%@ Format=%@", v118, v50, v47, v127);
            }

            if (v127)
            {
              CFRelease(v127);
            }
          }

          CFDictionaryAddValue(v36, v49, v47);
          CFRelease(v47);
          CFRelease(v49);
          if (v40 == ++v41)
          {
            goto LABEL_123;
          }
        }

        bufferedAudioEngine_resumeInternalStage1_cold_19();
      }

LABEL_123:
      a1 = v115;
    }
  }

  else
  {
    bufferedAudioEngine_resumeInternalStage1_cold_21(&v134.timescale);
    v37 = 0;
  }

  v5 = v116;
  if (v133)
  {
    CFRelease(v133);
  }

  if (v37)
  {
    CFRelease(v37);
  }

  _Block_object_dispose(&v128, 8);
  _Block_object_dispose(&v134, 8);
  *(v117 + 584) = v36;
  v51 = *(v117 + 328);
  v52 = *a1;
  v53 = *(*(CMBaseObjectGetVTable() + 16) + 80);
  if (!v53)
  {
    v54 = 4294954514;
    v126 = -12782;
LABEL_130:
    bufferedAudioEngine_resumeInternalStage1_cold_42(v54);
    goto LABEL_131;
  }

  v54 = v53(v51, v52);
  v126 = v54;
  if (v54)
  {
    goto LABEL_130;
  }

  if (!*(v117 + 480))
  {
    CMBaseObject = APSNetworkClockGetCMBaseObject();
    v58 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (!v58)
    {
      v59 = 4294954514;
      v126 = -12782;
LABEL_146:
      bufferedAudioEngine_resumeInternalStage1_cold_41(v59);
      goto LABEL_131;
    }

    v59 = v58(CMBaseObject, *MEMORY[0x277CEA258], v35, v117 + 480);
    v126 = v59;
    if (v59)
    {
      goto LABEL_146;
    }

    CMClockGetTime(&v136, *(v117 + 480));
    *(v117 + 1560) = v136;
    *(v117 + 1576) = v137;
    HostTimeClock = CMClockGetHostTimeClock();
    CMClockGetTime(&v136, HostTimeClock);
    *(v117 + 1608) = v136;
    *(v117 + 1624) = v137;
    v61 = *(v117 + 328);
    v62 = *(*(CMBaseObjectGetVTable() + 16) + 8);
    if (v62)
    {
      v62(v61, v117 + 1536);
    }
  }

  if (*(v117 + 1072))
  {
    v63 = v114;
    if (v126)
    {
      bufferedAudioEngine_resumeInternalStage1_cold_22(v126);
      goto LABEL_131;
    }
  }

  else
  {
    v126 = APSWirelessCoexManagerCreateWithOptions();
    v63 = v114;
    if (v126)
    {
      if (gLogCategory_APAudioEngineBuffered <= 50 && (gLogCategory_APAudioEngineBuffered != -1 || _LogCategory_Initialize()))
      {
        bufferedAudioEngine_resumeInternalStage1_cold_23(a1);
      }

      v126 = 0;
    }
  }

  if (!*v63)
  {
    v64 = *a1;
    v65 = CMBaseObjectGetDerivedStorage();
    v134.value = 0;
    RandomBytes();
    v66 = CFDataCreate(v35, &v136, 32);
    v67 = APSCryptorChaCha20Poly1305Create();
    v70 = v67;
    if (v67)
    {
      bufferedAudioEngine_resumeInternalStage1_cold_24(v67);
      if (!v66)
      {
        goto LABEL_174;
      }
    }

    else
    {
      if (gLogCategory_APAudioEngineBuffered <= 40 && (gLogCategory_APAudioEngineBuffered != -1 || _LogCategory_Initialize()))
      {
        bufferedAudioEngine_resumeInternalStage1_cold_25(v64, v68, v69);
      }

      v71 = *(v65 + 600);
      *(v65 + 600) = v66;
      if (v66)
      {
        CFRetain(v66);
      }

      if (v71)
      {
        CFRelease(v71);
      }

      v72 = *(v65 + 608);
      v73 = v134.value;
      *(v65 + 608) = v134.value;
      if (v73)
      {
        CFRetain(v73);
        if (!v72)
        {
LABEL_172:
          if (!v66)
          {
            goto LABEL_174;
          }

          goto LABEL_173;
        }
      }

      else if (!v72)
      {
        goto LABEL_172;
      }

      CFRelease(v72);
      if (!v66)
      {
LABEL_174:
        if (v134.value)
        {
          CFRelease(v134.value);
        }

        v126 = v70;
        if (v70)
        {
          bufferedAudioEngine_resumeInternalStage1_cold_26(v70);
          goto LABEL_131;
        }

        goto LABEL_179;
      }
    }

LABEL_173:
    CFRelease(v66);
    goto LABEL_174;
  }

  Null = APSCryptorGetNull();
  *(v117 + 608) = CFRetain(Null);
LABEL_179:
  v75 = *(v117 + 576);
  v76 = CMBaseObjectGetDerivedStorage();
  if (*(v76 + 616))
  {
    goto LABEL_188;
  }

  v77 = v76;
  APSSettingsIsFeatureEnabled();
  *(v77 + 56) = FigGetCFPreferenceNumberWithDefault();
  if (gLogCategory_APAudioEngineBuffered <= 50 && (gLogCategory_APAudioEngineBuffered != -1 || _LogCategory_Initialize()))
  {
    bufferedAudioEngine_resumeInternalStage1_cold_27();
  }

  v78 = *(v77 + 56);
  DefaultAirPlayMallocZone = APSAllocatorGetDefaultAirPlayMallocZone();
  DefaultAirPlayMallocZoneCFAllocator = APSAllocatorGetDefaultAirPlayMallocZoneCFAllocator();
  v81 = v75 ? bufferedAudioEngine_messageRingSetMessageSequenceNumberCallbackAPAP : bufferedAudioEngine_messageRingSetMessageSequenceNumberCallbackRTP;
  v82 = APMessageRingBufferedCreate(v35, v78, DefaultAirPlayMallocZone, bufferedAudioEngine_createMessageBackingBBuf, DefaultAirPlayMallocZoneCFAllocator, v81, 0, (v77 + 616));
  if (!v82)
  {
LABEL_188:
    v126 = 0;
    v83 = *a1;
    v84 = CMBaseObjectGetDerivedStorage();
    v85 = APSRTCReportingAgentCreate();
    v86 = MEMORY[0x277CC0898];
    v87 = MEMORY[0x277CC08F0];
    if (v85)
    {
      if (gLogCategory_APAudioEngineBuffered <= 90 && (gLogCategory_APAudioEngineBuffered != -1 || _LogCategory_Initialize()))
      {
        bufferedAudioEngine_resumeInternalStage1_cold_29(v83);
      }
    }

    else
    {
      if (gLogCategory_APAudioEngineBuffered <= 40 && (gLogCategory_APAudioEngineBuffered != -1 || _LogCategory_Initialize()))
      {
        bufferedAudioEngine_resumeInternalStage1_cold_30();
      }

      if (APSAudioHoseMetricCollectorCreate() && gLogCategory_APAudioEngineBuffered <= 90 && (gLogCategory_APAudioEngineBuffered != -1 || _LogCategory_Initialize()))
      {
        bufferedAudioEngine_resumeInternalStage1_cold_31(v83);
      }

      *(v84 + 1528) = 0;
      *(v84 + 1320) = *v86;
      *(v84 + 1336) = *(v86 + 2);
      v119 = *v87;
      *(v84 + 1344) = *v87;
      v88 = *(v87 + 2);
      *(v84 + 1360) = v88;
      *(v84 + 1312) = 0;
      APSThreadSafeDictionaryCreate();
      if (*(v84 + 1368))
      {
        v89 = CFArrayCreateMutable(v35, 0, MEMORY[0x277CBF128]);
        *(v84 + 1376) = v89;
        if (v89)
        {
          *(v84 + 1384) = v119;
          *(v84 + 1400) = v88;
          *(v84 + 1408) = v119;
          *(v84 + 1424) = v88;
          v90 = CFDictionaryCreateMutable(v35, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
          *(v84 + 1432) = v90;
          if (v90)
          {
            v91 = CFDictionaryCreateMutable(v35, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
            *(v84 + 1440) = v91;
            if (v91)
            {
              v92 = CFDictionaryCreateMutable(v35, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
              *(v84 + 1448) = v92;
              if (v92)
              {
                *(v84 + 1464) = 0u;
                v93 = CFArrayCreateMutable(v35, 0, MEMORY[0x277CBF128]);
                *(v84 + 1496) = v93;
                if (v93)
                {
                  *(v84 + 1504) = 0u;
                  APSCopyClusterInfo();
                }
              }
            }
          }
        }
      }
    }

    v126 = 0;
    v94 = *a1;
    v95 = CMBaseObjectGetDerivedStorage();
    v136 = *v87;
    *&v137 = *(v87 + 2);
    bufferedAudioEngine_updateMaxAudioBurstIfNecessary(v94);
    v96 = FigGetCFPreferenceNumberWithDefault();
    CMTimeMake(&v134, v96, 1000);
    *(v95 + 28) = v134;
    bufferedAudioEngine_generateNewFirstRemoteMediaTime(v94, &v136);
    *(v95 + 992) = 1;
    *(v95 + 653) = 0;
    v97 = v136;
    *(v95 + 756) = v136;
    v98 = v137;
    *(v95 + 772) = v137;
    *(v95 + 780) = v97;
    *(v95 + 796) = v98;
    v99 = *v86;
    *(v95 + 804) = *v86;
    v100 = *(v86 + 2);
    *(v95 + 820) = v100;
    *(v95 + 724) = v100;
    *(v95 + 708) = v99;
    *(v95 + 732) = v99;
    *(v95 + 748) = v100;
    *(v95 + 896) = 0xBFF0000000000000;
    *(v95 + 840) = 0;
    *(v95 + 882) = 0;
    *(v95 + 832) = 0;
    *(v95 + 1064) = 0;
    bufferedAudioEngine_updatePlaybackState(v94, 3);
    bufferedAudioEngine_updateNextTranscodeBurstTimeAndUnRest();
    APSTimedInfoManagerCreate();
    CMNotificationCenterGetDefaultLocalCenter();
    FigNotificationCenterAddWeakListener();
    *(v95 + 1032) = 0u;
    v101 = *(v95 + 952);
    if (v101)
    {
      bufferedAudioEngine_callSetRateAndAnchorTimeClientCompletionCallback(v94, 0xFFFFBB52, MEMORY[0x277CC0898], MEMORY[0x277CC0898], 0, v101, *(v95 + 960), *(v95 + 888));
      *(v95 + 952) = 0;
      *(v95 + 960) = 0;
    }

    RandomBytes();
    if (gLogCategory_APAudioEngineBuffered <= 50 && (gLogCategory_APAudioEngineBuffered != -1 || _LogCategory_Initialize()))
    {
      bufferedAudioEngine_resumeInternalStage1_cold_32();
    }

    bufferedAudioEngine_readSoundCheck(v94);
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(DarwinNotifyCenter, v94, bufferedAudioEngine_soundCheckChanged, @"com.apple.mobileipod-prefsChanged", 0, 0);
    v126 = 0;
    v103 = CMBaseObjectGetDerivedStorage();
    v104 = FigCFWeakReferenceHolderCreateWithReferencedObject();
    if (v104)
    {
      v105 = v104;
      *&v136 = v104;
      *(&v136 + 1) = bufferedAudioEngine_weakAudioTimer;
      *&v137 = MEMORY[0x277CBE550];
      v106 = APSPriorityDispatchSourceCreate();
      if (v106)
      {
        v113 = v106;
        bufferedAudioEngine_resumeInternalStage1_cold_33(v106);
LABEL_257:
        CFRelease(v105);
        goto LABEL_260;
      }

      v107 = APSPriorityDispatchSourceSetTimer();
      if (v107)
      {
        v113 = v107;
        bufferedAudioEngine_resumeInternalStage1_cold_34(v107);
      }

      else
      {
        if (gLogCategory_APAudioEngineBuffered <= 40 && (gLogCategory_APAudioEngineBuffered != -1 || _LogCategory_Initialize()))
        {
          bufferedAudioEngine_resumeInternalStage1_cold_35();
        }

        v108 = APSPriorityDispatchSourceResume();
        if (v108)
        {
          v113 = v108;
          bufferedAudioEngine_resumeInternalStage1_cold_36(v108);
        }

        else
        {
          v109 = FigCFWeakReferenceHolderCreateWithReferencedObject();
          if (v109)
          {
            v105 = v109;
            v134.value = v109;
            *&v134.timescale = bufferedAudioEngine_weakPriorityTimer;
            v134.epoch = MEMORY[0x277CBE550];
            v110 = APSPriorityDispatchSourceCreate();
            if (!v110)
            {
              v111 = APSPriorityDispatchSourceSetTimer();
              if (v111)
              {
                v113 = v111;
                bufferedAudioEngine_resumeInternalStage1_cold_38(v111);
              }

              else
              {
                v112 = APSPriorityDispatchSourceResume();
                if (!v112)
                {
                  *(v103 + 544) = 1;
                  v126 = 0;
                  bufferedAudioEngine_markSessionStartedForRTC(*a1);
                  APSOasisCPUFloorRaiserRetainAssertion();
                  *(v117 + 528) = 1;
                  goto LABEL_131;
                }

                v113 = v112;
                bufferedAudioEngine_resumeInternalStage1_cold_39(v112);
              }

              goto LABEL_260;
            }

            v113 = v110;
            bufferedAudioEngine_resumeInternalStage1_cold_37(v110);
            goto LABEL_257;
          }

          v113 = -72090;
          bufferedAudioEngine_resumeInternalStage1_cold_40();
        }
      }
    }

    else
    {
      v113 = -72090;
      APSLogErrorAt();
    }

LABEL_260:
    v126 = v113;
    APSLogErrorAt();
    goto LABEL_131;
  }

  bufferedAudioEngine_resumeInternalStage1_cold_28(v82, &v126);
LABEL_131:
  v55 = v126;
  if (!v126)
  {
LABEL_132:
    v56 = 0;
    goto LABEL_133;
  }

LABEL_248:
  bufferedAudioEngine_sendSessionFailureEvent(*a1, @"Session failed to resume", v55);
  bufferedAudioEngine_tearDownResumedStateAndStructuresInternal(*a1, 0);
  v56 = v126;
LABEL_133:
  *(a1 + 8) = v56;
  APSPriorityDispatcherAsyncF();
  if (cf)
  {
    CFRelease(cf);
  }

  if (v124)
  {
    CFRelease(v124);
  }

  if (v123)
  {
    CFRelease(v123);
  }

  if (v5)
  {
    CFRelease(v5);
  }
}

void bufferedAudioEngine_resumeInternalStageEnd(CFTypeRef *a1)
{
  CMBaseObjectGetDerivedStorage();
  v2 = a1[2];
  if (v2)
  {
    (v2)(*a1, *(a1 + 8), a1[3]);
  }

  APSDispatchSectionLeave();
  v3 = LogCategoryCopyOSLogHandle();
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = MEMORY[0x277D86220];
  }

  v6 = CUObfuscatedPtr();
  if (v6)
  {
    v7 = v6;
    if (os_signpost_enabled(v5))
    {
      *v9 = 0;
      _os_signpost_emit_with_name_impl(&dword_221FFA000, v5, OS_SIGNPOST_INTERVAL_END, v7, "AIRPLAY_SIGNPOST_AUDIOENGINE_RESUME_INTERVAL", &unk_2222A918B, v9, 2u);
    }
  }

  if (v4)
  {
    os_release(v4);
  }

  kdebug_trace();
  if (gLogCategory_APAudioEngineBuffered <= 50 && (gLogCategory_APAudioEngineBuffered != -1 || _LogCategory_Initialize()))
  {
    bufferedAudioEngine_resumeInternalStageEnd_cold_1(a1);
  }

  v8 = a1[1];
  if (v8)
  {
    CFRelease(v8);
  }

  if (*a1)
  {
    CFRelease(*a1);
  }

  free(a1);
}

_WORD *bufferedAudioEngine_protocolDriverDescriptorDictionaryRetain(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = malloc_type_calloc(1uLL, 0x10uLL, 0x1020040FFEA222EuLL);
    v4 = *a2;
    if (*a2)
    {
      v4 = CFRetain(v4);
    }

    *v3 = v4;
    v3[4] = *(a2 + 8);
  }

  else
  {
    bufferedAudioEngine_protocolDriverDescriptorDictionaryRetain_cold_1();
    return 0;
  }

  return v3;
}

void bufferedAudioEngine_protocolDriverDescriptorDictionaryRelease(int a1, CFTypeRef *a2)
{
  if (a2)
  {
    if (*a2)
    {
      CFRelease(*a2);
    }

    free(a2);
  }

  else
  {
    bufferedAudioEngine_protocolDriverDescriptorDictionaryRelease_cold_1();
  }
}

uint64_t __bufferedAudioEngine_createTargetVBROptions_block_invoke(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = CFGetInt64Ranged();
  v5 = *(*(a1[4] + 8) + 24);
  if (v5)
  {
    return __bufferedAudioEngine_createTargetVBROptions_block_invoke_cold_1(v5);
  }

  if (APSAudioFormatDescriptionGetChannelCount() != v4)
  {
    return __bufferedAudioEngine_createTargetVBROptions_block_invoke_cold_2();
  }

  *(*(a1[5] + 8) + 24) = CFGetInt64Ranged();
  result = *(*(a1[4] + 8) + 24);
  if (result)
  {
    return __bufferedAudioEngine_createTargetVBROptions_block_invoke_cold_3(result);
  }

  return result;
}

uint64_t bufferedAudioEngine_createMessageBackingBBuf(CFAllocatorRef blockAllocator, size_t blockLength, CMBlockBufferRef *a3)
{
  blockBufferOut = 0;
  v4 = CMBlockBufferCreateWithMemoryBlock(*MEMORY[0x277CBECE8], 0, blockLength, blockAllocator, 0, 0, blockLength, 1u, &blockBufferOut);
  v5 = v4;
  if (v4)
  {
    bufferedAudioEngine_createMessageBackingBBuf_cold_1(v4);
  }

  else
  {
    *a3 = blockBufferOut;
  }

  return v5;
}

CMTime *bufferedAudioEngine_generateNewFirstRemoteMediaTime@<X0>(uint64_t a1@<X0>, CMTime *a2@<X8>)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  *a2 = **&MEMORY[0x277CC0898];
  if (bufferedAudioEngine_generateNewFirstRemoteMediaTime_onceToken != -1)
  {
    bufferedAudioEngine_generateNewFirstRemoteMediaTime_cold_1();
  }

  SampleRateFromTransportAudioFormat = bufferedAudioEngine_getSampleRateFromTransportAudioFormat(a1);
  if (bufferedAudioEngine_generateNewFirstRemoteMediaTime_prefsDeltaFromRolloverSecs)
  {
    if (bufferedAudioEngine_generateNewFirstRemoteMediaTime_prefsUseRandomizedOffset)
    {
      RandomBytes();
      v6 = vcvtd_n_f64_s32(bufferedAudioEngine_generateNewFirstRemoteMediaTime_prefsDeltaFromRolloverSecs, 1uLL);
      v7 = (0u % bufferedAudioEngine_generateNewFirstRemoteMediaTime_prefsDeltaFromRolloverSecs) + v6;
    }

    else
    {
      v7 = bufferedAudioEngine_generateNewFirstRemoteMediaTime_prefsDeltaFromRolloverSecs;
    }

    result = CMTimeMake(a2, 0xFFFFFFFFLL - (v7 * SampleRateFromTransportAudioFormat), SampleRateFromTransportAudioFormat);
    if (gLogCategory_APAudioEngineBuffered <= 50)
    {
      if (gLogCategory_APAudioEngineBuffered != -1 || (result = _LogCategory_Initialize(), result))
      {
        result = bufferedAudioEngine_generateNewFirstRemoteMediaTime_cold_2(a1, v7);
      }
    }
  }

  else
  {
    RandomBytes();
    result = CMTimeMake(a2, 0, SampleRateFromTransportAudioFormat);
  }

  if (*(DerivedStorage + 1800))
  {
    if (gLogCategory_APAudioEngineBuffered <= 50)
    {
      if (gLogCategory_APAudioEngineBuffered != -1 || (result = _LogCategory_Initialize(), result))
      {
        result = bufferedAudioEngine_generateNewFirstRemoteMediaTime_cold_3(a1);
      }
    }

    v9 = MEMORY[0x277CC08F0];
    *&a2->value = *MEMORY[0x277CC08F0];
    a2->epoch = *(v9 + 16);
  }

  return result;
}

uint64_t bufferedAudioEngine_readSoundCheck(uint64_t a1)
{
  CFPreferencesSynchronize(@"com.apple.mobileipod", *MEMORY[0x277CBF040], *MEMORY[0x277CBF010]);
  result = FigGetCFPreferenceBooleanWithDefault();
  gSoundCheckEnabled = result;
  if (gLogCategory_APAudioEngineBuffered <= 50)
  {
    if (gLogCategory_APAudioEngineBuffered != -1)
    {
      return bufferedAudioEngine_readSoundCheck_cold_1(a1);
    }

    result = _LogCategory_Initialize();
    if (result)
    {
      return bufferedAudioEngine_readSoundCheck_cold_1(a1);
    }
  }

  return result;
}

uint64_t bufferedAudioEngine_soundCheckChanged(uint64_t a1, const void *a2)
{
  CMBaseObjectGetDerivedStorage();
  if (a2)
  {
    CFRetain(a2);
  }

  return APSPriorityDispatcherAsync();
}

uint64_t __bufferedAudioEngine_generateNewFirstRemoteMediaTime_block_invoke()
{
  bufferedAudioEngine_generateNewFirstRemoteMediaTime_prefsDeltaFromRolloverSecs = FigGetCFPreferenceNumberWithDefault();
  result = FigGetCFPreferenceNumberWithDefault();
  bufferedAudioEngine_generateNewFirstRemoteMediaTime_prefsUseRandomizedOffset = result;
  return result;
}

void bufferedAudioEngine_weakAudioTimer(uint64_t a1)
{
  v1 = FigCFWeakReferenceHolderCopyReferencedObject();
  if (v1)
  {
    v2 = v1;
    bufferedAudioEngine_audioTimer();

    CFRelease(v2);
  }
}

void bufferedAudioEngine_weakPriorityTimer(uint64_t a1)
{
  v1 = FigCFWeakReferenceHolderCopyReferencedObject();
  if (v1)
  {
    v2 = v1;
    bufferedAudioEngine_updateDataProcessingTargetQueueInternal(v1);

    CFRelease(v2);
  }
}

__n128 __bufferedAudioEngine_audioTimer_block_invoke(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v27 = 0;
  v26 = **&MEMORY[0x277CC0898];
  v25 = v26;
  MessageAtIndex = APMessageRingBufferedGetMessageAtIndex();
  if (!MessageAtIndex)
  {
LABEL_8:
    if (*MEMORY[0x277CEA028] != a2)
    {
      return result;
    }

    v13 = *(a1 + 32);
    time1 = *(v13 + 1164);
    v24 = *(v13 + 504);
    if (!CMTimeCompare(&time1, &v24))
    {
      return result;
    }

    v14 = *(a1 + 32);
    if (*(v14 + 516))
    {
      v16 = *(v14 + 1176);
      v17 = *a3;
      v18 = *(CMBaseObjectGetVTable() + 16);
      if ((v16 & 1) == 0)
      {
        if (v18)
        {
          v19 = *(v18 + 80);
          if (v19)
          {
            v19(v17);
          }
        }

        goto LABEL_27;
      }

      if (v18)
      {
        v20 = *(v18 + 80);
        if (v20)
        {
          v20(v17);
        }
      }

      v15 = *a3;
      v14 = *(a1 + 32);
    }

    else
    {
      v15 = *a3;
    }

    v24 = *(v14 + 1164);
    v21 = *(CMBaseObjectGetVTable() + 16);
    if (v21)
    {
      v22 = *(v21 + 72);
      if (v22)
      {
        time1 = v24;
        v22(v15, &time1);
      }
    }

LABEL_27:
    v23 = *(a1 + 32);
    result = *(v23 + 1164);
    *(v23 + 504) = result;
    *(v23 + 520) = *(v23 + 1180);
    return result;
  }

  v8 = MessageAtIndex;
  while (1)
  {
    v9 = *a3;
    v24 = v25;
    v10 = *(CMBaseObjectGetVTable() + 16);
    if (!v10)
    {
      break;
    }

    v11 = *(v10 + 56);
    if (!v11)
    {
      break;
    }

    time1 = v24;
    v12 = v11(v9, v8, &time1);
    if (v12 == -72472)
    {
      goto LABEL_8;
    }

    if (v12)
    {
      break;
    }

    ++*(a3 + 4);
    v8 = APMessageRingBufferedGetMessageAtIndex();
    if (!v8)
    {
      goto LABEL_8;
    }
  }

  APSLogErrorAt();
  if (gLogCategory_APAudioEngineBuffered <= 90 && (gLogCategory_APAudioEngineBuffered != -1 || _LogCategory_Initialize()))
  {
    __bufferedAudioEngine_audioTimer_block_invoke_cold_1(a1);
  }

  return result;
}

uint64_t bufferedAudioEngine_audioTimerPause(uint64_t a1)
{
  result = CMBaseObjectGetDerivedStorage();
  if (*(result + 544))
  {
    *(result + 544) = 0;
    v2 = *(result + 536);

    return MEMORY[0x28213C6E0](v2);
  }

  return result;
}

uint64_t __bufferedAudioEngine_pruneMessageRingToCurrentRemoteMediaTimeWithForwardMargin_block_invoke()
{
  result = FigGetCFPreferenceNumberWithDefault();
  bufferedAudioEngine_pruneMessageRingToCurrentRemoteMediaTimeWithForwardMargin_defaultForwardPruningMarginMs = result;
  return result;
}

uint64_t __bufferedAudioEngine_pruneMessageRingToCurrentRemoteMediaTimeWithForwardMargin_block_invoke_2(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (*a3)
  {
    v3 = *(result + 32);
    if (((*(a3 + 8) - v3) & 0x8000) != 0)
    {
      *(a3 + 8) = v3;
    }
  }

  return result;
}

uint64_t bufferedAudioEngine_shouldSkipTranscodeForStartup(uint64_t a1)
{
  if ((*(CMBaseObjectGetDerivedStorage() + 884) - 5) > 2)
  {
    return 0;
  }

  return bufferedAudioEngine_engineBufferedToStartWaterMark(a1);
}

uint64_t bufferedAudioEngine_enqueueMessageForSending(uint64_t a1, OpaqueCMBlockBuffer *a2, __int128 *a3, uint64_t a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v9 = *(DerivedStorage + 616);
  if (v9)
  {
    v15 = *a3;
    v16 = *(a3 + 2);
    v13 = *a4;
    v14 = *(a4 + 16);
    v10 = APMessageRingBufferedEnqueueMessageForSending(v9, a2, &v15, &v13);
    if (v10)
    {
      v11 = v10;
      bufferedAudioEngine_enqueueMessageForSending_cold_1(v10);
    }

    else if (*(DerivedStorage + 653) || !bufferedAudioEngine_engineBufferedToStartWaterMark(a1))
    {
      return 0;
    }

    else
    {
      CMSetAttachment(a2, *MEMORY[0x277CEA350], *MEMORY[0x277CBED28], 1u);
      v11 = 0;
      *(DerivedStorage + 653) = 1;
    }
  }

  else
  {
    bufferedAudioEngine_enqueueMessageForSending_cold_2();
    return 4294895205;
  }

  return v11;
}

uint64_t bufferedAudioEngine_createAndEnqueueEmptyMessageForSending(uint64_t a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  blockBufferOut = 0;
  v18 = 0;
  v17 = **&MEMORY[0x277CC0898];
  if (*(DerivedStorage + 616))
  {
    v5 = DerivedStorage;
    v6 = CMBlockBufferCreateEmpty(*MEMORY[0x277CBECE8], 0, 0, &blockBufferOut);
    if (v6)
    {
      value_low = v6;
      bufferedAudioEngine_createAndEnqueueEmptyMessageForSending_cold_1(v6);
    }

    else
    {
      v7 = *(v5 + 616);
      EncodeMessageBackingSize = bufferedAudioEngine_getEncodeMessageBackingSize(a1, 0, 0, 0);
      NextFreeBacking = APMessageRingBufferedGetNextFreeBacking(v7, EncodeMessageBackingSize);
      if (NextFreeBacking)
      {
        v10 = NextFreeBacking;
        v17 = *(v5 + 756);
        APSAudioFormatDescriptionGetSampleRate();
        v16 = v17;
        CMTimeConvertScale(&v17, &v16, v11, kCMTimeRoundingMethod_RoundHalfAwayFromZero);
        v16 = v17;
        v12 = bufferedAudioEngine_encodeMessage(a1, v10, &v16.value, a2, blockBufferOut, &v18);
        if (v12)
        {
          value_low = v12;
          bufferedAudioEngine_createAndEnqueueEmptyMessageForSending_cold_2(v12);
        }

        else
        {
          v16 = v17;
          v13 = bufferedAudioEngine_enqueueMessageForSending(a1, v18, &v16.value, MEMORY[0x277CC08F0]);
          value_low = v13;
          if (v13)
          {
            bufferedAudioEngine_createAndEnqueueEmptyMessageForSending_cold_3(v13);
          }
        }
      }

      else
      {
        bufferedAudioEngine_createAndEnqueueEmptyMessageForSending_cold_4();
        value_low = 4294895201;
      }
    }
  }

  else
  {
    bufferedAudioEngine_createAndEnqueueEmptyMessageForSending_cold_5(&v16);
    value_low = LODWORD(v16.value);
  }

  if (blockBufferOut)
  {
    CFRelease(blockBufferOut);
  }

  if (v18)
  {
    CFRelease(v18);
  }

  return value_low;
}

uint64_t bufferedAudioEngine_enqueueMessagesFromBufferQueue(const void *a1, char a2, _DWORD *a3)
{
  v188 = *MEMORY[0x277D85DE8];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v164 = 0;
  v165 = 0;
  v163 = 0;
  v162 = 0u;
  v160 = 0u;
  memset(v161, 0, sizeof(v161));
  v159 = 0u;
  cf = 0;
  v7 = MEMORY[0x277CC0898];
  v178 = *MEMORY[0x277CC0898];
  v179 = *(MEMORY[0x277CC0898] + 8);
  v8 = *(MEMORY[0x277CC0898] + 16);
  v156 = 0u;
  v157 = 0u;
  v155 = 0u;
  memset(v154, 0, sizeof(v154));
  v152 = 0;
  sizeOut = 0;
  v176 = v178;
  v177 = v179;
  v174 = v178;
  v175 = v179;
  v172 = v178;
  v173 = v179;
  v170 = v178;
  v171 = v179;
  v9 = *MEMORY[0x277CC0898];
  *&v151.value = *MEMORY[0x277CC0898];
  v151.epoch = v8;
  v168 = v178;
  v169 = v179;
  if (!*(DerivedStorage + 616))
  {
    bufferedAudioEngine_enqueueMessagesFromBufferQueue_cold_18(time);
    v25 = 0;
    v26 = 0;
    v14 = 0;
    v12 = 0;
    v28 = *time;
    goto LABEL_78;
  }

  v10 = DerivedStorage;
  v148 = v9;
  v11 = bufferedAudioEngine_processAndRetainSBufFromBufferQueue(a1, 0);
  if (!v11)
  {
    ++*(v10 + 980);
    if (gLogCategory_APAudioEngineBuffered <= 30 && (gLogCategory_APAudioEngineBuffered != -1 || _LogCategory_Initialize()))
    {
      bufferedAudioEngine_enqueueMessagesFromBufferQueue_cold_17();
    }

    v25 = 0;
    v26 = 0;
    v14 = 0;
    v12 = 0;
    goto LABEL_77;
  }

  v12 = v11;
  v13 = *(v7 + 12);
  if ((*(v10 + 1268) & 1) == 0)
  {
    v146 = a2;
    v143 = *(v7 + 12);
LABEL_5:
    v14 = 0;
    goto LABEL_6;
  }

  v27 = CMBaseObjectGetDerivedStorage();
  *time = v148;
  *&time[16] = v8;
  if (CMGetAttachment(v12, *MEMORY[0x277CD62A8], 0))
  {
    *(v27 + 1256) = v148;
    *(v27 + 1272) = v8;
    *(v27 + 708) = v148;
    *(v27 + 724) = v8;
    if (gLogCategory_APAudioEngineBuffered <= 50 && (gLogCategory_APAudioEngineBuffered != -1 || _LogCategory_Initialize()))
    {
      bufferedAudioEngine_enqueueMessagesFromBufferQueue_cold_1();
    }

LABEL_28:
    v25 = 0;
    v26 = 0;
    v14 = 0;
    v28 = 0;
    *&v161[0] = 0;
    goto LABEL_78;
  }

  v146 = a2;
  CMSampleBufferGetOutputPresentationTimeStamp(&lhs, v12);
  value = lhs.value;
  flags = lhs.flags;
  timescale = lhs.timescale;
  if (lhs.flags)
  {
    epoch = lhs.epoch;
    lhs = *(v27 + 780);
    rhs.value = value;
    rhs.timescale = timescale;
    rhs.flags = flags;
    rhs.epoch = epoch;
    CMTimeAdd(time, &lhs, &rhs);
    if (*(v27 + 744))
    {
      rhs = *time;
      __str = *(v27 + 732);
      CMTimeSubtract(&lhs, &rhs, &__str);
      *time = lhs;
    }

    v55 = (v27 + 1256);
    lhs.value = value;
    lhs.timescale = timescale;
    lhs.flags = flags;
    lhs.epoch = epoch;
    rhs = *(v27 + 1256);
    if ((CMTimeCompare(&lhs, &rhs) & 0x80000000) == 0)
    {
      if (gLogCategory_APAudioEngineBuffered <= 30 && (gLogCategory_APAudioEngineBuffered != -1 || _LogCategory_Initialize()))
      {
        if (a1)
        {
          v56 = (CMBaseObjectGetDerivedStorage() + 392);
        }

        else
        {
          v56 = "";
        }

        v70 = *(v27 + 530);
        lhs.value = value;
        lhs.timescale = timescale;
        lhs.flags = flags;
        lhs.epoch = epoch;
        Seconds = CMTimeGetSeconds(&lhs);
        lhs = *time;
        v72 = CMTimeGetSeconds(&lhs);
        lhs = *v55;
        v73 = CMTimeGetSeconds(&lhs);
        LogPrintF(&gLogCategory_APAudioEngineBuffered, "Boolean bufferedAudioEngine_shouldDiscardSampleBuffer(FigEndpointStreamAudioEngineRef, CMSampleBufferRef)", 33554462, "BAE [%{ptr}] %s[0x%04X] Discarded invalid sample buffer [%p] OPTS: %1.3f (media time: %1.3f), flush sample range start: %1.3f\n", a1, v56, v70, v12, *&Seconds, *&v72, *&v73);
      }

      goto LABEL_28;
    }

    if (gLogCategory_APAudioEngineBuffered <= 30 && (gLogCategory_APAudioEngineBuffered != -1 || _LogCategory_Initialize()))
    {
      v144 = v13;
      if (a1)
      {
        v58 = (CMBaseObjectGetDerivedStorage() + 392);
      }

      else
      {
        v58 = "";
      }

      v74 = *(v27 + 530);
      lhs.value = value;
      lhs.timescale = timescale;
      lhs.flags = flags;
      lhs.epoch = epoch;
      v75 = CMTimeGetSeconds(&lhs);
      lhs = *time;
      v76 = CMTimeGetSeconds(&lhs);
      lhs = *v55;
      v77 = CMTimeGetSeconds(&lhs);
      LogPrintF(&gLogCategory_APAudioEngineBuffered, "Boolean bufferedAudioEngine_shouldDiscardSampleBuffer(FigEndpointStreamAudioEngineRef, CMSampleBufferRef)", 33554462, "BAE [%{ptr}] %s[0x%04X] Process valid sample buffer [%p] OPTS: %1.3f (media time: %1.3f), flush sample range start: %1.3f\n", a1, v58, v74, v12, *&v75, *&v76, *&v77);
      v13 = v144;
    }
  }

  v143 = v13;
  CMSampleBufferGetOutputPresentationTimeStamp(time, v12);
  v174 = *time;
  v30 = *&time[12];
  v175 = *&time[8];
  v31 = *&time[16];
  CMSampleBufferGetOutputDuration(time, v12);
  v170 = *time;
  v32 = *&time[12];
  v171 = *&time[8];
  v33 = *&time[16];
  if (v30)
  {
    lhs.value = v174;
    lhs.timescale = v175;
    lhs.flags = v30;
    lhs.epoch = v31;
    rhs.value = v170;
    rhs.timescale = v171;
    rhs.flags = *&time[12];
    rhs.epoch = *&time[16];
    CMTimeAdd(time, &lhs, &rhs);
    v172 = *time;
    v34 = *&time[12];
    v173 = *&time[8];
    v138 = *&time[16];
  }

  else
  {
    v172 = v174;
    v173 = v175;
    v34 = v30;
    v138 = v31;
  }

  if (gLogCategory_APAudioEngineBuffered <= 50 && (gLogCategory_APAudioEngineBuffered != -1 || _LogCategory_Initialize()))
  {
    if (a1)
    {
      v57 = (CMBaseObjectGetDerivedStorage() + 392);
    }

    else
    {
      v57 = "";
    }

    allocatora = v57;
    v132 = *(v10 + 530);
    *time = v174;
    *&time[8] = v175;
    *&time[12] = v30;
    *&time[16] = v31;
    v59 = CMTimeGetSeconds(time);
    *time = v172;
    *&time[8] = v173;
    *&time[12] = v34;
    *&time[16] = v138;
    v60 = CMTimeGetSeconds(time);
    *time = v170;
    *&time[8] = v171;
    *&time[12] = v32;
    *&time[16] = v33;
    v61 = CMTimeGetSeconds(time);
    LogPrintF(&gLogCategory_APAudioEngineBuffered, "OSStatus bufferedAudioEngine_enqueueMessagesFromBufferQueue(FigEndpointStreamAudioEngineRef, Boolean, int *)", 33554482, "BAE [%{ptr}] %s[0x%04X] flushSampleRangeStart but should not discard opts=%1.3f endopts=%1.3f oduration=%1.3f", a1, allocatora, v132, *&v59, *&v60, *&v61);
  }

  v14 = 0;
  if (v30 & 1) != 0 && (v34)
  {
    v62 = (v10 + 1256);
    *time = v174;
    *&time[8] = v175;
    *&time[12] = v30;
    *&time[16] = v31;
    lhs = *(v10 + 1256);
    if ((CMTimeCompare(time, &lhs) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

    *time = *v62;
    *&time[16] = *(v10 + 1272);
    lhs.value = v172;
    lhs.timescale = v173;
    lhs.flags = v34;
    lhs.epoch = v138;
    if ((CMTimeCompare(time, &lhs) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

    *time = v172;
    *&time[8] = v173;
    *&time[12] = v34;
    *&time[16] = v138;
    *&lhs.value = *v62;
    lhs.epoch = *(v10 + 1272);
    CMTimeSubtract(&v151, time, &lhs);
    v63 = *MEMORY[0x277CC0758];
    v64 = CMGetAttachment(v12, *MEMORY[0x277CC0758], 0);
    CMTimeMakeFromDictionary(time, v64);
    v168 = *time;
    v169 = *&time[8];
    if (time[12])
    {
      APSAudioFormatDescriptionGetSampleRate();
      lhs.value = v178;
      lhs.timescale = v179;
      lhs.flags = v143;
      lhs.epoch = v8;
      CMTimeConvertScale(time, &lhs, v65, kCMTimeRoundingMethod_RoundHalfAwayFromZero);
      v169 = *&time[8];
      v168 = *time;
      lhs = *time;
      rhs = v151;
      CMTimeAdd(time, &lhs, &rhs);
      v151 = *time;
    }

    v66 = *MEMORY[0x277CBECE8];
    *time = v151;
    v14 = CMTimeCopyAsDictionary(time, v66);
    CMSetAttachment(v12, v63, v14, 1u);
    if (gLogCategory_APAudioEngineBuffered <= 50 && (gLogCategory_APAudioEngineBuffered != -1 || _LogCategory_Initialize()))
    {
      bufferedAudioEngine_enqueueMessagesFromBufferQueue_cold_2();
    }
  }

LABEL_6:
  v15 = CMGetAttachment(v12, *MEMORY[0x277CC1AB0], 0);
  v16 = *MEMORY[0x277CBED28];
  if (v15 == *MEMORY[0x277CBED28])
  {
    lhs = *(v10 + 756);
    rhs = *(v10 + 780);
    CMTimeSubtract(time, &lhs, &rhs);
    *(v10 + 1080) = *time;
    *(v10 + 1096) = *&time[16];
    if (gLogCategory_APAudioEngineBuffered <= 50 && (gLogCategory_APAudioEngineBuffered != -1 || _LogCategory_Initialize()))
    {
      bufferedAudioEngine_enqueueMessagesFromBufferQueue_cold_3();
    }
  }

  v17 = CMBaseObjectGetDerivedStorage();
  if (*(v17 + 616))
  {
    v18 = v17;
    v19 = *MEMORY[0x277CD62C0];
    v20 = CMGetAttachment(v12, *MEMORY[0x277CD62C0], 0);
    if (v20)
    {
      CFArrayAppendValue(*(v18 + 1248), v20);
      CMRemoveAttachment(v12, v19);
    }
  }

  else
  {
    bufferedAudioEngine_enqueueMessagesFromBufferQueue_cold_4();
  }

  v21 = CMGetAttachment(v12, *MEMORY[0x277CC1AA8], 0);
  if (v21)
  {
    v22 = v21;
    if (gLogCategory_APAudioEngineBuffered <= 50 && (gLogCategory_APAudioEngineBuffered != -1 || _LogCategory_Initialize()))
    {
      bufferedAudioEngine_enqueueMessagesFromBufferQueue_cold_5();
    }

    v23 = CMBaseObjectGetDerivedStorage();
    if (FigCFEqual())
    {
      goto LABEL_35;
    }

    if (CFDictionaryContainsKey(v22, *MEMORY[0x277CEFE08]))
    {
      v24 = 1464;
    }

    else
    {
      if (!CFDictionaryContainsKey(v22, *MEMORY[0x277CEFE18]))
      {
        goto LABEL_35;
      }

      v24 = 1472;
    }

    ++*(v23 + v24);
LABEL_35:
    v35 = *(v10 + 1232);
    *(v10 + 1232) = v22;
    CFRetain(v22);
    if (v35)
    {
      CFRelease(v35);
    }
  }

  v36 = CMGetAttachment(v12, *MEMORY[0x277CD62B0], 0);
  v37 = v36;
  if (v36)
  {
    v38 = *(v10 + 1024);
    *(v10 + 1024) = v36;
    CFRetain(v36);
    if (v38)
    {
      CFRelease(v38);
    }
  }

  v39 = CMBaseObjectGetDerivedStorage();
  value = 0;
  v186 = 0u;
  v187 = 0u;
  memset(time, 0, sizeof(time));
  lhs.value = 0;
  *&lhs.timescale = 0;
  *&rhs.timescale = 0;
  rhs.value = 0;
  *&__str.timescale = 0;
  __str.value = 0;
  if (v37)
  {
    v40 = v39;
    if (CMAudioFormatDescriptionGetRichestDecodableFormatAndChannelLayout())
    {
      value = CMAudioFormatDescriptionGetStreamBasicDescription(v37);
      if (!value)
      {
        goto LABEL_61;
      }
    }

    else if (!value)
    {
      goto LABEL_61;
    }

    FourCharCodeToCString();
    __strlcat_chk();
    snprintf(&lhs, 0x10uLL, "%llu", *value);
    __strlcat_chk();
    __strlcat_chk();
    v41 = value;
    v42 = *(value + 8);
    if (v42 > 1902928226)
    {
      if (v42 == 2053923171)
      {
        goto LABEL_51;
      }

      v43 = 1902928227;
    }

    else
    {
      if (v42 == 1634492771)
      {
        goto LABEL_51;
      }

      v43 = 1668047203;
    }

    if (v42 != v43)
    {
LABEL_55:
      snprintf(&rhs, 0x10uLL, "%u", *(v41 + 28));
      __strlcat_chk();
      v46 = CFStringCreateWithCString(*MEMORY[0x277CBECE8], time, 0x8000100u);
      v47 = v46;
      v48 = *(v40 + 1456);
      *(v40 + 1456) = v46;
      if (v46)
      {
        CFRetain(v46);
      }

      if (v48)
      {
        CFRelease(v48);
      }

      if (v47)
      {
        CFRelease(v47);
      }

      goto LABEL_61;
    }

LABEL_51:
    v44 = *(value + 12) - 1;
    if (v44 > 3)
    {
      v45 = 0;
    }

    else
    {
      v45 = dword_222298530[v44];
    }

    snprintf(&__str, 0x10uLL, "%u", v45);
    __strlcat_chk();
    __strlcat_chk();
    v41 = value;
    goto LABEL_55;
  }

LABEL_61:
  if (CMGetAttachment(v12, *MEMORY[0x277CC0750], 0))
  {
    *&v155 = FigCFNumberGetUInt64();
    BYTE8(v155) = 1;
    bufferedAudioEngine_createAndEnqueueEmptyMessageForSending(a1, v154);
    v25 = 0;
    v26 = 0;
    v28 = 0;
    *&v161[0] = 1;
    goto LABEL_78;
  }

  if (!CMSampleBufferGetNumSamples(v12))
  {
    goto LABEL_76;
  }

  FormatDescription = CMSampleBufferGetFormatDescription(v12);
  v50 = *MEMORY[0x277CBECE8];
  v51 = APSAudioFormatDescriptionCreateWithCMFormatDescription();
  if (v51)
  {
    v28 = v51;
    bufferedAudioEngine_enqueueMessagesFromBufferQueue_cold_6(v51);
LABEL_243:
    v25 = 0;
    v26 = 0;
    goto LABEL_78;
  }

  allocator = v50;
  v139 = (v10 + 1024);
  if (APSAudioFormatDescriptionCreateWithCMFormatDescription() && gLogCategory_APAudioEngineBuffered <= 30 && (gLogCategory_APAudioEngineBuffered != -1 || _LogCategory_Initialize()))
  {
    bufferedAudioEngine_enqueueMessagesFromBufferQueue_cold_7();
  }

  ASBD = APSAudioFormatDescriptionGetASBD();
  if (!APSAudioFormatDescriptionListContainsFormat())
  {
    *time = 0;
    if (gLogCategory_APAudioEngineBuffered < 91)
    {
      if (gLogCategory_APAudioEngineBuffered != -1 || _LogCategory_Initialize())
      {
        bufferedAudioEngine_enqueueMessagesFromBufferQueue_cold_15(&v165);
      }

      *time = 0;
      if (gLogCategory_APAudioEngineBuffered <= 90 && (gLogCategory_APAudioEngineBuffered != -1 || _LogCategory_Initialize()))
      {
        bufferedAudioEngine_enqueueMessagesFromBufferQueue_cold_16(v10 + 1000);
      }
    }

LABEL_76:
    v25 = 0;
    v26 = 0;
LABEL_77:
    v28 = 0;
    goto LABEL_78;
  }

  if (!FigCFEqual())
  {
    v67 = *(v10 + 1008);
    v68 = v165;
    *(v10 + 1008) = v165;
    if (v68)
    {
      CFRetain(v68);
    }

    if (v67)
    {
      CFRelease(v67);
    }

    *time = 0;
    if (gLogCategory_APAudioEngineBuffered <= 50 && (gLogCategory_APAudioEngineBuffered != -1 || _LogCategory_Initialize()))
    {
      APSAudioFormatDescriptionCopyDebugString();
      if (gLogCategory_APAudioEngineBuffered <= 50 && (gLogCategory_APAudioEngineBuffered != -1 || _LogCategory_Initialize()))
      {
        if (a1)
        {
          v69 = (CMBaseObjectGetDerivedStorage() + 392);
        }

        else
        {
          v69 = "";
        }

        LogPrintF(&gLogCategory_APAudioEngineBuffered, "OSStatus bufferedAudioEngine_enqueueMessagesFromBufferQueue(FigEndpointStreamAudioEngineRef, Boolean, int *)", 33554482, "BAE [%{ptr}] %s[0x%04X] Transport audio format changed: %{asbd} = %@", a1, v69, *(v10 + 530), ASBD, *time);
      }

      if (*time)
      {
        CFRelease(*time);
      }
    }

    bufferedAudioEngine_updateMaxAudioBurstIfNecessary(a1);
  }

  v78 = CMGetAttachment(v12, *MEMORY[0x277CD62B8], 0);
  if (v78 && (v79 = CFBooleanGetValue(v78)) != 0)
  {
    v133 = v79;
    v85 = *v139;
    *v139 = FormatDescription;
    if (FormatDescription)
    {
      CFRetain(FormatDescription);
    }

    if (v85)
    {
      CFRelease(v85);
    }
  }

  else
  {
    v133 = 0;
  }

  v80 = APSBadgingFormatInfoCopyBadgeType();
  if (v80)
  {
    v28 = v80;
    bufferedAudioEngine_enqueueMessagesFromBufferQueue_cold_8(v80);
    goto LABEL_243;
  }

  if (FigCFEqual())
  {
    v26 = 0;
    v83 = allocator;
  }

  else
  {
    v81 = *(v10 + 1032);
    v82 = v152;
    *(v10 + 1032) = v152;
    v83 = allocator;
    if (v82)
    {
      CFRetain(v82);
    }

    if (v81)
    {
      CFRelease(v81);
    }

    if (gLogCategory_APAudioEngineBuffered <= 50 && (gLogCategory_APAudioEngineBuffered != -1 || _LogCategory_Initialize()))
    {
      if (a1)
      {
        v84 = (CMBaseObjectGetDerivedStorage() + 392);
      }

      else
      {
        v84 = "";
      }

      v140 = v84;
      v130 = *(v10 + 530);
      v86 = v152;
      *time = *(v10 + 756);
      *&time[16] = *(v10 + 772);
      v87 = CMTimeGetSeconds(time);
      LogPrintF(&gLogCategory_APAudioEngineBuffered, "OSStatus bufferedAudioEngine_enqueueMessagesFromBufferQueue(FigEndpointStreamAudioEngineRef, Boolean, int *)", 33554482, "BAE [%{ptr}] %s[0x%04X] BadgeType changed to %@ at remoteMediaTime = %1.3f (%ld/%d) Source content: %@ Transport content: %@", a1, v140, v130, v86, *&v87, *(v10 + 756), *(v10 + 764), *(v10 + 1024), FormatDescription);
      v83 = allocator;
    }

    keys = @"ContentType";
    values = v152;
    v26 = CFDictionaryCreate(v83, &keys, &values, 1, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    if (!v26)
    {
      bufferedAudioEngine_enqueueMessagesFromBufferQueue_cold_14();
      v25 = 0;
      v28 = 4294951816;
      goto LABEL_78;
    }

    *time = *(v10 + 756);
    *&time[16] = *(v10 + 772);
    APSTimedInfoManagerAddTimedInfo();
  }

  MagicCookie = CMAudioFormatDescriptionGetMagicCookie(FormatDescription, &sizeOut);
  if (MagicCookie)
  {
    v25 = CFDataCreate(v83, MagicCookie, sizeOut);
    if (!v25)
    {
      bufferedAudioEngine_enqueueMessagesFromBufferQueue_cold_9();
      goto LABEL_77;
    }
  }

  else
  {
    v25 = 0;
  }

  if (FigCFEqual())
  {
    goto LABEL_194;
  }

  v89 = *(v10 + 1048);
  *(v10 + 1048) = v25;
  if (v25)
  {
    CFRetain(v25);
  }

  if (v89)
  {
    CFRelease(v89);
  }

  *(v10 + 1064) = 0;
  bufferedAudioEngine_setMagicCookieForAllHoses();
  if (v90)
  {
    v28 = v90;
    bufferedAudioEngine_enqueueMessagesFromBufferQueue_cold_10(v90);
  }

  else
  {
LABEL_194:
    Decryptor = FigSampleBufferGetDecryptor();
    if (Decryptor != *(v10 + 1224))
    {
      *(v10 + 1224) = Decryptor;
      if (Decryptor)
      {
        if (CMBaseObjectCopyProperty(Decryptor, *MEMORY[0x277CC0980], allocator, &cf) || cf != v16)
        {
          if (gLogCategory_APAudioEngineBuffered <= 90 && (gLogCategory_APAudioEngineBuffered != -1 || _LogCategory_Initialize()))
          {
            bufferedAudioEngine_enqueueMessagesFromBufferQueue_cold_11();
          }

          CMNotificationCenterGetDefaultLocalCenter();
          FigDispatchAsyncPostNotification();
        }

        else
        {
          v92 = bufferedAudioEngine_setCryptorForAllHoses(a1, *(v10 + 1224));
          if (v92)
          {
            v28 = v92;
            bufferedAudioEngine_enqueueMessagesFromBufferQueue_cold_12(v92);
            goto LABEL_78;
          }
        }
      }
    }

    *(v161 + 8) = v148;
    *(&v161[1] + 1) = v8;
    v93 = CMGetAttachment(v12, *MEMORY[0x277CC0760], 0);
    if (v93)
    {
      CMTimeMakeFromDictionary(time, v93);
      v178 = *time;
      v94 = *&time[12];
      v179 = *&time[8];
      if (time[12])
      {
        v95 = *&time[16];
        APSAudioFormatDescriptionGetSampleRate();
        lhs.value = v178;
        lhs.timescale = v179;
        lhs.flags = v94;
        lhs.epoch = v95;
        CMTimeConvertScale(time, &lhs, v96, kCMTimeRoundingMethod_RoundHalfAwayFromZero);
        v178 = *time;
        LODWORD(v95) = *&time[12];
        v179 = *&time[8];
        v97 = *&time[16];
        CMSampleBufferGetPresentationTimeStamp(time, v12);
        lhs.value = v178;
        lhs.timescale = v179;
        lhs.flags = v95;
        v141 = v95;
        lhs.epoch = v97;
        CMTimeAdd((v161 + 8), time, &lhs);
        if (gLogCategory_APAudioEngineBuffered <= 50 && (gLogCategory_APAudioEngineBuffered != -1 || _LogCategory_Initialize()))
        {
          if (a1)
          {
            v98 = (CMBaseObjectGetDerivedStorage() + 392);
          }

          else
          {
            v98 = "";
          }

          allocatorb = v98;
          v99 = *(v10 + 530);
          *time = v178;
          *&time[8] = v179;
          *&time[12] = v141;
          *&time[16] = v97;
          v100 = CMTimeGetSeconds(time);
          CMSampleBufferGetPresentationTimeStamp(time, v12);
          v101 = CMTimeGetSeconds(time);
          CMSampleBufferGetOutputPresentationTimeStamp(time, v12);
          v102 = CMTimeGetSeconds(time);
          CMSampleBufferGetDuration(time, v12);
          v103 = CMTimeGetSeconds(time);
          CMSampleBufferGetOutputDuration(time, v12);
          v104 = CMTimeGetSeconds(time);
          *time = *(v161 + 8);
          *&time[16] = *(&v161[1] + 1);
          v105 = CMTimeGetSeconds(time);
          LogPrintF(&gLogCategory_APAudioEngineBuffered, "OSStatus bufferedAudioEngine_enqueueMessagesFromBufferQueue(FigEndpointStreamAudioEngineRef, Boolean, int *)", 33554482, "BAE [%{ptr}] %s[0x%04X] Found TrimAtStart attachment with duration %1.3f seconds, sbuf_pts: %1.3f, sbuf_opts: %1.3f, sbuf_dur: %1.3f, sbuf_odur: %1.3f  trimAtStartEndPTS=%1.3f(%lld/%d) \n", a1, allocatorb, v99, *&v100, *&v101, *&v102, *&v103, *&v104, *&v105, *(&v161[0] + 1), LODWORD(v161[1]));
        }

        v106 = (v10 + 756);
        lhs = *(v10 + 756);
        rhs.value = v178;
        rhs.timescale = v179;
        rhs.flags = v141;
        rhs.epoch = v97;
        CMTimeSubtract(time, &lhs, &rhs);
        *(v10 + 756) = *time;
        *(v10 + 772) = *&time[16];
        if (gLogCategory_APAudioEngineBuffered <= 50 && (gLogCategory_APAudioEngineBuffered != -1 || _LogCategory_Initialize()))
        {
          if (a1)
          {
            v107 = (CMBaseObjectGetDerivedStorage() + 392);
          }

          else
          {
            v107 = "";
          }

          allocatorc = v107;
          v131 = *(v10 + 530);
          *&lhs.value = *v106;
          lhs.epoch = *(v10 + 772);
          rhs.value = v178;
          rhs.timescale = v179;
          rhs.flags = v141;
          rhs.epoch = v97;
          CMTimeAdd(time, &lhs, &rhs);
          v108 = CMTimeGetSeconds(time);
          *time = *v106;
          *&time[16] = *(v10 + 772);
          v109 = CMTimeGetSeconds(time);
          LogPrintF(&gLogCategory_APAudioEngineBuffered, "OSStatus bufferedAudioEngine_enqueueMessagesFromBufferQueue(FigEndpointStreamAudioEngineRef, Boolean, int *)", 33554482, "BAE [%{ptr}] %s[0x%04X] Adjusted nextRemoteMediaTimestamp from %1.3f to %1.3f\n", a1, allocatorc, v131, *&v108, *&v109);
        }
      }
    }

    v162 = v148;
    v163 = v8;
    v110 = CMGetAttachment(v12, *MEMORY[0x277CC0758], 0);
    if (v110)
    {
      CMTimeMakeFromDictionary(time, v110);
      v178 = *time;
      v112 = *&time[12];
      v179 = *&time[8];
      v111 = v143;
      if (time[12])
      {
        v113 = *&time[16];
        APSAudioFormatDescriptionGetSampleRate();
        lhs.value = v178;
        lhs.timescale = v179;
        lhs.flags = v112;
        lhs.epoch = v113;
        CMTimeConvertScale(time, &lhs, v114, kCMTimeRoundingMethod_RoundHalfAwayFromZero);
        v178 = *time;
        v111 = *&time[12];
        v179 = *&time[8];
        v8 = *&time[16];
        CMSampleBufferGetPresentationTimeStamp(&lhs, v12);
        CMSampleBufferGetDuration(&rhs, v12);
        CMTimeAdd(time, &lhs, &rhs);
        v162 = *time;
        v163 = *&time[16];
        lhs = *time;
        rhs.value = v178;
        rhs.timescale = v179;
        rhs.flags = v111;
        rhs.epoch = v8;
        CMTimeSubtract(time, &lhs, &rhs);
        v162 = *time;
        v163 = *&time[16];
        if (gLogCategory_APAudioEngineBuffered <= 50 && (gLogCategory_APAudioEngineBuffered != -1 || _LogCategory_Initialize()))
        {
          if (a1)
          {
            v115 = (CMBaseObjectGetDerivedStorage() + 392);
          }

          else
          {
            v115 = "";
          }

          v149 = v115;
          v145 = *(v10 + 530);
          *time = v178;
          *&time[8] = v179;
          *&time[12] = v111;
          *&time[16] = v8;
          v116 = CMTimeGetSeconds(time);
          *time = v162;
          *&time[16] = v163;
          v117 = CMTimeGetSeconds(time);
          v142 = v162;
          v118 = v111;
          v119 = DWORD2(v162);
          CMSampleBufferGetPresentationTimeStamp(time, v12);
          v120 = CMTimeGetSeconds(time);
          CMSampleBufferGetDuration(time, v12);
          v121 = CMTimeGetSeconds(time);
          v129 = v119;
          v111 = v118;
          LogPrintF(&gLogCategory_APAudioEngineBuffered, "OSStatus bufferedAudioEngine_enqueueMessagesFromBufferQueue(FigEndpointStreamAudioEngineRef, Boolean, int *)", 33554482, "BAE [%{ptr}] %s[0x%04X] Found TrimAtEnd attachment with duration=%1.3f seconds, trimAtEndStartPTS=%1.3f(%lld/%d), sbuf.PTS=%1.3f, sbuf.duration=%1.3f \n", a1, v149, v145, *&v116, *&v117, v142, v129, *&v120, *&v121);
        }

        v176 = v178;
        v177 = v179;
      }
    }

    else
    {
      v111 = v143;
    }

    *&v159 = a1;
    *(&v159 + 1) = v165;
    *&v160 = v164;
    BYTE8(v160) = v146;
    *&v161[0] = 0;
    bufferedAudioEngine_recordPreparedAudioDataAndAudioFormatDuration(a1, v12, v133, v165);
    bufferedAudioEngine_adjustRemoteMediaTimeForDiscontinuity();
    v122 = bufferedAudioEngine_processAndEnqueueSampleBuffer(v12, &v159);
    if (!v122)
    {
      if (v111)
      {
        v123 = (v10 + 756);
        lhs = *(v10 + 756);
        rhs.value = v176;
        rhs.timescale = v177;
        rhs.flags = v111;
        rhs.epoch = v8;
        CMTimeSubtract(time, &lhs, &rhs);
        *(v10 + 756) = *time;
        *(v10 + 772) = *&time[16];
        if (gLogCategory_APAudioEngineBuffered <= 50 && (gLogCategory_APAudioEngineBuffered != -1 || _LogCategory_Initialize()))
        {
          if (a1)
          {
            v124 = (CMBaseObjectGetDerivedStorage() + 392);
          }

          else
          {
            v124 = "";
          }

          v150 = v124;
          v147 = *(v10 + 530);
          *time = *v123;
          *&time[16] = *(v10 + 772);
          v125 = CMTimeGetSeconds(time);
          v126 = *v123;
          v127 = *(v10 + 764);
          *time = v176;
          *&time[8] = v177;
          *&time[12] = v111;
          *&time[16] = v8;
          v128 = CMTimeGetSeconds(time);
          LogPrintF(&gLogCategory_APAudioEngineBuffered, "OSStatus bufferedAudioEngine_enqueueMessagesFromBufferQueue(FigEndpointStreamAudioEngineRef, Boolean, int *)", 33554482, "BAE [%{ptr}] %s[0x%04X] TrimAtEndPostAdjustment new adjusted nextRemoteMediaTimestamp=%1.3f(%lld/%d) trimAtEndPostAdjustment=%1.3f \n", a1, v150, v147, *&v125, v126, v127, *&v128);
        }
      }

      goto LABEL_77;
    }

    v28 = v122;
    bufferedAudioEngine_enqueueMessagesFromBufferQueue_cold_13(v122);
  }

LABEL_78:
  if (a3)
  {
    *a3 = v161[0];
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (v12)
  {
    CFRelease(v12);
  }

  if (v165)
  {
    CFRelease(v165);
  }

  if (v164)
  {
    CFRelease(v164);
  }

  if (v25)
  {
    CFRelease(v25);
  }

  if (v152)
  {
    CFRelease(v152);
  }

  if (v26)
  {
    CFRelease(v26);
  }

  if (v14)
  {
    CFRelease(v14);
  }

  return v28;
}

double bufferedAudioEngine_getStartUpDelay@<D0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (bufferedAudioEngine_getStartUpDelay_onceToken != -1)
  {
    bufferedAudioEngine_getStartUpDelay_cold_1();
  }

  v7 = bufferedAudioEngine_getStartUpDelay_defaultsWriteStartupDelayMS;
  if (bufferedAudioEngine_getStartUpDelay_defaultsWriteStartupDelayMS != -1234)
  {
    goto LABEL_6;
  }

  if (!*(DerivedStorage + 1800))
  {
    if (bufferedAudioEngine_isSpeakerPlayingBySelf(a1))
    {
      v7 = 200;
    }

    else if (a2)
    {
      if (*(DerivedStorage + 437))
      {
        v7 = 600;
      }

      else
      {
        v7 = 750;
      }
    }

    else if (*(DerivedStorage + 437))
    {
      v7 = 300;
    }

    else
    {
      v7 = 400;
    }

LABEL_6:
    CMTimeMake(&v10, v7, 1000);
    *bufferedAudioEngine_getStartUpDelay_bufferedStartUpDelay = *&v10.value;
    epoch = v10.epoch;
    goto LABEL_7;
  }

  *bufferedAudioEngine_getStartUpDelay_bufferedStartUpDelay = *MEMORY[0x277CC08F0];
  epoch = *(MEMORY[0x277CC08F0] + 16);
LABEL_7:
  *&bufferedAudioEngine_getStartUpDelay_bufferedStartUpDelay[16] = epoch;
  if (gLogCategory_APAudioEngineBuffered <= 30 && (gLogCategory_APAudioEngineBuffered != -1 || _LogCategory_Initialize()))
  {
    bufferedAudioEngine_getStartUpDelay_cold_2(a1);
  }

  result = *bufferedAudioEngine_getStartUpDelay_bufferedStartUpDelay;
  *a3 = *bufferedAudioEngine_getStartUpDelay_bufferedStartUpDelay;
  *(a3 + 16) = *&bufferedAudioEngine_getStartUpDelay_bufferedStartUpDelay[16];
  return result;
}

uint64_t __bufferedAudioEngine_getStartUpDelay_block_invoke()
{
  result = FigGetCFPreferenceNumberWithDefault();
  bufferedAudioEngine_getStartUpDelay_defaultsWriteStartupDelayMS = result;
  return result;
}

uint64_t bufferedAudioEngine_getEncodeMessageBackingSize(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(CMBaseObjectGetDerivedStorage() + 576))
  {
    APSAPAPBBufEncodeGetMinBackingSize();
    return 0;
  }

  else
  {
    v5 = a2 + 11;
    v6 = *(CMBaseObjectGetDerivedStorage() + 608);
    if (v6)
    {
      v7 = *(*(CMBaseObjectGetVTable() + 16) + 8);
      if (v7)
      {
        v8 = v7(v6);
      }

      else
      {
        v8 = 0;
      }

      v5 += v8;
    }
  }

  return v5;
}

uint64_t bufferedAudioEngine_encodeMessage(uint64_t a1, uint64_t a2, __int128 *a3, uint64_t a4, OpaqueCMBlockBuffer *a5, CMBlockBufferRef *a6)
{
  if (*(CMBaseObjectGetDerivedStorage() + 576))
  {
    return APSAPAPBBufEncode();
  }

  v13 = *(a3 + 2);
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v39 = 0;
  v38 = 0;
  DataLength = CMBlockBufferGetDataLength(a5);
  theBuffer = 0;
  v16 = *(DerivedStorage + 608);
  if (v16)
  {
    v17 = *(*(CMBaseObjectGetVTable() + 16) + 8);
    if (v17)
    {
      v16 = v17(v16);
    }

    else
    {
      v16 = 0;
    }
  }

  v35 = 0;
  v36 = 0;
  lengthAtOffsetOut = 0;
  dataPointerOut = 0;
  v32 = 0;
  if (*DerivedStorage)
  {
    goto LABEL_37;
  }

  if (v13 == bufferedAudioEngine_getSampleRateFromTransportAudioFormat(a1))
  {
    if (a4 && *(a4 + 16) && gLogCategory_APAudioEngineBuffered <= 50 && (gLogCategory_APAudioEngineBuffered != -1 || _LogCategory_Initialize()))
    {
      bufferedAudioEngine_encodeMessage_cold_2();
    }

    v18 = APSTransportMessageSetBufferedAudioDataHeader();
    if (v18)
    {
      v11 = v18;
      bufferedAudioEngine_encodeMessage_cold_3(v18);
    }

    else
    {
      BufferedAudioDataPointer = APSTransportMessageGetBufferedAudioDataPointer();
      if (BufferedAudioDataPointer)
      {
        v11 = BufferedAudioDataPointer;
        bufferedAudioEngine_encodeMessage_cold_4(BufferedAudioDataPointer);
      }

      else if (v38 < v16 + DataLength)
      {
        bufferedAudioEngine_encodeMessage_cold_11();
        v11 = 4294960553;
      }

      else if (DataLength && (v20 = CMBlockBufferCopyDataBytes(a5, 0, DataLength, v39), v20))
      {
        v11 = v20;
        bufferedAudioEngine_encodeMessage_cold_5(v20);
      }

      else
      {
        ReferencingBBufWithAudioDataLength = APSTransportMessageBufferedCreateReferencingBBufWithAudioDataLength();
        if (ReferencingBBufWithAudioDataLength)
        {
          v11 = ReferencingBBufWithAudioDataLength;
          bufferedAudioEngine_encodeMessage_cold_6(ReferencingBBufWithAudioDataLength);
        }

        else
        {
          if (!*(DerivedStorage + 608))
          {
            goto LABEL_33;
          }

          BufferedAudioAADPointer = APSTransportMessageGetBufferedAudioAADPointer();
          if (BufferedAudioAADPointer)
          {
            v11 = BufferedAudioAADPointer;
            bufferedAudioEngine_encodeMessage_cold_7(BufferedAudioAADPointer);
          }

          else
          {
            if (gLogCategory_APAudioEngineBuffered <= 10 && (gLogCategory_APAudioEngineBuffered != -1 || _LogCategory_Initialize()))
            {
              bufferedAudioEngine_encodeMessage_cold_8();
            }

            DataPointer = CMBlockBufferGetDataPointer(theBuffer, 0xBuLL, &lengthAtOffsetOut, 0, &dataPointerOut);
            if (DataPointer)
            {
              v11 = DataPointer;
              bufferedAudioEngine_encodeMessage_cold_9(DataPointer);
            }

            else
            {
              if (!v16)
              {
                v25 = 0;
LABEL_31:
                v26 = *(DerivedStorage + 608);
                v28 = v35;
                v27 = v36;
                v29 = dataPointerOut;
                v30 = *(*(CMBaseObjectGetVTable() + 16) + 16);
                if (v30)
                {
                  v31 = v30(v26, v27, v28, v29, DataLength, v29, DataLength, v25, v16);
                  if (!v31)
                  {
LABEL_33:
                    if (a6)
                    {
                      v11 = 0;
                      *a6 = theBuffer;
                      return v11;
                    }

LABEL_37:
                    v11 = 0;
                    goto LABEL_38;
                  }

                  v11 = v31;
                }

                else
                {
                  v11 = 4294954514;
                }

                APSLogErrorAt();
                goto LABEL_38;
              }

              v24 = CMBlockBufferGetDataPointer(theBuffer, DataLength + 11, 0, 0, &v32);
              if (!v24)
              {
                v25 = v32;
                goto LABEL_31;
              }

              v11 = v24;
              bufferedAudioEngine_encodeMessage_cold_10(v24);
            }
          }
        }
      }
    }
  }

  else
  {
    bufferedAudioEngine_encodeMessage_cold_1();
    v11 = 4294960591;
  }

LABEL_38:
  if (theBuffer)
  {
    CFRelease(theBuffer);
  }

  return v11;
}

uint64_t bufferedAudioEngine_encodeMaxExtensionItemSizesAPAP(uint64_t (*a1)(uint64_t, uint64_t, uint64_t), uint64_t a2, void *a3)
{
  v6 = a1(1, 8, a2);
  if (v6)
  {
    v25 = v6;
    bufferedAudioEngine_encodeMaxExtensionItemSizesAPAP_cold_1(v6);
  }

  else
  {
    v7 = a1(2, 8, a2);
    if (v7)
    {
      v25 = v7;
      bufferedAudioEngine_encodeMaxExtensionItemSizesAPAP_cold_2(v7);
    }

    else
    {
      v8 = a1(20, 8, a2);
      if (v8)
      {
        v25 = v8;
        bufferedAudioEngine_encodeMaxExtensionItemSizesAPAP_cold_3(v8);
      }

      else
      {
        v9 = a1(3, 8, a2);
        if (v9)
        {
          v25 = v9;
          bufferedAudioEngine_encodeMaxExtensionItemSizesAPAP_cold_4(v9);
        }

        else
        {
          v10 = a1(17, 8, a2);
          if (v10)
          {
            v25 = v10;
            bufferedAudioEngine_encodeMaxExtensionItemSizesAPAP_cold_5(v10);
          }

          else
          {
            v11 = a1(18, 8, a2);
            if (v11)
            {
              v25 = v11;
              bufferedAudioEngine_encodeMaxExtensionItemSizesAPAP_cold_6(v11);
            }

            else
            {
              v12 = a1(4, 12, a2);
              if (v12)
              {
                v25 = v12;
                bufferedAudioEngine_encodeMaxExtensionItemSizesAPAP_cold_7(v12);
              }

              else
              {
                v13 = a1(5, 12, a2);
                if (v13)
                {
                  v25 = v13;
                  bufferedAudioEngine_encodeMaxExtensionItemSizesAPAP_cold_8(v13);
                }

                else
                {
                  v14 = a1(13, 12, a2);
                  if (v14)
                  {
                    v25 = v14;
                    bufferedAudioEngine_encodeMaxExtensionItemSizesAPAP_cold_9(v14);
                  }

                  else
                  {
                    v15 = a1(12, 8, a2);
                    if (v15)
                    {
                      v25 = v15;
                      bufferedAudioEngine_encodeMaxExtensionItemSizesAPAP_cold_10(v15);
                    }

                    else
                    {
                      v16 = a1(11, 12, a2);
                      if (v16)
                      {
                        v25 = v16;
                        bufferedAudioEngine_encodeMaxExtensionItemSizesAPAP_cold_11(v16);
                      }

                      else
                      {
                        v17 = a1(7, 20 * *a3, a2);
                        if (v17)
                        {
                          v25 = v17;
                          bufferedAudioEngine_encodeMaxExtensionItemSizesAPAP_cold_12(v17);
                        }

                        else
                        {
                          v18 = a1(8, 4, a2);
                          if (v18)
                          {
                            v25 = v18;
                            bufferedAudioEngine_encodeMaxExtensionItemSizesAPAP_cold_13(v18);
                          }

                          else
                          {
                            v19 = a1(14, 4, a2);
                            if (v19)
                            {
                              v25 = v19;
                              bufferedAudioEngine_encodeMaxExtensionItemSizesAPAP_cold_14(v19);
                            }

                            else
                            {
                              v20 = a1(15, 4, a2);
                              if (v20)
                              {
                                v25 = v20;
                                bufferedAudioEngine_encodeMaxExtensionItemSizesAPAP_cold_15(v20);
                              }

                              else
                              {
                                v21 = a1(16, 4, a2);
                                if (v21)
                                {
                                  v25 = v21;
                                  bufferedAudioEngine_encodeMaxExtensionItemSizesAPAP_cold_16(v21);
                                }

                                else
                                {
                                  v22 = a1(9, 16, a2);
                                  if (v22)
                                  {
                                    v25 = v22;
                                    bufferedAudioEngine_encodeMaxExtensionItemSizesAPAP_cold_17(v22);
                                  }

                                  else
                                  {
                                    v23 = a1(10, 8, a2);
                                    if (v23)
                                    {
                                      v25 = v23;
                                      bufferedAudioEngine_encodeMaxExtensionItemSizesAPAP_cold_18(v23);
                                    }

                                    else
                                    {
                                      v24 = a1(19, 20, a2);
                                      v25 = v24;
                                      if (v24)
                                      {
                                        bufferedAudioEngine_encodeMaxExtensionItemSizesAPAP_cold_19(v24);
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

  return v25;
}

opaqueCMSampleBuffer *bufferedAudioEngine_processAndRetainSBufFromBufferQueue(uint64_t a1, int a2)
{
  v29 = *MEMORY[0x277D85DE8];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v5 = CMBufferQueueDequeueAndRetain(*(DerivedStorage + 1192));
  v6 = v5;
  if (v5)
  {
    CMSampleBufferGetOutputPresentationTimeStamp(&time1, v5);
    value = time1.value;
    flags = time1.flags;
    timescale = time1.timescale;
    epoch = time1.epoch;
    CMSampleBufferGetOutputDuration(&time1, v6);
    v25 = time1.value;
    v26 = time1.timescale;
    if (flags & 1) != 0 && (*(DerivedStorage + 720))
    {
      time1.value = v25;
      time1.timescale = v26;
      time2 = **&MEMORY[0x277CC08F0];
      v9 = CMTimeCompare(&time1, &time2);
      if (!a2 && v9 >= 1)
      {
        v10 = (DerivedStorage + 708);
        time1.value = value;
        time1.timescale = timescale;
        time1.flags = flags;
        time1.epoch = epoch;
        time2 = *(DerivedStorage + 708);
        if (CMTimeCompare(&time1, &time2))
        {
          if (gLogCategory_APAudioEngineBuffered <= 50 && (gLogCategory_APAudioEngineBuffered != -1 || _LogCategory_Initialize()))
          {
            if (a1)
            {
              v11 = (CMBaseObjectGetDerivedStorage() + 392);
            }

            else
            {
              v11 = "";
            }

            v13 = *(DerivedStorage + 530);
            *&time1.value = *&v10->value;
            time1.epoch = *(DerivedStorage + 724);
            Seconds = CMTimeGetSeconds(&time1);
            time1.value = value;
            time1.timescale = timescale;
            time1.flags = flags;
            time1.epoch = epoch;
            v15 = CMTimeGetSeconds(&time1);
            LogPrintF(&gLogCategory_APAudioEngineBuffered, "CMSampleBufferRef bufferedAudioEngine_processAndRetainSBufFromBufferQueue(FigEndpointStreamAudioEngineRef, Boolean)", 33554482, "BAE [%{ptr}] %s[0x%04X] Posting notification for discontinuity sbufEndOutputPTS(%1.3f) sbufOPTS(%1.3f)", a1, v11, v13, *&Seconds, *&v15);
          }

          v16 = *MEMORY[0x277CBECE8];
          time1.value = value;
          time1.timescale = timescale;
          time1.flags = flags;
          time1.epoch = epoch;
          v12 = CMTimeCopyAsDictionary(&time1, v16);
          CMNotificationCenterGetDefaultLocalCenter();
          FigDispatchAsyncPostNotification();
        }

        else
        {
          v12 = 0;
        }

        time1.value = value;
        time1.timescale = timescale;
        time1.flags = flags;
        time1.epoch = epoch;
        *&time2.value = *&v10->value;
        time2.epoch = *(DerivedStorage + 724);
        if (CMTimeCompare(&time1, &time2) < 0)
        {
          if (gLogCategory_APAudioEngineBuffered <= 50 && (gLogCategory_APAudioEngineBuffered != -1 || _LogCategory_Initialize()))
          {
            if (a1)
            {
              v17 = (CMBaseObjectGetDerivedStorage() + 392);
            }

            else
            {
              v17 = "";
            }

            v18 = *(DerivedStorage + 530);
            time1 = *v10;
            v19 = CMTimeGetSeconds(&time1);
            time1.value = value;
            time1.timescale = timescale;
            time1.flags = flags;
            time1.epoch = epoch;
            v20 = CMTimeGetSeconds(&time1);
            LogPrintF(&gLogCategory_APAudioEngineBuffered, "CMSampleBufferRef bufferedAudioEngine_processAndRetainSBufFromBufferQueue(FigEndpointStreamAudioEngineRef, Boolean)", 33554482, "BAE [%{ptr}] %s[0x%04X] Reset sbufEndOutputPTS(%1.3f). SbufOPTS(%1.3f)", a1, v17, v18, *&v19, *&v20);
          }

          v21 = MEMORY[0x277CC0898];
          *&v10->value = *MEMORY[0x277CC0898];
          v10->epoch = *(v21 + 16);
        }

        if (v12)
        {
          CFRelease(v12);
        }
      }
    }
  }

  return v6;
}

uint64_t bufferedAudioEngine_processAndEnqueueSampleBuffer(opaqueCMSampleBuffer *a1, void *a2)
{
  v39 = *MEMORY[0x277D85DE8];
  packetDescriptionsSizeOut = 0;
  packetDescriptionsPointerOut = 0;
  blockBufferOut = 0;
  v2 = MEMORY[0x277CC0898];
  memset(&v33, 0, sizeof(v33));
  value = *MEMORY[0x277CC0898];
  timescale = *(MEMORY[0x277CC0898] + 8);
  sbuf = 0;
  if (!a2)
  {
    bufferedAudioEngine_processAndEnqueueSampleBuffer_cold_12();
LABEL_40:
    v28 = 4294954516;
    goto LABEL_27;
  }

  v4 = a1;
  if (CMSampleBufferGetSampleSize(a1, 0))
  {
    v5 = 0;
    goto LABEL_23;
  }

  NumSamples = CMSampleBufferGetNumSamples(v4);
  if (CMSampleBufferGetAudioStreamPacketDescriptionsPtr(v4, &packetDescriptionsPointerOut, &packetDescriptionsSizeOut) || !packetDescriptionsSizeOut)
  {
    bufferedAudioEngine_processAndEnqueueSampleBuffer_cold_11();
    goto LABEL_40;
  }

  if (NumSamples != packetDescriptionsSizeOut >> 4)
  {
    bufferedAudioEngine_processAndEnqueueSampleBuffer_cold_1();
    goto LABEL_40;
  }

  DataBuffer = CMSampleBufferGetDataBuffer(v4);
  if (!DataBuffer)
  {
    bufferedAudioEngine_processAndEnqueueSampleBuffer_cold_10();
    goto LABEL_40;
  }

  v8 = DataBuffer;
  v9 = CMSampleBufferGetFormatDescription(v4);
  if (!v9)
  {
    bufferedAudioEngine_processAndEnqueueSampleBuffer_cold_9();
    goto LABEL_40;
  }

  v10 = v9;
  v11 = *MEMORY[0x277CBECE8];
  v12 = MEMORY[0x223DAFDB0](*MEMORY[0x277CBECE8], 8 * NumSamples, 0x100004000313F17, 0);
  if (!v12)
  {
    bufferedAudioEngine_processAndEnqueueSampleBuffer_cold_8();
    v28 = 4294954510;
    goto LABEL_27;
  }

  v5 = v12;
  v13 = CMBlockBufferCreateEmpty(v11, NumSamples, 0, &blockBufferOut);
  if (v13)
  {
    v28 = v13;
    bufferedAudioEngine_processAndEnqueueSampleBuffer_cold_2(v13);
    goto LABEL_26;
  }

  formatDescription = v10;
  if (NumSamples)
  {
    v14 = 0;
    v15 = 0;
    while (1)
    {
      v16 = &packetDescriptionsPointerOut[v14];
      mDataByteSize = packetDescriptionsPointerOut[v14].mDataByteSize;
      v5[v15] = mDataByteSize;
      appended = CMBlockBufferAppendBufferReference(blockBufferOut, v8, v16->mStartOffset, mDataByteSize, 0);
      if (appended)
      {
        break;
      }

      ++v15;
      ++v14;
      if (NumSamples == v15)
      {
        goto LABEL_15;
      }
    }

    v28 = appended;
    bufferedAudioEngine_processAndEnqueueSampleBuffer_cold_3(appended);
    goto LABEL_26;
  }

LABEL_15:
  CMSampleBufferGetPresentationTimeStamp(&v31, v4);
  value = v31.value;
  timescale = v31.timescale;
  if ((v31.flags & 1) == 0)
  {
    bufferedAudioEngine_processAndEnqueueSampleBuffer_cold_7();
    v28 = 4294954516;
    goto LABEL_25;
  }

  v33.presentationTimeStamp.value = value;
  v33.presentationTimeStamp.timescale = timescale;
  v33.presentationTimeStamp.flags = v31.flags;
  v33.presentationTimeStamp.epoch = v31.epoch;
  FramesPerPacket = APSAudioFormatDescriptionGetFramesPerPacket();
  APSAudioFormatDescriptionGetSampleRate();
  CMTimeMake(&v33.duration, FramesPerPacket, v20);
  v33.decodeTimeStamp = *v2;
  v21 = CMSampleBufferCreateReady(v11, blockBufferOut, formatDescription, NumSamples, 1, &v33, NumSamples, v5, &sbuf);
  if (v21)
  {
    v28 = v21;
    bufferedAudioEngine_processAndEnqueueSampleBuffer_cold_4(v21);
    goto LABEL_25;
  }

  SampleAttachmentsArray = CMSampleBufferGetSampleAttachmentsArray(v4, 0);
  if (SampleAttachmentsArray)
  {
    v23 = SampleAttachmentsArray;
    v24 = CMSampleBufferGetSampleAttachmentsArray(sbuf, 1u);
    if (!v24)
    {
      bufferedAudioEngine_processAndEnqueueSampleBuffer_cold_5();
      v28 = 4294954510;
      goto LABEL_25;
    }

    if (NumSamples)
    {
      v25 = v24;
      for (i = 0; i != NumSamples; ++i)
      {
        CFArrayGetValueAtIndex(v25, i);
        CFArrayGetValueAtIndex(v23, i);
        FigCFDictionarySetAllValuesFromDictionary();
      }
    }
  }

  v4 = sbuf;
LABEL_23:
  v27 = CMSampleBufferCallForEachSample(v4, bufferedAudioEngine_enqueueSingleSampleCompressedSBufCallback, a2);
  v28 = v27;
  if (!v27)
  {
    if (!v5)
    {
      goto LABEL_27;
    }

    goto LABEL_25;
  }

  bufferedAudioEngine_processAndEnqueueSampleBuffer_cold_6(v27);
  if (v5)
  {
LABEL_25:
    v11 = *MEMORY[0x277CBECE8];
LABEL_26:
    CFAllocatorDeallocate(v11, v5);
  }

LABEL_27:
  if (blockBufferOut)
  {
    CFRelease(blockBufferOut);
  }

  if (sbuf)
  {
    CFRelease(sbuf);
  }

  return v28;
}

void bufferedAudioEngine_setAudioFormatDurationDict(CMTime *a1, __CFDictionary *a2, const void *a3)
{
  v12 = **&MEMORY[0x277CC0898];
  if (FigCFDictionaryGetCMTimeIfPresent())
  {
    lhs = *a1;
    v9 = v12;
    CMTimeAdd(&time, &lhs, &v9);
    *a1 = time;
  }

  v6 = *MEMORY[0x277CBECE8];
  time = *a1;
  v7 = CMTimeCopyAsDictionary(&time, v6);
  if (v7)
  {
    v8 = v7;
    CFDictionarySetValue(a2, a3, v7);
    CFRelease(v8);
  }

  else
  {
    bufferedAudioEngine_setAudioFormatDurationDict_cold_1();
  }
}

uint64_t bufferedAudioEngine_enqueueSingleSampleCompressedSBufCallback(opaqueCMSampleBuffer *a1, uint64_t a2, void *a3)
{
  v151 = *MEMORY[0x277D85DE8];
  v5 = *a3;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v7 = *(a3 + 24);
  cf = 0;
  v138 = 0;
  v148 = *(MEMORY[0x277CC0898] + 12);
  epoch_high = *(MEMORY[0x277CC0898] + 20);
  v146 = v148;
  v147 = epoch_high;
  v136 = 0u;
  memset(v137, 0, sizeof(v137));
  v134 = 0u;
  v135 = 0u;
  v132 = 0u;
  v133 = 0u;
  v130 = 0u;
  v131 = 0u;
  v129 = 0u;
  v144 = v148;
  v145 = epoch_high;
  v8 = *(MEMORY[0x277CC0918] + 48);
  *&timingInfoOut.presentationTimeStamp.timescale = *(MEMORY[0x277CC0918] + 32);
  *&timingInfoOut.decodeTimeStamp.value = v8;
  timingInfoOut.decodeTimeStamp.epoch = *(MEMORY[0x277CC0918] + 64);
  v9 = *(MEMORY[0x277CC0918] + 16);
  *&timingInfoOut.duration.value = *MEMORY[0x277CC0918];
  *&timingInfoOut.duration.epoch = v9;
  if (!a1)
  {
    bufferedAudioEngine_enqueueSingleSampleCompressedSBufCallback_cold_17();
LABEL_154:
    v21 = time1.value;
    value_low = LODWORD(time.value);
    goto LABEL_139;
  }

  DataBuffer = CMSampleBufferGetDataBuffer(a1);
  if (!DataBuffer)
  {
    bufferedAudioEngine_enqueueSingleSampleCompressedSBufCallback_cold_16();
    goto LABEL_154;
  }

  v11 = DataBuffer;
  TotalSampleSize = CMSampleBufferGetTotalSampleSize(a1);
  if (!TotalSampleSize)
  {
    bufferedAudioEngine_enqueueSingleSampleCompressedSBufCallback_cold_15();
    goto LABEL_154;
  }

  v13 = TotalSampleSize;
  CMSampleBufferGetPresentationTimeStamp(&time1, a1);
  v148 = *&time1.flags;
  timescale = time1.timescale;
  value = time1.value;
  epoch_high = HIDWORD(time1.epoch);
  CMSampleBufferGetOutputPresentationTimeStamp(&time1, a1);
  v110 = time1.value;
  v146 = *&time1.flags;
  v14 = time1.timescale;
  v147 = HIDWORD(time1.epoch);
  FramesPerPacket = APSAudioFormatDescriptionGetFramesPerPacket();
  v15 = *(DerivedStorage + 1048);
  if (v15)
  {
    Length = CFDataGetLength(v15);
  }

  else
  {
    Length = 0;
  }

  if (FigCFDictionaryGetValue())
  {
    ChannelCount = APSAudioFormatDescriptionGetChannelCount();
  }

  else
  {
    ChannelCount = 0;
  }

  EncodeMessageBackingSize = bufferedAudioEngine_getEncodeMessageBackingSize(v5, v13, ChannelCount, Length);
  v127 = v5;
  if (v7)
  {
    NextFreeBacking = APMessageRingBufferedGetNextFreeBacking(*(DerivedStorage + 616), EncodeMessageBackingSize);
    if (NextFreeBacking)
    {
      cf = CFRetain(NextFreeBacking);
      if (cf)
      {
        v106 = 1;
        goto LABEL_24;
      }
    }

    else
    {
      cf = 0;
    }

    if (gLogCategory_APAudioEngineBuffered <= 90 && (gLogCategory_APAudioEngineBuffered != -1 || _LogCategory_Initialize()))
    {
      bufferedAudioEngine_enqueueSingleSampleCompressedSBufCallback_cold_1();
    }
  }

  if (!bufferedAudioEngine_createMessageBackingBBuf(*(DerivedStorage + 360), EncodeMessageBackingSize, &cf))
  {
    v106 = 0;
LABEL_24:
    v22 = DerivedStorage + 756;
    v23 = *(DerivedStorage + 756);
    v24 = *(DerivedStorage + 772);
    v25 = *(DerivedStorage + 764);
    APSAudioFormatDescriptionGetSampleRate();
    time.value = v23;
    *&time.timescale = v25;
    time.epoch = v24;
    CMTimeConvertScale(&time1, &time, v26, kCMTimeRoundingMethod_RoundHalfAwayFromZero);
    v125 = time1.timescale;
    v126 = time1.value;
    flags = time1.flags;
    epoch = time1.epoch;
    CMSampleBufferGetDuration(&time1, a1);
    time.value = value;
    *&time.flags = v148;
    time.timescale = timescale;
    HIDWORD(time.epoch) = epoch_high;
    v123 = time1.value;
    rhs = time1;
    v120 = time1.timescale;
    v121 = time1.epoch;
    v122 = time1.flags;
    CMTimeAdd(&time1, &time, &rhs);
    v144 = *&time1.flags;
    v108 = time1.timescale;
    v109 = time1.value;
    v145 = HIDWORD(time1.epoch);
    v27 = *(DerivedStorage + 1208);
    v28 = *(DerivedStorage + 408);
    if (v27 >= v28)
    {
      v29 = 20;
    }

    else
    {
      v29 = 50;
    }

    v107 = v11;
    if (v29 >= gLogCategory_APAudioEngineBuffered)
    {
      if (gLogCategory_APAudioEngineBuffered == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_38;
        }

        v27 = *(DerivedStorage + 1208);
        v28 = *(DerivedStorage + 408);
      }

      if (v27 >= v28)
      {
        v30 = 33554452;
      }

      else
      {
        v30 = 33554482;
      }

      v104 = v30;
      if (v127)
      {
        v31 = (CMBaseObjectGetDerivedStorage() + 392);
      }

      else
      {
        v31 = "";
      }

      v102 = v31;
      v100 = *(DerivedStorage + 530);
      time1.value = value;
      *&time1.flags = v148;
      time1.timescale = timescale;
      HIDWORD(time1.epoch) = epoch_high;
      Seconds = CMTimeGetSeconds(&time1);
      time1.value = v110;
      *&time1.flags = v146;
      time1.timescale = v14;
      HIDWORD(time1.epoch) = v147;
      v33 = CMTimeGetSeconds(&time1);
      time1.value = v123;
      time1.timescale = v120;
      time1.flags = v122;
      time1.epoch = v121;
      v34 = CMTimeGetSeconds(&time1);
      time1.value = v109;
      *&time1.flags = v144;
      time1.timescale = v108;
      HIDWORD(time1.epoch) = v145;
      v35 = CMTimeGetSeconds(&time1);
      time1.value = v126;
      time1.timescale = v125;
      time1.flags = flags;
      time1.epoch = epoch;
      v36 = CMTimeGetSeconds(&time1);
      LogPrintF(&gLogCategory_APAudioEngineBuffered, "OSStatus bufferedAudioEngine_enqueueSingleSampleCompressedSBufCallback(CMSampleBufferRef, CMItemCount, void *)", v104, "BAE [%{ptr}] %s[0x%04X] PrepMsg SBufTimestamp = %1.6f (%lld/%d) SBufOutputTimestamp = %1.6f (%lld/%d) sbufDuration = %1.6f (%lld/%d) sbufEndPTS = %1.6f (%lld/%d) RemoteMediaTimestamp = %1.6f (%lld/%d)\n", v127, v102, v100, *&Seconds, value, timescale, *&v33, v110, v14, *&v34, v123, v120, *&v35, v109, v108, *&v36, v126, v125);
      v22 = DerivedStorage + 756;
    }

LABEL_38:
    *&v129 = APSAudioFormatDescriptionGetAudioFormatIndex();
    *(&v129 + 1) = APSAudioFormatDescriptionGetAudioFormatIndex();
    LOBYTE(v130) = 0;
    BYTE8(v137[0]) = 0;
    v37 = *(DerivedStorage + 1224);
    if (v37)
    {
      *(&v130 + 1) = bufferedAudioEngine_getCryptorIDForCryptor(v37);
    }

    v38 = *(DerivedStorage + 1048);
    if (v38)
    {
      *&v131 = bufferedAudioEngine_getMagicCookieIDForMagicCookieData(v38);
      v44 = *(DerivedStorage + 1064);
      if (v44 <= 9)
      {
        *(&v131 + 1) = *(DerivedStorage + 1048);
        *(DerivedStorage + 1064) = v44 + 1;
      }
    }

    v105 = *MEMORY[0x277CC0898];
    v111 = *(MEMORY[0x277CC0898] + 8);
    v113 = *(MEMORY[0x277CC0898] + 12);
    v39 = *(MEMORY[0x277CC0898] + 16);
    if (CFArrayGetCount(*(DerivedStorage + 1248)) >= 1)
    {
      *(&v137[2] + 1) = CFArrayGetValueAtIndex(*(DerivedStorage + 1248), 0);
      CMSetAttachment(a1, *MEMORY[0x277CD62C0], *(&v137[2] + 1), 1u);
      CFArrayRemoveValueAtIndex(*(DerivedStorage + 1248), 0);
      FigEndpointStreamAudioEngineSbufTracerDebugPrint();
    }

    if (*(a3 + 52))
    {
      time1 = *(a3 + 5);
      time.value = v109;
      *&time.flags = v144;
      time.timescale = v108;
      HIDWORD(time.epoch) = v145;
      v40 = v123;
      v41 = v121;
      v42 = v120;
      v43 = v122;
      if (CMTimeCompare(&time1, &time) < 0)
      {
        time1 = *(a3 + 5);
        time.value = value;
        *&time.flags = v148;
        time.timescale = timescale;
        HIDWORD(time.epoch) = epoch_high;
        v40 = v105;
        v42 = v111;
        v43 = v113;
        v41 = v39;
        if (CMTimeCompare(&time1, &time) >= 1)
        {
          time1 = *(a3 + 5);
          time.value = v109;
          *&time.flags = v144;
          time.timescale = v108;
          HIDWORD(time.epoch) = v145;
          v40 = v105;
          v42 = v111;
          v43 = v113;
          v41 = v39;
          if (CMTimeCompare(&time1, &time) < 0)
          {
            time = *(a3 + 5);
            rhs.value = value;
            *&rhs.flags = v148;
            rhs.timescale = timescale;
            HIDWORD(rhs.epoch) = epoch_high;
            CMTimeSubtract(&time1, &time, &rhs);
            v40 = time1.value;
            v42 = time1.timescale;
            v43 = time1.flags;
            v41 = time1.epoch;
          }
        }
      }

      if (v43)
      {
        if (gLogCategory_APAudioEngineBuffered <= 50 && (gLogCategory_APAudioEngineBuffered != -1 || _LogCategory_Initialize()))
        {
          if (v127)
          {
            v103 = (CMBaseObjectGetDerivedStorage() + 392);
          }

          else
          {
            v103 = "";
          }

          v101 = *(DerivedStorage + 530);
          time1.value = v40;
          time1.timescale = v42;
          time1.flags = v43;
          time1.epoch = v41;
          v45 = CMTimeGetSeconds(&time1);
          time1.value = v126;
          time1.timescale = v125;
          time1.flags = flags;
          time1.epoch = epoch;
          v46 = CMTimeGetSeconds(&time1);
          LogPrintF(&gLogCategory_APAudioEngineBuffered, "OSStatus bufferedAudioEngine_enqueueSingleSampleCompressedSBufCallback(CMSampleBufferRef, CMItemCount, void *)", 33554482, "BAE [%{ptr}] %s[0x%04X] Set APAP packet TrimAtStart extension with trim duration %1.3f seconds, Timestamp = %1.6f (%lld/%d)\n", v127, v103, v101, *&v45, *&v46, v126, v125);
        }

        *&v132 = v40;
        *(&v132 + 1) = __PAIR64__(v43, v42);
        *&v133 = v41;
      }
    }

    if (*(a3 + 76))
    {
      time1 = *(a3 + 8);
      time.value = value;
      *&time.flags = v148;
      time.timescale = timescale;
      HIDWORD(time.epoch) = epoch_high;
      v47 = CMTimeCompare(&time1, &time);
      v48 = v123;
      v49 = v121;
      v50 = v120;
      v51 = v122;
      if (v47 >= 1)
      {
        time1 = *(a3 + 8);
        time.value = value;
        *&time.flags = v148;
        time.timescale = timescale;
        HIDWORD(time.epoch) = epoch_high;
        if (CMTimeCompare(&time1, &time) < 1)
        {
          v48 = v105;
          v50 = v111;
          v51 = v113;
          v49 = v39;
        }

        else
        {
          time1 = *(a3 + 8);
          time.value = v109;
          *&time.flags = v144;
          time.timescale = v108;
          HIDWORD(time.epoch) = v145;
          v52 = CMTimeCompare(&time1, &time);
          v48 = v105;
          v50 = v111;
          v51 = v113;
          v49 = v39;
          if (v52 < 0)
          {
            time.value = v109;
            *&time.flags = v144;
            time.timescale = v108;
            HIDWORD(time.epoch) = v145;
            rhs = *(a3 + 8);
            CMTimeSubtract(&time1, &time, &rhs);
            v48 = time1.value;
            v50 = time1.timescale;
            v51 = time1.flags;
            v49 = time1.epoch;
          }
        }
      }

      if (v51)
      {
        if (gLogCategory_APAudioEngineBuffered <= 50)
        {
          if (gLogCategory_APAudioEngineBuffered != -1 || (v55 = v48, v56 = _LogCategory_Initialize(), v48 = v55, v56))
          {
            if (v127)
            {
              v53 = v48;
              v54 = CMBaseObjectGetDerivedStorage();
              v48 = v53;
              valuea = (v54 + 392);
            }

            else
            {
              valuea = "";
            }

            v114 = v48;
            v117 = *(DerivedStorage + 530);
            time1.value = v48;
            time1.timescale = v50;
            time1.flags = v51;
            time1.epoch = v49;
            v57 = CMTimeGetSeconds(&time1);
            time1.value = v126;
            time1.timescale = v125;
            time1.flags = flags;
            time1.epoch = epoch;
            v58 = CMTimeGetSeconds(&time1);
            LogPrintF(&gLogCategory_APAudioEngineBuffered, "OSStatus bufferedAudioEngine_enqueueSingleSampleCompressedSBufCallback(CMSampleBufferRef, CMItemCount, void *)", 33554482, "BAE [%{ptr}] %s[0x%04X] Set APAP packet TrimAtEnd extension with trim duration %1.3f seconds, Timestamp = %1.6f (%lld/%d)\n", v127, valuea, v117, *&v57, *&v58, v126, v125);
            v48 = v114;
          }
        }

        *(&v133 + 1) = v48;
        *&v134 = __PAIR64__(v51, v50);
        *(&v134 + 1) = v49;
      }
    }

    if (CMSampleBufferGetSampleTimingInfo(a1, 0, &timingInfoOut))
    {
      *(v137 + 12) = *MEMORY[0x277CC0898];
      *(&v137[1] + 12) = v39;
      APSSignalErrorAt();
    }

    else
    {
      *(v137 + 12) = *&timingInfoOut.duration.value;
      *(&v137[1] + 12) = timingInfoOut.duration.epoch;
    }

    SampleAttachmentsArray = CMSampleBufferGetSampleAttachmentsArray(a1, 0);
    v21 = SampleAttachmentsArray;
    if (SampleAttachmentsArray)
    {
      if (CFArrayGetCount(SampleAttachmentsArray) >= 1 && (ValueAtIndex = CFArrayGetValueAtIndex(v21, 0), (v61 = CFDictionaryGetValue(ValueAtIndex, *MEMORY[0x277CC1A90])) != 0))
      {
        v21 = CFUUIDCreateFromString(*MEMORY[0x277CBECE8], v61);
        *(&v136 + 1) = v21;
      }

      else
      {
        v21 = 0;
      }
    }

    if (*(DerivedStorage + 1232))
    {
      *&v135 = *(DerivedStorage + 1232);
    }

    *(&v135 + 1) = APSAudioFormatDescriptionGetFramesPerPacket();
    *&v136 = 0;
    APSAudioFormatDescriptionGetSampleRate();
    v63 = v62;
    v64 = CMBaseObjectGetDerivedStorage();
    *&time1.value = *MEMORY[0x277CC0898];
    time1.epoch = v39;
    *&time.value = *&time1.value;
    time.epoch = v39;
    if (flags)
    {
      v65 = v64;
      v66 = v127;
      if (CFArrayGetCount(*(v64 + 1104)) < 1 || (rhs.value = v126, rhs.timescale = v125, rhs.flags = flags, rhs.epoch = epoch, time2 = *(v65 + 780), CMTimeSubtract(&time, &rhs, &time2), CMTimeMake(&time2, FramesPerPacket, v63), lhs = time, CMTimeAdd(&rhs, &lhs, &time2), time = rhs, CFArrayGetCount(*(v65 + 1104)) < 1))
      {
        v67 = 0;
      }

      else
      {
        v67 = 0;
        v68 = 0;
        do
        {
          v69 = CFArrayGetValueAtIndex(*(v65 + 1104), v68);
          CMTimeMakeFromDictionary(&time1, v69);
          rhs = time;
          time2 = time1;
          if (CMTimeCompare(&rhs, &time2) < 0)
          {
            ++v68;
          }

          else
          {
            CFArrayRemoveValueAtIndex(*(v65 + 1104), v68);
            v67 = 1;
          }
        }

        while (v68 < CFArrayGetCount(*(v65 + 1104)));
      }
    }

    else
    {
      bufferedAudioEngine_enqueueSingleSampleCompressedSBufCallback_cold_3();
      v67 = 0;
      v66 = v127;
    }

    LOBYTE(v130) = v130 | v67;
    time1.value = v126;
    time1.timescale = v125;
    time1.flags = flags;
    time1.epoch = epoch;
    v70 = bufferedAudioEngine_encodeMessage(v66, cf, &time1.value, &v129, v107, &v138);
    if (v70)
    {
      value_low = v70;
      bufferedAudioEngine_enqueueSingleSampleCompressedSBufCallback_cold_4(v70);
      goto LABEL_139;
    }

    APSAudioFormatDescriptionGetSampleRate();
    CMTimeMake(&time1, FramesPerPacket, v71);
    time.value = v123;
    time.timescale = v120;
    time.flags = v122;
    time.epoch = v121;
    v72 = CMTimeCompare(&time, &time1);
    v73 = *v22;
    time.epoch = *(v22 + 16);
    *&time.value = v73;
    rhs.value = v123;
    rhs.timescale = v120;
    rhs.flags = v122;
    rhs.epoch = v121;
    CMTimeAdd(&time1, &time, &rhs);
    v74 = *&time1.value;
    *(v22 + 16) = time1.epoch;
    *v22 = v74;
    if (v72 < 0)
    {
      v75 = 50;
    }

    else
    {
      v75 = 30;
    }

    if (v75 >= gLogCategory_APAudioEngineBuffered && (gLogCategory_APAudioEngineBuffered != -1 || _LogCategory_Initialize()))
    {
      if (v66)
      {
        v76 = v66;
        v77 = (CMBaseObjectGetDerivedStorage() + 392);
      }

      else
      {
        v76 = 0;
        v77 = "";
      }

      time1.value = v123;
      time1.timescale = v120;
      time1.flags = v122;
      time1.epoch = v121;
      v78 = CMTimeGetSeconds(&time1);
      v79 = *v22;
      time1.epoch = *(v22 + 16);
      *&time1.value = v79;
      v80 = CMTimeGetSeconds(&time1);
      v81 = "T";
      if (v72 >= 0)
      {
        v81 = "F";
      }

      LogPrintF(&gLogCategory_APAudioEngineBuffered, "OSStatus bufferedAudioEngine_enqueueSingleSampleCompressedSBufCallback(CMSampleBufferRef, CMItemCount, void *)", v75 | 0x2000000u, "BAE [%{ptr}] %sReceived sample with duration:%1.3f, set nextRemoteMediaTimestamp to duration of the sample: %1.6f (%lld/%d)\n receivedTruncatedSbuf: %s", v76, v77, *&v78, *&v80, *v22, *(v22 + 8), v81);
      v66 = v76;
    }

    if (*(DerivedStorage + 1224))
    {
      v82 = *MEMORY[0x277CBECE8];
      time1.value = v126;
      time1.timescale = v125;
      time1.flags = flags;
      time1.epoch = epoch;
      v83 = CMTimeCopyAsDictionary(&time1, v82);
      if (v83)
      {
        v84 = v83;
        if (!CFDictionaryContainsKey(*(DerivedStorage + 1216), *(DerivedStorage + 1224)))
        {
          CMNotificationCenterGetDefaultLocalCenter();
          v85 = FigNotificationCenterAddWeakListener();
          if (v85)
          {
            value_low = v85;
            bufferedAudioEngine_enqueueSingleSampleCompressedSBufCallback_cold_5(v85);
            goto LABEL_138;
          }
        }

        CFDictionarySetValue(*(DerivedStorage + 1216), *(DerivedStorage + 1224), v84);
        v86 = *(DerivedStorage + 1048);
        if (!v86)
        {
LABEL_120:
          if (v106)
          {
            ++*(DerivedStorage + 984);
            time1.value = v126;
            time1.timescale = v125;
            time1.flags = flags;
            time1.epoch = epoch;
            time.value = v123;
            time.timescale = v120;
            time.flags = v122;
            time.epoch = v121;
            value_low = bufferedAudioEngine_enqueueMessageForSending(v66, v138, &time1.value, &time);
            if (value_low)
            {
              goto LABEL_122;
            }

LABEL_137:
            a3[4] += FramesPerPacket;
            ++*(DerivedStorage + 1208);
            if (!v84)
            {
              goto LABEL_139;
            }

            goto LABEL_138;
          }

          v89 = v138;
          v90 = CMBaseObjectGetDerivedStorage();
          if (v89)
          {
            v91 = v90;
            v92 = *MEMORY[0x277CBECE8];
            if (*(v90 + 624) || (Mutable = CFArrayCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF128]), (*(v91 + 624) = Mutable) != 0))
            {
              time1.value = v126;
              time1.timescale = v125;
              time1.flags = flags;
              time1.epoch = epoch;
              v94 = CMTimeCopyAsDictionary(&time1, v92);
              if (v94)
              {
                v95 = v94;
                time1.value = v123;
                time1.timescale = v120;
                time1.flags = v122;
                time1.epoch = v121;
                v96 = CMTimeCopyAsDictionary(&time1, v92);
                if (v96)
                {
                  v97 = v96;
                  time1.value = v89;
                  *&time1.timescale = v95;
                  time1.epoch = v96;
                  v98 = CFArrayCreate(v92, &time1, 3, MEMORY[0x277CBF128]);
                  if (v98)
                  {
                    CFArrayAppendValue(*(v91 + 624), v98);
                    value_low = 0;
                  }

                  else
                  {
                    bufferedAudioEngine_enqueueSingleSampleCompressedSBufCallback_cold_8();
                    value_low = 4294951816;
                  }

                  CFRelease(v97);
                  CFRelease(v95);
                  if (v98)
                  {
                    CFRelease(v98);
                  }

LABEL_133:
                  if (gLogCategory_APAudioEngineBuffered <= 10 && (gLogCategory_APAudioEngineBuffered != -1 || _LogCategory_Initialize()))
                  {
                    bufferedAudioEngine_enqueueSingleSampleCompressedSBufCallback_cold_13();
                    if (!value_low)
                    {
                      goto LABEL_137;
                    }
                  }

                  else if (!value_low)
                  {
                    goto LABEL_137;
                  }

LABEL_122:
                  bufferedAudioEngine_enqueueSingleSampleCompressedSBufCallback_cold_14(value_low);
                  if (!v84)
                  {
                    goto LABEL_139;
                  }

LABEL_138:
                  CFRelease(v84);
                  goto LABEL_139;
                }

                bufferedAudioEngine_enqueueSingleSampleCompressedSBufCallback_cold_9(v95);
              }

              else
              {
                bufferedAudioEngine_enqueueSingleSampleCompressedSBufCallback_cold_10();
              }
            }

            else
            {
              bufferedAudioEngine_enqueueSingleSampleCompressedSBufCallback_cold_11();
            }

            value_low = 4294951816;
            goto LABEL_133;
          }

          bufferedAudioEngine_enqueueSingleSampleCompressedSBufCallback_cold_12();
          value_low = 4294951815;
          goto LABEL_133;
        }

LABEL_119:
        CFDictionarySetValue(*(DerivedStorage + 1056), v86, v84);
        goto LABEL_120;
      }

      bufferedAudioEngine_enqueueSingleSampleCompressedSBufCallback_cold_6();
    }

    else
    {
      if (!*(DerivedStorage + 1048))
      {
        v84 = 0;
        goto LABEL_120;
      }

      v87 = *MEMORY[0x277CBECE8];
      time1.value = v126;
      time1.timescale = v125;
      time1.flags = flags;
      time1.epoch = epoch;
      v88 = CMTimeCopyAsDictionary(&time1, v87);
      if (v88)
      {
        v84 = v88;
        v86 = *(DerivedStorage + 1048);
        goto LABEL_119;
      }

      bufferedAudioEngine_enqueueSingleSampleCompressedSBufCallback_cold_7();
    }

    value_low = 4294951816;
    goto LABEL_139;
  }

  value_low = 4294895201;
  if (gLogCategory_APAudioEngineBuffered <= 90 && (gLogCategory_APAudioEngineBuffered != -1 || _LogCategory_Initialize()))
  {
    bufferedAudioEngine_enqueueSingleSampleCompressedSBufCallback_cold_2();
  }

  v21 = 0;
LABEL_139:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v138)
  {
    CFRelease(v138);
  }

  if (v21)
  {
    CFRelease(v21);
  }

  return value_low;
}

uint64_t bufferedAudioEngine_startPlaybackIfNecessary(const void *a1, int a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v5 = DerivedStorage;
  if (!*(DerivedStorage + 881))
  {
    if (gLogCategory_APAudioEngineBuffered <= 10 && (gLogCategory_APAudioEngineBuffered != -1 || _LogCategory_Initialize()))
    {
      bufferedAudioEngine_startPlaybackIfNecessary_cold_13();
    }

    return 0;
  }

  v6 = *(DerivedStorage + 884);
  if (v6 == 7)
  {
    if (*(DerivedStorage + 936))
    {
      v11 = *(DerivedStorage + 928);
      if (v11 <= mach_absolute_time())
      {
        HoseDecriptorFromHose = bufferedAudioEngine_getHoseDecriptorFromHose(a1, *(v5 + 944));
        if (!HoseDecriptorFromHose || !*(HoseDecriptorFromHose + 176))
        {
          *(v5 + 936) = 0;
          *(v5 + 928) = 0;
          if (bufferedAudioEngine_shouldUseReceiverChoosesAnchor(a1))
          {
            if (gLogCategory_APAudioEngineBuffered <= 50 && (gLogCategory_APAudioEngineBuffered != -1 || _LogCategory_Initialize()))
            {
              bufferedAudioEngine_startPlaybackIfNecessary_cold_4();
            }

            v19 = bufferedAudioEngine_handleSetRateToOneWithReceiverAnchor(a1);
            v10 = v19;
            if (v19)
            {
              bufferedAudioEngine_startPlaybackIfNecessary_cold_5(v19);
            }
          }

          else
          {
            v16 = *(v5 + 944);
            if (v16)
            {
              CFRelease(v16);
              *(v5 + 944) = 0;
            }

            if (gLogCategory_APAudioEngineBuffered <= 50 && (gLogCategory_APAudioEngineBuffered != -1 || _LogCategory_Initialize()))
            {
              bufferedAudioEngine_startPlaybackIfNecessary_cold_6();
            }

            bufferedAudioEngine_updatePlaybackState(a1, 6);
            v17 = bufferedAudioEngine_handleSetRateToOne(a1);
            v10 = v17;
            if (v17)
            {
              bufferedAudioEngine_startPlaybackIfNecessary_cold_7(v17);
            }
          }

          return v10;
        }

        if (gLogCategory_APAudioEngineBuffered <= 50 && (gLogCategory_APAudioEngineBuffered != -1 || _LogCategory_Initialize()))
        {
          bufferedAudioEngine_startPlaybackIfNecessary_cold_3();
        }

        *(v5 + 936) = 0;
        *(v5 + 928) = 0;
        if (a1)
        {
          CFRetain(a1);
        }

        APSAudioProtocolDriverHoseControlGetAnchor(*(v5 + 944), a1);
      }
    }

    return 0;
  }

  if (v6 == 8)
  {
    if (a2 || *(DerivedStorage + 840) || *(DerivedStorage + 936) && (v13 = *(DerivedStorage + 928), v13 <= mach_absolute_time()))
    {
      if (gLogCategory_APAudioEngineBuffered <= 50 && (gLogCategory_APAudioEngineBuffered != -1 || _LogCategory_Initialize()))
      {
        bufferedAudioEngine_startPlaybackIfNecessary_cold_1();
      }

      v15 = bufferedAudioEngine_handleSetRateToOne_sendAnchorToAllHoses(a1);
      v10 = v15;
      if (v15)
      {
        bufferedAudioEngine_startPlaybackIfNecessary_cold_2(v15);
      }

      return v10;
    }

    return 0;
  }

  if (v6 != 5)
  {
    return 0;
  }

  if (gLogCategory_APAudioEngineBuffered <= 50 && (gLogCategory_APAudioEngineBuffered != -1 || _LogCategory_Initialize()))
  {
    bufferedAudioEngine_startPlaybackIfNecessary_cold_8();
  }

  if (*(v5 + 916))
  {
    v8 = gLogCategory_APAudioEngineBuffered;
  }

  else
  {
    shouldUseReceiverChoosesAnchor = bufferedAudioEngine_shouldUseReceiverChoosesAnchor(a1);
    v8 = gLogCategory_APAudioEngineBuffered;
    if (shouldUseReceiverChoosesAnchor)
    {
      if (gLogCategory_APAudioEngineBuffered <= 50 && (gLogCategory_APAudioEngineBuffered != -1 || _LogCategory_Initialize()))
      {
        bufferedAudioEngine_startPlaybackIfNecessary_cold_9();
      }

      bufferedAudioEngine_updatePlaybackState(a1, 7);
      v9 = bufferedAudioEngine_handleSetRateToOneWithReceiverAnchor(a1);
      v10 = v9;
      if (v9)
      {
        bufferedAudioEngine_startPlaybackIfNecessary_cold_10(v9);
      }

      return v10;
    }
  }

  if (v8 <= 50 && (v8 != -1 || _LogCategory_Initialize()))
  {
    bufferedAudioEngine_startPlaybackIfNecessary_cold_11();
  }

  bufferedAudioEngine_updatePlaybackState(a1, 6);
  v18 = bufferedAudioEngine_handleSetRateToOne(a1);
  v10 = v18;
  if (v18)
  {
    bufferedAudioEngine_startPlaybackIfNecessary_cold_12(v18);
  }

  return v10;
}

void bufferedAudioEngine_updateHosesPrimed(uint64_t a1, uint64_t a2, int a3, _DWORD *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v55 = mach_absolute_time();
  v8 = CMBaseObjectGetDerivedStorage();
  CMBaseObjectGetDerivedStorage();
  v9 = 888;
  if ((*(v8 + 884) - 5) < 3)
  {
    v9 = 896;
  }

  v10 = *(v8 + v9);
  v58 = **&MEMORY[0x277CC0898];
  v11 = *(DerivedStorage + 640);
  if (v11)
  {
    v12 = 0;
    v13 = 0;
    v14 = 0;
    v15 = 0;
    v52 = (DerivedStorage + 1080);
    v16 = &gLogCategory_APEndpointPlaybackSessionRemoteControl;
    v53 = a2;
    while (1)
    {
      v17 = v16[594];
      if (v17 <= 10 && (v17 != -1 || _LogCategory_Initialize()))
      {
        bufferedAudioEngine_updateHosesPrimed_cold_1(a1 == 0, v11, a1);
      }

      bufferedAudioEngine_getBufferLevelTimeEstimateForHose(v11, &v58);
      if (v11[9].n128_u32[1])
      {
        goto LABEL_41;
      }

      v56 = v13;
      v57 = v14;
      v18 = v11[5].n128_u64[0];
      if (*(DerivedStorage + 1092))
      {
        time1 = v58;
        *&time2.value = *v52;
        time2.epoch = *(DerivedStorage + 1096);
        v19 = CMTimeCompare(&time1, &time2) >= 0;
      }

      else
      {
        v19 = 0;
      }

      if (*(DerivedStorage + 1224))
      {
        v20 = v11[13].n128_u8[4] != 0;
      }

      else
      {
        v20 = 1;
      }

      v22 = v10 != 0.0 && v55 - v18 >= a2;
      v23 = CMBaseObjectGetDerivedStorage();
      v24 = (v11[9].n128_u32[0] >= v11[10].n128_u32[1] || (v36 = v23, bufferedAudioEngine_getBufferLevelTimeEstimateForHose(v11, &time1), time2 = *(v36 + 160), CMTimeCompare(&time1, &time2) >= 1)) && v20;
      v25 = v24 || v19 && v20;
      v13 = v56;
      if (a3)
      {
        v26 = 0;
        v27 = v25 | v22;
        a2 = v53;
        v14 = v57;
        v16 = &gLogCategory_APEndpointPlaybackSessionRemoteControl;
        if ((v27 & 1) == 0)
        {
          goto LABEL_40;
        }
      }

      else
      {
        v26 = v22 & ~v25 & 1;
        a2 = v53;
        v14 = v57;
        v16 = &gLogCategory_APEndpointPlaybackSessionRemoteControl;
        if ((v25 & 1) == 0)
        {
          goto LABEL_40;
        }
      }

      v51 = v26;
      v11[9].n128_u32[1] = 1;
      v28 = v16[594];
      if (v28 <= 50 && (v28 != -1 || _LogCategory_Initialize()))
      {
        v37 = "";
        if (a1)
        {
          v37 = (CMBaseObjectGetDerivedStorage() + 392);
        }

        v50 = v37;
        v49 = *(DerivedStorage + 530);
        v47 = v11[16].n128_u64[1];
        v48 = v11[1].n128_u64[0];
        bufferedAudioEngine_getBufferLevelTimeEstimateForHose(v11, &time1);
        Seconds = CMTimeGetSeconds(&time1);
        time1 = *(DerivedStorage + 160);
        v39 = CMTimeGetSeconds(&time1);
        v40 = v11[9].n128_u32[0];
        v41 = v11[10].n128_u32[2];
        v42 = UpTicksToMilliseconds();
        if (v10 == 0.0)
        {
          v44 = INFINITY;
          v43 = "(Stopped)";
        }

        else
        {
          if (*(DerivedStorage + 880))
          {
            v43 = "(Started)";
          }

          else
          {
            v43 = "";
          }

          v44 = UpTicksToMilliseconds() / 1000.0;
        }

        bufferedAudioEngine_getSentBufferLevelTime(v11, &time1);
        v45 = CMTimeGetSeconds(&time1);
        *&time1.value = *v52;
        time1.epoch = *(DerivedStorage + 1096);
        v46 = CMTimeGetSeconds(&time1);
        LogPrintF(&gLogCategory_APAudioEngineBuffered, "void bufferedAudioEngine_updateHosesPrimed(FigEndpointStreamAudioEngineRef, uint64_t, Boolean, APAudioEngineBufferedPrimingStats *)", 33554482, "BAE [%{ptr}] %s[0x%04X] (startup) Hose [%{ptr}] (%@) Buffering -> Primed because bufferLevelTime %1.3f >= startWatermarkTime %1.3f || bufferLevelBytes %d >= startWatermarkBytes %d || burstStartTimeUpSecs %1.3f >= maxWait%sSecs %1.3f || bufferLevelTime %1.3f >= expectedAudioDuration %1.3f\n", a1, v50, v49, v48, v47, *&Seconds, *&v39, v40, v41, v42 / 1000.0, v43, *&v44, *&v45, *&v46);
        a2 = v53;
      }

      v29 = LogCategoryCopyOSLogHandle();
      v30 = v29;
      if (v29)
      {
        v31 = v29;
      }

      else
      {
        v31 = MEMORY[0x277D86220];
      }

      v32 = CUObfuscatedPtr();
      if (v32)
      {
        v33 = v32;
        if (os_signpost_enabled(v31))
        {
          LOWORD(time1.value) = 0;
          _os_signpost_emit_with_name_impl(&dword_221FFA000, v31, OS_SIGNPOST_EVENT, v33, "AIRPLAY_SIGNPOST_AUDIOENGINE_HOSE_PRIMED", &unk_2222A918B, &time1, 2u);
        }
      }

      v13 = v56;
      if (v30)
      {
        os_release(v30);
      }

      CUObfuscatedPtr();
      bufferedAudioEngine_getSentBufferLevelTime(v11, &time1);
      CMTimeGetSeconds(&time1);
      kdebug_trace();
      v14 = v57;
      v16 = &gLogCategory_APEndpointPlaybackSessionRemoteControl;
      v26 = v51;
LABEL_40:
      if (!v11[9].n128_u32[1])
      {
        v13 += v26;
        time1 = v58;
        v34 = CMTimeGetSeconds(&time1);
        UpTicksToSecondsF();
        if (v34 < v35)
        {
          ++v14;
        }

        goto LABEL_42;
      }

LABEL_41:
      ++v12;
LABEL_42:
      v11 = v11->n128_u64[0];
      ++v15;
      if (!v11)
      {
        goto LABEL_59;
      }
    }
  }

  v15 = 0;
  v14 = 0;
  v13 = 0;
  v12 = 0;
LABEL_59:
  if (a4)
  {
    *a4 = v12;
    a4[1] = v13;
    a4[2] = v14;
    a4[3] = v15;
  }
}

uint64_t APSAudioProtocolDriverHoseControlGetAnchor(const void *a1, const void *a2)
{
  APSAudioProtocolDriverHoseControlProtocolGetProtocolID();
  result = CMBaseObjectGetProtocolVTable();
  if (result)
  {
    v6 = *(result + 16);
    result += 16;
    v5 = v6;
    if (v6)
    {
      v7 = *(v5 + 64);
      if (v7)
      {

        return v7(a1, 1, bufferedAudioEngine_hoseGetAnchorCallbackCompletionHandler, a2);
      }

      else
      {
        v8 = MEMORY[0x277CEA038];
        v9 = MEMORY[0x277CEA280];

        return bufferedAudioEngine_hoseGetAnchorCallbackCompletionHandler(a1, v8, v9, 0xFFFFCE12, a2);
      }
    }
  }

  return result;
}

uint64_t bufferedAudioEngine_hoseGetAnchorCallbackCompletionHandler(const void *a1, _OWORD *a2, uint64_t a3, unsigned int a4, const void *a5)
{
  CMBaseObjectGetDerivedStorage();
  APSPriorityDispatcherSyncF();
  if (a5)
  {
    CFRelease(a5);
  }

  return 0;
}

uint64_t bufferedAudioEngine_hoseSetRateCallbackCompletionHandler(const void *a1, _OWORD *a2, uint64_t a3, unsigned int a4, const void *a5)
{
  CMBaseObjectGetDerivedStorage();
  APSPriorityDispatcherSyncF();
  if (a5)
  {
    CFRelease(a5);
  }

  return 0;
}

void bufferedAudioEngine_handleErrorWithReceiverAnchor(const void *a1, uint64_t a2, uint64_t a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  HoseDecriptorFromHose = bufferedAudioEngine_getHoseDecriptorFromHose(a1, a2);
  if (HoseDecriptorFromHose)
  {
    if (*(HoseDecriptorFromHose + 43) < 0x32u)
    {
      if (*(DerivedStorage + 884) == 7 && !*(DerivedStorage + 936))
      {
        v9 = MicrosecondsToUpTicks();
        *(DerivedStorage + 928) = mach_absolute_time() + v9;
        *(DerivedStorage + 936) = 1;
      }
    }

    else
    {
      *(HoseDecriptorFromHose + 43) = 0;
      bufferedAudioEngine_callSetRateAndAnchorTimeClientCompletionCallback(a1, a3, MEMORY[0x277CC0898], MEMORY[0x277CC0898], 0, *(DerivedStorage + 952), *(DerivedStorage + 960), *(DerivedStorage + 896));
      *(DerivedStorage + 952) = 0u;
      bufferedAudioEngine_handleTerminalSetRateError(a1, a2, a3);
      v8 = *(DerivedStorage + 944);
      if (v8)
      {
        CFRelease(v8);
        *(DerivedStorage + 944) = 0;
      }
    }
  }

  else
  {
    bufferedAudioEngine_handleErrorWithReceiverAnchor_cold_1();
  }
}

uint64_t bufferedAudioEngine_hoseSetRateAndAnchorTimeCallbackCompletionHandler(const void *a1, int a2, _OWORD *a3, __int128 *a4, _OWORD *a5, uint64_t a6, int a7, const void *a8)
{
  CMBaseObjectGetDerivedStorage();
  APSPriorityDispatcherSyncF();
  if (a8)
  {
    CFRelease(a8);
  }

  return 0;
}

void bufferedAudioEngine_handleTerminalSetRateError(uint64_t a1, uint64_t a2, uint64_t a3)
{
  CMBaseObjectGetDerivedStorage();
  HoseDecriptorFromHose = bufferedAudioEngine_getHoseDecriptorFromHose(a1, a2);
  if (HoseDecriptorFromHose)
  {
    v7 = HoseDecriptorFromHose;
    if (gLogCategory_APAudioEngineBuffered <= 90 && (gLogCategory_APAudioEngineBuffered != -1 || _LogCategory_Initialize()))
    {
      bufferedAudioEngine_handleTerminalSetRateError_cold_1();
    }

    Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    if (Mutable)
    {
      FigCFDictionarySetInt32();
      CFDictionarySetValue(Mutable, *MEMORY[0x277CC17E0], @"Too many retries setting the rate to 1");
    }

    CMNotificationCenterGetDefaultLocalCenter();
    FigDispatchAsyncPostNotification();
    if (a3 == -71976)
    {
      v9 = @"SetRate 1 failed due to not agreeing on grandmaster";
      v10 = a1;
      v11 = 4294895320;
    }

    else
    {
      v9 = @"SetRate 1 failed due to error";
      v10 = a1;
      v11 = a3;
    }

    bufferedAudioEngine_sendSessionFailureEvent(v10, v9, v11);
    bufferedAudioEngine_maybeTriggerTTR(a1, a2, v7[33], a3);
    if (Mutable)
    {

      CFRelease(Mutable);
    }
  }

  else if (gLogCategory_APAudioEngineBuffered <= 90 && (gLogCategory_APAudioEngineBuffered != -1 || _LogCategory_Initialize()))
  {
    bufferedAudioEngine_handleTerminalSetRateError_cold_2();
  }
}

CMTime *bufferedAudioEngine_getPlaybackStartupTime@<X0>(CMTime *a2@<X8>)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  *a2 = **&MEMORY[0x277CC0898];
  result = *(DerivedStorage + 968);
  if (result)
  {
    result = FigCFDictionaryGetInt64IfPresent();
    if (result)
    {
      result = FigCFDictionaryGetInt64IfPresent();
      if (result)
      {
        v5 = UpTicksToMilliseconds();
        return CMTimeMake(a2, v5, 1000);
      }
    }
  }

  return result;
}

void bufferedAudioEngine_getStreamInfoForStartup(uint64_t a1, float *a2, float *a3, float *a4, _WORD *a5, char *a6, _WORD *a7, _WORD *a8)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v13 = *(DerivedStorage + 640);
  cf[0] = 0;
  v14 = 0.0;
  if (v13)
  {
    v28 = a5;
    v29 = a6;
    v30 = a7;
    v31 = a8;
    v15 = 0;
    Mutable = 0;
    v17 = 0;
    v18 = 0;
    v32 = *MEMORY[0x277CE9F70];
    v19 = 0.0;
    v20 = 99999.0;
    v21 = -99999.0;
    do
    {
      memset(&v38, 0, sizeof(v38));
      bufferedAudioEngine_getSentBufferLevelTime(v13, &v38);
      time = v38;
      Seconds = CMTimeGetSeconds(&time);
      time = v38;
      time2 = *(DerivedStorage + 160);
      v23 = CMTimeCompare(&time, &time2);
      if (v20 >= Seconds)
      {
        v20 = Seconds;
      }

      if (v21 <= Seconds)
      {
        v21 = Seconds;
      }

      if (v13[2].n128_u8[0])
      {
        v17 = 1;
      }

      isHoseInStereoPair = bufferedAudioEngine_isHoseInStereoPair(v13[1].n128_i64[0]);
      if (cf[0])
      {
        CFRelease(cf[0]);
        cf[0] = 0;
      }

      v25 = v13[1].n128_u64[0];
      v26 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      if (v26)
      {
        v26(v25, v32, 0, cf);
      }

      if (isHoseInStereoPair)
      {
        if (!Mutable)
        {
          Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], 0);
        }

        if (CFDictionaryContainsKey(Mutable, cf[0]))
        {
          CFDictionarySetValue(Mutable, cf[0], 2);
          ++v15;
        }

        else
        {
          CFDictionarySetValue(Mutable, cf[0], 1);
        }
      }

      v19 = v19 + Seconds;
      v18 += v23 >> 31;
      v13 = v13->n128_u64[0];
    }

    while (v13);
    LOWORD(v13) = v15;
    a7 = v30;
    a8 = v31;
    a5 = v28;
    a6 = v29;
  }

  else
  {
    LOWORD(v18) = 0;
    v17 = 0;
    Mutable = 0;
    v21 = -99999.0;
    v20 = 99999.0;
    v19 = 0.0;
  }

  v27 = *(DerivedStorage + 648);
  if (v27)
  {
    v14 = v19 / v27;
  }

  *a2 = v14;
  *a3 = v20;
  *a4 = v21;
  *a5 = v18;
  *a6 = v17;
  *a7 = FigCFDictionaryGetCount();
  *a8 = FigCFDictionaryGetCount() - v13;
  if (cf[0])
  {
    CFRelease(cf[0]);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }
}

void bufferedAudioEngine_setEndpointStreamInternalStage1(uint64_t *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APAudioEngineBuffered <= 50 && (gLogCategory_APAudioEngineBuffered != -1 || _LogCategory_Initialize()))
  {
    bufferedAudioEngine_setEndpointStreamInternalStage1_cold_1(a1);
  }

  if (!*(DerivedStorage + 528))
  {
    bufferedAudioEngine_setEndpointStreamInternalStage1_cold_10();
    v33 = -15485;
LABEL_90:
    *(a1 + 8) = v33;
    goto LABEL_91;
  }

  v4 = a1 + 1;
  v3 = a1[1];
  if (*(DerivedStorage + 592) == v3)
  {
LABEL_91:
    v34 = *(DerivedStorage + 344);

    dispatch_async_f(v34, a1, bufferedAudioEngine_setEndpointStreamInternalStageEnd);
    return;
  }

  if (v3)
  {
    v5 = FigEndpointStreamSuspend();
    if (v5)
    {
      v33 = v5;
      bufferedAudioEngine_setEndpointStreamInternalStage1_cold_2(v5);
      goto LABEL_90;
    }
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APAudioEngineBuffered <= 50 && (gLogCategory_APAudioEngineBuffered != -1 || _LogCategory_Initialize()))
  {
    bufferedAudioEngine_setEndpointStreamInternalStage1_cold_3(a1);
  }

  if (!*(DerivedStorage + 592))
  {
    goto LABEL_16;
  }

  CMNotificationCenterGetDefaultLocalCenter();
  v6 = FigNotificationCenterRemoveWeakListeners();
  if (v6)
  {
    v33 = v6;
    bufferedAudioEngine_setEndpointStreamInternalStage1_cold_4(v6);
    goto LABEL_90;
  }

  v7 = FigEndpointStreamSuspend();
  if (v7)
  {
    v33 = v7;
    bufferedAudioEngine_setEndpointStreamInternalStage1_cold_5(v7);
    goto LABEL_90;
  }

  v8 = *(DerivedStorage + 592);
  if (v8)
  {
    CFRelease(v8);
    *(DerivedStorage + 592) = 0;
  }

LABEL_16:
  v9 = CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APAudioEngineBuffered <= 50 && (gLogCategory_APAudioEngineBuffered != -1 || _LogCategory_Initialize()))
  {
    bufferedAudioEngine_setEndpointStreamInternalStage1_cold_6(a1);
  }

  if (*v4)
  {
    v10 = APSGetFBOPropertyInt64();
    v11 = APSGetFBOPropertyInt64();
    v12 = *(v9 + 576);
    if (APSSettingsGetIntWithDefault())
    {
      v13 = v10 == 0;
    }

    else
    {
      v13 = 1;
    }

    v14 = !v13;
    if (v12 == v14)
    {
      if (*(v9 + 64))
      {
        v15 = v11 == 0;
      }

      else
      {
        v15 = 1;
      }

      v16 = !v15;
      if (*(v9 + 577) == v16)
      {
        v35 = 0;
        if (gLogCategory_APAudioEngineBuffered <= 50 && (gLogCategory_APAudioEngineBuffered != -1 || _LogCategory_Initialize()))
        {
          bufferedAudioEngine_setEndpointStreamInternalStage1_cold_8(v9, &v35, a1);
        }

        Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
        if (Mutable)
        {
          FigCFDictionarySetValue();
          FigCFDictionarySetValue();
          FigCFDictionarySetValue();
          FigCFDictionarySetValue();
          FigCFDictionarySetValue();
          FigCFDictionarySetValue();
          FigCFDictionarySetValue();
          FigCFDictionarySetValue();
          FigCFDictionarySetValue();
          v18 = *MEMORY[0x277CBED28];
          v19 = *MEMORY[0x277CBED10];
          if (*(v9 + 576))
          {
            v20 = *MEMORY[0x277CBED28];
          }

          else
          {
            v20 = *MEMORY[0x277CBED10];
          }

          CFDictionarySetValue(Mutable, @"UseAPAP", v20);
          if (APSSettingsGetIntWithDefault())
          {
            v21 = v18;
          }

          else
          {
            v21 = v19;
          }

          CFDictionarySetValue(Mutable, @"PrefersAPAP", v21);
          if (*(v9 + 577))
          {
            v22 = v18;
          }

          else
          {
            v22 = v19;
          }

          CFDictionarySetValue(Mutable, @"UseAPAT", v22);
          if (*(v9 + 64))
          {
            v23 = v18;
          }

          else
          {
            v23 = v19;
          }

          CFDictionarySetValue(Mutable, @"PrefersAPAT", v23);
          FigCFDictionarySetValue();
          kdebug_trace();
          v24 = a1[1];
          v25 = *(*(CMBaseObjectGetVTable() + 16) + 16);
          if (v25)
          {
            v26 = v25(v24, Mutable, bufferedAudioEngine_setEndpointStreamInternalStage4, a1);
            if (!v26)
            {
LABEL_83:
              CFRelease(Mutable);
              return;
            }

            v27 = v26;
          }

          else
          {
            v27 = -12782;
          }

          APSLogErrorAt();
        }

        else
        {
          bufferedAudioEngine_setEndpointStreamInternalStage1_cold_9();
          v27 = -12786;
        }

LABEL_82:
        *(a1 + 8) = v27;
        dispatch_async_f(*(v9 + 344), a1, bufferedAudioEngine_setEndpointStreamInternalStageEnd);
        if (!Mutable)
        {
          return;
        }

        goto LABEL_83;
      }

      if (gLogCategory_APAudioEngineBuffered <= 50 && (gLogCategory_APAudioEngineBuffered != -1 || _LogCategory_Initialize()))
      {
        v28 = *a1;
        if (*a1)
        {
          v29 = (CMBaseObjectGetDerivedStorage() + 392);
        }

        else
        {
          v29 = "";
        }

        if (*(v9 + 577))
        {
          v30 = "APAT";
        }

        else
        {
          v30 = "Legacy";
        }

        if (*(v9 + 64))
        {
          v31 = "T";
        }

        else
        {
          v31 = "F";
        }

        v32 = "n't";
        if (v11)
        {
          v32 = "";
        }

        LogPrintF(&gLogCategory_APAudioEngineBuffered, "void bufferedAudioEngine_setEndpointStreamInternalStage3(void *)", 33554482, "BAE [%{ptr}] %sresumed for %s, APAT enabled %s, stream [%{ptr}] does%s support APAT. Posting 'ActiveConfigurationDidBecomeInvalid'!\n", v28, v29, v30, v31, *v4, v32);
      }
    }

    else if (gLogCategory_APAudioEngineBuffered <= 50 && (gLogCategory_APAudioEngineBuffered != -1 || _LogCategory_Initialize()))
    {
      bufferedAudioEngine_setEndpointStreamInternalStage1_cold_7(a1, (v9 + 576), a1 + 1, v10 != 0);
    }

    CMNotificationCenterGetDefaultLocalCenter();
    FigDispatchAsyncPostNotification();
    Mutable = 0;
    v27 = -6734;
    goto LABEL_82;
  }

  bufferedAudioEngine_setEndpointStreamInternalStage5(a1);
}

void bufferedAudioEngine_setEndpointStreamInternalStageEnd(uint64_t *a1)
{
  CMBaseObjectGetDerivedStorage();
  kdebug_trace();
  v2 = LogCategoryCopyOSLogHandle();
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  else
  {
    v4 = MEMORY[0x277D86220];
  }

  v5 = CUObfuscatedPtr();
  if (v5)
  {
    v6 = v5;
    if (os_signpost_enabled(v4))
    {
      *v9 = 0;
      _os_signpost_emit_with_name_impl(&dword_221FFA000, v4, OS_SIGNPOST_INTERVAL_END, v6, "AIRPLAY_SIGNPOST_AUDIOENGINE_SETENDPOINTSTREAM_INTERVAL", &unk_2222A918B, v9, 2u);
    }
  }

  if (v3)
  {
    os_release(v3);
  }

  if (gLogCategory_APAudioEngineBuffered <= 50 && (gLogCategory_APAudioEngineBuffered != -1 || _LogCategory_Initialize()))
  {
    bufferedAudioEngine_setEndpointStreamInternalStageEnd_cold_1(a1);
  }

  v7 = a1[2];
  if (v7)
  {
    v7(*a1, *(a1 + 8), a1[3]);
  }

  APSDispatchSectionLeave();
  if (*a1)
  {
    CFRelease(*a1);
  }

  v8 = a1[1];
  if (v8)
  {
    CFRelease(v8);
  }

  free(a1);
}

void bufferedAudioEngine_setEndpointStreamInternalStage4(uint64_t a1, int a2, uint64_t *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  kdebug_trace();
  if (gLogCategory_APAudioEngineBuffered <= 50 && (gLogCategory_APAudioEngineBuffered != -1 || _LogCategory_Initialize()))
  {
    bufferedAudioEngine_setEndpointStreamInternalStage4_cold_1(a3);
    if (a2)
    {
      goto LABEL_5;
    }
  }

  else if (a2)
  {
LABEL_5:
    *(a3 + 8) = a2;
    v6 = *(DerivedStorage + 344);

    dispatch_async_f(v6, a3, bufferedAudioEngine_setEndpointStreamInternalStageEnd);
    return;
  }

  APSPriorityDispatcherAsyncF();
}

void bufferedAudioEngine_setEndpointStreamInternalStage5(uint64_t *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APAudioEngineBuffered <= 50 && (gLogCategory_APAudioEngineBuffered != -1 || _LogCategory_Initialize()))
  {
    bufferedAudioEngine_setEndpointStreamInternalStage5_cold_1(a1);
  }

  if (a1[1])
  {
    CMNotificationCenterGetDefaultLocalCenter();
    v3 = FigNotificationCenterAddWeakListeners();
    if (v3)
    {
      v14 = v3;
      bufferedAudioEngine_setEndpointStreamInternalStage5_cold_2(v3);
      goto LABEL_39;
    }

    v4 = APSGetFBOPropertyInt64();
    v5 = *(DerivedStorage + 576);
    if (APSSettingsGetIntWithDefault())
    {
      v6 = v4 == 0;
    }

    else
    {
      v6 = 1;
    }

    v7 = !v6;
    if (v5 == v7)
    {
      v8 = APSGetFBOPropertyInt64();
      if (*(DerivedStorage + 64))
      {
        v9 = v8 == 0;
      }

      else
      {
        v9 = 1;
      }

      v10 = !v9;
      if (*(DerivedStorage + 577) == v10)
      {
        v11 = a1[1];
        v12 = (DerivedStorage + 592);
        v13 = *(DerivedStorage + 592);
        *(DerivedStorage + 592) = v11;
        if (v11)
        {
          CFRetain(v11);
        }

        goto LABEL_23;
      }

      if (gLogCategory_APAudioEngineBuffered <= 50 && (gLogCategory_APAudioEngineBuffered != -1 || _LogCategory_Initialize()))
      {
        bufferedAudioEngine_setEndpointStreamInternalStage5_cold_4();
      }
    }

    else if (gLogCategory_APAudioEngineBuffered <= 50 && (gLogCategory_APAudioEngineBuffered != -1 || _LogCategory_Initialize()))
    {
      bufferedAudioEngine_setEndpointStreamInternalStage5_cold_3();
    }

    CMNotificationCenterGetDefaultLocalCenter();
    FigNotificationCenterRemoveWeakListeners();
    FigEndpointStreamSuspend();
    CMNotificationCenterGetDefaultLocalCenter();
    FigDispatchAsyncPostNotification();
    v14 = -6734;
    goto LABEL_39;
  }

  v12 = (DerivedStorage + 592);
  v13 = *(DerivedStorage + 592);
  *(DerivedStorage + 592) = 0;
LABEL_23:
  if (v13)
  {
    CFRelease(v13);
  }

  if (*v12 && APSGetFBOPropertyInt64() && *(DerivedStorage + 392) && !strstr((DerivedStorage + 392), "-SP"))
  {
    *(strlen((DerivedStorage + 392)) + DerivedStorage + 392 - 1) = 0;
    __strlcat_chk();
    __strlcat_chk();
  }

  v14 = 0;
LABEL_39:
  *(a1 + 8) = v14;
  dispatch_async_f(*(DerivedStorage + 344), a1, bufferedAudioEngine_setEndpointStreamInternalStageEnd);
}

uint64_t __bufferedAudioEngine_flushInternal_block_invoke(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v9 = 0;
  *(a3 + 4) = APMessageRingBufferedGetFirstValidReadIndex(*(*(a1 + 40) + 616), 0);
  v5 = *a3;
  v6 = *(CMBaseObjectGetVTable() + 16);
  if (v6)
  {
    v7 = *(v6 + 16);
    if (v7)
    {
      v7(v5, &v9);
    }
  }

  result = FigCFEqual();
  if (result)
  {
    *(*(*(a1 + 32) + 8) + 24) = v9;
  }

  return result;
}

uint64_t bufferedAudioEngine_flushHose(const void *a1, uint64_t a2, uint64_t a3, unsigned int *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v9 = DerivedStorage;
  if (*(a2 + 72) == 0.0)
  {
    if (*(DerivedStorage + 577))
    {
      v11 = APSGetFBOPropertyInt64();
    }

    else
    {
      v11 = *(a2 + 152);
    }

    v10 = v11 != 0;
  }

  else
  {
    v10 = 1;
  }

  v29[0] = *MEMORY[0x277CEA038];
  v27 = v29[0];
  *(v29 + 12) = *(MEMORY[0x277CEA038] + 12);
  v26 = *(v29 + 12);
  v12 = MEMORY[0x277CC08F0];
  *(a2 + 72) = 0;
  v25 = *v12;
  *(a2 + 96) = *v12;
  v13 = *(v12 + 2);
  *(a2 + 112) = v13;
  *(a2 + 40) = v25;
  *(a2 + 56) = v13;
  *(a2 + 144) = 0;
  *(a2 + 152) = 0;
  *(a2 + 64) = 256;
  *(a2 + 88) = 0;
  result = mach_absolute_time();
  *(a2 + 80) = result;
  *(a2 + 184) = v27;
  *(a2 + 196) = v26;
  *(a2 + 212) = 0;
  *(a2 + 272) = 0;
  *(a2 + 120) = v25;
  *(a2 + 136) = v13;
  *(a2 + 176) = 0;
  if (v10)
  {
    if (gLogCategory_APAudioEngineBuffered <= 50 && (gLogCategory_APAudioEngineBuffered != -1 || _LogCategory_Initialize()))
    {
      if (a1)
      {
        v15 = (CMBaseObjectGetDerivedStorage() + 392);
      }

      else
      {
        v15 = "";
      }

      v16 = *(v9 + 530);
      v17 = *(a2 + 16);
      v18 = *(a2 + 264);
      *time = *a4;
      *&time[16] = *(a4 + 2);
      Seconds = CMTimeGetSeconds(time);
      LogPrintF(&gLogCategory_APAudioEngineBuffered, "OSStatus bufferedAudioEngine_flushHose(FigEndpointStreamAudioEngineRef, APAudioEngineHoseDescriptor *, uint32_t, CMTime)", 33554482, "BAE [%{ptr}] %s[0x%04X] (burst) Flushing hose [%{ptr}] (%@) Flush all until seq # %u and TS %1.6f (%lld/%d)\n", a1, v15, v16, v17, v18, a3, *&Seconds, *a4, a4[2]);
    }

    if (*(v9 + 576))
    {
      *time = *a4;
      *&time[16] = *(a4 + 2);
      APSAudioTransportTimeMakeWithMediaTime();
      if (!a1)
      {
        goto LABEL_23;
      }
    }

    else
    {
      SampleRateFromTransportAudioFormat = bufferedAudioEngine_getSampleRateFromTransportAudioFormat(a1);
      *v28 = *a4;
      *&v28[16] = *(a4 + 2);
      CMTimeConvertScale(time, v28, SampleRateFromTransportAudioFormat, kCMTimeRoundingMethod_RoundHalfAwayFromZero);
      *a4 = *time;
      *(a4 + 2) = *&time[16];
      APSAudioTransportTimeMakeWithRTPTime();
      if (!a1)
      {
LABEL_23:
        v20 = *(a2 + 16);
        *v28 = v29[0];
        *&v28[12] = *(v29 + 12);
        APSAudioProtocolDriverHoseControlProtocolGetProtocolID();
        ProtocolVTable = CMBaseObjectGetProtocolVTable();
        if (ProtocolVTable)
        {
          v22 = *(ProtocolVTable + 16);
          if (v22)
          {
            v23 = *(v22 + 24);
            if (v23)
            {
              *time = *v28;
              *&time[12] = *&v28[12];
              v23(v20, a3, time, bufferedAudioEngine_hoseFlushCallbackCompletionHandler, a1);
            }

            else
            {
              bufferedAudioEngine_hoseFlushCallbackCompletionHandler(v20, 0, MEMORY[0x277CEA038], 0xFFFFCE12, a1);
            }
          }
        }

        ++*(a2 + 180);
        return FigCFDictionaryApplyBlock();
      }
    }

    CFRetain(a1);
    goto LABEL_23;
  }

  if (gLogCategory_APAudioEngineBuffered <= 50)
  {
    if (gLogCategory_APAudioEngineBuffered != -1)
    {
      return bufferedAudioEngine_flushHose_cold_1();
    }

    result = _LogCategory_Initialize();
    if (result)
    {
      return bufferedAudioEngine_flushHose_cold_1();
    }
  }

  return result;
}

uint64_t bufferedAudioEngine_hoseFlushCallbackCompletionHandler(const void *a1, int a2, _OWORD *a3, unsigned int a4, const void *a5)
{
  CMBaseObjectGetDerivedStorage();
  APSPriorityDispatcherSyncF();
  if (a5)
  {
    CFRelease(a5);
  }

  return 0;
}

uint64_t __bufferedAudioEngine_flushHose_block_invoke(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = *a3;
  v6 = *(*(a1 + 32) + 24);
  VTable = CMBaseObjectGetVTable();
  v10 = *(VTable + 16);
  result = VTable + 16;
  v9 = v10;
  if (v10)
  {
    v11 = *(v9 + 48);
    if (v11)
    {
      result = v11(v5, v6);
      if (result)
      {
        v12 = *a3;
        v13 = *(*(a1 + 32) + 24);
        v14 = CMBaseObjectGetVTable();
        v16 = *(v14 + 16);
        result = v14 + 16;
        v15 = v16;
        if (v16)
        {
          v17 = *(v15 + 88);
          if (v17)
          {

            return v17(v12, v13);
          }
        }
      }
    }
  }

  return result;
}

uint64_t __bufferedAudioEngine_hoseFlushCallbackCompletionHandlerInternal_block_invoke(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = *a3;
  v6 = *(*(a1 + 32) + 24);
  VTable = CMBaseObjectGetVTable();
  v10 = *(VTable + 16);
  result = VTable + 16;
  v9 = v10;
  if (v10)
  {
    v11 = *(v9 + 48);
    if (v11)
    {
      result = v11(v5, v6);
      if (result)
      {
        v12 = *a3;
        v13 = *(*(a1 + 32) + 24);
        v14 = CMBaseObjectGetVTable();
        v16 = *(v14 + 16);
        result = v14 + 16;
        v15 = v16;
        if (v16)
        {
          v17 = *(v15 + 96);
          if (v17)
          {

            return v17(v12, v13);
          }
        }
      }
    }
  }

  return result;
}

uint64_t bufferedAudioEngine_flushWithinSampleRangeInternal(void *a1)
{
  v165 = *MEMORY[0x277D85DE8];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v3 = MEMORY[0x277CC0898];
  v153 = 0;
  v4 = *MEMORY[0x277CC0898];
  v163 = v4;
  v5 = *(MEMORY[0x277CC0898] + 8);
  v164 = v5;
  v6 = *(MEMORY[0x277CC0898] + 16);
  v152 = 0;
  v148 = 0;
  v149 = &v148;
  v150 = 0x2000000000;
  v151 = 0;
  v144 = 0;
  v145 = &v144;
  v146 = 0x2000000000;
  v147 = 0;
  v161 = *MEMORY[0x277CC08C8];
  v162 = *(MEMORY[0x277CC08C8] + 8);
  duration = *(MEMORY[0x277CC08C8] + 24);
  v142 = 0;
  v141 = 0;
  *&v140.value = *MEMORY[0x277CC0898];
  v140.epoch = v6;
  v157 = v4;
  v158 = v5;
  *&v139.value = *&v140.value;
  v139.epoch = v6;
  *&start.value = *&v140.value;
  start.epoch = v6;
  if (*DerivedStorage)
  {
    goto LABEL_166;
  }

  v7 = DerivedStorage;
  if (!*(DerivedStorage + 536))
  {
    goto LABEL_166;
  }

  v131 = a1;
  v125 = v6;
  if (gLogCategory_APAudioEngineBuffered <= 50 && (gLogCategory_APAudioEngineBuffered != -1 || _LogCategory_Initialize()))
  {
    v8 = *a1;
    if (*a1)
    {
      v9 = (CMBaseObjectGetDerivedStorage() + 392);
    }

    else
    {
      v9 = "";
    }

    v10 = *(v7 + 530);
    *&time.start.value = *(v131 + 1);
    time.start.epoch = v131[3];
    Seconds = CMTimeGetSeconds(&time.start);
    v12 = *(v131 + 3);
    *&time.start.value = *(v131 + 1);
    *&time.start.epoch = v12;
    *&time.duration.timescale = *(v131 + 5);
    CMTimeRangeGetEnd(&lhs, &time);
    v13 = CMTimeGetSeconds(&lhs);
    *&time.start.value = *(v7 + 708);
    time.start.epoch = *(v7 + 724);
    v14 = CMTimeGetSeconds(&time.start);
    v119 = v10;
    a1 = v131;
    LogPrintF(&gLogCategory_APAudioEngineBuffered, "OSStatus bufferedAudioEngine_flushWithinSampleRangeInternal(void *)", 33554482, "BAE [%{ptr}] %s[0x%04X] FlushWithinSampleRange: sampleRange %1.3f:%1.3f (sbufEndOutputPTS %1.3f)\n", v8, v9, v119, *&Seconds, *&v13, *&v14);
  }

  if ((*(v7 + 744) & 1) == 0)
  {
    bufferedAudioEngine_flushWithinSampleRangeInternal_cold_13();
LABEL_166:
    bufferedAudioEngine_wakeUpHosesAndAudioTimer(*a1);
    goto LABEL_157;
  }

  v124 = v5;
  v15 = (v7 + 780);
  lhs = *(v7 + 780);
  rhs = *(a1 + 1);
  CMTimeAdd(&time.start, &lhs, &rhs);
  timescale = time.start.timescale;
  value = time.start.value;
  lhs = time.start;
  rhs = *(v7 + 732);
  v133 = (v7 + 732);
  CMTimeSubtract(&time.start, &lhs, &rhs);
  value = time.start.value;
  timescale = time.start.timescale;
  if ((time.start.flags & 0x1D) != 1)
  {
    bufferedAudioEngine_flushWithinSampleRangeInternal_cold_1(&v153 + 1);
    goto LABEL_166;
  }

  lhs.value = value;
  lhs.timescale = timescale;
  lhs.flags = time.start.flags;
  lhs.epoch = time.start.epoch;
  rhs = *(a1 + 4);
  CMTimeRangeMake(&time, &lhs, &rhs);
  v162 = time.start.timescale;
  v161 = time.start.value;
  duration = time.duration;
  flags = time.start.flags;
  epoch = time.start.epoch;
  APSTimedInfoManagerFlushWithinTimeRange();
  HIDWORD(v153) = 0;
  if (gLogCategory_APAudioEngineBuffered <= 50 && (gLogCategory_APAudioEngineBuffered != -1 || _LogCategory_Initialize()))
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

    v18 = *(v7 + 530);
    time.start.value = v161;
    time.start.timescale = v162;
    time.start.flags = flags;
    time.start.epoch = epoch;
    v19 = CMTimeGetSeconds(&time.start);
    time.start.value = v161;
    time.start.timescale = v162;
    time.start.flags = flags;
    time.duration = duration;
    time.start.epoch = epoch;
    CMTimeRangeGetEnd(&lhs, &time);
    v20 = CMTimeGetSeconds(&lhs);
    LogPrintF(&gLogCategory_APAudioEngineBuffered, "OSStatus bufferedAudioEngine_flushWithinSampleRangeInternal(void *)", 33554482, "BAE [%{ptr}] %s[0x%04X] FlushWithinSampleRange: flushRangeRemoteMediaTime %1.3f:%1.3f\n", v16, v17, v18, *&v19, *&v20);
    a1 = v131;
  }

  bufferedAudioEngine_getCurrentRemoteMediaTimeInternal(&v153 + 1, &time.start);
  v157 = time.start.value;
  v158 = time.start.timescale;
  if (HIDWORD(v153))
  {
    bufferedAudioEngine_flushWithinSampleRangeInternal_cold_2(HIDWORD(v153));
    goto LABEL_166;
  }

  v122 = v7;
  v21 = v7 + 756;
  v22 = time.start.flags;
  v129 = time.start.epoch;
  v23 = *v21;
  time.start.epoch = *(v21 + 16);
  *&time.start.value = v23;
  lhs.value = v161;
  lhs.timescale = v162;
  lhs.flags = flags;
  lhs.epoch = epoch;
  v24 = CMTimeCompare(&time.start, &lhs);
  if (v24 < 1)
  {
    v128 = *(v3 + 12);
    v25 = flags;
    goto LABEL_36;
  }

  if (gLogCategory_APAudioEngineBuffered <= 50 && (gLogCategory_APAudioEngineBuffered != -1 || _LogCategory_Initialize()))
  {
    bufferedAudioEngine_flushWithinSampleRangeInternal_cold_3();
  }

  v26 = *(v122 + 616);
  time.start.value = v161;
  time.start.timescale = v162;
  time.start.flags = flags;
  time.start.epoch = epoch;
  v27 = APMessageRingBufferedPruneMessagesFromTimestamp(v26, &time.start, &v142, &v152, &v153);
  HIDWORD(v153) = v27;
  if (v27)
  {
    bufferedAudioEngine_flushWithinSampleRangeInternal_cold_4(v27);
    goto LABEL_166;
  }

  APMessageRingBufferedGetLastValidReadIndexAndTimestamp(*(v122 + 616), 0, &v139);
  lhs = v139;
  rhs = *v15;
  CMTimeSubtract(&time.start, &lhs, &rhs);
  lhs = *v133;
  CMTimeAdd(&start, &time.start, &lhs);
  if (gLogCategory_APAudioEngineBuffered <= 50 && (gLogCategory_APAudioEngineBuffered != -1 || _LogCategory_Initialize()))
  {
    v28 = *a1;
    if (*a1)
    {
      v29 = (CMBaseObjectGetDerivedStorage() + 392);
    }

    else
    {
      v29 = "";
    }

    v30 = *(v122 + 530);
    time.start = v139;
    v31 = CMTimeGetSeconds(&time.start);
    time.start = start;
    v32 = CMTimeGetSeconds(&time.start);
    LogPrintF(&gLogCategory_APAudioEngineBuffered, "OSStatus bufferedAudioEngine_flushWithinSampleRangeInternal(void *)", 33554482, "BAE [%{ptr}] %s[0x%04X] FlushWithinSampleRange: Trimm of unwanted samples from message ring complete: next valid message media time %1.3f (sample time %1.3f)\n", v28, v29, v30, *&v31, *&v32);
  }

  *(v122 + 976) = 0;
  v128 = *(v122 + 768);
  v25 = flags;
  if ((v128 & 0x1D) != 1)
  {
    bufferedAudioEngine_flushWithinSampleRangeInternal_cold_5(&v153 + 1);
    goto LABEL_166;
  }

  v124 = *(v122 + 764);
  v125 = *(v21 + 16);
  v4 = *v21;
  FigCFDictionaryApplyBlock();
LABEL_36:
  v163 = v161;
  v164 = v162;
  v123 = v4;
  v120 = v21;
  if ((v25 & 0x1D) != 1)
  {
    bufferedAudioEngine_flushWithinSampleRangeInternal_cold_6(&v153 + 1);
LABEL_163:
    cf = 0;
    v46 = v124;
    v45 = v125;
    goto LABEL_111;
  }

  v33 = *MEMORY[0x277CBECE8];
  keys = *MEMORY[0x277CD61F0];
  values = *MEMORY[0x277CD61D8];
  v34 = CFDictionaryCreate(v33, &keys, &values, 1, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (!v34)
  {
    bufferedAudioEngine_flushWithinSampleRangeInternal_cold_11(&v153 + 1);
    goto LABEL_163;
  }

  v35 = v34;
  CMNotificationCenterGetDefaultLocalCenter();
  cf = v35;
  FigDispatchAsyncPostNotification();
  if (*(v122 + 1112))
  {
    bufferedAudioEngine_setTranscodeIsRestingAndUpdateConsumer(*a1, 0);
  }

  if (gLogCategory_APAudioEngineBuffered <= 50 && (gLogCategory_APAudioEngineBuffered != -1 || _LogCategory_Initialize()))
  {
    bufferedAudioEngine_flushWithinSampleRangeInternal_cold_7();
  }

  v36 = *v21;
  time.start.epoch = *(v21 + 16);
  *&time.start.value = v36;
  lhs.value = v161;
  lhs.timescale = v162;
  lhs.flags = flags;
  lhs.epoch = epoch;
  v37 = 0;
  if (CMTimeCompare(&time.start, &lhs) < 0)
  {
    while (1)
    {
      HIDWORD(v153) = bufferedAudioEngine_prepareOneMessageForSending(*a1, 1, &v141);
      if (HIDWORD(v153) == -72095)
      {
        goto LABEL_109;
      }

      if (!v141)
      {
        break;
      }

      v37 = (v37 + 1);
      v38 = *v21;
      time.start.epoch = *(v21 + 16);
      *&time.start.value = v38;
      lhs.value = v161;
      lhs.timescale = v162;
      lhs.flags = flags;
      lhs.epoch = epoch;
      if ((CMTimeCompare(&time.start, &lhs) & 0x80000000) == 0)
      {
        goto LABEL_48;
      }
    }

    v43 = *(a1 + 1);
    *(v122 + 1272) = a1[3];
    *(v122 + 1256) = v43;
    v44 = *v21;
    time.start.epoch = *(v21 + 16);
    *&time.start.value = v44;
    rhs = *v15;
    CMTimeSubtract(&lhs, &time.start, &rhs);
    rhs = *v133;
    CMTimeAdd(&time.start, &lhs, &rhs);
    start = time.start;
    if (gLogCategory_APAudioEngineBuffered > 90)
    {
LABEL_109:
      v46 = v124;
      v45 = v125;
      goto LABEL_110;
    }

    v46 = v124;
    v45 = v125;
    if (gLogCategory_APAudioEngineBuffered != -1 || _LogCategory_Initialize())
    {
      v47 = *a1;
      if (*a1)
      {
        v48 = (CMBaseObjectGetDerivedStorage() + 392);
      }

      else
      {
        v48 = "";
      }

      v89 = *(v122 + 530);
      v90 = *v120;
      time.start.epoch = *(v120 + 2);
      *&time.start.value = v90;
      v91 = CMTimeGetSeconds(&time.start);
      time.start = start;
      v92 = CMTimeGetSeconds(&time.start);
      *&time.start.value = *(v122 + 1256);
      time.start.epoch = *(v122 + 1272);
      v93 = CMTimeGetSeconds(&time.start);
      LogPrintF(&gLogCategory_APAudioEngineBuffered, "OSStatus bufferedAudioEngine_flushWithinSampleRangeInternal(void *)", 33554522, "BAE [%{ptr}] %s[0x%04X] ### FlushWithinSampleRange: Could not process all valid samples at this time. Prepared: %u nextRemoteMediaTimestamp %1.3f (sample time %1.3f), flushSampleRangeStart %1.3f\n", v47, v48, v89, v37, *&v91, *&v92, *&v93);
      a1 = v131;
      goto LABEL_109;
    }

LABEL_110:
    v25 = flags;
  }

  else
  {
LABEL_48:
    v39 = *v21;
    time.start.epoch = *(v21 + 16);
    *&time.start.value = v39;
    rhs = *v15;
    CMTimeSubtract(&lhs, &time.start, &rhs);
    rhs = *v133;
    CMTimeAdd(&time.start, &lhs, &rhs);
    start = time.start;
    if (gLogCategory_APAudioEngineBuffered >= 51)
    {
      v42 = *v21;
      v140.epoch = *(v21 + 16);
      *&v140.value = v42;
    }

    else
    {
      if (gLogCategory_APAudioEngineBuffered != -1 || _LogCategory_Initialize())
      {
        v40 = *a1;
        if (*a1)
        {
          v41 = (CMBaseObjectGetDerivedStorage() + 392);
        }

        else
        {
          v41 = "";
        }

        v49 = *(v122 + 530);
        v50 = *v21;
        time.start.epoch = *(v21 + 16);
        *&time.start.value = v50;
        v51 = CMTimeGetSeconds(&time.start);
        time.start = start;
        v52 = CMTimeGetSeconds(&time.start);
        LogPrintF(&gLogCategory_APAudioEngineBuffered, "OSStatus bufferedAudioEngine_flushWithinSampleRangeInternal(void *)", 33554482, "BAE [%{ptr}] %s[0x%04X] FlushWithinSampleRange: Process valid samples complete: Prepared: %u nextRemoteMediaTimestamp %1.3f (sample time %1.3f)\n", v40, v41, v49, v37, *&v51, *&v52);
        a1 = v131;
      }

      v53 = *(v21 + 16);
      *&v140.value = *v21;
      v140.epoch = v53;
      if (gLogCategory_APAudioEngineBuffered <= 50 && (gLogCategory_APAudioEngineBuffered != -1 || _LogCategory_Initialize()))
      {
        v54 = *a1;
        if (*a1)
        {
          v55 = (CMBaseObjectGetDerivedStorage() + 392);
        }

        else
        {
          v55 = "";
        }

        v56 = *(v122 + 530);
        time.start = v140;
        v57 = CMTimeGetSeconds(&time.start);
        time.start.value = v161;
        time.start.timescale = v162;
        time.start.flags = flags;
        time.duration = duration;
        time.start.epoch = epoch;
        CMTimeRangeGetEnd(&lhs, &time);
        v58 = CMTimeGetSeconds(&lhs);
        LogPrintF(&gLogCategory_APAudioEngineBuffered, "OSStatus bufferedAudioEngine_flushWithinSampleRangeInternal(void *)", 33554482, "BAE [%{ptr}] %s[0x%04X] FlushWithinSampleRange: Discarding all invalid samples: nextRemoteMediaTimestamp %1.3f end %1.3f\n", v54, v55, v56, *&v57, *&v58);
      }
    }

    for (i = 0; ; i = (i + 1))
    {
      time.start.value = v161;
      time.start.timescale = v162;
      v25 = flags;
      time.start.flags = flags;
      time.start.epoch = epoch;
      time.duration = duration;
      CMTimeRangeGetEnd(&lhs, &time);
      time.start = v140;
      if ((CMTimeCompare(&time.start, &lhs) & 0x80000000) == 0)
      {
        break;
      }

      v60 = *v131;
      v61 = CMBaseObjectGetDerivedStorage();
      if (*v61 || !CMBufferQueueGetBufferCount(*(v61 + 1192)))
      {
        goto LABEL_88;
      }

      v62 = bufferedAudioEngine_processAndRetainSBufFromBufferQueue(v60, 1);
      if (!v62)
      {
        if (gLogCategory_APAudioEngineBuffered <= 30 && (gLogCategory_APAudioEngineBuffered != -1 || _LogCategory_Initialize()))
        {
          bufferedAudioEngine_flushWithinSampleRangeInternal_cold_9();
        }

LABEL_88:
        HIDWORD(v153) = 0;
        a1 = v131;
        v71 = v131[3];
        *(v122 + 1256) = *(v131 + 1);
        *(v122 + 1272) = v71;
        time.start = v140;
        rhs = *v15;
        CMTimeSubtract(&lhs, &time.start, &rhs);
        rhs = *v133;
        CMTimeAdd(&time.start, &lhs, &rhs);
        start = time.start;
        v46 = v124;
        if (gLogCategory_APAudioEngineBuffered <= 90 && (gLogCategory_APAudioEngineBuffered != -1 || _LogCategory_Initialize()))
        {
          v72 = *v131;
          if (*v131)
          {
            v73 = (CMBaseObjectGetDerivedStorage() + 392);
          }

          else
          {
            v73 = "";
          }

          v74 = *(v122 + 530);
          time.start = v140;
          v75 = CMTimeGetSeconds(&time.start);
          time.start = start;
          v76 = CMTimeGetSeconds(&time.start);
          *&time.start.value = *(v122 + 1256);
          time.start.epoch = *(v122 + 1272);
          v77 = CMTimeGetSeconds(&time.start);
          LogPrintF(&gLogCategory_APAudioEngineBuffered, "OSStatus bufferedAudioEngine_flushWithinSampleRangeInternal(void *)", 33554522, "BAE [%{ptr}] %s[0x%04X] ### FlushWithinSampleRange: Could not process all invalid samples at this time. Discard Count: %u lastRemoteMediaTimeDiscarded %1.3f (sample time %1.3f), flushSampleRangeStart %1.3f\n", v72, v73, v74, i, *&v75, *&v76, *&v77);
          a1 = v131;
        }

        *v21 = v163;
        *(v21 + 8) = v164;
        v25 = flags;
        *(v122 + 768) = flags;
        *(v21 + 16) = epoch;
        v4 = v123;
        v45 = v125;
        goto LABEL_111;
      }

      v63 = v62;
      FormatDescription = CMSampleBufferGetFormatDescription(v62);
      StreamBasicDescription = CMAudioFormatDescriptionGetStreamBasicDescription(FormatDescription);
      if (StreamBasicDescription)
      {
        p_mSampleRate = &StreamBasicDescription->mSampleRate;
        v67 = CMSampleBufferGetNumSamples(v63) * StreamBasicDescription->mFramesPerPacket;
        if (v67)
        {
          CMTimeMake(&time.start, v67, *p_mSampleRate);
          lhs = v140;
          CMTimeAdd(&v140, &lhs, &time.start);
        }

        v68 = 0;
      }

      else
      {
        bufferedAudioEngine_flushWithinSampleRangeInternal_cold_8();
        v68 = -72091;
      }

      CFRelease(v63);
      HIDWORD(v153) = v68;
    }

    time.start = v140;
    rhs = *v15;
    CMTimeSubtract(&lhs, &time.start, &rhs);
    rhs = *v133;
    CMTimeAdd(&time.start, &lhs, &rhs);
    start = time.start;
    a1 = v131;
    v46 = v124;
    if (gLogCategory_APAudioEngineBuffered <= 50 && (gLogCategory_APAudioEngineBuffered != -1 || _LogCategory_Initialize()))
    {
      v69 = *v131;
      if (*v131)
      {
        v70 = (CMBaseObjectGetDerivedStorage() + 392);
      }

      else
      {
        v70 = "";
      }

      v78 = *(v122 + 530);
      time.start = v140;
      v79 = CMTimeGetSeconds(&time.start);
      time.start = start;
      v80 = CMTimeGetSeconds(&time.start);
      LogPrintF(&gLogCategory_APAudioEngineBuffered, "OSStatus bufferedAudioEngine_flushWithinSampleRangeInternal(void *)", 33554482, "BAE [%{ptr}] %s[0x%04X] FlushWithinSampleRange: Processed invalid samples complete: Discard Count: %u lastRemoteMediaTimeDiscarded %1.3f (sample time %1.3f)\n", v69, v70, v78, i, *&v79, *&v80);
      v25 = flags;
    }

    v45 = v125;
    if ((v22 & 0x1D) == 1)
    {
      v4 = v123;
      if (gLogCategory_APAudioEngineBuffered <= 50 && (gLogCategory_APAudioEngineBuffered != -1 || _LogCategory_Initialize()))
      {
        v81 = *v131;
        if (*v131)
        {
          v82 = (CMBaseObjectGetDerivedStorage() + 392);
        }

        else
        {
          v82 = "";
        }

        v83 = *(v122 + 530);
        time.start.value = v157;
        time.start.timescale = v158;
        time.start.flags = v22;
        time.start.epoch = v129;
        v84 = CMTimeGetSeconds(&time.start);
        v85 = *v120;
        time.start.epoch = *(v120 + 2);
        *&time.start.value = v85;
        v86 = CMTimeGetSeconds(&time.start);
        LogPrintF(&gLogCategory_APAudioEngineBuffered, "OSStatus bufferedAudioEngine_flushWithinSampleRangeInternal(void *)", 33554482, "BAE [%{ptr}] %s[0x%04X] FlushWithinSampleRange: currentMediaTime = %1.3f nextRemoteMediaTimestamp = %1.3f\n", v81, v82, v83, *&v84, *&v86);
        v25 = flags;
      }

      *(v122 + 992) = 1;
      *(v122 + 653) = 0;
      v87 = v163;
      *v120 = v163;
      v88 = v164;
      *(v120 + 2) = v164;
      *(v122 + 768) = v25;
      *(v120 + 2) = epoch;
      time.start.value = v87;
      time.start.timescale = v88;
      time.start.flags = v25;
      time.start.epoch = epoch;
      bufferedAudioEngine_updateNextTranscodeBurstTimeAndUnRest();
    }

    else
    {
      bufferedAudioEngine_flushWithinSampleRangeInternal_cold_10(&v153 + 1);
      v4 = v123;
    }
  }

LABEL_111:
  if (v24 >= 1)
  {
    v94 = *a1;
    v95 = v142;
    v96 = v153;
    v134 = v152;
    v126 = *(v145 + 6);
    v127 = *(v149 + 6);
    v130 = CMBaseObjectGetDerivedStorage();
    if (gLogCategory_APAudioEngineBuffered <= 50 && (gLogCategory_APAudioEngineBuffered != -1 || _LogCategory_Initialize()))
    {
      bufferedAudioEngine_flushWithinSampleRangeInternal_cold_12();
    }

    v97 = *(v130 + 640);
    if (!v97)
    {
LABEL_117:
      HIDWORD(v153) = 0;
      a1 = v131;
      if (gLogCategory_APAudioEngineBuffered <= 50 && (gLogCategory_APAudioEngineBuffered != -1 || _LogCategory_Initialize()))
      {
        v98 = *v131;
        if (*v131)
        {
          v99 = (CMBaseObjectGetDerivedStorage() + 392);
        }

        else
        {
          v99 = "";
        }

        v113 = *(v122 + 530);
        time.start.value = v4;
        time.start.timescale = v46;
        time.start.flags = v128;
        time.start.epoch = v45;
        v114 = CMTimeGetSeconds(&time.start);
        v115 = *v120;
        time.start.epoch = *(v120 + 2);
        *&time.start.value = v115;
        v116 = CMTimeGetSeconds(&time.start);
        LogPrintF(&gLogCategory_APAudioEngineBuffered, "OSStatus bufferedAudioEngine_flushWithinSampleRangeInternal(void *)", 33554482, "BAE [%{ptr}] %s[0x%04X] (burst) FlushWithinSampleRange: Resetting isResting to false for all hoses. FlushUntilTimestamp = %1.6f (%lld/%d) nextRemoteMediaTimestamp = %1.6f (%lld/%d)\n", v98, v99, v113, *&v114, v4, v46, *&v116, *v120, *(v122 + 764));
      }

      goto LABEL_155;
    }

    while (1)
    {
      v100 = v97[2].n128_u16[1];
      if ((v100 - v95) >= 1)
      {
        v97[2].n128_u16[1] = v95;
      }

      if (gLogCategory_APAudioEngineBuffered <= 50 && (gLogCategory_APAudioEngineBuffered != -1 || _LogCategory_Initialize()))
      {
        if (v94)
        {
          v101 = (CMBaseObjectGetDerivedStorage() + 392);
        }

        else
        {
          v101 = "";
        }

        v102 = *(v130 + 530);
        v103 = v97[1].n128_u64[0];
        v104 = v97[16].n128_u64[1];
        v105 = v97[2].n128_u16[1];
        bufferedAudioEngine_getSentBufferLevelTime(v97, &time.start);
        v106 = CMTimeGetSeconds(&time.start);
        LogPrintF(&gLogCategory_APAudioEngineBuffered, "OSStatus bufferedAudioEngine_sendFlushWithinSampleRangeInternal(FigEndpointStreamAudioEngineRef, uint16_t, uint32_t, uint32_t, CMTime, uint32_t, uint32_t, CMTime)", 33554482, "BAE [%{ptr}] %s[0x%04X] Flushing hose [%{ptr}] (%@): current read idx = %u new read idx = %u current buffer level = %1.1f\n", v94, v101, v102, v103, v104, v100, v105, *&v106);
        v4 = v123;
        v46 = v124;
        v45 = v125;
        v25 = flags;
      }

      if (v97[2].n128_u8[0])
      {
        v107 = 1;
      }

      else
      {
        v107 = *(v130 + 577) == 0;
      }

      if (v134 == v96 || !v107)
      {
        v111 = v126;
        v110 = v127;
        if (v127 == v126)
        {
          LOBYTE(v107) = 1;
        }

        if (v107)
        {
          if (gLogCategory_APAudioEngineBuffered <= 50 && (gLogCategory_APAudioEngineBuffered != -1 || _LogCategory_Initialize()))
          {
            if (v94)
            {
              v112 = (CMBaseObjectGetDerivedStorage() + 392);
            }

            else
            {
              v112 = "";
            }

            LogPrintF(&gLogCategory_APAudioEngineBuffered, "OSStatus bufferedAudioEngine_sendFlushWithinSampleRangeInternal(FigEndpointStreamAudioEngineRef, uint16_t, uint32_t, uint32_t, CMTime, uint32_t, uint32_t, CMTime)", 33554482, "BAE [%{ptr}] %s[0x%04X] Skip flushing hose [%{ptr}] (%@), seq Num range empty\n", v94, v112, *(v130 + 530), v97[1].n128_u64[0], v97[16].n128_u64[1]);
          }

          goto LABEL_147;
        }

        time.start.value = v163;
        time.start.timescale = v164;
        time.start.flags = v25;
        time.start.epoch = epoch;
        lhs.value = v4;
        lhs.timescale = v46;
        lhs.flags = v128;
        lhs.epoch = v45;
        v108 = v94;
        v109 = v97;
      }

      else
      {
        time.start.value = v163;
        time.start.timescale = v164;
        time.start.flags = v25;
        time.start.epoch = epoch;
        lhs.value = v4;
        lhs.timescale = v46;
        lhs.flags = v128;
        lhs.epoch = v45;
        v108 = v94;
        v109 = v97;
        v110 = v134;
        v111 = v96;
      }

      bufferedAudioEngine_flushHoseWithinSampleRange(v108, v109, v110, &time, v111, &lhs);
LABEL_147:
      v97 = v97->n128_u64[0];
      if (!v97)
      {
        goto LABEL_117;
      }
    }
  }

LABEL_155:
  bufferedAudioEngine_wakeUpHosesAndAudioTimer(*a1);
  if (cf)
  {
    CFRelease(cf);
  }

LABEL_157:
  v117 = HIDWORD(v153);
  _Block_object_dispose(&v144, 8);
  _Block_object_dispose(&v148, 8);
  return v117;
}

uint64_t __bufferedAudioEngine_flushWithinSampleRangeInternal_block_invoke(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v10 = 0;
  *(a3 + 4) = *(a1 + 96);
  v4 = *a3;
  v8 = *(a1 + 48);
  v9 = *(a1 + 64);
  v5 = *(CMBaseObjectGetVTable() + 16);
  if (v5)
  {
    v6 = *(v5 + 24);
    if (v6)
    {
      v11 = v8;
      v12 = v9;
      v6(v4, &v11, &v10 + 2, &v10);
    }
  }

  result = FigCFEqual();
  if (result)
  {
    *(*(*(a1 + 32) + 8) + 24) = HIWORD(v10);
    *(*(*(a1 + 40) + 8) + 24) = v10;
  }

  return result;
}

uint64_t bufferedAudioEngine_flushHoseWithinSampleRange(const void *a1, uint64_t a2, uint64_t a3, unsigned int *a4, uint64_t a5, unsigned int *a6)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v47 = *MEMORY[0x277CC08F0];
  *&v56.value = *MEMORY[0x277CC08F0];
  v11 = *(MEMORY[0x277CC08F0] + 16);
  v56.epoch = v11;
  v55[0] = *MEMORY[0x277CEA038];
  v12 = v55[0];
  *(v55 + 12) = *(MEMORY[0x277CEA038] + 12);
  v54[0] = v12;
  *(v54 + 12) = *(v55 + 12);
  v52 = 0uLL;
  v53 = 0;
  bufferedAudioEngine_getLastSentRemoteMediaTimeForHose(a2, &v52);
  memset(&v51, 0, sizeof(v51));
  bufferedAudioEngine_getSentBufferLevelTime(a2, &v51);
  *lhs = v52;
  *&lhs[16] = v53;
  *rhs = *a4;
  *&rhs[16] = *(a4 + 2);
  CMTimeSubtract(&v56, lhs, rhs);
  if (gLogCategory_APAudioEngineBuffered <= 50 && (gLogCategory_APAudioEngineBuffered != -1 || _LogCategory_Initialize()))
  {
    v42 = v11;
    if (a1)
    {
      v13 = (CMBaseObjectGetDerivedStorage() + 392);
    }

    else
    {
      v13 = "";
    }

    v41 = v13;
    v14 = *(DerivedStorage + 530);
    v15 = DerivedStorage;
    v16 = *(a2 + 16);
    v17 = *(a2 + 264);
    v18 = *(a2 + 34);
    *lhs = v51;
    Seconds = CMTimeGetSeconds(lhs);
    v40 = v16;
    DerivedStorage = v15;
    LogPrintF(&gLogCategory_APAudioEngineBuffered, "OSStatus bufferedAudioEngine_flushHoseWithinSampleRange(FigEndpointStreamAudioEngineRef, APAudioEngineHoseDescriptor *, uint32_t, CMTime, uint32_t, CMTime)", 33554482, "BAE [%{ptr}] %s[0x%04X] Flushing hose [%{ptr}] (%@): current read idx = %u current buffer level = %f\n", a1, v41, v14, v40, v17, v18, *&Seconds);
    v11 = v42;
  }

  *rhs = v51;
  *v50 = v56;
  CMTimeSubtract(lhs, rhs, v50);
  *(a2 + 96) = *lhs;
  *(a2 + 112) = *&lhs[16];
  if (gLogCategory_APAudioEngineBuffered <= 50 && (gLogCategory_APAudioEngineBuffered != -1 || _LogCategory_Initialize()))
  {
    v43 = v11;
    if (a1)
    {
      v20 = (CMBaseObjectGetDerivedStorage() + 392);
    }

    else
    {
      v20 = "";
    }

    v21 = *(DerivedStorage + 530);
    v22 = *(a2 + 16);
    v23 = *(a2 + 264);
    *lhs = v56;
    v24 = CMTimeGetSeconds(lhs);
    *lhs = v51;
    v25 = CMTimeGetSeconds(lhs);
    LogPrintF(&gLogCategory_APAudioEngineBuffered, "OSStatus bufferedAudioEngine_flushHoseWithinSampleRange(FigEndpointStreamAudioEngineRef, APAudioEngineHoseDescriptor *, uint32_t, CMTime, uint32_t, CMTime)", 33554482, "BAE [%{ptr}] %s[0x%04X] Flushing hose [%{ptr}] (%@): %f seconds flushed, new buffer level = %f\n", a1, v20, v21, v22, v23, *&v24, *&v25);
    v11 = v43;
  }

  *(a2 + 64) = 256;
  *(a2 + 88) = 0;
  *(a2 + 80) = mach_absolute_time();
  *(a2 + 272) = 0;
  *(a2 + 120) = v47;
  *(a2 + 136) = v11;
  *lhs = *a4;
  *&lhs[16] = *(a4 + 2);
  *rhs = v52;
  *&rhs[16] = v53;
  if (CMTimeCompare(lhs, rhs) < 0)
  {
    v26 = *a4;
    *(a2 + 56) = *(a4 + 2);
    *(a2 + 40) = v26;
  }

  if (gLogCategory_APAudioEngineBuffered <= 50 && (gLogCategory_APAudioEngineBuffered != -1 || _LogCategory_Initialize()))
  {
    if (a1)
    {
      v27 = (CMBaseObjectGetDerivedStorage() + 392);
    }

    else
    {
      v27 = "";
    }

    v48 = v27;
    v44 = *(DerivedStorage + 530);
    v28 = *(a2 + 16);
    v29 = *(a2 + 264);
    *lhs = *a4;
    *&lhs[16] = *(a4 + 2);
    v30 = CMTimeGetSeconds(lhs);
    v31 = *a4;
    v32 = a4[2];
    *lhs = *a6;
    *&lhs[16] = *(a6 + 2);
    v33 = CMTimeGetSeconds(lhs);
    LogPrintF(&gLogCategory_APAudioEngineBuffered, "OSStatus bufferedAudioEngine_flushHoseWithinSampleRange(FigEndpointStreamAudioEngineRef, APAudioEngineHoseDescriptor *, uint32_t, CMTime, uint32_t, CMTime)", 33554482, "BAE [%{ptr}] %s[0x%04X] (burst) Flushing hose [%{ptr}] (%@): Flush within range from seq # %u and RemoteMediaTS %1.6f (%lld/%d), until seq # %u and RemoteMediaTS %1.6f (%lld/%d)\n", a1, v48, v44, v28, v29, a3, *&v30, v31, v32, a5, *&v33, *a6, a6[2]);
  }

  if (!*(DerivedStorage + 576))
  {
    SampleRateFromTransportAudioFormat = bufferedAudioEngine_getSampleRateFromTransportAudioFormat(a1);
    *rhs = *a4;
    *&rhs[16] = *(a4 + 2);
    CMTimeConvertScale(lhs, rhs, SampleRateFromTransportAudioFormat, kCMTimeRoundingMethod_RoundHalfAwayFromZero);
    *a4 = *lhs;
    *(a4 + 2) = *&lhs[16];
    APSAudioTransportTimeMakeWithRTPTime();
    *rhs = *a6;
    *&rhs[16] = *(a6 + 2);
    CMTimeConvertScale(lhs, rhs, SampleRateFromTransportAudioFormat, kCMTimeRoundingMethod_RoundHalfAwayFromZero);
    *a6 = *lhs;
    *(a6 + 2) = *&lhs[16];
    APSAudioTransportTimeMakeWithRTPTime();
    if (!a1)
    {
      goto LABEL_30;
    }

    goto LABEL_29;
  }

  *lhs = *a4;
  *&lhs[16] = *(a4 + 2);
  APSAudioTransportTimeMakeWithMediaTime();
  *lhs = *a6;
  *&lhs[16] = *(a6 + 2);
  APSAudioTransportTimeMakeWithMediaTime();
  if (a1)
  {
LABEL_29:
    CFRetain(a1);
  }

LABEL_30:
  v34 = *(a2 + 16);
  *v50 = v55[0];
  *&v50[12] = *(v55 + 12);
  *v49 = v54[0];
  *&v49[12] = *(v54 + 12);
  APSAudioProtocolDriverHoseControlProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (ProtocolVTable)
  {
    v36 = *(ProtocolVTable + 16);
    if (v36)
    {
      v37 = *(v36 + 32);
      if (v37)
      {
        *lhs = *v50;
        *&lhs[12] = *&v50[12];
        *rhs = *v49;
        *&rhs[12] = *&v49[12];
        v37(v34, a3, lhs, a5, rhs, bufferedAudioEngine_hoseFlushWithinSampleRangeCallbackCompletionHandler, a1);
      }

      else
      {
        bufferedAudioEngine_hoseFlushWithinSampleRangeCallbackCompletionHandler(v34, 0, MEMORY[0x277CEA038], 0, MEMORY[0x277CEA038], 0xFFFFCE12, a1);
      }
    }
  }

  ++*(a2 + 180);
  FigCFDictionaryApplyBlock();
  result = APMessageRingBufferedGetByteCountAtIndex(*(DerivedStorage + 616), (*(a2 + 34) + 1), (a2 + 144));
  if (result)
  {
    return bufferedAudioEngine_flushHoseWithinSampleRange_cold_1(result);
  }

  return result;
}

uint64_t bufferedAudioEngine_hoseFlushWithinSampleRangeCallbackCompletionHandler(const void *a1, int a2, _OWORD *a3, int a4, _OWORD *a5, unsigned int a6, const void *a7)
{
  CMBaseObjectGetDerivedStorage();
  APSPriorityDispatcherSyncF();
  if (a7)
  {
    CFRelease(a7);
  }

  return 0;
}

uint64_t __bufferedAudioEngine_flushHoseWithinSampleRange_block_invoke(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = *a3;
  v6 = *(*(a1 + 32) + 24);
  VTable = CMBaseObjectGetVTable();
  v10 = *(VTable + 16);
  result = VTable + 16;
  v9 = v10;
  if (v10)
  {
    v11 = *(v9 + 48);
    if (v11)
    {
      result = v11(v5, v6);
      if (result)
      {
        v12 = *a3;
        v13 = *(*(a1 + 32) + 24);
        v14 = CMBaseObjectGetVTable();
        v16 = *(v14 + 16);
        result = v14 + 16;
        v15 = v16;
        if (v16)
        {
          v17 = *(v15 + 88);
          if (v17)
          {

            return v17(v12, v13);
          }
        }
      }
    }
  }

  return result;
}

uint64_t __bufferedAudioEngine_hoseFlushWithinSampleRangeCallbackCompletionHandlerInternal_block_invoke(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = *a3;
  v6 = *(*(a1 + 32) + 24);
  VTable = CMBaseObjectGetVTable();
  v10 = *(VTable + 16);
  result = VTable + 16;
  v9 = v10;
  if (v10)
  {
    v11 = *(v9 + 48);
    if (v11)
    {
      result = v11(v5, v6);
      if (result)
      {
        v12 = *a3;
        v13 = *(*(a1 + 32) + 24);
        v14 = CMBaseObjectGetVTable();
        v16 = *(v14 + 16);
        result = v14 + 16;
        v15 = v16;
        if (v16)
        {
          v17 = *(v15 + 96);
          if (v17)
          {

            return v17(v12, v13);
          }
        }
      }
    }
  }

  return result;
}

Float64 OUTLINED_FUNCTION_30_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, __int128 a23, uint64_t a24)
{
  *(v24 - 160) = a23;
  *(v24 - 144) = a24;

  return CMTimeGetSeconds((v24 - 160));
}

void OUTLINED_FUNCTION_35_0()
{
  *(v2 - 208) = *(v2 - 136);
  *(v2 - 200) = *(v2 - 128);
  *(v2 - 196) = v0;
  *(v2 - 192) = v1;
}

Float64 OUTLINED_FUNCTION_49(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, __int128 a45, uint64_t a46)
{
  *(v46 - 240) = a45;
  *(v46 - 224) = a46;

  return CMTimeGetSeconds((v46 - 240));
}

Float64 OUTLINED_FUNCTION_51@<D0>(uint64_t a1@<X8>, __n128 a2@<Q0>)
{
  *(v2 - 224) = a1;
  *(v2 - 240) = a2;

  return CMTimeGetSeconds((v2 - 240));
}

__n128 OUTLINED_FUNCTION_53@<Q0>(__n128 *a1@<X8>)
{
  result = *v1;
  *a1 = *v1;
  a1[1].n128_u64[0] = v1[1].n128_u64[0];
  return result;
}

__n128 OUTLINED_FUNCTION_56@<Q0>(__n128 *a1@<X8>)
{
  result = *a1;
  *&STACK[0x280] = *a1;
  STACK[0x290] = a1[1].n128_u64[0];
  return result;
}

void OUTLINED_FUNCTION_58()
{
  v2 = *(v1 - 160);
  *(v1 - 232) = v0;
  *(v1 - 220) = v2;
}

__n128 OUTLINED_FUNCTION_64()
{
  result = *(v0 - 192);
  *(v0 - 256) = result;
  *(v0 - 240) = *(v0 - 176);
  return result;
}

__n128 OUTLINED_FUNCTION_66()
{
  result = *(v0 - 160);
  *(v0 - 240) = result;
  *(v0 - 224) = *(v0 - 144);
  return result;
}

void OUTLINED_FUNCTION_74(uint64_t a1, __n128 a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, __n128 a21, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, __int128 a18, uint64_t a19, uint64_t a20)
{

  bufferedAudioEngine_startRemoteMediaTimebaseWithReceiverAnchor();
}

Float64 OUTLINED_FUNCTION_75@<D0>(int a1@<W8>)
{
  *(v2 - 232) = v1;
  *(v2 - 220) = a1;

  return CMTimeGetSeconds((v2 - 240));
}

CMTime *OUTLINED_FUNCTION_76@<X0>(CMTime *a1@<X8>)
{

  return CMTimeConvertScale(a1, &STACK[0x280], v1, kCMTimeRoundingMethod_RoundHalfAwayFromZero);
}

CMTime *OUTLINED_FUNCTION_79@<X0>(CMTime *a1@<X8>, __int128 a2, uint64_t a3, uint64_t a4, CMTime *lhs, uint64_t lhs_8, CMTime *lhs_16, uint64_t a8, uint64_t a9)
{
  lhs_16 = a1;
  a2 = *(v9 - 64);
  a3 = *(v9 - 48);

  return CMTimeAdd(&a9, &lhs, &a2);
}

Float64 OUTLINED_FUNCTION_81@<D0>(uint64_t a1@<X8>)
{
  *(v1 - 224) = a1;

  return CMTimeGetSeconds((v1 - 240));
}

void OUTLINED_FUNCTION_82(void *a1, int a2, int a3, os_signpost_id_t a4, const char *a5, const char *a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);

  _os_signpost_emit_with_name_impl(a1, v20, OS_SIGNPOST_INTERVAL_END, a4, a5, a6, va, 2u);
}

uint64_t OUTLINED_FUNCTION_83(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, __int128 a41, uint64_t a43, int a44)
{
  *(v44 - 240) = a41;
  *(v43 + 60) = *(&a41 + 12);
  return v44 - 240;
}

uint64_t OUTLINED_FUNCTION_84@<X0>(unint64_t a1@<X8>)
{
  STACK[0x2C0] = a1;

  return CMTimeCompare(&STACK[0x2D0], &STACK[0x2B0]);
}

void OUTLINED_FUNCTION_85()
{
  *(v3 - 240) = v0;
  *(v2 + 60) = *(v3 - 160);
  v4 = *(v3 - 152);
  *(v3 - 232) = v1;
  *(v3 - 220) = v4;
}

uint64_t OUTLINED_FUNCTION_86(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, __int128 a31)
{
  *(v32 + 896) = 0xBFF0000000000000;
  *(v33 + 24) = a31;
  *(v33 + 40) = v34;
  return v31;
}

void *OUTLINED_FUNCTION_88()
{

  return malloc_type_calloc(v0, 8uLL, v1);
}

__n128 OUTLINED_FUNCTION_90@<Q0>(__n128 *a1@<X8>)
{
  *&STACK[0x330] = *(v1 - 192);
  STACK[0x340] = *(v1 - 176);
  result = *a1;
  *&STACK[0x310] = *a1;
  return result;
}

uint64_t OUTLINED_FUNCTION_92(uint64_t a1, uint64_t a2)
{

  return APSSignalErrorAt();
}

uint64_t OUTLINED_FUNCTION_95(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, CMTime *time2, CMTime *time1, __int128 a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, __int128 time2a, uint64_t time2_16, uint64_t time1a, uint64_t time1_8, uint64_t time1_16, __int128 a21, uint64_t a22)
{
  time2a = a21;
  time2_16 = a22;
  time1a = v22;

  return CMTimeCompare(&time1a, &time2a);
}

uint64_t OUTLINED_FUNCTION_96()
{
  *&STACK[0x310] = *(v0 - 256);
  STACK[0x320] = *(v0 - 240);

  return CMTimeCompare(&STACK[0x310], &STACK[0x330]);
}

Float64 OUTLINED_FUNCTION_106@<D0>(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, CMTime *time, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t timea, uint64_t time_8, uint64_t time_16)
{
  time_16 = a1;

  return CMTimeGetSeconds(&timea);
}

Float64 OUTLINED_FUNCTION_107()
{
  *(v0 - 144) = *(v0 - 240);
  *(v0 - 128) = *(v0 - 224);

  return CMTimeGetSeconds((v0 - 144));
}

void OUTLINED_FUNCTION_108(uint64_t a1, __CFDictionary *a2, const void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, __int128 a17, uint64_t a18)
{
  a17 = *(v18 - 64);
  a18 = *(v18 - 48);

  bufferedAudioEngine_setAudioFormatDurationDict(&a17, a2, a3);
}

uint64_t OUTLINED_FUNCTION_109@<X0>(unint64_t a1@<X8>)
{
  STACK[0x340] = a1;

  return CMTimeCompare((v1 - 256), &STACK[0x330]);
}