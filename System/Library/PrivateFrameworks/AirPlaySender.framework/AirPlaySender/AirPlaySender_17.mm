uint64_t audioHoseManagerBuffered_SetRate(uint64_t a1, int a2, _OWORD *a3, uint64_t a4, uint64_t a5)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APAudioHoseManagerBuffered <= 50 && (gLogCategory_APAudioHoseManagerBuffered != -1 || _LogCategory_Initialize()))
  {
    audioHoseManagerBuffered_SetRate_cold_1();
  }

  if (CFDictionaryGetCount(*(DerivedStorage + 192)) == 1)
  {
    *(DerivedStorage + 260) = a2;
    CFDictionaryApplyBlock();
    return 0;
  }

  else
  {
    audioHoseManagerBuffered_SetRate_cold_2(&v8);
    return v8;
  }
}

uint64_t audioHoseManagerBuffered_GetAudioToBufferTimes(uint64_t a1, CMTime *a2, uint64_t a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v31 = **&MEMORY[0x277CC0898];
  v23 = *MEMORY[0x277CC08F0];
  *&v30.value = *MEMORY[0x277CC08F0];
  v7 = *(MEMORY[0x277CC08F0] + 16);
  v30.epoch = v7;
  v28 = *(DerivedStorage + 100);
  v24 = 0;
  v25 = &v24;
  v26 = 0x3000000000;
  v27 = v31;
  v29 = *(DerivedStorage + 264);
  Count = CFDictionaryGetCount(*(DerivedStorage + 192));
  if (gLogCategory_APAudioHoseManagerBuffered <= 50 && (gLogCategory_APAudioHoseManagerBuffered != -1 || _LogCategory_Initialize()))
  {
    audioHoseManagerBuffered_GetAudioToBufferTimes_cold_1(a1);
  }

  if (Count == 1)
  {
    v10 = CMBaseObjectGetDerivedStorage();
    rhs.value = 0;
    *&rhs.timescale = &rhs;
    rhs.epoch = 0x2000000000;
    v36 = 0;
    FigSimpleMutexLock();
    if (CFDictionaryGetCount(*(v10 + 192)) == 1)
    {
      time.value = MEMORY[0x277D85DD0];
      *&time.timescale = 0x40000000;
      time.epoch = __audioHoseManagerBuffered_SingularHoseIsLocal_block_invoke;
      v33 = &unk_2784A0460;
      p_rhs = &rhs;
      CFDictionaryApplyBlock();
    }

    else
    {
      audioHoseManagerBuffered_GetAudioToBufferTimes_cold_2();
    }

    FigSimpleMutexUnlock();
    v11 = *(*&rhs.timescale + 24);
    _Block_object_dispose(&rhs, 8);
    if (v11)
    {
      CMTimeMake(&v31, 18, 1);
LABEL_13:
      CFDictionaryApplyBlock();
      goto LABEL_14;
    }

LABEL_12:
    CMTimeMake(&v31, 125, 1);
    v12 = v25;
    v13 = MEMORY[0x277CC08B0];
    *&v25[1].value = *MEMORY[0x277CC08B0];
    v12[1].epoch = *(v13 + 16);
    goto LABEL_13;
  }

  if (Count)
  {
    if (Count < 1)
    {
      goto LABEL_14;
    }

    goto LABEL_12;
  }

  CMTimeMake(&v31, 18, 1);
  v9 = v25;
  *&v25[1].value = v23;
  v9[1].epoch = v7;
LABEL_14:
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

    time = v31;
    Seconds = CMTimeGetSeconds(&time);
    time = v25[1];
    v16 = CMTimeGetSeconds(&time);
    LogPrintF(&gLogCategory_APAudioHoseManagerBuffered, "OSStatus audioHoseManagerBuffered_GetAudioToBufferTimes(APAudioHoseManagerBufferedRef, CMTime *, CMTime *)", 33554482, "HMB [%{ptr}] %s Getting audio to buffer times. maxAudioToBufferTime: %1.4f, minStreamBufferLevelTime: %1.4f \n", a1, v14, *&Seconds, *&v16);
  }

  *(DerivedStorage + 76) = v31;
  time = v25[1];
  rhs = *(DerivedStorage + 400);
  CMTimeAdd(&v30, &time, &rhs);
  time = v30;
  rhs = *(DerivedStorage + 128);
  if (CMTimeCompare(&time, &rhs) < 0 || (time = v29, *&rhs.value = v23, rhs.epoch = v7, CMTimeCompare(&time, &rhs) <= 0))
  {
    *(DerivedStorage + 100) = *(DerivedStorage + 128);
    epoch = *(DerivedStorage + 144);
  }

  else
  {
    *(DerivedStorage + 100) = *&v30.value;
    epoch = v30.epoch;
  }

  *(DerivedStorage + 116) = epoch;
  time = v28;
  rhs = *(DerivedStorage + 100);
  if (CMTimeCompare(&time, &rhs) && gLogCategory_APAudioHoseManagerBuffered <= 30 && (gLogCategory_APAudioHoseManagerBuffered != -1 || _LogCategory_Initialize()))
  {
    if (a1)
    {
      v18 = CMBaseObjectGetDerivedStorage();
    }

    else
    {
      v18 = "";
    }

    time = *(DerivedStorage + 76);
    v19 = CMTimeGetSeconds(&time);
    time = *(DerivedStorage + 100);
    v20 = CMTimeGetSeconds(&time);
    LogPrintF(&gLogCategory_APAudioHoseManagerBuffered, "OSStatus audioHoseManagerBuffered_GetAudioToBufferTimes(APAudioHoseManagerBufferedRef, CMTime *, CMTime *)", 33554462, "HMB [%{ptr}] %smaxAudioToBufferTime: %1.3f; maxAudioToBufferTimeAboveLow %.3f\n", a1, v18, *&v19, *&v20);
  }

  *a2 = v31;
  v21 = v25[1].epoch;
  *a3 = *&v25[1].value;
  *(a3 + 16) = v21;
  _Block_object_dispose(&v24, 8);
  return 0;
}

uint64_t audioHoseManagerBuffered_SetCryptor(uint64_t a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a2)
  {
    context[0] = 0;
    context[1] = a1;
    context[2] = a2;
    dispatch_sync_f(*(DerivedStorage + 168), context, audioHoseManagerBuffered_setCryptorForAllHosesDispatch);
    return LODWORD(context[0]);
  }

  else
  {
    audioHoseManagerBuffered_SetCryptor_cold_1();
    return 4294894845;
  }
}

uint64_t audioHoseManagerBuffered_AddCryptorToJar(uint64_t a1, uint64_t a2, CMTime *a3)
{
  v14 = 0;
  v15 = &v14;
  v16 = 0x2000000000;
  v17 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v7 = *MEMORY[0x277CBECE8];
  time = *a3;
  v8 = CMTimeCopyAsDictionary(&time, v7);
  v9 = *(DerivedStorage + 168);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 0x40000000;
  block[2] = __audioHoseManagerBuffered_AddCryptorToJar_block_invoke;
  block[3] = &unk_2784A04B0;
  block[4] = &v14;
  block[5] = DerivedStorage;
  block[6] = a2;
  block[7] = a1;
  block[8] = v8;
  dispatch_sync(v9, block);
  if (v8)
  {
    CFRelease(v8);
  }

  v10 = *(v15 + 6);
  _Block_object_dispose(&v14, 8);
  return v10;
}

uint64_t audioHoseManagerBuffered_AddMagicCookieToJar(uint64_t a1, uint64_t a2, CMTime *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v6 = *MEMORY[0x277CBECE8];
  time = *a3;
  v7 = CMTimeCopyAsDictionary(&time, v6);
  v8 = *(DerivedStorage + 168);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 0x40000000;
  block[2] = __audioHoseManagerBuffered_AddMagicCookieToJar_block_invoke;
  block[3] = &__block_descriptor_tmp_264;
  block[4] = DerivedStorage;
  block[5] = a2;
  block[6] = v7;
  dispatch_sync(v8, block);
  if (v7)
  {
    CFRelease(v7);
  }

  return 0;
}

uint64_t audioHoseManagerBuffered_ReleaseOldCryptorAndMagicCookie(uint64_t a1, __int128 *a2)
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x2000000000;
  v13 = 0;
  v4 = *(CMBaseObjectGetDerivedStorage() + 168);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 0x40000000;
  block[2] = __audioHoseManagerBuffered_ReleaseOldCryptorAndMagicCookie_block_invoke;
  block[3] = &unk_2784A04F8;
  block[4] = &v10;
  block[5] = a1;
  v8 = *a2;
  v9 = *(a2 + 2);
  dispatch_sync(v4, block);
  v5 = *(v11 + 6);
  _Block_object_dispose(&v10, 8);
  return v5;
}

uint64_t audioHoseManagerBuffered_ApplyVolumeFade(uint64_t a1, int a2, __int128 *a3)
{
  CMBaseObjectGetDerivedStorage();
  CFDictionaryApplyBlock();
  return 0;
}

uint64_t audioHoseManagerBuffered_Suspend(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v8 = 0;
  v9 = &v8;
  v10 = 0x2000000000;
  v11 = 0;
  if (gLogCategory_APAudioHoseManagerBuffered <= 50 && (gLogCategory_APAudioHoseManagerBuffered != -1 || _LogCategory_Initialize()))
  {
    audioHoseManagerBuffered_Suspend_cold_1(a1);
  }

  v3 = CMBaseObjectGetDerivedStorage();
  if (CFDictionaryGetCount(*(v3 + 192)) <= 0)
  {
    audioHoseManagerBuffered_Suspend_cold_2();
  }

  else
  {
    v12 = MEMORY[0x277D85DD0];
    v13 = 0x40000000;
    v14 = __audioHoseManagerBuffered_deregisterAllHoses_block_invoke;
    v15 = &__block_descriptor_tmp_273_0;
    v16 = a1;
    CFDictionaryApplyBlock();
  }

  *(v9 + 6) = 0;
  *(DerivedStorage + 320) = 0;
  *(DerivedStorage + 328) = 0;
  v4 = *(DerivedStorage + 168);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 0x40000000;
  block[2] = __audioHoseManagerBuffered_Suspend_block_invoke;
  block[3] = &unk_2784A0540;
  block[4] = &v8;
  block[5] = a1;
  dispatch_sync(v4, block);
  v5 = *(v9 + 6);
  _Block_object_dispose(&v8, 8);
  return v5;
}

uint64_t audioHoseManagerBuffered_hoseFlushCallbackCompletionHandler(const void *a1, int a2, _OWORD *a3, unsigned int a4, const void *a5)
{
  v17 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  context[0] = a5;
  context[1] = a1;
  v13 = a2;
  *v14 = *a3;
  *&v14[12] = *(a3 + 12);
  v16 = &v17;
  v15 = a4;
  dispatch_sync_f(*(DerivedStorage + 168), context, audioHoseManagerBuffered_hoseFlushCallbackCompletionHandlerInternal);
  if (context[0])
  {
    CFRelease(context[0]);
  }

  return v17;
}

uint64_t audioHoseManagerBuffered_getHoseDecriptorFromHose(uint64_t a1, uint64_t a2)
{
  CMBaseObjectGetDerivedStorage();
  v4 = 0;
  v5 = &v4;
  v6 = 0x2000000000;
  v7 = 0;
  CFDictionaryApplyBlock();
  v2 = v5[3];
  _Block_object_dispose(&v4, 8);
  return v2;
}

uint64_t __audioHoseManagerBuffered_getHoseDecriptorFromHose_block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  result = FigCFEqual();
  if (result)
  {
    *(*(*(a1 + 32) + 8) + 24) = a3;
  }

  return result;
}

uint64_t audioHoseManagerBuffered_hoseFlushWithinSampleRangeCallbackCompletionHandler(const void *a1, int a2, _OWORD *a3, int a4, _OWORD *a5, unsigned int a6, const void *a7)
{
  v23 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  context[0] = a7;
  context[1] = a1;
  v17 = a2;
  *v18 = *a3;
  *&v18[12] = *(a3 + 12);
  v19 = a4;
  *v20 = *a5;
  *&v20[12] = *(a5 + 12);
  v22 = &v23;
  v21 = a6;
  dispatch_sync_f(*(DerivedStorage + 168), context, audioHoseManagerBuffered_hoseFlushWithinSampleRangeCallbackCompletionHandlerInternal);
  if (context[0])
  {
    CFRelease(context[0]);
  }

  return v23;
}

uint64_t audioHoseManagerBuffered_hoseSetRateAndAnchorTimeCallbackCompletionHandler(const void *a1, int a2, _OWORD *a3, __int128 *a4, _OWORD *a5, uint64_t a6, int a7, const void *a8)
{
  v26 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  memset(&v23[24], 0, 32);
  context[0] = a8;
  context[1] = a1;
  v20 = a2;
  *v21 = *a3;
  v17 = *a4;
  *&v21[3] = *(a3 + 12);
  *&v21[7] = v17;
  v22 = *(a4 + 2);
  *v23 = *a5;
  *&v23[12] = *(a5 + 12);
  *&v23[48] = *(a6 + 16);
  v24 = 0;
  *&v23[32] = *a6;
  LODWORD(v24) = a7;
  v25 = &v26;
  if (gLogCategory_APAudioHoseManagerBuffered <= 50 && (gLogCategory_APAudioHoseManagerBuffered != -1 || _LogCategory_Initialize()))
  {
    audioHoseManagerBuffered_hoseSetRateAndAnchorTimeCallbackCompletionHandler_cold_1(a8);
  }

  dispatch_sync_f(*(DerivedStorage + 168), context, audioHoseManagerBuffered_hoseSetRateAndAnchorTimeCallbackCompletionHandlerInternal);
  if (context[0])
  {
    CFRelease(context[0]);
  }

  return v26;
}

uint64_t audioHoseManagerBuffered_hoseSetRateCallbackCompletionHandler(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  HoseDecriptorFromHose = audioHoseManagerBuffered_getHoseDecriptorFromHose(*(a5 + 16), a1);
  if (HoseDecriptorFromHose)
  {
    v11 = *(a3 + 16);
    *(a5 + 56) = *a3;
    *(a5 + 72) = v11;
    *(a5 + 80) = HoseDecriptorFromHose;
    *(a5 + 88) = a4;
    dispatch_sync_f(*(DerivedStorage + 168), a5, audioHoseManagerBuffered_hoseSetRateCallbackCompletionHandlerInternal);
    v12 = *(a5 + 16);
    if (v12)
    {
      CFRelease(v12);
    }

    free(a5);
    return 0;
  }

  else
  {
    audioHoseManagerBuffered_hoseSetRateCallbackCompletionHandler_cold_1(&v14);
    return v14;
  }
}

uint64_t audioHoseManagerBuffered_hoseSetRateCallbackCompletionHandlerInternal(uint64_t *a1)
{
  v2 = (a1 + 2);
  result = CMBaseObjectGetDerivedStorage();
  v4 = *(a1 + 22);
  if (!v4)
  {
    if (gLogCategory_APAudioHoseManagerBuffered <= 50)
    {
      if (gLogCategory_APAudioHoseManagerBuffered != -1 || (result = _LogCategory_Initialize(), result))
      {
        result = audioHoseManagerBuffered_hoseSetRateCallbackCompletionHandlerInternal_cold_1();
      }
    }

    goto LABEL_10;
  }

  if (v4 == 200501)
  {
    if (gLogCategory_APAudioHoseManagerBuffered <= 90)
    {
      if (gLogCategory_APAudioHoseManagerBuffered != -1 || (result = _LogCategory_Initialize(), result))
      {
        result = audioHoseManagerBuffered_hoseSetRateCallbackCompletionHandlerInternal_cold_2();
      }
    }

    goto LABEL_10;
  }

  v9 = result;
  if (gLogCategory_APAudioHoseManagerBuffered <= 90 && (gLogCategory_APAudioHoseManagerBuffered != -1 || _LogCategory_Initialize()))
  {
    audioHoseManagerBuffered_hoseSetRateCallbackCompletionHandlerInternal_cold_3();
  }

  v11 = (a1 + 10);
  v10 = a1[10];
  v12 = *(v10 + 140);
  if (v12 >= 0x32)
  {
    result = audioHoseManagerBuffered_hoseSetRateCallbackCompletionHandlerInternal_cold_7();
    goto LABEL_10;
  }

  if (*(v9 + 260) != 1)
  {
    result = audioHoseManagerBuffered_hoseSetRateCallbackCompletionHandlerInternal_cold_4();
    goto LABEL_10;
  }

  if (*(v10 + 44) != 1)
  {
    result = audioHoseManagerBuffered_hoseSetRateCallbackCompletionHandlerInternal_cold_5();
LABEL_10:
    v5 = a1[1];
    if (v5)
    {
      v6 = a1[2];
      v7 = *(a1 + 22);
      v8 = *a1;
      *v24 = *(a1 + 28);
      *&v24[12] = *(a1 + 5);
      *v23 = *(a1 + 7);
      *&v23[16] = a1[9];
      return v5(v6, v24, v23, v7, v8);
    }

    return result;
  }

  *(v10 + 140) = v12 + 1;
  if (gLogCategory_APAudioHoseManagerBuffered <= 50 && (gLogCategory_APAudioHoseManagerBuffered != -1 || _LogCategory_Initialize()))
  {
    audioHoseManagerBuffered_hoseSetRateCallbackCompletionHandlerInternal_cold_6();
  }

  v13 = malloc_type_calloc(1uLL, 0x60uLL, 0x10A0040428D2481uLL);
  v14 = *v2;
  if (*v2)
  {
    v14 = CFRetain(v14);
  }

  *(v13 + 2) = v14;
  *v13 = *a1;
  *(v13 + 6) = *(a1 + 6);
  v15 = *(a1 + 28);
  *(v13 + 40) = *(a1 + 5);
  *(v13 + 28) = v15;
  usleep(0x186A0u);
  v16 = a1[2];
  if (v16)
  {
    CFRetain(v16);
  }

  v17 = **v11;
  v18 = *(*v11 + 11);
  *v23 = *(v13 + 28);
  *&v23[12] = *(v13 + 40);
  APSEndpointStreamAudioHoseProtocolGetProtocolID();
  result = CMBaseObjectGetProtocolVTable();
  if (result)
  {
    v21 = *(result + 16);
    result += 16;
    v20 = v21;
    if (v21)
    {
      v22 = *(v20 + 80);
      if (v22)
      {
        *v24 = *v23;
        *&v24[12] = *&v23[12];
        return v22(v17, v18, v24, audioHoseManagerBuffered_hoseSetRateCallbackCompletionHandler, v13);
      }

      else
      {
        return audioHoseManagerBuffered_hoseSetRateCallbackCompletionHandler(v17, v19, MEMORY[0x277CEA280], -12782, v13);
      }
    }
  }

  return result;
}

uint64_t audioHoseManagerBuffered_setCryptorForAllHosesDispatch(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  result = audioHoseManagerBuffered_setCryptorForAllHoses(*(a1 + 8), *(a1 + 16));
  v4 = result;
  if (result)
  {
    result = audioHoseManagerBuffered_setCryptorForAllHosesDispatch_cold_1(result);
  }

  else
  {
    *(DerivedStorage + 320) = *(a1 + 16);
  }

  *a1 = v4;
  return result;
}

_OWORD *hoseManagerBuffered_hoseDescriptorDictionaryRetain(uint64_t a1, __int128 *a2)
{
  if (a2)
  {
    v3 = malloc_type_calloc(1uLL, 0xF8uLL, 0x106004011576FA2uLL);
    v4 = a2[3];
    v6 = *a2;
    v5 = a2[1];
    v3[2] = a2[2];
    v3[3] = v4;
    *v3 = v6;
    v3[1] = v5;
    v7 = a2[7];
    v9 = a2[4];
    v8 = a2[5];
    v3[6] = a2[6];
    v3[7] = v7;
    v3[4] = v9;
    v3[5] = v8;
    v10 = a2[11];
    v12 = a2[8];
    v11 = a2[9];
    v3[10] = a2[10];
    v3[11] = v10;
    v3[8] = v12;
    v3[9] = v11;
    v14 = a2[13];
    v13 = a2[14];
    v15 = a2[12];
    *(v3 + 30) = *(a2 + 30);
    v3[13] = v14;
    v3[14] = v13;
    v3[12] = v15;
    v16 = *(a2 + 28);
    if (v16)
    {
      v16 = CFRetain(v16);
    }

    *(v3 + 28) = v16;
    v17 = *a2;
    if (*a2)
    {
      v17 = CFRetain(v17);
    }

    *v3 = v17;
  }

  else
  {
    hoseManagerBuffered_hoseDescriptorDictionaryRetain_cold_1();
    return 0;
  }

  return v3;
}

void hoseManagerBuffered_hoseDescriptorDictionaryRelease(uint64_t a1, CFTypeRef *a2)
{
  if (a2)
  {
    v3 = *a2;
    v4 = *(*(CMBaseObjectGetVTable() + 8) + 56);
    if (v4)
    {
      v4(v3, *MEMORY[0x277CEA0C8], *MEMORY[0x277CBED10]);
    }

    if (*a2)
    {
      CFRelease(*a2);
    }

    v5 = a2[28];
    if (v5)
    {
      CFRelease(v5);
    }

    free(a2);
  }

  else
  {
    hoseManagerBuffered_hoseDescriptorDictionaryRelease_cold_1();
  }
}

__n128 OUTLINED_FUNCTION_30_1@<Q0>(uint64_t a1@<X8>)
{
  *(v1 + 148) = *a1;
  result = *(a1 + 12);
  *(v1 + 160) = result;
  return result;
}

uint64_t SPEndpointDescriptionCreateWithTransportDevice(uint64_t a1, const void *a2, CFTypeRef *a3)
{
  v13 = *MEMORY[0x277D85DE8];
  if (!a2)
  {
    v10 = 4294895545;
    SPEndpointDescriptionCreateWithTransportDevice_cold_5();
    return v10;
  }

  if (!a3)
  {
    v10 = 4294895545;
    SPEndpointDescriptionCreateWithTransportDevice_cold_4();
    return v10;
  }

  APEndpointDescriptionGetClassID(a1, a2);
  v5 = CMDerivedObjectCreate();
  if (v5)
  {
    v10 = v5;
    SPEndpointDescriptionCreateWithTransportDevice_cold_1(v5);
    return v10;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  *DerivedStorage = CFRetain(a2);
  AdvertiserInfo = APTransportDeviceGetAdvertiserInfo();
  DerivedStorage[1] = AdvertiserInfo;
  if (!AdvertiserInfo)
  {
    return APSSignalErrorAt();
  }

  CFRetain(AdvertiserInfo);
  v8 = FigSimpleMutexCreate();
  DerivedStorage[2] = v8;
  if (!v8)
  {
    SPEndpointDescriptionCreateWithTransportDevice_cold_3();
    return 4294895546;
  }

  SNPrintF(label, 64, "SPEndpointDescription.%{ptr}.notification", 0);
  v9 = dispatch_queue_create(label, 0);
  DerivedStorage[3] = v9;
  if (!v9)
  {
    SPEndpointDescriptionCreateWithTransportDevice_cold_2();
    return 4294895546;
  }

  if (gLogCategory_SPEndpointDescription <= 30 && (gLogCategory_SPEndpointDescription != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_SPEndpointDescription, "OSStatus SPEndpointDescriptionCreateWithTransportDevice(CFAllocatorRef, APTransportDeviceRef, APEndpointDescriptionRef *)", 33554462, "[%{ptr}] %###s with transport device [%{ptr}]\n", 0, "OSStatus SPEndpointDescriptionCreateWithTransportDevice(CFAllocatorRef, APTransportDeviceRef, APEndpointDescriptionRef *)", a2);
  }

  v10 = 0;
  *a3 = 0;
  return v10;
}

uint64_t spDescription_Finalize(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (gLogCategory_SPEndpointDescription <= 30 && (gLogCategory_SPEndpointDescription != -1 || _LogCategory_Initialize()))
  {
    spDescription_Finalize_cold_1(a1);
  }

  if (*DerivedStorage)
  {
    CFRelease(*DerivedStorage);
    *DerivedStorage = 0;
  }

  v3 = *(DerivedStorage + 8);
  if (v3)
  {
    CFRelease(v3);
    *(DerivedStorage + 8) = 0;
  }

  v4 = *(DerivedStorage + 24);
  if (v4)
  {
    dispatch_release(v4);
    *(DerivedStorage + 24) = 0;
  }

  return FigSimpleMutexDestroy();
}

__CFString *spDescription_CopyDebugDescription(uint64_t a1)
{
  Mutable = CFStringCreateMutable(*MEMORY[0x277CBECE8], 0);
  v6 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  spDescription_copyName(a1, &v6);
  v4 = v6;
  CFStringAppendFormat(Mutable, 0, @"<SPEndpointDescription %p, name=%@, advertiserInfo=%@>", a1, v6, *(DerivedStorage + 8));
  if (v4)
  {
    CFRelease(v4);
  }

  return Mutable;
}

uint64_t spDescription_CopyProperty(uint64_t a1, const void *a2, const __CFAllocator *a3, uint64_t *a4)
{
  CMBaseObjectGetDerivedStorage();
  if (gLogCategory_SPEndpointDescription <= 30 && (gLogCategory_SPEndpointDescription != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_SPEndpointDescription, "OSStatus spDescription_CopyProperty(CMBaseObjectRef, CFStringRef, CFAllocatorRef, void *)", 33554462, "[%{ptr}] %###s propertyKey: '%@'\n", a1, "OSStatus spDescription_CopyProperty(CMBaseObjectRef, CFStringRef, CFAllocatorRef, void *)", a2);
  }

  if (!a2)
  {
    v12 = 4294895545;
    spDescription_CopyProperty_cold_2();
    return v12;
  }

  if (!a4)
  {
    v12 = 4294895545;
    spDescription_CopyProperty_cold_1();
    return v12;
  }

  FigSimpleMutexLock();
  v15 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!CFEqual(a2, @"DeviceID"))
  {
    if (CFEqual(a2, @"TransportDevice"))
    {
      v10 = *DerivedStorage;
LABEL_12:
      v11 = CFRetain(v10);
LABEL_13:
      *a4 = v11;
      goto LABEL_14;
    }

    if (CFEqual(a2, @"Name"))
    {
      v9 = spDescription_copyName(a1, a4);
      goto LABEL_9;
    }

    if (CFEqual(a2, @"Manufacturer") || CFEqual(a2, @"Model") || CFEqual(a2, @"SerialNumber"))
    {
      v11 = APAdvertiserInfoCopyProperty();
      goto LABEL_13;
    }

    if (CFEqual(a2, @"SourceVersion"))
    {
      v9 = spDescription_copySourceVersion(a1, a4);
      goto LABEL_9;
    }

    if (CFEqual(a2, @"MACAddress"))
    {
      v9 = spDescription_copyMACAddress(a1, a3, a4);
      goto LABEL_9;
    }

    if (!CFEqual(a2, @"SupportsBufferedAudio") && !CFEqual(a2, @"HasUnifiedAdvertiserInfo"))
    {
      if (CFEqual(a2, @"SupportedAudioFormats"))
      {
        v9 = spDescription_copyAudioFormats(a3, a4);
        goto LABEL_9;
      }

      if (!CFEqual(a2, @"SupportsCoreUtilsPairingAndEncryption"))
      {
        if (CFEqual(a2, @"SupportsAudioMediaDataControl"))
        {
LABEL_36:
          v14 = MEMORY[0x277CBED10];
          goto LABEL_31;
        }

        if (!CFEqual(a2, @"SupportsReceiverChoosesAnchor"))
        {
          if (!CFEqual(a2, @"SupportsAudioStreamConnectionSetup"))
          {
            if (gLogCategory_SPEndpointDescription <= 30 && (gLogCategory_SPEndpointDescription != -1 || _LogCategory_Initialize()))
            {
              LogPrintF(&gLogCategory_SPEndpointDescription, "OSStatus spDescription_copyPropertyInternal(APEndpointDescriptionRef, CFStringRef, CFAllocatorRef, void *)", 33554462, "[%{ptr}] %###s %@ unsupported\n", a1, "OSStatus spDescription_copyPropertyInternal(APEndpointDescriptionRef, CFStringRef, CFAllocatorRef, void *)", a2);
            }

            v15 = -12784;
            goto LABEL_14;
          }

          goto LABEL_36;
        }
      }
    }

    v14 = MEMORY[0x277CBED28];
LABEL_31:
    v10 = *v14;
    goto LABEL_12;
  }

  v9 = spDescription_copyDeviceID(a1, a4);
LABEL_9:
  v15 = v9;
LABEL_14:
  v12 = v15;
  FigSimpleMutexUnlock();
  return v12;
}

uint64_t spDescription_SetProperty(uint64_t a1, uint64_t a2, uint64_t a3)
{
  CMBaseObjectGetDerivedStorage();
  if (gLogCategory_SPEndpointDescription <= 30 && (gLogCategory_SPEndpointDescription != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_SPEndpointDescription, "OSStatus spDescription_SetProperty(CMBaseObjectRef, CFStringRef, CFTypeRef)", 33554462, "[%{ptr}] %###s propertyKey: '%@', propertyValue: '%@'\n", a1, "OSStatus spDescription_SetProperty(CMBaseObjectRef, CFStringRef, CFTypeRef)", a2, a3);
  }

  if (a2)
  {
    if (a3)
    {
      FigSimpleMutexLock();
      CMBaseObjectGetDerivedStorage();
      if (gLogCategory_SPEndpointDescription <= 30 && (gLogCategory_SPEndpointDescription != -1 || _LogCategory_Initialize()))
      {
        LogPrintF(&gLogCategory_SPEndpointDescription, "void spDescription_setPropertyInternal(APEndpointDescriptionRef, CFStringRef, CFTypeRef)", 33554462, "[%{ptr}] %###s %@ unsupported\n", a1, "void spDescription_setPropertyInternal(APEndpointDescriptionRef, CFStringRef, CFTypeRef)", a2);
      }

      FigSimpleMutexUnlock();
      return 0;
    }

    else
    {
      v6 = 4294895545;
      spDescription_SetProperty_cold_1();
    }
  }

  else
  {
    v6 = 4294895545;
    spDescription_SetProperty_cold_2();
  }

  return v6;
}

uint64_t spDescription_copyName(uint64_t a1, uint64_t *a2)
{
  CMBaseObjectGetDerivedStorage();
  *a2 = APAdvertiserInfoCopyProperty();
  return 0;
}

uint64_t spDescription_copyDeviceID(uint64_t a1, CFStringRef *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v7 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  *cStr = 0u;
  v9 = 0u;
  v4 = APAdvertiserInfoCopyProperty();
  if (v4 || (v4 = *DerivedStorage) == 0 || (APTransportDeviceGetDiscoveryID(), v6 = CFGetInt64(), SNPrintF(cStr, 32, "%#.6a", COERCE_DOUBLE(&v6)), (v4 = CFStringCreateWithCString(0, cStr, 0x8000100u)) != 0))
  {
    *a2 = v4;
  }

  else
  {
    spDescription_copyDeviceID_cold_2();
  }

  return v7;
}

uint64_t spDescription_copySourceVersion(uint64_t a1, uint64_t *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  CMBaseObjectGetDerivedStorage();
  memset(v8, 0, sizeof(v8));
  v3 = APAdvertiserInfoCopyProperty();
  v4 = v3;
  if (v3)
  {
    if (!CFStringGetCString(v3, v8, 256, 0x8000100u))
    {
      spDescription_copySourceVersion_cold_1();
      v6 = 4294960534;
      goto LABEL_6;
    }

    TextToSourceVersion();
  }

  Int64 = CFNumberCreateInt64();
  if (!Int64)
  {
    spDescription_copySourceVersion_cold_2();
    v6 = 4294960534;
    if (!v4)
    {
      return v6;
    }

    goto LABEL_6;
  }

  v6 = 0;
  *a2 = Int64;
  if (v4)
  {
LABEL_6:
    CFRelease(v4);
  }

  return v6;
}

uint64_t spDescription_copyMACAddress(uint64_t a1, const __CFAllocator *a2, CFDataRef *a3)
{
  v15 = *MEMORY[0x277D85DE8];
  CMBaseObjectGetDerivedStorage();
  theString = 0;
  v6 = spDescription_copyDeviceID(a1, &theString);
  if (v6)
  {
    v10 = v6;
    APSLogErrorAt();
    v7 = theString;
    if (!theString)
    {
      return v10;
    }
  }

  else
  {
    v7 = theString;
    if (!theString)
    {
      v10 = 4294895543;
      spDescription_copyMACAddress_cold_4();
      return v10;
    }

    if (CFStringGetCString(theString, buffer, 64, 0x8000100u))
    {
      v8 = TextToHardwareAddress();
      if (v8)
      {
        v10 = v8;
        spDescription_copyMACAddress_cold_1(v8);
      }

      else
      {
        v9 = CFDataCreate(a2, bytes, 6);
        if (v9)
        {
          v10 = 0;
          *a3 = v9;
        }

        else
        {
          spDescription_copyMACAddress_cold_2();
          v10 = 4294895546;
        }
      }
    }

    else
    {
      v10 = 4294895543;
      spDescription_copyMACAddress_cold_3();
    }
  }

  CFRelease(v7);
  return v10;
}

