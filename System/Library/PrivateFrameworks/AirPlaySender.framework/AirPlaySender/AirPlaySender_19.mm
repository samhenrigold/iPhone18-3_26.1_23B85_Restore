uint64_t APEndpointStreamScreenRestartBitstream(uint64_t a1)
{
  v2 = *(*(CMBaseObjectGetVTable() + 16) + 40);
  if (!v2)
  {
    return 4294954514;
  }

  return v2(a1, @"ScreenRestartBitstream", 0);
}

uint64_t APEndpointStreamScreenSetRecordingState(uint64_t a1, int a2)
{
  if (a2)
  {
    v3 = @"ScreenSetRecordingStateOn";
  }

  else
  {
    v3 = @"ScreenSetRecordingStateOff";
  }

  v4 = *(*(CMBaseObjectGetVTable() + 16) + 40);
  if (!v4)
  {
    return 4294954514;
  }

  return v4(a1, v3, 0);
}

uint64_t APEndpointStreamScreenUpdateDisplayInfo(uint64_t a1, uint64_t a2)
{
  v4 = *(*(CMBaseObjectGetVTable() + 16) + 40);
  if (!v4)
  {
    return 4294954514;
  }

  return v4(a1, @"UpdateDisplayInfo", a2);
}

uint64_t APEndpointStreamScreenOverrideCanvasSize(uint64_t a1, uint64_t a2)
{
  v4 = *(*(CMBaseObjectGetVTable() + 16) + 40);
  if (!v4)
  {
    return 4294954514;
  }

  return v4(a1, @"OverrideCanvasSize", a2);
}

void screenstream_Finalize(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APEndpointStreamScreen <= 50 && (gLogCategory_APEndpointStreamScreen != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APEndpointStreamScreen, "void screenstream_Finalize(CMBaseObjectRef)", 33554482, "%@ Finalizing APEndpointStreamScreen\n", *(DerivedStorage + 40), a1);
  }

  screenstream_cleanup(a1);
  v3 = *(DerivedStorage + 8);
  if (v3)
  {
    CFRelease(v3);
    *(DerivedStorage + 8) = 0;
  }

  v4 = *(DerivedStorage + 1152);
  if (v4)
  {
    CFRelease(v4);
    *(DerivedStorage + 1152) = 0;
  }

  v5 = *(DerivedStorage + 1160);
  if (v5)
  {
    dispatch_release(v5);
    *(DerivedStorage + 1160) = 0;
  }

  v6 = *(DerivedStorage + 1168);
  if (v6)
  {
    CFRelease(v6);
    *(DerivedStorage + 1168) = 0;
  }

  v7 = *(DerivedStorage + 144);
  if (v7)
  {
    CFRelease(v7);
    *(DerivedStorage + 144) = 0;
  }

  v8 = *(DerivedStorage + 152);
  if (v8)
  {
    CFRelease(v8);
    *(DerivedStorage + 152) = 0;
  }

  v9 = *(DerivedStorage + 168);
  if (v9)
  {
    CFRelease(v9);
    *(DerivedStorage + 168) = 0;
  }

  v10 = *(DerivedStorage + 176);
  if (v10)
  {
    CFRelease(v10);
    *(DerivedStorage + 176) = 0;
  }

  v11 = *(DerivedStorage + 192);
  if (v11)
  {
    CFRelease(v11);
    *(DerivedStorage + 192) = 0;
  }

  v12 = *(DerivedStorage + 48);
  if (v12)
  {
    CFRelease(v12);
    *(DerivedStorage + 48) = 0;
  }

  v13 = *(DerivedStorage + 128);
  if (v13)
  {
    CFRelease(v13);
    *(DerivedStorage + 128) = 0;
  }

  v14 = *(DerivedStorage + 80);
  if (v14)
  {
    CFRelease(v14);
    *(DerivedStorage + 80) = 0;
  }

  v15 = *(DerivedStorage + 72);
  if (v15)
  {
    CFRelease(v15);
    *(DerivedStorage + 72) = 0;
  }

  v16 = *(DerivedStorage + 56);
  if (v16)
  {
    CFRelease(v16);
    *(DerivedStorage + 56) = 0;
  }

  v17 = *(DerivedStorage + 64);
  if (v17)
  {
    CFRelease(v17);
    *(DerivedStorage + 64) = 0;
  }

  v18 = *(DerivedStorage + 40);
  if (v18)
  {
    CFRelease(v18);
    *(DerivedStorage + 40) = 0;
  }

  v19 = *(DerivedStorage + 200);
  if (v19)
  {
    dispatch_source_cancel(*(DerivedStorage + 200));
    dispatch_release(v19);
    *(DerivedStorage + 200) = 0;
  }

  if (*DerivedStorage)
  {
    dispatch_release(*DerivedStorage);
    *DerivedStorage = 0;
  }

  v20 = *(DerivedStorage + 96);
  if (v20)
  {
    dispatch_release(v20);
    *(DerivedStorage + 96) = 0;
  }

  v21 = *(DerivedStorage + 504);
  if (v21)
  {
    dispatch_release(v21);
    *(DerivedStorage + 504) = 0;
  }

  v22 = *(DerivedStorage + 32);
  if (v22)
  {
    CFRelease(v22);
    *(DerivedStorage + 32) = 0;
  }

  v23 = *(DerivedStorage + 16);
  if (v23)
  {
    os_release(v23);
    *(DerivedStorage + 16) = 0;
  }
}

__CFString *screenstream_CopyDebugDescription(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  Mutable = CFStringCreateMutable(*MEMORY[0x277CBECE8], 0);
  v4 = Mutable;
  v5 = "yes";
  if (*(DerivedStorage + 25))
  {
    v6 = "yes";
  }

  else
  {
    v6 = "no";
  }

  if (!*(DerivedStorage + 26))
  {
    v5 = "no";
  }

  CFStringAppendFormat(Mutable, 0, @"<APEndpointStreamScreen %p '%@', activated: %s resumed: %s >", a1, *(DerivedStorage + 8), v6, v5);
  return v4;
}

void screenstream_cleanup(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  screenstream_stopStatsTimer(a1);
  CMNotificationCenterGetDefaultLocalCenter();
  CMNotificationCenterRemoveListener();
  if (*(DerivedStorage + 160))
  {
    FigVirtualDisplaySessionDeactivate();
    v3 = *(DerivedStorage + 160);
    if (v3)
    {
      CFRelease(v3);
      *(DerivedStorage + 160) = 0;
    }
  }

  screenstream_teardownTransportStream(a1);
  v4 = *(DerivedStorage + 104);
  if (v4)
  {
    v5 = *(DerivedStorage + 112);
    if (!v5 || (CMBufferQueueRemoveTrigger(v4, v5), *(DerivedStorage + 112) = 0, (v4 = *(DerivedStorage + 104)) != 0))
    {
      CFRelease(v4);
      *(DerivedStorage + 104) = 0;
    }
  }

  v6 = *(DerivedStorage + 208);
  if (v6)
  {
    CFRelease(v6);
    *(DerivedStorage + 208) = 0;
  }

  v7 = *(DerivedStorage + 304);
  if (v7)
  {
    CFRelease(v7);
    *(DerivedStorage + 304) = 0;
  }

  v8 = *(DerivedStorage + 312);
  if (v8)
  {
    CFRelease(v8);
    *(DerivedStorage + 312) = 0;
  }

  v9 = *(DerivedStorage + 320);
  if (v9)
  {
    CFRelease(v9);
    *(DerivedStorage + 320) = 0;
  }

  v10 = *(DerivedStorage + 328);
  if (v10)
  {
    CFRelease(v10);
    *(DerivedStorage + 328) = 0;
  }

  v11 = *(DerivedStorage + 344);
  if (v11)
  {
    CFRelease(v11);
    *(DerivedStorage + 344) = 0;
  }

  v12 = *(DerivedStorage + 352);
  if (v12)
  {
    CFRelease(v12);
    *(DerivedStorage + 352) = 0;
  }

  v13 = *(DerivedStorage + 296);
  if (v13)
  {
    CFRelease(v13);
    *(DerivedStorage + 296) = 0;
  }

  v14 = *(DerivedStorage + 416);
  if (v14)
  {
    CFRelease(v14);
    *(DerivedStorage + 416) = 0;
  }

  v15 = *MEMORY[0x277CBF3A8];
  *(DerivedStorage + 216) = *MEMORY[0x277CBF3A8];
  *(DerivedStorage + 248) = v15;
  *(DerivedStorage + 264) = v15;
  v16 = *(DerivedStorage + 120);
  if (v16)
  {
    CFRelease(v16);
    *(DerivedStorage + 120) = 0;
  }

  v17 = *(DerivedStorage + 504);
  if (v17)
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 0x40000000;
    block[2] = __screenstream_cleanup_block_invoke;
    block[3] = &__block_descriptor_tmp_35;
    block[4] = DerivedStorage;
    dispatch_sync(v17, block);
  }
}

void screenstream_stopStatsTimer(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 200))
  {
    v2 = DerivedStorage;
    if (gLogCategory_APEndpointStreamScreen <= 30 && (gLogCategory_APEndpointStreamScreen != -1 || _LogCategory_Initialize()))
    {
      screenstream_stopStatsTimer_cold_1();
    }

    v3 = *(v2 + 200);

    dispatch_source_set_timer(v3, 0xFFFFFFFFFFFFFFFFLL, 0, 0);
  }
}

void screenstream_virtualDisplaySourceTerminated(uint64_t a1, const void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APEndpointStreamScreen <= 50)
  {
    v6 = DerivedStorage;
    if (gLogCategory_APEndpointStreamScreen != -1 || _LogCategory_Initialize())
    {
      screenstream_virtualDisplaySourceTerminated_cold_1(v6, v4, v5);
    }
  }

  screenstream_handleFatalError(a2, 4294950528, @"display source terminated");
}

void __screenstream_cleanup_block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 512);
  if (v2)
  {
    CFRelease(v2);
    *(*(a1 + 32) + 512) = 0;
  }
}

void screenstream_handleFatalError(const void *a1, uint64_t a2, const void *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APEndpointStreamScreen <= 50 && (gLogCategory_APEndpointStreamScreen != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APEndpointStreamScreen, "void screenstream_handleFatalError(FigEndpointStreamRef, OSStatus, CFStringRef)", 33554482, "%@ ### handle error: %d (%@)\n", *(DerivedStorage + 40), a2, a3);
  }

  CFRetain(a1);
  if (a3)
  {
    CFRetain(a3);
  }

  v7 = *(DerivedStorage + 96);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 0x40000000;
  block[2] = __screenstream_handleFatalError_block_invoke;
  block[3] = &__block_descriptor_tmp_42;
  v11 = a2;
  block[4] = a3;
  block[5] = a1;
  dispatch_async(v7, block);
  CFRetain(a1);
  v8 = *DerivedStorage;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 0x40000000;
  v9[2] = __screenstream_handleFatalError_block_invoke_2;
  v9[3] = &__block_descriptor_tmp_43_1;
  v9[4] = a1;
  dispatch_async(v8, v9);
}

void __screenstream_handleFatalError_block_invoke(uint64_t a1)
{
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  FigCFDictionarySetInt32();
  v3 = *(a1 + 32);
  if (v3)
  {
    CFDictionarySetValue(Mutable, *MEMORY[0x277CC17E0], v3);
  }

  CMNotificationCenterGetDefaultLocalCenter();
  CMNotificationCenterPostNotification();
  if (Mutable)
  {
    CFRelease(Mutable);
  }

  v4 = *(a1 + 32);
  if (v4)
  {
    CFRelease(v4);
  }

  v5 = *(a1 + 40);

  CFRelease(v5);
}

void __screenstream_handleFatalError_block_invoke_2(uint64_t a1)
{
  screenstream_dissociateInternal(*(a1 + 32));
  v2 = *(a1 + 32);

  CFRelease(v2);
}

void __screenstream_dissociateInternal_block_invoke(uint64_t a1)
{
  CMNotificationCenterGetDefaultLocalCenter();
  CMNotificationCenterPostNotification();
  v2 = *(a1 + 32);

  CFRelease(v2);
}

uint64_t __sbpd_logHistograms_block_invoke(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (gLogCategory_APEndpointStreamScreen <= 50)
  {
    v4 = result;
    if (gLogCategory_APEndpointStreamScreen != -1)
    {
      return __sbpd_logHistograms_block_invoke_cold_1(v4, a3, a3);
    }

    result = _LogCategory_Initialize();
    if (result)
    {
      return __sbpd_logHistograms_block_invoke_cold_1(v4, a3, a3);
    }
  }

  return result;
}

void __sbpd_reportHistograms_block_invoke(uint64_t a1, const void *a2, uint64_t a3)
{
  v5 = APSStatsHistogramCopyAsRTCString();
  if (v5)
  {
    v6 = v5;
    CFDictionarySetValue(*(a1 + 32), a2, v5);

    CFRelease(v6);
  }
}

CFDictionaryRef screenstream_copyOutputLatency(uint64_t a1)
{
  v5 = **&MEMORY[0x277CC08F0];
  v1 = 1188;
  if (*(a1 + 368) == 1)
  {
    v1 = 1192;
  }

  CMTimeMake(&v5, *(a1 + v1), 1000);
  v2 = *MEMORY[0x277CBECE8];
  v4 = v5;
  return CMTimeCopyAsDictionary(&v4, v2);
}

uint64_t screenstream_Suspend(const void *a1, const void *a2, uint64_t a3, uint64_t a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APEndpointStreamScreen <= 50 && (gLogCategory_APEndpointStreamScreen != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APEndpointStreamScreen, "OSStatus screenstream_Suspend(FigEndpointStreamRef, CFDictionaryRef, FigEndpointStreamCompletionCallback, void *)", 33554482, "%@ suspending screen stream %{ptr}\n", *(DerivedStorage + 40), a1);
  }

  CFRetain(a1);
  if (a2)
  {
    CFRetain(a2);
  }

  v9 = *DerivedStorage;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 0x40000000;
  block[2] = __screenstream_Suspend_block_invoke;
  block[3] = &__block_descriptor_tmp_103_0;
  block[4] = a1;
  block[5] = a2;
  block[6] = a3;
  block[7] = DerivedStorage;
  block[8] = a4;
  dispatch_async(v9, block);
  return 0;
}

uint64_t screenstream_Resume(const void *a1, const void *a2, uint64_t a3, uint64_t a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APEndpointStreamScreen <= 50 && (gLogCategory_APEndpointStreamScreen != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APEndpointStreamScreen, "OSStatus screenstream_Resume(FigEndpointStreamRef, CFDictionaryRef, FigEndpointStreamCompletionCallback, void *)", 33554482, "%@ resuming screen stream %{ptr}\n", *(DerivedStorage + 40), a1);
  }

  CFRetain(a1);
  if (a2)
  {
    CFRetain(a2);
  }

  v9 = *DerivedStorage;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 0x40000000;
  block[2] = __screenstream_Resume_block_invoke;
  block[3] = &__block_descriptor_tmp_108_0;
  block[4] = a1;
  block[5] = a2;
  block[6] = a3;
  block[7] = DerivedStorage;
  block[8] = a4;
  dispatch_async(v9, block);
  return 0;
}

uint64_t screenstream_Dissociate(uint64_t a1)
{
  v2 = *CMBaseObjectGetDerivedStorage();
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 0x40000000;
  block[2] = __screenstream_Dissociate_block_invoke;
  block[3] = &__block_descriptor_tmp_202_0;
  block[4] = a1;
  dispatch_sync(v2, block);
  return 0;
}

uint64_t screenstream_Control(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v17 = 0;
  v18 = &v17;
  v19 = 0x2000000000;
  v20 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (FigCFEqual())
  {
    v7 = *DerivedStorage;
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 0x40000000;
    v16[2] = __screenstream_Control_block_invoke;
    v16[3] = &unk_2784A10D8;
    v16[4] = &v17;
    v16[5] = a1;
    v16[6] = a3;
    v8 = v16;
LABEL_13:
    dispatch_sync(v7, v8);
    goto LABEL_14;
  }

  if (FigCFEqual())
  {
    v7 = *DerivedStorage;
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 0x40000000;
    v15[2] = __screenstream_Control_block_invoke_2;
    v15[3] = &unk_2784A1100;
    v15[4] = &v17;
    v15[5] = a1;
    v8 = v15;
    goto LABEL_13;
  }

  if (FigCFEqual())
  {
    v7 = *DerivedStorage;
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 0x40000000;
    v14[2] = __screenstream_Control_block_invoke_3;
    v14[3] = &unk_2784A1128;
    v14[4] = &v17;
    v14[5] = a1;
    v8 = v14;
    goto LABEL_13;
  }

  if (FigCFEqual())
  {
    v7 = *DerivedStorage;
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 0x40000000;
    v13[2] = __screenstream_Control_block_invoke_4;
    v13[3] = &unk_2784A1150;
    v13[4] = &v17;
    v13[5] = a1;
    v8 = v13;
    goto LABEL_13;
  }

  if (FigCFEqual())
  {
    v7 = *DerivedStorage;
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 0x40000000;
    v12[2] = __screenstream_Control_block_invoke_5;
    v12[3] = &unk_2784A1178;
    v12[4] = &v17;
    v12[5] = a1;
    v12[6] = a3;
    v8 = v12;
    goto LABEL_13;
  }

  if (FigCFEqual())
  {
    v7 = *DerivedStorage;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 0x40000000;
    block[2] = __screenstream_Control_block_invoke_6;
    block[3] = &unk_2784A11A0;
    block[4] = &v17;
    block[5] = a1;
    block[6] = a3;
    v8 = block;
    goto LABEL_13;
  }

  if (gLogCategory_APEndpointStreamScreen <= 90 && (gLogCategory_APEndpointStreamScreen != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APEndpointStreamScreen, "OSStatus screenstream_Control(FigEndpointStreamRef, CFStringRef, CFDictionaryRef)", 33554522, "%@ ### invalid control command '%@'\n", *(DerivedStorage + 40), a2);
  }

  *(v18 + 6) = -16760;
LABEL_14:
  v9 = *(v18 + 6);
  _Block_object_dispose(&v17, 8);
  return v9;
}

void screenStream_setResumedAndNotifiyObservers(const void *a1, int a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v5 = *(DerivedStorage + 26);
  *(DerivedStorage + 26) = a2;
  if (*(DerivedStorage + 88) != 111)
  {
    APSEventRecorderRecordEvent();
    if (!a2)
    {
      goto LABEL_17;
    }

    v12 = LogCategoryCopyOSLogHandle();
    v7 = v12;
    if (v12)
    {
      v13 = v12;
    }

    else
    {
      v13 = MEMORY[0x277D86220];
    }

    if (!os_signpost_enabled(v13))
    {
      goto LABEL_15;
    }

    *buf = 0;
    v9 = "AP_SIGNPOST_SCREEN_DISPLAYING";
    v11 = v13;
    v10 = 722862680;
    goto LABEL_14;
  }

  APSEventRecorderRecordEvent();
  if (!a2)
  {
    goto LABEL_17;
  }

  v6 = LogCategoryCopyOSLogHandle();
  v7 = v6;
  if (v6)
  {
    v8 = v6;
  }

  else
  {
    v8 = MEMORY[0x277D86220];
  }

  if (os_signpost_enabled(v8))
  {
    *buf = 0;
    v9 = "AP_SIGNPOST_ALTERNATESCREEN_DISPLAYING";
    v10 = 722862684;
    v11 = v8;
LABEL_14:
    _os_signpost_emit_with_name_impl(&dword_221FFA000, v11, OS_SIGNPOST_EVENT, v10, v9, &unk_2222A918B, buf, 2u);
  }

LABEL_15:
  if (v7)
  {
    os_release(v7);
  }

LABEL_17:
  CFRetain(a1);
  v14 = *(DerivedStorage + 96);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 0x40000000;
  block[2] = __screenStream_setResumedAndNotifiyObservers_block_invoke;
  block[3] = &__block_descriptor_tmp_105_0;
  v16 = a2;
  v17 = v5 != a2;
  block[4] = a1;
  block[5] = DerivedStorage;
  dispatch_async(v14, block);
}

void __screenStream_setResumedAndNotifiyObservers_block_invoke(uint64_t a1)
{
  CMNotificationCenterGetDefaultLocalCenter();
  CMNotificationCenterPostNotification();
  if (*(a1 + 49))
  {
    APSWiFiTransactionUpdateTransaction();
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    v3 = Mutable;
    v4 = MEMORY[0x277CBED28];
    if (!*(a1 + 48))
    {
      v4 = MEMORY[0x277CBED10];
    }

    CFDictionarySetValue(Mutable, @"IsPlaying", *v4);
    CMNotificationCenterGetDefaultLocalCenter();
    CMNotificationCenterPostNotification();
    CFRelease(v3);
  }

  v5 = *(a1 + 32);

  CFRelease(v5);
}

uint64_t sbpd_createConfigBBuf(uint64_t a1, CMBlockBufferRef *a2)
{
  blockBufferOut = 0;
  v4 = *a1;
  v5 = MEMORY[0x277CBECE8];
  if (v4)
  {
    Length = CFDataGetLength(v4);
    BlockBufferWithCFDataNoCopy = FigCreateBlockBufferWithCFDataNoCopy();
    if (BlockBufferWithCFDataNoCopy)
    {
      v8 = BlockBufferWithCFDataNoCopy;
      sbpd_createConfigBBuf_cold_1(BlockBufferWithCFDataNoCopy);
      goto LABEL_30;
    }
  }

  else if (*(a1 + 8))
  {
    v9 = APSVideoFormatDescriptionCopyAsBlockBuffer();
    if (v9)
    {
      v8 = v9;
      sbpd_createConfigBBuf_cold_2(v9);
      goto LABEL_30;
    }

    Length = CMBlockBufferGetDataLength(0);
  }

  else
  {
    Length = 0;
  }

  v10 = malloc_type_calloc(1uLL, 0x80uLL, 0x9329C86FuLL);
  v11 = v10;
  *v10 = Length;
  *(v10 + 4) = 1;
  *(v10 + 5) = *(a1 + 96);
  *(v10 + 6) = 18;
  if (*(a1 + 444))
  {
    v12 = 19;
  }

  else
  {
    v12 = 18;
  }

  *(v10 + 6) = v12;
  if (*(a1 + 408))
  {
    v12 |= 4u;
    *(v10 + 6) = v12;
  }

  if (*(a1 + 100))
  {
    v12 |= 0x40u;
    *(v10 + 6) = v12;
  }

  if (*(a1 + 8))
  {
    *(v10 + 6) = v12 | 8;
  }

  *(v10 + 7) = 1;
  v13 = *(a1 + 464);
  v14 = *(a1 + 432);
  v37 = 0;
  v38 = 0;
  v36 = 0;
  v15 = v14 + v13;
  if (v14 + v13)
  {
    v16 = *(a1 + 456);
    v17 = *(*(CMBaseObjectGetVTable() + 16) + 16);
    if (v17)
    {
      (v17)(v16, v15, &v36);
      v18 = v37;
      v17 = v38;
      goto LABEL_22;
    }
  }

  else
  {
    v17 = 0;
  }

  v18 = 0;
LABEL_22:
  *(&v19 + 1) = v17;
  *&v19 = v18;
  *(v11 + 1) = v19 >> 32;
  v20 = *(a1 + 16);
  v11[4] = v20;
  v21 = *(a1 + 24);
  v11[5] = v21;
  v22 = *(a1 + 32);
  v11[8] = v22;
  v23 = *(a1 + 40);
  v11[9] = v23;
  v24 = *(a1 + 48);
  v11[10] = v24;
  v25 = *(a1 + 56);
  v11[11] = v25;
  v26 = *(a1 + 64);
  v11[12] = v26;
  v27 = *(a1 + 72);
  v11[13] = v27;
  v28 = *(a1 + 80);
  v11[14] = v28;
  v29 = *(a1 + 88);
  v11[15] = v29;
  v30 = CMBlockBufferCreateWithMemoryBlock(*v5, v11, 0x80uLL, *MEMORY[0x277CBECF0], 0, 0, 0x80uLL, 0, &blockBufferOut);
  if (v30)
  {
    v8 = v30;
    sbpd_createConfigBBuf_cold_3(v30, v11);
  }

  else
  {
    if (*(a1 + 100) && gLogCategory_APEndpointStreamScreen <= 40 && (gLogCategory_APEndpointStreamScreen != -1 || _LogCategory_Initialize()))
    {
      sbpd_createConfigBBuf_cold_4(a1 + 424, v31, v32);
      if (!Length)
      {
        goto LABEL_29;
      }
    }

    else if (!Length)
    {
LABEL_29:
      v8 = 0;
      *a2 = blockBufferOut;
      blockBufferOut = 0;
      goto LABEL_30;
    }

    appended = CMBlockBufferAppendBufferReference(blockBufferOut, 0, 0, 0, 0);
    if (!appended)
    {
      goto LABEL_29;
    }

    v8 = appended;
    sbpd_createConfigBBuf_cold_5(appended);
  }

LABEL_30:
  if (blockBufferOut)
  {
    CFRelease(blockBufferOut);
  }

  return v8;
}

uint64_t __shouldDumpCryptorAuxData_block_invoke(uint64_t a1)
{
  result = IsAppleInternalBuild();
  if (result)
  {
    result = APSSettingsGetIntWithDefault();
    _MergedGlobals_25 = result != 0;
  }

  return result;
}

uint64_t __getRandomDataBlob_block_invoke(uint64_t a1)
{
  qword_280FB1C28 = malloc_type_calloc(1uLL, *(a1 + 32), 0x516F2D17uLL);

  return RandomBytes();
}

uint64_t screenstream_initDisplayInfo(uint64_t a1)
{
  v2 = *(a1 + 72);
  v67 = 0;
  v68 = 0;
  v65 = 0;
  v66 = 0;
  v63 = 0;
  v64 = 0;
  v61 = 0;
  v62 = 0;
  v59 = 0;
  v60 = 0;
  value = 0;
  v3 = *(a1 + 304);
  if (v3)
  {
    CFRelease(v3);
    *(a1 + 304) = 0;
  }

  APEndpointDescriptionGetCMBaseObject();
  v5 = v4;
  v6 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v6)
  {
    v17 = 4294954514;
LABEL_21:
    APSLogErrorAt();
    goto LABEL_124;
  }

  v7 = *MEMORY[0x277CBECE8];
  v8 = v6(v5, @"Name", *MEMORY[0x277CBECE8], a1 + 304);
  if (v8)
  {
    v17 = v8;
    goto LABEL_21;
  }

  v9 = *(a1 + 208);
  if (v9)
  {
    CFRelease(v9);
    *(a1 + 208) = 0;
  }

  v10 = APEndpointDisplayDescriptionCopyProperty(v2, @"EDID", v7, a1 + 208);
  if (v10)
  {
    v17 = v10;
    screenstream_initDisplayInfo_cold_1(v10);
    goto LABEL_124;
  }

  v11 = APEndpointDisplayDescriptionCopyProperty(v2, @"PixelSize", v7, &v68);
  if (v11)
  {
    v17 = v11;
    screenstream_initDisplayInfo_cold_2(v11);
    goto LABEL_124;
  }

  CGSizeMakeWithDictionaryRepresentation(v68, (a1 + 216));
  if (gLogCategory_APEndpointStreamScreen <= 40 && (gLogCategory_APEndpointStreamScreen != -1 || _LogCategory_Initialize()))
  {
    screenstream_initDisplayInfo_cold_3();
  }

  v12 = *(a1 + 216);
  v13 = MEMORY[0x277CBF3A8];
  if (*(a1 + 394))
  {
    if (v12 <= 0.0 || *(a1 + 224) <= 0.0)
    {
      screenstream_initDisplayInfo_cold_5();
    }

    else
    {
      v19 = *(a1 + 264);
      v18 = *(a1 + 272);
      if (v19 == *MEMORY[0x277CBF3A8] && v18 == *(MEMORY[0x277CBF3A8] + 8) || v19 > 0.0 && v18 > 0.0)
      {
        goto LABEL_36;
      }

      screenstream_initDisplayInfo_cold_4();
    }

    v17 = 4294950536;
    goto LABEL_124;
  }

  v14 = *(a1 + 224);
  if (v12 >= v14)
  {
    v15 = *(a1 + 224);
  }

  else
  {
    v15 = *(a1 + 216);
  }

  v16 = 720.0;
  if (v15 >= 720.0)
  {
    v16 = *(a1 + 224);
  }

  else if (v15 <= 0.0)
  {
    v12 = 1280.0;
  }

  else
  {
    v12 = v12 * (720.0 / v15);
    v16 = v14 * (720.0 / v15);
  }

  *(a1 + 216) = v12;
  *(a1 + 224) = v16;
  if (gLogCategory_APEndpointStreamScreen <= 40)
  {
    if (gLogCategory_APEndpointStreamScreen == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_36;
      }

      v12 = *(a1 + 216);
      v16 = *(a1 + 224);
    }

    LogPrintF(&gLogCategory_APEndpointStreamScreen, "OSStatus screenstream_initDisplayInfo(StreamScreenStorage *)", 33554472, "%@ sanitized display size: %.1f x %.1f\n", *(a1 + 40), *&v12, *&v16);
  }

LABEL_36:
  *(a1 + 248) = *v13;
  if (*(a1 + 380))
  {
    v20 = APEndpointDisplayDescriptionCopyProperty(v2, @"PixelSizeMax", v7, &v67);
    if (v20)
    {
      v17 = v20;
      screenstream_initDisplayInfo_cold_6(v20);
      goto LABEL_124;
    }

    CGSizeMakeWithDictionaryRepresentation(v67, (a1 + 248));
  }

  if (gLogCategory_APEndpointStreamScreen <= 40 && (gLogCategory_APEndpointStreamScreen != -1 || _LogCategory_Initialize()))
  {
    screenstream_initDisplayInfo_cold_7();
  }

  v21 = vbslq_s8(vcgtq_f64(*(a1 + 248), *(a1 + 216)), *(a1 + 248), *(a1 + 216));
  *(a1 + 248) = v21;
  if (*v21.i64 > 1920.0 || *&v21.i64[1] > 1080.0)
  {
    if (FVDUtilsHEVCEncoderSupports4K60() && APSHasHDRSenderSupport())
    {
      *(a1 + 386) = 1;
      if (!*(a1 + 394))
      {
        APSGetMaxSizePreservingAspectRatio();
        *(a1 + 248) = v37;
        *(a1 + 256) = v38;
      }
    }

    else
    {
      *(a1 + 248) = *(a1 + 216);
    }
  }

  if (gLogCategory_APEndpointStreamScreen <= 40 && (gLogCategory_APEndpointStreamScreen != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APEndpointStreamScreen, "OSStatus screenstream_initDisplayInfo(StreamScreenStorage *)", 33554472, "%@ sanitized display size max: %.1f x %.1f\n", *(a1 + 40), *(a1 + 248), *(a1 + 256));
  }

  v22 = APEndpointDisplayDescriptionCopyProperty(v2, @"PhysicalSize", v7, &v66);
  if (v22)
  {
    v17 = v22;
    screenstream_initDisplayInfo_cold_8(v22);
    goto LABEL_124;
  }

  CGSizeMakeWithDictionaryRepresentation(v66, (a1 + 264));
  v23 = *(a1 + 312);
  if (v23)
  {
    CFRelease(v23);
    *(a1 + 312) = 0;
  }

  v24 = APEndpointDisplayDescriptionCopyProperty(v2, @"UUID", v7, a1 + 312);
  if (v24)
  {
    v17 = v24;
    screenstream_initDisplayInfo_cold_9(v24);
    goto LABEL_124;
  }

  v25 = *(a1 + 320);
  if (v25)
  {
    CFRelease(v25);
    *(a1 + 320) = 0;
  }

  if (*(a1 + 381))
  {
    v26 = APEndpointDisplayDescriptionCopyProperty(v2, @"HDRInfo", v7, a1 + 320);
    if (v26)
    {
      v17 = v26;
      screenstream_initDisplayInfo_cold_10(v26);
      goto LABEL_124;
    }
  }

  screenstream_setIsHDR(a1);
  if (*(a1 + 144))
  {
    cf = 0;
    v27 = *MEMORY[0x277CD6758];
    CMBaseObject = FigVirtualDisplaySourceGetCMBaseObject();
    CMBaseObjectCopyProperty_0(CMBaseObject, v27, v7, &cf);
    v29 = FigCFEqual();
    if (cf)
    {
      CFRelease(cf);
    }

    v30 = v29 != 0;
  }

  else
  {
    v30 = 1;
  }

  if (APSHasHDRSenderSupport())
  {
    v31 = *(a1 + 376) != 0 && v30;
  }

  else
  {
    v31 = 0;
  }

  *(a1 + 385) = v31;
  APEndpointDisplayDescriptionCopyProperty(v2, @"receiverSupports444", v7, &v62);
  v32 = *MEMORY[0x277CBED28];
  CFPreferenceNumberWithDefault = FigGetCFPreferenceNumberWithDefault();
  v34 = 0;
  *(a1 + 336) = CFPreferenceNumberWithDefault;
  v35 = *(a1 + 409);
  if (*(a1 + 409) && CFPreferenceNumberWithDefault)
  {
    if (FVDUtilsHEVCEncoderSupports4K60())
    {
      v34 = 1;
    }

    else
    {
      v34 = FVDUtilsH264EncoderSupports444() != 0;
    }

    v35 = *(a1 + 409);
  }

  *(a1 + 410) = v34;
  if (v35 && gLogCategory_APEndpointStreamScreen <= 40)
  {
    if (gLogCategory_APEndpointStreamScreen == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_84;
      }

      v34 = *(a1 + 410);
    }

    if (v34)
    {
      v36 = "Stevenote";
    }

    else
    {
      v36 = "Demo";
    }

    LogPrintF(&gLogCategory_APEndpointStreamScreen, "OSStatus screenstream_initDisplayInfo(StreamScreenStorage *)", 33554472, "%@ %s session\n", *(a1 + 40), v36);
  }

