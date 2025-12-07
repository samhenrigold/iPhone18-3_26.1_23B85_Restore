void __audioEngineCarPlay_setMessageRingCapacity_block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 40);
  if (*(v3 + 120))
  {
    __audioEngineCarPlay_setMessageRingCapacity_block_invoke_cold_1();
  }

  else
  {
    v4 = *(a1 + 48);

    CFNumberGetValue(v4, kCFNumberSInt64Type, (v3 + 64));
  }
}

uint64_t audioEngineCarPlay_RegisterStream(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v14 = 0;
  v15[0] = &v14;
  v15[1] = 0x2000000000;
  v16 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a2)
  {
    if (*(a6 + 16))
    {
      v11 = 4294895225;
      audioEngineCarPlay_RegisterStream_cold_1(v15);
    }

    else
    {
      v10 = *(DerivedStorage + 16);
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 0x40000000;
      block[2] = __audioEngineCarPlay_RegisterStream_block_invoke;
      block[3] = &unk_27849C930;
      block[4] = &v14;
      block[5] = DerivedStorage;
      block[6] = a3;
      block[7] = a2;
      block[8] = a6;
      dispatch_sync(v10, block);
      if (*(v15[0] + 24))
      {
        APSLogErrorAt();
        v11 = *(v15[0] + 24);
      }

      else
      {
        v11 = 0;
      }
    }
  }

  else
  {
    v11 = 4294895225;
    audioEngineCarPlay_RegisterStream_cold_2(v15);
  }

  _Block_object_dispose(&v14, 8);
  return v11;
}

uint64_t audioEngineCarPlay_DeregisterStream(uint64_t a1, uint64_t a2)
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2000000000;
  v11 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v4 = *(DerivedStorage + 16);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 0x40000000;
  block[2] = __audioEngineCarPlay_DeregisterStream_block_invoke;
  block[3] = &unk_27849C958;
  block[4] = &v8;
  block[5] = DerivedStorage;
  block[6] = a2;
  dispatch_sync(v4, block);
  v5 = *(v9 + 6);
  _Block_object_dispose(&v8, 8);
  return v5;
}

uint64_t audioEngineCarPlay_Resume(const void *a1)
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2000000000;
  v10 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  CFRetain(a1);
  v3 = *(DerivedStorage + 16);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 0x40000000;
  block[2] = __audioEngineCarPlay_Resume_block_invoke;
  block[3] = &unk_27849C9A0;
  block[4] = &v7;
  block[5] = DerivedStorage;
  block[6] = a1;
  dispatch_async(v3, block);
  v4 = *(v8 + 6);
  _Block_object_dispose(&v7, 8);
  return v4;
}

uint64_t audioEngineCarPlay_Suspend(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v3 = *(DerivedStorage + 16);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 0x40000000;
  v5[2] = __audioEngineCarPlay_Suspend_block_invoke;
  v5[3] = &__block_descriptor_tmp_28_1;
  v5[4] = DerivedStorage;
  v5[5] = a1;
  dispatch_sync(v3, v5);
  return 0;
}

uint64_t audioEngineCarPlay_Flush(const void *a1, int a2, __int128 *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a2)
  {
    audioEngineCarPlay_Flush_cold_1();
    return 4294895225;
  }

  else
  {
    v7 = DerivedStorage;
    CFRetain(a1);
    v8 = *(v7 + 128);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 0x40000000;
    block[2] = __audioEngineCarPlay_Flush_block_invoke;
    block[3] = &__block_descriptor_tmp_30_0;
    v11 = *a3;
    v12 = *(a3 + 2);
    block[4] = v7;
    block[5] = a1;
    dispatch_async(v8, block);
    return 0;
  }
}

uint64_t audioEngineCarPlay_CopyMessageAtSequenceNumber(uint64_t a1, __int16 a2, uint64_t a3)
{
  v11 = 0;
  v12[0] = &v11;
  v12[1] = 0x2000000000;
  v13 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a3)
  {
    v6 = *(DerivedStorage + 16);
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 0x40000000;
    v9[2] = __audioEngineCarPlay_CopyMessageAtSequenceNumber_block_invoke;
    v9[3] = &unk_27849CA28;
    v9[4] = &v11;
    v9[5] = DerivedStorage;
    v10 = a2;
    v9[6] = a3;
    dispatch_sync(v6, v9);
    v7 = *(v12[0] + 24);
  }

  else
  {
    audioEngineCarPlay_CopyMessageAtSequenceNumber_cold_1(v12);
    v7 = 4294895225;
  }

  _Block_object_dispose(&v11, 8);
  return v7;
}

uint64_t APAudioSourceConduitCreate(uint64_t a1, __int128 *a2, CFTypeRef *a3, double a4)
{
  if (!a3)
  {
    APAudioSourceConduitCreate_cold_7();
    return 4294950525;
  }

  FigEndpointAudioSourceGetClassID();
  v6 = CMDerivedObjectCreate();
  if (v6)
  {
    v14 = v6;
    APAudioSourceConduitCreate_cold_1(v6);
    return v14;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  *(DerivedStorage + 1) = 1;
  v8 = *(a2 + 4);
  v9 = *a2;
  *(DerivedStorage + 24) = a2[1];
  *(DerivedStorage + 40) = v8;
  *(DerivedStorage + 8) = v9;
  v10 = MirroredRingBufferInit();
  if (v10)
  {
    v14 = v10;
    APAudioSourceConduitCreate_cold_2(v10);
    return v14;
  }

  v11 = APSRingBufferFlushControllerInit();
  if (v11)
  {
    v14 = v11;
    APAudioSourceConduitCreate_cold_3(v11);
    return v14;
  }

  v12 = dispatch_semaphore_create(1);
  *(DerivedStorage + 120) = v12;
  if (!v12)
  {
    APAudioSourceConduitCreate_cold_6();
    return 4294950526;
  }

  *(DerivedStorage + 192) = 0;
  *(DerivedStorage + 200) = 0;
  v13 = FigSimpleMutexCreate();
  *(DerivedStorage + 208) = v13;
  if (!v13)
  {
    APAudioSourceConduitCreate_cold_5();
    return 4294950526;
  }

  if (gLogCategory_APAudioSourceConduit <= 30 && (gLogCategory_APAudioSourceConduit != -1 || _LogCategory_Initialize()))
  {
    APAudioSourceConduitCreate_cold_4();
  }

  v14 = 0;
  *a3 = 0;
  return v14;
}

__CFString *conduitsource_CopyDebugDescription()
{
  Mutable = CFStringCreateMutable(*MEMORY[0x277CBECE8], 0);
  CFStringAppendFormat(Mutable, 0, @"<APAudioSourceConduit>");
  return Mutable;
}

uint64_t conduitsource_Resume(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v4 = DerivedStorage;
  if (gLogCategory_APAudioSourceConduit <= 30)
  {
    if (gLogCategory_APAudioSourceConduit != -1 || (DerivedStorage = _LogCategory_Initialize(), DerivedStorage))
    {
      conduitsource_Resume_cold_1(DerivedStorage, v2, v3);
    }
  }

  *(v4 + 1) = 0;
  *(v4 + 88) = 0;
  *(v4 + 96) = 0;
  *(v4 + 192) = 0;
  *(v4 + 200) = 0;
  return 0;
}

uint64_t conduitsource_Suspend(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v4 = DerivedStorage;
  if (gLogCategory_APAudioSourceConduit <= 30)
  {
    if (gLogCategory_APAudioSourceConduit != -1 || (DerivedStorage = _LogCategory_Initialize(), DerivedStorage))
    {
      conduitsource_Suspend_cold_1(DerivedStorage, v2, v3);
    }
  }

  *(v4 + 1) = 1;
  return 0;
}

uint64_t conduitsource_Flush(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APAudioSourceConduit <= 30)
  {
    if (gLogCategory_APAudioSourceConduit != -1 || (DerivedStorage = _LogCategory_Initialize(), DerivedStorage))
    {
      conduitsource_Flush_cold_1(DerivedStorage, v2, v3);
    }
  }

  v4 = APSRingBufferFlushControllerFlush();
  v5 = v4;
  if (v4)
  {
    conduitsource_Flush_cold_2(v4);
  }

  return v5;
}

BOOL conduitsource_CanProduceBytes(uint64_t a1, unint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a2 <= 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = a2;
  }

  __dmb(0xBu);
  return v4 <= (*(DerivedStorage + 76) - *(DerivedStorage + 72));
}

uint64_t conduitsource_GetRingBuffer(uint64_t a1, void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a2)
  {
    *a2 = *(DerivedStorage + 88) + (*(DerivedStorage + 72) / *(DerivedStorage + 32));
  }

  return DerivedStorage + 48;
}

uint64_t conduitsource_FillBuffer(uint64_t a1, void *a2, size_t a3, size_t *a4, void *a5, void *a6, uint64_t a7)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a7)
  {
    v14 = DerivedStorage;
    v15 = *(DerivedStorage + 72);
    v16 = *(DerivedStorage + 76) - v15;
    if (v16)
    {
      if (v16 < a3)
      {
        a3 = *(DerivedStorage + 76) - v15;
      }

      memcpy(a2, (*(DerivedStorage + 48) + (*(DerivedStorage + 68) & v15)), a3);
      *a4 = a3;
      v17 = *(v14 + 32);
      v18 = a3 / v17;
      *a5 = v18;
      v19 = *(v14 + 72);
      if (a6)
      {
        *a6 = *(v14 + 88) + v19 / v17;
      }

      result = 0;
      *(v14 + 72) = v19 + a3;
      *(v14 + 192) += v18;
    }

    else
    {
      conduitsource_FillBuffer_cold_1();
      return 4294950522;
    }
  }

  else
  {
    conduitsource_FillBuffer_cold_2();
    return 4294950525;
  }

  return result;
}

BOOL conduitsource_CanAcceptBytes(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  __dmb(0xBu);
  return DerivedStorage[18] - DerivedStorage[19] + DerivedStorage[16] != 0;
}

uint64_t conduitsource_WriteBytes(uint64_t a1, const void *a2, size_t a3, uint64_t a4)
{
  if (a2)
  {
    v4 = conduitsource_WriteDataInternal(a1, a2, a3, a4);
    v5 = v4;
    if (v4)
    {
      conduitsource_WriteBytes_cold_1(v4);
    }
  }

  else
  {
    conduitsource_WriteBytes_cold_2();
    return 4294950525;
  }

  return v5;
}

BOOL conduitsource_IsAcquiredBuffer(uint64_t a1, unint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!a2)
  {
    conduitsource_IsAcquiredBuffer_cold_1();
    return 0;
  }

  if (*(DerivedStorage + 48) > a2)
  {
    return 0;
  }

  return *(DerivedStorage + 56) > a2;
}

uint64_t conduitsource_GetAudioFormat(uint64_t a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v6 = DerivedStorage;
  if (gLogCategory_APAudioSourceConduit <= 30)
  {
    if (gLogCategory_APAudioSourceConduit != -1 || (DerivedStorage = _LogCategory_Initialize(), DerivedStorage))
    {
      conduitsource_GetAudioFormat_cold_1(DerivedStorage, v4, v5);
    }
  }

  v7 = *(v6 + 8);
  v8 = *(v6 + 24);
  *(a2 + 32) = *(v6 + 40);
  *a2 = v7;
  *(a2 + 16) = v8;
  return 0;
}

BOOL conduitsource_CanProducePackets(uint64_t a1, unint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a2 <= 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = a2;
  }

  v5 = v4 * *(DerivedStorage + 28) * *(DerivedStorage + 32);
  v6 = CMBaseObjectGetDerivedStorage();
  if (v5 <= 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = v5;
  }

  __dmb(0xBu);
  return v7 <= (*(v6 + 76) - *(v6 + 72));
}

uint64_t conduitsource_FillComplexBuffer(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (*(CMBaseObjectGetDerivedStorage() + 16) == 1819304813)
  {
    if (a9)
    {
      CMBaseObjectGetDerivedStorage();
      APSLogErrorAt();
      v9 = 4294950525;
      APSLogErrorAt();
    }

    else
    {
      conduitsource_FillComplexBuffer_cold_2();
      return 4294950525;
    }
  }

  else
  {
    conduitsource_FillComplexBuffer_cold_1();
    return 4294950524;
  }

  return v9;
}

uint64_t conduitsource_SetWriteHandler(uint64_t a1, uint64_t a2, uint64_t a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 1))
  {
    v6 = DerivedStorage;
    FigSimpleMutexLock();
    *(v6 + 104) = a2;
    *(v6 + 112) = a3;
    FigSimpleMutexUnlock();
    return 0;
  }

  else
  {
    conduitsource_SetWriteHandler_cold_1();
    return 4294950524;
  }
}

uint64_t conduitsource_PrepareForFlush(uint64_t a1)
{
  CMBaseObjectGetDerivedStorage();
  v1 = APSRingBufferFlushControllerPrepareForFlush();
  v2 = v1;
  if (v1)
  {
    conduitsource_PrepareForFlush_cold_1(v1);
  }

  return v2;
}

uint64_t conduitsource_WriteDataInternal(uint64_t a1, const void *a2, size_t a3, uint64_t a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 1))
  {
    conduitsource_WriteDataInternal_cold_1();
    return 4294950524;
  }

  v8 = DerivedStorage;
  v9 = *(DerivedStorage + 200);
  *(DerivedStorage + 88) = a4 - v9;
  if (a2)
  {
    v11 = *(DerivedStorage + 72);
    v10 = *(DerivedStorage + 76);
    if (*(DerivedStorage + 64) - v10 + v11 < a3)
    {
      a3 = *(DerivedStorage + 64) - v10 + v11;
    }

    if (a3 >= 0xF4240)
    {
      conduitsource_WriteDataInternal_cold_2();
      return 4294960586;
    }

    memcpy((*(DerivedStorage + 48) + (*(DerivedStorage + 68) & v10)), a2, a3);
    __dmb(0xBu);
    v9 = *(v8 + 200);
  }

  *(v8 + 76) += a3;
  *(v8 + 200) = v9 + a3 / *(v8 + 32);
  if (*(v8 + 104))
  {
    result = FigSimpleMutexTryLock();
    if (!result)
    {
      return result;
    }

    (*(v8 + 104))(a3 / *(v8 + 32), a4, *(v8 + 112));
    FigSimpleMutexUnlock();
  }

  return 0;
}

uint64_t APAudioEngineRealTimeCreate(const __CFAllocator *a1, const void *a2, const __CFDictionary *a3, CFTypeRef *a4)
{
  v55 = *MEMORY[0x277D85DE8];
  v53 = 0;
  cf = 0;
  v52 = 0;
  v50 = 0;
  memset(v49, 0, sizeof(v49));
  value = 0;
  if (!a4)
  {
    APAudioEngineRealTimeCreate_cold_39();
    goto LABEL_134;
  }

  if (!a2)
  {
    APAudioEngineRealTimeCreate_cold_38();
    goto LABEL_134;
  }

  v5 = a3;
  if (!a3)
  {
    APAudioEngineRealTimeCreate_cold_37();
    goto LABEL_92;
  }

  if (gLogCategory_APAudioEngineRealTime <= 30 && (gLogCategory_APAudioEngineRealTime != -1 || _LogCategory_Initialize()))
  {
    APAudioEngineRealTimeCreate_cold_1();
  }

  FigEndpointStreamAudioEngineGetClassID();
  v8 = CMDerivedObjectCreate();
  v53 = v8;
  if (v8)
  {
    APAudioEngineRealTimeCreate_cold_2(v8);
    goto LABEL_134;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  *(DerivedStorage + 64) = -1;
  v10 = APSDispatchSectionCreate();
  v53 = v10;
  if (v10)
  {
    APAudioEngineRealTimeCreate_cold_3(v10);
    goto LABEL_134;
  }

  MutableCopy = FigCFDictionaryCreateMutableCopy();
  *DerivedStorage = MutableCopy;
  if (!MutableCopy)
  {
    APAudioEngineRealTimeCreate_cold_36();
    goto LABEL_134;
  }

  CFDictionaryAddValue(MutableCopy, @"senderNetworkClock", a2);
  v12 = FigSimpleMutexCreate();
  *(DerivedStorage + 536) = v12;
  if (!v12)
  {
    APAudioEngineRealTimeCreate_cold_35();
    goto LABEL_134;
  }

  CFDictionaryGetValueIfPresent(v5, @"streamType", &value);
  Int64 = CFDictionaryGetInt64();
  *(DerivedStorage + 24) = Int64 != 0;
  if (Int64)
  {
    *(DerivedStorage + 416) = @"SCR";
    v14 = CFStringCreateF(&v53, "RTAE ['SCR'-%{ptr}]", v52);
    *(DerivedStorage + 32) = v14;
    if (v53)
    {
      APAudioEngineRealTimeCreate_cold_6(v53);
      goto LABEL_134;
    }

    v15 = "com.apple.airplay.rtae.scr.latencyms";
  }

  else if (FigCFEqual())
  {
    *(DerivedStorage + 416) = @"LLA";
    v14 = CFStringCreateF(&v53, "RTAE ['LLA'-%{ptr}]", v52);
    *(DerivedStorage + 32) = v14;
    if (v53)
    {
      APAudioEngineRealTimeCreate_cold_4(v53);
      goto LABEL_134;
    }

    v15 = "com.apple.airplay.rtae.lla.latencyms";
  }

  else
  {
    *(DerivedStorage + 416) = @"HLA";
    v14 = CFStringCreateF(&v53, "RTAE ['HLA'-%{ptr}]", v52);
    *(DerivedStorage + 32) = v14;
    if (v53)
    {
      APAudioEngineRealTimeCreate_cold_5(v53);
      goto LABEL_134;
    }

    v15 = "com.apple.airplay.rtae.hla.latencyms";
  }

  if (gLogCategory_APAudioEngineRealTime <= 50)
  {
    if (gLogCategory_APAudioEngineRealTime != -1)
    {
LABEL_21:
      LogPrintF(&gLogCategory_APAudioEngineRealTime, "OSStatus APAudioEngineRealTimeCreate(CFAllocatorRef, APSNetworkClockRef, CFDictionaryRef, FigEndpointStreamAudioEngineRef *)", 33554482, "%@ Allocated\n", v14);
      goto LABEL_23;
    }

    if (_LogCategory_Initialize())
    {
      v14 = *(DerivedStorage + 32);
      goto LABEL_21;
    }
  }

LABEL_23:
  SNPrintF(label, 64, "AirPlayAudioEngine.%{ptr}.%@.state", v52, value);
  v16 = FigDispatchQueueCreateWithPriority();
  *(DerivedStorage + 128) = v16;
  if (!v16)
  {
    APAudioEngineRealTimeCreate_cold_34(&v53);
    goto LABEL_134;
  }

  *(DerivedStorage + 8) = 0;
  SNPrintF(label, 64, "AirPlayAudioEngine.%{ptr}.%@.notification", v52, value);
  v17 = FigDispatchQueueCreateWithPriority();
  *(DerivedStorage + 80) = v17;
  if (!v17)
  {
    APAudioEngineRealTimeCreate_cold_33(&v53);
    goto LABEL_134;
  }

  v18 = value;
  if (value)
  {
    v18 = CFRetain(value);
  }

  *(DerivedStorage + 16) = v18;
  CFDictionaryGetInt64();
  if (v53)
  {
    APAudioEngineRealTimeCreate_cold_7(v53);
    goto LABEL_134;
  }

  v19 = APSAudioFormatDescriptionCreateWithAudioFormatIndex();
  v53 = v19;
  if (v19)
  {
    APAudioEngineRealTimeCreate_cold_8(v19);
    goto LABEL_134;
  }

  v20 = APAudioFormatToASBD();
  v53 = v20;
  if (v20)
  {
    APAudioEngineRealTimeCreate_cold_9(v20);
    goto LABEL_134;
  }

  v21 = realTimeAudioEngine_setTransportAudioFormatInternal(v52, v49);
  v53 = v21;
  if (v21)
  {
    APAudioEngineRealTimeCreate_cold_10(v21);
    goto LABEL_134;
  }

  if (gLogCategory_APAudioEngineRealTime <= 50 && (gLogCategory_APAudioEngineRealTime != -1 || _LogCategory_Initialize()))
  {
    APAudioEngineRealTimeCreate_cold_11(&cf);
  }

  *(DerivedStorage + 40) = CFDictionaryGetInt64() != 0;
  *(DerivedStorage + 56) = 512;
  IntWithDefault = APSSettingsGetIntWithDefault();
  *(DerivedStorage + 96) = IntWithDefault;
  *(DerivedStorage + 528) = 0;
  if (IntWithDefault)
  {
    SNPrintF(label, 64, "AirPlayAudioEngine.%{ptr}.%@.audioIOAssertion", v52, value);
    v23 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_UTILITY, 0);
    v24 = dispatch_queue_create(label, v23);
    *(DerivedStorage + 104) = v24;
    if (!v24)
    {
      APAudioEngineRealTimeCreate_cold_13(&v53);
      goto LABEL_134;
    }

    v25 = APSAudioIOAssertionTimingControllerCreate();
    v53 = v25;
    if (v25)
    {
      APAudioEngineRealTimeCreate_cold_12(v25);
      goto LABEL_134;
    }
  }

  if (!FigCFDictionaryGetInt32IfPresent())
  {
    APAudioEngineRealTimeCreate_cold_32();
    goto LABEL_134;
  }

  *(DerivedStorage + 424) = 0;
  if (CFDictionaryContainsKey(v5, @"perceivedClusterType"))
  {
    *(DerivedStorage + 424) = CFDictionaryGetInt64();
    if (v53)
    {
      APAudioEngineRealTimeCreate_cold_14(v53);
      goto LABEL_134;
    }
  }

  if (!APSSettingsGetInt64())
  {
    v26 = *MEMORY[0x277CEA090];
    if (FigCFEqual())
    {
      v27 = CFDictionaryGetInt64();
      if (v53)
      {
        APAudioEngineRealTimeCreate_cold_15(v53);
        goto LABEL_134;
      }

      Ref = APSDynamicLatencyManagerGetRef();
      if (Ref)
      {
        v29 = CFRetain(Ref);
        *(DerivedStorage + 120) = v29;
        if (v29)
        {
          if (v27 < 3)
          {
            v26 = **(&unk_27849CA90 + (v27 & 3));
            v30 = APSDynamicLatencyManagerSetVariant();
            v53 = v30;
            if (v30)
            {
              APAudioEngineRealTimeCreate_cold_16(v30);
              goto LABEL_134;
            }

            LatencyTier = APSDynamicLatencyManagerGetLatencyTier();
            v53 = LatencyTier;
            if (LatencyTier)
            {
              APAudioEngineRealTimeCreate_cold_17(LatencyTier);
LABEL_134:
              v5 = 0;
              goto LABEL_92;
            }

            goto LABEL_54;
          }

          goto LABEL_91;
        }

        goto LABEL_54;
      }
    }

    else
    {
      if (!*(DerivedStorage + 24))
      {
        goto LABEL_54;
      }

      v32 = APSDynamicLatencyManagerGetRef();
      if (v32)
      {
        v33 = CFRetain(v32);
        *(DerivedStorage + 120) = v33;
        if (v33)
        {
LABEL_91:
          APSLogErrorAt();
          v5 = 0;
          v53 = -15481;
LABEL_92:
          if (v52)
          {
            CFRelease(v52);
          }

          if (v5)
          {
            CFRelease(v5);
          }

          goto LABEL_87;
        }

LABEL_54:
        if (gLogCategory_APAudioEngineRealTime <= 50 && (gLogCategory_APAudioEngineRealTime != -1 || _LogCategory_Initialize()))
        {
          LogPrintF(&gLogCategory_APAudioEngineRealTime, "OSStatus APAudioEngineRealTimeCreate(CFAllocatorRef, APSNetworkClockRef, CFDictionaryRef, FigEndpointStreamAudioEngineRef *)", 33554482, "%@ DynamicLatencyManager is using variant=%@ latencyTierIdx=%d latencyMs=%d \n", *(DerivedStorage + 32), v26, 0, 0);
        }

        goto LABEL_58;
      }
    }

    *(DerivedStorage + 120) = 0;
    goto LABEL_54;
  }

LABEL_58:
  if (!FigCFDictionaryGetInt32IfPresent())
  {
    APAudioEngineRealTimeCreate_cold_31();
    goto LABEL_134;
  }

  if (!FigCFDictionaryGetInt32IfPresent())
  {
    APAudioEngineRealTimeCreate_cold_30();
    goto LABEL_134;
  }

  if (!FigCFDictionaryGetInt32IfPresent())
  {
    APAudioEngineRealTimeCreate_cold_29();
    goto LABEL_134;
  }

  *(DerivedStorage + 156) = 0;
  if (gLogCategory_APAudioEngineRealTime <= 50)
  {
    if (gLogCategory_APAudioEngineRealTime != -1)
    {
      v34 = 0;
      v35 = 0.0;
LABEL_64:
      LogPrintF(&gLogCategory_APAudioEngineRealTime, "OSStatus APAudioEngineRealTimeCreate(CFAllocatorRef, APSNetworkClockRef, CFDictionaryRef, FigEndpointStreamAudioEngineRef *)", 33554482, "%@ Set dynamic latency offset to %d and live adaptive latency offset to %1.3f\n", *(DerivedStorage + 32), v34, *&v35);
      goto LABEL_66;
    }

    if (_LogCategory_Initialize())
    {
      v34 = *(DerivedStorage + 156);
      v35 = *(DerivedStorage + 160);
      goto LABEL_64;
    }
  }

LABEL_66:
  if (!FigCFDictionaryGetInt32IfPresent())
  {
    APAudioEngineRealTimeCreate_cold_28();
    goto LABEL_134;
  }

  *(DerivedStorage + 48) = APSSettingsGetIntWithDefault();
  if (gLogCategory_APAudioEngineRealTime <= 50 && (gLogCategory_APAudioEngineRealTime != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APAudioEngineRealTime, "OSStatus APAudioEngineRealTimeCreate(CFAllocatorRef, APSNetworkClockRef, CFDictionaryRef, FigEndpointStreamAudioEngineRef *)", 33554482, "%@ AudioEngineRealTime using audio latency %d ms, audio latency min %d ms, audio latency adjust %d ms, audio latency offset %d ms, redundancy count %d. \n", *(DerivedStorage + 32), 0, 0, 0, 0, *(DerivedStorage + 44));
  }

  *(DerivedStorage + 140) = 0 / 1000.0;
  *(DerivedStorage + 144) = 0 / 1000.0;
  *(DerivedStorage + 148) = 0 / 1000.0;
  *(DerivedStorage + 152) = 0 / 1000.0;
  Mutable = CFSetCreateMutable(a1, 0, MEMORY[0x277CBF158]);
  *(DerivedStorage + 168) = Mutable;
  if (!Mutable)
  {
    APAudioEngineRealTimeCreate_cold_27();
    goto LABEL_134;
  }

  v37 = FigCFWeakReferenceHolderCreateWithReferencedObject();
  v5 = v37;
  if (!v37)
  {
    APAudioEngineRealTimeCreate_cold_26();
    goto LABEL_92;
  }

  v38 = *(DerivedStorage + 128);
  v39 = kAPAudioEngineRealTimeDispatchSpecificKey_WeakAudioEngineHolder;
  v40 = CFRetain(v37);
  dispatch_queue_set_specific(v38, v39, v40, MEMORY[0x277CBE550]);
  v41 = APSRealTimeSignalCreate();
  v53 = v41;
  if (v41)
  {
    APAudioEngineRealTimeCreate_cold_20(v41);
    goto LABEL_92;
  }

  *(DerivedStorage + 72) = CFRetain(a2);
  if (*(DerivedStorage + 24) || FigCFEqual())
  {
    v42 = 5;
  }

  else
  {
    v42 = 30;
  }

  v43 = APSRealTimeReadableCreate();
  v53 = v43;
  if (v43)
  {
    APAudioEngineRealTimeCreate_cold_21(v43);
    goto LABEL_134;
  }

  v44 = APSAtomicMessageQueueCreate();
  v53 = v44;
  if (v44)
  {
    APAudioEngineRealTimeCreate_cold_22(v44);
    goto LABEL_134;
  }

  v45 = realTimeAudioEngine_tas_Initialize(a1, DerivedStorage + 560, v42, *(DerivedStorage + 336), *(DerivedStorage + 344), v52, value);
  v53 = v45;
  if (v45)
  {
    APAudioEngineRealTimeCreate_cold_23(v45);
    goto LABEL_134;
  }

  v46 = realTimeAudioEngine_initializeLogging(v52);
  v53 = v46;
  if (v46)
  {
    APAudioEngineRealTimeCreate_cold_24(v46);
    goto LABEL_134;
  }

  if (IsAppleInternalBuild())
  {
    notify_register_dispatch(v15, (DerivedStorage + 64), *(DerivedStorage + 128), &__block_literal_global_12);
  }

  if (gLogCategory_APAudioEngineRealTime <= 30 && (gLogCategory_APAudioEngineRealTime != -1 || _LogCategory_Initialize()))
  {
    APAudioEngineRealTimeCreate_cold_25();
  }

  *a4 = v52;
  v52 = 0;
LABEL_87:
  if (cf)
  {
    CFRelease(cf);
  }

  return v53;
}

uint64_t realTimeAudioEngine_setTransportAudioFormatInternal(uint64_t a1, _DWORD *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a2)
  {
    v4 = DerivedStorage;
    if (FigCFEqual() || a2[2] == 1633772389 && a2[7] >= 3u)
    {
      APAudioFormatGetLowLatencyAudioFramesPerPacket();
      CFPreferenceNumberWithDefault = FigGetCFPreferenceNumberWithDefault();
      if (gLogCategory_APAudioEngineRealTime <= 50 && (gLogCategory_APAudioEngineRealTime != -1 || _LogCategory_Initialize()))
      {
        LogPrintF(&gLogCategory_APAudioEngineRealTime, "OSStatus realTimeAudioEngine_setTransportAudioFormatInternal(FigEndpointStreamAudioEngineRef, AudioStreamBasicDescription *)", 33554482, "%@ Changing Audio Frames Per Packet was=%u is=%u (for LL or AAC_ELD Spatial Mirroring)", *(v4 + 32), a2[5], CFPreferenceNumberWithDefault);
      }

      a2[5] = CFPreferenceNumberWithDefault;
    }

    if (gLogCategory_APAudioEngineRealTime <= 50 && (gLogCategory_APAudioEngineRealTime != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_APAudioEngineRealTime, "OSStatus realTimeAudioEngine_setTransportAudioFormatInternal(FigEndpointStreamAudioEngineRef, AudioStreamBasicDescription *)", 33554482, "%@ Update transport audio format [%{asbd}]", *(v4 + 32), a2);
    }

    v8 = *(v4 + 176);
    v7 = (v4 + 176);
    v6 = v8;
    if (v8)
    {
      CFRelease(v6);
      *v7 = 0;
    }

    v9 = APSAudioFormatDescriptionCreateWithASBD();
    v10 = v9;
    if (v9)
    {
      realTimeAudioEngine_setTransportAudioFormatInternal_cold_1(v9);
    }
  }

  else
  {
    realTimeAudioEngine_setTransportAudioFormatInternal_cold_2();
    return 4294951815;
  }

  return v10;
}

void FigCFRelease(CFTypeRef cf)
{
  if (cf)
  {
    CFRelease(cf);
  }
}