uint64_t spDescription_copyAudioFormats(const __CFAllocator *a1, CFMutableDictionaryRef *a2)
{
  Mutable = CFDictionaryCreateMutable(a1, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (Mutable)
  {
    v4 = Mutable;
    CFDictionarySetInt64();
    result = 0;
    *a2 = v4;
  }

  else
  {
    spDescription_copyAudioFormats_cold_1();
    return 4294895546;
  }

  return result;
}

uint64_t spDescription_CopyFeatures(uint64_t a1, uint64_t *a2)
{
  CMBaseObjectGetDerivedStorage();
  if (gLogCategory_SPEndpointDescription <= 30 && (gLogCategory_SPEndpointDescription != -1 || _LogCategory_Initialize()))
  {
    spDescription_CopyFeatures_cold_1(a1);
    if (a2)
    {
      goto LABEL_5;
    }

LABEL_8:
    spDescription_CopyFeatures_cold_2();
    return 4294895545;
  }

  if (!a2)
  {
    goto LABEL_8;
  }

LABEL_5:
  FigSimpleMutexLock();
  CMBaseObjectGetDerivedStorage();
  *a2 = APAdvertiserInfoCopyProperty();
  v4 = 0;
  FigSimpleMutexUnlock();
  return v4;
}

uint64_t spDescription_HasFeature(uint64_t a1, uint64_t a2)
{
  CMBaseObjectGetDerivedStorage();
  if (gLogCategory_SPEndpointDescription <= 30 && (gLogCategory_SPEndpointDescription != -1 || _LogCategory_Initialize()))
  {
    spDescription_HasFeature_cold_1(a1);
  }

  FigSimpleMutexLock();
  CMBaseObjectGetDerivedStorage();
  CMBaseObjectGetDerivedStorage();
  v3 = APAdvertiserInfoCopyProperty();
  HasFeature = APSFeaturesHasFeature();
  if (v3)
  {
    CFRelease(v3);
  }

  FigSimpleMutexUnlock();
  return HasFeature;
}

uint64_t spDescription_DescribesSameTransportDevice(uint64_t a1, const void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  v4 = CFEqual(*DerivedStorage, a2);
  FigSimpleMutexUnlock();
  return v4;
}

uint64_t SPEndpointCreateWithEndpointDescription(uint64_t a1, const void *a2, const __CFDictionary *a3, CFTypeRef *a4)
{
  v64 = *MEMORY[0x277D85DE8];
  v59 = 0;
  cf = 0;
  if (!a2)
  {
    SPEndpointCreateWithEndpointDescription_cold_13();
LABEL_86:
    v28 = 4294950576;
    goto LABEL_22;
  }

  if (!a4)
  {
    SPEndpointCreateWithEndpointDescription_cold_12();
    goto LABEL_86;
  }

  FigEndpointExtendedGetClassID();
  v8 = CMDerivedObjectCreate();
  if (v8)
  {
    v28 = v8;
    SPEndpointCreateWithEndpointDescription_cold_1(v8);
    goto LABEL_22;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  DerivedStorage[30] = CFRetain(a2);
  APEndpointDescriptionGetCMBaseObject();
  v11 = v10;
  v12 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v12)
  {
    v28 = 4294954514;
LABEL_21:
    APSLogErrorAt();
    goto LABEL_22;
  }

  v13 = v12(v11, @"Name", a1, &v59);
  if (v13)
  {
    v28 = v13;
    goto LABEL_21;
  }

  v14 = FigSimpleMutexCreate();
  DerivedStorage[5] = v14;
  if (!v14)
  {
    SPEndpointCreateWithEndpointDescription_cold_11();
LABEL_93:
    v28 = 4294950575;
    goto LABEL_22;
  }

  SNPrintF(label, 64, "SPEndpoint.%{ptr}.%s", cf, "network");
  v15 = dispatch_queue_create(label, 0);
  DerivedStorage[35] = v15;
  if (!v15)
  {
    SPEndpointCreateWithEndpointDescription_cold_10();
    goto LABEL_93;
  }

  SNPrintF(label, 64, "SPEndpoint.%{ptr}.%s", cf, "teardown");
  v16 = dispatch_queue_create(label, 0);
  DerivedStorage[1] = v16;
  if (!v16)
  {
    SPEndpointCreateWithEndpointDescription_cold_9();
    goto LABEL_93;
  }

  SNPrintF(label, 64, "SPEndpoint.%{ptr}.%s", cf, "eventMessage");
  v17 = dispatch_queue_create(label, 0);
  DerivedStorage[2] = v17;
  if (!v17)
  {
    SPEndpointCreateWithEndpointDescription_cold_8();
    goto LABEL_93;
  }

  SNPrintF(label, 64, "SPEndpoint.%{ptr}.%s", cf, "notification");
  v18 = dispatch_queue_create(label, 0);
  *DerivedStorage = v18;
  if (!v18)
  {
    SPEndpointCreateWithEndpointDescription_cold_7();
    goto LABEL_93;
  }

  FigSimpleMutexLock();
  v19 = cf;
  v20 = CMBaseObjectGetDerivedStorage();
  v62 = 0;
  *label = 0;
  v61 = 0;
  if (*(v20 + 48))
  {
    Mutable = 0;
LABEL_83:
    v28 = 0;
    goto LABEL_49;
  }

  v21 = v20;
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (Mutable)
  {
    v23 = CFGetAllocator(v19);
    APEndpointDescriptionGetCMBaseObject();
    v25 = v24;
    v26 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v26)
    {
      v27 = v26(v25, @"DeviceID", v23, label);
      if (v27)
      {
        v28 = v27;
      }

      else
      {
        if (*label && !FigCFEqual())
        {
          if (gLogCategory_SPEndpoint <= 50 && (gLogCategory_SPEndpoint != -1 || _LogCategory_Initialize()))
          {
            LogPrintF(&gLogCategory_SPEndpoint, "OSStatus spendpoint_refreshFromEndpointDescription(FigEndpointRef, CFDictionaryRef, CFDictionaryRef *)", 33554482, "[%{ptr}] ID has changed from %@ to %@.\n", v19, v21[32], *label);
          }

          v29 = v21[32];
          v30 = *label;
          v21[32] = *label;
          if (v30)
          {
            CFRetain(v30);
          }

          if (v29)
          {
            CFRelease(v29);
          }

          CFDictionarySetValue(Mutable, @"SPIDDidChange", *MEMORY[0x277CBED28]);
        }

        v31 = CFGetAllocator(v19);
        APEndpointDescriptionGetCMBaseObject();
        v33 = v32;
        v34 = *(*(CMBaseObjectGetVTable() + 8) + 48);
        if (v34)
        {
          v35 = v34(v33, @"MACAddress", v31, &v62);
          if (v35)
          {
            v28 = v35;
          }

          else
          {
            v36 = v21[33];
            v37 = v62;
            v21[33] = v62;
            if (v37)
            {
              CFRetain(v37);
            }

            if (v36)
            {
              CFRelease(v36);
            }

            v38 = CFGetAllocator(v19);
            APEndpointDescriptionGetCMBaseObject();
            v40 = v39;
            v41 = *(*(CMBaseObjectGetVTable() + 8) + 48);
            if (v41)
            {
              v42 = v41(v40, @"Name", v38, &v61);
              if (!v42)
              {
                v43 = v21[31];
                v44 = v61;
                v21[31] = v61;
                if (v44)
                {
                  CFRetain(v44);
                }

                if (v43)
                {
                  CFRelease(v43);
                }

                if (gLogCategory_SPEndpoint <= 30 && (gLogCategory_SPEndpoint != -1 || _LogCategory_Initialize()))
                {
                  LogPrintF(&gLogCategory_SPEndpoint, "OSStatus spendpoint_refreshFromEndpointDescription(FigEndpointRef, CFDictionaryRef, CFDictionaryRef *)", 33554462, "[%{ptr}] %###s id:%@ name:%@\n", v19, "OSStatus spendpoint_refreshFromEndpointDescription(FigEndpointRef, CFDictionaryRef, CFDictionaryRef *)", v21[32], v21[31]);
                }

                goto LABEL_83;
              }

              v28 = v42;
            }

            else
            {
              v28 = 4294954514;
            }
          }
        }

        else
        {
          v28 = 4294954514;
        }
      }
    }

    else
    {
      v28 = 4294954514;
    }

    APSLogErrorAt();
    goto LABEL_49;
  }

  SPEndpointCreateWithEndpointDescription_cold_2();
  v28 = 4294950575;
LABEL_49:
  if (*label)
  {
    CFRelease(*label);
  }

  if (v62)
  {
    CFRelease(v62);
  }

  if (v61)
  {
    CFRelease(v61);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  FigSimpleMutexUnlock();
  if (v28)
  {
    goto LABEL_21;
  }

  v45 = CMBaseObjectGetDerivedStorage();
  *label = 0;
  if (a3)
  {
    Value = CFDictionaryGetValue(a3, @"EventRecorder");
    v47 = *(v45 + 32);
    *(v45 + 32) = Value;
    if (Value)
    {
      CFRetain(Value);
    }

    if (v47)
    {
      CFRelease(v47);
    }
  }

  v50 = *(v45 + 24);
  v49 = (v45 + 24);
  v48 = v50;
  if (v50)
  {
    CFRelease(v48);
    *v49 = 0;
  }

  v51 = APSEventRecorderCreate();
  if (v51)
  {
    v28 = v51;
    SPEndpointCreateWithEndpointDescription_cold_3(v51);
  }

  else
  {
    APEndpointDescriptionGetCMBaseObject();
    v53 = v52;
    v54 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v54 && (v54(v53, @"TransportDevice", *MEMORY[0x277CBECE8], label), *label) && (EventRecorder = APTransportDeviceGetEventRecorder()) != 0 && (v56 = MEMORY[0x223DAE7F0](*v49, EventRecorder), v56))
    {
      v28 = v56;
      SPEndpointCreateWithEndpointDescription_cold_4(v56);
    }

    else
    {
      APSEventRecorderAddSignPostForEvent();
      v28 = 0;
    }
  }

  if (*label)
  {
    CFRelease(*label);
  }

  if (!v28)
  {
    if (gLogCategory_SPEndpoint <= 50 && (gLogCategory_SPEndpoint != -1 || _LogCategory_Initialize()))
    {
      SPEndpointCreateWithEndpointDescription_cold_6(&cf, &v59, v57);
    }

    v28 = 0;
    *a4 = cf;
    cf = 0;
    goto LABEL_78;
  }

  SPEndpointCreateWithEndpointDescription_cold_5(v28);
LABEL_22:
  if (cf)
  {
    CFRelease(cf);
  }

LABEL_78:
  if (v59)
  {
    CFRelease(v59);
  }

  return v28;
}

void spendpoint_Finalize(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (gLogCategory_SPEndpoint <= 30 && (gLogCategory_SPEndpoint != -1 || _LogCategory_Initialize()))
  {
    spendpoint_Finalize_cold_1(a1);
  }

  if (qword_280FB1BC8 != -1)
  {
    spendpoint_Finalize_cold_2();
  }

  if (_MergedGlobals_21)
  {
    v3 = *_MergedGlobals_21;
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __spendpoint_Finalize_block_invoke;
    v13[3] = &__block_descriptor_48_e5_v8__0l;
    v13[4] = _MergedGlobals_21;
    v13[5] = a1;
    dispatch_sync(v3, v13);
  }

  if (*DerivedStorage)
  {
    dispatch_release(*DerivedStorage);
    *DerivedStorage = 0;
  }

  if (*(DerivedStorage + 136))
  {
    if (gLogCategory_SPEndpoint <= 100 && (gLogCategory_SPEndpoint != -1 || _LogCategory_Initialize()))
    {
      spendpoint_Finalize_cold_3(a1);
    }

    __break(1u);
  }

  else
  {
    FigSimpleMutexLock();
    spendpoint_resetActivationState(a1, DerivedStorage + 56, *(DerivedStorage + 256));
    spendpoint_clearEndpointState(a1);
    v4 = *(DerivedStorage + 248);
    if (v4)
    {
      CFRelease(v4);
      *(DerivedStorage + 248) = 0;
    }

    v5 = *(DerivedStorage + 256);
    if (v5)
    {
      CFRelease(v5);
      *(DerivedStorage + 256) = 0;
    }

    FigSimpleMutexUnlock();
    v6 = *(DerivedStorage + 32);
    if (v6)
    {
      CFRelease(v6);
      *(DerivedStorage + 32) = 0;
    }

    v7 = *(DerivedStorage + 24);
    if (v7)
    {
      CFRelease(v7);
      *(DerivedStorage + 24) = 0;
    }

    v8 = *(DerivedStorage + 232);
    if (v8)
    {
      CFRelease(v8);
      *(DerivedStorage + 232) = 0;
    }

    v9 = *(DerivedStorage + 240);
    if (v9)
    {
      CFRelease(v9);
      *(DerivedStorage + 240) = 0;
    }

    v10 = *(DerivedStorage + 16);
    if (v10)
    {
      dispatch_release(v10);
      *(DerivedStorage + 16) = 0;
    }

    v11 = *(DerivedStorage + 8);
    if (v11)
    {
      dispatch_release(v11);
      *(DerivedStorage + 8) = 0;
    }

    v12 = *(DerivedStorage + 280);
    if (v12)
    {
      dispatch_release(v12);
      *(DerivedStorage + 280) = 0;
    }

    FigSimpleMutexDestroy();
  }
}

__CFString *spendpoint_CopyDebugDescription(uint64_t a1)
{
  v2 = *MEMORY[0x277CBECE8];
  Mutable = CFStringCreateMutable(*MEMORY[0x277CBECE8], 0);
  cf = 0;
  CFStringAppendFormat(Mutable, 0, @"<SPEndpoint %p>", a1);
  CMBaseObject = FigEndpointGetCMBaseObject();
  v5 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v5)
  {
    v6 = v5(CMBaseObject, @"EndpointShowInfo", v2, &cf);
    v7 = cf;
    if (!v6)
    {
      __s = 0;
      ASPrintF(&__s, "%@", cf);
      v8 = __s;
      v9 = strlen(__s);
      if (v9 && __s[v9 - 1] == 10)
      {
        __s[v9 - 1] = 0;
        v8 = __s;
      }

      CFStringAppendFormat(Mutable, 0, @"%s", v8);
      free(__s);
      v7 = cf;
    }

    if (v7)
    {
      CFRelease(v7);
    }
  }

  return Mutable;
}

uint64_t spendpoint_CopyProperty(uint64_t a1, const void *a2, const __CFAllocator *a3, CFTypeRef *a4)
{
  CMBaseObjectGetDerivedStorage();
  if (gLogCategory_SPEndpoint <= 10 && (gLogCategory_SPEndpoint != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_SPEndpoint, "OSStatus spendpoint_CopyProperty(CMBaseObjectRef, CFStringRef, CFAllocatorRef, void *)", 33554442, "[%{ptr}] %###s propertyKey: '%@'\n", a1, "OSStatus spendpoint_CopyProperty(CMBaseObjectRef, CFStringRef, CFAllocatorRef, void *)", a2);
  }

  v8 = *MEMORY[0x277CC1568];
  if (CFEqual(a2, *MEMORY[0x277CC1568]))
  {
    v9 = MEMORY[0x277CC1A38];
LABEL_10:
    v10 = 0;
    *a4 = CFRetain(*v9);
    return v10;
  }

  if (CFEqual(a2, *MEMORY[0x277CC13F0]) || CFEqual(a2, *MEMORY[0x277CC13C0]))
  {
    v9 = MEMORY[0x277CBED10];
    goto LABEL_10;
  }

  FigSimpleMutexLock();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 48) && !CFEqual(a2, v8) && !CFEqual(a2, *MEMORY[0x277CC1370]) && !CFEqual(a2, *MEMORY[0x277CC1368]) && !CFEqual(a2, *MEMORY[0x277CC1450]))
  {
    v10 = 4294950573;
LABEL_54:
    FigSimpleMutexUnlock();
    return v10;
  }

  if (CFEqual(a2, *MEMORY[0x277CC14F0]))
  {
    APEndpointDescriptionGetCMBaseObject();
    v14 = v13;
    v15 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v15)
    {
      v16 = v15(v14, @"SubType", a3, a4);
LABEL_20:
      v10 = v16;
      goto LABEL_21;
    }

    v10 = 4294954514;
LABEL_28:
    FigSimpleMutexUnlock();
LABEL_29:
    APSLogErrorAt();
    return v10;
  }

  if (CFEqual(a2, *MEMORY[0x277CC1368]))
  {
    v18 = *(DerivedStorage + 256);
    if (!v18)
    {
      goto LABEL_53;
    }

    goto LABEL_52;
  }

  if (CFEqual(a2, *MEMORY[0x277CC1428]))
  {
    v18 = *(DerivedStorage + 264);
    if (!v18)
    {
      goto LABEL_53;
    }

    goto LABEL_52;
  }

  if (CFEqual(a2, @"EndpointDescription"))
  {
    v18 = *(DerivedStorage + 240);
    if (!v18)
    {
      goto LABEL_53;
    }

    goto LABEL_52;
  }

  if (CFEqual(a2, *MEMORY[0x277CC1450]))
  {
    v18 = *(DerivedStorage + 248);
    if (!v18)
    {
      goto LABEL_53;
    }

    goto LABEL_52;
  }

  if (CFEqual(a2, *MEMORY[0x277CC1370]))
  {
    v20 = MEMORY[0x277CBED28];
    if (*(DerivedStorage + 72) != 2)
    {
      v20 = MEMORY[0x277CBED10];
    }

    goto LABEL_51;
  }

  if (CFEqual(a2, *MEMORY[0x277CC11E8]))
  {
    valuePtr = 0;
    if (*(DerivedStorage + 72) == 2)
    {
      valuePtr = *(DerivedStorage + 64);
    }

    v21 = CFNumberCreate(a3, kCFNumberSInt64Type, &valuePtr);
    *a4 = v21;
    if (v21)
    {
      goto LABEL_59;
    }

    spendpoint_CopyProperty_cold_1();
    goto LABEL_84;
  }

  if (CFEqual(a2, @"IsInUse"))
  {
    v20 = MEMORY[0x277CBED28];
    v22 = *(DerivedStorage + 72);
    goto LABEL_64;
  }

  if (CFEqual(a2, @"IsEngaged"))
  {
    v20 = MEMORY[0x277CBED28];
    v22 = *(DerivedStorage + 144);
LABEL_64:
    if (!v22)
    {
      v20 = MEMORY[0x277CBED10];
    }

    goto LABEL_51;
  }

  if (CFEqual(a2, *MEMORY[0x277CC1498]))
  {
    v18 = *MEMORY[0x277CC11D8];
    if (!*MEMORY[0x277CC11D8])
    {
      goto LABEL_53;
    }

    goto LABEL_52;
  }

  if (!CFEqual(a2, *MEMORY[0x277CC14F8]))
  {
    if (CFEqual(a2, *MEMORY[0x277CC14E0]))
    {
      v16 = spendpoint_copyStreams(a1, a3, a4);
      goto LABEL_20;
    }

    if (CFEqual(a2, *MEMORY[0x277CC15B0]))
    {
      goto LABEL_77;
    }

    if (CFEqual(a2, *MEMORY[0x277CC15B8]))
    {
      valuePtr = 0;
      v25 = CFNumberCreate(a3, kCFNumberSInt64Type, &valuePtr);
      *a4 = v25;
      if (!v25)
      {
        spendpoint_CopyProperty_cold_4();
        goto LABEL_84;
      }

LABEL_59:
      v10 = 0;
      goto LABEL_21;
    }

    if (CFEqual(a2, *MEMORY[0x277CC1440]))
    {
      v26 = kAPEndpointDescriptionProperty_Model;
      goto LABEL_91;
    }

    if (CFEqual(a2, *MEMORY[0x277CC1430]))
    {
      v26 = kAPEndpointDescriptionProperty_Manufacturer;
      goto LABEL_91;
    }

    if (CFEqual(a2, *MEMORY[0x277CC1328]))
    {
      v26 = kAPEndpointDescriptionProperty_FirmwareVersion;
      goto LABEL_91;
    }

    if (CFEqual(a2, *MEMORY[0x277CC14C0]))
    {
      v26 = kAPEndpointDescriptionProperty_SerialNumber;
      goto LABEL_91;
    }

    if (CFEqual(a2, *MEMORY[0x277CC1270]))
    {
      v20 = MEMORY[0x277CC0A70];
      goto LABEL_51;
    }

    if (CFEqual(a2, *MEMORY[0x277CC1210]))
    {
      v26 = kAPEndpointDescriptionProperty_AirPlaySecurity;
      goto LABEL_91;
    }

    if (CFEqual(a2, *MEMORY[0x277CC1558]))
    {
      v20 = MEMORY[0x277CC1A10];
      goto LABEL_51;
    }

    if (CFEqual(a2, @"Features"))
    {
      v16 = APEndpointDescriptionCopyFeatures(*(DerivedStorage + 240), a4);
      goto LABEL_20;
    }

    if (CFEqual(a2, @"SourceVersion"))
    {
      v26 = kAPEndpointDescriptionProperty_SourceVersion;
      goto LABEL_91;
    }

    if (CFEqual(a2, @"EndpointStatus"))
    {
      v29 = CFNumberCreate(a3, kCFNumberSInt32Type, (DerivedStorage + 272));
      *a4 = v29;
      if (!v29)
      {
        spendpoint_CopyProperty_cold_5();
        v10 = 4294950575;
        goto LABEL_28;
      }
    }

    else
    {
      if (CFEqual(a2, *MEMORY[0x277CC1238]))
      {
        v26 = kAPEndpointDescriptionProperty_VodkaVersion;
        goto LABEL_91;
      }

      if (CFEqual(a2, *MEMORY[0x277CC1208]))
      {
        v26 = kAPEndpointDescriptionProperty_SupportsAirPlayFromCloud;
        goto LABEL_91;
      }

      if (CFEqual(a2, *MEMORY[0x277CC13F8]))
      {
LABEL_77:
        v20 = MEMORY[0x277CBED10];
LABEL_51:
        v18 = *v20;
LABEL_52:
        v18 = CFRetain(v18);
LABEL_53:
        v10 = 0;
        *a4 = v18;
        goto LABEL_54;
      }

      if (!CFEqual(a2, @"EndpointShowInfo"))
      {
        if (CFEqual(a2, *MEMORY[0x277CC1540]))
        {
          v26 = kAPEndpointDescriptionProperty_StatusFlags;
        }

        else if (CFEqual(a2, @"TransportDevice"))
        {
          v26 = kAPEndpointDescriptionProperty_TransportDevice;
        }

        else
        {
          if (CFEqual(a2, *MEMORY[0x277CC11F0]))
          {
            valuePtr = 0;
            if (*(DerivedStorage + 136))
            {
              valuePtr = *(DerivedStorage + 56);
            }

            v30 = CFNumberCreate(a3, kCFNumberSInt64Type, &valuePtr);
            *a4 = v30;
            if (v30)
            {
              goto LABEL_59;
            }

            spendpoint_CopyProperty_cold_6();
            goto LABEL_84;
          }

          if (CFEqual(a2, *MEMORY[0x277CC1398]))
          {
            isConnected = spendpoint_isConnected(a1);
            v20 = MEMORY[0x277CBED28];
            if (!isConnected)
            {
              v20 = MEMORY[0x277CBED10];
            }

            goto LABEL_51;
          }

          if (CFEqual(a2, *MEMORY[0x277CC14C8]) || CFEqual(a2, @"SupportsMuteControl"))
          {
            goto LABEL_77;
          }

          if (!CFEqual(a2, @"EndpointInfo"))
          {
            v10 = 4294954512;
            goto LABEL_54;
          }

          v26 = kAPEndpointDescriptionProperty_EndpointInfo;
        }

LABEL_91:
        v27 = *v26;
        APEndpointDescriptionGetCMBaseObject();
        v16 = CMBaseObjectCopyProperty(v28, v27, a3, a4);
        goto LABEL_20;
      }

      spendpoint_copyShowInfoDictionary(a1, a4);
    }

    v10 = 0;
    goto LABEL_54;
  }

  valuePtr = 0;
  SupportedFeatures = spendpoint_getSupportedFeatures(a1, &valuePtr);
  if (!SupportedFeatures)
  {
    v24 = CFNumberCreate(a3, kCFNumberSInt64Type, &valuePtr);
    *a4 = v24;
    if (!v24)
    {
      spendpoint_CopyProperty_cold_3();
LABEL_84:
      v10 = 4294950575;
      goto LABEL_21;
    }

    goto LABEL_59;
  }

  v10 = SupportedFeatures;
  spendpoint_CopyProperty_cold_2(SupportedFeatures);
LABEL_21:
  FigSimpleMutexUnlock();
  if (v10 > -6728)
  {
    if (v10 != -6727 && v10 != 0)
    {
      goto LABEL_29;
    }
  }

  else if (v10 != -16723 && v10 != -12784)
  {
    goto LABEL_29;
  }

  return v10;
}

uint64_t spendpoint_SetProperty(uint64_t a1, uint64_t a2, uint64_t a3)
{
  CMBaseObjectGetDerivedStorage();
  if (gLogCategory_SPEndpoint <= 30 && (gLogCategory_SPEndpoint != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_SPEndpoint, "OSStatus spendpoint_SetProperty(CMBaseObjectRef, CFStringRef, CFTypeRef)", 33554462, "[%{ptr}] %###s propertyKey: '%@', propertyValue: '%@'\n", a1, "OSStatus spendpoint_SetProperty(CMBaseObjectRef, CFStringRef, CFTypeRef)", a2, a3);
  }

  if (a2)
  {
    FigSimpleMutexLock();
    if (*(CMBaseObjectGetDerivedStorage() + 48))
    {
      spendpoint_SetProperty_cold_1();
      v6 = 4294950573;
    }

    else
    {
      v6 = 4294954512;
    }

    FigSimpleMutexUnlock();
    APSLogErrorAt();
  }

  else
  {
    spendpoint_SetProperty_cold_2();
    return 4294950576;
  }

  return v6;
}

void spendpoint_resetActivationState(uint64_t a1, uint64_t a2, uint64_t a3)
{
  CMBaseObjectGetDerivedStorage();
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a2 + 88) = 0;
  *(a2 + 40) = 0;
  v6 = *(a2 + 24);
  if (v6)
  {
    CFRelease(v6);
    *(a2 + 24) = 0;
  }

  v7 = *(a2 + 32);
  if (v7)
  {
    CFRelease(v7);
    *(a2 + 32) = 0;
  }

  v8 = *(a2 + 48);
  if (v8)
  {
    CFRelease(v8);
    *(a2 + 48) = 0;
  }

  v9 = *(a2 + 56);
  if (v9)
  {
    CFRelease(v9);
    *(a2 + 56) = 0;
  }

  v10 = *(a2 + 64);
  if (v10)
  {
    CFRelease(v10);
    *(a2 + 64) = 0;
  }

  v11 = *(a2 + 72);
  if (v11)
  {
    CFRelease(v11);
    *(a2 + 72) = 0;
  }

  v12 = *(a2 + 80);
  if (v12)
  {
    CFRelease(v12);
    *(a2 + 80) = 0;
  }

  if (*(a2 + 96))
  {
    CMNotificationCenterGetDefaultLocalCenter();
    FigNotificationCenterRemoveWeakListener();
  }

  else
  {
    v13 = *(a2 + 104);
    if (v13)
    {
      if (gLogCategory_SPEndpoint <= 50 && (gLogCategory_SPEndpoint != -1 || _LogCategory_Initialize()))
      {
        LogPrintF(&gLogCategory_SPEndpoint, "void spendpoint_resetActivationState(FigEndpointRef, SPEndpointActivationState *, CFStringRef)", 33554482, "[%{ptr}] <SidePlayActivation> Unregistering for AVSC notifications from remote device ID %@\n", a1, a3);
      }

      CMNotificationCenterGetDefaultLocalCenter();
      FigNotificationCenterRemoveWeakListener();
      v14 = *(a2 + 112);
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __spendpoint_resetActivationState_block_invoke;
      block[3] = &unk_2784A05E8;
      block[4] = v13;
      block[5] = a3;
      dispatch_async(v14, block);
    }
  }

  *(a2 + 96) = 0;
  *(a2 + 104) = 0;
  v15 = *(a2 + 112);
  if (v15)
  {
    dispatch_release(v15);
    *(a2 + 112) = 0;
  }

  v16 = *(a2 + 120);
  if (v16)
  {
    CFRelease(v16);
    *(a2 + 120) = 0;
  }

  v17 = *(a2 + 128);
  if (v17)
  {
    CFRelease(v17);
    *(a2 + 128) = 0;
  }
}

void spendpoint_clearEndpointState(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (gLogCategory_SPEndpoint <= 50 && (gLogCategory_SPEndpoint != -1 || _LogCategory_Initialize()))
  {
    spendpoint_clearEndpointState_cold_1(DerivedStorage, a1, v2);
  }

  v4 = *(DerivedStorage + 264);
  if (v4)
  {
    CFRelease(v4);
    *(DerivedStorage + 264) = 0;
  }
}

uint64_t __introspector_getCollectionOfActiveSPEndpoints_block_invoke(uint64_t a1)
{
  result = IsAppleInternalBuild();
  if (result)
  {
    _MergedGlobals_21 = malloc_type_calloc(1uLL, 0x18uLL, 0xF00401F3BCE50uLL);
    *_MergedGlobals_21 = dispatch_queue_create("CollectionOfActiveSPEndpoints", 0);
    Mutable = CFSetCreateMutable(*MEMORY[0x277CBECE8], 0, 0);
    v3 = _MergedGlobals_21;
    *(_MergedGlobals_21 + 8) = Mutable;
    *(v3 + 16) = "ActiveSPEndpoints";

    return APSIntrospectorAddCommand();
  }

  return result;
}

void spendpoint_handleClientIsActiveDidChange(uint64_t a1, const void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (gLogCategory_SPEndpoint <= 50 && (gLogCategory_SPEndpoint != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_SPEndpoint, "void spendpoint_handleClientIsActiveDidChange(CMNotificationCenterRef, const void *, CFStringRef, const void *, CFTypeRef)", 33554482, "[%{ptr}] <SidePlayNotification> Received %@: %@\n", a2, a3, a5);
  }

  if (*(DerivedStorage + 72) == 2)
  {
    if (*(DerivedStorage + 160) && (Value = FigCFDictionaryGetValue(), !FigCFEqual()))
    {
      spendpoint_handleClientIsActiveDidChange_cold_2(DerivedStorage + 256, a2, Value);
    }

    else
    {
      Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
      if (Mutable)
      {
        v11 = Mutable;
        if (*(DerivedStorage + 152) || *(DerivedStorage + 160))
        {
          FigCFDictionarySetValueFromKeyInDict();
          FigCFDictionarySetValueFromKeyInDict();
          FigCFDictionarySetValueFromKeyInDict();
          FigCFDictionarySetValueFromKeyInDict();
          FigCFDictionarySetValueFromKeyInDict();
          FigCFDictionarySetValueFromKeyInDict();
        }

        FigSimpleMutexLock();
        v12 = spEndpoint_sendCommandInternal(a2, @"clientIsActiveDidChange", v11, 0, 0);
        FigSimpleMutexUnlock();
        if (v12)
        {
          spendpoint_handleClientIsActiveDidChange_cold_3(v12);
        }

        CFRelease(v11);
      }

      else
      {
        spendpoint_handleClientIsActiveDidChange_cold_4();
      }
    }
  }

  else
  {
    spendpoint_handleClientIsActiveDidChange_cold_1();
  }
}

void spEndpoint_sendCommand(uint64_t a1)
{
  CMBaseObjectGetDerivedStorage();
  v28 = 0;
  v29 = 0;
  v2 = *(a1 + 48);
  if (v2)
  {
    spEndpoint_sendCommand_cold_1(v2);
    LODWORD(v14) = 0;
LABEL_30:
    v16 = 0;
    goto LABEL_31;
  }

  if (FigCFEqual())
  {
    cf[0] = 0;
    v30 = 0;
    v31 = 0;
    APSenderSessionGetCMBaseObject();
    v4 = v3;
    v5 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v5)
    {
      v6 = *MEMORY[0x277CBECE8];
      v7 = v5(v4, @"TransportControlStream", *MEMORY[0x277CBECE8], cf);
      if (v7)
      {
        v14 = v7;
      }

      else
      {
        v8 = cf[0];
        v9 = *(*(CMBaseObjectGetVTable() + 16) + 56);
        if (v9)
        {
          v10 = v9(v8, 1819240307, 0, &v31);
          if (!v10)
          {
            CFDataWithBlockBufferNoCopy = FigCreateCFDataWithBlockBufferNoCopy();
            if (CFDataWithBlockBufferNoCopy)
            {
              v14 = CFDataWithBlockBufferNoCopy;
              spEndpoint_sendCommand_cold_2(CFDataWithBlockBufferNoCopy);
            }

            else
            {
              Mutable = CFDictionaryCreateMutable(v6, 1, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
              if (Mutable)
              {
                v13 = Mutable;
                CFDictionarySetValue(Mutable, *MEMORY[0x277CC1668], v30);
                v14 = 0;
                v28 = v13;
              }

              else
              {
                spEndpoint_sendCommand_cold_3();
                v14 = 4294950575;
              }
            }

            goto LABEL_22;
          }

          v14 = v10;
        }

        else
        {
          v14 = 4294954514;
        }
      }
    }

    else
    {
      v14 = 4294954514;
    }

    APSLogErrorAt();
LABEL_22:
    if (cf[0])
    {
      CFRelease(cf[0]);
    }

    if (v31)
    {
      CFRelease(v31);
    }

    if (v30)
    {
      CFRelease(v30);
    }

    if (v14)
    {
      spEndpoint_sendCommand_cold_4(v14);
    }

    goto LABEL_30;
  }

  v15 = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  v16 = v15;
  if (!v15)
  {
    spEndpoint_sendCommand_cold_6();
    LODWORD(v14) = -16721;
    goto LABEL_31;
  }

  CFDictionarySetValue(v15, @"type", *(a1 + 16));
  v17 = *(a1 + 24);
  if (v17)
  {
    CFDictionarySetValue(v16, @"params", v17);
  }

  APSenderSessionGetCMBaseObject();
  v19 = v18;
  v20 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v20)
  {
    LODWORD(v14) = -12782;
LABEL_19:
    APSLogErrorAt();
    goto LABEL_31;
  }

  v21 = v20(v19, @"TransportControlStream", *MEMORY[0x277CBECE8], &v29);
  if (v21)
  {
    LODWORD(v14) = v21;
    goto LABEL_19;
  }

  v22 = APTransportStreamSendPlistMessageCreatingPlistReply();
  LODWORD(v14) = v22;
  if (v22)
  {
    spEndpoint_sendCommand_cold_5(v22);
  }