LABEL_84:
  v39 = *(a1 + 312);
  v40 = *MEMORY[0x277CC1980];
  UpTimeNanoseconds = FigGetUpTimeNanoseconds();
  *(a1 + 80) = CFStringCreateWithFormat(v7, 0, @"%@-%@-%llx", v39, v40, UpTimeNanoseconds);
  APEndpointDisplayDescriptionCopyProperty(v2, @"MaxFPS", v7, &v65);
  if (v65)
  {
    v42 = CFGetInt64();
    if (v42 >= 1 && *(a1 + 472) > v42)
    {
      *(a1 + 472) = v42;
    }
  }

  APEndpointDisplayDescriptionCopyProperty(v2, @"IsOverscanned", v7, &v64);
  *(a1 + 377) = v64 == v32;
  APEndpointDisplayDescriptionCopyProperty(v2, @"SupportsRotation", v7, &v63);
  *(a1 + 378) = v63 == v32;
  *(a1 + 360) = *(a1 + 216) * *(a1 + 224) * *(a1 + 472);
  if (*(a1 + 394))
  {
    APEndpointDisplayDescriptionCopyProperty(v2, @"ViewAreas", v7, a1 + 344);
    Mutable = CFDictionaryCreateMutable(v7, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    *(a1 + 352) = Mutable;
    v44 = *(a1 + 312);
    if (v44)
    {
      CFDictionarySetValue(Mutable, @"uuid", v44);
    }

    APEndpointDisplayDescriptionCopyProperty(v2, @"InitialViewArea", v7, &v59);
    if (v59)
    {
      CFDictionarySetValue(*(a1 + 352), @"viewArea", v59);
    }

    APEndpointDisplayDescriptionCopyProperty(v2, @"AdjacentViewAreas", v7, &value);
    if (value)
    {
      CFDictionarySetValue(*(a1 + 352), @"adjacentViewAreas", value);
    }
  }

  APEndpointDescriptionGetCMBaseObject();
  CMBaseObjectCopyProperty_0(v45, @"IsThirdPartyTVFamily", v7, &v60);
  *(a1 + 392) = v60 == v32;
  APEndpointDisplayDescriptionCopyProperty(v2, @"receiverSupportsHDRMirroring", v7, &v61);
  v46 = v61 == v32;
  *(a1 + 393) = v46;
  if (gLogCategory_APEndpointStreamScreen > 50)
  {
    goto LABEL_122;
  }

  if (gLogCategory_APEndpointStreamScreen != -1)
  {
    goto LABEL_97;
  }

  if (_LogCategory_Initialize())
  {
    v46 = *(a1 + 393);
LABEL_97:
    v47 = MEMORY[0x277CC1950];
    if (*(a1 + 88) != 110)
    {
      v47 = MEMORY[0x277CC1948];
    }

    v48 = *v47;
    if (*(a1 + 208))
    {
      v49 = "present";
    }

    else
    {
      v49 = "none";
    }

    if (*(a1 + 385))
    {
      v50 = "yes";
    }

    else
    {
      v50 = "no";
    }

    if (*(a1 + 377))
    {
      v51 = "yes";
    }

    else
    {
      v51 = "no";
    }

    if (*(a1 + 378))
    {
      v52 = "yes";
    }

    else
    {
      v52 = "no";
    }

    if (*(a1 + 336))
    {
      v53 = "yes";
    }

    else
    {
      v53 = "no";
    }

    if (*(a1 + 392))
    {
      v54 = "yes";
    }

    else
    {
      v54 = "no";
    }

    if (v46)
    {
      v55 = "yes";
    }

    else
    {
      v55 = "no";
    }

    LogPrintF(&gLogCategory_APEndpointStreamScreen, "OSStatus screenstream_initDisplayInfo(StreamScreenStorage *)", 33554482, "%@ endpoint display info: name: %@ (%@), size in pixels: %.1f x %.1f, max size in pixels: %.1f x %.1f, physical size: %.1f x %.1f, UUID: %@, EDID: %s, HDR: %s, max FPS: %d, overscanned: %s, supports rotation: %s, receiver supports 444: %s, is third party TV receiver: %s, receiver supports HDR mirroring: %s, preferredUIScale: %d\n", *(a1 + 40), *(a1 + 304), v48, *(a1 + 216), *(a1 + 224), *(a1 + 248), *(a1 + 256), *(a1 + 264), *(a1 + 272), *(a1 + 312), v49, v50, *(a1 + 472), v51, v52, v53, v54, v55, *(a1 + 288));
  }

LABEL_122:
  if (*(a1 + 312))
  {
    v17 = 0;
  }

  else
  {
    screenstream_initDisplayInfo_cold_11(a1, &cf);
    v17 = cf;
  }

LABEL_124:
  if (v59)
  {
    CFRelease(v59);
  }

  if (value)
  {
    CFRelease(value);
  }

  if (v68)
  {
    CFRelease(v68);
  }

  if (v67)
  {
    CFRelease(v67);
  }

  if (v66)
  {
    CFRelease(v66);
  }

  if (v65)
  {
    CFRelease(v65);
  }

  if (v64)
  {
    CFRelease(v64);
  }

  if (v63)
  {
    CFRelease(v63);
  }

  if (v60)
  {
    CFRelease(v60);
  }

  if (v61)
  {
    CFRelease(v61);
  }

  if (v62)
  {
    CFRelease(v62);
  }

  return v17;
}

void OUTLINED_FUNCTION_31_2(uint64_t a1, const void *a2)
{

  CFDictionarySetValue(v3, a2, v2);
}

void OUTLINED_FUNCTION_32_4(uint64_t a1, uint64_t a2, const void *a3)
{

  CFDictionarySetValue(v3, v4, a3);
}

uint64_t OUTLINED_FUNCTION_33_2()
{

  return CMBaseObjectGetVTable();
}

uint64_t SPGetEndpointManager(void *a1)
{
  if (SPGetEndpointManager_sCreateOnce != -1)
  {
    SPGetEndpointManager_cold_1();
    if (!a1)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  if (a1)
  {
LABEL_3:
    *a1 = qword_280FB1C38;
  }

LABEL_4:
  if (gLogCategory_SPEndpointManagerFactory <= 50 && (gLogCategory_SPEndpointManagerFactory != -1 || _LogCategory_Initialize()))
  {
    SPGetEndpointManager_cold_2();
  }

  return _MergedGlobals_26;
}

void __SPGetEndpointManager_block_invoke()
{
  IsFeatureEnabled = APSSettingsIsFeatureEnabled();
  if (!IsFeatureEnabled)
  {
    IsFeatureEnabled = APSSettingsGetIntWithDefault();
    if (!IsFeatureEnabled)
    {
      v7 = 4294894906;
      goto LABEL_32;
    }
  }

  if (gLogCategory_SPEndpointManagerFactory <= 50)
  {
    if (gLogCategory_SPEndpointManagerFactory != -1 || (IsFeatureEnabled = _LogCategory_Initialize(), IsFeatureEnabled))
    {
      __SPGetEndpointManager_block_invoke_cold_1(IsFeatureEnabled, v1, v2);
    }
  }

  IsAirplayd = MEMORY[0x223DAEBE0]();
  if (IsAirplayd && (IsAirplayd = FigServer_IsAirplayd(), !IsAirplayd))
  {
    if (gLogCategory_SPEndpointManagerFactory <= 50)
    {
      if (gLogCategory_SPEndpointManagerFactory != -1 || (IsAirplayd = _LogCategory_Initialize(), IsAirplayd))
      {
        __SPGetEndpointManager_block_invoke_cold_2(IsAirplayd, v4, v5);
      }
    }

    v10 = FigEndpointManagerRemoteCopySidePlayManager();
    v7 = v10;
    if (v10)
    {
      __SPGetEndpointManager_block_invoke_cold_3(v10);
      goto LABEL_32;
    }
  }

  else
  {
    if (gLogCategory_SPEndpointManagerFactory <= 50)
    {
      if (gLogCategory_SPEndpointManagerFactory != -1 || (IsAirplayd = _LogCategory_Initialize(), IsAirplayd))
      {
        __SPGetEndpointManager_block_invoke_cold_4(IsAirplayd, v4, v5);
      }
    }

    cf = 0;
    v6 = SPEndpointManagerCreate(&cf);
    v7 = v6;
    if (v6)
    {
      __SPGetEndpointManager_block_invoke_cold_5(v6);
    }

    else
    {
      if (!APSIsExplicitEndpointManagerInitializationEnabledInMX())
      {
        v8 = CMSessionMgrRegisterEndpointManager();
        if (v8)
        {
          if (gLogCategory_SPEndpointManagerFactory <= 90)
          {
            v9 = v8;
            if (gLogCategory_SPEndpointManagerFactory != -1 || _LogCategory_Initialize())
            {
              __SPGetEndpointManager_block_invoke_cold_6(v9);
            }
          }
        }
      }

      qword_280FB1C38 = cf;
      cf = 0;
    }

    if (gLogCategory_SPEndpointManagerFactory <= 50 && (gLogCategory_SPEndpointManagerFactory != -1 || _LogCategory_Initialize()))
    {
      __SPGetEndpointManager_block_invoke_cold_7(v7);
    }

    if (cf)
    {
      CFRelease(cf);
    }

    if (v7)
    {
      __SPGetEndpointManager_block_invoke_cold_8(v7);
LABEL_32:
      if (gLogCategory_SPEndpointManagerFactory <= 90 && (gLogCategory_SPEndpointManagerFactory != -1 || _LogCategory_Initialize()))
      {
        __SPGetEndpointManager_block_invoke_cold_9(v7);
      }
    }
  }

  _MergedGlobals_26 = v7;
}

uint64_t APEndpointPlaybackSessionRemoteControlCreate(__CFString *a1, const void *a2, const void *a3, const __CFDictionary *a4, CFTypeRef *a5)
{
  cf = 0;
  if (!a2)
  {
    APEndpointPlaybackSessionRemoteControlCreate_cold_12();
    v23 = 4294950556;
    goto LABEL_21;
  }

  if (!a3)
  {
    APEndpointPlaybackSessionRemoteControlCreate_cold_11();
LABEL_30:
    v23 = 4294950556;
    goto LABEL_39;
  }

  if (!a5)
  {
    APEndpointPlaybackSessionRemoteControlCreate_cold_10();
    goto LABEL_30;
  }

  FigEndpointPlaybackSessionGetClassID();
  v10 = CMDerivedObjectCreate();
  if (v10)
  {
    v23 = v10;
    APEndpointPlaybackSessionRemoteControlCreate_cold_1(v10);
    goto LABEL_39;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a1)
  {
    v12 = a1;
  }

  else
  {
    v12 = @"unnamed APEndpointPlaybackSessionRemoteControl";
  }

  *(DerivedStorage + 8) = v12;
  CFRetain(v12);
  *(DerivedStorage + 40) = CFRetain(a2);
  *(DerivedStorage + 24) = CFRetain(a3);
  *(DerivedStorage + 104) = 0;
  *(DerivedStorage + 88) = 0;
  v13 = FigSimpleMutexCreate();
  *(DerivedStorage + 80) = v13;
  if (!v13)
  {
    APEndpointPlaybackSessionRemoteControlCreate_cold_9();
LABEL_38:
    v23 = 4294950555;
    goto LABEL_39;
  }

  v14 = FigSimpleMutexCreate();
  *(DerivedStorage + 208) = v14;
  if (!v14)
  {
    APEndpointPlaybackSessionRemoteControlCreate_cold_8();
    goto LABEL_38;
  }

  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  *(DerivedStorage + 200) = Mutable;
  if (!Mutable)
  {
    APEndpointPlaybackSessionRemoteControlCreate_cold_7();
    goto LABEL_38;
  }

  v16 = dispatch_queue_create("APEndpointPlaybackSessionRemoteControl.event", 0);
  *(DerivedStorage + 160) = v16;
  if (!v16)
  {
    APEndpointPlaybackSessionRemoteControlCreate_cold_6();
    goto LABEL_38;
  }

  v17 = dispatch_queue_create("APEndpointPlaybackSessionRemoteControl.metadata", 0);
  *(DerivedStorage + 120) = v17;
  if (!v17)
  {
    APEndpointPlaybackSessionRemoteControlCreate_cold_5();
    goto LABEL_38;
  }

  v18 = dispatch_queue_create("APEndpointPlaybackSessionRemoteControl.notification", 0);
  *(DerivedStorage + 64) = v18;
  if (!v18)
  {
    APEndpointPlaybackSessionRemoteControlCreate_cold_4();
    goto LABEL_38;
  }

  *(DerivedStorage + 144) = CFDictionaryGetInt64() != 0;
  *(DerivedStorage + 216) = CFDictionaryGetInt64() != 0;
  if (CFDictionaryContainsKey(a4, @"NetworkClock"))
  {
    Value = CFDictionaryGetValue(a4, @"NetworkClock");
    *(DerivedStorage + 48) = CFRetain(Value);
  }

  v20 = APEndpointPlaybackSessionStatsCreate(@"RC", a1, a4, (DerivedStorage + 152));
  if (!v20)
  {
    if (gLogCategory_APEndpointPlaybackSessionRemoteControl <= 30 && (gLogCategory_APEndpointPlaybackSessionRemoteControl != -1 || _LogCategory_Initialize()))
    {
      APEndpointPlaybackSessionRemoteControlCreate_cold_3(&cf, DerivedStorage + 8, v22);
    }

    v23 = 0;
    *a5 = cf;
    cf = 0;
    goto LABEL_21;
  }

  v23 = v20;
  APEndpointPlaybackSessionRemoteControlCreate_cold_2(v20);
LABEL_39:
  if (cf)
  {
    CFRelease(cf);
  }

LABEL_21:
  if (gLogCategory_APEndpointPlaybackSessionRemoteControl <= 30 && (gLogCategory_APEndpointPlaybackSessionRemoteControl != -1 || _LogCategory_Initialize()))
  {
    APEndpointPlaybackSessionRemoteControlCreate_cold_13(v23, v21, v22);
  }

  return v23;
}

uint64_t session_Invalidate(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APEndpointPlaybackSessionRemoteControl <= 30 && (gLogCategory_APEndpointPlaybackSessionRemoteControl != -1 || _LogCategory_Initialize()))
  {
    session_Invalidate_cold_1(a1, v2, v3);
  }

  FigSimpleMutexLock();
  if (*(DerivedStorage + 104))
  {
    FigSimpleMutexUnlock();
  }

  else
  {
    *(DerivedStorage + 104) = 1;
    session_unsubscribeMetadataEvents(a1);
    v5 = *(DerivedStorage + 56);
    if (v5)
    {
      APMetadataSourceStop(v5);
    }

    FigSimpleMutexUnlock();
    APEndpointPlaybackSessionStatsUpdateAtInvalidate(*(DerivedStorage + 152));
    FigSimpleMutexLock();
    Copy = CFDictionaryCreateCopy(*MEMORY[0x277CBECE8], *(DerivedStorage + 200));
    CFDictionaryRemoveAllValues(*(DerivedStorage + 200));
    FigSimpleMutexUnlock();
    dispatch_sync_f(*(DerivedStorage + 160), Copy, session_cleanupPendingRequests);
    v7 = *DerivedStorage;
    if (*DerivedStorage)
    {
      v8 = *(*(CMBaseObjectGetVTable() + 16) + 24);
      if (v8)
      {
        v8(v7);
      }
    }

    CMNotificationCenterGetDefaultLocalCenter();
    FigDispatchAsyncPostNotification();
    v9 = *(DerivedStorage + 16);
    if (v9)
    {

      *(DerivedStorage + 16) = 0;
    }
  }

  return 0;
}

void session_Finalize(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APEndpointPlaybackSessionRemoteControl <= 50 && (gLogCategory_APEndpointPlaybackSessionRemoteControl != -1 || _LogCategory_Initialize()))
  {
    session_Finalize_cold_1(a1, v2, v3);
  }

  v5 = *DerivedStorage;
  if (*DerivedStorage)
  {
    v6 = *(*(CMBaseObjectGetVTable() + 16) + 16);
    if (v6)
    {
      v6(v5, 0, 0);
    }
  }

  *(DerivedStorage + 168) = 0;
  *(DerivedStorage + 176) = 0;
  APEndpointPlaybackSessionStatsDestroy((DerivedStorage + 152));
  v7 = *(DerivedStorage + 8);
  if (v7)
  {
    CFRelease(v7);
    *(DerivedStorage + 8) = 0;
  }

  v8 = *(DerivedStorage + 24);
  if (v8)
  {
    CFRelease(v8);
    *(DerivedStorage + 24) = 0;
  }

  v9 = *(DerivedStorage + 32);
  if (v9)
  {
    CFRelease(v9);
    *(DerivedStorage + 32) = 0;
  }

  v10 = *(DerivedStorage + 40);
  if (v10)
  {
    CFRelease(v10);
    *(DerivedStorage + 40) = 0;
  }

  v11 = *(DerivedStorage + 48);
  if (v11)
  {
    CFRelease(v11);
    *(DerivedStorage + 48) = 0;
  }

  FigSimpleMutexDestroy();
  v12 = *(DerivedStorage + 184);
  if (v12)
  {
    CFRelease(v12);
    *(DerivedStorage + 184) = 0;
  }

  v13 = *(DerivedStorage + 160);
  if (v13)
  {
    dispatch_release(v13);
    *(DerivedStorage + 160) = 0;
  }

  if (*DerivedStorage)
  {
    CFRelease(*DerivedStorage);
    *DerivedStorage = 0;
  }

  v14 = *(DerivedStorage + 200);
  if (v14)
  {
    CFRelease(v14);
    *(DerivedStorage + 200) = 0;
  }

  FigSimpleMutexDestroy();
  v15 = *(DerivedStorage + 120);
  if (v15)
  {
    dispatch_release(v15);
    *(DerivedStorage + 120) = 0;
  }

  v16 = *(DerivedStorage + 56);
  if (v16)
  {
    CFRelease(v16);
    *(DerivedStorage + 56) = 0;
  }

  v17 = *(DerivedStorage + 128);
  if (v17)
  {
    CFRelease(v17);
    *(DerivedStorage + 128) = 0;
  }

  v18 = *(DerivedStorage + 136);
  if (v18)
  {
    CFRelease(v18);
    *(DerivedStorage + 136) = 0;
  }

  v19 = *(DerivedStorage + 96);
  if (v19)
  {
    CFRelease(v19);
    *(DerivedStorage + 96) = 0;
  }

  v20 = *(DerivedStorage + 64);
  if (v20)
  {
    dispatch_release(v20);
    *(DerivedStorage + 64) = 0;
  }

  v21 = *(DerivedStorage + 224);
  if (v21)
  {
    APLocalPlaybackServerDestroy(v21);
    *(DerivedStorage + 224) = 0;
  }
}

uint64_t session_CopyProperty(uint64_t a1, const void *a2, uint64_t a3, CFDictionaryRef *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APEndpointPlaybackSessionRemoteControl <= 30 && (gLogCategory_APEndpointPlaybackSessionRemoteControl != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APEndpointPlaybackSessionRemoteControl, "OSStatus session_CopyProperty(CMBaseObjectRef, CFStringRef, CFAllocatorRef, void *)", 33554462, "[%{ptr}] CopyProperty for key %@\n", a1, a2);
  }

  FigSimpleMutexLock();
  if (CFEqual(a2, @"RTCStats"))
  {
    APEndpointPlaybackSessionCopyRTCStats(*(DerivedStorage + 152), a4);
    if (*a4)
    {
      v10 = 0;
    }

    else
    {
      session_CopyProperty_cold_1();
      v10 = 4294950555;
    }
  }

  else if (*(DerivedStorage + 104))
  {
    session_CopyProperty_cold_2();
    v10 = 4294954511;
  }

  else
  {
    if (CFEqual(a2, *MEMORY[0x277CC10E0]))
    {
      v11 = MEMORY[0x277CBED10];
    }

    else if (CFEqual(a2, *MEMORY[0x277CC1100]) || CFEqual(a2, *MEMORY[0x277CC10F8]) || CFEqual(a2, *MEMORY[0x277CC10E8]) || CFEqual(a2, *MEMORY[0x277CC10F0]) || CFEqual(a2, *MEMORY[0x277CC10D8]))
    {
      v11 = MEMORY[0x277CBED28];
    }

    else
    {
      if (CFEqual(a2, @"Activated"))
      {
        v11 = MEMORY[0x277CBED28];
        v13 = *(DerivedStorage + 88);
      }

      else
      {
        if (!CFEqual(a2, @"IsPlaying"))
        {
          v10 = 4294954509;
          goto LABEL_18;
        }

        v11 = MEMORY[0x277CBED28];
        v13 = *(DerivedStorage + 89);
      }

      if (!v13)
      {
        v11 = MEMORY[0x277CBED10];
      }
    }

    v10 = 0;
    *a4 = CFRetain(*v11);
  }

LABEL_18:
  if (gLogCategory_APEndpointPlaybackSessionRemoteControl <= 30 && (gLogCategory_APEndpointPlaybackSessionRemoteControl != -1 || _LogCategory_Initialize()))
  {
    session_CopyProperty_cold_3(v10, v8, v9);
  }

  FigSimpleMutexUnlock();
  return v10;
}

uint64_t session_SetProperty(uint64_t a1, const void *a2, const __CFBoolean *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APEndpointPlaybackSessionRemoteControl <= 30 && (gLogCategory_APEndpointPlaybackSessionRemoteControl != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APEndpointPlaybackSessionRemoteControl, "OSStatus session_SetProperty(CMBaseObjectRef, CFStringRef, CFTypeRef)", 33554462, "[%{ptr}] %###s called: propertyKey [%@], propertyValue [%@]\n", a1, "OSStatus session_SetProperty(CMBaseObjectRef, CFStringRef, CFTypeRef)", a2, a3);
  }

  FigSimpleMutexLock();
  if (*(DerivedStorage + 104))
  {
    session_SetProperty_cold_1();
    v13 = 4294954511;
    goto LABEL_19;
  }

  if (CFEqual(a2, *MEMORY[0x277CC10B8]))
  {
    v7 = FigCFEqual();
    v8 = kAPEndpointPlaybackSessionAudioMode_MoviePlayback;
    if (!v7)
    {
      v8 = kAPEndpointPlaybackSessionAudioMode_Default;
    }

    v9 = *v8;
    v10 = *(DerivedStorage + 32);
    *(DerivedStorage + 32) = *v8;
    if (v9)
    {
      CFRetain(v9);
    }

    if (v10)
    {
      CFRelease(v10);
    }

    session_setProxiedPropertyInternal(a1, @"audioMode", 0, v9);
    goto LABEL_18;
  }

  if (CFEqual(a2, *MEMORY[0x277CC10D0]))
  {
    Value = CFBooleanGetValue(a3);
    APEndpointPlaybackSessionSetIsParticipatingInCoordinatedPlayback(*(DerivedStorage + 152), Value);
LABEL_18:
    v13 = 0;
    goto LABEL_19;
  }

  if (CFEqual(a2, *MEMORY[0x277CC1108]))
  {
    memset(&v18, 0, sizeof(v18));
    CMTimeMakeFromDictionary(&v18, a3);
    v12 = *(DerivedStorage + 152);
    v17 = v18;
    APEndpointPlaybackSessionSetVideoSyncTime(v12, &v17);
    goto LABEL_18;
  }

  if (CFEqual(a2, *MEMORY[0x277CC10C8]))
  {
    v13 = 0;
    *(DerivedStorage + 72) = FigCFNumberGetSInt32();
  }

  else
  {
    v13 = 4294954509;
  }

LABEL_19:
  FigSimpleMutexUnlock();
  if (gLogCategory_APEndpointPlaybackSessionRemoteControl <= 30 && (gLogCategory_APEndpointPlaybackSessionRemoteControl != -1 || _LogCategory_Initialize()))
  {
    session_SetProperty_cold_2(a1, v14, v15);
  }

  return v13;
}

void session_unsubscribeMetadataEvents(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 56))
  {
    v5 = DerivedStorage;
    if (*(DerivedStorage + 112))
    {
      if (gLogCategory_APEndpointPlaybackSessionRemoteControl <= 30 && (gLogCategory_APEndpointPlaybackSessionRemoteControl != -1 || _LogCategory_Initialize()))
      {
        session_unsubscribeMetadataEvents_cold_1(a1, v3, v4);
      }

      APMetadataSourceRemoveEventCallback(*(v5 + 56), *(v5 + 112));
      *(v5 + 112) = 0;
    }
  }
}