uint64_t realTimeAudioEngine_tas_Initialize(const __CFAllocator *a1, uint64_t a2, int a3, const void *a4, const void *a5, uint64_t a6, uint64_t a7)
{
  v34 = *MEMORY[0x277D85DE8];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!a5)
  {
    realTimeAudioEngine_tas_Initialize_cold_14();
    return 4294950525;
  }

  if (!a6)
  {
    realTimeAudioEngine_tas_Initialize_cold_13();
    return 4294950525;
  }

  v14 = DerivedStorage;
  *a2 = a6;
  v15 = *(DerivedStorage + 32);
  if (!v15)
  {
    *(a2 + 8) = 0;
    goto LABEL_26;
  }

  v16 = CFRetain(v15);
  *(a2 + 8) = v16;
  if (!v16)
  {
LABEL_26:
    realTimeAudioEngine_tas_Initialize_cold_12();
    return 4294951816;
  }

  if (FigCFEqual())
  {
    v17 = *(v14 + 24) == 0;
  }

  else
  {
    v17 = 0;
  }

  *(a2 + 16) = v17;
  v18 = FigSimpleMutexCreate();
  *(a2 + 88) = v18;
  if (!v18)
  {
    realTimeAudioEngine_tas_Initialize_cold_11();
    return 4294951816;
  }

  SNPrintF(v33, 64, "AirPlayAudioEngine.%{ptr}.tas.audioTimer", a6);
  v19 = FigDispatchQueueCreateWithPriority();
  *(a2 + 104) = v19;
  if (!v19)
  {
    realTimeAudioEngine_tas_Initialize_cold_10(&v32);
    return v32;
  }

  *(a2 + 232) = -1;
  *(a2 + 256) = 0;
  SNPrintF(v33, 64, "AirPlayAudioEngine.%{ptr}.tas.hoses", a6);
  v20 = FigDispatchQueueCreateWithPriority();
  *(a2 + 272) = v20;
  if (!v20)
  {
    realTimeAudioEngine_tas_Initialize_cold_9(&v32);
    return v32;
  }

  Mutable = CFArrayCreateMutable(*MEMORY[0x277CBECE8], 1, 0);
  *(a2 + 280) = Mutable;
  if (!Mutable)
  {
    realTimeAudioEngine_tas_Initialize_cold_8();
    return 4294951816;
  }

  CFArrayAppendValue(Mutable, a2);
  v22 = APSAtomicMessageQueueCreate();
  if (v22)
  {
    v30 = v22;
    realTimeAudioEngine_tas_Initialize_cold_1(v22);
    return v30;
  }

  CFRetain(*(a2 + 280));
  v23 = APSRealTimeSignalCreate();
  if (v23)
  {
    v30 = v23;
    realTimeAudioEngine_tas_Initialize_cold_2(v23);
    return v30;
  }

  v24 = CFDictionaryCreateMutable(a1, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  *(a2 + 304) = v24;
  if (!v24)
  {
    realTimeAudioEngine_tas_Initialize_cold_7();
    return 4294951816;
  }

  v25 = APSRealTimeWritableCreate();
  if (v25)
  {
    v30 = v25;
    realTimeAudioEngine_tas_Initialize_cold_3(v25);
  }

  else
  {
    CFDictionaryGetEmpty();
    v26 = APSCFRealTimeReadableCreate();
    if (v26)
    {
      v30 = v26;
      realTimeAudioEngine_tas_Initialize_cold_4(v26);
    }

    else
    {
      v27 = APSAtomicMessageQueueCreate();
      if (v27)
      {
        v30 = v27;
        realTimeAudioEngine_tas_Initialize_cold_5(v27);
      }

      else
      {
        *(a2 + 64) = CFRetain(a4);
        *(a2 + 32) = CFRetain(a5);
        *(a2 + 40) = a3;
        *(a2 + 80) = FigCFEqual() == 0;
        if (APSSettingsGetIntWithDefault())
        {
          if (gLogCategory_APAudioEngineRealTime <= 50 && (gLogCategory_APAudioEngineRealTime != -1 || _LogCategory_Initialize()))
          {
            realTimeAudioEngine_tas_Initialize_cold_6(a2 + 8, v28, v29);
          }

          v30 = 0;
          *(a2 + 80) = 0;
        }

        else
        {
          return 0;
        }
      }
    }
  }

  return v30;
}

uint64_t realTimeAudioEngine_initializeLogging(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  CFDictionarySetValue(Mutable, *MEMORY[0x277CEA330], @"Histogram_TimeLostOnSenderToTxPacket");
  CFDictionarySetValue(Mutable, *MEMORY[0x277CEA338], @"ms");
  FigCFDictionarySetDouble();
  FigCFDictionarySetDouble();
  FigCFDictionarySetInt32();
  v3 = APSStatsHistogramCreate();
  *(DerivedStorage + 352) = v3;
  if (!v3)
  {
    realTimeAudioEngine_initializeLogging_cold_1();
    v8 = 4294951816;
    if (!Mutable)
    {
      return v8;
    }

    goto LABEL_3;
  }

  CFPreferenceNumberWithDefault = FigGetCFPreferenceNumberWithDefault();
  CMTimeMake(&v11, CFPreferenceNumberWithDefault, 1000);
  *(DerivedStorage + 432) = v11;
  v5 = MEMORY[0x277CC08A0];
  v10 = *MEMORY[0x277CC08A0];
  *(DerivedStorage + 456) = *MEMORY[0x277CC08A0];
  v6 = *(v5 + 16);
  *(DerivedStorage + 472) = v6;
  v7 = FigGetCFPreferenceNumberWithDefault();
  CMTimeMake(&v11, v7, 1000);
  v8 = 0;
  *(DerivedStorage + 480) = v11;
  *(DerivedStorage + 504) = v10;
  *(DerivedStorage + 520) = v6;
  if (Mutable)
  {
LABEL_3:
    CFRelease(Mutable);
  }

  return v8;
}

uint64_t realTimeAudioEngine_setAudioLatency(uint64_t a1, int a2, float a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a2)
  {
    if (gLogCategory_APAudioEngineRealTime <= 50 && (gLogCategory_APAudioEngineRealTime != -1 || _LogCategory_Initialize()))
    {
      realTimeAudioEngine_setAudioLatency_cold_1(DerivedStorage, v5, v6);
    }

    *(DerivedStorage + 140) = a3;
  }

  else
  {
    if (gLogCategory_APAudioEngineRealTime <= 50 && (gLogCategory_APAudioEngineRealTime != -1 || _LogCategory_Initialize()))
    {
      realTimeAudioEngine_setAudioLatency_cold_2(DerivedStorage, v5, v6);
    }

    *(DerivedStorage + 160) = a3 - *(DerivedStorage + 140);
  }

  CMNotificationCenterGetDefaultLocalCenter();

  return FigDispatchAsyncPostNotification();
}

void realTimeAudioEngine_Finalize(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v3 = *(DerivedStorage + 32);
  if (v3)
  {
    v4 = CFRetain(v3);
  }

  else
  {
    v4 = 0;
  }

  v5 = *(DerivedStorage + 168);
  if (v5)
  {
    CFRelease(v5);
    *(DerivedStorage + 168) = 0;
  }

  realTimeAudioEngine_removeStreamNotificationListeners(a1, *(DerivedStorage + 200));
  v6 = *(DerivedStorage + 320);
  if (v6)
  {
    dispatch_source_cancel(v6);
    if (!*(DerivedStorage + 328))
    {
      dispatch_resume(*(DerivedStorage + 320));
    }

    v7 = *(DerivedStorage + 320);
    if (v7)
    {
      dispatch_source_cancel(*(DerivedStorage + 320));
      dispatch_release(v7);
      *(DerivedStorage + 320) = 0;
    }
  }

  v8 = *(DerivedStorage + 192);
  if (v8)
  {
    v9 = *(*(CMBaseObjectGetVTable() + 16) + 16);
    if (v9)
    {
      v9(v8);
    }

    v10 = *(DerivedStorage + 192);
    v11 = *(*(CMBaseObjectGetVTable() + 16) + 120);
    if (v11)
    {
      v11(v10, 0, 0);
    }
  }

  v12 = *(DerivedStorage + 224);
  if (v12)
  {
    CFRelease(v12);
    *(DerivedStorage + 224) = 0;
  }

  v13 = *(DerivedStorage + 200);
  if (v13)
  {
    CFRelease(v13);
    *(DerivedStorage + 200) = 0;
  }

  v14 = *(DerivedStorage + 208);
  if (v14)
  {
    CFRelease(v14);
    *(DerivedStorage + 208) = 0;
  }

  v15 = *(DerivedStorage + 264);
  if (v15)
  {
    CFRelease(v15);
    *(DerivedStorage + 264) = 0;
  }

  v16 = *(DerivedStorage + 272);
  if (v16)
  {
    CFRelease(v16);
    *(DerivedStorage + 272) = 0;
  }

  v17 = *(DerivedStorage + 192);
  if (v17)
  {
    CFRelease(v17);
    *(DerivedStorage + 192) = 0;
  }

  v18 = *(DerivedStorage + 184);
  if (v18)
  {
    CFRelease(v18);
    *(DerivedStorage + 184) = 0;
  }

  v19 = *(DerivedStorage + 216);
  if (v19)
  {
    CFRelease(v19);
    *(DerivedStorage + 216) = 0;
  }

  v20 = *(DerivedStorage + 248);
  if (v20)
  {
    CFRelease(v20);
    *(DerivedStorage + 248) = 0;
  }

  v21 = *(DerivedStorage + 256);
  if (v21)
  {
    CFRelease(v21);
    *(DerivedStorage + 256) = 0;
  }

  v22 = *(DerivedStorage + 176);
  if (v22)
  {
    CFRelease(v22);
    *(DerivedStorage + 176) = 0;
  }

  v23 = *(DerivedStorage + 16);
  if (v23)
  {
    CFRelease(v23);
    *(DerivedStorage + 16) = 0;
  }

  v24 = *(DerivedStorage + 32);
  if (v24)
  {
    CFRelease(v24);
    *(DerivedStorage + 32) = 0;
  }

  v25 = *(DerivedStorage + 72);
  if (v25)
  {
    CFRelease(v25);
    *(DerivedStorage + 72) = 0;
  }

  v26 = *(DerivedStorage + 104);
  if (v26)
  {
    dispatch_release(v26);
    *(DerivedStorage + 104) = 0;
  }

  v27 = *(DerivedStorage + 112);
  if (v27)
  {
    CFRelease(v27);
    *(DerivedStorage + 112) = 0;
  }

  v28 = *(DerivedStorage + 120);
  if (v28)
  {
    CFRelease(v28);
    *(DerivedStorage + 120) = 0;
  }

  v29 = *(DerivedStorage + 336);
  if (v29)
  {
    CFRelease(v29);
    *(DerivedStorage + 336) = 0;
  }

  v30 = *(DerivedStorage + 344);
  if (v30)
  {
    CFRelease(v30);
    *(DerivedStorage + 344) = 0;
  }

  v31 = *(DerivedStorage + 352);
  if (v31)
  {
    CFRelease(v31);
    *(DerivedStorage + 352) = 0;
  }

  v32 = *(DerivedStorage + 312);
  if (v32)
  {
    CFRelease(v32);
    *(DerivedStorage + 312) = 0;
  }

  v33 = *(DerivedStorage + 544);
  if (v33)
  {
    CFRelease(v33);
    *(DerivedStorage + 544) = 0;
  }

  v34 = *(DerivedStorage + 552);
  if (v34)
  {
    CFRelease(v34);
    *(DerivedStorage + 552) = 0;
  }

  FigSimpleMutexDestroy();
  *(DerivedStorage + 536) = 0;
  if (*DerivedStorage)
  {
    CFRelease(*DerivedStorage);
    *DerivedStorage = 0;
  }

  v35 = *(DerivedStorage + 88);
  if (v35)
  {
    CFRelease(v35);
    *(DerivedStorage + 88) = 0;
  }

  v36 = *(DerivedStorage + 64);
  if (v36 != -1)
  {
    notify_cancel(v36);
    *(DerivedStorage + 64) = -1;
  }

  v37 = *(DerivedStorage + 128);
  if (v37)
  {
    dispatch_release(v37);
    *(DerivedStorage + 128) = 0;
  }

  v38 = *(DerivedStorage + 80);
  if (v38)
  {
    dispatch_release(v38);
    *(DerivedStorage + 80) = 0;
  }

  v39 = *(DerivedStorage + 864);
  if (v39)
  {
    CFRelease(v39);
    *(DerivedStorage + 864) = 0;
  }

  v40 = *(DerivedStorage + 624);
  if (v40)
  {
    CFRelease(v40);
    *(DerivedStorage + 624) = 0;
  }

  v41 = *(DerivedStorage + 584);
  if (v41)
  {
    CFRelease(v41);
    *(DerivedStorage + 584) = 0;
  }

  v42 = *(DerivedStorage + 592);
  if (v42)
  {
    CFRelease(v42);
    *(DerivedStorage + 592) = 0;
  }

  v43 = *(DerivedStorage + 568);
  if (v43)
  {
    CFRelease(v43);
    *(DerivedStorage + 568) = 0;
  }

  if (*(DerivedStorage + 840))
  {
    dispatch_sync_f(*(DerivedStorage + 832), (DerivedStorage + 560), realTimeAudioEngine_tas_hosesInvalidateAllMessages);
    v44 = *(DerivedStorage + 840);
    if (v44)
    {
      CFRelease(v44);
      *(DerivedStorage + 840) = 0;
    }
  }

  v45 = *(DerivedStorage + 848);
  if (v45)
  {
    CFRelease(v45);
    *(DerivedStorage + 848) = 0;
  }

  v46 = *(DerivedStorage + 856);
  if (v46)
  {
    CFRelease(v46);
    *(DerivedStorage + 856) = 0;
  }

  v47 = *(DerivedStorage + 808);
  if (v47)
  {
    CFRelease(v47);
    *(DerivedStorage + 808) = 0;
  }

  v48 = *(DerivedStorage + 696);
  if (v48)
  {
    CFRelease(v48);
    *(DerivedStorage + 696) = 0;
  }

  v49 = *(DerivedStorage + 832);
  if (v49)
  {
    dispatch_release(v49);
    *(DerivedStorage + 832) = 0;
  }

  v50 = *(DerivedStorage + 664);
  if (v50)
  {
    dispatch_release(v50);
    *(DerivedStorage + 664) = 0;
  }

  FigSimpleMutexDestroy();
  if (gLogCategory_APAudioEngineRealTime <= 50 && (gLogCategory_APAudioEngineRealTime != -1 || _LogCategory_Initialize()))
  {
    realTimeAudioEngine_Finalize_cold_1(v4, v51, v52);
    if (!v4)
    {
      return;
    }
  }

  else if (!v4)
  {
    return;
  }

  CFRelease(v4);
}

__CFString *realTimeAudioEngine_CopyDebugDescription()
{
  Mutable = CFStringCreateMutable(*MEMORY[0x277CBECE8], 0);
  CFStringAppendFormat(Mutable, 0, @"<APAudioEngineRealTime>");
  return Mutable;
}

uint64_t realTimeAudioEngine_CopyProperty(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APAudioEngineRealTime <= 30 && (gLogCategory_APAudioEngineRealTime != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APAudioEngineRealTime, "OSStatus realTimeAudioEngine_CopyProperty(CMBaseObjectRef, CFStringRef, CFAllocatorRef, void *)", 33554462, "%@ %###s propertyKey: '%@'\n", *(DerivedStorage + 32), "OSStatus realTimeAudioEngine_CopyProperty(CMBaseObjectRef, CFStringRef, CFAllocatorRef, void *)", a2);
  }

  if (!a2)
  {
    realTimeAudioEngine_CopyProperty_cold_3();
    return 4294951815;
  }

  if (!a4)
  {
    realTimeAudioEngine_CopyProperty_cold_2();
    return 4294951815;
  }

  v7 = APSDispatchSyncTask();
  v8 = v7;
  if (v7)
  {
    realTimeAudioEngine_CopyProperty_cold_1(v7);
  }

  return v8;
}

uint64_t realTimeAudioEngine_SetProperty(uint64_t a1, uint64_t a2, const __CFDictionary *a3)
{
  v30 = *MEMORY[0x277D85DE8];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v25 = a1;
  v26 = a2;
  v27 = a3;
  if (gLogCategory_APAudioEngineRealTime <= 30 && (gLogCategory_APAudioEngineRealTime != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APAudioEngineRealTime, "OSStatus realTimeAudioEngine_SetProperty(CMBaseObjectRef, CFStringRef, CFTypeRef)", 33554462, "%@ %###s propertyKey: '%@'\n", *(DerivedStorage + 32), "OSStatus realTimeAudioEngine_SetProperty(CMBaseObjectRef, CFStringRef, CFTypeRef)", a2);
  }

  if (!a2)
  {
    realTimeAudioEngine_SetProperty_cold_3();
    return 4294951815;
  }

  if (FigCFEqual())
  {
    CMTimeMakeFromDictionary(&v23, a3);
    value = v23.value;
    flags = v23.flags;
    timescale = v23.timescale;
    if ((v23.flags & 0x1D) == 1)
    {
      epoch = v23.epoch;
      v9 = *(DerivedStorage + 256);
      v10 = *(DerivedStorage + 264);
      time.value = value;
      time.timescale = timescale;
      time.flags = v23.flags;
      time.epoch = v23.epoch;
      CMSyncConvertTime(&v23, &time, v9, v10);
      v11 = v23.value;
      v24 = *&v23.timescale;
      APSAudioFormatDescriptionGetSampleRate();
      time.value = v11;
      *&time.timescale = v24;
      CMTimeConvertScale(&v23, &time, v12, kCMTimeRoundingMethod_RoundHalfAwayFromZero);
      v13 = v23.value;
      v24 = *&v23.timescale;
      if (gLogCategory_APAudioEngineRealTime <= 50 && (gLogCategory_APAudioEngineRealTime != -1 || _LogCategory_Initialize()))
      {
        v14 = *(DerivedStorage + 32);
        v23.value = value;
        v23.timescale = timescale;
        v23.flags = flags;
        v23.epoch = epoch;
        Seconds = CMTimeGetSeconds(&v23);
        CMTimebaseGetTime(&v23, *(DerivedStorage + 256));
        v16 = CMTimeGetSeconds(&v23);
        v23.value = v13;
        *&v23.timescale = v24;
        v17 = CMTimeGetSeconds(&v23);
        CMTimebaseGetTime(&v23, *(DerivedStorage + 264));
        v18 = CMTimeGetSeconds(&v23);
        LogPrintF(&gLogCategory_APAudioEngineRealTime, "OSStatus realTimeAudioEngine_SetProperty(CMBaseObjectRef, CFStringRef, CFTypeRef)", 33554482, "%@ New audioSourceFirstAnchorTime %1.3f (now: %1.3f) to make audioSourceFirstFrameRTPAnchorTime %1.3f (now: %1.3f)\n", v14, *&Seconds, *&v16, *&v17, *&v18);
      }

      v20 = 0;
      *(DerivedStorage + 792) = v13;
      return v20;
    }

    realTimeAudioEngine_SetProperty_cold_1();
    return 4294951815;
  }

  v19 = APSDispatchSyncTask();
  v20 = v19;
  if (v19)
  {
    realTimeAudioEngine_SetProperty_cold_2(v19);
  }

  return v20;
}

void realTimeAudioEngine_GlitchReportNotificationListener(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const __CFDictionary *a5)
{
  CMBaseObjectGetDerivedStorage();
  if (!a5)
  {
    realTimeAudioEngine_GlitchReportNotificationListener_cold_12();
    return;
  }

  v39 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v8 = mach_absolute_time();
  cf = 0;
  CFStringGetTypeID();
  CFDictionaryGetTypedValue();
  if (!FigCFEqual())
  {
    goto LABEL_44;
  }

  Int64 = CFDictionaryGetInt64();
  if (!FigCFEqual())
  {
    if (gLogCategory_APAudioEngineRealTime <= 50 && (gLogCategory_APAudioEngineRealTime != -1 || _LogCategory_Initialize()))
    {
      realTimeAudioEngine_GlitchReportNotificationListener_cold_11(DerivedStorage, Int64 != 0, v10);
    }

    goto LABEL_44;
  }

  if (!Int64)
  {
    if (gLogCategory_APAudioEngineRealTime <= 50 && (gLogCategory_APAudioEngineRealTime != -1 || _LogCategory_Initialize()))
    {
      realTimeAudioEngine_GlitchReportNotificationListener_cold_1();
    }

    goto LABEL_44;
  }

  if (gLogCategory_APAudioEngineRealTime <= 50 && (gLogCategory_APAudioEngineRealTime != -1 || _LogCategory_Initialize()))
  {
    realTimeAudioEngine_GlitchReportNotificationListener_cold_2();
  }

  realTimeAudioEngine_updateDynamicLatencyIfNeeded(a2, 1);
  IntWithDefault = APSSettingsGetIntWithDefault();
  v12 = APSSettingsGetIntWithDefault();
  v13 = atomic_load(&realTimeAudioEngine_maybeTriggerTTRForLowLatencyAudioGlitch_sNextSevereTTRTicks);
  if (IntWithDefault || v13 <= v8)
  {
    if (CFDictionaryContainsKey(a5, *MEMORY[0x277CEA1D0]) && !CFDictionaryGetInt64())
    {
      if (gLogCategory_APAudioEngineRealTime <= 50 && (gLogCategory_APAudioEngineRealTime != -1 || _LogCategory_Initialize()))
      {
        realTimeAudioEngine_GlitchReportNotificationListener_cold_3();
      }

      v35 = *(DerivedStorage + 200);
      v36 = *(*(CMBaseObjectGetVTable() + 16) + 40);
      if (v36)
      {
        v36(v35, @"EnableReceiverCoreCapture", a5);
      }

      goto LABEL_44;
    }

    v16 = *(DerivedStorage + 200);
    v17 = *(*(CMBaseObjectGetVTable() + 16) + 40);
    if (v17)
    {
      v17(v16, @"TriggerReceiverCoreCapture", a5);
    }

    v18 = *(DerivedStorage + 200);
    v19 = *(*(CMBaseObjectGetVTable() + 16) + 40);
    if (v19)
    {
      v19(v18, @"TriggerSenderCoreCapture", a5);
    }

    v37 = v12;
    Int64Ranged = CFDictionaryGetInt64Ranged();
    v21 = *MEMORY[0x277CBECE8];
    v22 = Int64Ranged;
    v23 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"TTR: Low Latency Audio %s RTPSeqNum=%u", "SEVERE Glitches", v22);
    if (!v23)
    {
      realTimeAudioEngine_GlitchReportNotificationListener_cold_10(&v39);
      v27 = 0;
      goto LABEL_45;
    }

    v24 = CFDictionaryGetInt64Ranged();
    CFStringGetTypeID();
    v26 = (DerivedStorage + 32);
    TypedValue = CFDictionaryGetTypedValue();
    v27 = CFStringCreateF(&v39, "%@ Name=%@ RTPSeqNum=%u RTPTimestamp=%u severeGlitches=%s \n\nWere glitches audible? Please choose: [Yes, No, Unsure]", *(DerivedStorage + 32), TypedValue, v22, v24, "yes");
    if (v39)
    {
      realTimeAudioEngine_GlitchReportNotificationListener_cold_7(v39);
      goto LABEL_45;
    }

    if (*(DerivedStorage + 200))
    {
      CMBaseObject = FigEndpointStreamGetCMBaseObject();
      v29 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      if (v29)
      {
        v30 = v29(CMBaseObject, @"EndpointIDs", v21, &cf);
        v39 = v30;
        if (!v30)
        {
          goto LABEL_29;
        }
      }

      else
      {
        v30 = 4294954514;
        v39 = -12782;
      }

      realTimeAudioEngine_GlitchReportNotificationListener_cold_8(v30);
      goto LABEL_45;
    }

LABEL_29:
    v31 = UpTicksPerSecond();
    v34 = v13;
    atomic_compare_exchange_strong(&realTimeAudioEngine_maybeTriggerTTRForLowLatencyAudioGlitch_sNextSevereTTRTicks, &v34, v8 + v31 * v37);
    if (v34 == v13)
    {
      if (!IntWithDefault)
      {
        if (gLogCategory_APAudioEngineRealTime <= 50 && (gLogCategory_APAudioEngineRealTime != -1 || _LogCategory_Initialize()))
        {
          LogPrintF(&gLogCategory_APAudioEngineRealTime, "void realTimeAudioEngine_maybeTriggerTTRForLowLatencyAudioGlitch(FigEndpointStreamAudioEngineRef, CFDictionaryRef)", 33554482, "%@ Invoking TTR (severeGlitches=%s) with title: %@\n", *v26, "yes", v23);
        }

        APSTapToRadarInvoke();
      }
    }

    else if (gLogCategory_APAudioEngineRealTime <= 50 && (gLogCategory_APAudioEngineRealTime != -1 || _LogCategory_Initialize()))
    {
      realTimeAudioEngine_GlitchReportNotificationListener_cold_9(v26, v32, v33);
    }

    goto LABEL_45;
  }

  if (gLogCategory_APAudioEngineRealTime <= 50 && (gLogCategory_APAudioEngineRealTime != -1 || _LogCategory_Initialize()))
  {
    v14 = *(DerivedStorage + 32);
    v15 = UpTicksToSeconds();
    LogPrintF(&gLogCategory_APAudioEngineRealTime, "void realTimeAudioEngine_maybeTriggerTTRForLowLatencyAudioGlitch(FigEndpointStreamAudioEngineRef, CFDictionaryRef)", 33554482, "%@ Throttling TTRs (for Low Latency Audio severeGlitches=%s) to 1 per %d sec. Next in %llu sec\n", v14, "yes", v12, v15);
  }

LABEL_44:
  v27 = 0;
  v23 = 0;
LABEL_45:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v27)
  {
    CFRelease(v27);
  }

  if (v23)
  {
    CFRelease(v23);
  }
}

uint64_t realTimeAudioEngine_DynamicLatencyOffsetDidChangeListener(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const __CFDictionary *a5)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  valuePtr = 0;
  if (!a5)
  {
    return realTimeAudioEngine_DynamicLatencyOffsetDidChangeListener_cold_3();
  }

  Value = CFDictionaryGetValue(a5, @"APEndpointStream_DynamicLatencyOffsetMs");
  if (!Value)
  {
    return realTimeAudioEngine_DynamicLatencyOffsetDidChangeListener_cold_2();
  }

  CFNumberGetValue(Value, kCFNumberSInt32Type, &valuePtr);
  if (gLogCategory_APAudioEngineRealTime <= 50 && (gLogCategory_APAudioEngineRealTime != -1 || _LogCategory_Initialize()))
  {
    realTimeAudioEngine_DynamicLatencyOffsetDidChangeListener_cold_1(DerivedStorage, &valuePtr, v8);
  }

  *(DerivedStorage + 156) = valuePtr;
  CMNotificationCenterGetDefaultLocalCenter();
  return FigDispatchAsyncPostNotification();
}

uint64_t realTimeAudioEngine_tas_hosesInvalidateAllMessages(uint64_t a1)
{
  CFArrayRemoveAllValues(*(a1 + 280));
  do
  {
    result = APSAtomicMessageQueueReadMessage();
  }

  while (result);
  return result;
}

uint64_t realTimeAudioEngine_copyPropertyDispatch(void *a1)
{
  v1 = a1[1];
  v2 = a1[2];
  v3 = a1[3];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!v1)
  {
    realTimeAudioEngine_copyPropertyDispatch_cold_6();
    return 4294951815;
  }

  if (!v3)
  {
    realTimeAudioEngine_copyPropertyDispatch_cold_5();
    return 4294951815;
  }

  v5 = DerivedStorage;
  if (!CFEqual(v1, @"audioLatencyMs"))
  {
    if (CFEqual(v1, @"outputLatency"))
    {
      CMTimeMake(&time, ((*(v5 + 140) + *(v5 + 152)) * 1000.0), 1000);
      v7 = CMTimeCopyAsDictionary(&time, v2);
      *v3 = v7;
      if (!v7)
      {
        realTimeAudioEngine_copyPropertyDispatch_cold_2();
        return 4294951816;
      }
    }

    else
    {
      if (!CFEqual(v1, @"dynamicLatencyOffsetMs"))
      {
        if (CFEqual(v1, @"currentRTPTime"))
        {
          v10 = CMBaseObjectGetDerivedStorage();
          time = **&MEMORY[0x277CC0898];
          APSAudioFormatDescriptionGetSampleRate();
          if (!*(v10 + 8))
          {
            v12 = v11;
            APSRealTimeWritableRead();
            if (time.value)
            {
              CMTimeMake(&rhs, (*(v10 + 140) * v12), v12);
              v15 = time;
              CMTimeSubtract(&v17, &v15, &rhs);
              time = v17;
            }
          }

          v17 = time;
          v13 = CMTimeCopyAsDictionary(&v17, v2);
          if (!v13)
          {
            realTimeAudioEngine_copyPropertyDispatch_cold_4();
            return 4294951816;
          }
        }

        else
        {
          if (!CFEqual(v1, @"startupOptions"))
          {
            return 4294954509;
          }

          v13 = CFRetain(*v5);
        }

        v14 = v13;
        result = 0;
        *v3 = v14;
        return result;
      }

      SInt32 = FigCFNumberCreateSInt32();
      *v3 = SInt32;
      if (!SInt32)
      {
        realTimeAudioEngine_copyPropertyDispatch_cold_3();
        return 4294951816;
      }
    }

    return 0;
  }

  v6 = FigCFNumberCreateSInt32();
  *v3 = v6;
  if (v6)
  {
    return 0;
  }

  realTimeAudioEngine_copyPropertyDispatch_cold_1();
  return 4294951816;
}

uint64_t realTimeAudioEngine_setPropertyDispatchSync(void *a1)
{
  CMBaseObjectGetDerivedStorage();
  APSLogErrorAt();
  return 4294954509;
}

__CFString *realTimeAudioEngine_audioHoseProtocolCopyDebugDescription(uint64_t a1)
{
  Mutable = CFStringCreateMutable(*MEMORY[0x277CBECE8], 0);
  CFStringAppendFormat(Mutable, 0, @"APAudioEngineRealTime <APSEndpointStreamAudioHoseRegistrarProtocol> on <%p>", a1);
  return Mutable;
}

uint64_t realTimeAudioEngine_audioHoseRegistrarRegisterHose(const void *a1, const void *a2, const void *a3, void *a4)
{
  CMBaseObjectGetDerivedStorage();
  if (a2)
  {
    if (a1)
    {
      CFRetain(a1);
    }

    CFRetain(a2);
    if (a3)
    {
      CFRetain(a3);
    }

    APSDispatchAsyncFHelper();
    result = 0;
    *a4 = &realTimeAudioEngine_audioHoseRegistrarRegisterHose_callbacks;
  }

  else
  {
    realTimeAudioEngine_audioHoseRegistrarRegisterHose_cold_1();
    return 4294951815;
  }

  return result;
}

uint64_t realTimeAudioEngine_audioHoseRegistrarDeregisterHose(const void *a1, const void *a2, const void *a3)
{
  CMBaseObjectGetDerivedStorage();
  if (a2)
  {
    if (a1)
    {
      CFRetain(a1);
    }

    CFRetain(a2);
    if (a3)
    {
      CFRetain(a3);
    }

    APSDispatchAsyncFHelper();
    return 0;
  }

  else
  {
    realTimeAudioEngine_audioHoseRegistrarDeregisterHose_cold_1();
    return 4294951815;
  }
}

uint64_t realTimeAudioEngine_TriggerTimeAnnounce(const void *a1)
{
  v2 = *(CMBaseObjectGetDerivedStorage() + 128);
  if (a1)
  {
    v3 = CFRetain(a1);
  }

  else
  {
    v3 = 0;
  }

  dispatch_async_f(v2, v3, realTimeAudioEngine_triggerTimeAnnounceInternal);
  return 0;
}

void realTimeAudioEngine_audioHoseRegistrarRegisterHoseDispatchInternal(CFTypeRef *a1)
{
  v3 = *a1;
  v2 = a1[1];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APAudioEngineRealTime <= 50 && (gLogCategory_APAudioEngineRealTime != -1 || _LogCategory_Initialize()))
  {
    realTimeAudioEngine_audioHoseRegistrarRegisterHoseDispatchInternal_cold_1(DerivedStorage);
  }

  if (CFSetContainsValue(*(DerivedStorage + 168), v2))
  {
    realTimeAudioEngine_audioHoseRegistrarRegisterHoseDispatchInternal_cold_2();
  }

  else
  {
    if (APSGetFBOPropertyInt64())
    {
      APSSettingsGetIntWithDefault();
    }

    v5 = APSDispatchSyncTask();
    if (v5)
    {
      realTimeAudioEngine_audioHoseRegistrarRegisterHoseDispatchInternal_cold_3(v5);
    }

    else
    {
      CFSetAddValue(*(DerivedStorage + 168), v2);
      realTimeAudioEngine_updateArrivalToRenderTicks(v3);
      realTimeAudioEngine_updateCryptor(v3);
      *(DerivedStorage + 305) = 1;
      realTimeAudioEngine_handleTimeAnnounce(v3);
      if (CFDictionaryGetInt64())
      {
        *(DerivedStorage + 528) = 1;
        CFSetApplyFunction(*(DerivedStorage + 168), realTimeAudioEngine_setEchoCancellationIsEnabledToHose, (DerivedStorage + 528));
      }

      if (*(DerivedStorage + 528))
      {
        v6 = *(*(CMBaseObjectGetVTable() + 8) + 56);
        if (v6)
        {
          v6(v2, *MEMORY[0x277CEA0C0], *MEMORY[0x277CBED28]);
        }
      }

      if (gLogCategory_APAudioEngineRealTime <= 50 && (gLogCategory_APAudioEngineRealTime != -1 || _LogCategory_Initialize()))
      {
        realTimeAudioEngine_audioHoseRegistrarRegisterHoseDispatchInternal_cold_4(DerivedStorage, (DerivedStorage + 168));
      }

      Count = CFSetGetCount(*(DerivedStorage + 168));
      *(DerivedStorage + 392) = Count;
      if (*(DerivedStorage + 396) < Count)
      {
        *(DerivedStorage + 396) = Count;
      }
    }
  }

  if (*a1)
  {
    CFRelease(*a1);
  }

  v8 = a1[1];
  if (v8)
  {
    CFRelease(v8);
  }

  v9 = a1[2];
  if (v9)
  {
    CFRelease(v9);
  }
}