LABEL_31:
  v23 = *(a1 + 32);
  if (v23)
  {
    cf[0] = *a1;
    cf[1] = v28;
    v24 = *(a1 + 40);
    cf[2] = v23;
    cf[3] = v24;
    cf[4] = v14;
    CFRetain(cf[0]);
    if (v28)
    {
      CFRetain(v28);
    }

    APSDispatchAsyncFHelper();
  }

  if (v16)
  {
    CFRelease(v16);
  }

  if (v29)
  {
    CFRelease(v29);
  }

  if (v28)
  {
    CFRelease(v28);
  }

  CFRelease(*a1);
  CFRelease(*(a1 + 16));
  v25 = *(a1 + 24);
  if (v25)
  {
    CFRelease(v25);
  }

  v26 = *(a1 + 8);
  if (v26)
  {
    CFRelease(v26);
  }
}

uint64_t spendpoint_getSupportedFeatures(uint64_t a1, void *a2)
{
  CMBaseObjectGetDerivedStorage();
  if (a2)
  {
    v3 = APSGetFBOPropertyInt64();
    result = 0;
    *a2 = 8 * (v3 != 0);
  }

  else
  {
    spendpoint_getSupportedFeatures_cold_1();
    return 4294950576;
  }

  return result;
}

uint64_t spendpoint_copyStreams(uint64_t a1, const __CFAllocator *a2, CFMutableArrayRef *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  Mutable = CFArrayCreateMutable(a2, 0, MEMORY[0x277CBF128]);
  if (Mutable)
  {
    v7 = Mutable;
    if (*(DerivedStorage + 88))
    {
      CFSetApplyBlock();
    }

    result = 0;
    *a3 = v7;
  }

  else
  {
    spendpoint_copyStreams_cold_1();
    return 4294950575;
  }

  return result;
}

void spendpoint_copyShowInfoDictionary(uint64_t a1, __CFDictionary **a2)
{
  v36 = *MEMORY[0x277D85DE8];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  value = 0;
  cf = 0;
  v30 = 0;
  v31 = 0;
  v35 = 0;
  v34 = 0;
  v5 = *MEMORY[0x277CBECE8];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (Mutable)
  {
    v7 = Mutable;
    SNPrintF(&v34, 10, "[%{ptr}]", a1);
    CFDictionarySetCString();
    v8 = *MEMORY[0x277CBED10];
    if (*(DerivedStorage + 136))
    {
      v9 = *MEMORY[0x277CBED28];
    }

    else
    {
      v9 = *MEMORY[0x277CBED10];
    }

    CFDictionarySetValue(v7, @"Activated", v9);
    CFDictionarySetValue(v7, @"Name", *(DerivedStorage + 248));
    CFDictionarySetValue(v7, @"DeviceID", *(DerivedStorage + 256));
    APEndpointDescriptionGetCMBaseObject();
    v11 = v10;
    v12 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v12)
    {
      v12(v11, @"TransportDevice", v5, &cf);
    }

    if (cf)
    {
      DiscoveryID = APTransportDeviceGetDiscoveryID();
      CFDictionarySetValue(v7, @"DiscoveryID", DiscoveryID);
      if (cf)
      {
        CFRelease(cf);
        cf = 0;
      }
    }

    APEndpointDescriptionGetCMBaseObject();
    v15 = v14;
    v16 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v16)
    {
      v16(v15, @"Model", v5, &value);
    }

    if (value)
    {
      CFDictionarySetValue(v7, @"Model", value);
      if (value)
      {
        CFRelease(value);
        value = 0;
      }
    }

    APEndpointDescriptionGetCMBaseObject();
    v18 = v17;
    v19 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v19)
    {
      v19(v18, @"SourceVersion", v5, &value);
    }

    if (value)
    {
      CFDictionarySetValue(v7, @"SourceVersion", value);
      if (value)
      {
        CFRelease(value);
        value = 0;
      }
    }

    v20 = *(DerivedStorage + 240);
    v21 = *(*(CMBaseObjectGetVTable() + 16) + 8);
    if (v21)
    {
      v21(v20, &v31);
      if (v31)
      {
        CFDictionarySetValue(v7, @"AirPlayFeatures", v31);
        if (v31)
        {
          CFRelease(v31);
          v31 = 0;
        }
      }
    }

    APEndpointDescriptionGetCMBaseObject();
    v23 = v22;
    v24 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v24)
    {
      v24(v23, @"StatusFlags", v5, &value);
    }

    if (value)
    {
      CFDictionarySetValue(v7, @"StatusFlags", value);
      if (value)
      {
        CFRelease(value);
        value = 0;
      }
    }

    v25 = *(DerivedStorage + 88);
    if (v25)
    {
      CFSetApplyFunction(v25, spendpoint_copyShowInfoForStreamsSetEntry, v7);
    }

    v26 = v8;
    if (*(DerivedStorage + 136))
    {
      APSenderSessionGetCMBaseObject();
      v28 = v27;
      v29 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      v26 = v8;
      if (v29)
      {
        v29(v28, @"ShowInfo", v5, &v30);
        v26 = v8;
        if (v30)
        {
          CFDictionarySetValue(v7, @"SenderSessionInfo", v30);
          FigCFDictionaryGetBooleanIfPresent();
          v26 = v8;
        }
      }
    }

    CFDictionarySetValue(v7, @"Started", v26);
    CFDictionarySetInt64();
    CFDictionarySetValue(v7, @"IsLocal", v8);
    *a2 = v7;
    if (v30)
    {
      CFRelease(v30);
    }
  }

  else
  {
    spendpoint_copyShowInfoDictionary_cold_1();
  }

  if (value)
  {
    CFRelease(value);
  }
}

uint64_t spendpoint_isConnected(uint64_t a1)
{
  v1 = *(CMBaseObjectGetDerivedStorage() + 136);
  if (!v1)
  {
    return 0;
  }

  v2 = *(*(CMBaseObjectGetVTable() + 16) + 8);
  if (!v2)
  {
    return 0;
  }

  return v2(v1);
}

uint64_t spendpoint_Activate(const void *a1, uint64_t a2, const __CFDictionary *a3, uint64_t a4, uint64_t a5)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  value = 0;
  if (a2)
  {
    v11 = a2;
  }

  else
  {
    v11 = 16;
  }

  v75 = 0u;
  v76 = 0u;
  v77 = 0u;
  v78 = 0;
  v73 = 0u;
  v74 = 0u;
  APSEventRecorderRecordEventWithFlags();
  FigSimpleMutexLock();
  if (gLogCategory_SPEndpoint <= 50 && (gLogCategory_SPEndpoint != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_SPEndpoint, "OSStatus spendpoint_Activate(FigEndpointRef, FigEndpointFeatures, CFDictionaryRef, FigEndpointActivationCompletionCallback, void *)", 33554482, "[%{ptr}] <SidePlayActivation> Activating endpoint '%@' with features %#ll{flags} and options %@\n", a1, *(DerivedStorage + 248), v11, &unk_222298672, a3);
  }

  v71 = v11;
  if (a3)
  {
    v12 = CFDictionaryGetValue(a3, @"ParentContextID");
    if (!v12)
    {
      v12 = CFDictionaryGetValue(a3, *MEMORY[0x277CC09F8]);
    }

    if (!*(DerivedStorage + 72))
    {
      v13 = *(DerivedStorage + 80);
      *(DerivedStorage + 80) = v12;
      if (v12)
      {
        CFRetain(v12);
      }

      if (!v13)
      {
        goto LABEL_16;
      }

LABEL_15:
      CFRelease(v13);
LABEL_16:
      if (gLogCategory_SPEndpoint <= 50 && (gLogCategory_SPEndpoint != -1 || _LogCategory_Initialize()))
      {
        LogPrintF(&gLogCategory_SPEndpoint, "OSStatus spendpoint_Activate(FigEndpointRef, FigEndpointFeatures, CFDictionaryRef, FigEndpointActivationCompletionCallback, void *)", 33554482, "[%{ptr}] Activation parent context ID '%@'\n", a1, v12);
      }

      goto LABEL_22;
    }
  }

  else
  {
    if (!*(DerivedStorage + 72))
    {
      v12 = 0;
      v13 = *(DerivedStorage + 80);
      *(DerivedStorage + 80) = 0;
      if (!v13)
      {
        goto LABEL_16;
      }

      goto LABEL_15;
    }

    v12 = 0;
  }

  if (!FigCFEqual())
  {
    if (gLogCategory_SPEndpoint <= 90 && (gLogCategory_SPEndpoint != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_SPEndpoint, "OSStatus spendpoint_Activate(FigEndpointRef, FigEndpointFeatures, CFDictionaryRef, FigEndpointActivationCompletionCallback, void *)", 33554522, "### [%{ptr}] Invalid activation parent context ID '%@'\n", a1, v12);
    }

    goto LABEL_66;
  }

LABEL_22:
  if (*(DerivedStorage + 48))
  {
    spendpoint_Activate_cold_1();
    v20 = 0;
    v69 = 0;
    cf = 0;
    v33 = 0;
    Mutable = 0;
    v35 = -16723;
    goto LABEL_98;
  }

  if (a3)
  {
    v14 = CFGetTypeID(a3);
    if (v14 != CFDictionaryGetTypeID())
    {
      spendpoint_Activate_cold_2();
      v20 = 0;
      v69 = 0;
      cf = 0;
      v33 = 0;
      Mutable = 0;
      v35 = -16720;
      goto LABEL_98;
    }
  }

  v15 = *(DerivedStorage + 64);
  if (v15 && v15 != v11)
  {
    spendpoint_Activate_cold_13();
LABEL_66:
    v20 = 0;
    v69 = 0;
    cf = 0;
    v33 = 0;
    Mutable = 0;
    v35 = -16726;
    goto LABEL_98;
  }

  if (*(DerivedStorage + 136))
  {
    spendpoint_Activate_cold_3();
    v20 = 0;
    v69 = 0;
    cf = 0;
    v33 = 0;
    Mutable = 0;
    v35 = -16727;
    goto LABEL_98;
  }

  if (!*(DerivedStorage + 240))
  {
    spendpoint_Activate_cold_12();
    goto LABEL_66;
  }

  if (!a3)
  {
    v20 = 0;
    v21 = 0;
    v19 = 0;
    v69 = 0;
    cf = 0;
    goto LABEL_49;
  }

  Int64 = CFDictionaryGetInt64();
  if (!IsAppleInternalBuild() || Int64)
  {
    if (!Int64)
    {
      goto LABEL_33;
    }

LABEL_36:
    if (gLogCategory_SPEndpoint <= 50 && (gLogCategory_SPEndpoint != -1 || _LogCategory_Initialize()))
    {
      spendpoint_Activate_cold_4(a1, v17, v18);
    }

    v19 = 1;
    goto LABEL_40;
  }

  if (APSSettingsGetIntWithDefault() == 1)
  {
    goto LABEL_36;
  }

LABEL_33:
  v19 = 0;
LABEL_40:
  CFDictionaryGetInt64();
  v21 = CFDictionaryGetInt64() != 0;
  v22 = CFDictionaryGetValue(a3, *MEMORY[0x277CC09F8]);
  if (v22)
  {
    v22 = CFRetain(v22);
  }

  *(DerivedStorage + 104) = v22;
  v20 = CFDictionaryGetValue(a3, @"SenderSession");
  v23 = CFDictionaryGetValue(a3, @"SenderSessionFactory");
  if (v23)
  {
    cf = CFRetain(v23);
  }

  else
  {
    cf = 0;
  }

  BYTE4(v69) = CFDictionaryGetInt64() != 0;
  LOBYTE(v69) = CFDictionaryGetInt64() != 0;
LABEL_49:
  APEndpointDescriptionGetCMBaseObject();
  v25 = v24;
  v26 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v26)
  {
    v35 = -12782;
LABEL_57:
    APSLogErrorAt();
    v33 = 0;
    Mutable = 0;
    goto LABEL_98;
  }

  v66 = v21;
  v67 = v19;
  v68 = a5;
  v27 = *MEMORY[0x277CBECE8];
  v28 = v26(v25, @"SupportedAudioFormats", *MEMORY[0x277CBECE8], &value);
  if (v28)
  {
    v35 = v28;
    a5 = v68;
    goto LABEL_57;
  }

  v29 = MEMORY[0x277CBF138];
  v30 = MEMORY[0x277CBF150];
  Mutable = CFDictionaryCreateMutable(v27, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  CFDictionarySetValue(Mutable, @"SupportedAudioFormats", value);
  v32 = *MEMORY[0x277CBED28];
  CFDictionarySetValue(Mutable, @"IsSidePlay", *MEMORY[0x277CBED28]);
  v33 = CFDictionaryCreateMutable(v27, 0, v29, v30);
  CFDictionarySetValue(v33, @"PreferredNetworkClockType", *MEMORY[0x277CEA268]);
  CFDictionarySetValue(v33, @"AllowP2PForNTP", v32);
  CFDictionarySetValue(v33, @"AudioEngineOptions", Mutable);
  CFDictionarySetValue(v33, @"IgnoreClientPIDForMediaRemote", *MEMORY[0x277CBED10]);
  SharedContext = APEndpointCopyFromActivationOptionsOrCreateSharedContext(a3, v71, v33, DerivedStorage + 128, (DerivedStorage + 120), (DerivedStorage + 112));
  if (SharedContext)
  {
    v35 = SharedContext;
    spendpoint_Activate_cold_5(SharedContext);
    a5 = v68;
    goto LABEL_98;
  }

  if (v20)
  {
    if (gLogCategory_SPEndpoint <= 50 && (gLogCategory_SPEndpoint != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_SPEndpoint, "OSStatus spendpoint_Activate(FigEndpointRef, FigEndpointFeatures, CFDictionaryRef, FigEndpointActivationCompletionCallback, void *)", 33554482, "[%{ptr}] Use SenderSession [%{ptr}] from activation options\n", a1, v20);
    }

    CFRetain(v20);
    a5 = v68;
    goto LABEL_95;
  }

  v36 = *(DerivedStorage + 128);
  v37 = CMBaseObjectGetDerivedStorage();
  v79[0] = 0;
  v39 = v37[30];
  v38 = v37[31];
  v40 = v37[2];
  if (cf)
  {
    AirPlaySession = APSenderSessionFactoryCreateAirPlaySession(cf, v27, v38, v39, 0, 10, 0, v40, 0.0, 0, v67, v66, v36, 0, 0, 0, 0, v79);
    if (AirPlaySession)
    {
      v35 = AirPlaySession;
      spendpoint_Activate_cold_6(AirPlaySession);
LABEL_134:
      a5 = v68;
      goto LABEL_85;
    }
  }

  else
  {
    v42 = APSenderSessionAirPlayCreate(v27, v38, v39, 0, 0xAu, 0, v40, 0, 0.0, v67, v66, v36, 0, 0, 0, 0, 0, 0, v79);
    if (v42)
    {
      v35 = v42;
      spendpoint_Activate_cold_7(v42);
      goto LABEL_134;
    }
  }

  a5 = v68;
  if (gLogCategory_SPEndpoint <= 50 && (gLogCategory_SPEndpoint != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_SPEndpoint, "OSStatus spendpoint_createSenderSession(FigEndpointRef, FigEndpointFeatures, Boolean, Boolean, Boolean, APSNetworkClockRef, APSenderSessionFactoryRef, APSenderSessionRef *)", 33554482, "[%{ptr}] Created APSenderSessionAirPlay [%{ptr}]\n", a1, v79[0]);
  }

  v43 = v79[0];
  v44 = *(*(CMBaseObjectGetVTable() + 16) + 96);
  if (v44)
  {
    v44(v43, a1, a1, spendpoint_handleEventMessage, spendpoint_handleEventMessageCreatingReply);
  }

  if (APSSettingsGetInt64())
  {
    if (gLogCategory_SPEndpoint <= 50 && (gLogCategory_SPEndpoint != -1 || _LogCategory_Initialize()))
    {
      spendpoint_Activate_cold_8(a1, v45, v46);
    }

    APSenderSessionGetCMBaseObject();
    v48 = v47;
    v49 = *(*(CMBaseObjectGetVTable() + 8) + 56);
    if (!v49)
    {
      v35 = -12782;
      goto LABEL_84;
    }

    v50 = v49(v48, @"PublishEncryptionKeyDiagnosticMode", v32);
    if (v50)
    {
      v35 = v50;
LABEL_84:
      APSLogErrorAt();
LABEL_85:
      if (v79[0])
      {
        APSenderSessionGetCMBaseObject();
        if (v51)
        {
          v52 = v51;
          v53 = *(*(CMBaseObjectGetVTable() + 8) + 24);
          if (v53)
          {
            v53(v52);
          }
        }

        CFRelease(v79[0]);
      }

      APSLogErrorAt();
      v20 = 0;
      goto LABEL_98;
    }
  }

  else if (gLogCategory_SPEndpoint <= 50 && (gLogCategory_SPEndpoint != -1 || _LogCategory_Initialize()))
  {
    spendpoint_Activate_cold_9(a1, v45, v46);
  }

  v20 = v79[0];
LABEL_95:
  CMNotificationCenterGetDefaultLocalCenter();
  v54 = FigNotificationCenterAddWeakListener();
  if (v54)
  {
    v35 = v54;
    spendpoint_Activate_cold_10(v54);
  }

  else
  {
    CMNotificationCenterGetDefaultLocalCenter();
    v55 = FigNotificationCenterAddWeakListener();
    v35 = v55;
    if (!v55)
    {
      *(DerivedStorage + 136) = CFRetain(v20);
      ++*(DerivedStorage + 56);
      *(DerivedStorage + 64) = v71;
      *(DerivedStorage + 72) = 1;
      goto LABEL_98;
    }

    spendpoint_Activate_cold_11(v55);
  }

  APSLogErrorAt();
LABEL_98:
  if (a1)
  {
    v56 = CFRetain(a1);
  }

  else
  {
    v56 = 0;
  }

  *&v73 = v56;
  v57 = *(DerivedStorage + 248);
  if (v57)
  {
    v57 = CFRetain(v57);
  }

  *(&v73 + 1) = v57;
  HIDWORD(v78) = v35;
  if (a3)
  {
    v58 = CFRetain(a3);
  }

  else
  {
    v58 = 0;
  }

  *(&v76 + 1) = v58;
  v59 = *(DerivedStorage + 56);
  *&v74 = v71;
  *&v75 = v59;
  v60 = *(DerivedStorage + 136);
  if (v60)
  {
    v60 = CFRetain(v60);
  }

  *(&v74 + 1) = v60;
  v61 = CFGetAllocator(a1);
  APEndpointDescriptionGetCMBaseObject();
  v63 = v62;
  v64 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v64)
  {
    v64(v63, @"TransportDevice", v61, &v75 + 8);
  }

  *&v76 = APEndpointDescriptionCopyDebugString(*(DerivedStorage + 240));
  *&v77 = a4;
  *(&v77 + 1) = a5;
  LOBYTE(v78) = BYTE4(v69);
  BYTE1(v78) = v69;
  APSDispatchAsyncFHelper();
  FigSimpleMutexUnlock();
  if (value)
  {
    CFRelease(value);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  if (v33)
  {
    CFRelease(v33);
  }

  if (v20)
  {
    CFRelease(v20);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  return 0;
}

uint64_t spendpoint_Deactivate(const void *a1, const __CFDictionary *a2, uint64_t a3, uint64_t a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (gLogCategory_SPEndpoint <= 50 && (gLogCategory_SPEndpoint != -1 || _LogCategory_Initialize()))
  {
    spendpoint_Deactivate_cold_1(a1, v6, v7);
    if (a2)
    {
      goto LABEL_5;
    }
  }

  else if (a2)
  {
LABEL_5:
    Value = CFDictionaryGetValue(a2, *MEMORY[0x277CC0B90]);
    goto LABEL_8;
  }

  Value = 0;
LABEL_8:
  FigSimpleMutexLock();
  if (*(DerivedStorage + 48))
  {
    spendpoint_Deactivate_cold_2();
    v10 = 4294950573;
  }

  else
  {
    v10 = *(DerivedStorage + 136);
    if (v10)
    {
      v11 = *(*(CMBaseObjectGetVTable() + 16) + 72);
      if (v11)
      {
        v11(v10);
      }

      v10 = 0;
    }
  }

  CFRetain(a1);
  v12 = *(DerivedStorage + 248);
  if (v12)
  {
    CFRetain(v12);
  }

  if (Value)
  {
    CFRetain(Value);
  }

  v13 = *(DerivedStorage + 136);
  if (v13)
  {
    v14 = CFRetain(v13);
  }

  else
  {
    v14 = 0;
  }

  v15 = *(DerivedStorage + 88);
  if (v15)
  {
    v16 = CFRetain(v15);
  }

  else
  {
    v16 = 0;
  }

  v17 = *(DerivedStorage + 176);
  if (v17)
  {
    CFRetain(v17);
  }

  v18 = *(DerivedStorage + 184);
  if (v18)
  {
    CFRetain(v18);
  }

  spendpoint_resetActivationState(a1, DerivedStorage + 56, *(DerivedStorage + 256));
  spendpoint_stopListeningToSenderSessionAndStreamsNotifications(a1, v14, v16);
  APSDispatchAsyncFHelper();
  FigSimpleMutexUnlock();
  return v10;
}

uint64_t spendpoint_SetDelegate(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v2 = *(a2 + 16);
    v7[0] = *a2;
    v7[1] = v2;
    v8 = *(a2 + 32);
    v3 = spendpoint_SetDelegateRouting(a1, v7);
    v4 = v3;
    if (v3)
    {
      spendpoint_SetDelegate_cold_1(v3);
    }
  }

  else
  {
    v5 = spendpoint_SetDelegateRouting(a1, 0);
    v4 = v5;
    if (v5)
    {
      spendpoint_SetDelegate_cold_2(v5);
    }
  }

  return v4;
}

uint64_t spendpoint_SetDelegateRouting(uint64_t a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  if (*(DerivedStorage + 48))
  {
    spendpoint_SetDelegateRouting_cold_1();
    a2 = 4294950573;
  }

  else
  {
    if (gLogCategory_SPEndpoint <= 50 && (gLogCategory_SPEndpoint != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_SPEndpoint, "OSStatus spendpoint_SetDelegateRouting(FigEndpointRef, const FigEndpointDelegateRouting *)", 33554482, "[%{ptr}] Setting endpoint routing delegate %{ptr}.\n", a1, a2);
    }

    v5 = *(DerivedStorage + 232);
    if (v5)
    {
      CFRelease(v5);
      *(DerivedStorage + 232) = 0;
    }

    if (a2)
    {
      v6 = *a2;
      v7 = *(a2 + 16);
      *(DerivedStorage + 224) = *(a2 + 32);
      *(DerivedStorage + 192) = v6;
      *(DerivedStorage + 208) = v7;
      a2 = 0;
      *(DerivedStorage + 232) = FigCFWeakReferenceHolderCreateWithReferencedObject();
    }

    else
    {
      *(DerivedStorage + 224) = 0;
      *(DerivedStorage + 192) = 0u;
      *(DerivedStorage + 208) = 0u;
    }
  }

  FigSimpleMutexUnlock();
  return a2;
}

uint64_t spendpoint_handleEventMessage(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = CMBaseObjectGetDerivedStorage();
  if (gLogCategory_SPEndpoint <= 40)
  {
    if (gLogCategory_SPEndpoint != -1)
    {
      return LogPrintF(&gLogCategory_SPEndpoint, "void spendpoint_handleEventMessage(FigTransportStreamRef, OSType, CMBlockBufferRef, void *)", 33554472, "[%{ptr}] Received event stream message of type %'C\n", a4, a2);
    }

    result = _LogCategory_Initialize();
    if (result)
    {
      return LogPrintF(&gLogCategory_SPEndpoint, "void spendpoint_handleEventMessage(FigTransportStreamRef, OSType, CMBlockBufferRef, void *)", 33554472, "[%{ptr}] Received event stream message of type %'C\n", a4, a2);
    }
  }

  return result;
}

uint64_t spendpoint_handleEventMessageCreatingReply(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  v9 = *(DerivedStorage + 48);
  v10 = *(DerivedStorage + 136);
  FigSimpleMutexUnlock();
  if (v10)
  {
    v11 = v9 == 0;
  }

  else
  {
    v11 = 0;
  }

  if (!v11)
  {
    if (v9)
    {
      v25 = -16723;
    }

    else
    {
      v25 = 0;
    }

    if (v10)
    {
      v19 = v25;
    }

    else
    {
      v19 = 4294950570;
    }

    APSLogErrorAt();
    goto LABEL_47;
  }

  if (a2 == 1668116068)
  {
    v12 = *MEMORY[0x277CBECE8];
    CFDataWithBlockBufferNoCopy = FigCreateCFDataWithBlockBufferNoCopy();
    if (CFDataWithBlockBufferNoCopy)
    {
      v19 = CFDataWithBlockBufferNoCopy;
      spendpoint_handleEventMessageCreatingReply_cold_1(CFDataWithBlockBufferNoCopy);
LABEL_47:
      v15 = 0;
      goto LABEL_35;
    }

    v14 = CFPropertyListCreateWithData(v12, 0, 0, 0, 0);
    v15 = v14;
    if (!v14 || (v16 = CFGetTypeID(v14), v16 != CFDictionaryGetTypeID()))
    {
      spendpoint_handleEventMessageCreatingReply_cold_6();
      v19 = 4294950576;
      goto LABEL_35;
    }

    CMBaseObjectGetDerivedStorage();
    Value = CFDictionaryGetValue(v15, @"type");
    if (Value)
    {
      v18 = Value;
      if (gLogCategory_SPEndpoint <= 50 && (gLogCategory_SPEndpoint != -1 || _LogCategory_Initialize()))
      {
        LogPrintF(&gLogCategory_SPEndpoint, "OSStatus spendpoint_processCommandCreatingResponse(FigEndpointRef, CFDictionaryRef, CFDictionaryRef *)", 33554482, "[%{ptr}] Processing '%@' command\n", a4, v18);
      }

      if (CFEqual(v18, @"updateInfo"))
      {
        if (gLogCategory_SPEndpoint <= 50 && (gLogCategory_SPEndpoint != -1 || _LogCategory_Initialize()))
        {
          spendpoint_handleEventMessageCreatingReply_cold_2(a4, v20, v21);
        }

        goto LABEL_34;
      }

      if (CFEqual(v18, @"interruptionBegan"))
      {
        v22 = spendpoint_processInterruptionCommand(a4, v15, 1);
        if (v22)
        {
          v19 = v22;
          spendpoint_handleEventMessageCreatingReply_cold_3(v22);
LABEL_31:
          APSLogErrorAt();
          goto LABEL_35;
        }
      }

      else
      {
        if (!CFEqual(v18, @"interruptionEnded"))
        {
          if (gLogCategory_SPEndpoint <= 60)
          {
            spendpoint_handleEventMessageCreatingReply_cold_5(gLogCategory_SPEndpoint, a4, v18);
          }

          goto LABEL_34;
        }

        v23 = spendpoint_processInterruptionCommand(a4, v15, 0);
        if (v23)
        {
          v19 = v23;
          spendpoint_handleEventMessageCreatingReply_cold_4(v23);
          goto LABEL_31;
        }
      }
    }

LABEL_34:
    v19 = 0;
    *a5 = 0;
    goto LABEL_35;
  }

  if (gLogCategory_SPEndpoint <= 60 && (gLogCategory_SPEndpoint != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_SPEndpoint, "OSStatus spendpoint_handleEventMessageCreatingReply(FigTransportStreamRef, OSType, CMBlockBufferRef, void *, CMBlockBufferRef *)", 33554492, "### [%{ptr}] Unsupported messageType %'C\n", a4, a2);
  }

  v15 = 0;
  v19 = 4294950678;
LABEL_35:
  if (v15)
  {
    CFRelease(v15);
  }

  return v19;
}

uint64_t spendpoint_processInterruptionCommand(uint64_t a1, CFDictionaryRef theDict, int a3)
{
  if (a3)
  {
    v4 = @"InterruptionBegan";
  }

  else
  {
    v4 = @"InterruptionEnded";
  }

  Value = CFDictionaryGetValue(theDict, @"streamID");
  if (Value)
  {
    v6 = Value;
    CMBaseObjectGetDerivedStorage();
    v11 = 0;
    v12 = &v11;
    v13 = 0x2020000000;
    v14 = 0;
    FigSimpleMutexLock();
    v10 = MEMORY[0x277D85DD0];
    CFSetApplyBlock();
    FigSimpleMutexUnlock();
    v7 = v12[3];
    _Block_object_dispose(&v11, 8);
    if (v7)
    {
      if (gLogCategory_SPEndpoint <= 50 && (gLogCategory_SPEndpoint != -1 || _LogCategory_Initialize()))
      {
        LogPrintF(&gLogCategory_SPEndpoint, "OSStatus spendpoint_processInterruptionCommand(FigEndpointRef, CFDictionaryRef, Boolean)", 33554482, "[%{ptr}] Posting %@ to stream [%{ptr}] (ID=%@)\n", a1, v4, v7, v6, v10, 3221225472, __spendpoint_copyStreamForID_block_invoke, &unk_2784A0610, &v11, v6);
      }

      v8 = *(*(CMBaseObjectGetVTable() + 16) + 40);
      if (v8)
      {
        v8(v7, v4, 0);
      }

      CFRelease(v7);
      return 0;
    }

    else
    {
      if (gLogCategory_SPEndpoint <= 60 && (gLogCategory_SPEndpoint != -1 || _LogCategory_Initialize()))
      {
        LogPrintF(&gLogCategory_SPEndpoint, "OSStatus spendpoint_processInterruptionCommand(FigEndpointRef, CFDictionaryRef, Boolean)", 33554492, "[%{ptr}] Could not find stream (ID=%@) to post %@\n", a1, v6, v4);
      }

      return 4294960569;
    }
  }

  else
  {
    spendpoint_processInterruptionCommand_cold_1();
    return 4294960591;
  }
}

void sub_22215BA40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __spendpoint_copyStreamForID_block_invoke(uint64_t a1, const void *a2)
{
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    cf[5] = v2;
    cf[6] = v3;
    cf[0] = 0;
    CMBaseObject = FigEndpointStreamGetCMBaseObject();
    v7 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v7)
    {
      v7(CMBaseObject, @"StreamID", *MEMORY[0x277CBECE8], cf);
    }

    if (FigCFEqual())
    {
      *(*(*(a1 + 32) + 8) + 24) = CFRetain(a2);
    }

    if (cf[0])
    {
      CFRelease(cf[0]);
    }
  }
}

uint64_t spendpoint_handleSenderSessionFailed(uint64_t a1, const void *a2, uint64_t a3, uint64_t a4, const void *a5)
{
  CMBaseObjectGetDerivedStorage();
  if (gLogCategory_SPEndpoint <= 90 && (gLogCategory_SPEndpoint != -1 || _LogCategory_Initialize()))
  {
    spendpoint_handleSenderSessionFailed_cold_1(a2);
  }

  CFRetain(a2);
  if (a5)
  {
    CFRetain(a5);
  }

  return APSDispatchAsyncFHelper();
}

void spendpoint_callDelegateHandleFailed(uint64_t a1)
{
  (*(a1 + 24))(*a1, *(a1 + 8), *(a1 + 16), *(a1 + 32));
  CFRelease(*a1);
  CFRelease(*(a1 + 16));
  v2 = *(a1 + 32);
  if (v2)
  {

    CFRelease(v2);
  }
}

void spendpoint_deferredHandleSenderSessionFailed(const void **a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v3 = a1[1];
  Int64 = CFDictionaryGetInt64();
  CFDictionaryGetValue(v3, @"SessionState");
  v5 = FigCFEqual();
  FigSimpleMutexLock();
  if (*(DerivedStorage + 72) == 2)
  {
    spendpoint_updateStatus(*a1, Int64, v5 == 0);
  }

  FigSimpleMutexUnlock();
  CFRelease(*a1);
  v6 = a1[1];
  if (v6)
  {

    CFRelease(v6);
  }
}