void session_setProxiedPropertyInternal(uint64_t a1, const void *a2, uint64_t a3, const void *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  cf = 0;
  if (*(DerivedStorage + 104))
  {
    session_setProxiedPropertyInternal_cold_1();
LABEL_24:
    Mutable = 0;
    goto LABEL_13;
  }

  v9 = DerivedStorage;
  if (!*DerivedStorage)
  {
    session_setProxiedPropertyInternal_cold_2();
    goto LABEL_24;
  }

  if (gLogCategory_APEndpointPlaybackSessionRemoteControl <= 30 && (gLogCategory_APEndpointPlaybackSessionRemoteControl != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APEndpointPlaybackSessionRemoteControl, "OSStatus session_setProxiedPropertyInternal(FigEndpointPlaybackSessionRef, CFStringRef, CFDictionaryRef, CFTypeRef)", 33554462, "[%{ptr}] %###s called: propertyKey [%@], params [%@], value [%@]\n", a1, "OSStatus session_setProxiedPropertyInternal(FigEndpointPlaybackSessionRef, CFStringRef, CFDictionaryRef, CFTypeRef)", a2, a3, a4);
  }

  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  CFDictionarySetValue(Mutable, @"type", @"setProperty");
  CFDictionarySetValue(Mutable, @"property", a2);
  if (a4)
  {
    CFDictionarySetValue(Mutable, @"value", a4);
  }

  if (a3)
  {
    APEndpointPlaybackSessionSetV2Item(a3, Mutable);
    FigCFDictionarySetValueFromKeyInDict();
    FigCFDictionarySetValueFromKeyInDict();
  }

  session_createDataFromDictionary(Mutable, &cf);
  v11 = *v9;
  v12 = cf;
  v15 = *(*(CMBaseObjectGetVTable() + 16) + 8);
  if (v15)
  {
    v15(v11, v12, 0, 0);
  }

LABEL_13:
  if (cf)
  {
    CFRelease(cf);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  if (gLogCategory_APEndpointPlaybackSessionRemoteControl <= 30 && (gLogCategory_APEndpointPlaybackSessionRemoteControl != -1 || _LogCategory_Initialize()))
  {
    session_setProxiedPropertyInternal_cold_3(a1, v13, v14);
  }
}

void session_createDataFromDictionary(uint64_t a1, CFTypeRef *a2)
{
  CFDataFromCFPropertyList = FigCreateCFDataFromCFPropertyList();
  if (CFDataFromCFPropertyList)
  {
    session_createDataFromDictionary_cold_1(CFDataFromCFPropertyList);
  }

  else if (a2)
  {
    *a2 = 0;
  }
}

uint64_t session_AuthorizeItem(uint64_t a1, const void *a2, const void *a3, void (*a4)(void, void, void, void, __n128), uint64_t a5)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v23 = 0;
  cf = 0;
  v22 = 0;
  FigSimpleMutexLock();
  if (*(DerivedStorage + 104))
  {
    session_AuthorizeItem_cold_1();
    v14 = 0;
    Mutable = 0;
    v18 = 4294954511;
    goto LABEL_14;
  }

  v11 = session_ensureRemoteControlSessionCreated(a1);
  if (v11)
  {
    v18 = v11;
    session_AuthorizeItem_cold_2(v11);
    v14 = 0;
    Mutable = 0;
    goto LABEL_14;
  }

  if (!*DerivedStorage)
  {
    session_AuthorizeItem_cold_3();
    v14 = 0;
    Mutable = 0;
    v18 = 4294950553;
    goto LABEL_14;
  }

  if (gLogCategory_APEndpointPlaybackSessionRemoteControl <= 30 && (gLogCategory_APEndpointPlaybackSessionRemoteControl != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APEndpointPlaybackSessionRemoteControl, "OSStatus session_AuthorizeItem(FigEndpointPlaybackSessionRef, CFDataRef, CFStringRef, FigEndpointPlaybackSessionAuthorizeItemCompletion, void *)", 33554462, "[%{ptr}] %###s called: PICRequest [%@], ItemUUID [%@], completion [%{ptr}], context [%{ptr}]\n", a1, "OSStatus session_AuthorizeItem(FigEndpointPlaybackSessionRef, CFDataRef, CFStringRef, FigEndpointPlaybackSessionAuthorizeItemCompletion, void *)", a2, a3, a4, a5);
  }

  v12 = *MEMORY[0x277CBECE8];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  CFDictionarySetValue(Mutable, @"type", @"authorizeItem");
  CFDictionarySetValue(Mutable, @"kind", @"request");
  if (!a3)
  {
    v14 = 0;
    if (!a2)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  v14 = CFDictionaryCreateMutable(v12, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  CFDictionarySetValue(v14, @"uuid", a3);
  CFDictionarySetValue(Mutable, @"item", v14);
  if (a2)
  {
LABEL_10:
    CFDictionarySetValue(Mutable, @"PIC-Request", a2);
  }

LABEL_11:
  v22 = a4;
  v23 = a5;
  session_addPendingRequest(a1, Mutable, &v22);
  session_createDataFromDictionary(Mutable, &cf);
  v15 = *DerivedStorage;
  v16 = cf;
  v17 = *(*(CMBaseObjectGetVTable() + 16) + 8);
  if (v17)
  {
    v17(v15, v16, 0, 0);
  }

  v18 = 0;
LABEL_14:
  FigSimpleMutexUnlock();
  if (a4 && v18)
  {
    (a4)(0, 0, v18, a5);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  if (v14)
  {
    CFRelease(v14);
  }

  if (gLogCategory_APEndpointPlaybackSessionRemoteControl <= 30 && (gLogCategory_APEndpointPlaybackSessionRemoteControl != -1 || _LogCategory_Initialize()))
  {
    session_AuthorizeItem_cold_4(a1, v19, v20);
  }

  return 0;
}

const __CFDictionary *session_Play(uint64_t a1, const __CFDictionary *a2, void (*a3)(const __CFDictionary *, uint64_t), uint64_t a4)
{
  v19 = *MEMORY[0x277D85DE8];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APEndpointPlaybackSessionRemoteControl <= 30 && (gLogCategory_APEndpointPlaybackSessionRemoteControl != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APEndpointPlaybackSessionRemoteControl, "OSStatus session_Play(FigEndpointPlaybackSessionRef, CFDictionaryRef, FigEndpointPlaybackSessionStandardCompletion, void *)", 33554462, "[%{ptr}] %###s called: params [%@], completion [%{ptr}], context [%{ptr}]\n", a1, "OSStatus session_Play(FigEndpointPlaybackSessionRef, CFDictionaryRef, FigEndpointPlaybackSessionStandardCompletion, void *)", a2, a3, a4);
  }

  FigSimpleMutexLock();
  if (*(DerivedStorage + 104))
  {
    session_Play_cold_1(v18);
    inserted = v18[0];
  }

  else
  {
    if (!*(DerivedStorage + 16))
    {
      SNPrintF(v18, 64, "APEndpointPlaybackSessionRemoteControl.%{ptr}", a1);
      *(DerivedStorage + 16) = os_transaction_create();
    }

    APEndpointPlaybackSessionStatsUpdateAtPlay(*(DerivedStorage + 152), a2);
    APMetadataSourceCreateWithNowPlayingAppPID(*MEMORY[0x277CBECE8], *(DerivedStorage + 72), (DerivedStorage + 56));
    v9 = CMBaseObjectGetDerivedStorage();
    if (*(v9 + 56))
    {
      v12 = v9;
      if (gLogCategory_APEndpointPlaybackSessionRemoteControl <= 30 && (gLogCategory_APEndpointPlaybackSessionRemoteControl != -1 || _LogCategory_Initialize()))
      {
        session_Play_cold_2(a1, v10, v11);
      }

      *(v12 + 112) = APMetadataSourceAddEventCallback(*(v12 + 56), a1, session_handleMetadataEvent);
      *(v12 + 146) = 0;
    }

    v13 = *(DerivedStorage + 56);
    if (v13)
    {
      APMetadataSourceStart(v13);
    }

    inserted = session_insertPlayQueueItemInternal(a1, a2, 0, a3, a4);
    *(DerivedStorage + 88) = 1;
    session_updateIsPlayingAndPostNotification(a1, 1);
    CMNotificationCenterGetDefaultLocalCenter();
    FigDispatchAsyncPostNotification();
  }

  FigSimpleMutexUnlock();
  if (a3 && inserted)
  {
    a3(inserted, a4);
  }

  if (gLogCategory_APEndpointPlaybackSessionRemoteControl <= 30 && (gLogCategory_APEndpointPlaybackSessionRemoteControl != -1 || _LogCategory_Initialize()))
  {
    session_Play_cold_3(a1, v15, v16);
  }

  return inserted;
}

unint64_t session_InsertPlayQueueItem(uint64_t a1, const __CFDictionary *a2, const __CFDictionary *a3, void (*a4)(unint64_t, uint64_t), uint64_t a5)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  if (*(DerivedStorage + 104))
  {
    session_InsertPlayQueueItem_cold_1(&v13);
    inserted = v13;
  }

  else if (a2)
  {
    inserted = session_insertPlayQueueItemInternal(a1, a2, a3, a4, a5);
  }

  else
  {
    session_InsertPlayQueueItem_cold_2(&v14);
    inserted = v14;
  }

  FigSimpleMutexUnlock();
  if (a4 && inserted)
  {
    a4(inserted, a5);
  }

  return inserted;
}

uint64_t session_RemovePlayQueueItem(uint64_t a1, const __CFDictionary *a2, void (*a3)(uint64_t, uint64_t), uint64_t a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  cf = 0;
  Value = CFDictionaryGetValue(a2, *MEMORY[0x277CC1020]);
  if (gLogCategory_APEndpointPlaybackSessionRemoteControl <= 50)
  {
    if (gLogCategory_APEndpointPlaybackSessionRemoteControl != -1 || _LogCategory_Initialize())
    {
      LogPrintF(&gLogCategory_APEndpointPlaybackSessionRemoteControl, "OSStatus session_RemovePlayQueueItem(FigEndpointPlaybackSessionRef, CFDictionaryRef, FigEndpointPlaybackSessionStandardCompletion, void *)", 33554482, "[%{ptr}] RemovePlayQueueItem %'@\n", a1, Value);
    }

    if (gLogCategory_APEndpointPlaybackSessionRemoteControl <= 30 && (gLogCategory_APEndpointPlaybackSessionRemoteControl != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_APEndpointPlaybackSessionRemoteControl, "OSStatus session_RemovePlayQueueItem(FigEndpointPlaybackSessionRef, CFDictionaryRef, FigEndpointPlaybackSessionStandardCompletion, void *)", 33554462, "[%{ptr}] %###s called: item [%@], completion [%{ptr}], context [%{ptr}]\n", a1, "OSStatus session_RemovePlayQueueItem(FigEndpointPlaybackSessionRef, CFDictionaryRef, FigEndpointPlaybackSessionStandardCompletion, void *)", a2, a3, a4);
    }
  }

  FigSimpleMutexLock();
  if (*(DerivedStorage + 104))
  {
    session_RemovePlayQueueItem_cold_1();
    Mutable = 0;
    v17 = 4294954511;
LABEL_31:
    v16 = 1;
    goto LABEL_17;
  }

  if (!*DerivedStorage)
  {
    session_RemovePlayQueueItem_cold_2();
    Mutable = 0;
    v17 = 4294950553;
    goto LABEL_31;
  }

  v10 = *(DerivedStorage + 224);
  if (v10 && Value)
  {
    APLocalPlaybackServerUnRegisterUUID(v10, Value);
  }

  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  CFDictionarySetValue(Mutable, @"type", @"removePlayQueueItem");
  FigCFDictionarySetValueFromKeyInDict();
  CFDictionarySetValue(Mutable, @"item", a2);
  session_createDataFromDictionary(Mutable, &cf);
  v12 = malloc_type_calloc(0x10uLL, 1uLL, 0x2FBF760uLL);
  *v12 = a3;
  v12[1] = a4;
  v13 = *DerivedStorage;
  v14 = cf;
  v15 = *(*(CMBaseObjectGetVTable() + 16) + 8);
  if (v15)
  {
    v15(v13, v14, session_standardCompletion, v12);
  }

  v16 = 0;
  v17 = 0;
LABEL_17:
  FigSimpleMutexUnlock();
  if (a3 && v16)
  {
    a3(v17, a4);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  if (gLogCategory_APEndpointPlaybackSessionRemoteControl <= 30 && (gLogCategory_APEndpointPlaybackSessionRemoteControl != -1 || _LogCategory_Initialize()))
  {
    session_RemovePlayQueueItem_cold_3(a1, v18, v19);
  }

  return 0;
}

uint64_t session_Stop(uint64_t a1, void (*a2)(uint64_t, uint64_t), uint64_t a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  cf = 0;
  FigSimpleMutexLock();
  if (*(DerivedStorage + 104))
  {
    session_Stop_cold_1();
    Mutable = 0;
    v16 = 4294954511;
LABEL_30:
    v15 = 1;
    goto LABEL_16;
  }

  if (!*DerivedStorage)
  {
    session_Stop_cold_3();
    Mutable = 0;
    v16 = 4294950553;
    goto LABEL_30;
  }

  if (gLogCategory_APEndpointPlaybackSessionRemoteControl <= 50)
  {
    if (gLogCategory_APEndpointPlaybackSessionRemoteControl != -1 || _LogCategory_Initialize())
    {
      session_Stop_cold_2(a1, v7, v8);
    }

    if (gLogCategory_APEndpointPlaybackSessionRemoteControl <= 30 && (gLogCategory_APEndpointPlaybackSessionRemoteControl != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_APEndpointPlaybackSessionRemoteControl, "OSStatus session_Stop(FigEndpointPlaybackSessionRef, FigEndpointPlaybackSessionStandardCompletion, void *)", 33554462, "[%{ptr}] %###s called: completion [%{ptr}], context [%{ptr}]\n", a1, "OSStatus session_Stop(FigEndpointPlaybackSessionRef, FigEndpointPlaybackSessionStandardCompletion, void *)", a2, a3);
    }
  }

  session_unsubscribeMetadataEvents(a1);
  v9 = *(DerivedStorage + 56);
  if (v9)
  {
    APMetadataSourceStop(v9);
  }

  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  CFDictionarySetValue(Mutable, @"type", @"stop");
  session_createDataFromDictionary(Mutable, &cf);
  v11 = malloc_type_calloc(0x10uLL, 1uLL, 0x35F6D2B8uLL);
  *v11 = a2;
  v11[1] = a3;
  v12 = *DerivedStorage;
  v13 = cf;
  v14 = *(*(CMBaseObjectGetVTable() + 16) + 8);
  if (v14)
  {
    v14(v12, v13, session_standardCompletion, v11);
  }

  v15 = 0;
  v16 = 0;
LABEL_16:
  *(DerivedStorage + 88) = 0;
  session_updateIsPlayingAndPostNotification(a1, 0);
  FigSimpleMutexUnlock();
  if (a2 && v15)
  {
    a2(v16, a3);
  }

  CMNotificationCenterGetDefaultLocalCenter();
  FigDispatchAsyncPostNotification();
  if (cf)
  {
    CFRelease(cf);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  if (gLogCategory_APEndpointPlaybackSessionRemoteControl <= 30 && (gLogCategory_APEndpointPlaybackSessionRemoteControl != -1 || _LogCategory_Initialize()))
  {
    session_Stop_cold_4(a1, v17, v18);
  }

  return 0;
}

uint64_t session_GetPlaybackInfo(uint64_t a1, void (*a2)(void, void, void, __n128), uint64_t a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v17 = 0;
  cf = 0;
  v16 = 0;
  FigSimpleMutexLock();
  if (*(DerivedStorage + 104))
  {
    session_GetPlaybackInfo_cold_1();
    Mutable = 0;
    v12 = 4294954511;
LABEL_24:
    v11 = 1;
    goto LABEL_10;
  }

  if (!*DerivedStorage)
  {
    session_GetPlaybackInfo_cold_2();
    Mutable = 0;
    v12 = 4294950553;
    goto LABEL_24;
  }

  if (gLogCategory_APEndpointPlaybackSessionRemoteControl <= 30 && (gLogCategory_APEndpointPlaybackSessionRemoteControl != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APEndpointPlaybackSessionRemoteControl, "OSStatus session_GetPlaybackInfo(FigEndpointPlaybackSessionRef, FigEndpointPlaybackSessionGetPlaybackInfoCompletion, void *)", 33554462, "[%{ptr}] %###s called: completion [%{ptr}], context [%{ptr}]\n", a1, "OSStatus session_GetPlaybackInfo(FigEndpointPlaybackSessionRef, FigEndpointPlaybackSessionGetPlaybackInfoCompletion, void *)", a2, a3);
  }

  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  CFDictionarySetValue(Mutable, @"type", @"playbackInfo");
  CFDictionarySetValue(Mutable, @"kind", @"request");
  v16 = a2;
  v17 = a3;
  session_addPendingRequest(a1, Mutable, &v16);
  session_createDataFromDictionary(Mutable, &cf);
  v8 = *DerivedStorage;
  v9 = cf;
  v10 = *(*(CMBaseObjectGetVTable() + 16) + 8);
  if (v10)
  {
    v10(v8, v9, 0, 0);
  }

  v11 = 0;
  v12 = 0;
LABEL_10:
  FigSimpleMutexUnlock();
  if (a2 && v11)
  {
    (a2)(0, v12, a3);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  if (gLogCategory_APEndpointPlaybackSessionRemoteControl <= 30 && (gLogCategory_APEndpointPlaybackSessionRemoteControl != -1 || _LogCategory_Initialize()))
  {
    session_GetPlaybackInfo_cold_3(a1, v13, v14);
  }

  return 0;
}

uint64_t session_SeekToTime(uint64_t a1, CMTime *a2, const __CFDictionary *a3, void (*a4)(void, void, void, __n128), uint64_t a5)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v25 = 0;
  cf = 0;
  v24 = 0;
  v11 = *MEMORY[0x277CBECE8];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  FigSimpleMutexLock();
  if (*(DerivedStorage + 104))
  {
    session_SeekToTime_cold_1();
    MutableCopy = 0;
    v19 = 4294954511;
LABEL_26:
    v18 = 1;
    goto LABEL_10;
  }

  if (!*DerivedStorage)
  {
    session_SeekToTime_cold_2();
    MutableCopy = 0;
    v19 = 4294950553;
    goto LABEL_26;
  }

  if (gLogCategory_APEndpointPlaybackSessionRemoteControl <= 30 && (gLogCategory_APEndpointPlaybackSessionRemoteControl != -1 || _LogCategory_Initialize()))
  {
    time = *a2;
    Seconds = CMTimeGetSeconds(&time);
    LogPrintF(&gLogCategory_APEndpointPlaybackSessionRemoteControl, "OSStatus session_SeekToTime(FigEndpointPlaybackSessionRef, CMTime, CFDictionaryRef, FigEndpointPlaybackSessionSeekCompletion, void *)", 33554462, "[%{ptr}] %###s called: time [%.3f], completion [%{ptr}], context [%{ptr}]\n", a1, "OSStatus session_SeekToTime(FigEndpointPlaybackSessionRef, CMTime, CFDictionaryRef, FigEndpointPlaybackSessionSeekCompletion, void *)", *&Seconds, a4, a5);
  }

  MutableCopy = CFDictionaryCreateMutableCopy(v11, 0, a3);
  CFDictionarySetValue(MutableCopy, @"type", @"seek");
  CFDictionarySetValue(MutableCopy, @"kind", @"request");
  time = *a2;
  FigCFDictionarySetCMTime();
  CFDictionaryRemoveValue(MutableCopy, *MEMORY[0x277CC1020]);
  FigCFDictionarySetValueFromKeyInDict();
  FigCFDictionarySetValueFromKeyInDict();
  FigCFDictionarySetValue();
  v24 = a4;
  v25 = a5;
  session_addPendingRequest(a1, MutableCopy, &v24);
  session_createDataFromDictionary(MutableCopy, &cf);
  v15 = *DerivedStorage;
  v16 = cf;
  v17 = *(*(CMBaseObjectGetVTable() + 16) + 8);
  if (v17)
  {
    v17(v15, v16, 0, 0);
  }

  v18 = 0;
  v19 = 0;
LABEL_10:
  FigSimpleMutexUnlock();
  if (a4 && v18)
  {
    (a4)(0, v19, a5);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (MutableCopy)
  {
    CFRelease(MutableCopy);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  if (gLogCategory_APEndpointPlaybackSessionRemoteControl <= 30 && (gLogCategory_APEndpointPlaybackSessionRemoteControl != -1 || _LogCategory_Initialize()))
  {
    session_SeekToTime_cold_3(a1, v20, v21);
  }

  return 0;
}

uint64_t session_SeekToDate(uint64_t a1, const void *a2, uint64_t a3, void (*a4)(void, void, void, __n128), uint64_t a5)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v20 = 0;
  cf = 0;
  v19 = 0;
  FigSimpleMutexLock();
  if (*(DerivedStorage + 104))
  {
    session_SeekToDate_cold_1();
    MutableCopy = 0;
    v15 = 4294954511;
LABEL_24:
    v14 = 1;
    goto LABEL_10;
  }

  if (!*DerivedStorage)
  {
    session_SeekToDate_cold_2();
    MutableCopy = 0;
    v15 = 4294950553;
    goto LABEL_24;
  }

  if (gLogCategory_APEndpointPlaybackSessionRemoteControl <= 30 && (gLogCategory_APEndpointPlaybackSessionRemoteControl != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APEndpointPlaybackSessionRemoteControl, "OSStatus session_SeekToDate(FigEndpointPlaybackSessionRef, CFDateRef, CFDictionaryRef, FigEndpointPlaybackSessionSeekCompletion, void *)", 33554462, "[%{ptr}] %###s called: date [%@], completion [%{ptr}], context [%{ptr}]\n", a1, "OSStatus session_SeekToDate(FigEndpointPlaybackSessionRef, CFDateRef, CFDictionaryRef, FigEndpointPlaybackSessionSeekCompletion, void *)", a2, a4, a5, v19, v20);
  }

  MutableCopy = FigCFDictionaryCreateMutableCopy();
  CFDictionarySetValue(MutableCopy, @"type", @"seek");
  FigCFDictionarySetValue();
  FigCFDictionarySetValueFromKeyInDict();
  CFDictionarySetValue(MutableCopy, @"date", a2);
  v19 = a4;
  v20 = a5;
  session_addPendingRequest(a1, MutableCopy, &v19);
  session_createDataFromDictionary(MutableCopy, &cf);
  v11 = *DerivedStorage;
  v12 = cf;
  v13 = *(*(CMBaseObjectGetVTable() + 16) + 8);
  if (v13)
  {
    v13(v11, v12, 0, 0);
  }

  v14 = 0;
  v15 = 0;
LABEL_10:
  FigSimpleMutexUnlock();
  if (a4 && v14)
  {
    (a4)(0, v15, a5);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (MutableCopy)
  {
    CFRelease(MutableCopy);
  }

  if (gLogCategory_APEndpointPlaybackSessionRemoteControl <= 30 && (gLogCategory_APEndpointPlaybackSessionRemoteControl != -1 || _LogCategory_Initialize()))
  {
    session_SeekToDate_cold_3(a1, v16, v17);
  }

  return 0;
}

uint64_t session_SetRate(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, uint64_t), uint64_t a4, float a5)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v35 = 0;
  v34 = **&MEMORY[0x277CC0898];
  v28 = *MEMORY[0x277CEA280];
  *&v33.value = *MEMORY[0x277CEA280];
  v11 = *(MEMORY[0x277CEA280] + 16);
  v33.epoch = v11;
  v32 = v34;
  v31 = v34;
  FigSimpleMutexLock();
  if (*(DerivedStorage + 104))
  {
    session_SetRate_cold_1();
    v13 = 0;
    v15 = 0;
    v24 = 4294954511;
LABEL_51:
    v23 = 1;
    goto LABEL_33;
  }

  if (!*DerivedStorage)
  {
    session_SetRate_cold_4();
    v13 = 0;
    v15 = 0;
LABEL_50:
    v24 = 4294950553;
    goto LABEL_51;
  }

  if (gLogCategory_APEndpointPlaybackSessionRemoteControl <= 50)
  {
    if (gLogCategory_APEndpointPlaybackSessionRemoteControl != -1 || _LogCategory_Initialize())
    {
      LogPrintF(&gLogCategory_APEndpointPlaybackSessionRemoteControl, "OSStatus session_SetRate(FigEndpointPlaybackSessionRef, float, CFDictionaryRef, FigEndpointPlaybackSessionStandardCompletion, void *)", 33554482, "[%{ptr}] Set rate %.3f\n", a1, a5);
    }

    if (gLogCategory_APEndpointPlaybackSessionRemoteControl <= 30 && (gLogCategory_APEndpointPlaybackSessionRemoteControl != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_APEndpointPlaybackSessionRemoteControl, "OSStatus session_SetRate(FigEndpointPlaybackSessionRef, float, CFDictionaryRef, FigEndpointPlaybackSessionStandardCompletion, void *)", 33554462, "[%{ptr}] %###s called: rate [%.3f], completion [%{ptr}], context [%{ptr}]\n", a1, "OSStatus session_SetRate(FigEndpointPlaybackSessionRef, float, CFDictionaryRef, FigEndpointPlaybackSessionStandardCompletion, void *)", a5, a3, a4);
    }
  }

  if (a2)
  {
    MutableCopy = FigCFDictionaryCreateMutableCopy();
  }

  else
  {
    MutableCopy = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  }

  v13 = MutableCopy;
  CFDictionarySetValue(MutableCopy, @"type", @"setRate");
  FigCFDictionarySetFloat32();
  v14 = *MEMORY[0x277CC0F48];
  if (FigCFDictionaryGetCMTimeIfPresent())
  {
    v15 = *(DerivedStorage + 48);
    if (v15)
    {
      if (v34.flags)
      {
        hostTime = v34;
        v16 = CMClockConvertHostTimeToSystemUnits(&hostTime);
        v17 = *(*(CMBaseObjectGetVTable() + 16) + 16);
        if (!v17 || v17(v15, v16, &v33))
        {
          if (gLogCategory_APEndpointPlaybackSessionRemoteControl <= 90 && (gLogCategory_APEndpointPlaybackSessionRemoteControl != -1 || _LogCategory_Initialize()))
          {
            session_SetRate_cold_2(a1);
          }

          *&v33.value = v28;
          v33.epoch = v11;
        }
      }

      hostTime = v33;
      v15 = APSNetworkTimeCopyAsDictionary();
      FigCFDictionarySetValue();
      CFDictionaryRemoveValue(v13, v14);
      HostTimeClock = CMClockGetHostTimeClock();
      CMClockGetTime(&v32, HostTimeClock);
      hostTime = v34;
      rhs = v32;
      CMTimeSubtract(&v31, &hostTime, &rhs);
      hostTime = v31;
      FigCFDictionarySetCMTime();
      goto LABEL_26;
    }

    session_SetRate_cold_3();
    goto LABEL_50;
  }

  v15 = 0;
LABEL_26:
  if (gLogCategory_APEndpointPlaybackSessionRemoteControl <= 30 && (gLogCategory_APEndpointPlaybackSessionRemoteControl != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APEndpointPlaybackSessionRemoteControl, "OSStatus session_SetRate(FigEndpointPlaybackSessionRef, float, CFDictionaryRef, FigEndpointPlaybackSessionStandardCompletion, void *)", 33554462, "[%{ptr}] Set rate, params: %@", a1, v13);
  }

  session_createDataFromDictionary(v13, &v35);
  v19 = malloc_type_calloc(0x10uLL, 1uLL, 0xF2C7D3DuLL);
  *v19 = a3;
  v19[1] = a4;
  session_updateIsPlayingAndPostNotification(a1, a5 != 0.0);
  v20 = *DerivedStorage;
  v21 = v35;
  v22 = *(*(CMBaseObjectGetVTable() + 16) + 8);
  if (v22)
  {
    v22(v20, v21, session_standardCompletion, v19);
  }

  v23 = 0;
  v24 = 0;
LABEL_33:
  FigSimpleMutexUnlock();
  if (a3 && v23)
  {
    a3(v24, a4);
  }

  if (v35)
  {
    CFRelease(v35);
  }

  if (v13)
  {
    CFRelease(v13);
  }

  if (v15)
  {
    CFRelease(v15);
  }

  if (gLogCategory_APEndpointPlaybackSessionRemoteControl <= 30 && (gLogCategory_APEndpointPlaybackSessionRemoteControl != -1 || _LogCategory_Initialize()))
  {
    session_SetRate_cold_5(a1, v25, v26);
  }

  return 0;
}

uint64_t session_GetProxiedProperty(uint64_t a1, const void *a2, uint64_t a3, void (*a4)(void, void, void, void, __n128), uint64_t a5)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v21 = 0;
  cf = 0;
  v20 = 0;
  FigSimpleMutexLock();
  if (*(DerivedStorage + 104))
  {
    session_GetProxiedProperty_cold_1();
    Mutable = 0;
    v16 = 4294954511;
LABEL_26:
    v15 = 1;
    goto LABEL_12;
  }

  if (!*DerivedStorage)
  {
    session_GetProxiedProperty_cold_2();
    Mutable = 0;
    v16 = 4294950553;
    goto LABEL_26;
  }

  if (gLogCategory_APEndpointPlaybackSessionRemoteControl <= 30 && (gLogCategory_APEndpointPlaybackSessionRemoteControl != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APEndpointPlaybackSessionRemoteControl, "OSStatus session_GetProxiedProperty(FigEndpointPlaybackSessionRef, CFStringRef, CFDictionaryRef, FigEndpointPlaybackSessionGetProxiedPropertyCompletion, void *)", 33554462, "[%{ptr}] %###s called: propertyKey [%@], params [%@], completion [%{ptr}], context [%{ptr}]\n", a1, "OSStatus session_GetProxiedProperty(FigEndpointPlaybackSessionRef, CFStringRef, CFDictionaryRef, FigEndpointPlaybackSessionGetProxiedPropertyCompletion, void *)", a2, a3, a4, a5);
  }

  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  CFDictionarySetValue(Mutable, @"type", @"property");
  CFDictionarySetValue(Mutable, @"kind", @"request");
  CFDictionarySetValue(Mutable, @"property", a2);
  if (a3)
  {
    APEndpointPlaybackSessionSetV2Item(a3, Mutable);
    FigCFDictionarySetValueFromKeyInDict();
    FigCFDictionarySetValueFromKeyInDict();
  }

  v20 = a4;
  v21 = a5;
  session_addPendingRequest(a1, Mutable, &v20);
  session_createDataFromDictionary(Mutable, &cf);
  v12 = *DerivedStorage;
  v13 = cf;
  v14 = *(*(CMBaseObjectGetVTable() + 16) + 8);
  if (v14)
  {
    v14(v12, v13, 0, 0);
  }

  v15 = 0;
  v16 = 0;
LABEL_12:
  FigSimpleMutexUnlock();
  if (a4 && v15)
  {
    (a4)(a2, 0, v16, a5);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  if (gLogCategory_APEndpointPlaybackSessionRemoteControl <= 30 && (gLogCategory_APEndpointPlaybackSessionRemoteControl != -1 || _LogCategory_Initialize()))
  {
    session_GetProxiedProperty_cold_3(a1, v17, v18);
  }

  return 0;
}

uint64_t session_SetProxiedProperty(uint64_t a1, const void *a2, uint64_t a3, const void *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  if (*(DerivedStorage + 104))
  {
    session_SetProxiedProperty_cold_1();
    v9 = 4294954511;
  }

  else if (*DerivedStorage)
  {
    session_setProxiedPropertyInternal(a1, a2, a3, a4);
    v9 = 0;
  }

  else
  {
    session_SetProxiedProperty_cold_2();
    v9 = 4294950553;
  }

  FigSimpleMutexUnlock();
  return v9;
}

uint64_t session_PerformRemoteAction(uint64_t a1, uint64_t a2, const void *a3, void (*a4)(uint64_t, void, uint64_t, __n128), uint64_t a5)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  cf = 0;
  FigSimpleMutexLock();
  if (*(DerivedStorage + 104))
  {
    session_PerformRemoteAction_cold_1();
    Mutable = 0;
    DeepCopy = 0;
    v19 = 4294954511;
LABEL_33:
    v18 = 1;
    goto LABEL_16;
  }

  if (!*DerivedStorage)
  {
    session_PerformRemoteAction_cold_4();
    Mutable = 0;
    DeepCopy = 0;
    v19 = 4294950553;
    goto LABEL_33;
  }

  if (gLogCategory_APEndpointPlaybackSessionRemoteControl <= 30 && (gLogCategory_APEndpointPlaybackSessionRemoteControl != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APEndpointPlaybackSessionRemoteControl, "OSStatus session_PerformRemoteAction(FigEndpointPlaybackSessionRef, CFStringRef, CFTypeRef, FigEndpointPlaybackSessionRemoteActionCompletion, void *)", 33554462, "[%{ptr}] %###s called: type [%@], params [%@], completion [%{ptr}], context [%{ptr}]\n", a1, "OSStatus session_PerformRemoteAction(FigEndpointPlaybackSessionRef, CFStringRef, CFTypeRef, FigEndpointPlaybackSessionRemoteActionCompletion, void *)", a2, a3, a4, a5);
  }

  v10 = *MEMORY[0x277CBECE8];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (FigCFEqual())
  {
    CFDictionarySetValue(Mutable, @"type", @"streamingKey");
    CFDictionarySetValue(Mutable, @"kind", @"request");
    FigCFDictionarySetValueFromKeyInDict();
    DeepCopy = CFPropertyListCreateDeepCopy(v10, a3, 2uLL);
    if (DeepCopy)
    {
      CFDictionarySetValue(Mutable, @"params", DeepCopy);
      v27[0] = a4;
      v27[1] = a5;
      session_addPendingRequest(a1, Mutable, v27);
      v13 = 0;
      v14 = 0;
      goto LABEL_13;
    }

    session_PerformRemoteAction_cold_2();
  }

  else
  {
    if (!FigCFEqual())
    {
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v23, v24, v25);
      v18 = 0;
      v19 = 0;
      DeepCopy = 0;
      goto LABEL_16;
    }

    v13 = malloc_type_calloc(0x10uLL, 1uLL, 0xD42DAEE7uLL);
    *v13 = a4;
    v13[1] = a5;
    CFDictionarySetValue(Mutable, @"type", @"unhandledURL");
    CFDictionarySetValue(Mutable, @"kind", @"response");
    FigCFDictionarySetValueFromKeyInDict();
    DeepCopy = CFPropertyListCreateDeepCopy(v10, a3, 2uLL);
    if (DeepCopy)
    {
      CFDictionarySetValue(Mutable, @"response", DeepCopy);
      v14 = session_performActionUnhandledURLResponseCompletion;
LABEL_13:
      session_createDataFromDictionary(Mutable, &cf);
      v15 = *DerivedStorage;
      v16 = cf;
      v17 = *(*(CMBaseObjectGetVTable() + 16) + 8);
      if (v17)
      {
        v17(v15, v16, v14, v13);
      }

      goto LABEL_15;
    }

    session_PerformRemoteAction_cold_3();
  }

LABEL_15:
  v18 = 0;
  v19 = 0;
LABEL_16:
  FigSimpleMutexUnlock();
  if (a4 && v18)
  {
    (a4)(v19, 0, a5);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  if (DeepCopy)
  {
    CFRelease(DeepCopy);
  }

  if (gLogCategory_APEndpointPlaybackSessionRemoteControl <= 30 && (gLogCategory_APEndpointPlaybackSessionRemoteControl != -1 || _LogCategory_Initialize()))
  {
    session_PerformRemoteAction_cold_5(a1, v20, v21);
  }

  return 0;
}

uint64_t session_SetEventHandler(const void *a1, uint64_t a2, uint64_t a3, const void *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APEndpointPlaybackSessionRemoteControl <= 30 && (gLogCategory_APEndpointPlaybackSessionRemoteControl != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APEndpointPlaybackSessionRemoteControl, "OSStatus session_SetEventHandler(FigEndpointPlaybackSessionRef, FigEndpointPlaybackSessionHandleEvent, void *, CFTypeRef)", 33554462, "[%{ptr}] %###s called: handler [%{ptr}], context [%{ptr}], clientRef [%@]\n", a1, "OSStatus session_SetEventHandler(FigEndpointPlaybackSessionRef, FigEndpointPlaybackSessionHandleEvent, void *, CFTypeRef)", a2, a3, a4);
  }

  v9 = malloc_type_calloc(0x20uLL, 1uLL, 0x141A2974uLL);
  *v9 = a1;
  v9[1] = a2;
  v9[2] = a3;
  v9[3] = a4;
  if (a1)
  {
    CFRetain(a1);
    a4 = v9[3];
  }

  if (a4)
  {
    CFRetain(a4);
  }

  dispatch_sync_f(*(DerivedStorage + 160), v9, session_setEventHandlerInternal);
  if (gLogCategory_APEndpointPlaybackSessionRemoteControl <= 30 && (gLogCategory_APEndpointPlaybackSessionRemoteControl != -1 || _LogCategory_Initialize()))
  {
    session_SetEventHandler_cold_1(a1, v10, v11);
  }

  return 0;
}

uint64_t session_BroadcastCoordinatedPlaybackState(uint64_t a1, const void *a2, uint64_t a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  cf = 0;
  FigSimpleMutexLock();
  if (*(DerivedStorage + 104))
  {
    session_BroadcastCoordinatedPlaybackState_cold_1();
    Mutable = 0;
    v9 = 4294954511;
  }

  else
  {
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    CFDictionarySetValue(Mutable, @"type", @"playbackCoordinationMedium");
    CFDictionarySetValue(Mutable, @"name", a2);
    FigCFDictionarySetValueFromKeyInDict();
    FigCFDictionarySetValueFromKeyInDict();
    session_createDataFromDictionary(Mutable, &cf);
    v6 = *DerivedStorage;
    v7 = cf;
    v8 = *(*(CMBaseObjectGetVTable() + 16) + 8);
    if (v8)
    {
      v8(v6, v7, 0, 0);
    }

    v9 = 0;
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  FigSimpleMutexUnlock();
  return v9;
}

void session_addPendingRequest(uint64_t a1, __CFDictionary *a2, const UInt8 *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  CFDictionarySetValue(a2, @"kind", @"request");
  ++*(DerivedStorage + 192);
  v6 = *MEMORY[0x277CBECE8];
  UInt64 = FigCFNumberCreateUInt64();
  if (UInt64)
  {
    v8 = UInt64;
    CFDictionarySetValue(a2, @"messageID", UInt64);
    Mutable = CFDictionaryCreateMutable(v6, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    if (Mutable)
    {
      v10 = Mutable;
      FigCFDictionarySetValueFromKeyInDict();
      v11 = CFDataCreate(v6, a3, 16);
      if (v11)
      {
        v12 = v11;
        FigCFDictionarySetValue();
        FigSimpleMutexLock();
        CFDictionarySetValue(*(DerivedStorage + 200), v8, v10);
        FigSimpleMutexUnlock();
        CFRelease(v10);
        CFRelease(v12);
      }

      else
      {
        session_addPendingRequest_cold_1(v10);
      }
    }

    else
    {
      session_addPendingRequest_cold_2();
    }

    CFRelease(v8);
  }

  else
  {
    session_addPendingRequest_cold_3();
  }
}

CFIndex session_createDictionaryFromData(CFDataRef data, void *a2)
{
  err = 0;
  v3 = CFPropertyListCreateWithData(*MEMORY[0x277CBECE8], data, 1uLL, 0, &err);
  if (err)
  {
    Code = CFErrorGetCode(err);
    if (v3)
    {
      goto LABEL_3;
    }

LABEL_6:
    session_createDictionaryFromData_cold_1(Code, &v7);
    Code = v7;
    goto LABEL_8;
  }

  Code = 0;
  if (!v3)
  {
    goto LABEL_6;
  }

LABEL_3:
  if (a2)
  {
    *a2 = v3;
  }

  else
  {
    CFRelease(v3);
  }

LABEL_8:
  if (err)
  {
    CFRelease(err);
  }

  return Code;
}

const __CFDictionary *session_insertPlayQueueItemInternal(uint64_t a1, const __CFDictionary *a2, const __CFDictionary *a3, uint64_t a4, uint64_t a5)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v61 = 0;
  v62 = 0;
  value = 0;
  v60 = 0;
  if (*(DerivedStorage + 104))
  {
    session_insertPlayQueueItemInternal_cold_1(buffer);
LABEL_103:
    MutableCopy = 0;
    v16 = 0;
    v19 = 0;
    goto LABEL_104;
  }

  if (!a2)
  {
    session_insertPlayQueueItemInternal_cold_14(buffer);
    goto LABEL_103;
  }

  v10 = session_ensureRemoteControlSessionCreated(a1);
  if (v10)
  {
    v48 = v10;
    session_insertPlayQueueItemInternal_cold_2(v10);
    v19 = 0;
    v16 = 0;
    MutableCopy = 0;
    goto LABEL_107;
  }

  if (gLogCategory_APEndpointPlaybackSessionRemoteControl <= 50)
  {
    if (gLogCategory_APEndpointPlaybackSessionRemoteControl != -1 || _LogCategory_Initialize())
    {
      session_insertPlayQueueItemInternal_cold_3(a2, a3);
    }

    if (gLogCategory_APEndpointPlaybackSessionRemoteControl <= 30 && (gLogCategory_APEndpointPlaybackSessionRemoteControl != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_APEndpointPlaybackSessionRemoteControl, "OSStatus session_insertPlayQueueItemInternal(FigEndpointPlaybackSessionRef, CFDictionaryRef, CFDictionaryRef, FigEndpointPlaybackSessionStandardCompletion, void *)", 33554462, "[%{ptr}] %###s called: item [%@], afterItem [%@], completion [%{ptr}], context [%{ptr}]\n", a1, "OSStatus session_insertPlayQueueItemInternal(FigEndpointPlaybackSessionRef, CFDictionaryRef, CFDictionaryRef, FigEndpointPlaybackSessionStandardCompletion, void *)", a2, a3, a4, a5);
    }
  }

  v56 = a4;
  v57 = a5;
  v11 = *MEMORY[0x277CBECE8];
  MutableCopy = FigCFDictionaryCreateMutableCopy();
  v13 = *MEMORY[0x277CC0FE8];
  CFDictionaryGetValue(a2, *MEMORY[0x277CC0FE8]);
  FigCFDictionarySetValue();
  CFDictionaryRemoveValue(MutableCopy, v13);
  CFDictionaryRemoveValue(MutableCopy, *MEMORY[0x277CC0FB0]);
  CFDictionaryRemoveValue(MutableCopy, *MEMORY[0x277CC0F70]);
  v14 = *MEMORY[0x277CC0F90];
  if (!CFDictionaryContainsKey(MutableCopy, *MEMORY[0x277CC0F90]))
  {
    v41 = 0;
    v16 = 0;
    v19 = 0;
    goto LABEL_67;
  }

  v15 = CFDictionaryGetValue(MutableCopy, v14);
  v16 = v15;
  if (v15)
  {
    CFRetain(v15);
  }

  v17 = *MEMORY[0x277CC0F78];
  v18 = CFDictionaryGetValue(MutableCopy, *MEMORY[0x277CC0F78]);
  v19 = v18;
  if (v18)
  {
    CFRetain(v18);
  }

  CFDictionaryRemoveValue(MutableCopy, v14);
  CFDictionaryRemoveValue(MutableCopy, v17);
  v66 = 0;
  v20 = CMBaseObjectGetDerivedStorage();
  memset(buffer, 0, sizeof(buffer));
  v64 = 0;
  v21 = (v20 + 224);
  if (*(v20 + 224))
  {
    v66 = 0;
    goto LABEL_41;
  }

  if (!*(v20 + 216))
  {
    session_insertPlayQueueItemInternal_cold_12(&v66);
    goto LABEL_41;
  }

  APSenderSessionGetCMBaseObject();
  v23 = v22;
  v24 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v24)
  {
    v25 = v24(v23, 0x28357A450, v11, &v64);
    v66 = v25;
    if (!v25)
    {
      v68.location = 0;
      v68.length = 28;
      CFDataGetBytes(v64, v68, buffer);
      v26 = APSGetFBOPropertyInt64() != 0;
      if (v66)
      {
        session_insertPlayQueueItemInternal_cold_4(v66);
        goto LABEL_41;
      }

      v55 = v26;
      cf[0] = 0;
      if (!*(CMBaseObjectGetDerivedStorage() + 216))
      {
        goto LABEL_99;
      }

      APSenderSessionGetCMBaseObject();
      v28 = v27;
      v29 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      if (v29)
      {
        v30 = v29(v28, @"KeyHolder", v11, cf);
        LODWORD(v67) = v30;
        if (!v30)
        {
          if (!cf[0])
          {
            goto LABEL_99;
          }

          v31 = APSGetFBOPropertyInt64() != 0;
          if (v67)
          {
            session_insertPlayQueueItemInternal_cold_5(v67);
          }

LABEL_27:
          if (cf[0])
          {
            CFRelease(cf[0]);
          }

          if (v31)
          {
            CMBaseObjectGetDerivedStorage();
            cf[0] = 0;
            v67 = 0;
            APSenderSessionGetCMBaseObject();
            v33 = v32;
            v34 = *(*(CMBaseObjectGetVTable() + 8) + 48);
            if (v34)
            {
              v35 = v34(v33, @"KeyHolder", v11, cf);
              if (!v35)
              {
                v36 = cf[0];
                if (!cf[0])
                {
                  goto LABEL_37;
                }

                v37 = *(*(CMBaseObjectGetVTable() + 16) + 48);
                if (v37)
                {
                  v38 = v37(v36, "Pair-TLS-PSK", 12, 0, 0, 16, &v67);
                  if (!v38)
                  {
                    goto LABEL_35;
                  }
                }

                else
                {
                  v38 = 4294954514;
                }

                session_insertPlayQueueItemInternal_cold_7(v38);
LABEL_35:
                if (cf[0])
                {
                  CFRelease(cf[0]);
                }

LABEL_37:
                v39 = v67;
                if (v67)
                {
                  *cf = *buffer;
                  *(&cf[1] + 4) = *&buffer[12];
                  v40 = APLocalPlaybackServerMake(cf, v55, v67, v21);
                  v66 = v40;
                  if (v40)
                  {
                    session_insertPlayQueueItemInternal_cold_9(v40);
                  }

                  CFRelease(v39);
                  goto LABEL_41;
                }

                goto LABEL_99;
              }
            }

            else
            {
              v35 = 4294954514;
            }

            session_insertPlayQueueItemInternal_cold_8(v35);
            goto LABEL_35;
          }

LABEL_99:
          session_insertPlayQueueItemInternal_cold_10(&v66);
          goto LABEL_41;
        }
      }

      else
      {
        v30 = 4294954514;
        LODWORD(v67) = -12782;
      }

      session_insertPlayQueueItemInternal_cold_6(v30);
      v31 = 0;
      goto LABEL_27;
    }
  }

  else
  {
    v25 = 4294954514;
    v66 = -12782;
  }

  session_insertPlayQueueItemInternal_cold_11(v25);
LABEL_41:
  if (v64)
  {
    CFRelease(v64);
  }

  if (v66)
  {
    if (gLogCategory_APEndpointPlaybackSessionRemoteControl <= 30 && (gLogCategory_APEndpointPlaybackSessionRemoteControl != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_APEndpointPlaybackSessionRemoteControl, "OSStatus session_insertPlayQueueItemInternal(FigEndpointPlaybackSessionRef, CFDictionaryRef, CFDictionaryRef, FigEndpointPlaybackSessionStandardCompletion, void *)", 33554462, "[%{ptr}] Not serving local path %'@\n", a1, v16);
    }

    v41 = 0;
    goto LABEL_67;
  }

  v42 = *(DerivedStorage + 224);
  v43 = CFDictionaryGetValue(MutableCopy, *MEMORY[0x277CC1020]);
  v44 = APLocalPlaybackServerRegisterPathWithUUIDCreatingHostAndURL(v42, v43, v16, v19, &v61, &v60);
  if (!v44)
  {
    v41 = CFStringCreateWithFormat(v11, 0, @"https://%@%@", v61, v60);
    if (gLogCategory_APEndpointPlaybackSessionRemoteControl <= 30 && (gLogCategory_APEndpointPlaybackSessionRemoteControl != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_APEndpointPlaybackSessionRemoteControl, "OSStatus session_insertPlayQueueItemInternal(FigEndpointPlaybackSessionRef, CFDictionaryRef, CFDictionaryRef, FigEndpointPlaybackSessionStandardCompletion, void *)", 33554462, "[%{ptr}] Serving local path %'@ as URL: '%@'\n", a1, v16, v41);
    }

    if (CFDictionaryGetValueIfPresent(MutableCopy, @"Content-Location", &value))
    {
      v45 = @"Offline-HLS-Content-Location";
    }

    else
    {
      v45 = @"Content-Location";
    }

    CFDictionarySetValue(MutableCopy, v45, v41);
    CFDictionarySetValue(MutableCopy, @"IsTLSEnabled", *MEMORY[0x277CBED28]);
LABEL_67:
    v46 = *(DerivedStorage + 32);
    if (v46)
    {
      CFDictionarySetValue(MutableCopy, @"audioMode", v46);
    }

    Mutable = CFDictionaryCreateMutable(v11, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    CFDictionarySetValue(Mutable, @"type", @"insertPlayQueueItem");
    FigCFDictionarySetValueFromKeyInDict();
    CFDictionarySetValue(Mutable, @"item", MutableCopy);
    if (a3)
    {
      CFDictionarySetValue(Mutable, @"itemAfter", a3);
    }

    *(DerivedStorage + 145) = 1;
    v48 = *(DerivedStorage + 128);
    if (v48)
    {
      CFRetain(*(DerivedStorage + 128));
      v49 = CFDictionaryCreateMutable(v11, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
      session_findDiffVideoV2Metadata(0, v48, v49);
      CFDictionarySetValue(Mutable, @"metadata", v49);
      if (v49)
      {
        CFRelease(v49);
      }
    }

    if (gLogCategory_APEndpointPlaybackSessionRemoteControl <= 30 && (gLogCategory_APEndpointPlaybackSessionRemoteControl != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_APEndpointPlaybackSessionRemoteControl, "OSStatus session_insertPlayQueueItemInternal(FigEndpointPlaybackSessionRef, CFDictionaryRef, CFDictionaryRef, FigEndpointPlaybackSessionStandardCompletion, void *)", 33554462, "[%{ptr}] InsertPlayQueueItem params: %@\n", a1, Mutable);
    }

    session_createDataFromDictionary(Mutable, &v62);
    v50 = malloc_type_calloc(0x10uLL, 1uLL, 0xB532AEB3uLL);
    *v50 = v56;
    v50[1] = v57;
    v51 = *DerivedStorage;
    v52 = v62;
    v53 = *(*(CMBaseObjectGetVTable() + 16) + 8);
    if (v53)
    {
      v53(v51, v52, session_standardCompletion, v50);
    }

    if (v48)
    {
      CFRelease(v48);
      v48 = 0;
    }

    if (MutableCopy)
    {
      goto LABEL_83;
    }

    goto LABEL_84;
  }

  session_insertPlayQueueItemInternal_cold_13(v44, buffer);
LABEL_104:
  v48 = *buffer;
  if (*buffer)
  {
LABEL_107:
    APEndpointPlaybackSessionStatsSetLastError(*(DerivedStorage + 152), v48);
  }

  v41 = 0;
  Mutable = 0;
  if (MutableCopy)
  {
LABEL_83:
    CFRelease(MutableCopy);
  }

LABEL_84:
  if (v62)
  {
    CFRelease(v62);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  if (v61)
  {
    CFRelease(v61);
  }

  if (v60)
  {
    CFRelease(v60);
  }

  if (v41)
  {
    CFRelease(v41);
  }

  if (v16)
  {
    CFRelease(v16);
  }

  if (v19)
  {
    CFRelease(v19);
  }

  return v48;
}

void session_handleMetadataEvent(uint64_t a1, const void *a2, int a3, const void *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!a4)
  {
    session_handleMetadataEvent_cold_1();
    return;
  }

  v8 = DerivedStorage;
  if (a3 == 1952807028)
  {
    CFRetain(a2);
    CFRetain(a4);
    v9 = *(v8 + 120);
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __session_handleMetadataEvent_block_invoke_2;
    v11[3] = &__block_descriptor_48_e5_v8__0l;
    v11[4] = a2;
    v11[5] = a4;
    v10 = v11;
  }

  else
  {
    if (a3 != 1634890784)
    {
      return;
    }

    CFRetain(a2);
    CFRetain(a4);
    v9 = *(v8 + 120);
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __session_handleMetadataEvent_block_invoke;
    v12[3] = &__block_descriptor_48_e5_v8__0l;
    v12[4] = a2;
    v12[5] = a4;
    v10 = v12;
  }

  dispatch_async(v9, v10);
}

void __session_handleMetadataEvent_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v5 = &gLogCategory_APEndpointPlaybackSessionRemoteControl;
  if (gLogCategory_APEndpointPlaybackSessionRemoteControl <= 30 && (gLogCategory_APEndpointPlaybackSessionRemoteControl != -1 || _LogCategory_Initialize()))
  {
    if (*(DerivedStorage + 145))
    {
      v6 = "YES";
    }

    else
    {
      v6 = "NO";
    }

    LogPrintF(&gLogCategory_APEndpointPlaybackSessionRemoteControl, "void session_handleMetadataArtworkEventInternal(FigEndpointPlaybackSessionRef, CFDictionaryRef)", 33554462, "%###s called, playbackSession [%{ptr}], shouldSendMetadata [%s]. inMetadata [%@]\n", "void session_handleMetadataArtworkEventInternal(FigEndpointPlaybackSessionRef, CFDictionaryRef)", v2, v6, v3);
  }

  FigSimpleMutexLock();
  if (*(DerivedStorage + 104) || !*(DerivedStorage + 144))
  {
    FigSimpleMutexUnlock();
  }

  else
  {
    v7 = *MEMORY[0x277CBECE8];
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    session_compareAndStoreIfDifferent(@"artworkData", 0, v3, Mutable, @"ArtworkData", 0);
    session_compareAndStoreIfDifferent(@"artworkMIMEType", 0, v3, Mutable, @"ArtworkMIMEType", 0);
    if (FigCFDictionaryGetCount() < 1)
    {
      v11 = 0;
      v12 = 0;
    }

    else
    {
      v9 = *(DerivedStorage + 136);
      if (v9)
      {
        MutableCopy = CFDictionaryCreateMutableCopy(v7, 0, v9);
      }

      else
      {
        MutableCopy = CFDictionaryCreateMutable(v7, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
      }

      v12 = MutableCopy;
      CFDictionaryMergeDictionary();
      if (*(DerivedStorage + 145))
      {
        v11 = CFDictionaryCreateMutable(v7, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
        v13 = *(DerivedStorage + 136);
        Empty = CFDataGetEmpty();
        session_compareAndStoreIfDifferent(@"ArtworkData", v13, v12, v11, @"ArtworkData", Empty);
        session_compareAndStoreIfDifferent(@"ArtworkMIMEType", v13, v12, v11, @"ArtworkMIMEType", 0);
      }

      else
      {
        v11 = 0;
      }

      v15 = *(DerivedStorage + 136);
      *(DerivedStorage + 136) = v12;
      if (v12)
      {
        CFRetain(v12);
      }

      if (v15)
      {
        CFRelease(v15);
      }
    }

    if (FigCFDictionaryGetCount() >= 1)
    {
      v16 = CMBaseObjectGetDerivedStorage();
      v17 = FigCFDictionaryCreateMutableCopy();
      FigCFDictionaryGetValue();
      if (!*(v16 + 104))
      {
        if (!FigCFEqual())
        {
          Value = FigCFDictionaryGetValue();
          if (Value)
          {
            v22 = Value;
            if (CFDataGetLength(Value) >= 1)
            {
              ScaledImageDataWithData = CreateScaledImageDataWithData();
              CFDataGetLength(v22);
              CFDataGetLength(ScaledImageDataWithData);
              v5 = &gLogCategory_APEndpointPlaybackSessionRemoteControl;
              FigCFDictionarySetValue();
              if (ScaledImageDataWithData)
              {
                CFRelease(ScaledImageDataWithData);
              }
            }
          }
        }

        if (*v5 <= 30 && (*v5 != -1 || _LogCategory_Initialize()))
        {
          __session_handleMetadataEvent_block_invoke_cold_1(v2, v18, v19);
        }

        session_setProxiedPropertyInternal(v2, @"metadata", 0, v17);
      }

      if (v17)
      {
        CFRelease(v17);
      }
    }

    FigSimpleMutexUnlock();
    if (Mutable)
    {
      CFRelease(Mutable);
    }

    if (v12)
    {
      CFRelease(v12);
    }

    if (v11)
    {
      CFRelease(v11);
    }
  }

  CFRelease(*(a1 + 32));
  v20 = *(a1 + 40);

  CFRelease(v20);
}

void __session_handleMetadataEvent_block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APEndpointPlaybackSessionRemoteControl <= 30 && (gLogCategory_APEndpointPlaybackSessionRemoteControl != -1 || _LogCategory_Initialize()))
  {
    if (*(DerivedStorage + 145))
    {
      v5 = "YES";
    }

    else
    {
      v5 = "NO";
    }

    LogPrintF(&gLogCategory_APEndpointPlaybackSessionRemoteControl, "void session_handleMetadataEventInternal(FigEndpointPlaybackSessionRef, CFDictionaryRef)", 33554462, "%###s called, playbackSession [%{ptr}], shouldSendMetadata [%s]. inMetadata [%@]\n", "void session_handleMetadataEventInternal(FigEndpointPlaybackSessionRef, CFDictionaryRef)", v2, v5, v3);
  }

  FigSimpleMutexLock();
  if (*(DerivedStorage + 104))
  {
    goto LABEL_42;
  }

  if (!*(DerivedStorage + 146))
  {
    v17 = 0;
    *(DerivedStorage + 146) = 1;
    CFDictionaryGetInt64();
    mach_absolute_time();
    UpTicksToSecondsF();
    v7 = v6;
    if (IsAppleInternalBuild())
    {
      APSSettingsGetDouble();
      if (v17)
      {
        v9 = 0.1;
      }
    }

    else
    {
      v9 = 0.1;
    }

    if (v7 > v9)
    {
      __session_handleMetadataEvent_block_invoke_2_cold_1(&v17, v2, v8);
LABEL_42:
      FigSimpleMutexUnlock();
      goto LABEL_40;
    }
  }

  v10 = *MEMORY[0x277CBECE8];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  session_compareAndStoreIfDifferent(@"album", 0, v3, Mutable, @"Album", 0);
  session_compareAndStoreIfDifferent(@"artist", 0, v3, Mutable, @"Artist", 0);
  session_compareAndStoreIfDifferent(@"title", 0, v3, Mutable, @"Title", 0);
  session_compareAndStoreIfDifferent(@"totalTracks", 0, v3, Mutable, @"TotalTrackCount", 0);
  session_compareAndStoreIfDifferent(@"trackNumber", 0, v3, Mutable, @"TrackNumber", 0);
  if (FigCFDictionaryGetCount() < 1)
  {
    v14 = 0;
    v15 = 0;
  }

  else
  {
    v12 = *(DerivedStorage + 128);
    if (v12)
    {
      MutableCopy = CFDictionaryCreateMutableCopy(v10, 0, v12);
    }

    else
    {
      MutableCopy = CFDictionaryCreateMutable(v10, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    }

    v15 = MutableCopy;
    CFDictionaryMergeDictionary();
    if (*(DerivedStorage + 145))
    {
      v14 = CFDictionaryCreateMutable(v10, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
      session_findDiffVideoV2Metadata(*(DerivedStorage + 128), v15, v14);
    }

    else
    {
      v14 = 0;
    }

    v16 = *(DerivedStorage + 128);
    *(DerivedStorage + 128) = v15;
    if (v15)
    {
      CFRetain(v15);
    }

    if (v16)
    {
      CFRelease(v16);
    }
  }

  if (gLogCategory_APEndpointPlaybackSessionRemoteControl <= 30 && (gLogCategory_APEndpointPlaybackSessionRemoteControl != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APEndpointPlaybackSessionRemoteControl, "void session_handleMetadataEventInternal(FigEndpointPlaybackSessionRef, CFDictionaryRef)", 33554462, "[%{ptr}] diff metadata [%@]\n", v2, v14);
  }

  if (FigCFDictionaryGetCount() >= 1)
  {
    session_setProxiedPropertyInternal(v2, @"metadata", 0, v14);
  }

  FigSimpleMutexUnlock();
  if (Mutable)
  {
    CFRelease(Mutable);
  }

  if (v15)
  {
    CFRelease(v15);
  }

  if (v14)
  {
    CFRelease(v14);
  }

LABEL_40:
  CFRelease(*(a1 + 32));
  CFRelease(*(a1 + 40));
}

void session_compareAndStoreIfDifferent(void *key, CFDictionaryRef theDict, const __CFDictionary *a3, __CFDictionary *a4, const void *a5, const void *a6)
{
  if (theDict)
  {
    Value = CFDictionaryGetValue(theDict, key);
    if (a3)
    {
      goto LABEL_3;
    }

LABEL_6:
    v14 = FigCFEqual();
    v13 = 0;
    if (v14)
    {
      goto LABEL_7;
    }

LABEL_12:
    v12 = a6;
    if (!a6)
    {
      return;
    }

    goto LABEL_13;
  }

  Value = 0;
  if (!a3)
  {
    goto LABEL_6;
  }

LABEL_3:
  v12 = CFDictionaryGetValue(a3, key);
  if (FigCFEqual())
  {
    v13 = v12;
LABEL_7:
    if (!a6)
    {
      return;
    }

    if (Value)
    {
      return;
    }

    v12 = a6;
    if (v13)
    {
      return;
    }

    goto LABEL_13;
  }

  if (!v12)
  {
    goto LABEL_12;
  }

LABEL_13:

  CFDictionarySetValue(a4, a5, v12);
}

void session_findDiffVideoV2Metadata(CFDictionaryRef theDict, const __CFDictionary *a2, __CFDictionary *a3)
{
  session_compareAndStoreIfDifferent(@"Album", theDict, a2, a3, @"Album", &stru_283570B70);
  session_compareAndStoreIfDifferent(@"Artist", theDict, a2, a3, @"Artist", &stru_283570B70);
  session_compareAndStoreIfDifferent(@"Title", theDict, a2, a3, @"Title", &stru_283570B70);
  session_compareAndStoreIfDifferent(@"TotalTrackCount", theDict, a2, a3, @"TotalTrackCount", &stru_283570B70);

  session_compareAndStoreIfDifferent(@"TrackNumber", theDict, a2, a3, @"TrackNumber", &stru_283570B70);
}

void session_setEventHandlerInternal(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APEndpointPlaybackSessionRemoteControl <= 30 && (gLogCategory_APEndpointPlaybackSessionRemoteControl != -1 || _LogCategory_Initialize()))
  {
    session_setEventHandlerInternal_cold_1(a1, v2, v3);
  }

  *(DerivedStorage + 168) = *(a1 + 8);
  v5 = *(a1 + 24);
  if (v5)
  {
    v6 = *(DerivedStorage + 184);
    *(DerivedStorage + 184) = v5;
    CFRetain(v5);
    if (v6)
    {
      CFRelease(v6);
    }
  }

  if (*a1)
  {
    CFRelease(*a1);
  }

  v7 = *(a1 + 24);
  if (v7)
  {
    CFRelease(v7);
  }

  free(a1);
}

void endpointLocal_handleEndpointDescriptionChanged(uint64_t a1, const void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v75 = 0;
  theString[0] = 0;
  FigSimpleMutexLock();
  v8 = *MEMORY[0x277CBECE8];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (!Mutable)
  {
LABEL_117:
    APSLogErrorAt();
    goto LABEL_108;
  }

  APEndpointDescriptionGetCMBaseObject();
  v11 = v10;
  v12 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v12)
  {
    v12(v11, @"PairingPeerCUSystemIdentifier", v8, theString);
    if (theString[0])
    {
      if (CFStringGetLength(theString[0]))
      {
        goto LABEL_9;
      }

      if (theString[0])
      {
        CFRelease(theString[0]);
        theString[0] = 0;
      }
    }
  }

  APEndpointDescriptionGetCMBaseObject();
  v14 = v13;
  v15 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v15)
  {
    v15(v14, @"DeviceID", v8, theString);
  }

LABEL_9:
  if (theString[0] && CFStringGetLength(theString[0]))
  {
    *(DerivedStorage + 153) = 1;
    if (!CFEqual(theString[0], *(DerivedStorage + 24)))
    {
      OUTLINED_FUNCTION_1_1();
      if (v19 ^ v20 | v18 && (v17 != -1 || OUTLINED_FUNCTION_4(&gLogCategory_APEndpointLocal)))
      {
        v71 = *(DerivedStorage + 24);
        v72 = theString[0];
        OUTLINED_FUNCTION_2(&gLogCategory_APEndpointLocal, "void endpointLocal_handleEndpointDescriptionChanged(CMNotificationCenterRef, const void *, CFStringRef, const void *, CFTypeRef)", v16, "[%{ptr}] ID has changed from %@ to %@.\n");
      }

      v21 = *(DerivedStorage + 24);
      v22 = theString[0];
      *(DerivedStorage + 24) = theString[0];
      if (v22)
      {
        v22 = CFRetain(v22);
      }

      if (v21)
      {
        CFRelease(v21);
      }

      OUTLINED_FUNCTION_8_0(v22, @"IDDidChange");
    }
  }

  else if (gLogCategory_APEndpointLocal <= 90 && (gLogCategory_APEndpointLocal != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APEndpointLocal, "void endpointLocal_handleEndpointDescriptionChanged(CMNotificationCenterRef, const void *, CFStringRef, const void *, CFTypeRef)", 33554522, "[%{ptr}] Failed to retrieve system pairing identifier or device ID for local endpoint.\n", a2);
  }

  APEndpointDescriptionGetCMBaseObject();
  v24 = v23;
  v25 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v25)
  {
    v25(v24, @"Name", v8, &v75);
  }

  Length = v75;
  if (!v75 || (Length = CFStringGetLength(v75)) == 0)
  {
    if (gLogCategory_APEndpointLocal <= 90)
    {
      if (gLogCategory_APEndpointLocal != -1 || (Length = _LogCategory_Initialize(), Length))
      {
        Length = LogPrintF(&gLogCategory_APEndpointLocal, "void endpointLocal_handleEndpointDescriptionChanged(CMNotificationCenterRef, const void *, CFStringRef, const void *, CFTypeRef)", 33554522, "[%{ptr}] Failed to retrieve device name for local endpoint.\n", a2, v71, v72);
        if (a5)
        {
          goto LABEL_42;
        }

LABEL_63:
        v30 = 1;
        goto LABEL_64;
      }
    }

LABEL_41:
    if (a5)
    {
      goto LABEL_42;
    }

    goto LABEL_63;
  }

  *(DerivedStorage + 154) = 1;
  Length = CFEqual(v75, *(DerivedStorage + 32));
  if (Length)
  {
    goto LABEL_41;
  }

  OUTLINED_FUNCTION_1_1();
  if (v19 ^ v20 | v18 && (v28 != -1 || OUTLINED_FUNCTION_4(&gLogCategory_APEndpointLocal)))
  {
    v72 = v75;
    OUTLINED_FUNCTION_2(&gLogCategory_APEndpointLocal, "void endpointLocal_handleEndpointDescriptionChanged(CMNotificationCenterRef, const void *, CFStringRef, const void *, CFTypeRef)", v27, "[%{ptr}] Name has changed from %@ to %@.\n");
  }

  v42 = *(DerivedStorage + 32);
  v43 = v75;
  *(DerivedStorage + 32) = v75;
  if (v43)
  {
    v43 = CFRetain(v43);
  }

  if (v42)
  {
    CFRelease(v42);
  }

  OUTLINED_FUNCTION_8_0(v43, @"NameDidChange");
  if (!a5)
  {
    goto LABEL_63;
  }

LABEL_42:
  Int64 = CFDictionaryGetInt64();
  v30 = Int64 == 0;
  if (Int64)
  {
    OUTLINED_FUNCTION_1_1();
    if (v19 ^ v20 | v18)
    {
      if (v33 != -1 || (v31 = OUTLINED_FUNCTION_4(&gLogCategory_APEndpointLocal), v31))
      {
        v31 = OUTLINED_FUNCTION_2(&gLogCategory_APEndpointLocal, "void endpointLocal_handleEndpointDescriptionChanged(CMNotificationCenterRef, const void *, CFStringRef, const void *, CFTypeRef)", v32, "[%{ptr}] Cluster change: clusterInfo change detected\n");
      }
    }

    OUTLINED_FUNCTION_8_0(v31, @"ClusterInfoDidChange");
  }

  v34 = CFDictionaryGetInt64();
  if (v34)
  {
    OUTLINED_FUNCTION_1_1();
    if (v19 ^ v20 | v18)
    {
      if (v37 != -1 || (v35 = OUTLINED_FUNCTION_4(&gLogCategory_APEndpointLocal), v35))
      {
        v35 = OUTLINED_FUNCTION_2(&gLogCategory_APEndpointLocal, "void endpointLocal_handleEndpointDescriptionChanged(CMNotificationCenterRef, const void *, CFStringRef, const void *, CFTypeRef)", v36, "[%{ptr}] Cluster leader change\n");
      }
    }

    OUTLINED_FUNCTION_8_0(v35, @"ClusterLeaderDidChange");
  }

  v38 = OUTLINED_FUNCTION_7(v34, @"GroupInfoDidChange");
  v39 = OUTLINED_FUNCTION_7(v38, @"RoomInfoDidChange");
  v40 = OUTLINED_FUNCTION_7(v39, @"UGLSessionActiveDidChange");
  v41 = OUTLINED_FUNCTION_7(v40, @"UGLServerInfoAdded");
  Length = OUTLINED_FUNCTION_7(v41, @"ChangeSource");
LABEL_64:
  if (*(DerivedStorage + 153) && *(DerivedStorage + 154))
  {
    OUTLINED_FUNCTION_8_0(Length, @"LocalEndpointInfoComplete");
  }

  if (*(DerivedStorage + 9))
  {
    v44 = 3;
  }

  else
  {
    v44 = 0;
  }

  v45 = CMBaseObjectGetDerivedStorage();
  if (*(v45 + 156) != v44)
  {
    OUTLINED_FUNCTION_1_1();
    if (v19 ^ v20 | v18 && (v46 != -1 || OUTLINED_FUNCTION_4(&gLogCategory_APEndpointLocal)))
    {
      APSGetAPVolumeControlTypeName();
      v47 = *(v45 + 156);
      v73 = APSGetAPVolumeControlTypeName();
      v74 = v44;
      v72 = v47;
      OUTLINED_FUNCTION_2(&gLogCategory_APEndpointLocal, "OSStatus endpointLocal_setVolumeControlType(FigEndpointRef, APVolumeControlType)", v48, "[%{ptr}] volumeControlType: %s (%d) -> %s (%d)\n");
    }

    *(v45 + 156) = v44;
    DefaultLocalCenter = CMNotificationCenterGetDefaultLocalCenter();
    OUTLINED_FUNCTION_9_0(DefaultLocalCenter, DefaultLocalCenter, *MEMORY[0x277CC0DB8]);
  }

  CMNotificationCenterGetDefaultLocalCenter();
  FigDispatchAsyncPostNotification();
  if (!v30)
  {
    v50 = CMBaseObjectGetDerivedStorage();
    if (*(v50 + 40))
    {
      *(v50 + 152) = 1;
      v51 = CMBaseObjectGetDerivedStorage();
      if (*(v51 + 41))
      {
        goto LABEL_108;
      }

      v52 = v51;
      *(v51 + 48) = -72277;
      v53 = CFGetAllocator(a2);
      v54 = CFDictionaryCreateMutable(v53, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
      if (v54)
      {
        v55 = v54;
        v56 = CFGetAllocator(a2);
        v57 = CFDictionaryCreateMutable(v56, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
        if (!v57)
        {
          APSLogErrorAt();
          goto LABEL_107;
        }

        v58 = v57;
        CFDictionarySetInt64();
        CFDictionarySetInt64();
        CFDictionarySetInt64();
        CFDictionarySetValue(v55, *MEMORY[0x277CC0CC8], *MEMORY[0x277CC0CA0]);
        CFDictionarySetValue(v58, *MEMORY[0x277CC0BD8], *MEMORY[0x277CC0BC8]);
        v59 = MEMORY[0x277CC0D50];
        if (!v52[14])
        {
          goto LABEL_102;
        }

        if (v52[17])
        {
          v60 = FigCFWeakReferenceHolderCopyReferencedObject();
          v61 = v60;
          if (v52[17] && !v60)
          {
            if (gLogCategory_APEndpointLocal > 90)
            {
LABEL_106:
              CMNotificationCenterGetDefaultLocalCenter();
              FigDispatchAsyncPostNotification();
              CFRelease(v58);
LABEL_107:
              CFRelease(v55);
              goto LABEL_108;
            }

            if (gLogCategory_APEndpointLocal != -1 || _LogCategory_Initialize())
            {
              LogPrintF(&gLogCategory_APEndpointLocal, "void endpointLocal_updateStatus(FigEndpointRef, OSStatus, APEndpointSessionState)", 33554522, "%{ptr} %###s weakDelegateContextRouting is not NULL, but handleFailureCallbackContext is NULL.\n", a2, "void endpointLocal_updateStatus(FigEndpointRef, OSStatus, APEndpointSessionState)", v72, v73, v74);
            }

LABEL_102:
            if (gLogCategory_APEndpointLocal <= 30 && (gLogCategory_APEndpointLocal != -1 || _LogCategory_Initialize()))
            {
              LogPrintF(&gLogCategory_APEndpointLocal, "void endpointLocal_updateStatus(FigEndpointRef, OSStatus, APEndpointSessionState)", 33554462, "[%{ptr}] Posting %@\n", a2, *v59);
            }

            goto LABEL_106;
          }
        }

        else
        {
          v61 = 0;
        }

        v64 = CFRetain(a2);
        v65 = v52[7];
        theString[1] = v64;
        theString[2] = v65;
        v66 = CFRetain(v58);
        v67 = v52[14];
        theString[3] = v66;
        theString[4] = v67;
        theString[5] = v61;
        OUTLINED_FUNCTION_1_1();
        if (v19 ^ v20 | v18 && (v69 != -1 || OUTLINED_FUNCTION_4(&gLogCategory_APEndpointLocal)))
        {
          OUTLINED_FUNCTION_2(&gLogCategory_APEndpointLocal, "void endpointLocal_updateStatus(FigEndpointRef, OSStatus, APEndpointSessionState)", v68, "[%{ptr}] Notifying about endpoint failure %#m...\n");
        }

        APSDispatchAsyncFHelper();
        goto LABEL_102;
      }

      goto LABEL_117;
    }

    OUTLINED_FUNCTION_1_1();
    if (v19 ^ v20 | v18 && (v63 != -1 || OUTLINED_FUNCTION_4(&gLogCategory_APEndpointLocal)))
    {
      OUTLINED_FUNCTION_2(&gLogCategory_APEndpointLocal, "void endpointLocal_handleClusterInfoDidChange(FigEndpointRef)", v62, "[%{ptr}] Cluster change: Firing notification to indicate that deactivation for clusterUUID change has finished.\n");
    }

    v70 = CMNotificationCenterGetDefaultLocalCenter();
    OUTLINED_FUNCTION_9_0(v70, v70, @"FinishedDeactivationForClusterUUIDChange");
  }

LABEL_108:
  FigSimpleMutexUnlock();
  if (theString[0])
  {
    CFRelease(theString[0]);
  }

  if (v75)
  {
    CFRelease(v75);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }
}

uint64_t endpointLocal_setIsMuted(uint64_t a1, int a2, int a3)
{
  result = CMBaseObjectGetDerivedStorage();
  if (a3)
  {
    v8 = result;
    if (gLogCategory_APEndpointLocal <= 50)
    {
      if (gLogCategory_APEndpointLocal != -1 || (result = OUTLINED_FUNCTION_4(&gLogCategory_APEndpointLocal), result))
      {
        result = OUTLINED_FUNCTION_2(&gLogCategory_APEndpointLocal, "OSStatus endpointLocal_setIsMuted(FigEndpointRef, Boolean, Boolean)", v7, "[%{ptr}] <AirPlayVolume> setIsMuted: %s -> %s\n");
      }
    }

    if (*(v8 + 173) != a2)
    {
      *(v8 + 173) = a2;
      if (!*(v8 + 8))
      {
        DerivedStorage = CMBaseObjectGetDerivedStorage();
        APSVolumeConvertDBToSliderValue();
        if (a2 == 1)
        {
          APSVolumeConvertDBToSliderValue();
          v12 = v11;
          v13 = *(DerivedStorage + 164);
        }

        else
        {
          v12 = *(DerivedStorage + 176);
          APSVolumeConvertDBToSliderValue();
        }

        *(DerivedStorage + 176) = v13;
        if (gLogCategory_APEndpointLocal <= 50 && (gLogCategory_APEndpointLocal != -1 || OUTLINED_FUNCTION_4(&gLogCategory_APEndpointLocal)))
        {
          OUTLINED_FUNCTION_2(&gLogCategory_APEndpointLocal, "OSStatus endpointLocal_translateIsMutedToVolume(FigEndpointRef, Boolean)", v10, "[%{ptr}] <AirPlayVolume> translate isMuted=%c to volume=%.3f; storing previous volume=%.3f.\n");
        }

        return endpointLocal_setVolumeSlider(a1, 0, v12);
      }
    }
  }

  return result;
}

uint64_t endpointLocal_Dissociate(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  v2 = *(DerivedStorage + 41);
  *(DerivedStorage + 41) = 1;
  FigSimpleMutexUnlock();
  if (!v2)
  {
    CMNotificationCenterGetDefaultLocalCenter();
    FigDispatchAsyncPostNotification();
  }

  return 0;
}

uint64_t endpointLocal_UpdateFeatures(void *a1, uint64_t a2, const void *a3, uint64_t a4, uint64_t a5)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v11 = *(DerivedStorage + 64);
  FigSimpleMutexLock();
  if (gLogCategory_APEndpointLocal <= 50 && (gLogCategory_APEndpointLocal != -1 || OUTLINED_FUNCTION_4(&gLogCategory_APEndpointLocal)))
  {
    OUTLINED_FUNCTION_2(&gLogCategory_APEndpointLocal, "OSStatus endpointLocal_UpdateFeatures(FigEndpointRef, FigEndpointFeatures, CFDictionaryRef, FigEndpointActivationCompletionCallback, void *)", v12, "[%{ptr}] UpdateFeatures for '%@' with features 0x%llx -> 0x%llx");
  }

  if (!*(DerivedStorage + 40))
  {
    v18 = 4294949691;
    goto LABEL_23;
  }

  if (*(DerivedStorage + 41))
  {
    v18 = 4294950573;
    goto LABEL_23;
  }

  v13 = v11 | a2;
  if ((v11 | a2) == v11 && v13 == a2)
  {
    goto LABEL_18;
  }

  if (v13 == v11 || v13 == a2)
  {
    if (!a3 || (v16 = CFGetTypeID(a3), v16 == CFDictionaryGetTypeID()))
    {
LABEL_18:
      v18 = 0;
      goto LABEL_19;
    }

    v18 = 4294950576;
LABEL_23:
    APSLogErrorAt();
    goto LABEL_19;
  }

  v18 = 4294960591;
LABEL_19:
  endpointLocal_activateInternal(a1, v18, *(DerivedStorage + 56), 0, a2, a3, a4, a5);
  FigSimpleMutexUnlock();
  return v18;
}

uint64_t endpointLocal_SetProperty_cold_8(_DWORD *a1)
{
  result = APSLogErrorAt();
  *a1 = -6705;
  return result;
}

const void *endpointLocal_copyFromEndpointDescription_cold_2(uint64_t a1, _DWORD *a2, void *a3)
{
  result = APSGetFBOPropertyInt64();
  if (!*a2)
  {
    result = APEndpointAPSClusterTypeToFigEndpointClusterType(result);
    if (result)
    {
      result = CFRetain(result);
    }

    *a3 = result;
  }

  return result;
}

uint64_t endpointLocal_copyFromEndpointDescription_cold_3()
{
  OUTLINED_FUNCTION_3_3();
  if (*(*(CMBaseObjectGetVTable() + 8) + 48))
  {
    v1 = OUTLINED_FUNCTION_5_0();
    result = v2(v1);
  }

  else
  {
    result = 4294954514;
  }

  *v0 = result;
  return result;
}

uint64_t endpointLocal_copyFromEndpointDescription_cold_4()
{
  OUTLINED_FUNCTION_3_3();
  if (*(*(CMBaseObjectGetVTable() + 8) + 48))
  {
    v1 = OUTLINED_FUNCTION_5_0();
    result = v2(v1);
  }

  else
  {
    result = 4294954514;
  }

  *v0 = result;
  return result;
}

uint64_t endpointLocal_copyFromEndpointDescription_cold_5()
{
  OUTLINED_FUNCTION_3_3();
  if (*(*(CMBaseObjectGetVTable() + 8) + 48))
  {
    v1 = OUTLINED_FUNCTION_5_0();
    result = v2(v1);
  }

  else
  {
    result = 4294954514;
  }

  *v0 = result;
  return result;
}

uint64_t endpointLocal_copyPropertyInternal_cold_10(uint64_t result, _DWORD *a2)
{
  if (gLogCategory_APEndpointLocal <= 60)
  {
    v3 = result;
    if (gLogCategory_APEndpointLocal != -1 || (result = _LogCategory_Initialize(), result))
    {
      result = LogPrintF(&gLogCategory_APEndpointLocal, "OSStatus endpointLocal_copyPropertyInternal(FigEndpointRef, CFStringRef, CFAllocatorRef, void *)", 33554492, "[%{ptr}] Buffered audio stream doesn't exist during copy property\n", v3);
    }
  }

  *a2 = -17606;
  return result;
}

uint64_t endpointLocal_setVolumeSlider_cold_1(uint64_t a1, float a2)
{
  APSVolumeConvertSliderValueToDB();
  APSVolumeConvertSliderValueToDB();
  return OUTLINED_FUNCTION_2(&gLogCategory_APEndpointLocal, "OSStatus endpointLocal_setVolumeSlider(FigEndpointRef, Float32, Boolean)", v2, "[%{ptr}] <AirPlayVolume> setVolumeSlider: %f dB (%f) -> %f dB (%f), userMute: %s -> %s\n");
}

void endpoint_handleIdleStateChanged_cold_1(uint64_t a1, char *a2)
{
  v3 = FigCFDictionaryCopyArrayOfValues();
  if (CFArrayGetCount(v3) <= 0)
  {
LABEL_5:
    v5 = 1;
    if (!v3)
    {
      goto LABEL_7;
    }

LABEL_6:
    CFRelease(v3);
    goto LABEL_7;
  }

  v4 = 0;
  while (1)
  {
    CFArrayGetValueAtIndex(v3, v4);
    if (APSGetFBOPropertyInt64())
    {
      break;
    }

    if (++v4 >= CFArrayGetCount(v3))
    {
      goto LABEL_5;
    }
  }

  v5 = 0;
  if (v3)
  {
    goto LABEL_6;
  }

LABEL_7:
  *a2 = v5;
}

uint64_t mfiMutualAuth_setAndLogAuthState_cold_1(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v3 = *(a1 + 120);
  if (v3 > 4)
  {
    v4 = "UnknownState";
  }

  else
  {
    v4 = off_27849A778[v3];
  }

  if (a2 > 4)
  {
    v5 = "UnknownState";
  }

  else
  {
    v5 = off_27849A778[a2];
  }

  return LogPrintF(&gLogCategory_APAuthenticationClientMFiMutualAuth, "void mfiMutualAuth_setAndLogAuthState(APAuthenticationClientRef, AuthExchangeState)", 33554472, "[%{ptr}] AuthExchange state change %s => %s\n", a3, v4, v5);
}

uint64_t mfiMutualAuth_setAndLogSecureTunnelState_cold_1(uint64_t a1, unsigned int a2, uint64_t a3)
{
  SecureTunnelStateString = mfiMutualAuth_getSecureTunnelStateString(*(a1 + 124));
  v6 = mfiMutualAuth_getSecureTunnelStateString(a2);
  return LogPrintF(&gLogCategory_APAuthenticationClientMFiMutualAuth, "void mfiMutualAuth_setAndLogSecureTunnelState(APAuthenticationClientRef, SecureTunnelProcessingState)", 33554472, "[%{ptr}] SecureTunnel state change: %s => %s\n", a3, SecureTunnelStateString, v6);
}

void __metadataSource_notifyMetadataChange_block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*a3)
  {
    v5 = FigCFWeakReferenceHolderCopyReferencedObject();
    if (!v5)
    {
      return;
    }
  }

  else
  {
    v5 = 0;
  }

  (*(a3 + 8))(*(a1 + 32), v5, *(a1 + 56), *(a1 + 40), *(a1 + 48), *(a1 + 60));
  if (v5)
  {

    CFRelease(v5);
  }
}