void realTimeAudioEngine_triggerTimeAnnounceInternal(const void *a1)
{
  *(CMBaseObjectGetDerivedStorage() + 305) = 1;
  realTimeAudioEngine_handleTimeAnnounce(a1);
  if (a1)
  {

    CFRelease(a1);
  }
}

uint64_t realTimeAudioEngine_timeAnnounceHoseApplier(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 12);
  v5 = MEMORY[0x277CEA0C8];
  if (*(a2 + 36))
  {
    v6 = *(*(CMBaseObjectGetVTable() + 8) + 56);
    if (v6)
    {
      v6(a1, *v5, *MEMORY[0x277CBED10]);
    }
  }

  if (v4)
  {
    v7 = *(*(CMBaseObjectGetVTable() + 8) + 56);
    if (v7)
    {
      v7(a1, *v5, *MEMORY[0x277CBED28]);
    }
  }

  v8 = *(a2 + 32);
  v9 = *(a2 + 24);
  APSEndpointStreamAudioHoseProtocolGetProtocolID();
  result = CMBaseObjectGetProtocolVTable();
  if (result)
  {
    v12 = *(result + 16);
    result += 16;
    v11 = v12;
    if (v12)
    {
      v13 = *(v11 + 16);
      if (v13)
      {

        return v13(a1, v8, v9);
      }
    }
  }

  return result;
}

uint64_t realTimeAudioEngine_setEchoCancellationIsEnabledToHose(uint64_t a1, _BYTE *a2)
{
  if (*a2)
  {
    v3 = MEMORY[0x277CBED28];
  }

  else
  {
    v3 = MEMORY[0x277CBED10];
  }

  VTable = CMBaseObjectGetVTable();
  v6 = *(VTable + 8);
  result = VTable + 8;
  v7 = *(v6 + 56);
  if (v7)
  {
    v8 = *MEMORY[0x277CEA0C0];
    v9 = *v3;

    return v7(a1, v8, v9);
  }

  return result;
}

uint64_t realTimeAudioEngine_tas_addHoseDispatchInternal(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v3 = *(a1 + 16);
  if (CFDictionaryContainsKey(*(*a1 + 304), v1))
  {
    realTimeAudioEngine_tas_addHoseDispatchInternal_cold_1(v16);
    return v16[0];
  }

  else
  {
    v4 = MEMORY[0x277CBED28];
    if (!v3)
    {
      v4 = MEMORY[0x277CBED10];
    }

    CFDictionaryAddValue(*(v2 + 304), v1, *v4);
    Copy = CFDictionaryCreateCopy(*MEMORY[0x277CBECE8], *(v2 + 304));
    if (Copy)
    {
      v6 = Copy;
      APSCFRealTimeReadableSetValue();
      v7 = atomic_load((v2 + 256));
      if (*(v2 + 16))
      {
        v8 = v7 == 0;
      }

      else
      {
        v8 = 1;
      }

      if (!v8)
      {
        v9 = v7 >> 16;
        v10 = HIDWORD(v7);
        if (gLogCategory_APAudioEngineRealTime <= 50 && (gLogCategory_APAudioEngineRealTime != -1 || _LogCategory_Initialize()))
        {
          LogPrintF(&gLogCategory_APAudioEngineRealTime, "OSStatus realTimeAudioEngine_tas_addHoseInternal(APRTAETranscoderAndSender *, CMBaseObjectRef, Boolean)", 33554482, "%@ flushing hose [%{ptr}] (seq: %u, ts: %u)", *(v2 + 8), v1, v9, v10);
        }

        APSAudioTransportTimeMakeWithRTPTime();
        APSEndpointStreamAudioHoseProtocolGetProtocolID();
        ProtocolVTable = CMBaseObjectGetProtocolVTable();
        if (ProtocolVTable)
        {
          v12 = *(ProtocolVTable + 16);
          if (v12)
          {
            v13 = *(v12 + 24);
            if (v13)
            {
              *v16 = *v15;
              *&v16[3] = *&v15[12];
              v13(v1, v9, v16, 0, 0);
            }
          }
        }
      }

      CFRelease(v6);
    }

    else
    {
      realTimeAudioEngine_tas_addHoseDispatchInternal_cold_2();
    }

    return 0;
  }
}

unint64_t realTimeAudioEngine_updateArrivalToRenderTicksApplier(uint64_t a1, unint64_t *a2)
{
  result = APSGetFBOPropertyInt64();
  v4 = *a2;
  if (*a2 >= result)
  {
    v4 = result;
  }

  *a2 = v4;
  return result;
}

void realTimeAudioEngine_audioHoseRegistrarDeregisterHoseDispatchInternal(uint64_t *a1)
{
  realTimeAudioEngine_audioHoseRegistrarDeregisterHoseInternal(*a1, a1[1], a1[2]);
  if (*a1)
  {
    CFRelease(*a1);
  }

  v2 = a1[1];
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = a1[2];
  if (v3)
  {

    CFRelease(v3);
  }
}

__n128 realTimeAudioEngine_audioHoseRegistrarDeregisterHoseInternal(uint64_t a1, const void *a2, uint64_t a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APAudioEngineRealTime <= 50 && (gLogCategory_APAudioEngineRealTime != -1 || _LogCategory_Initialize()))
  {
    realTimeAudioEngine_audioHoseRegistrarDeregisterHoseInternal_cold_1(DerivedStorage);
  }

  v6 = (DerivedStorage + 168);
  if (CFSetContainsValue(*(DerivedStorage + 168), a2))
  {
    v8 = APSDispatchSyncTask();
    if (v8)
    {
      realTimeAudioEngine_audioHoseRegistrarDeregisterHoseInternal_cold_2(v8);
    }

    else
    {
      CFSetRemoveValue(*v6, a2);
      realTimeAudioEngine_updateArrivalToRenderTicks(a1);
      if (CFDictionaryGetInt64())
      {
        *(DerivedStorage + 528) = 0;
        CFSetApplyFunction(*(DerivedStorage + 168), realTimeAudioEngine_setEchoCancellationIsEnabledToHose, (DerivedStorage + 528));
      }

      v9 = *(*(CMBaseObjectGetVTable() + 8) + 56);
      if (v9)
      {
        v9(a2, *MEMORY[0x277CEA0C8], *MEMORY[0x277CBED10]);
      }

      if (gLogCategory_APAudioEngineRealTime <= 50 && (gLogCategory_APAudioEngineRealTime != -1 || _LogCategory_Initialize()))
      {
        realTimeAudioEngine_audioHoseRegistrarDeregisterHoseInternal_cold_3(DerivedStorage, (DerivedStorage + 168));
      }

      *(DerivedStorage + 392) = CFSetGetCount(*(DerivedStorage + 168));
    }
  }

  else
  {
    realTimeAudioEngine_audioHoseRegistrarDeregisterHoseInternal_cold_4(DerivedStorage, a2, v7);
  }

  if (!CFSetGetCount(*v6))
  {
    v11 = MEMORY[0x277CC08F0];
    result = *MEMORY[0x277CC08F0];
    *(DerivedStorage + 280) = *MEMORY[0x277CC08F0];
    *(DerivedStorage + 296) = *(v11 + 16);
    *(DerivedStorage + 304) = 1;
  }

  return result;
}

uint64_t realTimeAudioEngine_tas_removeHoseDispatchInternal(void *a1)
{
  v2 = *a1;
  v1 = a1[1];
  if (CFDictionaryContainsKey(*(*a1 + 304), v1))
  {
    CFDictionaryRemoveValue(*(v2 + 304), v1);
    Copy = CFDictionaryCreateCopy(*MEMORY[0x277CBECE8], *(v2 + 304));
    if (Copy)
    {
      v4 = Copy;
      APSCFRealTimeReadableSetValue();
      CFRelease(v4);
    }

    else
    {
      realTimeAudioEngine_tas_removeHoseDispatchInternal_cold_1();
    }

    return 0;
  }

  else
  {
    realTimeAudioEngine_tas_removeHoseDispatchInternal_cold_2(&v6);
    return v6;
  }
}

void realTimeAudioEngine_Resume(const void *a1, const void *a2, uint64_t (*a3)(const void *, uint64_t, uint64_t), uint64_t a4)
{
  CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APAudioEngineRealTime <= 50 && (gLogCategory_APAudioEngineRealTime != -1 || _LogCategory_Initialize()))
  {
    realTimeAudioEngine_Resume_cold_1();
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
    *(v8 + 2) = a3;
    *(v8 + 4) = a4;
    *(v8 + 10) = 0;
    v11 = APSDispatchSectionEnter();
    if (!v11)
    {
      return;
    }

    v12 = v11;
    realTimeAudioEngine_Resume_cold_2(v11, v8, v8 + 1);
  }

  else
  {
    realTimeAudioEngine_Resume_cold_3();
    v12 = 4294951816;
  }

  if (a3)
  {

    a3(a1, v12, a4);
  }
}

void realTimeAudioEngine_Suspend(const void *a1, const void *a2, uint64_t (*a3)(const void *, uint64_t, uint64_t), uint64_t a4)
{
  CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APAudioEngineRealTime <= 50 && (gLogCategory_APAudioEngineRealTime != -1 || _LogCategory_Initialize()))
  {
    realTimeAudioEngine_Suspend_cold_1();
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
    realTimeAudioEngine_Suspend_cold_2(v11, v8, v8 + 1);
  }

  else
  {
    realTimeAudioEngine_Suspend_cold_3();
    v12 = 4294951816;
  }

  if (a3)
  {

    a3(a1, v12, a4);
  }
}

uint64_t (*realTimeAudioEngine_SetEndpointStream(const void *a1, const void *a2, uint64_t (*a3)(const void *, uint64_t, uint64_t), uint64_t a4))(const void *, uint64_t, uint64_t)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v8 = malloc_type_malloc(0x28uLL, 0x10A0040DE786E1EuLL);
  if (!v8)
  {
    realTimeAudioEngine_SetEndpointStream_cold_2();
    v13 = 4294951816;
    goto LABEL_16;
  }

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
  if (gLogCategory_APAudioEngineRealTime <= 50 && (gLogCategory_APAudioEngineRealTime != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APAudioEngineRealTime, "void realTimeAudioEngine_SetEndpointStream(FigEndpointStreamAudioEngineRef, FigEndpointStreamRef, FigEndpointStreamAudioEngineSetEndpointStreamCallback, void *)", 33554482, "%@ Setting endpoint stream [%{ptr}]...", *(DerivedStorage + 32), a2);
  }

  result = APSDispatchSectionEnter();
  if (result)
  {
    v13 = result;
    realTimeAudioEngine_SetEndpointStream_cold_1(result, v9, v9 + 1);
LABEL_16:
    result = a3;
    if (a3)
    {

      return a3(a1, v13, a4);
    }
  }

  return result;
}

uint64_t realTimeAudioEngine_resumeSubPhase3_Internal(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APAudioEngineRealTime <= 40 && (gLogCategory_APAudioEngineRealTime != -1 || _LogCategory_Initialize()))
  {
    realTimeAudioEngine_resumeSubPhase3_Internal_cold_1();
  }

  if ((APSAudioFormatDescriptionGetAudioFormatIndex() & 0x20000000003C0000) != 0)
  {
    goto LABEL_25;
  }

  if (APSSettingsGetIntWithDefault())
  {
    IntWithDefault = APSSettingsGetIntWithDefault();
    if ((IntWithDefault & 0x80000000) != 0)
    {
      v9 = 4294895205;
      realTimeAudioEngine_resumeSubPhase3_Internal_cold_6();
      return v9;
    }

    v3 = (4 * IntWithDefault) | 1;
    v4 = *(DerivedStorage + 216);
    if (v4)
    {
      v5 = *(*(CMBaseObjectGetVTable() + 16) + 8);
      if (v5)
      {
        v6 = v5(v4);
      }

      else
      {
        v6 = 0;
      }

      v3 += v6;
    }

    if (*(DerivedStorage + 240) < v3)
    {
      v9 = 4294895205;
      realTimeAudioEngine_resumeSubPhase3_Internal_cold_5();
      return v9;
    }

    if (APSSettingsGetIntWithDefault() <= 0)
    {
      v9 = 4294895205;
      realTimeAudioEngine_resumeSubPhase3_Internal_cold_4();
      return v9;
    }

    if (gLogCategory_APAudioEngineRealTime <= 50 && (gLogCategory_APAudioEngineRealTime != -1 || _LogCategory_Initialize()))
    {
      realTimeAudioEngine_resumeSubPhase3_Internal_cold_2((DerivedStorage + 176));
    }

    v10 = APSSetFBOPropertyInt64();
    if (v10)
    {
      v9 = v10;
      realTimeAudioEngine_resumeSubPhase3_Internal_cold_3(v10);
      return v9;
    }

LABEL_25:
    dispatch_resume(*(DerivedStorage + 320));
    v9 = 0;
    *(DerivedStorage + 328) = 1;
    return v9;
  }

  CFPreferenceNumberWithDefault = FigGetCFPreferenceNumberWithDefault();
  if (gLogCategory_APAudioEngineRealTime <= 50 && (gLogCategory_APAudioEngineRealTime != -1 || _LogCategory_Initialize()))
  {
    realTimeAudioEngine_resumeSubPhase3_Internal_cold_7((DerivedStorage + 176));
  }

  if (CFPreferenceNumberWithDefault < 1)
  {
    goto LABEL_25;
  }

  v8 = APSSetFBOPropertyInt64();
  if (!v8)
  {
    goto LABEL_25;
  }

  v9 = v8;
  realTimeAudioEngine_resumeSubPhase3_Internal_cold_8(v8);
  return v9;
}

uint64_t realTimeAudioEngine_tas_Resume(uint64_t a1, const void *a2, const void *a3, const void *a4, const void *a5, const void *a6, const void *a7, const void *a8, const void *a9, const void *a10, const void *a11)
{
  FigSimpleMutexLock();
  if (*(a1 + 96))
  {
    realTimeAudioEngine_tas_Resume_cold_1();
LABEL_87:
    v57 = 4294950525;
    goto LABEL_72;
  }

  if (!a3)
  {
    realTimeAudioEngine_tas_Resume_cold_16();
    goto LABEL_87;
  }

  if (!a5)
  {
    realTimeAudioEngine_tas_Resume_cold_15();
    goto LABEL_87;
  }

  if (!a7)
  {
    realTimeAudioEngine_tas_Resume_cold_14();
    goto LABEL_87;
  }

  if (!a8)
  {
    realTimeAudioEngine_tas_Resume_cold_13();
    goto LABEL_87;
  }

  if (!a9)
  {
    realTimeAudioEngine_tas_Resume_cold_12();
    goto LABEL_87;
  }

  if (!a10)
  {
    realTimeAudioEngine_tas_Resume_cold_11();
    goto LABEL_87;
  }

  if (!a11)
  {
    realTimeAudioEngine_tas_Resume_cold_10();
    goto LABEL_87;
  }

  v59 = 0;
  v19 = *(a1 + 152);
  *(a1 + 152) = a2;
  if (a2)
  {
    CFRetain(a2);
  }

  if (v19)
  {
    CFRelease(v19);
  }

  *(a1 + 256) = 0;
  v20 = *(a1 + 160);
  *(a1 + 160) = a3;
  CFRetain(a3);
  if (v20)
  {
    CFRelease(v20);
  }

  v21 = *(a1 + 168);
  *(a1 + 168) = a4;
  if (a4)
  {
    CFRetain(a4);
  }

  if (v21)
  {
    CFRelease(v21);
  }

  v22 = *(a1 + 176);
  *(a1 + 176) = a5;
  CFRetain(a5);
  if (v22)
  {
    CFRelease(v22);
  }

  v23 = *(a1 + 184);
  *(a1 + 184) = a6;
  if (a6)
  {
    CFRetain(a6);
  }

  if (v23)
  {
    CFRelease(v23);
  }

  v24 = *(a1 + 192);
  *(a1 + 192) = a7;
  CFRetain(a7);
  if (v24)
  {
    CFRelease(v24);
  }

  v25 = *(a1 + 208);
  *(a1 + 208) = a8;
  CFRetain(a8);
  if (v25)
  {
    CFRelease(v25);
  }

  v26 = *(a1 + 200);
  *(a1 + 200) = a9;
  CFRetain(a9);
  if (v26)
  {
    CFRelease(v26);
  }

  v27 = *(a1 + 216);
  *(a1 + 216) = a10;
  CFRetain(a10);
  if (v27)
  {
    CFRelease(v27);
  }

  v28 = *(a1 + 224);
  *(a1 + 224) = a11;
  CFRetain(a11);
  if (v28)
  {
    CFRelease(v28);
  }

  IntWithDefault = APSSettingsGetIntWithDefault();
  v32 = MEMORY[0x277CBECE8];
  if (IntWithDefault)
  {
    if (gLogCategory_APAudioEngineRealTime <= 50 && (gLogCategory_APAudioEngineRealTime != -1 || _LogCategory_Initialize()))
    {
      realTimeAudioEngine_tas_Resume_cold_2(a1, v30, v31);
    }
  }

  else
  {
    v33 = *(a1 + 160);
    v34 = *(*(CMBaseObjectGetVTable() + 16) + 120);
    if (v34)
    {
      v35 = v34(v33, realTimeAudioEngine_tas_compressionSourceWriteDataCallback, a1);
      if (!v35)
      {
        goto LABEL_54;
      }
    }

    else
    {
      v35 = 4294954514;
    }

    if (gLogCategory_APAudioEngineRealTime <= 50 && (gLogCategory_APAudioEngineRealTime != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_APAudioEngineRealTime, "OSStatus realTimeAudioEngine_tas_ResumeInternal(APRTAETranscoderAndSender *, APSAudioFormatDescriptionRef, FigEndpointAudioSourceRef, APSCryptorRef, CMClockRef, CMTimebaseRef, CMTimebaseRef, APSRTPPacketHandlerRef, APTransportStreamSendBackingProviderRef, APMessageRingRef, APMessageRingRef)", 33554482, "%@ Failed to set AudioSource write handler (err: %#m). Falling back to audio timer.\n", *(a1 + 8), v35);
    }
  }

  v36 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, *(a1 + 104));
  *(a1 + 112) = v36;
  if (!v36)
  {
    realTimeAudioEngine_tas_Resume_cold_8();
    goto LABEL_78;
  }

  Mutable = CFArrayCreateMutable(*v32, 1, 0);
  *(a1 + 128) = Mutable;
  if (!Mutable)
  {
    realTimeAudioEngine_tas_Resume_cold_7();
    goto LABEL_78;
  }

  CFArrayInsertValueAtIndex(Mutable, 0, a1);
  v38 = *(a1 + 112);
  v39 = *(a1 + 128);
  if (v39)
  {
    v40 = CFRetain(v39);
  }

  else
  {
    v40 = 0;
  }

  dispatch_set_context(v38, v40);
  dispatch_source_set_event_handler_f(*(a1 + 112), realTimeAudioEngine_tas_transcodeAndSendTimerEntry);
  dispatch_source_set_cancel_handler_f(*(a1 + 112), FigCFRelease);
  dispatch_source_set_timer(*(a1 + 112), 0, 1000000 * *(a1 + 40), 0);
  dispatch_resume(*(a1 + 112));
  *(a1 + 120) = 1;
LABEL_54:
  v41 = *(a1 + 40);
  APSAudioFormatDescriptionGetSampleRate();
  v43 = v41 * v42;
  FramesPerPacket = APSAudioFormatDescriptionGetFramesPerPacket();
  v45 = v43 / (1000 * FramesPerPacket) + ((v43 / (1000 * FramesPerPacket)) >> 2);
  if (v45 <= 0xC)
  {
    v46 = 12;
  }

  else
  {
    v46 = v45;
  }

  *(a1 + 144) = v46;
  if (gLogCategory_APAudioEngineRealTime <= 50)
  {
    if (gLogCategory_APAudioEngineRealTime != -1)
    {
LABEL_59:
      v47 = *(a1 + 8);
      v48 = *(a1 + 40);
      ASBD = APSAudioFormatDescriptionGetASBD();
      LogPrintF(&gLogCategory_APAudioEngineRealTime, "OSStatus realTimeAudioEngine_tas_ResumeInternal(APRTAETranscoderAndSender *, APSAudioFormatDescriptionRef, FigEndpointAudioSourceRef, APSCryptorRef, CMClockRef, CMTimebaseRef, CMTimebaseRef, APSRTPPacketHandlerRef, APTransportStreamSendBackingProviderRef, APMessageRingRef, APMessageRingRef)", 33554482, "%@ maxAudioBurst = %u, interval = %u, format = %{asbd}\n", v47, v46, v48, ASBD);
      goto LABEL_61;
    }

    if (_LogCategory_Initialize())
    {
      v46 = *(a1 + 144);
      goto LABEL_59;
    }
  }

LABEL_61:
  v50 = *(a1 + 160);
  v51 = *(*(CMBaseObjectGetVTable() + 16) + 8);
  if (!v51)
  {
    v52 = 4294954514;
    v60 = -12782;
    goto LABEL_74;
  }

  v52 = v51(v50);
  v60 = v52;
  if (v52)
  {
LABEL_74:
    realTimeAudioEngine_tas_Resume_cold_6(v52);
    goto LABEL_77;
  }

  CMBaseObject = FigEndpointAudioSourceGetCMBaseObject();
  v54 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v54)
  {
    v55 = 4294954514;
    v60 = -12782;
    goto LABEL_76;
  }

  v55 = v54(CMBaseObject, @"AlgorithmicLatency", *v32, &v59);
  v60 = v55;
  if (v55)
  {
LABEL_76:
    realTimeAudioEngine_tas_Resume_cold_5(v55);
    goto LABEL_77;
  }

  *(a1 + 240) = -CFGetInt64Ranged();
  if (v60)
  {
    realTimeAudioEngine_tas_Resume_cold_3(v60);
    goto LABEL_77;
  }

  v56 = APSRealTimePTPClockCreate();
  v60 = v56;
  if (v56)
  {
    realTimeAudioEngine_tas_Resume_cold_4(v56);
LABEL_77:
    if (!v60)
    {
      goto LABEL_68;
    }

LABEL_78:
    realTimeAudioEngine_tas_SuspendInternal(a1);
    goto LABEL_68;
  }

  *(a1 + 96) = 1;
LABEL_68:
  if (v59)
  {
    CFRelease(v59);
  }

  v57 = v60;
  if (v60)
  {
    realTimeAudioEngine_tas_Resume_cold_9(v60);
  }

LABEL_72:
  FigSimpleMutexUnlock();
  return v57;
}

void realTimeAudioEngine_resumeComplete(CFTypeRef *a1)
{
  CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APAudioEngineRealTime <= 50 && (gLogCategory_APAudioEngineRealTime != -1 || _LogCategory_Initialize()))
  {
    realTimeAudioEngine_resumeComplete_cold_1();
  }

  v2 = a1[2];
  if (v2)
  {
    (v2)(*a1, *(a1 + 10), a1[4]);
  }

  APSDispatchSectionLeave();
  v3 = a1[1];
  if (v3)
  {
    CFRelease(v3);
  }

  if (*a1)
  {
    CFRelease(*a1);
  }

  free(a1);
}

void realTimeAudioEngine_apsRTPPacketHandlerCleanUp(CFTypeRef cf)
{
  if (cf)
  {
    CFRelease(cf);
  }
}

uint64_t realTimeAudioEngine_createRedundantAudioDataMessageBBuf(uint64_t a1, void *a2)
{
  v6 = 0;
  v3 = APTransportStreamSendBackingProviderAcquireBBuf();
  v4 = v3;
  if (v3)
  {
    realTimeAudioEngine_createRedundantAudioDataMessageBBuf_cold_1(v3, &v6);
  }

  else
  {
    *a2 = v6;
  }

  return v4;
}

uint64_t realTimeAudioEngine_updateHostRateAndAnchorTimeRelativeToRemoteRTPTimebase(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  outRelativeRate = NAN;
  v6 = **&MEMORY[0x277CC0898];
  v7 = v6;
  HostTimeClock = CMClockGetHostTimeClock();
  RelativeRateAndAnchorTime = CMSyncGetRelativeRateAndAnchorTime(HostTimeClock, *(DerivedStorage + 272), &outRelativeRate, &v6, &v7);
  if (RelativeRateAndAnchorTime)
  {
    return realTimeAudioEngine_updateHostRateAndAnchorTimeRelativeToRemoteRTPTimebase_cold_1(RelativeRateAndAnchorTime);
  }

  result = APSRealTimeReadableWrite();
  if (result)
  {
    return realTimeAudioEngine_updateHostRateAndAnchorTimeRelativeToRemoteRTPTimebase_cold_2(result);
  }

  return result;
}

uint64_t realTimeAudioEngine_serviceRenderDeadlineMessageQueue(uint64_t a1)
{
  CMBaseObjectGetDerivedStorage();
  v13 = 0;
  v14 = 0;
  result = APSAtomicMessageQueueReadMessage();
  if (result)
  {
    v11 = *MEMORY[0x277CC0898];
    v2 = *(MEMORY[0x277CC0898] + 16);
    do
    {
      memset(&v12, 0, sizeof(v12));
      v3 = v13;
      v4 = v14;
      DerivedStorage = CMBaseObjectGetDerivedStorage();
      *&v12.value = v11;
      v12.epoch = v2;
      *&v18.value = v11;
      v18.epoch = v2;
      *&v17.value = v11;
      v17.epoch = v2;
      v6 = *(DerivedStorage + 272);
      if (v6 && CMTimebaseGetRate(v6) != 0.0)
      {
        APSAudioFormatDescriptionGetSampleRate();
        v8 = v7;
        CMClockMakeHostTimeFromSystemUnits(&time, v3);
        HostTimeClock = CMClockGetHostTimeClock();
        CMSyncConvertTime(&lhs, &time, HostTimeClock, *(DerivedStorage + 272));
        v19 = *&lhs.timescale;
        time = lhs;
        CMTimeConvertScale(&lhs, &time, v8, kCMTimeRoundingMethod_RoundHalfAwayFromZero);
        if (v4 - LODWORD(lhs.value) >= 0)
        {
          v10 = (v4 - LODWORD(lhs.value));
        }

        else
        {
          v10 = (LODWORD(lhs.value) - v4);
        }

        CMTimeMake(&v18, ((*(DerivedStorage + 140) + *(DerivedStorage + 148)) * v8), v8);
        CMTimeMake(&v17, v10, v8);
        lhs = v18;
        time = v17;
        CMTimeSubtract(&v12, &lhs, &time);
      }

      if (v12.flags)
      {
        v18 = v12;
        CMTimeGetSeconds(&v18);
        APSStatsHistogramAddValue();
      }

      result = APSAtomicMessageQueueReadMessage();
    }

    while (result);
  }

  return result;
}

uint64_t realTimeAudioEngine_tas_compressionSourceWriteDataCallback(uint64_t a1, uint64_t a2, uint64_t a3)
{
  kdebug_trace();
  if (*(a3 + 80))
  {
    APSAtomicMessageQueueSendMessage();
    return APSRealTimeSignalRaise();
  }

  else
  {

    return realTimeAudioEngine_tas_transcodeAndSendEntry(a3);
  }
}

void realTimeAudioEngine_tas_SuspendInternal(uint64_t a1)
{
  *(a1 + 96) = 0;
  v2 = *(a1 + 112);
  if (v2)
  {
    dispatch_source_cancel(v2);
    if (!*(a1 + 120))
    {
      dispatch_resume(*(a1 + 112));
    }

    v3 = *(a1 + 112);
    if (v3)
    {
      dispatch_source_cancel(*(a1 + 112));
      dispatch_release(v3);
      *(a1 + 112) = 0;
    }

    v4 = *(a1 + 128);
    if (v4)
    {
      dispatch_sync_f(*(a1 + 104), v4, realTimeAudioEngine_tas_transcodeAndSendTimerInvalidate);
    }
  }

  *(a1 + 120) = 0;
  v5 = *(a1 + 160);
  if (v5)
  {
    v6 = *(*(CMBaseObjectGetVTable() + 16) + 16);
    if (v6)
    {
      v6(v5);
    }

    v7 = *(a1 + 160);
    v8 = *(*(CMBaseObjectGetVTable() + 16) + 120);
    if (v8)
    {
      v8(v7, 0, 0);
    }
  }

  *(a1 + 240) = 0;
  APSRealTimeWritableWrite();
    ;
  }

  v9 = *(a1 + 152);
  if (v9)
  {
    CFRelease(v9);
    *(a1 + 152) = 0;
  }

  *(a1 + 256) = 0;
  v10 = *(a1 + 160);
  if (v10)
  {
    CFRelease(v10);
    *(a1 + 160) = 0;
  }

  v11 = *(a1 + 168);
  if (v11)
  {
    CFRelease(v11);
    *(a1 + 168) = 0;
  }

  v12 = *(a1 + 176);
  if (v12)
  {
    CFRelease(v12);
    *(a1 + 176) = 0;
  }

  v13 = *(a1 + 184);
  if (v13)
  {
    CFRelease(v13);
    *(a1 + 184) = 0;
  }

  v14 = *(a1 + 192);
  if (v14)
  {
    CFRelease(v14);
    *(a1 + 192) = 0;
  }

  v15 = *(a1 + 208);
  if (v15)
  {
    CFRelease(v15);
    *(a1 + 208) = 0;
  }

  v16 = *(a1 + 200);
  if (v16)
  {
    CFRelease(v16);
    *(a1 + 200) = 0;
  }

  v17 = *(a1 + 216);
  if (v17)
  {
    CFRelease(v17);
    *(a1 + 216) = 0;
  }

  v18 = *(a1 + 224);
  if (v18)
  {
    CFRelease(v18);
    *(a1 + 224) = 0;
  }

  v19 = *(a1 + 128);
  if (v19)
  {
    CFRelease(v19);
    *(a1 + 128) = 0;
  }

  v20 = *(a1 + 264);
  if (v20)
  {
    CFRelease(v20);
    *(a1 + 264) = 0;
  }
}

void realTimeAudioEngine_tas_flushHoses(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 80))
  {

    realTimeAudioEngine_tas_hosesFlushHoses(a1, a3, a2);
  }

  else
  {
    APSAtomicMessageQueueSendMessage();
    APSRealTimeSignalRaise();
  }
}

void realTimeAudioEngine_tas_hosesFlushHoses(uint64_t a1, uint64_t a2, uint64_t a3)
{
  LODWORD(context) = a2;
  HIDWORD(context) = a3;
  if (gLogCategory_APAudioEngineRealTime <= 50 && (gLogCategory_APAudioEngineRealTime != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APAudioEngineRealTime, "void realTimeAudioEngine_tas_hosesFlushHoses(APRTAETranscoderAndSender *, uint32_t, uint16_t)", 33554482, "%@ flushing all hoses (seq: %u, ts: %u)", *(a1 + 8), a3, a2, context);
  }

  CFDictionaryApplyFunction(*(a1 + 304), realTimeAudioEngine_tas_flushHosesDictionaryCallback, &context);
}