uint64_t spendpoint_postPerformanceReport(uint64_t a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v6 = DerivedStorage;
  if (gLogCategory_SPEndpoint <= 40)
  {
    if (gLogCategory_SPEndpoint != -1 || (DerivedStorage = _LogCategory_Initialize(), DerivedStorage))
    {
      spendpoint_postPerformanceReport_cold_1(DerivedStorage, v4, v5);
    }

    if (gLogCategory_SPEndpoint <= 40)
    {
      if (gLogCategory_SPEndpoint != -1 || (v7 = _LogCategory_Initialize(), v7))
      {
        v7 = spendpoint_postPerformanceReport_cold_2(a2, v4, v5);
      }

      if (gLogCategory_SPEndpoint <= 40)
      {
        if (gLogCategory_SPEndpoint != -1 || (v7 = _LogCategory_Initialize(), v7))
        {
          v7 = spendpoint_postPerformanceReport_cold_1(v7, v4, v5);
        }

        if (gLogCategory_SPEndpoint <= 40)
        {
          if (gLogCategory_SPEndpoint != -1 || (v7 = _LogCategory_Initialize(), v7))
          {
            v7 = spendpoint_postPerformanceReport_cold_4(v7, v4, v5);
          }

          if (gLogCategory_SPEndpoint <= 40)
          {
            if (gLogCategory_SPEndpoint != -1 || (v7 = _LogCategory_Initialize(), v7))
            {
              spendpoint_postPerformanceReport_cold_5(v7, v4, v5);
            }
          }
        }
      }
    }
  }

  spendpoint_logEventInterval(*(v6 + 24), 268369920, 268369921, "Total AirPlay Contribution (Endpoint Activate Start To Endpoint Activate Complete)");
  spendpoint_logEvent(*(v6 + 24), 268369920, "EndpointActivate");
  spendpoint_logEvent(*(v6 + 24), 150994945, "ResolveDNSTime");
  if (gLogCategory_SPEndpoint <= 40)
  {
    if (gLogCategory_SPEndpoint != -1 || (v8 = _LogCategory_Initialize(), v8))
    {
      v8 = spendpoint_postPerformanceReport_cold_6(v8, v9, v10);
    }

    if (gLogCategory_SPEndpoint <= 40)
    {
      if (gLogCategory_SPEndpoint != -1 || (v8 = _LogCategory_Initialize(), v8))
      {
        v8 = spendpoint_postPerformanceReport_cold_7(v8, v9, v10);
      }

      if (gLogCategory_SPEndpoint <= 40)
      {
        if (gLogCategory_SPEndpoint != -1 || (v8 = _LogCategory_Initialize(), v8))
        {
          spendpoint_postPerformanceReport_cold_8(v8, v9, v10);
        }
      }
    }
  }

  spendpoint_logEvent(*(v6 + 32), 268431360, "PresenceBrowsing_Start");
  spendpoint_logEvent(*(v6 + 32), 268431361, "DetailedNonP2PBrowsing_Start");
  spendpoint_logEvent(*(v6 + 32), 268431362, "DetailedBrowsing_Start");
  spendpoint_logTransportDiscoveryDurationIfEventPresent(*(v6 + 32), *(v6 + 24), 268374027);
  spendpoint_logTransportDiscoveryDurationIfEventPresent(*(v6 + 32), *(v6 + 24), 268374033);
  spendpoint_logTransportDiscoveryDurationIfEventPresent(*(v6 + 32), *(v6 + 24), 268374017);
  spendpoint_logTransportDiscoveryDurationIfEventPresent(*(v6 + 32), *(v6 + 24), 268374028);
  spendpoint_logTransportDiscoveryDurationIfEventPresent(*(v6 + 32), *(v6 + 24), 268374018);
  spendpoint_logTransportDiscoveryDurationIfEventPresent(*(v6 + 32), *(v6 + 24), 268374024);
  spendpoint_logTransportDiscoveryDurationIfEventPresent(*(v6 + 32), *(v6 + 24), 268374025);
  spendpoint_logTransportDiscoveryDurationIfEventPresent(*(v6 + 32), *(v6 + 24), 268374026);
  spendpoint_logTransportDiscoveryDurationIfEventPresent(*(v6 + 32), *(v6 + 24), 268374023);
  spendpoint_logTransportDiscoveryDurationIfEventPresent(*(v6 + 32), *(v6 + 24), 268374032);
  spendpoint_logTransportDiscoveryDurationIfEventPresent(*(v6 + 32), *(v6 + 24), 268374021);
  spendpoint_logTransportDiscoveryDurationIfEventPresent(*(v6 + 32), *(v6 + 24), 268374031);
  spendpoint_logTransportDiscoveryDurationIfEventPresent(*(v6 + 32), *(v6 + 24), 268374020);
  spendpoint_logTransportDiscoveryDurationIfEventPresent(*(v6 + 32), *(v6 + 24), 268374030);
  spendpoint_logTransportDiscoveryDurationIfEventPresent(*(v6 + 32), *(v6 + 24), 268374034);
  spendpoint_logTransportDiscoveryDurationIfEventPresent(*(v6 + 32), *(v6 + 24), 268374019);
  v11 = spendpoint_logTransportDiscoveryDurationIfEventPresent(*(v6 + 32), *(v6 + 24), 268374022);
  if (gLogCategory_SPEndpoint <= 40)
  {
    if (gLogCategory_SPEndpoint != -1 || (v11 = _LogCategory_Initialize(), v11))
    {
      v11 = spendpoint_postPerformanceReport_cold_6(v11, v12, v13);
    }

    if (gLogCategory_SPEndpoint <= 40)
    {
      if (gLogCategory_SPEndpoint != -1 || (v11 = _LogCategory_Initialize(), v11))
      {
        v11 = spendpoint_postPerformanceReport_cold_10(v11, v12, v13);
      }

      if (gLogCategory_SPEndpoint <= 40)
      {
        if (gLogCategory_SPEndpoint != -1 || (v11 = _LogCategory_Initialize(), v11))
        {
          spendpoint_postPerformanceReport_cold_11(v11, v12, v13);
        }
      }
    }
  }

  spendpoint_logEvent(*(v6 + 24), 150994944, "QuerySRVTime");
  spendpoint_logEvent(*(v6 + 24), 150994946, "ControlStreamConnectingTime");
  spendpoint_logEvent(*(v6 + 24), 150994948, "ControlStreamConnectedTime");
  spendpoint_logEvent(*(v6 + 24), 250609664, "EndpointConnectionStartTime");
  spendpoint_logEvent(*(v6 + 24), 250609666, "EndpointGetInfoCompleteTime");
  spendpoint_logEventInterval(*(v6 + 24), 250609665, 250609666, "INFOTimeMs");
  CMBaseObjectGetDerivedStorage();
  TimeBetweenEventsInMilliSecondRecursive = APSEventRecorderGetTimeBetweenEventsInMilliSecondRecursive();
  v15 = APSEventRecorderGetTimeBetweenEventsInMilliSecondRecursive();
  v16 = APSEventRecorderGetTimeBetweenEventsInMilliSecondRecursive();
  if (gLogCategory_SPEndpoint <= 40)
  {
    v19 = v16;
    if (gLogCategory_SPEndpoint != -1 || _LogCategory_Initialize())
    {
      spendpoint_postPerformanceReport_cold_12(v15 + TimeBetweenEventsInMilliSecondRecursive + v19, v17, v18);
    }
  }

  spendpoint_logEventInterval(*(v6 + 24), 150994946, 150994948, "ConnectTimeMs");
  spendpoint_logEventInterval(*(v6 + 24), 250609677, 250609678, "EndpointAUTHTimeMs");
  result = spendpoint_logEventInterval(*(v6 + 24), 250609675, 250609676, "EndpointRECORDTimeMs");
  if (gLogCategory_SPEndpoint <= 40)
  {
    if (gLogCategory_SPEndpoint != -1)
    {
      return spendpoint_postPerformanceReport_cold_1(result, v21, v22);
    }

    result = _LogCategory_Initialize();
    if (result)
    {
      return spendpoint_postPerformanceReport_cold_1(result, v21, v22);
    }
  }

  return result;
}

uint64_t spendpoint_stopListeningToSenderSessionAndStreamsNotifications(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    CMNotificationCenterGetDefaultLocalCenter();
    FigNotificationCenterRemoveWeakListener();
    CMNotificationCenterGetDefaultLocalCenter();
    v4 = FigNotificationCenterRemoveWeakListener();
  }

  if (a3)
  {
    return CFSetApplyBlock();
  }

  return v4;
}

void spendpoint_deactivateInternal(void *a1)
{
  CMBaseObjectGetDerivedStorage();
  v4 = dispatch_semaphore_create(0);
  v31 = 0u;
  v32 = 0u;
  v30 = 0u;
  if (*(a1 + 14))
  {
    APSLogErrorAt();
    v13 = *(a1 + 14);
  }

  else
  {
    if (a1[3])
    {
      if (qword_280FB1BC8 != -1)
      {
        spendpoint_Finalize_cold_2();
      }

      if (_MergedGlobals_21)
      {
        v5 = *_MergedGlobals_21;
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __spendpoint_deactivateInternal_block_invoke;
        block[3] = &__block_descriptor_48_e5_v8__0l;
        block[4] = _MergedGlobals_21;
        block[5] = a1;
        dispatch_sync(v5, block);
      }

      if (gLogCategory_SPEndpoint <= 50 && (gLogCategory_SPEndpoint != -1 || _LogCategory_Initialize()))
      {
        spendpoint_deactivateInternal_cold_2(a1, v2, v3);
      }

      CMBaseObjectGetDerivedStorage();
      APSEventRecorderReset();
      *&v30 = *a1;
      v6 = a1[3];
      if (v6)
      {
        v6 = CFRetain(v6);
      }

      *(&v30 + 1) = v6;
      v7 = a1[4];
      if (v7)
      {
        v7 = CFRetain(v7);
      }

      *&v31 = v7;
      v8 = a1[8];
      if (v8)
      {
        v8 = CFRetain(v8);
      }

      *(&v31 + 1) = v8;
      v9 = a1[9];
      if (v9)
      {
        v9 = CFRetain(v9);
      }

      *&v32 = v9;
      *(&v32 + 1) = v4;
      dispatch_retain(v4);
      APSDispatchAsyncFHelper();
      v10 = dispatch_time(0, 4000000000);
      if (dispatch_semaphore_wait(v4, v10) && gLogCategory_SPEndpoint <= 40 && (gLogCategory_SPEndpoint != -1 || _LogCategory_Initialize()))
      {
        spendpoint_deactivateInternal_cold_3(a1, v11, v12);
      }
    }

    else
    {
      spendpoint_deactivateInternal_cold_4();
    }

    v13 = 0;
  }

  v14 = a1[10];
  if (v14)
  {
    theDict = *a1;
    v25 = *(a1 + 5);
    v27 = v14;
    v26 = v13;
    v28 = a1[11];
    CFRetain(theDict);
    APSDispatchAsyncFHelper();
  }

  if (!v13 && !FigCFEqual())
  {
    theDict = 0;
    v15 = CFGetAllocator(*a1);
    APEndpointCreateEndpointActivationNotificationPayload(v15, a1[6], a1[5], &theDict);
    v16 = CFGetAllocator(*a1);
    MutableCopy = CFDictionaryCreateMutableCopy(v16, 0, theDict);
    CFDictionarySetValue(MutableCopy, @"WasAutoconnected", *MEMORY[0x277CBED10]);
    CMNotificationCenterGetDefaultLocalCenter();
    FigDispatchAsyncPostNotification();
    if (theDict)
    {
      CFRelease(theDict);
    }

    if (MutableCopy)
    {
      CFRelease(MutableCopy);
    }
  }

  CFRelease(*a1);
  v18 = a1[1];
  if (v18)
  {
    CFRelease(v18);
  }

  v19 = a1[3];
  if (v19)
  {
    CFRelease(v19);
  }

  v20 = a1[4];
  if (v20)
  {
    CFRelease(v20);
  }

  v21 = a1[2];
  if (v21)
  {
    CFRelease(v21);
  }

  v22 = a1[8];
  if (v22)
  {
    CFRelease(v22);
  }

  v23 = a1[9];
  if (v23)
  {
    CFRelease(v23);
  }

  dispatch_release(v4);
}

uint64_t spendpoint_logEventInterval(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  if (!a4)
  {
    return spendpoint_logEventInterval_cold_1();
  }

  result = APSEventRecorderGetTimeBetweenEventsInMilliSecondRecursive();
  if (gLogCategory_SPEndpoint <= 40)
  {
    v6 = result;
    if (gLogCategory_SPEndpoint != -1)
    {
      return LogPrintF(&gLogCategory_SPEndpoint, "OSStatus spendpoint_logEventInterval(APSEventRecorderRef, APSEventRecorderEvent, APSEventRecorderEvent, char *)", 33554472, "| %-40s: %lld ms\n", a4, v6);
    }

    result = _LogCategory_Initialize();
    if (result)
    {
      return LogPrintF(&gLogCategory_SPEndpoint, "OSStatus spendpoint_logEventInterval(APSEventRecorderRef, APSEventRecorderEvent, APSEventRecorderEvent, char *)", 33554472, "| %-40s: %lld ms\n", a4, v6);
    }
  }

  return result;
}

void spendpoint_logEvent(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    APSEventRecorderGetEventTimeRecursive();
    StringWithEventRecorderTime = APSEventRecorderCreateStringWithEventRecorderTime();
    if (gLogCategory_SPEndpoint <= 40 && (gLogCategory_SPEndpoint != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_SPEndpoint, "OSStatus spendpoint_logEvent(APSEventRecorderRef, APSEventRecorderEvent, char *)", 33554472, "| %-40s: %@\n", a3, StringWithEventRecorderTime);
    }

    if (StringWithEventRecorderTime)
    {

      CFRelease(StringWithEventRecorderTime);
    }
  }

  else
  {
    spendpoint_logEvent_cold_1();
  }
}

uint64_t __spendpoint_stopListeningToSenderSessionAndStreamsNotifications_block_invoke(uint64_t a1)
{
  CMNotificationCenterGetDefaultLocalCenter();
  FigNotificationCenterRemoveWeakListener();
  CMNotificationCenterGetDefaultLocalCenter();

  return FigNotificationCenterRemoveWeakListener();
}

void spendpoint_suspendDissociateAndReleaseStreamsAndStopSenderSession(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (gLogCategory_SPEndpoint <= 50 && (gLogCategory_SPEndpoint != -1 || _LogCategory_Initialize()))
  {
    spendpoint_suspendDissociateAndReleaseStreamsAndStopSenderSession_cold_1(a1, a2, a3);
  }

  if (*(a1 + 16))
  {
    CFSetApplyBlock();
  }

  v4 = *(a1 + 8);
  if (v4)
  {
    v5 = *(*(CMBaseObjectGetVTable() + 16) + 96);
    if (v5)
    {
      v5(v4, 0, 0, 0, 0);
    }

    v6 = *(a1 + 8);
    v7 = *(*(CMBaseObjectGetVTable() + 16) + 80);
    if (v7)
    {
      v7(v6);
    }

    APSenderSessionGetCMBaseObject();
    if (v8)
    {
      v9 = v8;
      v10 = *(*(CMBaseObjectGetVTable() + 8) + 24);
      if (v10)
      {
        v10(v9);
      }
    }

    v11 = *(a1 + 8);
    if (v11)
    {
      CFRelease(v11);
    }
  }

  v12 = *(a1 + 16);
  if (v12)
  {
    CFRelease(v12);
  }

  *a1 = 0;
  v13 = *(a1 + 24);
  if (v13)
  {
    CFRelease(v13);
  }

  v14 = *(a1 + 32);
  if (v14)
  {
    CFRelease(v14);
  }

  dispatch_semaphore_signal(*(a1 + 40));
  dispatch_release(*(a1 + 40));
}

void __spendpoint_suspendDissociateAndReleaseStreamsAndStopSenderSession_block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = *(*(CMBaseObjectGetVTable() + 16) + 8);
  if (v4)
  {
    v4(a2, 0, 0, 0);
  }

  v5 = *(*(CMBaseObjectGetVTable() + 16) + 32);
  if (v5)
  {
    v5(a2);
  }

  v6 = *(a1 + 32);
  if (*(v6 + 32))
  {
    v7 = *(v6 + 24);
    cf = 0;
    if (v7)
    {
      CMBaseObject = FigEndpointStreamGetCMBaseObject();
      v9 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      if (v9)
      {
        v9(CMBaseObject, @"RTCStats", *MEMORY[0x277CBECE8], &cf);
        if (cf)
        {
          FigCFArrayApplyFunction();
          if (cf)
          {
            CFRelease(cf);
          }
        }
      }
    }

    else
    {
      __spendpoint_suspendDissociateAndReleaseStreamsAndStopSenderSession_block_invoke_cold_1();
    }
  }
}

uint64_t __spendpoint_dissociateInternal_block_invoke_2(uint64_t a1, uint64_t a2)
{
  VTable = CMBaseObjectGetVTable();
  v5 = *(VTable + 16);
  result = VTable + 16;
  v6 = *(v5 + 32);
  if (v6)
  {

    return v6(a2);
  }

  return result;
}

uint64_t spEndpoint_DuckAudio(uint64_t a1, uint64_t a2)
{
  FigEndpoint = FigEndpointExtendedGetFigEndpoint();
  CMBaseObjectGetDerivedStorage();
  if (gLogCategory_SPEndpoint <= 50 && (gLogCategory_SPEndpoint != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_SPEndpoint, "OSStatus spEndpoint_DuckAudio(FigEndpointExtendedRef, CFDictionaryRef)", 33554482, "[%{ptr}] DuckAudio %@\n", a1, a2, 0);
  }

  Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (Mutable)
  {
    v6 = Mutable;
    CFStringGetTypeID();
    TypedValue = CFDictionaryGetTypedValue();
    if (CFEqual(TypedValue, *MEMORY[0x277CC0B98]))
    {
      v9 = @"duckAudio";
    }

    else
    {
      if (!CFEqual(TypedValue, *MEMORY[0x277CC0BA0]))
      {
        v15 = -16720;
LABEL_9:
        APSLogErrorAt();
LABEL_10:
        CFRelease(v6);
        return v15;
      }

      v9 = @"unduckAudio";
    }

    if (FigCFDictionaryGetDoubleIfPresent())
    {
      v10 = CFDictionarySetDouble();
      v15 = v10;
      if (v10)
      {
        spEndpoint_DuckAudio_cold_2(v10);
        goto LABEL_10;
      }
    }

    if (FigCFDictionaryGetDoubleIfPresent())
    {
      v11 = CFDictionarySetDouble();
      v15 = v11;
      if (v11)
      {
        spEndpoint_DuckAudio_cold_3(v11);
        goto LABEL_10;
      }
    }

    FigSimpleMutexLock();
    v12 = spEndpoint_sendCommandInternal(FigEndpoint, v9, v6, 0, 0);
    v15 = v12;
    if (v12)
    {
      if (gLogCategory_SPEndpoint > 90)
      {
        goto LABEL_26;
      }

      if (gLogCategory_SPEndpoint != -1)
      {
        goto LABEL_20;
      }

      if (_LogCategory_Initialize())
      {
        v12 = v15;
LABEL_20:
        LogPrintF(&gLogCategory_SPEndpoint, "OSStatus spEndpoint_DuckAudio(FigEndpointExtendedRef, CFDictionaryRef)", 33554522, "### [%{ptr}] DuckAudio send failed err=%#m\n", a1, v12);
      }
    }

    else if (gLogCategory_SPEndpoint <= 50 && (gLogCategory_SPEndpoint != -1 || _LogCategory_Initialize()))
    {
      spEndpoint_DuckAudio_cold_4(a1, v13, v14);
    }

LABEL_26:
    FigSimpleMutexUnlock();
    if (!v15)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  spEndpoint_DuckAudio_cold_5();
  return 4294950575;
}

uint64_t spEndpoint_AcquireAndCopyResource(uint64_t a1, uint64_t a2, const __CFDictionary *a3, void *a4)
{
  FigEndpoint = FigEndpointExtendedGetFigEndpoint();
  CMBaseObjectGetDerivedStorage();
  if (gLogCategory_SPEndpoint <= 50 && (gLogCategory_SPEndpoint != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_SPEndpoint, "OSStatus spEndpoint_AcquireAndCopyResource(FigEndpointExtendedRef, CFStringRef, CFDictionaryRef, CFTypeRef *)", 33554482, "[%{ptr}] Resource '%@' requested.\n", FigEndpoint, a2);
  }

  FigSimpleMutexLock();
  if (*(CMBaseObjectGetDerivedStorage() + 72) != 2)
  {
    spEndpoint_AcquireAndCopyResource_cold_1();
    v12 = 4294949690;
    goto LABEL_58;
  }

  if (!FigCFEqual())
  {
    v12 = 4294894922;
    if (gLogCategory_SPEndpoint <= 90 && (gLogCategory_SPEndpoint != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_SPEndpoint, "OSStatus spEndpoint_acquireAndCopyResourceInternal(FigEndpointRef, CFStringRef, CFDictionaryRef, CFTypeRef *)", 33554522, "### [%{ptr}] Unsupported resource type '%@' requested.\n", FigEndpoint, a2);
    }

    goto LABEL_58;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  values = 0;
  if (*(DerivedStorage + 72) != 2)
  {
    spEndpoint_AcquireAndCopyResource_cold_2();
    v12 = 4294949690;
    goto LABEL_57;
  }

  if (!a3)
  {
    spEndpoint_AcquireAndCopyResource_cold_13();
LABEL_65:
    v12 = 4294950576;
    goto LABEL_57;
  }

  if (!a4)
  {
    spEndpoint_AcquireAndCopyResource_cold_12();
    goto LABEL_65;
  }

  v9 = DerivedStorage;
  Value = CFDictionaryGetValue(a3, *MEMORY[0x277CC09A8]);
  if (!Value)
  {
    spEndpoint_AcquireAndCopyResource_cold_11();
    goto LABEL_65;
  }

  v11 = Value;
  if (gLogCategory_SPEndpoint <= 50 && (gLogCategory_SPEndpoint != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_SPEndpoint, "OSStatus spEndpoint_acquireAndCopyEndpointStream(FigEndpointRef, CFDictionaryRef, CFTypeRef *)", 33554482, "[%{ptr}] %@ stream requested.\n", FigEndpoint, v11);
  }

  v13 = *MEMORY[0x277CC1968];
  if (!CFEqual(v11, *MEMORY[0x277CC1968]))
  {
    v12 = 4294894922;
    if (gLogCategory_SPEndpoint <= 90 && (gLogCategory_SPEndpoint != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_SPEndpoint, "OSStatus spEndpoint_acquireAndCopyEndpointStream(FigEndpointRef, CFDictionaryRef, CFTypeRef *)", 33554522, "### [%{ptr}] Unsupported stream type '%@' requested.\n", FigEndpoint, v11);
    }

    goto LABEL_57;
  }

  if (*(v9 + 96) || !CFSetGetCount(*(v9 + 88)))
  {
    v14 = CMBaseObjectGetDerivedStorage();
    cf = 0;
    v15 = CFGetTypeID(v11);
    if (v15 == CFStringGetTypeID())
    {
      if (*(v14 + 72) != 2)
      {
        spEndpoint_AcquireAndCopyResource_cold_4();
        v12 = 4294951716;
        goto LABEL_54;
      }

      v16 = CFDictionaryGetValue(*(v14 + 112), v11);
      if (v16)
      {
        v17 = CFDictionaryGetValue(v16, @"AudioEngineVendor");
        CFDictionaryGetInt64();
        if (CFEqual(v11, v13))
        {
          v18 = CMBaseObjectGetDerivedStorage();
          Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
          if (Mutable)
          {
            v20 = Mutable;
            CFDictionarySetValue(Mutable, @"IsSidePlay", *MEMORY[0x277CBED28]);
            v21 = *(v18 + 24);
            if (v21)
            {
              CFDictionarySetValue(v20, @"EventRecorder", v21);
            }

            v22 = CFGetAllocator(FigEndpoint);
            v23 = APEndpointStreamBufferedAudioCreate(v22, *(v14 + 248), *(v14 + 256), v20, *(v14 + 136), v17, *(v14 + 240), &cf);
            if (v23)
            {
              v12 = v23;
              spEndpoint_AcquireAndCopyResource_cold_5(v23);
            }

            else
            {
              CMNotificationCenterGetDefaultLocalCenter();
              v24 = FigNotificationCenterAddWeakListener();
              if (v24)
              {
                v12 = v24;
                spEndpoint_AcquireAndCopyResource_cold_6(v24);
              }

              else
              {
                CMNotificationCenterGetDefaultLocalCenter();
                v25 = FigNotificationCenterAddWeakListener();
                if (!v25)
                {
                  if (gLogCategory_SPEndpoint <= 50 && (gLogCategory_SPEndpoint != -1 || _LogCategory_Initialize()))
                  {
                    LogPrintF(&gLogCategory_SPEndpoint, "OSStatus spendpoint_createAudioStream(FigEndpointRef, CFStringRef, FigEndpointStreamRef *)", 33554482, "[%{ptr}] Created %@ stream [%{ptr}]\n", FigEndpoint, v11, cf);
                  }

                  v12 = 0;
                  v26 = cf;
                  values = cf;
                  cf = 0;
LABEL_43:
                  CFRelease(v20);
                  if (cf)
                  {
                    CFRelease(cf);
                  }

                  if (!v12)
                  {
                    CFSetSetValue(*(v9 + 88), v26);
                    if (gLogCategory_SPEndpoint <= 50 && (gLogCategory_SPEndpoint != -1 || _LogCategory_Initialize()))
                    {
                      Count = CFSetGetCount(*(v9 + 88));
                      LogPrintF(&gLogCategory_SPEndpoint, "OSStatus spEndpoint_acquireAndCopyEndpointStream(FigEndpointRef, CFDictionaryRef, CFTypeRef *)", 33554482, "[%{ptr}] %@ stream [%{ptr}] created. Total stream count=%llu\n", FigEndpoint, v11, v26, Count);
                    }

                    goto LABEL_50;
                  }

LABEL_55:
                  APSLogErrorAt();
                  if (!v26)
                  {
LABEL_57:
                    APSLogErrorAt();
LABEL_58:
                    FigSimpleMutexUnlock();
                    APSLogErrorAt();
                    return v12;
                  }

LABEL_56:
                  CFRelease(v26);
                  goto LABEL_57;
                }

                v12 = v25;
                spEndpoint_AcquireAndCopyResource_cold_7(v25);
              }

              APSLogErrorAt();
            }

            v26 = 0;
            goto LABEL_43;
          }

          spEndpoint_AcquireAndCopyResource_cold_8();
          v12 = 4294950575;
        }

        else
        {
          spEndpoint_AcquireAndCopyResource_cold_10(FigEndpoint, v11, &v31);
          v12 = v31;
        }

LABEL_54:
        v26 = 0;
        goto LABEL_55;
      }

      spEndpoint_AcquireAndCopyResource_cold_9();
    }

    else
    {
      spEndpoint_AcquireAndCopyResource_cold_3();
    }

    v12 = 4294950576;
    goto LABEL_54;
  }

  CFSetGetValues(*(v9 + 88), &values);
  if (!values)
  {
    APSLogErrorAt();
    v12 = 4294950571;
    v26 = values;
    if (!values)
    {
      goto LABEL_57;
    }

    goto LABEL_56;
  }

  CFRetain(values);
  v26 = values;
LABEL_50:
  *a4 = v26;
  FigSimpleMutexUnlock();
  return 0;
}

uint64_t spEndpoint_RelinquishResource(uint64_t a1, uint64_t a2, const void *a3)
{
  FigEndpoint = FigEndpointExtendedGetFigEndpoint();
  CMBaseObjectGetDerivedStorage();
  if (gLogCategory_SPEndpoint <= 50 && (gLogCategory_SPEndpoint != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_SPEndpoint, "OSStatus spEndpoint_RelinquishResource(FigEndpointExtendedRef, CFStringRef, CFTypeRef)", 33554482, "[%{ptr}] Relinquishing '%@' [%{ptr}].\n", FigEndpoint, a2, a3);
  }

  if (!a3)
  {
    spEndpoint_RelinquishResource_cold_3();
    return 4294950576;
  }

  FigSimpleMutexLock();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 72) != 2)
  {
    spEndpoint_RelinquishResource_cold_1();
    v10 = 4294949690;
LABEL_19:
    FigSimpleMutexUnlock();
    APSLogErrorAt();
    return v10;
  }

  v7 = DerivedStorage;
  if (!FigCFEqual())
  {
    v10 = 4294894922;
    if (gLogCategory_SPEndpoint <= 90 && (gLogCategory_SPEndpoint != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_SPEndpoint, "OSStatus spEndpoint_relinquishResourceInternal(FigEndpointRef, CFStringRef, CFTypeRef)", 33554522, "### [%{ptr}] Unsupported resource type '%@' requested.\n", FigEndpoint, a2);
    }

    goto LABEL_19;
  }

  if (!CFSetContainsValue(*(v7 + 88), a3))
  {
    spEndpoint_RelinquishResource_cold_2();
    v10 = 4294950576;
    goto LABEL_19;
  }

  if (*(v7 + 96))
  {
    CFRetain(a3);
    v8 = *(v7 + 280);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __spEndpoint_relinquishResourceInternal_block_invoke;
    block[3] = &__block_descriptor_48_e5_v8__0l;
    block[4] = FigEndpoint;
    block[5] = a3;
    dispatch_async(v8, block);
    CFSetRemoveValue(*(v7 + 88), a3);
    if (gLogCategory_SPEndpoint <= 50 && (gLogCategory_SPEndpoint != -1 || _LogCategory_Initialize()))
    {
      Count = CFSetGetCount(*(v7 + 88));
      LogPrintF(&gLogCategory_SPEndpoint, "OSStatus spEndpoint_relinquishResourceInternal(FigEndpointRef, CFStringRef, CFTypeRef)", 33554482, "[%{ptr}] stream [%{ptr}] removed. Total stream count=%llu\n", FigEndpoint, a3, Count);
    }
  }

  FigSimpleMutexUnlock();
  return 0;
}

void __spEndpoint_relinquishResourceInternal_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (gLogCategory_SPEndpoint <= 50 && (gLogCategory_SPEndpoint != -1 || _LogCategory_Initialize()))
  {
    __spEndpoint_relinquishResourceInternal_block_invoke_cold_1(a1, a2, a3);
  }

  v4 = *(a1 + 40);
  v5 = *(*(CMBaseObjectGetVTable() + 16) + 8);
  if (v5)
  {
    v5(v4, 0, 0, 0);
  }

  v6 = *(a1 + 40);
  v7 = *(*(CMBaseObjectGetVTable() + 16) + 32);
  if (v7)
  {
    v7(v6);
  }

  v8 = *(a1 + 40);

  CFRelease(v8);
}

uint64_t APAudioEngineGetClassID(uint64_t a1, uint64_t a2)
{
  if (_MergedGlobals_22 != -1)
  {
    APAudioEngineGetClassID_cold_1();
  }

  return qword_280FB1BD8;
}

uint64_t audioEngine_registerBaseClass(uint64_t a1)
{
  ClassID = CMBaseGetClassID();

  return MEMORY[0x282112448](&audioEngine_registerBaseClass_sClassDesc, ClassID, 1, a1);
}

uint64_t APAuthenticationClientRSACreate(uint64_t a1, const void *a2, CFDataRef theData, CFTypeRef *a4)
{
  cf = 0;
  if (a2)
  {
    if (theData)
    {
      if (CFDataGetLength(theData) == 6)
      {
        APAuthenticationClientGetClassID(6, v7);
        v8 = CMDerivedObjectCreate();
        if (v8)
        {
          v10 = v8;
          APSLogErrorAt();
        }

        else
        {
          DerivedStorage = CMBaseObjectGetDerivedStorage();
          DerivedStorage[1] = a2;
          CFRetain(a2);
          *DerivedStorage = CFRetain(theData);
          if (gLogCategory_APAuthenticationClientRSA <= 30 && (gLogCategory_APAuthenticationClientRSA != -1 || _LogCategory_Initialize()))
          {
            APAuthenticationClientRSACreate_cold_2(&cf);
          }

          v10 = 0;
          *a4 = cf;
        }
      }

      else
      {
        v10 = 4294895495;
        APAuthenticationClientRSACreate_cold_1();
      }
    }

    else
    {
      v10 = 4294895495;
      APAuthenticationClientRSACreate_cold_3();
    }
  }

  else
  {
    v10 = 4294895495;
    APAuthenticationClientRSACreate_cold_4();
  }

  return v10;
}

void rsaAuthentication_Finalize(const void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APAuthenticationClientRSA <= 30 && (gLogCategory_APAuthenticationClientRSA != -1 || _LogCategory_Initialize()))
  {
    rsaAuthentication_Finalize_cold_1(a1);
  }

  if (*DerivedStorage)
  {
    CFRelease(*DerivedStorage);
    *DerivedStorage = 0;
  }

  v3 = *(DerivedStorage + 8);
  if (v3)
  {
    CFRelease(v3);
    *(DerivedStorage + 8) = 0;
  }
}

__CFString *rsaAuthentication_CopyDebugDescription(uint64_t a1)
{
  Mutable = CFStringCreateMutable(*MEMORY[0x277CBECE8], 0);
  CFStringAppendFormat(Mutable, 0, @"<APAuthenticationClientRSA %p>", a1);
  return Mutable;
}