void APMetadataSourceCreateWithRoutingContextUUID_cold_1(void *a1)
{
  APSLogErrorAt();
}

const __CFData *metadataSource_handleNowPlayingInfoChangedInternal_cold_1()
{
  v0 = getkMRMediaRemoteNowPlayingInfoArtworkData();
  result = OUTLINED_FUNCTION_2_3(v0);
  if (result)
  {
    v2 = result;
    v3 = CFGetTypeID(result);
    result = CFDataGetTypeID();
    if (v3 == result)
    {
      result = CFDataGetLength(v2);
    }
  }

  if (gLogCategory_APMetadataSource <= 40)
  {
    if (gLogCategory_APMetadataSource != -1 || (result = _LogCategory_Initialize(), result))
    {
      v4 = getkMRMediaRemoteNowPlayingInfoArtist();
      OUTLINED_FUNCTION_2_3(v4);
      v5 = getkMRMediaRemoteNowPlayingInfoAlbum();
      OUTLINED_FUNCTION_2_3(v5);
      v6 = getkMRMediaRemoteNowPlayingInfoTitle();
      OUTLINED_FUNCTION_2_3(v6);
      v7 = getkMRMediaRemoteNowPlayingInfoTrackNumber();
      OUTLINED_FUNCTION_2_3(v7);
      v8 = getkMRMediaRemoteNowPlayingInfoTotalTrackCount();
      OUTLINED_FUNCTION_2_3(v8);
      v9 = getkMRMediaRemoteNowPlayingInfoElapsedTime();
      OUTLINED_FUNCTION_2_3(v9);
      v10 = getkMRMediaRemoteNowPlayingInfoDuration();
      OUTLINED_FUNCTION_2_3(v10);
      v11 = getkMRMediaRemoteNowPlayingInfoArtworkMIMEType();
      OUTLINED_FUNCTION_2_3(v11);
      return OUTLINED_FUNCTION_6(&gLogCategory_APMetadataSource, "void metadataSource_handleNowPlayingInfoChangedInternal(APMetadataSourceRef, CFDictionaryRef, CFStringRef, Boolean)", v12, "[%{ptr}] Now Playing Info Updated: F=%s, Ar=%@, Al=%@, Ti=%@, T#=%@ of TT=%@, ET=%@ of Du=%@, Art=%@ (%d bytes)\n");
    }
  }

  return result;
}