uint64_t realTimeAudioEngine_tas_flushHosesDictionaryCallback(uint64_t a1, uint64_t a2, unsigned int *a3)
{
  v4 = *(a3 + 2);
  APSAudioTransportTimeMakeWithRTPTime();
  APSEndpointStreamAudioHoseProtocolGetProtocolID();
  result = CMBaseObjectGetProtocolVTable();
  if (result)
  {
    v7 = *(result + 16);
    result += 16;
    v6 = v7;
    if (v7)
    {
      v8 = *(v6 + 24);
      if (v8)
      {
        v10[0] = *v9;
        *(v10 + 12) = *&v9[12];
        return v8(a1, v4, v10, 0, 0);
      }
    }
  }

  return result;
}

uint64_t realTimeAudioEngine_tas_createAndEncryptAudioDataMessage(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4, CFTypeRef *a5)
{
  v28 = 0;
  theBuffer = 0;
  dataPointerOut = 0;
  v27 = 0;
  v24 = 0;
  lengthAtOffsetOut = 0;
  if (a4 && (v9 = *(*(CMBaseObjectGetVTable() + 16) + 8)) != 0)
  {
    v10 = v9(a4);
  }

  else
  {
    v10 = 0;
  }

  APSRealTimeAllocatorGetDefault();
  ReferencingBBufWithAudioDataLength = APSTransportMessageCreateReferencingBBufWithAudioDataLength();
  if (ReferencingBBufWithAudioDataLength)
  {
    v22 = ReferencingBBufWithAudioDataLength;
    realTimeAudioEngine_tas_createAndEncryptAudioDataMessage_cold_1(ReferencingBBufWithAudioDataLength);
    goto LABEL_19;
  }

  if (!a4)
  {
    goto LABEL_15;
  }

  AudioAADPointer = APSTransportMessageGetAudioAADPointer();
  if (AudioAADPointer)
  {
    v22 = AudioAADPointer;
    realTimeAudioEngine_tas_createAndEncryptAudioDataMessage_cold_2(AudioAADPointer);
    goto LABEL_19;
  }

  v13 = a3;
  DataPointer = CMBlockBufferGetDataPointer(theBuffer, a3 + 10, &lengthAtOffsetOut, 0, &dataPointerOut);
  if (DataPointer)
  {
    v22 = DataPointer;
    realTimeAudioEngine_tas_createAndEncryptAudioDataMessage_cold_3(DataPointer);
    goto LABEL_19;
  }

  if (v10)
  {
    v15 = CMBlockBufferGetDataPointer(theBuffer, a2 + 10, 0, 0, &v24);
    if (v15)
    {
      v22 = v15;
      realTimeAudioEngine_tas_createAndEncryptAudioDataMessage_cold_4(v15);
      goto LABEL_19;
    }

    v16 = v24;
  }

  else
  {
    v16 = 0;
  }

  v18 = v27;
  v17 = v28;
  v19 = dataPointerOut;
  v20 = *(*(CMBaseObjectGetVTable() + 16) + 16);
  if (!v20)
  {
    v22 = 4294954514;
LABEL_18:
    APSLogErrorAt();
    goto LABEL_19;
  }

  v21 = v20(a4, v17, v18, v19, a2 - v13, v19, a2 - v13, v16, v10);
  if (v21)
  {
    v22 = v21;
    goto LABEL_18;
  }

LABEL_15:
  v22 = 0;
  if (a5)
  {
    *a5 = CFRetain(theBuffer);
  }

LABEL_19:
  if (theBuffer)
  {
    CFRelease(theBuffer);
  }

  return v22;
}

void realTimeAudioEngine_suspendEndpointStreamInternal(void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v3 = DerivedStorage;
  if (!*(DerivedStorage + 136))
  {
    Mutable = 0;
    v6 = 0;
    v10 = 0;
    goto LABEL_10;
  }

  v4 = *(DerivedStorage + 200);
  if (v4)
  {
    v5 = CFRetain(v4);
    if (v5)
    {
      v6 = v5;
      Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
      if (Mutable)
      {
        FigCFDictionaryGetValue();
        FigCFDictionarySetValue();
        v8 = *(*(CMBaseObjectGetVTable() + 16) + 8);
        if (v8)
        {
          v9 = v8(v6, Mutable, realTimeAudioEngine_endpointStreamSuspendCallback, a1);
          if (!v9)
          {
LABEL_11:
            CFRelease(v6);
LABEL_12:
            if (Mutable)
            {

              CFRelease(Mutable);
            }

            return;
          }

          v10 = v9;
        }

        else
        {
          v10 = -12782;
        }

        APSLogErrorAt();
      }

      else
      {
        realTimeAudioEngine_suspendEndpointStreamInternal_cold_1();
        v10 = -72070;
      }

LABEL_10:
      *(a1 + 10) = v10;
      dispatch_async_f(*(v3 + 80), a1, realTimeAudioEngine_suspendComplete);
      if (!v6)
      {
        goto LABEL_12;
      }

      goto LABEL_11;
    }
  }

  realTimeAudioEngine_suspendInternal(a1);
}

void realTimeAudioEngine_endpointStreamSuspendCallback(uint64_t a1, int a2, _DWORD *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v6 = realTimeAudioEngine_suspendInternal;
  v7 = 128;
  if (a2 != -16762 && a2)
  {
    a3[10] = a2;
    v6 = realTimeAudioEngine_suspendComplete;
    v7 = 80;
  }

  v8 = *(DerivedStorage + v7);

  dispatch_async_f(v8, a3, v6);
}

void realTimeAudioEngine_suspendComplete(CFTypeRef *a1)
{
  CMBaseObjectGetDerivedStorage();
  v2 = a1[3];
  if (v2)
  {
    (v2)(*a1, *(a1 + 10), a1[4]);
  }

  APSDispatchSectionLeave();
  v3 = a1[1];
  if (v3)
  {
    CFRelease(v3);
  }

  if (*a1)
  {
    CFRelease(*a1);
  }

  free(a1);
}

void realTimeAudioEngine_endpointStreamResumeInternal(void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v3 = DerivedStorage;
  if (!*(DerivedStorage + 136))
  {
    realTimeAudioEngine_endpointStreamResumeInternal_cold_7();
    v13 = -15485;
    goto LABEL_23;
  }

  v4 = a1[1];
  if (*(DerivedStorage + 200) == v4)
  {
    realTimeAudioEngine_endpointStreamResumeInternal_cold_6();
    goto LABEL_22;
  }

  if (!v4)
  {
LABEL_22:
    v13 = 0;
    goto LABEL_23;
  }

  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (Mutable)
  {
    v6 = Mutable;
    FigCFDictionarySetValue();
    FigCFDictionarySetValue();
    FigCFDictionarySetValue();
    FigCFDictionarySetValue();
    v7 = FigCFDictionarySetInt32();
    if (v7)
    {
      v13 = v7;
      realTimeAudioEngine_endpointStreamResumeInternal_cold_1(v7);
    }

    else
    {
      FigCFDictionarySetValue();
      v8 = FigCFDictionarySetFloat();
      if (v8)
      {
        v13 = v8;
        realTimeAudioEngine_endpointStreamResumeInternal_cold_2(v8);
      }

      else
      {
        v9 = FigCFDictionarySetFloat();
        if (v9)
        {
          v13 = v9;
          realTimeAudioEngine_endpointStreamResumeInternal_cold_3(v9);
        }

        else
        {
          if (gLogCategory_APAudioEngineRealTime <= 50 && (gLogCategory_APAudioEngineRealTime != -1 || _LogCategory_Initialize()))
          {
            realTimeAudioEngine_endpointStreamResumeInternal_cold_4(v3, v3 + 140, (a1 + 1));
          }

          v10 = a1[1];
          v11 = *(*(CMBaseObjectGetVTable() + 16) + 16);
          if (v11)
          {
            v12 = v11(v10, v6, realTimeAudioEngine_endpointStreamResumeCallback, a1);
            if (!v12)
            {
              FigCFDictionarySetValue();

              CFRelease(v6);
              return;
            }

            v13 = v12;
          }

          else
          {
            v13 = -12782;
          }

          APSLogErrorAt();
        }
      }
    }

    CFRelease(v6);
  }

  else
  {
    realTimeAudioEngine_endpointStreamResumeInternal_cold_5();
    v13 = -15480;
  }

LABEL_23:
  *(a1 + 8) = v13;
  v14 = *(v3 + 80);

  dispatch_async_f(v14, a1, realTimeAudioEngine_setEndpointStreamCallback);
}

void realTimeAudioEngine_endpointStreamResumeCallback(uint64_t a1, int a2, _DWORD *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a2)
  {
    a3[8] = a2;
    v6 = *(a3 + 1);
    v7 = *(*(CMBaseObjectGetVTable() + 16) + 8);
    if (v7)
    {

      v7(v6, 0, realTimeAudioEngine_endpointStreamResumeWithErrorSuspendCallback, a3);
    }
  }

  else
  {
    v8 = *(DerivedStorage + 128);

    dispatch_async_f(v8, a3, realTimeAudioEngine_setEndpointStreamInternal);
  }
}

void realTimeAudioEngine_setEndpointStreamCallback(void *a1)
{
  CMBaseObjectGetDerivedStorage();
  v2 = a1[2];
  if (v2)
  {
    v2(*a1, *(a1 + 8), a1[3]);
  }

  APSDispatchSectionLeave();
  if (*a1)
  {
    CFRelease(*a1);
  }

  v3 = a1[1];
  if (v3)
  {
    CFRelease(v3);
  }

  free(a1);
}

void realTimeAudioEngine_endpointStreamResumeWithErrorSuspendCallback(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(CMBaseObjectGetDerivedStorage() + 80);

  dispatch_async_f(v4, a3, realTimeAudioEngine_setEndpointStreamCallback);
}

CMTime *OUTLINED_FUNCTION_15_1@<X0>(CMTime *a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, CMTime *time, uint64_t time_8, uint64_t time_16)
{
  v18 = *(v16 - 104);
  time = a1;
  time_8 = v18;
  time_16 = v14;

  return CMTimeConvertScale((v16 - 112), &time, v15, kCMTimeRoundingMethod_RoundHalfAwayFromZero);
}

uint64_t OUTLINED_FUNCTION_29(uint64_t a1, uint64_t a2)
{

  return APSSignalErrorAt();
}

void sub_2220EF550(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getCRCarPlayPreferencesClass_block_invoke(uint64_t a1)
{
  v6 = *MEMORY[0x277D85DE8];
  v3[0] = 0;
  if (!CarKitLibraryCore_frameworkLibrary)
  {
    v3[1] = MEMORY[0x277D85DD0];
    v3[2] = 3221225472;
    v3[3] = __CarKitLibraryCore_block_invoke;
    v3[4] = &__block_descriptor_40_e5_v8__0l;
    v3[5] = v3;
    v4 = xmmword_27849CAA8;
    v5 = 0;
    CarKitLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  if (!CarKitLibraryCore_frameworkLibrary)
  {
    __getCRCarPlayPreferencesClass_block_invoke_cold_2(v3);
  }

  if (v3[0])
  {
    free(v3[0]);
  }

  result = objc_getClass("CRCarPlayPreferences");
  *(*(*(a1 + 32) + 8) + 40) = result;
  if (!*(*(*(a1 + 32) + 8) + 40))
  {
    __getCRCarPlayPreferencesClass_block_invoke_cold_1();
  }

  getCRCarPlayPreferencesClass_softClass = *(*(*(a1 + 32) + 8) + 40);
  return result;
}

uint64_t __CarKitLibraryCore_block_invoke(uint64_t a1)
{
  result = _sl_dlopen();
  CarKitLibraryCore_frameworkLibrary = result;
  return result;
}

uint64_t APKeyHolderLegacyCreate(uint64_t a1, const void *a2, const void *a3, CFTypeRef *a4)
{
  cf = 0;
  APSKeyHolderGetClassID();
  v7 = CMDerivedObjectCreate();
  if (v7)
  {
    v12 = v7;
    APKeyHolderLegacyCreate_cold_1(v7);
  }

  else
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    DerivedStorage[1] = a3;
    if (a3)
    {
      CFRetain(a3);
    }

    *DerivedStorage = a2;
    if (a2)
    {
      CFRetain(a2);
    }

    v9 = RandomBytes();
    if (v9)
    {
      v12 = v9;
      APKeyHolderLegacyCreate_cold_2(v9);
    }

    else
    {
      v10 = RandomBytes();
      if (v10)
      {
        v12 = v10;
        APKeyHolderLegacyCreate_cold_3(v10);
      }

      else
      {
        v11 = APSCreateSecureMemAllocator();
        DerivedStorage[6] = v11;
        if (v11)
        {
          if (gLogCategory_APKeyHolderLegacy <= 30 && (gLogCategory_APKeyHolderLegacy != -1 || _LogCategory_Initialize()))
          {
            APKeyHolderLegacyCreate_cold_4(&cf);
          }

          v12 = 0;
          *a4 = cf;
          return v12;
        }

        APKeyHolderLegacyCreate_cold_5();
        v12 = 4294895576;
      }
    }
  }

  if (cf)
  {
    CFRelease(cf);
  }

  return v12;
}

void legacyKeyHolder_Finalize(const void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APKeyHolderLegacy <= 30 && (gLogCategory_APKeyHolderLegacy != -1 || _LogCategory_Initialize()))
  {
    legacyKeyHolder_Finalize_cold_1(a1);
  }

  for (i = 16; i != 32; ++i)
  {
    *(DerivedStorage + i) = 0;
  }

  do
  {
    *(DerivedStorage + i++) = 0;
  }

  while (i != 48);
  v4 = *(DerivedStorage + 8);
  if (v4)
  {
    CFRelease(v4);
    *(DerivedStorage + 8) = 0;
  }

  if (*DerivedStorage)
  {
    CFRelease(*DerivedStorage);
    *DerivedStorage = 0;
  }

  v5 = *(DerivedStorage + 48);
  if (v5)
  {
    CFRelease(v5);
    *(DerivedStorage + 48) = 0;
  }
}

__CFString *legacyKeyHolder_CopyDebugDescription(uint64_t a1)
{
  Mutable = CFStringCreateMutable(*MEMORY[0x277CBECE8], 0);
  CFStringAppendFormat(Mutable, 0, @"<APKeyHolder %p>", a1);
  return Mutable;
}

uint64_t legacyKeyHolder_CopyProperty(uint64_t a1, const void *a2, uint64_t a3, void *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APKeyHolderLegacy <= 10 && (gLogCategory_APKeyHolderLegacy != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APKeyHolderLegacy, "OSStatus legacyKeyHolder_CopyProperty(CMBaseObjectRef, CFStringRef, CFAllocatorRef, void *)", 33554442, "[%p] %###s propertyKey: '%@'\n", a1, "OSStatus legacyKeyHolder_CopyProperty(CMBaseObjectRef, CFStringRef, CFAllocatorRef, void *)", a2);
  }

  if (CFEqual(a2, @"HasPairingClient"))
  {
    v8 = MEMORY[0x277CBED28];
    if (!*DerivedStorage)
    {
      v8 = MEMORY[0x277CBED10];
    }

    v9 = CFRetain(*v8);
    result = 0;
    *a4 = v9;
  }

  else
  {
    if (gLogCategory_APKeyHolderLegacy <= 90 && (gLogCategory_APKeyHolderLegacy != -1 || _LogCategory_Initialize()))
    {
      legacyKeyHolder_CopyProperty_cold_1(a2);
    }

    return 4294954512;
  }

  return result;
}

uint64_t legacyKeyHolder_GetAuthenticationType(uint64_t a1)
{
  v1 = *(CMBaseObjectGetDerivedStorage() + 8);
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

uint64_t legacyKeyHolder_CopyMasterAESKeyAndIV(uint64_t a1, CFDataRef *a2, CFDataRef *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v6 = CFDataCreate(*(DerivedStorage + 48), (DerivedStorage + 16), 16);
  if (v6)
  {
    v7 = v6;
    v8 = CFDataCreate(*(DerivedStorage + 48), (DerivedStorage + 32), 16);
    if (v8)
    {
      v9 = 0;
      *a2 = v7;
      *a3 = v8;
    }

    else
    {
      v9 = 4294895576;
      legacyKeyHolder_CopyMasterAESKeyAndIV_cold_1(v7);
    }
  }

  else
  {
    v9 = 4294895576;
    legacyKeyHolder_CopyMasterAESKeyAndIV_cold_2();
  }

  return v9;
}

uint64_t legacyKeyHolder_CreateEncryptedMasterAESKeyAndIV(uint64_t a1, CFTypeRef *a2, CFDataRef *a3)
{
  cf = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v6 = CFDataCreate(*(DerivedStorage + 48), (DerivedStorage + 16), 16);
  if (v6)
  {
    v7 = v6;
    v8 = *(DerivedStorage + 8);
    if (v8)
    {
      v9 = *(DerivedStorage + 48);
      v10 = *(*(CMBaseObjectGetVTable() + 16) + 24);
      if (v10)
      {
        v10(v8, v7, v9, &cf);
      }
    }

    else
    {
      cf = v6;
      v7 = 0;
    }

    v11 = CFDataCreate(*(DerivedStorage + 48), (DerivedStorage + 32), 16);
    if (v11)
    {
      v12 = 0;
      *a2 = cf;
      cf = 0;
      *a3 = v11;
      if (!v7)
      {
        goto LABEL_9;
      }

      goto LABEL_8;
    }

    v12 = 4294895576;
    legacyKeyHolder_CreateEncryptedMasterAESKeyAndIV_cold_1();
    if (v7)
    {
LABEL_8:
      CFRelease(v7);
    }
  }

  else
  {
    v12 = 4294895576;
    legacyKeyHolder_CreateEncryptedMasterAESKeyAndIV_cold_2();
  }

LABEL_9:
  if (cf)
  {
    CFRelease(cf);
  }

  return v12;
}

uint64_t legacyKeyHolder_UpdateMasterAESKeyAfterSharing(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v2 = *(DerivedStorage + 8);
  if (!v2)
  {
    return 0;
  }

  v3 = DerivedStorage;
  v4 = *(*(CMBaseObjectGetVTable() + 16) + 8);
  if (!v4)
  {
    return 0;
  }

  if (v4(v2) != 4)
  {
    return 0;
  }

  v5 = *v3;
  if (!*v3)
  {
    return 0;
  }

  v6 = *(*(CMBaseObjectGetVTable() + 16) + 8);
  if (!v6)
  {
    v7 = 4294954514;
LABEL_11:
    APSLogErrorAt();
    return v7;
  }

  v7 = v6(v5, v3 + 2, 16, 0, 0, 16, v3 + 2);
  if (v7)
  {
    goto LABEL_11;
  }

  return v7;
}

uint64_t legacyKeyHolder_CreateDerivedAESKeyAndIVForLegacyStream(uint64_t a1, uint64_t a2, CFTypeRef *a3, CFTypeRef *a4)
{
  v18 = 0;
  v19 = 0;
  v16 = 0;
  cf = 0;
  v8 = ASPrintF(&v19, "%s%llu", "AirPlayStreamKey", a2);
  v9 = ASPrintF(&v18, "%s%llu", "AirPlayStreamIV", a2);
  DerivedKeyLegacy = legacyKeyHolder_createDerivedKeyLegacy(a1, v19, v8, &cf);
  if (DerivedKeyLegacy)
  {
    v12 = DerivedKeyLegacy;
    legacyKeyHolder_CreateDerivedAESKeyAndIVForLegacyStream_cold_1(DerivedKeyLegacy);
  }

  else
  {
    v11 = legacyKeyHolder_createDerivedKeyLegacy(a1, v18, v9, &v16);
    if (v11)
    {
      v12 = v11;
      legacyKeyHolder_CreateDerivedAESKeyAndIVForLegacyStream_cold_2(v11);
    }

    else
    {
      if (a3)
      {
        *a3 = cf;
        cf = 0;
      }

      v12 = 0;
      if (a4)
      {
        *a4 = v16;
        v16 = 0;
      }
    }
  }

  if (v8)
  {
    v13 = v19;
    do
    {
      *v13++ = 0;
      --v8;
    }

    while (v8);
  }

  if (v9)
  {
    v14 = v18;
    do
    {
      *v14++ = 0;
      --v9;
    }

    while (v9);
  }

  if (v19)
  {
    free(v19);
    v19 = 0;
  }

  if (v18)
  {
    free(v18);
    v18 = 0;
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (v16)
  {
    CFRelease(v16);
  }

  return v12;
}

uint64_t legacyKeyHolder_CreateDerivedKey(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, CFIndex a6, __CFData **a7)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  Mutable = CFDataCreateMutable(*(DerivedStorage + 48), a6);
  if (!Mutable)
  {
    legacyKeyHolder_CreateDerivedKey_cold_2();
    return 4294895576;
  }

  v15 = Mutable;
  CFDataSetLength(Mutable, a6);
  v16 = *DerivedStorage;
  if (!v16)
  {
    v20 = 4294895575;
    legacyKeyHolder_CreateDerivedKey_cold_1();
    goto LABEL_9;
  }

  MutableBytePtr = CFDataGetMutableBytePtr(v15);
  v18 = *(*(CMBaseObjectGetVTable() + 16) + 8);
  if (!v18)
  {
    v20 = 4294954514;
LABEL_8:
    APSLogErrorAt();
    goto LABEL_9;
  }

  v19 = v18(v16, a2, a3, a4, a5, a6, MutableBytePtr);
  if (v19)
  {
    v20 = v19;
    goto LABEL_8;
  }

  v20 = 0;
  if (!a7)
  {
LABEL_9:
    CFRelease(v15);
    return v20;
  }

  *a7 = v15;
  return v20;
}

uint64_t legacyKeyHolder_createDerivedKeyLegacy(uint64_t a1, const void *a2, CC_LONG a3, __CFData **a4)
{
  v15 = *MEMORY[0x277D85DE8];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  memset(&v13, 0, sizeof(v13));
  Mutable = CFDataCreateMutable(*(DerivedStorage + 48), 16);
  if (Mutable)
  {
    v9 = Mutable;
    CFDataSetLength(Mutable, 16);
    CC_SHA512_Init(&v13);
    CC_SHA512_Update(&v13, a2, a3);
    CC_SHA512_Update(&v13, (DerivedStorage + 16), 0x10u);
    CC_SHA512_Final(md, &v13);
    MutableBytePtr = CFDataGetMutableBytePtr(v9);
    v11 = 0;
    *MutableBytePtr = *md;
    do
    {
      md[v11++] = 0;
    }

    while (v11 != 64);
    if (a4)
    {
      result = 0;
      *a4 = v9;
    }

    else
    {
      CFRelease(v9);
      return 0;
    }
  }

  else
  {
    legacyKeyHolder_createDerivedKeyLegacy_cold_1();
    return 4294895576;
  }

  return result;
}

uint64_t APAuthenticationClientGetClassID(uint64_t a1, uint64_t a2)
{
  if (_MergedGlobals_10 != -1)
  {
    APAuthenticationClientGetClassID_cold_1();
  }

  return qword_280FB1AD8;
}

uint64_t authenticationClient_registerBaseClass(uint64_t a1)
{
  ClassID = CMBaseGetClassID();

  return MEMORY[0x282112448](&authenticationClient_registerBaseClass_sClassDesc, ClassID, 1, a1);
}

void APDemoEndpointUIEventChannelInit(uint64_t a1)
{
  v22[2] = *MEMORY[0x277D85DE8];
  if (demoUIEventChannelGetShared_once != -1)
  {
    APDemoEndpointUIEventChannelInit_cold_1();
  }

  v2 = demoUIEventChannelGetShared_channel;
  cf = 0;
  v20 = 0;
  if (demoUIEventChannelGetShared_channel)
  {
    FigSimpleMutexLock();
    if (a1)
    {
      FigEndpointExtendedGetClassID();
      if (CMBaseObjectIsMemberOfClass())
      {
        if (v2[1])
        {
          v3 = FigCFWeakReferenceHolderCopyReferencedObject();
          if (v3)
          {
            v4 = v3;
            if (gLogCategory_APDemoManager <= 50 && (gLogCategory_APDemoManager != -1 || _LogCategory_Initialize()))
            {
              LogPrintF(&gLogCategory_APDemoManager, "void APDemoEndpointUIEventChannelInit(FigEndpointRef)", 33554482, "Closing old UI event comm channel %@ (if it exists) for demo endpoint %{ptr}\n", v2[2], v4);
            }

            v6 = v2[2];
            v7 = *(*(CMBaseObjectGetVTable() + 24) + 104);
            if (v7)
            {
              v7(v4, v6);
            }

            CFRelease(v4);
          }

          demoUIEventChannelClear(v2);
        }

        CMBaseObject = FigEndpointGetCMBaseObject();
        v9 = *(*(CMBaseObjectGetVTable() + 8) + 48);
        if (v9)
        {
          v10 = *MEMORY[0x277CBECE8];
          v11 = v9(CMBaseObject, @"EndpointDescription", *MEMORY[0x277CBECE8], &v20);
          if (!v11)
          {
            if (v20)
            {
              if (APSGetFBOPropertyInt64())
              {
                Mutable = CFDictionaryCreateMutable(v10, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
                CFDictionarySetValue(Mutable, *MEMORY[0x277CC1618], *MEMORY[0x277CC1610]);
                CFDictionarySetInt64();
                CFDictionarySetInt64();
                v12 = *(*(CMBaseObjectGetVTable() + 24) + 88);
                if (v12)
                {
                  v13 = v12(a1, Mutable, &cf);
                  if (!v13)
                  {
                    v14 = FigCFWeakReferenceHolderCreateWithReferencedObject();
                    v15 = v2[2];
                    v16 = cf;
                    v2[1] = v14;
                    v2[2] = v16;
                    if (v16)
                    {
                      CFRetain(v16);
                    }

                    if (v15)
                    {
                      CFRelease(v15);
                    }

                    if (gLogCategory_APDemoManager <= 50 && (gLogCategory_APDemoManager != -1 || _LogCategory_Initialize()))
                    {
                      LogPrintF(&gLogCategory_APDemoManager, "void APDemoEndpointUIEventChannelInit(FigEndpointRef)", 33554482, "Created UI event comm channel %@ for demo endpoint %{ptr}\n", cf, a1);
                    }

                    v17 = objc_autoreleasePoolPush();
                    if (demoUIEventChannelGetShared_once != -1)
                    {
                      APDemoEndpointUIEventChannelInit_cold_2();
                    }

                    v18 = demoUIEventChannelGetShared_channel;
                    if (demoUIEventChannelGetShared_channel)
                    {
                      if (*(demoUIEventChannelGetShared_channel + 24))
                      {
                        if (gLogCategory_APDemoManager <= 90 && (gLogCategory_APDemoManager != -1 || _LogCategory_Initialize()))
                        {
                          APDemoEndpointUIEventChannelInit_cold_3();
                        }
                      }

                      else
                      {
                        v21[0] = [MEMORY[0x277CCABB0] numberWithInteger:65291];
                        v22[0] = @"PrimaryUsagePage";
                        v21[1] = [MEMORY[0x277CCABB0] numberWithInteger:65281];
                        v22[1] = @"PrimaryUsagePage";
                        [MEMORY[0x277CBEAC0] dictionaryWithObjects:v22 forKeys:v21 count:2];
                        *(v18 + 24) = IOHIDEventSystemClientCreate();
                        IOHIDEventSystemClientSetMatching();
                        IOHIDEventSystemClientRegisterEventCallback();
                        CFRunLoopGetMain();
                        IOHIDEventSystemClientScheduleWithRunLoop();
                      }
                    }

                    objc_autoreleasePoolPop(v17);
                    goto LABEL_42;
                  }
                }

                else
                {
                  v13 = 4294954514;
                }

                APDemoEndpointUIEventChannelInit_cold_4(v13);
LABEL_42:
                FigSimpleMutexUnlock();
                if (v20)
                {
                  CFRelease(v20);
                }

                if (Mutable)
                {
                  CFRelease(Mutable);
                }

                if (cf)
                {
                  CFRelease(cf);
                }

                return;
              }
            }

            else
            {
              APDemoEndpointUIEventChannelInit_cold_5();
            }

LABEL_12:
            Mutable = 0;
            goto LABEL_42;
          }
        }

        else
        {
          v11 = 4294954514;
        }

        APDemoEndpointUIEventChannelInit_cold_6(v11);
        goto LABEL_12;
      }
    }

    APSLogErrorAt();
    goto LABEL_12;
  }
}

void demoUIEventChannelClear(void *a1)
{
  v2 = a1[1];
  if (v2)
  {
    CFRelease(v2);
    a1[1] = 0;
  }

  v3 = a1[2];
  if (v3)
  {
    CFRelease(v3);
    a1[2] = 0;
  }

  if (a1[3])
  {
    CFRunLoopGetMain();
    IOHIDEventSystemClientUnscheduleWithRunLoop();
    IOHIDEventSystemClientUnregisterEventCallback();
    v4 = a1[3];
    if (v4)
    {
      CFRelease(v4);
      a1[3] = 0;
    }
  }
}

uint64_t __demoUIEventChannelGetShared_block_invoke()
{
  result = APSIsDemoModeEnabled();
  if (result)
  {
    demoUIEventChannelGetShared_channel = malloc_type_calloc(1uLL, 0x20uLL, 0x60040CD5974ACuLL);
    result = FigSimpleMutexCreate();
    *demoUIEventChannelGetShared_channel = result;
    if (gLogCategory_APDemoManager <= 50)
    {
      if (gLogCategory_APDemoManager != -1)
      {
        return __demoUIEventChannelGetShared_block_invoke_cold_1();
      }

      result = _LogCategory_Initialize();
      if (result)
      {
        return __demoUIEventChannelGetShared_block_invoke_cold_1();
      }
    }
  }

  return result;
}

void demoHIDEventCallback(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = objc_autoreleasePoolPush();
  v18 = 0;
  if (IOHIDEventGetType() == 6)
  {
    goto LABEL_2;
  }

  if (IOHIDEventGetType() == 3)
  {
    IntegerValue = IOHIDEventGetIntegerValue();
    v6 = IOHIDEventGetIntegerValue();
    if (IntegerValue != 45)
    {
      goto LABEL_2;
    }

    v7 = v6 == 1;
    v8 = [MEMORY[0x277CBEB38] dictionary];
    [v8 setValue:@"BtnRingerPress" forKey:@"DataEventType"];
    [v8 setValue:objc_msgSend(MEMORY[0x277CCABB0] forKey:{"numberWithBool:", v7), @"DataValue"}];
    if (gLogCategory_APDemoManager <= 30 && (gLogCategory_APDemoManager != -1 || _LogCategory_Initialize()))
    {
      demoHIDEventCallback_cold_1(v8);
    }

    v9 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:v8 requiringSecureCoding:1 error:&v18];
    if (v18)
    {
      demoHIDEventCallback_cold_2();
      goto LABEL_31;
    }

    v10 = v9;
    if (!v9)
    {
      goto LABEL_2;
    }

    if (demoUIEventChannelGetShared_once != -1)
    {
      APDemoEndpointUIEventChannelInit_cold_2();
    }

    v11 = demoUIEventChannelGetShared_channel;
    if (!demoUIEventChannelGetShared_channel)
    {
      goto LABEL_31;
    }

    FigSimpleMutexLock();
    if (v11[1])
    {
      v12 = FigCFWeakReferenceHolderCopyReferencedObject();
      if (v12)
      {
        v13 = v12;
        v14 = v11[2];
        if (v14)
        {
          v15 = *(*(CMBaseObjectGetVTable() + 24) + 96);
          if (v15)
          {
            v16 = v15(v13, v14, v10, 0, 0);
            if (!v16)
            {
              if (gLogCategory_APDemoManager <= 30 && (gLogCategory_APDemoManager != -1 || _LogCategory_Initialize()))
              {
                demoHIDEventCallback_cold_4(v10, v11 + 2);
              }

              goto LABEL_30;
            }
          }

          else
          {
            v16 = 4294954514;
          }

          demoHIDEventCallback_cold_5(v16);
        }

        else
        {
          demoHIDEventCallback_cold_6();
        }

LABEL_30:
        FigSimpleMutexUnlock();
        CFRelease(v13);
        goto LABEL_31;
      }

      if (gLogCategory_APDemoManager <= 50 && (gLogCategory_APDemoManager != -1 || _LogCategory_Initialize()))
      {
        demoHIDEventCallback_cold_7(v11);
      }

      demoUIEventChannelClear(v11);
    }

    FigSimpleMutexUnlock();
  }

LABEL_31:
  v17 = v18;
  if (v18 && gLogCategory_APDemoManager <= 90)
  {
    if (gLogCategory_APDemoManager == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_2;
      }

      v17 = v18;
    }

    LogPrintF(&gLogCategory_APDemoManager, "void demoHIDEventCallback(void *, void *, void *, IOHIDEventRef)", 33554522, "Unable to create NSData from demo event: %@", v17);
  }

LABEL_2:
  objc_autoreleasePoolPop(v4);
}