uint64_t rsaAuthentication_AuthenticateEndpoint(uint64_t a1)
{
  v24[32] = *MEMORY[0x277D85DE8];
  v20 = 0;
  cf = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APAuthenticationClientRSA <= 40 && (gLogCategory_APAuthenticationClientRSA != -1 || _LogCategory_Initialize()))
  {
    rsaAuthentication_AuthenticateEndpoint_cold_1();
  }

  lengthAtOffsetOut = 0;
  dataPointerOut[0] = 0;
  v2 = RandomBytes();
  if (v2)
  {
    v17 = v2;
    rsaAuthentication_AuthenticateEndpoint_cold_2(v2);
LABEL_33:
    APSLogErrorAt();
    goto LABEL_24;
  }

  v3 = Base64EncodeEx();
  if (v3)
  {
    v17 = v3;
    rsaAuthentication_AuthenticateEndpoint_cold_3(v3);
    goto LABEL_33;
  }

  v4 = *MEMORY[0x277CBECE8];
  BlockBufferCopyingMemoryBlock = FigCreateBlockBufferCopyingMemoryBlock();
  if (BlockBufferCopyingMemoryBlock)
  {
    v17 = BlockBufferCopyingMemoryBlock;
    APSLogErrorAt();
    goto LABEL_33;
  }

  v6 = *(DerivedStorage + 8);
  v7 = *(*(CMBaseObjectGetVTable() + 16) + 56);
  if (v7)
  {
    v8 = v7(v6, 1920164128, dataPointerOut[0], &cf);
    if (v8)
    {
      v17 = v8;
    }

    else
    {
      CMBaseObject = FigTransportStreamGetCMBaseObject();
      v10 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      if (v10)
      {
        v11 = v10(CMBaseObject, *MEMORY[0x277CE5090], v4, &v20);
        if (v11)
        {
          v17 = v11;
        }

        else
        {
          APSNetworkAddressGetSocketAddr();
          v12 = cf;
          v13 = *DerivedStorage;
          lengthAtOffsetOut = 0;
          dataPointerOut[0] = 0;
          CFDataGetBytePtr(v13);
          DataPointer = CMBlockBufferGetDataPointer(v12, 0, &lengthAtOffsetOut, 0, dataPointerOut);
          if (DataPointer)
          {
            v17 = DataPointer;
            rsaAuthentication_AuthenticateEndpoint_cold_4(DataPointer);
          }

          else
          {
            v15 = Base64Decode();
            if (v15)
            {
              v17 = v15;
              rsaAuthentication_AuthenticateEndpoint_cold_5(v15);
            }

            else
            {
              v16 = AirPlayRSA_PublicDecrypt(v24, lengthAtOffsetOut, v24, 0x100uLL, &lengthAtOffsetOut);
              if (v16)
              {
                v17 = v16;
                rsaAuthentication_AuthenticateEndpoint_cold_6(v16);
              }

              else if (lengthAtOffsetOut <= 0xF)
              {
                rsaAuthentication_AuthenticateEndpoint_cold_14();
                v17 = 4294895492;
              }

              else
              {
                v17 = 4294895491;
                if (dataPointerOut[1] == v24[0] && dataPointerOut[2] == v24[1])
                {
                  v17 = 4294895493;
                }

                else
                {
                  rsaAuthentication_AuthenticateEndpoint_cold_7();
                }
              }
            }
          }
        }
      }

      else
      {
        v17 = 4294954514;
      }
    }
  }

  else
  {
    v17 = 4294954514;
  }

  APSLogErrorAt();
LABEL_24:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v20)
  {
    CFRelease(v20);
  }

  return v17;
}

uint64_t rsaAuthentication_CreateEncryptedKey(int a1, CFDataRef theData, const __CFAllocator *a3, CFDataRef *a4)
{
  v13 = *MEMORY[0x277D85DE8];
  v11 = 0;
  BytePtr = CFDataGetBytePtr(theData);
  v7 = AirPlayRSA_PublicEncrypt(BytePtr, 0x10uLL, bytes, 0x100uLL, &v11);
  if (v7)
  {
    v9 = v7;
    rsaAuthentication_CreateEncryptedKey_cold_1(v7);
  }

  else if (v11 == 256)
  {
    v8 = CFDataCreate(a3, bytes, 256);
    if (v8)
    {
      v9 = 0;
      *a4 = v8;
    }

    else
    {
      rsaAuthentication_CreateEncryptedKey_cold_3();
      return 4294895496;
    }
  }

  else
  {
    v9 = 4294895492;
    rsaAuthentication_CreateEncryptedKey_cold_2();
  }

  return v9;
}

uint64_t APEndpointCreateStreamTypeArrayFromFeatures(char a1, __CFArray **a2)
{
  Mutable = CFArrayCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF128]);
  v5 = Mutable;
  if (a2)
  {
    if (a1)
    {
      CFArrayAppendValue(Mutable, *MEMORY[0x277CC1980]);
      if ((a1 & 2) == 0)
      {
LABEL_4:
        if ((a1 & 8) == 0)
        {
          goto LABEL_5;
        }

        goto LABEL_10;
      }
    }

    else if ((a1 & 2) == 0)
    {
      goto LABEL_4;
    }

    CFArrayAppendValue(v5, *MEMORY[0x277CC1960]);
    if ((a1 & 8) == 0)
    {
LABEL_5:
      if ((a1 & 0x20) == 0)
      {
LABEL_7:
        result = 0;
        *a2 = v5;
        return result;
      }

LABEL_6:
      CFArrayAppendValue(v5, *MEMORY[0x277CC1970]);
      goto LABEL_7;
    }

LABEL_10:
    CFArrayAppendValue(v5, *MEMORY[0x277CC1968]);
    if ((a1 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  APSLogErrorAt();
  if (v5)
  {
    CFRelease(v5);
  }

  return 4294950576;
}

uint64_t APEndpointTriggerAudioHALDeviceCreation(uint64_t a1, uint64_t a2, const void *a3, const void *a4, const void *a5, uint64_t a6, uint64_t a7, char a8, float a9)
{
  v9 = APEndpointTriggerAudioHALDeviceCreationEx(a1, a2, 0, a3, a4, a5, a6, a7, a9, a8);
  v10 = v9;
  if (v9)
  {
    APEndpointTriggerAudioHALDeviceCreation_cold_1(v9);
  }

  return v10;
}

uint64_t APEndpointTriggerAudioHALDeviceCreationEx(uint64_t a1, uint64_t a2, const void *a3, const void *a4, const void *a5, const void *a6, unsigned int a7, int a8, float a9, char a10)
{
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (Mutable)
  {
    v16 = Mutable;
    if (a5)
    {
      CFDictionarySetValue(Mutable, @"DeviceType", a5);
    }

    if (a4)
    {
      CFDictionarySetValue(v16, @"EndpointName", a4);
    }

    if (a6)
    {
      CFDictionarySetValue(v16, @"NetworkClockType", a6);
    }

    CFDictionarySetInt64();
    v17 = *MEMORY[0x277CBED28];
    v18 = *MEMORY[0x277CBED10];
    if (a8)
    {
      v19 = *MEMORY[0x277CBED28];
    }

    else
    {
      v19 = *MEMORY[0x277CBED10];
    }

    CFDictionarySetValue(v16, @"VolumeCtrlSupported", v19);
    if (a10)
    {
      v20 = v17;
    }

    else
    {
      v20 = v18;
    }

    CFDictionarySetValue(v16, @"MuteCtrlSupported", v20);
    CFDictionarySetDouble();
    if (a3)
    {
      CFDictionarySetValue(v16, @"AudioStreamOverride", a3);
    }

    FigHALAudioDeviceBrokerCopy();
    APEndpointTriggerAudioHALDeviceCreationEx_cold_1();
    v22 = 4294949690;
    CFRelease(v16);
  }

  else
  {
    APEndpointTriggerAudioHALDeviceCreationEx_cold_2();
    return 4294950575;
  }

  return v22;
}

uint64_t APEndpointCreateAudioStreamOptions(const void *a1, const void *a2, const __CFDictionary *a3, uint64_t a4, CFMutableDictionaryRef *a5)
{
  APSGetPersistentGroupModel();
  APSGetClusterModelForPersistentGroupModel();
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (!Mutable)
  {
    APEndpointCreateAudioStreamOptions_cold_8();
    v11 = 4294950575;
    goto LABEL_18;
  }

  if (a3)
  {
    CFDictionaryGetValue(a3, @"SupportedAudioFormats");
    CFDictionaryGetInt64();
    CFDictionaryGetInt64Ranged();
    CFDictionaryGetInt64();
    CFDictionaryGetInt64();
    CFDictionaryGetInt64();
    CFDictionaryGetInt64();
    if (CFDictionaryContainsKey(a3, @"PerceivedClusterType"))
    {
      CFDictionaryGetInt64();
    }
  }

  if (!FigCFEqual())
  {
    if (FigCFEqual())
    {
      v8 = APAudioFormatCopyPreferredBufferedAudioFormats();
      if (v8)
      {
        v11 = v8;
        APEndpointCreateAudioStreamOptions_cold_2(v8);
        goto LABEL_18;
      }
    }

    else
    {
      if (!FigCFEqual())
      {
        goto LABEL_16;
      }

      v9 = APAudioFormatCopyPreferredLowLatencyAudioFormats();
      if (v9)
      {
        v11 = v9;
        APEndpointCreateAudioStreamOptions_cold_3(v9);
        goto LABEL_18;
      }
    }

LABEL_13:
    if (CFDictionaryGetInt64())
    {
      v10 = APAudioFormatChooseFromPreferredAudioFormats();
      if (v10)
      {
        v11 = v10;
        APEndpointCreateAudioStreamOptions_cold_4(v10);
        goto LABEL_18;
      }

      goto LABEL_17;
    }

LABEL_16:
    FigCFArrayGetInt64AtIndex();
LABEL_17:
    APEndpointCreateAudioStreamOptions_cold_7();
    v11 = 4294950576;
    goto LABEL_18;
  }

  v7 = APAudioFormatCopyPreferredRealTimeAudioFormatsSender();
  if (!v7)
  {
    goto LABEL_13;
  }

  v11 = v7;
  APEndpointCreateAudioStreamOptions_cold_1(v7);
LABEL_18:
  if (Mutable)
  {
    CFRelease(Mutable);
  }

  return v11;
}

uint64_t APEndpointCreateAudioOptions(uint64_t a1, const void *a2, const __CFDictionary *a3, uint64_t a4, __CFDictionary **a5)
{
  value = 0;
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (!Mutable)
  {
    APEndpointCreateAudioOptions_cold_3();
    return 4294950575;
  }

  v11 = Mutable;
  if ((a1 & 2) != 0)
  {
    v13 = *MEMORY[0x277CC1960];
    AudioStreamOptions = APEndpointCreateAudioStreamOptions(*MEMORY[0x277CC1960], a2, a3, a4, &value);
    if (AudioStreamOptions)
    {
      v17 = AudioStreamOptions;
      APEndpointCreateAudioOptions_cold_1(AudioStreamOptions);
      goto LABEL_21;
    }

    v12 = value;
    CFDictionarySetValue(v11, v13, value);
    if ((a1 & 8) == 0)
    {
      goto LABEL_11;
    }

    if (v12)
    {
      CFRelease(v12);
      value = 0;
    }

LABEL_9:
    v15 = *MEMORY[0x277CC1968];
    v16 = APEndpointCreateAudioStreamOptions(*MEMORY[0x277CC1968], a2, a3, a4, &value);
    if (!v16)
    {
      v12 = value;
      CFDictionarySetValue(v11, v15, value);
      goto LABEL_11;
    }

    v17 = v16;
    APEndpointCreateAudioOptions_cold_2(v16);
LABEL_21:
    CFRelease(v11);
    v12 = value;
    if (!value)
    {
      return v17;
    }

    goto LABEL_16;
  }

  if ((a1 & 8) != 0)
  {
    goto LABEL_9;
  }

  v12 = 0;
LABEL_11:
  if (gLogCategory_APEndpointUtilities <= 50 && (gLogCategory_APEndpointUtilities != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APEndpointUtilities, "OSStatus APEndpointCreateAudioOptions(FigEndpointFeatures, APSNetworkClockRef, CFDictionaryRef, Boolean, CFDictionaryRef *)", 33554482, "<AirPlayClock> Created audio options [%{ptr}] with network clock [%{ptr}], with features %#ll{flags}", v11, a2, a1, &unk_2222986C4);
  }

  v17 = 0;
  *a5 = v11;
  if (v12)
  {
LABEL_16:
    CFRelease(v12);
  }

  return v17;
}

uint64_t APEndpointCopyFromActivationOptionsOrCreateSharedContext(const __CFDictionary *a1, uint64_t a2, CFDictionaryRef theDict, unint64_t a4, void *a5, __CFDictionary **a6)
{
  v32 = 0;
  if (gLogCategory_APEndpointUtilities <= 40 && (gLogCategory_APEndpointUtilities != -1 || _LogCategory_Initialize()))
  {
    APEndpointCopyFromActivationOptionsOrCreateSharedContext_cold_1(a2);
    if (!a1)
    {
      goto LABEL_11;
    }
  }

  else if (!a1)
  {
    goto LABEL_11;
  }

  if (!CFDictionaryGetInt64())
  {
    goto LABEL_11;
  }

  if (a6 && !CFDictionaryContainsKey(a1, @"AudioOptions"))
  {
    APEndpointCopyFromActivationOptionsOrCreateSharedContext_cold_2();
  }

  else
  {
    if (!a4 || CFDictionaryContainsKey(theDict, @"NetworkClock") || CFDictionaryContainsKey(a1, @"NetworkClock"))
    {
LABEL_11:
      v31 = a2;
      if (theDict)
      {
        Value = CFDictionaryGetValue(theDict, @"PreferredNetworkClockType");
        v13 = CFDictionaryGetValue(theDict, @"NetworkClock");
        if (v13)
        {
          v14 = CFRetain(v13);
        }

        else
        {
          v14 = 0;
        }

        v32 = v14;
        CFDictionaryGetInt64();
        v30 = CFDictionaryGetValue(theDict, @"AudioEngineOptions");
        CFDictionaryGetInt64();
        v15 = a6 != 0;
        v16 = a4 != 0;
        if (a4 | a6)
        {
          if (v14)
          {
LABEL_38:
            if (!v15)
            {
              goto LABEL_47;
            }

            if (a1 && (Int64 = CFDictionaryGetInt64(), v25 = CFDictionaryGetValue(a1, @"AudioOptions"), CFDictionaryGetValue(a1, *MEMORY[0x277CC09E8]), Int64))
            {
              if (v25)
              {
                v26 = CFRetain(v25);
                *a6 = v26;
                if (gLogCategory_APEndpointUtilities > 50)
                {
                  goto LABEL_47;
                }

                if (gLogCategory_APEndpointUtilities != -1)
                {
                  goto LABEL_44;
                }

                if (_LogCategory_Initialize())
                {
                  v26 = *a6;
LABEL_44:
                  LogPrintF(&gLogCategory_APEndpointUtilities, "OSStatus endpoint_copyFromActivationOptionsOrCreateAudioOptions(CFDictionaryRef, FigEndpointFeatures, APSNetworkClockRef, CFDictionaryRef, CFDictionaryRef *)", 33554482, "<AirPlayClock> Copied audio options [%{ptr}] from shared context", v26);
                }

LABEL_47:
                if (v16)
                {
                  v21 = 0;
                  *a4 = v32;
                  return v21;
                }

                goto LABEL_49;
              }

              APEndpointCopyFromActivationOptionsOrCreateSharedContext_cold_5();
            }

            else
            {
              if (v32)
              {
                v27 = FigCFEqual();
                AudioOptions = APEndpointCreateAudioOptions(v31, v32, v30, v27, a6);
                if (!AudioOptions)
                {
                  goto LABEL_47;
                }

                v21 = AudioOptions;
                APEndpointCopyFromActivationOptionsOrCreateSharedContext_cold_6(AudioOptions);
                goto LABEL_64;
              }

              APEndpointCopyFromActivationOptionsOrCreateSharedContext_cold_7();
            }

            v21 = 4294950576;
LABEL_64:
            APSLogErrorAt();
            goto LABEL_50;
          }

LABEL_19:
          cf = 0;
          if (a1)
          {
            v17 = CFDictionaryGetInt64();
            v18 = CFDictionaryGetValue(a1, @"NetworkClock");
            if (v17)
            {
              if (v18)
              {
                v32 = CFRetain(v18);
                CMBaseObject = APSNetworkClockGetCMBaseObject();
                v20 = *(*(CMBaseObjectGetVTable() + 8) + 48);
                if (v20)
                {
                  v21 = v20(CMBaseObject, *MEMORY[0x277CEA260], *MEMORY[0x277CBECE8], &cf);
                  if (!v21)
                  {
                    v22 = cf;
                    if (!a5)
                    {
LABEL_35:
                      if (v22)
                      {
                        CFRelease(v22);
                      }

LABEL_37:
                      if (v21)
                      {
                        goto LABEL_64;
                      }

                      goto LABEL_38;
                    }

LABEL_34:
                    *a5 = v22;
                    goto LABEL_37;
                  }
                }

                else
                {
                  v21 = 4294954514;
                }

                APSLogErrorAt();
                v22 = cf;
                goto LABEL_35;
              }

              APEndpointCopyFromActivationOptionsOrCreateSharedContext_cold_4();
LABEL_63:
              v21 = 4294950576;
              goto LABEL_64;
            }
          }

          if (FigCFEqual())
          {
            v23 = APSNetworkClockPTPCreate();
          }

          else
          {
            if (!FigCFEqual())
            {
              if (!FigCFEqual())
              {
                goto LABEL_63;
              }

              v21 = 0;
              v32 = 0;
LABEL_33:
              v22 = CFRetain(Value);
              cf = v22;
              if (!a5)
              {
                goto LABEL_35;
              }

              goto LABEL_34;
            }

            v23 = APSNetworkClockNTPServerCreate();
          }

          v21 = v23;
          goto LABEL_33;
        }
      }

      else
      {
        v15 = a6 != 0;
        v16 = a4 != 0;
        if (a4 | a6)
        {
          Value = 0;
          v30 = 0;
          goto LABEL_19;
        }
      }

LABEL_49:
      v21 = 0;
      goto LABEL_50;
    }

    APEndpointCopyFromActivationOptionsOrCreateSharedContext_cold_3();
  }

  v21 = 4294950576;
LABEL_50:
  if (v32)
  {
    CFRelease(v32);
  }

  return v21;
}

void APEndpointCallCompletionCallbackForActivationOrDeactivation(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v2(*a1, *(a1 + 16), *(a1 + 8), *(a1 + 24), *(a1 + 40));
  }

  v3 = *a1;

  CFRelease(v3);
}

uint64_t APEndpointCreateStreamsChangedNotificationPayload(const __CFAllocator *a1, uint64_t a2, uint64_t a3, int a4, CFMutableDictionaryRef *a5)
{
  if (a5)
  {
    Mutable = CFDictionaryCreateMutable(a1, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    if (Mutable)
    {
      v7 = Mutable;
      CFDictionarySetInt64();
      CFDictionarySetInt64();
      CFDictionarySetInt64();
      result = 0;
      *a5 = v7;
    }

    else
    {
      APEndpointCreateStreamsChangedNotificationPayload_cold_1();
      return 4294950575;
    }
  }

  else
  {
    APEndpointCreateStreamsChangedNotificationPayload_cold_2();
    return 4294950576;
  }

  return result;
}

uint64_t APEndpointAPSClusterTypeToAPSLocalRouteType(uint64_t result)
{
  if ((result - 1) >= 3)
  {
    return 0;
  }

  else
  {
    return result;
  }
}

uint64_t APEndpointCreateLocalRouteState(int a1, const void *a2, unsigned int a3, __CFDictionary **a4)
{
  if (a4)
  {
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    if (Mutable)
    {
      v8 = Mutable;
      v9 = MEMORY[0x277CBED10];
      if (a1)
      {
        v9 = MEMORY[0x277CBED28];
      }

      CFDictionarySetValue(Mutable, @"IsActive", *v9);
      if (a1)
      {
        if (a2)
        {
          CFDictionarySetValue(v8, @"GroupContextID", a2);
        }
      }

      CFDictionarySetInt64();
      result = 0;
      *a4 = v8;
    }

    else
    {
      APEndpointCreateLocalRouteState_cold_1();
      return 4294950575;
    }
  }

  else
  {
    APEndpointCreateLocalRouteState_cold_2();
    return 4294950576;
  }

  return result;
}

uint64_t APEndpointGetEnabledFeatures(uint64_t a1, int a2, void *a3)
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x2000000000;
  v12 = 0;
  if (a3)
  {
    v5 = &v9;
    if (a1)
    {
      CFDictionaryApplyBlock();
      v5 = v10;
    }

    v6 = v5[3];
    if (a2)
    {
      v6 |= 4uLL;
      v5[3] = v6;
    }

    v7 = 0;
    *a3 = v6;
  }

  else
  {
    APEndpointGetEnabledFeatures_cold_1();
    v7 = 4294950576;
  }

  _Block_object_dispose(&v9, 8);
  return v7;
}

uint64_t APEndpointFigEndpointClusterTypeToAPSClusterType(const void *a1)
{
  if (a1)
  {
    if (CFEqual(a1, *MEMORY[0x277CC0B00]))
    {
      return 1;
    }

    else if (CFEqual(a1, *MEMORY[0x277CC0AF8]))
    {
      return 2;
    }

    else if (CFEqual(a1, *MEMORY[0x277CC0AF0]))
    {
      return 3;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    APEndpointFigEndpointClusterTypeToAPSClusterType_cold_1();
    return 0;
  }
}

void APEndpointCallCompletionCallbackForSendCommand(uint64_t a1)
{
  v2 = *a1;
  if (!*a1 || (FigEndpointExtendedGetClassID(), !CMBaseObjectIsMemberOfClass()))
  {
    v2 = 0;
  }

  (*(a1 + 16))(v2, *(a1 + 32), *(a1 + 8), *(a1 + 24));
  if (*a1)
  {
    CFRelease(*a1);
  }

  v3 = *(a1 + 8);
  if (v3)
  {

    CFRelease(v3);
  }
}

void *APEndpointCreateRCSendDataCompletionContext(const void *a1, const void *a2, NSObject *a3, uint64_t a4, uint64_t a5)
{
  v10 = malloc_type_calloc(1uLL, 0x28uLL, 0xE0040B6671DC2uLL);
  if (v10)
  {
    *v10 = CFRetain(a1);
    v10[1] = CFRetain(a2);
    v10[4] = a3;
    dispatch_retain(a3);
    v10[2] = a4;
    v10[3] = a5;
  }

  else
  {
    APEndpointCreateRCSendDataCompletionContext_cold_1();
  }

  return v10;
}

void APEndpointCallRCSendDataCompletionAsync(CFTypeRef cf, CFTypeRef a2, int a3, dispatch_queue_t queue, uint64_t a5, uint64_t a6)
{
  if (a5)
  {
    if (cf)
    {
      CFRetain(cf);
    }

    if (a2)
    {
      CFRetain(a2);
    }

    block[0] = MEMORY[0x277D85DD0];
    block[1] = 0x40000000;
    block[2] = __APEndpointCallRCSendDataCompletionAsync_block_invoke;
    block[3] = &__block_descriptor_tmp_59_0;
    block[4] = a5;
    block[5] = cf;
    v13 = a3;
    block[6] = a2;
    block[7] = a6;
    dispatch_async(queue, block);
  }
}

void __APEndpointCallRCSendDataCompletionAsync_block_invoke(uint64_t a1)
{
  (*(a1 + 32))(*(a1 + 40), *(a1 + 48), *(a1 + 64), *(a1 + 56));
  v2 = *(a1 + 40);
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = *(a1 + 48);
  if (v3)
  {

    CFRelease(v3);
  }
}

void APEndpointCallRCSendDataCompletionFromContextAsync(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  APEndpointCallRCSendDataCompletionAsync(*a4, *(a4 + 8), a3, *(a4 + 32), *(a4 + 16), *(a4 + 24));
  if (*a4)
  {
    CFRelease(*a4);
  }

  v5 = *(a4 + 8);
  if (v5)
  {
    CFRelease(v5);
  }

  dispatch_release(*(a4 + 32));

  free(a4);
}

void APEndpointCallRCDelegateDidReceiveDataAsync(const void *a1, uint64_t a2, const void *a3, const void *a4, NSObject *a5, uint64_t a6, uint64_t a7)
{
  if (a1)
  {
    if (a3)
    {
      if (a4)
      {
        if (a6)
        {
          if (a5)
          {
            if (a7)
            {
              v13 = FigCFWeakReferenceHolderCopyReferencedObject();
              if (!v13)
              {
                APEndpointCallRCDelegateDidReceiveDataAsync_cold_1();
                return;
              }
            }

            else
            {
              v13 = 0;
            }

            CFRetain(a1);
            CFRetain(a3);
            CFRetain(a4);
            if (v13)
            {
              CFRetain(v13);
            }

            v14[0] = MEMORY[0x277D85DD0];
            v14[1] = 0x40000000;
            v14[2] = __APEndpointCallRCDelegateDidReceiveDataAsync_block_invoke;
            v14[3] = &__block_descriptor_tmp_61;
            v14[4] = a1;
            v14[5] = a3;
            v14[6] = a4;
            v14[7] = a6;
            v14[8] = a2;
            v14[9] = v13;
            dispatch_async(a5, v14);
            if (v13)
            {
              CFRelease(v13);
            }
          }

          else
          {
            APEndpointCallRCDelegateDidReceiveDataAsync_cold_2();
          }
        }

        else
        {
          APEndpointCallRCDelegateDidReceiveDataAsync_cold_3();
        }
      }

      else
      {
        APEndpointCallRCDelegateDidReceiveDataAsync_cold_4();
      }
    }

    else
    {
      APEndpointCallRCDelegateDidReceiveDataAsync_cold_5();
    }
  }

  else
  {
    APEndpointCallRCDelegateDidReceiveDataAsync_cold_6();
  }
}

void __APEndpointCallRCDelegateDidReceiveDataAsync_block_invoke(uint64_t a1)
{
  if (gLogCategory_APEndpointUtilities <= 30 && (gLogCategory_APEndpointUtilities != -1 || _LogCategory_Initialize()))
  {
    __APEndpointCallRCDelegateDidReceiveDataAsync_block_invoke_cold_1(a1);
  }

  (*(a1 + 56))(*(a1 + 32), *(a1 + 64), *(a1 + 40), *(a1 + 48), *(a1 + 72));
  CFRelease(*(a1 + 32));
  CFRelease(*(a1 + 40));
  CFRelease(*(a1 + 48));
  v2 = *(a1 + 72);
  if (v2)
  {

    CFRelease(v2);
  }
}

void APEndpointCallRCDelegateDidCloseAsync(const void *a1, uint64_t a2, const void *a3, NSObject *a4, uint64_t a5, uint64_t a6)
{
  if (a1)
  {
    if (a3)
    {
      if (a5)
      {
        if (a4)
        {
          if (a6)
          {
            v11 = FigCFWeakReferenceHolderCopyReferencedObject();
            if (!v11)
            {
              APEndpointCallRCDelegateDidCloseAsync_cold_1();
              return;
            }
          }

          else
          {
            v11 = 0;
          }

          CFRetain(a1);
          CFRetain(a3);
          if (v11)
          {
            CFRetain(v11);
          }

          block[0] = MEMORY[0x277D85DD0];
          block[1] = 0x40000000;
          block[2] = __APEndpointCallRCDelegateDidCloseAsync_block_invoke;
          block[3] = &__block_descriptor_tmp_63_0;
          block[4] = a1;
          block[5] = a3;
          block[6] = a5;
          block[7] = a2;
          block[8] = v11;
          dispatch_async(a4, block);
          if (v11)
          {
            CFRelease(v11);
          }
        }

        else
        {
          APEndpointCallRCDelegateDidCloseAsync_cold_2();
        }
      }

      else
      {
        APEndpointCallRCDelegateDidCloseAsync_cold_3();
      }
    }

    else
    {
      APEndpointCallRCDelegateDidCloseAsync_cold_4();
    }
  }

  else
  {
    APEndpointCallRCDelegateDidCloseAsync_cold_5();
  }
}

void __APEndpointCallRCDelegateDidCloseAsync_block_invoke(uint64_t a1)
{
  if (gLogCategory_APEndpointUtilities <= 50 && (gLogCategory_APEndpointUtilities != -1 || _LogCategory_Initialize()))
  {
    __APEndpointCallRCDelegateDidCloseAsync_block_invoke_cold_1(a1);
  }

  (*(a1 + 48))(*(a1 + 32), *(a1 + 56), *(a1 + 40), *(a1 + 64));
  CFRelease(*(a1 + 32));
  CFRelease(*(a1 + 40));
  v2 = *(a1 + 64);
  if (v2)
  {

    CFRelease(v2);
  }
}

uint64_t APEndpointApplyInitialVolume(uint64_t a1)
{
  if (a1 && (FigEndpointExtendedGetClassID(), CMBaseObjectIsMemberOfClass()))
  {
    v2 = *(*(CMBaseObjectGetVTable() + 24) + 72);
    if (v2)
    {

      return v2(a1, @"applyInitialVolume", 0, 0, 0);
    }

    else
    {
      return 4294954514;
    }
  }

  else
  {
    APSLogErrorAt();
    return 4294950576;
  }
}

CFMutableDictionaryRef APEndpointCreateSecondDisplayModeCommandParams(uint64_t a1)
{
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (Mutable)
  {
    CFDictionarySetInt64();
  }

  else
  {
    APEndpointCreateSecondDisplayModeCommandParams_cold_1();
  }

  return Mutable;
}

NSObject *APEndpointCreateAndStartProcessDemiseListener(void *a1, int a2, dispatch_queue_t queue, void (__cdecl *a4)(void *))
{
  v6 = dispatch_source_create(MEMORY[0x277D85D20], a2, 0x80000000uLL, queue);
  v7 = v6;
  if (v6)
  {
    dispatch_set_context(v6, a1);
    dispatch_source_set_event_handler_f(v7, a4);
    dispatch_resume(v7);
  }

  else
  {
    APEndpointCreateAndStartProcessDemiseListener_cold_1();
  }

  return v7;
}

uint64_t APAuthenticationClientMFiCreate(uint64_t a1, const void *a2, CFTypeRef *a3)
{
  cf = 0;
  if (a2)
  {
    APAuthenticationClientGetClassID(a1, a2);
    v5 = CMDerivedObjectCreate();
    if (v5)
    {
      v6 = v5;
      APSLogErrorAt();
    }

    else
    {
      *(CMBaseObjectGetDerivedStorage() + 8) = a2;
      CFRetain(a2);
      if (gLogCategory_APAuthenticationClientMFi <= 30 && (gLogCategory_APAuthenticationClientMFi != -1 || _LogCategory_Initialize()))
      {
        APAuthenticationClientMFiCreate_cold_1(&cf);
      }

      v6 = 0;
      *a3 = cf;
    }
  }

  else
  {
    APAuthenticationClientMFiCreate_cold_2();
    return 4294895495;
  }

  return v6;
}

void mfiAuthentication_Finalize(const void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APAuthenticationClientMFi <= 30 && (gLogCategory_APAuthenticationClientMFi != -1 || _LogCategory_Initialize()))
  {
    mfiAuthentication_Finalize_cold_1(a1);
  }

  if (*DerivedStorage)
  {
    MFiSAP_Delete();
    *DerivedStorage = 0;
  }

  v3 = DerivedStorage[1];
  if (v3)
  {
    CFRelease(v3);
    DerivedStorage[1] = 0;
  }
}

__CFString *mfiAuthentication_CopyDebugDescription(uint64_t a1)
{
  Mutable = CFStringCreateMutable(*MEMORY[0x277CBECE8], 0);
  CFStringAppendFormat(Mutable, 0, @"<APAuthenticationClientMFi %p>", a1);
  return Mutable;
}

void *__getMFAACreateCertificateSerialNumberSymbolLoc_block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v5[0] = 0;
  if (!MFAAuthenticationLibraryCore_frameworkLibrary)
  {
    v5[1] = MEMORY[0x277D85DD0];
    v5[2] = 0x40000000;
    v5[3] = __MFAAuthenticationLibraryCore_block_invoke;
    v5[4] = &__block_descriptor_tmp_8;
    v5[5] = v5;
    v6 = xmmword_2784A0790;
    v7 = 0;
    MFAAuthenticationLibraryCore_frameworkLibrary = _sl_dlopen();
    v3 = v5[0];
    v2 = MFAAuthenticationLibraryCore_frameworkLibrary;
    if (MFAAuthenticationLibraryCore_frameworkLibrary)
    {
      if (!v5[0])
      {
        goto LABEL_5;
      }
    }

    else
    {
      v3 = abort_report_np("%s", v5[0]);
    }

    free(v3);
    goto LABEL_5;
  }

  v2 = MFAAuthenticationLibraryCore_frameworkLibrary;
LABEL_5:
  result = dlsym(v2, "MFAACreateCertificateSerialNumber");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMFAACreateCertificateSerialNumberSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __MFAAuthenticationLibraryCore_block_invoke(uint64_t a1)
{
  result = _sl_dlopen();
  MFAAuthenticationLibraryCore_frameworkLibrary = result;
  return result;
}

uint64_t mfiAuthentication_AuthenticateEndpoint(uint64_t a1)
{
  lengthAtOffsetOut = 0;
  dataPointerOut = 0;
  v13 = 0;
  v11 = 0;
  cf = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APAuthenticationClientMFi <= 40 && (gLogCategory_APAuthenticationClientMFi != -1 || _LogCategory_Initialize()))
  {
    mfiAuthentication_AuthenticateEndpoint_cold_1();
  }

  if (*DerivedStorage)
  {
    MFiSAP_Delete();
    *DerivedStorage = 0;
  }

  v2 = MFiSAP_Create();
  if (v2)
  {
    v9 = v2;
    mfiAuthentication_AuthenticateEndpoint_cold_2(v2);
  }

  else
  {
    lengthAtOffsetOut = 0;
    dataPointerOut = 0;
    v3 = MFiSAP_Exchange();
    if (v3)
    {
LABEL_19:
      v9 = v3;
    }

    else
    {
      while (1)
      {
        if (v13)
        {
          v9 = 0;
          goto LABEL_23;
        }

        if (cf)
        {
          CFRelease(cf);
          cf = 0;
        }

        if (v11)
        {
          CFRelease(v11);
          v11 = 0;
        }

        BlockBufferCopyingMemoryBlock = FigCreateBlockBufferCopyingMemoryBlock();
        if (BlockBufferCopyingMemoryBlock)
        {
          v9 = BlockBufferCopyingMemoryBlock;
          mfiAuthentication_AuthenticateEndpoint_cold_3(BlockBufferCopyingMemoryBlock);
          goto LABEL_23;
        }

        if (dataPointerOut)
        {
          free(dataPointerOut);
          dataPointerOut = 0;
        }

        v5 = DerivedStorage[1];
        v6 = cf;
        v7 = *(*(CMBaseObjectGetVTable() + 16) + 56);
        if (!v7)
        {
          v9 = 4294954514;
          goto LABEL_21;
        }

        v8 = v7(v5, 1835428128, v6, &v11);
        if (v8)
        {
          break;
        }

        CMBlockBufferGetDataPointer(v11, 0, &lengthAtOffsetOut, 0, &dataPointerOut);
        v3 = MFiSAP_Exchange();
        if (v3)
        {
          goto LABEL_19;
        }
      }

      v9 = v8;
    }

LABEL_21:
    APSLogErrorAt();
  }

LABEL_23:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v11)
  {
    CFRelease(v11);
  }

  if (v9)
  {
    if (*DerivedStorage)
    {
      MFiSAP_Delete();
      *DerivedStorage = 0;
    }

    if (gLogCategory_APAuthenticationClientMFi <= 60 && (gLogCategory_APAuthenticationClientMFi != -1 || _LogCategory_Initialize()))
    {
      mfiAuthentication_AuthenticateEndpoint_cold_4(v9);
    }
  }

  return v9;
}