void metadataSource_handleNowPlayingInfoChangedInternal_cold_3()
{
  v0 = [MEMORY[0x277CCA890] currentHandler];
  [v0 handleFailureInFunction:objc_msgSend(MEMORY[0x277CCACA8] file:"stringWithUTF8String:" lineNumber:"CFStringRef getkMRMediaRemoteMediaTypeMusic(void)") description:{@"APSenderMediaRemoteSoftLinking.h", 137, @"%s", dlerror()}];
  __break(1u);
}

void metadataSource_handleNowPlayingInfoChangedInternal_cold_4()
{
  v0 = [MEMORY[0x277CCA890] currentHandler];
  [v0 handleFailureInFunction:objc_msgSend(MEMORY[0x277CCACA8] file:"stringWithUTF8String:" lineNumber:"CFStringRef getkMRMediaRemoteNowPlayingInfoMediaType(void)") description:{@"APSenderMediaRemoteSoftLinking.h", 128, @"%s", dlerror()}];
  __break(1u);
}

void metadataSource_handleNowPlayingInfoChangedInternal_cold_5()
{
  v0 = [MEMORY[0x277CCA890] currentHandler];
  [v0 handleFailureInFunction:objc_msgSend(MEMORY[0x277CCACA8] file:"stringWithUTF8String:" lineNumber:"CFStringRef getkMRMediaRemoteNowPlayingInfoAssetURL(void)") description:{@"APSenderMediaRemoteSoftLinking.h", 68, @"%s", dlerror()}];
  __break(1u);
}

_DWORD *metadataSource_handleNowPlayingInfoChangedInternal_cold_9(_DWORD *result, uint64_t a2)
{
  v2 = result;
  if (gLogCategory_APMetadataSource <= 60)
  {
    if (gLogCategory_APMetadataSource != -1 || (result = _LogCategory_Initialize(), result))
    {
      result = LogPrintF(&gLogCategory_APMetadataSource, "OSStatus metadataSource_updateAPNowPlayingInfo(APMetadataSourceRef, CFDictionaryRef)", 33554492, "### [%{ptr}] Artwork data is valid, but Artwork MIME type is not\n", a2);
    }
  }

  *v2 = -6705;
  return result;
}

void metadataSource_handleNowPlayingInfoChangedInternal_cold_29()
{
  v0 = [MEMORY[0x277CCA890] currentHandler];
  [v0 handleFailureInFunction:objc_msgSend(MEMORY[0x277CCACA8] file:"stringWithUTF8String:" lineNumber:"CFStringRef getkMRMediaRemoteNowPlayingInfoShuffleMode(void)") description:{@"APSenderMediaRemoteSoftLinking.h", 104, @"%s", dlerror()}];
  __break(1u);
}

void metadataSource_handleNowPlayingInfoChangedInternal_cold_30()
{
  v0 = [MEMORY[0x277CCA890] currentHandler];
  [v0 handleFailureInFunction:objc_msgSend(MEMORY[0x277CCACA8] file:"stringWithUTF8String:" lineNumber:"CFStringRef getkMRMediaRemoteNowPlayingInfoRepeatMode(void)") description:{@"APSenderMediaRemoteSoftLinking.h", 101, @"%s", dlerror()}];
  __break(1u);
}

void metadataSource_handleNowPlayingInfoChangedInternal_cold_31()
{
  v0 = [MEMORY[0x277CCA890] currentHandler];
  [v0 handleFailureInFunction:objc_msgSend(MEMORY[0x277CCACA8] file:"stringWithUTF8String:" lineNumber:"CFStringRef getkMRMediaRemoteNowPlayingInfoPlaybackRate(void)") description:{@"APSenderMediaRemoteSoftLinking.h", 95, @"%s", dlerror()}];
  __break(1u);
}

void metadataSource_handleNowPlayingInfoChangedInternal_cold_32()
{
  v0 = [MEMORY[0x277CCA890] currentHandler];
  [v0 handleFailureInFunction:objc_msgSend(MEMORY[0x277CCACA8] file:"stringWithUTF8String:" lineNumber:"CFStringRef getkMRMediaRemoteNowPlayingInfoIsAlwaysLive(void)") description:{@"APSenderMediaRemoteSoftLinking.h", 86, @"%s", dlerror()}];
  __break(1u);
}

void metadataSource_handleNowPlayingInfoChangedInternal_cold_33()
{
  v0 = [MEMORY[0x277CCA890] currentHandler];
  [v0 handleFailureInFunction:objc_msgSend(MEMORY[0x277CCACA8] file:"stringWithUTF8String:" lineNumber:"CFStringRef getkMRMediaRemoteNowPlayingInfoIsExplicitTrack(void)") description:{@"APSenderMediaRemoteSoftLinking.h", 92, @"%s", dlerror()}];
  __break(1u);
}

void metadataSource_handleNowPlayingInfoChangedInternal_cold_34()
{
  v0 = [MEMORY[0x277CCA890] currentHandler];
  [v0 handleFailureInFunction:objc_msgSend(MEMORY[0x277CCACA8] file:"stringWithUTF8String:" lineNumber:"CFStringRef getkMRMediaRemoteNowPlayingInfoTotalDiscCount(void)") description:{@"APSenderMediaRemoteSoftLinking.h", 113, @"%s", dlerror()}];
  __break(1u);
}

void metadataSource_handleNowPlayingInfoChangedInternal_cold_35()
{
  v0 = [MEMORY[0x277CCA890] currentHandler];
  [v0 handleFailureInFunction:objc_msgSend(MEMORY[0x277CCACA8] file:"stringWithUTF8String:" lineNumber:"CFStringRef getkMRMediaRemoteNowPlayingInfoDiscNumber(void)") description:{@"APSenderMediaRemoteSoftLinking.h", 74, @"%s", dlerror()}];
  __break(1u);
}

void metadataSource_handleNowPlayingInfoChangedInternal_cold_36()
{
  v0 = [MEMORY[0x277CCA890] currentHandler];
  [v0 handleFailureInFunction:objc_msgSend(MEMORY[0x277CCACA8] file:"stringWithUTF8String:" lineNumber:"CFStringRef getkMRMediaRemoteNowPlayingInfoTotalQueueCount(void)") description:{@"APSenderMediaRemoteSoftLinking.h", 116, @"%s", dlerror()}];
  __break(1u);
}

void metadataSource_handleNowPlayingInfoChangedInternal_cold_37()
{
  v0 = [MEMORY[0x277CCA890] currentHandler];
  [v0 handleFailureInFunction:objc_msgSend(MEMORY[0x277CCACA8] file:"stringWithUTF8String:" lineNumber:"CFStringRef getkMRMediaRemoteNowPlayingInfoQueueIndex(void)") description:{@"APSenderMediaRemoteSoftLinking.h", 98, @"%s", dlerror()}];
  __break(1u);
}

void metadataSource_handleNowPlayingInfoChangedInternal_cold_38()
{
  v0 = [MEMORY[0x277CCA890] currentHandler];
  [v0 handleFailureInFunction:objc_msgSend(MEMORY[0x277CCACA8] file:"stringWithUTF8String:" lineNumber:"CFStringRef getkMRMediaRemoteNowPlayingInfoGenre(void)") description:{@"APSenderMediaRemoteSoftLinking.h", 83, @"%s", dlerror()}];
  __break(1u);
}

void metadataSource_handleNowPlayingInfoChangedInternal_cold_39()
{
  v0 = [MEMORY[0x277CCA890] currentHandler];
  [v0 handleFailureInFunction:objc_msgSend(MEMORY[0x277CCACA8] file:"stringWithUTF8String:" lineNumber:"CFStringRef getkMRMediaRemoteNowPlayingInfoComposer(void)") description:{@"APSenderMediaRemoteSoftLinking.h", 71, @"%s", dlerror()}];
  __break(1u);
}

void metadataSource_handleNowPlayingInfoChangedInternal_cold_43(_DWORD *a1, const void *a2)
{
  APSLogErrorAt();
  *a1 = -6728;
  CFRelease(a2);
}

void metadataSource_handleNowPlayingInfoChangedInternal_cold_45()
{
  v0 = [MEMORY[0x277CCA890] currentHandler];
  [v0 handleFailureInFunction:objc_msgSend(MEMORY[0x277CCACA8] file:"stringWithUTF8String:" lineNumber:"CFStringRef getkMRMediaRemoteNowPlayingInfoIsMusicApp(void)") description:{@"APSenderMediaRemoteSoftLinking.h", 89, @"%s", dlerror()}];
  __break(1u);
}

void metadataSource_handleMRSupportedCommandsChangedInternal_cold_2()
{
  v0 = [MEMORY[0x277CCA890] currentHandler];
  [v0 handleFailureInFunction:objc_msgSend(MEMORY[0x277CCACA8] file:"stringWithUTF8String:" lineNumber:"CFDataRef soft_MRMediaRemoteCommandInfoCreateExternalRepresentation(CFAllocatorRef description:{MRMediaRemoteCommandInfoRef)"), @"APSenderMediaRemoteSoftLinking.h", 149, @"%s", dlerror()}];
  __break(1u);
}

void metadataSource_handleNowPlayingClientChangedInternal_cold_2()
{
  v0 = [MEMORY[0x277CCA890] currentHandler];
  [v0 handleFailureInFunction:objc_msgSend(MEMORY[0x277CCACA8] file:"stringWithUTF8String:" lineNumber:"CFDataRef soft_MRNowPlayingClientCreateExternalRepresentation(MRNowPlayingClientRef)") description:{@"APSenderMediaRemoteSoftLinking.h", 156, @"%s", dlerror()}];
  __break(1u);
}

void metadataSource_handleNowPlayingClientChangedInternal_cold_3(void *a1, CFTypeRef cf)
{
  v4 = a1[10];
  a1[10] = cf;
  CFRetain(cf);
  if (v4)
  {
    CFRelease(v4);
  }

  metadataSource_notifyMetadataChange(a1, 1836215907, cf, @"notApplicable", 0);
  CFRelease(cf);
}

void __getMRClientClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x277CCA890] currentHandler];
  [v0 handleFailureInFunction:objc_msgSend(MEMORY[0x277CCACA8] file:"stringWithUTF8String:" lineNumber:"Class getMRClientClass(void)_block_invoke") description:{@"APSenderMediaRemoteSoftLinking.h", 33, @"Unable to find class %s", "MRClient"}];
  __break(1u);
}

void MediaRemoteLibrary_cold_1(void *a1)
{
  v2 = [MEMORY[0x277CCA890] currentHandler];
  [v2 handleFailureInFunction:objc_msgSend(MEMORY[0x277CCACA8] file:"stringWithUTF8String:" lineNumber:"void *MediaRemoteLibrary(void)") description:{@"APSenderMediaRemoteSoftLinking.h", 29, @"%s", *a1}];
  __break(1u);
}

void __getMRPlayerPathClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x277CCA890] currentHandler];
  [v0 handleFailureInFunction:objc_msgSend(MEMORY[0x277CCACA8] file:"stringWithUTF8String:" lineNumber:"Class getMRPlayerPathClass(void)_block_invoke") description:{@"APSenderMediaRemoteSoftLinking.h", 39, @"Unable to find class %s", "MRPlayerPath"}];
  __break(1u);
}

void __getMRDestinationClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x277CCA890] currentHandler];
  [v0 handleFailureInFunction:objc_msgSend(MEMORY[0x277CCACA8] file:"stringWithUTF8String:" lineNumber:"Class getMRDestinationClass(void)_block_invoke") description:{@"APSenderMediaRemoteSoftLinking.h", 36, @"Unable to find class %s", "MRDestination"}];
  __break(1u);
}

uint64_t metadataSource_notifyListenerAboutCurrentMetadata_cold_2(uint64_t a1, void *a2, uint64_t a3)
{
  result = APSLogErrorAt();
  if (gLogCategory_APMetadataSource <= 90)
  {
    if (gLogCategory_APMetadataSource != -1)
    {
      return LogPrintF(&gLogCategory_APMetadataSource, "void metadataSource_notifyListenerAboutCurrentMetadata(void *)", 33554522, "### [%{ptr}] Got error %#m when copying %'@ metadata", *a2, a1, a3);
    }

    result = _LogCategory_Initialize();
    if (result)
    {
      return LogPrintF(&gLogCategory_APMetadataSource, "void metadataSource_notifyListenerAboutCurrentMetadata(void *)", 33554522, "### [%{ptr}] Got error %#m when copying %'@ metadata", *a2, a1, a3);
    }
  }

  return result;
}

void __getMRNowPlayingControllerConfigurationClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x277CCA890] currentHandler];
  [v0 handleFailureInFunction:objc_msgSend(MEMORY[0x277CCACA8] file:"stringWithUTF8String:" lineNumber:"Class getMRNowPlayingControllerConfigurationClass(void)_block_invoke") description:{@"APSenderMediaRemoteSoftLinking.h", 45, @"Unable to find class %s", "MRNowPlayingControllerConfiguration"}];
  __break(1u);
}

void __getMRPlaybackQueueRequestClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x277CCA890] currentHandler];
  [v0 handleFailureInFunction:objc_msgSend(MEMORY[0x277CCACA8] file:"stringWithUTF8String:" lineNumber:"Class getMRPlaybackQueueRequestClass(void)_block_invoke") description:{@"APSenderMediaRemoteSoftLinking.h", 48, @"Unable to find class %s", "MRPlaybackQueueRequest"}];
  __break(1u);
}

void __getMRNowPlayingControllerClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x277CCA890] currentHandler];
  [v0 handleFailureInFunction:objc_msgSend(MEMORY[0x277CCACA8] file:"stringWithUTF8String:" lineNumber:"Class getMRNowPlayingControllerClass(void)_block_invoke") description:{@"APSenderMediaRemoteSoftLinking.h", 42, @"Unable to find class %s", "MRNowPlayingController"}];
  __break(1u);
}

void getkMRMediaRemoteNowPlayingInfoArtworkData_cold_1()
{
  v0 = [MEMORY[0x277CCA890] currentHandler];
  [v0 handleFailureInFunction:objc_msgSend(MEMORY[0x277CCACA8] file:"stringWithUTF8String:" lineNumber:"CFStringRef getkMRMediaRemoteNowPlayingInfoArtworkData(void)") description:{@"APSenderMediaRemoteSoftLinking.h", 59, @"%s", dlerror()}];
  __break(1u);
}

void getkMRMediaRemoteNowPlayingInfoArtist_cold_1()
{
  v0 = [MEMORY[0x277CCA890] currentHandler];
  [v0 handleFailureInFunction:objc_msgSend(MEMORY[0x277CCACA8] file:"stringWithUTF8String:" lineNumber:"CFStringRef getkMRMediaRemoteNowPlayingInfoArtist(void)") description:{@"APSenderMediaRemoteSoftLinking.h", 56, @"%s", dlerror()}];
  __break(1u);
}

void getkMRMediaRemoteNowPlayingInfoAlbum_cold_1()
{
  v0 = [MEMORY[0x277CCA890] currentHandler];
  [v0 handleFailureInFunction:objc_msgSend(MEMORY[0x277CCACA8] file:"stringWithUTF8String:" lineNumber:"CFStringRef getkMRMediaRemoteNowPlayingInfoAlbum(void)") description:{@"APSenderMediaRemoteSoftLinking.h", 53, @"%s", dlerror()}];
  __break(1u);
}

void getkMRMediaRemoteNowPlayingInfoTitle_cold_1()
{
  v0 = [MEMORY[0x277CCA890] currentHandler];
  [v0 handleFailureInFunction:objc_msgSend(MEMORY[0x277CCACA8] file:"stringWithUTF8String:" lineNumber:"CFStringRef getkMRMediaRemoteNowPlayingInfoTitle(void)") description:{@"APSenderMediaRemoteSoftLinking.h", 110, @"%s", dlerror()}];
  __break(1u);
}

void getkMRMediaRemoteNowPlayingInfoTrackNumber_cold_1()
{
  v0 = [MEMORY[0x277CCA890] currentHandler];
  [v0 handleFailureInFunction:objc_msgSend(MEMORY[0x277CCACA8] file:"stringWithUTF8String:" lineNumber:"CFStringRef getkMRMediaRemoteNowPlayingInfoTrackNumber(void)") description:{@"APSenderMediaRemoteSoftLinking.h", 122, @"%s", dlerror()}];
  __break(1u);
}

void getkMRMediaRemoteNowPlayingInfoTotalTrackCount_cold_1()
{
  v0 = [MEMORY[0x277CCA890] currentHandler];
  [v0 handleFailureInFunction:objc_msgSend(MEMORY[0x277CCACA8] file:"stringWithUTF8String:" lineNumber:"CFStringRef getkMRMediaRemoteNowPlayingInfoTotalTrackCount(void)") description:{@"APSenderMediaRemoteSoftLinking.h", 119, @"%s", dlerror()}];
  __break(1u);
}

void getkMRMediaRemoteNowPlayingInfoElapsedTime_cold_1()
{
  v0 = [MEMORY[0x277CCA890] currentHandler];
  [v0 handleFailureInFunction:objc_msgSend(MEMORY[0x277CCACA8] file:"stringWithUTF8String:" lineNumber:"CFStringRef getkMRMediaRemoteNowPlayingInfoElapsedTime(void)") description:{@"APSenderMediaRemoteSoftLinking.h", 80, @"%s", dlerror()}];
  __break(1u);
}

void getkMRMediaRemoteNowPlayingInfoDuration_cold_1()
{
  v0 = [MEMORY[0x277CCA890] currentHandler];
  [v0 handleFailureInFunction:objc_msgSend(MEMORY[0x277CCACA8] file:"stringWithUTF8String:" lineNumber:"CFStringRef getkMRMediaRemoteNowPlayingInfoDuration(void)") description:{@"APSenderMediaRemoteSoftLinking.h", 77, @"%s", dlerror()}];
  __break(1u);
}

void getkMRMediaRemoteNowPlayingInfoArtworkMIMEType_cold_1()
{
  v0 = [MEMORY[0x277CCA890] currentHandler];
  [v0 handleFailureInFunction:objc_msgSend(MEMORY[0x277CCACA8] file:"stringWithUTF8String:" lineNumber:"CFStringRef getkMRMediaRemoteNowPlayingInfoArtworkMIMEType(void)") description:{@"APSenderMediaRemoteSoftLinking.h", 65, @"%s", dlerror()}];
  __break(1u);
}

void getkMRMediaRemoteNowPlayingInfoTimestamp_cold_1()
{
  v0 = [MEMORY[0x277CCA890] currentHandler];
  [v0 handleFailureInFunction:objc_msgSend(MEMORY[0x277CCACA8] file:"stringWithUTF8String:" lineNumber:"CFStringRef getkMRMediaRemoteNowPlayingInfoTimestamp(void)") description:{@"APSenderMediaRemoteSoftLinking.h", 107, @"%s", dlerror()}];
  __break(1u);
}

void getkMRMediaRemoteNowPlayingInfoUniqueIdentifier_cold_1()
{
  v0 = [MEMORY[0x277CCA890] currentHandler];
  [v0 handleFailureInFunction:objc_msgSend(MEMORY[0x277CCACA8] file:"stringWithUTF8String:" lineNumber:"CFStringRef getkMRMediaRemoteNowPlayingInfoUniqueIdentifier(void)") description:{@"APSenderMediaRemoteSoftLinking.h", 125, @"%s", dlerror()}];
  __break(1u);
}

uint64_t mcs_handlePasswordChangedNotification(uint64_t a1, uint64_t a2)
{
  result = CMBaseObjectGetDerivedStorage();
  if (!*(result + 8))
  {

    return mcs_updatePassword(a2);
  }

  return result;
}

uint64_t mcs_SetProxiedProperty(const void *a1, const void *a2, uint64_t a3, const void *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (FigCFEqual())
  {
    Value = FigCFDictionaryGetValue();
  }

  else
  {
    Value = 0;
  }

  if (gLogCategory_EndpointPlaybackSessionMC <= 30 && (gLogCategory_EndpointPlaybackSessionMC != -1 || _LogCategory_Initialize()))
  {
    OUTLINED_FUNCTION_4_1(&gLogCategory_EndpointPlaybackSessionMC, "OSStatus mcs_SetProxiedProperty(FigEndpointPlaybackSessionRef, CFStringRef, CFDictionaryRef, CFTypeRef)", v8, "Endpoint playback session %@ set property\n");
  }

  if (*(DerivedStorage + 8))
  {
    return 4294950554;
  }

  CFRetain(a2);
  if (Value)
  {
    CFRetain(Value);
  }

  if (a4)
  {
    CFRetain(a4);
  }

  CFRetain(a1);
  APSDispatchAsyncFHelper();
  return 0;
}

uint64_t mcs_SetEventHandler(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (gLogCategory_EndpointPlaybackSessionMC <= 30 && (gLogCategory_EndpointPlaybackSessionMC != -1 || _LogCategory_Initialize()))
  {
    OUTLINED_FUNCTION_4_1(&gLogCategory_EndpointPlaybackSessionMC, "OSStatus mcs_SetEventHandler(FigEndpointPlaybackSessionRef, FigEndpointPlaybackSessionHandleEvent, void *, CFTypeRef)", v4, "Endpoint playback session %@ set event handler\n");
  }

  if (*(DerivedStorage + 8))
  {
    return 4294950554;
  }

  APSDispatchSyncTask();
  return 0;
}

void mcs_AuthorizeItemInternal(CFTypeRef *a1)
{
  v11 = *MEMORY[0x277D85DE8];
  if (*(CMBaseObjectGetDerivedStorage() + 8))
  {
    v6 = 0;
    v5 = 4294950554;
    goto LABEL_7;
  }

  v2 = mcs_EnsureConnectedInternal(*a1);
  if (v2)
  {
    v5 = v2;
LABEL_19:
    APSLogErrorAt();
    v6 = 0;
    goto LABEL_7;
  }

  CFDataGetBytePtr(a1[1]);
  CFDataGetLength(a1[1]);
  FigCFStringGetCStringPtrAndBufferToFree();
  v3 = MediaControlClient_DoAuthorize();
  if (v3)
  {
    v5 = v3;
    goto LABEL_19;
  }

  v4 = CFStringCreateWithCString(*MEMORY[0x277CBECE8], cStr, 0x8000100u);
  v5 = 0;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = &stru_283570B70;
  }

LABEL_7:
  v7 = a1[3];
  if (v7)
  {
    v7(0, v6, v5, a1[4]);
  }

  if (v6)
  {
    CFRelease(v6);
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

  CFRelease(*a1);
  free(0);
}

uint64_t mcs_EnsureConnectedInternal(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 8))
  {
    return 4294950554;
  }

  v3 = DerivedStorage;
  if (*(DerivedStorage + 32))
  {
    return 0;
  }

  v4 = *(DerivedStorage + 80);
  if (v4)
  {
    APEndpointDescriptionGetDeviceID(v4);
  }

  v5 = *MEMORY[0x277CBECE8];
  v6 = MediaControlClient_Create();
  if (v6)
  {
    v35 = v6;
LABEL_71:
    APSLogErrorAt();
    return v35;
  }

  v7 = FigCFWeakReferenceHolderCreateWithReferencedObject();
  v3[12] = v7;
  if (!v7)
  {
    APSLogErrorAt();
    return 4294950555;
  }

  MediaControlClient_SetDispatchQueue();
  MediaControlClient_SetEventHandler();
  if (v3[9])
  {
    CMNotificationCenterGetDefaultLocalCenter();
    OUTLINED_FUNCTION_1_3();
    FigNotificationCenterAddWeakListener();
  }

  updated = mcs_updatePassword(a1);
  if (updated)
  {
    v35 = updated;
    goto LABEL_71;
  }

  if (!v3[10])
  {
    goto LABEL_55;
  }

  v9 = CMBaseObjectGetDerivedStorage();
  cf = 0;
  value = 0;
  v40 = 0;
  if (!*(v9 + 32) || (v10 = v9, !*(v9 + 80)))
  {
    APSLogErrorAt();
    v39 = -6705;
LABEL_74:
    v43 = v39;
    goto LABEL_50;
  }

  Mutable = CFDictionaryCreateMutable(v5, 6, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (!Mutable)
  {
    APSLogErrorAt();
    v39 = -6728;
    goto LABEL_74;
  }

  v12 = Mutable;
  APEndpointDescriptionGetCMBaseObject();
  v14 = v13;
  v15 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v15)
  {
    v43 = -12782;
    goto LABEL_47;
  }

  v15(v14, @"Name", v5, &value);
  OUTLINED_FUNCTION_2_4();
  if (!v17 && v16)
  {
    goto LABEL_47;
  }

  if (value)
  {
    CFDictionarySetValue(v12, @"MediaControlClientRouteInfo_Name", value);
  }

  APEndpointDescriptionGetCMBaseObject();
  v19 = v18;
  v20 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v20)
  {
    v43 = -12782;
    goto LABEL_47;
  }

  v20(v19, @"TransportDevice", v5, &cf);
  OUTLINED_FUNCTION_2_4();
  if (!v17 && v21)
  {
    goto LABEL_47;
  }

  if (cf)
  {
    CFDictionarySetValue(v12, @"MediaControlClientRouteInfo_TransportDevice", cf);
  }

  v22 = *(v10 + 80);
  v23 = *(*(CMBaseObjectGetVTable() + 16) + 16);
  if (v23)
  {
    v24 = v23(v22, 27);
    v25 = *MEMORY[0x277CBED28];
    v26 = *MEMORY[0x277CBED10];
    v27 = *MEMORY[0x277CBED28];
    if (v24)
    {
      goto LABEL_33;
    }
  }

  else
  {
    v25 = *MEMORY[0x277CBED28];
    v26 = *MEMORY[0x277CBED10];
  }

  v27 = v26;
LABEL_33:
  CFDictionarySetValue(v12, @"MediaControlClientRouteInfo_PairingEnabled", v27);
  APEndpointDescriptionGetCMBaseObject();
  v29 = v28;
  v30 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v30)
  {
    v43 = -12782;
LABEL_47:
    APSLogErrorAt();
    goto LABEL_48;
  }

  v30(v29, @"PairingPeerPublicKey", v5, &v40);
  OUTLINED_FUNCTION_2_4();
  if (!v17 && v31)
  {
    goto LABEL_47;
  }

  if (v40)
  {
    CFDictionarySetValue(v12, @"MediaControlClientRouteInfo_PublicKey", v40);
  }

  v32 = APSGetFBOPropertyInt64();
  if (v43 != -12784)
  {
    if (v43)
    {
      goto LABEL_47;
    }
  }

  v33 = APSGetFBOPropertyInt64();
  if (v43 != -12784)
  {
    if (v43)
    {
      goto LABEL_47;
    }
  }

  if (v32 | v33)
  {
    v34 = v25;
  }

  else
  {
    v34 = v26;
  }

  CFDictionarySetValue(v12, @"MediaControlClientRouteInfo_PairPinEnabled", v34);
  MediaControlClient_SetInfo();
  v43 = 0;
LABEL_48:
  CFRelease(v12);
  if (value)
  {
    CFRelease(value);
  }

LABEL_50:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v40)
  {
    CFRelease(v40);
  }

  v35 = v43;
  if (v43)
  {
    goto LABEL_71;
  }

LABEL_55:
  if (v3[11])
  {
    v36 = MediaControlClient_SetConnectionInterfaceManager();
    if (v36)
    {
      v35 = v36;
      goto LABEL_71;
    }
  }

  v35 = MediaControlClient_EnsureConnected();
  if (v35)
  {
    goto LABEL_71;
  }

  IsConnectedOnP2PInterface = MediaControlClient_IsConnectedOnP2PInterface();
  mcs_postConnectedStateChangedNotification(a1, 1, IsConnectedOnP2PInterface, 0);
  return v35;
}