uint64_t APAirPlayAgentServicesServerStart()
{
  if (gLogCategory_APAirPlayAgentServices <= 50 && (gLogCategory_APAirPlayAgentServices != -1 || _LogCategory_Initialize()))
  {
    APAirPlayAgentServicesServerStart_cold_1();
  }

  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  CFDictionarySetValue(Mutable, *MEMORY[0x277CEA3A0], @"com.apple.airplay.agent.services.allow");
  v1 = APSXPCServerStart();
  if (v1)
  {
    APAirPlayAgentServicesServerStart_cold_2(v1, &v5);
    v3 = v5;
  }

  else
  {
    v2 = APSXPCServerAddCommandHandler();
    if (v2)
    {
      APAirPlayAgentServicesServerStart_cold_3(v2, &v6);
      v3 = v6;
    }

    else
    {
      v3 = 0;
    }
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  return v3;
}

uint64_t APAirPlayAgentServicesClientSendCommand(uint64_t a1)
{
  if (APAirPlayAgentServicesClientSendCommand_onceToken != -1)
  {
    APAirPlayAgentServicesClientSendCommand_cold_1();
  }

  if (gLogCategory_APAirPlayAgentServices <= 50 && (gLogCategory_APAirPlayAgentServices != -1 || _LogCategory_Initialize()))
  {
    APAirPlayAgentServicesClientSendCommand_cold_2(a1);
  }

  v2 = APSXPCClientSendCommandCreatingReply();
  v3 = v2;
  if (v2)
  {
    APAirPlayAgentServicesClientSendCommand_cold_3(v2);
  }

  return v3;
}

void __APAirPlayAgentServicesClientSendCommand_block_invoke()
{
  if (gLogCategory_APAirPlayAgentServices <= 50 && (gLogCategory_APAirPlayAgentServices != -1 || _LogCategory_Initialize()))
  {
    __APAirPlayAgentServicesClientSendCommand_block_invoke_cold_1();
  }

  LocalCenter = CFNotificationCenterGetLocalCenter();
  DisconnectNotificationName = APSXPCClientGetDisconnectNotificationName();

  CFNotificationCenterAddObserver(LocalCenter, 0, airplayAgentServicesClient_handleServerDisconnect, DisconnectNotificationName, 0, CFNotificationSuspensionBehaviorDeliverImmediately);
}

void airplayAgentServicesClient_handleServerDisconnect()
{
  if (gLogCategory_APAirPlayAgentServices <= 50 && (gLogCategory_APAirPlayAgentServices != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APAirPlayAgentServices, "void airplayAgentServicesClient_handleServerDisconnect(CFNotificationCenterRef, void *, CFStringRef, const void *, CFDictionaryRef)", 33554482, "%@ service has disconnected, exiting AirPlay Sender System process per crash recovery design", @"com.apple.airplay.agent.services");
  }

  _Exit(1);
}

uint64_t endpointDescription_registerClass(uint64_t a1)
{
  ClassID = CMBaseGetClassID();

  return MEMORY[0x282112448](&endpointDescription_registerClass_sClassDesc, ClassID, 1, a1);
}

uint64_t APEndpointDescriptionGetTypeID(uint64_t a1, uint64_t a2)
{
  if (_MergedGlobals_11 != -1)
  {
    APEndpointDescriptionGetClassID_cold_1();
  }

  v3 = qword_280FB1AE8;

  return MEMORY[0x282111A98](v3);
}

uint64_t APEndpointDescriptionGetDeviceID(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  theString = 0;
  *buffer = 0u;
  v8 = 0u;
  v2 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v2)
  {
    v3 = 4294954514;
    goto LABEL_9;
  }

  v3 = v2(a1, @"DeviceID", *MEMORY[0x277CBECE8], &theString);
  if (v3)
  {
LABEL_9:
    APEndpointDescriptionGetDeviceID_cold_2(v3);
    goto LABEL_10;
  }

  if (CFStringGetCString(theString, buffer, 32, 0x8000100u))
  {
    v4 = TextToHardwareAddressScalar();
    goto LABEL_5;
  }

  APEndpointDescriptionGetDeviceID_cold_1();
LABEL_10:
  v4 = 0;
LABEL_5:
  if (theString)
  {
    CFRelease(theString);
  }

  return v4;
}

__CFString *APEndpointDescriptionCopyDebugString(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v12 = 0;
  v10 = 0;
  cf = 0;
  v2 = *MEMORY[0x277CBECE8];
  Mutable = CFStringCreateMutable(*MEMORY[0x277CBECE8], 0);
  v4 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v4)
  {
    v4(a1, @"Name", v2, &cf);
  }

  v5 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v5)
  {
    v5(a1, @"Model", v2, &v10);
  }

  APSGetFBOPropertyInt64();
  v7 = v10;
  v6 = cf;
  v8 = SourceVersionToCString();
  CFStringAppendFormat(Mutable, 0, @"'%@' (%@ v%s)", v6, v7, v8);
  if (cf)
  {
    CFRelease(cf);
  }

  if (v10)
  {
    CFRelease(v10);
  }

  return Mutable;
}

uint64_t APEndpointStreamLocalCreate(const __CFAllocator *a1, const void *a2, const void *a3, uint64_t a4, const void *a5, char a6, CFTypeRef *a7)
{
  v33 = *MEMORY[0x277D85DE8];
  cf = 0;
  v29 = 0;
  valuePtr = 1;
  if (!a5)
  {
    APEndpointStreamLocalCreate_cold_9();
LABEL_30:
    v25 = 4294950536;
    goto LABEL_37;
  }

  if (!a3)
  {
    APEndpointStreamLocalCreate_cold_8();
    goto LABEL_30;
  }

  if (!a7)
  {
    APEndpointStreamLocalCreate_cold_7();
    goto LABEL_30;
  }

  FigEndpointStreamAirPlayGetClassID();
  v13 = CMDerivedObjectCreate();
  if (v13)
  {
    v25 = v13;
    APEndpointStreamLocalCreate_cold_1(v13);
  }

  else
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    SNPrintF(v31, 64, "APEndpointStreamLocal.%{ptr}", cf);
    *(DerivedStorage + 16) = os_transaction_create();
    SNPrintF(v32, 64, "APEndpointStreamLocal.%@.notification", a2);
    v15 = FigDispatchQueueCreateWithPriority();
    *(DerivedStorage + 8) = v15;
    if (v15)
    {
      SNPrintF(v32, 64, "APEndpointStreamLocal.%@.dataProcessing", a2);
      v16 = FigDispatchQueueCreateWithPriority();
      *(DerivedStorage + 200) = v16;
      if (v16)
      {
        *(DerivedStorage + 136) = FigSimpleMutexCreate();
        *(DerivedStorage + 24) = a2;
        if (a2)
        {
          CFRetain(a2);
        }

        *(DerivedStorage + 40) = a3;
        v17 = (DerivedStorage + 40);
        CFRetain(a3);
        *(DerivedStorage + 64) = a5;
        CFRetain(a5);
        Value = FigCFDictionaryGetValue();
        if (Value)
        {
          Value = CFRetain(Value);
        }

        *(DerivedStorage + 48) = Value;
        valuePtr = 1;
        v19 = CFNumberCreate(a1, kCFNumberSInt32Type, &valuePtr);
        *(DerivedStorage + 152) = v19;
        if (v19)
        {
          Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
          *(DerivedStorage + 176) = Mutable;
          if (Mutable)
          {
            CFDictionaryGetInt64();
            IntWithDefault = APSSettingsGetIntWithDefault();
            *(DerivedStorage + 57) = IntWithDefault != 0;
            if (IntWithDefault)
            {
              v22 = APSAudioFormatDescriptionListCreateForBufferedLocalReceiverEchoCancellationReference();
LABEL_18:
              v23 = 0;
              goto LABEL_19;
            }

            if (CFEqual(*v17, *MEMORY[0x277CC1968]))
            {
              v22 = localStream_copyBufferedSupportedAudioFormatList(cf, &v29);
              v23 = v29;
            }

            else
            {
              if (CFEqual(*v17, *MEMORY[0x277CC1960]))
              {
                v22 = APSAudioFormatDescriptionListCreateForRealTimeLocalReceiver();
                goto LABEL_18;
              }

              v23 = 0;
              v22 = 0;
            }

LABEL_19:
            *(DerivedStorage + 184) = v22;
            v24 = DerivedStorage + 184;
            *(v24 - 24) = 0;
            *(v24 + 8) = v23;
            *(v24 - 152) = CFRetain(@"10CA1000-8AFF-4902-9124-F8506138A0D8");
            *(v24 - 128) = a6;
            CFDictionaryGetInt64();
            *(v24 - 127) = APSSettingsGetIntWithDefault() != 0;
            v27 = 0;
            if (gLogCategory_APEndpointStreamLocal <= 50 && (gLogCategory_APEndpointStreamLocal != -1 || _LogCategory_Initialize()))
            {
              APEndpointStreamLocalCreate_cold_2(v24, &v27);
            }

            v25 = 0;
            *a7 = cf;
            return v25;
          }

          APEndpointStreamLocalCreate_cold_3();
        }

        else
        {
          APEndpointStreamLocalCreate_cold_4();
        }
      }

      else
      {
        APEndpointStreamLocalCreate_cold_5();
      }
    }

    else
    {
      APEndpointStreamLocalCreate_cold_6();
    }

    v25 = 4294950535;
  }

LABEL_37:
  if (cf)
  {
    CFRelease(cf);
  }

  return v25;
}

void localStream_Finalize(const void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v3 = DerivedStorage[1];
  if (v3)
  {
    dispatch_release(v3);
    DerivedStorage[1] = 0;
  }

  localStream_dissociateInternal(a1, 0);
  v4 = DerivedStorage[30];
  if (v4)
  {
    CFRelease(v4);
    DerivedStorage[30] = 0;
  }

  v5 = DerivedStorage[3];
  if (v5)
  {
    CFRelease(v5);
  }

  v6 = DerivedStorage[5];
  if (v6)
  {
    CFRelease(v6);
  }

  v7 = DerivedStorage[6];
  if (v7)
  {
    CFRelease(v7);
  }

  v8 = DerivedStorage[4];
  if (v8)
  {
    CFRelease(v8);
  }

  v9 = DerivedStorage[8];
  if (v9)
  {
    CFRelease(v9);
  }

  v10 = DerivedStorage[18];
  if (v10)
  {
    CFRelease(v10);
  }

  v11 = DerivedStorage[22];
  if (v11)
  {
    CFRelease(v11);
  }

  v12 = DerivedStorage[20];
  if (v12)
  {
    CFRelease(v12);
  }

  v13 = DerivedStorage[23];
  if (v13)
  {
    CFRelease(v13);
  }

  v14 = DerivedStorage[2];
  if (v14)
  {
    os_release(v14);
    DerivedStorage[2] = 0;
  }

  FigSimpleMutexDestroy();
  v15 = DerivedStorage[27];
  if (v15)
  {
    CFRelease(v15);
    DerivedStorage[27] = 0;
  }

  v16 = DerivedStorage[25];
  if (v16)
  {
    dispatch_release(v16);
    DerivedStorage[25] = 0;
  }
}

__CFString *localStream_CopyDebugDescription(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  Mutable = CFStringCreateMutable(*MEMORY[0x277CBECE8], 0);
  CFStringAppendFormat(Mutable, 0, @"<APEndpointStreamLocal %p '%@'>", a1, *(DerivedStorage + 24));
  return Mutable;
}

uint64_t localStream_CopyProperty(uint64_t a1, const void *a2, const __CFAllocator *a3, CFNumberRef *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  cf = 0;
  if (gLogCategory_APEndpointStreamLocal <= 30 && (gLogCategory_APEndpointStreamLocal != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APEndpointStreamLocal, "OSStatus localStream_CopyProperty(CMBaseObjectRef, CFStringRef, CFAllocatorRef, void *)", 33554462, "[%{ptr}] %###s propertyKey: '%@'\n", a1, "OSStatus localStream_CopyProperty(CMBaseObjectRef, CFStringRef, CFAllocatorRef, void *)", a2);
  }

  if (*DerivedStorage)
  {
    localStream_CopyProperty_cold_1();
    return 4294950534;
  }

  if (!a2)
  {
    localStream_CopyProperty_cold_4();
    return 4294950536;
  }

  if (!a4)
  {
    localStream_CopyProperty_cold_3();
    return 4294950536;
  }

  if (CFEqual(a2, *MEMORY[0x277CC1900]))
  {
    v9 = *(DerivedStorage + 40);
LABEL_19:
    UInt32 = CFRetain(v9);
LABEL_20:
    v12 = 0;
    *a4 = UInt32;
    return v12;
  }

  if (CFEqual(a2, *MEMORY[0x277CC1880]))
  {
    v10 = MEMORY[0x277CBED28];
    if (!*(DerivedStorage + 208))
    {
      v10 = MEMORY[0x277CBED10];
    }

    goto LABEL_18;
  }

  if (CFEqual(a2, @"IsLocalStream"))
  {
    v10 = MEMORY[0x277CBED28];
LABEL_18:
    v9 = *v10;
    goto LABEL_19;
  }

  if (CFEqual(a2, *MEMORY[0x277CC1870]))
  {
LABEL_17:
    v10 = MEMORY[0x277CBED10];
    goto LABEL_18;
  }

  if (CFEqual(a2, @"EndpointStreamShowInfo"))
  {
    UInt32 = localStream_copyShowInfo(a1);
    goto LABEL_20;
  }

  if (CFEqual(a2, @"IsPlaying"))
  {
    FigSimpleMutexLock();
    v14 = MEMORY[0x277CBED28];
    if (!*(DerivedStorage + 168))
    {
      v14 = MEMORY[0x277CBED10];
    }

    v15 = *v14;
LABEL_28:
    v15 = CFRetain(v15);
LABEL_29:
    *a4 = v15;
    FigSimpleMutexUnlock();
    return 0;
  }

  if (CFEqual(a2, *MEMORY[0x277CC1878]))
  {
    v9 = *(DerivedStorage + 32);
    goto LABEL_19;
  }

  if (FigCFEqual())
  {
    FigSimpleMutexLock();
    APSAudioFormatDescriptionListGetMaxChannelCount();
    FigSimpleMutexUnlock();
    goto LABEL_35;
  }

  if (CFEqual(a2, @"SupportedAPAudioFormats"))
  {
    FigSimpleMutexLock();
    valuePtr = APSAudioFormatDescriptionListGetLegacyFormatMask();
    FigSimpleMutexUnlock();
    v16 = CFNumberCreate(a3, kCFNumberSInt64Type, &valuePtr);
    *a4 = v16;
    if (!v16)
    {
      localStream_CopyProperty_cold_2();
      return 4294950535;
    }

    return 0;
  }

  if (CFEqual(a2, @"SupportedAudioFormatList"))
  {
    if (!CFEqual(*(DerivedStorage + 40), *MEMORY[0x277CC1968]) || (FigSimpleMutexLock(), v17 = *(DerivedStorage + 184), FigSimpleMutexUnlock(), !v17))
    {
      UInt32 = 0;
      goto LABEL_20;
    }

    goto LABEL_46;
  }

  if (FigCFEqual())
  {
    if (CFEqual(*(DerivedStorage + 40), *MEMORY[0x277CC1968]))
    {
      FigSimpleMutexLock();
      FigSimpleMutexUnlock();
      v18 = APSAudioFormatDescriptionListCopyRichestFormatAsFigEndpointStreamAudioFormatDescription();
      if (v18)
      {
        v12 = v18;
        APSLogErrorAt();
        return v12;
      }

      v19 = cf;
    }

    else
    {
      v19 = 0;
    }

    v12 = 0;
    goto LABEL_57;
  }

  if (CFEqual(a2, *MEMORY[0x277CC18C0]))
  {
    if (!CFEqual(*(DerivedStorage + 40), *MEMORY[0x277CC1968]))
    {
      v12 = 0;
      *a4 = 0;
      return v12;
    }

    FigSimpleMutexLock();
    FigSimpleMutexUnlock();
    APSLogErrorAt();
    return 0;
  }

  if (FigCFEqual())
  {
    FigSimpleMutexLock();
    v15 = *(DerivedStorage + 160);
    if (!v15)
    {
      goto LABEL_29;
    }

    goto LABEL_28;
  }

  if (CFEqual(a2, *MEMORY[0x277CC17A8]))
  {
    FigSimpleMutexLock();
    v15 = *(DerivedStorage + 144);
    if (!v15)
    {
      goto LABEL_29;
    }

    goto LABEL_28;
  }

  if (CFEqual(a2, @"HoseRegistrar"))
  {
    valuePtr = a1;
    v22 = 0;
    dispatch_sync_f(*(DerivedStorage + 200), &valuePtr, localStream_copyRegistrar);
    v12 = 0;
    v19 = v22;
LABEL_57:
    *a4 = v19;
    return v12;
  }

  if (CFEqual(a2, @"SupportsAPAP") || CFEqual(a2, @"SupportsAPAT"))
  {
    IsFeatureEnabled = FigCFEqual();
    goto LABEL_70;
  }

  if (CFEqual(a2, *MEMORY[0x277CC18E0]))
  {
    v17 = *MEMORY[0x277CBED10];
    if ((APSSettingsGetIntWithDefault() || APSSettingsIsFeatureEnabled()) && FigCFEqual())
    {
      v17 = *MEMORY[0x277CBED28];
    }

LABEL_46:
    v9 = v17;
    goto LABEL_19;
  }

  if (CFEqual(a2, *MEMORY[0x277CC18D8]))
  {
    IsFeatureEnabled = APSSettingsIsFeatureEnabled();
LABEL_70:
    v10 = MEMORY[0x277CBED28];
    if (!IsFeatureEnabled)
    {
      v10 = MEMORY[0x277CBED10];
    }

    goto LABEL_18;
  }

  if (CFEqual(a2, @"IsSidePlayStream"))
  {
    goto LABEL_17;
  }

  if (CFEqual(a2, @"NumberOfSubStreams"))
  {
LABEL_35:
    UInt32 = FigCFNumberCreateUInt32();
    goto LABEL_20;
  }

  if (gLogCategory_APEndpointStreamLocal <= 30 && (gLogCategory_APEndpointStreamLocal != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APEndpointStreamLocal, "OSStatus localStream_CopyProperty(CMBaseObjectRef, CFStringRef, CFAllocatorRef, void *)", 33554462, "[%{ptr}] %###s %@ unsupported", a1, "OSStatus localStream_CopyProperty(CMBaseObjectRef, CFStringRef, CFAllocatorRef, void *)", a2);
  }

  return 4294954512;
}

uint64_t localStream_SetProperty(const void *a1, uint64_t a2, const void *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APEndpointStreamLocal <= 30 && (gLogCategory_APEndpointStreamLocal != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APEndpointStreamLocal, "OSStatus localStream_SetProperty(CMBaseObjectRef, CFStringRef, CFTypeRef)", 33554462, "[%{ptr}] %###s propertyKey: '%@'\n", a1, "OSStatus localStream_SetProperty(CMBaseObjectRef, CFStringRef, CFTypeRef)", a2);
  }

  if (*DerivedStorage)
  {
    localStream_SetProperty_cold_1();
    return 4294950534;
  }

  if (FigCFEqual())
  {
    if (!FigCFEqual())
    {
      localStream_SetProperty_cold_3();
      return 4294954509;
    }

    if (a3)
    {
      v7 = CFGetTypeID(a3);
      if (v7 == CFNumberGetTypeID())
      {
        if (a1)
        {
          CFRetain(a1);
        }

        CFRetain(a3);
        v8 = *(DerivedStorage + 200);
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 0x40000000;
        block[2] = __localStream_SetProperty_block_invoke;
        block[3] = &__block_descriptor_tmp_36;
        block[4] = DerivedStorage;
        block[5] = a3;
        block[6] = a1;
        v9 = block;
LABEL_13:
        dispatch_async(v8, v9);
        return 0;
      }
    }

    localStream_SetProperty_cold_2();
    return 4294950536;
  }

  if (FigCFEqual())
  {
    if (!a3 || (v11 = CFGetTypeID(a3), v11 != CFStringGetTypeID()))
    {
      localStream_SetProperty_cold_4();
      return 4294950536;
    }

    if (gLogCategory_APEndpointStreamLocal > 50)
    {
      return 0;
    }

    if (gLogCategory_APEndpointStreamLocal != -1 || (result = _LogCategory_Initialize(), result))
    {
      LogPrintF(&gLogCategory_APEndpointStreamLocal, "OSStatus localStream_SetProperty(CMBaseObjectRef, CFStringRef, CFTypeRef)", 33554482, "[%{ptr}] AudioMode on local stream. Ignoring. mode=%@ \n", a1, a3);
      return 0;
    }
  }

  else
  {
    if (FigCFEqual())
    {
      if (a3)
      {
        v12 = CFGetTypeID(a3);
        if (v12 == CFStringGetTypeID())
        {
          FigSimpleMutexLock();
          v13 = CMBaseObjectGetDerivedStorage();
          if (!FigCFEqual())
          {
            if (gLogCategory_APEndpointStreamLocal <= 50 && (gLogCategory_APEndpointStreamLocal != -1 || _LogCategory_Initialize()))
            {
              LogPrintF(&gLogCategory_APEndpointStreamLocal, "void localStream_updateBadgingFormatInfoAndPostNotification(FigEndpointStreamRef, CFStringRef)", 33554482, "[%{ptr}] BadgeType changed from %@ to %@\n", a1, *(v13 + 160), a3);
            }

            Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
            if (Mutable)
            {
              v18 = Mutable;
              CFDictionarySetValue(Mutable, @"ActiveBadgingFormatInfo", a3);
              v19 = *(v13 + 160);
              *(v13 + 160) = a3;
              CFRetain(a3);
              if (v19)
              {
                CFRelease(v19);
              }

              CMNotificationCenterGetDefaultLocalCenter();
              FigDispatchAsyncPostNotification();
              CFRelease(v18);
            }

            else
            {
              localStream_SetProperty_cold_5();
            }
          }

          FigSimpleMutexUnlock();
          return 0;
        }
      }

      localStream_SetProperty_cold_6();
      return 4294950536;
    }

    if (FigCFEqual())
    {
      if (!a3 || (v14 = CFGetTypeID(a3), v14 == CFNumberGetTypeID()))
      {
        if (gLogCategory_APEndpointStreamLocal <= 50 && (gLogCategory_APEndpointStreamLocal != -1 || _LogCategory_Initialize()))
        {
          LogPrintF(&gLogCategory_APEndpointStreamLocal, "OSStatus localStream_SetProperty(CMBaseObjectRef, CFStringRef, CFTypeRef)", 33554482, "[%{ptr}] kFigEndpointStreamAirPlayProperty_BufferedClientAudioSessionID mode=%@ \n", a1, a3);
        }

        FigSimpleMutexLock();
        v15 = *(DerivedStorage + 144);
        *(DerivedStorage + 144) = a3;
        if (a3)
        {
          CFRetain(a3);
        }

        if (v15)
        {
          CFRelease(v15);
        }

        FigSimpleMutexUnlock();
        v16 = *(DerivedStorage + 200);
        v22[0] = MEMORY[0x277D85DD0];
        v22[1] = 0x40000000;
        v22[2] = __localStream_SetProperty_block_invoke_2;
        v22[3] = &__block_descriptor_tmp_39;
        v22[4] = DerivedStorage;
        v22[5] = a3;
        dispatch_sync(v16, v22);
        return 0;
      }

      localStream_SetProperty_cold_7();
      return 4294950536;
    }

    if (FigCFEqual())
    {
      if (gLogCategory_APEndpointStreamLocal <= 50 && (gLogCategory_APEndpointStreamLocal != -1 || _LogCategory_Initialize()))
      {
        LogPrintF(&gLogCategory_APEndpointStreamLocal, "OSStatus localStream_SetProperty(CMBaseObjectRef, CFStringRef, CFTypeRef)", 33554482, "[%{ptr}] setting AudioProcessingTapID on local stream. %{ptr} \n", a1, a3);
      }

      if (a1)
      {
        CFRetain(a1);
      }

      if (a3)
      {
        CFRetain(a3);
      }

      v8 = *(DerivedStorage + 200);
      v21[0] = MEMORY[0x277D85DD0];
      v21[1] = 0x40000000;
      v21[2] = __localStream_SetProperty_block_invoke_3;
      v21[3] = &__block_descriptor_tmp_41;
      v21[4] = a1;
      v21[5] = a3;
      v9 = v21;
      goto LABEL_13;
    }

    if (FigCFEqual())
    {
      if (gLogCategory_APEndpointStreamLocal <= 50 && (gLogCategory_APEndpointStreamLocal != -1 || _LogCategory_Initialize()))
      {
        LogPrintF(&gLogCategory_APEndpointStreamLocal, "OSStatus localStream_SetProperty(CMBaseObjectRef, CFStringRef, CFTypeRef)", 33554482, "[%{ptr}] setting Mute on local stream: %@ \n", a1, a3);
      }

      if (a1)
      {
        CFRetain(a1);
      }

      if (a3)
      {
        CFRetain(a3);
      }

      v8 = *(DerivedStorage + 200);
      v20[0] = MEMORY[0x277D85DD0];
      v20[1] = 0x40000000;
      v20[2] = __localStream_SetProperty_block_invoke_4;
      v20[3] = &__block_descriptor_tmp_43;
      v20[4] = a1;
      v20[5] = a3;
      v9 = v20;
      goto LABEL_13;
    }

    if (gLogCategory_APEndpointStreamLocal <= 30 && (gLogCategory_APEndpointStreamLocal != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_APEndpointStreamLocal, "OSStatus localStream_SetProperty(CMBaseObjectRef, CFStringRef, CFTypeRef)", 33554462, "[%{ptr}] %###s %@ unsupported\n", a1, "OSStatus localStream_SetProperty(CMBaseObjectRef, CFStringRef, CFTypeRef)", a2);
    }

    return 4294954512;
  }

  return result;
}

double localStream_updateResumed(uint64_t a1, int a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 208) == a2)
  {
    return result;
  }

  v6 = DerivedStorage;
  *(DerivedStorage + 208) = a2;
  if (gLogCategory_APEndpointStreamLocal <= 50)
  {
    if (gLogCategory_APEndpointStreamLocal != -1)
    {
LABEL_4:
      v7 = "yes";
      if (!a2)
      {
        v7 = "no";
      }

      LogPrintF(&gLogCategory_APEndpointStreamLocal, "void localStream_updateResumed(FigEndpointStreamRef, Boolean)", 33554482, "[%{ptr}] resumed changed to %s\n", a1, v7);
      goto LABEL_8;
    }

    if (_LogCategory_Initialize())
    {
      a2 = *(v6 + 208);
      goto LABEL_4;
    }
  }

LABEL_8:

  return localStream_updateIsPlaying(a1);
}

double localStream_handleHoseSBARRateChanged(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  CMBaseObjectGetDerivedStorage();
  Int64Ranged = CFDictionaryGetInt64Ranged();

  return localStream_updateHoseSBARRate(a2, Int64Ranged);
}

double localStream_updateHoseSBARRate(uint64_t a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 224) != a2)
  {
    *(DerivedStorage + 224) = a2;
    if (gLogCategory_APEndpointStreamLocal <= 50 && (gLogCategory_APEndpointStreamLocal != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_APEndpointStreamLocal, "void localStream_updateHoseSBARRate(FigEndpointStreamRef, uint32_t)", 33554482, "[%{ptr}] hoseSBARRate changed to %u\n", a1, a2);
    }

    return localStream_updateIsPlaying(a1);
  }

  return result;
}

void __localStream_suspendInternal_block_invoke(uint64_t a1)
{
  (*(a1 + 32))(*(a1 + 40), *(a1 + 56), *(a1 + 48));
  v2 = *(a1 + 40);

  CFRelease(v2);
}

double localStream_updateIsPlaying(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  if (CFEqual(*(DerivedStorage + 40), *MEMORY[0x277CC1960]))
  {
    v3 = *(DerivedStorage + 208);
  }

  else if (CFEqual(*(DerivedStorage + 40), *MEMORY[0x277CC1968]))
  {
    v3 = *(DerivedStorage + 224) != 0;
  }

  else
  {
    v3 = 0;
  }

  if (*(DerivedStorage + 168) != v3)
  {
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 1, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    *(DerivedStorage + 168) = v3;
    if (gLogCategory_APEndpointStreamLocal <= 50)
    {
      if (gLogCategory_APEndpointStreamLocal != -1 || (v6 = _LogCategory_Initialize(), v3 = *(DerivedStorage + 168), v6))
      {
        v5 = "yes";
        if (!v3)
        {
          v5 = "no";
        }

        LogPrintF(&gLogCategory_APEndpointStreamLocal, "void localStream_updateIsPlaying(FigEndpointStreamRef)", 33554482, "[%{ptr}] isPlaying changed to %s\n", a1, v5);
        v3 = *(DerivedStorage + 168);
      }
    }

    v7 = MEMORY[0x277CBED10];
    if (v3)
    {
      v7 = MEMORY[0x277CBED28];
    }

    CFDictionarySetValue(Mutable, @"IsPlaying", *v7);
    CMNotificationCenterGetDefaultLocalCenter();
    FigDispatchAsyncPostNotification();
    CFRelease(Mutable);
  }

  FigSimpleMutexUnlock();
  return result;
}

__CFDictionary *localStream_copyShowInfo(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  v3 = Mutable;
  v4 = MEMORY[0x277CBED28];
  if (!*(DerivedStorage + 208))
  {
    v4 = MEMORY[0x277CBED10];
  }

  CFDictionarySetValue(Mutable, @"Resumed", *v4);
  CFDictionarySetValue(v3, @"Type", *(DerivedStorage + 40));
  CFDictionarySetValue(v3, @"Name", *(DerivedStorage + 24));
  return v3;
}

CFTypeRef localStream_copyRegistrar(void *a1)
{
  result = *(CMBaseObjectGetDerivedStorage() + 232);
  if (result)
  {
    result = CFRetain(result);
  }

  a1[1] = result;
  return result;
}

uint64_t localStream_setAndCacheSBARProperty(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(CMBaseObjectGetDerivedStorage() + 216);
  if (v5)
  {
    v6 = *(*(CMBaseObjectGetVTable() + 8) + 56);
    if (v6)
    {
      v6(v5, a2, a3);
    }
  }

  return FigCFDictionarySetValue();
}

uint64_t localStream_Suspend(const void *a1, const void *a2, uint64_t a3, uint64_t a4)
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

  APSDispatchAsyncFHelper();
  return 0;
}

uint64_t localStream_Resume(const void *a1, const void *a2, uint64_t a3, uint64_t a4)
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

  APSDispatchAsyncFHelper();
  return 0;
}

uint64_t localStream_applyCachedPropertyForSBARDictionaryCallback(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = CMBaseObjectGetDerivedStorage();
  v6 = *(result + 216);
  if (v6)
  {
    if (*MEMORY[0x277CBEEE8] == a2)
    {
      a2 = 0;
    }

    VTable = CMBaseObjectGetVTable();
    v8 = *(VTable + 8);
    result = VTable + 8;
    v9 = *(v8 + 56);
    if (v9)
    {

      return v9(v6, a1, a2);
    }
  }

  return result;
}

void __localStream_resumeInternal_block_invoke(uint64_t a1)
{
  (*(a1 + 32))(*(a1 + 40), *(a1 + 56), *(a1 + 48));
  v2 = *(a1 + 40);

  CFRelease(v2);
}