uint64_t mfiAuthentication_CreateEncryptedKey(uint64_t a1, const __CFData *a2, const __CFAllocator *a3, CFDataRef *a4)
{
  v12 = *MEMORY[0x277D85DE8];
  if (*CMBaseObjectGetDerivedStorage())
  {
    CFDataGetBytePtr(a2);
    v7 = MFiSAP_Encrypt();
    if (v7)
    {
      v9 = v7;
      mfiAuthentication_CreateEncryptedKey_cold_1(v7);
    }

    else
    {
      v8 = CFDataCreate(a3, bytes, 16);
      if (v8)
      {
        v9 = 0;
        *a4 = v8;
      }

      else
      {
        mfiAuthentication_CreateEncryptedKey_cold_2();
        return 4294895496;
      }
    }
  }

  else
  {
    v9 = 4294895493;
    mfiAuthentication_CreateEncryptedKey_cold_3();
  }

  return v9;
}

uint64_t mrcr_getTypeID(uint64_t *a1)
{
  result = _CFRuntimeRegisterClass();
  *a1 = result;
  return result;
}

uint64_t APMediaRemoteCommandReceiverCreate(uint64_t a1, const void *a2, int **a3)
{
  if (a2)
  {
    if (a3)
    {
      if (_MergedGlobals_23 != -1)
      {
        APMediaRemoteCommandReceiverCreate_cold_1();
      }

      Instance = _CFRuntimeCreateInstance();
      if (Instance)
      {
        v6 = Instance;
        *(Instance + 16) = 0u;
        *(Instance + 32) = 0u;
        v7 = (Instance + 32);
        *(Instance + 16) = CFRetain(a2);
        *v7 = -1;
        v6[10] = -1;
        v8 = DACPServer_Create();
        if (v8)
        {
          v10 = v8;
          APMediaRemoteCommandReceiverCreate_cold_2(v8, v6);
        }

        else
        {
          notify_register_check("com.apple.AirTunes.DACP.devicevolume", v7);
          notify_register_check("com.apple.AirTunes.DACP.devicevolumechanged", v6 + 9);
          notify_register_check("com.apple.AirTunes.DACP.device-prevent-playback", v6 + 10);
          if (gLogCategory_APMediaRemoteCommandReceiver <= 30 && (gLogCategory_APMediaRemoteCommandReceiver != -1 || _LogCategory_Initialize()))
          {
            APMediaRemoteCommandReceiverCreate_cold_3((v6 + 6), v6, v9);
          }

          v10 = 0;
          *a3 = v6;
        }
      }

      else
      {
        APMediaRemoteCommandReceiverCreate_cold_4();
        return 4294895606;
      }
    }

    else
    {
      v10 = 4294895603;
      APMediaRemoteCommandReceiverCreate_cold_5();
    }
  }

  else
  {
    v10 = 4294895603;
    APMediaRemoteCommandReceiverCreate_cold_6();
  }

  return v10;
}

uint64_t mrcr_handleDACPCommand(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!strnicmpx())
  {
    v9 = 0;
    v10 = 0;
    v11 = 30064;
LABEL_24:
    v7 = v11 | 0x766C0000u;
    goto LABEL_25;
  }

  if (!strnicmpx())
  {
    v9 = 0;
    v10 = 0;
    v11 = 25710;
    goto LABEL_24;
  }

  if (!strnicmpx())
  {
    v9 = 0;
    v10 = 0;
    v7 = 1836414068;
    goto LABEL_25;
  }

  if (!strnicmpx())
  {
    v9 = 0;
    v10 = 0;
    v7 = 1852404845;
    goto LABEL_25;
  }

  if (!strnicmpx())
  {
    v9 = 0;
    v10 = 0;
    v7 = 1885959277;
    goto LABEL_25;
  }

  if (!strnicmpx())
  {
    v9 = 0;
    v10 = 0;
    v7 = 1920166260;
    goto LABEL_25;
  }

  v7 = 1886151033;
  if (!strnicmpx())
  {
    v9 = 0;
    v10 = 0;
    goto LABEL_25;
  }

  if (!strnicmpx())
  {
    v9 = 0;
    v10 = 0;
    v7 = 1937010544;
    goto LABEL_25;
  }

  if (!strnicmpx())
  {
    v9 = 0;
    v10 = 0;
    v7 = 1885435251;
    goto LABEL_25;
  }

  if (!strnicmpx())
  {
    v9 = 0;
    v10 = 0;
    v7 = 1685086581;
    goto LABEL_25;
  }

  if (!strnicmpx())
  {
    v9 = 0;
    v10 = 0;
    v7 = 1886154867;
    goto LABEL_25;
  }

  if (!strnicmpx())
  {
    v9 = 0;
    v10 = 0;
    v7 = 1919967588;
    goto LABEL_25;
  }

  if (!strnicmpx())
  {
    v9 = 0;
    v10 = 0;
    v7 = 1936225383;
    goto LABEL_25;
  }

  if (strnicmp_prefix())
  {
    if (strnicmp_prefix())
    {
      if (strnicmpx())
      {
        if (strnicmpx())
        {
          if (strnicmpx())
          {
            v8 = 4294895602;
            if (gLogCategory_APMediaRemoteCommandReceiver <= 60 && (gLogCategory_APMediaRemoteCommandReceiver != -1 || _LogCategory_Initialize()))
            {
              LogPrintF(&gLogCategory_APMediaRemoteCommandReceiver, "OSStatus mrcr_handleDACPCommand(DACPServerRef, const char *, size_t, void *)", 33554492, "### Unsupported DACP command '%.*s'\n");
            }

            return v8;
          }

          v9 = 0;
          v10 = 0;
          v7 = 1886155379;
        }

        else
        {
          v9 = 0;
          v10 = 0;
          v7 = 1651668836;
        }
      }

      else
      {
        v9 = 0;
        v10 = 0;
        v7 = 1650878052;
      }
    }

    else
    {
      v7 = 1685482604;
      v9 = a2 + 13;
      v10 = a3 - 13;
    }

    goto LABEL_25;
  }

  if (a3 < 13)
  {
LABEL_42:
    APSLogErrorAt();
    return 4294895605;
  }

  v13 = 0;
  while (*(a2 + v13 + 12) != 61)
  {
    ++v13;
    if (a2 + v13 + 12 >= (a2 + a3))
    {
      goto LABEL_42;
    }
  }

  v9 = a2 + v13 + 13;
  v10 = a3 - v13 - 13;
  if (!strnicmpx())
  {
    v7 = 1685482605;
    goto LABEL_25;
  }

  if (!strnicmpx())
  {
    if (*(a4 + 40) == -1)
    {
      mrcr_handleDACPCommand_cold_1();
      return 4294895604;
    }

    if (strnicmpx())
    {
      if (!strnicmpx() || !strnicmpx())
      {
        v7 = 1885499506;
        goto LABEL_25;
      }

      if (strnicmpx())
      {
        return 4294895603;
      }
    }

    v7 = 1885495660;
LABEL_25:
    APMediaRemoteCommandReceiverHandleAPCommand(a4, v7, v9, v10);
    return 0;
  }

  v8 = 4294895602;
  if (gLogCategory_APMediaRemoteCommandReceiver <= 60 && (gLogCategory_APMediaRemoteCommandReceiver != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APMediaRemoteCommandReceiver, "OSStatus mrcr_handleDACPCommand(DACPServerRef, const char *, size_t, void *)", 33554492, "### Unknown DACP property...full cmd '%.*s'\n");
  }

  return v8;
}

uint64_t APMediaRemoteCommandReceiverAddClient(uint64_t a1, uint64_t a2)
{
  v3 = DACPServer_AddRemote();
  if (v3)
  {
    v7 = v3;
    APMediaRemoteCommandReceiverAddClient_cold_1(v3);
  }

  else
  {
    v4 = HTTPServer_Start();
    if (v4)
    {
      v7 = v4;
      APMediaRemoteCommandReceiverAddClient_cold_2(v4);
    }

    else
    {
      if (gLogCategory_APMediaRemoteCommandReceiver <= 30 && (gLogCategory_APMediaRemoteCommandReceiver != -1 || _LogCategory_Initialize()))
      {
        APMediaRemoteCommandReceiverAddClient_cold_3(a2, v5, v6);
      }

      return 0;
    }
  }

  return v7;
}

uint64_t APMediaRemoteCommandReceiverRemoveClient(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (gLogCategory_APMediaRemoteCommandReceiver <= 30 && (gLogCategory_APMediaRemoteCommandReceiver != -1 || _LogCategory_Initialize()))
  {
    APMediaRemoteCommandReceiverRemoveClient_cold_1(a2, a2, a3);
  }

  v4 = DACPServer_RemoveRemote();
  if (v4)
  {
    v6 = v4;
    APMediaRemoteCommandReceiverRemoveClient_cold_2(v4);
  }

  else
  {
    v5 = HTTPServer_Stop();
    v6 = v5;
    if (v5)
    {
      APMediaRemoteCommandReceiverRemoveClient_cold_3(v5);
    }
  }

  return v6;
}

uint64_t APMediaRemoteCommandReceiverHandleAPCommand(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v7 = result;
  if (gLogCategory_APMediaRemoteCommandReceiver <= 50)
  {
    if (gLogCategory_APMediaRemoteCommandReceiver != -1 || (result = _LogCategory_Initialize(), result))
    {
      result = LogPrintF(&gLogCategory_APMediaRemoteCommandReceiver, "void APMediaRemoteCommandReceiverHandleAPCommand(APMediaRemoteCommandReceiverRef, APMediaRemoteCommand, const char *, size_t)", 33554482, "[%{ptr}] Handling AP command %'C\n", v7, a2);
    }
  }

  if (a2 > 1885495659)
  {
    if (a2 > 1986815085)
    {
      if (a2 == 1986819440)
      {
        v8 = "com.apple.AirTunes.DACP.volumeup";
        goto LABEL_28;
      }

      if (a2 == 1986815086)
      {
        v8 = "com.apple.AirTunes.DACP.volumedown";
        goto LABEL_28;
      }
    }

    else
    {
      if (a2 == 1885495660)
      {
        return result;
      }

      if (a2 == 1885499506)
      {
        CMNotificationCenterGetDefaultLocalCenter();

        return CMNotificationCenterPostNotification();
      }
    }

LABEL_31:
    v9 = *(v7 + 16);

    return APMediaRemoteCommandSinkHandleAPCommand(v9, a2);
  }

  if (a2 > 1685482604)
  {
    if (a2 == 1685482605)
    {
      result = mrcr_handleDeviceVolume(v7, "com.apple.AirTunes.DACP.devicevolume", a3, a4);
      if (result)
      {
        return APMediaRemoteCommandReceiverHandleAPCommand_cold_2(result);
      }

      return result;
    }

    if (a2 == 1836414068)
    {
      v8 = "com.apple.AirTunes.DACP.mutetoggle";
LABEL_28:
      result = notify_post(v8);
      if (gLogCategory_APMediaRemoteCommandReceiver <= 50)
      {
        if (gLogCategory_APMediaRemoteCommandReceiver != -1)
        {
          return LogPrintF(&gLogCategory_APMediaRemoteCommandReceiver, "void APMediaRemoteCommandReceiverHandleAPCommand(APMediaRemoteCommandReceiverRef, APMediaRemoteCommand, const char *, size_t)", 33554482, "[%{ptr}] Posted DACP notification '%s'\n", v7, v8);
        }

        result = _LogCategory_Initialize();
        if (result)
        {
          return LogPrintF(&gLogCategory_APMediaRemoteCommandReceiver, "void APMediaRemoteCommandReceiverHandleAPCommand(APMediaRemoteCommandReceiverRef, APMediaRemoteCommand, const char *, size_t)", 33554482, "[%{ptr}] Posted DACP notification '%s'\n", v7, v8);
        }
      }

      return result;
    }

    goto LABEL_31;
  }

  if (a2 != 1685482595)
  {
    if (a2 == 1685482604)
    {
      result = mrcr_handleDeviceVolume(v7, "com.apple.AirTunes.DACP.devicevolume", a3, a4);
      if (result)
      {
        return APMediaRemoteCommandReceiverHandleAPCommand_cold_3(result);
      }

      return result;
    }

    goto LABEL_31;
  }

  result = mrcr_handleDeviceVolume(v7, "com.apple.AirTunes.DACP.devicevolumechanged", a3, a4);
  if (result)
  {
    return APMediaRemoteCommandReceiverHandleAPCommand_cold_1(result);
  }

  return result;
}

uint64_t mrcr_handleDeviceVolume(uint64_t a1, const char *a2, uint64_t a3, unint64_t a4)
{
  v17 = *MEMORY[0x277D85DE8];
  v15 = 0.0;
  if (!a2)
  {
    mrcr_handleDeviceVolume_cold_3();
    return 4294895603;
  }

  if (a4 >= 0x40)
  {
    v13 = 4294895601;
    mrcr_handleDeviceVolume_cold_2();
    return v13;
  }

  __memcpy_chk();
  v16[a4] = 0;
  if (sscanf(v16, "%lf", &v15) != 1)
  {
    mrcr_handleDeviceVolume_cold_1();
    return 4294895605;
  }

  v7 = v15;
  if (v15 > 0.0)
  {
    v7 = 0.0;
  }

  if (v7 < -30.0)
  {
    v7 = -30.0;
  }

  v15 = v7;
  APSVolumeConvertDBToSliderValue();
  v9 = v8;
  if (!strcmp(a2, "com.apple.AirTunes.DACP.devicevolume"))
  {
    v10 = 32;
  }

  else
  {
    if (strcmp(a2, "com.apple.AirTunes.DACP.devicevolumechanged"))
    {
      return 0;
    }

    v10 = 36;
  }

  v11 = *(a1 + v10);
  if (v11 == -1)
  {
    return 0;
  }

  v12 = v9;
  notify_set_state(v11, *&v12);
  v13 = notify_post(a2);
  if (gLogCategory_APMediaRemoteCommandReceiver <= 40 && (gLogCategory_APMediaRemoteCommandReceiver != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APMediaRemoteCommandReceiver, "OSStatus mrcr_handleDeviceVolume(APMediaRemoteCommandReceiverRef, const char *, const char *, size_t)", 33554472, "[%{ptr}] Posted DACP notification '%s' -> %f dB (%f)\n", a1, a2, *&v15, *&v12);
  }

  return v13;
}

uint64_t APMediaRemoteCommandReceiverHandleMRCommand(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (gLogCategory_APMediaRemoteCommandReceiver <= 30 && (gLogCategory_APMediaRemoteCommandReceiver != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APMediaRemoteCommandReceiver, "void APMediaRemoteCommandReceiverHandleMRCommand(APMediaRemoteCommandReceiverRef, int64_t, CFDictionaryRef)", 33554462, "[%{ptr}] Handling MR command '%d'\n", a1, a2);
  }

  v6 = *(a1 + 16);

  return APMediaRemoteCommandSinkHandleMRCommand(v6, a2, a3);
}

void mrcr_Finalize(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (gLogCategory_APMediaRemoteCommandReceiver <= 30 && (gLogCategory_APMediaRemoteCommandReceiver != -1 || _LogCategory_Initialize()))
  {
    mrcr_Finalize_cold_1(a1, a2, a3);
  }

  v4 = *(a1 + 32);
  if (v4 != -1)
  {
    notify_cancel(v4);
    *(a1 + 32) = -1;
  }

  v5 = *(a1 + 36);
  if (v5 != -1)
  {
    notify_cancel(v5);
    *(a1 + 36) = -1;
  }

  v6 = *(a1 + 40);
  if (v6 != -1)
  {
    notify_cancel(v6);
    *(a1 + 40) = -1;
  }

  if (*(a1 + 24))
  {
    HTTPServer_Delete();
    *(a1 + 24) = 0;
  }

  v7 = *(a1 + 16);
  if (v7)
  {
    CFRelease(v7);
    *(a1 + 16) = 0;
  }
}

__CFString *jitterBuffer_CopyDebugDescription()
{
  Mutable = CFStringCreateMutable(*MEMORY[0x277CBECE8], 0);
  CFStringAppendFormat(Mutable, 0, @"<APAudioSinkJitterBuffer>");
  return Mutable;
}

uint64_t jitterBuffer_GetInputFormat(uint64_t a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v4 = *(DerivedStorage + 56);
  v5 = *(DerivedStorage + 40);
  *a2 = *(DerivedStorage + 24);
  *(a2 + 16) = v5;
  *(a2 + 32) = v4;
  return 0;
}

uint64_t jitterBuffer_Suspend(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*DerivedStorage)
  {
    v4 = DerivedStorage;
    if (gLogCategory_APAudioSinkJitterBuffer <= 30)
    {
      if (gLogCategory_APAudioSinkJitterBuffer != -1 || (DerivedStorage = _LogCategory_Initialize(), DerivedStorage))
      {
        jitterBuffer_Suspend_cold_1(DerivedStorage, v2, v3);
      }
    }

    result = 0;
    *v4 = 0;
  }

  else
  {
    jitterBuffer_Suspend_cold_2();
    return 4294950503;
  }

  return result;
}

uint64_t SPHubbedDevicesProviderPropertyCreate(CFTypeRef *a1, uint64_t a2)
{
  v15 = *MEMORY[0x277D85DE8];
  cf = 0;
  if (!a1)
  {
    SPHubbedDevicesProviderPropertyCreate_cold_6();
    return 4294960591;
  }

  SPHubbedDevicesProviderGetClassID(a1, a2);
  v3 = CMDerivedObjectCreate();
  if (v3)
  {
    v11 = v3;
    SPHubbedDevicesProviderPropertyCreate_cold_1(v3);
  }

  else
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    if (gLogCategory_SPHubbedDevicesProviderProperty <= 30 && (gLogCategory_SPHubbedDevicesProviderProperty != -1 || _LogCategory_Initialize()))
    {
      SPHubbedDevicesProviderPropertyCreate_cold_2(&cf, v4, v5);
    }

    *(DerivedStorage + 24) = 0;
    v7 = FigSimpleMutexCreate();
    *DerivedStorage = v7;
    if (v7)
    {
      SNPrintF(label, 64, "SPHubbedDevicesProviderProperty.%{ptr}.notification", cf);
      v8 = dispatch_queue_create(label, 0);
      *(DerivedStorage + 8) = v8;
      if (v8)
      {
        *(DerivedStorage + 16) = 0;
        if (gLogCategory_SPHubbedDevicesProviderProperty <= 50 && (gLogCategory_SPHubbedDevicesProviderProperty != -1 || _LogCategory_Initialize()))
        {
          SPHubbedDevicesProviderPropertyCreate_cold_3(&cf, v9, v10);
        }

        v11 = 0;
        *a1 = cf;
        return v11;
      }

      SPHubbedDevicesProviderPropertyCreate_cold_4();
    }

    else
    {
      SPHubbedDevicesProviderPropertyCreate_cold_5();
    }

    v11 = 4294960568;
  }

  if (cf)
  {
    CFRelease(cf);
  }

  return v11;
}

uint64_t hdpp_Invalidate(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (gLogCategory_SPHubbedDevicesProviderProperty <= 50 && (gLogCategory_SPHubbedDevicesProviderProperty != -1 || _LogCategory_Initialize()))
  {
    hdpp_Invalidate_cold_1(a1, v2, v3);
  }

  *(DerivedStorage + 24) = 1;
  return 0;
}

uint64_t hdpp_Finalize(uint64_t a1)
{
  result = CMBaseObjectGetDerivedStorage();
  v5 = result;
  if (gLogCategory_SPHubbedDevicesProviderProperty <= 50)
  {
    if (gLogCategory_SPHubbedDevicesProviderProperty != -1 || (result = _LogCategory_Initialize(), result))
    {
      result = hdpp_Finalize_cold_1(a1, v3, v4);
    }
  }

  if (*(v5 + 24))
  {
    v6 = *(v5 + 16);
    if (v6)
    {
      CFRelease(v6);
      *(v5 + 16) = 0;
    }

    v7 = *(v5 + 8);
    if (v7)
    {
      dispatch_release(v7);
      *(v5 + 8) = 0;
    }

    return FigSimpleMutexDestroy();
  }

  else
  {
    if (gLogCategory_SPHubbedDevicesProviderProperty <= 90)
    {
      if (gLogCategory_SPHubbedDevicesProviderProperty != -1 || (result = _LogCategory_Initialize(), result))
      {
        result = hdpp_Finalize_cold_2(a1);
      }
    }

    __break(1u);
  }

  return result;
}

__CFString *hdpp_CopyDebugDescription(uint64_t a1)
{
  Mutable = CFStringCreateMutable(*MEMORY[0x277CBECE8], 0);
  CFStringAppendFormat(Mutable, 0, @"<SPHubbedDevicesProviderProperty %p>", a1);
  return Mutable;
}

uint64_t hdpp_CopyProperty(uint64_t a1, const void *a2, const __CFAllocator *a3, CFSetRef *a4)
{
  CMBaseObjectGetDerivedStorage();
  if (gLogCategory_SPHubbedDevicesProviderProperty <= 30 && (gLogCategory_SPHubbedDevicesProviderProperty != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_SPHubbedDevicesProviderProperty, "OSStatus hdpp_CopyProperty(CMBaseObjectRef, CFStringRef, CFAllocatorRef, void *)", 33554462, "[%{ptr}] %###s propertyKey: '%@'\n", a1, "OSStatus hdpp_CopyProperty(CMBaseObjectRef, CFStringRef, CFAllocatorRef, void *)", a2);
  }

  if (!a2)
  {
    hdpp_CopyProperty_cold_6();
    return 4294960591;
  }

  if (!a4)
  {
    hdpp_CopyProperty_cold_5();
    return 4294960591;
  }

  FigSimpleMutexLock();
  if (!CFEqual(a2, @"HubbedDevices"))
  {
    if (gLogCategory_SPHubbedDevicesProviderProperty <= 30 && (gLogCategory_SPHubbedDevicesProviderProperty != -1 || _LogCategory_Initialize()))
    {
      hdpp_CopyProperty_cold_4(a2, v8, v9);
    }

    v14 = 4294954512;
    goto LABEL_24;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v12 = *(DerivedStorage + 16);
  if (!v12)
  {
    if (gLogCategory_SPHubbedDevicesProviderProperty <= 30 && (gLogCategory_SPHubbedDevicesProviderProperty != -1 || _LogCategory_Initialize()))
    {
      hdpp_CopyProperty_cold_2(a1, v12, v11);
    }

    Copy = CFSetCreate(a3, 0, 0, MEMORY[0x277CBF158]);
    if (Copy)
    {
      goto LABEL_23;
    }

    hdpp_CopyProperty_cold_3();
LABEL_32:
    v14 = 4294960568;
    goto LABEL_24;
  }

  if (gLogCategory_SPHubbedDevicesProviderProperty <= 30)
  {
    v13 = DerivedStorage;
    if (gLogCategory_SPHubbedDevicesProviderProperty != -1 || (v16 = _LogCategory_Initialize(), v12 = *(v13 + 16), v16))
    {
      LogPrintF(&gLogCategory_SPHubbedDevicesProviderProperty, "OSStatus hdpp_copyHubbedDevices(SPHubbedDevicesProviderRef, CFAllocatorRef, CFSetRef *)", 33554462, "[%{ptr}] %###s copying hubbedDeviceIDs %@\n", a1, "OSStatus hdpp_copyHubbedDevices(SPHubbedDevicesProviderRef, CFAllocatorRef, CFSetRef *)", v12);
      v12 = *(v13 + 16);
    }
  }

  Copy = CFSetCreateCopy(a3, v12);
  if (!Copy)
  {
    hdpp_CopyProperty_cold_1();
    goto LABEL_32;
  }

LABEL_23:
  v14 = 0;
  *a4 = Copy;
LABEL_24:
  FigSimpleMutexUnlock();
  return v14;
}

uint64_t hdpp_SetProperty(uint64_t a1, const void *a2, CFSetRef a3)
{
  CMBaseObjectGetDerivedStorage();
  if (gLogCategory_SPHubbedDevicesProviderProperty <= 30 && (gLogCategory_SPHubbedDevicesProviderProperty != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_SPHubbedDevicesProviderProperty, "OSStatus hdpp_SetProperty(CMBaseObjectRef, CFStringRef, CFTypeRef)", 33554462, "[%{ptr}] %###s propertyKey: '%@'\n", a1, "OSStatus hdpp_SetProperty(CMBaseObjectRef, CFStringRef, CFTypeRef)", a2);
  }

  if (!a2)
  {
    hdpp_SetProperty_cold_4();
    return 4294960591;
  }

  FigSimpleMutexLock();
  if (!CFEqual(a2, @"HubbedDevices"))
  {
    if (gLogCategory_SPHubbedDevicesProviderProperty <= 30 && (gLogCategory_SPHubbedDevicesProviderProperty != -1 || _LogCategory_Initialize()))
    {
      hdpp_SetProperty_cold_3(a2, v6, v7);
    }

    v11 = 4294954512;
    goto LABEL_35;
  }

  values = a3;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!a3)
  {
    goto LABEL_19;
  }

  v9 = CFGetTypeID(a3);
  if (v9 == CFSetGetTypeID())
  {
    v10 = CFRetain(a3);
LABEL_18:
    a3 = v10;
    goto LABEL_19;
  }

  v12 = CFGetTypeID(a3);
  if (v12 == CFArrayGetTypeID())
  {
    Count = CFArrayGetCount(a3);
    v14 = malloc_type_calloc(Count, 8uLL, 0xC0040B8AA526DuLL);
    v21.location = 0;
    v21.length = Count;
    CFArrayGetValues(a3, v21, v14);
    a3 = CFSetCreate(*MEMORY[0x277CBECE8], v14, Count, MEMORY[0x277CBF158]);
    free(v14);
LABEL_19:
    if (!FigCFEqual())
    {
      if (gLogCategory_SPHubbedDevicesProviderProperty <= 50 && (gLogCategory_SPHubbedDevicesProviderProperty != -1 || _LogCategory_Initialize()))
      {
        LogPrintF(&gLogCategory_SPHubbedDevicesProviderProperty, "OSStatus hdpp_setHubbedDevices(SPHubbedDevicesProviderRef, CFTypeRef)", 33554482, "[%{ptr}] HubbedDeviceIDs = %@\n", a1, a3);
      }

      v18 = *(DerivedStorage + 16);
      *(DerivedStorage + 16) = a3;
      if (a3)
      {
        CFRetain(a3);
      }

      if (v18)
      {
        CFRelease(v18);
      }

      if (gLogCategory_SPHubbedDevicesProviderProperty <= 50 && (gLogCategory_SPHubbedDevicesProviderProperty != -1 || _LogCategory_Initialize()))
      {
        hdpp_SetProperty_cold_2(a1, v16, v17);
      }

      CMNotificationCenterGetDefaultLocalCenter();
      FigDispatchAsyncPostNotification();
    }

    if (a3)
    {
      CFRelease(a3);
    }

    v11 = 0;
    goto LABEL_35;
  }

  v15 = CFGetTypeID(a3);
  if (v15 == CFStringGetTypeID())
  {
    v10 = CFSetCreate(*MEMORY[0x277CBECE8], &values, 1, MEMORY[0x277CBF158]);
    goto LABEL_18;
  }

  hdpp_SetProperty_cold_1();
  v11 = 4294960591;
LABEL_35:
  FigSimpleMutexUnlock();
  return v11;
}