void mcs_EventHandler(uint64_t a1, const __CFDictionary *a2, uint64_t a3)
{
  value = 0;
  if (!a2 || !a3)
  {
    APSLogErrorAt();
    v14 = 0;
    v4 = 0;
    goto LABEL_30;
  }

  v4 = FigCFWeakReferenceHolderCopyReferencedObject();
  if (!v4)
  {
    goto LABEL_37;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (gLogCategory_EndpointPlaybackSessionMC <= 30 && (gLogCategory_EndpointPlaybackSessionMC != -1 || _LogCategory_Initialize()))
  {
    OUTLINED_FUNCTION_4_1(&gLogCategory_EndpointPlaybackSessionMC, "void mcs_EventHandler(MediaControlClientRef, CFDictionaryRef, void *)", v5, "Endpoint playback session %@ event handler called [%@]\n");
  }

  if (*(DerivedStorage + 8))
  {
LABEL_37:
    v14 = 0;
    goto LABEL_30;
  }

  v7 = CFDictionaryGetValue(a2, @"state");
  v8 = v7;
  if (v7 == @"disconnected")
  {
    goto LABEL_42;
  }

  if (!v7)
  {
LABEL_28:
    v14 = CFRetain(a2);
    goto LABEL_29;
  }

  if (CFEqual(v7, @"disconnected"))
  {
LABEL_42:
    if (CFDictionaryGetValue(a2, @"error"))
    {
      CFNumberGetTypeID();
      TypedValue = CFDictionaryGetTypedValue();
      Int64 = CFDictionaryGetInt64();
      if (gLogCategory_EndpointPlaybackSessionMC <= 50)
      {
        v11 = Int64;
        if (gLogCategory_EndpointPlaybackSessionMC != -1 || _LogCategory_Initialize())
        {
          LogPrintF(&gLogCategory_EndpointPlaybackSessionMC, "void mcs_EventHandler(MediaControlClientRef, CFDictionaryRef, void *)", 33554482, "MediaControlClient posted disconnected event with error %d", v11);
        }
      }
    }

    else
    {
      TypedValue = 0;
    }

    mcs_postConnectedStateChangedNotification(v4, 0, 0, TypedValue);
    if (!v8)
    {
      goto LABEL_28;
    }
  }

  if (CFEqual(v8, @"playing"))
  {
    v12 = 1;
  }

  else
  {
    v12 = CFEqual(v8, @"loading") != 0;
  }

  mcs_updateIsPlayingAndPostNotification(v4, v12);
  if (v8 != @"playing" && !CFEqual(v8, @"playing"))
  {
    goto LABEL_28;
  }

  MutableCopy = CFDictionaryCreateMutableCopy(*MEMORY[0x277CBECE8], 0, a2);
  v14 = MutableCopy;
  if (MutableCopy)
  {
    v15 = *MEMORY[0x277CC0DD0];
    v16 = CFDictionaryGetValue(MutableCopy, *MEMORY[0x277CC0DD0]);
    if (!v16)
    {
LABEL_29:
      CFRetain(v4);
      CFRetain(v14);
      APSDispatchAsyncFHelper();
      goto LABEL_30;
    }

    if (!APEndpointPlaybackSessionCreatePlayPlaybackInfoTimesInCMTime(v16, &value))
    {
      CFDictionarySetValue(v14, v15, value);
      goto LABEL_29;
    }
  }

  APSLogErrorAt();
LABEL_30:
  if (value)
  {
    CFRelease(value);
  }

  if (v14)
  {
    CFRelease(v14);
  }

  if (v4)
  {
    CFRelease(v4);
  }
}

void mcs_RemovePlayQueueItemInternal(uint64_t *a1)
{
  v2 = OUTLINED_FUNCTION_3_5(a1);
  if (*(v2 + 8))
  {
    v3 = 4294950554;
  }

  else if (*(v2 + 32))
  {
    v3 = MediaControlClient_DoRemovePlaylistItem();
    if (v3)
    {
      APSLogErrorAt();
    }
  }

  else
  {
    v3 = 4294950553;
  }

  v4 = *(v1 + 16);
  if (v4)
  {
    v4(v3, *(v1 + 24));
  }

  v5 = *(v1 + 8);
  if (v5)
  {
    CFRelease(v5);
  }

  v6 = *v1;

  CFRelease(v6);
}

void mcs_GetPlaybackInfoInternal(uint64_t *a1)
{
  v2 = OUTLINED_FUNCTION_3_5(a1);
  v6 = 0;
  cf = 0;
  if (*(v2 + 8))
  {
    PlayPlaybackInfoTimesInCMTime = 4294950554;
  }

  else if (*(v2 + 32))
  {
    v3 = MediaControlClient_CopyPlaybackInfo();
    if (v3)
    {
      PlayPlaybackInfoTimesInCMTime = v3;
    }

    else
    {
      PlayPlaybackInfoTimesInCMTime = APEndpointPlaybackSessionCreatePlayPlaybackInfoTimesInCMTime(cf, &v6);
      if (!PlayPlaybackInfoTimesInCMTime)
      {
        goto LABEL_5;
      }
    }

    APSLogErrorAt();
  }

  else
  {
    PlayPlaybackInfoTimesInCMTime = 4294950553;
  }

LABEL_5:
  v5 = *(v1 + 8);
  if (v5)
  {
    v5(v6, PlayPlaybackInfoTimesInCMTime, *(v1 + 16));
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (v6)
  {
    CFRelease(v6);
  }

  CFRelease(*v1);
}

void mcs_SeekToTimeInternal(uint64_t *a1)
{
  v2 = OUTLINED_FUNCTION_3_5(a1);
  v6 = *(v1 + 8);
  CMTimeGetSeconds(&v6);
  if (*(v2 + 8))
  {
    v3 = 4294950554;
  }

  else if (*(v2 + 32))
  {
    v3 = MediaControlClient_DoScrubSet();
    if (v3)
    {
      APSLogErrorAt();
    }
  }

  else
  {
    v3 = 4294950553;
  }

  v4 = *(v1 + 40);
  if (v4)
  {
    v4(0, v3, *(v1 + 48));
  }

  v5 = *(v1 + 32);
  if (v5)
  {
    CFRelease(v5);
  }

  CFRelease(*v1);
}

void mcs_SetProxiedPropertyInternal(uint64_t *a1)
{
  v2 = OUTLINED_FUNCTION_3_5(a1);
  if (*(v2 + 8))
  {
    v3 = 4294950554;
  }

  else if (*(v2 + 32))
  {
    v3 = MediaControlClient_SetProperty();
    if (v3)
    {
      APSLogErrorAt();
    }
  }

  else
  {
    v3 = 4294950553;
  }

  v4 = *(v1 + 32);
  if (v4)
  {
    v4(0, v3, *(v1 + 40));
  }

  CFRelease(*(v1 + 8));
  v5 = *(v1 + 16);
  if (v5)
  {
    CFRelease(v5);
  }

  v6 = *(v1 + 24);
  if (v6)
  {
    CFRelease(v6);
  }

  v7 = *v1;

  CFRelease(v7);
}

void mcs_SetRateInternal(uint64_t *a1)
{
  v2 = OUTLINED_FUNCTION_3_5(a1);
  if (*(v2 + 8))
  {
    v3 = 4294950554;
  }

  else if (*(v2 + 32))
  {
    v3 = MediaControlClient_DoRate();
    if (v3)
    {
      APSLogErrorAt();
    }

    else
    {
      mcs_updateIsPlayingAndPostNotification(*v1, *(v1 + 8) != 0.0);
    }
  }

  else
  {
    v3 = 4294950553;
  }

  v4 = *(v1 + 16);
  if (v4)
  {
    v4(v3, *(v1 + 24));
  }

  v5 = *v1;

  CFRelease(v5);
}

void mcs_PerformRemoteActionInternal(uint64_t *a1)
{
  v2 = OUTLINED_FUNCTION_3_5(a1);
  v8 = 0;
  if (!*(v2 + 8))
  {
    if (*(v2 + 32))
    {
      v3 = MediaControlClient_DoAction();
      if (v3)
      {
        v7 = v3;
        APSLogErrorAt();
        v8 = v7;
      }
    }
  }

  v4 = *(v1 + 24);
  if (v4)
  {
    v4(v8, 0, *(v1 + 32));
  }

  v5 = *(v1 + 8);
  if (v5)
  {
    CFRelease(v5);
  }

  v6 = *(v1 + 16);
  if (v6)
  {
    CFRelease(v6);
  }

  CFRelease(*v1);
}

uint64_t mcs_SetEventHandlerInternal(uint64_t *a1)
{
  v2 = OUTLINED_FUNCTION_3_5(a1);
  if (*(v2 + 8))
  {
    return 4294950554;
  }

  *(v2 + 104) = *(v1 + 8);
  v3 = *(v1 + 24);
  if (v3)
  {
    v4 = *(v2 + 120);
    *(v2 + 120) = v3;
    CFRetain(v3);
    if (v4)
    {
      CFRelease(v4);
    }
  }

  return 0;
}

uint64_t mcs_CopyProperty_cold_1(_DWORD *a1)
{
  result = APSLogErrorAt();
  *a1 = -16741;
  return result;
}

uint64_t mcs_CopyProperty_cold_2(_DWORD *a1)
{
  result = APSLogErrorAt();
  *a1 = -12785;
  return result;
}

void mcs_InvalidateInternal_cold_1(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (*(a1 + 72))
  {
    CMNotificationCenterGetDefaultLocalCenter();
    OUTLINED_FUNCTION_1_3();
    FigNotificationCenterRemoveWeakListener();
  }

  MediaControlClient_Cancel();
  MediaControlClient_EnsureDisconnected();
  MediaControlClient_Invalidate();
  v6 = *(a1 + 96);
  if (v6)
  {
    CFRelease(v6);
    *(a1 + 96) = 0;
  }

  mcs_postConnectedStateChangedNotification(a2, 0, 0, 0);
}

uint64_t mcs_SeekToTime_cold_1(uint64_t a1, CMTime *a2, uint64_t a3)
{
  v4 = *(a1 + 40);
  time = *a2;
  Seconds = CMTimeGetSeconds(&time);
  return LogPrintF(&gLogCategory_EndpointPlaybackSessionMC, "OSStatus mcs_SeekToTime(FigEndpointPlaybackSessionRef, CMTime, CFDictionaryRef, FigEndpointPlaybackSessionSeekCompletion, void *)", 33554482, "[%{ptr}] Endpoint playback session %@ seek to time %.3f\n", a3, v4, *&Seconds);
}

uint64_t APMulticastProbeSenderRegister(uint64_t a1, const void *a2, uint64_t a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  if (*(DerivedStorage + 64))
  {
    APSLogErrorAt();
    v21 = 4294896148;
    goto LABEL_18;
  }

  if (gLogCategory_APMulticastProbeSender <= 50 && (gLogCategory_APMulticastProbeSender != -1 || OUTLINED_FUNCTION_4(&gLogCategory_APMulticastProbeSender)))
  {
    OUTLINED_FUNCTION_2_0();
    LogPrintF(v7, v8, v9, v10, a1, a2, a3);
  }

  v11 = APSCopyNetworkInterfaceType();
  if (v11)
  {
    v21 = v11;
LABEL_29:
    APSLogErrorAt();
    goto LABEL_18;
  }

  if (!FigCFEqual())
  {
    v21 = 4294960561;
    goto LABEL_18;
  }

  if (!*(DerivedStorage + 96))
  {
    Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    *(DerivedStorage + 96) = Mutable;
    if (!Mutable)
    {
      APSLogErrorAt();
      v21 = 4294960568;
      goto LABEL_18;
    }
  }

  v13 = multicastProbeSender_registerDeviceForAddressFamily(a1, a2, a3, 2);
  if (v13)
  {
    v21 = v13;
    goto LABEL_29;
  }

  v14 = multicastProbeSender_registerDeviceForAddressFamily(a1, a2, a3, 30);
  if (v14)
  {
    v21 = v14;
    goto LABEL_29;
  }

  if (!*(DerivedStorage + 112))
  {
    v15 = *(DerivedStorage + 56);
    v16 = dispatch_time(0, 60000000000);
    dispatch_source_set_timer(v15, v16, 0xDF8475800uLL, 0x47868C00uLL);
    *(DerivedStorage + 112) = 1;
    if (gLogCategory_APMulticastProbeSender <= 50 && (gLogCategory_APMulticastProbeSender != -1 || OUTLINED_FUNCTION_4(&gLogCategory_APMulticastProbeSender)))
    {
      OUTLINED_FUNCTION_2_0();
      LogPrintF(v17, v18, v19, v20, a1);
    }
  }

  v21 = 0;
LABEL_18:
  FigSimpleMutexUnlock();
  if (v21 && gLogCategory_APMulticastProbeSender <= 90 && (gLogCategory_APMulticastProbeSender != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APMulticastProbeSender, "OSStatus APMulticastProbeSenderRegister(CMBaseObjectRef, CFStringRef, CFStringRef)", 33554522, "[%{ptr}] Failed to register device for MC2UC detection.\n", a1);
  }

  return v21;
}

uint64_t APMulticastProbeSenderUpdateMC2UC(uint64_t a1, const void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  mach_absolute_time();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  if (*(DerivedStorage + 64))
  {
    APSLogErrorAt();
    v39 = 4294896148;
    goto LABEL_48;
  }

  if (!a2 || !*(DerivedStorage + 96))
  {
    APSLogErrorAt();
    v39 = 4294960591;
    goto LABEL_48;
  }

  if (gLogCategory_APMulticastProbeSender <= 40 && (gLogCategory_APMulticastProbeSender != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APMulticastProbeSender, "OSStatus APMulticastProbeSenderUpdateMC2UC(CMBaseObjectRef, CFStringRef, uint32_t, MC2UCFeatureStatus, int32_t, APMC2UCIPVersion)", 33554472, "[%{ptr}] APMulticastProbeSenderUpdateMC2UC deviceName=%@, probeBurstID=%u, IP ver=%u, mc2ucStatus=%d packetCount=%d\n", a1, a2, a3, a6, a4, a5);
  }

  if (!CFDictionaryContainsKey(*(DerivedStorage + 96), a2))
  {
    APSLogErrorAt();
    v39 = 4294960569;
    goto LABEL_48;
  }

  Value = CFDictionaryGetValue(*(DerivedStorage + 96), a2);
  if (a6 == 6)
  {
    if (!OUTLINED_FUNCTION_4_2(Value, @"MC2UCTxCountIPv6"))
    {
      goto LABEL_47;
    }

    OUTLINED_FUNCTION_3_6();
    OUTLINED_FUNCTION_5_1();
    v23 = FigCFDictionarySetInt32();
    v24 = OUTLINED_FUNCTION_4_2(v23, @"MC2UCStatusLatestIPv6");
    v25 = v24;
    if (v24 == a4 || *(DerivedStorage + 72) != a3)
    {
      goto LABEL_47;
    }

    v26 = OUTLINED_FUNCTION_14(v24, @"MC2UCStatusLatestIPv6");
    if (v25)
    {
      CFDictionaryGetInt64();
      v27 = OUTLINED_FUNCTION_8_1();
      OUTLINED_FUNCTION_13_1(v27);
      OUTLINED_FUNCTION_3_6();
      OUTLINED_FUNCTION_5_1();
      FigCFDictionarySetInt32();
      OUTLINED_FUNCTION_12_0();
      if (!(v21 ^ v22 | v20) || v28 == -1 && !OUTLINED_FUNCTION_4(&gLogCategory_APMulticastProbeSender))
      {
        goto LABEL_46;
      }

      UpTicksToMilliseconds();
      UpTicksToMilliseconds();
      OUTLINED_FUNCTION_11();
    }

    else
    {
      OUTLINED_FUNCTION_14(v26, @"MC2UCStatusIPv6");
      UpTicksToMilliseconds();
      FigCFDictionarySetInt32();
      OUTLINED_FUNCTION_12_0();
      if (!(v21 ^ v22 | v20) || v30 == -1 && !OUTLINED_FUNCTION_4(&gLogCategory_APMulticastProbeSender))
      {
        goto LABEL_46;
      }
    }

    OUTLINED_FUNCTION_2_0();
    LogPrintF(v35, v36, v37, v38);
  }

  else
  {
    if (a6 != 4)
    {
      goto LABEL_47;
    }

    if (!OUTLINED_FUNCTION_4_2(Value, @"MC2UCTxCount"))
    {
      goto LABEL_47;
    }

    OUTLINED_FUNCTION_3_6();
    OUTLINED_FUNCTION_5_1();
    v14 = FigCFDictionarySetInt32();
    v15 = OUTLINED_FUNCTION_4_2(v14, @"MC2UCStatusLatest");
    v16 = v15;
    if (v15 == a4 || *(DerivedStorage + 68) != a3)
    {
      goto LABEL_47;
    }

    v17 = OUTLINED_FUNCTION_14(v15, @"MC2UCStatusLatest");
    if (v16)
    {
      CFDictionaryGetInt64();
      v18 = OUTLINED_FUNCTION_8_1();
      OUTLINED_FUNCTION_13_1(v18);
      OUTLINED_FUNCTION_3_6();
      OUTLINED_FUNCTION_5_1();
      FigCFDictionarySetInt32();
      OUTLINED_FUNCTION_12_0();
      if (!(v21 ^ v22 | v20) || v19 == -1 && !OUTLINED_FUNCTION_4(&gLogCategory_APMulticastProbeSender))
      {
        goto LABEL_46;
      }

      UpTicksToMilliseconds();
      UpTicksToMilliseconds();
      OUTLINED_FUNCTION_11();
    }

    else
    {
      OUTLINED_FUNCTION_14(v17, @"MC2UCStatus");
      UpTicksToMilliseconds();
      FigCFDictionarySetInt32();
      OUTLINED_FUNCTION_12_0();
      if (!(v21 ^ v22 | v20) || v29 == -1 && !OUTLINED_FUNCTION_4(&gLogCategory_APMulticastProbeSender))
      {
        goto LABEL_46;
      }
    }

    OUTLINED_FUNCTION_2_0();
    LogPrintF(v31, v32, v33, v34);
  }

LABEL_46:
  FigCFDictionarySetUInt64();
LABEL_47:
  v39 = 0;
LABEL_48:
  FigSimpleMutexUnlock();
  return v39;
}

uint64_t APMulticastProbeSenderCopySSMGroupInfo(uint64_t a1, uint64_t a2, CFTypeRef *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  if (!a3)
  {
    goto LABEL_19;
  }

  v7 = 4294896148;
  if (*(DerivedStorage + 64))
  {
    goto LABEL_14;
  }

  v8 = APSCopyNetworkInterfaceType();
  if (v8)
  {
    v7 = v8;
    goto LABEL_14;
  }

  if (!FigCFEqual())
  {
    v7 = 4294960561;
    goto LABEL_14;
  }

  v9 = CMBaseObjectGetDerivedStorage();
  v16 = 0;
  FigSimpleMutexCheckIsLockedOnThisThread();
  if (*(v9 + 64))
  {
    APSLogErrorAt();
    goto LABEL_14;
  }

  if (!a2)
  {
LABEL_19:
    APSLogErrorAt();
    v7 = 4294960591;
    goto LABEL_14;
  }

  v10 = multicastProbeSender_constructMulticastGroupInfoForAddressFamily(a1, a2, 2, &v16);
  if (v10)
  {
    v7 = v10;
    if (v16)
    {
      CFRelease(v16);
    }
  }

  else
  {
    if (multicastProbeSender_constructMulticastGroupInfoForAddressFamily(a1, a2, 30, &v16) && gLogCategory_APMulticastProbeSender <= 50 && (gLogCategory_APMulticastProbeSender != -1 || OUTLINED_FUNCTION_4(&gLogCategory_APMulticastProbeSender)))
    {
      OUTLINED_FUNCTION_2_0();
      LogPrintF(v11, v12, v13, v14, a1);
    }

    v7 = 0;
    *a3 = v16;
  }

LABEL_14:
  FigSimpleMutexUnlock();
  return v7;
}

uint64_t multicastProbeSender_Invalidate(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  if (!*(DerivedStorage + 64))
  {
    *(DerivedStorage + 64) = 1;
    dispatch_source_cancel(*(DerivedStorage + 56));
    if (gLogCategory_APMulticastProbeSender <= 50 && (gLogCategory_APMulticastProbeSender != -1 || OUTLINED_FUNCTION_4(&gLogCategory_APMulticastProbeSender)))
    {
      OUTLINED_FUNCTION_2_0();
      LogPrintF(v3, v4, v5, v6, a1);
    }
  }

  FigSimpleMutexUnlock();
  return 0;
}

uint64_t multicastProbeSender_Finalize(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APMulticastProbeSender <= 50 && (gLogCategory_APMulticastProbeSender != -1 || OUTLINED_FUNCTION_4(&gLogCategory_APMulticastProbeSender)))
  {
    OUTLINED_FUNCTION_2_0();
    LogPrintF(v3, v4, v5, v6, a1);
  }

  multicastProbeSender_Invalidate(a1);
  v7 = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  CFDictionaryApplyBlock();
  CFDictionaryRemoveAllValues(*(v7 + 104));
  if (gLogCategory_APMulticastProbeSender <= 50 && (gLogCategory_APMulticastProbeSender != -1 || OUTLINED_FUNCTION_4(&gLogCategory_APMulticastProbeSender)))
  {
    OUTLINED_FUNCTION_2_0();
    LogPrintF(v8, v9, v10, v11, a1);
  }

  FigSimpleMutexUnlock();
  v12 = DerivedStorage[12];
  if (v12)
  {
    CFRelease(v12);
  }

  v13 = DerivedStorage[13];
  if (v13)
  {
    CFRelease(v13);
  }

  v14 = DerivedStorage[6];
  if (v14)
  {
    dispatch_release(v14);
  }

  v15 = DerivedStorage[7];
  if (v15)
  {
    dispatch_release(v15);
  }

  result = FigSimpleMutexDestroy();
  if (gLogCategory_APMulticastProbeSender <= 50)
  {
    if (gLogCategory_APMulticastProbeSender != -1 || (result = OUTLINED_FUNCTION_4(&gLogCategory_APMulticastProbeSender), result))
    {
      OUTLINED_FUNCTION_2_0();

      return LogPrintF(v17, v18, v19, v20);
    }
  }

  return result;
}

void __multicastProbeSender_createMC2UCProbingTimer_block_invoke(uint64_t a1)
{
  v1 = FigCFWeakReferenceHolderCopyReferencedObject();
  if (v1)
  {
    v2 = v1;
    CMBaseObjectGetDerivedStorage();
    FigSimpleMutexLock();
    multicastProbeSender_probeForMC2UC(v2, 2);
    multicastProbeSender_probeForMC2UC(v2, 30);
    FigSimpleMutexUnlock();

    CFRelease(v2);
  }
}

uint64_t multicastProbeSender_probeForMC2UC(uint64_t a1, uint64_t a2)
{
  v16 = 0;
  v17 = &v16;
  v18 = 0x2000000000;
  v19 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v15[0] = 0;
  v15[1] = v15;
  v15[2] = 0x2000000000;
  v15[3] = mach_absolute_time();
  FigSimpleMutexCheckIsLockedOnThisThread();
  if (*(DerivedStorage + 64))
  {
    APSLogErrorAt();
    v10 = v17;
    v11 = -71148;
    goto LABEL_23;
  }

  if (FigCFDictionaryGetCount())
  {
    if (a2 == 30)
    {
      v6 = (*(DerivedStorage + 72) + 1);
      *(DerivedStorage + 72) = v6;
    }

    else
    {
      if (a2 != 2)
      {
        if (gLogCategory_APMulticastProbeSender <= 90 && (gLogCategory_APMulticastProbeSender != -1 || _LogCategory_Initialize()))
        {
          OUTLINED_FUNCTION_4_0(&gLogCategory_APMulticastProbeSender, "OSStatus multicastProbeSender_probeForMC2UC(CMBaseObjectRef, sa_family_t)", v5, "[%{ptr}] Invalid addressFamily=%u!\n");
        }

        v10 = v17;
        v11 = -6705;
        goto LABEL_23;
      }

      v6 = (*(DerivedStorage + 68) + 1);
      *(DerivedStorage + 68) = v6;
    }

    if (gLogCategory_APMulticastProbeSender <= 40 && (gLogCategory_APMulticastProbeSender != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_APMulticastProbeSender, "OSStatus multicastProbeSender_probeForMC2UC(CMBaseObjectRef, sa_family_t)", 33554472, "[%{ptr}] probeForMC2UC: addressFamily=%u, probeBurstID=%u\n", a1, a2, v6);
    }

    Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    if (Mutable)
    {
      v8 = Mutable;
      FigCFDictionarySetUInt32();
      if (gLogCategory_APMulticastProbeSender <= 10 && (gLogCategory_APMulticastProbeSender != -1 || _LogCategory_Initialize()))
      {
        LogPrintF(&gLogCategory_APMulticastProbeSender, "CFDataRef multicastProbeSender_createPayloadForMC2UC(APMulticastProbeSenderRef, uint32_t)", 33554442, "[%{ptr}] [probeBurstID=%u] keysDict = %@\n", a1, v6, v8);
      }

      Data = CFPropertyListCreateData(0, v8, kCFPropertyListBinaryFormat_v1_0, 0, 0);
      CFRelease(v8);
      if (Data)
      {
        CFDictionaryApplyBlock();
        CFRelease(Data);
        goto LABEL_24;
      }
    }

    else
    {
      APSLogErrorAt();
      if (gLogCategory_APMulticastProbeSender <= 90 && (gLogCategory_APMulticastProbeSender != -1 || _LogCategory_Initialize()))
      {
        OUTLINED_FUNCTION_4_0(&gLogCategory_APMulticastProbeSender, "CFDataRef multicastProbeSender_createPayloadForMC2UC(APMulticastProbeSenderRef, uint32_t)", v14, "[%{ptr}] Failed to form msg data\n");
      }
    }

    APSLogErrorAt();
    v10 = v17;
    v11 = -6700;
LABEL_23:
    *(v10 + 6) = v11;
  }

LABEL_24:
  v12 = *(v17 + 6);
  _Block_object_dispose(v15, 8);
  _Block_object_dispose(&v16, 8);
  return v12;
}

void __multicastProbeSender_probeForMC2UC_block_invoke(uint64_t a1, uint64_t a2, const __CFDictionary *a3)
{
  v62[2] = *MEMORY[0x277D85DE8];
  v47 = 0;
  v48 = -1;
  v62[0] = 0;
  v62[1] = 0;
  memset(v46, 0, sizeof(v46));
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    goto LABEL_54;
  }

  if (!FigCFDictionaryGetValue())
  {
    goto LABEL_55;
  }

  v5 = CFStringGetOrCopyCStringUTF8();
  OUTLINED_FUNCTION_1_4(v5);
  if (*(v6 + 24))
  {
    APSLogErrorAt();
LABEL_54:
    v9 = 0;
    goto LABEL_51;
  }

  FigCFDictionaryGetIntIfPresent();
  if (!CFDictionaryGetValue(a3, @"MC2UCSSMGroupInfo"))
  {
LABEL_55:
    APSLogErrorAt();
    v9 = 0;
    v41 = *(*(a1 + 32) + 8);
    v42 = -6709;
    goto LABEL_50;
  }

  v7 = *(a1 + 84);
  if (v7 != 30)
  {
    if (v7 == 2)
    {
      SockAddr = APSCFDictionaryGetSockAddr();
      v9 = 0;
      OUTLINED_FUNCTION_1_4(SockAddr);
      if (*(v10 + 24) || BYTE1(v62[0]) != 2)
      {
        goto LABEL_51;
      }

      goto LABEL_12;
    }

    if (gLogCategory_APMulticastProbeSender <= 90)
    {
      if (gLogCategory_APMulticastProbeSender == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_49;
        }

        v7 = *(a1 + 84);
      }

      LogPrintF(&gLogCategory_APMulticastProbeSender, "OSStatus multicastProbeSender_probeForMC2UC(CMBaseObjectRef, sa_family_t)_block_invoke", 33554522, "[%{ptr}] Invalid addressFamily=%u!\n", *(a1 + 48), v7);
    }

LABEL_49:
    v9 = 0;
    v41 = *(*(a1 + 32) + 8);
    v42 = -6705;
LABEL_50:
    *(v41 + 24) = v42;
    goto LABEL_51;
  }

  v11 = APSCFDictionaryGetSockAddr();
  v9 = 0;
  OUTLINED_FUNCTION_1_4(v11);
  if (*(v12 + 24) || BYTE1(v46[0]) != 30)
  {
    goto LABEL_51;
  }

LABEL_12:
  Value = FigCFDictionaryGetValue();
  if (!Value)
  {
    goto LABEL_55;
  }

  v14 = Value;
  v15 = *(*(CMBaseObjectGetVTable() + 16) + 8);
  if (v15)
  {
    v16 = v15(v14);
  }

  else
  {
    v16 = 0;
  }

  Length = CFDataGetLength(*(a1 + 56));
  v9 = malloc_type_malloc(Length + v16, 0x100004077774924uLL);
  if (!v9)
  {
    APSLogErrorAt();
    v41 = *(*(a1 + 32) + 8);
    v42 = -6728;
    goto LABEL_50;
  }

  BytePtr = CFDataGetBytePtr(*(a1 + 56));
  v19 = CFDataGetLength(*(a1 + 56));
  v20 = CFDataGetLength(*(a1 + 56));
  v21 = CFDataGetLength(*(a1 + 56));
  v22 = *(*(CMBaseObjectGetVTable() + 16) + 16);
  if (v22)
  {
    v23 = v22(v14, 0, 0, BytePtr, v19, v9, v20, &v9[v21], v16);
  }

  else
  {
    v23 = 4294954514;
  }

  OUTLINED_FUNCTION_1_4(v23);
  if (!*(v24 + 24))
  {
    v25 = 0;
    v26 = 3;
    while (!send(v48, v9, Length + v16, 0))
    {
LABEL_40:
      if (!--v26)
      {
        if (v25)
        {
          v38 = *(a1 + 72);
          v39 = *(a1 + 84);
          v58 = 0;
          v59 = &v58;
          v60 = 0x2000000000;
          v61 = 0;
          DerivedStorage = CMBaseObjectGetDerivedStorage();
          FigSimpleMutexCheckIsLockedOnThisThread();
          if (*(DerivedStorage + 64))
          {
            APSLogErrorAt();
            *(v59 + 6) = -71148;
          }

          else
          {
            v49 = MEMORY[0x277D85DD0];
            v50 = 0x40000000;
            v51 = __multicastProbeSender_updateTxProbePacketsForClients_block_invoke;
            v52 = &unk_27849AF10;
            v57 = v39;
            v56 = v25;
            v54 = DerivedStorage;
            v55 = v38;
            v53 = &v58;
            CFDictionaryApplyBlock();
          }

          _Block_object_dispose(&v58, 8);
        }

        goto LABEL_51;
      }
    }

    v27 = *(a1 + 84);
    if (v27 == 30)
    {
      if (!v25)
      {
        OUTLINED_FUNCTION_10_0();
        *(v34 + 88) = v33;
      }

      if (gLogCategory_APMulticastProbeSender > 50 || gLogCategory_APMulticastProbeSender == -1 && !OUTLINED_FUNCTION_4(&gLogCategory_APMulticastProbeSender))
      {
        goto LABEL_39;
      }

      OUTLINED_FUNCTION_9_1();
      v32 = v46;
    }

    else
    {
      if (v27 != 2)
      {
        goto LABEL_39;
      }

      if (!v25)
      {
        OUTLINED_FUNCTION_10_0();
        *(v29 + 80) = v28;
      }

      if (gLogCategory_APMulticastProbeSender > 50 || gLogCategory_APMulticastProbeSender == -1 && !OUTLINED_FUNCTION_4(&gLogCategory_APMulticastProbeSender))
      {
        goto LABEL_39;
      }

      OUTLINED_FUNCTION_9_1();
      v32 = v62;
    }

    v44 = v31;
    v45 = v32;
    v43 = v30;
    OUTLINED_FUNCTION_2_0();
    LogPrintF(v35, v36, v37, "[%{ptr}] Sent a probe packet, burstID:%u, src:%##a dest:%##a on interface[%s] bytesSent=%d", v43, v44, v45);
LABEL_39:
    ++v25;
    goto LABEL_40;
  }

  APSLogErrorAt();
  if (gLogCategory_APMulticastProbeSender <= 90 && (gLogCategory_APMulticastProbeSender != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APMulticastProbeSender, "OSStatus multicastProbeSender_probeForMC2UC(CMBaseObjectRef, sa_family_t)_block_invoke", 33554522, "[%{ptr}] Failed to encrypt probing msg\n", *(a1 + 48));
  }

LABEL_51:
  free(v9);
  free(0);
}

uint64_t __APMulticastProbeSenderGetShared_block_invoke_cold_3(uint64_t *a1)
{
  v6 = *a1;
  OUTLINED_FUNCTION_2_0();
  return LogPrintF(v1, v2, v3, v4, v6);
}

uint64_t multicastProbeSender_registerDeviceForAddressFamily_cold_7(char a1, uint64_t a2, uint64_t a3)
{
  if (a1 == 30)
  {
    v3 = 6;
  }

  else
  {
    v3 = 0;
  }

  if (a1 == 2)
  {
    v4 = 4;
  }

  else
  {
    v4 = v3;
  }

  v12 = v4;
  OUTLINED_FUNCTION_2_0();
  return LogPrintF(v5, v6, v7, v8, a2, a3, v12);
}

uint64_t APMulticastProbeSenderUnregister_cold_1(int a1)
{
  v1 = "Unknown";
  v2 = "Enabled";
  v3 = "?";
  if (a1 == 2)
  {
    v3 = "Disabled";
  }

  if (a1 != 1)
  {
    v2 = v3;
  }

  if (a1)
  {
    v1 = v2;
  }

  v9 = v1;
  OUTLINED_FUNCTION_2_0();
  return LogPrintF(v4, v5, v6, v7, v9);
}

uint64_t APMulticastProbeSenderUnregister_cold_6(unint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = 100 * a2 / a1;
  }

  else
  {
    v2 = 0;
  }

  v8 = v2;
  OUTLINED_FUNCTION_2_0();
  return LogPrintF(v3, v4, v5, v6, v8);
}

uint64_t APMulticastProbeSenderUnregister_cold_7(unint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = 100 * a2 / a1;
  }

  else
  {
    v2 = 0;
  }

  v8 = v2;
  OUTLINED_FUNCTION_2_0();
  return LogPrintF(v3, v4, v5, v6, v8);
}

uint64_t APMulticastProbeSenderUnregister_cold_8(int a1)
{
  v1 = "Unknown";
  v2 = "Enabled";
  v3 = "?";
  if (a1 == 2)
  {
    v3 = "Disabled";
  }

  if (a1 != 1)
  {
    v2 = v3;
  }

  if (a1)
  {
    v1 = v2;
  }

  v9 = v1;
  OUTLINED_FUNCTION_2_0();
  return LogPrintF(v4, v5, v6, v7, v9);
}

uint64_t APMulticastProbeSenderUnregister_cold_13(unint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = 100 * a2 / a1;
  }

  else
  {
    v2 = 0;
  }

  v8 = v2;
  OUTLINED_FUNCTION_2_0();
  return LogPrintF(v3, v4, v5, v6, v8);
}

uint64_t APMulticastProbeSenderUnregister_cold_14(unint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = 100 * a2 / a1;
  }

  else
  {
    v2 = 0;
  }

  v8 = v2;
  OUTLINED_FUNCTION_2_0();
  return LogPrintF(v3, v4, v5, v6, v8);
}

uint64_t __multicastProbeSender_updateTxProbePacketsForClients_block_invoke_cold_1(uint64_t a1, unsigned __int8 *a2, uint64_t a3, uint64_t a4)
{
  v4 = *a2;
  if (v4 == 30)
  {
    v5 = 6;
  }

  else
  {
    v5 = 0;
  }

  if (v4 == 2)
  {
    v6 = 4;
  }

  else
  {
    v6 = v5;
  }

  v12 = *(a1 + 48);
  v13 = v6;
  OUTLINED_FUNCTION_2_0();
  return LogPrintF(v7, v8, v9, v10, v12, v13, a3, a4);
}

uint64_t AirPlayReceiverServicesServerStart()
{
  if (!FigGetCFPreferenceNumberWithDefault())
  {
    return 0;
  }

  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  CFDictionarySetValue(Mutable, *MEMORY[0x277CEA3A0], @"com.apple.airplay.receiverservices");
  v1 = APSXPCServerStart();
  if (v1)
  {
    APSLogErrorAt();
    if (!Mutable)
    {
      return v1;
    }

    goto LABEL_6;
  }

  if (IsAppleInternalBuild())
  {
    OUTLINED_FUNCTION_1_5();
    APSXPCServerAddCommandHandler();
  }

  if (Mutable)
  {
LABEL_6:
    CFRelease(Mutable);
  }

  return v1;
}

uint64_t AirPlayXPCServicesServerStart()
{
  v0 = AirPlayReceiverServicesServerStart();
  if (v0)
  {
    v4 = v0;
LABEL_13:
    APSLogErrorAt();
    return v4;
  }

  v1 = AirPlayDiscoveryBrokerXPCServicesServerStart();
  if (v1)
  {
    v4 = v1;
    goto LABEL_13;
  }

  started = FigBufferedAirPlayGlobalRoutingRegistryStartServer();
  if (started)
  {
    v4 = started;
    goto LABEL_13;
  }

  v3 = APCarPlayAVVCServerInit();
  if (v3)
  {
    v4 = v3;
    goto LABEL_13;
  }

  if (!MEMORY[0x223DAEBE0]())
  {
    APDemoManagerStart();
    APSRegisterReceiverAppLauncher();
  }

  return 0;
}

uint64_t AirPlayStartEndpointManagerXPCServiceIfNeeded()
{
  v10 = 0;
  value = 0;
  v9 = 0;
  if (!FigServer_IsAirplayd())
  {
    return 0;
  }

  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (!Mutable)
  {
    APSLogErrorAt();
    return 0;
  }

  v1 = Mutable;
  v2 = APGetEndpointManager(&value);
  if (v2)
  {
    started = v2;
    APSLogErrorAt();
  }

  else
  {
    CFDictionarySetValue(v1, *MEMORY[0x277CC0C68], value);
    APGetEndpointManagerCarPlay(&v10);
    FigCFDictionarySetValue();
    SPGetEndpointManager(&v9);
    FigCFDictionarySetValue();
    FigEndpointManagerForNeroGetShared();
    FigCFDictionarySetValue();
    started = FigEndpointManagerStartServerEx();
    if (started)
    {
      APSLogErrorAt();
      if (gLogCategory_AirPlayServices <= 90 && (gLogCategory_AirPlayServices != -1 || OUTLINED_FUNCTION_4_3(&gLogCategory_AirPlayServices)))
      {
        OUTLINED_FUNCTION_2_1();
        LogPrintF(v5, v6, v7, v8);
      }
    }
  }

  CFRelease(v1);
  return started;
}

uint64_t AirPlayAutoconnectServicesServerStart()
{
  if (!FigGetCFPreferenceNumberWithDefault())
  {
    return 0;
  }

  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  CFDictionarySetValue(Mutable, *MEMORY[0x277CEA3A0], @"com.apple.airplay.autoconnect.services.allow");
  v1 = APSXPCServerStart();
  if (v1)
  {
    APSLogErrorAt();
    if (!Mutable)
    {
      return v1;
    }

    goto LABEL_6;
  }

  if (IsAppleInternalBuild())
  {
    OUTLINED_FUNCTION_1_5();
    APSXPCServerAddCommandHandler();
  }

  if (Mutable)
  {
LABEL_6:
    CFRelease(Mutable);
  }

  return v1;
}

uint64_t AirPlayStartEndpointXPCService()
{
  v0 = MEMORY[0x223DAEBE0]();
  IsAirplayd = FigServer_IsAirplayd();
  started = 0;
  if (v0)
  {
    if (IsAirplayd)
    {
      started = FigEndpointStartServerEx();
      if (started)
      {
        APSLogErrorAt();
        if (gLogCategory_AirPlayServices <= 90 && (gLogCategory_AirPlayServices != -1 || OUTLINED_FUNCTION_4_3(&gLogCategory_AirPlayServices)))
        {
          OUTLINED_FUNCTION_2_1();
          LogPrintF(v4, v5, v6, v7, "com.apple.airplay.endpoint.xpc");
        }
      }
    }
  }

  return started;
}

uint64_t AirPlayXPCServicesStart_cold_1()
{
  OUTLINED_FUNCTION_3_7();
  result = APSLogErrorAt();
  if (gLogCategory_AirPlayServices <= 90)
  {
    if (gLogCategory_AirPlayServices != -1 || (result = OUTLINED_FUNCTION_4_3(&gLogCategory_AirPlayServices), result))
    {
      OUTLINED_FUNCTION_2_1();
      result = LogPrintF(v3, v4, v5, v6);
    }
  }

  *v0 = v1;
  return result;
}

uint64_t AirPlayXPCServicesStart_cold_2()
{
  OUTLINED_FUNCTION_3_7();
  result = APSLogErrorAt();
  if (gLogCategory_AirPlayServices <= 90)
  {
    if (gLogCategory_AirPlayServices != -1 || (result = OUTLINED_FUNCTION_4_3(&gLogCategory_AirPlayServices), result))
    {
      OUTLINED_FUNCTION_2_1();
      result = LogPrintF(v3, v4, v5, v6);
    }
  }

  *v0 = v1;
  return result;
}

uint64_t AirPlayXPCServicesStart_cold_3()
{
  OUTLINED_FUNCTION_3_7();
  result = APSLogErrorAt();
  if (gLogCategory_AirPlayServices <= 90)
  {
    if (gLogCategory_AirPlayServices != -1 || (result = OUTLINED_FUNCTION_4_3(&gLogCategory_AirPlayServices), result))
    {
      OUTLINED_FUNCTION_2_1();
      result = LogPrintF(v3, v4, v5, v6);
    }
  }

  *v0 = v1;
  return result;
}

uint64_t AirPlayXPCServicesStart_cold_4()
{
  OUTLINED_FUNCTION_3_7();
  result = APSLogErrorAt();
  if (gLogCategory_AirPlayServices <= 90)
  {
    if (gLogCategory_AirPlayServices != -1 || (result = OUTLINED_FUNCTION_4_3(&gLogCategory_AirPlayServices), result))
    {
      OUTLINED_FUNCTION_2_1();
      result = LogPrintF(v3, v4, v5, v6);
    }
  }

  *v0 = v1;
  return result;
}

uint64_t AirPlayXPCServicesStart_cold_5()
{
  OUTLINED_FUNCTION_3_7();
  result = APSLogErrorAt();
  if (gLogCategory_AirPlayServices <= 90)
  {
    if (gLogCategory_AirPlayServices != -1 || (result = OUTLINED_FUNCTION_4_3(&gLogCategory_AirPlayServices), result))
    {
      OUTLINED_FUNCTION_2_1();
      result = LogPrintF(v3, v4, v5, v6);
    }
  }

  *v0 = v1;
  return result;
}

uint64_t AirPlayXPCServicesStart_cold_6()
{
  OUTLINED_FUNCTION_3_7();
  result = APSLogErrorAt();
  if (gLogCategory_AirPlayServices <= 90)
  {
    if (gLogCategory_AirPlayServices != -1 || (result = OUTLINED_FUNCTION_4_3(&gLogCategory_AirPlayServices), result))
    {
      OUTLINED_FUNCTION_2_1();
      result = LogPrintF(v3, v4, v5, v6);
    }
  }

  *v0 = v1;
  return result;
}

uint64_t AirPlayXPCServicesStart_cold_7()
{
  OUTLINED_FUNCTION_3_7();
  result = APSLogErrorAt();
  if (gLogCategory_AirPlayServices <= 90)
  {
    if (gLogCategory_AirPlayServices != -1 || (result = OUTLINED_FUNCTION_4_3(&gLogCategory_AirPlayServices), result))
    {
      OUTLINED_FUNCTION_2_1();
      result = LogPrintF(v3, v4, v5, v6);
    }
  }

  *v0 = v1;
  return result;
}

uint64_t AirPlayXPCServicesStart_cold_8()
{
  OUTLINED_FUNCTION_3_7();
  result = APSLogErrorAt();
  if (gLogCategory_AirPlayServices <= 90)
  {
    if (gLogCategory_AirPlayServices != -1 || (result = OUTLINED_FUNCTION_4_3(&gLogCategory_AirPlayServices), result))
    {
      OUTLINED_FUNCTION_2_1();
      result = LogPrintF(v3, v4, v5, v6);
    }
  }

  *v0 = v1;
  return result;
}