uint64_t localStream_isPassthroughSupportedForFormatDescription(uint64_t a1, uint64_t a2, BOOL *a3)
{
  FigEndpointStreamAirPlayGetFigEndpointStream();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  cf = 0;
  if (gLogCategory_APEndpointStreamLocal <= 10 && (gLogCategory_APEndpointStreamLocal != -1 || _LogCategory_Initialize()))
  {
    localStream_isPassthroughSupportedForFormatDescription_cold_1(a1);
  }

  FigSimpleMutexLock();
  if (a3)
  {
    if (CFEqual(*(DerivedStorage + 40), *MEMORY[0x277CC1968]))
    {
      if (APSSettingsIsFeatureEnabled())
      {
        v6 = APSAudioFormatDescriptionCreateWithFigEndpointStreamAudioFormatDescription();
        if (v6)
        {
          v8 = v6;
          localStream_isPassthroughSupportedForFormatDescription_cold_2(v6);
        }

        else
        {
          if (APSAudioFormatDescriptionListContainsFormat())
          {
            v7 = APSAudioFormatDescriptionIsPassthroughFormatForCurrentDeviceAsSender() != 0;
          }

          else
          {
            v7 = 0;
          }

          v10 = 0;
          if (gLogCategory_APEndpointStreamLocal <= 50 && (gLogCategory_APEndpointStreamLocal != -1 || _LogCategory_Initialize()))
          {
            localStream_isPassthroughSupportedForFormatDescription_cold_3((DerivedStorage + 184), &v10);
          }

          v8 = 0;
          *a3 = v7;
        }
      }

      else
      {
        v8 = 0;
        *a3 = 0;
      }
    }

    else
    {
      localStream_isPassthroughSupportedForFormatDescription_cold_4();
      v8 = 4294954514;
    }
  }

  else
  {
    localStream_isPassthroughSupportedForFormatDescription_cold_5();
    v8 = 4294950536;
  }

  FigSimpleMutexUnlock();
  if (cf)
  {
    CFRelease(cf);
  }

  return v8;
}

uint64_t APPairingClientCoreUtilsCreate(uint64_t a1, const void *a2, int a3, int a4, int a5, int a6, int a7, int a8, char a9, char a10, char a11, const void *a12, const void *a13, const void *a14, const void *a15, void *a16)
{
  if (a15)
  {
    APPairingClientGetClassID(a1, a2);
    v20 = CMDerivedObjectCreate();
    if (v20)
    {
      v36 = v20;
      APSLogErrorAt();
    }

    else
    {
      DerivedStorage = CMBaseObjectGetDerivedStorage();
      if (a2)
      {
        v22 = CFRetain(a2);
      }

      else
      {
        v22 = 0;
      }

      *(DerivedStorage + 16) = v22;
      if (a12)
      {
        v23 = CFRetain(a12);
      }

      else
      {
        v23 = 0;
      }

      *(DerivedStorage + 24) = v23;
      if (a13)
      {
        v24 = CFRetain(a13);
      }

      else
      {
        v24 = 0;
      }

      *(DerivedStorage + 32) = v24;
      if (a14)
      {
        v25 = CFRetain(a14);
        v24 = *(DerivedStorage + 32);
      }

      else
      {
        v25 = 0;
      }

      *(DerivedStorage + 40) = v25;
      if (v24)
      {
        *DerivedStorage = objc_opt_new();
      }

      *(DerivedStorage + 48) = CFRetain(a15);
      *(DerivedStorage + 56) = a3;
      *(DerivedStorage + 59) = a5;
      if (a5)
      {
        v26 = 1;
      }

      else
      {
        v26 = a4;
      }

      *(DerivedStorage + 57) = v26;
      *(DerivedStorage + 60) = a6;
      *(DerivedStorage + 61) = a7;
      *(DerivedStorage + 62) = a8;
      *(DerivedStorage + 63) = a9;
      *(DerivedStorage + 64) = a10;
      *(DerivedStorage + 65) = a11;
      if (gLogCategory_APPairingClientCoreUtils <= 50 && (gLogCategory_APPairingClientCoreUtils != -1 || _LogCategory_Initialize()))
      {
        v27 = 84;
        if (!a11)
        {
          v27 = 116;
        }

        v28 = 77;
        if (!a10)
        {
          v28 = 109;
        }

        v43 = v28;
        v44 = v27;
        v29 = 76;
        if (!a9)
        {
          v29 = 108;
        }

        v30 = 65;
        if (!a8)
        {
          v30 = 97;
        }

        v41 = v30;
        v42 = v29;
        v31 = 72;
        if (!a7)
        {
          v31 = 104;
        }

        v32 = 79;
        if (!a6)
        {
          v32 = 111;
        }

        v39 = v32;
        v40 = v31;
        v33 = 67;
        if (!a5)
        {
          v33 = 99;
        }

        v34 = 83;
        if (!a4)
        {
          v34 = 115;
        }

        v38 = v33;
        v35 = 112;
        if (!a3)
        {
          v35 = 80;
        }

        LogPrintF(&gLogCategory_APPairingClientCoreUtils, "OSStatus APPairingClientCoreUtilsCreate(CFAllocatorRef, CFStringRef, Boolean, Boolean, Boolean, Boolean, Boolean, Boolean, Boolean, Boolean, Boolean, CFStringRef, CFStringRef, CFDataRef, FigTransportStreamRef, APPairingClientRef *)", 33554482, "[%{ptr}] APPairingClientCoreUtils created %c%c%c%c%c%c%c%c%c.\n", 0, v35, v34, v38, v39, v40, v41, v42, v43, v44);
      }

      v36 = 0;
      *a16 = 0;
    }
  }

  else
  {
    APPairingClientCoreUtilsCreate_cold_1();
    return 4294895525;
  }

  return v36;
}

uint64_t APPairingClientCoreUtilsCreatePatchedPairedPeerWithPeerInfo(void *a1, uint64_t a2, void *a3)
{
  v4 = [a1 patchedPairedPeerWithPeerInfo:a2];
  if (a3)
  {
    if (v4)
    {
      v4 = CFRetain(v4);
    }

    *a3 = v4;
  }

  return 0;
}

void *APPairingClientCoreUtilsPairedPeerDescriptionHasWoLInfo(void *a1)
{
  result = [a1 info];
  if (result)
  {
    [a1 info];
    CFArrayGetTypeID();
    TypedValue = CFDictionaryGetTypedValue();
    [a1 info];
    CFDataGetTypeID();
    return ((TypedValue | CFDictionaryGetTypedValue()) != 0);
  }

  return result;
}

uint64_t APPairingClientCoreUtilsPerformAddPairing(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = PairingSessionCreate();
  if (v5)
  {
    v7 = v5;
    APPairingClientCoreUtilsPerformAddPairing_cold_1(v5);
  }

  else
  {
    if (gLogCategory_APPairingClientCoreUtils <= 50 && (gLogCategory_APPairingClientCoreUtils != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_APPairingClientCoreUtils, "OSStatus APPairingClientCoreUtilsPerformAddPairing(APPairingClientRef, const CFStringRef, const CFDataRef, const CFNumberRef)", 33554482, "[%{ptr}] Created add pairing client session [%{ptr}]\n", a1, 0);
    }

    PairingSessionSetLogging();
    PairingSessionSetProperty();
    PairingSessionSetProperty();
    PairingSessionSetProperty();
    v6 = coreUtilsPairing_performAdminPairingOperation(a1, 0, 1885430128);
    v7 = v6;
    if (v6)
    {
      APPairingClientCoreUtilsPerformAddPairing_cold_2(v6);
    }
  }

  return v7;
}

uint64_t APPairingClientCoreUtilsPerformRemovePairing(uint64_t a1, uint64_t a2)
{
  v3 = PairingSessionCreate();
  if (v3)
  {
    v5 = v3;
    APPairingClientCoreUtilsPerformRemovePairing_cold_1(v3);
  }

  else
  {
    if (gLogCategory_APPairingClientCoreUtils <= 50)
    {
      APPairingClientCoreUtilsPerformRemovePairing_cold_2();
    }

    PairingSessionSetLogging();
    PairingSessionSetProperty();
    v4 = coreUtilsPairing_performAdminPairingOperation(a1, 0, 1885434480);
    v5 = v4;
    if (v4)
    {
      APPairingClientCoreUtilsPerformRemovePairing_cold_3(v4);
    }
  }

  return v5;
}

uint64_t APPairingClientCoreUtilsPerformListPairings(uint64_t a1, uint64_t *a2)
{
  v4 = PairingSessionCreate();
  v7 = v4;
  if (v4)
  {
    APPairingClientCoreUtilsPerformListPairings_cold_1(v4);
  }

  else
  {
    if (gLogCategory_APPairingClientCoreUtils <= 50)
    {
      APPairingClientCoreUtilsPerformListPairings_cold_2();
    }

    PairingSessionSetLogging();
    v5 = coreUtilsPairing_performAdminPairingOperation(a1, 0, 1885432944);
    v7 = v5;
    if (v5)
    {
      APPairingClientCoreUtilsPerformListPairings_cold_3(v5);
    }

    else
    {
      *a2 = PairingSessionCopyProperty();
    }
  }

  return v7;
}

uint64_t APPairingClientCoreUtilsUpdateGroupInfo(uint64_t a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 32))
  {
    v4 = [*DerivedStorage updatePairingGroupInfo:a2 forPairingGroupID:?];
    v5 = v4;
    if (v4)
    {
      APPairingClientCoreUtilsUpdateGroupInfo_cold_1(v4);
    }
  }

  else
  {
    APPairingClientCoreUtilsUpdateGroupInfo_cold_2();
    return 4294895525;
  }

  return v5;
}

uint64_t APPairingClientCoreUtilsIsValidPairingGroupInfo(const __CFDictionary *a1, const void *a2, CFDataRef theData)
{
  v17 = *MEMORY[0x277D85DE8];
  v15 = 0u;
  v16 = 0u;
  if (!a1)
  {
    APPairingClientCoreUtilsIsValidPairingGroupInfo_cold_6();
    return 0;
  }

  if (!a2)
  {
    APPairingClientCoreUtilsIsValidPairingGroupInfo_cold_5();
    return 0;
  }

  if (!theData)
  {
    APPairingClientCoreUtilsIsValidPairingGroupInfo_cold_4();
    return 0;
  }

  if (CFDataGetLength(theData) != 32)
  {
    APPairingClientCoreUtilsIsValidPairingGroupInfo_cold_1();
    return 0;
  }

  if (CFDictionaryContainsKey(a1, a2))
  {
    CFDataGetTypeID();
    TypedValue = CFDictionaryGetTypedValue();
    if (!TypedValue)
    {
      APPairingClientCoreUtilsIsValidPairingGroupInfo_cold_3();
      return 0;
    }

    v7 = TypedValue;
    BytePtr = CFDataGetBytePtr(TypedValue);
    Length = CFDataGetLength(v7);
    CC_SHA256(BytePtr, Length, &v15);
    v10 = CFDataGetBytePtr(theData);
    v11 = *v10 == v15 && *(v10 + 1) == *(&v15 + 1);
    v12 = v11 && *(v10 + 2) == v16;
    if (!v12 || *(v10 + 3) != *(&v16 + 1))
    {
      APPairingClientCoreUtilsIsValidPairingGroupInfo_cold_2();
      return 0;
    }
  }

  return 1;
}

uint64_t APPairingClientCoreUtilsCreateCombinedPairingGroupInfo(const __CFDictionary *a1, const __CFDictionary *a2, const void *a3, CFDataRef theData, const __CFDictionary **a5)
{
  if (a1)
  {
    if (a2)
    {
      if (a3)
      {
        if (theData)
        {
          if (a5)
          {
            if (APPairingClientCoreUtilsIsValidPairingGroupInfo(a1, a3, theData))
            {
              if (APPairingClientCoreUtilsIsValidPairingGroupInfo(a2, a3, theData))
              {
                Value = CFDictionaryGetValue(a1, @"groupID");
                if (Value)
                {
                  v11 = Value;
                  v12 = CFDictionaryGetValue(a2, @"groupID");
                  if (v12 && !CFEqual(v11, v12))
                  {
                    v14 = 4294895525;
                    APPairingClientCoreUtilsCreateCombinedPairingGroupInfo_cold_1();
                  }

                  else
                  {
                    MutableCopy = FigCFDictionaryCreateMutableCopy();
                    CFDictionaryMergeDictionary();
                    if (APPairingClientCoreUtilsIsValidPairingGroupInfo(MutableCopy, a3, theData))
                    {
                      v14 = 0;
                      *a5 = MutableCopy;
                    }

                    else
                    {
                      v14 = 4294895525;
                      APSLogErrorAt();
                      if (MutableCopy)
                      {
                        CFRelease(MutableCopy);
                      }
                    }
                  }
                }

                else
                {
                  v14 = 4294895525;
                  APPairingClientCoreUtilsCreateCombinedPairingGroupInfo_cold_2();
                }
              }

              else
              {
                v14 = 4294895525;
                APPairingClientCoreUtilsCreateCombinedPairingGroupInfo_cold_3();
              }
            }

            else
            {
              v14 = 4294895525;
              APPairingClientCoreUtilsCreateCombinedPairingGroupInfo_cold_4();
            }
          }

          else
          {
            v14 = 4294895525;
            APPairingClientCoreUtilsCreateCombinedPairingGroupInfo_cold_5();
          }
        }

        else
        {
          v14 = 4294895525;
          APPairingClientCoreUtilsCreateCombinedPairingGroupInfo_cold_6();
        }
      }

      else
      {
        v14 = 4294895525;
        APPairingClientCoreUtilsCreateCombinedPairingGroupInfo_cold_7();
      }
    }

    else
    {
      v14 = 4294895525;
      APPairingClientCoreUtilsCreateCombinedPairingGroupInfo_cold_8();
    }
  }

  else
  {
    v14 = 4294895525;
    APPairingClientCoreUtilsCreateCombinedPairingGroupInfo_cold_9();
  }

  return v14;
}

uint64_t APPairingClientCoreUtilsCreateUnpairedPeersFromGroupInfo(uint64_t a1, const __CFArray *a2, uint64_t *a3)
{
  if (a1)
  {
    if (a3)
    {
      [MEMORY[0x277CBEB58] set];
      if (a2)
      {
        CFArrayGetCount(a2);
        CFArrayApplyBlock();
      }

      v5 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:0];
      CFDictionaryApplyBlock();
      v6 = 0;
      *a3 = v5;
    }

    else
    {
      v6 = 4294895525;
      APPairingClientCoreUtilsCreateUnpairedPeersFromGroupInfo_cold_1();
    }
  }

  else
  {
    v6 = 4294895525;
    APPairingClientCoreUtilsCreateUnpairedPeersFromGroupInfo_cold_2();
  }

  return v6;
}

uint64_t __APPairingClientCoreUtilsCreateUnpairedPeersFromGroupInfo_block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 identifier];

  return [v2 addObject:v3];
}

void sub_2220F40F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2220F4340(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void coreUtilsPairing_Finalize(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v2 = *(DerivedStorage + 8);
  if (v2)
  {
    CFRelease(v2);
    *(DerivedStorage + 8) = 0;
  }

  v3 = *(DerivedStorage + 16);
  if (v3)
  {
    CFRelease(v3);
    *(DerivedStorage + 16) = 0;
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

  v6 = *(DerivedStorage + 40);
  if (v6)
  {
    CFRelease(v6);
    *(DerivedStorage + 40) = 0;
  }

  v7 = *(DerivedStorage + 48);
  if (v7)
  {
    CFRelease(v7);
    *(DerivedStorage + 48) = 0;
  }

  [*DerivedStorage invalidate];

  *DerivedStorage = 0;
}

__CFString *coreUtilsPairing_CopyDebugDescription(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  Mutable = CFStringCreateMutable(*MEMORY[0x277CBECE8], 0);
  CFStringAppendFormat(Mutable, 0, @"<APPairingClientCoreUtils for '%@'>", *(DerivedStorage + 16));
  return Mutable;
}

uint64_t coreUtilsPairing_CopyProperty(uint64_t a1, const void *a2, uint64_t a3, CFDataRef *a4)
{
  v14 = *MEMORY[0x277D85DE8];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a2)
  {
    if (a4)
    {
      v7 = DerivedStorage;
      if (CFEqual(a2, @"PairingTranscriptData"))
      {
        memset(v13, 0, sizeof(v13));
        if (*(v7 + 8))
        {
          TranscriptResultMFi4 = PairingSessionGenerateTranscriptResultMFi4();
          if (TranscriptResultMFi4)
          {
            v11 = TranscriptResultMFi4;
            coreUtilsPairing_CopyProperty_cold_1(TranscriptResultMFi4);
          }

          else
          {
            v9 = CFDataCreate(*MEMORY[0x277CBECE8], v13, 64);
            if (v9)
            {
              for (i = 0; i != 64; ++i)
              {
                *(v13 + i) = 0;
              }

              v11 = 0;
              *a4 = v9;
            }

            else
            {
              coreUtilsPairing_CopyProperty_cold_2();
              return 4294895526;
            }
          }
        }

        else
        {
          coreUtilsPairing_CopyProperty_cold_3();
          return 4294895524;
        }
      }

      else
      {
        return 4294954512;
      }
    }

    else
    {
      v11 = 4294895525;
      coreUtilsPairing_CopyProperty_cold_4();
    }
  }

  else
  {
    v11 = 4294895525;
    coreUtilsPairing_CopyProperty_cold_5();
  }

  return v11;
}

uint64_t coreUtilsPairing_PerformSetup(uint64_t a1, const __CFString *a2, int a3, int a4, char *a5, const void *a6, const __CFString **a7, void *a8, void *a9, void *a10)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v19 = DerivedStorage;
  *(DerivedStorage + 58) = 0;
  if (a4)
  {
    v20 = 4;
  }

  else if (*(DerivedStorage + 57))
  {
    if (*(DerivedStorage + 59))
    {
      v20 = 5;
    }

    else
    {
      v20 = 3;
    }
  }

  else
  {
    v20 = 2 * (a3 != 0);
  }

  if (a3)
  {
    if (a2)
    {
      LODWORD(result) = coreUtilsPairing_performSetupInternal(a1, a2, v20, *(DerivedStorage + 64), a5, a6, a7, a8, a9, a10);
      if (result == 200401 && !*(v19 + 56))
      {
        LODWORD(result) = coreUtilsPairing_sendShowPairPINRequest(*(v19 + 48), v20);
        v24 = result == 0;
      }

      else
      {
        v24 = result == 200470;
      }

      if (v24)
      {
        return 200401;
      }

      else
      {
        return result;
      }
    }

    else
    {
      LODWORD(result) = coreUtilsPairing_sendShowPairPINRequest(*(DerivedStorage + 48), v20);
      if (result)
      {
        return result;
      }

      else
      {
        return 200401;
      }
    }
  }

  else
  {
    v22 = coreUtilsPairing_performSetupInternal(a1, @"3939", v20, *(DerivedStorage + 64), 0, 0, a7, a8, a9, a10);
    result = 0;
    if (v22 == 200401)
    {
      v23 = 200403;
    }

    else
    {
      v23 = v22;
    }

    if (v23)
    {
      coreUtilsPairing_PerformSetup_cold_1(v23);
      return v23;
    }
  }

  return result;
}

uint64_t coreUtilsPairing_createAirPlayPairingSession(uint64_t a1, uint64_t a2, int a3, int a4, void *a5)
{
  keys[1] = *MEMORY[0x277D85DE8];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v10 = PairingSessionCreate();
  if (v10)
  {
    v15 = v10;
    coreUtilsPairing_createAirPlayPairingSession_cold_1(v10);
  }

  else
  {
    if (a3)
    {
      v11 = 16;
    }

    else if (*(DerivedStorage + 57))
    {
      v11 = 12;
    }

    else
    {
      v11 = 0;
    }

    if (a4)
    {
      v12 = v11 + 1;
    }

    else
    {
      v12 = v11;
    }

    if (v12)
    {
      PairingSessionSetFlags();
      if (gLogCategory_APPairingClientCoreUtils <= 50 && (gLogCategory_APPairingClientCoreUtils != -1 || _LogCategory_Initialize()))
      {
        LogPrintF(&gLogCategory_APPairingClientCoreUtils, "OSStatus coreUtilsPairing_createAirPlayPairingSession(APPairingClientRef, PairingSessionType, Boolean, Boolean, PairingSessionRef *)", 50, "[%{ptr}] PairingFlags %d\n", a1, v12, 0, 0, 0, 0, 0, 0, 0, 0, 0);
      }
    }

    if (*(DerivedStorage + 59))
    {
      keys[0] = @"com.apple.ScreenCapture";
      values = *MEMORY[0x277CBED28];
      v13 = CFDictionaryCreate(0, keys, &values, 1, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
      PairingSessionSetACL();
      if (gLogCategory_APPairingClientCoreUtils <= 50 && (gLogCategory_APPairingClientCoreUtils != -1 || _LogCategory_Initialize()))
      {
        LogPrintF(&gLogCategory_APPairingClientCoreUtils, "OSStatus coreUtilsPairing_createAirPlayPairingSession(APPairingClientRef, PairingSessionType, Boolean, Boolean, PairingSessionRef *)", 50, "[%{ptr}] ACL %@\n", a1, v13);
      }

      CFRelease(v13);
    }

    PairingSessionSetKeychainInfo();
    PairingSessionSetLogging();
    v14 = PairingSessionSetTranscriptType();
    v15 = v14;
    if (v14)
    {
      coreUtilsPairing_createAirPlayPairingSession_cold_2(v14);
    }

    else
    {
      *a5 = 0;
    }
  }

  return v15;
}

uint64_t coreUtilsPairing_sendShowPairPINRequest(uint64_t a1, int a2)
{
  v8 = *MEMORY[0x277D85DE8];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (Mutable)
  {
    v4 = Mutable;
    APSGetDeviceNameCString();
    CFDictionarySetCString();
    snprintf(__str, 0x20uLL, "%d", a2);
    CFDictionarySetCString();
    v5 = APTransportStreamSendPlistMessageCreatingReply();
    CFRelease(v4);
  }

  else
  {
    coreUtilsPairing_sendShowPairPINRequest_cold_1();
    return 4294895526;
  }

  return v5;
}

uint64_t __coreUtilsPairing_getPairedPeerFromVerificationPairingSession_block_invoke(uint64_t a1, void *a2)
{
  if (gLogCategory_APPairingClientCoreUtils <= 50 && (gLogCategory_APPairingClientCoreUtils != -1 || _LogCategory_Initialize()))
  {
    __coreUtilsPairing_getPairedPeerFromVerificationPairingSession_block_invoke_cold_1(a1, a2);
  }

  v4 = **(a1 + 40);

  return [v4 savePairedPeer:a2];
}

uint64_t APKeyHolderSharedKeyCreate(uint64_t a1, const void *a2, const __CFData *a3, const __CFData *a4, CFTypeRef *a5)
{
  cf = 0;
  APSKeyHolderGetClassID();
  v9 = CMDerivedObjectCreate();
  if (v9)
  {
    v14 = v9;
    APKeyHolderSharedKeyCreate_cold_1(v9);
    goto LABEL_21;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  *DerivedStorage = a2;
  if (a2)
  {
    CFRetain(a2);
  }

  if (a3)
  {
    v17.length = CFDataGetLength(a3);
    v17.location = 0;
    CFDataGetBytes(a3, v17, (DerivedStorage + 8));
  }

  else
  {
    v11 = RandomBytes();
    if (v11)
    {
      v14 = v11;
      APKeyHolderSharedKeyCreate_cold_2(v11);
      goto LABEL_21;
    }
  }

  if (a4)
  {
    v18.length = CFDataGetLength(a4);
    v18.location = 0;
    CFDataGetBytes(a4, v18, (DerivedStorage + 24));
  }

  else
  {
    v12 = RandomBytes();
    if (v12)
    {
      v14 = v12;
      APKeyHolderSharedKeyCreate_cold_3(v12);
      goto LABEL_21;
    }
  }

  v13 = APSCreateSecureMemAllocator();
  *(DerivedStorage + 40) = v13;
  if (v13)
  {
    if (gLogCategory_APKeyHolderSharedKey <= 30 && (gLogCategory_APKeyHolderSharedKey != -1 || _LogCategory_Initialize()))
    {
      APKeyHolderSharedKeyCreate_cold_4(&cf);
    }

    v14 = 0;
    *a5 = cf;
    return v14;
  }

  APKeyHolderSharedKeyCreate_cold_5();
  v14 = 4294895576;
LABEL_21:
  if (cf)
  {
    CFRelease(cf);
  }

  return v14;
}

void sharedKeyHolder_Finalize(const void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APKeyHolderSharedKey <= 30 && (gLogCategory_APKeyHolderSharedKey != -1 || _LogCategory_Initialize()))
  {
    sharedKeyHolder_Finalize_cold_1(a1);
  }

  for (i = 8; i != 24; ++i)
  {
    *(DerivedStorage + i) = 0;
  }

  do
  {
    *(DerivedStorage + i++) = 0;
  }

  while (i != 40);
  if (*DerivedStorage)
  {
    CFRelease(*DerivedStorage);
    *DerivedStorage = 0;
  }

  v4 = *(DerivedStorage + 40);
  if (v4)
  {
    CFRelease(v4);
    *(DerivedStorage + 40) = 0;
  }
}

__CFString *sharedKeyHolder_CopyDebugDescription(uint64_t a1)
{
  Mutable = CFStringCreateMutable(*MEMORY[0x277CBECE8], 0);
  CFStringAppendFormat(Mutable, 0, @"<APKeyHolderSharedKey %p>", a1);
  return Mutable;
}

uint64_t sharedKeyHolder_GetAuthenticationType(uint64_t a1)
{
  v1 = *CMBaseObjectGetDerivedStorage();
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

uint64_t sharedKeyHolder_CopyMasterAESKeyAndIV(uint64_t a1, CFDataRef *a2, CFDataRef *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v6 = CFDataCreate(*(DerivedStorage + 40), (DerivedStorage + 8), 16);
  if (v6)
  {
    v7 = v6;
    v8 = CFDataCreate(*(DerivedStorage + 40), (DerivedStorage + 24), 16);
    if (v8)
    {
      v9 = 0;
      *a2 = v7;
      *a3 = v8;
    }

    else
    {
      v9 = 4294895576;
      sharedKeyHolder_CopyMasterAESKeyAndIV_cold_1(v7);
    }
  }

  else
  {
    v9 = 4294895576;
    sharedKeyHolder_CopyMasterAESKeyAndIV_cold_2();
  }

  return v9;
}

uint64_t sharedKeyHolder_CreateEncryptedMasterAESKeyAndIV(uint64_t a1, CFTypeRef *a2, CFDataRef *a3)
{
  cf = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v6 = CFDataCreate(*(DerivedStorage + 40), (DerivedStorage + 8), 16);
  if (v6)
  {
    v7 = v6;
    v8 = *DerivedStorage;
    if (*DerivedStorage)
    {
      v9 = *(DerivedStorage + 40);
      v10 = *(*(CMBaseObjectGetVTable() + 16) + 24);
      if (v10)
      {
        v10(v8, v7, v9, &cf);
      }
    }

    else
    {
      cf = v6;
      v7 = 0;
    }

    v11 = CFDataCreate(*(DerivedStorage + 40), (DerivedStorage + 24), 16);
    if (v11)
    {
      v12 = 0;
      *a2 = cf;
      cf = 0;
      *a3 = v11;
      if (!v7)
      {
        goto LABEL_9;
      }

      goto LABEL_8;
    }

    v12 = 4294895576;
    sharedKeyHolder_CreateEncryptedMasterAESKeyAndIV_cold_1();
    if (v7)
    {
LABEL_8:
      CFRelease(v7);
    }
  }

  else
  {
    v12 = 4294895576;
    sharedKeyHolder_CreateEncryptedMasterAESKeyAndIV_cold_2();
  }

LABEL_9:
  if (cf)
  {
    CFRelease(cf);
  }

  return v12;
}

uint64_t APVirtualDisplaySinkCreate(const void *a1, const void *a2, CFTypeRef *a3)
{
  if (!a1)
  {
    APVirtualDisplaySinkCreate_cold_3();
    return 4294954516;
  }

  if (!a2)
  {
    APVirtualDisplaySinkCreate_cold_2();
    return 4294954516;
  }

  if (!a3)
  {
    APVirtualDisplaySinkCreate_cold_1();
    return 4294954516;
  }

  FigVirtualDisplaySinkGetClassID();
  v6 = CMDerivedObjectCreate();
  if (v6)
  {
    APSLogErrorAt();
  }

  else
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    *DerivedStorage = CFRetain(a1);
    DerivedStorage[2] = CFRetain(a2);
    DerivedStorage[15] = SecondsToUpTicks();
    *a3 = 0;
  }

  return v6;
}

void vdsink_Finalize_0(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APVirtualDisplaySink <= 30 && (gLogCategory_APVirtualDisplaySink != -1 || _LogCategory_Initialize()))
  {
    vdsink_Finalize_cold_1_0();
  }

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

  v3 = *(DerivedStorage + 96);
  if (v3)
  {
    CFRelease(v3);
    *(DerivedStorage + 96) = 0;
  }

  v4 = *(DerivedStorage + 104);
  if (v4)
  {
    CFRelease(v4);
    *(DerivedStorage + 104) = 0;
  }

  v5 = *(DerivedStorage + 112);
  if (v5)
  {
    CFRelease(v5);
    *(DerivedStorage + 112) = 0;
  }

  v6 = *(DerivedStorage + 8);
  if (v6)
  {
    CFRelease(v6);
    *(DerivedStorage + 8) = 0;
  }

  v7 = *(DerivedStorage + 88);
  if (v7)
  {
    _Block_release(v7);
    *(DerivedStorage + 88) = 0;
  }

  v8 = *(DerivedStorage + 24);
  if (v8)
  {
    dispatch_release(v8);
    *(DerivedStorage + 24) = 0;
  }
}

void __vdsink_getVirtualDisplaySizeOverrideFromPrefs_block_invoke_0()
{
  v0 = CFPreferencesCopyValue(@"mirroring_resolution", @"com.apple.coremedia", *MEMORY[0x277CBF040], *MEMORY[0x277CBF010]);
  if (v0)
  {
    v1 = v0;
    v2 = CFGetTypeID(v0);
    IntValue = 0.0;
    if (v2 == CFArrayGetTypeID())
    {
      if (gLogCategory_APVirtualDisplaySink <= 50 && (gLogCategory_APVirtualDisplaySink != -1 || _LogCategory_Initialize()))
      {
        __vdsink_getVirtualDisplaySizeOverrideFromPrefs_block_invoke_cold_1_0(v1, v3, v4);
      }

      v6 = 0.0;
      if (CFArrayGetCount(v1) >= 2)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v1, 0);
        if (ValueAtIndex)
        {
          v8 = ValueAtIndex;
          v9 = CFGetTypeID(ValueAtIndex);
          if (v9 == CFStringGetTypeID())
          {
            IntValue = CFStringGetIntValue(v8);
          }
        }

        v10 = CFArrayGetValueAtIndex(v1, 1);
        if (v10)
        {
          v11 = v10;
          v12 = CFGetTypeID(v10);
          if (v12 == CFStringGetTypeID())
          {
            v6 = CFStringGetIntValue(v11);
          }
        }
      }
    }

    else
    {
      v6 = 0.0;
    }

    CFRelease(v1);
    if (IntValue > 0.0 && v6 > 0.0)
    {
      if (IntValue <= v6)
      {
        *&v13 = v6;
      }

      else
      {
        *&v13 = IntValue;
      }

      vdsink_getVirtualDisplaySizeOverrideFromPrefs_prefScreenSize_0_0 = v13;
      if (IntValue >= v6)
      {
        *&v14 = v6;
      }

      else
      {
        *&v14 = IntValue;
      }

      vdsink_getVirtualDisplaySizeOverrideFromPrefs_prefScreenSize_1_0 = v14;
    }
  }
}

uint64_t vdsink_Start_0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v14 = 0;
  if (gLogCategory_APVirtualDisplaySink <= 50 && (gLogCategory_APVirtualDisplaySink != -1 || _LogCategory_Initialize()))
  {
    vdsink_Start_cold_1_0();
  }

  CMTimeMake(&v13, 67, 1000);
  *(DerivedStorage + 32) = v13;
  FigCFDictionaryGetInt32IfPresent();
  IntWithDefault = APSSettingsGetIntWithDefault();
  v14 = IntWithDefault;
  if (IntWithDefault >= 1)
  {
    if (gLogCategory_APVirtualDisplaySink <= 50)
    {
      if (gLogCategory_APVirtualDisplaySink != -1 || (v8 = _LogCategory_Initialize(), IntWithDefault = v14, v8))
      {
        v7 = *(DerivedStorage + 8);
        if (!v7)
        {
          v7 = &stru_283570B70;
        }

        LogPrintF(&gLogCategory_APVirtualDisplaySink, "OSStatus vdsink_Start(FigVirtualDisplaySinkRef, CFDictionaryRef, FigVirtualDisplaySinkStartBlock)", 33554482, "%@ virtual display sink %{ptr}: setting max queue duration to %d ms\n", v7, a1, IntWithDefault);
        LODWORD(IntWithDefault) = v14;
      }
    }

    CMTimeMake(&v13, IntWithDefault, 1000);
    *(DerivedStorage + 32) = v13;
  }

  if (a3)
  {
    v9 = *(DerivedStorage + 24);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 0x40000000;
    block[2] = __vdsink_Start_block_invoke_0;
    block[3] = &unk_27849D320;
    block[4] = a3;
    v12 = 0;
    dispatch_async(v9, block);
  }

  return 0;
}