uint64_t APAudioEngineBufferedAdapterCreate(uint64_t a1, const __CFDictionary *a2, const void *a3, CFTypeRef *a4)
{
  v32 = *MEMORY[0x277D85DE8];
  v30 = 0;
  value = 0;
  cf = 0;
  if (!a2)
  {
    APAudioEngineBufferedAdapterCreate_cold_22();
    goto LABEL_35;
  }

  if (!a3)
  {
    APAudioEngineBufferedAdapterCreate_cold_21();
    goto LABEL_35;
  }

  if (!a4)
  {
    APAudioEngineBufferedAdapterCreate_cold_20();
    goto LABEL_35;
  }

  if (gLogCategory_APAudioEngineBufferedAdapter <= 30 && (gLogCategory_APAudioEngineBufferedAdapter != -1 || _LogCategory_Initialize()))
  {
    APAudioEngineBufferedAdapterCreate_cold_1();
  }

  FigEndpointStreamAudioEngineGetClassID();
  v8 = CMDerivedObjectCreate();
  v30 = v8;
  if (v8)
  {
    APAudioEngineBufferedAdapterCreate_cold_2(v8);
    goto LABEL_35;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  *(DerivedStorage + 49) = 0;
  *(DerivedStorage + 144) = CFRetain(a3);
  v10 = APSDispatchSectionCreate();
  v30 = v10;
  if (v10)
  {
    APAudioEngineBufferedAdapterCreate_cold_3(v10);
    goto LABEL_35;
  }

  v11 = FigSimpleMutexCreate();
  *(DerivedStorage + 40) = v11;
  if (!v11)
  {
    APAudioEngineBufferedAdapterCreate_cold_19(&v30);
    goto LABEL_35;
  }

  if (!CFDictionaryGetValueIfPresent(a2, @"streamType", &value))
  {
    APAudioEngineBufferedAdapterCreate_cold_18();
    goto LABEL_35;
  }

  v12 = value;
  if (value)
  {
    v12 = CFRetain(value);
  }

  *(DerivedStorage + 8) = v12;
  *DerivedStorage = CFStringCreateF(&v30, "BAEA ['HLA'-%{ptr}]", cf);
  if (v30)
  {
    APAudioEngineBufferedAdapterCreate_cold_4(v30);
    goto LABEL_35;
  }

  SNPrintF(v31, 64, "AirPlayAudioEngineAdapter.%{ptr}.%@.request", cf, *(DerivedStorage + 8));
  v13 = FigDispatchQueueCreateWithPriority();
  *(DerivedStorage + 160) = v13;
  if (!v13)
  {
    APAudioEngineBufferedAdapterCreate_cold_17(&v30);
    goto LABEL_35;
  }

  SNPrintF(v31, 64, "AirPlayAudioEngineAdapter.%{ptr}.%@.response", cf, *(DerivedStorage + 8));
  v14 = FigDispatchQueueCreateWithPriority();
  *(DerivedStorage + 168) = v14;
  if (!v14)
  {
    APAudioEngineBufferedAdapterCreate_cold_16(&v30);
    goto LABEL_35;
  }

  if (!FigCFDictionaryGetInt32IfPresent())
  {
    APAudioEngineBufferedAdapterCreate_cold_15();
    goto LABEL_35;
  }

  *(DerivedStorage + 16) = 0 / 1000.0;
  if (!FigCFDictionaryGetInt32IfPresent())
  {
    APAudioEngineBufferedAdapterCreate_cold_14();
    goto LABEL_35;
  }

  *(DerivedStorage + 20) = 0 / 1000.0;
  if (!FigCFDictionaryGetInt32IfPresent())
  {
    APAudioEngineBufferedAdapterCreate_cold_13();
    goto LABEL_35;
  }

  *(DerivedStorage + 24) = 0 / 1000.0;
  if (!FigCFDictionaryGetInt32IfPresent())
  {
    APAudioEngineBufferedAdapterCreate_cold_12();
    goto LABEL_35;
  }

  *(DerivedStorage + 28) = 0 / 1000.0;
  if (gLogCategory_APAudioEngineBufferedAdapter <= 50 && (gLogCategory_APAudioEngineBufferedAdapter != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APAudioEngineBufferedAdapter, "OSStatus APAudioEngineBufferedAdapterCreate(CFAllocatorRef, CFDictionaryRef, FigEndpointStreamAudioEngineRef, FigEndpointStreamAudioEngineRef *)", 33554482, "%@ AudioEngineBufferedAdapter using audio latency %d ms, audio latency min %d ms, audio latency adjust %d ms, audio latency offset %d ms\n", *DerivedStorage, 0, 0, 0, 0);
  }

  v15 = CFDictionaryGetValue(a2, @"senderNetworkClock");
  if (!v15)
  {
    *(DerivedStorage + 32) = 0;
    goto LABEL_41;
  }

  v16 = CFRetain(v15);
  *(DerivedStorage + 32) = v16;
  if (!v16)
  {
LABEL_41:
    APAudioEngineBufferedAdapterCreate_cold_11();
    goto LABEL_35;
  }

  v17 = *MEMORY[0x277CBECE8];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  *(DerivedStorage + 104) = Mutable;
  if (Mutable)
  {
    v19 = CFDictionaryCreateMutable(v17, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    if (v19)
    {
      v20 = v19;
      FigCFDictionarySetValue();
      SNPrintF(v31, 64, "AirPlayAudioEngineAdapter.%{ptr}.io", cf);
      v21 = FigDispatchQueueCreateWithPriority();
      *(DerivedStorage + 184) = v21;
      if (!v21)
      {
        APAudioEngineBufferedAdapterCreate_cold_8(&v30);
        goto LABEL_34;
      }

      v22 = APSRealTimeDispatcherCreate();
      v30 = v22;
      if (v22)
      {
        APAudioEngineBufferedAdapterCreate_cold_5(v22);
        goto LABEL_34;
      }

      v23 = FigCFWeakReferenceHolderCreateWithReferencedObject();
      *(DerivedStorage + 200) = v23;
      if (!v23)
      {
        APAudioEngineBufferedAdapterCreate_cold_7(&v30);
        goto LABEL_34;
      }

      CMBaseObject = FigEndpointStreamAudioEngineGetCMBaseObject();
      v25 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      if (v25)
      {
        v26 = v25(CMBaseObject, *MEMORY[0x277CD6248], a1, DerivedStorage + 152);
        v30 = v26;
        if (!v26)
        {
          *(DerivedStorage + 48) = 0;
          *a4 = cf;
          cf = 0;
LABEL_34:
          CFRelease(v20);
          goto LABEL_35;
        }
      }

      else
      {
        v26 = 4294954514;
        v30 = -12782;
      }

      APAudioEngineBufferedAdapterCreate_cold_6(v26);
      goto LABEL_34;
    }

    APAudioEngineBufferedAdapterCreate_cold_9();
  }

  else
  {
    APAudioEngineBufferedAdapterCreate_cold_10();
  }

LABEL_35:
  if (cf)
  {
    CFRelease(cf);
  }

  return v30;
}

uint64_t audioEngineBufferedAdapter_Invalidate(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  if (*(DerivedStorage + 48))
  {
    audioEngineBufferedAdapter_Invalidate_cold_1();
  }

  else
  {
    *(DerivedStorage + 48) = 1;
    v2 = *(DerivedStorage + 144);
    if (v2)
    {
      v3 = *(*(CMBaseObjectGetVTable() + 8) + 24);
      if (v3)
      {
        v3(v2);
      }
    }

    audioEngineBufferedAdapter_Suspend_Guts(DerivedStorage);
    *(DerivedStorage + 49) = 0;
    if (gLogCategory_APAudioEngineBufferedAdapter <= 50 && (gLogCategory_APAudioEngineBufferedAdapter != -1 || _LogCategory_Initialize()))
    {
      audioEngineBufferedAdapter_Invalidate_cold_2();
    }
  }

  FigSimpleMutexUnlock();
  return 0;
}

void audioEngineBufferedAdapter_Finalize(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*DerivedStorage)
  {
    v3 = CFRetain(*DerivedStorage);
  }

  else
  {
    v3 = 0;
  }

  audioEngineBufferedAdapter_Invalidate(a1);
  CFRelease((DerivedStorage + 8));
  CFRelease(DerivedStorage);
  CFRelease((DerivedStorage + 32));
  CFRelease((DerivedStorage + 176));
  v4 = *(DerivedStorage + 160);
  if (v4)
  {
    dispatch_release(v4);
    *(DerivedStorage + 160) = 0;
  }

  v5 = *(DerivedStorage + 168);
  if (v5)
  {
    dispatch_release(v5);
    *(DerivedStorage + 168) = 0;
  }

  CFRelease((DerivedStorage + 192));
  v6 = *(DerivedStorage + 184);
  if (v6)
  {
    dispatch_release(v6);
    *(DerivedStorage + 184) = 0;
  }

  FigSimpleMutexDestroy();
  CFRelease((DerivedStorage + 152));
  CFRelease((DerivedStorage + 144));
  CFRelease((DerivedStorage + 104));
  CFRelease((DerivedStorage + 200));
  if (gLogCategory_APAudioEngineBufferedAdapter <= 50 && (gLogCategory_APAudioEngineBufferedAdapter != -1 || _LogCategory_Initialize()))
  {
    audioEngineBufferedAdapter_Finalize_cold_1(v3, v7, v8);
    if (!v3)
    {
      return;
    }
  }

  else if (!v3)
  {
    return;
  }

  CFRelease(v3);
}

__CFString *audioEngineBufferedAdapter_CopyDebugDescription()
{
  Mutable = CFStringCreateMutable(*MEMORY[0x277CBECE8], 0);
  CFStringAppendFormat(Mutable, 0, @"<APAudioEngineBufferedAdapter>");
  return Mutable;
}

uint64_t audioEngineBufferedAdapter_CopyProperty(uint64_t a1, const void *a2, const __CFAllocator *a3, CMTimeValue *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!a2)
  {
    audioEngineBufferedAdapter_CopyProperty_cold_5();
    return 4294951815;
  }

  if (!a4)
  {
    audioEngineBufferedAdapter_CopyProperty_cold_4();
    return 4294951815;
  }

  v8 = DerivedStorage;
  if (gLogCategory_APAudioEngineBufferedAdapter <= 30 && (gLogCategory_APAudioEngineBufferedAdapter != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APAudioEngineBufferedAdapter, "OSStatus audioEngineBufferedAdapter_CopyProperty(CMBaseObjectRef, CFStringRef, CFAllocatorRef, void *)", 33554462, "%@ %###s propertyKey: '%@'\n", *v8, "OSStatus audioEngineBufferedAdapter_CopyProperty(CMBaseObjectRef, CFStringRef, CFAllocatorRef, void *)", a2);
  }

  if (CFEqual(a2, @"audioLatencyMs"))
  {
    SInt32 = FigCFNumberCreateSInt32();
    *a4 = SInt32;
    if (!SInt32)
    {
      audioEngineBufferedAdapter_CopyProperty_cold_1();
      return 4294951816;
    }
  }

  else if (CFEqual(a2, @"outputLatency"))
  {
    CMTimeMake(&time, ((*(v8 + 16) + *(v8 + 28)) * 1000.0), 1000);
    v10 = CMTimeCopyAsDictionary(&time, a3);
    *a4 = v10;
    if (!v10)
    {
      audioEngineBufferedAdapter_CopyProperty_cold_2();
      return 4294951816;
    }
  }

  else
  {
    if (!CFEqual(a2, @"dynamicLatencyOffsetMs"))
    {
      if (!CFEqual(a2, @"currentRTPTime"))
      {
        return 4294954509;
      }

      time.value = 0;
      CMBaseObject = FigEndpointStreamAudioEngineGetCMBaseObject();
      v15 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      if (v15)
      {
        v12 = v15(CMBaseObject, @"currentRTPTime", a3, &time);
        if (!v12)
        {
          *a4 = time.value;
          return v12;
        }
      }

      else
      {
        v12 = 4294954514;
      }

      APSLogErrorAt();
      return v12;
    }

    v11 = FigCFNumberCreateSInt32();
    *a4 = v11;
    if (!v11)
    {
      audioEngineBufferedAdapter_CopyProperty_cold_3();
      return 4294951816;
    }
  }

  return 0;
}

uint64_t audioEngineBufferedAdapter_SetProperty(uint64_t a1, uint64_t a2, const __CFDictionary *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!a2)
  {
    audioEngineBufferedAdapter_SetProperty_cold_3();
    return 4294951815;
  }

  v6 = DerivedStorage;
  if (gLogCategory_APAudioEngineBufferedAdapter <= 30 && (gLogCategory_APAudioEngineBufferedAdapter != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APAudioEngineBufferedAdapter, "OSStatus audioEngineBufferedAdapter_SetProperty(CMBaseObjectRef, CFStringRef, CFTypeRef)", 33554462, "%@ %###s propertyKey: '%@'\n", *v6, "OSStatus audioEngineBufferedAdapter_SetProperty(CMBaseObjectRef, CFStringRef, CFTypeRef)", a2);
  }

  if (FigCFEqual())
  {
    memset(&v36, 0, sizeof(v36));
    CMTimeMakeFromDictionary(&v36, a3);
    if ((v36.flags & 0x1D) == 1)
    {
      v35 = v36;
      v7 = CMBaseObjectGetDerivedStorage();
      v39 = **&MEMORY[0x277CC0898];
      v38 = v39;
      FigSimpleMutexLock();
      if (*(v7 + 48))
      {
        v24 = 4294951809;
      }

      else if (*(v7 + 49))
      {
        if (FigCFDictionaryGetDictionaryValue())
        {
          mach_absolute_time();
          FigCFDictionarySetInt64();
          APSAudioFormatDescriptionGetSampleRate();
          v9 = v8;
          v10 = (*(v7 + 24) * v8);
          CMTimeMake(&v38, (*(v7 + 16) * v8), v8);
          CMTimeMake(&rhs, v10, v9);
          lhs = v38;
          CMTimeAdd(&time, &lhs, &rhs);
          v38 = time;
          rhs = v35;
          CMTimeConvertScale(&time, &rhs, v9, kCMTimeRoundingMethod_RoundHalfAwayFromZero);
          value = time.value;
          v40 = *&time.timescale;
          v12 = *(v7 + 80);
          HostTimeClock = CMClockGetHostTimeClock();
          time.value = value;
          *&time.timescale = v40;
          CMSyncConvertTime(&v39, &time, v12, HostTimeClock);
          rhs = v39;
          lhs = v38;
          CMTimeAdd(&time, &rhs, &lhs);
          v39 = time;
          epoch = time.epoch;
          v15 = *&time.value;
          v16 = *(v7 + 80);
          time.value = value;
          *&time.timescale = v40;
          *&rhs.value = v15;
          rhs.epoch = epoch;
          v17 = CMTimebaseSetRateAndAnchorTime(v16, 1.0, &time, &rhs);
          if (!v17)
          {
            *(v7 + 112) = value;
            *(v7 + 120) = value;
            if (gLogCategory_APAudioEngineBufferedAdapter <= 50 && (gLogCategory_APAudioEngineBufferedAdapter != -1 || _LogCategory_Initialize()))
            {
              v18 = *v7;
              time.value = value;
              *&time.timescale = v40;
              Seconds = CMTimeGetSeconds(&time);
              CMTimebaseGetTime(&time, *(v7 + 80));
              v20 = CMTimeGetSeconds(&time);
              time = v39;
              v21 = CMTimeGetSeconds(&time);
              v22 = CMClockGetHostTimeClock();
              CMClockGetTime(&time, v22);
              v23 = CMTimeGetSeconds(&time);
              LogPrintF(&gLogCategory_APAudioEngineBufferedAdapter, "OSStatus audioEngineBufferedAdapter_SetRateAndAnchorTime(FigEndpointStreamAudioEngineRef, CMTime)", 33554482, "%@ Setting AudioAnchorTime %1.3f (now: %1.3f) -> HostAnchorTime %1.3f (now: %1.3f)...\n", v18, *&Seconds, *&v20, *&v21, *&v23);
            }

            mach_absolute_time();
            FigCFDictionarySetInt64();
            v25 = *(v7 + 144);
            v26 = *(v7 + 200);
            if (v26)
            {
              v27 = CFRetain(v26);
            }

            else
            {
              v27 = 0;
            }

            v28 = *(v7 + 104);
            lhs = v39;
            VTable = CMBaseObjectGetVTable();
            v32 = *(VTable + 16);
            v31 = VTable + 16;
            v33 = *(v32 + 48);
            if (v33)
            {
              time.value = value;
              *&time.timescale = v40;
              rhs = lhs;
              v33(v25, &time, &rhs, audioEngineBufferedAdapter_SetRateAndAnchorTime_Stage1, v27, v28, 1.0);
            }

            else
            {
              audioEngineBufferedAdapter_SetRateAndAnchorTime_Stage1(0.0, v31, -12782, MEMORY[0x277CC0898], MEMORY[0x277CC0898], v30, v27);
            }

            FigSimpleMutexUnlock();
            return 0;
          }

          v24 = v17;
          APSLogErrorAt();
          FigSimpleMutexUnlock();
          if (v24 == -15486)
          {
            if (gLogCategory_APAudioEngineBufferedAdapter <= 90 && (gLogCategory_APAudioEngineBufferedAdapter != -1 || _LogCategory_Initialize()))
            {
              audioEngineBufferedAdapter_SetProperty_cold_2();
            }

            return 0;
          }

LABEL_33:
          APSLogErrorAt();
          return v24;
        }

        v24 = 4294951815;
      }

      else
      {
        v24 = 4294951811;
      }

      APSLogErrorAt();
      FigSimpleMutexUnlock();
      goto LABEL_33;
    }

    audioEngineBufferedAdapter_SetProperty_cold_1();
    return 4294951815;
  }

  return 4294954509;
}

void audioEngineBufferedAdapter_Suspend_Guts(uint64_t a1)
{
  v2 = *(a1 + 136);
  if (v2)
  {
    v3 = *(*(CMBaseObjectGetVTable() + 16) + 16);
    if (v3)
    {
      v3(v2);
    }

    v4 = *(a1 + 136);
    v5 = *(*(CMBaseObjectGetVTable() + 16) + 120);
    if (v5)
    {
      v5(v4, 0, 0);
    }

    v6 = *(a1 + 136);
    if (v6)
    {
      CFRelease(v6);
      *(a1 + 136) = 0;
    }
  }

  v7 = *(a1 + 80);
  if (v7)
  {
    CFRelease(v7);
    *(a1 + 80) = 0;
  }

  v8 = *(a1 + 72);
  if (v8)
  {
    CFRelease(v8);
    *(a1 + 72) = 0;
  }

  v9 = *(a1 + 56);
  if (v9)
  {
    CFRelease(v9);
    *(a1 + 56) = 0;
  }

  v10 = *(a1 + 64);
  if (v10)
  {
    CFRelease(v10);
    *(a1 + 64) = 0;
  }

  *(a1 + 128) = 0;
  v11 = *(a1 + 88);
  if (v11)
  {
    *(a1 + 88) = 0;

    free(v11);
  }
}

uint64_t FigEndpointAudioSourceSetWriteHandler(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(*(CMBaseObjectGetVTable() + 16) + 120);
  if (!v6)
  {
    return 4294954514;
  }

  return v6(a1, a2, a3);
}

void audioEngineBufferedAdapter_SetRateAndAnchorTime_Stage1(double a1, uint64_t a2, int a3, CMTime *a4, CMTime *a5, uint64_t a6, const void *a7)
{
  if (a7)
  {
    v12 = FigCFWeakReferenceHolderCopyReferencedObject();
    if (v12)
    {
      v13 = v12;
      DerivedStorage = CMBaseObjectGetDerivedStorage();
      if (a3)
      {
        if (gLogCategory_APAudioEngineBufferedAdapter <= 90 && (gLogCategory_APAudioEngineBufferedAdapter != -1 || _LogCategory_Initialize()))
        {
          audioEngineBufferedAdapter_SetRateAndAnchorTime_Stage1_cold_1(DerivedStorage, a3);
        }
      }

      else if (gLogCategory_APAudioEngineBufferedAdapter <= 50 && (gLogCategory_APAudioEngineBufferedAdapter != -1 || _LogCategory_Initialize()))
      {
        v15 = *DerivedStorage;
        time = *a4;
        Seconds = CMTimeGetSeconds(&time);
        CMTimebaseGetTime(&time, *(DerivedStorage + 80));
        v17 = CMTimeGetSeconds(&time);
        time = *a5;
        v18 = CMTimeGetSeconds(&time);
        HostTimeClock = CMClockGetHostTimeClock();
        CMClockGetTime(&time, HostTimeClock);
        v20 = CMTimeGetSeconds(&time);
        LogPrintF(&gLogCategory_APAudioEngineBufferedAdapter, "void audioEngineBufferedAdapter_SetRateAndAnchorTime_Stage1(FigEndpointStreamAudioEngineRef, OSStatus, Float64, CMTime, CMTime, CFDictionaryRef, void *)", 33554482, "%@ New AudioAnchorTime %1.3f (now: %1.3f) -> HostAnchorTime %1.3f (now: %1.3f) at Rate %1.1f\n", v15, *&Seconds, *&v17, *&v18, *&v20, *&a1);
      }

      CFRelease(v13);
    }

    else
    {
      audioEngineBufferedAdapter_SetRateAndAnchorTime_Stage1_cold_2();
    }

    CFRelease(a7);
  }

  else
  {
    audioEngineBufferedAdapter_SetRateAndAnchorTime_Stage1_cold_3();
  }
}

void audioEngineBufferedAdapter_Resume(const void *a1, const void *a2, uint64_t (*a3)(const void *, uint64_t, uint64_t), uint64_t a4)
{
  CMBaseObjectGetDerivedStorage();
  if (a2)
  {
    if (gLogCategory_APAudioEngineBufferedAdapter <= 50 && (gLogCategory_APAudioEngineBufferedAdapter != -1 || _LogCategory_Initialize()))
    {
      audioEngineBufferedAdapter_Resume_cold_1();
    }

    v7 = malloc_type_malloc(0x30uLL, 0x10E004091CD38EAuLL);
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
      *(v8 + 1) = CFRetain(a2);
      *(v8 + 2) = a3;
      *(v8 + 4) = a4;
      *(v8 + 10) = 0;
      v10 = APSDispatchSectionEnter();
      if (!v10)
      {
        return;
      }

      v11 = v10;
      audioEngineBufferedAdapter_Resume_cold_2(v10, v8, v8 + 1);
    }

    else
    {
      audioEngineBufferedAdapter_Resume_cold_3();
      v11 = 4294951816;
    }
  }

  else
  {
    audioEngineBufferedAdapter_Resume_cold_4();
    v11 = 4294951815;
  }

  if (a3)
  {

    a3(a1, v11, a4);
  }
}

void audioEngineBufferedAdapter_Suspend(const void *a1, const void *a2, uint64_t (*a3)(const void *, uint64_t, uint64_t), uint64_t a4)
{
  CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APAudioEngineBufferedAdapter <= 50 && (gLogCategory_APAudioEngineBufferedAdapter != -1 || _LogCategory_Initialize()))
  {
    audioEngineBufferedAdapter_Suspend_cold_1();
  }

  v7 = malloc_type_malloc(0x30uLL, 0x10E004091CD38EAuLL);
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

    *(v8 + 1) = v10;
    *(v8 + 3) = a3;
    *(v8 + 4) = a4;
    *(v8 + 10) = 0;
    v11 = APSDispatchSectionEnter();
    if (!v11)
    {
      return;
    }

    v12 = v11;
    audioEngineBufferedAdapter_Suspend_cold_2(v11, v8, v8 + 1);
  }

  else
  {
    audioEngineBufferedAdapter_Suspend_cold_3();
    v12 = 4294951816;
  }

  if (a3)
  {

    a3(a1, v12, a4);
  }
}

void audioEngineBufferedAdapter_SetEndpointStream(const void *a1, const void *a2, uint64_t (*a3)(const void *, uint64_t, uint64_t), uint64_t a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APAudioEngineBufferedAdapter <= 50 && (gLogCategory_APAudioEngineBufferedAdapter != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APAudioEngineBufferedAdapter, "void audioEngineBufferedAdapter_SetEndpointStream(FigEndpointStreamAudioEngineRef, FigEndpointStreamRef, FigEndpointStreamAudioEngineSetEndpointStreamCallback, void *)", 33554482, "%@ Setting endpoint stream [%{ptr}]...", *DerivedStorage, a2);
  }

  v8 = malloc_type_malloc(0x28uLL, 0x10A0040DE786E1EuLL);
  if (v8)
  {
    v9 = v8;
    if (a1)
    {
      v10 = CFRetain(a1);
    }

    else
    {
      v10 = 0;
    }

    *v9 = v10;
    if (a2)
    {
      v11 = CFRetain(a2);
    }

    else
    {
      v11 = 0;
    }

    *(v9 + 1) = v11;
    *(v9 + 2) = a3;
    *(v9 + 3) = a4;
    *(v9 + 8) = 0;
    v12 = APSDispatchSectionEnter();
    if (!v12)
    {
      return;
    }

    v13 = v12;
    audioEngineBufferedAdapter_SetEndpointStream_cold_1(v12, v9, v9 + 1);
  }

  else
  {
    audioEngineBufferedAdapter_SetEndpointStream_cold_2();
    v13 = 4294951816;
  }

  if (a3)
  {

    a3(a1, v13, a4);
  }
}

void audioEngineBufferedAdapter_Resume_Stage1(uint64_t a1)
{
  v2 = *a1;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v4 = *(a1 + 8);
  v40 = 0;
  v41 = 0;
  memset(&layout, 0, sizeof(layout));
  v38 = **&MEMORY[0x277CC0898];
  FigSimpleMutexLock();
  if (*(DerivedStorage + 48))
  {
    audioEngineBufferedAdapter_Resume_Stage1_cold_1(v42);
LABEL_74:
    v6 = 0;
    goto LABEL_75;
  }

  if (*(DerivedStorage + 49))
  {
    audioEngineBufferedAdapter_Resume_Stage1_cold_2(v42);
    goto LABEL_74;
  }

  if (gLogCategory_APAudioEngineBufferedAdapter <= 50 && (gLogCategory_APAudioEngineBufferedAdapter != -1 || _LogCategory_Initialize()))
  {
    audioEngineBufferedAdapter_Resume_Stage1_cold_3();
  }

  if (!FigCFDictionaryGetDictionaryValue())
  {
    audioEngineBufferedAdapter_Resume_Stage1_cold_27();
    goto LABEL_74;
  }

  Value = CFDictionaryGetValue(v4, *MEMORY[0x277CD62A0]);
  v6 = Value;
  if (!Value)
  {
    audioEngineBufferedAdapter_Resume_Stage1_cold_26();
LABEL_75:
    v34 = 0;
    goto LABEL_44;
  }

  if (CFDataGetLength(Value) <= 0x27)
  {
    audioEngineBufferedAdapter_Resume_Stage1_cold_25();
    goto LABEL_74;
  }

  BytePtr = CFDataGetBytePtr(v6);
  v8 = *MEMORY[0x277CBECE8];
  v9 = *BytePtr;
  v10 = *(BytePtr + 1);
  v37 = *(BytePtr + 4);
  immediateSourceTime[0] = v9;
  immediateSourceTime[1] = v10;
  v11 = APSAudioFormatDescriptionCreateWithASBD();
  v42[0] = v11;
  if (v11)
  {
    audioEngineBufferedAdapter_Resume_Stage1_cold_4(v11);
    goto LABEL_56;
  }

  *&immediateSourceTime[0] = 0;
  if (gLogCategory_APAudioEngineBufferedAdapter <= 50 && (gLogCategory_APAudioEngineBufferedAdapter != -1 || _LogCategory_Initialize()))
  {
    audioEngineBufferedAdapter_Resume_Stage1_cold_5((DerivedStorage + 56), immediateSourceTime);
  }

  layout.mChannelLayoutTag = APSAudioFormatDescriptionGetChannelLayoutTag();
  v12 = CMAudioFormatDescriptionCreate(v8, BytePtr, 0x20uLL, &layout, 0, 0, 0, (DerivedStorage + 64));
  v42[0] = v12;
  if (v12)
  {
    audioEngineBufferedAdapter_Resume_Stage1_cold_6(v12);
    goto LABEL_56;
  }

  if (!*(DerivedStorage + 72))
  {
    CMBaseObject = APSNetworkClockGetCMBaseObject();
    v14 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v14)
    {
      v15 = v14(CMBaseObject, *MEMORY[0x277CEA258], v8, DerivedStorage + 72);
      v42[0] = v15;
      if (!v15)
      {
        goto LABEL_17;
      }
    }

    else
    {
      v15 = 4294954514;
      v42[0] = -12782;
    }

    audioEngineBufferedAdapter_Resume_Stage1_cold_24(v15);
    goto LABEL_56;
  }

LABEL_17:
  v16 = CFGetAllocator(v2);
  v17 = CMTimebaseCreateWithSourceClock(v16, *(DerivedStorage + 72), (DerivedStorage + 80));
  v42[0] = v17;
  if (v17)
  {
    audioEngineBufferedAdapter_Resume_Stage1_cold_7(v17);
    goto LABEL_56;
  }

  FigCFDictionaryGetCMTimeIfPresent();
  if ((v38.flags & 0x1D) != 1)
  {
    audioEngineBufferedAdapter_Resume_Stage1_cold_8();
    goto LABEL_74;
  }

  v18 = *(DerivedStorage + 80);
  HostTimeClock = CMClockGetHostTimeClock();
  v20 = *(DerivedStorage + 72);
  time = v38;
  CMSyncConvertTime(immediateSourceTime, &time, HostTimeClock, v20);
  time = **&MEMORY[0x277CC08F0];
  v21 = CMTimebaseSetRateAndAnchorTime(v18, 1.0, &time, immediateSourceTime);
  v42[0] = v21;
  if (v21)
  {
    audioEngineBufferedAdapter_Resume_Stage1_cold_9(v21);
    goto LABEL_56;
  }

  *(DerivedStorage + 112) = 0;
  *(DerivedStorage + 120) = 0;
  *(DerivedStorage + 128) = 0;
  v22 = CFDictionaryGetValue(v4, *MEMORY[0x277CD6280]);
  if (!v22)
  {
    audioEngineBufferedAdapter_Resume_Stage1_cold_23(v42);
    goto LABEL_74;
  }

  v23 = v22;
  if (gLogCategory_APAudioEngineBufferedAdapter <= 50 && (gLogCategory_APAudioEngineBufferedAdapter != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APAudioEngineBufferedAdapter, "void audioEngineBufferedAdapter_Resume_Stage1(void *)", 33554482, "%@ Setting audio source: %{ptr}\n", *DerivedStorage, v23);
  }

  v24 = APAudioSourceCompressionCreate(v8, v23, BytePtr, (DerivedStorage + 136));
  v42[0] = v24;
  if (v24)
  {
    audioEngineBufferedAdapter_Resume_Stage1_cold_10(v24);
    goto LABEL_56;
  }

  if (FigGetCFPreferenceNumberWithDefault() <= 0)
  {
    audioEngineBufferedAdapter_Resume_Stage1_cold_22(v42);
    goto LABEL_74;
  }

  v25 = APSSetFBOPropertyInt64();
  v42[0] = v25;
  if (v25)
  {
    audioEngineBufferedAdapter_Resume_Stage1_cold_11(v25);
    goto LABEL_56;
  }

  v26 = FigEndpointAudioSourceSetWriteHandler(*(DerivedStorage + 136), audioEngineBufferedAdapter_CompressionSourceWriteDataCallback, DerivedStorage);
  v42[0] = v26;
  if (v26)
  {
    audioEngineBufferedAdapter_Resume_Stage1_cold_12(v26);
    goto LABEL_56;
  }

  *&immediateSourceTime[0] = 0;
  if (gLogCategory_APAudioEngineBufferedAdapter <= 50 && (gLogCategory_APAudioEngineBufferedAdapter != -1 || _LogCategory_Initialize()))
  {
    audioEngineBufferedAdapter_Resume_Stage1_cold_13((DerivedStorage + 56), immediateSourceTime);
  }

  v27 = FigEndpointAudioSourceResume_0(*(DerivedStorage + 136));
  v42[0] = v27;
  if (v27)
  {
    audioEngineBufferedAdapter_Resume_Stage1_cold_14(v27);
    goto LABEL_56;
  }

  v28 = FigEndpointAudioSourceCopyProperty(*(DerivedStorage + 136), @"MaximumOutputPacketSize", v8, &v40);
  v42[0] = v28;
  if (v28)
  {
    audioEngineBufferedAdapter_Resume_Stage1_cold_15(v28);
    goto LABEL_56;
  }

  v29 = CFGetInt64Ranged();
  *(DerivedStorage + 96) = v29;
  if (v42[0])
  {
    audioEngineBufferedAdapter_Resume_Stage1_cold_16(v42[0]);
    goto LABEL_56;
  }

  v30 = malloc_type_malloc(v29, 0x9221D882uLL);
  *(DerivedStorage + 88) = v30;
  if (v30)
  {
    if (gLogCategory_APAudioEngineBufferedAdapter <= 50 && (gLogCategory_APAudioEngineBufferedAdapter != -1 || _LogCategory_Initialize()))
    {
      audioEngineBufferedAdapter_Resume_Stage1_cold_17(DerivedStorage, DerivedStorage + 96, v31);
    }

    v32 = APSAudioFormatDescriptionCopyFigEndpointStreamAudioFormatDescription();
    v42[0] = v32;
    if (!v32)
    {
      Mutable = CFArrayCreateMutable(v8, 0, MEMORY[0x277CBF128]);
      v34 = Mutable;
      if (Mutable)
      {
        CFArrayAppendValue(Mutable, v41);
        v6 = CFDictionaryCreateMutable(v8, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
        if (v6)
        {
          FigCFDictionaryGetValue();
          FigCFDictionarySetValue();
          FigCFDictionarySetValue();
          FigCFDictionarySetValue();
          mach_absolute_time();
          FigCFDictionarySetInt64();
          FigEndpointStreamAudioEngineResumeWithCompletionCallback(*(DerivedStorage + 144), v6, a1);
          goto LABEL_43;
        }

        audioEngineBufferedAdapter_Resume_Stage1_cold_19();
      }

      else
      {
        audioEngineBufferedAdapter_Resume_Stage1_cold_20();
        v6 = 0;
      }

LABEL_44:
      audioEngineBufferedAdapter_Suspend_Guts(DerivedStorage);
      *(a1 + 40) = v42[0];
      audioEngineBufferedAdapter_Resume_Complete(a1);
      goto LABEL_45;
    }

    audioEngineBufferedAdapter_Resume_Stage1_cold_18(v32);
LABEL_56:
    v34 = 0;
    v6 = 0;
LABEL_43:
    if (!v42[0])
    {
      goto LABEL_45;
    }

    goto LABEL_44;
  }

  audioEngineBufferedAdapter_Resume_Stage1_cold_21(v42, immediateSourceTime);
  v34 = 0;
  v6 = 0;
  if (LODWORD(immediateSourceTime[0]))
  {
    goto LABEL_44;
  }

LABEL_45:
  FigSimpleMutexUnlock();
  if (v41)
  {
    CFRelease(v41);
  }

  if (v34)
  {
    CFRelease(v34);
  }

  if (v6)
  {
    CFRelease(v6);
  }

  if (v40)
  {
    CFRelease(v40);
  }
}

uint64_t FigEndpointAudioSourceResume_0(uint64_t a1)
{
  v2 = *(*(CMBaseObjectGetVTable() + 16) + 8);
  if (!v2)
  {
    return 4294954514;
  }

  return v2(a1);
}

uint64_t FigEndpointAudioSourceCopyProperty(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  CMBaseObject = FigEndpointAudioSourceGetCMBaseObject();
  v8 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v8)
  {
    return 4294954514;
  }

  return v8(CMBaseObject, a2, a3, a4);
}

void FigEndpointStreamAudioEngineResumeWithCompletionCallback(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  VTable = CMBaseObjectGetVTable();
  v8 = *(VTable + 16);
  v7 = VTable + 16;
  v9 = *(v8 + 8);
  if (v9)
  {

    v9(a1, a2, audioEngineBufferedAdapter_Resume_Stage2, a3);
  }

  else
  {

    audioEngineBufferedAdapter_Resume_Stage2(v7, -12782, a3);
  }
}

void audioEngineBufferedAdapter_Resume_Stage2(uint64_t a1, int a2, _DWORD *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APAudioEngineBufferedAdapter <= 50 && (gLogCategory_APAudioEngineBufferedAdapter != -1 || _LogCategory_Initialize()))
  {
    audioEngineBufferedAdapter_Resume_Stage2_cold_1();
  }

  a3[10] = a2;
  v6 = *(DerivedStorage + 168);

  dispatch_async_f(v6, a3, audioEngineBufferedAdapter_Resume_Stage3);
}

void audioEngineBufferedAdapter_Resume_Complete(CFTypeRef *a1)
{
  v2 = *a1;
  CMBaseObjectGetDerivedStorage();
  v3 = a1[2];
  if (v3)
  {
    v3(v2, *(a1 + 10), a1[4]);
  }

  APSDispatchSectionLeave();
  if (*a1)
  {
    CFRelease(*a1);
  }

  v4 = a1[1];
  if (v4)
  {
    CFRelease(v4);
  }

  free(a1);
}