uint64_t AirPlayXPCServicesStart_cold_13(char a1, _DWORD *a2)
{
  v4 = AirPlayReceiverServicesServerStart();
  if (v4)
  {
    LODWORD(v13) = v4;
    result = APSLogErrorAt();
    if (gLogCategory_AirPlayServices > 90)
    {
      goto LABEL_20;
    }

    if (gLogCategory_AirPlayServices == -1)
    {
      result = OUTLINED_FUNCTION_4_3(&gLogCategory_AirPlayServices);
      if (!result)
      {
        goto LABEL_20;
      }
    }

LABEL_26:
    OUTLINED_FUNCTION_2_1();
    result = LogPrintF(v18, v19, v20, v21);
    goto LABEL_20;
  }

  v5 = AirPlayAutoconnectServicesServerStart();
  if (v5)
  {
    LODWORD(v13) = v5;
    result = APSLogErrorAt();
    if (gLogCategory_AirPlayServices > 90)
    {
      goto LABEL_20;
    }

    if (gLogCategory_AirPlayServices == -1)
    {
      result = OUTLINED_FUNCTION_4_3(&gLogCategory_AirPlayServices);
      if (!result)
      {
        goto LABEL_20;
      }
    }

    goto LABEL_26;
  }

  if (a1)
  {
    if (gLogCategory_AirPlayServices <= 50 && (gLogCategory_AirPlayServices != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_AirPlayServices, "OSStatus AirPlayXPCServicesStart(void)", 33554482, "Notifying MX process that AirPlay Sender System process has launched");
    }

    v6 = APAirPlayAgentServicesClientSendCommand(@"senderSystemProcessLaunched");
    if (v6)
    {
      if (gLogCategory_AirPlayServices <= 90)
      {
        v7 = v6;
        if (gLogCategory_AirPlayServices != -1 || OUTLINED_FUNCTION_4_3(&gLogCategory_AirPlayServices))
        {
          OUTLINED_FUNCTION_2_1();
          LogPrintF(v8, v9, v10, v11, @"senderSystemProcessLaunched", v7);
        }
      }
    }
  }

  result = IsAppleTV();
  if (!result)
  {
    goto LABEL_19;
  }

  result = APSLocalAudioCapabilityMonitorGetSharedInstance();
  v13 = result;
  if (result)
  {
    if (gLogCategory_AirPlayServices <= 90)
    {
      if (gLogCategory_AirPlayServices != -1 || (result = OUTLINED_FUNCTION_4_3(&gLogCategory_AirPlayServices), result))
      {
        OUTLINED_FUNCTION_2_1();
        result = LogPrintF(v14, v15, v16, v17, v13);
      }
    }

LABEL_19:
    LODWORD(v13) = 0;
  }

LABEL_20:
  *a2 = v13;
  return result;
}

void AirPlayStartServicesInMXProcess_cold_1()
{
  OUTLINED_FUNCTION_3_7();
  if (gLogCategory_AirPlayServices <= 90 && (gLogCategory_AirPlayServices != -1 || OUTLINED_FUNCTION_4_3(&gLogCategory_AirPlayServices)))
  {
    OUTLINED_FUNCTION_2_1();
    LogPrintF(v2, v3, v4, v5);
  }

  *v0 = v1;
}

uint64_t AirPlayStartServicesInMXProcess_cold_2(uint64_t result, _DWORD *a2)
{
  v3 = result;
  if (gLogCategory_AirPlayServices <= 90)
  {
    if (gLogCategory_AirPlayServices != -1 || (result = OUTLINED_FUNCTION_4_3(&gLogCategory_AirPlayServices), result))
    {
      OUTLINED_FUNCTION_2_1();
      result = LogPrintF(v4, v5, v6, v7, v3);
    }
  }

  *a2 = v3;
  return result;
}

uint64_t compsource_Invalidate(const void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!*DerivedStorage)
  {
    v3 = DerivedStorage;
    if (gLogCategory_APAudioSourceCompression <= 30 && (gLogCategory_APAudioSourceCompression != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_APAudioSourceCompression, "OSStatus compsource_Invalidate(CMBaseObjectRef)", 33554462, "APAudioSourceCompression %p invalidating.\n", a1);
    }

    *v3 = 1;
    compsource_ensureAudioConverterDestroyed(a1);
    v4 = *(v3 + 6);
    if (v4)
    {
      CFRelease(v4);
      *(v3 + 6) = 0;
    }
  }

  return 0;
}

uint64_t compsource_Resume(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APAudioSourceCompression <= 30 && (gLogCategory_APAudioSourceCompression != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APAudioSourceCompression, "OSStatus compsource_Resume(FigEndpointAudioSourceRef)", 33554462, "Resuming compression source.\n");
  }

  v2 = CMBaseObjectGetDerivedStorage();
  v36 = 0;
  cf[0] = 0;
  cf[1] = 0;
  v34 = 0;
  v3 = (v2 + 104);
  if (!*(v2 + 104))
  {
    v4 = v2;
    v5 = *(v2 + 48);
    v6 = *(*(CMBaseObjectGetVTable() + 16) + 96);
    if (!v6)
    {
      v19 = 4294954514;
      goto LABEL_17;
    }

    v7 = v6(v5, v4 + 56);
    if (v7)
    {
      v19 = v7;
      goto LABEL_17;
    }

    v8 = AudioConverterNew((v4 + 56), (v4 + 8), v3);
    if (v8)
    {
      v19 = v8;
      goto LABEL_17;
    }

    CMBaseObject = FigEndpointAudioSourceGetCMBaseObject();
    v11 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v11)
    {
      v11(CMBaseObject, *MEMORY[0x277CC0A58], 0, cf);
      if (cf[0])
      {
        RichestDecodableFormatAndChannelLayout = CMAudioFormatDescriptionGetRichestDecodableFormatAndChannelLayout();
        if (!v36 || RichestDecodableFormatAndChannelLayout)
        {
          if (RichestDecodableFormatAndChannelLayout && gLogCategory_APAudioSourceCompression <= 90 && (gLogCategory_APAudioSourceCompression != -1 || _LogCategory_Initialize()))
          {
            LogPrintF(&gLogCategory_APAudioSourceCompression, "OSStatus compsource_ensureAudioConverterCreated(FigEndpointAudioSourceRef)", 33554522, "### [%{ptr}] Failed to get the richest format");
          }
        }

        else
        {
          v32 = 0u;
          v33 = 0u;
          LODWORD(v32) = *v36;
          v13 = OUTLINED_FUNCTION_2_5();
          v15 = AudioConverterSetProperty(v13, 0x69636C20u, 0x20u, v14);
          if (v15)
          {
            v19 = v15;
            goto LABEL_17;
          }

          v16 = OUTLINED_FUNCTION_2_5();
          v18 = AudioConverterSetProperty(v16, 0x6F636C20u, 0x20u, v17);
          if (v18)
          {
            v19 = v18;
LABEL_17:
            APSLogErrorAt();
            goto LABEL_42;
          }
        }
      }
    }

    if (*(v4 + 96))
    {
      LODWORD(v32) = *(v4 + 96);
      v20 = OUTLINED_FUNCTION_2_5();
      v22 = AudioConverterSetProperty(v20, 0x70616B6Cu, 4u, v21);
      if (v22)
      {
        v19 = v22;
        goto LABEL_17;
      }
    }

    if (*(v4 + 136))
    {
      LODWORD(v32) = *(v4 + 136);
      v23 = OUTLINED_FUNCTION_2_5();
      v25 = AudioConverterSetProperty(v23, 0x76627262u, 4u, v24);
      if (v25)
      {
        v19 = v25;
        goto LABEL_17;
      }

      if (gLogCategory_APAudioSourceCompression <= 50 && (gLogCategory_APAudioSourceCompression != -1 || _LogCategory_Initialize()))
      {
        OUTLINED_FUNCTION_2(&gLogCategory_APAudioSourceCompression, "OSStatus compsource_ensureAudioConverterCreated(FigEndpointAudioSourceRef)", v10, "[%{ptr}] variable Bitrate = %d ");
      }
    }

    if (*(v4 + 144) != -1)
    {
      LODWORD(v32) = *(v4 + 144);
      v26 = OUTLINED_FUNCTION_2_5();
      v28 = AudioConverterSetProperty(v26, 0x63647175u, 4u, v27);
      if (v28)
      {
        v19 = v28;
        goto LABEL_17;
      }

      if (gLogCategory_APAudioSourceCompression <= 50 && (gLogCategory_APAudioSourceCompression != -1 || _LogCategory_Initialize()))
      {
        OUTLINED_FUNCTION_2(&gLogCategory_APAudioSourceCompression, "OSStatus compsource_ensureAudioConverterCreated(FigEndpointAudioSourceRef)", v10, "[%{ptr}] codec quality = 0x%x ");
      }
    }

    if (gLogCategory_APAudioSourceCompression <= 50 && (gLogCategory_APAudioSourceCompression != -1 || _LogCategory_Initialize()))
    {
      OUTLINED_FUNCTION_2(&gLogCategory_APAudioSourceCompression, "OSStatus compsource_ensureAudioConverterCreated(FigEndpointAudioSourceRef)", v10, "[%{ptr}] %###s %{asbd} -> %{asbd}\n");
    }
  }

  v19 = 0;
LABEL_42:
  if (cf[0])
  {
    CFRelease(cf[0]);
  }

  if (v19)
  {
    goto LABEL_49;
  }

  v29 = *(DerivedStorage + 48);
  v30 = *(*(CMBaseObjectGetVTable() + 16) + 8);
  if (!v30)
  {
    v19 = 4294954514;
    goto LABEL_49;
  }

  v19 = v30(v29);
  if (v19)
  {
LABEL_49:
    APSLogErrorAt();
    return v19;
  }

  *(DerivedStorage + 128) = 0;
  return v19;
}

void *compsource_audioConverterInputCallBack_cold_1(void *result, void *a2, _DWORD *a3)
{
  if (gLogCategory_APAudioSourceCompression <= 30)
  {
    v5 = result;
    if (gLogCategory_APAudioSourceCompression != -1 || (result = _LogCategory_Initialize(), result))
    {
      result = LogPrintF(&gLogCategory_APAudioSourceCompression, "OSStatus compsource_audioConverterInputCallBack(AudioConverterRef, UInt32 *, AudioBufferList *, AudioStreamPacketDescription **, void *)", 33554462, "[%{ptr}] Not enough data returned from source [%{ptr}]", *v5, *a2);
    }
  }

  *a3 = -16774;
  return result;
}

uint64_t epp_DumpHierarchy(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = epp_copyInner(a1);
  v10 = (*(a5 + 16))(a5, a3, "EndpointPlus:[%{ptr}] Parent:[%{ptr}]\n", a1, a2);
  if (!v10)
  {
    APSHierarchyReporterProtocolGetProtocolID();
    if (!CMBaseObjectImplementsProtocol())
    {
      v15 = 0;
      goto LABEL_14;
    }

    APSHierarchyReporterProtocolGetProtocolID();
    ProtocolVTable = CMBaseObjectGetProtocolVTable();
    if (ProtocolVTable && (v12 = *(ProtocolVTable + 16)) != 0)
    {
      v13 = *(v12 + 8);
      if (v13)
      {
        v14 = v13(v9, a1, a3 + 1, 0, a5);
        v15 = v14;
        if (v14 != -12782 && v14 != -12788)
        {
LABEL_13:
          if (!v15)
          {
            goto LABEL_14;
          }

          goto LABEL_20;
        }
      }

      else
      {
        v15 = 4294954514;
      }
    }

    else
    {
      v15 = 4294954508;
    }

    v15 = (*(a5 + 16))(a5, a3 + 1, "[Error] Object:[%{ptr}]%?s%?''@ cannot be dumped (error %#m) Parent:[%{ptr}]\n", v9, 0, " ", 0, 0, v15, a1);
    goto LABEL_13;
  }

  v15 = v10;
LABEL_20:
  APSLogErrorAt();
LABEL_14:
  if (v9)
  {
    CFRelease(v9);
  }

  return v15;
}

void epp_activationCallback(int a1, uint64_t a2, uint64_t a3, uint64_t a4, CFTypeRef *a5)
{
  v9 = a5[1];
  v10 = a5[2];
  v11 = a5[3];
  if (gLogCategory_APEndpointPlus <= 40 && (gLogCategory_APEndpointPlus != -1 || OUTLINED_FUNCTION_13_0(&gLogCategory_APEndpointPlus)))
  {
    OUTLINED_FUNCTION_11_0();
    OUTLINED_FUNCTION_6(&gLogCategory_APEndpointPlus, "void epp_activationCallback(FigEndpointRef, FigEndpointFeatures, uint64_t, OSStatus, void *)", v12, "[%{ptr}] Activation callback with inner [%{ptr}] context %@ forward? %s");
  }

  if (v10)
  {
    v10(v9, a2, a3, a4, v11);
  }

  if (*a5)
  {
    CFRelease(*a5);
  }

  v13 = a5[1];
  if (v13)
  {
    CFRelease(v13);
  }

  free(a5);
}

void epp_completionCallback(int a1, uint64_t a2, CFTypeRef *a3)
{
  v5 = a3[1];
  v6 = a3[2];
  v7 = a3[3];
  if (gLogCategory_APEndpointPlus <= 40 && (gLogCategory_APEndpointPlus != -1 || OUTLINED_FUNCTION_13_0(&gLogCategory_APEndpointPlus)))
  {
    OUTLINED_FUNCTION_11_0();
    OUTLINED_FUNCTION_6(&gLogCategory_APEndpointPlus, "void epp_completionCallback(FigEndpointRef, OSStatus, void *)", v8, "[%{ptr}] Completion callback with inner [%{ptr}] context %@ forward? %s");
  }

  if (v6)
  {
    v6(v5, a2, v7);
  }

  if (*a3)
  {
    CFRelease(*a3);
  }

  v9 = a3[1];
  if (v9)
  {
    CFRelease(v9);
  }

  free(a3);
}

void epp_sendCommandCallback(int a1, uint64_t a2, uint64_t a3, CFTypeRef *a4)
{
  v7 = a4[1];
  v8 = a4[2];
  v9 = a4[3];
  if (gLogCategory_APEndpointPlus <= 40 && (gLogCategory_APEndpointPlus != -1 || OUTLINED_FUNCTION_13_0(&gLogCategory_APEndpointPlus)))
  {
    OUTLINED_FUNCTION_11_0();
    OUTLINED_FUNCTION_6(&gLogCategory_APEndpointPlus, "void epp_sendCommandCallback(FigEndpointExtendedRef, OSStatus, CFDictionaryRef, void *)", v10, "[%{ptr}] Send Command callback with inner [%{ptr}] context %@ forward? %s");
  }

  if (v8)
  {
    v8(v7, a2, a3, v9);
  }

  if (*a4)
  {
    CFRelease(*a4);
  }

  v11 = a4[1];
  if (v11)
  {
    CFRelease(v11);
  }

  free(a4);
}

void epp_sendDataCallback(int a1, uint64_t a2, uint64_t a3, CFTypeRef *a4)
{
  v7 = a4[1];
  v8 = a4[2];
  v9 = a4[3];
  if (gLogCategory_APEndpointPlus <= 40 && (gLogCategory_APEndpointPlus != -1 || OUTLINED_FUNCTION_13_0(&gLogCategory_APEndpointPlus)))
  {
    OUTLINED_FUNCTION_11_0();
    OUTLINED_FUNCTION_6(&gLogCategory_APEndpointPlus, "void epp_sendDataCallback(FigEndpointExtendedRef, CFStringRef, OSStatus, void *)", v10, "[%{ptr}] Send Data callback with inner [%{ptr}] context %@ forward? %s");
  }

  if (v8)
  {
    v8(v7, a2, a3, v9);
  }

  if (*a4)
  {
    CFRelease(*a4);
  }

  v11 = a4[1];
  if (v11)
  {
    CFRelease(v11);
  }

  free(a4);
}

uint64_t epp_handleInnerNotification_cold_1(uint64_t a1)
{
  if (IsAppleInternalBuild() && gLogCategory_APEndpointPlus == -1)
  {
    _LogCategory_Initialize();
  }

  return OUTLINED_FUNCTION_6(&gLogCategory_APEndpointPlus, "void epp_handleInnerNotification(CMNotificationCenterRef, const void *, CFStringRef, const void *, CFTypeRef)", v1, "[%{ptr}] Forward inner notification %@%?{end} payload %@");
}

void epp_EnsureAuthorizedWithCompletionCallback_cold_1(uint64_t a1, void *a2)
{
  v2 = OUTLINED_FUNCTION_7_0(a1, a2);
  *(v3 + 8) = 3221225472;
  *(v3 + 16) = __epp_EnsureAuthorizedWithCompletionCallback_block_invoke_2;
  *(v3 + 24) = &__block_descriptor_52_e5_v8__0l;
  *(v3 + 48) = -17606;
  *(v3 + 32) = 0;
  *(v3 + 40) = v4;
  dispatch_async(v2, v3);
}

uint64_t __epp_postNotificationAsync_block_invoke_cold_1(uint64_t a1)
{
  if (IsAppleInternalBuild() && gLogCategory_APEndpointPlus == -1)
  {
    _LogCategory_Initialize();
  }

  return OUTLINED_FUNCTION_6(&gLogCategory_APEndpointPlus, "void epp_postNotificationAsync(FigEndpointRef, CFStringRef, CFDictionaryRef)_block_invoke", v1, "[%{ptr}] Posting %@%?{end} payload %@");
}

void epp_SendCommand_cold_1(uint64_t a1, void *a2)
{
  v2 = OUTLINED_FUNCTION_7_0(a1, a2);
  *(v3 + 8) = 3221225472;
  *(v3 + 16) = __epp_SendCommand_block_invoke_2;
  *(v3 + 24) = &__block_descriptor_52_e5_v8__0l;
  *(v3 + 48) = -17606;
  *(v3 + 32) = 0;
  *(v3 + 40) = v4;
  dispatch_async(v2, v3);
}

double epp_delegate_handleAuthRequired_cold_3(uint64_t a1, uint64_t *a2)
{
  APSLogErrorAt();

  FigSimpleMutexUnlock();
  return result;
}

uint64_t epp_updateDescription_cold_2(uint64_t a1, int *a2)
{
  ClusterLeaderOrAny = epp_getClusterLeaderOrAny(a1);
  if (!ClusterLeaderOrAny)
  {
    v6 = -6709;
    goto LABEL_5;
  }

  result = epp_updateDescriptionFromEndpoint(a1, ClusterLeaderOrAny);
  v6 = result;
  if (result)
  {
LABEL_5:
    result = APSLogErrorAt();
  }

  *a2 = v6;
  return result;
}

uint64_t APEndpointStreamAudioHoseAggregateRegisterWithParentRegistrar(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  if (*(DerivedStorage + 56))
  {
    v8 = 0;
    goto LABEL_13;
  }

  if (gLogCategory_APEndpointStreamAudioHoseAggregate <= 50 && (gLogCategory_APEndpointStreamAudioHoseAggregate != -1 || OUTLINED_FUNCTION_4(&gLogCategory_APEndpointStreamAudioHoseAggregate)))
  {
    OUTLINED_FUNCTION_2(&gLogCategory_APEndpointStreamAudioHoseAggregate, "OSStatus APEndpointStreamAudioHoseAggregateRegisterWithParentRegistrar(APEndpointStreamAudioHoseAggregateRef)", v3, "[%{ptr}] Register Self with Parent Registrar %{ptr}\n");
  }

  v4 = *(DerivedStorage + 40);
  APSEndpointStreamAudioHoseRegistrarProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (!ProtocolVTable || (v6 = *(ProtocolVTable + 16)) == 0)
  {
    v8 = 4294954508;
    goto LABEL_12;
  }

  v7 = *(v6 + 8);
  if (!v7)
  {
    v8 = 4294954514;
    goto LABEL_12;
  }

  v8 = v7(v4, a1, 0, DerivedStorage + 48);
  if (v8)
  {
LABEL_12:
    APSLogErrorAt();
    goto LABEL_13;
  }

  *(DerivedStorage + 56) = 1;
LABEL_13:
  FigSimpleMutexUnlock();
  return v8;
}

uint64_t APEndpointStreamAudioHoseAggregateDeregisterWithParentRegistrar(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v4 = DerivedStorage;
  v5 = *(DerivedStorage + 8);
  if (v5)
  {
    FigSimpleMutexLock();
    if (!*(v4 + 56))
    {
      FigSimpleMutexUnlock();
      return 0;
    }
  }

  else if (!*(DerivedStorage + 56))
  {
    return 0;
  }

  if (gLogCategory_APEndpointStreamAudioHoseAggregate <= 50 && (gLogCategory_APEndpointStreamAudioHoseAggregate != -1 || OUTLINED_FUNCTION_4(&gLogCategory_APEndpointStreamAudioHoseAggregate)))
  {
    OUTLINED_FUNCTION_2(&gLogCategory_APEndpointStreamAudioHoseAggregate, "OSStatus APEndpointStreamAudioHoseAggregateDeregisterWithParentRegistrar(APEndpointStreamAudioHoseAggregateRef)", v3, "[%{ptr}] Deregister Self with Parent Registrar %{ptr}\n");
  }

  v6 = *(v4 + 40);
  *(v4 + 40) = 0;
  *(v4 + 48) = 0;
  *(v4 + 56) = 0;
  if (v5)
  {
    FigSimpleMutexUnlock();
  }

  APSEndpointStreamAudioHoseRegistrarProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (ProtocolVTable)
  {
    v8 = *(ProtocolVTable + 16);
    if (v8)
    {
      v9 = *(v8 + 16);
      if (v9)
      {
        v9(v6, a1, 0);
      }
    }
  }

  if (v6)
  {
    CFRelease(v6);
  }

  return 0;
}

uint64_t hoseAggregate_Invalidate(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v4 = DerivedStorage;
  v5 = *(DerivedStorage + 8);
  if (v5)
  {
    FigSimpleMutexLock();
    if (*v4)
    {
      FigSimpleMutexUnlock();
      return 0;
    }
  }

  else if (*DerivedStorage)
  {
    return 0;
  }

  *v4 = 1;
  if (gLogCategory_APEndpointStreamAudioHoseAggregate <= 50 && (gLogCategory_APEndpointStreamAudioHoseAggregate != -1 || OUTLINED_FUNCTION_4(&gLogCategory_APEndpointStreamAudioHoseAggregate)))
  {
    OUTLINED_FUNCTION_2(&gLogCategory_APEndpointStreamAudioHoseAggregate, "OSStatus hoseAggregate_Invalidate(CMBaseObjectRef)", v3, "[%{ptr}] Invalidate\n");
  }

  v6 = *(v4 + 24);
  if (v6)
  {
    CFRelease(v6);
    *(v4 + 24) = 0;
  }

  if (v5)
  {
    FigSimpleMutexUnlock();
  }

  APEndpointStreamAudioHoseAggregateDeregisterWithParentRegistrar(a1);
  return 0;
}

void hoseAggregate_Finalize(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APEndpointStreamAudioHoseAggregate <= 50 && (gLogCategory_APEndpointStreamAudioHoseAggregate != -1 || OUTLINED_FUNCTION_4(&gLogCategory_APEndpointStreamAudioHoseAggregate)))
  {
    OUTLINED_FUNCTION_2(&gLogCategory_APEndpointStreamAudioHoseAggregate, "void hoseAggregate_Finalize(CMBaseObjectRef)", v2, "[%{ptr}] Finalize\n");
  }

  hoseAggregate_Invalidate(a1);
  v4 = DerivedStorage[4];
  if (v4)
  {
    CFRelease(v4);
  }

  FigSimpleMutexDestroy();
  DerivedStorage[1] = 0;
  v5 = DerivedStorage[2];
  if (v5)
  {
    dispatch_release(v5);
  }

  DerivedStorage[2] = 0;
}

uint64_t hoseAggregate_audioHoseSendAudio(uint64_t a1)
{
  if (*CMBaseObjectGetDerivedStorage())
  {
    return 0;
  }

  if (!*(*(CMBaseObjectGetVTable() + 16) + 48))
  {
    v3 = 4294954514;
LABEL_6:
    APSLogErrorAt();
    return v3;
  }

  v1 = OUTLINED_FUNCTION_1_7();
  v3 = v2(v1);
  if (v3)
  {
    goto LABEL_6;
  }

  return v3;
}

uint64_t hoseAggregate_audioHoseSendAudioBatch(uint64_t a1)
{
  if (*CMBaseObjectGetDerivedStorage())
  {
    return 0;
  }

  if (*(*(CMBaseObjectGetVTable() + 16) + 88))
  {
    v1 = OUTLINED_FUNCTION_1_7();
    v3 = v2(v1);
  }

  else
  {
    OUTLINED_FUNCTION_1_7();
    v3 = FigTransportStreamSendBatchSlow();
  }

  v4 = v3;
  if (v3)
  {
    APSLogErrorAt();
  }

  return v4;
}

uint64_t hoseAggregate_audioHoseRegistrarDeregisterHose(const void *a1, const void *a2, const void *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a2)
  {
    if (*DerivedStorage)
    {
      return 4294954511;
    }

    else
    {
      if (gLogCategory_APEndpointStreamAudioHoseAggregate <= 50 && (gLogCategory_APEndpointStreamAudioHoseAggregate != -1 || OUTLINED_FUNCTION_4(&gLogCategory_APEndpointStreamAudioHoseAggregate)))
      {
        OUTLINED_FUNCTION_2(&gLogCategory_APEndpointStreamAudioHoseAggregate, "OSStatus hoseAggregate_audioHoseRegistrarDeregisterHose(APSEndpointStreamAudioHoseRegistrarRef, APSEndpointStreamAudioHoseRef, CFDictionaryRef)", v7, "[%{ptr}] Deregistering Hose: %{ptr}\n");
      }

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
  }

  else
  {
    APSLogErrorAt();
    return 4294894965;
  }
}

uint64_t hoseAggregate_SetProperty_cold_2(void *a1)
{
  APSLogErrorAt();
  FigSimpleMutexUnlock();

  return APSLogErrorAt();
}

uint64_t hoseAggregate_audioHoseFlush_cold_1(_DWORD *a1)
{
  v2 = APSLogErrorAt();
  result = OUTLINED_FUNCTION_4_5(v2, "inCompletionHandler is not supported. Implement me!");
  *a1 = result;
  return result;
}

uint64_t hoseAggregate_audioHoseRegistrarRegisterHose_cold_2(_DWORD *a1)
{
  v2 = APSLogErrorAt();
  result = OUTLINED_FUNCTION_4_5(v2, "Hose already registered");
  *a1 = result;
  return result;
}

uint64_t hoseAggregate_audioHoseRegistrarRegisterHose_cold_4(_DWORD *a1)
{
  v2 = APSLogErrorAt();
  result = OUTLINED_FUNCTION_4_5(v2, "No AudioTransportStream option");
  *a1 = result;
  return result;
}

uint64_t hoseAggregate_audioHoseRegistrarDeregisterHoseDispatchInternal_cold_2(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  result = APSLogErrorAt();
  if (gLogCategory_APEndpointStreamAudioHoseAggregate <= 50)
  {
    if (gLogCategory_APEndpointStreamAudioHoseAggregate != -1 || (result = OUTLINED_FUNCTION_4(&gLogCategory_APEndpointStreamAudioHoseAggregate), result))
    {
      result = OUTLINED_FUNCTION_2(&gLogCategory_APEndpointStreamAudioHoseAggregate, "OSStatus hoseAggregate_audioHoseRegistrarDeregisterHoseInternal(APSEndpointStreamAudioHoseRegistrarRef, APSEndpointStreamAudioHoseRef, CFDictionaryRef)", v5, "[%{ptr}] Hose %{ptr} not found");
    }
  }

  *a3 = -72331;
  return result;
}

void APAudioEngineVendorCreate_cold_2(uint64_t a1, const void *a2)
{
  APSLogErrorAt();

  CFRelease(a2);
}

uint64_t endpointAggregate_subEndpointEntryCopyDescriptionCallback(uint64_t result)
{
  if (result)
  {
    result = CFStringCreateF(0, "APEndpointAggregateSubEndpointEntry<regToken=%u, activationCount=%llu>", *result, *(result + 8));
    if (!result)
    {
      APSLogErrorAt();
      return 0;
    }
  }

  return result;
}

uint64_t endpointAggregate_ensureLocalPlaybackIsEnabledOrDisabled(const void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!*(DerivedStorage + 457))
  {
    return 0;
  }

  v3 = DerivedStorage;
  if (*(DerivedStorage + 160) && *(DerivedStorage + 40) == 2)
  {
    v4 = CMBaseObjectGetDerivedStorage();
    if (*(v4 + 162))
    {
      v5 = OUTLINED_FUNCTION_17_0();
      SubEndpointCount = endpointAggregate_getSubEndpointCount(v5, v6);
      v8 = SubEndpointCount > 0;
    }

    else
    {
      SubEndpointCount = 0;
      v8 = 1;
    }

    if (gLogCategory_APEndpointAggregate <= 30 && (gLogCategory_APEndpointAggregate != -1 || OUTLINED_FUNCTION_10(&gLogCategory_APEndpointAggregate)))
    {
      v24 = *(v4 + 162);
      OUTLINED_FUNCTION_3();
      LogPrintF(v13, v14, v15, v16, a1, v8, v24, SubEndpointCount);
    }
  }

  else
  {
    LODWORD(v8) = 0;
  }

  if (*(v3 + 161))
  {
    v9 = 1;
  }

  else
  {
    v9 = *(CMBaseObjectGetDerivedStorage() + 24) && APSGetFBOPropertyInt64() != 0;
  }

  if (v9 == v8)
  {
    return 0;
  }

  if (!*(v3 + 416))
  {
    v17 = CMBaseObjectGetDerivedStorage();
    if (gLogCategory_APEndpointAggregate <= 50 && (gLogCategory_APEndpointAggregate != -1 || _LogCategory_Initialize()))
    {
      v18 = "Disabling";
      if (v8)
      {
        v18 = "Enabling";
      }

      LogPrintF(&gLogCategory_APEndpointAggregate, "OSStatus endpointAggregate_enableOrDisableLegacyLocalPlayback(FigEndpointRef, Boolean)", 33554482, "[%{ptr}] %s local playback on aggregate\n", a1, v18);
    }

    AllAudioFeatures = APEndpointGetAllAudioFeatures(*(v17 + 56));
    v20 = AllAudioFeatures;
    if (v8)
    {
      endpointAggregate_handleSubEndpointFeatureActivationStateChanged(a1, 0, 1, (AllAudioFeatures & 0xFFFFFFFFFFFFFFDFLL));
      v21 = OUTLINED_FUNCTION_17_0();
      endpointAggregate_setEnableLocalPlaybackOnAggregateStreams(v21, v22, v23);
    }

    else
    {
      endpointAggregate_setEnableLocalPlaybackOnAggregateStreams(a1, 0, AllAudioFeatures & 0xFFFFFFFFFFFFFFDFLL);
      endpointAggregate_handleSubEndpointFeatureActivationStateChanged(a1, 0, 0, (v20 & 0xFFFFFFFFFFFFFFDFLL));
    }

    *(v17 + 161) = v8;
    endpointAggregate_updateIsVolumeControlSupported(a1);
    return 0;
  }

  if (!a1 || (FigEndpointAggregateGetClassID(), !CMBaseObjectIsMemberOfClass()))
  {
    a1 = 0;
  }

  v10 = *(v3 + 416);
  if (v8)
  {
    v11 = endpointAggregate_addEndpointInternal(a1, v10, 0, 0, 0);
    if (v11)
    {
      goto LABEL_38;
    }
  }

  else
  {
    v11 = endpointAggregate_removeEndpointInternal(a1, v10, 0, 0);
    if (v11)
    {
LABEL_38:
      APSLogErrorAt();
    }
  }

  return v11;
}