uint64_t vdsink_Stop_0(uint64_t a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APVirtualDisplaySink <= 50 && (gLogCategory_APVirtualDisplaySink != -1 || _LogCategory_Initialize()))
  {
    vdsink_Stop_cold_1_0();
    if (!a2)
    {
      return 0;
    }

    goto LABEL_5;
  }

  if (a2)
  {
LABEL_5:
    v4 = *(DerivedStorage + 24);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 0x40000000;
    block[2] = __vdsink_Stop_block_invoke_0;
    block[3] = &unk_27849D348;
    block[4] = a2;
    dispatch_async(v4, block);
  }

  return 0;
}

uint64_t vdsink_Suspend_0(uint64_t a1)
{
  CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APVirtualDisplaySink <= 30 && (gLogCategory_APVirtualDisplaySink != -1 || _LogCategory_Initialize()))
  {
    vdsink_Suspend_cold_1_0();
  }

  return 0;
}

uint64_t vdsink_Resume_0(uint64_t a1)
{
  CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APVirtualDisplaySink <= 30 && (gLogCategory_APVirtualDisplaySink != -1 || _LogCategory_Initialize()))
  {
    vdsink_Resume_cold_1_0();
  }

  return 0;
}

uint64_t vdsink_GetPropertyAsync_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  CMBaseObject = FigVirtualDisplaySinkGetCMBaseObject();
  v8 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v8)
  {
    v9 = v8(CMBaseObject, a2, *MEMORY[0x277CBECE8], &v14);
    v8 = v14;
  }

  else
  {
    v9 = 4294954514;
  }

  v10 = *(DerivedStorage + 24);
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 0x40000000;
  v12[2] = __vdsink_GetPropertyAsync_block_invoke_0;
  v12[3] = &unk_27849D390;
  v13 = v9;
  v12[4] = a4;
  v12[5] = v8;
  dispatch_async(v10, v12);
  return v9;
}

uint64_t vdsink_Perform_0(uint64_t a1, const void *a2, uint64_t a3, uint64_t a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!a2)
  {
    vdsink_Perform_cold_4_0();
LABEL_13:
    v8 = 4294954516;
    goto LABEL_14;
  }

  if (!CFEqual(a2, *MEMORY[0x277CD6628]))
  {
    if (gLogCategory_APVirtualDisplaySink <= 50 && (gLogCategory_APVirtualDisplaySink != -1 || _LogCategory_Initialize()))
    {
      vdsink_Perform_cold_3_0();
    }

    goto LABEL_13;
  }

  v16 = 0;
  *&sampleTimingArray.duration.value = *MEMORY[0x277CC08F0];
  sampleTimingArray.duration.epoch = *(MEMORY[0x277CC08F0] + 16);
  sampleTimingArray.presentationTimeStamp = **&MEMORY[0x277CC0898];
  sampleTimingArray.decodeTimeStamp = sampleTimingArray.presentationTimeStamp;
  v7 = CMSampleBufferCreate(*MEMORY[0x277CBECE8], 0, 1u, 0, 0, 0, 0, 1, &sampleTimingArray, 0, 0, &v16);
  v8 = v7;
  if (v7)
  {
    vdsink_Perform_cold_1_0(v7);
    if (!a4)
    {
      return v8;
    }

    goto LABEL_15;
  }

  CMSetAttachment(v16, @"APClearScreen", *MEMORY[0x277CBED28], 0);
  CMBufferQueueEnqueue(*(DerivedStorage + 16), v16);
  if (gLogCategory_APVirtualDisplaySink <= 30 && (gLogCategory_APVirtualDisplaySink != -1 || _LogCategory_Initialize()))
  {
    vdsink_Perform_cold_2_0(DerivedStorage, v9, v10);
  }

  if (v16)
  {
    CFRelease(v16);
    if (!a4)
    {
      return v8;
    }

    goto LABEL_15;
  }

LABEL_14:
  if (a4)
  {
LABEL_15:
    v11 = *(DerivedStorage + 24);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 0x40000000;
    block[2] = __vdsink_Perform_block_invoke_0;
    block[3] = &unk_27849D3B8;
    block[4] = a4;
    v14 = v8;
    dispatch_async(v11, block);
  }

  return v8;
}

uint64_t vdsink_SetDispatchQueue_0(uint64_t a1, NSObject *global_queue)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v4 = *(DerivedStorage + 24);
  if (v4)
  {
    dispatch_release(v4);
  }

  if (!global_queue)
  {
    global_queue = dispatch_get_global_queue(0, 0);
  }

  *(DerivedStorage + 24) = global_queue;
  dispatch_retain(global_queue);
  return 0;
}

uint64_t vdsink_SetEventHandler_0(uint64_t a1, const void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a2)
  {
    v4 = _Block_copy(a2);
  }

  else
  {
    v4 = 0;
  }

  v5 = *(DerivedStorage + 24);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 0x40000000;
  v7[2] = __vdsink_SetEventHandler_block_invoke;
  v7[3] = &unk_27849D3E0;
  v7[4] = v4;
  v7[5] = DerivedStorage;
  dispatch_sync(v5, v7);
  return 0;
}

uint64_t APSenderSessionMessageSendTimeout(uint64_t a1, uint64_t a2)
{
  if (APSenderSessionMessageSendTimeout_once != -1)
  {
    APSenderSessionMessageSendTimeout_cold_1();
  }

  return APSenderSessionMessageSendTimeout_messageTimeout;
}

uint64_t __APSenderSessionMessageSendTimeout_block_invoke()
{
  result = APSSettingsGetInt64();
  v1 = result;
  if (result >= 1)
  {
    if (gLogCategory_APSenderSession <= 50)
    {
      if (gLogCategory_APSenderSession != -1 || (result = _LogCategory_Initialize(), result))
      {
        result = __APSenderSessionMessageSendTimeout_block_invoke_cold_1(v1);
      }
    }

    APSenderSessionMessageSendTimeout_messageTimeout = v1;
  }

  return result;
}

uint64_t APSenderSessionGetClassID(uint64_t a1, uint64_t a2)
{
  if (_MergedGlobals_12 != -1)
  {
    APSenderSessionGetClassID_cold_1();
  }

  return qword_280FB1AF8;
}

uint64_t session_registerBaseClass(uint64_t a1)
{
  ClassID = CMBaseGetClassID();

  return MEMORY[0x282112448](&session_registerBaseClass_sClassDesc, ClassID, 1, a1);
}

uint64_t APSenderSessionGetTypeID(uint64_t a1, uint64_t a2)
{
  if (_MergedGlobals_12 != -1)
  {
    APSenderSessionGetClassID_cold_1();
  }

  v3 = qword_280FB1AF8;

  return MEMORY[0x282111A98](v3);
}

uint64_t APSenderSessionUtilityFetchInitialVolume(const void *a1, int *a2)
{
  v23 = *MEMORY[0x277D85DE8];
  dataPointerOut = 0;
  cf = 0;
  totalLengthOut = 0;
  theBuffer = 0;
  v13 = 0;
  lengthAtOffsetOut = 0;
  v12 = 0;
  v21 = 0u;
  v22 = 0u;
  *v19 = 0u;
  v20 = 0u;
  v11 = 0;
  if (!a1 || (v4 = CFGetTypeID(a1), v4 != FigTransportStreamGetTypeID()))
  {
    v9 = 4294895475;
    APSenderSessionUtilityFetchInitialVolume_cold_8();
    goto LABEL_19;
  }

  if (!a2)
  {
    v9 = 4294895475;
    APSenderSessionUtilityFetchInitialVolume_cold_7();
    goto LABEL_19;
  }

  BlockBufferWithCFString = FigCreateBlockBufferWithCFString();
  if (BlockBufferWithCFString)
  {
    v9 = BlockBufferWithCFString;
    APSenderSessionUtilityFetchInitialVolume_cold_1(BlockBufferWithCFString);
    goto LABEL_19;
  }

  v6 = *(*(CMBaseObjectGetVTable() + 16) + 56);
  if (!v6)
  {
    v9 = 4294954514;
LABEL_18:
    APSLogErrorAt();
    goto LABEL_19;
  }

  v7 = v6(a1, 1735815020, cf, &theBuffer);
  if (v7)
  {
    v9 = v7;
    goto LABEL_18;
  }

  DataPointer = CMBlockBufferGetDataPointer(theBuffer, 0, &lengthAtOffsetOut, &totalLengthOut, &dataPointerOut);
  if (DataPointer)
  {
    v9 = DataPointer;
    APSenderSessionUtilityFetchInitialVolume_cold_2(DataPointer);
  }

  else
  {
    if (totalLengthOut == lengthAtOffsetOut)
    {
      v9 = HTTPGetHeaderField();
      __memcpy_chk();
      v19[v12] = 0;
      if (sscanf(v19, "%f", &v11) != 1)
      {
        v11 = -1046478848;
        if (gLogCategory_APSenderSession > 50)
        {
LABEL_16:
          *a2 = v11;
          goto LABEL_19;
        }

        if (gLogCategory_APSenderSession != -1 || _LogCategory_Initialize())
        {
          APSenderSessionUtilityFetchInitialVolume_cold_4();
        }
      }

      if (gLogCategory_APSenderSession <= 10 && (gLogCategory_APSenderSession != -1 || _LogCategory_Initialize()))
      {
        APSenderSessionUtilityFetchInitialVolume_cold_5(&v11);
      }

      goto LABEL_16;
    }

    v9 = 4294895475;
    APSenderSessionUtilityFetchInitialVolume_cold_3();
  }

LABEL_19:
  if (cf)
  {
    CFRelease(cf);
  }

  if (theBuffer)
  {
    CFRelease(theBuffer);
  }

  return v9;
}

__CFString *APSenderSessionUtilityGetAudioModeForEndpointStream(uint64_t a1)
{
  if (FigCFEqual())
  {
    return @"moviePlayback";
  }

  if (FigCFEqual())
  {
    return @"spokenAudio";
  }

  return @"default";
}

CFTypeRef APSenderSessionUtilityCopyGetInfoResponseWithUGLAddressesUpdatedFromSenderSession(uint64_t a1, const void *a2, int *a3, uint64_t a4)
{
  cf = 0;
  v8 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v8)
  {
    v8(a1, @"TransportControlStream", *MEMORY[0x277CBECE8], &cf);
    v9 = cf;
  }

  else
  {
    v9 = 0;
  }

  InfoResponseWithUGLAddressesUpdatedFromTransportStream = APSenderSessionUtilityCopyGetInfoResponseWithUGLAddressesUpdatedFromTransportStream(v9, a2, a3, a4);
  if (cf)
  {
    CFRelease(cf);
  }

  return InfoResponseWithUGLAddressesUpdatedFromTransportStream;
}

CFTypeRef APSenderSessionUtilityCopyGetInfoResponseWithUGLAddressesUpdatedFromTransportStream(uint64_t a1, const void *a2, int *a3, uint64_t a4)
{
  Value = FigCFDictionaryGetValue();
  if (!Value)
  {
    v11 = 0;
    goto LABEL_31;
  }

  v8 = FigCFDictionaryGetValue();
  if (v8)
  {
    if (*a3 <= 50)
    {
      v9 = v8;
      if (*a3 != -1 || _LogCategory_Initialize())
      {
        LogPrintF(a3, "CFDictionaryRef APSenderSessionUtilityCopyGetInfoResponseWithUGLAddressesUpdatedFromTransportStream(FigTransportStreamRef, CFDictionaryRef, LogCategory *, void *)", 33554482, "[%{ptr}] <APUGLPort> GetInfo response includes UGL server port: %@\n", a4, v9);
      }
    }
  }

  CFArrayGetTypeID();
  TypedValue = CFDictionaryGetTypedValue();
  if (*a3 <= 50 && (*a3 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(a3, "CFDictionaryRef APSenderSessionUtilityCopyGetInfoResponseWithUGLAddressesUpdatedFromTransportStream(FigTransportStreamRef, CFDictionaryRef, LogCategory *, void *)", 33554482, "[%{ptr}] <APUGL> Converting addresses if IPv6 link local: %@\n", a4, TypedValue);
  }

  v11 = APTransportStreamCopyConvertedLinkLocalIPv6Addresses();
  if (!v11)
  {
    Value = 0;
    goto LABEL_31;
  }

  if (*a3 <= 50 && (*a3 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(a3, "CFDictionaryRef APSenderSessionUtilityCopyGetInfoResponseWithUGLAddressesUpdatedFromTransportStream(FigTransportStreamRef, CFDictionaryRef, LogCategory *, void *)", 33554482, "[%{ptr}] <APUGL> Converted addresses: %@\n", a4, v11);
  }

  Value = FigCFDictionaryCreateMutableCopy();
  FigCFDictionarySetValue();
  MutableCopy = FigCFDictionaryCreateMutableCopy();
  if (!MutableCopy)
  {
LABEL_31:
    if (a2)
    {
      v13 = CFRetain(a2);
    }

    else
    {
      v13 = 0;
    }

    if (!v11)
    {
      goto LABEL_26;
    }

    goto LABEL_25;
  }

  v13 = MutableCopy;
  FigCFDictionarySetValue();
  if (*a3 <= 50)
  {
    if (*a3 != -1 || _LogCategory_Initialize())
    {
      LogPrintF(a3, "CFDictionaryRef APSenderSessionUtilityCopyGetInfoResponseWithUGLAddressesUpdatedFromTransportStream(FigTransportStreamRef, CFDictionaryRef, LogCategory *, void *)", 33554482, "[%{ptr}] <APUGL> Replacing getInfo response with new addresses %@\n", a4, v11);
    }

    if (*a3 <= 50 && (*a3 != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(a3, "CFDictionaryRef APSenderSessionUtilityCopyGetInfoResponseWithUGLAddressesUpdatedFromTransportStream(FigTransportStreamRef, CFDictionaryRef, LogCategory *, void *)", 33554482, "[%{ptr}] <APUGL> New info: %@\n", a4, v13);
    }
  }

LABEL_25:
  CFRelease(v11);
LABEL_26:
  if (Value)
  {
    CFRelease(Value);
  }

  return v13;
}

uint64_t bufferedAudioEngine_updateStartupConfiguration(uint64_t a1, int a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v5 = CMBaseObjectGetDerivedStorage();
  v27 = **&MEMORY[0x277CC0898];
  v26 = v27;
  APSIsSuntoryEnabled();
  if (*(v5 + 648) != 1 || !*(*(v5 + 640) + 32))
  {
    if (*(v5 + 437))
    {
      v6 = CMBaseObjectGetDerivedStorage();
      v7 = 0;
      v8 = kWHAPrimingConfig;
      do
      {
        v9 = *v8;
        v8 += 3;
        if (*(v6 + 648) <= v9)
        {
          break;
        }

        ++v7;
      }

      while (v7 != 4);
    }

    else
    {
      APSSettingsIsFeatureEnabled();
    }
  }

  CFPreferenceNumberWithDefault = FigGetCFPreferenceNumberWithDefault();
  CMTimeMake(&v27, CFPreferenceNumberWithDefault, 1000);
  v11 = FigGetCFPreferenceNumberWithDefault();
  CMTimeMake(&v26, v11, 1000);
  time1 = v27;
  time2 = *(v5 + 160);
  if (CMTimeCompare(&time1, &time2) && gLogCategory_APAudioEngineBuffered <= 50 && (gLogCategory_APAudioEngineBuffered != -1 || _LogCategory_Initialize()))
  {
    if (a1)
    {
      v12 = (CMBaseObjectGetDerivedStorage() + 392);
    }

    else
    {
      v12 = "";
    }

    time1 = *(v5 + 160);
    Seconds = CMTimeGetSeconds(&time1);
    time1 = v27;
    v14 = CMTimeGetSeconds(&time1);
    LogPrintF(&gLogCategory_APAudioEngineBuffered, "void bufferedAudioEngine_updateStartWatermarkAndMaxWaitTime(FigEndpointStreamAudioEngineRef)", 33554482, "BAE [%{ptr}] %supdate startWatermarkTime from %1.3f to %1.3f\n", a1, v12, *&Seconds, *&v14);
  }

  time1 = v26;
  time2 = *(v5 + 188);
  if (CMTimeCompare(&time1, &time2) && gLogCategory_APAudioEngineBuffered <= 50 && (gLogCategory_APAudioEngineBuffered != -1 || _LogCategory_Initialize()))
  {
    if (a1)
    {
      v15 = (CMBaseObjectGetDerivedStorage() + 392);
    }

    else
    {
      v15 = "";
    }

    time1 = *(v5 + 188);
    v16 = CMTimeGetSeconds(&time1);
    time1 = v26;
    v17 = CMTimeGetSeconds(&time1);
    LogPrintF(&gLogCategory_APAudioEngineBuffered, "void bufferedAudioEngine_updateStartWatermarkAndMaxWaitTime(FigEndpointStreamAudioEngineRef)", 33554482, "BAE [%{ptr}] %supdate criticalWatermarkTime from %1.3f to %1.3f\n", a1, v15, *&v16, *&v17);
  }

  *(v5 + 160) = v27;
  *(v5 + 188) = v26;
  CMTimeMake(&time2, 2500, 1000);
  lhs = *(v5 + 188);
  CMTimeAdd(&time1, &lhs, &time2);
  *(v5 + 212) = time1;
  v18 = FigGetCFPreferenceNumberWithDefault();
  *(v5 + 240) = MillisecondsToUpTicks();
  if (gLogCategory_APAudioEngineBuffered <= 50 && (gLogCategory_APAudioEngineBuffered != -1 || _LogCategory_Initialize()))
  {
    bufferedAudioEngine_updateStartupConfiguration_cold_1(a1, v5 + 240, v18);
  }

  v19 = FigGetCFPreferenceNumberWithDefault();
  result = MillisecondsToUpTicks();
  *(v5 + 248) = result;
  v21 = v5 + 248;
  if (gLogCategory_APAudioEngineBuffered <= 50 && (gLogCategory_APAudioEngineBuffered != -1 || (result = _LogCategory_Initialize(), result)))
  {
    result = bufferedAudioEngine_updateStartupConfiguration_cold_2(a1, v21, v19);
    if (!a2)
    {
      return result;
    }
  }

  else if (!a2)
  {
    return result;
  }

  if (*(DerivedStorage + 884) == 5)
  {
    result = CMBaseObjectGetDerivedStorage();
    for (i = *(result + 640); i; i = *i)
    {
      *(i + 37) = 0;
    }
  }

  *(DerivedStorage + 880) = 0;
  return result;
}

void bufferedAudioEngine_Finalize(CMTime *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  CMNotificationCenterGetDefaultLocalCenter();
  FigNotificationCenterRemoveWeakListener();
  CMNotificationCenterGetDefaultLocalCenter();
  FigNotificationCenterRemoveWeakListeners();
  v3 = *(DerivedStorage + 640);
  if (v3)
  {
    v4 = *MEMORY[0x277CE9FB8];
    v5 = *MEMORY[0x277CBED10];
    do
    {
      v6 = *v3;
      v7 = v3[2];
      v8 = *(*(CMBaseObjectGetVTable() + 8) + 56);
      if (v8)
      {
        v8(v7, v4, v5);
      }

      v9 = v3[2];
      if (v9)
      {
        CFRelease(v9);
        v3[2] = 0;
      }

      v10 = v3[3];
      if (v10)
      {
        CFRelease(v10);
        v3[3] = 0;
      }

      v11 = v3[33];
      if (v11)
      {
        CFRelease(v11);
      }

      free(v3);
      --*(DerivedStorage + 648);
      v3 = v6;
    }

    while (v6);
  }

  *(DerivedStorage + 640) = 0;
  v12 = *(DerivedStorage + 368);
  if (v12)
  {
    CFRelease(v12);
    *(DerivedStorage + 368) = 0;
  }

  v13 = *(DerivedStorage + 464);
  if (v13)
  {
    CFRelease(v13);
    *(DerivedStorage + 464) = 0;
  }

  v14 = *(DerivedStorage + 472);
  if (v14)
  {
    CFRelease(v14);
    *(DerivedStorage + 472) = 0;
  }

  v15 = *(DerivedStorage + 448);
  if (v15)
  {
    dispatch_release(v15);
    *(DerivedStorage + 448) = 0;
  }

  v16 = *(DerivedStorage + 344);
  if (v16)
  {
    dispatch_release(v16);
    *(DerivedStorage + 344) = 0;
  }

  v17 = *(DerivedStorage + 352);
  if (v17)
  {
    dispatch_release(v17);
    *(DerivedStorage + 352) = 0;
  }

  bufferedAudioEngine_tearDownResumedStateAndStructuresInternal(a1, 0);
  v18 = *(DerivedStorage + 328);
  if (v18)
  {
    v19 = *(*(CMBaseObjectGetVTable() + 16) + 88);
    if (v19)
    {
      v19(v18, a1);
    }
  }

  if (*(DerivedStorage + 488))
  {
    APSTimedInfoManagerSuspend();
    v20 = *(DerivedStorage + 488);
    if (v20)
    {
      CFRelease(v20);
      *(DerivedStorage + 488) = 0;
    }
  }

  v21 = *(DerivedStorage + 1032);
  if (v21)
  {
    CFRelease(v21);
    *(DerivedStorage + 1032) = 0;
  }

  v22 = *(DerivedStorage + 1040);
  if (v22)
  {
    CFRelease(v22);
    *(DerivedStorage + 1040) = 0;
  }

  v23 = *(DerivedStorage + 592);
  if (v23)
  {
    CFRelease(v23);
    *(DerivedStorage + 592) = 0;
  }

  v24 = *(DerivedStorage + 480);
  if (v24)
  {
    CFRelease(v24);
    *(DerivedStorage + 480) = 0;
  }

  v25 = *(DerivedStorage + 496);
  if (v25)
  {
    CFRelease(v25);
    *(DerivedStorage + 496) = 0;
  }

  v26 = *(DerivedStorage + 616);
  if (v26)
  {
    CFRelease(v26);
    *(DerivedStorage + 616) = 0;
  }

  v27 = *(DerivedStorage + 624);
  if (v27)
  {
    CFRelease(v27);
    *(DerivedStorage + 624) = 0;
  }

  v28 = *(DerivedStorage + 872);
  if (v28)
  {
    CFRelease(v28);
    *(DerivedStorage + 872) = 0;
  }

  v29 = *(DerivedStorage + 600);
  if (v29)
  {
    CFRelease(v29);
    *(DerivedStorage + 600) = 0;
  }

  v30 = *(DerivedStorage + 608);
  if (v30)
  {
    CFRelease(v30);
    *(DerivedStorage + 608) = 0;
  }

  v31 = *(DerivedStorage + 360);
  if (v31)
  {
    CFRelease(v31);
    *(DerivedStorage + 360) = 0;
  }

  v32 = *(DerivedStorage + 376);
  if (v32)
  {
    CFRelease(v32);
    *(DerivedStorage + 376) = 0;
  }

  v33 = *(DerivedStorage + 384);
  if (v33)
  {
    CFRelease(v33);
    *(DerivedStorage + 384) = 0;
  }

  v34 = *(DerivedStorage + 1104);
  if (v34)
  {
    CFRelease(v34);
    *(DerivedStorage + 1104) = 0;
  }

  v35 = *(DerivedStorage + 1248);
  if (v35)
  {
    CFRelease(v35);
    *(DerivedStorage + 1248) = 0;
  }

  v36 = *(DerivedStorage + 552);
  if (v36)
  {
    CFRelease(v36);
    *(DerivedStorage + 552) = 0;
  }

  v37 = *(DerivedStorage + 560);
  if (v37)
  {
    CFRelease(v37);
    *(DerivedStorage + 560) = 0;
  }

  v38 = *(DerivedStorage + 568);
  if (v38)
  {
    CFRelease(v38);
    *(DerivedStorage + 568) = 0;
  }

  v39 = *(DerivedStorage + 1200);
  if (v39)
  {
    CFRelease(v39);
    *(DerivedStorage + 1200) = 0;
  }

  v40 = *(DerivedStorage + 1192);
  if (v40)
  {
    CFRelease(v40);
    *(DerivedStorage + 1192) = 0;
  }

  bufferedAudioEngine_releaseCryptors(a1, 0);
  v41 = *(DerivedStorage + 1216);
  if (v41)
  {
    CFRelease(v41);
    *(DerivedStorage + 1216) = 0;
  }

  bufferedAudioEngine_releaseMagicCookies(a1, 0);
  v42 = *(DerivedStorage + 1056);
  if (v42)
  {
    CFRelease(v42);
    *(DerivedStorage + 1056) = 0;
  }

  v43 = *(DerivedStorage + 632);
  if (v43)
  {
    CFRelease(v43);
    *(DerivedStorage + 632) = 0;
  }

  v44 = *(DerivedStorage + 1024);
  if (v44)
  {
    CFRelease(v44);
    *(DerivedStorage + 1024) = 0;
  }

  v45 = *(DerivedStorage + 968);
  if (v45)
  {
    CFRelease(v45);
    *(DerivedStorage + 968) = 0;
  }

  v46 = *(DerivedStorage + 328);
  if (v46)
  {
    CFRelease(v46);
    *(DerivedStorage + 328) = 0;
  }

  v47 = *(DerivedStorage + 8);
  if (v47)
  {
    CFRelease(v47);
    *(DerivedStorage + 8) = 0;
  }

  v48 = *(DerivedStorage + 424);
  if (v48)
  {
    CFRelease(v48);
    *(DerivedStorage + 424) = 0;
  }

  if (gLogCategory_APAudioEngineBuffered <= 50 && (gLogCategory_APAudioEngineBuffered != -1 || _LogCategory_Initialize()))
  {
    bufferedAudioEngine_Finalize_cold_1(a1);
  }
}

__CFString *bufferedAudioEngine_CopyDebugDescription()
{
  Mutable = CFStringCreateMutable(*MEMORY[0x277CBECE8], 0);
  CFStringAppendFormat(Mutable, 0, @"<APAudioEngineBuffered>");
  return Mutable;
}

uint64_t bufferedAudioEngine_invalidateInternal(uint64_t *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APAudioEngineBuffered <= 40 && (gLogCategory_APAudioEngineBuffered != -1 || _LogCategory_Initialize()))
  {
    bufferedAudioEngine_invalidateInternal_cold_1(a1, v2, v3);
  }

  while (1)
  {
    v5 = *(DerivedStorage + 640);
    if (!v5)
    {
      break;
    }

    bufferedAudioEngine_removeHose(*a1, *(v5 + 16));
  }

  v6 = *a1;
  v7 = *(*(CMBaseObjectGetVTable() + 16) + 16);
  if (v7)
  {
    v7(v6, 0, bufferedAudioEngine_invalidateInternalCompletion, 0);
  }

  else
  {
    *CMBaseObjectGetDerivedStorage() = 1;
  }

  return 0;
}

uint64_t bufferedAudioEngine_removeHose(uint64_t a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 640))
  {
    HoseDecriptorFromHose = bufferedAudioEngine_getHoseDecriptorFromHose(a1, a2);
    if (!HoseDecriptorFromHose)
    {
      bufferedAudioEngine_removeHose_cold_2(a1, a2, &cf);
      v30 = cf;
      goto LABEL_52;
    }

    v6 = HoseDecriptorFromHose;
    v7 = CFStringCopyUTF8CString();
    if (v7)
    {
      v30 = v7;
      bufferedAudioEngine_removeHose_cold_1(v7);
      goto LABEL_52;
    }

    v8 = (DerivedStorage + 640);
    v10 = *v6;
    v9 = v6[1];
    if (v9)
    {
      v8 = v6[1];
    }

    *v8 = v10;
    if (v10)
    {
      *(v10 + 8) = v9;
    }

    v11 = v6[2];
    v12 = *(*(CMBaseObjectGetVTable() + 8) + 56);
    if (v12)
    {
      v12(v11, *MEMORY[0x277CE9FB8], *MEMORY[0x277CBED10]);
    }

    if (*(v6 + 32))
    {
      *(DerivedStorage + 1160) = 0;
    }

    v13 = v6[27];
    if (v13)
    {
      CFRelease(v13);
      v6[27] = 0;
    }

    v14 = v6[2];
    if (v14)
    {
      CFRelease(v14);
      v6[2] = 0;
    }

    v15 = v6[3];
    if (v15)
    {
      CFRelease(v15);
      v6[3] = 0;
    }

    v16 = v6[33];
    if (v16)
    {
      CFRelease(v16);
    }

    free(v6);
    --*(DerivedStorage + 648);
    if (gLogCategory_APAudioEngineBuffered <= 40 && (gLogCategory_APAudioEngineBuffered != -1 || _LogCategory_Initialize()))
    {
      if (a1)
      {
        v17 = (CMBaseObjectGetDerivedStorage() + 392);
      }

      else
      {
        v17 = "";
      }

      LogPrintF(&gLogCategory_APAudioEngineBuffered, "OSStatus bufferedAudioEngine_removeHose(FigEndpointStreamAudioEngineRef, APSAudioProtocolDriverHoseControlRef, APSEndpointStreamAudioHoseRef)", 33554472, "BAE [%{ptr}] %sDeregistered hose [%{ptr}] (%s) with audio engine (hosecount = %d)\n", a1, v17, a2, 0, *(DerivedStorage + 648));
    }
  }

  bufferedAudioEngine_updateStartupConfiguration(a1, *(DerivedStorage + 648) == 0);
  v18 = CMBaseObjectGetDerivedStorage();
  cf = 0;
  valuePtr = 0;
  if (!*v18)
  {
    v19 = v18;
    CFPreferenceNumberWithDefault = FigGetCFPreferenceNumberWithDefault();
    v21 = *(v19 + 80);
    if (v21)
    {
      v22 = *MEMORY[0x277CE9F58];
      do
      {
        v23 = v21[2];
        v24 = *(*(CMBaseObjectGetVTable() + 8) + 48);
        if (v24)
        {
          v25 = v24(v23, v22, 0, &cf);
          v26 = cf;
          if (v25)
          {
            v27 = 1;
          }

          else
          {
            v27 = cf == 0;
          }

          if (v27)
          {
            goto LABEL_40;
          }

          v28 = CFGetTypeID(cf);
          if (v28 == CFNumberGetTypeID())
          {
            CFNumberGetValue(cf, kCFNumberSInt32Type, &valuePtr);
            if (CFPreferenceNumberWithDefault <= valuePtr)
            {
              CFPreferenceNumberWithDefault = valuePtr;
            }
          }
        }

        v26 = cf;
LABEL_40:
        if (v26)
        {
          CFRelease(v26);
          cf = 0;
        }

        valuePtr = 0;
        v21 = *v21;
      }

      while (v21);
    }

    if (CFPreferenceNumberWithDefault >= 0x753000)
    {
      v29 = 7680000;
    }

    else
    {
      v29 = CFPreferenceNumberWithDefault;
    }

    *(v19 + 176) = v29;
    if (gLogCategory_APAudioEngineBuffered <= 50 && (gLogCategory_APAudioEngineBuffered != -1 || _LogCategory_Initialize()))
    {
      bufferedAudioEngine_removeHose_cold_3();
    }

    if (cf)
    {
      CFRelease(cf);
    }
  }

  v30 = 0;
LABEL_52:
  if (!*(DerivedStorage + 648))
  {
    *(DerivedStorage + 652) = 0;
  }

  return v30;
}

_BYTE *bufferedAudioEngine_invalidateInternalCompletion(uint64_t a1)
{
  result = CMBaseObjectGetDerivedStorage();
  *result = 1;
  return result;
}

void *bufferedAudioEngine_getHoseDecriptorFromHose(uint64_t a1, uint64_t a2)
{
  v2 = (CMBaseObjectGetDerivedStorage() + 640);
  do
  {
    v2 = *v2;
  }

  while (v2 && !FigCFEqual());
  return v2;
}