void audioEngineBufferedAdapter_SendData(const void *a1)
{
  sampleBufferOut = 0;
  blockBufferOut = 0;
  v32[0] = 0;
  v32[1] = 0;
  memset(&sampleTimingArray, 0, sizeof(sampleTimingArray));
  dataLength = 0;
  v30 = 0;
  if (a1)
  {
    v2 = FigCFWeakReferenceHolderCopyReferencedObject();
    if (v2)
    {
      DerivedStorage = CMBaseObjectGetDerivedStorage();
      FigSimpleMutexLock();
      if (*(DerivedStorage + 48))
      {
        audioEngineBufferedAdapter_SendData_cold_1();
      }

      else if (*(DerivedStorage + 49))
      {
        APSAudioFormatDescriptionGetSampleRate();
        v5 = v4;
        v6 = *MEMORY[0x277CBECE8];
        v7 = *MEMORY[0x277CD62B0];
        while (1)
        {
          v8 = *(DerivedStorage + 152);
          v9 = *(*(CMBaseObjectGetVTable() + 16) + 16);
          if (v9)
          {
            if (v9(v8))
            {
              break;
            }
          }

          v10 = *(DerivedStorage + 136);
          v11 = *(*(CMBaseObjectGetVTable() + 16) + 104);
          if (!v11 || !v11(v10, 0))
          {
            goto LABEL_30;
          }

          v12 = *(DerivedStorage + 136);
          v13 = *(DerivedStorage + 88);
          v14 = *(DerivedStorage + 96);
          v15 = *(*(CMBaseObjectGetVTable() + 16) + 112);
          if (!v15)
          {
LABEL_29:
            APSLogErrorAt();
            goto LABEL_30;
          }

          v16 = v15(v12, v13, v14, v32, 1, &dataLength, &v30, 0, 0);
          if (v16 == -16774)
          {
            if (gLogCategory_APAudioEngineBufferedAdapter <= 30 && (gLogCategory_APAudioEngineBufferedAdapter != -1 || _LogCategory_Initialize()))
            {
              audioEngineBufferedAdapter_SendData_cold_8();
            }

            goto LABEL_30;
          }

          if (v16)
          {
            goto LABEL_29;
          }

          v17 = dataLength;
          if (!dataLength)
          {
            if (gLogCategory_APAudioEngineBufferedAdapter <= 30 && (gLogCategory_APAudioEngineBufferedAdapter != -1 || _LogCategory_Initialize()))
            {
              audioEngineBufferedAdapter_SendData_cold_7();
            }

            goto LABEL_30;
          }

          DefaultAirPlayMallocZoneCFAllocator = APSAllocatorGetDefaultAirPlayMallocZoneCFAllocator();
          v19 = CMBlockBufferCreateWithMemoryBlock(v6, 0, v17, DefaultAirPlayMallocZoneCFAllocator, 0, 0, dataLength, 1u, &blockBufferOut);
          if (v19)
          {
            audioEngineBufferedAdapter_SendData_cold_3(v19);
            goto LABEL_30;
          }

          v20 = CMBlockBufferReplaceDataBytes(*(DerivedStorage + 88), blockBufferOut, 0, dataLength);
          if (v20)
          {
            audioEngineBufferedAdapter_SendData_cold_4(v20);
            goto LABEL_30;
          }

          v21 = v30;
          v22 = v21 * APSAudioFormatDescriptionGetFramesPerPacket();
          CMTimeMake(&v28, v22, v5);
          sampleTimingArray.duration = v28;
          CMTimeMake(&v28, *(DerivedStorage + 120), v5);
          sampleTimingArray.presentationTimeStamp = v28;
          sampleTimingArray.decodeTimeStamp = **&MEMORY[0x277CC0898];
          *(DerivedStorage + 120) += v22;
          v23 = CMSampleBufferCreateReady(v6, blockBufferOut, *(DerivedStorage + 64), 1, 1, &sampleTimingArray, 1, &dataLength, &sampleBufferOut);
          if (v23)
          {
            audioEngineBufferedAdapter_SendData_cold_5(v23);
            goto LABEL_30;
          }

          if (!*(DerivedStorage + 128))
          {
            CMSetAttachment(sampleBufferOut, v7, *(DerivedStorage + 64), 1u);
            *(DerivedStorage + 128) = 1;
          }

          v24 = *(DerivedStorage + 152);
          v25 = sampleBufferOut;
          v26 = *(*(CMBaseObjectGetVTable() + 16) + 8);
          if (!v26)
          {
            v27 = 4294954514;
LABEL_48:
            audioEngineBufferedAdapter_SendData_cold_6(v27);
            goto LABEL_30;
          }

          v27 = v26(v24, v25);
          if (v27)
          {
            goto LABEL_48;
          }

          if (sampleBufferOut)
          {
            CFRelease(sampleBufferOut);
            sampleBufferOut = 0;
          }

          if (blockBufferOut)
          {
            CFRelease(blockBufferOut);
            blockBufferOut = 0;
          }
        }

        if (gLogCategory_APAudioEngineBufferedAdapter <= 30 && (gLogCategory_APAudioEngineBufferedAdapter != -1 || _LogCategory_Initialize()))
        {
          audioEngineBufferedAdapter_SendData_cold_2();
        }
      }

      else
      {
        audioEngineBufferedAdapter_SendData_cold_9();
      }

LABEL_30:
      FigSimpleMutexUnlock();
      if (sampleBufferOut)
      {
        CFRelease(sampleBufferOut);
      }
    }

    else
    {
      audioEngineBufferedAdapter_SendData_cold_10();
    }
  }

  else
  {
    audioEngineBufferedAdapter_SendData_cold_11();
    v2 = 0;
  }

  if (blockBufferOut)
  {
    CFRelease(blockBufferOut);
  }

  if (v2)
  {
    CFRelease(v2);
  }

  if (a1)
  {
    CFRelease(a1);
  }
}

void audioEngineBufferedAdapter_Resume_Stage3(uint64_t *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  if (*(a1 + 10))
  {
    audioEngineBufferedAdapter_Suspend_Guts(DerivedStorage);
  }

  else
  {
    *(DerivedStorage + 49) = 1;
    if (gLogCategory_APAudioEngineBufferedAdapter <= 50 && (gLogCategory_APAudioEngineBufferedAdapter != -1 || _LogCategory_Initialize()))
    {
      audioEngineBufferedAdapter_Resume_Stage3_cold_1();
    }
  }

  FigSimpleMutexUnlock();

  audioEngineBufferedAdapter_Resume_Complete(a1);
}

void audioEngineBufferedAdapter_Suspend_Stage1(void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  if (*(DerivedStorage + 48) || !*(DerivedStorage + 49))
  {
    audioEngineBufferedAdapter_Suspend_Stage1_cold_2();
  }

  else
  {
    if (gLogCategory_APAudioEngineBufferedAdapter <= 50 && (gLogCategory_APAudioEngineBufferedAdapter != -1 || _LogCategory_Initialize()))
    {
      audioEngineBufferedAdapter_Suspend_Stage1_cold_1();
    }

    v3 = *(DerivedStorage + 144);
    v4 = a1[1];
    VTable = CMBaseObjectGetVTable();
    v7 = *(VTable + 16);
    v6 = VTable + 16;
    v8 = *(v7 + 16);
    if (v8)
    {
      v8(v3, v4, audioEngineBufferedAdapter_Suspend_Stage2, a1);
    }

    else
    {
      audioEngineBufferedAdapter_Suspend_Stage2(v6, -12782, a1);
    }

    audioEngineBufferedAdapter_Suspend_Guts(DerivedStorage);

    FigSimpleMutexUnlock();
  }
}

void audioEngineBufferedAdapter_Suspend_Stage2(uint64_t a1, int a2, _DWORD *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APAudioEngineBufferedAdapter <= 50 && (gLogCategory_APAudioEngineBufferedAdapter != -1 || _LogCategory_Initialize()))
  {
    audioEngineBufferedAdapter_Suspend_Stage2_cold_1();
  }

  a3[10] = a2;
  v6 = *(DerivedStorage + 168);

  dispatch_async_f(v6, a3, audioEngineBufferedAdapter_Suspend_Stage3);
}

void audioEngineBufferedAdapter_Suspend_Complete(CFTypeRef *a1)
{
  v2 = *a1;
  CMBaseObjectGetDerivedStorage();
  v3 = a1[3];
  if (v3)
  {
    v3(v2, *(a1 + 10), a1[4]);
  }

  APSDispatchSectionLeave();
  v4 = a1[1];
  if (v4)
  {
    CFRelease(v4);
  }

  if (*a1)
  {
    CFRelease(*a1);
  }

  free(a1);
}

void audioEngineBufferedAdapter_Suspend_Stage3(CFTypeRef *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  if (!*(a1 + 10))
  {
    *(DerivedStorage + 49) = 0;
    if (gLogCategory_APAudioEngineBufferedAdapter <= 50 && (gLogCategory_APAudioEngineBufferedAdapter != -1 || _LogCategory_Initialize()))
    {
      audioEngineBufferedAdapter_Suspend_Stage3_cold_1();
    }
  }

  FigSimpleMutexUnlock();

  audioEngineBufferedAdapter_Suspend_Complete(a1);
}

void audioEngineBufferedAdapter_SetEndpointStream_Stage1(void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v3 = a1[1];
  FigSimpleMutexLock();
  if (*(DerivedStorage + 48) || !*(DerivedStorage + 49))
  {
    goto LABEL_16;
  }

  if (gLogCategory_APAudioEngineBufferedAdapter <= 50 && (gLogCategory_APAudioEngineBufferedAdapter != -1 || _LogCategory_Initialize()))
  {
    audioEngineBufferedAdapter_SetEndpointStream_Stage1_cold_1();
    if (!v3)
    {
      goto LABEL_11;
    }
  }

  else if (!v3)
  {
    goto LABEL_11;
  }

  if (!FigCFDictionaryGetDictionaryValue())
  {
LABEL_16:
    audioEngineBufferedAdapter_SetEndpointStream_Stage1_cold_2();
    return;
  }

  mach_absolute_time();
  FigCFDictionarySetInt64();
  v4 = *(DerivedStorage + 144);
  VTable = CMBaseObjectGetVTable();
  v7 = *(VTable + 16);
  v6 = VTable + 16;
  v8 = *(v7 + 24);
  if (v8)
  {
    v8(v4, v3, audioEngineBufferedAdapter_SetEndpointStream_Stage2, a1);
  }

  else
  {
    audioEngineBufferedAdapter_SetEndpointStream_Stage2(v6, -12782, a1);
  }

LABEL_11:

  FigSimpleMutexUnlock();
}

void audioEngineBufferedAdapter_SetEndpointStream_Stage2(uint64_t a1, int a2, _DWORD *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APAudioEngineBufferedAdapter <= 50 && (gLogCategory_APAudioEngineBufferedAdapter != -1 || _LogCategory_Initialize()))
  {
    audioEngineBufferedAdapter_SetEndpointStream_Stage2_cold_1();
  }

  a3[8] = a2;
  v6 = *(DerivedStorage + 168);

  dispatch_async_f(v6, a3, audioEngineBufferedAdapter_SetEndpointStream_Stage3);
}

void audioEngineBufferedAdapter_SetEndpointStream_Complete(CFTypeRef *a1)
{
  v2 = *a1;
  CMBaseObjectGetDerivedStorage();
  v3 = a1[2];
  if (v3)
  {
    v3(v2, *(a1 + 8), a1[3]);
  }

  APSDispatchSectionLeave();
  if (*a1)
  {
    CFRelease(*a1);
  }

  v4 = a1[1];
  if (v4)
  {
    CFRelease(v4);
  }

  free(a1);
}

void audioEngineBufferedAdapter_SetEndpointStream_Stage3(uint64_t *a1)
{
  CMBaseObjectGetDerivedStorage();
  if (!*(a1 + 8) && gLogCategory_APAudioEngineBufferedAdapter <= 50 && (gLogCategory_APAudioEngineBufferedAdapter != -1 || _LogCategory_Initialize()))
  {
    audioEngineBufferedAdapter_SetEndpointStream_Stage3_cold_1();
  }

  audioEngineBufferedAdapter_SetEndpointStream_Complete(a1);
}

uint64_t audioEngineBufferedAdapter_FlushData(uint64_t a1)
{
  if (a1)
  {
    v2 = FigCFWeakReferenceHolderCopyReferencedObject();
    if (v2)
    {
      v3 = v2;
      DerivedStorage = CMBaseObjectGetDerivedStorage();
      FigSimpleMutexLock();
      if (*(DerivedStorage + 48))
      {
        audioEngineBufferedAdapter_FlushData_cold_1();
        goto LABEL_25;
      }

      if (!*(DerivedStorage + 49))
      {
        audioEngineBufferedAdapter_FlushData_cold_7();
        goto LABEL_25;
      }

      v5 = *(DerivedStorage + 136);
      v6 = *(*(CMBaseObjectGetVTable() + 16) + 24);
      if (v6)
      {
        v7 = v6(v5);
        if (!v7)
        {
          if (*(*(CMBaseObjectGetVTable() + 16) + 72))
          {
            v8 = *(DerivedStorage + 152);
            v9 = *(*(CMBaseObjectGetVTable() + 16) + 72);
            if (v9)
            {
              v10 = v9(v8);
              if (!v10)
              {
                goto LABEL_10;
              }
            }

            else
            {
              v10 = 4294954514;
            }

            audioEngineBufferedAdapter_FlushData_cold_2(v10);
            goto LABEL_25;
          }

LABEL_10:
          v11 = *MEMORY[0x277CBECE8];
          Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 2, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
          if (Mutable)
          {
            v13 = Mutable;
            time = *a1;
            v14 = CMTimeCopyAsDictionary(&time, v11);
            if (v14)
            {
              CFDictionarySetValue(v13, *MEMORY[0x277CD61E0], v14);
              FigCFDictionarySetBoolean();
              v15 = *(DerivedStorage + 144);
              v16 = *(*(CMBaseObjectGetVTable() + 16) + 32);
              if (v16)
              {
                v16(v15, v13);
              }

              if (*(a1 + 24))
              {
                APSAudioFormatDescriptionGetSampleRate();
                v20 = *a1;
                CMTimeConvertScale(&time, &v20, v17, kCMTimeRoundingMethod_RoundHalfAwayFromZero);
                *(DerivedStorage + 120) = time.value;
              }

              if (gLogCategory_APAudioEngineBufferedAdapter <= 50 && (gLogCategory_APAudioEngineBufferedAdapter != -1 || _LogCategory_Initialize()))
              {
                audioEngineBufferedAdapter_FlushData_cold_3();
              }
            }

            else
            {
              audioEngineBufferedAdapter_FlushData_cold_4();
            }

            FigSimpleMutexUnlock();
            CFRelease(v13);
            if (v14)
            {
              CFRelease(v14);
            }

            goto LABEL_26;
          }

          audioEngineBufferedAdapter_FlushData_cold_5();
LABEL_25:
          FigSimpleMutexUnlock();
LABEL_26:
          CFRelease(v3);
          goto LABEL_27;
        }
      }

      else
      {
        v7 = 4294954514;
      }

      audioEngineBufferedAdapter_FlushData_cold_6(v7);
      goto LABEL_25;
    }

    audioEngineBufferedAdapter_FlushData_cold_8();
  }

  else
  {
    audioEngineBufferedAdapter_FlushData_cold_9();
  }

LABEL_27:
  v18 = *(a1 + 32);
  if (v18)
  {
    CFRelease(v18);
  }

  return APSRealTimeAllocatorDeallocate();
}

uint64_t _AirPlayRSA_Init(uint64_t *a1)
{
  RSAPublicKey = SecKeyCreateRSAPublicKey();
  *a1 = RSAPublicKey;
  if (RSAPublicKey)
  {
    return 0;
  }

  _AirPlayRSA_Init_cold_1();
  return 4294960596;
}

uint64_t AirPlayRSA_PublicEncrypt(const uint8_t *a1, size_t a2, uint8_t *a3, size_t a4, size_t *a5)
{
  __len = 0;
  key = 0;
  v10 = _AirPlayRSA_Init(&key);
  if (v10)
  {
    v15 = v10;
    AirPlayRSA_PublicEncrypt_cold_1(v10);
  }

  else if (a4 <= 0xFF)
  {
    AirPlayRSA_PublicEncrypt_cold_3();
    v15 = 4294960553;
  }

  else
  {
    __len = a4;
    v11 = key;
    v12 = SecKeyEncrypt(key, 2u, a1, a2, a3, &__len);
    if (v12)
    {
      v15 = v12;
      AirPlayRSA_PublicEncrypt_cold_2(v12);
      if (!v11)
      {
        return v15;
      }

      goto LABEL_8;
    }

    v13 = __len;
    if (__len <= 0xFF)
    {
      v14 = 256 - __len;
      memmove(&a3[256 - __len], a3, __len);
      bzero(a3, v14);
      __len = 256;
      v13 = 256;
    }

    v15 = 0;
    *a5 = v13;
  }

  v11 = key;
  if (key)
  {
LABEL_8:
    CFRelease(v11);
  }

  return v15;
}

uint64_t AirPlayRSA_PublicDecrypt(const uint8_t *a1, size_t a2, void *a3, unint64_t a4, unint64_t *a5)
{
  v21 = *MEMORY[0x277D85DE8];
  plainTextLen = 0;
  key = 0;
  v10 = _AirPlayRSA_Init(&key);
  if (v10)
  {
    v16 = v10;
    APSLogErrorAt();
    v11 = key;
  }

  else
  {
    plainTextLen = 256;
    v11 = key;
    v12 = SecKeyDecrypt(key, 0, a1, a2, plainText, &plainTextLen);
    if (v12)
    {
      v16 = v12;
      AirPlayRSA_PublicDecrypt_cold_1(v12);
    }

    else
    {
      v13 = plainTextLen;
      if (plainTextLen <= 0xFF)
      {
        v14 = 256 - plainTextLen;
        memmove(&plainText[256 - plainTextLen], plainText, plainTextLen);
        bzero(plainText, v14);
        plainTextLen = 256;
        v13 = 256;
      }

      v15 = _AirPlayRSA_PKCS1v1pt5_Decode(plainText, v13, 2048, 1, a3, a4, a5);
      v16 = v15;
      if (v15)
      {
        AirPlayRSA_PublicDecrypt_cold_2(v15);
      }
    }
  }

  if (v11)
  {
    CFRelease(v11);
  }

  return v16;
}

uint64_t _AirPlayRSA_PKCS1v1pt5_Decode(_BYTE *a1, uint64_t a2, uint64_t a3, int a4, void *__dst, unint64_t a6, unint64_t *a7)
{
  if ((a3 + 7) < 0x58)
  {
    return 4294960546;
  }

  if (a2 != (a3 + 7) >> 3)
  {
    return 4294960553;
  }

  if (*a1)
  {
    return 4294960579;
  }

  if (a1[1] != a4)
  {
    return 4294960540;
  }

  v9 = &a1[a2];
  v10 = a1 + 2;
  if (a4 == 1)
  {
    v11 = a1 + 2;
    do
    {
      if (*v11 != 255)
      {
        break;
      }

      ++v11;
    }

    while (v11 < v9);
    result = 4294960546;
    if (v11 >= v9 || v11 - v10 < 8)
    {
      return result;
    }

    if (*v11)
    {
      return 4294960554;
    }

    goto LABEL_27;
  }

  if (a4 != 2)
  {
    return 4294960561;
  }

  v11 = a1 + 2;
  do
  {
    if (!*v11)
    {
      break;
    }

    ++v11;
  }

  while (v11 < v9);
  result = 4294960546;
  if (v11 < v9 && v11 - v10 >= 8)
  {
    if (*v11)
    {
      return 4294960579;
    }

LABEL_27:
    v12 = v9 - (v11 + 1);
    if (__dst)
    {
      if (v12 > a6)
      {
        _AirPlayRSA_PKCS1v1pt5_Decode_cold_1();
        return 4294960553;
      }

      memcpy(__dst, v11 + 1, v9 - (v11 + 1));
    }

    result = 0;
    if (a7)
    {
      *a7 = v12;
    }
  }

  return result;
}

uint64_t policyMonitorEndpointStateChanged(int a1, void *a2, CFTypeRef cf1)
{
  result = CFEqual(cf1, *MEMORY[0x277CC0CF8]);
  if (result)
  {

    return [a2 endpointAuthenticationSucceeded];
  }

  return result;
}

void sub_222165AE4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void policyMonitorEndpointDeactivated(int a1, int a2, int a3, int a4, dispatch_semaphore_t dsema)
{
  dispatch_semaphore_signal(dsema);

  dispatch_release(dsema);
}

Class __getCRVehiclePolicyMonitorClass_block_invoke(uint64_t a1)
{
  v6 = *MEMORY[0x277D85DE8];
  v3[0] = 0;
  if (!CarKitLibraryCore_frameworkLibrary_1)
  {
    v3[1] = MEMORY[0x277D85DD0];
    v3[2] = 3221225472;
    v3[3] = __CarKitLibraryCore_block_invoke_1;
    v3[4] = &__block_descriptor_40_e5_v8__0l;
    v3[5] = v3;
    v4 = xmmword_2784A0818;
    v5 = 0;
    CarKitLibraryCore_frameworkLibrary_1 = _sl_dlopen();
  }

  if (!CarKitLibraryCore_frameworkLibrary_1)
  {
    __getCRVehiclePolicyMonitorClass_block_invoke_cold_2(v3);
  }

  if (v3[0])
  {
    free(v3[0]);
  }

  result = objc_getClass("CRVehiclePolicyMonitor");
  *(*(*(a1 + 32) + 8) + 40) = result;
  if (!*(*(*(a1 + 32) + 8) + 40))
  {
    __getCRVehiclePolicyMonitorClass_block_invoke_cold_1();
  }

  getCRVehiclePolicyMonitorClass_softClass = *(*(*(a1 + 32) + 8) + 40);
  return result;
}

uint64_t __CarKitLibraryCore_block_invoke_1(uint64_t a1)
{
  result = _sl_dlopen();
  CarKitLibraryCore_frameworkLibrary_1 = result;
  return result;
}

uint64_t APEndpointCreateWithTransportDevice(uint64_t a1, const void *a2, const void *a3, uint64_t a4, const __CFDictionary *a5, CFTypeRef *a6)
{
  cf = 0;
  if (a2)
  {
    v11 = APEndpointDescriptionAirPlayCreateWithTransportDevice(a1, a2, 0, &cf);
    if (v11)
    {
      v13 = v11;
      APEndpointCreateWithTransportDevice_cold_1(v11);
    }

    else
    {
      v12 = APEndpointCreateWithEndpointDescription(a1, cf, a3, a4, a5, a6);
      v13 = v12;
      if (v12)
      {
        APEndpointCreateWithTransportDevice_cold_2(v12);
      }
    }

    if (cf)
    {
      CFRelease(cf);
    }
  }

  else
  {
    APEndpointCreateWithTransportDevice_cold_3();
    return 4294950576;
  }

  return v13;
}

__CFString *endpoint_CopyDebugDescription(uint64_t a1)
{
  v2 = *MEMORY[0x277CBECE8];
  Mutable = CFStringCreateMutable(*MEMORY[0x277CBECE8], 0);
  cf = 0;
  CFStringAppendFormat(Mutable, 0, @"<APEndpoint %p>", a1);
  CMBaseObject = FigEndpointGetCMBaseObject();
  v5 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v5)
  {
    v6 = v5(CMBaseObject, @"EndpointShowInfo", v2, &cf);
    v7 = cf;
    if (!v6)
    {
      __s = 0;
      ASPrintF(&__s, "%@", cf);
      v8 = __s;
      v9 = strlen(__s);
      if (v9 && __s[v9 - 1] == 10)
      {
        __s[v9 - 1] = 0;
        v8 = __s;
      }

      CFStringAppendFormat(Mutable, 0, @"%s", v8);
      free(__s);
      v7 = cf;
    }

    if (v7)
    {
      CFRelease(v7);
    }
  }

  return Mutable;
}

uint64_t endpoint_SetProperty(const void *a1, const void *a2, const void *a3)
{
  CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APEndpoint <= 30 && (gLogCategory_APEndpoint != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APEndpoint, "OSStatus endpoint_SetProperty(CMBaseObjectRef, CFStringRef, CFTypeRef)", 33554462, "[%{ptr}] %###s propertyKey: '%@', propertyValue: '%@'\n", a1, "OSStatus endpoint_SetProperty(CMBaseObjectRef, CFStringRef, CFTypeRef)", a2, a3);
  }

  if (!a2)
  {
    endpoint_SetProperty_cold_1();
    return 4294950576;
  }

  FigSimpleMutexLock();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 120))
  {
    v12 = 4294950573;
    goto LABEL_56;
  }

  v7 = DerivedStorage;
  if (CFEqual(a2, *MEMORY[0x277CC15C0]))
  {
    CFGetDouble();
    APSVolumeConvertDBToSliderValue();
LABEL_9:
    v9 = a1;
    v10 = 1;
LABEL_12:
    IsMuted = endpointdelegate_setVolumeSliderInternal(v9, 1, 1, v10, v8);
    goto LABEL_13;
  }

  if (CFEqual(a2, @"HALVolumeDB"))
  {
    CFGetDouble();
    APSVolumeConvertDBToSliderValue();
    v9 = a1;
    v10 = 0;
    goto LABEL_12;
  }

  if (CFEqual(a2, *MEMORY[0x277CC15A8]))
  {
    CFGetDouble();
    v8 = v14;
    goto LABEL_9;
  }

  if (CFEqual(a2, *MEMORY[0x277CC13D0]))
  {
    if (a3)
    {
      v15 = CFGetTypeID(a3);
      if (v15 == CFBooleanGetTypeID())
      {
        if (gLogCategory_APEndpoint <= 50 && (gLogCategory_APEndpoint != -1 || _LogCategory_Initialize()))
        {
          LogPrintF(&gLogCategory_APEndpoint, "OSStatus endpoint_setPropertyInternal(FigEndpointRef, CFStringRef, CFTypeRef)", 33554482, "[%{ptr}] <AirPlayVolume> Mute property %@ set to %@.\n", a1, a2, a3);
        }

        v20 = *MEMORY[0x277CBED28];
        v21 = *MEMORY[0x277CBED28] == a3;
        if (*(v7 + 51) || endpoint_isThirdPartyTVFamily(a1))
        {
          v22 = a1;
          v23 = v21;
          v24 = 1;
LABEL_38:
          v25 = 0;
LABEL_46:
          IsMuted = endpointdelegate_setIsMuted(v22, v23, v24, v25);
          goto LABEL_13;
        }

        if (gLogCategory_APEndpoint <= 50 && (gLogCategory_APEndpoint != -1 || _LogCategory_Initialize()))
        {
          v26 = 102;
          if (v20 == a3)
          {
            v26 = 116;
          }

          LogPrintF(&gLogCategory_APEndpoint, "OSStatus endpoint_setPropertyInternal(FigEndpointRef, CFStringRef, CFTypeRef)", 33554482, "[%{ptr}] Mute received (CMVC disabled). Dropping Mute/Unmute: %c\n", a1, v26);
        }

        goto LABEL_53;
      }
    }

    v12 = 4294950576;
    goto LABEL_56;
  }

  if (CFEqual(a2, @"IsHALMuted"))
  {
    v16 = *MEMORY[0x277CBED28] == a3;
    IsHALMuteForUser = APEndpointIsHALMuteForUser();
    if (gLogCategory_APEndpoint <= 50 && (gLogCategory_APEndpoint != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_APEndpoint, "OSStatus endpoint_setPropertyInternal(FigEndpointRef, CFStringRef, CFTypeRef)", 33554482, "[%{ptr}] <AirPlayVolume> Mute property %@ set to %@.\n", a1, a2, a3);
    }

    v22 = a1;
    v23 = v16;
    v24 = IsHALMuteForUser;
    v25 = 1;
    goto LABEL_46;
  }

  v18 = *MEMORY[0x277CC13D8];
  if (CFEqual(a2, *MEMORY[0x277CC13D8]) || CFEqual(a2, *MEMORY[0x277CC13E0]))
  {
    if (a3)
    {
      v19 = CFGetTypeID(a3);
      if (v19 == CFBooleanGetTypeID())
      {
        if (gLogCategory_APEndpoint <= 50 && (gLogCategory_APEndpoint != -1 || _LogCategory_Initialize()))
        {
          LogPrintF(&gLogCategory_APEndpoint, "OSStatus endpoint_setPropertyInternal(FigEndpointRef, CFStringRef, CFTypeRef)", 33554482, "[%{ptr}] <AirPlayVolume> Mute property %@ set to %@.\n", a1, a2, a3);
        }

        v27 = *MEMORY[0x277CBED28] == a3;
        v24 = CFEqual(a2, v18);
        v22 = a1;
        v23 = v27;
        goto LABEL_38;
      }
    }

    v12 = 4294950576;
    goto LABEL_56;
  }

  if (CFEqual(a2, *MEMORY[0x277CC1488]) || CFEqual(a2, *MEMORY[0x277CC1480]))
  {
    IsMuted = endpoint_setAuthorizationString(a1, a3);
    goto LABEL_13;
  }

  if (!CFEqual(a2, @"PermanentSpeakerGroupingInfo"))
  {
    if (CFEqual(a2, @"ScreenUsageMode"))
    {
      v29 = *(v7 + 472);
      *(v7 + 472) = a3;
      if (a3)
      {
        CFRetain(a3);
      }

      if (v29)
      {
        CFRelease(v29);
      }

      goto LABEL_53;
    }

    if (CFEqual(a2, @"StartSilentAudio"))
    {
      if (a3)
      {
        v30 = CFGetTypeID(a3);
        if (v30 == CFBooleanGetTypeID())
        {
          *(v7 + 481) = CFBooleanGetValue(a3);
          goto LABEL_53;
        }
      }

      v12 = 4294950576;
    }

    else
    {
      if (!CFEqual(a2, *MEMORY[0x277CC1278]))
      {
        if (CFEqual(a2, @"EndpointStatus"))
        {
          v32 = CFGetInt64();
          *(v7 + 148) = v32;
          if (gLogCategory_APEndpoint <= 50)
          {
            if (gLogCategory_APEndpoint == -1)
            {
              if (!_LogCategory_Initialize())
              {
                goto LABEL_53;
              }

              v32 = *(v7 + 148);
            }

            LogPrintF(&gLogCategory_APEndpoint, "OSStatus endpoint_setPropertyInternal(FigEndpointRef, CFStringRef, CFTypeRef)", 33554482, "[%{ptr}] setting endpointStatus: %d\n", a1, v32);
          }

LABEL_53:
          FigSimpleMutexUnlock();
          return 0;
        }

        v12 = 4294954512;
LABEL_57:
        FigSimpleMutexUnlock();
        goto LABEL_58;
      }

      if (a3)
      {
        v31 = CFGetTypeID(a3);
        if (v31 == CFBooleanGetTypeID())
        {
          *(v7 + 480) = CFBooleanGetValue(a3);
          goto LABEL_53;
        }
      }

      v12 = 4294950576;
    }

LABEL_56:
    APSLogErrorAt();
    goto LABEL_57;
  }

  APEndpointDescriptionGetCMBaseObject();
  IsMuted = CMBaseObjectSetProperty(v28, @"PermanentSpeakerGroupingInfo", a3);
LABEL_13:
  v12 = IsMuted;
  FigSimpleMutexUnlock();
  if (v12)
  {
LABEL_58:
    APSLogErrorAt();
  }

  return v12;
}

uint64_t __introspector_getCollectionOfActiveEndpoints_block_invoke(uint64_t a1)
{
  result = IsAppleInternalBuild();
  if (result)
  {
    _MergedGlobals_24 = malloc_type_calloc(1uLL, 0x18uLL, 0xF00401F3BCE50uLL);
    *_MergedGlobals_24 = dispatch_queue_create("CollectionOfActiveEndpoints", 0);
    Mutable = CFSetCreateMutable(*MEMORY[0x277CBECE8], 0, 0);
    v3 = _MergedGlobals_24;
    *(_MergedGlobals_24 + 8) = Mutable;
    *(v3 + 16) = "ActiveEndpoints";

    return APSIntrospectorAddCommand();
  }

  return result;
}

uint64_t endpoint_copyPropertyForFirstDisplay(const void *a1, uint64_t a2, uint64_t a3)
{
  CMBaseObjectGetDerivedStorage();
  cf = 0;
  v6 = CFGetAllocator(a1);
  APEndpointDescriptionGetCMBaseObject();
  v8 = v7;
  v9 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v9)
  {
    v11 = 4294954514;
LABEL_10:
    APSLogErrorAt();
    goto LABEL_11;
  }

  v10 = v9(v8, @"DisplayDescriptionArray", v6, &cf);
  v11 = v10;
  if (v10 == -71754)
  {
    goto LABEL_11;
  }

  if (v10)
  {
    goto LABEL_10;
  }

  if (!cf || (v12 = CFGetTypeID(cf), v12 != CFArrayGetTypeID()))
  {
    endpoint_copyPropertyForFirstDisplay_cold_3();
LABEL_16:
    v11 = 4294950576;
    goto LABEL_11;
  }

  if (CFArrayGetCount(cf) <= 0)
  {
    endpoint_copyPropertyForFirstDisplay_cold_2();
    goto LABEL_16;
  }

  ValueAtIndex = CFArrayGetValueAtIndex(cf, 0);
  v14 = CFGetAllocator(a1);
  v15 = APEndpointDisplayDescriptionCopyProperty(ValueAtIndex, a2, v14, a3);
  v11 = v15;
  if (v15)
  {
    endpoint_copyPropertyForFirstDisplay_cold_1(v15);
  }

LABEL_11:
  if (cf)
  {
    CFRelease(cf);
  }

  return v11;
}

void endpoint_getBooleanFromExternalPlaybackCapabilitiesIfPresent(uint64_t a1, uint64_t a2, uint64_t a3)
{
  CMBaseObjectGetDerivedStorage();
  cf = 0;
  APEndpointDescriptionGetCMBaseObject();
  v4 = v3;
  v5 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v5)
  {
    v5(v4, @"ExternalPlaybackCapabilities", *MEMORY[0x277CBECE8], &cf);
  }

  FigCFDictionaryGetBooleanIfPresent();
  if (cf)
  {
    CFRelease(cf);
  }
}

BOOL endpoint_isInLocalCluster(uint64_t a1)
{
  cf = 0;
  v1 = *(CMBaseObjectGetDerivedStorage() + 88);
  if (v1)
  {
    return v1 == *MEMORY[0x277CBED28];
  }

  APEndpointDescriptionGetCMBaseObject();
  v4 = v3;
  v5 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v5)
  {
    v5(v4, @"ClusterUUID", *MEMORY[0x277CBECE8], &cf);
  }

  v2 = APSHasSamePersistentGroupUUID();
  if (cf)
  {
    CFRelease(cf);
  }

  return v2;
}

uint64_t endpoint_copyStreams(uint64_t a1, const __CFAllocator *a2, CFMutableArrayRef *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  Mutable = CFArrayCreateMutable(a2, 0, MEMORY[0x277CBF128]);
  if (Mutable)
  {
    v7 = Mutable;
    v8 = *(DerivedStorage + 160);
    if (v8)
    {
      CFDictionaryApplyFunction(v8, endpoint_copyStreamsDictionaryEntry, v7);
    }

    result = 0;
    *a3 = v7;
  }

  else
  {
    endpoint_copyStreams_cold_1();
    return 4294950575;
  }

  return result;
}