uint64_t endpointAggregate_handleSubEndpointFeatureActivationStateChanged(const void *a1, const void *a2, uint64_t a3, CFTypeRef *a4)
{
  v5 = a3;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v9 = DerivedStorage;
  if (a2)
  {
    result = CFDictionaryContainsKey(*(DerivedStorage + 8), a2);
    if (!result)
    {
      return result;
    }
  }

  else if (!*(DerivedStorage + 458))
  {

    return APSLogErrorAt();
  }

  if (gLogCategory_APEndpointAggregate <= 50 && (gLogCategory_APEndpointAggregate != -1 || OUTLINED_FUNCTION_4(&gLogCategory_APEndpointAggregate)))
  {
    v11 = "+";
    if (!v5)
    {
      v11 = "-";
    }

    v113 = a1;
    v115 = a2;
    v117 = v11;
    v120 = a4;
    OUTLINED_FUNCTION_2_0();
    LogPrintF(v12, v13, v14, v15);
    if (!v5)
    {
      goto LABEL_14;
    }

LABEL_13:
    v16 = *(v9 + 48);
    if (v16)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

  if (v5)
  {
    goto LABEL_13;
  }

LABEL_14:
  v16 = *(v9 + 56);
LABEL_15:
  if (a4 & v16)
  {
    endpointAggregate_fireStreamsChangedNotification(a1, v5, 1);
  }

  endpointAggregate_updateURLPlaybackSupportedState(a1);
  AllAudioFeatures = APEndpointGetAllAudioFeatures(v16);
  result = APEndpointGetAllAudioFeatures(a4);
  v18 = result & AllAudioFeatures;
  if (gLogCategory_APEndpointAggregate <= 30)
  {
    if (gLogCategory_APEndpointAggregate != -1 || (result = _LogCategory_Initialize(), result))
    {
      v21 = v9 + 48;
      v19 = *(v9 + 48);
      v20 = *(v21 + 8);
      APEndpointGetAllAudioFeatures(a4);
      v117 = v20;
      v120 = v19;
      v113 = a1;
      v115 = AllAudioFeatures;
      result = LogPrintF(&gLogCategory_APEndpointAggregate, "void endpointAggregate_handleSubEndpointFeatureActivationStateChanged(FigEndpointRef, FigEndpointRef, Boolean, FigEndpointFeatures)", 33554462, "[%{ptr}] aggregateAudioActivationFeatures=0x%llx (from 0x%llx|0x%llx); subEndpointAudioFeatures=0x%llx (from 0x%llx)\n");
    }
  }

  if (v18)
  {
    v22 = MEMORY[0x277CBECE8];
    v23 = MEMORY[0x277CBED28];
    v24 = OUTLINED_FUNCTION_12_2();
    if (!v5)
    {
      endpointAggregate_updateSubEndpointAggregateStreamMembershipForFeatures(v24, v25, v26, 0);
      v27 = OUTLINED_FUNCTION_12_2();
      endpointAggregate_notifyStreamObservers(v27, v28, v29, 0);
      LODWORD(value) = 0;
      v30 = CMBaseObjectGetDerivedStorage();
      v31 = CFDictionaryCopyKeys();
      Count = CFArrayGetCount(v31);
      if (Count < 1)
      {
        v35 = 0;
      }

      else
      {
        v33 = Count;
        v34 = 0;
        v35 = 0;
        do
        {
          ValueAtIndex = CFArrayGetValueAtIndex(v31, v34);
          if (!CFDictionaryContainsKey(*(v30 + 136), ValueAtIndex))
          {
            v35 |= APEndpointGetFeatureFromStreamType(ValueAtIndex);
          }

          ++v34;
        }

        while (v33 != v34);
        if (v35)
        {
          endpointAggregate_destroyAggregateStreams(a1, v35);
          v37 = CMBaseObjectGetDerivedStorage();
          cf = 0;
          if (*(v37 + 408) != 3 && (v38 = v37, v39 = MEMORY[0x277CBED28], *(v37 + 80)) && *(v37 + 112))
          {
            Mutable = CFDictionaryCreateMutable(*v22, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
            v41 = Mutable;
            if (!Mutable || (CFDictionarySetValue(Mutable, @"IsSharedAudioEngine", *v39), APEndpointCreateAudioOptions(v35, *(v38 + 80), v41, 0, &cf)))
            {
              APSLogErrorAt();
            }

            else
            {
              CFDictionaryMergeDictionary();
              if (gLogCategory_APEndpointAggregate <= 50 && (gLogCategory_APEndpointAggregate != -1 || OUTLINED_FUNCTION_4(&gLogCategory_APEndpointAggregate)))
              {
                v116 = cf;
                v118 = *(v38 + 104);
                OUTLINED_FUNCTION_2_0();
                LogPrintF(v42, v43, v44, v45, a1, v116, v118, v35, &unk_2222981D8);
              }
            }
          }

          else
          {
            APSLogErrorAt();
            v41 = 0;
          }

          if (cf)
          {
            CFRelease(cf);
          }

          if (v41)
          {
            CFRelease(v41);
          }
        }
      }

      if (v31)
      {
        CFRelease(v31);
      }

      endpointAggregate_fireStreamsChangedNotification(a1, 0, v35);
      v110 = OUTLINED_FUNCTION_17_0();
      return endpointAggregate_fireStreamsChangedNotification(v110, v111, v112);
    }

    endpointAggregate_updateSubEndpointAggregateStreamMembershipForFeatures(v24, v25, v26, 1);
    v46 = CMBaseObjectGetDerivedStorage();
    value = 0;
    cf = 0;
    v127 = 0;
    v128 = 0;
    v126 = 0;
    if (!*(v46 + 112) || (v47 = v46, *(v46 + 40) != 2))
    {
      APSLogErrorAt();
      v48 = 0;
LABEL_135:
      endpointAggregate_destroyAggregateStreams(a1, v48);
      goto LABEL_109;
    }

    if ((v18 & 2) != 0)
    {
      v48 = 2 * (CFDictionaryContainsKey(*(v46 + 128), *MEMORY[0x277CC1960]) == 0);
    }

    else
    {
      v48 = 0;
    }

    if ((v18 & 8) != 0 && !CFDictionaryContainsKey(*(v47 + 128), *MEMORY[0x277CC1968]))
    {
      v48 |= 8uLL;
    }

    v49 = MEMORY[0x277CC1970];
    if (a2 && (v18 & 0x20) != 0 && ((v50 = *(CMBaseObjectGetDerivedStorage() + 472)) != 0 ? (v51 = v50 == *v23) : (v51 = APSIsMemberOfHTGroup()), v51 && !CFDictionaryContainsKey(*(v47 + 128), *v49)))
    {
      v48 |= 0x20uLL;
    }

    else if (!v48)
    {
LABEL_109:
      if (value)
      {
        CFRelease(value);
      }

      if (cf)
      {
        CFRelease(cf);
      }

      if (v128)
      {
        CFRelease(v128);
      }

      if (v127)
      {
        CFRelease(v127);
      }

      if (v126)
      {
        CFRelease(v126);
      }

      v107 = OUTLINED_FUNCTION_12_2();
      endpointAggregate_notifyStreamObservers(v107, v108, v109, 1);
      v110 = OUTLINED_FUNCTION_17_0();
      v112 = v18;
      return endpointAggregate_fireStreamsChangedNotification(v110, v111, v112);
    }

    Int64 = CFDictionaryGetInt64();
    v52 = CFDictionaryGetInt64();
    v125 = CFDictionaryGetValue(*(v47 + 112), *MEMORY[0x277CC09D8]);
    v53 = *v22;
    CMBaseObject = APSNetworkClockGetCMBaseObject();
    v55 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v55)
    {
      v55(CMBaseObject, *MEMORY[0x277CEA260], v53, &v127);
    }

    endpointAggregate_copyPropertyFromAnySubEndpoint(a1, *MEMORY[0x277CC15A8], v53, &v126);
    CFGetDouble();
    APSVolumeConvertSliderValueToDB();
    v57 = v56;
    if ((v48 & 2) != 0)
    {
      v58 = *MEMORY[0x277CC1960];
      v59 = OUTLINED_FUNCTION_9_2();
      if (endpointAggregate_createAndInitAudioStream(v59, v60, v61, v62, v63, v64, v65, 0, v113, v115, v117, v120))
      {
        goto LABEL_134;
      }

      CFDictionarySetValue(*(v47 + 128), v58, value);
      endpointAggregate_addObserverInternal(a1, value);
      CMNotificationCenterGetDefaultLocalCenter();
      OUTLINED_FUNCTION_1_9();
      OUTLINED_FUNCTION_6_2();
      FigNotificationCenterAddWeakListener();
    }

    if ((v48 & 8) == 0)
    {
LABEL_67:
      if ((v48 & 2) != 0 && !v52 && !Int64)
      {
        if (*(v47 + 408) == 2)
        {
          v76 = FigCFEqual();
          v77 = kAPHALAudioDeviceCreationOptionDeviceType_Screen;
          v78 = *(v47 + 424);
          if (!v76)
          {
            v77 = kAPHALAudioDeviceCreationOptionDeviceType_Audio;
          }

          v79 = *v77;
          if (v76)
          {
            v80 = 75;
          }

          else
          {
            v80 = 0;
          }

          v124 = v80;
        }

        else
        {
          v124 = 0;
          v78 = @"AirPlay";
          v79 = @"AggrAudio";
        }

        if (gLogCategory_APEndpointAggregate >= 51)
        {
          v85 = v79 != @"AggrAudio";
        }

        else
        {
          if (gLogCategory_APEndpointAggregate != -1 || OUTLINED_FUNCTION_4(&gLogCategory_APEndpointAggregate))
          {
            v121 = *MEMORY[0x277CC1960];
            OUTLINED_FUNCTION_2_0();
            LogPrintF(v81, v82, v83, v84, a1, v79, v78, v121);
          }

          v85 = v79 != @"AggrAudio";
          if (gLogCategory_APEndpointAggregate <= 50 && (gLogCategory_APEndpointAggregate != -1 || OUTLINED_FUNCTION_4(&gLogCategory_APEndpointAggregate)))
          {
            APSVolumeConvertDBToSliderValue();
            v119 = v86;
            OUTLINED_FUNCTION_2_0();
            LogPrintF(v87, v88, v89, v90, a1, v57, *&v119, v79 != @"AggrAudio", 0);
          }
        }

        if (APSSettingsIsFeatureEnabled())
        {
          if (FigCFEqual())
          {
            v91 = 0;
          }

          else
          {
            v91 = cf;
          }
        }

        else
        {
          v91 = 0;
        }

        if (*(v47 + 440))
        {
          v92 = *(v47 + 440);
        }

        else
        {
          v92 = a1;
        }

        APEndpointTriggerAudioHALDeviceCreationEx(v92, value, v91, v78, v79, v127, v124, v85, v57, 0);
      }

      if ((v48 & 0x20) == 0 || !*(v47 + 456))
      {
        goto LABEL_108;
      }

      v93 = *MEMORY[0x277CC1970];
      v114 = *MEMORY[0x277CC1970];
      OUTLINED_FUNCTION_6_2();
      if (!endpointAggregate_createAndInitAudioStream(v94, v95, v96, v97, v98, v99, v100, 0, v114, v125, 1, &v128))
      {
        if (Int64)
        {
LABEL_107:
          CFDictionarySetValue(*(v47 + 128), v93, v128);
          endpointAggregate_addObserverInternal(a1, v128);
          CMNotificationCenterGetDefaultLocalCenter();
          OUTLINED_FUNCTION_1_9();
          OUTLINED_FUNCTION_6_2();
          FigNotificationCenterAddWeakListener();
LABEL_108:
          endpointAggregate_updateEngagedState(a1);
          goto LABEL_109;
        }

        v101 = CFStringCreateF(0, "%@-LL", *(v47 + 432));
        if (gLogCategory_APEndpointAggregate <= 50 && (gLogCategory_APEndpointAggregate != -1 || OUTLINED_FUNCTION_4(&gLogCategory_APEndpointAggregate)))
        {
          v122 = *(v47 + 440);
          OUTLINED_FUNCTION_2_0();
          LogPrintF(v102, v103, v104, v105, a1, @"LowLatencyAudio", v101, v93, v122);
        }

        v106 = *(v47 + 440);
        if (v106)
        {
          APEndpointTriggerAudioHALDeviceCreation(v106, v128, v101, @"LowLatencyAudio", v127, 0, 0, 0, v57);
          if (v101)
          {
            CFRelease(v101);
          }

          goto LABEL_107;
        }
      }

      goto LABEL_134;
    }

    v66 = *MEMORY[0x277CC1968];
    v67 = OUTLINED_FUNCTION_9_2();
    if (!endpointAggregate_createAndInitAudioStream(v67, v68, v69, v70, v71, v72, v73, v74, v113, v115, v117, v120))
    {
      CFDictionarySetValue(*(v47 + 128), v66, cf);
      endpointAggregate_addObserverInternal(a1, cf);
      CMNotificationCenterGetDefaultLocalCenter();
      OUTLINED_FUNCTION_1_9();
      OUTLINED_FUNCTION_6_2();
      FigNotificationCenterAddWeakListener();
      CMNotificationCenterGetDefaultLocalCenter();
      OUTLINED_FUNCTION_7_1();
      OUTLINED_FUNCTION_6_2();
      v75 = FigNotificationCenterAddWeakListener();
      endpointAggregate_handleBufferedAudioCapabilitiesChanged(v75, a1);
      goto LABEL_67;
    }

LABEL_134:
    APSLogErrorAt();
    goto LABEL_135;
  }

  return result;
}

uint64_t endpointAggregate_fireStreamsChangedNotification(const void *a1, int a2, uint64_t a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  cf = 0;
  if (!a3)
  {
    return 0;
  }

  v7 = DerivedStorage;
  if (gLogCategory_APEndpointAggregate <= 30 && (gLogCategory_APEndpointAggregate != -1 || OUTLINED_FUNCTION_10(&gLogCategory_APEndpointAggregate)))
  {
    v8 = "+";
    if (!a2)
    {
      v8 = "-";
    }

    v18 = v8;
    OUTLINED_FUNCTION_3();
    LogPrintF(v9, v10, v11, v12, a1, v18, a3);
  }

  v13 = CFGetAllocator(a1);
  StreamsChangedNotificationPayload = APEndpointCreateStreamsChangedNotificationPayload(v13, a3, *(v7 + 120), a2, &cf);
  if (StreamsChangedNotificationPayload)
  {
    APSLogErrorAt();
  }

  else
  {
    CMNotificationCenterGetDefaultLocalCenter();
    v15 = FigDispatchAsyncPostNotification();
    if (v15)
    {
      v17 = v15;
      APSLogErrorAt();
      StreamsChangedNotificationPayload = v17;
    }
  }

  if (cf)
  {
    CFRelease(cf);
  }

  return StreamsChangedNotificationPayload;
}

void endpointAggregate_updateURLPlaybackSupportedState(const void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  cf = 0;
  v3 = *(DerivedStorage + 408);
  if (v3 != 3)
  {
    v4 = DerivedStorage;
    if (*(DerivedStorage + 40) != 2)
    {
      goto LABEL_30;
    }

    v5 = *(DerivedStorage + 48);
    if (v5)
    {
      if ((v5 & 4) == 0)
      {
        goto LABEL_13;
      }
    }

    else if ((*(DerivedStorage + 56) & 4) == 0)
    {
      goto LABEL_13;
    }

    if (v3 == 2 || !v3 && endpointAggregate_getSubEndpointCount(a1, 2) == 1)
    {
      FirstSubEndpointActivatedForFeatures = endpointAggregate_getFirstSubEndpointActivatedForFeatures(a1, 4);
      if (FirstSubEndpointActivatedForFeatures && (CMBaseObject = FigEndpointGetCMBaseObject(), (v8 = *(*(CMBaseObjectGetVTable() + 8) + 48)) != 0))
      {
        v8(CMBaseObject, *MEMORY[0x277CC1570], *MEMORY[0x277CBECE8], &cf);
        v9 = cf;
      }

      else
      {
        v9 = 0;
      }

      goto LABEL_15;
    }

LABEL_13:
    v9 = 0;
    FirstSubEndpointActivatedForFeatures = 0;
LABEL_15:
    if (*(v4 + 152) == FirstSubEndpointActivatedForFeatures)
    {
      if (FigCFEqual())
      {
        goto LABEL_17;
      }

      v9 = cf;
    }

    v10 = *(v4 + 144);
    *(v4 + 144) = v9;
    if (v9)
    {
      CFRetain(v9);
    }

    if (v10)
    {
      CFRelease(v10);
    }

    v11 = *(v4 + 152);
    *(v4 + 152) = FirstSubEndpointActivatedForFeatures;
    if (FirstSubEndpointActivatedForFeatures)
    {
      CFRetain(FirstSubEndpointActivatedForFeatures);
    }

    if (v11)
    {
      CFRelease(v11);
    }

    if (!endpointAggregate_fireStreamsChangedNotification(a1, FirstSubEndpointActivatedForFeatures != 0, 4))
    {
      goto LABEL_17;
    }

LABEL_30:
    APSLogErrorAt();
LABEL_17:
    if (cf)
    {
      CFRelease(cf);
    }
  }
}

uint64_t endpointAggregate_notifyStreamObservers(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  result = CMBaseObjectGetDerivedStorage();
  if (a2)
  {
    if (gLogCategory_APEndpointAggregate <= 50 && (gLogCategory_APEndpointAggregate != -1 || OUTLINED_FUNCTION_4(&gLogCategory_APEndpointAggregate)))
    {
      v9 = "+";
      if (!a4)
      {
        v9 = "-";
      }

      v14 = v9;
      OUTLINED_FUNCTION_2_0();
      LogPrintF(v10, v11, v12, v13, a1, a2, v14, a3);
    }

    return CFDictionaryApplyBlock();
  }

  return result;
}

void endpointAggregate_updateEngagedState(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 408) == 3)
  {
    return;
  }

  v3 = DerivedStorage;
  v4 = FigCFDictionaryCopyArrayOfValues();
  if (CFArrayGetCount(v4) < 1)
  {
    v7 = 0;
LABEL_8:
    v8 = 0;
  }

  else
  {
    v5 = 0;
    while (1)
    {
      CFArrayGetValueAtIndex(v4, v5);
      v6 = APSGetFBOPropertyInt64();
      v7 = v6 != 0;
      if (v6)
      {
        break;
      }

      if (++v5 >= CFArrayGetCount(v4))
      {
        goto LABEL_8;
      }
    }

    v8 = 1;
  }

  if (*(v3 + 45) != v8)
  {
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    if (!Mutable)
    {
      APSLogErrorAt();
      if (!v4)
      {
        return;
      }

      goto LABEL_22;
    }

    v10 = Mutable;
    *(v3 + 45) = v8;
    if (gLogCategory_APEndpointAggregate <= 50 && (gLogCategory_APEndpointAggregate != -1 || OUTLINED_FUNCTION_4(&gLogCategory_APEndpointAggregate)))
    {
      v11 = "no";
      if (v7)
      {
        v11 = "yes";
      }

      v17 = v11;
      OUTLINED_FUNCTION_2_0();
      LogPrintF(v12, v13, v14, v15, a1, v17);
    }

    v16 = MEMORY[0x277CBED10];
    if (v7)
    {
      v16 = MEMORY[0x277CBED28];
    }

    CFDictionarySetValue(v10, @"IsEngaged", *v16);
    CMNotificationCenterGetDefaultLocalCenter();
    FigDispatchAsyncPostNotification();
    CFRelease(v10);
  }

  if (!v4)
  {
    return;
  }

LABEL_22:

  CFRelease(v4);
}

BOOL endpointAggregate_isUpdateUGLRCServerNeeded(uint64_t a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APEndpointAggregate <= 30 && (gLogCategory_APEndpointAggregate != -1 || OUTLINED_FUNCTION_10(&gLogCategory_APEndpointAggregate)))
  {
    v8 = *(DerivedStorage + 465);
    v9 = *(DerivedStorage + 408) == 0;
    OUTLINED_FUNCTION_3();
    LogPrintF(v3, v4, v5, v6, v8, v9);
  }

  return *(DerivedStorage + 465) && !*(DerivedStorage + 408) && APSGetFBOPropertyInt64() != 0;
}

double endpointAggregate_handleSubEndpointStreamsChanged(uint64_t a1, const void *a2, uint64_t a3, const void *a4, uint64_t a5)
{
  CMBaseObjectGetDerivedStorage();
  Int64 = CFDictionaryGetInt64();
  v8 = CFDictionaryGetInt64();
  if (gLogCategory_APEndpointAggregate <= 30 && (gLogCategory_APEndpointAggregate != -1 || OUTLINED_FUNCTION_10(&gLogCategory_APEndpointAggregate)))
  {
    v9 = 102;
    if (Int64)
    {
      v9 = 116;
    }

    v15 = v9;
    OUTLINED_FUNCTION_3();
    LogPrintF(v10, v11, v12, v13, a2, "void endpointAggregate_handleSubEndpointStreamsChanged(CMNotificationCenterRef, const void *, CFStringRef, const void *, CFTypeRef)", a4, v8, v15);
  }

  FigSimpleMutexLock();
  endpointAggregate_handleSubEndpointFeatureActivationStateChanged(a2, a4, Int64 != 0, v8);

  FigSimpleMutexUnlock();
  return result;
}

uint64_t endpointAggregate_updateClusterCompositionPropertiesFromSubEndpoint(uint64_t a1, const void *a2, int a3)
{
  result = CMBaseObjectGetDerivedStorage();
  if (*(result + 408) != 2)
  {
    return result;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a3)
  {
    CFHash(a2);
    Int64 = CFNumberCreateInt64();
    CFDictionaryRemoveValue(*(DerivedStorage + 376), Int64);
    if (gLogCategory_APEndpointAggregate <= 30 && (gLogCategory_APEndpointAggregate != -1 || OUTLINED_FUNCTION_10(&gLogCategory_APEndpointAggregate)))
    {
      v41 = *(DerivedStorage + 376);
      OUTLINED_FUNCTION_3();
      LogPrintF(v9, v10, v11, v12, a1, Int64, v41);
    }

    if (!Int64)
    {
      goto LABEL_46;
    }

    v30 = Int64;
  }

  else
  {
    v51 = 0;
    v52 = 0;
    cf = 0;
    value = 0;
    v47 = 0;
    v48 = 0;
    v45 = 0;
    v46 = 0;
    v13 = *MEMORY[0x277CBECE8];
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    if (!Mutable)
    {
      goto LABEL_25;
    }

    CMBaseObject = FigEndpointGetCMBaseObject();
    v16 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (!v16 || v16(CMBaseObject, *MEMORY[0x277CC1368], v13, &v52))
    {
      goto LABEL_25;
    }

    CFDictionarySetValue(Mutable, *MEMORY[0x277CC0AD8], v52);
    v17 = FigEndpointGetCMBaseObject();
    v18 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v18)
    {
      v18(v17, *MEMORY[0x277CC1450], v13, &v51);
    }

    FigCFDictionarySetValue();
    v19 = FigEndpointGetCMBaseObject();
    v20 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v20 && !v20(v19, *MEMORY[0x277CC14F0], v13, &value))
    {
      v21 = *MEMORY[0x277CC0AE0];
      CFDictionarySetValue(Mutable, *MEMORY[0x277CC0AE0], value);
      FigEndpointGetCMBaseObject();
      if (*(*(CMBaseObjectGetVTable() + 8) + 48))
      {
        v22 = OUTLINED_FUNCTION_15_0();
        v23(v22);
      }

      FigCFDictionarySetValue();
      FigEndpointGetCMBaseObject();
      if (*(*(CMBaseObjectGetVTable() + 8) + 48))
      {
        v24 = OUTLINED_FUNCTION_15_0();
        v25(v24);
      }

      FigCFDictionarySetValue();
      FigEndpointGetCMBaseObject();
      if (*(*(CMBaseObjectGetVTable() + 8) + 48))
      {
        v26 = OUTLINED_FUNCTION_15_0();
        v27(v26);
      }

      FigCFDictionarySetValue();
      FigEndpointGetCMBaseObject();
      if (*(*(CMBaseObjectGetVTable() + 8) + 48))
      {
        v28 = OUTLINED_FUNCTION_15_0();
        v29(v28);
      }

      FigCFDictionarySetValue();
      v35 = FigEndpointGetCMBaseObject();
      v36 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      if (v36)
      {
        v36(v35, *MEMORY[0x277CC1550], v13, &v45);
        if (v45)
        {
          FigCFDictionarySetValue();
          CFDictionarySetValue(Mutable, v21, *MEMORY[0x277CC19B8]);
        }
      }

      CFHash(a2);
      v31 = CFNumberCreateInt64();
      CFDictionarySetValue(*(DerivedStorage + 376), v31, Mutable);
      if (gLogCategory_APEndpointAggregate <= 30 && (gLogCategory_APEndpointAggregate != -1 || OUTLINED_FUNCTION_10(&gLogCategory_APEndpointAggregate)))
      {
        v43 = v51;
        v44 = *(DerivedStorage + 376);
        v42 = v52;
        OUTLINED_FUNCTION_3();
        LogPrintF(v37, v38, v39, v40, a1, Mutable, v42, v31, v43, v44);
      }
    }

    else
    {
LABEL_25:
      APSLogErrorAt();
      v31 = 0;
    }

    if (v52)
    {
      CFRelease(v52);
    }

    if (v51)
    {
      CFRelease(v51);
    }

    if (value)
    {
      CFRelease(value);
    }

    if (cf)
    {
      CFRelease(cf);
    }

    if (v48)
    {
      CFRelease(v48);
    }

    if (v47)
    {
      CFRelease(v47);
    }

    if (v46)
    {
      CFRelease(v46);
    }

    if (Mutable)
    {
      CFRelease(Mutable);
    }

    if (v31)
    {
      CFRelease(v31);
    }

    v30 = v45;
    if (!v45)
    {
      goto LABEL_46;
    }
  }

  CFRelease(v30);
LABEL_46:
  if (gLogCategory_APEndpointAggregate <= 50 && (gLogCategory_APEndpointAggregate != -1 || _LogCategory_Initialize()))
  {
    v32 = "removed";
    if (!a3)
    {
      v32 = "added";
    }

    LogPrintF(&gLogCategory_APEndpointAggregate, "OSStatus endpointAggregate_updateClusterCompositionPropertiesFromSubEndpoint(FigEndpointRef, FigEndpointRef, Boolean)", 33554482, "[%{ptr}] <AirPlayClusterComp> Posting ActivatedSubEndpointsChanged for %s subEndpoint [%{ptr}]\n", a1, v32, a2);
  }

  DefaultLocalCenter = CMNotificationCenterGetDefaultLocalCenter();
  OUTLINED_FUNCTION_18(DefaultLocalCenter, DefaultLocalCenter, *MEMORY[0x277CC0CE8]);
  v34 = CMNotificationCenterGetDefaultLocalCenter();
  return OUTLINED_FUNCTION_18(v34, v34, *MEMORY[0x277CC0D48]);
}

void endpointAggregate_deactivateSubEndpointCallback(const void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  v10 = CMBaseObjectGetDerivedStorage();
  if (a1)
  {
    v11 = v10;
    if (CFArrayGetCount(*(v10 + 32)) >= 1)
    {
      v12 = 0;
      do
      {
        ValueAtIndex = CFArrayGetValueAtIndex(*(v11 + 32), v12);
        CFRetain(ValueAtIndex);
        CFRetain(a1);
        APSDispatchAsyncFHelper();
        ++v12;
      }

      while (v12 < CFArrayGetCount(*(v11 + 32)));
    }
  }

  if (*(DerivedStorage + 408) != 3)
  {
    endpointAggregate_ensureLocalPlaybackIsEnabledOrDisabled(*a5);
    endpointAggregate_updateIsVolumeControlSupported(*a5);
    endpointAggregate_updateVolumeControlType(*a5);
    endpointAggregate_updateIsMuteControlSupported(*a5);
    endpointAggregate_updateVideoPlaybackIsActive(*a5);
  }

  if (gLogCategory_APEndpointAggregate <= 50 && (gLogCategory_APEndpointAggregate != -1 || OUTLINED_FUNCTION_4(&gLogCategory_APEndpointAggregate)))
  {
    v19 = a5[1];
    v18 = *a5;
    OUTLINED_FUNCTION_2_0();
    LogPrintF(v14, v15, v16, v17, v18, a1, v19, a2, &unk_2222981D8, a4);
  }

  endpointAggregate_scheduleAddOrRemoveSubEndpointCompletionCallback(*a5, a1, a2, a5[1], 0, a5[4], a5[3]);
  FigSimpleMutexUnlock();
  CFRelease(*a5);
  free(a5);
}

uint64_t endpointAggregate_CopySubEndpointProperty(uint64_t a1, uint64_t a2, uint64_t a3)
{
  CMBaseObjectGetDerivedStorage();
  v17 = 0;
  if (gLogCategory_APEndpointAggregate <= 30 && (gLogCategory_APEndpointAggregate != -1 || OUTLINED_FUNCTION_10(&gLogCategory_APEndpointAggregate)))
  {
    OUTLINED_FUNCTION_3();
    LogPrintF(v6, v7, v8, v9, a1, a2, a3);
  }

  FigSimpleMutexLock();
  if (!endpointAggregate_getSubEndpointWithID(a1, a2, &v17))
  {
    v12 = 4294949689;
    goto LABEL_21;
  }

  FigEndpointGetCMBaseObject();
  if (*(*(CMBaseObjectGetVTable() + 8) + 48))
  {
    v10 = OUTLINED_FUNCTION_16();
    v12 = v11(v10);
  }

  else
  {
    v12 = 4294954514;
  }

  if (v17 && v12)
  {
    FigEndpointGetCMBaseObject();
    if (!*(*(CMBaseObjectGetVTable() + 8) + 48))
    {
      v12 = 4294954514;
LABEL_20:
      APSLogErrorAt();
      goto LABEL_21;
    }

    v13 = OUTLINED_FUNCTION_16();
    v12 = v14(v13);
  }

  v15 = v12 == -12784 || v12 == -6727;
  if (!v15 && v12)
  {
    goto LABEL_20;
  }

LABEL_21:
  FigSimpleMutexUnlock();
  return v12;
}

uint64_t endpointAggregate_SetSubEndpointProperty(uint64_t a1, uint64_t a2, const void *a3, uint64_t a4)
{
  CMBaseObjectGetDerivedStorage();
  v19 = 0;
  if (gLogCategory_APEndpointAggregate <= 30 && (gLogCategory_APEndpointAggregate != -1 || OUTLINED_FUNCTION_10(&gLogCategory_APEndpointAggregate)))
  {
    OUTLINED_FUNCTION_3();
    LogPrintF(v8, v9, v10, v11, a1, a2, a3, a4);
  }

  FigSimpleMutexLock();
  if (!endpointAggregate_getSubEndpointWithID(a1, a2, &v19))
  {
    v14 = 4294949689;
    goto LABEL_27;
  }

  CMBaseObject = FigEndpointGetCMBaseObject();
  v13 = *(*(CMBaseObjectGetVTable() + 8) + 56);
  if (v13)
  {
    v14 = v13(CMBaseObject, a3, a4);
  }

  else
  {
    v14 = 4294954514;
  }

  if (v19)
  {
    if (!v14 && (CFEqual(a3, *MEMORY[0x277CC15A8]) || CFEqual(a3, *MEMORY[0x277CC15C0]) || CFEqual(a3, @"HALVolumeDB") || CFEqual(a3, *MEMORY[0x277CC13D0]) || CFEqual(a3, @"IsHALMuted")))
    {
      v14 = 0;
      goto LABEL_27;
    }

    v15 = FigEndpointGetCMBaseObject();
    v16 = *(*(CMBaseObjectGetVTable() + 8) + 56);
    if (!v16)
    {
      v14 = 4294954514;
LABEL_20:
      APSLogErrorAt();
      goto LABEL_27;
    }

    v14 = v16(v15, a3, a4);
  }

  v17 = v14 == -12784 || v14 == -6727;
  if (!v17 && v14)
  {
    goto LABEL_20;
  }

LABEL_27:
  FigSimpleMutexUnlock();
  return v14;
}

uint64_t endpointAggregate_getSubEndpointWithID(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  CMBaseObjectGetDerivedStorage();
  OUTLINED_FUNCTION_11_1();
  if (v7 ^ v8 | v6 && (v5 != -1 || OUTLINED_FUNCTION_10(&gLogCategory_APEndpointAggregate)))
  {
    OUTLINED_FUNCTION_3();
    LogPrintF(v9, v10, v11, v12, a1, a2);
  }

  if (a3)
  {
    *a3 = 0;
  }

  v13 = FigCFDictionaryCopyArrayOfKeys();
  Count = CFArrayGetCount(v13);
  if (Count < 1)
  {
    v55 = 0;
    if (!v13)
    {
      goto LABEL_53;
    }

    goto LABEL_52;
  }

  v15 = Count;
  v16 = 0;
  v55 = 0;
  v54 = *MEMORY[0x277CC1368];
  v17 = *MEMORY[0x277CBECE8];
  v53 = *MEMORY[0x277CC1550];
  v18 = 0xFFFFFFFFLL;
  while (1)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(v13, v16);
    v57 = 0;
    CMBaseObject = FigEndpointGetCMBaseObject();
    v21 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v21)
    {
      v21(CMBaseObject, v54, v17, &v57);
    }

    v22 = FigCFEqual();
    OUTLINED_FUNCTION_11_1();
    if (v7 ^ v8 | v6 && (v23 != -1 || OUTLINED_FUNCTION_10(&gLogCategory_APEndpointAggregate)))
    {
      OUTLINED_FUNCTION_14_0();
      OUTLINED_FUNCTION_3();
      LogPrintF(v24, v25, v26, "[%{ptr}] checking [%{ptr}] id %@ vs %@ - match = %s\n");
    }

    if (v57)
    {
      CFRelease(v57);
    }

    if (v22)
    {
      break;
    }

    v27 = FigEndpointGetCMBaseObject();
    v28 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v28)
    {
      v28(v27, v53, v17, &v57);
    }

    v29 = FigCFEqual();
    OUTLINED_FUNCTION_11_1();
    if (v7 ^ v8 | v6 && (v30 != -1 || OUTLINED_FUNCTION_10(&gLogCategory_APEndpointAggregate)))
    {
      OUTLINED_FUNCTION_14_0();
      OUTLINED_FUNCTION_3();
      LogPrintF(v31, v32, v33, "[%{ptr}] checking [%{ptr}] tsuiid %@ vs %@ - match = %s\n");
    }

    if (v57)
    {
      CFRelease(v57);
    }

    if (v29)
    {
      v34 = APSGetFBOPropertyInt64() != 0;
      v35 = v34 | (2 * (APSGetFBOPropertyInt64() != 0));
      v36 = v35 | (4 * (APSGetFBOPropertyInt64() != 0));
      OUTLINED_FUNCTION_11_1();
      if (v7 ^ v8 | v6 && (v37 != -1 || OUTLINED_FUNCTION_10(&gLogCategory_APEndpointAggregate)))
      {
        OUTLINED_FUNCTION_3();
        LogPrintF(v38, v39, v40, "[%{ptr}] Matched [%{ptr}], score = %d vs %d\n", a1, ValueAtIndex, v36, v18);
      }

      if (v36 <= v18)
      {
        if (a3)
        {
          *a3 = ValueAtIndex;
        }
      }

      else
      {
        if (a3)
        {
          *a3 = v55;
        }

        OUTLINED_FUNCTION_11_1();
        if (v7 ^ v8 | v6 && (v41 != -1 || OUTLINED_FUNCTION_10(&gLogCategory_APEndpointAggregate)))
        {
          OUTLINED_FUNCTION_3();
          LogPrintF(v42, v43, v44, "[%{ptr}] storing [%{ptr}] score = %d\n", a1, ValueAtIndex, v36);
        }

        if (!a3 && v36 == 3)
        {
          break;
        }

        v55 = ValueAtIndex;
        v18 = v36;
      }
    }

    if (v15 == ++v16)
    {
      goto LABEL_51;
    }
  }

  v55 = ValueAtIndex;
LABEL_51:
  if (v13)
  {
LABEL_52:
    CFRelease(v13);
  }

LABEL_53:
  OUTLINED_FUNCTION_11_1();
  if (v7 ^ v8 | v6 && (v45 != -1 || OUTLINED_FUNCTION_10(&gLogCategory_APEndpointAggregate)))
  {
    if (a3)
    {
      v46 = *a3;
    }

    else
    {
      v46 = 0;
    }

    v52 = v46;
    OUTLINED_FUNCTION_3();
    LogPrintF(v47, v48, v49, v50, a1, v55, v52);
  }

  return v55;
}

void endpointAggregate_clearActivationState(const void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  endpointAggregate_updateURLPlaybackSupportedState(a1);
  *(DerivedStorage + 160) = 0;
  endpointAggregate_ensureLocalPlaybackIsEnabledOrDisabled(a1);
  *(DerivedStorage + 40) = 0;
  AllAudioFeatures = APEndpointGetAllAudioFeatures(*(DerivedStorage + 48) | *(DerivedStorage + 56));
  endpointAggregate_destroyAggregateStreams(a1, AllAudioFeatures);
  endpointAggregate_unregisterCommChannelsForSubEndpointAndNotifyClientIfNeeded(a1, 0);
  v4 = CMBaseObjectGetDerivedStorage();
  CFArrayRemoveAllValues(*(v4 + 32));
  *(DerivedStorage + 96) = 0;
  *(DerivedStorage + 48) = 0;
  *(DerivedStorage + 56) = 0;
  CFDictionaryRemoveAllValues(*(DerivedStorage + 136));
  v5 = *(DerivedStorage + 64);
  if (v5)
  {
    CFRelease(v5);
    *(DerivedStorage + 64) = 0;
  }

  v6 = *(DerivedStorage + 72);
  if (v6)
  {
    CFRelease(v6);
    *(DerivedStorage + 72) = 0;
  }

  v7 = *(DerivedStorage + 80);
  if (v7)
  {
    CFRelease(v7);
    *(DerivedStorage + 80) = 0;
  }

  v8 = *(DerivedStorage + 88);
  if (v8)
  {
    CFRelease(v8);
    *(DerivedStorage + 88) = 0;
  }

  CFDictionaryRemoveAllValues(*(DerivedStorage + 104));
  v9 = *(DerivedStorage + 112);
  if (v9)
  {
    CFRelease(v9);
    *(DerivedStorage + 112) = 0;
  }
}

uint64_t endpointAggregate_CloseCommChannel(uint64_t a1, const void *a2)
{
  FigEndpoint = FigEndpointExtendedGetFigEndpoint();
  v4 = endpointAggregate_copySubEndpointExtendedForRelayCommChannel(FigEndpoint, a2);
  if (!v4)
  {
    return 4294950571;
  }

  v5 = v4;
  v6 = *(*(CMBaseObjectGetVTable() + 24) + 104);
  if (!v6)
  {
    v7 = 4294954514;
LABEL_6:
    APSLogErrorAt();
    goto LABEL_7;
  }

  v7 = v6(v5, a2);
  if (v7)
  {
    goto LABEL_6;
  }

LABEL_7:
  CFRelease(v5);
  return v7;
}

uint64_t endpointAggregate_createInternal_cold_3(_DWORD *a1)
{
  APSLogErrorAt();
  result = APSSignalErrorAt();
  *a1 = result;
  return result;
}

uint64_t endpointAggregate_copyPropertyInternal_cold_1(_DWORD *a1)
{
  result = APSLogErrorAt();
  *a1 = -72255;
  if (gLogCategory_APEndpointAggregate <= 30)
  {
    if (gLogCategory_APEndpointAggregate != -1 || (result = OUTLINED_FUNCTION_10(&gLogCategory_APEndpointAggregate), result))
    {
      OUTLINED_FUNCTION_3();

      return LogPrintF(v3, v4, v5, v6);
    }
  }

  return result;
}

uint64_t endpointAggregate_copyPropertyInternal_cold_2(_DWORD *a1)
{
  APSLogErrorAt();
  result = APSSignalErrorAt();
  *a1 = result;
  return result;
}

_DWORD *endpointAggregate_copyPropertyInternal_cold_9(_DWORD *result, uint64_t a2)
{
  *result = -17606;
  if (gLogCategory_APEndpointAggregate <= 60)
  {
    if (gLogCategory_APEndpointAggregate != -1)
    {
      return LogPrintF(&gLogCategory_APEndpointAggregate, "OSStatus endpointAggregate_copyPropertyInternal(FigEndpointRef, CFStringRef, CFAllocatorRef, void *)", 33554492, "[%{ptr}] Buffered audio stream doesn't exist during copy property\n", a2);
    }

    result = _LogCategory_Initialize();
    if (result)
    {
      return LogPrintF(&gLogCategory_APEndpointAggregate, "OSStatus endpointAggregate_copyPropertyInternal(FigEndpointRef, CFStringRef, CFAllocatorRef, void *)", 33554492, "[%{ptr}] Buffered audio stream doesn't exist during copy property\n", a2);
    }
  }

  return result;
}

uint64_t endpointAggregate_copyPropertyInternal_cold_10(_DWORD *a1)
{
  result = APSLogErrorAt();
  *a1 = -16760;
  return result;
}

uint64_t endpointAggregate_isMuted_cold_1(_DWORD *a1)
{
  result = APSLogErrorAt();
  *a1 = -72257;
  return result;
}

uint64_t endpointAggregate_isMuted_cold_3(_DWORD *a1)
{
  result = APSLogErrorAt();
  *a1 = -16720;
  return result;
}

uint64_t endpointAggregate_copyClusterActivatedCompositionAsArray_cold_3(uint64_t a1)
{
  result = APSLogErrorAt();
  *(*a1 + 24) = -16721;
  return result;
}

uint64_t endpointAggregate_copyClusterActivatedCompositionAsArray_cold_4(uint64_t a1)
{
  result = APSLogErrorAt();
  *(*a1 + 24) = -16721;
  return result;
}