void bufferedAudioEngine_tearDownResumedStateAndStructuresInternal(CMTime *a1, int a2)
{
  v79 = *MEMORY[0x277D85DE8];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v5 = CMBaseObjectGetDerivedStorage();
  if (*(v5 + 1784))
  {
    APSPriorityDispatchSourceCancel();
    CFRelease(*(v5 + 1784));
    *(v5 + 1784) = 0;
  }

  v6 = CMBaseObjectGetDerivedStorage();
  if (*(v6 + 536))
  {
    APSPriorityDispatchSourceCancel();
    CFRelease(*(v6 + 536));
    *(v6 + 536) = 0;
  }

  *(v6 + 544) = 0;
  v7 = *(DerivedStorage + 1192);
  if (v7)
  {
    CMBufferQueueReset(v7);
    *(DerivedStorage + 1208) = 0;
  }

  v8 = *(DerivedStorage + 584);
  if (v8)
  {
    CFRelease(v8);
    *(DerivedStorage + 584) = 0;
  }

  v9 = *(DerivedStorage + 496);
  if (v9)
  {
    CFRelease(v9);
    *(DerivedStorage + 496) = 0;
  }

  bufferedAudioEngine_destroyProtocolDriverTickTimer(a1);
  v10 = MEMORY[0x277CC0898];
  v70 = *MEMORY[0x277CC0898];
  *(DerivedStorage + 504) = *MEMORY[0x277CC0898];
  v11 = *(v10 + 16);
  *(DerivedStorage + 520) = v11;
  APMessageRingBufferedFlush(*(DerivedStorage + 616), 0, 0);
  v12 = *(DerivedStorage + 616);
  if (v12)
  {
    CFRelease(v12);
    *(DerivedStorage + 616) = 0;
  }

  v13 = *(DerivedStorage + 624);
  if (v13)
  {
    CFRelease(v13);
    *(DerivedStorage + 624) = 0;
  }

  v14 = MEMORY[0x277CC08F0];
  v15 = *MEMORY[0x277CC08F0];
  *(DerivedStorage + 756) = *MEMORY[0x277CC08F0];
  v16 = *(v14 + 16);
  *(DerivedStorage + 772) = v16;
  *(DerivedStorage + 780) = v15;
  *(DerivedStorage + 796) = v16;
  *(DerivedStorage + 804) = v70;
  *(DerivedStorage + 820) = v11;
  *(DerivedStorage + 708) = v70;
  *(DerivedStorage + 724) = v11;
  *(DerivedStorage + 748) = v11;
  *(DerivedStorage + 732) = v70;
  *(DerivedStorage + 1272) = v11;
  *(DerivedStorage + 1256) = v70;
  *(DerivedStorage + 1132) = v11;
  *(DerivedStorage + 1116) = v70;
  bufferedAudioEngine_setTranscodeIsRestingAndUpdateConsumer(a1, 0);
  v17 = *(DerivedStorage + 1000);
  if (v17)
  {
    CFRelease(v17);
    *(DerivedStorage + 1000) = 0;
  }

  v18 = *(DerivedStorage + 1008);
  if (v18)
  {
    CFRelease(v18);
    *(DerivedStorage + 1008) = 0;
  }

  APSTimedInfoManagerSuspend();
  CMNotificationCenterGetDefaultLocalCenter();
  FigNotificationCenterRemoveWeakListener();
  v19 = *(DerivedStorage + 488);
  if (v19)
  {
    CFRelease(v19);
    *(DerivedStorage + 488) = 0;
  }

  v20 = *(DerivedStorage + 1032);
  if (v20)
  {
    CFRelease(v20);
    *(DerivedStorage + 1032) = 0;
  }

  v21 = *(DerivedStorage + 1040);
  if (v21)
  {
    CFRelease(v21);
    *(DerivedStorage + 1040) = 0;
  }

  v22 = *(DerivedStorage + 872);
  if (v22)
  {
    CFRelease(v22);
    *(DerivedStorage + 872) = 0;
  }

  *(DerivedStorage + 888) = 0;
  CFArrayRemoveAllValues(*(DerivedStorage + 1248));
  *(DerivedStorage + 880) = 0;
  *(DerivedStorage + 652) = 0;
  *(DerivedStorage + 1080) = v70;
  *(DerivedStorage + 1096) = v11;
  CFArrayRemoveAllValues(*(DerivedStorage + 1104));
  *(DerivedStorage + 840) = 0;
  *(DerivedStorage + 896) = 0xBFF0000000000000;
  *(DerivedStorage + 882) = 0;
  *(DerivedStorage + 936) = 0;
  *(DerivedStorage + 1164) = v70;
  *(DerivedStorage + 1180) = v11;
  *(DerivedStorage + 576) = 0;
  bufferedAudioEngine_releaseCryptors(a1, 0);
  *(DerivedStorage + 1224) = 0;
  bufferedAudioEngine_releaseMagicCookies(a1, 0);
  v23 = *(DerivedStorage + 1048);
  if (v23)
  {
    CFRelease(v23);
    *(DerivedStorage + 1048) = 0;
  }

  bufferedAudioEngine_updatePlaybackState(a1, 1);
  if (*(DerivedStorage + 952))
  {
    if (gLogCategory_APAudioEngineBuffered <= 50 && (gLogCategory_APAudioEngineBuffered != -1 || _LogCategory_Initialize()))
    {
      bufferedAudioEngine_tearDownResumedStateAndStructuresInternal_cold_1();
    }

    bufferedAudioEngine_callSetRateAndAnchorTimeClientCompletionCallback(a1, 0xFFFFBB54, MEMORY[0x277CC08F0], MEMORY[0x277CC0898], 0, *(DerivedStorage + 952), *(DerivedStorage + 960), *(DerivedStorage + 888));
    *(DerivedStorage + 952) = 0;
    *(DerivedStorage + 960) = 0;
  }

  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveObserver(DarwinNotifyCenter, a1, @"com.apple.mobileipod-prefsChanged", 0);
  if (a2)
  {
    v25 = CMBaseObjectGetDerivedStorage();
    *&v73.value = v70;
    v73.epoch = v11;
    if (*(v25 + 1280))
    {
      v26 = v25;
      HostTimeClock = CMClockGetHostTimeClock();
      CMClockGetTime(&v73, HostTimeClock);
      lhs = v73;
      rhs = *(v26 + 1288);
      CMTimeSubtract(&time, &lhs, &rhs);
      lhs.value = time.value;
      lhs.timescale = time.timescale;
      if (time.flags)
      {
        time.value = lhs.value;
        time.timescale = lhs.timescale;
        Seconds = CMTimeGetSeconds(&time);
        Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
        if (!Mutable)
        {
          goto LABEL_83;
        }

        v29 = Mutable;
        if (Seconds != 0.0)
        {
          time = *(v26 + 1344);
          CMTimeGetSeconds(&time);
        }
      }

      else
      {
        v28 = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
        if (!v28)
        {
          goto LABEL_83;
        }

        v29 = v28;
        Seconds = 0.0;
      }

      FigCFDictionarySetInt64();
      FigCFDictionarySetInt64();
      FigCFDictionarySetInt64();
      FigCFDictionarySetInt64();
      FigCFDictionarySetInt64();
      FigCFDictionarySetInt64();
      time = *(v26 + 1384);
      CMTimeGetSeconds(&time);
      FigCFDictionarySetInt64();
      time = *(v26 + 1408);
      CMTimeGetSeconds(&time);
      FigCFDictionarySetInt64();
      CFDictionarySetValue(v29, @"sessionType", @"AudioBuffered");
      v32 = CMBaseObjectGetDerivedStorage();
      time.value = 0;
      LODWORD(rhs.value) = 0;
      if (*(v32 + 1280))
      {
        bufferedAudioEngine_tearDownResumedStateAndStructuresInternal_cold_2(v32, &rhs, &time);
      }

      FigCFDictionarySetValue();
      v33 = *MEMORY[0x277CBECE8];
      v34 = CFArrayCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF128]);
      if (v34)
      {
        v35 = v34;
        CFDictionaryApplyFunction(*(v26 + 1432), bufferedAudioEngine_audioFormatDurationDictToArrayForRTC, v34);
        FigCFDictionarySetValue();
        v36 = CFArrayCreateMutable(v33, 0, MEMORY[0x277CBF128]);
        if (v36)
        {
          CFDictionaryApplyFunction(*(v26 + 1440), bufferedAudioEngine_audioFormatDurationDictToArrayForRTC, v36);
          FigCFDictionarySetValue();
          v37 = CFArrayCreateMutable(v33, 0, MEMORY[0x277CBF128]);
          if (v37)
          {
            CFDictionaryApplyFunction(*(v26 + 1448), bufferedAudioEngine_audioFormatDurationDictToArrayForRTC, v37);
            FigCFDictionarySetValue();
            FigCFDictionarySetInt64();
            FigCFDictionarySetInt64();
            FigCFDictionarySetValue();
            v38 = CFArrayCreateMutable(v33, 0, MEMORY[0x277CBF128]);
            if (v38 && (v39 = CFArrayCreateMutable(v33, 0, MEMORY[0x277CBF128])) != 0)
            {
              v68 = DerivedStorage;
              v69 = v39;
              v64 = v37;
              v65 = v36;
              v66 = v29;
              v67 = a1;
              v40 = CMBaseObjectGetDerivedStorage();
              time.value = 0;
              rhs.value = 0;
              v76 = 0;
              v77 = 0;
              v74 = 0;
              v75 = 0;
              if (*(v40 + 1280))
              {
                v41 = v40;
                Count = CFArrayGetCount(*(v40 + 1496));
                if (Count >= 1)
                {
                  v43 = Count;
                  for (i = 0; v43 != i; ++i)
                  {
                    CFArrayGetValueAtIndex(*(v41 + 1496), i);
                    if (FigCFDictionaryGetInt64IfPresent() && FigCFDictionaryGetInt64IfPresent() && FigCFDictionaryGetInt64IfPresent())
                    {
                      v45 = v33;
                      v46 = CFDictionaryCreateMutable(v33, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
                      if (!v46)
                      {
                        bufferedAudioEngine_tearDownResumedStateAndStructuresInternal_cold_3();
                        break;
                      }

                      v47 = v46;
                      CFDictionaryGetInt64();
                      FigCFDictionarySetInt64();
                      UpTicksToMilliseconds();
                      FigCFDictionarySetInt64();
                      UpTicksToMilliseconds();
                      FigCFDictionarySetInt64();
                      FigCFDictionaryGetValue();
                      FigCFDictionarySetValue();
                      if (FigCFDictionaryGetInt64IfPresent())
                      {
                        FigCFDictionarySetInt64();
                      }

                      if (FigCFDictionaryGetInt64IfPresent() && FigCFDictionaryGetInt64IfPresent())
                      {
                        UpTicksToMilliseconds();
                        FigCFDictionarySetInt64();
                        UpTicksToMilliseconds();
                        FigCFDictionarySetInt64();
                        v48 = v38;
                      }

                      else
                      {
                        v48 = v69;
                      }

                      UpTicksToMilliseconds();
                      FigCFDictionarySetInt64();
                      CFArrayAppendValue(v48, v47);
                      CFRelease(v47);
                      v33 = v45;
                    }
                  }
                }
              }

              v29 = v66;
              FigCFDictionarySetValue();
              v49 = v69;
              FigCFDictionarySetValue();
              if (*(v26 + 1504))
              {
                mach_absolute_time();
                *(v26 + 1512) += UpTicksToMilliseconds();
              }

              DerivedStorage = v68;
              v37 = v64;
              v36 = v65;
              FigCFDictionarySetInt64();
              FigCFDictionarySetInt32();
              bufferedAudioEngine_updateActiveAudioEngineCount(v67, 0);
              APSRTCReportingAgentSendEvent();
              if (gLogCategory_APAudioEngineBuffered <= 50 && (gLogCategory_APAudioEngineBuffered != -1 || _LogCategory_Initialize()))
              {
                if (v67)
                {
                  v50 = (CMBaseObjectGetDerivedStorage() + 392);
                }

                else
                {
                  v50 = "";
                }

                LogPrintF(&gLogCategory_APAudioEngineBuffered, "void bufferedAudioEngine_sendSessionEndedEvent(FigEndpointStreamAudioEngineRef)", 33554482, "BAE [%{ptr}] %sdurationSecs %u, maxHoseCount %d, displayID %@, self clusterType %u\n", v67, v50, Seconds, *(v26 + 1316), *(v26 + 1480), *(v26 + 1520));
              }
            }

            else
            {
              v49 = 0;
            }
          }

          else
          {
            v49 = 0;
            v38 = 0;
          }
        }

        else
        {
          v49 = 0;
          v38 = 0;
          v37 = 0;
        }

        CFRelease(v29);
        CFRelease(v35);
        if (v36)
        {
          CFRelease(v36);
        }

        if (v37)
        {
          CFRelease(v37);
        }

        if (v38)
        {
          CFRelease(v38);
        }

        if (!v49)
        {
          goto LABEL_83;
        }
      }

      else
      {
        v49 = v29;
      }

      CFRelease(v49);
    }

LABEL_83:
    APSNetworkClockReportRTCMetrics();
  }

  v51 = CMBaseObjectGetDerivedStorage();
  v52 = v51[160];
  if (v52)
  {
    CFRelease(v52);
    v51[160] = 0;
  }

  v53 = v51[171];
  if (v53)
  {
    CFRelease(v53);
    v51[171] = 0;
  }

  v54 = v51[172];
  if (v54)
  {
    CFRelease(v54);
    v51[172] = 0;
  }

  v55 = v51[179];
  if (v55)
  {
    CFRelease(v55);
    v51[179] = 0;
  }

  v56 = v51[180];
  if (v56)
  {
    CFRelease(v56);
    v51[180] = 0;
  }

  v57 = v51[181];
  if (v57)
  {
    CFRelease(v57);
    v51[181] = 0;
  }

  v58 = v51[182];
  if (v58)
  {
    CFRelease(v58);
    v51[182] = 0;
  }

  v59 = v51[185];
  if (v59)
  {
    CFRelease(v59);
    v51[185] = 0;
  }

  v60 = v51[186];
  if (v60)
  {
    CFRelease(v60);
    v51[186] = 0;
  }

  v61 = v51[187];
  if (v61)
  {
    CFRelease(v61);
    v51[187] = 0;
  }

  v62 = v51[55];
  if (v62)
  {
    CFRelease(v62);
    v51[55] = 0;
  }

  v63 = *(DerivedStorage + 1072);
  if (v63)
  {
    CFRelease(v63);
    *(DerivedStorage + 1072) = 0;
  }

  *(DerivedStorage + 530) = 0;
}

uint64_t bufferedAudioEngine_endpointStreamActiveConfigurationDidBecomeInvalidNotification(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APAudioEngineBuffered <= 90 && (gLogCategory_APAudioEngineBuffered != -1 || _LogCategory_Initialize()))
  {
    bufferedAudioEngine_endpointStreamActiveConfigurationDidBecomeInvalidNotification_cold_1();
  }

  CMNotificationCenterGetDefaultLocalCenter();

  return FigDispatchAsyncPostNotification();
}

void bufferedAudioEngine_destroyProtocolDriverTickTimer(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 1792))
  {
    APSPriorityDispatchSourceCancel();
    CFRelease(*(DerivedStorage + 1792));
    *(DerivedStorage + 1792) = 0;
  }
}

uint64_t bufferedAudioEngine_callSetRateAndAnchorTimeClientCompletionCallback(const void *a1, unsigned int a2, __int128 *a3, __int128 *a4, const void *a5, uint64_t a6, uint64_t a7, double a8)
{
  CMBaseObjectGetDerivedStorage();
  if (a5)
  {
    CFRetain(a5);
  }

  CFRetain(a1);
  return APSDispatchAsyncFHelper();
}

void bufferedAudioEngine_updateInternalBadgeInfoAndPostNotificationIfNecessary(uint64_t a1, const void *a2, int a3)
{
  keys[1] = *MEMORY[0x277D85DE8];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v6 = *(DerivedStorage + 640);
  FigCFDictionaryGetValue();
  if (FigCFEqual() || FigCFEqual())
  {
    if (!v6)
    {
LABEL_6:
      v7 = *MEMORY[0x277CBECE8];
      keys[0] = @"ContentType";
      values = *MEMORY[0x277CEA040];
      v8 = CFDictionaryCreate(v7, keys, &values, 1, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
LABEL_9:
      a2 = v8;
      goto LABEL_10;
    }

    while (!APSGetFBOPropertyInt64())
    {
      v6 = *v6;
      if (!v6)
      {
        goto LABEL_6;
      }
    }
  }

  if (a2)
  {
    v8 = CFRetain(a2);
    goto LABEL_9;
  }

LABEL_10:
  if (a3 || !FigCFEqual())
  {
    CMNotificationCenterGetDefaultLocalCenter();
    FigDispatchAsyncPostNotification();
  }

  v9 = *(DerivedStorage + 1040);
  *(DerivedStorage + 1040) = a2;
  if (a2)
  {
    CFRetain(a2);
  }

  if (v9)
  {
    CFRelease(v9);
  }

  if (a2)
  {
    CFRelease(a2);
  }
}

void __bufferedAudioEngine_handleTimedInfoManagerNotification_block_invoke(void *a1)
{
  if (*(a1[4] + 592))
  {
    Value = FigCFDictionaryGetValue();
    CMBaseObject = FigEndpointStreamGetCMBaseObject();
    v4 = *(*(CMBaseObjectGetVTable() + 8) + 56);
    if (v4)
    {
      v4(CMBaseObject, @"ActiveBadgingFormatInfo", Value);
    }
  }

  else
  {
    __bufferedAudioEngine_handleTimedInfoManagerNotification_block_invoke_cold_1();
  }

  v5 = a1[5];
  if (v5)
  {
    CFRelease(v5);
  }

  v6 = a1[6];
  if (v6)
  {

    CFRelease(v6);
  }
}

const char *bufferedAudioEngine_playbackStateGetCString(int a1)
{
  if ((a1 - 1) > 7)
  {
    return "Invalid";
  }

  else
  {
    return off_27849DAA8[a1 - 1];
  }
}

uint64_t bufferedAudioEngine_updateCriticalBufferingState(uint64_t a1)
{
  v46 = *MEMORY[0x277D85DE8];
  v43 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  *&v42.value = *MEMORY[0x277CC08F0];
  v3 = *(MEMORY[0x277CC08F0] + 16);
  v42.epoch = v3;
  v38 = *&v42.value;
  *&v41.value = *&v42.value;
  v41.epoch = v3;
  v4 = *(DerivedStorage + 884);
  v6 = v4 == 6 || v4 == 8;
  if (bufferedAudioEngine_updateCriticalBufferingState_sHoseShouldReportCriticalOnce != -1)
  {
    bufferedAudioEngine_updateCriticalBufferingState_cold_1();
  }

  bufferedAudioEngine_getCurrentRemoteMediaTimeInternal(&v43, &v42);
  if (v43)
  {
    return bufferedAudioEngine_updateCriticalBufferingState_cold_2();
  }

  v7 = *(DerivedStorage + 640);
  if (v7)
  {
    v37 = 0;
    v36 = *MEMORY[0x277CE9FA8];
    v8 = *MEMORY[0x277CBED28];
    v9 = *MEMORY[0x277CBED10];
    do
    {
      if (*(v7 + 33))
      {
        bufferedAudioEngine_getLastDeliveredRemoteMediaTimeForHose(v7, &lhs);
      }

      else
      {
        bufferedAudioEngine_getLastSentRemoteMediaTimeForHose(v7, &lhs);
      }

      value = lhs.value;
      timescale = lhs.timescale;
      if (lhs.flags)
      {
        lhs.value = value;
        lhs.timescale = timescale;
        rhs = v42;
        CMTimeSubtract(&v41, &lhs, &rhs);
      }

      else
      {
        *&v41.value = v38;
        v41.epoch = v3;
      }

      lhs = v41;
      rhs = *(DerivedStorage + 188);
      v10 = CMTimeCompare(&lhs, &rhs);
      *(v7 + 120) = v41;
      v11 = v10 < 0 && v6;
      if (v11 && !*(v7 + 32))
      {
        if (APSSettingsIsFeatureEnabled() && *(DerivedStorage + 577))
        {
          *(v7 + 272) = 1;
          if (gLogCategory_APAudioEngineBuffered <= 30 && (gLogCategory_APAudioEngineBuffered != -1 || _LogCategory_Initialize()))
          {
            if (a1)
            {
              v12 = (CMBaseObjectGetDerivedStorage() + 392);
            }

            else
            {
              v12 = "";
            }

            LogPrintF(&gLogCategory_APAudioEngineBuffered, "OSStatus bufferedAudioEngine_updateCriticalBufferingState(FigEndpointStreamAudioEngineRef)", 33554462, "BAE [%{ptr}] %s[0x%04X] Hose [%{ptr}] became critical - wake it up\n", a1, v12, *(DerivedStorage + 530), *(v7 + 16));
          }

          *(v7 + 64) = 256;
        }

        v37 = 1;
      }

      if (bufferedAudioEngine_updateCriticalBufferingState_sHoseShouldReportCritical)
      {
        v13 = bufferedAudioEngine_updateCriticalBufferingState_sHoseShouldReportCritical > 1 && v11;
        if (*(DerivedStorage + 884) == 5)
        {
          v14 = 1;
        }

        else
        {
          v14 = v13;
        }

        v15 = *(v7 + 16);
        if (v14)
        {
          v16 = v8;
        }

        else
        {
          v16 = v9;
        }

        v17 = *(*(CMBaseObjectGetVTable() + 8) + 56);
        if (v17)
        {
          v17(v15, v36, v16);
        }

        if (gLogCategory_APAudioEngineBuffered <= 30 && (gLogCategory_APAudioEngineBuffered != -1 || _LogCategory_Initialize()))
        {
          if (a1)
          {
            v18 = (CMBaseObjectGetDerivedStorage() + 392);
          }

          else
          {
            v18 = "";
          }

          v19 = "F";
          if (v14)
          {
            v19 = "T";
          }

          LogPrintF(&gLogCategory_APAudioEngineBuffered, "OSStatus bufferedAudioEngine_updateCriticalBufferingState(FigEndpointStreamAudioEngineRef)", 33554462, "BAE [%{ptr}] %ssignal hose [%{ptr}] Critical=%s", a1, v18, *(v7 + 16), v19);
        }
      }

      v7 = *v7;
    }

    while (v7);
  }

  else
  {
    v37 = 0;
  }

  v20 = v37;
  *(DerivedStorage + 652) = v37;
  if (!APSSettingsIsFeatureEnabled())
  {
    goto LABEL_84;
  }

  if (!*(DerivedStorage + 577))
  {
    goto LABEL_84;
  }

  v21 = *(DerivedStorage + 640);
  if (!v21)
  {
    goto LABEL_84;
  }

  v22 = &gLogCategory_APEndpointPlaybackSessionRemoteControl;
  v23 = &gLogCategory_APAudioEngineBuffered;
  v24 = "";
  v25 = 1;
  do
  {
    while (!v20)
    {
      lhs = *(v21 + 5);
      rhs = *(DerivedStorage + 188);
      if (CMTimeCompare(&lhs, &rhs) < 1 || !*(v21 + 272))
      {
        goto LABEL_74;
      }

      v25 = 0;
      *(v21 + 272) = 0;
      v21 = *v21;
      if (!v21)
      {
        goto LABEL_83;
      }
    }

    if (!*(v21 + 32) && !*(v21 + 64))
    {
      lhs = *(v21 + 5);
      rhs = *(DerivedStorage + 212);
      if (CMTimeCompare(&lhs, &rhs) >= 1)
      {
        *(v21 + 64) = 1;
        v26 = v22[594];
        if (v26 <= 50 && (v26 != -1 || _LogCategory_Initialize()))
        {
          if (a1)
          {
            v27 = v24;
            v28 = v23;
            v29 = CMBaseObjectGetDerivedStorage() + 392;
          }

          else
          {
            v28 = v23;
            v27 = v24;
            v29 = v24;
          }

          v30 = *(DerivedStorage + 530);
          v31 = v21[2];
          v32 = v21[33];
          lhs = *(v21 + 5);
          Seconds = CMTimeGetSeconds(&lhs);
          v35 = v29;
          v23 = v28;
          LogPrintF(v28, "OSStatus bufferedAudioEngine_updateCriticalBufferingState(FigEndpointStreamAudioEngineRef)", 33554482, "BAE [%{ptr}] %s[0x%04X] Hose [%{ptr}] (%@) starting to rest (buffered seconds = %1.3f), because a remote hose has critical buffer level\n", a1, v35, v30, v31, v32, *&Seconds);
          v20 = v37;
          v24 = v27;
          v22 = &gLogCategory_APEndpointPlaybackSessionRemoteControl;
        }
      }
    }

LABEL_74:
    v21 = *v21;
  }

  while (v21);
  if (v25)
  {
    goto LABEL_84;
  }

LABEL_83:
  bufferedAudioEngine_wakeUpHoses(a1);
LABEL_84:
  result = *(DerivedStorage + 1072);
  if (result)
  {
    result = APSWirelessCoexManagerNotifyCriticalBuffering();
    v43 = result;
    if (result)
    {
      return bufferedAudioEngine_updateCriticalBufferingState_cold_3(result, a1, v20);
    }
  }

  return result;
}

CMTime *bufferedAudioEngine_getCurrentRemoteMediaTimeInternal@<X0>(_DWORD *a2@<X1>, CMTime *a3@<X8>)
{
  *a3 = **&MEMORY[0x277CC0898];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  result = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 884) == 8)
  {
    v7 = *(DerivedStorage + 872);
    if (v7)
    {
      result = CMTimebaseGetTime(a3, v7);
      if ((a3->flags & 0x1D) != 1)
      {
        result = bufferedAudioEngine_getCurrentRemoteMediaTimeInternal_cold_2(&v13);
        v8 = v13;
        goto LABEL_9;
      }

      goto LABEL_8;
    }

    result = bufferedAudioEngine_getCurrentRemoteMediaTimeInternal_cold_3(&v14);
    v8 = v14;
  }

  else
  {
    v9 = 804;
    if ((*(DerivedStorage + 816) & 1) == 0)
    {
      v9 = 780;
    }

    v10 = DerivedStorage + v9;
    v11 = *(v10 + 16);
    *&a3->value = *v10;
    a3->epoch = v11;
    if ((a3->flags & 0x1D) == 1)
    {
LABEL_8:
      v8 = 0;
      goto LABEL_9;
    }

    result = bufferedAudioEngine_getCurrentRemoteMediaTimeInternal_cold_1(&v12);
    v8 = v12;
  }

LABEL_9:
  if (a2)
  {
    *a2 = v8;
  }

  return result;
}

uint64_t __bufferedAudioEngine_updateDataProcessingTargetQueueInternal_block_invoke()
{
  _MergedGlobals = FigGetCFPreferenceNumberWithDefault();
  result = FigGetCFPreferenceNumberWithDefault();
  dword_280FB1468 = result;
  return result;
}

uint64_t __bufferedAudioEngine_updateCriticalBufferingState_block_invoke()
{
  result = APSSettingsGetIntWithDefault();
  bufferedAudioEngine_updateCriticalBufferingState_sHoseShouldReportCritical = result;
  return result;
}

__n128 bufferedAudioEngine_getLastDeliveredRemoteMediaTimeForHose@<Q0>(uint64_t a2@<X1>, __n128 *a3@<X8>)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v28 = **&MEMORY[0x277CC0898];
  v29 = 0;
  v27 = 0;
  v26 = 0;
  v25 = 0;
  memset(&timescale, 0, sizeof(timescale));
  bufferedAudioEngine_getLastSentRemoteMediaTimeForHose(a2, &timescale);
  if (!*(a2 + 33))
  {
    goto LABEL_35;
  }

  v6 = *(DerivedStorage + 616);
  if (!v6 || !APMessageRingBufferedGetUsedCount(v6) || (timescale.flags & 1) == 0)
  {
    goto LABEL_35;
  }

  if (!*(DerivedStorage + 577))
  {
    v12 = *(a2 + 16);
    v13 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v13)
    {
      v14 = v13(v12, *MEMORY[0x277CE9FC0], *MEMORY[0x277CBECE8], &v29);
      if (!v14)
      {
        if (!v29)
        {
          goto LABEL_37;
        }

        if (*(DerivedStorage + 576))
        {
          v15 = APSAPAPBBufDecodeHeader();
          if (v15)
          {
            bufferedAudioEngine_getLastDeliveredRemoteMediaTimeForHose_cold_2(v15);
            goto LABEL_35;
          }
        }

        else
        {
          BufferedAudioDataTimestamp = APSTransportMessageGetBufferedAudioDataTimestamp();
          if (BufferedAudioDataTimestamp)
          {
            bufferedAudioEngine_getLastDeliveredRemoteMediaTimeForHose_cold_3(BufferedAudioDataTimestamp);
            goto LABEL_35;
          }

          BufferedAudioDataExtendedSequenceNumber = APSTransportMessageGetBufferedAudioDataExtendedSequenceNumber();
          if (BufferedAudioDataExtendedSequenceNumber)
          {
            bufferedAudioEngine_getLastDeliveredRemoteMediaTimeForHose_cold_4(BufferedAudioDataExtendedSequenceNumber);
            goto LABEL_35;
          }

          CMTimeMake(&v28, timescale.value + HIDWORD(v27) - LODWORD(timescale.value), timescale.timescale);
        }

        APMessageRingBufferedGetFirstValidReadIndex(*(DerivedStorage + 616), &v26);
        if (((v26 - v27) & 0x800000) != 0 || ((v26 ^ v27) & 0xFFFFFF) == 0)
        {
          APMessageRingBufferedGetLastValidReadIndexAndTimestamp(*(DerivedStorage + 616), &v25, 0);
          if (((v25 - v27) & 0x800000) == 0 || ((v25 ^ v27) & 0xFFFFFF) == 0)
          {
            v18 = *(a2 + 36);
            if (((v18 - v27) & 0x800000) == 0 || ((v18 ^ v27) & 0xFFFFFF) == 0)
            {
              time1 = v28;
              v22 = timescale;
              v19 = CMTimeCompare(&time1, &v22);
              if (v29)
              {
                CFRelease(v29);
              }

              if (v19 <= 0)
              {
                goto LABEL_29;
              }

LABEL_37:
              v20 = MEMORY[0x277CC0898];
              goto LABEL_38;
            }
          }
        }

LABEL_35:
        if (v29)
        {
          CFRelease(v29);
        }

        goto LABEL_37;
      }
    }

    else
    {
      v14 = 4294954514;
    }

    bufferedAudioEngine_getLastDeliveredRemoteMediaTimeForHose_cold_5(v14);
    goto LABEL_35;
  }

  CMBaseObjectGetDerivedStorage();
  v7 = *FigCFDictionaryGetValue();
  v8 = *(a2 + 24);
  v9 = *(CMBaseObjectGetVTable() + 16);
  if (!v9)
  {
    v11 = 4294954508;
    goto LABEL_32;
  }

  v10 = *(v9 + 104);
  if (!v10)
  {
    v11 = 4294954514;
    goto LABEL_32;
  }

  v11 = v10(v7, v8, &v28);
  if (v11)
  {
LABEL_32:
    bufferedAudioEngine_getLastDeliveredRemoteMediaTimeForHose_cold_1(v11);
    goto LABEL_35;
  }

  time1 = v28;
  v22 = timescale;
  if (CMTimeCompare(&time1, &v22) > 0)
  {
    goto LABEL_37;
  }

LABEL_29:
  v20 = &v28;
LABEL_38:
  result = *v20;
  *a3 = *v20;
  a3[1].n128_u64[0] = v20[1].n128_u64[0];
  return result;
}

__n128 bufferedAudioEngine_getLastSentRemoteMediaTimeForHose@<Q0>(uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v6 = MEMORY[0x277CC0898];
  *(a3 + 16) = *(MEMORY[0x277CC0898] + 16);
  *a3 = *v6;
  if (*(DerivedStorage + 577))
  {
    v7 = *(a2 + 24);
    APSAudioProtocolDriverHoseDataBaseProtocolGetProtocolID();
    ProtocolVTable = CMBaseObjectGetProtocolVTable();
    if (ProtocolVTable)
    {
      v10 = *(ProtocolVTable + 16);
      if (v10)
      {
        v11 = *(v10 + 16);
        if (v11)
        {

          v11(v7, a3);
        }
      }
    }
  }

  else
  {
    result = *(a2 + 40);
    *a3 = result;
    *(a3 + 16) = *(a2 + 56);
  }

  return result;
}